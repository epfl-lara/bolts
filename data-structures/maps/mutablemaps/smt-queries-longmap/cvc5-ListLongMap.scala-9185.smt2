; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110494 () Bool)

(assert start!110494)

(declare-fun b!1306631 () Bool)

(declare-fun res!867477 () Bool)

(declare-fun e!745533 () Bool)

(assert (=> b!1306631 (=> (not res!867477) (not e!745533))))

(declare-datatypes ((array!87033 0))(
  ( (array!87034 (arr!41992 (Array (_ BitVec 32) (_ BitVec 64))) (size!42543 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87033)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87033 (_ BitVec 32)) Bool)

(assert (=> b!1306631 (= res!867477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306632 () Bool)

(declare-fun e!745535 () Bool)

(declare-fun tp_is_empty!35023 () Bool)

(assert (=> b!1306632 (= e!745535 tp_is_empty!35023)))

(declare-fun b!1306633 () Bool)

(assert (=> b!1306633 (= e!745533 false)))

(declare-fun lt!584899 () Bool)

(declare-datatypes ((List!29987 0))(
  ( (Nil!29984) (Cons!29983 (h!31192 (_ BitVec 64)) (t!43600 List!29987)) )
))
(declare-fun arrayNoDuplicates!0 (array!87033 (_ BitVec 32) List!29987) Bool)

(assert (=> b!1306633 (= lt!584899 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29984))))

(declare-fun b!1306634 () Bool)

(declare-fun e!745532 () Bool)

(assert (=> b!1306634 (= e!745532 tp_is_empty!35023)))

(declare-fun res!867479 () Bool)

(assert (=> start!110494 (=> (not res!867479) (not e!745533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110494 (= res!867479 (validMask!0 mask!2040))))

(assert (=> start!110494 e!745533))

(assert (=> start!110494 true))

(declare-datatypes ((V!51801 0))(
  ( (V!51802 (val!17586 Int)) )
))
(declare-datatypes ((ValueCell!16613 0))(
  ( (ValueCellFull!16613 (v!20211 V!51801)) (EmptyCell!16613) )
))
(declare-datatypes ((array!87035 0))(
  ( (array!87036 (arr!41993 (Array (_ BitVec 32) ValueCell!16613)) (size!42544 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87035)

(declare-fun e!745534 () Bool)

(declare-fun array_inv!31747 (array!87035) Bool)

(assert (=> start!110494 (and (array_inv!31747 _values!1354) e!745534)))

(declare-fun array_inv!31748 (array!87033) Bool)

(assert (=> start!110494 (array_inv!31748 _keys!1628)))

(declare-fun mapNonEmpty!54163 () Bool)

(declare-fun mapRes!54163 () Bool)

(declare-fun tp!103244 () Bool)

(assert (=> mapNonEmpty!54163 (= mapRes!54163 (and tp!103244 e!745535))))

(declare-fun mapRest!54163 () (Array (_ BitVec 32) ValueCell!16613))

(declare-fun mapValue!54163 () ValueCell!16613)

(declare-fun mapKey!54163 () (_ BitVec 32))

(assert (=> mapNonEmpty!54163 (= (arr!41993 _values!1354) (store mapRest!54163 mapKey!54163 mapValue!54163))))

(declare-fun b!1306635 () Bool)

(declare-fun res!867478 () Bool)

(assert (=> b!1306635 (=> (not res!867478) (not e!745533))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306635 (= res!867478 (and (= (size!42544 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42543 _keys!1628) (size!42544 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306636 () Bool)

(assert (=> b!1306636 (= e!745534 (and e!745532 mapRes!54163))))

(declare-fun condMapEmpty!54163 () Bool)

(declare-fun mapDefault!54163 () ValueCell!16613)

