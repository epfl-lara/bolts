; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684174 () Bool)

(assert start!684174)

(declare-fun b!7055013 () Bool)

(assert (=> b!7055013 true))

(declare-fun b!7055003 () Bool)

(assert (=> b!7055003 true))

(declare-fun b!7055011 () Bool)

(assert (=> b!7055011 true))

(declare-fun b!7055002 () Bool)

(declare-fun e!4241332 () Bool)

(declare-fun tp_is_empty!44365 () Bool)

(declare-fun tp!1940121 () Bool)

(assert (=> b!7055002 (= e!4241332 (and tp_is_empty!44365 tp!1940121))))

(declare-fun e!4241331 () Bool)

(declare-fun e!4241324 () Bool)

(assert (=> b!7055003 (= e!4241331 e!4241324)))

(declare-fun res!2880194 () Bool)

(assert (=> b!7055003 (=> res!2880194 e!4241324)))

(declare-datatypes ((C!35410 0))(
  ( (C!35411 (val!27407 Int)) )
))
(declare-datatypes ((Regex!17570 0))(
  ( (ElementMatch!17570 (c!1314316 C!35410)) (Concat!26415 (regOne!35652 Regex!17570) (regTwo!35652 Regex!17570)) (EmptyExpr!17570) (Star!17570 (reg!17899 Regex!17570)) (EmptyLang!17570) (Union!17570 (regOne!35653 Regex!17570) (regTwo!35653 Regex!17570)) )
))
(declare-datatypes ((List!68236 0))(
  ( (Nil!68112) (Cons!68112 (h!74560 Regex!17570) (t!382015 List!68236)) )
))
(declare-datatypes ((Context!13132 0))(
  ( (Context!13133 (exprs!7066 List!68236)) )
))
(declare-fun lt!2531700 () Context!13132)

(declare-fun lt!2531713 () Context!13132)

(declare-fun lt!2531708 () Context!13132)

(declare-fun z1!570 () (Set Context!13132))

(assert (=> b!7055003 (= res!2880194 (or (not (= lt!2531708 lt!2531700)) (not (set.member lt!2531713 z1!570))))))

(declare-fun ct2!306 () Context!13132)

(declare-fun ++!15653 (List!68236 List!68236) List!68236)

(assert (=> b!7055003 (= lt!2531708 (Context!13133 (++!15653 (exprs!7066 lt!2531713) (exprs!7066 ct2!306))))))

(declare-fun lambda!420162 () Int)

(declare-datatypes ((Unit!161813 0))(
  ( (Unit!161814) )
))
(declare-fun lt!2531722 () Unit!161813)

(declare-fun lemmaConcatPreservesForall!881 (List!68236 List!68236 Int) Unit!161813)

(assert (=> b!7055003 (= lt!2531722 (lemmaConcatPreservesForall!881 (exprs!7066 lt!2531713) (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lambda!420161 () Int)

(declare-fun mapPost2!399 ((Set Context!13132) Int Context!13132) Context!13132)

(assert (=> b!7055003 (= lt!2531713 (mapPost2!399 z1!570 lambda!420161 lt!2531700))))

(declare-fun b!7055004 () Bool)

(declare-fun res!2880190 () Bool)

(assert (=> b!7055004 (=> res!2880190 e!4241331)))

(declare-fun lt!2531717 () (Set Context!13132))

(assert (=> b!7055004 (= res!2880190 (not (set.member lt!2531700 lt!2531717)))))

(declare-fun b!7055005 () Bool)

(declare-fun res!2880185 () Bool)

(declare-fun e!4241328 () Bool)

(assert (=> b!7055005 (=> (not res!2880185) (not e!4241328))))

(declare-datatypes ((List!68237 0))(
  ( (Nil!68113) (Cons!68113 (h!74561 C!35410) (t!382016 List!68237)) )
))
(declare-fun s!7408 () List!68237)

(assert (=> b!7055005 (= res!2880185 (is-Cons!68113 s!7408))))

(declare-fun b!7055006 () Bool)

(declare-fun res!2880184 () Bool)

(declare-fun e!4241325 () Bool)

(assert (=> b!7055006 (=> res!2880184 e!4241325)))

(declare-fun isEmpty!39727 (List!68236) Bool)

(assert (=> b!7055006 (= res!2880184 (isEmpty!39727 (exprs!7066 lt!2531713)))))

(declare-fun b!7055008 () Bool)

(declare-fun res!2880183 () Bool)

(assert (=> b!7055008 (=> res!2880183 e!4241325)))

(assert (=> b!7055008 (= res!2880183 (not (is-Cons!68112 (exprs!7066 lt!2531713))))))

(declare-fun b!7055009 () Bool)

(declare-fun e!4241320 () Bool)

(declare-fun tp!1940122 () Bool)

(assert (=> b!7055009 (= e!4241320 tp!1940122)))

(declare-fun b!7055010 () Bool)

(declare-fun e!4241330 () Bool)

(declare-fun e!4241326 () Bool)

(assert (=> b!7055010 (= e!4241330 e!4241326)))

(declare-fun res!2880193 () Bool)

(assert (=> b!7055010 (=> res!2880193 e!4241326)))

(declare-fun lt!2531696 () (Set Context!13132))

(declare-fun lt!2531706 () (Set Context!13132))

(assert (=> b!7055010 (= res!2880193 (not (= lt!2531696 lt!2531706)))))

(declare-fun lt!2531698 () (Set Context!13132))

(declare-fun lt!2531726 () (Set Context!13132))

(assert (=> b!7055010 (= lt!2531706 (set.union lt!2531698 lt!2531726))))

(declare-fun lt!2531705 () Context!13132)

(declare-fun derivationStepZipperUp!2154 (Context!13132 C!35410) (Set Context!13132))

(assert (=> b!7055010 (= lt!2531726 (derivationStepZipperUp!2154 lt!2531705 (h!74561 s!7408)))))

(declare-fun derivationStepZipperDown!2204 (Regex!17570 Context!13132 C!35410) (Set Context!13132))

(assert (=> b!7055010 (= lt!2531698 (derivationStepZipperDown!2204 (h!74560 (exprs!7066 lt!2531713)) lt!2531705 (h!74561 s!7408)))))

(declare-fun lt!2531727 () List!68236)

(assert (=> b!7055010 (= lt!2531705 (Context!13133 (++!15653 lt!2531727 (exprs!7066 ct2!306))))))

(declare-fun lt!2531702 () Unit!161813)

(assert (=> b!7055010 (= lt!2531702 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lt!2531715 () Unit!161813)

(assert (=> b!7055010 (= lt!2531715 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun e!4241321 () Bool)

(assert (=> b!7055011 (= e!4241321 e!4241325)))

(declare-fun res!2880181 () Bool)

(assert (=> b!7055011 (=> res!2880181 e!4241325)))

(declare-fun lt!2531697 () (Set Context!13132))

(declare-fun derivationStepZipper!3020 ((Set Context!13132) C!35410) (Set Context!13132))

(assert (=> b!7055011 (= res!2880181 (not (= (derivationStepZipper!3020 lt!2531697 (h!74561 s!7408)) lt!2531696)))))

(declare-fun lambda!420163 () Int)

(declare-fun flatMap!2496 ((Set Context!13132) Int) (Set Context!13132))

(assert (=> b!7055011 (= (flatMap!2496 lt!2531697 lambda!420163) (derivationStepZipperUp!2154 lt!2531708 (h!74561 s!7408)))))

(declare-fun lt!2531718 () Unit!161813)

(declare-fun lemmaFlatMapOnSingletonSet!2005 ((Set Context!13132) Context!13132 Int) Unit!161813)

(assert (=> b!7055011 (= lt!2531718 (lemmaFlatMapOnSingletonSet!2005 lt!2531697 lt!2531708 lambda!420163))))

(assert (=> b!7055011 (= lt!2531696 (derivationStepZipperUp!2154 lt!2531708 (h!74561 s!7408)))))

(declare-fun lt!2531714 () Unit!161813)

(assert (=> b!7055011 (= lt!2531714 (lemmaConcatPreservesForall!881 (exprs!7066 lt!2531713) (exprs!7066 ct2!306) lambda!420162))))

(declare-fun b!7055012 () Bool)

(declare-fun e!4241323 () Bool)

(assert (=> b!7055012 (= e!4241326 e!4241323)))

(declare-fun res!2880180 () Bool)

(assert (=> b!7055012 (=> res!2880180 e!4241323)))

(declare-fun e!4241322 () Bool)

(assert (=> b!7055012 (= res!2880180 e!4241322)))

(declare-fun res!2880189 () Bool)

(assert (=> b!7055012 (=> (not res!2880189) (not e!4241322))))

(declare-fun lt!2531701 () Bool)

(declare-fun lt!2531719 () Bool)

(assert (=> b!7055012 (= res!2880189 (not (= lt!2531701 lt!2531719)))))

(declare-fun matchZipper!3110 ((Set Context!13132) List!68237) Bool)

(assert (=> b!7055012 (= lt!2531701 (matchZipper!3110 lt!2531696 (t!382016 s!7408)))))

(declare-fun lt!2531720 () Unit!161813)

(assert (=> b!7055012 (= lt!2531720 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun e!4241327 () Bool)

(assert (=> b!7055012 (= (matchZipper!3110 lt!2531706 (t!382016 s!7408)) e!4241327)))

(declare-fun res!2880192 () Bool)

(assert (=> b!7055012 (=> res!2880192 e!4241327)))

(assert (=> b!7055012 (= res!2880192 lt!2531719)))

(assert (=> b!7055012 (= lt!2531719 (matchZipper!3110 lt!2531698 (t!382016 s!7408)))))

(declare-fun lt!2531703 () Unit!161813)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1583 ((Set Context!13132) (Set Context!13132) List!68237) Unit!161813)

(assert (=> b!7055012 (= lt!2531703 (lemmaZipperConcatMatchesSameAsBothZippers!1583 lt!2531698 lt!2531726 (t!382016 s!7408)))))

(declare-fun lt!2531712 () Unit!161813)

(assert (=> b!7055012 (= lt!2531712 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lt!2531699 () Unit!161813)

(assert (=> b!7055012 (= lt!2531699 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun setElem!49840 () Context!13132)

(declare-fun setNonEmpty!49840 () Bool)

(declare-fun e!4241329 () Bool)

(declare-fun setRes!49840 () Bool)

(declare-fun tp!1940124 () Bool)

(declare-fun inv!86785 (Context!13132) Bool)

(assert (=> setNonEmpty!49840 (= setRes!49840 (and tp!1940124 (inv!86785 setElem!49840) e!4241329))))

(declare-fun setRest!49840 () (Set Context!13132))

(assert (=> setNonEmpty!49840 (= z1!570 (set.union (set.insert setElem!49840 (as set.empty (Set Context!13132))) setRest!49840))))

(assert (=> b!7055013 (= e!4241328 (not e!4241331))))

(declare-fun res!2880186 () Bool)

(assert (=> b!7055013 (=> res!2880186 e!4241331)))

(declare-fun lt!2531728 () (Set Context!13132))

(assert (=> b!7055013 (= res!2880186 (not (matchZipper!3110 lt!2531728 s!7408)))))

(assert (=> b!7055013 (= lt!2531728 (set.insert lt!2531700 (as set.empty (Set Context!13132))))))

(declare-fun lambda!420160 () Int)

(declare-fun getWitness!1633 ((Set Context!13132) Int) Context!13132)

(assert (=> b!7055013 (= lt!2531700 (getWitness!1633 lt!2531717 lambda!420160))))

(declare-datatypes ((List!68238 0))(
  ( (Nil!68114) (Cons!68114 (h!74562 Context!13132) (t!382017 List!68238)) )
))
(declare-fun lt!2531725 () List!68238)

(declare-fun exists!3559 (List!68238 Int) Bool)

(assert (=> b!7055013 (exists!3559 lt!2531725 lambda!420160)))

(declare-fun lt!2531729 () Unit!161813)

(declare-fun lemmaZipperMatchesExistsMatchingContext!491 (List!68238 List!68237) Unit!161813)

(assert (=> b!7055013 (= lt!2531729 (lemmaZipperMatchesExistsMatchingContext!491 lt!2531725 s!7408))))

(declare-fun toList!10911 ((Set Context!13132)) List!68238)

(assert (=> b!7055013 (= lt!2531725 (toList!10911 lt!2531717))))

(declare-fun b!7055014 () Bool)

(declare-fun e!4241333 () Bool)

(assert (=> b!7055014 (= e!4241333 (inv!86785 lt!2531705))))

(declare-fun lt!2531721 () Unit!161813)

(assert (=> b!7055014 (= lt!2531721 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lt!2531707 () Unit!161813)

(assert (=> b!7055014 (= lt!2531707 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lt!2531723 () (Set Context!13132))

(assert (=> b!7055014 (= (flatMap!2496 lt!2531723 lambda!420163) (derivationStepZipperUp!2154 lt!2531705 (h!74561 s!7408)))))

(declare-fun lt!2531709 () Unit!161813)

(assert (=> b!7055014 (= lt!2531709 (lemmaFlatMapOnSingletonSet!2005 lt!2531723 lt!2531705 lambda!420163))))

(assert (=> b!7055014 (= lt!2531723 (set.insert lt!2531705 (as set.empty (Set Context!13132))))))

(declare-fun lt!2531704 () Unit!161813)

(assert (=> b!7055014 (= lt!2531704 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun lt!2531724 () Unit!161813)

(assert (=> b!7055014 (= lt!2531724 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun b!7055015 () Bool)

(assert (=> b!7055015 (= e!4241324 e!4241321)))

(declare-fun res!2880187 () Bool)

(assert (=> b!7055015 (=> res!2880187 e!4241321)))

(assert (=> b!7055015 (= res!2880187 (not (= lt!2531697 lt!2531728)))))

(assert (=> b!7055015 (= lt!2531697 (set.insert lt!2531708 (as set.empty (Set Context!13132))))))

(declare-fun lt!2531711 () Unit!161813)

(assert (=> b!7055015 (= lt!2531711 (lemmaConcatPreservesForall!881 (exprs!7066 lt!2531713) (exprs!7066 ct2!306) lambda!420162))))

(declare-fun b!7055016 () Bool)

(declare-fun tp!1940123 () Bool)

(assert (=> b!7055016 (= e!4241329 tp!1940123)))

(declare-fun b!7055017 () Bool)

(assert (=> b!7055017 (= e!4241327 (matchZipper!3110 lt!2531726 (t!382016 s!7408)))))

(declare-fun b!7055007 () Bool)

(assert (=> b!7055007 (= e!4241322 (not (matchZipper!3110 lt!2531726 (t!382016 s!7408))))))

(declare-fun lt!2531710 () Unit!161813)

(assert (=> b!7055007 (= lt!2531710 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun res!2880191 () Bool)

(assert (=> start!684174 (=> (not res!2880191) (not e!4241328))))

(assert (=> start!684174 (= res!2880191 (matchZipper!3110 lt!2531717 s!7408))))

(declare-fun appendTo!691 ((Set Context!13132) Context!13132) (Set Context!13132))

(assert (=> start!684174 (= lt!2531717 (appendTo!691 z1!570 ct2!306))))

(assert (=> start!684174 e!4241328))

(declare-fun condSetEmpty!49840 () Bool)

(assert (=> start!684174 (= condSetEmpty!49840 (= z1!570 (as set.empty (Set Context!13132))))))

(assert (=> start!684174 setRes!49840))

(assert (=> start!684174 (and (inv!86785 ct2!306) e!4241320)))

(assert (=> start!684174 e!4241332))

(declare-fun b!7055018 () Bool)

(declare-fun res!2880182 () Bool)

(assert (=> b!7055018 (=> res!2880182 e!4241323)))

(assert (=> b!7055018 (= res!2880182 (not lt!2531701))))

(declare-fun setIsEmpty!49840 () Bool)

(assert (=> setIsEmpty!49840 setRes!49840))

(declare-fun b!7055019 () Bool)

(assert (=> b!7055019 (= e!4241323 e!4241333)))

(declare-fun res!2880188 () Bool)

(assert (=> b!7055019 (=> res!2880188 e!4241333)))

(assert (=> b!7055019 (= res!2880188 (not (matchZipper!3110 lt!2531726 (t!382016 s!7408))))))

(declare-fun lt!2531716 () Unit!161813)

(assert (=> b!7055019 (= lt!2531716 (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(declare-fun b!7055020 () Bool)

(assert (=> b!7055020 (= e!4241325 e!4241330)))

(declare-fun res!2880195 () Bool)

(assert (=> b!7055020 (=> res!2880195 e!4241330)))

(declare-fun nullable!7253 (Regex!17570) Bool)

(assert (=> b!7055020 (= res!2880195 (not (nullable!7253 (h!74560 (exprs!7066 lt!2531713)))))))

(declare-fun tail!13699 (List!68236) List!68236)

(assert (=> b!7055020 (= lt!2531727 (tail!13699 (exprs!7066 lt!2531713)))))

(assert (= (and start!684174 res!2880191) b!7055005))

(assert (= (and b!7055005 res!2880185) b!7055013))

(assert (= (and b!7055013 (not res!2880186)) b!7055004))

(assert (= (and b!7055004 (not res!2880190)) b!7055003))

(assert (= (and b!7055003 (not res!2880194)) b!7055015))

(assert (= (and b!7055015 (not res!2880187)) b!7055011))

(assert (= (and b!7055011 (not res!2880181)) b!7055008))

(assert (= (and b!7055008 (not res!2880183)) b!7055006))

(assert (= (and b!7055006 (not res!2880184)) b!7055020))

(assert (= (and b!7055020 (not res!2880195)) b!7055010))

(assert (= (and b!7055010 (not res!2880193)) b!7055012))

(assert (= (and b!7055012 (not res!2880192)) b!7055017))

(assert (= (and b!7055012 res!2880189) b!7055007))

(assert (= (and b!7055012 (not res!2880180)) b!7055018))

(assert (= (and b!7055018 (not res!2880182)) b!7055019))

(assert (= (and b!7055019 (not res!2880188)) b!7055014))

(assert (= (and start!684174 condSetEmpty!49840) setIsEmpty!49840))

(assert (= (and start!684174 (not condSetEmpty!49840)) setNonEmpty!49840))

(assert (= setNonEmpty!49840 b!7055016))

(assert (= start!684174 b!7055009))

(assert (= (and start!684174 (is-Cons!68113 s!7408)) b!7055002))

(declare-fun m!7772522 () Bool)

(assert (=> b!7055011 m!7772522))

(declare-fun m!7772524 () Bool)

(assert (=> b!7055011 m!7772524))

(declare-fun m!7772526 () Bool)

(assert (=> b!7055011 m!7772526))

(declare-fun m!7772528 () Bool)

(assert (=> b!7055011 m!7772528))

(declare-fun m!7772530 () Bool)

(assert (=> b!7055011 m!7772530))

(declare-fun m!7772532 () Bool)

(assert (=> b!7055020 m!7772532))

(declare-fun m!7772534 () Bool)

(assert (=> b!7055020 m!7772534))

(declare-fun m!7772536 () Bool)

(assert (=> b!7055017 m!7772536))

(assert (=> b!7055019 m!7772536))

(declare-fun m!7772538 () Bool)

(assert (=> b!7055019 m!7772538))

(declare-fun m!7772540 () Bool)

(assert (=> b!7055003 m!7772540))

(declare-fun m!7772542 () Bool)

(assert (=> b!7055003 m!7772542))

(assert (=> b!7055003 m!7772528))

(declare-fun m!7772544 () Bool)

(assert (=> b!7055003 m!7772544))

(assert (=> b!7055014 m!7772538))

(declare-fun m!7772546 () Bool)

(assert (=> b!7055014 m!7772546))

(declare-fun m!7772548 () Bool)

(assert (=> b!7055014 m!7772548))

(assert (=> b!7055014 m!7772538))

(assert (=> b!7055014 m!7772538))

(declare-fun m!7772550 () Bool)

(assert (=> b!7055014 m!7772550))

(declare-fun m!7772552 () Bool)

(assert (=> b!7055014 m!7772552))

(assert (=> b!7055014 m!7772538))

(declare-fun m!7772554 () Bool)

(assert (=> b!7055014 m!7772554))

(assert (=> b!7055012 m!7772538))

(declare-fun m!7772556 () Bool)

(assert (=> b!7055012 m!7772556))

(assert (=> b!7055012 m!7772538))

(assert (=> b!7055012 m!7772538))

(declare-fun m!7772558 () Bool)

(assert (=> b!7055012 m!7772558))

(declare-fun m!7772560 () Bool)

(assert (=> b!7055012 m!7772560))

(declare-fun m!7772562 () Bool)

(assert (=> b!7055012 m!7772562))

(assert (=> b!7055010 m!7772538))

(assert (=> b!7055010 m!7772554))

(declare-fun m!7772564 () Bool)

(assert (=> b!7055010 m!7772564))

(assert (=> b!7055010 m!7772538))

(declare-fun m!7772566 () Bool)

(assert (=> b!7055010 m!7772566))

(declare-fun m!7772568 () Bool)

(assert (=> b!7055013 m!7772568))

(declare-fun m!7772570 () Bool)

(assert (=> b!7055013 m!7772570))

(declare-fun m!7772572 () Bool)

(assert (=> b!7055013 m!7772572))

(declare-fun m!7772574 () Bool)

(assert (=> b!7055013 m!7772574))

(declare-fun m!7772576 () Bool)

(assert (=> b!7055013 m!7772576))

(declare-fun m!7772578 () Bool)

(assert (=> b!7055013 m!7772578))

(declare-fun m!7772580 () Bool)

(assert (=> b!7055004 m!7772580))

(declare-fun m!7772582 () Bool)

(assert (=> b!7055015 m!7772582))

(assert (=> b!7055015 m!7772528))

(declare-fun m!7772584 () Bool)

(assert (=> b!7055006 m!7772584))

(assert (=> b!7055007 m!7772536))

(assert (=> b!7055007 m!7772538))

(declare-fun m!7772586 () Bool)

(assert (=> start!684174 m!7772586))

(declare-fun m!7772588 () Bool)

(assert (=> start!684174 m!7772588))

(declare-fun m!7772590 () Bool)

(assert (=> start!684174 m!7772590))

(declare-fun m!7772592 () Bool)

(assert (=> setNonEmpty!49840 m!7772592))

(push 1)

(assert (not b!7055002))

(assert (not b!7055003))

(assert (not setNonEmpty!49840))

(assert (not b!7055010))

(assert (not b!7055011))

(assert (not b!7055012))

(assert (not b!7055007))

(assert (not b!7055016))

(assert (not b!7055020))

(assert (not b!7055009))

(assert tp_is_empty!44365)

(assert (not b!7055006))

(assert (not start!684174))

(assert (not b!7055014))

(assert (not b!7055013))

(assert (not b!7055015))

(assert (not b!7055017))

(assert (not b!7055019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7055100 () Bool)

(declare-fun res!2880250 () Bool)

(declare-fun e!4241381 () Bool)

(assert (=> b!7055100 (=> (not res!2880250) (not e!4241381))))

(declare-fun lt!2531836 () List!68236)

(declare-fun size!41151 (List!68236) Int)

(assert (=> b!7055100 (= res!2880250 (= (size!41151 lt!2531836) (+ (size!41151 (exprs!7066 lt!2531713)) (size!41151 (exprs!7066 ct2!306)))))))

(declare-fun d!2204733 () Bool)

(assert (=> d!2204733 e!4241381))

(declare-fun res!2880249 () Bool)

(assert (=> d!2204733 (=> (not res!2880249) (not e!4241381))))

(declare-fun content!13684 (List!68236) (Set Regex!17570))

(assert (=> d!2204733 (= res!2880249 (= (content!13684 lt!2531836) (set.union (content!13684 (exprs!7066 lt!2531713)) (content!13684 (exprs!7066 ct2!306)))))))

(declare-fun e!4241380 () List!68236)

(assert (=> d!2204733 (= lt!2531836 e!4241380)))

(declare-fun c!1314330 () Bool)

(assert (=> d!2204733 (= c!1314330 (is-Nil!68112 (exprs!7066 lt!2531713)))))

(assert (=> d!2204733 (= (++!15653 (exprs!7066 lt!2531713) (exprs!7066 ct2!306)) lt!2531836)))

(declare-fun b!7055101 () Bool)

(assert (=> b!7055101 (= e!4241381 (or (not (= (exprs!7066 ct2!306) Nil!68112)) (= lt!2531836 (exprs!7066 lt!2531713))))))

(declare-fun b!7055098 () Bool)

(assert (=> b!7055098 (= e!4241380 (exprs!7066 ct2!306))))

(declare-fun b!7055099 () Bool)

(assert (=> b!7055099 (= e!4241380 (Cons!68112 (h!74560 (exprs!7066 lt!2531713)) (++!15653 (t!382015 (exprs!7066 lt!2531713)) (exprs!7066 ct2!306))))))

(assert (= (and d!2204733 c!1314330) b!7055098))

(assert (= (and d!2204733 (not c!1314330)) b!7055099))

(assert (= (and d!2204733 res!2880249) b!7055100))

(assert (= (and b!7055100 res!2880250) b!7055101))

(declare-fun m!7772666 () Bool)

(assert (=> b!7055100 m!7772666))

(declare-fun m!7772668 () Bool)

(assert (=> b!7055100 m!7772668))

(declare-fun m!7772670 () Bool)

(assert (=> b!7055100 m!7772670))

(declare-fun m!7772672 () Bool)

(assert (=> d!2204733 m!7772672))

(declare-fun m!7772674 () Bool)

(assert (=> d!2204733 m!7772674))

(declare-fun m!7772676 () Bool)

(assert (=> d!2204733 m!7772676))

(declare-fun m!7772678 () Bool)

(assert (=> b!7055099 m!7772678))

(assert (=> b!7055003 d!2204733))

(declare-fun d!2204735 () Bool)

(declare-fun forall!16515 (List!68236 Int) Bool)

(assert (=> d!2204735 (forall!16515 (++!15653 (exprs!7066 lt!2531713) (exprs!7066 ct2!306)) lambda!420162)))

(declare-fun lt!2531839 () Unit!161813)

(declare-fun choose!53804 (List!68236 List!68236 Int) Unit!161813)

(assert (=> d!2204735 (= lt!2531839 (choose!53804 (exprs!7066 lt!2531713) (exprs!7066 ct2!306) lambda!420162))))

(assert (=> d!2204735 (forall!16515 (exprs!7066 lt!2531713) lambda!420162)))

(assert (=> d!2204735 (= (lemmaConcatPreservesForall!881 (exprs!7066 lt!2531713) (exprs!7066 ct2!306) lambda!420162) lt!2531839)))

(declare-fun bs!1876938 () Bool)

(assert (= bs!1876938 d!2204735))

(assert (=> bs!1876938 m!7772542))

(assert (=> bs!1876938 m!7772542))

(declare-fun m!7772680 () Bool)

(assert (=> bs!1876938 m!7772680))

(declare-fun m!7772682 () Bool)

(assert (=> bs!1876938 m!7772682))

(declare-fun m!7772684 () Bool)

(assert (=> bs!1876938 m!7772684))

(assert (=> b!7055003 d!2204735))

(declare-fun d!2204737 () Bool)

(declare-fun e!4241384 () Bool)

(assert (=> d!2204737 e!4241384))

(declare-fun res!2880254 () Bool)

(assert (=> d!2204737 (=> (not res!2880254) (not e!4241384))))

(declare-fun lt!2531842 () Context!13132)

(declare-fun dynLambda!27636 (Int Context!13132) Context!13132)

(assert (=> d!2204737 (= res!2880254 (= lt!2531700 (dynLambda!27636 lambda!420161 lt!2531842)))))

(declare-fun choose!53805 ((Set Context!13132) Int Context!13132) Context!13132)

(assert (=> d!2204737 (= lt!2531842 (choose!53805 z1!570 lambda!420161 lt!2531700))))

(declare-fun map!15890 ((Set Context!13132) Int) (Set Context!13132))

(assert (=> d!2204737 (set.member lt!2531700 (map!15890 z1!570 lambda!420161))))

(assert (=> d!2204737 (= (mapPost2!399 z1!570 lambda!420161 lt!2531700) lt!2531842)))

(declare-fun b!7055105 () Bool)

(assert (=> b!7055105 (= e!4241384 (set.member lt!2531842 z1!570))))

(assert (= (and d!2204737 res!2880254) b!7055105))

(declare-fun b_lambda!268659 () Bool)

(assert (=> (not b_lambda!268659) (not d!2204737)))

(declare-fun m!7772686 () Bool)

(assert (=> d!2204737 m!7772686))

(declare-fun m!7772688 () Bool)

(assert (=> d!2204737 m!7772688))

(declare-fun m!7772690 () Bool)

(assert (=> d!2204737 m!7772690))

(declare-fun m!7772692 () Bool)

(assert (=> d!2204737 m!7772692))

(declare-fun m!7772694 () Bool)

(assert (=> b!7055105 m!7772694))

(assert (=> b!7055003 d!2204737))

(declare-fun bs!1876939 () Bool)

(declare-fun d!2204739 () Bool)

(assert (= bs!1876939 (and d!2204739 b!7055003)))

(declare-fun lambda!420210 () Int)

(assert (=> bs!1876939 (= lambda!420210 lambda!420162)))

(assert (=> d!2204739 (= (inv!86785 setElem!49840) (forall!16515 (exprs!7066 setElem!49840) lambda!420210))))

(declare-fun bs!1876940 () Bool)

(assert (= bs!1876940 d!2204739))

(declare-fun m!7772696 () Bool)

(assert (=> bs!1876940 m!7772696))

(assert (=> setNonEmpty!49840 d!2204739))

(declare-fun d!2204741 () Bool)

(declare-fun dynLambda!27637 (Int Context!13132) (Set Context!13132))

(assert (=> d!2204741 (= (flatMap!2496 lt!2531723 lambda!420163) (dynLambda!27637 lambda!420163 lt!2531705))))

(declare-fun lt!2531845 () Unit!161813)

(declare-fun choose!53806 ((Set Context!13132) Context!13132 Int) Unit!161813)

(assert (=> d!2204741 (= lt!2531845 (choose!53806 lt!2531723 lt!2531705 lambda!420163))))

(assert (=> d!2204741 (= lt!2531723 (set.insert lt!2531705 (as set.empty (Set Context!13132))))))

(assert (=> d!2204741 (= (lemmaFlatMapOnSingletonSet!2005 lt!2531723 lt!2531705 lambda!420163) lt!2531845)))

(declare-fun b_lambda!268661 () Bool)

(assert (=> (not b_lambda!268661) (not d!2204741)))

(declare-fun bs!1876941 () Bool)

(assert (= bs!1876941 d!2204741))

(assert (=> bs!1876941 m!7772548))

(declare-fun m!7772698 () Bool)

(assert (=> bs!1876941 m!7772698))

(declare-fun m!7772700 () Bool)

(assert (=> bs!1876941 m!7772700))

(assert (=> bs!1876941 m!7772546))

(assert (=> b!7055014 d!2204741))

(declare-fun d!2204743 () Bool)

(assert (=> d!2204743 (forall!16515 (++!15653 lt!2531727 (exprs!7066 ct2!306)) lambda!420162)))

(declare-fun lt!2531846 () Unit!161813)

(assert (=> d!2204743 (= lt!2531846 (choose!53804 lt!2531727 (exprs!7066 ct2!306) lambda!420162))))

(assert (=> d!2204743 (forall!16515 lt!2531727 lambda!420162)))

(assert (=> d!2204743 (= (lemmaConcatPreservesForall!881 lt!2531727 (exprs!7066 ct2!306) lambda!420162) lt!2531846)))

(declare-fun bs!1876942 () Bool)

(assert (= bs!1876942 d!2204743))

(assert (=> bs!1876942 m!7772564))

(assert (=> bs!1876942 m!7772564))

(declare-fun m!7772702 () Bool)

(assert (=> bs!1876942 m!7772702))

(declare-fun m!7772704 () Bool)

(assert (=> bs!1876942 m!7772704))

(declare-fun m!7772706 () Bool)

(assert (=> bs!1876942 m!7772706))

(assert (=> b!7055014 d!2204743))

(declare-fun d!2204745 () Bool)

(declare-fun choose!53807 ((Set Context!13132) Int) (Set Context!13132))

(assert (=> d!2204745 (= (flatMap!2496 lt!2531723 lambda!420163) (choose!53807 lt!2531723 lambda!420163))))

(declare-fun bs!1876943 () Bool)

(assert (= bs!1876943 d!2204745))

(declare-fun m!7772708 () Bool)

(assert (=> bs!1876943 m!7772708))

(assert (=> b!7055014 d!2204745))

(declare-fun bs!1876944 () Bool)

(declare-fun d!2204747 () Bool)

(assert (= bs!1876944 (and d!2204747 b!7055003)))

(declare-fun lambda!420211 () Int)

(assert (=> bs!1876944 (= lambda!420211 lambda!420162)))

(declare-fun bs!1876945 () Bool)

(assert (= bs!1876945 (and d!2204747 d!2204739)))

(assert (=> bs!1876945 (= lambda!420211 lambda!420210)))

(assert (=> d!2204747 (= (inv!86785 lt!2531705) (forall!16515 (exprs!7066 lt!2531705) lambda!420211))))

(declare-fun bs!1876946 () Bool)

(assert (= bs!1876946 d!2204747))

(declare-fun m!7772710 () Bool)

(assert (=> bs!1876946 m!7772710))

(assert (=> b!7055014 d!2204747))

(declare-fun e!4241392 () (Set Context!13132))

(declare-fun b!7055116 () Bool)

(declare-fun call!640894 () (Set Context!13132))

(assert (=> b!7055116 (= e!4241392 (set.union call!640894 (derivationStepZipperUp!2154 (Context!13133 (t!382015 (exprs!7066 lt!2531705))) (h!74561 s!7408))))))

(declare-fun b!7055117 () Bool)

(declare-fun e!4241393 () Bool)

(assert (=> b!7055117 (= e!4241393 (nullable!7253 (h!74560 (exprs!7066 lt!2531705))))))

(declare-fun b!7055118 () Bool)

(declare-fun e!4241391 () (Set Context!13132))

(assert (=> b!7055118 (= e!4241391 call!640894)))

(declare-fun b!7055119 () Bool)

(assert (=> b!7055119 (= e!4241392 e!4241391)))

(declare-fun c!1314336 () Bool)

(assert (=> b!7055119 (= c!1314336 (is-Cons!68112 (exprs!7066 lt!2531705)))))

(declare-fun d!2204749 () Bool)

(declare-fun c!1314335 () Bool)

(assert (=> d!2204749 (= c!1314335 e!4241393)))

(declare-fun res!2880257 () Bool)

(assert (=> d!2204749 (=> (not res!2880257) (not e!4241393))))

(assert (=> d!2204749 (= res!2880257 (is-Cons!68112 (exprs!7066 lt!2531705)))))

(assert (=> d!2204749 (= (derivationStepZipperUp!2154 lt!2531705 (h!74561 s!7408)) e!4241392)))

(declare-fun bm!640889 () Bool)

(assert (=> bm!640889 (= call!640894 (derivationStepZipperDown!2204 (h!74560 (exprs!7066 lt!2531705)) (Context!13133 (t!382015 (exprs!7066 lt!2531705))) (h!74561 s!7408)))))

(declare-fun b!7055120 () Bool)

(assert (=> b!7055120 (= e!4241391 (as set.empty (Set Context!13132)))))

(assert (= (and d!2204749 res!2880257) b!7055117))

(assert (= (and d!2204749 c!1314335) b!7055116))

(assert (= (and d!2204749 (not c!1314335)) b!7055119))

(assert (= (and b!7055119 c!1314336) b!7055118))

(assert (= (and b!7055119 (not c!1314336)) b!7055120))

(assert (= (or b!7055116 b!7055118) bm!640889))

(declare-fun m!7772712 () Bool)

(assert (=> b!7055116 m!7772712))

(declare-fun m!7772714 () Bool)

(assert (=> b!7055117 m!7772714))

(declare-fun m!7772716 () Bool)

(assert (=> bm!640889 m!7772716))

(assert (=> b!7055014 d!2204749))

(declare-fun bs!1876947 () Bool)

(declare-fun d!2204751 () Bool)

(assert (= bs!1876947 (and d!2204751 b!7055013)))

(declare-fun lambda!420214 () Int)

(assert (=> bs!1876947 (not (= lambda!420214 lambda!420160))))

(assert (=> d!2204751 true))

(declare-fun order!28315 () Int)

(declare-fun dynLambda!27638 (Int Int) Int)

(assert (=> d!2204751 (< (dynLambda!27638 order!28315 lambda!420160) (dynLambda!27638 order!28315 lambda!420214))))

(declare-fun forall!16516 (List!68238 Int) Bool)

(assert (=> d!2204751 (= (exists!3559 lt!2531725 lambda!420160) (not (forall!16516 lt!2531725 lambda!420214)))))

(declare-fun bs!1876948 () Bool)

(assert (= bs!1876948 d!2204751))

(declare-fun m!7772718 () Bool)

(assert (=> bs!1876948 m!7772718))

(assert (=> b!7055013 d!2204751))

(declare-fun d!2204753 () Bool)

(declare-fun e!4241396 () Bool)

(assert (=> d!2204753 e!4241396))

(declare-fun res!2880260 () Bool)

(assert (=> d!2204753 (=> (not res!2880260) (not e!4241396))))

(declare-fun lt!2531849 () Context!13132)

(declare-fun dynLambda!27639 (Int Context!13132) Bool)

(assert (=> d!2204753 (= res!2880260 (dynLambda!27639 lambda!420160 lt!2531849))))

(declare-fun getWitness!1635 (List!68238 Int) Context!13132)

(assert (=> d!2204753 (= lt!2531849 (getWitness!1635 (toList!10911 lt!2531717) lambda!420160))))

(declare-fun exists!3561 ((Set Context!13132) Int) Bool)

(assert (=> d!2204753 (exists!3561 lt!2531717 lambda!420160)))

(assert (=> d!2204753 (= (getWitness!1633 lt!2531717 lambda!420160) lt!2531849)))

(declare-fun b!7055125 () Bool)

(assert (=> b!7055125 (= e!4241396 (set.member lt!2531849 lt!2531717))))

(assert (= (and d!2204753 res!2880260) b!7055125))

(declare-fun b_lambda!268663 () Bool)

(assert (=> (not b_lambda!268663) (not d!2204753)))

(declare-fun m!7772720 () Bool)

(assert (=> d!2204753 m!7772720))

(assert (=> d!2204753 m!7772572))

(assert (=> d!2204753 m!7772572))

(declare-fun m!7772722 () Bool)

(assert (=> d!2204753 m!7772722))

(declare-fun m!7772724 () Bool)

(assert (=> d!2204753 m!7772724))

(declare-fun m!7772726 () Bool)

(assert (=> b!7055125 m!7772726))

(assert (=> b!7055013 d!2204753))

(declare-fun d!2204755 () Bool)

(declare-fun e!4241399 () Bool)

(assert (=> d!2204755 e!4241399))

(declare-fun res!2880263 () Bool)

(assert (=> d!2204755 (=> (not res!2880263) (not e!4241399))))

(declare-fun lt!2531852 () List!68238)

(declare-fun noDuplicate!2689 (List!68238) Bool)

(assert (=> d!2204755 (= res!2880263 (noDuplicate!2689 lt!2531852))))

(declare-fun choose!53808 ((Set Context!13132)) List!68238)

(assert (=> d!2204755 (= lt!2531852 (choose!53808 lt!2531717))))

(assert (=> d!2204755 (= (toList!10911 lt!2531717) lt!2531852)))

(declare-fun b!7055128 () Bool)

(declare-fun content!13685 (List!68238) (Set Context!13132))

(assert (=> b!7055128 (= e!4241399 (= (content!13685 lt!2531852) lt!2531717))))

(assert (= (and d!2204755 res!2880263) b!7055128))

(declare-fun m!7772728 () Bool)

(assert (=> d!2204755 m!7772728))

(declare-fun m!7772730 () Bool)

(assert (=> d!2204755 m!7772730))

(declare-fun m!7772732 () Bool)

(assert (=> b!7055128 m!7772732))

(assert (=> b!7055013 d!2204755))

(declare-fun d!2204757 () Bool)

(declare-fun c!1314339 () Bool)

(declare-fun isEmpty!39729 (List!68237) Bool)

(assert (=> d!2204757 (= c!1314339 (isEmpty!39729 s!7408))))

(declare-fun e!4241402 () Bool)

(assert (=> d!2204757 (= (matchZipper!3110 lt!2531728 s!7408) e!4241402)))

(declare-fun b!7055133 () Bool)

(declare-fun nullableZipper!2656 ((Set Context!13132)) Bool)

(assert (=> b!7055133 (= e!4241402 (nullableZipper!2656 lt!2531728))))

(declare-fun b!7055134 () Bool)

(declare-fun head!14357 (List!68237) C!35410)

(declare-fun tail!13701 (List!68237) List!68237)

(assert (=> b!7055134 (= e!4241402 (matchZipper!3110 (derivationStepZipper!3020 lt!2531728 (head!14357 s!7408)) (tail!13701 s!7408)))))

(assert (= (and d!2204757 c!1314339) b!7055133))

(assert (= (and d!2204757 (not c!1314339)) b!7055134))

(declare-fun m!7772734 () Bool)

(assert (=> d!2204757 m!7772734))

(declare-fun m!7772736 () Bool)

(assert (=> b!7055133 m!7772736))

(declare-fun m!7772738 () Bool)

(assert (=> b!7055134 m!7772738))

(assert (=> b!7055134 m!7772738))

(declare-fun m!7772740 () Bool)

(assert (=> b!7055134 m!7772740))

(declare-fun m!7772742 () Bool)

(assert (=> b!7055134 m!7772742))

(assert (=> b!7055134 m!7772740))

(assert (=> b!7055134 m!7772742))

(declare-fun m!7772744 () Bool)

(assert (=> b!7055134 m!7772744))

(assert (=> b!7055013 d!2204757))

(declare-fun bs!1876949 () Bool)

(declare-fun d!2204759 () Bool)

(assert (= bs!1876949 (and d!2204759 b!7055013)))

(declare-fun lambda!420217 () Int)

(assert (=> bs!1876949 (= lambda!420217 lambda!420160)))

(declare-fun bs!1876950 () Bool)

(assert (= bs!1876950 (and d!2204759 d!2204751)))

(assert (=> bs!1876950 (not (= lambda!420217 lambda!420214))))

(assert (=> d!2204759 true))

(assert (=> d!2204759 (exists!3559 lt!2531725 lambda!420217)))

(declare-fun lt!2531855 () Unit!161813)

(declare-fun choose!53809 (List!68238 List!68237) Unit!161813)

(assert (=> d!2204759 (= lt!2531855 (choose!53809 lt!2531725 s!7408))))

(assert (=> d!2204759 (matchZipper!3110 (content!13685 lt!2531725) s!7408)))

(assert (=> d!2204759 (= (lemmaZipperMatchesExistsMatchingContext!491 lt!2531725 s!7408) lt!2531855)))

(declare-fun bs!1876951 () Bool)

(assert (= bs!1876951 d!2204759))

(declare-fun m!7772746 () Bool)

(assert (=> bs!1876951 m!7772746))

(declare-fun m!7772748 () Bool)

(assert (=> bs!1876951 m!7772748))

(declare-fun m!7772750 () Bool)

(assert (=> bs!1876951 m!7772750))

(assert (=> bs!1876951 m!7772750))

(declare-fun m!7772752 () Bool)

(assert (=> bs!1876951 m!7772752))

(assert (=> b!7055013 d!2204759))

(declare-fun call!640895 () (Set Context!13132))

(declare-fun b!7055135 () Bool)

(declare-fun e!4241404 () (Set Context!13132))

(assert (=> b!7055135 (= e!4241404 (set.union call!640895 (derivationStepZipperUp!2154 (Context!13133 (t!382015 (exprs!7066 lt!2531708))) (h!74561 s!7408))))))

(declare-fun b!7055136 () Bool)

(declare-fun e!4241405 () Bool)

(assert (=> b!7055136 (= e!4241405 (nullable!7253 (h!74560 (exprs!7066 lt!2531708))))))

(declare-fun b!7055137 () Bool)

(declare-fun e!4241403 () (Set Context!13132))

(assert (=> b!7055137 (= e!4241403 call!640895)))

(declare-fun b!7055138 () Bool)

(assert (=> b!7055138 (= e!4241404 e!4241403)))

(declare-fun c!1314343 () Bool)

(assert (=> b!7055138 (= c!1314343 (is-Cons!68112 (exprs!7066 lt!2531708)))))

(declare-fun d!2204761 () Bool)

(declare-fun c!1314342 () Bool)

(assert (=> d!2204761 (= c!1314342 e!4241405)))

(declare-fun res!2880264 () Bool)

(assert (=> d!2204761 (=> (not res!2880264) (not e!4241405))))

(assert (=> d!2204761 (= res!2880264 (is-Cons!68112 (exprs!7066 lt!2531708)))))

(assert (=> d!2204761 (= (derivationStepZipperUp!2154 lt!2531708 (h!74561 s!7408)) e!4241404)))

(declare-fun bm!640890 () Bool)

(assert (=> bm!640890 (= call!640895 (derivationStepZipperDown!2204 (h!74560 (exprs!7066 lt!2531708)) (Context!13133 (t!382015 (exprs!7066 lt!2531708))) (h!74561 s!7408)))))

(declare-fun b!7055139 () Bool)

(assert (=> b!7055139 (= e!4241403 (as set.empty (Set Context!13132)))))

(assert (= (and d!2204761 res!2880264) b!7055136))

(assert (= (and d!2204761 c!1314342) b!7055135))

(assert (= (and d!2204761 (not c!1314342)) b!7055138))

(assert (= (and b!7055138 c!1314343) b!7055137))

(assert (= (and b!7055138 (not c!1314343)) b!7055139))

(assert (= (or b!7055135 b!7055137) bm!640890))

(declare-fun m!7772754 () Bool)

(assert (=> b!7055135 m!7772754))

(declare-fun m!7772756 () Bool)

(assert (=> b!7055136 m!7772756))

(declare-fun m!7772758 () Bool)

(assert (=> bm!640890 m!7772758))

(assert (=> b!7055011 d!2204761))

(assert (=> b!7055011 d!2204735))

(declare-fun d!2204763 () Bool)

(assert (=> d!2204763 (= (flatMap!2496 lt!2531697 lambda!420163) (dynLambda!27637 lambda!420163 lt!2531708))))

(declare-fun lt!2531856 () Unit!161813)

(assert (=> d!2204763 (= lt!2531856 (choose!53806 lt!2531697 lt!2531708 lambda!420163))))

(assert (=> d!2204763 (= lt!2531697 (set.insert lt!2531708 (as set.empty (Set Context!13132))))))

(assert (=> d!2204763 (= (lemmaFlatMapOnSingletonSet!2005 lt!2531697 lt!2531708 lambda!420163) lt!2531856)))

(declare-fun b_lambda!268665 () Bool)

(assert (=> (not b_lambda!268665) (not d!2204763)))

(declare-fun bs!1876952 () Bool)

(assert (= bs!1876952 d!2204763))

(assert (=> bs!1876952 m!7772522))

(declare-fun m!7772760 () Bool)

(assert (=> bs!1876952 m!7772760))

(declare-fun m!7772762 () Bool)

(assert (=> bs!1876952 m!7772762))

(assert (=> bs!1876952 m!7772582))

(assert (=> b!7055011 d!2204763))

(declare-fun bs!1876953 () Bool)

(declare-fun d!2204765 () Bool)

(assert (= bs!1876953 (and d!2204765 b!7055011)))

(declare-fun lambda!420220 () Int)

(assert (=> bs!1876953 (= lambda!420220 lambda!420163)))

(assert (=> d!2204765 true))

(assert (=> d!2204765 (= (derivationStepZipper!3020 lt!2531697 (h!74561 s!7408)) (flatMap!2496 lt!2531697 lambda!420220))))

(declare-fun bs!1876954 () Bool)

(assert (= bs!1876954 d!2204765))

(declare-fun m!7772764 () Bool)

(assert (=> bs!1876954 m!7772764))

(assert (=> b!7055011 d!2204765))

(declare-fun d!2204767 () Bool)

(assert (=> d!2204767 (= (flatMap!2496 lt!2531697 lambda!420163) (choose!53807 lt!2531697 lambda!420163))))

(declare-fun bs!1876955 () Bool)

(assert (= bs!1876955 d!2204767))

(declare-fun m!7772766 () Bool)

(assert (=> bs!1876955 m!7772766))

(assert (=> b!7055011 d!2204767))

(declare-fun d!2204769 () Bool)

(declare-fun c!1314346 () Bool)

(assert (=> d!2204769 (= c!1314346 (isEmpty!39729 (t!382016 s!7408)))))

(declare-fun e!4241406 () Bool)

(assert (=> d!2204769 (= (matchZipper!3110 lt!2531726 (t!382016 s!7408)) e!4241406)))

(declare-fun b!7055142 () Bool)

(assert (=> b!7055142 (= e!4241406 (nullableZipper!2656 lt!2531726))))

(declare-fun b!7055143 () Bool)

(assert (=> b!7055143 (= e!4241406 (matchZipper!3110 (derivationStepZipper!3020 lt!2531726 (head!14357 (t!382016 s!7408))) (tail!13701 (t!382016 s!7408))))))

(assert (= (and d!2204769 c!1314346) b!7055142))

(assert (= (and d!2204769 (not c!1314346)) b!7055143))

(declare-fun m!7772768 () Bool)

(assert (=> d!2204769 m!7772768))

(declare-fun m!7772770 () Bool)

(assert (=> b!7055142 m!7772770))

(declare-fun m!7772772 () Bool)

(assert (=> b!7055143 m!7772772))

(assert (=> b!7055143 m!7772772))

(declare-fun m!7772774 () Bool)

(assert (=> b!7055143 m!7772774))

(declare-fun m!7772776 () Bool)

(assert (=> b!7055143 m!7772776))

(assert (=> b!7055143 m!7772774))

(assert (=> b!7055143 m!7772776))

(declare-fun m!7772778 () Bool)

(assert (=> b!7055143 m!7772778))

(assert (=> b!7055019 d!2204769))

(assert (=> b!7055019 d!2204743))

(declare-fun b!7055146 () Bool)

(declare-fun res!2880266 () Bool)

(declare-fun e!4241408 () Bool)

(assert (=> b!7055146 (=> (not res!2880266) (not e!4241408))))

(declare-fun lt!2531857 () List!68236)

(assert (=> b!7055146 (= res!2880266 (= (size!41151 lt!2531857) (+ (size!41151 lt!2531727) (size!41151 (exprs!7066 ct2!306)))))))

(declare-fun d!2204771 () Bool)

(assert (=> d!2204771 e!4241408))

(declare-fun res!2880265 () Bool)

(assert (=> d!2204771 (=> (not res!2880265) (not e!4241408))))

(assert (=> d!2204771 (= res!2880265 (= (content!13684 lt!2531857) (set.union (content!13684 lt!2531727) (content!13684 (exprs!7066 ct2!306)))))))

(declare-fun e!4241407 () List!68236)

(assert (=> d!2204771 (= lt!2531857 e!4241407)))

(declare-fun c!1314347 () Bool)

(assert (=> d!2204771 (= c!1314347 (is-Nil!68112 lt!2531727))))

(assert (=> d!2204771 (= (++!15653 lt!2531727 (exprs!7066 ct2!306)) lt!2531857)))

(declare-fun b!7055147 () Bool)

(assert (=> b!7055147 (= e!4241408 (or (not (= (exprs!7066 ct2!306) Nil!68112)) (= lt!2531857 lt!2531727)))))

(declare-fun b!7055144 () Bool)

(assert (=> b!7055144 (= e!4241407 (exprs!7066 ct2!306))))

(declare-fun b!7055145 () Bool)

(assert (=> b!7055145 (= e!4241407 (Cons!68112 (h!74560 lt!2531727) (++!15653 (t!382015 lt!2531727) (exprs!7066 ct2!306))))))

(assert (= (and d!2204771 c!1314347) b!7055144))

(assert (= (and d!2204771 (not c!1314347)) b!7055145))

(assert (= (and d!2204771 res!2880265) b!7055146))

(assert (= (and b!7055146 res!2880266) b!7055147))

(declare-fun m!7772780 () Bool)

(assert (=> b!7055146 m!7772780))

(declare-fun m!7772782 () Bool)

(assert (=> b!7055146 m!7772782))

(assert (=> b!7055146 m!7772670))

(declare-fun m!7772784 () Bool)

(assert (=> d!2204771 m!7772784))

(declare-fun m!7772786 () Bool)

(assert (=> d!2204771 m!7772786))

(assert (=> d!2204771 m!7772676))

(declare-fun m!7772788 () Bool)

(assert (=> b!7055145 m!7772788))

(assert (=> b!7055010 d!2204771))

(assert (=> b!7055010 d!2204743))

(assert (=> b!7055010 d!2204749))

(declare-fun b!7055170 () Bool)

(declare-fun e!4241424 () (Set Context!13132))

(declare-fun e!4241426 () (Set Context!13132))

(assert (=> b!7055170 (= e!4241424 e!4241426)))

(declare-fun c!1314359 () Bool)

(assert (=> b!7055170 (= c!1314359 (is-Concat!26415 (h!74560 (exprs!7066 lt!2531713))))))

(declare-fun b!7055171 () Bool)

(declare-fun e!4241421 () Bool)

(assert (=> b!7055171 (= e!4241421 (nullable!7253 (regOne!35652 (h!74560 (exprs!7066 lt!2531713)))))))

(declare-fun bm!640903 () Bool)

(declare-fun call!640913 () (Set Context!13132))

(declare-fun call!640910 () (Set Context!13132))

(assert (=> bm!640903 (= call!640913 call!640910)))

(declare-fun d!2204773 () Bool)

(declare-fun c!1314358 () Bool)

(assert (=> d!2204773 (= c!1314358 (and (is-ElementMatch!17570 (h!74560 (exprs!7066 lt!2531713))) (= (c!1314316 (h!74560 (exprs!7066 lt!2531713))) (h!74561 s!7408))))))

(declare-fun e!4241422 () (Set Context!13132))

(assert (=> d!2204773 (= (derivationStepZipperDown!2204 (h!74560 (exprs!7066 lt!2531713)) lt!2531705 (h!74561 s!7408)) e!4241422)))

(declare-fun bm!640904 () Bool)

(declare-fun call!640908 () List!68236)

(declare-fun call!640909 () List!68236)

(assert (=> bm!640904 (= call!640908 call!640909)))

(declare-fun b!7055172 () Bool)

(declare-fun e!4241423 () (Set Context!13132))

(assert (=> b!7055172 (= e!4241423 call!640913)))

(declare-fun b!7055173 () Bool)

(declare-fun call!640912 () (Set Context!13132))

(assert (=> b!7055173 (= e!4241424 (set.union call!640912 call!640910))))

(declare-fun b!7055174 () Bool)

(assert (=> b!7055174 (= e!4241426 call!640913)))

(declare-fun b!7055175 () Bool)

(declare-fun e!4241425 () (Set Context!13132))

(declare-fun call!640911 () (Set Context!13132))

(assert (=> b!7055175 (= e!4241425 (set.union call!640912 call!640911))))

(declare-fun b!7055176 () Bool)

(assert (=> b!7055176 (= e!4241422 (set.insert lt!2531705 (as set.empty (Set Context!13132))))))

(declare-fun bm!640905 () Bool)

(declare-fun c!1314361 () Bool)

(assert (=> bm!640905 (= call!640912 (derivationStepZipperDown!2204 (ite c!1314361 (regOne!35653 (h!74560 (exprs!7066 lt!2531713))) (regOne!35652 (h!74560 (exprs!7066 lt!2531713)))) (ite c!1314361 lt!2531705 (Context!13133 call!640909)) (h!74561 s!7408)))))

(declare-fun c!1314362 () Bool)

(declare-fun bm!640906 () Bool)

(declare-fun $colon$colon!2621 (List!68236 Regex!17570) List!68236)

(assert (=> bm!640906 (= call!640909 ($colon$colon!2621 (exprs!7066 lt!2531705) (ite (or c!1314362 c!1314359) (regTwo!35652 (h!74560 (exprs!7066 lt!2531713))) (h!74560 (exprs!7066 lt!2531713)))))))

(declare-fun b!7055177 () Bool)

(assert (=> b!7055177 (= e!4241422 e!4241425)))

(assert (=> b!7055177 (= c!1314361 (is-Union!17570 (h!74560 (exprs!7066 lt!2531713))))))

(declare-fun b!7055178 () Bool)

(assert (=> b!7055178 (= c!1314362 e!4241421)))

(declare-fun res!2880269 () Bool)

(assert (=> b!7055178 (=> (not res!2880269) (not e!4241421))))

(assert (=> b!7055178 (= res!2880269 (is-Concat!26415 (h!74560 (exprs!7066 lt!2531713))))))

(assert (=> b!7055178 (= e!4241425 e!4241424)))

(declare-fun b!7055179 () Bool)

(assert (=> b!7055179 (= e!4241423 (as set.empty (Set Context!13132)))))

(declare-fun bm!640907 () Bool)

(assert (=> bm!640907 (= call!640910 call!640911)))

(declare-fun bm!640908 () Bool)

(assert (=> bm!640908 (= call!640911 (derivationStepZipperDown!2204 (ite c!1314361 (regTwo!35653 (h!74560 (exprs!7066 lt!2531713))) (ite c!1314362 (regTwo!35652 (h!74560 (exprs!7066 lt!2531713))) (ite c!1314359 (regOne!35652 (h!74560 (exprs!7066 lt!2531713))) (reg!17899 (h!74560 (exprs!7066 lt!2531713)))))) (ite (or c!1314361 c!1314362) lt!2531705 (Context!13133 call!640908)) (h!74561 s!7408)))))

(declare-fun b!7055180 () Bool)

(declare-fun c!1314360 () Bool)

(assert (=> b!7055180 (= c!1314360 (is-Star!17570 (h!74560 (exprs!7066 lt!2531713))))))

(assert (=> b!7055180 (= e!4241426 e!4241423)))

(assert (= (and d!2204773 c!1314358) b!7055176))

(assert (= (and d!2204773 (not c!1314358)) b!7055177))

(assert (= (and b!7055177 c!1314361) b!7055175))

(assert (= (and b!7055177 (not c!1314361)) b!7055178))

(assert (= (and b!7055178 res!2880269) b!7055171))

(assert (= (and b!7055178 c!1314362) b!7055173))

(assert (= (and b!7055178 (not c!1314362)) b!7055170))

(assert (= (and b!7055170 c!1314359) b!7055174))

(assert (= (and b!7055170 (not c!1314359)) b!7055180))

(assert (= (and b!7055180 c!1314360) b!7055172))

(assert (= (and b!7055180 (not c!1314360)) b!7055179))

(assert (= (or b!7055174 b!7055172) bm!640904))

(assert (= (or b!7055174 b!7055172) bm!640903))

(assert (= (or b!7055173 bm!640903) bm!640907))

(assert (= (or b!7055173 bm!640904) bm!640906))

(assert (= (or b!7055175 b!7055173) bm!640905))

(assert (= (or b!7055175 bm!640907) bm!640908))

(declare-fun m!7772790 () Bool)

(assert (=> b!7055171 m!7772790))

(assert (=> b!7055176 m!7772546))

(declare-fun m!7772792 () Bool)

(assert (=> bm!640905 m!7772792))

(declare-fun m!7772794 () Bool)

(assert (=> bm!640908 m!7772794))

(declare-fun m!7772796 () Bool)

(assert (=> bm!640906 m!7772796))

(assert (=> b!7055010 d!2204773))

(declare-fun d!2204775 () Bool)

(declare-fun c!1314363 () Bool)

(assert (=> d!2204775 (= c!1314363 (isEmpty!39729 (t!382016 s!7408)))))

(declare-fun e!4241427 () Bool)

(assert (=> d!2204775 (= (matchZipper!3110 lt!2531696 (t!382016 s!7408)) e!4241427)))

(declare-fun b!7055181 () Bool)

(assert (=> b!7055181 (= e!4241427 (nullableZipper!2656 lt!2531696))))

(declare-fun b!7055182 () Bool)

(assert (=> b!7055182 (= e!4241427 (matchZipper!3110 (derivationStepZipper!3020 lt!2531696 (head!14357 (t!382016 s!7408))) (tail!13701 (t!382016 s!7408))))))

(assert (= (and d!2204775 c!1314363) b!7055181))

(assert (= (and d!2204775 (not c!1314363)) b!7055182))

(assert (=> d!2204775 m!7772768))

(declare-fun m!7772798 () Bool)

(assert (=> b!7055181 m!7772798))

(assert (=> b!7055182 m!7772772))

(assert (=> b!7055182 m!7772772))

(declare-fun m!7772800 () Bool)

(assert (=> b!7055182 m!7772800))

(assert (=> b!7055182 m!7772776))

(assert (=> b!7055182 m!7772800))

(assert (=> b!7055182 m!7772776))

(declare-fun m!7772802 () Bool)

(assert (=> b!7055182 m!7772802))

(assert (=> b!7055012 d!2204775))

(declare-fun d!2204777 () Bool)

(declare-fun c!1314364 () Bool)

(assert (=> d!2204777 (= c!1314364 (isEmpty!39729 (t!382016 s!7408)))))

(declare-fun e!4241428 () Bool)

(assert (=> d!2204777 (= (matchZipper!3110 lt!2531698 (t!382016 s!7408)) e!4241428)))

(declare-fun b!7055183 () Bool)

(assert (=> b!7055183 (= e!4241428 (nullableZipper!2656 lt!2531698))))

(declare-fun b!7055184 () Bool)

(assert (=> b!7055184 (= e!4241428 (matchZipper!3110 (derivationStepZipper!3020 lt!2531698 (head!14357 (t!382016 s!7408))) (tail!13701 (t!382016 s!7408))))))

(assert (= (and d!2204777 c!1314364) b!7055183))

(assert (= (and d!2204777 (not c!1314364)) b!7055184))

(assert (=> d!2204777 m!7772768))

(declare-fun m!7772804 () Bool)

(assert (=> b!7055183 m!7772804))

(assert (=> b!7055184 m!7772772))

(assert (=> b!7055184 m!7772772))

(declare-fun m!7772806 () Bool)

(assert (=> b!7055184 m!7772806))

(assert (=> b!7055184 m!7772776))

(assert (=> b!7055184 m!7772806))

(assert (=> b!7055184 m!7772776))

(declare-fun m!7772808 () Bool)

(assert (=> b!7055184 m!7772808))

(assert (=> b!7055012 d!2204777))

(assert (=> b!7055012 d!2204743))

(declare-fun e!4241431 () Bool)

(declare-fun d!2204779 () Bool)

(assert (=> d!2204779 (= (matchZipper!3110 (set.union lt!2531698 lt!2531726) (t!382016 s!7408)) e!4241431)))

(declare-fun res!2880272 () Bool)

(assert (=> d!2204779 (=> res!2880272 e!4241431)))

(assert (=> d!2204779 (= res!2880272 (matchZipper!3110 lt!2531698 (t!382016 s!7408)))))

(declare-fun lt!2531860 () Unit!161813)

(declare-fun choose!53810 ((Set Context!13132) (Set Context!13132) List!68237) Unit!161813)

(assert (=> d!2204779 (= lt!2531860 (choose!53810 lt!2531698 lt!2531726 (t!382016 s!7408)))))

(assert (=> d!2204779 (= (lemmaZipperConcatMatchesSameAsBothZippers!1583 lt!2531698 lt!2531726 (t!382016 s!7408)) lt!2531860)))

(declare-fun b!7055187 () Bool)

(assert (=> b!7055187 (= e!4241431 (matchZipper!3110 lt!2531726 (t!382016 s!7408)))))

(assert (= (and d!2204779 (not res!2880272)) b!7055187))

(declare-fun m!7772810 () Bool)

(assert (=> d!2204779 m!7772810))

(assert (=> d!2204779 m!7772558))

(declare-fun m!7772812 () Bool)

(assert (=> d!2204779 m!7772812))

(assert (=> b!7055187 m!7772536))

(assert (=> b!7055012 d!2204779))

(declare-fun d!2204781 () Bool)

(declare-fun c!1314365 () Bool)

(assert (=> d!2204781 (= c!1314365 (isEmpty!39729 (t!382016 s!7408)))))

(declare-fun e!4241432 () Bool)

(assert (=> d!2204781 (= (matchZipper!3110 lt!2531706 (t!382016 s!7408)) e!4241432)))

(declare-fun b!7055188 () Bool)

(assert (=> b!7055188 (= e!4241432 (nullableZipper!2656 lt!2531706))))

(declare-fun b!7055189 () Bool)

(assert (=> b!7055189 (= e!4241432 (matchZipper!3110 (derivationStepZipper!3020 lt!2531706 (head!14357 (t!382016 s!7408))) (tail!13701 (t!382016 s!7408))))))

(assert (= (and d!2204781 c!1314365) b!7055188))

(assert (= (and d!2204781 (not c!1314365)) b!7055189))

(assert (=> d!2204781 m!7772768))

(declare-fun m!7772814 () Bool)

(assert (=> b!7055188 m!7772814))

(assert (=> b!7055189 m!7772772))

(assert (=> b!7055189 m!7772772))

(declare-fun m!7772816 () Bool)

(assert (=> b!7055189 m!7772816))

(assert (=> b!7055189 m!7772776))

(assert (=> b!7055189 m!7772816))

(assert (=> b!7055189 m!7772776))

(declare-fun m!7772818 () Bool)

(assert (=> b!7055189 m!7772818))

(assert (=> b!7055012 d!2204781))

(declare-fun d!2204783 () Bool)

(declare-fun nullableFct!2774 (Regex!17570) Bool)

(assert (=> d!2204783 (= (nullable!7253 (h!74560 (exprs!7066 lt!2531713))) (nullableFct!2774 (h!74560 (exprs!7066 lt!2531713))))))

(declare-fun bs!1876956 () Bool)

(assert (= bs!1876956 d!2204783))

(declare-fun m!7772820 () Bool)

(assert (=> bs!1876956 m!7772820))

(assert (=> b!7055020 d!2204783))

(declare-fun d!2204785 () Bool)

(assert (=> d!2204785 (= (tail!13699 (exprs!7066 lt!2531713)) (t!382015 (exprs!7066 lt!2531713)))))

(assert (=> b!7055020 d!2204785))

(assert (=> b!7055017 d!2204769))

(declare-fun d!2204787 () Bool)

(declare-fun c!1314366 () Bool)

(assert (=> d!2204787 (= c!1314366 (isEmpty!39729 s!7408))))

(declare-fun e!4241433 () Bool)

(assert (=> d!2204787 (= (matchZipper!3110 lt!2531717 s!7408) e!4241433)))

(declare-fun b!7055190 () Bool)

(assert (=> b!7055190 (= e!4241433 (nullableZipper!2656 lt!2531717))))

(declare-fun b!7055191 () Bool)

(assert (=> b!7055191 (= e!4241433 (matchZipper!3110 (derivationStepZipper!3020 lt!2531717 (head!14357 s!7408)) (tail!13701 s!7408)))))

(assert (= (and d!2204787 c!1314366) b!7055190))

(assert (= (and d!2204787 (not c!1314366)) b!7055191))

(assert (=> d!2204787 m!7772734))

(declare-fun m!7772822 () Bool)

(assert (=> b!7055190 m!7772822))

(assert (=> b!7055191 m!7772738))

(assert (=> b!7055191 m!7772738))

(declare-fun m!7772824 () Bool)

(assert (=> b!7055191 m!7772824))

(assert (=> b!7055191 m!7772742))

(assert (=> b!7055191 m!7772824))

(assert (=> b!7055191 m!7772742))

(declare-fun m!7772826 () Bool)

(assert (=> b!7055191 m!7772826))

(assert (=> start!684174 d!2204787))

(declare-fun bs!1876957 () Bool)

(declare-fun d!2204789 () Bool)

(assert (= bs!1876957 (and d!2204789 b!7055003)))

(declare-fun lambda!420225 () Int)

(assert (=> bs!1876957 (= lambda!420225 lambda!420161)))

(assert (=> d!2204789 true))

(assert (=> d!2204789 (= (appendTo!691 z1!570 ct2!306) (map!15890 z1!570 lambda!420225))))

(declare-fun bs!1876958 () Bool)

(assert (= bs!1876958 d!2204789))

(declare-fun m!7772828 () Bool)

(assert (=> bs!1876958 m!7772828))

(assert (=> start!684174 d!2204789))

(declare-fun bs!1876959 () Bool)

(declare-fun d!2204791 () Bool)

(assert (= bs!1876959 (and d!2204791 b!7055003)))

(declare-fun lambda!420226 () Int)

(assert (=> bs!1876959 (= lambda!420226 lambda!420162)))

(declare-fun bs!1876960 () Bool)

(assert (= bs!1876960 (and d!2204791 d!2204739)))

(assert (=> bs!1876960 (= lambda!420226 lambda!420210)))

(declare-fun bs!1876961 () Bool)

(assert (= bs!1876961 (and d!2204791 d!2204747)))

(assert (=> bs!1876961 (= lambda!420226 lambda!420211)))

(assert (=> d!2204791 (= (inv!86785 ct2!306) (forall!16515 (exprs!7066 ct2!306) lambda!420226))))

(declare-fun bs!1876962 () Bool)

(assert (= bs!1876962 d!2204791))

(declare-fun m!7772830 () Bool)

(assert (=> bs!1876962 m!7772830))

(assert (=> start!684174 d!2204791))

(assert (=> b!7055015 d!2204735))

(assert (=> b!7055007 d!2204769))

(assert (=> b!7055007 d!2204743))

(declare-fun d!2204793 () Bool)

(assert (=> d!2204793 (= (isEmpty!39727 (exprs!7066 lt!2531713)) (is-Nil!68112 (exprs!7066 lt!2531713)))))

(assert (=> b!7055006 d!2204793))

(declare-fun condSetEmpty!49846 () Bool)

(assert (=> setNonEmpty!49840 (= condSetEmpty!49846 (= setRest!49840 (as set.empty (Set Context!13132))))))

(declare-fun setRes!49846 () Bool)

(assert (=> setNonEmpty!49840 (= tp!1940124 setRes!49846)))

(declare-fun setIsEmpty!49846 () Bool)

(assert (=> setIsEmpty!49846 setRes!49846))

(declare-fun setNonEmpty!49846 () Bool)

(declare-fun tp!1940142 () Bool)

(declare-fun e!4241436 () Bool)

(declare-fun setElem!49846 () Context!13132)

(assert (=> setNonEmpty!49846 (= setRes!49846 (and tp!1940142 (inv!86785 setElem!49846) e!4241436))))

(declare-fun setRest!49846 () (Set Context!13132))

(assert (=> setNonEmpty!49846 (= setRest!49840 (set.union (set.insert setElem!49846 (as set.empty (Set Context!13132))) setRest!49846))))

(declare-fun b!7055196 () Bool)

(declare-fun tp!1940141 () Bool)

(assert (=> b!7055196 (= e!4241436 tp!1940141)))

(assert (= (and setNonEmpty!49840 condSetEmpty!49846) setIsEmpty!49846))

(assert (= (and setNonEmpty!49840 (not condSetEmpty!49846)) setNonEmpty!49846))

(assert (= setNonEmpty!49846 b!7055196))

(declare-fun m!7772832 () Bool)

(assert (=> setNonEmpty!49846 m!7772832))

(declare-fun b!7055201 () Bool)

(declare-fun e!4241439 () Bool)

(declare-fun tp!1940145 () Bool)

(assert (=> b!7055201 (= e!4241439 (and tp_is_empty!44365 tp!1940145))))

(assert (=> b!7055002 (= tp!1940121 e!4241439)))

(assert (= (and b!7055002 (is-Cons!68113 (t!382016 s!7408))) b!7055201))

(declare-fun b!7055206 () Bool)

(declare-fun e!4241442 () Bool)

(declare-fun tp!1940150 () Bool)

(declare-fun tp!1940151 () Bool)

(assert (=> b!7055206 (= e!4241442 (and tp!1940150 tp!1940151))))

(assert (=> b!7055009 (= tp!1940122 e!4241442)))

(assert (= (and b!7055009 (is-Cons!68112 (exprs!7066 ct2!306))) b!7055206))

(declare-fun b!7055207 () Bool)

(declare-fun e!4241443 () Bool)

(declare-fun tp!1940152 () Bool)

(declare-fun tp!1940153 () Bool)

(assert (=> b!7055207 (= e!4241443 (and tp!1940152 tp!1940153))))

(assert (=> b!7055016 (= tp!1940123 e!4241443)))

(assert (= (and b!7055016 (is-Cons!68112 (exprs!7066 setElem!49840))) b!7055207))

(declare-fun b_lambda!268667 () Bool)

(assert (= b_lambda!268659 (or b!7055003 b_lambda!268667)))

(declare-fun bs!1876963 () Bool)

(declare-fun d!2204795 () Bool)

(assert (= bs!1876963 (and d!2204795 b!7055003)))

(declare-fun lt!2531863 () Unit!161813)

(assert (=> bs!1876963 (= lt!2531863 (lemmaConcatPreservesForall!881 (exprs!7066 lt!2531842) (exprs!7066 ct2!306) lambda!420162))))

(assert (=> bs!1876963 (= (dynLambda!27636 lambda!420161 lt!2531842) (Context!13133 (++!15653 (exprs!7066 lt!2531842) (exprs!7066 ct2!306))))))

(declare-fun m!7772834 () Bool)

(assert (=> bs!1876963 m!7772834))

(declare-fun m!7772836 () Bool)

(assert (=> bs!1876963 m!7772836))

(assert (=> d!2204737 d!2204795))

(declare-fun b_lambda!268669 () Bool)

(assert (= b_lambda!268663 (or b!7055013 b_lambda!268669)))

(declare-fun bs!1876964 () Bool)

(declare-fun d!2204797 () Bool)

(assert (= bs!1876964 (and d!2204797 b!7055013)))

(assert (=> bs!1876964 (= (dynLambda!27639 lambda!420160 lt!2531849) (matchZipper!3110 (set.insert lt!2531849 (as set.empty (Set Context!13132))) s!7408))))

(declare-fun m!7772838 () Bool)

(assert (=> bs!1876964 m!7772838))

(assert (=> bs!1876964 m!7772838))

(declare-fun m!7772840 () Bool)

(assert (=> bs!1876964 m!7772840))

(assert (=> d!2204753 d!2204797))

(declare-fun b_lambda!268671 () Bool)

(assert (= b_lambda!268665 (or b!7055011 b_lambda!268671)))

(declare-fun bs!1876965 () Bool)

(declare-fun d!2204799 () Bool)

(assert (= bs!1876965 (and d!2204799 b!7055011)))

(assert (=> bs!1876965 (= (dynLambda!27637 lambda!420163 lt!2531708) (derivationStepZipperUp!2154 lt!2531708 (h!74561 s!7408)))))

(assert (=> bs!1876965 m!7772526))

(assert (=> d!2204763 d!2204799))

(declare-fun b_lambda!268673 () Bool)

(assert (= b_lambda!268661 (or b!7055011 b_lambda!268673)))

(declare-fun bs!1876966 () Bool)

(declare-fun d!2204801 () Bool)

(assert (= bs!1876966 (and d!2204801 b!7055011)))

(assert (=> bs!1876966 (= (dynLambda!27637 lambda!420163 lt!2531705) (derivationStepZipperUp!2154 lt!2531705 (h!74561 s!7408)))))

(assert (=> bs!1876966 m!7772554))

(assert (=> d!2204741 d!2204801))

(push 1)

(assert (not b!7055206))

(assert (not b!7055181))

(assert (not d!2204789))

(assert (not b!7055201))

(assert (not b!7055133))

(assert (not b!7055142))

(assert (not b!7055146))

(assert (not bs!1876963))

(assert (not b!7055099))

(assert (not b!7055187))

(assert (not d!2204769))

(assert (not d!2204733))

(assert (not b_lambda!268669))

(assert (not b!7055117))

(assert (not d!2204759))

(assert (not d!2204751))

(assert (not d!2204735))

(assert (not d!2204745))

(assert (not b!7055189))

(assert (not b!7055128))

(assert (not d!2204739))

(assert (not bs!1876966))

(assert (not bs!1876965))

(assert (not bm!640906))

(assert (not d!2204787))

(assert (not d!2204753))

(assert (not b!7055134))

(assert (not bs!1876964))

(assert (not b!7055182))

(assert (not d!2204755))

(assert (not d!2204779))

(assert (not d!2204791))

(assert (not d!2204743))

(assert (not b!7055116))

(assert (not b!7055143))

(assert (not bm!640908))

(assert (not d!2204737))

(assert (not d!2204781))

(assert tp_is_empty!44365)

(assert (not b!7055196))

(assert (not bm!640890))

(assert (not b_lambda!268671))

(assert (not d!2204775))

(assert (not b_lambda!268673))

(assert (not d!2204783))

(assert (not b!7055188))

(assert (not d!2204767))

(assert (not d!2204763))

(assert (not d!2204765))

(assert (not d!2204777))

(assert (not bm!640905))

(assert (not b!7055145))

(assert (not b!7055135))

(assert (not b!7055184))

(assert (not d!2204771))

(assert (not d!2204747))

(assert (not d!2204741))

(assert (not d!2204757))

(assert (not b!7055183))

(assert (not bm!640889))

(assert (not setNonEmpty!49846))

(assert (not b!7055207))

(assert (not b!7055190))

(assert (not b_lambda!268667))

(assert (not b!7055171))

(assert (not b!7055100))

(assert (not b!7055191))

(assert (not b!7055136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

