; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97644 () Bool)

(assert start!97644)

(declare-fun b!1115068 () Bool)

(declare-fun res!744466 () Bool)

(declare-fun e!635499 () Bool)

(assert (=> b!1115068 (=> (not res!744466) (not e!635499))))

(declare-datatypes ((array!72524 0))(
  ( (array!72525 (arr!34911 (Array (_ BitVec 32) (_ BitVec 64))) (size!35448 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72524)

(declare-datatypes ((List!24448 0))(
  ( (Nil!24445) (Cons!24444 (h!25653 (_ BitVec 64)) (t!34936 List!24448)) )
))
(declare-fun arrayNoDuplicates!0 (array!72524 (_ BitVec 32) List!24448) Bool)

(assert (=> b!1115068 (= res!744466 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24445))))

(declare-fun b!1115069 () Bool)

(declare-fun res!744469 () Bool)

(assert (=> b!1115069 (=> (not res!744469) (not e!635499))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72524 (_ BitVec 32)) Bool)

(assert (=> b!1115069 (= res!744469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115070 () Bool)

(declare-fun res!744471 () Bool)

(assert (=> b!1115070 (=> (not res!744471) (not e!635499))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115070 (= res!744471 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35448 _keys!1208))))))

(declare-fun b!1115071 () Bool)

(declare-fun res!744470 () Bool)

(assert (=> b!1115071 (=> (not res!744470) (not e!635499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115071 (= res!744470 (validMask!0 mask!1564))))

(declare-fun b!1115072 () Bool)

(declare-fun res!744468 () Bool)

(declare-fun e!635500 () Bool)

(assert (=> b!1115072 (=> (not res!744468) (not e!635500))))

(declare-fun lt!496905 () array!72524)

(assert (=> b!1115072 (= res!744468 (arrayNoDuplicates!0 lt!496905 #b00000000000000000000000000000000 Nil!24445))))

(declare-fun mapNonEmpty!43576 () Bool)

(declare-fun mapRes!43576 () Bool)

(declare-fun tp!82821 () Bool)

(declare-fun e!635497 () Bool)

(assert (=> mapNonEmpty!43576 (= mapRes!43576 (and tp!82821 e!635497))))

(declare-datatypes ((V!42245 0))(
  ( (V!42246 (val!13976 Int)) )
))
(declare-datatypes ((ValueCell!13210 0))(
  ( (ValueCellFull!13210 (v!16610 V!42245)) (EmptyCell!13210) )
))
(declare-fun mapValue!43576 () ValueCell!13210)

(declare-fun mapRest!43576 () (Array (_ BitVec 32) ValueCell!13210))

(declare-datatypes ((array!72526 0))(
  ( (array!72527 (arr!34912 (Array (_ BitVec 32) ValueCell!13210)) (size!35449 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72526)

(declare-fun mapKey!43576 () (_ BitVec 32))

(assert (=> mapNonEmpty!43576 (= (arr!34912 _values!996) (store mapRest!43576 mapKey!43576 mapValue!43576))))

(declare-fun b!1115073 () Bool)

(declare-fun e!635501 () Bool)

(declare-fun e!635496 () Bool)

(assert (=> b!1115073 (= e!635501 (and e!635496 mapRes!43576))))

(declare-fun condMapEmpty!43576 () Bool)

(declare-fun mapDefault!43576 () ValueCell!13210)

