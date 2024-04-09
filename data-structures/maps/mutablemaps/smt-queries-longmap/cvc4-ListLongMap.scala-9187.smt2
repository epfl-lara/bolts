; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110510 () Bool)

(assert start!110510)

(declare-fun res!867551 () Bool)

(declare-fun e!745654 () Bool)

(assert (=> start!110510 (=> (not res!867551) (not e!745654))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110510 (= res!867551 (validMask!0 mask!2040))))

(assert (=> start!110510 e!745654))

(assert (=> start!110510 true))

(declare-datatypes ((V!51821 0))(
  ( (V!51822 (val!17594 Int)) )
))
(declare-datatypes ((ValueCell!16621 0))(
  ( (ValueCellFull!16621 (v!20219 V!51821)) (EmptyCell!16621) )
))
(declare-datatypes ((array!87063 0))(
  ( (array!87064 (arr!42007 (Array (_ BitVec 32) ValueCell!16621)) (size!42558 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87063)

(declare-fun e!745653 () Bool)

(declare-fun array_inv!31759 (array!87063) Bool)

(assert (=> start!110510 (and (array_inv!31759 _values!1354) e!745653)))

(declare-datatypes ((array!87065 0))(
  ( (array!87066 (arr!42008 (Array (_ BitVec 32) (_ BitVec 64))) (size!42559 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87065)

(declare-fun array_inv!31760 (array!87065) Bool)

(assert (=> start!110510 (array_inv!31760 _keys!1628)))

(declare-fun mapNonEmpty!54187 () Bool)

(declare-fun mapRes!54187 () Bool)

(declare-fun tp!103268 () Bool)

(declare-fun e!745651 () Bool)

(assert (=> mapNonEmpty!54187 (= mapRes!54187 (and tp!103268 e!745651))))

(declare-fun mapValue!54187 () ValueCell!16621)

(declare-fun mapKey!54187 () (_ BitVec 32))

(declare-fun mapRest!54187 () (Array (_ BitVec 32) ValueCell!16621))

(assert (=> mapNonEmpty!54187 (= (arr!42007 _values!1354) (store mapRest!54187 mapKey!54187 mapValue!54187))))

(declare-fun b!1306775 () Bool)

(declare-fun e!745652 () Bool)

(assert (=> b!1306775 (= e!745653 (and e!745652 mapRes!54187))))

(declare-fun condMapEmpty!54187 () Bool)

(declare-fun mapDefault!54187 () ValueCell!16621)

