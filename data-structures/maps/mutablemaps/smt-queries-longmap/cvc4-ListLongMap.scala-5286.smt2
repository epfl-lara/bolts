; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70914 () Bool)

(assert start!70914)

(declare-fun b_free!13127 () Bool)

(declare-fun b_next!13127 () Bool)

(assert (=> start!70914 (= b_free!13127 (not b_next!13127))))

(declare-fun tp!46129 () Bool)

(declare-fun b_and!22029 () Bool)

(assert (=> start!70914 (= tp!46129 b_and!22029)))

(declare-fun b!823220 () Bool)

(declare-fun res!561515 () Bool)

(declare-fun e!457883 () Bool)

(assert (=> b!823220 (=> (not res!561515) (not e!457883))))

(declare-datatypes ((array!45826 0))(
  ( (array!45827 (arr!21958 (Array (_ BitVec 32) (_ BitVec 64))) (size!22379 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45826)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24783 0))(
  ( (V!24784 (val!7466 Int)) )
))
(declare-datatypes ((ValueCell!7003 0))(
  ( (ValueCellFull!7003 (v!9894 V!24783)) (EmptyCell!7003) )
))
(declare-datatypes ((array!45828 0))(
  ( (array!45829 (arr!21959 (Array (_ BitVec 32) ValueCell!7003)) (size!22380 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45828)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823220 (= res!561515 (and (= (size!22380 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22379 _keys!976) (size!22380 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23869 () Bool)

(declare-fun mapRes!23869 () Bool)

(assert (=> mapIsEmpty!23869 mapRes!23869))

(declare-fun b!823221 () Bool)

(declare-fun e!457885 () Bool)

(assert (=> b!823221 (= e!457883 (not e!457885))))

(declare-fun res!561518 () Bool)

(assert (=> b!823221 (=> res!561518 e!457885)))

(assert (=> b!823221 (= res!561518 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9868 0))(
  ( (tuple2!9869 (_1!4944 (_ BitVec 64)) (_2!4944 V!24783)) )
))
(declare-datatypes ((List!15725 0))(
  ( (Nil!15722) (Cons!15721 (h!16850 tuple2!9868) (t!22072 List!15725)) )
))
(declare-datatypes ((ListLongMap!8705 0))(
  ( (ListLongMap!8706 (toList!4368 List!15725)) )
))
(declare-fun lt!371166 () ListLongMap!8705)

(declare-fun lt!371165 () ListLongMap!8705)

(assert (=> b!823221 (= lt!371166 lt!371165)))

(declare-fun zeroValueBefore!34 () V!24783)

(declare-fun zeroValueAfter!34 () V!24783)

(declare-fun minValue!754 () V!24783)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28180 0))(
  ( (Unit!28181) )
))
(declare-fun lt!371160 () Unit!28180)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!506 (array!45826 array!45828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24783 V!24783 V!24783 V!24783 (_ BitVec 32) Int) Unit!28180)

(assert (=> b!823221 (= lt!371160 (lemmaNoChangeToArrayThenSameMapNoExtras!506 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2390 (array!45826 array!45828 (_ BitVec 32) (_ BitVec 32) V!24783 V!24783 (_ BitVec 32) Int) ListLongMap!8705)

(assert (=> b!823221 (= lt!371165 (getCurrentListMapNoExtraKeys!2390 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823221 (= lt!371166 (getCurrentListMapNoExtraKeys!2390 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823222 () Bool)

(declare-fun e!457888 () Bool)

(declare-fun tp_is_empty!14837 () Bool)

(assert (=> b!823222 (= e!457888 tp_is_empty!14837)))

(declare-fun b!823223 () Bool)

(declare-fun e!457887 () Bool)

(assert (=> b!823223 (= e!457887 tp_is_empty!14837)))

(declare-fun b!823224 () Bool)

(assert (=> b!823224 (= e!457885 true)))

(declare-fun lt!371161 () ListLongMap!8705)

(declare-fun lt!371164 () ListLongMap!8705)

(declare-fun lt!371167 () tuple2!9868)

(declare-fun +!1870 (ListLongMap!8705 tuple2!9868) ListLongMap!8705)

(assert (=> b!823224 (= lt!371161 (+!1870 lt!371164 lt!371167))))

(declare-fun lt!371159 () Unit!28180)

(declare-fun addCommutativeForDiffKeys!465 (ListLongMap!8705 (_ BitVec 64) V!24783 (_ BitVec 64) V!24783) Unit!28180)

(assert (=> b!823224 (= lt!371159 (addCommutativeForDiffKeys!465 lt!371166 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371158 () ListLongMap!8705)

(assert (=> b!823224 (= lt!371158 lt!371161)))

(declare-fun lt!371162 () tuple2!9868)

(assert (=> b!823224 (= lt!371161 (+!1870 (+!1870 lt!371166 lt!371167) lt!371162))))

(assert (=> b!823224 (= lt!371167 (tuple2!9869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371163 () ListLongMap!8705)

(assert (=> b!823224 (= lt!371163 lt!371164)))

(assert (=> b!823224 (= lt!371164 (+!1870 lt!371166 lt!371162))))

(assert (=> b!823224 (= lt!371162 (tuple2!9869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2500 (array!45826 array!45828 (_ BitVec 32) (_ BitVec 32) V!24783 V!24783 (_ BitVec 32) Int) ListLongMap!8705)

(assert (=> b!823224 (= lt!371158 (getCurrentListMap!2500 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823224 (= lt!371163 (getCurrentListMap!2500 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823225 () Bool)

(declare-fun res!561517 () Bool)

(assert (=> b!823225 (=> (not res!561517) (not e!457883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45826 (_ BitVec 32)) Bool)

(assert (=> b!823225 (= res!561517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823226 () Bool)

(declare-fun res!561519 () Bool)

(assert (=> b!823226 (=> (not res!561519) (not e!457883))))

(declare-datatypes ((List!15726 0))(
  ( (Nil!15723) (Cons!15722 (h!16851 (_ BitVec 64)) (t!22073 List!15726)) )
))
(declare-fun arrayNoDuplicates!0 (array!45826 (_ BitVec 32) List!15726) Bool)

(assert (=> b!823226 (= res!561519 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15723))))

(declare-fun b!823227 () Bool)

(declare-fun e!457886 () Bool)

(assert (=> b!823227 (= e!457886 (and e!457887 mapRes!23869))))

(declare-fun condMapEmpty!23869 () Bool)

(declare-fun mapDefault!23869 () ValueCell!7003)

