; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106234 () Bool)

(assert start!106234)

(declare-fun b_free!27535 () Bool)

(declare-fun b_next!27535 () Bool)

(assert (=> start!106234 (= b_free!27535 (not b_next!27535))))

(declare-fun tp!96171 () Bool)

(declare-fun b_and!45577 () Bool)

(assert (=> start!106234 (= tp!96171 b_and!45577)))

(declare-fun b!1264302 () Bool)

(declare-fun e!719942 () Bool)

(declare-fun tp_is_empty!32437 () Bool)

(assert (=> b!1264302 (= e!719942 tp_is_empty!32437)))

(declare-fun b!1264303 () Bool)

(declare-fun e!719945 () Bool)

(declare-fun e!719946 () Bool)

(assert (=> b!1264303 (= e!719945 (not e!719946))))

(declare-fun res!842076 () Bool)

(assert (=> b!1264303 (=> res!842076 e!719946)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264303 (= res!842076 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48615 0))(
  ( (V!48616 (val!16281 Int)) )
))
(declare-datatypes ((tuple2!21230 0))(
  ( (tuple2!21231 (_1!10625 (_ BitVec 64)) (_2!10625 V!48615)) )
))
(declare-datatypes ((List!28446 0))(
  ( (Nil!28443) (Cons!28442 (h!29651 tuple2!21230) (t!41974 List!28446)) )
))
(declare-datatypes ((ListLongMap!19115 0))(
  ( (ListLongMap!19116 (toList!9573 List!28446)) )
))
(declare-fun lt!573673 () ListLongMap!19115)

(declare-fun lt!573674 () ListLongMap!19115)

(assert (=> b!1264303 (= lt!573673 lt!573674)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48615)

(declare-datatypes ((Unit!42093 0))(
  ( (Unit!42094) )
))
(declare-fun lt!573671 () Unit!42093)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48615)

(declare-datatypes ((array!82487 0))(
  ( (array!82488 (arr!39781 (Array (_ BitVec 32) (_ BitVec 64))) (size!40318 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82487)

(declare-datatypes ((ValueCell!15455 0))(
  ( (ValueCellFull!15455 (v!18995 V!48615)) (EmptyCell!15455) )
))
(declare-datatypes ((array!82489 0))(
  ( (array!82490 (arr!39782 (Array (_ BitVec 32) ValueCell!15455)) (size!40319 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82489)

(declare-fun minValueBefore!43 () V!48615)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1207 (array!82487 array!82489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48615 V!48615 V!48615 V!48615 (_ BitVec 32) Int) Unit!42093)

(assert (=> b!1264303 (= lt!573671 (lemmaNoChangeToArrayThenSameMapNoExtras!1207 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5911 (array!82487 array!82489 (_ BitVec 32) (_ BitVec 32) V!48615 V!48615 (_ BitVec 32) Int) ListLongMap!19115)

(assert (=> b!1264303 (= lt!573674 (getCurrentListMapNoExtraKeys!5911 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264303 (= lt!573673 (getCurrentListMapNoExtraKeys!5911 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264304 () Bool)

(declare-fun res!842074 () Bool)

(assert (=> b!1264304 (=> (not res!842074) (not e!719945))))

(assert (=> b!1264304 (= res!842074 (and (= (size!40319 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40318 _keys!1118) (size!40319 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1264305 () Bool)

(declare-fun e!719941 () Bool)

(declare-fun mapRes!50491 () Bool)

(assert (=> b!1264305 (= e!719941 (and e!719942 mapRes!50491))))

(declare-fun condMapEmpty!50491 () Bool)

(declare-fun mapDefault!50491 () ValueCell!15455)

