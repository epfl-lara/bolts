; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108378 () Bool)

(assert start!108378)

(declare-fun b!1278651 () Bool)

(declare-fun e!730507 () Bool)

(declare-fun tp_is_empty!33529 () Bool)

(assert (=> b!1278651 (= e!730507 tp_is_empty!33529)))

(declare-fun b!1278652 () Bool)

(declare-fun e!730509 () Bool)

(assert (=> b!1278652 (= e!730509 tp_is_empty!33529)))

(declare-fun b!1278653 () Bool)

(declare-fun res!849526 () Bool)

(declare-fun e!730510 () Bool)

(assert (=> b!1278653 (=> (not res!849526) (not e!730510))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49809 0))(
  ( (V!49810 (val!16839 Int)) )
))
(declare-datatypes ((ValueCell!15866 0))(
  ( (ValueCellFull!15866 (v!19437 V!49809)) (EmptyCell!15866) )
))
(declare-datatypes ((array!84097 0))(
  ( (array!84098 (arr!40548 (Array (_ BitVec 32) ValueCell!15866)) (size!41099 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84097)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84099 0))(
  ( (array!84100 (arr!40549 (Array (_ BitVec 32) (_ BitVec 64))) (size!41100 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84099)

(assert (=> b!1278653 (= res!849526 (and (= (size!41099 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41100 _keys!1741) (size!41099 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278654 () Bool)

(declare-fun e!730508 () Bool)

(declare-fun mapRes!51845 () Bool)

(assert (=> b!1278654 (= e!730508 (and e!730509 mapRes!51845))))

(declare-fun condMapEmpty!51845 () Bool)

(declare-fun mapDefault!51845 () ValueCell!15866)

