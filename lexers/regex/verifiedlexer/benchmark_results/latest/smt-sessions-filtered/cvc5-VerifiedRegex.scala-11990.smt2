; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671776 () Bool)

(assert start!671776)

(declare-fun b!6990325 () Bool)

(assert (=> b!6990325 true))

(declare-fun b!6990330 () Bool)

(assert (=> b!6990330 true))

(declare-fun b!6990326 () Bool)

(assert (=> b!6990326 true))

(declare-fun b!6990311 () Bool)

(declare-fun e!4201575 () Bool)

(declare-fun tp!1929829 () Bool)

(assert (=> b!6990311 (= e!4201575 tp!1929829)))

(declare-fun res!2850879 () Bool)

(declare-fun e!4201581 () Bool)

(assert (=> start!671776 (=> (not res!2850879) (not e!4201581))))

(declare-datatypes ((C!34722 0))(
  ( (C!34723 (val!27063 Int)) )
))
(declare-datatypes ((Regex!17226 0))(
  ( (ElementMatch!17226 (c!1296539 C!34722)) (Concat!26071 (regOne!34964 Regex!17226) (regTwo!34964 Regex!17226)) (EmptyExpr!17226) (Star!17226 (reg!17555 Regex!17226)) (EmptyLang!17226) (Union!17226 (regOne!34965 Regex!17226) (regTwo!34965 Regex!17226)) )
))
(declare-datatypes ((List!67223 0))(
  ( (Nil!67099) (Cons!67099 (h!73547 Regex!17226) (t!380970 List!67223)) )
))
(declare-datatypes ((Context!12444 0))(
  ( (Context!12445 (exprs!6722 List!67223)) )
))
(declare-fun lt!2487628 () (Set Context!12444))

(declare-datatypes ((List!67224 0))(
  ( (Nil!67100) (Cons!67100 (h!73548 C!34722) (t!380971 List!67224)) )
))
(declare-fun s!7408 () List!67224)

(declare-fun matchZipper!2766 ((Set Context!12444) List!67224) Bool)

(assert (=> start!671776 (= res!2850879 (matchZipper!2766 lt!2487628 s!7408))))

(declare-fun z1!570 () (Set Context!12444))

(declare-fun ct2!306 () Context!12444)

(declare-fun appendTo!347 ((Set Context!12444) Context!12444) (Set Context!12444))

(assert (=> start!671776 (= lt!2487628 (appendTo!347 z1!570 ct2!306))))

(assert (=> start!671776 e!4201581))

(declare-fun condSetEmpty!47838 () Bool)

(assert (=> start!671776 (= condSetEmpty!47838 (= z1!570 (as set.empty (Set Context!12444))))))

(declare-fun setRes!47838 () Bool)

(assert (=> start!671776 setRes!47838))

(declare-fun e!4201579 () Bool)

(declare-fun inv!85925 (Context!12444) Bool)

(assert (=> start!671776 (and (inv!85925 ct2!306) e!4201579)))

(declare-fun e!4201578 () Bool)

(assert (=> start!671776 e!4201578))

(declare-fun b!6990312 () Bool)

(declare-fun e!4201572 () Bool)

(declare-fun lt!2487617 () List!67223)

(declare-fun lambda!401959 () Int)

(declare-fun forall!16139 (List!67223 Int) Bool)

(assert (=> b!6990312 (= e!4201572 (forall!16139 lt!2487617 lambda!401959))))

(declare-fun lt!2487603 () Context!12444)

(declare-fun lt!2487611 () (Set Context!12444))

(declare-fun lambda!401960 () Int)

(declare-fun flatMap!2212 ((Set Context!12444) Int) (Set Context!12444))

(declare-fun derivationStepZipperUp!1876 (Context!12444 C!34722) (Set Context!12444))

(assert (=> b!6990312 (= (flatMap!2212 lt!2487611 lambda!401960) (derivationStepZipperUp!1876 lt!2487603 (h!73548 s!7408)))))

(declare-datatypes ((Unit!161107 0))(
  ( (Unit!161108) )
))
(declare-fun lt!2487608 () Unit!161107)

(declare-fun lemmaFlatMapOnSingletonSet!1727 ((Set Context!12444) Context!12444 Int) Unit!161107)

(assert (=> b!6990312 (= lt!2487608 (lemmaFlatMapOnSingletonSet!1727 lt!2487611 lt!2487603 lambda!401960))))

(declare-fun lambda!401958 () Int)

(declare-fun map!15486 ((Set Context!12444) Int) (Set Context!12444))

(declare-fun ++!15171 (List!67223 List!67223) List!67223)

(assert (=> b!6990312 (= (map!15486 lt!2487611 lambda!401958) (set.insert (Context!12445 (++!15171 lt!2487617 (exprs!6722 ct2!306))) (as set.empty (Set Context!12444))))))

(declare-fun lt!2487619 () Unit!161107)

(declare-fun lemmaConcatPreservesForall!562 (List!67223 List!67223 Int) Unit!161107)

(assert (=> b!6990312 (= lt!2487619 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487618 () Unit!161107)

(declare-fun lemmaMapOnSingletonSet!291 ((Set Context!12444) Context!12444 Int) Unit!161107)

(assert (=> b!6990312 (= lt!2487618 (lemmaMapOnSingletonSet!291 lt!2487611 lt!2487603 lambda!401958))))

(assert (=> b!6990312 (= lt!2487611 (set.insert lt!2487603 (as set.empty (Set Context!12444))))))

(declare-fun b!6990313 () Bool)

(declare-fun res!2850875 () Bool)

(declare-fun e!4201570 () Bool)

(assert (=> b!6990313 (=> res!2850875 e!4201570)))

(declare-fun lt!2487596 () Bool)

(assert (=> b!6990313 (= res!2850875 (not lt!2487596))))

(declare-fun setIsEmpty!47838 () Bool)

(assert (=> setIsEmpty!47838 setRes!47838))

(declare-fun b!6990314 () Bool)

(declare-fun e!4201568 () Bool)

(assert (=> b!6990314 (= e!4201568 e!4201570)))

(declare-fun res!2850886 () Bool)

(assert (=> b!6990314 (=> res!2850886 e!4201570)))

(declare-fun e!4201573 () Bool)

(assert (=> b!6990314 (= res!2850886 e!4201573)))

(declare-fun res!2850887 () Bool)

(assert (=> b!6990314 (=> (not res!2850887) (not e!4201573))))

(declare-fun lt!2487605 () Bool)

(assert (=> b!6990314 (= res!2850887 (not (= lt!2487596 lt!2487605)))))

(declare-fun lt!2487599 () (Set Context!12444))

(assert (=> b!6990314 (= lt!2487596 (matchZipper!2766 lt!2487599 (t!380971 s!7408)))))

(declare-fun lt!2487607 () Unit!161107)

(assert (=> b!6990314 (= lt!2487607 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487624 () (Set Context!12444))

(declare-fun e!4201569 () Bool)

(assert (=> b!6990314 (= (matchZipper!2766 lt!2487624 (t!380971 s!7408)) e!4201569)))

(declare-fun res!2850878 () Bool)

(assert (=> b!6990314 (=> res!2850878 e!4201569)))

(assert (=> b!6990314 (= res!2850878 lt!2487605)))

(declare-fun lt!2487626 () (Set Context!12444))

(assert (=> b!6990314 (= lt!2487605 (matchZipper!2766 lt!2487626 (t!380971 s!7408)))))

(declare-fun lt!2487597 () (Set Context!12444))

(declare-fun lt!2487632 () Unit!161107)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1399 ((Set Context!12444) (Set Context!12444) List!67224) Unit!161107)

(assert (=> b!6990314 (= lt!2487632 (lemmaZipperConcatMatchesSameAsBothZippers!1399 lt!2487626 lt!2487597 (t!380971 s!7408)))))

(declare-fun lt!2487620 () Unit!161107)

(assert (=> b!6990314 (= lt!2487620 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487633 () Unit!161107)

(assert (=> b!6990314 (= lt!2487633 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990315 () Bool)

(declare-fun e!4201576 () Bool)

(assert (=> b!6990315 (= e!4201570 e!4201576)))

(declare-fun res!2850881 () Bool)

(assert (=> b!6990315 (=> res!2850881 e!4201576)))

(assert (=> b!6990315 (= res!2850881 (not (matchZipper!2766 lt!2487597 (t!380971 s!7408))))))

(declare-fun lt!2487627 () Unit!161107)

(assert (=> b!6990315 (= lt!2487627 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990316 () Bool)

(declare-fun e!4201577 () Bool)

(assert (=> b!6990316 (= e!4201576 e!4201577)))

(declare-fun res!2850877 () Bool)

(assert (=> b!6990316 (=> res!2850877 e!4201577)))

(declare-fun lt!2487630 () (Set Context!12444))

(declare-fun derivationStepZipper!2706 ((Set Context!12444) C!34722) (Set Context!12444))

(assert (=> b!6990316 (= res!2850877 (not (= (derivationStepZipper!2706 lt!2487630 (h!73548 s!7408)) lt!2487597)))))

(declare-fun lt!2487631 () Unit!161107)

(assert (=> b!6990316 (= lt!2487631 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487600 () Unit!161107)

(assert (=> b!6990316 (= lt!2487600 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487616 () Context!12444)

(assert (=> b!6990316 (= (flatMap!2212 lt!2487630 lambda!401960) (derivationStepZipperUp!1876 lt!2487616 (h!73548 s!7408)))))

(declare-fun lt!2487622 () Unit!161107)

(assert (=> b!6990316 (= lt!2487622 (lemmaFlatMapOnSingletonSet!1727 lt!2487630 lt!2487616 lambda!401960))))

(assert (=> b!6990316 (= lt!2487630 (set.insert lt!2487616 (as set.empty (Set Context!12444))))))

(declare-fun lt!2487629 () Unit!161107)

(assert (=> b!6990316 (= lt!2487629 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487614 () Unit!161107)

(assert (=> b!6990316 (= lt!2487614 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990317 () Bool)

(assert (=> b!6990317 (= e!4201569 (matchZipper!2766 lt!2487597 (t!380971 s!7408)))))

(declare-fun b!6990318 () Bool)

(declare-fun e!4201580 () Bool)

(assert (=> b!6990318 (= e!4201580 e!4201568)))

(declare-fun res!2850888 () Bool)

(assert (=> b!6990318 (=> res!2850888 e!4201568)))

(assert (=> b!6990318 (= res!2850888 (not (= lt!2487599 lt!2487624)))))

(assert (=> b!6990318 (= lt!2487624 (set.union lt!2487626 lt!2487597))))

(assert (=> b!6990318 (= lt!2487597 (derivationStepZipperUp!1876 lt!2487616 (h!73548 s!7408)))))

(declare-fun lt!2487621 () Context!12444)

(declare-fun derivationStepZipperDown!1944 (Regex!17226 Context!12444 C!34722) (Set Context!12444))

(assert (=> b!6990318 (= lt!2487626 (derivationStepZipperDown!1944 (h!73547 (exprs!6722 lt!2487621)) lt!2487616 (h!73548 s!7408)))))

(assert (=> b!6990318 (= lt!2487616 (Context!12445 (++!15171 lt!2487617 (exprs!6722 ct2!306))))))

(declare-fun lt!2487612 () Unit!161107)

(assert (=> b!6990318 (= lt!2487612 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun lt!2487635 () Unit!161107)

(assert (=> b!6990318 (= lt!2487635 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990319 () Bool)

(declare-fun res!2850889 () Bool)

(declare-fun e!4201582 () Bool)

(assert (=> b!6990319 (=> res!2850889 e!4201582)))

(declare-fun isEmpty!39161 (List!67223) Bool)

(assert (=> b!6990319 (= res!2850889 (isEmpty!39161 (exprs!6722 lt!2487621)))))

(declare-fun b!6990320 () Bool)

(declare-fun tp_is_empty!43677 () Bool)

(declare-fun tp!1929827 () Bool)

(assert (=> b!6990320 (= e!4201578 (and tp_is_empty!43677 tp!1929827))))

(declare-fun b!6990321 () Bool)

(assert (=> b!6990321 (= e!4201577 e!4201572)))

(declare-fun res!2850891 () Bool)

(assert (=> b!6990321 (=> res!2850891 e!4201572)))

(assert (=> b!6990321 (= res!2850891 (not (matchZipper!2766 lt!2487630 s!7408)))))

(declare-fun lt!2487615 () Unit!161107)

(assert (=> b!6990321 (= lt!2487615 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990322 () Bool)

(declare-fun e!4201567 () Bool)

(declare-fun e!4201571 () Bool)

(assert (=> b!6990322 (= e!4201567 e!4201571)))

(declare-fun res!2850884 () Bool)

(assert (=> b!6990322 (=> res!2850884 e!4201571)))

(declare-fun lt!2487602 () (Set Context!12444))

(declare-fun lt!2487613 () (Set Context!12444))

(assert (=> b!6990322 (= res!2850884 (not (= lt!2487602 lt!2487613)))))

(declare-fun lt!2487625 () Context!12444)

(assert (=> b!6990322 (= lt!2487602 (set.insert lt!2487625 (as set.empty (Set Context!12444))))))

(declare-fun lt!2487634 () Unit!161107)

(assert (=> b!6990322 (= lt!2487634 (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487621) (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990323 () Bool)

(declare-fun res!2850876 () Bool)

(assert (=> b!6990323 (=> res!2850876 e!4201582)))

(assert (=> b!6990323 (= res!2850876 (not (is-Cons!67099 (exprs!6722 lt!2487621))))))

(declare-fun b!6990324 () Bool)

(declare-fun res!2850890 () Bool)

(declare-fun e!4201574 () Bool)

(assert (=> b!6990324 (=> res!2850890 e!4201574)))

(declare-fun lt!2487609 () Context!12444)

(assert (=> b!6990324 (= res!2850890 (not (set.member lt!2487609 lt!2487628)))))

(assert (=> b!6990325 (= e!4201581 (not e!4201574))))

(declare-fun res!2850892 () Bool)

(assert (=> b!6990325 (=> res!2850892 e!4201574)))

(assert (=> b!6990325 (= res!2850892 (not (matchZipper!2766 lt!2487613 s!7408)))))

(assert (=> b!6990325 (= lt!2487613 (set.insert lt!2487609 (as set.empty (Set Context!12444))))))

(declare-fun lambda!401957 () Int)

(declare-fun getWitness!1126 ((Set Context!12444) Int) Context!12444)

(assert (=> b!6990325 (= lt!2487609 (getWitness!1126 lt!2487628 lambda!401957))))

(declare-datatypes ((List!67225 0))(
  ( (Nil!67101) (Cons!67101 (h!73549 Context!12444) (t!380972 List!67225)) )
))
(declare-fun lt!2487598 () List!67225)

(declare-fun exists!3015 (List!67225 Int) Bool)

(assert (=> b!6990325 (exists!3015 lt!2487598 lambda!401957)))

(declare-fun lt!2487623 () Unit!161107)

(declare-fun lemmaZipperMatchesExistsMatchingContext!195 (List!67225 List!67224) Unit!161107)

(assert (=> b!6990325 (= lt!2487623 (lemmaZipperMatchesExistsMatchingContext!195 lt!2487598 s!7408))))

(declare-fun toList!10586 ((Set Context!12444)) List!67225)

(assert (=> b!6990325 (= lt!2487598 (toList!10586 lt!2487628))))

(declare-fun setNonEmpty!47838 () Bool)

(declare-fun setElem!47838 () Context!12444)

(declare-fun tp!1929828 () Bool)

(assert (=> setNonEmpty!47838 (= setRes!47838 (and tp!1929828 (inv!85925 setElem!47838) e!4201575))))

(declare-fun setRest!47838 () (Set Context!12444))

(assert (=> setNonEmpty!47838 (= z1!570 (set.union (set.insert setElem!47838 (as set.empty (Set Context!12444))) setRest!47838))))

(assert (=> b!6990326 (= e!4201571 e!4201582)))

(declare-fun res!2850883 () Bool)

(assert (=> b!6990326 (=> res!2850883 e!4201582)))

(assert (=> b!6990326 (= res!2850883 (not (= (derivationStepZipper!2706 lt!2487602 (h!73548 s!7408)) lt!2487599)))))

(assert (=> b!6990326 (= (flatMap!2212 lt!2487602 lambda!401960) (derivationStepZipperUp!1876 lt!2487625 (h!73548 s!7408)))))

(declare-fun lt!2487606 () Unit!161107)

(assert (=> b!6990326 (= lt!2487606 (lemmaFlatMapOnSingletonSet!1727 lt!2487602 lt!2487625 lambda!401960))))

(assert (=> b!6990326 (= lt!2487599 (derivationStepZipperUp!1876 lt!2487625 (h!73548 s!7408)))))

(declare-fun lt!2487604 () Unit!161107)

(assert (=> b!6990326 (= lt!2487604 (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487621) (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990327 () Bool)

(assert (=> b!6990327 (= e!4201573 (not (matchZipper!2766 lt!2487597 (t!380971 s!7408))))))

(declare-fun lt!2487610 () Unit!161107)

(assert (=> b!6990327 (= lt!2487610 (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(declare-fun b!6990328 () Bool)

(declare-fun res!2850885 () Bool)

(assert (=> b!6990328 (=> (not res!2850885) (not e!4201581))))

(assert (=> b!6990328 (= res!2850885 (is-Cons!67100 s!7408))))

(declare-fun b!6990329 () Bool)

(assert (=> b!6990329 (= e!4201582 e!4201580)))

(declare-fun res!2850880 () Bool)

(assert (=> b!6990329 (=> res!2850880 e!4201580)))

(declare-fun nullable!6986 (Regex!17226) Bool)

(assert (=> b!6990329 (= res!2850880 (not (nullable!6986 (h!73547 (exprs!6722 lt!2487621)))))))

(assert (=> b!6990329 (= lt!2487603 (Context!12445 lt!2487617))))

(declare-fun tail!13237 (List!67223) List!67223)

(assert (=> b!6990329 (= lt!2487617 (tail!13237 (exprs!6722 lt!2487621)))))

(assert (=> b!6990330 (= e!4201574 e!4201567)))

(declare-fun res!2850882 () Bool)

(assert (=> b!6990330 (=> res!2850882 e!4201567)))

(assert (=> b!6990330 (= res!2850882 (or (not (= lt!2487625 lt!2487609)) (not (set.member lt!2487621 z1!570))))))

(assert (=> b!6990330 (= lt!2487625 (Context!12445 (++!15171 (exprs!6722 lt!2487621) (exprs!6722 ct2!306))))))

(declare-fun lt!2487601 () Unit!161107)

(assert (=> b!6990330 (= lt!2487601 (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487621) (exprs!6722 ct2!306) lambda!401959))))

(declare-fun mapPost2!81 ((Set Context!12444) Int Context!12444) Context!12444)

(assert (=> b!6990330 (= lt!2487621 (mapPost2!81 z1!570 lambda!401958 lt!2487609))))

(declare-fun b!6990331 () Bool)

(declare-fun tp!1929830 () Bool)

(assert (=> b!6990331 (= e!4201579 tp!1929830)))

(assert (= (and start!671776 res!2850879) b!6990328))

(assert (= (and b!6990328 res!2850885) b!6990325))

(assert (= (and b!6990325 (not res!2850892)) b!6990324))

(assert (= (and b!6990324 (not res!2850890)) b!6990330))

(assert (= (and b!6990330 (not res!2850882)) b!6990322))

(assert (= (and b!6990322 (not res!2850884)) b!6990326))

(assert (= (and b!6990326 (not res!2850883)) b!6990323))

(assert (= (and b!6990323 (not res!2850876)) b!6990319))

(assert (= (and b!6990319 (not res!2850889)) b!6990329))

(assert (= (and b!6990329 (not res!2850880)) b!6990318))

(assert (= (and b!6990318 (not res!2850888)) b!6990314))

(assert (= (and b!6990314 (not res!2850878)) b!6990317))

(assert (= (and b!6990314 res!2850887) b!6990327))

(assert (= (and b!6990314 (not res!2850886)) b!6990313))

(assert (= (and b!6990313 (not res!2850875)) b!6990315))

(assert (= (and b!6990315 (not res!2850881)) b!6990316))

(assert (= (and b!6990316 (not res!2850877)) b!6990321))

(assert (= (and b!6990321 (not res!2850891)) b!6990312))

(assert (= (and start!671776 condSetEmpty!47838) setIsEmpty!47838))

(assert (= (and start!671776 (not condSetEmpty!47838)) setNonEmpty!47838))

(assert (= setNonEmpty!47838 b!6990311))

(assert (= start!671776 b!6990331))

(assert (= (and start!671776 (is-Cons!67100 s!7408)) b!6990320))

(declare-fun m!7679096 () Bool)

(assert (=> b!6990327 m!7679096))

(declare-fun m!7679098 () Bool)

(assert (=> b!6990327 m!7679098))

(declare-fun m!7679100 () Bool)

(assert (=> b!6990322 m!7679100))

(declare-fun m!7679102 () Bool)

(assert (=> b!6990322 m!7679102))

(declare-fun m!7679104 () Bool)

(assert (=> b!6990324 m!7679104))

(declare-fun m!7679106 () Bool)

(assert (=> setNonEmpty!47838 m!7679106))

(declare-fun m!7679108 () Bool)

(assert (=> b!6990326 m!7679108))

(declare-fun m!7679110 () Bool)

(assert (=> b!6990326 m!7679110))

(declare-fun m!7679112 () Bool)

(assert (=> b!6990326 m!7679112))

(assert (=> b!6990326 m!7679102))

(declare-fun m!7679114 () Bool)

(assert (=> b!6990326 m!7679114))

(assert (=> b!6990315 m!7679096))

(assert (=> b!6990315 m!7679098))

(assert (=> b!6990316 m!7679098))

(assert (=> b!6990316 m!7679098))

(declare-fun m!7679116 () Bool)

(assert (=> b!6990316 m!7679116))

(declare-fun m!7679118 () Bool)

(assert (=> b!6990316 m!7679118))

(declare-fun m!7679120 () Bool)

(assert (=> b!6990316 m!7679120))

(declare-fun m!7679122 () Bool)

(assert (=> b!6990316 m!7679122))

(declare-fun m!7679124 () Bool)

(assert (=> b!6990316 m!7679124))

(assert (=> b!6990316 m!7679098))

(assert (=> b!6990316 m!7679098))

(declare-fun m!7679126 () Bool)

(assert (=> b!6990325 m!7679126))

(declare-fun m!7679128 () Bool)

(assert (=> b!6990325 m!7679128))

(declare-fun m!7679130 () Bool)

(assert (=> b!6990325 m!7679130))

(declare-fun m!7679132 () Bool)

(assert (=> b!6990325 m!7679132))

(declare-fun m!7679134 () Bool)

(assert (=> b!6990325 m!7679134))

(declare-fun m!7679136 () Bool)

(assert (=> b!6990325 m!7679136))

(declare-fun m!7679138 () Bool)

(assert (=> b!6990312 m!7679138))

(declare-fun m!7679140 () Bool)

(assert (=> b!6990312 m!7679140))

(declare-fun m!7679142 () Bool)

(assert (=> b!6990312 m!7679142))

(declare-fun m!7679144 () Bool)

(assert (=> b!6990312 m!7679144))

(assert (=> b!6990312 m!7679098))

(declare-fun m!7679146 () Bool)

(assert (=> b!6990312 m!7679146))

(declare-fun m!7679148 () Bool)

(assert (=> b!6990312 m!7679148))

(declare-fun m!7679150 () Bool)

(assert (=> b!6990312 m!7679150))

(declare-fun m!7679152 () Bool)

(assert (=> b!6990312 m!7679152))

(declare-fun m!7679154 () Bool)

(assert (=> b!6990312 m!7679154))

(assert (=> b!6990318 m!7679098))

(declare-fun m!7679156 () Bool)

(assert (=> b!6990318 m!7679156))

(assert (=> b!6990318 m!7679098))

(assert (=> b!6990318 m!7679144))

(assert (=> b!6990318 m!7679124))

(declare-fun m!7679158 () Bool)

(assert (=> b!6990321 m!7679158))

(assert (=> b!6990321 m!7679098))

(declare-fun m!7679160 () Bool)

(assert (=> start!671776 m!7679160))

(declare-fun m!7679162 () Bool)

(assert (=> start!671776 m!7679162))

(declare-fun m!7679164 () Bool)

(assert (=> start!671776 m!7679164))

(declare-fun m!7679166 () Bool)

(assert (=> b!6990319 m!7679166))

(declare-fun m!7679168 () Bool)

(assert (=> b!6990314 m!7679168))

(assert (=> b!6990314 m!7679098))

(declare-fun m!7679170 () Bool)

(assert (=> b!6990314 m!7679170))

(declare-fun m!7679172 () Bool)

(assert (=> b!6990314 m!7679172))

(declare-fun m!7679174 () Bool)

(assert (=> b!6990314 m!7679174))

(assert (=> b!6990314 m!7679098))

(assert (=> b!6990314 m!7679098))

(declare-fun m!7679176 () Bool)

(assert (=> b!6990329 m!7679176))

(declare-fun m!7679178 () Bool)

(assert (=> b!6990329 m!7679178))

(declare-fun m!7679180 () Bool)

(assert (=> b!6990330 m!7679180))

(declare-fun m!7679182 () Bool)

(assert (=> b!6990330 m!7679182))

(assert (=> b!6990330 m!7679102))

(declare-fun m!7679184 () Bool)

(assert (=> b!6990330 m!7679184))

(assert (=> b!6990317 m!7679096))

(push 1)

(assert tp_is_empty!43677)

(assert (not b!6990311))

(assert (not start!671776))

(assert (not b!6990314))

(assert (not b!6990329))

(assert (not b!6990316))

(assert (not setNonEmpty!47838))

(assert (not b!6990317))

(assert (not b!6990331))

(assert (not b!6990330))

(assert (not b!6990320))

(assert (not b!6990326))

(assert (not b!6990319))

(assert (not b!6990325))

(assert (not b!6990315))

(assert (not b!6990321))

(assert (not b!6990322))

(assert (not b!6990312))

(assert (not b!6990327))

(assert (not b!6990318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177371 () Bool)

(assert (=> d!2177371 (= (isEmpty!39161 (exprs!6722 lt!2487621)) (is-Nil!67099 (exprs!6722 lt!2487621)))))

(assert (=> b!6990319 d!2177371))

(declare-fun b!6990417 () Bool)

(declare-fun e!4201639 () (Set Context!12444))

(declare-fun e!4201637 () (Set Context!12444))

(assert (=> b!6990417 (= e!4201639 e!4201637)))

(declare-fun c!1296559 () Bool)

(assert (=> b!6990417 (= c!1296559 (is-Cons!67099 (exprs!6722 lt!2487616)))))

(declare-fun bm!634573 () Bool)

(declare-fun call!634578 () (Set Context!12444))

(assert (=> bm!634573 (= call!634578 (derivationStepZipperDown!1944 (h!73547 (exprs!6722 lt!2487616)) (Context!12445 (t!380970 (exprs!6722 lt!2487616))) (h!73548 s!7408)))))

(declare-fun b!6990418 () Bool)

(assert (=> b!6990418 (= e!4201637 call!634578)))

(declare-fun d!2177373 () Bool)

(declare-fun c!1296560 () Bool)

(declare-fun e!4201638 () Bool)

(assert (=> d!2177373 (= c!1296560 e!4201638)))

(declare-fun res!2850950 () Bool)

(assert (=> d!2177373 (=> (not res!2850950) (not e!4201638))))

(assert (=> d!2177373 (= res!2850950 (is-Cons!67099 (exprs!6722 lt!2487616)))))

(assert (=> d!2177373 (= (derivationStepZipperUp!1876 lt!2487616 (h!73548 s!7408)) e!4201639)))

(declare-fun b!6990419 () Bool)

(assert (=> b!6990419 (= e!4201639 (set.union call!634578 (derivationStepZipperUp!1876 (Context!12445 (t!380970 (exprs!6722 lt!2487616))) (h!73548 s!7408))))))

(declare-fun b!6990420 () Bool)

(assert (=> b!6990420 (= e!4201638 (nullable!6986 (h!73547 (exprs!6722 lt!2487616))))))

(declare-fun b!6990421 () Bool)

(assert (=> b!6990421 (= e!4201637 (as set.empty (Set Context!12444)))))

(assert (= (and d!2177373 res!2850950) b!6990420))

(assert (= (and d!2177373 c!1296560) b!6990419))

(assert (= (and d!2177373 (not c!1296560)) b!6990417))

(assert (= (and b!6990417 c!1296559) b!6990418))

(assert (= (and b!6990417 (not c!1296559)) b!6990421))

(assert (= (or b!6990419 b!6990418) bm!634573))

(declare-fun m!7679276 () Bool)

(assert (=> bm!634573 m!7679276))

(declare-fun m!7679278 () Bool)

(assert (=> b!6990419 m!7679278))

(declare-fun m!7679280 () Bool)

(assert (=> b!6990420 m!7679280))

(assert (=> b!6990318 d!2177373))

(declare-fun bm!634586 () Bool)

(declare-fun call!634596 () (Set Context!12444))

(declare-fun call!634591 () (Set Context!12444))

(assert (=> bm!634586 (= call!634596 call!634591)))

(declare-fun b!6990444 () Bool)

(declare-fun c!1296575 () Bool)

(declare-fun e!4201654 () Bool)

(assert (=> b!6990444 (= c!1296575 e!4201654)))

(declare-fun res!2850953 () Bool)

(assert (=> b!6990444 (=> (not res!2850953) (not e!4201654))))

(assert (=> b!6990444 (= res!2850953 (is-Concat!26071 (h!73547 (exprs!6722 lt!2487621))))))

(declare-fun e!4201656 () (Set Context!12444))

(declare-fun e!4201652 () (Set Context!12444))

(assert (=> b!6990444 (= e!4201656 e!4201652)))

(declare-fun b!6990445 () Bool)

(declare-fun e!4201657 () (Set Context!12444))

(assert (=> b!6990445 (= e!4201657 e!4201656)))

(declare-fun c!1296572 () Bool)

(assert (=> b!6990445 (= c!1296572 (is-Union!17226 (h!73547 (exprs!6722 lt!2487621))))))

(declare-fun b!6990446 () Bool)

(assert (=> b!6990446 (= e!4201657 (set.insert lt!2487616 (as set.empty (Set Context!12444))))))

(declare-fun b!6990447 () Bool)

(assert (=> b!6990447 (= e!4201654 (nullable!6986 (regOne!34964 (h!73547 (exprs!6722 lt!2487621)))))))

(declare-fun b!6990448 () Bool)

(declare-fun e!4201655 () (Set Context!12444))

(assert (=> b!6990448 (= e!4201655 (as set.empty (Set Context!12444)))))

(declare-fun call!634594 () List!67223)

(declare-fun c!1296574 () Bool)

(declare-fun bm!634588 () Bool)

(declare-fun $colon$colon!2485 (List!67223 Regex!17226) List!67223)

(assert (=> bm!634588 (= call!634594 ($colon$colon!2485 (exprs!6722 lt!2487616) (ite (or c!1296575 c!1296574) (regTwo!34964 (h!73547 (exprs!6722 lt!2487621))) (h!73547 (exprs!6722 lt!2487621)))))))

(declare-fun b!6990449 () Bool)

(declare-fun c!1296571 () Bool)

(assert (=> b!6990449 (= c!1296571 (is-Star!17226 (h!73547 (exprs!6722 lt!2487621))))))

(declare-fun e!4201653 () (Set Context!12444))

(assert (=> b!6990449 (= e!4201653 e!4201655)))

(declare-fun b!6990450 () Bool)

(assert (=> b!6990450 (= e!4201652 e!4201653)))

(assert (=> b!6990450 (= c!1296574 (is-Concat!26071 (h!73547 (exprs!6722 lt!2487621))))))

(declare-fun bm!634589 () Bool)

(declare-fun call!634592 () (Set Context!12444))

(assert (=> bm!634589 (= call!634591 call!634592)))

(declare-fun b!6990451 () Bool)

(assert (=> b!6990451 (= e!4201655 call!634596)))

(declare-fun bm!634590 () Bool)

(declare-fun call!634595 () List!67223)

(assert (=> bm!634590 (= call!634595 call!634594)))

(declare-fun b!6990452 () Bool)

(declare-fun call!634593 () (Set Context!12444))

(assert (=> b!6990452 (= e!4201652 (set.union call!634593 call!634591))))

(declare-fun b!6990453 () Bool)

(assert (=> b!6990453 (= e!4201656 (set.union call!634592 call!634593))))

(declare-fun bm!634591 () Bool)

(assert (=> bm!634591 (= call!634593 (derivationStepZipperDown!1944 (ite c!1296572 (regTwo!34965 (h!73547 (exprs!6722 lt!2487621))) (regOne!34964 (h!73547 (exprs!6722 lt!2487621)))) (ite c!1296572 lt!2487616 (Context!12445 call!634594)) (h!73548 s!7408)))))

(declare-fun b!6990454 () Bool)

(assert (=> b!6990454 (= e!4201653 call!634596)))

(declare-fun d!2177375 () Bool)

(declare-fun c!1296573 () Bool)

(assert (=> d!2177375 (= c!1296573 (and (is-ElementMatch!17226 (h!73547 (exprs!6722 lt!2487621))) (= (c!1296539 (h!73547 (exprs!6722 lt!2487621))) (h!73548 s!7408))))))

(assert (=> d!2177375 (= (derivationStepZipperDown!1944 (h!73547 (exprs!6722 lt!2487621)) lt!2487616 (h!73548 s!7408)) e!4201657)))

(declare-fun bm!634587 () Bool)

(assert (=> bm!634587 (= call!634592 (derivationStepZipperDown!1944 (ite c!1296572 (regOne!34965 (h!73547 (exprs!6722 lt!2487621))) (ite c!1296575 (regTwo!34964 (h!73547 (exprs!6722 lt!2487621))) (ite c!1296574 (regOne!34964 (h!73547 (exprs!6722 lt!2487621))) (reg!17555 (h!73547 (exprs!6722 lt!2487621)))))) (ite (or c!1296572 c!1296575) lt!2487616 (Context!12445 call!634595)) (h!73548 s!7408)))))

(assert (= (and d!2177375 c!1296573) b!6990446))

(assert (= (and d!2177375 (not c!1296573)) b!6990445))

(assert (= (and b!6990445 c!1296572) b!6990453))

(assert (= (and b!6990445 (not c!1296572)) b!6990444))

(assert (= (and b!6990444 res!2850953) b!6990447))

(assert (= (and b!6990444 c!1296575) b!6990452))

(assert (= (and b!6990444 (not c!1296575)) b!6990450))

(assert (= (and b!6990450 c!1296574) b!6990454))

(assert (= (and b!6990450 (not c!1296574)) b!6990449))

(assert (= (and b!6990449 c!1296571) b!6990451))

(assert (= (and b!6990449 (not c!1296571)) b!6990448))

(assert (= (or b!6990454 b!6990451) bm!634590))

(assert (= (or b!6990454 b!6990451) bm!634586))

(assert (= (or b!6990452 bm!634586) bm!634589))

(assert (= (or b!6990452 bm!634590) bm!634588))

(assert (= (or b!6990453 bm!634589) bm!634587))

(assert (= (or b!6990453 b!6990452) bm!634591))

(declare-fun m!7679282 () Bool)

(assert (=> bm!634587 m!7679282))

(declare-fun m!7679284 () Bool)

(assert (=> bm!634591 m!7679284))

(declare-fun m!7679286 () Bool)

(assert (=> b!6990447 m!7679286))

(declare-fun m!7679288 () Bool)

(assert (=> bm!634588 m!7679288))

(assert (=> b!6990446 m!7679122))

(assert (=> b!6990318 d!2177375))

(declare-fun d!2177377 () Bool)

(assert (=> d!2177377 (forall!16139 (++!15171 lt!2487617 (exprs!6722 ct2!306)) lambda!401959)))

(declare-fun lt!2487762 () Unit!161107)

(declare-fun choose!52262 (List!67223 List!67223 Int) Unit!161107)

(assert (=> d!2177377 (= lt!2487762 (choose!52262 lt!2487617 (exprs!6722 ct2!306) lambda!401959))))

(assert (=> d!2177377 (forall!16139 lt!2487617 lambda!401959)))

(assert (=> d!2177377 (= (lemmaConcatPreservesForall!562 lt!2487617 (exprs!6722 ct2!306) lambda!401959) lt!2487762)))

(declare-fun bs!1862231 () Bool)

(assert (= bs!1862231 d!2177377))

(assert (=> bs!1862231 m!7679144))

(assert (=> bs!1862231 m!7679144))

(declare-fun m!7679290 () Bool)

(assert (=> bs!1862231 m!7679290))

(declare-fun m!7679292 () Bool)

(assert (=> bs!1862231 m!7679292))

(assert (=> bs!1862231 m!7679150))

(assert (=> b!6990318 d!2177377))

(declare-fun d!2177379 () Bool)

(declare-fun e!4201662 () Bool)

(assert (=> d!2177379 e!4201662))

(declare-fun res!2850959 () Bool)

(assert (=> d!2177379 (=> (not res!2850959) (not e!4201662))))

(declare-fun lt!2487765 () List!67223)

(declare-fun content!13260 (List!67223) (Set Regex!17226))

(assert (=> d!2177379 (= res!2850959 (= (content!13260 lt!2487765) (set.union (content!13260 lt!2487617) (content!13260 (exprs!6722 ct2!306)))))))

(declare-fun e!4201663 () List!67223)

(assert (=> d!2177379 (= lt!2487765 e!4201663)))

(declare-fun c!1296578 () Bool)

(assert (=> d!2177379 (= c!1296578 (is-Nil!67099 lt!2487617))))

(assert (=> d!2177379 (= (++!15171 lt!2487617 (exprs!6722 ct2!306)) lt!2487765)))

(declare-fun b!6990464 () Bool)

(assert (=> b!6990464 (= e!4201663 (Cons!67099 (h!73547 lt!2487617) (++!15171 (t!380970 lt!2487617) (exprs!6722 ct2!306))))))

(declare-fun b!6990465 () Bool)

(declare-fun res!2850958 () Bool)

(assert (=> b!6990465 (=> (not res!2850958) (not e!4201662))))

(declare-fun size!40905 (List!67223) Int)

(assert (=> b!6990465 (= res!2850958 (= (size!40905 lt!2487765) (+ (size!40905 lt!2487617) (size!40905 (exprs!6722 ct2!306)))))))

(declare-fun b!6990463 () Bool)

(assert (=> b!6990463 (= e!4201663 (exprs!6722 ct2!306))))

(declare-fun b!6990466 () Bool)

(assert (=> b!6990466 (= e!4201662 (or (not (= (exprs!6722 ct2!306) Nil!67099)) (= lt!2487765 lt!2487617)))))

(assert (= (and d!2177379 c!1296578) b!6990463))

(assert (= (and d!2177379 (not c!1296578)) b!6990464))

(assert (= (and d!2177379 res!2850959) b!6990465))

(assert (= (and b!6990465 res!2850958) b!6990466))

(declare-fun m!7679294 () Bool)

(assert (=> d!2177379 m!7679294))

(declare-fun m!7679296 () Bool)

(assert (=> d!2177379 m!7679296))

(declare-fun m!7679298 () Bool)

(assert (=> d!2177379 m!7679298))

(declare-fun m!7679300 () Bool)

(assert (=> b!6990464 m!7679300))

(declare-fun m!7679302 () Bool)

(assert (=> b!6990465 m!7679302))

(declare-fun m!7679304 () Bool)

(assert (=> b!6990465 m!7679304))

(declare-fun m!7679306 () Bool)

(assert (=> b!6990465 m!7679306))

(assert (=> b!6990318 d!2177379))

(declare-fun d!2177381 () Bool)

(declare-fun c!1296581 () Bool)

(declare-fun isEmpty!39163 (List!67224) Bool)

(assert (=> d!2177381 (= c!1296581 (isEmpty!39163 (t!380971 s!7408)))))

(declare-fun e!4201666 () Bool)

(assert (=> d!2177381 (= (matchZipper!2766 lt!2487597 (t!380971 s!7408)) e!4201666)))

(declare-fun b!6990471 () Bool)

(declare-fun nullableZipper!2438 ((Set Context!12444)) Bool)

(assert (=> b!6990471 (= e!4201666 (nullableZipper!2438 lt!2487597))))

(declare-fun b!6990472 () Bool)

(declare-fun head!14113 (List!67224) C!34722)

(declare-fun tail!13239 (List!67224) List!67224)

(assert (=> b!6990472 (= e!4201666 (matchZipper!2766 (derivationStepZipper!2706 lt!2487597 (head!14113 (t!380971 s!7408))) (tail!13239 (t!380971 s!7408))))))

(assert (= (and d!2177381 c!1296581) b!6990471))

(assert (= (and d!2177381 (not c!1296581)) b!6990472))

(declare-fun m!7679308 () Bool)

(assert (=> d!2177381 m!7679308))

(declare-fun m!7679310 () Bool)

(assert (=> b!6990471 m!7679310))

(declare-fun m!7679312 () Bool)

(assert (=> b!6990472 m!7679312))

(assert (=> b!6990472 m!7679312))

(declare-fun m!7679314 () Bool)

(assert (=> b!6990472 m!7679314))

(declare-fun m!7679316 () Bool)

(assert (=> b!6990472 m!7679316))

(assert (=> b!6990472 m!7679314))

(assert (=> b!6990472 m!7679316))

(declare-fun m!7679318 () Bool)

(assert (=> b!6990472 m!7679318))

(assert (=> b!6990327 d!2177381))

(assert (=> b!6990327 d!2177377))

(assert (=> b!6990317 d!2177381))

(declare-fun d!2177383 () Bool)

(declare-fun dynLambda!26905 (Int Context!12444) (Set Context!12444))

(assert (=> d!2177383 (= (flatMap!2212 lt!2487630 lambda!401960) (dynLambda!26905 lambda!401960 lt!2487616))))

(declare-fun lt!2487768 () Unit!161107)

(declare-fun choose!52263 ((Set Context!12444) Context!12444 Int) Unit!161107)

(assert (=> d!2177383 (= lt!2487768 (choose!52263 lt!2487630 lt!2487616 lambda!401960))))

(assert (=> d!2177383 (= lt!2487630 (set.insert lt!2487616 (as set.empty (Set Context!12444))))))

(assert (=> d!2177383 (= (lemmaFlatMapOnSingletonSet!1727 lt!2487630 lt!2487616 lambda!401960) lt!2487768)))

(declare-fun b_lambda!262595 () Bool)

(assert (=> (not b_lambda!262595) (not d!2177383)))

(declare-fun bs!1862232 () Bool)

(assert (= bs!1862232 d!2177383))

(assert (=> bs!1862232 m!7679118))

(declare-fun m!7679320 () Bool)

(assert (=> bs!1862232 m!7679320))

(declare-fun m!7679322 () Bool)

(assert (=> bs!1862232 m!7679322))

(assert (=> bs!1862232 m!7679122))

(assert (=> b!6990316 d!2177383))

(assert (=> b!6990316 d!2177373))

(declare-fun d!2177385 () Bool)

(declare-fun choose!52264 ((Set Context!12444) Int) (Set Context!12444))

(assert (=> d!2177385 (= (flatMap!2212 lt!2487630 lambda!401960) (choose!52264 lt!2487630 lambda!401960))))

(declare-fun bs!1862233 () Bool)

(assert (= bs!1862233 d!2177385))

(declare-fun m!7679324 () Bool)

(assert (=> bs!1862233 m!7679324))

(assert (=> b!6990316 d!2177385))

(assert (=> b!6990316 d!2177377))

(declare-fun bs!1862234 () Bool)

(declare-fun d!2177387 () Bool)

(assert (= bs!1862234 (and d!2177387 b!6990326)))

(declare-fun lambda!402019 () Int)

(assert (=> bs!1862234 (= lambda!402019 lambda!401960)))

(assert (=> d!2177387 true))

(assert (=> d!2177387 (= (derivationStepZipper!2706 lt!2487630 (h!73548 s!7408)) (flatMap!2212 lt!2487630 lambda!402019))))

(declare-fun bs!1862235 () Bool)

(assert (= bs!1862235 d!2177387))

(declare-fun m!7679326 () Bool)

(assert (=> bs!1862235 m!7679326))

(assert (=> b!6990316 d!2177387))

(declare-fun d!2177389 () Bool)

(assert (=> d!2177389 (= (flatMap!2212 lt!2487602 lambda!401960) (choose!52264 lt!2487602 lambda!401960))))

(declare-fun bs!1862236 () Bool)

(assert (= bs!1862236 d!2177389))

(declare-fun m!7679328 () Bool)

(assert (=> bs!1862236 m!7679328))

(assert (=> b!6990326 d!2177389))

(declare-fun d!2177391 () Bool)

(assert (=> d!2177391 (forall!16139 (++!15171 (exprs!6722 lt!2487621) (exprs!6722 ct2!306)) lambda!401959)))

(declare-fun lt!2487769 () Unit!161107)

(assert (=> d!2177391 (= lt!2487769 (choose!52262 (exprs!6722 lt!2487621) (exprs!6722 ct2!306) lambda!401959))))

(assert (=> d!2177391 (forall!16139 (exprs!6722 lt!2487621) lambda!401959)))

(assert (=> d!2177391 (= (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487621) (exprs!6722 ct2!306) lambda!401959) lt!2487769)))

(declare-fun bs!1862237 () Bool)

(assert (= bs!1862237 d!2177391))

(assert (=> bs!1862237 m!7679182))

(assert (=> bs!1862237 m!7679182))

(declare-fun m!7679330 () Bool)

(assert (=> bs!1862237 m!7679330))

(declare-fun m!7679332 () Bool)

(assert (=> bs!1862237 m!7679332))

(declare-fun m!7679334 () Bool)

(assert (=> bs!1862237 m!7679334))

(assert (=> b!6990326 d!2177391))

(declare-fun d!2177393 () Bool)

(assert (=> d!2177393 (= (flatMap!2212 lt!2487602 lambda!401960) (dynLambda!26905 lambda!401960 lt!2487625))))

(declare-fun lt!2487770 () Unit!161107)

(assert (=> d!2177393 (= lt!2487770 (choose!52263 lt!2487602 lt!2487625 lambda!401960))))

(assert (=> d!2177393 (= lt!2487602 (set.insert lt!2487625 (as set.empty (Set Context!12444))))))

(assert (=> d!2177393 (= (lemmaFlatMapOnSingletonSet!1727 lt!2487602 lt!2487625 lambda!401960) lt!2487770)))

(declare-fun b_lambda!262597 () Bool)

(assert (=> (not b_lambda!262597) (not d!2177393)))

(declare-fun bs!1862238 () Bool)

(assert (= bs!1862238 d!2177393))

(assert (=> bs!1862238 m!7679110))

(declare-fun m!7679336 () Bool)

(assert (=> bs!1862238 m!7679336))

(declare-fun m!7679338 () Bool)

(assert (=> bs!1862238 m!7679338))

(assert (=> bs!1862238 m!7679100))

(assert (=> b!6990326 d!2177393))

(declare-fun bs!1862239 () Bool)

(declare-fun d!2177395 () Bool)

(assert (= bs!1862239 (and d!2177395 b!6990326)))

(declare-fun lambda!402020 () Int)

(assert (=> bs!1862239 (= lambda!402020 lambda!401960)))

(declare-fun bs!1862240 () Bool)

(assert (= bs!1862240 (and d!2177395 d!2177387)))

(assert (=> bs!1862240 (= lambda!402020 lambda!402019)))

(assert (=> d!2177395 true))

(assert (=> d!2177395 (= (derivationStepZipper!2706 lt!2487602 (h!73548 s!7408)) (flatMap!2212 lt!2487602 lambda!402020))))

(declare-fun bs!1862241 () Bool)

(assert (= bs!1862241 d!2177395))

(declare-fun m!7679340 () Bool)

(assert (=> bs!1862241 m!7679340))

(assert (=> b!6990326 d!2177395))

(declare-fun b!6990475 () Bool)

(declare-fun e!4201669 () (Set Context!12444))

(declare-fun e!4201667 () (Set Context!12444))

(assert (=> b!6990475 (= e!4201669 e!4201667)))

(declare-fun c!1296584 () Bool)

(assert (=> b!6990475 (= c!1296584 (is-Cons!67099 (exprs!6722 lt!2487625)))))

(declare-fun bm!634592 () Bool)

(declare-fun call!634597 () (Set Context!12444))

(assert (=> bm!634592 (= call!634597 (derivationStepZipperDown!1944 (h!73547 (exprs!6722 lt!2487625)) (Context!12445 (t!380970 (exprs!6722 lt!2487625))) (h!73548 s!7408)))))

(declare-fun b!6990476 () Bool)

(assert (=> b!6990476 (= e!4201667 call!634597)))

(declare-fun d!2177397 () Bool)

(declare-fun c!1296585 () Bool)

(declare-fun e!4201668 () Bool)

(assert (=> d!2177397 (= c!1296585 e!4201668)))

(declare-fun res!2850960 () Bool)

(assert (=> d!2177397 (=> (not res!2850960) (not e!4201668))))

(assert (=> d!2177397 (= res!2850960 (is-Cons!67099 (exprs!6722 lt!2487625)))))

(assert (=> d!2177397 (= (derivationStepZipperUp!1876 lt!2487625 (h!73548 s!7408)) e!4201669)))

(declare-fun b!6990477 () Bool)

(assert (=> b!6990477 (= e!4201669 (set.union call!634597 (derivationStepZipperUp!1876 (Context!12445 (t!380970 (exprs!6722 lt!2487625))) (h!73548 s!7408))))))

(declare-fun b!6990478 () Bool)

(assert (=> b!6990478 (= e!4201668 (nullable!6986 (h!73547 (exprs!6722 lt!2487625))))))

(declare-fun b!6990479 () Bool)

(assert (=> b!6990479 (= e!4201667 (as set.empty (Set Context!12444)))))

(assert (= (and d!2177397 res!2850960) b!6990478))

(assert (= (and d!2177397 c!1296585) b!6990477))

(assert (= (and d!2177397 (not c!1296585)) b!6990475))

(assert (= (and b!6990475 c!1296584) b!6990476))

(assert (= (and b!6990475 (not c!1296584)) b!6990479))

(assert (= (or b!6990477 b!6990476) bm!634592))

(declare-fun m!7679342 () Bool)

(assert (=> bm!634592 m!7679342))

(declare-fun m!7679344 () Bool)

(assert (=> b!6990477 m!7679344))

(declare-fun m!7679346 () Bool)

(assert (=> b!6990478 m!7679346))

(assert (=> b!6990326 d!2177397))

(declare-fun bs!1862242 () Bool)

(declare-fun d!2177399 () Bool)

(assert (= bs!1862242 (and d!2177399 b!6990330)))

(declare-fun lambda!402023 () Int)

(assert (=> bs!1862242 (= lambda!402023 lambda!401959)))

(assert (=> d!2177399 (= (inv!85925 setElem!47838) (forall!16139 (exprs!6722 setElem!47838) lambda!402023))))

(declare-fun bs!1862243 () Bool)

(assert (= bs!1862243 d!2177399))

(declare-fun m!7679348 () Bool)

(assert (=> bs!1862243 m!7679348))

(assert (=> setNonEmpty!47838 d!2177399))

(assert (=> b!6990315 d!2177381))

(assert (=> b!6990315 d!2177377))

(declare-fun d!2177401 () Bool)

(declare-fun c!1296586 () Bool)

(assert (=> d!2177401 (= c!1296586 (isEmpty!39163 (t!380971 s!7408)))))

(declare-fun e!4201670 () Bool)

(assert (=> d!2177401 (= (matchZipper!2766 lt!2487624 (t!380971 s!7408)) e!4201670)))

(declare-fun b!6990480 () Bool)

(assert (=> b!6990480 (= e!4201670 (nullableZipper!2438 lt!2487624))))

(declare-fun b!6990481 () Bool)

(assert (=> b!6990481 (= e!4201670 (matchZipper!2766 (derivationStepZipper!2706 lt!2487624 (head!14113 (t!380971 s!7408))) (tail!13239 (t!380971 s!7408))))))

(assert (= (and d!2177401 c!1296586) b!6990480))

(assert (= (and d!2177401 (not c!1296586)) b!6990481))

(assert (=> d!2177401 m!7679308))

(declare-fun m!7679350 () Bool)

(assert (=> b!6990480 m!7679350))

(assert (=> b!6990481 m!7679312))

(assert (=> b!6990481 m!7679312))

(declare-fun m!7679352 () Bool)

(assert (=> b!6990481 m!7679352))

(assert (=> b!6990481 m!7679316))

(assert (=> b!6990481 m!7679352))

(assert (=> b!6990481 m!7679316))

(declare-fun m!7679354 () Bool)

(assert (=> b!6990481 m!7679354))

(assert (=> b!6990314 d!2177401))

(declare-fun d!2177403 () Bool)

(declare-fun c!1296587 () Bool)

(assert (=> d!2177403 (= c!1296587 (isEmpty!39163 (t!380971 s!7408)))))

(declare-fun e!4201671 () Bool)

(assert (=> d!2177403 (= (matchZipper!2766 lt!2487626 (t!380971 s!7408)) e!4201671)))

(declare-fun b!6990482 () Bool)

(assert (=> b!6990482 (= e!4201671 (nullableZipper!2438 lt!2487626))))

(declare-fun b!6990483 () Bool)

(assert (=> b!6990483 (= e!4201671 (matchZipper!2766 (derivationStepZipper!2706 lt!2487626 (head!14113 (t!380971 s!7408))) (tail!13239 (t!380971 s!7408))))))

(assert (= (and d!2177403 c!1296587) b!6990482))

(assert (= (and d!2177403 (not c!1296587)) b!6990483))

(assert (=> d!2177403 m!7679308))

(declare-fun m!7679356 () Bool)

(assert (=> b!6990482 m!7679356))

(assert (=> b!6990483 m!7679312))

(assert (=> b!6990483 m!7679312))

(declare-fun m!7679358 () Bool)

(assert (=> b!6990483 m!7679358))

(assert (=> b!6990483 m!7679316))

(assert (=> b!6990483 m!7679358))

(assert (=> b!6990483 m!7679316))

(declare-fun m!7679360 () Bool)

(assert (=> b!6990483 m!7679360))

(assert (=> b!6990314 d!2177403))

(assert (=> b!6990314 d!2177377))

(declare-fun d!2177405 () Bool)

(declare-fun c!1296588 () Bool)

(assert (=> d!2177405 (= c!1296588 (isEmpty!39163 (t!380971 s!7408)))))

(declare-fun e!4201672 () Bool)

(assert (=> d!2177405 (= (matchZipper!2766 lt!2487599 (t!380971 s!7408)) e!4201672)))

(declare-fun b!6990484 () Bool)

(assert (=> b!6990484 (= e!4201672 (nullableZipper!2438 lt!2487599))))

(declare-fun b!6990485 () Bool)

(assert (=> b!6990485 (= e!4201672 (matchZipper!2766 (derivationStepZipper!2706 lt!2487599 (head!14113 (t!380971 s!7408))) (tail!13239 (t!380971 s!7408))))))

(assert (= (and d!2177405 c!1296588) b!6990484))

(assert (= (and d!2177405 (not c!1296588)) b!6990485))

(assert (=> d!2177405 m!7679308))

(declare-fun m!7679362 () Bool)

(assert (=> b!6990484 m!7679362))

(assert (=> b!6990485 m!7679312))

(assert (=> b!6990485 m!7679312))

(declare-fun m!7679364 () Bool)

(assert (=> b!6990485 m!7679364))

(assert (=> b!6990485 m!7679316))

(assert (=> b!6990485 m!7679364))

(assert (=> b!6990485 m!7679316))

(declare-fun m!7679366 () Bool)

(assert (=> b!6990485 m!7679366))

(assert (=> b!6990314 d!2177405))

(declare-fun d!2177407 () Bool)

(declare-fun e!4201675 () Bool)

(assert (=> d!2177407 (= (matchZipper!2766 (set.union lt!2487626 lt!2487597) (t!380971 s!7408)) e!4201675)))

(declare-fun res!2850963 () Bool)

(assert (=> d!2177407 (=> res!2850963 e!4201675)))

(assert (=> d!2177407 (= res!2850963 (matchZipper!2766 lt!2487626 (t!380971 s!7408)))))

(declare-fun lt!2487773 () Unit!161107)

(declare-fun choose!52265 ((Set Context!12444) (Set Context!12444) List!67224) Unit!161107)

(assert (=> d!2177407 (= lt!2487773 (choose!52265 lt!2487626 lt!2487597 (t!380971 s!7408)))))

(assert (=> d!2177407 (= (lemmaZipperConcatMatchesSameAsBothZippers!1399 lt!2487626 lt!2487597 (t!380971 s!7408)) lt!2487773)))

(declare-fun b!6990488 () Bool)

(assert (=> b!6990488 (= e!4201675 (matchZipper!2766 lt!2487597 (t!380971 s!7408)))))

(assert (= (and d!2177407 (not res!2850963)) b!6990488))

(declare-fun m!7679368 () Bool)

(assert (=> d!2177407 m!7679368))

(assert (=> d!2177407 m!7679174))

(declare-fun m!7679370 () Bool)

(assert (=> d!2177407 m!7679370))

(assert (=> b!6990488 m!7679096))

(assert (=> b!6990314 d!2177407))

(declare-fun bs!1862244 () Bool)

(declare-fun d!2177409 () Bool)

(assert (= bs!1862244 (and d!2177409 b!6990325)))

(declare-fun lambda!402026 () Int)

(assert (=> bs!1862244 (= lambda!402026 lambda!401957)))

(assert (=> d!2177409 true))

(assert (=> d!2177409 (exists!3015 lt!2487598 lambda!402026)))

(declare-fun lt!2487776 () Unit!161107)

(declare-fun choose!52266 (List!67225 List!67224) Unit!161107)

(assert (=> d!2177409 (= lt!2487776 (choose!52266 lt!2487598 s!7408))))

(declare-fun content!13261 (List!67225) (Set Context!12444))

(assert (=> d!2177409 (matchZipper!2766 (content!13261 lt!2487598) s!7408)))

(assert (=> d!2177409 (= (lemmaZipperMatchesExistsMatchingContext!195 lt!2487598 s!7408) lt!2487776)))

(declare-fun bs!1862245 () Bool)

(assert (= bs!1862245 d!2177409))

(declare-fun m!7679372 () Bool)

(assert (=> bs!1862245 m!7679372))

(declare-fun m!7679374 () Bool)

(assert (=> bs!1862245 m!7679374))

(declare-fun m!7679376 () Bool)

(assert (=> bs!1862245 m!7679376))

(assert (=> bs!1862245 m!7679376))

(declare-fun m!7679378 () Bool)

(assert (=> bs!1862245 m!7679378))

(assert (=> b!6990325 d!2177409))

(declare-fun d!2177411 () Bool)

(declare-fun e!4201678 () Bool)

(assert (=> d!2177411 e!4201678))

(declare-fun res!2850967 () Bool)

(assert (=> d!2177411 (=> (not res!2850967) (not e!4201678))))

(declare-fun lt!2487779 () Context!12444)

(declare-fun dynLambda!26906 (Int Context!12444) Bool)

(assert (=> d!2177411 (= res!2850967 (dynLambda!26906 lambda!401957 lt!2487779))))

(declare-fun getWitness!1128 (List!67225 Int) Context!12444)

(assert (=> d!2177411 (= lt!2487779 (getWitness!1128 (toList!10586 lt!2487628) lambda!401957))))

(declare-fun exists!3017 ((Set Context!12444) Int) Bool)

(assert (=> d!2177411 (exists!3017 lt!2487628 lambda!401957)))

(assert (=> d!2177411 (= (getWitness!1126 lt!2487628 lambda!401957) lt!2487779)))

(declare-fun b!6990491 () Bool)

(assert (=> b!6990491 (= e!4201678 (set.member lt!2487779 lt!2487628))))

(assert (= (and d!2177411 res!2850967) b!6990491))

(declare-fun b_lambda!262599 () Bool)

(assert (=> (not b_lambda!262599) (not d!2177411)))

(declare-fun m!7679380 () Bool)

(assert (=> d!2177411 m!7679380))

(assert (=> d!2177411 m!7679126))

(assert (=> d!2177411 m!7679126))

(declare-fun m!7679382 () Bool)

(assert (=> d!2177411 m!7679382))

(declare-fun m!7679384 () Bool)

(assert (=> d!2177411 m!7679384))

(declare-fun m!7679386 () Bool)

(assert (=> b!6990491 m!7679386))

(assert (=> b!6990325 d!2177411))

(declare-fun bs!1862246 () Bool)

(declare-fun d!2177413 () Bool)

(assert (= bs!1862246 (and d!2177413 b!6990325)))

(declare-fun lambda!402029 () Int)

(assert (=> bs!1862246 (not (= lambda!402029 lambda!401957))))

(declare-fun bs!1862247 () Bool)

(assert (= bs!1862247 (and d!2177413 d!2177409)))

(assert (=> bs!1862247 (not (= lambda!402029 lambda!402026))))

(assert (=> d!2177413 true))

(declare-fun order!27925 () Int)

(declare-fun dynLambda!26907 (Int Int) Int)

(assert (=> d!2177413 (< (dynLambda!26907 order!27925 lambda!401957) (dynLambda!26907 order!27925 lambda!402029))))

(declare-fun forall!16141 (List!67225 Int) Bool)

(assert (=> d!2177413 (= (exists!3015 lt!2487598 lambda!401957) (not (forall!16141 lt!2487598 lambda!402029)))))

(declare-fun bs!1862248 () Bool)

(assert (= bs!1862248 d!2177413))

(declare-fun m!7679388 () Bool)

(assert (=> bs!1862248 m!7679388))

(assert (=> b!6990325 d!2177413))

(declare-fun d!2177415 () Bool)

(declare-fun c!1296591 () Bool)

(assert (=> d!2177415 (= c!1296591 (isEmpty!39163 s!7408))))

(declare-fun e!4201679 () Bool)

(assert (=> d!2177415 (= (matchZipper!2766 lt!2487613 s!7408) e!4201679)))

(declare-fun b!6990494 () Bool)

(assert (=> b!6990494 (= e!4201679 (nullableZipper!2438 lt!2487613))))

(declare-fun b!6990495 () Bool)

(assert (=> b!6990495 (= e!4201679 (matchZipper!2766 (derivationStepZipper!2706 lt!2487613 (head!14113 s!7408)) (tail!13239 s!7408)))))

(assert (= (and d!2177415 c!1296591) b!6990494))

(assert (= (and d!2177415 (not c!1296591)) b!6990495))

(declare-fun m!7679390 () Bool)

(assert (=> d!2177415 m!7679390))

(declare-fun m!7679392 () Bool)

(assert (=> b!6990494 m!7679392))

(declare-fun m!7679394 () Bool)

(assert (=> b!6990495 m!7679394))

(assert (=> b!6990495 m!7679394))

(declare-fun m!7679396 () Bool)

(assert (=> b!6990495 m!7679396))

(declare-fun m!7679398 () Bool)

(assert (=> b!6990495 m!7679398))

(assert (=> b!6990495 m!7679396))

(assert (=> b!6990495 m!7679398))

(declare-fun m!7679400 () Bool)

(assert (=> b!6990495 m!7679400))

(assert (=> b!6990325 d!2177415))

(declare-fun d!2177417 () Bool)

(declare-fun e!4201682 () Bool)

(assert (=> d!2177417 e!4201682))

(declare-fun res!2850970 () Bool)

(assert (=> d!2177417 (=> (not res!2850970) (not e!4201682))))

(declare-fun lt!2487782 () List!67225)

(declare-fun noDuplicate!2524 (List!67225) Bool)

(assert (=> d!2177417 (= res!2850970 (noDuplicate!2524 lt!2487782))))

(declare-fun choose!52267 ((Set Context!12444)) List!67225)

(assert (=> d!2177417 (= lt!2487782 (choose!52267 lt!2487628))))

(assert (=> d!2177417 (= (toList!10586 lt!2487628) lt!2487782)))

(declare-fun b!6990498 () Bool)

(assert (=> b!6990498 (= e!4201682 (= (content!13261 lt!2487782) lt!2487628))))

(assert (= (and d!2177417 res!2850970) b!6990498))

(declare-fun m!7679402 () Bool)

(assert (=> d!2177417 m!7679402))

(declare-fun m!7679404 () Bool)

(assert (=> d!2177417 m!7679404))

(declare-fun m!7679406 () Bool)

(assert (=> b!6990498 m!7679406))

(assert (=> b!6990325 d!2177417))

(declare-fun d!2177419 () Bool)

(declare-fun c!1296592 () Bool)

(assert (=> d!2177419 (= c!1296592 (isEmpty!39163 s!7408))))

(declare-fun e!4201683 () Bool)

(assert (=> d!2177419 (= (matchZipper!2766 lt!2487628 s!7408) e!4201683)))

(declare-fun b!6990499 () Bool)

(assert (=> b!6990499 (= e!4201683 (nullableZipper!2438 lt!2487628))))

(declare-fun b!6990500 () Bool)

(assert (=> b!6990500 (= e!4201683 (matchZipper!2766 (derivationStepZipper!2706 lt!2487628 (head!14113 s!7408)) (tail!13239 s!7408)))))

(assert (= (and d!2177419 c!1296592) b!6990499))

(assert (= (and d!2177419 (not c!1296592)) b!6990500))

(assert (=> d!2177419 m!7679390))

(declare-fun m!7679408 () Bool)

(assert (=> b!6990499 m!7679408))

(assert (=> b!6990500 m!7679394))

(assert (=> b!6990500 m!7679394))

(declare-fun m!7679410 () Bool)

(assert (=> b!6990500 m!7679410))

(assert (=> b!6990500 m!7679398))

(assert (=> b!6990500 m!7679410))

(assert (=> b!6990500 m!7679398))

(declare-fun m!7679412 () Bool)

(assert (=> b!6990500 m!7679412))

(assert (=> start!671776 d!2177419))

(declare-fun bs!1862249 () Bool)

(declare-fun d!2177421 () Bool)

(assert (= bs!1862249 (and d!2177421 b!6990330)))

(declare-fun lambda!402034 () Int)

(assert (=> bs!1862249 (= lambda!402034 lambda!401958)))

(assert (=> d!2177421 true))

(assert (=> d!2177421 (= (appendTo!347 z1!570 ct2!306) (map!15486 z1!570 lambda!402034))))

(declare-fun bs!1862250 () Bool)

(assert (= bs!1862250 d!2177421))

(declare-fun m!7679414 () Bool)

(assert (=> bs!1862250 m!7679414))

(assert (=> start!671776 d!2177421))

(declare-fun bs!1862251 () Bool)

(declare-fun d!2177423 () Bool)

(assert (= bs!1862251 (and d!2177423 b!6990330)))

(declare-fun lambda!402035 () Int)

(assert (=> bs!1862251 (= lambda!402035 lambda!401959)))

(declare-fun bs!1862252 () Bool)

(assert (= bs!1862252 (and d!2177423 d!2177399)))

(assert (=> bs!1862252 (= lambda!402035 lambda!402023)))

(assert (=> d!2177423 (= (inv!85925 ct2!306) (forall!16139 (exprs!6722 ct2!306) lambda!402035))))

(declare-fun bs!1862253 () Bool)

(assert (= bs!1862253 d!2177423))

(declare-fun m!7679416 () Bool)

(assert (=> bs!1862253 m!7679416))

(assert (=> start!671776 d!2177423))

(assert (=> b!6990322 d!2177391))

(declare-fun d!2177425 () Bool)

(declare-fun dynLambda!26908 (Int Context!12444) Context!12444)

(assert (=> d!2177425 (= (map!15486 lt!2487611 lambda!401958) (set.insert (dynLambda!26908 lambda!401958 lt!2487603) (as set.empty (Set Context!12444))))))

(declare-fun lt!2487787 () Unit!161107)

(declare-fun choose!52268 ((Set Context!12444) Context!12444 Int) Unit!161107)

(assert (=> d!2177425 (= lt!2487787 (choose!52268 lt!2487611 lt!2487603 lambda!401958))))

(assert (=> d!2177425 (= lt!2487611 (set.insert lt!2487603 (as set.empty (Set Context!12444))))))

(assert (=> d!2177425 (= (lemmaMapOnSingletonSet!291 lt!2487611 lt!2487603 lambda!401958) lt!2487787)))

(declare-fun b_lambda!262601 () Bool)

(assert (=> (not b_lambda!262601) (not d!2177425)))

(declare-fun bs!1862254 () Bool)

(assert (= bs!1862254 d!2177425))

(declare-fun m!7679418 () Bool)

(assert (=> bs!1862254 m!7679418))

(assert (=> bs!1862254 m!7679418))

(declare-fun m!7679420 () Bool)

(assert (=> bs!1862254 m!7679420))

(assert (=> bs!1862254 m!7679138))

(assert (=> bs!1862254 m!7679142))

(declare-fun m!7679422 () Bool)

(assert (=> bs!1862254 m!7679422))

(assert (=> b!6990312 d!2177425))

(declare-fun d!2177427 () Bool)

(declare-fun res!2850975 () Bool)

(declare-fun e!4201688 () Bool)

(assert (=> d!2177427 (=> res!2850975 e!4201688)))

(assert (=> d!2177427 (= res!2850975 (is-Nil!67099 lt!2487617))))

(assert (=> d!2177427 (= (forall!16139 lt!2487617 lambda!401959) e!4201688)))

(declare-fun b!6990505 () Bool)

(declare-fun e!4201689 () Bool)

(assert (=> b!6990505 (= e!4201688 e!4201689)))

(declare-fun res!2850976 () Bool)

(assert (=> b!6990505 (=> (not res!2850976) (not e!4201689))))

(declare-fun dynLambda!26909 (Int Regex!17226) Bool)

(assert (=> b!6990505 (= res!2850976 (dynLambda!26909 lambda!401959 (h!73547 lt!2487617)))))

(declare-fun b!6990506 () Bool)

(assert (=> b!6990506 (= e!4201689 (forall!16139 (t!380970 lt!2487617) lambda!401959))))

(assert (= (and d!2177427 (not res!2850975)) b!6990505))

(assert (= (and b!6990505 res!2850976) b!6990506))

(declare-fun b_lambda!262603 () Bool)

(assert (=> (not b_lambda!262603) (not b!6990505)))

(declare-fun m!7679424 () Bool)

(assert (=> b!6990505 m!7679424))

(declare-fun m!7679426 () Bool)

(assert (=> b!6990506 m!7679426))

(assert (=> b!6990312 d!2177427))

(declare-fun d!2177429 () Bool)

(declare-fun choose!52269 ((Set Context!12444) Int) (Set Context!12444))

(assert (=> d!2177429 (= (map!15486 lt!2487611 lambda!401958) (choose!52269 lt!2487611 lambda!401958))))

(declare-fun bs!1862255 () Bool)

(assert (= bs!1862255 d!2177429))

(declare-fun m!7679428 () Bool)

(assert (=> bs!1862255 m!7679428))

(assert (=> b!6990312 d!2177429))

(declare-fun b!6990507 () Bool)

(declare-fun e!4201692 () (Set Context!12444))

(declare-fun e!4201690 () (Set Context!12444))

(assert (=> b!6990507 (= e!4201692 e!4201690)))

(declare-fun c!1296594 () Bool)

(assert (=> b!6990507 (= c!1296594 (is-Cons!67099 (exprs!6722 lt!2487603)))))

(declare-fun bm!634593 () Bool)

(declare-fun call!634598 () (Set Context!12444))

(assert (=> bm!634593 (= call!634598 (derivationStepZipperDown!1944 (h!73547 (exprs!6722 lt!2487603)) (Context!12445 (t!380970 (exprs!6722 lt!2487603))) (h!73548 s!7408)))))

(declare-fun b!6990508 () Bool)

(assert (=> b!6990508 (= e!4201690 call!634598)))

(declare-fun d!2177431 () Bool)

(declare-fun c!1296595 () Bool)

(declare-fun e!4201691 () Bool)

(assert (=> d!2177431 (= c!1296595 e!4201691)))

(declare-fun res!2850977 () Bool)

(assert (=> d!2177431 (=> (not res!2850977) (not e!4201691))))

(assert (=> d!2177431 (= res!2850977 (is-Cons!67099 (exprs!6722 lt!2487603)))))

(assert (=> d!2177431 (= (derivationStepZipperUp!1876 lt!2487603 (h!73548 s!7408)) e!4201692)))

(declare-fun b!6990509 () Bool)

(assert (=> b!6990509 (= e!4201692 (set.union call!634598 (derivationStepZipperUp!1876 (Context!12445 (t!380970 (exprs!6722 lt!2487603))) (h!73548 s!7408))))))

(declare-fun b!6990510 () Bool)

(assert (=> b!6990510 (= e!4201691 (nullable!6986 (h!73547 (exprs!6722 lt!2487603))))))

(declare-fun b!6990511 () Bool)

(assert (=> b!6990511 (= e!4201690 (as set.empty (Set Context!12444)))))

(assert (= (and d!2177431 res!2850977) b!6990510))

(assert (= (and d!2177431 c!1296595) b!6990509))

(assert (= (and d!2177431 (not c!1296595)) b!6990507))

(assert (= (and b!6990507 c!1296594) b!6990508))

(assert (= (and b!6990507 (not c!1296594)) b!6990511))

(assert (= (or b!6990509 b!6990508) bm!634593))

(declare-fun m!7679430 () Bool)

(assert (=> bm!634593 m!7679430))

(declare-fun m!7679432 () Bool)

(assert (=> b!6990509 m!7679432))

(declare-fun m!7679434 () Bool)

(assert (=> b!6990510 m!7679434))

(assert (=> b!6990312 d!2177431))

(assert (=> b!6990312 d!2177377))

(declare-fun d!2177433 () Bool)

(assert (=> d!2177433 (= (flatMap!2212 lt!2487611 lambda!401960) (choose!52264 lt!2487611 lambda!401960))))

(declare-fun bs!1862256 () Bool)

(assert (= bs!1862256 d!2177433))

(declare-fun m!7679436 () Bool)

(assert (=> bs!1862256 m!7679436))

(assert (=> b!6990312 d!2177433))

(assert (=> b!6990312 d!2177379))

(declare-fun d!2177435 () Bool)

(assert (=> d!2177435 (= (flatMap!2212 lt!2487611 lambda!401960) (dynLambda!26905 lambda!401960 lt!2487603))))

(declare-fun lt!2487788 () Unit!161107)

(assert (=> d!2177435 (= lt!2487788 (choose!52263 lt!2487611 lt!2487603 lambda!401960))))

(assert (=> d!2177435 (= lt!2487611 (set.insert lt!2487603 (as set.empty (Set Context!12444))))))

(assert (=> d!2177435 (= (lemmaFlatMapOnSingletonSet!1727 lt!2487611 lt!2487603 lambda!401960) lt!2487788)))

(declare-fun b_lambda!262605 () Bool)

(assert (=> (not b_lambda!262605) (not d!2177435)))

(declare-fun bs!1862257 () Bool)

(assert (= bs!1862257 d!2177435))

(assert (=> bs!1862257 m!7679148))

(declare-fun m!7679438 () Bool)

(assert (=> bs!1862257 m!7679438))

(declare-fun m!7679440 () Bool)

(assert (=> bs!1862257 m!7679440))

(assert (=> bs!1862257 m!7679138))

(assert (=> b!6990312 d!2177435))

(declare-fun d!2177437 () Bool)

(declare-fun c!1296596 () Bool)

(assert (=> d!2177437 (= c!1296596 (isEmpty!39163 s!7408))))

(declare-fun e!4201693 () Bool)

(assert (=> d!2177437 (= (matchZipper!2766 lt!2487630 s!7408) e!4201693)))

(declare-fun b!6990512 () Bool)

(assert (=> b!6990512 (= e!4201693 (nullableZipper!2438 lt!2487630))))

(declare-fun b!6990513 () Bool)

(assert (=> b!6990513 (= e!4201693 (matchZipper!2766 (derivationStepZipper!2706 lt!2487630 (head!14113 s!7408)) (tail!13239 s!7408)))))

(assert (= (and d!2177437 c!1296596) b!6990512))

(assert (= (and d!2177437 (not c!1296596)) b!6990513))

(assert (=> d!2177437 m!7679390))

(declare-fun m!7679442 () Bool)

(assert (=> b!6990512 m!7679442))

(assert (=> b!6990513 m!7679394))

(assert (=> b!6990513 m!7679394))

(declare-fun m!7679444 () Bool)

(assert (=> b!6990513 m!7679444))

(assert (=> b!6990513 m!7679398))

(assert (=> b!6990513 m!7679444))

(assert (=> b!6990513 m!7679398))

(declare-fun m!7679446 () Bool)

(assert (=> b!6990513 m!7679446))

(assert (=> b!6990321 d!2177437))

(assert (=> b!6990321 d!2177377))

(declare-fun d!2177439 () Bool)

(declare-fun e!4201694 () Bool)

(assert (=> d!2177439 e!4201694))

(declare-fun res!2850979 () Bool)

(assert (=> d!2177439 (=> (not res!2850979) (not e!4201694))))

(declare-fun lt!2487789 () List!67223)

(assert (=> d!2177439 (= res!2850979 (= (content!13260 lt!2487789) (set.union (content!13260 (exprs!6722 lt!2487621)) (content!13260 (exprs!6722 ct2!306)))))))

(declare-fun e!4201695 () List!67223)

(assert (=> d!2177439 (= lt!2487789 e!4201695)))

(declare-fun c!1296597 () Bool)

(assert (=> d!2177439 (= c!1296597 (is-Nil!67099 (exprs!6722 lt!2487621)))))

(assert (=> d!2177439 (= (++!15171 (exprs!6722 lt!2487621) (exprs!6722 ct2!306)) lt!2487789)))

(declare-fun b!6990515 () Bool)

(assert (=> b!6990515 (= e!4201695 (Cons!67099 (h!73547 (exprs!6722 lt!2487621)) (++!15171 (t!380970 (exprs!6722 lt!2487621)) (exprs!6722 ct2!306))))))

(declare-fun b!6990516 () Bool)

(declare-fun res!2850978 () Bool)

(assert (=> b!6990516 (=> (not res!2850978) (not e!4201694))))

(assert (=> b!6990516 (= res!2850978 (= (size!40905 lt!2487789) (+ (size!40905 (exprs!6722 lt!2487621)) (size!40905 (exprs!6722 ct2!306)))))))

(declare-fun b!6990514 () Bool)

(assert (=> b!6990514 (= e!4201695 (exprs!6722 ct2!306))))

(declare-fun b!6990517 () Bool)

(assert (=> b!6990517 (= e!4201694 (or (not (= (exprs!6722 ct2!306) Nil!67099)) (= lt!2487789 (exprs!6722 lt!2487621))))))

(assert (= (and d!2177439 c!1296597) b!6990514))

(assert (= (and d!2177439 (not c!1296597)) b!6990515))

(assert (= (and d!2177439 res!2850979) b!6990516))

(assert (= (and b!6990516 res!2850978) b!6990517))

(declare-fun m!7679448 () Bool)

(assert (=> d!2177439 m!7679448))

(declare-fun m!7679450 () Bool)

(assert (=> d!2177439 m!7679450))

(assert (=> d!2177439 m!7679298))

(declare-fun m!7679452 () Bool)

(assert (=> b!6990515 m!7679452))

(declare-fun m!7679454 () Bool)

(assert (=> b!6990516 m!7679454))

(declare-fun m!7679456 () Bool)

(assert (=> b!6990516 m!7679456))

(assert (=> b!6990516 m!7679306))

(assert (=> b!6990330 d!2177439))

(assert (=> b!6990330 d!2177391))

(declare-fun d!2177441 () Bool)

(declare-fun e!4201698 () Bool)

(assert (=> d!2177441 e!4201698))

(declare-fun res!2850982 () Bool)

(assert (=> d!2177441 (=> (not res!2850982) (not e!4201698))))

(declare-fun lt!2487792 () Context!12444)

(assert (=> d!2177441 (= res!2850982 (= lt!2487609 (dynLambda!26908 lambda!401958 lt!2487792)))))

(declare-fun choose!52270 ((Set Context!12444) Int Context!12444) Context!12444)

(assert (=> d!2177441 (= lt!2487792 (choose!52270 z1!570 lambda!401958 lt!2487609))))

(assert (=> d!2177441 (set.member lt!2487609 (map!15486 z1!570 lambda!401958))))

(assert (=> d!2177441 (= (mapPost2!81 z1!570 lambda!401958 lt!2487609) lt!2487792)))

(declare-fun b!6990521 () Bool)

(assert (=> b!6990521 (= e!4201698 (set.member lt!2487792 z1!570))))

(assert (= (and d!2177441 res!2850982) b!6990521))

(declare-fun b_lambda!262607 () Bool)

(assert (=> (not b_lambda!262607) (not d!2177441)))

(declare-fun m!7679458 () Bool)

(assert (=> d!2177441 m!7679458))

(declare-fun m!7679460 () Bool)

(assert (=> d!2177441 m!7679460))

(declare-fun m!7679462 () Bool)

(assert (=> d!2177441 m!7679462))

(declare-fun m!7679464 () Bool)

(assert (=> d!2177441 m!7679464))

(declare-fun m!7679466 () Bool)

(assert (=> b!6990521 m!7679466))

(assert (=> b!6990330 d!2177441))

(declare-fun d!2177443 () Bool)

(declare-fun nullableFct!2639 (Regex!17226) Bool)

(assert (=> d!2177443 (= (nullable!6986 (h!73547 (exprs!6722 lt!2487621))) (nullableFct!2639 (h!73547 (exprs!6722 lt!2487621))))))

(declare-fun bs!1862258 () Bool)

(assert (= bs!1862258 d!2177443))

(declare-fun m!7679468 () Bool)

(assert (=> bs!1862258 m!7679468))

(assert (=> b!6990329 d!2177443))

(declare-fun d!2177445 () Bool)

(assert (=> d!2177445 (= (tail!13237 (exprs!6722 lt!2487621)) (t!380970 (exprs!6722 lt!2487621)))))

(assert (=> b!6990329 d!2177445))

(declare-fun b!6990526 () Bool)

(declare-fun e!4201701 () Bool)

(declare-fun tp!1929847 () Bool)

(declare-fun tp!1929848 () Bool)

(assert (=> b!6990526 (= e!4201701 (and tp!1929847 tp!1929848))))

(assert (=> b!6990331 (= tp!1929830 e!4201701)))

(assert (= (and b!6990331 (is-Cons!67099 (exprs!6722 ct2!306))) b!6990526))

(declare-fun condSetEmpty!47844 () Bool)

(assert (=> setNonEmpty!47838 (= condSetEmpty!47844 (= setRest!47838 (as set.empty (Set Context!12444))))))

(declare-fun setRes!47844 () Bool)

(assert (=> setNonEmpty!47838 (= tp!1929828 setRes!47844)))

(declare-fun setIsEmpty!47844 () Bool)

(assert (=> setIsEmpty!47844 setRes!47844))

(declare-fun setNonEmpty!47844 () Bool)

(declare-fun e!4201704 () Bool)

(declare-fun tp!1929854 () Bool)

(declare-fun setElem!47844 () Context!12444)

(assert (=> setNonEmpty!47844 (= setRes!47844 (and tp!1929854 (inv!85925 setElem!47844) e!4201704))))

(declare-fun setRest!47844 () (Set Context!12444))

(assert (=> setNonEmpty!47844 (= setRest!47838 (set.union (set.insert setElem!47844 (as set.empty (Set Context!12444))) setRest!47844))))

(declare-fun b!6990531 () Bool)

(declare-fun tp!1929853 () Bool)

(assert (=> b!6990531 (= e!4201704 tp!1929853)))

(assert (= (and setNonEmpty!47838 condSetEmpty!47844) setIsEmpty!47844))

(assert (= (and setNonEmpty!47838 (not condSetEmpty!47844)) setNonEmpty!47844))

(assert (= setNonEmpty!47844 b!6990531))

(declare-fun m!7679470 () Bool)

(assert (=> setNonEmpty!47844 m!7679470))

(declare-fun b!6990532 () Bool)

(declare-fun e!4201705 () Bool)

(declare-fun tp!1929855 () Bool)

(declare-fun tp!1929856 () Bool)

(assert (=> b!6990532 (= e!4201705 (and tp!1929855 tp!1929856))))

(assert (=> b!6990311 (= tp!1929829 e!4201705)))

(assert (= (and b!6990311 (is-Cons!67099 (exprs!6722 setElem!47838))) b!6990532))

(declare-fun b!6990537 () Bool)

(declare-fun e!4201708 () Bool)

(declare-fun tp!1929859 () Bool)

(assert (=> b!6990537 (= e!4201708 (and tp_is_empty!43677 tp!1929859))))

(assert (=> b!6990320 (= tp!1929827 e!4201708)))

(assert (= (and b!6990320 (is-Cons!67100 (t!380971 s!7408))) b!6990537))

(declare-fun b_lambda!262609 () Bool)

(assert (= b_lambda!262595 (or b!6990326 b_lambda!262609)))

(declare-fun bs!1862259 () Bool)

(declare-fun d!2177447 () Bool)

(assert (= bs!1862259 (and d!2177447 b!6990326)))

(assert (=> bs!1862259 (= (dynLambda!26905 lambda!401960 lt!2487616) (derivationStepZipperUp!1876 lt!2487616 (h!73548 s!7408)))))

(assert (=> bs!1862259 m!7679124))

(assert (=> d!2177383 d!2177447))

(declare-fun b_lambda!262611 () Bool)

(assert (= b_lambda!262597 (or b!6990326 b_lambda!262611)))

(declare-fun bs!1862260 () Bool)

(declare-fun d!2177449 () Bool)

(assert (= bs!1862260 (and d!2177449 b!6990326)))

(assert (=> bs!1862260 (= (dynLambda!26905 lambda!401960 lt!2487625) (derivationStepZipperUp!1876 lt!2487625 (h!73548 s!7408)))))

(assert (=> bs!1862260 m!7679108))

(assert (=> d!2177393 d!2177449))

(declare-fun b_lambda!262613 () Bool)

(assert (= b_lambda!262603 (or b!6990330 b_lambda!262613)))

(declare-fun bs!1862261 () Bool)

(declare-fun d!2177451 () Bool)

(assert (= bs!1862261 (and d!2177451 b!6990330)))

(declare-fun validRegex!8862 (Regex!17226) Bool)

(assert (=> bs!1862261 (= (dynLambda!26909 lambda!401959 (h!73547 lt!2487617)) (validRegex!8862 (h!73547 lt!2487617)))))

(declare-fun m!7679472 () Bool)

(assert (=> bs!1862261 m!7679472))

(assert (=> b!6990505 d!2177451))

(declare-fun b_lambda!262615 () Bool)

(assert (= b_lambda!262601 (or b!6990330 b_lambda!262615)))

(declare-fun bs!1862262 () Bool)

(declare-fun d!2177453 () Bool)

(assert (= bs!1862262 (and d!2177453 b!6990330)))

(declare-fun lt!2487793 () Unit!161107)

(assert (=> bs!1862262 (= lt!2487793 (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487603) (exprs!6722 ct2!306) lambda!401959))))

(assert (=> bs!1862262 (= (dynLambda!26908 lambda!401958 lt!2487603) (Context!12445 (++!15171 (exprs!6722 lt!2487603) (exprs!6722 ct2!306))))))

(declare-fun m!7679474 () Bool)

(assert (=> bs!1862262 m!7679474))

(declare-fun m!7679476 () Bool)

(assert (=> bs!1862262 m!7679476))

(assert (=> d!2177425 d!2177453))

(declare-fun b_lambda!262617 () Bool)

(assert (= b_lambda!262599 (or b!6990325 b_lambda!262617)))

(declare-fun bs!1862263 () Bool)

(declare-fun d!2177455 () Bool)

(assert (= bs!1862263 (and d!2177455 b!6990325)))

(assert (=> bs!1862263 (= (dynLambda!26906 lambda!401957 lt!2487779) (matchZipper!2766 (set.insert lt!2487779 (as set.empty (Set Context!12444))) s!7408))))

(declare-fun m!7679478 () Bool)

(assert (=> bs!1862263 m!7679478))

(assert (=> bs!1862263 m!7679478))

(declare-fun m!7679480 () Bool)

(assert (=> bs!1862263 m!7679480))

(assert (=> d!2177411 d!2177455))

(declare-fun b_lambda!262619 () Bool)

(assert (= b_lambda!262607 (or b!6990330 b_lambda!262619)))

(declare-fun bs!1862264 () Bool)

(declare-fun d!2177457 () Bool)

(assert (= bs!1862264 (and d!2177457 b!6990330)))

(declare-fun lt!2487794 () Unit!161107)

(assert (=> bs!1862264 (= lt!2487794 (lemmaConcatPreservesForall!562 (exprs!6722 lt!2487792) (exprs!6722 ct2!306) lambda!401959))))

(assert (=> bs!1862264 (= (dynLambda!26908 lambda!401958 lt!2487792) (Context!12445 (++!15171 (exprs!6722 lt!2487792) (exprs!6722 ct2!306))))))

(declare-fun m!7679482 () Bool)

(assert (=> bs!1862264 m!7679482))

(declare-fun m!7679484 () Bool)

(assert (=> bs!1862264 m!7679484))

(assert (=> d!2177441 d!2177457))

(declare-fun b_lambda!262621 () Bool)

(assert (= b_lambda!262605 (or b!6990326 b_lambda!262621)))

(declare-fun bs!1862265 () Bool)

(declare-fun d!2177459 () Bool)

(assert (= bs!1862265 (and d!2177459 b!6990326)))

(assert (=> bs!1862265 (= (dynLambda!26905 lambda!401960 lt!2487603) (derivationStepZipperUp!1876 lt!2487603 (h!73548 s!7408)))))

(assert (=> bs!1862265 m!7679140))

(assert (=> d!2177435 d!2177459))

(push 1)

(assert (not d!2177441))

(assert (not bm!634591))

(assert (not d!2177439))

(assert (not d!2177425))

(assert (not bs!1862264))

(assert (not d!2177403))

(assert (not bs!1862260))

(assert (not b!6990494))

(assert (not b!6990516))

(assert (not b!6990480))

(assert (not d!2177437))

(assert (not d!2177389))

(assert (not bs!1862262))

(assert (not d!2177421))

(assert (not b_lambda!262617))

(assert (not b!6990515))

(assert (not b!6990513))

(assert (not d!2177399))

(assert (not b!6990482))

(assert (not d!2177385))

(assert (not b!6990447))

(assert (not b_lambda!262613))

(assert (not d!2177387))

(assert (not d!2177407))

(assert (not b!6990537))

(assert (not b_lambda!262615))

(assert (not bs!1862259))

(assert (not d!2177415))

(assert (not b!6990485))

(assert (not b!6990420))

(assert (not b!6990471))

(assert (not d!2177405))

(assert (not bm!634593))

(assert (not b!6990472))

(assert (not d!2177377))

(assert (not b!6990499))

(assert (not d!2177381))

(assert (not d!2177423))

(assert (not b!6990509))

(assert tp_is_empty!43677)

(assert (not b!6990477))

(assert (not b!6990510))

(assert (not d!2177435))

(assert (not bm!634587))

(assert (not d!2177401))

(assert (not d!2177379))

(assert (not b!6990495))

(assert (not b_lambda!262619))

(assert (not d!2177413))

(assert (not d!2177395))

(assert (not bm!634592))

(assert (not b_lambda!262621))

(assert (not b!6990506))

(assert (not bm!634588))

(assert (not b_lambda!262611))

(assert (not b!6990478))

(assert (not b!6990531))

(assert (not d!2177393))

(assert (not b!6990500))

(assert (not bm!634573))

(assert (not b!6990532))

(assert (not b!6990464))

(assert (not b_lambda!262609))

(assert (not d!2177411))

(assert (not b!6990512))

(assert (not b!6990419))

(assert (not d!2177417))

(assert (not d!2177433))

(assert (not bs!1862265))

(assert (not b!6990498))

(assert (not b!6990488))

(assert (not b!6990481))

(assert (not d!2177383))

(assert (not b!6990526))

(assert (not d!2177429))

(assert (not d!2177419))

(assert (not setNonEmpty!47844))

(assert (not d!2177391))

(assert (not bs!1862261))

(assert (not b!6990483))

(assert (not bs!1862263))

(assert (not d!2177409))

(assert (not d!2177443))

(assert (not b!6990484))

(assert (not b!6990465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

