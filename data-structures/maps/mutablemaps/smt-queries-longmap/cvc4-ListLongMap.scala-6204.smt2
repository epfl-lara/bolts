; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79390 () Bool)

(assert start!79390)

(declare-fun b_free!17549 () Bool)

(declare-fun b_next!17549 () Bool)

(assert (=> start!79390 (= b_free!17549 (not b_next!17549))))

(declare-fun tp!61091 () Bool)

(declare-fun b_and!28675 () Bool)

(assert (=> start!79390 (= tp!61091 b_and!28675)))

(declare-fun b!932090 () Bool)

(declare-fun e!523476 () Bool)

(declare-fun e!523481 () Bool)

(declare-fun mapRes!31845 () Bool)

(assert (=> b!932090 (= e!523476 (and e!523481 mapRes!31845))))

(declare-fun condMapEmpty!31845 () Bool)

(declare-datatypes ((V!31707 0))(
  ( (V!31708 (val!10079 Int)) )
))
(declare-datatypes ((ValueCell!9547 0))(
  ( (ValueCellFull!9547 (v!12598 V!31707)) (EmptyCell!9547) )
))
(declare-datatypes ((array!56082 0))(
  ( (array!56083 (arr!26981 (Array (_ BitVec 32) ValueCell!9547)) (size!27441 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56082)

(declare-fun mapDefault!31845 () ValueCell!9547)

