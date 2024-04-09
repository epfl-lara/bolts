; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98490 () Bool)

(assert start!98490)

(declare-fun b_free!24059 () Bool)

(declare-fun b_next!24059 () Bool)

(assert (=> start!98490 (= b_free!24059 (not b_next!24059))))

(declare-fun tp!84888 () Bool)

(declare-fun b_and!38981 () Bool)

(assert (=> start!98490 (= tp!84888 b_and!38981)))

(declare-fun bm!50246 () Bool)

(declare-datatypes ((V!43245 0))(
  ( (V!43246 (val!14351 Int)) )
))
(declare-datatypes ((tuple2!18218 0))(
  ( (tuple2!18219 (_1!9119 (_ BitVec 64)) (_2!9119 V!43245)) )
))
(declare-datatypes ((List!25025 0))(
  ( (Nil!25022) (Cons!25021 (h!26230 tuple2!18218) (t!36083 List!25025)) )
))
(declare-datatypes ((ListLongMap!16199 0))(
  ( (ListLongMap!16200 (toList!8115 List!25025)) )
))
(declare-fun call!50254 () ListLongMap!16199)

(declare-fun call!50251 () ListLongMap!16199)

(assert (=> bm!50246 (= call!50254 call!50251)))

(declare-fun b!1137870 () Bool)

(declare-fun e!647499 () Bool)

(declare-fun tp_is_empty!28589 () Bool)

(assert (=> b!1137870 (= e!647499 tp_is_empty!28589)))

(declare-fun b!1137871 () Bool)

(declare-fun e!647501 () Bool)

(assert (=> b!1137871 (= e!647501 true)))

(declare-datatypes ((Unit!37226 0))(
  ( (Unit!37227) )
))
(declare-fun lt!506125 () Unit!37226)

(declare-fun e!647500 () Unit!37226)

(assert (=> b!1137871 (= lt!506125 e!647500)))

(declare-fun c!111338 () Bool)

(declare-fun lt!506137 () ListLongMap!16199)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6625 (ListLongMap!16199 (_ BitVec 64)) Bool)

(assert (=> b!1137871 (= c!111338 (contains!6625 lt!506137 k!934))))

(declare-fun zeroValue!944 () V!43245)

(declare-datatypes ((array!73996 0))(
  ( (array!73997 (arr!35645 (Array (_ BitVec 32) (_ BitVec 64))) (size!36182 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73996)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13585 0))(
  ( (ValueCellFull!13585 (v!16989 V!43245)) (EmptyCell!13585) )
))
(declare-datatypes ((array!73998 0))(
  ( (array!73999 (arr!35646 (Array (_ BitVec 32) ValueCell!13585)) (size!36183 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73998)

(declare-fun minValue!944 () V!43245)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4562 (array!73996 array!73998 (_ BitVec 32) (_ BitVec 32) V!43245 V!43245 (_ BitVec 32) Int) ListLongMap!16199)

(assert (=> b!1137871 (= lt!506137 (getCurrentListMapNoExtraKeys!4562 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50247 () Bool)

(declare-fun call!50253 () Bool)

(declare-fun call!50252 () Bool)

(assert (=> bm!50247 (= call!50253 call!50252)))

(declare-fun b!1137872 () Bool)

(declare-fun e!647512 () Bool)

(declare-fun e!647514 () Bool)

(declare-fun mapRes!44708 () Bool)

(assert (=> b!1137872 (= e!647512 (and e!647514 mapRes!44708))))

(declare-fun condMapEmpty!44708 () Bool)

(declare-fun mapDefault!44708 () ValueCell!13585)

