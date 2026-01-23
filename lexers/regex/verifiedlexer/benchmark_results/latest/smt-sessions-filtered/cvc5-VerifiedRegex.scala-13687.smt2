; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732926 () Bool)

(assert start!732926)

(declare-fun b!7602298 () Bool)

(assert (=> b!7602298 true))

(assert (=> b!7602298 true))

(assert (=> b!7602298 true))

(declare-fun bs!1942445 () Bool)

(declare-fun b!7602296 () Bool)

(assert (= bs!1942445 (and b!7602296 b!7602298)))

(declare-fun lambda!467803 () Int)

(declare-fun lambda!467802 () Int)

(assert (=> bs!1942445 (not (= lambda!467803 lambda!467802))))

(assert (=> b!7602296 true))

(assert (=> b!7602296 true))

(assert (=> b!7602296 true))

(declare-fun res!3044064 () Bool)

(declare-fun e!4522587 () Bool)

(assert (=> start!732926 (=> (not res!3044064) (not e!4522587))))

(declare-datatypes ((C!40662 0))(
  ( (C!40663 (val!30771 Int)) )
))
(declare-datatypes ((Regex!20168 0))(
  ( (ElementMatch!20168 (c!1402257 C!40662)) (Concat!29013 (regOne!40848 Regex!20168) (regTwo!40848 Regex!20168)) (EmptyExpr!20168) (Star!20168 (reg!20497 Regex!20168)) (EmptyLang!20168) (Union!20168 (regOne!40849 Regex!20168) (regTwo!40849 Regex!20168)) )
))
(declare-fun r1!3349 () Regex!20168)

(declare-fun validRegex!10596 (Regex!20168) Bool)

(assert (=> start!732926 (= res!3044064 (validRegex!10596 r1!3349))))

(assert (=> start!732926 e!4522587))

(declare-fun e!4522588 () Bool)

(assert (=> start!732926 e!4522588))

(declare-fun e!4522590 () Bool)

(assert (=> start!732926 e!4522590))

(declare-fun e!4522591 () Bool)

(assert (=> start!732926 e!4522591))

(declare-fun e!4522586 () Bool)

(declare-fun e!4522589 () Bool)

(assert (=> start!732926 (and e!4522586 e!4522589)))

(declare-fun b!7602290 () Bool)

(declare-fun tp!2216831 () Bool)

(declare-fun tp!2216832 () Bool)

(assert (=> b!7602290 (= e!4522590 (and tp!2216831 tp!2216832))))

(declare-fun b!7602291 () Bool)

(declare-fun tp!2216828 () Bool)

(declare-fun tp!2216823 () Bool)

(assert (=> b!7602291 (= e!4522590 (and tp!2216828 tp!2216823))))

(declare-fun b!7602292 () Bool)

(declare-fun tp!2216822 () Bool)

(declare-fun tp!2216824 () Bool)

(assert (=> b!7602292 (= e!4522588 (and tp!2216822 tp!2216824))))

(declare-fun b!7602293 () Bool)

(declare-fun res!3044067 () Bool)

(assert (=> b!7602293 (=> (not res!3044067) (not e!4522587))))

(declare-fun Exists!4396 (Int) Bool)

(assert (=> b!7602293 (= res!3044067 (not (Exists!4396 lambda!467802)))))

(declare-fun b!7602294 () Bool)

(declare-fun tp_is_empty!50691 () Bool)

(declare-fun tp!2216830 () Bool)

(assert (=> b!7602294 (= e!4522591 (and tp_is_empty!50691 tp!2216830))))

(declare-fun b!7602295 () Bool)

(assert (=> b!7602295 (= e!4522587 false)))

(declare-fun lt!2654495 () Bool)

(declare-datatypes ((List!73051 0))(
  ( (Nil!72927) (Cons!72927 (h!79375 C!40662) (t!387786 List!73051)) )
))
(declare-datatypes ((tuple2!69050 0))(
  ( (tuple2!69051 (_1!37828 List!73051) (_2!37828 List!73051)) )
))
(declare-fun cut!28 () tuple2!69050)

(declare-fun matchR!9736 (Regex!20168 List!73051) Bool)

(assert (=> b!7602295 (= lt!2654495 (matchR!9736 r1!3349 (_1!37828 cut!28)))))

(declare-fun res!3044066 () Bool)

(assert (=> b!7602296 (=> (not res!3044066) (not e!4522587))))

(assert (=> b!7602296 (= res!3044066 (not (Exists!4396 lambda!467803)))))

(declare-fun b!7602297 () Bool)

(assert (=> b!7602297 (= e!4522588 tp_is_empty!50691)))

(declare-fun res!3044063 () Bool)

(assert (=> b!7602298 (=> (not res!3044063) (not e!4522587))))

(assert (=> b!7602298 (= res!3044063 (not (Exists!4396 lambda!467802)))))

(declare-fun b!7602299 () Bool)

(declare-fun tp!2216834 () Bool)

(assert (=> b!7602299 (= e!4522589 (and tp_is_empty!50691 tp!2216834))))

(declare-fun b!7602300 () Bool)

(declare-fun tp!2216825 () Bool)

(assert (=> b!7602300 (= e!4522586 (and tp_is_empty!50691 tp!2216825))))

(declare-fun b!7602301 () Bool)

(declare-fun tp!2216827 () Bool)

(assert (=> b!7602301 (= e!4522590 tp!2216827)))

(declare-fun b!7602302 () Bool)

(assert (=> b!7602302 (= e!4522590 tp_is_empty!50691)))

(declare-fun b!7602303 () Bool)

(declare-fun res!3044065 () Bool)

(assert (=> b!7602303 (=> (not res!3044065) (not e!4522587))))

(declare-fun s!10235 () List!73051)

(declare-fun ++!17568 (List!73051 List!73051) List!73051)

(assert (=> b!7602303 (= res!3044065 (= (++!17568 (_1!37828 cut!28) (_2!37828 cut!28)) s!10235))))

(declare-fun b!7602304 () Bool)

(declare-fun res!3044068 () Bool)

(assert (=> b!7602304 (=> (not res!3044068) (not e!4522587))))

(declare-fun r2!3249 () Regex!20168)

(assert (=> b!7602304 (= res!3044068 (validRegex!10596 r2!3249))))

(declare-fun b!7602305 () Bool)

(declare-fun tp!2216826 () Bool)

(assert (=> b!7602305 (= e!4522588 tp!2216826)))

(declare-fun b!7602306 () Bool)

(declare-fun tp!2216829 () Bool)

(declare-fun tp!2216833 () Bool)

(assert (=> b!7602306 (= e!4522588 (and tp!2216829 tp!2216833))))

(assert (= (and start!732926 res!3044064) b!7602304))

(assert (= (and b!7602304 res!3044068) b!7602298))

(assert (= (and b!7602298 res!3044063) b!7602293))

(assert (= (and b!7602293 res!3044067) b!7602296))

(assert (= (and b!7602296 res!3044066) b!7602303))

(assert (= (and b!7602303 res!3044065) b!7602295))

(assert (= (and start!732926 (is-ElementMatch!20168 r1!3349)) b!7602297))

(assert (= (and start!732926 (is-Concat!29013 r1!3349)) b!7602306))

(assert (= (and start!732926 (is-Star!20168 r1!3349)) b!7602305))

(assert (= (and start!732926 (is-Union!20168 r1!3349)) b!7602292))

(assert (= (and start!732926 (is-ElementMatch!20168 r2!3249)) b!7602302))

(assert (= (and start!732926 (is-Concat!29013 r2!3249)) b!7602291))

(assert (= (and start!732926 (is-Star!20168 r2!3249)) b!7602301))

(assert (= (and start!732926 (is-Union!20168 r2!3249)) b!7602290))

(assert (= (and start!732926 (is-Cons!72927 s!10235)) b!7602294))

(assert (= (and start!732926 (is-Cons!72927 (_1!37828 cut!28))) b!7602300))

(assert (= (and start!732926 (is-Cons!72927 (_2!37828 cut!28))) b!7602299))

(declare-fun m!8145410 () Bool)

(assert (=> b!7602298 m!8145410))

(assert (=> b!7602293 m!8145410))

(declare-fun m!8145412 () Bool)

(assert (=> b!7602295 m!8145412))

(declare-fun m!8145414 () Bool)

(assert (=> b!7602296 m!8145414))

(declare-fun m!8145416 () Bool)

(assert (=> start!732926 m!8145416))

(declare-fun m!8145418 () Bool)

(assert (=> b!7602303 m!8145418))

(declare-fun m!8145420 () Bool)

(assert (=> b!7602304 m!8145420))

(push 1)

(assert (not b!7602290))

(assert (not b!7602306))

(assert (not b!7602291))

(assert (not b!7602304))

(assert (not b!7602300))

(assert (not b!7602293))

(assert (not b!7602298))

(assert (not b!7602303))

(assert (not b!7602305))

(assert tp_is_empty!50691)

(assert (not b!7602296))

(assert (not start!732926))

(assert (not b!7602301))

(assert (not b!7602292))

(assert (not b!7602294))

(assert (not b!7602299))

(assert (not b!7602295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

