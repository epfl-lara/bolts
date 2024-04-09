; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79276 () Bool)

(assert start!79276)

(declare-fun b_free!17461 () Bool)

(declare-fun b_next!17461 () Bool)

(assert (=> start!79276 (= b_free!17461 (not b_next!17461))))

(declare-fun tp!60824 () Bool)

(declare-fun b_and!28545 () Bool)

(assert (=> start!79276 (= tp!60824 b_and!28545)))

(declare-fun mapIsEmpty!31710 () Bool)

(declare-fun mapRes!31710 () Bool)

(assert (=> mapIsEmpty!31710 mapRes!31710))

(declare-fun b!930450 () Bool)

(declare-fun res!626733 () Bool)

(declare-fun e!522524 () Bool)

(assert (=> b!930450 (=> (not res!626733) (not e!522524))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31591 0))(
  ( (V!31592 (val!10035 Int)) )
))
(declare-datatypes ((ValueCell!9503 0))(
  ( (ValueCellFull!9503 (v!12553 V!31591)) (EmptyCell!9503) )
))
(declare-datatypes ((array!55908 0))(
  ( (array!55909 (arr!26895 (Array (_ BitVec 32) ValueCell!9503)) (size!27355 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55908)

(declare-datatypes ((array!55910 0))(
  ( (array!55911 (arr!26896 (Array (_ BitVec 32) (_ BitVec 64))) (size!27356 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55910)

(assert (=> b!930450 (= res!626733 (and (= (size!27355 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27356 _keys!1487) (size!27355 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930451 () Bool)

(declare-fun e!522523 () Bool)

(declare-fun e!522522 () Bool)

(assert (=> b!930451 (= e!522523 (and e!522522 mapRes!31710))))

(declare-fun condMapEmpty!31710 () Bool)

(declare-fun mapDefault!31710 () ValueCell!9503)

