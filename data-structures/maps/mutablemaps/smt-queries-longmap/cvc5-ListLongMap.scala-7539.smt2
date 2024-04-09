; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95590 () Bool)

(assert start!95590)

(declare-fun mapIsEmpty!41068 () Bool)

(declare-fun mapRes!41068 () Bool)

(assert (=> mapIsEmpty!41068 mapRes!41068))

(declare-fun b!1079191 () Bool)

(declare-fun e!617054 () Bool)

(declare-fun e!617059 () Bool)

(assert (=> b!1079191 (= e!617054 e!617059)))

(declare-fun res!719250 () Bool)

(assert (=> b!1079191 (=> (not res!719250) (not e!617059))))

(declare-datatypes ((array!69330 0))(
  ( (array!69331 (arr!33335 (Array (_ BitVec 32) (_ BitVec 64))) (size!33872 (_ BitVec 32))) )
))
(declare-fun lt!478757 () array!69330)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69330 (_ BitVec 32)) Bool)

(assert (=> b!1079191 (= res!719250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478757 mask!1414))))

(declare-fun _keys!1070 () array!69330)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079191 (= lt!478757 (array!69331 (store (arr!33335 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33872 _keys!1070)))))

(declare-fun b!1079192 () Bool)

(declare-fun res!719254 () Bool)

(assert (=> b!1079192 (=> (not res!719254) (not e!617054))))

(declare-datatypes ((List!23371 0))(
  ( (Nil!23368) (Cons!23367 (h!24576 (_ BitVec 64)) (t!32737 List!23371)) )
))
(declare-fun arrayNoDuplicates!0 (array!69330 (_ BitVec 32) List!23371) Bool)

(assert (=> b!1079192 (= res!719254 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23368))))

(declare-fun b!1079193 () Bool)

(declare-fun res!719253 () Bool)

(assert (=> b!1079193 (=> (not res!719253) (not e!617054))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1079193 (= res!719253 (= (select (arr!33335 _keys!1070) i!650) k!904))))

(declare-fun b!1079194 () Bool)

(declare-fun res!719258 () Bool)

(assert (=> b!1079194 (=> (not res!719258) (not e!617054))))

(assert (=> b!1079194 (= res!719258 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33872 _keys!1070))))))

(declare-fun b!1079196 () Bool)

(declare-fun res!719255 () Bool)

(assert (=> b!1079196 (=> (not res!719255) (not e!617059))))

(assert (=> b!1079196 (= res!719255 (arrayNoDuplicates!0 lt!478757 #b00000000000000000000000000000000 Nil!23368))))

(declare-fun b!1079197 () Bool)

(declare-fun res!719257 () Bool)

(assert (=> b!1079197 (=> (not res!719257) (not e!617054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079197 (= res!719257 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41068 () Bool)

(declare-fun tp!78531 () Bool)

(declare-fun e!617057 () Bool)

(assert (=> mapNonEmpty!41068 (= mapRes!41068 (and tp!78531 e!617057))))

(declare-datatypes ((V!40073 0))(
  ( (V!40074 (val!13161 Int)) )
))
(declare-datatypes ((ValueCell!12395 0))(
  ( (ValueCellFull!12395 (v!15783 V!40073)) (EmptyCell!12395) )
))
(declare-datatypes ((array!69332 0))(
  ( (array!69333 (arr!33336 (Array (_ BitVec 32) ValueCell!12395)) (size!33873 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69332)

(declare-fun mapRest!41068 () (Array (_ BitVec 32) ValueCell!12395))

(declare-fun mapValue!41068 () ValueCell!12395)

(declare-fun mapKey!41068 () (_ BitVec 32))

(assert (=> mapNonEmpty!41068 (= (arr!33336 _values!874) (store mapRest!41068 mapKey!41068 mapValue!41068))))

(declare-fun b!1079198 () Bool)

(declare-fun e!617058 () Bool)

(declare-fun e!617056 () Bool)

(assert (=> b!1079198 (= e!617058 (and e!617056 mapRes!41068))))

(declare-fun condMapEmpty!41068 () Bool)

(declare-fun mapDefault!41068 () ValueCell!12395)

