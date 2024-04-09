; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70896 () Bool)

(assert start!70896)

(declare-fun b_free!13109 () Bool)

(declare-fun b_next!13109 () Bool)

(assert (=> start!70896 (= b_free!13109 (not b_next!13109))))

(declare-fun tp!46075 () Bool)

(declare-fun b_and!22011 () Bool)

(assert (=> start!70896 (= tp!46075 b_and!22011)))

(declare-fun b!823004 () Bool)

(declare-fun e!457722 () Bool)

(assert (=> b!823004 (= e!457722 true)))

(declare-datatypes ((V!24759 0))(
  ( (V!24760 (val!7457 Int)) )
))
(declare-datatypes ((tuple2!9852 0))(
  ( (tuple2!9853 (_1!4936 (_ BitVec 64)) (_2!4936 V!24759)) )
))
(declare-datatypes ((List!15710 0))(
  ( (Nil!15707) (Cons!15706 (h!16835 tuple2!9852) (t!22057 List!15710)) )
))
(declare-datatypes ((ListLongMap!8689 0))(
  ( (ListLongMap!8690 (toList!4360 List!15710)) )
))
(declare-fun lt!370889 () ListLongMap!8689)

(declare-fun lt!370892 () ListLongMap!8689)

(declare-fun lt!370891 () tuple2!9852)

(declare-fun +!1862 (ListLongMap!8689 tuple2!9852) ListLongMap!8689)

(assert (=> b!823004 (= lt!370889 (+!1862 lt!370892 lt!370891))))

(declare-datatypes ((Unit!28164 0))(
  ( (Unit!28165) )
))
(declare-fun lt!370888 () Unit!28164)

(declare-fun lt!370894 () ListLongMap!8689)

(declare-fun zeroValueAfter!34 () V!24759)

(declare-fun minValue!754 () V!24759)

(declare-fun addCommutativeForDiffKeys!457 (ListLongMap!8689 (_ BitVec 64) V!24759 (_ BitVec 64) V!24759) Unit!28164)

(assert (=> b!823004 (= lt!370888 (addCommutativeForDiffKeys!457 lt!370894 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370895 () ListLongMap!8689)

(assert (=> b!823004 (= lt!370895 lt!370889)))

(declare-fun lt!370893 () tuple2!9852)

(assert (=> b!823004 (= lt!370889 (+!1862 (+!1862 lt!370894 lt!370891) lt!370893))))

(assert (=> b!823004 (= lt!370891 (tuple2!9853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370896 () ListLongMap!8689)

(assert (=> b!823004 (= lt!370896 lt!370892)))

(assert (=> b!823004 (= lt!370892 (+!1862 lt!370894 lt!370893))))

(assert (=> b!823004 (= lt!370893 (tuple2!9853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45792 0))(
  ( (array!45793 (arr!21941 (Array (_ BitVec 32) (_ BitVec 64))) (size!22362 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45792)

(declare-datatypes ((ValueCell!6994 0))(
  ( (ValueCellFull!6994 (v!9885 V!24759)) (EmptyCell!6994) )
))
(declare-datatypes ((array!45794 0))(
  ( (array!45795 (arr!21942 (Array (_ BitVec 32) ValueCell!6994)) (size!22363 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45794)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2492 (array!45792 array!45794 (_ BitVec 32) (_ BitVec 32) V!24759 V!24759 (_ BitVec 32) Int) ListLongMap!8689)

(assert (=> b!823004 (= lt!370895 (getCurrentListMap!2492 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24759)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!823004 (= lt!370896 (getCurrentListMap!2492 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823005 () Bool)

(declare-fun e!457721 () Bool)

(declare-fun tp_is_empty!14819 () Bool)

(assert (=> b!823005 (= e!457721 tp_is_empty!14819)))

(declare-fun mapNonEmpty!23842 () Bool)

(declare-fun mapRes!23842 () Bool)

(declare-fun tp!46074 () Bool)

(assert (=> mapNonEmpty!23842 (= mapRes!23842 (and tp!46074 e!457721))))

(declare-fun mapKey!23842 () (_ BitVec 32))

(declare-fun mapValue!23842 () ValueCell!6994)

(declare-fun mapRest!23842 () (Array (_ BitVec 32) ValueCell!6994))

(assert (=> mapNonEmpty!23842 (= (arr!21942 _values!788) (store mapRest!23842 mapKey!23842 mapValue!23842))))

(declare-fun b!823006 () Bool)

(declare-fun res!561382 () Bool)

(declare-fun e!457723 () Bool)

(assert (=> b!823006 (=> (not res!561382) (not e!457723))))

(declare-datatypes ((List!15711 0))(
  ( (Nil!15708) (Cons!15707 (h!16836 (_ BitVec 64)) (t!22058 List!15711)) )
))
(declare-fun arrayNoDuplicates!0 (array!45792 (_ BitVec 32) List!15711) Bool)

(assert (=> b!823006 (= res!561382 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15708))))

(declare-fun b!823007 () Bool)

(declare-fun e!457724 () Bool)

(assert (=> b!823007 (= e!457724 tp_is_empty!14819)))

(declare-fun b!823008 () Bool)

(declare-fun e!457726 () Bool)

(assert (=> b!823008 (= e!457726 (and e!457724 mapRes!23842))))

(declare-fun condMapEmpty!23842 () Bool)

(declare-fun mapDefault!23842 () ValueCell!6994)

