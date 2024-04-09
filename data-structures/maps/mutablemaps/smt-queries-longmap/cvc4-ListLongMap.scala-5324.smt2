; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71232 () Bool)

(assert start!71232)

(declare-fun b_free!13355 () Bool)

(declare-fun b_next!13355 () Bool)

(assert (=> start!71232 (= b_free!13355 (not b_next!13355))))

(declare-fun tp!46828 () Bool)

(declare-fun b_and!22311 () Bool)

(assert (=> start!71232 (= tp!46828 b_and!22311)))

(declare-fun b!827017 () Bool)

(declare-fun e!460692 () Bool)

(declare-fun tp_is_empty!15065 () Bool)

(assert (=> b!827017 (= e!460692 tp_is_empty!15065)))

(declare-fun b!827018 () Bool)

(declare-fun res!563839 () Bool)

(declare-fun e!460695 () Bool)

(assert (=> b!827018 (=> (not res!563839) (not e!460695))))

(declare-datatypes ((array!46268 0))(
  ( (array!46269 (arr!22174 (Array (_ BitVec 32) (_ BitVec 64))) (size!22595 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46268)

(declare-datatypes ((List!15892 0))(
  ( (Nil!15889) (Cons!15888 (h!17017 (_ BitVec 64)) (t!22249 List!15892)) )
))
(declare-fun arrayNoDuplicates!0 (array!46268 (_ BitVec 32) List!15892) Bool)

(assert (=> b!827018 (= res!563839 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15889))))

(declare-fun b!827020 () Bool)

(declare-fun res!563837 () Bool)

(assert (=> b!827020 (=> (not res!563837) (not e!460695))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46268 (_ BitVec 32)) Bool)

(assert (=> b!827020 (= res!563837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24226 () Bool)

(declare-fun mapRes!24226 () Bool)

(assert (=> mapIsEmpty!24226 mapRes!24226))

(declare-fun mapNonEmpty!24226 () Bool)

(declare-fun tp!46827 () Bool)

(declare-fun e!460696 () Bool)

(assert (=> mapNonEmpty!24226 (= mapRes!24226 (and tp!46827 e!460696))))

(declare-datatypes ((V!25087 0))(
  ( (V!25088 (val!7580 Int)) )
))
(declare-datatypes ((ValueCell!7117 0))(
  ( (ValueCellFull!7117 (v!10011 V!25087)) (EmptyCell!7117) )
))
(declare-datatypes ((array!46270 0))(
  ( (array!46271 (arr!22175 (Array (_ BitVec 32) ValueCell!7117)) (size!22596 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46270)

(declare-fun mapValue!24226 () ValueCell!7117)

(declare-fun mapKey!24226 () (_ BitVec 32))

(declare-fun mapRest!24226 () (Array (_ BitVec 32) ValueCell!7117))

(assert (=> mapNonEmpty!24226 (= (arr!22175 _values!788) (store mapRest!24226 mapKey!24226 mapValue!24226))))

(declare-fun b!827021 () Bool)

(assert (=> b!827021 (= e!460695 (not true))))

(declare-datatypes ((tuple2!10056 0))(
  ( (tuple2!10057 (_1!5038 (_ BitVec 64)) (_2!5038 V!25087)) )
))
(declare-datatypes ((List!15893 0))(
  ( (Nil!15890) (Cons!15889 (h!17018 tuple2!10056) (t!22250 List!15893)) )
))
(declare-datatypes ((ListLongMap!8893 0))(
  ( (ListLongMap!8894 (toList!4462 List!15893)) )
))
(declare-fun lt!374774 () ListLongMap!8893)

(declare-fun lt!374776 () ListLongMap!8893)

(assert (=> b!827021 (= lt!374774 lt!374776)))

(declare-fun zeroValueBefore!34 () V!25087)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!25087)

(declare-fun minValue!754 () V!25087)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28361 0))(
  ( (Unit!28362) )
))
(declare-fun lt!374775 () Unit!28361)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!585 (array!46268 array!46270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25087 V!25087 V!25087 V!25087 (_ BitVec 32) Int) Unit!28361)

(assert (=> b!827021 (= lt!374775 (lemmaNoChangeToArrayThenSameMapNoExtras!585 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2469 (array!46268 array!46270 (_ BitVec 32) (_ BitVec 32) V!25087 V!25087 (_ BitVec 32) Int) ListLongMap!8893)

(assert (=> b!827021 (= lt!374776 (getCurrentListMapNoExtraKeys!2469 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!827021 (= lt!374774 (getCurrentListMapNoExtraKeys!2469 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827019 () Bool)

(assert (=> b!827019 (= e!460696 tp_is_empty!15065)))

(declare-fun res!563836 () Bool)

(assert (=> start!71232 (=> (not res!563836) (not e!460695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71232 (= res!563836 (validMask!0 mask!1312))))

(assert (=> start!71232 e!460695))

(assert (=> start!71232 tp_is_empty!15065))

(declare-fun array_inv!17657 (array!46268) Bool)

(assert (=> start!71232 (array_inv!17657 _keys!976)))

(assert (=> start!71232 true))

(declare-fun e!460693 () Bool)

(declare-fun array_inv!17658 (array!46270) Bool)

(assert (=> start!71232 (and (array_inv!17658 _values!788) e!460693)))

(assert (=> start!71232 tp!46828))

(declare-fun b!827022 () Bool)

(assert (=> b!827022 (= e!460693 (and e!460692 mapRes!24226))))

(declare-fun condMapEmpty!24226 () Bool)

(declare-fun mapDefault!24226 () ValueCell!7117)

