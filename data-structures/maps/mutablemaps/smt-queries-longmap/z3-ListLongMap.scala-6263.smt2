; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80074 () Bool)

(assert start!80074)

(declare-fun b!941004 () Bool)

(declare-fun b_free!17901 () Bool)

(declare-fun b_next!17901 () Bool)

(assert (=> b!941004 (= b_free!17901 (not b_next!17901))))

(declare-fun tp!62178 () Bool)

(declare-fun b_and!29331 () Bool)

(assert (=> b!941004 (= tp!62178 b_and!29331)))

(declare-fun e!529034 () Bool)

(declare-datatypes ((V!32177 0))(
  ( (V!32178 (val!10255 Int)) )
))
(declare-datatypes ((ValueCell!9723 0))(
  ( (ValueCellFull!9723 (v!12786 V!32177)) (EmptyCell!9723) )
))
(declare-datatypes ((array!56788 0))(
  ( (array!56789 (arr!27325 (Array (_ BitVec 32) ValueCell!9723)) (size!27787 (_ BitVec 32))) )
))
(declare-datatypes ((array!56790 0))(
  ( (array!56791 (arr!27326 (Array (_ BitVec 32) (_ BitVec 64))) (size!27788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4596 0))(
  ( (LongMapFixedSize!4597 (defaultEntry!5589 Int) (mask!27139 (_ BitVec 32)) (extraKeys!5321 (_ BitVec 32)) (zeroValue!5425 V!32177) (minValue!5425 V!32177) (_size!2353 (_ BitVec 32)) (_keys!10435 array!56790) (_values!5612 array!56788) (_vacant!2353 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4596)

(declare-fun tp_is_empty!20409 () Bool)

(declare-fun e!529030 () Bool)

(declare-fun array_inv!21190 (array!56790) Bool)

(declare-fun array_inv!21191 (array!56788) Bool)

(assert (=> b!941004 (= e!529030 (and tp!62178 tp_is_empty!20409 (array_inv!21190 (_keys!10435 thiss!1141)) (array_inv!21191 (_values!5612 thiss!1141)) e!529034))))

(declare-fun b!941005 () Bool)

(declare-fun res!632775 () Bool)

(declare-fun e!529032 () Bool)

(assert (=> b!941005 (=> (not res!632775) (not e!529032))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941005 (= res!632775 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32404 () Bool)

(declare-fun mapRes!32404 () Bool)

(assert (=> mapIsEmpty!32404 mapRes!32404))

(declare-fun mapNonEmpty!32404 () Bool)

(declare-fun tp!62179 () Bool)

(declare-fun e!529031 () Bool)

(assert (=> mapNonEmpty!32404 (= mapRes!32404 (and tp!62179 e!529031))))

(declare-fun mapKey!32404 () (_ BitVec 32))

(declare-fun mapValue!32404 () ValueCell!9723)

(declare-fun mapRest!32404 () (Array (_ BitVec 32) ValueCell!9723))

(assert (=> mapNonEmpty!32404 (= (arr!27325 (_values!5612 thiss!1141)) (store mapRest!32404 mapKey!32404 mapValue!32404))))

(declare-fun b!941006 () Bool)

(declare-fun e!529035 () Bool)

(assert (=> b!941006 (= e!529035 tp_is_empty!20409)))

(declare-fun b!941008 () Bool)

(assert (=> b!941008 (= e!529031 tp_is_empty!20409)))

(declare-fun b!941007 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941007 (= e!529032 (not (validMask!0 (mask!27139 thiss!1141))))))

(declare-fun res!632777 () Bool)

(assert (=> start!80074 (=> (not res!632777) (not e!529032))))

(declare-fun valid!1743 (LongMapFixedSize!4596) Bool)

(assert (=> start!80074 (= res!632777 (valid!1743 thiss!1141))))

(assert (=> start!80074 e!529032))

(assert (=> start!80074 e!529030))

(assert (=> start!80074 true))

(declare-fun b!941009 () Bool)

(declare-fun res!632776 () Bool)

(assert (=> b!941009 (=> (not res!632776) (not e!529032))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9009 0))(
  ( (MissingZero!9009 (index!38406 (_ BitVec 32))) (Found!9009 (index!38407 (_ BitVec 32))) (Intermediate!9009 (undefined!9821 Bool) (index!38408 (_ BitVec 32)) (x!80727 (_ BitVec 32))) (Undefined!9009) (MissingVacant!9009 (index!38409 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56790 (_ BitVec 32)) SeekEntryResult!9009)

(assert (=> b!941009 (= res!632776 (not ((_ is Found!9009) (seekEntry!0 key!756 (_keys!10435 thiss!1141) (mask!27139 thiss!1141)))))))

(declare-fun b!941010 () Bool)

(assert (=> b!941010 (= e!529034 (and e!529035 mapRes!32404))))

(declare-fun condMapEmpty!32404 () Bool)

(declare-fun mapDefault!32404 () ValueCell!9723)

(assert (=> b!941010 (= condMapEmpty!32404 (= (arr!27325 (_values!5612 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9723)) mapDefault!32404)))))

(assert (= (and start!80074 res!632777) b!941005))

(assert (= (and b!941005 res!632775) b!941009))

(assert (= (and b!941009 res!632776) b!941007))

(assert (= (and b!941010 condMapEmpty!32404) mapIsEmpty!32404))

(assert (= (and b!941010 (not condMapEmpty!32404)) mapNonEmpty!32404))

(assert (= (and mapNonEmpty!32404 ((_ is ValueCellFull!9723) mapValue!32404)) b!941008))

(assert (= (and b!941010 ((_ is ValueCellFull!9723) mapDefault!32404)) b!941006))

(assert (= b!941004 b!941010))

(assert (= start!80074 b!941004))

(declare-fun m!876347 () Bool)

(assert (=> start!80074 m!876347))

(declare-fun m!876349 () Bool)

(assert (=> mapNonEmpty!32404 m!876349))

(declare-fun m!876351 () Bool)

(assert (=> b!941004 m!876351))

(declare-fun m!876353 () Bool)

(assert (=> b!941004 m!876353))

(declare-fun m!876355 () Bool)

(assert (=> b!941009 m!876355))

(declare-fun m!876357 () Bool)

(assert (=> b!941007 m!876357))

(check-sat b_and!29331 (not mapNonEmpty!32404) (not start!80074) (not b!941009) (not b!941004) (not b_next!17901) (not b!941007) tp_is_empty!20409)
(check-sat b_and!29331 (not b_next!17901))
(get-model)

(declare-fun d!113953 () Bool)

(assert (=> d!113953 (= (validMask!0 (mask!27139 thiss!1141)) (and (or (= (mask!27139 thiss!1141) #b00000000000000000000000000000111) (= (mask!27139 thiss!1141) #b00000000000000000000000000001111) (= (mask!27139 thiss!1141) #b00000000000000000000000000011111) (= (mask!27139 thiss!1141) #b00000000000000000000000000111111) (= (mask!27139 thiss!1141) #b00000000000000000000000001111111) (= (mask!27139 thiss!1141) #b00000000000000000000000011111111) (= (mask!27139 thiss!1141) #b00000000000000000000000111111111) (= (mask!27139 thiss!1141) #b00000000000000000000001111111111) (= (mask!27139 thiss!1141) #b00000000000000000000011111111111) (= (mask!27139 thiss!1141) #b00000000000000000000111111111111) (= (mask!27139 thiss!1141) #b00000000000000000001111111111111) (= (mask!27139 thiss!1141) #b00000000000000000011111111111111) (= (mask!27139 thiss!1141) #b00000000000000000111111111111111) (= (mask!27139 thiss!1141) #b00000000000000001111111111111111) (= (mask!27139 thiss!1141) #b00000000000000011111111111111111) (= (mask!27139 thiss!1141) #b00000000000000111111111111111111) (= (mask!27139 thiss!1141) #b00000000000001111111111111111111) (= (mask!27139 thiss!1141) #b00000000000011111111111111111111) (= (mask!27139 thiss!1141) #b00000000000111111111111111111111) (= (mask!27139 thiss!1141) #b00000000001111111111111111111111) (= (mask!27139 thiss!1141) #b00000000011111111111111111111111) (= (mask!27139 thiss!1141) #b00000000111111111111111111111111) (= (mask!27139 thiss!1141) #b00000001111111111111111111111111) (= (mask!27139 thiss!1141) #b00000011111111111111111111111111) (= (mask!27139 thiss!1141) #b00000111111111111111111111111111) (= (mask!27139 thiss!1141) #b00001111111111111111111111111111) (= (mask!27139 thiss!1141) #b00011111111111111111111111111111) (= (mask!27139 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27139 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941007 d!113953))

(declare-fun d!113955 () Bool)

(assert (=> d!113955 (= (array_inv!21190 (_keys!10435 thiss!1141)) (bvsge (size!27788 (_keys!10435 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941004 d!113955))

(declare-fun d!113957 () Bool)

(assert (=> d!113957 (= (array_inv!21191 (_values!5612 thiss!1141)) (bvsge (size!27787 (_values!5612 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941004 d!113957))

(declare-fun b!941044 () Bool)

(declare-fun e!529061 () SeekEntryResult!9009)

(declare-fun lt!424875 () SeekEntryResult!9009)

(assert (=> b!941044 (= e!529061 (MissingZero!9009 (index!38408 lt!424875)))))

(declare-fun b!941045 () Bool)

(declare-fun e!529062 () SeekEntryResult!9009)

(assert (=> b!941045 (= e!529062 (Found!9009 (index!38408 lt!424875)))))

(declare-fun b!941046 () Bool)

(declare-fun e!529060 () SeekEntryResult!9009)

(assert (=> b!941046 (= e!529060 Undefined!9009)))

(declare-fun b!941047 () Bool)

(declare-fun c!97951 () Bool)

(declare-fun lt!424878 () (_ BitVec 64))

(assert (=> b!941047 (= c!97951 (= lt!424878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941047 (= e!529062 e!529061)))

(declare-fun d!113959 () Bool)

(declare-fun lt!424877 () SeekEntryResult!9009)

(assert (=> d!113959 (and (or ((_ is MissingVacant!9009) lt!424877) (not ((_ is Found!9009) lt!424877)) (and (bvsge (index!38407 lt!424877) #b00000000000000000000000000000000) (bvslt (index!38407 lt!424877) (size!27788 (_keys!10435 thiss!1141))))) (not ((_ is MissingVacant!9009) lt!424877)) (or (not ((_ is Found!9009) lt!424877)) (= (select (arr!27326 (_keys!10435 thiss!1141)) (index!38407 lt!424877)) key!756)))))

(assert (=> d!113959 (= lt!424877 e!529060)))

(declare-fun c!97953 () Bool)

(assert (=> d!113959 (= c!97953 (and ((_ is Intermediate!9009) lt!424875) (undefined!9821 lt!424875)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56790 (_ BitVec 32)) SeekEntryResult!9009)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!113959 (= lt!424875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27139 thiss!1141)) key!756 (_keys!10435 thiss!1141) (mask!27139 thiss!1141)))))

(assert (=> d!113959 (validMask!0 (mask!27139 thiss!1141))))

(assert (=> d!113959 (= (seekEntry!0 key!756 (_keys!10435 thiss!1141) (mask!27139 thiss!1141)) lt!424877)))

(declare-fun b!941048 () Bool)

(declare-fun lt!424876 () SeekEntryResult!9009)

(assert (=> b!941048 (= e!529061 (ite ((_ is MissingVacant!9009) lt!424876) (MissingZero!9009 (index!38409 lt!424876)) lt!424876))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56790 (_ BitVec 32)) SeekEntryResult!9009)

(assert (=> b!941048 (= lt!424876 (seekKeyOrZeroReturnVacant!0 (x!80727 lt!424875) (index!38408 lt!424875) (index!38408 lt!424875) key!756 (_keys!10435 thiss!1141) (mask!27139 thiss!1141)))))

(declare-fun b!941049 () Bool)

(assert (=> b!941049 (= e!529060 e!529062)))

(assert (=> b!941049 (= lt!424878 (select (arr!27326 (_keys!10435 thiss!1141)) (index!38408 lt!424875)))))

(declare-fun c!97952 () Bool)

(assert (=> b!941049 (= c!97952 (= lt!424878 key!756))))

(assert (= (and d!113959 c!97953) b!941046))

(assert (= (and d!113959 (not c!97953)) b!941049))

(assert (= (and b!941049 c!97952) b!941045))

(assert (= (and b!941049 (not c!97952)) b!941047))

(assert (= (and b!941047 c!97951) b!941044))

(assert (= (and b!941047 (not c!97951)) b!941048))

(declare-fun m!876371 () Bool)

(assert (=> d!113959 m!876371))

(declare-fun m!876373 () Bool)

(assert (=> d!113959 m!876373))

(assert (=> d!113959 m!876373))

(declare-fun m!876375 () Bool)

(assert (=> d!113959 m!876375))

(assert (=> d!113959 m!876357))

(declare-fun m!876377 () Bool)

(assert (=> b!941048 m!876377))

(declare-fun m!876379 () Bool)

(assert (=> b!941049 m!876379))

(assert (=> b!941009 d!113959))

(declare-fun d!113961 () Bool)

(declare-fun res!632793 () Bool)

(declare-fun e!529065 () Bool)

(assert (=> d!113961 (=> (not res!632793) (not e!529065))))

(declare-fun simpleValid!338 (LongMapFixedSize!4596) Bool)

(assert (=> d!113961 (= res!632793 (simpleValid!338 thiss!1141))))

(assert (=> d!113961 (= (valid!1743 thiss!1141) e!529065)))

(declare-fun b!941056 () Bool)

(declare-fun res!632794 () Bool)

(assert (=> b!941056 (=> (not res!632794) (not e!529065))))

(declare-fun arrayCountValidKeys!0 (array!56790 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941056 (= res!632794 (= (arrayCountValidKeys!0 (_keys!10435 thiss!1141) #b00000000000000000000000000000000 (size!27788 (_keys!10435 thiss!1141))) (_size!2353 thiss!1141)))))

(declare-fun b!941057 () Bool)

(declare-fun res!632795 () Bool)

(assert (=> b!941057 (=> (not res!632795) (not e!529065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56790 (_ BitVec 32)) Bool)

(assert (=> b!941057 (= res!632795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10435 thiss!1141) (mask!27139 thiss!1141)))))

(declare-fun b!941058 () Bool)

(declare-datatypes ((List!19339 0))(
  ( (Nil!19336) (Cons!19335 (h!20481 (_ BitVec 64)) (t!27662 List!19339)) )
))
(declare-fun arrayNoDuplicates!0 (array!56790 (_ BitVec 32) List!19339) Bool)

(assert (=> b!941058 (= e!529065 (arrayNoDuplicates!0 (_keys!10435 thiss!1141) #b00000000000000000000000000000000 Nil!19336))))

(assert (= (and d!113961 res!632793) b!941056))

(assert (= (and b!941056 res!632794) b!941057))

(assert (= (and b!941057 res!632795) b!941058))

(declare-fun m!876381 () Bool)

(assert (=> d!113961 m!876381))

(declare-fun m!876383 () Bool)

(assert (=> b!941056 m!876383))

(declare-fun m!876385 () Bool)

(assert (=> b!941057 m!876385))

(declare-fun m!876387 () Bool)

(assert (=> b!941058 m!876387))

(assert (=> start!80074 d!113961))

(declare-fun b!941066 () Bool)

(declare-fun e!529070 () Bool)

(assert (=> b!941066 (= e!529070 tp_is_empty!20409)))

(declare-fun mapNonEmpty!32410 () Bool)

(declare-fun mapRes!32410 () Bool)

(declare-fun tp!62188 () Bool)

(declare-fun e!529071 () Bool)

(assert (=> mapNonEmpty!32410 (= mapRes!32410 (and tp!62188 e!529071))))

(declare-fun mapValue!32410 () ValueCell!9723)

(declare-fun mapRest!32410 () (Array (_ BitVec 32) ValueCell!9723))

(declare-fun mapKey!32410 () (_ BitVec 32))

(assert (=> mapNonEmpty!32410 (= mapRest!32404 (store mapRest!32410 mapKey!32410 mapValue!32410))))

(declare-fun condMapEmpty!32410 () Bool)

(declare-fun mapDefault!32410 () ValueCell!9723)

(assert (=> mapNonEmpty!32404 (= condMapEmpty!32410 (= mapRest!32404 ((as const (Array (_ BitVec 32) ValueCell!9723)) mapDefault!32410)))))

(assert (=> mapNonEmpty!32404 (= tp!62179 (and e!529070 mapRes!32410))))

(declare-fun mapIsEmpty!32410 () Bool)

(assert (=> mapIsEmpty!32410 mapRes!32410))

(declare-fun b!941065 () Bool)

(assert (=> b!941065 (= e!529071 tp_is_empty!20409)))

(assert (= (and mapNonEmpty!32404 condMapEmpty!32410) mapIsEmpty!32410))

(assert (= (and mapNonEmpty!32404 (not condMapEmpty!32410)) mapNonEmpty!32410))

(assert (= (and mapNonEmpty!32410 ((_ is ValueCellFull!9723) mapValue!32410)) b!941065))

(assert (= (and mapNonEmpty!32404 ((_ is ValueCellFull!9723) mapDefault!32410)) b!941066))

(declare-fun m!876389 () Bool)

(assert (=> mapNonEmpty!32410 m!876389))

(check-sat (not b!941056) (not b!941048) (not b!941058) (not b_next!17901) b_and!29331 (not b!941057) (not d!113961) tp_is_empty!20409 (not mapNonEmpty!32410) (not d!113959))
(check-sat b_and!29331 (not b_next!17901))
