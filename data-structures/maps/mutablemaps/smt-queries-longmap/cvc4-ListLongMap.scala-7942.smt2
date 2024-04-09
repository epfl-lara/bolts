; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98532 () Bool)

(assert start!98532)

(declare-fun b_free!24101 () Bool)

(declare-fun b_next!24101 () Bool)

(assert (=> start!98532 (= b_free!24101 (not b_next!24101))))

(declare-fun tp!85015 () Bool)

(declare-fun b_and!39065 () Bool)

(assert (=> start!98532 (= tp!85015 b_and!39065)))

(declare-fun b!1139739 () Bool)

(declare-fun e!648522 () Bool)

(declare-fun e!648520 () Bool)

(assert (=> b!1139739 (= e!648522 e!648520)))

(declare-fun res!760133 () Bool)

(assert (=> b!1139739 (=> res!760133 e!648520)))

(declare-datatypes ((array!74080 0))(
  ( (array!74081 (arr!35687 (Array (_ BitVec 32) (_ BitVec 64))) (size!36224 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74080)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1139739 (= res!760133 (not (= (select (arr!35687 _keys!1208) from!1455) k!934)))))

(declare-fun e!648507 () Bool)

(assert (=> b!1139739 e!648507))

(declare-fun c!111715 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139739 (= c!111715 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43301 0))(
  ( (V!43302 (val!14372 Int)) )
))
(declare-fun zeroValue!944 () V!43301)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37306 0))(
  ( (Unit!37307) )
))
(declare-fun lt!507322 () Unit!37306)

(declare-datatypes ((ValueCell!13606 0))(
  ( (ValueCellFull!13606 (v!17010 V!43301)) (EmptyCell!13606) )
))
(declare-datatypes ((array!74082 0))(
  ( (array!74083 (arr!35688 (Array (_ BitVec 32) ValueCell!13606)) (size!36225 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74082)

(declare-fun minValue!944 () V!43301)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!494 (array!74080 array!74082 (_ BitVec 32) (_ BitVec 32) V!43301 V!43301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37306)

(assert (=> b!1139739 (= lt!507322 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139740 () Bool)

(declare-fun res!760140 () Bool)

(declare-fun e!648513 () Bool)

(assert (=> b!1139740 (=> (not res!760140) (not e!648513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139740 (= res!760140 (validMask!0 mask!1564))))

(declare-fun b!1139741 () Bool)

(declare-datatypes ((tuple2!18258 0))(
  ( (tuple2!18259 (_1!9139 (_ BitVec 64)) (_2!9139 V!43301)) )
))
(declare-datatypes ((List!25061 0))(
  ( (Nil!25058) (Cons!25057 (h!26266 tuple2!18258) (t!36161 List!25061)) )
))
(declare-datatypes ((ListLongMap!16239 0))(
  ( (ListLongMap!16240 (toList!8135 List!25061)) )
))
(declare-fun call!50760 () ListLongMap!16239)

(declare-fun call!50754 () ListLongMap!16239)

(assert (=> b!1139741 (= e!648507 (= call!50760 call!50754))))

(declare-fun b!1139743 () Bool)

(declare-fun res!760137 () Bool)

(declare-fun e!648508 () Bool)

(assert (=> b!1139743 (=> (not res!760137) (not e!648508))))

(declare-fun lt!507321 () array!74080)

(declare-datatypes ((List!25062 0))(
  ( (Nil!25059) (Cons!25058 (h!26267 (_ BitVec 64)) (t!36162 List!25062)) )
))
(declare-fun arrayNoDuplicates!0 (array!74080 (_ BitVec 32) List!25062) Bool)

(assert (=> b!1139743 (= res!760137 (arrayNoDuplicates!0 lt!507321 #b00000000000000000000000000000000 Nil!25059))))

(declare-fun b!1139744 () Bool)

(declare-fun e!648509 () Bool)

(declare-fun e!648511 () Bool)

(declare-fun mapRes!44771 () Bool)

(assert (=> b!1139744 (= e!648509 (and e!648511 mapRes!44771))))

(declare-fun condMapEmpty!44771 () Bool)

(declare-fun mapDefault!44771 () ValueCell!13606)

