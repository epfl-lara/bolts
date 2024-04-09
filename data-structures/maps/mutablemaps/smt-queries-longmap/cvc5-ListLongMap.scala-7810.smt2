; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97640 () Bool)

(assert start!97640)

(declare-fun mapIsEmpty!43570 () Bool)

(declare-fun mapRes!43570 () Bool)

(assert (=> mapIsEmpty!43570 mapRes!43570))

(declare-fun b!1114990 () Bool)

(declare-fun e!635460 () Bool)

(declare-fun e!635463 () Bool)

(assert (=> b!1114990 (= e!635460 e!635463)))

(declare-fun res!744408 () Bool)

(assert (=> b!1114990 (=> (not res!744408) (not e!635463))))

(declare-datatypes ((array!72516 0))(
  ( (array!72517 (arr!34907 (Array (_ BitVec 32) (_ BitVec 64))) (size!35444 (_ BitVec 32))) )
))
(declare-fun lt!496893 () array!72516)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72516 (_ BitVec 32)) Bool)

(assert (=> b!1114990 (= res!744408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496893 mask!1564))))

(declare-fun _keys!1208 () array!72516)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114990 (= lt!496893 (array!72517 (store (arr!34907 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35444 _keys!1208)))))

(declare-fun b!1114991 () Bool)

(declare-fun res!744406 () Bool)

(assert (=> b!1114991 (=> (not res!744406) (not e!635460))))

(assert (=> b!1114991 (= res!744406 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35444 _keys!1208))))))

(declare-fun b!1114992 () Bool)

(declare-fun res!744404 () Bool)

(assert (=> b!1114992 (=> (not res!744404) (not e!635460))))

(declare-datatypes ((List!24446 0))(
  ( (Nil!24443) (Cons!24442 (h!25651 (_ BitVec 64)) (t!34934 List!24446)) )
))
(declare-fun arrayNoDuplicates!0 (array!72516 (_ BitVec 32) List!24446) Bool)

(assert (=> b!1114992 (= res!744404 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24443))))

(declare-fun b!1114993 () Bool)

(declare-fun e!635464 () Bool)

(declare-fun e!635461 () Bool)

(assert (=> b!1114993 (= e!635464 (and e!635461 mapRes!43570))))

(declare-fun condMapEmpty!43570 () Bool)

(declare-datatypes ((V!42241 0))(
  ( (V!42242 (val!13974 Int)) )
))
(declare-datatypes ((ValueCell!13208 0))(
  ( (ValueCellFull!13208 (v!16608 V!42241)) (EmptyCell!13208) )
))
(declare-datatypes ((array!72518 0))(
  ( (array!72519 (arr!34908 (Array (_ BitVec 32) ValueCell!13208)) (size!35445 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72518)

(declare-fun mapDefault!43570 () ValueCell!13208)

