; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98684 () Bool)

(assert start!98684)

(declare-fun b_free!24253 () Bool)

(declare-fun b_next!24253 () Bool)

(assert (=> start!98684 (= b_free!24253 (not b_next!24253))))

(declare-fun tp!85471 () Bool)

(declare-fun b_and!39369 () Bool)

(assert (=> start!98684 (= tp!85471 b_and!39369)))

(declare-datatypes ((V!43505 0))(
  ( (V!43506 (val!14448 Int)) )
))
(declare-fun zeroValue!944 () V!43505)

(declare-fun c!113085 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!113086 () Bool)

(declare-fun minValue!944 () V!43505)

(declare-fun bm!52574 () Bool)

(declare-datatypes ((Unit!37578 0))(
  ( (Unit!37579) )
))
(declare-fun call!52577 () Unit!37578)

(declare-datatypes ((tuple2!18388 0))(
  ( (tuple2!18389 (_1!9204 (_ BitVec 64)) (_2!9204 V!43505)) )
))
(declare-datatypes ((List!25185 0))(
  ( (Nil!25182) (Cons!25181 (h!26390 tuple2!18388) (t!36437 List!25185)) )
))
(declare-datatypes ((ListLongMap!16369 0))(
  ( (ListLongMap!16370 (toList!8200 List!25185)) )
))
(declare-fun lt!512114 () ListLongMap!16369)

(declare-fun lt!512125 () ListLongMap!16369)

(declare-fun addStillContains!839 (ListLongMap!16369 (_ BitVec 64) V!43505 (_ BitVec 64)) Unit!37578)

(assert (=> bm!52574 (= call!52577 (addStillContains!839 (ite c!113085 lt!512114 lt!512125) (ite c!113085 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113086 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113085 minValue!944 (ite c!113086 zeroValue!944 minValue!944)) k!934))))

(declare-datatypes ((array!74370 0))(
  ( (array!74371 (arr!35832 (Array (_ BitVec 32) (_ BitVec 64))) (size!36369 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74370)

(declare-fun e!652243 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1146586 () Bool)

(declare-fun arrayContainsKey!0 (array!74370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146586 (= e!652243 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!763416 () Bool)

(declare-fun e!652253 () Bool)

(assert (=> start!98684 (=> (not res!763416) (not e!652253))))

(assert (=> start!98684 (= res!763416 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36369 _keys!1208))))))

(assert (=> start!98684 e!652253))

(declare-fun tp_is_empty!28783 () Bool)

(assert (=> start!98684 tp_is_empty!28783))

(declare-fun array_inv!27330 (array!74370) Bool)

(assert (=> start!98684 (array_inv!27330 _keys!1208)))

(assert (=> start!98684 true))

(assert (=> start!98684 tp!85471))

(declare-datatypes ((ValueCell!13682 0))(
  ( (ValueCellFull!13682 (v!17086 V!43505)) (EmptyCell!13682) )
))
(declare-datatypes ((array!74372 0))(
  ( (array!74373 (arr!35833 (Array (_ BitVec 32) ValueCell!13682)) (size!36370 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74372)

(declare-fun e!652247 () Bool)

(declare-fun array_inv!27331 (array!74372) Bool)

(assert (=> start!98684 (and (array_inv!27331 _values!996) e!652247)))

(declare-fun bm!52575 () Bool)

(declare-fun call!52581 () ListLongMap!16369)

(declare-fun +!3542 (ListLongMap!16369 tuple2!18388) ListLongMap!16369)

(assert (=> bm!52575 (= call!52581 (+!3542 (ite c!113085 lt!512114 lt!512125) (ite c!113085 (tuple2!18389 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113086 (tuple2!18389 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18389 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146587 () Bool)

(declare-fun e!652246 () Bool)

(assert (=> b!1146587 (= e!652246 tp_is_empty!28783)))

(declare-fun bm!52576 () Bool)

(declare-fun call!52579 () Unit!37578)

(assert (=> bm!52576 (= call!52579 call!52577)))

(declare-fun e!652251 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!512123 () Bool)

(declare-fun b!1146588 () Bool)

(assert (=> b!1146588 (= e!652251 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512123) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!52584 () Bool)

(declare-fun bm!52577 () Bool)

(declare-fun call!52583 () ListLongMap!16369)

(declare-fun contains!6699 (ListLongMap!16369 (_ BitVec 64)) Bool)

(assert (=> bm!52577 (= call!52584 (contains!6699 (ite c!113085 lt!512114 call!52583) k!934))))

(declare-fun b!1146589 () Bool)

(declare-fun res!763408 () Bool)

(declare-fun e!652248 () Bool)

(assert (=> b!1146589 (=> (not res!763408) (not e!652248))))

(declare-fun lt!512121 () array!74370)

(declare-datatypes ((List!25186 0))(
  ( (Nil!25183) (Cons!25182 (h!26391 (_ BitVec 64)) (t!36438 List!25186)) )
))
(declare-fun arrayNoDuplicates!0 (array!74370 (_ BitVec 32) List!25186) Bool)

(assert (=> b!1146589 (= res!763408 (arrayNoDuplicates!0 lt!512121 #b00000000000000000000000000000000 Nil!25183))))

(declare-fun b!1146590 () Bool)

(declare-fun e!652249 () Bool)

(declare-fun lt!512107 () ListLongMap!16369)

(declare-fun -!1290 (ListLongMap!16369 (_ BitVec 64)) ListLongMap!16369)

(assert (=> b!1146590 (= e!652249 (= (-!1290 lt!512107 k!934) lt!512125))))

(declare-fun b!1146591 () Bool)

(assert (=> b!1146591 (= e!652251 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!52578 () Bool)

(declare-fun call!52582 () ListLongMap!16369)

(declare-fun getCurrentListMapNoExtraKeys!4642 (array!74370 array!74372 (_ BitVec 32) (_ BitVec 32) V!43505 V!43505 (_ BitVec 32) Int) ListLongMap!16369)

(assert (=> bm!52578 (= call!52582 (getCurrentListMapNoExtraKeys!4642 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44999 () Bool)

(declare-fun mapRes!44999 () Bool)

(declare-fun tp!85470 () Bool)

(assert (=> mapNonEmpty!44999 (= mapRes!44999 (and tp!85470 e!652246))))

(declare-fun mapRest!44999 () (Array (_ BitVec 32) ValueCell!13682))

(declare-fun mapValue!44999 () ValueCell!13682)

(declare-fun mapKey!44999 () (_ BitVec 32))

(assert (=> mapNonEmpty!44999 (= (arr!35833 _values!996) (store mapRest!44999 mapKey!44999 mapValue!44999))))

(declare-fun b!1146592 () Bool)

(assert (=> b!1146592 (= c!113086 (and (not lt!512123) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652242 () Unit!37578)

(declare-fun e!652240 () Unit!37578)

(assert (=> b!1146592 (= e!652242 e!652240)))

(declare-fun mapIsEmpty!44999 () Bool)

(assert (=> mapIsEmpty!44999 mapRes!44999))

(declare-fun bm!52579 () Bool)

(declare-fun call!52580 () Bool)

(assert (=> bm!52579 (= call!52580 call!52584)))

(declare-fun b!1146593 () Bool)

(declare-fun e!652250 () Unit!37578)

(declare-fun Unit!37580 () Unit!37578)

(assert (=> b!1146593 (= e!652250 Unit!37580)))

(declare-fun call!52578 () ListLongMap!16369)

(declare-fun lt!512108 () array!74372)

(declare-fun bm!52580 () Bool)

(assert (=> bm!52580 (= call!52578 (getCurrentListMapNoExtraKeys!4642 lt!512121 lt!512108 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52581 () Bool)

(assert (=> bm!52581 (= call!52583 call!52581)))

(declare-fun b!1146594 () Bool)

(declare-fun e!652238 () Bool)

(assert (=> b!1146594 (= e!652248 (not e!652238))))

(declare-fun res!763407 () Bool)

(assert (=> b!1146594 (=> res!763407 e!652238)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146594 (= res!763407 (bvsgt from!1455 i!673))))

(assert (=> b!1146594 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!512119 () Unit!37578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74370 (_ BitVec 64) (_ BitVec 32)) Unit!37578)

(assert (=> b!1146594 (= lt!512119 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!652252 () Bool)

(declare-fun b!1146595 () Bool)

(assert (=> b!1146595 (= e!652252 (= call!52578 (-!1290 call!52582 k!934)))))

(declare-fun b!1146596 () Bool)

(declare-fun res!763409 () Bool)

(assert (=> b!1146596 (=> (not res!763409) (not e!652253))))

(assert (=> b!1146596 (= res!763409 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25183))))

(declare-fun b!1146597 () Bool)

(declare-fun res!763411 () Bool)

(assert (=> b!1146597 (=> (not res!763411) (not e!652253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146597 (= res!763411 (validMask!0 mask!1564))))

(declare-fun b!1146598 () Bool)

(declare-fun e!652245 () Bool)

(assert (=> b!1146598 (= e!652245 tp_is_empty!28783)))

(declare-fun b!1146599 () Bool)

(assert (=> b!1146599 (= e!652247 (and e!652245 mapRes!44999))))

(declare-fun condMapEmpty!44999 () Bool)

(declare-fun mapDefault!44999 () ValueCell!13682)

