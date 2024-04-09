; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20940 () Bool)

(assert start!20940)

(declare-fun b_free!5541 () Bool)

(declare-fun b_next!5541 () Bool)

(assert (=> start!20940 (= b_free!5541 (not b_next!5541))))

(declare-fun tp!19669 () Bool)

(declare-fun b_and!12329 () Bool)

(assert (=> start!20940 (= tp!19669 b_and!12329)))

(declare-fun mapNonEmpty!9179 () Bool)

(declare-fun mapRes!9179 () Bool)

(declare-fun tp!19670 () Bool)

(declare-fun e!136884 () Bool)

(assert (=> mapNonEmpty!9179 (= mapRes!9179 (and tp!19670 e!136884))))

(declare-datatypes ((V!6851 0))(
  ( (V!6852 (val!2746 Int)) )
))
(declare-datatypes ((ValueCell!2358 0))(
  ( (ValueCellFull!2358 (v!4720 V!6851)) (EmptyCell!2358) )
))
(declare-fun mapRest!9179 () (Array (_ BitVec 32) ValueCell!2358))

(declare-datatypes ((array!10004 0))(
  ( (array!10005 (arr!4750 (Array (_ BitVec 32) ValueCell!2358)) (size!5075 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10004)

(declare-fun mapKey!9179 () (_ BitVec 32))

(declare-fun mapValue!9179 () ValueCell!2358)

(assert (=> mapNonEmpty!9179 (= (arr!4750 _values!649) (store mapRest!9179 mapKey!9179 mapValue!9179))))

(declare-fun b!210167 () Bool)

(declare-fun res!102546 () Bool)

(declare-fun e!136886 () Bool)

(assert (=> b!210167 (=> (not res!102546) (not e!136886))))

(declare-datatypes ((array!10006 0))(
  ( (array!10007 (arr!4751 (Array (_ BitVec 32) (_ BitVec 64))) (size!5076 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10006)

(declare-datatypes ((List!3065 0))(
  ( (Nil!3062) (Cons!3061 (h!3703 (_ BitVec 64)) (t!8008 List!3065)) )
))
(declare-fun arrayNoDuplicates!0 (array!10006 (_ BitVec 32) List!3065) Bool)

(assert (=> b!210167 (= res!102546 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3062))))

(declare-fun b!210168 () Bool)

(declare-fun e!136883 () Bool)

(assert (=> b!210168 (= e!136886 (not e!136883))))

(declare-fun res!102547 () Bool)

(assert (=> b!210168 (=> res!102547 e!136883)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210168 (= res!102547 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4148 0))(
  ( (tuple2!4149 (_1!2084 (_ BitVec 64)) (_2!2084 V!6851)) )
))
(declare-datatypes ((List!3066 0))(
  ( (Nil!3063) (Cons!3062 (h!3704 tuple2!4148) (t!8009 List!3066)) )
))
(declare-datatypes ((ListLongMap!3075 0))(
  ( (ListLongMap!3076 (toList!1553 List!3066)) )
))
(declare-fun lt!107630 () ListLongMap!3075)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6851)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6851)

(declare-fun getCurrentListMap!1084 (array!10006 array!10004 (_ BitVec 32) (_ BitVec 32) V!6851 V!6851 (_ BitVec 32) Int) ListLongMap!3075)

(assert (=> b!210168 (= lt!107630 (getCurrentListMap!1084 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107627 () ListLongMap!3075)

(declare-fun lt!107624 () array!10004)

(assert (=> b!210168 (= lt!107627 (getCurrentListMap!1084 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107623 () ListLongMap!3075)

(declare-fun lt!107628 () ListLongMap!3075)

(assert (=> b!210168 (and (= lt!107623 lt!107628) (= lt!107628 lt!107623))))

(declare-fun lt!107622 () ListLongMap!3075)

(declare-fun v!520 () V!6851)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!546 (ListLongMap!3075 tuple2!4148) ListLongMap!3075)

(assert (=> b!210168 (= lt!107628 (+!546 lt!107622 (tuple2!4149 k0!843 v!520)))))

(declare-datatypes ((Unit!6385 0))(
  ( (Unit!6386) )
))
(declare-fun lt!107626 () Unit!6385)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!201 (array!10006 array!10004 (_ BitVec 32) (_ BitVec 32) V!6851 V!6851 (_ BitVec 32) (_ BitVec 64) V!6851 (_ BitVec 32) Int) Unit!6385)

(assert (=> b!210168 (= lt!107626 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!201 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!483 (array!10006 array!10004 (_ BitVec 32) (_ BitVec 32) V!6851 V!6851 (_ BitVec 32) Int) ListLongMap!3075)

(assert (=> b!210168 (= lt!107623 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210168 (= lt!107624 (array!10005 (store (arr!4750 _values!649) i!601 (ValueCellFull!2358 v!520)) (size!5075 _values!649)))))

(assert (=> b!210168 (= lt!107622 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210169 () Bool)

(declare-fun tp_is_empty!5403 () Bool)

(assert (=> b!210169 (= e!136884 tp_is_empty!5403)))

(declare-fun e!136885 () Bool)

(declare-fun b!210170 () Bool)

(declare-fun lt!107625 () tuple2!4148)

(declare-fun lt!107629 () tuple2!4148)

(assert (=> b!210170 (= e!136885 (= lt!107627 (+!546 (+!546 lt!107628 lt!107629) lt!107625)))))

(declare-fun b!210171 () Bool)

(declare-fun res!102552 () Bool)

(assert (=> b!210171 (=> (not res!102552) (not e!136886))))

(assert (=> b!210171 (= res!102552 (= (select (arr!4751 _keys!825) i!601) k0!843))))

(declare-fun b!210172 () Bool)

(declare-fun res!102544 () Bool)

(assert (=> b!210172 (=> (not res!102544) (not e!136886))))

(assert (=> b!210172 (= res!102544 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5076 _keys!825))))))

(declare-fun b!210173 () Bool)

(declare-fun res!102551 () Bool)

(assert (=> b!210173 (=> (not res!102551) (not e!136886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210173 (= res!102551 (validKeyInArray!0 k0!843))))

(declare-fun b!210174 () Bool)

(declare-fun e!136881 () Bool)

(declare-fun e!136882 () Bool)

(assert (=> b!210174 (= e!136881 (and e!136882 mapRes!9179))))

(declare-fun condMapEmpty!9179 () Bool)

(declare-fun mapDefault!9179 () ValueCell!2358)

(assert (=> b!210174 (= condMapEmpty!9179 (= (arr!4750 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2358)) mapDefault!9179)))))

(declare-fun b!210175 () Bool)

(assert (=> b!210175 (= e!136883 (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!210175 e!136885))

(declare-fun res!102549 () Bool)

(assert (=> b!210175 (=> (not res!102549) (not e!136885))))

(assert (=> b!210175 (= res!102549 (= lt!107627 (+!546 (+!546 lt!107623 lt!107629) lt!107625)))))

(assert (=> b!210175 (= lt!107625 (tuple2!4149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!210175 (= lt!107629 (tuple2!4149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210176 () Bool)

(assert (=> b!210176 (= e!136882 tp_is_empty!5403)))

(declare-fun b!210177 () Bool)

(declare-fun res!102543 () Bool)

(assert (=> b!210177 (=> (not res!102543) (not e!136886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10006 (_ BitVec 32)) Bool)

(assert (=> b!210177 (= res!102543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210178 () Bool)

(declare-fun res!102550 () Bool)

(assert (=> b!210178 (=> (not res!102550) (not e!136886))))

(assert (=> b!210178 (= res!102550 (and (= (size!5075 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5076 _keys!825) (size!5075 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210179 () Bool)

(declare-fun res!102548 () Bool)

(assert (=> b!210179 (=> (not res!102548) (not e!136885))))

(assert (=> b!210179 (= res!102548 (= lt!107630 (+!546 (+!546 lt!107622 lt!107629) lt!107625)))))

(declare-fun mapIsEmpty!9179 () Bool)

(assert (=> mapIsEmpty!9179 mapRes!9179))

(declare-fun res!102545 () Bool)

(assert (=> start!20940 (=> (not res!102545) (not e!136886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20940 (= res!102545 (validMask!0 mask!1149))))

(assert (=> start!20940 e!136886))

(declare-fun array_inv!3135 (array!10004) Bool)

(assert (=> start!20940 (and (array_inv!3135 _values!649) e!136881)))

(assert (=> start!20940 true))

(assert (=> start!20940 tp_is_empty!5403))

(declare-fun array_inv!3136 (array!10006) Bool)

(assert (=> start!20940 (array_inv!3136 _keys!825)))

(assert (=> start!20940 tp!19669))

(assert (= (and start!20940 res!102545) b!210178))

(assert (= (and b!210178 res!102550) b!210177))

(assert (= (and b!210177 res!102543) b!210167))

(assert (= (and b!210167 res!102546) b!210172))

(assert (= (and b!210172 res!102544) b!210173))

(assert (= (and b!210173 res!102551) b!210171))

(assert (= (and b!210171 res!102552) b!210168))

(assert (= (and b!210168 (not res!102547)) b!210175))

(assert (= (and b!210175 res!102549) b!210179))

(assert (= (and b!210179 res!102548) b!210170))

(assert (= (and b!210174 condMapEmpty!9179) mapIsEmpty!9179))

(assert (= (and b!210174 (not condMapEmpty!9179)) mapNonEmpty!9179))

(get-info :version)

(assert (= (and mapNonEmpty!9179 ((_ is ValueCellFull!2358) mapValue!9179)) b!210169))

(assert (= (and b!210174 ((_ is ValueCellFull!2358) mapDefault!9179)) b!210176))

(assert (= start!20940 b!210174))

(declare-fun m!237647 () Bool)

(assert (=> b!210177 m!237647))

(declare-fun m!237649 () Bool)

(assert (=> b!210167 m!237649))

(declare-fun m!237651 () Bool)

(assert (=> b!210168 m!237651))

(declare-fun m!237653 () Bool)

(assert (=> b!210168 m!237653))

(declare-fun m!237655 () Bool)

(assert (=> b!210168 m!237655))

(declare-fun m!237657 () Bool)

(assert (=> b!210168 m!237657))

(declare-fun m!237659 () Bool)

(assert (=> b!210168 m!237659))

(declare-fun m!237661 () Bool)

(assert (=> b!210168 m!237661))

(declare-fun m!237663 () Bool)

(assert (=> b!210168 m!237663))

(declare-fun m!237665 () Bool)

(assert (=> b!210175 m!237665))

(assert (=> b!210175 m!237665))

(declare-fun m!237667 () Bool)

(assert (=> b!210175 m!237667))

(declare-fun m!237669 () Bool)

(assert (=> b!210171 m!237669))

(declare-fun m!237671 () Bool)

(assert (=> b!210173 m!237671))

(declare-fun m!237673 () Bool)

(assert (=> mapNonEmpty!9179 m!237673))

(declare-fun m!237675 () Bool)

(assert (=> b!210179 m!237675))

(assert (=> b!210179 m!237675))

(declare-fun m!237677 () Bool)

(assert (=> b!210179 m!237677))

(declare-fun m!237679 () Bool)

(assert (=> start!20940 m!237679))

(declare-fun m!237681 () Bool)

(assert (=> start!20940 m!237681))

(declare-fun m!237683 () Bool)

(assert (=> start!20940 m!237683))

(declare-fun m!237685 () Bool)

(assert (=> b!210170 m!237685))

(assert (=> b!210170 m!237685))

(declare-fun m!237687 () Bool)

(assert (=> b!210170 m!237687))

(check-sat (not b_next!5541) (not b!210177) b_and!12329 (not b!210179) (not b!210167) (not mapNonEmpty!9179) tp_is_empty!5403 (not b!210173) (not b!210170) (not b!210175) (not b!210168) (not start!20940))
(check-sat b_and!12329 (not b_next!5541))
(get-model)

(declare-fun d!57843 () Bool)

(assert (=> d!57843 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20940 d!57843))

(declare-fun d!57845 () Bool)

(assert (=> d!57845 (= (array_inv!3135 _values!649) (bvsge (size!5075 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20940 d!57845))

(declare-fun d!57847 () Bool)

(assert (=> d!57847 (= (array_inv!3136 _keys!825) (bvsge (size!5076 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20940 d!57847))

(declare-fun d!57849 () Bool)

(declare-fun e!136910 () Bool)

(assert (=> d!57849 e!136910))

(declare-fun res!102588 () Bool)

(assert (=> d!57849 (=> (not res!102588) (not e!136910))))

(declare-fun lt!107668 () ListLongMap!3075)

(declare-fun contains!1394 (ListLongMap!3075 (_ BitVec 64)) Bool)

(assert (=> d!57849 (= res!102588 (contains!1394 lt!107668 (_1!2084 lt!107625)))))

(declare-fun lt!107667 () List!3066)

(assert (=> d!57849 (= lt!107668 (ListLongMap!3076 lt!107667))))

(declare-fun lt!107669 () Unit!6385)

(declare-fun lt!107666 () Unit!6385)

(assert (=> d!57849 (= lt!107669 lt!107666)))

(declare-datatypes ((Option!254 0))(
  ( (Some!253 (v!4725 V!6851)) (None!252) )
))
(declare-fun getValueByKey!248 (List!3066 (_ BitVec 64)) Option!254)

(assert (=> d!57849 (= (getValueByKey!248 lt!107667 (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625)))))

(declare-fun lemmaContainsTupThenGetReturnValue!137 (List!3066 (_ BitVec 64) V!6851) Unit!6385)

(assert (=> d!57849 (= lt!107666 (lemmaContainsTupThenGetReturnValue!137 lt!107667 (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(declare-fun insertStrictlySorted!139 (List!3066 (_ BitVec 64) V!6851) List!3066)

(assert (=> d!57849 (= lt!107667 (insertStrictlySorted!139 (toList!1553 (+!546 lt!107628 lt!107629)) (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(assert (=> d!57849 (= (+!546 (+!546 lt!107628 lt!107629) lt!107625) lt!107668)))

(declare-fun b!210223 () Bool)

(declare-fun res!102587 () Bool)

(assert (=> b!210223 (=> (not res!102587) (not e!136910))))

(assert (=> b!210223 (= res!102587 (= (getValueByKey!248 (toList!1553 lt!107668) (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625))))))

(declare-fun b!210224 () Bool)

(declare-fun contains!1395 (List!3066 tuple2!4148) Bool)

(assert (=> b!210224 (= e!136910 (contains!1395 (toList!1553 lt!107668) lt!107625))))

(assert (= (and d!57849 res!102588) b!210223))

(assert (= (and b!210223 res!102587) b!210224))

(declare-fun m!237731 () Bool)

(assert (=> d!57849 m!237731))

(declare-fun m!237733 () Bool)

(assert (=> d!57849 m!237733))

(declare-fun m!237735 () Bool)

(assert (=> d!57849 m!237735))

(declare-fun m!237737 () Bool)

(assert (=> d!57849 m!237737))

(declare-fun m!237739 () Bool)

(assert (=> b!210223 m!237739))

(declare-fun m!237741 () Bool)

(assert (=> b!210224 m!237741))

(assert (=> b!210170 d!57849))

(declare-fun d!57851 () Bool)

(declare-fun e!136911 () Bool)

(assert (=> d!57851 e!136911))

(declare-fun res!102590 () Bool)

(assert (=> d!57851 (=> (not res!102590) (not e!136911))))

(declare-fun lt!107672 () ListLongMap!3075)

(assert (=> d!57851 (= res!102590 (contains!1394 lt!107672 (_1!2084 lt!107629)))))

(declare-fun lt!107671 () List!3066)

(assert (=> d!57851 (= lt!107672 (ListLongMap!3076 lt!107671))))

(declare-fun lt!107673 () Unit!6385)

(declare-fun lt!107670 () Unit!6385)

(assert (=> d!57851 (= lt!107673 lt!107670)))

(assert (=> d!57851 (= (getValueByKey!248 lt!107671 (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629)))))

(assert (=> d!57851 (= lt!107670 (lemmaContainsTupThenGetReturnValue!137 lt!107671 (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57851 (= lt!107671 (insertStrictlySorted!139 (toList!1553 lt!107628) (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57851 (= (+!546 lt!107628 lt!107629) lt!107672)))

(declare-fun b!210225 () Bool)

(declare-fun res!102589 () Bool)

(assert (=> b!210225 (=> (not res!102589) (not e!136911))))

(assert (=> b!210225 (= res!102589 (= (getValueByKey!248 (toList!1553 lt!107672) (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629))))))

(declare-fun b!210226 () Bool)

(assert (=> b!210226 (= e!136911 (contains!1395 (toList!1553 lt!107672) lt!107629))))

(assert (= (and d!57851 res!102590) b!210225))

(assert (= (and b!210225 res!102589) b!210226))

(declare-fun m!237743 () Bool)

(assert (=> d!57851 m!237743))

(declare-fun m!237745 () Bool)

(assert (=> d!57851 m!237745))

(declare-fun m!237747 () Bool)

(assert (=> d!57851 m!237747))

(declare-fun m!237749 () Bool)

(assert (=> d!57851 m!237749))

(declare-fun m!237751 () Bool)

(assert (=> b!210225 m!237751))

(declare-fun m!237753 () Bool)

(assert (=> b!210226 m!237753))

(assert (=> b!210170 d!57851))

(declare-fun d!57853 () Bool)

(declare-fun e!136912 () Bool)

(assert (=> d!57853 e!136912))

(declare-fun res!102592 () Bool)

(assert (=> d!57853 (=> (not res!102592) (not e!136912))))

(declare-fun lt!107676 () ListLongMap!3075)

(assert (=> d!57853 (= res!102592 (contains!1394 lt!107676 (_1!2084 lt!107625)))))

(declare-fun lt!107675 () List!3066)

(assert (=> d!57853 (= lt!107676 (ListLongMap!3076 lt!107675))))

(declare-fun lt!107677 () Unit!6385)

(declare-fun lt!107674 () Unit!6385)

(assert (=> d!57853 (= lt!107677 lt!107674)))

(assert (=> d!57853 (= (getValueByKey!248 lt!107675 (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625)))))

(assert (=> d!57853 (= lt!107674 (lemmaContainsTupThenGetReturnValue!137 lt!107675 (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(assert (=> d!57853 (= lt!107675 (insertStrictlySorted!139 (toList!1553 (+!546 lt!107622 lt!107629)) (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(assert (=> d!57853 (= (+!546 (+!546 lt!107622 lt!107629) lt!107625) lt!107676)))

(declare-fun b!210227 () Bool)

(declare-fun res!102591 () Bool)

(assert (=> b!210227 (=> (not res!102591) (not e!136912))))

(assert (=> b!210227 (= res!102591 (= (getValueByKey!248 (toList!1553 lt!107676) (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625))))))

(declare-fun b!210228 () Bool)

(assert (=> b!210228 (= e!136912 (contains!1395 (toList!1553 lt!107676) lt!107625))))

(assert (= (and d!57853 res!102592) b!210227))

(assert (= (and b!210227 res!102591) b!210228))

(declare-fun m!237755 () Bool)

(assert (=> d!57853 m!237755))

(declare-fun m!237757 () Bool)

(assert (=> d!57853 m!237757))

(declare-fun m!237759 () Bool)

(assert (=> d!57853 m!237759))

(declare-fun m!237761 () Bool)

(assert (=> d!57853 m!237761))

(declare-fun m!237763 () Bool)

(assert (=> b!210227 m!237763))

(declare-fun m!237765 () Bool)

(assert (=> b!210228 m!237765))

(assert (=> b!210179 d!57853))

(declare-fun d!57855 () Bool)

(declare-fun e!136913 () Bool)

(assert (=> d!57855 e!136913))

(declare-fun res!102594 () Bool)

(assert (=> d!57855 (=> (not res!102594) (not e!136913))))

(declare-fun lt!107680 () ListLongMap!3075)

(assert (=> d!57855 (= res!102594 (contains!1394 lt!107680 (_1!2084 lt!107629)))))

(declare-fun lt!107679 () List!3066)

(assert (=> d!57855 (= lt!107680 (ListLongMap!3076 lt!107679))))

(declare-fun lt!107681 () Unit!6385)

(declare-fun lt!107678 () Unit!6385)

(assert (=> d!57855 (= lt!107681 lt!107678)))

(assert (=> d!57855 (= (getValueByKey!248 lt!107679 (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629)))))

(assert (=> d!57855 (= lt!107678 (lemmaContainsTupThenGetReturnValue!137 lt!107679 (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57855 (= lt!107679 (insertStrictlySorted!139 (toList!1553 lt!107622) (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57855 (= (+!546 lt!107622 lt!107629) lt!107680)))

(declare-fun b!210229 () Bool)

(declare-fun res!102593 () Bool)

(assert (=> b!210229 (=> (not res!102593) (not e!136913))))

(assert (=> b!210229 (= res!102593 (= (getValueByKey!248 (toList!1553 lt!107680) (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629))))))

(declare-fun b!210230 () Bool)

(assert (=> b!210230 (= e!136913 (contains!1395 (toList!1553 lt!107680) lt!107629))))

(assert (= (and d!57855 res!102594) b!210229))

(assert (= (and b!210229 res!102593) b!210230))

(declare-fun m!237767 () Bool)

(assert (=> d!57855 m!237767))

(declare-fun m!237769 () Bool)

(assert (=> d!57855 m!237769))

(declare-fun m!237771 () Bool)

(assert (=> d!57855 m!237771))

(declare-fun m!237773 () Bool)

(assert (=> d!57855 m!237773))

(declare-fun m!237775 () Bool)

(assert (=> b!210229 m!237775))

(declare-fun m!237777 () Bool)

(assert (=> b!210230 m!237777))

(assert (=> b!210179 d!57855))

(declare-fun d!57857 () Bool)

(declare-fun e!136914 () Bool)

(assert (=> d!57857 e!136914))

(declare-fun res!102596 () Bool)

(assert (=> d!57857 (=> (not res!102596) (not e!136914))))

(declare-fun lt!107684 () ListLongMap!3075)

(assert (=> d!57857 (= res!102596 (contains!1394 lt!107684 (_1!2084 lt!107625)))))

(declare-fun lt!107683 () List!3066)

(assert (=> d!57857 (= lt!107684 (ListLongMap!3076 lt!107683))))

(declare-fun lt!107685 () Unit!6385)

(declare-fun lt!107682 () Unit!6385)

(assert (=> d!57857 (= lt!107685 lt!107682)))

(assert (=> d!57857 (= (getValueByKey!248 lt!107683 (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625)))))

(assert (=> d!57857 (= lt!107682 (lemmaContainsTupThenGetReturnValue!137 lt!107683 (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(assert (=> d!57857 (= lt!107683 (insertStrictlySorted!139 (toList!1553 (+!546 lt!107623 lt!107629)) (_1!2084 lt!107625) (_2!2084 lt!107625)))))

(assert (=> d!57857 (= (+!546 (+!546 lt!107623 lt!107629) lt!107625) lt!107684)))

(declare-fun b!210231 () Bool)

(declare-fun res!102595 () Bool)

(assert (=> b!210231 (=> (not res!102595) (not e!136914))))

(assert (=> b!210231 (= res!102595 (= (getValueByKey!248 (toList!1553 lt!107684) (_1!2084 lt!107625)) (Some!253 (_2!2084 lt!107625))))))

(declare-fun b!210232 () Bool)

(assert (=> b!210232 (= e!136914 (contains!1395 (toList!1553 lt!107684) lt!107625))))

(assert (= (and d!57857 res!102596) b!210231))

(assert (= (and b!210231 res!102595) b!210232))

(declare-fun m!237779 () Bool)

(assert (=> d!57857 m!237779))

(declare-fun m!237781 () Bool)

(assert (=> d!57857 m!237781))

(declare-fun m!237783 () Bool)

(assert (=> d!57857 m!237783))

(declare-fun m!237785 () Bool)

(assert (=> d!57857 m!237785))

(declare-fun m!237787 () Bool)

(assert (=> b!210231 m!237787))

(declare-fun m!237789 () Bool)

(assert (=> b!210232 m!237789))

(assert (=> b!210175 d!57857))

(declare-fun d!57859 () Bool)

(declare-fun e!136915 () Bool)

(assert (=> d!57859 e!136915))

(declare-fun res!102598 () Bool)

(assert (=> d!57859 (=> (not res!102598) (not e!136915))))

(declare-fun lt!107688 () ListLongMap!3075)

(assert (=> d!57859 (= res!102598 (contains!1394 lt!107688 (_1!2084 lt!107629)))))

(declare-fun lt!107687 () List!3066)

(assert (=> d!57859 (= lt!107688 (ListLongMap!3076 lt!107687))))

(declare-fun lt!107689 () Unit!6385)

(declare-fun lt!107686 () Unit!6385)

(assert (=> d!57859 (= lt!107689 lt!107686)))

(assert (=> d!57859 (= (getValueByKey!248 lt!107687 (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629)))))

(assert (=> d!57859 (= lt!107686 (lemmaContainsTupThenGetReturnValue!137 lt!107687 (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57859 (= lt!107687 (insertStrictlySorted!139 (toList!1553 lt!107623) (_1!2084 lt!107629) (_2!2084 lt!107629)))))

(assert (=> d!57859 (= (+!546 lt!107623 lt!107629) lt!107688)))

(declare-fun b!210233 () Bool)

(declare-fun res!102597 () Bool)

(assert (=> b!210233 (=> (not res!102597) (not e!136915))))

(assert (=> b!210233 (= res!102597 (= (getValueByKey!248 (toList!1553 lt!107688) (_1!2084 lt!107629)) (Some!253 (_2!2084 lt!107629))))))

(declare-fun b!210234 () Bool)

(assert (=> b!210234 (= e!136915 (contains!1395 (toList!1553 lt!107688) lt!107629))))

(assert (= (and d!57859 res!102598) b!210233))

(assert (= (and b!210233 res!102597) b!210234))

(declare-fun m!237791 () Bool)

(assert (=> d!57859 m!237791))

(declare-fun m!237793 () Bool)

(assert (=> d!57859 m!237793))

(declare-fun m!237795 () Bool)

(assert (=> d!57859 m!237795))

(declare-fun m!237797 () Bool)

(assert (=> d!57859 m!237797))

(declare-fun m!237799 () Bool)

(assert (=> b!210233 m!237799))

(declare-fun m!237801 () Bool)

(assert (=> b!210234 m!237801))

(assert (=> b!210175 d!57859))

(declare-fun bm!19862 () Bool)

(declare-fun call!19865 () Bool)

(declare-fun c!35517 () Bool)

(assert (=> bm!19862 (= call!19865 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35517 (Cons!3061 (select (arr!4751 _keys!825) #b00000000000000000000000000000000) Nil!3062) Nil!3062)))))

(declare-fun b!210245 () Bool)

(declare-fun e!136927 () Bool)

(assert (=> b!210245 (= e!136927 call!19865)))

(declare-fun b!210247 () Bool)

(declare-fun e!136924 () Bool)

(assert (=> b!210247 (= e!136924 e!136927)))

(assert (=> b!210247 (= c!35517 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210248 () Bool)

(assert (=> b!210248 (= e!136927 call!19865)))

(declare-fun b!210249 () Bool)

(declare-fun e!136925 () Bool)

(declare-fun contains!1396 (List!3065 (_ BitVec 64)) Bool)

(assert (=> b!210249 (= e!136925 (contains!1396 Nil!3062 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!57861 () Bool)

(declare-fun res!102605 () Bool)

(declare-fun e!136926 () Bool)

(assert (=> d!57861 (=> res!102605 e!136926)))

(assert (=> d!57861 (= res!102605 (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57861 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3062) e!136926)))

(declare-fun b!210246 () Bool)

(assert (=> b!210246 (= e!136926 e!136924)))

(declare-fun res!102606 () Bool)

(assert (=> b!210246 (=> (not res!102606) (not e!136924))))

(assert (=> b!210246 (= res!102606 (not e!136925))))

(declare-fun res!102607 () Bool)

(assert (=> b!210246 (=> (not res!102607) (not e!136925))))

(assert (=> b!210246 (= res!102607 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57861 (not res!102605)) b!210246))

(assert (= (and b!210246 res!102607) b!210249))

(assert (= (and b!210246 res!102606) b!210247))

(assert (= (and b!210247 c!35517) b!210245))

(assert (= (and b!210247 (not c!35517)) b!210248))

(assert (= (or b!210245 b!210248) bm!19862))

(declare-fun m!237803 () Bool)

(assert (=> bm!19862 m!237803))

(declare-fun m!237805 () Bool)

(assert (=> bm!19862 m!237805))

(assert (=> b!210247 m!237803))

(assert (=> b!210247 m!237803))

(declare-fun m!237807 () Bool)

(assert (=> b!210247 m!237807))

(assert (=> b!210249 m!237803))

(assert (=> b!210249 m!237803))

(declare-fun m!237809 () Bool)

(assert (=> b!210249 m!237809))

(assert (=> b!210246 m!237803))

(assert (=> b!210246 m!237803))

(assert (=> b!210246 m!237807))

(assert (=> b!210167 d!57861))

(declare-fun bm!19865 () Bool)

(declare-fun call!19868 () Bool)

(assert (=> bm!19865 (= call!19868 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!210258 () Bool)

(declare-fun e!136935 () Bool)

(assert (=> b!210258 (= e!136935 call!19868)))

(declare-fun b!210259 () Bool)

(declare-fun e!136936 () Bool)

(assert (=> b!210259 (= e!136935 e!136936)))

(declare-fun lt!107696 () (_ BitVec 64))

(assert (=> b!210259 (= lt!107696 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107697 () Unit!6385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10006 (_ BitVec 64) (_ BitVec 32)) Unit!6385)

(assert (=> b!210259 (= lt!107697 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!107696 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!210259 (arrayContainsKey!0 _keys!825 lt!107696 #b00000000000000000000000000000000)))

(declare-fun lt!107698 () Unit!6385)

(assert (=> b!210259 (= lt!107698 lt!107697)))

(declare-fun res!102613 () Bool)

(declare-datatypes ((SeekEntryResult!716 0))(
  ( (MissingZero!716 (index!5034 (_ BitVec 32))) (Found!716 (index!5035 (_ BitVec 32))) (Intermediate!716 (undefined!1528 Bool) (index!5036 (_ BitVec 32)) (x!22032 (_ BitVec 32))) (Undefined!716) (MissingVacant!716 (index!5037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10006 (_ BitVec 32)) SeekEntryResult!716)

(assert (=> b!210259 (= res!102613 (= (seekEntryOrOpen!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!716 #b00000000000000000000000000000000)))))

(assert (=> b!210259 (=> (not res!102613) (not e!136936))))

(declare-fun d!57863 () Bool)

(declare-fun res!102612 () Bool)

(declare-fun e!136934 () Bool)

(assert (=> d!57863 (=> res!102612 e!136934)))

(assert (=> d!57863 (= res!102612 (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57863 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!136934)))

(declare-fun b!210260 () Bool)

(assert (=> b!210260 (= e!136934 e!136935)))

(declare-fun c!35520 () Bool)

(assert (=> b!210260 (= c!35520 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210261 () Bool)

(assert (=> b!210261 (= e!136936 call!19868)))

(assert (= (and d!57863 (not res!102612)) b!210260))

(assert (= (and b!210260 c!35520) b!210259))

(assert (= (and b!210260 (not c!35520)) b!210258))

(assert (= (and b!210259 res!102613) b!210261))

(assert (= (or b!210261 b!210258) bm!19865))

(declare-fun m!237811 () Bool)

(assert (=> bm!19865 m!237811))

(assert (=> b!210259 m!237803))

(declare-fun m!237813 () Bool)

(assert (=> b!210259 m!237813))

(declare-fun m!237815 () Bool)

(assert (=> b!210259 m!237815))

(assert (=> b!210259 m!237803))

(declare-fun m!237817 () Bool)

(assert (=> b!210259 m!237817))

(assert (=> b!210260 m!237803))

(assert (=> b!210260 m!237803))

(assert (=> b!210260 m!237807))

(assert (=> b!210177 d!57863))

(declare-fun d!57865 () Bool)

(assert (=> d!57865 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210173 d!57865))

(declare-fun d!57867 () Bool)

(declare-fun e!136937 () Bool)

(assert (=> d!57867 e!136937))

(declare-fun res!102615 () Bool)

(assert (=> d!57867 (=> (not res!102615) (not e!136937))))

(declare-fun lt!107701 () ListLongMap!3075)

(assert (=> d!57867 (= res!102615 (contains!1394 lt!107701 (_1!2084 (tuple2!4149 k0!843 v!520))))))

(declare-fun lt!107700 () List!3066)

(assert (=> d!57867 (= lt!107701 (ListLongMap!3076 lt!107700))))

(declare-fun lt!107702 () Unit!6385)

(declare-fun lt!107699 () Unit!6385)

(assert (=> d!57867 (= lt!107702 lt!107699)))

(assert (=> d!57867 (= (getValueByKey!248 lt!107700 (_1!2084 (tuple2!4149 k0!843 v!520))) (Some!253 (_2!2084 (tuple2!4149 k0!843 v!520))))))

(assert (=> d!57867 (= lt!107699 (lemmaContainsTupThenGetReturnValue!137 lt!107700 (_1!2084 (tuple2!4149 k0!843 v!520)) (_2!2084 (tuple2!4149 k0!843 v!520))))))

(assert (=> d!57867 (= lt!107700 (insertStrictlySorted!139 (toList!1553 lt!107622) (_1!2084 (tuple2!4149 k0!843 v!520)) (_2!2084 (tuple2!4149 k0!843 v!520))))))

(assert (=> d!57867 (= (+!546 lt!107622 (tuple2!4149 k0!843 v!520)) lt!107701)))

(declare-fun b!210262 () Bool)

(declare-fun res!102614 () Bool)

(assert (=> b!210262 (=> (not res!102614) (not e!136937))))

(assert (=> b!210262 (= res!102614 (= (getValueByKey!248 (toList!1553 lt!107701) (_1!2084 (tuple2!4149 k0!843 v!520))) (Some!253 (_2!2084 (tuple2!4149 k0!843 v!520)))))))

(declare-fun b!210263 () Bool)

(assert (=> b!210263 (= e!136937 (contains!1395 (toList!1553 lt!107701) (tuple2!4149 k0!843 v!520)))))

(assert (= (and d!57867 res!102615) b!210262))

(assert (= (and b!210262 res!102614) b!210263))

(declare-fun m!237819 () Bool)

(assert (=> d!57867 m!237819))

(declare-fun m!237821 () Bool)

(assert (=> d!57867 m!237821))

(declare-fun m!237823 () Bool)

(assert (=> d!57867 m!237823))

(declare-fun m!237825 () Bool)

(assert (=> d!57867 m!237825))

(declare-fun m!237827 () Bool)

(assert (=> b!210262 m!237827))

(declare-fun m!237829 () Bool)

(assert (=> b!210263 m!237829))

(assert (=> b!210168 d!57867))

(declare-fun b!210288 () Bool)

(declare-fun e!136956 () Bool)

(declare-fun e!136952 () Bool)

(assert (=> b!210288 (= e!136956 e!136952)))

(assert (=> b!210288 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun res!102627 () Bool)

(declare-fun lt!107721 () ListLongMap!3075)

(assert (=> b!210288 (= res!102627 (contains!1394 lt!107721 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210288 (=> (not res!102627) (not e!136952))))

(declare-fun b!210289 () Bool)

(declare-fun e!136955 () Bool)

(declare-fun isEmpty!497 (ListLongMap!3075) Bool)

(assert (=> b!210289 (= e!136955 (isEmpty!497 lt!107721))))

(declare-fun b!210291 () Bool)

(declare-fun e!136953 () ListLongMap!3075)

(declare-fun call!19871 () ListLongMap!3075)

(assert (=> b!210291 (= e!136953 call!19871)))

(declare-fun bm!19868 () Bool)

(assert (=> bm!19868 (= call!19871 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!210292 () Bool)

(assert (=> b!210292 (= e!136955 (= lt!107721 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!210293 () Bool)

(declare-fun lt!107720 () Unit!6385)

(declare-fun lt!107717 () Unit!6385)

(assert (=> b!210293 (= lt!107720 lt!107717)))

(declare-fun lt!107722 () (_ BitVec 64))

(declare-fun lt!107723 () (_ BitVec 64))

(declare-fun lt!107718 () V!6851)

(declare-fun lt!107719 () ListLongMap!3075)

(assert (=> b!210293 (not (contains!1394 (+!546 lt!107719 (tuple2!4149 lt!107722 lt!107718)) lt!107723))))

(declare-fun addStillNotContains!102 (ListLongMap!3075 (_ BitVec 64) V!6851 (_ BitVec 64)) Unit!6385)

(assert (=> b!210293 (= lt!107717 (addStillNotContains!102 lt!107719 lt!107722 lt!107718 lt!107723))))

(assert (=> b!210293 (= lt!107723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2548 (ValueCell!2358 V!6851) V!6851)

(declare-fun dynLambda!529 (Int (_ BitVec 64)) V!6851)

(assert (=> b!210293 (= lt!107718 (get!2548 (select (arr!4750 _values!649) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!210293 (= lt!107722 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210293 (= lt!107719 call!19871)))

(assert (=> b!210293 (= e!136953 (+!546 call!19871 (tuple2!4149 (select (arr!4751 _keys!825) #b00000000000000000000000000000000) (get!2548 (select (arr!4750 _values!649) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!210294 () Bool)

(declare-fun e!136957 () ListLongMap!3075)

(assert (=> b!210294 (= e!136957 e!136953)))

(declare-fun c!35532 () Bool)

(assert (=> b!210294 (= c!35532 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210295 () Bool)

(assert (=> b!210295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> b!210295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5075 _values!649)))))

(declare-fun apply!191 (ListLongMap!3075 (_ BitVec 64)) V!6851)

(assert (=> b!210295 (= e!136952 (= (apply!191 lt!107721 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)) (get!2548 (select (arr!4750 _values!649) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!210296 () Bool)

(declare-fun e!136958 () Bool)

(assert (=> b!210296 (= e!136958 e!136956)))

(declare-fun c!35531 () Bool)

(declare-fun e!136954 () Bool)

(assert (=> b!210296 (= c!35531 e!136954)))

(declare-fun res!102625 () Bool)

(assert (=> b!210296 (=> (not res!102625) (not e!136954))))

(assert (=> b!210296 (= res!102625 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun b!210297 () Bool)

(assert (=> b!210297 (= e!136956 e!136955)))

(declare-fun c!35530 () Bool)

(assert (=> b!210297 (= c!35530 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun b!210298 () Bool)

(assert (=> b!210298 (= e!136954 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210298 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!210299 () Bool)

(declare-fun res!102624 () Bool)

(assert (=> b!210299 (=> (not res!102624) (not e!136958))))

(assert (=> b!210299 (= res!102624 (not (contains!1394 lt!107721 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!57869 () Bool)

(assert (=> d!57869 e!136958))

(declare-fun res!102626 () Bool)

(assert (=> d!57869 (=> (not res!102626) (not e!136958))))

(assert (=> d!57869 (= res!102626 (not (contains!1394 lt!107721 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57869 (= lt!107721 e!136957)))

(declare-fun c!35529 () Bool)

(assert (=> d!57869 (= c!35529 (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57869 (validMask!0 mask!1149)))

(assert (=> d!57869 (= (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107721)))

(declare-fun b!210290 () Bool)

(assert (=> b!210290 (= e!136957 (ListLongMap!3076 Nil!3063))))

(assert (= (and d!57869 c!35529) b!210290))

(assert (= (and d!57869 (not c!35529)) b!210294))

(assert (= (and b!210294 c!35532) b!210293))

(assert (= (and b!210294 (not c!35532)) b!210291))

(assert (= (or b!210293 b!210291) bm!19868))

(assert (= (and d!57869 res!102626) b!210299))

(assert (= (and b!210299 res!102624) b!210296))

(assert (= (and b!210296 res!102625) b!210298))

(assert (= (and b!210296 c!35531) b!210288))

(assert (= (and b!210296 (not c!35531)) b!210297))

(assert (= (and b!210288 res!102627) b!210295))

(assert (= (and b!210297 c!35530) b!210292))

(assert (= (and b!210297 (not c!35530)) b!210289))

(declare-fun b_lambda!7617 () Bool)

(assert (=> (not b_lambda!7617) (not b!210293)))

(declare-fun t!8012 () Bool)

(declare-fun tb!2903 () Bool)

(assert (=> (and start!20940 (= defaultEntry!657 defaultEntry!657) t!8012) tb!2903))

(declare-fun result!4981 () Bool)

(assert (=> tb!2903 (= result!4981 tp_is_empty!5403)))

(assert (=> b!210293 t!8012))

(declare-fun b_and!12333 () Bool)

(assert (= b_and!12329 (and (=> t!8012 result!4981) b_and!12333)))

(declare-fun b_lambda!7619 () Bool)

(assert (=> (not b_lambda!7619) (not b!210295)))

(assert (=> b!210295 t!8012))

(declare-fun b_and!12335 () Bool)

(assert (= b_and!12333 (and (=> t!8012 result!4981) b_and!12335)))

(declare-fun m!237831 () Bool)

(assert (=> b!210289 m!237831))

(declare-fun m!237833 () Bool)

(assert (=> bm!19868 m!237833))

(assert (=> b!210292 m!237833))

(assert (=> b!210295 m!237803))

(assert (=> b!210295 m!237803))

(declare-fun m!237835 () Bool)

(assert (=> b!210295 m!237835))

(declare-fun m!237837 () Bool)

(assert (=> b!210295 m!237837))

(declare-fun m!237839 () Bool)

(assert (=> b!210295 m!237839))

(assert (=> b!210295 m!237837))

(assert (=> b!210295 m!237839))

(declare-fun m!237841 () Bool)

(assert (=> b!210295 m!237841))

(assert (=> b!210298 m!237803))

(assert (=> b!210298 m!237803))

(assert (=> b!210298 m!237807))

(declare-fun m!237843 () Bool)

(assert (=> d!57869 m!237843))

(assert (=> d!57869 m!237679))

(declare-fun m!237845 () Bool)

(assert (=> b!210293 m!237845))

(assert (=> b!210293 m!237803))

(declare-fun m!237847 () Bool)

(assert (=> b!210293 m!237847))

(declare-fun m!237849 () Bool)

(assert (=> b!210293 m!237849))

(declare-fun m!237851 () Bool)

(assert (=> b!210293 m!237851))

(assert (=> b!210293 m!237837))

(assert (=> b!210293 m!237839))

(assert (=> b!210293 m!237849))

(assert (=> b!210293 m!237837))

(assert (=> b!210293 m!237839))

(assert (=> b!210293 m!237841))

(assert (=> b!210294 m!237803))

(assert (=> b!210294 m!237803))

(assert (=> b!210294 m!237807))

(declare-fun m!237853 () Bool)

(assert (=> b!210299 m!237853))

(assert (=> b!210288 m!237803))

(assert (=> b!210288 m!237803))

(declare-fun m!237855 () Bool)

(assert (=> b!210288 m!237855))

(assert (=> b!210168 d!57869))

(declare-fun call!19876 () ListLongMap!3075)

(declare-fun bm!19873 () Bool)

(assert (=> bm!19873 (= call!19876 (getCurrentListMapNoExtraKeys!483 _keys!825 (array!10005 (store (arr!4750 _values!649) i!601 (ValueCellFull!2358 v!520)) (size!5075 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210308 () Bool)

(declare-fun e!136964 () Bool)

(declare-fun e!136963 () Bool)

(assert (=> b!210308 (= e!136964 e!136963)))

(declare-fun c!35535 () Bool)

(assert (=> b!210308 (= c!35535 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun d!57871 () Bool)

(assert (=> d!57871 e!136964))

(declare-fun res!102630 () Bool)

(assert (=> d!57871 (=> (not res!102630) (not e!136964))))

(assert (=> d!57871 (= res!102630 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5075 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5075 _values!649))))))))

(declare-fun lt!107726 () Unit!6385)

(declare-fun choose!1082 (array!10006 array!10004 (_ BitVec 32) (_ BitVec 32) V!6851 V!6851 (_ BitVec 32) (_ BitVec 64) V!6851 (_ BitVec 32) Int) Unit!6385)

(assert (=> d!57871 (= lt!107726 (choose!1082 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57871 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!201 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!107726)))

(declare-fun call!19877 () ListLongMap!3075)

(declare-fun bm!19874 () Bool)

(assert (=> bm!19874 (= call!19877 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210309 () Bool)

(assert (=> b!210309 (= e!136963 (= call!19876 (+!546 call!19877 (tuple2!4149 k0!843 v!520))))))

(declare-fun b!210310 () Bool)

(assert (=> b!210310 (= e!136963 (= call!19876 call!19877))))

(assert (= (and d!57871 res!102630) b!210308))

(assert (= (and b!210308 c!35535) b!210309))

(assert (= (and b!210308 (not c!35535)) b!210310))

(assert (= (or b!210309 b!210310) bm!19873))

(assert (= (or b!210309 b!210310) bm!19874))

(assert (=> bm!19873 m!237653))

(declare-fun m!237857 () Bool)

(assert (=> bm!19873 m!237857))

(declare-fun m!237859 () Bool)

(assert (=> d!57871 m!237859))

(assert (=> bm!19874 m!237659))

(declare-fun m!237861 () Bool)

(assert (=> b!210309 m!237861))

(assert (=> b!210168 d!57871))

(declare-fun b!210311 () Bool)

(declare-fun e!136969 () Bool)

(declare-fun e!136965 () Bool)

(assert (=> b!210311 (= e!136969 e!136965)))

(assert (=> b!210311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun res!102634 () Bool)

(declare-fun lt!107731 () ListLongMap!3075)

(assert (=> b!210311 (= res!102634 (contains!1394 lt!107731 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210311 (=> (not res!102634) (not e!136965))))

(declare-fun b!210312 () Bool)

(declare-fun e!136968 () Bool)

(assert (=> b!210312 (= e!136968 (isEmpty!497 lt!107731))))

(declare-fun b!210314 () Bool)

(declare-fun e!136966 () ListLongMap!3075)

(declare-fun call!19878 () ListLongMap!3075)

(assert (=> b!210314 (= e!136966 call!19878)))

(declare-fun bm!19875 () Bool)

(assert (=> bm!19875 (= call!19878 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!210315 () Bool)

(assert (=> b!210315 (= e!136968 (= lt!107731 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!210316 () Bool)

(declare-fun lt!107730 () Unit!6385)

(declare-fun lt!107727 () Unit!6385)

(assert (=> b!210316 (= lt!107730 lt!107727)))

(declare-fun lt!107728 () V!6851)

(declare-fun lt!107732 () (_ BitVec 64))

(declare-fun lt!107733 () (_ BitVec 64))

(declare-fun lt!107729 () ListLongMap!3075)

(assert (=> b!210316 (not (contains!1394 (+!546 lt!107729 (tuple2!4149 lt!107732 lt!107728)) lt!107733))))

(assert (=> b!210316 (= lt!107727 (addStillNotContains!102 lt!107729 lt!107732 lt!107728 lt!107733))))

(assert (=> b!210316 (= lt!107733 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!210316 (= lt!107728 (get!2548 (select (arr!4750 lt!107624) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!210316 (= lt!107732 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210316 (= lt!107729 call!19878)))

(assert (=> b!210316 (= e!136966 (+!546 call!19878 (tuple2!4149 (select (arr!4751 _keys!825) #b00000000000000000000000000000000) (get!2548 (select (arr!4750 lt!107624) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!210317 () Bool)

(declare-fun e!136970 () ListLongMap!3075)

(assert (=> b!210317 (= e!136970 e!136966)))

(declare-fun c!35539 () Bool)

(assert (=> b!210317 (= c!35539 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210318 () Bool)

(assert (=> b!210318 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> b!210318 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5075 lt!107624)))))

(assert (=> b!210318 (= e!136965 (= (apply!191 lt!107731 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)) (get!2548 (select (arr!4750 lt!107624) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!210319 () Bool)

(declare-fun e!136971 () Bool)

(assert (=> b!210319 (= e!136971 e!136969)))

(declare-fun c!35538 () Bool)

(declare-fun e!136967 () Bool)

(assert (=> b!210319 (= c!35538 e!136967)))

(declare-fun res!102632 () Bool)

(assert (=> b!210319 (=> (not res!102632) (not e!136967))))

(assert (=> b!210319 (= res!102632 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun b!210320 () Bool)

(assert (=> b!210320 (= e!136969 e!136968)))

(declare-fun c!35537 () Bool)

(assert (=> b!210320 (= c!35537 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun b!210321 () Bool)

(assert (=> b!210321 (= e!136967 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210321 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!210322 () Bool)

(declare-fun res!102631 () Bool)

(assert (=> b!210322 (=> (not res!102631) (not e!136971))))

(assert (=> b!210322 (= res!102631 (not (contains!1394 lt!107731 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!57873 () Bool)

(assert (=> d!57873 e!136971))

(declare-fun res!102633 () Bool)

(assert (=> d!57873 (=> (not res!102633) (not e!136971))))

(assert (=> d!57873 (= res!102633 (not (contains!1394 lt!107731 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57873 (= lt!107731 e!136970)))

(declare-fun c!35536 () Bool)

(assert (=> d!57873 (= c!35536 (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57873 (validMask!0 mask!1149)))

(assert (=> d!57873 (= (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107731)))

(declare-fun b!210313 () Bool)

(assert (=> b!210313 (= e!136970 (ListLongMap!3076 Nil!3063))))

(assert (= (and d!57873 c!35536) b!210313))

(assert (= (and d!57873 (not c!35536)) b!210317))

(assert (= (and b!210317 c!35539) b!210316))

(assert (= (and b!210317 (not c!35539)) b!210314))

(assert (= (or b!210316 b!210314) bm!19875))

(assert (= (and d!57873 res!102633) b!210322))

(assert (= (and b!210322 res!102631) b!210319))

(assert (= (and b!210319 res!102632) b!210321))

(assert (= (and b!210319 c!35538) b!210311))

(assert (= (and b!210319 (not c!35538)) b!210320))

(assert (= (and b!210311 res!102634) b!210318))

(assert (= (and b!210320 c!35537) b!210315))

(assert (= (and b!210320 (not c!35537)) b!210312))

(declare-fun b_lambda!7621 () Bool)

(assert (=> (not b_lambda!7621) (not b!210316)))

(assert (=> b!210316 t!8012))

(declare-fun b_and!12337 () Bool)

(assert (= b_and!12335 (and (=> t!8012 result!4981) b_and!12337)))

(declare-fun b_lambda!7623 () Bool)

(assert (=> (not b_lambda!7623) (not b!210318)))

(assert (=> b!210318 t!8012))

(declare-fun b_and!12339 () Bool)

(assert (= b_and!12337 (and (=> t!8012 result!4981) b_and!12339)))

(declare-fun m!237863 () Bool)

(assert (=> b!210312 m!237863))

(declare-fun m!237865 () Bool)

(assert (=> bm!19875 m!237865))

(assert (=> b!210315 m!237865))

(assert (=> b!210318 m!237803))

(assert (=> b!210318 m!237803))

(declare-fun m!237867 () Bool)

(assert (=> b!210318 m!237867))

(declare-fun m!237869 () Bool)

(assert (=> b!210318 m!237869))

(assert (=> b!210318 m!237839))

(assert (=> b!210318 m!237869))

(assert (=> b!210318 m!237839))

(declare-fun m!237871 () Bool)

(assert (=> b!210318 m!237871))

(assert (=> b!210321 m!237803))

(assert (=> b!210321 m!237803))

(assert (=> b!210321 m!237807))

(declare-fun m!237873 () Bool)

(assert (=> d!57873 m!237873))

(assert (=> d!57873 m!237679))

(declare-fun m!237875 () Bool)

(assert (=> b!210316 m!237875))

(assert (=> b!210316 m!237803))

(declare-fun m!237877 () Bool)

(assert (=> b!210316 m!237877))

(declare-fun m!237879 () Bool)

(assert (=> b!210316 m!237879))

(declare-fun m!237881 () Bool)

(assert (=> b!210316 m!237881))

(assert (=> b!210316 m!237869))

(assert (=> b!210316 m!237839))

(assert (=> b!210316 m!237879))

(assert (=> b!210316 m!237869))

(assert (=> b!210316 m!237839))

(assert (=> b!210316 m!237871))

(assert (=> b!210317 m!237803))

(assert (=> b!210317 m!237803))

(assert (=> b!210317 m!237807))

(declare-fun m!237883 () Bool)

(assert (=> b!210322 m!237883))

(assert (=> b!210311 m!237803))

(assert (=> b!210311 m!237803))

(declare-fun m!237885 () Bool)

(assert (=> b!210311 m!237885))

(assert (=> b!210168 d!57873))

(declare-fun b!210365 () Bool)

(declare-fun e!137004 () Unit!6385)

(declare-fun lt!107797 () Unit!6385)

(assert (=> b!210365 (= e!137004 lt!107797)))

(declare-fun lt!107784 () ListLongMap!3075)

(assert (=> b!210365 (= lt!107784 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107796 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107796 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107786 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107786 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107794 () Unit!6385)

(declare-fun addStillContains!167 (ListLongMap!3075 (_ BitVec 64) V!6851 (_ BitVec 64)) Unit!6385)

(assert (=> b!210365 (= lt!107794 (addStillContains!167 lt!107784 lt!107796 zeroValue!615 lt!107786))))

(assert (=> b!210365 (contains!1394 (+!546 lt!107784 (tuple2!4149 lt!107796 zeroValue!615)) lt!107786)))

(declare-fun lt!107795 () Unit!6385)

(assert (=> b!210365 (= lt!107795 lt!107794)))

(declare-fun lt!107778 () ListLongMap!3075)

(assert (=> b!210365 (= lt!107778 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107781 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107781 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107793 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107793 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107782 () Unit!6385)

(declare-fun addApplyDifferent!167 (ListLongMap!3075 (_ BitVec 64) V!6851 (_ BitVec 64)) Unit!6385)

(assert (=> b!210365 (= lt!107782 (addApplyDifferent!167 lt!107778 lt!107781 minValue!615 lt!107793))))

(assert (=> b!210365 (= (apply!191 (+!546 lt!107778 (tuple2!4149 lt!107781 minValue!615)) lt!107793) (apply!191 lt!107778 lt!107793))))

(declare-fun lt!107780 () Unit!6385)

(assert (=> b!210365 (= lt!107780 lt!107782)))

(declare-fun lt!107783 () ListLongMap!3075)

(assert (=> b!210365 (= lt!107783 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107788 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107788 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107790 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107790 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107792 () Unit!6385)

(assert (=> b!210365 (= lt!107792 (addApplyDifferent!167 lt!107783 lt!107788 zeroValue!615 lt!107790))))

(assert (=> b!210365 (= (apply!191 (+!546 lt!107783 (tuple2!4149 lt!107788 zeroValue!615)) lt!107790) (apply!191 lt!107783 lt!107790))))

(declare-fun lt!107785 () Unit!6385)

(assert (=> b!210365 (= lt!107785 lt!107792)))

(declare-fun lt!107789 () ListLongMap!3075)

(assert (=> b!210365 (= lt!107789 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107787 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107787 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107799 () (_ BitVec 64))

(assert (=> b!210365 (= lt!107799 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210365 (= lt!107797 (addApplyDifferent!167 lt!107789 lt!107787 minValue!615 lt!107799))))

(assert (=> b!210365 (= (apply!191 (+!546 lt!107789 (tuple2!4149 lt!107787 minValue!615)) lt!107799) (apply!191 lt!107789 lt!107799))))

(declare-fun b!210366 () Bool)

(declare-fun e!137000 () Bool)

(declare-fun call!19895 () Bool)

(assert (=> b!210366 (= e!137000 (not call!19895))))

(declare-fun b!210367 () Bool)

(declare-fun e!137007 () Bool)

(declare-fun e!137001 () Bool)

(assert (=> b!210367 (= e!137007 e!137001)))

(declare-fun res!102659 () Bool)

(declare-fun call!19899 () Bool)

(assert (=> b!210367 (= res!102659 call!19899)))

(assert (=> b!210367 (=> (not res!102659) (not e!137001))))

(declare-fun b!210368 () Bool)

(declare-fun e!137008 () ListLongMap!3075)

(declare-fun call!19893 () ListLongMap!3075)

(assert (=> b!210368 (= e!137008 (+!546 call!19893 (tuple2!4149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!210369 () Bool)

(declare-fun e!137009 () ListLongMap!3075)

(declare-fun call!19897 () ListLongMap!3075)

(assert (=> b!210369 (= e!137009 call!19897)))

(declare-fun b!210370 () Bool)

(declare-fun e!137003 () Bool)

(assert (=> b!210370 (= e!137003 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun call!19898 () ListLongMap!3075)

(declare-fun call!19896 () ListLongMap!3075)

(declare-fun call!19894 () ListLongMap!3075)

(declare-fun c!35556 () Bool)

(declare-fun bm!19890 () Bool)

(declare-fun c!35553 () Bool)

(assert (=> bm!19890 (= call!19893 (+!546 (ite c!35556 call!19894 (ite c!35553 call!19898 call!19896)) (ite (or c!35556 c!35553) (tuple2!4149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!210371 () Bool)

(declare-fun e!137005 () ListLongMap!3075)

(assert (=> b!210371 (= e!137005 call!19897)))

(declare-fun b!210372 () Bool)

(declare-fun e!137002 () Bool)

(assert (=> b!210372 (= e!137002 e!137007)))

(declare-fun c!35555 () Bool)

(assert (=> b!210372 (= c!35555 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!210373 () Bool)

(declare-fun e!137006 () Bool)

(declare-fun lt!107779 () ListLongMap!3075)

(assert (=> b!210373 (= e!137006 (= (apply!191 lt!107779 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!210374 () Bool)

(declare-fun res!102656 () Bool)

(assert (=> b!210374 (=> (not res!102656) (not e!137002))))

(declare-fun e!136999 () Bool)

(assert (=> b!210374 (= res!102656 e!136999)))

(declare-fun res!102661 () Bool)

(assert (=> b!210374 (=> res!102661 e!136999)))

(assert (=> b!210374 (= res!102661 (not e!137003))))

(declare-fun res!102655 () Bool)

(assert (=> b!210374 (=> (not res!102655) (not e!137003))))

(assert (=> b!210374 (= res!102655 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19891 () Bool)

(assert (=> bm!19891 (= call!19898 call!19894)))

(declare-fun b!210375 () Bool)

(declare-fun c!35552 () Bool)

(assert (=> b!210375 (= c!35552 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!210375 (= e!137009 e!137005)))

(declare-fun b!210376 () Bool)

(declare-fun res!102658 () Bool)

(assert (=> b!210376 (=> (not res!102658) (not e!137002))))

(assert (=> b!210376 (= res!102658 e!137000)))

(declare-fun c!35557 () Bool)

(assert (=> b!210376 (= c!35557 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!210377 () Bool)

(declare-fun e!136998 () Bool)

(assert (=> b!210377 (= e!136999 e!136998)))

(declare-fun res!102660 () Bool)

(assert (=> b!210377 (=> (not res!102660) (not e!136998))))

(assert (=> b!210377 (= res!102660 (contains!1394 lt!107779 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210377 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19892 () Bool)

(assert (=> bm!19892 (= call!19896 call!19898)))

(declare-fun bm!19893 () Bool)

(assert (=> bm!19893 (= call!19899 (contains!1394 lt!107779 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!210378 () Bool)

(declare-fun e!137010 () Bool)

(assert (=> b!210378 (= e!137010 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210379 () Bool)

(assert (=> b!210379 (= e!137005 call!19896)))

(declare-fun b!210380 () Bool)

(assert (=> b!210380 (= e!136998 (= (apply!191 lt!107779 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)) (get!2548 (select (arr!4750 _values!649) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5075 _values!649)))))

(assert (=> b!210380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19894 () Bool)

(assert (=> bm!19894 (= call!19897 call!19893)))

(declare-fun b!210381 () Bool)

(assert (=> b!210381 (= e!137001 (= (apply!191 lt!107779 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!210382 () Bool)

(assert (=> b!210382 (= e!137000 e!137006)))

(declare-fun res!102657 () Bool)

(assert (=> b!210382 (= res!102657 call!19895)))

(assert (=> b!210382 (=> (not res!102657) (not e!137006))))

(declare-fun b!210383 () Bool)

(assert (=> b!210383 (= e!137007 (not call!19899))))

(declare-fun bm!19895 () Bool)

(assert (=> bm!19895 (= call!19895 (contains!1394 lt!107779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!210384 () Bool)

(assert (=> b!210384 (= e!137008 e!137009)))

(assert (=> b!210384 (= c!35553 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!57875 () Bool)

(assert (=> d!57875 e!137002))

(declare-fun res!102653 () Bool)

(assert (=> d!57875 (=> (not res!102653) (not e!137002))))

(assert (=> d!57875 (= res!102653 (or (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))))

(declare-fun lt!107798 () ListLongMap!3075)

(assert (=> d!57875 (= lt!107779 lt!107798)))

(declare-fun lt!107791 () Unit!6385)

(assert (=> d!57875 (= lt!107791 e!137004)))

(declare-fun c!35554 () Bool)

(assert (=> d!57875 (= c!35554 e!137010)))

(declare-fun res!102654 () Bool)

(assert (=> d!57875 (=> (not res!102654) (not e!137010))))

(assert (=> d!57875 (= res!102654 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57875 (= lt!107798 e!137008)))

(assert (=> d!57875 (= c!35556 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57875 (validMask!0 mask!1149)))

(assert (=> d!57875 (= (getCurrentListMap!1084 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107779)))

(declare-fun bm!19896 () Bool)

(assert (=> bm!19896 (= call!19894 (getCurrentListMapNoExtraKeys!483 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210385 () Bool)

(declare-fun Unit!6389 () Unit!6385)

(assert (=> b!210385 (= e!137004 Unit!6389)))

(assert (= (and d!57875 c!35556) b!210368))

(assert (= (and d!57875 (not c!35556)) b!210384))

(assert (= (and b!210384 c!35553) b!210369))

(assert (= (and b!210384 (not c!35553)) b!210375))

(assert (= (and b!210375 c!35552) b!210371))

(assert (= (and b!210375 (not c!35552)) b!210379))

(assert (= (or b!210371 b!210379) bm!19892))

(assert (= (or b!210369 bm!19892) bm!19891))

(assert (= (or b!210369 b!210371) bm!19894))

(assert (= (or b!210368 bm!19891) bm!19896))

(assert (= (or b!210368 bm!19894) bm!19890))

(assert (= (and d!57875 res!102654) b!210378))

(assert (= (and d!57875 c!35554) b!210365))

(assert (= (and d!57875 (not c!35554)) b!210385))

(assert (= (and d!57875 res!102653) b!210374))

(assert (= (and b!210374 res!102655) b!210370))

(assert (= (and b!210374 (not res!102661)) b!210377))

(assert (= (and b!210377 res!102660) b!210380))

(assert (= (and b!210374 res!102656) b!210376))

(assert (= (and b!210376 c!35557) b!210382))

(assert (= (and b!210376 (not c!35557)) b!210366))

(assert (= (and b!210382 res!102657) b!210373))

(assert (= (or b!210382 b!210366) bm!19895))

(assert (= (and b!210376 res!102658) b!210372))

(assert (= (and b!210372 c!35555) b!210367))

(assert (= (and b!210372 (not c!35555)) b!210383))

(assert (= (and b!210367 res!102659) b!210381))

(assert (= (or b!210367 b!210383) bm!19893))

(declare-fun b_lambda!7625 () Bool)

(assert (=> (not b_lambda!7625) (not b!210380)))

(assert (=> b!210380 t!8012))

(declare-fun b_and!12341 () Bool)

(assert (= b_and!12339 (and (=> t!8012 result!4981) b_and!12341)))

(assert (=> d!57875 m!237679))

(declare-fun m!237887 () Bool)

(assert (=> b!210365 m!237887))

(declare-fun m!237889 () Bool)

(assert (=> b!210365 m!237889))

(declare-fun m!237891 () Bool)

(assert (=> b!210365 m!237891))

(declare-fun m!237893 () Bool)

(assert (=> b!210365 m!237893))

(declare-fun m!237895 () Bool)

(assert (=> b!210365 m!237895))

(declare-fun m!237897 () Bool)

(assert (=> b!210365 m!237897))

(declare-fun m!237899 () Bool)

(assert (=> b!210365 m!237899))

(declare-fun m!237901 () Bool)

(assert (=> b!210365 m!237901))

(declare-fun m!237903 () Bool)

(assert (=> b!210365 m!237903))

(assert (=> b!210365 m!237889))

(declare-fun m!237905 () Bool)

(assert (=> b!210365 m!237905))

(assert (=> b!210365 m!237899))

(declare-fun m!237907 () Bool)

(assert (=> b!210365 m!237907))

(assert (=> b!210365 m!237659))

(assert (=> b!210365 m!237901))

(assert (=> b!210365 m!237803))

(declare-fun m!237909 () Bool)

(assert (=> b!210365 m!237909))

(declare-fun m!237911 () Bool)

(assert (=> b!210365 m!237911))

(assert (=> b!210365 m!237895))

(declare-fun m!237913 () Bool)

(assert (=> b!210365 m!237913))

(declare-fun m!237915 () Bool)

(assert (=> b!210365 m!237915))

(declare-fun m!237917 () Bool)

(assert (=> b!210373 m!237917))

(assert (=> b!210370 m!237803))

(assert (=> b!210370 m!237803))

(assert (=> b!210370 m!237807))

(declare-fun m!237919 () Bool)

(assert (=> b!210381 m!237919))

(assert (=> b!210377 m!237803))

(assert (=> b!210377 m!237803))

(declare-fun m!237921 () Bool)

(assert (=> b!210377 m!237921))

(assert (=> b!210378 m!237803))

(assert (=> b!210378 m!237803))

(assert (=> b!210378 m!237807))

(declare-fun m!237923 () Bool)

(assert (=> bm!19895 m!237923))

(declare-fun m!237925 () Bool)

(assert (=> b!210368 m!237925))

(assert (=> b!210380 m!237839))

(assert (=> b!210380 m!237837))

(assert (=> b!210380 m!237839))

(assert (=> b!210380 m!237841))

(assert (=> b!210380 m!237803))

(declare-fun m!237927 () Bool)

(assert (=> b!210380 m!237927))

(assert (=> b!210380 m!237803))

(assert (=> b!210380 m!237837))

(declare-fun m!237929 () Bool)

(assert (=> bm!19890 m!237929))

(assert (=> bm!19896 m!237659))

(declare-fun m!237931 () Bool)

(assert (=> bm!19893 m!237931))

(assert (=> b!210168 d!57875))

(declare-fun b!210386 () Bool)

(declare-fun e!137017 () Unit!6385)

(declare-fun lt!107819 () Unit!6385)

(assert (=> b!210386 (= e!137017 lt!107819)))

(declare-fun lt!107806 () ListLongMap!3075)

(assert (=> b!210386 (= lt!107806 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107818 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107818 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107808 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107808 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107816 () Unit!6385)

(assert (=> b!210386 (= lt!107816 (addStillContains!167 lt!107806 lt!107818 zeroValue!615 lt!107808))))

(assert (=> b!210386 (contains!1394 (+!546 lt!107806 (tuple2!4149 lt!107818 zeroValue!615)) lt!107808)))

(declare-fun lt!107817 () Unit!6385)

(assert (=> b!210386 (= lt!107817 lt!107816)))

(declare-fun lt!107800 () ListLongMap!3075)

(assert (=> b!210386 (= lt!107800 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107803 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107803 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107815 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107815 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107804 () Unit!6385)

(assert (=> b!210386 (= lt!107804 (addApplyDifferent!167 lt!107800 lt!107803 minValue!615 lt!107815))))

(assert (=> b!210386 (= (apply!191 (+!546 lt!107800 (tuple2!4149 lt!107803 minValue!615)) lt!107815) (apply!191 lt!107800 lt!107815))))

(declare-fun lt!107802 () Unit!6385)

(assert (=> b!210386 (= lt!107802 lt!107804)))

(declare-fun lt!107805 () ListLongMap!3075)

(assert (=> b!210386 (= lt!107805 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107810 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107810 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107812 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107812 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107814 () Unit!6385)

(assert (=> b!210386 (= lt!107814 (addApplyDifferent!167 lt!107805 lt!107810 zeroValue!615 lt!107812))))

(assert (=> b!210386 (= (apply!191 (+!546 lt!107805 (tuple2!4149 lt!107810 zeroValue!615)) lt!107812) (apply!191 lt!107805 lt!107812))))

(declare-fun lt!107807 () Unit!6385)

(assert (=> b!210386 (= lt!107807 lt!107814)))

(declare-fun lt!107811 () ListLongMap!3075)

(assert (=> b!210386 (= lt!107811 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107809 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107809 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107821 () (_ BitVec 64))

(assert (=> b!210386 (= lt!107821 (select (arr!4751 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!210386 (= lt!107819 (addApplyDifferent!167 lt!107811 lt!107809 minValue!615 lt!107821))))

(assert (=> b!210386 (= (apply!191 (+!546 lt!107811 (tuple2!4149 lt!107809 minValue!615)) lt!107821) (apply!191 lt!107811 lt!107821))))

(declare-fun b!210387 () Bool)

(declare-fun e!137013 () Bool)

(declare-fun call!19902 () Bool)

(assert (=> b!210387 (= e!137013 (not call!19902))))

(declare-fun b!210388 () Bool)

(declare-fun e!137020 () Bool)

(declare-fun e!137014 () Bool)

(assert (=> b!210388 (= e!137020 e!137014)))

(declare-fun res!102668 () Bool)

(declare-fun call!19906 () Bool)

(assert (=> b!210388 (= res!102668 call!19906)))

(assert (=> b!210388 (=> (not res!102668) (not e!137014))))

(declare-fun b!210389 () Bool)

(declare-fun e!137021 () ListLongMap!3075)

(declare-fun call!19900 () ListLongMap!3075)

(assert (=> b!210389 (= e!137021 (+!546 call!19900 (tuple2!4149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!210390 () Bool)

(declare-fun e!137022 () ListLongMap!3075)

(declare-fun call!19904 () ListLongMap!3075)

(assert (=> b!210390 (= e!137022 call!19904)))

(declare-fun b!210391 () Bool)

(declare-fun e!137016 () Bool)

(assert (=> b!210391 (= e!137016 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun c!35562 () Bool)

(declare-fun call!19905 () ListLongMap!3075)

(declare-fun call!19903 () ListLongMap!3075)

(declare-fun call!19901 () ListLongMap!3075)

(declare-fun bm!19897 () Bool)

(declare-fun c!35559 () Bool)

(assert (=> bm!19897 (= call!19900 (+!546 (ite c!35562 call!19901 (ite c!35559 call!19905 call!19903)) (ite (or c!35562 c!35559) (tuple2!4149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!210392 () Bool)

(declare-fun e!137018 () ListLongMap!3075)

(assert (=> b!210392 (= e!137018 call!19904)))

(declare-fun b!210393 () Bool)

(declare-fun e!137015 () Bool)

(assert (=> b!210393 (= e!137015 e!137020)))

(declare-fun c!35561 () Bool)

(assert (=> b!210393 (= c!35561 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!210394 () Bool)

(declare-fun e!137019 () Bool)

(declare-fun lt!107801 () ListLongMap!3075)

(assert (=> b!210394 (= e!137019 (= (apply!191 lt!107801 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!210395 () Bool)

(declare-fun res!102665 () Bool)

(assert (=> b!210395 (=> (not res!102665) (not e!137015))))

(declare-fun e!137012 () Bool)

(assert (=> b!210395 (= res!102665 e!137012)))

(declare-fun res!102670 () Bool)

(assert (=> b!210395 (=> res!102670 e!137012)))

(assert (=> b!210395 (= res!102670 (not e!137016))))

(declare-fun res!102664 () Bool)

(assert (=> b!210395 (=> (not res!102664) (not e!137016))))

(assert (=> b!210395 (= res!102664 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19898 () Bool)

(assert (=> bm!19898 (= call!19905 call!19901)))

(declare-fun b!210396 () Bool)

(declare-fun c!35558 () Bool)

(assert (=> b!210396 (= c!35558 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!210396 (= e!137022 e!137018)))

(declare-fun b!210397 () Bool)

(declare-fun res!102667 () Bool)

(assert (=> b!210397 (=> (not res!102667) (not e!137015))))

(assert (=> b!210397 (= res!102667 e!137013)))

(declare-fun c!35563 () Bool)

(assert (=> b!210397 (= c!35563 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!210398 () Bool)

(declare-fun e!137011 () Bool)

(assert (=> b!210398 (= e!137012 e!137011)))

(declare-fun res!102669 () Bool)

(assert (=> b!210398 (=> (not res!102669) (not e!137011))))

(assert (=> b!210398 (= res!102669 (contains!1394 lt!107801 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!210398 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19899 () Bool)

(assert (=> bm!19899 (= call!19903 call!19905)))

(declare-fun bm!19900 () Bool)

(assert (=> bm!19900 (= call!19906 (contains!1394 lt!107801 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!210399 () Bool)

(declare-fun e!137023 () Bool)

(assert (=> b!210399 (= e!137023 (validKeyInArray!0 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!210400 () Bool)

(assert (=> b!210400 (= e!137018 call!19903)))

(declare-fun b!210401 () Bool)

(assert (=> b!210401 (= e!137011 (= (apply!191 lt!107801 (select (arr!4751 _keys!825) #b00000000000000000000000000000000)) (get!2548 (select (arr!4750 lt!107624) #b00000000000000000000000000000000) (dynLambda!529 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210401 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5075 lt!107624)))))

(assert (=> b!210401 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(declare-fun bm!19901 () Bool)

(assert (=> bm!19901 (= call!19904 call!19900)))

(declare-fun b!210402 () Bool)

(assert (=> b!210402 (= e!137014 (= (apply!191 lt!107801 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!210403 () Bool)

(assert (=> b!210403 (= e!137013 e!137019)))

(declare-fun res!102666 () Bool)

(assert (=> b!210403 (= res!102666 call!19902)))

(assert (=> b!210403 (=> (not res!102666) (not e!137019))))

(declare-fun b!210404 () Bool)

(assert (=> b!210404 (= e!137020 (not call!19906))))

(declare-fun bm!19902 () Bool)

(assert (=> bm!19902 (= call!19902 (contains!1394 lt!107801 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!210405 () Bool)

(assert (=> b!210405 (= e!137021 e!137022)))

(assert (=> b!210405 (= c!35559 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!57877 () Bool)

(assert (=> d!57877 e!137015))

(declare-fun res!102662 () Bool)

(assert (=> d!57877 (=> (not res!102662) (not e!137015))))

(assert (=> d!57877 (= res!102662 (or (bvsge #b00000000000000000000000000000000 (size!5076 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))))

(declare-fun lt!107820 () ListLongMap!3075)

(assert (=> d!57877 (= lt!107801 lt!107820)))

(declare-fun lt!107813 () Unit!6385)

(assert (=> d!57877 (= lt!107813 e!137017)))

(declare-fun c!35560 () Bool)

(assert (=> d!57877 (= c!35560 e!137023)))

(declare-fun res!102663 () Bool)

(assert (=> d!57877 (=> (not res!102663) (not e!137023))))

(assert (=> d!57877 (= res!102663 (bvslt #b00000000000000000000000000000000 (size!5076 _keys!825)))))

(assert (=> d!57877 (= lt!107820 e!137021)))

(assert (=> d!57877 (= c!35562 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57877 (validMask!0 mask!1149)))

(assert (=> d!57877 (= (getCurrentListMap!1084 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107801)))

(declare-fun bm!19903 () Bool)

(assert (=> bm!19903 (= call!19901 (getCurrentListMapNoExtraKeys!483 _keys!825 lt!107624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210406 () Bool)

(declare-fun Unit!6390 () Unit!6385)

(assert (=> b!210406 (= e!137017 Unit!6390)))

(assert (= (and d!57877 c!35562) b!210389))

(assert (= (and d!57877 (not c!35562)) b!210405))

(assert (= (and b!210405 c!35559) b!210390))

(assert (= (and b!210405 (not c!35559)) b!210396))

(assert (= (and b!210396 c!35558) b!210392))

(assert (= (and b!210396 (not c!35558)) b!210400))

(assert (= (or b!210392 b!210400) bm!19899))

(assert (= (or b!210390 bm!19899) bm!19898))

(assert (= (or b!210390 b!210392) bm!19901))

(assert (= (or b!210389 bm!19898) bm!19903))

(assert (= (or b!210389 bm!19901) bm!19897))

(assert (= (and d!57877 res!102663) b!210399))

(assert (= (and d!57877 c!35560) b!210386))

(assert (= (and d!57877 (not c!35560)) b!210406))

(assert (= (and d!57877 res!102662) b!210395))

(assert (= (and b!210395 res!102664) b!210391))

(assert (= (and b!210395 (not res!102670)) b!210398))

(assert (= (and b!210398 res!102669) b!210401))

(assert (= (and b!210395 res!102665) b!210397))

(assert (= (and b!210397 c!35563) b!210403))

(assert (= (and b!210397 (not c!35563)) b!210387))

(assert (= (and b!210403 res!102666) b!210394))

(assert (= (or b!210403 b!210387) bm!19902))

(assert (= (and b!210397 res!102667) b!210393))

(assert (= (and b!210393 c!35561) b!210388))

(assert (= (and b!210393 (not c!35561)) b!210404))

(assert (= (and b!210388 res!102668) b!210402))

(assert (= (or b!210388 b!210404) bm!19900))

(declare-fun b_lambda!7627 () Bool)

(assert (=> (not b_lambda!7627) (not b!210401)))

(assert (=> b!210401 t!8012))

(declare-fun b_and!12343 () Bool)

(assert (= b_and!12341 (and (=> t!8012 result!4981) b_and!12343)))

(assert (=> d!57877 m!237679))

(declare-fun m!237933 () Bool)

(assert (=> b!210386 m!237933))

(declare-fun m!237935 () Bool)

(assert (=> b!210386 m!237935))

(declare-fun m!237937 () Bool)

(assert (=> b!210386 m!237937))

(declare-fun m!237939 () Bool)

(assert (=> b!210386 m!237939))

(declare-fun m!237941 () Bool)

(assert (=> b!210386 m!237941))

(declare-fun m!237943 () Bool)

(assert (=> b!210386 m!237943))

(declare-fun m!237945 () Bool)

(assert (=> b!210386 m!237945))

(declare-fun m!237947 () Bool)

(assert (=> b!210386 m!237947))

(declare-fun m!237949 () Bool)

(assert (=> b!210386 m!237949))

(assert (=> b!210386 m!237935))

(declare-fun m!237951 () Bool)

(assert (=> b!210386 m!237951))

(assert (=> b!210386 m!237945))

(declare-fun m!237953 () Bool)

(assert (=> b!210386 m!237953))

(assert (=> b!210386 m!237655))

(assert (=> b!210386 m!237947))

(assert (=> b!210386 m!237803))

(declare-fun m!237955 () Bool)

(assert (=> b!210386 m!237955))

(declare-fun m!237957 () Bool)

(assert (=> b!210386 m!237957))

(assert (=> b!210386 m!237941))

(declare-fun m!237959 () Bool)

(assert (=> b!210386 m!237959))

(declare-fun m!237961 () Bool)

(assert (=> b!210386 m!237961))

(declare-fun m!237963 () Bool)

(assert (=> b!210394 m!237963))

(assert (=> b!210391 m!237803))

(assert (=> b!210391 m!237803))

(assert (=> b!210391 m!237807))

(declare-fun m!237965 () Bool)

(assert (=> b!210402 m!237965))

(assert (=> b!210398 m!237803))

(assert (=> b!210398 m!237803))

(declare-fun m!237967 () Bool)

(assert (=> b!210398 m!237967))

(assert (=> b!210399 m!237803))

(assert (=> b!210399 m!237803))

(assert (=> b!210399 m!237807))

(declare-fun m!237969 () Bool)

(assert (=> bm!19902 m!237969))

(declare-fun m!237971 () Bool)

(assert (=> b!210389 m!237971))

(assert (=> b!210401 m!237839))

(assert (=> b!210401 m!237869))

(assert (=> b!210401 m!237839))

(assert (=> b!210401 m!237871))

(assert (=> b!210401 m!237803))

(declare-fun m!237973 () Bool)

(assert (=> b!210401 m!237973))

(assert (=> b!210401 m!237803))

(assert (=> b!210401 m!237869))

(declare-fun m!237975 () Bool)

(assert (=> bm!19897 m!237975))

(assert (=> bm!19903 m!237655))

(declare-fun m!237977 () Bool)

(assert (=> bm!19900 m!237977))

(assert (=> b!210168 d!57877))

(declare-fun b!210414 () Bool)

(declare-fun e!137029 () Bool)

(assert (=> b!210414 (= e!137029 tp_is_empty!5403)))

(declare-fun mapIsEmpty!9185 () Bool)

(declare-fun mapRes!9185 () Bool)

(assert (=> mapIsEmpty!9185 mapRes!9185))

(declare-fun condMapEmpty!9185 () Bool)

(declare-fun mapDefault!9185 () ValueCell!2358)

(assert (=> mapNonEmpty!9179 (= condMapEmpty!9185 (= mapRest!9179 ((as const (Array (_ BitVec 32) ValueCell!2358)) mapDefault!9185)))))

(assert (=> mapNonEmpty!9179 (= tp!19670 (and e!137029 mapRes!9185))))

(declare-fun b!210413 () Bool)

(declare-fun e!137028 () Bool)

(assert (=> b!210413 (= e!137028 tp_is_empty!5403)))

(declare-fun mapNonEmpty!9185 () Bool)

(declare-fun tp!19679 () Bool)

(assert (=> mapNonEmpty!9185 (= mapRes!9185 (and tp!19679 e!137028))))

(declare-fun mapKey!9185 () (_ BitVec 32))

(declare-fun mapRest!9185 () (Array (_ BitVec 32) ValueCell!2358))

(declare-fun mapValue!9185 () ValueCell!2358)

(assert (=> mapNonEmpty!9185 (= mapRest!9179 (store mapRest!9185 mapKey!9185 mapValue!9185))))

(assert (= (and mapNonEmpty!9179 condMapEmpty!9185) mapIsEmpty!9185))

(assert (= (and mapNonEmpty!9179 (not condMapEmpty!9185)) mapNonEmpty!9185))

(assert (= (and mapNonEmpty!9185 ((_ is ValueCellFull!2358) mapValue!9185)) b!210413))

(assert (= (and mapNonEmpty!9179 ((_ is ValueCellFull!2358) mapDefault!9185)) b!210414))

(declare-fun m!237979 () Bool)

(assert (=> mapNonEmpty!9185 m!237979))

(declare-fun b_lambda!7629 () Bool)

(assert (= b_lambda!7627 (or (and start!20940 b_free!5541) b_lambda!7629)))

(declare-fun b_lambda!7631 () Bool)

(assert (= b_lambda!7617 (or (and start!20940 b_free!5541) b_lambda!7631)))

(declare-fun b_lambda!7633 () Bool)

(assert (= b_lambda!7621 (or (and start!20940 b_free!5541) b_lambda!7633)))

(declare-fun b_lambda!7635 () Bool)

(assert (= b_lambda!7619 (or (and start!20940 b_free!5541) b_lambda!7635)))

(declare-fun b_lambda!7637 () Bool)

(assert (= b_lambda!7623 (or (and start!20940 b_free!5541) b_lambda!7637)))

(declare-fun b_lambda!7639 () Bool)

(assert (= b_lambda!7625 (or (and start!20940 b_free!5541) b_lambda!7639)))

(check-sat (not d!57859) (not b!210298) (not b_lambda!7639) (not b!210370) (not b_next!5541) (not bm!19862) (not b!210378) (not b!210259) (not b!210226) (not b!210232) (not b!210318) (not b!210322) (not b!210381) (not d!57849) (not b!210309) (not d!57875) (not bm!19902) (not b!210402) (not b!210315) (not b!210373) (not b!210399) (not b!210316) (not b!210293) (not b!210386) (not d!57867) (not bm!19890) (not d!57877) (not bm!19903) (not b!210249) (not d!57857) (not b!210224) (not b!210401) (not b!210289) (not b!210228) (not bm!19868) (not bm!19893) (not b!210398) (not b!210317) (not bm!19865) (not b!210368) (not b!210229) (not bm!19895) (not d!57869) (not b!210365) (not b!210380) (not b!210299) (not d!57855) (not b!210321) (not b!210225) (not b!210262) (not b!210391) (not b_lambda!7631) (not b!210233) (not bm!19900) (not b!210312) (not b!210234) (not b!210231) (not bm!19897) (not b!210292) (not b!210246) (not b!210295) (not b_lambda!7633) (not bm!19873) (not b_lambda!7635) (not mapNonEmpty!9185) (not b!210247) (not bm!19875) (not bm!19896) (not b!210227) (not b!210311) (not b_lambda!7629) (not b!210294) (not b!210377) (not b!210394) (not b!210263) (not d!57851) (not b!210389) (not b!210230) (not b!210260) tp_is_empty!5403 (not b!210223) (not d!57853) (not d!57873) (not d!57871) (not b!210288) (not b_lambda!7637) b_and!12343 (not bm!19874))
(check-sat b_and!12343 (not b_next!5541))
