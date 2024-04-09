; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101184 () Bool)

(assert start!101184)

(declare-fun b_free!26071 () Bool)

(declare-fun b_next!26071 () Bool)

(assert (=> start!101184 (= b_free!26071 (not b_next!26071))))

(declare-fun tp!91236 () Bool)

(declare-fun b_and!43269 () Bool)

(assert (=> start!101184 (= tp!91236 b_and!43269)))

(declare-fun b!1213216 () Bool)

(declare-fun e!689036 () Bool)

(declare-fun e!689048 () Bool)

(assert (=> b!1213216 (= e!689036 e!689048)))

(declare-fun res!805714 () Bool)

(assert (=> b!1213216 (=> res!805714 e!689048)))

(declare-datatypes ((array!78310 0))(
  ( (array!78311 (arr!37786 (Array (_ BitVec 32) (_ BitVec 64))) (size!38323 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78310)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1213216 (= res!805714 (not (= (select (arr!37786 _keys!1208) from!1455) k!934)))))

(declare-fun e!689039 () Bool)

(assert (=> b!1213216 e!689039))

(declare-fun c!119789 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213216 (= c!119789 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46161 0))(
  ( (V!46162 (val!15444 Int)) )
))
(declare-fun zeroValue!944 () V!46161)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!40156 0))(
  ( (Unit!40157) )
))
(declare-fun lt!551517 () Unit!40156)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14678 0))(
  ( (ValueCellFull!14678 (v!18098 V!46161)) (EmptyCell!14678) )
))
(declare-datatypes ((array!78312 0))(
  ( (array!78313 (arr!37787 (Array (_ BitVec 32) ValueCell!14678)) (size!38324 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78312)

(declare-fun minValue!944 () V!46161)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1097 (array!78310 array!78312 (_ BitVec 32) (_ BitVec 32) V!46161 V!46161 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40156)

(assert (=> b!1213216 (= lt!551517 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1097 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213217 () Bool)

(declare-fun e!689035 () Bool)

(declare-fun e!689037 () Bool)

(assert (=> b!1213217 (= e!689035 e!689037)))

(declare-fun res!805706 () Bool)

(assert (=> b!1213217 (=> (not res!805706) (not e!689037))))

(declare-fun lt!551522 () array!78310)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78310 (_ BitVec 32)) Bool)

(assert (=> b!1213217 (= res!805706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551522 mask!1564))))

(assert (=> b!1213217 (= lt!551522 (array!78311 (store (arr!37786 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38323 _keys!1208)))))

(declare-fun e!689044 () Bool)

(declare-fun lt!551508 () Bool)

(declare-fun b!1213218 () Bool)

(assert (=> b!1213218 (= e!689044 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551508) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1213219 () Bool)

(declare-fun c!119792 () Bool)

(assert (=> b!1213219 (= c!119792 (and (not lt!551508) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!689034 () Unit!40156)

(declare-fun e!689043 () Unit!40156)

(assert (=> b!1213219 (= e!689034 e!689043)))

(declare-fun b!1213220 () Bool)

(declare-fun lt!551506 () Unit!40156)

(assert (=> b!1213220 (= e!689043 lt!551506)))

(declare-fun call!60339 () Unit!40156)

(assert (=> b!1213220 (= lt!551506 call!60339)))

(declare-fun call!60340 () Bool)

(assert (=> b!1213220 call!60340))

(declare-fun mapIsEmpty!48037 () Bool)

(declare-fun mapRes!48037 () Bool)

(assert (=> mapIsEmpty!48037 mapRes!48037))

(declare-fun b!1213221 () Bool)

(declare-fun e!689046 () Unit!40156)

(declare-fun Unit!40158 () Unit!40156)

(assert (=> b!1213221 (= e!689046 Unit!40158)))

(declare-fun b!1213222 () Bool)

(declare-fun res!805707 () Bool)

(assert (=> b!1213222 (=> (not res!805707) (not e!689035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213222 (= res!805707 (validMask!0 mask!1564))))

(declare-fun b!1213223 () Bool)

(declare-datatypes ((tuple2!19982 0))(
  ( (tuple2!19983 (_1!10001 (_ BitVec 64)) (_2!10001 V!46161)) )
))
(declare-datatypes ((List!26802 0))(
  ( (Nil!26799) (Cons!26798 (h!28007 tuple2!19982) (t!39860 List!26802)) )
))
(declare-datatypes ((ListLongMap!17963 0))(
  ( (ListLongMap!17964 (toList!8997 List!26802)) )
))
(declare-fun call!60333 () ListLongMap!17963)

(declare-fun call!60334 () ListLongMap!17963)

(declare-fun -!1892 (ListLongMap!17963 (_ BitVec 64)) ListLongMap!17963)

(assert (=> b!1213223 (= e!689039 (= call!60333 (-!1892 call!60334 k!934)))))

(declare-fun b!1213224 () Bool)

(declare-fun res!805711 () Bool)

(assert (=> b!1213224 (=> (not res!805711) (not e!689035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213224 (= res!805711 (validKeyInArray!0 k!934))))

(declare-fun res!805715 () Bool)

(assert (=> start!101184 (=> (not res!805715) (not e!689035))))

(assert (=> start!101184 (= res!805715 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38323 _keys!1208))))))

(assert (=> start!101184 e!689035))

(declare-fun tp_is_empty!30775 () Bool)

(assert (=> start!101184 tp_is_empty!30775))

(declare-fun array_inv!28680 (array!78310) Bool)

(assert (=> start!101184 (array_inv!28680 _keys!1208)))

(assert (=> start!101184 true))

(assert (=> start!101184 tp!91236))

(declare-fun e!689038 () Bool)

(declare-fun array_inv!28681 (array!78312) Bool)

(assert (=> start!101184 (and (array_inv!28681 _values!996) e!689038)))

(declare-fun bm!60330 () Bool)

(declare-fun call!60336 () Unit!40156)

(assert (=> bm!60330 (= call!60339 call!60336)))

(declare-fun b!1213225 () Bool)

(declare-fun e!689045 () Unit!40156)

(declare-fun Unit!40159 () Unit!40156)

(assert (=> b!1213225 (= e!689045 Unit!40159)))

(declare-fun b!1213226 () Bool)

(declare-fun res!805713 () Bool)

(assert (=> b!1213226 (=> (not res!805713) (not e!689035))))

(assert (=> b!1213226 (= res!805713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!60337 () ListLongMap!17963)

(declare-fun c!119794 () Bool)

(declare-fun bm!60331 () Bool)

(declare-fun call!60338 () Bool)

(declare-fun lt!551513 () ListLongMap!17963)

(declare-fun contains!7012 (ListLongMap!17963 (_ BitVec 64)) Bool)

(assert (=> bm!60331 (= call!60338 (contains!7012 (ite c!119794 lt!551513 call!60337) k!934))))

(declare-fun b!1213227 () Bool)

(declare-fun e!689041 () Bool)

(assert (=> b!1213227 (= e!689041 tp_is_empty!30775)))

(declare-fun b!1213228 () Bool)

(declare-fun e!689033 () Bool)

(declare-fun arrayContainsKey!0 (array!78310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213228 (= e!689033 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!551514 () array!78312)

(declare-fun b!1213229 () Bool)

(declare-fun e!689047 () Bool)

(declare-fun lt!551507 () ListLongMap!17963)

(declare-fun getCurrentListMapNoExtraKeys!5402 (array!78310 array!78312 (_ BitVec 32) (_ BitVec 32) V!46161 V!46161 (_ BitVec 32) Int) ListLongMap!17963)

(assert (=> b!1213229 (= e!689047 (= lt!551507 (getCurrentListMapNoExtraKeys!5402 lt!551522 lt!551514 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun lt!551521 () ListLongMap!17963)

(declare-fun bm!60332 () Bool)

(declare-fun addStillContains!1081 (ListLongMap!17963 (_ BitVec 64) V!46161 (_ BitVec 64)) Unit!40156)

(assert (=> bm!60332 (= call!60336 (addStillContains!1081 lt!551521 (ite (or c!119794 c!119792) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119794 c!119792) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!60333 () Bool)

(declare-fun call!60335 () ListLongMap!17963)

(assert (=> bm!60333 (= call!60337 call!60335)))

(declare-fun b!1213230 () Bool)

(declare-fun res!805709 () Bool)

(assert (=> b!1213230 (=> (not res!805709) (not e!689037))))

(declare-datatypes ((List!26803 0))(
  ( (Nil!26800) (Cons!26799 (h!28008 (_ BitVec 64)) (t!39861 List!26803)) )
))
(declare-fun arrayNoDuplicates!0 (array!78310 (_ BitVec 32) List!26803) Bool)

(assert (=> b!1213230 (= res!805709 (arrayNoDuplicates!0 lt!551522 #b00000000000000000000000000000000 Nil!26800))))

(declare-fun b!1213231 () Bool)

(declare-fun res!805708 () Bool)

(assert (=> b!1213231 (=> (not res!805708) (not e!689035))))

(assert (=> b!1213231 (= res!805708 (= (select (arr!37786 _keys!1208) i!673) k!934))))

(declare-fun bm!60334 () Bool)

(declare-fun +!4023 (ListLongMap!17963 tuple2!19982) ListLongMap!17963)

(assert (=> bm!60334 (= call!60335 (+!4023 lt!551521 (ite (or c!119794 c!119792) (tuple2!19983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19983 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1213232 () Bool)

(declare-fun e!689040 () Bool)

(assert (=> b!1213232 (= e!689038 (and e!689040 mapRes!48037))))

(declare-fun condMapEmpty!48037 () Bool)

(declare-fun mapDefault!48037 () ValueCell!14678)

