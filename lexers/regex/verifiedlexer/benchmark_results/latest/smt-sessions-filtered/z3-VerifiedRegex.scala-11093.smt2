; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573790 () Bool)

(assert start!573790)

(declare-fun b!5488890 () Bool)

(assert (=> b!5488890 true))

(declare-fun b!5488895 () Bool)

(assert (=> b!5488895 true))

(declare-fun b!5488878 () Bool)

(declare-fun e!3396380 () Bool)

(declare-fun tp_is_empty!40119 () Bool)

(assert (=> b!5488878 (= e!3396380 tp_is_empty!40119)))

(declare-fun b!5488879 () Bool)

(declare-fun res!2340953 () Bool)

(declare-fun e!3396382 () Bool)

(assert (=> b!5488879 (=> res!2340953 e!3396382)))

(declare-datatypes ((C!31136 0))(
  ( (C!31137 (val!25270 Int)) )
))
(declare-datatypes ((Regex!15433 0))(
  ( (ElementMatch!15433 (c!958605 C!31136)) (Concat!24278 (regOne!31378 Regex!15433) (regTwo!31378 Regex!15433)) (EmptyExpr!15433) (Star!15433 (reg!15762 Regex!15433)) (EmptyLang!15433) (Union!15433 (regOne!31379 Regex!15433) (regTwo!31379 Regex!15433)) )
))
(declare-datatypes ((List!62598 0))(
  ( (Nil!62474) (Cons!62474 (h!68922 Regex!15433) (t!375829 List!62598)) )
))
(declare-datatypes ((Context!9634 0))(
  ( (Context!9635 (exprs!5317 List!62598)) )
))
(declare-datatypes ((List!62599 0))(
  ( (Nil!62475) (Cons!62475 (h!68923 Context!9634) (t!375830 List!62599)) )
))
(declare-fun zl!343 () List!62599)

(declare-datatypes ((List!62600 0))(
  ( (Nil!62476) (Cons!62476 (h!68924 C!31136) (t!375831 List!62600)) )
))
(declare-fun s!2326 () List!62600)

(get-info :version)

(assert (=> b!5488879 (= res!2340953 (or (not ((_ is Cons!62475) zl!343)) ((_ is Nil!62476) s!2326) (not (= zl!343 (Cons!62475 (h!68923 zl!343) (t!375830 zl!343))))))))

(declare-fun b!5488880 () Bool)

(declare-fun e!3396379 () Bool)

(declare-fun isEmpty!34323 (List!62599) Bool)

(assert (=> b!5488880 (= e!3396379 (isEmpty!34323 (t!375830 zl!343)))))

(declare-fun res!2340949 () Bool)

(declare-fun e!3396383 () Bool)

(assert (=> start!573790 (=> (not res!2340949) (not e!3396383))))

(declare-fun r!7292 () Regex!15433)

(declare-fun validRegex!7169 (Regex!15433) Bool)

(assert (=> start!573790 (= res!2340949 (validRegex!7169 r!7292))))

(assert (=> start!573790 e!3396383))

(assert (=> start!573790 e!3396380))

(declare-fun condSetEmpty!36267 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9634))

(assert (=> start!573790 (= condSetEmpty!36267 (= z!1189 ((as const (Array Context!9634 Bool)) false)))))

(declare-fun setRes!36267 () Bool)

(assert (=> start!573790 setRes!36267))

(declare-fun e!3396376 () Bool)

(assert (=> start!573790 e!3396376))

(declare-fun e!3396375 () Bool)

(assert (=> start!573790 e!3396375))

(declare-fun b!5488881 () Bool)

(declare-fun res!2340947 () Bool)

(assert (=> b!5488881 (=> (not res!2340947) (not e!3396383))))

(declare-fun toList!9217 ((InoxSet Context!9634)) List!62599)

(assert (=> b!5488881 (= res!2340947 (= (toList!9217 z!1189) zl!343))))

(declare-fun b!5488882 () Bool)

(declare-fun e!3396378 () Bool)

(declare-fun lambda!293713 () Int)

(declare-fun exists!2090 (List!62599 Int) Bool)

(assert (=> b!5488882 (= e!3396378 (exists!2090 zl!343 lambda!293713))))

(declare-fun b!5488883 () Bool)

(declare-fun res!2340946 () Bool)

(assert (=> b!5488883 (=> res!2340946 e!3396382)))

(assert (=> b!5488883 (= res!2340946 (isEmpty!34323 (t!375830 zl!343)))))

(declare-fun setIsEmpty!36267 () Bool)

(assert (=> setIsEmpty!36267 setRes!36267))

(declare-fun b!5488884 () Bool)

(declare-fun e!3396381 () Bool)

(declare-fun tp!1508829 () Bool)

(assert (=> b!5488884 (= e!3396381 tp!1508829)))

(declare-fun b!5488885 () Bool)

(declare-fun res!2340948 () Bool)

(declare-fun e!3396384 () Bool)

(assert (=> b!5488885 (=> res!2340948 e!3396384)))

(declare-fun lt!2241725 () List!62598)

(declare-fun lambda!293712 () Int)

(declare-fun exists!2091 (List!62598 Int) Bool)

(assert (=> b!5488885 (= res!2340948 (exists!2091 lt!2241725 lambda!293712))))

(declare-fun b!5488886 () Bool)

(declare-fun tp!1508821 () Bool)

(declare-fun tp!1508824 () Bool)

(assert (=> b!5488886 (= e!3396380 (and tp!1508821 tp!1508824))))

(declare-fun setNonEmpty!36267 () Bool)

(declare-fun setElem!36267 () Context!9634)

(declare-fun tp!1508826 () Bool)

(declare-fun inv!81829 (Context!9634) Bool)

(assert (=> setNonEmpty!36267 (= setRes!36267 (and tp!1508826 (inv!81829 setElem!36267) e!3396381))))

(declare-fun setRest!36267 () (InoxSet Context!9634))

(assert (=> setNonEmpty!36267 (= z!1189 ((_ map or) (store ((as const (Array Context!9634 Bool)) false) setElem!36267 true) setRest!36267))))

(declare-fun b!5488887 () Bool)

(declare-fun tp!1508823 () Bool)

(assert (=> b!5488887 (= e!3396375 (and tp_is_empty!40119 tp!1508823))))

(declare-fun b!5488888 () Bool)

(declare-fun tp!1508828 () Bool)

(declare-fun tp!1508827 () Bool)

(assert (=> b!5488888 (= e!3396380 (and tp!1508828 tp!1508827))))

(declare-fun b!5488889 () Bool)

(declare-fun e!3396377 () Bool)

(declare-fun tp!1508820 () Bool)

(assert (=> b!5488889 (= e!3396377 tp!1508820)))

(assert (=> b!5488890 (= e!3396382 e!3396384)))

(declare-fun res!2340945 () Bool)

(assert (=> b!5488890 (=> res!2340945 e!3396384)))

(declare-fun lt!2241728 () Bool)

(assert (=> b!5488890 (= res!2340945 lt!2241728)))

(assert (=> b!5488890 (= lt!2241728 (exists!2091 lt!2241725 lambda!293712))))

(declare-datatypes ((Unit!155322 0))(
  ( (Unit!155323) )
))
(declare-fun lt!2241729 () Unit!155322)

(declare-fun matchRGenUnionSpec!266 (Regex!15433 List!62598 List!62600) Unit!155322)

(assert (=> b!5488890 (= lt!2241729 (matchRGenUnionSpec!266 r!7292 lt!2241725 s!2326))))

(declare-fun unfocusZipperList!865 (List!62599) List!62598)

(assert (=> b!5488890 (= lt!2241725 (unfocusZipperList!865 zl!343))))

(declare-fun tp!1508825 () Bool)

(declare-fun b!5488891 () Bool)

(assert (=> b!5488891 (= e!3396376 (and (inv!81829 (h!68923 zl!343)) e!3396377 tp!1508825))))

(declare-fun b!5488892 () Bool)

(declare-fun tp!1508822 () Bool)

(assert (=> b!5488892 (= e!3396380 tp!1508822)))

(declare-fun b!5488893 () Bool)

(declare-fun res!2340944 () Bool)

(assert (=> b!5488893 (=> (not res!2340944) (not e!3396383))))

(declare-fun unfocusZipper!1175 (List!62599) Regex!15433)

(assert (=> b!5488893 (= res!2340944 (= r!7292 (unfocusZipper!1175 zl!343)))))

(declare-fun b!5488894 () Bool)

(declare-fun res!2340952 () Bool)

(assert (=> b!5488894 (=> res!2340952 e!3396384)))

(declare-fun matchZipper!1617 ((InoxSet Context!9634) List!62600) Bool)

(assert (=> b!5488894 (= res!2340952 (not (matchZipper!1617 z!1189 s!2326)))))

(assert (=> b!5488895 (= e!3396384 e!3396378)))

(declare-fun res!2340954 () Bool)

(assert (=> b!5488895 (=> res!2340954 e!3396378)))

(assert (=> b!5488895 (= res!2340954 (not (exists!2090 zl!343 lambda!293713)))))

(assert (=> b!5488895 (exists!2090 zl!343 lambda!293713)))

(declare-fun lt!2241726 () Unit!155322)

(declare-fun lemmaZipperMatchesExistsMatchingContext!60 (List!62599 List!62600) Unit!155322)

(assert (=> b!5488895 (= lt!2241726 (lemmaZipperMatchesExistsMatchingContext!60 zl!343 s!2326))))

(declare-fun b!5488896 () Bool)

(assert (=> b!5488896 (= e!3396383 (not e!3396382))))

(declare-fun res!2340951 () Bool)

(assert (=> b!5488896 (=> res!2340951 e!3396382)))

(assert (=> b!5488896 (= res!2340951 e!3396379)))

(declare-fun res!2340950 () Bool)

(assert (=> b!5488896 (=> (not res!2340950) (not e!3396379))))

(assert (=> b!5488896 (= res!2340950 ((_ is Cons!62475) zl!343))))

(declare-fun matchRSpec!2536 (Regex!15433 List!62600) Bool)

(assert (=> b!5488896 (= lt!2241728 (matchRSpec!2536 r!7292 s!2326))))

(declare-fun matchR!7618 (Regex!15433 List!62600) Bool)

(assert (=> b!5488896 (= lt!2241728 (matchR!7618 r!7292 s!2326))))

(declare-fun lt!2241727 () Unit!155322)

(declare-fun mainMatchTheorem!2536 (Regex!15433 List!62600) Unit!155322)

(assert (=> b!5488896 (= lt!2241727 (mainMatchTheorem!2536 r!7292 s!2326))))

(assert (= (and start!573790 res!2340949) b!5488881))

(assert (= (and b!5488881 res!2340947) b!5488893))

(assert (= (and b!5488893 res!2340944) b!5488896))

(assert (= (and b!5488896 res!2340950) b!5488880))

(assert (= (and b!5488896 (not res!2340951)) b!5488879))

(assert (= (and b!5488879 (not res!2340953)) b!5488883))

(assert (= (and b!5488883 (not res!2340946)) b!5488890))

(assert (= (and b!5488890 (not res!2340945)) b!5488885))

(assert (= (and b!5488885 (not res!2340948)) b!5488894))

(assert (= (and b!5488894 (not res!2340952)) b!5488895))

(assert (= (and b!5488895 (not res!2340954)) b!5488882))

(assert (= (and start!573790 ((_ is ElementMatch!15433) r!7292)) b!5488878))

(assert (= (and start!573790 ((_ is Concat!24278) r!7292)) b!5488888))

(assert (= (and start!573790 ((_ is Star!15433) r!7292)) b!5488892))

(assert (= (and start!573790 ((_ is Union!15433) r!7292)) b!5488886))

(assert (= (and start!573790 condSetEmpty!36267) setIsEmpty!36267))

(assert (= (and start!573790 (not condSetEmpty!36267)) setNonEmpty!36267))

(assert (= setNonEmpty!36267 b!5488884))

(assert (= b!5488891 b!5488889))

(assert (= (and start!573790 ((_ is Cons!62475) zl!343)) b!5488891))

(assert (= (and start!573790 ((_ is Cons!62476) s!2326)) b!5488887))

(declare-fun m!6502566 () Bool)

(assert (=> b!5488883 m!6502566))

(declare-fun m!6502568 () Bool)

(assert (=> b!5488893 m!6502568))

(declare-fun m!6502570 () Bool)

(assert (=> b!5488894 m!6502570))

(declare-fun m!6502572 () Bool)

(assert (=> start!573790 m!6502572))

(declare-fun m!6502574 () Bool)

(assert (=> b!5488890 m!6502574))

(declare-fun m!6502576 () Bool)

(assert (=> b!5488890 m!6502576))

(declare-fun m!6502578 () Bool)

(assert (=> b!5488890 m!6502578))

(declare-fun m!6502580 () Bool)

(assert (=> b!5488895 m!6502580))

(assert (=> b!5488895 m!6502580))

(declare-fun m!6502582 () Bool)

(assert (=> b!5488895 m!6502582))

(declare-fun m!6502584 () Bool)

(assert (=> b!5488896 m!6502584))

(declare-fun m!6502586 () Bool)

(assert (=> b!5488896 m!6502586))

(declare-fun m!6502588 () Bool)

(assert (=> b!5488896 m!6502588))

(declare-fun m!6502590 () Bool)

(assert (=> b!5488891 m!6502590))

(assert (=> b!5488880 m!6502566))

(assert (=> b!5488885 m!6502574))

(declare-fun m!6502592 () Bool)

(assert (=> setNonEmpty!36267 m!6502592))

(declare-fun m!6502594 () Bool)

(assert (=> b!5488881 m!6502594))

(assert (=> b!5488882 m!6502580))

(check-sat (not start!573790) (not b!5488882) (not b!5488885) (not b!5488896) (not b!5488894) (not b!5488887) (not b!5488895) (not b!5488889) (not b!5488888) (not b!5488893) (not setNonEmpty!36267) (not b!5488881) tp_is_empty!40119 (not b!5488892) (not b!5488886) (not b!5488884) (not b!5488883) (not b!5488890) (not b!5488880) (not b!5488891))
(check-sat)
