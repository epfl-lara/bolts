; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101134 () Bool)

(assert start!101134)

(declare-fun b_free!26059 () Bool)

(declare-fun b_next!26059 () Bool)

(assert (=> start!101134 (= b_free!26059 (not b_next!26059))))

(declare-fun tp!91197 () Bool)

(declare-fun b_and!43227 () Bool)

(assert (=> start!101134 (= tp!91197 b_and!43227)))

(declare-fun b!1212488 () Bool)

(declare-fun e!688615 () Bool)

(declare-fun e!688614 () Bool)

(assert (=> b!1212488 (= e!688615 (not e!688614))))

(declare-fun res!805364 () Bool)

(assert (=> b!1212488 (=> res!805364 e!688614)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212488 (= res!805364 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78284 0))(
  ( (array!78285 (arr!37774 (Array (_ BitVec 32) (_ BitVec 64))) (size!38311 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78284)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212488 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40130 0))(
  ( (Unit!40131) )
))
(declare-fun lt!550990 () Unit!40130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78284 (_ BitVec 64) (_ BitVec 32)) Unit!40130)

(assert (=> b!1212488 (= lt!550990 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1212489 () Bool)

(declare-fun c!119634 () Bool)

(declare-fun lt!550993 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1212489 (= c!119634 (and (not lt!550993) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688613 () Unit!40130)

(declare-fun e!688623 () Unit!40130)

(assert (=> b!1212489 (= e!688613 e!688623)))

(declare-fun b!1212490 () Bool)

(declare-fun lt!550988 () Unit!40130)

(assert (=> b!1212490 (= e!688623 lt!550988)))

(declare-fun call!60175 () Unit!40130)

(assert (=> b!1212490 (= lt!550988 call!60175)))

(declare-fun call!60173 () Bool)

(assert (=> b!1212490 call!60173))

(declare-fun b!1212491 () Bool)

(declare-fun e!688625 () Bool)

(declare-fun e!688627 () Bool)

(declare-fun mapRes!48016 () Bool)

(assert (=> b!1212491 (= e!688625 (and e!688627 mapRes!48016))))

(declare-fun condMapEmpty!48016 () Bool)

(declare-datatypes ((V!46145 0))(
  ( (V!46146 (val!15438 Int)) )
))
(declare-datatypes ((ValueCell!14672 0))(
  ( (ValueCellFull!14672 (v!18091 V!46145)) (EmptyCell!14672) )
))
(declare-datatypes ((array!78286 0))(
  ( (array!78287 (arr!37775 (Array (_ BitVec 32) ValueCell!14672)) (size!38312 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78286)

(declare-fun mapDefault!48016 () ValueCell!14672)

