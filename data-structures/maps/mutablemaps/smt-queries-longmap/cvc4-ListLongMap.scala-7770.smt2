; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97404 () Bool)

(assert start!97404)

(declare-fun b_free!23339 () Bool)

(declare-fun b_next!23339 () Bool)

(assert (=> start!97404 (= b_free!23339 (not b_next!23339))))

(declare-fun tp!82317 () Bool)

(declare-fun b_and!37535 () Bool)

(assert (=> start!97404 (= tp!82317 b_and!37535)))

(declare-fun b!1109843 () Bool)

(declare-fun e!633043 () Bool)

(assert (=> b!1109843 (= e!633043 true)))

(declare-fun e!633047 () Bool)

(assert (=> b!1109843 e!633047))

(declare-fun c!109160 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109843 (= c!109160 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41925 0))(
  ( (V!41926 (val!13856 Int)) )
))
(declare-fun zeroValue!944 () V!41925)

(declare-datatypes ((array!72066 0))(
  ( (array!72067 (arr!34682 (Array (_ BitVec 32) (_ BitVec 64))) (size!35219 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72066)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36343 0))(
  ( (Unit!36344) )
))
(declare-fun lt!496039 () Unit!36343)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13090 0))(
  ( (ValueCellFull!13090 (v!16490 V!41925)) (EmptyCell!13090) )
))
(declare-datatypes ((array!72068 0))(
  ( (array!72069 (arr!34683 (Array (_ BitVec 32) ValueCell!13090)) (size!35220 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72068)

(declare-fun minValue!944 () V!41925)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!278 (array!72066 array!72068 (_ BitVec 32) (_ BitVec 32) V!41925 V!41925 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36343)

(assert (=> b!1109843 (= lt!496039 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!278 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109844 () Bool)

(declare-fun e!633046 () Bool)

(declare-fun e!633045 () Bool)

(declare-fun mapRes!43216 () Bool)

(assert (=> b!1109844 (= e!633046 (and e!633045 mapRes!43216))))

(declare-fun condMapEmpty!43216 () Bool)

(declare-fun mapDefault!43216 () ValueCell!13090)

