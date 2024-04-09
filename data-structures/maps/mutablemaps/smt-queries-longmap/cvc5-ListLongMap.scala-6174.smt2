; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79180 () Bool)

(assert start!79180)

(declare-fun b_free!17365 () Bool)

(declare-fun b_next!17365 () Bool)

(assert (=> start!79180 (= b_free!17365 (not b_next!17365))))

(declare-fun tp!60537 () Bool)

(declare-fun b_and!28449 () Bool)

(assert (=> start!79180 (= tp!60537 b_and!28449)))

(declare-fun b!928929 () Bool)

(declare-fun e!521661 () Bool)

(declare-fun e!521660 () Bool)

(declare-fun mapRes!31566 () Bool)

(assert (=> b!928929 (= e!521661 (and e!521660 mapRes!31566))))

(declare-fun condMapEmpty!31566 () Bool)

(declare-datatypes ((V!31463 0))(
  ( (V!31464 (val!9987 Int)) )
))
(declare-datatypes ((ValueCell!9455 0))(
  ( (ValueCellFull!9455 (v!12505 V!31463)) (EmptyCell!9455) )
))
(declare-datatypes ((array!55722 0))(
  ( (array!55723 (arr!26802 (Array (_ BitVec 32) ValueCell!9455)) (size!27262 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55722)

(declare-fun mapDefault!31566 () ValueCell!9455)

