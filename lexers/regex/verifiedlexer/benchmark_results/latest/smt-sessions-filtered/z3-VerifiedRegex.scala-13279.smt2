; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722450 () Bool)

(assert start!722450)

(declare-fun setIsEmpty!56443 () Bool)

(declare-fun setRes!56443 () Bool)

(assert (=> setIsEmpty!56443 setRes!56443))

(declare-fun res!2985186 () Bool)

(declare-fun e!4440004 () Bool)

(assert (=> start!722450 (=> (not res!2985186) (not e!4440004))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39140 0))(
  ( (C!39141 (val!29944 Int)) )
))
(declare-datatypes ((Regex!19433 0))(
  ( (ElementMatch!19433 (c!1376313 C!39140)) (Concat!28278 (regOne!39378 Regex!19433) (regTwo!39378 Regex!19433)) (EmptyExpr!19433) (Star!19433 (reg!19762 Regex!19433)) (EmptyLang!19433) (Union!19433 (regOne!39379 Regex!19433) (regTwo!39379 Regex!19433)) )
))
(declare-datatypes ((List!72078 0))(
  ( (Nil!71954) (Cons!71954 (h!78402 Regex!19433) (t!386639 List!72078)) )
))
(declare-datatypes ((Context!16746 0))(
  ( (Context!16747 (exprs!8873 List!72078)) )
))
(declare-fun z!3488 () (InoxSet Context!16746))

(declare-datatypes ((List!72079 0))(
  ( (Nil!71955) (Cons!71955 (h!78403 C!39140) (t!386640 List!72079)) )
))
(declare-fun s!7945 () List!72079)

(declare-fun lt!2619169 () Context!16746)

(get-info :version)

(assert (=> start!722450 (= res!2985186 (and (= z!3488 (store ((as const (Array Context!16746 Bool)) false) lt!2619169 true)) ((_ is Cons!71955) s!7945)))))

(assert (=> start!722450 (= lt!2619169 (Context!16747 Nil!71954))))

(assert (=> start!722450 e!4440004))

(declare-fun condSetEmpty!56443 () Bool)

(assert (=> start!722450 (= condSetEmpty!56443 (= z!3488 ((as const (Array Context!16746 Bool)) false)))))

(assert (=> start!722450 setRes!56443))

(declare-fun e!4440005 () Bool)

(assert (=> start!722450 e!4440005))

(declare-fun tp!2145278 () Bool)

(declare-fun setElem!56443 () Context!16746)

(declare-fun setNonEmpty!56443 () Bool)

(declare-fun e!4440003 () Bool)

(declare-fun inv!91943 (Context!16746) Bool)

(assert (=> setNonEmpty!56443 (= setRes!56443 (and tp!2145278 (inv!91943 setElem!56443) e!4440003))))

(declare-fun setRest!56443 () (InoxSet Context!16746))

(assert (=> setNonEmpty!56443 (= z!3488 ((_ map or) (store ((as const (Array Context!16746 Bool)) false) setElem!56443 true) setRest!56443))))

(declare-fun b!7433829 () Bool)

(declare-fun derivationStepZipperUp!2829 (Context!16746 C!39140) (InoxSet Context!16746))

(assert (=> b!7433829 (= e!4440004 (not (= (derivationStepZipperUp!2829 lt!2619169 (h!78403 s!7945)) ((as const (Array Context!16746 Bool)) false))))))

(declare-fun b!7433830 () Bool)

(declare-fun tp!2145280 () Bool)

(assert (=> b!7433830 (= e!4440003 tp!2145280)))

(declare-fun b!7433831 () Bool)

(declare-fun tp_is_empty!49129 () Bool)

(declare-fun tp!2145279 () Bool)

(assert (=> b!7433831 (= e!4440005 (and tp_is_empty!49129 tp!2145279))))

(assert (= (and start!722450 res!2985186) b!7433829))

(assert (= (and start!722450 condSetEmpty!56443) setIsEmpty!56443))

(assert (= (and start!722450 (not condSetEmpty!56443)) setNonEmpty!56443))

(assert (= setNonEmpty!56443 b!7433830))

(assert (= (and start!722450 ((_ is Cons!71955) s!7945)) b!7433831))

(declare-fun m!8049910 () Bool)

(assert (=> start!722450 m!8049910))

(declare-fun m!8049912 () Bool)

(assert (=> setNonEmpty!56443 m!8049912))

(declare-fun m!8049914 () Bool)

(assert (=> b!7433829 m!8049914))

(check-sat tp_is_empty!49129 (not b!7433829) (not b!7433831) (not b!7433830) (not setNonEmpty!56443))
(check-sat)
(get-model)

(declare-fun d!2293952 () Bool)

(declare-fun lambda!460217 () Int)

(declare-fun forall!18215 (List!72078 Int) Bool)

(assert (=> d!2293952 (= (inv!91943 setElem!56443) (forall!18215 (exprs!8873 setElem!56443) lambda!460217))))

(declare-fun bs!1925524 () Bool)

(assert (= bs!1925524 d!2293952))

(declare-fun m!8049926 () Bool)

(assert (=> bs!1925524 m!8049926))

(assert (=> setNonEmpty!56443 d!2293952))

(declare-fun b!7433872 () Bool)

(declare-fun e!4440030 () (InoxSet Context!16746))

(declare-fun call!683184 () (InoxSet Context!16746))

(assert (=> b!7433872 (= e!4440030 call!683184)))

(declare-fun b!7433873 () Bool)

(declare-fun e!4440031 () (InoxSet Context!16746))

(assert (=> b!7433873 (= e!4440031 e!4440030)))

(declare-fun c!1376325 () Bool)

(assert (=> b!7433873 (= c!1376325 ((_ is Cons!71954) (exprs!8873 lt!2619169)))))

(declare-fun b!7433874 () Bool)

(assert (=> b!7433874 (= e!4440030 ((as const (Array Context!16746 Bool)) false))))

(declare-fun bm!683179 () Bool)

(declare-fun derivationStepZipperDown!3219 (Regex!19433 Context!16746 C!39140) (InoxSet Context!16746))

(assert (=> bm!683179 (= call!683184 (derivationStepZipperDown!3219 (h!78402 (exprs!8873 lt!2619169)) (Context!16747 (t!386639 (exprs!8873 lt!2619169))) (h!78403 s!7945)))))

(declare-fun d!2293958 () Bool)

(declare-fun c!1376324 () Bool)

(declare-fun e!4440032 () Bool)

(assert (=> d!2293958 (= c!1376324 e!4440032)))

(declare-fun res!2985192 () Bool)

(assert (=> d!2293958 (=> (not res!2985192) (not e!4440032))))

(assert (=> d!2293958 (= res!2985192 ((_ is Cons!71954) (exprs!8873 lt!2619169)))))

(assert (=> d!2293958 (= (derivationStepZipperUp!2829 lt!2619169 (h!78403 s!7945)) e!4440031)))

(declare-fun b!7433875 () Bool)

(declare-fun nullable!8471 (Regex!19433) Bool)

(assert (=> b!7433875 (= e!4440032 (nullable!8471 (h!78402 (exprs!8873 lt!2619169))))))

(declare-fun b!7433876 () Bool)

(assert (=> b!7433876 (= e!4440031 ((_ map or) call!683184 (derivationStepZipperUp!2829 (Context!16747 (t!386639 (exprs!8873 lt!2619169))) (h!78403 s!7945))))))

(assert (= (and d!2293958 res!2985192) b!7433875))

(assert (= (and d!2293958 c!1376324) b!7433876))

(assert (= (and d!2293958 (not c!1376324)) b!7433873))

(assert (= (and b!7433873 c!1376325) b!7433872))

(assert (= (and b!7433873 (not c!1376325)) b!7433874))

(assert (= (or b!7433876 b!7433872) bm!683179))

(declare-fun m!8049928 () Bool)

(assert (=> bm!683179 m!8049928))

(declare-fun m!8049930 () Bool)

(assert (=> b!7433875 m!8049930))

(declare-fun m!8049932 () Bool)

(assert (=> b!7433876 m!8049932))

(assert (=> b!7433829 d!2293958))

(declare-fun condSetEmpty!56449 () Bool)

(assert (=> setNonEmpty!56443 (= condSetEmpty!56449 (= setRest!56443 ((as const (Array Context!16746 Bool)) false)))))

(declare-fun setRes!56449 () Bool)

(assert (=> setNonEmpty!56443 (= tp!2145278 setRes!56449)))

(declare-fun setIsEmpty!56449 () Bool)

(assert (=> setIsEmpty!56449 setRes!56449))

(declare-fun setNonEmpty!56449 () Bool)

(declare-fun setElem!56449 () Context!16746)

(declare-fun e!4440035 () Bool)

(declare-fun tp!2145300 () Bool)

(assert (=> setNonEmpty!56449 (= setRes!56449 (and tp!2145300 (inv!91943 setElem!56449) e!4440035))))

(declare-fun setRest!56449 () (InoxSet Context!16746))

(assert (=> setNonEmpty!56449 (= setRest!56443 ((_ map or) (store ((as const (Array Context!16746 Bool)) false) setElem!56449 true) setRest!56449))))

(declare-fun b!7433881 () Bool)

(declare-fun tp!2145301 () Bool)

(assert (=> b!7433881 (= e!4440035 tp!2145301)))

(assert (= (and setNonEmpty!56443 condSetEmpty!56449) setIsEmpty!56449))

(assert (= (and setNonEmpty!56443 (not condSetEmpty!56449)) setNonEmpty!56449))

(assert (= setNonEmpty!56449 b!7433881))

(declare-fun m!8049934 () Bool)

(assert (=> setNonEmpty!56449 m!8049934))

(declare-fun b!7433886 () Bool)

(declare-fun e!4440038 () Bool)

(declare-fun tp!2145306 () Bool)

(declare-fun tp!2145307 () Bool)

(assert (=> b!7433886 (= e!4440038 (and tp!2145306 tp!2145307))))

(assert (=> b!7433830 (= tp!2145280 e!4440038)))

(assert (= (and b!7433830 ((_ is Cons!71954) (exprs!8873 setElem!56443))) b!7433886))

(declare-fun b!7433891 () Bool)

(declare-fun e!4440041 () Bool)

(declare-fun tp!2145310 () Bool)

(assert (=> b!7433891 (= e!4440041 (and tp_is_empty!49129 tp!2145310))))

(assert (=> b!7433831 (= tp!2145279 e!4440041)))

(assert (= (and b!7433831 ((_ is Cons!71955) (t!386640 s!7945))) b!7433891))

(check-sat tp_is_empty!49129 (not b!7433881) (not b!7433891) (not b!7433876) (not setNonEmpty!56449) (not b!7433875) (not bm!683179) (not b!7433886) (not d!2293952))
(check-sat)
