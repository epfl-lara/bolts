; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96554 () Bool)

(assert start!96554)

(declare-fun b_free!23071 () Bool)

(declare-fun b_next!23071 () Bool)

(assert (=> start!96554 (= b_free!23071 (not b_next!23071))))

(declare-fun tp!81143 () Bool)

(declare-fun b_and!36837 () Bool)

(assert (=> start!96554 (= tp!81143 b_and!36837)))

(declare-fun b!1097594 () Bool)

(declare-fun res!732636 () Bool)

(declare-fun e!626488 () Bool)

(assert (=> b!1097594 (=> (not res!732636) (not e!626488))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71104 0))(
  ( (array!71105 (arr!34219 (Array (_ BitVec 32) (_ BitVec 64))) (size!34756 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71104)

(assert (=> b!1097594 (= res!732636 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34756 _keys!1070))))))

(declare-fun b!1097595 () Bool)

(declare-fun res!732637 () Bool)

(assert (=> b!1097595 (=> (not res!732637) (not e!626488))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41289 0))(
  ( (V!41290 (val!13617 Int)) )
))
(declare-datatypes ((ValueCell!12851 0))(
  ( (ValueCellFull!12851 (v!16240 V!41289)) (EmptyCell!12851) )
))
(declare-datatypes ((array!71106 0))(
  ( (array!71107 (arr!34220 (Array (_ BitVec 32) ValueCell!12851)) (size!34757 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71106)

(assert (=> b!1097595 (= res!732637 (and (= (size!34757 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34756 _keys!1070) (size!34757 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097597 () Bool)

(declare-fun e!626487 () Bool)

(declare-fun tp_is_empty!27121 () Bool)

(assert (=> b!1097597 (= e!626487 tp_is_empty!27121)))

(declare-fun mapNonEmpty!42445 () Bool)

(declare-fun mapRes!42445 () Bool)

(declare-fun tp!81144 () Bool)

(assert (=> mapNonEmpty!42445 (= mapRes!42445 (and tp!81144 e!626487))))

(declare-fun mapKey!42445 () (_ BitVec 32))

(declare-fun mapValue!42445 () ValueCell!12851)

(declare-fun mapRest!42445 () (Array (_ BitVec 32) ValueCell!12851))

(assert (=> mapNonEmpty!42445 (= (arr!34220 _values!874) (store mapRest!42445 mapKey!42445 mapValue!42445))))

(declare-datatypes ((tuple2!17356 0))(
  ( (tuple2!17357 (_1!8688 (_ BitVec 64)) (_2!8688 V!41289)) )
))
(declare-fun lt!490714 () tuple2!17356)

(declare-datatypes ((List!24035 0))(
  ( (Nil!24032) (Cons!24031 (h!25240 tuple2!17356) (t!34159 List!24035)) )
))
(declare-datatypes ((ListLongMap!15337 0))(
  ( (ListLongMap!15338 (toList!7684 List!24035)) )
))
(declare-fun lt!490709 () ListLongMap!15337)

(declare-fun lt!490708 () ListLongMap!15337)

(declare-fun b!1097598 () Bool)

(declare-fun e!626490 () Bool)

(declare-fun lt!490715 () tuple2!17356)

(declare-fun +!3319 (ListLongMap!15337 tuple2!17356) ListLongMap!15337)

(assert (=> b!1097598 (= e!626490 (= lt!490708 (+!3319 (+!3319 lt!490709 lt!490715) lt!490714)))))

(declare-fun lt!490705 () ListLongMap!15337)

(declare-fun lt!490712 () ListLongMap!15337)

(assert (=> b!1097598 (= lt!490705 (+!3319 (+!3319 lt!490712 lt!490715) lt!490714))))

(declare-fun minValue!831 () V!41289)

(assert (=> b!1097598 (= lt!490714 (tuple2!17357 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun zeroValue!831 () V!41289)

(assert (=> b!1097598 (= lt!490715 (tuple2!17357 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapIsEmpty!42445 () Bool)

(assert (=> mapIsEmpty!42445 mapRes!42445))

(declare-fun b!1097599 () Bool)

(declare-fun e!626486 () Bool)

(declare-fun e!626485 () Bool)

(assert (=> b!1097599 (= e!626486 (and e!626485 mapRes!42445))))

(declare-fun condMapEmpty!42445 () Bool)

(declare-fun mapDefault!42445 () ValueCell!12851)

