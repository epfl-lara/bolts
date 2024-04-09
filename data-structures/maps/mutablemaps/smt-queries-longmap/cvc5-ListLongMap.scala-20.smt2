; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!542 () Bool)

(assert start!542)

(declare-fun b!3213 () Bool)

(declare-fun res!5067 () Bool)

(declare-fun e!1460 () Bool)

(assert (=> b!3213 (=> (not res!5067) (not e!1460))))

(declare-datatypes ((array!141 0))(
  ( (array!142 (arr!64 (Array (_ BitVec 32) (_ BitVec 64))) (size!126 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!141)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!141 (_ BitVec 32)) Bool)

(assert (=> b!3213 (= res!5067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3214 () Bool)

(assert (=> b!3214 (= e!1460 false)))

(declare-fun lt!438 () Bool)

(declare-datatypes ((List!45 0))(
  ( (Nil!42) (Cons!41 (h!607 (_ BitVec 64)) (t!2172 List!45)) )
))
(declare-fun arrayNoDuplicates!0 (array!141 (_ BitVec 32) List!45) Bool)

(assert (=> b!3214 (= lt!438 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!42))))

(declare-fun mapNonEmpty!110 () Bool)

(declare-fun mapRes!110 () Bool)

(declare-fun tp!350 () Bool)

(declare-fun e!1462 () Bool)

(assert (=> mapNonEmpty!110 (= mapRes!110 (and tp!350 e!1462))))

(declare-datatypes ((V!315 0))(
  ( (V!316 (val!57 Int)) )
))
(declare-datatypes ((ValueCell!35 0))(
  ( (ValueCellFull!35 (v!1144 V!315)) (EmptyCell!35) )
))
(declare-fun mapValue!110 () ValueCell!35)

(declare-fun mapKey!110 () (_ BitVec 32))

(declare-datatypes ((array!143 0))(
  ( (array!144 (arr!65 (Array (_ BitVec 32) ValueCell!35)) (size!127 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!143)

(declare-fun mapRest!110 () (Array (_ BitVec 32) ValueCell!35))

(assert (=> mapNonEmpty!110 (= (arr!65 _values!1492) (store mapRest!110 mapKey!110 mapValue!110))))

(declare-fun mapIsEmpty!110 () Bool)

(assert (=> mapIsEmpty!110 mapRes!110))

(declare-fun res!5068 () Bool)

(assert (=> start!542 (=> (not res!5068) (not e!1460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!542 (= res!5068 (validMask!0 mask!2250))))

(assert (=> start!542 e!1460))

(assert (=> start!542 true))

(declare-fun e!1461 () Bool)

(declare-fun array_inv!43 (array!143) Bool)

(assert (=> start!542 (and (array_inv!43 _values!1492) e!1461)))

(declare-fun array_inv!44 (array!141) Bool)

(assert (=> start!542 (array_inv!44 _keys!1806)))

(declare-fun b!3215 () Bool)

(declare-fun res!5066 () Bool)

(assert (=> b!3215 (=> (not res!5066) (not e!1460))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3215 (= res!5066 (and (= (size!127 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!126 _keys!1806) (size!127 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3216 () Bool)

(declare-fun e!1459 () Bool)

(assert (=> b!3216 (= e!1461 (and e!1459 mapRes!110))))

(declare-fun condMapEmpty!110 () Bool)

(declare-fun mapDefault!110 () ValueCell!35)

