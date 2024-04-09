; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132016 () Bool)

(assert start!132016)

(declare-fun b_free!31697 () Bool)

(declare-fun b_next!31697 () Bool)

(assert (=> start!132016 (= b_free!31697 (not b_next!31697))))

(declare-fun tp!111343 () Bool)

(declare-fun b_and!51117 () Bool)

(assert (=> start!132016 (= tp!111343 b_and!51117)))

(declare-fun mapIsEmpty!58663 () Bool)

(declare-fun mapRes!58663 () Bool)

(assert (=> mapIsEmpty!58663 mapRes!58663))

(declare-fun res!1060139 () Bool)

(declare-fun e!860585 () Bool)

(assert (=> start!132016 (=> (not res!1060139) (not e!860585))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132016 (= res!1060139 (validMask!0 mask!926))))

(assert (=> start!132016 e!860585))

(declare-datatypes ((array!103115 0))(
  ( (array!103116 (arr!49755 (Array (_ BitVec 32) (_ BitVec 64))) (size!50306 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103115)

(declare-fun array_inv!38621 (array!103115) Bool)

(assert (=> start!132016 (array_inv!38621 _keys!618)))

(declare-fun tp_is_empty!37973 () Bool)

(assert (=> start!132016 tp_is_empty!37973))

(assert (=> start!132016 true))

(assert (=> start!132016 tp!111343))

(declare-datatypes ((V!59073 0))(
  ( (V!59074 (val!19064 Int)) )
))
(declare-datatypes ((ValueCell!18076 0))(
  ( (ValueCellFull!18076 (v!21862 V!59073)) (EmptyCell!18076) )
))
(declare-datatypes ((array!103117 0))(
  ( (array!103118 (arr!49756 (Array (_ BitVec 32) ValueCell!18076)) (size!50307 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103117)

(declare-fun e!860586 () Bool)

(declare-fun array_inv!38622 (array!103117) Bool)

(assert (=> start!132016 (and (array_inv!38622 _values!470) e!860586)))

(declare-fun b!1546042 () Bool)

(declare-fun e!860587 () Bool)

(assert (=> b!1546042 (= e!860587 tp_is_empty!37973)))

(declare-fun b!1546043 () Bool)

(declare-fun e!860589 () Bool)

(assert (=> b!1546043 (= e!860589 (not true))))

(declare-datatypes ((tuple2!24654 0))(
  ( (tuple2!24655 (_1!12337 (_ BitVec 64)) (_2!12337 V!59073)) )
))
(declare-datatypes ((List!36166 0))(
  ( (Nil!36163) (Cons!36162 (h!37608 tuple2!24654) (t!50867 List!36166)) )
))
(declare-datatypes ((ListLongMap!22275 0))(
  ( (ListLongMap!22276 (toList!11153 List!36166)) )
))
(declare-fun lt!666422 () ListLongMap!22275)

(declare-fun zeroValue!436 () V!59073)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun contains!10053 (ListLongMap!22275 (_ BitVec 64)) Bool)

(declare-fun +!4881 (ListLongMap!22275 tuple2!24654) ListLongMap!22275)

(assert (=> b!1546043 (contains!10053 (+!4881 lt!666422 (tuple2!24655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49755 _keys!618) from!762))))

(declare-datatypes ((Unit!51468 0))(
  ( (Unit!51469) )
))
(declare-fun lt!666421 () Unit!51468)

(declare-fun addStillContains!1235 (ListLongMap!22275 (_ BitVec 64) V!59073 (_ BitVec 64)) Unit!51468)

(assert (=> b!1546043 (= lt!666421 (addStillContains!1235 lt!666422 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49755 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59073)

(declare-fun getCurrentListMapNoExtraKeys!6600 (array!103115 array!103117 (_ BitVec 32) (_ BitVec 32) V!59073 V!59073 (_ BitVec 32) Int) ListLongMap!22275)

(assert (=> b!1546043 (= lt!666422 (getCurrentListMapNoExtraKeys!6600 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546044 () Bool)

(declare-fun c!141699 () Bool)

(declare-fun lt!666419 () Bool)

(assert (=> b!1546044 (= c!141699 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666419))))

(declare-fun e!860593 () ListLongMap!22275)

(declare-fun e!860590 () ListLongMap!22275)

(assert (=> b!1546044 (= e!860593 e!860590)))

(declare-fun b!1546045 () Bool)

(declare-fun res!1060140 () Bool)

(assert (=> b!1546045 (=> (not res!1060140) (not e!860585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103115 (_ BitVec 32)) Bool)

(assert (=> b!1546045 (= res!1060140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546046 () Bool)

(declare-fun res!1060142 () Bool)

(assert (=> b!1546046 (=> (not res!1060142) (not e!860585))))

(assert (=> b!1546046 (= res!1060142 (and (= (size!50307 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50306 _keys!618) (size!50307 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546047 () Bool)

(declare-fun call!69454 () ListLongMap!22275)

(assert (=> b!1546047 (= e!860590 call!69454)))

(declare-fun b!1546048 () Bool)

(declare-fun res!1060141 () Bool)

(assert (=> b!1546048 (=> (not res!1060141) (not e!860589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546048 (= res!1060141 (validKeyInArray!0 (select (arr!49755 _keys!618) from!762)))))

(declare-fun b!1546049 () Bool)

(declare-fun call!69453 () ListLongMap!22275)

(assert (=> b!1546049 (= e!860590 call!69453)))

(declare-fun b!1546050 () Bool)

(assert (=> b!1546050 (= e!860586 (and e!860587 mapRes!58663))))

(declare-fun condMapEmpty!58663 () Bool)

(declare-fun mapDefault!58663 () ValueCell!18076)

