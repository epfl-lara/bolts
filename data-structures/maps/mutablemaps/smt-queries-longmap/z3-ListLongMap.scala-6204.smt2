; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79388 () Bool)

(assert start!79388)

(declare-fun b_free!17547 () Bool)

(declare-fun b_next!17547 () Bool)

(assert (=> start!79388 (= b_free!17547 (not b_next!17547))))

(declare-fun tp!61085 () Bool)

(declare-fun b_and!28671 () Bool)

(assert (=> start!79388 (= tp!61085 b_and!28671)))

(declare-fun b!932049 () Bool)

(declare-fun res!627823 () Bool)

(declare-fun e!523460 () Bool)

(assert (=> b!932049 (=> (not res!627823) (not e!523460))))

(declare-datatypes ((array!56078 0))(
  ( (array!56079 (arr!26979 (Array (_ BitVec 32) (_ BitVec 64))) (size!27439 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56078)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31705 0))(
  ( (V!31706 (val!10078 Int)) )
))
(declare-datatypes ((ValueCell!9546 0))(
  ( (ValueCellFull!9546 (v!12597 V!31705)) (EmptyCell!9546) )
))
(declare-datatypes ((array!56080 0))(
  ( (array!56081 (arr!26980 (Array (_ BitVec 32) ValueCell!9546)) (size!27440 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56080)

(assert (=> b!932049 (= res!627823 (and (= (size!27440 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27439 _keys!1487) (size!27440 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!627824 () Bool)

(assert (=> start!79388 (=> (not res!627824) (not e!523460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79388 (= res!627824 (validMask!0 mask!1881))))

(assert (=> start!79388 e!523460))

(assert (=> start!79388 true))

(declare-fun tp_is_empty!20055 () Bool)

(assert (=> start!79388 tp_is_empty!20055))

(declare-fun e!523454 () Bool)

(declare-fun array_inv!20970 (array!56080) Bool)

(assert (=> start!79388 (and (array_inv!20970 _values!1231) e!523454)))

(assert (=> start!79388 tp!61085))

(declare-fun array_inv!20971 (array!56078) Bool)

(assert (=> start!79388 (array_inv!20971 _keys!1487)))

(declare-fun b!932050 () Bool)

(declare-fun e!523456 () Bool)

(assert (=> b!932050 (= e!523460 e!523456)))

(declare-fun res!627820 () Bool)

(assert (=> b!932050 (=> (not res!627820) (not e!523456))))

(declare-datatypes ((tuple2!13308 0))(
  ( (tuple2!13309 (_1!6664 (_ BitVec 64)) (_2!6664 V!31705)) )
))
(declare-datatypes ((List!19120 0))(
  ( (Nil!19117) (Cons!19116 (h!20262 tuple2!13308) (t!27219 List!19120)) )
))
(declare-datatypes ((ListLongMap!12019 0))(
  ( (ListLongMap!12020 (toList!6025 List!19120)) )
))
(declare-fun lt!419736 () ListLongMap!12019)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5026 (ListLongMap!12019 (_ BitVec 64)) Bool)

(assert (=> b!932050 (= res!627820 (contains!5026 lt!419736 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31705)

(declare-fun minValue!1173 () V!31705)

(declare-fun getCurrentListMap!3219 (array!56078 array!56080 (_ BitVec 32) (_ BitVec 32) V!31705 V!31705 (_ BitVec 32) Int) ListLongMap!12019)

(assert (=> b!932050 (= lt!419736 (getCurrentListMap!3219 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932051 () Bool)

(declare-fun e!523458 () Bool)

(assert (=> b!932051 (= e!523458 tp_is_empty!20055)))

(declare-fun b!932052 () Bool)

(declare-fun res!627826 () Bool)

(assert (=> b!932052 (=> (not res!627826) (not e!523460))))

(declare-datatypes ((List!19121 0))(
  ( (Nil!19118) (Cons!19117 (h!20263 (_ BitVec 64)) (t!27220 List!19121)) )
))
(declare-fun arrayNoDuplicates!0 (array!56078 (_ BitVec 32) List!19121) Bool)

(assert (=> b!932052 (= res!627826 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19118))))

(declare-fun b!932053 () Bool)

(declare-fun e!523457 () Bool)

(assert (=> b!932053 (= e!523457 tp_is_empty!20055)))

(declare-fun b!932054 () Bool)

(declare-fun res!627827 () Bool)

(assert (=> b!932054 (=> (not res!627827) (not e!523456))))

(declare-fun v!791 () V!31705)

(declare-fun apply!810 (ListLongMap!12019 (_ BitVec 64)) V!31705)

(assert (=> b!932054 (= res!627827 (= (apply!810 lt!419736 k0!1099) v!791))))

(declare-fun mapNonEmpty!31842 () Bool)

(declare-fun mapRes!31842 () Bool)

(declare-fun tp!61086 () Bool)

(assert (=> mapNonEmpty!31842 (= mapRes!31842 (and tp!61086 e!523457))))

(declare-fun mapKey!31842 () (_ BitVec 32))

(declare-fun mapRest!31842 () (Array (_ BitVec 32) ValueCell!9546))

(declare-fun mapValue!31842 () ValueCell!9546)

(assert (=> mapNonEmpty!31842 (= (arr!26980 _values!1231) (store mapRest!31842 mapKey!31842 mapValue!31842))))

(declare-fun b!932055 () Bool)

(declare-fun e!523455 () Bool)

(assert (=> b!932055 (= e!523456 e!523455)))

(declare-fun res!627825 () Bool)

(assert (=> b!932055 (=> (not res!627825) (not e!523455))))

(declare-fun lt!419737 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932055 (= res!627825 (validKeyInArray!0 lt!419737))))

(assert (=> b!932055 (= lt!419737 (select (arr!26979 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31842 () Bool)

(assert (=> mapIsEmpty!31842 mapRes!31842))

(declare-fun b!932056 () Bool)

(declare-fun res!627818 () Bool)

(assert (=> b!932056 (=> (not res!627818) (not e!523456))))

(assert (=> b!932056 (= res!627818 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932057 () Bool)

(declare-fun res!627821 () Bool)

(assert (=> b!932057 (=> (not res!627821) (not e!523456))))

(assert (=> b!932057 (= res!627821 (validKeyInArray!0 k0!1099))))

(declare-fun b!932058 () Bool)

(assert (=> b!932058 (= e!523454 (and e!523458 mapRes!31842))))

(declare-fun condMapEmpty!31842 () Bool)

(declare-fun mapDefault!31842 () ValueCell!9546)

(assert (=> b!932058 (= condMapEmpty!31842 (= (arr!26980 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9546)) mapDefault!31842)))))

(declare-fun b!932059 () Bool)

(declare-fun res!627819 () Bool)

(assert (=> b!932059 (=> (not res!627819) (not e!523460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56078 (_ BitVec 32)) Bool)

(assert (=> b!932059 (= res!627819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932060 () Bool)

(declare-fun res!627822 () Bool)

(assert (=> b!932060 (=> (not res!627822) (not e!523460))))

(assert (=> b!932060 (= res!627822 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27439 _keys!1487))))))

(declare-fun b!932061 () Bool)

(assert (=> b!932061 (= e!523455 (not (or (bvsge (size!27439 _keys!1487) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!27439 _keys!1487)))))))

(declare-fun lt!419732 () tuple2!13308)

(declare-fun +!2733 (ListLongMap!12019 tuple2!13308) ListLongMap!12019)

(assert (=> b!932061 (contains!5026 (+!2733 lt!419736 lt!419732) k0!1099)))

(declare-fun lt!419734 () V!31705)

(declare-datatypes ((Unit!31454 0))(
  ( (Unit!31455) )
))
(declare-fun lt!419735 () Unit!31454)

(declare-fun addStillContains!489 (ListLongMap!12019 (_ BitVec 64) V!31705 (_ BitVec 64)) Unit!31454)

(assert (=> b!932061 (= lt!419735 (addStillContains!489 lt!419736 lt!419737 lt!419734 k0!1099))))

(assert (=> b!932061 (= (getCurrentListMap!3219 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2733 (getCurrentListMap!3219 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419732))))

(assert (=> b!932061 (= lt!419732 (tuple2!13309 lt!419737 lt!419734))))

(declare-fun get!14197 (ValueCell!9546 V!31705) V!31705)

(declare-fun dynLambda!1572 (Int (_ BitVec 64)) V!31705)

(assert (=> b!932061 (= lt!419734 (get!14197 (select (arr!26980 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1572 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419733 () Unit!31454)

(declare-fun lemmaListMapRecursiveValidKeyArray!168 (array!56078 array!56080 (_ BitVec 32) (_ BitVec 32) V!31705 V!31705 (_ BitVec 32) Int) Unit!31454)

(assert (=> b!932061 (= lt!419733 (lemmaListMapRecursiveValidKeyArray!168 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (= (and start!79388 res!627824) b!932049))

(assert (= (and b!932049 res!627823) b!932059))

(assert (= (and b!932059 res!627819) b!932052))

(assert (= (and b!932052 res!627826) b!932060))

(assert (= (and b!932060 res!627822) b!932050))

(assert (= (and b!932050 res!627820) b!932054))

(assert (= (and b!932054 res!627827) b!932056))

(assert (= (and b!932056 res!627818) b!932057))

(assert (= (and b!932057 res!627821) b!932055))

(assert (= (and b!932055 res!627825) b!932061))

(assert (= (and b!932058 condMapEmpty!31842) mapIsEmpty!31842))

(assert (= (and b!932058 (not condMapEmpty!31842)) mapNonEmpty!31842))

(get-info :version)

(assert (= (and mapNonEmpty!31842 ((_ is ValueCellFull!9546) mapValue!31842)) b!932053))

(assert (= (and b!932058 ((_ is ValueCellFull!9546) mapDefault!31842)) b!932051))

(assert (= start!79388 b!932058))

(declare-fun b_lambda!13911 () Bool)

(assert (=> (not b_lambda!13911) (not b!932061)))

(declare-fun t!27218 () Bool)

(declare-fun tb!5949 () Bool)

(assert (=> (and start!79388 (= defaultEntry!1235 defaultEntry!1235) t!27218) tb!5949))

(declare-fun result!11715 () Bool)

(assert (=> tb!5949 (= result!11715 tp_is_empty!20055)))

(assert (=> b!932061 t!27218))

(declare-fun b_and!28673 () Bool)

(assert (= b_and!28671 (and (=> t!27218 result!11715) b_and!28673)))

(declare-fun m!866107 () Bool)

(assert (=> b!932052 m!866107))

(declare-fun m!866109 () Bool)

(assert (=> b!932055 m!866109))

(declare-fun m!866111 () Bool)

(assert (=> b!932055 m!866111))

(declare-fun m!866113 () Bool)

(assert (=> b!932061 m!866113))

(declare-fun m!866115 () Bool)

(assert (=> b!932061 m!866115))

(declare-fun m!866117 () Bool)

(assert (=> b!932061 m!866117))

(assert (=> b!932061 m!866113))

(assert (=> b!932061 m!866117))

(declare-fun m!866119 () Bool)

(assert (=> b!932061 m!866119))

(declare-fun m!866121 () Bool)

(assert (=> b!932061 m!866121))

(declare-fun m!866123 () Bool)

(assert (=> b!932061 m!866123))

(assert (=> b!932061 m!866123))

(declare-fun m!866125 () Bool)

(assert (=> b!932061 m!866125))

(declare-fun m!866127 () Bool)

(assert (=> b!932061 m!866127))

(declare-fun m!866129 () Bool)

(assert (=> b!932061 m!866129))

(assert (=> b!932061 m!866129))

(declare-fun m!866131 () Bool)

(assert (=> b!932061 m!866131))

(declare-fun m!866133 () Bool)

(assert (=> b!932054 m!866133))

(declare-fun m!866135 () Bool)

(assert (=> b!932050 m!866135))

(declare-fun m!866137 () Bool)

(assert (=> b!932050 m!866137))

(declare-fun m!866139 () Bool)

(assert (=> b!932059 m!866139))

(declare-fun m!866141 () Bool)

(assert (=> start!79388 m!866141))

(declare-fun m!866143 () Bool)

(assert (=> start!79388 m!866143))

(declare-fun m!866145 () Bool)

(assert (=> start!79388 m!866145))

(declare-fun m!866147 () Bool)

(assert (=> b!932057 m!866147))

(declare-fun m!866149 () Bool)

(assert (=> mapNonEmpty!31842 m!866149))

(check-sat (not b!932054) (not b!932061) (not b!932050) (not b_next!17547) (not b_lambda!13911) (not b!932052) (not b!932055) (not b!932059) (not b!932057) b_and!28673 (not mapNonEmpty!31842) tp_is_empty!20055 (not start!79388))
(check-sat b_and!28673 (not b_next!17547))
