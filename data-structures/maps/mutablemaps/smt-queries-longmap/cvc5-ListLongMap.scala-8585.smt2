; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104776 () Bool)

(assert start!104776)

(declare-fun b_free!26545 () Bool)

(declare-fun b_next!26545 () Bool)

(assert (=> start!104776 (= b_free!26545 (not b_next!26545))))

(declare-fun tp!93126 () Bool)

(declare-fun b_and!44323 () Bool)

(assert (=> start!104776 (= tp!93126 b_and!44323)))

(declare-fun b!1248514 () Bool)

(declare-fun e!708519 () Bool)

(assert (=> b!1248514 (= e!708519 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-datatypes ((V!47295 0))(
  ( (V!47296 (val!15786 Int)) )
))
(declare-fun minValueAfter!43 () V!47295)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47295)

(declare-datatypes ((array!80563 0))(
  ( (array!80564 (arr!38844 (Array (_ BitVec 32) (_ BitVec 64))) (size!39381 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80563)

(declare-datatypes ((ValueCell!14960 0))(
  ( (ValueCellFull!14960 (v!18482 V!47295)) (EmptyCell!14960) )
))
(declare-datatypes ((array!80565 0))(
  ( (array!80566 (arr!38845 (Array (_ BitVec 32) ValueCell!14960)) (size!39382 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80565)

(declare-datatypes ((tuple2!20486 0))(
  ( (tuple2!20487 (_1!10253 (_ BitVec 64)) (_2!10253 V!47295)) )
))
(declare-datatypes ((List!27746 0))(
  ( (Nil!27743) (Cons!27742 (h!28951 tuple2!20486) (t!41224 List!27746)) )
))
(declare-datatypes ((ListLongMap!18371 0))(
  ( (ListLongMap!18372 (toList!9201 List!27746)) )
))
(declare-fun lt!563399 () ListLongMap!18371)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5584 (array!80563 array!80565 (_ BitVec 32) (_ BitVec 32) V!47295 V!47295 (_ BitVec 32) Int) ListLongMap!18371)

(assert (=> b!1248514 (= lt!563399 (getCurrentListMapNoExtraKeys!5584 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47295)

(declare-fun lt!563400 () ListLongMap!18371)

(assert (=> b!1248514 (= lt!563400 (getCurrentListMapNoExtraKeys!5584 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248516 () Bool)

(declare-fun e!708522 () Bool)

(declare-fun tp_is_empty!31447 () Bool)

(assert (=> b!1248516 (= e!708522 tp_is_empty!31447)))

(declare-fun b!1248517 () Bool)

(declare-fun res!833016 () Bool)

(assert (=> b!1248517 (=> (not res!833016) (not e!708519))))

(assert (=> b!1248517 (= res!833016 (and (= (size!39382 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39381 _keys!1118) (size!39382 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248515 () Bool)

(declare-fun e!708521 () Bool)

(declare-fun e!708520 () Bool)

(declare-fun mapRes!48931 () Bool)

(assert (=> b!1248515 (= e!708521 (and e!708520 mapRes!48931))))

(declare-fun condMapEmpty!48931 () Bool)

(declare-fun mapDefault!48931 () ValueCell!14960)

