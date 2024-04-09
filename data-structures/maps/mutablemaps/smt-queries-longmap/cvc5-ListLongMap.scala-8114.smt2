; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99586 () Bool)

(assert start!99586)

(declare-fun b_free!25129 () Bool)

(declare-fun b_next!25129 () Bool)

(assert (=> start!99586 (= b_free!25129 (not b_next!25129))))

(declare-fun tp!88101 () Bool)

(declare-fun b_and!41139 () Bool)

(assert (=> start!99586 (= tp!88101 b_and!41139)))

(declare-datatypes ((V!44673 0))(
  ( (V!44674 (val!14886 Int)) )
))
(declare-datatypes ((tuple2!19168 0))(
  ( (tuple2!19169 (_1!9594 (_ BitVec 64)) (_2!9594 V!44673)) )
))
(declare-fun lt!532027 () tuple2!19168)

(declare-datatypes ((List!25933 0))(
  ( (Nil!25930) (Cons!25929 (h!27138 tuple2!19168) (t!38061 List!25933)) )
))
(declare-datatypes ((ListLongMap!17149 0))(
  ( (ListLongMap!17150 (toList!8590 List!25933)) )
))
(declare-fun lt!532025 () ListLongMap!17149)

(declare-fun lt!532023 () ListLongMap!17149)

(declare-fun b!1177971 () Bool)

(declare-fun e!669705 () Bool)

(declare-fun +!3811 (ListLongMap!17149 tuple2!19168) ListLongMap!17149)

(assert (=> b!1177971 (= e!669705 (= lt!532025 (+!3811 lt!532023 lt!532027)))))

(declare-fun b!1177972 () Bool)

(declare-fun e!669696 () Bool)

(declare-fun e!669699 () Bool)

(assert (=> b!1177972 (= e!669696 e!669699)))

(declare-fun res!782603 () Bool)

(assert (=> b!1177972 (=> res!782603 e!669699)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177972 (= res!782603 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532016 () ListLongMap!17149)

(declare-datatypes ((array!76090 0))(
  ( (array!76091 (arr!36691 (Array (_ BitVec 32) (_ BitVec 64))) (size!37228 (_ BitVec 32))) )
))
(declare-fun lt!532026 () array!76090)

(declare-fun minValue!944 () V!44673)

(declare-datatypes ((ValueCell!14120 0))(
  ( (ValueCellFull!14120 (v!17525 V!44673)) (EmptyCell!14120) )
))
(declare-datatypes ((array!76092 0))(
  ( (array!76093 (arr!36692 (Array (_ BitVec 32) ValueCell!14120)) (size!37229 (_ BitVec 32))) )
))
(declare-fun lt!532017 () array!76092)

(declare-fun zeroValue!944 () V!44673)

(declare-fun getCurrentListMapNoExtraKeys!5020 (array!76090 array!76092 (_ BitVec 32) (_ BitVec 32) V!44673 V!44673 (_ BitVec 32) Int) ListLongMap!17149)

(assert (=> b!1177972 (= lt!532016 (getCurrentListMapNoExtraKeys!5020 lt!532026 lt!532017 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532018 () V!44673)

(declare-fun _values!996 () array!76092)

(assert (=> b!1177972 (= lt!532017 (array!76093 (store (arr!36692 _values!996) i!673 (ValueCellFull!14120 lt!532018)) (size!37229 _values!996)))))

(declare-fun dynLambda!2995 (Int (_ BitVec 64)) V!44673)

(assert (=> b!1177972 (= lt!532018 (dynLambda!2995 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76090)

(assert (=> b!1177972 (= lt!532025 (getCurrentListMapNoExtraKeys!5020 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177973 () Bool)

(declare-datatypes ((Unit!38843 0))(
  ( (Unit!38844) )
))
(declare-fun e!669694 () Unit!38843)

(declare-fun Unit!38845 () Unit!38843)

(assert (=> b!1177973 (= e!669694 Unit!38845)))

(declare-fun b!1177974 () Bool)

(declare-fun e!669695 () Bool)

(declare-fun e!669703 () Bool)

(declare-fun mapRes!46316 () Bool)

(assert (=> b!1177974 (= e!669695 (and e!669703 mapRes!46316))))

(declare-fun condMapEmpty!46316 () Bool)

(declare-fun mapDefault!46316 () ValueCell!14120)

