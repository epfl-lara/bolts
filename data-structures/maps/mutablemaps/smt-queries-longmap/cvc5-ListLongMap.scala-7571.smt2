; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95782 () Bool)

(assert start!95782)

(declare-fun b_free!22399 () Bool)

(declare-fun b_next!22399 () Bool)

(assert (=> start!95782 (= b_free!22399 (not b_next!22399))))

(declare-fun tp!79046 () Bool)

(declare-fun b_and!35491 () Bool)

(assert (=> start!95782 (= tp!79046 b_and!35491)))

(declare-fun b!1082743 () Bool)

(declare-fun e!618785 () Bool)

(declare-fun tp_is_empty!26401 () Bool)

(assert (=> b!1082743 (= e!618785 tp_is_empty!26401)))

(declare-fun b!1082744 () Bool)

(declare-fun res!721848 () Bool)

(declare-fun e!618784 () Bool)

(assert (=> b!1082744 (=> (not res!721848) (not e!618784))))

(declare-datatypes ((array!69704 0))(
  ( (array!69705 (arr!33522 (Array (_ BitVec 32) (_ BitVec 64))) (size!34059 (_ BitVec 32))) )
))
(declare-fun lt!479749 () array!69704)

(declare-datatypes ((List!23498 0))(
  ( (Nil!23495) (Cons!23494 (h!24703 (_ BitVec 64)) (t!32962 List!23498)) )
))
(declare-fun arrayNoDuplicates!0 (array!69704 (_ BitVec 32) List!23498) Bool)

(assert (=> b!1082744 (= res!721848 (arrayNoDuplicates!0 lt!479749 #b00000000000000000000000000000000 Nil!23495))))

(declare-fun b!1082745 () Bool)

(declare-fun e!618783 () Bool)

(assert (=> b!1082745 (= e!618783 tp_is_empty!26401)))

(declare-fun b!1082746 () Bool)

(declare-fun res!721846 () Bool)

(declare-fun e!618786 () Bool)

(assert (=> b!1082746 (=> (not res!721846) (not e!618786))))

(declare-fun _keys!1070 () array!69704)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082746 (= res!721846 (= (select (arr!33522 _keys!1070) i!650) k!904))))

(declare-fun b!1082747 () Bool)

(declare-fun res!721847 () Bool)

(assert (=> b!1082747 (=> (not res!721847) (not e!618786))))

(assert (=> b!1082747 (= res!721847 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34059 _keys!1070))))))

(declare-fun b!1082748 () Bool)

(declare-fun e!618782 () Bool)

(declare-fun mapRes!41356 () Bool)

(assert (=> b!1082748 (= e!618782 (and e!618783 mapRes!41356))))

(declare-fun condMapEmpty!41356 () Bool)

(declare-datatypes ((V!40329 0))(
  ( (V!40330 (val!13257 Int)) )
))
(declare-datatypes ((ValueCell!12491 0))(
  ( (ValueCellFull!12491 (v!15879 V!40329)) (EmptyCell!12491) )
))
(declare-datatypes ((array!69706 0))(
  ( (array!69707 (arr!33523 (Array (_ BitVec 32) ValueCell!12491)) (size!34060 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69706)

(declare-fun mapDefault!41356 () ValueCell!12491)

