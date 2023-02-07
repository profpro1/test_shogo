<?php require_once 'project/layouts/app/mainheader.php'?>
<div class="container">
    <h1 class="mt-4 mb-3">Регистрация</h1>
    <div class="row">
        <div class="col-lg-8 mb-4">
            <form action="/user/reg/" method="post">
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Логин:</label>
                        <input type="text" class="form-control" name="login">
                    </div>
                </div>


                <div class="control-group form-group">
                    <div class="controls">
                        <label>Пароль</label>
                        <input type="password" class="form-control" name="password">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Регистрация</button>
            </form>
        </div>
    </div>
</div>