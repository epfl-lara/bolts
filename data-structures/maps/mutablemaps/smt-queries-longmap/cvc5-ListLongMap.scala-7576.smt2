; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95812 () Bool)

(assert start!95812)

(declare-fun b_free!22429 () Bool)

(declare-fun b_next!22429 () Bool)

(assert (=> start!95812 (= b_free!22429 (not b_next!22429))))

(declare-fun tp!79137 () Bool)

(declare-fun b_and!35551 () Bool)

(assert (=> start!95812 (= tp!79137 b_and!35551)))

(declare-fun b!1083313 () Bool)

(declare-fun res!722252 () Bool)

(declare-fun e!619055 () Bool)

(assert (=> b!1083313 (=> (not res!722252) (not e!619055))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69764 0))(
  ( (array!69765 (arr!33552 (Array (_ BitVec 32) (_ BitVec 64))) (size!34089 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69764)

(assert (=> b!1083313 (= res!722252 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34089 _keys!1070))))))

(declare-fun res!722251 () Bool)

(assert (=> start!95812 (=> (not res!722251) (not e!619055))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95812 (= res!722251 (validMask!0 mask!1414))))

(assert (=> start!95812 e!619055))

(assert (=> start!95812 tp!79137))

(assert (=> start!95812 true))

(declare-fun tp_is_empty!26431 () Bool)

(assert (=> start!95812 tp_is_empty!26431))

(declare-fun array_inv!25750 (array!69764) Bool)

(assert (=> start!95812 (array_inv!25750 _keys!1070)))

(declare-datatypes ((V!40369 0))(
  ( (V!40370 (val!13272 Int)) )
))
(declare-datatypes ((ValueCell!12506 0))(
  ( (ValueCellFull!12506 (v!15894 V!40369)) (EmptyCell!12506) )
))
(declare-datatypes ((array!69766 0))(
  ( (array!69767 (arr!33553 (Array (_ BitVec 32) ValueCell!12506)) (size!34090 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69766)

(declare-fun e!619056 () Bool)

(declare-fun array_inv!25751 (array!69766) Bool)

(assert (=> start!95812 (and (array_inv!25751 _values!874) e!619056)))

(declare-fun b!1083314 () Bool)

(declare-fun e!619054 () Bool)

(assert (=> b!1083314 (= e!619055 e!619054)))

(declare-fun res!722249 () Bool)

(assert (=> b!1083314 (=> (not res!722249) (not e!619054))))

(declare-fun lt!480020 () array!69764)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69764 (_ BitVec 32)) Bool)

(assert (=> b!1083314 (= res!722249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480020 mask!1414))))

(assert (=> b!1083314 (= lt!480020 (array!69765 (store (arr!33552 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34089 _keys!1070)))))

(declare-fun b!1083315 () Bool)

(declare-fun res!722248 () Bool)

(assert (=> b!1083315 (=> (not res!722248) (not e!619055))))

(declare-datatypes ((List!23522 0))(
  ( (Nil!23519) (Cons!23518 (h!24727 (_ BitVec 64)) (t!33016 List!23522)) )
))
(declare-fun arrayNoDuplicates!0 (array!69764 (_ BitVec 32) List!23522) Bool)

(assert (=> b!1083315 (= res!722248 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23519))))

(declare-fun b!1083316 () Bool)

(declare-fun e!619057 () Bool)

(assert (=> b!1083316 (= e!619057 tp_is_empty!26431)))

(declare-fun b!1083317 () Bool)

(declare-fun res!722250 () Bool)

(assert (=> b!1083317 (=> (not res!722250) (not e!619055))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1083317 (= res!722250 (and (= (size!34090 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34089 _keys!1070) (size!34090 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083318 () Bool)

(declare-fun res!722247 () Bool)

(assert (=> b!1083318 (=> (not res!722247) (not e!619055))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083318 (= res!722247 (validKeyInArray!0 k!904))))

(declare-fun b!1083319 () Bool)

(declare-fun res!722255 () Bool)

(assert (=> b!1083319 (=> (not res!722255) (not e!619055))))

(assert (=> b!1083319 (= res!722255 (= (select (arr!33552 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41401 () Bool)

(declare-fun mapRes!41401 () Bool)

(assert (=> mapIsEmpty!41401 mapRes!41401))

(declare-fun b!1083320 () Bool)

(declare-fun e!619052 () Bool)

(assert (=> b!1083320 (= e!619052 tp_is_empty!26431)))

(declare-fun mapNonEmpty!41401 () Bool)

(declare-fun tp!79136 () Bool)

(assert (=> mapNonEmpty!41401 (= mapRes!41401 (and tp!79136 e!619052))))

(declare-fun mapValue!41401 () ValueCell!12506)

(declare-fun mapKey!41401 () (_ BitVec 32))

(declare-fun mapRest!41401 () (Array (_ BitVec 32) ValueCell!12506))

(assert (=> mapNonEmpty!41401 (= (arr!33553 _values!874) (store mapRest!41401 mapKey!41401 mapValue!41401))))

(declare-fun b!1083321 () Bool)

(assert (=> b!1083321 (= e!619056 (and e!619057 mapRes!41401))))

(declare-fun condMapEmpty!41401 () Bool)

(declare-fun mapDefault!41401 () ValueCell!12506)

