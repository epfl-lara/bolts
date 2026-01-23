; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667278 () Bool)

(assert start!667278)

(declare-fun b!6952898 () Bool)

(assert (=> b!6952898 true))

(assert (=> b!6952898 true))

(declare-fun bs!1857827 () Bool)

(declare-fun b!6952896 () Bool)

(assert (= bs!1857827 (and b!6952896 b!6952898)))

(declare-fun lambda!396596 () Int)

(declare-fun lambda!396595 () Int)

(assert (=> bs!1857827 (not (= lambda!396596 lambda!396595))))

(assert (=> b!6952896 true))

(assert (=> b!6952896 true))

(declare-fun b!6952890 () Bool)

(declare-fun e!4181334 () Bool)

(declare-fun tp_is_empty!43299 () Bool)

(declare-fun tp!1916698 () Bool)

(assert (=> b!6952890 (= e!4181334 (and tp_is_empty!43299 tp!1916698))))

(declare-fun b!6952891 () Bool)

(declare-fun res!2836864 () Bool)

(declare-fun e!4181335 () Bool)

(assert (=> b!6952891 (=> (not res!2836864) (not e!4181335))))

(declare-fun Exists!4033 (Int) Bool)

(assert (=> b!6952891 (= res!2836864 (not (Exists!4033 lambda!396595)))))

(declare-fun b!6952892 () Bool)

(declare-fun e!4181336 () Bool)

(assert (=> b!6952892 (= e!4181336 tp_is_empty!43299)))

(declare-fun b!6952893 () Bool)

(assert (=> b!6952893 (= e!4181335 false)))

(declare-datatypes ((C!34344 0))(
  ( (C!34345 (val!26874 Int)) )
))
(declare-datatypes ((List!66790 0))(
  ( (Nil!66666) (Cons!66666 (h!73114 C!34344) (t!380533 List!66790)) )
))
(declare-fun lt!2478173 () List!66790)

(declare-datatypes ((tuple2!67780 0))(
  ( (tuple2!67781 (_1!37193 List!66790) (_2!37193 List!66790)) )
))
(declare-fun cut!41 () tuple2!67780)

(declare-fun ++!15068 (List!66790 List!66790) List!66790)

(assert (=> b!6952893 (= lt!2478173 (++!15068 (_1!37193 cut!41) (_2!37193 cut!41)))))

(declare-fun res!2836868 () Bool)

(assert (=> start!667278 (=> (not res!2836868) (not e!4181335))))

(declare-datatypes ((Regex!17037 0))(
  ( (ElementMatch!17037 (c!1289525 C!34344)) (Concat!25882 (regOne!34586 Regex!17037) (regTwo!34586 Regex!17037)) (EmptyExpr!17037) (Star!17037 (reg!17366 Regex!17037)) (EmptyLang!17037) (Union!17037 (regOne!34587 Regex!17037) (regTwo!34587 Regex!17037)) )
))
(declare-fun rInner!765 () Regex!17037)

(declare-fun validRegex!8743 (Regex!17037) Bool)

(assert (=> start!667278 (= res!2836868 (validRegex!8743 rInner!765))))

(assert (=> start!667278 e!4181335))

(assert (=> start!667278 e!4181336))

(declare-fun e!4181338 () Bool)

(assert (=> start!667278 e!4181338))

(declare-fun e!4181337 () Bool)

(assert (=> start!667278 (and e!4181334 e!4181337)))

(declare-fun b!6952894 () Bool)

(declare-fun tp!1916700 () Bool)

(declare-fun tp!1916699 () Bool)

(assert (=> b!6952894 (= e!4181336 (and tp!1916700 tp!1916699))))

(declare-fun b!6952895 () Bool)

(declare-fun tp!1916704 () Bool)

(declare-fun tp!1916702 () Bool)

(assert (=> b!6952895 (= e!4181336 (and tp!1916704 tp!1916702))))

(declare-fun res!2836867 () Bool)

(assert (=> b!6952896 (=> (not res!2836867) (not e!4181335))))

(assert (=> b!6952896 (= res!2836867 (not (Exists!4033 lambda!396596)))))

(declare-fun b!6952897 () Bool)

(declare-fun tp!1916703 () Bool)

(assert (=> b!6952897 (= e!4181337 (and tp_is_empty!43299 tp!1916703))))

(declare-fun res!2836865 () Bool)

(assert (=> b!6952898 (=> (not res!2836865) (not e!4181335))))

(assert (=> b!6952898 (= res!2836865 (not (Exists!4033 lambda!396595)))))

(declare-fun b!6952899 () Bool)

(declare-fun tp!1916705 () Bool)

(assert (=> b!6952899 (= e!4181338 (and tp_is_empty!43299 tp!1916705))))

(declare-fun b!6952900 () Bool)

(declare-fun res!2836866 () Bool)

(assert (=> b!6952900 (=> (not res!2836866) (not e!4181335))))

(declare-fun nullable!6850 (Regex!17037) Bool)

(assert (=> b!6952900 (= res!2836866 (not (nullable!6850 rInner!765)))))

(declare-fun b!6952901 () Bool)

(declare-fun tp!1916701 () Bool)

(assert (=> b!6952901 (= e!4181336 tp!1916701)))

(assert (= (and start!667278 res!2836868) b!6952900))

(assert (= (and b!6952900 res!2836866) b!6952898))

(assert (= (and b!6952898 res!2836865) b!6952891))

(assert (= (and b!6952891 res!2836864) b!6952896))

(assert (= (and b!6952896 res!2836867) b!6952893))

(get-info :version)

(assert (= (and start!667278 ((_ is ElementMatch!17037) rInner!765)) b!6952892))

(assert (= (and start!667278 ((_ is Concat!25882) rInner!765)) b!6952895))

(assert (= (and start!667278 ((_ is Star!17037) rInner!765)) b!6952901))

(assert (= (and start!667278 ((_ is Union!17037) rInner!765)) b!6952894))

(declare-fun s!10388 () List!66790)

(assert (= (and start!667278 ((_ is Cons!66666) s!10388)) b!6952899))

(assert (= (and start!667278 ((_ is Cons!66666) (_1!37193 cut!41))) b!6952890))

(assert (= (and start!667278 ((_ is Cons!66666) (_2!37193 cut!41))) b!6952897))

(declare-fun m!7653082 () Bool)

(assert (=> b!6952898 m!7653082))

(declare-fun m!7653084 () Bool)

(assert (=> b!6952893 m!7653084))

(declare-fun m!7653086 () Bool)

(assert (=> b!6952900 m!7653086))

(declare-fun m!7653088 () Bool)

(assert (=> start!667278 m!7653088))

(assert (=> b!6952891 m!7653082))

(declare-fun m!7653090 () Bool)

(assert (=> b!6952896 m!7653090))

(check-sat (not b!6952898) (not b!6952894) (not b!6952890) (not start!667278) (not b!6952891) tp_is_empty!43299 (not b!6952899) (not b!6952897) (not b!6952896) (not b!6952900) (not b!6952895) (not b!6952901) (not b!6952893))
(check-sat)
