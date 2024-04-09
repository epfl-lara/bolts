; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80244 () Bool)

(assert start!80244)

(declare-fun b!942172 () Bool)

(declare-fun b_free!17943 () Bool)

(declare-fun b_next!17943 () Bool)

(assert (=> b!942172 (= b_free!17943 (not b_next!17943))))

(declare-fun tp!62330 () Bool)

(declare-fun b_and!29373 () Bool)

(assert (=> b!942172 (= tp!62330 b_and!29373)))

(declare-fun e!529771 () Bool)

(declare-datatypes ((V!32233 0))(
  ( (V!32234 (val!10276 Int)) )
))
(declare-datatypes ((ValueCell!9744 0))(
  ( (ValueCellFull!9744 (v!12807 V!32233)) (EmptyCell!9744) )
))
(declare-datatypes ((array!56886 0))(
  ( (array!56887 (arr!27367 (Array (_ BitVec 32) ValueCell!9744)) (size!27833 (_ BitVec 32))) )
))
(declare-datatypes ((array!56888 0))(
  ( (array!56889 (arr!27368 (Array (_ BitVec 32) (_ BitVec 64))) (size!27834 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4638 0))(
  ( (LongMapFixedSize!4639 (defaultEntry!5610 Int) (mask!27205 (_ BitVec 32)) (extraKeys!5342 (_ BitVec 32)) (zeroValue!5446 V!32233) (minValue!5446 V!32233) (_size!2374 (_ BitVec 32)) (_keys!10476 array!56888) (_values!5633 array!56886) (_vacant!2374 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4638)

(declare-fun tp_is_empty!20451 () Bool)

(declare-fun e!529767 () Bool)

(declare-fun array_inv!21222 (array!56888) Bool)

(declare-fun array_inv!21223 (array!56886) Bool)

(assert (=> b!942172 (= e!529771 (and tp!62330 tp_is_empty!20451 (array_inv!21222 (_keys!10476 thiss!1141)) (array_inv!21223 (_values!5633 thiss!1141)) e!529767))))

(declare-fun mapIsEmpty!32492 () Bool)

(declare-fun mapRes!32492 () Bool)

(assert (=> mapIsEmpty!32492 mapRes!32492))

(declare-fun mapNonEmpty!32492 () Bool)

(declare-fun tp!62329 () Bool)

(declare-fun e!529770 () Bool)

(assert (=> mapNonEmpty!32492 (= mapRes!32492 (and tp!62329 e!529770))))

(declare-fun mapValue!32492 () ValueCell!9744)

(declare-fun mapRest!32492 () (Array (_ BitVec 32) ValueCell!9744))

(declare-fun mapKey!32492 () (_ BitVec 32))

(assert (=> mapNonEmpty!32492 (= (arr!27367 (_values!5633 thiss!1141)) (store mapRest!32492 mapKey!32492 mapValue!32492))))

(declare-fun b!942173 () Bool)

(declare-fun res!633263 () Bool)

(declare-fun e!529768 () Bool)

(assert (=> b!942173 (=> (not res!633263) (not e!529768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56888 (_ BitVec 32)) Bool)

(assert (=> b!942173 (= res!633263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))

(declare-fun b!942174 () Bool)

(declare-fun res!633261 () Bool)

(assert (=> b!942174 (=> (not res!633261) (not e!529768))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9023 0))(
  ( (MissingZero!9023 (index!38462 (_ BitVec 32))) (Found!9023 (index!38463 (_ BitVec 32))) (Intermediate!9023 (undefined!9835 Bool) (index!38464 (_ BitVec 32)) (x!80889 (_ BitVec 32))) (Undefined!9023) (MissingVacant!9023 (index!38465 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56888 (_ BitVec 32)) SeekEntryResult!9023)

(assert (=> b!942174 (= res!633261 (not ((_ is Found!9023) (seekEntry!0 key!756 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))))

(declare-fun b!942175 () Bool)

(declare-datatypes ((List!19346 0))(
  ( (Nil!19343) (Cons!19342 (h!20492 (_ BitVec 64)) (t!27669 List!19346)) )
))
(declare-fun arrayNoDuplicates!0 (array!56888 (_ BitVec 32) List!19346) Bool)

(assert (=> b!942175 (= e!529768 (not (arrayNoDuplicates!0 (_keys!10476 thiss!1141) #b00000000000000000000000000000000 Nil!19343)))))

(declare-fun b!942176 () Bool)

(declare-fun res!633262 () Bool)

(assert (=> b!942176 (=> (not res!633262) (not e!529768))))

(assert (=> b!942176 (= res!633262 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942177 () Bool)

(declare-fun e!529772 () Bool)

(assert (=> b!942177 (= e!529772 tp_is_empty!20451)))

(declare-fun b!942179 () Bool)

(assert (=> b!942179 (= e!529770 tp_is_empty!20451)))

(declare-fun b!942180 () Bool)

(assert (=> b!942180 (= e!529767 (and e!529772 mapRes!32492))))

(declare-fun condMapEmpty!32492 () Bool)

(declare-fun mapDefault!32492 () ValueCell!9744)

(assert (=> b!942180 (= condMapEmpty!32492 (= (arr!27367 (_values!5633 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9744)) mapDefault!32492)))))

(declare-fun b!942181 () Bool)

(declare-fun res!633259 () Bool)

(assert (=> b!942181 (=> (not res!633259) (not e!529768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942181 (= res!633259 (validMask!0 (mask!27205 thiss!1141)))))

(declare-fun res!633260 () Bool)

(assert (=> start!80244 (=> (not res!633260) (not e!529768))))

(declare-fun valid!1756 (LongMapFixedSize!4638) Bool)

(assert (=> start!80244 (= res!633260 (valid!1756 thiss!1141))))

(assert (=> start!80244 e!529768))

(assert (=> start!80244 e!529771))

(assert (=> start!80244 true))

(declare-fun b!942178 () Bool)

(declare-fun res!633264 () Bool)

(assert (=> b!942178 (=> (not res!633264) (not e!529768))))

(assert (=> b!942178 (= res!633264 (and (= (size!27833 (_values!5633 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27205 thiss!1141))) (= (size!27834 (_keys!10476 thiss!1141)) (size!27833 (_values!5633 thiss!1141))) (bvsge (mask!27205 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5342 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5342 thiss!1141) #b00000000000000000000000000000011)))))

(assert (= (and start!80244 res!633260) b!942176))

(assert (= (and b!942176 res!633262) b!942174))

(assert (= (and b!942174 res!633261) b!942181))

(assert (= (and b!942181 res!633259) b!942178))

(assert (= (and b!942178 res!633264) b!942173))

(assert (= (and b!942173 res!633263) b!942175))

(assert (= (and b!942180 condMapEmpty!32492) mapIsEmpty!32492))

(assert (= (and b!942180 (not condMapEmpty!32492)) mapNonEmpty!32492))

(assert (= (and mapNonEmpty!32492 ((_ is ValueCellFull!9744) mapValue!32492)) b!942179))

(assert (= (and b!942180 ((_ is ValueCellFull!9744) mapDefault!32492)) b!942177))

(assert (= b!942172 b!942180))

(assert (= start!80244 b!942172))

(declare-fun m!876911 () Bool)

(assert (=> b!942172 m!876911))

(declare-fun m!876913 () Bool)

(assert (=> b!942172 m!876913))

(declare-fun m!876915 () Bool)

(assert (=> b!942173 m!876915))

(declare-fun m!876917 () Bool)

(assert (=> start!80244 m!876917))

(declare-fun m!876919 () Bool)

(assert (=> mapNonEmpty!32492 m!876919))

(declare-fun m!876921 () Bool)

(assert (=> b!942175 m!876921))

(declare-fun m!876923 () Bool)

(assert (=> b!942174 m!876923))

(declare-fun m!876925 () Bool)

(assert (=> b!942181 m!876925))

(check-sat (not mapNonEmpty!32492) b_and!29373 (not b!942181) (not b!942174) (not b!942175) (not b!942173) tp_is_empty!20451 (not b!942172) (not b_next!17943) (not start!80244))
(check-sat b_and!29373 (not b_next!17943))
(get-model)

(declare-fun d!114095 () Bool)

(assert (=> d!114095 (= (validMask!0 (mask!27205 thiss!1141)) (and (or (= (mask!27205 thiss!1141) #b00000000000000000000000000000111) (= (mask!27205 thiss!1141) #b00000000000000000000000000001111) (= (mask!27205 thiss!1141) #b00000000000000000000000000011111) (= (mask!27205 thiss!1141) #b00000000000000000000000000111111) (= (mask!27205 thiss!1141) #b00000000000000000000000001111111) (= (mask!27205 thiss!1141) #b00000000000000000000000011111111) (= (mask!27205 thiss!1141) #b00000000000000000000000111111111) (= (mask!27205 thiss!1141) #b00000000000000000000001111111111) (= (mask!27205 thiss!1141) #b00000000000000000000011111111111) (= (mask!27205 thiss!1141) #b00000000000000000000111111111111) (= (mask!27205 thiss!1141) #b00000000000000000001111111111111) (= (mask!27205 thiss!1141) #b00000000000000000011111111111111) (= (mask!27205 thiss!1141) #b00000000000000000111111111111111) (= (mask!27205 thiss!1141) #b00000000000000001111111111111111) (= (mask!27205 thiss!1141) #b00000000000000011111111111111111) (= (mask!27205 thiss!1141) #b00000000000000111111111111111111) (= (mask!27205 thiss!1141) #b00000000000001111111111111111111) (= (mask!27205 thiss!1141) #b00000000000011111111111111111111) (= (mask!27205 thiss!1141) #b00000000000111111111111111111111) (= (mask!27205 thiss!1141) #b00000000001111111111111111111111) (= (mask!27205 thiss!1141) #b00000000011111111111111111111111) (= (mask!27205 thiss!1141) #b00000000111111111111111111111111) (= (mask!27205 thiss!1141) #b00000001111111111111111111111111) (= (mask!27205 thiss!1141) #b00000011111111111111111111111111) (= (mask!27205 thiss!1141) #b00000111111111111111111111111111) (= (mask!27205 thiss!1141) #b00001111111111111111111111111111) (= (mask!27205 thiss!1141) #b00011111111111111111111111111111) (= (mask!27205 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27205 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!942181 d!114095))

(declare-fun d!114097 () Bool)

(assert (=> d!114097 (= (array_inv!21222 (_keys!10476 thiss!1141)) (bvsge (size!27834 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942172 d!114097))

(declare-fun d!114099 () Bool)

(assert (=> d!114099 (= (array_inv!21223 (_values!5633 thiss!1141)) (bvsge (size!27833 (_values!5633 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942172 d!114099))

(declare-fun d!114101 () Bool)

(declare-fun res!633289 () Bool)

(declare-fun e!529793 () Bool)

(assert (=> d!114101 (=> (not res!633289) (not e!529793))))

(declare-fun simpleValid!345 (LongMapFixedSize!4638) Bool)

(assert (=> d!114101 (= res!633289 (simpleValid!345 thiss!1141))))

(assert (=> d!114101 (= (valid!1756 thiss!1141) e!529793)))

(declare-fun b!942218 () Bool)

(declare-fun res!633290 () Bool)

(assert (=> b!942218 (=> (not res!633290) (not e!529793))))

(declare-fun arrayCountValidKeys!0 (array!56888 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!942218 (= res!633290 (= (arrayCountValidKeys!0 (_keys!10476 thiss!1141) #b00000000000000000000000000000000 (size!27834 (_keys!10476 thiss!1141))) (_size!2374 thiss!1141)))))

(declare-fun b!942219 () Bool)

(declare-fun res!633291 () Bool)

(assert (=> b!942219 (=> (not res!633291) (not e!529793))))

(assert (=> b!942219 (= res!633291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))

(declare-fun b!942220 () Bool)

(assert (=> b!942220 (= e!529793 (arrayNoDuplicates!0 (_keys!10476 thiss!1141) #b00000000000000000000000000000000 Nil!19343))))

(assert (= (and d!114101 res!633289) b!942218))

(assert (= (and b!942218 res!633290) b!942219))

(assert (= (and b!942219 res!633291) b!942220))

(declare-fun m!876943 () Bool)

(assert (=> d!114101 m!876943))

(declare-fun m!876945 () Bool)

(assert (=> b!942218 m!876945))

(assert (=> b!942219 m!876915))

(assert (=> b!942220 m!876921))

(assert (=> start!80244 d!114101))

(declare-fun b!942229 () Bool)

(declare-fun e!529801 () Bool)

(declare-fun e!529800 () Bool)

(assert (=> b!942229 (= e!529801 e!529800)))

(declare-fun c!98133 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!942229 (= c!98133 (validKeyInArray!0 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942231 () Bool)

(declare-fun e!529802 () Bool)

(assert (=> b!942231 (= e!529800 e!529802)))

(declare-fun lt!425088 () (_ BitVec 64))

(assert (=> b!942231 (= lt!425088 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31815 0))(
  ( (Unit!31816) )
))
(declare-fun lt!425087 () Unit!31815)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56888 (_ BitVec 64) (_ BitVec 32)) Unit!31815)

(assert (=> b!942231 (= lt!425087 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10476 thiss!1141) lt!425088 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!942231 (arrayContainsKey!0 (_keys!10476 thiss!1141) lt!425088 #b00000000000000000000000000000000)))

(declare-fun lt!425086 () Unit!31815)

(assert (=> b!942231 (= lt!425086 lt!425087)))

(declare-fun res!633296 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56888 (_ BitVec 32)) SeekEntryResult!9023)

(assert (=> b!942231 (= res!633296 (= (seekEntryOrOpen!0 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000) (_keys!10476 thiss!1141) (mask!27205 thiss!1141)) (Found!9023 #b00000000000000000000000000000000)))))

(assert (=> b!942231 (=> (not res!633296) (not e!529802))))

(declare-fun b!942232 () Bool)

(declare-fun call!40956 () Bool)

(assert (=> b!942232 (= e!529802 call!40956)))

(declare-fun bm!40953 () Bool)

(assert (=> bm!40953 (= call!40956 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))

(declare-fun d!114103 () Bool)

(declare-fun res!633297 () Bool)

(assert (=> d!114103 (=> res!633297 e!529801)))

(assert (=> d!114103 (= res!633297 (bvsge #b00000000000000000000000000000000 (size!27834 (_keys!10476 thiss!1141))))))

(assert (=> d!114103 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)) e!529801)))

(declare-fun b!942230 () Bool)

(assert (=> b!942230 (= e!529800 call!40956)))

(assert (= (and d!114103 (not res!633297)) b!942229))

(assert (= (and b!942229 c!98133) b!942231))

(assert (= (and b!942229 (not c!98133)) b!942230))

(assert (= (and b!942231 res!633296) b!942232))

(assert (= (or b!942232 b!942230) bm!40953))

(declare-fun m!876947 () Bool)

(assert (=> b!942229 m!876947))

(assert (=> b!942229 m!876947))

(declare-fun m!876949 () Bool)

(assert (=> b!942229 m!876949))

(assert (=> b!942231 m!876947))

(declare-fun m!876951 () Bool)

(assert (=> b!942231 m!876951))

(declare-fun m!876953 () Bool)

(assert (=> b!942231 m!876953))

(assert (=> b!942231 m!876947))

(declare-fun m!876955 () Bool)

(assert (=> b!942231 m!876955))

(declare-fun m!876957 () Bool)

(assert (=> bm!40953 m!876957))

(assert (=> b!942173 d!114103))

(declare-fun d!114105 () Bool)

(declare-fun res!633306 () Bool)

(declare-fun e!529811 () Bool)

(assert (=> d!114105 (=> res!633306 e!529811)))

(assert (=> d!114105 (= res!633306 (bvsge #b00000000000000000000000000000000 (size!27834 (_keys!10476 thiss!1141))))))

(assert (=> d!114105 (= (arrayNoDuplicates!0 (_keys!10476 thiss!1141) #b00000000000000000000000000000000 Nil!19343) e!529811)))

(declare-fun b!942243 () Bool)

(declare-fun e!529814 () Bool)

(assert (=> b!942243 (= e!529811 e!529814)))

(declare-fun res!633305 () Bool)

(assert (=> b!942243 (=> (not res!633305) (not e!529814))))

(declare-fun e!529813 () Bool)

(assert (=> b!942243 (= res!633305 (not e!529813))))

(declare-fun res!633304 () Bool)

(assert (=> b!942243 (=> (not res!633304) (not e!529813))))

(assert (=> b!942243 (= res!633304 (validKeyInArray!0 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942244 () Bool)

(declare-fun e!529812 () Bool)

(declare-fun call!40959 () Bool)

(assert (=> b!942244 (= e!529812 call!40959)))

(declare-fun bm!40956 () Bool)

(declare-fun c!98136 () Bool)

(assert (=> bm!40956 (= call!40959 (arrayNoDuplicates!0 (_keys!10476 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98136 (Cons!19342 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000) Nil!19343) Nil!19343)))))

(declare-fun b!942245 () Bool)

(assert (=> b!942245 (= e!529814 e!529812)))

(assert (=> b!942245 (= c!98136 (validKeyInArray!0 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942246 () Bool)

(declare-fun contains!5145 (List!19346 (_ BitVec 64)) Bool)

(assert (=> b!942246 (= e!529813 (contains!5145 Nil!19343 (select (arr!27368 (_keys!10476 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942247 () Bool)

(assert (=> b!942247 (= e!529812 call!40959)))

(assert (= (and d!114105 (not res!633306)) b!942243))

(assert (= (and b!942243 res!633304) b!942246))

(assert (= (and b!942243 res!633305) b!942245))

(assert (= (and b!942245 c!98136) b!942247))

(assert (= (and b!942245 (not c!98136)) b!942244))

(assert (= (or b!942247 b!942244) bm!40956))

(assert (=> b!942243 m!876947))

(assert (=> b!942243 m!876947))

(assert (=> b!942243 m!876949))

(assert (=> bm!40956 m!876947))

(declare-fun m!876959 () Bool)

(assert (=> bm!40956 m!876959))

(assert (=> b!942245 m!876947))

(assert (=> b!942245 m!876947))

(assert (=> b!942245 m!876949))

(assert (=> b!942246 m!876947))

(assert (=> b!942246 m!876947))

(declare-fun m!876961 () Bool)

(assert (=> b!942246 m!876961))

(assert (=> b!942175 d!114105))

(declare-fun d!114107 () Bool)

(declare-fun lt!425100 () SeekEntryResult!9023)

(assert (=> d!114107 (and (or ((_ is MissingVacant!9023) lt!425100) (not ((_ is Found!9023) lt!425100)) (and (bvsge (index!38463 lt!425100) #b00000000000000000000000000000000) (bvslt (index!38463 lt!425100) (size!27834 (_keys!10476 thiss!1141))))) (not ((_ is MissingVacant!9023) lt!425100)) (or (not ((_ is Found!9023) lt!425100)) (= (select (arr!27368 (_keys!10476 thiss!1141)) (index!38463 lt!425100)) key!756)))))

(declare-fun e!529821 () SeekEntryResult!9023)

(assert (=> d!114107 (= lt!425100 e!529821)))

(declare-fun c!98144 () Bool)

(declare-fun lt!425098 () SeekEntryResult!9023)

(assert (=> d!114107 (= c!98144 (and ((_ is Intermediate!9023) lt!425098) (undefined!9835 lt!425098)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56888 (_ BitVec 32)) SeekEntryResult!9023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114107 (= lt!425098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27205 thiss!1141)) key!756 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))

(assert (=> d!114107 (validMask!0 (mask!27205 thiss!1141))))

(assert (=> d!114107 (= (seekEntry!0 key!756 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)) lt!425100)))

(declare-fun b!942260 () Bool)

(declare-fun e!529822 () SeekEntryResult!9023)

(assert (=> b!942260 (= e!529821 e!529822)))

(declare-fun lt!425099 () (_ BitVec 64))

(assert (=> b!942260 (= lt!425099 (select (arr!27368 (_keys!10476 thiss!1141)) (index!38464 lt!425098)))))

(declare-fun c!98145 () Bool)

(assert (=> b!942260 (= c!98145 (= lt!425099 key!756))))

(declare-fun b!942261 () Bool)

(declare-fun c!98143 () Bool)

(assert (=> b!942261 (= c!98143 (= lt!425099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529823 () SeekEntryResult!9023)

(assert (=> b!942261 (= e!529822 e!529823)))

(declare-fun b!942262 () Bool)

(assert (=> b!942262 (= e!529821 Undefined!9023)))

(declare-fun b!942263 () Bool)

(assert (=> b!942263 (= e!529823 (MissingZero!9023 (index!38464 lt!425098)))))

(declare-fun b!942264 () Bool)

(declare-fun lt!425097 () SeekEntryResult!9023)

(assert (=> b!942264 (= e!529823 (ite ((_ is MissingVacant!9023) lt!425097) (MissingZero!9023 (index!38465 lt!425097)) lt!425097))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56888 (_ BitVec 32)) SeekEntryResult!9023)

(assert (=> b!942264 (= lt!425097 (seekKeyOrZeroReturnVacant!0 (x!80889 lt!425098) (index!38464 lt!425098) (index!38464 lt!425098) key!756 (_keys!10476 thiss!1141) (mask!27205 thiss!1141)))))

(declare-fun b!942265 () Bool)

(assert (=> b!942265 (= e!529822 (Found!9023 (index!38464 lt!425098)))))

(assert (= (and d!114107 c!98144) b!942262))

(assert (= (and d!114107 (not c!98144)) b!942260))

(assert (= (and b!942260 c!98145) b!942265))

(assert (= (and b!942260 (not c!98145)) b!942261))

(assert (= (and b!942261 c!98143) b!942263))

(assert (= (and b!942261 (not c!98143)) b!942264))

(declare-fun m!876963 () Bool)

(assert (=> d!114107 m!876963))

(declare-fun m!876965 () Bool)

(assert (=> d!114107 m!876965))

(assert (=> d!114107 m!876965))

(declare-fun m!876967 () Bool)

(assert (=> d!114107 m!876967))

(assert (=> d!114107 m!876925))

(declare-fun m!876969 () Bool)

(assert (=> b!942260 m!876969))

(declare-fun m!876971 () Bool)

(assert (=> b!942264 m!876971))

(assert (=> b!942174 d!114107))

(declare-fun condMapEmpty!32498 () Bool)

(declare-fun mapDefault!32498 () ValueCell!9744)

(assert (=> mapNonEmpty!32492 (= condMapEmpty!32498 (= mapRest!32492 ((as const (Array (_ BitVec 32) ValueCell!9744)) mapDefault!32498)))))

(declare-fun e!529828 () Bool)

(declare-fun mapRes!32498 () Bool)

(assert (=> mapNonEmpty!32492 (= tp!62329 (and e!529828 mapRes!32498))))

(declare-fun mapIsEmpty!32498 () Bool)

(assert (=> mapIsEmpty!32498 mapRes!32498))

(declare-fun mapNonEmpty!32498 () Bool)

(declare-fun tp!62339 () Bool)

(declare-fun e!529829 () Bool)

(assert (=> mapNonEmpty!32498 (= mapRes!32498 (and tp!62339 e!529829))))

(declare-fun mapValue!32498 () ValueCell!9744)

(declare-fun mapRest!32498 () (Array (_ BitVec 32) ValueCell!9744))

(declare-fun mapKey!32498 () (_ BitVec 32))

(assert (=> mapNonEmpty!32498 (= mapRest!32492 (store mapRest!32498 mapKey!32498 mapValue!32498))))

(declare-fun b!942272 () Bool)

(assert (=> b!942272 (= e!529829 tp_is_empty!20451)))

(declare-fun b!942273 () Bool)

(assert (=> b!942273 (= e!529828 tp_is_empty!20451)))

(assert (= (and mapNonEmpty!32492 condMapEmpty!32498) mapIsEmpty!32498))

(assert (= (and mapNonEmpty!32492 (not condMapEmpty!32498)) mapNonEmpty!32498))

(assert (= (and mapNonEmpty!32498 ((_ is ValueCellFull!9744) mapValue!32498)) b!942272))

(assert (= (and mapNonEmpty!32492 ((_ is ValueCellFull!9744) mapDefault!32498)) b!942273))

(declare-fun m!876973 () Bool)

(assert (=> mapNonEmpty!32498 m!876973))

(check-sat (not b!942264) (not b!942219) (not mapNonEmpty!32498) b_and!29373 (not b!942243) (not b!942229) (not b!942245) (not bm!40953) (not d!114107) tp_is_empty!20451 (not bm!40956) (not b_next!17943) (not b!942246) (not b!942220) (not b!942218) (not b!942231) (not d!114101))
(check-sat b_and!29373 (not b_next!17943))
