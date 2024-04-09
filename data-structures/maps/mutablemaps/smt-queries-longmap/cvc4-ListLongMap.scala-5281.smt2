; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70884 () Bool)

(assert start!70884)

(declare-fun b_free!13097 () Bool)

(declare-fun b_next!13097 () Bool)

(assert (=> start!70884 (= b_free!13097 (not b_next!13097))))

(declare-fun tp!46038 () Bool)

(declare-fun b_and!21999 () Bool)

(assert (=> start!70884 (= tp!46038 b_and!21999)))

(declare-fun b!822860 () Bool)

(declare-fun e!457618 () Bool)

(declare-fun tp_is_empty!14807 () Bool)

(assert (=> b!822860 (= e!457618 tp_is_empty!14807)))

(declare-fun b!822861 () Bool)

(declare-fun res!561293 () Bool)

(declare-fun e!457617 () Bool)

(assert (=> b!822861 (=> (not res!561293) (not e!457617))))

(declare-datatypes ((array!45768 0))(
  ( (array!45769 (arr!21929 (Array (_ BitVec 32) (_ BitVec 64))) (size!22350 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45768)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45768 (_ BitVec 32)) Bool)

(assert (=> b!822861 (= res!561293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23824 () Bool)

(declare-fun mapRes!23824 () Bool)

(assert (=> mapIsEmpty!23824 mapRes!23824))

(declare-fun res!561291 () Bool)

(assert (=> start!70884 (=> (not res!561291) (not e!457617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70884 (= res!561291 (validMask!0 mask!1312))))

(assert (=> start!70884 e!457617))

(assert (=> start!70884 tp_is_empty!14807))

(declare-fun array_inv!17483 (array!45768) Bool)

(assert (=> start!70884 (array_inv!17483 _keys!976)))

(assert (=> start!70884 true))

(declare-datatypes ((V!24743 0))(
  ( (V!24744 (val!7451 Int)) )
))
(declare-datatypes ((ValueCell!6988 0))(
  ( (ValueCellFull!6988 (v!9879 V!24743)) (EmptyCell!6988) )
))
(declare-datatypes ((array!45770 0))(
  ( (array!45771 (arr!21930 (Array (_ BitVec 32) ValueCell!6988)) (size!22351 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45770)

(declare-fun e!457615 () Bool)

(declare-fun array_inv!17484 (array!45770) Bool)

(assert (=> start!70884 (and (array_inv!17484 _values!788) e!457615)))

(assert (=> start!70884 tp!46038))

(declare-fun b!822862 () Bool)

(declare-fun e!457613 () Bool)

(assert (=> b!822862 (= e!457613 true)))

(declare-datatypes ((tuple2!9840 0))(
  ( (tuple2!9841 (_1!4930 (_ BitVec 64)) (_2!4930 V!24743)) )
))
(declare-datatypes ((List!15699 0))(
  ( (Nil!15696) (Cons!15695 (h!16824 tuple2!9840) (t!22046 List!15699)) )
))
(declare-datatypes ((ListLongMap!8677 0))(
  ( (ListLongMap!8678 (toList!4354 List!15699)) )
))
(declare-fun lt!370716 () ListLongMap!8677)

(declare-fun lt!370709 () ListLongMap!8677)

(declare-fun lt!370715 () tuple2!9840)

(declare-fun +!1856 (ListLongMap!8677 tuple2!9840) ListLongMap!8677)

(assert (=> b!822862 (= lt!370716 (+!1856 lt!370709 lt!370715))))

(declare-datatypes ((Unit!28152 0))(
  ( (Unit!28153) )
))
(declare-fun lt!370708 () Unit!28152)

(declare-fun zeroValueAfter!34 () V!24743)

(declare-fun minValue!754 () V!24743)

(declare-fun lt!370712 () ListLongMap!8677)

(declare-fun addCommutativeForDiffKeys!451 (ListLongMap!8677 (_ BitVec 64) V!24743 (_ BitVec 64) V!24743) Unit!28152)

(assert (=> b!822862 (= lt!370708 (addCommutativeForDiffKeys!451 lt!370712 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370717 () ListLongMap!8677)

(assert (=> b!822862 (= lt!370717 lt!370716)))

(declare-fun lt!370713 () tuple2!9840)

(assert (=> b!822862 (= lt!370716 (+!1856 (+!1856 lt!370712 lt!370715) lt!370713))))

(assert (=> b!822862 (= lt!370715 (tuple2!9841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370714 () ListLongMap!8677)

(assert (=> b!822862 (= lt!370714 lt!370709)))

(assert (=> b!822862 (= lt!370709 (+!1856 lt!370712 lt!370713))))

(assert (=> b!822862 (= lt!370713 (tuple2!9841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2486 (array!45768 array!45770 (_ BitVec 32) (_ BitVec 32) V!24743 V!24743 (_ BitVec 32) Int) ListLongMap!8677)

(assert (=> b!822862 (= lt!370717 (getCurrentListMap!2486 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24743)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822862 (= lt!370714 (getCurrentListMap!2486 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822863 () Bool)

(declare-fun res!561290 () Bool)

(assert (=> b!822863 (=> (not res!561290) (not e!457617))))

(declare-datatypes ((List!15700 0))(
  ( (Nil!15697) (Cons!15696 (h!16825 (_ BitVec 64)) (t!22047 List!15700)) )
))
(declare-fun arrayNoDuplicates!0 (array!45768 (_ BitVec 32) List!15700) Bool)

(assert (=> b!822863 (= res!561290 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15697))))

(declare-fun b!822864 () Bool)

(declare-fun res!561294 () Bool)

(assert (=> b!822864 (=> (not res!561294) (not e!457617))))

(assert (=> b!822864 (= res!561294 (and (= (size!22351 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22350 _keys!976) (size!22351 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822865 () Bool)

(declare-fun e!457614 () Bool)

(assert (=> b!822865 (= e!457614 tp_is_empty!14807)))

(declare-fun mapNonEmpty!23824 () Bool)

(declare-fun tp!46039 () Bool)

(assert (=> mapNonEmpty!23824 (= mapRes!23824 (and tp!46039 e!457618))))

(declare-fun mapRest!23824 () (Array (_ BitVec 32) ValueCell!6988))

(declare-fun mapValue!23824 () ValueCell!6988)

(declare-fun mapKey!23824 () (_ BitVec 32))

(assert (=> mapNonEmpty!23824 (= (arr!21930 _values!788) (store mapRest!23824 mapKey!23824 mapValue!23824))))

(declare-fun b!822866 () Bool)

(assert (=> b!822866 (= e!457617 (not e!457613))))

(declare-fun res!561292 () Bool)

(assert (=> b!822866 (=> res!561292 e!457613)))

(assert (=> b!822866 (= res!561292 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370710 () ListLongMap!8677)

(assert (=> b!822866 (= lt!370712 lt!370710)))

(declare-fun lt!370711 () Unit!28152)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!495 (array!45768 array!45770 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24743 V!24743 V!24743 V!24743 (_ BitVec 32) Int) Unit!28152)

(assert (=> b!822866 (= lt!370711 (lemmaNoChangeToArrayThenSameMapNoExtras!495 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2379 (array!45768 array!45770 (_ BitVec 32) (_ BitVec 32) V!24743 V!24743 (_ BitVec 32) Int) ListLongMap!8677)

(assert (=> b!822866 (= lt!370710 (getCurrentListMapNoExtraKeys!2379 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822866 (= lt!370712 (getCurrentListMapNoExtraKeys!2379 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822867 () Bool)

(assert (=> b!822867 (= e!457615 (and e!457614 mapRes!23824))))

(declare-fun condMapEmpty!23824 () Bool)

(declare-fun mapDefault!23824 () ValueCell!6988)

