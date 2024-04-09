; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96236 () Bool)

(assert start!96236)

(declare-fun b_free!22853 () Bool)

(declare-fun b_next!22853 () Bool)

(assert (=> start!96236 (= b_free!22853 (not b_next!22853))))

(declare-fun tp!80409 () Bool)

(declare-fun b_and!36399 () Bool)

(assert (=> start!96236 (= tp!80409 b_and!36399)))

(declare-fun b!1092431 () Bool)

(declare-fun res!729037 () Bool)

(declare-fun e!623903 () Bool)

(assert (=> b!1092431 (=> (not res!729037) (not e!623903))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70590 0))(
  ( (array!70591 (arr!33965 (Array (_ BitVec 32) (_ BitVec 64))) (size!34502 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70590)

(declare-datatypes ((V!40933 0))(
  ( (V!40934 (val!13484 Int)) )
))
(declare-datatypes ((ValueCell!12718 0))(
  ( (ValueCellFull!12718 (v!16106 V!40933)) (EmptyCell!12718) )
))
(declare-datatypes ((array!70592 0))(
  ( (array!70593 (arr!33966 (Array (_ BitVec 32) ValueCell!12718)) (size!34503 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70592)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1092431 (= res!729037 (and (= (size!34503 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34502 _keys!1070) (size!34503 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!729040 () Bool)

(assert (=> start!96236 (=> (not res!729040) (not e!623903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96236 (= res!729040 (validMask!0 mask!1414))))

(assert (=> start!96236 e!623903))

(assert (=> start!96236 tp!80409))

(assert (=> start!96236 true))

(declare-fun tp_is_empty!26855 () Bool)

(assert (=> start!96236 tp_is_empty!26855))

(declare-fun array_inv!26040 (array!70590) Bool)

(assert (=> start!96236 (array_inv!26040 _keys!1070)))

(declare-fun e!623908 () Bool)

(declare-fun array_inv!26041 (array!70592) Bool)

(assert (=> start!96236 (and (array_inv!26041 _values!874) e!623908)))

(declare-fun b!1092432 () Bool)

(declare-fun res!729036 () Bool)

(declare-fun e!623907 () Bool)

(assert (=> b!1092432 (=> (not res!729036) (not e!623907))))

(declare-fun lt!488288 () array!70590)

(declare-datatypes ((List!23866 0))(
  ( (Nil!23863) (Cons!23862 (h!25071 (_ BitVec 64)) (t!33784 List!23866)) )
))
(declare-fun arrayNoDuplicates!0 (array!70590 (_ BitVec 32) List!23866) Bool)

(assert (=> b!1092432 (= res!729036 (arrayNoDuplicates!0 lt!488288 #b00000000000000000000000000000000 Nil!23863))))

(declare-fun b!1092433 () Bool)

(declare-fun res!729034 () Bool)

(assert (=> b!1092433 (=> (not res!729034) (not e!623903))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092433 (= res!729034 (= (select (arr!33965 _keys!1070) i!650) k!904))))

(declare-fun b!1092434 () Bool)

(declare-fun res!729035 () Bool)

(assert (=> b!1092434 (=> (not res!729035) (not e!623903))))

(assert (=> b!1092434 (= res!729035 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34502 _keys!1070))))))

(declare-fun b!1092435 () Bool)

(declare-fun res!729041 () Bool)

(assert (=> b!1092435 (=> (not res!729041) (not e!623903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092435 (= res!729041 (validKeyInArray!0 k!904))))

(declare-fun b!1092436 () Bool)

(declare-fun res!729039 () Bool)

(assert (=> b!1092436 (=> (not res!729039) (not e!623903))))

(assert (=> b!1092436 (= res!729039 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23863))))

(declare-fun b!1092437 () Bool)

(declare-fun e!623906 () Bool)

(assert (=> b!1092437 (= e!623906 tp_is_empty!26855)))

(declare-fun b!1092438 () Bool)

(declare-fun mapRes!42037 () Bool)

(assert (=> b!1092438 (= e!623908 (and e!623906 mapRes!42037))))

(declare-fun condMapEmpty!42037 () Bool)

(declare-fun mapDefault!42037 () ValueCell!12718)

