; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101266 () Bool)

(assert start!101266)

(declare-fun b_free!26153 () Bool)

(declare-fun b_next!26153 () Bool)

(assert (=> start!101266 (= b_free!26153 (not b_next!26153))))

(declare-fun tp!91481 () Bool)

(declare-fun b_and!43433 () Bool)

(assert (=> start!101266 (= tp!91481 b_and!43433)))

(declare-fun b!1215564 () Bool)

(declare-fun res!807195 () Bool)

(declare-fun e!690238 () Bool)

(assert (=> b!1215564 (=> (not res!807195) (not e!690238))))

(declare-datatypes ((array!78466 0))(
  ( (array!78467 (arr!37864 (Array (_ BitVec 32) (_ BitVec 64))) (size!38401 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78466)

(declare-datatypes ((List!26865 0))(
  ( (Nil!26862) (Cons!26861 (h!28070 (_ BitVec 64)) (t!40005 List!26865)) )
))
(declare-fun arrayNoDuplicates!0 (array!78466 (_ BitVec 32) List!26865) Bool)

(assert (=> b!1215564 (= res!807195 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26862))))

(declare-fun b!1215565 () Bool)

(declare-fun e!690237 () Bool)

(declare-fun tp_is_empty!30857 () Bool)

(assert (=> b!1215565 (= e!690237 tp_is_empty!30857)))

(declare-fun b!1215566 () Bool)

(declare-fun e!690239 () Bool)

(assert (=> b!1215566 (= e!690239 tp_is_empty!30857)))

(declare-fun b!1215567 () Bool)

(declare-fun res!807205 () Bool)

(assert (=> b!1215567 (=> (not res!807205) (not e!690238))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215567 (= res!807205 (= (select (arr!37864 _keys!1208) i!673) k!934))))

(declare-fun b!1215568 () Bool)

(declare-fun e!690236 () Bool)

(declare-fun e!690235 () Bool)

(assert (=> b!1215568 (= e!690236 (not e!690235))))

(declare-fun res!807204 () Bool)

(assert (=> b!1215568 (=> res!807204 e!690235)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1215568 (= res!807204 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215568 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40242 0))(
  ( (Unit!40243) )
))
(declare-fun lt!552610 () Unit!40242)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78466 (_ BitVec 64) (_ BitVec 32)) Unit!40242)

(assert (=> b!1215568 (= lt!552610 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215569 () Bool)

(declare-fun res!807202 () Bool)

(assert (=> b!1215569 (=> (not res!807202) (not e!690238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215569 (= res!807202 (validKeyInArray!0 k!934))))

(declare-fun b!1215570 () Bool)

(assert (=> b!1215570 (= e!690235 true)))

(declare-datatypes ((V!46269 0))(
  ( (V!46270 (val!15485 Int)) )
))
(declare-fun zeroValue!944 () V!46269)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!552611 () array!78466)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20046 0))(
  ( (tuple2!20047 (_1!10033 (_ BitVec 64)) (_2!10033 V!46269)) )
))
(declare-datatypes ((List!26866 0))(
  ( (Nil!26863) (Cons!26862 (h!28071 tuple2!20046) (t!40006 List!26866)) )
))
(declare-datatypes ((ListLongMap!18027 0))(
  ( (ListLongMap!18028 (toList!9029 List!26866)) )
))
(declare-fun lt!552609 () ListLongMap!18027)

(declare-datatypes ((ValueCell!14719 0))(
  ( (ValueCellFull!14719 (v!18139 V!46269)) (EmptyCell!14719) )
))
(declare-datatypes ((array!78468 0))(
  ( (array!78469 (arr!37865 (Array (_ BitVec 32) ValueCell!14719)) (size!38402 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78468)

(declare-fun minValue!944 () V!46269)

(declare-fun getCurrentListMapNoExtraKeys!5434 (array!78466 array!78468 (_ BitVec 32) (_ BitVec 32) V!46269 V!46269 (_ BitVec 32) Int) ListLongMap!18027)

(declare-fun dynLambda!3343 (Int (_ BitVec 64)) V!46269)

(assert (=> b!1215570 (= lt!552609 (getCurrentListMapNoExtraKeys!5434 lt!552611 (array!78469 (store (arr!37865 _values!996) i!673 (ValueCellFull!14719 (dynLambda!3343 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38402 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552608 () ListLongMap!18027)

(assert (=> b!1215570 (= lt!552608 (getCurrentListMapNoExtraKeys!5434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48160 () Bool)

(declare-fun mapRes!48160 () Bool)

(assert (=> mapIsEmpty!48160 mapRes!48160))

(declare-fun b!1215571 () Bool)

(declare-fun e!690240 () Bool)

(assert (=> b!1215571 (= e!690240 (and e!690239 mapRes!48160))))

(declare-fun condMapEmpty!48160 () Bool)

(declare-fun mapDefault!48160 () ValueCell!14719)

