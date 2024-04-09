; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95876 () Bool)

(assert start!95876)

(declare-fun b_free!22493 () Bool)

(declare-fun b_next!22493 () Bool)

(assert (=> start!95876 (= b_free!22493 (not b_next!22493))))

(declare-fun tp!79329 () Bool)

(declare-fun b_and!35679 () Bool)

(assert (=> start!95876 (= tp!79329 b_and!35679)))

(declare-fun b!1084529 () Bool)

(declare-fun res!723119 () Bool)

(declare-fun e!619632 () Bool)

(assert (=> b!1084529 (=> (not res!723119) (not e!619632))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69892 0))(
  ( (array!69893 (arr!33616 (Array (_ BitVec 32) (_ BitVec 64))) (size!34153 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69892)

(assert (=> b!1084529 (= res!723119 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34153 _keys!1070))))))

(declare-fun b!1084530 () Bool)

(declare-fun res!723112 () Bool)

(assert (=> b!1084530 (=> (not res!723112) (not e!619632))))

(declare-datatypes ((List!23567 0))(
  ( (Nil!23564) (Cons!23563 (h!24772 (_ BitVec 64)) (t!33125 List!23567)) )
))
(declare-fun arrayNoDuplicates!0 (array!69892 (_ BitVec 32) List!23567) Bool)

(assert (=> b!1084530 (= res!723112 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23564))))

(declare-fun b!1084531 () Bool)

(declare-fun e!619633 () Bool)

(declare-fun tp_is_empty!26495 () Bool)

(assert (=> b!1084531 (= e!619633 tp_is_empty!26495)))

(declare-fun b!1084532 () Bool)

(declare-fun e!619631 () Bool)

(assert (=> b!1084532 (= e!619631 (not (bvsle #b00000000000000000000000000000000 (size!34153 _keys!1070))))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40453 0))(
  ( (V!40454 (val!13304 Int)) )
))
(declare-fun minValue!831 () V!40453)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16924 0))(
  ( (tuple2!16925 (_1!8472 (_ BitVec 64)) (_2!8472 V!40453)) )
))
(declare-datatypes ((List!23568 0))(
  ( (Nil!23565) (Cons!23564 (h!24773 tuple2!16924) (t!33126 List!23568)) )
))
(declare-datatypes ((ListLongMap!14905 0))(
  ( (ListLongMap!14906 (toList!7468 List!23568)) )
))
(declare-fun lt!480757 () ListLongMap!14905)

(declare-fun lt!480756 () array!69892)

(declare-fun zeroValue!831 () V!40453)

(declare-datatypes ((ValueCell!12538 0))(
  ( (ValueCellFull!12538 (v!15926 V!40453)) (EmptyCell!12538) )
))
(declare-datatypes ((array!69894 0))(
  ( (array!69895 (arr!33617 (Array (_ BitVec 32) ValueCell!12538)) (size!34154 (_ BitVec 32))) )
))
(declare-fun lt!480755 () array!69894)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun getCurrentListMap!4227 (array!69892 array!69894 (_ BitVec 32) (_ BitVec 32) V!40453 V!40453 (_ BitVec 32) Int) ListLongMap!14905)

(assert (=> b!1084532 (= lt!480757 (getCurrentListMap!4227 lt!480756 lt!480755 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480754 () ListLongMap!14905)

(declare-fun lt!480758 () ListLongMap!14905)

(assert (=> b!1084532 (and (= lt!480754 lt!480758) (= lt!480758 lt!480754))))

(declare-fun lt!480753 () ListLongMap!14905)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!750 (ListLongMap!14905 (_ BitVec 64)) ListLongMap!14905)

(assert (=> b!1084532 (= lt!480758 (-!750 lt!480753 k!904))))

(declare-datatypes ((Unit!35615 0))(
  ( (Unit!35616) )
))
(declare-fun lt!480752 () Unit!35615)

(declare-fun _values!874 () array!69894)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!33 (array!69892 array!69894 (_ BitVec 32) (_ BitVec 32) V!40453 V!40453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35615)

(assert (=> b!1084532 (= lt!480752 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!33 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3979 (array!69892 array!69894 (_ BitVec 32) (_ BitVec 32) V!40453 V!40453 (_ BitVec 32) Int) ListLongMap!14905)

(assert (=> b!1084532 (= lt!480754 (getCurrentListMapNoExtraKeys!3979 lt!480756 lt!480755 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2115 (Int (_ BitVec 64)) V!40453)

(assert (=> b!1084532 (= lt!480755 (array!69895 (store (arr!33617 _values!874) i!650 (ValueCellFull!12538 (dynLambda!2115 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34154 _values!874)))))

(assert (=> b!1084532 (= lt!480753 (getCurrentListMapNoExtraKeys!3979 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084532 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480751 () Unit!35615)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69892 (_ BitVec 64) (_ BitVec 32)) Unit!35615)

(assert (=> b!1084532 (= lt!480751 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084533 () Bool)

(declare-fun res!723114 () Bool)

(assert (=> b!1084533 (=> (not res!723114) (not e!619632))))

(assert (=> b!1084533 (= res!723114 (= (select (arr!33616 _keys!1070) i!650) k!904))))

(declare-fun b!1084534 () Bool)

(declare-fun res!723116 () Bool)

(assert (=> b!1084534 (=> (not res!723116) (not e!619632))))

(assert (=> b!1084534 (= res!723116 (and (= (size!34154 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34153 _keys!1070) (size!34154 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41497 () Bool)

(declare-fun mapRes!41497 () Bool)

(assert (=> mapIsEmpty!41497 mapRes!41497))

(declare-fun res!723111 () Bool)

(assert (=> start!95876 (=> (not res!723111) (not e!619632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95876 (= res!723111 (validMask!0 mask!1414))))

(assert (=> start!95876 e!619632))

(assert (=> start!95876 tp!79329))

(assert (=> start!95876 true))

(assert (=> start!95876 tp_is_empty!26495))

(declare-fun array_inv!25796 (array!69892) Bool)

(assert (=> start!95876 (array_inv!25796 _keys!1070)))

(declare-fun e!619628 () Bool)

(declare-fun array_inv!25797 (array!69894) Bool)

(assert (=> start!95876 (and (array_inv!25797 _values!874) e!619628)))

(declare-fun b!1084535 () Bool)

(declare-fun res!723113 () Bool)

(assert (=> b!1084535 (=> (not res!723113) (not e!619632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084535 (= res!723113 (validKeyInArray!0 k!904))))

(declare-fun b!1084536 () Bool)

(assert (=> b!1084536 (= e!619632 e!619631)))

(declare-fun res!723115 () Bool)

(assert (=> b!1084536 (=> (not res!723115) (not e!619631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69892 (_ BitVec 32)) Bool)

(assert (=> b!1084536 (= res!723115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480756 mask!1414))))

(assert (=> b!1084536 (= lt!480756 (array!69893 (store (arr!33616 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34153 _keys!1070)))))

(declare-fun mapNonEmpty!41497 () Bool)

(declare-fun tp!79328 () Bool)

(assert (=> mapNonEmpty!41497 (= mapRes!41497 (and tp!79328 e!619633))))

(declare-fun mapRest!41497 () (Array (_ BitVec 32) ValueCell!12538))

(declare-fun mapKey!41497 () (_ BitVec 32))

(declare-fun mapValue!41497 () ValueCell!12538)

(assert (=> mapNonEmpty!41497 (= (arr!33617 _values!874) (store mapRest!41497 mapKey!41497 mapValue!41497))))

(declare-fun b!1084537 () Bool)

(declare-fun e!619629 () Bool)

(assert (=> b!1084537 (= e!619629 tp_is_empty!26495)))

(declare-fun b!1084538 () Bool)

(assert (=> b!1084538 (= e!619628 (and e!619629 mapRes!41497))))

(declare-fun condMapEmpty!41497 () Bool)

(declare-fun mapDefault!41497 () ValueCell!12538)

