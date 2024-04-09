; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104734 () Bool)

(assert start!104734)

(declare-fun b_free!26515 () Bool)

(declare-fun b_next!26515 () Bool)

(assert (=> start!104734 (= b_free!26515 (not b_next!26515))))

(declare-fun tp!93032 () Bool)

(declare-fun b_and!44289 () Bool)

(assert (=> start!104734 (= tp!93032 b_and!44289)))

(declare-fun b!1248126 () Bool)

(declare-fun e!708246 () Bool)

(declare-fun tp_is_empty!31417 () Bool)

(assert (=> b!1248126 (= e!708246 tp_is_empty!31417)))

(declare-fun b!1248127 () Bool)

(declare-fun res!832808 () Bool)

(declare-fun e!708249 () Bool)

(assert (=> b!1248127 (=> (not res!832808) (not e!708249))))

(declare-datatypes ((array!80501 0))(
  ( (array!80502 (arr!38814 (Array (_ BitVec 32) (_ BitVec 64))) (size!39351 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80501)

(declare-datatypes ((List!27726 0))(
  ( (Nil!27723) (Cons!27722 (h!28931 (_ BitVec 64)) (t!41202 List!27726)) )
))
(declare-fun arrayNoDuplicates!0 (array!80501 (_ BitVec 32) List!27726) Bool)

(assert (=> b!1248127 (= res!832808 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27723))))

(declare-fun b!1248128 () Bool)

(assert (=> b!1248128 (= e!708249 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47255 0))(
  ( (V!47256 (val!15771 Int)) )
))
(declare-fun zeroValue!871 () V!47255)

(declare-datatypes ((ValueCell!14945 0))(
  ( (ValueCellFull!14945 (v!18467 V!47255)) (EmptyCell!14945) )
))
(declare-datatypes ((array!80503 0))(
  ( (array!80504 (arr!38815 (Array (_ BitVec 32) ValueCell!14945)) (size!39352 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80503)

(declare-fun minValueBefore!43 () V!47255)

(declare-datatypes ((tuple2!20470 0))(
  ( (tuple2!20471 (_1!10245 (_ BitVec 64)) (_2!10245 V!47255)) )
))
(declare-datatypes ((List!27727 0))(
  ( (Nil!27724) (Cons!27723 (h!28932 tuple2!20470) (t!41203 List!27727)) )
))
(declare-datatypes ((ListLongMap!18355 0))(
  ( (ListLongMap!18356 (toList!9193 List!27727)) )
))
(declare-fun lt!563313 () ListLongMap!18355)

(declare-fun getCurrentListMapNoExtraKeys!5576 (array!80501 array!80503 (_ BitVec 32) (_ BitVec 32) V!47255 V!47255 (_ BitVec 32) Int) ListLongMap!18355)

(assert (=> b!1248128 (= lt!563313 (getCurrentListMapNoExtraKeys!5576 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!832806 () Bool)

(assert (=> start!104734 (=> (not res!832806) (not e!708249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104734 (= res!832806 (validMask!0 mask!1466))))

(assert (=> start!104734 e!708249))

(assert (=> start!104734 true))

(assert (=> start!104734 tp!93032))

(assert (=> start!104734 tp_is_empty!31417))

(declare-fun array_inv!29553 (array!80501) Bool)

(assert (=> start!104734 (array_inv!29553 _keys!1118)))

(declare-fun e!708247 () Bool)

(declare-fun array_inv!29554 (array!80503) Bool)

(assert (=> start!104734 (and (array_inv!29554 _values!914) e!708247)))

(declare-fun b!1248129 () Bool)

(declare-fun mapRes!48883 () Bool)

(assert (=> b!1248129 (= e!708247 (and e!708246 mapRes!48883))))

(declare-fun condMapEmpty!48883 () Bool)

(declare-fun mapDefault!48883 () ValueCell!14945)

