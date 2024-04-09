; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70970 () Bool)

(assert start!70970)

(declare-fun b_free!13163 () Bool)

(declare-fun b_next!13163 () Bool)

(assert (=> start!70970 (= b_free!13163 (not b_next!13163))))

(declare-fun tp!46240 () Bool)

(declare-fun b_and!22077 () Bool)

(assert (=> start!70970 (= tp!46240 b_and!22077)))

(declare-fun b!823789 () Bool)

(declare-fun e!458276 () Bool)

(declare-fun tp_is_empty!14873 () Bool)

(assert (=> b!823789 (= e!458276 tp_is_empty!14873)))

(declare-fun mapNonEmpty!23926 () Bool)

(declare-fun mapRes!23926 () Bool)

(declare-fun tp!46239 () Bool)

(declare-fun e!458278 () Bool)

(assert (=> mapNonEmpty!23926 (= mapRes!23926 (and tp!46239 e!458278))))

(declare-datatypes ((V!24831 0))(
  ( (V!24832 (val!7484 Int)) )
))
(declare-datatypes ((ValueCell!7021 0))(
  ( (ValueCellFull!7021 (v!9913 V!24831)) (EmptyCell!7021) )
))
(declare-fun mapRest!23926 () (Array (_ BitVec 32) ValueCell!7021))

(declare-fun mapValue!23926 () ValueCell!7021)

(declare-datatypes ((array!45894 0))(
  ( (array!45895 (arr!21991 (Array (_ BitVec 32) ValueCell!7021)) (size!22412 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45894)

(declare-fun mapKey!23926 () (_ BitVec 32))

(assert (=> mapNonEmpty!23926 (= (arr!21991 _values!788) (store mapRest!23926 mapKey!23926 mapValue!23926))))

(declare-fun b!823791 () Bool)

(declare-fun res!561823 () Bool)

(declare-fun e!458279 () Bool)

(assert (=> b!823791 (=> (not res!561823) (not e!458279))))

(declare-datatypes ((array!45896 0))(
  ( (array!45897 (arr!21992 (Array (_ BitVec 32) (_ BitVec 64))) (size!22413 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45896)

(declare-datatypes ((List!15748 0))(
  ( (Nil!15745) (Cons!15744 (h!16873 (_ BitVec 64)) (t!22097 List!15748)) )
))
(declare-fun arrayNoDuplicates!0 (array!45896 (_ BitVec 32) List!15748) Bool)

(assert (=> b!823791 (= res!561823 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15745))))

(declare-fun b!823792 () Bool)

(assert (=> b!823792 (= e!458278 tp_is_empty!14873)))

(declare-fun b!823793 () Bool)

(assert (=> b!823793 (= e!458279 (not true))))

(declare-datatypes ((tuple2!9890 0))(
  ( (tuple2!9891 (_1!4955 (_ BitVec 64)) (_2!4955 V!24831)) )
))
(declare-datatypes ((List!15749 0))(
  ( (Nil!15746) (Cons!15745 (h!16874 tuple2!9890) (t!22098 List!15749)) )
))
(declare-datatypes ((ListLongMap!8727 0))(
  ( (ListLongMap!8728 (toList!4379 List!15749)) )
))
(declare-fun lt!371546 () ListLongMap!8727)

(declare-fun lt!371545 () ListLongMap!8727)

(assert (=> b!823793 (= lt!371546 lt!371545)))

(declare-fun zeroValueBefore!34 () V!24831)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24831)

(declare-fun minValue!754 () V!24831)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28204 0))(
  ( (Unit!28205) )
))
(declare-fun lt!371547 () Unit!28204)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!517 (array!45896 array!45894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24831 V!24831 V!24831 V!24831 (_ BitVec 32) Int) Unit!28204)

(assert (=> b!823793 (= lt!371547 (lemmaNoChangeToArrayThenSameMapNoExtras!517 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2401 (array!45896 array!45894 (_ BitVec 32) (_ BitVec 32) V!24831 V!24831 (_ BitVec 32) Int) ListLongMap!8727)

(assert (=> b!823793 (= lt!371545 (getCurrentListMapNoExtraKeys!2401 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823793 (= lt!371546 (getCurrentListMapNoExtraKeys!2401 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23926 () Bool)

(assert (=> mapIsEmpty!23926 mapRes!23926))

(declare-fun b!823794 () Bool)

(declare-fun res!561821 () Bool)

(assert (=> b!823794 (=> (not res!561821) (not e!458279))))

(assert (=> b!823794 (= res!561821 (and (= (size!22412 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22413 _keys!976) (size!22412 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823795 () Bool)

(declare-fun res!561820 () Bool)

(assert (=> b!823795 (=> (not res!561820) (not e!458279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45896 (_ BitVec 32)) Bool)

(assert (=> b!823795 (= res!561820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561822 () Bool)

(assert (=> start!70970 (=> (not res!561822) (not e!458279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70970 (= res!561822 (validMask!0 mask!1312))))

(assert (=> start!70970 e!458279))

(assert (=> start!70970 tp_is_empty!14873))

(declare-fun array_inv!17525 (array!45896) Bool)

(assert (=> start!70970 (array_inv!17525 _keys!976)))

(assert (=> start!70970 true))

(declare-fun e!458277 () Bool)

(declare-fun array_inv!17526 (array!45894) Bool)

(assert (=> start!70970 (and (array_inv!17526 _values!788) e!458277)))

(assert (=> start!70970 tp!46240))

(declare-fun b!823790 () Bool)

(assert (=> b!823790 (= e!458277 (and e!458276 mapRes!23926))))

(declare-fun condMapEmpty!23926 () Bool)

(declare-fun mapDefault!23926 () ValueCell!7021)

