; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131934 () Bool)

(assert start!131934)

(declare-fun b_free!31615 () Bool)

(declare-fun b_next!31615 () Bool)

(assert (=> start!131934 (= b_free!31615 (not b_next!31615))))

(declare-fun tp!111098 () Bool)

(declare-fun b_and!51035 () Bool)

(assert (=> start!131934 (= tp!111098 b_and!51035)))

(declare-fun res!1059379 () Bool)

(declare-fun e!859535 () Bool)

(assert (=> start!131934 (=> (not res!1059379) (not e!859535))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131934 (= res!1059379 (validMask!0 mask!926))))

(assert (=> start!131934 e!859535))

(declare-datatypes ((array!102955 0))(
  ( (array!102956 (arr!49675 (Array (_ BitVec 32) (_ BitVec 64))) (size!50226 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102955)

(declare-fun array_inv!38565 (array!102955) Bool)

(assert (=> start!131934 (array_inv!38565 _keys!618)))

(declare-fun tp_is_empty!37891 () Bool)

(assert (=> start!131934 tp_is_empty!37891))

(assert (=> start!131934 true))

(assert (=> start!131934 tp!111098))

(declare-datatypes ((V!58965 0))(
  ( (V!58966 (val!19023 Int)) )
))
(declare-datatypes ((ValueCell!18035 0))(
  ( (ValueCellFull!18035 (v!21821 V!58965)) (EmptyCell!18035) )
))
(declare-datatypes ((array!102957 0))(
  ( (array!102958 (arr!49676 (Array (_ BitVec 32) ValueCell!18035)) (size!50227 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102957)

(declare-fun e!859531 () Bool)

(declare-fun array_inv!38566 (array!102957) Bool)

(assert (=> start!131934 (and (array_inv!38566 _values!470) e!859531)))

(declare-fun b!1544178 () Bool)

(declare-fun c!141332 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666040 () Bool)

(assert (=> b!1544178 (= c!141332 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666040))))

(declare-datatypes ((tuple2!24576 0))(
  ( (tuple2!24577 (_1!12298 (_ BitVec 64)) (_2!12298 V!58965)) )
))
(declare-datatypes ((List!36098 0))(
  ( (Nil!36095) (Cons!36094 (h!37540 tuple2!24576) (t!50799 List!36098)) )
))
(declare-datatypes ((ListLongMap!22197 0))(
  ( (ListLongMap!22198 (toList!11114 List!36098)) )
))
(declare-fun e!859537 () ListLongMap!22197)

(declare-fun e!859532 () ListLongMap!22197)

(assert (=> b!1544178 (= e!859537 e!859532)))

(declare-fun b!1544179 () Bool)

(declare-fun res!1059380 () Bool)

(assert (=> b!1544179 (=> (not res!1059380) (not e!859535))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1544179 (= res!1059380 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50226 _keys!618))))))

(declare-fun zeroValue!436 () V!58965)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68834 () Bool)

(declare-fun call!68837 () ListLongMap!22197)

(declare-fun minValue!436 () V!58965)

(declare-fun getCurrentListMapNoExtraKeys!6564 (array!102955 array!102957 (_ BitVec 32) (_ BitVec 32) V!58965 V!58965 (_ BitVec 32) Int) ListLongMap!22197)

(assert (=> bm!68834 (= call!68837 (getCurrentListMapNoExtraKeys!6564 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544180 () Bool)

(declare-fun e!859534 () Bool)

(declare-fun mapRes!58540 () Bool)

(assert (=> b!1544180 (= e!859531 (and e!859534 mapRes!58540))))

(declare-fun condMapEmpty!58540 () Bool)

(declare-fun mapDefault!58540 () ValueCell!18035)

