; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79274 () Bool)

(assert start!79274)

(declare-fun b_free!17459 () Bool)

(declare-fun b_next!17459 () Bool)

(assert (=> start!79274 (= b_free!17459 (not b_next!17459))))

(declare-fun tp!60819 () Bool)

(declare-fun b_and!28543 () Bool)

(assert (=> start!79274 (= tp!60819 b_and!28543)))

(declare-fun b!930423 () Bool)

(declare-fun e!522503 () Bool)

(assert (=> b!930423 (= e!522503 false)))

(declare-datatypes ((V!31587 0))(
  ( (V!31588 (val!10034 Int)) )
))
(declare-fun lt!419201 () V!31587)

(declare-datatypes ((tuple2!13234 0))(
  ( (tuple2!13235 (_1!6627 (_ BitVec 64)) (_2!6627 V!31587)) )
))
(declare-datatypes ((List!19054 0))(
  ( (Nil!19051) (Cons!19050 (h!20196 tuple2!13234) (t!27119 List!19054)) )
))
(declare-datatypes ((ListLongMap!11945 0))(
  ( (ListLongMap!11946 (toList!5988 List!19054)) )
))
(declare-fun lt!419202 () ListLongMap!11945)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!776 (ListLongMap!11945 (_ BitVec 64)) V!31587)

(assert (=> b!930423 (= lt!419201 (apply!776 lt!419202 k!1099))))

(declare-fun b!930424 () Bool)

(declare-fun res!626716 () Bool)

(declare-fun e!522507 () Bool)

(assert (=> b!930424 (=> (not res!626716) (not e!522507))))

(declare-datatypes ((array!55904 0))(
  ( (array!55905 (arr!26893 (Array (_ BitVec 32) (_ BitVec 64))) (size!27353 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55904)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55904 (_ BitVec 32)) Bool)

(assert (=> b!930424 (= res!626716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930425 () Bool)

(declare-fun res!626720 () Bool)

(assert (=> b!930425 (=> (not res!626720) (not e!522507))))

(declare-datatypes ((List!19055 0))(
  ( (Nil!19052) (Cons!19051 (h!20197 (_ BitVec 64)) (t!27120 List!19055)) )
))
(declare-fun arrayNoDuplicates!0 (array!55904 (_ BitVec 32) List!19055) Bool)

(assert (=> b!930425 (= res!626720 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19052))))

(declare-fun b!930426 () Bool)

(declare-fun e!522502 () Bool)

(declare-fun e!522506 () Bool)

(declare-fun mapRes!31707 () Bool)

(assert (=> b!930426 (= e!522502 (and e!522506 mapRes!31707))))

(declare-fun condMapEmpty!31707 () Bool)

(declare-datatypes ((ValueCell!9502 0))(
  ( (ValueCellFull!9502 (v!12552 V!31587)) (EmptyCell!9502) )
))
(declare-datatypes ((array!55906 0))(
  ( (array!55907 (arr!26894 (Array (_ BitVec 32) ValueCell!9502)) (size!27354 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55906)

(declare-fun mapDefault!31707 () ValueCell!9502)

