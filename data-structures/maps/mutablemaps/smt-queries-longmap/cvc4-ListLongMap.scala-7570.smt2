; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95780 () Bool)

(assert start!95780)

(declare-fun b_free!22397 () Bool)

(declare-fun b_next!22397 () Bool)

(assert (=> start!95780 (= b_free!22397 (not b_next!22397))))

(declare-fun tp!79040 () Bool)

(declare-fun b_and!35487 () Bool)

(assert (=> start!95780 (= tp!79040 b_and!35487)))

(declare-fun mapIsEmpty!41353 () Bool)

(declare-fun mapRes!41353 () Bool)

(assert (=> mapIsEmpty!41353 mapRes!41353))

(declare-fun b!1082705 () Bool)

(declare-fun res!721823 () Bool)

(declare-fun e!618766 () Bool)

(assert (=> b!1082705 (=> (not res!721823) (not e!618766))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69700 0))(
  ( (array!69701 (arr!33520 (Array (_ BitVec 32) (_ BitVec 64))) (size!34057 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69700)

(declare-datatypes ((V!40325 0))(
  ( (V!40326 (val!13256 Int)) )
))
(declare-datatypes ((ValueCell!12490 0))(
  ( (ValueCellFull!12490 (v!15878 V!40325)) (EmptyCell!12490) )
))
(declare-datatypes ((array!69702 0))(
  ( (array!69703 (arr!33521 (Array (_ BitVec 32) ValueCell!12490)) (size!34058 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69702)

(assert (=> b!1082705 (= res!721823 (and (= (size!34058 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34057 _keys!1070) (size!34058 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082706 () Bool)

(declare-fun e!618765 () Bool)

(declare-fun tp_is_empty!26399 () Bool)

(assert (=> b!1082706 (= e!618765 tp_is_empty!26399)))

(declare-fun b!1082707 () Bool)

(declare-fun e!618769 () Bool)

(assert (=> b!1082707 (= e!618766 e!618769)))

(declare-fun res!721820 () Bool)

(assert (=> b!1082707 (=> (not res!721820) (not e!618769))))

(declare-fun lt!479727 () array!69700)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69700 (_ BitVec 32)) Bool)

(assert (=> b!1082707 (= res!721820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479727 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082707 (= lt!479727 (array!69701 (store (arr!33520 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34057 _keys!1070)))))

(declare-fun b!1082708 () Bool)

(declare-fun res!721817 () Bool)

(assert (=> b!1082708 (=> (not res!721817) (not e!618766))))

(assert (=> b!1082708 (= res!721817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41353 () Bool)

(declare-fun tp!79041 () Bool)

(declare-fun e!618767 () Bool)

(assert (=> mapNonEmpty!41353 (= mapRes!41353 (and tp!79041 e!618767))))

(declare-fun mapRest!41353 () (Array (_ BitVec 32) ValueCell!12490))

(declare-fun mapValue!41353 () ValueCell!12490)

(declare-fun mapKey!41353 () (_ BitVec 32))

(assert (=> mapNonEmpty!41353 (= (arr!33521 _values!874) (store mapRest!41353 mapKey!41353 mapValue!41353))))

(declare-fun res!721822 () Bool)

(assert (=> start!95780 (=> (not res!721822) (not e!618766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95780 (= res!721822 (validMask!0 mask!1414))))

(assert (=> start!95780 e!618766))

(assert (=> start!95780 tp!79040))

(assert (=> start!95780 true))

(assert (=> start!95780 tp_is_empty!26399))

(declare-fun array_inv!25734 (array!69700) Bool)

(assert (=> start!95780 (array_inv!25734 _keys!1070)))

(declare-fun e!618764 () Bool)

(declare-fun array_inv!25735 (array!69702) Bool)

(assert (=> start!95780 (and (array_inv!25735 _values!874) e!618764)))

(declare-fun b!1082709 () Bool)

(assert (=> b!1082709 (= e!618764 (and e!618765 mapRes!41353))))

(declare-fun condMapEmpty!41353 () Bool)

(declare-fun mapDefault!41353 () ValueCell!12490)

