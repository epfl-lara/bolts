; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79658 () Bool)

(assert start!79658)

(declare-fun b_free!17679 () Bool)

(declare-fun b_next!17679 () Bool)

(assert (=> start!79658 (= b_free!17679 (not b_next!17679))))

(declare-fun tp!61493 () Bool)

(declare-fun b_and!28967 () Bool)

(assert (=> start!79658 (= tp!61493 b_and!28967)))

(declare-fun b!935810 () Bool)

(declare-fun res!630274 () Bool)

(declare-fun e!525506 () Bool)

(assert (=> b!935810 (=> (not res!630274) (not e!525506))))

(declare-datatypes ((array!56338 0))(
  ( (array!56339 (arr!27105 (Array (_ BitVec 32) (_ BitVec 64))) (size!27565 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56338)

(declare-datatypes ((List!19227 0))(
  ( (Nil!19224) (Cons!19223 (h!20369 (_ BitVec 64)) (t!27458 List!19227)) )
))
(declare-fun arrayNoDuplicates!0 (array!56338 (_ BitVec 32) List!19227) Bool)

(assert (=> b!935810 (= res!630274 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19224))))

(declare-fun b!935811 () Bool)

(declare-fun res!630272 () Bool)

(declare-fun e!525499 () Bool)

(assert (=> b!935811 (=> (not res!630272) (not e!525499))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935811 (= res!630272 (validKeyInArray!0 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!935812 () Bool)

(declare-fun e!525503 () Bool)

(declare-fun arrayContainsKey!0 (array!56338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935812 (= e!525503 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapIsEmpty!32052 () Bool)

(declare-fun mapRes!32052 () Bool)

(assert (=> mapIsEmpty!32052 mapRes!32052))

(declare-fun b!935813 () Bool)

(declare-fun res!630270 () Bool)

(assert (=> b!935813 (=> (not res!630270) (not e!525506))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56338 (_ BitVec 32)) Bool)

(assert (=> b!935813 (= res!630270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!630278 () Bool)

(assert (=> start!79658 (=> (not res!630278) (not e!525506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79658 (= res!630278 (validMask!0 mask!1881))))

(assert (=> start!79658 e!525506))

(assert (=> start!79658 true))

(declare-fun tp_is_empty!20187 () Bool)

(assert (=> start!79658 tp_is_empty!20187))

(declare-datatypes ((V!31881 0))(
  ( (V!31882 (val!10144 Int)) )
))
(declare-datatypes ((ValueCell!9612 0))(
  ( (ValueCellFull!9612 (v!12669 V!31881)) (EmptyCell!9612) )
))
(declare-datatypes ((array!56340 0))(
  ( (array!56341 (arr!27106 (Array (_ BitVec 32) ValueCell!9612)) (size!27566 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56340)

(declare-fun e!525500 () Bool)

(declare-fun array_inv!21046 (array!56340) Bool)

(assert (=> start!79658 (and (array_inv!21046 _values!1231) e!525500)))

(assert (=> start!79658 tp!61493))

(declare-fun array_inv!21047 (array!56338) Bool)

(assert (=> start!79658 (array_inv!21047 _keys!1487)))

(declare-fun b!935814 () Bool)

(declare-fun e!525501 () Bool)

(assert (=> b!935814 (= e!525501 tp_is_empty!20187)))

(declare-fun b!935815 () Bool)

(declare-fun res!630273 () Bool)

(assert (=> b!935815 (=> (not res!630273) (not e!525506))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935815 (= res!630273 (and (= (size!27566 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27565 _keys!1487) (size!27566 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32052 () Bool)

(declare-fun tp!61494 () Bool)

(assert (=> mapNonEmpty!32052 (= mapRes!32052 (and tp!61494 e!525501))))

(declare-fun mapKey!32052 () (_ BitVec 32))

(declare-fun mapRest!32052 () (Array (_ BitVec 32) ValueCell!9612))

(declare-fun mapValue!32052 () ValueCell!9612)

(assert (=> mapNonEmpty!32052 (= (arr!27106 _values!1231) (store mapRest!32052 mapKey!32052 mapValue!32052))))

(declare-fun b!935816 () Bool)

(declare-fun res!630271 () Bool)

(assert (=> b!935816 (=> (not res!630271) (not e!525499))))

(declare-fun v!791 () V!31881)

(declare-datatypes ((tuple2!13420 0))(
  ( (tuple2!13421 (_1!6720 (_ BitVec 64)) (_2!6720 V!31881)) )
))
(declare-datatypes ((List!19228 0))(
  ( (Nil!19225) (Cons!19224 (h!20370 tuple2!13420) (t!27459 List!19228)) )
))
(declare-datatypes ((ListLongMap!12131 0))(
  ( (ListLongMap!12132 (toList!6081 List!19228)) )
))
(declare-fun lt!421865 () ListLongMap!12131)

(declare-fun apply!859 (ListLongMap!12131 (_ BitVec 64)) V!31881)

(assert (=> b!935816 (= res!630271 (= (apply!859 lt!421865 k0!1099) v!791))))

(declare-fun b!935817 () Bool)

(declare-fun e!525502 () Bool)

(assert (=> b!935817 (= e!525499 e!525502)))

(declare-fun res!630269 () Bool)

(assert (=> b!935817 (=> (not res!630269) (not e!525502))))

(declare-fun lt!421873 () (_ BitVec 64))

(assert (=> b!935817 (= res!630269 (validKeyInArray!0 lt!421873))))

(assert (=> b!935817 (= lt!421873 (select (arr!27105 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!935818 () Bool)

(declare-fun e!525505 () Bool)

(assert (=> b!935818 (= e!525505 tp_is_empty!20187)))

(declare-fun b!935819 () Bool)

(assert (=> b!935819 (= e!525502 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27565 _keys!1487))))))

(assert (=> b!935819 (not (= lt!421873 k0!1099))))

(declare-datatypes ((Unit!31566 0))(
  ( (Unit!31567) )
))
(declare-fun lt!421871 () Unit!31566)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56338 (_ BitVec 64) (_ BitVec 32) List!19227) Unit!31566)

(assert (=> b!935819 (= lt!421871 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19224))))

(assert (=> b!935819 e!525503))

(declare-fun c!97268 () Bool)

(assert (=> b!935819 (= c!97268 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421868 () Unit!31566)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31881)

(declare-fun minValue!1173 () V!31881)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!292 (array!56338 array!56340 (_ BitVec 32) (_ BitVec 32) V!31881 V!31881 (_ BitVec 64) (_ BitVec 32) Int) Unit!31566)

(assert (=> b!935819 (= lt!421868 (lemmaListMapContainsThenArrayContainsFrom!292 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!935819 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19224)))

(declare-fun lt!421870 () Unit!31566)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56338 (_ BitVec 32) (_ BitVec 32)) Unit!31566)

(assert (=> b!935819 (= lt!421870 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421869 () tuple2!13420)

(declare-fun contains!5093 (ListLongMap!12131 (_ BitVec 64)) Bool)

(declare-fun +!2779 (ListLongMap!12131 tuple2!13420) ListLongMap!12131)

(assert (=> b!935819 (contains!5093 (+!2779 lt!421865 lt!421869) k0!1099)))

(declare-fun lt!421872 () V!31881)

(declare-fun lt!421867 () Unit!31566)

(declare-fun addStillContains!535 (ListLongMap!12131 (_ BitVec 64) V!31881 (_ BitVec 64)) Unit!31566)

(assert (=> b!935819 (= lt!421867 (addStillContains!535 lt!421865 lt!421873 lt!421872 k0!1099))))

(declare-fun getCurrentListMap!3272 (array!56338 array!56340 (_ BitVec 32) (_ BitVec 32) V!31881 V!31881 (_ BitVec 32) Int) ListLongMap!12131)

(assert (=> b!935819 (= (getCurrentListMap!3272 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2779 (getCurrentListMap!3272 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421869))))

(assert (=> b!935819 (= lt!421869 (tuple2!13421 lt!421873 lt!421872))))

(declare-fun get!14299 (ValueCell!9612 V!31881) V!31881)

(declare-fun dynLambda!1618 (Int (_ BitVec 64)) V!31881)

(assert (=> b!935819 (= lt!421872 (get!14299 (select (arr!27106 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1618 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421866 () Unit!31566)

(declare-fun lemmaListMapRecursiveValidKeyArray!214 (array!56338 array!56340 (_ BitVec 32) (_ BitVec 32) V!31881 V!31881 (_ BitVec 32) Int) Unit!31566)

(assert (=> b!935819 (= lt!421866 (lemmaListMapRecursiveValidKeyArray!214 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935820 () Bool)

(declare-fun res!630275 () Bool)

(assert (=> b!935820 (=> (not res!630275) (not e!525499))))

(assert (=> b!935820 (= res!630275 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935821 () Bool)

(assert (=> b!935821 (= e!525503 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935822 () Bool)

(declare-fun res!630276 () Bool)

(assert (=> b!935822 (=> (not res!630276) (not e!525506))))

(assert (=> b!935822 (= res!630276 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27565 _keys!1487))))))

(declare-fun b!935823 () Bool)

(assert (=> b!935823 (= e!525500 (and e!525505 mapRes!32052))))

(declare-fun condMapEmpty!32052 () Bool)

(declare-fun mapDefault!32052 () ValueCell!9612)

(assert (=> b!935823 (= condMapEmpty!32052 (= (arr!27106 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9612)) mapDefault!32052)))))

(declare-fun b!935824 () Bool)

(assert (=> b!935824 (= e!525506 e!525499)))

(declare-fun res!630277 () Bool)

(assert (=> b!935824 (=> (not res!630277) (not e!525499))))

(assert (=> b!935824 (= res!630277 (contains!5093 lt!421865 k0!1099))))

(assert (=> b!935824 (= lt!421865 (getCurrentListMap!3272 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!79658 res!630278) b!935815))

(assert (= (and b!935815 res!630273) b!935813))

(assert (= (and b!935813 res!630270) b!935810))

(assert (= (and b!935810 res!630274) b!935822))

(assert (= (and b!935822 res!630276) b!935824))

(assert (= (and b!935824 res!630277) b!935816))

(assert (= (and b!935816 res!630271) b!935820))

(assert (= (and b!935820 res!630275) b!935811))

(assert (= (and b!935811 res!630272) b!935817))

(assert (= (and b!935817 res!630269) b!935819))

(assert (= (and b!935819 c!97268) b!935812))

(assert (= (and b!935819 (not c!97268)) b!935821))

(assert (= (and b!935823 condMapEmpty!32052) mapIsEmpty!32052))

(assert (= (and b!935823 (not condMapEmpty!32052)) mapNonEmpty!32052))

(get-info :version)

(assert (= (and mapNonEmpty!32052 ((_ is ValueCellFull!9612) mapValue!32052)) b!935814))

(assert (= (and b!935823 ((_ is ValueCellFull!9612) mapDefault!32052)) b!935818))

(assert (= start!79658 b!935823))

(declare-fun b_lambda!14115 () Bool)

(assert (=> (not b_lambda!14115) (not b!935819)))

(declare-fun t!27457 () Bool)

(declare-fun tb!6081 () Bool)

(assert (=> (and start!79658 (= defaultEntry!1235 defaultEntry!1235) t!27457) tb!6081))

(declare-fun result!11987 () Bool)

(assert (=> tb!6081 (= result!11987 tp_is_empty!20187)))

(assert (=> b!935819 t!27457))

(declare-fun b_and!28969 () Bool)

(assert (= b_and!28967 (and (=> t!27457 result!11987) b_and!28969)))

(declare-fun m!870449 () Bool)

(assert (=> b!935813 m!870449))

(declare-fun m!870451 () Bool)

(assert (=> b!935819 m!870451))

(declare-fun m!870453 () Bool)

(assert (=> b!935819 m!870453))

(declare-fun m!870455 () Bool)

(assert (=> b!935819 m!870455))

(declare-fun m!870457 () Bool)

(assert (=> b!935819 m!870457))

(declare-fun m!870459 () Bool)

(assert (=> b!935819 m!870459))

(declare-fun m!870461 () Bool)

(assert (=> b!935819 m!870461))

(declare-fun m!870463 () Bool)

(assert (=> b!935819 m!870463))

(declare-fun m!870465 () Bool)

(assert (=> b!935819 m!870465))

(declare-fun m!870467 () Bool)

(assert (=> b!935819 m!870467))

(assert (=> b!935819 m!870451))

(assert (=> b!935819 m!870453))

(declare-fun m!870469 () Bool)

(assert (=> b!935819 m!870469))

(declare-fun m!870471 () Bool)

(assert (=> b!935819 m!870471))

(declare-fun m!870473 () Bool)

(assert (=> b!935819 m!870473))

(declare-fun m!870475 () Bool)

(assert (=> b!935819 m!870475))

(assert (=> b!935819 m!870465))

(assert (=> b!935819 m!870471))

(declare-fun m!870477 () Bool)

(assert (=> b!935819 m!870477))

(declare-fun m!870479 () Bool)

(assert (=> start!79658 m!870479))

(declare-fun m!870481 () Bool)

(assert (=> start!79658 m!870481))

(declare-fun m!870483 () Bool)

(assert (=> start!79658 m!870483))

(declare-fun m!870485 () Bool)

(assert (=> mapNonEmpty!32052 m!870485))

(declare-fun m!870487 () Bool)

(assert (=> b!935811 m!870487))

(declare-fun m!870489 () Bool)

(assert (=> b!935817 m!870489))

(declare-fun m!870491 () Bool)

(assert (=> b!935817 m!870491))

(declare-fun m!870493 () Bool)

(assert (=> b!935812 m!870493))

(declare-fun m!870495 () Bool)

(assert (=> b!935824 m!870495))

(declare-fun m!870497 () Bool)

(assert (=> b!935824 m!870497))

(declare-fun m!870499 () Bool)

(assert (=> b!935816 m!870499))

(declare-fun m!870501 () Bool)

(assert (=> b!935810 m!870501))

(check-sat (not b!935812) (not b!935811) (not b!935813) (not b_lambda!14115) (not start!79658) b_and!28969 (not b!935810) (not b!935816) (not b!935817) (not b!935824) (not b!935819) tp_is_empty!20187 (not b_next!17679) (not mapNonEmpty!32052))
(check-sat b_and!28969 (not b_next!17679))
