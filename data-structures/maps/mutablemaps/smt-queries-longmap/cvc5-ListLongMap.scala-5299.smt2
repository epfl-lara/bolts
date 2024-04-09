; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71022 () Bool)

(assert start!71022)

(declare-fun b_free!13201 () Bool)

(declare-fun b_next!13201 () Bool)

(assert (=> start!71022 (= b_free!13201 (not b_next!13201))))

(declare-fun tp!46357 () Bool)

(declare-fun b_and!22123 () Bool)

(assert (=> start!71022 (= tp!46357 b_and!22123)))

(declare-fun mapIsEmpty!23986 () Bool)

(declare-fun mapRes!23986 () Bool)

(assert (=> mapIsEmpty!23986 mapRes!23986))

(declare-fun mapNonEmpty!23986 () Bool)

(declare-fun tp!46356 () Bool)

(declare-fun e!458636 () Bool)

(assert (=> mapNonEmpty!23986 (= mapRes!23986 (and tp!46356 e!458636))))

(declare-datatypes ((V!24883 0))(
  ( (V!24884 (val!7503 Int)) )
))
(declare-datatypes ((ValueCell!7040 0))(
  ( (ValueCellFull!7040 (v!9932 V!24883)) (EmptyCell!7040) )
))
(declare-datatypes ((array!45968 0))(
  ( (array!45969 (arr!22027 (Array (_ BitVec 32) ValueCell!7040)) (size!22448 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45968)

(declare-fun mapValue!23986 () ValueCell!7040)

(declare-fun mapRest!23986 () (Array (_ BitVec 32) ValueCell!7040))

(declare-fun mapKey!23986 () (_ BitVec 32))

(assert (=> mapNonEmpty!23986 (= (arr!22027 _values!788) (store mapRest!23986 mapKey!23986 mapValue!23986))))

(declare-fun b!824294 () Bool)

(declare-fun res!562099 () Bool)

(declare-fun e!458639 () Bool)

(assert (=> b!824294 (=> (not res!562099) (not e!458639))))

(declare-datatypes ((array!45970 0))(
  ( (array!45971 (arr!22028 (Array (_ BitVec 32) (_ BitVec 64))) (size!22449 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45970)

(declare-datatypes ((List!15771 0))(
  ( (Nil!15768) (Cons!15767 (h!16896 (_ BitVec 64)) (t!22122 List!15771)) )
))
(declare-fun arrayNoDuplicates!0 (array!45970 (_ BitVec 32) List!15771) Bool)

(assert (=> b!824294 (= res!562099 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15768))))

(declare-fun b!824295 () Bool)

(declare-fun res!562103 () Bool)

(assert (=> b!824295 (=> (not res!562103) (not e!458639))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45970 (_ BitVec 32)) Bool)

(assert (=> b!824295 (= res!562103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824296 () Bool)

(declare-fun e!458638 () Bool)

(declare-fun tp_is_empty!14911 () Bool)

(assert (=> b!824296 (= e!458638 tp_is_empty!14911)))

(declare-fun b!824297 () Bool)

(declare-fun e!458637 () Bool)

(assert (=> b!824297 (= e!458639 (not e!458637))))

(declare-fun res!562102 () Bool)

(assert (=> b!824297 (=> res!562102 e!458637)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824297 (= res!562102 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9916 0))(
  ( (tuple2!9917 (_1!4968 (_ BitVec 64)) (_2!4968 V!24883)) )
))
(declare-datatypes ((List!15772 0))(
  ( (Nil!15769) (Cons!15768 (h!16897 tuple2!9916) (t!22123 List!15772)) )
))
(declare-datatypes ((ListLongMap!8753 0))(
  ( (ListLongMap!8754 (toList!4392 List!15772)) )
))
(declare-fun lt!371776 () ListLongMap!8753)

(declare-fun lt!371779 () ListLongMap!8753)

(assert (=> b!824297 (= lt!371776 lt!371779)))

(declare-fun zeroValueAfter!34 () V!24883)

(declare-fun minValue!754 () V!24883)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28230 0))(
  ( (Unit!28231) )
))
(declare-fun lt!371778 () Unit!28230)

(declare-fun zeroValueBefore!34 () V!24883)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!530 (array!45970 array!45968 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24883 V!24883 V!24883 V!24883 (_ BitVec 32) Int) Unit!28230)

(assert (=> b!824297 (= lt!371778 (lemmaNoChangeToArrayThenSameMapNoExtras!530 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2414 (array!45970 array!45968 (_ BitVec 32) (_ BitVec 32) V!24883 V!24883 (_ BitVec 32) Int) ListLongMap!8753)

(assert (=> b!824297 (= lt!371779 (getCurrentListMapNoExtraKeys!2414 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824297 (= lt!371776 (getCurrentListMapNoExtraKeys!2414 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824298 () Bool)

(assert (=> b!824298 (= e!458636 tp_is_empty!14911)))

(declare-fun b!824299 () Bool)

(assert (=> b!824299 (= e!458637 true)))

(declare-fun lt!371777 () ListLongMap!8753)

(declare-fun getCurrentListMap!2506 (array!45970 array!45968 (_ BitVec 32) (_ BitVec 32) V!24883 V!24883 (_ BitVec 32) Int) ListLongMap!8753)

(assert (=> b!824299 (= lt!371777 (getCurrentListMap!2506 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824300 () Bool)

(declare-fun res!562100 () Bool)

(assert (=> b!824300 (=> (not res!562100) (not e!458639))))

(assert (=> b!824300 (= res!562100 (and (= (size!22448 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22449 _keys!976) (size!22448 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824293 () Bool)

(declare-fun e!458641 () Bool)

(assert (=> b!824293 (= e!458641 (and e!458638 mapRes!23986))))

(declare-fun condMapEmpty!23986 () Bool)

(declare-fun mapDefault!23986 () ValueCell!7040)

