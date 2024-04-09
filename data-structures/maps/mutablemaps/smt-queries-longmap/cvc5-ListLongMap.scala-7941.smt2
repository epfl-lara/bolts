; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98522 () Bool)

(assert start!98522)

(declare-fun b_free!24091 () Bool)

(declare-fun b_next!24091 () Bool)

(assert (=> start!98522 (= b_free!24091 (not b_next!24091))))

(declare-fun tp!84984 () Bool)

(declare-fun b_and!39045 () Bool)

(assert (=> start!98522 (= tp!84984 b_and!39045)))

(declare-fun res!759926 () Bool)

(declare-fun e!648281 () Bool)

(assert (=> start!98522 (=> (not res!759926) (not e!648281))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74060 0))(
  ( (array!74061 (arr!35677 (Array (_ BitVec 32) (_ BitVec 64))) (size!36214 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74060)

(assert (=> start!98522 (= res!759926 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36214 _keys!1208))))))

(assert (=> start!98522 e!648281))

(declare-fun tp_is_empty!28621 () Bool)

(assert (=> start!98522 tp_is_empty!28621))

(declare-fun array_inv!27226 (array!74060) Bool)

(assert (=> start!98522 (array_inv!27226 _keys!1208)))

(assert (=> start!98522 true))

(assert (=> start!98522 tp!84984))

(declare-datatypes ((V!43289 0))(
  ( (V!43290 (val!14367 Int)) )
))
(declare-datatypes ((ValueCell!13601 0))(
  ( (ValueCellFull!13601 (v!17005 V!43289)) (EmptyCell!13601) )
))
(declare-datatypes ((array!74062 0))(
  ( (array!74063 (arr!35678 (Array (_ BitVec 32) ValueCell!13601)) (size!36215 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74062)

(declare-fun e!648280 () Bool)

(declare-fun array_inv!27227 (array!74062) Bool)

(assert (=> start!98522 (and (array_inv!27227 _values!996) e!648280)))

(declare-fun bm!50630 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!18248 0))(
  ( (tuple2!18249 (_1!9134 (_ BitVec 64)) (_2!9134 V!43289)) )
))
(declare-datatypes ((List!25052 0))(
  ( (Nil!25049) (Cons!25048 (h!26257 tuple2!18248) (t!36142 List!25052)) )
))
(declare-datatypes ((ListLongMap!16229 0))(
  ( (ListLongMap!16230 (toList!8130 List!25052)) )
))
(declare-fun lt!507004 () ListLongMap!16229)

(declare-fun c!111630 () Bool)

(declare-fun call!50635 () ListLongMap!16229)

(declare-fun call!50638 () Bool)

(declare-fun contains!6639 (ListLongMap!16229 (_ BitVec 64)) Bool)

(assert (=> bm!50630 (= call!50638 (contains!6639 (ite c!111630 lt!507004 call!50635) k!934))))

(declare-fun zeroValue!944 () V!43289)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!50631 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!507014 () array!74062)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!50637 () ListLongMap!16229)

(declare-fun lt!507016 () array!74060)

(declare-fun minValue!944 () V!43289)

(declare-fun getCurrentListMapNoExtraKeys!4577 (array!74060 array!74062 (_ BitVec 32) (_ BitVec 32) V!43289 V!43289 (_ BitVec 32) Int) ListLongMap!16229)

(assert (=> bm!50631 (= call!50637 (getCurrentListMapNoExtraKeys!4577 lt!507016 lt!507014 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139294 () Bool)

(declare-fun res!759932 () Bool)

(assert (=> b!1139294 (=> (not res!759932) (not e!648281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74060 (_ BitVec 32)) Bool)

(assert (=> b!1139294 (= res!759932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139295 () Bool)

(declare-fun e!648277 () Bool)

(declare-fun mapRes!44756 () Bool)

(assert (=> b!1139295 (= e!648280 (and e!648277 mapRes!44756))))

(declare-fun condMapEmpty!44756 () Bool)

(declare-fun mapDefault!44756 () ValueCell!13601)

