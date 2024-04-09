; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3776 () Bool)

(assert start!3776)

(declare-fun mapIsEmpty!1165 () Bool)

(declare-fun mapRes!1165 () Bool)

(assert (=> mapIsEmpty!1165 mapRes!1165))

(declare-fun b!26425 () Bool)

(declare-fun e!17204 () Bool)

(declare-fun tp_is_empty!1099 () Bool)

(assert (=> b!26425 (= e!17204 tp_is_empty!1099)))

(declare-fun b!26426 () Bool)

(declare-fun e!17205 () Bool)

(assert (=> b!26426 (= e!17205 tp_is_empty!1099)))

(declare-fun b!26427 () Bool)

(declare-fun e!17206 () Bool)

(assert (=> b!26427 (= e!17206 false)))

(declare-fun lt!10368 () Bool)

(declare-datatypes ((array!1429 0))(
  ( (array!1430 (arr!672 (Array (_ BitVec 32) (_ BitVec 64))) (size!773 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1429)

(declare-datatypes ((List!586 0))(
  ( (Nil!583) (Cons!582 (h!1149 (_ BitVec 64)) (t!3275 List!586)) )
))
(declare-fun arrayNoDuplicates!0 (array!1429 (_ BitVec 32) List!586) Bool)

(assert (=> b!26427 (= lt!10368 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!583))))

(declare-fun b!26428 () Bool)

(declare-fun res!15676 () Bool)

(assert (=> b!26428 (=> (not res!15676) (not e!17206))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1429 (_ BitVec 32)) Bool)

(assert (=> b!26428 (= res!15676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1165 () Bool)

(declare-fun tp!3685 () Bool)

(assert (=> mapNonEmpty!1165 (= mapRes!1165 (and tp!3685 e!17205))))

(declare-fun mapKey!1165 () (_ BitVec 32))

(declare-datatypes ((V!1291 0))(
  ( (V!1292 (val!576 Int)) )
))
(declare-datatypes ((ValueCell!350 0))(
  ( (ValueCellFull!350 (v!1662 V!1291)) (EmptyCell!350) )
))
(declare-fun mapRest!1165 () (Array (_ BitVec 32) ValueCell!350))

(declare-fun mapValue!1165 () ValueCell!350)

(declare-datatypes ((array!1431 0))(
  ( (array!1432 (arr!673 (Array (_ BitVec 32) ValueCell!350)) (size!774 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1431)

(assert (=> mapNonEmpty!1165 (= (arr!673 _values!1501) (store mapRest!1165 mapKey!1165 mapValue!1165))))

(declare-fun res!15674 () Bool)

(assert (=> start!3776 (=> (not res!15674) (not e!17206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3776 (= res!15674 (validMask!0 mask!2294))))

(assert (=> start!3776 e!17206))

(assert (=> start!3776 true))

(declare-fun e!17202 () Bool)

(declare-fun array_inv!463 (array!1431) Bool)

(assert (=> start!3776 (and (array_inv!463 _values!1501) e!17202)))

(declare-fun array_inv!464 (array!1429) Bool)

(assert (=> start!3776 (array_inv!464 _keys!1833)))

(declare-fun b!26429 () Bool)

(assert (=> b!26429 (= e!17202 (and e!17204 mapRes!1165))))

(declare-fun condMapEmpty!1165 () Bool)

(declare-fun mapDefault!1165 () ValueCell!350)

