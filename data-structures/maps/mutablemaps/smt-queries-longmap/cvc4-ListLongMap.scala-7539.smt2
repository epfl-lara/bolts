; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95594 () Bool)

(assert start!95594)

(declare-fun b!1079263 () Bool)

(declare-fun res!719310 () Bool)

(declare-fun e!617091 () Bool)

(assert (=> b!1079263 (=> (not res!719310) (not e!617091))))

(declare-datatypes ((array!69338 0))(
  ( (array!69339 (arr!33339 (Array (_ BitVec 32) (_ BitVec 64))) (size!33876 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69338)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69338 (_ BitVec 32)) Bool)

(assert (=> b!1079263 (= res!719310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079264 () Bool)

(declare-fun res!719308 () Bool)

(declare-fun e!617094 () Bool)

(assert (=> b!1079264 (=> (not res!719308) (not e!617094))))

(declare-fun lt!478768 () array!69338)

(declare-datatypes ((List!23373 0))(
  ( (Nil!23370) (Cons!23369 (h!24578 (_ BitVec 64)) (t!32739 List!23373)) )
))
(declare-fun arrayNoDuplicates!0 (array!69338 (_ BitVec 32) List!23373) Bool)

(assert (=> b!1079264 (= res!719308 (arrayNoDuplicates!0 lt!478768 #b00000000000000000000000000000000 Nil!23370))))

(declare-fun b!1079265 () Bool)

(declare-fun res!719312 () Bool)

(assert (=> b!1079265 (=> (not res!719312) (not e!617091))))

(assert (=> b!1079265 (= res!719312 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23370))))

(declare-fun b!1079266 () Bool)

(declare-fun res!719309 () Bool)

(assert (=> b!1079266 (=> (not res!719309) (not e!617091))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40077 0))(
  ( (V!40078 (val!13163 Int)) )
))
(declare-datatypes ((ValueCell!12397 0))(
  ( (ValueCellFull!12397 (v!15785 V!40077)) (EmptyCell!12397) )
))
(declare-datatypes ((array!69340 0))(
  ( (array!69341 (arr!33340 (Array (_ BitVec 32) ValueCell!12397)) (size!33877 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69340)

(assert (=> b!1079266 (= res!719309 (and (= (size!33877 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33876 _keys!1070) (size!33877 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079267 () Bool)

(declare-fun res!719307 () Bool)

(assert (=> b!1079267 (=> (not res!719307) (not e!617091))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079267 (= res!719307 (validKeyInArray!0 k!904))))

(declare-fun b!1079268 () Bool)

(declare-fun e!617093 () Bool)

(declare-fun tp_is_empty!26213 () Bool)

(assert (=> b!1079268 (= e!617093 tp_is_empty!26213)))

(declare-fun b!1079269 () Bool)

(declare-fun res!719304 () Bool)

(assert (=> b!1079269 (=> (not res!719304) (not e!617091))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079269 (= res!719304 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33876 _keys!1070))))))

(declare-fun b!1079270 () Bool)

(assert (=> b!1079270 (= e!617091 e!617094)))

(declare-fun res!719311 () Bool)

(assert (=> b!1079270 (=> (not res!719311) (not e!617094))))

(assert (=> b!1079270 (= res!719311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478768 mask!1414))))

(assert (=> b!1079270 (= lt!478768 (array!69339 (store (arr!33339 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33876 _keys!1070)))))

(declare-fun b!1079271 () Bool)

(declare-fun e!617090 () Bool)

(assert (=> b!1079271 (= e!617090 tp_is_empty!26213)))

(declare-fun b!1079272 () Bool)

(declare-fun e!617092 () Bool)

(declare-fun mapRes!41074 () Bool)

(assert (=> b!1079272 (= e!617092 (and e!617093 mapRes!41074))))

(declare-fun condMapEmpty!41074 () Bool)

(declare-fun mapDefault!41074 () ValueCell!12397)

