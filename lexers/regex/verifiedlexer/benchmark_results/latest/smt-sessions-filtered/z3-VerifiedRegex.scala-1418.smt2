; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74330 () Bool)

(assert start!74330)

(declare-fun b!837372 () Bool)

(declare-fun e!550528 () Bool)

(declare-fun tp!262661 () Bool)

(assert (=> b!837372 (= e!550528 tp!262661)))

(declare-fun res!382913 () Bool)

(declare-fun e!550529 () Bool)

(assert (=> start!74330 (=> (not res!382913) (not e!550529))))

(declare-datatypes ((C!4760 0))(
  ( (C!4761 (val!2628 Int)) )
))
(declare-datatypes ((Regex!2095 0))(
  ( (ElementMatch!2095 (c!136818 C!4760)) (Concat!3826 (regOne!4702 Regex!2095) (regTwo!4702 Regex!2095)) (EmptyExpr!2095) (Star!2095 (reg!2424 Regex!2095)) (EmptyLang!2095) (Union!2095 (regOne!4703 Regex!2095) (regTwo!4703 Regex!2095)) )
))
(declare-fun r!27177 () Regex!2095)

(declare-fun validRegex!648 (Regex!2095) Bool)

(assert (=> start!74330 (= res!382913 (validRegex!648 r!27177))))

(assert (=> start!74330 e!550529))

(assert (=> start!74330 e!550528))

(declare-fun tp_is_empty!3913 () Bool)

(assert (=> start!74330 tp_is_empty!3913))

(declare-fun b!837373 () Bool)

(assert (=> b!837373 (= e!550528 tp_is_empty!3913)))

(declare-fun b!837374 () Bool)

(declare-fun tp!262660 () Bool)

(declare-fun tp!262662 () Bool)

(assert (=> b!837374 (= e!550528 (and tp!262660 tp!262662))))

(declare-fun b!837375 () Bool)

(assert (=> b!837375 (= e!550529 false)))

(declare-fun b!837376 () Bool)

(declare-fun tp!262663 () Bool)

(declare-fun tp!262664 () Bool)

(assert (=> b!837376 (= e!550528 (and tp!262663 tp!262664))))

(declare-fun b!837377 () Bool)

(declare-fun res!382912 () Bool)

(assert (=> b!837377 (=> (not res!382912) (not e!550529))))

(declare-fun c!13916 () C!4760)

(declare-datatypes ((List!8921 0))(
  ( (Nil!8905) (Cons!8905 (h!14306 C!4760) (t!93213 List!8921)) )
))
(declare-fun contains!1686 (List!8921 C!4760) Bool)

(declare-fun firstChars!66 (Regex!2095) List!8921)

(assert (=> b!837377 (= res!382912 (contains!1686 (firstChars!66 r!27177) c!13916))))

(assert (= (and start!74330 res!382913) b!837377))

(assert (= (and b!837377 res!382912) b!837375))

(get-info :version)

(assert (= (and start!74330 ((_ is ElementMatch!2095) r!27177)) b!837373))

(assert (= (and start!74330 ((_ is Concat!3826) r!27177)) b!837376))

(assert (= (and start!74330 ((_ is Star!2095) r!27177)) b!837372))

(assert (= (and start!74330 ((_ is Union!2095) r!27177)) b!837374))

(declare-fun m!1071007 () Bool)

(assert (=> start!74330 m!1071007))

(declare-fun m!1071009 () Bool)

(assert (=> b!837377 m!1071009))

(assert (=> b!837377 m!1071009))

(declare-fun m!1071011 () Bool)

(assert (=> b!837377 m!1071011))

(check-sat (not b!837374) (not b!837377) tp_is_empty!3913 (not start!74330) (not b!837372) (not b!837376))
(check-sat)
