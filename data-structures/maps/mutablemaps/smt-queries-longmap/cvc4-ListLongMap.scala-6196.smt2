; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79316 () Bool)

(assert start!79316)

(declare-fun b_free!17501 () Bool)

(declare-fun b_next!17501 () Bool)

(assert (=> start!79316 (= b_free!17501 (not b_next!17501))))

(declare-fun tp!60945 () Bool)

(declare-fun b_and!28585 () Bool)

(assert (=> start!79316 (= tp!60945 b_and!28585)))

(declare-fun mapIsEmpty!31770 () Bool)

(declare-fun mapRes!31770 () Bool)

(assert (=> mapIsEmpty!31770 mapRes!31770))

(declare-fun b!930990 () Bool)

(declare-fun res!627094 () Bool)

(declare-fun e!522882 () Bool)

(assert (=> b!930990 (=> (not res!627094) (not e!522882))))

(declare-datatypes ((array!55986 0))(
  ( (array!55987 (arr!26934 (Array (_ BitVec 32) (_ BitVec 64))) (size!27394 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55986)

(declare-datatypes ((List!19087 0))(
  ( (Nil!19084) (Cons!19083 (h!20229 (_ BitVec 64)) (t!27152 List!19087)) )
))
(declare-fun arrayNoDuplicates!0 (array!55986 (_ BitVec 32) List!19087) Bool)

(assert (=> b!930990 (= res!627094 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19084))))

(declare-fun b!930991 () Bool)

(declare-fun e!522884 () Bool)

(declare-fun e!522883 () Bool)

(assert (=> b!930991 (= e!522884 (and e!522883 mapRes!31770))))

(declare-fun condMapEmpty!31770 () Bool)

(declare-datatypes ((V!31643 0))(
  ( (V!31644 (val!10055 Int)) )
))
(declare-datatypes ((ValueCell!9523 0))(
  ( (ValueCellFull!9523 (v!12573 V!31643)) (EmptyCell!9523) )
))
(declare-datatypes ((array!55988 0))(
  ( (array!55989 (arr!26935 (Array (_ BitVec 32) ValueCell!9523)) (size!27395 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55988)

(declare-fun mapDefault!31770 () ValueCell!9523)

