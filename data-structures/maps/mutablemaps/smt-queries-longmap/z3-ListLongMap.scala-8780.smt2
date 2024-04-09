; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106806 () Bool)

(assert start!106806)

(declare-fun b!1267220 () Bool)

(declare-fun res!843621 () Bool)

(declare-fun e!721920 () Bool)

(assert (=> b!1267220 (=> (not res!843621) (not e!721920))))

(declare-datatypes ((B!2074 0))(
  ( (B!2075 (val!16372 Int)) )
))
(declare-datatypes ((tuple2!21412 0))(
  ( (tuple2!21413 (_1!10716 (_ BitVec 64)) (_2!10716 B!2074)) )
))
(declare-datatypes ((List!28539 0))(
  ( (Nil!28536) (Cons!28535 (h!29744 tuple2!21412) (t!42073 List!28539)) )
))
(declare-fun l!874 () List!28539)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!678 (List!28539 (_ BitVec 64)) Bool)

(assert (=> b!1267220 (= res!843621 (not (containsKey!678 l!874 key!235)))))

(declare-fun b!1267223 () Bool)

(declare-fun e!721921 () Bool)

(declare-fun tp_is_empty!32595 () Bool)

(declare-fun tp!96591 () Bool)

(assert (=> b!1267223 (= e!721921 (and tp_is_empty!32595 tp!96591))))

(declare-fun b!1267222 () Bool)

(declare-fun isStrictlySorted!817 (List!28539) Bool)

(assert (=> b!1267222 (= e!721920 (not (isStrictlySorted!817 (t!42073 l!874))))))

(declare-fun res!843622 () Bool)

(assert (=> start!106806 (=> (not res!843622) (not e!721920))))

(assert (=> start!106806 (= res!843622 (isStrictlySorted!817 l!874))))

(assert (=> start!106806 e!721920))

(assert (=> start!106806 e!721921))

(assert (=> start!106806 true))

(declare-fun b!1267221 () Bool)

(declare-fun res!843620 () Bool)

(assert (=> b!1267221 (=> (not res!843620) (not e!721920))))

(get-info :version)

(assert (=> b!1267221 (= res!843620 ((_ is Cons!28535) l!874))))

(assert (= (and start!106806 res!843622) b!1267220))

(assert (= (and b!1267220 res!843621) b!1267221))

(assert (= (and b!1267221 res!843620) b!1267222))

(assert (= (and start!106806 ((_ is Cons!28535) l!874)) b!1267223))

(declare-fun m!1166643 () Bool)

(assert (=> b!1267220 m!1166643))

(declare-fun m!1166645 () Bool)

(assert (=> b!1267222 m!1166645))

(declare-fun m!1166647 () Bool)

(assert (=> start!106806 m!1166647))

(check-sat (not b!1267222) (not b!1267220) tp_is_empty!32595 (not b!1267223) (not start!106806))
(check-sat)
(get-model)

(declare-fun d!139361 () Bool)

(declare-fun res!843644 () Bool)

(declare-fun e!721940 () Bool)

(assert (=> d!139361 (=> res!843644 e!721940)))

(assert (=> d!139361 (= res!843644 (or ((_ is Nil!28536) l!874) ((_ is Nil!28536) (t!42073 l!874))))))

(assert (=> d!139361 (= (isStrictlySorted!817 l!874) e!721940)))

(declare-fun b!1267248 () Bool)

(declare-fun e!721941 () Bool)

(assert (=> b!1267248 (= e!721940 e!721941)))

(declare-fun res!843645 () Bool)

(assert (=> b!1267248 (=> (not res!843645) (not e!721941))))

(assert (=> b!1267248 (= res!843645 (bvslt (_1!10716 (h!29744 l!874)) (_1!10716 (h!29744 (t!42073 l!874)))))))

(declare-fun b!1267249 () Bool)

(assert (=> b!1267249 (= e!721941 (isStrictlySorted!817 (t!42073 l!874)))))

(assert (= (and d!139361 (not res!843644)) b!1267248))

(assert (= (and b!1267248 res!843645) b!1267249))

(assert (=> b!1267249 m!1166645))

(assert (=> start!106806 d!139361))

(declare-fun d!139365 () Bool)

(declare-fun res!843650 () Bool)

(declare-fun e!721946 () Bool)

(assert (=> d!139365 (=> res!843650 e!721946)))

(assert (=> d!139365 (= res!843650 (or ((_ is Nil!28536) (t!42073 l!874)) ((_ is Nil!28536) (t!42073 (t!42073 l!874)))))))

(assert (=> d!139365 (= (isStrictlySorted!817 (t!42073 l!874)) e!721946)))

(declare-fun b!1267254 () Bool)

(declare-fun e!721947 () Bool)

(assert (=> b!1267254 (= e!721946 e!721947)))

(declare-fun res!843651 () Bool)

(assert (=> b!1267254 (=> (not res!843651) (not e!721947))))

(assert (=> b!1267254 (= res!843651 (bvslt (_1!10716 (h!29744 (t!42073 l!874))) (_1!10716 (h!29744 (t!42073 (t!42073 l!874))))))))

(declare-fun b!1267255 () Bool)

(assert (=> b!1267255 (= e!721947 (isStrictlySorted!817 (t!42073 (t!42073 l!874))))))

(assert (= (and d!139365 (not res!843650)) b!1267254))

(assert (= (and b!1267254 res!843651) b!1267255))

(declare-fun m!1166657 () Bool)

(assert (=> b!1267255 m!1166657))

(assert (=> b!1267222 d!139365))

(declare-fun d!139371 () Bool)

(declare-fun res!843670 () Bool)

(declare-fun e!721966 () Bool)

(assert (=> d!139371 (=> res!843670 e!721966)))

(assert (=> d!139371 (= res!843670 (and ((_ is Cons!28535) l!874) (= (_1!10716 (h!29744 l!874)) key!235)))))

(assert (=> d!139371 (= (containsKey!678 l!874 key!235) e!721966)))

(declare-fun b!1267274 () Bool)

(declare-fun e!721967 () Bool)

(assert (=> b!1267274 (= e!721966 e!721967)))

(declare-fun res!843671 () Bool)

(assert (=> b!1267274 (=> (not res!843671) (not e!721967))))

(assert (=> b!1267274 (= res!843671 (and (or (not ((_ is Cons!28535) l!874)) (bvsle (_1!10716 (h!29744 l!874)) key!235)) ((_ is Cons!28535) l!874) (bvslt (_1!10716 (h!29744 l!874)) key!235)))))

(declare-fun b!1267275 () Bool)

(assert (=> b!1267275 (= e!721967 (containsKey!678 (t!42073 l!874) key!235))))

(assert (= (and d!139371 (not res!843670)) b!1267274))

(assert (= (and b!1267274 res!843671) b!1267275))

(declare-fun m!1166663 () Bool)

(assert (=> b!1267275 m!1166663))

(assert (=> b!1267220 d!139371))

(declare-fun b!1267291 () Bool)

(declare-fun e!721977 () Bool)

(declare-fun tp!96602 () Bool)

(assert (=> b!1267291 (= e!721977 (and tp_is_empty!32595 tp!96602))))

(assert (=> b!1267223 (= tp!96591 e!721977)))

(assert (= (and b!1267223 ((_ is Cons!28535) (t!42073 l!874))) b!1267291))

(check-sat (not b!1267291) (not b!1267255) tp_is_empty!32595 (not b!1267275) (not b!1267249))
(check-sat)
