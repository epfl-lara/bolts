; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108358 () Bool)

(assert start!108358)

(declare-fun mapNonEmpty!51815 () Bool)

(declare-fun mapRes!51815 () Bool)

(declare-fun tp!98790 () Bool)

(declare-fun e!730356 () Bool)

(assert (=> mapNonEmpty!51815 (= mapRes!51815 (and tp!98790 e!730356))))

(declare-datatypes ((V!49781 0))(
  ( (V!49782 (val!16829 Int)) )
))
(declare-datatypes ((ValueCell!15856 0))(
  ( (ValueCellFull!15856 (v!19427 V!49781)) (EmptyCell!15856) )
))
(declare-fun mapRest!51815 () (Array (_ BitVec 32) ValueCell!15856))

(declare-datatypes ((array!84059 0))(
  ( (array!84060 (arr!40529 (Array (_ BitVec 32) ValueCell!15856)) (size!41080 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84059)

(declare-fun mapKey!51815 () (_ BitVec 32))

(declare-fun mapValue!51815 () ValueCell!15856)

(assert (=> mapNonEmpty!51815 (= (arr!40529 _values!1445) (store mapRest!51815 mapKey!51815 mapValue!51815))))

(declare-fun b!1278471 () Bool)

(declare-fun res!849435 () Bool)

(declare-fun e!730360 () Bool)

(assert (=> b!1278471 (=> (not res!849435) (not e!730360))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84061 0))(
  ( (array!84062 (arr!40530 (Array (_ BitVec 32) (_ BitVec 64))) (size!41081 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84061)

(assert (=> b!1278471 (= res!849435 (and (= (size!41080 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41081 _keys!1741) (size!41080 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278472 () Bool)

(declare-fun e!730357 () Bool)

(declare-fun tp_is_empty!33509 () Bool)

(assert (=> b!1278472 (= e!730357 tp_is_empty!33509)))

(declare-fun b!1278473 () Bool)

(declare-fun e!730358 () Bool)

(assert (=> b!1278473 (= e!730358 (and e!730357 mapRes!51815))))

(declare-fun condMapEmpty!51815 () Bool)

(declare-fun mapDefault!51815 () ValueCell!15856)

