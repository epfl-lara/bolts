; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70964 () Bool)

(assert start!70964)

(declare-fun b_free!13157 () Bool)

(declare-fun b_next!13157 () Bool)

(assert (=> start!70964 (= b_free!13157 (not b_next!13157))))

(declare-fun tp!46222 () Bool)

(declare-fun b_and!22071 () Bool)

(assert (=> start!70964 (= tp!46222 b_and!22071)))

(declare-fun b!823726 () Bool)

(declare-fun e!458234 () Bool)

(declare-fun tp_is_empty!14867 () Bool)

(assert (=> b!823726 (= e!458234 tp_is_empty!14867)))

(declare-fun mapNonEmpty!23917 () Bool)

(declare-fun mapRes!23917 () Bool)

(declare-fun tp!46221 () Bool)

(declare-fun e!458232 () Bool)

(assert (=> mapNonEmpty!23917 (= mapRes!23917 (and tp!46221 e!458232))))

(declare-fun mapKey!23917 () (_ BitVec 32))

(declare-datatypes ((V!24823 0))(
  ( (V!24824 (val!7481 Int)) )
))
(declare-datatypes ((ValueCell!7018 0))(
  ( (ValueCellFull!7018 (v!9910 V!24823)) (EmptyCell!7018) )
))
(declare-datatypes ((array!45884 0))(
  ( (array!45885 (arr!21986 (Array (_ BitVec 32) ValueCell!7018)) (size!22407 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45884)

(declare-fun mapRest!23917 () (Array (_ BitVec 32) ValueCell!7018))

(declare-fun mapValue!23917 () ValueCell!7018)

(assert (=> mapNonEmpty!23917 (= (arr!21986 _values!788) (store mapRest!23917 mapKey!23917 mapValue!23917))))

(declare-fun mapIsEmpty!23917 () Bool)

(assert (=> mapIsEmpty!23917 mapRes!23917))

(declare-fun b!823727 () Bool)

(declare-fun res!561787 () Bool)

(declare-fun e!458231 () Bool)

(assert (=> b!823727 (=> (not res!561787) (not e!458231))))

(declare-datatypes ((array!45886 0))(
  ( (array!45887 (arr!21987 (Array (_ BitVec 32) (_ BitVec 64))) (size!22408 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45886)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823727 (= res!561787 (and (= (size!22407 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22408 _keys!976) (size!22407 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823728 () Bool)

(assert (=> b!823728 (= e!458231 (not true))))

(declare-datatypes ((tuple2!9886 0))(
  ( (tuple2!9887 (_1!4953 (_ BitVec 64)) (_2!4953 V!24823)) )
))
(declare-datatypes ((List!15745 0))(
  ( (Nil!15742) (Cons!15741 (h!16870 tuple2!9886) (t!22094 List!15745)) )
))
(declare-datatypes ((ListLongMap!8723 0))(
  ( (ListLongMap!8724 (toList!4377 List!15745)) )
))
(declare-fun lt!371520 () ListLongMap!8723)

(declare-fun lt!371519 () ListLongMap!8723)

(assert (=> b!823728 (= lt!371520 lt!371519)))

(declare-fun zeroValueBefore!34 () V!24823)

(declare-fun zeroValueAfter!34 () V!24823)

(declare-fun minValue!754 () V!24823)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28200 0))(
  ( (Unit!28201) )
))
(declare-fun lt!371518 () Unit!28200)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!515 (array!45886 array!45884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24823 V!24823 V!24823 V!24823 (_ BitVec 32) Int) Unit!28200)

(assert (=> b!823728 (= lt!371518 (lemmaNoChangeToArrayThenSameMapNoExtras!515 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2399 (array!45886 array!45884 (_ BitVec 32) (_ BitVec 32) V!24823 V!24823 (_ BitVec 32) Int) ListLongMap!8723)

(assert (=> b!823728 (= lt!371519 (getCurrentListMapNoExtraKeys!2399 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823728 (= lt!371520 (getCurrentListMapNoExtraKeys!2399 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823729 () Bool)

(declare-fun res!561784 () Bool)

(assert (=> b!823729 (=> (not res!561784) (not e!458231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45886 (_ BitVec 32)) Bool)

(assert (=> b!823729 (= res!561784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561785 () Bool)

(assert (=> start!70964 (=> (not res!561785) (not e!458231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70964 (= res!561785 (validMask!0 mask!1312))))

(assert (=> start!70964 e!458231))

(assert (=> start!70964 tp_is_empty!14867))

(declare-fun array_inv!17521 (array!45886) Bool)

(assert (=> start!70964 (array_inv!17521 _keys!976)))

(assert (=> start!70964 true))

(declare-fun e!458235 () Bool)

(declare-fun array_inv!17522 (array!45884) Bool)

(assert (=> start!70964 (and (array_inv!17522 _values!788) e!458235)))

(assert (=> start!70964 tp!46222))

(declare-fun b!823730 () Bool)

(assert (=> b!823730 (= e!458232 tp_is_empty!14867)))

(declare-fun b!823731 () Bool)

(assert (=> b!823731 (= e!458235 (and e!458234 mapRes!23917))))

(declare-fun condMapEmpty!23917 () Bool)

(declare-fun mapDefault!23917 () ValueCell!7018)

