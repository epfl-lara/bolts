; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4714 () Bool)

(assert start!4714)

(declare-fun b_free!1303 () Bool)

(declare-fun b_next!1303 () Bool)

(assert (=> start!4714 (= b_free!1303 (not b_next!1303))))

(declare-fun tp!5372 () Bool)

(declare-fun b_and!2151 () Bool)

(assert (=> start!4714 (= tp!5372 b_and!2151)))

(declare-fun b!36535 () Bool)

(declare-fun res!22088 () Bool)

(declare-fun e!23094 () Bool)

(assert (=> b!36535 (=> (not res!22088) (not e!23094))))

(declare-datatypes ((B!710 0))(
  ( (B!711 (val!855 Int)) )
))
(declare-datatypes ((tuple2!1374 0))(
  ( (tuple2!1375 (_1!697 (_ BitVec 64)) (_2!697 B!710)) )
))
(declare-datatypes ((List!975 0))(
  ( (Nil!972) (Cons!971 (h!1539 tuple2!1374) (t!3702 List!975)) )
))
(declare-datatypes ((ListLongMap!955 0))(
  ( (ListLongMap!956 (toList!493 List!975)) )
))
(declare-fun lm!252 () ListLongMap!955)

(declare-fun isEmpty!185 (ListLongMap!955) Bool)

(assert (=> b!36535 (= res!22088 (not (isEmpty!185 lm!252)))))

(declare-fun b!36536 () Bool)

(declare-fun res!22086 () Bool)

(assert (=> b!36536 (=> (not res!22086) (not e!23094))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun head!833 (List!975) tuple2!1374)

(assert (=> b!36536 (= res!22086 (not (= (_1!697 (head!833 (toList!493 lm!252))) k!388)))))

(declare-fun b!36537 () Bool)

(declare-fun e!23092 () Bool)

(declare-fun tp!5371 () Bool)

(assert (=> b!36537 (= e!23092 tp!5371)))

(declare-fun b!36538 () Bool)

(declare-fun res!22087 () Bool)

(assert (=> b!36538 (=> (not res!22087) (not e!23094))))

(declare-fun contains!441 (ListLongMap!955 (_ BitVec 64)) Bool)

(assert (=> b!36538 (= res!22087 (contains!441 lm!252 k!388))))

(declare-fun res!22089 () Bool)

(assert (=> start!4714 (=> (not res!22089) (not e!23094))))

(declare-fun p!304 () Int)

(declare-fun forall!155 (List!975 Int) Bool)

(assert (=> start!4714 (= res!22089 (forall!155 (toList!493 lm!252) p!304))))

(assert (=> start!4714 e!23094))

(declare-fun inv!1590 (ListLongMap!955) Bool)

(assert (=> start!4714 (and (inv!1590 lm!252) e!23092)))

(assert (=> start!4714 tp!5372))

(assert (=> start!4714 true))

(declare-fun b!36539 () Bool)

(declare-fun e!23093 () Bool)

(assert (=> b!36539 (= e!23094 e!23093)))

(declare-fun res!22090 () Bool)

(assert (=> b!36539 (=> (not res!22090) (not e!23093))))

(declare-fun lt!13515 () ListLongMap!955)

(assert (=> b!36539 (= res!22090 (forall!155 (toList!493 lt!13515) p!304))))

(declare-fun tail!86 (ListLongMap!955) ListLongMap!955)

(assert (=> b!36539 (= lt!13515 (tail!86 lm!252))))

(declare-fun b!36540 () Bool)

(assert (=> b!36540 (= e!23093 false)))

(declare-fun lt!13516 () Bool)

(assert (=> b!36540 (= lt!13516 (contains!441 lt!13515 k!388))))

(assert (= (and start!4714 res!22089) b!36538))

(assert (= (and b!36538 res!22087) b!36535))

(assert (= (and b!36535 res!22088) b!36536))

(assert (= (and b!36536 res!22086) b!36539))

(assert (= (and b!36539 res!22090) b!36540))

(assert (= start!4714 b!36537))

(declare-fun m!29429 () Bool)

(assert (=> b!36538 m!29429))

(declare-fun m!29431 () Bool)

(assert (=> b!36539 m!29431))

(declare-fun m!29433 () Bool)

(assert (=> b!36539 m!29433))

(declare-fun m!29435 () Bool)

(assert (=> b!36540 m!29435))

(declare-fun m!29437 () Bool)

(assert (=> b!36536 m!29437))

(declare-fun m!29439 () Bool)

(assert (=> b!36535 m!29439))

(declare-fun m!29441 () Bool)

(assert (=> start!4714 m!29441))

(declare-fun m!29443 () Bool)

(assert (=> start!4714 m!29443))

(push 1)

(assert (not b!36536))

(assert (not b_next!1303))

(assert (not b!36537))

(assert (not b!36540))

(assert (not b!36538))

(assert b_and!2151)

(assert (not start!4714))

(assert (not b!36535))

(assert (not b!36539))

