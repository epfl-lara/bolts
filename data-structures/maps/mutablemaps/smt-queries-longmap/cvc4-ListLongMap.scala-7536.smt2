; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95560 () Bool)

(assert start!95560)

(declare-fun res!719036 () Bool)

(declare-fun e!616889 () Bool)

(assert (=> start!95560 (=> (not res!719036) (not e!616889))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95560 (= res!719036 (validMask!0 mask!1414))))

(assert (=> start!95560 e!616889))

(assert (=> start!95560 true))

(declare-datatypes ((array!69300 0))(
  ( (array!69301 (arr!33321 (Array (_ BitVec 32) (_ BitVec 64))) (size!33858 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69300)

(declare-fun array_inv!25602 (array!69300) Bool)

(assert (=> start!95560 (array_inv!25602 _keys!1070)))

(declare-datatypes ((V!40053 0))(
  ( (V!40054 (val!13154 Int)) )
))
(declare-datatypes ((ValueCell!12388 0))(
  ( (ValueCellFull!12388 (v!15776 V!40053)) (EmptyCell!12388) )
))
(declare-datatypes ((array!69302 0))(
  ( (array!69303 (arr!33322 (Array (_ BitVec 32) ValueCell!12388)) (size!33859 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69302)

(declare-fun e!616891 () Bool)

(declare-fun array_inv!25603 (array!69302) Bool)

(assert (=> start!95560 (and (array_inv!25603 _values!874) e!616891)))

(declare-fun b!1078889 () Bool)

(declare-fun res!719041 () Bool)

(assert (=> b!1078889 (=> (not res!719041) (not e!616889))))

(declare-datatypes ((List!23364 0))(
  ( (Nil!23361) (Cons!23360 (h!24569 (_ BitVec 64)) (t!32730 List!23364)) )
))
(declare-fun arrayNoDuplicates!0 (array!69300 (_ BitVec 32) List!23364) Bool)

(assert (=> b!1078889 (= res!719041 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23361))))

(declare-fun b!1078890 () Bool)

(declare-fun e!616890 () Bool)

(assert (=> b!1078890 (= e!616889 e!616890)))

(declare-fun res!719039 () Bool)

(assert (=> b!1078890 (=> (not res!719039) (not e!616890))))

(declare-fun lt!478700 () array!69300)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69300 (_ BitVec 32)) Bool)

(assert (=> b!1078890 (= res!719039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478700 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078890 (= lt!478700 (array!69301 (store (arr!33321 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33858 _keys!1070)))))

(declare-fun b!1078891 () Bool)

(declare-fun e!616892 () Bool)

(declare-fun tp_is_empty!26195 () Bool)

(assert (=> b!1078891 (= e!616892 tp_is_empty!26195)))

(declare-fun b!1078892 () Bool)

(declare-fun res!719040 () Bool)

(assert (=> b!1078892 (=> (not res!719040) (not e!616889))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078892 (= res!719040 (and (= (size!33859 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33858 _keys!1070) (size!33859 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078893 () Bool)

(assert (=> b!1078893 (= e!616890 (not (or (bvsge #b00000000000000000000000000000000 (size!33858 _keys!1070)) (bvslt (size!33858 _keys!1070) #b01111111111111111111111111111111))))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078893 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35421 0))(
  ( (Unit!35422) )
))
(declare-fun lt!478699 () Unit!35421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69300 (_ BitVec 64) (_ BitVec 32)) Unit!35421)

(assert (=> b!1078893 (= lt!478699 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1078894 () Bool)

(declare-fun e!616888 () Bool)

(declare-fun mapRes!41044 () Bool)

(assert (=> b!1078894 (= e!616891 (and e!616888 mapRes!41044))))

(declare-fun condMapEmpty!41044 () Bool)

(declare-fun mapDefault!41044 () ValueCell!12388)

