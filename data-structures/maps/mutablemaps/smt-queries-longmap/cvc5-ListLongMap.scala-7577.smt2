; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95818 () Bool)

(assert start!95818)

(declare-fun b_free!22435 () Bool)

(declare-fun b_next!22435 () Bool)

(assert (=> start!95818 (= b_free!22435 (not b_next!22435))))

(declare-fun tp!79154 () Bool)

(declare-fun b_and!35563 () Bool)

(assert (=> start!95818 (= tp!79154 b_and!35563)))

(declare-fun b!1083427 () Bool)

(declare-fun e!619107 () Bool)

(declare-fun tp_is_empty!26437 () Bool)

(assert (=> b!1083427 (= e!619107 tp_is_empty!26437)))

(declare-fun b!1083428 () Bool)

(declare-fun e!619110 () Bool)

(assert (=> b!1083428 (= e!619110 tp_is_empty!26437)))

(declare-fun b!1083429 () Bool)

(declare-fun res!722329 () Bool)

(declare-fun e!619109 () Bool)

(assert (=> b!1083429 (=> (not res!722329) (not e!619109))))

(declare-datatypes ((array!69776 0))(
  ( (array!69777 (arr!33558 (Array (_ BitVec 32) (_ BitVec 64))) (size!34095 (_ BitVec 32))) )
))
(declare-fun lt!480073 () array!69776)

(declare-datatypes ((List!23525 0))(
  ( (Nil!23522) (Cons!23521 (h!24730 (_ BitVec 64)) (t!33025 List!23525)) )
))
(declare-fun arrayNoDuplicates!0 (array!69776 (_ BitVec 32) List!23525) Bool)

(assert (=> b!1083429 (= res!722329 (arrayNoDuplicates!0 lt!480073 #b00000000000000000000000000000000 Nil!23522))))

(declare-fun mapNonEmpty!41410 () Bool)

(declare-fun mapRes!41410 () Bool)

(declare-fun tp!79155 () Bool)

(assert (=> mapNonEmpty!41410 (= mapRes!41410 (and tp!79155 e!619107))))

(declare-datatypes ((V!40377 0))(
  ( (V!40378 (val!13275 Int)) )
))
(declare-datatypes ((ValueCell!12509 0))(
  ( (ValueCellFull!12509 (v!15897 V!40377)) (EmptyCell!12509) )
))
(declare-datatypes ((array!69778 0))(
  ( (array!69779 (arr!33559 (Array (_ BitVec 32) ValueCell!12509)) (size!34096 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69778)

(declare-fun mapRest!41410 () (Array (_ BitVec 32) ValueCell!12509))

(declare-fun mapValue!41410 () ValueCell!12509)

(declare-fun mapKey!41410 () (_ BitVec 32))

(assert (=> mapNonEmpty!41410 (= (arr!33559 _values!874) (store mapRest!41410 mapKey!41410 mapValue!41410))))

(declare-fun mapIsEmpty!41410 () Bool)

(assert (=> mapIsEmpty!41410 mapRes!41410))

(declare-fun b!1083430 () Bool)

(declare-fun res!722334 () Bool)

(declare-fun e!619108 () Bool)

(assert (=> b!1083430 (=> (not res!722334) (not e!619108))))

(declare-fun _keys!1070 () array!69776)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69776 (_ BitVec 32)) Bool)

(assert (=> b!1083430 (= res!722334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083431 () Bool)

(declare-fun res!722335 () Bool)

(assert (=> b!1083431 (=> (not res!722335) (not e!619108))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1083431 (= res!722335 (and (= (size!34096 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34095 _keys!1070) (size!34096 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083432 () Bool)

(declare-fun e!619111 () Bool)

(assert (=> b!1083432 (= e!619111 (and e!619110 mapRes!41410))))

(declare-fun condMapEmpty!41410 () Bool)

(declare-fun mapDefault!41410 () ValueCell!12509)

