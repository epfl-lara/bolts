; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97676 () Bool)

(assert start!97676)

(declare-fun b!1115692 () Bool)

(declare-fun e!635788 () Bool)

(declare-fun e!635786 () Bool)

(assert (=> b!1115692 (= e!635788 e!635786)))

(declare-fun res!744947 () Bool)

(assert (=> b!1115692 (=> (not res!744947) (not e!635786))))

(declare-datatypes ((array!72582 0))(
  ( (array!72583 (arr!34940 (Array (_ BitVec 32) (_ BitVec 64))) (size!35477 (_ BitVec 32))) )
))
(declare-fun lt!497001 () array!72582)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72582 (_ BitVec 32)) Bool)

(assert (=> b!1115692 (= res!744947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497001 mask!1564))))

(declare-fun _keys!1208 () array!72582)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115692 (= lt!497001 (array!72583 (store (arr!34940 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35477 _keys!1208)))))

(declare-fun b!1115693 () Bool)

(declare-fun res!744948 () Bool)

(assert (=> b!1115693 (=> (not res!744948) (not e!635786))))

(declare-datatypes ((List!24459 0))(
  ( (Nil!24456) (Cons!24455 (h!25664 (_ BitVec 64)) (t!34947 List!24459)) )
))
(declare-fun arrayNoDuplicates!0 (array!72582 (_ BitVec 32) List!24459) Bool)

(assert (=> b!1115693 (= res!744948 (arrayNoDuplicates!0 lt!497001 #b00000000000000000000000000000000 Nil!24456))))

(declare-fun mapNonEmpty!43624 () Bool)

(declare-fun mapRes!43624 () Bool)

(declare-fun tp!82869 () Bool)

(declare-fun e!635789 () Bool)

(assert (=> mapNonEmpty!43624 (= mapRes!43624 (and tp!82869 e!635789))))

(declare-datatypes ((V!42289 0))(
  ( (V!42290 (val!13992 Int)) )
))
(declare-datatypes ((ValueCell!13226 0))(
  ( (ValueCellFull!13226 (v!16626 V!42289)) (EmptyCell!13226) )
))
(declare-fun mapValue!43624 () ValueCell!13226)

(declare-fun mapKey!43624 () (_ BitVec 32))

(declare-datatypes ((array!72584 0))(
  ( (array!72585 (arr!34941 (Array (_ BitVec 32) ValueCell!13226)) (size!35478 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72584)

(declare-fun mapRest!43624 () (Array (_ BitVec 32) ValueCell!13226))

(assert (=> mapNonEmpty!43624 (= (arr!34941 _values!996) (store mapRest!43624 mapKey!43624 mapValue!43624))))

(declare-fun b!1115694 () Bool)

(declare-fun res!744944 () Bool)

(assert (=> b!1115694 (=> (not res!744944) (not e!635788))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115694 (= res!744944 (validKeyInArray!0 k!934))))

(declare-fun b!1115695 () Bool)

(declare-fun res!744946 () Bool)

(assert (=> b!1115695 (=> (not res!744946) (not e!635788))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115695 (= res!744946 (and (= (size!35478 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35477 _keys!1208) (size!35478 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43624 () Bool)

(assert (=> mapIsEmpty!43624 mapRes!43624))

(declare-fun b!1115697 () Bool)

(declare-fun e!635785 () Bool)

(declare-fun e!635787 () Bool)

(assert (=> b!1115697 (= e!635785 (and e!635787 mapRes!43624))))

(declare-fun condMapEmpty!43624 () Bool)

(declare-fun mapDefault!43624 () ValueCell!13226)

