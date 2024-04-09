; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95878 () Bool)

(assert start!95878)

(declare-fun b_free!22495 () Bool)

(declare-fun b_next!22495 () Bool)

(assert (=> start!95878 (= b_free!22495 (not b_next!22495))))

(declare-fun tp!79335 () Bool)

(declare-fun b_and!35683 () Bool)

(assert (=> start!95878 (= tp!79335 b_and!35683)))

(declare-fun b!1084574 () Bool)

(declare-fun res!723144 () Bool)

(declare-fun e!619650 () Bool)

(assert (=> b!1084574 (=> (not res!723144) (not e!619650))))

(declare-datatypes ((array!69896 0))(
  ( (array!69897 (arr!33618 (Array (_ BitVec 32) (_ BitVec 64))) (size!34155 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69896)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084574 (= res!723144 (= (select (arr!33618 _keys!1070) i!650) k!904))))

(declare-fun b!1084575 () Bool)

(declare-fun res!723153 () Bool)

(declare-fun e!619657 () Bool)

(assert (=> b!1084575 (=> (not res!723153) (not e!619657))))

(declare-datatypes ((V!40457 0))(
  ( (V!40458 (val!13305 Int)) )
))
(declare-datatypes ((tuple2!16926 0))(
  ( (tuple2!16927 (_1!8473 (_ BitVec 64)) (_2!8473 V!40457)) )
))
(declare-fun lt!480782 () tuple2!16926)

(declare-fun lt!480781 () tuple2!16926)

(declare-datatypes ((List!23569 0))(
  ( (Nil!23566) (Cons!23565 (h!24774 tuple2!16926) (t!33129 List!23569)) )
))
(declare-datatypes ((ListLongMap!14907 0))(
  ( (ListLongMap!14908 (toList!7469 List!23569)) )
))
(declare-fun lt!480787 () ListLongMap!14907)

(declare-fun lt!480789 () ListLongMap!14907)

(declare-fun +!3202 (ListLongMap!14907 tuple2!16926) ListLongMap!14907)

(assert (=> b!1084575 (= res!723153 (= lt!480789 (+!3202 (+!3202 lt!480787 lt!480781) lt!480782)))))

(declare-fun b!1084576 () Bool)

(declare-fun res!723148 () Bool)

(assert (=> b!1084576 (=> (not res!723148) (not e!619650))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69896 (_ BitVec 32)) Bool)

(assert (=> b!1084576 (= res!723148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun lt!480790 () ListLongMap!14907)

(declare-fun lt!480788 () ListLongMap!14907)

(declare-fun b!1084577 () Bool)

(assert (=> b!1084577 (= e!619657 (= lt!480788 (+!3202 (+!3202 lt!480790 lt!480781) lt!480782)))))

(declare-fun b!1084578 () Bool)

(declare-fun res!723152 () Bool)

(assert (=> b!1084578 (=> (not res!723152) (not e!619650))))

(assert (=> b!1084578 (= res!723152 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34155 _keys!1070))))))

(declare-fun mapNonEmpty!41500 () Bool)

(declare-fun mapRes!41500 () Bool)

(declare-fun tp!79334 () Bool)

(declare-fun e!619651 () Bool)

(assert (=> mapNonEmpty!41500 (= mapRes!41500 (and tp!79334 e!619651))))

(declare-datatypes ((ValueCell!12539 0))(
  ( (ValueCellFull!12539 (v!15927 V!40457)) (EmptyCell!12539) )
))
(declare-fun mapRest!41500 () (Array (_ BitVec 32) ValueCell!12539))

(declare-fun mapValue!41500 () ValueCell!12539)

(declare-datatypes ((array!69898 0))(
  ( (array!69899 (arr!33619 (Array (_ BitVec 32) ValueCell!12539)) (size!34156 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69898)

(declare-fun mapKey!41500 () (_ BitVec 32))

(assert (=> mapNonEmpty!41500 (= (arr!33619 _values!874) (store mapRest!41500 mapKey!41500 mapValue!41500))))

(declare-fun b!1084579 () Bool)

(declare-fun res!723154 () Bool)

(assert (=> b!1084579 (=> (not res!723154) (not e!619650))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084579 (= res!723154 (and (= (size!34156 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34155 _keys!1070) (size!34156 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084580 () Bool)

(declare-fun tp_is_empty!26497 () Bool)

(assert (=> b!1084580 (= e!619651 tp_is_empty!26497)))

(declare-fun b!1084581 () Bool)

(declare-fun e!619652 () Bool)

(declare-fun e!619656 () Bool)

(assert (=> b!1084581 (= e!619652 (and e!619656 mapRes!41500))))

(declare-fun condMapEmpty!41500 () Bool)

(declare-fun mapDefault!41500 () ValueCell!12539)

