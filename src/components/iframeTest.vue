<template>
    <div>
        <div class="header">
            헤더영역
        </div>
        <div class="iframe-wrapper">
            <iframe src="https://www.daum.net/" class="iframe"></iframe>
        </div>
    </div>
</template>

<script>
    export default {
        name: "iframeTest"
    }
</script>

<style scoped>
    .header{
        height: 80px;
        border-bottom: solid 2px;
        background-color: white;
    }
    .iframe-wrapper{

    }
    .iframe{
        width: 100%;
        height: 100%;
        top:0;
        left:0;
        position: absolute;
        z-index: -1;
    }
</style>