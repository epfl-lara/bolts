; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101820 () Bool)

(assert start!101820)

(declare-fun b_free!26473 () Bool)

(declare-fun b_next!26473 () Bool)

(assert (=> start!101820 (= b_free!26473 (not b_next!26473))))

(declare-fun tp!92466 () Bool)

(declare-fun b_and!44217 () Bool)

(assert (=> start!101820 (= tp!92466 b_and!44217)))

(declare-fun b!1225913 () Bool)

(declare-fun e!696290 () Bool)

(declare-fun tp_is_empty!31177 () Bool)

(assert (=> b!1225913 (= e!696290 tp_is_empty!31177)))

(declare-fun b!1225914 () Bool)

(declare-fun e!696295 () Bool)

(declare-fun e!696291 () Bool)

(assert (=> b!1225914 (= e!696295 (not e!696291))))

(declare-fun res!814816 () Bool)

(assert (=> b!1225914 (=> res!814816 e!696291)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225914 (= res!814816 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!79112 0))(
  ( (array!79113 (arr!38179 (Array (_ BitVec 32) (_ BitVec 64))) (size!38716 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79112)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225914 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40576 0))(
  ( (Unit!40577) )
))
(declare-fun lt!558595 () Unit!40576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79112 (_ BitVec 64) (_ BitVec 32)) Unit!40576)

(assert (=> b!1225914 (= lt!558595 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225915 () Bool)

(declare-fun res!814822 () Bool)

(declare-fun e!696292 () Bool)

(assert (=> b!1225915 (=> (not res!814822) (not e!696292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225915 (= res!814822 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!48664 () Bool)

(declare-fun mapRes!48664 () Bool)

(declare-fun tp!92465 () Bool)

(declare-fun e!696294 () Bool)

(assert (=> mapNonEmpty!48664 (= mapRes!48664 (and tp!92465 e!696294))))

(declare-fun mapKey!48664 () (_ BitVec 32))

(declare-datatypes ((V!46697 0))(
  ( (V!46698 (val!15645 Int)) )
))
(declare-datatypes ((ValueCell!14879 0))(
  ( (ValueCellFull!14879 (v!18308 V!46697)) (EmptyCell!14879) )
))
(declare-fun mapValue!48664 () ValueCell!14879)

(declare-fun mapRest!48664 () (Array (_ BitVec 32) ValueCell!14879))

(declare-datatypes ((array!79114 0))(
  ( (array!79115 (arr!38180 (Array (_ BitVec 32) ValueCell!14879)) (size!38717 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79114)

(assert (=> mapNonEmpty!48664 (= (arr!38180 _values!996) (store mapRest!48664 mapKey!48664 mapValue!48664))))

(declare-fun b!1225916 () Bool)

(declare-fun res!814819 () Bool)

(assert (=> b!1225916 (=> (not res!814819) (not e!696292))))

(assert (=> b!1225916 (= res!814819 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38716 _keys!1208))))))

(declare-fun b!1225917 () Bool)

(declare-fun res!814825 () Bool)

(assert (=> b!1225917 (=> (not res!814825) (not e!696292))))

(declare-datatypes ((List!27130 0))(
  ( (Nil!27127) (Cons!27126 (h!28335 (_ BitVec 64)) (t!40590 List!27130)) )
))
(declare-fun arrayNoDuplicates!0 (array!79112 (_ BitVec 32) List!27130) Bool)

(assert (=> b!1225917 (= res!814825 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27127))))

(declare-fun b!1225918 () Bool)

(declare-fun res!814820 () Bool)

(assert (=> b!1225918 (=> (not res!814820) (not e!696292))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79112 (_ BitVec 32)) Bool)

(assert (=> b!1225918 (= res!814820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!814827 () Bool)

(assert (=> start!101820 (=> (not res!814827) (not e!696292))))

(assert (=> start!101820 (= res!814827 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38716 _keys!1208))))))

(assert (=> start!101820 e!696292))

(assert (=> start!101820 tp_is_empty!31177))

(declare-fun array_inv!28956 (array!79112) Bool)

(assert (=> start!101820 (array_inv!28956 _keys!1208)))

(assert (=> start!101820 true))

(assert (=> start!101820 tp!92466))

(declare-fun e!696297 () Bool)

(declare-fun array_inv!28957 (array!79114) Bool)

(assert (=> start!101820 (and (array_inv!28957 _values!996) e!696297)))

(declare-fun b!1225919 () Bool)

(declare-fun res!814821 () Bool)

(assert (=> b!1225919 (=> (not res!814821) (not e!696295))))

(declare-fun lt!558592 () array!79112)

(assert (=> b!1225919 (= res!814821 (arrayNoDuplicates!0 lt!558592 #b00000000000000000000000000000000 Nil!27127))))

(declare-fun b!1225920 () Bool)

(assert (=> b!1225920 (= e!696294 tp_is_empty!31177)))

(declare-fun b!1225921 () Bool)

(declare-fun res!814817 () Bool)

(assert (=> b!1225921 (=> (not res!814817) (not e!696292))))

(assert (=> b!1225921 (= res!814817 (= (select (arr!38179 _keys!1208) i!673) k!934))))

(declare-fun b!1225922 () Bool)

(declare-fun e!696296 () Bool)

(assert (=> b!1225922 (= e!696291 e!696296)))

(declare-fun res!814826 () Bool)

(assert (=> b!1225922 (=> res!814826 e!696296)))

(assert (=> b!1225922 (= res!814826 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46697)

(declare-fun lt!558591 () array!79114)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20318 0))(
  ( (tuple2!20319 (_1!10169 (_ BitVec 64)) (_2!10169 V!46697)) )
))
(declare-datatypes ((List!27131 0))(
  ( (Nil!27128) (Cons!27127 (h!28336 tuple2!20318) (t!40591 List!27131)) )
))
(declare-datatypes ((ListLongMap!18299 0))(
  ( (ListLongMap!18300 (toList!9165 List!27131)) )
))
(declare-fun lt!558590 () ListLongMap!18299)

(declare-fun minValue!944 () V!46697)

(declare-fun getCurrentListMapNoExtraKeys!5561 (array!79112 array!79114 (_ BitVec 32) (_ BitVec 32) V!46697 V!46697 (_ BitVec 32) Int) ListLongMap!18299)

(assert (=> b!1225922 (= lt!558590 (getCurrentListMapNoExtraKeys!5561 lt!558592 lt!558591 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3454 (Int (_ BitVec 64)) V!46697)

(assert (=> b!1225922 (= lt!558591 (array!79115 (store (arr!38180 _values!996) i!673 (ValueCellFull!14879 (dynLambda!3454 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38717 _values!996)))))

(declare-fun lt!558593 () ListLongMap!18299)

(assert (=> b!1225922 (= lt!558593 (getCurrentListMapNoExtraKeys!5561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225923 () Bool)

(declare-fun res!814824 () Bool)

(assert (=> b!1225923 (=> (not res!814824) (not e!696292))))

(assert (=> b!1225923 (= res!814824 (and (= (size!38717 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38716 _keys!1208) (size!38717 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225924 () Bool)

(assert (=> b!1225924 (= e!696297 (and e!696290 mapRes!48664))))

(declare-fun condMapEmpty!48664 () Bool)

(declare-fun mapDefault!48664 () ValueCell!14879)

