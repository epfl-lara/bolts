; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596604 () Bool)

(assert start!596604)

(declare-fun b!5822824 () Bool)

(declare-fun e!3573374 () Bool)

(declare-fun tp_is_empty!40991 () Bool)

(assert (=> b!5822824 (= e!3573374 tp_is_empty!40991)))

(declare-fun b!5822825 () Bool)

(declare-fun e!3573372 () Bool)

(declare-fun tp!1607181 () Bool)

(assert (=> b!5822825 (= e!3573372 tp!1607181)))

(declare-fun b!5822826 () Bool)

(declare-fun e!3573376 () Bool)

(declare-fun lt!2302396 () Int)

(declare-fun lt!2302395 () Int)

(assert (=> b!5822826 (= e!3573376 (or (< lt!2302396 0) (< lt!2302395 0)))))

(declare-datatypes ((C!32008 0))(
  ( (C!32009 (val!25706 Int)) )
))
(declare-datatypes ((List!63906 0))(
  ( (Nil!63782) (Cons!63782 (h!70230 C!32008) (t!377261 List!63906)) )
))
(declare-fun s!2326 () List!63906)

(declare-fun size!40126 (List!63906) Int)

(assert (=> b!5822826 (= lt!2302395 (size!40126 s!2326))))

(declare-datatypes ((Regex!15869 0))(
  ( (ElementMatch!15869 (c!1031887 C!32008)) (Concat!24714 (regOne!32250 Regex!15869) (regTwo!32250 Regex!15869)) (EmptyExpr!15869) (Star!15869 (reg!16198 Regex!15869)) (EmptyLang!15869) (Union!15869 (regOne!32251 Regex!15869) (regTwo!32251 Regex!15869)) )
))
(declare-datatypes ((List!63907 0))(
  ( (Nil!63783) (Cons!63783 (h!70231 Regex!15869) (t!377262 List!63907)) )
))
(declare-datatypes ((Context!10506 0))(
  ( (Context!10507 (exprs!5753 List!63907)) )
))
(declare-datatypes ((List!63908 0))(
  ( (Nil!63784) (Cons!63784 (h!70232 Context!10506) (t!377263 List!63908)) )
))
(declare-fun zl!343 () List!63908)

(declare-fun zipperDepthTotal!270 (List!63908) Int)

(assert (=> b!5822826 (= lt!2302396 (zipperDepthTotal!270 zl!343))))

(declare-fun b!5822827 () Bool)

(declare-fun tp!1607188 () Bool)

(declare-fun tp!1607180 () Bool)

(assert (=> b!5822827 (= e!3573374 (and tp!1607188 tp!1607180))))

(declare-fun b!5822828 () Bool)

(declare-fun res!2455152 () Bool)

(assert (=> b!5822828 (=> (not res!2455152) (not e!3573376))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10506))

(declare-fun toList!9653 ((InoxSet Context!10506)) List!63908)

(assert (=> b!5822828 (= res!2455152 (= (toList!9653 z!1189) zl!343))))

(declare-fun setIsEmpty!39334 () Bool)

(declare-fun setRes!39334 () Bool)

(assert (=> setIsEmpty!39334 setRes!39334))

(declare-fun b!5822829 () Bool)

(declare-fun tp!1607183 () Bool)

(declare-fun tp!1607185 () Bool)

(assert (=> b!5822829 (= e!3573374 (and tp!1607183 tp!1607185))))

(declare-fun b!5822831 () Bool)

(declare-fun e!3573377 () Bool)

(declare-fun tp!1607187 () Bool)

(assert (=> b!5822831 (= e!3573377 (and tp_is_empty!40991 tp!1607187))))

(declare-fun setNonEmpty!39334 () Bool)

(declare-fun setElem!39334 () Context!10506)

(declare-fun tp!1607179 () Bool)

(declare-fun inv!82919 (Context!10506) Bool)

(assert (=> setNonEmpty!39334 (= setRes!39334 (and tp!1607179 (inv!82919 setElem!39334) e!3573372))))

(declare-fun setRest!39334 () (InoxSet Context!10506))

(assert (=> setNonEmpty!39334 (= z!1189 ((_ map or) (store ((as const (Array Context!10506 Bool)) false) setElem!39334 true) setRest!39334))))

(declare-fun b!5822832 () Bool)

(declare-fun tp!1607184 () Bool)

(declare-fun e!3573373 () Bool)

(declare-fun e!3573375 () Bool)

(assert (=> b!5822832 (= e!3573373 (and (inv!82919 (h!70232 zl!343)) e!3573375 tp!1607184))))

(declare-fun b!5822833 () Bool)

(declare-fun tp!1607186 () Bool)

(assert (=> b!5822833 (= e!3573375 tp!1607186)))

(declare-fun b!5822834 () Bool)

(declare-fun tp!1607182 () Bool)

(assert (=> b!5822834 (= e!3573374 tp!1607182)))

(declare-fun res!2455151 () Bool)

(assert (=> start!596604 (=> (not res!2455151) (not e!3573376))))

(declare-fun r!7292 () Regex!15869)

(declare-fun validRegex!7605 (Regex!15869) Bool)

(assert (=> start!596604 (= res!2455151 (validRegex!7605 r!7292))))

(assert (=> start!596604 e!3573376))

(assert (=> start!596604 e!3573374))

(declare-fun condSetEmpty!39334 () Bool)

(assert (=> start!596604 (= condSetEmpty!39334 (= z!1189 ((as const (Array Context!10506 Bool)) false)))))

(assert (=> start!596604 setRes!39334))

(assert (=> start!596604 e!3573373))

(assert (=> start!596604 e!3573377))

(declare-fun b!5822830 () Bool)

(declare-fun res!2455150 () Bool)

(assert (=> b!5822830 (=> (not res!2455150) (not e!3573376))))

(declare-fun unfocusZipper!1611 (List!63908) Regex!15869)

(assert (=> b!5822830 (= res!2455150 (= r!7292 (unfocusZipper!1611 zl!343)))))

(assert (= (and start!596604 res!2455151) b!5822828))

(assert (= (and b!5822828 res!2455152) b!5822830))

(assert (= (and b!5822830 res!2455150) b!5822826))

(get-info :version)

(assert (= (and start!596604 ((_ is ElementMatch!15869) r!7292)) b!5822824))

(assert (= (and start!596604 ((_ is Concat!24714) r!7292)) b!5822827))

(assert (= (and start!596604 ((_ is Star!15869) r!7292)) b!5822834))

(assert (= (and start!596604 ((_ is Union!15869) r!7292)) b!5822829))

(assert (= (and start!596604 condSetEmpty!39334) setIsEmpty!39334))

(assert (= (and start!596604 (not condSetEmpty!39334)) setNonEmpty!39334))

(assert (= setNonEmpty!39334 b!5822825))

(assert (= b!5822832 b!5822833))

(assert (= (and start!596604 ((_ is Cons!63784) zl!343)) b!5822832))

(assert (= (and start!596604 ((_ is Cons!63782) s!2326)) b!5822831))

(declare-fun m!6757034 () Bool)

(assert (=> b!5822830 m!6757034))

(declare-fun m!6757036 () Bool)

(assert (=> start!596604 m!6757036))

(declare-fun m!6757038 () Bool)

(assert (=> b!5822828 m!6757038))

(declare-fun m!6757040 () Bool)

(assert (=> b!5822826 m!6757040))

(declare-fun m!6757042 () Bool)

(assert (=> b!5822826 m!6757042))

(declare-fun m!6757044 () Bool)

(assert (=> b!5822832 m!6757044))

(declare-fun m!6757046 () Bool)

(assert (=> setNonEmpty!39334 m!6757046))

(check-sat (not b!5822826) (not start!596604) (not b!5822834) (not b!5822827) (not b!5822832) (not b!5822825) (not b!5822829) (not setNonEmpty!39334) (not b!5822830) (not b!5822833) (not b!5822831) (not b!5822828) tp_is_empty!40991)
(check-sat)
(get-model)

(declare-fun d!1832216 () Bool)

(declare-fun lambda!318671 () Int)

(declare-fun forall!14962 (List!63907 Int) Bool)

(assert (=> d!1832216 (= (inv!82919 (h!70232 zl!343)) (forall!14962 (exprs!5753 (h!70232 zl!343)) lambda!318671))))

(declare-fun bs!1373702 () Bool)

(assert (= bs!1373702 d!1832216))

(declare-fun m!6757054 () Bool)

(assert (=> bs!1373702 m!6757054))

(assert (=> b!5822832 d!1832216))

(declare-fun d!1832222 () Bool)

(declare-fun lt!2302405 () Regex!15869)

(assert (=> d!1832222 (validRegex!7605 lt!2302405)))

(declare-fun generalisedUnion!1713 (List!63907) Regex!15869)

(declare-fun unfocusZipperList!1290 (List!63908) List!63907)

(assert (=> d!1832222 (= lt!2302405 (generalisedUnion!1713 (unfocusZipperList!1290 zl!343)))))

(assert (=> d!1832222 (= (unfocusZipper!1611 zl!343) lt!2302405)))

(declare-fun bs!1373703 () Bool)

(assert (= bs!1373703 d!1832222))

(declare-fun m!6757056 () Bool)

(assert (=> bs!1373703 m!6757056))

(declare-fun m!6757058 () Bool)

(assert (=> bs!1373703 m!6757058))

(assert (=> bs!1373703 m!6757058))

(declare-fun m!6757060 () Bool)

(assert (=> bs!1373703 m!6757060))

(assert (=> b!5822830 d!1832222))

(declare-fun b!5822865 () Bool)

(declare-fun e!3573402 () Bool)

(declare-fun e!3573398 () Bool)

(assert (=> b!5822865 (= e!3573402 e!3573398)))

(declare-fun res!2455166 () Bool)

(assert (=> b!5822865 (=> (not res!2455166) (not e!3573398))))

(declare-fun call!454741 () Bool)

(assert (=> b!5822865 (= res!2455166 call!454741)))

(declare-fun b!5822866 () Bool)

(declare-fun e!3573399 () Bool)

(declare-fun e!3573401 () Bool)

(assert (=> b!5822866 (= e!3573399 e!3573401)))

(declare-fun c!1031899 () Bool)

(assert (=> b!5822866 (= c!1031899 ((_ is Star!15869) r!7292))))

(declare-fun b!5822867 () Bool)

(declare-fun res!2455164 () Bool)

(assert (=> b!5822867 (=> res!2455164 e!3573402)))

(assert (=> b!5822867 (= res!2455164 (not ((_ is Concat!24714) r!7292)))))

(declare-fun e!3573404 () Bool)

(assert (=> b!5822867 (= e!3573404 e!3573402)))

(declare-fun b!5822868 () Bool)

(declare-fun e!3573400 () Bool)

(declare-fun call!454742 () Bool)

(assert (=> b!5822868 (= e!3573400 call!454742)))

(declare-fun b!5822869 () Bool)

(assert (=> b!5822869 (= e!3573401 e!3573400)))

(declare-fun res!2455165 () Bool)

(declare-fun nullable!5874 (Regex!15869) Bool)

(assert (=> b!5822869 (= res!2455165 (not (nullable!5874 (reg!16198 r!7292))))))

(assert (=> b!5822869 (=> (not res!2455165) (not e!3573400))))

(declare-fun c!1031898 () Bool)

(declare-fun bm!454736 () Bool)

(assert (=> bm!454736 (= call!454742 (validRegex!7605 (ite c!1031899 (reg!16198 r!7292) (ite c!1031898 (regTwo!32251 r!7292) (regTwo!32250 r!7292)))))))

(declare-fun d!1832224 () Bool)

(declare-fun res!2455167 () Bool)

(assert (=> d!1832224 (=> res!2455167 e!3573399)))

(assert (=> d!1832224 (= res!2455167 ((_ is ElementMatch!15869) r!7292))))

(assert (=> d!1832224 (= (validRegex!7605 r!7292) e!3573399)))

(declare-fun b!5822870 () Bool)

(assert (=> b!5822870 (= e!3573401 e!3573404)))

(assert (=> b!5822870 (= c!1031898 ((_ is Union!15869) r!7292))))

(declare-fun bm!454737 () Bool)

(declare-fun call!454743 () Bool)

(assert (=> bm!454737 (= call!454743 call!454742)))

(declare-fun bm!454738 () Bool)

(assert (=> bm!454738 (= call!454741 (validRegex!7605 (ite c!1031898 (regOne!32251 r!7292) (regOne!32250 r!7292))))))

(declare-fun b!5822871 () Bool)

(declare-fun res!2455163 () Bool)

(declare-fun e!3573403 () Bool)

(assert (=> b!5822871 (=> (not res!2455163) (not e!3573403))))

(assert (=> b!5822871 (= res!2455163 call!454741)))

(assert (=> b!5822871 (= e!3573404 e!3573403)))

(declare-fun b!5822872 () Bool)

(assert (=> b!5822872 (= e!3573403 call!454743)))

(declare-fun b!5822873 () Bool)

(assert (=> b!5822873 (= e!3573398 call!454743)))

(assert (= (and d!1832224 (not res!2455167)) b!5822866))

(assert (= (and b!5822866 c!1031899) b!5822869))

(assert (= (and b!5822866 (not c!1031899)) b!5822870))

(assert (= (and b!5822869 res!2455165) b!5822868))

(assert (= (and b!5822870 c!1031898) b!5822871))

(assert (= (and b!5822870 (not c!1031898)) b!5822867))

(assert (= (and b!5822871 res!2455163) b!5822872))

(assert (= (and b!5822867 (not res!2455164)) b!5822865))

(assert (= (and b!5822865 res!2455166) b!5822873))

(assert (= (or b!5822872 b!5822873) bm!454737))

(assert (= (or b!5822871 b!5822865) bm!454738))

(assert (= (or b!5822868 bm!454737) bm!454736))

(declare-fun m!6757062 () Bool)

(assert (=> b!5822869 m!6757062))

(declare-fun m!6757064 () Bool)

(assert (=> bm!454736 m!6757064))

(declare-fun m!6757066 () Bool)

(assert (=> bm!454738 m!6757066))

(assert (=> start!596604 d!1832224))

(declare-fun d!1832226 () Bool)

(declare-fun lt!2302408 () Int)

(assert (=> d!1832226 (>= lt!2302408 0)))

(declare-fun e!3573407 () Int)

(assert (=> d!1832226 (= lt!2302408 e!3573407)))

(declare-fun c!1031902 () Bool)

(assert (=> d!1832226 (= c!1031902 ((_ is Nil!63782) s!2326))))

(assert (=> d!1832226 (= (size!40126 s!2326) lt!2302408)))

(declare-fun b!5822878 () Bool)

(assert (=> b!5822878 (= e!3573407 0)))

(declare-fun b!5822879 () Bool)

(assert (=> b!5822879 (= e!3573407 (+ 1 (size!40126 (t!377261 s!2326))))))

(assert (= (and d!1832226 c!1031902) b!5822878))

(assert (= (and d!1832226 (not c!1031902)) b!5822879))

(declare-fun m!6757068 () Bool)

(assert (=> b!5822879 m!6757068))

(assert (=> b!5822826 d!1832226))

(declare-fun d!1832228 () Bool)

(declare-fun lt!2302411 () Int)

(assert (=> d!1832228 (>= lt!2302411 0)))

(declare-fun e!3573410 () Int)

(assert (=> d!1832228 (= lt!2302411 e!3573410)))

(declare-fun c!1031905 () Bool)

(assert (=> d!1832228 (= c!1031905 ((_ is Cons!63784) zl!343))))

(assert (=> d!1832228 (= (zipperDepthTotal!270 zl!343) lt!2302411)))

(declare-fun b!5822884 () Bool)

(declare-fun contextDepthTotal!247 (Context!10506) Int)

(assert (=> b!5822884 (= e!3573410 (+ (contextDepthTotal!247 (h!70232 zl!343)) (zipperDepthTotal!270 (t!377263 zl!343))))))

(declare-fun b!5822885 () Bool)

(assert (=> b!5822885 (= e!3573410 0)))

(assert (= (and d!1832228 c!1031905) b!5822884))

(assert (= (and d!1832228 (not c!1031905)) b!5822885))

(declare-fun m!6757070 () Bool)

(assert (=> b!5822884 m!6757070))

(declare-fun m!6757072 () Bool)

(assert (=> b!5822884 m!6757072))

(assert (=> b!5822826 d!1832228))

(declare-fun d!1832230 () Bool)

(declare-fun e!3573413 () Bool)

(assert (=> d!1832230 e!3573413))

(declare-fun res!2455170 () Bool)

(assert (=> d!1832230 (=> (not res!2455170) (not e!3573413))))

(declare-fun lt!2302414 () List!63908)

(declare-fun noDuplicate!1741 (List!63908) Bool)

(assert (=> d!1832230 (= res!2455170 (noDuplicate!1741 lt!2302414))))

(declare-fun choose!44256 ((InoxSet Context!10506)) List!63908)

(assert (=> d!1832230 (= lt!2302414 (choose!44256 z!1189))))

(assert (=> d!1832230 (= (toList!9653 z!1189) lt!2302414)))

(declare-fun b!5822888 () Bool)

(declare-fun content!11707 (List!63908) (InoxSet Context!10506))

(assert (=> b!5822888 (= e!3573413 (= (content!11707 lt!2302414) z!1189))))

(assert (= (and d!1832230 res!2455170) b!5822888))

(declare-fun m!6757074 () Bool)

(assert (=> d!1832230 m!6757074))

(declare-fun m!6757076 () Bool)

(assert (=> d!1832230 m!6757076))

(declare-fun m!6757078 () Bool)

(assert (=> b!5822888 m!6757078))

(assert (=> b!5822828 d!1832230))

(declare-fun bs!1373704 () Bool)

(declare-fun d!1832232 () Bool)

(assert (= bs!1373704 (and d!1832232 d!1832216)))

(declare-fun lambda!318672 () Int)

(assert (=> bs!1373704 (= lambda!318672 lambda!318671)))

(assert (=> d!1832232 (= (inv!82919 setElem!39334) (forall!14962 (exprs!5753 setElem!39334) lambda!318672))))

(declare-fun bs!1373705 () Bool)

(assert (= bs!1373705 d!1832232))

(declare-fun m!6757080 () Bool)

(assert (=> bs!1373705 m!6757080))

(assert (=> setNonEmpty!39334 d!1832232))

(declare-fun b!5822893 () Bool)

(declare-fun e!3573416 () Bool)

(declare-fun tp!1607193 () Bool)

(declare-fun tp!1607194 () Bool)

(assert (=> b!5822893 (= e!3573416 (and tp!1607193 tp!1607194))))

(assert (=> b!5822833 (= tp!1607186 e!3573416)))

(assert (= (and b!5822833 ((_ is Cons!63783) (exprs!5753 (h!70232 zl!343)))) b!5822893))

(declare-fun b!5822901 () Bool)

(declare-fun e!3573422 () Bool)

(declare-fun tp!1607199 () Bool)

(assert (=> b!5822901 (= e!3573422 tp!1607199)))

(declare-fun b!5822900 () Bool)

(declare-fun tp!1607200 () Bool)

(declare-fun e!3573421 () Bool)

(assert (=> b!5822900 (= e!3573421 (and (inv!82919 (h!70232 (t!377263 zl!343))) e!3573422 tp!1607200))))

(assert (=> b!5822832 (= tp!1607184 e!3573421)))

(assert (= b!5822900 b!5822901))

(assert (= (and b!5822832 ((_ is Cons!63784) (t!377263 zl!343))) b!5822900))

(declare-fun m!6757082 () Bool)

(assert (=> b!5822900 m!6757082))

(declare-fun b!5822914 () Bool)

(declare-fun e!3573425 () Bool)

(declare-fun tp!1607213 () Bool)

(assert (=> b!5822914 (= e!3573425 tp!1607213)))

(assert (=> b!5822834 (= tp!1607182 e!3573425)))

(declare-fun b!5822913 () Bool)

(declare-fun tp!1607212 () Bool)

(declare-fun tp!1607214 () Bool)

(assert (=> b!5822913 (= e!3573425 (and tp!1607212 tp!1607214))))

(declare-fun b!5822912 () Bool)

(assert (=> b!5822912 (= e!3573425 tp_is_empty!40991)))

(declare-fun b!5822915 () Bool)

(declare-fun tp!1607211 () Bool)

(declare-fun tp!1607215 () Bool)

(assert (=> b!5822915 (= e!3573425 (and tp!1607211 tp!1607215))))

(assert (= (and b!5822834 ((_ is ElementMatch!15869) (reg!16198 r!7292))) b!5822912))

(assert (= (and b!5822834 ((_ is Concat!24714) (reg!16198 r!7292))) b!5822913))

(assert (= (and b!5822834 ((_ is Star!15869) (reg!16198 r!7292))) b!5822914))

(assert (= (and b!5822834 ((_ is Union!15869) (reg!16198 r!7292))) b!5822915))

(declare-fun b!5822916 () Bool)

(declare-fun e!3573426 () Bool)

(declare-fun tp!1607216 () Bool)

(declare-fun tp!1607217 () Bool)

(assert (=> b!5822916 (= e!3573426 (and tp!1607216 tp!1607217))))

(assert (=> b!5822825 (= tp!1607181 e!3573426)))

(assert (= (and b!5822825 ((_ is Cons!63783) (exprs!5753 setElem!39334))) b!5822916))

(declare-fun b!5822919 () Bool)

(declare-fun e!3573427 () Bool)

(declare-fun tp!1607220 () Bool)

(assert (=> b!5822919 (= e!3573427 tp!1607220)))

(assert (=> b!5822829 (= tp!1607183 e!3573427)))

(declare-fun b!5822918 () Bool)

(declare-fun tp!1607219 () Bool)

(declare-fun tp!1607221 () Bool)

(assert (=> b!5822918 (= e!3573427 (and tp!1607219 tp!1607221))))

(declare-fun b!5822917 () Bool)

(assert (=> b!5822917 (= e!3573427 tp_is_empty!40991)))

(declare-fun b!5822920 () Bool)

(declare-fun tp!1607218 () Bool)

(declare-fun tp!1607222 () Bool)

(assert (=> b!5822920 (= e!3573427 (and tp!1607218 tp!1607222))))

(assert (= (and b!5822829 ((_ is ElementMatch!15869) (regOne!32251 r!7292))) b!5822917))

(assert (= (and b!5822829 ((_ is Concat!24714) (regOne!32251 r!7292))) b!5822918))

(assert (= (and b!5822829 ((_ is Star!15869) (regOne!32251 r!7292))) b!5822919))

(assert (= (and b!5822829 ((_ is Union!15869) (regOne!32251 r!7292))) b!5822920))

(declare-fun b!5822923 () Bool)

(declare-fun e!3573428 () Bool)

(declare-fun tp!1607225 () Bool)

(assert (=> b!5822923 (= e!3573428 tp!1607225)))

(assert (=> b!5822829 (= tp!1607185 e!3573428)))

(declare-fun b!5822922 () Bool)

(declare-fun tp!1607224 () Bool)

(declare-fun tp!1607226 () Bool)

(assert (=> b!5822922 (= e!3573428 (and tp!1607224 tp!1607226))))

(declare-fun b!5822921 () Bool)

(assert (=> b!5822921 (= e!3573428 tp_is_empty!40991)))

(declare-fun b!5822924 () Bool)

(declare-fun tp!1607223 () Bool)

(declare-fun tp!1607227 () Bool)

(assert (=> b!5822924 (= e!3573428 (and tp!1607223 tp!1607227))))

(assert (= (and b!5822829 ((_ is ElementMatch!15869) (regTwo!32251 r!7292))) b!5822921))

(assert (= (and b!5822829 ((_ is Concat!24714) (regTwo!32251 r!7292))) b!5822922))

(assert (= (and b!5822829 ((_ is Star!15869) (regTwo!32251 r!7292))) b!5822923))

(assert (= (and b!5822829 ((_ is Union!15869) (regTwo!32251 r!7292))) b!5822924))

(declare-fun b!5822927 () Bool)

(declare-fun e!3573429 () Bool)

(declare-fun tp!1607230 () Bool)

(assert (=> b!5822927 (= e!3573429 tp!1607230)))

(assert (=> b!5822827 (= tp!1607188 e!3573429)))

(declare-fun b!5822926 () Bool)

(declare-fun tp!1607229 () Bool)

(declare-fun tp!1607231 () Bool)

(assert (=> b!5822926 (= e!3573429 (and tp!1607229 tp!1607231))))

(declare-fun b!5822925 () Bool)

(assert (=> b!5822925 (= e!3573429 tp_is_empty!40991)))

(declare-fun b!5822928 () Bool)

(declare-fun tp!1607228 () Bool)

(declare-fun tp!1607232 () Bool)

(assert (=> b!5822928 (= e!3573429 (and tp!1607228 tp!1607232))))

(assert (= (and b!5822827 ((_ is ElementMatch!15869) (regOne!32250 r!7292))) b!5822925))

(assert (= (and b!5822827 ((_ is Concat!24714) (regOne!32250 r!7292))) b!5822926))

(assert (= (and b!5822827 ((_ is Star!15869) (regOne!32250 r!7292))) b!5822927))

(assert (= (and b!5822827 ((_ is Union!15869) (regOne!32250 r!7292))) b!5822928))

(declare-fun b!5822931 () Bool)

(declare-fun e!3573430 () Bool)

(declare-fun tp!1607235 () Bool)

(assert (=> b!5822931 (= e!3573430 tp!1607235)))

(assert (=> b!5822827 (= tp!1607180 e!3573430)))

(declare-fun b!5822930 () Bool)

(declare-fun tp!1607234 () Bool)

(declare-fun tp!1607236 () Bool)

(assert (=> b!5822930 (= e!3573430 (and tp!1607234 tp!1607236))))

(declare-fun b!5822929 () Bool)

(assert (=> b!5822929 (= e!3573430 tp_is_empty!40991)))

(declare-fun b!5822932 () Bool)

(declare-fun tp!1607233 () Bool)

(declare-fun tp!1607237 () Bool)

(assert (=> b!5822932 (= e!3573430 (and tp!1607233 tp!1607237))))

(assert (= (and b!5822827 ((_ is ElementMatch!15869) (regTwo!32250 r!7292))) b!5822929))

(assert (= (and b!5822827 ((_ is Concat!24714) (regTwo!32250 r!7292))) b!5822930))

(assert (= (and b!5822827 ((_ is Star!15869) (regTwo!32250 r!7292))) b!5822931))

(assert (= (and b!5822827 ((_ is Union!15869) (regTwo!32250 r!7292))) b!5822932))

(declare-fun b!5822937 () Bool)

(declare-fun e!3573433 () Bool)

(declare-fun tp!1607240 () Bool)

(assert (=> b!5822937 (= e!3573433 (and tp_is_empty!40991 tp!1607240))))

(assert (=> b!5822831 (= tp!1607187 e!3573433)))

(assert (= (and b!5822831 ((_ is Cons!63782) (t!377261 s!2326))) b!5822937))

(declare-fun condSetEmpty!39337 () Bool)

(assert (=> setNonEmpty!39334 (= condSetEmpty!39337 (= setRest!39334 ((as const (Array Context!10506 Bool)) false)))))

(declare-fun setRes!39337 () Bool)

(assert (=> setNonEmpty!39334 (= tp!1607179 setRes!39337)))

(declare-fun setIsEmpty!39337 () Bool)

(assert (=> setIsEmpty!39337 setRes!39337))

(declare-fun e!3573436 () Bool)

(declare-fun setElem!39337 () Context!10506)

(declare-fun setNonEmpty!39337 () Bool)

(declare-fun tp!1607246 () Bool)

(assert (=> setNonEmpty!39337 (= setRes!39337 (and tp!1607246 (inv!82919 setElem!39337) e!3573436))))

(declare-fun setRest!39337 () (InoxSet Context!10506))

(assert (=> setNonEmpty!39337 (= setRest!39334 ((_ map or) (store ((as const (Array Context!10506 Bool)) false) setElem!39337 true) setRest!39337))))

(declare-fun b!5822942 () Bool)

(declare-fun tp!1607245 () Bool)

(assert (=> b!5822942 (= e!3573436 tp!1607245)))

(assert (= (and setNonEmpty!39334 condSetEmpty!39337) setIsEmpty!39337))

(assert (= (and setNonEmpty!39334 (not condSetEmpty!39337)) setNonEmpty!39337))

(assert (= setNonEmpty!39337 b!5822942))

(declare-fun m!6757084 () Bool)

(assert (=> setNonEmpty!39337 m!6757084))

(check-sat (not b!5822916) (not b!5822924) (not b!5822922) (not setNonEmpty!39337) (not b!5822893) (not b!5822928) (not b!5822923) tp_is_empty!40991 (not b!5822915) (not b!5822931) (not b!5822930) (not bm!454738) (not b!5822900) (not d!1832230) (not b!5822913) (not d!1832216) (not b!5822920) (not b!5822869) (not bm!454736) (not b!5822926) (not b!5822884) (not b!5822942) (not b!5822927) (not b!5822932) (not b!5822901) (not b!5822937) (not b!5822888) (not b!5822914) (not b!5822918) (not d!1832222) (not d!1832232) (not b!5822879) (not b!5822919))
(check-sat)
