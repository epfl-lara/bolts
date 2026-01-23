; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573770 () Bool)

(assert start!573770)

(declare-fun b!5488205 () Bool)

(assert (=> b!5488205 true))

(declare-fun b!5488198 () Bool)

(assert (=> b!5488198 true))

(declare-fun bs!1267138 () Bool)

(declare-fun b!5488193 () Bool)

(assert (= bs!1267138 (and b!5488193 b!5488198)))

(declare-fun lambda!293605 () Int)

(declare-fun lambda!293604 () Int)

(assert (=> bs!1267138 (not (= lambda!293605 lambda!293604))))

(assert (=> b!5488193 true))

(declare-fun setRes!36237 () Bool)

(declare-datatypes ((C!31116 0))(
  ( (C!31117 (val!25260 Int)) )
))
(declare-datatypes ((Regex!15423 0))(
  ( (ElementMatch!15423 (c!958575 C!31116)) (Concat!24268 (regOne!31358 Regex!15423) (regTwo!31358 Regex!15423)) (EmptyExpr!15423) (Star!15423 (reg!15752 Regex!15423)) (EmptyLang!15423) (Union!15423 (regOne!31359 Regex!15423) (regTwo!31359 Regex!15423)) )
))
(declare-datatypes ((List!62568 0))(
  ( (Nil!62444) (Cons!62444 (h!68892 Regex!15423) (t!375799 List!62568)) )
))
(declare-datatypes ((Context!9614 0))(
  ( (Context!9615 (exprs!5307 List!62568)) )
))
(declare-fun setElem!36237 () Context!9614)

(declare-fun e!3396024 () Bool)

(declare-fun setNonEmpty!36237 () Bool)

(declare-fun tp!1508490 () Bool)

(declare-fun inv!81804 (Context!9614) Bool)

(assert (=> setNonEmpty!36237 (= setRes!36237 (and tp!1508490 (inv!81804 setElem!36237) e!3396024))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9614))

(declare-fun setRest!36237 () (InoxSet Context!9614))

(assert (=> setNonEmpty!36237 (= z!1189 ((_ map or) (store ((as const (Array Context!9614 Bool)) false) setElem!36237 true) setRest!36237))))

(declare-fun b!5488188 () Bool)

(declare-fun e!3396022 () Bool)

(declare-fun tp!1508498 () Bool)

(assert (=> b!5488188 (= e!3396022 tp!1508498)))

(declare-fun b!5488189 () Bool)

(declare-fun e!3396027 () Bool)

(declare-fun tp!1508497 () Bool)

(declare-fun tp!1508499 () Bool)

(assert (=> b!5488189 (= e!3396027 (and tp!1508497 tp!1508499))))

(declare-fun tp!1508493 () Bool)

(declare-fun e!3396026 () Bool)

(declare-fun b!5488190 () Bool)

(declare-datatypes ((List!62569 0))(
  ( (Nil!62445) (Cons!62445 (h!68893 Context!9614) (t!375800 List!62569)) )
))
(declare-fun zl!343 () List!62569)

(assert (=> b!5488190 (= e!3396026 (and (inv!81804 (h!68893 zl!343)) e!3396022 tp!1508493))))

(declare-fun b!5488191 () Bool)

(declare-fun res!2340570 () Bool)

(declare-fun e!3396025 () Bool)

(assert (=> b!5488191 (=> res!2340570 e!3396025)))

(declare-fun lt!2241459 () List!62568)

(declare-fun lambda!293603 () Int)

(declare-fun exists!2069 (List!62568 Int) Bool)

(assert (=> b!5488191 (= res!2340570 (not (exists!2069 lt!2241459 lambda!293603)))))

(declare-fun e!3396023 () Bool)

(declare-fun e!3396016 () Bool)

(assert (=> b!5488193 (= e!3396023 e!3396016)))

(declare-fun res!2340561 () Bool)

(assert (=> b!5488193 (=> res!2340561 e!3396016)))

(declare-fun exists!2070 (List!62569 Int) Bool)

(assert (=> b!5488193 (= res!2340561 (not (exists!2070 zl!343 lambda!293605)))))

(declare-fun exists!2071 ((InoxSet Context!9614) Int) Bool)

(assert (=> b!5488193 (exists!2071 z!1189 lambda!293605)))

(declare-fun lt!2241450 () Context!9614)

(declare-datatypes ((Unit!155302 0))(
  ( (Unit!155303) )
))
(declare-fun lt!2241455 () Unit!155302)

(declare-fun lemmaContainsThenExists!65 ((InoxSet Context!9614) Context!9614 Int) Unit!155302)

(assert (=> b!5488193 (= lt!2241455 (lemmaContainsThenExists!65 z!1189 lt!2241450 lambda!293605))))

(declare-fun lt!2241447 () (InoxSet Context!9614))

(declare-datatypes ((List!62570 0))(
  ( (Nil!62446) (Cons!62446 (h!68894 C!31116) (t!375801 List!62570)) )
))
(declare-fun s!2326 () List!62570)

(declare-fun matchZipper!1609 ((InoxSet Context!9614) List!62570) Bool)

(assert (=> b!5488193 (matchZipper!1609 lt!2241447 s!2326)))

(declare-fun lt!2241448 () Unit!155302)

(declare-fun lt!2241454 () Regex!15423)

(declare-fun lt!2241458 () List!62569)

(declare-fun theoremZipperRegexEquiv!595 ((InoxSet Context!9614) List!62569 Regex!15423 List!62570) Unit!155302)

(assert (=> b!5488193 (= lt!2241448 (theoremZipperRegexEquiv!595 lt!2241447 lt!2241458 lt!2241454 s!2326))))

(assert (=> b!5488193 (= lt!2241447 (store ((as const (Array Context!9614 Bool)) false) lt!2241450 true))))

(declare-fun b!5488194 () Bool)

(declare-fun tp!1508496 () Bool)

(declare-fun tp!1508495 () Bool)

(assert (=> b!5488194 (= e!3396027 (and tp!1508496 tp!1508495))))

(declare-fun b!5488195 () Bool)

(declare-fun res!2340566 () Bool)

(declare-fun e!3396019 () Bool)

(assert (=> b!5488195 (=> (not res!2340566) (not e!3396019))))

(declare-fun toList!9207 ((InoxSet Context!9614)) List!62569)

(assert (=> b!5488195 (= res!2340566 (= (toList!9207 z!1189) zl!343))))

(declare-fun b!5488196 () Bool)

(assert (=> b!5488196 (= e!3396016 (exists!2070 zl!343 lambda!293605))))

(declare-fun b!5488197 () Bool)

(declare-fun res!2340567 () Bool)

(declare-fun e!3396017 () Bool)

(assert (=> b!5488197 (=> res!2340567 e!3396017)))

(declare-fun matchR!7608 (Regex!15423 List!62570) Bool)

(assert (=> b!5488197 (= res!2340567 (not (matchR!7608 lt!2241454 s!2326)))))

(declare-fun e!3396018 () Bool)

(assert (=> b!5488198 (= e!3396017 e!3396018)))

(declare-fun res!2340574 () Bool)

(assert (=> b!5488198 (=> res!2340574 e!3396018)))

(assert (=> b!5488198 (= res!2340574 (not (exists!2070 zl!343 lambda!293604)))))

(assert (=> b!5488198 (exists!2070 zl!343 lambda!293604)))

(declare-fun lt!2241453 () Unit!155302)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!14 (List!62569 Regex!15423) Unit!155302)

(assert (=> b!5488198 (= lt!2241453 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!14 zl!343 lt!2241454))))

(declare-fun b!5488199 () Bool)

(declare-fun e!3396028 () Bool)

(assert (=> b!5488199 (= e!3396019 (not e!3396028))))

(declare-fun res!2340562 () Bool)

(assert (=> b!5488199 (=> res!2340562 e!3396028)))

(declare-fun e!3396020 () Bool)

(assert (=> b!5488199 (= res!2340562 e!3396020)))

(declare-fun res!2340569 () Bool)

(assert (=> b!5488199 (=> (not res!2340569) (not e!3396020))))

(get-info :version)

(assert (=> b!5488199 (= res!2340569 ((_ is Cons!62445) zl!343))))

(declare-fun lt!2241446 () Bool)

(declare-fun r!7292 () Regex!15423)

(declare-fun matchRSpec!2526 (Regex!15423 List!62570) Bool)

(assert (=> b!5488199 (= lt!2241446 (matchRSpec!2526 r!7292 s!2326))))

(assert (=> b!5488199 (= lt!2241446 (matchR!7608 r!7292 s!2326))))

(declare-fun lt!2241449 () Unit!155302)

(declare-fun mainMatchTheorem!2526 (Regex!15423 List!62570) Unit!155302)

(assert (=> b!5488199 (= lt!2241449 (mainMatchTheorem!2526 r!7292 s!2326))))

(declare-fun b!5488200 () Bool)

(declare-fun res!2340564 () Bool)

(assert (=> b!5488200 (=> res!2340564 e!3396028)))

(declare-fun isEmpty!34313 (List!62569) Bool)

(assert (=> b!5488200 (= res!2340564 (isEmpty!34313 (t!375800 zl!343)))))

(declare-fun setIsEmpty!36237 () Bool)

(assert (=> setIsEmpty!36237 setRes!36237))

(declare-fun b!5488201 () Bool)

(declare-fun tp!1508492 () Bool)

(assert (=> b!5488201 (= e!3396024 tp!1508492)))

(declare-fun b!5488192 () Bool)

(declare-fun tp!1508491 () Bool)

(assert (=> b!5488192 (= e!3396027 tp!1508491)))

(declare-fun res!2340573 () Bool)

(assert (=> start!573770 (=> (not res!2340573) (not e!3396019))))

(declare-fun validRegex!7159 (Regex!15423) Bool)

(assert (=> start!573770 (= res!2340573 (validRegex!7159 r!7292))))

(assert (=> start!573770 e!3396019))

(assert (=> start!573770 e!3396027))

(declare-fun condSetEmpty!36237 () Bool)

(assert (=> start!573770 (= condSetEmpty!36237 (= z!1189 ((as const (Array Context!9614 Bool)) false)))))

(assert (=> start!573770 setRes!36237))

(assert (=> start!573770 e!3396026))

(declare-fun e!3396021 () Bool)

(assert (=> start!573770 e!3396021))

(declare-fun b!5488202 () Bool)

(assert (=> b!5488202 (= e!3396025 e!3396017)))

(declare-fun res!2340560 () Bool)

(assert (=> b!5488202 (=> res!2340560 e!3396017)))

(declare-fun contains!19747 (List!62568 Regex!15423) Bool)

(assert (=> b!5488202 (= res!2340560 (not (contains!19747 lt!2241459 lt!2241454)))))

(declare-fun getWitness!885 (List!62568 Int) Regex!15423)

(assert (=> b!5488202 (= lt!2241454 (getWitness!885 lt!2241459 lambda!293603))))

(declare-fun b!5488203 () Bool)

(declare-fun res!2340565 () Bool)

(assert (=> b!5488203 (=> res!2340565 e!3396028)))

(assert (=> b!5488203 (= res!2340565 (or (not ((_ is Cons!62445) zl!343)) ((_ is Nil!62446) s!2326) (not (= zl!343 (Cons!62445 (h!68893 zl!343) (t!375800 zl!343))))))))

(declare-fun b!5488204 () Bool)

(declare-fun res!2340571 () Bool)

(assert (=> b!5488204 (=> (not res!2340571) (not e!3396019))))

(declare-fun unfocusZipper!1165 (List!62569) Regex!15423)

(assert (=> b!5488204 (= res!2340571 (= r!7292 (unfocusZipper!1165 zl!343)))))

(assert (=> b!5488205 (= e!3396028 e!3396025)))

(declare-fun res!2340572 () Bool)

(assert (=> b!5488205 (=> res!2340572 e!3396025)))

(assert (=> b!5488205 (= res!2340572 (not lt!2241446))))

(assert (=> b!5488205 (= lt!2241446 (exists!2069 lt!2241459 lambda!293603))))

(declare-fun lt!2241452 () Unit!155302)

(declare-fun matchRGenUnionSpec!256 (Regex!15423 List!62568 List!62570) Unit!155302)

(assert (=> b!5488205 (= lt!2241452 (matchRGenUnionSpec!256 r!7292 lt!2241459 s!2326))))

(declare-fun unfocusZipperList!855 (List!62569) List!62568)

(assert (=> b!5488205 (= lt!2241459 (unfocusZipperList!855 zl!343))))

(declare-fun b!5488206 () Bool)

(declare-fun res!2340568 () Bool)

(assert (=> b!5488206 (=> res!2340568 e!3396017)))

(assert (=> b!5488206 (= res!2340568 (not (validRegex!7159 lt!2241454)))))

(declare-fun b!5488207 () Bool)

(assert (=> b!5488207 (= e!3396018 e!3396023)))

(declare-fun res!2340563 () Bool)

(assert (=> b!5488207 (=> res!2340563 e!3396023)))

(declare-fun lt!2241457 () Int)

(declare-fun zipperDepthTotal!198 (List!62569) Int)

(assert (=> b!5488207 (= res!2340563 (<= lt!2241457 (zipperDepthTotal!198 lt!2241458)))))

(assert (=> b!5488207 (= lt!2241458 (Cons!62445 lt!2241450 Nil!62445))))

(declare-fun lt!2241451 () Int)

(assert (=> b!5488207 (< lt!2241451 lt!2241457)))

(assert (=> b!5488207 (= lt!2241457 (zipperDepthTotal!198 zl!343))))

(declare-fun contextDepthTotal!178 (Context!9614) Int)

(assert (=> b!5488207 (= lt!2241451 (contextDepthTotal!178 lt!2241450))))

(declare-fun lt!2241456 () Unit!155302)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!6 (List!62569 Context!9614) Unit!155302)

(assert (=> b!5488207 (= lt!2241456 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!6 zl!343 lt!2241450))))

(declare-fun getWitness!886 (List!62569 Int) Context!9614)

(assert (=> b!5488207 (= lt!2241450 (getWitness!886 zl!343 lambda!293604))))

(declare-fun b!5488208 () Bool)

(declare-fun tp_is_empty!40099 () Bool)

(assert (=> b!5488208 (= e!3396027 tp_is_empty!40099)))

(declare-fun b!5488209 () Bool)

(assert (=> b!5488209 (= e!3396020 (isEmpty!34313 (t!375800 zl!343)))))

(declare-fun b!5488210 () Bool)

(declare-fun tp!1508494 () Bool)

(assert (=> b!5488210 (= e!3396021 (and tp_is_empty!40099 tp!1508494))))

(assert (= (and start!573770 res!2340573) b!5488195))

(assert (= (and b!5488195 res!2340566) b!5488204))

(assert (= (and b!5488204 res!2340571) b!5488199))

(assert (= (and b!5488199 res!2340569) b!5488209))

(assert (= (and b!5488199 (not res!2340562)) b!5488203))

(assert (= (and b!5488203 (not res!2340565)) b!5488200))

(assert (= (and b!5488200 (not res!2340564)) b!5488205))

(assert (= (and b!5488205 (not res!2340572)) b!5488191))

(assert (= (and b!5488191 (not res!2340570)) b!5488202))

(assert (= (and b!5488202 (not res!2340560)) b!5488206))

(assert (= (and b!5488206 (not res!2340568)) b!5488197))

(assert (= (and b!5488197 (not res!2340567)) b!5488198))

(assert (= (and b!5488198 (not res!2340574)) b!5488207))

(assert (= (and b!5488207 (not res!2340563)) b!5488193))

(assert (= (and b!5488193 (not res!2340561)) b!5488196))

(assert (= (and start!573770 ((_ is ElementMatch!15423) r!7292)) b!5488208))

(assert (= (and start!573770 ((_ is Concat!24268) r!7292)) b!5488189))

(assert (= (and start!573770 ((_ is Star!15423) r!7292)) b!5488192))

(assert (= (and start!573770 ((_ is Union!15423) r!7292)) b!5488194))

(assert (= (and start!573770 condSetEmpty!36237) setIsEmpty!36237))

(assert (= (and start!573770 (not condSetEmpty!36237)) setNonEmpty!36237))

(assert (= setNonEmpty!36237 b!5488201))

(assert (= b!5488190 b!5488188))

(assert (= (and start!573770 ((_ is Cons!62445) zl!343)) b!5488190))

(assert (= (and start!573770 ((_ is Cons!62446) s!2326)) b!5488210))

(declare-fun m!6502118 () Bool)

(assert (=> b!5488202 m!6502118))

(declare-fun m!6502120 () Bool)

(assert (=> b!5488202 m!6502120))

(declare-fun m!6502122 () Bool)

(assert (=> b!5488193 m!6502122))

(declare-fun m!6502124 () Bool)

(assert (=> b!5488193 m!6502124))

(declare-fun m!6502126 () Bool)

(assert (=> b!5488193 m!6502126))

(declare-fun m!6502128 () Bool)

(assert (=> b!5488193 m!6502128))

(declare-fun m!6502130 () Bool)

(assert (=> b!5488193 m!6502130))

(declare-fun m!6502132 () Bool)

(assert (=> b!5488193 m!6502132))

(declare-fun m!6502134 () Bool)

(assert (=> b!5488200 m!6502134))

(declare-fun m!6502136 () Bool)

(assert (=> start!573770 m!6502136))

(declare-fun m!6502138 () Bool)

(assert (=> b!5488206 m!6502138))

(declare-fun m!6502140 () Bool)

(assert (=> b!5488191 m!6502140))

(declare-fun m!6502142 () Bool)

(assert (=> b!5488190 m!6502142))

(declare-fun m!6502144 () Bool)

(assert (=> setNonEmpty!36237 m!6502144))

(assert (=> b!5488205 m!6502140))

(declare-fun m!6502146 () Bool)

(assert (=> b!5488205 m!6502146))

(declare-fun m!6502148 () Bool)

(assert (=> b!5488205 m!6502148))

(declare-fun m!6502150 () Bool)

(assert (=> b!5488195 m!6502150))

(declare-fun m!6502152 () Bool)

(assert (=> b!5488207 m!6502152))

(declare-fun m!6502154 () Bool)

(assert (=> b!5488207 m!6502154))

(declare-fun m!6502156 () Bool)

(assert (=> b!5488207 m!6502156))

(declare-fun m!6502158 () Bool)

(assert (=> b!5488207 m!6502158))

(declare-fun m!6502160 () Bool)

(assert (=> b!5488207 m!6502160))

(declare-fun m!6502162 () Bool)

(assert (=> b!5488197 m!6502162))

(assert (=> b!5488196 m!6502130))

(declare-fun m!6502164 () Bool)

(assert (=> b!5488198 m!6502164))

(assert (=> b!5488198 m!6502164))

(declare-fun m!6502166 () Bool)

(assert (=> b!5488198 m!6502166))

(assert (=> b!5488209 m!6502134))

(declare-fun m!6502168 () Bool)

(assert (=> b!5488204 m!6502168))

(declare-fun m!6502170 () Bool)

(assert (=> b!5488199 m!6502170))

(declare-fun m!6502172 () Bool)

(assert (=> b!5488199 m!6502172))

(declare-fun m!6502174 () Bool)

(assert (=> b!5488199 m!6502174))

(check-sat (not b!5488195) (not b!5488200) (not b!5488188) (not b!5488198) (not start!573770) (not b!5488192) (not b!5488199) (not b!5488205) (not b!5488196) (not b!5488189) (not b!5488191) (not b!5488210) tp_is_empty!40099 (not b!5488197) (not b!5488190) (not b!5488193) (not b!5488201) (not b!5488207) (not b!5488204) (not b!5488206) (not b!5488202) (not b!5488194) (not b!5488209) (not setNonEmpty!36237))
(check-sat)
