; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98102 () Bool)

(assert start!98102)

(declare-fun b_free!23767 () Bool)

(declare-fun b_next!23767 () Bool)

(assert (=> start!98102 (= b_free!23767 (not b_next!23767))))

(declare-fun tp!84005 () Bool)

(declare-fun b_and!38339 () Bool)

(assert (=> start!98102 (= tp!84005 b_and!38339)))

(declare-fun b!1126040 () Bool)

(declare-fun e!640997 () Bool)

(declare-fun e!641003 () Bool)

(assert (=> b!1126040 (= e!640997 (not e!641003))))

(declare-fun res!752519 () Bool)

(assert (=> b!1126040 (=> res!752519 e!641003)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126040 (= res!752519 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73416 0))(
  ( (array!73417 (arr!35357 (Array (_ BitVec 32) (_ BitVec 64))) (size!35894 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73416)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126040 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36847 0))(
  ( (Unit!36848) )
))
(declare-fun lt!500067 () Unit!36847)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73416 (_ BitVec 64) (_ BitVec 32)) Unit!36847)

(assert (=> b!1126040 (= lt!500067 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1126041 () Bool)

(declare-fun e!641002 () Bool)

(assert (=> b!1126041 (= e!641002 true)))

(declare-datatypes ((V!42857 0))(
  ( (V!42858 (val!14205 Int)) )
))
(declare-fun zeroValue!944 () V!42857)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13439 0))(
  ( (ValueCellFull!13439 (v!16839 V!42857)) (EmptyCell!13439) )
))
(declare-datatypes ((array!73418 0))(
  ( (array!73419 (arr!35358 (Array (_ BitVec 32) ValueCell!13439)) (size!35895 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73418)

(declare-fun minValue!944 () V!42857)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!500061 () Bool)

(declare-datatypes ((tuple2!17942 0))(
  ( (tuple2!17943 (_1!8981 (_ BitVec 64)) (_2!8981 V!42857)) )
))
(declare-datatypes ((List!24769 0))(
  ( (Nil!24766) (Cons!24765 (h!25974 tuple2!17942) (t!35535 List!24769)) )
))
(declare-datatypes ((ListLongMap!15923 0))(
  ( (ListLongMap!15924 (toList!7977 List!24769)) )
))
(declare-fun contains!6486 (ListLongMap!15923 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4436 (array!73416 array!73418 (_ BitVec 32) (_ BitVec 32) V!42857 V!42857 (_ BitVec 32) Int) ListLongMap!15923)

(assert (=> b!1126041 (= lt!500061 (contains!6486 (getCurrentListMapNoExtraKeys!4436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1126042 () Bool)

(declare-fun res!752517 () Bool)

(assert (=> b!1126042 (=> (not res!752517) (not e!640997))))

(declare-fun lt!500066 () array!73416)

(declare-datatypes ((List!24770 0))(
  ( (Nil!24767) (Cons!24766 (h!25975 (_ BitVec 64)) (t!35536 List!24770)) )
))
(declare-fun arrayNoDuplicates!0 (array!73416 (_ BitVec 32) List!24770) Bool)

(assert (=> b!1126042 (= res!752517 (arrayNoDuplicates!0 lt!500066 #b00000000000000000000000000000000 Nil!24767))))

(declare-fun b!1126043 () Bool)

(declare-fun e!641001 () Bool)

(declare-fun call!47584 () ListLongMap!15923)

(declare-fun call!47585 () ListLongMap!15923)

(assert (=> b!1126043 (= e!641001 (= call!47584 call!47585))))

(declare-fun b!1126044 () Bool)

(declare-fun e!640996 () Bool)

(assert (=> b!1126044 (= e!640996 e!640997)))

(declare-fun res!752527 () Bool)

(assert (=> b!1126044 (=> (not res!752527) (not e!640997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73416 (_ BitVec 32)) Bool)

(assert (=> b!1126044 (= res!752527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500066 mask!1564))))

(assert (=> b!1126044 (= lt!500066 (array!73417 (store (arr!35357 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35894 _keys!1208)))))

(declare-fun bm!47581 () Bool)

(assert (=> bm!47581 (= call!47585 (getCurrentListMapNoExtraKeys!4436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126045 () Bool)

(declare-fun res!752521 () Bool)

(assert (=> b!1126045 (=> (not res!752521) (not e!640996))))

(assert (=> b!1126045 (= res!752521 (and (= (size!35895 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35894 _keys!1208) (size!35895 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126046 () Bool)

(declare-fun e!641000 () Bool)

(assert (=> b!1126046 (= e!641003 e!641000)))

(declare-fun res!752523 () Bool)

(assert (=> b!1126046 (=> res!752523 e!641000)))

(assert (=> b!1126046 (= res!752523 (not (= from!1455 i!673)))))

(declare-fun lt!500063 () ListLongMap!15923)

(declare-fun lt!500062 () array!73418)

(assert (=> b!1126046 (= lt!500063 (getCurrentListMapNoExtraKeys!4436 lt!500066 lt!500062 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2517 (Int (_ BitVec 64)) V!42857)

(assert (=> b!1126046 (= lt!500062 (array!73419 (store (arr!35358 _values!996) i!673 (ValueCellFull!13439 (dynLambda!2517 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35895 _values!996)))))

(declare-fun lt!500064 () ListLongMap!15923)

(assert (=> b!1126046 (= lt!500064 (getCurrentListMapNoExtraKeys!4436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126047 () Bool)

(declare-fun res!752526 () Bool)

(assert (=> b!1126047 (=> (not res!752526) (not e!640996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126047 (= res!752526 (validMask!0 mask!1564))))

(declare-fun b!1126048 () Bool)

(declare-fun e!640998 () Bool)

(declare-fun e!640994 () Bool)

(declare-fun mapRes!44263 () Bool)

(assert (=> b!1126048 (= e!640998 (and e!640994 mapRes!44263))))

(declare-fun condMapEmpty!44263 () Bool)

(declare-fun mapDefault!44263 () ValueCell!13439)

