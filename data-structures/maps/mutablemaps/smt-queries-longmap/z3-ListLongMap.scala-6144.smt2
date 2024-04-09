; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79002 () Bool)

(assert start!79002)

(declare-fun b_free!17187 () Bool)

(declare-fun b_next!17187 () Bool)

(assert (=> start!79002 (= b_free!17187 (not b_next!17187))))

(declare-fun tp!60002 () Bool)

(declare-fun b_and!28129 () Bool)

(assert (=> start!79002 (= tp!60002 b_and!28129)))

(declare-fun mapIsEmpty!31299 () Bool)

(declare-fun mapRes!31299 () Bool)

(assert (=> mapIsEmpty!31299 mapRes!31299))

(declare-fun b!924144 () Bool)

(declare-datatypes ((Unit!31205 0))(
  ( (Unit!31206) )
))
(declare-fun e!518626 () Unit!31205)

(declare-fun Unit!31207 () Unit!31205)

(assert (=> b!924144 (= e!518626 Unit!31207)))

(declare-fun b!924145 () Bool)

(declare-fun res!623075 () Bool)

(declare-fun e!518620 () Bool)

(assert (=> b!924145 (=> (not res!623075) (not e!518620))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31225 0))(
  ( (V!31226 (val!9898 Int)) )
))
(declare-datatypes ((ValueCell!9366 0))(
  ( (ValueCellFull!9366 (v!12416 V!31225)) (EmptyCell!9366) )
))
(declare-datatypes ((array!55374 0))(
  ( (array!55375 (arr!26628 (Array (_ BitVec 32) ValueCell!9366)) (size!27088 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55374)

(declare-datatypes ((array!55376 0))(
  ( (array!55377 (arr!26629 (Array (_ BitVec 32) (_ BitVec 64))) (size!27089 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55376)

(assert (=> b!924145 (= res!623075 (and (= (size!27088 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27089 _keys!1487) (size!27088 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924146 () Bool)

(declare-fun e!518628 () Bool)

(declare-fun e!518624 () Bool)

(assert (=> b!924146 (= e!518628 e!518624)))

(declare-fun res!623073 () Bool)

(assert (=> b!924146 (=> (not res!623073) (not e!518624))))

(declare-datatypes ((tuple2!13002 0))(
  ( (tuple2!13003 (_1!6511 (_ BitVec 64)) (_2!6511 V!31225)) )
))
(declare-datatypes ((List!18838 0))(
  ( (Nil!18835) (Cons!18834 (h!19980 tuple2!13002) (t!26763 List!18838)) )
))
(declare-datatypes ((ListLongMap!11713 0))(
  ( (ListLongMap!11714 (toList!5872 List!18838)) )
))
(declare-fun lt!415507 () ListLongMap!11713)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4896 (ListLongMap!11713 (_ BitVec 64)) Bool)

(assert (=> b!924146 (= res!623073 (contains!4896 lt!415507 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31225)

(declare-fun minValue!1173 () V!31225)

(declare-fun getCurrentListMap!3090 (array!55376 array!55374 (_ BitVec 32) (_ BitVec 32) V!31225 V!31225 (_ BitVec 32) Int) ListLongMap!11713)

(assert (=> b!924146 (= lt!415507 (getCurrentListMap!3090 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924147 () Bool)

(declare-fun e!518618 () Bool)

(declare-fun e!518623 () Bool)

(assert (=> b!924147 (= e!518618 e!518623)))

(declare-fun res!623069 () Bool)

(assert (=> b!924147 (=> (not res!623069) (not e!518623))))

(declare-fun v!791 () V!31225)

(declare-fun lt!415503 () V!31225)

(assert (=> b!924147 (= res!623069 (and (= lt!415503 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!415508 () ListLongMap!11713)

(declare-fun apply!675 (ListLongMap!11713 (_ BitVec 64)) V!31225)

(assert (=> b!924147 (= lt!415503 (apply!675 lt!415508 k0!1099))))

(declare-fun b!924148 () Bool)

(declare-fun e!518621 () Bool)

(declare-fun tp_is_empty!19695 () Bool)

(assert (=> b!924148 (= e!518621 tp_is_empty!19695)))

(declare-fun b!924149 () Bool)

(declare-fun e!518619 () Bool)

(assert (=> b!924149 (= e!518619 tp_is_empty!19695)))

(declare-fun b!924150 () Bool)

(declare-fun e!518617 () Bool)

(declare-fun arrayContainsKey!0 (array!55376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924150 (= e!518617 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!924151 () Bool)

(declare-fun lt!415510 () ListLongMap!11713)

(assert (=> b!924151 (= (apply!675 lt!415510 k0!1099) lt!415503)))

(declare-fun lt!415505 () (_ BitVec 64))

(declare-fun lt!415509 () V!31225)

(declare-fun lt!415499 () Unit!31205)

(declare-fun addApplyDifferent!366 (ListLongMap!11713 (_ BitVec 64) V!31225 (_ BitVec 64)) Unit!31205)

(assert (=> b!924151 (= lt!415499 (addApplyDifferent!366 lt!415508 lt!415505 lt!415509 k0!1099))))

(assert (=> b!924151 (not (= lt!415505 k0!1099))))

(declare-fun lt!415498 () Unit!31205)

(declare-datatypes ((List!18839 0))(
  ( (Nil!18836) (Cons!18835 (h!19981 (_ BitVec 64)) (t!26764 List!18839)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55376 (_ BitVec 64) (_ BitVec 32) List!18839) Unit!31205)

(assert (=> b!924151 (= lt!415498 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18836))))

(assert (=> b!924151 e!518617))

(declare-fun c!96318 () Bool)

(assert (=> b!924151 (= c!96318 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415511 () Unit!31205)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!226 (array!55376 array!55374 (_ BitVec 32) (_ BitVec 32) V!31225 V!31225 (_ BitVec 64) (_ BitVec 32) Int) Unit!31205)

(assert (=> b!924151 (= lt!415511 (lemmaListMapContainsThenArrayContainsFrom!226 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55376 (_ BitVec 32) List!18839) Bool)

(assert (=> b!924151 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18836)))

(declare-fun lt!415512 () Unit!31205)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55376 (_ BitVec 32) (_ BitVec 32)) Unit!31205)

(assert (=> b!924151 (= lt!415512 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!924151 (contains!4896 lt!415510 k0!1099)))

(declare-fun lt!415501 () tuple2!13002)

(declare-fun +!2680 (ListLongMap!11713 tuple2!13002) ListLongMap!11713)

(assert (=> b!924151 (= lt!415510 (+!2680 lt!415508 lt!415501))))

(declare-fun lt!415506 () Unit!31205)

(declare-fun addStillContains!442 (ListLongMap!11713 (_ BitVec 64) V!31225 (_ BitVec 64)) Unit!31205)

(assert (=> b!924151 (= lt!415506 (addStillContains!442 lt!415508 lt!415505 lt!415509 k0!1099))))

(assert (=> b!924151 (= (getCurrentListMap!3090 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2680 (getCurrentListMap!3090 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415501))))

(assert (=> b!924151 (= lt!415501 (tuple2!13003 lt!415505 lt!415509))))

(declare-fun get!14021 (ValueCell!9366 V!31225) V!31225)

(declare-fun dynLambda!1519 (Int (_ BitVec 64)) V!31225)

(assert (=> b!924151 (= lt!415509 (get!14021 (select (arr!26628 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1519 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415502 () Unit!31205)

(declare-fun lemmaListMapRecursiveValidKeyArray!115 (array!55376 array!55374 (_ BitVec 32) (_ BitVec 32) V!31225 V!31225 (_ BitVec 32) Int) Unit!31205)

(assert (=> b!924151 (= lt!415502 (lemmaListMapRecursiveValidKeyArray!115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924151 (= e!518626 lt!415499)))

(declare-fun b!924152 () Bool)

(assert (=> b!924152 (= e!518620 e!518618)))

(declare-fun res!623067 () Bool)

(assert (=> b!924152 (=> (not res!623067) (not e!518618))))

(assert (=> b!924152 (= res!623067 (contains!4896 lt!415508 k0!1099))))

(assert (=> b!924152 (= lt!415508 (getCurrentListMap!3090 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924153 () Bool)

(assert (=> b!924153 (= e!518623 e!518628)))

(declare-fun res!623070 () Bool)

(assert (=> b!924153 (=> (not res!623070) (not e!518628))))

(assert (=> b!924153 (= res!623070 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27089 _keys!1487)))))

(declare-fun lt!415504 () Unit!31205)

(declare-fun e!518622 () Unit!31205)

(assert (=> b!924153 (= lt!415504 e!518622)))

(declare-fun c!96319 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924153 (= c!96319 (validKeyInArray!0 k0!1099))))

(declare-fun b!924154 () Bool)

(declare-fun res!623074 () Bool)

(assert (=> b!924154 (=> (not res!623074) (not e!518620))))

(assert (=> b!924154 (= res!623074 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18836))))

(declare-fun b!924155 () Bool)

(declare-fun res!623068 () Bool)

(assert (=> b!924155 (=> (not res!623068) (not e!518620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55376 (_ BitVec 32)) Bool)

(assert (=> b!924155 (= res!623068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924143 () Bool)

(assert (=> b!924143 (= e!518624 false)))

(declare-fun lt!415500 () V!31225)

(assert (=> b!924143 (= lt!415500 (apply!675 lt!415507 k0!1099))))

(declare-fun res!623071 () Bool)

(assert (=> start!79002 (=> (not res!623071) (not e!518620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79002 (= res!623071 (validMask!0 mask!1881))))

(assert (=> start!79002 e!518620))

(assert (=> start!79002 true))

(assert (=> start!79002 tp_is_empty!19695))

(declare-fun e!518627 () Bool)

(declare-fun array_inv!20734 (array!55374) Bool)

(assert (=> start!79002 (and (array_inv!20734 _values!1231) e!518627)))

(assert (=> start!79002 tp!60002))

(declare-fun array_inv!20735 (array!55376) Bool)

(assert (=> start!79002 (array_inv!20735 _keys!1487)))

(declare-fun b!924156 () Bool)

(declare-fun res!623072 () Bool)

(assert (=> b!924156 (=> (not res!623072) (not e!518620))))

(assert (=> b!924156 (= res!623072 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27089 _keys!1487))))))

(declare-fun b!924157 () Bool)

(assert (=> b!924157 (= e!518627 (and e!518621 mapRes!31299))))

(declare-fun condMapEmpty!31299 () Bool)

(declare-fun mapDefault!31299 () ValueCell!9366)

(assert (=> b!924157 (= condMapEmpty!31299 (= (arr!26628 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9366)) mapDefault!31299)))))

(declare-fun b!924158 () Bool)

(assert (=> b!924158 (= e!518622 e!518626)))

(assert (=> b!924158 (= lt!415505 (select (arr!26629 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96320 () Bool)

(assert (=> b!924158 (= c!96320 (validKeyInArray!0 lt!415505))))

(declare-fun b!924159 () Bool)

(declare-fun Unit!31208 () Unit!31205)

(assert (=> b!924159 (= e!518622 Unit!31208)))

(declare-fun b!924160 () Bool)

(assert (=> b!924160 (= e!518617 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31299 () Bool)

(declare-fun tp!60003 () Bool)

(assert (=> mapNonEmpty!31299 (= mapRes!31299 (and tp!60003 e!518619))))

(declare-fun mapKey!31299 () (_ BitVec 32))

(declare-fun mapValue!31299 () ValueCell!9366)

(declare-fun mapRest!31299 () (Array (_ BitVec 32) ValueCell!9366))

(assert (=> mapNonEmpty!31299 (= (arr!26628 _values!1231) (store mapRest!31299 mapKey!31299 mapValue!31299))))

(assert (= (and start!79002 res!623071) b!924145))

(assert (= (and b!924145 res!623075) b!924155))

(assert (= (and b!924155 res!623068) b!924154))

(assert (= (and b!924154 res!623074) b!924156))

(assert (= (and b!924156 res!623072) b!924152))

(assert (= (and b!924152 res!623067) b!924147))

(assert (= (and b!924147 res!623069) b!924153))

(assert (= (and b!924153 c!96319) b!924158))

(assert (= (and b!924153 (not c!96319)) b!924159))

(assert (= (and b!924158 c!96320) b!924151))

(assert (= (and b!924158 (not c!96320)) b!924144))

(assert (= (and b!924151 c!96318) b!924150))

(assert (= (and b!924151 (not c!96318)) b!924160))

(assert (= (and b!924153 res!623070) b!924146))

(assert (= (and b!924146 res!623073) b!924143))

(assert (= (and b!924157 condMapEmpty!31299) mapIsEmpty!31299))

(assert (= (and b!924157 (not condMapEmpty!31299)) mapNonEmpty!31299))

(get-info :version)

(assert (= (and mapNonEmpty!31299 ((_ is ValueCellFull!9366) mapValue!31299)) b!924149))

(assert (= (and b!924157 ((_ is ValueCellFull!9366) mapDefault!31299)) b!924148))

(assert (= start!79002 b!924157))

(declare-fun b_lambda!13719 () Bool)

(assert (=> (not b_lambda!13719) (not b!924151)))

(declare-fun t!26762 () Bool)

(declare-fun tb!5775 () Bool)

(assert (=> (and start!79002 (= defaultEntry!1235 defaultEntry!1235) t!26762) tb!5775))

(declare-fun result!11365 () Bool)

(assert (=> tb!5775 (= result!11365 tp_is_empty!19695)))

(assert (=> b!924151 t!26762))

(declare-fun b_and!28131 () Bool)

(assert (= b_and!28129 (and (=> t!26762 result!11365) b_and!28131)))

(declare-fun m!858543 () Bool)

(assert (=> b!924152 m!858543))

(declare-fun m!858545 () Bool)

(assert (=> b!924152 m!858545))

(declare-fun m!858547 () Bool)

(assert (=> b!924158 m!858547))

(declare-fun m!858549 () Bool)

(assert (=> b!924158 m!858549))

(declare-fun m!858551 () Bool)

(assert (=> b!924154 m!858551))

(declare-fun m!858553 () Bool)

(assert (=> b!924146 m!858553))

(declare-fun m!858555 () Bool)

(assert (=> b!924146 m!858555))

(declare-fun m!858557 () Bool)

(assert (=> b!924151 m!858557))

(declare-fun m!858559 () Bool)

(assert (=> b!924151 m!858559))

(declare-fun m!858561 () Bool)

(assert (=> b!924151 m!858561))

(declare-fun m!858563 () Bool)

(assert (=> b!924151 m!858563))

(declare-fun m!858565 () Bool)

(assert (=> b!924151 m!858565))

(declare-fun m!858567 () Bool)

(assert (=> b!924151 m!858567))

(assert (=> b!924151 m!858563))

(declare-fun m!858569 () Bool)

(assert (=> b!924151 m!858569))

(assert (=> b!924151 m!858555))

(declare-fun m!858571 () Bool)

(assert (=> b!924151 m!858571))

(declare-fun m!858573 () Bool)

(assert (=> b!924151 m!858573))

(declare-fun m!858575 () Bool)

(assert (=> b!924151 m!858575))

(declare-fun m!858577 () Bool)

(assert (=> b!924151 m!858577))

(declare-fun m!858579 () Bool)

(assert (=> b!924151 m!858579))

(assert (=> b!924151 m!858567))

(assert (=> b!924151 m!858559))

(declare-fun m!858581 () Bool)

(assert (=> b!924151 m!858581))

(declare-fun m!858583 () Bool)

(assert (=> b!924151 m!858583))

(declare-fun m!858585 () Bool)

(assert (=> b!924151 m!858585))

(declare-fun m!858587 () Bool)

(assert (=> mapNonEmpty!31299 m!858587))

(declare-fun m!858589 () Bool)

(assert (=> b!924143 m!858589))

(declare-fun m!858591 () Bool)

(assert (=> b!924150 m!858591))

(declare-fun m!858593 () Bool)

(assert (=> b!924153 m!858593))

(declare-fun m!858595 () Bool)

(assert (=> start!79002 m!858595))

(declare-fun m!858597 () Bool)

(assert (=> start!79002 m!858597))

(declare-fun m!858599 () Bool)

(assert (=> start!79002 m!858599))

(declare-fun m!858601 () Bool)

(assert (=> b!924147 m!858601))

(declare-fun m!858603 () Bool)

(assert (=> b!924155 m!858603))

(check-sat (not b_next!17187) (not b!924155) b_and!28131 (not b!924143) tp_is_empty!19695 (not b!924152) (not b!924146) (not b!924154) (not b!924151) (not mapNonEmpty!31299) (not b!924153) (not b!924147) (not start!79002) (not b_lambda!13719) (not b!924158) (not b!924150))
(check-sat b_and!28131 (not b_next!17187))
