; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104782 () Bool)

(assert start!104782)

(declare-fun b_free!26551 () Bool)

(declare-fun b_next!26551 () Bool)

(assert (=> start!104782 (= b_free!26551 (not b_next!26551))))

(declare-fun tp!93143 () Bool)

(declare-fun b_and!44329 () Bool)

(assert (=> start!104782 (= tp!93143 b_and!44329)))

(declare-fun b!1248577 () Bool)

(declare-fun e!708566 () Bool)

(declare-fun tp_is_empty!31453 () Bool)

(assert (=> b!1248577 (= e!708566 tp_is_empty!31453)))

(declare-fun b!1248578 () Bool)

(declare-fun res!833052 () Bool)

(declare-fun e!708564 () Bool)

(assert (=> b!1248578 (=> (not res!833052) (not e!708564))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80575 0))(
  ( (array!80576 (arr!38850 (Array (_ BitVec 32) (_ BitVec 64))) (size!39387 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80575)

(declare-datatypes ((V!47303 0))(
  ( (V!47304 (val!15789 Int)) )
))
(declare-datatypes ((ValueCell!14963 0))(
  ( (ValueCellFull!14963 (v!18485 V!47303)) (EmptyCell!14963) )
))
(declare-datatypes ((array!80577 0))(
  ( (array!80578 (arr!38851 (Array (_ BitVec 32) ValueCell!14963)) (size!39388 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80577)

(assert (=> b!1248578 (= res!833052 (and (= (size!39388 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39387 _keys!1118) (size!39388 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248579 () Bool)

(assert (=> b!1248579 (= e!708564 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20490 0))(
  ( (tuple2!20491 (_1!10255 (_ BitVec 64)) (_2!10255 V!47303)) )
))
(declare-datatypes ((List!27749 0))(
  ( (Nil!27746) (Cons!27745 (h!28954 tuple2!20490) (t!41227 List!27749)) )
))
(declare-datatypes ((ListLongMap!18375 0))(
  ( (ListLongMap!18376 (toList!9203 List!27749)) )
))
(declare-fun lt!563418 () ListLongMap!18375)

(declare-fun minValueAfter!43 () V!47303)

(declare-fun zeroValue!871 () V!47303)

(declare-fun getCurrentListMapNoExtraKeys!5586 (array!80575 array!80577 (_ BitVec 32) (_ BitVec 32) V!47303 V!47303 (_ BitVec 32) Int) ListLongMap!18375)

(assert (=> b!1248579 (= lt!563418 (getCurrentListMapNoExtraKeys!5586 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563417 () ListLongMap!18375)

(declare-fun minValueBefore!43 () V!47303)

(assert (=> b!1248579 (= lt!563417 (getCurrentListMapNoExtraKeys!5586 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248581 () Bool)

(declare-fun e!708563 () Bool)

(declare-fun e!708567 () Bool)

(declare-fun mapRes!48940 () Bool)

(assert (=> b!1248581 (= e!708563 (and e!708567 mapRes!48940))))

(declare-fun condMapEmpty!48940 () Bool)

(declare-fun mapDefault!48940 () ValueCell!14963)

