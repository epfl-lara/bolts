; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4728 () Bool)

(assert start!4728)

(declare-fun b_free!1317 () Bool)

(declare-fun b_next!1317 () Bool)

(assert (=> start!4728 (= b_free!1317 (not b_next!1317))))

(declare-fun tp!5413 () Bool)

(declare-fun b_and!2171 () Bool)

(assert (=> start!4728 (= tp!5413 b_and!2171)))

(declare-fun res!22180 () Bool)

(declare-fun e!23151 () Bool)

(assert (=> start!4728 (=> (not res!22180) (not e!23151))))

(declare-datatypes ((B!724 0))(
  ( (B!725 (val!862 Int)) )
))
(declare-datatypes ((tuple2!1388 0))(
  ( (tuple2!1389 (_1!704 (_ BitVec 64)) (_2!704 B!724)) )
))
(declare-datatypes ((List!982 0))(
  ( (Nil!979) (Cons!978 (h!1546 tuple2!1388) (t!3715 List!982)) )
))
(declare-datatypes ((ListLongMap!969 0))(
  ( (ListLongMap!970 (toList!500 List!982)) )
))
(declare-fun lm!252 () ListLongMap!969)

(declare-fun p!304 () Int)

(declare-fun forall!162 (List!982 Int) Bool)

(assert (=> start!4728 (= res!22180 (forall!162 (toList!500 lm!252) p!304))))

(assert (=> start!4728 e!23151))

(declare-fun e!23150 () Bool)

(declare-fun inv!1607 (ListLongMap!969) Bool)

(assert (=> start!4728 (and (inv!1607 lm!252) e!23150)))

(assert (=> start!4728 tp!5413))

(assert (=> start!4728 true))

(declare-fun b!36650 () Bool)

(assert (=> b!36650 (= e!23151 false)))

(declare-fun lt!13552 () Bool)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!448 (ListLongMap!969 (_ BitVec 64)) Bool)

(assert (=> b!36650 (= lt!13552 (contains!448 lm!252 k0!388))))

(declare-fun b!36651 () Bool)

(declare-fun tp!5414 () Bool)

(assert (=> b!36651 (= e!23150 tp!5414)))

(assert (= (and start!4728 res!22180) b!36650))

(assert (= start!4728 b!36651))

(declare-fun m!29549 () Bool)

(assert (=> start!4728 m!29549))

(declare-fun m!29551 () Bool)

(assert (=> start!4728 m!29551))

(declare-fun m!29553 () Bool)

(assert (=> b!36650 m!29553))

(check-sat (not start!4728) (not b!36650) b_and!2171 (not b!36651) (not b_next!1317))
(check-sat b_and!2171 (not b_next!1317))
