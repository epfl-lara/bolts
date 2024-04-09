; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108384 () Bool)

(assert start!108384)

(declare-fun b!1278705 () Bool)

(declare-fun e!730553 () Bool)

(declare-fun tp_is_empty!33535 () Bool)

(assert (=> b!1278705 (= e!730553 tp_is_empty!33535)))

(declare-fun b!1278706 () Bool)

(declare-fun e!730555 () Bool)

(assert (=> b!1278706 (= e!730555 tp_is_empty!33535)))

(declare-fun b!1278707 () Bool)

(declare-fun e!730552 () Bool)

(assert (=> b!1278707 (= e!730552 false)))

(declare-fun lt!575869 () Bool)

(declare-datatypes ((array!84109 0))(
  ( (array!84110 (arr!40554 (Array (_ BitVec 32) (_ BitVec 64))) (size!41105 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84109)

(declare-datatypes ((List!28913 0))(
  ( (Nil!28910) (Cons!28909 (h!30118 (_ BitVec 64)) (t!42460 List!28913)) )
))
(declare-fun arrayNoDuplicates!0 (array!84109 (_ BitVec 32) List!28913) Bool)

(assert (=> b!1278707 (= lt!575869 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28910))))

(declare-fun res!849553 () Bool)

(assert (=> start!108384 (=> (not res!849553) (not e!730552))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108384 (= res!849553 (validMask!0 mask!2175))))

(assert (=> start!108384 e!730552))

(assert (=> start!108384 true))

(declare-datatypes ((V!49817 0))(
  ( (V!49818 (val!16842 Int)) )
))
(declare-datatypes ((ValueCell!15869 0))(
  ( (ValueCellFull!15869 (v!19440 V!49817)) (EmptyCell!15869) )
))
(declare-datatypes ((array!84111 0))(
  ( (array!84112 (arr!40555 (Array (_ BitVec 32) ValueCell!15869)) (size!41106 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84111)

(declare-fun e!730554 () Bool)

(declare-fun array_inv!30779 (array!84111) Bool)

(assert (=> start!108384 (and (array_inv!30779 _values!1445) e!730554)))

(declare-fun array_inv!30780 (array!84109) Bool)

(assert (=> start!108384 (array_inv!30780 _keys!1741)))

(declare-fun b!1278708 () Bool)

(declare-fun res!849552 () Bool)

(assert (=> b!1278708 (=> (not res!849552) (not e!730552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84109 (_ BitVec 32)) Bool)

(assert (=> b!1278708 (= res!849552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51854 () Bool)

(declare-fun mapRes!51854 () Bool)

(assert (=> mapIsEmpty!51854 mapRes!51854))

(declare-fun mapNonEmpty!51854 () Bool)

(declare-fun tp!98829 () Bool)

(assert (=> mapNonEmpty!51854 (= mapRes!51854 (and tp!98829 e!730553))))

(declare-fun mapValue!51854 () ValueCell!15869)

(declare-fun mapKey!51854 () (_ BitVec 32))

(declare-fun mapRest!51854 () (Array (_ BitVec 32) ValueCell!15869))

(assert (=> mapNonEmpty!51854 (= (arr!40555 _values!1445) (store mapRest!51854 mapKey!51854 mapValue!51854))))

(declare-fun b!1278709 () Bool)

(declare-fun res!849554 () Bool)

(assert (=> b!1278709 (=> (not res!849554) (not e!730552))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278709 (= res!849554 (and (= (size!41106 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41105 _keys!1741) (size!41106 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278710 () Bool)

(assert (=> b!1278710 (= e!730554 (and e!730555 mapRes!51854))))

(declare-fun condMapEmpty!51854 () Bool)

(declare-fun mapDefault!51854 () ValueCell!15869)

