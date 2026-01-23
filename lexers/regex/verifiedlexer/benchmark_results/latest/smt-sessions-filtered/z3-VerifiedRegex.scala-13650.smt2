; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732204 () Bool)

(assert start!732204)

(declare-fun res!3038292 () Bool)

(declare-fun e!4514031 () Bool)

(assert (=> start!732204 (=> (not res!3038292) (not e!4514031))))

(declare-datatypes ((C!40516 0))(
  ( (C!40517 (val!30698 Int)) )
))
(declare-datatypes ((Regex!20095 0))(
  ( (ElementMatch!20095 (c!1398964 C!40516)) (Concat!28940 (regOne!40702 Regex!20095) (regTwo!40702 Regex!20095)) (EmptyExpr!20095) (Star!20095 (reg!20424 Regex!20095)) (EmptyLang!20095) (Union!20095 (regOne!40703 Regex!20095) (regTwo!40703 Regex!20095)) )
))
(declare-fun r!22341 () Regex!20095)

(declare-fun validRegex!10523 (Regex!20095) Bool)

(assert (=> start!732204 (= res!3038292 (validRegex!10523 r!22341))))

(assert (=> start!732204 e!4514031))

(declare-fun e!4514029 () Bool)

(assert (=> start!732204 e!4514029))

(declare-fun e!4514030 () Bool)

(assert (=> start!732204 e!4514030))

(declare-fun b!7584603 () Bool)

(declare-fun res!3038291 () Bool)

(assert (=> b!7584603 (=> (not res!3038291) (not e!4514031))))

(declare-datatypes ((List!72978 0))(
  ( (Nil!72854) (Cons!72854 (h!79302 C!40516) (t!387713 List!72978)) )
))
(declare-fun s!13436 () List!72978)

(declare-fun isEmpty!41531 (List!72978) Bool)

(assert (=> b!7584603 (= res!3038291 (not (isEmpty!41531 s!13436)))))

(declare-fun b!7584604 () Bool)

(declare-fun e!4514028 () Bool)

(assert (=> b!7584604 (= e!4514028 (validRegex!10523 (regOne!40702 r!22341)))))

(declare-fun b!7584605 () Bool)

(declare-fun tp_is_empty!50545 () Bool)

(assert (=> b!7584605 (= e!4514029 tp_is_empty!50545)))

(declare-fun b!7584606 () Bool)

(declare-fun res!3038290 () Bool)

(assert (=> b!7584606 (=> (not res!3038290) (not e!4514031))))

(declare-fun lostCause!1871 (Regex!20095) Bool)

(assert (=> b!7584606 (= res!3038290 (lostCause!1871 r!22341))))

(declare-fun b!7584607 () Bool)

(declare-fun tp!2210501 () Bool)

(assert (=> b!7584607 (= e!4514030 (and tp_is_empty!50545 tp!2210501))))

(declare-fun b!7584608 () Bool)

(declare-fun tp!2210503 () Bool)

(declare-fun tp!2210500 () Bool)

(assert (=> b!7584608 (= e!4514029 (and tp!2210503 tp!2210500))))

(declare-fun b!7584609 () Bool)

(declare-fun tp!2210502 () Bool)

(declare-fun tp!2210505 () Bool)

(assert (=> b!7584609 (= e!4514029 (and tp!2210502 tp!2210505))))

(declare-fun b!7584610 () Bool)

(assert (=> b!7584610 (= e!4514031 (not e!4514028))))

(declare-fun res!3038289 () Bool)

(assert (=> b!7584610 (=> res!3038289 e!4514028)))

(declare-fun lt!2652876 () Bool)

(get-info :version)

(assert (=> b!7584610 (= res!3038289 (or ((_ is EmptyLang!20095) r!22341) ((_ is EmptyExpr!20095) r!22341) ((_ is ElementMatch!20095) r!22341) ((_ is Union!20095) r!22341) ((_ is Star!20095) r!22341) (not lt!2652876)))))

(declare-fun matchRSpec!4408 (Regex!20095 List!72978) Bool)

(assert (=> b!7584610 (= lt!2652876 (matchRSpec!4408 r!22341 s!13436))))

(declare-fun matchR!9687 (Regex!20095 List!72978) Bool)

(assert (=> b!7584610 (= lt!2652876 (matchR!9687 r!22341 s!13436))))

(declare-datatypes ((Unit!167146 0))(
  ( (Unit!167147) )
))
(declare-fun lt!2652875 () Unit!167146)

(declare-fun mainMatchTheorem!4402 (Regex!20095 List!72978) Unit!167146)

(assert (=> b!7584610 (= lt!2652875 (mainMatchTheorem!4402 r!22341 s!13436))))

(declare-fun b!7584611 () Bool)

(declare-fun tp!2210504 () Bool)

(assert (=> b!7584611 (= e!4514029 tp!2210504)))

(assert (= (and start!732204 res!3038292) b!7584606))

(assert (= (and b!7584606 res!3038290) b!7584603))

(assert (= (and b!7584603 res!3038291) b!7584610))

(assert (= (and b!7584610 (not res!3038289)) b!7584604))

(assert (= (and start!732204 ((_ is ElementMatch!20095) r!22341)) b!7584605))

(assert (= (and start!732204 ((_ is Concat!28940) r!22341)) b!7584608))

(assert (= (and start!732204 ((_ is Star!20095) r!22341)) b!7584611))

(assert (= (and start!732204 ((_ is Union!20095) r!22341)) b!7584609))

(assert (= (and start!732204 ((_ is Cons!72854) s!13436)) b!7584607))

(declare-fun m!8137012 () Bool)

(assert (=> b!7584610 m!8137012))

(declare-fun m!8137014 () Bool)

(assert (=> b!7584610 m!8137014))

(declare-fun m!8137016 () Bool)

(assert (=> b!7584610 m!8137016))

(declare-fun m!8137018 () Bool)

(assert (=> b!7584606 m!8137018))

(declare-fun m!8137020 () Bool)

(assert (=> start!732204 m!8137020))

(declare-fun m!8137022 () Bool)

(assert (=> b!7584604 m!8137022))

(declare-fun m!8137024 () Bool)

(assert (=> b!7584603 m!8137024))

(check-sat (not b!7584604) (not b!7584610) tp_is_empty!50545 (not b!7584611) (not b!7584608) (not b!7584607) (not start!732204) (not b!7584606) (not b!7584609) (not b!7584603))
(check-sat)
(get-model)

(declare-fun d!2318823 () Bool)

(declare-fun lostCauseFct!522 (Regex!20095) Bool)

(assert (=> d!2318823 (= (lostCause!1871 r!22341) (lostCauseFct!522 r!22341))))

(declare-fun bs!1941189 () Bool)

(assert (= bs!1941189 d!2318823))

(declare-fun m!8137026 () Bool)

(assert (=> bs!1941189 m!8137026))

(assert (=> b!7584606 d!2318823))

(declare-fun d!2318829 () Bool)

(assert (=> d!2318829 (= (isEmpty!41531 s!13436) ((_ is Nil!72854) s!13436))))

(assert (=> b!7584603 d!2318829))

(declare-fun b!7584648 () Bool)

(declare-fun e!4514062 () Bool)

(declare-fun call!695537 () Bool)

(assert (=> b!7584648 (= e!4514062 call!695537)))

(declare-fun b!7584649 () Bool)

(declare-fun res!3038314 () Bool)

(assert (=> b!7584649 (=> (not res!3038314) (not e!4514062))))

(declare-fun call!695536 () Bool)

(assert (=> b!7584649 (= res!3038314 call!695536)))

(declare-fun e!4514061 () Bool)

(assert (=> b!7584649 (= e!4514061 e!4514062)))

(declare-fun b!7584650 () Bool)

(declare-fun e!4514065 () Bool)

(declare-fun e!4514064 () Bool)

(assert (=> b!7584650 (= e!4514065 e!4514064)))

(declare-fun res!3038317 () Bool)

(declare-fun nullable!8786 (Regex!20095) Bool)

(assert (=> b!7584650 (= res!3038317 (not (nullable!8786 (reg!20424 r!22341))))))

(assert (=> b!7584650 (=> (not res!3038317) (not e!4514064))))

(declare-fun b!7584651 () Bool)

(declare-fun e!4514066 () Bool)

(assert (=> b!7584651 (= e!4514066 e!4514065)))

(declare-fun c!1398973 () Bool)

(assert (=> b!7584651 (= c!1398973 ((_ is Star!20095) r!22341))))

(declare-fun b!7584652 () Bool)

(declare-fun e!4514063 () Bool)

(assert (=> b!7584652 (= e!4514063 call!695536)))

(declare-fun bm!695530 () Bool)

(declare-fun call!695535 () Bool)

(assert (=> bm!695530 (= call!695536 call!695535)))

(declare-fun c!1398974 () Bool)

(declare-fun bm!695531 () Bool)

(assert (=> bm!695531 (= call!695535 (validRegex!10523 (ite c!1398973 (reg!20424 r!22341) (ite c!1398974 (regOne!40703 r!22341) (regTwo!40702 r!22341)))))))

(declare-fun b!7584653 () Bool)

(declare-fun res!3038316 () Bool)

(declare-fun e!4514060 () Bool)

(assert (=> b!7584653 (=> res!3038316 e!4514060)))

(assert (=> b!7584653 (= res!3038316 (not ((_ is Concat!28940) r!22341)))))

(assert (=> b!7584653 (= e!4514061 e!4514060)))

(declare-fun d!2318831 () Bool)

(declare-fun res!3038313 () Bool)

(assert (=> d!2318831 (=> res!3038313 e!4514066)))

(assert (=> d!2318831 (= res!3038313 ((_ is ElementMatch!20095) r!22341))))

(assert (=> d!2318831 (= (validRegex!10523 r!22341) e!4514066)))

(declare-fun b!7584654 () Bool)

(assert (=> b!7584654 (= e!4514065 e!4514061)))

(assert (=> b!7584654 (= c!1398974 ((_ is Union!20095) r!22341))))

(declare-fun b!7584655 () Bool)

(assert (=> b!7584655 (= e!4514060 e!4514063)))

(declare-fun res!3038315 () Bool)

(assert (=> b!7584655 (=> (not res!3038315) (not e!4514063))))

(assert (=> b!7584655 (= res!3038315 call!695537)))

(declare-fun b!7584656 () Bool)

(assert (=> b!7584656 (= e!4514064 call!695535)))

(declare-fun bm!695532 () Bool)

(assert (=> bm!695532 (= call!695537 (validRegex!10523 (ite c!1398974 (regTwo!40703 r!22341) (regOne!40702 r!22341))))))

(assert (= (and d!2318831 (not res!3038313)) b!7584651))

(assert (= (and b!7584651 c!1398973) b!7584650))

(assert (= (and b!7584651 (not c!1398973)) b!7584654))

(assert (= (and b!7584650 res!3038317) b!7584656))

(assert (= (and b!7584654 c!1398974) b!7584649))

(assert (= (and b!7584654 (not c!1398974)) b!7584653))

(assert (= (and b!7584649 res!3038314) b!7584648))

(assert (= (and b!7584653 (not res!3038316)) b!7584655))

(assert (= (and b!7584655 res!3038315) b!7584652))

(assert (= (or b!7584648 b!7584655) bm!695532))

(assert (= (or b!7584649 b!7584652) bm!695530))

(assert (= (or b!7584656 bm!695530) bm!695531))

(declare-fun m!8137028 () Bool)

(assert (=> b!7584650 m!8137028))

(declare-fun m!8137030 () Bool)

(assert (=> bm!695531 m!8137030))

(declare-fun m!8137032 () Bool)

(assert (=> bm!695532 m!8137032))

(assert (=> start!732204 d!2318831))

(declare-fun b!7584666 () Bool)

(declare-fun e!4514076 () Bool)

(declare-fun call!695543 () Bool)

(assert (=> b!7584666 (= e!4514076 call!695543)))

(declare-fun b!7584667 () Bool)

(declare-fun res!3038324 () Bool)

(assert (=> b!7584667 (=> (not res!3038324) (not e!4514076))))

(declare-fun call!695542 () Bool)

(assert (=> b!7584667 (= res!3038324 call!695542)))

(declare-fun e!4514075 () Bool)

(assert (=> b!7584667 (= e!4514075 e!4514076)))

(declare-fun b!7584668 () Bool)

(declare-fun e!4514079 () Bool)

(declare-fun e!4514078 () Bool)

(assert (=> b!7584668 (= e!4514079 e!4514078)))

(declare-fun res!3038327 () Bool)

(assert (=> b!7584668 (= res!3038327 (not (nullable!8786 (reg!20424 (regOne!40702 r!22341)))))))

(assert (=> b!7584668 (=> (not res!3038327) (not e!4514078))))

(declare-fun b!7584669 () Bool)

(declare-fun e!4514080 () Bool)

(assert (=> b!7584669 (= e!4514080 e!4514079)))

(declare-fun c!1398977 () Bool)

(assert (=> b!7584669 (= c!1398977 ((_ is Star!20095) (regOne!40702 r!22341)))))

(declare-fun b!7584670 () Bool)

(declare-fun e!4514077 () Bool)

(assert (=> b!7584670 (= e!4514077 call!695542)))

(declare-fun bm!695536 () Bool)

(declare-fun call!695541 () Bool)

(assert (=> bm!695536 (= call!695542 call!695541)))

(declare-fun bm!695537 () Bool)

(declare-fun c!1398978 () Bool)

(assert (=> bm!695537 (= call!695541 (validRegex!10523 (ite c!1398977 (reg!20424 (regOne!40702 r!22341)) (ite c!1398978 (regOne!40703 (regOne!40702 r!22341)) (regTwo!40702 (regOne!40702 r!22341))))))))

(declare-fun b!7584671 () Bool)

(declare-fun res!3038326 () Bool)

(declare-fun e!4514074 () Bool)

(assert (=> b!7584671 (=> res!3038326 e!4514074)))

(assert (=> b!7584671 (= res!3038326 (not ((_ is Concat!28940) (regOne!40702 r!22341))))))

(assert (=> b!7584671 (= e!4514075 e!4514074)))

(declare-fun d!2318833 () Bool)

(declare-fun res!3038323 () Bool)

(assert (=> d!2318833 (=> res!3038323 e!4514080)))

(assert (=> d!2318833 (= res!3038323 ((_ is ElementMatch!20095) (regOne!40702 r!22341)))))

(assert (=> d!2318833 (= (validRegex!10523 (regOne!40702 r!22341)) e!4514080)))

(declare-fun b!7584672 () Bool)

(assert (=> b!7584672 (= e!4514079 e!4514075)))

(assert (=> b!7584672 (= c!1398978 ((_ is Union!20095) (regOne!40702 r!22341)))))

(declare-fun b!7584673 () Bool)

(assert (=> b!7584673 (= e!4514074 e!4514077)))

(declare-fun res!3038325 () Bool)

(assert (=> b!7584673 (=> (not res!3038325) (not e!4514077))))

(assert (=> b!7584673 (= res!3038325 call!695543)))

(declare-fun b!7584674 () Bool)

(assert (=> b!7584674 (= e!4514078 call!695541)))

(declare-fun bm!695538 () Bool)

(assert (=> bm!695538 (= call!695543 (validRegex!10523 (ite c!1398978 (regTwo!40703 (regOne!40702 r!22341)) (regOne!40702 (regOne!40702 r!22341)))))))

(assert (= (and d!2318833 (not res!3038323)) b!7584669))

(assert (= (and b!7584669 c!1398977) b!7584668))

(assert (= (and b!7584669 (not c!1398977)) b!7584672))

(assert (= (and b!7584668 res!3038327) b!7584674))

(assert (= (and b!7584672 c!1398978) b!7584667))

(assert (= (and b!7584672 (not c!1398978)) b!7584671))

(assert (= (and b!7584667 res!3038324) b!7584666))

(assert (= (and b!7584671 (not res!3038326)) b!7584673))

(assert (= (and b!7584673 res!3038325) b!7584670))

(assert (= (or b!7584666 b!7584673) bm!695538))

(assert (= (or b!7584667 b!7584670) bm!695536))

(assert (= (or b!7584674 bm!695536) bm!695537))

(declare-fun m!8137034 () Bool)

(assert (=> b!7584668 m!8137034))

(declare-fun m!8137036 () Bool)

(assert (=> bm!695537 m!8137036))

(declare-fun m!8137038 () Bool)

(assert (=> bm!695538 m!8137038))

(assert (=> b!7584604 d!2318833))

(declare-fun b!7584841 () Bool)

(assert (=> b!7584841 true))

(assert (=> b!7584841 true))

(declare-fun bs!1941193 () Bool)

(declare-fun b!7584838 () Bool)

(assert (= bs!1941193 (and b!7584838 b!7584841)))

(declare-fun lambda!467041 () Int)

(declare-fun lambda!467040 () Int)

(assert (=> bs!1941193 (not (= lambda!467041 lambda!467040))))

(assert (=> b!7584838 true))

(assert (=> b!7584838 true))

(declare-fun b!7584835 () Bool)

(declare-fun e!4514160 () Bool)

(assert (=> b!7584835 (= e!4514160 (matchRSpec!4408 (regTwo!40703 r!22341) s!13436))))

(declare-fun b!7584836 () Bool)

(declare-fun res!3038393 () Bool)

(declare-fun e!4514164 () Bool)

(assert (=> b!7584836 (=> res!3038393 e!4514164)))

(declare-fun call!695560 () Bool)

(assert (=> b!7584836 (= res!3038393 call!695560)))

(declare-fun e!4514163 () Bool)

(assert (=> b!7584836 (= e!4514163 e!4514164)))

(declare-fun call!695561 () Bool)

(assert (=> b!7584838 (= e!4514163 call!695561)))

(declare-fun b!7584839 () Bool)

(declare-fun e!4514166 () Bool)

(assert (=> b!7584839 (= e!4514166 e!4514160)))

(declare-fun res!3038392 () Bool)

(assert (=> b!7584839 (= res!3038392 (matchRSpec!4408 (regOne!40703 r!22341) s!13436))))

(assert (=> b!7584839 (=> res!3038392 e!4514160)))

(declare-fun b!7584840 () Bool)

(assert (=> b!7584840 (= e!4514166 e!4514163)))

(declare-fun c!1399013 () Bool)

(assert (=> b!7584840 (= c!1399013 ((_ is Star!20095) r!22341))))

(declare-fun bm!695555 () Bool)

(declare-fun Exists!4327 (Int) Bool)

(assert (=> bm!695555 (= call!695561 (Exists!4327 (ite c!1399013 lambda!467040 lambda!467041)))))

(declare-fun bm!695556 () Bool)

(assert (=> bm!695556 (= call!695560 (isEmpty!41531 s!13436))))

(assert (=> b!7584841 (= e!4514164 call!695561)))

(declare-fun b!7584842 () Bool)

(declare-fun e!4514162 () Bool)

(declare-fun e!4514161 () Bool)

(assert (=> b!7584842 (= e!4514162 e!4514161)))

(declare-fun res!3038394 () Bool)

(assert (=> b!7584842 (= res!3038394 (not ((_ is EmptyLang!20095) r!22341)))))

(assert (=> b!7584842 (=> (not res!3038394) (not e!4514161))))

(declare-fun b!7584843 () Bool)

(declare-fun c!1399012 () Bool)

(assert (=> b!7584843 (= c!1399012 ((_ is Union!20095) r!22341))))

(declare-fun e!4514165 () Bool)

(assert (=> b!7584843 (= e!4514165 e!4514166)))

(declare-fun b!7584837 () Bool)

(declare-fun c!1399011 () Bool)

(assert (=> b!7584837 (= c!1399011 ((_ is ElementMatch!20095) r!22341))))

(assert (=> b!7584837 (= e!4514161 e!4514165)))

(declare-fun d!2318835 () Bool)

(declare-fun c!1399010 () Bool)

(assert (=> d!2318835 (= c!1399010 ((_ is EmptyExpr!20095) r!22341))))

(assert (=> d!2318835 (= (matchRSpec!4408 r!22341 s!13436) e!4514162)))

(declare-fun b!7584844 () Bool)

(assert (=> b!7584844 (= e!4514165 (= s!13436 (Cons!72854 (c!1398964 r!22341) Nil!72854)))))

(declare-fun b!7584845 () Bool)

(assert (=> b!7584845 (= e!4514162 call!695560)))

(assert (= (and d!2318835 c!1399010) b!7584845))

(assert (= (and d!2318835 (not c!1399010)) b!7584842))

(assert (= (and b!7584842 res!3038394) b!7584837))

(assert (= (and b!7584837 c!1399011) b!7584844))

(assert (= (and b!7584837 (not c!1399011)) b!7584843))

(assert (= (and b!7584843 c!1399012) b!7584839))

(assert (= (and b!7584843 (not c!1399012)) b!7584840))

(assert (= (and b!7584839 (not res!3038392)) b!7584835))

(assert (= (and b!7584840 c!1399013) b!7584836))

(assert (= (and b!7584840 (not c!1399013)) b!7584838))

(assert (= (and b!7584836 (not res!3038393)) b!7584841))

(assert (= (or b!7584841 b!7584838) bm!695555))

(assert (= (or b!7584845 b!7584836) bm!695556))

(declare-fun m!8137074 () Bool)

(assert (=> b!7584835 m!8137074))

(declare-fun m!8137076 () Bool)

(assert (=> b!7584839 m!8137076))

(declare-fun m!8137078 () Bool)

(assert (=> bm!695555 m!8137078))

(assert (=> bm!695556 m!8137024))

(assert (=> b!7584610 d!2318835))

(declare-fun bm!695559 () Bool)

(declare-fun call!695564 () Bool)

(assert (=> bm!695559 (= call!695564 (isEmpty!41531 s!13436))))

(declare-fun b!7584883 () Bool)

(declare-fun e!4514188 () Bool)

(declare-fun e!4514189 () Bool)

(assert (=> b!7584883 (= e!4514188 e!4514189)))

(declare-fun res!3038417 () Bool)

(assert (=> b!7584883 (=> (not res!3038417) (not e!4514189))))

(declare-fun lt!2652885 () Bool)

(assert (=> b!7584883 (= res!3038417 (not lt!2652885))))

(declare-fun b!7584884 () Bool)

(declare-fun e!4514186 () Bool)

(assert (=> b!7584884 (= e!4514186 (nullable!8786 r!22341))))

(declare-fun b!7584885 () Bool)

(declare-fun e!4514185 () Bool)

(assert (=> b!7584885 (= e!4514185 (not lt!2652885))))

(declare-fun b!7584886 () Bool)

(declare-fun derivativeStep!5813 (Regex!20095 C!40516) Regex!20095)

(declare-fun head!15613 (List!72978) C!40516)

(declare-fun tail!15153 (List!72978) List!72978)

(assert (=> b!7584886 (= e!4514186 (matchR!9687 (derivativeStep!5813 r!22341 (head!15613 s!13436)) (tail!15153 s!13436)))))

(declare-fun b!7584887 () Bool)

(declare-fun e!4514184 () Bool)

(assert (=> b!7584887 (= e!4514184 (not (= (head!15613 s!13436) (c!1398964 r!22341))))))

(declare-fun b!7584888 () Bool)

(declare-fun e!4514183 () Bool)

(assert (=> b!7584888 (= e!4514183 (= (head!15613 s!13436) (c!1398964 r!22341)))))

(declare-fun b!7584889 () Bool)

(assert (=> b!7584889 (= e!4514189 e!4514184)))

(declare-fun res!3038414 () Bool)

(assert (=> b!7584889 (=> res!3038414 e!4514184)))

(assert (=> b!7584889 (= res!3038414 call!695564)))

(declare-fun b!7584891 () Bool)

(declare-fun res!3038412 () Bool)

(assert (=> b!7584891 (=> (not res!3038412) (not e!4514183))))

(assert (=> b!7584891 (= res!3038412 (isEmpty!41531 (tail!15153 s!13436)))))

(declare-fun b!7584892 () Bool)

(declare-fun res!3038415 () Bool)

(assert (=> b!7584892 (=> res!3038415 e!4514184)))

(assert (=> b!7584892 (= res!3038415 (not (isEmpty!41531 (tail!15153 s!13436))))))

(declare-fun b!7584893 () Bool)

(declare-fun e!4514187 () Bool)

(assert (=> b!7584893 (= e!4514187 (= lt!2652885 call!695564))))

(declare-fun b!7584894 () Bool)

(declare-fun res!3038418 () Bool)

(assert (=> b!7584894 (=> res!3038418 e!4514188)))

(assert (=> b!7584894 (= res!3038418 (not ((_ is ElementMatch!20095) r!22341)))))

(assert (=> b!7584894 (= e!4514185 e!4514188)))

(declare-fun b!7584895 () Bool)

(assert (=> b!7584895 (= e!4514187 e!4514185)))

(declare-fun c!1399020 () Bool)

(assert (=> b!7584895 (= c!1399020 ((_ is EmptyLang!20095) r!22341))))

(declare-fun b!7584896 () Bool)

(declare-fun res!3038413 () Bool)

(assert (=> b!7584896 (=> (not res!3038413) (not e!4514183))))

(assert (=> b!7584896 (= res!3038413 (not call!695564))))

(declare-fun d!2318847 () Bool)

(assert (=> d!2318847 e!4514187))

(declare-fun c!1399021 () Bool)

(assert (=> d!2318847 (= c!1399021 ((_ is EmptyExpr!20095) r!22341))))

(assert (=> d!2318847 (= lt!2652885 e!4514186)))

(declare-fun c!1399022 () Bool)

(assert (=> d!2318847 (= c!1399022 (isEmpty!41531 s!13436))))

(assert (=> d!2318847 (validRegex!10523 r!22341)))

(assert (=> d!2318847 (= (matchR!9687 r!22341 s!13436) lt!2652885)))

(declare-fun b!7584890 () Bool)

(declare-fun res!3038411 () Bool)

(assert (=> b!7584890 (=> res!3038411 e!4514188)))

(assert (=> b!7584890 (= res!3038411 e!4514183)))

(declare-fun res!3038416 () Bool)

(assert (=> b!7584890 (=> (not res!3038416) (not e!4514183))))

(assert (=> b!7584890 (= res!3038416 lt!2652885)))

(assert (= (and d!2318847 c!1399022) b!7584884))

(assert (= (and d!2318847 (not c!1399022)) b!7584886))

(assert (= (and d!2318847 c!1399021) b!7584893))

(assert (= (and d!2318847 (not c!1399021)) b!7584895))

(assert (= (and b!7584895 c!1399020) b!7584885))

(assert (= (and b!7584895 (not c!1399020)) b!7584894))

(assert (= (and b!7584894 (not res!3038418)) b!7584890))

(assert (= (and b!7584890 res!3038416) b!7584896))

(assert (= (and b!7584896 res!3038413) b!7584891))

(assert (= (and b!7584891 res!3038412) b!7584888))

(assert (= (and b!7584890 (not res!3038411)) b!7584883))

(assert (= (and b!7584883 res!3038417) b!7584889))

(assert (= (and b!7584889 (not res!3038414)) b!7584892))

(assert (= (and b!7584892 (not res!3038415)) b!7584887))

(assert (= (or b!7584893 b!7584889 b!7584896) bm!695559))

(assert (=> bm!695559 m!8137024))

(declare-fun m!8137080 () Bool)

(assert (=> b!7584892 m!8137080))

(assert (=> b!7584892 m!8137080))

(declare-fun m!8137082 () Bool)

(assert (=> b!7584892 m!8137082))

(declare-fun m!8137084 () Bool)

(assert (=> b!7584887 m!8137084))

(assert (=> d!2318847 m!8137024))

(assert (=> d!2318847 m!8137020))

(assert (=> b!7584891 m!8137080))

(assert (=> b!7584891 m!8137080))

(assert (=> b!7584891 m!8137082))

(declare-fun m!8137086 () Bool)

(assert (=> b!7584884 m!8137086))

(assert (=> b!7584888 m!8137084))

(assert (=> b!7584886 m!8137084))

(assert (=> b!7584886 m!8137084))

(declare-fun m!8137088 () Bool)

(assert (=> b!7584886 m!8137088))

(assert (=> b!7584886 m!8137080))

(assert (=> b!7584886 m!8137088))

(assert (=> b!7584886 m!8137080))

(declare-fun m!8137090 () Bool)

(assert (=> b!7584886 m!8137090))

(assert (=> b!7584610 d!2318847))

(declare-fun d!2318849 () Bool)

(assert (=> d!2318849 (= (matchR!9687 r!22341 s!13436) (matchRSpec!4408 r!22341 s!13436))))

(declare-fun lt!2652888 () Unit!167146)

(declare-fun choose!58634 (Regex!20095 List!72978) Unit!167146)

(assert (=> d!2318849 (= lt!2652888 (choose!58634 r!22341 s!13436))))

(assert (=> d!2318849 (validRegex!10523 r!22341)))

(assert (=> d!2318849 (= (mainMatchTheorem!4402 r!22341 s!13436) lt!2652888)))

(declare-fun bs!1941194 () Bool)

(assert (= bs!1941194 d!2318849))

(assert (=> bs!1941194 m!8137014))

(assert (=> bs!1941194 m!8137012))

(declare-fun m!8137092 () Bool)

(assert (=> bs!1941194 m!8137092))

(assert (=> bs!1941194 m!8137020))

(assert (=> b!7584610 d!2318849))

(declare-fun b!7584907 () Bool)

(declare-fun e!4514192 () Bool)

(assert (=> b!7584907 (= e!4514192 tp_is_empty!50545)))

(declare-fun b!7584909 () Bool)

(declare-fun tp!2210555 () Bool)

(assert (=> b!7584909 (= e!4514192 tp!2210555)))

(assert (=> b!7584611 (= tp!2210504 e!4514192)))

(declare-fun b!7584908 () Bool)

(declare-fun tp!2210558 () Bool)

(declare-fun tp!2210557 () Bool)

(assert (=> b!7584908 (= e!4514192 (and tp!2210558 tp!2210557))))

(declare-fun b!7584910 () Bool)

(declare-fun tp!2210556 () Bool)

(declare-fun tp!2210554 () Bool)

(assert (=> b!7584910 (= e!4514192 (and tp!2210556 tp!2210554))))

(assert (= (and b!7584611 ((_ is ElementMatch!20095) (reg!20424 r!22341))) b!7584907))

(assert (= (and b!7584611 ((_ is Concat!28940) (reg!20424 r!22341))) b!7584908))

(assert (= (and b!7584611 ((_ is Star!20095) (reg!20424 r!22341))) b!7584909))

(assert (= (and b!7584611 ((_ is Union!20095) (reg!20424 r!22341))) b!7584910))

(declare-fun b!7584915 () Bool)

(declare-fun e!4514195 () Bool)

(declare-fun tp!2210561 () Bool)

(assert (=> b!7584915 (= e!4514195 (and tp_is_empty!50545 tp!2210561))))

(assert (=> b!7584607 (= tp!2210501 e!4514195)))

(assert (= (and b!7584607 ((_ is Cons!72854) (t!387713 s!13436))) b!7584915))

(declare-fun b!7584916 () Bool)

(declare-fun e!4514196 () Bool)

(assert (=> b!7584916 (= e!4514196 tp_is_empty!50545)))

(declare-fun b!7584918 () Bool)

(declare-fun tp!2210563 () Bool)

(assert (=> b!7584918 (= e!4514196 tp!2210563)))

(assert (=> b!7584608 (= tp!2210503 e!4514196)))

(declare-fun b!7584917 () Bool)

(declare-fun tp!2210566 () Bool)

(declare-fun tp!2210565 () Bool)

(assert (=> b!7584917 (= e!4514196 (and tp!2210566 tp!2210565))))

(declare-fun b!7584919 () Bool)

(declare-fun tp!2210564 () Bool)

(declare-fun tp!2210562 () Bool)

(assert (=> b!7584919 (= e!4514196 (and tp!2210564 tp!2210562))))

(assert (= (and b!7584608 ((_ is ElementMatch!20095) (regOne!40702 r!22341))) b!7584916))

(assert (= (and b!7584608 ((_ is Concat!28940) (regOne!40702 r!22341))) b!7584917))

(assert (= (and b!7584608 ((_ is Star!20095) (regOne!40702 r!22341))) b!7584918))

(assert (= (and b!7584608 ((_ is Union!20095) (regOne!40702 r!22341))) b!7584919))

(declare-fun b!7584920 () Bool)

(declare-fun e!4514197 () Bool)

(assert (=> b!7584920 (= e!4514197 tp_is_empty!50545)))

(declare-fun b!7584922 () Bool)

(declare-fun tp!2210568 () Bool)

(assert (=> b!7584922 (= e!4514197 tp!2210568)))

(assert (=> b!7584608 (= tp!2210500 e!4514197)))

(declare-fun b!7584921 () Bool)

(declare-fun tp!2210571 () Bool)

(declare-fun tp!2210570 () Bool)

(assert (=> b!7584921 (= e!4514197 (and tp!2210571 tp!2210570))))

(declare-fun b!7584923 () Bool)

(declare-fun tp!2210569 () Bool)

(declare-fun tp!2210567 () Bool)

(assert (=> b!7584923 (= e!4514197 (and tp!2210569 tp!2210567))))

(assert (= (and b!7584608 ((_ is ElementMatch!20095) (regTwo!40702 r!22341))) b!7584920))

(assert (= (and b!7584608 ((_ is Concat!28940) (regTwo!40702 r!22341))) b!7584921))

(assert (= (and b!7584608 ((_ is Star!20095) (regTwo!40702 r!22341))) b!7584922))

(assert (= (and b!7584608 ((_ is Union!20095) (regTwo!40702 r!22341))) b!7584923))

(declare-fun b!7584924 () Bool)

(declare-fun e!4514198 () Bool)

(assert (=> b!7584924 (= e!4514198 tp_is_empty!50545)))

(declare-fun b!7584926 () Bool)

(declare-fun tp!2210573 () Bool)

(assert (=> b!7584926 (= e!4514198 tp!2210573)))

(assert (=> b!7584609 (= tp!2210502 e!4514198)))

(declare-fun b!7584925 () Bool)

(declare-fun tp!2210576 () Bool)

(declare-fun tp!2210575 () Bool)

(assert (=> b!7584925 (= e!4514198 (and tp!2210576 tp!2210575))))

(declare-fun b!7584927 () Bool)

(declare-fun tp!2210574 () Bool)

(declare-fun tp!2210572 () Bool)

(assert (=> b!7584927 (= e!4514198 (and tp!2210574 tp!2210572))))

(assert (= (and b!7584609 ((_ is ElementMatch!20095) (regOne!40703 r!22341))) b!7584924))

(assert (= (and b!7584609 ((_ is Concat!28940) (regOne!40703 r!22341))) b!7584925))

(assert (= (and b!7584609 ((_ is Star!20095) (regOne!40703 r!22341))) b!7584926))

(assert (= (and b!7584609 ((_ is Union!20095) (regOne!40703 r!22341))) b!7584927))

(declare-fun b!7584928 () Bool)

(declare-fun e!4514199 () Bool)

(assert (=> b!7584928 (= e!4514199 tp_is_empty!50545)))

(declare-fun b!7584930 () Bool)

(declare-fun tp!2210578 () Bool)

(assert (=> b!7584930 (= e!4514199 tp!2210578)))

(assert (=> b!7584609 (= tp!2210505 e!4514199)))

(declare-fun b!7584929 () Bool)

(declare-fun tp!2210581 () Bool)

(declare-fun tp!2210580 () Bool)

(assert (=> b!7584929 (= e!4514199 (and tp!2210581 tp!2210580))))

(declare-fun b!7584931 () Bool)

(declare-fun tp!2210579 () Bool)

(declare-fun tp!2210577 () Bool)

(assert (=> b!7584931 (= e!4514199 (and tp!2210579 tp!2210577))))

(assert (= (and b!7584609 ((_ is ElementMatch!20095) (regTwo!40703 r!22341))) b!7584928))

(assert (= (and b!7584609 ((_ is Concat!28940) (regTwo!40703 r!22341))) b!7584929))

(assert (= (and b!7584609 ((_ is Star!20095) (regTwo!40703 r!22341))) b!7584930))

(assert (= (and b!7584609 ((_ is Union!20095) (regTwo!40703 r!22341))) b!7584931))

(check-sat (not b!7584650) (not bm!695556) (not b!7584918) (not bm!695538) (not b!7584919) tp_is_empty!50545 (not b!7584931) (not b!7584886) (not b!7584887) (not b!7584835) (not bm!695532) (not b!7584930) (not bm!695537) (not b!7584915) (not b!7584923) (not b!7584839) (not bm!695531) (not b!7584922) (not b!7584908) (not b!7584909) (not b!7584917) (not b!7584929) (not b!7584891) (not bm!695555) (not b!7584921) (not b!7584926) (not d!2318823) (not b!7584892) (not b!7584927) (not b!7584925) (not b!7584884) (not b!7584668) (not b!7584888) (not d!2318849) (not bm!695559) (not d!2318847) (not b!7584910))
(check-sat)
