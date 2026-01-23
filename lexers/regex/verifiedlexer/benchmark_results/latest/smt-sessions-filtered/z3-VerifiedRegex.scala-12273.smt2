; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690204 () Bool)

(assert start!690204)

(declare-fun b!7090736 () Bool)

(declare-fun e!4262611 () Bool)

(assert (=> b!7090736 (= e!4262611 false)))

(declare-datatypes ((C!35848 0))(
  ( (C!35849 (val!27630 Int)) )
))
(declare-datatypes ((Regex!17789 0))(
  ( (ElementMatch!17789 (c!1323260 C!35848)) (Concat!26634 (regOne!36090 Regex!17789) (regTwo!36090 Regex!17789)) (EmptyExpr!17789) (Star!17789 (reg!18118 Regex!17789)) (EmptyLang!17789) (Union!17789 (regOne!36091 Regex!17789) (regTwo!36091 Regex!17789)) )
))
(declare-datatypes ((List!68752 0))(
  ( (Nil!68628) (Cons!68628 (h!75076 Regex!17789) (t!382537 List!68752)) )
))
(declare-datatypes ((Context!13570 0))(
  ( (Context!13571 (exprs!7285 List!68752)) )
))
(declare-fun c!9994 () Context!13570)

(declare-fun lambda!429755 () Int)

(declare-datatypes ((Unit!162269 0))(
  ( (Unit!162270) )
))
(declare-fun lt!2555755 () Unit!162269)

(declare-fun auxCtx!45 () Context!13570)

(declare-fun lemmaConcatPreservesForall!1088 (List!68752 List!68752 Int) Unit!162269)

(assert (=> b!7090736 (= lt!2555755 (lemmaConcatPreservesForall!1088 (exprs!7285 c!9994) (exprs!7285 auxCtx!45) lambda!429755))))

(declare-fun lt!2555758 () List!68752)

(declare-fun ++!15958 (List!68752 List!68752) List!68752)

(assert (=> b!7090736 (= lt!2555758 (++!15958 (exprs!7285 c!9994) (exprs!7285 auxCtx!45)))))

(declare-fun lt!2555756 () Unit!162269)

(assert (=> b!7090736 (= lt!2555756 (lemmaConcatPreservesForall!1088 (exprs!7285 c!9994) (exprs!7285 auxCtx!45) lambda!429755))))

(declare-fun lt!2555757 () Unit!162269)

(assert (=> b!7090736 (= lt!2555757 (lemmaConcatPreservesForall!1088 (exprs!7285 c!9994) (exprs!7285 auxCtx!45) lambda!429755))))

(declare-fun b!7090738 () Bool)

(declare-fun res!2895976 () Bool)

(assert (=> b!7090738 (=> (not res!2895976) (not e!4262611))))

(declare-fun r!11554 () Regex!17789)

(declare-fun a!1901 () C!35848)

(get-info :version)

(assert (=> b!7090738 (= res!2895976 (and (or (not ((_ is ElementMatch!17789) r!11554)) (not (= (c!1323260 r!11554) a!1901))) (not ((_ is Union!17789) r!11554)) ((_ is Concat!26634) r!11554)))))

(declare-fun b!7090739 () Bool)

(declare-fun e!4262610 () Bool)

(declare-fun tp!1947879 () Bool)

(assert (=> b!7090739 (= e!4262610 tp!1947879)))

(declare-fun b!7090740 () Bool)

(declare-fun e!4262609 () Bool)

(declare-fun tp!1947874 () Bool)

(declare-fun tp!1947877 () Bool)

(assert (=> b!7090740 (= e!4262609 (and tp!1947874 tp!1947877))))

(declare-fun b!7090741 () Bool)

(declare-fun tp_is_empty!44811 () Bool)

(assert (=> b!7090741 (= e!4262609 tp_is_empty!44811)))

(declare-fun b!7090742 () Bool)

(declare-fun res!2895977 () Bool)

(assert (=> b!7090742 (=> (not res!2895977) (not e!4262611))))

(declare-fun nullable!7429 (Regex!17789) Bool)

(assert (=> b!7090742 (= res!2895977 (nullable!7429 (regOne!36090 r!11554)))))

(declare-fun res!2895978 () Bool)

(assert (=> start!690204 (=> (not res!2895978) (not e!4262611))))

(declare-fun validRegex!9064 (Regex!17789) Bool)

(assert (=> start!690204 (= res!2895978 (validRegex!9064 r!11554))))

(assert (=> start!690204 e!4262611))

(assert (=> start!690204 e!4262609))

(assert (=> start!690204 tp_is_empty!44811))

(declare-fun e!4262612 () Bool)

(declare-fun inv!87337 (Context!13570) Bool)

(assert (=> start!690204 (and (inv!87337 c!9994) e!4262612)))

(assert (=> start!690204 (and (inv!87337 auxCtx!45) e!4262610)))

(declare-fun b!7090737 () Bool)

(declare-fun tp!1947875 () Bool)

(declare-fun tp!1947880 () Bool)

(assert (=> b!7090737 (= e!4262609 (and tp!1947875 tp!1947880))))

(declare-fun b!7090743 () Bool)

(declare-fun tp!1947876 () Bool)

(assert (=> b!7090743 (= e!4262612 tp!1947876)))

(declare-fun b!7090744 () Bool)

(declare-fun tp!1947878 () Bool)

(assert (=> b!7090744 (= e!4262609 tp!1947878)))

(assert (= (and start!690204 res!2895978) b!7090738))

(assert (= (and b!7090738 res!2895976) b!7090742))

(assert (= (and b!7090742 res!2895977) b!7090736))

(assert (= (and start!690204 ((_ is ElementMatch!17789) r!11554)) b!7090741))

(assert (= (and start!690204 ((_ is Concat!26634) r!11554)) b!7090737))

(assert (= (and start!690204 ((_ is Star!17789) r!11554)) b!7090744))

(assert (= (and start!690204 ((_ is Union!17789) r!11554)) b!7090740))

(assert (= start!690204 b!7090743))

(assert (= start!690204 b!7090739))

(declare-fun m!7819780 () Bool)

(assert (=> b!7090736 m!7819780))

(declare-fun m!7819782 () Bool)

(assert (=> b!7090736 m!7819782))

(assert (=> b!7090736 m!7819780))

(assert (=> b!7090736 m!7819780))

(declare-fun m!7819784 () Bool)

(assert (=> b!7090742 m!7819784))

(declare-fun m!7819786 () Bool)

(assert (=> start!690204 m!7819786))

(declare-fun m!7819788 () Bool)

(assert (=> start!690204 m!7819788))

(declare-fun m!7819790 () Bool)

(assert (=> start!690204 m!7819790))

(check-sat (not b!7090740) (not b!7090739) tp_is_empty!44811 (not start!690204) (not b!7090737) (not b!7090742) (not b!7090743) (not b!7090736) (not b!7090744))
(check-sat)
