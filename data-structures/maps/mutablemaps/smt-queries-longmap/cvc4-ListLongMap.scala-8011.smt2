; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98946 () Bool)

(assert start!98946)

(declare-fun b_free!24515 () Bool)

(declare-fun b_next!24515 () Bool)

(assert (=> start!98946 (= b_free!24515 (not b_next!24515))))

(declare-fun tp!86256 () Bool)

(declare-fun b_and!39893 () Bool)

(assert (=> start!98946 (= tp!86256 b_and!39893)))

(declare-fun b!1158638 () Bool)

(declare-fun c!115446 () Bool)

(declare-fun lt!520685 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1158638 (= c!115446 (and (not lt!520685) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!38071 0))(
  ( (Unit!38072) )
))
(declare-fun e!658919 () Unit!38071)

(declare-fun e!658921 () Unit!38071)

(assert (=> b!1158638 (= e!658919 e!658921)))

(declare-fun b!1158639 () Bool)

(declare-fun e!658931 () Bool)

(declare-datatypes ((V!43853 0))(
  ( (V!43854 (val!14579 Int)) )
))
(declare-datatypes ((tuple2!18628 0))(
  ( (tuple2!18629 (_1!9324 (_ BitVec 64)) (_2!9324 V!43853)) )
))
(declare-datatypes ((List!25406 0))(
  ( (Nil!25403) (Cons!25402 (h!26611 tuple2!18628) (t!36920 List!25406)) )
))
(declare-datatypes ((ListLongMap!16609 0))(
  ( (ListLongMap!16610 (toList!8320 List!25406)) )
))
(declare-fun call!55725 () ListLongMap!16609)

(declare-fun call!55727 () ListLongMap!16609)

(assert (=> b!1158639 (= e!658931 (= call!55725 call!55727))))

(declare-fun b!1158640 () Bool)

(declare-fun res!769311 () Bool)

(declare-fun e!658930 () Bool)

(assert (=> b!1158640 (=> (not res!769311) (not e!658930))))

(declare-datatypes ((array!74880 0))(
  ( (array!74881 (arr!36087 (Array (_ BitVec 32) (_ BitVec 64))) (size!36624 (_ BitVec 32))) )
))
(declare-fun lt!520688 () array!74880)

(declare-datatypes ((List!25407 0))(
  ( (Nil!25404) (Cons!25403 (h!26612 (_ BitVec 64)) (t!36921 List!25407)) )
))
(declare-fun arrayNoDuplicates!0 (array!74880 (_ BitVec 32) List!25407) Bool)

(assert (=> b!1158640 (= res!769311 (arrayNoDuplicates!0 lt!520688 #b00000000000000000000000000000000 Nil!25404))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1158641 () Bool)

(declare-fun _keys!1208 () array!74880)

(declare-fun e!658926 () Bool)

(declare-fun arrayContainsKey!0 (array!74880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158641 (= e!658926 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158642 () Bool)

(declare-fun e!658923 () Bool)

(declare-fun e!658925 () Bool)

(declare-fun mapRes!45392 () Bool)

(assert (=> b!1158642 (= e!658923 (and e!658925 mapRes!45392))))

(declare-fun condMapEmpty!45392 () Bool)

(declare-datatypes ((ValueCell!13813 0))(
  ( (ValueCellFull!13813 (v!17217 V!43853)) (EmptyCell!13813) )
))
(declare-datatypes ((array!74882 0))(
  ( (array!74883 (arr!36088 (Array (_ BitVec 32) ValueCell!13813)) (size!36625 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74882)

(declare-fun mapDefault!45392 () ValueCell!13813)

