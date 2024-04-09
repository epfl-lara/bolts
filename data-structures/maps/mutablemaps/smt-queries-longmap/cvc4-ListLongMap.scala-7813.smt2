; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97662 () Bool)

(assert start!97662)

(declare-fun mapNonEmpty!43603 () Bool)

(declare-fun mapRes!43603 () Bool)

(declare-fun tp!82848 () Bool)

(declare-fun e!635661 () Bool)

(assert (=> mapNonEmpty!43603 (= mapRes!43603 (and tp!82848 e!635661))))

(declare-fun mapKey!43603 () (_ BitVec 32))

(declare-datatypes ((V!42269 0))(
  ( (V!42270 (val!13985 Int)) )
))
(declare-datatypes ((ValueCell!13219 0))(
  ( (ValueCellFull!13219 (v!16619 V!42269)) (EmptyCell!13219) )
))
(declare-fun mapRest!43603 () (Array (_ BitVec 32) ValueCell!13219))

(declare-datatypes ((array!72556 0))(
  ( (array!72557 (arr!34927 (Array (_ BitVec 32) ValueCell!13219)) (size!35464 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72556)

(declare-fun mapValue!43603 () ValueCell!13219)

(assert (=> mapNonEmpty!43603 (= (arr!34927 _values!996) (store mapRest!43603 mapKey!43603 mapValue!43603))))

(declare-fun b!1115419 () Bool)

(declare-fun res!744740 () Bool)

(declare-fun e!635662 () Bool)

(assert (=> b!1115419 (=> (not res!744740) (not e!635662))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115419 (= res!744740 (validKeyInArray!0 k!934))))

(declare-fun b!1115420 () Bool)

(declare-fun e!635659 () Bool)

(declare-fun e!635658 () Bool)

(assert (=> b!1115420 (= e!635659 (and e!635658 mapRes!43603))))

(declare-fun condMapEmpty!43603 () Bool)

(declare-fun mapDefault!43603 () ValueCell!13219)

