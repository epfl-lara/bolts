; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78928 () Bool)

(assert start!78928)

(declare-fun b_free!17113 () Bool)

(declare-fun b_next!17113 () Bool)

(assert (=> start!78928 (= b_free!17113 (not b_next!17113))))

(declare-fun tp!59781 () Bool)

(declare-fun b_and!27981 () Bool)

(assert (=> start!78928 (= tp!59781 b_and!27981)))

(declare-fun mapIsEmpty!31188 () Bool)

(declare-fun mapRes!31188 () Bool)

(assert (=> mapIsEmpty!31188 mapRes!31188))

(declare-fun b!922227 () Bool)

(declare-fun e!517496 () Bool)

(declare-fun e!517498 () Bool)

(assert (=> b!922227 (= e!517496 e!517498)))

(declare-fun res!622018 () Bool)

(assert (=> b!922227 (=> (not res!622018) (not e!517498))))

(declare-fun lt!414152 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922227 (= res!622018 (validKeyInArray!0 lt!414152))))

(declare-datatypes ((array!55230 0))(
  ( (array!55231 (arr!26556 (Array (_ BitVec 32) (_ BitVec 64))) (size!27016 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55230)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922227 (= lt!414152 (select (arr!26556 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922228 () Bool)

(declare-fun res!622017 () Bool)

(assert (=> b!922228 (=> (not res!622017) (not e!517496))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31127 0))(
  ( (V!31128 (val!9861 Int)) )
))
(declare-fun v!791 () V!31127)

(declare-datatypes ((tuple2!12930 0))(
  ( (tuple2!12931 (_1!6475 (_ BitVec 64)) (_2!6475 V!31127)) )
))
(declare-datatypes ((List!18769 0))(
  ( (Nil!18766) (Cons!18765 (h!19911 tuple2!12930) (t!26620 List!18769)) )
))
(declare-datatypes ((ListLongMap!11641 0))(
  ( (ListLongMap!11642 (toList!5836 List!18769)) )
))
(declare-fun lt!414146 () ListLongMap!11641)

(declare-fun apply!641 (ListLongMap!11641 (_ BitVec 64)) V!31127)

(assert (=> b!922228 (= res!622017 (= (apply!641 lt!414146 k!1099) v!791))))

(declare-fun b!922229 () Bool)

(declare-fun e!517493 () Bool)

(declare-fun e!517494 () Bool)

(assert (=> b!922229 (= e!517493 (and e!517494 mapRes!31188))))

(declare-fun condMapEmpty!31188 () Bool)

(declare-datatypes ((ValueCell!9329 0))(
  ( (ValueCellFull!9329 (v!12379 V!31127)) (EmptyCell!9329) )
))
(declare-datatypes ((array!55232 0))(
  ( (array!55233 (arr!26557 (Array (_ BitVec 32) ValueCell!9329)) (size!27017 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55232)

(declare-fun mapDefault!31188 () ValueCell!9329)

