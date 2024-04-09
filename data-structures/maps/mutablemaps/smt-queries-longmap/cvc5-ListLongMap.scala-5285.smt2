; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70904 () Bool)

(assert start!70904)

(declare-fun b_free!13117 () Bool)

(declare-fun b_next!13117 () Bool)

(assert (=> start!70904 (= b_free!13117 (not b_next!13117))))

(declare-fun tp!46098 () Bool)

(declare-fun b_and!22019 () Bool)

(assert (=> start!70904 (= tp!46098 b_and!22019)))

(declare-fun b!823100 () Bool)

(declare-fun res!561440 () Bool)

(declare-fun e!457798 () Bool)

(assert (=> b!823100 (=> (not res!561440) (not e!457798))))

(declare-datatypes ((array!45806 0))(
  ( (array!45807 (arr!21948 (Array (_ BitVec 32) (_ BitVec 64))) (size!22369 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45806)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45806 (_ BitVec 32)) Bool)

(assert (=> b!823100 (= res!561440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823101 () Bool)

(declare-fun res!561441 () Bool)

(assert (=> b!823101 (=> (not res!561441) (not e!457798))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24771 0))(
  ( (V!24772 (val!7461 Int)) )
))
(declare-datatypes ((ValueCell!6998 0))(
  ( (ValueCellFull!6998 (v!9889 V!24771)) (EmptyCell!6998) )
))
(declare-datatypes ((array!45808 0))(
  ( (array!45809 (arr!21949 (Array (_ BitVec 32) ValueCell!6998)) (size!22370 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45808)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823101 (= res!561441 (and (= (size!22370 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22369 _keys!976) (size!22370 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823102 () Bool)

(declare-fun e!457796 () Bool)

(assert (=> b!823102 (= e!457798 (not e!457796))))

(declare-fun res!561443 () Bool)

(assert (=> b!823102 (=> res!561443 e!457796)))

(assert (=> b!823102 (= res!561443 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9858 0))(
  ( (tuple2!9859 (_1!4939 (_ BitVec 64)) (_2!4939 V!24771)) )
))
(declare-datatypes ((List!15716 0))(
  ( (Nil!15713) (Cons!15712 (h!16841 tuple2!9858) (t!22063 List!15716)) )
))
(declare-datatypes ((ListLongMap!8695 0))(
  ( (ListLongMap!8696 (toList!4363 List!15716)) )
))
(declare-fun lt!371013 () ListLongMap!8695)

(declare-fun lt!371015 () ListLongMap!8695)

(assert (=> b!823102 (= lt!371013 lt!371015)))

(declare-fun zeroValueBefore!34 () V!24771)

(declare-fun zeroValueAfter!34 () V!24771)

(declare-fun minValue!754 () V!24771)

(declare-datatypes ((Unit!28170 0))(
  ( (Unit!28171) )
))
(declare-fun lt!371009 () Unit!28170)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!501 (array!45806 array!45808 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24771 V!24771 V!24771 V!24771 (_ BitVec 32) Int) Unit!28170)

(assert (=> b!823102 (= lt!371009 (lemmaNoChangeToArrayThenSameMapNoExtras!501 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2385 (array!45806 array!45808 (_ BitVec 32) (_ BitVec 32) V!24771 V!24771 (_ BitVec 32) Int) ListLongMap!8695)

(assert (=> b!823102 (= lt!371015 (getCurrentListMapNoExtraKeys!2385 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823102 (= lt!371013 (getCurrentListMapNoExtraKeys!2385 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823103 () Bool)

(assert (=> b!823103 (= e!457796 true)))

(declare-fun lt!371011 () ListLongMap!8695)

(declare-fun lt!371008 () ListLongMap!8695)

(declare-fun lt!371014 () tuple2!9858)

(declare-fun +!1865 (ListLongMap!8695 tuple2!9858) ListLongMap!8695)

(assert (=> b!823103 (= lt!371011 (+!1865 lt!371008 lt!371014))))

(declare-fun lt!371017 () Unit!28170)

(declare-fun addCommutativeForDiffKeys!460 (ListLongMap!8695 (_ BitVec 64) V!24771 (_ BitVec 64) V!24771) Unit!28170)

(assert (=> b!823103 (= lt!371017 (addCommutativeForDiffKeys!460 lt!371013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371016 () ListLongMap!8695)

(assert (=> b!823103 (= lt!371016 lt!371011)))

(declare-fun lt!371010 () tuple2!9858)

(assert (=> b!823103 (= lt!371011 (+!1865 (+!1865 lt!371013 lt!371014) lt!371010))))

(assert (=> b!823103 (= lt!371014 (tuple2!9859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371012 () ListLongMap!8695)

(assert (=> b!823103 (= lt!371012 lt!371008)))

(assert (=> b!823103 (= lt!371008 (+!1865 lt!371013 lt!371010))))

(assert (=> b!823103 (= lt!371010 (tuple2!9859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2495 (array!45806 array!45808 (_ BitVec 32) (_ BitVec 32) V!24771 V!24771 (_ BitVec 32) Int) ListLongMap!8695)

(assert (=> b!823103 (= lt!371016 (getCurrentListMap!2495 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823103 (= lt!371012 (getCurrentListMap!2495 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561444 () Bool)

(assert (=> start!70904 (=> (not res!561444) (not e!457798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70904 (= res!561444 (validMask!0 mask!1312))))

(assert (=> start!70904 e!457798))

(declare-fun tp_is_empty!14827 () Bool)

(assert (=> start!70904 tp_is_empty!14827))

(declare-fun array_inv!17493 (array!45806) Bool)

(assert (=> start!70904 (array_inv!17493 _keys!976)))

(assert (=> start!70904 true))

(declare-fun e!457793 () Bool)

(declare-fun array_inv!17494 (array!45808) Bool)

(assert (=> start!70904 (and (array_inv!17494 _values!788) e!457793)))

(assert (=> start!70904 tp!46098))

(declare-fun mapNonEmpty!23854 () Bool)

(declare-fun mapRes!23854 () Bool)

(declare-fun tp!46099 () Bool)

(declare-fun e!457795 () Bool)

(assert (=> mapNonEmpty!23854 (= mapRes!23854 (and tp!46099 e!457795))))

(declare-fun mapValue!23854 () ValueCell!6998)

(declare-fun mapKey!23854 () (_ BitVec 32))

(declare-fun mapRest!23854 () (Array (_ BitVec 32) ValueCell!6998))

(assert (=> mapNonEmpty!23854 (= (arr!21949 _values!788) (store mapRest!23854 mapKey!23854 mapValue!23854))))

(declare-fun b!823104 () Bool)

(declare-fun res!561442 () Bool)

(assert (=> b!823104 (=> (not res!561442) (not e!457798))))

(declare-datatypes ((List!15717 0))(
  ( (Nil!15714) (Cons!15713 (h!16842 (_ BitVec 64)) (t!22064 List!15717)) )
))
(declare-fun arrayNoDuplicates!0 (array!45806 (_ BitVec 32) List!15717) Bool)

(assert (=> b!823104 (= res!561442 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15714))))

(declare-fun b!823105 () Bool)

(assert (=> b!823105 (= e!457795 tp_is_empty!14827)))

(declare-fun b!823106 () Bool)

(declare-fun e!457794 () Bool)

(assert (=> b!823106 (= e!457793 (and e!457794 mapRes!23854))))

(declare-fun condMapEmpty!23854 () Bool)

(declare-fun mapDefault!23854 () ValueCell!6998)

