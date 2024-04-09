; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70908 () Bool)

(assert start!70908)

(declare-fun b_free!13121 () Bool)

(declare-fun b_next!13121 () Bool)

(assert (=> start!70908 (= b_free!13121 (not b_next!13121))))

(declare-fun tp!46110 () Bool)

(declare-fun b_and!22023 () Bool)

(assert (=> start!70908 (= tp!46110 b_and!22023)))

(declare-fun b!823148 () Bool)

(declare-fun e!457832 () Bool)

(assert (=> b!823148 (= e!457832 true)))

(declare-datatypes ((V!24775 0))(
  ( (V!24776 (val!7463 Int)) )
))
(declare-datatypes ((tuple2!9862 0))(
  ( (tuple2!9863 (_1!4941 (_ BitVec 64)) (_2!4941 V!24775)) )
))
(declare-datatypes ((List!15720 0))(
  ( (Nil!15717) (Cons!15716 (h!16845 tuple2!9862) (t!22067 List!15720)) )
))
(declare-datatypes ((ListLongMap!8699 0))(
  ( (ListLongMap!8700 (toList!4365 List!15720)) )
))
(declare-fun lt!371075 () ListLongMap!8699)

(declare-fun lt!371070 () ListLongMap!8699)

(declare-fun lt!371071 () tuple2!9862)

(declare-fun +!1867 (ListLongMap!8699 tuple2!9862) ListLongMap!8699)

(assert (=> b!823148 (= lt!371075 (+!1867 lt!371070 lt!371071))))

(declare-datatypes ((Unit!28174 0))(
  ( (Unit!28175) )
))
(declare-fun lt!371073 () Unit!28174)

(declare-fun zeroValueAfter!34 () V!24775)

(declare-fun lt!371072 () ListLongMap!8699)

(declare-fun minValue!754 () V!24775)

(declare-fun addCommutativeForDiffKeys!462 (ListLongMap!8699 (_ BitVec 64) V!24775 (_ BitVec 64) V!24775) Unit!28174)

(assert (=> b!823148 (= lt!371073 (addCommutativeForDiffKeys!462 lt!371072 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371068 () ListLongMap!8699)

(assert (=> b!823148 (= lt!371068 lt!371075)))

(declare-fun lt!371076 () tuple2!9862)

(assert (=> b!823148 (= lt!371075 (+!1867 (+!1867 lt!371072 lt!371071) lt!371076))))

(assert (=> b!823148 (= lt!371071 (tuple2!9863 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371069 () ListLongMap!8699)

(assert (=> b!823148 (= lt!371069 lt!371070)))

(assert (=> b!823148 (= lt!371070 (+!1867 lt!371072 lt!371076))))

(assert (=> b!823148 (= lt!371076 (tuple2!9863 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45814 0))(
  ( (array!45815 (arr!21952 (Array (_ BitVec 32) (_ BitVec 64))) (size!22373 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45814)

(declare-datatypes ((ValueCell!7000 0))(
  ( (ValueCellFull!7000 (v!9891 V!24775)) (EmptyCell!7000) )
))
(declare-datatypes ((array!45816 0))(
  ( (array!45817 (arr!21953 (Array (_ BitVec 32) ValueCell!7000)) (size!22374 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45816)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2497 (array!45814 array!45816 (_ BitVec 32) (_ BitVec 32) V!24775 V!24775 (_ BitVec 32) Int) ListLongMap!8699)

(assert (=> b!823148 (= lt!371068 (getCurrentListMap!2497 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24775)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!823148 (= lt!371069 (getCurrentListMap!2497 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823149 () Bool)

(declare-fun e!457829 () Bool)

(assert (=> b!823149 (= e!457829 (not e!457832))))

(declare-fun res!561472 () Bool)

(assert (=> b!823149 (=> res!561472 e!457832)))

(assert (=> b!823149 (= res!561472 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!371074 () ListLongMap!8699)

(assert (=> b!823149 (= lt!371072 lt!371074)))

(declare-fun lt!371077 () Unit!28174)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!503 (array!45814 array!45816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24775 V!24775 V!24775 V!24775 (_ BitVec 32) Int) Unit!28174)

(assert (=> b!823149 (= lt!371077 (lemmaNoChangeToArrayThenSameMapNoExtras!503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2387 (array!45814 array!45816 (_ BitVec 32) (_ BitVec 32) V!24775 V!24775 (_ BitVec 32) Int) ListLongMap!8699)

(assert (=> b!823149 (= lt!371074 (getCurrentListMapNoExtraKeys!2387 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823149 (= lt!371072 (getCurrentListMapNoExtraKeys!2387 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561473 () Bool)

(assert (=> start!70908 (=> (not res!561473) (not e!457829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70908 (= res!561473 (validMask!0 mask!1312))))

(assert (=> start!70908 e!457829))

(declare-fun tp_is_empty!14831 () Bool)

(assert (=> start!70908 tp_is_empty!14831))

(declare-fun array_inv!17497 (array!45814) Bool)

(assert (=> start!70908 (array_inv!17497 _keys!976)))

(assert (=> start!70908 true))

(declare-fun e!457834 () Bool)

(declare-fun array_inv!17498 (array!45816) Bool)

(assert (=> start!70908 (and (array_inv!17498 _values!788) e!457834)))

(assert (=> start!70908 tp!46110))

(declare-fun b!823150 () Bool)

(declare-fun res!561474 () Bool)

(assert (=> b!823150 (=> (not res!561474) (not e!457829))))

(assert (=> b!823150 (= res!561474 (and (= (size!22374 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22373 _keys!976) (size!22374 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23860 () Bool)

(declare-fun mapRes!23860 () Bool)

(assert (=> mapIsEmpty!23860 mapRes!23860))

(declare-fun b!823151 () Bool)

(declare-fun e!457831 () Bool)

(assert (=> b!823151 (= e!457831 tp_is_empty!14831)))

(declare-fun mapNonEmpty!23860 () Bool)

(declare-fun tp!46111 () Bool)

(declare-fun e!457830 () Bool)

(assert (=> mapNonEmpty!23860 (= mapRes!23860 (and tp!46111 e!457830))))

(declare-fun mapKey!23860 () (_ BitVec 32))

(declare-fun mapRest!23860 () (Array (_ BitVec 32) ValueCell!7000))

(declare-fun mapValue!23860 () ValueCell!7000)

(assert (=> mapNonEmpty!23860 (= (arr!21953 _values!788) (store mapRest!23860 mapKey!23860 mapValue!23860))))

(declare-fun b!823152 () Bool)

(assert (=> b!823152 (= e!457830 tp_is_empty!14831)))

(declare-fun b!823153 () Bool)

(declare-fun res!561470 () Bool)

(assert (=> b!823153 (=> (not res!561470) (not e!457829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45814 (_ BitVec 32)) Bool)

(assert (=> b!823153 (= res!561470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823154 () Bool)

(declare-fun res!561471 () Bool)

(assert (=> b!823154 (=> (not res!561471) (not e!457829))))

(declare-datatypes ((List!15721 0))(
  ( (Nil!15718) (Cons!15717 (h!16846 (_ BitVec 64)) (t!22068 List!15721)) )
))
(declare-fun arrayNoDuplicates!0 (array!45814 (_ BitVec 32) List!15721) Bool)

(assert (=> b!823154 (= res!561471 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15718))))

(declare-fun b!823155 () Bool)

(assert (=> b!823155 (= e!457834 (and e!457831 mapRes!23860))))

(declare-fun condMapEmpty!23860 () Bool)

(declare-fun mapDefault!23860 () ValueCell!7000)

