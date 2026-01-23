; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684410 () Bool)

(assert start!684410)

(declare-fun b!7056127 () Bool)

(assert (=> b!7056127 true))

(declare-fun b!7056136 () Bool)

(assert (=> b!7056136 true))

(declare-fun b!7056131 () Bool)

(assert (=> b!7056131 true))

(declare-fun b!7056126 () Bool)

(declare-fun e!4242028 () Bool)

(declare-fun e!4242016 () Bool)

(assert (=> b!7056126 (= e!4242028 e!4242016)))

(declare-fun res!2880673 () Bool)

(assert (=> b!7056126 (=> res!2880673 e!4242016)))

(declare-datatypes ((C!35422 0))(
  ( (C!35423 (val!27413 Int)) )
))
(declare-datatypes ((Regex!17576 0))(
  ( (ElementMatch!17576 (c!1314630 C!35422)) (Concat!26421 (regOne!35664 Regex!17576) (regTwo!35664 Regex!17576)) (EmptyExpr!17576) (Star!17576 (reg!17905 Regex!17576)) (EmptyLang!17576) (Union!17576 (regOne!35665 Regex!17576) (regTwo!35665 Regex!17576)) )
))
(declare-datatypes ((List!68254 0))(
  ( (Nil!68130) (Cons!68130 (h!74578 Regex!17576) (t!382033 List!68254)) )
))
(declare-datatypes ((Context!13144 0))(
  ( (Context!13145 (exprs!7072 List!68254)) )
))
(declare-fun lt!2532546 () (Set Context!13144))

(declare-fun lt!2532539 () (Set Context!13144))

(assert (=> b!7056126 (= res!2880673 (not (= lt!2532546 lt!2532539)))))

(declare-fun lt!2532573 () Context!13144)

(assert (=> b!7056126 (= lt!2532546 (set.insert lt!2532573 (as set.empty (Set Context!13144))))))

(declare-fun lt!2532570 () Context!13144)

(declare-datatypes ((Unit!161825 0))(
  ( (Unit!161826) )
))
(declare-fun lt!2532550 () Unit!161825)

(declare-fun ct2!306 () Context!13144)

(declare-fun lambda!420571 () Int)

(declare-fun lemmaConcatPreservesForall!887 (List!68254 List!68254 Int) Unit!161825)

(assert (=> b!7056126 (= lt!2532550 (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532570) (exprs!7072 ct2!306) lambda!420571))))

(declare-fun e!4242022 () Bool)

(declare-fun e!4242026 () Bool)

(assert (=> b!7056127 (= e!4242022 (not e!4242026))))

(declare-fun res!2880660 () Bool)

(assert (=> b!7056127 (=> res!2880660 e!4242026)))

(declare-datatypes ((List!68255 0))(
  ( (Nil!68131) (Cons!68131 (h!74579 C!35422) (t!382034 List!68255)) )
))
(declare-fun s!7408 () List!68255)

(declare-fun matchZipper!3116 ((Set Context!13144) List!68255) Bool)

(assert (=> b!7056127 (= res!2880660 (not (matchZipper!3116 lt!2532539 s!7408)))))

(declare-fun lt!2532568 () Context!13144)

(assert (=> b!7056127 (= lt!2532539 (set.insert lt!2532568 (as set.empty (Set Context!13144))))))

(declare-fun lt!2532542 () (Set Context!13144))

(declare-fun lambda!420569 () Int)

(declare-fun getWitness!1642 ((Set Context!13144) Int) Context!13144)

(assert (=> b!7056127 (= lt!2532568 (getWitness!1642 lt!2532542 lambda!420569))))

(declare-datatypes ((List!68256 0))(
  ( (Nil!68132) (Cons!68132 (h!74580 Context!13144) (t!382035 List!68256)) )
))
(declare-fun lt!2532574 () List!68256)

(declare-fun exists!3568 (List!68256 Int) Bool)

(assert (=> b!7056127 (exists!3568 lt!2532574 lambda!420569)))

(declare-fun lt!2532556 () Unit!161825)

(declare-fun lemmaZipperMatchesExistsMatchingContext!497 (List!68256 List!68255) Unit!161825)

(assert (=> b!7056127 (= lt!2532556 (lemmaZipperMatchesExistsMatchingContext!497 lt!2532574 s!7408))))

(declare-fun toList!10917 ((Set Context!13144)) List!68256)

(assert (=> b!7056127 (= lt!2532574 (toList!10917 lt!2532542))))

(declare-fun b!7056128 () Bool)

(declare-fun e!4242020 () Bool)

(declare-fun e!4242017 () Bool)

(assert (=> b!7056128 (= e!4242020 e!4242017)))

(declare-fun res!2880675 () Bool)

(assert (=> b!7056128 (=> res!2880675 e!4242017)))

(declare-fun lt!2532537 () (Set Context!13144))

(declare-fun lt!2532541 () (Set Context!13144))

(declare-fun derivationStepZipper!3026 ((Set Context!13144) C!35422) (Set Context!13144))

(assert (=> b!7056128 (= res!2880675 (not (= (derivationStepZipper!3026 lt!2532541 (h!74579 s!7408)) lt!2532537)))))

(declare-fun lt!2532575 () Unit!161825)

(declare-fun lt!2532555 () List!68254)

(assert (=> b!7056128 (= lt!2532575 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532548 () Unit!161825)

(assert (=> b!7056128 (= lt!2532548 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lambda!420572 () Int)

(declare-fun lt!2532557 () Context!13144)

(declare-fun flatMap!2502 ((Set Context!13144) Int) (Set Context!13144))

(declare-fun derivationStepZipperUp!2160 (Context!13144 C!35422) (Set Context!13144))

(assert (=> b!7056128 (= (flatMap!2502 lt!2532541 lambda!420572) (derivationStepZipperUp!2160 lt!2532557 (h!74579 s!7408)))))

(declare-fun lt!2532569 () Unit!161825)

(declare-fun lemmaFlatMapOnSingletonSet!2011 ((Set Context!13144) Context!13144 Int) Unit!161825)

(assert (=> b!7056128 (= lt!2532569 (lemmaFlatMapOnSingletonSet!2011 lt!2532541 lt!2532557 lambda!420572))))

(assert (=> b!7056128 (= lt!2532541 (set.insert lt!2532557 (as set.empty (Set Context!13144))))))

(declare-fun lt!2532576 () Unit!161825)

(assert (=> b!7056128 (= lt!2532576 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532549 () Unit!161825)

(assert (=> b!7056128 (= lt!2532549 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun b!7056129 () Bool)

(declare-fun e!4242019 () Bool)

(declare-fun e!4242025 () Bool)

(assert (=> b!7056129 (= e!4242019 e!4242025)))

(declare-fun res!2880663 () Bool)

(assert (=> b!7056129 (=> res!2880663 e!4242025)))

(declare-fun lt!2532540 () (Set Context!13144))

(declare-fun lt!2532565 () (Set Context!13144))

(assert (=> b!7056129 (= res!2880663 (not (= lt!2532540 lt!2532565)))))

(declare-fun lt!2532559 () (Set Context!13144))

(assert (=> b!7056129 (= lt!2532565 (set.union lt!2532559 lt!2532537))))

(assert (=> b!7056129 (= lt!2532537 (derivationStepZipperUp!2160 lt!2532557 (h!74579 s!7408)))))

(declare-fun derivationStepZipperDown!2210 (Regex!17576 Context!13144 C!35422) (Set Context!13144))

(assert (=> b!7056129 (= lt!2532559 (derivationStepZipperDown!2210 (h!74578 (exprs!7072 lt!2532570)) lt!2532557 (h!74579 s!7408)))))

(declare-fun ++!15659 (List!68254 List!68254) List!68254)

(assert (=> b!7056129 (= lt!2532557 (Context!13145 (++!15659 lt!2532555 (exprs!7072 ct2!306))))))

(declare-fun lt!2532560 () Unit!161825)

(assert (=> b!7056129 (= lt!2532560 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532553 () Unit!161825)

(assert (=> b!7056129 (= lt!2532553 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun b!7056130 () Bool)

(declare-fun res!2880676 () Bool)

(declare-fun e!4242027 () Bool)

(assert (=> b!7056130 (=> res!2880676 e!4242027)))

(declare-fun lt!2532561 () Bool)

(assert (=> b!7056130 (= res!2880676 (not lt!2532561))))

(declare-fun e!4242024 () Bool)

(assert (=> b!7056131 (= e!4242016 e!4242024)))

(declare-fun res!2880667 () Bool)

(assert (=> b!7056131 (=> res!2880667 e!4242024)))

(assert (=> b!7056131 (= res!2880667 (not (= (derivationStepZipper!3026 lt!2532546 (h!74579 s!7408)) lt!2532540)))))

(assert (=> b!7056131 (= (flatMap!2502 lt!2532546 lambda!420572) (derivationStepZipperUp!2160 lt!2532573 (h!74579 s!7408)))))

(declare-fun lt!2532571 () Unit!161825)

(assert (=> b!7056131 (= lt!2532571 (lemmaFlatMapOnSingletonSet!2011 lt!2532546 lt!2532573 lambda!420572))))

(assert (=> b!7056131 (= lt!2532540 (derivationStepZipperUp!2160 lt!2532573 (h!74579 s!7408)))))

(declare-fun lt!2532572 () Unit!161825)

(assert (=> b!7056131 (= lt!2532572 (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532570) (exprs!7072 ct2!306) lambda!420571))))

(declare-fun b!7056132 () Bool)

(declare-fun e!4242023 () Bool)

(declare-fun inv!86800 (Context!13144) Bool)

(assert (=> b!7056132 (= e!4242023 (inv!86800 lt!2532557))))

(declare-fun lt!2532535 () Unit!161825)

(assert (=> b!7056132 (= lt!2532535 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532562 () Unit!161825)

(assert (=> b!7056132 (= lt!2532562 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532547 () (Set Context!13144))

(declare-fun lt!2532543 () Context!13144)

(assert (=> b!7056132 (= (flatMap!2502 lt!2532547 lambda!420572) (derivationStepZipperUp!2160 lt!2532543 (h!74579 s!7408)))))

(declare-fun lt!2532545 () Unit!161825)

(assert (=> b!7056132 (= lt!2532545 (lemmaFlatMapOnSingletonSet!2011 lt!2532547 lt!2532543 lambda!420572))))

(declare-fun lambda!420570 () Int)

(declare-fun map!15897 ((Set Context!13144) Int) (Set Context!13144))

(assert (=> b!7056132 (= (map!15897 lt!2532547 lambda!420570) (set.insert (Context!13145 (++!15659 lt!2532555 (exprs!7072 ct2!306))) (as set.empty (Set Context!13144))))))

(declare-fun lt!2532544 () Unit!161825)

(assert (=> b!7056132 (= lt!2532544 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532563 () Unit!161825)

(declare-fun lemmaMapOnSingletonSet!393 ((Set Context!13144) Context!13144 Int) Unit!161825)

(assert (=> b!7056132 (= lt!2532563 (lemmaMapOnSingletonSet!393 lt!2532547 lt!2532543 lambda!420570))))

(assert (=> b!7056132 (= lt!2532547 (set.insert lt!2532543 (as set.empty (Set Context!13144))))))

(declare-fun b!7056133 () Bool)

(assert (=> b!7056133 (= e!4242025 e!4242027)))

(declare-fun res!2880665 () Bool)

(assert (=> b!7056133 (=> res!2880665 e!4242027)))

(declare-fun e!4242013 () Bool)

(assert (=> b!7056133 (= res!2880665 e!4242013)))

(declare-fun res!2880674 () Bool)

(assert (=> b!7056133 (=> (not res!2880674) (not e!4242013))))

(declare-fun lt!2532566 () Bool)

(assert (=> b!7056133 (= res!2880674 (not (= lt!2532561 lt!2532566)))))

(assert (=> b!7056133 (= lt!2532561 (matchZipper!3116 lt!2532540 (t!382034 s!7408)))))

(declare-fun lt!2532551 () Unit!161825)

(assert (=> b!7056133 (= lt!2532551 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun e!4242014 () Bool)

(assert (=> b!7056133 (= (matchZipper!3116 lt!2532565 (t!382034 s!7408)) e!4242014)))

(declare-fun res!2880661 () Bool)

(assert (=> b!7056133 (=> res!2880661 e!4242014)))

(assert (=> b!7056133 (= res!2880661 lt!2532566)))

(assert (=> b!7056133 (= lt!2532566 (matchZipper!3116 lt!2532559 (t!382034 s!7408)))))

(declare-fun lt!2532536 () Unit!161825)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1589 ((Set Context!13144) (Set Context!13144) List!68255) Unit!161825)

(assert (=> b!7056133 (= lt!2532536 (lemmaZipperConcatMatchesSameAsBothZippers!1589 lt!2532559 lt!2532537 (t!382034 s!7408)))))

(declare-fun lt!2532564 () Unit!161825)

(assert (=> b!7056133 (= lt!2532564 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun lt!2532554 () Unit!161825)

(assert (=> b!7056133 (= lt!2532554 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun res!2880671 () Bool)

(assert (=> start!684410 (=> (not res!2880671) (not e!4242022))))

(assert (=> start!684410 (= res!2880671 (matchZipper!3116 lt!2532542 s!7408))))

(declare-fun z1!570 () (Set Context!13144))

(declare-fun appendTo!697 ((Set Context!13144) Context!13144) (Set Context!13144))

(assert (=> start!684410 (= lt!2532542 (appendTo!697 z1!570 ct2!306))))

(assert (=> start!684410 e!4242022))

(declare-fun condSetEmpty!49876 () Bool)

(assert (=> start!684410 (= condSetEmpty!49876 (= z1!570 (as set.empty (Set Context!13144))))))

(declare-fun setRes!49876 () Bool)

(assert (=> start!684410 setRes!49876))

(declare-fun e!4242018 () Bool)

(assert (=> start!684410 (and (inv!86800 ct2!306) e!4242018)))

(declare-fun e!4242015 () Bool)

(assert (=> start!684410 e!4242015))

(declare-fun b!7056134 () Bool)

(assert (=> b!7056134 (= e!4242014 (matchZipper!3116 lt!2532537 (t!382034 s!7408)))))

(declare-fun b!7056135 () Bool)

(declare-fun tp!1940308 () Bool)

(assert (=> b!7056135 (= e!4242018 tp!1940308)))

(assert (=> b!7056136 (= e!4242026 e!4242028)))

(declare-fun res!2880669 () Bool)

(assert (=> b!7056136 (=> res!2880669 e!4242028)))

(assert (=> b!7056136 (= res!2880669 (or (not (= lt!2532573 lt!2532568)) (not (set.member lt!2532570 z1!570))))))

(assert (=> b!7056136 (= lt!2532573 (Context!13145 (++!15659 (exprs!7072 lt!2532570) (exprs!7072 ct2!306))))))

(declare-fun lt!2532538 () Unit!161825)

(assert (=> b!7056136 (= lt!2532538 (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532570) (exprs!7072 ct2!306) lambda!420571))))

(declare-fun mapPost2!405 ((Set Context!13144) Int Context!13144) Context!13144)

(assert (=> b!7056136 (= lt!2532570 (mapPost2!405 z1!570 lambda!420570 lt!2532568))))

(declare-fun b!7056137 () Bool)

(declare-fun res!2880664 () Bool)

(assert (=> b!7056137 (=> res!2880664 e!4242024)))

(assert (=> b!7056137 (= res!2880664 (not (is-Cons!68130 (exprs!7072 lt!2532570))))))

(declare-fun b!7056138 () Bool)

(declare-fun tp_is_empty!44377 () Bool)

(declare-fun tp!1940306 () Bool)

(assert (=> b!7056138 (= e!4242015 (and tp_is_empty!44377 tp!1940306))))

(declare-fun b!7056139 () Bool)

(declare-fun res!2880670 () Bool)

(assert (=> b!7056139 (=> res!2880670 e!4242026)))

(assert (=> b!7056139 (= res!2880670 (not (set.member lt!2532568 lt!2532542)))))

(declare-fun b!7056140 () Bool)

(assert (=> b!7056140 (= e!4242024 e!4242019)))

(declare-fun res!2880666 () Bool)

(assert (=> b!7056140 (=> res!2880666 e!4242019)))

(declare-fun nullable!7259 (Regex!17576) Bool)

(assert (=> b!7056140 (= res!2880666 (not (nullable!7259 (h!74578 (exprs!7072 lt!2532570)))))))

(assert (=> b!7056140 (= lt!2532543 (Context!13145 lt!2532555))))

(declare-fun tail!13710 (List!68254) List!68254)

(assert (=> b!7056140 (= lt!2532555 (tail!13710 (exprs!7072 lt!2532570)))))

(declare-fun setIsEmpty!49876 () Bool)

(assert (=> setIsEmpty!49876 setRes!49876))

(declare-fun b!7056141 () Bool)

(declare-fun res!2880672 () Bool)

(assert (=> b!7056141 (=> res!2880672 e!4242024)))

(declare-fun isEmpty!39738 (List!68254) Bool)

(assert (=> b!7056141 (= res!2880672 (isEmpty!39738 (exprs!7072 lt!2532570)))))

(declare-fun b!7056142 () Bool)

(assert (=> b!7056142 (= e!4242017 e!4242023)))

(declare-fun res!2880659 () Bool)

(assert (=> b!7056142 (=> res!2880659 e!4242023)))

(assert (=> b!7056142 (= res!2880659 (not (matchZipper!3116 lt!2532541 s!7408)))))

(declare-fun lt!2532552 () Unit!161825)

(assert (=> b!7056142 (= lt!2532552 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun b!7056143 () Bool)

(declare-fun e!4242021 () Bool)

(declare-fun tp!1940307 () Bool)

(assert (=> b!7056143 (= e!4242021 tp!1940307)))

(declare-fun b!7056144 () Bool)

(declare-fun res!2880668 () Bool)

(assert (=> b!7056144 (=> (not res!2880668) (not e!4242022))))

(assert (=> b!7056144 (= res!2880668 (is-Cons!68131 s!7408))))

(declare-fun b!7056145 () Bool)

(assert (=> b!7056145 (= e!4242013 (not (matchZipper!3116 lt!2532537 (t!382034 s!7408))))))

(declare-fun lt!2532567 () Unit!161825)

(assert (=> b!7056145 (= lt!2532567 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun b!7056146 () Bool)

(assert (=> b!7056146 (= e!4242027 e!4242020)))

(declare-fun res!2880662 () Bool)

(assert (=> b!7056146 (=> res!2880662 e!4242020)))

(assert (=> b!7056146 (= res!2880662 (not (matchZipper!3116 lt!2532537 (t!382034 s!7408))))))

(declare-fun lt!2532558 () Unit!161825)

(assert (=> b!7056146 (= lt!2532558 (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(declare-fun tp!1940305 () Bool)

(declare-fun setElem!49876 () Context!13144)

(declare-fun setNonEmpty!49876 () Bool)

(assert (=> setNonEmpty!49876 (= setRes!49876 (and tp!1940305 (inv!86800 setElem!49876) e!4242021))))

(declare-fun setRest!49876 () (Set Context!13144))

(assert (=> setNonEmpty!49876 (= z1!570 (set.union (set.insert setElem!49876 (as set.empty (Set Context!13144))) setRest!49876))))

(assert (= (and start!684410 res!2880671) b!7056144))

(assert (= (and b!7056144 res!2880668) b!7056127))

(assert (= (and b!7056127 (not res!2880660)) b!7056139))

(assert (= (and b!7056139 (not res!2880670)) b!7056136))

(assert (= (and b!7056136 (not res!2880669)) b!7056126))

(assert (= (and b!7056126 (not res!2880673)) b!7056131))

(assert (= (and b!7056131 (not res!2880667)) b!7056137))

(assert (= (and b!7056137 (not res!2880664)) b!7056141))

(assert (= (and b!7056141 (not res!2880672)) b!7056140))

(assert (= (and b!7056140 (not res!2880666)) b!7056129))

(assert (= (and b!7056129 (not res!2880663)) b!7056133))

(assert (= (and b!7056133 (not res!2880661)) b!7056134))

(assert (= (and b!7056133 res!2880674) b!7056145))

(assert (= (and b!7056133 (not res!2880665)) b!7056130))

(assert (= (and b!7056130 (not res!2880676)) b!7056146))

(assert (= (and b!7056146 (not res!2880662)) b!7056128))

(assert (= (and b!7056128 (not res!2880675)) b!7056142))

(assert (= (and b!7056142 (not res!2880659)) b!7056132))

(assert (= (and start!684410 condSetEmpty!49876) setIsEmpty!49876))

(assert (= (and start!684410 (not condSetEmpty!49876)) setNonEmpty!49876))

(assert (= setNonEmpty!49876 b!7056143))

(assert (= start!684410 b!7056135))

(assert (= (and start!684410 (is-Cons!68131 s!7408)) b!7056138))

(declare-fun m!7774052 () Bool)

(assert (=> b!7056131 m!7774052))

(declare-fun m!7774054 () Bool)

(assert (=> b!7056131 m!7774054))

(declare-fun m!7774056 () Bool)

(assert (=> b!7056131 m!7774056))

(declare-fun m!7774058 () Bool)

(assert (=> b!7056131 m!7774058))

(declare-fun m!7774060 () Bool)

(assert (=> b!7056131 m!7774060))

(declare-fun m!7774062 () Bool)

(assert (=> b!7056146 m!7774062))

(declare-fun m!7774064 () Bool)

(assert (=> b!7056146 m!7774064))

(declare-fun m!7774066 () Bool)

(assert (=> b!7056132 m!7774066))

(declare-fun m!7774068 () Bool)

(assert (=> b!7056132 m!7774068))

(declare-fun m!7774070 () Bool)

(assert (=> b!7056132 m!7774070))

(assert (=> b!7056132 m!7774064))

(assert (=> b!7056132 m!7774064))

(declare-fun m!7774072 () Bool)

(assert (=> b!7056132 m!7774072))

(assert (=> b!7056132 m!7774064))

(declare-fun m!7774074 () Bool)

(assert (=> b!7056132 m!7774074))

(declare-fun m!7774076 () Bool)

(assert (=> b!7056132 m!7774076))

(declare-fun m!7774078 () Bool)

(assert (=> b!7056132 m!7774078))

(declare-fun m!7774080 () Bool)

(assert (=> b!7056132 m!7774080))

(declare-fun m!7774082 () Bool)

(assert (=> b!7056132 m!7774082))

(declare-fun m!7774084 () Bool)

(assert (=> b!7056142 m!7774084))

(assert (=> b!7056142 m!7774064))

(assert (=> b!7056145 m!7774062))

(assert (=> b!7056145 m!7774064))

(declare-fun m!7774086 () Bool)

(assert (=> setNonEmpty!49876 m!7774086))

(assert (=> b!7056134 m!7774062))

(declare-fun m!7774088 () Bool)

(assert (=> b!7056128 m!7774088))

(assert (=> b!7056128 m!7774064))

(declare-fun m!7774090 () Bool)

(assert (=> b!7056128 m!7774090))

(assert (=> b!7056128 m!7774064))

(assert (=> b!7056128 m!7774064))

(assert (=> b!7056128 m!7774064))

(declare-fun m!7774092 () Bool)

(assert (=> b!7056128 m!7774092))

(declare-fun m!7774094 () Bool)

(assert (=> b!7056128 m!7774094))

(declare-fun m!7774096 () Bool)

(assert (=> b!7056128 m!7774096))

(declare-fun m!7774098 () Bool)

(assert (=> b!7056140 m!7774098))

(declare-fun m!7774100 () Bool)

(assert (=> b!7056140 m!7774100))

(declare-fun m!7774102 () Bool)

(assert (=> b!7056133 m!7774102))

(assert (=> b!7056133 m!7774064))

(declare-fun m!7774104 () Bool)

(assert (=> b!7056133 m!7774104))

(assert (=> b!7056133 m!7774064))

(declare-fun m!7774106 () Bool)

(assert (=> b!7056133 m!7774106))

(declare-fun m!7774108 () Bool)

(assert (=> b!7056133 m!7774108))

(assert (=> b!7056133 m!7774064))

(declare-fun m!7774110 () Bool)

(assert (=> b!7056127 m!7774110))

(declare-fun m!7774112 () Bool)

(assert (=> b!7056127 m!7774112))

(declare-fun m!7774114 () Bool)

(assert (=> b!7056127 m!7774114))

(declare-fun m!7774116 () Bool)

(assert (=> b!7056127 m!7774116))

(declare-fun m!7774118 () Bool)

(assert (=> b!7056127 m!7774118))

(declare-fun m!7774120 () Bool)

(assert (=> b!7056127 m!7774120))

(declare-fun m!7774122 () Bool)

(assert (=> b!7056141 m!7774122))

(declare-fun m!7774124 () Bool)

(assert (=> start!684410 m!7774124))

(declare-fun m!7774126 () Bool)

(assert (=> start!684410 m!7774126))

(declare-fun m!7774128 () Bool)

(assert (=> start!684410 m!7774128))

(declare-fun m!7774130 () Bool)

(assert (=> b!7056139 m!7774130))

(declare-fun m!7774132 () Bool)

(assert (=> b!7056126 m!7774132))

(assert (=> b!7056126 m!7774060))

(assert (=> b!7056129 m!7774064))

(assert (=> b!7056129 m!7774088))

(declare-fun m!7774134 () Bool)

(assert (=> b!7056129 m!7774134))

(assert (=> b!7056129 m!7774068))

(assert (=> b!7056129 m!7774064))

(declare-fun m!7774136 () Bool)

(assert (=> b!7056136 m!7774136))

(declare-fun m!7774138 () Bool)

(assert (=> b!7056136 m!7774138))

(assert (=> b!7056136 m!7774060))

(declare-fun m!7774140 () Bool)

(assert (=> b!7056136 m!7774140))

(push 1)

(assert (not b!7056134))

(assert (not b!7056131))

(assert (not b!7056128))

(assert (not b!7056132))

(assert (not b!7056141))

(assert (not b!7056146))

(assert (not b!7056133))

(assert (not start!684410))

(assert (not b!7056145))

(assert (not b!7056136))

(assert (not b!7056140))

(assert (not b!7056143))

(assert (not b!7056138))

(assert (not setNonEmpty!49876))

(assert (not b!7056135))

(assert (not b!7056127))

(assert tp_is_empty!44377)

(assert (not b!7056142))

(assert (not b!7056129))

(assert (not b!7056126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2205162 () Bool)

(declare-fun choose!53831 ((Set Context!13144) Int) (Set Context!13144))

(assert (=> d!2205162 (= (flatMap!2502 lt!2532547 lambda!420572) (choose!53831 lt!2532547 lambda!420572))))

(declare-fun bs!1877133 () Bool)

(assert (= bs!1877133 d!2205162))

(declare-fun m!7774232 () Bool)

(assert (=> bs!1877133 m!7774232))

(assert (=> b!7056132 d!2205162))

(declare-fun d!2205164 () Bool)

(declare-fun forall!16523 (List!68254 Int) Bool)

(assert (=> d!2205164 (forall!16523 (++!15659 lt!2532555 (exprs!7072 ct2!306)) lambda!420571)))

(declare-fun lt!2532709 () Unit!161825)

(declare-fun choose!53832 (List!68254 List!68254 Int) Unit!161825)

(assert (=> d!2205164 (= lt!2532709 (choose!53832 lt!2532555 (exprs!7072 ct2!306) lambda!420571))))

(assert (=> d!2205164 (forall!16523 lt!2532555 lambda!420571)))

(assert (=> d!2205164 (= (lemmaConcatPreservesForall!887 lt!2532555 (exprs!7072 ct2!306) lambda!420571) lt!2532709)))

(declare-fun bs!1877134 () Bool)

(assert (= bs!1877134 d!2205164))

(assert (=> bs!1877134 m!7774068))

(assert (=> bs!1877134 m!7774068))

(declare-fun m!7774234 () Bool)

(assert (=> bs!1877134 m!7774234))

(declare-fun m!7774236 () Bool)

(assert (=> bs!1877134 m!7774236))

(declare-fun m!7774238 () Bool)

(assert (=> bs!1877134 m!7774238))

(assert (=> b!7056132 d!2205164))

(declare-fun d!2205166 () Bool)

(declare-fun dynLambda!27650 (Int Context!13144) (Set Context!13144))

(assert (=> d!2205166 (= (flatMap!2502 lt!2532547 lambda!420572) (dynLambda!27650 lambda!420572 lt!2532543))))

(declare-fun lt!2532712 () Unit!161825)

(declare-fun choose!53833 ((Set Context!13144) Context!13144 Int) Unit!161825)

(assert (=> d!2205166 (= lt!2532712 (choose!53833 lt!2532547 lt!2532543 lambda!420572))))

(assert (=> d!2205166 (= lt!2532547 (set.insert lt!2532543 (as set.empty (Set Context!13144))))))

(assert (=> d!2205166 (= (lemmaFlatMapOnSingletonSet!2011 lt!2532547 lt!2532543 lambda!420572) lt!2532712)))

(declare-fun b_lambda!268747 () Bool)

(assert (=> (not b_lambda!268747) (not d!2205166)))

(declare-fun bs!1877135 () Bool)

(assert (= bs!1877135 d!2205166))

(assert (=> bs!1877135 m!7774070))

(declare-fun m!7774240 () Bool)

(assert (=> bs!1877135 m!7774240))

(declare-fun m!7774242 () Bool)

(assert (=> bs!1877135 m!7774242))

(assert (=> bs!1877135 m!7774072))

(assert (=> b!7056132 d!2205166))

(declare-fun b!7056232 () Bool)

(declare-fun e!4242083 () (Set Context!13144))

(declare-fun call!641026 () (Set Context!13144))

(assert (=> b!7056232 (= e!4242083 call!641026)))

(declare-fun b!7056233 () Bool)

(declare-fun e!4242085 () Bool)

(assert (=> b!7056233 (= e!4242085 (nullable!7259 (h!74578 (exprs!7072 lt!2532543))))))

(declare-fun b!7056234 () Bool)

(declare-fun e!4242084 () (Set Context!13144))

(assert (=> b!7056234 (= e!4242084 e!4242083)))

(declare-fun c!1314650 () Bool)

(assert (=> b!7056234 (= c!1314650 (is-Cons!68130 (exprs!7072 lt!2532543)))))

(declare-fun b!7056235 () Bool)

(assert (=> b!7056235 (= e!4242083 (as set.empty (Set Context!13144)))))

(declare-fun d!2205168 () Bool)

(declare-fun c!1314651 () Bool)

(assert (=> d!2205168 (= c!1314651 e!4242085)))

(declare-fun res!2880734 () Bool)

(assert (=> d!2205168 (=> (not res!2880734) (not e!4242085))))

(assert (=> d!2205168 (= res!2880734 (is-Cons!68130 (exprs!7072 lt!2532543)))))

(assert (=> d!2205168 (= (derivationStepZipperUp!2160 lt!2532543 (h!74579 s!7408)) e!4242084)))

(declare-fun b!7056236 () Bool)

(assert (=> b!7056236 (= e!4242084 (set.union call!641026 (derivationStepZipperUp!2160 (Context!13145 (t!382033 (exprs!7072 lt!2532543))) (h!74579 s!7408))))))

(declare-fun bm!641021 () Bool)

(assert (=> bm!641021 (= call!641026 (derivationStepZipperDown!2210 (h!74578 (exprs!7072 lt!2532543)) (Context!13145 (t!382033 (exprs!7072 lt!2532543))) (h!74579 s!7408)))))

(assert (= (and d!2205168 res!2880734) b!7056233))

(assert (= (and d!2205168 c!1314651) b!7056236))

(assert (= (and d!2205168 (not c!1314651)) b!7056234))

(assert (= (and b!7056234 c!1314650) b!7056232))

(assert (= (and b!7056234 (not c!1314650)) b!7056235))

(assert (= (or b!7056236 b!7056232) bm!641021))

(declare-fun m!7774244 () Bool)

(assert (=> b!7056233 m!7774244))

(declare-fun m!7774246 () Bool)

(assert (=> b!7056236 m!7774246))

(declare-fun m!7774248 () Bool)

(assert (=> bm!641021 m!7774248))

(assert (=> b!7056132 d!2205168))

(declare-fun d!2205170 () Bool)

(declare-fun choose!53834 ((Set Context!13144) Int) (Set Context!13144))

(assert (=> d!2205170 (= (map!15897 lt!2532547 lambda!420570) (choose!53834 lt!2532547 lambda!420570))))

(declare-fun bs!1877136 () Bool)

(assert (= bs!1877136 d!2205170))

(declare-fun m!7774250 () Bool)

(assert (=> bs!1877136 m!7774250))

(assert (=> b!7056132 d!2205170))

(declare-fun d!2205172 () Bool)

(declare-fun dynLambda!27651 (Int Context!13144) Context!13144)

(assert (=> d!2205172 (= (map!15897 lt!2532547 lambda!420570) (set.insert (dynLambda!27651 lambda!420570 lt!2532543) (as set.empty (Set Context!13144))))))

(declare-fun lt!2532715 () Unit!161825)

(declare-fun choose!53835 ((Set Context!13144) Context!13144 Int) Unit!161825)

(assert (=> d!2205172 (= lt!2532715 (choose!53835 lt!2532547 lt!2532543 lambda!420570))))

(assert (=> d!2205172 (= lt!2532547 (set.insert lt!2532543 (as set.empty (Set Context!13144))))))

(assert (=> d!2205172 (= (lemmaMapOnSingletonSet!393 lt!2532547 lt!2532543 lambda!420570) lt!2532715)))

(declare-fun b_lambda!268749 () Bool)

(assert (=> (not b_lambda!268749) (not d!2205172)))

(declare-fun bs!1877137 () Bool)

(assert (= bs!1877137 d!2205172))

(declare-fun m!7774252 () Bool)

(assert (=> bs!1877137 m!7774252))

(declare-fun m!7774254 () Bool)

(assert (=> bs!1877137 m!7774254))

(assert (=> bs!1877137 m!7774074))

(declare-fun m!7774256 () Bool)

(assert (=> bs!1877137 m!7774256))

(assert (=> bs!1877137 m!7774252))

(assert (=> bs!1877137 m!7774072))

(assert (=> b!7056132 d!2205172))

(declare-fun bs!1877138 () Bool)

(declare-fun d!2205174 () Bool)

(assert (= bs!1877138 (and d!2205174 b!7056136)))

(declare-fun lambda!420633 () Int)

(assert (=> bs!1877138 (= lambda!420633 lambda!420571)))

(assert (=> d!2205174 (= (inv!86800 lt!2532557) (forall!16523 (exprs!7072 lt!2532557) lambda!420633))))

(declare-fun bs!1877139 () Bool)

(assert (= bs!1877139 d!2205174))

(declare-fun m!7774258 () Bool)

(assert (=> bs!1877139 m!7774258))

(assert (=> b!7056132 d!2205174))

(declare-fun d!2205176 () Bool)

(declare-fun e!4242091 () Bool)

(assert (=> d!2205176 e!4242091))

(declare-fun res!2880740 () Bool)

(assert (=> d!2205176 (=> (not res!2880740) (not e!4242091))))

(declare-fun lt!2532718 () List!68254)

(declare-fun content!13691 (List!68254) (Set Regex!17576))

(assert (=> d!2205176 (= res!2880740 (= (content!13691 lt!2532718) (set.union (content!13691 lt!2532555) (content!13691 (exprs!7072 ct2!306)))))))

(declare-fun e!4242090 () List!68254)

(assert (=> d!2205176 (= lt!2532718 e!4242090)))

(declare-fun c!1314654 () Bool)

(assert (=> d!2205176 (= c!1314654 (is-Nil!68130 lt!2532555))))

(assert (=> d!2205176 (= (++!15659 lt!2532555 (exprs!7072 ct2!306)) lt!2532718)))

(declare-fun b!7056247 () Bool)

(declare-fun res!2880739 () Bool)

(assert (=> b!7056247 (=> (not res!2880739) (not e!4242091))))

(declare-fun size!41155 (List!68254) Int)

(assert (=> b!7056247 (= res!2880739 (= (size!41155 lt!2532718) (+ (size!41155 lt!2532555) (size!41155 (exprs!7072 ct2!306)))))))

(declare-fun b!7056245 () Bool)

(assert (=> b!7056245 (= e!4242090 (exprs!7072 ct2!306))))

(declare-fun b!7056248 () Bool)

(assert (=> b!7056248 (= e!4242091 (or (not (= (exprs!7072 ct2!306) Nil!68130)) (= lt!2532718 lt!2532555)))))

(declare-fun b!7056246 () Bool)

(assert (=> b!7056246 (= e!4242090 (Cons!68130 (h!74578 lt!2532555) (++!15659 (t!382033 lt!2532555) (exprs!7072 ct2!306))))))

(assert (= (and d!2205176 c!1314654) b!7056245))

(assert (= (and d!2205176 (not c!1314654)) b!7056246))

(assert (= (and d!2205176 res!2880740) b!7056247))

(assert (= (and b!7056247 res!2880739) b!7056248))

(declare-fun m!7774260 () Bool)

(assert (=> d!2205176 m!7774260))

(declare-fun m!7774262 () Bool)

(assert (=> d!2205176 m!7774262))

(declare-fun m!7774264 () Bool)

(assert (=> d!2205176 m!7774264))

(declare-fun m!7774266 () Bool)

(assert (=> b!7056247 m!7774266))

(declare-fun m!7774268 () Bool)

(assert (=> b!7056247 m!7774268))

(declare-fun m!7774270 () Bool)

(assert (=> b!7056247 m!7774270))

(declare-fun m!7774272 () Bool)

(assert (=> b!7056246 m!7774272))

(assert (=> b!7056132 d!2205176))

(declare-fun d!2205178 () Bool)

(assert (=> d!2205178 (= (isEmpty!39738 (exprs!7072 lt!2532570)) (is-Nil!68130 (exprs!7072 lt!2532570)))))

(assert (=> b!7056141 d!2205178))

(declare-fun bs!1877140 () Bool)

(declare-fun d!2205180 () Bool)

(assert (= bs!1877140 (and d!2205180 b!7056131)))

(declare-fun lambda!420636 () Int)

(assert (=> bs!1877140 (= lambda!420636 lambda!420572)))

(assert (=> d!2205180 true))

(assert (=> d!2205180 (= (derivationStepZipper!3026 lt!2532546 (h!74579 s!7408)) (flatMap!2502 lt!2532546 lambda!420636))))

(declare-fun bs!1877141 () Bool)

(assert (= bs!1877141 d!2205180))

(declare-fun m!7774274 () Bool)

(assert (=> bs!1877141 m!7774274))

(assert (=> b!7056131 d!2205180))

(declare-fun d!2205182 () Bool)

(assert (=> d!2205182 (forall!16523 (++!15659 (exprs!7072 lt!2532570) (exprs!7072 ct2!306)) lambda!420571)))

(declare-fun lt!2532719 () Unit!161825)

(assert (=> d!2205182 (= lt!2532719 (choose!53832 (exprs!7072 lt!2532570) (exprs!7072 ct2!306) lambda!420571))))

(assert (=> d!2205182 (forall!16523 (exprs!7072 lt!2532570) lambda!420571)))

(assert (=> d!2205182 (= (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532570) (exprs!7072 ct2!306) lambda!420571) lt!2532719)))

(declare-fun bs!1877142 () Bool)

(assert (= bs!1877142 d!2205182))

(assert (=> bs!1877142 m!7774138))

(assert (=> bs!1877142 m!7774138))

(declare-fun m!7774276 () Bool)

(assert (=> bs!1877142 m!7774276))

(declare-fun m!7774278 () Bool)

(assert (=> bs!1877142 m!7774278))

(declare-fun m!7774280 () Bool)

(assert (=> bs!1877142 m!7774280))

(assert (=> b!7056131 d!2205182))

(declare-fun d!2205184 () Bool)

(assert (=> d!2205184 (= (flatMap!2502 lt!2532546 lambda!420572) (dynLambda!27650 lambda!420572 lt!2532573))))

(declare-fun lt!2532720 () Unit!161825)

(assert (=> d!2205184 (= lt!2532720 (choose!53833 lt!2532546 lt!2532573 lambda!420572))))

(assert (=> d!2205184 (= lt!2532546 (set.insert lt!2532573 (as set.empty (Set Context!13144))))))

(assert (=> d!2205184 (= (lemmaFlatMapOnSingletonSet!2011 lt!2532546 lt!2532573 lambda!420572) lt!2532720)))

(declare-fun b_lambda!268751 () Bool)

(assert (=> (not b_lambda!268751) (not d!2205184)))

(declare-fun bs!1877143 () Bool)

(assert (= bs!1877143 d!2205184))

(assert (=> bs!1877143 m!7774054))

(declare-fun m!7774282 () Bool)

(assert (=> bs!1877143 m!7774282))

(declare-fun m!7774284 () Bool)

(assert (=> bs!1877143 m!7774284))

(assert (=> bs!1877143 m!7774132))

(assert (=> b!7056131 d!2205184))

(declare-fun d!2205186 () Bool)

(assert (=> d!2205186 (= (flatMap!2502 lt!2532546 lambda!420572) (choose!53831 lt!2532546 lambda!420572))))

(declare-fun bs!1877144 () Bool)

(assert (= bs!1877144 d!2205186))

(declare-fun m!7774286 () Bool)

(assert (=> bs!1877144 m!7774286))

(assert (=> b!7056131 d!2205186))

(declare-fun b!7056251 () Bool)

(declare-fun e!4242092 () (Set Context!13144))

(declare-fun call!641027 () (Set Context!13144))

(assert (=> b!7056251 (= e!4242092 call!641027)))

(declare-fun b!7056252 () Bool)

(declare-fun e!4242094 () Bool)

(assert (=> b!7056252 (= e!4242094 (nullable!7259 (h!74578 (exprs!7072 lt!2532573))))))

(declare-fun b!7056253 () Bool)

(declare-fun e!4242093 () (Set Context!13144))

(assert (=> b!7056253 (= e!4242093 e!4242092)))

(declare-fun c!1314657 () Bool)

(assert (=> b!7056253 (= c!1314657 (is-Cons!68130 (exprs!7072 lt!2532573)))))

(declare-fun b!7056254 () Bool)

(assert (=> b!7056254 (= e!4242092 (as set.empty (Set Context!13144)))))

(declare-fun d!2205188 () Bool)

(declare-fun c!1314658 () Bool)

(assert (=> d!2205188 (= c!1314658 e!4242094)))

(declare-fun res!2880741 () Bool)

(assert (=> d!2205188 (=> (not res!2880741) (not e!4242094))))

(assert (=> d!2205188 (= res!2880741 (is-Cons!68130 (exprs!7072 lt!2532573)))))

(assert (=> d!2205188 (= (derivationStepZipperUp!2160 lt!2532573 (h!74579 s!7408)) e!4242093)))

(declare-fun b!7056255 () Bool)

(assert (=> b!7056255 (= e!4242093 (set.union call!641027 (derivationStepZipperUp!2160 (Context!13145 (t!382033 (exprs!7072 lt!2532573))) (h!74579 s!7408))))))

(declare-fun bm!641022 () Bool)

(assert (=> bm!641022 (= call!641027 (derivationStepZipperDown!2210 (h!74578 (exprs!7072 lt!2532573)) (Context!13145 (t!382033 (exprs!7072 lt!2532573))) (h!74579 s!7408)))))

(assert (= (and d!2205188 res!2880741) b!7056252))

(assert (= (and d!2205188 c!1314658) b!7056255))

(assert (= (and d!2205188 (not c!1314658)) b!7056253))

(assert (= (and b!7056253 c!1314657) b!7056251))

(assert (= (and b!7056253 (not c!1314657)) b!7056254))

(assert (= (or b!7056255 b!7056251) bm!641022))

(declare-fun m!7774288 () Bool)

(assert (=> b!7056252 m!7774288))

(declare-fun m!7774290 () Bool)

(assert (=> b!7056255 m!7774290))

(declare-fun m!7774292 () Bool)

(assert (=> bm!641022 m!7774292))

(assert (=> b!7056131 d!2205188))

(declare-fun d!2205190 () Bool)

(declare-fun c!1314661 () Bool)

(declare-fun isEmpty!39740 (List!68255) Bool)

(assert (=> d!2205190 (= c!1314661 (isEmpty!39740 (t!382034 s!7408)))))

(declare-fun e!4242097 () Bool)

(assert (=> d!2205190 (= (matchZipper!3116 lt!2532565 (t!382034 s!7408)) e!4242097)))

(declare-fun b!7056260 () Bool)

(declare-fun nullableZipper!2661 ((Set Context!13144)) Bool)

(assert (=> b!7056260 (= e!4242097 (nullableZipper!2661 lt!2532565))))

(declare-fun b!7056261 () Bool)

(declare-fun head!14362 (List!68255) C!35422)

(declare-fun tail!13712 (List!68255) List!68255)

(assert (=> b!7056261 (= e!4242097 (matchZipper!3116 (derivationStepZipper!3026 lt!2532565 (head!14362 (t!382034 s!7408))) (tail!13712 (t!382034 s!7408))))))

(assert (= (and d!2205190 c!1314661) b!7056260))

(assert (= (and d!2205190 (not c!1314661)) b!7056261))

(declare-fun m!7774294 () Bool)

(assert (=> d!2205190 m!7774294))

(declare-fun m!7774296 () Bool)

(assert (=> b!7056260 m!7774296))

(declare-fun m!7774298 () Bool)

(assert (=> b!7056261 m!7774298))

(assert (=> b!7056261 m!7774298))

(declare-fun m!7774300 () Bool)

(assert (=> b!7056261 m!7774300))

(declare-fun m!7774302 () Bool)

(assert (=> b!7056261 m!7774302))

(assert (=> b!7056261 m!7774300))

(assert (=> b!7056261 m!7774302))

(declare-fun m!7774304 () Bool)

(assert (=> b!7056261 m!7774304))

(assert (=> b!7056133 d!2205190))

(assert (=> b!7056133 d!2205164))

(declare-fun d!2205192 () Bool)

(declare-fun c!1314662 () Bool)

(assert (=> d!2205192 (= c!1314662 (isEmpty!39740 (t!382034 s!7408)))))

(declare-fun e!4242098 () Bool)

(assert (=> d!2205192 (= (matchZipper!3116 lt!2532559 (t!382034 s!7408)) e!4242098)))

(declare-fun b!7056262 () Bool)

(assert (=> b!7056262 (= e!4242098 (nullableZipper!2661 lt!2532559))))

(declare-fun b!7056263 () Bool)

(assert (=> b!7056263 (= e!4242098 (matchZipper!3116 (derivationStepZipper!3026 lt!2532559 (head!14362 (t!382034 s!7408))) (tail!13712 (t!382034 s!7408))))))

(assert (= (and d!2205192 c!1314662) b!7056262))

(assert (= (and d!2205192 (not c!1314662)) b!7056263))

(assert (=> d!2205192 m!7774294))

(declare-fun m!7774306 () Bool)

(assert (=> b!7056262 m!7774306))

(assert (=> b!7056263 m!7774298))

(assert (=> b!7056263 m!7774298))

(declare-fun m!7774308 () Bool)

(assert (=> b!7056263 m!7774308))

(assert (=> b!7056263 m!7774302))

(assert (=> b!7056263 m!7774308))

(assert (=> b!7056263 m!7774302))

(declare-fun m!7774310 () Bool)

(assert (=> b!7056263 m!7774310))

(assert (=> b!7056133 d!2205192))

(declare-fun d!2205194 () Bool)

(declare-fun c!1314663 () Bool)

(assert (=> d!2205194 (= c!1314663 (isEmpty!39740 (t!382034 s!7408)))))

(declare-fun e!4242099 () Bool)

(assert (=> d!2205194 (= (matchZipper!3116 lt!2532540 (t!382034 s!7408)) e!4242099)))

(declare-fun b!7056264 () Bool)

(assert (=> b!7056264 (= e!4242099 (nullableZipper!2661 lt!2532540))))

(declare-fun b!7056265 () Bool)

(assert (=> b!7056265 (= e!4242099 (matchZipper!3116 (derivationStepZipper!3026 lt!2532540 (head!14362 (t!382034 s!7408))) (tail!13712 (t!382034 s!7408))))))

(assert (= (and d!2205194 c!1314663) b!7056264))

(assert (= (and d!2205194 (not c!1314663)) b!7056265))

(assert (=> d!2205194 m!7774294))

(declare-fun m!7774312 () Bool)

(assert (=> b!7056264 m!7774312))

(assert (=> b!7056265 m!7774298))

(assert (=> b!7056265 m!7774298))

(declare-fun m!7774314 () Bool)

(assert (=> b!7056265 m!7774314))

(assert (=> b!7056265 m!7774302))

(assert (=> b!7056265 m!7774314))

(assert (=> b!7056265 m!7774302))

(declare-fun m!7774316 () Bool)

(assert (=> b!7056265 m!7774316))

(assert (=> b!7056133 d!2205194))

(declare-fun e!4242102 () Bool)

(declare-fun d!2205196 () Bool)

(assert (=> d!2205196 (= (matchZipper!3116 (set.union lt!2532559 lt!2532537) (t!382034 s!7408)) e!4242102)))

(declare-fun res!2880744 () Bool)

(assert (=> d!2205196 (=> res!2880744 e!4242102)))

(assert (=> d!2205196 (= res!2880744 (matchZipper!3116 lt!2532559 (t!382034 s!7408)))))

(declare-fun lt!2532723 () Unit!161825)

(declare-fun choose!53836 ((Set Context!13144) (Set Context!13144) List!68255) Unit!161825)

(assert (=> d!2205196 (= lt!2532723 (choose!53836 lt!2532559 lt!2532537 (t!382034 s!7408)))))

(assert (=> d!2205196 (= (lemmaZipperConcatMatchesSameAsBothZippers!1589 lt!2532559 lt!2532537 (t!382034 s!7408)) lt!2532723)))

(declare-fun b!7056268 () Bool)

(assert (=> b!7056268 (= e!4242102 (matchZipper!3116 lt!2532537 (t!382034 s!7408)))))

(assert (= (and d!2205196 (not res!2880744)) b!7056268))

(declare-fun m!7774318 () Bool)

(assert (=> d!2205196 m!7774318))

(assert (=> d!2205196 m!7774102))

(declare-fun m!7774320 () Bool)

(assert (=> d!2205196 m!7774320))

(assert (=> b!7056268 m!7774062))

(assert (=> b!7056133 d!2205196))

(declare-fun d!2205198 () Bool)

(declare-fun c!1314664 () Bool)

(assert (=> d!2205198 (= c!1314664 (isEmpty!39740 s!7408))))

(declare-fun e!4242103 () Bool)

(assert (=> d!2205198 (= (matchZipper!3116 lt!2532541 s!7408) e!4242103)))

(declare-fun b!7056269 () Bool)

(assert (=> b!7056269 (= e!4242103 (nullableZipper!2661 lt!2532541))))

(declare-fun b!7056270 () Bool)

(assert (=> b!7056270 (= e!4242103 (matchZipper!3116 (derivationStepZipper!3026 lt!2532541 (head!14362 s!7408)) (tail!13712 s!7408)))))

(assert (= (and d!2205198 c!1314664) b!7056269))

(assert (= (and d!2205198 (not c!1314664)) b!7056270))

(declare-fun m!7774322 () Bool)

(assert (=> d!2205198 m!7774322))

(declare-fun m!7774324 () Bool)

(assert (=> b!7056269 m!7774324))

(declare-fun m!7774326 () Bool)

(assert (=> b!7056270 m!7774326))

(assert (=> b!7056270 m!7774326))

(declare-fun m!7774328 () Bool)

(assert (=> b!7056270 m!7774328))

(declare-fun m!7774330 () Bool)

(assert (=> b!7056270 m!7774330))

(assert (=> b!7056270 m!7774328))

(assert (=> b!7056270 m!7774330))

(declare-fun m!7774332 () Bool)

(assert (=> b!7056270 m!7774332))

(assert (=> b!7056142 d!2205198))

(assert (=> b!7056142 d!2205164))

(declare-fun d!2205200 () Bool)

(declare-fun c!1314665 () Bool)

(assert (=> d!2205200 (= c!1314665 (isEmpty!39740 (t!382034 s!7408)))))

(declare-fun e!4242104 () Bool)

(assert (=> d!2205200 (= (matchZipper!3116 lt!2532537 (t!382034 s!7408)) e!4242104)))

(declare-fun b!7056271 () Bool)

(assert (=> b!7056271 (= e!4242104 (nullableZipper!2661 lt!2532537))))

(declare-fun b!7056272 () Bool)

(assert (=> b!7056272 (= e!4242104 (matchZipper!3116 (derivationStepZipper!3026 lt!2532537 (head!14362 (t!382034 s!7408))) (tail!13712 (t!382034 s!7408))))))

(assert (= (and d!2205200 c!1314665) b!7056271))

(assert (= (and d!2205200 (not c!1314665)) b!7056272))

(assert (=> d!2205200 m!7774294))

(declare-fun m!7774334 () Bool)

(assert (=> b!7056271 m!7774334))

(assert (=> b!7056272 m!7774298))

(assert (=> b!7056272 m!7774298))

(declare-fun m!7774336 () Bool)

(assert (=> b!7056272 m!7774336))

(assert (=> b!7056272 m!7774302))

(assert (=> b!7056272 m!7774336))

(assert (=> b!7056272 m!7774302))

(declare-fun m!7774338 () Bool)

(assert (=> b!7056272 m!7774338))

(assert (=> b!7056134 d!2205200))

(declare-fun d!2205202 () Bool)

(declare-fun e!4242106 () Bool)

(assert (=> d!2205202 e!4242106))

(declare-fun res!2880746 () Bool)

(assert (=> d!2205202 (=> (not res!2880746) (not e!4242106))))

(declare-fun lt!2532724 () List!68254)

(assert (=> d!2205202 (= res!2880746 (= (content!13691 lt!2532724) (set.union (content!13691 (exprs!7072 lt!2532570)) (content!13691 (exprs!7072 ct2!306)))))))

(declare-fun e!4242105 () List!68254)

(assert (=> d!2205202 (= lt!2532724 e!4242105)))

(declare-fun c!1314666 () Bool)

(assert (=> d!2205202 (= c!1314666 (is-Nil!68130 (exprs!7072 lt!2532570)))))

(assert (=> d!2205202 (= (++!15659 (exprs!7072 lt!2532570) (exprs!7072 ct2!306)) lt!2532724)))

(declare-fun b!7056275 () Bool)

(declare-fun res!2880745 () Bool)

(assert (=> b!7056275 (=> (not res!2880745) (not e!4242106))))

(assert (=> b!7056275 (= res!2880745 (= (size!41155 lt!2532724) (+ (size!41155 (exprs!7072 lt!2532570)) (size!41155 (exprs!7072 ct2!306)))))))

(declare-fun b!7056273 () Bool)

(assert (=> b!7056273 (= e!4242105 (exprs!7072 ct2!306))))

(declare-fun b!7056276 () Bool)

(assert (=> b!7056276 (= e!4242106 (or (not (= (exprs!7072 ct2!306) Nil!68130)) (= lt!2532724 (exprs!7072 lt!2532570))))))

(declare-fun b!7056274 () Bool)

(assert (=> b!7056274 (= e!4242105 (Cons!68130 (h!74578 (exprs!7072 lt!2532570)) (++!15659 (t!382033 (exprs!7072 lt!2532570)) (exprs!7072 ct2!306))))))

(assert (= (and d!2205202 c!1314666) b!7056273))

(assert (= (and d!2205202 (not c!1314666)) b!7056274))

(assert (= (and d!2205202 res!2880746) b!7056275))

(assert (= (and b!7056275 res!2880745) b!7056276))

(declare-fun m!7774340 () Bool)

(assert (=> d!2205202 m!7774340))

(declare-fun m!7774342 () Bool)

(assert (=> d!2205202 m!7774342))

(assert (=> d!2205202 m!7774264))

(declare-fun m!7774344 () Bool)

(assert (=> b!7056275 m!7774344))

(declare-fun m!7774346 () Bool)

(assert (=> b!7056275 m!7774346))

(assert (=> b!7056275 m!7774270))

(declare-fun m!7774348 () Bool)

(assert (=> b!7056274 m!7774348))

(assert (=> b!7056136 d!2205202))

(assert (=> b!7056136 d!2205182))

(declare-fun d!2205204 () Bool)

(declare-fun e!4242109 () Bool)

(assert (=> d!2205204 e!4242109))

(declare-fun res!2880749 () Bool)

(assert (=> d!2205204 (=> (not res!2880749) (not e!4242109))))

(declare-fun lt!2532727 () Context!13144)

(assert (=> d!2205204 (= res!2880749 (= lt!2532568 (dynLambda!27651 lambda!420570 lt!2532727)))))

(declare-fun choose!53837 ((Set Context!13144) Int Context!13144) Context!13144)

(assert (=> d!2205204 (= lt!2532727 (choose!53837 z1!570 lambda!420570 lt!2532568))))

(assert (=> d!2205204 (set.member lt!2532568 (map!15897 z1!570 lambda!420570))))

(assert (=> d!2205204 (= (mapPost2!405 z1!570 lambda!420570 lt!2532568) lt!2532727)))

(declare-fun b!7056280 () Bool)

(assert (=> b!7056280 (= e!4242109 (set.member lt!2532727 z1!570))))

(assert (= (and d!2205204 res!2880749) b!7056280))

(declare-fun b_lambda!268753 () Bool)

(assert (=> (not b_lambda!268753) (not d!2205204)))

(declare-fun m!7774350 () Bool)

(assert (=> d!2205204 m!7774350))

(declare-fun m!7774352 () Bool)

(assert (=> d!2205204 m!7774352))

(declare-fun m!7774354 () Bool)

(assert (=> d!2205204 m!7774354))

(declare-fun m!7774356 () Bool)

(assert (=> d!2205204 m!7774356))

(declare-fun m!7774358 () Bool)

(assert (=> b!7056280 m!7774358))

(assert (=> b!7056136 d!2205204))

(assert (=> b!7056145 d!2205200))

(assert (=> b!7056145 d!2205164))

(declare-fun bs!1877145 () Bool)

(declare-fun d!2205206 () Bool)

(assert (= bs!1877145 (and d!2205206 b!7056136)))

(declare-fun lambda!420637 () Int)

(assert (=> bs!1877145 (= lambda!420637 lambda!420571)))

(declare-fun bs!1877146 () Bool)

(assert (= bs!1877146 (and d!2205206 d!2205174)))

(assert (=> bs!1877146 (= lambda!420637 lambda!420633)))

(assert (=> d!2205206 (= (inv!86800 setElem!49876) (forall!16523 (exprs!7072 setElem!49876) lambda!420637))))

(declare-fun bs!1877147 () Bool)

(assert (= bs!1877147 d!2205206))

(declare-fun m!7774360 () Bool)

(assert (=> bs!1877147 m!7774360))

(assert (=> setNonEmpty!49876 d!2205206))

(assert (=> b!7056126 d!2205182))

(assert (=> b!7056146 d!2205200))

(assert (=> b!7056146 d!2205164))

(declare-fun d!2205208 () Bool)

(assert (=> d!2205208 (= (flatMap!2502 lt!2532541 lambda!420572) (dynLambda!27650 lambda!420572 lt!2532557))))

(declare-fun lt!2532728 () Unit!161825)

(assert (=> d!2205208 (= lt!2532728 (choose!53833 lt!2532541 lt!2532557 lambda!420572))))

(assert (=> d!2205208 (= lt!2532541 (set.insert lt!2532557 (as set.empty (Set Context!13144))))))

(assert (=> d!2205208 (= (lemmaFlatMapOnSingletonSet!2011 lt!2532541 lt!2532557 lambda!420572) lt!2532728)))

(declare-fun b_lambda!268755 () Bool)

(assert (=> (not b_lambda!268755) (not d!2205208)))

(declare-fun bs!1877148 () Bool)

(assert (= bs!1877148 d!2205208))

(assert (=> bs!1877148 m!7774092))

(declare-fun m!7774362 () Bool)

(assert (=> bs!1877148 m!7774362))

(declare-fun m!7774364 () Bool)

(assert (=> bs!1877148 m!7774364))

(assert (=> bs!1877148 m!7774094))

(assert (=> b!7056128 d!2205208))

(declare-fun bs!1877149 () Bool)

(declare-fun d!2205210 () Bool)

(assert (= bs!1877149 (and d!2205210 b!7056131)))

(declare-fun lambda!420638 () Int)

(assert (=> bs!1877149 (= lambda!420638 lambda!420572)))

(declare-fun bs!1877150 () Bool)

(assert (= bs!1877150 (and d!2205210 d!2205180)))

(assert (=> bs!1877150 (= lambda!420638 lambda!420636)))

(assert (=> d!2205210 true))

(assert (=> d!2205210 (= (derivationStepZipper!3026 lt!2532541 (h!74579 s!7408)) (flatMap!2502 lt!2532541 lambda!420638))))

(declare-fun bs!1877151 () Bool)

(assert (= bs!1877151 d!2205210))

(declare-fun m!7774366 () Bool)

(assert (=> bs!1877151 m!7774366))

(assert (=> b!7056128 d!2205210))

(declare-fun d!2205212 () Bool)

(assert (=> d!2205212 (= (flatMap!2502 lt!2532541 lambda!420572) (choose!53831 lt!2532541 lambda!420572))))

(declare-fun bs!1877152 () Bool)

(assert (= bs!1877152 d!2205212))

(declare-fun m!7774368 () Bool)

(assert (=> bs!1877152 m!7774368))

(assert (=> b!7056128 d!2205212))

(assert (=> b!7056128 d!2205164))

(declare-fun b!7056281 () Bool)

(declare-fun e!4242110 () (Set Context!13144))

(declare-fun call!641028 () (Set Context!13144))

(assert (=> b!7056281 (= e!4242110 call!641028)))

(declare-fun b!7056282 () Bool)

(declare-fun e!4242112 () Bool)

(assert (=> b!7056282 (= e!4242112 (nullable!7259 (h!74578 (exprs!7072 lt!2532557))))))

(declare-fun b!7056283 () Bool)

(declare-fun e!4242111 () (Set Context!13144))

(assert (=> b!7056283 (= e!4242111 e!4242110)))

(declare-fun c!1314667 () Bool)

(assert (=> b!7056283 (= c!1314667 (is-Cons!68130 (exprs!7072 lt!2532557)))))

(declare-fun b!7056284 () Bool)

(assert (=> b!7056284 (= e!4242110 (as set.empty (Set Context!13144)))))

(declare-fun d!2205214 () Bool)

(declare-fun c!1314668 () Bool)

(assert (=> d!2205214 (= c!1314668 e!4242112)))

(declare-fun res!2880750 () Bool)

(assert (=> d!2205214 (=> (not res!2880750) (not e!4242112))))

(assert (=> d!2205214 (= res!2880750 (is-Cons!68130 (exprs!7072 lt!2532557)))))

(assert (=> d!2205214 (= (derivationStepZipperUp!2160 lt!2532557 (h!74579 s!7408)) e!4242111)))

(declare-fun b!7056285 () Bool)

(assert (=> b!7056285 (= e!4242111 (set.union call!641028 (derivationStepZipperUp!2160 (Context!13145 (t!382033 (exprs!7072 lt!2532557))) (h!74579 s!7408))))))

(declare-fun bm!641023 () Bool)

(assert (=> bm!641023 (= call!641028 (derivationStepZipperDown!2210 (h!74578 (exprs!7072 lt!2532557)) (Context!13145 (t!382033 (exprs!7072 lt!2532557))) (h!74579 s!7408)))))

(assert (= (and d!2205214 res!2880750) b!7056282))

(assert (= (and d!2205214 c!1314668) b!7056285))

(assert (= (and d!2205214 (not c!1314668)) b!7056283))

(assert (= (and b!7056283 c!1314667) b!7056281))

(assert (= (and b!7056283 (not c!1314667)) b!7056284))

(assert (= (or b!7056285 b!7056281) bm!641023))

(declare-fun m!7774370 () Bool)

(assert (=> b!7056282 m!7774370))

(declare-fun m!7774372 () Bool)

(assert (=> b!7056285 m!7774372))

(declare-fun m!7774374 () Bool)

(assert (=> bm!641023 m!7774374))

(assert (=> b!7056128 d!2205214))

(declare-fun d!2205216 () Bool)

(declare-fun e!4242115 () Bool)

(assert (=> d!2205216 e!4242115))

(declare-fun res!2880753 () Bool)

(assert (=> d!2205216 (=> (not res!2880753) (not e!4242115))))

(declare-fun lt!2532731 () Context!13144)

(declare-fun dynLambda!27652 (Int Context!13144) Bool)

(assert (=> d!2205216 (= res!2880753 (dynLambda!27652 lambda!420569 lt!2532731))))

(declare-fun getWitness!1644 (List!68256 Int) Context!13144)

(assert (=> d!2205216 (= lt!2532731 (getWitness!1644 (toList!10917 lt!2532542) lambda!420569))))

(declare-fun exists!3570 ((Set Context!13144) Int) Bool)

(assert (=> d!2205216 (exists!3570 lt!2532542 lambda!420569)))

(assert (=> d!2205216 (= (getWitness!1642 lt!2532542 lambda!420569) lt!2532731)))

(declare-fun b!7056288 () Bool)

(assert (=> b!7056288 (= e!4242115 (set.member lt!2532731 lt!2532542))))

(assert (= (and d!2205216 res!2880753) b!7056288))

(declare-fun b_lambda!268757 () Bool)

(assert (=> (not b_lambda!268757) (not d!2205216)))

(declare-fun m!7774376 () Bool)

(assert (=> d!2205216 m!7774376))

(assert (=> d!2205216 m!7774116))

(assert (=> d!2205216 m!7774116))

(declare-fun m!7774378 () Bool)

(assert (=> d!2205216 m!7774378))

(declare-fun m!7774380 () Bool)

(assert (=> d!2205216 m!7774380))

(declare-fun m!7774382 () Bool)

(assert (=> b!7056288 m!7774382))

(assert (=> b!7056127 d!2205216))

(declare-fun bs!1877153 () Bool)

(declare-fun d!2205218 () Bool)

(assert (= bs!1877153 (and d!2205218 b!7056127)))

(declare-fun lambda!420641 () Int)

(assert (=> bs!1877153 (not (= lambda!420641 lambda!420569))))

(assert (=> d!2205218 true))

(declare-fun order!28327 () Int)

(declare-fun dynLambda!27653 (Int Int) Int)

(assert (=> d!2205218 (< (dynLambda!27653 order!28327 lambda!420569) (dynLambda!27653 order!28327 lambda!420641))))

(declare-fun forall!16524 (List!68256 Int) Bool)

(assert (=> d!2205218 (= (exists!3568 lt!2532574 lambda!420569) (not (forall!16524 lt!2532574 lambda!420641)))))

(declare-fun bs!1877154 () Bool)

(assert (= bs!1877154 d!2205218))

(declare-fun m!7774384 () Bool)

(assert (=> bs!1877154 m!7774384))

(assert (=> b!7056127 d!2205218))

(declare-fun d!2205220 () Bool)

(declare-fun c!1314669 () Bool)

(assert (=> d!2205220 (= c!1314669 (isEmpty!39740 s!7408))))

(declare-fun e!4242116 () Bool)

(assert (=> d!2205220 (= (matchZipper!3116 lt!2532539 s!7408) e!4242116)))

(declare-fun b!7056291 () Bool)

(assert (=> b!7056291 (= e!4242116 (nullableZipper!2661 lt!2532539))))

(declare-fun b!7056292 () Bool)

(assert (=> b!7056292 (= e!4242116 (matchZipper!3116 (derivationStepZipper!3026 lt!2532539 (head!14362 s!7408)) (tail!13712 s!7408)))))

(assert (= (and d!2205220 c!1314669) b!7056291))

(assert (= (and d!2205220 (not c!1314669)) b!7056292))

(assert (=> d!2205220 m!7774322))

(declare-fun m!7774386 () Bool)

(assert (=> b!7056291 m!7774386))

(assert (=> b!7056292 m!7774326))

(assert (=> b!7056292 m!7774326))

(declare-fun m!7774388 () Bool)

(assert (=> b!7056292 m!7774388))

(assert (=> b!7056292 m!7774330))

(assert (=> b!7056292 m!7774388))

(assert (=> b!7056292 m!7774330))

(declare-fun m!7774390 () Bool)

(assert (=> b!7056292 m!7774390))

(assert (=> b!7056127 d!2205220))

(declare-fun bs!1877155 () Bool)

(declare-fun d!2205222 () Bool)

(assert (= bs!1877155 (and d!2205222 b!7056127)))

(declare-fun lambda!420644 () Int)

(assert (=> bs!1877155 (= lambda!420644 lambda!420569)))

(declare-fun bs!1877156 () Bool)

(assert (= bs!1877156 (and d!2205222 d!2205218)))

(assert (=> bs!1877156 (not (= lambda!420644 lambda!420641))))

(assert (=> d!2205222 true))

(assert (=> d!2205222 (exists!3568 lt!2532574 lambda!420644)))

(declare-fun lt!2532734 () Unit!161825)

(declare-fun choose!53838 (List!68256 List!68255) Unit!161825)

(assert (=> d!2205222 (= lt!2532734 (choose!53838 lt!2532574 s!7408))))

(declare-fun content!13692 (List!68256) (Set Context!13144))

(assert (=> d!2205222 (matchZipper!3116 (content!13692 lt!2532574) s!7408)))

(assert (=> d!2205222 (= (lemmaZipperMatchesExistsMatchingContext!497 lt!2532574 s!7408) lt!2532734)))

(declare-fun bs!1877157 () Bool)

(assert (= bs!1877157 d!2205222))

(declare-fun m!7774392 () Bool)

(assert (=> bs!1877157 m!7774392))

(declare-fun m!7774394 () Bool)

(assert (=> bs!1877157 m!7774394))

(declare-fun m!7774396 () Bool)

(assert (=> bs!1877157 m!7774396))

(assert (=> bs!1877157 m!7774396))

(declare-fun m!7774398 () Bool)

(assert (=> bs!1877157 m!7774398))

(assert (=> b!7056127 d!2205222))

(declare-fun d!2205224 () Bool)

(declare-fun e!4242119 () Bool)

(assert (=> d!2205224 e!4242119))

(declare-fun res!2880756 () Bool)

(assert (=> d!2205224 (=> (not res!2880756) (not e!4242119))))

(declare-fun lt!2532737 () List!68256)

(declare-fun noDuplicate!2692 (List!68256) Bool)

(assert (=> d!2205224 (= res!2880756 (noDuplicate!2692 lt!2532737))))

(declare-fun choose!53839 ((Set Context!13144)) List!68256)

(assert (=> d!2205224 (= lt!2532737 (choose!53839 lt!2532542))))

(assert (=> d!2205224 (= (toList!10917 lt!2532542) lt!2532737)))

(declare-fun b!7056295 () Bool)

(assert (=> b!7056295 (= e!4242119 (= (content!13692 lt!2532737) lt!2532542))))

(assert (= (and d!2205224 res!2880756) b!7056295))

(declare-fun m!7774400 () Bool)

(assert (=> d!2205224 m!7774400))

(declare-fun m!7774402 () Bool)

(assert (=> d!2205224 m!7774402))

(declare-fun m!7774404 () Bool)

(assert (=> b!7056295 m!7774404))

(assert (=> b!7056127 d!2205224))

(declare-fun d!2205226 () Bool)

(declare-fun nullableFct!2778 (Regex!17576) Bool)

(assert (=> d!2205226 (= (nullable!7259 (h!74578 (exprs!7072 lt!2532570))) (nullableFct!2778 (h!74578 (exprs!7072 lt!2532570))))))

(declare-fun bs!1877158 () Bool)

(assert (= bs!1877158 d!2205226))

(declare-fun m!7774406 () Bool)

(assert (=> bs!1877158 m!7774406))

(assert (=> b!7056140 d!2205226))

(declare-fun d!2205228 () Bool)

(assert (=> d!2205228 (= (tail!13710 (exprs!7072 lt!2532570)) (t!382033 (exprs!7072 lt!2532570)))))

(assert (=> b!7056140 d!2205228))

(declare-fun b!7056318 () Bool)

(declare-fun c!1314684 () Bool)

(assert (=> b!7056318 (= c!1314684 (is-Star!17576 (h!74578 (exprs!7072 lt!2532570))))))

(declare-fun e!4242137 () (Set Context!13144))

(declare-fun e!4242135 () (Set Context!13144))

(assert (=> b!7056318 (= e!4242137 e!4242135)))

(declare-fun d!2205230 () Bool)

(declare-fun c!1314682 () Bool)

(assert (=> d!2205230 (= c!1314682 (and (is-ElementMatch!17576 (h!74578 (exprs!7072 lt!2532570))) (= (c!1314630 (h!74578 (exprs!7072 lt!2532570))) (h!74579 s!7408))))))

(declare-fun e!4242132 () (Set Context!13144))

(assert (=> d!2205230 (= (derivationStepZipperDown!2210 (h!74578 (exprs!7072 lt!2532570)) lt!2532557 (h!74579 s!7408)) e!4242132)))

(declare-fun bm!641036 () Bool)

(declare-fun call!641044 () (Set Context!13144))

(declare-fun call!641045 () (Set Context!13144))

(assert (=> bm!641036 (= call!641044 call!641045)))

(declare-fun b!7056319 () Bool)

(assert (=> b!7056319 (= e!4242132 (set.insert lt!2532557 (as set.empty (Set Context!13144))))))

(declare-fun bm!641037 () Bool)

(declare-fun call!641043 () List!68254)

(declare-fun call!641041 () List!68254)

(assert (=> bm!641037 (= call!641043 call!641041)))

(declare-fun b!7056320 () Bool)

(declare-fun e!4242134 () (Set Context!13144))

(assert (=> b!7056320 (= e!4242132 e!4242134)))

(declare-fun c!1314686 () Bool)

(assert (=> b!7056320 (= c!1314686 (is-Union!17576 (h!74578 (exprs!7072 lt!2532570))))))

(declare-fun b!7056321 () Bool)

(declare-fun e!4242133 () Bool)

(assert (=> b!7056321 (= e!4242133 (nullable!7259 (regOne!35664 (h!74578 (exprs!7072 lt!2532570)))))))

(declare-fun b!7056322 () Bool)

(declare-fun e!4242136 () (Set Context!13144))

(assert (=> b!7056322 (= e!4242136 e!4242137)))

(declare-fun c!1314685 () Bool)

(assert (=> b!7056322 (= c!1314685 (is-Concat!26421 (h!74578 (exprs!7072 lt!2532570))))))

(declare-fun b!7056323 () Bool)

(assert (=> b!7056323 (= e!4242137 call!641044)))

(declare-fun b!7056324 () Bool)

(assert (=> b!7056324 (= e!4242135 call!641044)))

(declare-fun b!7056325 () Bool)

(assert (=> b!7056325 (= e!4242135 (as set.empty (Set Context!13144)))))

(declare-fun bm!641038 () Bool)

(declare-fun call!641046 () (Set Context!13144))

(assert (=> bm!641038 (= call!641045 call!641046)))

(declare-fun bm!641039 () Bool)

(declare-fun c!1314683 () Bool)

(declare-fun $colon$colon!2625 (List!68254 Regex!17576) List!68254)

(assert (=> bm!641039 (= call!641041 ($colon$colon!2625 (exprs!7072 lt!2532557) (ite (or c!1314683 c!1314685) (regTwo!35664 (h!74578 (exprs!7072 lt!2532570))) (h!74578 (exprs!7072 lt!2532570)))))))

(declare-fun b!7056326 () Bool)

(declare-fun call!641042 () (Set Context!13144))

(assert (=> b!7056326 (= e!4242136 (set.union call!641042 call!641045))))

(declare-fun bm!641040 () Bool)

(assert (=> bm!641040 (= call!641046 (derivationStepZipperDown!2210 (ite c!1314686 (regOne!35665 (h!74578 (exprs!7072 lt!2532570))) (ite c!1314683 (regTwo!35664 (h!74578 (exprs!7072 lt!2532570))) (ite c!1314685 (regOne!35664 (h!74578 (exprs!7072 lt!2532570))) (reg!17905 (h!74578 (exprs!7072 lt!2532570)))))) (ite (or c!1314686 c!1314683) lt!2532557 (Context!13145 call!641043)) (h!74579 s!7408)))))

(declare-fun bm!641041 () Bool)

(assert (=> bm!641041 (= call!641042 (derivationStepZipperDown!2210 (ite c!1314686 (regTwo!35665 (h!74578 (exprs!7072 lt!2532570))) (regOne!35664 (h!74578 (exprs!7072 lt!2532570)))) (ite c!1314686 lt!2532557 (Context!13145 call!641041)) (h!74579 s!7408)))))

(declare-fun b!7056327 () Bool)

(assert (=> b!7056327 (= e!4242134 (set.union call!641046 call!641042))))

(declare-fun b!7056328 () Bool)

(assert (=> b!7056328 (= c!1314683 e!4242133)))

(declare-fun res!2880759 () Bool)

(assert (=> b!7056328 (=> (not res!2880759) (not e!4242133))))

(assert (=> b!7056328 (= res!2880759 (is-Concat!26421 (h!74578 (exprs!7072 lt!2532570))))))

(assert (=> b!7056328 (= e!4242134 e!4242136)))

(assert (= (and d!2205230 c!1314682) b!7056319))

(assert (= (and d!2205230 (not c!1314682)) b!7056320))

(assert (= (and b!7056320 c!1314686) b!7056327))

(assert (= (and b!7056320 (not c!1314686)) b!7056328))

(assert (= (and b!7056328 res!2880759) b!7056321))

(assert (= (and b!7056328 c!1314683) b!7056326))

(assert (= (and b!7056328 (not c!1314683)) b!7056322))

(assert (= (and b!7056322 c!1314685) b!7056323))

(assert (= (and b!7056322 (not c!1314685)) b!7056318))

(assert (= (and b!7056318 c!1314684) b!7056324))

(assert (= (and b!7056318 (not c!1314684)) b!7056325))

(assert (= (or b!7056323 b!7056324) bm!641037))

(assert (= (or b!7056323 b!7056324) bm!641036))

(assert (= (or b!7056326 bm!641036) bm!641038))

(assert (= (or b!7056326 bm!641037) bm!641039))

(assert (= (or b!7056327 bm!641038) bm!641040))

(assert (= (or b!7056327 b!7056326) bm!641041))

(declare-fun m!7774408 () Bool)

(assert (=> b!7056321 m!7774408))

(declare-fun m!7774410 () Bool)

(assert (=> bm!641040 m!7774410))

(declare-fun m!7774412 () Bool)

(assert (=> bm!641039 m!7774412))

(assert (=> b!7056319 m!7774094))

(declare-fun m!7774414 () Bool)

(assert (=> bm!641041 m!7774414))

(assert (=> b!7056129 d!2205230))

(assert (=> b!7056129 d!2205176))

(assert (=> b!7056129 d!2205164))

(assert (=> b!7056129 d!2205214))

(declare-fun d!2205232 () Bool)

(declare-fun c!1314687 () Bool)

(assert (=> d!2205232 (= c!1314687 (isEmpty!39740 s!7408))))

(declare-fun e!4242138 () Bool)

(assert (=> d!2205232 (= (matchZipper!3116 lt!2532542 s!7408) e!4242138)))

(declare-fun b!7056329 () Bool)

(assert (=> b!7056329 (= e!4242138 (nullableZipper!2661 lt!2532542))))

(declare-fun b!7056330 () Bool)

(assert (=> b!7056330 (= e!4242138 (matchZipper!3116 (derivationStepZipper!3026 lt!2532542 (head!14362 s!7408)) (tail!13712 s!7408)))))

(assert (= (and d!2205232 c!1314687) b!7056329))

(assert (= (and d!2205232 (not c!1314687)) b!7056330))

(assert (=> d!2205232 m!7774322))

(declare-fun m!7774416 () Bool)

(assert (=> b!7056329 m!7774416))

(assert (=> b!7056330 m!7774326))

(assert (=> b!7056330 m!7774326))

(declare-fun m!7774418 () Bool)

(assert (=> b!7056330 m!7774418))

(assert (=> b!7056330 m!7774330))

(assert (=> b!7056330 m!7774418))

(assert (=> b!7056330 m!7774330))

(declare-fun m!7774420 () Bool)

(assert (=> b!7056330 m!7774420))

(assert (=> start!684410 d!2205232))

(declare-fun bs!1877159 () Bool)

(declare-fun d!2205234 () Bool)

(assert (= bs!1877159 (and d!2205234 b!7056136)))

(declare-fun lambda!420649 () Int)

(assert (=> bs!1877159 (= lambda!420649 lambda!420570)))

(assert (=> d!2205234 true))

(assert (=> d!2205234 (= (appendTo!697 z1!570 ct2!306) (map!15897 z1!570 lambda!420649))))

(declare-fun bs!1877160 () Bool)

(assert (= bs!1877160 d!2205234))

(declare-fun m!7774422 () Bool)

(assert (=> bs!1877160 m!7774422))

(assert (=> start!684410 d!2205234))

(declare-fun bs!1877161 () Bool)

(declare-fun d!2205236 () Bool)

(assert (= bs!1877161 (and d!2205236 b!7056136)))

(declare-fun lambda!420650 () Int)

(assert (=> bs!1877161 (= lambda!420650 lambda!420571)))

(declare-fun bs!1877162 () Bool)

(assert (= bs!1877162 (and d!2205236 d!2205174)))

(assert (=> bs!1877162 (= lambda!420650 lambda!420633)))

(declare-fun bs!1877163 () Bool)

(assert (= bs!1877163 (and d!2205236 d!2205206)))

(assert (=> bs!1877163 (= lambda!420650 lambda!420637)))

(assert (=> d!2205236 (= (inv!86800 ct2!306) (forall!16523 (exprs!7072 ct2!306) lambda!420650))))

(declare-fun bs!1877164 () Bool)

(assert (= bs!1877164 d!2205236))

(declare-fun m!7774424 () Bool)

(assert (=> bs!1877164 m!7774424))

(assert (=> start!684410 d!2205236))

(declare-fun condSetEmpty!49882 () Bool)

(assert (=> setNonEmpty!49876 (= condSetEmpty!49882 (= setRest!49876 (as set.empty (Set Context!13144))))))

(declare-fun setRes!49882 () Bool)

(assert (=> setNonEmpty!49876 (= tp!1940305 setRes!49882)))

(declare-fun setIsEmpty!49882 () Bool)

(assert (=> setIsEmpty!49882 setRes!49882))

(declare-fun setElem!49882 () Context!13144)

(declare-fun setNonEmpty!49882 () Bool)

(declare-fun tp!1940325 () Bool)

(declare-fun e!4242141 () Bool)

(assert (=> setNonEmpty!49882 (= setRes!49882 (and tp!1940325 (inv!86800 setElem!49882) e!4242141))))

(declare-fun setRest!49882 () (Set Context!13144))

(assert (=> setNonEmpty!49882 (= setRest!49876 (set.union (set.insert setElem!49882 (as set.empty (Set Context!13144))) setRest!49882))))

(declare-fun b!7056335 () Bool)

(declare-fun tp!1940326 () Bool)

(assert (=> b!7056335 (= e!4242141 tp!1940326)))

(assert (= (and setNonEmpty!49876 condSetEmpty!49882) setIsEmpty!49882))

(assert (= (and setNonEmpty!49876 (not condSetEmpty!49882)) setNonEmpty!49882))

(assert (= setNonEmpty!49882 b!7056335))

(declare-fun m!7774426 () Bool)

(assert (=> setNonEmpty!49882 m!7774426))

(declare-fun b!7056340 () Bool)

(declare-fun e!4242144 () Bool)

(declare-fun tp!1940331 () Bool)

(declare-fun tp!1940332 () Bool)

(assert (=> b!7056340 (= e!4242144 (and tp!1940331 tp!1940332))))

(assert (=> b!7056143 (= tp!1940307 e!4242144)))

(assert (= (and b!7056143 (is-Cons!68130 (exprs!7072 setElem!49876))) b!7056340))

(declare-fun b!7056345 () Bool)

(declare-fun e!4242147 () Bool)

(declare-fun tp!1940335 () Bool)

(assert (=> b!7056345 (= e!4242147 (and tp_is_empty!44377 tp!1940335))))

(assert (=> b!7056138 (= tp!1940306 e!4242147)))

(assert (= (and b!7056138 (is-Cons!68131 (t!382034 s!7408))) b!7056345))

(declare-fun b!7056346 () Bool)

(declare-fun e!4242148 () Bool)

(declare-fun tp!1940336 () Bool)

(declare-fun tp!1940337 () Bool)

(assert (=> b!7056346 (= e!4242148 (and tp!1940336 tp!1940337))))

(assert (=> b!7056135 (= tp!1940308 e!4242148)))

(assert (= (and b!7056135 (is-Cons!68130 (exprs!7072 ct2!306))) b!7056346))

(declare-fun b_lambda!268759 () Bool)

(assert (= b_lambda!268747 (or b!7056131 b_lambda!268759)))

(declare-fun bs!1877165 () Bool)

(declare-fun d!2205238 () Bool)

(assert (= bs!1877165 (and d!2205238 b!7056131)))

(assert (=> bs!1877165 (= (dynLambda!27650 lambda!420572 lt!2532543) (derivationStepZipperUp!2160 lt!2532543 (h!74579 s!7408)))))

(assert (=> bs!1877165 m!7774082))

(assert (=> d!2205166 d!2205238))

(declare-fun b_lambda!268761 () Bool)

(assert (= b_lambda!268755 (or b!7056131 b_lambda!268761)))

(declare-fun bs!1877166 () Bool)

(declare-fun d!2205240 () Bool)

(assert (= bs!1877166 (and d!2205240 b!7056131)))

(assert (=> bs!1877166 (= (dynLambda!27650 lambda!420572 lt!2532557) (derivationStepZipperUp!2160 lt!2532557 (h!74579 s!7408)))))

(assert (=> bs!1877166 m!7774088))

(assert (=> d!2205208 d!2205240))

(declare-fun b_lambda!268763 () Bool)

(assert (= b_lambda!268757 (or b!7056127 b_lambda!268763)))

(declare-fun bs!1877167 () Bool)

(declare-fun d!2205242 () Bool)

(assert (= bs!1877167 (and d!2205242 b!7056127)))

(assert (=> bs!1877167 (= (dynLambda!27652 lambda!420569 lt!2532731) (matchZipper!3116 (set.insert lt!2532731 (as set.empty (Set Context!13144))) s!7408))))

(declare-fun m!7774428 () Bool)

(assert (=> bs!1877167 m!7774428))

(assert (=> bs!1877167 m!7774428))

(declare-fun m!7774430 () Bool)

(assert (=> bs!1877167 m!7774430))

(assert (=> d!2205216 d!2205242))

(declare-fun b_lambda!268765 () Bool)

(assert (= b_lambda!268749 (or b!7056136 b_lambda!268765)))

(declare-fun bs!1877168 () Bool)

(declare-fun d!2205244 () Bool)

(assert (= bs!1877168 (and d!2205244 b!7056136)))

(declare-fun lt!2532740 () Unit!161825)

(assert (=> bs!1877168 (= lt!2532740 (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532543) (exprs!7072 ct2!306) lambda!420571))))

(assert (=> bs!1877168 (= (dynLambda!27651 lambda!420570 lt!2532543) (Context!13145 (++!15659 (exprs!7072 lt!2532543) (exprs!7072 ct2!306))))))

(declare-fun m!7774432 () Bool)

(assert (=> bs!1877168 m!7774432))

(declare-fun m!7774434 () Bool)

(assert (=> bs!1877168 m!7774434))

(assert (=> d!2205172 d!2205244))

(declare-fun b_lambda!268767 () Bool)

(assert (= b_lambda!268753 (or b!7056136 b_lambda!268767)))

(declare-fun bs!1877169 () Bool)

(declare-fun d!2205246 () Bool)

(assert (= bs!1877169 (and d!2205246 b!7056136)))

(declare-fun lt!2532741 () Unit!161825)

(assert (=> bs!1877169 (= lt!2532741 (lemmaConcatPreservesForall!887 (exprs!7072 lt!2532727) (exprs!7072 ct2!306) lambda!420571))))

(assert (=> bs!1877169 (= (dynLambda!27651 lambda!420570 lt!2532727) (Context!13145 (++!15659 (exprs!7072 lt!2532727) (exprs!7072 ct2!306))))))

(declare-fun m!7774436 () Bool)

(assert (=> bs!1877169 m!7774436))

(declare-fun m!7774438 () Bool)

(assert (=> bs!1877169 m!7774438))

(assert (=> d!2205204 d!2205246))

(declare-fun b_lambda!268769 () Bool)

(assert (= b_lambda!268751 (or b!7056131 b_lambda!268769)))

(declare-fun bs!1877170 () Bool)

(declare-fun d!2205248 () Bool)

(assert (= bs!1877170 (and d!2205248 b!7056131)))

(assert (=> bs!1877170 (= (dynLambda!27650 lambda!420572 lt!2532573) (derivationStepZipperUp!2160 lt!2532573 (h!74579 s!7408)))))

(assert (=> bs!1877170 m!7774052))

(assert (=> d!2205184 d!2205248))

(push 1)

(assert (not d!2205210))

(assert (not b!7056252))

(assert (not b!7056282))

(assert (not d!2205202))

(assert (not b!7056260))

(assert (not b!7056236))

(assert (not bs!1877169))

(assert (not d!2205236))

(assert (not d!2205198))

(assert (not bm!641040))

(assert (not d!2205234))

(assert (not d!2205216))

(assert (not b!7056255))

(assert (not d!2205218))

(assert (not b!7056321))

(assert (not bs!1877170))

(assert (not b!7056275))

(assert (not b!7056329))

(assert (not b!7056268))

(assert (not d!2205222))

(assert (not bm!641022))

(assert (not b!7056330))

(assert (not d!2205174))

(assert (not b!7056233))

(assert (not b_lambda!268763))

(assert (not d!2205162))

(assert (not b_lambda!268761))

(assert (not b!7056335))

(assert (not bm!641023))

(assert (not bm!641021))

(assert (not b!7056291))

(assert (not d!2205164))

(assert (not b!7056272))

(assert (not setNonEmpty!49882))

(assert (not b_lambda!268767))

(assert (not b!7056265))

(assert (not d!2205226))

(assert (not bs!1877168))

(assert (not d!2205192))

(assert (not b_lambda!268765))

(assert (not d!2205212))

(assert (not b!7056264))

(assert (not b!7056262))

(assert (not bs!1877165))

(assert (not bs!1877167))

(assert (not b!7056271))

(assert (not b!7056295))

(assert (not d!2205194))

(assert (not d!2205224))

(assert (not b!7056292))

(assert (not b!7056269))

(assert (not b!7056340))

(assert (not d!2205176))

(assert (not b_lambda!268769))

(assert (not d!2205180))

(assert (not b!7056247))

(assert (not d!2205200))

(assert (not bs!1877166))

(assert (not d!2205170))

(assert (not d!2205182))

(assert (not b!7056261))

(assert (not d!2205204))

(assert (not b!7056263))

(assert (not d!2205220))

(assert (not b!7056246))

(assert (not d!2205186))

(assert tp_is_empty!44377)

(assert (not b!7056345))

(assert (not d!2205190))

(assert (not d!2205172))

(assert (not d!2205208))

(assert (not d!2205206))

(assert (not bm!641039))

(assert (not b_lambda!268759))

(assert (not d!2205196))

(assert (not bm!641041))

(assert (not b!7056346))

(assert (not d!2205184))

(assert (not d!2205166))

(assert (not d!2205232))

(assert (not b!7056285))

(assert (not b!7056270))

(assert (not b!7056274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

