; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110486 () Bool)

(assert start!110486)

(declare-fun b!1306559 () Bool)

(declare-fun res!867442 () Bool)

(declare-fun e!745475 () Bool)

(assert (=> b!1306559 (=> (not res!867442) (not e!745475))))

(declare-datatypes ((array!87021 0))(
  ( (array!87022 (arr!41986 (Array (_ BitVec 32) (_ BitVec 64))) (size!42537 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87021)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87021 (_ BitVec 32)) Bool)

(assert (=> b!1306559 (= res!867442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306560 () Bool)

(assert (=> b!1306560 (= e!745475 false)))

(declare-fun lt!584887 () Bool)

(declare-datatypes ((List!29985 0))(
  ( (Nil!29982) (Cons!29981 (h!31190 (_ BitVec 64)) (t!43598 List!29985)) )
))
(declare-fun arrayNoDuplicates!0 (array!87021 (_ BitVec 32) List!29985) Bool)

(assert (=> b!1306560 (= lt!584887 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29982))))

(declare-fun res!867443 () Bool)

(assert (=> start!110486 (=> (not res!867443) (not e!745475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110486 (= res!867443 (validMask!0 mask!2040))))

(assert (=> start!110486 e!745475))

(assert (=> start!110486 true))

(declare-datatypes ((V!51789 0))(
  ( (V!51790 (val!17582 Int)) )
))
(declare-datatypes ((ValueCell!16609 0))(
  ( (ValueCellFull!16609 (v!20207 V!51789)) (EmptyCell!16609) )
))
(declare-datatypes ((array!87023 0))(
  ( (array!87024 (arr!41987 (Array (_ BitVec 32) ValueCell!16609)) (size!42538 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87023)

(declare-fun e!745474 () Bool)

(declare-fun array_inv!31743 (array!87023) Bool)

(assert (=> start!110486 (and (array_inv!31743 _values!1354) e!745474)))

(declare-fun array_inv!31744 (array!87021) Bool)

(assert (=> start!110486 (array_inv!31744 _keys!1628)))

(declare-fun b!1306561 () Bool)

(declare-fun res!867441 () Bool)

(assert (=> b!1306561 (=> (not res!867441) (not e!745475))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306561 (= res!867441 (and (= (size!42538 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42537 _keys!1628) (size!42538 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54151 () Bool)

(declare-fun mapRes!54151 () Bool)

(assert (=> mapIsEmpty!54151 mapRes!54151))

(declare-fun b!1306562 () Bool)

(declare-fun e!745472 () Bool)

(declare-fun tp_is_empty!35015 () Bool)

(assert (=> b!1306562 (= e!745472 tp_is_empty!35015)))

(declare-fun b!1306563 () Bool)

(declare-fun e!745471 () Bool)

(assert (=> b!1306563 (= e!745471 tp_is_empty!35015)))

(declare-fun b!1306564 () Bool)

(assert (=> b!1306564 (= e!745474 (and e!745471 mapRes!54151))))

(declare-fun condMapEmpty!54151 () Bool)

(declare-fun mapDefault!54151 () ValueCell!16609)

