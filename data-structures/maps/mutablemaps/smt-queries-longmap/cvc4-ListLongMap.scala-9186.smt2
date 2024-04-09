; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110504 () Bool)

(assert start!110504)

(declare-fun mapIsEmpty!54178 () Bool)

(declare-fun mapRes!54178 () Bool)

(assert (=> mapIsEmpty!54178 mapRes!54178))

(declare-fun res!867523 () Bool)

(declare-fun e!745607 () Bool)

(assert (=> start!110504 (=> (not res!867523) (not e!745607))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110504 (= res!867523 (validMask!0 mask!2040))))

(assert (=> start!110504 e!745607))

(assert (=> start!110504 true))

(declare-datatypes ((V!51813 0))(
  ( (V!51814 (val!17591 Int)) )
))
(declare-datatypes ((ValueCell!16618 0))(
  ( (ValueCellFull!16618 (v!20216 V!51813)) (EmptyCell!16618) )
))
(declare-datatypes ((array!87051 0))(
  ( (array!87052 (arr!42001 (Array (_ BitVec 32) ValueCell!16618)) (size!42552 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87051)

(declare-fun e!745608 () Bool)

(declare-fun array_inv!31753 (array!87051) Bool)

(assert (=> start!110504 (and (array_inv!31753 _values!1354) e!745608)))

(declare-datatypes ((array!87053 0))(
  ( (array!87054 (arr!42002 (Array (_ BitVec 32) (_ BitVec 64))) (size!42553 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87053)

(declare-fun array_inv!31754 (array!87053) Bool)

(assert (=> start!110504 (array_inv!31754 _keys!1628)))

(declare-fun b!1306721 () Bool)

(assert (=> b!1306721 (= e!745607 false)))

(declare-fun lt!584914 () Bool)

(declare-datatypes ((List!29990 0))(
  ( (Nil!29987) (Cons!29986 (h!31195 (_ BitVec 64)) (t!43603 List!29990)) )
))
(declare-fun arrayNoDuplicates!0 (array!87053 (_ BitVec 32) List!29990) Bool)

(assert (=> b!1306721 (= lt!584914 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29987))))

(declare-fun b!1306722 () Bool)

(declare-fun res!867522 () Bool)

(assert (=> b!1306722 (=> (not res!867522) (not e!745607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87053 (_ BitVec 32)) Bool)

(assert (=> b!1306722 (= res!867522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306723 () Bool)

(declare-fun e!745609 () Bool)

(assert (=> b!1306723 (= e!745608 (and e!745609 mapRes!54178))))

(declare-fun condMapEmpty!54178 () Bool)

(declare-fun mapDefault!54178 () ValueCell!16618)

