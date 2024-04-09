; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1250 () Bool)

(assert start!1250)

(declare-fun res!8899 () Bool)

(declare-fun e!6049 () Bool)

(assert (=> start!1250 (=> (not res!8899) (not e!6049))))

(declare-datatypes ((B!328 0))(
  ( (B!329 (val!259 Int)) )
))
(declare-datatypes ((tuple2!300 0))(
  ( (tuple2!301 (_1!150 (_ BitVec 64)) (_2!150 B!328)) )
))
(declare-datatypes ((List!306 0))(
  ( (Nil!303) (Cons!302 (h!868 tuple2!300) (t!2453 List!306)) )
))
(declare-fun l!408 () List!306)

(get-info :version)

(assert (=> start!1250 (= res!8899 ((_ is Cons!302) l!408))))

(assert (=> start!1250 e!6049))

(declare-fun e!6050 () Bool)

(assert (=> start!1250 e!6050))

(declare-fun b!10447 () Bool)

(assert (=> b!10447 (= e!6049 false)))

(declare-fun lt!2583 () (_ BitVec 32))

(declare-fun intSize!5 (List!306) (_ BitVec 32))

(assert (=> b!10447 (= lt!2583 (intSize!5 (t!2453 l!408)))))

(declare-fun b!10448 () Bool)

(declare-fun tp_is_empty!501 () Bool)

(declare-fun tp!1520 () Bool)

(assert (=> b!10448 (= e!6050 (and tp_is_empty!501 tp!1520))))

(assert (= (and start!1250 res!8899) b!10447))

(assert (= (and start!1250 ((_ is Cons!302) l!408)) b!10448))

(declare-fun m!6739 () Bool)

(assert (=> b!10447 m!6739))

(check-sat (not b!10447) (not b!10448) tp_is_empty!501)
(check-sat)
