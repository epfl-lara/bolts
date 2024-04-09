; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79318 () Bool)

(assert start!79318)

(declare-fun b_free!17503 () Bool)

(declare-fun b_next!17503 () Bool)

(assert (=> start!79318 (= b_free!17503 (not b_next!17503))))

(declare-fun tp!60951 () Bool)

(declare-fun b_and!28587 () Bool)

(assert (=> start!79318 (= tp!60951 b_and!28587)))

(declare-fun b!931025 () Bool)

(declare-fun e!522898 () Bool)

(declare-fun tp_is_empty!20011 () Bool)

(assert (=> b!931025 (= e!522898 tp_is_empty!20011)))

(declare-fun b!931026 () Bool)

(declare-fun res!627123 () Bool)

(declare-fun e!522902 () Bool)

(assert (=> b!931026 (=> (not res!627123) (not e!522902))))

(declare-datatypes ((array!55990 0))(
  ( (array!55991 (arr!26936 (Array (_ BitVec 32) (_ BitVec 64))) (size!27396 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55990)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55990 (_ BitVec 32)) Bool)

(assert (=> b!931026 (= res!627123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931027 () Bool)

(declare-fun res!627119 () Bool)

(declare-fun e!522901 () Bool)

(assert (=> b!931027 (=> (not res!627119) (not e!522901))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931027 (= res!627119 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31773 () Bool)

(declare-fun mapRes!31773 () Bool)

(declare-fun tp!60950 () Bool)

(declare-fun e!522900 () Bool)

(assert (=> mapNonEmpty!31773 (= mapRes!31773 (and tp!60950 e!522900))))

(declare-datatypes ((V!31647 0))(
  ( (V!31648 (val!10056 Int)) )
))
(declare-datatypes ((ValueCell!9524 0))(
  ( (ValueCellFull!9524 (v!12574 V!31647)) (EmptyCell!9524) )
))
(declare-fun mapValue!31773 () ValueCell!9524)

(declare-fun mapRest!31773 () (Array (_ BitVec 32) ValueCell!9524))

(declare-datatypes ((array!55992 0))(
  ( (array!55993 (arr!26937 (Array (_ BitVec 32) ValueCell!9524)) (size!27397 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55992)

(declare-fun mapKey!31773 () (_ BitVec 32))

(assert (=> mapNonEmpty!31773 (= (arr!26937 _values!1231) (store mapRest!31773 mapKey!31773 mapValue!31773))))

(declare-fun b!931028 () Bool)

(assert (=> b!931028 (= e!522900 tp_is_empty!20011)))

(declare-fun b!931029 () Bool)

(declare-fun res!627122 () Bool)

(assert (=> b!931029 (=> (not res!627122) (not e!522901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931029 (= res!627122 (validKeyInArray!0 (select (arr!26936 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!931030 () Bool)

(declare-fun res!627125 () Bool)

(assert (=> b!931030 (=> (not res!627125) (not e!522902))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!931030 (= res!627125 (and (= (size!27397 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27396 _keys!1487) (size!27397 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!627120 () Bool)

(assert (=> start!79318 (=> (not res!627120) (not e!522902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79318 (= res!627120 (validMask!0 mask!1881))))

(assert (=> start!79318 e!522902))

(assert (=> start!79318 true))

(assert (=> start!79318 tp_is_empty!20011))

(declare-fun e!522903 () Bool)

(declare-fun array_inv!20940 (array!55992) Bool)

(assert (=> start!79318 (and (array_inv!20940 _values!1231) e!522903)))

(assert (=> start!79318 tp!60951))

(declare-fun array_inv!20941 (array!55990) Bool)

(assert (=> start!79318 (array_inv!20941 _keys!1487)))

(declare-fun mapIsEmpty!31773 () Bool)

(assert (=> mapIsEmpty!31773 mapRes!31773))

(declare-fun b!931031 () Bool)

(declare-fun res!627121 () Bool)

(assert (=> b!931031 (=> (not res!627121) (not e!522902))))

(assert (=> b!931031 (= res!627121 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27396 _keys!1487))))))

(declare-fun b!931032 () Bool)

(declare-fun res!627126 () Bool)

(assert (=> b!931032 (=> (not res!627126) (not e!522902))))

(declare-datatypes ((List!19088 0))(
  ( (Nil!19085) (Cons!19084 (h!20230 (_ BitVec 64)) (t!27153 List!19088)) )
))
(declare-fun arrayNoDuplicates!0 (array!55990 (_ BitVec 32) List!19088) Bool)

(assert (=> b!931032 (= res!627126 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19085))))

(declare-fun b!931033 () Bool)

(assert (=> b!931033 (= e!522901 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27396 _keys!1487)))))

(declare-fun b!931034 () Bool)

(assert (=> b!931034 (= e!522902 e!522901)))

(declare-fun res!627127 () Bool)

(assert (=> b!931034 (=> (not res!627127) (not e!522901))))

(declare-datatypes ((tuple2!13272 0))(
  ( (tuple2!13273 (_1!6646 (_ BitVec 64)) (_2!6646 V!31647)) )
))
(declare-datatypes ((List!19089 0))(
  ( (Nil!19086) (Cons!19085 (h!20231 tuple2!13272) (t!27154 List!19089)) )
))
(declare-datatypes ((ListLongMap!11983 0))(
  ( (ListLongMap!11984 (toList!6007 List!19089)) )
))
(declare-fun lt!419331 () ListLongMap!11983)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5011 (ListLongMap!11983 (_ BitVec 64)) Bool)

(assert (=> b!931034 (= res!627127 (contains!5011 lt!419331 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31647)

(declare-fun minValue!1173 () V!31647)

(declare-fun getCurrentListMap!3205 (array!55990 array!55992 (_ BitVec 32) (_ BitVec 32) V!31647 V!31647 (_ BitVec 32) Int) ListLongMap!11983)

(assert (=> b!931034 (= lt!419331 (getCurrentListMap!3205 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931035 () Bool)

(declare-fun res!627128 () Bool)

(assert (=> b!931035 (=> (not res!627128) (not e!522901))))

(assert (=> b!931035 (= res!627128 (validKeyInArray!0 k!1099))))

(declare-fun b!931036 () Bool)

(declare-fun res!627124 () Bool)

(assert (=> b!931036 (=> (not res!627124) (not e!522901))))

(declare-fun v!791 () V!31647)

(declare-fun apply!793 (ListLongMap!11983 (_ BitVec 64)) V!31647)

(assert (=> b!931036 (= res!627124 (= (apply!793 lt!419331 k!1099) v!791))))

(declare-fun b!931037 () Bool)

(assert (=> b!931037 (= e!522903 (and e!522898 mapRes!31773))))

(declare-fun condMapEmpty!31773 () Bool)

(declare-fun mapDefault!31773 () ValueCell!9524)

