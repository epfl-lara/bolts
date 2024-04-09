; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108320 () Bool)

(assert start!108320)

(declare-fun mapIsEmpty!51785 () Bool)

(declare-fun mapRes!51785 () Bool)

(assert (=> mapIsEmpty!51785 mapRes!51785))

(declare-fun mapNonEmpty!51785 () Bool)

(declare-fun tp!98760 () Bool)

(declare-fun e!730178 () Bool)

(assert (=> mapNonEmpty!51785 (= mapRes!51785 (and tp!98760 e!730178))))

(declare-datatypes ((V!49761 0))(
  ( (V!49762 (val!16821 Int)) )
))
(declare-datatypes ((ValueCell!15848 0))(
  ( (ValueCellFull!15848 (v!19418 V!49761)) (EmptyCell!15848) )
))
(declare-fun mapValue!51785 () ValueCell!15848)

(declare-datatypes ((array!84023 0))(
  ( (array!84024 (arr!40513 (Array (_ BitVec 32) ValueCell!15848)) (size!41064 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84023)

(declare-fun mapRest!51785 () (Array (_ BitVec 32) ValueCell!15848))

(declare-fun mapKey!51785 () (_ BitVec 32))

(assert (=> mapNonEmpty!51785 (= (arr!40513 _values!1445) (store mapRest!51785 mapKey!51785 mapValue!51785))))

(declare-fun b!1278233 () Bool)

(declare-fun res!849297 () Bool)

(declare-fun e!730180 () Bool)

(assert (=> b!1278233 (=> (not res!849297) (not e!730180))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84025 0))(
  ( (array!84026 (arr!40514 (Array (_ BitVec 32) (_ BitVec 64))) (size!41065 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84025)

(assert (=> b!1278233 (= res!849297 (and (= (size!41064 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41065 _keys!1741) (size!41064 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278234 () Bool)

(declare-datatypes ((List!28899 0))(
  ( (Nil!28896) (Cons!28895 (h!30104 (_ BitVec 64)) (t!42446 List!28899)) )
))
(declare-fun noDuplicate!2084 (List!28899) Bool)

(assert (=> b!1278234 (= e!730180 (not (noDuplicate!2084 Nil!28896)))))

(declare-fun b!1278235 () Bool)

(declare-fun res!849299 () Bool)

(assert (=> b!1278235 (=> (not res!849299) (not e!730180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84025 (_ BitVec 32)) Bool)

(assert (=> b!1278235 (= res!849299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!849300 () Bool)

(assert (=> start!108320 (=> (not res!849300) (not e!730180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108320 (= res!849300 (validMask!0 mask!2175))))

(assert (=> start!108320 e!730180))

(assert (=> start!108320 true))

(declare-fun e!730179 () Bool)

(declare-fun array_inv!30751 (array!84023) Bool)

(assert (=> start!108320 (and (array_inv!30751 _values!1445) e!730179)))

(declare-fun array_inv!30752 (array!84025) Bool)

(assert (=> start!108320 (array_inv!30752 _keys!1741)))

(declare-fun b!1278236 () Bool)

(declare-fun tp_is_empty!33493 () Bool)

(assert (=> b!1278236 (= e!730178 tp_is_empty!33493)))

(declare-fun b!1278237 () Bool)

(declare-fun res!849298 () Bool)

(assert (=> b!1278237 (=> (not res!849298) (not e!730180))))

(assert (=> b!1278237 (= res!849298 (and (bvsle #b00000000000000000000000000000000 (size!41065 _keys!1741)) (bvslt (size!41065 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278238 () Bool)

(declare-fun e!730181 () Bool)

(assert (=> b!1278238 (= e!730181 tp_is_empty!33493)))

(declare-fun b!1278239 () Bool)

(assert (=> b!1278239 (= e!730179 (and e!730181 mapRes!51785))))

(declare-fun condMapEmpty!51785 () Bool)

(declare-fun mapDefault!51785 () ValueCell!15848)

