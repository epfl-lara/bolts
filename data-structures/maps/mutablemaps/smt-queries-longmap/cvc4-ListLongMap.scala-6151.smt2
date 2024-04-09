; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79046 () Bool)

(assert start!79046)

(declare-fun b_free!17231 () Bool)

(declare-fun b_next!17231 () Bool)

(assert (=> start!79046 (= b_free!17231 (not b_next!17231))))

(declare-fun tp!60135 () Bool)

(declare-fun b_and!28217 () Bool)

(assert (=> start!79046 (= tp!60135 b_and!28217)))

(declare-fun b!925427 () Bool)

(declare-fun res!623715 () Bool)

(declare-fun e!519440 () Bool)

(assert (=> b!925427 (=> (not res!623715) (not e!519440))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55460 0))(
  ( (array!55461 (arr!26671 (Array (_ BitVec 32) (_ BitVec 64))) (size!27131 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55460)

(assert (=> b!925427 (= res!623715 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27131 _keys!1487))))))

(declare-fun b!925428 () Bool)

(declare-fun e!519447 () Bool)

(declare-fun e!519435 () Bool)

(declare-fun mapRes!31365 () Bool)

(assert (=> b!925428 (= e!519447 (and e!519435 mapRes!31365))))

(declare-fun condMapEmpty!31365 () Bool)

(declare-datatypes ((V!31283 0))(
  ( (V!31284 (val!9920 Int)) )
))
(declare-datatypes ((ValueCell!9388 0))(
  ( (ValueCellFull!9388 (v!12438 V!31283)) (EmptyCell!9388) )
))
(declare-datatypes ((array!55462 0))(
  ( (array!55463 (arr!26672 (Array (_ BitVec 32) ValueCell!9388)) (size!27132 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55462)

(declare-fun mapDefault!31365 () ValueCell!9388)

