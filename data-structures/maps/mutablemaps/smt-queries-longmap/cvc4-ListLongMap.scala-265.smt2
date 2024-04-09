; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4338 () Bool)

(assert start!4338)

(declare-fun b_free!1181 () Bool)

(declare-fun b_next!1181 () Bool)

(assert (=> start!4338 (= b_free!1181 (not b_next!1181))))

(declare-fun tp!4972 () Bool)

(declare-fun b_and!1999 () Bool)

(assert (=> start!4338 (= tp!4972 b_and!1999)))

(declare-fun b!33521 () Bool)

(declare-fun res!20367 () Bool)

(declare-fun e!21283 () Bool)

(assert (=> b!33521 (=> (not res!20367) (not e!21283))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33521 (= res!20367 (validKeyInArray!0 k!1304))))

(declare-fun b!33522 () Bool)

(declare-fun e!21285 () Bool)

(declare-fun tp_is_empty!1535 () Bool)

(assert (=> b!33522 (= e!21285 tp_is_empty!1535)))

(declare-fun b!33523 () Bool)

(declare-fun res!20366 () Bool)

(assert (=> b!33523 (=> (not res!20366) (not e!21283))))

(declare-datatypes ((array!2275 0))(
  ( (array!2276 (arr!1088 (Array (_ BitVec 32) (_ BitVec 64))) (size!1189 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2275)

(declare-datatypes ((List!884 0))(
  ( (Nil!881) (Cons!880 (h!1447 (_ BitVec 64)) (t!3585 List!884)) )
))
(declare-fun arrayNoDuplicates!0 (array!2275 (_ BitVec 32) List!884) Bool)

(assert (=> b!33523 (= res!20366 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!881))))

(declare-fun b!33524 () Bool)

(declare-fun e!21286 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!33524 (= e!21286 (not (or (not (= (size!1189 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))) (bvsle #b00000000000000000000000000000000 (size!1189 _keys!1833)))))))

(declare-datatypes ((SeekEntryResult!138 0))(
  ( (MissingZero!138 (index!2674 (_ BitVec 32))) (Found!138 (index!2675 (_ BitVec 32))) (Intermediate!138 (undefined!950 Bool) (index!2676 (_ BitVec 32)) (x!6830 (_ BitVec 32))) (Undefined!138) (MissingVacant!138 (index!2677 (_ BitVec 32))) )
))
(declare-fun lt!12225 () SeekEntryResult!138)

(declare-fun lt!12224 () (_ BitVec 32))

(assert (=> b!33524 (and (is-Found!138 lt!12225) (= (index!2675 lt!12225) lt!12224))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2275 (_ BitVec 32)) SeekEntryResult!138)

(assert (=> b!33524 (= lt!12225 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!748 0))(
  ( (Unit!749) )
))
(declare-fun lt!12223 () Unit!748)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2275 (_ BitVec 32)) Unit!748)

(assert (=> b!33524 (= lt!12223 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1304 lt!12224 _keys!1833 mask!2294))))

(declare-datatypes ((V!1871 0))(
  ( (V!1872 (val!794 Int)) )
))
(declare-datatypes ((tuple2!1280 0))(
  ( (tuple2!1281 (_1!650 (_ BitVec 64)) (_2!650 V!1871)) )
))
(declare-datatypes ((List!885 0))(
  ( (Nil!882) (Cons!881 (h!1448 tuple2!1280) (t!3586 List!885)) )
))
(declare-datatypes ((ListLongMap!861 0))(
  ( (ListLongMap!862 (toList!446 List!885)) )
))
(declare-fun lt!12226 () ListLongMap!861)

(declare-fun contains!386 (ListLongMap!861 (_ BitVec 64)) Bool)

(assert (=> b!33524 (contains!386 lt!12226 (select (arr!1088 _keys!1833) lt!12224))))

(declare-fun lt!12222 () Unit!748)

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!568 0))(
  ( (ValueCellFull!568 (v!1886 V!1871)) (EmptyCell!568) )
))
(declare-datatypes ((array!2277 0))(
  ( (array!2278 (arr!1089 (Array (_ BitVec 32) ValueCell!568)) (size!1190 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2277)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1871)

(declare-fun minValue!1443 () V!1871)

(declare-fun lemmaValidKeyInArrayIsInListMap!60 (array!2275 array!2277 (_ BitVec 32) (_ BitVec 32) V!1871 V!1871 (_ BitVec 32) Int) Unit!748)

(assert (=> b!33524 (= lt!12222 (lemmaValidKeyInArrayIsInListMap!60 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12224 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2275 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33524 (= lt!12224 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33525 () Bool)

(declare-fun res!20368 () Bool)

(assert (=> b!33525 (=> (not res!20368) (not e!21286))))

(declare-fun arrayContainsKey!0 (array!2275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33525 (= res!20368 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33526 () Bool)

(declare-fun e!21284 () Bool)

(assert (=> b!33526 (= e!21284 tp_is_empty!1535)))

(declare-fun mapNonEmpty!1840 () Bool)

(declare-fun mapRes!1840 () Bool)

(declare-fun tp!4971 () Bool)

(assert (=> mapNonEmpty!1840 (= mapRes!1840 (and tp!4971 e!21284))))

(declare-fun mapKey!1840 () (_ BitVec 32))

(declare-fun mapValue!1840 () ValueCell!568)

(declare-fun mapRest!1840 () (Array (_ BitVec 32) ValueCell!568))

(assert (=> mapNonEmpty!1840 (= (arr!1089 _values!1501) (store mapRest!1840 mapKey!1840 mapValue!1840))))

(declare-fun b!33527 () Bool)

(declare-fun res!20371 () Bool)

(assert (=> b!33527 (=> (not res!20371) (not e!21283))))

(assert (=> b!33527 (= res!20371 (and (= (size!1190 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1189 _keys!1833) (size!1190 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33528 () Bool)

(declare-fun res!20372 () Bool)

(assert (=> b!33528 (=> (not res!20372) (not e!21283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2275 (_ BitVec 32)) Bool)

(assert (=> b!33528 (= res!20372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1840 () Bool)

(assert (=> mapIsEmpty!1840 mapRes!1840))

(declare-fun res!20370 () Bool)

(assert (=> start!4338 (=> (not res!20370) (not e!21283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4338 (= res!20370 (validMask!0 mask!2294))))

(assert (=> start!4338 e!21283))

(assert (=> start!4338 true))

(assert (=> start!4338 tp!4972))

(declare-fun e!21287 () Bool)

(declare-fun array_inv!725 (array!2277) Bool)

(assert (=> start!4338 (and (array_inv!725 _values!1501) e!21287)))

(declare-fun array_inv!726 (array!2275) Bool)

(assert (=> start!4338 (array_inv!726 _keys!1833)))

(assert (=> start!4338 tp_is_empty!1535))

(declare-fun b!33529 () Bool)

(assert (=> b!33529 (= e!21287 (and e!21285 mapRes!1840))))

(declare-fun condMapEmpty!1840 () Bool)

(declare-fun mapDefault!1840 () ValueCell!568)

