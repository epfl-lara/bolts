; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756856 () Bool)

(assert start!756856)

(declare-fun b!8037919 () Bool)

(declare-fun e!4734509 () Bool)

(declare-datatypes ((C!43840 0))(
  ( (C!43841 (val!32696 Int)) )
))
(declare-datatypes ((Regex!21751 0))(
  ( (ElementMatch!21751 (c!1474606 C!43840)) (Concat!30754 (regOne!44014 Regex!21751) (regTwo!44014 Regex!21751)) (EmptyExpr!21751) (Star!21751 (reg!22080 Regex!21751)) (EmptyLang!21751) (Union!21751 (regOne!44015 Regex!21751) (regTwo!44015 Regex!21751)) )
))
(declare-fun r!13107 () Regex!21751)

(declare-fun RegexPrimitiveSize!163 (Regex!21751) Int)

(assert (=> b!8037919 (= e!4734509 (>= (RegexPrimitiveSize!163 (regOne!44014 r!13107)) (RegexPrimitiveSize!163 r!13107)))))

(declare-fun b!8037920 () Bool)

(declare-fun res!3177484 () Bool)

(assert (=> b!8037920 (=> (not res!3177484) (not e!4734509))))

(declare-fun nullable!9776 (Regex!21751) Bool)

(assert (=> b!8037920 (= res!3177484 (not (nullable!9776 (regOne!44014 r!13107))))))

(declare-fun b!8037921 () Bool)

(declare-fun res!3177483 () Bool)

(assert (=> b!8037921 (=> (not res!3177483) (not e!4734509))))

(get-info :version)

(assert (=> b!8037921 (= res!3177483 (and (not ((_ is EmptyExpr!21751) r!13107)) (not ((_ is EmptyLang!21751) r!13107)) (not ((_ is ElementMatch!21751) r!13107)) (not ((_ is Union!21751) r!13107)) (not ((_ is Star!21751) r!13107))))))

(declare-fun res!3177485 () Bool)

(assert (=> start!756856 (=> (not res!3177485) (not e!4734509))))

(declare-fun validRegex!12047 (Regex!21751) Bool)

(assert (=> start!756856 (= res!3177485 (validRegex!12047 r!13107))))

(assert (=> start!756856 e!4734509))

(declare-fun e!4734508 () Bool)

(assert (=> start!756856 e!4734508))

(declare-fun b!8037922 () Bool)

(declare-fun tp!2407139 () Bool)

(assert (=> b!8037922 (= e!4734508 tp!2407139)))

(declare-fun b!8037923 () Bool)

(declare-fun tp!2407143 () Bool)

(declare-fun tp!2407142 () Bool)

(assert (=> b!8037923 (= e!4734508 (and tp!2407143 tp!2407142))))

(declare-fun b!8037924 () Bool)

(declare-fun tp_is_empty!54497 () Bool)

(assert (=> b!8037924 (= e!4734508 tp_is_empty!54497)))

(declare-fun b!8037925 () Bool)

(declare-fun tp!2407140 () Bool)

(declare-fun tp!2407141 () Bool)

(assert (=> b!8037925 (= e!4734508 (and tp!2407140 tp!2407141))))

(assert (= (and start!756856 res!3177485) b!8037921))

(assert (= (and b!8037921 res!3177483) b!8037920))

(assert (= (and b!8037920 res!3177484) b!8037919))

(assert (= (and start!756856 ((_ is ElementMatch!21751) r!13107)) b!8037924))

(assert (= (and start!756856 ((_ is Concat!30754) r!13107)) b!8037925))

(assert (= (and start!756856 ((_ is Star!21751) r!13107)) b!8037922))

(assert (= (and start!756856 ((_ is Union!21751) r!13107)) b!8037923))

(declare-fun m!8393902 () Bool)

(assert (=> b!8037919 m!8393902))

(declare-fun m!8393904 () Bool)

(assert (=> b!8037919 m!8393904))

(declare-fun m!8393906 () Bool)

(assert (=> b!8037920 m!8393906))

(declare-fun m!8393908 () Bool)

(assert (=> start!756856 m!8393908))

(check-sat (not b!8037925) (not start!756856) (not b!8037923) (not b!8037920) tp_is_empty!54497 (not b!8037919) (not b!8037922))
(check-sat)
(get-model)

(declare-fun d!2395216 () Bool)

(declare-fun nullableFct!3870 (Regex!21751) Bool)

(assert (=> d!2395216 (= (nullable!9776 (regOne!44014 r!13107)) (nullableFct!3870 (regOne!44014 r!13107)))))

(declare-fun bs!1971532 () Bool)

(assert (= bs!1971532 d!2395216))

(declare-fun m!8393912 () Bool)

(assert (=> bs!1971532 m!8393912))

(assert (=> b!8037920 d!2395216))

(declare-fun bm!746115 () Bool)

(declare-fun call!746120 () Bool)

(declare-fun c!1474638 () Bool)

(assert (=> bm!746115 (= call!746120 (validRegex!12047 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))

(declare-fun b!8038041 () Bool)

(declare-fun res!3177514 () Bool)

(declare-fun e!4734574 () Bool)

(assert (=> b!8038041 (=> res!3177514 e!4734574)))

(assert (=> b!8038041 (= res!3177514 (not ((_ is Concat!30754) r!13107)))))

(declare-fun e!4734578 () Bool)

(assert (=> b!8038041 (= e!4734578 e!4734574)))

(declare-fun b!8038042 () Bool)

(declare-fun e!4734572 () Bool)

(assert (=> b!8038042 (= e!4734574 e!4734572)))

(declare-fun res!3177515 () Bool)

(assert (=> b!8038042 (=> (not res!3177515) (not e!4734572))))

(assert (=> b!8038042 (= res!3177515 call!746120)))

(declare-fun b!8038043 () Bool)

(declare-fun res!3177512 () Bool)

(declare-fun e!4734577 () Bool)

(assert (=> b!8038043 (=> (not res!3177512) (not e!4734577))))

(assert (=> b!8038043 (= res!3177512 call!746120)))

(assert (=> b!8038043 (= e!4734578 e!4734577)))

(declare-fun b!8038044 () Bool)

(declare-fun e!4734575 () Bool)

(declare-fun e!4734576 () Bool)

(assert (=> b!8038044 (= e!4734575 e!4734576)))

(declare-fun res!3177513 () Bool)

(assert (=> b!8038044 (= res!3177513 (not (nullable!9776 (reg!22080 r!13107))))))

(assert (=> b!8038044 (=> (not res!3177513) (not e!4734576))))

(declare-fun call!746121 () Bool)

(declare-fun c!1474637 () Bool)

(declare-fun bm!746116 () Bool)

(assert (=> bm!746116 (= call!746121 (validRegex!12047 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))

(declare-fun b!8038046 () Bool)

(assert (=> b!8038046 (= e!4734576 call!746121)))

(declare-fun b!8038047 () Bool)

(declare-fun e!4734573 () Bool)

(assert (=> b!8038047 (= e!4734573 e!4734575)))

(assert (=> b!8038047 (= c!1474637 ((_ is Star!21751) r!13107))))

(declare-fun b!8038048 () Bool)

(declare-fun call!746122 () Bool)

(assert (=> b!8038048 (= e!4734572 call!746122)))

(declare-fun b!8038049 () Bool)

(assert (=> b!8038049 (= e!4734577 call!746122)))

(declare-fun bm!746117 () Bool)

(assert (=> bm!746117 (= call!746122 call!746121)))

(declare-fun b!8038045 () Bool)

(assert (=> b!8038045 (= e!4734575 e!4734578)))

(assert (=> b!8038045 (= c!1474638 ((_ is Union!21751) r!13107))))

(declare-fun d!2395218 () Bool)

(declare-fun res!3177511 () Bool)

(assert (=> d!2395218 (=> res!3177511 e!4734573)))

(assert (=> d!2395218 (= res!3177511 ((_ is ElementMatch!21751) r!13107))))

(assert (=> d!2395218 (= (validRegex!12047 r!13107) e!4734573)))

(assert (= (and d!2395218 (not res!3177511)) b!8038047))

(assert (= (and b!8038047 c!1474637) b!8038044))

(assert (= (and b!8038047 (not c!1474637)) b!8038045))

(assert (= (and b!8038044 res!3177513) b!8038046))

(assert (= (and b!8038045 c!1474638) b!8038043))

(assert (= (and b!8038045 (not c!1474638)) b!8038041))

(assert (= (and b!8038043 res!3177512) b!8038049))

(assert (= (and b!8038041 (not res!3177514)) b!8038042))

(assert (= (and b!8038042 res!3177515) b!8038048))

(assert (= (or b!8038049 b!8038048) bm!746117))

(assert (= (or b!8038043 b!8038042) bm!746115))

(assert (= (or b!8038046 bm!746117) bm!746116))

(declare-fun m!8393928 () Bool)

(assert (=> bm!746115 m!8393928))

(declare-fun m!8393930 () Bool)

(assert (=> b!8038044 m!8393930))

(declare-fun m!8393932 () Bool)

(assert (=> bm!746116 m!8393932))

(assert (=> start!756856 d!2395218))

(declare-fun b!8038070 () Bool)

(declare-fun e!4734592 () Int)

(assert (=> b!8038070 (= e!4734592 0)))

(declare-fun b!8038071 () Bool)

(declare-fun c!1474650 () Bool)

(assert (=> b!8038071 (= c!1474650 ((_ is EmptyLang!21751) (regOne!44014 r!13107)))))

(declare-fun e!4734589 () Int)

(assert (=> b!8038071 (= e!4734589 e!4734592)))

(declare-fun b!8038072 () Bool)

(declare-fun call!746130 () Int)

(assert (=> b!8038072 (= e!4734589 (+ 1 call!746130))))

(declare-fun b!8038074 () Bool)

(declare-fun c!1474651 () Bool)

(assert (=> b!8038074 (= c!1474651 ((_ is EmptyExpr!21751) (regOne!44014 r!13107)))))

(declare-fun e!4734591 () Int)

(declare-fun e!4734590 () Int)

(assert (=> b!8038074 (= e!4734591 e!4734590)))

(declare-fun b!8038075 () Bool)

(assert (=> b!8038075 (= e!4734590 0)))

(declare-fun bm!746124 () Bool)

(declare-fun call!746129 () Int)

(declare-fun c!1474653 () Bool)

(declare-fun c!1474649 () Bool)

(assert (=> bm!746124 (= call!746129 (RegexPrimitiveSize!163 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(declare-fun b!8038076 () Bool)

(assert (=> b!8038076 (= e!4734590 e!4734589)))

(assert (=> b!8038076 (= c!1474653 ((_ is Star!21751) (regOne!44014 r!13107)))))

(declare-fun bm!746125 () Bool)

(declare-fun call!746131 () Int)

(assert (=> bm!746125 (= call!746131 (RegexPrimitiveSize!163 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(declare-fun d!2395224 () Bool)

(declare-fun lt!2722151 () Int)

(assert (=> d!2395224 (>= lt!2722151 0)))

(declare-fun e!4734593 () Int)

(assert (=> d!2395224 (= lt!2722151 e!4734593)))

(declare-fun c!1474652 () Bool)

(assert (=> d!2395224 (= c!1474652 ((_ is ElementMatch!21751) (regOne!44014 r!13107)))))

(assert (=> d!2395224 (= (RegexPrimitiveSize!163 (regOne!44014 r!13107)) lt!2722151)))

(declare-fun b!8038073 () Bool)

(assert (=> b!8038073 (= e!4734591 (+ 1 call!746129 call!746131))))

(declare-fun b!8038077 () Bool)

(assert (=> b!8038077 (= e!4734592 (+ 1 call!746130 call!746131))))

(declare-fun b!8038078 () Bool)

(assert (=> b!8038078 (= e!4734593 e!4734591)))

(assert (=> b!8038078 (= c!1474649 ((_ is Concat!30754) (regOne!44014 r!13107)))))

(declare-fun b!8038079 () Bool)

(assert (=> b!8038079 (= e!4734593 1)))

(declare-fun bm!746126 () Bool)

(assert (=> bm!746126 (= call!746130 call!746129)))

(assert (= (and d!2395224 c!1474652) b!8038079))

(assert (= (and d!2395224 (not c!1474652)) b!8038078))

(assert (= (and b!8038078 c!1474649) b!8038073))

(assert (= (and b!8038078 (not c!1474649)) b!8038074))

(assert (= (and b!8038074 c!1474651) b!8038075))

(assert (= (and b!8038074 (not c!1474651)) b!8038076))

(assert (= (and b!8038076 c!1474653) b!8038072))

(assert (= (and b!8038076 (not c!1474653)) b!8038071))

(assert (= (and b!8038071 c!1474650) b!8038070))

(assert (= (and b!8038071 (not c!1474650)) b!8038077))

(assert (= (or b!8038072 b!8038077) bm!746126))

(assert (= (or b!8038073 b!8038077) bm!746125))

(assert (= (or b!8038073 bm!746126) bm!746124))

(declare-fun m!8393934 () Bool)

(assert (=> bm!746124 m!8393934))

(declare-fun m!8393936 () Bool)

(assert (=> bm!746125 m!8393936))

(assert (=> b!8037919 d!2395224))

(declare-fun b!8038080 () Bool)

(declare-fun e!4734597 () Int)

(assert (=> b!8038080 (= e!4734597 0)))

(declare-fun b!8038081 () Bool)

(declare-fun c!1474655 () Bool)

(assert (=> b!8038081 (= c!1474655 ((_ is EmptyLang!21751) r!13107))))

(declare-fun e!4734594 () Int)

(assert (=> b!8038081 (= e!4734594 e!4734597)))

(declare-fun b!8038082 () Bool)

(declare-fun call!746133 () Int)

(assert (=> b!8038082 (= e!4734594 (+ 1 call!746133))))

(declare-fun b!8038084 () Bool)

(declare-fun c!1474656 () Bool)

(assert (=> b!8038084 (= c!1474656 ((_ is EmptyExpr!21751) r!13107))))

(declare-fun e!4734596 () Int)

(declare-fun e!4734595 () Int)

(assert (=> b!8038084 (= e!4734596 e!4734595)))

(declare-fun b!8038085 () Bool)

(assert (=> b!8038085 (= e!4734595 0)))

(declare-fun call!746132 () Int)

(declare-fun c!1474658 () Bool)

(declare-fun bm!746127 () Bool)

(declare-fun c!1474654 () Bool)

(assert (=> bm!746127 (= call!746132 (RegexPrimitiveSize!163 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(declare-fun b!8038086 () Bool)

(assert (=> b!8038086 (= e!4734595 e!4734594)))

(assert (=> b!8038086 (= c!1474658 ((_ is Star!21751) r!13107))))

(declare-fun bm!746128 () Bool)

(declare-fun call!746134 () Int)

(assert (=> bm!746128 (= call!746134 (RegexPrimitiveSize!163 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(declare-fun d!2395226 () Bool)

(declare-fun lt!2722152 () Int)

(assert (=> d!2395226 (>= lt!2722152 0)))

(declare-fun e!4734598 () Int)

(assert (=> d!2395226 (= lt!2722152 e!4734598)))

(declare-fun c!1474657 () Bool)

(assert (=> d!2395226 (= c!1474657 ((_ is ElementMatch!21751) r!13107))))

(assert (=> d!2395226 (= (RegexPrimitiveSize!163 r!13107) lt!2722152)))

(declare-fun b!8038083 () Bool)

(assert (=> b!8038083 (= e!4734596 (+ 1 call!746132 call!746134))))

(declare-fun b!8038087 () Bool)

(assert (=> b!8038087 (= e!4734597 (+ 1 call!746133 call!746134))))

(declare-fun b!8038088 () Bool)

(assert (=> b!8038088 (= e!4734598 e!4734596)))

(assert (=> b!8038088 (= c!1474654 ((_ is Concat!30754) r!13107))))

(declare-fun b!8038089 () Bool)

(assert (=> b!8038089 (= e!4734598 1)))

(declare-fun bm!746129 () Bool)

(assert (=> bm!746129 (= call!746133 call!746132)))

(assert (= (and d!2395226 c!1474657) b!8038089))

(assert (= (and d!2395226 (not c!1474657)) b!8038088))

(assert (= (and b!8038088 c!1474654) b!8038083))

(assert (= (and b!8038088 (not c!1474654)) b!8038084))

(assert (= (and b!8038084 c!1474656) b!8038085))

(assert (= (and b!8038084 (not c!1474656)) b!8038086))

(assert (= (and b!8038086 c!1474658) b!8038082))

(assert (= (and b!8038086 (not c!1474658)) b!8038081))

(assert (= (and b!8038081 c!1474655) b!8038080))

(assert (= (and b!8038081 (not c!1474655)) b!8038087))

(assert (= (or b!8038082 b!8038087) bm!746129))

(assert (= (or b!8038083 b!8038087) bm!746128))

(assert (= (or b!8038083 bm!746129) bm!746127))

(declare-fun m!8393938 () Bool)

(assert (=> bm!746127 m!8393938))

(declare-fun m!8393940 () Bool)

(assert (=> bm!746128 m!8393940))

(assert (=> b!8037919 d!2395226))

(declare-fun b!8038103 () Bool)

(declare-fun e!4734601 () Bool)

(declare-fun tp!2407189 () Bool)

(declare-fun tp!2407190 () Bool)

(assert (=> b!8038103 (= e!4734601 (and tp!2407189 tp!2407190))))

(declare-fun b!8038100 () Bool)

(assert (=> b!8038100 (= e!4734601 tp_is_empty!54497)))

(declare-fun b!8038102 () Bool)

(declare-fun tp!2407191 () Bool)

(assert (=> b!8038102 (= e!4734601 tp!2407191)))

(declare-fun b!8038101 () Bool)

(declare-fun tp!2407193 () Bool)

(declare-fun tp!2407192 () Bool)

(assert (=> b!8038101 (= e!4734601 (and tp!2407193 tp!2407192))))

(assert (=> b!8037922 (= tp!2407139 e!4734601)))

(assert (= (and b!8037922 ((_ is ElementMatch!21751) (reg!22080 r!13107))) b!8038100))

(assert (= (and b!8037922 ((_ is Concat!30754) (reg!22080 r!13107))) b!8038101))

(assert (= (and b!8037922 ((_ is Star!21751) (reg!22080 r!13107))) b!8038102))

(assert (= (and b!8037922 ((_ is Union!21751) (reg!22080 r!13107))) b!8038103))

(declare-fun b!8038107 () Bool)

(declare-fun e!4734602 () Bool)

(declare-fun tp!2407194 () Bool)

(declare-fun tp!2407195 () Bool)

(assert (=> b!8038107 (= e!4734602 (and tp!2407194 tp!2407195))))

(declare-fun b!8038104 () Bool)

(assert (=> b!8038104 (= e!4734602 tp_is_empty!54497)))

(declare-fun b!8038106 () Bool)

(declare-fun tp!2407196 () Bool)

(assert (=> b!8038106 (= e!4734602 tp!2407196)))

(declare-fun b!8038105 () Bool)

(declare-fun tp!2407198 () Bool)

(declare-fun tp!2407197 () Bool)

(assert (=> b!8038105 (= e!4734602 (and tp!2407198 tp!2407197))))

(assert (=> b!8037925 (= tp!2407140 e!4734602)))

(assert (= (and b!8037925 ((_ is ElementMatch!21751) (regOne!44014 r!13107))) b!8038104))

(assert (= (and b!8037925 ((_ is Concat!30754) (regOne!44014 r!13107))) b!8038105))

(assert (= (and b!8037925 ((_ is Star!21751) (regOne!44014 r!13107))) b!8038106))

(assert (= (and b!8037925 ((_ is Union!21751) (regOne!44014 r!13107))) b!8038107))

(declare-fun b!8038111 () Bool)

(declare-fun e!4734603 () Bool)

(declare-fun tp!2407199 () Bool)

(declare-fun tp!2407200 () Bool)

(assert (=> b!8038111 (= e!4734603 (and tp!2407199 tp!2407200))))

(declare-fun b!8038108 () Bool)

(assert (=> b!8038108 (= e!4734603 tp_is_empty!54497)))

(declare-fun b!8038110 () Bool)

(declare-fun tp!2407201 () Bool)

(assert (=> b!8038110 (= e!4734603 tp!2407201)))

(declare-fun b!8038109 () Bool)

(declare-fun tp!2407203 () Bool)

(declare-fun tp!2407202 () Bool)

(assert (=> b!8038109 (= e!4734603 (and tp!2407203 tp!2407202))))

(assert (=> b!8037925 (= tp!2407141 e!4734603)))

(assert (= (and b!8037925 ((_ is ElementMatch!21751) (regTwo!44014 r!13107))) b!8038108))

(assert (= (and b!8037925 ((_ is Concat!30754) (regTwo!44014 r!13107))) b!8038109))

(assert (= (and b!8037925 ((_ is Star!21751) (regTwo!44014 r!13107))) b!8038110))

(assert (= (and b!8037925 ((_ is Union!21751) (regTwo!44014 r!13107))) b!8038111))

(declare-fun b!8038115 () Bool)

(declare-fun e!4734604 () Bool)

(declare-fun tp!2407204 () Bool)

(declare-fun tp!2407205 () Bool)

(assert (=> b!8038115 (= e!4734604 (and tp!2407204 tp!2407205))))

(declare-fun b!8038112 () Bool)

(assert (=> b!8038112 (= e!4734604 tp_is_empty!54497)))

(declare-fun b!8038114 () Bool)

(declare-fun tp!2407206 () Bool)

(assert (=> b!8038114 (= e!4734604 tp!2407206)))

(declare-fun b!8038113 () Bool)

(declare-fun tp!2407208 () Bool)

(declare-fun tp!2407207 () Bool)

(assert (=> b!8038113 (= e!4734604 (and tp!2407208 tp!2407207))))

(assert (=> b!8037923 (= tp!2407143 e!4734604)))

(assert (= (and b!8037923 ((_ is ElementMatch!21751) (regOne!44015 r!13107))) b!8038112))

(assert (= (and b!8037923 ((_ is Concat!30754) (regOne!44015 r!13107))) b!8038113))

(assert (= (and b!8037923 ((_ is Star!21751) (regOne!44015 r!13107))) b!8038114))

(assert (= (and b!8037923 ((_ is Union!21751) (regOne!44015 r!13107))) b!8038115))

(declare-fun b!8038119 () Bool)

(declare-fun e!4734605 () Bool)

(declare-fun tp!2407209 () Bool)

(declare-fun tp!2407210 () Bool)

(assert (=> b!8038119 (= e!4734605 (and tp!2407209 tp!2407210))))

(declare-fun b!8038116 () Bool)

(assert (=> b!8038116 (= e!4734605 tp_is_empty!54497)))

(declare-fun b!8038118 () Bool)

(declare-fun tp!2407211 () Bool)

(assert (=> b!8038118 (= e!4734605 tp!2407211)))

(declare-fun b!8038117 () Bool)

(declare-fun tp!2407213 () Bool)

(declare-fun tp!2407212 () Bool)

(assert (=> b!8038117 (= e!4734605 (and tp!2407213 tp!2407212))))

(assert (=> b!8037923 (= tp!2407142 e!4734605)))

(assert (= (and b!8037923 ((_ is ElementMatch!21751) (regTwo!44015 r!13107))) b!8038116))

(assert (= (and b!8037923 ((_ is Concat!30754) (regTwo!44015 r!13107))) b!8038117))

(assert (= (and b!8037923 ((_ is Star!21751) (regTwo!44015 r!13107))) b!8038118))

(assert (= (and b!8037923 ((_ is Union!21751) (regTwo!44015 r!13107))) b!8038119))

(check-sat (not b!8038111) (not bm!746124) (not b!8038118) (not b!8038044) (not bm!746115) (not b!8038110) (not bm!746116) (not b!8038114) (not b!8038107) (not d!2395216) (not b!8038119) (not bm!746125) (not b!8038103) tp_is_empty!54497 (not bm!746127) (not b!8038117) (not b!8038105) (not bm!746128) (not b!8038113) (not b!8038106) (not b!8038115) (not b!8038101) (not b!8038102) (not b!8038109))
(check-sat)
(get-model)

(declare-fun b!8038120 () Bool)

(declare-fun e!4734609 () Int)

(assert (=> b!8038120 (= e!4734609 0)))

(declare-fun c!1474660 () Bool)

(declare-fun b!8038121 () Bool)

(assert (=> b!8038121 (= c!1474660 ((_ is EmptyLang!21751) (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(declare-fun e!4734606 () Int)

(assert (=> b!8038121 (= e!4734606 e!4734609)))

(declare-fun b!8038122 () Bool)

(declare-fun call!746136 () Int)

(assert (=> b!8038122 (= e!4734606 (+ 1 call!746136))))

(declare-fun c!1474661 () Bool)

(declare-fun b!8038124 () Bool)

(assert (=> b!8038124 (= c!1474661 ((_ is EmptyExpr!21751) (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(declare-fun e!4734608 () Int)

(declare-fun e!4734607 () Int)

(assert (=> b!8038124 (= e!4734608 e!4734607)))

(declare-fun b!8038125 () Bool)

(assert (=> b!8038125 (= e!4734607 0)))

(declare-fun c!1474659 () Bool)

(declare-fun call!746135 () Int)

(declare-fun bm!746130 () Bool)

(declare-fun c!1474663 () Bool)

(assert (=> bm!746130 (= call!746135 (RegexPrimitiveSize!163 (ite c!1474659 (regOne!44014 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))) (ite c!1474663 (reg!22080 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))) (regOne!44015 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107))))))))))

(declare-fun b!8038126 () Bool)

(assert (=> b!8038126 (= e!4734607 e!4734606)))

(assert (=> b!8038126 (= c!1474663 ((_ is Star!21751) (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(declare-fun call!746137 () Int)

(declare-fun bm!746131 () Bool)

(assert (=> bm!746131 (= call!746137 (RegexPrimitiveSize!163 (ite c!1474659 (regTwo!44014 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))) (regTwo!44015 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))))

(declare-fun d!2395232 () Bool)

(declare-fun lt!2722153 () Int)

(assert (=> d!2395232 (>= lt!2722153 0)))

(declare-fun e!4734610 () Int)

(assert (=> d!2395232 (= lt!2722153 e!4734610)))

(declare-fun c!1474662 () Bool)

(assert (=> d!2395232 (= c!1474662 ((_ is ElementMatch!21751) (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(assert (=> d!2395232 (= (RegexPrimitiveSize!163 (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))) lt!2722153)))

(declare-fun b!8038123 () Bool)

(assert (=> b!8038123 (= e!4734608 (+ 1 call!746135 call!746137))))

(declare-fun b!8038127 () Bool)

(assert (=> b!8038127 (= e!4734609 (+ 1 call!746136 call!746137))))

(declare-fun b!8038128 () Bool)

(assert (=> b!8038128 (= e!4734610 e!4734608)))

(assert (=> b!8038128 (= c!1474659 ((_ is Concat!30754) (ite c!1474654 (regOne!44014 r!13107) (ite c!1474658 (reg!22080 r!13107) (regOne!44015 r!13107)))))))

(declare-fun b!8038129 () Bool)

(assert (=> b!8038129 (= e!4734610 1)))

(declare-fun bm!746132 () Bool)

(assert (=> bm!746132 (= call!746136 call!746135)))

(assert (= (and d!2395232 c!1474662) b!8038129))

(assert (= (and d!2395232 (not c!1474662)) b!8038128))

(assert (= (and b!8038128 c!1474659) b!8038123))

(assert (= (and b!8038128 (not c!1474659)) b!8038124))

(assert (= (and b!8038124 c!1474661) b!8038125))

(assert (= (and b!8038124 (not c!1474661)) b!8038126))

(assert (= (and b!8038126 c!1474663) b!8038122))

(assert (= (and b!8038126 (not c!1474663)) b!8038121))

(assert (= (and b!8038121 c!1474660) b!8038120))

(assert (= (and b!8038121 (not c!1474660)) b!8038127))

(assert (= (or b!8038122 b!8038127) bm!746132))

(assert (= (or b!8038123 b!8038127) bm!746131))

(assert (= (or b!8038123 bm!746132) bm!746130))

(declare-fun m!8393944 () Bool)

(assert (=> bm!746130 m!8393944))

(declare-fun m!8393946 () Bool)

(assert (=> bm!746131 m!8393946))

(assert (=> bm!746127 d!2395232))

(declare-fun b!8038144 () Bool)

(declare-fun e!4734626 () Int)

(assert (=> b!8038144 (= e!4734626 0)))

(declare-fun b!8038145 () Bool)

(declare-fun c!1474667 () Bool)

(assert (=> b!8038145 (= c!1474667 ((_ is EmptyLang!21751) (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(declare-fun e!4734623 () Int)

(assert (=> b!8038145 (= e!4734623 e!4734626)))

(declare-fun b!8038146 () Bool)

(declare-fun call!746143 () Int)

(assert (=> b!8038146 (= e!4734623 (+ 1 call!746143))))

(declare-fun b!8038148 () Bool)

(declare-fun c!1474668 () Bool)

(assert (=> b!8038148 (= c!1474668 ((_ is EmptyExpr!21751) (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(declare-fun e!4734625 () Int)

(declare-fun e!4734624 () Int)

(assert (=> b!8038148 (= e!4734625 e!4734624)))

(declare-fun b!8038149 () Bool)

(assert (=> b!8038149 (= e!4734624 0)))

(declare-fun c!1474670 () Bool)

(declare-fun c!1474666 () Bool)

(declare-fun call!746142 () Int)

(declare-fun bm!746137 () Bool)

(assert (=> bm!746137 (= call!746142 (RegexPrimitiveSize!163 (ite c!1474666 (regOne!44014 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))) (ite c!1474670 (reg!22080 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))) (regOne!44015 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107)))))))))))

(declare-fun b!8038150 () Bool)

(assert (=> b!8038150 (= e!4734624 e!4734623)))

(assert (=> b!8038150 (= c!1474670 ((_ is Star!21751) (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(declare-fun bm!746138 () Bool)

(declare-fun call!746144 () Int)

(assert (=> bm!746138 (= call!746144 (RegexPrimitiveSize!163 (ite c!1474666 (regTwo!44014 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))) (regTwo!44015 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))))

(declare-fun d!2395234 () Bool)

(declare-fun lt!2722154 () Int)

(assert (=> d!2395234 (>= lt!2722154 0)))

(declare-fun e!4734627 () Int)

(assert (=> d!2395234 (= lt!2722154 e!4734627)))

(declare-fun c!1474669 () Bool)

(assert (=> d!2395234 (= c!1474669 ((_ is ElementMatch!21751) (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(assert (=> d!2395234 (= (RegexPrimitiveSize!163 (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))) lt!2722154)))

(declare-fun b!8038147 () Bool)

(assert (=> b!8038147 (= e!4734625 (+ 1 call!746142 call!746144))))

(declare-fun b!8038151 () Bool)

(assert (=> b!8038151 (= e!4734626 (+ 1 call!746143 call!746144))))

(declare-fun b!8038152 () Bool)

(assert (=> b!8038152 (= e!4734627 e!4734625)))

(assert (=> b!8038152 (= c!1474666 ((_ is Concat!30754) (ite c!1474649 (regOne!44014 (regOne!44014 r!13107)) (ite c!1474653 (reg!22080 (regOne!44014 r!13107)) (regOne!44015 (regOne!44014 r!13107))))))))

(declare-fun b!8038153 () Bool)

(assert (=> b!8038153 (= e!4734627 1)))

(declare-fun bm!746139 () Bool)

(assert (=> bm!746139 (= call!746143 call!746142)))

(assert (= (and d!2395234 c!1474669) b!8038153))

(assert (= (and d!2395234 (not c!1474669)) b!8038152))

(assert (= (and b!8038152 c!1474666) b!8038147))

(assert (= (and b!8038152 (not c!1474666)) b!8038148))

(assert (= (and b!8038148 c!1474668) b!8038149))

(assert (= (and b!8038148 (not c!1474668)) b!8038150))

(assert (= (and b!8038150 c!1474670) b!8038146))

(assert (= (and b!8038150 (not c!1474670)) b!8038145))

(assert (= (and b!8038145 c!1474667) b!8038144))

(assert (= (and b!8038145 (not c!1474667)) b!8038151))

(assert (= (or b!8038146 b!8038151) bm!746139))

(assert (= (or b!8038147 b!8038151) bm!746138))

(assert (= (or b!8038147 bm!746139) bm!746137))

(declare-fun m!8393948 () Bool)

(assert (=> bm!746137 m!8393948))

(declare-fun m!8393950 () Bool)

(assert (=> bm!746138 m!8393950))

(assert (=> bm!746124 d!2395234))

(declare-fun bm!746142 () Bool)

(declare-fun c!1474673 () Bool)

(declare-fun call!746147 () Bool)

(assert (=> bm!746142 (= call!746147 (validRegex!12047 (ite c!1474673 (regOne!44015 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))) (regOne!44014 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))))

(declare-fun b!8038161 () Bool)

(declare-fun res!3177534 () Bool)

(declare-fun e!4734636 () Bool)

(assert (=> b!8038161 (=> res!3177534 e!4734636)))

(assert (=> b!8038161 (= res!3177534 (not ((_ is Concat!30754) (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107)))))))

(declare-fun e!4734640 () Bool)

(assert (=> b!8038161 (= e!4734640 e!4734636)))

(declare-fun b!8038162 () Bool)

(declare-fun e!4734634 () Bool)

(assert (=> b!8038162 (= e!4734636 e!4734634)))

(declare-fun res!3177535 () Bool)

(assert (=> b!8038162 (=> (not res!3177535) (not e!4734634))))

(assert (=> b!8038162 (= res!3177535 call!746147)))

(declare-fun b!8038163 () Bool)

(declare-fun res!3177532 () Bool)

(declare-fun e!4734639 () Bool)

(assert (=> b!8038163 (=> (not res!3177532) (not e!4734639))))

(assert (=> b!8038163 (= res!3177532 call!746147)))

(assert (=> b!8038163 (= e!4734640 e!4734639)))

(declare-fun b!8038164 () Bool)

(declare-fun e!4734637 () Bool)

(declare-fun e!4734638 () Bool)

(assert (=> b!8038164 (= e!4734637 e!4734638)))

(declare-fun res!3177533 () Bool)

(assert (=> b!8038164 (= res!3177533 (not (nullable!9776 (reg!22080 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))))

(assert (=> b!8038164 (=> (not res!3177533) (not e!4734638))))

(declare-fun c!1474672 () Bool)

(declare-fun call!746148 () Bool)

(declare-fun bm!746143 () Bool)

(assert (=> bm!746143 (= call!746148 (validRegex!12047 (ite c!1474672 (reg!22080 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))) (ite c!1474673 (regTwo!44015 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))) (regTwo!44014 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107)))))))))

(declare-fun b!8038166 () Bool)

(assert (=> b!8038166 (= e!4734638 call!746148)))

(declare-fun b!8038167 () Bool)

(declare-fun e!4734635 () Bool)

(assert (=> b!8038167 (= e!4734635 e!4734637)))

(assert (=> b!8038167 (= c!1474672 ((_ is Star!21751) (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))

(declare-fun b!8038168 () Bool)

(declare-fun call!746149 () Bool)

(assert (=> b!8038168 (= e!4734634 call!746149)))

(declare-fun b!8038169 () Bool)

(assert (=> b!8038169 (= e!4734639 call!746149)))

(declare-fun bm!746144 () Bool)

(assert (=> bm!746144 (= call!746149 call!746148)))

(declare-fun b!8038165 () Bool)

(assert (=> b!8038165 (= e!4734637 e!4734640)))

(assert (=> b!8038165 (= c!1474673 ((_ is Union!21751) (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))

(declare-fun d!2395236 () Bool)

(declare-fun res!3177531 () Bool)

(assert (=> d!2395236 (=> res!3177531 e!4734635)))

(assert (=> d!2395236 (= res!3177531 ((_ is ElementMatch!21751) (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))))))

(assert (=> d!2395236 (= (validRegex!12047 (ite c!1474638 (regOne!44015 r!13107) (regOne!44014 r!13107))) e!4734635)))

(assert (= (and d!2395236 (not res!3177531)) b!8038167))

(assert (= (and b!8038167 c!1474672) b!8038164))

(assert (= (and b!8038167 (not c!1474672)) b!8038165))

(assert (= (and b!8038164 res!3177533) b!8038166))

(assert (= (and b!8038165 c!1474673) b!8038163))

(assert (= (and b!8038165 (not c!1474673)) b!8038161))

(assert (= (and b!8038163 res!3177532) b!8038169))

(assert (= (and b!8038161 (not res!3177534)) b!8038162))

(assert (= (and b!8038162 res!3177535) b!8038168))

(assert (= (or b!8038169 b!8038168) bm!746144))

(assert (= (or b!8038163 b!8038162) bm!746142))

(assert (= (or b!8038166 bm!746144) bm!746143))

(declare-fun m!8393960 () Bool)

(assert (=> bm!746142 m!8393960))

(declare-fun m!8393962 () Bool)

(assert (=> b!8038164 m!8393962))

(declare-fun m!8393964 () Bool)

(assert (=> bm!746143 m!8393964))

(assert (=> bm!746115 d!2395236))

(declare-fun call!746156 () Bool)

(declare-fun c!1474685 () Bool)

(declare-fun bm!746151 () Bool)

(assert (=> bm!746151 (= call!746156 (validRegex!12047 (ite c!1474685 (regOne!44015 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))) (regOne!44014 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))))

(declare-fun b!8038190 () Bool)

(declare-fun res!3177542 () Bool)

(declare-fun e!4734656 () Bool)

(assert (=> b!8038190 (=> res!3177542 e!4734656)))

(assert (=> b!8038190 (= res!3177542 (not ((_ is Concat!30754) (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107))))))))

(declare-fun e!4734662 () Bool)

(assert (=> b!8038190 (= e!4734662 e!4734656)))

(declare-fun b!8038192 () Bool)

(declare-fun e!4734651 () Bool)

(assert (=> b!8038192 (= e!4734656 e!4734651)))

(declare-fun res!3177543 () Bool)

(assert (=> b!8038192 (=> (not res!3177543) (not e!4734651))))

(assert (=> b!8038192 (= res!3177543 call!746156)))

(declare-fun b!8038194 () Bool)

(declare-fun res!3177538 () Bool)

(declare-fun e!4734660 () Bool)

(assert (=> b!8038194 (=> (not res!3177538) (not e!4734660))))

(assert (=> b!8038194 (= res!3177538 call!746156)))

(assert (=> b!8038194 (= e!4734662 e!4734660)))

(declare-fun b!8038196 () Bool)

(declare-fun e!4734657 () Bool)

(declare-fun e!4734658 () Bool)

(assert (=> b!8038196 (= e!4734657 e!4734658)))

(declare-fun res!3177539 () Bool)

(assert (=> b!8038196 (= res!3177539 (not (nullable!9776 (reg!22080 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))))

(assert (=> b!8038196 (=> (not res!3177539) (not e!4734658))))

(declare-fun call!746160 () Bool)

(declare-fun c!1474684 () Bool)

(declare-fun bm!746153 () Bool)

(assert (=> bm!746153 (= call!746160 (validRegex!12047 (ite c!1474684 (reg!22080 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))) (ite c!1474685 (regTwo!44015 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))) (regTwo!44014 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107))))))))))

(declare-fun b!8038200 () Bool)

(assert (=> b!8038200 (= e!4734658 call!746160)))

(declare-fun b!8038202 () Bool)

(declare-fun e!4734654 () Bool)

(assert (=> b!8038202 (= e!4734654 e!4734657)))

(assert (=> b!8038202 (= c!1474684 ((_ is Star!21751) (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))

(declare-fun b!8038204 () Bool)

(declare-fun call!746161 () Bool)

(assert (=> b!8038204 (= e!4734651 call!746161)))

(declare-fun b!8038205 () Bool)

(assert (=> b!8038205 (= e!4734660 call!746161)))

(declare-fun bm!746155 () Bool)

(assert (=> bm!746155 (= call!746161 call!746160)))

(declare-fun b!8038198 () Bool)

(assert (=> b!8038198 (= e!4734657 e!4734662)))

(assert (=> b!8038198 (= c!1474685 ((_ is Union!21751) (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))

(declare-fun d!2395242 () Bool)

(declare-fun res!3177537 () Bool)

(assert (=> d!2395242 (=> res!3177537 e!4734654)))

(assert (=> d!2395242 (= res!3177537 ((_ is ElementMatch!21751) (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))))))

(assert (=> d!2395242 (= (validRegex!12047 (ite c!1474637 (reg!22080 r!13107) (ite c!1474638 (regTwo!44015 r!13107) (regTwo!44014 r!13107)))) e!4734654)))

(assert (= (and d!2395242 (not res!3177537)) b!8038202))

(assert (= (and b!8038202 c!1474684) b!8038196))

(assert (= (and b!8038202 (not c!1474684)) b!8038198))

(assert (= (and b!8038196 res!3177539) b!8038200))

(assert (= (and b!8038198 c!1474685) b!8038194))

(assert (= (and b!8038198 (not c!1474685)) b!8038190))

(assert (= (and b!8038194 res!3177538) b!8038205))

(assert (= (and b!8038190 (not res!3177542)) b!8038192))

(assert (= (and b!8038192 res!3177543) b!8038204))

(assert (= (or b!8038205 b!8038204) bm!746155))

(assert (= (or b!8038194 b!8038192) bm!746151))

(assert (= (or b!8038200 bm!746155) bm!746153))

(declare-fun m!8393976 () Bool)

(assert (=> bm!746151 m!8393976))

(declare-fun m!8393978 () Bool)

(assert (=> b!8038196 m!8393978))

(declare-fun m!8393984 () Bool)

(assert (=> bm!746153 m!8393984))

(assert (=> bm!746116 d!2395242))

(declare-fun b!8038228 () Bool)

(declare-fun e!4734678 () Int)

(assert (=> b!8038228 (= e!4734678 0)))

(declare-fun b!8038229 () Bool)

(declare-fun c!1474699 () Bool)

(assert (=> b!8038229 (= c!1474699 ((_ is EmptyLang!21751) (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(declare-fun e!4734675 () Int)

(assert (=> b!8038229 (= e!4734675 e!4734678)))

(declare-fun b!8038230 () Bool)

(declare-fun call!746169 () Int)

(assert (=> b!8038230 (= e!4734675 (+ 1 call!746169))))

(declare-fun b!8038232 () Bool)

(declare-fun c!1474700 () Bool)

(assert (=> b!8038232 (= c!1474700 ((_ is EmptyExpr!21751) (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(declare-fun e!4734677 () Int)

(declare-fun e!4734676 () Int)

(assert (=> b!8038232 (= e!4734677 e!4734676)))

(declare-fun b!8038233 () Bool)

(assert (=> b!8038233 (= e!4734676 0)))

(declare-fun c!1474702 () Bool)

(declare-fun call!746168 () Int)

(declare-fun bm!746163 () Bool)

(declare-fun c!1474698 () Bool)

(assert (=> bm!746163 (= call!746168 (RegexPrimitiveSize!163 (ite c!1474698 (regOne!44014 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))) (ite c!1474702 (reg!22080 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))) (regOne!44015 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107)))))))))

(declare-fun b!8038234 () Bool)

(assert (=> b!8038234 (= e!4734676 e!4734675)))

(assert (=> b!8038234 (= c!1474702 ((_ is Star!21751) (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(declare-fun bm!746164 () Bool)

(declare-fun call!746170 () Int)

(assert (=> bm!746164 (= call!746170 (RegexPrimitiveSize!163 (ite c!1474698 (regTwo!44014 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))) (regTwo!44015 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))))

(declare-fun d!2395250 () Bool)

(declare-fun lt!2722159 () Int)

(assert (=> d!2395250 (>= lt!2722159 0)))

(declare-fun e!4734679 () Int)

(assert (=> d!2395250 (= lt!2722159 e!4734679)))

(declare-fun c!1474701 () Bool)

(assert (=> d!2395250 (= c!1474701 ((_ is ElementMatch!21751) (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(assert (=> d!2395250 (= (RegexPrimitiveSize!163 (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))) lt!2722159)))

(declare-fun b!8038231 () Bool)

(assert (=> b!8038231 (= e!4734677 (+ 1 call!746168 call!746170))))

(declare-fun b!8038235 () Bool)

(assert (=> b!8038235 (= e!4734678 (+ 1 call!746169 call!746170))))

(declare-fun b!8038236 () Bool)

(assert (=> b!8038236 (= e!4734679 e!4734677)))

(assert (=> b!8038236 (= c!1474698 ((_ is Concat!30754) (ite c!1474654 (regTwo!44014 r!13107) (regTwo!44015 r!13107))))))

(declare-fun b!8038237 () Bool)

(assert (=> b!8038237 (= e!4734679 1)))

(declare-fun bm!746165 () Bool)

(assert (=> bm!746165 (= call!746169 call!746168)))

(assert (= (and d!2395250 c!1474701) b!8038237))

(assert (= (and d!2395250 (not c!1474701)) b!8038236))

(assert (= (and b!8038236 c!1474698) b!8038231))

(assert (= (and b!8038236 (not c!1474698)) b!8038232))

(assert (= (and b!8038232 c!1474700) b!8038233))

(assert (= (and b!8038232 (not c!1474700)) b!8038234))

(assert (= (and b!8038234 c!1474702) b!8038230))

(assert (= (and b!8038234 (not c!1474702)) b!8038229))

(assert (= (and b!8038229 c!1474699) b!8038228))

(assert (= (and b!8038229 (not c!1474699)) b!8038235))

(assert (= (or b!8038230 b!8038235) bm!746165))

(assert (= (or b!8038231 b!8038235) bm!746164))

(assert (= (or b!8038231 bm!746165) bm!746163))

(declare-fun m!8393996 () Bool)

(assert (=> bm!746163 m!8393996))

(declare-fun m!8393998 () Bool)

(assert (=> bm!746164 m!8393998))

(assert (=> bm!746128 d!2395250))

(declare-fun bm!746173 () Bool)

(declare-fun call!746178 () Bool)

(declare-fun c!1474707 () Bool)

(assert (=> bm!746173 (= call!746178 (nullable!9776 (ite c!1474707 (regTwo!44015 (regOne!44014 r!13107)) (regTwo!44014 (regOne!44014 r!13107)))))))

(declare-fun b!8038361 () Bool)

(declare-fun e!4734724 () Bool)

(declare-fun e!4734726 () Bool)

(assert (=> b!8038361 (= e!4734724 e!4734726)))

(declare-fun res!3177562 () Bool)

(declare-fun call!746179 () Bool)

(assert (=> b!8038361 (= res!3177562 call!746179)))

(assert (=> b!8038361 (=> res!3177562 e!4734726)))

(declare-fun b!8038362 () Bool)

(declare-fun e!4734728 () Bool)

(declare-fun e!4734727 () Bool)

(assert (=> b!8038362 (= e!4734728 e!4734727)))

(declare-fun res!3177563 () Bool)

(assert (=> b!8038362 (=> res!3177563 e!4734727)))

(assert (=> b!8038362 (= res!3177563 ((_ is Star!21751) (regOne!44014 r!13107)))))

(declare-fun d!2395254 () Bool)

(declare-fun res!3177564 () Bool)

(declare-fun e!4734729 () Bool)

(assert (=> d!2395254 (=> res!3177564 e!4734729)))

(assert (=> d!2395254 (= res!3177564 ((_ is EmptyExpr!21751) (regOne!44014 r!13107)))))

(assert (=> d!2395254 (= (nullableFct!3870 (regOne!44014 r!13107)) e!4734729)))

(declare-fun b!8038363 () Bool)

(assert (=> b!8038363 (= e!4734729 e!4734728)))

(declare-fun res!3177561 () Bool)

(assert (=> b!8038363 (=> (not res!3177561) (not e!4734728))))

(assert (=> b!8038363 (= res!3177561 (and (not ((_ is EmptyLang!21751) (regOne!44014 r!13107))) (not ((_ is ElementMatch!21751) (regOne!44014 r!13107)))))))

(declare-fun b!8038364 () Bool)

(assert (=> b!8038364 (= e!4734727 e!4734724)))

(assert (=> b!8038364 (= c!1474707 ((_ is Union!21751) (regOne!44014 r!13107)))))

(declare-fun b!8038365 () Bool)

(declare-fun e!4734725 () Bool)

(assert (=> b!8038365 (= e!4734724 e!4734725)))

(declare-fun res!3177565 () Bool)

(assert (=> b!8038365 (= res!3177565 call!746179)))

(assert (=> b!8038365 (=> (not res!3177565) (not e!4734725))))

(declare-fun b!8038366 () Bool)

(assert (=> b!8038366 (= e!4734726 call!746178)))

(declare-fun b!8038367 () Bool)

(assert (=> b!8038367 (= e!4734725 call!746178)))

(declare-fun bm!746174 () Bool)

(assert (=> bm!746174 (= call!746179 (nullable!9776 (ite c!1474707 (regOne!44015 (regOne!44014 r!13107)) (regOne!44014 (regOne!44014 r!13107)))))))

(assert (= (and d!2395254 (not res!3177564)) b!8038363))

(assert (= (and b!8038363 res!3177561) b!8038362))

(assert (= (and b!8038362 (not res!3177563)) b!8038364))

(assert (= (and b!8038364 c!1474707) b!8038361))

(assert (= (and b!8038364 (not c!1474707)) b!8038365))

(assert (= (and b!8038361 (not res!3177562)) b!8038366))

(assert (= (and b!8038365 res!3177565) b!8038367))

(assert (= (or b!8038366 b!8038367) bm!746173))

(assert (= (or b!8038361 b!8038365) bm!746174))

(declare-fun m!8394000 () Bool)

(assert (=> bm!746173 m!8394000))

(declare-fun m!8394002 () Bool)

(assert (=> bm!746174 m!8394002))

(assert (=> d!2395216 d!2395254))

(declare-fun d!2395256 () Bool)

(assert (=> d!2395256 (= (nullable!9776 (reg!22080 r!13107)) (nullableFct!3870 (reg!22080 r!13107)))))

(declare-fun bs!1971534 () Bool)

(assert (= bs!1971534 d!2395256))

(declare-fun m!8394004 () Bool)

(assert (=> bs!1971534 m!8394004))

(assert (=> b!8038044 d!2395256))

(declare-fun b!8038368 () Bool)

(declare-fun e!4734733 () Int)

(assert (=> b!8038368 (= e!4734733 0)))

(declare-fun b!8038369 () Bool)

(declare-fun c!1474709 () Bool)

(assert (=> b!8038369 (= c!1474709 ((_ is EmptyLang!21751) (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(declare-fun e!4734730 () Int)

(assert (=> b!8038369 (= e!4734730 e!4734733)))

(declare-fun b!8038370 () Bool)

(declare-fun call!746181 () Int)

(assert (=> b!8038370 (= e!4734730 (+ 1 call!746181))))

(declare-fun b!8038372 () Bool)

(declare-fun c!1474710 () Bool)

(assert (=> b!8038372 (= c!1474710 ((_ is EmptyExpr!21751) (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(declare-fun e!4734732 () Int)

(declare-fun e!4734731 () Int)

(assert (=> b!8038372 (= e!4734732 e!4734731)))

(declare-fun b!8038373 () Bool)

(assert (=> b!8038373 (= e!4734731 0)))

(declare-fun call!746180 () Int)

(declare-fun c!1474708 () Bool)

(declare-fun bm!746175 () Bool)

(declare-fun c!1474712 () Bool)

(assert (=> bm!746175 (= call!746180 (RegexPrimitiveSize!163 (ite c!1474708 (regOne!44014 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))) (ite c!1474712 (reg!22080 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))) (regOne!44015 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107))))))))))

(declare-fun b!8038374 () Bool)

(assert (=> b!8038374 (= e!4734731 e!4734730)))

(assert (=> b!8038374 (= c!1474712 ((_ is Star!21751) (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(declare-fun bm!746176 () Bool)

(declare-fun call!746182 () Int)

(assert (=> bm!746176 (= call!746182 (RegexPrimitiveSize!163 (ite c!1474708 (regTwo!44014 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))) (regTwo!44015 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))))

(declare-fun d!2395258 () Bool)

(declare-fun lt!2722160 () Int)

(assert (=> d!2395258 (>= lt!2722160 0)))

(declare-fun e!4734734 () Int)

(assert (=> d!2395258 (= lt!2722160 e!4734734)))

(declare-fun c!1474711 () Bool)

(assert (=> d!2395258 (= c!1474711 ((_ is ElementMatch!21751) (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(assert (=> d!2395258 (= (RegexPrimitiveSize!163 (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))) lt!2722160)))

(declare-fun b!8038371 () Bool)

(assert (=> b!8038371 (= e!4734732 (+ 1 call!746180 call!746182))))

(declare-fun b!8038375 () Bool)

(assert (=> b!8038375 (= e!4734733 (+ 1 call!746181 call!746182))))

(declare-fun b!8038376 () Bool)

(assert (=> b!8038376 (= e!4734734 e!4734732)))

(assert (=> b!8038376 (= c!1474708 ((_ is Concat!30754) (ite c!1474649 (regTwo!44014 (regOne!44014 r!13107)) (regTwo!44015 (regOne!44014 r!13107)))))))

(declare-fun b!8038377 () Bool)

(assert (=> b!8038377 (= e!4734734 1)))

(declare-fun bm!746177 () Bool)

(assert (=> bm!746177 (= call!746181 call!746180)))

(assert (= (and d!2395258 c!1474711) b!8038377))

(assert (= (and d!2395258 (not c!1474711)) b!8038376))

(assert (= (and b!8038376 c!1474708) b!8038371))

(assert (= (and b!8038376 (not c!1474708)) b!8038372))

(assert (= (and b!8038372 c!1474710) b!8038373))

(assert (= (and b!8038372 (not c!1474710)) b!8038374))

(assert (= (and b!8038374 c!1474712) b!8038370))

(assert (= (and b!8038374 (not c!1474712)) b!8038369))

(assert (= (and b!8038369 c!1474709) b!8038368))

(assert (= (and b!8038369 (not c!1474709)) b!8038375))

(assert (= (or b!8038370 b!8038375) bm!746177))

(assert (= (or b!8038371 b!8038375) bm!746176))

(assert (= (or b!8038371 bm!746177) bm!746175))

(declare-fun m!8394006 () Bool)

(assert (=> bm!746175 m!8394006))

(declare-fun m!8394008 () Bool)

(assert (=> bm!746176 m!8394008))

(assert (=> bm!746125 d!2395258))

(declare-fun b!8038381 () Bool)

(declare-fun e!4734735 () Bool)

(declare-fun tp!2407339 () Bool)

(declare-fun tp!2407340 () Bool)

(assert (=> b!8038381 (= e!4734735 (and tp!2407339 tp!2407340))))

(declare-fun b!8038378 () Bool)

(assert (=> b!8038378 (= e!4734735 tp_is_empty!54497)))

(declare-fun b!8038380 () Bool)

(declare-fun tp!2407341 () Bool)

(assert (=> b!8038380 (= e!4734735 tp!2407341)))

(declare-fun b!8038379 () Bool)

(declare-fun tp!2407343 () Bool)

(declare-fun tp!2407342 () Bool)

(assert (=> b!8038379 (= e!4734735 (and tp!2407343 tp!2407342))))

(assert (=> b!8038103 (= tp!2407189 e!4734735)))

(assert (= (and b!8038103 ((_ is ElementMatch!21751) (regOne!44015 (reg!22080 r!13107)))) b!8038378))

(assert (= (and b!8038103 ((_ is Concat!30754) (regOne!44015 (reg!22080 r!13107)))) b!8038379))

(assert (= (and b!8038103 ((_ is Star!21751) (regOne!44015 (reg!22080 r!13107)))) b!8038380))

(assert (= (and b!8038103 ((_ is Union!21751) (regOne!44015 (reg!22080 r!13107)))) b!8038381))

(declare-fun b!8038385 () Bool)

(declare-fun e!4734736 () Bool)

(declare-fun tp!2407344 () Bool)

(declare-fun tp!2407345 () Bool)

(assert (=> b!8038385 (= e!4734736 (and tp!2407344 tp!2407345))))

(declare-fun b!8038382 () Bool)

(assert (=> b!8038382 (= e!4734736 tp_is_empty!54497)))

(declare-fun b!8038384 () Bool)

(declare-fun tp!2407346 () Bool)

(assert (=> b!8038384 (= e!4734736 tp!2407346)))

(declare-fun b!8038383 () Bool)

(declare-fun tp!2407348 () Bool)

(declare-fun tp!2407347 () Bool)

(assert (=> b!8038383 (= e!4734736 (and tp!2407348 tp!2407347))))

(assert (=> b!8038103 (= tp!2407190 e!4734736)))

(assert (= (and b!8038103 ((_ is ElementMatch!21751) (regTwo!44015 (reg!22080 r!13107)))) b!8038382))

(assert (= (and b!8038103 ((_ is Concat!30754) (regTwo!44015 (reg!22080 r!13107)))) b!8038383))

(assert (= (and b!8038103 ((_ is Star!21751) (regTwo!44015 (reg!22080 r!13107)))) b!8038384))

(assert (= (and b!8038103 ((_ is Union!21751) (regTwo!44015 (reg!22080 r!13107)))) b!8038385))

(declare-fun b!8038389 () Bool)

(declare-fun e!4734737 () Bool)

(declare-fun tp!2407349 () Bool)

(declare-fun tp!2407350 () Bool)

(assert (=> b!8038389 (= e!4734737 (and tp!2407349 tp!2407350))))

(declare-fun b!8038386 () Bool)

(assert (=> b!8038386 (= e!4734737 tp_is_empty!54497)))

(declare-fun b!8038388 () Bool)

(declare-fun tp!2407351 () Bool)

(assert (=> b!8038388 (= e!4734737 tp!2407351)))

(declare-fun b!8038387 () Bool)

(declare-fun tp!2407353 () Bool)

(declare-fun tp!2407352 () Bool)

(assert (=> b!8038387 (= e!4734737 (and tp!2407353 tp!2407352))))

(assert (=> b!8038107 (= tp!2407194 e!4734737)))

(assert (= (and b!8038107 ((_ is ElementMatch!21751) (regOne!44015 (regOne!44014 r!13107)))) b!8038386))

(assert (= (and b!8038107 ((_ is Concat!30754) (regOne!44015 (regOne!44014 r!13107)))) b!8038387))

(assert (= (and b!8038107 ((_ is Star!21751) (regOne!44015 (regOne!44014 r!13107)))) b!8038388))

(assert (= (and b!8038107 ((_ is Union!21751) (regOne!44015 (regOne!44014 r!13107)))) b!8038389))

(declare-fun b!8038393 () Bool)

(declare-fun e!4734738 () Bool)

(declare-fun tp!2407354 () Bool)

(declare-fun tp!2407355 () Bool)

(assert (=> b!8038393 (= e!4734738 (and tp!2407354 tp!2407355))))

(declare-fun b!8038390 () Bool)

(assert (=> b!8038390 (= e!4734738 tp_is_empty!54497)))

(declare-fun b!8038392 () Bool)

(declare-fun tp!2407356 () Bool)

(assert (=> b!8038392 (= e!4734738 tp!2407356)))

(declare-fun b!8038391 () Bool)

(declare-fun tp!2407358 () Bool)

(declare-fun tp!2407357 () Bool)

(assert (=> b!8038391 (= e!4734738 (and tp!2407358 tp!2407357))))

(assert (=> b!8038107 (= tp!2407195 e!4734738)))

(assert (= (and b!8038107 ((_ is ElementMatch!21751) (regTwo!44015 (regOne!44014 r!13107)))) b!8038390))

(assert (= (and b!8038107 ((_ is Concat!30754) (regTwo!44015 (regOne!44014 r!13107)))) b!8038391))

(assert (= (and b!8038107 ((_ is Star!21751) (regTwo!44015 (regOne!44014 r!13107)))) b!8038392))

(assert (= (and b!8038107 ((_ is Union!21751) (regTwo!44015 (regOne!44014 r!13107)))) b!8038393))

(declare-fun b!8038397 () Bool)

(declare-fun e!4734739 () Bool)

(declare-fun tp!2407359 () Bool)

(declare-fun tp!2407360 () Bool)

(assert (=> b!8038397 (= e!4734739 (and tp!2407359 tp!2407360))))

(declare-fun b!8038394 () Bool)

(assert (=> b!8038394 (= e!4734739 tp_is_empty!54497)))

(declare-fun b!8038396 () Bool)

(declare-fun tp!2407361 () Bool)

(assert (=> b!8038396 (= e!4734739 tp!2407361)))

(declare-fun b!8038395 () Bool)

(declare-fun tp!2407363 () Bool)

(declare-fun tp!2407362 () Bool)

(assert (=> b!8038395 (= e!4734739 (and tp!2407363 tp!2407362))))

(assert (=> b!8038102 (= tp!2407191 e!4734739)))

(assert (= (and b!8038102 ((_ is ElementMatch!21751) (reg!22080 (reg!22080 r!13107)))) b!8038394))

(assert (= (and b!8038102 ((_ is Concat!30754) (reg!22080 (reg!22080 r!13107)))) b!8038395))

(assert (= (and b!8038102 ((_ is Star!21751) (reg!22080 (reg!22080 r!13107)))) b!8038396))

(assert (= (and b!8038102 ((_ is Union!21751) (reg!22080 (reg!22080 r!13107)))) b!8038397))

(declare-fun b!8038401 () Bool)

(declare-fun e!4734740 () Bool)

(declare-fun tp!2407364 () Bool)

(declare-fun tp!2407365 () Bool)

(assert (=> b!8038401 (= e!4734740 (and tp!2407364 tp!2407365))))

(declare-fun b!8038398 () Bool)

(assert (=> b!8038398 (= e!4734740 tp_is_empty!54497)))

(declare-fun b!8038400 () Bool)

(declare-fun tp!2407366 () Bool)

(assert (=> b!8038400 (= e!4734740 tp!2407366)))

(declare-fun b!8038399 () Bool)

(declare-fun tp!2407368 () Bool)

(declare-fun tp!2407367 () Bool)

(assert (=> b!8038399 (= e!4734740 (and tp!2407368 tp!2407367))))

(assert (=> b!8038111 (= tp!2407199 e!4734740)))

(assert (= (and b!8038111 ((_ is ElementMatch!21751) (regOne!44015 (regTwo!44014 r!13107)))) b!8038398))

(assert (= (and b!8038111 ((_ is Concat!30754) (regOne!44015 (regTwo!44014 r!13107)))) b!8038399))

(assert (= (and b!8038111 ((_ is Star!21751) (regOne!44015 (regTwo!44014 r!13107)))) b!8038400))

(assert (= (and b!8038111 ((_ is Union!21751) (regOne!44015 (regTwo!44014 r!13107)))) b!8038401))

(declare-fun b!8038405 () Bool)

(declare-fun e!4734741 () Bool)

(declare-fun tp!2407369 () Bool)

(declare-fun tp!2407370 () Bool)

(assert (=> b!8038405 (= e!4734741 (and tp!2407369 tp!2407370))))

(declare-fun b!8038402 () Bool)

(assert (=> b!8038402 (= e!4734741 tp_is_empty!54497)))

(declare-fun b!8038404 () Bool)

(declare-fun tp!2407371 () Bool)

(assert (=> b!8038404 (= e!4734741 tp!2407371)))

(declare-fun b!8038403 () Bool)

(declare-fun tp!2407373 () Bool)

(declare-fun tp!2407372 () Bool)

(assert (=> b!8038403 (= e!4734741 (and tp!2407373 tp!2407372))))

(assert (=> b!8038111 (= tp!2407200 e!4734741)))

(assert (= (and b!8038111 ((_ is ElementMatch!21751) (regTwo!44015 (regTwo!44014 r!13107)))) b!8038402))

(assert (= (and b!8038111 ((_ is Concat!30754) (regTwo!44015 (regTwo!44014 r!13107)))) b!8038403))

(assert (= (and b!8038111 ((_ is Star!21751) (regTwo!44015 (regTwo!44014 r!13107)))) b!8038404))

(assert (= (and b!8038111 ((_ is Union!21751) (regTwo!44015 (regTwo!44014 r!13107)))) b!8038405))

(declare-fun b!8038409 () Bool)

(declare-fun e!4734742 () Bool)

(declare-fun tp!2407374 () Bool)

(declare-fun tp!2407375 () Bool)

(assert (=> b!8038409 (= e!4734742 (and tp!2407374 tp!2407375))))

(declare-fun b!8038406 () Bool)

(assert (=> b!8038406 (= e!4734742 tp_is_empty!54497)))

(declare-fun b!8038408 () Bool)

(declare-fun tp!2407376 () Bool)

(assert (=> b!8038408 (= e!4734742 tp!2407376)))

(declare-fun b!8038407 () Bool)

(declare-fun tp!2407378 () Bool)

(declare-fun tp!2407377 () Bool)

(assert (=> b!8038407 (= e!4734742 (and tp!2407378 tp!2407377))))

(assert (=> b!8038106 (= tp!2407196 e!4734742)))

(assert (= (and b!8038106 ((_ is ElementMatch!21751) (reg!22080 (regOne!44014 r!13107)))) b!8038406))

(assert (= (and b!8038106 ((_ is Concat!30754) (reg!22080 (regOne!44014 r!13107)))) b!8038407))

(assert (= (and b!8038106 ((_ is Star!21751) (reg!22080 (regOne!44014 r!13107)))) b!8038408))

(assert (= (and b!8038106 ((_ is Union!21751) (reg!22080 (regOne!44014 r!13107)))) b!8038409))

(declare-fun b!8038413 () Bool)

(declare-fun e!4734743 () Bool)

(declare-fun tp!2407379 () Bool)

(declare-fun tp!2407380 () Bool)

(assert (=> b!8038413 (= e!4734743 (and tp!2407379 tp!2407380))))

(declare-fun b!8038410 () Bool)

(assert (=> b!8038410 (= e!4734743 tp_is_empty!54497)))

(declare-fun b!8038412 () Bool)

(declare-fun tp!2407381 () Bool)

(assert (=> b!8038412 (= e!4734743 tp!2407381)))

(declare-fun b!8038411 () Bool)

(declare-fun tp!2407383 () Bool)

(declare-fun tp!2407382 () Bool)

(assert (=> b!8038411 (= e!4734743 (and tp!2407383 tp!2407382))))

(assert (=> b!8038101 (= tp!2407193 e!4734743)))

(assert (= (and b!8038101 ((_ is ElementMatch!21751) (regOne!44014 (reg!22080 r!13107)))) b!8038410))

(assert (= (and b!8038101 ((_ is Concat!30754) (regOne!44014 (reg!22080 r!13107)))) b!8038411))

(assert (= (and b!8038101 ((_ is Star!21751) (regOne!44014 (reg!22080 r!13107)))) b!8038412))

(assert (= (and b!8038101 ((_ is Union!21751) (regOne!44014 (reg!22080 r!13107)))) b!8038413))

(declare-fun b!8038417 () Bool)

(declare-fun e!4734744 () Bool)

(declare-fun tp!2407384 () Bool)

(declare-fun tp!2407385 () Bool)

(assert (=> b!8038417 (= e!4734744 (and tp!2407384 tp!2407385))))

(declare-fun b!8038414 () Bool)

(assert (=> b!8038414 (= e!4734744 tp_is_empty!54497)))

(declare-fun b!8038416 () Bool)

(declare-fun tp!2407386 () Bool)

(assert (=> b!8038416 (= e!4734744 tp!2407386)))

(declare-fun b!8038415 () Bool)

(declare-fun tp!2407388 () Bool)

(declare-fun tp!2407387 () Bool)

(assert (=> b!8038415 (= e!4734744 (and tp!2407388 tp!2407387))))

(assert (=> b!8038101 (= tp!2407192 e!4734744)))

(assert (= (and b!8038101 ((_ is ElementMatch!21751) (regTwo!44014 (reg!22080 r!13107)))) b!8038414))

(assert (= (and b!8038101 ((_ is Concat!30754) (regTwo!44014 (reg!22080 r!13107)))) b!8038415))

(assert (= (and b!8038101 ((_ is Star!21751) (regTwo!44014 (reg!22080 r!13107)))) b!8038416))

(assert (= (and b!8038101 ((_ is Union!21751) (regTwo!44014 (reg!22080 r!13107)))) b!8038417))

(declare-fun b!8038421 () Bool)

(declare-fun e!4734745 () Bool)

(declare-fun tp!2407389 () Bool)

(declare-fun tp!2407390 () Bool)

(assert (=> b!8038421 (= e!4734745 (and tp!2407389 tp!2407390))))

(declare-fun b!8038418 () Bool)

(assert (=> b!8038418 (= e!4734745 tp_is_empty!54497)))

(declare-fun b!8038420 () Bool)

(declare-fun tp!2407391 () Bool)

(assert (=> b!8038420 (= e!4734745 tp!2407391)))

(declare-fun b!8038419 () Bool)

(declare-fun tp!2407393 () Bool)

(declare-fun tp!2407392 () Bool)

(assert (=> b!8038419 (= e!4734745 (and tp!2407393 tp!2407392))))

(assert (=> b!8038115 (= tp!2407204 e!4734745)))

(assert (= (and b!8038115 ((_ is ElementMatch!21751) (regOne!44015 (regOne!44015 r!13107)))) b!8038418))

(assert (= (and b!8038115 ((_ is Concat!30754) (regOne!44015 (regOne!44015 r!13107)))) b!8038419))

(assert (= (and b!8038115 ((_ is Star!21751) (regOne!44015 (regOne!44015 r!13107)))) b!8038420))

(assert (= (and b!8038115 ((_ is Union!21751) (regOne!44015 (regOne!44015 r!13107)))) b!8038421))

(declare-fun b!8038425 () Bool)

(declare-fun e!4734746 () Bool)

(declare-fun tp!2407394 () Bool)

(declare-fun tp!2407395 () Bool)

(assert (=> b!8038425 (= e!4734746 (and tp!2407394 tp!2407395))))

(declare-fun b!8038422 () Bool)

(assert (=> b!8038422 (= e!4734746 tp_is_empty!54497)))

(declare-fun b!8038424 () Bool)

(declare-fun tp!2407396 () Bool)

(assert (=> b!8038424 (= e!4734746 tp!2407396)))

(declare-fun b!8038423 () Bool)

(declare-fun tp!2407398 () Bool)

(declare-fun tp!2407397 () Bool)

(assert (=> b!8038423 (= e!4734746 (and tp!2407398 tp!2407397))))

(assert (=> b!8038115 (= tp!2407205 e!4734746)))

(assert (= (and b!8038115 ((_ is ElementMatch!21751) (regTwo!44015 (regOne!44015 r!13107)))) b!8038422))

(assert (= (and b!8038115 ((_ is Concat!30754) (regTwo!44015 (regOne!44015 r!13107)))) b!8038423))

(assert (= (and b!8038115 ((_ is Star!21751) (regTwo!44015 (regOne!44015 r!13107)))) b!8038424))

(assert (= (and b!8038115 ((_ is Union!21751) (regTwo!44015 (regOne!44015 r!13107)))) b!8038425))

(declare-fun b!8038429 () Bool)

(declare-fun e!4734747 () Bool)

(declare-fun tp!2407399 () Bool)

(declare-fun tp!2407400 () Bool)

(assert (=> b!8038429 (= e!4734747 (and tp!2407399 tp!2407400))))

(declare-fun b!8038426 () Bool)

(assert (=> b!8038426 (= e!4734747 tp_is_empty!54497)))

(declare-fun b!8038428 () Bool)

(declare-fun tp!2407401 () Bool)

(assert (=> b!8038428 (= e!4734747 tp!2407401)))

(declare-fun b!8038427 () Bool)

(declare-fun tp!2407403 () Bool)

(declare-fun tp!2407402 () Bool)

(assert (=> b!8038427 (= e!4734747 (and tp!2407403 tp!2407402))))

(assert (=> b!8038110 (= tp!2407201 e!4734747)))

(assert (= (and b!8038110 ((_ is ElementMatch!21751) (reg!22080 (regTwo!44014 r!13107)))) b!8038426))

(assert (= (and b!8038110 ((_ is Concat!30754) (reg!22080 (regTwo!44014 r!13107)))) b!8038427))

(assert (= (and b!8038110 ((_ is Star!21751) (reg!22080 (regTwo!44014 r!13107)))) b!8038428))

(assert (= (and b!8038110 ((_ is Union!21751) (reg!22080 (regTwo!44014 r!13107)))) b!8038429))

(declare-fun b!8038433 () Bool)

(declare-fun e!4734748 () Bool)

(declare-fun tp!2407404 () Bool)

(declare-fun tp!2407405 () Bool)

(assert (=> b!8038433 (= e!4734748 (and tp!2407404 tp!2407405))))

(declare-fun b!8038430 () Bool)

(assert (=> b!8038430 (= e!4734748 tp_is_empty!54497)))

(declare-fun b!8038432 () Bool)

(declare-fun tp!2407406 () Bool)

(assert (=> b!8038432 (= e!4734748 tp!2407406)))

(declare-fun b!8038431 () Bool)

(declare-fun tp!2407408 () Bool)

(declare-fun tp!2407407 () Bool)

(assert (=> b!8038431 (= e!4734748 (and tp!2407408 tp!2407407))))

(assert (=> b!8038105 (= tp!2407198 e!4734748)))

(assert (= (and b!8038105 ((_ is ElementMatch!21751) (regOne!44014 (regOne!44014 r!13107)))) b!8038430))

(assert (= (and b!8038105 ((_ is Concat!30754) (regOne!44014 (regOne!44014 r!13107)))) b!8038431))

(assert (= (and b!8038105 ((_ is Star!21751) (regOne!44014 (regOne!44014 r!13107)))) b!8038432))

(assert (= (and b!8038105 ((_ is Union!21751) (regOne!44014 (regOne!44014 r!13107)))) b!8038433))

(declare-fun b!8038437 () Bool)

(declare-fun e!4734749 () Bool)

(declare-fun tp!2407409 () Bool)

(declare-fun tp!2407410 () Bool)

(assert (=> b!8038437 (= e!4734749 (and tp!2407409 tp!2407410))))

(declare-fun b!8038434 () Bool)

(assert (=> b!8038434 (= e!4734749 tp_is_empty!54497)))

(declare-fun b!8038436 () Bool)

(declare-fun tp!2407411 () Bool)

(assert (=> b!8038436 (= e!4734749 tp!2407411)))

(declare-fun b!8038435 () Bool)

(declare-fun tp!2407413 () Bool)

(declare-fun tp!2407412 () Bool)

(assert (=> b!8038435 (= e!4734749 (and tp!2407413 tp!2407412))))

(assert (=> b!8038105 (= tp!2407197 e!4734749)))

(assert (= (and b!8038105 ((_ is ElementMatch!21751) (regTwo!44014 (regOne!44014 r!13107)))) b!8038434))

(assert (= (and b!8038105 ((_ is Concat!30754) (regTwo!44014 (regOne!44014 r!13107)))) b!8038435))

(assert (= (and b!8038105 ((_ is Star!21751) (regTwo!44014 (regOne!44014 r!13107)))) b!8038436))

(assert (= (and b!8038105 ((_ is Union!21751) (regTwo!44014 (regOne!44014 r!13107)))) b!8038437))

(declare-fun b!8038441 () Bool)

(declare-fun e!4734750 () Bool)

(declare-fun tp!2407414 () Bool)

(declare-fun tp!2407415 () Bool)

(assert (=> b!8038441 (= e!4734750 (and tp!2407414 tp!2407415))))

(declare-fun b!8038438 () Bool)

(assert (=> b!8038438 (= e!4734750 tp_is_empty!54497)))

(declare-fun b!8038440 () Bool)

(declare-fun tp!2407416 () Bool)

(assert (=> b!8038440 (= e!4734750 tp!2407416)))

(declare-fun b!8038439 () Bool)

(declare-fun tp!2407418 () Bool)

(declare-fun tp!2407417 () Bool)

(assert (=> b!8038439 (= e!4734750 (and tp!2407418 tp!2407417))))

(assert (=> b!8038119 (= tp!2407209 e!4734750)))

(assert (= (and b!8038119 ((_ is ElementMatch!21751) (regOne!44015 (regTwo!44015 r!13107)))) b!8038438))

(assert (= (and b!8038119 ((_ is Concat!30754) (regOne!44015 (regTwo!44015 r!13107)))) b!8038439))

(assert (= (and b!8038119 ((_ is Star!21751) (regOne!44015 (regTwo!44015 r!13107)))) b!8038440))

(assert (= (and b!8038119 ((_ is Union!21751) (regOne!44015 (regTwo!44015 r!13107)))) b!8038441))

(declare-fun b!8038445 () Bool)

(declare-fun e!4734751 () Bool)

(declare-fun tp!2407419 () Bool)

(declare-fun tp!2407420 () Bool)

(assert (=> b!8038445 (= e!4734751 (and tp!2407419 tp!2407420))))

(declare-fun b!8038442 () Bool)

(assert (=> b!8038442 (= e!4734751 tp_is_empty!54497)))

(declare-fun b!8038444 () Bool)

(declare-fun tp!2407421 () Bool)

(assert (=> b!8038444 (= e!4734751 tp!2407421)))

(declare-fun b!8038443 () Bool)

(declare-fun tp!2407423 () Bool)

(declare-fun tp!2407422 () Bool)

(assert (=> b!8038443 (= e!4734751 (and tp!2407423 tp!2407422))))

(assert (=> b!8038119 (= tp!2407210 e!4734751)))

(assert (= (and b!8038119 ((_ is ElementMatch!21751) (regTwo!44015 (regTwo!44015 r!13107)))) b!8038442))

(assert (= (and b!8038119 ((_ is Concat!30754) (regTwo!44015 (regTwo!44015 r!13107)))) b!8038443))

(assert (= (and b!8038119 ((_ is Star!21751) (regTwo!44015 (regTwo!44015 r!13107)))) b!8038444))

(assert (= (and b!8038119 ((_ is Union!21751) (regTwo!44015 (regTwo!44015 r!13107)))) b!8038445))

(declare-fun b!8038449 () Bool)

(declare-fun e!4734752 () Bool)

(declare-fun tp!2407424 () Bool)

(declare-fun tp!2407425 () Bool)

(assert (=> b!8038449 (= e!4734752 (and tp!2407424 tp!2407425))))

(declare-fun b!8038446 () Bool)

(assert (=> b!8038446 (= e!4734752 tp_is_empty!54497)))

(declare-fun b!8038448 () Bool)

(declare-fun tp!2407426 () Bool)

(assert (=> b!8038448 (= e!4734752 tp!2407426)))

(declare-fun b!8038447 () Bool)

(declare-fun tp!2407428 () Bool)

(declare-fun tp!2407427 () Bool)

(assert (=> b!8038447 (= e!4734752 (and tp!2407428 tp!2407427))))

(assert (=> b!8038114 (= tp!2407206 e!4734752)))

(assert (= (and b!8038114 ((_ is ElementMatch!21751) (reg!22080 (regOne!44015 r!13107)))) b!8038446))

(assert (= (and b!8038114 ((_ is Concat!30754) (reg!22080 (regOne!44015 r!13107)))) b!8038447))

(assert (= (and b!8038114 ((_ is Star!21751) (reg!22080 (regOne!44015 r!13107)))) b!8038448))

(assert (= (and b!8038114 ((_ is Union!21751) (reg!22080 (regOne!44015 r!13107)))) b!8038449))

(declare-fun b!8038453 () Bool)

(declare-fun e!4734753 () Bool)

(declare-fun tp!2407429 () Bool)

(declare-fun tp!2407430 () Bool)

(assert (=> b!8038453 (= e!4734753 (and tp!2407429 tp!2407430))))

(declare-fun b!8038450 () Bool)

(assert (=> b!8038450 (= e!4734753 tp_is_empty!54497)))

(declare-fun b!8038452 () Bool)

(declare-fun tp!2407431 () Bool)

(assert (=> b!8038452 (= e!4734753 tp!2407431)))

(declare-fun b!8038451 () Bool)

(declare-fun tp!2407433 () Bool)

(declare-fun tp!2407432 () Bool)

(assert (=> b!8038451 (= e!4734753 (and tp!2407433 tp!2407432))))

(assert (=> b!8038109 (= tp!2407203 e!4734753)))

(assert (= (and b!8038109 ((_ is ElementMatch!21751) (regOne!44014 (regTwo!44014 r!13107)))) b!8038450))

(assert (= (and b!8038109 ((_ is Concat!30754) (regOne!44014 (regTwo!44014 r!13107)))) b!8038451))

(assert (= (and b!8038109 ((_ is Star!21751) (regOne!44014 (regTwo!44014 r!13107)))) b!8038452))

(assert (= (and b!8038109 ((_ is Union!21751) (regOne!44014 (regTwo!44014 r!13107)))) b!8038453))

(declare-fun b!8038457 () Bool)

(declare-fun e!4734754 () Bool)

(declare-fun tp!2407434 () Bool)

(declare-fun tp!2407435 () Bool)

(assert (=> b!8038457 (= e!4734754 (and tp!2407434 tp!2407435))))

(declare-fun b!8038454 () Bool)

(assert (=> b!8038454 (= e!4734754 tp_is_empty!54497)))

(declare-fun b!8038456 () Bool)

(declare-fun tp!2407436 () Bool)

(assert (=> b!8038456 (= e!4734754 tp!2407436)))

(declare-fun b!8038455 () Bool)

(declare-fun tp!2407438 () Bool)

(declare-fun tp!2407437 () Bool)

(assert (=> b!8038455 (= e!4734754 (and tp!2407438 tp!2407437))))

(assert (=> b!8038109 (= tp!2407202 e!4734754)))

(assert (= (and b!8038109 ((_ is ElementMatch!21751) (regTwo!44014 (regTwo!44014 r!13107)))) b!8038454))

(assert (= (and b!8038109 ((_ is Concat!30754) (regTwo!44014 (regTwo!44014 r!13107)))) b!8038455))

(assert (= (and b!8038109 ((_ is Star!21751) (regTwo!44014 (regTwo!44014 r!13107)))) b!8038456))

(assert (= (and b!8038109 ((_ is Union!21751) (regTwo!44014 (regTwo!44014 r!13107)))) b!8038457))

(declare-fun b!8038461 () Bool)

(declare-fun e!4734755 () Bool)

(declare-fun tp!2407439 () Bool)

(declare-fun tp!2407440 () Bool)

(assert (=> b!8038461 (= e!4734755 (and tp!2407439 tp!2407440))))

(declare-fun b!8038458 () Bool)

(assert (=> b!8038458 (= e!4734755 tp_is_empty!54497)))

(declare-fun b!8038460 () Bool)

(declare-fun tp!2407441 () Bool)

(assert (=> b!8038460 (= e!4734755 tp!2407441)))

(declare-fun b!8038459 () Bool)

(declare-fun tp!2407443 () Bool)

(declare-fun tp!2407442 () Bool)

(assert (=> b!8038459 (= e!4734755 (and tp!2407443 tp!2407442))))

(assert (=> b!8038118 (= tp!2407211 e!4734755)))

(assert (= (and b!8038118 ((_ is ElementMatch!21751) (reg!22080 (regTwo!44015 r!13107)))) b!8038458))

(assert (= (and b!8038118 ((_ is Concat!30754) (reg!22080 (regTwo!44015 r!13107)))) b!8038459))

(assert (= (and b!8038118 ((_ is Star!21751) (reg!22080 (regTwo!44015 r!13107)))) b!8038460))

(assert (= (and b!8038118 ((_ is Union!21751) (reg!22080 (regTwo!44015 r!13107)))) b!8038461))

(declare-fun b!8038465 () Bool)

(declare-fun e!4734756 () Bool)

(declare-fun tp!2407444 () Bool)

(declare-fun tp!2407445 () Bool)

(assert (=> b!8038465 (= e!4734756 (and tp!2407444 tp!2407445))))

(declare-fun b!8038462 () Bool)

(assert (=> b!8038462 (= e!4734756 tp_is_empty!54497)))

(declare-fun b!8038464 () Bool)

(declare-fun tp!2407446 () Bool)

(assert (=> b!8038464 (= e!4734756 tp!2407446)))

(declare-fun b!8038463 () Bool)

(declare-fun tp!2407448 () Bool)

(declare-fun tp!2407447 () Bool)

(assert (=> b!8038463 (= e!4734756 (and tp!2407448 tp!2407447))))

(assert (=> b!8038113 (= tp!2407208 e!4734756)))

(assert (= (and b!8038113 ((_ is ElementMatch!21751) (regOne!44014 (regOne!44015 r!13107)))) b!8038462))

(assert (= (and b!8038113 ((_ is Concat!30754) (regOne!44014 (regOne!44015 r!13107)))) b!8038463))

(assert (= (and b!8038113 ((_ is Star!21751) (regOne!44014 (regOne!44015 r!13107)))) b!8038464))

(assert (= (and b!8038113 ((_ is Union!21751) (regOne!44014 (regOne!44015 r!13107)))) b!8038465))

(declare-fun b!8038469 () Bool)

(declare-fun e!4734757 () Bool)

(declare-fun tp!2407449 () Bool)

(declare-fun tp!2407450 () Bool)

(assert (=> b!8038469 (= e!4734757 (and tp!2407449 tp!2407450))))

(declare-fun b!8038466 () Bool)

(assert (=> b!8038466 (= e!4734757 tp_is_empty!54497)))

(declare-fun b!8038468 () Bool)

(declare-fun tp!2407451 () Bool)

(assert (=> b!8038468 (= e!4734757 tp!2407451)))

(declare-fun b!8038467 () Bool)

(declare-fun tp!2407453 () Bool)

(declare-fun tp!2407452 () Bool)

(assert (=> b!8038467 (= e!4734757 (and tp!2407453 tp!2407452))))

(assert (=> b!8038113 (= tp!2407207 e!4734757)))

(assert (= (and b!8038113 ((_ is ElementMatch!21751) (regTwo!44014 (regOne!44015 r!13107)))) b!8038466))

(assert (= (and b!8038113 ((_ is Concat!30754) (regTwo!44014 (regOne!44015 r!13107)))) b!8038467))

(assert (= (and b!8038113 ((_ is Star!21751) (regTwo!44014 (regOne!44015 r!13107)))) b!8038468))

(assert (= (and b!8038113 ((_ is Union!21751) (regTwo!44014 (regOne!44015 r!13107)))) b!8038469))

(declare-fun b!8038473 () Bool)

(declare-fun e!4734758 () Bool)

(declare-fun tp!2407454 () Bool)

(declare-fun tp!2407455 () Bool)

(assert (=> b!8038473 (= e!4734758 (and tp!2407454 tp!2407455))))

(declare-fun b!8038470 () Bool)

(assert (=> b!8038470 (= e!4734758 tp_is_empty!54497)))

(declare-fun b!8038472 () Bool)

(declare-fun tp!2407456 () Bool)

(assert (=> b!8038472 (= e!4734758 tp!2407456)))

(declare-fun b!8038471 () Bool)

(declare-fun tp!2407458 () Bool)

(declare-fun tp!2407457 () Bool)

(assert (=> b!8038471 (= e!4734758 (and tp!2407458 tp!2407457))))

(assert (=> b!8038117 (= tp!2407213 e!4734758)))

(assert (= (and b!8038117 ((_ is ElementMatch!21751) (regOne!44014 (regTwo!44015 r!13107)))) b!8038470))

(assert (= (and b!8038117 ((_ is Concat!30754) (regOne!44014 (regTwo!44015 r!13107)))) b!8038471))

(assert (= (and b!8038117 ((_ is Star!21751) (regOne!44014 (regTwo!44015 r!13107)))) b!8038472))

(assert (= (and b!8038117 ((_ is Union!21751) (regOne!44014 (regTwo!44015 r!13107)))) b!8038473))

(declare-fun b!8038477 () Bool)

(declare-fun e!4734759 () Bool)

(declare-fun tp!2407459 () Bool)

(declare-fun tp!2407460 () Bool)

(assert (=> b!8038477 (= e!4734759 (and tp!2407459 tp!2407460))))

(declare-fun b!8038474 () Bool)

(assert (=> b!8038474 (= e!4734759 tp_is_empty!54497)))

(declare-fun b!8038476 () Bool)

(declare-fun tp!2407461 () Bool)

(assert (=> b!8038476 (= e!4734759 tp!2407461)))

(declare-fun b!8038475 () Bool)

(declare-fun tp!2407463 () Bool)

(declare-fun tp!2407462 () Bool)

(assert (=> b!8038475 (= e!4734759 (and tp!2407463 tp!2407462))))

(assert (=> b!8038117 (= tp!2407212 e!4734759)))

(assert (= (and b!8038117 ((_ is ElementMatch!21751) (regTwo!44014 (regTwo!44015 r!13107)))) b!8038474))

(assert (= (and b!8038117 ((_ is Concat!30754) (regTwo!44014 (regTwo!44015 r!13107)))) b!8038475))

(assert (= (and b!8038117 ((_ is Star!21751) (regTwo!44014 (regTwo!44015 r!13107)))) b!8038476))

(assert (= (and b!8038117 ((_ is Union!21751) (regTwo!44014 (regTwo!44015 r!13107)))) b!8038477))

(check-sat (not b!8038409) (not b!8038164) (not b!8038401) (not b!8038196) (not b!8038441) (not b!8038416) (not b!8038421) (not b!8038440) (not b!8038476) (not b!8038443) (not bm!746151) (not b!8038461) (not bm!746137) (not b!8038381) (not b!8038467) (not b!8038405) (not bm!746175) (not b!8038417) (not b!8038404) (not b!8038396) (not b!8038457) (not b!8038408) (not b!8038395) (not b!8038419) (not b!8038431) (not b!8038432) (not b!8038472) (not bm!746163) (not b!8038477) (not b!8038449) (not bm!746176) (not bm!746142) (not b!8038447) (not b!8038415) (not b!8038391) (not b!8038463) (not b!8038399) (not b!8038413) (not bm!746130) (not b!8038403) (not b!8038451) (not bm!746174) (not b!8038392) (not b!8038424) (not b!8038460) (not b!8038427) (not b!8038475) (not b!8038439) (not b!8038433) (not b!8038436) (not bm!746153) (not b!8038389) (not b!8038423) (not b!8038384) (not b!8038471) (not b!8038428) (not b!8038445) (not bm!746143) (not b!8038468) (not b!8038379) (not b!8038437) (not b!8038444) (not b!8038469) (not b!8038397) (not d!2395256) (not b!8038411) (not b!8038429) (not b!8038459) (not b!8038420) (not b!8038453) (not b!8038452) (not bm!746131) (not b!8038387) (not b!8038455) (not b!8038407) (not b!8038393) (not b!8038385) (not bm!746164) (not b!8038464) (not b!8038388) (not bm!746173) (not b!8038435) (not b!8038465) (not bm!746138) (not b!8038448) (not b!8038383) (not b!8038425) (not b!8038400) (not b!8038473) (not b!8038412) tp_is_empty!54497 (not b!8038456) (not b!8038380))
(check-sat)
