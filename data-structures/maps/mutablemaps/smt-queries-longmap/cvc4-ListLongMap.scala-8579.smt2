; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104732 () Bool)

(assert start!104732)

(declare-fun b_free!26513 () Bool)

(declare-fun b_next!26513 () Bool)

(assert (=> start!104732 (= b_free!26513 (not b_next!26513))))

(declare-fun tp!93026 () Bool)

(declare-fun b_and!44287 () Bool)

(assert (=> start!104732 (= tp!93026 b_and!44287)))

(declare-fun b!1248105 () Bool)

(declare-fun e!708231 () Bool)

(assert (=> b!1248105 (= e!708231 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47251 0))(
  ( (V!47252 (val!15770 Int)) )
))
(declare-fun zeroValue!871 () V!47251)

(declare-datatypes ((array!80497 0))(
  ( (array!80498 (arr!38812 (Array (_ BitVec 32) (_ BitVec 64))) (size!39349 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80497)

(declare-datatypes ((ValueCell!14944 0))(
  ( (ValueCellFull!14944 (v!18466 V!47251)) (EmptyCell!14944) )
))
(declare-datatypes ((array!80499 0))(
  ( (array!80500 (arr!38813 (Array (_ BitVec 32) ValueCell!14944)) (size!39350 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80499)

(declare-fun minValueBefore!43 () V!47251)

(declare-datatypes ((tuple2!20468 0))(
  ( (tuple2!20469 (_1!10244 (_ BitVec 64)) (_2!10244 V!47251)) )
))
(declare-datatypes ((List!27725 0))(
  ( (Nil!27722) (Cons!27721 (h!28930 tuple2!20468) (t!41201 List!27725)) )
))
(declare-datatypes ((ListLongMap!18353 0))(
  ( (ListLongMap!18354 (toList!9192 List!27725)) )
))
(declare-fun lt!563310 () ListLongMap!18353)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5575 (array!80497 array!80499 (_ BitVec 32) (_ BitVec 32) V!47251 V!47251 (_ BitVec 32) Int) ListLongMap!18353)

(assert (=> b!1248105 (= lt!563310 (getCurrentListMapNoExtraKeys!5575 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248106 () Bool)

(declare-fun e!708233 () Bool)

(declare-fun e!708232 () Bool)

(declare-fun mapRes!48880 () Bool)

(assert (=> b!1248106 (= e!708233 (and e!708232 mapRes!48880))))

(declare-fun condMapEmpty!48880 () Bool)

(declare-fun mapDefault!48880 () ValueCell!14944)

