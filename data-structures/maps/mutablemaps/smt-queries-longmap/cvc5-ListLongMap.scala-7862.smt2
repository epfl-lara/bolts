; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97952 () Bool)

(assert start!97952)

(declare-fun b_free!23617 () Bool)

(declare-fun b_next!23617 () Bool)

(assert (=> start!97952 (= b_free!23617 (not b_next!23617))))

(declare-fun tp!83555 () Bool)

(declare-fun b_and!38039 () Bool)

(assert (=> start!97952 (= tp!83555 b_and!38039)))

(declare-fun b!1121667 () Bool)

(declare-fun res!749425 () Bool)

(declare-fun e!638677 () Bool)

(assert (=> b!1121667 (=> (not res!749425) (not e!638677))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73120 0))(
  ( (array!73121 (arr!35209 (Array (_ BitVec 32) (_ BitVec 64))) (size!35746 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73120)

(assert (=> b!1121667 (= res!749425 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35746 _keys!1208))))))

(declare-fun b!1121668 () Bool)

(declare-fun e!638672 () Bool)

(declare-fun e!638670 () Bool)

(assert (=> b!1121668 (= e!638672 e!638670)))

(declare-fun res!749428 () Bool)

(assert (=> b!1121668 (=> res!749428 e!638670)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1121668 (= res!749428 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42657 0))(
  ( (V!42658 (val!14130 Int)) )
))
(declare-fun zeroValue!944 () V!42657)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13364 0))(
  ( (ValueCellFull!13364 (v!16764 V!42657)) (EmptyCell!13364) )
))
(declare-datatypes ((array!73122 0))(
  ( (array!73123 (arr!35210 (Array (_ BitVec 32) ValueCell!13364)) (size!35747 (_ BitVec 32))) )
))
(declare-fun lt!498422 () array!73122)

(declare-fun minValue!944 () V!42657)

(declare-datatypes ((tuple2!17800 0))(
  ( (tuple2!17801 (_1!8910 (_ BitVec 64)) (_2!8910 V!42657)) )
))
(declare-datatypes ((List!24638 0))(
  ( (Nil!24635) (Cons!24634 (h!25843 tuple2!17800) (t!35254 List!24638)) )
))
(declare-datatypes ((ListLongMap!15781 0))(
  ( (ListLongMap!15782 (toList!7906 List!24638)) )
))
(declare-fun lt!498423 () ListLongMap!15781)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498426 () array!73120)

(declare-fun getCurrentListMapNoExtraKeys!4367 (array!73120 array!73122 (_ BitVec 32) (_ BitVec 32) V!42657 V!42657 (_ BitVec 32) Int) ListLongMap!15781)

(assert (=> b!1121668 (= lt!498423 (getCurrentListMapNoExtraKeys!4367 lt!498426 lt!498422 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73122)

(declare-fun dynLambda!2466 (Int (_ BitVec 64)) V!42657)

(assert (=> b!1121668 (= lt!498422 (array!73123 (store (arr!35210 _values!996) i!673 (ValueCellFull!13364 (dynLambda!2466 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35747 _values!996)))))

(declare-fun lt!498421 () ListLongMap!15781)

(assert (=> b!1121668 (= lt!498421 (getCurrentListMapNoExtraKeys!4367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121669 () Bool)

(declare-fun res!749429 () Bool)

(assert (=> b!1121669 (=> (not res!749429) (not e!638677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121669 (= res!749429 (validMask!0 mask!1564))))

(declare-fun b!1121670 () Bool)

(declare-fun res!749427 () Bool)

(declare-fun e!638675 () Bool)

(assert (=> b!1121670 (=> (not res!749427) (not e!638675))))

(declare-datatypes ((List!24639 0))(
  ( (Nil!24636) (Cons!24635 (h!25844 (_ BitVec 64)) (t!35255 List!24639)) )
))
(declare-fun arrayNoDuplicates!0 (array!73120 (_ BitVec 32) List!24639) Bool)

(assert (=> b!1121670 (= res!749427 (arrayNoDuplicates!0 lt!498426 #b00000000000000000000000000000000 Nil!24636))))

(declare-fun mapIsEmpty!44038 () Bool)

(declare-fun mapRes!44038 () Bool)

(assert (=> mapIsEmpty!44038 mapRes!44038))

(declare-fun b!1121671 () Bool)

(declare-fun e!638673 () Bool)

(declare-fun call!47134 () ListLongMap!15781)

(declare-fun call!47135 () ListLongMap!15781)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1071 (ListLongMap!15781 (_ BitVec 64)) ListLongMap!15781)

(assert (=> b!1121671 (= e!638673 (= call!47134 (-!1071 call!47135 k!934)))))

(declare-fun b!1121672 () Bool)

(declare-fun res!749430 () Bool)

(assert (=> b!1121672 (=> (not res!749430) (not e!638677))))

(assert (=> b!1121672 (= res!749430 (and (= (size!35747 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35746 _keys!1208) (size!35747 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47131 () Bool)

(assert (=> bm!47131 (= call!47134 (getCurrentListMapNoExtraKeys!4367 lt!498426 lt!498422 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!749426 () Bool)

(assert (=> start!97952 (=> (not res!749426) (not e!638677))))

(assert (=> start!97952 (= res!749426 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35746 _keys!1208))))))

(assert (=> start!97952 e!638677))

(declare-fun tp_is_empty!28147 () Bool)

(assert (=> start!97952 tp_is_empty!28147))

(declare-fun array_inv!26914 (array!73120) Bool)

(assert (=> start!97952 (array_inv!26914 _keys!1208)))

(assert (=> start!97952 true))

(assert (=> start!97952 tp!83555))

(declare-fun e!638676 () Bool)

(declare-fun array_inv!26915 (array!73122) Bool)

(assert (=> start!97952 (and (array_inv!26915 _values!996) e!638676)))

(declare-fun mapNonEmpty!44038 () Bool)

(declare-fun tp!83556 () Bool)

(declare-fun e!638671 () Bool)

(assert (=> mapNonEmpty!44038 (= mapRes!44038 (and tp!83556 e!638671))))

(declare-fun mapKey!44038 () (_ BitVec 32))

(declare-fun mapValue!44038 () ValueCell!13364)

(declare-fun mapRest!44038 () (Array (_ BitVec 32) ValueCell!13364))

(assert (=> mapNonEmpty!44038 (= (arr!35210 _values!996) (store mapRest!44038 mapKey!44038 mapValue!44038))))

(declare-fun b!1121673 () Bool)

(declare-fun res!749423 () Bool)

(assert (=> b!1121673 (=> (not res!749423) (not e!638677))))

(assert (=> b!1121673 (= res!749423 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24636))))

(declare-fun b!1121674 () Bool)

(declare-fun res!749419 () Bool)

(assert (=> b!1121674 (=> (not res!749419) (not e!638677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121674 (= res!749419 (validKeyInArray!0 k!934))))

(declare-fun b!1121675 () Bool)

(declare-fun res!749424 () Bool)

(assert (=> b!1121675 (=> (not res!749424) (not e!638677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73120 (_ BitVec 32)) Bool)

(assert (=> b!1121675 (= res!749424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47132 () Bool)

(assert (=> bm!47132 (= call!47135 (getCurrentListMapNoExtraKeys!4367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121676 () Bool)

(declare-fun res!749420 () Bool)

(assert (=> b!1121676 (=> (not res!749420) (not e!638677))))

(assert (=> b!1121676 (= res!749420 (= (select (arr!35209 _keys!1208) i!673) k!934))))

(declare-fun b!1121677 () Bool)

(declare-fun e!638674 () Bool)

(assert (=> b!1121677 (= e!638676 (and e!638674 mapRes!44038))))

(declare-fun condMapEmpty!44038 () Bool)

(declare-fun mapDefault!44038 () ValueCell!13364)

