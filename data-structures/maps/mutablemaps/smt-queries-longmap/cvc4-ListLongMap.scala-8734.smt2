; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105938 () Bool)

(assert start!105938)

(declare-fun b_free!27443 () Bool)

(declare-fun b_next!27443 () Bool)

(assert (=> start!105938 (= b_free!27443 (not b_next!27443))))

(declare-fun tp!95861 () Bool)

(declare-fun b_and!45361 () Bool)

(assert (=> start!105938 (= tp!95861 b_and!45361)))

(declare-fun b!1261301 () Bool)

(declare-fun e!717893 () Bool)

(assert (=> b!1261301 (= e!717893 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48491 0))(
  ( (V!48492 (val!16235 Int)) )
))
(declare-fun minValueAfter!43 () V!48491)

(declare-datatypes ((tuple2!21156 0))(
  ( (tuple2!21157 (_1!10588 (_ BitVec 64)) (_2!10588 V!48491)) )
))
(declare-datatypes ((List!28377 0))(
  ( (Nil!28374) (Cons!28373 (h!29582 tuple2!21156) (t!41883 List!28377)) )
))
(declare-datatypes ((ListLongMap!19041 0))(
  ( (ListLongMap!19042 (toList!9536 List!28377)) )
))
(declare-fun lt!571553 () ListLongMap!19041)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48491)

(declare-datatypes ((array!82289 0))(
  ( (array!82290 (arr!39693 (Array (_ BitVec 32) (_ BitVec 64))) (size!40230 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82289)

(declare-datatypes ((ValueCell!15409 0))(
  ( (ValueCellFull!15409 (v!18939 V!48491)) (EmptyCell!15409) )
))
(declare-datatypes ((array!82291 0))(
  ( (array!82292 (arr!39694 (Array (_ BitVec 32) ValueCell!15409)) (size!40231 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82291)

(declare-fun getCurrentListMapNoExtraKeys!5877 (array!82289 array!82291 (_ BitVec 32) (_ BitVec 32) V!48491 V!48491 (_ BitVec 32) Int) ListLongMap!19041)

(assert (=> b!1261301 (= lt!571553 (getCurrentListMapNoExtraKeys!5877 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571552 () ListLongMap!19041)

(declare-fun minValueBefore!43 () V!48491)

(assert (=> b!1261301 (= lt!571552 (getCurrentListMapNoExtraKeys!5877 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261302 () Bool)

(declare-fun res!840571 () Bool)

(assert (=> b!1261302 (=> (not res!840571) (not e!717893))))

(assert (=> b!1261302 (= res!840571 (and (= (size!40231 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40230 _keys!1118) (size!40231 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261303 () Bool)

(declare-fun e!717895 () Bool)

(declare-fun tp_is_empty!32345 () Bool)

(assert (=> b!1261303 (= e!717895 tp_is_empty!32345)))

(declare-fun b!1261304 () Bool)

(declare-fun e!717894 () Bool)

(assert (=> b!1261304 (= e!717894 tp_is_empty!32345)))

(declare-fun b!1261305 () Bool)

(declare-fun res!840574 () Bool)

(assert (=> b!1261305 (=> (not res!840574) (not e!717893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82289 (_ BitVec 32)) Bool)

(assert (=> b!1261305 (= res!840574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261306 () Bool)

(declare-fun res!840573 () Bool)

(assert (=> b!1261306 (=> (not res!840573) (not e!717893))))

(declare-datatypes ((List!28378 0))(
  ( (Nil!28375) (Cons!28374 (h!29583 (_ BitVec 64)) (t!41884 List!28378)) )
))
(declare-fun arrayNoDuplicates!0 (array!82289 (_ BitVec 32) List!28378) Bool)

(assert (=> b!1261306 (= res!840573 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28375))))

(declare-fun b!1261307 () Bool)

(declare-fun e!717892 () Bool)

(declare-fun mapRes!50320 () Bool)

(assert (=> b!1261307 (= e!717892 (and e!717895 mapRes!50320))))

(declare-fun condMapEmpty!50320 () Bool)

(declare-fun mapDefault!50320 () ValueCell!15409)

