; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79320 () Bool)

(assert start!79320)

(declare-fun b_free!17505 () Bool)

(declare-fun b_next!17505 () Bool)

(assert (=> start!79320 (= b_free!17505 (not b_next!17505))))

(declare-fun tp!60956 () Bool)

(declare-fun b_and!28589 () Bool)

(assert (=> start!79320 (= tp!60956 b_and!28589)))

(declare-fun mapIsEmpty!31776 () Bool)

(declare-fun mapRes!31776 () Bool)

(assert (=> mapIsEmpty!31776 mapRes!31776))

(declare-fun b!931064 () Bool)

(declare-fun res!627154 () Bool)

(declare-fun e!522920 () Bool)

(assert (=> b!931064 (=> (not res!627154) (not e!522920))))

(declare-datatypes ((array!55994 0))(
  ( (array!55995 (arr!26938 (Array (_ BitVec 32) (_ BitVec 64))) (size!27398 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55994)

(declare-datatypes ((List!19090 0))(
  ( (Nil!19087) (Cons!19086 (h!20232 (_ BitVec 64)) (t!27155 List!19090)) )
))
(declare-fun arrayNoDuplicates!0 (array!55994 (_ BitVec 32) List!19090) Bool)

(assert (=> b!931064 (= res!627154 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19087))))

(declare-fun b!931065 () Bool)

(declare-fun e!522918 () Bool)

(assert (=> b!931065 (= e!522920 e!522918)))

(declare-fun res!627155 () Bool)

(assert (=> b!931065 (=> (not res!627155) (not e!522918))))

(declare-datatypes ((V!31649 0))(
  ( (V!31650 (val!10057 Int)) )
))
(declare-datatypes ((tuple2!13274 0))(
  ( (tuple2!13275 (_1!6647 (_ BitVec 64)) (_2!6647 V!31649)) )
))
(declare-datatypes ((List!19091 0))(
  ( (Nil!19088) (Cons!19087 (h!20233 tuple2!13274) (t!27156 List!19091)) )
))
(declare-datatypes ((ListLongMap!11985 0))(
  ( (ListLongMap!11986 (toList!6008 List!19091)) )
))
(declare-fun lt!419334 () ListLongMap!11985)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5012 (ListLongMap!11985 (_ BitVec 64)) Bool)

(assert (=> b!931065 (= res!627155 (contains!5012 lt!419334 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9525 0))(
  ( (ValueCellFull!9525 (v!12575 V!31649)) (EmptyCell!9525) )
))
(declare-datatypes ((array!55996 0))(
  ( (array!55997 (arr!26939 (Array (_ BitVec 32) ValueCell!9525)) (size!27399 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55996)

(declare-fun zeroValue!1173 () V!31649)

(declare-fun minValue!1173 () V!31649)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3206 (array!55994 array!55996 (_ BitVec 32) (_ BitVec 32) V!31649 V!31649 (_ BitVec 32) Int) ListLongMap!11985)

(assert (=> b!931065 (= lt!419334 (getCurrentListMap!3206 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931066 () Bool)

(declare-fun res!627149 () Bool)

(assert (=> b!931066 (=> (not res!627149) (not e!522918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931066 (= res!627149 (validKeyInArray!0 (select (arr!26938 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun res!627151 () Bool)

(assert (=> start!79320 (=> (not res!627151) (not e!522920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79320 (= res!627151 (validMask!0 mask!1881))))

(assert (=> start!79320 e!522920))

(assert (=> start!79320 true))

(declare-fun tp_is_empty!20013 () Bool)

(assert (=> start!79320 tp_is_empty!20013))

(declare-fun e!522919 () Bool)

(declare-fun array_inv!20942 (array!55996) Bool)

(assert (=> start!79320 (and (array_inv!20942 _values!1231) e!522919)))

(assert (=> start!79320 tp!60956))

(declare-fun array_inv!20943 (array!55994) Bool)

(assert (=> start!79320 (array_inv!20943 _keys!1487)))

(declare-fun b!931067 () Bool)

(assert (=> b!931067 (= e!522918 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27398 _keys!1487)))))

(declare-fun b!931068 () Bool)

(declare-fun e!522916 () Bool)

(assert (=> b!931068 (= e!522916 tp_is_empty!20013)))

(declare-fun b!931069 () Bool)

(declare-fun res!627152 () Bool)

(assert (=> b!931069 (=> (not res!627152) (not e!522918))))

(assert (=> b!931069 (= res!627152 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931070 () Bool)

(declare-fun res!627150 () Bool)

(assert (=> b!931070 (=> (not res!627150) (not e!522918))))

(declare-fun v!791 () V!31649)

(declare-fun apply!794 (ListLongMap!11985 (_ BitVec 64)) V!31649)

(assert (=> b!931070 (= res!627150 (= (apply!794 lt!419334 k0!1099) v!791))))

(declare-fun b!931071 () Bool)

(declare-fun res!627156 () Bool)

(assert (=> b!931071 (=> (not res!627156) (not e!522920))))

(assert (=> b!931071 (= res!627156 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27398 _keys!1487))))))

(declare-fun b!931072 () Bool)

(assert (=> b!931072 (= e!522919 (and e!522916 mapRes!31776))))

(declare-fun condMapEmpty!31776 () Bool)

(declare-fun mapDefault!31776 () ValueCell!9525)

(assert (=> b!931072 (= condMapEmpty!31776 (= (arr!26939 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9525)) mapDefault!31776)))))

(declare-fun b!931073 () Bool)

(declare-fun res!627158 () Bool)

(assert (=> b!931073 (=> (not res!627158) (not e!522918))))

(assert (=> b!931073 (= res!627158 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31776 () Bool)

(declare-fun tp!60957 () Bool)

(declare-fun e!522917 () Bool)

(assert (=> mapNonEmpty!31776 (= mapRes!31776 (and tp!60957 e!522917))))

(declare-fun mapValue!31776 () ValueCell!9525)

(declare-fun mapKey!31776 () (_ BitVec 32))

(declare-fun mapRest!31776 () (Array (_ BitVec 32) ValueCell!9525))

(assert (=> mapNonEmpty!31776 (= (arr!26939 _values!1231) (store mapRest!31776 mapKey!31776 mapValue!31776))))

(declare-fun b!931074 () Bool)

(assert (=> b!931074 (= e!522917 tp_is_empty!20013)))

(declare-fun b!931075 () Bool)

(declare-fun res!627157 () Bool)

(assert (=> b!931075 (=> (not res!627157) (not e!522920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55994 (_ BitVec 32)) Bool)

(assert (=> b!931075 (= res!627157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931076 () Bool)

(declare-fun res!627153 () Bool)

(assert (=> b!931076 (=> (not res!627153) (not e!522920))))

(assert (=> b!931076 (= res!627153 (and (= (size!27399 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27398 _keys!1487) (size!27399 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79320 res!627151) b!931076))

(assert (= (and b!931076 res!627153) b!931075))

(assert (= (and b!931075 res!627157) b!931064))

(assert (= (and b!931064 res!627154) b!931071))

(assert (= (and b!931071 res!627156) b!931065))

(assert (= (and b!931065 res!627155) b!931070))

(assert (= (and b!931070 res!627150) b!931069))

(assert (= (and b!931069 res!627152) b!931073))

(assert (= (and b!931073 res!627158) b!931066))

(assert (= (and b!931066 res!627149) b!931067))

(assert (= (and b!931072 condMapEmpty!31776) mapIsEmpty!31776))

(assert (= (and b!931072 (not condMapEmpty!31776)) mapNonEmpty!31776))

(get-info :version)

(assert (= (and mapNonEmpty!31776 ((_ is ValueCellFull!9525) mapValue!31776)) b!931074))

(assert (= (and b!931072 ((_ is ValueCellFull!9525) mapDefault!31776)) b!931068))

(assert (= start!79320 b!931072))

(declare-fun m!865117 () Bool)

(assert (=> b!931066 m!865117))

(assert (=> b!931066 m!865117))

(declare-fun m!865119 () Bool)

(assert (=> b!931066 m!865119))

(declare-fun m!865121 () Bool)

(assert (=> b!931070 m!865121))

(declare-fun m!865123 () Bool)

(assert (=> mapNonEmpty!31776 m!865123))

(declare-fun m!865125 () Bool)

(assert (=> b!931065 m!865125))

(declare-fun m!865127 () Bool)

(assert (=> b!931065 m!865127))

(declare-fun m!865129 () Bool)

(assert (=> b!931075 m!865129))

(declare-fun m!865131 () Bool)

(assert (=> b!931073 m!865131))

(declare-fun m!865133 () Bool)

(assert (=> start!79320 m!865133))

(declare-fun m!865135 () Bool)

(assert (=> start!79320 m!865135))

(declare-fun m!865137 () Bool)

(assert (=> start!79320 m!865137))

(declare-fun m!865139 () Bool)

(assert (=> b!931064 m!865139))

(check-sat (not b!931070) (not b!931065) b_and!28589 tp_is_empty!20013 (not b!931066) (not start!79320) (not b_next!17505) (not b!931064) (not b!931075) (not b!931073) (not mapNonEmpty!31776))
(check-sat b_and!28589 (not b_next!17505))
