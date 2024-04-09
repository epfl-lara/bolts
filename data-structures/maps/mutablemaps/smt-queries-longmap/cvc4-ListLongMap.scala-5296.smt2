; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70994 () Bool)

(assert start!70994)

(declare-fun b_free!13187 () Bool)

(declare-fun b_next!13187 () Bool)

(assert (=> start!70994 (= b_free!13187 (not b_next!13187))))

(declare-fun tp!46311 () Bool)

(declare-fun b_and!22101 () Bool)

(assert (=> start!70994 (= tp!46311 b_and!22101)))

(declare-fun b!824041 () Bool)

(declare-fun res!561964 () Bool)

(declare-fun e!458460 () Bool)

(assert (=> b!824041 (=> (not res!561964) (not e!458460))))

(declare-datatypes ((array!45940 0))(
  ( (array!45941 (arr!22014 (Array (_ BitVec 32) (_ BitVec 64))) (size!22435 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45940)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24863 0))(
  ( (V!24864 (val!7496 Int)) )
))
(declare-datatypes ((ValueCell!7033 0))(
  ( (ValueCellFull!7033 (v!9925 V!24863)) (EmptyCell!7033) )
))
(declare-datatypes ((array!45942 0))(
  ( (array!45943 (arr!22015 (Array (_ BitVec 32) ValueCell!7033)) (size!22436 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45942)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824041 (= res!561964 (and (= (size!22436 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22435 _keys!976) (size!22436 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!561966 () Bool)

(assert (=> start!70994 (=> (not res!561966) (not e!458460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70994 (= res!561966 (validMask!0 mask!1312))))

(assert (=> start!70994 e!458460))

(declare-fun tp_is_empty!14897 () Bool)

(assert (=> start!70994 tp_is_empty!14897))

(declare-fun array_inv!17543 (array!45940) Bool)

(assert (=> start!70994 (array_inv!17543 _keys!976)))

(assert (=> start!70994 true))

(declare-fun e!458459 () Bool)

(declare-fun array_inv!17544 (array!45942) Bool)

(assert (=> start!70994 (and (array_inv!17544 _values!788) e!458459)))

(assert (=> start!70994 tp!46311))

(declare-fun mapNonEmpty!23962 () Bool)

(declare-fun mapRes!23962 () Bool)

(declare-fun tp!46312 () Bool)

(declare-fun e!458456 () Bool)

(assert (=> mapNonEmpty!23962 (= mapRes!23962 (and tp!46312 e!458456))))

(declare-fun mapKey!23962 () (_ BitVec 32))

(declare-fun mapRest!23962 () (Array (_ BitVec 32) ValueCell!7033))

(declare-fun mapValue!23962 () ValueCell!7033)

(assert (=> mapNonEmpty!23962 (= (arr!22015 _values!788) (store mapRest!23962 mapKey!23962 mapValue!23962))))

(declare-fun b!824042 () Bool)

(assert (=> b!824042 (= e!458456 tp_is_empty!14897)))

(declare-fun b!824043 () Bool)

(declare-fun res!561967 () Bool)

(assert (=> b!824043 (=> (not res!561967) (not e!458460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45940 (_ BitVec 32)) Bool)

(assert (=> b!824043 (= res!561967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824044 () Bool)

(assert (=> b!824044 (= e!458460 (not (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!22435 _keys!976)))))))

(declare-datatypes ((tuple2!9906 0))(
  ( (tuple2!9907 (_1!4963 (_ BitVec 64)) (_2!4963 V!24863)) )
))
(declare-datatypes ((List!15764 0))(
  ( (Nil!15761) (Cons!15760 (h!16889 tuple2!9906) (t!22113 List!15764)) )
))
(declare-datatypes ((ListLongMap!8743 0))(
  ( (ListLongMap!8744 (toList!4387 List!15764)) )
))
(declare-fun lt!371655 () ListLongMap!8743)

(declare-fun lt!371654 () ListLongMap!8743)

(assert (=> b!824044 (= lt!371655 lt!371654)))

(declare-fun zeroValueBefore!34 () V!24863)

(declare-fun zeroValueAfter!34 () V!24863)

(declare-fun minValue!754 () V!24863)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28220 0))(
  ( (Unit!28221) )
))
(declare-fun lt!371653 () Unit!28220)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!525 (array!45940 array!45942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24863 V!24863 V!24863 V!24863 (_ BitVec 32) Int) Unit!28220)

(assert (=> b!824044 (= lt!371653 (lemmaNoChangeToArrayThenSameMapNoExtras!525 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2409 (array!45940 array!45942 (_ BitVec 32) (_ BitVec 32) V!24863 V!24863 (_ BitVec 32) Int) ListLongMap!8743)

(assert (=> b!824044 (= lt!371654 (getCurrentListMapNoExtraKeys!2409 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824044 (= lt!371655 (getCurrentListMapNoExtraKeys!2409 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824045 () Bool)

(declare-fun e!458458 () Bool)

(assert (=> b!824045 (= e!458459 (and e!458458 mapRes!23962))))

(declare-fun condMapEmpty!23962 () Bool)

(declare-fun mapDefault!23962 () ValueCell!7033)

