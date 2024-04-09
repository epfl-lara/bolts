; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98498 () Bool)

(assert start!98498)

(declare-fun b_free!24067 () Bool)

(declare-fun b_next!24067 () Bool)

(assert (=> start!98498 (= b_free!24067 (not b_next!24067))))

(declare-fun tp!84913 () Bool)

(declare-fun b_and!38997 () Bool)

(assert (=> start!98498 (= tp!84913 b_and!38997)))

(declare-fun b!1138226 () Bool)

(declare-datatypes ((Unit!37242 0))(
  ( (Unit!37243) )
))
(declare-fun e!647691 () Unit!37242)

(declare-fun Unit!37244 () Unit!37242)

(assert (=> b!1138226 (= e!647691 Unit!37244)))

(declare-fun e!647699 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506342 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1138227 () Bool)

(assert (=> b!1138227 (= e!647699 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506342) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138228 () Bool)

(declare-fun res!759421 () Bool)

(declare-fun e!647701 () Bool)

(assert (=> b!1138228 (=> (not res!759421) (not e!647701))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74012 0))(
  ( (array!74013 (arr!35653 (Array (_ BitVec 32) (_ BitVec 64))) (size!36190 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74012)

(assert (=> b!1138228 (= res!759421 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36190 _keys!1208))))))

(declare-datatypes ((V!43257 0))(
  ( (V!43258 (val!14355 Int)) )
))
(declare-fun zeroValue!944 () V!43257)

(declare-datatypes ((tuple2!18226 0))(
  ( (tuple2!18227 (_1!9123 (_ BitVec 64)) (_2!9123 V!43257)) )
))
(declare-datatypes ((List!25032 0))(
  ( (Nil!25029) (Cons!25028 (h!26237 tuple2!18226) (t!36098 List!25032)) )
))
(declare-datatypes ((ListLongMap!16207 0))(
  ( (ListLongMap!16208 (toList!8119 List!25032)) )
))
(declare-fun lt!506343 () ListLongMap!16207)

(declare-fun c!111410 () Bool)

(declare-fun call!50347 () ListLongMap!16207)

(declare-fun c!111412 () Bool)

(declare-fun bm!50342 () Bool)

(declare-fun minValue!944 () V!43257)

(declare-fun +!3470 (ListLongMap!16207 tuple2!18226) ListLongMap!16207)

(assert (=> bm!50342 (= call!50347 (+!3470 lt!506343 (ite (or c!111412 c!111410) (tuple2!18227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18227 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1138229 () Bool)

(declare-fun call!50346 () Bool)

(assert (=> b!1138229 call!50346))

(declare-fun lt!506341 () Unit!37242)

(declare-fun call!50348 () Unit!37242)

(assert (=> b!1138229 (= lt!506341 call!50348)))

(declare-fun e!647703 () Unit!37242)

(assert (=> b!1138229 (= e!647703 lt!506341)))

(declare-fun b!1138230 () Bool)

(declare-fun res!759424 () Bool)

(assert (=> b!1138230 (=> (not res!759424) (not e!647701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138230 (= res!759424 (validKeyInArray!0 k!934))))

(declare-fun call!50351 () Unit!37242)

(declare-fun bm!50343 () Bool)

(declare-fun addStillContains!770 (ListLongMap!16207 (_ BitVec 64) V!43257 (_ BitVec 64)) Unit!37242)

(assert (=> bm!50343 (= call!50351 (addStillContains!770 lt!506343 (ite (or c!111412 c!111410) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111412 c!111410) zeroValue!944 minValue!944) k!934))))

(declare-fun res!759420 () Bool)

(assert (=> start!98498 (=> (not res!759420) (not e!647701))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98498 (= res!759420 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36190 _keys!1208))))))

(assert (=> start!98498 e!647701))

(declare-fun tp_is_empty!28597 () Bool)

(assert (=> start!98498 tp_is_empty!28597))

(declare-fun array_inv!27210 (array!74012) Bool)

(assert (=> start!98498 (array_inv!27210 _keys!1208)))

(assert (=> start!98498 true))

(assert (=> start!98498 tp!84913))

(declare-datatypes ((ValueCell!13589 0))(
  ( (ValueCellFull!13589 (v!16993 V!43257)) (EmptyCell!13589) )
))
(declare-datatypes ((array!74014 0))(
  ( (array!74015 (arr!35654 (Array (_ BitVec 32) ValueCell!13589)) (size!36191 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74014)

(declare-fun e!647702 () Bool)

(declare-fun array_inv!27211 (array!74014) Bool)

(assert (=> start!98498 (and (array_inv!27211 _values!996) e!647702)))

(declare-fun lt!506351 () array!74012)

(declare-fun call!50350 () ListLongMap!16207)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!506356 () array!74014)

(declare-fun bm!50344 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4566 (array!74012 array!74014 (_ BitVec 32) (_ BitVec 32) V!43257 V!43257 (_ BitVec 32) Int) ListLongMap!16207)

(assert (=> bm!50344 (= call!50350 (getCurrentListMapNoExtraKeys!4566 lt!506351 lt!506356 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138231 () Bool)

(declare-fun e!647697 () Bool)

(declare-fun e!647698 () Bool)

(assert (=> b!1138231 (= e!647697 e!647698)))

(declare-fun res!759416 () Bool)

(assert (=> b!1138231 (=> res!759416 e!647698)))

(assert (=> b!1138231 (= res!759416 (not (= (select (arr!35653 _keys!1208) from!1455) k!934)))))

(declare-fun e!647695 () Bool)

(assert (=> b!1138231 e!647695))

(declare-fun c!111414 () Bool)

(assert (=> b!1138231 (= c!111414 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506358 () Unit!37242)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!482 (array!74012 array!74014 (_ BitVec 32) (_ BitVec 32) V!43257 V!43257 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37242)

(assert (=> b!1138231 (= lt!506358 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138232 () Bool)

(declare-fun lt!506350 () ListLongMap!16207)

(declare-fun contains!6629 (ListLongMap!16207 (_ BitVec 64)) Bool)

(assert (=> b!1138232 (contains!6629 (+!3470 lt!506350 (tuple2!18227 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!506347 () Unit!37242)

(assert (=> b!1138232 (= lt!506347 (addStillContains!770 lt!506350 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!50352 () Bool)

(assert (=> b!1138232 call!50352))

(assert (=> b!1138232 (= lt!506350 call!50347)))

(declare-fun lt!506353 () Unit!37242)

(assert (=> b!1138232 (= lt!506353 call!50351)))

(declare-fun e!647700 () Unit!37242)

(assert (=> b!1138232 (= e!647700 lt!506347)))

(declare-fun b!1138233 () Bool)

(declare-fun e!647693 () Bool)

(declare-fun mapRes!44720 () Bool)

(assert (=> b!1138233 (= e!647702 (and e!647693 mapRes!44720))))

(declare-fun condMapEmpty!44720 () Bool)

(declare-fun mapDefault!44720 () ValueCell!13589)

