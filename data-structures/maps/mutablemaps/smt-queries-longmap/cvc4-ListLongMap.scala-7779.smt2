; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97458 () Bool)

(assert start!97458)

(declare-fun b_free!23393 () Bool)

(declare-fun b_next!23393 () Bool)

(assert (=> start!97458 (= b_free!23393 (not b_next!23393))))

(declare-fun tp!82478 () Bool)

(declare-fun b_and!37643 () Bool)

(assert (=> start!97458 (= tp!82478 b_and!37643)))

(declare-fun mapIsEmpty!43297 () Bool)

(declare-fun mapRes!43297 () Bool)

(assert (=> mapIsEmpty!43297 mapRes!43297))

(declare-fun b!1111193 () Bool)

(declare-fun e!633692 () Bool)

(declare-fun e!633691 () Bool)

(assert (=> b!1111193 (= e!633692 (not e!633691))))

(declare-fun res!741611 () Bool)

(assert (=> b!1111193 (=> res!741611 e!633691)))

(declare-datatypes ((array!72170 0))(
  ( (array!72171 (arr!34734 (Array (_ BitVec 32) (_ BitVec 64))) (size!35271 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72170)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1111193 (= res!741611 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35271 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111193 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36381 0))(
  ( (Unit!36382) )
))
(declare-fun lt!496284 () Unit!36381)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72170 (_ BitVec 64) (_ BitVec 32)) Unit!36381)

(assert (=> b!1111193 (= lt!496284 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1111194 () Bool)

(declare-fun res!741616 () Bool)

(declare-fun e!633694 () Bool)

(assert (=> b!1111194 (=> (not res!741616) (not e!633694))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72170 (_ BitVec 32)) Bool)

(assert (=> b!1111194 (= res!741616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111195 () Bool)

(declare-fun e!633693 () Bool)

(declare-datatypes ((V!41997 0))(
  ( (V!41998 (val!13883 Int)) )
))
(declare-datatypes ((tuple2!17630 0))(
  ( (tuple2!17631 (_1!8825 (_ BitVec 64)) (_2!8825 V!41997)) )
))
(declare-datatypes ((List!24366 0))(
  ( (Nil!24363) (Cons!24362 (h!25571 tuple2!17630) (t!34812 List!24366)) )
))
(declare-datatypes ((ListLongMap!15611 0))(
  ( (ListLongMap!15612 (toList!7821 List!24366)) )
))
(declare-fun call!46876 () ListLongMap!15611)

(declare-fun call!46877 () ListLongMap!15611)

(assert (=> b!1111195 (= e!633693 (= call!46876 call!46877))))

(declare-fun b!1111196 () Bool)

(declare-fun res!741613 () Bool)

(assert (=> b!1111196 (=> (not res!741613) (not e!633694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111196 (= res!741613 (validMask!0 mask!1564))))

(declare-fun b!1111197 () Bool)

(declare-fun e!633689 () Bool)

(declare-fun e!633695 () Bool)

(assert (=> b!1111197 (= e!633689 (and e!633695 mapRes!43297))))

(declare-fun condMapEmpty!43297 () Bool)

(declare-datatypes ((ValueCell!13117 0))(
  ( (ValueCellFull!13117 (v!16517 V!41997)) (EmptyCell!13117) )
))
(declare-datatypes ((array!72172 0))(
  ( (array!72173 (arr!34735 (Array (_ BitVec 32) ValueCell!13117)) (size!35272 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72172)

(declare-fun mapDefault!43297 () ValueCell!13117)

