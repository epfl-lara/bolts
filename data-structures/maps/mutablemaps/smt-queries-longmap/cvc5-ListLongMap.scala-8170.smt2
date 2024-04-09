; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99922 () Bool)

(assert start!99922)

(declare-fun b_free!25465 () Bool)

(declare-fun b_next!25465 () Bool)

(assert (=> start!99922 (= b_free!25465 (not b_next!25465))))

(declare-fun tp!89109 () Bool)

(declare-fun b_and!41811 () Bool)

(assert (=> start!99922 (= tp!89109 b_and!41811)))

(declare-fun res!790351 () Bool)

(declare-fun e!675827 () Bool)

(assert (=> start!99922 (=> (not res!790351) (not e!675827))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76758 0))(
  ( (array!76759 (arr!37025 (Array (_ BitVec 32) (_ BitVec 64))) (size!37562 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76758)

(assert (=> start!99922 (= res!790351 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37562 _keys!1208))))))

(assert (=> start!99922 e!675827))

(declare-fun tp_is_empty!29995 () Bool)

(assert (=> start!99922 tp_is_empty!29995))

(declare-fun array_inv!28136 (array!76758) Bool)

(assert (=> start!99922 (array_inv!28136 _keys!1208)))

(assert (=> start!99922 true))

(assert (=> start!99922 tp!89109))

(declare-datatypes ((V!45121 0))(
  ( (V!45122 (val!15054 Int)) )
))
(declare-datatypes ((ValueCell!14288 0))(
  ( (ValueCellFull!14288 (v!17693 V!45121)) (EmptyCell!14288) )
))
(declare-datatypes ((array!76760 0))(
  ( (array!76761 (arr!37026 (Array (_ BitVec 32) ValueCell!14288)) (size!37563 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76760)

(declare-fun e!675825 () Bool)

(declare-fun array_inv!28137 (array!76760) Bool)

(assert (=> start!99922 (and (array_inv!28137 _values!996) e!675825)))

(declare-fun b!1188537 () Bool)

(declare-fun res!790350 () Bool)

(assert (=> b!1188537 (=> (not res!790350) (not e!675827))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188537 (= res!790350 (validKeyInArray!0 k!934))))

(declare-fun b!1188538 () Bool)

(declare-fun res!790360 () Bool)

(assert (=> b!1188538 (=> (not res!790360) (not e!675827))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188538 (= res!790360 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37562 _keys!1208))))))

(declare-fun b!1188539 () Bool)

(declare-fun res!790359 () Bool)

(assert (=> b!1188539 (=> (not res!790359) (not e!675827))))

(declare-datatypes ((List!26220 0))(
  ( (Nil!26217) (Cons!26216 (h!27425 (_ BitVec 64)) (t!38684 List!26220)) )
))
(declare-fun arrayNoDuplicates!0 (array!76758 (_ BitVec 32) List!26220) Bool)

(assert (=> b!1188539 (= res!790359 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26217))))

(declare-fun b!1188540 () Bool)

(declare-fun res!790356 () Bool)

(assert (=> b!1188540 (=> (not res!790356) (not e!675827))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76758 (_ BitVec 32)) Bool)

(assert (=> b!1188540 (= res!790356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46820 () Bool)

(declare-fun mapRes!46820 () Bool)

(assert (=> mapIsEmpty!46820 mapRes!46820))

(declare-fun b!1188541 () Bool)

(declare-fun e!675828 () Bool)

(declare-fun e!675826 () Bool)

(assert (=> b!1188541 (= e!675828 e!675826)))

(declare-fun res!790354 () Bool)

(assert (=> b!1188541 (=> res!790354 e!675826)))

(assert (=> b!1188541 (= res!790354 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45121)

(declare-fun lt!540696 () array!76760)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19460 0))(
  ( (tuple2!19461 (_1!9740 (_ BitVec 64)) (_2!9740 V!45121)) )
))
(declare-datatypes ((List!26221 0))(
  ( (Nil!26218) (Cons!26217 (h!27426 tuple2!19460) (t!38685 List!26221)) )
))
(declare-datatypes ((ListLongMap!17441 0))(
  ( (ListLongMap!17442 (toList!8736 List!26221)) )
))
(declare-fun lt!540693 () ListLongMap!17441)

(declare-fun minValue!944 () V!45121)

(declare-fun lt!540694 () array!76758)

(declare-fun getCurrentListMapNoExtraKeys!5150 (array!76758 array!76760 (_ BitVec 32) (_ BitVec 32) V!45121 V!45121 (_ BitVec 32) Int) ListLongMap!17441)

(assert (=> b!1188541 (= lt!540693 (getCurrentListMapNoExtraKeys!5150 lt!540694 lt!540696 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3105 (Int (_ BitVec 64)) V!45121)

(assert (=> b!1188541 (= lt!540696 (array!76761 (store (arr!37026 _values!996) i!673 (ValueCellFull!14288 (dynLambda!3105 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37563 _values!996)))))

(declare-fun lt!540691 () ListLongMap!17441)

(assert (=> b!1188541 (= lt!540691 (getCurrentListMapNoExtraKeys!5150 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188542 () Bool)

(declare-fun e!675824 () Bool)

(assert (=> b!1188542 (= e!675825 (and e!675824 mapRes!46820))))

(declare-fun condMapEmpty!46820 () Bool)

(declare-fun mapDefault!46820 () ValueCell!14288)

