; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101316 () Bool)

(assert start!101316)

(declare-fun b_free!26203 () Bool)

(declare-fun b_next!26203 () Bool)

(assert (=> start!101316 (= b_free!26203 (not b_next!26203))))

(declare-fun tp!91632 () Bool)

(declare-fun b_and!43533 () Bool)

(assert (=> start!101316 (= tp!91632 b_and!43533)))

(declare-fun b!1216704 () Bool)

(declare-fun res!808063 () Bool)

(declare-fun e!690803 () Bool)

(assert (=> b!1216704 (=> (not res!808063) (not e!690803))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216704 (= res!808063 (validMask!0 mask!1564))))

(declare-fun res!808071 () Bool)

(assert (=> start!101316 (=> (not res!808071) (not e!690803))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78560 0))(
  ( (array!78561 (arr!37911 (Array (_ BitVec 32) (_ BitVec 64))) (size!38448 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78560)

(assert (=> start!101316 (= res!808071 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38448 _keys!1208))))))

(assert (=> start!101316 e!690803))

(declare-fun tp_is_empty!30907 () Bool)

(assert (=> start!101316 tp_is_empty!30907))

(declare-fun array_inv!28766 (array!78560) Bool)

(assert (=> start!101316 (array_inv!28766 _keys!1208)))

(assert (=> start!101316 true))

(assert (=> start!101316 tp!91632))

(declare-datatypes ((V!46337 0))(
  ( (V!46338 (val!15510 Int)) )
))
(declare-datatypes ((ValueCell!14744 0))(
  ( (ValueCellFull!14744 (v!18164 V!46337)) (EmptyCell!14744) )
))
(declare-datatypes ((array!78562 0))(
  ( (array!78563 (arr!37912 (Array (_ BitVec 32) ValueCell!14744)) (size!38449 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78562)

(declare-fun e!690805 () Bool)

(declare-fun array_inv!28767 (array!78562) Bool)

(assert (=> start!101316 (and (array_inv!28767 _values!996) e!690805)))

(declare-fun b!1216705 () Bool)

(declare-fun e!690802 () Bool)

(assert (=> b!1216705 (= e!690802 tp_is_empty!30907)))

(declare-fun b!1216706 () Bool)

(declare-fun res!808064 () Bool)

(assert (=> b!1216706 (=> (not res!808064) (not e!690803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78560 (_ BitVec 32)) Bool)

(assert (=> b!1216706 (= res!808064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216707 () Bool)

(declare-fun e!690800 () Bool)

(declare-fun e!690799 () Bool)

(assert (=> b!1216707 (= e!690800 (not e!690799))))

(declare-fun res!808061 () Bool)

(assert (=> b!1216707 (=> res!808061 e!690799)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216707 (= res!808061 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216707 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40274 0))(
  ( (Unit!40275) )
))
(declare-fun lt!552966 () Unit!40274)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78560 (_ BitVec 64) (_ BitVec 32)) Unit!40274)

(assert (=> b!1216707 (= lt!552966 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1216708 () Bool)

(declare-fun res!808068 () Bool)

(assert (=> b!1216708 (=> (not res!808068) (not e!690803))))

(assert (=> b!1216708 (= res!808068 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38448 _keys!1208))))))

(declare-fun b!1216709 () Bool)

(declare-fun e!690804 () Bool)

(declare-fun e!690807 () Bool)

(assert (=> b!1216709 (= e!690804 e!690807)))

(declare-fun res!808072 () Bool)

(assert (=> b!1216709 (=> res!808072 e!690807)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216709 (= res!808072 (not (validKeyInArray!0 (select (arr!37911 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!46337)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!552971 () array!78560)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552970 () array!78562)

(declare-fun minValue!944 () V!46337)

(declare-datatypes ((tuple2!20078 0))(
  ( (tuple2!20079 (_1!10049 (_ BitVec 64)) (_2!10049 V!46337)) )
))
(declare-datatypes ((List!26900 0))(
  ( (Nil!26897) (Cons!26896 (h!28105 tuple2!20078) (t!40090 List!26900)) )
))
(declare-datatypes ((ListLongMap!18059 0))(
  ( (ListLongMap!18060 (toList!9045 List!26900)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5450 (array!78560 array!78562 (_ BitVec 32) (_ BitVec 32) V!46337 V!46337 (_ BitVec 32) Int) ListLongMap!18059)

(declare-fun -!1908 (ListLongMap!18059 (_ BitVec 64)) ListLongMap!18059)

(assert (=> b!1216709 (= (getCurrentListMapNoExtraKeys!5450 lt!552971 lt!552970 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1908 (getCurrentListMapNoExtraKeys!5450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!552969 () Unit!40274)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1110 (array!78560 array!78562 (_ BitVec 32) (_ BitVec 32) V!46337 V!46337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40274)

(assert (=> b!1216709 (= lt!552969 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1110 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216710 () Bool)

(declare-fun mapRes!48235 () Bool)

(assert (=> b!1216710 (= e!690805 (and e!690802 mapRes!48235))))

(declare-fun condMapEmpty!48235 () Bool)

(declare-fun mapDefault!48235 () ValueCell!14744)

