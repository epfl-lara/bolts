; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70988 () Bool)

(assert start!70988)

(declare-fun b_free!13181 () Bool)

(declare-fun b_next!13181 () Bool)

(assert (=> start!70988 (= b_free!13181 (not b_next!13181))))

(declare-fun tp!46294 () Bool)

(declare-fun b_and!22095 () Bool)

(assert (=> start!70988 (= tp!46294 b_and!22095)))

(declare-fun b!823978 () Bool)

(declare-fun e!458413 () Bool)

(declare-fun tp_is_empty!14891 () Bool)

(assert (=> b!823978 (= e!458413 tp_is_empty!14891)))

(declare-fun b!823979 () Bool)

(declare-fun e!458411 () Bool)

(assert (=> b!823979 (= e!458411 (not true))))

(declare-datatypes ((V!24855 0))(
  ( (V!24856 (val!7493 Int)) )
))
(declare-datatypes ((tuple2!9902 0))(
  ( (tuple2!9903 (_1!4961 (_ BitVec 64)) (_2!4961 V!24855)) )
))
(declare-datatypes ((List!15760 0))(
  ( (Nil!15757) (Cons!15756 (h!16885 tuple2!9902) (t!22109 List!15760)) )
))
(declare-datatypes ((ListLongMap!8739 0))(
  ( (ListLongMap!8740 (toList!4385 List!15760)) )
))
(declare-fun lt!371628 () ListLongMap!8739)

(declare-fun lt!371627 () ListLongMap!8739)

(assert (=> b!823979 (= lt!371628 lt!371627)))

(declare-fun zeroValueBefore!34 () V!24855)

(declare-datatypes ((array!45928 0))(
  ( (array!45929 (arr!22008 (Array (_ BitVec 32) (_ BitVec 64))) (size!22429 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45928)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24855)

(declare-fun minValue!754 () V!24855)

(declare-datatypes ((ValueCell!7030 0))(
  ( (ValueCellFull!7030 (v!9922 V!24855)) (EmptyCell!7030) )
))
(declare-datatypes ((array!45930 0))(
  ( (array!45931 (arr!22009 (Array (_ BitVec 32) ValueCell!7030)) (size!22430 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45930)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28216 0))(
  ( (Unit!28217) )
))
(declare-fun lt!371626 () Unit!28216)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!523 (array!45928 array!45930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24855 V!24855 V!24855 V!24855 (_ BitVec 32) Int) Unit!28216)

(assert (=> b!823979 (= lt!371626 (lemmaNoChangeToArrayThenSameMapNoExtras!523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2407 (array!45928 array!45930 (_ BitVec 32) (_ BitVec 32) V!24855 V!24855 (_ BitVec 32) Int) ListLongMap!8739)

(assert (=> b!823979 (= lt!371627 (getCurrentListMapNoExtraKeys!2407 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823979 (= lt!371628 (getCurrentListMapNoExtraKeys!2407 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823980 () Bool)

(declare-fun res!561930 () Bool)

(assert (=> b!823980 (=> (not res!561930) (not e!458411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45928 (_ BitVec 32)) Bool)

(assert (=> b!823980 (= res!561930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23953 () Bool)

(declare-fun mapRes!23953 () Bool)

(assert (=> mapIsEmpty!23953 mapRes!23953))

(declare-fun mapNonEmpty!23953 () Bool)

(declare-fun tp!46293 () Bool)

(declare-fun e!458415 () Bool)

(assert (=> mapNonEmpty!23953 (= mapRes!23953 (and tp!46293 e!458415))))

(declare-fun mapRest!23953 () (Array (_ BitVec 32) ValueCell!7030))

(declare-fun mapKey!23953 () (_ BitVec 32))

(declare-fun mapValue!23953 () ValueCell!7030)

(assert (=> mapNonEmpty!23953 (= (arr!22009 _values!788) (store mapRest!23953 mapKey!23953 mapValue!23953))))

(declare-fun res!561928 () Bool)

(assert (=> start!70988 (=> (not res!561928) (not e!458411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70988 (= res!561928 (validMask!0 mask!1312))))

(assert (=> start!70988 e!458411))

(assert (=> start!70988 tp_is_empty!14891))

(declare-fun array_inv!17537 (array!45928) Bool)

(assert (=> start!70988 (array_inv!17537 _keys!976)))

(assert (=> start!70988 true))

(declare-fun e!458414 () Bool)

(declare-fun array_inv!17538 (array!45930) Bool)

(assert (=> start!70988 (and (array_inv!17538 _values!788) e!458414)))

(assert (=> start!70988 tp!46294))

(declare-fun b!823981 () Bool)

(declare-fun res!561931 () Bool)

(assert (=> b!823981 (=> (not res!561931) (not e!458411))))

(assert (=> b!823981 (= res!561931 (and (= (size!22430 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22429 _keys!976) (size!22430 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823982 () Bool)

(declare-fun res!561929 () Bool)

(assert (=> b!823982 (=> (not res!561929) (not e!458411))))

(declare-datatypes ((List!15761 0))(
  ( (Nil!15758) (Cons!15757 (h!16886 (_ BitVec 64)) (t!22110 List!15761)) )
))
(declare-fun arrayNoDuplicates!0 (array!45928 (_ BitVec 32) List!15761) Bool)

(assert (=> b!823982 (= res!561929 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15758))))

(declare-fun b!823983 () Bool)

(assert (=> b!823983 (= e!458414 (and e!458413 mapRes!23953))))

(declare-fun condMapEmpty!23953 () Bool)

(declare-fun mapDefault!23953 () ValueCell!7030)

