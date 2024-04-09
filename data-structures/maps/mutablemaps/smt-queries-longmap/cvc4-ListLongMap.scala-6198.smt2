; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79328 () Bool)

(assert start!79328)

(declare-fun b_free!17513 () Bool)

(declare-fun b_next!17513 () Bool)

(assert (=> start!79328 (= b_free!17513 (not b_next!17513))))

(declare-fun tp!60981 () Bool)

(declare-fun b_and!28597 () Bool)

(assert (=> start!79328 (= tp!60981 b_and!28597)))

(declare-fun b!931188 () Bool)

(declare-fun res!627239 () Bool)

(declare-fun e!522988 () Bool)

(assert (=> b!931188 (=> (not res!627239) (not e!522988))))

(declare-datatypes ((array!56010 0))(
  ( (array!56011 (arr!26946 (Array (_ BitVec 32) (_ BitVec 64))) (size!27406 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56010)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31659 0))(
  ( (V!31660 (val!10061 Int)) )
))
(declare-datatypes ((ValueCell!9529 0))(
  ( (ValueCellFull!9529 (v!12579 V!31659)) (EmptyCell!9529) )
))
(declare-datatypes ((array!56012 0))(
  ( (array!56013 (arr!26947 (Array (_ BitVec 32) ValueCell!9529)) (size!27407 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56012)

(assert (=> b!931188 (= res!627239 (and (= (size!27407 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27406 _keys!1487) (size!27407 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!627237 () Bool)

(assert (=> start!79328 (=> (not res!627237) (not e!522988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79328 (= res!627237 (validMask!0 mask!1881))))

(assert (=> start!79328 e!522988))

(assert (=> start!79328 true))

(declare-fun e!522990 () Bool)

(declare-fun array_inv!20948 (array!56012) Bool)

(assert (=> start!79328 (and (array_inv!20948 _values!1231) e!522990)))

(assert (=> start!79328 tp!60981))

(declare-fun array_inv!20949 (array!56010) Bool)

(assert (=> start!79328 (array_inv!20949 _keys!1487)))

(declare-fun tp_is_empty!20021 () Bool)

(assert (=> start!79328 tp_is_empty!20021))

(declare-fun b!931189 () Bool)

(declare-fun res!627241 () Bool)

(assert (=> b!931189 (=> (not res!627241) (not e!522988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56010 (_ BitVec 32)) Bool)

(assert (=> b!931189 (= res!627241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931190 () Bool)

(declare-fun e!522989 () Bool)

(assert (=> b!931190 (= e!522989 tp_is_empty!20021)))

(declare-fun b!931191 () Bool)

(declare-fun e!522991 () Bool)

(assert (=> b!931191 (= e!522991 false)))

(declare-fun lt!419355 () V!31659)

(declare-datatypes ((tuple2!13280 0))(
  ( (tuple2!13281 (_1!6650 (_ BitVec 64)) (_2!6650 V!31659)) )
))
(declare-datatypes ((List!19097 0))(
  ( (Nil!19094) (Cons!19093 (h!20239 tuple2!13280) (t!27162 List!19097)) )
))
(declare-datatypes ((ListLongMap!11991 0))(
  ( (ListLongMap!11992 (toList!6011 List!19097)) )
))
(declare-fun lt!419354 () ListLongMap!11991)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!797 (ListLongMap!11991 (_ BitVec 64)) V!31659)

(assert (=> b!931191 (= lt!419355 (apply!797 lt!419354 k!1099))))

(declare-fun mapIsEmpty!31788 () Bool)

(declare-fun mapRes!31788 () Bool)

(assert (=> mapIsEmpty!31788 mapRes!31788))

(declare-fun b!931192 () Bool)

(declare-fun e!522993 () Bool)

(assert (=> b!931192 (= e!522990 (and e!522993 mapRes!31788))))

(declare-fun condMapEmpty!31788 () Bool)

(declare-fun mapDefault!31788 () ValueCell!9529)

