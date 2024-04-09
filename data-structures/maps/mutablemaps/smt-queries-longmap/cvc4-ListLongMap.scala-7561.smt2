; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95726 () Bool)

(assert start!95726)

(declare-fun b_free!22343 () Bool)

(declare-fun b_next!22343 () Bool)

(assert (=> start!95726 (= b_free!22343 (not b_next!22343))))

(declare-fun tp!78878 () Bool)

(declare-fun b_and!35379 () Bool)

(assert (=> start!95726 (= tp!78878 b_and!35379)))

(declare-fun b!1081679 () Bool)

(declare-fun res!721092 () Bool)

(declare-fun e!618281 () Bool)

(assert (=> b!1081679 (=> (not res!721092) (not e!618281))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69594 0))(
  ( (array!69595 (arr!33467 (Array (_ BitVec 32) (_ BitVec 64))) (size!34004 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69594)

(assert (=> b!1081679 (= res!721092 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34004 _keys!1070))))))

(declare-fun b!1081680 () Bool)

(declare-fun e!618279 () Bool)

(declare-fun tp_is_empty!26345 () Bool)

(assert (=> b!1081680 (= e!618279 tp_is_empty!26345)))

(declare-fun mapIsEmpty!41272 () Bool)

(declare-fun mapRes!41272 () Bool)

(assert (=> mapIsEmpty!41272 mapRes!41272))

(declare-fun b!1081681 () Bool)

(declare-fun e!618280 () Bool)

(assert (=> b!1081681 (= e!618280 tp_is_empty!26345)))

(declare-fun b!1081682 () Bool)

(declare-fun res!721093 () Bool)

(assert (=> b!1081682 (=> (not res!721093) (not e!618281))))

(declare-datatypes ((List!23460 0))(
  ( (Nil!23457) (Cons!23456 (h!24665 (_ BitVec 64)) (t!32868 List!23460)) )
))
(declare-fun arrayNoDuplicates!0 (array!69594 (_ BitVec 32) List!23460) Bool)

(assert (=> b!1081682 (= res!721093 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23457))))

(declare-fun mapNonEmpty!41272 () Bool)

(declare-fun tp!78879 () Bool)

(assert (=> mapNonEmpty!41272 (= mapRes!41272 (and tp!78879 e!618279))))

(declare-datatypes ((V!40253 0))(
  ( (V!40254 (val!13229 Int)) )
))
(declare-datatypes ((ValueCell!12463 0))(
  ( (ValueCellFull!12463 (v!15851 V!40253)) (EmptyCell!12463) )
))
(declare-datatypes ((array!69596 0))(
  ( (array!69597 (arr!33468 (Array (_ BitVec 32) ValueCell!12463)) (size!34005 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69596)

(declare-fun mapKey!41272 () (_ BitVec 32))

(declare-fun mapRest!41272 () (Array (_ BitVec 32) ValueCell!12463))

(declare-fun mapValue!41272 () ValueCell!12463)

(assert (=> mapNonEmpty!41272 (= (arr!33468 _values!874) (store mapRest!41272 mapKey!41272 mapValue!41272))))

(declare-fun b!1081683 () Bool)

(declare-fun res!721086 () Bool)

(assert (=> b!1081683 (=> (not res!721086) (not e!618281))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1081683 (= res!721086 (= (select (arr!33467 _keys!1070) i!650) k!904))))

(declare-fun b!1081684 () Bool)

(declare-fun e!618282 () Bool)

(assert (=> b!1081684 (= e!618281 e!618282)))

(declare-fun res!721091 () Bool)

(assert (=> b!1081684 (=> (not res!721091) (not e!618282))))

(declare-fun lt!479371 () array!69594)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69594 (_ BitVec 32)) Bool)

(assert (=> b!1081684 (= res!721091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479371 mask!1414))))

(assert (=> b!1081684 (= lt!479371 (array!69595 (store (arr!33467 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34004 _keys!1070)))))

(declare-fun b!1081685 () Bool)

(declare-fun res!721089 () Bool)

(assert (=> b!1081685 (=> (not res!721089) (not e!618281))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1081685 (= res!721089 (and (= (size!34005 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34004 _keys!1070) (size!34005 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081686 () Bool)

(declare-fun res!721087 () Bool)

(assert (=> b!1081686 (=> (not res!721087) (not e!618281))))

(assert (=> b!1081686 (= res!721087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081688 () Bool)

(declare-fun res!721088 () Bool)

(assert (=> b!1081688 (=> (not res!721088) (not e!618281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081688 (= res!721088 (validKeyInArray!0 k!904))))

(declare-fun b!1081689 () Bool)

(declare-fun e!618278 () Bool)

(assert (=> b!1081689 (= e!618278 (and e!618280 mapRes!41272))))

(declare-fun condMapEmpty!41272 () Bool)

(declare-fun mapDefault!41272 () ValueCell!12463)

