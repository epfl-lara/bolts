; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97422 () Bool)

(assert start!97422)

(declare-fun b_free!23357 () Bool)

(declare-fun b_next!23357 () Bool)

(assert (=> start!97422 (= b_free!23357 (not b_next!23357))))

(declare-fun tp!82371 () Bool)

(declare-fun b_and!37571 () Bool)

(assert (=> start!97422 (= tp!82371 b_and!37571)))

(declare-datatypes ((V!41949 0))(
  ( (V!41950 (val!13865 Int)) )
))
(declare-fun zeroValue!944 () V!41949)

(declare-datatypes ((tuple2!17600 0))(
  ( (tuple2!17601 (_1!8810 (_ BitVec 64)) (_2!8810 V!41949)) )
))
(declare-datatypes ((List!24336 0))(
  ( (Nil!24333) (Cons!24332 (h!25541 tuple2!17600) (t!34746 List!24336)) )
))
(declare-datatypes ((ListLongMap!15581 0))(
  ( (ListLongMap!15582 (toList!7806 List!24336)) )
))
(declare-fun call!46768 () ListLongMap!15581)

(declare-datatypes ((array!72100 0))(
  ( (array!72101 (arr!34699 (Array (_ BitVec 32) (_ BitVec 64))) (size!35236 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72100)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46765 () Bool)

(declare-datatypes ((ValueCell!13099 0))(
  ( (ValueCellFull!13099 (v!16499 V!41949)) (EmptyCell!13099) )
))
(declare-datatypes ((array!72102 0))(
  ( (array!72103 (arr!34700 (Array (_ BitVec 32) ValueCell!13099)) (size!35237 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72102)

(declare-fun minValue!944 () V!41949)

(declare-fun getCurrentListMapNoExtraKeys!4269 (array!72100 array!72102 (_ BitVec 32) (_ BitVec 32) V!41949 V!41949 (_ BitVec 32) Int) ListLongMap!15581)

(assert (=> bm!46765 (= call!46768 (getCurrentListMapNoExtraKeys!4269 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110293 () Bool)

(declare-fun res!741015 () Bool)

(declare-fun e!633263 () Bool)

(assert (=> b!1110293 (=> (not res!741015) (not e!633263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110293 (= res!741015 (validMask!0 mask!1564))))

(declare-fun b!1110294 () Bool)

(declare-fun e!633262 () Bool)

(declare-fun tp_is_empty!27617 () Bool)

(assert (=> b!1110294 (= e!633262 tp_is_empty!27617)))

(declare-fun b!1110295 () Bool)

(declare-fun e!633258 () Bool)

(assert (=> b!1110295 (= e!633263 e!633258)))

(declare-fun res!741018 () Bool)

(assert (=> b!1110295 (=> (not res!741018) (not e!633258))))

(declare-fun lt!496120 () array!72100)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72100 (_ BitVec 32)) Bool)

(assert (=> b!1110295 (= res!741018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496120 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110295 (= lt!496120 (array!72101 (store (arr!34699 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35236 _keys!1208)))))

(declare-fun b!1110296 () Bool)

(declare-fun res!741017 () Bool)

(assert (=> b!1110296 (=> (not res!741017) (not e!633258))))

(declare-datatypes ((List!24337 0))(
  ( (Nil!24334) (Cons!24333 (h!25542 (_ BitVec 64)) (t!34747 List!24337)) )
))
(declare-fun arrayNoDuplicates!0 (array!72100 (_ BitVec 32) List!24337) Bool)

(assert (=> b!1110296 (= res!741017 (arrayNoDuplicates!0 lt!496120 #b00000000000000000000000000000000 Nil!24334))))

(declare-fun b!1110297 () Bool)

(declare-fun e!633259 () Bool)

(declare-fun mapRes!43243 () Bool)

(assert (=> b!1110297 (= e!633259 (and e!633262 mapRes!43243))))

(declare-fun condMapEmpty!43243 () Bool)

(declare-fun mapDefault!43243 () ValueCell!13099)

