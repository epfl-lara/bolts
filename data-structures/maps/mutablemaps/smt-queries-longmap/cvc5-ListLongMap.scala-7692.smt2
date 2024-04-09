; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96586 () Bool)

(assert start!96586)

(declare-fun b_free!23077 () Bool)

(declare-fun b_next!23077 () Bool)

(assert (=> start!96586 (= b_free!23077 (not b_next!23077))))

(declare-fun tp!81164 () Bool)

(declare-fun b_and!36863 () Bool)

(assert (=> start!96586 (= tp!81164 b_and!36863)))

(declare-fun b!1097922 () Bool)

(declare-fun res!732829 () Bool)

(declare-fun e!626688 () Bool)

(assert (=> b!1097922 (=> (not res!732829) (not e!626688))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097922 (= res!732829 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42457 () Bool)

(declare-fun mapRes!42457 () Bool)

(assert (=> mapIsEmpty!42457 mapRes!42457))

(declare-fun b!1097923 () Bool)

(declare-fun e!626687 () Bool)

(declare-fun tp_is_empty!27127 () Bool)

(assert (=> b!1097923 (= e!626687 tp_is_empty!27127)))

(declare-fun b!1097924 () Bool)

(declare-fun res!732821 () Bool)

(assert (=> b!1097924 (=> (not res!732821) (not e!626688))))

(declare-datatypes ((array!71118 0))(
  ( (array!71119 (arr!34225 (Array (_ BitVec 32) (_ BitVec 64))) (size!34762 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71118)

(declare-datatypes ((List!24040 0))(
  ( (Nil!24037) (Cons!24036 (h!25245 (_ BitVec 64)) (t!34170 List!24040)) )
))
(declare-fun arrayNoDuplicates!0 (array!71118 (_ BitVec 32) List!24040) Bool)

(assert (=> b!1097924 (= res!732821 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24037))))

(declare-fun b!1097926 () Bool)

(declare-fun res!732828 () Bool)

(assert (=> b!1097926 (=> (not res!732828) (not e!626688))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097926 (= res!732828 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34762 _keys!1070))))))

(declare-fun b!1097927 () Bool)

(declare-datatypes ((V!41297 0))(
  ( (V!41298 (val!13620 Int)) )
))
(declare-datatypes ((tuple2!17362 0))(
  ( (tuple2!17363 (_1!8691 (_ BitVec 64)) (_2!8691 V!41297)) )
))
(declare-datatypes ((List!24041 0))(
  ( (Nil!24038) (Cons!24037 (h!25246 tuple2!17362) (t!34171 List!24041)) )
))
(declare-datatypes ((ListLongMap!15343 0))(
  ( (ListLongMap!15344 (toList!7687 List!24041)) )
))
(declare-fun lt!490972 () ListLongMap!15343)

(declare-fun lt!490965 () ListLongMap!15343)

(declare-fun lt!490967 () tuple2!17362)

(declare-fun lt!490968 () tuple2!17362)

(declare-fun e!626686 () Bool)

(declare-fun +!3322 (ListLongMap!15343 tuple2!17362) ListLongMap!15343)

(assert (=> b!1097927 (= e!626686 (= lt!490965 (+!3322 (+!3322 lt!490972 lt!490967) lt!490968)))))

(declare-fun e!626684 () Bool)

(assert (=> b!1097927 e!626684))

(declare-fun res!732820 () Bool)

(assert (=> b!1097927 (=> (not res!732820) (not e!626684))))

(declare-fun lt!490970 () ListLongMap!15343)

(assert (=> b!1097927 (= res!732820 (= lt!490965 (+!3322 (+!3322 lt!490970 lt!490967) lt!490968)))))

(declare-fun minValue!831 () V!41297)

(assert (=> b!1097927 (= lt!490968 (tuple2!17363 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun zeroValue!831 () V!41297)

(assert (=> b!1097927 (= lt!490967 (tuple2!17363 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1097928 () Bool)

(declare-fun res!732823 () Bool)

(assert (=> b!1097928 (=> (not res!732823) (not e!626688))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71118 (_ BitVec 32)) Bool)

(assert (=> b!1097928 (= res!732823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097929 () Bool)

(declare-fun e!626689 () Bool)

(assert (=> b!1097929 (= e!626689 tp_is_empty!27127)))

(declare-fun b!1097930 () Bool)

(declare-fun res!732822 () Bool)

(declare-fun e!626685 () Bool)

(assert (=> b!1097930 (=> (not res!732822) (not e!626685))))

(declare-fun lt!490966 () array!71118)

(assert (=> b!1097930 (= res!732822 (arrayNoDuplicates!0 lt!490966 #b00000000000000000000000000000000 Nil!24037))))

(declare-fun b!1097931 () Bool)

(declare-fun e!626683 () Bool)

(assert (=> b!1097931 (= e!626683 (and e!626689 mapRes!42457))))

(declare-fun condMapEmpty!42457 () Bool)

(declare-datatypes ((ValueCell!12854 0))(
  ( (ValueCellFull!12854 (v!16244 V!41297)) (EmptyCell!12854) )
))
(declare-datatypes ((array!71120 0))(
  ( (array!71121 (arr!34226 (Array (_ BitVec 32) ValueCell!12854)) (size!34763 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71120)

(declare-fun mapDefault!42457 () ValueCell!12854)

