; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98486 () Bool)

(assert start!98486)

(declare-fun b_free!24055 () Bool)

(declare-fun b_next!24055 () Bool)

(assert (=> start!98486 (= b_free!24055 (not b_next!24055))))

(declare-fun tp!84876 () Bool)

(declare-fun b_and!38973 () Bool)

(assert (=> start!98486 (= tp!84876 b_and!38973)))

(declare-fun mapNonEmpty!44702 () Bool)

(declare-fun mapRes!44702 () Bool)

(declare-fun tp!84877 () Bool)

(declare-fun e!647418 () Bool)

(assert (=> mapNonEmpty!44702 (= mapRes!44702 (and tp!84877 e!647418))))

(declare-datatypes ((V!43241 0))(
  ( (V!43242 (val!14349 Int)) )
))
(declare-datatypes ((ValueCell!13583 0))(
  ( (ValueCellFull!13583 (v!16987 V!43241)) (EmptyCell!13583) )
))
(declare-fun mapRest!44702 () (Array (_ BitVec 32) ValueCell!13583))

(declare-fun mapKey!44702 () (_ BitVec 32))

(declare-fun mapValue!44702 () ValueCell!13583)

(declare-datatypes ((array!73988 0))(
  ( (array!73989 (arr!35641 (Array (_ BitVec 32) ValueCell!13583)) (size!36178 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73988)

(assert (=> mapNonEmpty!44702 (= (arr!35641 _values!996) (store mapRest!44702 mapKey!44702 mapValue!44702))))

(declare-fun b!1137692 () Bool)

(declare-fun res!759174 () Bool)

(declare-fun e!647404 () Bool)

(assert (=> b!1137692 (=> (not res!759174) (not e!647404))))

(declare-datatypes ((array!73990 0))(
  ( (array!73991 (arr!35642 (Array (_ BitVec 32) (_ BitVec 64))) (size!36179 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73990)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1137692 (= res!759174 (and (= (size!36178 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36179 _keys!1208) (size!36178 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!759175 () Bool)

(assert (=> start!98486 (=> (not res!759175) (not e!647404))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98486 (= res!759175 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36179 _keys!1208))))))

(assert (=> start!98486 e!647404))

(declare-fun tp_is_empty!28585 () Bool)

(assert (=> start!98486 tp_is_empty!28585))

(declare-fun array_inv!27200 (array!73990) Bool)

(assert (=> start!98486 (array_inv!27200 _keys!1208)))

(assert (=> start!98486 true))

(assert (=> start!98486 tp!84876))

(declare-fun e!647409 () Bool)

(declare-fun array_inv!27201 (array!73988) Bool)

(assert (=> start!98486 (and (array_inv!27201 _values!996) e!647409)))

(declare-fun b!1137693 () Bool)

(declare-datatypes ((Unit!37219 0))(
  ( (Unit!37220) )
))
(declare-fun e!647403 () Unit!37219)

(declare-fun e!647407 () Unit!37219)

(assert (=> b!1137693 (= e!647403 e!647407)))

(declare-fun c!111303 () Bool)

(declare-fun lt!506027 () Bool)

(assert (=> b!1137693 (= c!111303 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506027))))

(declare-fun b!1137694 () Bool)

(declare-fun lt!506021 () Unit!37219)

(assert (=> b!1137694 (= e!647403 lt!506021)))

(declare-fun call!50206 () Unit!37219)

(assert (=> b!1137694 (= lt!506021 call!50206)))

(declare-fun call!50205 () Bool)

(assert (=> b!1137694 call!50205))

(declare-fun zeroValue!944 () V!43241)

(declare-fun bm!50198 () Bool)

(declare-fun c!111302 () Bool)

(declare-datatypes ((tuple2!18214 0))(
  ( (tuple2!18215 (_1!9117 (_ BitVec 64)) (_2!9117 V!43241)) )
))
(declare-datatypes ((List!25022 0))(
  ( (Nil!25019) (Cons!25018 (h!26227 tuple2!18214) (t!36076 List!25022)) )
))
(declare-datatypes ((ListLongMap!16195 0))(
  ( (ListLongMap!16196 (toList!8113 List!25022)) )
))
(declare-fun call!50207 () ListLongMap!16195)

(declare-fun c!111301 () Bool)

(declare-fun lt!506026 () ListLongMap!16195)

(declare-fun minValue!944 () V!43241)

(declare-fun +!3465 (ListLongMap!16195 tuple2!18214) ListLongMap!16195)

(assert (=> bm!50198 (= call!50207 (+!3465 lt!506026 (ite (or c!111302 c!111301) (tuple2!18215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18215 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1137695 () Bool)

(declare-fun e!647417 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137695 (= e!647417 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137696 () Bool)

(declare-fun e!647405 () Bool)

(declare-fun e!647416 () Bool)

(assert (=> b!1137696 (= e!647405 (not e!647416))))

(declare-fun res!759173 () Bool)

(assert (=> b!1137696 (=> res!759173 e!647416)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137696 (= res!759173 (bvsgt from!1455 i!673))))

(assert (=> b!1137696 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506022 () Unit!37219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73990 (_ BitVec 64) (_ BitVec 32)) Unit!37219)

(assert (=> b!1137696 (= lt!506022 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1137697 () Bool)

(declare-fun res!759165 () Bool)

(assert (=> b!1137697 (=> (not res!759165) (not e!647404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137697 (= res!759165 (validMask!0 mask!1564))))

(declare-fun b!1137698 () Bool)

(declare-fun e!647406 () Bool)

(assert (=> b!1137698 (= e!647409 (and e!647406 mapRes!44702))))

(declare-fun condMapEmpty!44702 () Bool)

(declare-fun mapDefault!44702 () ValueCell!13583)

