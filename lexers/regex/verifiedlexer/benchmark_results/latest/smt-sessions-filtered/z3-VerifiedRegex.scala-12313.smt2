; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691140 () Bool)

(assert start!691140)

(declare-fun b!7099953 () Bool)

(assert (=> b!7099953 true))

(declare-fun b!7099943 () Bool)

(declare-fun res!2899071 () Bool)

(declare-fun e!4267589 () Bool)

(assert (=> b!7099943 (=> (not res!2899071) (not e!4267589))))

(declare-fun e!4267590 () Bool)

(assert (=> b!7099943 (= res!2899071 e!4267590)))

(declare-fun res!2899076 () Bool)

(assert (=> b!7099943 (=> res!2899076 e!4267590)))

(declare-datatypes ((C!36008 0))(
  ( (C!36009 (val!27710 Int)) )
))
(declare-datatypes ((Regex!17869 0))(
  ( (ElementMatch!17869 (c!1324814 C!36008)) (Concat!26714 (regOne!36250 Regex!17869) (regTwo!36250 Regex!17869)) (EmptyExpr!17869) (Star!17869 (reg!18198 Regex!17869)) (EmptyLang!17869) (Union!17869 (regOne!36251 Regex!17869) (regTwo!36251 Regex!17869)) )
))
(declare-fun r!11554 () Regex!17869)

(get-info :version)

(assert (=> b!7099943 (= res!2899076 (not ((_ is Concat!26714) r!11554)))))

(declare-fun b!7099944 () Bool)

(declare-fun e!4267588 () Bool)

(declare-fun tp_is_empty!44971 () Bool)

(assert (=> b!7099944 (= e!4267588 tp_is_empty!44971)))

(declare-fun b!7099945 () Bool)

(declare-fun tp!1951675 () Bool)

(declare-fun tp!1951674 () Bool)

(assert (=> b!7099945 (= e!4267588 (and tp!1951675 tp!1951674))))

(declare-fun b!7099946 () Bool)

(declare-fun nullable!7507 (Regex!17869) Bool)

(assert (=> b!7099946 (= e!4267590 (not (nullable!7507 (regOne!36250 r!11554))))))

(declare-fun b!7099947 () Bool)

(declare-fun tp!1951673 () Bool)

(declare-fun tp!1951678 () Bool)

(assert (=> b!7099947 (= e!4267588 (and tp!1951673 tp!1951678))))

(declare-fun b!7099948 () Bool)

(declare-fun e!4267594 () Bool)

(declare-datatypes ((List!68830 0))(
  ( (Nil!68706) (Cons!68706 (h!75154 Regex!17869) (t!382641 List!68830)) )
))
(declare-datatypes ((Context!13726 0))(
  ( (Context!13727 (exprs!7363 List!68830)) )
))
(declare-fun auxCtx!45 () Context!13726)

(declare-fun lambda!430905 () Int)

(declare-fun forall!16779 (List!68830 Int) Bool)

(assert (=> b!7099948 (= e!4267594 (forall!16779 (exprs!7363 auxCtx!45) lambda!430905))))

(declare-fun b!7099950 () Bool)

(declare-fun e!4267591 () Bool)

(declare-fun tp!1951672 () Bool)

(assert (=> b!7099950 (= e!4267591 tp!1951672)))

(declare-fun b!7099951 () Bool)

(assert (=> b!7099951 (= e!4267589 (not e!4267594))))

(declare-fun res!2899075 () Bool)

(assert (=> b!7099951 (=> res!2899075 e!4267594)))

(declare-fun c!9994 () Context!13726)

(assert (=> b!7099951 (= res!2899075 (not (forall!16779 (exprs!7363 c!9994) lambda!430905)))))

(declare-fun lambda!430904 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun map!16210 ((InoxSet Context!13726) Int) (InoxSet Context!13726))

(assert (=> b!7099951 (= (map!16210 ((as const (Array Context!13726 Bool)) false) lambda!430904) ((as const (Array Context!13726 Bool)) false))))

(declare-datatypes ((Unit!162409 0))(
  ( (Unit!162410) )
))
(declare-fun lt!2557984 () Unit!162409)

(declare-fun lemmaMapOnEmptySetIsEmpty!4 ((InoxSet Context!13726) Int) Unit!162409)

(assert (=> b!7099951 (= lt!2557984 (lemmaMapOnEmptySetIsEmpty!4 ((as const (Array Context!13726 Bool)) false) lambda!430904))))

(declare-fun b!7099952 () Bool)

(declare-fun tp!1951677 () Bool)

(assert (=> b!7099952 (= e!4267588 tp!1951677)))

(declare-fun res!2899073 () Bool)

(declare-fun e!4267592 () Bool)

(assert (=> start!691140 (=> (not res!2899073) (not e!4267592))))

(declare-fun validRegex!9142 (Regex!17869) Bool)

(assert (=> start!691140 (= res!2899073 (validRegex!9142 r!11554))))

(assert (=> start!691140 e!4267592))

(assert (=> start!691140 e!4267588))

(declare-fun inv!87535 (Context!13726) Bool)

(assert (=> start!691140 (and (inv!87535 c!9994) e!4267591)))

(assert (=> start!691140 tp_is_empty!44971))

(declare-fun e!4267593 () Bool)

(assert (=> start!691140 (and (inv!87535 auxCtx!45) e!4267593)))

(declare-fun b!7099949 () Bool)

(declare-fun res!2899074 () Bool)

(assert (=> b!7099949 (=> (not res!2899074) (not e!4267589))))

(assert (=> b!7099949 (= res!2899074 (and (not ((_ is Concat!26714) r!11554)) (not ((_ is Star!17869) r!11554))))))

(assert (=> b!7099953 (= e!4267592 e!4267589)))

(declare-fun res!2899072 () Bool)

(assert (=> b!7099953 (=> (not res!2899072) (not e!4267589))))

(declare-fun a!1901 () C!36008)

(assert (=> b!7099953 (= res!2899072 (and (or (not ((_ is ElementMatch!17869) r!11554)) (not (= (c!1324814 r!11554) a!1901))) (not ((_ is Union!17869) r!11554))))))

(declare-fun b!7099954 () Bool)

(declare-fun tp!1951676 () Bool)

(assert (=> b!7099954 (= e!4267593 tp!1951676)))

(assert (= (and start!691140 res!2899073) b!7099953))

(assert (= (and b!7099953 res!2899072) b!7099943))

(assert (= (and b!7099943 (not res!2899076)) b!7099946))

(assert (= (and b!7099943 res!2899071) b!7099949))

(assert (= (and b!7099949 res!2899074) b!7099951))

(assert (= (and b!7099951 (not res!2899075)) b!7099948))

(assert (= (and start!691140 ((_ is ElementMatch!17869) r!11554)) b!7099944))

(assert (= (and start!691140 ((_ is Concat!26714) r!11554)) b!7099947))

(assert (= (and start!691140 ((_ is Star!17869) r!11554)) b!7099952))

(assert (= (and start!691140 ((_ is Union!17869) r!11554)) b!7099945))

(assert (= start!691140 b!7099950))

(assert (= start!691140 b!7099954))

(declare-fun m!7825908 () Bool)

(assert (=> b!7099946 m!7825908))

(declare-fun m!7825910 () Bool)

(assert (=> b!7099948 m!7825910))

(declare-fun m!7825912 () Bool)

(assert (=> b!7099951 m!7825912))

(declare-fun m!7825914 () Bool)

(assert (=> b!7099951 m!7825914))

(declare-fun m!7825916 () Bool)

(assert (=> b!7099951 m!7825916))

(declare-fun m!7825918 () Bool)

(assert (=> start!691140 m!7825918))

(declare-fun m!7825920 () Bool)

(assert (=> start!691140 m!7825920))

(declare-fun m!7825922 () Bool)

(assert (=> start!691140 m!7825922))

(check-sat (not start!691140) (not b!7099945) (not b!7099947) (not b!7099954) (not b!7099948) (not b!7099950) tp_is_empty!44971 (not b!7099952) (not b!7099951) (not b!7099946))
(check-sat)
(get-model)

(declare-fun d!2218446 () Bool)

(declare-fun nullableFct!2894 (Regex!17869) Bool)

(assert (=> d!2218446 (= (nullable!7507 (regOne!36250 r!11554)) (nullableFct!2894 (regOne!36250 r!11554)))))

(declare-fun bs!1884217 () Bool)

(assert (= bs!1884217 d!2218446))

(declare-fun m!7825924 () Bool)

(assert (=> bs!1884217 m!7825924))

(assert (=> b!7099946 d!2218446))

(declare-fun d!2218448 () Bool)

(declare-fun res!2899093 () Bool)

(declare-fun e!4267613 () Bool)

(assert (=> d!2218448 (=> res!2899093 e!4267613)))

(assert (=> d!2218448 (= res!2899093 ((_ is Nil!68706) (exprs!7363 c!9994)))))

(assert (=> d!2218448 (= (forall!16779 (exprs!7363 c!9994) lambda!430905) e!4267613)))

(declare-fun b!7099979 () Bool)

(declare-fun e!4267614 () Bool)

(assert (=> b!7099979 (= e!4267613 e!4267614)))

(declare-fun res!2899094 () Bool)

(assert (=> b!7099979 (=> (not res!2899094) (not e!4267614))))

(declare-fun dynLambda!28041 (Int Regex!17869) Bool)

(assert (=> b!7099979 (= res!2899094 (dynLambda!28041 lambda!430905 (h!75154 (exprs!7363 c!9994))))))

(declare-fun b!7099980 () Bool)

(assert (=> b!7099980 (= e!4267614 (forall!16779 (t!382641 (exprs!7363 c!9994)) lambda!430905))))

(assert (= (and d!2218448 (not res!2899093)) b!7099979))

(assert (= (and b!7099979 res!2899094) b!7099980))

(declare-fun b_lambda!271273 () Bool)

(assert (=> (not b_lambda!271273) (not b!7099979)))

(declare-fun m!7825926 () Bool)

(assert (=> b!7099979 m!7825926))

(declare-fun m!7825928 () Bool)

(assert (=> b!7099980 m!7825928))

(assert (=> b!7099951 d!2218448))

(declare-fun d!2218450 () Bool)

(declare-fun choose!54745 ((InoxSet Context!13726) Int) (InoxSet Context!13726))

(assert (=> d!2218450 (= (map!16210 ((as const (Array Context!13726 Bool)) false) lambda!430904) (choose!54745 ((as const (Array Context!13726 Bool)) false) lambda!430904))))

(declare-fun bs!1884218 () Bool)

(assert (= bs!1884218 d!2218450))

(declare-fun m!7825936 () Bool)

(assert (=> bs!1884218 m!7825936))

(assert (=> b!7099951 d!2218450))

(declare-fun d!2218454 () Bool)

(assert (=> d!2218454 (= (map!16210 ((as const (Array Context!13726 Bool)) false) lambda!430904) ((as const (Array Context!13726 Bool)) false))))

(declare-fun lt!2557987 () Unit!162409)

(declare-fun choose!54746 ((InoxSet Context!13726) Int) Unit!162409)

(assert (=> d!2218454 (= lt!2557987 (choose!54746 ((as const (Array Context!13726 Bool)) false) lambda!430904))))

(assert (=> d!2218454 (= ((as const (Array Context!13726 Bool)) false) ((as const (Array Context!13726 Bool)) false))))

(assert (=> d!2218454 (= (lemmaMapOnEmptySetIsEmpty!4 ((as const (Array Context!13726 Bool)) false) lambda!430904) lt!2557987)))

(declare-fun bs!1884223 () Bool)

(assert (= bs!1884223 d!2218454))

(assert (=> bs!1884223 m!7825914))

(declare-fun m!7825942 () Bool)

(assert (=> bs!1884223 m!7825942))

(assert (=> b!7099951 d!2218454))

(declare-fun d!2218458 () Bool)

(declare-fun res!2899100 () Bool)

(declare-fun e!4267622 () Bool)

(assert (=> d!2218458 (=> res!2899100 e!4267622)))

(assert (=> d!2218458 (= res!2899100 ((_ is Nil!68706) (exprs!7363 auxCtx!45)))))

(assert (=> d!2218458 (= (forall!16779 (exprs!7363 auxCtx!45) lambda!430905) e!4267622)))

(declare-fun b!7099990 () Bool)

(declare-fun e!4267623 () Bool)

(assert (=> b!7099990 (= e!4267622 e!4267623)))

(declare-fun res!2899101 () Bool)

(assert (=> b!7099990 (=> (not res!2899101) (not e!4267623))))

(assert (=> b!7099990 (= res!2899101 (dynLambda!28041 lambda!430905 (h!75154 (exprs!7363 auxCtx!45))))))

(declare-fun b!7099991 () Bool)

(assert (=> b!7099991 (= e!4267623 (forall!16779 (t!382641 (exprs!7363 auxCtx!45)) lambda!430905))))

(assert (= (and d!2218458 (not res!2899100)) b!7099990))

(assert (= (and b!7099990 res!2899101) b!7099991))

(declare-fun b_lambda!271275 () Bool)

(assert (=> (not b_lambda!271275) (not b!7099990)))

(declare-fun m!7825944 () Bool)

(assert (=> b!7099990 m!7825944))

(declare-fun m!7825946 () Bool)

(assert (=> b!7099991 m!7825946))

(assert (=> b!7099948 d!2218458))

(declare-fun b!7100023 () Bool)

(declare-fun e!4267651 () Bool)

(declare-fun e!4267654 () Bool)

(assert (=> b!7100023 (= e!4267651 e!4267654)))

(declare-fun c!1324825 () Bool)

(assert (=> b!7100023 (= c!1324825 ((_ is Union!17869) r!11554))))

(declare-fun bm!646414 () Bool)

(declare-fun call!646419 () Bool)

(declare-fun call!646420 () Bool)

(assert (=> bm!646414 (= call!646419 call!646420)))

(declare-fun b!7100024 () Bool)

(declare-fun e!4267652 () Bool)

(assert (=> b!7100024 (= e!4267651 e!4267652)))

(declare-fun res!2899124 () Bool)

(assert (=> b!7100024 (= res!2899124 (not (nullable!7507 (reg!18198 r!11554))))))

(assert (=> b!7100024 (=> (not res!2899124) (not e!4267652))))

(declare-fun d!2218462 () Bool)

(declare-fun res!2899123 () Bool)

(declare-fun e!4267650 () Bool)

(assert (=> d!2218462 (=> res!2899123 e!4267650)))

(assert (=> d!2218462 (= res!2899123 ((_ is ElementMatch!17869) r!11554))))

(assert (=> d!2218462 (= (validRegex!9142 r!11554) e!4267650)))

(declare-fun b!7100025 () Bool)

(declare-fun e!4267655 () Bool)

(declare-fun e!4267648 () Bool)

(assert (=> b!7100025 (= e!4267655 e!4267648)))

(declare-fun res!2899121 () Bool)

(assert (=> b!7100025 (=> (not res!2899121) (not e!4267648))))

(assert (=> b!7100025 (= res!2899121 call!646419)))

(declare-fun b!7100026 () Bool)

(assert (=> b!7100026 (= e!4267652 call!646420)))

(declare-fun b!7100027 () Bool)

(declare-fun res!2899120 () Bool)

(assert (=> b!7100027 (=> res!2899120 e!4267655)))

(assert (=> b!7100027 (= res!2899120 (not ((_ is Concat!26714) r!11554)))))

(assert (=> b!7100027 (= e!4267654 e!4267655)))

(declare-fun b!7100028 () Bool)

(declare-fun e!4267653 () Bool)

(assert (=> b!7100028 (= e!4267653 call!646419)))

(declare-fun bm!646415 () Bool)

(declare-fun call!646421 () Bool)

(assert (=> bm!646415 (= call!646421 (validRegex!9142 (ite c!1324825 (regOne!36251 r!11554) (regTwo!36250 r!11554))))))

(declare-fun bm!646416 () Bool)

(declare-fun c!1324826 () Bool)

(assert (=> bm!646416 (= call!646420 (validRegex!9142 (ite c!1324826 (reg!18198 r!11554) (ite c!1324825 (regTwo!36251 r!11554) (regOne!36250 r!11554)))))))

(declare-fun b!7100029 () Bool)

(assert (=> b!7100029 (= e!4267648 call!646421)))

(declare-fun b!7100030 () Bool)

(assert (=> b!7100030 (= e!4267650 e!4267651)))

(assert (=> b!7100030 (= c!1324826 ((_ is Star!17869) r!11554))))

(declare-fun b!7100031 () Bool)

(declare-fun res!2899122 () Bool)

(assert (=> b!7100031 (=> (not res!2899122) (not e!4267653))))

(assert (=> b!7100031 (= res!2899122 call!646421)))

(assert (=> b!7100031 (= e!4267654 e!4267653)))

(assert (= (and d!2218462 (not res!2899123)) b!7100030))

(assert (= (and b!7100030 c!1324826) b!7100024))

(assert (= (and b!7100030 (not c!1324826)) b!7100023))

(assert (= (and b!7100024 res!2899124) b!7100026))

(assert (= (and b!7100023 c!1324825) b!7100031))

(assert (= (and b!7100023 (not c!1324825)) b!7100027))

(assert (= (and b!7100031 res!2899122) b!7100028))

(assert (= (and b!7100027 (not res!2899120)) b!7100025))

(assert (= (and b!7100025 res!2899121) b!7100029))

(assert (= (or b!7100031 b!7100029) bm!646415))

(assert (= (or b!7100028 b!7100025) bm!646414))

(assert (= (or b!7100026 bm!646414) bm!646416))

(declare-fun m!7825962 () Bool)

(assert (=> b!7100024 m!7825962))

(declare-fun m!7825964 () Bool)

(assert (=> bm!646415 m!7825964))

(declare-fun m!7825966 () Bool)

(assert (=> bm!646416 m!7825966))

(assert (=> start!691140 d!2218462))

(declare-fun bs!1884230 () Bool)

(declare-fun d!2218472 () Bool)

(assert (= bs!1884230 (and d!2218472 b!7099951)))

(declare-fun lambda!430912 () Int)

(assert (=> bs!1884230 (= lambda!430912 lambda!430905)))

(assert (=> d!2218472 (= (inv!87535 c!9994) (forall!16779 (exprs!7363 c!9994) lambda!430912))))

(declare-fun bs!1884231 () Bool)

(assert (= bs!1884231 d!2218472))

(declare-fun m!7825972 () Bool)

(assert (=> bs!1884231 m!7825972))

(assert (=> start!691140 d!2218472))

(declare-fun bs!1884232 () Bool)

(declare-fun d!2218478 () Bool)

(assert (= bs!1884232 (and d!2218478 b!7099951)))

(declare-fun lambda!430913 () Int)

(assert (=> bs!1884232 (= lambda!430913 lambda!430905)))

(declare-fun bs!1884233 () Bool)

(assert (= bs!1884233 (and d!2218478 d!2218472)))

(assert (=> bs!1884233 (= lambda!430913 lambda!430912)))

(assert (=> d!2218478 (= (inv!87535 auxCtx!45) (forall!16779 (exprs!7363 auxCtx!45) lambda!430913))))

(declare-fun bs!1884234 () Bool)

(assert (= bs!1884234 d!2218478))

(declare-fun m!7825974 () Bool)

(assert (=> bs!1884234 m!7825974))

(assert (=> start!691140 d!2218478))

(declare-fun e!4267666 () Bool)

(assert (=> b!7099945 (= tp!1951675 e!4267666)))

(declare-fun b!7100073 () Bool)

(assert (=> b!7100073 (= e!4267666 tp_is_empty!44971)))

(declare-fun b!7100075 () Bool)

(declare-fun tp!1951732 () Bool)

(assert (=> b!7100075 (= e!4267666 tp!1951732)))

(declare-fun b!7100076 () Bool)

(declare-fun tp!1951735 () Bool)

(declare-fun tp!1951734 () Bool)

(assert (=> b!7100076 (= e!4267666 (and tp!1951735 tp!1951734))))

(declare-fun b!7100074 () Bool)

(declare-fun tp!1951736 () Bool)

(declare-fun tp!1951733 () Bool)

(assert (=> b!7100074 (= e!4267666 (and tp!1951736 tp!1951733))))

(assert (= (and b!7099945 ((_ is ElementMatch!17869) (regOne!36251 r!11554))) b!7100073))

(assert (= (and b!7099945 ((_ is Concat!26714) (regOne!36251 r!11554))) b!7100074))

(assert (= (and b!7099945 ((_ is Star!17869) (regOne!36251 r!11554))) b!7100075))

(assert (= (and b!7099945 ((_ is Union!17869) (regOne!36251 r!11554))) b!7100076))

(declare-fun e!4267667 () Bool)

(assert (=> b!7099945 (= tp!1951674 e!4267667)))

(declare-fun b!7100077 () Bool)

(assert (=> b!7100077 (= e!4267667 tp_is_empty!44971)))

(declare-fun b!7100079 () Bool)

(declare-fun tp!1951737 () Bool)

(assert (=> b!7100079 (= e!4267667 tp!1951737)))

(declare-fun b!7100080 () Bool)

(declare-fun tp!1951740 () Bool)

(declare-fun tp!1951739 () Bool)

(assert (=> b!7100080 (= e!4267667 (and tp!1951740 tp!1951739))))

(declare-fun b!7100078 () Bool)

(declare-fun tp!1951741 () Bool)

(declare-fun tp!1951738 () Bool)

(assert (=> b!7100078 (= e!4267667 (and tp!1951741 tp!1951738))))

(assert (= (and b!7099945 ((_ is ElementMatch!17869) (regTwo!36251 r!11554))) b!7100077))

(assert (= (and b!7099945 ((_ is Concat!26714) (regTwo!36251 r!11554))) b!7100078))

(assert (= (and b!7099945 ((_ is Star!17869) (regTwo!36251 r!11554))) b!7100079))

(assert (= (and b!7099945 ((_ is Union!17869) (regTwo!36251 r!11554))) b!7100080))

(declare-fun e!4267668 () Bool)

(assert (=> b!7099952 (= tp!1951677 e!4267668)))

(declare-fun b!7100081 () Bool)

(assert (=> b!7100081 (= e!4267668 tp_is_empty!44971)))

(declare-fun b!7100083 () Bool)

(declare-fun tp!1951742 () Bool)

(assert (=> b!7100083 (= e!4267668 tp!1951742)))

(declare-fun b!7100084 () Bool)

(declare-fun tp!1951745 () Bool)

(declare-fun tp!1951744 () Bool)

(assert (=> b!7100084 (= e!4267668 (and tp!1951745 tp!1951744))))

(declare-fun b!7100082 () Bool)

(declare-fun tp!1951746 () Bool)

(declare-fun tp!1951743 () Bool)

(assert (=> b!7100082 (= e!4267668 (and tp!1951746 tp!1951743))))

(assert (= (and b!7099952 ((_ is ElementMatch!17869) (reg!18198 r!11554))) b!7100081))

(assert (= (and b!7099952 ((_ is Concat!26714) (reg!18198 r!11554))) b!7100082))

(assert (= (and b!7099952 ((_ is Star!17869) (reg!18198 r!11554))) b!7100083))

(assert (= (and b!7099952 ((_ is Union!17869) (reg!18198 r!11554))) b!7100084))

(declare-fun e!4267669 () Bool)

(assert (=> b!7099947 (= tp!1951673 e!4267669)))

(declare-fun b!7100085 () Bool)

(assert (=> b!7100085 (= e!4267669 tp_is_empty!44971)))

(declare-fun b!7100087 () Bool)

(declare-fun tp!1951747 () Bool)

(assert (=> b!7100087 (= e!4267669 tp!1951747)))

(declare-fun b!7100088 () Bool)

(declare-fun tp!1951750 () Bool)

(declare-fun tp!1951749 () Bool)

(assert (=> b!7100088 (= e!4267669 (and tp!1951750 tp!1951749))))

(declare-fun b!7100086 () Bool)

(declare-fun tp!1951751 () Bool)

(declare-fun tp!1951748 () Bool)

(assert (=> b!7100086 (= e!4267669 (and tp!1951751 tp!1951748))))

(assert (= (and b!7099947 ((_ is ElementMatch!17869) (regOne!36250 r!11554))) b!7100085))

(assert (= (and b!7099947 ((_ is Concat!26714) (regOne!36250 r!11554))) b!7100086))

(assert (= (and b!7099947 ((_ is Star!17869) (regOne!36250 r!11554))) b!7100087))

(assert (= (and b!7099947 ((_ is Union!17869) (regOne!36250 r!11554))) b!7100088))

(declare-fun e!4267670 () Bool)

(assert (=> b!7099947 (= tp!1951678 e!4267670)))

(declare-fun b!7100089 () Bool)

(assert (=> b!7100089 (= e!4267670 tp_is_empty!44971)))

(declare-fun b!7100091 () Bool)

(declare-fun tp!1951752 () Bool)

(assert (=> b!7100091 (= e!4267670 tp!1951752)))

(declare-fun b!7100092 () Bool)

(declare-fun tp!1951755 () Bool)

(declare-fun tp!1951754 () Bool)

(assert (=> b!7100092 (= e!4267670 (and tp!1951755 tp!1951754))))

(declare-fun b!7100090 () Bool)

(declare-fun tp!1951756 () Bool)

(declare-fun tp!1951753 () Bool)

(assert (=> b!7100090 (= e!4267670 (and tp!1951756 tp!1951753))))

(assert (= (and b!7099947 ((_ is ElementMatch!17869) (regTwo!36250 r!11554))) b!7100089))

(assert (= (and b!7099947 ((_ is Concat!26714) (regTwo!36250 r!11554))) b!7100090))

(assert (= (and b!7099947 ((_ is Star!17869) (regTwo!36250 r!11554))) b!7100091))

(assert (= (and b!7099947 ((_ is Union!17869) (regTwo!36250 r!11554))) b!7100092))

(declare-fun b!7100097 () Bool)

(declare-fun e!4267673 () Bool)

(declare-fun tp!1951761 () Bool)

(declare-fun tp!1951762 () Bool)

(assert (=> b!7100097 (= e!4267673 (and tp!1951761 tp!1951762))))

(assert (=> b!7099954 (= tp!1951676 e!4267673)))

(assert (= (and b!7099954 ((_ is Cons!68706) (exprs!7363 auxCtx!45))) b!7100097))

(declare-fun b!7100098 () Bool)

(declare-fun e!4267674 () Bool)

(declare-fun tp!1951763 () Bool)

(declare-fun tp!1951764 () Bool)

(assert (=> b!7100098 (= e!4267674 (and tp!1951763 tp!1951764))))

(assert (=> b!7099950 (= tp!1951672 e!4267674)))

(assert (= (and b!7099950 ((_ is Cons!68706) (exprs!7363 c!9994))) b!7100098))

(declare-fun b_lambda!271285 () Bool)

(assert (= b_lambda!271275 (or b!7099951 b_lambda!271285)))

(declare-fun bs!1884235 () Bool)

(declare-fun d!2218480 () Bool)

(assert (= bs!1884235 (and d!2218480 b!7099951)))

(assert (=> bs!1884235 (= (dynLambda!28041 lambda!430905 (h!75154 (exprs!7363 auxCtx!45))) (validRegex!9142 (h!75154 (exprs!7363 auxCtx!45))))))

(declare-fun m!7825976 () Bool)

(assert (=> bs!1884235 m!7825976))

(assert (=> b!7099990 d!2218480))

(declare-fun b_lambda!271287 () Bool)

(assert (= b_lambda!271273 (or b!7099951 b_lambda!271287)))

(declare-fun bs!1884236 () Bool)

(declare-fun d!2218482 () Bool)

(assert (= bs!1884236 (and d!2218482 b!7099951)))

(assert (=> bs!1884236 (= (dynLambda!28041 lambda!430905 (h!75154 (exprs!7363 c!9994))) (validRegex!9142 (h!75154 (exprs!7363 c!9994))))))

(declare-fun m!7825978 () Bool)

(assert (=> bs!1884236 m!7825978))

(assert (=> b!7099979 d!2218482))

(check-sat (not b!7099980) (not b!7100086) (not bm!646416) (not b!7099991) (not b!7100083) (not b!7100076) (not d!2218472) (not d!2218454) (not b!7100091) (not d!2218446) (not bm!646415) (not b!7100090) (not b!7100087) (not b!7100074) (not bs!1884236) (not b!7100092) (not b!7100075) (not b!7100078) (not d!2218478) (not d!2218450) tp_is_empty!44971 (not b_lambda!271287) (not b!7100098) (not b!7100024) (not b!7100088) (not bs!1884235) (not b!7100082) (not b!7100080) (not b_lambda!271285) (not b!7100079) (not b!7100084) (not b!7100097))
(check-sat)
