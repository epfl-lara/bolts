; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742880 () Bool)

(assert start!742880)

(declare-fun res!3119695 () Bool)

(declare-fun e!4637652 () Bool)

(assert (=> start!742880 (=> (not res!3119695) (not e!4637652))))

(declare-datatypes ((C!42410 0))(
  ( (C!42411 (val!31667 Int)) )
))
(declare-datatypes ((Regex!21042 0))(
  ( (ElementMatch!21042 (c!1441920 C!42410)) (Concat!29887 (regOne!42596 Regex!21042) (regTwo!42596 Regex!21042)) (EmptyExpr!21042) (Star!21042 (reg!21371 Regex!21042)) (EmptyLang!21042) (Union!21042 (regOne!42597 Regex!21042) (regTwo!42597 Regex!21042)) )
))
(declare-fun r!27161 () Regex!21042)

(declare-datatypes ((List!73901 0))(
  ( (Nil!73777) (Cons!73777 (h!80225 C!42410) (t!388636 List!73901)) )
))
(declare-fun s!15118 () List!73901)

(assert (=> start!742880 (= res!3119695 (and (= r!27161 EmptyLang!21042) (is-Cons!73777 s!15118)))))

(assert (=> start!742880 e!4637652))

(declare-fun e!4637654 () Bool)

(assert (=> start!742880 e!4637654))

(declare-fun e!4637653 () Bool)

(assert (=> start!742880 e!4637653))

(declare-fun b!7844021 () Bool)

(declare-fun e!4637655 () Bool)

(declare-fun derivative!576 (Regex!21042 List!73901) Regex!21042)

(assert (=> b!7844021 (= e!4637655 (not (= (derivative!576 r!27161 s!15118) r!27161)))))

(declare-fun lt!2678934 () Regex!21042)

(assert (=> b!7844021 (= (derivative!576 lt!2678934 (t!388636 s!15118)) lt!2678934)))

(declare-datatypes ((Unit!168846 0))(
  ( (Unit!168847) )
))
(declare-fun lt!2678935 () Unit!168846)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!111 (Regex!21042 List!73901) Unit!168846)

(assert (=> b!7844021 (= lt!2678935 (lemmaEmptyLangDerivativeIsAFixPoint!111 lt!2678934 (t!388636 s!15118)))))

(declare-fun b!7844022 () Bool)

(declare-fun tp_is_empty!52483 () Bool)

(declare-fun tp!2321968 () Bool)

(assert (=> b!7844022 (= e!4637653 (and tp_is_empty!52483 tp!2321968))))

(declare-fun b!7844023 () Bool)

(declare-fun tp!2321972 () Bool)

(declare-fun tp!2321967 () Bool)

(assert (=> b!7844023 (= e!4637654 (and tp!2321972 tp!2321967))))

(declare-fun b!7844024 () Bool)

(assert (=> b!7844024 (= e!4637654 tp_is_empty!52483)))

(declare-fun b!7844025 () Bool)

(declare-fun tp!2321971 () Bool)

(assert (=> b!7844025 (= e!4637654 tp!2321971)))

(declare-fun b!7844026 () Bool)

(assert (=> b!7844026 (= e!4637652 e!4637655)))

(declare-fun res!3119696 () Bool)

(assert (=> b!7844026 (=> (not res!3119696) (not e!4637655))))

(assert (=> b!7844026 (= res!3119696 (= lt!2678934 EmptyLang!21042))))

(declare-fun derivativeStep!6283 (Regex!21042 C!42410) Regex!21042)

(assert (=> b!7844026 (= lt!2678934 (derivativeStep!6283 r!27161 (h!80225 s!15118)))))

(declare-fun b!7844027 () Bool)

(declare-fun tp!2321969 () Bool)

(declare-fun tp!2321970 () Bool)

(assert (=> b!7844027 (= e!4637654 (and tp!2321969 tp!2321970))))

(assert (= (and start!742880 res!3119695) b!7844026))

(assert (= (and b!7844026 res!3119696) b!7844021))

(assert (= (and start!742880 (is-ElementMatch!21042 r!27161)) b!7844024))

(assert (= (and start!742880 (is-Concat!29887 r!27161)) b!7844027))

(assert (= (and start!742880 (is-Star!21042 r!27161)) b!7844025))

(assert (= (and start!742880 (is-Union!21042 r!27161)) b!7844023))

(assert (= (and start!742880 (is-Cons!73777 s!15118)) b!7844022))

(declare-fun m!8255208 () Bool)

(assert (=> b!7844021 m!8255208))

(declare-fun m!8255210 () Bool)

(assert (=> b!7844021 m!8255210))

(declare-fun m!8255212 () Bool)

(assert (=> b!7844021 m!8255212))

(declare-fun m!8255214 () Bool)

(assert (=> b!7844026 m!8255214))

(push 1)

(assert (not b!7844027))

(assert (not b!7844022))

(assert (not b!7844021))

(assert tp_is_empty!52483)

(assert (not b!7844023))

(assert (not b!7844025))

(assert (not b!7844026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2352680 () Bool)

(declare-fun lt!2678944 () Regex!21042)

(declare-fun validRegex!11452 (Regex!21042) Bool)

(assert (=> d!2352680 (validRegex!11452 lt!2678944)))

(declare-fun e!4637670 () Regex!21042)

(assert (=> d!2352680 (= lt!2678944 e!4637670)))

(declare-fun c!1441924 () Bool)

(assert (=> d!2352680 (= c!1441924 (is-Cons!73777 s!15118))))

(assert (=> d!2352680 (validRegex!11452 r!27161)))

(assert (=> d!2352680 (= (derivative!576 r!27161 s!15118) lt!2678944)))

(declare-fun b!7844053 () Bool)

(assert (=> b!7844053 (= e!4637670 (derivative!576 (derivativeStep!6283 r!27161 (h!80225 s!15118)) (t!388636 s!15118)))))

(declare-fun b!7844054 () Bool)

(assert (=> b!7844054 (= e!4637670 r!27161)))

(assert (= (and d!2352680 c!1441924) b!7844053))

(assert (= (and d!2352680 (not c!1441924)) b!7844054))

(declare-fun m!8255224 () Bool)

(assert (=> d!2352680 m!8255224))

(declare-fun m!8255226 () Bool)

(assert (=> d!2352680 m!8255226))

(assert (=> b!7844053 m!8255214))

(assert (=> b!7844053 m!8255214))

(declare-fun m!8255228 () Bool)

(assert (=> b!7844053 m!8255228))

(assert (=> b!7844021 d!2352680))

(declare-fun d!2352684 () Bool)

(declare-fun lt!2678945 () Regex!21042)

(assert (=> d!2352684 (validRegex!11452 lt!2678945)))

(declare-fun e!4637671 () Regex!21042)

(assert (=> d!2352684 (= lt!2678945 e!4637671)))

(declare-fun c!1441925 () Bool)

(assert (=> d!2352684 (= c!1441925 (is-Cons!73777 (t!388636 s!15118)))))

(assert (=> d!2352684 (validRegex!11452 lt!2678934)))

(assert (=> d!2352684 (= (derivative!576 lt!2678934 (t!388636 s!15118)) lt!2678945)))

(declare-fun b!7844055 () Bool)

(assert (=> b!7844055 (= e!4637671 (derivative!576 (derivativeStep!6283 lt!2678934 (h!80225 (t!388636 s!15118))) (t!388636 (t!388636 s!15118))))))

(declare-fun b!7844056 () Bool)

(assert (=> b!7844056 (= e!4637671 lt!2678934)))

(assert (= (and d!2352684 c!1441925) b!7844055))

(assert (= (and d!2352684 (not c!1441925)) b!7844056))

(declare-fun m!8255230 () Bool)

(assert (=> d!2352684 m!8255230))

(declare-fun m!8255232 () Bool)

(assert (=> d!2352684 m!8255232))

(declare-fun m!8255234 () Bool)

(assert (=> b!7844055 m!8255234))

(assert (=> b!7844055 m!8255234))

(declare-fun m!8255236 () Bool)

(assert (=> b!7844055 m!8255236))

(assert (=> b!7844021 d!2352684))

(declare-fun d!2352686 () Bool)

(assert (=> d!2352686 (= (derivative!576 lt!2678934 (t!388636 s!15118)) lt!2678934)))

(declare-fun lt!2678952 () Unit!168846)

(declare-fun choose!59626 (Regex!21042 List!73901) Unit!168846)

(assert (=> d!2352686 (= lt!2678952 (choose!59626 lt!2678934 (t!388636 s!15118)))))

(assert (=> d!2352686 (= lt!2678934 EmptyLang!21042)))

(assert (=> d!2352686 (= (lemmaEmptyLangDerivativeIsAFixPoint!111 lt!2678934 (t!388636 s!15118)) lt!2678952)))

(declare-fun bs!1967009 () Bool)

(assert (= bs!1967009 d!2352686))

(assert (=> bs!1967009 m!8255210))

(declare-fun m!8255252 () Bool)

(assert (=> bs!1967009 m!8255252))

(assert (=> b!7844021 d!2352686))

(declare-fun b!7844105 () Bool)

(declare-fun e!4637698 () Regex!21042)

(assert (=> b!7844105 (= e!4637698 EmptyLang!21042)))

(declare-fun d!2352692 () Bool)

(declare-fun lt!2678960 () Regex!21042)

(assert (=> d!2352692 (validRegex!11452 lt!2678960)))

(assert (=> d!2352692 (= lt!2678960 e!4637698)))

(declare-fun c!1441953 () Bool)

(assert (=> d!2352692 (= c!1441953 (or (is-EmptyExpr!21042 r!27161) (is-EmptyLang!21042 r!27161)))))

(assert (=> d!2352692 (validRegex!11452 r!27161)))

(assert (=> d!2352692 (= (derivativeStep!6283 r!27161 (h!80225 s!15118)) lt!2678960)))

(declare-fun b!7844106 () Bool)

(declare-fun e!4637697 () Regex!21042)

(assert (=> b!7844106 (= e!4637698 e!4637697)))

(declare-fun c!1441951 () Bool)

(assert (=> b!7844106 (= c!1441951 (is-ElementMatch!21042 r!27161))))

(declare-fun bm!726872 () Bool)

(declare-fun call!726879 () Regex!21042)

(declare-fun call!726877 () Regex!21042)

(assert (=> bm!726872 (= call!726879 call!726877)))

(declare-fun b!7844107 () Bool)

(declare-fun e!4637699 () Regex!21042)

(assert (=> b!7844107 (= e!4637699 (Concat!29887 call!726879 r!27161))))

(declare-fun b!7844108 () Bool)

(declare-fun e!4637700 () Regex!21042)

(declare-fun call!726878 () Regex!21042)

(assert (=> b!7844108 (= e!4637700 (Union!21042 (Concat!29887 call!726878 (regTwo!42596 r!27161)) EmptyLang!21042))))

(declare-fun b!7844109 () Bool)

(assert (=> b!7844109 (= e!4637697 (ite (= (h!80225 s!15118) (c!1441920 r!27161)) EmptyExpr!21042 EmptyLang!21042))))

(declare-fun c!1441952 () Bool)

(declare-fun bm!726873 () Bool)

(declare-fun call!726880 () Regex!21042)

(assert (=> bm!726873 (= call!726880 (derivativeStep!6283 (ite c!1441952 (regOne!42597 r!27161) (regTwo!42596 r!27161)) (h!80225 s!15118)))))

(declare-fun c!1441950 () Bool)

(declare-fun bm!726874 () Bool)

(assert (=> bm!726874 (= call!726877 (derivativeStep!6283 (ite c!1441952 (regTwo!42597 r!27161) (ite c!1441950 (reg!21371 r!27161) (regOne!42596 r!27161))) (h!80225 s!15118)))))

(declare-fun bm!726875 () Bool)

(assert (=> bm!726875 (= call!726878 call!726879)))

(declare-fun b!7844110 () Bool)

(assert (=> b!7844110 (= c!1441952 (is-Union!21042 r!27161))))

(declare-fun e!4637696 () Regex!21042)

(assert (=> b!7844110 (= e!4637697 e!4637696)))

(declare-fun b!7844111 () Bool)

(declare-fun c!1441954 () Bool)

(declare-fun nullable!9328 (Regex!21042) Bool)

(assert (=> b!7844111 (= c!1441954 (nullable!9328 (regOne!42596 r!27161)))))

(assert (=> b!7844111 (= e!4637699 e!4637700)))

(declare-fun b!7844112 () Bool)

(assert (=> b!7844112 (= e!4637700 (Union!21042 (Concat!29887 call!726878 (regTwo!42596 r!27161)) call!726880))))

(declare-fun b!7844113 () Bool)

(assert (=> b!7844113 (= e!4637696 e!4637699)))

(assert (=> b!7844113 (= c!1441950 (is-Star!21042 r!27161))))

(declare-fun b!7844114 () Bool)

(assert (=> b!7844114 (= e!4637696 (Union!21042 call!726880 call!726877))))

(assert (= (and d!2352692 c!1441953) b!7844105))

(assert (= (and d!2352692 (not c!1441953)) b!7844106))

(assert (= (and b!7844106 c!1441951) b!7844109))

(assert (= (and b!7844106 (not c!1441951)) b!7844110))

(assert (= (and b!7844110 c!1441952) b!7844114))

(assert (= (and b!7844110 (not c!1441952)) b!7844113))

(assert (= (and b!7844113 c!1441950) b!7844107))

(assert (= (and b!7844113 (not c!1441950)) b!7844111))

(assert (= (and b!7844111 c!1441954) b!7844112))

(assert (= (and b!7844111 (not c!1441954)) b!7844108))

(assert (= (or b!7844112 b!7844108) bm!726875))

(assert (= (or b!7844107 bm!726875) bm!726872))

(assert (= (or b!7844114 bm!726872) bm!726874))

(assert (= (or b!7844114 b!7844112) bm!726873))

(declare-fun m!8255256 () Bool)

(assert (=> d!2352692 m!8255256))

(assert (=> d!2352692 m!8255226))

(declare-fun m!8255258 () Bool)

(assert (=> bm!726873 m!8255258))

(declare-fun m!8255260 () Bool)

(assert (=> bm!726874 m!8255260))

(declare-fun m!8255262 () Bool)

(assert (=> b!7844111 m!8255262))

(assert (=> b!7844026 d!2352692))

(declare-fun b!7844128 () Bool)

(declare-fun e!4637703 () Bool)

(declare-fun tp!2322004 () Bool)

(declare-fun tp!2322001 () Bool)

(assert (=> b!7844128 (= e!4637703 (and tp!2322004 tp!2322001))))

(assert (=> b!7844023 (= tp!2321972 e!4637703)))

(declare-fun b!7844125 () Bool)

(assert (=> b!7844125 (= e!4637703 tp_is_empty!52483)))

(declare-fun b!7844127 () Bool)

(declare-fun tp!2322003 () Bool)

(assert (=> b!7844127 (= e!4637703 tp!2322003)))

(declare-fun b!7844126 () Bool)

(declare-fun tp!2322005 () Bool)

(declare-fun tp!2322002 () Bool)

(assert (=> b!7844126 (= e!4637703 (and tp!2322005 tp!2322002))))

(assert (= (and b!7844023 (is-ElementMatch!21042 (regOne!42597 r!27161))) b!7844125))

(assert (= (and b!7844023 (is-Concat!29887 (regOne!42597 r!27161))) b!7844126))

(assert (= (and b!7844023 (is-Star!21042 (regOne!42597 r!27161))) b!7844127))

(assert (= (and b!7844023 (is-Union!21042 (regOne!42597 r!27161))) b!7844128))

(declare-fun b!7844132 () Bool)

(declare-fun e!4637704 () Bool)

(declare-fun tp!2322009 () Bool)

(declare-fun tp!2322006 () Bool)

(assert (=> b!7844132 (= e!4637704 (and tp!2322009 tp!2322006))))

(assert (=> b!7844023 (= tp!2321967 e!4637704)))

(declare-fun b!7844129 () Bool)

(assert (=> b!7844129 (= e!4637704 tp_is_empty!52483)))

(declare-fun b!7844131 () Bool)

(declare-fun tp!2322008 () Bool)

(assert (=> b!7844131 (= e!4637704 tp!2322008)))

(declare-fun b!7844130 () Bool)

(declare-fun tp!2322010 () Bool)

(declare-fun tp!2322007 () Bool)

(assert (=> b!7844130 (= e!4637704 (and tp!2322010 tp!2322007))))

(assert (= (and b!7844023 (is-ElementMatch!21042 (regTwo!42597 r!27161))) b!7844129))

(assert (= (and b!7844023 (is-Concat!29887 (regTwo!42597 r!27161))) b!7844130))

(assert (= (and b!7844023 (is-Star!21042 (regTwo!42597 r!27161))) b!7844131))

(assert (= (and b!7844023 (is-Union!21042 (regTwo!42597 r!27161))) b!7844132))

(declare-fun b!7844136 () Bool)

(declare-fun e!4637705 () Bool)

(declare-fun tp!2322014 () Bool)

(declare-fun tp!2322011 () Bool)

(assert (=> b!7844136 (= e!4637705 (and tp!2322014 tp!2322011))))

(assert (=> b!7844027 (= tp!2321969 e!4637705)))

(declare-fun b!7844133 () Bool)

(assert (=> b!7844133 (= e!4637705 tp_is_empty!52483)))

(declare-fun b!7844135 () Bool)

(declare-fun tp!2322013 () Bool)

(assert (=> b!7844135 (= e!4637705 tp!2322013)))

(declare-fun b!7844134 () Bool)

(declare-fun tp!2322015 () Bool)

(declare-fun tp!2322012 () Bool)

(assert (=> b!7844134 (= e!4637705 (and tp!2322015 tp!2322012))))

(assert (= (and b!7844027 (is-ElementMatch!21042 (regOne!42596 r!27161))) b!7844133))

(assert (= (and b!7844027 (is-Concat!29887 (regOne!42596 r!27161))) b!7844134))

(assert (= (and b!7844027 (is-Star!21042 (regOne!42596 r!27161))) b!7844135))

(assert (= (and b!7844027 (is-Union!21042 (regOne!42596 r!27161))) b!7844136))

(declare-fun b!7844140 () Bool)

(declare-fun e!4637706 () Bool)

(declare-fun tp!2322019 () Bool)

(declare-fun tp!2322016 () Bool)

(assert (=> b!7844140 (= e!4637706 (and tp!2322019 tp!2322016))))

(assert (=> b!7844027 (= tp!2321970 e!4637706)))

(declare-fun b!7844137 () Bool)

(assert (=> b!7844137 (= e!4637706 tp_is_empty!52483)))

(declare-fun b!7844139 () Bool)

(declare-fun tp!2322018 () Bool)

(assert (=> b!7844139 (= e!4637706 tp!2322018)))

(declare-fun b!7844138 () Bool)

(declare-fun tp!2322020 () Bool)

(declare-fun tp!2322017 () Bool)

(assert (=> b!7844138 (= e!4637706 (and tp!2322020 tp!2322017))))

(assert (= (and b!7844027 (is-ElementMatch!21042 (regTwo!42596 r!27161))) b!7844137))

(assert (= (and b!7844027 (is-Concat!29887 (regTwo!42596 r!27161))) b!7844138))

(assert (= (and b!7844027 (is-Star!21042 (regTwo!42596 r!27161))) b!7844139))

(assert (= (and b!7844027 (is-Union!21042 (regTwo!42596 r!27161))) b!7844140))

(declare-fun b!7844155 () Bool)

(declare-fun e!4637714 () Bool)

(declare-fun tp!2322023 () Bool)

(assert (=> b!7844155 (= e!4637714 (and tp_is_empty!52483 tp!2322023))))

(assert (=> b!7844022 (= tp!2321968 e!4637714)))

(assert (= (and b!7844022 (is-Cons!73777 (t!388636 s!15118))) b!7844155))

(declare-fun b!7844159 () Bool)

(declare-fun e!4637715 () Bool)

(declare-fun tp!2322027 () Bool)

(declare-fun tp!2322024 () Bool)

(assert (=> b!7844159 (= e!4637715 (and tp!2322027 tp!2322024))))

(assert (=> b!7844025 (= tp!2321971 e!4637715)))

(declare-fun b!7844156 () Bool)

(assert (=> b!7844156 (= e!4637715 tp_is_empty!52483)))

(declare-fun b!7844158 () Bool)

(declare-fun tp!2322026 () Bool)

(assert (=> b!7844158 (= e!4637715 tp!2322026)))

(declare-fun b!7844157 () Bool)

(declare-fun tp!2322028 () Bool)

(declare-fun tp!2322025 () Bool)

(assert (=> b!7844157 (= e!4637715 (and tp!2322028 tp!2322025))))

(assert (= (and b!7844025 (is-ElementMatch!21042 (reg!21371 r!27161))) b!7844156))

(assert (= (and b!7844025 (is-Concat!29887 (reg!21371 r!27161))) b!7844157))

(assert (= (and b!7844025 (is-Star!21042 (reg!21371 r!27161))) b!7844158))

(assert (= (and b!7844025 (is-Union!21042 (reg!21371 r!27161))) b!7844159))

(push 1)

(assert (not bm!726874))

(assert (not d!2352684))

(assert (not b!7844157))

(assert (not b!7844155))

(assert (not b!7844158))

(assert (not b!7844132))

(assert (not b!7844139))

(assert (not b!7844055))

(assert (not d!2352680))

(assert (not bm!726873))

(assert (not b!7844159))

(assert tp_is_empty!52483)

(assert (not d!2352692))

(assert (not b!7844136))

(assert (not b!7844130))

(assert (not b!7844127))

(assert (not b!7844126))

(assert (not b!7844134))

(assert (not b!7844053))

(assert (not b!7844140))

(assert (not b!7844135))

(assert (not b!7844138))

(assert (not d!2352686))

(assert (not b!7844128))

(assert (not b!7844111))

(assert (not b!7844131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

