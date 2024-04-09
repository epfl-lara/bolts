; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98058 () Bool)

(assert start!98058)

(declare-fun b_free!23723 () Bool)

(declare-fun b_next!23723 () Bool)

(assert (=> start!98058 (= b_free!23723 (not b_next!23723))))

(declare-fun tp!83874 () Bool)

(declare-fun b_and!38251 () Bool)

(assert (=> start!98058 (= tp!83874 b_and!38251)))

(declare-fun res!751589 () Bool)

(declare-fun e!640297 () Bool)

(assert (=> start!98058 (=> (not res!751589) (not e!640297))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73330 0))(
  ( (array!73331 (arr!35314 (Array (_ BitVec 32) (_ BitVec 64))) (size!35851 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73330)

(assert (=> start!98058 (= res!751589 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35851 _keys!1208))))))

(assert (=> start!98058 e!640297))

(declare-fun tp_is_empty!28253 () Bool)

(assert (=> start!98058 tp_is_empty!28253))

(declare-fun array_inv!26980 (array!73330) Bool)

(assert (=> start!98058 (array_inv!26980 _keys!1208)))

(assert (=> start!98058 true))

(assert (=> start!98058 tp!83874))

(declare-datatypes ((V!42797 0))(
  ( (V!42798 (val!14183 Int)) )
))
(declare-datatypes ((ValueCell!13417 0))(
  ( (ValueCellFull!13417 (v!16817 V!42797)) (EmptyCell!13417) )
))
(declare-datatypes ((array!73332 0))(
  ( (array!73333 (arr!35315 (Array (_ BitVec 32) ValueCell!13417)) (size!35852 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73332)

(declare-fun e!640303 () Bool)

(declare-fun array_inv!26981 (array!73332) Bool)

(assert (=> start!98058 (and (array_inv!26981 _values!996) e!640303)))

(declare-fun zeroValue!944 () V!42797)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!499563 () array!73332)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!499569 () array!73330)

(declare-fun minValue!944 () V!42797)

(declare-fun bm!47449 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!17900 0))(
  ( (tuple2!17901 (_1!8960 (_ BitVec 64)) (_2!8960 V!42797)) )
))
(declare-datatypes ((List!24730 0))(
  ( (Nil!24727) (Cons!24726 (h!25935 tuple2!17900) (t!35452 List!24730)) )
))
(declare-datatypes ((ListLongMap!15881 0))(
  ( (ListLongMap!15882 (toList!7956 List!24730)) )
))
(declare-fun call!47452 () ListLongMap!15881)

(declare-fun getCurrentListMapNoExtraKeys!4415 (array!73330 array!73332 (_ BitVec 32) (_ BitVec 32) V!42797 V!42797 (_ BitVec 32) Int) ListLongMap!15881)

(assert (=> bm!47449 (= call!47452 (getCurrentListMapNoExtraKeys!4415 lt!499569 lt!499563 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124734 () Bool)

(declare-fun res!751593 () Bool)

(assert (=> b!1124734 (=> (not res!751593) (not e!640297))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124734 (= res!751593 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35851 _keys!1208))))))

(declare-fun b!1124735 () Bool)

(declare-fun e!640299 () Bool)

(assert (=> b!1124735 (= e!640299 tp_is_empty!28253)))

(declare-fun b!1124736 () Bool)

(declare-fun e!640306 () Bool)

(assert (=> b!1124736 (= e!640306 true)))

(declare-fun lt!499565 () ListLongMap!15881)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6467 (ListLongMap!15881 (_ BitVec 64)) Bool)

(declare-fun +!3382 (ListLongMap!15881 tuple2!17900) ListLongMap!15881)

(assert (=> b!1124736 (contains!6467 (+!3382 lt!499565 (tuple2!17901 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-datatypes ((Unit!36809 0))(
  ( (Unit!36810) )
))
(declare-fun lt!499562 () Unit!36809)

(declare-fun addStillContains!681 (ListLongMap!15881 (_ BitVec 64) V!42797 (_ BitVec 64)) Unit!36809)

(assert (=> b!1124736 (= lt!499562 (addStillContains!681 lt!499565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1124737 () Bool)

(declare-fun res!751594 () Bool)

(assert (=> b!1124737 (=> (not res!751594) (not e!640297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124737 (= res!751594 (validMask!0 mask!1564))))

(declare-fun b!1124738 () Bool)

(declare-fun e!640307 () Bool)

(declare-fun call!47453 () ListLongMap!15881)

(assert (=> b!1124738 (= e!640307 (= call!47452 call!47453))))

(declare-fun mapNonEmpty!44197 () Bool)

(declare-fun mapRes!44197 () Bool)

(declare-fun tp!83873 () Bool)

(assert (=> mapNonEmpty!44197 (= mapRes!44197 (and tp!83873 e!640299))))

(declare-fun mapValue!44197 () ValueCell!13417)

(declare-fun mapRest!44197 () (Array (_ BitVec 32) ValueCell!13417))

(declare-fun mapKey!44197 () (_ BitVec 32))

(assert (=> mapNonEmpty!44197 (= (arr!35315 _values!996) (store mapRest!44197 mapKey!44197 mapValue!44197))))

(declare-fun b!1124739 () Bool)

(declare-fun res!751590 () Bool)

(assert (=> b!1124739 (=> (not res!751590) (not e!640297))))

(assert (=> b!1124739 (= res!751590 (= (select (arr!35314 _keys!1208) i!673) k!934))))

(declare-fun b!1124740 () Bool)

(declare-fun res!751587 () Bool)

(assert (=> b!1124740 (=> (not res!751587) (not e!640297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124740 (= res!751587 (validKeyInArray!0 k!934))))

(declare-fun b!1124741 () Bool)

(declare-fun res!751588 () Bool)

(assert (=> b!1124741 (=> (not res!751588) (not e!640297))))

(assert (=> b!1124741 (= res!751588 (and (= (size!35852 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35851 _keys!1208) (size!35852 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124742 () Bool)

(declare-fun res!751586 () Bool)

(assert (=> b!1124742 (=> (not res!751586) (not e!640297))))

(declare-datatypes ((List!24731 0))(
  ( (Nil!24728) (Cons!24727 (h!25936 (_ BitVec 64)) (t!35453 List!24731)) )
))
(declare-fun arrayNoDuplicates!0 (array!73330 (_ BitVec 32) List!24731) Bool)

(assert (=> b!1124742 (= res!751586 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24728))))

(declare-fun b!1124743 () Bool)

(declare-fun e!640301 () Bool)

(assert (=> b!1124743 (= e!640301 tp_is_empty!28253)))

(declare-fun b!1124744 () Bool)

(declare-fun e!640298 () Bool)

(declare-fun e!640300 () Bool)

(assert (=> b!1124744 (= e!640298 (not e!640300))))

(declare-fun res!751591 () Bool)

(assert (=> b!1124744 (=> res!751591 e!640300)))

(assert (=> b!1124744 (= res!751591 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124744 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499567 () Unit!36809)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73330 (_ BitVec 64) (_ BitVec 32)) Unit!36809)

(assert (=> b!1124744 (= lt!499567 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1124745 () Bool)

(declare-fun -!1105 (ListLongMap!15881 (_ BitVec 64)) ListLongMap!15881)

(assert (=> b!1124745 (= e!640307 (= call!47452 (-!1105 call!47453 k!934)))))

(declare-fun b!1124746 () Bool)

(declare-fun res!751596 () Bool)

(assert (=> b!1124746 (=> (not res!751596) (not e!640297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73330 (_ BitVec 32)) Bool)

(assert (=> b!1124746 (= res!751596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124747 () Bool)

(assert (=> b!1124747 (= e!640303 (and e!640301 mapRes!44197))))

(declare-fun condMapEmpty!44197 () Bool)

(declare-fun mapDefault!44197 () ValueCell!13417)

