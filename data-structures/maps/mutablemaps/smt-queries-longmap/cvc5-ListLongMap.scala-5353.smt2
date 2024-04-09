; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71716 () Bool)

(assert start!71716)

(declare-fun b_free!13525 () Bool)

(declare-fun b_next!13525 () Bool)

(assert (=> start!71716 (= b_free!13525 (not b_next!13525))))

(declare-fun tp!47371 () Bool)

(declare-fun b_and!22629 () Bool)

(assert (=> start!71716 (= tp!47371 b_and!22629)))

(declare-fun mapNonEmpty!24515 () Bool)

(declare-fun mapRes!24515 () Bool)

(declare-fun tp!47372 () Bool)

(declare-fun e!465095 () Bool)

(assert (=> mapNonEmpty!24515 (= mapRes!24515 (and tp!47372 e!465095))))

(declare-fun mapKey!24515 () (_ BitVec 32))

(declare-datatypes ((V!25315 0))(
  ( (V!25316 (val!7665 Int)) )
))
(declare-datatypes ((ValueCell!7202 0))(
  ( (ValueCellFull!7202 (v!10109 V!25315)) (EmptyCell!7202) )
))
(declare-datatypes ((array!46614 0))(
  ( (array!46615 (arr!22337 (Array (_ BitVec 32) ValueCell!7202)) (size!22758 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46614)

(declare-fun mapRest!24515 () (Array (_ BitVec 32) ValueCell!7202))

(declare-fun mapValue!24515 () ValueCell!7202)

(assert (=> mapNonEmpty!24515 (= (arr!22337 _values!788) (store mapRest!24515 mapKey!24515 mapValue!24515))))

(declare-fun b!833608 () Bool)

(declare-fun res!566954 () Bool)

(declare-fun e!465093 () Bool)

(assert (=> b!833608 (=> (not res!566954) (not e!465093))))

(declare-datatypes ((array!46616 0))(
  ( (array!46617 (arr!22338 (Array (_ BitVec 32) (_ BitVec 64))) (size!22759 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46616)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46616 (_ BitVec 32)) Bool)

(assert (=> b!833608 (= res!566954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833609 () Bool)

(declare-fun e!465090 () Bool)

(assert (=> b!833609 (= e!465093 (not e!465090))))

(declare-fun res!566952 () Bool)

(assert (=> b!833609 (=> res!566952 e!465090)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833609 (= res!566952 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10198 0))(
  ( (tuple2!10199 (_1!5109 (_ BitVec 64)) (_2!5109 V!25315)) )
))
(declare-datatypes ((List!16024 0))(
  ( (Nil!16021) (Cons!16020 (h!17151 tuple2!10198) (t!22403 List!16024)) )
))
(declare-datatypes ((ListLongMap!9035 0))(
  ( (ListLongMap!9036 (toList!4533 List!16024)) )
))
(declare-fun lt!378496 () ListLongMap!9035)

(declare-fun lt!378494 () ListLongMap!9035)

(assert (=> b!833609 (= lt!378496 lt!378494)))

(declare-fun zeroValueBefore!34 () V!25315)

(declare-fun zeroValueAfter!34 () V!25315)

(declare-fun minValue!754 () V!25315)

(declare-datatypes ((Unit!28573 0))(
  ( (Unit!28574) )
))
(declare-fun lt!378491 () Unit!28573)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!621 (array!46616 array!46614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25315 V!25315 V!25315 V!25315 (_ BitVec 32) Int) Unit!28573)

(assert (=> b!833609 (= lt!378491 (lemmaNoChangeToArrayThenSameMapNoExtras!621 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2531 (array!46616 array!46614 (_ BitVec 32) (_ BitVec 32) V!25315 V!25315 (_ BitVec 32) Int) ListLongMap!9035)

(assert (=> b!833609 (= lt!378494 (getCurrentListMapNoExtraKeys!2531 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833609 (= lt!378496 (getCurrentListMapNoExtraKeys!2531 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24515 () Bool)

(assert (=> mapIsEmpty!24515 mapRes!24515))

(declare-fun lt!378488 () ListLongMap!9035)

(declare-fun lt!378497 () tuple2!10198)

(declare-fun lt!378490 () tuple2!10198)

(declare-fun e!465091 () Bool)

(declare-fun b!833610 () Bool)

(declare-fun +!1961 (ListLongMap!9035 tuple2!10198) ListLongMap!9035)

(assert (=> b!833610 (= e!465091 (= lt!378488 (+!1961 (+!1961 lt!378494 lt!378497) lt!378490)))))

(declare-fun b!833611 () Bool)

(declare-fun tp_is_empty!15235 () Bool)

(assert (=> b!833611 (= e!465095 tp_is_empty!15235)))

(declare-fun b!833612 () Bool)

(declare-fun e!465096 () Bool)

(declare-fun e!465094 () Bool)

(assert (=> b!833612 (= e!465096 (and e!465094 mapRes!24515))))

(declare-fun condMapEmpty!24515 () Bool)

(declare-fun mapDefault!24515 () ValueCell!7202)

