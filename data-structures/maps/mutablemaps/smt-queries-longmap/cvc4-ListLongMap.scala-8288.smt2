; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101040 () Bool)

(assert start!101040)

(declare-fun b_free!26003 () Bool)

(declare-fun b_next!26003 () Bool)

(assert (=> start!101040 (= b_free!26003 (not b_next!26003))))

(declare-fun tp!91026 () Bool)

(declare-fun b_and!43097 () Bool)

(assert (=> start!101040 (= tp!91026 b_and!43097)))

(declare-fun b!1209783 () Bool)

(declare-fun e!687122 () Bool)

(declare-fun tp_is_empty!30707 () Bool)

(assert (=> b!1209783 (= e!687122 tp_is_empty!30707)))

(declare-fun b!1209784 () Bool)

(declare-fun res!804077 () Bool)

(declare-fun e!687125 () Bool)

(assert (=> b!1209784 (=> (not res!804077) (not e!687125))))

(declare-datatypes ((array!78174 0))(
  ( (array!78175 (arr!37720 (Array (_ BitVec 32) (_ BitVec 64))) (size!38257 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78174)

(declare-datatypes ((List!26741 0))(
  ( (Nil!26738) (Cons!26737 (h!27946 (_ BitVec 64)) (t!39731 List!26741)) )
))
(declare-fun arrayNoDuplicates!0 (array!78174 (_ BitVec 32) List!26741) Bool)

(assert (=> b!1209784 (= res!804077 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26738))))

(declare-fun b!1209785 () Bool)

(declare-fun e!687119 () Bool)

(declare-datatypes ((V!46069 0))(
  ( (V!46070 (val!15410 Int)) )
))
(declare-datatypes ((tuple2!19920 0))(
  ( (tuple2!19921 (_1!9970 (_ BitVec 64)) (_2!9970 V!46069)) )
))
(declare-datatypes ((List!26742 0))(
  ( (Nil!26739) (Cons!26738 (h!27947 tuple2!19920) (t!39732 List!26742)) )
))
(declare-datatypes ((ListLongMap!17901 0))(
  ( (ListLongMap!17902 (toList!8966 List!26742)) )
))
(declare-fun call!59475 () ListLongMap!17901)

(declare-fun call!59477 () ListLongMap!17901)

(assert (=> b!1209785 (= e!687119 (= call!59475 call!59477))))

(declare-fun b!1209786 () Bool)

(declare-datatypes ((Unit!40017 0))(
  ( (Unit!40018) )
))
(declare-fun e!687127 () Unit!40017)

(declare-fun lt!549164 () Unit!40017)

(assert (=> b!1209786 (= e!687127 lt!549164)))

(declare-fun call!59481 () Unit!40017)

(assert (=> b!1209786 (= lt!549164 call!59481)))

(declare-fun call!59479 () Bool)

(assert (=> b!1209786 call!59479))

(declare-fun b!1209787 () Bool)

(declare-fun e!687129 () Unit!40017)

(declare-fun lt!549161 () Unit!40017)

(assert (=> b!1209787 (= e!687129 lt!549161)))

(declare-fun zeroValue!944 () V!46069)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!549165 () ListLongMap!17901)

(declare-fun lt!549170 () Unit!40017)

(declare-fun addStillContains!1058 (ListLongMap!17901 (_ BitVec 64) V!46069 (_ BitVec 64)) Unit!40017)

(assert (=> b!1209787 (= lt!549170 (addStillContains!1058 lt!549165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!549174 () ListLongMap!17901)

(declare-fun call!59482 () ListLongMap!17901)

(assert (=> b!1209787 (= lt!549174 call!59482)))

(declare-fun call!59478 () Bool)

(assert (=> b!1209787 call!59478))

(declare-fun call!59476 () Unit!40017)

(assert (=> b!1209787 (= lt!549161 call!59476)))

(declare-fun minValue!944 () V!46069)

(declare-fun contains!6980 (ListLongMap!17901 (_ BitVec 64)) Bool)

(declare-fun +!3993 (ListLongMap!17901 tuple2!19920) ListLongMap!17901)

(assert (=> b!1209787 (contains!6980 (+!3993 lt!549174 (tuple2!19921 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!549160 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!687123 () Bool)

(declare-fun b!1209788 () Bool)

(assert (=> b!1209788 (= e!687123 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549160) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!59472 () Bool)

(assert (=> bm!59472 (= call!59481 call!59476)))

(declare-fun b!1209789 () Bool)

(declare-fun c!119085 () Bool)

(assert (=> b!1209789 (= c!119085 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549160))))

(declare-fun e!687128 () Unit!40017)

(assert (=> b!1209789 (= e!687128 e!687127)))

(declare-fun c!119087 () Bool)

(declare-fun bm!59473 () Bool)

(declare-fun c!119088 () Bool)

(assert (=> bm!59473 (= call!59482 (+!3993 lt!549165 (ite (or c!119087 c!119088) (tuple2!19921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19921 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1209790 () Bool)

(assert (=> b!1209790 (= e!687129 e!687128)))

(assert (=> b!1209790 (= c!119088 (and (not lt!549160) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209791 () Bool)

(declare-fun res!804080 () Bool)

(assert (=> b!1209791 (=> (not res!804080) (not e!687125))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78174 (_ BitVec 32)) Bool)

(assert (=> b!1209791 (= res!804080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1209792 () Bool)

(declare-fun e!687116 () Bool)

(declare-fun mapRes!47929 () Bool)

(assert (=> b!1209792 (= e!687116 (and e!687122 mapRes!47929))))

(declare-fun condMapEmpty!47929 () Bool)

(declare-datatypes ((ValueCell!14644 0))(
  ( (ValueCellFull!14644 (v!18062 V!46069)) (EmptyCell!14644) )
))
(declare-datatypes ((array!78176 0))(
  ( (array!78177 (arr!37721 (Array (_ BitVec 32) ValueCell!14644)) (size!38258 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78176)

(declare-fun mapDefault!47929 () ValueCell!14644)

