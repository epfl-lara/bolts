; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101692 () Bool)

(assert start!101692)

(declare-fun b_free!26377 () Bool)

(declare-fun b_next!26377 () Bool)

(assert (=> start!101692 (= b_free!26377 (not b_next!26377))))

(declare-fun tp!92175 () Bool)

(declare-fun b_and!44007 () Bool)

(assert (=> start!101692 (= tp!92175 b_and!44007)))

(declare-fun b!1222838 () Bool)

(declare-fun res!812597 () Bool)

(declare-fun e!694513 () Bool)

(assert (=> b!1222838 (=> (not res!812597) (not e!694513))))

(declare-datatypes ((array!78920 0))(
  ( (array!78921 (arr!38084 (Array (_ BitVec 32) (_ BitVec 64))) (size!38621 (_ BitVec 32))) )
))
(declare-fun lt!556436 () array!78920)

(declare-datatypes ((List!27047 0))(
  ( (Nil!27044) (Cons!27043 (h!28252 (_ BitVec 64)) (t!40411 List!27047)) )
))
(declare-fun arrayNoDuplicates!0 (array!78920 (_ BitVec 32) List!27047) Bool)

(assert (=> b!1222838 (= res!812597 (arrayNoDuplicates!0 lt!556436 #b00000000000000000000000000000000 Nil!27044))))

(declare-fun b!1222839 () Bool)

(declare-fun e!694517 () Bool)

(declare-fun e!694518 () Bool)

(assert (=> b!1222839 (= e!694517 e!694518)))

(declare-fun res!812595 () Bool)

(assert (=> b!1222839 (=> res!812595 e!694518)))

(declare-fun _keys!1208 () array!78920)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222839 (= res!812595 (not (= (select (arr!38084 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222840 () Bool)

(declare-fun res!812592 () Bool)

(declare-fun e!694512 () Bool)

(assert (=> b!1222840 (=> (not res!812592) (not e!694512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222840 (= res!812592 (validKeyInArray!0 k!934))))

(declare-fun b!1222841 () Bool)

(declare-fun res!812587 () Bool)

(assert (=> b!1222841 (=> (not res!812587) (not e!694512))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78920 (_ BitVec 32)) Bool)

(assert (=> b!1222841 (= res!812587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222842 () Bool)

(declare-fun e!694520 () Bool)

(declare-fun e!694521 () Bool)

(assert (=> b!1222842 (= e!694520 e!694521)))

(declare-fun res!812589 () Bool)

(assert (=> b!1222842 (=> res!812589 e!694521)))

(assert (=> b!1222842 (= res!812589 (not (validKeyInArray!0 (select (arr!38084 _keys!1208) from!1455))))))

(declare-datatypes ((V!46569 0))(
  ( (V!46570 (val!15597 Int)) )
))
(declare-datatypes ((tuple2!20234 0))(
  ( (tuple2!20235 (_1!10127 (_ BitVec 64)) (_2!10127 V!46569)) )
))
(declare-datatypes ((List!27048 0))(
  ( (Nil!27045) (Cons!27044 (h!28253 tuple2!20234) (t!40412 List!27048)) )
))
(declare-datatypes ((ListLongMap!18215 0))(
  ( (ListLongMap!18216 (toList!9123 List!27048)) )
))
(declare-fun lt!556440 () ListLongMap!18215)

(declare-fun lt!556433 () ListLongMap!18215)

(assert (=> b!1222842 (= lt!556440 lt!556433)))

(declare-fun lt!556439 () ListLongMap!18215)

(declare-fun -!1965 (ListLongMap!18215 (_ BitVec 64)) ListLongMap!18215)

(assert (=> b!1222842 (= lt!556433 (-!1965 lt!556439 k!934))))

(declare-fun zeroValue!944 () V!46569)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46569)

(declare-datatypes ((ValueCell!14831 0))(
  ( (ValueCellFull!14831 (v!18259 V!46569)) (EmptyCell!14831) )
))
(declare-datatypes ((array!78922 0))(
  ( (array!78923 (arr!38085 (Array (_ BitVec 32) ValueCell!14831)) (size!38622 (_ BitVec 32))) )
))
(declare-fun lt!556430 () array!78922)

(declare-fun getCurrentListMapNoExtraKeys!5521 (array!78920 array!78922 (_ BitVec 32) (_ BitVec 32) V!46569 V!46569 (_ BitVec 32) Int) ListLongMap!18215)

(assert (=> b!1222842 (= lt!556440 (getCurrentListMapNoExtraKeys!5521 lt!556436 lt!556430 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78922)

(assert (=> b!1222842 (= lt!556439 (getCurrentListMapNoExtraKeys!5521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40431 0))(
  ( (Unit!40432) )
))
(declare-fun lt!556432 () Unit!40431)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1167 (array!78920 array!78922 (_ BitVec 32) (_ BitVec 32) V!46569 V!46569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40431)

(assert (=> b!1222842 (= lt!556432 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1167 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222843 () Bool)

(declare-fun res!812585 () Bool)

(assert (=> b!1222843 (=> (not res!812585) (not e!694512))))

(assert (=> b!1222843 (= res!812585 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27044))))

(declare-fun mapNonEmpty!48517 () Bool)

(declare-fun mapRes!48517 () Bool)

(declare-fun tp!92174 () Bool)

(declare-fun e!694519 () Bool)

(assert (=> mapNonEmpty!48517 (= mapRes!48517 (and tp!92174 e!694519))))

(declare-fun mapRest!48517 () (Array (_ BitVec 32) ValueCell!14831))

(declare-fun mapValue!48517 () ValueCell!14831)

(declare-fun mapKey!48517 () (_ BitVec 32))

(assert (=> mapNonEmpty!48517 (= (arr!38085 _values!996) (store mapRest!48517 mapKey!48517 mapValue!48517))))

(declare-fun b!1222844 () Bool)

(declare-fun arrayContainsKey!0 (array!78920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222844 (= e!694518 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222846 () Bool)

(declare-fun res!812591 () Bool)

(assert (=> b!1222846 (=> (not res!812591) (not e!694512))))

(assert (=> b!1222846 (= res!812591 (= (select (arr!38084 _keys!1208) i!673) k!934))))

(declare-fun b!1222847 () Bool)

(declare-fun e!694522 () Bool)

(declare-fun e!694514 () Bool)

(assert (=> b!1222847 (= e!694522 (and e!694514 mapRes!48517))))

(declare-fun condMapEmpty!48517 () Bool)

(declare-fun mapDefault!48517 () ValueCell!14831)

