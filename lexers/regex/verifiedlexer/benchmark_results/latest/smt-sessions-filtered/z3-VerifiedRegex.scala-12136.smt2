; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682758 () Bool)

(assert start!682758)

(declare-fun b!7049445 () Bool)

(assert (=> b!7049445 true))

(declare-fun b!7049448 () Bool)

(assert (=> b!7049448 true))

(declare-fun b!7049455 () Bool)

(assert (=> b!7049455 true))

(declare-fun b!7049444 () Bool)

(declare-fun e!4237846 () Bool)

(declare-fun tp!1938509 () Bool)

(assert (=> b!7049444 (= e!4237846 tp!1938509)))

(declare-fun e!4237849 () Bool)

(declare-fun e!4237847 () Bool)

(assert (=> b!7049445 (= e!4237849 (not e!4237847))))

(declare-fun res!2877810 () Bool)

(assert (=> b!7049445 (=> res!2877810 e!4237847)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35308 0))(
  ( (C!35309 (val!27356 Int)) )
))
(declare-datatypes ((Regex!17519 0))(
  ( (ElementMatch!17519 (c!1312999 C!35308)) (Concat!26364 (regOne!35550 Regex!17519) (regTwo!35550 Regex!17519)) (EmptyExpr!17519) (Star!17519 (reg!17848 Regex!17519)) (EmptyLang!17519) (Union!17519 (regOne!35551 Regex!17519) (regTwo!35551 Regex!17519)) )
))
(declare-datatypes ((List!68085 0))(
  ( (Nil!67961) (Cons!67961 (h!74409 Regex!17519) (t!381864 List!68085)) )
))
(declare-datatypes ((Context!13030 0))(
  ( (Context!13031 (exprs!7015 List!68085)) )
))
(declare-fun lt!2528598 () (InoxSet Context!13030))

(declare-datatypes ((List!68086 0))(
  ( (Nil!67962) (Cons!67962 (h!74410 C!35308) (t!381865 List!68086)) )
))
(declare-fun s!7408 () List!68086)

(declare-fun matchZipper!3059 ((InoxSet Context!13030) List!68086) Bool)

(assert (=> b!7049445 (= res!2877810 (not (matchZipper!3059 lt!2528598 s!7408)))))

(declare-fun lt!2528615 () Context!13030)

(assert (=> b!7049445 (= lt!2528598 (store ((as const (Array Context!13030 Bool)) false) lt!2528615 true))))

(declare-fun lt!2528607 () (InoxSet Context!13030))

(declare-fun lambda!418449 () Int)

(declare-fun getWitness!1562 ((InoxSet Context!13030) Int) Context!13030)

(assert (=> b!7049445 (= lt!2528615 (getWitness!1562 lt!2528607 lambda!418449))))

(declare-datatypes ((List!68087 0))(
  ( (Nil!67963) (Cons!67963 (h!74411 Context!13030) (t!381866 List!68087)) )
))
(declare-fun lt!2528616 () List!68087)

(declare-fun exists!3483 (List!68087 Int) Bool)

(assert (=> b!7049445 (exists!3483 lt!2528616 lambda!418449)))

(declare-datatypes ((Unit!161726 0))(
  ( (Unit!161727) )
))
(declare-fun lt!2528612 () Unit!161726)

(declare-fun lemmaZipperMatchesExistsMatchingContext!458 (List!68087 List!68086) Unit!161726)

(assert (=> b!7049445 (= lt!2528612 (lemmaZipperMatchesExistsMatchingContext!458 lt!2528616 s!7408))))

(declare-fun toList!10862 ((InoxSet Context!13030)) List!68087)

(assert (=> b!7049445 (= lt!2528616 (toList!10862 lt!2528607))))

(declare-fun b!7049446 () Bool)

(declare-fun res!2877808 () Bool)

(declare-fun e!4237843 () Bool)

(assert (=> b!7049446 (=> res!2877808 e!4237843)))

(declare-datatypes ((tuple2!68168 0))(
  ( (tuple2!68169 (_1!37387 List!68086) (_2!37387 List!68086)) )
))
(declare-fun lt!2528626 () tuple2!68168)

(declare-fun ++!15609 (List!68086 List!68086) List!68086)

(assert (=> b!7049446 (= res!2877808 (not (= (++!15609 (_1!37387 lt!2528626) (_2!37387 lt!2528626)) (t!381865 s!7408))))))

(declare-fun b!7049447 () Bool)

(declare-fun res!2877814 () Bool)

(assert (=> b!7049447 (=> (not res!2877814) (not e!4237849))))

(get-info :version)

(assert (=> b!7049447 (= res!2877814 ((_ is Cons!67962) s!7408))))

(declare-fun e!4237852 () Bool)

(assert (=> b!7049448 (= e!4237847 e!4237852)))

(declare-fun res!2877805 () Bool)

(assert (=> b!7049448 (=> res!2877805 e!4237852)))

(declare-fun lt!2528610 () Context!13030)

(declare-fun lt!2528609 () Context!13030)

(declare-fun z1!570 () (InoxSet Context!13030))

(assert (=> b!7049448 (= res!2877805 (or (not (= lt!2528609 lt!2528615)) (not (select z1!570 lt!2528610))))))

(declare-fun ct2!306 () Context!13030)

(declare-fun ++!15610 (List!68085 List!68085) List!68085)

(assert (=> b!7049448 (= lt!2528609 (Context!13031 (++!15610 (exprs!7015 lt!2528610) (exprs!7015 ct2!306))))))

(declare-fun lambda!418451 () Int)

(declare-fun lt!2528608 () Unit!161726)

(declare-fun lemmaConcatPreservesForall!840 (List!68085 List!68085 Int) Unit!161726)

(assert (=> b!7049448 (= lt!2528608 (lemmaConcatPreservesForall!840 (exprs!7015 lt!2528610) (exprs!7015 ct2!306) lambda!418451))))

(declare-fun lambda!418450 () Int)

(declare-fun mapPost2!360 ((InoxSet Context!13030) Int Context!13030) Context!13030)

(assert (=> b!7049448 (= lt!2528610 (mapPost2!360 z1!570 lambda!418450 lt!2528615))))

(declare-fun b!7049449 () Bool)

(declare-fun e!4237845 () Bool)

(assert (=> b!7049449 (= e!4237852 e!4237845)))

(declare-fun res!2877813 () Bool)

(assert (=> b!7049449 (=> res!2877813 e!4237845)))

(declare-fun lt!2528599 () (InoxSet Context!13030))

(assert (=> b!7049449 (= res!2877813 (not (= lt!2528599 lt!2528598)))))

(assert (=> b!7049449 (= lt!2528599 (store ((as const (Array Context!13030 Bool)) false) lt!2528609 true))))

(declare-fun lt!2528606 () Unit!161726)

(assert (=> b!7049449 (= lt!2528606 (lemmaConcatPreservesForall!840 (exprs!7015 lt!2528610) (exprs!7015 ct2!306) lambda!418451))))

(declare-fun setElem!49542 () Context!13030)

(declare-fun e!4237842 () Bool)

(declare-fun setRes!49542 () Bool)

(declare-fun setNonEmpty!49542 () Bool)

(declare-fun tp!1938507 () Bool)

(declare-fun inv!86656 (Context!13030) Bool)

(assert (=> setNonEmpty!49542 (= setRes!49542 (and tp!1938507 (inv!86656 setElem!49542) e!4237842))))

(declare-fun setRest!49542 () (InoxSet Context!13030))

(assert (=> setNonEmpty!49542 (= z1!570 ((_ map or) (store ((as const (Array Context!13030 Bool)) false) setElem!49542 true) setRest!49542))))

(declare-fun b!7049450 () Bool)

(declare-fun res!2877804 () Bool)

(assert (=> b!7049450 (=> res!2877804 e!4237843)))

(declare-fun lt!2528617 () (InoxSet Context!13030))

(assert (=> b!7049450 (= res!2877804 (not (matchZipper!3059 lt!2528617 (_2!37387 lt!2528626))))))

(declare-fun b!7049451 () Bool)

(declare-fun res!2877806 () Bool)

(declare-fun e!4237850 () Bool)

(assert (=> b!7049451 (=> res!2877806 e!4237850)))

(declare-fun isEmpty!39674 (List!68085) Bool)

(assert (=> b!7049451 (= res!2877806 (isEmpty!39674 (exprs!7015 lt!2528610)))))

(declare-fun b!7049452 () Bool)

(declare-fun e!4237851 () Bool)

(assert (=> b!7049452 (= e!4237850 e!4237851)))

(declare-fun res!2877801 () Bool)

(assert (=> b!7049452 (=> res!2877801 e!4237851)))

(declare-fun nullable!7230 (Regex!17519) Bool)

(assert (=> b!7049452 (= res!2877801 (nullable!7230 (h!74409 (exprs!7015 lt!2528610))))))

(declare-fun lt!2528602 () Context!13030)

(declare-fun lt!2528625 () List!68085)

(assert (=> b!7049452 (= lt!2528602 (Context!13031 lt!2528625))))

(declare-fun tail!13648 (List!68085) List!68085)

(assert (=> b!7049452 (= lt!2528625 (tail!13648 (exprs!7015 lt!2528610)))))

(declare-fun b!7049453 () Bool)

(declare-fun e!4237844 () Bool)

(assert (=> b!7049453 (= e!4237851 e!4237844)))

(declare-fun res!2877812 () Bool)

(assert (=> b!7049453 (=> res!2877812 e!4237844)))

(declare-fun lt!2528622 () (InoxSet Context!13030))

(assert (=> b!7049453 (= res!2877812 (not (matchZipper!3059 lt!2528622 (t!381865 s!7408))))))

(declare-fun derivationStepZipperDown!2183 (Regex!17519 Context!13030 C!35308) (InoxSet Context!13030))

(assert (=> b!7049453 (= lt!2528622 (derivationStepZipperDown!2183 (h!74409 (exprs!7015 lt!2528610)) (Context!13031 (++!15610 lt!2528625 (exprs!7015 ct2!306))) (h!74410 s!7408)))))

(declare-fun lt!2528605 () Unit!161726)

(assert (=> b!7049453 (= lt!2528605 (lemmaConcatPreservesForall!840 lt!2528625 (exprs!7015 ct2!306) lambda!418451))))

(declare-fun b!7049454 () Bool)

(declare-fun e!4237841 () Bool)

(assert (=> b!7049454 (= e!4237841 true)))

(declare-fun lt!2528614 () Bool)

(declare-fun lt!2528621 () (InoxSet Context!13030))

(assert (=> b!7049454 (= lt!2528614 (matchZipper!3059 lt!2528621 (Cons!67962 (h!74410 s!7408) (_1!37387 lt!2528626))))))

(assert (=> b!7049455 (= e!4237845 e!4237850)))

(declare-fun res!2877809 () Bool)

(assert (=> b!7049455 (=> res!2877809 e!4237850)))

(declare-fun lt!2528620 () (InoxSet Context!13030))

(declare-fun derivationStepZipper!2975 ((InoxSet Context!13030) C!35308) (InoxSet Context!13030))

(assert (=> b!7049455 (= res!2877809 (not (= (derivationStepZipper!2975 lt!2528599 (h!74410 s!7408)) lt!2528620)))))

(declare-fun lambda!418452 () Int)

(declare-fun flatMap!2466 ((InoxSet Context!13030) Int) (InoxSet Context!13030))

(declare-fun derivationStepZipperUp!2129 (Context!13030 C!35308) (InoxSet Context!13030))

(assert (=> b!7049455 (= (flatMap!2466 lt!2528599 lambda!418452) (derivationStepZipperUp!2129 lt!2528609 (h!74410 s!7408)))))

(declare-fun lt!2528601 () Unit!161726)

(declare-fun lemmaFlatMapOnSingletonSet!1980 ((InoxSet Context!13030) Context!13030 Int) Unit!161726)

(assert (=> b!7049455 (= lt!2528601 (lemmaFlatMapOnSingletonSet!1980 lt!2528599 lt!2528609 lambda!418452))))

(assert (=> b!7049455 (= lt!2528620 (derivationStepZipperUp!2129 lt!2528609 (h!74410 s!7408)))))

(declare-fun lt!2528619 () Unit!161726)

(assert (=> b!7049455 (= lt!2528619 (lemmaConcatPreservesForall!840 (exprs!7015 lt!2528610) (exprs!7015 ct2!306) lambda!418451))))

(declare-fun b!7049456 () Bool)

(assert (=> b!7049456 (= e!4237843 e!4237841)))

(declare-fun res!2877800 () Bool)

(assert (=> b!7049456 (=> res!2877800 e!4237841)))

(declare-fun lt!2528604 () (InoxSet Context!13030))

(declare-fun lt!2528600 () (InoxSet Context!13030))

(declare-fun lt!2528623 () (InoxSet Context!13030))

(assert (=> b!7049456 (= res!2877800 (or (not (= lt!2528623 lt!2528604)) (not (= lt!2528623 lt!2528600))))))

(assert (=> b!7049456 (= (flatMap!2466 lt!2528621 lambda!418452) (derivationStepZipperUp!2129 lt!2528610 (h!74410 s!7408)))))

(declare-fun lt!2528603 () Unit!161726)

(assert (=> b!7049456 (= lt!2528603 (lemmaFlatMapOnSingletonSet!1980 lt!2528621 lt!2528610 lambda!418452))))

(assert (=> b!7049456 (= lt!2528604 (derivationStepZipperUp!2129 lt!2528610 (h!74410 s!7408)))))

(assert (=> b!7049456 (= lt!2528623 (derivationStepZipper!2975 lt!2528621 (h!74410 s!7408)))))

(assert (=> b!7049456 (= lt!2528621 (store ((as const (Array Context!13030 Bool)) false) lt!2528610 true))))

(declare-fun b!7049457 () Bool)

(declare-fun e!4237848 () Bool)

(declare-fun tp_is_empty!44263 () Bool)

(declare-fun tp!1938508 () Bool)

(assert (=> b!7049457 (= e!4237848 (and tp_is_empty!44263 tp!1938508))))

(declare-fun b!7049458 () Bool)

(assert (=> b!7049458 (= e!4237844 e!4237843)))

(declare-fun res!2877802 () Bool)

(assert (=> b!7049458 (=> res!2877802 e!4237843)))

(assert (=> b!7049458 (= res!2877802 (not (matchZipper!3059 lt!2528600 (_1!37387 lt!2528626))))))

(declare-datatypes ((Option!16916 0))(
  ( (None!16915) (Some!16915 (v!53205 tuple2!68168)) )
))
(declare-fun lt!2528624 () Option!16916)

(declare-fun get!23826 (Option!16916) tuple2!68168)

(assert (=> b!7049458 (= lt!2528626 (get!23826 lt!2528624))))

(declare-fun isDefined!13617 (Option!16916) Bool)

(assert (=> b!7049458 (isDefined!13617 lt!2528624)))

(declare-fun findConcatSeparationZippers!432 ((InoxSet Context!13030) (InoxSet Context!13030) List!68086 List!68086 List!68086) Option!16916)

(assert (=> b!7049458 (= lt!2528624 (findConcatSeparationZippers!432 lt!2528600 lt!2528617 Nil!67962 (t!381865 s!7408) (t!381865 s!7408)))))

(assert (=> b!7049458 (= lt!2528617 (store ((as const (Array Context!13030 Bool)) false) ct2!306 true))))

(declare-fun lt!2528613 () Unit!161726)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!420 ((InoxSet Context!13030) Context!13030 List!68086) Unit!161726)

(assert (=> b!7049458 (= lt!2528613 (lemmaConcatZipperMatchesStringThenFindConcatDefined!420 lt!2528600 ct2!306 (t!381865 s!7408)))))

(declare-fun appendTo!640 ((InoxSet Context!13030) Context!13030) (InoxSet Context!13030))

(assert (=> b!7049458 (= lt!2528622 (appendTo!640 lt!2528600 ct2!306))))

(assert (=> b!7049458 (= lt!2528600 (derivationStepZipperDown!2183 (h!74409 (exprs!7015 lt!2528610)) lt!2528602 (h!74410 s!7408)))))

(declare-fun lt!2528611 () Unit!161726)

(assert (=> b!7049458 (= lt!2528611 (lemmaConcatPreservesForall!840 lt!2528625 (exprs!7015 ct2!306) lambda!418451))))

(declare-fun lt!2528618 () Unit!161726)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!96 (Context!13030 Regex!17519 C!35308 Context!13030) Unit!161726)

(assert (=> b!7049458 (= lt!2528618 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!96 lt!2528602 (h!74409 (exprs!7015 lt!2528610)) (h!74410 s!7408) ct2!306))))

(declare-fun b!7049459 () Bool)

(declare-fun res!2877803 () Bool)

(assert (=> b!7049459 (=> res!2877803 e!4237847)))

(assert (=> b!7049459 (= res!2877803 (not (select lt!2528607 lt!2528615)))))

(declare-fun b!7049460 () Bool)

(declare-fun tp!1938506 () Bool)

(assert (=> b!7049460 (= e!4237842 tp!1938506)))

(declare-fun b!7049461 () Bool)

(declare-fun res!2877811 () Bool)

(assert (=> b!7049461 (=> res!2877811 e!4237850)))

(assert (=> b!7049461 (= res!2877811 (not ((_ is Cons!67961) (exprs!7015 lt!2528610))))))

(declare-fun setIsEmpty!49542 () Bool)

(assert (=> setIsEmpty!49542 setRes!49542))

(declare-fun res!2877807 () Bool)

(assert (=> start!682758 (=> (not res!2877807) (not e!4237849))))

(assert (=> start!682758 (= res!2877807 (matchZipper!3059 lt!2528607 s!7408))))

(assert (=> start!682758 (= lt!2528607 (appendTo!640 z1!570 ct2!306))))

(assert (=> start!682758 e!4237849))

(declare-fun condSetEmpty!49542 () Bool)

(assert (=> start!682758 (= condSetEmpty!49542 (= z1!570 ((as const (Array Context!13030 Bool)) false)))))

(assert (=> start!682758 setRes!49542))

(assert (=> start!682758 (and (inv!86656 ct2!306) e!4237846)))

(assert (=> start!682758 e!4237848))

(assert (= (and start!682758 res!2877807) b!7049447))

(assert (= (and b!7049447 res!2877814) b!7049445))

(assert (= (and b!7049445 (not res!2877810)) b!7049459))

(assert (= (and b!7049459 (not res!2877803)) b!7049448))

(assert (= (and b!7049448 (not res!2877805)) b!7049449))

(assert (= (and b!7049449 (not res!2877813)) b!7049455))

(assert (= (and b!7049455 (not res!2877809)) b!7049461))

(assert (= (and b!7049461 (not res!2877811)) b!7049451))

(assert (= (and b!7049451 (not res!2877806)) b!7049452))

(assert (= (and b!7049452 (not res!2877801)) b!7049453))

(assert (= (and b!7049453 (not res!2877812)) b!7049458))

(assert (= (and b!7049458 (not res!2877802)) b!7049450))

(assert (= (and b!7049450 (not res!2877804)) b!7049446))

(assert (= (and b!7049446 (not res!2877808)) b!7049456))

(assert (= (and b!7049456 (not res!2877800)) b!7049454))

(assert (= (and start!682758 condSetEmpty!49542) setIsEmpty!49542))

(assert (= (and start!682758 (not condSetEmpty!49542)) setNonEmpty!49542))

(assert (= setNonEmpty!49542 b!7049460))

(assert (= start!682758 b!7049444))

(assert (= (and start!682758 ((_ is Cons!67962) s!7408)) b!7049457))

(declare-fun m!7764894 () Bool)

(assert (=> b!7049450 m!7764894))

(declare-fun m!7764896 () Bool)

(assert (=> b!7049456 m!7764896))

(declare-fun m!7764898 () Bool)

(assert (=> b!7049456 m!7764898))

(declare-fun m!7764900 () Bool)

(assert (=> b!7049456 m!7764900))

(declare-fun m!7764902 () Bool)

(assert (=> b!7049456 m!7764902))

(declare-fun m!7764904 () Bool)

(assert (=> b!7049456 m!7764904))

(declare-fun m!7764906 () Bool)

(assert (=> b!7049458 m!7764906))

(declare-fun m!7764908 () Bool)

(assert (=> b!7049458 m!7764908))

(declare-fun m!7764910 () Bool)

(assert (=> b!7049458 m!7764910))

(declare-fun m!7764912 () Bool)

(assert (=> b!7049458 m!7764912))

(declare-fun m!7764914 () Bool)

(assert (=> b!7049458 m!7764914))

(declare-fun m!7764916 () Bool)

(assert (=> b!7049458 m!7764916))

(declare-fun m!7764918 () Bool)

(assert (=> b!7049458 m!7764918))

(declare-fun m!7764920 () Bool)

(assert (=> b!7049458 m!7764920))

(declare-fun m!7764922 () Bool)

(assert (=> b!7049458 m!7764922))

(declare-fun m!7764924 () Bool)

(assert (=> b!7049458 m!7764924))

(declare-fun m!7764926 () Bool)

(assert (=> b!7049453 m!7764926))

(declare-fun m!7764928 () Bool)

(assert (=> b!7049453 m!7764928))

(declare-fun m!7764930 () Bool)

(assert (=> b!7049453 m!7764930))

(assert (=> b!7049453 m!7764906))

(declare-fun m!7764932 () Bool)

(assert (=> b!7049459 m!7764932))

(declare-fun m!7764934 () Bool)

(assert (=> b!7049454 m!7764934))

(declare-fun m!7764936 () Bool)

(assert (=> b!7049451 m!7764936))

(declare-fun m!7764938 () Bool)

(assert (=> b!7049448 m!7764938))

(declare-fun m!7764940 () Bool)

(assert (=> b!7049448 m!7764940))

(declare-fun m!7764942 () Bool)

(assert (=> b!7049448 m!7764942))

(declare-fun m!7764944 () Bool)

(assert (=> b!7049448 m!7764944))

(declare-fun m!7764946 () Bool)

(assert (=> b!7049449 m!7764946))

(assert (=> b!7049449 m!7764942))

(declare-fun m!7764948 () Bool)

(assert (=> b!7049446 m!7764948))

(declare-fun m!7764950 () Bool)

(assert (=> b!7049452 m!7764950))

(declare-fun m!7764952 () Bool)

(assert (=> b!7049452 m!7764952))

(declare-fun m!7764954 () Bool)

(assert (=> b!7049455 m!7764954))

(declare-fun m!7764956 () Bool)

(assert (=> b!7049455 m!7764956))

(assert (=> b!7049455 m!7764942))

(declare-fun m!7764958 () Bool)

(assert (=> b!7049455 m!7764958))

(declare-fun m!7764960 () Bool)

(assert (=> b!7049455 m!7764960))

(declare-fun m!7764962 () Bool)

(assert (=> start!682758 m!7764962))

(declare-fun m!7764964 () Bool)

(assert (=> start!682758 m!7764964))

(declare-fun m!7764966 () Bool)

(assert (=> start!682758 m!7764966))

(declare-fun m!7764968 () Bool)

(assert (=> b!7049445 m!7764968))

(declare-fun m!7764970 () Bool)

(assert (=> b!7049445 m!7764970))

(declare-fun m!7764972 () Bool)

(assert (=> b!7049445 m!7764972))

(declare-fun m!7764974 () Bool)

(assert (=> b!7049445 m!7764974))

(declare-fun m!7764976 () Bool)

(assert (=> b!7049445 m!7764976))

(declare-fun m!7764978 () Bool)

(assert (=> b!7049445 m!7764978))

(declare-fun m!7764980 () Bool)

(assert (=> setNonEmpty!49542 m!7764980))

(check-sat (not b!7049452) (not b!7049449) (not b!7049453) (not setNonEmpty!49542) (not b!7049460) (not b!7049454) (not b!7049451) (not b!7049456) (not b!7049448) (not b!7049450) (not start!682758) (not b!7049445) (not b!7049455) (not b!7049446) (not b!7049444) tp_is_empty!44263 (not b!7049458) (not b!7049457))
(check-sat)
