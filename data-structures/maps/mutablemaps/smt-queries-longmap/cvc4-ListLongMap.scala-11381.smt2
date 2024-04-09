; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132288 () Bool)

(assert start!132288)

(declare-fun b_free!31907 () Bool)

(declare-fun b_next!31907 () Bool)

(assert (=> start!132288 (= b_free!31907 (not b_next!31907))))

(declare-fun tp!111982 () Bool)

(declare-fun b_and!51351 () Bool)

(assert (=> start!132288 (= tp!111982 b_and!51351)))

(declare-fun b!1551534 () Bool)

(declare-fun res!1062549 () Bool)

(declare-fun e!863731 () Bool)

(assert (=> b!1551534 (=> (not res!1062549) (not e!863731))))

(declare-datatypes ((array!103523 0))(
  ( (array!103524 (arr!49956 (Array (_ BitVec 32) (_ BitVec 64))) (size!50507 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103523)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103523 (_ BitVec 32)) Bool)

(assert (=> b!1551534 (= res!1062549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551535 () Bool)

(declare-datatypes ((V!59353 0))(
  ( (V!59354 (val!19169 Int)) )
))
(declare-datatypes ((tuple2!24854 0))(
  ( (tuple2!24855 (_1!12437 (_ BitVec 64)) (_2!12437 V!59353)) )
))
(declare-datatypes ((List!36337 0))(
  ( (Nil!36334) (Cons!36333 (h!37779 tuple2!24854) (t!51056 List!36337)) )
))
(declare-datatypes ((ListLongMap!22475 0))(
  ( (ListLongMap!22476 (toList!11253 List!36337)) )
))
(declare-fun e!863737 () ListLongMap!22475)

(declare-fun call!71063 () ListLongMap!22475)

(assert (=> b!1551535 (= e!863737 call!71063)))

(declare-fun b!1551536 () Bool)

(declare-fun e!863733 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1551536 (= e!863733 (not (= (select (arr!49956 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1551537 () Bool)

(declare-fun e!863729 () ListLongMap!22475)

(declare-fun call!71064 () ListLongMap!22475)

(declare-fun minValue!436 () V!59353)

(declare-fun +!4960 (ListLongMap!22475 tuple2!24854) ListLongMap!22475)

(assert (=> b!1551537 (= e!863729 (+!4960 call!71064 (tuple2!24855 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71060 () Bool)

(declare-fun call!71067 () ListLongMap!22475)

(declare-fun call!71066 () ListLongMap!22475)

(assert (=> bm!71060 (= call!71067 call!71066)))

(declare-fun b!1551538 () Bool)

(declare-fun res!1062551 () Bool)

(assert (=> b!1551538 (=> (not res!1062551) (not e!863731))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18181 0))(
  ( (ValueCellFull!18181 (v!21970 V!59353)) (EmptyCell!18181) )
))
(declare-datatypes ((array!103525 0))(
  ( (array!103526 (arr!49957 (Array (_ BitVec 32) ValueCell!18181)) (size!50508 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103525)

(assert (=> b!1551538 (= res!1062551 (and (= (size!50508 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50507 _keys!618) (size!50508 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551539 () Bool)

(declare-fun e!863730 () Bool)

(declare-fun e!863738 () Bool)

(declare-fun mapRes!58987 () Bool)

(assert (=> b!1551539 (= e!863730 (and e!863738 mapRes!58987))))

(declare-fun condMapEmpty!58987 () Bool)

(declare-fun mapDefault!58987 () ValueCell!18181)

