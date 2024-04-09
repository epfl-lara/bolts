; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101620 () Bool)

(assert start!101620)

(declare-fun b_free!26339 () Bool)

(declare-fun b_next!26339 () Bool)

(assert (=> start!101620 (= b_free!26339 (not b_next!26339))))

(declare-fun tp!92057 () Bool)

(declare-fun b_and!43913 () Bool)

(assert (=> start!101620 (= tp!92057 b_and!43913)))

(declare-fun b!1221465 () Bool)

(declare-fun e!693693 () Bool)

(declare-fun e!693697 () Bool)

(assert (=> b!1221465 (= e!693693 e!693697)))

(declare-fun res!811582 () Bool)

(assert (=> b!1221465 (=> (not res!811582) (not e!693697))))

(declare-datatypes ((List!27013 0))(
  ( (Nil!27010) (Cons!27009 (h!28218 (_ BitVec 64)) (t!40339 List!27013)) )
))
(declare-fun contains!7043 (List!27013 (_ BitVec 64)) Bool)

(assert (=> b!1221465 (= res!811582 (not (contains!7043 Nil!27010 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221466 () Bool)

(declare-fun res!811568 () Bool)

(assert (=> b!1221466 (=> res!811568 e!693693)))

(declare-fun noDuplicate!1657 (List!27013) Bool)

(assert (=> b!1221466 (= res!811568 (not (noDuplicate!1657 Nil!27010)))))

(declare-fun b!1221467 () Bool)

(declare-fun res!811565 () Bool)

(declare-fun e!693696 () Bool)

(assert (=> b!1221467 (=> (not res!811565) (not e!693696))))

(declare-datatypes ((array!78842 0))(
  ( (array!78843 (arr!38046 (Array (_ BitVec 32) (_ BitVec 64))) (size!38583 (_ BitVec 32))) )
))
(declare-fun lt!555576 () array!78842)

(declare-fun arrayNoDuplicates!0 (array!78842 (_ BitVec 32) List!27013) Bool)

(assert (=> b!1221467 (= res!811565 (arrayNoDuplicates!0 lt!555576 #b00000000000000000000000000000000 Nil!27010))))

(declare-fun b!1221468 () Bool)

(declare-fun e!693699 () Bool)

(assert (=> b!1221468 (= e!693696 (not e!693699))))

(declare-fun res!811581 () Bool)

(assert (=> b!1221468 (=> res!811581 e!693699)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1221468 (= res!811581 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!78842)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221468 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40378 0))(
  ( (Unit!40379) )
))
(declare-fun lt!555579 () Unit!40378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78842 (_ BitVec 64) (_ BitVec 32)) Unit!40378)

(assert (=> b!1221468 (= lt!555579 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221469 () Bool)

(declare-fun e!693702 () Bool)

(assert (=> b!1221469 (= e!693702 e!693696)))

(declare-fun res!811575 () Bool)

(assert (=> b!1221469 (=> (not res!811575) (not e!693696))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78842 (_ BitVec 32)) Bool)

(assert (=> b!1221469 (= res!811575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555576 mask!1564))))

(assert (=> b!1221469 (= lt!555576 (array!78843 (store (arr!38046 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38583 _keys!1208)))))

(declare-fun res!811579 () Bool)

(assert (=> start!101620 (=> (not res!811579) (not e!693702))))

(assert (=> start!101620 (= res!811579 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38583 _keys!1208))))))

(assert (=> start!101620 e!693702))

(declare-fun tp_is_empty!31043 () Bool)

(assert (=> start!101620 tp_is_empty!31043))

(declare-fun array_inv!28864 (array!78842) Bool)

(assert (=> start!101620 (array_inv!28864 _keys!1208)))

(assert (=> start!101620 true))

(assert (=> start!101620 tp!92057))

(declare-datatypes ((V!46517 0))(
  ( (V!46518 (val!15578 Int)) )
))
(declare-datatypes ((ValueCell!14812 0))(
  ( (ValueCellFull!14812 (v!18238 V!46517)) (EmptyCell!14812) )
))
(declare-datatypes ((array!78844 0))(
  ( (array!78845 (arr!38047 (Array (_ BitVec 32) ValueCell!14812)) (size!38584 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78844)

(declare-fun e!693698 () Bool)

(declare-fun array_inv!28865 (array!78844) Bool)

(assert (=> start!101620 (and (array_inv!28865 _values!996) e!693698)))

(declare-fun b!1221470 () Bool)

(declare-fun res!811577 () Bool)

(assert (=> b!1221470 (=> (not res!811577) (not e!693702))))

(assert (=> b!1221470 (= res!811577 (= (select (arr!38046 _keys!1208) i!673) k!934))))

(declare-fun b!1221471 () Bool)

(declare-fun e!693700 () Bool)

(assert (=> b!1221471 (= e!693700 e!693693)))

(declare-fun res!811566 () Bool)

(assert (=> b!1221471 (=> res!811566 e!693693)))

(assert (=> b!1221471 (= res!811566 (or (bvsge (size!38583 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38583 _keys!1208)) (bvsge from!1455 (size!38583 _keys!1208))))))

(assert (=> b!1221471 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27010)))

(declare-fun lt!555586 () Unit!40378)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78842 (_ BitVec 32) (_ BitVec 32)) Unit!40378)

(assert (=> b!1221471 (= lt!555586 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1221471 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555582 () Unit!40378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78842 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40378)

(assert (=> b!1221471 (= lt!555582 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221472 () Bool)

(declare-fun e!693704 () Bool)

(declare-fun e!693692 () Bool)

(assert (=> b!1221472 (= e!693704 e!693692)))

(declare-fun res!811576 () Bool)

(assert (=> b!1221472 (=> res!811576 e!693692)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221472 (= res!811576 (not (validKeyInArray!0 (select (arr!38046 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20198 0))(
  ( (tuple2!20199 (_1!10109 (_ BitVec 64)) (_2!10109 V!46517)) )
))
(declare-datatypes ((List!27014 0))(
  ( (Nil!27011) (Cons!27010 (h!28219 tuple2!20198) (t!40340 List!27014)) )
))
(declare-datatypes ((ListLongMap!18179 0))(
  ( (ListLongMap!18180 (toList!9105 List!27014)) )
))
(declare-fun lt!555584 () ListLongMap!18179)

(declare-fun lt!555578 () ListLongMap!18179)

(assert (=> b!1221472 (= lt!555584 lt!555578)))

(declare-fun lt!555587 () ListLongMap!18179)

(declare-fun -!1949 (ListLongMap!18179 (_ BitVec 64)) ListLongMap!18179)

(assert (=> b!1221472 (= lt!555578 (-!1949 lt!555587 k!934))))

(declare-fun zeroValue!944 () V!46517)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!555581 () array!78844)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46517)

(declare-fun getCurrentListMapNoExtraKeys!5503 (array!78842 array!78844 (_ BitVec 32) (_ BitVec 32) V!46517 V!46517 (_ BitVec 32) Int) ListLongMap!18179)

(assert (=> b!1221472 (= lt!555584 (getCurrentListMapNoExtraKeys!5503 lt!555576 lt!555581 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221472 (= lt!555587 (getCurrentListMapNoExtraKeys!5503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555580 () Unit!40378)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1151 (array!78842 array!78844 (_ BitVec 32) (_ BitVec 32) V!46517 V!46517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40378)

(assert (=> b!1221472 (= lt!555580 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1151 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221473 () Bool)

(declare-fun e!693695 () Bool)

(declare-fun mapRes!48457 () Bool)

(assert (=> b!1221473 (= e!693698 (and e!693695 mapRes!48457))))

(declare-fun condMapEmpty!48457 () Bool)

(declare-fun mapDefault!48457 () ValueCell!14812)

