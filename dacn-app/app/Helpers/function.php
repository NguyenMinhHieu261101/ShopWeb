<?php

if(!function_exists('upload_image')){
    function upload_image($file, $folder = '', array $extend = array()){
        $code = 1;

        $baseFilename = public_path().'/uploads/'.$_FILES[$file]['name'];

        $info = new SplFileInfo($baseFilename);

        $ext = strtolower($info->getExtension());

        if(! $extend){
            $extend = ['png', 'jpg', 'jpeg'];
        }

        if(!in_array($ext, $extend)){
            return $data['code'] = 0;
        }

        $nameFile = trim(str_replace('.'.$ext,'',strtolower($info->getFilename())));
        $filename= str_slug($nameFile).'.'.$ext;

        $path = public_path().'/uploads/';
        if($folder){
            $path = public_path().'/uploads/'.$folder;
        }

        if(!\File::exists($path)){
            mkdir($path, 0777, true);
        }

        move_uploaded_file($_FILES[$file]['tmp_name'], $path.$filename);
        $data = [
            'name'=>$filename,
            'code'=>$code,
            'path_img' => 'uploads/'.$filename
        ];

        return $data;
    }
} 
?>