; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691010 () Bool)

(assert start!691010)

(declare-fun res!2898641 () Bool)

(declare-fun e!4266906 () Bool)

(assert (=> start!691010 (=> (not res!2898641) (not e!4266906))))

(declare-datatypes ((C!35982 0))(
  ( (C!35983 (val!27697 Int)) )
))
(declare-datatypes ((Regex!17856 0))(
  ( (ElementMatch!17856 (c!1324601 C!35982)) (Concat!26701 (regOne!36224 Regex!17856) (regTwo!36224 Regex!17856)) (EmptyExpr!17856) (Star!17856 (reg!18185 Regex!17856)) (EmptyLang!17856) (Union!17856 (regOne!36225 Regex!17856) (regTwo!36225 Regex!17856)) )
))
(declare-fun r!11554 () Regex!17856)

(declare-fun validRegex!9131 (Regex!17856) Bool)

(assert (=> start!691010 (= res!2898641 (validRegex!9131 r!11554))))

(assert (=> start!691010 e!4266906))

(declare-fun e!4266909 () Bool)

(assert (=> start!691010 e!4266909))

(declare-fun tp_is_empty!44945 () Bool)

(assert (=> start!691010 tp_is_empty!44945))

(declare-datatypes ((List!68819 0))(
  ( (Nil!68695) (Cons!68695 (h!75143 Regex!17856) (t!382626 List!68819)) )
))
(declare-datatypes ((Context!13704 0))(
  ( (Context!13705 (exprs!7352 List!68819)) )
))
(declare-fun c!9994 () Context!13704)

(declare-fun e!4266905 () Bool)

(declare-fun inv!87506 (Context!13704) Bool)

(assert (=> start!691010 (and (inv!87506 c!9994) e!4266905)))

(declare-fun auxCtx!45 () Context!13704)

(declare-fun e!4266910 () Bool)

(assert (=> start!691010 (and (inv!87506 auxCtx!45) e!4266910)))

(declare-fun b!7098679 () Bool)

(assert (=> b!7098679 (= e!4266909 tp_is_empty!44945)))

(declare-fun b!7098680 () Bool)

(declare-fun res!2898646 () Bool)

(assert (=> b!7098680 (=> (not res!2898646) (not e!4266906))))

(declare-fun a!1901 () C!35982)

(assert (=> b!7098680 (= res!2898646 (and (or (not (is-ElementMatch!17856 r!11554)) (not (= (c!1324601 r!11554) a!1901))) (not (is-Union!17856 r!11554))))))

(declare-fun b!7098681 () Bool)

(declare-fun e!4266908 () Bool)

(assert (=> b!7098681 (= e!4266906 e!4266908)))

(declare-fun res!2898647 () Bool)

(assert (=> b!7098681 (=> (not res!2898647) (not e!4266908))))

(assert (=> b!7098681 (= res!2898647 (validRegex!9131 r!11554))))

(declare-fun lt!2557698 () List!68819)

(declare-fun ++!16016 (List!68819 List!68819) List!68819)

(assert (=> b!7098681 (= lt!2557698 (++!16016 (exprs!7352 c!9994) (exprs!7352 auxCtx!45)))))

(declare-fun lambda!430738 () Int)

(declare-datatypes ((Unit!162387 0))(
  ( (Unit!162388) )
))
(declare-fun lt!2557700 () Unit!162387)

(declare-fun lemmaConcatPreservesForall!1147 (List!68819 List!68819 Int) Unit!162387)

(assert (=> b!7098681 (= lt!2557700 (lemmaConcatPreservesForall!1147 (exprs!7352 c!9994) (exprs!7352 auxCtx!45) lambda!430738))))

(declare-fun lt!2557701 () Unit!162387)

(assert (=> b!7098681 (= lt!2557701 (lemmaConcatPreservesForall!1147 (exprs!7352 c!9994) (exprs!7352 auxCtx!45) lambda!430738))))

(declare-fun b!7098682 () Bool)

(declare-fun res!2898645 () Bool)

(assert (=> b!7098682 (=> (not res!2898645) (not e!4266906))))

(declare-fun e!4266907 () Bool)

(assert (=> b!7098682 (= res!2898645 e!4266907)))

(declare-fun res!2898643 () Bool)

(assert (=> b!7098682 (=> res!2898643 e!4266907)))

(assert (=> b!7098682 (= res!2898643 (not (is-Concat!26701 r!11554)))))

(declare-fun b!7098683 () Bool)

(declare-fun tp!1951153 () Bool)

(assert (=> b!7098683 (= e!4266905 tp!1951153)))

(declare-fun b!7098684 () Bool)

(declare-fun res!2898644 () Bool)

(assert (=> b!7098684 (=> (not res!2898644) (not e!4266908))))

(declare-fun derivationStepZipperDown!2395 (Regex!17856 Context!13704 C!35982) (Set Context!13704))

(declare-fun $colon$colon!2739 (List!68819 Regex!17856) List!68819)

(assert (=> b!7098684 (= res!2898644 (= (derivationStepZipperDown!2395 r!11554 (Context!13705 lt!2557698) a!1901) (derivationStepZipperDown!2395 (reg!18185 r!11554) (Context!13705 ($colon$colon!2739 lt!2557698 r!11554)) a!1901)))))

(declare-fun b!7098685 () Bool)

(declare-fun tp!1951159 () Bool)

(assert (=> b!7098685 (= e!4266909 tp!1951159)))

(declare-fun b!7098686 () Bool)

(assert (=> b!7098686 (= e!4266908 (not true))))

(declare-fun lt!2557697 () Unit!162387)

(assert (=> b!7098686 (= lt!2557697 (lemmaConcatPreservesForall!1147 (exprs!7352 c!9994) (exprs!7352 auxCtx!45) lambda!430738))))

(declare-fun lt!2557702 () List!68819)

(declare-fun lt!2557695 () Context!13704)

(declare-fun appendTo!899 ((Set Context!13704) Context!13704) (Set Context!13704))

(assert (=> b!7098686 (= (derivationStepZipperDown!2395 (reg!18185 r!11554) (Context!13705 (++!16016 lt!2557702 (exprs!7352 auxCtx!45))) a!1901) (appendTo!899 (derivationStepZipperDown!2395 (reg!18185 r!11554) lt!2557695 a!1901) auxCtx!45))))

(declare-fun lt!2557699 () Unit!162387)

(assert (=> b!7098686 (= lt!2557699 (lemmaConcatPreservesForall!1147 lt!2557702 (exprs!7352 auxCtx!45) lambda!430738))))

(declare-fun lt!2557696 () Unit!162387)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!207 (Context!13704 Regex!17856 C!35982 Context!13704) Unit!162387)

(assert (=> b!7098686 (= lt!2557696 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!207 lt!2557695 (reg!18185 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7098686 (= lt!2557695 (Context!13705 lt!2557702))))

(assert (=> b!7098686 (= lt!2557702 ($colon$colon!2739 (exprs!7352 c!9994) r!11554))))

(declare-fun b!7098687 () Bool)

(declare-fun tp!1951157 () Bool)

(declare-fun tp!1951154 () Bool)

(assert (=> b!7098687 (= e!4266909 (and tp!1951157 tp!1951154))))

(declare-fun b!7098688 () Bool)

(declare-fun nullable!7496 (Regex!17856) Bool)

(assert (=> b!7098688 (= e!4266907 (not (nullable!7496 (regOne!36224 r!11554))))))

(declare-fun b!7098689 () Bool)

(declare-fun res!2898642 () Bool)

(assert (=> b!7098689 (=> (not res!2898642) (not e!4266906))))

(assert (=> b!7098689 (= res!2898642 (and (not (is-Concat!26701 r!11554)) (is-Star!17856 r!11554)))))

(declare-fun b!7098690 () Bool)

(declare-fun tp!1951155 () Bool)

(assert (=> b!7098690 (= e!4266910 tp!1951155)))

(declare-fun b!7098691 () Bool)

(declare-fun tp!1951156 () Bool)

(declare-fun tp!1951158 () Bool)

(assert (=> b!7098691 (= e!4266909 (and tp!1951156 tp!1951158))))

(assert (= (and start!691010 res!2898641) b!7098680))

(assert (= (and b!7098680 res!2898646) b!7098682))

(assert (= (and b!7098682 (not res!2898643)) b!7098688))

(assert (= (and b!7098682 res!2898645) b!7098689))

(assert (= (and b!7098689 res!2898642) b!7098681))

(assert (= (and b!7098681 res!2898647) b!7098684))

(assert (= (and b!7098684 res!2898644) b!7098686))

(assert (= (and start!691010 (is-ElementMatch!17856 r!11554)) b!7098679))

(assert (= (and start!691010 (is-Concat!26701 r!11554)) b!7098687))

(assert (= (and start!691010 (is-Star!17856 r!11554)) b!7098685))

(assert (= (and start!691010 (is-Union!17856 r!11554)) b!7098691))

(assert (= start!691010 b!7098683))

(assert (= start!691010 b!7098690))

(declare-fun m!7825084 () Bool)

(assert (=> b!7098688 m!7825084))

(declare-fun m!7825086 () Bool)

(assert (=> b!7098686 m!7825086))

(declare-fun m!7825088 () Bool)

(assert (=> b!7098686 m!7825088))

(declare-fun m!7825090 () Bool)

(assert (=> b!7098686 m!7825090))

(declare-fun m!7825092 () Bool)

(assert (=> b!7098686 m!7825092))

(assert (=> b!7098686 m!7825090))

(declare-fun m!7825094 () Bool)

(assert (=> b!7098686 m!7825094))

(declare-fun m!7825096 () Bool)

(assert (=> b!7098686 m!7825096))

(declare-fun m!7825098 () Bool)

(assert (=> b!7098686 m!7825098))

(declare-fun m!7825100 () Bool)

(assert (=> b!7098686 m!7825100))

(declare-fun m!7825102 () Bool)

(assert (=> start!691010 m!7825102))

(declare-fun m!7825104 () Bool)

(assert (=> start!691010 m!7825104))

(declare-fun m!7825106 () Bool)

(assert (=> start!691010 m!7825106))

(assert (=> b!7098681 m!7825102))

(declare-fun m!7825108 () Bool)

(assert (=> b!7098681 m!7825108))

(assert (=> b!7098681 m!7825096))

(assert (=> b!7098681 m!7825096))

(declare-fun m!7825110 () Bool)

(assert (=> b!7098684 m!7825110))

(declare-fun m!7825112 () Bool)

(assert (=> b!7098684 m!7825112))

(declare-fun m!7825114 () Bool)

(assert (=> b!7098684 m!7825114))

(push 1)

(assert (not b!7098691))

(assert (not start!691010))

(assert (not b!7098686))

(assert (not b!7098687))

(assert (not b!7098683))

(assert tp_is_empty!44945)

(assert (not b!7098685))

(assert (not b!7098688))

(assert (not b!7098684))

(assert (not b!7098681))

(assert (not b!7098690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

