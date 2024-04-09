; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95478 () Bool)

(assert start!95478)

(declare-fun b!1077873 () Bool)

(declare-fun res!718305 () Bool)

(declare-fun e!616348 () Bool)

(assert (=> b!1077873 (=> (not res!718305) (not e!616348))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69198 0))(
  ( (array!69199 (arr!33272 (Array (_ BitVec 32) (_ BitVec 64))) (size!33809 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69198)

(declare-datatypes ((V!39985 0))(
  ( (V!39986 (val!13128 Int)) )
))
(declare-datatypes ((ValueCell!12362 0))(
  ( (ValueCellFull!12362 (v!15749 V!39985)) (EmptyCell!12362) )
))
(declare-datatypes ((array!69200 0))(
  ( (array!69201 (arr!33273 (Array (_ BitVec 32) ValueCell!12362)) (size!33810 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69200)

(assert (=> b!1077873 (= res!718305 (and (= (size!33810 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33809 _keys!1070) (size!33810 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077874 () Bool)

(declare-fun res!718298 () Bool)

(assert (=> b!1077874 (=> (not res!718298) (not e!616348))))

(assert (=> b!1077874 (= res!718298 (and (bvsle #b00000000000000000000000000000000 (size!33809 _keys!1070)) (bvslt (size!33809 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077875 () Bool)

(declare-fun e!616350 () Bool)

(declare-fun tp_is_empty!26143 () Bool)

(assert (=> b!1077875 (= e!616350 tp_is_empty!26143)))

(declare-fun b!1077876 () Bool)

(declare-fun e!616349 () Bool)

(assert (=> b!1077876 (= e!616349 tp_is_empty!26143)))

(declare-fun b!1077877 () Bool)

(declare-fun res!718299 () Bool)

(assert (=> b!1077877 (=> (not res!718299) (not e!616348))))

(declare-datatypes ((List!23345 0))(
  ( (Nil!23342) (Cons!23341 (h!24550 (_ BitVec 64)) (t!32711 List!23345)) )
))
(declare-fun arrayNoDuplicates!0 (array!69198 (_ BitVec 32) List!23345) Bool)

(assert (=> b!1077877 (= res!718299 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23342))))

(declare-fun mapIsEmpty!40960 () Bool)

(declare-fun mapRes!40960 () Bool)

(assert (=> mapIsEmpty!40960 mapRes!40960))

(declare-fun res!718302 () Bool)

(assert (=> start!95478 (=> (not res!718302) (not e!616348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95478 (= res!718302 (validMask!0 mask!1414))))

(assert (=> start!95478 e!616348))

(assert (=> start!95478 true))

(declare-fun array_inv!25570 (array!69198) Bool)

(assert (=> start!95478 (array_inv!25570 _keys!1070)))

(declare-fun e!616351 () Bool)

(declare-fun array_inv!25571 (array!69200) Bool)

(assert (=> start!95478 (and (array_inv!25571 _values!874) e!616351)))

(declare-fun b!1077878 () Bool)

(declare-fun res!718304 () Bool)

(assert (=> b!1077878 (=> (not res!718304) (not e!616348))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077878 (= res!718304 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33809 _keys!1070))))))

(declare-fun b!1077879 () Bool)

(assert (=> b!1077879 (= e!616351 (and e!616349 mapRes!40960))))

(declare-fun condMapEmpty!40960 () Bool)

(declare-fun mapDefault!40960 () ValueCell!12362)

