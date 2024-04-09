; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95618 () Bool)

(assert start!95618)

(declare-fun b!1079696 () Bool)

(declare-fun e!617306 () Bool)

(declare-fun tp_is_empty!26237 () Bool)

(assert (=> b!1079696 (= e!617306 tp_is_empty!26237)))

(declare-fun b!1079697 () Bool)

(declare-fun res!719635 () Bool)

(declare-fun e!617311 () Bool)

(assert (=> b!1079697 (=> (not res!719635) (not e!617311))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69382 0))(
  ( (array!69383 (arr!33361 (Array (_ BitVec 32) (_ BitVec 64))) (size!33898 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69382)

(declare-datatypes ((V!40109 0))(
  ( (V!40110 (val!13175 Int)) )
))
(declare-datatypes ((ValueCell!12409 0))(
  ( (ValueCellFull!12409 (v!15797 V!40109)) (EmptyCell!12409) )
))
(declare-datatypes ((array!69384 0))(
  ( (array!69385 (arr!33362 (Array (_ BitVec 32) ValueCell!12409)) (size!33899 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69384)

(assert (=> b!1079697 (= res!719635 (and (= (size!33899 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33898 _keys!1070) (size!33899 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079698 () Bool)

(declare-fun res!719632 () Bool)

(declare-fun e!617310 () Bool)

(assert (=> b!1079698 (=> (not res!719632) (not e!617310))))

(declare-fun lt!478841 () array!69382)

(declare-datatypes ((List!23382 0))(
  ( (Nil!23379) (Cons!23378 (h!24587 (_ BitVec 64)) (t!32748 List!23382)) )
))
(declare-fun arrayNoDuplicates!0 (array!69382 (_ BitVec 32) List!23382) Bool)

(assert (=> b!1079698 (= res!719632 (arrayNoDuplicates!0 lt!478841 #b00000000000000000000000000000000 Nil!23379))))

(declare-fun b!1079699 () Bool)

(declare-fun res!719634 () Bool)

(assert (=> b!1079699 (=> (not res!719634) (not e!617311))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079699 (= res!719634 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33898 _keys!1070))))))

(declare-fun b!1079700 () Bool)

(declare-fun e!617307 () Bool)

(assert (=> b!1079700 (= e!617307 tp_is_empty!26237)))

(declare-fun b!1079701 () Bool)

(declare-fun e!617308 () Bool)

(declare-fun mapRes!41110 () Bool)

(assert (=> b!1079701 (= e!617308 (and e!617306 mapRes!41110))))

(declare-fun condMapEmpty!41110 () Bool)

(declare-fun mapDefault!41110 () ValueCell!12409)

