; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70810 () Bool)

(assert start!70810)

(declare-fun b_free!13043 () Bool)

(declare-fun b_next!13043 () Bool)

(assert (=> start!70810 (= b_free!13043 (not b_next!13043))))

(declare-fun tp!45873 () Bool)

(declare-fun b_and!21933 () Bool)

(assert (=> start!70810 (= tp!45873 b_and!21933)))

(declare-fun res!560810 () Bool)

(declare-fun e!457017 () Bool)

(assert (=> start!70810 (=> (not res!560810) (not e!457017))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70810 (= res!560810 (validMask!0 mask!1312))))

(assert (=> start!70810 e!457017))

(declare-fun tp_is_empty!14753 () Bool)

(assert (=> start!70810 tp_is_empty!14753))

(declare-datatypes ((array!45658 0))(
  ( (array!45659 (arr!21875 (Array (_ BitVec 32) (_ BitVec 64))) (size!22296 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45658)

(declare-fun array_inv!17445 (array!45658) Bool)

(assert (=> start!70810 (array_inv!17445 _keys!976)))

(assert (=> start!70810 true))

(declare-datatypes ((V!24671 0))(
  ( (V!24672 (val!7424 Int)) )
))
(declare-datatypes ((ValueCell!6961 0))(
  ( (ValueCellFull!6961 (v!9851 V!24671)) (EmptyCell!6961) )
))
(declare-datatypes ((array!45660 0))(
  ( (array!45661 (arr!21876 (Array (_ BitVec 32) ValueCell!6961)) (size!22297 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45660)

(declare-fun e!457016 () Bool)

(declare-fun array_inv!17446 (array!45660) Bool)

(assert (=> start!70810 (and (array_inv!17446 _values!788) e!457016)))

(assert (=> start!70810 tp!45873))

(declare-fun b!822031 () Bool)

(declare-fun res!560808 () Bool)

(assert (=> b!822031 (=> (not res!560808) (not e!457017))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822031 (= res!560808 (and (= (size!22297 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22296 _keys!976) (size!22297 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822032 () Bool)

(declare-fun res!560806 () Bool)

(assert (=> b!822032 (=> (not res!560806) (not e!457017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45658 (_ BitVec 32)) Bool)

(assert (=> b!822032 (= res!560806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822033 () Bool)

(declare-fun e!457014 () Bool)

(assert (=> b!822033 (= e!457014 true)))

(declare-datatypes ((tuple2!9794 0))(
  ( (tuple2!9795 (_1!4907 (_ BitVec 64)) (_2!4907 V!24671)) )
))
(declare-datatypes ((List!15653 0))(
  ( (Nil!15650) (Cons!15649 (h!16778 tuple2!9794) (t!21998 List!15653)) )
))
(declare-datatypes ((ListLongMap!8631 0))(
  ( (ListLongMap!8632 (toList!4331 List!15653)) )
))
(declare-fun lt!369748 () ListLongMap!8631)

(declare-fun lt!369749 () ListLongMap!8631)

(declare-fun lt!369746 () tuple2!9794)

(declare-fun +!1835 (ListLongMap!8631 tuple2!9794) ListLongMap!8631)

(assert (=> b!822033 (= lt!369748 (+!1835 lt!369749 lt!369746))))

(declare-fun zeroValueAfter!34 () V!24671)

(declare-fun minValue!754 () V!24671)

(declare-datatypes ((Unit!28104 0))(
  ( (Unit!28105) )
))
(declare-fun lt!369752 () Unit!28104)

(declare-fun lt!369750 () ListLongMap!8631)

(declare-fun addCommutativeForDiffKeys!430 (ListLongMap!8631 (_ BitVec 64) V!24671 (_ BitVec 64) V!24671) Unit!28104)

(assert (=> b!822033 (= lt!369752 (addCommutativeForDiffKeys!430 lt!369750 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369751 () ListLongMap!8631)

(assert (=> b!822033 (= lt!369751 lt!369748)))

(declare-fun lt!369745 () tuple2!9794)

(assert (=> b!822033 (= lt!369748 (+!1835 (+!1835 lt!369750 lt!369746) lt!369745))))

(assert (=> b!822033 (= lt!369746 (tuple2!9795 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369744 () ListLongMap!8631)

(assert (=> b!822033 (= lt!369744 lt!369749)))

(assert (=> b!822033 (= lt!369749 (+!1835 lt!369750 lt!369745))))

(assert (=> b!822033 (= lt!369745 (tuple2!9795 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2465 (array!45658 array!45660 (_ BitVec 32) (_ BitVec 32) V!24671 V!24671 (_ BitVec 32) Int) ListLongMap!8631)

(assert (=> b!822033 (= lt!369751 (getCurrentListMap!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24671)

(assert (=> b!822033 (= lt!369744 (getCurrentListMap!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822034 () Bool)

(assert (=> b!822034 (= e!457017 (not e!457014))))

(declare-fun res!560809 () Bool)

(assert (=> b!822034 (=> res!560809 e!457014)))

(assert (=> b!822034 (= res!560809 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369743 () ListLongMap!8631)

(assert (=> b!822034 (= lt!369750 lt!369743)))

(declare-fun lt!369747 () Unit!28104)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!474 (array!45658 array!45660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24671 V!24671 V!24671 V!24671 (_ BitVec 32) Int) Unit!28104)

(assert (=> b!822034 (= lt!369747 (lemmaNoChangeToArrayThenSameMapNoExtras!474 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2358 (array!45658 array!45660 (_ BitVec 32) (_ BitVec 32) V!24671 V!24671 (_ BitVec 32) Int) ListLongMap!8631)

(assert (=> b!822034 (= lt!369743 (getCurrentListMapNoExtraKeys!2358 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822034 (= lt!369750 (getCurrentListMapNoExtraKeys!2358 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23740 () Bool)

(declare-fun mapRes!23740 () Bool)

(assert (=> mapIsEmpty!23740 mapRes!23740))

(declare-fun b!822035 () Bool)

(declare-fun res!560807 () Bool)

(assert (=> b!822035 (=> (not res!560807) (not e!457017))))

(declare-datatypes ((List!15654 0))(
  ( (Nil!15651) (Cons!15650 (h!16779 (_ BitVec 64)) (t!21999 List!15654)) )
))
(declare-fun arrayNoDuplicates!0 (array!45658 (_ BitVec 32) List!15654) Bool)

(assert (=> b!822035 (= res!560807 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15651))))

(declare-fun b!822036 () Bool)

(declare-fun e!457015 () Bool)

(assert (=> b!822036 (= e!457015 tp_is_empty!14753)))

(declare-fun b!822037 () Bool)

(declare-fun e!457018 () Bool)

(assert (=> b!822037 (= e!457018 tp_is_empty!14753)))

(declare-fun b!822038 () Bool)

(assert (=> b!822038 (= e!457016 (and e!457018 mapRes!23740))))

(declare-fun condMapEmpty!23740 () Bool)

(declare-fun mapDefault!23740 () ValueCell!6961)

