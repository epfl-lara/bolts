; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108370 () Bool)

(assert start!108370)

(declare-fun res!849491 () Bool)

(declare-fun e!730448 () Bool)

(assert (=> start!108370 (=> (not res!849491) (not e!730448))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108370 (= res!849491 (validMask!0 mask!2175))))

(assert (=> start!108370 e!730448))

(assert (=> start!108370 true))

(declare-datatypes ((V!49797 0))(
  ( (V!49798 (val!16835 Int)) )
))
(declare-datatypes ((ValueCell!15862 0))(
  ( (ValueCellFull!15862 (v!19433 V!49797)) (EmptyCell!15862) )
))
(declare-datatypes ((array!84081 0))(
  ( (array!84082 (arr!40540 (Array (_ BitVec 32) ValueCell!15862)) (size!41091 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84081)

(declare-fun e!730449 () Bool)

(declare-fun array_inv!30769 (array!84081) Bool)

(assert (=> start!108370 (and (array_inv!30769 _values!1445) e!730449)))

(declare-datatypes ((array!84083 0))(
  ( (array!84084 (arr!40541 (Array (_ BitVec 32) (_ BitVec 64))) (size!41092 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84083)

(declare-fun array_inv!30770 (array!84083) Bool)

(assert (=> start!108370 (array_inv!30770 _keys!1741)))

(declare-fun b!1278579 () Bool)

(declare-fun e!730447 () Bool)

(declare-fun tp_is_empty!33521 () Bool)

(assert (=> b!1278579 (= e!730447 tp_is_empty!33521)))

(declare-fun b!1278580 () Bool)

(assert (=> b!1278580 (= e!730448 false)))

(declare-fun lt!575848 () Bool)

(declare-datatypes ((List!28909 0))(
  ( (Nil!28906) (Cons!28905 (h!30114 (_ BitVec 64)) (t!42456 List!28909)) )
))
(declare-fun arrayNoDuplicates!0 (array!84083 (_ BitVec 32) List!28909) Bool)

(assert (=> b!1278580 (= lt!575848 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28906))))

(declare-fun b!1278581 () Bool)

(declare-fun res!849490 () Bool)

(assert (=> b!1278581 (=> (not res!849490) (not e!730448))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278581 (= res!849490 (and (= (size!41091 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41092 _keys!1741) (size!41091 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278582 () Bool)

(declare-fun res!849489 () Bool)

(assert (=> b!1278582 (=> (not res!849489) (not e!730448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84083 (_ BitVec 32)) Bool)

(assert (=> b!1278582 (= res!849489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278583 () Bool)

(declare-fun e!730450 () Bool)

(assert (=> b!1278583 (= e!730450 tp_is_empty!33521)))

(declare-fun mapNonEmpty!51833 () Bool)

(declare-fun mapRes!51833 () Bool)

(declare-fun tp!98808 () Bool)

(assert (=> mapNonEmpty!51833 (= mapRes!51833 (and tp!98808 e!730447))))

(declare-fun mapRest!51833 () (Array (_ BitVec 32) ValueCell!15862))

(declare-fun mapValue!51833 () ValueCell!15862)

(declare-fun mapKey!51833 () (_ BitVec 32))

(assert (=> mapNonEmpty!51833 (= (arr!40540 _values!1445) (store mapRest!51833 mapKey!51833 mapValue!51833))))

(declare-fun mapIsEmpty!51833 () Bool)

(assert (=> mapIsEmpty!51833 mapRes!51833))

(declare-fun b!1278584 () Bool)

(assert (=> b!1278584 (= e!730449 (and e!730450 mapRes!51833))))

(declare-fun condMapEmpty!51833 () Bool)

(declare-fun mapDefault!51833 () ValueCell!15862)

