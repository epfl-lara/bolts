; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99224 () Bool)

(assert start!99224)

(declare-fun b_free!24793 () Bool)

(declare-fun b_next!24793 () Bool)

(assert (=> start!99224 (= b_free!24793 (not b_next!24793))))

(declare-fun tp!87091 () Bool)

(declare-fun b_and!40449 () Bool)

(assert (=> start!99224 (= tp!87091 b_and!40449)))

(declare-fun mapNonEmpty!45809 () Bool)

(declare-fun mapRes!45809 () Bool)

(declare-fun tp!87090 () Bool)

(declare-fun e!663683 () Bool)

(assert (=> mapNonEmpty!45809 (= mapRes!45809 (and tp!87090 e!663683))))

(declare-fun mapKey!45809 () (_ BitVec 32))

(declare-datatypes ((V!44225 0))(
  ( (V!44226 (val!14718 Int)) )
))
(declare-datatypes ((ValueCell!13952 0))(
  ( (ValueCellFull!13952 (v!17356 V!44225)) (EmptyCell!13952) )
))
(declare-fun mapValue!45809 () ValueCell!13952)

(declare-datatypes ((array!75424 0))(
  ( (array!75425 (arr!36359 (Array (_ BitVec 32) ValueCell!13952)) (size!36896 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75424)

(declare-fun mapRest!45809 () (Array (_ BitVec 32) ValueCell!13952))

(assert (=> mapNonEmpty!45809 (= (arr!36359 _values!996) (store mapRest!45809 mapKey!45809 mapValue!45809))))

(declare-fun b!1167625 () Bool)

(declare-fun res!774700 () Bool)

(declare-fun e!663680 () Bool)

(assert (=> b!1167625 (=> (not res!774700) (not e!663680))))

(declare-datatypes ((array!75426 0))(
  ( (array!75427 (arr!36360 (Array (_ BitVec 32) (_ BitVec 64))) (size!36897 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75426)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75426 (_ BitVec 32)) Bool)

(assert (=> b!1167625 (= res!774700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167626 () Bool)

(declare-fun e!663678 () Bool)

(declare-fun e!663682 () Bool)

(assert (=> b!1167626 (= e!663678 e!663682)))

(declare-fun res!774695 () Bool)

(assert (=> b!1167626 (=> res!774695 e!663682)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167626 (= res!774695 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44225)

(declare-datatypes ((tuple2!18860 0))(
  ( (tuple2!18861 (_1!9440 (_ BitVec 64)) (_2!9440 V!44225)) )
))
(declare-datatypes ((List!25637 0))(
  ( (Nil!25634) (Cons!25633 (h!26842 tuple2!18860) (t!37429 List!25637)) )
))
(declare-datatypes ((ListLongMap!16841 0))(
  ( (ListLongMap!16842 (toList!8436 List!25637)) )
))
(declare-fun lt!525680 () ListLongMap!16841)

(declare-fun lt!525679 () array!75426)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44225)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525681 () array!75424)

(declare-fun getCurrentListMapNoExtraKeys!4869 (array!75426 array!75424 (_ BitVec 32) (_ BitVec 32) V!44225 V!44225 (_ BitVec 32) Int) ListLongMap!16841)

(assert (=> b!1167626 (= lt!525680 (getCurrentListMapNoExtraKeys!4869 lt!525679 lt!525681 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2861 (Int (_ BitVec 64)) V!44225)

(assert (=> b!1167626 (= lt!525681 (array!75425 (store (arr!36359 _values!996) i!673 (ValueCellFull!13952 (dynLambda!2861 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36896 _values!996)))))

(declare-fun lt!525677 () ListLongMap!16841)

(assert (=> b!1167626 (= lt!525677 (getCurrentListMapNoExtraKeys!4869 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167627 () Bool)

(declare-fun e!663681 () Bool)

(assert (=> b!1167627 (= e!663680 e!663681)))

(declare-fun res!774694 () Bool)

(assert (=> b!1167627 (=> (not res!774694) (not e!663681))))

(assert (=> b!1167627 (= res!774694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525679 mask!1564))))

(assert (=> b!1167627 (= lt!525679 (array!75427 (store (arr!36360 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36897 _keys!1208)))))

(declare-fun b!1167628 () Bool)

(declare-fun res!774696 () Bool)

(assert (=> b!1167628 (=> (not res!774696) (not e!663680))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1167628 (= res!774696 (= (select (arr!36360 _keys!1208) i!673) k!934))))

(declare-fun b!1167629 () Bool)

(declare-fun e!663677 () Bool)

(declare-fun e!663684 () Bool)

(assert (=> b!1167629 (= e!663677 (and e!663684 mapRes!45809))))

(declare-fun condMapEmpty!45809 () Bool)

(declare-fun mapDefault!45809 () ValueCell!13952)

