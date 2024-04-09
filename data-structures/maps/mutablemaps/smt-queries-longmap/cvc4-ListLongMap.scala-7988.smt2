; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98808 () Bool)

(assert start!98808)

(declare-fun b_free!24377 () Bool)

(declare-fun b_next!24377 () Bool)

(assert (=> start!98808 (= b_free!24377 (not b_next!24377))))

(declare-fun tp!85842 () Bool)

(declare-fun b_and!39617 () Bool)

(assert (=> start!98808 (= tp!85842 b_and!39617)))

(declare-fun b!1152290 () Bool)

(declare-datatypes ((Unit!37822 0))(
  ( (Unit!37823) )
))
(declare-fun e!655406 () Unit!37822)

(declare-fun Unit!37824 () Unit!37822)

(assert (=> b!1152290 (= e!655406 Unit!37824)))

(declare-fun mapIsEmpty!45185 () Bool)

(declare-fun mapRes!45185 () Bool)

(assert (=> mapIsEmpty!45185 mapRes!45185))

(declare-fun b!1152291 () Bool)

(declare-fun res!766206 () Bool)

(declare-fun e!655415 () Bool)

(assert (=> b!1152291 (=> (not res!766206) (not e!655415))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74612 0))(
  ( (array!74613 (arr!35953 (Array (_ BitVec 32) (_ BitVec 64))) (size!36490 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74612)

(assert (=> b!1152291 (= res!766206 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36490 _keys!1208))))))

(declare-fun b!1152292 () Bool)

(declare-fun e!655408 () Unit!37822)

(declare-fun lt!516127 () Unit!37822)

(assert (=> b!1152292 (= e!655408 lt!516127)))

(declare-fun call!54070 () Unit!37822)

(assert (=> b!1152292 (= lt!516127 call!54070)))

(declare-fun call!54072 () Bool)

(assert (=> b!1152292 call!54072))

(declare-datatypes ((V!43669 0))(
  ( (V!43670 (val!14510 Int)) )
))
(declare-fun zeroValue!944 () V!43669)

(declare-fun b!1152293 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43669)

(declare-datatypes ((ValueCell!13744 0))(
  ( (ValueCellFull!13744 (v!17148 V!43669)) (EmptyCell!13744) )
))
(declare-datatypes ((array!74614 0))(
  ( (array!74615 (arr!35954 (Array (_ BitVec 32) ValueCell!13744)) (size!36491 (_ BitVec 32))) )
))
(declare-fun lt!516128 () array!74614)

(declare-datatypes ((tuple2!18502 0))(
  ( (tuple2!18503 (_1!9261 (_ BitVec 64)) (_2!9261 V!43669)) )
))
(declare-datatypes ((List!25292 0))(
  ( (Nil!25289) (Cons!25288 (h!26497 tuple2!18502) (t!36668 List!25292)) )
))
(declare-datatypes ((ListLongMap!16483 0))(
  ( (ListLongMap!16484 (toList!8257 List!25292)) )
))
(declare-fun lt!516130 () ListLongMap!16483)

(declare-fun lt!516132 () array!74612)

(declare-fun e!655407 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4697 (array!74612 array!74614 (_ BitVec 32) (_ BitVec 32) V!43669 V!43669 (_ BitVec 32) Int) ListLongMap!16483)

(assert (=> b!1152293 (= e!655407 (= lt!516130 (getCurrentListMapNoExtraKeys!4697 lt!516132 lt!516128 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!54062 () Bool)

(declare-fun c!114200 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!516126 () ListLongMap!16483)

(declare-fun call!54065 () Bool)

(declare-fun call!54067 () ListLongMap!16483)

(declare-fun contains!6750 (ListLongMap!16483 (_ BitVec 64)) Bool)

(assert (=> bm!54062 (= call!54065 (contains!6750 (ite c!114200 lt!516126 call!54067) k!934))))

(declare-fun b!1152294 () Bool)

(declare-fun res!766194 () Bool)

(assert (=> b!1152294 (=> (not res!766194) (not e!655415))))

(assert (=> b!1152294 (= res!766194 (= (select (arr!35953 _keys!1208) i!673) k!934))))

(declare-fun lt!516122 () ListLongMap!16483)

(declare-fun c!114199 () Bool)

(declare-fun call!54068 () ListLongMap!16483)

(declare-fun bm!54063 () Bool)

(declare-fun +!3592 (ListLongMap!16483 tuple2!18502) ListLongMap!16483)

(assert (=> bm!54063 (= call!54068 (+!3592 lt!516122 (ite (or c!114200 c!114199) (tuple2!18503 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18503 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun res!766199 () Bool)

(assert (=> start!98808 (=> (not res!766199) (not e!655415))))

(assert (=> start!98808 (= res!766199 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36490 _keys!1208))))))

(assert (=> start!98808 e!655415))

(declare-fun tp_is_empty!28907 () Bool)

(assert (=> start!98808 tp_is_empty!28907))

(declare-fun array_inv!27406 (array!74612) Bool)

(assert (=> start!98808 (array_inv!27406 _keys!1208)))

(assert (=> start!98808 true))

(assert (=> start!98808 tp!85842))

(declare-fun _values!996 () array!74614)

(declare-fun e!655405 () Bool)

(declare-fun array_inv!27407 (array!74614) Bool)

(assert (=> start!98808 (and (array_inv!27407 _values!996) e!655405)))

(declare-fun b!1152295 () Bool)

(declare-fun e!655401 () Bool)

(declare-fun lt!516138 () Bool)

(assert (=> b!1152295 (= e!655401 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516138) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1152296 () Bool)

(declare-fun e!655402 () Bool)

(declare-fun e!655414 () Bool)

(assert (=> b!1152296 (= e!655402 (not e!655414))))

(declare-fun res!766195 () Bool)

(assert (=> b!1152296 (=> res!766195 e!655414)))

(assert (=> b!1152296 (= res!766195 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152296 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!516123 () Unit!37822)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74612 (_ BitVec 64) (_ BitVec 32)) Unit!37822)

(assert (=> b!1152296 (= lt!516123 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1152297 () Bool)

(declare-fun res!766204 () Bool)

(assert (=> b!1152297 (=> (not res!766204) (not e!655415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74612 (_ BitVec 32)) Bool)

(assert (=> b!1152297 (= res!766204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54064 () Bool)

(assert (=> bm!54064 (= call!54072 call!54065)))

(declare-fun b!1152298 () Bool)

(declare-fun res!766197 () Bool)

(assert (=> b!1152298 (=> (not res!766197) (not e!655402))))

(declare-datatypes ((List!25293 0))(
  ( (Nil!25290) (Cons!25289 (h!26498 (_ BitVec 64)) (t!36669 List!25293)) )
))
(declare-fun arrayNoDuplicates!0 (array!74612 (_ BitVec 32) List!25293) Bool)

(assert (=> b!1152298 (= res!766197 (arrayNoDuplicates!0 lt!516132 #b00000000000000000000000000000000 Nil!25290))))

(declare-fun b!1152299 () Bool)

(declare-fun res!766207 () Bool)

(assert (=> b!1152299 (=> (not res!766207) (not e!655415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152299 (= res!766207 (validMask!0 mask!1564))))

(declare-fun b!1152300 () Bool)

(declare-fun call!54071 () ListLongMap!16483)

(declare-fun call!54066 () ListLongMap!16483)

(declare-fun e!655410 () Bool)

(declare-fun -!1342 (ListLongMap!16483 (_ BitVec 64)) ListLongMap!16483)

(assert (=> b!1152300 (= e!655410 (= call!54071 (-!1342 call!54066 k!934)))))

(declare-fun bm!54065 () Bool)

(assert (=> bm!54065 (= call!54071 (getCurrentListMapNoExtraKeys!4697 lt!516132 lt!516128 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152301 () Bool)

(declare-fun res!766202 () Bool)

(assert (=> b!1152301 (=> (not res!766202) (not e!655415))))

(assert (=> b!1152301 (= res!766202 (and (= (size!36491 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36490 _keys!1208) (size!36491 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1152302 () Bool)

(assert (=> b!1152302 (= e!655408 e!655406)))

(declare-fun c!114201 () Bool)

(assert (=> b!1152302 (= c!114201 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516138))))

(declare-fun b!1152303 () Bool)

(assert (=> b!1152303 (= e!655410 (= call!54071 call!54066))))

(declare-fun mapNonEmpty!45185 () Bool)

(declare-fun tp!85843 () Bool)

(declare-fun e!655411 () Bool)

(assert (=> mapNonEmpty!45185 (= mapRes!45185 (and tp!85843 e!655411))))

(declare-fun mapKey!45185 () (_ BitVec 32))

(declare-fun mapValue!45185 () ValueCell!13744)

(declare-fun mapRest!45185 () (Array (_ BitVec 32) ValueCell!13744))

(assert (=> mapNonEmpty!45185 (= (arr!35954 _values!996) (store mapRest!45185 mapKey!45185 mapValue!45185))))

(declare-fun b!1152304 () Bool)

(declare-fun res!766201 () Bool)

(assert (=> b!1152304 (=> (not res!766201) (not e!655415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152304 (= res!766201 (validKeyInArray!0 k!934))))

(declare-fun b!1152305 () Bool)

(assert (=> b!1152305 (= e!655401 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152306 () Bool)

(declare-fun e!655413 () Bool)

(assert (=> b!1152306 (= e!655413 tp_is_empty!28907)))

(declare-fun b!1152307 () Bool)

(assert (=> b!1152307 (= e!655405 (and e!655413 mapRes!45185))))

(declare-fun condMapEmpty!45185 () Bool)

(declare-fun mapDefault!45185 () ValueCell!13744)

