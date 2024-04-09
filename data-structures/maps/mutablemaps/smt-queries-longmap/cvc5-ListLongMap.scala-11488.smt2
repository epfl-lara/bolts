; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133758 () Bool)

(assert start!133758)

(declare-fun b_free!32089 () Bool)

(declare-fun b_next!32089 () Bool)

(assert (=> start!133758 (= b_free!32089 (not b_next!32089))))

(declare-fun tp!113472 () Bool)

(declare-fun b_and!51669 () Bool)

(assert (=> start!133758 (= tp!113472 b_and!51669)))

(declare-fun b!1563478 () Bool)

(declare-fun e!871408 () Bool)

(declare-fun tp_is_empty!38809 () Bool)

(assert (=> b!1563478 (= e!871408 tp_is_empty!38809)))

(declare-fun mapIsEmpty!59589 () Bool)

(declare-fun mapRes!59589 () Bool)

(assert (=> mapIsEmpty!59589 mapRes!59589))

(declare-fun b!1563479 () Bool)

(declare-fun res!1068977 () Bool)

(declare-fun e!871405 () Bool)

(assert (=> b!1563479 (=> (not res!1068977) (not e!871405))))

(declare-datatypes ((array!104279 0))(
  ( (array!104280 (arr!50327 (Array (_ BitVec 32) (_ BitVec 64))) (size!50878 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104279)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563479 (= res!1068977 (not (validKeyInArray!0 (select (arr!50327 _keys!637) from!782))))))

(declare-fun b!1563480 () Bool)

(declare-fun e!871406 () Bool)

(assert (=> b!1563480 (= e!871405 e!871406)))

(declare-fun res!1068974 () Bool)

(assert (=> b!1563480 (=> (not res!1068974) (not e!871406))))

(declare-datatypes ((V!59953 0))(
  ( (V!59954 (val!19488 Int)) )
))
(declare-datatypes ((tuple2!25304 0))(
  ( (tuple2!25305 (_1!12662 (_ BitVec 64)) (_2!12662 V!59953)) )
))
(declare-datatypes ((List!36690 0))(
  ( (Nil!36687) (Cons!36686 (h!38133 tuple2!25304) (t!51544 List!36690)) )
))
(declare-datatypes ((ListLongMap!22751 0))(
  ( (ListLongMap!22752 (toList!11391 List!36690)) )
))
(declare-fun lt!671844 () ListLongMap!22751)

(declare-fun contains!10311 (ListLongMap!22751 (_ BitVec 64)) Bool)

(assert (=> b!1563480 (= res!1068974 (not (contains!10311 lt!671844 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59953)

(declare-datatypes ((ValueCell!18374 0))(
  ( (ValueCellFull!18374 (v!22237 V!59953)) (EmptyCell!18374) )
))
(declare-datatypes ((array!104281 0))(
  ( (array!104282 (arr!50328 (Array (_ BitVec 32) ValueCell!18374)) (size!50879 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104281)

(declare-fun zeroValue!453 () V!59953)

(declare-fun getCurrentListMapNoExtraKeys!6748 (array!104279 array!104281 (_ BitVec 32) (_ BitVec 32) V!59953 V!59953 (_ BitVec 32) Int) ListLongMap!22751)

(assert (=> b!1563480 (= lt!671844 (getCurrentListMapNoExtraKeys!6748 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563481 () Bool)

(declare-fun e!871409 () Bool)

(assert (=> b!1563481 (= e!871409 tp_is_empty!38809)))

(declare-fun res!1068972 () Bool)

(assert (=> start!133758 (=> (not res!1068972) (not e!871405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133758 (= res!1068972 (validMask!0 mask!947))))

(assert (=> start!133758 e!871405))

(assert (=> start!133758 tp!113472))

(assert (=> start!133758 tp_is_empty!38809))

(assert (=> start!133758 true))

(declare-fun array_inv!39039 (array!104279) Bool)

(assert (=> start!133758 (array_inv!39039 _keys!637)))

(declare-fun e!871407 () Bool)

(declare-fun array_inv!39040 (array!104281) Bool)

(assert (=> start!133758 (and (array_inv!39040 _values!487) e!871407)))

(declare-fun b!1563482 () Bool)

(assert (=> b!1563482 (= e!871407 (and e!871409 mapRes!59589))))

(declare-fun condMapEmpty!59589 () Bool)

(declare-fun mapDefault!59589 () ValueCell!18374)

