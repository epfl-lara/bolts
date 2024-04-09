; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77542 () Bool)

(assert start!77542)

(declare-fun b_free!16099 () Bool)

(declare-fun b_next!16099 () Bool)

(assert (=> start!77542 (= b_free!16099 (not b_next!16099))))

(declare-fun tp!56560 () Bool)

(declare-fun b_and!26483 () Bool)

(assert (=> start!77542 (= tp!56560 b_and!26483)))

(declare-fun b!903023 () Bool)

(declare-fun e!505941 () Bool)

(declare-fun tp_is_empty!18517 () Bool)

(assert (=> b!903023 (= e!505941 tp_is_empty!18517)))

(declare-fun mapNonEmpty!29488 () Bool)

(declare-fun mapRes!29488 () Bool)

(declare-fun tp!56559 () Bool)

(declare-fun e!505943 () Bool)

(assert (=> mapNonEmpty!29488 (= mapRes!29488 (and tp!56559 e!505943))))

(declare-datatypes ((V!29655 0))(
  ( (V!29656 (val!9309 Int)) )
))
(declare-datatypes ((ValueCell!8777 0))(
  ( (ValueCellFull!8777 (v!11814 V!29655)) (EmptyCell!8777) )
))
(declare-datatypes ((array!53080 0))(
  ( (array!53081 (arr!25495 (Array (_ BitVec 32) ValueCell!8777)) (size!25955 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53080)

(declare-fun mapRest!29488 () (Array (_ BitVec 32) ValueCell!8777))

(declare-fun mapKey!29488 () (_ BitVec 32))

(declare-fun mapValue!29488 () ValueCell!8777)

(assert (=> mapNonEmpty!29488 (= (arr!25495 _values!1152) (store mapRest!29488 mapKey!29488 mapValue!29488))))

(declare-fun b!903024 () Bool)

(declare-fun res!609404 () Bool)

(declare-fun e!505942 () Bool)

(assert (=> b!903024 (=> (not res!609404) (not e!505942))))

(declare-datatypes ((array!53082 0))(
  ( (array!53083 (arr!25496 (Array (_ BitVec 32) (_ BitVec 64))) (size!25956 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53082)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53082 (_ BitVec 32)) Bool)

(assert (=> b!903024 (= res!609404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29488 () Bool)

(assert (=> mapIsEmpty!29488 mapRes!29488))

(declare-fun b!903025 () Bool)

(assert (=> b!903025 (= e!505943 tp_is_empty!18517)))

(declare-fun b!903026 () Bool)

(declare-fun e!505939 () Bool)

(assert (=> b!903026 (= e!505939 (and e!505941 mapRes!29488))))

(declare-fun condMapEmpty!29488 () Bool)

(declare-fun mapDefault!29488 () ValueCell!8777)

