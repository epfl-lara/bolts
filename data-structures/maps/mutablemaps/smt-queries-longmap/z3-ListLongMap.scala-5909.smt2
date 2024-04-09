; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76500 () Bool)

(assert start!76500)

(declare-fun b!896396 () Bool)

(declare-fun b_free!15957 () Bool)

(declare-fun b_next!15957 () Bool)

(assert (=> b!896396 (= b_free!15957 (not b_next!15957))))

(declare-fun tp!55907 () Bool)

(declare-fun b_and!26267 () Bool)

(assert (=> b!896396 (= tp!55907 b_and!26267)))

(declare-datatypes ((array!52574 0))(
  ( (array!52575 (arr!25270 (Array (_ BitVec 32) (_ BitVec 64))) (size!25722 (_ BitVec 32))) )
))
(declare-datatypes ((V!29345 0))(
  ( (V!29346 (val!9193 Int)) )
))
(declare-datatypes ((ValueCell!8661 0))(
  ( (ValueCellFull!8661 (v!11680 V!29345)) (EmptyCell!8661) )
))
(declare-datatypes ((array!52576 0))(
  ( (array!52577 (arr!25271 (Array (_ BitVec 32) ValueCell!8661)) (size!25723 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4338 0))(
  ( (LongMapFixedSize!4339 (defaultEntry!5381 Int) (mask!26020 (_ BitVec 32)) (extraKeys!5083 (_ BitVec 32)) (zeroValue!5187 V!29345) (minValue!5187 V!29345) (_size!2224 (_ BitVec 32)) (_keys!10112 array!52574) (_values!5374 array!52576) (_vacant!2224 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4338)

(declare-fun tp_is_empty!18285 () Bool)

(declare-fun e!501107 () Bool)

(declare-fun e!501113 () Bool)

(declare-fun array_inv!19808 (array!52574) Bool)

(declare-fun array_inv!19809 (array!52576) Bool)

(assert (=> b!896396 (= e!501107 (and tp!55907 tp_is_empty!18285 (array_inv!19808 (_keys!10112 thiss!1181)) (array_inv!19809 (_values!5374 thiss!1181)) e!501113))))

(declare-fun b!896397 () Bool)

(declare-fun res!606216 () Bool)

(declare-fun e!501109 () Bool)

(assert (=> b!896397 (=> (not res!606216) (not e!501109))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!896397 (= res!606216 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!29048 () Bool)

(declare-fun mapRes!29048 () Bool)

(assert (=> mapIsEmpty!29048 mapRes!29048))

(declare-fun b!896398 () Bool)

(declare-fun e!501106 () Bool)

(declare-fun e!501112 () Bool)

(assert (=> b!896398 (= e!501106 e!501112)))

(declare-fun res!606213 () Bool)

(assert (=> b!896398 (=> res!606213 e!501112)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896398 (= res!606213 (not (validMask!0 (mask!26020 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896398 (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8888 0))(
  ( (MissingZero!8888 (index!37922 (_ BitVec 32))) (Found!8888 (index!37923 (_ BitVec 32))) (Intermediate!8888 (undefined!9700 Bool) (index!37924 (_ BitVec 32)) (x!76330 (_ BitVec 32))) (Undefined!8888) (MissingVacant!8888 (index!37925 (_ BitVec 32))) )
))
(declare-fun lt!404807 () SeekEntryResult!8888)

(declare-datatypes ((Unit!30457 0))(
  ( (Unit!30458) )
))
(declare-fun lt!404808 () Unit!30457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52574 (_ BitVec 64) (_ BitVec 32)) Unit!30457)

(assert (=> b!896398 (= lt!404808 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10112 thiss!1181) key!785 (index!37923 lt!404807)))))

(declare-fun b!896399 () Bool)

(declare-fun e!501114 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896399 (= e!501114 (inRange!0 (index!37923 lt!404807) (mask!26020 thiss!1181)))))

(declare-fun b!896400 () Bool)

(assert (=> b!896400 (= e!501109 (not e!501106))))

(declare-fun res!606214 () Bool)

(assert (=> b!896400 (=> res!606214 e!501106)))

(get-info :version)

(assert (=> b!896400 (= res!606214 (not ((_ is Found!8888) lt!404807)))))

(assert (=> b!896400 e!501114))

(declare-fun res!606215 () Bool)

(assert (=> b!896400 (=> res!606215 e!501114)))

(assert (=> b!896400 (= res!606215 (not ((_ is Found!8888) lt!404807)))))

(declare-fun lt!404806 () Unit!30457)

(declare-fun lemmaSeekEntryGivesInRangeIndex!78 (array!52574 array!52576 (_ BitVec 32) (_ BitVec 32) V!29345 V!29345 (_ BitVec 64)) Unit!30457)

(assert (=> b!896400 (= lt!404806 (lemmaSeekEntryGivesInRangeIndex!78 (_keys!10112 thiss!1181) (_values!5374 thiss!1181) (mask!26020 thiss!1181) (extraKeys!5083 thiss!1181) (zeroValue!5187 thiss!1181) (minValue!5187 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52574 (_ BitVec 32)) SeekEntryResult!8888)

(assert (=> b!896400 (= lt!404807 (seekEntry!0 key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun b!896401 () Bool)

(assert (=> b!896401 (= e!501112 (= (size!25723 (_values!5374 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26020 thiss!1181))))))

(declare-fun b!896402 () Bool)

(declare-fun e!501111 () Bool)

(assert (=> b!896402 (= e!501113 (and e!501111 mapRes!29048))))

(declare-fun condMapEmpty!29048 () Bool)

(declare-fun mapDefault!29048 () ValueCell!8661)

(assert (=> b!896402 (= condMapEmpty!29048 (= (arr!25271 (_values!5374 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8661)) mapDefault!29048)))))

(declare-fun b!896403 () Bool)

(assert (=> b!896403 (= e!501111 tp_is_empty!18285)))

(declare-fun b!896404 () Bool)

(declare-fun e!501110 () Bool)

(assert (=> b!896404 (= e!501110 tp_is_empty!18285)))

(declare-fun mapNonEmpty!29048 () Bool)

(declare-fun tp!55906 () Bool)

(assert (=> mapNonEmpty!29048 (= mapRes!29048 (and tp!55906 e!501110))))

(declare-fun mapKey!29048 () (_ BitVec 32))

(declare-fun mapValue!29048 () ValueCell!8661)

(declare-fun mapRest!29048 () (Array (_ BitVec 32) ValueCell!8661))

(assert (=> mapNonEmpty!29048 (= (arr!25271 (_values!5374 thiss!1181)) (store mapRest!29048 mapKey!29048 mapValue!29048))))

(declare-fun res!606217 () Bool)

(assert (=> start!76500 (=> (not res!606217) (not e!501109))))

(declare-fun valid!1660 (LongMapFixedSize!4338) Bool)

(assert (=> start!76500 (= res!606217 (valid!1660 thiss!1181))))

(assert (=> start!76500 e!501109))

(assert (=> start!76500 e!501107))

(assert (=> start!76500 true))

(assert (= (and start!76500 res!606217) b!896397))

(assert (= (and b!896397 res!606216) b!896400))

(assert (= (and b!896400 (not res!606215)) b!896399))

(assert (= (and b!896400 (not res!606214)) b!896398))

(assert (= (and b!896398 (not res!606213)) b!896401))

(assert (= (and b!896402 condMapEmpty!29048) mapIsEmpty!29048))

(assert (= (and b!896402 (not condMapEmpty!29048)) mapNonEmpty!29048))

(assert (= (and mapNonEmpty!29048 ((_ is ValueCellFull!8661) mapValue!29048)) b!896404))

(assert (= (and b!896402 ((_ is ValueCellFull!8661) mapDefault!29048)) b!896403))

(assert (= b!896396 b!896402))

(assert (= start!76500 b!896396))

(declare-fun m!833655 () Bool)

(assert (=> b!896396 m!833655))

(declare-fun m!833657 () Bool)

(assert (=> b!896396 m!833657))

(declare-fun m!833659 () Bool)

(assert (=> start!76500 m!833659))

(declare-fun m!833661 () Bool)

(assert (=> b!896398 m!833661))

(declare-fun m!833663 () Bool)

(assert (=> b!896398 m!833663))

(declare-fun m!833665 () Bool)

(assert (=> b!896398 m!833665))

(declare-fun m!833667 () Bool)

(assert (=> b!896399 m!833667))

(declare-fun m!833669 () Bool)

(assert (=> mapNonEmpty!29048 m!833669))

(declare-fun m!833671 () Bool)

(assert (=> b!896400 m!833671))

(declare-fun m!833673 () Bool)

(assert (=> b!896400 m!833673))

(check-sat (not b!896400) (not b!896399) tp_is_empty!18285 (not b!896396) b_and!26267 (not b_next!15957) (not mapNonEmpty!29048) (not start!76500) (not b!896398))
(check-sat b_and!26267 (not b_next!15957))
(get-model)

(declare-fun d!110851 () Bool)

(assert (=> d!110851 (= (array_inv!19808 (_keys!10112 thiss!1181)) (bvsge (size!25722 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896396 d!110851))

(declare-fun d!110853 () Bool)

(assert (=> d!110853 (= (array_inv!19809 (_values!5374 thiss!1181)) (bvsge (size!25723 (_values!5374 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896396 d!110853))

(declare-fun d!110855 () Bool)

(declare-fun e!501144 () Bool)

(assert (=> d!110855 e!501144))

(declare-fun res!606235 () Bool)

(assert (=> d!110855 (=> res!606235 e!501144)))

(declare-fun lt!404823 () SeekEntryResult!8888)

(assert (=> d!110855 (= res!606235 (not ((_ is Found!8888) lt!404823)))))

(assert (=> d!110855 (= lt!404823 (seekEntry!0 key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun lt!404822 () Unit!30457)

(declare-fun choose!1487 (array!52574 array!52576 (_ BitVec 32) (_ BitVec 32) V!29345 V!29345 (_ BitVec 64)) Unit!30457)

(assert (=> d!110855 (= lt!404822 (choose!1487 (_keys!10112 thiss!1181) (_values!5374 thiss!1181) (mask!26020 thiss!1181) (extraKeys!5083 thiss!1181) (zeroValue!5187 thiss!1181) (minValue!5187 thiss!1181) key!785))))

(assert (=> d!110855 (validMask!0 (mask!26020 thiss!1181))))

(assert (=> d!110855 (= (lemmaSeekEntryGivesInRangeIndex!78 (_keys!10112 thiss!1181) (_values!5374 thiss!1181) (mask!26020 thiss!1181) (extraKeys!5083 thiss!1181) (zeroValue!5187 thiss!1181) (minValue!5187 thiss!1181) key!785) lt!404822)))

(declare-fun b!896434 () Bool)

(assert (=> b!896434 (= e!501144 (inRange!0 (index!37923 lt!404823) (mask!26020 thiss!1181)))))

(assert (= (and d!110855 (not res!606235)) b!896434))

(assert (=> d!110855 m!833673))

(declare-fun m!833695 () Bool)

(assert (=> d!110855 m!833695))

(assert (=> d!110855 m!833661))

(declare-fun m!833697 () Bool)

(assert (=> b!896434 m!833697))

(assert (=> b!896400 d!110855))

(declare-fun d!110857 () Bool)

(declare-fun lt!404832 () SeekEntryResult!8888)

(assert (=> d!110857 (and (or ((_ is MissingVacant!8888) lt!404832) (not ((_ is Found!8888) lt!404832)) (and (bvsge (index!37923 lt!404832) #b00000000000000000000000000000000) (bvslt (index!37923 lt!404832) (size!25722 (_keys!10112 thiss!1181))))) (not ((_ is MissingVacant!8888) lt!404832)) (or (not ((_ is Found!8888) lt!404832)) (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37923 lt!404832)) key!785)))))

(declare-fun e!501152 () SeekEntryResult!8888)

(assert (=> d!110857 (= lt!404832 e!501152)))

(declare-fun c!94617 () Bool)

(declare-fun lt!404833 () SeekEntryResult!8888)

(assert (=> d!110857 (= c!94617 (and ((_ is Intermediate!8888) lt!404833) (undefined!9700 lt!404833)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52574 (_ BitVec 32)) SeekEntryResult!8888)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110857 (= lt!404833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26020 thiss!1181)) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(assert (=> d!110857 (validMask!0 (mask!26020 thiss!1181))))

(assert (=> d!110857 (= (seekEntry!0 key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)) lt!404832)))

(declare-fun b!896447 () Bool)

(assert (=> b!896447 (= e!501152 Undefined!8888)))

(declare-fun b!896448 () Bool)

(declare-fun e!501153 () SeekEntryResult!8888)

(assert (=> b!896448 (= e!501153 (MissingZero!8888 (index!37924 lt!404833)))))

(declare-fun b!896449 () Bool)

(declare-fun e!501151 () SeekEntryResult!8888)

(assert (=> b!896449 (= e!501151 (Found!8888 (index!37924 lt!404833)))))

(declare-fun b!896450 () Bool)

(declare-fun c!94616 () Bool)

(declare-fun lt!404835 () (_ BitVec 64))

(assert (=> b!896450 (= c!94616 (= lt!404835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896450 (= e!501151 e!501153)))

(declare-fun b!896451 () Bool)

(declare-fun lt!404834 () SeekEntryResult!8888)

(assert (=> b!896451 (= e!501153 (ite ((_ is MissingVacant!8888) lt!404834) (MissingZero!8888 (index!37925 lt!404834)) lt!404834))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52574 (_ BitVec 32)) SeekEntryResult!8888)

(assert (=> b!896451 (= lt!404834 (seekKeyOrZeroReturnVacant!0 (x!76330 lt!404833) (index!37924 lt!404833) (index!37924 lt!404833) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun b!896452 () Bool)

(assert (=> b!896452 (= e!501152 e!501151)))

(assert (=> b!896452 (= lt!404835 (select (arr!25270 (_keys!10112 thiss!1181)) (index!37924 lt!404833)))))

(declare-fun c!94618 () Bool)

(assert (=> b!896452 (= c!94618 (= lt!404835 key!785))))

(assert (= (and d!110857 c!94617) b!896447))

(assert (= (and d!110857 (not c!94617)) b!896452))

(assert (= (and b!896452 c!94618) b!896449))

(assert (= (and b!896452 (not c!94618)) b!896450))

(assert (= (and b!896450 c!94616) b!896448))

(assert (= (and b!896450 (not c!94616)) b!896451))

(declare-fun m!833699 () Bool)

(assert (=> d!110857 m!833699))

(declare-fun m!833701 () Bool)

(assert (=> d!110857 m!833701))

(assert (=> d!110857 m!833701))

(declare-fun m!833703 () Bool)

(assert (=> d!110857 m!833703))

(assert (=> d!110857 m!833661))

(declare-fun m!833705 () Bool)

(assert (=> b!896451 m!833705))

(declare-fun m!833707 () Bool)

(assert (=> b!896452 m!833707))

(assert (=> b!896400 d!110857))

(declare-fun d!110859 () Bool)

(assert (=> d!110859 (= (validMask!0 (mask!26020 thiss!1181)) (and (or (= (mask!26020 thiss!1181) #b00000000000000000000000000000111) (= (mask!26020 thiss!1181) #b00000000000000000000000000001111) (= (mask!26020 thiss!1181) #b00000000000000000000000000011111) (= (mask!26020 thiss!1181) #b00000000000000000000000000111111) (= (mask!26020 thiss!1181) #b00000000000000000000000001111111) (= (mask!26020 thiss!1181) #b00000000000000000000000011111111) (= (mask!26020 thiss!1181) #b00000000000000000000000111111111) (= (mask!26020 thiss!1181) #b00000000000000000000001111111111) (= (mask!26020 thiss!1181) #b00000000000000000000011111111111) (= (mask!26020 thiss!1181) #b00000000000000000000111111111111) (= (mask!26020 thiss!1181) #b00000000000000000001111111111111) (= (mask!26020 thiss!1181) #b00000000000000000011111111111111) (= (mask!26020 thiss!1181) #b00000000000000000111111111111111) (= (mask!26020 thiss!1181) #b00000000000000001111111111111111) (= (mask!26020 thiss!1181) #b00000000000000011111111111111111) (= (mask!26020 thiss!1181) #b00000000000000111111111111111111) (= (mask!26020 thiss!1181) #b00000000000001111111111111111111) (= (mask!26020 thiss!1181) #b00000000000011111111111111111111) (= (mask!26020 thiss!1181) #b00000000000111111111111111111111) (= (mask!26020 thiss!1181) #b00000000001111111111111111111111) (= (mask!26020 thiss!1181) #b00000000011111111111111111111111) (= (mask!26020 thiss!1181) #b00000000111111111111111111111111) (= (mask!26020 thiss!1181) #b00000001111111111111111111111111) (= (mask!26020 thiss!1181) #b00000011111111111111111111111111) (= (mask!26020 thiss!1181) #b00000111111111111111111111111111) (= (mask!26020 thiss!1181) #b00001111111111111111111111111111) (= (mask!26020 thiss!1181) #b00011111111111111111111111111111) (= (mask!26020 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26020 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!896398 d!110859))

(declare-fun d!110861 () Bool)

(declare-fun res!606240 () Bool)

(declare-fun e!501158 () Bool)

(assert (=> d!110861 (=> res!606240 e!501158)))

(assert (=> d!110861 (= res!606240 (= (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110861 (= (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 #b00000000000000000000000000000000) e!501158)))

(declare-fun b!896457 () Bool)

(declare-fun e!501159 () Bool)

(assert (=> b!896457 (= e!501158 e!501159)))

(declare-fun res!606241 () Bool)

(assert (=> b!896457 (=> (not res!606241) (not e!501159))))

(assert (=> b!896457 (= res!606241 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25722 (_keys!10112 thiss!1181))))))

(declare-fun b!896458 () Bool)

(assert (=> b!896458 (= e!501159 (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110861 (not res!606240)) b!896457))

(assert (= (and b!896457 res!606241) b!896458))

(declare-fun m!833709 () Bool)

(assert (=> d!110861 m!833709))

(declare-fun m!833711 () Bool)

(assert (=> b!896458 m!833711))

(assert (=> b!896398 d!110861))

(declare-fun d!110863 () Bool)

(assert (=> d!110863 (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!404838 () Unit!30457)

(declare-fun choose!13 (array!52574 (_ BitVec 64) (_ BitVec 32)) Unit!30457)

(assert (=> d!110863 (= lt!404838 (choose!13 (_keys!10112 thiss!1181) key!785 (index!37923 lt!404807)))))

(assert (=> d!110863 (bvsge (index!37923 lt!404807) #b00000000000000000000000000000000)))

(assert (=> d!110863 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10112 thiss!1181) key!785 (index!37923 lt!404807)) lt!404838)))

(declare-fun bs!25162 () Bool)

(assert (= bs!25162 d!110863))

(assert (=> bs!25162 m!833663))

(declare-fun m!833713 () Bool)

(assert (=> bs!25162 m!833713))

(assert (=> b!896398 d!110863))

(declare-fun d!110865 () Bool)

(assert (=> d!110865 (= (inRange!0 (index!37923 lt!404807) (mask!26020 thiss!1181)) (and (bvsge (index!37923 lt!404807) #b00000000000000000000000000000000) (bvslt (index!37923 lt!404807) (bvadd (mask!26020 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896399 d!110865))

(declare-fun d!110867 () Bool)

(declare-fun res!606248 () Bool)

(declare-fun e!501162 () Bool)

(assert (=> d!110867 (=> (not res!606248) (not e!501162))))

(declare-fun simpleValid!313 (LongMapFixedSize!4338) Bool)

(assert (=> d!110867 (= res!606248 (simpleValid!313 thiss!1181))))

(assert (=> d!110867 (= (valid!1660 thiss!1181) e!501162)))

(declare-fun b!896465 () Bool)

(declare-fun res!606249 () Bool)

(assert (=> b!896465 (=> (not res!606249) (not e!501162))))

(declare-fun arrayCountValidKeys!0 (array!52574 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896465 (= res!606249 (= (arrayCountValidKeys!0 (_keys!10112 thiss!1181) #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))) (_size!2224 thiss!1181)))))

(declare-fun b!896466 () Bool)

(declare-fun res!606250 () Bool)

(assert (=> b!896466 (=> (not res!606250) (not e!501162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52574 (_ BitVec 32)) Bool)

(assert (=> b!896466 (= res!606250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun b!896467 () Bool)

(declare-datatypes ((List!17901 0))(
  ( (Nil!17898) (Cons!17897 (h!19035 (_ BitVec 64)) (t!25248 List!17901)) )
))
(declare-fun arrayNoDuplicates!0 (array!52574 (_ BitVec 32) List!17901) Bool)

(assert (=> b!896467 (= e!501162 (arrayNoDuplicates!0 (_keys!10112 thiss!1181) #b00000000000000000000000000000000 Nil!17898))))

(assert (= (and d!110867 res!606248) b!896465))

(assert (= (and b!896465 res!606249) b!896466))

(assert (= (and b!896466 res!606250) b!896467))

(declare-fun m!833715 () Bool)

(assert (=> d!110867 m!833715))

(declare-fun m!833717 () Bool)

(assert (=> b!896465 m!833717))

(declare-fun m!833719 () Bool)

(assert (=> b!896466 m!833719))

(declare-fun m!833721 () Bool)

(assert (=> b!896467 m!833721))

(assert (=> start!76500 d!110867))

(declare-fun mapNonEmpty!29054 () Bool)

(declare-fun mapRes!29054 () Bool)

(declare-fun tp!55916 () Bool)

(declare-fun e!501168 () Bool)

(assert (=> mapNonEmpty!29054 (= mapRes!29054 (and tp!55916 e!501168))))

(declare-fun mapRest!29054 () (Array (_ BitVec 32) ValueCell!8661))

(declare-fun mapValue!29054 () ValueCell!8661)

(declare-fun mapKey!29054 () (_ BitVec 32))

(assert (=> mapNonEmpty!29054 (= mapRest!29048 (store mapRest!29054 mapKey!29054 mapValue!29054))))

(declare-fun b!896475 () Bool)

(declare-fun e!501167 () Bool)

(assert (=> b!896475 (= e!501167 tp_is_empty!18285)))

(declare-fun b!896474 () Bool)

(assert (=> b!896474 (= e!501168 tp_is_empty!18285)))

(declare-fun condMapEmpty!29054 () Bool)

(declare-fun mapDefault!29054 () ValueCell!8661)

(assert (=> mapNonEmpty!29048 (= condMapEmpty!29054 (= mapRest!29048 ((as const (Array (_ BitVec 32) ValueCell!8661)) mapDefault!29054)))))

(assert (=> mapNonEmpty!29048 (= tp!55906 (and e!501167 mapRes!29054))))

(declare-fun mapIsEmpty!29054 () Bool)

(assert (=> mapIsEmpty!29054 mapRes!29054))

(assert (= (and mapNonEmpty!29048 condMapEmpty!29054) mapIsEmpty!29054))

(assert (= (and mapNonEmpty!29048 (not condMapEmpty!29054)) mapNonEmpty!29054))

(assert (= (and mapNonEmpty!29054 ((_ is ValueCellFull!8661) mapValue!29054)) b!896474))

(assert (= (and mapNonEmpty!29048 ((_ is ValueCellFull!8661) mapDefault!29054)) b!896475))

(declare-fun m!833723 () Bool)

(assert (=> mapNonEmpty!29054 m!833723))

(check-sat (not b!896451) (not b!896466) (not b!896467) (not d!110857) (not b!896434) (not d!110863) tp_is_empty!18285 (not b!896458) (not mapNonEmpty!29054) (not d!110867) b_and!26267 (not b!896465) (not d!110855) (not b_next!15957))
(check-sat b_and!26267 (not b_next!15957))
(get-model)

(assert (=> d!110855 d!110857))

(declare-fun d!110869 () Bool)

(declare-fun e!501171 () Bool)

(assert (=> d!110869 e!501171))

(declare-fun res!606253 () Bool)

(assert (=> d!110869 (=> res!606253 e!501171)))

(declare-fun lt!404841 () SeekEntryResult!8888)

(assert (=> d!110869 (= res!606253 (not ((_ is Found!8888) lt!404841)))))

(assert (=> d!110869 (= lt!404841 (seekEntry!0 key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(assert (=> d!110869 true))

(declare-fun _$36!354 () Unit!30457)

(assert (=> d!110869 (= (choose!1487 (_keys!10112 thiss!1181) (_values!5374 thiss!1181) (mask!26020 thiss!1181) (extraKeys!5083 thiss!1181) (zeroValue!5187 thiss!1181) (minValue!5187 thiss!1181) key!785) _$36!354)))

(declare-fun b!896478 () Bool)

(assert (=> b!896478 (= e!501171 (inRange!0 (index!37923 lt!404841) (mask!26020 thiss!1181)))))

(assert (= (and d!110869 (not res!606253)) b!896478))

(assert (=> d!110869 m!833673))

(declare-fun m!833725 () Bool)

(assert (=> b!896478 m!833725))

(assert (=> d!110855 d!110869))

(assert (=> d!110855 d!110859))

(declare-fun b!896489 () Bool)

(declare-fun res!606262 () Bool)

(declare-fun e!501174 () Bool)

(assert (=> b!896489 (=> (not res!606262) (not e!501174))))

(declare-fun size!25726 (LongMapFixedSize!4338) (_ BitVec 32))

(assert (=> b!896489 (= res!606262 (= (size!25726 thiss!1181) (bvadd (_size!2224 thiss!1181) (bvsdiv (bvadd (extraKeys!5083 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!896488 () Bool)

(declare-fun res!606264 () Bool)

(assert (=> b!896488 (=> (not res!606264) (not e!501174))))

(assert (=> b!896488 (= res!606264 (bvsge (size!25726 thiss!1181) (_size!2224 thiss!1181)))))

(declare-fun d!110871 () Bool)

(declare-fun res!606265 () Bool)

(assert (=> d!110871 (=> (not res!606265) (not e!501174))))

(assert (=> d!110871 (= res!606265 (validMask!0 (mask!26020 thiss!1181)))))

(assert (=> d!110871 (= (simpleValid!313 thiss!1181) e!501174)))

(declare-fun b!896487 () Bool)

(declare-fun res!606263 () Bool)

(assert (=> b!896487 (=> (not res!606263) (not e!501174))))

(assert (=> b!896487 (= res!606263 (and (= (size!25723 (_values!5374 thiss!1181)) (bvadd (mask!26020 thiss!1181) #b00000000000000000000000000000001)) (= (size!25722 (_keys!10112 thiss!1181)) (size!25723 (_values!5374 thiss!1181))) (bvsge (_size!2224 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2224 thiss!1181) (bvadd (mask!26020 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!896490 () Bool)

(assert (=> b!896490 (= e!501174 (and (bvsge (extraKeys!5083 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5083 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2224 thiss!1181) #b00000000000000000000000000000000)))))

(assert (= (and d!110871 res!606265) b!896487))

(assert (= (and b!896487 res!606263) b!896488))

(assert (= (and b!896488 res!606264) b!896489))

(assert (= (and b!896489 res!606262) b!896490))

(declare-fun m!833727 () Bool)

(assert (=> b!896489 m!833727))

(assert (=> b!896488 m!833727))

(assert (=> d!110871 m!833661))

(assert (=> d!110867 d!110871))

(declare-fun b!896499 () Bool)

(declare-fun e!501179 () (_ BitVec 32))

(declare-fun call!39781 () (_ BitVec 32))

(assert (=> b!896499 (= e!501179 call!39781)))

(declare-fun bm!39778 () Bool)

(assert (=> bm!39778 (= call!39781 (arrayCountValidKeys!0 (_keys!10112 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25722 (_keys!10112 thiss!1181))))))

(declare-fun b!896500 () Bool)

(declare-fun e!501180 () (_ BitVec 32))

(assert (=> b!896500 (= e!501180 #b00000000000000000000000000000000)))

(declare-fun b!896501 () Bool)

(assert (=> b!896501 (= e!501180 e!501179)))

(declare-fun c!94623 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!896501 (= c!94623 (validKeyInArray!0 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110873 () Bool)

(declare-fun lt!404844 () (_ BitVec 32))

(assert (=> d!110873 (and (bvsge lt!404844 #b00000000000000000000000000000000) (bvsle lt!404844 (bvsub (size!25722 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110873 (= lt!404844 e!501180)))

(declare-fun c!94624 () Bool)

(assert (=> d!110873 (= c!94624 (bvsge #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))))))

(assert (=> d!110873 (and (bvsle #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25722 (_keys!10112 thiss!1181)) (size!25722 (_keys!10112 thiss!1181))))))

(assert (=> d!110873 (= (arrayCountValidKeys!0 (_keys!10112 thiss!1181) #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))) lt!404844)))

(declare-fun b!896502 () Bool)

(assert (=> b!896502 (= e!501179 (bvadd #b00000000000000000000000000000001 call!39781))))

(assert (= (and d!110873 c!94624) b!896500))

(assert (= (and d!110873 (not c!94624)) b!896501))

(assert (= (and b!896501 c!94623) b!896502))

(assert (= (and b!896501 (not c!94623)) b!896499))

(assert (= (or b!896502 b!896499) bm!39778))

(declare-fun m!833729 () Bool)

(assert (=> bm!39778 m!833729))

(assert (=> b!896501 m!833709))

(assert (=> b!896501 m!833709))

(declare-fun m!833731 () Bool)

(assert (=> b!896501 m!833731))

(assert (=> b!896465 d!110873))

(declare-fun d!110875 () Bool)

(assert (=> d!110875 (= (inRange!0 (index!37923 lt!404823) (mask!26020 thiss!1181)) (and (bvsge (index!37923 lt!404823) #b00000000000000000000000000000000) (bvslt (index!37923 lt!404823) (bvadd (mask!26020 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896434 d!110875))

(declare-fun b!896514 () Bool)

(declare-fun e!501190 () Bool)

(declare-fun call!39784 () Bool)

(assert (=> b!896514 (= e!501190 call!39784)))

(declare-fun b!896515 () Bool)

(declare-fun e!501191 () Bool)

(assert (=> b!896515 (= e!501191 e!501190)))

(declare-fun c!94627 () Bool)

(assert (=> b!896515 (= c!94627 (validKeyInArray!0 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!896516 () Bool)

(declare-fun e!501192 () Bool)

(assert (=> b!896516 (= e!501192 e!501191)))

(declare-fun res!606272 () Bool)

(assert (=> b!896516 (=> (not res!606272) (not e!501191))))

(declare-fun e!501189 () Bool)

(assert (=> b!896516 (= res!606272 (not e!501189))))

(declare-fun res!606273 () Bool)

(assert (=> b!896516 (=> (not res!606273) (not e!501189))))

(assert (=> b!896516 (= res!606273 (validKeyInArray!0 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39781 () Bool)

(assert (=> bm!39781 (= call!39784 (arrayNoDuplicates!0 (_keys!10112 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94627 (Cons!17897 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000) Nil!17898) Nil!17898)))))

(declare-fun b!896517 () Bool)

(assert (=> b!896517 (= e!501190 call!39784)))

(declare-fun d!110877 () Bool)

(declare-fun res!606274 () Bool)

(assert (=> d!110877 (=> res!606274 e!501192)))

(assert (=> d!110877 (= res!606274 (bvsge #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))))))

(assert (=> d!110877 (= (arrayNoDuplicates!0 (_keys!10112 thiss!1181) #b00000000000000000000000000000000 Nil!17898) e!501192)))

(declare-fun b!896513 () Bool)

(declare-fun contains!4389 (List!17901 (_ BitVec 64)) Bool)

(assert (=> b!896513 (= e!501189 (contains!4389 Nil!17898 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110877 (not res!606274)) b!896516))

(assert (= (and b!896516 res!606273) b!896513))

(assert (= (and b!896516 res!606272) b!896515))

(assert (= (and b!896515 c!94627) b!896514))

(assert (= (and b!896515 (not c!94627)) b!896517))

(assert (= (or b!896514 b!896517) bm!39781))

(assert (=> b!896515 m!833709))

(assert (=> b!896515 m!833709))

(assert (=> b!896515 m!833731))

(assert (=> b!896516 m!833709))

(assert (=> b!896516 m!833709))

(assert (=> b!896516 m!833731))

(assert (=> bm!39781 m!833709))

(declare-fun m!833733 () Bool)

(assert (=> bm!39781 m!833733))

(assert (=> b!896513 m!833709))

(assert (=> b!896513 m!833709))

(declare-fun m!833735 () Bool)

(assert (=> b!896513 m!833735))

(assert (=> b!896467 d!110877))

(declare-fun b!896536 () Bool)

(declare-fun e!501207 () SeekEntryResult!8888)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896536 (= e!501207 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26020 thiss!1181)) #b00000000000000000000000000000000 (mask!26020 thiss!1181)) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun d!110879 () Bool)

(declare-fun e!501204 () Bool)

(assert (=> d!110879 e!501204))

(declare-fun c!94636 () Bool)

(declare-fun lt!404849 () SeekEntryResult!8888)

(assert (=> d!110879 (= c!94636 (and ((_ is Intermediate!8888) lt!404849) (undefined!9700 lt!404849)))))

(declare-fun e!501205 () SeekEntryResult!8888)

(assert (=> d!110879 (= lt!404849 e!501205)))

(declare-fun c!94635 () Bool)

(assert (=> d!110879 (= c!94635 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!404850 () (_ BitVec 64))

(assert (=> d!110879 (= lt!404850 (select (arr!25270 (_keys!10112 thiss!1181)) (toIndex!0 key!785 (mask!26020 thiss!1181))))))

(assert (=> d!110879 (validMask!0 (mask!26020 thiss!1181))))

(assert (=> d!110879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26020 thiss!1181)) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)) lt!404849)))

(declare-fun b!896537 () Bool)

(assert (=> b!896537 (= e!501205 e!501207)))

(declare-fun c!94634 () Bool)

(assert (=> b!896537 (= c!94634 (or (= lt!404850 key!785) (= (bvadd lt!404850 lt!404850) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!896538 () Bool)

(assert (=> b!896538 (and (bvsge (index!37924 lt!404849) #b00000000000000000000000000000000) (bvslt (index!37924 lt!404849) (size!25722 (_keys!10112 thiss!1181))))))

(declare-fun res!606283 () Bool)

(assert (=> b!896538 (= res!606283 (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37924 lt!404849)) key!785))))

(declare-fun e!501203 () Bool)

(assert (=> b!896538 (=> res!606283 e!501203)))

(declare-fun e!501206 () Bool)

(assert (=> b!896538 (= e!501206 e!501203)))

(declare-fun b!896539 () Bool)

(assert (=> b!896539 (= e!501205 (Intermediate!8888 true (toIndex!0 key!785 (mask!26020 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!896540 () Bool)

(assert (=> b!896540 (and (bvsge (index!37924 lt!404849) #b00000000000000000000000000000000) (bvslt (index!37924 lt!404849) (size!25722 (_keys!10112 thiss!1181))))))

(declare-fun res!606282 () Bool)

(assert (=> b!896540 (= res!606282 (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37924 lt!404849)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896540 (=> res!606282 e!501203)))

(declare-fun b!896541 () Bool)

(assert (=> b!896541 (= e!501204 (bvsge (x!76330 lt!404849) #b01111111111111111111111111111110))))

(declare-fun b!896542 () Bool)

(assert (=> b!896542 (= e!501204 e!501206)))

(declare-fun res!606281 () Bool)

(assert (=> b!896542 (= res!606281 (and ((_ is Intermediate!8888) lt!404849) (not (undefined!9700 lt!404849)) (bvslt (x!76330 lt!404849) #b01111111111111111111111111111110) (bvsge (x!76330 lt!404849) #b00000000000000000000000000000000) (bvsge (x!76330 lt!404849) #b00000000000000000000000000000000)))))

(assert (=> b!896542 (=> (not res!606281) (not e!501206))))

(declare-fun b!896543 () Bool)

(assert (=> b!896543 (and (bvsge (index!37924 lt!404849) #b00000000000000000000000000000000) (bvslt (index!37924 lt!404849) (size!25722 (_keys!10112 thiss!1181))))))

(assert (=> b!896543 (= e!501203 (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37924 lt!404849)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!896544 () Bool)

(assert (=> b!896544 (= e!501207 (Intermediate!8888 false (toIndex!0 key!785 (mask!26020 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!110879 c!94635) b!896539))

(assert (= (and d!110879 (not c!94635)) b!896537))

(assert (= (and b!896537 c!94634) b!896544))

(assert (= (and b!896537 (not c!94634)) b!896536))

(assert (= (and d!110879 c!94636) b!896541))

(assert (= (and d!110879 (not c!94636)) b!896542))

(assert (= (and b!896542 res!606281) b!896538))

(assert (= (and b!896538 (not res!606283)) b!896540))

(assert (= (and b!896540 (not res!606282)) b!896543))

(assert (=> b!896536 m!833701))

(declare-fun m!833737 () Bool)

(assert (=> b!896536 m!833737))

(assert (=> b!896536 m!833737))

(declare-fun m!833739 () Bool)

(assert (=> b!896536 m!833739))

(declare-fun m!833741 () Bool)

(assert (=> b!896538 m!833741))

(assert (=> b!896543 m!833741))

(assert (=> d!110879 m!833701))

(declare-fun m!833743 () Bool)

(assert (=> d!110879 m!833743))

(assert (=> d!110879 m!833661))

(assert (=> b!896540 m!833741))

(assert (=> d!110857 d!110879))

(declare-fun d!110881 () Bool)

(declare-fun lt!404856 () (_ BitVec 32))

(declare-fun lt!404855 () (_ BitVec 32))

(assert (=> d!110881 (= lt!404856 (bvmul (bvxor lt!404855 (bvlshr lt!404855 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110881 (= lt!404855 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110881 (and (bvsge (mask!26020 thiss!1181) #b00000000000000000000000000000000) (let ((res!606284 (let ((h!19036 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76347 (bvmul (bvxor h!19036 (bvlshr h!19036 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76347 (bvlshr x!76347 #b00000000000000000000000000001101)) (mask!26020 thiss!1181)))))) (and (bvslt res!606284 (bvadd (mask!26020 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!606284 #b00000000000000000000000000000000))))))

(assert (=> d!110881 (= (toIndex!0 key!785 (mask!26020 thiss!1181)) (bvand (bvxor lt!404856 (bvlshr lt!404856 #b00000000000000000000000000001101)) (mask!26020 thiss!1181)))))

(assert (=> d!110857 d!110881))

(assert (=> d!110857 d!110859))

(declare-fun d!110883 () Bool)

(declare-fun lt!404862 () SeekEntryResult!8888)

(assert (=> d!110883 (and (or ((_ is Undefined!8888) lt!404862) (not ((_ is Found!8888) lt!404862)) (and (bvsge (index!37923 lt!404862) #b00000000000000000000000000000000) (bvslt (index!37923 lt!404862) (size!25722 (_keys!10112 thiss!1181))))) (or ((_ is Undefined!8888) lt!404862) ((_ is Found!8888) lt!404862) (not ((_ is MissingVacant!8888) lt!404862)) (not (= (index!37925 lt!404862) (index!37924 lt!404833))) (and (bvsge (index!37925 lt!404862) #b00000000000000000000000000000000) (bvslt (index!37925 lt!404862) (size!25722 (_keys!10112 thiss!1181))))) (or ((_ is Undefined!8888) lt!404862) (ite ((_ is Found!8888) lt!404862) (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37923 lt!404862)) key!785) (and ((_ is MissingVacant!8888) lt!404862) (= (index!37925 lt!404862) (index!37924 lt!404833)) (= (select (arr!25270 (_keys!10112 thiss!1181)) (index!37925 lt!404862)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!501214 () SeekEntryResult!8888)

(assert (=> d!110883 (= lt!404862 e!501214)))

(declare-fun c!94644 () Bool)

(assert (=> d!110883 (= c!94644 (bvsge (x!76330 lt!404833) #b01111111111111111111111111111110))))

(declare-fun lt!404861 () (_ BitVec 64))

(assert (=> d!110883 (= lt!404861 (select (arr!25270 (_keys!10112 thiss!1181)) (index!37924 lt!404833)))))

(assert (=> d!110883 (validMask!0 (mask!26020 thiss!1181))))

(assert (=> d!110883 (= (seekKeyOrZeroReturnVacant!0 (x!76330 lt!404833) (index!37924 lt!404833) (index!37924 lt!404833) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)) lt!404862)))

(declare-fun b!896557 () Bool)

(declare-fun e!501215 () SeekEntryResult!8888)

(assert (=> b!896557 (= e!501214 e!501215)))

(declare-fun c!94643 () Bool)

(assert (=> b!896557 (= c!94643 (= lt!404861 key!785))))

(declare-fun b!896558 () Bool)

(declare-fun e!501216 () SeekEntryResult!8888)

(assert (=> b!896558 (= e!501216 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76330 lt!404833) #b00000000000000000000000000000001) (nextIndex!0 (index!37924 lt!404833) (x!76330 lt!404833) (mask!26020 thiss!1181)) (index!37924 lt!404833) key!785 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun b!896559 () Bool)

(assert (=> b!896559 (= e!501215 (Found!8888 (index!37924 lt!404833)))))

(declare-fun b!896560 () Bool)

(assert (=> b!896560 (= e!501214 Undefined!8888)))

(declare-fun b!896561 () Bool)

(declare-fun c!94645 () Bool)

(assert (=> b!896561 (= c!94645 (= lt!404861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!896561 (= e!501215 e!501216)))

(declare-fun b!896562 () Bool)

(assert (=> b!896562 (= e!501216 (MissingVacant!8888 (index!37924 lt!404833)))))

(assert (= (and d!110883 c!94644) b!896560))

(assert (= (and d!110883 (not c!94644)) b!896557))

(assert (= (and b!896557 c!94643) b!896559))

(assert (= (and b!896557 (not c!94643)) b!896561))

(assert (= (and b!896561 c!94645) b!896562))

(assert (= (and b!896561 (not c!94645)) b!896558))

(declare-fun m!833745 () Bool)

(assert (=> d!110883 m!833745))

(declare-fun m!833747 () Bool)

(assert (=> d!110883 m!833747))

(assert (=> d!110883 m!833707))

(assert (=> d!110883 m!833661))

(declare-fun m!833749 () Bool)

(assert (=> b!896558 m!833749))

(assert (=> b!896558 m!833749))

(declare-fun m!833751 () Bool)

(assert (=> b!896558 m!833751))

(assert (=> b!896451 d!110883))

(declare-fun b!896571 () Bool)

(declare-fun e!501225 () Bool)

(declare-fun call!39787 () Bool)

(assert (=> b!896571 (= e!501225 call!39787)))

(declare-fun b!896572 () Bool)

(declare-fun e!501223 () Bool)

(assert (=> b!896572 (= e!501225 e!501223)))

(declare-fun lt!404871 () (_ BitVec 64))

(assert (=> b!896572 (= lt!404871 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!404869 () Unit!30457)

(assert (=> b!896572 (= lt!404869 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10112 thiss!1181) lt!404871 #b00000000000000000000000000000000))))

(assert (=> b!896572 (arrayContainsKey!0 (_keys!10112 thiss!1181) lt!404871 #b00000000000000000000000000000000)))

(declare-fun lt!404870 () Unit!30457)

(assert (=> b!896572 (= lt!404870 lt!404869)))

(declare-fun res!606289 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52574 (_ BitVec 32)) SeekEntryResult!8888)

(assert (=> b!896572 (= res!606289 (= (seekEntryOrOpen!0 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000) (_keys!10112 thiss!1181) (mask!26020 thiss!1181)) (Found!8888 #b00000000000000000000000000000000)))))

(assert (=> b!896572 (=> (not res!606289) (not e!501223))))

(declare-fun b!896573 () Bool)

(assert (=> b!896573 (= e!501223 call!39787)))

(declare-fun bm!39784 () Bool)

(assert (=> bm!39784 (= call!39787 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10112 thiss!1181) (mask!26020 thiss!1181)))))

(declare-fun b!896574 () Bool)

(declare-fun e!501224 () Bool)

(assert (=> b!896574 (= e!501224 e!501225)))

(declare-fun c!94648 () Bool)

(assert (=> b!896574 (= c!94648 (validKeyInArray!0 (select (arr!25270 (_keys!10112 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110885 () Bool)

(declare-fun res!606290 () Bool)

(assert (=> d!110885 (=> res!606290 e!501224)))

(assert (=> d!110885 (= res!606290 (bvsge #b00000000000000000000000000000000 (size!25722 (_keys!10112 thiss!1181))))))

(assert (=> d!110885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10112 thiss!1181) (mask!26020 thiss!1181)) e!501224)))

(assert (= (and d!110885 (not res!606290)) b!896574))

(assert (= (and b!896574 c!94648) b!896572))

(assert (= (and b!896574 (not c!94648)) b!896571))

(assert (= (and b!896572 res!606289) b!896573))

(assert (= (or b!896573 b!896571) bm!39784))

(assert (=> b!896572 m!833709))

(declare-fun m!833753 () Bool)

(assert (=> b!896572 m!833753))

(declare-fun m!833755 () Bool)

(assert (=> b!896572 m!833755))

(assert (=> b!896572 m!833709))

(declare-fun m!833757 () Bool)

(assert (=> b!896572 m!833757))

(declare-fun m!833759 () Bool)

(assert (=> bm!39784 m!833759))

(assert (=> b!896574 m!833709))

(assert (=> b!896574 m!833709))

(assert (=> b!896574 m!833731))

(assert (=> b!896466 d!110885))

(declare-fun d!110887 () Bool)

(declare-fun res!606291 () Bool)

(declare-fun e!501226 () Bool)

(assert (=> d!110887 (=> res!606291 e!501226)))

(assert (=> d!110887 (= res!606291 (= (select (arr!25270 (_keys!10112 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!110887 (= (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!501226)))

(declare-fun b!896575 () Bool)

(declare-fun e!501227 () Bool)

(assert (=> b!896575 (= e!501226 e!501227)))

(declare-fun res!606292 () Bool)

(assert (=> b!896575 (=> (not res!606292) (not e!501227))))

(assert (=> b!896575 (= res!606292 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25722 (_keys!10112 thiss!1181))))))

(declare-fun b!896576 () Bool)

(assert (=> b!896576 (= e!501227 (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!110887 (not res!606291)) b!896575))

(assert (= (and b!896575 res!606292) b!896576))

(declare-fun m!833761 () Bool)

(assert (=> d!110887 m!833761))

(declare-fun m!833763 () Bool)

(assert (=> b!896576 m!833763))

(assert (=> b!896458 d!110887))

(assert (=> d!110863 d!110861))

(declare-fun d!110889 () Bool)

(assert (=> d!110889 (arrayContainsKey!0 (_keys!10112 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!110889 true))

(declare-fun _$60!406 () Unit!30457)

(assert (=> d!110889 (= (choose!13 (_keys!10112 thiss!1181) key!785 (index!37923 lt!404807)) _$60!406)))

(declare-fun bs!25163 () Bool)

(assert (= bs!25163 d!110889))

(assert (=> bs!25163 m!833663))

(assert (=> d!110863 d!110889))

(declare-fun mapNonEmpty!29055 () Bool)

(declare-fun mapRes!29055 () Bool)

(declare-fun tp!55917 () Bool)

(declare-fun e!501229 () Bool)

(assert (=> mapNonEmpty!29055 (= mapRes!29055 (and tp!55917 e!501229))))

(declare-fun mapRest!29055 () (Array (_ BitVec 32) ValueCell!8661))

(declare-fun mapKey!29055 () (_ BitVec 32))

(declare-fun mapValue!29055 () ValueCell!8661)

(assert (=> mapNonEmpty!29055 (= mapRest!29054 (store mapRest!29055 mapKey!29055 mapValue!29055))))

(declare-fun b!896578 () Bool)

(declare-fun e!501228 () Bool)

(assert (=> b!896578 (= e!501228 tp_is_empty!18285)))

(declare-fun b!896577 () Bool)

(assert (=> b!896577 (= e!501229 tp_is_empty!18285)))

(declare-fun condMapEmpty!29055 () Bool)

(declare-fun mapDefault!29055 () ValueCell!8661)

(assert (=> mapNonEmpty!29054 (= condMapEmpty!29055 (= mapRest!29054 ((as const (Array (_ BitVec 32) ValueCell!8661)) mapDefault!29055)))))

(assert (=> mapNonEmpty!29054 (= tp!55916 (and e!501228 mapRes!29055))))

(declare-fun mapIsEmpty!29055 () Bool)

(assert (=> mapIsEmpty!29055 mapRes!29055))

(assert (= (and mapNonEmpty!29054 condMapEmpty!29055) mapIsEmpty!29055))

(assert (= (and mapNonEmpty!29054 (not condMapEmpty!29055)) mapNonEmpty!29055))

(assert (= (and mapNonEmpty!29055 ((_ is ValueCellFull!8661) mapValue!29055)) b!896577))

(assert (= (and mapNonEmpty!29054 ((_ is ValueCellFull!8661) mapDefault!29055)) b!896578))

(declare-fun m!833765 () Bool)

(assert (=> mapNonEmpty!29055 m!833765))

(check-sat (not b!896576) (not b!896536) (not bm!39784) (not b_next!15957) (not d!110883) (not d!110889) tp_is_empty!18285 (not b!896516) (not b!896513) (not b!896558) (not bm!39781) (not d!110879) (not b!896572) (not b!896515) (not b!896489) (not d!110871) (not d!110869) (not b!896574) (not b!896488) (not mapNonEmpty!29055) b_and!26267 (not b!896478) (not b!896501) (not bm!39778))
(check-sat b_and!26267 (not b_next!15957))
