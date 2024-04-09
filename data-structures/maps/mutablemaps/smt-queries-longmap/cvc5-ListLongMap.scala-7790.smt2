; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97520 () Bool)

(assert start!97520)

(declare-fun b!1112650 () Bool)

(declare-fun res!742605 () Bool)

(declare-fun e!634385 () Bool)

(assert (=> b!1112650 (=> (not res!742605) (not e!634385))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72286 0))(
  ( (array!72287 (arr!34792 (Array (_ BitVec 32) (_ BitVec 64))) (size!35329 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72286)

(assert (=> b!1112650 (= res!742605 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35329 _keys!1208))))))

(declare-fun mapNonEmpty!43390 () Bool)

(declare-fun mapRes!43390 () Bool)

(declare-fun tp!82635 () Bool)

(declare-fun e!634383 () Bool)

(assert (=> mapNonEmpty!43390 (= mapRes!43390 (and tp!82635 e!634383))))

(declare-datatypes ((V!42081 0))(
  ( (V!42082 (val!13914 Int)) )
))
(declare-datatypes ((ValueCell!13148 0))(
  ( (ValueCellFull!13148 (v!16548 V!42081)) (EmptyCell!13148) )
))
(declare-fun mapRest!43390 () (Array (_ BitVec 32) ValueCell!13148))

(declare-fun mapKey!43390 () (_ BitVec 32))

(declare-datatypes ((array!72288 0))(
  ( (array!72289 (arr!34793 (Array (_ BitVec 32) ValueCell!13148)) (size!35330 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72288)

(declare-fun mapValue!43390 () ValueCell!13148)

(assert (=> mapNonEmpty!43390 (= (arr!34793 _values!996) (store mapRest!43390 mapKey!43390 mapValue!43390))))

(declare-fun b!1112651 () Bool)

(declare-fun e!634380 () Bool)

(assert (=> b!1112651 (= e!634385 e!634380)))

(declare-fun res!742607 () Bool)

(assert (=> b!1112651 (=> (not res!742607) (not e!634380))))

(declare-fun lt!496533 () array!72286)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72286 (_ BitVec 32)) Bool)

(assert (=> b!1112651 (= res!742607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496533 mask!1564))))

(assert (=> b!1112651 (= lt!496533 (array!72287 (store (arr!34792 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35329 _keys!1208)))))

(declare-fun b!1112652 () Bool)

(declare-fun e!634384 () Bool)

(declare-fun tp_is_empty!27715 () Bool)

(assert (=> b!1112652 (= e!634384 tp_is_empty!27715)))

(declare-fun b!1112653 () Bool)

(declare-fun res!742611 () Bool)

(assert (=> b!1112653 (=> (not res!742611) (not e!634380))))

(declare-datatypes ((List!24404 0))(
  ( (Nil!24401) (Cons!24400 (h!25609 (_ BitVec 64)) (t!34892 List!24404)) )
))
(declare-fun arrayNoDuplicates!0 (array!72286 (_ BitVec 32) List!24404) Bool)

(assert (=> b!1112653 (= res!742611 (arrayNoDuplicates!0 lt!496533 #b00000000000000000000000000000000 Nil!24401))))

(declare-fun b!1112654 () Bool)

(declare-fun e!634382 () Bool)

(assert (=> b!1112654 (= e!634382 (and e!634384 mapRes!43390))))

(declare-fun condMapEmpty!43390 () Bool)

(declare-fun mapDefault!43390 () ValueCell!13148)

