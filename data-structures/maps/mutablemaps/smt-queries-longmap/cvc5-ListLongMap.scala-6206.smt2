; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79398 () Bool)

(assert start!79398)

(declare-fun b_free!17557 () Bool)

(declare-fun b_next!17557 () Bool)

(assert (=> start!79398 (= b_free!17557 (not b_next!17557))))

(declare-fun tp!61116 () Bool)

(declare-fun b_and!28691 () Bool)

(assert (=> start!79398 (= tp!61116 b_and!28691)))

(declare-fun b!932254 () Bool)

(declare-fun res!627976 () Bool)

(declare-fun e!523565 () Bool)

(assert (=> b!932254 (=> (not res!627976) (not e!523565))))

(declare-datatypes ((array!56092 0))(
  ( (array!56093 (arr!26986 (Array (_ BitVec 32) (_ BitVec 64))) (size!27446 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56092)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31719 0))(
  ( (V!31720 (val!10083 Int)) )
))
(declare-datatypes ((ValueCell!9551 0))(
  ( (ValueCellFull!9551 (v!12602 V!31719)) (EmptyCell!9551) )
))
(declare-datatypes ((array!56094 0))(
  ( (array!56095 (arr!26987 (Array (_ BitVec 32) ValueCell!9551)) (size!27447 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56094)

(assert (=> b!932254 (= res!627976 (and (= (size!27447 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27446 _keys!1487) (size!27447 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932255 () Bool)

(declare-fun res!627972 () Bool)

(declare-fun e!523560 () Bool)

(assert (=> b!932255 (=> (not res!627972) (not e!523560))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31719)

(declare-datatypes ((tuple2!13312 0))(
  ( (tuple2!13313 (_1!6666 (_ BitVec 64)) (_2!6666 V!31719)) )
))
(declare-datatypes ((List!19124 0))(
  ( (Nil!19121) (Cons!19120 (h!20266 tuple2!13312) (t!27233 List!19124)) )
))
(declare-datatypes ((ListLongMap!12023 0))(
  ( (ListLongMap!12024 (toList!6027 List!19124)) )
))
(declare-fun lt!419822 () ListLongMap!12023)

(declare-fun apply!812 (ListLongMap!12023 (_ BitVec 64)) V!31719)

(assert (=> b!932255 (= res!627972 (= (apply!812 lt!419822 k!1099) v!791))))

(declare-fun res!627971 () Bool)

(assert (=> start!79398 (=> (not res!627971) (not e!523565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79398 (= res!627971 (validMask!0 mask!1881))))

(assert (=> start!79398 e!523565))

(assert (=> start!79398 true))

(declare-fun tp_is_empty!20065 () Bool)

(assert (=> start!79398 tp_is_empty!20065))

(declare-fun e!523559 () Bool)

(declare-fun array_inv!20974 (array!56094) Bool)

(assert (=> start!79398 (and (array_inv!20974 _values!1231) e!523559)))

(assert (=> start!79398 tp!61116))

(declare-fun array_inv!20975 (array!56092) Bool)

(assert (=> start!79398 (array_inv!20975 _keys!1487)))

(declare-fun b!932256 () Bool)

(declare-fun e!523561 () Bool)

(declare-fun mapRes!31857 () Bool)

(assert (=> b!932256 (= e!523559 (and e!523561 mapRes!31857))))

(declare-fun condMapEmpty!31857 () Bool)

(declare-fun mapDefault!31857 () ValueCell!9551)

