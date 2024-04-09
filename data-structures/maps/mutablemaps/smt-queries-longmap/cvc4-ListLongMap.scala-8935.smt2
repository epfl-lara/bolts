; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108376 () Bool)

(assert start!108376)

(declare-fun mapIsEmpty!51842 () Bool)

(declare-fun mapRes!51842 () Bool)

(assert (=> mapIsEmpty!51842 mapRes!51842))

(declare-fun b!1278633 () Bool)

(declare-fun e!730493 () Bool)

(assert (=> b!1278633 (= e!730493 false)))

(declare-fun lt!575857 () Bool)

(declare-datatypes ((array!84093 0))(
  ( (array!84094 (arr!40546 (Array (_ BitVec 32) (_ BitVec 64))) (size!41097 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84093)

(declare-datatypes ((List!28911 0))(
  ( (Nil!28908) (Cons!28907 (h!30116 (_ BitVec 64)) (t!42458 List!28911)) )
))
(declare-fun arrayNoDuplicates!0 (array!84093 (_ BitVec 32) List!28911) Bool)

(assert (=> b!1278633 (= lt!575857 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28908))))

(declare-fun b!1278634 () Bool)

(declare-fun res!849518 () Bool)

(assert (=> b!1278634 (=> (not res!849518) (not e!730493))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((V!49805 0))(
  ( (V!49806 (val!16838 Int)) )
))
(declare-datatypes ((ValueCell!15865 0))(
  ( (ValueCellFull!15865 (v!19436 V!49805)) (EmptyCell!15865) )
))
(declare-datatypes ((array!84095 0))(
  ( (array!84096 (arr!40547 (Array (_ BitVec 32) ValueCell!15865)) (size!41098 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84095)

(assert (=> b!1278634 (= res!849518 (and (= (size!41098 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41097 _keys!1741) (size!41098 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849517 () Bool)

(assert (=> start!108376 (=> (not res!849517) (not e!730493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108376 (= res!849517 (validMask!0 mask!2175))))

(assert (=> start!108376 e!730493))

(assert (=> start!108376 true))

(declare-fun e!730492 () Bool)

(declare-fun array_inv!30775 (array!84095) Bool)

(assert (=> start!108376 (and (array_inv!30775 _values!1445) e!730492)))

(declare-fun array_inv!30776 (array!84093) Bool)

(assert (=> start!108376 (array_inv!30776 _keys!1741)))

(declare-fun mapNonEmpty!51842 () Bool)

(declare-fun tp!98817 () Bool)

(declare-fun e!730491 () Bool)

(assert (=> mapNonEmpty!51842 (= mapRes!51842 (and tp!98817 e!730491))))

(declare-fun mapRest!51842 () (Array (_ BitVec 32) ValueCell!15865))

(declare-fun mapValue!51842 () ValueCell!15865)

(declare-fun mapKey!51842 () (_ BitVec 32))

(assert (=> mapNonEmpty!51842 (= (arr!40547 _values!1445) (store mapRest!51842 mapKey!51842 mapValue!51842))))

(declare-fun b!1278635 () Bool)

(declare-fun e!730495 () Bool)

(declare-fun tp_is_empty!33527 () Bool)

(assert (=> b!1278635 (= e!730495 tp_is_empty!33527)))

(declare-fun b!1278636 () Bool)

(declare-fun res!849516 () Bool)

(assert (=> b!1278636 (=> (not res!849516) (not e!730493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84093 (_ BitVec 32)) Bool)

(assert (=> b!1278636 (= res!849516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278637 () Bool)

(assert (=> b!1278637 (= e!730492 (and e!730495 mapRes!51842))))

(declare-fun condMapEmpty!51842 () Bool)

(declare-fun mapDefault!51842 () ValueCell!15865)

