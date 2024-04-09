; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101054 () Bool)

(assert start!101054)

(declare-fun b_free!26017 () Bool)

(declare-fun b_next!26017 () Bool)

(assert (=> start!101054 (= b_free!26017 (not b_next!26017))))

(declare-fun tp!91067 () Bool)

(declare-fun b_and!43125 () Bool)

(assert (=> start!101054 (= tp!91067 b_and!43125)))

(declare-fun b!1210405 () Bool)

(declare-fun e!687465 () Bool)

(declare-fun tp_is_empty!30721 () Bool)

(assert (=> b!1210405 (= e!687465 tp_is_empty!30721)))

(declare-fun b!1210406 () Bool)

(declare-datatypes ((Unit!40045 0))(
  ( (Unit!40046) )
))
(declare-fun e!687456 () Unit!40045)

(declare-fun lt!549545 () Unit!40045)

(assert (=> b!1210406 (= e!687456 lt!549545)))

(declare-fun call!59643 () Unit!40045)

(assert (=> b!1210406 (= lt!549545 call!59643)))

(declare-fun call!59649 () Bool)

(assert (=> b!1210406 call!59649))

(declare-fun b!1210407 () Bool)

(declare-fun res!804372 () Bool)

(declare-fun e!687454 () Bool)

(assert (=> b!1210407 (=> (not res!804372) (not e!687454))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210407 (= res!804372 (validKeyInArray!0 k!934))))

(declare-fun b!1210408 () Bool)

(declare-datatypes ((V!46089 0))(
  ( (V!46090 (val!15417 Int)) )
))
(declare-datatypes ((tuple2!19934 0))(
  ( (tuple2!19935 (_1!9977 (_ BitVec 64)) (_2!9977 V!46089)) )
))
(declare-datatypes ((List!26754 0))(
  ( (Nil!26751) (Cons!26750 (h!27959 tuple2!19934) (t!39758 List!26754)) )
))
(declare-datatypes ((ListLongMap!17915 0))(
  ( (ListLongMap!17916 (toList!8973 List!26754)) )
))
(declare-fun call!59644 () ListLongMap!17915)

(declare-fun contains!6986 (ListLongMap!17915 (_ BitVec 64)) Bool)

(assert (=> b!1210408 (contains!6986 call!59644 k!934)))

(declare-fun lt!549536 () ListLongMap!17915)

(declare-fun lt!549552 () Unit!40045)

(declare-fun minValue!944 () V!46089)

(declare-fun addStillContains!1063 (ListLongMap!17915 (_ BitVec 64) V!46089 (_ BitVec 64)) Unit!40045)

(assert (=> b!1210408 (= lt!549552 (addStillContains!1063 lt!549536 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!59645 () Bool)

(assert (=> b!1210408 call!59645))

(declare-fun lt!549537 () ListLongMap!17915)

(declare-fun zeroValue!944 () V!46089)

(declare-fun +!4000 (ListLongMap!17915 tuple2!19934) ListLongMap!17915)

(assert (=> b!1210408 (= lt!549536 (+!4000 lt!549537 (tuple2!19935 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!549542 () Unit!40045)

(declare-fun call!59648 () Unit!40045)

(assert (=> b!1210408 (= lt!549542 call!59648)))

(declare-fun e!687452 () Unit!40045)

(assert (=> b!1210408 (= e!687452 lt!549552)))

(declare-fun b!1210409 () Bool)

(declare-fun e!687466 () Bool)

(declare-fun mapRes!47950 () Bool)

(assert (=> b!1210409 (= e!687466 (and e!687465 mapRes!47950))))

(declare-fun condMapEmpty!47950 () Bool)

(declare-datatypes ((ValueCell!14651 0))(
  ( (ValueCellFull!14651 (v!18069 V!46089)) (EmptyCell!14651) )
))
(declare-datatypes ((array!78202 0))(
  ( (array!78203 (arr!37734 (Array (_ BitVec 32) ValueCell!14651)) (size!38271 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78202)

(declare-fun mapDefault!47950 () ValueCell!14651)

