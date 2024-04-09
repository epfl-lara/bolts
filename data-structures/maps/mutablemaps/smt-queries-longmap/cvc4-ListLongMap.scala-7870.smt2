; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98004 () Bool)

(assert start!98004)

(declare-fun b_free!23669 () Bool)

(declare-fun b_next!23669 () Bool)

(assert (=> start!98004 (= b_free!23669 (not b_next!23669))))

(declare-fun tp!83711 () Bool)

(declare-fun b_and!38143 () Bool)

(assert (=> start!98004 (= tp!83711 b_and!38143)))

(declare-fun res!750425 () Bool)

(declare-fun e!639436 () Bool)

(assert (=> start!98004 (=> (not res!750425) (not e!639436))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73224 0))(
  ( (array!73225 (arr!35261 (Array (_ BitVec 32) (_ BitVec 64))) (size!35798 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73224)

(assert (=> start!98004 (= res!750425 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35798 _keys!1208))))))

(assert (=> start!98004 e!639436))

(declare-fun tp_is_empty!28199 () Bool)

(assert (=> start!98004 tp_is_empty!28199))

(declare-fun array_inv!26948 (array!73224) Bool)

(assert (=> start!98004 (array_inv!26948 _keys!1208)))

(assert (=> start!98004 true))

(assert (=> start!98004 tp!83711))

(declare-datatypes ((V!42725 0))(
  ( (V!42726 (val!14156 Int)) )
))
(declare-datatypes ((ValueCell!13390 0))(
  ( (ValueCellFull!13390 (v!16790 V!42725)) (EmptyCell!13390) )
))
(declare-datatypes ((array!73226 0))(
  ( (array!73227 (arr!35262 (Array (_ BitVec 32) ValueCell!13390)) (size!35799 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73226)

(declare-fun e!639440 () Bool)

(declare-fun array_inv!26949 (array!73226) Bool)

(assert (=> start!98004 (and (array_inv!26949 _values!996) e!639440)))

(declare-fun b!1123107 () Bool)

(declare-fun res!750423 () Bool)

(assert (=> b!1123107 (=> (not res!750423) (not e!639436))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1123107 (= res!750423 (= (select (arr!35261 _keys!1208) i!673) k!934))))

(declare-fun b!1123108 () Bool)

(declare-fun e!639437 () Bool)

(assert (=> b!1123108 (= e!639437 true)))

(declare-fun zeroValue!944 () V!42725)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498955 () Bool)

(declare-fun minValue!944 () V!42725)

(declare-datatypes ((tuple2!17850 0))(
  ( (tuple2!17851 (_1!8935 (_ BitVec 64)) (_2!8935 V!42725)) )
))
(declare-datatypes ((List!24684 0))(
  ( (Nil!24681) (Cons!24680 (h!25889 tuple2!17850) (t!35352 List!24684)) )
))
(declare-datatypes ((ListLongMap!15831 0))(
  ( (ListLongMap!15832 (toList!7931 List!24684)) )
))
(declare-fun contains!6448 (ListLongMap!15831 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4391 (array!73224 array!73226 (_ BitVec 32) (_ BitVec 32) V!42725 V!42725 (_ BitVec 32) Int) ListLongMap!15831)

(assert (=> b!1123108 (= lt!498955 (contains!6448 (getCurrentListMapNoExtraKeys!4391 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1123109 () Bool)

(declare-fun res!750424 () Bool)

(assert (=> b!1123109 (=> (not res!750424) (not e!639436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123109 (= res!750424 (validKeyInArray!0 k!934))))

(declare-fun b!1123110 () Bool)

(declare-fun e!639442 () Bool)

(assert (=> b!1123110 (= e!639442 tp_is_empty!28199)))

(declare-fun b!1123111 () Bool)

(declare-fun mapRes!44116 () Bool)

(assert (=> b!1123111 (= e!639440 (and e!639442 mapRes!44116))))

(declare-fun condMapEmpty!44116 () Bool)

(declare-fun mapDefault!44116 () ValueCell!13390)

