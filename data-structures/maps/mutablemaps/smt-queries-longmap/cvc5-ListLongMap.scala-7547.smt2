; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95638 () Bool)

(assert start!95638)

(declare-fun b_free!22255 () Bool)

(declare-fun b_next!22255 () Bool)

(assert (=> start!95638 (= b_free!22255 (not b_next!22255))))

(declare-fun tp!78615 () Bool)

(declare-fun b_and!35251 () Bool)

(assert (=> start!95638 (= tp!78615 b_and!35251)))

(declare-fun b!1080055 () Bool)

(declare-fun res!719903 () Bool)

(declare-fun e!617490 () Bool)

(assert (=> b!1080055 (=> (not res!719903) (not e!617490))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69420 0))(
  ( (array!69421 (arr!33380 (Array (_ BitVec 32) (_ BitVec 64))) (size!33917 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69420)

(declare-datatypes ((V!40137 0))(
  ( (V!40138 (val!13185 Int)) )
))
(declare-datatypes ((ValueCell!12419 0))(
  ( (ValueCellFull!12419 (v!15807 V!40137)) (EmptyCell!12419) )
))
(declare-datatypes ((array!69422 0))(
  ( (array!69423 (arr!33381 (Array (_ BitVec 32) ValueCell!12419)) (size!33918 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69422)

(assert (=> b!1080055 (= res!719903 (and (= (size!33918 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33917 _keys!1070) (size!33918 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080056 () Bool)

(declare-fun e!617486 () Bool)

(assert (=> b!1080056 (= e!617490 e!617486)))

(declare-fun res!719901 () Bool)

(assert (=> b!1080056 (=> (not res!719901) (not e!617486))))

(declare-fun lt!478913 () array!69420)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69420 (_ BitVec 32)) Bool)

(assert (=> b!1080056 (= res!719901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478913 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080056 (= lt!478913 (array!69421 (store (arr!33380 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33917 _keys!1070)))))

(declare-fun b!1080057 () Bool)

(declare-fun e!617488 () Bool)

(declare-fun tp_is_empty!26257 () Bool)

(assert (=> b!1080057 (= e!617488 tp_is_empty!26257)))

(declare-fun b!1080058 () Bool)

(declare-fun res!719905 () Bool)

(assert (=> b!1080058 (=> (not res!719905) (not e!617490))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1080058 (= res!719905 (= (select (arr!33380 _keys!1070) i!650) k!904))))

(declare-fun b!1080059 () Bool)

(declare-fun e!617489 () Bool)

(declare-fun e!617487 () Bool)

(declare-fun mapRes!41140 () Bool)

(assert (=> b!1080059 (= e!617489 (and e!617487 mapRes!41140))))

(declare-fun condMapEmpty!41140 () Bool)

(declare-fun mapDefault!41140 () ValueCell!12419)

