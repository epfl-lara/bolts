; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110476 () Bool)

(assert start!110476)

(declare-fun b!1306469 () Bool)

(declare-fun res!867397 () Bool)

(declare-fun e!745400 () Bool)

(assert (=> b!1306469 (=> (not res!867397) (not e!745400))))

(declare-datatypes ((array!87001 0))(
  ( (array!87002 (arr!41976 (Array (_ BitVec 32) (_ BitVec 64))) (size!42527 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87001)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87001 (_ BitVec 32)) Bool)

(assert (=> b!1306469 (= res!867397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54136 () Bool)

(declare-fun mapRes!54136 () Bool)

(assert (=> mapIsEmpty!54136 mapRes!54136))

(declare-fun b!1306470 () Bool)

(declare-fun e!745397 () Bool)

(declare-fun tp_is_empty!35005 () Bool)

(assert (=> b!1306470 (= e!745397 tp_is_empty!35005)))

(declare-fun b!1306471 () Bool)

(declare-fun e!745396 () Bool)

(assert (=> b!1306471 (= e!745396 (and e!745397 mapRes!54136))))

(declare-fun condMapEmpty!54136 () Bool)

(declare-datatypes ((V!51777 0))(
  ( (V!51778 (val!17577 Int)) )
))
(declare-datatypes ((ValueCell!16604 0))(
  ( (ValueCellFull!16604 (v!20202 V!51777)) (EmptyCell!16604) )
))
(declare-datatypes ((array!87003 0))(
  ( (array!87004 (arr!41977 (Array (_ BitVec 32) ValueCell!16604)) (size!42528 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87003)

(declare-fun mapDefault!54136 () ValueCell!16604)

