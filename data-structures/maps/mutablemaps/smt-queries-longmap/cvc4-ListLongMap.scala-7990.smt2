; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98820 () Bool)

(assert start!98820)

(declare-fun b_free!24389 () Bool)

(declare-fun b_next!24389 () Bool)

(assert (=> start!98820 (= b_free!24389 (not b_next!24389))))

(declare-fun tp!85879 () Bool)

(declare-fun b_and!39641 () Bool)

(assert (=> start!98820 (= tp!85879 b_and!39641)))

(declare-fun bm!54206 () Bool)

(declare-datatypes ((Unit!37846 0))(
  ( (Unit!37847) )
))
(declare-fun call!54209 () Unit!37846)

(declare-fun call!54216 () Unit!37846)

(assert (=> bm!54206 (= call!54209 call!54216)))

(declare-datatypes ((V!43685 0))(
  ( (V!43686 (val!14516 Int)) )
))
(declare-fun zeroValue!944 () V!43685)

(declare-datatypes ((tuple2!18514 0))(
  ( (tuple2!18515 (_1!9267 (_ BitVec 64)) (_2!9267 V!43685)) )
))
(declare-datatypes ((List!25304 0))(
  ( (Nil!25301) (Cons!25300 (h!26509 tuple2!18514) (t!36692 List!25304)) )
))
(declare-datatypes ((ListLongMap!16495 0))(
  ( (ListLongMap!16496 (toList!8263 List!25304)) )
))
(declare-fun call!54213 () ListLongMap!16495)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!74636 0))(
  ( (array!74637 (arr!35965 (Array (_ BitVec 32) (_ BitVec 64))) (size!36502 (_ BitVec 32))) )
))
(declare-fun lt!516516 () array!74636)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13750 0))(
  ( (ValueCellFull!13750 (v!17154 V!43685)) (EmptyCell!13750) )
))
(declare-datatypes ((array!74638 0))(
  ( (array!74639 (arr!35966 (Array (_ BitVec 32) ValueCell!13750)) (size!36503 (_ BitVec 32))) )
))
(declare-fun lt!516524 () array!74638)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!54207 () Bool)

(declare-fun minValue!944 () V!43685)

(declare-fun getCurrentListMapNoExtraKeys!4703 (array!74636 array!74638 (_ BitVec 32) (_ BitVec 32) V!43685 V!43685 (_ BitVec 32) Int) ListLongMap!16495)

(assert (=> bm!54207 (= call!54213 (getCurrentListMapNoExtraKeys!4703 lt!516516 lt!516524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152843 () Bool)

(declare-fun e!655710 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!54210 () ListLongMap!16495)

(declare-fun -!1346 (ListLongMap!16495 (_ BitVec 64)) ListLongMap!16495)

(assert (=> b!1152843 (= e!655710 (= call!54213 (-!1346 call!54210 k!934)))))

(declare-fun b!1152844 () Bool)

(declare-fun res!766469 () Bool)

(declare-fun e!655708 () Bool)

(assert (=> b!1152844 (=> (not res!766469) (not e!655708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152844 (= res!766469 (validKeyInArray!0 k!934))))

(declare-fun b!1152845 () Bool)

(declare-fun e!655712 () Unit!37846)

(declare-fun e!655717 () Unit!37846)

(assert (=> b!1152845 (= e!655712 e!655717)))

(declare-fun c!114307 () Bool)

(declare-fun lt!516528 () Bool)

(assert (=> b!1152845 (= c!114307 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516528))))

(declare-fun b!1152846 () Bool)

(declare-fun lt!516521 () ListLongMap!16495)

(declare-fun contains!6756 (ListLongMap!16495 (_ BitVec 64)) Bool)

(declare-fun +!3598 (ListLongMap!16495 tuple2!18514) ListLongMap!16495)

(assert (=> b!1152846 (contains!6756 (+!3598 lt!516521 (tuple2!18515 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!516533 () Unit!37846)

(declare-fun addStillContains!896 (ListLongMap!16495 (_ BitVec 64) V!43685 (_ BitVec 64)) Unit!37846)

(assert (=> b!1152846 (= lt!516533 (addStillContains!896 lt!516521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!54214 () Bool)

(assert (=> b!1152846 call!54214))

(declare-fun call!54212 () ListLongMap!16495)

(assert (=> b!1152846 (= lt!516521 call!54212)))

(declare-fun lt!516531 () Unit!37846)

(assert (=> b!1152846 (= lt!516531 call!54216)))

(declare-fun e!655713 () Unit!37846)

(assert (=> b!1152846 (= e!655713 lt!516533)))

(declare-fun b!1152847 () Bool)

(declare-fun res!766471 () Bool)

(assert (=> b!1152847 (=> (not res!766471) (not e!655708))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!74636)

(assert (=> b!1152847 (= res!766471 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36502 _keys!1208))))))

(declare-fun bm!54208 () Bool)

(declare-fun call!54211 () ListLongMap!16495)

(assert (=> bm!54208 (= call!54211 call!54212)))

(declare-fun b!1152848 () Bool)

(declare-fun res!766477 () Bool)

(assert (=> b!1152848 (=> (not res!766477) (not e!655708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74636 (_ BitVec 32)) Bool)

(assert (=> b!1152848 (= res!766477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54209 () Bool)

(declare-fun call!54215 () Bool)

(assert (=> bm!54209 (= call!54215 call!54214)))

(declare-fun b!1152849 () Bool)

(declare-fun c!114312 () Bool)

(assert (=> b!1152849 (= c!114312 (and (not lt!516528) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1152849 (= e!655713 e!655712)))

(declare-fun b!1152850 () Bool)

(declare-fun e!655707 () Bool)

(assert (=> b!1152850 (= e!655708 e!655707)))

(declare-fun res!766473 () Bool)

(assert (=> b!1152850 (=> (not res!766473) (not e!655707))))

(assert (=> b!1152850 (= res!766473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516516 mask!1564))))

(assert (=> b!1152850 (= lt!516516 (array!74637 (store (arr!35965 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36502 _keys!1208)))))

(declare-fun c!114308 () Bool)

(declare-fun bm!54210 () Bool)

(declare-fun lt!516532 () ListLongMap!16495)

(assert (=> bm!54210 (= call!54212 (+!3598 lt!516532 (ite (or c!114308 c!114312) (tuple2!18515 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18515 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1152851 () Bool)

(declare-fun e!655715 () Bool)

(assert (=> b!1152851 (= e!655707 (not e!655715))))

(declare-fun res!766470 () Bool)

(assert (=> b!1152851 (=> res!766470 e!655715)))

(assert (=> b!1152851 (= res!766470 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152851 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!516517 () Unit!37846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74636 (_ BitVec 64) (_ BitVec 32)) Unit!37846)

(assert (=> b!1152851 (= lt!516517 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45203 () Bool)

(declare-fun mapRes!45203 () Bool)

(assert (=> mapIsEmpty!45203 mapRes!45203))

(declare-fun b!1152852 () Bool)

(declare-fun res!766466 () Bool)

(assert (=> b!1152852 (=> (not res!766466) (not e!655708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152852 (= res!766466 (validMask!0 mask!1564))))

(declare-fun b!1152853 () Bool)

(declare-fun e!655720 () Bool)

(declare-fun e!655714 () Bool)

(assert (=> b!1152853 (= e!655720 (and e!655714 mapRes!45203))))

(declare-fun condMapEmpty!45203 () Bool)

(declare-fun _values!996 () array!74638)

(declare-fun mapDefault!45203 () ValueCell!13750)

