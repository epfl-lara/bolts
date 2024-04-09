; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79650 () Bool)

(assert start!79650)

(declare-fun b_free!17671 () Bool)

(declare-fun b_next!17671 () Bool)

(assert (=> start!79650 (= b_free!17671 (not b_next!17671))))

(declare-fun tp!61469 () Bool)

(declare-fun b_and!28951 () Bool)

(assert (=> start!79650 (= tp!61469 b_and!28951)))

(declare-fun b!935601 () Bool)

(declare-fun e!525402 () Bool)

(declare-fun e!525399 () Bool)

(assert (=> b!935601 (= e!525402 e!525399)))

(declare-fun res!630140 () Bool)

(assert (=> b!935601 (=> (not res!630140) (not e!525399))))

(declare-fun lt!421762 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935601 (= res!630140 (validKeyInArray!0 lt!421762))))

(declare-datatypes ((array!56322 0))(
  ( (array!56323 (arr!27097 (Array (_ BitVec 32) (_ BitVec 64))) (size!27557 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56322)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935601 (= lt!421762 (select (arr!27097 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!935602 () Bool)

(declare-fun e!525400 () Bool)

(declare-fun e!525403 () Bool)

(declare-fun mapRes!32040 () Bool)

(assert (=> b!935602 (= e!525400 (and e!525403 mapRes!32040))))

(declare-fun condMapEmpty!32040 () Bool)

(declare-datatypes ((V!31871 0))(
  ( (V!31872 (val!10140 Int)) )
))
(declare-datatypes ((ValueCell!9608 0))(
  ( (ValueCellFull!9608 (v!12665 V!31871)) (EmptyCell!9608) )
))
(declare-datatypes ((array!56324 0))(
  ( (array!56325 (arr!27098 (Array (_ BitVec 32) ValueCell!9608)) (size!27558 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56324)

(declare-fun mapDefault!32040 () ValueCell!9608)

