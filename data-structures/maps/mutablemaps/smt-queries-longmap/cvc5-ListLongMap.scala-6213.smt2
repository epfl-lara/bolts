; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79440 () Bool)

(assert start!79440)

(declare-fun b_free!17599 () Bool)

(declare-fun b_next!17599 () Bool)

(assert (=> start!79440 (= b_free!17599 (not b_next!17599))))

(declare-fun tp!61242 () Bool)

(declare-fun b_and!28775 () Bool)

(assert (=> start!79440 (= tp!61242 b_and!28775)))

(declare-fun b!933115 () Bool)

(declare-fun res!628601 () Bool)

(declare-fun e!524003 () Bool)

(assert (=> b!933115 (=> (not res!628601) (not e!524003))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31775 0))(
  ( (V!31776 (val!10104 Int)) )
))
(declare-fun v!791 () V!31775)

(declare-datatypes ((tuple2!13350 0))(
  ( (tuple2!13351 (_1!6685 (_ BitVec 64)) (_2!6685 V!31775)) )
))
(declare-datatypes ((List!19157 0))(
  ( (Nil!19154) (Cons!19153 (h!20299 tuple2!13350) (t!27308 List!19157)) )
))
(declare-datatypes ((ListLongMap!12061 0))(
  ( (ListLongMap!12062 (toList!6046 List!19157)) )
))
(declare-fun lt!420256 () ListLongMap!12061)

(declare-fun apply!829 (ListLongMap!12061 (_ BitVec 64)) V!31775)

(assert (=> b!933115 (= res!628601 (= (apply!829 lt!420256 k!1099) v!791))))

(declare-fun b!933116 () Bool)

(declare-fun res!628607 () Bool)

(declare-fun e!524001 () Bool)

(assert (=> b!933116 (=> (not res!628607) (not e!524001))))

(declare-datatypes ((array!56174 0))(
  ( (array!56175 (arr!27027 (Array (_ BitVec 32) (_ BitVec 64))) (size!27487 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56174)

(declare-datatypes ((List!19158 0))(
  ( (Nil!19155) (Cons!19154 (h!20300 (_ BitVec 64)) (t!27309 List!19158)) )
))
(declare-fun arrayNoDuplicates!0 (array!56174 (_ BitVec 32) List!19158) Bool)

(assert (=> b!933116 (= res!628607 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19155))))

(declare-fun mapNonEmpty!31920 () Bool)

(declare-fun mapRes!31920 () Bool)

(declare-fun tp!61241 () Bool)

(declare-fun e!524002 () Bool)

(assert (=> mapNonEmpty!31920 (= mapRes!31920 (and tp!61241 e!524002))))

(declare-datatypes ((ValueCell!9572 0))(
  ( (ValueCellFull!9572 (v!12623 V!31775)) (EmptyCell!9572) )
))
(declare-fun mapRest!31920 () (Array (_ BitVec 32) ValueCell!9572))

(declare-fun mapKey!31920 () (_ BitVec 32))

(declare-datatypes ((array!56176 0))(
  ( (array!56177 (arr!27028 (Array (_ BitVec 32) ValueCell!9572)) (size!27488 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56176)

(declare-fun mapValue!31920 () ValueCell!9572)

(assert (=> mapNonEmpty!31920 (= (arr!27028 _values!1231) (store mapRest!31920 mapKey!31920 mapValue!31920))))

(declare-fun b!933117 () Bool)

(assert (=> b!933117 (= e!524001 e!524003)))

(declare-fun res!628600 () Bool)

(assert (=> b!933117 (=> (not res!628600) (not e!524003))))

(declare-fun contains!5045 (ListLongMap!12061 (_ BitVec 64)) Bool)

(assert (=> b!933117 (= res!628600 (contains!5045 lt!420256 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31775)

(declare-fun minValue!1173 () V!31775)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3238 (array!56174 array!56176 (_ BitVec 32) (_ BitVec 32) V!31775 V!31775 (_ BitVec 32) Int) ListLongMap!12061)

(assert (=> b!933117 (= lt!420256 (getCurrentListMap!3238 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933118 () Bool)

(declare-fun res!628604 () Bool)

(assert (=> b!933118 (=> (not res!628604) (not e!524001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56174 (_ BitVec 32)) Bool)

(assert (=> b!933118 (= res!628604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933119 () Bool)

(declare-fun e!524004 () Bool)

(declare-fun e!524000 () Bool)

(assert (=> b!933119 (= e!524004 (and e!524000 mapRes!31920))))

(declare-fun condMapEmpty!31920 () Bool)

(declare-fun mapDefault!31920 () ValueCell!9572)

