; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104944 () Bool)

(assert start!104944)

(declare-fun b_free!26699 () Bool)

(declare-fun b_next!26699 () Bool)

(assert (=> start!104944 (= b_free!26699 (not b_next!26699))))

(declare-fun tp!93591 () Bool)

(declare-fun b_and!44485 () Bool)

(assert (=> start!104944 (= tp!93591 b_and!44485)))

(declare-fun b!1250331 () Bool)

(declare-fun e!709844 () Bool)

(declare-fun e!709845 () Bool)

(assert (=> b!1250331 (= e!709844 (not e!709845))))

(declare-fun res!834084 () Bool)

(assert (=> b!1250331 (=> res!834084 e!709845)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250331 (= res!834084 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47499 0))(
  ( (V!47500 (val!15863 Int)) )
))
(declare-datatypes ((tuple2!20584 0))(
  ( (tuple2!20585 (_1!10302 (_ BitVec 64)) (_2!10302 V!47499)) )
))
(declare-datatypes ((List!27842 0))(
  ( (Nil!27839) (Cons!27838 (h!29047 tuple2!20584) (t!41322 List!27842)) )
))
(declare-datatypes ((ListLongMap!18469 0))(
  ( (ListLongMap!18470 (toList!9250 List!27842)) )
))
(declare-fun lt!564162 () ListLongMap!18469)

(declare-fun lt!564163 () ListLongMap!18469)

(assert (=> b!1250331 (= lt!564162 lt!564163)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47499)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47499)

(declare-datatypes ((Unit!41481 0))(
  ( (Unit!41482) )
))
(declare-fun lt!564160 () Unit!41481)

(declare-datatypes ((array!80851 0))(
  ( (array!80852 (arr!38987 (Array (_ BitVec 32) (_ BitVec 64))) (size!39524 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80851)

(declare-datatypes ((ValueCell!15037 0))(
  ( (ValueCellFull!15037 (v!18559 V!47499)) (EmptyCell!15037) )
))
(declare-datatypes ((array!80853 0))(
  ( (array!80854 (arr!38988 (Array (_ BitVec 32) ValueCell!15037)) (size!39525 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80853)

(declare-fun minValueBefore!43 () V!47499)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!949 (array!80851 array!80853 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47499 V!47499 V!47499 V!47499 (_ BitVec 32) Int) Unit!41481)

(assert (=> b!1250331 (= lt!564160 (lemmaNoChangeToArrayThenSameMapNoExtras!949 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5631 (array!80851 array!80853 (_ BitVec 32) (_ BitVec 32) V!47499 V!47499 (_ BitVec 32) Int) ListLongMap!18469)

(assert (=> b!1250331 (= lt!564163 (getCurrentListMapNoExtraKeys!5631 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250331 (= lt!564162 (getCurrentListMapNoExtraKeys!5631 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250332 () Bool)

(declare-fun e!709847 () Bool)

(declare-fun tp_is_empty!31601 () Bool)

(assert (=> b!1250332 (= e!709847 tp_is_empty!31601)))

(declare-fun b!1250333 () Bool)

(declare-fun e!709846 () Bool)

(assert (=> b!1250333 (= e!709846 true)))

(declare-fun lt!564161 () ListLongMap!18469)

(declare-fun -!2018 (ListLongMap!18469 (_ BitVec 64)) ListLongMap!18469)

(assert (=> b!1250333 (= (-!2018 lt!564161 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564161)))

(declare-fun lt!564159 () Unit!41481)

(declare-fun removeNotPresentStillSame!85 (ListLongMap!18469 (_ BitVec 64)) Unit!41481)

(assert (=> b!1250333 (= lt!564159 (removeNotPresentStillSame!85 lt!564161 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250334 () Bool)

(declare-fun e!709848 () Bool)

(declare-fun e!709849 () Bool)

(declare-fun mapRes!49165 () Bool)

(assert (=> b!1250334 (= e!709848 (and e!709849 mapRes!49165))))

(declare-fun condMapEmpty!49165 () Bool)

(declare-fun mapDefault!49165 () ValueCell!15037)

