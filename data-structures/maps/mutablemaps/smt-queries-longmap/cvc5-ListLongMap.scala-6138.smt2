; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78964 () Bool)

(assert start!78964)

(declare-fun b_free!17149 () Bool)

(declare-fun b_next!17149 () Bool)

(assert (=> start!78964 (= b_free!17149 (not b_next!17149))))

(declare-fun tp!59888 () Bool)

(declare-fun b_and!28053 () Bool)

(assert (=> start!78964 (= tp!59888 b_and!28053)))

(declare-fun b!923079 () Bool)

(declare-fun e!517933 () Bool)

(declare-fun e!517939 () Bool)

(assert (=> b!923079 (= e!517933 e!517939)))

(declare-fun res!622556 () Bool)

(assert (=> b!923079 (=> (not res!622556) (not e!517939))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31175 0))(
  ( (V!31176 (val!9879 Int)) )
))
(declare-fun v!791 () V!31175)

(declare-fun lt!414655 () V!31175)

(assert (=> b!923079 (= res!622556 (and (= lt!414655 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!12966 0))(
  ( (tuple2!12967 (_1!6493 (_ BitVec 64)) (_2!6493 V!31175)) )
))
(declare-datatypes ((List!18803 0))(
  ( (Nil!18800) (Cons!18799 (h!19945 tuple2!12966) (t!26690 List!18803)) )
))
(declare-datatypes ((ListLongMap!11677 0))(
  ( (ListLongMap!11678 (toList!5854 List!18803)) )
))
(declare-fun lt!414651 () ListLongMap!11677)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!658 (ListLongMap!11677 (_ BitVec 64)) V!31175)

(assert (=> b!923079 (= lt!414655 (apply!658 lt!414651 k!1099))))

(declare-fun b!923080 () Bool)

(declare-fun res!622562 () Bool)

(declare-fun e!517935 () Bool)

(assert (=> b!923080 (=> (not res!622562) (not e!517935))))

(declare-datatypes ((array!55300 0))(
  ( (array!55301 (arr!26591 (Array (_ BitVec 32) (_ BitVec 64))) (size!27051 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55300)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55300 (_ BitVec 32)) Bool)

(assert (=> b!923080 (= res!622562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923081 () Bool)

(declare-fun e!517944 () Bool)

(declare-fun e!517937 () Bool)

(declare-fun mapRes!31242 () Bool)

(assert (=> b!923081 (= e!517944 (and e!517937 mapRes!31242))))

(declare-fun condMapEmpty!31242 () Bool)

(declare-datatypes ((ValueCell!9347 0))(
  ( (ValueCellFull!9347 (v!12397 V!31175)) (EmptyCell!9347) )
))
(declare-datatypes ((array!55302 0))(
  ( (array!55303 (arr!26592 (Array (_ BitVec 32) ValueCell!9347)) (size!27052 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55302)

(declare-fun mapDefault!31242 () ValueCell!9347)

