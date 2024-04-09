; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95824 () Bool)

(assert start!95824)

(declare-fun b_free!22441 () Bool)

(declare-fun b_next!22441 () Bool)

(assert (=> start!95824 (= b_free!22441 (not b_next!22441))))

(declare-fun tp!79173 () Bool)

(declare-fun b_and!35575 () Bool)

(assert (=> start!95824 (= tp!79173 b_and!35575)))

(declare-fun mapNonEmpty!41419 () Bool)

(declare-fun mapRes!41419 () Bool)

(declare-fun tp!79172 () Bool)

(declare-fun e!619163 () Bool)

(assert (=> mapNonEmpty!41419 (= mapRes!41419 (and tp!79172 e!619163))))

(declare-datatypes ((V!40385 0))(
  ( (V!40386 (val!13278 Int)) )
))
(declare-datatypes ((ValueCell!12512 0))(
  ( (ValueCellFull!12512 (v!15900 V!40385)) (EmptyCell!12512) )
))
(declare-datatypes ((array!69788 0))(
  ( (array!69789 (arr!33564 (Array (_ BitVec 32) ValueCell!12512)) (size!34101 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69788)

(declare-fun mapRest!41419 () (Array (_ BitVec 32) ValueCell!12512))

(declare-fun mapKey!41419 () (_ BitVec 32))

(declare-fun mapValue!41419 () ValueCell!12512)

(assert (=> mapNonEmpty!41419 (= (arr!33564 _values!874) (store mapRest!41419 mapKey!41419 mapValue!41419))))

(declare-fun b!1083541 () Bool)

(declare-fun res!722416 () Bool)

(declare-fun e!619162 () Bool)

(assert (=> b!1083541 (=> (not res!722416) (not e!619162))))

(declare-datatypes ((array!69790 0))(
  ( (array!69791 (arr!33565 (Array (_ BitVec 32) (_ BitVec 64))) (size!34102 (_ BitVec 32))) )
))
(declare-fun lt!480133 () array!69790)

(declare-datatypes ((List!23528 0))(
  ( (Nil!23525) (Cons!23524 (h!24733 (_ BitVec 64)) (t!33034 List!23528)) )
))
(declare-fun arrayNoDuplicates!0 (array!69790 (_ BitVec 32) List!23528) Bool)

(assert (=> b!1083541 (= res!722416 (arrayNoDuplicates!0 lt!480133 #b00000000000000000000000000000000 Nil!23525))))

(declare-fun b!1083542 () Bool)

(declare-fun res!722412 () Bool)

(declare-fun e!619160 () Bool)

(assert (=> b!1083542 (=> (not res!722412) (not e!619160))))

(declare-fun _keys!1070 () array!69790)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083542 (= res!722412 (= (select (arr!33565 _keys!1070) i!650) k!904))))

(declare-fun b!1083543 () Bool)

(assert (=> b!1083543 (= e!619160 e!619162)))

(declare-fun res!722411 () Bool)

(assert (=> b!1083543 (=> (not res!722411) (not e!619162))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69790 (_ BitVec 32)) Bool)

(assert (=> b!1083543 (= res!722411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480133 mask!1414))))

(assert (=> b!1083543 (= lt!480133 (array!69791 (store (arr!33565 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34102 _keys!1070)))))

(declare-fun b!1083544 () Bool)

(declare-fun res!722414 () Bool)

(assert (=> b!1083544 (=> (not res!722414) (not e!619160))))

(assert (=> b!1083544 (= res!722414 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34102 _keys!1070))))))

(declare-fun b!1083545 () Bool)

(declare-fun res!722417 () Bool)

(assert (=> b!1083545 (=> (not res!722417) (not e!619160))))

(assert (=> b!1083545 (= res!722417 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23525))))

(declare-fun mapIsEmpty!41419 () Bool)

(assert (=> mapIsEmpty!41419 mapRes!41419))

(declare-fun b!1083546 () Bool)

(declare-fun e!619161 () Bool)

(declare-fun tp_is_empty!26443 () Bool)

(assert (=> b!1083546 (= e!619161 tp_is_empty!26443)))

(declare-fun res!722410 () Bool)

(assert (=> start!95824 (=> (not res!722410) (not e!619160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95824 (= res!722410 (validMask!0 mask!1414))))

(assert (=> start!95824 e!619160))

(assert (=> start!95824 tp!79173))

(assert (=> start!95824 true))

(assert (=> start!95824 tp_is_empty!26443))

(declare-fun array_inv!25756 (array!69790) Bool)

(assert (=> start!95824 (array_inv!25756 _keys!1070)))

(declare-fun e!619164 () Bool)

(declare-fun array_inv!25757 (array!69788) Bool)

(assert (=> start!95824 (and (array_inv!25757 _values!874) e!619164)))

(declare-fun b!1083547 () Bool)

(declare-fun res!722415 () Bool)

(assert (=> b!1083547 (=> (not res!722415) (not e!619160))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1083547 (= res!722415 (and (= (size!34101 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34102 _keys!1070) (size!34101 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083548 () Bool)

(assert (=> b!1083548 (= e!619163 tp_is_empty!26443)))

(declare-fun b!1083549 () Bool)

(declare-fun res!722413 () Bool)

(assert (=> b!1083549 (=> (not res!722413) (not e!619160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083549 (= res!722413 (validKeyInArray!0 k!904))))

(declare-fun b!1083550 () Bool)

(assert (=> b!1083550 (= e!619164 (and e!619161 mapRes!41419))))

(declare-fun condMapEmpty!41419 () Bool)

(declare-fun mapDefault!41419 () ValueCell!12512)

