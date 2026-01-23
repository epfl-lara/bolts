; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573762 () Bool)

(assert start!573762)

(declare-fun b!5487879 () Bool)

(assert (=> b!5487879 true))

(declare-fun b!5487883 () Bool)

(assert (=> b!5487883 true))

(declare-fun tp!1508375 () Bool)

(declare-fun setNonEmpty!36225 () Bool)

(declare-datatypes ((C!31108 0))(
  ( (C!31109 (val!25256 Int)) )
))
(declare-datatypes ((Regex!15419 0))(
  ( (ElementMatch!15419 (c!958551 C!31108)) (Concat!24264 (regOne!31350 Regex!15419) (regTwo!31350 Regex!15419)) (EmptyExpr!15419) (Star!15419 (reg!15748 Regex!15419)) (EmptyLang!15419) (Union!15419 (regOne!31351 Regex!15419) (regTwo!31351 Regex!15419)) )
))
(declare-datatypes ((List!62556 0))(
  ( (Nil!62432) (Cons!62432 (h!68880 Regex!15419) (t!375787 List!62556)) )
))
(declare-datatypes ((Context!9606 0))(
  ( (Context!9607 (exprs!5303 List!62556)) )
))
(declare-fun setElem!36225 () Context!9606)

(declare-fun e!3395852 () Bool)

(declare-fun setRes!36225 () Bool)

(declare-fun inv!81794 (Context!9606) Bool)

(assert (=> setNonEmpty!36225 (= setRes!36225 (and tp!1508375 (inv!81794 setElem!36225) e!3395852))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9606))

(declare-fun setRest!36225 () (InoxSet Context!9606))

(assert (=> setNonEmpty!36225 (= z!1189 ((_ map or) (store ((as const (Array Context!9606 Bool)) false) setElem!36225 true) setRest!36225))))

(declare-fun b!5487876 () Bool)

(declare-fun res!2340372 () Bool)

(declare-fun e!3395846 () Bool)

(assert (=> b!5487876 (=> (not res!2340372) (not e!3395846))))

(declare-fun r!7292 () Regex!15419)

(declare-datatypes ((List!62557 0))(
  ( (Nil!62433) (Cons!62433 (h!68881 Context!9606) (t!375788 List!62557)) )
))
(declare-fun zl!343 () List!62557)

(declare-fun unfocusZipper!1161 (List!62557) Regex!15419)

(assert (=> b!5487876 (= res!2340372 (= r!7292 (unfocusZipper!1161 zl!343)))))

(declare-fun b!5487877 () Bool)

(declare-fun e!3395854 () Bool)

(assert (=> b!5487877 (= e!3395854 true)))

(declare-fun lt!2241290 () Regex!15419)

(declare-fun lt!2241296 () List!62557)

(assert (=> b!5487877 (= lt!2241290 (unfocusZipper!1161 lt!2241296))))

(declare-fun b!5487878 () Bool)

(declare-fun e!3395848 () Bool)

(declare-fun isEmpty!34309 (List!62557) Bool)

(assert (=> b!5487878 (= e!3395848 (isEmpty!34309 (t!375788 zl!343)))))

(declare-fun res!2340370 () Bool)

(assert (=> start!573762 (=> (not res!2340370) (not e!3395846))))

(declare-fun validRegex!7155 (Regex!15419) Bool)

(assert (=> start!573762 (= res!2340370 (validRegex!7155 r!7292))))

(assert (=> start!573762 e!3395846))

(declare-fun e!3395843 () Bool)

(assert (=> start!573762 e!3395843))

(declare-fun condSetEmpty!36225 () Bool)

(assert (=> start!573762 (= condSetEmpty!36225 (= z!1189 ((as const (Array Context!9606 Bool)) false)))))

(assert (=> start!573762 setRes!36225))

(declare-fun e!3395851 () Bool)

(assert (=> start!573762 e!3395851))

(declare-fun e!3395847 () Bool)

(assert (=> start!573762 e!3395847))

(declare-fun e!3395849 () Bool)

(declare-fun e!3395850 () Bool)

(assert (=> b!5487879 (= e!3395849 e!3395850)))

(declare-fun res!2340374 () Bool)

(assert (=> b!5487879 (=> res!2340374 e!3395850)))

(declare-fun lt!2241287 () Bool)

(assert (=> b!5487879 (= res!2340374 (not lt!2241287))))

(declare-fun lt!2241293 () List!62556)

(declare-fun lambda!293534 () Int)

(declare-fun exists!2060 (List!62556 Int) Bool)

(assert (=> b!5487879 (= lt!2241287 (exists!2060 lt!2241293 lambda!293534))))

(declare-datatypes ((List!62558 0))(
  ( (Nil!62434) (Cons!62434 (h!68882 C!31108) (t!375789 List!62558)) )
))
(declare-fun s!2326 () List!62558)

(declare-datatypes ((Unit!155294 0))(
  ( (Unit!155295) )
))
(declare-fun lt!2241291 () Unit!155294)

(declare-fun matchRGenUnionSpec!252 (Regex!15419 List!62556 List!62558) Unit!155294)

(assert (=> b!5487879 (= lt!2241291 (matchRGenUnionSpec!252 r!7292 lt!2241293 s!2326))))

(declare-fun unfocusZipperList!851 (List!62557) List!62556)

(assert (=> b!5487879 (= lt!2241293 (unfocusZipperList!851 zl!343))))

(declare-fun b!5487880 () Bool)

(declare-fun e!3395853 () Bool)

(declare-fun tp!1508372 () Bool)

(assert (=> b!5487880 (= e!3395851 (and (inv!81794 (h!68881 zl!343)) e!3395853 tp!1508372))))

(declare-fun b!5487881 () Bool)

(declare-fun res!2340376 () Bool)

(assert (=> b!5487881 (=> res!2340376 e!3395849)))

(assert (=> b!5487881 (= res!2340376 (isEmpty!34309 (t!375788 zl!343)))))

(declare-fun b!5487882 () Bool)

(declare-fun e!3395844 () Bool)

(assert (=> b!5487882 (= e!3395844 e!3395854)))

(declare-fun res!2340364 () Bool)

(assert (=> b!5487882 (=> res!2340364 e!3395854)))

(declare-fun lt!2241297 () Int)

(declare-fun zipperDepthTotal!194 (List!62557) Int)

(assert (=> b!5487882 (= res!2340364 (<= lt!2241297 (zipperDepthTotal!194 lt!2241296)))))

(declare-fun lt!2241289 () Context!9606)

(assert (=> b!5487882 (= lt!2241296 (Cons!62433 lt!2241289 Nil!62433))))

(declare-fun lt!2241292 () Int)

(assert (=> b!5487882 (< lt!2241292 lt!2241297)))

(assert (=> b!5487882 (= lt!2241297 (zipperDepthTotal!194 zl!343))))

(declare-fun contextDepthTotal!174 (Context!9606) Int)

(assert (=> b!5487882 (= lt!2241292 (contextDepthTotal!174 lt!2241289))))

(declare-fun lt!2241288 () Unit!155294)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!2 (List!62557 Context!9606) Unit!155294)

(assert (=> b!5487882 (= lt!2241288 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!2 zl!343 lt!2241289))))

(declare-fun lambda!293535 () Int)

(declare-fun getWitness!877 (List!62557 Int) Context!9606)

(assert (=> b!5487882 (= lt!2241289 (getWitness!877 zl!343 lambda!293535))))

(declare-fun setIsEmpty!36225 () Bool)

(assert (=> setIsEmpty!36225 setRes!36225))

(declare-fun e!3395845 () Bool)

(assert (=> b!5487883 (= e!3395845 e!3395844)))

(declare-fun res!2340369 () Bool)

(assert (=> b!5487883 (=> res!2340369 e!3395844)))

(declare-fun exists!2061 (List!62557 Int) Bool)

(assert (=> b!5487883 (= res!2340369 (not (exists!2061 zl!343 lambda!293535)))))

(assert (=> b!5487883 (exists!2061 zl!343 lambda!293535)))

(declare-fun lt!2241295 () Unit!155294)

(declare-fun lt!2241286 () Regex!15419)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!10 (List!62557 Regex!15419) Unit!155294)

(assert (=> b!5487883 (= lt!2241295 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!10 zl!343 lt!2241286))))

(declare-fun b!5487884 () Bool)

(declare-fun res!2340375 () Bool)

(assert (=> b!5487884 (=> res!2340375 e!3395850)))

(assert (=> b!5487884 (= res!2340375 (not (exists!2060 lt!2241293 lambda!293534)))))

(declare-fun b!5487885 () Bool)

(declare-fun tp!1508377 () Bool)

(assert (=> b!5487885 (= e!3395852 tp!1508377)))

(declare-fun b!5487886 () Bool)

(declare-fun tp!1508371 () Bool)

(assert (=> b!5487886 (= e!3395843 tp!1508371)))

(declare-fun b!5487887 () Bool)

(declare-fun res!2340366 () Bool)

(assert (=> b!5487887 (=> res!2340366 e!3395854)))

(declare-fun toList!9203 ((InoxSet Context!9606)) List!62557)

(assert (=> b!5487887 (= res!2340366 (not (= (toList!9203 (store ((as const (Array Context!9606 Bool)) false) lt!2241289 true)) lt!2241296)))))

(declare-fun b!5487888 () Bool)

(declare-fun tp!1508379 () Bool)

(declare-fun tp!1508374 () Bool)

(assert (=> b!5487888 (= e!3395843 (and tp!1508379 tp!1508374))))

(declare-fun b!5487889 () Bool)

(assert (=> b!5487889 (= e!3395846 (not e!3395849))))

(declare-fun res!2340363 () Bool)

(assert (=> b!5487889 (=> res!2340363 e!3395849)))

(assert (=> b!5487889 (= res!2340363 e!3395848)))

(declare-fun res!2340362 () Bool)

(assert (=> b!5487889 (=> (not res!2340362) (not e!3395848))))

(get-info :version)

(assert (=> b!5487889 (= res!2340362 ((_ is Cons!62433) zl!343))))

(declare-fun matchRSpec!2522 (Regex!15419 List!62558) Bool)

(assert (=> b!5487889 (= lt!2241287 (matchRSpec!2522 r!7292 s!2326))))

(declare-fun matchR!7604 (Regex!15419 List!62558) Bool)

(assert (=> b!5487889 (= lt!2241287 (matchR!7604 r!7292 s!2326))))

(declare-fun lt!2241294 () Unit!155294)

(declare-fun mainMatchTheorem!2522 (Regex!15419 List!62558) Unit!155294)

(assert (=> b!5487889 (= lt!2241294 (mainMatchTheorem!2522 r!7292 s!2326))))

(declare-fun b!5487890 () Bool)

(declare-fun tp!1508376 () Bool)

(assert (=> b!5487890 (= e!3395853 tp!1508376)))

(declare-fun b!5487891 () Bool)

(declare-fun res!2340365 () Bool)

(assert (=> b!5487891 (=> (not res!2340365) (not e!3395846))))

(assert (=> b!5487891 (= res!2340365 (= (toList!9203 z!1189) zl!343))))

(declare-fun b!5487892 () Bool)

(declare-fun res!2340371 () Bool)

(assert (=> b!5487892 (=> res!2340371 e!3395845)))

(assert (=> b!5487892 (= res!2340371 (not (matchR!7604 lt!2241286 s!2326)))))

(declare-fun b!5487893 () Bool)

(declare-fun tp_is_empty!40091 () Bool)

(declare-fun tp!1508373 () Bool)

(assert (=> b!5487893 (= e!3395847 (and tp_is_empty!40091 tp!1508373))))

(declare-fun b!5487894 () Bool)

(declare-fun res!2340367 () Bool)

(assert (=> b!5487894 (=> res!2340367 e!3395849)))

(assert (=> b!5487894 (= res!2340367 (or (not ((_ is Cons!62433) zl!343)) ((_ is Nil!62434) s!2326) (not (= zl!343 (Cons!62433 (h!68881 zl!343) (t!375788 zl!343))))))))

(declare-fun b!5487895 () Bool)

(assert (=> b!5487895 (= e!3395843 tp_is_empty!40091)))

(declare-fun b!5487896 () Bool)

(assert (=> b!5487896 (= e!3395850 e!3395845)))

(declare-fun res!2340373 () Bool)

(assert (=> b!5487896 (=> res!2340373 e!3395845)))

(declare-fun contains!19743 (List!62556 Regex!15419) Bool)

(assert (=> b!5487896 (= res!2340373 (not (contains!19743 lt!2241293 lt!2241286)))))

(declare-fun getWitness!878 (List!62556 Int) Regex!15419)

(assert (=> b!5487896 (= lt!2241286 (getWitness!878 lt!2241293 lambda!293534))))

(declare-fun b!5487897 () Bool)

(declare-fun res!2340368 () Bool)

(assert (=> b!5487897 (=> res!2340368 e!3395845)))

(assert (=> b!5487897 (= res!2340368 (not (validRegex!7155 lt!2241286)))))

(declare-fun b!5487898 () Bool)

(declare-fun tp!1508370 () Bool)

(declare-fun tp!1508378 () Bool)

(assert (=> b!5487898 (= e!3395843 (and tp!1508370 tp!1508378))))

(assert (= (and start!573762 res!2340370) b!5487891))

(assert (= (and b!5487891 res!2340365) b!5487876))

(assert (= (and b!5487876 res!2340372) b!5487889))

(assert (= (and b!5487889 res!2340362) b!5487878))

(assert (= (and b!5487889 (not res!2340363)) b!5487894))

(assert (= (and b!5487894 (not res!2340367)) b!5487881))

(assert (= (and b!5487881 (not res!2340376)) b!5487879))

(assert (= (and b!5487879 (not res!2340374)) b!5487884))

(assert (= (and b!5487884 (not res!2340375)) b!5487896))

(assert (= (and b!5487896 (not res!2340373)) b!5487897))

(assert (= (and b!5487897 (not res!2340368)) b!5487892))

(assert (= (and b!5487892 (not res!2340371)) b!5487883))

(assert (= (and b!5487883 (not res!2340369)) b!5487882))

(assert (= (and b!5487882 (not res!2340364)) b!5487887))

(assert (= (and b!5487887 (not res!2340366)) b!5487877))

(assert (= (and start!573762 ((_ is ElementMatch!15419) r!7292)) b!5487895))

(assert (= (and start!573762 ((_ is Concat!24264) r!7292)) b!5487898))

(assert (= (and start!573762 ((_ is Star!15419) r!7292)) b!5487886))

(assert (= (and start!573762 ((_ is Union!15419) r!7292)) b!5487888))

(assert (= (and start!573762 condSetEmpty!36225) setIsEmpty!36225))

(assert (= (and start!573762 (not condSetEmpty!36225)) setNonEmpty!36225))

(assert (= setNonEmpty!36225 b!5487885))

(assert (= b!5487880 b!5487890))

(assert (= (and start!573762 ((_ is Cons!62433) zl!343)) b!5487880))

(assert (= (and start!573762 ((_ is Cons!62434) s!2326)) b!5487893))

(declare-fun m!6501904 () Bool)

(assert (=> b!5487891 m!6501904))

(declare-fun m!6501906 () Bool)

(assert (=> b!5487877 m!6501906))

(declare-fun m!6501908 () Bool)

(assert (=> b!5487879 m!6501908))

(declare-fun m!6501910 () Bool)

(assert (=> b!5487879 m!6501910))

(declare-fun m!6501912 () Bool)

(assert (=> b!5487879 m!6501912))

(declare-fun m!6501914 () Bool)

(assert (=> b!5487892 m!6501914))

(declare-fun m!6501916 () Bool)

(assert (=> b!5487897 m!6501916))

(declare-fun m!6501918 () Bool)

(assert (=> b!5487887 m!6501918))

(assert (=> b!5487887 m!6501918))

(declare-fun m!6501920 () Bool)

(assert (=> b!5487887 m!6501920))

(declare-fun m!6501922 () Bool)

(assert (=> b!5487882 m!6501922))

(declare-fun m!6501924 () Bool)

(assert (=> b!5487882 m!6501924))

(declare-fun m!6501926 () Bool)

(assert (=> b!5487882 m!6501926))

(declare-fun m!6501928 () Bool)

(assert (=> b!5487882 m!6501928))

(declare-fun m!6501930 () Bool)

(assert (=> b!5487882 m!6501930))

(declare-fun m!6501932 () Bool)

(assert (=> b!5487880 m!6501932))

(declare-fun m!6501934 () Bool)

(assert (=> b!5487883 m!6501934))

(assert (=> b!5487883 m!6501934))

(declare-fun m!6501936 () Bool)

(assert (=> b!5487883 m!6501936))

(declare-fun m!6501938 () Bool)

(assert (=> b!5487876 m!6501938))

(declare-fun m!6501940 () Bool)

(assert (=> b!5487896 m!6501940))

(declare-fun m!6501942 () Bool)

(assert (=> b!5487896 m!6501942))

(declare-fun m!6501944 () Bool)

(assert (=> b!5487878 m!6501944))

(assert (=> b!5487884 m!6501908))

(declare-fun m!6501946 () Bool)

(assert (=> setNonEmpty!36225 m!6501946))

(declare-fun m!6501948 () Bool)

(assert (=> start!573762 m!6501948))

(declare-fun m!6501950 () Bool)

(assert (=> b!5487889 m!6501950))

(declare-fun m!6501952 () Bool)

(assert (=> b!5487889 m!6501952))

(declare-fun m!6501954 () Bool)

(assert (=> b!5487889 m!6501954))

(assert (=> b!5487881 m!6501944))

(check-sat (not b!5487889) (not b!5487885) (not start!573762) (not b!5487883) (not b!5487892) (not b!5487893) (not b!5487876) (not b!5487897) (not b!5487888) (not b!5487891) (not b!5487884) (not b!5487886) (not b!5487890) (not b!5487896) (not b!5487877) (not b!5487882) (not b!5487880) (not b!5487878) tp_is_empty!40091 (not setNonEmpty!36225) (not b!5487887) (not b!5487881) (not b!5487898) (not b!5487879))
(check-sat)
