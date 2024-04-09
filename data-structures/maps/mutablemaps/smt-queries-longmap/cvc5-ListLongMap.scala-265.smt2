; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4334 () Bool)

(assert start!4334)

(declare-fun b_free!1177 () Bool)

(declare-fun b_next!1177 () Bool)

(assert (=> start!4334 (= b_free!1177 (not b_next!1177))))

(declare-fun tp!4960 () Bool)

(declare-fun b_and!1995 () Bool)

(assert (=> start!4334 (= tp!4960 b_and!1995)))

(declare-fun b!33461 () Bool)

(declare-fun res!20324 () Bool)

(declare-fun e!21250 () Bool)

(assert (=> b!33461 (=> (not res!20324) (not e!21250))))

(declare-datatypes ((V!1867 0))(
  ( (V!1868 (val!792 Int)) )
))
(declare-datatypes ((ValueCell!566 0))(
  ( (ValueCellFull!566 (v!1884 V!1867)) (EmptyCell!566) )
))
(declare-datatypes ((array!2267 0))(
  ( (array!2268 (arr!1084 (Array (_ BitVec 32) ValueCell!566)) (size!1185 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2267)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2269 0))(
  ( (array!2270 (arr!1085 (Array (_ BitVec 32) (_ BitVec 64))) (size!1186 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2269)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!33461 (= res!20324 (and (= (size!1185 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1186 _keys!1833) (size!1185 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1834 () Bool)

(declare-fun mapRes!1834 () Bool)

(assert (=> mapIsEmpty!1834 mapRes!1834))

(declare-fun b!33462 () Bool)

(declare-fun e!21249 () Bool)

(assert (=> b!33462 (= e!21250 e!21249)))

(declare-fun res!20325 () Bool)

(assert (=> b!33462 (=> (not res!20325) (not e!21249))))

(declare-datatypes ((tuple2!1276 0))(
  ( (tuple2!1277 (_1!648 (_ BitVec 64)) (_2!648 V!1867)) )
))
(declare-datatypes ((List!880 0))(
  ( (Nil!877) (Cons!876 (h!1443 tuple2!1276) (t!3581 List!880)) )
))
(declare-datatypes ((ListLongMap!857 0))(
  ( (ListLongMap!858 (toList!444 List!880)) )
))
(declare-fun lt!12192 () ListLongMap!857)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!384 (ListLongMap!857 (_ BitVec 64)) Bool)

(assert (=> b!33462 (= res!20325 (not (contains!384 lt!12192 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1867)

(declare-fun minValue!1443 () V!1867)

(declare-fun getCurrentListMap!268 (array!2269 array!2267 (_ BitVec 32) (_ BitVec 32) V!1867 V!1867 (_ BitVec 32) Int) ListLongMap!857)

(assert (=> b!33462 (= lt!12192 (getCurrentListMap!268 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun res!20326 () Bool)

(assert (=> start!4334 (=> (not res!20326) (not e!21250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4334 (= res!20326 (validMask!0 mask!2294))))

(assert (=> start!4334 e!21250))

(assert (=> start!4334 true))

(assert (=> start!4334 tp!4960))

(declare-fun e!21252 () Bool)

(declare-fun array_inv!721 (array!2267) Bool)

(assert (=> start!4334 (and (array_inv!721 _values!1501) e!21252)))

(declare-fun array_inv!722 (array!2269) Bool)

(assert (=> start!4334 (array_inv!722 _keys!1833)))

(declare-fun tp_is_empty!1531 () Bool)

(assert (=> start!4334 tp_is_empty!1531))

(declare-fun mapNonEmpty!1834 () Bool)

(declare-fun tp!4959 () Bool)

(declare-fun e!21247 () Bool)

(assert (=> mapNonEmpty!1834 (= mapRes!1834 (and tp!4959 e!21247))))

(declare-fun mapRest!1834 () (Array (_ BitVec 32) ValueCell!566))

(declare-fun mapValue!1834 () ValueCell!566)

(declare-fun mapKey!1834 () (_ BitVec 32))

(assert (=> mapNonEmpty!1834 (= (arr!1084 _values!1501) (store mapRest!1834 mapKey!1834 mapValue!1834))))

(declare-fun b!33463 () Bool)

(declare-fun e!21251 () Bool)

(assert (=> b!33463 (= e!21251 tp_is_empty!1531)))

(declare-fun b!33464 () Bool)

(assert (=> b!33464 (= e!21249 (not (or (not (= (size!1186 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))) (bvsle #b00000000000000000000000000000000 (size!1186 _keys!1833)))))))

(declare-datatypes ((SeekEntryResult!136 0))(
  ( (MissingZero!136 (index!2666 (_ BitVec 32))) (Found!136 (index!2667 (_ BitVec 32))) (Intermediate!136 (undefined!948 Bool) (index!2668 (_ BitVec 32)) (x!6828 (_ BitVec 32))) (Undefined!136) (MissingVacant!136 (index!2669 (_ BitVec 32))) )
))
(declare-fun lt!12196 () SeekEntryResult!136)

(declare-fun lt!12193 () (_ BitVec 32))

(assert (=> b!33464 (and (is-Found!136 lt!12196) (= (index!2667 lt!12196) lt!12193))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2269 (_ BitVec 32)) SeekEntryResult!136)

(assert (=> b!33464 (= lt!12196 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!744 0))(
  ( (Unit!745) )
))
(declare-fun lt!12195 () Unit!744)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2269 (_ BitVec 32)) Unit!744)

(assert (=> b!33464 (= lt!12195 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12193 _keys!1833 mask!2294))))

(assert (=> b!33464 (contains!384 lt!12192 (select (arr!1085 _keys!1833) lt!12193))))

(declare-fun lt!12194 () Unit!744)

(declare-fun lemmaValidKeyInArrayIsInListMap!58 (array!2269 array!2267 (_ BitVec 32) (_ BitVec 32) V!1867 V!1867 (_ BitVec 32) Int) Unit!744)

(assert (=> b!33464 (= lt!12194 (lemmaValidKeyInArrayIsInListMap!58 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12193 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2269 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33464 (= lt!12193 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33465 () Bool)

(declare-fun res!20330 () Bool)

(assert (=> b!33465 (=> (not res!20330) (not e!21250))))

(declare-datatypes ((List!881 0))(
  ( (Nil!878) (Cons!877 (h!1444 (_ BitVec 64)) (t!3582 List!881)) )
))
(declare-fun arrayNoDuplicates!0 (array!2269 (_ BitVec 32) List!881) Bool)

(assert (=> b!33465 (= res!20330 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!878))))

(declare-fun b!33466 () Bool)

(declare-fun res!20329 () Bool)

(assert (=> b!33466 (=> (not res!20329) (not e!21249))))

(declare-fun arrayContainsKey!0 (array!2269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33466 (= res!20329 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33467 () Bool)

(declare-fun res!20327 () Bool)

(assert (=> b!33467 (=> (not res!20327) (not e!21250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33467 (= res!20327 (validKeyInArray!0 k!1304))))

(declare-fun b!33468 () Bool)

(assert (=> b!33468 (= e!21252 (and e!21251 mapRes!1834))))

(declare-fun condMapEmpty!1834 () Bool)

(declare-fun mapDefault!1834 () ValueCell!566)

