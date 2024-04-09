; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97568 () Bool)

(assert start!97568)

(declare-fun b!1113586 () Bool)

(declare-fun res!743323 () Bool)

(declare-fun e!634816 () Bool)

(assert (=> b!1113586 (=> (not res!743323) (not e!634816))))

(declare-datatypes ((array!72378 0))(
  ( (array!72379 (arr!34838 (Array (_ BitVec 32) (_ BitVec 64))) (size!35375 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72378)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42145 0))(
  ( (V!42146 (val!13938 Int)) )
))
(declare-datatypes ((ValueCell!13172 0))(
  ( (ValueCellFull!13172 (v!16572 V!42145)) (EmptyCell!13172) )
))
(declare-datatypes ((array!72380 0))(
  ( (array!72381 (arr!34839 (Array (_ BitVec 32) ValueCell!13172)) (size!35376 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72380)

(assert (=> b!1113586 (= res!743323 (and (= (size!35376 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35375 _keys!1208) (size!35376 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113588 () Bool)

(declare-fun res!743329 () Bool)

(assert (=> b!1113588 (=> (not res!743329) (not e!634816))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113588 (= res!743329 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35375 _keys!1208))))))

(declare-fun b!1113589 () Bool)

(declare-fun res!743331 () Bool)

(assert (=> b!1113589 (=> (not res!743331) (not e!634816))))

(declare-datatypes ((List!24421 0))(
  ( (Nil!24418) (Cons!24417 (h!25626 (_ BitVec 64)) (t!34909 List!24421)) )
))
(declare-fun arrayNoDuplicates!0 (array!72378 (_ BitVec 32) List!24421) Bool)

(assert (=> b!1113589 (= res!743331 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24418))))

(declare-fun b!1113590 () Bool)

(declare-fun res!743330 () Bool)

(assert (=> b!1113590 (=> (not res!743330) (not e!634816))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113590 (= res!743330 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43462 () Bool)

(declare-fun mapRes!43462 () Bool)

(declare-fun tp!82707 () Bool)

(declare-fun e!634815 () Bool)

(assert (=> mapNonEmpty!43462 (= mapRes!43462 (and tp!82707 e!634815))))

(declare-fun mapKey!43462 () (_ BitVec 32))

(declare-fun mapValue!43462 () ValueCell!13172)

(declare-fun mapRest!43462 () (Array (_ BitVec 32) ValueCell!13172))

(assert (=> mapNonEmpty!43462 (= (arr!34839 _values!996) (store mapRest!43462 mapKey!43462 mapValue!43462))))

(declare-fun b!1113591 () Bool)

(declare-fun res!743322 () Bool)

(declare-fun e!634813 () Bool)

(assert (=> b!1113591 (=> (not res!743322) (not e!634813))))

(declare-fun lt!496676 () array!72378)

(assert (=> b!1113591 (= res!743322 (arrayNoDuplicates!0 lt!496676 #b00000000000000000000000000000000 Nil!24418))))

(declare-fun mapIsEmpty!43462 () Bool)

(assert (=> mapIsEmpty!43462 mapRes!43462))

(declare-fun b!1113592 () Bool)

(declare-fun e!634814 () Bool)

(declare-fun e!634817 () Bool)

(assert (=> b!1113592 (= e!634814 (and e!634817 mapRes!43462))))

(declare-fun condMapEmpty!43462 () Bool)

(declare-fun mapDefault!43462 () ValueCell!13172)

