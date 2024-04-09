; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110474 () Bool)

(assert start!110474)

(declare-fun b!1306451 () Bool)

(declare-fun res!867387 () Bool)

(declare-fun e!745385 () Bool)

(assert (=> b!1306451 (=> (not res!867387) (not e!745385))))

(declare-datatypes ((array!86997 0))(
  ( (array!86998 (arr!41974 (Array (_ BitVec 32) (_ BitVec 64))) (size!42525 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86997)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86997 (_ BitVec 32)) Bool)

(assert (=> b!1306451 (= res!867387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306452 () Bool)

(assert (=> b!1306452 (= e!745385 false)))

(declare-fun lt!584869 () Bool)

(declare-datatypes ((List!29980 0))(
  ( (Nil!29977) (Cons!29976 (h!31185 (_ BitVec 64)) (t!43593 List!29980)) )
))
(declare-fun arrayNoDuplicates!0 (array!86997 (_ BitVec 32) List!29980) Bool)

(assert (=> b!1306452 (= lt!584869 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29977))))

(declare-fun b!1306453 () Bool)

(declare-fun e!745382 () Bool)

(declare-fun tp_is_empty!35003 () Bool)

(assert (=> b!1306453 (= e!745382 tp_is_empty!35003)))

(declare-fun mapIsEmpty!54133 () Bool)

(declare-fun mapRes!54133 () Bool)

(assert (=> mapIsEmpty!54133 mapRes!54133))

(declare-fun b!1306454 () Bool)

(declare-fun res!867388 () Bool)

(assert (=> b!1306454 (=> (not res!867388) (not e!745385))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((V!51773 0))(
  ( (V!51774 (val!17576 Int)) )
))
(declare-datatypes ((ValueCell!16603 0))(
  ( (ValueCellFull!16603 (v!20201 V!51773)) (EmptyCell!16603) )
))
(declare-datatypes ((array!86999 0))(
  ( (array!87000 (arr!41975 (Array (_ BitVec 32) ValueCell!16603)) (size!42526 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86999)

(assert (=> b!1306454 (= res!867388 (and (= (size!42526 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42525 _keys!1628) (size!42526 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306455 () Bool)

(declare-fun e!745384 () Bool)

(declare-fun e!745383 () Bool)

(assert (=> b!1306455 (= e!745384 (and e!745383 mapRes!54133))))

(declare-fun condMapEmpty!54133 () Bool)

(declare-fun mapDefault!54133 () ValueCell!16603)

