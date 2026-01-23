; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549468 () Bool)

(assert start!549468)

(declare-fun b!5191185 () Bool)

(assert (=> b!5191185 true))

(declare-fun b!5191174 () Bool)

(declare-fun e!3233520 () Bool)

(declare-fun e!3233532 () Bool)

(assert (=> b!5191174 (= e!3233520 e!3233532)))

(declare-fun res!2204875 () Bool)

(assert (=> b!5191174 (=> res!2204875 e!3233532)))

(declare-fun lt!2137617 () Bool)

(declare-fun lt!2137607 () Bool)

(declare-fun lt!2137608 () Bool)

(assert (=> b!5191174 (= res!2204875 (or (not (= lt!2137608 lt!2137607)) (not (= lt!2137608 lt!2137617))))))

(assert (=> b!5191174 (= lt!2137607 lt!2137608)))

(declare-fun e!3233523 () Bool)

(assert (=> b!5191174 (= lt!2137608 e!3233523)))

(declare-fun res!2204874 () Bool)

(assert (=> b!5191174 (=> res!2204874 e!3233523)))

(declare-datatypes ((C!29726 0))(
  ( (C!29727 (val!24565 Int)) )
))
(declare-datatypes ((Regex!14728 0))(
  ( (ElementMatch!14728 (c!894828 C!29726)) (Concat!23573 (regOne!29968 Regex!14728) (regTwo!29968 Regex!14728)) (EmptyExpr!14728) (Star!14728 (reg!15057 Regex!14728)) (EmptyLang!14728) (Union!14728 (regOne!29969 Regex!14728) (regTwo!29969 Regex!14728)) )
))
(declare-datatypes ((List!60483 0))(
  ( (Nil!60359) (Cons!60359 (h!66807 Regex!14728) (t!373636 List!60483)) )
))
(declare-datatypes ((Context!8224 0))(
  ( (Context!8225 (exprs!4612 List!60483)) )
))
(declare-fun lt!2137612 () (Set Context!8224))

(declare-datatypes ((List!60484 0))(
  ( (Nil!60360) (Cons!60360 (h!66808 C!29726) (t!373637 List!60484)) )
))
(declare-fun s!2326 () List!60484)

(declare-fun matchZipper!1008 ((Set Context!8224) List!60484) Bool)

(assert (=> b!5191174 (= res!2204874 (matchZipper!1008 lt!2137612 (t!373637 s!2326)))))

(declare-datatypes ((Unit!152290 0))(
  ( (Unit!152291) )
))
(declare-fun lt!2137603 () Unit!152290)

(declare-fun lt!2137598 () (Set Context!8224))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!7 ((Set Context!8224) (Set Context!8224) List!60484) Unit!152290)

(assert (=> b!5191174 (= lt!2137603 (lemmaZipperConcatMatchesSameAsBothZippers!7 lt!2137612 lt!2137598 (t!373637 s!2326)))))

(declare-fun b!5191175 () Bool)

(declare-fun e!3233533 () Bool)

(declare-fun tp!1456258 () Bool)

(assert (=> b!5191175 (= e!3233533 tp!1456258)))

(declare-fun b!5191176 () Bool)

(declare-fun res!2204881 () Bool)

(declare-fun e!3233521 () Bool)

(assert (=> b!5191176 (=> res!2204881 e!3233521)))

(declare-datatypes ((List!60485 0))(
  ( (Nil!60361) (Cons!60361 (h!66809 Context!8224) (t!373638 List!60485)) )
))
(declare-fun zl!343 () List!60485)

(declare-fun isEmpty!32313 (List!60485) Bool)

(assert (=> b!5191176 (= res!2204881 (not (isEmpty!32313 (t!373638 zl!343))))))

(declare-fun b!5191177 () Bool)

(declare-fun res!2204869 () Bool)

(assert (=> b!5191177 (=> res!2204869 e!3233521)))

(declare-fun r!7292 () Regex!14728)

(assert (=> b!5191177 (= res!2204869 (or (is-EmptyExpr!14728 r!7292) (is-EmptyLang!14728 r!7292) (is-ElementMatch!14728 r!7292) (not (is-Union!14728 r!7292))))))

(declare-fun b!5191178 () Bool)

(declare-fun res!2204879 () Bool)

(assert (=> b!5191178 (=> res!2204879 e!3233521)))

(assert (=> b!5191178 (= res!2204879 (not (is-Cons!60359 (exprs!4612 (h!66809 zl!343)))))))

(declare-fun b!5191179 () Bool)

(declare-fun res!2204880 () Bool)

(declare-fun e!3233527 () Bool)

(assert (=> b!5191179 (=> (not res!2204880) (not e!3233527))))

(declare-fun z!1189 () (Set Context!8224))

(declare-fun toList!8512 ((Set Context!8224)) List!60485)

(assert (=> b!5191179 (= res!2204880 (= (toList!8512 z!1189) zl!343))))

(declare-fun b!5191180 () Bool)

(declare-fun tp!1456259 () Bool)

(declare-fun tp!1456264 () Bool)

(assert (=> b!5191180 (= e!3233533 (and tp!1456259 tp!1456264))))

(declare-fun b!5191181 () Bool)

(declare-fun e!3233525 () Bool)

(declare-fun tp!1456261 () Bool)

(assert (=> b!5191181 (= e!3233525 tp!1456261)))

(declare-fun b!5191182 () Bool)

(declare-fun tp!1456265 () Bool)

(declare-fun tp!1456263 () Bool)

(assert (=> b!5191182 (= e!3233533 (and tp!1456265 tp!1456263))))

(declare-fun b!5191183 () Bool)

(declare-fun e!3233522 () Bool)

(declare-fun tp_is_empty!38709 () Bool)

(declare-fun tp!1456266 () Bool)

(assert (=> b!5191183 (= e!3233522 (and tp_is_empty!38709 tp!1456266))))

(declare-fun tp!1456262 () Bool)

(declare-fun setRes!32773 () Bool)

(declare-fun setElem!32773 () Context!8224)

(declare-fun setNonEmpty!32773 () Bool)

(declare-fun inv!80068 (Context!8224) Bool)

(assert (=> setNonEmpty!32773 (= setRes!32773 (and tp!1456262 (inv!80068 setElem!32773) e!3233525))))

(declare-fun setRest!32773 () (Set Context!8224))

(assert (=> setNonEmpty!32773 (= z!1189 (set.union (set.insert setElem!32773 (as set.empty (Set Context!8224))) setRest!32773))))

(declare-fun b!5191184 () Bool)

(declare-fun res!2204871 () Bool)

(assert (=> b!5191184 (=> res!2204871 e!3233521)))

(declare-fun generalisedConcat!397 (List!60483) Regex!14728)

(assert (=> b!5191184 (= res!2204871 (not (= r!7292 (generalisedConcat!397 (exprs!4612 (h!66809 zl!343))))))))

(declare-fun e!3233524 () Bool)

(declare-fun e!3233526 () Bool)

(assert (=> b!5191185 (= e!3233524 e!3233526)))

(declare-fun res!2204868 () Bool)

(assert (=> b!5191185 (=> res!2204868 e!3233526)))

(declare-fun lt!2137610 () (Set Context!8224))

(declare-fun derivationStepZipper!1030 ((Set Context!8224) C!29726) (Set Context!8224))

(assert (=> b!5191185 (= res!2204868 (not (= (derivationStepZipper!1030 z!1189 (h!66808 s!2326)) lt!2137610)))))

(declare-fun lambda!259560 () Int)

(declare-fun flatMap!481 ((Set Context!8224) Int) (Set Context!8224))

(declare-fun derivationStepZipperUp!118 (Context!8224 C!29726) (Set Context!8224))

(assert (=> b!5191185 (= (flatMap!481 z!1189 lambda!259560) (derivationStepZipperUp!118 (h!66809 zl!343) (h!66808 s!2326)))))

(declare-fun lt!2137597 () Unit!152290)

(declare-fun lemmaFlatMapOnSingletonSet!13 ((Set Context!8224) Context!8224 Int) Unit!152290)

(assert (=> b!5191185 (= lt!2137597 (lemmaFlatMapOnSingletonSet!13 z!1189 (h!66809 zl!343) lambda!259560))))

(declare-fun tp!1456260 () Bool)

(declare-fun e!3233528 () Bool)

(declare-fun b!5191186 () Bool)

(declare-fun e!3233531 () Bool)

(assert (=> b!5191186 (= e!3233528 (and (inv!80068 (h!66809 zl!343)) e!3233531 tp!1456260))))

(declare-fun b!5191187 () Bool)

(declare-fun e!3233530 () Bool)

(assert (=> b!5191187 (= e!3233521 e!3233530)))

(declare-fun res!2204878 () Bool)

(assert (=> b!5191187 (=> res!2204878 e!3233530)))

(declare-fun lt!2137615 () Bool)

(declare-fun lt!2137618 () Bool)

(declare-fun lt!2137601 () Bool)

(assert (=> b!5191187 (= res!2204878 (or (not (= lt!2137618 (or lt!2137615 lt!2137601))) (is-Nil!60360 s!2326)))))

(declare-fun matchRSpec!1831 (Regex!14728 List!60484) Bool)

(assert (=> b!5191187 (= lt!2137601 (matchRSpec!1831 (regTwo!29969 r!7292) s!2326))))

(declare-fun matchR!6913 (Regex!14728 List!60484) Bool)

(assert (=> b!5191187 (= lt!2137601 (matchR!6913 (regTwo!29969 r!7292) s!2326))))

(declare-fun lt!2137600 () Unit!152290)

(declare-fun mainMatchTheorem!1831 (Regex!14728 List!60484) Unit!152290)

(assert (=> b!5191187 (= lt!2137600 (mainMatchTheorem!1831 (regTwo!29969 r!7292) s!2326))))

(assert (=> b!5191187 (= lt!2137615 (matchRSpec!1831 (regOne!29969 r!7292) s!2326))))

(assert (=> b!5191187 (= lt!2137615 (matchR!6913 (regOne!29969 r!7292) s!2326))))

(declare-fun lt!2137595 () Unit!152290)

(assert (=> b!5191187 (= lt!2137595 (mainMatchTheorem!1831 (regOne!29969 r!7292) s!2326))))

(declare-fun b!5191188 () Bool)

(assert (=> b!5191188 (= e!3233523 (matchZipper!1008 lt!2137598 (t!373637 s!2326)))))

(declare-fun b!5191189 () Bool)

(declare-fun res!2204877 () Bool)

(assert (=> b!5191189 (=> res!2204877 e!3233521)))

(declare-fun generalisedUnion!657 (List!60483) Regex!14728)

(declare-fun unfocusZipperList!170 (List!60485) List!60483)

(assert (=> b!5191189 (= res!2204877 (not (= r!7292 (generalisedUnion!657 (unfocusZipperList!170 zl!343)))))))

(declare-fun b!5191190 () Bool)

(assert (=> b!5191190 (= e!3233527 (not e!3233521))))

(declare-fun res!2204882 () Bool)

(assert (=> b!5191190 (=> res!2204882 e!3233521)))

(assert (=> b!5191190 (= res!2204882 (not (is-Cons!60361 zl!343)))))

(assert (=> b!5191190 (= lt!2137618 (matchRSpec!1831 r!7292 s!2326))))

(assert (=> b!5191190 (= lt!2137618 (matchR!6913 r!7292 s!2326))))

(declare-fun lt!2137605 () Unit!152290)

(assert (=> b!5191190 (= lt!2137605 (mainMatchTheorem!1831 r!7292 s!2326))))

(declare-fun b!5191191 () Bool)

(declare-fun tp!1456267 () Bool)

(assert (=> b!5191191 (= e!3233531 tp!1456267)))

(declare-fun b!5191192 () Bool)

(assert (=> b!5191192 (= e!3233533 tp_is_empty!38709)))

(declare-fun b!5191193 () Bool)

(assert (=> b!5191193 (= e!3233526 e!3233520)))

(declare-fun res!2204870 () Bool)

(assert (=> b!5191193 (=> res!2204870 e!3233520)))

(assert (=> b!5191193 (= res!2204870 (not (= lt!2137607 lt!2137617)))))

(assert (=> b!5191193 (= lt!2137617 (matchZipper!1008 z!1189 s!2326))))

(assert (=> b!5191193 (= lt!2137607 (matchZipper!1008 lt!2137610 (t!373637 s!2326)))))

(declare-fun res!2204872 () Bool)

(assert (=> start!549468 (=> (not res!2204872) (not e!3233527))))

(declare-fun validRegex!6464 (Regex!14728) Bool)

(assert (=> start!549468 (= res!2204872 (validRegex!6464 r!7292))))

(assert (=> start!549468 e!3233527))

(assert (=> start!549468 e!3233533))

(declare-fun condSetEmpty!32773 () Bool)

(assert (=> start!549468 (= condSetEmpty!32773 (= z!1189 (as set.empty (Set Context!8224))))))

(assert (=> start!549468 setRes!32773))

(assert (=> start!549468 e!3233528))

(assert (=> start!549468 e!3233522))

(declare-fun b!5191194 () Bool)

(assert (=> b!5191194 (= e!3233532 (validRegex!6464 (regTwo!29969 r!7292)))))

(declare-fun lt!2137599 () Context!8224)

(declare-fun lt!2137602 () (Set Context!8224))

(assert (=> b!5191194 (= (flatMap!481 lt!2137602 lambda!259560) (derivationStepZipperUp!118 lt!2137599 (h!66808 s!2326)))))

(declare-fun lt!2137596 () Unit!152290)

(assert (=> b!5191194 (= lt!2137596 (lemmaFlatMapOnSingletonSet!13 lt!2137602 lt!2137599 lambda!259560))))

(declare-fun lt!2137611 () (Set Context!8224))

(declare-fun lt!2137613 () Context!8224)

(assert (=> b!5191194 (= (flatMap!481 lt!2137611 lambda!259560) (derivationStepZipperUp!118 lt!2137613 (h!66808 s!2326)))))

(declare-fun lt!2137614 () Unit!152290)

(assert (=> b!5191194 (= lt!2137614 (lemmaFlatMapOnSingletonSet!13 lt!2137611 lt!2137613 lambda!259560))))

(declare-fun lt!2137604 () (Set Context!8224))

(assert (=> b!5191194 (= lt!2137604 (derivationStepZipperUp!118 lt!2137599 (h!66808 s!2326)))))

(declare-fun lt!2137616 () (Set Context!8224))

(assert (=> b!5191194 (= lt!2137616 (derivationStepZipperUp!118 lt!2137613 (h!66808 s!2326)))))

(assert (=> b!5191194 (= lt!2137602 (set.insert lt!2137599 (as set.empty (Set Context!8224))))))

(assert (=> b!5191194 (= lt!2137599 (Context!8225 (Cons!60359 (regTwo!29969 r!7292) Nil!60359)))))

(assert (=> b!5191194 (= lt!2137611 (set.insert lt!2137613 (as set.empty (Set Context!8224))))))

(assert (=> b!5191194 (= lt!2137613 (Context!8225 (Cons!60359 (regOne!29969 r!7292) Nil!60359)))))

(declare-fun b!5191195 () Bool)

(declare-fun res!2204873 () Bool)

(assert (=> b!5191195 (=> (not res!2204873) (not e!3233527))))

(declare-fun unfocusZipper!470 (List!60485) Regex!14728)

(assert (=> b!5191195 (= res!2204873 (= r!7292 (unfocusZipper!470 zl!343)))))

(declare-fun b!5191196 () Bool)

(declare-fun e!3233529 () Bool)

(assert (=> b!5191196 (= e!3233529 e!3233524)))

(declare-fun res!2204876 () Bool)

(assert (=> b!5191196 (=> res!2204876 e!3233524)))

(declare-fun lt!2137594 () (Set Context!8224))

(assert (=> b!5191196 (= res!2204876 (not (= lt!2137594 lt!2137610)))))

(assert (=> b!5191196 (= lt!2137610 (set.union lt!2137612 lt!2137598))))

(declare-fun lt!2137606 () Context!8224)

(declare-fun derivationStepZipperDown!197 (Regex!14728 Context!8224 C!29726) (Set Context!8224))

(assert (=> b!5191196 (= lt!2137598 (derivationStepZipperDown!197 (regTwo!29969 r!7292) lt!2137606 (h!66808 s!2326)))))

(assert (=> b!5191196 (= lt!2137612 (derivationStepZipperDown!197 (regOne!29969 r!7292) lt!2137606 (h!66808 s!2326)))))

(declare-fun setIsEmpty!32773 () Bool)

(assert (=> setIsEmpty!32773 setRes!32773))

(declare-fun b!5191197 () Bool)

(assert (=> b!5191197 (= e!3233530 e!3233529)))

(declare-fun res!2204867 () Bool)

(assert (=> b!5191197 (=> res!2204867 e!3233529)))

(declare-fun lt!2137609 () (Set Context!8224))

(assert (=> b!5191197 (= res!2204867 (not (= lt!2137609 lt!2137594)))))

(assert (=> b!5191197 (= lt!2137594 (derivationStepZipperDown!197 r!7292 lt!2137606 (h!66808 s!2326)))))

(assert (=> b!5191197 (= lt!2137606 (Context!8225 Nil!60359))))

(assert (=> b!5191197 (= lt!2137609 (derivationStepZipperUp!118 (Context!8225 (Cons!60359 r!7292 Nil!60359)) (h!66808 s!2326)))))

(assert (= (and start!549468 res!2204872) b!5191179))

(assert (= (and b!5191179 res!2204880) b!5191195))

(assert (= (and b!5191195 res!2204873) b!5191190))

(assert (= (and b!5191190 (not res!2204882)) b!5191176))

(assert (= (and b!5191176 (not res!2204881)) b!5191184))

(assert (= (and b!5191184 (not res!2204871)) b!5191178))

(assert (= (and b!5191178 (not res!2204879)) b!5191189))

(assert (= (and b!5191189 (not res!2204877)) b!5191177))

(assert (= (and b!5191177 (not res!2204869)) b!5191187))

(assert (= (and b!5191187 (not res!2204878)) b!5191197))

(assert (= (and b!5191197 (not res!2204867)) b!5191196))

(assert (= (and b!5191196 (not res!2204876)) b!5191185))

(assert (= (and b!5191185 (not res!2204868)) b!5191193))

(assert (= (and b!5191193 (not res!2204870)) b!5191174))

(assert (= (and b!5191174 (not res!2204874)) b!5191188))

(assert (= (and b!5191174 (not res!2204875)) b!5191194))

(assert (= (and start!549468 (is-ElementMatch!14728 r!7292)) b!5191192))

(assert (= (and start!549468 (is-Concat!23573 r!7292)) b!5191182))

(assert (= (and start!549468 (is-Star!14728 r!7292)) b!5191175))

(assert (= (and start!549468 (is-Union!14728 r!7292)) b!5191180))

(assert (= (and start!549468 condSetEmpty!32773) setIsEmpty!32773))

(assert (= (and start!549468 (not condSetEmpty!32773)) setNonEmpty!32773))

(assert (= setNonEmpty!32773 b!5191181))

(assert (= b!5191186 b!5191191))

(assert (= (and start!549468 (is-Cons!60361 zl!343)) b!5191186))

(assert (= (and start!549468 (is-Cons!60360 s!2326)) b!5191183))

(declare-fun m!6247202 () Bool)

(assert (=> b!5191187 m!6247202))

(declare-fun m!6247204 () Bool)

(assert (=> b!5191187 m!6247204))

(declare-fun m!6247206 () Bool)

(assert (=> b!5191187 m!6247206))

(declare-fun m!6247208 () Bool)

(assert (=> b!5191187 m!6247208))

(declare-fun m!6247210 () Bool)

(assert (=> b!5191187 m!6247210))

(declare-fun m!6247212 () Bool)

(assert (=> b!5191187 m!6247212))

(declare-fun m!6247214 () Bool)

(assert (=> b!5191179 m!6247214))

(declare-fun m!6247216 () Bool)

(assert (=> b!5191176 m!6247216))

(declare-fun m!6247218 () Bool)

(assert (=> b!5191186 m!6247218))

(declare-fun m!6247220 () Bool)

(assert (=> b!5191188 m!6247220))

(declare-fun m!6247222 () Bool)

(assert (=> start!549468 m!6247222))

(declare-fun m!6247224 () Bool)

(assert (=> b!5191189 m!6247224))

(assert (=> b!5191189 m!6247224))

(declare-fun m!6247226 () Bool)

(assert (=> b!5191189 m!6247226))

(declare-fun m!6247228 () Bool)

(assert (=> b!5191185 m!6247228))

(declare-fun m!6247230 () Bool)

(assert (=> b!5191185 m!6247230))

(declare-fun m!6247232 () Bool)

(assert (=> b!5191185 m!6247232))

(declare-fun m!6247234 () Bool)

(assert (=> b!5191185 m!6247234))

(declare-fun m!6247236 () Bool)

(assert (=> setNonEmpty!32773 m!6247236))

(declare-fun m!6247238 () Bool)

(assert (=> b!5191184 m!6247238))

(declare-fun m!6247240 () Bool)

(assert (=> b!5191197 m!6247240))

(declare-fun m!6247242 () Bool)

(assert (=> b!5191197 m!6247242))

(declare-fun m!6247244 () Bool)

(assert (=> b!5191174 m!6247244))

(declare-fun m!6247246 () Bool)

(assert (=> b!5191174 m!6247246))

(declare-fun m!6247248 () Bool)

(assert (=> b!5191190 m!6247248))

(declare-fun m!6247250 () Bool)

(assert (=> b!5191190 m!6247250))

(declare-fun m!6247252 () Bool)

(assert (=> b!5191190 m!6247252))

(declare-fun m!6247254 () Bool)

(assert (=> b!5191196 m!6247254))

(declare-fun m!6247256 () Bool)

(assert (=> b!5191196 m!6247256))

(declare-fun m!6247258 () Bool)

(assert (=> b!5191195 m!6247258))

(declare-fun m!6247260 () Bool)

(assert (=> b!5191194 m!6247260))

(declare-fun m!6247262 () Bool)

(assert (=> b!5191194 m!6247262))

(declare-fun m!6247264 () Bool)

(assert (=> b!5191194 m!6247264))

(declare-fun m!6247266 () Bool)

(assert (=> b!5191194 m!6247266))

(declare-fun m!6247268 () Bool)

(assert (=> b!5191194 m!6247268))

(declare-fun m!6247270 () Bool)

(assert (=> b!5191194 m!6247270))

(declare-fun m!6247272 () Bool)

(assert (=> b!5191194 m!6247272))

(declare-fun m!6247274 () Bool)

(assert (=> b!5191194 m!6247274))

(declare-fun m!6247276 () Bool)

(assert (=> b!5191194 m!6247276))

(declare-fun m!6247278 () Bool)

(assert (=> b!5191193 m!6247278))

(declare-fun m!6247280 () Bool)

(assert (=> b!5191193 m!6247280))

(push 1)

(assert (not b!5191189))

(assert tp_is_empty!38709)

(assert (not b!5191182))

(assert (not b!5191195))

(assert (not b!5191190))

(assert (not b!5191191))

(assert (not b!5191193))

(assert (not b!5191186))

(assert (not b!5191196))

(assert (not b!5191181))

(assert (not b!5191184))

(assert (not b!5191174))

(assert (not b!5191176))

(assert (not start!549468))

(assert (not b!5191187))

(assert (not b!5191183))

(assert (not b!5191188))

(assert (not b!5191197))

(assert (not b!5191185))

(assert (not b!5191180))

(assert (not b!5191194))

(assert (not b!5191179))

(assert (not setNonEmpty!32773))

(assert (not b!5191175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1208632 () Bool)

(declare-fun d!1676756 () Bool)

(assert (= bs!1208632 (and d!1676756 b!5191185)))

(declare-fun lambda!259570 () Int)

(assert (=> bs!1208632 (= lambda!259570 lambda!259560)))

(assert (=> d!1676756 true))

(assert (=> d!1676756 (= (derivationStepZipper!1030 z!1189 (h!66808 s!2326)) (flatMap!481 z!1189 lambda!259570))))

(declare-fun bs!1208633 () Bool)

(assert (= bs!1208633 d!1676756))

(declare-fun m!6247362 () Bool)

(assert (=> bs!1208633 m!6247362))

(assert (=> b!5191185 d!1676756))

(declare-fun d!1676758 () Bool)

(declare-fun choose!38561 ((Set Context!8224) Int) (Set Context!8224))

(assert (=> d!1676758 (= (flatMap!481 z!1189 lambda!259560) (choose!38561 z!1189 lambda!259560))))

(declare-fun bs!1208634 () Bool)

(assert (= bs!1208634 d!1676758))

(declare-fun m!6247364 () Bool)

(assert (=> bs!1208634 m!6247364))

(assert (=> b!5191185 d!1676758))

(declare-fun b!5191286 () Bool)

(declare-fun e!3233584 () (Set Context!8224))

(assert (=> b!5191286 (= e!3233584 (as set.empty (Set Context!8224)))))

(declare-fun e!3233583 () (Set Context!8224))

(declare-fun call!364976 () (Set Context!8224))

(declare-fun b!5191287 () Bool)

(assert (=> b!5191287 (= e!3233583 (set.union call!364976 (derivationStepZipperUp!118 (Context!8225 (t!373636 (exprs!4612 (h!66809 zl!343)))) (h!66808 s!2326))))))

(declare-fun b!5191289 () Bool)

(assert (=> b!5191289 (= e!3233584 call!364976)))

(declare-fun bm!364971 () Bool)

(assert (=> bm!364971 (= call!364976 (derivationStepZipperDown!197 (h!66807 (exprs!4612 (h!66809 zl!343))) (Context!8225 (t!373636 (exprs!4612 (h!66809 zl!343)))) (h!66808 s!2326)))))

(declare-fun b!5191290 () Bool)

(assert (=> b!5191290 (= e!3233583 e!3233584)))

(declare-fun c!894844 () Bool)

(assert (=> b!5191290 (= c!894844 (is-Cons!60359 (exprs!4612 (h!66809 zl!343))))))

(declare-fun b!5191288 () Bool)

(declare-fun e!3233582 () Bool)

(declare-fun nullable!4921 (Regex!14728) Bool)

(assert (=> b!5191288 (= e!3233582 (nullable!4921 (h!66807 (exprs!4612 (h!66809 zl!343)))))))

(declare-fun d!1676760 () Bool)

(declare-fun c!894843 () Bool)

(assert (=> d!1676760 (= c!894843 e!3233582)))

(declare-fun res!2204933 () Bool)

(assert (=> d!1676760 (=> (not res!2204933) (not e!3233582))))

(assert (=> d!1676760 (= res!2204933 (is-Cons!60359 (exprs!4612 (h!66809 zl!343))))))

(assert (=> d!1676760 (= (derivationStepZipperUp!118 (h!66809 zl!343) (h!66808 s!2326)) e!3233583)))

(assert (= (and d!1676760 res!2204933) b!5191288))

(assert (= (and d!1676760 c!894843) b!5191287))

(assert (= (and d!1676760 (not c!894843)) b!5191290))

(assert (= (and b!5191290 c!894844) b!5191289))

(assert (= (and b!5191290 (not c!894844)) b!5191286))

(assert (= (or b!5191287 b!5191289) bm!364971))

(declare-fun m!6247366 () Bool)

(assert (=> b!5191287 m!6247366))

(declare-fun m!6247368 () Bool)

(assert (=> bm!364971 m!6247368))

(declare-fun m!6247370 () Bool)

(assert (=> b!5191288 m!6247370))

(assert (=> b!5191185 d!1676760))

(declare-fun d!1676762 () Bool)

(declare-fun dynLambda!23900 (Int Context!8224) (Set Context!8224))

(assert (=> d!1676762 (= (flatMap!481 z!1189 lambda!259560) (dynLambda!23900 lambda!259560 (h!66809 zl!343)))))

(declare-fun lt!2137696 () Unit!152290)

(declare-fun choose!38562 ((Set Context!8224) Context!8224 Int) Unit!152290)

(assert (=> d!1676762 (= lt!2137696 (choose!38562 z!1189 (h!66809 zl!343) lambda!259560))))

(assert (=> d!1676762 (= z!1189 (set.insert (h!66809 zl!343) (as set.empty (Set Context!8224))))))

(assert (=> d!1676762 (= (lemmaFlatMapOnSingletonSet!13 z!1189 (h!66809 zl!343) lambda!259560) lt!2137696)))

(declare-fun b_lambda!201181 () Bool)

(assert (=> (not b_lambda!201181) (not d!1676762)))

(declare-fun bs!1208635 () Bool)

(assert (= bs!1208635 d!1676762))

(assert (=> bs!1208635 m!6247230))

(declare-fun m!6247372 () Bool)

(assert (=> bs!1208635 m!6247372))

(declare-fun m!6247374 () Bool)

(assert (=> bs!1208635 m!6247374))

(declare-fun m!6247376 () Bool)

(assert (=> bs!1208635 m!6247376))

(assert (=> b!5191185 d!1676762))

(declare-fun d!1676764 () Bool)

(declare-fun lt!2137699 () Regex!14728)

(assert (=> d!1676764 (validRegex!6464 lt!2137699)))

(assert (=> d!1676764 (= lt!2137699 (generalisedUnion!657 (unfocusZipperList!170 zl!343)))))

(assert (=> d!1676764 (= (unfocusZipper!470 zl!343) lt!2137699)))

(declare-fun bs!1208636 () Bool)

(assert (= bs!1208636 d!1676764))

(declare-fun m!6247378 () Bool)

(assert (=> bs!1208636 m!6247378))

(assert (=> bs!1208636 m!6247224))

(assert (=> bs!1208636 m!6247224))

(assert (=> bs!1208636 m!6247226))

(assert (=> b!5191195 d!1676764))

(declare-fun b!5191311 () Bool)

(declare-fun e!3233598 () Bool)

(declare-fun lt!2137702 () Regex!14728)

(declare-fun isEmptyExpr!737 (Regex!14728) Bool)

(assert (=> b!5191311 (= e!3233598 (isEmptyExpr!737 lt!2137702))))

(declare-fun b!5191312 () Bool)

(declare-fun e!3233597 () Bool)

(declare-fun isEmpty!32315 (List!60483) Bool)

(assert (=> b!5191312 (= e!3233597 (isEmpty!32315 (t!373636 (exprs!4612 (h!66809 zl!343)))))))

(declare-fun b!5191313 () Bool)

(declare-fun e!3233601 () Bool)

(declare-fun head!11121 (List!60483) Regex!14728)

(assert (=> b!5191313 (= e!3233601 (= lt!2137702 (head!11121 (exprs!4612 (h!66809 zl!343)))))))

(declare-fun d!1676766 () Bool)

(declare-fun e!3233602 () Bool)

(assert (=> d!1676766 e!3233602))

(declare-fun res!2204938 () Bool)

(assert (=> d!1676766 (=> (not res!2204938) (not e!3233602))))

(assert (=> d!1676766 (= res!2204938 (validRegex!6464 lt!2137702))))

(declare-fun e!3233600 () Regex!14728)

(assert (=> d!1676766 (= lt!2137702 e!3233600)))

(declare-fun c!894854 () Bool)

(assert (=> d!1676766 (= c!894854 e!3233597)))

(declare-fun res!2204939 () Bool)

(assert (=> d!1676766 (=> (not res!2204939) (not e!3233597))))

(assert (=> d!1676766 (= res!2204939 (is-Cons!60359 (exprs!4612 (h!66809 zl!343))))))

(declare-fun lambda!259573 () Int)

(declare-fun forall!14209 (List!60483 Int) Bool)

(assert (=> d!1676766 (forall!14209 (exprs!4612 (h!66809 zl!343)) lambda!259573)))

(assert (=> d!1676766 (= (generalisedConcat!397 (exprs!4612 (h!66809 zl!343))) lt!2137702)))

(declare-fun b!5191314 () Bool)

(assert (=> b!5191314 (= e!3233598 e!3233601)))

(declare-fun c!894855 () Bool)

(declare-fun tail!10218 (List!60483) List!60483)

(assert (=> b!5191314 (= c!894855 (isEmpty!32315 (tail!10218 (exprs!4612 (h!66809 zl!343)))))))

(declare-fun b!5191315 () Bool)

(assert (=> b!5191315 (= e!3233602 e!3233598)))

(declare-fun c!894856 () Bool)

(assert (=> b!5191315 (= c!894856 (isEmpty!32315 (exprs!4612 (h!66809 zl!343))))))

(declare-fun b!5191316 () Bool)

(declare-fun e!3233599 () Regex!14728)

(assert (=> b!5191316 (= e!3233599 EmptyExpr!14728)))

(declare-fun b!5191317 () Bool)

(assert (=> b!5191317 (= e!3233599 (Concat!23573 (h!66807 (exprs!4612 (h!66809 zl!343))) (generalisedConcat!397 (t!373636 (exprs!4612 (h!66809 zl!343))))))))

(declare-fun b!5191318 () Bool)

(assert (=> b!5191318 (= e!3233600 (h!66807 (exprs!4612 (h!66809 zl!343))))))

(declare-fun b!5191319 () Bool)

(declare-fun isConcat!260 (Regex!14728) Bool)

(assert (=> b!5191319 (= e!3233601 (isConcat!260 lt!2137702))))

(declare-fun b!5191320 () Bool)

(assert (=> b!5191320 (= e!3233600 e!3233599)))

(declare-fun c!894853 () Bool)

(assert (=> b!5191320 (= c!894853 (is-Cons!60359 (exprs!4612 (h!66809 zl!343))))))

(assert (= (and d!1676766 res!2204939) b!5191312))

(assert (= (and d!1676766 c!894854) b!5191318))

(assert (= (and d!1676766 (not c!894854)) b!5191320))

(assert (= (and b!5191320 c!894853) b!5191317))

(assert (= (and b!5191320 (not c!894853)) b!5191316))

(assert (= (and d!1676766 res!2204938) b!5191315))

(assert (= (and b!5191315 c!894856) b!5191311))

(assert (= (and b!5191315 (not c!894856)) b!5191314))

(assert (= (and b!5191314 c!894855) b!5191313))

(assert (= (and b!5191314 (not c!894855)) b!5191319))

(declare-fun m!6247380 () Bool)

(assert (=> d!1676766 m!6247380))

(declare-fun m!6247382 () Bool)

(assert (=> d!1676766 m!6247382))

(declare-fun m!6247384 () Bool)

(assert (=> b!5191311 m!6247384))

(declare-fun m!6247386 () Bool)

(assert (=> b!5191319 m!6247386))

(declare-fun m!6247388 () Bool)

(assert (=> b!5191313 m!6247388))

(declare-fun m!6247390 () Bool)

(assert (=> b!5191315 m!6247390))

(declare-fun m!6247392 () Bool)

(assert (=> b!5191312 m!6247392))

(declare-fun m!6247394 () Bool)

(assert (=> b!5191317 m!6247394))

(declare-fun m!6247396 () Bool)

(assert (=> b!5191314 m!6247396))

(assert (=> b!5191314 m!6247396))

(declare-fun m!6247398 () Bool)

(assert (=> b!5191314 m!6247398))

(assert (=> b!5191184 d!1676766))

(declare-fun bs!1208637 () Bool)

(declare-fun d!1676768 () Bool)

(assert (= bs!1208637 (and d!1676768 d!1676766)))

(declare-fun lambda!259576 () Int)

(assert (=> bs!1208637 (= lambda!259576 lambda!259573)))

(assert (=> d!1676768 (= (inv!80068 (h!66809 zl!343)) (forall!14209 (exprs!4612 (h!66809 zl!343)) lambda!259576))))

(declare-fun bs!1208638 () Bool)

(assert (= bs!1208638 d!1676768))

(declare-fun m!6247400 () Bool)

(assert (=> bs!1208638 m!6247400))

(assert (=> b!5191186 d!1676768))

(declare-fun d!1676770 () Bool)

(assert (=> d!1676770 (= (isEmpty!32313 (t!373638 zl!343)) (is-Nil!60361 (t!373638 zl!343)))))

(assert (=> b!5191176 d!1676770))

(declare-fun b!5191343 () Bool)

(declare-fun e!3233616 () (Set Context!8224))

(assert (=> b!5191343 (= e!3233616 (set.insert lt!2137606 (as set.empty (Set Context!8224))))))

(declare-fun b!5191344 () Bool)

(declare-fun c!894870 () Bool)

(declare-fun e!3233615 () Bool)

(assert (=> b!5191344 (= c!894870 e!3233615)))

(declare-fun res!2204942 () Bool)

(assert (=> b!5191344 (=> (not res!2204942) (not e!3233615))))

(assert (=> b!5191344 (= res!2204942 (is-Concat!23573 (regTwo!29969 r!7292)))))

(declare-fun e!3233620 () (Set Context!8224))

(declare-fun e!3233617 () (Set Context!8224))

(assert (=> b!5191344 (= e!3233620 e!3233617)))

(declare-fun b!5191345 () Bool)

(assert (=> b!5191345 (= e!3233616 e!3233620)))

(declare-fun c!894869 () Bool)

(assert (=> b!5191345 (= c!894869 (is-Union!14728 (regTwo!29969 r!7292)))))

(declare-fun b!5191346 () Bool)

(declare-fun e!3233619 () (Set Context!8224))

(declare-fun call!364991 () (Set Context!8224))

(assert (=> b!5191346 (= e!3233619 call!364991)))

(declare-fun c!894871 () Bool)

(declare-fun call!364994 () (Set Context!8224))

(declare-fun bm!364984 () Bool)

(declare-fun call!364992 () List!60483)

(assert (=> bm!364984 (= call!364994 (derivationStepZipperDown!197 (ite c!894869 (regTwo!29969 (regTwo!29969 r!7292)) (ite c!894870 (regTwo!29968 (regTwo!29969 r!7292)) (ite c!894871 (regOne!29968 (regTwo!29969 r!7292)) (reg!15057 (regTwo!29969 r!7292))))) (ite (or c!894869 c!894870) lt!2137606 (Context!8225 call!364992)) (h!66808 s!2326)))))

(declare-fun b!5191347 () Bool)

(assert (=> b!5191347 (= e!3233617 e!3233619)))

(assert (=> b!5191347 (= c!894871 (is-Concat!23573 (regTwo!29969 r!7292)))))

(declare-fun bm!364985 () Bool)

(declare-fun call!364990 () List!60483)

(assert (=> bm!364985 (= call!364992 call!364990)))

(declare-fun b!5191349 () Bool)

(assert (=> b!5191349 (= e!3233615 (nullable!4921 (regOne!29968 (regTwo!29969 r!7292))))))

(declare-fun bm!364986 () Bool)

(declare-fun $colon$colon!1258 (List!60483 Regex!14728) List!60483)

(assert (=> bm!364986 (= call!364990 ($colon$colon!1258 (exprs!4612 lt!2137606) (ite (or c!894870 c!894871) (regTwo!29968 (regTwo!29969 r!7292)) (regTwo!29969 r!7292))))))

(declare-fun b!5191350 () Bool)

(declare-fun e!3233618 () (Set Context!8224))

(assert (=> b!5191350 (= e!3233618 call!364991)))

(declare-fun d!1676772 () Bool)

(declare-fun c!894868 () Bool)

(assert (=> d!1676772 (= c!894868 (and (is-ElementMatch!14728 (regTwo!29969 r!7292)) (= (c!894828 (regTwo!29969 r!7292)) (h!66808 s!2326))))))

(assert (=> d!1676772 (= (derivationStepZipperDown!197 (regTwo!29969 r!7292) lt!2137606 (h!66808 s!2326)) e!3233616)))

(declare-fun b!5191348 () Bool)

(declare-fun call!364989 () (Set Context!8224))

(assert (=> b!5191348 (= e!3233620 (set.union call!364989 call!364994))))

(declare-fun b!5191351 () Bool)

(declare-fun c!894867 () Bool)

(assert (=> b!5191351 (= c!894867 (is-Star!14728 (regTwo!29969 r!7292)))))

(assert (=> b!5191351 (= e!3233619 e!3233618)))

(declare-fun b!5191352 () Bool)

(declare-fun call!364993 () (Set Context!8224))

(assert (=> b!5191352 (= e!3233617 (set.union call!364989 call!364993))))

(declare-fun bm!364987 () Bool)

(assert (=> bm!364987 (= call!364991 call!364993)))

(declare-fun bm!364988 () Bool)

(assert (=> bm!364988 (= call!364989 (derivationStepZipperDown!197 (ite c!894869 (regOne!29969 (regTwo!29969 r!7292)) (regOne!29968 (regTwo!29969 r!7292))) (ite c!894869 lt!2137606 (Context!8225 call!364990)) (h!66808 s!2326)))))

(declare-fun b!5191353 () Bool)

(assert (=> b!5191353 (= e!3233618 (as set.empty (Set Context!8224)))))

(declare-fun bm!364989 () Bool)

(assert (=> bm!364989 (= call!364993 call!364994)))

(assert (= (and d!1676772 c!894868) b!5191343))

(assert (= (and d!1676772 (not c!894868)) b!5191345))

(assert (= (and b!5191345 c!894869) b!5191348))

(assert (= (and b!5191345 (not c!894869)) b!5191344))

(assert (= (and b!5191344 res!2204942) b!5191349))

(assert (= (and b!5191344 c!894870) b!5191352))

(assert (= (and b!5191344 (not c!894870)) b!5191347))

(assert (= (and b!5191347 c!894871) b!5191346))

(assert (= (and b!5191347 (not c!894871)) b!5191351))

(assert (= (and b!5191351 c!894867) b!5191350))

(assert (= (and b!5191351 (not c!894867)) b!5191353))

(assert (= (or b!5191346 b!5191350) bm!364985))

(assert (= (or b!5191346 b!5191350) bm!364987))

(assert (= (or b!5191352 bm!364985) bm!364986))

(assert (= (or b!5191352 bm!364987) bm!364989))

(assert (= (or b!5191348 bm!364989) bm!364984))

(assert (= (or b!5191348 b!5191352) bm!364988))

(declare-fun m!6247402 () Bool)

(assert (=> bm!364988 m!6247402))

(declare-fun m!6247404 () Bool)

(assert (=> b!5191349 m!6247404))

(declare-fun m!6247406 () Bool)

(assert (=> bm!364984 m!6247406))

(declare-fun m!6247408 () Bool)

(assert (=> bm!364986 m!6247408))

(declare-fun m!6247410 () Bool)

(assert (=> b!5191343 m!6247410))

(assert (=> b!5191196 d!1676772))

(declare-fun b!5191354 () Bool)

(declare-fun e!3233622 () (Set Context!8224))

(assert (=> b!5191354 (= e!3233622 (set.insert lt!2137606 (as set.empty (Set Context!8224))))))

(declare-fun b!5191355 () Bool)

(declare-fun c!894875 () Bool)

(declare-fun e!3233621 () Bool)

(assert (=> b!5191355 (= c!894875 e!3233621)))

(declare-fun res!2204943 () Bool)

(assert (=> b!5191355 (=> (not res!2204943) (not e!3233621))))

(assert (=> b!5191355 (= res!2204943 (is-Concat!23573 (regOne!29969 r!7292)))))

(declare-fun e!3233626 () (Set Context!8224))

(declare-fun e!3233623 () (Set Context!8224))

(assert (=> b!5191355 (= e!3233626 e!3233623)))

(declare-fun b!5191356 () Bool)

(assert (=> b!5191356 (= e!3233622 e!3233626)))

(declare-fun c!894874 () Bool)

(assert (=> b!5191356 (= c!894874 (is-Union!14728 (regOne!29969 r!7292)))))

(declare-fun b!5191357 () Bool)

(declare-fun e!3233625 () (Set Context!8224))

(declare-fun call!364997 () (Set Context!8224))

(assert (=> b!5191357 (= e!3233625 call!364997)))

(declare-fun call!364998 () List!60483)

(declare-fun bm!364990 () Bool)

(declare-fun c!894876 () Bool)

(declare-fun call!365000 () (Set Context!8224))

(assert (=> bm!364990 (= call!365000 (derivationStepZipperDown!197 (ite c!894874 (regTwo!29969 (regOne!29969 r!7292)) (ite c!894875 (regTwo!29968 (regOne!29969 r!7292)) (ite c!894876 (regOne!29968 (regOne!29969 r!7292)) (reg!15057 (regOne!29969 r!7292))))) (ite (or c!894874 c!894875) lt!2137606 (Context!8225 call!364998)) (h!66808 s!2326)))))

(declare-fun b!5191358 () Bool)

(assert (=> b!5191358 (= e!3233623 e!3233625)))

(assert (=> b!5191358 (= c!894876 (is-Concat!23573 (regOne!29969 r!7292)))))

(declare-fun bm!364991 () Bool)

(declare-fun call!364996 () List!60483)

(assert (=> bm!364991 (= call!364998 call!364996)))

(declare-fun b!5191360 () Bool)

(assert (=> b!5191360 (= e!3233621 (nullable!4921 (regOne!29968 (regOne!29969 r!7292))))))

(declare-fun bm!364992 () Bool)

(assert (=> bm!364992 (= call!364996 ($colon$colon!1258 (exprs!4612 lt!2137606) (ite (or c!894875 c!894876) (regTwo!29968 (regOne!29969 r!7292)) (regOne!29969 r!7292))))))

(declare-fun b!5191361 () Bool)

(declare-fun e!3233624 () (Set Context!8224))

(assert (=> b!5191361 (= e!3233624 call!364997)))

(declare-fun d!1676774 () Bool)

(declare-fun c!894873 () Bool)

(assert (=> d!1676774 (= c!894873 (and (is-ElementMatch!14728 (regOne!29969 r!7292)) (= (c!894828 (regOne!29969 r!7292)) (h!66808 s!2326))))))

(assert (=> d!1676774 (= (derivationStepZipperDown!197 (regOne!29969 r!7292) lt!2137606 (h!66808 s!2326)) e!3233622)))

(declare-fun b!5191359 () Bool)

(declare-fun call!364995 () (Set Context!8224))

(assert (=> b!5191359 (= e!3233626 (set.union call!364995 call!365000))))

(declare-fun b!5191362 () Bool)

(declare-fun c!894872 () Bool)

(assert (=> b!5191362 (= c!894872 (is-Star!14728 (regOne!29969 r!7292)))))

(assert (=> b!5191362 (= e!3233625 e!3233624)))

(declare-fun b!5191363 () Bool)

(declare-fun call!364999 () (Set Context!8224))

(assert (=> b!5191363 (= e!3233623 (set.union call!364995 call!364999))))

(declare-fun bm!364993 () Bool)

(assert (=> bm!364993 (= call!364997 call!364999)))

(declare-fun bm!364994 () Bool)

(assert (=> bm!364994 (= call!364995 (derivationStepZipperDown!197 (ite c!894874 (regOne!29969 (regOne!29969 r!7292)) (regOne!29968 (regOne!29969 r!7292))) (ite c!894874 lt!2137606 (Context!8225 call!364996)) (h!66808 s!2326)))))

(declare-fun b!5191364 () Bool)

(assert (=> b!5191364 (= e!3233624 (as set.empty (Set Context!8224)))))

(declare-fun bm!364995 () Bool)

(assert (=> bm!364995 (= call!364999 call!365000)))

(assert (= (and d!1676774 c!894873) b!5191354))

(assert (= (and d!1676774 (not c!894873)) b!5191356))

(assert (= (and b!5191356 c!894874) b!5191359))

(assert (= (and b!5191356 (not c!894874)) b!5191355))

(assert (= (and b!5191355 res!2204943) b!5191360))

(assert (= (and b!5191355 c!894875) b!5191363))

(assert (= (and b!5191355 (not c!894875)) b!5191358))

(assert (= (and b!5191358 c!894876) b!5191357))

(assert (= (and b!5191358 (not c!894876)) b!5191362))

(assert (= (and b!5191362 c!894872) b!5191361))

(assert (= (and b!5191362 (not c!894872)) b!5191364))

(assert (= (or b!5191357 b!5191361) bm!364991))

(assert (= (or b!5191357 b!5191361) bm!364993))

(assert (= (or b!5191363 bm!364991) bm!364992))

(assert (= (or b!5191363 bm!364993) bm!364995))

(assert (= (or b!5191359 bm!364995) bm!364990))

(assert (= (or b!5191359 b!5191363) bm!364994))

(declare-fun m!6247412 () Bool)

(assert (=> bm!364994 m!6247412))

(declare-fun m!6247414 () Bool)

(assert (=> b!5191360 m!6247414))

(declare-fun m!6247416 () Bool)

(assert (=> bm!364990 m!6247416))

(declare-fun m!6247418 () Bool)

(assert (=> bm!364992 m!6247418))

(assert (=> b!5191354 m!6247410))

(assert (=> b!5191196 d!1676774))

(declare-fun d!1676776 () Bool)

(declare-fun c!894879 () Bool)

(declare-fun isEmpty!32316 (List!60484) Bool)

(assert (=> d!1676776 (= c!894879 (isEmpty!32316 s!2326))))

(declare-fun e!3233629 () Bool)

(assert (=> d!1676776 (= (matchZipper!1008 z!1189 s!2326) e!3233629)))

(declare-fun b!5191369 () Bool)

(declare-fun nullableZipper!1210 ((Set Context!8224)) Bool)

(assert (=> b!5191369 (= e!3233629 (nullableZipper!1210 z!1189))))

(declare-fun b!5191370 () Bool)

(declare-fun head!11122 (List!60484) C!29726)

(declare-fun tail!10219 (List!60484) List!60484)

(assert (=> b!5191370 (= e!3233629 (matchZipper!1008 (derivationStepZipper!1030 z!1189 (head!11122 s!2326)) (tail!10219 s!2326)))))

(assert (= (and d!1676776 c!894879) b!5191369))

(assert (= (and d!1676776 (not c!894879)) b!5191370))

(declare-fun m!6247420 () Bool)

(assert (=> d!1676776 m!6247420))

(declare-fun m!6247422 () Bool)

(assert (=> b!5191369 m!6247422))

(declare-fun m!6247424 () Bool)

(assert (=> b!5191370 m!6247424))

(assert (=> b!5191370 m!6247424))

(declare-fun m!6247426 () Bool)

(assert (=> b!5191370 m!6247426))

(declare-fun m!6247428 () Bool)

(assert (=> b!5191370 m!6247428))

(assert (=> b!5191370 m!6247426))

(assert (=> b!5191370 m!6247428))

(declare-fun m!6247430 () Bool)

(assert (=> b!5191370 m!6247430))

(assert (=> b!5191193 d!1676776))

(declare-fun d!1676778 () Bool)

(declare-fun c!894880 () Bool)

(assert (=> d!1676778 (= c!894880 (isEmpty!32316 (t!373637 s!2326)))))

(declare-fun e!3233630 () Bool)

(assert (=> d!1676778 (= (matchZipper!1008 lt!2137610 (t!373637 s!2326)) e!3233630)))

(declare-fun b!5191371 () Bool)

(assert (=> b!5191371 (= e!3233630 (nullableZipper!1210 lt!2137610))))

(declare-fun b!5191372 () Bool)

(assert (=> b!5191372 (= e!3233630 (matchZipper!1008 (derivationStepZipper!1030 lt!2137610 (head!11122 (t!373637 s!2326))) (tail!10219 (t!373637 s!2326))))))

(assert (= (and d!1676778 c!894880) b!5191371))

(assert (= (and d!1676778 (not c!894880)) b!5191372))

(declare-fun m!6247432 () Bool)

(assert (=> d!1676778 m!6247432))

(declare-fun m!6247434 () Bool)

(assert (=> b!5191371 m!6247434))

(declare-fun m!6247436 () Bool)

(assert (=> b!5191372 m!6247436))

(assert (=> b!5191372 m!6247436))

(declare-fun m!6247438 () Bool)

(assert (=> b!5191372 m!6247438))

(declare-fun m!6247440 () Bool)

(assert (=> b!5191372 m!6247440))

(assert (=> b!5191372 m!6247438))

(assert (=> b!5191372 m!6247440))

(declare-fun m!6247442 () Bool)

(assert (=> b!5191372 m!6247442))

(assert (=> b!5191193 d!1676778))

(declare-fun d!1676780 () Bool)

(declare-fun c!894881 () Bool)

(assert (=> d!1676780 (= c!894881 (isEmpty!32316 (t!373637 s!2326)))))

(declare-fun e!3233631 () Bool)

(assert (=> d!1676780 (= (matchZipper!1008 lt!2137612 (t!373637 s!2326)) e!3233631)))

(declare-fun b!5191373 () Bool)

(assert (=> b!5191373 (= e!3233631 (nullableZipper!1210 lt!2137612))))

(declare-fun b!5191374 () Bool)

(assert (=> b!5191374 (= e!3233631 (matchZipper!1008 (derivationStepZipper!1030 lt!2137612 (head!11122 (t!373637 s!2326))) (tail!10219 (t!373637 s!2326))))))

(assert (= (and d!1676780 c!894881) b!5191373))

(assert (= (and d!1676780 (not c!894881)) b!5191374))

(assert (=> d!1676780 m!6247432))

(declare-fun m!6247444 () Bool)

(assert (=> b!5191373 m!6247444))

(assert (=> b!5191374 m!6247436))

(assert (=> b!5191374 m!6247436))

(declare-fun m!6247446 () Bool)

(assert (=> b!5191374 m!6247446))

(assert (=> b!5191374 m!6247440))

(assert (=> b!5191374 m!6247446))

(assert (=> b!5191374 m!6247440))

(declare-fun m!6247448 () Bool)

(assert (=> b!5191374 m!6247448))

(assert (=> b!5191174 d!1676780))

(declare-fun d!1676782 () Bool)

(declare-fun e!3233634 () Bool)

(assert (=> d!1676782 (= (matchZipper!1008 (set.union lt!2137612 lt!2137598) (t!373637 s!2326)) e!3233634)))

(declare-fun res!2204946 () Bool)

(assert (=> d!1676782 (=> res!2204946 e!3233634)))

(assert (=> d!1676782 (= res!2204946 (matchZipper!1008 lt!2137612 (t!373637 s!2326)))))

(declare-fun lt!2137705 () Unit!152290)

(declare-fun choose!38563 ((Set Context!8224) (Set Context!8224) List!60484) Unit!152290)

(assert (=> d!1676782 (= lt!2137705 (choose!38563 lt!2137612 lt!2137598 (t!373637 s!2326)))))

(assert (=> d!1676782 (= (lemmaZipperConcatMatchesSameAsBothZippers!7 lt!2137612 lt!2137598 (t!373637 s!2326)) lt!2137705)))

(declare-fun b!5191377 () Bool)

(assert (=> b!5191377 (= e!3233634 (matchZipper!1008 lt!2137598 (t!373637 s!2326)))))

(assert (= (and d!1676782 (not res!2204946)) b!5191377))

(declare-fun m!6247450 () Bool)

(assert (=> d!1676782 m!6247450))

(assert (=> d!1676782 m!6247244))

(declare-fun m!6247452 () Bool)

(assert (=> d!1676782 m!6247452))

(assert (=> b!5191377 m!6247220))

(assert (=> b!5191174 d!1676782))

(declare-fun d!1676784 () Bool)

(assert (=> d!1676784 (= (flatMap!481 lt!2137602 lambda!259560) (dynLambda!23900 lambda!259560 lt!2137599))))

(declare-fun lt!2137706 () Unit!152290)

(assert (=> d!1676784 (= lt!2137706 (choose!38562 lt!2137602 lt!2137599 lambda!259560))))

(assert (=> d!1676784 (= lt!2137602 (set.insert lt!2137599 (as set.empty (Set Context!8224))))))

(assert (=> d!1676784 (= (lemmaFlatMapOnSingletonSet!13 lt!2137602 lt!2137599 lambda!259560) lt!2137706)))

(declare-fun b_lambda!201183 () Bool)

(assert (=> (not b_lambda!201183) (not d!1676784)))

(declare-fun bs!1208639 () Bool)

(assert (= bs!1208639 d!1676784))

(assert (=> bs!1208639 m!6247266))

(declare-fun m!6247454 () Bool)

(assert (=> bs!1208639 m!6247454))

(declare-fun m!6247456 () Bool)

(assert (=> bs!1208639 m!6247456))

(assert (=> bs!1208639 m!6247260))

(assert (=> b!5191194 d!1676784))

(declare-fun d!1676786 () Bool)

(assert (=> d!1676786 (= (flatMap!481 lt!2137611 lambda!259560) (choose!38561 lt!2137611 lambda!259560))))

(declare-fun bs!1208640 () Bool)

(assert (= bs!1208640 d!1676786))

(declare-fun m!6247458 () Bool)

(assert (=> bs!1208640 m!6247458))

(assert (=> b!5191194 d!1676786))

(declare-fun b!5191378 () Bool)

(declare-fun e!3233637 () (Set Context!8224))

(assert (=> b!5191378 (= e!3233637 (as set.empty (Set Context!8224)))))

(declare-fun e!3233636 () (Set Context!8224))

(declare-fun b!5191379 () Bool)

(declare-fun call!365001 () (Set Context!8224))

(assert (=> b!5191379 (= e!3233636 (set.union call!365001 (derivationStepZipperUp!118 (Context!8225 (t!373636 (exprs!4612 lt!2137599))) (h!66808 s!2326))))))

(declare-fun b!5191381 () Bool)

(assert (=> b!5191381 (= e!3233637 call!365001)))

(declare-fun bm!364996 () Bool)

(assert (=> bm!364996 (= call!365001 (derivationStepZipperDown!197 (h!66807 (exprs!4612 lt!2137599)) (Context!8225 (t!373636 (exprs!4612 lt!2137599))) (h!66808 s!2326)))))

(declare-fun b!5191382 () Bool)

(assert (=> b!5191382 (= e!3233636 e!3233637)))

(declare-fun c!894883 () Bool)

(assert (=> b!5191382 (= c!894883 (is-Cons!60359 (exprs!4612 lt!2137599)))))

(declare-fun b!5191380 () Bool)

(declare-fun e!3233635 () Bool)

(assert (=> b!5191380 (= e!3233635 (nullable!4921 (h!66807 (exprs!4612 lt!2137599))))))

(declare-fun d!1676788 () Bool)

(declare-fun c!894882 () Bool)

(assert (=> d!1676788 (= c!894882 e!3233635)))

(declare-fun res!2204947 () Bool)

(assert (=> d!1676788 (=> (not res!2204947) (not e!3233635))))

(assert (=> d!1676788 (= res!2204947 (is-Cons!60359 (exprs!4612 lt!2137599)))))

(assert (=> d!1676788 (= (derivationStepZipperUp!118 lt!2137599 (h!66808 s!2326)) e!3233636)))

(assert (= (and d!1676788 res!2204947) b!5191380))

(assert (= (and d!1676788 c!894882) b!5191379))

(assert (= (and d!1676788 (not c!894882)) b!5191382))

(assert (= (and b!5191382 c!894883) b!5191381))

(assert (= (and b!5191382 (not c!894883)) b!5191378))

(assert (= (or b!5191379 b!5191381) bm!364996))

(declare-fun m!6247460 () Bool)

(assert (=> b!5191379 m!6247460))

(declare-fun m!6247462 () Bool)

(assert (=> bm!364996 m!6247462))

(declare-fun m!6247464 () Bool)

(assert (=> b!5191380 m!6247464))

(assert (=> b!5191194 d!1676788))

(declare-fun b!5191383 () Bool)

(declare-fun e!3233640 () (Set Context!8224))

(assert (=> b!5191383 (= e!3233640 (as set.empty (Set Context!8224)))))

(declare-fun e!3233639 () (Set Context!8224))

(declare-fun b!5191384 () Bool)

(declare-fun call!365002 () (Set Context!8224))

(assert (=> b!5191384 (= e!3233639 (set.union call!365002 (derivationStepZipperUp!118 (Context!8225 (t!373636 (exprs!4612 lt!2137613))) (h!66808 s!2326))))))

(declare-fun b!5191386 () Bool)

(assert (=> b!5191386 (= e!3233640 call!365002)))

(declare-fun bm!364997 () Bool)

(assert (=> bm!364997 (= call!365002 (derivationStepZipperDown!197 (h!66807 (exprs!4612 lt!2137613)) (Context!8225 (t!373636 (exprs!4612 lt!2137613))) (h!66808 s!2326)))))

(declare-fun b!5191387 () Bool)

(assert (=> b!5191387 (= e!3233639 e!3233640)))

(declare-fun c!894885 () Bool)

(assert (=> b!5191387 (= c!894885 (is-Cons!60359 (exprs!4612 lt!2137613)))))

(declare-fun b!5191385 () Bool)

(declare-fun e!3233638 () Bool)

(assert (=> b!5191385 (= e!3233638 (nullable!4921 (h!66807 (exprs!4612 lt!2137613))))))

(declare-fun d!1676790 () Bool)

(declare-fun c!894884 () Bool)

(assert (=> d!1676790 (= c!894884 e!3233638)))

(declare-fun res!2204948 () Bool)

(assert (=> d!1676790 (=> (not res!2204948) (not e!3233638))))

(assert (=> d!1676790 (= res!2204948 (is-Cons!60359 (exprs!4612 lt!2137613)))))

(assert (=> d!1676790 (= (derivationStepZipperUp!118 lt!2137613 (h!66808 s!2326)) e!3233639)))

(assert (= (and d!1676790 res!2204948) b!5191385))

(assert (= (and d!1676790 c!894884) b!5191384))

(assert (= (and d!1676790 (not c!894884)) b!5191387))

(assert (= (and b!5191387 c!894885) b!5191386))

(assert (= (and b!5191387 (not c!894885)) b!5191383))

(assert (= (or b!5191384 b!5191386) bm!364997))

(declare-fun m!6247466 () Bool)

(assert (=> b!5191384 m!6247466))

(declare-fun m!6247468 () Bool)

(assert (=> bm!364997 m!6247468))

(declare-fun m!6247470 () Bool)

(assert (=> b!5191385 m!6247470))

(assert (=> b!5191194 d!1676790))

(declare-fun b!5191406 () Bool)

(declare-fun e!3233659 () Bool)

(declare-fun call!365009 () Bool)

(assert (=> b!5191406 (= e!3233659 call!365009)))

(declare-fun b!5191407 () Bool)

(declare-fun e!3233658 () Bool)

(declare-fun call!365010 () Bool)

(assert (=> b!5191407 (= e!3233658 call!365010)))

(declare-fun b!5191408 () Bool)

(declare-fun e!3233656 () Bool)

(declare-fun e!3233655 () Bool)

(assert (=> b!5191408 (= e!3233656 e!3233655)))

(declare-fun res!2204960 () Bool)

(assert (=> b!5191408 (=> (not res!2204960) (not e!3233655))))

(declare-fun call!365011 () Bool)

(assert (=> b!5191408 (= res!2204960 call!365011)))

(declare-fun b!5191409 () Bool)

(assert (=> b!5191409 (= e!3233655 call!365009)))

(declare-fun b!5191410 () Bool)

(declare-fun e!3233657 () Bool)

(assert (=> b!5191410 (= e!3233657 e!3233658)))

(declare-fun res!2204961 () Bool)

(assert (=> b!5191410 (= res!2204961 (not (nullable!4921 (reg!15057 (regTwo!29969 r!7292)))))))

(assert (=> b!5191410 (=> (not res!2204961) (not e!3233658))))

(declare-fun b!5191411 () Bool)

(declare-fun e!3233660 () Bool)

(assert (=> b!5191411 (= e!3233660 e!3233657)))

(declare-fun c!894891 () Bool)

(assert (=> b!5191411 (= c!894891 (is-Star!14728 (regTwo!29969 r!7292)))))

(declare-fun b!5191412 () Bool)

(declare-fun res!2204963 () Bool)

(assert (=> b!5191412 (=> (not res!2204963) (not e!3233659))))

(assert (=> b!5191412 (= res!2204963 call!365011)))

(declare-fun e!3233661 () Bool)

(assert (=> b!5191412 (= e!3233661 e!3233659)))

(declare-fun bm!365004 () Bool)

(assert (=> bm!365004 (= call!365011 call!365010)))

(declare-fun b!5191413 () Bool)

(assert (=> b!5191413 (= e!3233657 e!3233661)))

(declare-fun c!894890 () Bool)

(assert (=> b!5191413 (= c!894890 (is-Union!14728 (regTwo!29969 r!7292)))))

(declare-fun bm!365005 () Bool)

(assert (=> bm!365005 (= call!365009 (validRegex!6464 (ite c!894890 (regTwo!29969 (regTwo!29969 r!7292)) (regTwo!29968 (regTwo!29969 r!7292)))))))

(declare-fun b!5191414 () Bool)

(declare-fun res!2204962 () Bool)

(assert (=> b!5191414 (=> res!2204962 e!3233656)))

(assert (=> b!5191414 (= res!2204962 (not (is-Concat!23573 (regTwo!29969 r!7292))))))

(assert (=> b!5191414 (= e!3233661 e!3233656)))

(declare-fun bm!365006 () Bool)

(assert (=> bm!365006 (= call!365010 (validRegex!6464 (ite c!894891 (reg!15057 (regTwo!29969 r!7292)) (ite c!894890 (regOne!29969 (regTwo!29969 r!7292)) (regOne!29968 (regTwo!29969 r!7292))))))))

(declare-fun d!1676792 () Bool)

(declare-fun res!2204959 () Bool)

(assert (=> d!1676792 (=> res!2204959 e!3233660)))

(assert (=> d!1676792 (= res!2204959 (is-ElementMatch!14728 (regTwo!29969 r!7292)))))

(assert (=> d!1676792 (= (validRegex!6464 (regTwo!29969 r!7292)) e!3233660)))

(assert (= (and d!1676792 (not res!2204959)) b!5191411))

(assert (= (and b!5191411 c!894891) b!5191410))

(assert (= (and b!5191411 (not c!894891)) b!5191413))

(assert (= (and b!5191410 res!2204961) b!5191407))

(assert (= (and b!5191413 c!894890) b!5191412))

(assert (= (and b!5191413 (not c!894890)) b!5191414))

(assert (= (and b!5191412 res!2204963) b!5191406))

(assert (= (and b!5191414 (not res!2204962)) b!5191408))

(assert (= (and b!5191408 res!2204960) b!5191409))

(assert (= (or b!5191406 b!5191409) bm!365005))

(assert (= (or b!5191412 b!5191408) bm!365004))

(assert (= (or b!5191407 bm!365004) bm!365006))

(declare-fun m!6247472 () Bool)

(assert (=> b!5191410 m!6247472))

(declare-fun m!6247474 () Bool)

(assert (=> bm!365005 m!6247474))

(declare-fun m!6247476 () Bool)

(assert (=> bm!365006 m!6247476))

(assert (=> b!5191194 d!1676792))

(declare-fun d!1676794 () Bool)

(assert (=> d!1676794 (= (flatMap!481 lt!2137602 lambda!259560) (choose!38561 lt!2137602 lambda!259560))))

(declare-fun bs!1208641 () Bool)

(assert (= bs!1208641 d!1676794))

(declare-fun m!6247478 () Bool)

(assert (=> bs!1208641 m!6247478))

(assert (=> b!5191194 d!1676794))

(declare-fun d!1676796 () Bool)

(assert (=> d!1676796 (= (flatMap!481 lt!2137611 lambda!259560) (dynLambda!23900 lambda!259560 lt!2137613))))

(declare-fun lt!2137707 () Unit!152290)

(assert (=> d!1676796 (= lt!2137707 (choose!38562 lt!2137611 lt!2137613 lambda!259560))))

(assert (=> d!1676796 (= lt!2137611 (set.insert lt!2137613 (as set.empty (Set Context!8224))))))

(assert (=> d!1676796 (= (lemmaFlatMapOnSingletonSet!13 lt!2137611 lt!2137613 lambda!259560) lt!2137707)))

(declare-fun b_lambda!201185 () Bool)

(assert (=> (not b_lambda!201185) (not d!1676796)))

(declare-fun bs!1208642 () Bool)

(assert (= bs!1208642 d!1676796))

(assert (=> bs!1208642 m!6247274))

(declare-fun m!6247480 () Bool)

(assert (=> bs!1208642 m!6247480))

(declare-fun m!6247482 () Bool)

(assert (=> bs!1208642 m!6247482))

(assert (=> bs!1208642 m!6247268))

(assert (=> b!5191194 d!1676796))

(declare-fun bs!1208643 () Bool)

(declare-fun d!1676798 () Bool)

(assert (= bs!1208643 (and d!1676798 d!1676766)))

(declare-fun lambda!259577 () Int)

(assert (=> bs!1208643 (= lambda!259577 lambda!259573)))

(declare-fun bs!1208644 () Bool)

(assert (= bs!1208644 (and d!1676798 d!1676768)))

(assert (=> bs!1208644 (= lambda!259577 lambda!259576)))

(assert (=> d!1676798 (= (inv!80068 setElem!32773) (forall!14209 (exprs!4612 setElem!32773) lambda!259577))))

(declare-fun bs!1208645 () Bool)

(assert (= bs!1208645 d!1676798))

(declare-fun m!6247484 () Bool)

(assert (=> bs!1208645 m!6247484))

(assert (=> setNonEmpty!32773 d!1676798))

(declare-fun b!5191447 () Bool)

(assert (=> b!5191447 true))

(assert (=> b!5191447 true))

(declare-fun bs!1208646 () Bool)

(declare-fun b!5191448 () Bool)

(assert (= bs!1208646 (and b!5191448 b!5191447)))

(declare-fun lambda!259583 () Int)

(declare-fun lambda!259582 () Int)

(assert (=> bs!1208646 (not (= lambda!259583 lambda!259582))))

(assert (=> b!5191448 true))

(assert (=> b!5191448 true))

(declare-fun e!3233683 () Bool)

(declare-fun call!365016 () Bool)

(assert (=> b!5191447 (= e!3233683 call!365016)))

(declare-fun e!3233682 () Bool)

(assert (=> b!5191448 (= e!3233682 call!365016)))

(declare-fun b!5191449 () Bool)

(declare-fun res!2204981 () Bool)

(assert (=> b!5191449 (=> res!2204981 e!3233683)))

(declare-fun call!365017 () Bool)

(assert (=> b!5191449 (= res!2204981 call!365017)))

(assert (=> b!5191449 (= e!3233682 e!3233683)))

(declare-fun b!5191451 () Bool)

(declare-fun e!3233684 () Bool)

(assert (=> b!5191451 (= e!3233684 (= s!2326 (Cons!60360 (c!894828 r!7292) Nil!60360)))))

(declare-fun b!5191452 () Bool)

(declare-fun e!3233685 () Bool)

(assert (=> b!5191452 (= e!3233685 e!3233682)))

(declare-fun c!894900 () Bool)

(assert (=> b!5191452 (= c!894900 (is-Star!14728 r!7292))))

(declare-fun bm!365011 () Bool)

(declare-fun Exists!1917 (Int) Bool)

(assert (=> bm!365011 (= call!365016 (Exists!1917 (ite c!894900 lambda!259582 lambda!259583)))))

(declare-fun b!5191453 () Bool)

(declare-fun c!894901 () Bool)

(assert (=> b!5191453 (= c!894901 (is-Union!14728 r!7292))))

(assert (=> b!5191453 (= e!3233684 e!3233685)))

(declare-fun b!5191454 () Bool)

(declare-fun e!3233680 () Bool)

(assert (=> b!5191454 (= e!3233680 call!365017)))

(declare-fun b!5191455 () Bool)

(declare-fun e!3233686 () Bool)

(assert (=> b!5191455 (= e!3233685 e!3233686)))

(declare-fun res!2204982 () Bool)

(assert (=> b!5191455 (= res!2204982 (matchRSpec!1831 (regOne!29969 r!7292) s!2326))))

(assert (=> b!5191455 (=> res!2204982 e!3233686)))

(declare-fun b!5191456 () Bool)

(assert (=> b!5191456 (= e!3233686 (matchRSpec!1831 (regTwo!29969 r!7292) s!2326))))

(declare-fun b!5191450 () Bool)

(declare-fun e!3233681 () Bool)

(assert (=> b!5191450 (= e!3233680 e!3233681)))

(declare-fun res!2204980 () Bool)

(assert (=> b!5191450 (= res!2204980 (not (is-EmptyLang!14728 r!7292)))))

(assert (=> b!5191450 (=> (not res!2204980) (not e!3233681))))

(declare-fun d!1676800 () Bool)

(declare-fun c!894903 () Bool)

(assert (=> d!1676800 (= c!894903 (is-EmptyExpr!14728 r!7292))))

(assert (=> d!1676800 (= (matchRSpec!1831 r!7292 s!2326) e!3233680)))

(declare-fun b!5191457 () Bool)

(declare-fun c!894902 () Bool)

(assert (=> b!5191457 (= c!894902 (is-ElementMatch!14728 r!7292))))

(assert (=> b!5191457 (= e!3233681 e!3233684)))

(declare-fun bm!365012 () Bool)

(assert (=> bm!365012 (= call!365017 (isEmpty!32316 s!2326))))

(assert (= (and d!1676800 c!894903) b!5191454))

(assert (= (and d!1676800 (not c!894903)) b!5191450))

(assert (= (and b!5191450 res!2204980) b!5191457))

(assert (= (and b!5191457 c!894902) b!5191451))

(assert (= (and b!5191457 (not c!894902)) b!5191453))

(assert (= (and b!5191453 c!894901) b!5191455))

(assert (= (and b!5191453 (not c!894901)) b!5191452))

(assert (= (and b!5191455 (not res!2204982)) b!5191456))

(assert (= (and b!5191452 c!894900) b!5191449))

(assert (= (and b!5191452 (not c!894900)) b!5191448))

(assert (= (and b!5191449 (not res!2204981)) b!5191447))

(assert (= (or b!5191447 b!5191448) bm!365011))

(assert (= (or b!5191454 b!5191449) bm!365012))

(declare-fun m!6247486 () Bool)

(assert (=> bm!365011 m!6247486))

(assert (=> b!5191455 m!6247208))

(assert (=> b!5191456 m!6247202))

(assert (=> bm!365012 m!6247420))

(assert (=> b!5191190 d!1676800))

(declare-fun b!5191490 () Bool)

(declare-fun e!3233704 () Bool)

(declare-fun e!3233705 () Bool)

(assert (=> b!5191490 (= e!3233704 e!3233705)))

(declare-fun c!894910 () Bool)

(assert (=> b!5191490 (= c!894910 (is-EmptyLang!14728 r!7292))))

(declare-fun b!5191491 () Bool)

(declare-fun lt!2137710 () Bool)

(declare-fun call!365020 () Bool)

(assert (=> b!5191491 (= e!3233704 (= lt!2137710 call!365020))))

(declare-fun b!5191492 () Bool)

(declare-fun res!2204999 () Bool)

(declare-fun e!3233706 () Bool)

(assert (=> b!5191492 (=> (not res!2204999) (not e!3233706))))

(assert (=> b!5191492 (= res!2204999 (not call!365020))))

(declare-fun b!5191493 () Bool)

(assert (=> b!5191493 (= e!3233705 (not lt!2137710))))

(declare-fun b!5191494 () Bool)

(declare-fun e!3233707 () Bool)

(declare-fun e!3233703 () Bool)

(assert (=> b!5191494 (= e!3233707 e!3233703)))

(declare-fun res!2205004 () Bool)

(assert (=> b!5191494 (=> res!2205004 e!3233703)))

(assert (=> b!5191494 (= res!2205004 call!365020)))

(declare-fun b!5191495 () Bool)

(assert (=> b!5191495 (= e!3233706 (= (head!11122 s!2326) (c!894828 r!7292)))))

(declare-fun d!1676802 () Bool)

(assert (=> d!1676802 e!3233704))

(declare-fun c!894911 () Bool)

(assert (=> d!1676802 (= c!894911 (is-EmptyExpr!14728 r!7292))))

(declare-fun e!3233702 () Bool)

(assert (=> d!1676802 (= lt!2137710 e!3233702)))

(declare-fun c!894912 () Bool)

(assert (=> d!1676802 (= c!894912 (isEmpty!32316 s!2326))))

(assert (=> d!1676802 (validRegex!6464 r!7292)))

(assert (=> d!1676802 (= (matchR!6913 r!7292 s!2326) lt!2137710)))

(declare-fun b!5191496 () Bool)

(declare-fun derivativeStep!4023 (Regex!14728 C!29726) Regex!14728)

(assert (=> b!5191496 (= e!3233702 (matchR!6913 (derivativeStep!4023 r!7292 (head!11122 s!2326)) (tail!10219 s!2326)))))

(declare-fun b!5191497 () Bool)

(declare-fun res!2205001 () Bool)

(declare-fun e!3233701 () Bool)

(assert (=> b!5191497 (=> res!2205001 e!3233701)))

(assert (=> b!5191497 (= res!2205001 (not (is-ElementMatch!14728 r!7292)))))

(assert (=> b!5191497 (= e!3233705 e!3233701)))

(declare-fun b!5191498 () Bool)

(declare-fun res!2205005 () Bool)

(assert (=> b!5191498 (=> (not res!2205005) (not e!3233706))))

(assert (=> b!5191498 (= res!2205005 (isEmpty!32316 (tail!10219 s!2326)))))

(declare-fun b!5191499 () Bool)

(declare-fun res!2205003 () Bool)

(assert (=> b!5191499 (=> res!2205003 e!3233703)))

(assert (=> b!5191499 (= res!2205003 (not (isEmpty!32316 (tail!10219 s!2326))))))

(declare-fun b!5191500 () Bool)

(declare-fun res!2205006 () Bool)

(assert (=> b!5191500 (=> res!2205006 e!3233701)))

(assert (=> b!5191500 (= res!2205006 e!3233706)))

(declare-fun res!2205002 () Bool)

(assert (=> b!5191500 (=> (not res!2205002) (not e!3233706))))

(assert (=> b!5191500 (= res!2205002 lt!2137710)))

(declare-fun bm!365015 () Bool)

(assert (=> bm!365015 (= call!365020 (isEmpty!32316 s!2326))))

(declare-fun b!5191501 () Bool)

(assert (=> b!5191501 (= e!3233703 (not (= (head!11122 s!2326) (c!894828 r!7292))))))

(declare-fun b!5191502 () Bool)

(assert (=> b!5191502 (= e!3233701 e!3233707)))

(declare-fun res!2205000 () Bool)

(assert (=> b!5191502 (=> (not res!2205000) (not e!3233707))))

(assert (=> b!5191502 (= res!2205000 (not lt!2137710))))

(declare-fun b!5191503 () Bool)

(assert (=> b!5191503 (= e!3233702 (nullable!4921 r!7292))))

(assert (= (and d!1676802 c!894912) b!5191503))

(assert (= (and d!1676802 (not c!894912)) b!5191496))

(assert (= (and d!1676802 c!894911) b!5191491))

(assert (= (and d!1676802 (not c!894911)) b!5191490))

(assert (= (and b!5191490 c!894910) b!5191493))

(assert (= (and b!5191490 (not c!894910)) b!5191497))

(assert (= (and b!5191497 (not res!2205001)) b!5191500))

(assert (= (and b!5191500 res!2205002) b!5191492))

(assert (= (and b!5191492 res!2204999) b!5191498))

(assert (= (and b!5191498 res!2205005) b!5191495))

(assert (= (and b!5191500 (not res!2205006)) b!5191502))

(assert (= (and b!5191502 res!2205000) b!5191494))

(assert (= (and b!5191494 (not res!2205004)) b!5191499))

(assert (= (and b!5191499 (not res!2205003)) b!5191501))

(assert (= (or b!5191491 b!5191492 b!5191494) bm!365015))

(assert (=> d!1676802 m!6247420))

(assert (=> d!1676802 m!6247222))

(assert (=> b!5191496 m!6247424))

(assert (=> b!5191496 m!6247424))

(declare-fun m!6247488 () Bool)

(assert (=> b!5191496 m!6247488))

(assert (=> b!5191496 m!6247428))

(assert (=> b!5191496 m!6247488))

(assert (=> b!5191496 m!6247428))

(declare-fun m!6247490 () Bool)

(assert (=> b!5191496 m!6247490))

(assert (=> b!5191501 m!6247424))

(declare-fun m!6247492 () Bool)

(assert (=> b!5191503 m!6247492))

(assert (=> b!5191499 m!6247428))

(assert (=> b!5191499 m!6247428))

(declare-fun m!6247494 () Bool)

(assert (=> b!5191499 m!6247494))

(assert (=> b!5191495 m!6247424))

(assert (=> bm!365015 m!6247420))

(assert (=> b!5191498 m!6247428))

(assert (=> b!5191498 m!6247428))

(assert (=> b!5191498 m!6247494))

(assert (=> b!5191190 d!1676802))

(declare-fun d!1676804 () Bool)

(assert (=> d!1676804 (= (matchR!6913 r!7292 s!2326) (matchRSpec!1831 r!7292 s!2326))))

(declare-fun lt!2137713 () Unit!152290)

(declare-fun choose!38564 (Regex!14728 List!60484) Unit!152290)

(assert (=> d!1676804 (= lt!2137713 (choose!38564 r!7292 s!2326))))

(assert (=> d!1676804 (validRegex!6464 r!7292)))

(assert (=> d!1676804 (= (mainMatchTheorem!1831 r!7292 s!2326) lt!2137713)))

(declare-fun bs!1208647 () Bool)

(assert (= bs!1208647 d!1676804))

(assert (=> bs!1208647 m!6247250))

(assert (=> bs!1208647 m!6247248))

(declare-fun m!6247496 () Bool)

(assert (=> bs!1208647 m!6247496))

(assert (=> bs!1208647 m!6247222))

(assert (=> b!5191190 d!1676804))

(declare-fun b!5191504 () Bool)

(declare-fun e!3233712 () Bool)

(declare-fun call!365021 () Bool)

(assert (=> b!5191504 (= e!3233712 call!365021)))

(declare-fun b!5191505 () Bool)

(declare-fun e!3233711 () Bool)

(declare-fun call!365022 () Bool)

(assert (=> b!5191505 (= e!3233711 call!365022)))

(declare-fun b!5191506 () Bool)

(declare-fun e!3233709 () Bool)

(declare-fun e!3233708 () Bool)

(assert (=> b!5191506 (= e!3233709 e!3233708)))

(declare-fun res!2205008 () Bool)

(assert (=> b!5191506 (=> (not res!2205008) (not e!3233708))))

(declare-fun call!365023 () Bool)

(assert (=> b!5191506 (= res!2205008 call!365023)))

(declare-fun b!5191507 () Bool)

(assert (=> b!5191507 (= e!3233708 call!365021)))

(declare-fun b!5191508 () Bool)

(declare-fun e!3233710 () Bool)

(assert (=> b!5191508 (= e!3233710 e!3233711)))

(declare-fun res!2205009 () Bool)

(assert (=> b!5191508 (= res!2205009 (not (nullable!4921 (reg!15057 r!7292))))))

(assert (=> b!5191508 (=> (not res!2205009) (not e!3233711))))

(declare-fun b!5191509 () Bool)

(declare-fun e!3233713 () Bool)

(assert (=> b!5191509 (= e!3233713 e!3233710)))

(declare-fun c!894914 () Bool)

(assert (=> b!5191509 (= c!894914 (is-Star!14728 r!7292))))

(declare-fun b!5191510 () Bool)

(declare-fun res!2205011 () Bool)

(assert (=> b!5191510 (=> (not res!2205011) (not e!3233712))))

(assert (=> b!5191510 (= res!2205011 call!365023)))

(declare-fun e!3233714 () Bool)

(assert (=> b!5191510 (= e!3233714 e!3233712)))

(declare-fun bm!365016 () Bool)

(assert (=> bm!365016 (= call!365023 call!365022)))

(declare-fun b!5191511 () Bool)

(assert (=> b!5191511 (= e!3233710 e!3233714)))

(declare-fun c!894913 () Bool)

(assert (=> b!5191511 (= c!894913 (is-Union!14728 r!7292))))

(declare-fun bm!365017 () Bool)

(assert (=> bm!365017 (= call!365021 (validRegex!6464 (ite c!894913 (regTwo!29969 r!7292) (regTwo!29968 r!7292))))))

(declare-fun b!5191512 () Bool)

(declare-fun res!2205010 () Bool)

(assert (=> b!5191512 (=> res!2205010 e!3233709)))

(assert (=> b!5191512 (= res!2205010 (not (is-Concat!23573 r!7292)))))

(assert (=> b!5191512 (= e!3233714 e!3233709)))

(declare-fun bm!365018 () Bool)

(assert (=> bm!365018 (= call!365022 (validRegex!6464 (ite c!894914 (reg!15057 r!7292) (ite c!894913 (regOne!29969 r!7292) (regOne!29968 r!7292)))))))

(declare-fun d!1676806 () Bool)

(declare-fun res!2205007 () Bool)

(assert (=> d!1676806 (=> res!2205007 e!3233713)))

(assert (=> d!1676806 (= res!2205007 (is-ElementMatch!14728 r!7292))))

(assert (=> d!1676806 (= (validRegex!6464 r!7292) e!3233713)))

(assert (= (and d!1676806 (not res!2205007)) b!5191509))

(assert (= (and b!5191509 c!894914) b!5191508))

(assert (= (and b!5191509 (not c!894914)) b!5191511))

(assert (= (and b!5191508 res!2205009) b!5191505))

(assert (= (and b!5191511 c!894913) b!5191510))

(assert (= (and b!5191511 (not c!894913)) b!5191512))

(assert (= (and b!5191510 res!2205011) b!5191504))

(assert (= (and b!5191512 (not res!2205010)) b!5191506))

(assert (= (and b!5191506 res!2205008) b!5191507))

(assert (= (or b!5191504 b!5191507) bm!365017))

(assert (= (or b!5191510 b!5191506) bm!365016))

(assert (= (or b!5191505 bm!365016) bm!365018))

(declare-fun m!6247498 () Bool)

(assert (=> b!5191508 m!6247498))

(declare-fun m!6247500 () Bool)

(assert (=> bm!365017 m!6247500))

(declare-fun m!6247502 () Bool)

(assert (=> bm!365018 m!6247502))

(assert (=> start!549468 d!1676806))

(declare-fun b!5191513 () Bool)

(declare-fun e!3233716 () (Set Context!8224))

(assert (=> b!5191513 (= e!3233716 (set.insert lt!2137606 (as set.empty (Set Context!8224))))))

(declare-fun b!5191514 () Bool)

(declare-fun c!894918 () Bool)

(declare-fun e!3233715 () Bool)

(assert (=> b!5191514 (= c!894918 e!3233715)))

(declare-fun res!2205012 () Bool)

(assert (=> b!5191514 (=> (not res!2205012) (not e!3233715))))

(assert (=> b!5191514 (= res!2205012 (is-Concat!23573 r!7292))))

(declare-fun e!3233720 () (Set Context!8224))

(declare-fun e!3233717 () (Set Context!8224))

(assert (=> b!5191514 (= e!3233720 e!3233717)))

(declare-fun b!5191515 () Bool)

(assert (=> b!5191515 (= e!3233716 e!3233720)))

(declare-fun c!894917 () Bool)

(assert (=> b!5191515 (= c!894917 (is-Union!14728 r!7292))))

(declare-fun b!5191516 () Bool)

(declare-fun e!3233719 () (Set Context!8224))

(declare-fun call!365026 () (Set Context!8224))

(assert (=> b!5191516 (= e!3233719 call!365026)))

(declare-fun bm!365019 () Bool)

(declare-fun c!894919 () Bool)

(declare-fun call!365029 () (Set Context!8224))

(declare-fun call!365027 () List!60483)

(assert (=> bm!365019 (= call!365029 (derivationStepZipperDown!197 (ite c!894917 (regTwo!29969 r!7292) (ite c!894918 (regTwo!29968 r!7292) (ite c!894919 (regOne!29968 r!7292) (reg!15057 r!7292)))) (ite (or c!894917 c!894918) lt!2137606 (Context!8225 call!365027)) (h!66808 s!2326)))))

(declare-fun b!5191517 () Bool)

(assert (=> b!5191517 (= e!3233717 e!3233719)))

(assert (=> b!5191517 (= c!894919 (is-Concat!23573 r!7292))))

(declare-fun bm!365020 () Bool)

(declare-fun call!365025 () List!60483)

(assert (=> bm!365020 (= call!365027 call!365025)))

(declare-fun b!5191519 () Bool)

(assert (=> b!5191519 (= e!3233715 (nullable!4921 (regOne!29968 r!7292)))))

(declare-fun bm!365021 () Bool)

(assert (=> bm!365021 (= call!365025 ($colon$colon!1258 (exprs!4612 lt!2137606) (ite (or c!894918 c!894919) (regTwo!29968 r!7292) r!7292)))))

(declare-fun b!5191520 () Bool)

(declare-fun e!3233718 () (Set Context!8224))

(assert (=> b!5191520 (= e!3233718 call!365026)))

(declare-fun d!1676808 () Bool)

(declare-fun c!894916 () Bool)

(assert (=> d!1676808 (= c!894916 (and (is-ElementMatch!14728 r!7292) (= (c!894828 r!7292) (h!66808 s!2326))))))

(assert (=> d!1676808 (= (derivationStepZipperDown!197 r!7292 lt!2137606 (h!66808 s!2326)) e!3233716)))

(declare-fun b!5191518 () Bool)

(declare-fun call!365024 () (Set Context!8224))

(assert (=> b!5191518 (= e!3233720 (set.union call!365024 call!365029))))

(declare-fun b!5191521 () Bool)

(declare-fun c!894915 () Bool)

(assert (=> b!5191521 (= c!894915 (is-Star!14728 r!7292))))

(assert (=> b!5191521 (= e!3233719 e!3233718)))

(declare-fun b!5191522 () Bool)

(declare-fun call!365028 () (Set Context!8224))

(assert (=> b!5191522 (= e!3233717 (set.union call!365024 call!365028))))

(declare-fun bm!365022 () Bool)

(assert (=> bm!365022 (= call!365026 call!365028)))

(declare-fun bm!365023 () Bool)

(assert (=> bm!365023 (= call!365024 (derivationStepZipperDown!197 (ite c!894917 (regOne!29969 r!7292) (regOne!29968 r!7292)) (ite c!894917 lt!2137606 (Context!8225 call!365025)) (h!66808 s!2326)))))

(declare-fun b!5191523 () Bool)

(assert (=> b!5191523 (= e!3233718 (as set.empty (Set Context!8224)))))

(declare-fun bm!365024 () Bool)

(assert (=> bm!365024 (= call!365028 call!365029)))

(assert (= (and d!1676808 c!894916) b!5191513))

(assert (= (and d!1676808 (not c!894916)) b!5191515))

(assert (= (and b!5191515 c!894917) b!5191518))

(assert (= (and b!5191515 (not c!894917)) b!5191514))

(assert (= (and b!5191514 res!2205012) b!5191519))

(assert (= (and b!5191514 c!894918) b!5191522))

(assert (= (and b!5191514 (not c!894918)) b!5191517))

(assert (= (and b!5191517 c!894919) b!5191516))

(assert (= (and b!5191517 (not c!894919)) b!5191521))

(assert (= (and b!5191521 c!894915) b!5191520))

(assert (= (and b!5191521 (not c!894915)) b!5191523))

(assert (= (or b!5191516 b!5191520) bm!365020))

(assert (= (or b!5191516 b!5191520) bm!365022))

(assert (= (or b!5191522 bm!365020) bm!365021))

(assert (= (or b!5191522 bm!365022) bm!365024))

(assert (= (or b!5191518 bm!365024) bm!365019))

(assert (= (or b!5191518 b!5191522) bm!365023))

(declare-fun m!6247504 () Bool)

(assert (=> bm!365023 m!6247504))

(declare-fun m!6247506 () Bool)

(assert (=> b!5191519 m!6247506))

(declare-fun m!6247508 () Bool)

(assert (=> bm!365019 m!6247508))

(declare-fun m!6247510 () Bool)

(assert (=> bm!365021 m!6247510))

(assert (=> b!5191513 m!6247410))

(assert (=> b!5191197 d!1676808))

(declare-fun b!5191524 () Bool)

(declare-fun e!3233723 () (Set Context!8224))

(assert (=> b!5191524 (= e!3233723 (as set.empty (Set Context!8224)))))

(declare-fun e!3233722 () (Set Context!8224))

(declare-fun b!5191525 () Bool)

(declare-fun call!365030 () (Set Context!8224))

(assert (=> b!5191525 (= e!3233722 (set.union call!365030 (derivationStepZipperUp!118 (Context!8225 (t!373636 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359))))) (h!66808 s!2326))))))

(declare-fun b!5191527 () Bool)

(assert (=> b!5191527 (= e!3233723 call!365030)))

(declare-fun bm!365025 () Bool)

(assert (=> bm!365025 (= call!365030 (derivationStepZipperDown!197 (h!66807 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359)))) (Context!8225 (t!373636 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359))))) (h!66808 s!2326)))))

(declare-fun b!5191528 () Bool)

(assert (=> b!5191528 (= e!3233722 e!3233723)))

(declare-fun c!894921 () Bool)

(assert (=> b!5191528 (= c!894921 (is-Cons!60359 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359)))))))

(declare-fun b!5191526 () Bool)

(declare-fun e!3233721 () Bool)

(assert (=> b!5191526 (= e!3233721 (nullable!4921 (h!66807 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359))))))))

(declare-fun d!1676810 () Bool)

(declare-fun c!894920 () Bool)

(assert (=> d!1676810 (= c!894920 e!3233721)))

(declare-fun res!2205013 () Bool)

(assert (=> d!1676810 (=> (not res!2205013) (not e!3233721))))

(assert (=> d!1676810 (= res!2205013 (is-Cons!60359 (exprs!4612 (Context!8225 (Cons!60359 r!7292 Nil!60359)))))))

(assert (=> d!1676810 (= (derivationStepZipperUp!118 (Context!8225 (Cons!60359 r!7292 Nil!60359)) (h!66808 s!2326)) e!3233722)))

(assert (= (and d!1676810 res!2205013) b!5191526))

(assert (= (and d!1676810 c!894920) b!5191525))

(assert (= (and d!1676810 (not c!894920)) b!5191528))

(assert (= (and b!5191528 c!894921) b!5191527))

(assert (= (and b!5191528 (not c!894921)) b!5191524))

(assert (= (or b!5191525 b!5191527) bm!365025))

(declare-fun m!6247512 () Bool)

(assert (=> b!5191525 m!6247512))

(declare-fun m!6247514 () Bool)

(assert (=> bm!365025 m!6247514))

(declare-fun m!6247516 () Bool)

(assert (=> b!5191526 m!6247516))

(assert (=> b!5191197 d!1676810))

(declare-fun bs!1208648 () Bool)

(declare-fun b!5191529 () Bool)

(assert (= bs!1208648 (and b!5191529 b!5191447)))

(declare-fun lambda!259584 () Int)

(assert (=> bs!1208648 (= (and (= (reg!15057 (regTwo!29969 r!7292)) (reg!15057 r!7292)) (= (regTwo!29969 r!7292) r!7292)) (= lambda!259584 lambda!259582))))

(declare-fun bs!1208649 () Bool)

(assert (= bs!1208649 (and b!5191529 b!5191448)))

(assert (=> bs!1208649 (not (= lambda!259584 lambda!259583))))

(assert (=> b!5191529 true))

(assert (=> b!5191529 true))

(declare-fun bs!1208650 () Bool)

(declare-fun b!5191530 () Bool)

(assert (= bs!1208650 (and b!5191530 b!5191447)))

(declare-fun lambda!259585 () Int)

(assert (=> bs!1208650 (not (= lambda!259585 lambda!259582))))

(declare-fun bs!1208651 () Bool)

(assert (= bs!1208651 (and b!5191530 b!5191448)))

(assert (=> bs!1208651 (= (and (= (regOne!29968 (regTwo!29969 r!7292)) (regOne!29968 r!7292)) (= (regTwo!29968 (regTwo!29969 r!7292)) (regTwo!29968 r!7292))) (= lambda!259585 lambda!259583))))

(declare-fun bs!1208652 () Bool)

(assert (= bs!1208652 (and b!5191530 b!5191529)))

(assert (=> bs!1208652 (not (= lambda!259585 lambda!259584))))

(assert (=> b!5191530 true))

(assert (=> b!5191530 true))

(declare-fun e!3233727 () Bool)

(declare-fun call!365031 () Bool)

(assert (=> b!5191529 (= e!3233727 call!365031)))

(declare-fun e!3233726 () Bool)

(assert (=> b!5191530 (= e!3233726 call!365031)))

(declare-fun b!5191531 () Bool)

(declare-fun res!2205015 () Bool)

(assert (=> b!5191531 (=> res!2205015 e!3233727)))

(declare-fun call!365032 () Bool)

(assert (=> b!5191531 (= res!2205015 call!365032)))

(assert (=> b!5191531 (= e!3233726 e!3233727)))

(declare-fun b!5191533 () Bool)

(declare-fun e!3233728 () Bool)

(assert (=> b!5191533 (= e!3233728 (= s!2326 (Cons!60360 (c!894828 (regTwo!29969 r!7292)) Nil!60360)))))

(declare-fun b!5191534 () Bool)

(declare-fun e!3233729 () Bool)

(assert (=> b!5191534 (= e!3233729 e!3233726)))

(declare-fun c!894922 () Bool)

(assert (=> b!5191534 (= c!894922 (is-Star!14728 (regTwo!29969 r!7292)))))

(declare-fun bm!365026 () Bool)

(assert (=> bm!365026 (= call!365031 (Exists!1917 (ite c!894922 lambda!259584 lambda!259585)))))

(declare-fun b!5191535 () Bool)

(declare-fun c!894923 () Bool)

(assert (=> b!5191535 (= c!894923 (is-Union!14728 (regTwo!29969 r!7292)))))

(assert (=> b!5191535 (= e!3233728 e!3233729)))

(declare-fun b!5191536 () Bool)

(declare-fun e!3233724 () Bool)

(assert (=> b!5191536 (= e!3233724 call!365032)))

(declare-fun b!5191537 () Bool)

(declare-fun e!3233730 () Bool)

(assert (=> b!5191537 (= e!3233729 e!3233730)))

(declare-fun res!2205016 () Bool)

(assert (=> b!5191537 (= res!2205016 (matchRSpec!1831 (regOne!29969 (regTwo!29969 r!7292)) s!2326))))

(assert (=> b!5191537 (=> res!2205016 e!3233730)))

(declare-fun b!5191538 () Bool)

(assert (=> b!5191538 (= e!3233730 (matchRSpec!1831 (regTwo!29969 (regTwo!29969 r!7292)) s!2326))))

(declare-fun b!5191532 () Bool)

(declare-fun e!3233725 () Bool)

(assert (=> b!5191532 (= e!3233724 e!3233725)))

(declare-fun res!2205014 () Bool)

(assert (=> b!5191532 (= res!2205014 (not (is-EmptyLang!14728 (regTwo!29969 r!7292))))))

(assert (=> b!5191532 (=> (not res!2205014) (not e!3233725))))

(declare-fun d!1676812 () Bool)

(declare-fun c!894925 () Bool)

(assert (=> d!1676812 (= c!894925 (is-EmptyExpr!14728 (regTwo!29969 r!7292)))))

(assert (=> d!1676812 (= (matchRSpec!1831 (regTwo!29969 r!7292) s!2326) e!3233724)))

(declare-fun b!5191539 () Bool)

(declare-fun c!894924 () Bool)

(assert (=> b!5191539 (= c!894924 (is-ElementMatch!14728 (regTwo!29969 r!7292)))))

(assert (=> b!5191539 (= e!3233725 e!3233728)))

(declare-fun bm!365027 () Bool)

(assert (=> bm!365027 (= call!365032 (isEmpty!32316 s!2326))))

(assert (= (and d!1676812 c!894925) b!5191536))

(assert (= (and d!1676812 (not c!894925)) b!5191532))

(assert (= (and b!5191532 res!2205014) b!5191539))

(assert (= (and b!5191539 c!894924) b!5191533))

(assert (= (and b!5191539 (not c!894924)) b!5191535))

(assert (= (and b!5191535 c!894923) b!5191537))

(assert (= (and b!5191535 (not c!894923)) b!5191534))

(assert (= (and b!5191537 (not res!2205016)) b!5191538))

(assert (= (and b!5191534 c!894922) b!5191531))

(assert (= (and b!5191534 (not c!894922)) b!5191530))

(assert (= (and b!5191531 (not res!2205015)) b!5191529))

(assert (= (or b!5191529 b!5191530) bm!365026))

(assert (= (or b!5191536 b!5191531) bm!365027))

(declare-fun m!6247518 () Bool)

(assert (=> bm!365026 m!6247518))

(declare-fun m!6247520 () Bool)

(assert (=> b!5191537 m!6247520))

(declare-fun m!6247522 () Bool)

(assert (=> b!5191538 m!6247522))

(assert (=> bm!365027 m!6247420))

(assert (=> b!5191187 d!1676812))

(declare-fun d!1676814 () Bool)

(assert (=> d!1676814 (= (matchR!6913 (regOne!29969 r!7292) s!2326) (matchRSpec!1831 (regOne!29969 r!7292) s!2326))))

(declare-fun lt!2137714 () Unit!152290)

(assert (=> d!1676814 (= lt!2137714 (choose!38564 (regOne!29969 r!7292) s!2326))))

(assert (=> d!1676814 (validRegex!6464 (regOne!29969 r!7292))))

(assert (=> d!1676814 (= (mainMatchTheorem!1831 (regOne!29969 r!7292) s!2326) lt!2137714)))

(declare-fun bs!1208653 () Bool)

(assert (= bs!1208653 d!1676814))

(assert (=> bs!1208653 m!6247212))

(assert (=> bs!1208653 m!6247208))

(declare-fun m!6247524 () Bool)

(assert (=> bs!1208653 m!6247524))

(declare-fun m!6247526 () Bool)

(assert (=> bs!1208653 m!6247526))

(assert (=> b!5191187 d!1676814))

(declare-fun b!5191540 () Bool)

(declare-fun e!3233734 () Bool)

(declare-fun e!3233735 () Bool)

(assert (=> b!5191540 (= e!3233734 e!3233735)))

(declare-fun c!894926 () Bool)

(assert (=> b!5191540 (= c!894926 (is-EmptyLang!14728 (regTwo!29969 r!7292)))))

(declare-fun b!5191541 () Bool)

(declare-fun lt!2137715 () Bool)

(declare-fun call!365033 () Bool)

(assert (=> b!5191541 (= e!3233734 (= lt!2137715 call!365033))))

(declare-fun b!5191542 () Bool)

(declare-fun res!2205017 () Bool)

(declare-fun e!3233736 () Bool)

(assert (=> b!5191542 (=> (not res!2205017) (not e!3233736))))

(assert (=> b!5191542 (= res!2205017 (not call!365033))))

(declare-fun b!5191543 () Bool)

(assert (=> b!5191543 (= e!3233735 (not lt!2137715))))

(declare-fun b!5191544 () Bool)

(declare-fun e!3233737 () Bool)

(declare-fun e!3233733 () Bool)

(assert (=> b!5191544 (= e!3233737 e!3233733)))

(declare-fun res!2205022 () Bool)

(assert (=> b!5191544 (=> res!2205022 e!3233733)))

(assert (=> b!5191544 (= res!2205022 call!365033)))

(declare-fun b!5191545 () Bool)

(assert (=> b!5191545 (= e!3233736 (= (head!11122 s!2326) (c!894828 (regTwo!29969 r!7292))))))

(declare-fun d!1676816 () Bool)

(assert (=> d!1676816 e!3233734))

(declare-fun c!894927 () Bool)

(assert (=> d!1676816 (= c!894927 (is-EmptyExpr!14728 (regTwo!29969 r!7292)))))

(declare-fun e!3233732 () Bool)

(assert (=> d!1676816 (= lt!2137715 e!3233732)))

(declare-fun c!894928 () Bool)

(assert (=> d!1676816 (= c!894928 (isEmpty!32316 s!2326))))

(assert (=> d!1676816 (validRegex!6464 (regTwo!29969 r!7292))))

(assert (=> d!1676816 (= (matchR!6913 (regTwo!29969 r!7292) s!2326) lt!2137715)))

(declare-fun b!5191546 () Bool)

(assert (=> b!5191546 (= e!3233732 (matchR!6913 (derivativeStep!4023 (regTwo!29969 r!7292) (head!11122 s!2326)) (tail!10219 s!2326)))))

(declare-fun b!5191547 () Bool)

(declare-fun res!2205019 () Bool)

(declare-fun e!3233731 () Bool)

(assert (=> b!5191547 (=> res!2205019 e!3233731)))

(assert (=> b!5191547 (= res!2205019 (not (is-ElementMatch!14728 (regTwo!29969 r!7292))))))

(assert (=> b!5191547 (= e!3233735 e!3233731)))

(declare-fun b!5191548 () Bool)

(declare-fun res!2205023 () Bool)

(assert (=> b!5191548 (=> (not res!2205023) (not e!3233736))))

(assert (=> b!5191548 (= res!2205023 (isEmpty!32316 (tail!10219 s!2326)))))

(declare-fun b!5191549 () Bool)

(declare-fun res!2205021 () Bool)

(assert (=> b!5191549 (=> res!2205021 e!3233733)))

(assert (=> b!5191549 (= res!2205021 (not (isEmpty!32316 (tail!10219 s!2326))))))

(declare-fun b!5191550 () Bool)

(declare-fun res!2205024 () Bool)

(assert (=> b!5191550 (=> res!2205024 e!3233731)))

(assert (=> b!5191550 (= res!2205024 e!3233736)))

(declare-fun res!2205020 () Bool)

(assert (=> b!5191550 (=> (not res!2205020) (not e!3233736))))

(assert (=> b!5191550 (= res!2205020 lt!2137715)))

(declare-fun bm!365028 () Bool)

(assert (=> bm!365028 (= call!365033 (isEmpty!32316 s!2326))))

(declare-fun b!5191551 () Bool)

(assert (=> b!5191551 (= e!3233733 (not (= (head!11122 s!2326) (c!894828 (regTwo!29969 r!7292)))))))

(declare-fun b!5191552 () Bool)

(assert (=> b!5191552 (= e!3233731 e!3233737)))

(declare-fun res!2205018 () Bool)

(assert (=> b!5191552 (=> (not res!2205018) (not e!3233737))))

(assert (=> b!5191552 (= res!2205018 (not lt!2137715))))

(declare-fun b!5191553 () Bool)

(assert (=> b!5191553 (= e!3233732 (nullable!4921 (regTwo!29969 r!7292)))))

(assert (= (and d!1676816 c!894928) b!5191553))

(assert (= (and d!1676816 (not c!894928)) b!5191546))

(assert (= (and d!1676816 c!894927) b!5191541))

(assert (= (and d!1676816 (not c!894927)) b!5191540))

(assert (= (and b!5191540 c!894926) b!5191543))

(assert (= (and b!5191540 (not c!894926)) b!5191547))

(assert (= (and b!5191547 (not res!2205019)) b!5191550))

(assert (= (and b!5191550 res!2205020) b!5191542))

(assert (= (and b!5191542 res!2205017) b!5191548))

(assert (= (and b!5191548 res!2205023) b!5191545))

(assert (= (and b!5191550 (not res!2205024)) b!5191552))

(assert (= (and b!5191552 res!2205018) b!5191544))

(assert (= (and b!5191544 (not res!2205022)) b!5191549))

(assert (= (and b!5191549 (not res!2205021)) b!5191551))

(assert (= (or b!5191541 b!5191542 b!5191544) bm!365028))

(assert (=> d!1676816 m!6247420))

(assert (=> d!1676816 m!6247276))

(assert (=> b!5191546 m!6247424))

(assert (=> b!5191546 m!6247424))

(declare-fun m!6247528 () Bool)

(assert (=> b!5191546 m!6247528))

(assert (=> b!5191546 m!6247428))

(assert (=> b!5191546 m!6247528))

(assert (=> b!5191546 m!6247428))

(declare-fun m!6247530 () Bool)

(assert (=> b!5191546 m!6247530))

(assert (=> b!5191551 m!6247424))

(declare-fun m!6247532 () Bool)

(assert (=> b!5191553 m!6247532))

(assert (=> b!5191549 m!6247428))

(assert (=> b!5191549 m!6247428))

(assert (=> b!5191549 m!6247494))

(assert (=> b!5191545 m!6247424))

(assert (=> bm!365028 m!6247420))

(assert (=> b!5191548 m!6247428))

(assert (=> b!5191548 m!6247428))

(assert (=> b!5191548 m!6247494))

(assert (=> b!5191187 d!1676816))

(declare-fun d!1676818 () Bool)

(assert (=> d!1676818 (= (matchR!6913 (regTwo!29969 r!7292) s!2326) (matchRSpec!1831 (regTwo!29969 r!7292) s!2326))))

(declare-fun lt!2137716 () Unit!152290)

(assert (=> d!1676818 (= lt!2137716 (choose!38564 (regTwo!29969 r!7292) s!2326))))

(assert (=> d!1676818 (validRegex!6464 (regTwo!29969 r!7292))))

(assert (=> d!1676818 (= (mainMatchTheorem!1831 (regTwo!29969 r!7292) s!2326) lt!2137716)))

(declare-fun bs!1208654 () Bool)

(assert (= bs!1208654 d!1676818))

(assert (=> bs!1208654 m!6247206))

(assert (=> bs!1208654 m!6247202))

(declare-fun m!6247534 () Bool)

(assert (=> bs!1208654 m!6247534))

(assert (=> bs!1208654 m!6247276))

(assert (=> b!5191187 d!1676818))

(declare-fun bs!1208655 () Bool)

(declare-fun b!5191554 () Bool)

(assert (= bs!1208655 (and b!5191554 b!5191447)))

(declare-fun lambda!259586 () Int)

(assert (=> bs!1208655 (= (and (= (reg!15057 (regOne!29969 r!7292)) (reg!15057 r!7292)) (= (regOne!29969 r!7292) r!7292)) (= lambda!259586 lambda!259582))))

(declare-fun bs!1208656 () Bool)

(assert (= bs!1208656 (and b!5191554 b!5191448)))

(assert (=> bs!1208656 (not (= lambda!259586 lambda!259583))))

(declare-fun bs!1208657 () Bool)

(assert (= bs!1208657 (and b!5191554 b!5191529)))

(assert (=> bs!1208657 (= (and (= (reg!15057 (regOne!29969 r!7292)) (reg!15057 (regTwo!29969 r!7292))) (= (regOne!29969 r!7292) (regTwo!29969 r!7292))) (= lambda!259586 lambda!259584))))

(declare-fun bs!1208658 () Bool)

(assert (= bs!1208658 (and b!5191554 b!5191530)))

(assert (=> bs!1208658 (not (= lambda!259586 lambda!259585))))

(assert (=> b!5191554 true))

(assert (=> b!5191554 true))

(declare-fun bs!1208659 () Bool)

(declare-fun b!5191555 () Bool)

(assert (= bs!1208659 (and b!5191555 b!5191448)))

(declare-fun lambda!259587 () Int)

(assert (=> bs!1208659 (= (and (= (regOne!29968 (regOne!29969 r!7292)) (regOne!29968 r!7292)) (= (regTwo!29968 (regOne!29969 r!7292)) (regTwo!29968 r!7292))) (= lambda!259587 lambda!259583))))

(declare-fun bs!1208660 () Bool)

(assert (= bs!1208660 (and b!5191555 b!5191447)))

(assert (=> bs!1208660 (not (= lambda!259587 lambda!259582))))

(declare-fun bs!1208661 () Bool)

(assert (= bs!1208661 (and b!5191555 b!5191530)))

(assert (=> bs!1208661 (= (and (= (regOne!29968 (regOne!29969 r!7292)) (regOne!29968 (regTwo!29969 r!7292))) (= (regTwo!29968 (regOne!29969 r!7292)) (regTwo!29968 (regTwo!29969 r!7292)))) (= lambda!259587 lambda!259585))))

(declare-fun bs!1208662 () Bool)

(assert (= bs!1208662 (and b!5191555 b!5191554)))

(assert (=> bs!1208662 (not (= lambda!259587 lambda!259586))))

(declare-fun bs!1208663 () Bool)

(assert (= bs!1208663 (and b!5191555 b!5191529)))

(assert (=> bs!1208663 (not (= lambda!259587 lambda!259584))))

(assert (=> b!5191555 true))

(assert (=> b!5191555 true))

(declare-fun e!3233741 () Bool)

(declare-fun call!365034 () Bool)

(assert (=> b!5191554 (= e!3233741 call!365034)))

(declare-fun e!3233740 () Bool)

(assert (=> b!5191555 (= e!3233740 call!365034)))

(declare-fun b!5191556 () Bool)

(declare-fun res!2205026 () Bool)

(assert (=> b!5191556 (=> res!2205026 e!3233741)))

(declare-fun call!365035 () Bool)

(assert (=> b!5191556 (= res!2205026 call!365035)))

(assert (=> b!5191556 (= e!3233740 e!3233741)))

(declare-fun b!5191558 () Bool)

(declare-fun e!3233742 () Bool)

(assert (=> b!5191558 (= e!3233742 (= s!2326 (Cons!60360 (c!894828 (regOne!29969 r!7292)) Nil!60360)))))

(declare-fun b!5191559 () Bool)

(declare-fun e!3233743 () Bool)

(assert (=> b!5191559 (= e!3233743 e!3233740)))

(declare-fun c!894929 () Bool)

(assert (=> b!5191559 (= c!894929 (is-Star!14728 (regOne!29969 r!7292)))))

(declare-fun bm!365029 () Bool)

(assert (=> bm!365029 (= call!365034 (Exists!1917 (ite c!894929 lambda!259586 lambda!259587)))))

(declare-fun b!5191560 () Bool)

(declare-fun c!894930 () Bool)

(assert (=> b!5191560 (= c!894930 (is-Union!14728 (regOne!29969 r!7292)))))

(assert (=> b!5191560 (= e!3233742 e!3233743)))

(declare-fun b!5191561 () Bool)

(declare-fun e!3233738 () Bool)

(assert (=> b!5191561 (= e!3233738 call!365035)))

(declare-fun b!5191562 () Bool)

(declare-fun e!3233744 () Bool)

(assert (=> b!5191562 (= e!3233743 e!3233744)))

(declare-fun res!2205027 () Bool)

(assert (=> b!5191562 (= res!2205027 (matchRSpec!1831 (regOne!29969 (regOne!29969 r!7292)) s!2326))))

(assert (=> b!5191562 (=> res!2205027 e!3233744)))

(declare-fun b!5191563 () Bool)

(assert (=> b!5191563 (= e!3233744 (matchRSpec!1831 (regTwo!29969 (regOne!29969 r!7292)) s!2326))))

(declare-fun b!5191557 () Bool)

(declare-fun e!3233739 () Bool)

(assert (=> b!5191557 (= e!3233738 e!3233739)))

(declare-fun res!2205025 () Bool)

(assert (=> b!5191557 (= res!2205025 (not (is-EmptyLang!14728 (regOne!29969 r!7292))))))

(assert (=> b!5191557 (=> (not res!2205025) (not e!3233739))))

(declare-fun d!1676820 () Bool)

(declare-fun c!894932 () Bool)

(assert (=> d!1676820 (= c!894932 (is-EmptyExpr!14728 (regOne!29969 r!7292)))))

(assert (=> d!1676820 (= (matchRSpec!1831 (regOne!29969 r!7292) s!2326) e!3233738)))

(declare-fun b!5191564 () Bool)

(declare-fun c!894931 () Bool)

(assert (=> b!5191564 (= c!894931 (is-ElementMatch!14728 (regOne!29969 r!7292)))))

(assert (=> b!5191564 (= e!3233739 e!3233742)))

(declare-fun bm!365030 () Bool)

(assert (=> bm!365030 (= call!365035 (isEmpty!32316 s!2326))))

(assert (= (and d!1676820 c!894932) b!5191561))

(assert (= (and d!1676820 (not c!894932)) b!5191557))

(assert (= (and b!5191557 res!2205025) b!5191564))

(assert (= (and b!5191564 c!894931) b!5191558))

(assert (= (and b!5191564 (not c!894931)) b!5191560))

(assert (= (and b!5191560 c!894930) b!5191562))

(assert (= (and b!5191560 (not c!894930)) b!5191559))

(assert (= (and b!5191562 (not res!2205027)) b!5191563))

(assert (= (and b!5191559 c!894929) b!5191556))

(assert (= (and b!5191559 (not c!894929)) b!5191555))

(assert (= (and b!5191556 (not res!2205026)) b!5191554))

(assert (= (or b!5191554 b!5191555) bm!365029))

(assert (= (or b!5191561 b!5191556) bm!365030))

(declare-fun m!6247536 () Bool)

(assert (=> bm!365029 m!6247536))

(declare-fun m!6247538 () Bool)

(assert (=> b!5191562 m!6247538))

(declare-fun m!6247540 () Bool)

(assert (=> b!5191563 m!6247540))

(assert (=> bm!365030 m!6247420))

(assert (=> b!5191187 d!1676820))

(declare-fun b!5191565 () Bool)

(declare-fun e!3233748 () Bool)

(declare-fun e!3233749 () Bool)

(assert (=> b!5191565 (= e!3233748 e!3233749)))

(declare-fun c!894933 () Bool)

(assert (=> b!5191565 (= c!894933 (is-EmptyLang!14728 (regOne!29969 r!7292)))))

(declare-fun b!5191566 () Bool)

(declare-fun lt!2137717 () Bool)

(declare-fun call!365036 () Bool)

(assert (=> b!5191566 (= e!3233748 (= lt!2137717 call!365036))))

(declare-fun b!5191567 () Bool)

(declare-fun res!2205028 () Bool)

(declare-fun e!3233750 () Bool)

(assert (=> b!5191567 (=> (not res!2205028) (not e!3233750))))

(assert (=> b!5191567 (= res!2205028 (not call!365036))))

(declare-fun b!5191568 () Bool)

(assert (=> b!5191568 (= e!3233749 (not lt!2137717))))

(declare-fun b!5191569 () Bool)

(declare-fun e!3233751 () Bool)

(declare-fun e!3233747 () Bool)

(assert (=> b!5191569 (= e!3233751 e!3233747)))

(declare-fun res!2205033 () Bool)

(assert (=> b!5191569 (=> res!2205033 e!3233747)))

(assert (=> b!5191569 (= res!2205033 call!365036)))

(declare-fun b!5191570 () Bool)

(assert (=> b!5191570 (= e!3233750 (= (head!11122 s!2326) (c!894828 (regOne!29969 r!7292))))))

(declare-fun d!1676822 () Bool)

(assert (=> d!1676822 e!3233748))

(declare-fun c!894934 () Bool)

(assert (=> d!1676822 (= c!894934 (is-EmptyExpr!14728 (regOne!29969 r!7292)))))

(declare-fun e!3233746 () Bool)

(assert (=> d!1676822 (= lt!2137717 e!3233746)))

(declare-fun c!894935 () Bool)

(assert (=> d!1676822 (= c!894935 (isEmpty!32316 s!2326))))

(assert (=> d!1676822 (validRegex!6464 (regOne!29969 r!7292))))

(assert (=> d!1676822 (= (matchR!6913 (regOne!29969 r!7292) s!2326) lt!2137717)))

(declare-fun b!5191571 () Bool)

(assert (=> b!5191571 (= e!3233746 (matchR!6913 (derivativeStep!4023 (regOne!29969 r!7292) (head!11122 s!2326)) (tail!10219 s!2326)))))

(declare-fun b!5191572 () Bool)

(declare-fun res!2205030 () Bool)

(declare-fun e!3233745 () Bool)

(assert (=> b!5191572 (=> res!2205030 e!3233745)))

(assert (=> b!5191572 (= res!2205030 (not (is-ElementMatch!14728 (regOne!29969 r!7292))))))

(assert (=> b!5191572 (= e!3233749 e!3233745)))

(declare-fun b!5191573 () Bool)

(declare-fun res!2205034 () Bool)

(assert (=> b!5191573 (=> (not res!2205034) (not e!3233750))))

(assert (=> b!5191573 (= res!2205034 (isEmpty!32316 (tail!10219 s!2326)))))

(declare-fun b!5191574 () Bool)

(declare-fun res!2205032 () Bool)

(assert (=> b!5191574 (=> res!2205032 e!3233747)))

(assert (=> b!5191574 (= res!2205032 (not (isEmpty!32316 (tail!10219 s!2326))))))

(declare-fun b!5191575 () Bool)

(declare-fun res!2205035 () Bool)

(assert (=> b!5191575 (=> res!2205035 e!3233745)))

(assert (=> b!5191575 (= res!2205035 e!3233750)))

(declare-fun res!2205031 () Bool)

(assert (=> b!5191575 (=> (not res!2205031) (not e!3233750))))

(assert (=> b!5191575 (= res!2205031 lt!2137717)))

(declare-fun bm!365031 () Bool)

(assert (=> bm!365031 (= call!365036 (isEmpty!32316 s!2326))))

(declare-fun b!5191576 () Bool)

(assert (=> b!5191576 (= e!3233747 (not (= (head!11122 s!2326) (c!894828 (regOne!29969 r!7292)))))))

(declare-fun b!5191577 () Bool)

(assert (=> b!5191577 (= e!3233745 e!3233751)))

(declare-fun res!2205029 () Bool)

(assert (=> b!5191577 (=> (not res!2205029) (not e!3233751))))

(assert (=> b!5191577 (= res!2205029 (not lt!2137717))))

(declare-fun b!5191578 () Bool)

(assert (=> b!5191578 (= e!3233746 (nullable!4921 (regOne!29969 r!7292)))))

(assert (= (and d!1676822 c!894935) b!5191578))

(assert (= (and d!1676822 (not c!894935)) b!5191571))

(assert (= (and d!1676822 c!894934) b!5191566))

(assert (= (and d!1676822 (not c!894934)) b!5191565))

(assert (= (and b!5191565 c!894933) b!5191568))

(assert (= (and b!5191565 (not c!894933)) b!5191572))

(assert (= (and b!5191572 (not res!2205030)) b!5191575))

(assert (= (and b!5191575 res!2205031) b!5191567))

(assert (= (and b!5191567 res!2205028) b!5191573))

(assert (= (and b!5191573 res!2205034) b!5191570))

(assert (= (and b!5191575 (not res!2205035)) b!5191577))

(assert (= (and b!5191577 res!2205029) b!5191569))

(assert (= (and b!5191569 (not res!2205033)) b!5191574))

(assert (= (and b!5191574 (not res!2205032)) b!5191576))

(assert (= (or b!5191566 b!5191567 b!5191569) bm!365031))

(assert (=> d!1676822 m!6247420))

(assert (=> d!1676822 m!6247526))

(assert (=> b!5191571 m!6247424))

(assert (=> b!5191571 m!6247424))

(declare-fun m!6247542 () Bool)

(assert (=> b!5191571 m!6247542))

(assert (=> b!5191571 m!6247428))

(assert (=> b!5191571 m!6247542))

(assert (=> b!5191571 m!6247428))

(declare-fun m!6247544 () Bool)

(assert (=> b!5191571 m!6247544))

(assert (=> b!5191576 m!6247424))

(declare-fun m!6247546 () Bool)

(assert (=> b!5191578 m!6247546))

(assert (=> b!5191574 m!6247428))

(assert (=> b!5191574 m!6247428))

(assert (=> b!5191574 m!6247494))

(assert (=> b!5191570 m!6247424))

(assert (=> bm!365031 m!6247420))

(assert (=> b!5191573 m!6247428))

(assert (=> b!5191573 m!6247428))

(assert (=> b!5191573 m!6247494))

(assert (=> b!5191187 d!1676822))

(declare-fun bs!1208664 () Bool)

(declare-fun d!1676824 () Bool)

(assert (= bs!1208664 (and d!1676824 d!1676766)))

(declare-fun lambda!259590 () Int)

(assert (=> bs!1208664 (= lambda!259590 lambda!259573)))

(declare-fun bs!1208665 () Bool)

(assert (= bs!1208665 (and d!1676824 d!1676768)))

(assert (=> bs!1208665 (= lambda!259590 lambda!259576)))

(declare-fun bs!1208666 () Bool)

(assert (= bs!1208666 (and d!1676824 d!1676798)))

(assert (=> bs!1208666 (= lambda!259590 lambda!259577)))

(declare-fun b!5191599 () Bool)

(declare-fun e!3233766 () Bool)

(declare-fun e!3233765 () Bool)

(assert (=> b!5191599 (= e!3233766 e!3233765)))

(declare-fun c!894946 () Bool)

(assert (=> b!5191599 (= c!894946 (isEmpty!32315 (unfocusZipperList!170 zl!343)))))

(declare-fun b!5191600 () Bool)

(declare-fun e!3233769 () Bool)

(declare-fun lt!2137720 () Regex!14728)

(assert (=> b!5191600 (= e!3233769 (= lt!2137720 (head!11121 (unfocusZipperList!170 zl!343))))))

(declare-fun b!5191602 () Bool)

(declare-fun isEmptyLang!747 (Regex!14728) Bool)

(assert (=> b!5191602 (= e!3233765 (isEmptyLang!747 lt!2137720))))

(declare-fun b!5191603 () Bool)

(declare-fun isUnion!179 (Regex!14728) Bool)

(assert (=> b!5191603 (= e!3233769 (isUnion!179 lt!2137720))))

(declare-fun b!5191604 () Bool)

(declare-fun e!3233764 () Regex!14728)

(assert (=> b!5191604 (= e!3233764 (h!66807 (unfocusZipperList!170 zl!343)))))

(declare-fun b!5191605 () Bool)

(declare-fun e!3233768 () Bool)

(assert (=> b!5191605 (= e!3233768 (isEmpty!32315 (t!373636 (unfocusZipperList!170 zl!343))))))

(declare-fun b!5191606 () Bool)

(declare-fun e!3233767 () Regex!14728)

(assert (=> b!5191606 (= e!3233767 (Union!14728 (h!66807 (unfocusZipperList!170 zl!343)) (generalisedUnion!657 (t!373636 (unfocusZipperList!170 zl!343)))))))

(declare-fun b!5191601 () Bool)

(assert (=> b!5191601 (= e!3233765 e!3233769)))

(declare-fun c!894947 () Bool)

(assert (=> b!5191601 (= c!894947 (isEmpty!32315 (tail!10218 (unfocusZipperList!170 zl!343))))))

(assert (=> d!1676824 e!3233766))

(declare-fun res!2205041 () Bool)

(assert (=> d!1676824 (=> (not res!2205041) (not e!3233766))))

(assert (=> d!1676824 (= res!2205041 (validRegex!6464 lt!2137720))))

(assert (=> d!1676824 (= lt!2137720 e!3233764)))

(declare-fun c!894945 () Bool)

(assert (=> d!1676824 (= c!894945 e!3233768)))

(declare-fun res!2205040 () Bool)

(assert (=> d!1676824 (=> (not res!2205040) (not e!3233768))))

(assert (=> d!1676824 (= res!2205040 (is-Cons!60359 (unfocusZipperList!170 zl!343)))))

(assert (=> d!1676824 (forall!14209 (unfocusZipperList!170 zl!343) lambda!259590)))

(assert (=> d!1676824 (= (generalisedUnion!657 (unfocusZipperList!170 zl!343)) lt!2137720)))

(declare-fun b!5191607 () Bool)

(assert (=> b!5191607 (= e!3233764 e!3233767)))

(declare-fun c!894944 () Bool)

(assert (=> b!5191607 (= c!894944 (is-Cons!60359 (unfocusZipperList!170 zl!343)))))

(declare-fun b!5191608 () Bool)

(assert (=> b!5191608 (= e!3233767 EmptyLang!14728)))

(assert (= (and d!1676824 res!2205040) b!5191605))

(assert (= (and d!1676824 c!894945) b!5191604))

(assert (= (and d!1676824 (not c!894945)) b!5191607))

(assert (= (and b!5191607 c!894944) b!5191606))

(assert (= (and b!5191607 (not c!894944)) b!5191608))

(assert (= (and d!1676824 res!2205041) b!5191599))

(assert (= (and b!5191599 c!894946) b!5191602))

(assert (= (and b!5191599 (not c!894946)) b!5191601))

(assert (= (and b!5191601 c!894947) b!5191600))

(assert (= (and b!5191601 (not c!894947)) b!5191603))

(declare-fun m!6247548 () Bool)

(assert (=> b!5191605 m!6247548))

(assert (=> b!5191600 m!6247224))

(declare-fun m!6247550 () Bool)

(assert (=> b!5191600 m!6247550))

(assert (=> b!5191599 m!6247224))

(declare-fun m!6247552 () Bool)

(assert (=> b!5191599 m!6247552))

(declare-fun m!6247554 () Bool)

(assert (=> b!5191603 m!6247554))

(declare-fun m!6247556 () Bool)

(assert (=> b!5191606 m!6247556))

(declare-fun m!6247558 () Bool)

(assert (=> d!1676824 m!6247558))

(assert (=> d!1676824 m!6247224))

(declare-fun m!6247560 () Bool)

(assert (=> d!1676824 m!6247560))

(assert (=> b!5191601 m!6247224))

(declare-fun m!6247562 () Bool)

(assert (=> b!5191601 m!6247562))

(assert (=> b!5191601 m!6247562))

(declare-fun m!6247564 () Bool)

(assert (=> b!5191601 m!6247564))

(declare-fun m!6247566 () Bool)

(assert (=> b!5191602 m!6247566))

(assert (=> b!5191189 d!1676824))

(declare-fun bs!1208667 () Bool)

(declare-fun d!1676826 () Bool)

(assert (= bs!1208667 (and d!1676826 d!1676766)))

(declare-fun lambda!259593 () Int)

(assert (=> bs!1208667 (= lambda!259593 lambda!259573)))

(declare-fun bs!1208668 () Bool)

(assert (= bs!1208668 (and d!1676826 d!1676768)))

(assert (=> bs!1208668 (= lambda!259593 lambda!259576)))

(declare-fun bs!1208669 () Bool)

(assert (= bs!1208669 (and d!1676826 d!1676798)))

(assert (=> bs!1208669 (= lambda!259593 lambda!259577)))

(declare-fun bs!1208670 () Bool)

(assert (= bs!1208670 (and d!1676826 d!1676824)))

(assert (=> bs!1208670 (= lambda!259593 lambda!259590)))

(declare-fun lt!2137723 () List!60483)

(assert (=> d!1676826 (forall!14209 lt!2137723 lambda!259593)))

(declare-fun e!3233772 () List!60483)

(assert (=> d!1676826 (= lt!2137723 e!3233772)))

(declare-fun c!894950 () Bool)

(assert (=> d!1676826 (= c!894950 (is-Cons!60361 zl!343))))

(assert (=> d!1676826 (= (unfocusZipperList!170 zl!343) lt!2137723)))

(declare-fun b!5191613 () Bool)

(assert (=> b!5191613 (= e!3233772 (Cons!60359 (generalisedConcat!397 (exprs!4612 (h!66809 zl!343))) (unfocusZipperList!170 (t!373638 zl!343))))))

(declare-fun b!5191614 () Bool)

(assert (=> b!5191614 (= e!3233772 Nil!60359)))

(assert (= (and d!1676826 c!894950) b!5191613))

(assert (= (and d!1676826 (not c!894950)) b!5191614))

(declare-fun m!6247568 () Bool)

(assert (=> d!1676826 m!6247568))

(assert (=> b!5191613 m!6247238))

(declare-fun m!6247570 () Bool)

(assert (=> b!5191613 m!6247570))

(assert (=> b!5191189 d!1676826))

(declare-fun d!1676828 () Bool)

(declare-fun e!3233775 () Bool)

(assert (=> d!1676828 e!3233775))

(declare-fun res!2205044 () Bool)

(assert (=> d!1676828 (=> (not res!2205044) (not e!3233775))))

(declare-fun lt!2137726 () List!60485)

(declare-fun noDuplicate!1157 (List!60485) Bool)

(assert (=> d!1676828 (= res!2205044 (noDuplicate!1157 lt!2137726))))

(declare-fun choose!38565 ((Set Context!8224)) List!60485)

(assert (=> d!1676828 (= lt!2137726 (choose!38565 z!1189))))

(assert (=> d!1676828 (= (toList!8512 z!1189) lt!2137726)))

(declare-fun b!5191617 () Bool)

(declare-fun content!10693 (List!60485) (Set Context!8224))

(assert (=> b!5191617 (= e!3233775 (= (content!10693 lt!2137726) z!1189))))

(assert (= (and d!1676828 res!2205044) b!5191617))

(declare-fun m!6247572 () Bool)

(assert (=> d!1676828 m!6247572))

(declare-fun m!6247574 () Bool)

(assert (=> d!1676828 m!6247574))

(declare-fun m!6247576 () Bool)

(assert (=> b!5191617 m!6247576))

(assert (=> b!5191179 d!1676828))

(declare-fun d!1676830 () Bool)

(declare-fun c!894951 () Bool)

(assert (=> d!1676830 (= c!894951 (isEmpty!32316 (t!373637 s!2326)))))

(declare-fun e!3233776 () Bool)

(assert (=> d!1676830 (= (matchZipper!1008 lt!2137598 (t!373637 s!2326)) e!3233776)))

(declare-fun b!5191618 () Bool)

(assert (=> b!5191618 (= e!3233776 (nullableZipper!1210 lt!2137598))))

(declare-fun b!5191619 () Bool)

(assert (=> b!5191619 (= e!3233776 (matchZipper!1008 (derivationStepZipper!1030 lt!2137598 (head!11122 (t!373637 s!2326))) (tail!10219 (t!373637 s!2326))))))

(assert (= (and d!1676830 c!894951) b!5191618))

(assert (= (and d!1676830 (not c!894951)) b!5191619))

(assert (=> d!1676830 m!6247432))

(declare-fun m!6247578 () Bool)

(assert (=> b!5191618 m!6247578))

(assert (=> b!5191619 m!6247436))

(assert (=> b!5191619 m!6247436))

(declare-fun m!6247580 () Bool)

(assert (=> b!5191619 m!6247580))

(assert (=> b!5191619 m!6247440))

(assert (=> b!5191619 m!6247580))

(assert (=> b!5191619 m!6247440))

(declare-fun m!6247582 () Bool)

(assert (=> b!5191619 m!6247582))

(assert (=> b!5191188 d!1676830))

(declare-fun b!5191633 () Bool)

(declare-fun e!3233779 () Bool)

(declare-fun tp!1456311 () Bool)

(declare-fun tp!1456312 () Bool)

(assert (=> b!5191633 (= e!3233779 (and tp!1456311 tp!1456312))))

(declare-fun b!5191632 () Bool)

(declare-fun tp!1456308 () Bool)

(assert (=> b!5191632 (= e!3233779 tp!1456308)))

(declare-fun b!5191631 () Bool)

(declare-fun tp!1456309 () Bool)

(declare-fun tp!1456310 () Bool)

(assert (=> b!5191631 (= e!3233779 (and tp!1456309 tp!1456310))))

(declare-fun b!5191630 () Bool)

(assert (=> b!5191630 (= e!3233779 tp_is_empty!38709)))

(assert (=> b!5191175 (= tp!1456258 e!3233779)))

(assert (= (and b!5191175 (is-ElementMatch!14728 (reg!15057 r!7292))) b!5191630))

(assert (= (and b!5191175 (is-Concat!23573 (reg!15057 r!7292))) b!5191631))

(assert (= (and b!5191175 (is-Star!14728 (reg!15057 r!7292))) b!5191632))

(assert (= (and b!5191175 (is-Union!14728 (reg!15057 r!7292))) b!5191633))

(declare-fun b!5191637 () Bool)

(declare-fun e!3233780 () Bool)

(declare-fun tp!1456316 () Bool)

(declare-fun tp!1456317 () Bool)

(assert (=> b!5191637 (= e!3233780 (and tp!1456316 tp!1456317))))

(declare-fun b!5191636 () Bool)

(declare-fun tp!1456313 () Bool)

(assert (=> b!5191636 (= e!3233780 tp!1456313)))

(declare-fun b!5191635 () Bool)

(declare-fun tp!1456314 () Bool)

(declare-fun tp!1456315 () Bool)

(assert (=> b!5191635 (= e!3233780 (and tp!1456314 tp!1456315))))

(declare-fun b!5191634 () Bool)

(assert (=> b!5191634 (= e!3233780 tp_is_empty!38709)))

(assert (=> b!5191180 (= tp!1456259 e!3233780)))

(assert (= (and b!5191180 (is-ElementMatch!14728 (regOne!29969 r!7292))) b!5191634))

(assert (= (and b!5191180 (is-Concat!23573 (regOne!29969 r!7292))) b!5191635))

(assert (= (and b!5191180 (is-Star!14728 (regOne!29969 r!7292))) b!5191636))

(assert (= (and b!5191180 (is-Union!14728 (regOne!29969 r!7292))) b!5191637))

(declare-fun b!5191641 () Bool)

(declare-fun e!3233781 () Bool)

(declare-fun tp!1456321 () Bool)

(declare-fun tp!1456322 () Bool)

(assert (=> b!5191641 (= e!3233781 (and tp!1456321 tp!1456322))))

(declare-fun b!5191640 () Bool)

(declare-fun tp!1456318 () Bool)

(assert (=> b!5191640 (= e!3233781 tp!1456318)))

(declare-fun b!5191639 () Bool)

(declare-fun tp!1456319 () Bool)

(declare-fun tp!1456320 () Bool)

(assert (=> b!5191639 (= e!3233781 (and tp!1456319 tp!1456320))))

(declare-fun b!5191638 () Bool)

(assert (=> b!5191638 (= e!3233781 tp_is_empty!38709)))

(assert (=> b!5191180 (= tp!1456264 e!3233781)))

(assert (= (and b!5191180 (is-ElementMatch!14728 (regTwo!29969 r!7292))) b!5191638))

(assert (= (and b!5191180 (is-Concat!23573 (regTwo!29969 r!7292))) b!5191639))

(assert (= (and b!5191180 (is-Star!14728 (regTwo!29969 r!7292))) b!5191640))

(assert (= (and b!5191180 (is-Union!14728 (regTwo!29969 r!7292))) b!5191641))

(declare-fun b!5191645 () Bool)

(declare-fun e!3233782 () Bool)

(declare-fun tp!1456326 () Bool)

(declare-fun tp!1456327 () Bool)

(assert (=> b!5191645 (= e!3233782 (and tp!1456326 tp!1456327))))

(declare-fun b!5191644 () Bool)

(declare-fun tp!1456323 () Bool)

(assert (=> b!5191644 (= e!3233782 tp!1456323)))

(declare-fun b!5191643 () Bool)

(declare-fun tp!1456324 () Bool)

(declare-fun tp!1456325 () Bool)

(assert (=> b!5191643 (= e!3233782 (and tp!1456324 tp!1456325))))

(declare-fun b!5191642 () Bool)

(assert (=> b!5191642 (= e!3233782 tp_is_empty!38709)))

(assert (=> b!5191182 (= tp!1456265 e!3233782)))

(assert (= (and b!5191182 (is-ElementMatch!14728 (regOne!29968 r!7292))) b!5191642))

(assert (= (and b!5191182 (is-Concat!23573 (regOne!29968 r!7292))) b!5191643))

(assert (= (and b!5191182 (is-Star!14728 (regOne!29968 r!7292))) b!5191644))

(assert (= (and b!5191182 (is-Union!14728 (regOne!29968 r!7292))) b!5191645))

(declare-fun b!5191649 () Bool)

(declare-fun e!3233783 () Bool)

(declare-fun tp!1456331 () Bool)

(declare-fun tp!1456332 () Bool)

(assert (=> b!5191649 (= e!3233783 (and tp!1456331 tp!1456332))))

(declare-fun b!5191648 () Bool)

(declare-fun tp!1456328 () Bool)

(assert (=> b!5191648 (= e!3233783 tp!1456328)))

(declare-fun b!5191647 () Bool)

(declare-fun tp!1456329 () Bool)

(declare-fun tp!1456330 () Bool)

(assert (=> b!5191647 (= e!3233783 (and tp!1456329 tp!1456330))))

(declare-fun b!5191646 () Bool)

(assert (=> b!5191646 (= e!3233783 tp_is_empty!38709)))

(assert (=> b!5191182 (= tp!1456263 e!3233783)))

(assert (= (and b!5191182 (is-ElementMatch!14728 (regTwo!29968 r!7292))) b!5191646))

(assert (= (and b!5191182 (is-Concat!23573 (regTwo!29968 r!7292))) b!5191647))

(assert (= (and b!5191182 (is-Star!14728 (regTwo!29968 r!7292))) b!5191648))

(assert (= (and b!5191182 (is-Union!14728 (regTwo!29968 r!7292))) b!5191649))

(declare-fun b!5191657 () Bool)

(declare-fun e!3233789 () Bool)

(declare-fun tp!1456337 () Bool)

(assert (=> b!5191657 (= e!3233789 tp!1456337)))

(declare-fun e!3233788 () Bool)

(declare-fun b!5191656 () Bool)

(declare-fun tp!1456338 () Bool)

(assert (=> b!5191656 (= e!3233788 (and (inv!80068 (h!66809 (t!373638 zl!343))) e!3233789 tp!1456338))))

(assert (=> b!5191186 (= tp!1456260 e!3233788)))

(assert (= b!5191656 b!5191657))

(assert (= (and b!5191186 (is-Cons!60361 (t!373638 zl!343))) b!5191656))

(declare-fun m!6247584 () Bool)

(assert (=> b!5191656 m!6247584))

(declare-fun b!5191662 () Bool)

(declare-fun e!3233792 () Bool)

(declare-fun tp!1456343 () Bool)

(declare-fun tp!1456344 () Bool)

(assert (=> b!5191662 (= e!3233792 (and tp!1456343 tp!1456344))))

(assert (=> b!5191191 (= tp!1456267 e!3233792)))

(assert (= (and b!5191191 (is-Cons!60359 (exprs!4612 (h!66809 zl!343)))) b!5191662))

(declare-fun b!5191663 () Bool)

(declare-fun e!3233793 () Bool)

(declare-fun tp!1456345 () Bool)

(declare-fun tp!1456346 () Bool)

(assert (=> b!5191663 (= e!3233793 (and tp!1456345 tp!1456346))))

(assert (=> b!5191181 (= tp!1456261 e!3233793)))

(assert (= (and b!5191181 (is-Cons!60359 (exprs!4612 setElem!32773))) b!5191663))

(declare-fun b!5191668 () Bool)

(declare-fun e!3233796 () Bool)

(declare-fun tp!1456349 () Bool)

(assert (=> b!5191668 (= e!3233796 (and tp_is_empty!38709 tp!1456349))))

(assert (=> b!5191183 (= tp!1456266 e!3233796)))

(assert (= (and b!5191183 (is-Cons!60360 (t!373637 s!2326))) b!5191668))

(declare-fun condSetEmpty!32779 () Bool)

(assert (=> setNonEmpty!32773 (= condSetEmpty!32779 (= setRest!32773 (as set.empty (Set Context!8224))))))

(declare-fun setRes!32779 () Bool)

(assert (=> setNonEmpty!32773 (= tp!1456262 setRes!32779)))

(declare-fun setIsEmpty!32779 () Bool)

(assert (=> setIsEmpty!32779 setRes!32779))

(declare-fun setNonEmpty!32779 () Bool)

(declare-fun tp!1456355 () Bool)

(declare-fun e!3233799 () Bool)

(declare-fun setElem!32779 () Context!8224)

(assert (=> setNonEmpty!32779 (= setRes!32779 (and tp!1456355 (inv!80068 setElem!32779) e!3233799))))

(declare-fun setRest!32779 () (Set Context!8224))

(assert (=> setNonEmpty!32779 (= setRest!32773 (set.union (set.insert setElem!32779 (as set.empty (Set Context!8224))) setRest!32779))))

(declare-fun b!5191673 () Bool)

(declare-fun tp!1456354 () Bool)

(assert (=> b!5191673 (= e!3233799 tp!1456354)))

(assert (= (and setNonEmpty!32773 condSetEmpty!32779) setIsEmpty!32779))

(assert (= (and setNonEmpty!32773 (not condSetEmpty!32779)) setNonEmpty!32779))

(assert (= setNonEmpty!32779 b!5191673))

(declare-fun m!6247586 () Bool)

(assert (=> setNonEmpty!32779 m!6247586))

(declare-fun b_lambda!201187 () Bool)

(assert (= b_lambda!201181 (or b!5191185 b_lambda!201187)))

(declare-fun bs!1208671 () Bool)

(declare-fun d!1676832 () Bool)

(assert (= bs!1208671 (and d!1676832 b!5191185)))

(assert (=> bs!1208671 (= (dynLambda!23900 lambda!259560 (h!66809 zl!343)) (derivationStepZipperUp!118 (h!66809 zl!343) (h!66808 s!2326)))))

(assert (=> bs!1208671 m!6247232))

(assert (=> d!1676762 d!1676832))

(declare-fun b_lambda!201189 () Bool)

(assert (= b_lambda!201183 (or b!5191185 b_lambda!201189)))

(declare-fun bs!1208672 () Bool)

(declare-fun d!1676834 () Bool)

(assert (= bs!1208672 (and d!1676834 b!5191185)))

(assert (=> bs!1208672 (= (dynLambda!23900 lambda!259560 lt!2137599) (derivationStepZipperUp!118 lt!2137599 (h!66808 s!2326)))))

(assert (=> bs!1208672 m!6247272))

(assert (=> d!1676784 d!1676834))

(declare-fun b_lambda!201191 () Bool)

(assert (= b_lambda!201185 (or b!5191185 b_lambda!201191)))

(declare-fun bs!1208673 () Bool)

(declare-fun d!1676836 () Bool)

(assert (= bs!1208673 (and d!1676836 b!5191185)))

(assert (=> bs!1208673 (= (dynLambda!23900 lambda!259560 lt!2137613) (derivationStepZipperUp!118 lt!2137613 (h!66808 s!2326)))))

(assert (=> bs!1208673 m!6247262))

(assert (=> d!1676796 d!1676836))

(push 1)

(assert (not b!5191287))

(assert (not d!1676804))

(assert (not bm!365019))

(assert (not d!1676822))

(assert (not b!5191519))

(assert (not b!5191606))

(assert (not b!5191576))

(assert (not b!5191573))

(assert (not bm!364986))

(assert (not b!5191525))

(assert (not b!5191455))

(assert (not d!1676758))

(assert (not b!5191645))

(assert (not b!5191312))

(assert (not bm!364997))

(assert (not b!5191644))

(assert (not b!5191548))

(assert (not b!5191545))

(assert (not d!1676798))

(assert (not b!5191370))

(assert (not b!5191379))

(assert (not b!5191602))

(assert (not b!5191373))

(assert (not b!5191349))

(assert tp_is_empty!38709)

(assert (not b!5191315))

(assert (not bm!364988))

(assert (not b!5191551))

(assert (not b!5191495))

(assert (not b!5191600))

(assert (not d!1676782))

(assert (not b!5191319))

(assert (not b!5191647))

(assert (not bm!364994))

(assert (not d!1676766))

(assert (not b!5191637))

(assert (not b!5191649))

(assert (not b!5191508))

(assert (not b!5191574))

(assert (not d!1676756))

(assert (not b!5191377))

(assert (not d!1676826))

(assert (not bm!364992))

(assert (not b!5191563))

(assert (not b!5191578))

(assert (not b!5191314))

(assert (not b!5191385))

(assert (not b!5191668))

(assert (not b!5191553))

(assert (not b_lambda!201191))

(assert (not b!5191657))

(assert (not b!5191537))

(assert (not b!5191371))

(assert (not bm!365017))

(assert (not b!5191601))

(assert (not b!5191498))

(assert (not b!5191571))

(assert (not b!5191501))

(assert (not b!5191662))

(assert (not d!1676768))

(assert (not b!5191635))

(assert (not bs!1208671))

(assert (not bm!365029))

(assert (not d!1676762))

(assert (not d!1676776))

(assert (not d!1676764))

(assert (not bm!365021))

(assert (not bm!365015))

(assert (not b!5191605))

(assert (not b!5191613))

(assert (not b!5191538))

(assert (not b!5191673))

(assert (not b!5191631))

(assert (not d!1676796))

(assert (not b!5191618))

(assert (not b!5191384))

(assert (not bs!1208672))

(assert (not bm!365011))

(assert (not b!5191499))

(assert (not bm!365027))

(assert (not b!5191570))

(assert (not b_lambda!201189))

(assert (not b!5191313))

(assert (not b!5191410))

(assert (not d!1676778))

(assert (not bm!365018))

(assert (not bm!365026))

(assert (not bm!365012))

(assert (not b!5191619))

(assert (not d!1676828))

(assert (not b!5191633))

(assert (not b!5191549))

(assert (not bm!365023))

(assert (not bm!365005))

(assert (not bm!365025))

(assert (not bs!1208673))

(assert (not b!5191374))

(assert (not b!5191640))

(assert (not bm!365030))

(assert (not bm!364984))

(assert (not bm!365006))

(assert (not b!5191562))

(assert (not b!5191526))

(assert (not b!5191617))

(assert (not b!5191317))

(assert (not bm!364990))

(assert (not b!5191369))

(assert (not b!5191288))

(assert (not b!5191380))

(assert (not b!5191503))

(assert (not d!1676824))

(assert (not b!5191456))

(assert (not b!5191643))

(assert (not d!1676818))

(assert (not b!5191663))

(assert (not d!1676816))

(assert (not d!1676814))

(assert (not b!5191372))

(assert (not b!5191603))

(assert (not b!5191641))

(assert (not b!5191656))

(assert (not bm!364996))

(assert (not bm!365031))

(assert (not bm!364971))

(assert (not d!1676786))

(assert (not d!1676802))

(assert (not b!5191599))

(assert (not setNonEmpty!32779))

(assert (not b_lambda!201187))

(assert (not b!5191496))

(assert (not b!5191632))

(assert (not b!5191360))

(assert (not b!5191311))

(assert (not b!5191648))

(assert (not b!5191546))

(assert (not b!5191639))

(assert (not b!5191636))

(assert (not d!1676830))

(assert (not d!1676780))

(assert (not bm!365028))

(assert (not d!1676794))

(assert (not d!1676784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

