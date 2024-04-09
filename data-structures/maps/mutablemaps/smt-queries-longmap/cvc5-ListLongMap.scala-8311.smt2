; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101250 () Bool)

(assert start!101250)

(declare-fun b_free!26137 () Bool)

(declare-fun b_next!26137 () Bool)

(assert (=> start!101250 (= b_free!26137 (not b_next!26137))))

(declare-fun tp!91434 () Bool)

(declare-fun b_and!43401 () Bool)

(assert (=> start!101250 (= tp!91434 b_and!43401)))

(declare-fun b!1215212 () Bool)

(declare-fun res!806940 () Bool)

(declare-fun e!690072 () Bool)

(assert (=> b!1215212 (=> (not res!806940) (not e!690072))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215212 (= res!806940 (validMask!0 mask!1564))))

(declare-fun b!1215213 () Bool)

(declare-fun res!806933 () Bool)

(declare-fun e!690070 () Bool)

(assert (=> b!1215213 (=> (not res!806933) (not e!690070))))

(declare-datatypes ((array!78436 0))(
  ( (array!78437 (arr!37849 (Array (_ BitVec 32) (_ BitVec 64))) (size!38386 (_ BitVec 32))) )
))
(declare-fun lt!552515 () array!78436)

(declare-datatypes ((List!26852 0))(
  ( (Nil!26849) (Cons!26848 (h!28057 (_ BitVec 64)) (t!39976 List!26852)) )
))
(declare-fun arrayNoDuplicates!0 (array!78436 (_ BitVec 32) List!26852) Bool)

(assert (=> b!1215213 (= res!806933 (arrayNoDuplicates!0 lt!552515 #b00000000000000000000000000000000 Nil!26849))))

(declare-fun b!1215214 () Bool)

(declare-fun res!806936 () Bool)

(assert (=> b!1215214 (=> (not res!806936) (not e!690072))))

(declare-fun _keys!1208 () array!78436)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215214 (= res!806936 (= (select (arr!37849 _keys!1208) i!673) k!934))))

(declare-fun b!1215215 () Bool)

(declare-fun res!806934 () Bool)

(assert (=> b!1215215 (=> (not res!806934) (not e!690072))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46249 0))(
  ( (V!46250 (val!15477 Int)) )
))
(declare-datatypes ((ValueCell!14711 0))(
  ( (ValueCellFull!14711 (v!18131 V!46249)) (EmptyCell!14711) )
))
(declare-datatypes ((array!78438 0))(
  ( (array!78439 (arr!37850 (Array (_ BitVec 32) ValueCell!14711)) (size!38387 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78438)

(assert (=> b!1215215 (= res!806934 (and (= (size!38387 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38386 _keys!1208) (size!38387 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215216 () Bool)

(assert (=> b!1215216 (= e!690072 e!690070)))

(declare-fun res!806937 () Bool)

(assert (=> b!1215216 (=> (not res!806937) (not e!690070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78436 (_ BitVec 32)) Bool)

(assert (=> b!1215216 (= res!806937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552515 mask!1564))))

(assert (=> b!1215216 (= lt!552515 (array!78437 (store (arr!37849 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38386 _keys!1208)))))

(declare-fun b!1215217 () Bool)

(declare-fun e!690071 () Bool)

(declare-fun tp_is_empty!30841 () Bool)

(assert (=> b!1215217 (= e!690071 tp_is_empty!30841)))

(declare-fun mapIsEmpty!48136 () Bool)

(declare-fun mapRes!48136 () Bool)

(assert (=> mapIsEmpty!48136 mapRes!48136))

(declare-fun mapNonEmpty!48136 () Bool)

(declare-fun tp!91433 () Bool)

(assert (=> mapNonEmpty!48136 (= mapRes!48136 (and tp!91433 e!690071))))

(declare-fun mapKey!48136 () (_ BitVec 32))

(declare-fun mapRest!48136 () (Array (_ BitVec 32) ValueCell!14711))

(declare-fun mapValue!48136 () ValueCell!14711)

(assert (=> mapNonEmpty!48136 (= (arr!37850 _values!996) (store mapRest!48136 mapKey!48136 mapValue!48136))))

(declare-fun b!1215219 () Bool)

(declare-fun res!806935 () Bool)

(assert (=> b!1215219 (=> (not res!806935) (not e!690072))))

(assert (=> b!1215219 (= res!806935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215220 () Bool)

(declare-fun res!806931 () Bool)

(assert (=> b!1215220 (=> (not res!806931) (not e!690072))))

(assert (=> b!1215220 (= res!806931 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38386 _keys!1208))))))

(declare-fun b!1215221 () Bool)

(declare-fun e!690066 () Bool)

(assert (=> b!1215221 (= e!690066 true)))

(declare-fun zeroValue!944 () V!46249)

(declare-datatypes ((tuple2!20034 0))(
  ( (tuple2!20035 (_1!10027 (_ BitVec 64)) (_2!10027 V!46249)) )
))
(declare-datatypes ((List!26853 0))(
  ( (Nil!26850) (Cons!26849 (h!28058 tuple2!20034) (t!39977 List!26853)) )
))
(declare-datatypes ((ListLongMap!18015 0))(
  ( (ListLongMap!18016 (toList!9023 List!26853)) )
))
(declare-fun lt!552512 () ListLongMap!18015)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!46249)

(declare-fun getCurrentListMapNoExtraKeys!5428 (array!78436 array!78438 (_ BitVec 32) (_ BitVec 32) V!46249 V!46249 (_ BitVec 32) Int) ListLongMap!18015)

(declare-fun dynLambda!3337 (Int (_ BitVec 64)) V!46249)

(assert (=> b!1215221 (= lt!552512 (getCurrentListMapNoExtraKeys!5428 lt!552515 (array!78439 (store (arr!37850 _values!996) i!673 (ValueCellFull!14711 (dynLambda!3337 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38387 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552514 () ListLongMap!18015)

(assert (=> b!1215221 (= lt!552514 (getCurrentListMapNoExtraKeys!5428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215218 () Bool)

(declare-fun res!806939 () Bool)

(assert (=> b!1215218 (=> (not res!806939) (not e!690072))))

(assert (=> b!1215218 (= res!806939 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26849))))

(declare-fun res!806932 () Bool)

(assert (=> start!101250 (=> (not res!806932) (not e!690072))))

(assert (=> start!101250 (= res!806932 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38386 _keys!1208))))))

(assert (=> start!101250 e!690072))

(assert (=> start!101250 tp_is_empty!30841))

(declare-fun array_inv!28722 (array!78436) Bool)

(assert (=> start!101250 (array_inv!28722 _keys!1208)))

(assert (=> start!101250 true))

(assert (=> start!101250 tp!91434))

(declare-fun e!690067 () Bool)

(declare-fun array_inv!28723 (array!78438) Bool)

(assert (=> start!101250 (and (array_inv!28723 _values!996) e!690067)))

(declare-fun b!1215222 () Bool)

(declare-fun e!690069 () Bool)

(assert (=> b!1215222 (= e!690067 (and e!690069 mapRes!48136))))

(declare-fun condMapEmpty!48136 () Bool)

(declare-fun mapDefault!48136 () ValueCell!14711)

