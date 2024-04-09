; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95584 () Bool)

(assert start!95584)

(declare-fun b!1079083 () Bool)

(declare-fun e!617004 () Bool)

(assert (=> b!1079083 (= e!617004 (not true))))

(declare-datatypes ((array!69318 0))(
  ( (array!69319 (arr!33329 (Array (_ BitVec 32) (_ BitVec 64))) (size!33866 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69318)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079083 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35427 0))(
  ( (Unit!35428) )
))
(declare-fun lt!478738 () Unit!35427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69318 (_ BitVec 64) (_ BitVec 32)) Unit!35427)

(assert (=> b!1079083 (= lt!478738 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079084 () Bool)

(declare-fun res!719170 () Bool)

(declare-fun e!617002 () Bool)

(assert (=> b!1079084 (=> (not res!719170) (not e!617002))))

(declare-datatypes ((List!23368 0))(
  ( (Nil!23365) (Cons!23364 (h!24573 (_ BitVec 64)) (t!32734 List!23368)) )
))
(declare-fun arrayNoDuplicates!0 (array!69318 (_ BitVec 32) List!23368) Bool)

(assert (=> b!1079084 (= res!719170 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23365))))

(declare-fun b!1079085 () Bool)

(declare-fun res!719171 () Bool)

(assert (=> b!1079085 (=> (not res!719171) (not e!617002))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40065 0))(
  ( (V!40066 (val!13158 Int)) )
))
(declare-datatypes ((ValueCell!12392 0))(
  ( (ValueCellFull!12392 (v!15780 V!40065)) (EmptyCell!12392) )
))
(declare-datatypes ((array!69320 0))(
  ( (array!69321 (arr!33330 (Array (_ BitVec 32) ValueCell!12392)) (size!33867 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69320)

(assert (=> b!1079085 (= res!719171 (and (= (size!33867 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33866 _keys!1070) (size!33867 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079086 () Bool)

(assert (=> b!1079086 (= e!617002 e!617004)))

(declare-fun res!719175 () Bool)

(assert (=> b!1079086 (=> (not res!719175) (not e!617004))))

(declare-fun lt!478739 () array!69318)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69318 (_ BitVec 32)) Bool)

(assert (=> b!1079086 (= res!719175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478739 mask!1414))))

(assert (=> b!1079086 (= lt!478739 (array!69319 (store (arr!33329 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33866 _keys!1070)))))

(declare-fun b!1079087 () Bool)

(declare-fun res!719172 () Bool)

(assert (=> b!1079087 (=> (not res!719172) (not e!617004))))

(assert (=> b!1079087 (= res!719172 (arrayNoDuplicates!0 lt!478739 #b00000000000000000000000000000000 Nil!23365))))

(declare-fun b!1079088 () Bool)

(declare-fun res!719169 () Bool)

(assert (=> b!1079088 (=> (not res!719169) (not e!617002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079088 (= res!719169 (validKeyInArray!0 k!904))))

(declare-fun b!1079089 () Bool)

(declare-fun e!617001 () Bool)

(declare-fun tp_is_empty!26203 () Bool)

(assert (=> b!1079089 (= e!617001 tp_is_empty!26203)))

(declare-fun b!1079090 () Bool)

(declare-fun res!719173 () Bool)

(assert (=> b!1079090 (=> (not res!719173) (not e!617002))))

(assert (=> b!1079090 (= res!719173 (= (select (arr!33329 _keys!1070) i!650) k!904))))

(declare-fun b!1079091 () Bool)

(declare-fun res!719176 () Bool)

(assert (=> b!1079091 (=> (not res!719176) (not e!617002))))

(assert (=> b!1079091 (= res!719176 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33866 _keys!1070))))))

(declare-fun res!719177 () Bool)

(assert (=> start!95584 (=> (not res!719177) (not e!617002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95584 (= res!719177 (validMask!0 mask!1414))))

(assert (=> start!95584 e!617002))

(assert (=> start!95584 true))

(declare-fun array_inv!25610 (array!69318) Bool)

(assert (=> start!95584 (array_inv!25610 _keys!1070)))

(declare-fun e!617005 () Bool)

(declare-fun array_inv!25611 (array!69320) Bool)

(assert (=> start!95584 (and (array_inv!25611 _values!874) e!617005)))

(declare-fun mapNonEmpty!41059 () Bool)

(declare-fun mapRes!41059 () Bool)

(declare-fun tp!78522 () Bool)

(declare-fun e!617003 () Bool)

(assert (=> mapNonEmpty!41059 (= mapRes!41059 (and tp!78522 e!617003))))

(declare-fun mapKey!41059 () (_ BitVec 32))

(declare-fun mapRest!41059 () (Array (_ BitVec 32) ValueCell!12392))

(declare-fun mapValue!41059 () ValueCell!12392)

(assert (=> mapNonEmpty!41059 (= (arr!33330 _values!874) (store mapRest!41059 mapKey!41059 mapValue!41059))))

(declare-fun b!1079092 () Bool)

(assert (=> b!1079092 (= e!617003 tp_is_empty!26203)))

(declare-fun b!1079093 () Bool)

(assert (=> b!1079093 (= e!617005 (and e!617001 mapRes!41059))))

(declare-fun condMapEmpty!41059 () Bool)

(declare-fun mapDefault!41059 () ValueCell!12392)

