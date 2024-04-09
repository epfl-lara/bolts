; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4710 () Bool)

(assert start!4710)

(declare-fun b_free!1299 () Bool)

(declare-fun b_next!1299 () Bool)

(assert (=> start!4710 (= b_free!1299 (not b_next!1299))))

(declare-fun tp!5359 () Bool)

(declare-fun b_and!2147 () Bool)

(assert (=> start!4710 (= tp!5359 b_and!2147)))

(declare-fun res!22072 () Bool)

(declare-fun e!23079 () Bool)

(assert (=> start!4710 (=> (not res!22072) (not e!23079))))

(declare-datatypes ((B!706 0))(
  ( (B!707 (val!853 Int)) )
))
(declare-datatypes ((tuple2!1370 0))(
  ( (tuple2!1371 (_1!695 (_ BitVec 64)) (_2!695 B!706)) )
))
(declare-datatypes ((List!973 0))(
  ( (Nil!970) (Cons!969 (h!1537 tuple2!1370) (t!3700 List!973)) )
))
(declare-datatypes ((ListLongMap!951 0))(
  ( (ListLongMap!952 (toList!491 List!973)) )
))
(declare-fun lm!252 () ListLongMap!951)

(declare-fun p!304 () Int)

(declare-fun forall!153 (List!973 Int) Bool)

(assert (=> start!4710 (= res!22072 (forall!153 (toList!491 lm!252) p!304))))

(assert (=> start!4710 e!23079))

(declare-fun e!23078 () Bool)

(declare-fun inv!1583 (ListLongMap!951) Bool)

(assert (=> start!4710 (and (inv!1583 lm!252) e!23078)))

(assert (=> start!4710 tp!5359))

(assert (=> start!4710 true))

(declare-fun b!36515 () Bool)

(assert (=> b!36515 (= e!23079 false)))

(declare-fun lt!13507 () Bool)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!439 (ListLongMap!951 (_ BitVec 64)) Bool)

(assert (=> b!36515 (= lt!13507 (contains!439 lm!252 k0!388))))

(declare-fun b!36516 () Bool)

(declare-fun tp!5360 () Bool)

(assert (=> b!36516 (= e!23078 tp!5360)))

(assert (= (and start!4710 res!22072) b!36515))

(assert (= start!4710 b!36516))

(declare-fun m!29417 () Bool)

(assert (=> start!4710 m!29417))

(declare-fun m!29419 () Bool)

(assert (=> start!4710 m!29419))

(declare-fun m!29421 () Bool)

(assert (=> b!36515 m!29421))

(check-sat (not start!4710) (not b!36515) (not b!36516) b_and!2147 (not b_next!1299))
(check-sat b_and!2147 (not b_next!1299))
