; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101566 () Bool)

(assert start!101566)

(declare-fun b_free!26317 () Bool)

(declare-fun b_next!26317 () Bool)

(assert (=> start!101566 (= b_free!26317 (not b_next!26317))))

(declare-fun tp!91989 () Bool)

(declare-fun b_and!43851 () Bool)

(assert (=> start!101566 (= tp!91989 b_and!43851)))

(declare-fun b!1220625 () Bool)

(declare-fun e!693170 () Bool)

(declare-fun e!693174 () Bool)

(assert (=> b!1220625 (= e!693170 e!693174)))

(declare-fun res!810943 () Bool)

(assert (=> b!1220625 (=> res!810943 e!693174)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1220625 (= res!810943 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46489 0))(
  ( (V!46490 (val!15567 Int)) )
))
(declare-fun zeroValue!944 () V!46489)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14801 0))(
  ( (ValueCellFull!14801 (v!18226 V!46489)) (EmptyCell!14801) )
))
(declare-datatypes ((array!78796 0))(
  ( (array!78797 (arr!38024 (Array (_ BitVec 32) ValueCell!14801)) (size!38561 (_ BitVec 32))) )
))
(declare-fun lt!555110 () array!78796)

(declare-datatypes ((tuple2!20178 0))(
  ( (tuple2!20179 (_1!10099 (_ BitVec 64)) (_2!10099 V!46489)) )
))
(declare-datatypes ((List!26995 0))(
  ( (Nil!26992) (Cons!26991 (h!28200 tuple2!20178) (t!40299 List!26995)) )
))
(declare-datatypes ((ListLongMap!18159 0))(
  ( (ListLongMap!18160 (toList!9095 List!26995)) )
))
(declare-fun lt!555102 () ListLongMap!18159)

(declare-fun minValue!944 () V!46489)

(declare-datatypes ((array!78798 0))(
  ( (array!78799 (arr!38025 (Array (_ BitVec 32) (_ BitVec 64))) (size!38562 (_ BitVec 32))) )
))
(declare-fun lt!555100 () array!78798)

(declare-fun getCurrentListMapNoExtraKeys!5493 (array!78798 array!78796 (_ BitVec 32) (_ BitVec 32) V!46489 V!46489 (_ BitVec 32) Int) ListLongMap!18159)

(assert (=> b!1220625 (= lt!555102 (getCurrentListMapNoExtraKeys!5493 lt!555100 lt!555110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555101 () V!46489)

(declare-fun _values!996 () array!78796)

(assert (=> b!1220625 (= lt!555110 (array!78797 (store (arr!38024 _values!996) i!673 (ValueCellFull!14801 lt!555101)) (size!38561 _values!996)))))

(declare-fun dynLambda!3395 (Int (_ BitVec 64)) V!46489)

(assert (=> b!1220625 (= lt!555101 (dynLambda!3395 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78798)

(declare-fun lt!555109 () ListLongMap!18159)

(assert (=> b!1220625 (= lt!555109 (getCurrentListMapNoExtraKeys!5493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220626 () Bool)

(declare-fun e!693171 () Bool)

(declare-fun e!693169 () Bool)

(declare-fun mapRes!48421 () Bool)

(assert (=> b!1220626 (= e!693171 (and e!693169 mapRes!48421))))

(declare-fun condMapEmpty!48421 () Bool)

(declare-fun mapDefault!48421 () ValueCell!14801)

