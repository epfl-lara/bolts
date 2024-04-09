; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105538 () Bool)

(assert start!105538)

(declare-fun b_free!27139 () Bool)

(declare-fun b_next!27139 () Bool)

(assert (=> start!105538 (= b_free!27139 (not b_next!27139))))

(declare-fun tp!94934 () Bool)

(declare-fun b_and!45005 () Bool)

(assert (=> start!105538 (= tp!94934 b_and!45005)))

(declare-fun b!1256852 () Bool)

(declare-fun e!714635 () Bool)

(declare-fun tp_is_empty!32041 () Bool)

(assert (=> b!1256852 (= e!714635 tp_is_empty!32041)))

(declare-fun b!1256853 () Bool)

(declare-fun e!714633 () Bool)

(assert (=> b!1256853 (= e!714633 true)))

(declare-datatypes ((V!48087 0))(
  ( (V!48088 (val!16083 Int)) )
))
(declare-datatypes ((tuple2!20932 0))(
  ( (tuple2!20933 (_1!10476 (_ BitVec 64)) (_2!10476 V!48087)) )
))
(declare-datatypes ((List!28165 0))(
  ( (Nil!28162) (Cons!28161 (h!29370 tuple2!20932) (t!41661 List!28165)) )
))
(declare-datatypes ((ListLongMap!18817 0))(
  ( (ListLongMap!18818 (toList!9424 List!28165)) )
))
(declare-fun lt!568378 () ListLongMap!18817)

(declare-fun -!2100 (ListLongMap!18817 (_ BitVec 64)) ListLongMap!18817)

(assert (=> b!1256853 (= (-!2100 lt!568378 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568378)))

(declare-datatypes ((Unit!41820 0))(
  ( (Unit!41821) )
))
(declare-fun lt!568374 () Unit!41820)

(declare-fun removeNotPresentStillSame!133 (ListLongMap!18817 (_ BitVec 64)) Unit!41820)

(assert (=> b!1256853 (= lt!568374 (removeNotPresentStillSame!133 lt!568378 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256854 () Bool)

(declare-fun res!837937 () Bool)

(declare-fun e!714630 () Bool)

(assert (=> b!1256854 (=> (not res!837937) (not e!714630))))

(declare-datatypes ((array!81715 0))(
  ( (array!81716 (arr!39411 (Array (_ BitVec 32) (_ BitVec 64))) (size!39948 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81715)

(declare-datatypes ((List!28166 0))(
  ( (Nil!28163) (Cons!28162 (h!29371 (_ BitVec 64)) (t!41662 List!28166)) )
))
(declare-fun arrayNoDuplicates!0 (array!81715 (_ BitVec 32) List!28166) Bool)

(assert (=> b!1256854 (= res!837937 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28163))))

(declare-fun mapIsEmpty!49849 () Bool)

(declare-fun mapRes!49849 () Bool)

(assert (=> mapIsEmpty!49849 mapRes!49849))

(declare-fun b!1256855 () Bool)

(declare-fun res!837934 () Bool)

(assert (=> b!1256855 (=> (not res!837934) (not e!714630))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15257 0))(
  ( (ValueCellFull!15257 (v!18784 V!48087)) (EmptyCell!15257) )
))
(declare-datatypes ((array!81717 0))(
  ( (array!81718 (arr!39412 (Array (_ BitVec 32) ValueCell!15257)) (size!39949 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81717)

(assert (=> b!1256855 (= res!837934 (and (= (size!39949 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39948 _keys!1118) (size!39949 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256856 () Bool)

(declare-fun res!837935 () Bool)

(assert (=> b!1256856 (=> (not res!837935) (not e!714630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81715 (_ BitVec 32)) Bool)

(assert (=> b!1256856 (= res!837935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256857 () Bool)

(declare-fun e!714631 () Bool)

(assert (=> b!1256857 (= e!714631 e!714633)))

(declare-fun res!837936 () Bool)

(assert (=> b!1256857 (=> res!837936 e!714633)))

(declare-fun contains!7579 (ListLongMap!18817 (_ BitVec 64)) Bool)

(assert (=> b!1256857 (= res!837936 (contains!7579 lt!568378 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48087)

(declare-fun minValueBefore!43 () V!48087)

(declare-fun getCurrentListMap!4583 (array!81715 array!81717 (_ BitVec 32) (_ BitVec 32) V!48087 V!48087 (_ BitVec 32) Int) ListLongMap!18817)

(assert (=> b!1256857 (= lt!568378 (getCurrentListMap!4583 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256858 () Bool)

(declare-fun e!714634 () Bool)

(assert (=> b!1256858 (= e!714634 (and e!714635 mapRes!49849))))

(declare-fun condMapEmpty!49849 () Bool)

(declare-fun mapDefault!49849 () ValueCell!15257)

