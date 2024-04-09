; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95794 () Bool)

(assert start!95794)

(declare-fun b_free!22411 () Bool)

(declare-fun b_next!22411 () Bool)

(assert (=> start!95794 (= b_free!22411 (not b_next!22411))))

(declare-fun tp!79083 () Bool)

(declare-fun b_and!35515 () Bool)

(assert (=> start!95794 (= tp!79083 b_and!35515)))

(declare-fun b!1082971 () Bool)

(declare-fun res!722006 () Bool)

(declare-fun e!618891 () Bool)

(assert (=> b!1082971 (=> (not res!722006) (not e!618891))))

(declare-datatypes ((array!69728 0))(
  ( (array!69729 (arr!33534 (Array (_ BitVec 32) (_ BitVec 64))) (size!34071 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69728)

(declare-datatypes ((List!23509 0))(
  ( (Nil!23506) (Cons!23505 (h!24714 (_ BitVec 64)) (t!32985 List!23509)) )
))
(declare-fun arrayNoDuplicates!0 (array!69728 (_ BitVec 32) List!23509) Bool)

(assert (=> b!1082971 (= res!722006 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23506))))

(declare-fun b!1082972 () Bool)

(declare-fun res!722012 () Bool)

(assert (=> b!1082972 (=> (not res!722012) (not e!618891))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082972 (= res!722012 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34071 _keys!1070))))))

(declare-fun b!1082973 () Bool)

(declare-fun e!618895 () Bool)

(assert (=> b!1082973 (= e!618891 e!618895)))

(declare-fun res!722007 () Bool)

(assert (=> b!1082973 (=> (not res!722007) (not e!618895))))

(declare-fun lt!479857 () array!69728)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69728 (_ BitVec 32)) Bool)

(assert (=> b!1082973 (= res!722007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479857 mask!1414))))

(assert (=> b!1082973 (= lt!479857 (array!69729 (store (arr!33534 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34071 _keys!1070)))))

(declare-fun mapIsEmpty!41374 () Bool)

(declare-fun mapRes!41374 () Bool)

(assert (=> mapIsEmpty!41374 mapRes!41374))

(declare-fun b!1082974 () Bool)

(declare-fun e!618893 () Bool)

(declare-fun tp_is_empty!26413 () Bool)

(assert (=> b!1082974 (= e!618893 tp_is_empty!26413)))

(declare-fun b!1082975 () Bool)

(declare-fun res!722008 () Bool)

(assert (=> b!1082975 (=> (not res!722008) (not e!618891))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082975 (= res!722008 (validKeyInArray!0 k!904))))

(declare-fun b!1082976 () Bool)

(declare-fun e!618894 () Bool)

(declare-fun e!618890 () Bool)

(assert (=> b!1082976 (= e!618894 (and e!618890 mapRes!41374))))

(declare-fun condMapEmpty!41374 () Bool)

(declare-datatypes ((V!40345 0))(
  ( (V!40346 (val!13263 Int)) )
))
(declare-datatypes ((ValueCell!12497 0))(
  ( (ValueCellFull!12497 (v!15885 V!40345)) (EmptyCell!12497) )
))
(declare-datatypes ((array!69730 0))(
  ( (array!69731 (arr!33535 (Array (_ BitVec 32) ValueCell!12497)) (size!34072 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69730)

(declare-fun mapDefault!41374 () ValueCell!12497)

