; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104946 () Bool)

(assert start!104946)

(declare-fun b_free!26701 () Bool)

(declare-fun b_next!26701 () Bool)

(assert (=> start!104946 (= b_free!26701 (not b_next!26701))))

(declare-fun tp!93596 () Bool)

(declare-fun b_and!44487 () Bool)

(assert (=> start!104946 (= tp!93596 b_and!44487)))

(declare-fun b!1250358 () Bool)

(declare-fun e!709865 () Bool)

(declare-fun tp_is_empty!31603 () Bool)

(assert (=> b!1250358 (= e!709865 tp_is_empty!31603)))

(declare-fun b!1250359 () Bool)

(declare-fun e!709866 () Bool)

(declare-fun e!709870 () Bool)

(assert (=> b!1250359 (= e!709866 (not e!709870))))

(declare-fun res!834102 () Bool)

(assert (=> b!1250359 (=> res!834102 e!709870)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250359 (= res!834102 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47503 0))(
  ( (V!47504 (val!15864 Int)) )
))
(declare-datatypes ((tuple2!20586 0))(
  ( (tuple2!20587 (_1!10303 (_ BitVec 64)) (_2!10303 V!47503)) )
))
(declare-datatypes ((List!27843 0))(
  ( (Nil!27840) (Cons!27839 (h!29048 tuple2!20586) (t!41323 List!27843)) )
))
(declare-datatypes ((ListLongMap!18471 0))(
  ( (ListLongMap!18472 (toList!9251 List!27843)) )
))
(declare-fun lt!564177 () ListLongMap!18471)

(declare-fun lt!564175 () ListLongMap!18471)

(assert (=> b!1250359 (= lt!564177 lt!564175)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47503)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47503)

(declare-datatypes ((ValueCell!15038 0))(
  ( (ValueCellFull!15038 (v!18560 V!47503)) (EmptyCell!15038) )
))
(declare-datatypes ((array!80855 0))(
  ( (array!80856 (arr!38989 (Array (_ BitVec 32) ValueCell!15038)) (size!39526 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80855)

(declare-fun minValueBefore!43 () V!47503)

(declare-datatypes ((Unit!41483 0))(
  ( (Unit!41484) )
))
(declare-fun lt!564176 () Unit!41483)

(declare-datatypes ((array!80857 0))(
  ( (array!80858 (arr!38990 (Array (_ BitVec 32) (_ BitVec 64))) (size!39527 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80857)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!950 (array!80857 array!80855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47503 V!47503 V!47503 V!47503 (_ BitVec 32) Int) Unit!41483)

(assert (=> b!1250359 (= lt!564176 (lemmaNoChangeToArrayThenSameMapNoExtras!950 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5632 (array!80857 array!80855 (_ BitVec 32) (_ BitVec 32) V!47503 V!47503 (_ BitVec 32) Int) ListLongMap!18471)

(assert (=> b!1250359 (= lt!564175 (getCurrentListMapNoExtraKeys!5632 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250359 (= lt!564177 (getCurrentListMapNoExtraKeys!5632 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834106 () Bool)

(assert (=> start!104946 (=> (not res!834106) (not e!709866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104946 (= res!834106 (validMask!0 mask!1466))))

(assert (=> start!104946 e!709866))

(assert (=> start!104946 true))

(assert (=> start!104946 tp!93596))

(assert (=> start!104946 tp_is_empty!31603))

(declare-fun array_inv!29675 (array!80857) Bool)

(assert (=> start!104946 (array_inv!29675 _keys!1118)))

(declare-fun e!709868 () Bool)

(declare-fun array_inv!29676 (array!80855) Bool)

(assert (=> start!104946 (and (array_inv!29676 _values!914) e!709868)))

(declare-fun b!1250360 () Bool)

(declare-fun res!834105 () Bool)

(assert (=> b!1250360 (=> (not res!834105) (not e!709866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80857 (_ BitVec 32)) Bool)

(assert (=> b!1250360 (= res!834105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49168 () Bool)

(declare-fun mapRes!49168 () Bool)

(assert (=> mapIsEmpty!49168 mapRes!49168))

(declare-fun b!1250361 () Bool)

(declare-fun res!834103 () Bool)

(assert (=> b!1250361 (=> (not res!834103) (not e!709866))))

(declare-datatypes ((List!27844 0))(
  ( (Nil!27841) (Cons!27840 (h!29049 (_ BitVec 64)) (t!41324 List!27844)) )
))
(declare-fun arrayNoDuplicates!0 (array!80857 (_ BitVec 32) List!27844) Bool)

(assert (=> b!1250361 (= res!834103 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27841))))

(declare-fun b!1250362 () Bool)

(declare-fun e!709867 () Bool)

(assert (=> b!1250362 (= e!709867 tp_is_empty!31603)))

(declare-fun b!1250363 () Bool)

(declare-fun e!709864 () Bool)

(assert (=> b!1250363 (= e!709864 true)))

(declare-fun lt!564178 () ListLongMap!18471)

(declare-fun -!2019 (ListLongMap!18471 (_ BitVec 64)) ListLongMap!18471)

(assert (=> b!1250363 (= (-!2019 lt!564178 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564178)))

(declare-fun lt!564174 () Unit!41483)

(declare-fun removeNotPresentStillSame!86 (ListLongMap!18471 (_ BitVec 64)) Unit!41483)

(assert (=> b!1250363 (= lt!564174 (removeNotPresentStillSame!86 lt!564178 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!49168 () Bool)

(declare-fun tp!93597 () Bool)

(assert (=> mapNonEmpty!49168 (= mapRes!49168 (and tp!93597 e!709867))))

(declare-fun mapValue!49168 () ValueCell!15038)

(declare-fun mapRest!49168 () (Array (_ BitVec 32) ValueCell!15038))

(declare-fun mapKey!49168 () (_ BitVec 32))

(assert (=> mapNonEmpty!49168 (= (arr!38989 _values!914) (store mapRest!49168 mapKey!49168 mapValue!49168))))

(declare-fun b!1250364 () Bool)

(assert (=> b!1250364 (= e!709868 (and e!709865 mapRes!49168))))

(declare-fun condMapEmpty!49168 () Bool)

(declare-fun mapDefault!49168 () ValueCell!15038)

