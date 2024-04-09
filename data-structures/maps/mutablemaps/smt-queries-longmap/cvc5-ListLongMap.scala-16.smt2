; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!496 () Bool)

(assert start!496)

(declare-fun b!2903 () Bool)

(declare-fun res!4892 () Bool)

(declare-fun e!1223 () Bool)

(assert (=> b!2903 (=> (not res!4892) (not e!1223))))

(declare-datatypes ((array!91 0))(
  ( (array!92 (arr!41 (Array (_ BitVec 32) (_ BitVec 64))) (size!103 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!91)

(assert (=> b!2903 (= res!4892 (and (bvsle #b00000000000000000000000000000000 (size!103 _keys!1806)) (bvslt (size!103 _keys!1806) #b01111111111111111111111111111111)))))

(declare-fun b!2904 () Bool)

(declare-fun e!1222 () Bool)

(declare-fun tp_is_empty!79 () Bool)

(assert (=> b!2904 (= e!1222 tp_is_empty!79)))

(declare-fun b!2905 () Bool)

(declare-fun res!4894 () Bool)

(assert (=> b!2905 (=> (not res!4894) (not e!1223))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!283 0))(
  ( (V!284 (val!45 Int)) )
))
(declare-datatypes ((ValueCell!23 0))(
  ( (ValueCellFull!23 (v!1131 V!283)) (EmptyCell!23) )
))
(declare-datatypes ((array!93 0))(
  ( (array!94 (arr!42 (Array (_ BitVec 32) ValueCell!23)) (size!104 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!93)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!2905 (= res!4894 (and (= (size!104 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!103 _keys!1806) (size!104 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!68 () Bool)

(declare-fun mapRes!68 () Bool)

(declare-fun tp!308 () Bool)

(assert (=> mapNonEmpty!68 (= mapRes!68 (and tp!308 e!1222))))

(declare-fun mapValue!68 () ValueCell!23)

(declare-fun mapRest!68 () (Array (_ BitVec 32) ValueCell!23))

(declare-fun mapKey!68 () (_ BitVec 32))

(assert (=> mapNonEmpty!68 (= (arr!42 _values!1492) (store mapRest!68 mapKey!68 mapValue!68))))

(declare-fun res!4895 () Bool)

(assert (=> start!496 (=> (not res!4895) (not e!1223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!496 (= res!4895 (validMask!0 mask!2250))))

(assert (=> start!496 e!1223))

(assert (=> start!496 true))

(declare-fun e!1224 () Bool)

(declare-fun array_inv!23 (array!93) Bool)

(assert (=> start!496 (and (array_inv!23 _values!1492) e!1224)))

(declare-fun array_inv!24 (array!91) Bool)

(assert (=> start!496 (array_inv!24 _keys!1806)))

(declare-fun b!2906 () Bool)

(declare-fun res!4893 () Bool)

(assert (=> b!2906 (=> (not res!4893) (not e!1223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91 (_ BitVec 32)) Bool)

(assert (=> b!2906 (= res!4893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!68 () Bool)

(assert (=> mapIsEmpty!68 mapRes!68))

(declare-fun b!2907 () Bool)

(declare-fun e!1221 () Bool)

(assert (=> b!2907 (= e!1224 (and e!1221 mapRes!68))))

(declare-fun condMapEmpty!68 () Bool)

(declare-fun mapDefault!68 () ValueCell!23)

