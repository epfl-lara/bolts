; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71014 () Bool)

(assert start!71014)

(declare-fun b_free!13193 () Bool)

(declare-fun b_next!13193 () Bool)

(assert (=> start!71014 (= b_free!13193 (not b_next!13193))))

(declare-fun tp!46332 () Bool)

(declare-fun b_and!22115 () Bool)

(assert (=> start!71014 (= tp!46332 b_and!22115)))

(declare-fun res!562043 () Bool)

(declare-fun e!458565 () Bool)

(assert (=> start!71014 (=> (not res!562043) (not e!458565))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71014 (= res!562043 (validMask!0 mask!1312))))

(assert (=> start!71014 e!458565))

(declare-fun tp_is_empty!14903 () Bool)

(assert (=> start!71014 tp_is_empty!14903))

(declare-datatypes ((array!45954 0))(
  ( (array!45955 (arr!22020 (Array (_ BitVec 32) (_ BitVec 64))) (size!22441 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45954)

(declare-fun array_inv!17549 (array!45954) Bool)

(assert (=> start!71014 (array_inv!17549 _keys!976)))

(assert (=> start!71014 true))

(declare-datatypes ((V!24871 0))(
  ( (V!24872 (val!7499 Int)) )
))
(declare-datatypes ((ValueCell!7036 0))(
  ( (ValueCellFull!7036 (v!9928 V!24871)) (EmptyCell!7036) )
))
(declare-datatypes ((array!45956 0))(
  ( (array!45957 (arr!22021 (Array (_ BitVec 32) ValueCell!7036)) (size!22442 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45956)

(declare-fun e!458569 () Bool)

(declare-fun array_inv!17550 (array!45956) Bool)

(assert (=> start!71014 (and (array_inv!17550 _values!788) e!458569)))

(assert (=> start!71014 tp!46332))

(declare-fun b!824197 () Bool)

(declare-fun e!458567 () Bool)

(assert (=> b!824197 (= e!458567 true)))

(declare-fun zeroValueBefore!34 () V!24871)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24871)

(declare-datatypes ((tuple2!9912 0))(
  ( (tuple2!9913 (_1!4966 (_ BitVec 64)) (_2!4966 V!24871)) )
))
(declare-datatypes ((List!15768 0))(
  ( (Nil!15765) (Cons!15764 (h!16893 tuple2!9912) (t!22119 List!15768)) )
))
(declare-datatypes ((ListLongMap!8749 0))(
  ( (ListLongMap!8750 (toList!4390 List!15768)) )
))
(declare-fun lt!371728 () ListLongMap!8749)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2504 (array!45954 array!45956 (_ BitVec 32) (_ BitVec 32) V!24871 V!24871 (_ BitVec 32) Int) ListLongMap!8749)

(assert (=> b!824197 (= lt!371728 (getCurrentListMap!2504 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824198 () Bool)

(assert (=> b!824198 (= e!458565 (not e!458567))))

(declare-fun res!562041 () Bool)

(assert (=> b!824198 (=> res!562041 e!458567)))

(assert (=> b!824198 (= res!562041 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371731 () ListLongMap!8749)

(declare-fun lt!371729 () ListLongMap!8749)

(assert (=> b!824198 (= lt!371731 lt!371729)))

(declare-fun zeroValueAfter!34 () V!24871)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28226 0))(
  ( (Unit!28227) )
))
(declare-fun lt!371730 () Unit!28226)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!528 (array!45954 array!45956 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24871 V!24871 V!24871 V!24871 (_ BitVec 32) Int) Unit!28226)

(assert (=> b!824198 (= lt!371730 (lemmaNoChangeToArrayThenSameMapNoExtras!528 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2412 (array!45954 array!45956 (_ BitVec 32) (_ BitVec 32) V!24871 V!24871 (_ BitVec 32) Int) ListLongMap!8749)

(assert (=> b!824198 (= lt!371729 (getCurrentListMapNoExtraKeys!2412 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824198 (= lt!371731 (getCurrentListMapNoExtraKeys!2412 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824199 () Bool)

(declare-fun res!562039 () Bool)

(assert (=> b!824199 (=> (not res!562039) (not e!458565))))

(assert (=> b!824199 (= res!562039 (and (= (size!22442 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22441 _keys!976) (size!22442 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824200 () Bool)

(declare-fun e!458564 () Bool)

(assert (=> b!824200 (= e!458564 tp_is_empty!14903)))

(declare-fun b!824201 () Bool)

(declare-fun res!562042 () Bool)

(assert (=> b!824201 (=> (not res!562042) (not e!458565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45954 (_ BitVec 32)) Bool)

(assert (=> b!824201 (= res!562042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23974 () Bool)

(declare-fun mapRes!23974 () Bool)

(declare-fun tp!46333 () Bool)

(assert (=> mapNonEmpty!23974 (= mapRes!23974 (and tp!46333 e!458564))))

(declare-fun mapValue!23974 () ValueCell!7036)

(declare-fun mapKey!23974 () (_ BitVec 32))

(declare-fun mapRest!23974 () (Array (_ BitVec 32) ValueCell!7036))

(assert (=> mapNonEmpty!23974 (= (arr!22021 _values!788) (store mapRest!23974 mapKey!23974 mapValue!23974))))

(declare-fun mapIsEmpty!23974 () Bool)

(assert (=> mapIsEmpty!23974 mapRes!23974))

(declare-fun b!824202 () Bool)

(declare-fun e!458566 () Bool)

(assert (=> b!824202 (= e!458569 (and e!458566 mapRes!23974))))

(declare-fun condMapEmpty!23974 () Bool)

(declare-fun mapDefault!23974 () ValueCell!7036)

