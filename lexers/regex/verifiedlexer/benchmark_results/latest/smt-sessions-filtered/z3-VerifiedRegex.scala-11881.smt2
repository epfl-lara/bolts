; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667090 () Bool)

(assert start!667090)

(declare-fun b!6949721 () Bool)

(assert (=> b!6949721 true))

(assert (=> b!6949721 true))

(declare-fun b!6949718 () Bool)

(declare-fun e!4179917 () Bool)

(declare-fun tp!1915705 () Bool)

(assert (=> b!6949718 (= e!4179917 tp!1915705)))

(declare-fun b!6949719 () Bool)

(declare-fun tp_is_empty!43243 () Bool)

(assert (=> b!6949719 (= e!4179917 tp_is_empty!43243)))

(declare-fun b!6949720 () Bool)

(declare-fun res!2835278 () Bool)

(declare-fun e!4179918 () Bool)

(assert (=> b!6949720 (=> (not res!2835278) (not e!4179918))))

(declare-datatypes ((C!34288 0))(
  ( (C!34289 (val!26846 Int)) )
))
(declare-datatypes ((Regex!17009 0))(
  ( (ElementMatch!17009 (c!1289201 C!34288)) (Concat!25854 (regOne!34530 Regex!17009) (regTwo!34530 Regex!17009)) (EmptyExpr!17009) (Star!17009 (reg!17338 Regex!17009)) (EmptyLang!17009) (Union!17009 (regOne!34531 Regex!17009) (regTwo!34531 Regex!17009)) )
))
(declare-fun rInner!765 () Regex!17009)

(declare-fun nullable!6822 (Regex!17009) Bool)

(assert (=> b!6949720 (= res!2835278 (not (nullable!6822 rInner!765)))))

(declare-fun res!2835279 () Bool)

(assert (=> b!6949721 (=> (not res!2835279) (not e!4179918))))

(declare-fun lambda!396300 () Int)

(declare-fun Exists!4005 (Int) Bool)

(assert (=> b!6949721 (= res!2835279 (not (Exists!4005 lambda!396300)))))

(declare-fun b!6949722 () Bool)

(declare-fun e!4179914 () Bool)

(declare-fun tp!1915707 () Bool)

(assert (=> b!6949722 (= e!4179914 (and tp_is_empty!43243 tp!1915707))))

(declare-fun res!2835280 () Bool)

(assert (=> start!667090 (=> (not res!2835280) (not e!4179918))))

(declare-fun validRegex!8715 (Regex!17009) Bool)

(assert (=> start!667090 (= res!2835280 (validRegex!8715 rInner!765))))

(assert (=> start!667090 e!4179918))

(assert (=> start!667090 e!4179917))

(declare-fun e!4179916 () Bool)

(assert (=> start!667090 e!4179916))

(declare-fun e!4179915 () Bool)

(assert (=> start!667090 (and e!4179915 e!4179914)))

(declare-fun b!6949723 () Bool)

(declare-fun tp!1915703 () Bool)

(declare-fun tp!1915706 () Bool)

(assert (=> b!6949723 (= e!4179917 (and tp!1915703 tp!1915706))))

(declare-fun b!6949724 () Bool)

(declare-fun tp!1915709 () Bool)

(assert (=> b!6949724 (= e!4179916 (and tp_is_empty!43243 tp!1915709))))

(declare-fun b!6949725 () Bool)

(declare-fun tp!1915704 () Bool)

(declare-fun tp!1915702 () Bool)

(assert (=> b!6949725 (= e!4179917 (and tp!1915704 tp!1915702))))

(declare-fun b!6949726 () Bool)

(declare-fun tp!1915708 () Bool)

(assert (=> b!6949726 (= e!4179915 (and tp_is_empty!43243 tp!1915708))))

(declare-fun b!6949727 () Bool)

(assert (=> b!6949727 (= e!4179918 false)))

(declare-datatypes ((List!66762 0))(
  ( (Nil!66638) (Cons!66638 (h!73086 C!34288) (t!380505 List!66762)) )
))
(declare-fun lt!2477873 () List!66762)

(declare-datatypes ((tuple2!67728 0))(
  ( (tuple2!67729 (_1!37167 List!66762) (_2!37167 List!66762)) )
))
(declare-fun cut!47 () tuple2!67728)

(declare-fun ++!15046 (List!66762 List!66762) List!66762)

(assert (=> b!6949727 (= lt!2477873 (++!15046 (_1!37167 cut!47) (_2!37167 cut!47)))))

(assert (= (and start!667090 res!2835280) b!6949720))

(assert (= (and b!6949720 res!2835278) b!6949721))

(assert (= (and b!6949721 res!2835279) b!6949727))

(get-info :version)

(assert (= (and start!667090 ((_ is ElementMatch!17009) rInner!765)) b!6949719))

(assert (= (and start!667090 ((_ is Concat!25854) rInner!765)) b!6949725))

(assert (= (and start!667090 ((_ is Star!17009) rInner!765)) b!6949718))

(assert (= (and start!667090 ((_ is Union!17009) rInner!765)) b!6949723))

(declare-fun s!10388 () List!66762)

(assert (= (and start!667090 ((_ is Cons!66638) s!10388)) b!6949724))

(assert (= (and start!667090 ((_ is Cons!66638) (_1!37167 cut!47))) b!6949726))

(assert (= (and start!667090 ((_ is Cons!66638) (_2!37167 cut!47))) b!6949722))

(declare-fun m!7651984 () Bool)

(assert (=> b!6949720 m!7651984))

(declare-fun m!7651986 () Bool)

(assert (=> b!6949721 m!7651986))

(declare-fun m!7651988 () Bool)

(assert (=> start!667090 m!7651988))

(declare-fun m!7651990 () Bool)

(assert (=> b!6949727 m!7651990))

(check-sat (not b!6949722) (not b!6949727) (not start!667090) (not b!6949724) (not b!6949725) (not b!6949718) (not b!6949721) (not b!6949723) (not b!6949720) tp_is_empty!43243 (not b!6949726))
(check-sat)
