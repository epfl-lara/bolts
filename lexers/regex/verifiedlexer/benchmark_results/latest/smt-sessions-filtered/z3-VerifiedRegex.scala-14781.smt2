; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759532 () Bool)

(assert start!759532)

(declare-fun res!3188554 () Bool)

(declare-fun e!4749701 () Bool)

(assert (=> start!759532 (=> (not res!3188554) (not e!4749701))))

(declare-datatypes ((K!23038 0))(
  ( (K!23039 (val!33103 Int)) )
))
(declare-datatypes ((V!23264 0))(
  ( (V!23265 (val!33104 Int)) )
))
(declare-datatypes ((tuple2!71068 0))(
  ( (tuple2!71069 (_1!38837 K!23038) (_2!38837 V!23264)) )
))
(declare-datatypes ((List!75795 0))(
  ( (Nil!75669) (Cons!75669 (h!82117 tuple2!71068) (t!391567 List!75795)) )
))
(declare-fun l!11070 () List!75795)

(declare-fun key!2498 () K!23038)

(get-info :version)

(assert (=> start!759532 (= res!3188554 (and (or (not ((_ is Cons!75669) l!11070)) (not (= (_1!38837 (h!82117 l!11070)) key!2498))) ((_ is Cons!75669) l!11070)))))

(assert (=> start!759532 e!4749701))

(declare-fun e!4749702 () Bool)

(assert (=> start!759532 e!4749702))

(declare-fun tp_is_empty!55251 () Bool)

(assert (=> start!759532 tp_is_empty!55251))

(declare-fun b!8059648 () Bool)

(declare-fun ListPrimitiveSize!564 (List!75795) Int)

(assert (=> b!8059648 (= e!4749701 (>= (ListPrimitiveSize!564 (t!391567 l!11070)) (ListPrimitiveSize!564 l!11070)))))

(declare-fun tp!2414412 () Bool)

(declare-fun b!8059649 () Bool)

(declare-fun tp_is_empty!55253 () Bool)

(assert (=> b!8059649 (= e!4749702 (and tp_is_empty!55251 tp_is_empty!55253 tp!2414412))))

(assert (= (and start!759532 res!3188554) b!8059648))

(assert (= (and start!759532 ((_ is Cons!75669) l!11070)) b!8059649))

(declare-fun m!8412852 () Bool)

(assert (=> b!8059648 m!8412852))

(declare-fun m!8412854 () Bool)

(assert (=> b!8059648 m!8412854))

(check-sat (not b!8059648) (not b!8059649) tp_is_empty!55253 tp_is_empty!55251)
(check-sat)
(get-model)

(declare-fun d!2399386 () Bool)

(declare-fun lt!2732879 () Int)

(assert (=> d!2399386 (>= lt!2732879 0)))

(declare-fun e!4749712 () Int)

(assert (=> d!2399386 (= lt!2732879 e!4749712)))

(declare-fun c!1476980 () Bool)

(assert (=> d!2399386 (= c!1476980 ((_ is Nil!75669) (t!391567 l!11070)))))

(assert (=> d!2399386 (= (ListPrimitiveSize!564 (t!391567 l!11070)) lt!2732879)))

(declare-fun b!8059667 () Bool)

(assert (=> b!8059667 (= e!4749712 0)))

(declare-fun b!8059668 () Bool)

(assert (=> b!8059668 (= e!4749712 (+ 1 (ListPrimitiveSize!564 (t!391567 (t!391567 l!11070)))))))

(assert (= (and d!2399386 c!1476980) b!8059667))

(assert (= (and d!2399386 (not c!1476980)) b!8059668))

(declare-fun m!8412858 () Bool)

(assert (=> b!8059668 m!8412858))

(assert (=> b!8059648 d!2399386))

(declare-fun d!2399390 () Bool)

(declare-fun lt!2732880 () Int)

(assert (=> d!2399390 (>= lt!2732880 0)))

(declare-fun e!4749713 () Int)

(assert (=> d!2399390 (= lt!2732880 e!4749713)))

(declare-fun c!1476981 () Bool)

(assert (=> d!2399390 (= c!1476981 ((_ is Nil!75669) l!11070))))

(assert (=> d!2399390 (= (ListPrimitiveSize!564 l!11070) lt!2732880)))

(declare-fun b!8059669 () Bool)

(assert (=> b!8059669 (= e!4749713 0)))

(declare-fun b!8059670 () Bool)

(assert (=> b!8059670 (= e!4749713 (+ 1 (ListPrimitiveSize!564 (t!391567 l!11070))))))

(assert (= (and d!2399390 c!1476981) b!8059669))

(assert (= (and d!2399390 (not c!1476981)) b!8059670))

(assert (=> b!8059670 m!8412852))

(assert (=> b!8059648 d!2399390))

(declare-fun e!4749716 () Bool)

(declare-fun b!8059675 () Bool)

(declare-fun tp!2414418 () Bool)

(assert (=> b!8059675 (= e!4749716 (and tp_is_empty!55251 tp_is_empty!55253 tp!2414418))))

(assert (=> b!8059649 (= tp!2414412 e!4749716)))

(assert (= (and b!8059649 ((_ is Cons!75669) (t!391567 l!11070))) b!8059675))

(check-sat (not b!8059675) (not b!8059668) tp_is_empty!55251 tp_is_empty!55253 (not b!8059670))
(check-sat)
