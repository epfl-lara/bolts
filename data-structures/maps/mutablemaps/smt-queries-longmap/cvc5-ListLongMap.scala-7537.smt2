; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95578 () Bool)

(assert start!95578)

(declare-fun mapIsEmpty!41050 () Bool)

(declare-fun mapRes!41050 () Bool)

(assert (=> mapIsEmpty!41050 mapRes!41050))

(declare-fun b!1078975 () Bool)

(declare-fun res!719088 () Bool)

(declare-fun e!616949 () Bool)

(assert (=> b!1078975 (=> (not res!719088) (not e!616949))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078975 (= res!719088 (validKeyInArray!0 k!904))))

(declare-fun b!1078976 () Bool)

(declare-fun res!719091 () Bool)

(declare-fun e!616947 () Bool)

(assert (=> b!1078976 (=> (not res!719091) (not e!616947))))

(declare-datatypes ((array!69306 0))(
  ( (array!69307 (arr!33323 (Array (_ BitVec 32) (_ BitVec 64))) (size!33860 (_ BitVec 32))) )
))
(declare-fun lt!478721 () array!69306)

(declare-datatypes ((List!23365 0))(
  ( (Nil!23362) (Cons!23361 (h!24570 (_ BitVec 64)) (t!32731 List!23365)) )
))
(declare-fun arrayNoDuplicates!0 (array!69306 (_ BitVec 32) List!23365) Bool)

(assert (=> b!1078976 (= res!719091 (arrayNoDuplicates!0 lt!478721 #b00000000000000000000000000000000 Nil!23362))))

(declare-fun b!1078978 () Bool)

(declare-fun res!719094 () Bool)

(assert (=> b!1078978 (=> (not res!719094) (not e!616949))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69306)

(assert (=> b!1078978 (= res!719094 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33860 _keys!1070))))))

(declare-fun b!1078979 () Bool)

(declare-fun res!719090 () Bool)

(assert (=> b!1078979 (=> (not res!719090) (not e!616949))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69306 (_ BitVec 32)) Bool)

(assert (=> b!1078979 (= res!719090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078980 () Bool)

(declare-fun res!719096 () Bool)

(assert (=> b!1078980 (=> (not res!719096) (not e!616949))))

(assert (=> b!1078980 (= res!719096 (= (select (arr!33323 _keys!1070) i!650) k!904))))

(declare-fun b!1078981 () Bool)

(assert (=> b!1078981 (= e!616949 e!616947)))

(declare-fun res!719089 () Bool)

(assert (=> b!1078981 (=> (not res!719089) (not e!616947))))

(assert (=> b!1078981 (= res!719089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478721 mask!1414))))

(assert (=> b!1078981 (= lt!478721 (array!69307 (store (arr!33323 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33860 _keys!1070)))))

(declare-fun res!719093 () Bool)

(assert (=> start!95578 (=> (not res!719093) (not e!616949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95578 (= res!719093 (validMask!0 mask!1414))))

(assert (=> start!95578 e!616949))

(assert (=> start!95578 true))

(declare-fun array_inv!25604 (array!69306) Bool)

(assert (=> start!95578 (array_inv!25604 _keys!1070)))

(declare-datatypes ((V!40057 0))(
  ( (V!40058 (val!13155 Int)) )
))
(declare-datatypes ((ValueCell!12389 0))(
  ( (ValueCellFull!12389 (v!15777 V!40057)) (EmptyCell!12389) )
))
(declare-datatypes ((array!69308 0))(
  ( (array!69309 (arr!33324 (Array (_ BitVec 32) ValueCell!12389)) (size!33861 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69308)

(declare-fun e!616948 () Bool)

(declare-fun array_inv!25605 (array!69308) Bool)

(assert (=> start!95578 (and (array_inv!25605 _values!874) e!616948)))

(declare-fun b!1078977 () Bool)

(declare-fun e!616946 () Bool)

(assert (=> b!1078977 (= e!616948 (and e!616946 mapRes!41050))))

(declare-fun condMapEmpty!41050 () Bool)

(declare-fun mapDefault!41050 () ValueCell!12389)

