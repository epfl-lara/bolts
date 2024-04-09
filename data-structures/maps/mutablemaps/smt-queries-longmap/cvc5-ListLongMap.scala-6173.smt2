; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79174 () Bool)

(assert start!79174)

(declare-fun b_free!17359 () Bool)

(declare-fun b_next!17359 () Bool)

(assert (=> start!79174 (= b_free!17359 (not b_next!17359))))

(declare-fun tp!60518 () Bool)

(declare-fun b_and!28443 () Bool)

(assert (=> start!79174 (= tp!60518 b_and!28443)))

(declare-fun b!928848 () Bool)

(declare-fun e!521607 () Bool)

(assert (=> b!928848 (= e!521607 false)))

(declare-datatypes ((V!31455 0))(
  ( (V!31456 (val!9984 Int)) )
))
(declare-fun lt!418928 () V!31455)

(declare-datatypes ((tuple2!13156 0))(
  ( (tuple2!13157 (_1!6588 (_ BitVec 64)) (_2!6588 V!31455)) )
))
(declare-datatypes ((List!18979 0))(
  ( (Nil!18976) (Cons!18975 (h!20121 tuple2!13156) (t!27044 List!18979)) )
))
(declare-datatypes ((ListLongMap!11867 0))(
  ( (ListLongMap!11868 (toList!5949 List!18979)) )
))
(declare-fun lt!418929 () ListLongMap!11867)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!744 (ListLongMap!11867 (_ BitVec 64)) V!31455)

(assert (=> b!928848 (= lt!418928 (apply!744 lt!418929 k!1099))))

(declare-fun mapNonEmpty!31557 () Bool)

(declare-fun mapRes!31557 () Bool)

(declare-fun tp!60519 () Bool)

(declare-fun e!521605 () Bool)

(assert (=> mapNonEmpty!31557 (= mapRes!31557 (and tp!60519 e!521605))))

(declare-fun mapKey!31557 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9452 0))(
  ( (ValueCellFull!9452 (v!12502 V!31455)) (EmptyCell!9452) )
))
(declare-fun mapRest!31557 () (Array (_ BitVec 32) ValueCell!9452))

(declare-datatypes ((array!55710 0))(
  ( (array!55711 (arr!26796 (Array (_ BitVec 32) ValueCell!9452)) (size!27256 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55710)

(declare-fun mapValue!31557 () ValueCell!9452)

(assert (=> mapNonEmpty!31557 (= (arr!26796 _values!1231) (store mapRest!31557 mapKey!31557 mapValue!31557))))

(declare-fun b!928849 () Bool)

(declare-fun res!625590 () Bool)

(declare-fun e!521606 () Bool)

(assert (=> b!928849 (=> (not res!625590) (not e!521606))))

(declare-datatypes ((array!55712 0))(
  ( (array!55713 (arr!26797 (Array (_ BitVec 32) (_ BitVec 64))) (size!27257 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55712)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55712 (_ BitVec 32)) Bool)

(assert (=> b!928849 (= res!625590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31557 () Bool)

(assert (=> mapIsEmpty!31557 mapRes!31557))

(declare-fun b!928851 () Bool)

(declare-fun res!625594 () Bool)

(assert (=> b!928851 (=> (not res!625594) (not e!521606))))

(declare-datatypes ((List!18980 0))(
  ( (Nil!18977) (Cons!18976 (h!20122 (_ BitVec 64)) (t!27045 List!18980)) )
))
(declare-fun arrayNoDuplicates!0 (array!55712 (_ BitVec 32) List!18980) Bool)

(assert (=> b!928851 (= res!625594 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18977))))

(declare-fun b!928852 () Bool)

(declare-fun res!625593 () Bool)

(assert (=> b!928852 (=> (not res!625593) (not e!521606))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928852 (= res!625593 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27257 _keys!1487))))))

(declare-fun b!928853 () Bool)

(declare-fun e!521602 () Bool)

(declare-fun tp_is_empty!19867 () Bool)

(assert (=> b!928853 (= e!521602 tp_is_empty!19867)))

(declare-fun b!928854 () Bool)

(assert (=> b!928854 (= e!521605 tp_is_empty!19867)))

(declare-fun res!625595 () Bool)

(assert (=> start!79174 (=> (not res!625595) (not e!521606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79174 (= res!625595 (validMask!0 mask!1881))))

(assert (=> start!79174 e!521606))

(assert (=> start!79174 true))

(declare-fun e!521604 () Bool)

(declare-fun array_inv!20854 (array!55710) Bool)

(assert (=> start!79174 (and (array_inv!20854 _values!1231) e!521604)))

(assert (=> start!79174 tp!60518))

(declare-fun array_inv!20855 (array!55712) Bool)

(assert (=> start!79174 (array_inv!20855 _keys!1487)))

(assert (=> start!79174 tp_is_empty!19867))

(declare-fun b!928850 () Bool)

(assert (=> b!928850 (= e!521606 e!521607)))

(declare-fun res!625591 () Bool)

(assert (=> b!928850 (=> (not res!625591) (not e!521607))))

(declare-fun contains!4965 (ListLongMap!11867 (_ BitVec 64)) Bool)

(assert (=> b!928850 (= res!625591 (contains!4965 lt!418929 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31455)

(declare-fun minValue!1173 () V!31455)

(declare-fun getCurrentListMap!3159 (array!55712 array!55710 (_ BitVec 32) (_ BitVec 32) V!31455 V!31455 (_ BitVec 32) Int) ListLongMap!11867)

(assert (=> b!928850 (= lt!418929 (getCurrentListMap!3159 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928855 () Bool)

(assert (=> b!928855 (= e!521604 (and e!521602 mapRes!31557))))

(declare-fun condMapEmpty!31557 () Bool)

(declare-fun mapDefault!31557 () ValueCell!9452)

