; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96110 () Bool)

(assert start!96110)

(declare-fun b_free!22727 () Bool)

(declare-fun b_next!22727 () Bool)

(assert (=> start!96110 (= b_free!22727 (not b_next!22727))))

(declare-fun tp!80030 () Bool)

(declare-fun b_and!36147 () Bool)

(assert (=> start!96110 (= tp!80030 b_and!36147)))

(declare-fun b!1089684 () Bool)

(declare-fun res!726979 () Bool)

(declare-fun e!622432 () Bool)

(assert (=> b!1089684 (=> (not res!726979) (not e!622432))))

(declare-datatypes ((array!70346 0))(
  ( (array!70347 (arr!33843 (Array (_ BitVec 32) (_ BitVec 64))) (size!34380 (_ BitVec 32))) )
))
(declare-fun lt!485927 () array!70346)

(declare-datatypes ((List!23767 0))(
  ( (Nil!23764) (Cons!23763 (h!24972 (_ BitVec 64)) (t!33559 List!23767)) )
))
(declare-fun arrayNoDuplicates!0 (array!70346 (_ BitVec 32) List!23767) Bool)

(assert (=> b!1089684 (= res!726979 (arrayNoDuplicates!0 lt!485927 #b00000000000000000000000000000000 Nil!23764))))

(declare-fun b!1089685 () Bool)

(declare-fun res!726982 () Bool)

(declare-fun e!622429 () Bool)

(assert (=> b!1089685 (=> (not res!726982) (not e!622429))))

(declare-fun _keys!1070 () array!70346)

(assert (=> b!1089685 (= res!726982 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23764))))

(declare-fun b!1089686 () Bool)

(assert (=> b!1089686 (= e!622429 e!622432)))

(declare-fun res!726987 () Bool)

(assert (=> b!1089686 (=> (not res!726987) (not e!622432))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70346 (_ BitVec 32)) Bool)

(assert (=> b!1089686 (= res!726987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485927 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089686 (= lt!485927 (array!70347 (store (arr!33843 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34380 _keys!1070)))))

(declare-fun b!1089687 () Bool)

(declare-fun res!726981 () Bool)

(assert (=> b!1089687 (=> (not res!726981) (not e!622429))))

(assert (=> b!1089687 (= res!726981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089688 () Bool)

(declare-fun e!622431 () Bool)

(declare-fun e!622428 () Bool)

(declare-fun mapRes!41848 () Bool)

(assert (=> b!1089688 (= e!622431 (and e!622428 mapRes!41848))))

(declare-fun condMapEmpty!41848 () Bool)

(declare-datatypes ((V!40765 0))(
  ( (V!40766 (val!13421 Int)) )
))
(declare-datatypes ((ValueCell!12655 0))(
  ( (ValueCellFull!12655 (v!16043 V!40765)) (EmptyCell!12655) )
))
(declare-datatypes ((array!70348 0))(
  ( (array!70349 (arr!33844 (Array (_ BitVec 32) ValueCell!12655)) (size!34381 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70348)

(declare-fun mapDefault!41848 () ValueCell!12655)

