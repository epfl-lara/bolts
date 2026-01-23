; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720432 () Bool)

(assert start!720432)

(declare-fun res!2978418 () Bool)

(declare-fun e!4420606 () Bool)

(assert (=> start!720432 (=> (not res!2978418) (not e!4420606))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38992 0))(
  ( (C!38993 (val!29870 Int)) )
))
(declare-datatypes ((Regex!19359 0))(
  ( (ElementMatch!19359 (c!1372717 C!38992)) (Concat!28204 (regOne!39230 Regex!19359) (regTwo!39230 Regex!19359)) (EmptyExpr!19359) (Star!19359 (reg!19688 Regex!19359)) (EmptyLang!19359) (Union!19359 (regOne!39231 Regex!19359) (regTwo!39231 Regex!19359)) )
))
(declare-datatypes ((List!71879 0))(
  ( (Nil!71755) (Cons!71755 (h!78203 Regex!19359) (t!386430 List!71879)) )
))
(declare-datatypes ((Context!16598 0))(
  ( (Context!16599 (exprs!8799 List!71879)) )
))
(declare-fun z!3451 () (InoxSet Context!16598))

(declare-fun c!10532 () Context!16598)

(assert (=> start!720432 (= res!2978418 (= z!3451 (store ((as const (Array Context!16598 Bool)) false) c!10532 true)))))

(assert (=> start!720432 e!4420606))

(declare-fun condSetEmpty!55865 () Bool)

(assert (=> start!720432 (= condSetEmpty!55865 (= z!3451 ((as const (Array Context!16598 Bool)) false)))))

(declare-fun setRes!55865 () Bool)

(assert (=> start!720432 setRes!55865))

(declare-fun e!4420605 () Bool)

(declare-fun inv!91758 (Context!16598) Bool)

(assert (=> start!720432 (and (inv!91758 c!10532) e!4420605)))

(declare-fun tp_is_empty!48981 () Bool)

(assert (=> start!720432 tp_is_empty!48981))

(declare-fun e!4420604 () Bool)

(assert (=> start!720432 e!4420604))

(declare-fun b!7385247 () Bool)

(declare-fun res!2978417 () Bool)

(declare-fun e!4420602 () Bool)

(assert (=> b!7385247 (=> (not res!2978417) (not e!4420602))))

(declare-fun lt!2617665 () (InoxSet Context!16598))

(assert (=> b!7385247 (= res!2978417 (not (= lt!2617665 ((as const (Array Context!16598 Bool)) false))))))

(declare-fun b!7385248 () Bool)

(declare-fun tp!2101143 () Bool)

(assert (=> b!7385248 (= e!4420604 (and tp_is_empty!48981 tp!2101143))))

(declare-fun b!7385249 () Bool)

(declare-fun res!2978413 () Bool)

(assert (=> b!7385249 (=> (not res!2978413) (not e!4420606))))

(declare-fun isEmpty!40999 (List!71879) Bool)

(assert (=> b!7385249 (= res!2978413 (not (isEmpty!40999 (exprs!8799 c!10532))))))

(declare-fun b!7385250 () Bool)

(declare-fun res!2978416 () Bool)

(assert (=> b!7385250 (=> (not res!2978416) (not e!4420606))))

(declare-fun tail!14766 (List!71879) List!71879)

(assert (=> b!7385250 (= res!2978416 (isEmpty!40999 (tail!14766 (exprs!8799 c!10532))))))

(declare-fun b!7385251 () Bool)

(assert (=> b!7385251 (= e!4420606 e!4420602)))

(declare-fun res!2978412 () Bool)

(assert (=> b!7385251 (=> (not res!2978412) (not e!4420602))))

(declare-datatypes ((List!71880 0))(
  ( (Nil!71756) (Cons!71756 (h!78204 C!38992) (t!386431 List!71880)) )
))
(declare-fun s!7927 () List!71880)

(declare-fun derivationStepZipperUp!2765 (Context!16598 C!38992) (InoxSet Context!16598))

(assert (=> b!7385251 (= res!2978412 (= (derivationStepZipperUp!2765 c!10532 (h!78204 s!7927)) ((as const (Array Context!16598 Bool)) false)))))

(declare-fun derivationStepZipper!3645 ((InoxSet Context!16598) C!38992) (InoxSet Context!16598))

(assert (=> b!7385251 (= lt!2617665 (derivationStepZipper!3645 z!3451 (h!78204 s!7927)))))

(declare-fun b!7385252 () Bool)

(declare-fun e!4420603 () Bool)

(declare-fun tp!2101146 () Bool)

(assert (=> b!7385252 (= e!4420603 tp!2101146)))

(declare-fun setIsEmpty!55865 () Bool)

(assert (=> setIsEmpty!55865 setRes!55865))

(declare-fun b!7385253 () Bool)

(declare-datatypes ((List!71881 0))(
  ( (Nil!71757) (Cons!71757 (h!78205 Context!16598) (t!386432 List!71881)) )
))
(declare-fun toList!11724 ((InoxSet Context!16598)) List!71881)

(assert (=> b!7385253 (= e!4420602 (= (toList!11724 lt!2617665) Nil!71757))))

(declare-fun b!7385254 () Bool)

(declare-fun res!2978414 () Bool)

(assert (=> b!7385254 (=> (not res!2978414) (not e!4420606))))

(declare-fun a!2228 () C!38992)

(get-info :version)

(assert (=> b!7385254 (= res!2978414 (and (or (not ((_ is Cons!71756) s!7927)) (not (= (h!78204 s!7927) a!2228))) ((_ is Cons!71756) s!7927) (not (= (h!78204 s!7927) a!2228))))))

(declare-fun b!7385255 () Bool)

(declare-fun tp!2101144 () Bool)

(assert (=> b!7385255 (= e!4420605 tp!2101144)))

(declare-fun b!7385256 () Bool)

(declare-fun res!2978415 () Bool)

(assert (=> b!7385256 (=> (not res!2978415) (not e!4420606))))

(declare-fun head!15103 (List!71879) Regex!19359)

(assert (=> b!7385256 (= res!2978415 (= (head!15103 (exprs!8799 c!10532)) (ElementMatch!19359 a!2228)))))

(declare-fun setNonEmpty!55865 () Bool)

(declare-fun tp!2101145 () Bool)

(declare-fun setElem!55865 () Context!16598)

(assert (=> setNonEmpty!55865 (= setRes!55865 (and tp!2101145 (inv!91758 setElem!55865) e!4420603))))

(declare-fun setRest!55865 () (InoxSet Context!16598))

(assert (=> setNonEmpty!55865 (= z!3451 ((_ map or) (store ((as const (Array Context!16598 Bool)) false) setElem!55865 true) setRest!55865))))

(assert (= (and start!720432 res!2978418) b!7385249))

(assert (= (and b!7385249 res!2978413) b!7385256))

(assert (= (and b!7385256 res!2978415) b!7385250))

(assert (= (and b!7385250 res!2978416) b!7385254))

(assert (= (and b!7385254 res!2978414) b!7385251))

(assert (= (and b!7385251 res!2978412) b!7385247))

(assert (= (and b!7385247 res!2978417) b!7385253))

(assert (= (and start!720432 condSetEmpty!55865) setIsEmpty!55865))

(assert (= (and start!720432 (not condSetEmpty!55865)) setNonEmpty!55865))

(assert (= setNonEmpty!55865 b!7385252))

(assert (= start!720432 b!7385255))

(assert (= (and start!720432 ((_ is Cons!71756) s!7927)) b!7385248))

(declare-fun m!8033816 () Bool)

(assert (=> setNonEmpty!55865 m!8033816))

(declare-fun m!8033818 () Bool)

(assert (=> b!7385251 m!8033818))

(declare-fun m!8033820 () Bool)

(assert (=> b!7385251 m!8033820))

(declare-fun m!8033822 () Bool)

(assert (=> b!7385249 m!8033822))

(declare-fun m!8033824 () Bool)

(assert (=> b!7385250 m!8033824))

(assert (=> b!7385250 m!8033824))

(declare-fun m!8033826 () Bool)

(assert (=> b!7385250 m!8033826))

(declare-fun m!8033828 () Bool)

(assert (=> start!720432 m!8033828))

(declare-fun m!8033830 () Bool)

(assert (=> start!720432 m!8033830))

(declare-fun m!8033832 () Bool)

(assert (=> b!7385256 m!8033832))

(declare-fun m!8033834 () Bool)

(assert (=> b!7385253 m!8033834))

(check-sat tp_is_empty!48981 (not b!7385251) (not start!720432) (not b!7385252) (not b!7385249) (not setNonEmpty!55865) (not b!7385248) (not b!7385255) (not b!7385250) (not b!7385253) (not b!7385256))
(check-sat)
(get-model)

(declare-fun d!2286399 () Bool)

(assert (=> d!2286399 (= (isEmpty!40999 (tail!14766 (exprs!8799 c!10532))) ((_ is Nil!71755) (tail!14766 (exprs!8799 c!10532))))))

(assert (=> b!7385250 d!2286399))

(declare-fun d!2286401 () Bool)

(assert (=> d!2286401 (= (tail!14766 (exprs!8799 c!10532)) (t!386430 (exprs!8799 c!10532)))))

(assert (=> b!7385250 d!2286401))

(declare-fun d!2286403 () Bool)

(declare-fun e!4420609 () Bool)

(assert (=> d!2286403 e!4420609))

(declare-fun res!2978421 () Bool)

(assert (=> d!2286403 (=> (not res!2978421) (not e!4420609))))

(declare-fun lt!2617668 () List!71881)

(declare-fun noDuplicate!3088 (List!71881) Bool)

(assert (=> d!2286403 (= res!2978421 (noDuplicate!3088 lt!2617668))))

(declare-fun choose!57363 ((InoxSet Context!16598)) List!71881)

(assert (=> d!2286403 (= lt!2617668 (choose!57363 lt!2617665))))

(assert (=> d!2286403 (= (toList!11724 lt!2617665) lt!2617668)))

(declare-fun b!7385259 () Bool)

(declare-fun content!15200 (List!71881) (InoxSet Context!16598))

(assert (=> b!7385259 (= e!4420609 (= (content!15200 lt!2617668) lt!2617665))))

(assert (= (and d!2286403 res!2978421) b!7385259))

(declare-fun m!8033836 () Bool)

(assert (=> d!2286403 m!8033836))

(declare-fun m!8033838 () Bool)

(assert (=> d!2286403 m!8033838))

(declare-fun m!8033840 () Bool)

(assert (=> b!7385259 m!8033840))

(assert (=> b!7385253 d!2286403))

(declare-fun d!2286405 () Bool)

(assert (=> d!2286405 (= (isEmpty!40999 (exprs!8799 c!10532)) ((_ is Nil!71755) (exprs!8799 c!10532)))))

(assert (=> b!7385249 d!2286405))

(declare-fun d!2286407 () Bool)

(declare-fun lambda!458878 () Int)

(declare-fun forall!18142 (List!71879 Int) Bool)

(assert (=> d!2286407 (= (inv!91758 setElem!55865) (forall!18142 (exprs!8799 setElem!55865) lambda!458878))))

(declare-fun bs!1921912 () Bool)

(assert (= bs!1921912 d!2286407))

(declare-fun m!8033854 () Bool)

(assert (=> bs!1921912 m!8033854))

(assert (=> setNonEmpty!55865 d!2286407))

(declare-fun bs!1921913 () Bool)

(declare-fun d!2286419 () Bool)

(assert (= bs!1921913 (and d!2286419 d!2286407)))

(declare-fun lambda!458879 () Int)

(assert (=> bs!1921913 (= lambda!458879 lambda!458878)))

(assert (=> d!2286419 (= (inv!91758 c!10532) (forall!18142 (exprs!8799 c!10532) lambda!458879))))

(declare-fun bs!1921914 () Bool)

(assert (= bs!1921914 d!2286419))

(declare-fun m!8033856 () Bool)

(assert (=> bs!1921914 m!8033856))

(assert (=> start!720432 d!2286419))

(declare-fun d!2286421 () Bool)

(assert (=> d!2286421 (= (head!15103 (exprs!8799 c!10532)) (h!78203 (exprs!8799 c!10532)))))

(assert (=> b!7385256 d!2286421))

(declare-fun b!7385288 () Bool)

(declare-fun e!4420629 () Bool)

(declare-fun nullable!8414 (Regex!19359) Bool)

(assert (=> b!7385288 (= e!4420629 (nullable!8414 (h!78203 (exprs!8799 c!10532))))))

(declare-fun e!4420630 () (InoxSet Context!16598))

(declare-fun call!679775 () (InoxSet Context!16598))

(declare-fun b!7385289 () Bool)

(assert (=> b!7385289 (= e!4420630 ((_ map or) call!679775 (derivationStepZipperUp!2765 (Context!16599 (t!386430 (exprs!8799 c!10532))) (h!78204 s!7927))))))

(declare-fun b!7385290 () Bool)

(declare-fun e!4420628 () (InoxSet Context!16598))

(assert (=> b!7385290 (= e!4420628 call!679775)))

(declare-fun d!2286423 () Bool)

(declare-fun c!1372730 () Bool)

(assert (=> d!2286423 (= c!1372730 e!4420629)))

(declare-fun res!2978430 () Bool)

(assert (=> d!2286423 (=> (not res!2978430) (not e!4420629))))

(assert (=> d!2286423 (= res!2978430 ((_ is Cons!71755) (exprs!8799 c!10532)))))

(assert (=> d!2286423 (= (derivationStepZipperUp!2765 c!10532 (h!78204 s!7927)) e!4420630)))

(declare-fun b!7385291 () Bool)

(assert (=> b!7385291 (= e!4420628 ((as const (Array Context!16598 Bool)) false))))

(declare-fun b!7385292 () Bool)

(assert (=> b!7385292 (= e!4420630 e!4420628)))

(declare-fun c!1372731 () Bool)

(assert (=> b!7385292 (= c!1372731 ((_ is Cons!71755) (exprs!8799 c!10532)))))

(declare-fun bm!679770 () Bool)

(declare-fun derivationStepZipperDown!3166 (Regex!19359 Context!16598 C!38992) (InoxSet Context!16598))

(assert (=> bm!679770 (= call!679775 (derivationStepZipperDown!3166 (h!78203 (exprs!8799 c!10532)) (Context!16599 (t!386430 (exprs!8799 c!10532))) (h!78204 s!7927)))))

(assert (= (and d!2286423 res!2978430) b!7385288))

(assert (= (and d!2286423 c!1372730) b!7385289))

(assert (= (and d!2286423 (not c!1372730)) b!7385292))

(assert (= (and b!7385292 c!1372731) b!7385290))

(assert (= (and b!7385292 (not c!1372731)) b!7385291))

(assert (= (or b!7385289 b!7385290) bm!679770))

(declare-fun m!8033858 () Bool)

(assert (=> b!7385288 m!8033858))

(declare-fun m!8033860 () Bool)

(assert (=> b!7385289 m!8033860))

(declare-fun m!8033862 () Bool)

(assert (=> bm!679770 m!8033862))

(assert (=> b!7385251 d!2286423))

(declare-fun d!2286425 () Bool)

(assert (=> d!2286425 true))

(declare-fun lambda!458882 () Int)

(declare-fun flatMap!3174 ((InoxSet Context!16598) Int) (InoxSet Context!16598))

(assert (=> d!2286425 (= (derivationStepZipper!3645 z!3451 (h!78204 s!7927)) (flatMap!3174 z!3451 lambda!458882))))

(declare-fun bs!1921915 () Bool)

(assert (= bs!1921915 d!2286425))

(declare-fun m!8033864 () Bool)

(assert (=> bs!1921915 m!8033864))

(assert (=> b!7385251 d!2286425))

(declare-fun b!7385299 () Bool)

(declare-fun e!4420633 () Bool)

(declare-fun tp!2101149 () Bool)

(assert (=> b!7385299 (= e!4420633 (and tp_is_empty!48981 tp!2101149))))

(assert (=> b!7385248 (= tp!2101143 e!4420633)))

(assert (= (and b!7385248 ((_ is Cons!71756) (t!386431 s!7927))) b!7385299))

(declare-fun condSetEmpty!55868 () Bool)

(assert (=> setNonEmpty!55865 (= condSetEmpty!55868 (= setRest!55865 ((as const (Array Context!16598 Bool)) false)))))

(declare-fun setRes!55868 () Bool)

(assert (=> setNonEmpty!55865 (= tp!2101145 setRes!55868)))

(declare-fun setIsEmpty!55868 () Bool)

(assert (=> setIsEmpty!55868 setRes!55868))

(declare-fun e!4420636 () Bool)

(declare-fun setNonEmpty!55868 () Bool)

(declare-fun setElem!55868 () Context!16598)

(declare-fun tp!2101155 () Bool)

(assert (=> setNonEmpty!55868 (= setRes!55868 (and tp!2101155 (inv!91758 setElem!55868) e!4420636))))

(declare-fun setRest!55868 () (InoxSet Context!16598))

(assert (=> setNonEmpty!55868 (= setRest!55865 ((_ map or) (store ((as const (Array Context!16598 Bool)) false) setElem!55868 true) setRest!55868))))

(declare-fun b!7385304 () Bool)

(declare-fun tp!2101154 () Bool)

(assert (=> b!7385304 (= e!4420636 tp!2101154)))

(assert (= (and setNonEmpty!55865 condSetEmpty!55868) setIsEmpty!55868))

(assert (= (and setNonEmpty!55865 (not condSetEmpty!55868)) setNonEmpty!55868))

(assert (= setNonEmpty!55868 b!7385304))

(declare-fun m!8033866 () Bool)

(assert (=> setNonEmpty!55868 m!8033866))

(declare-fun b!7385309 () Bool)

(declare-fun e!4420639 () Bool)

(declare-fun tp!2101160 () Bool)

(declare-fun tp!2101161 () Bool)

(assert (=> b!7385309 (= e!4420639 (and tp!2101160 tp!2101161))))

(assert (=> b!7385252 (= tp!2101146 e!4420639)))

(assert (= (and b!7385252 ((_ is Cons!71755) (exprs!8799 setElem!55865))) b!7385309))

(declare-fun b!7385310 () Bool)

(declare-fun e!4420640 () Bool)

(declare-fun tp!2101162 () Bool)

(declare-fun tp!2101163 () Bool)

(assert (=> b!7385310 (= e!4420640 (and tp!2101162 tp!2101163))))

(assert (=> b!7385255 (= tp!2101144 e!4420640)))

(assert (= (and b!7385255 ((_ is Cons!71755) (exprs!8799 c!10532))) b!7385310))

(check-sat (not b!7385310) (not b!7385288) (not d!2286425) (not b!7385299) (not setNonEmpty!55868) (not d!2286407) (not b!7385309) (not b!7385259) (not b!7385304) (not b!7385289) (not d!2286403) tp_is_empty!48981 (not bm!679770) (not d!2286419))
(check-sat)
(get-model)

(declare-fun d!2286427 () Bool)

(declare-fun c!1372736 () Bool)

(assert (=> d!2286427 (= c!1372736 ((_ is Nil!71757) lt!2617668))))

(declare-fun e!4420643 () (InoxSet Context!16598))

(assert (=> d!2286427 (= (content!15200 lt!2617668) e!4420643)))

(declare-fun b!7385315 () Bool)

(assert (=> b!7385315 (= e!4420643 ((as const (Array Context!16598 Bool)) false))))

(declare-fun b!7385316 () Bool)

(assert (=> b!7385316 (= e!4420643 ((_ map or) (store ((as const (Array Context!16598 Bool)) false) (h!78205 lt!2617668) true) (content!15200 (t!386432 lt!2617668))))))

(assert (= (and d!2286427 c!1372736) b!7385315))

(assert (= (and d!2286427 (not c!1372736)) b!7385316))

(declare-fun m!8033868 () Bool)

(assert (=> b!7385316 m!8033868))

(declare-fun m!8033870 () Bool)

(assert (=> b!7385316 m!8033870))

(assert (=> b!7385259 d!2286427))

(declare-fun b!7385317 () Bool)

(declare-fun e!4420645 () Bool)

(assert (=> b!7385317 (= e!4420645 (nullable!8414 (h!78203 (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532)))))))))

(declare-fun call!679776 () (InoxSet Context!16598))

(declare-fun e!4420646 () (InoxSet Context!16598))

(declare-fun b!7385318 () Bool)

(assert (=> b!7385318 (= e!4420646 ((_ map or) call!679776 (derivationStepZipperUp!2765 (Context!16599 (t!386430 (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532)))))) (h!78204 s!7927))))))

(declare-fun b!7385319 () Bool)

(declare-fun e!4420644 () (InoxSet Context!16598))

(assert (=> b!7385319 (= e!4420644 call!679776)))

(declare-fun d!2286429 () Bool)

(declare-fun c!1372737 () Bool)

(assert (=> d!2286429 (= c!1372737 e!4420645)))

(declare-fun res!2978431 () Bool)

(assert (=> d!2286429 (=> (not res!2978431) (not e!4420645))))

(assert (=> d!2286429 (= res!2978431 ((_ is Cons!71755) (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532))))))))

(assert (=> d!2286429 (= (derivationStepZipperUp!2765 (Context!16599 (t!386430 (exprs!8799 c!10532))) (h!78204 s!7927)) e!4420646)))

(declare-fun b!7385320 () Bool)

(assert (=> b!7385320 (= e!4420644 ((as const (Array Context!16598 Bool)) false))))

(declare-fun b!7385321 () Bool)

(assert (=> b!7385321 (= e!4420646 e!4420644)))

(declare-fun c!1372738 () Bool)

(assert (=> b!7385321 (= c!1372738 ((_ is Cons!71755) (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532))))))))

(declare-fun bm!679771 () Bool)

(assert (=> bm!679771 (= call!679776 (derivationStepZipperDown!3166 (h!78203 (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532))))) (Context!16599 (t!386430 (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532)))))) (h!78204 s!7927)))))

(assert (= (and d!2286429 res!2978431) b!7385317))

(assert (= (and d!2286429 c!1372737) b!7385318))

(assert (= (and d!2286429 (not c!1372737)) b!7385321))

(assert (= (and b!7385321 c!1372738) b!7385319))

(assert (= (and b!7385321 (not c!1372738)) b!7385320))

(assert (= (or b!7385318 b!7385319) bm!679771))

(declare-fun m!8033872 () Bool)

(assert (=> b!7385317 m!8033872))

(declare-fun m!8033874 () Bool)

(assert (=> b!7385318 m!8033874))

(declare-fun m!8033876 () Bool)

(assert (=> bm!679771 m!8033876))

(assert (=> b!7385289 d!2286429))

(declare-fun d!2286431 () Bool)

(declare-fun res!2978436 () Bool)

(declare-fun e!4420651 () Bool)

(assert (=> d!2286431 (=> res!2978436 e!4420651)))

(assert (=> d!2286431 (= res!2978436 ((_ is Nil!71755) (exprs!8799 setElem!55865)))))

(assert (=> d!2286431 (= (forall!18142 (exprs!8799 setElem!55865) lambda!458878) e!4420651)))

(declare-fun b!7385326 () Bool)

(declare-fun e!4420652 () Bool)

(assert (=> b!7385326 (= e!4420651 e!4420652)))

(declare-fun res!2978437 () Bool)

(assert (=> b!7385326 (=> (not res!2978437) (not e!4420652))))

(declare-fun dynLambda!29551 (Int Regex!19359) Bool)

(assert (=> b!7385326 (= res!2978437 (dynLambda!29551 lambda!458878 (h!78203 (exprs!8799 setElem!55865))))))

(declare-fun b!7385327 () Bool)

(assert (=> b!7385327 (= e!4420652 (forall!18142 (t!386430 (exprs!8799 setElem!55865)) lambda!458878))))

(assert (= (and d!2286431 (not res!2978436)) b!7385326))

(assert (= (and b!7385326 res!2978437) b!7385327))

(declare-fun b_lambda!284939 () Bool)

(assert (=> (not b_lambda!284939) (not b!7385326)))

(declare-fun m!8033878 () Bool)

(assert (=> b!7385326 m!8033878))

(declare-fun m!8033880 () Bool)

(assert (=> b!7385327 m!8033880))

(assert (=> d!2286407 d!2286431))

(declare-fun b!7385350 () Bool)

(declare-fun c!1372752 () Bool)

(assert (=> b!7385350 (= c!1372752 ((_ is Star!19359) (h!78203 (exprs!8799 c!10532))))))

(declare-fun e!4420670 () (InoxSet Context!16598))

(declare-fun e!4420668 () (InoxSet Context!16598))

(assert (=> b!7385350 (= e!4420670 e!4420668)))

(declare-fun b!7385351 () Bool)

(declare-fun call!679790 () (InoxSet Context!16598))

(assert (=> b!7385351 (= e!4420670 call!679790)))

(declare-fun b!7385352 () Bool)

(declare-fun e!4420667 () (InoxSet Context!16598))

(declare-fun call!679793 () (InoxSet Context!16598))

(declare-fun call!679789 () (InoxSet Context!16598))

(assert (=> b!7385352 (= e!4420667 ((_ map or) call!679793 call!679789))))

(declare-fun d!2286433 () Bool)

(declare-fun c!1372751 () Bool)

(assert (=> d!2286433 (= c!1372751 (and ((_ is ElementMatch!19359) (h!78203 (exprs!8799 c!10532))) (= (c!1372717 (h!78203 (exprs!8799 c!10532))) (h!78204 s!7927))))))

(declare-fun e!4420669 () (InoxSet Context!16598))

(assert (=> d!2286433 (= (derivationStepZipperDown!3166 (h!78203 (exprs!8799 c!10532)) (Context!16599 (t!386430 (exprs!8799 c!10532))) (h!78204 s!7927)) e!4420669)))

(declare-fun c!1372749 () Bool)

(declare-fun bm!679784 () Bool)

(declare-fun c!1372753 () Bool)

(declare-fun call!679792 () List!71879)

(declare-fun $colon$colon!3318 (List!71879 Regex!19359) List!71879)

(assert (=> bm!679784 (= call!679792 ($colon$colon!3318 (exprs!8799 (Context!16599 (t!386430 (exprs!8799 c!10532)))) (ite (or c!1372753 c!1372749) (regTwo!39230 (h!78203 (exprs!8799 c!10532))) (h!78203 (exprs!8799 c!10532)))))))

(declare-fun b!7385353 () Bool)

(assert (=> b!7385353 (= e!4420668 call!679790)))

(declare-fun b!7385354 () Bool)

(declare-fun e!4420666 () Bool)

(assert (=> b!7385354 (= e!4420666 (nullable!8414 (regOne!39230 (h!78203 (exprs!8799 c!10532)))))))

(declare-fun c!1372750 () Bool)

(declare-fun bm!679785 () Bool)

(declare-fun call!679794 () (InoxSet Context!16598))

(declare-fun call!679791 () List!71879)

(assert (=> bm!679785 (= call!679794 (derivationStepZipperDown!3166 (ite c!1372750 (regTwo!39231 (h!78203 (exprs!8799 c!10532))) (ite c!1372753 (regTwo!39230 (h!78203 (exprs!8799 c!10532))) (ite c!1372749 (regOne!39230 (h!78203 (exprs!8799 c!10532))) (reg!19688 (h!78203 (exprs!8799 c!10532)))))) (ite (or c!1372750 c!1372753) (Context!16599 (t!386430 (exprs!8799 c!10532))) (Context!16599 call!679791)) (h!78204 s!7927)))))

(declare-fun b!7385355 () Bool)

(assert (=> b!7385355 (= e!4420668 ((as const (Array Context!16598 Bool)) false))))

(declare-fun b!7385356 () Bool)

(assert (=> b!7385356 (= e!4420669 (store ((as const (Array Context!16598 Bool)) false) (Context!16599 (t!386430 (exprs!8799 c!10532))) true))))

(declare-fun b!7385357 () Bool)

(declare-fun e!4420665 () (InoxSet Context!16598))

(assert (=> b!7385357 (= e!4420665 ((_ map or) call!679793 call!679794))))

(declare-fun bm!679786 () Bool)

(assert (=> bm!679786 (= call!679793 (derivationStepZipperDown!3166 (ite c!1372750 (regOne!39231 (h!78203 (exprs!8799 c!10532))) (regOne!39230 (h!78203 (exprs!8799 c!10532)))) (ite c!1372750 (Context!16599 (t!386430 (exprs!8799 c!10532))) (Context!16599 call!679792)) (h!78204 s!7927)))))

(declare-fun b!7385358 () Bool)

(assert (=> b!7385358 (= e!4420667 e!4420670)))

(assert (=> b!7385358 (= c!1372749 ((_ is Concat!28204) (h!78203 (exprs!8799 c!10532))))))

(declare-fun bm!679787 () Bool)

(assert (=> bm!679787 (= call!679789 call!679794)))

(declare-fun bm!679788 () Bool)

(assert (=> bm!679788 (= call!679791 call!679792)))

(declare-fun bm!679789 () Bool)

(assert (=> bm!679789 (= call!679790 call!679789)))

(declare-fun b!7385359 () Bool)

(assert (=> b!7385359 (= c!1372753 e!4420666)))

(declare-fun res!2978440 () Bool)

(assert (=> b!7385359 (=> (not res!2978440) (not e!4420666))))

(assert (=> b!7385359 (= res!2978440 ((_ is Concat!28204) (h!78203 (exprs!8799 c!10532))))))

(assert (=> b!7385359 (= e!4420665 e!4420667)))

(declare-fun b!7385360 () Bool)

(assert (=> b!7385360 (= e!4420669 e!4420665)))

(assert (=> b!7385360 (= c!1372750 ((_ is Union!19359) (h!78203 (exprs!8799 c!10532))))))

(assert (= (and d!2286433 c!1372751) b!7385356))

(assert (= (and d!2286433 (not c!1372751)) b!7385360))

(assert (= (and b!7385360 c!1372750) b!7385357))

(assert (= (and b!7385360 (not c!1372750)) b!7385359))

(assert (= (and b!7385359 res!2978440) b!7385354))

(assert (= (and b!7385359 c!1372753) b!7385352))

(assert (= (and b!7385359 (not c!1372753)) b!7385358))

(assert (= (and b!7385358 c!1372749) b!7385351))

(assert (= (and b!7385358 (not c!1372749)) b!7385350))

(assert (= (and b!7385350 c!1372752) b!7385353))

(assert (= (and b!7385350 (not c!1372752)) b!7385355))

(assert (= (or b!7385351 b!7385353) bm!679788))

(assert (= (or b!7385351 b!7385353) bm!679789))

(assert (= (or b!7385352 bm!679788) bm!679784))

(assert (= (or b!7385352 bm!679789) bm!679787))

(assert (= (or b!7385357 b!7385352) bm!679786))

(assert (= (or b!7385357 bm!679787) bm!679785))

(declare-fun m!8033882 () Bool)

(assert (=> bm!679785 m!8033882))

(declare-fun m!8033884 () Bool)

(assert (=> bm!679786 m!8033884))

(declare-fun m!8033886 () Bool)

(assert (=> bm!679784 m!8033886))

(declare-fun m!8033888 () Bool)

(assert (=> b!7385356 m!8033888))

(declare-fun m!8033890 () Bool)

(assert (=> b!7385354 m!8033890))

(assert (=> bm!679770 d!2286433))

(declare-fun d!2286435 () Bool)

(declare-fun nullableFct!3380 (Regex!19359) Bool)

(assert (=> d!2286435 (= (nullable!8414 (h!78203 (exprs!8799 c!10532))) (nullableFct!3380 (h!78203 (exprs!8799 c!10532))))))

(declare-fun bs!1921916 () Bool)

(assert (= bs!1921916 d!2286435))

(declare-fun m!8033892 () Bool)

(assert (=> bs!1921916 m!8033892))

(assert (=> b!7385288 d!2286435))

(declare-fun bs!1921917 () Bool)

(declare-fun d!2286437 () Bool)

(assert (= bs!1921917 (and d!2286437 d!2286407)))

(declare-fun lambda!458883 () Int)

(assert (=> bs!1921917 (= lambda!458883 lambda!458878)))

(declare-fun bs!1921918 () Bool)

(assert (= bs!1921918 (and d!2286437 d!2286419)))

(assert (=> bs!1921918 (= lambda!458883 lambda!458879)))

(assert (=> d!2286437 (= (inv!91758 setElem!55868) (forall!18142 (exprs!8799 setElem!55868) lambda!458883))))

(declare-fun bs!1921919 () Bool)

(assert (= bs!1921919 d!2286437))

(declare-fun m!8033894 () Bool)

(assert (=> bs!1921919 m!8033894))

(assert (=> setNonEmpty!55868 d!2286437))

(declare-fun d!2286439 () Bool)

(declare-fun res!2978441 () Bool)

(declare-fun e!4420671 () Bool)

(assert (=> d!2286439 (=> res!2978441 e!4420671)))

(assert (=> d!2286439 (= res!2978441 ((_ is Nil!71755) (exprs!8799 c!10532)))))

(assert (=> d!2286439 (= (forall!18142 (exprs!8799 c!10532) lambda!458879) e!4420671)))

(declare-fun b!7385361 () Bool)

(declare-fun e!4420672 () Bool)

(assert (=> b!7385361 (= e!4420671 e!4420672)))

(declare-fun res!2978442 () Bool)

(assert (=> b!7385361 (=> (not res!2978442) (not e!4420672))))

(assert (=> b!7385361 (= res!2978442 (dynLambda!29551 lambda!458879 (h!78203 (exprs!8799 c!10532))))))

(declare-fun b!7385362 () Bool)

(assert (=> b!7385362 (= e!4420672 (forall!18142 (t!386430 (exprs!8799 c!10532)) lambda!458879))))

(assert (= (and d!2286439 (not res!2978441)) b!7385361))

(assert (= (and b!7385361 res!2978442) b!7385362))

(declare-fun b_lambda!284941 () Bool)

(assert (=> (not b_lambda!284941) (not b!7385361)))

(declare-fun m!8033896 () Bool)

(assert (=> b!7385361 m!8033896))

(declare-fun m!8033898 () Bool)

(assert (=> b!7385362 m!8033898))

(assert (=> d!2286419 d!2286439))

(declare-fun d!2286441 () Bool)

(declare-fun choose!57365 ((InoxSet Context!16598) Int) (InoxSet Context!16598))

(assert (=> d!2286441 (= (flatMap!3174 z!3451 lambda!458882) (choose!57365 z!3451 lambda!458882))))

(declare-fun bs!1921920 () Bool)

(assert (= bs!1921920 d!2286441))

(declare-fun m!8033900 () Bool)

(assert (=> bs!1921920 m!8033900))

(assert (=> d!2286425 d!2286441))

(declare-fun d!2286443 () Bool)

(declare-fun res!2978447 () Bool)

(declare-fun e!4420677 () Bool)

(assert (=> d!2286443 (=> res!2978447 e!4420677)))

(assert (=> d!2286443 (= res!2978447 ((_ is Nil!71757) lt!2617668))))

(assert (=> d!2286443 (= (noDuplicate!3088 lt!2617668) e!4420677)))

(declare-fun b!7385367 () Bool)

(declare-fun e!4420678 () Bool)

(assert (=> b!7385367 (= e!4420677 e!4420678)))

(declare-fun res!2978448 () Bool)

(assert (=> b!7385367 (=> (not res!2978448) (not e!4420678))))

(declare-fun contains!20833 (List!71881 Context!16598) Bool)

(assert (=> b!7385367 (= res!2978448 (not (contains!20833 (t!386432 lt!2617668) (h!78205 lt!2617668))))))

(declare-fun b!7385368 () Bool)

(assert (=> b!7385368 (= e!4420678 (noDuplicate!3088 (t!386432 lt!2617668)))))

(assert (= (and d!2286443 (not res!2978447)) b!7385367))

(assert (= (and b!7385367 res!2978448) b!7385368))

(declare-fun m!8033902 () Bool)

(assert (=> b!7385367 m!8033902))

(declare-fun m!8033904 () Bool)

(assert (=> b!7385368 m!8033904))

(assert (=> d!2286403 d!2286443))

(declare-fun d!2286445 () Bool)

(declare-fun e!4420687 () Bool)

(assert (=> d!2286445 e!4420687))

(declare-fun res!2978453 () Bool)

(assert (=> d!2286445 (=> (not res!2978453) (not e!4420687))))

(declare-fun res!2978454 () List!71881)

(assert (=> d!2286445 (= res!2978453 (noDuplicate!3088 res!2978454))))

(declare-fun e!4420686 () Bool)

(assert (=> d!2286445 e!4420686))

(assert (=> d!2286445 (= (choose!57363 lt!2617665) res!2978454)))

(declare-fun b!7385376 () Bool)

(declare-fun e!4420685 () Bool)

(declare-fun tp!2101168 () Bool)

(assert (=> b!7385376 (= e!4420685 tp!2101168)))

(declare-fun b!7385375 () Bool)

(declare-fun tp!2101169 () Bool)

(assert (=> b!7385375 (= e!4420686 (and (inv!91758 (h!78205 res!2978454)) e!4420685 tp!2101169))))

(declare-fun b!7385377 () Bool)

(assert (=> b!7385377 (= e!4420687 (= (content!15200 res!2978454) lt!2617665))))

(assert (= b!7385375 b!7385376))

(assert (= (and d!2286445 ((_ is Cons!71757) res!2978454)) b!7385375))

(assert (= (and d!2286445 res!2978453) b!7385377))

(declare-fun m!8033906 () Bool)

(assert (=> d!2286445 m!8033906))

(declare-fun m!8033908 () Bool)

(assert (=> b!7385375 m!8033908))

(declare-fun m!8033910 () Bool)

(assert (=> b!7385377 m!8033910))

(assert (=> d!2286403 d!2286445))

(declare-fun b!7385378 () Bool)

(declare-fun e!4420688 () Bool)

(declare-fun tp!2101170 () Bool)

(assert (=> b!7385378 (= e!4420688 (and tp_is_empty!48981 tp!2101170))))

(assert (=> b!7385299 (= tp!2101149 e!4420688)))

(assert (= (and b!7385299 ((_ is Cons!71756) (t!386431 (t!386431 s!7927)))) b!7385378))

(declare-fun b!7385379 () Bool)

(declare-fun e!4420689 () Bool)

(declare-fun tp!2101171 () Bool)

(declare-fun tp!2101172 () Bool)

(assert (=> b!7385379 (= e!4420689 (and tp!2101171 tp!2101172))))

(assert (=> b!7385304 (= tp!2101154 e!4420689)))

(assert (= (and b!7385304 ((_ is Cons!71755) (exprs!8799 setElem!55868))) b!7385379))

(declare-fun b!7385393 () Bool)

(declare-fun e!4420692 () Bool)

(declare-fun tp!2101186 () Bool)

(declare-fun tp!2101187 () Bool)

(assert (=> b!7385393 (= e!4420692 (and tp!2101186 tp!2101187))))

(assert (=> b!7385309 (= tp!2101160 e!4420692)))

(declare-fun b!7385391 () Bool)

(declare-fun tp!2101183 () Bool)

(declare-fun tp!2101185 () Bool)

(assert (=> b!7385391 (= e!4420692 (and tp!2101183 tp!2101185))))

(declare-fun b!7385392 () Bool)

(declare-fun tp!2101184 () Bool)

(assert (=> b!7385392 (= e!4420692 tp!2101184)))

(declare-fun b!7385390 () Bool)

(assert (=> b!7385390 (= e!4420692 tp_is_empty!48981)))

(assert (= (and b!7385309 ((_ is ElementMatch!19359) (h!78203 (exprs!8799 setElem!55865)))) b!7385390))

(assert (= (and b!7385309 ((_ is Concat!28204) (h!78203 (exprs!8799 setElem!55865)))) b!7385391))

(assert (= (and b!7385309 ((_ is Star!19359) (h!78203 (exprs!8799 setElem!55865)))) b!7385392))

(assert (= (and b!7385309 ((_ is Union!19359) (h!78203 (exprs!8799 setElem!55865)))) b!7385393))

(declare-fun b!7385394 () Bool)

(declare-fun e!4420693 () Bool)

(declare-fun tp!2101188 () Bool)

(declare-fun tp!2101189 () Bool)

(assert (=> b!7385394 (= e!4420693 (and tp!2101188 tp!2101189))))

(assert (=> b!7385309 (= tp!2101161 e!4420693)))

(assert (= (and b!7385309 ((_ is Cons!71755) (t!386430 (exprs!8799 setElem!55865)))) b!7385394))

(declare-fun condSetEmpty!55869 () Bool)

(assert (=> setNonEmpty!55868 (= condSetEmpty!55869 (= setRest!55868 ((as const (Array Context!16598 Bool)) false)))))

(declare-fun setRes!55869 () Bool)

(assert (=> setNonEmpty!55868 (= tp!2101155 setRes!55869)))

(declare-fun setIsEmpty!55869 () Bool)

(assert (=> setIsEmpty!55869 setRes!55869))

(declare-fun setElem!55869 () Context!16598)

(declare-fun tp!2101191 () Bool)

(declare-fun setNonEmpty!55869 () Bool)

(declare-fun e!4420694 () Bool)

(assert (=> setNonEmpty!55869 (= setRes!55869 (and tp!2101191 (inv!91758 setElem!55869) e!4420694))))

(declare-fun setRest!55869 () (InoxSet Context!16598))

(assert (=> setNonEmpty!55869 (= setRest!55868 ((_ map or) (store ((as const (Array Context!16598 Bool)) false) setElem!55869 true) setRest!55869))))

(declare-fun b!7385395 () Bool)

(declare-fun tp!2101190 () Bool)

(assert (=> b!7385395 (= e!4420694 tp!2101190)))

(assert (= (and setNonEmpty!55868 condSetEmpty!55869) setIsEmpty!55869))

(assert (= (and setNonEmpty!55868 (not condSetEmpty!55869)) setNonEmpty!55869))

(assert (= setNonEmpty!55869 b!7385395))

(declare-fun m!8033912 () Bool)

(assert (=> setNonEmpty!55869 m!8033912))

(declare-fun b!7385399 () Bool)

(declare-fun e!4420695 () Bool)

(declare-fun tp!2101195 () Bool)

(declare-fun tp!2101196 () Bool)

(assert (=> b!7385399 (= e!4420695 (and tp!2101195 tp!2101196))))

(assert (=> b!7385310 (= tp!2101162 e!4420695)))

(declare-fun b!7385397 () Bool)

(declare-fun tp!2101192 () Bool)

(declare-fun tp!2101194 () Bool)

(assert (=> b!7385397 (= e!4420695 (and tp!2101192 tp!2101194))))

(declare-fun b!7385398 () Bool)

(declare-fun tp!2101193 () Bool)

(assert (=> b!7385398 (= e!4420695 tp!2101193)))

(declare-fun b!7385396 () Bool)

(assert (=> b!7385396 (= e!4420695 tp_is_empty!48981)))

(assert (= (and b!7385310 ((_ is ElementMatch!19359) (h!78203 (exprs!8799 c!10532)))) b!7385396))

(assert (= (and b!7385310 ((_ is Concat!28204) (h!78203 (exprs!8799 c!10532)))) b!7385397))

(assert (= (and b!7385310 ((_ is Star!19359) (h!78203 (exprs!8799 c!10532)))) b!7385398))

(assert (= (and b!7385310 ((_ is Union!19359) (h!78203 (exprs!8799 c!10532)))) b!7385399))

(declare-fun b!7385400 () Bool)

(declare-fun e!4420696 () Bool)

(declare-fun tp!2101197 () Bool)

(declare-fun tp!2101198 () Bool)

(assert (=> b!7385400 (= e!4420696 (and tp!2101197 tp!2101198))))

(assert (=> b!7385310 (= tp!2101163 e!4420696)))

(assert (= (and b!7385310 ((_ is Cons!71755) (t!386430 (exprs!8799 c!10532)))) b!7385400))

(declare-fun b_lambda!284943 () Bool)

(assert (= b_lambda!284941 (or d!2286419 b_lambda!284943)))

(declare-fun bs!1921921 () Bool)

(declare-fun d!2286447 () Bool)

(assert (= bs!1921921 (and d!2286447 d!2286419)))

(declare-fun validRegex!9939 (Regex!19359) Bool)

(assert (=> bs!1921921 (= (dynLambda!29551 lambda!458879 (h!78203 (exprs!8799 c!10532))) (validRegex!9939 (h!78203 (exprs!8799 c!10532))))))

(declare-fun m!8033914 () Bool)

(assert (=> bs!1921921 m!8033914))

(assert (=> b!7385361 d!2286447))

(declare-fun b_lambda!284945 () Bool)

(assert (= b_lambda!284939 (or d!2286407 b_lambda!284945)))

(declare-fun bs!1921922 () Bool)

(declare-fun d!2286449 () Bool)

(assert (= bs!1921922 (and d!2286449 d!2286407)))

(assert (=> bs!1921922 (= (dynLambda!29551 lambda!458878 (h!78203 (exprs!8799 setElem!55865))) (validRegex!9939 (h!78203 (exprs!8799 setElem!55865))))))

(declare-fun m!8033916 () Bool)

(assert (=> bs!1921922 m!8033916))

(assert (=> b!7385326 d!2286449))

(check-sat (not bm!679785) (not b!7385318) (not d!2286441) (not setNonEmpty!55869) (not b!7385376) (not b!7385392) (not d!2286445) (not b!7385362) (not bm!679784) (not d!2286435) (not b!7385400) (not bs!1921921) (not b!7385378) tp_is_empty!48981 (not bm!679771) (not b_lambda!284945) (not b!7385399) (not b!7385354) (not b!7385393) (not b!7385327) (not b!7385395) (not b!7385368) (not b!7385375) (not bs!1921922) (not b!7385391) (not b!7385397) (not b!7385316) (not b!7385377) (not bm!679786) (not b!7385379) (not b!7385398) (not b!7385317) (not d!2286437) (not b!7385367) (not b!7385394) (not b_lambda!284943))
(check-sat)
