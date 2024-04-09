; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101460 () Bool)

(assert start!101460)

(declare-fun b_free!26269 () Bool)

(declare-fun b_next!26269 () Bool)

(assert (=> start!101460 (= b_free!26269 (not b_next!26269))))

(declare-fun tp!91839 () Bool)

(declare-fun b_and!43719 () Bool)

(assert (=> start!101460 (= tp!91839 b_and!43719)))

(declare-fun mapIsEmpty!48343 () Bool)

(declare-fun mapRes!48343 () Bool)

(assert (=> mapIsEmpty!48343 mapRes!48343))

(declare-datatypes ((array!78696 0))(
  ( (array!78697 (arr!37976 (Array (_ BitVec 32) (_ BitVec 64))) (size!38513 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78696)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1218910 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!692108 () Bool)

(declare-fun arrayContainsKey!0 (array!78696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218910 (= e!692108 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218911 () Bool)

(declare-fun res!809655 () Bool)

(declare-fun e!692105 () Bool)

(assert (=> b!1218911 (=> (not res!809655) (not e!692105))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46425 0))(
  ( (V!46426 (val!15543 Int)) )
))
(declare-datatypes ((ValueCell!14777 0))(
  ( (ValueCellFull!14777 (v!18200 V!46425)) (EmptyCell!14777) )
))
(declare-datatypes ((array!78698 0))(
  ( (array!78699 (arr!37977 (Array (_ BitVec 32) ValueCell!14777)) (size!38514 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78698)

(assert (=> b!1218911 (= res!809655 (and (= (size!38514 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38513 _keys!1208) (size!38514 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218912 () Bool)

(declare-fun e!692110 () Bool)

(declare-fun e!692100 () Bool)

(assert (=> b!1218912 (= e!692110 e!692100)))

(declare-fun res!809653 () Bool)

(assert (=> b!1218912 (=> res!809653 e!692100)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1218912 (= res!809653 (not (= (select (arr!37976 _keys!1208) from!1455) k!934)))))

(declare-fun e!692103 () Bool)

(assert (=> b!1218912 e!692103))

(declare-fun res!809654 () Bool)

(assert (=> b!1218912 (=> (not res!809654) (not e!692103))))

(declare-fun lt!554124 () V!46425)

(declare-datatypes ((tuple2!20130 0))(
  ( (tuple2!20131 (_1!10075 (_ BitVec 64)) (_2!10075 V!46425)) )
))
(declare-datatypes ((List!26950 0))(
  ( (Nil!26947) (Cons!26946 (h!28155 tuple2!20130) (t!40206 List!26950)) )
))
(declare-datatypes ((ListLongMap!18111 0))(
  ( (ListLongMap!18112 (toList!9071 List!26950)) )
))
(declare-fun lt!554121 () ListLongMap!18111)

(declare-fun lt!554122 () ListLongMap!18111)

(declare-fun +!4050 (ListLongMap!18111 tuple2!20130) ListLongMap!18111)

(declare-fun get!19404 (ValueCell!14777 V!46425) V!46425)

(assert (=> b!1218912 (= res!809654 (= lt!554121 (+!4050 lt!554122 (tuple2!20131 (select (arr!37976 _keys!1208) from!1455) (get!19404 (select (arr!37977 _values!996) from!1455) lt!554124)))))))

(declare-fun b!1218913 () Bool)

(declare-fun e!692101 () Bool)

(declare-fun e!692106 () Bool)

(assert (=> b!1218913 (= e!692101 (and e!692106 mapRes!48343))))

(declare-fun condMapEmpty!48343 () Bool)

(declare-fun mapDefault!48343 () ValueCell!14777)

