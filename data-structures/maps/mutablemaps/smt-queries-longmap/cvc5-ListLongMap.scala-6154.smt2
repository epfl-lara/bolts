; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79060 () Bool)

(assert start!79060)

(declare-fun b_free!17245 () Bool)

(declare-fun b_next!17245 () Bool)

(assert (=> start!79060 (= b_free!17245 (not b_next!17245))))

(declare-fun tp!60176 () Bool)

(declare-fun b_and!28245 () Bool)

(assert (=> start!79060 (= tp!60176 b_and!28245)))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31303 0))(
  ( (V!31304 (val!9927 Int)) )
))
(declare-fun v!791 () V!31303)

(declare-fun b!925861 () Bool)

(declare-fun e!519714 () Bool)

(declare-datatypes ((tuple2!13050 0))(
  ( (tuple2!13051 (_1!6535 (_ BitVec 64)) (_2!6535 V!31303)) )
))
(declare-datatypes ((List!18884 0))(
  ( (Nil!18881) (Cons!18880 (h!20026 tuple2!13050) (t!26867 List!18884)) )
))
(declare-datatypes ((ListLongMap!11761 0))(
  ( (ListLongMap!11762 (toList!5896 List!18884)) )
))
(declare-fun lt!416857 () ListLongMap!11761)

(declare-fun apply!696 (ListLongMap!11761 (_ BitVec 64)) V!31303)

(assert (=> b!925861 (= e!519714 (= (apply!696 lt!416857 k!1099) v!791))))

(declare-fun mapIsEmpty!31386 () Bool)

(declare-fun mapRes!31386 () Bool)

(assert (=> mapIsEmpty!31386 mapRes!31386))

(declare-fun b!925862 () Bool)

(declare-fun e!519712 () Bool)

(declare-fun e!519711 () Bool)

(assert (=> b!925862 (= e!519712 e!519711)))

(declare-fun res!623949 () Bool)

(assert (=> b!925862 (=> (not res!623949) (not e!519711))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55486 0))(
  ( (array!55487 (arr!26684 (Array (_ BitVec 32) (_ BitVec 64))) (size!27144 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55486)

(assert (=> b!925862 (= res!623949 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27144 _keys!1487)))))

(declare-datatypes ((Unit!31297 0))(
  ( (Unit!31298) )
))
(declare-fun lt!416858 () Unit!31297)

(declare-fun e!519709 () Unit!31297)

(assert (=> b!925862 (= lt!416858 e!519709)))

(declare-fun c!96581 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925862 (= c!96581 (validKeyInArray!0 k!1099))))

(declare-fun b!925863 () Bool)

(declare-fun e!519718 () Bool)

(declare-fun e!519720 () Bool)

(assert (=> b!925863 (= e!519718 (and e!519720 mapRes!31386))))

(declare-fun condMapEmpty!31386 () Bool)

(declare-datatypes ((ValueCell!9395 0))(
  ( (ValueCellFull!9395 (v!12445 V!31303)) (EmptyCell!9395) )
))
(declare-datatypes ((array!55488 0))(
  ( (array!55489 (arr!26685 (Array (_ BitVec 32) ValueCell!9395)) (size!27145 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55488)

(declare-fun mapDefault!31386 () ValueCell!9395)

