; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79238 () Bool)

(assert start!79238)

(declare-fun b_free!17423 () Bool)

(declare-fun b_next!17423 () Bool)

(assert (=> start!79238 (= b_free!17423 (not b_next!17423))))

(declare-fun tp!60711 () Bool)

(declare-fun b_and!28507 () Bool)

(assert (=> start!79238 (= tp!60711 b_and!28507)))

(declare-fun mapIsEmpty!31653 () Bool)

(declare-fun mapRes!31653 () Bool)

(assert (=> mapIsEmpty!31653 mapRes!31653))

(declare-fun b!929846 () Bool)

(declare-fun res!626303 () Bool)

(declare-fun e!522181 () Bool)

(assert (=> b!929846 (=> (not res!626303) (not e!522181))))

(declare-datatypes ((array!55832 0))(
  ( (array!55833 (arr!26857 (Array (_ BitVec 32) (_ BitVec 64))) (size!27317 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55832)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55832 (_ BitVec 32)) Bool)

(assert (=> b!929846 (= res!626303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929847 () Bool)

(declare-fun res!626302 () Bool)

(assert (=> b!929847 (=> (not res!626302) (not e!522181))))

(declare-datatypes ((List!19025 0))(
  ( (Nil!19022) (Cons!19021 (h!20167 (_ BitVec 64)) (t!27090 List!19025)) )
))
(declare-fun arrayNoDuplicates!0 (array!55832 (_ BitVec 32) List!19025) Bool)

(assert (=> b!929847 (= res!626302 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19022))))

(declare-fun b!929848 () Bool)

(declare-fun res!626306 () Bool)

(declare-fun e!522179 () Bool)

(assert (=> b!929848 (=> (not res!626306) (not e!522179))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31539 0))(
  ( (V!31540 (val!10016 Int)) )
))
(declare-fun v!791 () V!31539)

(declare-datatypes ((tuple2!13202 0))(
  ( (tuple2!13203 (_1!6611 (_ BitVec 64)) (_2!6611 V!31539)) )
))
(declare-datatypes ((List!19026 0))(
  ( (Nil!19023) (Cons!19022 (h!20168 tuple2!13202) (t!27091 List!19026)) )
))
(declare-datatypes ((ListLongMap!11913 0))(
  ( (ListLongMap!11914 (toList!5972 List!19026)) )
))
(declare-fun lt!419111 () ListLongMap!11913)

(declare-fun apply!763 (ListLongMap!11913 (_ BitVec 64)) V!31539)

(assert (=> b!929848 (= res!626306 (= (apply!763 lt!419111 k!1099) v!791))))

(declare-fun b!929849 () Bool)

(declare-fun e!522182 () Bool)

(declare-fun tp_is_empty!19931 () Bool)

(assert (=> b!929849 (= e!522182 tp_is_empty!19931)))

(declare-fun b!929850 () Bool)

(declare-fun res!626300 () Bool)

(assert (=> b!929850 (=> (not res!626300) (not e!522181))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929850 (= res!626300 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27317 _keys!1487))))))

(declare-fun b!929845 () Bool)

(declare-fun e!522183 () Bool)

(assert (=> b!929845 (= e!522183 (and e!522182 mapRes!31653))))

(declare-fun condMapEmpty!31653 () Bool)

(declare-datatypes ((ValueCell!9484 0))(
  ( (ValueCellFull!9484 (v!12534 V!31539)) (EmptyCell!9484) )
))
(declare-datatypes ((array!55834 0))(
  ( (array!55835 (arr!26858 (Array (_ BitVec 32) ValueCell!9484)) (size!27318 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55834)

(declare-fun mapDefault!31653 () ValueCell!9484)

