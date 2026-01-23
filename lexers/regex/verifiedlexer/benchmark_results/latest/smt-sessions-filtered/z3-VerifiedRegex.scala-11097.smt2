; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573806 () Bool)

(assert start!573806)

(declare-fun b!5489455 () Bool)

(assert (=> b!5489455 true))

(declare-fun b!5489460 () Bool)

(assert (=> b!5489460 true))

(declare-fun bs!1267166 () Bool)

(declare-fun b!5489442 () Bool)

(assert (= bs!1267166 (and b!5489442 b!5489455)))

(declare-fun lambda!293843 () Int)

(declare-fun lambda!293841 () Int)

(assert (=> bs!1267166 (not (= lambda!293843 lambda!293841))))

(declare-fun e!3396682 () Bool)

(declare-fun e!3396679 () Bool)

(assert (=> b!5489442 (= e!3396682 e!3396679)))

(declare-fun res!2341288 () Bool)

(assert (=> b!5489442 (=> res!2341288 e!3396679)))

(declare-datatypes ((C!31152 0))(
  ( (C!31153 (val!25278 Int)) )
))
(declare-datatypes ((Regex!15441 0))(
  ( (ElementMatch!15441 (c!958629 C!31152)) (Concat!24286 (regOne!31394 Regex!15441) (regTwo!31394 Regex!15441)) (EmptyExpr!15441) (Star!15441 (reg!15770 Regex!15441)) (EmptyLang!15441) (Union!15441 (regOne!31395 Regex!15441) (regTwo!31395 Regex!15441)) )
))
(declare-datatypes ((List!62622 0))(
  ( (Nil!62498) (Cons!62498 (h!68946 Regex!15441) (t!375853 List!62622)) )
))
(declare-datatypes ((Context!9650 0))(
  ( (Context!9651 (exprs!5325 List!62622)) )
))
(declare-fun lt!2241936 () Context!9650)

(declare-fun forall!14638 (List!62622 Int) Bool)

(assert (=> b!5489442 (= res!2341288 (not (forall!14638 (exprs!5325 lt!2241936) lambda!293843)))))

(assert (=> b!5489442 (forall!14638 (exprs!5325 lt!2241936) lambda!293843)))

(declare-datatypes ((Unit!155338 0))(
  ( (Unit!155339) )
))
(declare-fun lt!2241935 () Unit!155338)

(declare-fun lemmaContextForallValidExprs!46 (Context!9650 List!62622) Unit!155338)

(assert (=> b!5489442 (= lt!2241935 (lemmaContextForallValidExprs!46 lt!2241936 (exprs!5325 lt!2241936)))))

(declare-datatypes ((List!62623 0))(
  ( (Nil!62499) (Cons!62499 (h!68947 Context!9650) (t!375854 List!62623)) )
))
(declare-fun zl!343 () List!62623)

(declare-fun lambda!293842 () Int)

(declare-fun getWitness!902 (List!62623 Int) Context!9650)

(assert (=> b!5489442 (= lt!2241936 (getWitness!902 zl!343 lambda!293842))))

(declare-fun b!5489443 () Bool)

(declare-fun e!3396680 () Bool)

(declare-fun tp!1509061 () Bool)

(assert (=> b!5489443 (= e!3396680 tp!1509061)))

(declare-fun b!5489444 () Bool)

(declare-fun res!2341286 () Bool)

(declare-fun e!3396686 () Bool)

(assert (=> b!5489444 (=> res!2341286 e!3396686)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9650))

(declare-datatypes ((List!62624 0))(
  ( (Nil!62500) (Cons!62500 (h!68948 C!31152) (t!375855 List!62624)) )
))
(declare-fun s!2326 () List!62624)

(declare-fun matchZipper!1625 ((InoxSet Context!9650) List!62624) Bool)

(assert (=> b!5489444 (= res!2341286 (not (matchZipper!1625 z!1189 s!2326)))))

(declare-fun b!5489445 () Bool)

(declare-fun res!2341290 () Bool)

(declare-fun e!3396676 () Bool)

(assert (=> b!5489445 (=> (not res!2341290) (not e!3396676))))

(declare-fun r!7292 () Regex!15441)

(declare-fun unfocusZipper!1183 (List!62623) Regex!15441)

(assert (=> b!5489445 (= res!2341290 (= r!7292 (unfocusZipper!1183 zl!343)))))

(declare-fun b!5489446 () Bool)

(declare-fun e!3396685 () Bool)

(assert (=> b!5489446 (= e!3396679 e!3396685)))

(declare-fun res!2341297 () Bool)

(assert (=> b!5489446 (=> res!2341297 e!3396685)))

(declare-fun lt!2241945 () Int)

(declare-fun lt!2241940 () List!62623)

(declare-fun zipperDepthTotal!206 (List!62623) Int)

(assert (=> b!5489446 (= res!2341297 (<= lt!2241945 (zipperDepthTotal!206 lt!2241940)))))

(assert (=> b!5489446 (= lt!2241940 (Cons!62499 lt!2241936 Nil!62499))))

(declare-fun lt!2241943 () Int)

(assert (=> b!5489446 (< lt!2241943 lt!2241945)))

(assert (=> b!5489446 (= lt!2241945 (zipperDepthTotal!206 zl!343))))

(declare-fun contextDepthTotal!186 (Context!9650) Int)

(assert (=> b!5489446 (= lt!2241943 (contextDepthTotal!186 lt!2241936))))

(declare-fun lt!2241941 () Unit!155338)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!14 (List!62623 Context!9650) Unit!155338)

(assert (=> b!5489446 (= lt!2241941 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!14 zl!343 lt!2241936))))

(declare-fun b!5489447 () Bool)

(declare-fun res!2341287 () Bool)

(assert (=> b!5489447 (=> res!2341287 e!3396686)))

(declare-fun lt!2241938 () List!62622)

(declare-fun exists!2106 (List!62622 Int) Bool)

(assert (=> b!5489447 (= res!2341287 (exists!2106 lt!2241938 lambda!293841))))

(declare-fun b!5489448 () Bool)

(declare-fun res!2341285 () Bool)

(assert (=> b!5489448 (=> res!2341285 e!3396685)))

(declare-fun toList!9225 ((InoxSet Context!9650)) List!62623)

(assert (=> b!5489448 (= res!2341285 (not (= (toList!9225 (store ((as const (Array Context!9650 Bool)) false) lt!2241936 true)) lt!2241940)))))

(declare-fun b!5489449 () Bool)

(declare-fun e!3396681 () Bool)

(declare-fun tp_is_empty!40135 () Bool)

(declare-fun tp!1509065 () Bool)

(assert (=> b!5489449 (= e!3396681 (and tp_is_empty!40135 tp!1509065))))

(declare-fun res!2341295 () Bool)

(assert (=> start!573806 (=> (not res!2341295) (not e!3396676))))

(declare-fun validRegex!7177 (Regex!15441) Bool)

(assert (=> start!573806 (= res!2341295 (validRegex!7177 r!7292))))

(assert (=> start!573806 e!3396676))

(declare-fun e!3396684 () Bool)

(assert (=> start!573806 e!3396684))

(declare-fun condSetEmpty!36291 () Bool)

(assert (=> start!573806 (= condSetEmpty!36291 (= z!1189 ((as const (Array Context!9650 Bool)) false)))))

(declare-fun setRes!36291 () Bool)

(assert (=> start!573806 setRes!36291))

(declare-fun e!3396683 () Bool)

(assert (=> start!573806 e!3396683))

(assert (=> start!573806 e!3396681))

(declare-fun setNonEmpty!36291 () Bool)

(declare-fun setElem!36291 () Context!9650)

(declare-fun e!3396678 () Bool)

(declare-fun tp!1509068 () Bool)

(declare-fun inv!81849 (Context!9650) Bool)

(assert (=> setNonEmpty!36291 (= setRes!36291 (and tp!1509068 (inv!81849 setElem!36291) e!3396678))))

(declare-fun setRest!36291 () (InoxSet Context!9650))

(assert (=> setNonEmpty!36291 (= z!1189 ((_ map or) (store ((as const (Array Context!9650 Bool)) false) setElem!36291 true) setRest!36291))))

(declare-fun b!5489450 () Bool)

(declare-fun res!2341284 () Bool)

(declare-fun e!3396677 () Bool)

(assert (=> b!5489450 (=> res!2341284 e!3396677)))

(get-info :version)

(assert (=> b!5489450 (= res!2341284 (or (not ((_ is Cons!62499) zl!343)) ((_ is Nil!62500) s!2326) (not (= zl!343 (Cons!62499 (h!68947 zl!343) (t!375854 zl!343))))))))

(declare-fun b!5489451 () Bool)

(declare-fun tp!1509066 () Bool)

(declare-fun tp!1509069 () Bool)

(assert (=> b!5489451 (= e!3396684 (and tp!1509066 tp!1509069))))

(declare-fun b!5489452 () Bool)

(declare-fun res!2341298 () Bool)

(assert (=> b!5489452 (=> res!2341298 e!3396685)))

(declare-fun generalisedConcat!1060 (List!62622) Regex!15441)

(assert (=> b!5489452 (= res!2341298 (not (validRegex!7177 (generalisedConcat!1060 (exprs!5325 lt!2241936)))))))

(declare-fun b!5489453 () Bool)

(assert (=> b!5489453 (= e!3396684 tp_is_empty!40135)))

(declare-fun b!5489454 () Bool)

(declare-fun tp!1509064 () Bool)

(assert (=> b!5489454 (= e!3396684 tp!1509064)))

(assert (=> b!5489455 (= e!3396677 e!3396686)))

(declare-fun res!2341292 () Bool)

(assert (=> b!5489455 (=> res!2341292 e!3396686)))

(declare-fun lt!2241939 () Bool)

(assert (=> b!5489455 (= res!2341292 lt!2241939)))

(assert (=> b!5489455 (= lt!2241939 (exists!2106 lt!2241938 lambda!293841))))

(declare-fun lt!2241942 () Unit!155338)

(declare-fun matchRGenUnionSpec!274 (Regex!15441 List!62622 List!62624) Unit!155338)

(assert (=> b!5489455 (= lt!2241942 (matchRGenUnionSpec!274 r!7292 lt!2241938 s!2326))))

(declare-fun unfocusZipperList!873 (List!62623) List!62622)

(assert (=> b!5489455 (= lt!2241938 (unfocusZipperList!873 zl!343))))

(declare-fun b!5489456 () Bool)

(assert (=> b!5489456 (= e!3396676 (not e!3396677))))

(declare-fun res!2341289 () Bool)

(assert (=> b!5489456 (=> res!2341289 e!3396677)))

(declare-fun e!3396675 () Bool)

(assert (=> b!5489456 (= res!2341289 e!3396675)))

(declare-fun res!2341294 () Bool)

(assert (=> b!5489456 (=> (not res!2341294) (not e!3396675))))

(assert (=> b!5489456 (= res!2341294 ((_ is Cons!62499) zl!343))))

(declare-fun matchRSpec!2544 (Regex!15441 List!62624) Bool)

(assert (=> b!5489456 (= lt!2241939 (matchRSpec!2544 r!7292 s!2326))))

(declare-fun matchR!7626 (Regex!15441 List!62624) Bool)

(assert (=> b!5489456 (= lt!2241939 (matchR!7626 r!7292 s!2326))))

(declare-fun lt!2241937 () Unit!155338)

(declare-fun mainMatchTheorem!2544 (Regex!15441 List!62624) Unit!155338)

(assert (=> b!5489456 (= lt!2241937 (mainMatchTheorem!2544 r!7292 s!2326))))

(declare-fun b!5489457 () Bool)

(declare-fun tp!1509062 () Bool)

(assert (=> b!5489457 (= e!3396678 tp!1509062)))

(declare-fun b!5489458 () Bool)

(declare-fun res!2341296 () Bool)

(assert (=> b!5489458 (=> (not res!2341296) (not e!3396676))))

(assert (=> b!5489458 (= res!2341296 (= (toList!9225 z!1189) zl!343))))

(declare-fun b!5489459 () Bool)

(declare-fun isEmpty!34331 (List!62623) Bool)

(assert (=> b!5489459 (= e!3396675 (isEmpty!34331 (t!375854 zl!343)))))

(assert (=> b!5489460 (= e!3396686 e!3396682)))

(declare-fun res!2341293 () Bool)

(assert (=> b!5489460 (=> res!2341293 e!3396682)))

(declare-fun exists!2107 (List!62623 Int) Bool)

(assert (=> b!5489460 (= res!2341293 (not (exists!2107 zl!343 lambda!293842)))))

(assert (=> b!5489460 (exists!2107 zl!343 lambda!293842)))

(declare-fun lt!2241934 () Unit!155338)

(declare-fun lemmaZipperMatchesExistsMatchingContext!68 (List!62623 List!62624) Unit!155338)

(assert (=> b!5489460 (= lt!2241934 (lemmaZipperMatchesExistsMatchingContext!68 zl!343 s!2326))))

(declare-fun setIsEmpty!36291 () Bool)

(assert (=> setIsEmpty!36291 setRes!36291))

(declare-fun b!5489461 () Bool)

(declare-fun res!2341291 () Bool)

(assert (=> b!5489461 (=> res!2341291 e!3396677)))

(assert (=> b!5489461 (= res!2341291 (isEmpty!34331 (t!375854 zl!343)))))

(declare-fun b!5489462 () Bool)

(assert (=> b!5489462 (= e!3396685 true)))

(declare-fun lt!2241944 () Regex!15441)

(assert (=> b!5489462 (= lt!2241944 (unfocusZipper!1183 lt!2241940))))

(declare-fun b!5489463 () Bool)

(declare-fun tp!1509063 () Bool)

(assert (=> b!5489463 (= e!3396683 (and (inv!81849 (h!68947 zl!343)) e!3396680 tp!1509063))))

(declare-fun b!5489464 () Bool)

(declare-fun tp!1509067 () Bool)

(declare-fun tp!1509060 () Bool)

(assert (=> b!5489464 (= e!3396684 (and tp!1509067 tp!1509060))))

(assert (= (and start!573806 res!2341295) b!5489458))

(assert (= (and b!5489458 res!2341296) b!5489445))

(assert (= (and b!5489445 res!2341290) b!5489456))

(assert (= (and b!5489456 res!2341294) b!5489459))

(assert (= (and b!5489456 (not res!2341289)) b!5489450))

(assert (= (and b!5489450 (not res!2341284)) b!5489461))

(assert (= (and b!5489461 (not res!2341291)) b!5489455))

(assert (= (and b!5489455 (not res!2341292)) b!5489447))

(assert (= (and b!5489447 (not res!2341287)) b!5489444))

(assert (= (and b!5489444 (not res!2341286)) b!5489460))

(assert (= (and b!5489460 (not res!2341293)) b!5489442))

(assert (= (and b!5489442 (not res!2341288)) b!5489446))

(assert (= (and b!5489446 (not res!2341297)) b!5489452))

(assert (= (and b!5489452 (not res!2341298)) b!5489448))

(assert (= (and b!5489448 (not res!2341285)) b!5489462))

(assert (= (and start!573806 ((_ is ElementMatch!15441) r!7292)) b!5489453))

(assert (= (and start!573806 ((_ is Concat!24286) r!7292)) b!5489451))

(assert (= (and start!573806 ((_ is Star!15441) r!7292)) b!5489454))

(assert (= (and start!573806 ((_ is Union!15441) r!7292)) b!5489464))

(assert (= (and start!573806 condSetEmpty!36291) setIsEmpty!36291))

(assert (= (and start!573806 (not condSetEmpty!36291)) setNonEmpty!36291))

(assert (= setNonEmpty!36291 b!5489457))

(assert (= b!5489463 b!5489443))

(assert (= (and start!573806 ((_ is Cons!62499) zl!343)) b!5489463))

(assert (= (and start!573806 ((_ is Cons!62500) s!2326)) b!5489449))

(declare-fun m!6502882 () Bool)

(assert (=> b!5489460 m!6502882))

(assert (=> b!5489460 m!6502882))

(declare-fun m!6502884 () Bool)

(assert (=> b!5489460 m!6502884))

(declare-fun m!6502886 () Bool)

(assert (=> b!5489459 m!6502886))

(declare-fun m!6502888 () Bool)

(assert (=> b!5489444 m!6502888))

(declare-fun m!6502890 () Bool)

(assert (=> b!5489452 m!6502890))

(assert (=> b!5489452 m!6502890))

(declare-fun m!6502892 () Bool)

(assert (=> b!5489452 m!6502892))

(declare-fun m!6502894 () Bool)

(assert (=> b!5489456 m!6502894))

(declare-fun m!6502896 () Bool)

(assert (=> b!5489456 m!6502896))

(declare-fun m!6502898 () Bool)

(assert (=> b!5489456 m!6502898))

(declare-fun m!6502900 () Bool)

(assert (=> b!5489446 m!6502900))

(declare-fun m!6502902 () Bool)

(assert (=> b!5489446 m!6502902))

(declare-fun m!6502904 () Bool)

(assert (=> b!5489446 m!6502904))

(declare-fun m!6502906 () Bool)

(assert (=> b!5489446 m!6502906))

(declare-fun m!6502908 () Bool)

(assert (=> b!5489463 m!6502908))

(declare-fun m!6502910 () Bool)

(assert (=> b!5489455 m!6502910))

(declare-fun m!6502912 () Bool)

(assert (=> b!5489455 m!6502912))

(declare-fun m!6502914 () Bool)

(assert (=> b!5489455 m!6502914))

(declare-fun m!6502916 () Bool)

(assert (=> b!5489445 m!6502916))

(declare-fun m!6502918 () Bool)

(assert (=> b!5489442 m!6502918))

(assert (=> b!5489442 m!6502918))

(declare-fun m!6502920 () Bool)

(assert (=> b!5489442 m!6502920))

(declare-fun m!6502922 () Bool)

(assert (=> b!5489442 m!6502922))

(declare-fun m!6502924 () Bool)

(assert (=> b!5489462 m!6502924))

(assert (=> b!5489447 m!6502910))

(declare-fun m!6502926 () Bool)

(assert (=> b!5489448 m!6502926))

(assert (=> b!5489448 m!6502926))

(declare-fun m!6502928 () Bool)

(assert (=> b!5489448 m!6502928))

(declare-fun m!6502930 () Bool)

(assert (=> setNonEmpty!36291 m!6502930))

(assert (=> b!5489461 m!6502886))

(declare-fun m!6502932 () Bool)

(assert (=> b!5489458 m!6502932))

(declare-fun m!6502934 () Bool)

(assert (=> start!573806 m!6502934))

(check-sat (not b!5489448) (not b!5489455) (not b!5489462) (not b!5489461) (not b!5489446) tp_is_empty!40135 (not b!5489451) (not start!573806) (not b!5489463) (not b!5489456) (not b!5489442) (not b!5489443) (not setNonEmpty!36291) (not b!5489447) (not b!5489452) (not b!5489457) (not b!5489449) (not b!5489444) (not b!5489459) (not b!5489445) (not b!5489458) (not b!5489454) (not b!5489464) (not b!5489460))
(check-sat)
