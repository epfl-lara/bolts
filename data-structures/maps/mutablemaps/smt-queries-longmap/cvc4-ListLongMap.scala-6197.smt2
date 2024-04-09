; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79322 () Bool)

(assert start!79322)

(declare-fun b_free!17507 () Bool)

(declare-fun b_next!17507 () Bool)

(assert (=> start!79322 (= b_free!17507 (not b_next!17507))))

(declare-fun tp!60962 () Bool)

(declare-fun b_and!28591 () Bool)

(assert (=> start!79322 (= tp!60962 b_and!28591)))

(declare-fun b!931103 () Bool)

(declare-fun res!627181 () Bool)

(declare-fun e!522937 () Bool)

(assert (=> b!931103 (=> (not res!627181) (not e!522937))))

(declare-datatypes ((array!55998 0))(
  ( (array!55999 (arr!26940 (Array (_ BitVec 32) (_ BitVec 64))) (size!27400 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55998)

(declare-datatypes ((List!19092 0))(
  ( (Nil!19089) (Cons!19088 (h!20234 (_ BitVec 64)) (t!27157 List!19092)) )
))
(declare-fun arrayNoDuplicates!0 (array!55998 (_ BitVec 32) List!19092) Bool)

(assert (=> b!931103 (= res!627181 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19089))))

(declare-fun b!931104 () Bool)

(declare-fun res!627180 () Bool)

(assert (=> b!931104 (=> (not res!627180) (not e!522937))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55998 (_ BitVec 32)) Bool)

(assert (=> b!931104 (= res!627180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931106 () Bool)

(declare-fun res!627184 () Bool)

(declare-fun e!522936 () Bool)

(assert (=> b!931106 (=> (not res!627184) (not e!522936))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931106 (= res!627184 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931107 () Bool)

(declare-fun e!522934 () Bool)

(declare-fun e!522938 () Bool)

(declare-fun mapRes!31779 () Bool)

(assert (=> b!931107 (= e!522934 (and e!522938 mapRes!31779))))

(declare-fun condMapEmpty!31779 () Bool)

(declare-datatypes ((V!31651 0))(
  ( (V!31652 (val!10058 Int)) )
))
(declare-datatypes ((ValueCell!9526 0))(
  ( (ValueCellFull!9526 (v!12576 V!31651)) (EmptyCell!9526) )
))
(declare-datatypes ((array!56000 0))(
  ( (array!56001 (arr!26941 (Array (_ BitVec 32) ValueCell!9526)) (size!27401 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56000)

(declare-fun mapDefault!31779 () ValueCell!9526)

