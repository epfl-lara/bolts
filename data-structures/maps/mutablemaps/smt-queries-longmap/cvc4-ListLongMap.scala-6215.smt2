; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79456 () Bool)

(assert start!79456)

(declare-fun b_free!17615 () Bool)

(declare-fun b_next!17615 () Bool)

(assert (=> start!79456 (= b_free!17615 (not b_next!17615))))

(declare-fun tp!61290 () Bool)

(declare-fun b_and!28807 () Bool)

(assert (=> start!79456 (= tp!61290 b_and!28807)))

(declare-fun b!933443 () Bool)

(declare-fun res!628844 () Bool)

(declare-fun e!524173 () Bool)

(assert (=> b!933443 (=> (not res!628844) (not e!524173))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31795 0))(
  ( (V!31796 (val!10112 Int)) )
))
(declare-fun v!791 () V!31795)

(declare-datatypes ((tuple2!13364 0))(
  ( (tuple2!13365 (_1!6692 (_ BitVec 64)) (_2!6692 V!31795)) )
))
(declare-datatypes ((List!19172 0))(
  ( (Nil!19169) (Cons!19168 (h!20314 tuple2!13364) (t!27339 List!19172)) )
))
(declare-datatypes ((ListLongMap!12075 0))(
  ( (ListLongMap!12076 (toList!6053 List!19172)) )
))
(declare-fun lt!420430 () ListLongMap!12075)

(declare-fun apply!835 (ListLongMap!12075 (_ BitVec 64)) V!31795)

(assert (=> b!933443 (= res!628844 (= (apply!835 lt!420430 k!1099) v!791))))

(declare-fun b!933444 () Bool)

(declare-fun e!524170 () Bool)

(assert (=> b!933444 (= e!524170 e!524173)))

(declare-fun res!628839 () Bool)

(assert (=> b!933444 (=> (not res!628839) (not e!524173))))

(declare-fun contains!5052 (ListLongMap!12075 (_ BitVec 64)) Bool)

(assert (=> b!933444 (= res!628839 (contains!5052 lt!420430 k!1099))))

(declare-datatypes ((array!56206 0))(
  ( (array!56207 (arr!27043 (Array (_ BitVec 32) (_ BitVec 64))) (size!27503 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56206)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9580 0))(
  ( (ValueCellFull!9580 (v!12631 V!31795)) (EmptyCell!9580) )
))
(declare-datatypes ((array!56208 0))(
  ( (array!56209 (arr!27044 (Array (_ BitVec 32) ValueCell!9580)) (size!27504 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56208)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31795)

(declare-fun minValue!1173 () V!31795)

(declare-fun getCurrentListMap!3245 (array!56206 array!56208 (_ BitVec 32) (_ BitVec 32) V!31795 V!31795 (_ BitVec 32) Int) ListLongMap!12075)

(assert (=> b!933444 (= lt!420430 (getCurrentListMap!3245 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933445 () Bool)

(declare-fun res!628840 () Bool)

(assert (=> b!933445 (=> (not res!628840) (not e!524173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933445 (= res!628840 (validKeyInArray!0 k!1099))))

(declare-fun b!933446 () Bool)

(declare-fun res!628845 () Bool)

(assert (=> b!933446 (=> (not res!628845) (not e!524170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56206 (_ BitVec 32)) Bool)

(assert (=> b!933446 (= res!628845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933447 () Bool)

(declare-fun e!524171 () Bool)

(declare-fun e!524172 () Bool)

(declare-fun mapRes!31944 () Bool)

(assert (=> b!933447 (= e!524171 (and e!524172 mapRes!31944))))

(declare-fun condMapEmpty!31944 () Bool)

(declare-fun mapDefault!31944 () ValueCell!9580)

