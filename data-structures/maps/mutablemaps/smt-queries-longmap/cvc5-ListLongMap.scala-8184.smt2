; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100006 () Bool)

(assert start!100006)

(declare-fun b_free!25549 () Bool)

(declare-fun b_next!25549 () Bool)

(assert (=> start!100006 (= b_free!25549 (not b_next!25549))))

(declare-fun tp!89361 () Bool)

(declare-fun b_and!41979 () Bool)

(assert (=> start!100006 (= tp!89361 b_and!41979)))

(declare-fun b!1190511 () Bool)

(declare-fun res!791864 () Bool)

(declare-fun e!676835 () Bool)

(assert (=> b!1190511 (=> (not res!791864) (not e!676835))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190511 (= res!791864 (validKeyInArray!0 k!934))))

(declare-fun b!1190512 () Bool)

(declare-fun res!791861 () Bool)

(declare-fun e!676832 () Bool)

(assert (=> b!1190512 (=> (not res!791861) (not e!676832))))

(declare-datatypes ((array!76924 0))(
  ( (array!76925 (arr!37108 (Array (_ BitVec 32) (_ BitVec 64))) (size!37645 (_ BitVec 32))) )
))
(declare-fun lt!541450 () array!76924)

(declare-datatypes ((List!26294 0))(
  ( (Nil!26291) (Cons!26290 (h!27499 (_ BitVec 64)) (t!38842 List!26294)) )
))
(declare-fun arrayNoDuplicates!0 (array!76924 (_ BitVec 32) List!26294) Bool)

(assert (=> b!1190512 (= res!791861 (arrayNoDuplicates!0 lt!541450 #b00000000000000000000000000000000 Nil!26291))))

(declare-fun b!1190513 () Bool)

(assert (=> b!1190513 (= e!676835 e!676832)))

(declare-fun res!791872 () Bool)

(assert (=> b!1190513 (=> (not res!791872) (not e!676832))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76924 (_ BitVec 32)) Bool)

(assert (=> b!1190513 (= res!791872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541450 mask!1564))))

(declare-fun _keys!1208 () array!76924)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190513 (= lt!541450 (array!76925 (store (arr!37108 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37645 _keys!1208)))))

(declare-fun res!791862 () Bool)

(assert (=> start!100006 (=> (not res!791862) (not e!676835))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100006 (= res!791862 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37645 _keys!1208))))))

(assert (=> start!100006 e!676835))

(declare-fun tp_is_empty!30079 () Bool)

(assert (=> start!100006 tp_is_empty!30079))

(declare-fun array_inv!28198 (array!76924) Bool)

(assert (=> start!100006 (array_inv!28198 _keys!1208)))

(assert (=> start!100006 true))

(assert (=> start!100006 tp!89361))

(declare-datatypes ((V!45233 0))(
  ( (V!45234 (val!15096 Int)) )
))
(declare-datatypes ((ValueCell!14330 0))(
  ( (ValueCellFull!14330 (v!17735 V!45233)) (EmptyCell!14330) )
))
(declare-datatypes ((array!76926 0))(
  ( (array!76927 (arr!37109 (Array (_ BitVec 32) ValueCell!14330)) (size!37646 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76926)

(declare-fun e!676837 () Bool)

(declare-fun array_inv!28199 (array!76926) Bool)

(assert (=> start!100006 (and (array_inv!28199 _values!996) e!676837)))

(declare-fun b!1190514 () Bool)

(declare-fun e!676833 () Bool)

(assert (=> b!1190514 (= e!676833 tp_is_empty!30079)))

(declare-fun mapNonEmpty!46946 () Bool)

(declare-fun mapRes!46946 () Bool)

(declare-fun tp!89362 () Bool)

(assert (=> mapNonEmpty!46946 (= mapRes!46946 (and tp!89362 e!676833))))

(declare-fun mapKey!46946 () (_ BitVec 32))

(declare-fun mapValue!46946 () ValueCell!14330)

(declare-fun mapRest!46946 () (Array (_ BitVec 32) ValueCell!14330))

(assert (=> mapNonEmpty!46946 (= (arr!37109 _values!996) (store mapRest!46946 mapKey!46946 mapValue!46946))))

(declare-fun b!1190515 () Bool)

(declare-fun res!791865 () Bool)

(assert (=> b!1190515 (=> (not res!791865) (not e!676835))))

(assert (=> b!1190515 (= res!791865 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26291))))

(declare-fun b!1190516 () Bool)

(declare-fun e!676834 () Bool)

(assert (=> b!1190516 (= e!676834 true)))

(declare-fun zeroValue!944 () V!45233)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!45233)

(declare-fun lt!541449 () array!76926)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19534 0))(
  ( (tuple2!19535 (_1!9777 (_ BitVec 64)) (_2!9777 V!45233)) )
))
(declare-datatypes ((List!26295 0))(
  ( (Nil!26292) (Cons!26291 (h!27500 tuple2!19534) (t!38843 List!26295)) )
))
(declare-datatypes ((ListLongMap!17515 0))(
  ( (ListLongMap!17516 (toList!8773 List!26295)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5187 (array!76924 array!76926 (_ BitVec 32) (_ BitVec 32) V!45233 V!45233 (_ BitVec 32) Int) ListLongMap!17515)

(declare-fun -!1755 (ListLongMap!17515 (_ BitVec 64)) ListLongMap!17515)

(assert (=> b!1190516 (= (getCurrentListMapNoExtraKeys!5187 lt!541450 lt!541449 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1755 (getCurrentListMapNoExtraKeys!5187 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39438 0))(
  ( (Unit!39439) )
))
(declare-fun lt!541452 () Unit!39438)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!961 (array!76924 array!76926 (_ BitVec 32) (_ BitVec 32) V!45233 V!45233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39438)

(assert (=> b!1190516 (= lt!541452 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!961 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46946 () Bool)

(assert (=> mapIsEmpty!46946 mapRes!46946))

(declare-fun b!1190517 () Bool)

(declare-fun res!791870 () Bool)

(assert (=> b!1190517 (=> (not res!791870) (not e!676835))))

(assert (=> b!1190517 (= res!791870 (= (select (arr!37108 _keys!1208) i!673) k!934))))

(declare-fun b!1190518 () Bool)

(declare-fun e!676830 () Bool)

(assert (=> b!1190518 (= e!676837 (and e!676830 mapRes!46946))))

(declare-fun condMapEmpty!46946 () Bool)

(declare-fun mapDefault!46946 () ValueCell!14330)

