; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101182 () Bool)

(assert start!101182)

(declare-fun b_free!26069 () Bool)

(declare-fun b_next!26069 () Bool)

(assert (=> start!101182 (= b_free!26069 (not b_next!26069))))

(declare-fun tp!91230 () Bool)

(declare-fun b_and!43265 () Bool)

(assert (=> start!101182 (= tp!91230 b_and!43265)))

(declare-fun b!1213124 () Bool)

(declare-fun res!805668 () Bool)

(declare-fun e!688995 () Bool)

(assert (=> b!1213124 (=> (not res!805668) (not e!688995))))

(declare-datatypes ((array!78306 0))(
  ( (array!78307 (arr!37784 (Array (_ BitVec 32) (_ BitVec 64))) (size!38321 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78306)

(declare-datatypes ((List!26800 0))(
  ( (Nil!26797) (Cons!26796 (h!28005 (_ BitVec 64)) (t!39856 List!26800)) )
))
(declare-fun arrayNoDuplicates!0 (array!78306 (_ BitVec 32) List!26800) Bool)

(assert (=> b!1213124 (= res!805668 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26797))))

(declare-fun b!1213125 () Bool)

(declare-fun e!688990 () Bool)

(assert (=> b!1213125 (= e!688995 e!688990)))

(declare-fun res!805674 () Bool)

(assert (=> b!1213125 (=> (not res!805674) (not e!688990))))

(declare-fun lt!551450 () array!78306)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78306 (_ BitVec 32)) Bool)

(assert (=> b!1213125 (= res!805674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551450 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213125 (= lt!551450 (array!78307 (store (arr!37784 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38321 _keys!1208)))))

(declare-datatypes ((V!46157 0))(
  ( (V!46158 (val!15443 Int)) )
))
(declare-fun zeroValue!944 () V!46157)

(declare-datatypes ((tuple2!19980 0))(
  ( (tuple2!19981 (_1!10000 (_ BitVec 64)) (_2!10000 V!46157)) )
))
(declare-datatypes ((List!26801 0))(
  ( (Nil!26798) (Cons!26797 (h!28006 tuple2!19980) (t!39857 List!26801)) )
))
(declare-datatypes ((ListLongMap!17961 0))(
  ( (ListLongMap!17962 (toList!8996 List!26801)) )
))
(declare-fun lt!551455 () ListLongMap!17961)

(declare-fun c!119773 () Bool)

(declare-fun lt!551445 () ListLongMap!17961)

(declare-fun bm!60306 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!119774 () Bool)

(declare-fun minValue!944 () V!46157)

(declare-datatypes ((Unit!40154 0))(
  ( (Unit!40155) )
))
(declare-fun call!60311 () Unit!40154)

(declare-fun addStillContains!1080 (ListLongMap!17961 (_ BitVec 64) V!46157 (_ BitVec 64)) Unit!40154)

(assert (=> bm!60306 (= call!60311 (addStillContains!1080 (ite c!119774 lt!551445 lt!551455) (ite c!119774 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119773 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119774 minValue!944 (ite c!119773 zeroValue!944 minValue!944)) k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14677 0))(
  ( (ValueCellFull!14677 (v!18097 V!46157)) (EmptyCell!14677) )
))
(declare-datatypes ((array!78308 0))(
  ( (array!78309 (arr!37785 (Array (_ BitVec 32) ValueCell!14677)) (size!38322 (_ BitVec 32))) )
))
(declare-fun lt!551439 () array!78308)

(declare-fun defaultEntry!1004 () Int)

(declare-fun e!688996 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1213126 () Bool)

(declare-fun lt!551438 () ListLongMap!17961)

(declare-fun getCurrentListMapNoExtraKeys!5401 (array!78306 array!78308 (_ BitVec 32) (_ BitVec 32) V!46157 V!46157 (_ BitVec 32) Int) ListLongMap!17961)

(assert (=> b!1213126 (= e!688996 (= lt!551438 (getCurrentListMapNoExtraKeys!5401 lt!551450 lt!551439 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213127 () Bool)

(declare-fun e!688992 () Unit!40154)

(declare-fun e!688987 () Unit!40154)

(assert (=> b!1213127 (= e!688992 e!688987)))

(declare-fun c!119775 () Bool)

(declare-fun lt!551456 () Bool)

(assert (=> b!1213127 (= c!119775 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551456))))

(declare-fun b!1213128 () Bool)

(declare-fun e!688983 () Bool)

(declare-fun call!60316 () ListLongMap!17961)

(declare-fun call!60312 () ListLongMap!17961)

(assert (=> b!1213128 (= e!688983 (= call!60316 call!60312))))

(declare-fun call!60315 () ListLongMap!17961)

(declare-fun bm!60307 () Bool)

(declare-fun +!4022 (ListLongMap!17961 tuple2!19980) ListLongMap!17961)

(assert (=> bm!60307 (= call!60315 (+!4022 (ite c!119774 lt!551445 lt!551455) (ite c!119774 (tuple2!19981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119773 (tuple2!19981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1213130 () Bool)

(declare-fun res!805672 () Bool)

(assert (=> b!1213130 (=> (not res!805672) (not e!688995))))

(assert (=> b!1213130 (= res!805672 (= (select (arr!37784 _keys!1208) i!673) k!934))))

(declare-fun b!1213131 () Bool)

(assert (=> b!1213131 (= c!119773 (and (not lt!551456) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688993 () Unit!40154)

(assert (=> b!1213131 (= e!688993 e!688992)))

(declare-fun e!688988 () Bool)

(declare-fun b!1213132 () Bool)

(declare-fun arrayContainsKey!0 (array!78306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213132 (= e!688988 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213133 () Bool)

(declare-fun e!688989 () Bool)

(declare-fun tp_is_empty!30773 () Bool)

(assert (=> b!1213133 (= e!688989 tp_is_empty!30773)))

(declare-fun b!1213134 () Bool)

(declare-fun e!688998 () Bool)

(declare-fun e!688984 () Bool)

(declare-fun mapRes!48034 () Bool)

(assert (=> b!1213134 (= e!688998 (and e!688984 mapRes!48034))))

(declare-fun condMapEmpty!48034 () Bool)

(declare-fun _values!996 () array!78308)

(declare-fun mapDefault!48034 () ValueCell!14677)

