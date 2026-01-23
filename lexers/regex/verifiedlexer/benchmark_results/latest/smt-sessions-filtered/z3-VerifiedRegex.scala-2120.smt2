; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107188 () Bool)

(assert start!107188)

(declare-fun res!542140 () Bool)

(declare-fun e!772154 () Bool)

(assert (=> start!107188 (=> (not res!542140) (not e!772154))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107188 (= res!542140 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107188 e!772154))

(assert (=> start!107188 true))

(declare-fun e!772156 () Bool)

(assert (=> start!107188 e!772156))

(declare-fun e!772155 () Bool)

(assert (=> start!107188 e!772155))

(declare-fun b!1203572 () Bool)

(assert (=> b!1203572 (= e!772154 false)))

(declare-fun lt!411398 () Int)

(declare-datatypes ((T!21894 0))(
  ( (T!21895 (val!3904 Int)) )
))
(declare-datatypes ((List!12083 0))(
  ( (Nil!12059) (Cons!12059 (h!17460 T!21894) (t!112499 List!12083)) )
))
(declare-fun r!2028 () List!12083)

(declare-fun size!9599 (List!12083) Int)

(assert (=> b!1203572 (= lt!411398 (size!9599 r!2028))))

(declare-fun lt!411397 () Int)

(declare-fun l!2744 () List!12083)

(assert (=> b!1203572 (= lt!411397 (size!9599 l!2744))))

(declare-fun b!1203573 () Bool)

(declare-fun tp_is_empty!6011 () Bool)

(declare-fun tp!341616 () Bool)

(assert (=> b!1203573 (= e!772156 (and tp_is_empty!6011 tp!341616))))

(declare-fun b!1203574 () Bool)

(declare-fun tp!341617 () Bool)

(assert (=> b!1203574 (= e!772155 (and tp_is_empty!6011 tp!341617))))

(assert (= (and start!107188 res!542140) b!1203572))

(get-info :version)

(assert (= (and start!107188 ((_ is Cons!12059) l!2744)) b!1203573))

(assert (= (and start!107188 ((_ is Cons!12059) r!2028)) b!1203574))

(declare-fun m!1379281 () Bool)

(assert (=> b!1203572 m!1379281))

(declare-fun m!1379283 () Bool)

(assert (=> b!1203572 m!1379283))

(check-sat (not b!1203572) (not b!1203573) (not b!1203574) tp_is_empty!6011)
(check-sat)
