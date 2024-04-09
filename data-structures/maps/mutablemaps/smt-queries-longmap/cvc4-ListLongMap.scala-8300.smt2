; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101188 () Bool)

(assert start!101188)

(declare-fun b_free!26075 () Bool)

(declare-fun b_next!26075 () Bool)

(assert (=> start!101188 (= b_free!26075 (not b_next!26075))))

(declare-fun tp!91247 () Bool)

(declare-fun b_and!43277 () Bool)

(assert (=> start!101188 (= tp!91247 b_and!43277)))

(declare-fun b!1213400 () Bool)

(declare-fun c!119825 () Bool)

(declare-fun lt!551643 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1213400 (= c!119825 (and (not lt!551643) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!40165 0))(
  ( (Unit!40166) )
))
(declare-fun e!689136 () Unit!40165)

(declare-fun e!689139 () Unit!40165)

(assert (=> b!1213400 (= e!689136 e!689139)))

(declare-fun bm!60378 () Bool)

(declare-fun call!60381 () Unit!40165)

(declare-fun call!60383 () Unit!40165)

(assert (=> bm!60378 (= call!60381 call!60383)))

(declare-fun b!1213401 () Bool)

(declare-fun e!689137 () Bool)

(declare-fun tp_is_empty!30779 () Bool)

(assert (=> b!1213401 (= e!689137 tp_is_empty!30779)))

(declare-fun mapIsEmpty!48043 () Bool)

(declare-fun mapRes!48043 () Bool)

(assert (=> mapIsEmpty!48043 mapRes!48043))

(declare-fun b!1213402 () Bool)

(declare-fun e!689148 () Bool)

(declare-datatypes ((V!46165 0))(
  ( (V!46166 (val!15446 Int)) )
))
(declare-datatypes ((tuple2!19986 0))(
  ( (tuple2!19987 (_1!10003 (_ BitVec 64)) (_2!10003 V!46165)) )
))
(declare-datatypes ((List!26806 0))(
  ( (Nil!26803) (Cons!26802 (h!28011 tuple2!19986) (t!39868 List!26806)) )
))
(declare-datatypes ((ListLongMap!17967 0))(
  ( (ListLongMap!17968 (toList!8999 List!26806)) )
))
(declare-fun call!60386 () ListLongMap!17967)

(declare-fun call!60384 () ListLongMap!17967)

(assert (=> b!1213402 (= e!689148 (= call!60386 call!60384))))

(declare-fun b!1213403 () Bool)

(declare-fun lt!551656 () Unit!40165)

(assert (=> b!1213403 (= e!689139 lt!551656)))

(assert (=> b!1213403 (= lt!551656 call!60381)))

(declare-fun call!60382 () Bool)

(assert (=> b!1213403 call!60382))

(declare-fun b!1213404 () Bool)

(declare-fun e!689151 () Bool)

(declare-fun e!689146 () Bool)

(assert (=> b!1213404 (= e!689151 e!689146)))

(declare-fun res!805807 () Bool)

(assert (=> b!1213404 (=> res!805807 e!689146)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213404 (= res!805807 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46165)

(declare-datatypes ((ValueCell!14680 0))(
  ( (ValueCellFull!14680 (v!18100 V!46165)) (EmptyCell!14680) )
))
(declare-datatypes ((array!78318 0))(
  ( (array!78319 (arr!37790 (Array (_ BitVec 32) ValueCell!14680)) (size!38327 (_ BitVec 32))) )
))
(declare-fun lt!551637 () array!78318)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!78320 0))(
  ( (array!78321 (arr!37791 (Array (_ BitVec 32) (_ BitVec 64))) (size!38328 (_ BitVec 32))) )
))
(declare-fun lt!551644 () array!78320)

(declare-fun lt!551653 () ListLongMap!17967)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46165)

(declare-fun getCurrentListMapNoExtraKeys!5404 (array!78320 array!78318 (_ BitVec 32) (_ BitVec 32) V!46165 V!46165 (_ BitVec 32) Int) ListLongMap!17967)

(assert (=> b!1213404 (= lt!551653 (getCurrentListMapNoExtraKeys!5404 lt!551644 lt!551637 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78318)

(declare-fun lt!551649 () V!46165)

(assert (=> b!1213404 (= lt!551637 (array!78319 (store (arr!37790 _values!996) i!673 (ValueCellFull!14680 lt!551649)) (size!38327 _values!996)))))

(declare-fun dynLambda!3314 (Int (_ BitVec 64)) V!46165)

(assert (=> b!1213404 (= lt!551649 (dynLambda!3314 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78320)

(declare-fun lt!551650 () ListLongMap!17967)

(assert (=> b!1213404 (= lt!551650 (getCurrentListMapNoExtraKeys!5404 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!689147 () Bool)

(declare-fun b!1213405 () Bool)

(declare-fun arrayContainsKey!0 (array!78320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213405 (= e!689147 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213406 () Bool)

(declare-fun e!689143 () Bool)

(declare-fun e!689145 () Bool)

(assert (=> b!1213406 (= e!689143 (and e!689145 mapRes!48043))))

(declare-fun condMapEmpty!48043 () Bool)

(declare-fun mapDefault!48043 () ValueCell!14680)

