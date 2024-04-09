; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70958 () Bool)

(assert start!70958)

(declare-fun b_free!13151 () Bool)

(declare-fun b_next!13151 () Bool)

(assert (=> start!70958 (= b_free!13151 (not b_next!13151))))

(declare-fun tp!46203 () Bool)

(declare-fun b_and!22065 () Bool)

(assert (=> start!70958 (= tp!46203 b_and!22065)))

(declare-fun b!823663 () Bool)

(declare-fun res!561751 () Bool)

(declare-fun e!458189 () Bool)

(assert (=> b!823663 (=> (not res!561751) (not e!458189))))

(declare-datatypes ((array!45872 0))(
  ( (array!45873 (arr!21980 (Array (_ BitVec 32) (_ BitVec 64))) (size!22401 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45872)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45872 (_ BitVec 32)) Bool)

(assert (=> b!823663 (= res!561751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561749 () Bool)

(assert (=> start!70958 (=> (not res!561749) (not e!458189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70958 (= res!561749 (validMask!0 mask!1312))))

(assert (=> start!70958 e!458189))

(declare-fun tp_is_empty!14861 () Bool)

(assert (=> start!70958 tp_is_empty!14861))

(declare-fun array_inv!17515 (array!45872) Bool)

(assert (=> start!70958 (array_inv!17515 _keys!976)))

(assert (=> start!70958 true))

(declare-datatypes ((V!24815 0))(
  ( (V!24816 (val!7478 Int)) )
))
(declare-datatypes ((ValueCell!7015 0))(
  ( (ValueCellFull!7015 (v!9907 V!24815)) (EmptyCell!7015) )
))
(declare-datatypes ((array!45874 0))(
  ( (array!45875 (arr!21981 (Array (_ BitVec 32) ValueCell!7015)) (size!22402 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45874)

(declare-fun e!458188 () Bool)

(declare-fun array_inv!17516 (array!45874) Bool)

(assert (=> start!70958 (and (array_inv!17516 _values!788) e!458188)))

(assert (=> start!70958 tp!46203))

(declare-fun b!823664 () Bool)

(declare-fun e!458190 () Bool)

(assert (=> b!823664 (= e!458190 tp_is_empty!14861)))

(declare-fun mapIsEmpty!23908 () Bool)

(declare-fun mapRes!23908 () Bool)

(assert (=> mapIsEmpty!23908 mapRes!23908))

(declare-fun b!823665 () Bool)

(declare-fun res!561748 () Bool)

(assert (=> b!823665 (=> (not res!561748) (not e!458189))))

(declare-datatypes ((List!15739 0))(
  ( (Nil!15736) (Cons!15735 (h!16864 (_ BitVec 64)) (t!22088 List!15739)) )
))
(declare-fun arrayNoDuplicates!0 (array!45872 (_ BitVec 32) List!15739) Bool)

(assert (=> b!823665 (= res!561748 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15736))))

(declare-fun b!823666 () Bool)

(declare-fun e!458187 () Bool)

(assert (=> b!823666 (= e!458187 tp_is_empty!14861)))

(declare-fun b!823667 () Bool)

(declare-fun res!561750 () Bool)

(assert (=> b!823667 (=> (not res!561750) (not e!458189))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823667 (= res!561750 (and (= (size!22402 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22401 _keys!976) (size!22402 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23908 () Bool)

(declare-fun tp!46204 () Bool)

(assert (=> mapNonEmpty!23908 (= mapRes!23908 (and tp!46204 e!458190))))

(declare-fun mapValue!23908 () ValueCell!7015)

(declare-fun mapRest!23908 () (Array (_ BitVec 32) ValueCell!7015))

(declare-fun mapKey!23908 () (_ BitVec 32))

(assert (=> mapNonEmpty!23908 (= (arr!21981 _values!788) (store mapRest!23908 mapKey!23908 mapValue!23908))))

(declare-fun b!823668 () Bool)

(assert (=> b!823668 (= e!458189 (not true))))

(declare-datatypes ((tuple2!9880 0))(
  ( (tuple2!9881 (_1!4950 (_ BitVec 64)) (_2!4950 V!24815)) )
))
(declare-datatypes ((List!15740 0))(
  ( (Nil!15737) (Cons!15736 (h!16865 tuple2!9880) (t!22089 List!15740)) )
))
(declare-datatypes ((ListLongMap!8717 0))(
  ( (ListLongMap!8718 (toList!4374 List!15740)) )
))
(declare-fun lt!371493 () ListLongMap!8717)

(declare-fun lt!371491 () ListLongMap!8717)

(assert (=> b!823668 (= lt!371493 lt!371491)))

(declare-fun zeroValueBefore!34 () V!24815)

(declare-fun zeroValueAfter!34 () V!24815)

(declare-fun minValue!754 () V!24815)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28194 0))(
  ( (Unit!28195) )
))
(declare-fun lt!371492 () Unit!28194)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!512 (array!45872 array!45874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24815 V!24815 V!24815 V!24815 (_ BitVec 32) Int) Unit!28194)

(assert (=> b!823668 (= lt!371492 (lemmaNoChangeToArrayThenSameMapNoExtras!512 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2396 (array!45872 array!45874 (_ BitVec 32) (_ BitVec 32) V!24815 V!24815 (_ BitVec 32) Int) ListLongMap!8717)

(assert (=> b!823668 (= lt!371491 (getCurrentListMapNoExtraKeys!2396 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823668 (= lt!371493 (getCurrentListMapNoExtraKeys!2396 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823669 () Bool)

(assert (=> b!823669 (= e!458188 (and e!458187 mapRes!23908))))

(declare-fun condMapEmpty!23908 () Bool)

(declare-fun mapDefault!23908 () ValueCell!7015)

