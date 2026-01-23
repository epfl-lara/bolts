; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44854 () Bool)

(assert start!44854)

(declare-fun b!470003 () Bool)

(declare-fun e!287525 () Bool)

(declare-fun tp!129916 () Bool)

(declare-fun tp!129915 () Bool)

(assert (=> b!470003 (= e!287525 (and tp!129916 tp!129915))))

(declare-fun b!470004 () Bool)

(declare-fun tp!129914 () Bool)

(assert (=> b!470004 (= e!287525 tp!129914)))

(declare-fun b!470005 () Bool)

(declare-fun e!287526 () Bool)

(declare-datatypes ((C!3148 0))(
  ( (C!3149 (val!1460 Int)) )
))
(declare-datatypes ((Regex!1113 0))(
  ( (ElementMatch!1113 (c!94602 C!3148)) (Concat!2013 (regOne!2738 Regex!1113) (regTwo!2738 Regex!1113)) (EmptyExpr!1113) (Star!1113 (reg!1442 Regex!1113)) (EmptyLang!1113) (Union!1113 (regOne!2739 Regex!1113) (regTwo!2739 Regex!1113)) )
))
(declare-fun r!23305 () Regex!1113)

(declare-datatypes ((List!4527 0))(
  ( (Nil!4517) (Cons!4517 (h!9914 C!3148) (t!72921 List!4527)) )
))
(declare-datatypes ((Option!1203 0))(
  ( (None!1202) (Some!1202 (v!15603 List!4527)) )
))
(declare-fun isDefined!1038 (Option!1203) Bool)

(declare-fun getLanguageWitness!38 (Regex!1113) Option!1203)

(assert (=> b!470005 (= e!287526 (not (isDefined!1038 (getLanguageWitness!38 r!23305))))))

(declare-fun b!470006 () Bool)

(declare-fun tp!129917 () Bool)

(declare-fun tp!129913 () Bool)

(assert (=> b!470006 (= e!287525 (and tp!129917 tp!129913))))

(declare-fun res!208514 () Bool)

(assert (=> start!44854 (=> (not res!208514) (not e!287526))))

(declare-fun validRegex!341 (Regex!1113) Bool)

(assert (=> start!44854 (= res!208514 (validRegex!341 r!23305))))

(assert (=> start!44854 e!287526))

(assert (=> start!44854 e!287525))

(declare-fun b!470007 () Bool)

(declare-fun res!208515 () Bool)

(assert (=> b!470007 (=> (not res!208515) (not e!287526))))

(declare-fun lostCause!107 (Regex!1113) Bool)

(assert (=> b!470007 (= res!208515 (not (lostCause!107 r!23305)))))

(declare-fun b!470008 () Bool)

(declare-fun tp_is_empty!2023 () Bool)

(assert (=> b!470008 (= e!287525 tp_is_empty!2023)))

(assert (= (and start!44854 res!208514) b!470007))

(assert (= (and b!470007 res!208515) b!470005))

(get-info :version)

(assert (= (and start!44854 ((_ is ElementMatch!1113) r!23305)) b!470008))

(assert (= (and start!44854 ((_ is Concat!2013) r!23305)) b!470003))

(assert (= (and start!44854 ((_ is Star!1113) r!23305)) b!470004))

(assert (= (and start!44854 ((_ is Union!1113) r!23305)) b!470006))

(declare-fun m!744311 () Bool)

(assert (=> b!470005 m!744311))

(assert (=> b!470005 m!744311))

(declare-fun m!744313 () Bool)

(assert (=> b!470005 m!744313))

(declare-fun m!744315 () Bool)

(assert (=> start!44854 m!744315))

(declare-fun m!744317 () Bool)

(assert (=> b!470007 m!744317))

(check-sat (not b!470004) (not b!470006) (not b!470003) (not start!44854) (not b!470007) tp_is_empty!2023 (not b!470005))
(check-sat)
(get-model)

(declare-fun d!179134 () Bool)

(declare-fun isEmpty!3520 (Option!1203) Bool)

(assert (=> d!179134 (= (isDefined!1038 (getLanguageWitness!38 r!23305)) (not (isEmpty!3520 (getLanguageWitness!38 r!23305))))))

(declare-fun bs!58366 () Bool)

(assert (= bs!58366 d!179134))

(assert (=> bs!58366 m!744311))

(declare-fun m!744321 () Bool)

(assert (=> bs!58366 m!744321))

(assert (=> b!470005 d!179134))

(declare-fun bm!32704 () Bool)

(declare-fun call!32709 () Option!1203)

(declare-fun c!94641 () Bool)

(assert (=> bm!32704 (= call!32709 (getLanguageWitness!38 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470073 () Bool)

(declare-fun e!287566 () Option!1203)

(assert (=> b!470073 (= e!287566 None!1202)))

(declare-fun b!470074 () Bool)

(assert (=> b!470074 (= c!94641 ((_ is Union!1113) r!23305))))

(declare-fun e!287564 () Option!1203)

(declare-fun e!287560 () Option!1203)

(assert (=> b!470074 (= e!287564 e!287560)))

(declare-fun b!470075 () Bool)

(declare-fun e!287561 () Option!1203)

(declare-fun call!32710 () Option!1203)

(assert (=> b!470075 (= e!287561 call!32710)))

(declare-fun b!470076 () Bool)

(declare-fun c!94638 () Bool)

(declare-fun lt!209739 () Option!1203)

(assert (=> b!470076 (= c!94638 ((_ is Some!1202) lt!209739))))

(assert (=> b!470076 (= lt!209739 call!32710)))

(declare-fun e!287563 () Option!1203)

(declare-fun e!287565 () Option!1203)

(assert (=> b!470076 (= e!287563 e!287565)))

(declare-fun b!470077 () Bool)

(declare-fun lt!209738 () Option!1203)

(assert (=> b!470077 (= e!287561 lt!209738)))

(declare-fun b!470078 () Bool)

(declare-fun e!287562 () Option!1203)

(assert (=> b!470078 (= e!287562 (Some!1202 Nil!4517))))

(declare-fun b!470079 () Bool)

(assert (=> b!470079 (= e!287562 e!287566)))

(declare-fun c!94637 () Bool)

(assert (=> b!470079 (= c!94637 ((_ is EmptyLang!1113) r!23305))))

(declare-fun b!470080 () Bool)

(declare-fun e!287559 () Option!1203)

(assert (=> b!470080 (= e!287559 e!287564)))

(declare-fun c!94635 () Bool)

(assert (=> b!470080 (= c!94635 ((_ is Star!1113) r!23305))))

(declare-fun b!470081 () Bool)

(assert (=> b!470081 (= e!287564 (Some!1202 Nil!4517))))

(declare-fun d!179138 () Bool)

(declare-fun c!94636 () Bool)

(assert (=> d!179138 (= c!94636 ((_ is EmptyExpr!1113) r!23305))))

(assert (=> d!179138 (= (getLanguageWitness!38 r!23305) e!287562)))

(declare-fun bm!32705 () Bool)

(assert (=> bm!32705 (= call!32710 (getLanguageWitness!38 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(declare-fun b!470082 () Bool)

(declare-fun lt!209737 () Option!1203)

(declare-fun ++!1329 (List!4527 List!4527) List!4527)

(assert (=> b!470082 (= e!287565 (Some!1202 (++!1329 (v!15603 lt!209737) (v!15603 lt!209739))))))

(declare-fun b!470083 () Bool)

(assert (=> b!470083 (= e!287563 None!1202)))

(declare-fun b!470084 () Bool)

(assert (=> b!470084 (= e!287560 e!287563)))

(assert (=> b!470084 (= lt!209737 call!32709)))

(declare-fun c!94639 () Bool)

(assert (=> b!470084 (= c!94639 ((_ is Some!1202) lt!209737))))

(declare-fun b!470085 () Bool)

(declare-fun c!94640 () Bool)

(assert (=> b!470085 (= c!94640 ((_ is ElementMatch!1113) r!23305))))

(assert (=> b!470085 (= e!287566 e!287559)))

(declare-fun b!470086 () Bool)

(assert (=> b!470086 (= e!287559 (Some!1202 (Cons!4517 (c!94602 r!23305) Nil!4517)))))

(declare-fun b!470087 () Bool)

(assert (=> b!470087 (= e!287565 None!1202)))

(declare-fun b!470088 () Bool)

(assert (=> b!470088 (= e!287560 e!287561)))

(assert (=> b!470088 (= lt!209738 call!32709)))

(declare-fun c!94642 () Bool)

(assert (=> b!470088 (= c!94642 ((_ is Some!1202) lt!209738))))

(assert (= (and d!179138 c!94636) b!470078))

(assert (= (and d!179138 (not c!94636)) b!470079))

(assert (= (and b!470079 c!94637) b!470073))

(assert (= (and b!470079 (not c!94637)) b!470085))

(assert (= (and b!470085 c!94640) b!470086))

(assert (= (and b!470085 (not c!94640)) b!470080))

(assert (= (and b!470080 c!94635) b!470081))

(assert (= (and b!470080 (not c!94635)) b!470074))

(assert (= (and b!470074 c!94641) b!470088))

(assert (= (and b!470074 (not c!94641)) b!470084))

(assert (= (and b!470088 c!94642) b!470077))

(assert (= (and b!470088 (not c!94642)) b!470075))

(assert (= (and b!470084 c!94639) b!470076))

(assert (= (and b!470084 (not c!94639)) b!470083))

(assert (= (and b!470076 c!94638) b!470082))

(assert (= (and b!470076 (not c!94638)) b!470087))

(assert (= (or b!470075 b!470076) bm!32705))

(assert (= (or b!470088 b!470084) bm!32704))

(declare-fun m!744323 () Bool)

(assert (=> bm!32704 m!744323))

(declare-fun m!744325 () Bool)

(assert (=> bm!32705 m!744325))

(declare-fun m!744327 () Bool)

(assert (=> b!470082 m!744327))

(assert (=> b!470005 d!179138))

(declare-fun d!179140 () Bool)

(declare-fun lostCauseFct!38 (Regex!1113) Bool)

(assert (=> d!179140 (= (lostCause!107 r!23305) (lostCauseFct!38 r!23305))))

(declare-fun bs!58367 () Bool)

(assert (= bs!58367 d!179140))

(declare-fun m!744335 () Bool)

(assert (=> bs!58367 m!744335))

(assert (=> b!470007 d!179140))

(declare-fun bm!32720 () Bool)

(declare-fun call!32727 () Bool)

(declare-fun c!94659 () Bool)

(assert (=> bm!32720 (= call!32727 (validRegex!341 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470141 () Bool)

(declare-fun e!287608 () Bool)

(declare-fun call!32725 () Bool)

(assert (=> b!470141 (= e!287608 call!32725)))

(declare-fun b!470142 () Bool)

(declare-fun e!287607 () Bool)

(assert (=> b!470142 (= e!287607 call!32725)))

(declare-fun b!470143 () Bool)

(declare-fun e!287603 () Bool)

(declare-fun e!287609 () Bool)

(assert (=> b!470143 (= e!287603 e!287609)))

(declare-fun res!208536 () Bool)

(declare-fun nullable!257 (Regex!1113) Bool)

(assert (=> b!470143 (= res!208536 (not (nullable!257 (reg!1442 r!23305))))))

(assert (=> b!470143 (=> (not res!208536) (not e!287609))))

(declare-fun b!470144 () Bool)

(declare-fun e!287605 () Bool)

(assert (=> b!470144 (= e!287605 e!287608)))

(declare-fun res!208540 () Bool)

(assert (=> b!470144 (=> (not res!208540) (not e!287608))))

(assert (=> b!470144 (= res!208540 call!32727)))

(declare-fun bm!32721 () Bool)

(declare-fun call!32726 () Bool)

(declare-fun c!94660 () Bool)

(assert (=> bm!32721 (= call!32726 (validRegex!341 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))

(declare-fun d!179144 () Bool)

(declare-fun res!208537 () Bool)

(declare-fun e!287604 () Bool)

(assert (=> d!179144 (=> res!208537 e!287604)))

(assert (=> d!179144 (= res!208537 ((_ is ElementMatch!1113) r!23305))))

(assert (=> d!179144 (= (validRegex!341 r!23305) e!287604)))

(declare-fun b!470145 () Bool)

(declare-fun e!287606 () Bool)

(assert (=> b!470145 (= e!287603 e!287606)))

(assert (=> b!470145 (= c!94659 ((_ is Union!1113) r!23305))))

(declare-fun bm!32722 () Bool)

(assert (=> bm!32722 (= call!32725 call!32726)))

(declare-fun b!470146 () Bool)

(assert (=> b!470146 (= e!287604 e!287603)))

(assert (=> b!470146 (= c!94660 ((_ is Star!1113) r!23305))))

(declare-fun b!470147 () Bool)

(declare-fun res!208539 () Bool)

(assert (=> b!470147 (=> (not res!208539) (not e!287607))))

(assert (=> b!470147 (= res!208539 call!32727)))

(assert (=> b!470147 (= e!287606 e!287607)))

(declare-fun b!470148 () Bool)

(declare-fun res!208538 () Bool)

(assert (=> b!470148 (=> res!208538 e!287605)))

(assert (=> b!470148 (= res!208538 (not ((_ is Concat!2013) r!23305)))))

(assert (=> b!470148 (= e!287606 e!287605)))

(declare-fun b!470149 () Bool)

(assert (=> b!470149 (= e!287609 call!32726)))

(assert (= (and d!179144 (not res!208537)) b!470146))

(assert (= (and b!470146 c!94660) b!470143))

(assert (= (and b!470146 (not c!94660)) b!470145))

(assert (= (and b!470143 res!208536) b!470149))

(assert (= (and b!470145 c!94659) b!470147))

(assert (= (and b!470145 (not c!94659)) b!470148))

(assert (= (and b!470147 res!208539) b!470142))

(assert (= (and b!470148 (not res!208538)) b!470144))

(assert (= (and b!470144 res!208540) b!470141))

(assert (= (or b!470147 b!470144) bm!32720))

(assert (= (or b!470142 b!470141) bm!32722))

(assert (= (or b!470149 bm!32722) bm!32721))

(declare-fun m!744339 () Bool)

(assert (=> bm!32720 m!744339))

(declare-fun m!744341 () Bool)

(assert (=> b!470143 m!744341))

(declare-fun m!744343 () Bool)

(assert (=> bm!32721 m!744343))

(assert (=> start!44854 d!179144))

(declare-fun b!470162 () Bool)

(declare-fun e!287612 () Bool)

(declare-fun tp!129931 () Bool)

(assert (=> b!470162 (= e!287612 tp!129931)))

(declare-fun b!470160 () Bool)

(assert (=> b!470160 (= e!287612 tp_is_empty!2023)))

(assert (=> b!470006 (= tp!129917 e!287612)))

(declare-fun b!470163 () Bool)

(declare-fun tp!129929 () Bool)

(declare-fun tp!129932 () Bool)

(assert (=> b!470163 (= e!287612 (and tp!129929 tp!129932))))

(declare-fun b!470161 () Bool)

(declare-fun tp!129930 () Bool)

(declare-fun tp!129928 () Bool)

(assert (=> b!470161 (= e!287612 (and tp!129930 tp!129928))))

(assert (= (and b!470006 ((_ is ElementMatch!1113) (regOne!2739 r!23305))) b!470160))

(assert (= (and b!470006 ((_ is Concat!2013) (regOne!2739 r!23305))) b!470161))

(assert (= (and b!470006 ((_ is Star!1113) (regOne!2739 r!23305))) b!470162))

(assert (= (and b!470006 ((_ is Union!1113) (regOne!2739 r!23305))) b!470163))

(declare-fun b!470166 () Bool)

(declare-fun e!287613 () Bool)

(declare-fun tp!129936 () Bool)

(assert (=> b!470166 (= e!287613 tp!129936)))

(declare-fun b!470164 () Bool)

(assert (=> b!470164 (= e!287613 tp_is_empty!2023)))

(assert (=> b!470006 (= tp!129913 e!287613)))

(declare-fun b!470167 () Bool)

(declare-fun tp!129934 () Bool)

(declare-fun tp!129937 () Bool)

(assert (=> b!470167 (= e!287613 (and tp!129934 tp!129937))))

(declare-fun b!470165 () Bool)

(declare-fun tp!129935 () Bool)

(declare-fun tp!129933 () Bool)

(assert (=> b!470165 (= e!287613 (and tp!129935 tp!129933))))

(assert (= (and b!470006 ((_ is ElementMatch!1113) (regTwo!2739 r!23305))) b!470164))

(assert (= (and b!470006 ((_ is Concat!2013) (regTwo!2739 r!23305))) b!470165))

(assert (= (and b!470006 ((_ is Star!1113) (regTwo!2739 r!23305))) b!470166))

(assert (= (and b!470006 ((_ is Union!1113) (regTwo!2739 r!23305))) b!470167))

(declare-fun b!470170 () Bool)

(declare-fun e!287614 () Bool)

(declare-fun tp!129941 () Bool)

(assert (=> b!470170 (= e!287614 tp!129941)))

(declare-fun b!470168 () Bool)

(assert (=> b!470168 (= e!287614 tp_is_empty!2023)))

(assert (=> b!470003 (= tp!129916 e!287614)))

(declare-fun b!470171 () Bool)

(declare-fun tp!129939 () Bool)

(declare-fun tp!129942 () Bool)

(assert (=> b!470171 (= e!287614 (and tp!129939 tp!129942))))

(declare-fun b!470169 () Bool)

(declare-fun tp!129940 () Bool)

(declare-fun tp!129938 () Bool)

(assert (=> b!470169 (= e!287614 (and tp!129940 tp!129938))))

(assert (= (and b!470003 ((_ is ElementMatch!1113) (regOne!2738 r!23305))) b!470168))

(assert (= (and b!470003 ((_ is Concat!2013) (regOne!2738 r!23305))) b!470169))

(assert (= (and b!470003 ((_ is Star!1113) (regOne!2738 r!23305))) b!470170))

(assert (= (and b!470003 ((_ is Union!1113) (regOne!2738 r!23305))) b!470171))

(declare-fun b!470174 () Bool)

(declare-fun e!287615 () Bool)

(declare-fun tp!129946 () Bool)

(assert (=> b!470174 (= e!287615 tp!129946)))

(declare-fun b!470172 () Bool)

(assert (=> b!470172 (= e!287615 tp_is_empty!2023)))

(assert (=> b!470003 (= tp!129915 e!287615)))

(declare-fun b!470175 () Bool)

(declare-fun tp!129944 () Bool)

(declare-fun tp!129947 () Bool)

(assert (=> b!470175 (= e!287615 (and tp!129944 tp!129947))))

(declare-fun b!470173 () Bool)

(declare-fun tp!129945 () Bool)

(declare-fun tp!129943 () Bool)

(assert (=> b!470173 (= e!287615 (and tp!129945 tp!129943))))

(assert (= (and b!470003 ((_ is ElementMatch!1113) (regTwo!2738 r!23305))) b!470172))

(assert (= (and b!470003 ((_ is Concat!2013) (regTwo!2738 r!23305))) b!470173))

(assert (= (and b!470003 ((_ is Star!1113) (regTwo!2738 r!23305))) b!470174))

(assert (= (and b!470003 ((_ is Union!1113) (regTwo!2738 r!23305))) b!470175))

(declare-fun b!470178 () Bool)

(declare-fun e!287616 () Bool)

(declare-fun tp!129951 () Bool)

(assert (=> b!470178 (= e!287616 tp!129951)))

(declare-fun b!470176 () Bool)

(assert (=> b!470176 (= e!287616 tp_is_empty!2023)))

(assert (=> b!470004 (= tp!129914 e!287616)))

(declare-fun b!470179 () Bool)

(declare-fun tp!129949 () Bool)

(declare-fun tp!129952 () Bool)

(assert (=> b!470179 (= e!287616 (and tp!129949 tp!129952))))

(declare-fun b!470177 () Bool)

(declare-fun tp!129950 () Bool)

(declare-fun tp!129948 () Bool)

(assert (=> b!470177 (= e!287616 (and tp!129950 tp!129948))))

(assert (= (and b!470004 ((_ is ElementMatch!1113) (reg!1442 r!23305))) b!470176))

(assert (= (and b!470004 ((_ is Concat!2013) (reg!1442 r!23305))) b!470177))

(assert (= (and b!470004 ((_ is Star!1113) (reg!1442 r!23305))) b!470178))

(assert (= (and b!470004 ((_ is Union!1113) (reg!1442 r!23305))) b!470179))

(check-sat (not b!470143) (not b!470167) (not d!179140) (not b!470174) (not b!470169) (not b!470179) (not d!179134) (not b!470161) (not b!470173) (not b!470171) (not b!470162) (not bm!32720) (not b!470177) tp_is_empty!2023 (not bm!32721) (not b!470175) (not bm!32704) (not bm!32705) (not b!470163) (not b!470165) (not b!470178) (not b!470082) (not b!470170) (not b!470166))
(check-sat)
(get-model)

(declare-fun d!179148 () Bool)

(declare-fun nullableFct!90 (Regex!1113) Bool)

(assert (=> d!179148 (= (nullable!257 (reg!1442 r!23305)) (nullableFct!90 (reg!1442 r!23305)))))

(declare-fun bs!58369 () Bool)

(assert (= bs!58369 d!179148))

(declare-fun m!744351 () Bool)

(assert (=> bs!58369 m!744351))

(assert (=> b!470143 d!179148))

(declare-fun d!179150 () Bool)

(assert (=> d!179150 (= (isEmpty!3520 (getLanguageWitness!38 r!23305)) (not ((_ is Some!1202) (getLanguageWitness!38 r!23305))))))

(assert (=> d!179134 d!179150))

(declare-fun bm!32726 () Bool)

(declare-fun c!94663 () Bool)

(declare-fun call!32733 () Bool)

(assert (=> bm!32726 (= call!32733 (validRegex!341 (ite c!94663 (regOne!2739 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))) (regOne!2738 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))))

(declare-fun b!470219 () Bool)

(declare-fun e!287636 () Bool)

(declare-fun call!32731 () Bool)

(assert (=> b!470219 (= e!287636 call!32731)))

(declare-fun b!470220 () Bool)

(declare-fun e!287635 () Bool)

(assert (=> b!470220 (= e!287635 call!32731)))

(declare-fun b!470221 () Bool)

(declare-fun e!287631 () Bool)

(declare-fun e!287637 () Bool)

(assert (=> b!470221 (= e!287631 e!287637)))

(declare-fun res!208546 () Bool)

(assert (=> b!470221 (= res!208546 (not (nullable!257 (reg!1442 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))))

(assert (=> b!470221 (=> (not res!208546) (not e!287637))))

(declare-fun b!470222 () Bool)

(declare-fun e!287633 () Bool)

(assert (=> b!470222 (= e!287633 e!287636)))

(declare-fun res!208550 () Bool)

(assert (=> b!470222 (=> (not res!208550) (not e!287636))))

(assert (=> b!470222 (= res!208550 call!32733)))

(declare-fun bm!32727 () Bool)

(declare-fun c!94664 () Bool)

(declare-fun call!32732 () Bool)

(assert (=> bm!32727 (= call!32732 (validRegex!341 (ite c!94664 (reg!1442 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))) (ite c!94663 (regTwo!2739 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))) (regTwo!2738 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))))))

(declare-fun d!179152 () Bool)

(declare-fun res!208547 () Bool)

(declare-fun e!287632 () Bool)

(assert (=> d!179152 (=> res!208547 e!287632)))

(assert (=> d!179152 (= res!208547 ((_ is ElementMatch!1113) (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))

(assert (=> d!179152 (= (validRegex!341 (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))) e!287632)))

(declare-fun b!470223 () Bool)

(declare-fun e!287634 () Bool)

(assert (=> b!470223 (= e!287631 e!287634)))

(assert (=> b!470223 (= c!94663 ((_ is Union!1113) (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))

(declare-fun bm!32728 () Bool)

(assert (=> bm!32728 (= call!32731 call!32732)))

(declare-fun b!470224 () Bool)

(assert (=> b!470224 (= e!287632 e!287631)))

(assert (=> b!470224 (= c!94664 ((_ is Star!1113) (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305)))))))

(declare-fun b!470225 () Bool)

(declare-fun res!208549 () Bool)

(assert (=> b!470225 (=> (not res!208549) (not e!287635))))

(assert (=> b!470225 (= res!208549 call!32733)))

(assert (=> b!470225 (= e!287634 e!287635)))

(declare-fun b!470226 () Bool)

(declare-fun res!208548 () Bool)

(assert (=> b!470226 (=> res!208548 e!287633)))

(assert (=> b!470226 (= res!208548 (not ((_ is Concat!2013) (ite c!94660 (reg!1442 r!23305) (ite c!94659 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))))

(assert (=> b!470226 (= e!287634 e!287633)))

(declare-fun b!470227 () Bool)

(assert (=> b!470227 (= e!287637 call!32732)))

(assert (= (and d!179152 (not res!208547)) b!470224))

(assert (= (and b!470224 c!94664) b!470221))

(assert (= (and b!470224 (not c!94664)) b!470223))

(assert (= (and b!470221 res!208546) b!470227))

(assert (= (and b!470223 c!94663) b!470225))

(assert (= (and b!470223 (not c!94663)) b!470226))

(assert (= (and b!470225 res!208549) b!470220))

(assert (= (and b!470226 (not res!208548)) b!470222))

(assert (= (and b!470222 res!208550) b!470219))

(assert (= (or b!470225 b!470222) bm!32726))

(assert (= (or b!470220 b!470219) bm!32728))

(assert (= (or b!470227 bm!32728) bm!32727))

(declare-fun m!744353 () Bool)

(assert (=> bm!32726 m!744353))

(declare-fun m!744355 () Bool)

(assert (=> b!470221 m!744355))

(declare-fun m!744357 () Bool)

(assert (=> bm!32727 m!744357))

(assert (=> bm!32721 d!179152))

(declare-fun bm!32733 () Bool)

(declare-fun call!32738 () Bool)

(declare-fun c!94667 () Bool)

(assert (=> bm!32733 (= call!32738 (lostCause!107 (ite c!94667 (regTwo!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470242 () Bool)

(declare-fun e!287653 () Bool)

(declare-fun e!287655 () Bool)

(assert (=> b!470242 (= e!287653 e!287655)))

(assert (=> b!470242 (= c!94667 ((_ is Union!1113) r!23305))))

(declare-fun b!470243 () Bool)

(declare-fun e!287650 () Bool)

(assert (=> b!470243 (= e!287655 e!287650)))

(declare-fun res!208565 () Bool)

(declare-fun call!32739 () Bool)

(assert (=> b!470243 (= res!208565 call!32739)))

(assert (=> b!470243 (=> (not res!208565) (not e!287650))))

(declare-fun b!470244 () Bool)

(declare-fun e!287654 () Bool)

(declare-fun e!287651 () Bool)

(assert (=> b!470244 (= e!287654 e!287651)))

(declare-fun res!208563 () Bool)

(assert (=> b!470244 (=> res!208563 e!287651)))

(assert (=> b!470244 (= res!208563 ((_ is EmptyLang!1113) r!23305))))

(declare-fun d!179154 () Bool)

(declare-fun lt!209745 () Bool)

(assert (=> d!179154 (= lt!209745 (isEmpty!3520 (getLanguageWitness!38 r!23305)))))

(assert (=> d!179154 (= lt!209745 e!287654)))

(declare-fun res!208564 () Bool)

(assert (=> d!179154 (=> (not res!208564) (not e!287654))))

(assert (=> d!179154 (= res!208564 (not ((_ is EmptyExpr!1113) r!23305)))))

(assert (=> d!179154 (= (lostCauseFct!38 r!23305) lt!209745)))

(declare-fun b!470245 () Bool)

(declare-fun e!287652 () Bool)

(assert (=> b!470245 (= e!287652 call!32739)))

(declare-fun bm!32734 () Bool)

(assert (=> bm!32734 (= call!32739 (lostCause!107 (ite c!94667 (regOne!2739 r!23305) (regTwo!2738 r!23305))))))

(declare-fun b!470246 () Bool)

(assert (=> b!470246 (= e!287650 call!32738)))

(declare-fun b!470247 () Bool)

(assert (=> b!470247 (= e!287655 e!287652)))

(declare-fun res!208562 () Bool)

(assert (=> b!470247 (= res!208562 call!32738)))

(assert (=> b!470247 (=> res!208562 e!287652)))

(declare-fun b!470248 () Bool)

(assert (=> b!470248 (= e!287651 e!287653)))

(declare-fun res!208561 () Bool)

(assert (=> b!470248 (=> (not res!208561) (not e!287653))))

(assert (=> b!470248 (= res!208561 (and (not ((_ is ElementMatch!1113) r!23305)) (not ((_ is Star!1113) r!23305))))))

(assert (= (and d!179154 res!208564) b!470244))

(assert (= (and b!470244 (not res!208563)) b!470248))

(assert (= (and b!470248 res!208561) b!470242))

(assert (= (and b!470242 c!94667) b!470243))

(assert (= (and b!470242 (not c!94667)) b!470247))

(assert (= (and b!470243 res!208565) b!470246))

(assert (= (and b!470247 (not res!208562)) b!470245))

(assert (= (or b!470243 b!470245) bm!32734))

(assert (= (or b!470246 b!470247) bm!32733))

(declare-fun m!744359 () Bool)

(assert (=> bm!32733 m!744359))

(assert (=> d!179154 m!744311))

(assert (=> d!179154 m!744311))

(assert (=> d!179154 m!744321))

(declare-fun m!744361 () Bool)

(assert (=> bm!32734 m!744361))

(assert (=> d!179140 d!179154))

(declare-fun bm!32735 () Bool)

(declare-fun c!94668 () Bool)

(declare-fun call!32742 () Bool)

(assert (=> bm!32735 (= call!32742 (validRegex!341 (ite c!94668 (regOne!2739 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))) (regOne!2738 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))))

(declare-fun b!470249 () Bool)

(declare-fun e!287661 () Bool)

(declare-fun call!32740 () Bool)

(assert (=> b!470249 (= e!287661 call!32740)))

(declare-fun b!470250 () Bool)

(declare-fun e!287660 () Bool)

(assert (=> b!470250 (= e!287660 call!32740)))

(declare-fun b!470251 () Bool)

(declare-fun e!287656 () Bool)

(declare-fun e!287662 () Bool)

(assert (=> b!470251 (= e!287656 e!287662)))

(declare-fun res!208566 () Bool)

(assert (=> b!470251 (= res!208566 (not (nullable!257 (reg!1442 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))))

(assert (=> b!470251 (=> (not res!208566) (not e!287662))))

(declare-fun b!470252 () Bool)

(declare-fun e!287658 () Bool)

(assert (=> b!470252 (= e!287658 e!287661)))

(declare-fun res!208570 () Bool)

(assert (=> b!470252 (=> (not res!208570) (not e!287661))))

(assert (=> b!470252 (= res!208570 call!32742)))

(declare-fun call!32741 () Bool)

(declare-fun bm!32736 () Bool)

(declare-fun c!94669 () Bool)

(assert (=> bm!32736 (= call!32741 (validRegex!341 (ite c!94669 (reg!1442 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))) (ite c!94668 (regTwo!2739 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))) (regTwo!2738 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305)))))))))

(declare-fun d!179156 () Bool)

(declare-fun res!208567 () Bool)

(declare-fun e!287657 () Bool)

(assert (=> d!179156 (=> res!208567 e!287657)))

(assert (=> d!179156 (= res!208567 ((_ is ElementMatch!1113) (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(assert (=> d!179156 (= (validRegex!341 (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))) e!287657)))

(declare-fun b!470253 () Bool)

(declare-fun e!287659 () Bool)

(assert (=> b!470253 (= e!287656 e!287659)))

(assert (=> b!470253 (= c!94668 ((_ is Union!1113) (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun bm!32737 () Bool)

(assert (=> bm!32737 (= call!32740 call!32741)))

(declare-fun b!470254 () Bool)

(assert (=> b!470254 (= e!287657 e!287656)))

(assert (=> b!470254 (= c!94669 ((_ is Star!1113) (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470255 () Bool)

(declare-fun res!208569 () Bool)

(assert (=> b!470255 (=> (not res!208569) (not e!287660))))

(assert (=> b!470255 (= res!208569 call!32742)))

(assert (=> b!470255 (= e!287659 e!287660)))

(declare-fun b!470256 () Bool)

(declare-fun res!208568 () Bool)

(assert (=> b!470256 (=> res!208568 e!287658)))

(assert (=> b!470256 (= res!208568 (not ((_ is Concat!2013) (ite c!94659 (regOne!2739 r!23305) (regOne!2738 r!23305)))))))

(assert (=> b!470256 (= e!287659 e!287658)))

(declare-fun b!470257 () Bool)

(assert (=> b!470257 (= e!287662 call!32741)))

(assert (= (and d!179156 (not res!208567)) b!470254))

(assert (= (and b!470254 c!94669) b!470251))

(assert (= (and b!470254 (not c!94669)) b!470253))

(assert (= (and b!470251 res!208566) b!470257))

(assert (= (and b!470253 c!94668) b!470255))

(assert (= (and b!470253 (not c!94668)) b!470256))

(assert (= (and b!470255 res!208569) b!470250))

(assert (= (and b!470256 (not res!208568)) b!470252))

(assert (= (and b!470252 res!208570) b!470249))

(assert (= (or b!470255 b!470252) bm!32735))

(assert (= (or b!470250 b!470249) bm!32737))

(assert (= (or b!470257 bm!32737) bm!32736))

(declare-fun m!744363 () Bool)

(assert (=> bm!32735 m!744363))

(declare-fun m!744365 () Bool)

(assert (=> b!470251 m!744365))

(declare-fun m!744367 () Bool)

(assert (=> bm!32736 m!744367))

(assert (=> bm!32720 d!179156))

(declare-fun bm!32738 () Bool)

(declare-fun c!94676 () Bool)

(declare-fun call!32743 () Option!1203)

(assert (=> bm!32738 (= call!32743 (getLanguageWitness!38 (ite c!94676 (regOne!2739 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))) (regOne!2738 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))))

(declare-fun b!470258 () Bool)

(declare-fun e!287670 () Option!1203)

(assert (=> b!470258 (= e!287670 None!1202)))

(declare-fun b!470259 () Bool)

(assert (=> b!470259 (= c!94676 ((_ is Union!1113) (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(declare-fun e!287668 () Option!1203)

(declare-fun e!287664 () Option!1203)

(assert (=> b!470259 (= e!287668 e!287664)))

(declare-fun b!470260 () Bool)

(declare-fun e!287665 () Option!1203)

(declare-fun call!32744 () Option!1203)

(assert (=> b!470260 (= e!287665 call!32744)))

(declare-fun b!470261 () Bool)

(declare-fun c!94673 () Bool)

(declare-fun lt!209748 () Option!1203)

(assert (=> b!470261 (= c!94673 ((_ is Some!1202) lt!209748))))

(assert (=> b!470261 (= lt!209748 call!32744)))

(declare-fun e!287667 () Option!1203)

(declare-fun e!287669 () Option!1203)

(assert (=> b!470261 (= e!287667 e!287669)))

(declare-fun b!470262 () Bool)

(declare-fun lt!209747 () Option!1203)

(assert (=> b!470262 (= e!287665 lt!209747)))

(declare-fun b!470263 () Bool)

(declare-fun e!287666 () Option!1203)

(assert (=> b!470263 (= e!287666 (Some!1202 Nil!4517))))

(declare-fun b!470264 () Bool)

(assert (=> b!470264 (= e!287666 e!287670)))

(declare-fun c!94672 () Bool)

(assert (=> b!470264 (= c!94672 ((_ is EmptyLang!1113) (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(declare-fun b!470265 () Bool)

(declare-fun e!287663 () Option!1203)

(assert (=> b!470265 (= e!287663 e!287668)))

(declare-fun c!94670 () Bool)

(assert (=> b!470265 (= c!94670 ((_ is Star!1113) (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(declare-fun b!470266 () Bool)

(assert (=> b!470266 (= e!287668 (Some!1202 Nil!4517))))

(declare-fun d!179158 () Bool)

(declare-fun c!94671 () Bool)

(assert (=> d!179158 (= c!94671 ((_ is EmptyExpr!1113) (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(assert (=> d!179158 (= (getLanguageWitness!38 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))) e!287666)))

(declare-fun bm!32739 () Bool)

(assert (=> bm!32739 (= call!32744 (getLanguageWitness!38 (ite c!94676 (regTwo!2739 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))) (regTwo!2738 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))))

(declare-fun b!470267 () Bool)

(declare-fun lt!209746 () Option!1203)

(assert (=> b!470267 (= e!287669 (Some!1202 (++!1329 (v!15603 lt!209746) (v!15603 lt!209748))))))

(declare-fun b!470268 () Bool)

(assert (=> b!470268 (= e!287667 None!1202)))

(declare-fun b!470269 () Bool)

(assert (=> b!470269 (= e!287664 e!287667)))

(assert (=> b!470269 (= lt!209746 call!32743)))

(declare-fun c!94674 () Bool)

(assert (=> b!470269 (= c!94674 ((_ is Some!1202) lt!209746))))

(declare-fun b!470270 () Bool)

(declare-fun c!94675 () Bool)

(assert (=> b!470270 (= c!94675 ((_ is ElementMatch!1113) (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))))))

(assert (=> b!470270 (= e!287670 e!287663)))

(declare-fun b!470271 () Bool)

(assert (=> b!470271 (= e!287663 (Some!1202 (Cons!4517 (c!94602 (ite c!94641 (regTwo!2739 r!23305) (regTwo!2738 r!23305))) Nil!4517)))))

(declare-fun b!470272 () Bool)

(assert (=> b!470272 (= e!287669 None!1202)))

(declare-fun b!470273 () Bool)

(assert (=> b!470273 (= e!287664 e!287665)))

(assert (=> b!470273 (= lt!209747 call!32743)))

(declare-fun c!94677 () Bool)

(assert (=> b!470273 (= c!94677 ((_ is Some!1202) lt!209747))))

(assert (= (and d!179158 c!94671) b!470263))

(assert (= (and d!179158 (not c!94671)) b!470264))

(assert (= (and b!470264 c!94672) b!470258))

(assert (= (and b!470264 (not c!94672)) b!470270))

(assert (= (and b!470270 c!94675) b!470271))

(assert (= (and b!470270 (not c!94675)) b!470265))

(assert (= (and b!470265 c!94670) b!470266))

(assert (= (and b!470265 (not c!94670)) b!470259))

(assert (= (and b!470259 c!94676) b!470273))

(assert (= (and b!470259 (not c!94676)) b!470269))

(assert (= (and b!470273 c!94677) b!470262))

(assert (= (and b!470273 (not c!94677)) b!470260))

(assert (= (and b!470269 c!94674) b!470261))

(assert (= (and b!470269 (not c!94674)) b!470268))

(assert (= (and b!470261 c!94673) b!470267))

(assert (= (and b!470261 (not c!94673)) b!470272))

(assert (= (or b!470260 b!470261) bm!32739))

(assert (= (or b!470273 b!470269) bm!32738))

(declare-fun m!744369 () Bool)

(assert (=> bm!32738 m!744369))

(declare-fun m!744371 () Bool)

(assert (=> bm!32739 m!744371))

(declare-fun m!744373 () Bool)

(assert (=> b!470267 m!744373))

(assert (=> bm!32705 d!179158))

(declare-fun call!32745 () Option!1203)

(declare-fun bm!32740 () Bool)

(declare-fun c!94684 () Bool)

(assert (=> bm!32740 (= call!32745 (getLanguageWitness!38 (ite c!94684 (regOne!2739 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))) (regOne!2738 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))))

(declare-fun b!470274 () Bool)

(declare-fun e!287678 () Option!1203)

(assert (=> b!470274 (= e!287678 None!1202)))

(declare-fun b!470275 () Bool)

(assert (=> b!470275 (= c!94684 ((_ is Union!1113) (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun e!287676 () Option!1203)

(declare-fun e!287672 () Option!1203)

(assert (=> b!470275 (= e!287676 e!287672)))

(declare-fun b!470276 () Bool)

(declare-fun e!287673 () Option!1203)

(declare-fun call!32746 () Option!1203)

(assert (=> b!470276 (= e!287673 call!32746)))

(declare-fun b!470277 () Bool)

(declare-fun c!94681 () Bool)

(declare-fun lt!209751 () Option!1203)

(assert (=> b!470277 (= c!94681 ((_ is Some!1202) lt!209751))))

(assert (=> b!470277 (= lt!209751 call!32746)))

(declare-fun e!287675 () Option!1203)

(declare-fun e!287677 () Option!1203)

(assert (=> b!470277 (= e!287675 e!287677)))

(declare-fun b!470278 () Bool)

(declare-fun lt!209750 () Option!1203)

(assert (=> b!470278 (= e!287673 lt!209750)))

(declare-fun b!470279 () Bool)

(declare-fun e!287674 () Option!1203)

(assert (=> b!470279 (= e!287674 (Some!1202 Nil!4517))))

(declare-fun b!470280 () Bool)

(assert (=> b!470280 (= e!287674 e!287678)))

(declare-fun c!94680 () Bool)

(assert (=> b!470280 (= c!94680 ((_ is EmptyLang!1113) (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470281 () Bool)

(declare-fun e!287671 () Option!1203)

(assert (=> b!470281 (= e!287671 e!287676)))

(declare-fun c!94678 () Bool)

(assert (=> b!470281 (= c!94678 ((_ is Star!1113) (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(declare-fun b!470282 () Bool)

(assert (=> b!470282 (= e!287676 (Some!1202 Nil!4517))))

(declare-fun d!179160 () Bool)

(declare-fun c!94679 () Bool)

(assert (=> d!179160 (= c!94679 ((_ is EmptyExpr!1113) (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(assert (=> d!179160 (= (getLanguageWitness!38 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))) e!287674)))

(declare-fun bm!32741 () Bool)

(assert (=> bm!32741 (= call!32746 (getLanguageWitness!38 (ite c!94684 (regTwo!2739 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))) (regTwo!2738 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))))

(declare-fun b!470283 () Bool)

(declare-fun lt!209749 () Option!1203)

(assert (=> b!470283 (= e!287677 (Some!1202 (++!1329 (v!15603 lt!209749) (v!15603 lt!209751))))))

(declare-fun b!470284 () Bool)

(assert (=> b!470284 (= e!287675 None!1202)))

(declare-fun b!470285 () Bool)

(assert (=> b!470285 (= e!287672 e!287675)))

(assert (=> b!470285 (= lt!209749 call!32745)))

(declare-fun c!94682 () Bool)

(assert (=> b!470285 (= c!94682 ((_ is Some!1202) lt!209749))))

(declare-fun b!470286 () Bool)

(declare-fun c!94683 () Bool)

(assert (=> b!470286 (= c!94683 ((_ is ElementMatch!1113) (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))))))

(assert (=> b!470286 (= e!287678 e!287671)))

(declare-fun b!470287 () Bool)

(assert (=> b!470287 (= e!287671 (Some!1202 (Cons!4517 (c!94602 (ite c!94641 (regOne!2739 r!23305) (regOne!2738 r!23305))) Nil!4517)))))

(declare-fun b!470288 () Bool)

(assert (=> b!470288 (= e!287677 None!1202)))

(declare-fun b!470289 () Bool)

(assert (=> b!470289 (= e!287672 e!287673)))

(assert (=> b!470289 (= lt!209750 call!32745)))

(declare-fun c!94685 () Bool)

(assert (=> b!470289 (= c!94685 ((_ is Some!1202) lt!209750))))

(assert (= (and d!179160 c!94679) b!470279))

(assert (= (and d!179160 (not c!94679)) b!470280))

(assert (= (and b!470280 c!94680) b!470274))

(assert (= (and b!470280 (not c!94680)) b!470286))

(assert (= (and b!470286 c!94683) b!470287))

(assert (= (and b!470286 (not c!94683)) b!470281))

(assert (= (and b!470281 c!94678) b!470282))

(assert (= (and b!470281 (not c!94678)) b!470275))

(assert (= (and b!470275 c!94684) b!470289))

(assert (= (and b!470275 (not c!94684)) b!470285))

(assert (= (and b!470289 c!94685) b!470278))

(assert (= (and b!470289 (not c!94685)) b!470276))

(assert (= (and b!470285 c!94682) b!470277))

(assert (= (and b!470285 (not c!94682)) b!470284))

(assert (= (and b!470277 c!94681) b!470283))

(assert (= (and b!470277 (not c!94681)) b!470288))

(assert (= (or b!470276 b!470277) bm!32741))

(assert (= (or b!470289 b!470285) bm!32740))

(declare-fun m!744375 () Bool)

(assert (=> bm!32740 m!744375))

(declare-fun m!744377 () Bool)

(assert (=> bm!32741 m!744377))

(declare-fun m!744379 () Bool)

(assert (=> b!470283 m!744379))

(assert (=> bm!32704 d!179160))

(declare-fun d!179162 () Bool)

(declare-fun e!287683 () Bool)

(assert (=> d!179162 e!287683))

(declare-fun res!208575 () Bool)

(assert (=> d!179162 (=> (not res!208575) (not e!287683))))

(declare-fun lt!209754 () List!4527)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!764 (List!4527) (InoxSet C!3148))

(assert (=> d!179162 (= res!208575 (= (content!764 lt!209754) ((_ map or) (content!764 (v!15603 lt!209737)) (content!764 (v!15603 lt!209739)))))))

(declare-fun e!287684 () List!4527)

(assert (=> d!179162 (= lt!209754 e!287684)))

(declare-fun c!94688 () Bool)

(assert (=> d!179162 (= c!94688 ((_ is Nil!4517) (v!15603 lt!209737)))))

(assert (=> d!179162 (= (++!1329 (v!15603 lt!209737) (v!15603 lt!209739)) lt!209754)))

(declare-fun b!470299 () Bool)

(assert (=> b!470299 (= e!287684 (Cons!4517 (h!9914 (v!15603 lt!209737)) (++!1329 (t!72921 (v!15603 lt!209737)) (v!15603 lt!209739))))))

(declare-fun b!470300 () Bool)

(declare-fun res!208576 () Bool)

(assert (=> b!470300 (=> (not res!208576) (not e!287683))))

(declare-fun size!3696 (List!4527) Int)

(assert (=> b!470300 (= res!208576 (= (size!3696 lt!209754) (+ (size!3696 (v!15603 lt!209737)) (size!3696 (v!15603 lt!209739)))))))

(declare-fun b!470301 () Bool)

(assert (=> b!470301 (= e!287683 (or (not (= (v!15603 lt!209739) Nil!4517)) (= lt!209754 (v!15603 lt!209737))))))

(declare-fun b!470298 () Bool)

(assert (=> b!470298 (= e!287684 (v!15603 lt!209739))))

(assert (= (and d!179162 c!94688) b!470298))

(assert (= (and d!179162 (not c!94688)) b!470299))

(assert (= (and d!179162 res!208575) b!470300))

(assert (= (and b!470300 res!208576) b!470301))

(declare-fun m!744381 () Bool)

(assert (=> d!179162 m!744381))

(declare-fun m!744383 () Bool)

(assert (=> d!179162 m!744383))

(declare-fun m!744385 () Bool)

(assert (=> d!179162 m!744385))

(declare-fun m!744387 () Bool)

(assert (=> b!470299 m!744387))

(declare-fun m!744389 () Bool)

(assert (=> b!470300 m!744389))

(declare-fun m!744391 () Bool)

(assert (=> b!470300 m!744391))

(declare-fun m!744393 () Bool)

(assert (=> b!470300 m!744393))

(assert (=> b!470082 d!179162))

(declare-fun b!470304 () Bool)

(declare-fun e!287685 () Bool)

(declare-fun tp!129991 () Bool)

(assert (=> b!470304 (= e!287685 tp!129991)))

(declare-fun b!470302 () Bool)

(assert (=> b!470302 (= e!287685 tp_is_empty!2023)))

(assert (=> b!470163 (= tp!129929 e!287685)))

(declare-fun b!470305 () Bool)

(declare-fun tp!129989 () Bool)

(declare-fun tp!129992 () Bool)

(assert (=> b!470305 (= e!287685 (and tp!129989 tp!129992))))

(declare-fun b!470303 () Bool)

(declare-fun tp!129990 () Bool)

(declare-fun tp!129988 () Bool)

(assert (=> b!470303 (= e!287685 (and tp!129990 tp!129988))))

(assert (= (and b!470163 ((_ is ElementMatch!1113) (regOne!2739 (regOne!2739 r!23305)))) b!470302))

(assert (= (and b!470163 ((_ is Concat!2013) (regOne!2739 (regOne!2739 r!23305)))) b!470303))

(assert (= (and b!470163 ((_ is Star!1113) (regOne!2739 (regOne!2739 r!23305)))) b!470304))

(assert (= (and b!470163 ((_ is Union!1113) (regOne!2739 (regOne!2739 r!23305)))) b!470305))

(declare-fun b!470308 () Bool)

(declare-fun e!287686 () Bool)

(declare-fun tp!129996 () Bool)

(assert (=> b!470308 (= e!287686 tp!129996)))

(declare-fun b!470306 () Bool)

(assert (=> b!470306 (= e!287686 tp_is_empty!2023)))

(assert (=> b!470163 (= tp!129932 e!287686)))

(declare-fun b!470309 () Bool)

(declare-fun tp!129994 () Bool)

(declare-fun tp!129997 () Bool)

(assert (=> b!470309 (= e!287686 (and tp!129994 tp!129997))))

(declare-fun b!470307 () Bool)

(declare-fun tp!129995 () Bool)

(declare-fun tp!129993 () Bool)

(assert (=> b!470307 (= e!287686 (and tp!129995 tp!129993))))

(assert (= (and b!470163 ((_ is ElementMatch!1113) (regTwo!2739 (regOne!2739 r!23305)))) b!470306))

(assert (= (and b!470163 ((_ is Concat!2013) (regTwo!2739 (regOne!2739 r!23305)))) b!470307))

(assert (= (and b!470163 ((_ is Star!1113) (regTwo!2739 (regOne!2739 r!23305)))) b!470308))

(assert (= (and b!470163 ((_ is Union!1113) (regTwo!2739 (regOne!2739 r!23305)))) b!470309))

(declare-fun b!470312 () Bool)

(declare-fun e!287687 () Bool)

(declare-fun tp!130001 () Bool)

(assert (=> b!470312 (= e!287687 tp!130001)))

(declare-fun b!470310 () Bool)

(assert (=> b!470310 (= e!287687 tp_is_empty!2023)))

(assert (=> b!470174 (= tp!129946 e!287687)))

(declare-fun b!470313 () Bool)

(declare-fun tp!129999 () Bool)

(declare-fun tp!130002 () Bool)

(assert (=> b!470313 (= e!287687 (and tp!129999 tp!130002))))

(declare-fun b!470311 () Bool)

(declare-fun tp!130000 () Bool)

(declare-fun tp!129998 () Bool)

(assert (=> b!470311 (= e!287687 (and tp!130000 tp!129998))))

(assert (= (and b!470174 ((_ is ElementMatch!1113) (reg!1442 (regTwo!2738 r!23305)))) b!470310))

(assert (= (and b!470174 ((_ is Concat!2013) (reg!1442 (regTwo!2738 r!23305)))) b!470311))

(assert (= (and b!470174 ((_ is Star!1113) (reg!1442 (regTwo!2738 r!23305)))) b!470312))

(assert (= (and b!470174 ((_ is Union!1113) (reg!1442 (regTwo!2738 r!23305)))) b!470313))

(declare-fun b!470316 () Bool)

(declare-fun e!287688 () Bool)

(declare-fun tp!130006 () Bool)

(assert (=> b!470316 (= e!287688 tp!130006)))

(declare-fun b!470314 () Bool)

(assert (=> b!470314 (= e!287688 tp_is_empty!2023)))

(assert (=> b!470179 (= tp!129949 e!287688)))

(declare-fun b!470317 () Bool)

(declare-fun tp!130004 () Bool)

(declare-fun tp!130007 () Bool)

(assert (=> b!470317 (= e!287688 (and tp!130004 tp!130007))))

(declare-fun b!470315 () Bool)

(declare-fun tp!130005 () Bool)

(declare-fun tp!130003 () Bool)

(assert (=> b!470315 (= e!287688 (and tp!130005 tp!130003))))

(assert (= (and b!470179 ((_ is ElementMatch!1113) (regOne!2739 (reg!1442 r!23305)))) b!470314))

(assert (= (and b!470179 ((_ is Concat!2013) (regOne!2739 (reg!1442 r!23305)))) b!470315))

(assert (= (and b!470179 ((_ is Star!1113) (regOne!2739 (reg!1442 r!23305)))) b!470316))

(assert (= (and b!470179 ((_ is Union!1113) (regOne!2739 (reg!1442 r!23305)))) b!470317))

(declare-fun b!470320 () Bool)

(declare-fun e!287689 () Bool)

(declare-fun tp!130011 () Bool)

(assert (=> b!470320 (= e!287689 tp!130011)))

(declare-fun b!470318 () Bool)

(assert (=> b!470318 (= e!287689 tp_is_empty!2023)))

(assert (=> b!470179 (= tp!129952 e!287689)))

(declare-fun b!470321 () Bool)

(declare-fun tp!130009 () Bool)

(declare-fun tp!130012 () Bool)

(assert (=> b!470321 (= e!287689 (and tp!130009 tp!130012))))

(declare-fun b!470319 () Bool)

(declare-fun tp!130010 () Bool)

(declare-fun tp!130008 () Bool)

(assert (=> b!470319 (= e!287689 (and tp!130010 tp!130008))))

(assert (= (and b!470179 ((_ is ElementMatch!1113) (regTwo!2739 (reg!1442 r!23305)))) b!470318))

(assert (= (and b!470179 ((_ is Concat!2013) (regTwo!2739 (reg!1442 r!23305)))) b!470319))

(assert (= (and b!470179 ((_ is Star!1113) (regTwo!2739 (reg!1442 r!23305)))) b!470320))

(assert (= (and b!470179 ((_ is Union!1113) (regTwo!2739 (reg!1442 r!23305)))) b!470321))

(declare-fun b!470324 () Bool)

(declare-fun e!287690 () Bool)

(declare-fun tp!130016 () Bool)

(assert (=> b!470324 (= e!287690 tp!130016)))

(declare-fun b!470322 () Bool)

(assert (=> b!470322 (= e!287690 tp_is_empty!2023)))

(assert (=> b!470165 (= tp!129935 e!287690)))

(declare-fun b!470325 () Bool)

(declare-fun tp!130014 () Bool)

(declare-fun tp!130017 () Bool)

(assert (=> b!470325 (= e!287690 (and tp!130014 tp!130017))))

(declare-fun b!470323 () Bool)

(declare-fun tp!130015 () Bool)

(declare-fun tp!130013 () Bool)

(assert (=> b!470323 (= e!287690 (and tp!130015 tp!130013))))

(assert (= (and b!470165 ((_ is ElementMatch!1113) (regOne!2738 (regTwo!2739 r!23305)))) b!470322))

(assert (= (and b!470165 ((_ is Concat!2013) (regOne!2738 (regTwo!2739 r!23305)))) b!470323))

(assert (= (and b!470165 ((_ is Star!1113) (regOne!2738 (regTwo!2739 r!23305)))) b!470324))

(assert (= (and b!470165 ((_ is Union!1113) (regOne!2738 (regTwo!2739 r!23305)))) b!470325))

(declare-fun b!470328 () Bool)

(declare-fun e!287691 () Bool)

(declare-fun tp!130021 () Bool)

(assert (=> b!470328 (= e!287691 tp!130021)))

(declare-fun b!470326 () Bool)

(assert (=> b!470326 (= e!287691 tp_is_empty!2023)))

(assert (=> b!470165 (= tp!129933 e!287691)))

(declare-fun b!470329 () Bool)

(declare-fun tp!130019 () Bool)

(declare-fun tp!130022 () Bool)

(assert (=> b!470329 (= e!287691 (and tp!130019 tp!130022))))

(declare-fun b!470327 () Bool)

(declare-fun tp!130020 () Bool)

(declare-fun tp!130018 () Bool)

(assert (=> b!470327 (= e!287691 (and tp!130020 tp!130018))))

(assert (= (and b!470165 ((_ is ElementMatch!1113) (regTwo!2738 (regTwo!2739 r!23305)))) b!470326))

(assert (= (and b!470165 ((_ is Concat!2013) (regTwo!2738 (regTwo!2739 r!23305)))) b!470327))

(assert (= (and b!470165 ((_ is Star!1113) (regTwo!2738 (regTwo!2739 r!23305)))) b!470328))

(assert (= (and b!470165 ((_ is Union!1113) (regTwo!2738 (regTwo!2739 r!23305)))) b!470329))

(declare-fun b!470332 () Bool)

(declare-fun e!287692 () Bool)

(declare-fun tp!130026 () Bool)

(assert (=> b!470332 (= e!287692 tp!130026)))

(declare-fun b!470330 () Bool)

(assert (=> b!470330 (= e!287692 tp_is_empty!2023)))

(assert (=> b!470170 (= tp!129941 e!287692)))

(declare-fun b!470333 () Bool)

(declare-fun tp!130024 () Bool)

(declare-fun tp!130027 () Bool)

(assert (=> b!470333 (= e!287692 (and tp!130024 tp!130027))))

(declare-fun b!470331 () Bool)

(declare-fun tp!130025 () Bool)

(declare-fun tp!130023 () Bool)

(assert (=> b!470331 (= e!287692 (and tp!130025 tp!130023))))

(assert (= (and b!470170 ((_ is ElementMatch!1113) (reg!1442 (regOne!2738 r!23305)))) b!470330))

(assert (= (and b!470170 ((_ is Concat!2013) (reg!1442 (regOne!2738 r!23305)))) b!470331))

(assert (= (and b!470170 ((_ is Star!1113) (reg!1442 (regOne!2738 r!23305)))) b!470332))

(assert (= (and b!470170 ((_ is Union!1113) (reg!1442 (regOne!2738 r!23305)))) b!470333))

(declare-fun b!470336 () Bool)

(declare-fun e!287693 () Bool)

(declare-fun tp!130031 () Bool)

(assert (=> b!470336 (= e!287693 tp!130031)))

(declare-fun b!470334 () Bool)

(assert (=> b!470334 (= e!287693 tp_is_empty!2023)))

(assert (=> b!470175 (= tp!129944 e!287693)))

(declare-fun b!470337 () Bool)

(declare-fun tp!130029 () Bool)

(declare-fun tp!130032 () Bool)

(assert (=> b!470337 (= e!287693 (and tp!130029 tp!130032))))

(declare-fun b!470335 () Bool)

(declare-fun tp!130030 () Bool)

(declare-fun tp!130028 () Bool)

(assert (=> b!470335 (= e!287693 (and tp!130030 tp!130028))))

(assert (= (and b!470175 ((_ is ElementMatch!1113) (regOne!2739 (regTwo!2738 r!23305)))) b!470334))

(assert (= (and b!470175 ((_ is Concat!2013) (regOne!2739 (regTwo!2738 r!23305)))) b!470335))

(assert (= (and b!470175 ((_ is Star!1113) (regOne!2739 (regTwo!2738 r!23305)))) b!470336))

(assert (= (and b!470175 ((_ is Union!1113) (regOne!2739 (regTwo!2738 r!23305)))) b!470337))

(declare-fun b!470340 () Bool)

(declare-fun e!287694 () Bool)

(declare-fun tp!130036 () Bool)

(assert (=> b!470340 (= e!287694 tp!130036)))

(declare-fun b!470338 () Bool)

(assert (=> b!470338 (= e!287694 tp_is_empty!2023)))

(assert (=> b!470175 (= tp!129947 e!287694)))

(declare-fun b!470341 () Bool)

(declare-fun tp!130034 () Bool)

(declare-fun tp!130037 () Bool)

(assert (=> b!470341 (= e!287694 (and tp!130034 tp!130037))))

(declare-fun b!470339 () Bool)

(declare-fun tp!130035 () Bool)

(declare-fun tp!130033 () Bool)

(assert (=> b!470339 (= e!287694 (and tp!130035 tp!130033))))

(assert (= (and b!470175 ((_ is ElementMatch!1113) (regTwo!2739 (regTwo!2738 r!23305)))) b!470338))

(assert (= (and b!470175 ((_ is Concat!2013) (regTwo!2739 (regTwo!2738 r!23305)))) b!470339))

(assert (= (and b!470175 ((_ is Star!1113) (regTwo!2739 (regTwo!2738 r!23305)))) b!470340))

(assert (= (and b!470175 ((_ is Union!1113) (regTwo!2739 (regTwo!2738 r!23305)))) b!470341))

(declare-fun b!470344 () Bool)

(declare-fun e!287695 () Bool)

(declare-fun tp!130041 () Bool)

(assert (=> b!470344 (= e!287695 tp!130041)))

(declare-fun b!470342 () Bool)

(assert (=> b!470342 (= e!287695 tp_is_empty!2023)))

(assert (=> b!470161 (= tp!129930 e!287695)))

(declare-fun b!470345 () Bool)

(declare-fun tp!130039 () Bool)

(declare-fun tp!130042 () Bool)

(assert (=> b!470345 (= e!287695 (and tp!130039 tp!130042))))

(declare-fun b!470343 () Bool)

(declare-fun tp!130040 () Bool)

(declare-fun tp!130038 () Bool)

(assert (=> b!470343 (= e!287695 (and tp!130040 tp!130038))))

(assert (= (and b!470161 ((_ is ElementMatch!1113) (regOne!2738 (regOne!2739 r!23305)))) b!470342))

(assert (= (and b!470161 ((_ is Concat!2013) (regOne!2738 (regOne!2739 r!23305)))) b!470343))

(assert (= (and b!470161 ((_ is Star!1113) (regOne!2738 (regOne!2739 r!23305)))) b!470344))

(assert (= (and b!470161 ((_ is Union!1113) (regOne!2738 (regOne!2739 r!23305)))) b!470345))

(declare-fun b!470348 () Bool)

(declare-fun e!287696 () Bool)

(declare-fun tp!130046 () Bool)

(assert (=> b!470348 (= e!287696 tp!130046)))

(declare-fun b!470346 () Bool)

(assert (=> b!470346 (= e!287696 tp_is_empty!2023)))

(assert (=> b!470161 (= tp!129928 e!287696)))

(declare-fun b!470349 () Bool)

(declare-fun tp!130044 () Bool)

(declare-fun tp!130047 () Bool)

(assert (=> b!470349 (= e!287696 (and tp!130044 tp!130047))))

(declare-fun b!470347 () Bool)

(declare-fun tp!130045 () Bool)

(declare-fun tp!130043 () Bool)

(assert (=> b!470347 (= e!287696 (and tp!130045 tp!130043))))

(assert (= (and b!470161 ((_ is ElementMatch!1113) (regTwo!2738 (regOne!2739 r!23305)))) b!470346))

(assert (= (and b!470161 ((_ is Concat!2013) (regTwo!2738 (regOne!2739 r!23305)))) b!470347))

(assert (= (and b!470161 ((_ is Star!1113) (regTwo!2738 (regOne!2739 r!23305)))) b!470348))

(assert (= (and b!470161 ((_ is Union!1113) (regTwo!2738 (regOne!2739 r!23305)))) b!470349))

(declare-fun b!470352 () Bool)

(declare-fun e!287697 () Bool)

(declare-fun tp!130051 () Bool)

(assert (=> b!470352 (= e!287697 tp!130051)))

(declare-fun b!470350 () Bool)

(assert (=> b!470350 (= e!287697 tp_is_empty!2023)))

(assert (=> b!470166 (= tp!129936 e!287697)))

(declare-fun b!470353 () Bool)

(declare-fun tp!130049 () Bool)

(declare-fun tp!130052 () Bool)

(assert (=> b!470353 (= e!287697 (and tp!130049 tp!130052))))

(declare-fun b!470351 () Bool)

(declare-fun tp!130050 () Bool)

(declare-fun tp!130048 () Bool)

(assert (=> b!470351 (= e!287697 (and tp!130050 tp!130048))))

(assert (= (and b!470166 ((_ is ElementMatch!1113) (reg!1442 (regTwo!2739 r!23305)))) b!470350))

(assert (= (and b!470166 ((_ is Concat!2013) (reg!1442 (regTwo!2739 r!23305)))) b!470351))

(assert (= (and b!470166 ((_ is Star!1113) (reg!1442 (regTwo!2739 r!23305)))) b!470352))

(assert (= (and b!470166 ((_ is Union!1113) (reg!1442 (regTwo!2739 r!23305)))) b!470353))

(declare-fun b!470356 () Bool)

(declare-fun e!287698 () Bool)

(declare-fun tp!130056 () Bool)

(assert (=> b!470356 (= e!287698 tp!130056)))

(declare-fun b!470354 () Bool)

(assert (=> b!470354 (= e!287698 tp_is_empty!2023)))

(assert (=> b!470171 (= tp!129939 e!287698)))

(declare-fun b!470357 () Bool)

(declare-fun tp!130054 () Bool)

(declare-fun tp!130057 () Bool)

(assert (=> b!470357 (= e!287698 (and tp!130054 tp!130057))))

(declare-fun b!470355 () Bool)

(declare-fun tp!130055 () Bool)

(declare-fun tp!130053 () Bool)

(assert (=> b!470355 (= e!287698 (and tp!130055 tp!130053))))

(assert (= (and b!470171 ((_ is ElementMatch!1113) (regOne!2739 (regOne!2738 r!23305)))) b!470354))

(assert (= (and b!470171 ((_ is Concat!2013) (regOne!2739 (regOne!2738 r!23305)))) b!470355))

(assert (= (and b!470171 ((_ is Star!1113) (regOne!2739 (regOne!2738 r!23305)))) b!470356))

(assert (= (and b!470171 ((_ is Union!1113) (regOne!2739 (regOne!2738 r!23305)))) b!470357))

(declare-fun b!470360 () Bool)

(declare-fun e!287699 () Bool)

(declare-fun tp!130061 () Bool)

(assert (=> b!470360 (= e!287699 tp!130061)))

(declare-fun b!470358 () Bool)

(assert (=> b!470358 (= e!287699 tp_is_empty!2023)))

(assert (=> b!470171 (= tp!129942 e!287699)))

(declare-fun b!470361 () Bool)

(declare-fun tp!130059 () Bool)

(declare-fun tp!130062 () Bool)

(assert (=> b!470361 (= e!287699 (and tp!130059 tp!130062))))

(declare-fun b!470359 () Bool)

(declare-fun tp!130060 () Bool)

(declare-fun tp!130058 () Bool)

(assert (=> b!470359 (= e!287699 (and tp!130060 tp!130058))))

(assert (= (and b!470171 ((_ is ElementMatch!1113) (regTwo!2739 (regOne!2738 r!23305)))) b!470358))

(assert (= (and b!470171 ((_ is Concat!2013) (regTwo!2739 (regOne!2738 r!23305)))) b!470359))

(assert (= (and b!470171 ((_ is Star!1113) (regTwo!2739 (regOne!2738 r!23305)))) b!470360))

(assert (= (and b!470171 ((_ is Union!1113) (regTwo!2739 (regOne!2738 r!23305)))) b!470361))

(declare-fun b!470364 () Bool)

(declare-fun e!287700 () Bool)

(declare-fun tp!130066 () Bool)

(assert (=> b!470364 (= e!287700 tp!130066)))

(declare-fun b!470362 () Bool)

(assert (=> b!470362 (= e!287700 tp_is_empty!2023)))

(assert (=> b!470162 (= tp!129931 e!287700)))

(declare-fun b!470365 () Bool)

(declare-fun tp!130064 () Bool)

(declare-fun tp!130067 () Bool)

(assert (=> b!470365 (= e!287700 (and tp!130064 tp!130067))))

(declare-fun b!470363 () Bool)

(declare-fun tp!130065 () Bool)

(declare-fun tp!130063 () Bool)

(assert (=> b!470363 (= e!287700 (and tp!130065 tp!130063))))

(assert (= (and b!470162 ((_ is ElementMatch!1113) (reg!1442 (regOne!2739 r!23305)))) b!470362))

(assert (= (and b!470162 ((_ is Concat!2013) (reg!1442 (regOne!2739 r!23305)))) b!470363))

(assert (= (and b!470162 ((_ is Star!1113) (reg!1442 (regOne!2739 r!23305)))) b!470364))

(assert (= (and b!470162 ((_ is Union!1113) (reg!1442 (regOne!2739 r!23305)))) b!470365))

(declare-fun b!470368 () Bool)

(declare-fun e!287701 () Bool)

(declare-fun tp!130071 () Bool)

(assert (=> b!470368 (= e!287701 tp!130071)))

(declare-fun b!470366 () Bool)

(assert (=> b!470366 (= e!287701 tp_is_empty!2023)))

(assert (=> b!470167 (= tp!129934 e!287701)))

(declare-fun b!470369 () Bool)

(declare-fun tp!130069 () Bool)

(declare-fun tp!130072 () Bool)

(assert (=> b!470369 (= e!287701 (and tp!130069 tp!130072))))

(declare-fun b!470367 () Bool)

(declare-fun tp!130070 () Bool)

(declare-fun tp!130068 () Bool)

(assert (=> b!470367 (= e!287701 (and tp!130070 tp!130068))))

(assert (= (and b!470167 ((_ is ElementMatch!1113) (regOne!2739 (regTwo!2739 r!23305)))) b!470366))

(assert (= (and b!470167 ((_ is Concat!2013) (regOne!2739 (regTwo!2739 r!23305)))) b!470367))

(assert (= (and b!470167 ((_ is Star!1113) (regOne!2739 (regTwo!2739 r!23305)))) b!470368))

(assert (= (and b!470167 ((_ is Union!1113) (regOne!2739 (regTwo!2739 r!23305)))) b!470369))

(declare-fun b!470372 () Bool)

(declare-fun e!287702 () Bool)

(declare-fun tp!130076 () Bool)

(assert (=> b!470372 (= e!287702 tp!130076)))

(declare-fun b!470370 () Bool)

(assert (=> b!470370 (= e!287702 tp_is_empty!2023)))

(assert (=> b!470167 (= tp!129937 e!287702)))

(declare-fun b!470373 () Bool)

(declare-fun tp!130074 () Bool)

(declare-fun tp!130077 () Bool)

(assert (=> b!470373 (= e!287702 (and tp!130074 tp!130077))))

(declare-fun b!470371 () Bool)

(declare-fun tp!130075 () Bool)

(declare-fun tp!130073 () Bool)

(assert (=> b!470371 (= e!287702 (and tp!130075 tp!130073))))

(assert (= (and b!470167 ((_ is ElementMatch!1113) (regTwo!2739 (regTwo!2739 r!23305)))) b!470370))

(assert (= (and b!470167 ((_ is Concat!2013) (regTwo!2739 (regTwo!2739 r!23305)))) b!470371))

(assert (= (and b!470167 ((_ is Star!1113) (regTwo!2739 (regTwo!2739 r!23305)))) b!470372))

(assert (= (and b!470167 ((_ is Union!1113) (regTwo!2739 (regTwo!2739 r!23305)))) b!470373))

(declare-fun b!470376 () Bool)

(declare-fun e!287703 () Bool)

(declare-fun tp!130081 () Bool)

(assert (=> b!470376 (= e!287703 tp!130081)))

(declare-fun b!470374 () Bool)

(assert (=> b!470374 (= e!287703 tp_is_empty!2023)))

(assert (=> b!470177 (= tp!129950 e!287703)))

(declare-fun b!470377 () Bool)

(declare-fun tp!130079 () Bool)

(declare-fun tp!130082 () Bool)

(assert (=> b!470377 (= e!287703 (and tp!130079 tp!130082))))

(declare-fun b!470375 () Bool)

(declare-fun tp!130080 () Bool)

(declare-fun tp!130078 () Bool)

(assert (=> b!470375 (= e!287703 (and tp!130080 tp!130078))))

(assert (= (and b!470177 ((_ is ElementMatch!1113) (regOne!2738 (reg!1442 r!23305)))) b!470374))

(assert (= (and b!470177 ((_ is Concat!2013) (regOne!2738 (reg!1442 r!23305)))) b!470375))

(assert (= (and b!470177 ((_ is Star!1113) (regOne!2738 (reg!1442 r!23305)))) b!470376))

(assert (= (and b!470177 ((_ is Union!1113) (regOne!2738 (reg!1442 r!23305)))) b!470377))

(declare-fun b!470380 () Bool)

(declare-fun e!287704 () Bool)

(declare-fun tp!130086 () Bool)

(assert (=> b!470380 (= e!287704 tp!130086)))

(declare-fun b!470378 () Bool)

(assert (=> b!470378 (= e!287704 tp_is_empty!2023)))

(assert (=> b!470177 (= tp!129948 e!287704)))

(declare-fun b!470381 () Bool)

(declare-fun tp!130084 () Bool)

(declare-fun tp!130087 () Bool)

(assert (=> b!470381 (= e!287704 (and tp!130084 tp!130087))))

(declare-fun b!470379 () Bool)

(declare-fun tp!130085 () Bool)

(declare-fun tp!130083 () Bool)

(assert (=> b!470379 (= e!287704 (and tp!130085 tp!130083))))

(assert (= (and b!470177 ((_ is ElementMatch!1113) (regTwo!2738 (reg!1442 r!23305)))) b!470378))

(assert (= (and b!470177 ((_ is Concat!2013) (regTwo!2738 (reg!1442 r!23305)))) b!470379))

(assert (= (and b!470177 ((_ is Star!1113) (regTwo!2738 (reg!1442 r!23305)))) b!470380))

(assert (= (and b!470177 ((_ is Union!1113) (regTwo!2738 (reg!1442 r!23305)))) b!470381))

(declare-fun b!470384 () Bool)

(declare-fun e!287705 () Bool)

(declare-fun tp!130091 () Bool)

(assert (=> b!470384 (= e!287705 tp!130091)))

(declare-fun b!470382 () Bool)

(assert (=> b!470382 (= e!287705 tp_is_empty!2023)))

(assert (=> b!470173 (= tp!129945 e!287705)))

(declare-fun b!470385 () Bool)

(declare-fun tp!130089 () Bool)

(declare-fun tp!130092 () Bool)

(assert (=> b!470385 (= e!287705 (and tp!130089 tp!130092))))

(declare-fun b!470383 () Bool)

(declare-fun tp!130090 () Bool)

(declare-fun tp!130088 () Bool)

(assert (=> b!470383 (= e!287705 (and tp!130090 tp!130088))))

(assert (= (and b!470173 ((_ is ElementMatch!1113) (regOne!2738 (regTwo!2738 r!23305)))) b!470382))

(assert (= (and b!470173 ((_ is Concat!2013) (regOne!2738 (regTwo!2738 r!23305)))) b!470383))

(assert (= (and b!470173 ((_ is Star!1113) (regOne!2738 (regTwo!2738 r!23305)))) b!470384))

(assert (= (and b!470173 ((_ is Union!1113) (regOne!2738 (regTwo!2738 r!23305)))) b!470385))

(declare-fun b!470388 () Bool)

(declare-fun e!287706 () Bool)

(declare-fun tp!130096 () Bool)

(assert (=> b!470388 (= e!287706 tp!130096)))

(declare-fun b!470386 () Bool)

(assert (=> b!470386 (= e!287706 tp_is_empty!2023)))

(assert (=> b!470173 (= tp!129943 e!287706)))

(declare-fun b!470389 () Bool)

(declare-fun tp!130094 () Bool)

(declare-fun tp!130097 () Bool)

(assert (=> b!470389 (= e!287706 (and tp!130094 tp!130097))))

(declare-fun b!470387 () Bool)

(declare-fun tp!130095 () Bool)

(declare-fun tp!130093 () Bool)

(assert (=> b!470387 (= e!287706 (and tp!130095 tp!130093))))

(assert (= (and b!470173 ((_ is ElementMatch!1113) (regTwo!2738 (regTwo!2738 r!23305)))) b!470386))

(assert (= (and b!470173 ((_ is Concat!2013) (regTwo!2738 (regTwo!2738 r!23305)))) b!470387))

(assert (= (and b!470173 ((_ is Star!1113) (regTwo!2738 (regTwo!2738 r!23305)))) b!470388))

(assert (= (and b!470173 ((_ is Union!1113) (regTwo!2738 (regTwo!2738 r!23305)))) b!470389))

(declare-fun b!470392 () Bool)

(declare-fun e!287707 () Bool)

(declare-fun tp!130101 () Bool)

(assert (=> b!470392 (= e!287707 tp!130101)))

(declare-fun b!470390 () Bool)

(assert (=> b!470390 (= e!287707 tp_is_empty!2023)))

(assert (=> b!470178 (= tp!129951 e!287707)))

(declare-fun b!470393 () Bool)

(declare-fun tp!130099 () Bool)

(declare-fun tp!130102 () Bool)

(assert (=> b!470393 (= e!287707 (and tp!130099 tp!130102))))

(declare-fun b!470391 () Bool)

(declare-fun tp!130100 () Bool)

(declare-fun tp!130098 () Bool)

(assert (=> b!470391 (= e!287707 (and tp!130100 tp!130098))))

(assert (= (and b!470178 ((_ is ElementMatch!1113) (reg!1442 (reg!1442 r!23305)))) b!470390))

(assert (= (and b!470178 ((_ is Concat!2013) (reg!1442 (reg!1442 r!23305)))) b!470391))

(assert (= (and b!470178 ((_ is Star!1113) (reg!1442 (reg!1442 r!23305)))) b!470392))

(assert (= (and b!470178 ((_ is Union!1113) (reg!1442 (reg!1442 r!23305)))) b!470393))

(declare-fun b!470396 () Bool)

(declare-fun e!287708 () Bool)

(declare-fun tp!130106 () Bool)

(assert (=> b!470396 (= e!287708 tp!130106)))

(declare-fun b!470394 () Bool)

(assert (=> b!470394 (= e!287708 tp_is_empty!2023)))

(assert (=> b!470169 (= tp!129940 e!287708)))

(declare-fun b!470397 () Bool)

(declare-fun tp!130104 () Bool)

(declare-fun tp!130107 () Bool)

(assert (=> b!470397 (= e!287708 (and tp!130104 tp!130107))))

(declare-fun b!470395 () Bool)

(declare-fun tp!130105 () Bool)

(declare-fun tp!130103 () Bool)

(assert (=> b!470395 (= e!287708 (and tp!130105 tp!130103))))

(assert (= (and b!470169 ((_ is ElementMatch!1113) (regOne!2738 (regOne!2738 r!23305)))) b!470394))

(assert (= (and b!470169 ((_ is Concat!2013) (regOne!2738 (regOne!2738 r!23305)))) b!470395))

(assert (= (and b!470169 ((_ is Star!1113) (regOne!2738 (regOne!2738 r!23305)))) b!470396))

(assert (= (and b!470169 ((_ is Union!1113) (regOne!2738 (regOne!2738 r!23305)))) b!470397))

(declare-fun b!470400 () Bool)

(declare-fun e!287709 () Bool)

(declare-fun tp!130111 () Bool)

(assert (=> b!470400 (= e!287709 tp!130111)))

(declare-fun b!470398 () Bool)

(assert (=> b!470398 (= e!287709 tp_is_empty!2023)))

(assert (=> b!470169 (= tp!129938 e!287709)))

(declare-fun b!470401 () Bool)

(declare-fun tp!130109 () Bool)

(declare-fun tp!130112 () Bool)

(assert (=> b!470401 (= e!287709 (and tp!130109 tp!130112))))

(declare-fun b!470399 () Bool)

(declare-fun tp!130110 () Bool)

(declare-fun tp!130108 () Bool)

(assert (=> b!470399 (= e!287709 (and tp!130110 tp!130108))))

(assert (= (and b!470169 ((_ is ElementMatch!1113) (regTwo!2738 (regOne!2738 r!23305)))) b!470398))

(assert (= (and b!470169 ((_ is Concat!2013) (regTwo!2738 (regOne!2738 r!23305)))) b!470399))

(assert (= (and b!470169 ((_ is Star!1113) (regTwo!2738 (regOne!2738 r!23305)))) b!470400))

(assert (= (and b!470169 ((_ is Union!1113) (regTwo!2738 (regOne!2738 r!23305)))) b!470401))

(check-sat (not b!470315) (not b!470351) (not b!470360) (not b!470359) (not b!470376) (not b!470380) (not b!470340) (not b!470357) (not bm!32736) (not b!470317) (not b!470389) (not d!179162) (not bm!32741) (not b!470345) (not b!470251) (not b!470349) (not d!179154) (not b!470336) (not b!470328) (not b!470327) (not b!470323) (not b!470300) (not b!470375) (not b!470341) (not b!470388) tp_is_empty!2023 (not bm!32738) (not bm!32735) (not bm!32739) (not b!470377) (not b!470399) (not b!470283) (not d!179148) (not bm!32727) (not b!470321) (not b!470311) (not b!470333) (not b!470373) (not b!470396) (not b!470348) (not b!470324) (not b!470329) (not b!470369) (not b!470299) (not bm!32734) (not b!470316) (not b!470308) (not b!470371) (not b!470372) (not bm!32726) (not b!470332) (not b!470339) (not b!470368) (not b!470364) (not b!470221) (not b!470356) (not b!470355) (not b!470400) (not b!470305) (not b!470385) (not b!470365) (not b!470319) (not b!470384) (not b!470347) (not b!470397) (not b!470304) (not b!470320) (not b!470335) (not bm!32740) (not b!470312) (not b!470331) (not b!470383) (not b!470379) (not b!470313) (not b!470363) (not b!470361) (not b!470343) (not b!470381) (not b!470392) (not b!470387) (not b!470307) (not b!470325) (not b!470391) (not b!470393) (not b!470353) (not b!470337) (not b!470309) (not b!470344) (not b!470367) (not b!470395) (not b!470401) (not b!470352) (not bm!32733) (not b!470267) (not b!470303))
(check-sat)
