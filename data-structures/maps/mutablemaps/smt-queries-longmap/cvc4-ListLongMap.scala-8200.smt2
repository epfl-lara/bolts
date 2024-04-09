; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100106 () Bool)

(assert start!100106)

(declare-fun b_free!25649 () Bool)

(declare-fun b_next!25649 () Bool)

(assert (=> start!100106 (= b_free!25649 (not b_next!25649))))

(declare-fun tp!89662 () Bool)

(declare-fun b_and!42179 () Bool)

(assert (=> start!100106 (= tp!89662 b_and!42179)))

(declare-fun b!1192861 () Bool)

(declare-fun e!678036 () Bool)

(declare-fun e!678030 () Bool)

(assert (=> b!1192861 (= e!678036 e!678030)))

(declare-fun res!793670 () Bool)

(assert (=> b!1192861 (=> res!793670 e!678030)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1192861 (= res!793670 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45365 0))(
  ( (V!45366 (val!15146 Int)) )
))
(declare-fun zeroValue!944 () V!45365)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45365)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19616 0))(
  ( (tuple2!19617 (_1!9818 (_ BitVec 64)) (_2!9818 V!45365)) )
))
(declare-datatypes ((List!26375 0))(
  ( (Nil!26372) (Cons!26371 (h!27580 tuple2!19616) (t!39023 List!26375)) )
))
(declare-datatypes ((ListLongMap!17597 0))(
  ( (ListLongMap!17598 (toList!8814 List!26375)) )
))
(declare-fun lt!542348 () ListLongMap!17597)

(declare-datatypes ((array!77122 0))(
  ( (array!77123 (arr!37207 (Array (_ BitVec 32) (_ BitVec 64))) (size!37744 (_ BitVec 32))) )
))
(declare-fun lt!542350 () array!77122)

(declare-datatypes ((ValueCell!14380 0))(
  ( (ValueCellFull!14380 (v!17785 V!45365)) (EmptyCell!14380) )
))
(declare-datatypes ((array!77124 0))(
  ( (array!77125 (arr!37208 (Array (_ BitVec 32) ValueCell!14380)) (size!37745 (_ BitVec 32))) )
))
(declare-fun lt!542349 () array!77124)

(declare-fun getCurrentListMapNoExtraKeys!5228 (array!77122 array!77124 (_ BitVec 32) (_ BitVec 32) V!45365 V!45365 (_ BitVec 32) Int) ListLongMap!17597)

(assert (=> b!1192861 (= lt!542348 (getCurrentListMapNoExtraKeys!5228 lt!542350 lt!542349 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77124)

(declare-fun dynLambda!3167 (Int (_ BitVec 64)) V!45365)

(assert (=> b!1192861 (= lt!542349 (array!77125 (store (arr!37208 _values!996) i!673 (ValueCellFull!14380 (dynLambda!3167 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37745 _values!996)))))

(declare-fun _keys!1208 () array!77122)

(declare-fun lt!542347 () ListLongMap!17597)

(assert (=> b!1192861 (= lt!542347 (getCurrentListMapNoExtraKeys!5228 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192862 () Bool)

(declare-fun res!793661 () Bool)

(declare-fun e!678033 () Bool)

(assert (=> b!1192862 (=> (not res!793661) (not e!678033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192862 (= res!793661 (validMask!0 mask!1564))))

(declare-fun b!1192863 () Bool)

(declare-fun e!678032 () Bool)

(declare-fun e!678035 () Bool)

(declare-fun mapRes!47096 () Bool)

(assert (=> b!1192863 (= e!678032 (and e!678035 mapRes!47096))))

(declare-fun condMapEmpty!47096 () Bool)

(declare-fun mapDefault!47096 () ValueCell!14380)

