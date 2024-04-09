; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70978 () Bool)

(assert start!70978)

(declare-fun b_free!13171 () Bool)

(declare-fun b_next!13171 () Bool)

(assert (=> start!70978 (= b_free!13171 (not b_next!13171))))

(declare-fun tp!46263 () Bool)

(declare-fun b_and!22085 () Bool)

(assert (=> start!70978 (= tp!46263 b_and!22085)))

(declare-fun b!823873 () Bool)

(declare-fun e!458336 () Bool)

(assert (=> b!823873 (= e!458336 (not true))))

(declare-datatypes ((V!24843 0))(
  ( (V!24844 (val!7488 Int)) )
))
(declare-datatypes ((tuple2!9894 0))(
  ( (tuple2!9895 (_1!4957 (_ BitVec 64)) (_2!4957 V!24843)) )
))
(declare-datatypes ((List!15753 0))(
  ( (Nil!15750) (Cons!15749 (h!16878 tuple2!9894) (t!22102 List!15753)) )
))
(declare-datatypes ((ListLongMap!8731 0))(
  ( (ListLongMap!8732 (toList!4381 List!15753)) )
))
(declare-fun lt!371581 () ListLongMap!8731)

(declare-fun lt!371583 () ListLongMap!8731)

(assert (=> b!823873 (= lt!371581 lt!371583)))

(declare-fun zeroValueBefore!34 () V!24843)

(declare-datatypes ((array!45908 0))(
  ( (array!45909 (arr!21998 (Array (_ BitVec 32) (_ BitVec 64))) (size!22419 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45908)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24843)

(declare-fun minValue!754 () V!24843)

(declare-datatypes ((ValueCell!7025 0))(
  ( (ValueCellFull!7025 (v!9917 V!24843)) (EmptyCell!7025) )
))
(declare-datatypes ((array!45910 0))(
  ( (array!45911 (arr!21999 (Array (_ BitVec 32) ValueCell!7025)) (size!22420 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45910)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28208 0))(
  ( (Unit!28209) )
))
(declare-fun lt!371582 () Unit!28208)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!519 (array!45908 array!45910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24843 V!24843 V!24843 V!24843 (_ BitVec 32) Int) Unit!28208)

(assert (=> b!823873 (= lt!371582 (lemmaNoChangeToArrayThenSameMapNoExtras!519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2403 (array!45908 array!45910 (_ BitVec 32) (_ BitVec 32) V!24843 V!24843 (_ BitVec 32) Int) ListLongMap!8731)

(assert (=> b!823873 (= lt!371583 (getCurrentListMapNoExtraKeys!2403 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823873 (= lt!371581 (getCurrentListMapNoExtraKeys!2403 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23938 () Bool)

(declare-fun mapRes!23938 () Bool)

(declare-fun tp!46264 () Bool)

(declare-fun e!458339 () Bool)

(assert (=> mapNonEmpty!23938 (= mapRes!23938 (and tp!46264 e!458339))))

(declare-fun mapRest!23938 () (Array (_ BitVec 32) ValueCell!7025))

(declare-fun mapValue!23938 () ValueCell!7025)

(declare-fun mapKey!23938 () (_ BitVec 32))

(assert (=> mapNonEmpty!23938 (= (arr!21999 _values!788) (store mapRest!23938 mapKey!23938 mapValue!23938))))

(declare-fun b!823874 () Bool)

(declare-fun res!561870 () Bool)

(assert (=> b!823874 (=> (not res!561870) (not e!458336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45908 (_ BitVec 32)) Bool)

(assert (=> b!823874 (= res!561870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823876 () Bool)

(declare-fun e!458337 () Bool)

(declare-fun tp_is_empty!14881 () Bool)

(assert (=> b!823876 (= e!458337 tp_is_empty!14881)))

(declare-fun b!823877 () Bool)

(assert (=> b!823877 (= e!458339 tp_is_empty!14881)))

(declare-fun mapIsEmpty!23938 () Bool)

(assert (=> mapIsEmpty!23938 mapRes!23938))

(declare-fun b!823878 () Bool)

(declare-fun res!561869 () Bool)

(assert (=> b!823878 (=> (not res!561869) (not e!458336))))

(assert (=> b!823878 (= res!561869 (and (= (size!22420 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22419 _keys!976) (size!22420 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823879 () Bool)

(declare-fun e!458338 () Bool)

(assert (=> b!823879 (= e!458338 (and e!458337 mapRes!23938))))

(declare-fun condMapEmpty!23938 () Bool)

(declare-fun mapDefault!23938 () ValueCell!7025)

