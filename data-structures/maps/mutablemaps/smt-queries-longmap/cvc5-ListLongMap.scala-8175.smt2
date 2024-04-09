; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99952 () Bool)

(assert start!99952)

(declare-fun b_free!25495 () Bool)

(declare-fun b_next!25495 () Bool)

(assert (=> start!99952 (= b_free!25495 (not b_next!25495))))

(declare-fun tp!89199 () Bool)

(declare-fun b_and!41871 () Bool)

(assert (=> start!99952 (= tp!89199 b_and!41871)))

(declare-fun mapIsEmpty!46865 () Bool)

(declare-fun mapRes!46865 () Bool)

(assert (=> mapIsEmpty!46865 mapRes!46865))

(declare-fun b!1189242 () Bool)

(declare-fun res!790892 () Bool)

(declare-fun e!676188 () Bool)

(assert (=> b!1189242 (=> (not res!790892) (not e!676188))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189242 (= res!790892 (validMask!0 mask!1564))))

(declare-fun b!1189243 () Bool)

(declare-fun res!790889 () Bool)

(assert (=> b!1189243 (=> (not res!790889) (not e!676188))))

(declare-datatypes ((array!76816 0))(
  ( (array!76817 (arr!37054 (Array (_ BitVec 32) (_ BitVec 64))) (size!37591 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76816)

(declare-datatypes ((List!26242 0))(
  ( (Nil!26239) (Cons!26238 (h!27447 (_ BitVec 64)) (t!38736 List!26242)) )
))
(declare-fun arrayNoDuplicates!0 (array!76816 (_ BitVec 32) List!26242) Bool)

(assert (=> b!1189243 (= res!790889 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26239))))

(declare-fun b!1189244 () Bool)

(declare-fun e!676182 () Bool)

(declare-fun e!676187 () Bool)

(assert (=> b!1189244 (= e!676182 e!676187)))

(declare-fun res!790897 () Bool)

(assert (=> b!1189244 (=> res!790897 e!676187)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189244 (= res!790897 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45161 0))(
  ( (V!45162 (val!15069 Int)) )
))
(declare-fun zeroValue!944 () V!45161)

(declare-datatypes ((ValueCell!14303 0))(
  ( (ValueCellFull!14303 (v!17708 V!45161)) (EmptyCell!14303) )
))
(declare-datatypes ((array!76818 0))(
  ( (array!76819 (arr!37055 (Array (_ BitVec 32) ValueCell!14303)) (size!37592 (_ BitVec 32))) )
))
(declare-fun lt!540961 () array!76818)

(declare-fun lt!540963 () array!76816)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19482 0))(
  ( (tuple2!19483 (_1!9751 (_ BitVec 64)) (_2!9751 V!45161)) )
))
(declare-datatypes ((List!26243 0))(
  ( (Nil!26240) (Cons!26239 (h!27448 tuple2!19482) (t!38737 List!26243)) )
))
(declare-datatypes ((ListLongMap!17463 0))(
  ( (ListLongMap!17464 (toList!8747 List!26243)) )
))
(declare-fun lt!540966 () ListLongMap!17463)

(declare-fun minValue!944 () V!45161)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5161 (array!76816 array!76818 (_ BitVec 32) (_ BitVec 32) V!45161 V!45161 (_ BitVec 32) Int) ListLongMap!17463)

(assert (=> b!1189244 (= lt!540966 (getCurrentListMapNoExtraKeys!5161 lt!540963 lt!540961 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76818)

(declare-fun dynLambda!3114 (Int (_ BitVec 64)) V!45161)

(assert (=> b!1189244 (= lt!540961 (array!76819 (store (arr!37055 _values!996) i!673 (ValueCellFull!14303 (dynLambda!3114 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37592 _values!996)))))

(declare-fun lt!540965 () ListLongMap!17463)

(assert (=> b!1189244 (= lt!540965 (getCurrentListMapNoExtraKeys!5161 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189245 () Bool)

(declare-fun e!676189 () Bool)

(declare-fun e!676185 () Bool)

(assert (=> b!1189245 (= e!676189 (and e!676185 mapRes!46865))))

(declare-fun condMapEmpty!46865 () Bool)

(declare-fun mapDefault!46865 () ValueCell!14303)

