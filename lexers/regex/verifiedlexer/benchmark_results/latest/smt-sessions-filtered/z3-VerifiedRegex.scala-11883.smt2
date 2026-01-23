; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667118 () Bool)

(assert start!667118)

(declare-fun b!6950156 () Bool)

(assert (=> b!6950156 true))

(assert (=> b!6950156 true))

(declare-fun b!6950149 () Bool)

(declare-fun e!4180122 () Bool)

(declare-fun tp_is_empty!43251 () Bool)

(assert (=> b!6950149 (= e!4180122 tp_is_empty!43251)))

(declare-fun b!6950150 () Bool)

(declare-fun res!2835458 () Bool)

(declare-fun e!4180124 () Bool)

(assert (=> b!6950150 (=> (not res!2835458) (not e!4180124))))

(declare-fun lambda!396316 () Int)

(declare-fun Exists!4009 (Int) Bool)

(assert (=> b!6950150 (= res!2835458 (not (Exists!4009 lambda!396316)))))

(declare-fun b!6950151 () Bool)

(declare-fun tp!1915883 () Bool)

(declare-fun tp!1915879 () Bool)

(assert (=> b!6950151 (= e!4180122 (and tp!1915883 tp!1915879))))

(declare-fun b!6950152 () Bool)

(declare-fun res!2835457 () Bool)

(assert (=> b!6950152 (=> (not res!2835457) (not e!4180124))))

(declare-datatypes ((C!34296 0))(
  ( (C!34297 (val!26850 Int)) )
))
(declare-datatypes ((Regex!17013 0))(
  ( (ElementMatch!17013 (c!1289245 C!34296)) (Concat!25858 (regOne!34538 Regex!17013) (regTwo!34538 Regex!17013)) (EmptyExpr!17013) (Star!17013 (reg!17342 Regex!17013)) (EmptyLang!17013) (Union!17013 (regOne!34539 Regex!17013) (regTwo!34539 Regex!17013)) )
))
(declare-fun rInner!765 () Regex!17013)

(declare-fun nullable!6826 (Regex!17013) Bool)

(assert (=> b!6950152 (= res!2835457 (not (nullable!6826 rInner!765)))))

(declare-fun b!6950153 () Bool)

(declare-fun e!4180121 () Bool)

(declare-fun tp!1915880 () Bool)

(assert (=> b!6950153 (= e!4180121 (and tp_is_empty!43251 tp!1915880))))

(declare-fun b!6950154 () Bool)

(declare-fun e!4180123 () Bool)

(declare-fun tp!1915882 () Bool)

(assert (=> b!6950154 (= e!4180123 (and tp_is_empty!43251 tp!1915882))))

(declare-fun b!6950155 () Bool)

(assert (=> b!6950155 (= e!4180124 false)))

(declare-datatypes ((List!66766 0))(
  ( (Nil!66642) (Cons!66642 (h!73090 C!34296) (t!380509 List!66766)) )
))
(declare-fun lt!2477891 () List!66766)

(declare-datatypes ((tuple2!67736 0))(
  ( (tuple2!67737 (_1!37171 List!66766) (_2!37171 List!66766)) )
))
(declare-fun cut!48 () tuple2!67736)

(declare-fun ++!15050 (List!66766 List!66766) List!66766)

(assert (=> b!6950155 (= lt!2477891 (++!15050 (_1!37171 cut!48) (_2!37171 cut!48)))))

(declare-fun res!2835456 () Bool)

(assert (=> start!667118 (=> (not res!2835456) (not e!4180124))))

(declare-fun validRegex!8719 (Regex!17013) Bool)

(assert (=> start!667118 (= res!2835456 (validRegex!8719 rInner!765))))

(assert (=> start!667118 e!4180124))

(assert (=> start!667118 e!4180122))

(assert (=> start!667118 e!4180123))

(declare-fun e!4180120 () Bool)

(assert (=> start!667118 (and e!4180120 e!4180121)))

(declare-fun res!2835455 () Bool)

(assert (=> b!6950156 (=> (not res!2835455) (not e!4180124))))

(assert (=> b!6950156 (= res!2835455 (not (Exists!4009 lambda!396316)))))

(declare-fun b!6950157 () Bool)

(declare-fun tp!1915885 () Bool)

(declare-fun tp!1915881 () Bool)

(assert (=> b!6950157 (= e!4180122 (and tp!1915885 tp!1915881))))

(declare-fun b!6950158 () Bool)

(declare-fun tp!1915884 () Bool)

(assert (=> b!6950158 (= e!4180120 (and tp_is_empty!43251 tp!1915884))))

(declare-fun b!6950159 () Bool)

(declare-fun tp!1915878 () Bool)

(assert (=> b!6950159 (= e!4180122 tp!1915878)))

(assert (= (and start!667118 res!2835456) b!6950152))

(assert (= (and b!6950152 res!2835457) b!6950156))

(assert (= (and b!6950156 res!2835455) b!6950150))

(assert (= (and b!6950150 res!2835458) b!6950155))

(get-info :version)

(assert (= (and start!667118 ((_ is ElementMatch!17013) rInner!765)) b!6950149))

(assert (= (and start!667118 ((_ is Concat!25858) rInner!765)) b!6950157))

(assert (= (and start!667118 ((_ is Star!17013) rInner!765)) b!6950159))

(assert (= (and start!667118 ((_ is Union!17013) rInner!765)) b!6950151))

(declare-fun s!10388 () List!66766)

(assert (= (and start!667118 ((_ is Cons!66642) s!10388)) b!6950154))

(assert (= (and start!667118 ((_ is Cons!66642) (_1!37171 cut!48))) b!6950158))

(assert (= (and start!667118 ((_ is Cons!66642) (_2!37171 cut!48))) b!6950153))

(declare-fun m!7652108 () Bool)

(assert (=> b!6950150 m!7652108))

(declare-fun m!7652110 () Bool)

(assert (=> b!6950155 m!7652110))

(declare-fun m!7652112 () Bool)

(assert (=> b!6950152 m!7652112))

(assert (=> b!6950156 m!7652108))

(declare-fun m!7652114 () Bool)

(assert (=> start!667118 m!7652114))

(check-sat tp_is_empty!43251 (not b!6950151) (not b!6950153) (not b!6950156) (not b!6950154) (not b!6950152) (not b!6950155) (not b!6950157) (not b!6950159) (not b!6950158) (not start!667118) (not b!6950150))
(check-sat)
