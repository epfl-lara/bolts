; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97262 () Bool)

(assert start!97262)

(declare-fun b!1106371 () Bool)

(declare-fun res!738415 () Bool)

(declare-fun e!631380 () Bool)

(assert (=> b!1106371 (=> (not res!738415) (not e!631380))))

(declare-datatypes ((array!71784 0))(
  ( (array!71785 (arr!34541 (Array (_ BitVec 32) (_ BitVec 64))) (size!35078 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71784)

(declare-datatypes ((List!24215 0))(
  ( (Nil!24212) (Cons!24211 (h!25420 (_ BitVec 64)) (t!34487 List!24215)) )
))
(declare-fun arrayNoDuplicates!0 (array!71784 (_ BitVec 32) List!24215) Bool)

(assert (=> b!1106371 (= res!738415 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24212))))

(declare-fun b!1106372 () Bool)

(declare-fun res!738409 () Bool)

(declare-fun e!631385 () Bool)

(assert (=> b!1106372 (=> (not res!738409) (not e!631385))))

(declare-fun lt!495435 () array!71784)

(assert (=> b!1106372 (= res!738409 (arrayNoDuplicates!0 lt!495435 #b00000000000000000000000000000000 Nil!24212))))

(declare-fun b!1106373 () Bool)

(assert (=> b!1106373 (= e!631380 e!631385)))

(declare-fun res!738417 () Bool)

(assert (=> b!1106373 (=> (not res!738417) (not e!631385))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71784 (_ BitVec 32)) Bool)

(assert (=> b!1106373 (= res!738417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495435 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106373 (= lt!495435 (array!71785 (store (arr!34541 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35078 _keys!1208)))))

(declare-fun b!1106374 () Bool)

(declare-fun res!738410 () Bool)

(assert (=> b!1106374 (=> (not res!738410) (not e!631380))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41737 0))(
  ( (V!41738 (val!13785 Int)) )
))
(declare-datatypes ((ValueCell!13019 0))(
  ( (ValueCellFull!13019 (v!16419 V!41737)) (EmptyCell!13019) )
))
(declare-datatypes ((array!71786 0))(
  ( (array!71787 (arr!34542 (Array (_ BitVec 32) ValueCell!13019)) (size!35079 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71786)

(assert (=> b!1106374 (= res!738410 (and (= (size!35079 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35078 _keys!1208) (size!35079 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106375 () Bool)

(declare-fun e!631381 () Bool)

(declare-fun e!631384 () Bool)

(declare-fun mapRes!43003 () Bool)

(assert (=> b!1106375 (= e!631381 (and e!631384 mapRes!43003))))

(declare-fun condMapEmpty!43003 () Bool)

(declare-fun mapDefault!43003 () ValueCell!13019)

