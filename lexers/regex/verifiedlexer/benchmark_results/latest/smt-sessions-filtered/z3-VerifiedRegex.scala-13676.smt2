; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732884 () Bool)

(assert start!732884)

(declare-fun b!7600896 () Bool)

(assert (=> b!7600896 true))

(assert (=> b!7600896 true))

(assert (=> b!7600896 true))

(declare-fun b!7600892 () Bool)

(declare-fun e!4522092 () Bool)

(declare-fun tp!2216070 () Bool)

(assert (=> b!7600892 (= e!4522092 tp!2216070)))

(declare-fun b!7600893 () Bool)

(declare-fun e!4522094 () Bool)

(assert (=> b!7600893 (= e!4522094 false)))

(declare-fun b!7600894 () Bool)

(declare-fun res!3043385 () Bool)

(assert (=> b!7600894 (=> (not res!3043385) (not e!4522094))))

(declare-datatypes ((C!40620 0))(
  ( (C!40621 (val!30750 Int)) )
))
(declare-datatypes ((Regex!20147 0))(
  ( (ElementMatch!20147 (c!1402236 C!40620)) (Concat!28992 (regOne!40806 Regex!20147) (regTwo!40806 Regex!20147)) (EmptyExpr!20147) (Star!20147 (reg!20476 Regex!20147)) (EmptyLang!20147) (Union!20147 (regOne!40807 Regex!20147) (regTwo!40807 Regex!20147)) )
))
(declare-fun r2!3249 () Regex!20147)

(declare-fun validRegex!10575 (Regex!20147) Bool)

(assert (=> b!7600894 (= res!3043385 (validRegex!10575 r2!3249))))

(declare-fun b!7600895 () Bool)

(declare-fun e!4522093 () Bool)

(declare-fun tp!2216067 () Bool)

(declare-fun tp!2216075 () Bool)

(assert (=> b!7600895 (= e!4522093 (and tp!2216067 tp!2216075))))

(declare-fun res!3043383 () Bool)

(assert (=> b!7600896 (=> (not res!3043383) (not e!4522094))))

(declare-fun lambda!467603 () Int)

(declare-fun Exists!4375 (Int) Bool)

(assert (=> b!7600896 (= res!3043383 (not (Exists!4375 lambda!467603)))))

(declare-fun b!7600897 () Bool)

(declare-fun tp!2216063 () Bool)

(declare-fun tp!2216064 () Bool)

(assert (=> b!7600897 (= e!4522093 (and tp!2216063 tp!2216064))))

(declare-fun b!7600898 () Bool)

(declare-fun tp!2216065 () Bool)

(assert (=> b!7600898 (= e!4522093 tp!2216065)))

(declare-fun b!7600899 () Bool)

(declare-fun res!3043382 () Bool)

(assert (=> b!7600899 (=> (not res!3043382) (not e!4522094))))

(assert (=> b!7600899 (= res!3043382 (not (Exists!4375 lambda!467603)))))

(declare-fun b!7600900 () Bool)

(declare-fun tp_is_empty!50649 () Bool)

(assert (=> b!7600900 (= e!4522093 tp_is_empty!50649)))

(declare-fun b!7600901 () Bool)

(declare-fun e!4522096 () Bool)

(declare-fun tp!2216068 () Bool)

(assert (=> b!7600901 (= e!4522096 (and tp_is_empty!50649 tp!2216068))))

(declare-fun b!7600902 () Bool)

(declare-fun tp!2216066 () Bool)

(declare-fun tp!2216073 () Bool)

(assert (=> b!7600902 (= e!4522092 (and tp!2216066 tp!2216073))))

(declare-fun b!7600903 () Bool)

(declare-fun e!4522097 () Bool)

(declare-fun tp!2216074 () Bool)

(assert (=> b!7600903 (= e!4522097 (and tp_is_empty!50649 tp!2216074))))

(declare-fun b!7600904 () Bool)

(declare-fun e!4522095 () Bool)

(declare-fun tp!2216072 () Bool)

(assert (=> b!7600904 (= e!4522095 (and tp_is_empty!50649 tp!2216072))))

(declare-fun b!7600905 () Bool)

(assert (=> b!7600905 (= e!4522092 tp_is_empty!50649)))

(declare-fun b!7600906 () Bool)

(declare-fun tp!2216071 () Bool)

(declare-fun tp!2216069 () Bool)

(assert (=> b!7600906 (= e!4522092 (and tp!2216071 tp!2216069))))

(declare-fun b!7600907 () Bool)

(declare-fun res!3043386 () Bool)

(assert (=> b!7600907 (=> (not res!3043386) (not e!4522094))))

(declare-datatypes ((List!73030 0))(
  ( (Nil!72906) (Cons!72906 (h!79354 C!40620) (t!387765 List!73030)) )
))
(declare-datatypes ((tuple2!69012 0))(
  ( (tuple2!69013 (_1!37809 List!73030) (_2!37809 List!73030)) )
))
(declare-fun cut!35 () tuple2!69012)

(declare-fun s!10235 () List!73030)

(declare-fun ++!17553 (List!73030 List!73030) List!73030)

(assert (=> b!7600907 (= res!3043386 (= (++!17553 (_1!37809 cut!35) (_2!37809 cut!35)) s!10235))))

(declare-fun res!3043384 () Bool)

(assert (=> start!732884 (=> (not res!3043384) (not e!4522094))))

(declare-fun r1!3349 () Regex!20147)

(assert (=> start!732884 (= res!3043384 (validRegex!10575 r1!3349))))

(assert (=> start!732884 e!4522094))

(assert (=> start!732884 e!4522093))

(assert (=> start!732884 e!4522092))

(assert (=> start!732884 e!4522097))

(assert (=> start!732884 (and e!4522095 e!4522096)))

(assert (= (and start!732884 res!3043384) b!7600894))

(assert (= (and b!7600894 res!3043385) b!7600896))

(assert (= (and b!7600896 res!3043383) b!7600899))

(assert (= (and b!7600899 res!3043382) b!7600907))

(assert (= (and b!7600907 res!3043386) b!7600893))

(get-info :version)

(assert (= (and start!732884 ((_ is ElementMatch!20147) r1!3349)) b!7600900))

(assert (= (and start!732884 ((_ is Concat!28992) r1!3349)) b!7600897))

(assert (= (and start!732884 ((_ is Star!20147) r1!3349)) b!7600898))

(assert (= (and start!732884 ((_ is Union!20147) r1!3349)) b!7600895))

(assert (= (and start!732884 ((_ is ElementMatch!20147) r2!3249)) b!7600905))

(assert (= (and start!732884 ((_ is Concat!28992) r2!3249)) b!7600902))

(assert (= (and start!732884 ((_ is Star!20147) r2!3249)) b!7600892))

(assert (= (and start!732884 ((_ is Union!20147) r2!3249)) b!7600906))

(assert (= (and start!732884 ((_ is Cons!72906) s!10235)) b!7600903))

(assert (= (and start!732884 ((_ is Cons!72906) (_1!37809 cut!35))) b!7600904))

(assert (= (and start!732884 ((_ is Cons!72906) (_2!37809 cut!35))) b!7600901))

(declare-fun m!8145066 () Bool)

(assert (=> b!7600896 m!8145066))

(declare-fun m!8145068 () Bool)

(assert (=> b!7600907 m!8145068))

(declare-fun m!8145070 () Bool)

(assert (=> b!7600894 m!8145070))

(declare-fun m!8145072 () Bool)

(assert (=> start!732884 m!8145072))

(assert (=> b!7600899 m!8145066))

(check-sat (not b!7600904) (not b!7600907) (not b!7600902) (not b!7600899) (not b!7600897) (not b!7600901) (not b!7600906) (not b!7600892) tp_is_empty!50649 (not b!7600895) (not b!7600894) (not b!7600898) (not b!7600903) (not b!7600896) (not start!732884))
(check-sat)
