; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98220 () Bool)

(assert start!98220)

(declare-fun b_free!23885 () Bool)

(declare-fun b_next!23885 () Bool)

(assert (=> start!98220 (= b_free!23885 (not b_next!23885))))

(declare-fun tp!84359 () Bool)

(declare-fun b_and!38575 () Bool)

(assert (=> start!98220 (= tp!84359 b_and!38575)))

(declare-fun bm!48091 () Bool)

(declare-datatypes ((Unit!36953 0))(
  ( (Unit!36954) )
))
(declare-fun call!48098 () Unit!36953)

(declare-fun call!48094 () Unit!36953)

(assert (=> bm!48091 (= call!48098 call!48094)))

(declare-fun b!1129570 () Bool)

(declare-fun e!642907 () Bool)

(declare-fun tp_is_empty!28415 () Bool)

(assert (=> b!1129570 (= e!642907 tp_is_empty!28415)))

(declare-fun b!1129571 () Bool)

(declare-fun e!642902 () Unit!36953)

(declare-fun lt!501492 () Unit!36953)

(assert (=> b!1129571 (= e!642902 lt!501492)))

(declare-datatypes ((V!43013 0))(
  ( (V!43014 (val!14264 Int)) )
))
(declare-fun zeroValue!944 () V!43013)

(declare-fun lt!501497 () Unit!36953)

(declare-datatypes ((tuple2!18052 0))(
  ( (tuple2!18053 (_1!9036 (_ BitVec 64)) (_2!9036 V!43013)) )
))
(declare-datatypes ((List!24871 0))(
  ( (Nil!24868) (Cons!24867 (h!26076 tuple2!18052) (t!35755 List!24871)) )
))
(declare-datatypes ((ListLongMap!16033 0))(
  ( (ListLongMap!16034 (toList!8032 List!24871)) )
))
(declare-fun lt!501494 () ListLongMap!16033)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun addStillContains!699 (ListLongMap!16033 (_ BitVec 64) V!43013 (_ BitVec 64)) Unit!36953)

(assert (=> b!1129571 (= lt!501497 (addStillContains!699 lt!501494 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!501498 () ListLongMap!16033)

(declare-fun +!3400 (ListLongMap!16033 tuple2!18052) ListLongMap!16033)

(assert (=> b!1129571 (= lt!501498 (+!3400 lt!501494 (tuple2!18053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!48101 () Bool)

(assert (=> b!1129571 call!48101))

(assert (=> b!1129571 (= lt!501492 call!48094)))

(declare-fun call!48099 () ListLongMap!16033)

(declare-fun contains!6526 (ListLongMap!16033 (_ BitVec 64)) Bool)

(assert (=> b!1129571 (contains!6526 call!48099 k!934)))

(declare-fun b!1129572 () Bool)

(declare-fun e!642895 () Unit!36953)

(assert (=> b!1129572 (= e!642902 e!642895)))

(declare-fun c!109857 () Bool)

(declare-fun lt!501499 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1129572 (= c!109857 (and (not lt!501499) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129573 () Bool)

(declare-fun e!642898 () Unit!36953)

(declare-fun lt!501491 () Unit!36953)

(assert (=> b!1129573 (= e!642898 lt!501491)))

(assert (=> b!1129573 (= lt!501491 call!48098)))

(declare-fun call!48100 () Bool)

(assert (=> b!1129573 call!48100))

(declare-fun b!1129574 () Bool)

(declare-fun e!642901 () Bool)

(declare-fun e!642903 () Bool)

(assert (=> b!1129574 (= e!642901 (not e!642903))))

(declare-fun res!754899 () Bool)

(assert (=> b!1129574 (=> res!754899 e!642903)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129574 (= res!754899 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73648 0))(
  ( (array!73649 (arr!35473 (Array (_ BitVec 32) (_ BitVec 64))) (size!36010 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73648)

(declare-fun arrayContainsKey!0 (array!73648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129574 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501496 () Unit!36953)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73648 (_ BitVec 64) (_ BitVec 32)) Unit!36953)

(assert (=> b!1129574 (= lt!501496 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1129576 () Bool)

(assert (=> b!1129576 call!48100))

(declare-fun lt!501504 () Unit!36953)

(assert (=> b!1129576 (= lt!501504 call!48098)))

(assert (=> b!1129576 (= e!642895 lt!501504)))

(declare-fun b!1129577 () Bool)

(declare-fun res!754891 () Bool)

(assert (=> b!1129577 (=> (not res!754891) (not e!642901))))

(declare-fun lt!501500 () array!73648)

(declare-datatypes ((List!24872 0))(
  ( (Nil!24869) (Cons!24868 (h!26077 (_ BitVec 64)) (t!35756 List!24872)) )
))
(declare-fun arrayNoDuplicates!0 (array!73648 (_ BitVec 32) List!24872) Bool)

(assert (=> b!1129577 (= res!754891 (arrayNoDuplicates!0 lt!501500 #b00000000000000000000000000000000 Nil!24869))))

(declare-fun minValue!944 () V!43013)

(declare-fun bm!48092 () Bool)

(declare-fun c!109856 () Bool)

(assert (=> bm!48092 (= call!48099 (+!3400 (ite c!109856 lt!501498 lt!501494) (ite c!109856 (tuple2!18053 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!109857 (tuple2!18053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18053 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1129578 () Bool)

(declare-fun e!642905 () Bool)

(declare-fun e!642906 () Bool)

(assert (=> b!1129578 (= e!642905 e!642906)))

(declare-fun res!754900 () Bool)

(assert (=> b!1129578 (=> res!754900 e!642906)))

(assert (=> b!1129578 (= res!754900 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36010 _keys!1208))))))

(declare-fun lt!501503 () Unit!36953)

(assert (=> b!1129578 (= lt!501503 e!642902)))

(assert (=> b!1129578 (= c!109856 (and (not lt!501499) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129578 (= lt!501499 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1129579 () Bool)

(declare-fun res!754894 () Bool)

(declare-fun e!642899 () Bool)

(assert (=> b!1129579 (=> (not res!754894) (not e!642899))))

(assert (=> b!1129579 (= res!754894 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24869))))

(declare-fun b!1129580 () Bool)

(declare-fun Unit!36955 () Unit!36953)

(assert (=> b!1129580 (= e!642898 Unit!36955)))

(declare-fun b!1129581 () Bool)

(declare-fun res!754892 () Bool)

(assert (=> b!1129581 (=> (not res!754892) (not e!642899))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129581 (= res!754892 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44440 () Bool)

(declare-fun mapRes!44440 () Bool)

(declare-fun tp!84360 () Bool)

(assert (=> mapNonEmpty!44440 (= mapRes!44440 (and tp!84360 e!642907))))

(declare-fun mapKey!44440 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13498 0))(
  ( (ValueCellFull!13498 (v!16898 V!43013)) (EmptyCell!13498) )
))
(declare-datatypes ((array!73650 0))(
  ( (array!73651 (arr!35474 (Array (_ BitVec 32) ValueCell!13498)) (size!36011 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73650)

(declare-fun mapRest!44440 () (Array (_ BitVec 32) ValueCell!13498))

(declare-fun mapValue!44440 () ValueCell!13498)

(assert (=> mapNonEmpty!44440 (= (arr!35474 _values!996) (store mapRest!44440 mapKey!44440 mapValue!44440))))

(declare-fun b!1129582 () Bool)

(declare-fun res!754888 () Bool)

(assert (=> b!1129582 (=> (not res!754888) (not e!642899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73648 (_ BitVec 32)) Bool)

(assert (=> b!1129582 (= res!754888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129583 () Bool)

(declare-fun e!642896 () Bool)

(assert (=> b!1129583 (= e!642896 e!642905)))

(declare-fun res!754897 () Bool)

(assert (=> b!1129583 (=> res!754897 e!642905)))

(assert (=> b!1129583 (= res!754897 (not (contains!6526 lt!501494 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4485 (array!73648 array!73650 (_ BitVec 32) (_ BitVec 32) V!43013 V!43013 (_ BitVec 32) Int) ListLongMap!16033)

(assert (=> b!1129583 (= lt!501494 (getCurrentListMapNoExtraKeys!4485 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129584 () Bool)

(assert (=> b!1129584 (= e!642899 e!642901)))

(declare-fun res!754902 () Bool)

(assert (=> b!1129584 (=> (not res!754902) (not e!642901))))

(assert (=> b!1129584 (= res!754902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501500 mask!1564))))

(assert (=> b!1129584 (= lt!501500 (array!73649 (store (arr!35473 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36010 _keys!1208)))))

(declare-fun b!1129585 () Bool)

(declare-fun e!642904 () Bool)

(assert (=> b!1129585 (= e!642903 e!642904)))

(declare-fun res!754898 () Bool)

(assert (=> b!1129585 (=> res!754898 e!642904)))

(assert (=> b!1129585 (= res!754898 (not (= from!1455 i!673)))))

(declare-fun lt!501490 () array!73650)

(declare-fun lt!501495 () ListLongMap!16033)

(assert (=> b!1129585 (= lt!501495 (getCurrentListMapNoExtraKeys!4485 lt!501500 lt!501490 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2562 (Int (_ BitVec 64)) V!43013)

(assert (=> b!1129585 (= lt!501490 (array!73651 (store (arr!35474 _values!996) i!673 (ValueCellFull!13498 (dynLambda!2562 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36011 _values!996)))))

(declare-fun lt!501501 () ListLongMap!16033)

(assert (=> b!1129585 (= lt!501501 (getCurrentListMapNoExtraKeys!4485 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!48093 () Bool)

(declare-fun call!48097 () ListLongMap!16033)

(assert (=> bm!48093 (= call!48101 (contains!6526 (ite c!109856 lt!501498 call!48097) k!934))))

(declare-fun b!1129586 () Bool)

(declare-fun res!754896 () Bool)

(assert (=> b!1129586 (=> (not res!754896) (not e!642899))))

(assert (=> b!1129586 (= res!754896 (= (select (arr!35473 _keys!1208) i!673) k!934))))

(declare-fun b!1129587 () Bool)

(declare-fun c!109858 () Bool)

(assert (=> b!1129587 (= c!109858 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501499))))

(assert (=> b!1129587 (= e!642895 e!642898)))

(declare-fun b!1129588 () Bool)

(declare-fun e!642908 () Bool)

(declare-fun e!642897 () Bool)

(assert (=> b!1129588 (= e!642908 (and e!642897 mapRes!44440))))

(declare-fun condMapEmpty!44440 () Bool)

(declare-fun mapDefault!44440 () ValueCell!13498)

