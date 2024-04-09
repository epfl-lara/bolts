; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97442 () Bool)

(assert start!97442)

(declare-fun b_free!23377 () Bool)

(declare-fun b_next!23377 () Bool)

(assert (=> start!97442 (= b_free!23377 (not b_next!23377))))

(declare-fun tp!82431 () Bool)

(declare-fun b_and!37611 () Bool)

(assert (=> start!97442 (= tp!82431 b_and!37611)))

(declare-datatypes ((V!41977 0))(
  ( (V!41978 (val!13875 Int)) )
))
(declare-fun zeroValue!944 () V!41977)

(declare-fun bm!46825 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!72140 0))(
  ( (array!72141 (arr!34719 (Array (_ BitVec 32) (_ BitVec 64))) (size!35256 (_ BitVec 32))) )
))
(declare-fun lt!496211 () array!72140)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17618 0))(
  ( (tuple2!17619 (_1!8819 (_ BitVec 64)) (_2!8819 V!41977)) )
))
(declare-datatypes ((List!24353 0))(
  ( (Nil!24350) (Cons!24349 (h!25558 tuple2!17618) (t!34783 List!24353)) )
))
(declare-datatypes ((ListLongMap!15599 0))(
  ( (ListLongMap!15600 (toList!7815 List!24353)) )
))
(declare-fun call!46828 () ListLongMap!15599)

(declare-datatypes ((ValueCell!13109 0))(
  ( (ValueCellFull!13109 (v!16509 V!41977)) (EmptyCell!13109) )
))
(declare-datatypes ((array!72142 0))(
  ( (array!72143 (arr!34720 (Array (_ BitVec 32) ValueCell!13109)) (size!35257 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72142)

(declare-fun minValue!944 () V!41977)

(declare-fun getCurrentListMapNoExtraKeys!4278 (array!72140 array!72142 (_ BitVec 32) (_ BitVec 32) V!41977 V!41977 (_ BitVec 32) Int) ListLongMap!15599)

(declare-fun dynLambda!2400 (Int (_ BitVec 64)) V!41977)

(assert (=> bm!46825 (= call!46828 (getCurrentListMapNoExtraKeys!4278 lt!496211 (array!72143 (store (arr!34720 _values!996) i!673 (ValueCellFull!13109 (dynLambda!2400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35257 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110793 () Bool)

(declare-fun e!633499 () Bool)

(assert (=> b!1110793 (= e!633499 true)))

(declare-fun e!633497 () Bool)

(assert (=> b!1110793 e!633497))

(declare-fun c!109217 () Bool)

(assert (=> b!1110793 (= c!109217 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _keys!1208 () array!72140)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36371 0))(
  ( (Unit!36372) )
))
(declare-fun lt!496212 () Unit!36371)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!292 (array!72140 array!72142 (_ BitVec 32) (_ BitVec 32) V!41977 V!41977 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36371)

(assert (=> b!1110793 (= lt!496212 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!292 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110794 () Bool)

(declare-fun res!741351 () Bool)

(declare-fun e!633503 () Bool)

(assert (=> b!1110794 (=> (not res!741351) (not e!633503))))

(declare-datatypes ((List!24354 0))(
  ( (Nil!24351) (Cons!24350 (h!25559 (_ BitVec 64)) (t!34784 List!24354)) )
))
(declare-fun arrayNoDuplicates!0 (array!72140 (_ BitVec 32) List!24354) Bool)

(assert (=> b!1110794 (= res!741351 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24351))))

(declare-fun mapIsEmpty!43273 () Bool)

(declare-fun mapRes!43273 () Bool)

(assert (=> mapIsEmpty!43273 mapRes!43273))

(declare-fun b!1110795 () Bool)

(declare-fun e!633498 () Bool)

(declare-fun tp_is_empty!27637 () Bool)

(assert (=> b!1110795 (= e!633498 tp_is_empty!27637)))

(declare-fun b!1110796 () Bool)

(declare-fun res!741344 () Bool)

(assert (=> b!1110796 (=> (not res!741344) (not e!633503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110796 (= res!741344 (validMask!0 mask!1564))))

(declare-fun b!1110797 () Bool)

(declare-fun res!741347 () Bool)

(assert (=> b!1110797 (=> (not res!741347) (not e!633503))))

(assert (=> b!1110797 (= res!741347 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35256 _keys!1208))))))

(declare-fun b!1110798 () Bool)

(declare-fun e!633502 () Bool)

(declare-fun e!633501 () Bool)

(assert (=> b!1110798 (= e!633502 (and e!633501 mapRes!43273))))

(declare-fun condMapEmpty!43273 () Bool)

(declare-fun mapDefault!43273 () ValueCell!13109)

