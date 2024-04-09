; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97656 () Bool)

(assert start!97656)

(declare-fun b!1115302 () Bool)

(declare-fun res!744649 () Bool)

(declare-fun e!635606 () Bool)

(assert (=> b!1115302 (=> (not res!744649) (not e!635606))))

(declare-datatypes ((array!72544 0))(
  ( (array!72545 (arr!34921 (Array (_ BitVec 32) (_ BitVec 64))) (size!35458 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72544)

(declare-datatypes ((List!24452 0))(
  ( (Nil!24449) (Cons!24448 (h!25657 (_ BitVec 64)) (t!34940 List!24452)) )
))
(declare-fun arrayNoDuplicates!0 (array!72544 (_ BitVec 32) List!24452) Bool)

(assert (=> b!1115302 (= res!744649 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24449))))

(declare-fun b!1115303 () Bool)

(declare-fun res!744651 () Bool)

(assert (=> b!1115303 (=> (not res!744651) (not e!635606))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72544 (_ BitVec 32)) Bool)

(assert (=> b!1115303 (= res!744651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115304 () Bool)

(declare-fun res!744642 () Bool)

(assert (=> b!1115304 (=> (not res!744642) (not e!635606))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42261 0))(
  ( (V!42262 (val!13982 Int)) )
))
(declare-datatypes ((ValueCell!13216 0))(
  ( (ValueCellFull!13216 (v!16616 V!42261)) (EmptyCell!13216) )
))
(declare-datatypes ((array!72546 0))(
  ( (array!72547 (arr!34922 (Array (_ BitVec 32) ValueCell!13216)) (size!35459 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72546)

(assert (=> b!1115304 (= res!744642 (and (= (size!35459 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35458 _keys!1208) (size!35459 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115305 () Bool)

(declare-fun res!744647 () Bool)

(declare-fun e!635604 () Bool)

(assert (=> b!1115305 (=> (not res!744647) (not e!635604))))

(declare-fun lt!496941 () array!72544)

(assert (=> b!1115305 (= res!744647 (arrayNoDuplicates!0 lt!496941 #b00000000000000000000000000000000 Nil!24449))))

(declare-fun b!1115306 () Bool)

(declare-fun e!635608 () Bool)

(declare-fun e!635605 () Bool)

(declare-fun mapRes!43594 () Bool)

(assert (=> b!1115306 (= e!635608 (and e!635605 mapRes!43594))))

(declare-fun condMapEmpty!43594 () Bool)

(declare-fun mapDefault!43594 () ValueCell!13216)

