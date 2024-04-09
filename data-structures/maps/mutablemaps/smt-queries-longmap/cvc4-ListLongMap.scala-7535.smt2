; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95554 () Bool)

(assert start!95554)

(declare-fun b!1078781 () Bool)

(declare-fun res!718958 () Bool)

(declare-fun e!616838 () Bool)

(assert (=> b!1078781 (=> (not res!718958) (not e!616838))))

(declare-datatypes ((array!69288 0))(
  ( (array!69289 (arr!33315 (Array (_ BitVec 32) (_ BitVec 64))) (size!33852 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69288)

(declare-datatypes ((List!23362 0))(
  ( (Nil!23359) (Cons!23358 (h!24567 (_ BitVec 64)) (t!32728 List!23362)) )
))
(declare-fun arrayNoDuplicates!0 (array!69288 (_ BitVec 32) List!23362) Bool)

(assert (=> b!1078781 (= res!718958 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23359))))

(declare-fun b!1078782 () Bool)

(declare-fun res!718957 () Bool)

(assert (=> b!1078782 (=> (not res!718957) (not e!616838))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078782 (= res!718957 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33852 _keys!1070))))))

(declare-fun b!1078783 () Bool)

(declare-fun res!718956 () Bool)

(assert (=> b!1078783 (=> (not res!718956) (not e!616838))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40045 0))(
  ( (V!40046 (val!13151 Int)) )
))
(declare-datatypes ((ValueCell!12385 0))(
  ( (ValueCellFull!12385 (v!15773 V!40045)) (EmptyCell!12385) )
))
(declare-datatypes ((array!69290 0))(
  ( (array!69291 (arr!33316 (Array (_ BitVec 32) ValueCell!12385)) (size!33853 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69290)

(assert (=> b!1078783 (= res!718956 (and (= (size!33853 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33852 _keys!1070) (size!33853 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41035 () Bool)

(declare-fun mapRes!41035 () Bool)

(assert (=> mapIsEmpty!41035 mapRes!41035))

(declare-fun b!1078784 () Bool)

(declare-fun e!616835 () Bool)

(declare-fun tp_is_empty!26189 () Bool)

(assert (=> b!1078784 (= e!616835 tp_is_empty!26189)))

(declare-fun b!1078786 () Bool)

(declare-fun res!718954 () Bool)

(declare-fun e!616839 () Bool)

(assert (=> b!1078786 (=> (not res!718954) (not e!616839))))

(declare-fun lt!478681 () array!69288)

(assert (=> b!1078786 (= res!718954 (arrayNoDuplicates!0 lt!478681 #b00000000000000000000000000000000 Nil!23359))))

(declare-fun b!1078787 () Bool)

(declare-fun res!718959 () Bool)

(assert (=> b!1078787 (=> (not res!718959) (not e!616838))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078787 (= res!718959 (validKeyInArray!0 k!904))))

(declare-fun b!1078788 () Bool)

(declare-fun e!616836 () Bool)

(assert (=> b!1078788 (= e!616836 tp_is_empty!26189)))

(declare-fun b!1078789 () Bool)

(declare-fun e!616834 () Bool)

(assert (=> b!1078789 (= e!616834 (and e!616836 mapRes!41035))))

(declare-fun condMapEmpty!41035 () Bool)

(declare-fun mapDefault!41035 () ValueCell!12385)

