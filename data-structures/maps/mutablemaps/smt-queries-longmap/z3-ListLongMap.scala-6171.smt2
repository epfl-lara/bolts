; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79164 () Bool)

(assert start!79164)

(declare-fun b_free!17349 () Bool)

(declare-fun b_next!17349 () Bool)

(assert (=> start!79164 (= b_free!17349 (not b_next!17349))))

(declare-fun tp!60489 () Bool)

(declare-fun b_and!28433 () Bool)

(assert (=> start!79164 (= tp!60489 b_and!28433)))

(declare-fun mapIsEmpty!31542 () Bool)

(declare-fun mapRes!31542 () Bool)

(assert (=> mapIsEmpty!31542 mapRes!31542))

(declare-fun b!928713 () Bool)

(declare-fun e!521513 () Bool)

(declare-fun e!521514 () Bool)

(assert (=> b!928713 (= e!521513 (and e!521514 mapRes!31542))))

(declare-fun condMapEmpty!31542 () Bool)

(declare-datatypes ((V!31441 0))(
  ( (V!31442 (val!9979 Int)) )
))
(declare-datatypes ((ValueCell!9447 0))(
  ( (ValueCellFull!9447 (v!12497 V!31441)) (EmptyCell!9447) )
))
(declare-datatypes ((array!55690 0))(
  ( (array!55691 (arr!26786 (Array (_ BitVec 32) ValueCell!9447)) (size!27246 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55690)

(declare-fun mapDefault!31542 () ValueCell!9447)

(assert (=> b!928713 (= condMapEmpty!31542 (= (arr!26786 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9447)) mapDefault!31542)))))

(declare-fun b!928714 () Bool)

(declare-fun res!625502 () Bool)

(declare-fun e!521512 () Bool)

(assert (=> b!928714 (=> (not res!625502) (not e!521512))))

(declare-datatypes ((array!55692 0))(
  ( (array!55693 (arr!26787 (Array (_ BitVec 32) (_ BitVec 64))) (size!27247 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55692)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928714 (= res!625502 (and (= (size!27246 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27247 _keys!1487) (size!27246 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928715 () Bool)

(declare-fun res!625503 () Bool)

(assert (=> b!928715 (=> (not res!625503) (not e!521512))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928715 (= res!625503 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27247 _keys!1487))))))

(declare-fun mapNonEmpty!31542 () Bool)

(declare-fun tp!60488 () Bool)

(declare-fun e!521517 () Bool)

(assert (=> mapNonEmpty!31542 (= mapRes!31542 (and tp!60488 e!521517))))

(declare-fun mapKey!31542 () (_ BitVec 32))

(declare-fun mapValue!31542 () ValueCell!9447)

(declare-fun mapRest!31542 () (Array (_ BitVec 32) ValueCell!9447))

(assert (=> mapNonEmpty!31542 (= (arr!26786 _values!1231) (store mapRest!31542 mapKey!31542 mapValue!31542))))

(declare-fun b!928716 () Bool)

(declare-fun tp_is_empty!19857 () Bool)

(assert (=> b!928716 (= e!521517 tp_is_empty!19857)))

(declare-fun b!928717 () Bool)

(assert (=> b!928717 (= e!521514 tp_is_empty!19857)))

(declare-fun res!625505 () Bool)

(assert (=> start!79164 (=> (not res!625505) (not e!521512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79164 (= res!625505 (validMask!0 mask!1881))))

(assert (=> start!79164 e!521512))

(assert (=> start!79164 true))

(declare-fun array_inv!20846 (array!55690) Bool)

(assert (=> start!79164 (and (array_inv!20846 _values!1231) e!521513)))

(assert (=> start!79164 tp!60489))

(declare-fun array_inv!20847 (array!55692) Bool)

(assert (=> start!79164 (array_inv!20847 _keys!1487)))

(assert (=> start!79164 tp_is_empty!19857))

(declare-fun b!928718 () Bool)

(declare-fun e!521515 () Bool)

(assert (=> b!928718 (= e!521512 e!521515)))

(declare-fun res!625501 () Bool)

(assert (=> b!928718 (=> (not res!625501) (not e!521515))))

(declare-datatypes ((tuple2!13146 0))(
  ( (tuple2!13147 (_1!6583 (_ BitVec 64)) (_2!6583 V!31441)) )
))
(declare-datatypes ((List!18970 0))(
  ( (Nil!18967) (Cons!18966 (h!20112 tuple2!13146) (t!27035 List!18970)) )
))
(declare-datatypes ((ListLongMap!11857 0))(
  ( (ListLongMap!11858 (toList!5944 List!18970)) )
))
(declare-fun lt!418899 () ListLongMap!11857)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4962 (ListLongMap!11857 (_ BitVec 64)) Bool)

(assert (=> b!928718 (= res!625501 (contains!4962 lt!418899 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31441)

(declare-fun minValue!1173 () V!31441)

(declare-fun getCurrentListMap!3156 (array!55692 array!55690 (_ BitVec 32) (_ BitVec 32) V!31441 V!31441 (_ BitVec 32) Int) ListLongMap!11857)

(assert (=> b!928718 (= lt!418899 (getCurrentListMap!3156 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928719 () Bool)

(assert (=> b!928719 (= e!521515 false)))

(declare-fun lt!418898 () V!31441)

(declare-fun apply!739 (ListLongMap!11857 (_ BitVec 64)) V!31441)

(assert (=> b!928719 (= lt!418898 (apply!739 lt!418899 k0!1099))))

(declare-fun b!928720 () Bool)

(declare-fun res!625504 () Bool)

(assert (=> b!928720 (=> (not res!625504) (not e!521512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55692 (_ BitVec 32)) Bool)

(assert (=> b!928720 (= res!625504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928721 () Bool)

(declare-fun res!625500 () Bool)

(assert (=> b!928721 (=> (not res!625500) (not e!521512))))

(declare-datatypes ((List!18971 0))(
  ( (Nil!18968) (Cons!18967 (h!20113 (_ BitVec 64)) (t!27036 List!18971)) )
))
(declare-fun arrayNoDuplicates!0 (array!55692 (_ BitVec 32) List!18971) Bool)

(assert (=> b!928721 (= res!625500 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18968))))

(assert (= (and start!79164 res!625505) b!928714))

(assert (= (and b!928714 res!625502) b!928720))

(assert (= (and b!928720 res!625504) b!928721))

(assert (= (and b!928721 res!625500) b!928715))

(assert (= (and b!928715 res!625503) b!928718))

(assert (= (and b!928718 res!625501) b!928719))

(assert (= (and b!928713 condMapEmpty!31542) mapIsEmpty!31542))

(assert (= (and b!928713 (not condMapEmpty!31542)) mapNonEmpty!31542))

(get-info :version)

(assert (= (and mapNonEmpty!31542 ((_ is ValueCellFull!9447) mapValue!31542)) b!928716))

(assert (= (and b!928713 ((_ is ValueCellFull!9447) mapDefault!31542)) b!928717))

(assert (= start!79164 b!928713))

(declare-fun m!863581 () Bool)

(assert (=> b!928721 m!863581))

(declare-fun m!863583 () Bool)

(assert (=> mapNonEmpty!31542 m!863583))

(declare-fun m!863585 () Bool)

(assert (=> b!928718 m!863585))

(declare-fun m!863587 () Bool)

(assert (=> b!928718 m!863587))

(declare-fun m!863589 () Bool)

(assert (=> b!928719 m!863589))

(declare-fun m!863591 () Bool)

(assert (=> b!928720 m!863591))

(declare-fun m!863593 () Bool)

(assert (=> start!79164 m!863593))

(declare-fun m!863595 () Bool)

(assert (=> start!79164 m!863595))

(declare-fun m!863597 () Bool)

(assert (=> start!79164 m!863597))

(check-sat b_and!28433 tp_is_empty!19857 (not mapNonEmpty!31542) (not b!928721) (not start!79164) (not b!928720) (not b_next!17349) (not b!928719) (not b!928718))
(check-sat b_and!28433 (not b_next!17349))
