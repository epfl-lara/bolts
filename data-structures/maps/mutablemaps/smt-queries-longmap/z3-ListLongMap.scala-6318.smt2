; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81206 () Bool)

(assert start!81206)

(declare-fun b!949852 () Bool)

(declare-fun b_free!18231 () Bool)

(declare-fun b_next!18231 () Bool)

(assert (=> b!949852 (= b_free!18231 (not b_next!18231))))

(declare-fun tp!63287 () Bool)

(declare-fun b_and!29703 () Bool)

(assert (=> b!949852 (= tp!63287 b_and!29703)))

(declare-fun b!949842 () Bool)

(declare-fun e!534789 () Bool)

(declare-fun tp_is_empty!20739 () Bool)

(assert (=> b!949842 (= e!534789 tp_is_empty!20739)))

(declare-fun b!949843 () Bool)

(declare-fun res!637003 () Bool)

(declare-fun e!534790 () Bool)

(assert (=> b!949843 (=> (not res!637003) (not e!534790))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!949843 (= res!637003 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949844 () Bool)

(declare-fun res!637006 () Bool)

(assert (=> b!949844 (=> (not res!637006) (not e!534790))))

(declare-datatypes ((V!32617 0))(
  ( (V!32618 (val!10420 Int)) )
))
(declare-datatypes ((ValueCell!9888 0))(
  ( (ValueCellFull!9888 (v!12962 V!32617)) (EmptyCell!9888) )
))
(declare-datatypes ((array!57516 0))(
  ( (array!57517 (arr!27655 (Array (_ BitVec 32) ValueCell!9888)) (size!28133 (_ BitVec 32))) )
))
(declare-datatypes ((array!57518 0))(
  ( (array!57519 (arr!27656 (Array (_ BitVec 32) (_ BitVec 64))) (size!28134 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4926 0))(
  ( (LongMapFixedSize!4927 (defaultEntry!5773 Int) (mask!27559 (_ BitVec 32)) (extraKeys!5505 (_ BitVec 32)) (zeroValue!5609 V!32617) (minValue!5609 V!32617) (_size!2518 (_ BitVec 32)) (_keys!10703 array!57518) (_values!5796 array!57516) (_vacant!2518 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4926)

(assert (=> b!949844 (= res!637006 (and (= (size!28133 (_values!5796 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27559 thiss!1141))) (= (size!28134 (_keys!10703 thiss!1141)) (size!28133 (_values!5796 thiss!1141))) (bvsge (mask!27559 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5505 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5505 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33017 () Bool)

(declare-fun mapRes!33017 () Bool)

(assert (=> mapIsEmpty!33017 mapRes!33017))

(declare-fun b!949846 () Bool)

(declare-fun res!637002 () Bool)

(assert (=> b!949846 (=> (not res!637002) (not e!534790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!949846 (= res!637002 (validMask!0 (mask!27559 thiss!1141)))))

(declare-fun b!949847 () Bool)

(declare-datatypes ((List!19463 0))(
  ( (Nil!19460) (Cons!19459 (h!20619 (_ BitVec 64)) (t!27808 List!19463)) )
))
(declare-fun arrayNoDuplicates!0 (array!57518 (_ BitVec 32) List!19463) Bool)

(assert (=> b!949847 (= e!534790 (not (arrayNoDuplicates!0 (_keys!10703 thiss!1141) #b00000000000000000000000000000000 Nil!19460)))))

(declare-fun b!949848 () Bool)

(declare-fun res!637005 () Bool)

(assert (=> b!949848 (=> (not res!637005) (not e!534790))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9126 0))(
  ( (MissingZero!9126 (index!38874 (_ BitVec 32))) (Found!9126 (index!38875 (_ BitVec 32))) (Intermediate!9126 (undefined!9938 Bool) (index!38876 (_ BitVec 32)) (x!81711 (_ BitVec 32))) (Undefined!9126) (MissingVacant!9126 (index!38877 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57518 (_ BitVec 32)) SeekEntryResult!9126)

(assert (=> b!949848 (= res!637005 (not ((_ is Found!9126) (seekEntry!0 key!756 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))))

(declare-fun b!949849 () Bool)

(declare-fun res!637001 () Bool)

(assert (=> b!949849 (=> (not res!637001) (not e!534790))))

(declare-datatypes ((tuple2!13638 0))(
  ( (tuple2!13639 (_1!6829 (_ BitVec 64)) (_2!6829 V!32617)) )
))
(declare-datatypes ((List!19464 0))(
  ( (Nil!19461) (Cons!19460 (h!20620 tuple2!13638) (t!27809 List!19464)) )
))
(declare-datatypes ((ListLongMap!12349 0))(
  ( (ListLongMap!12350 (toList!6190 List!19464)) )
))
(declare-fun contains!5231 (ListLongMap!12349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3375 (array!57518 array!57516 (_ BitVec 32) (_ BitVec 32) V!32617 V!32617 (_ BitVec 32) Int) ListLongMap!12349)

(assert (=> b!949849 (= res!637001 (contains!5231 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!33017 () Bool)

(declare-fun tp!63286 () Bool)

(assert (=> mapNonEmpty!33017 (= mapRes!33017 (and tp!63286 e!534789))))

(declare-fun mapRest!33017 () (Array (_ BitVec 32) ValueCell!9888))

(declare-fun mapKey!33017 () (_ BitVec 32))

(declare-fun mapValue!33017 () ValueCell!9888)

(assert (=> mapNonEmpty!33017 (= (arr!27655 (_values!5796 thiss!1141)) (store mapRest!33017 mapKey!33017 mapValue!33017))))

(declare-fun b!949850 () Bool)

(declare-fun e!534788 () Bool)

(assert (=> b!949850 (= e!534788 tp_is_empty!20739)))

(declare-fun b!949851 () Bool)

(declare-fun res!637007 () Bool)

(assert (=> b!949851 (=> (not res!637007) (not e!534790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57518 (_ BitVec 32)) Bool)

(assert (=> b!949851 (= res!637007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))

(declare-fun e!534787 () Bool)

(declare-fun e!534791 () Bool)

(declare-fun array_inv!21412 (array!57518) Bool)

(declare-fun array_inv!21413 (array!57516) Bool)

(assert (=> b!949852 (= e!534791 (and tp!63287 tp_is_empty!20739 (array_inv!21412 (_keys!10703 thiss!1141)) (array_inv!21413 (_values!5796 thiss!1141)) e!534787))))

(declare-fun b!949845 () Bool)

(assert (=> b!949845 (= e!534787 (and e!534788 mapRes!33017))))

(declare-fun condMapEmpty!33017 () Bool)

(declare-fun mapDefault!33017 () ValueCell!9888)

(assert (=> b!949845 (= condMapEmpty!33017 (= (arr!27655 (_values!5796 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9888)) mapDefault!33017)))))

(declare-fun res!637004 () Bool)

(assert (=> start!81206 (=> (not res!637004) (not e!534790))))

(declare-fun valid!1849 (LongMapFixedSize!4926) Bool)

(assert (=> start!81206 (= res!637004 (valid!1849 thiss!1141))))

(assert (=> start!81206 e!534790))

(assert (=> start!81206 e!534791))

(assert (=> start!81206 true))

(assert (= (and start!81206 res!637004) b!949843))

(assert (= (and b!949843 res!637003) b!949848))

(assert (= (and b!949848 res!637005) b!949849))

(assert (= (and b!949849 res!637001) b!949846))

(assert (= (and b!949846 res!637002) b!949844))

(assert (= (and b!949844 res!637006) b!949851))

(assert (= (and b!949851 res!637007) b!949847))

(assert (= (and b!949845 condMapEmpty!33017) mapIsEmpty!33017))

(assert (= (and b!949845 (not condMapEmpty!33017)) mapNonEmpty!33017))

(assert (= (and mapNonEmpty!33017 ((_ is ValueCellFull!9888) mapValue!33017)) b!949842))

(assert (= (and b!949845 ((_ is ValueCellFull!9888) mapDefault!33017)) b!949850))

(assert (= b!949852 b!949845))

(assert (= start!81206 b!949852))

(declare-fun m!882493 () Bool)

(assert (=> b!949847 m!882493))

(declare-fun m!882495 () Bool)

(assert (=> b!949851 m!882495))

(declare-fun m!882497 () Bool)

(assert (=> mapNonEmpty!33017 m!882497))

(declare-fun m!882499 () Bool)

(assert (=> b!949846 m!882499))

(declare-fun m!882501 () Bool)

(assert (=> b!949852 m!882501))

(declare-fun m!882503 () Bool)

(assert (=> b!949852 m!882503))

(declare-fun m!882505 () Bool)

(assert (=> b!949849 m!882505))

(assert (=> b!949849 m!882505))

(declare-fun m!882507 () Bool)

(assert (=> b!949849 m!882507))

(declare-fun m!882509 () Bool)

(assert (=> b!949848 m!882509))

(declare-fun m!882511 () Bool)

(assert (=> start!81206 m!882511))

(check-sat (not b_next!18231) (not b!949846) (not mapNonEmpty!33017) (not b!949847) tp_is_empty!20739 (not start!81206) (not b!949849) b_and!29703 (not b!949851) (not b!949852) (not b!949848))
(check-sat b_and!29703 (not b_next!18231))
(get-model)

(declare-fun b!949896 () Bool)

(declare-fun e!534820 () Bool)

(declare-fun call!41346 () Bool)

(assert (=> b!949896 (= e!534820 call!41346)))

(declare-fun b!949897 () Bool)

(assert (=> b!949897 (= e!534820 call!41346)))

(declare-fun bm!41343 () Bool)

(declare-fun c!99102 () Bool)

(assert (=> bm!41343 (= call!41346 (arrayNoDuplicates!0 (_keys!10703 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99102 (Cons!19459 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000) Nil!19460) Nil!19460)))))

(declare-fun b!949898 () Bool)

(declare-fun e!534818 () Bool)

(declare-fun e!534821 () Bool)

(assert (=> b!949898 (= e!534818 e!534821)))

(declare-fun res!637035 () Bool)

(assert (=> b!949898 (=> (not res!637035) (not e!534821))))

(declare-fun e!534819 () Bool)

(assert (=> b!949898 (= res!637035 (not e!534819))))

(declare-fun res!637036 () Bool)

(assert (=> b!949898 (=> (not res!637036) (not e!534819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!949898 (= res!637036 (validKeyInArray!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!115067 () Bool)

(declare-fun res!637037 () Bool)

(assert (=> d!115067 (=> res!637037 e!534818)))

(assert (=> d!115067 (= res!637037 (bvsge #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(assert (=> d!115067 (= (arrayNoDuplicates!0 (_keys!10703 thiss!1141) #b00000000000000000000000000000000 Nil!19460) e!534818)))

(declare-fun b!949899 () Bool)

(assert (=> b!949899 (= e!534821 e!534820)))

(assert (=> b!949899 (= c!99102 (validKeyInArray!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949900 () Bool)

(declare-fun contains!5232 (List!19463 (_ BitVec 64)) Bool)

(assert (=> b!949900 (= e!534819 (contains!5232 Nil!19460 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!115067 (not res!637037)) b!949898))

(assert (= (and b!949898 res!637036) b!949900))

(assert (= (and b!949898 res!637035) b!949899))

(assert (= (and b!949899 c!99102) b!949897))

(assert (= (and b!949899 (not c!99102)) b!949896))

(assert (= (or b!949897 b!949896) bm!41343))

(declare-fun m!882533 () Bool)

(assert (=> bm!41343 m!882533))

(declare-fun m!882535 () Bool)

(assert (=> bm!41343 m!882535))

(assert (=> b!949898 m!882533))

(assert (=> b!949898 m!882533))

(declare-fun m!882537 () Bool)

(assert (=> b!949898 m!882537))

(assert (=> b!949899 m!882533))

(assert (=> b!949899 m!882533))

(assert (=> b!949899 m!882537))

(assert (=> b!949900 m!882533))

(assert (=> b!949900 m!882533))

(declare-fun m!882539 () Bool)

(assert (=> b!949900 m!882539))

(assert (=> b!949847 d!115067))

(declare-fun d!115069 () Bool)

(assert (=> d!115069 (= (array_inv!21412 (_keys!10703 thiss!1141)) (bvsge (size!28134 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949852 d!115069))

(declare-fun d!115071 () Bool)

(assert (=> d!115071 (= (array_inv!21413 (_values!5796 thiss!1141)) (bvsge (size!28133 (_values!5796 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949852 d!115071))

(declare-fun b!949913 () Bool)

(declare-fun e!534830 () SeekEntryResult!9126)

(declare-fun e!534829 () SeekEntryResult!9126)

(assert (=> b!949913 (= e!534830 e!534829)))

(declare-fun lt!427787 () (_ BitVec 64))

(declare-fun lt!427786 () SeekEntryResult!9126)

(assert (=> b!949913 (= lt!427787 (select (arr!27656 (_keys!10703 thiss!1141)) (index!38876 lt!427786)))))

(declare-fun c!99110 () Bool)

(assert (=> b!949913 (= c!99110 (= lt!427787 key!756))))

(declare-fun b!949915 () Bool)

(declare-fun e!534828 () SeekEntryResult!9126)

(declare-fun lt!427784 () SeekEntryResult!9126)

(assert (=> b!949915 (= e!534828 (ite ((_ is MissingVacant!9126) lt!427784) (MissingZero!9126 (index!38877 lt!427784)) lt!427784))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57518 (_ BitVec 32)) SeekEntryResult!9126)

(assert (=> b!949915 (= lt!427784 (seekKeyOrZeroReturnVacant!0 (x!81711 lt!427786) (index!38876 lt!427786) (index!38876 lt!427786) key!756 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))

(declare-fun b!949916 () Bool)

(assert (=> b!949916 (= e!534829 (Found!9126 (index!38876 lt!427786)))))

(declare-fun b!949917 () Bool)

(assert (=> b!949917 (= e!534830 Undefined!9126)))

(declare-fun b!949918 () Bool)

(assert (=> b!949918 (= e!534828 (MissingZero!9126 (index!38876 lt!427786)))))

(declare-fun d!115073 () Bool)

(declare-fun lt!427785 () SeekEntryResult!9126)

(assert (=> d!115073 (and (or ((_ is MissingVacant!9126) lt!427785) (not ((_ is Found!9126) lt!427785)) (and (bvsge (index!38875 lt!427785) #b00000000000000000000000000000000) (bvslt (index!38875 lt!427785) (size!28134 (_keys!10703 thiss!1141))))) (not ((_ is MissingVacant!9126) lt!427785)) (or (not ((_ is Found!9126) lt!427785)) (= (select (arr!27656 (_keys!10703 thiss!1141)) (index!38875 lt!427785)) key!756)))))

(assert (=> d!115073 (= lt!427785 e!534830)))

(declare-fun c!99109 () Bool)

(assert (=> d!115073 (= c!99109 (and ((_ is Intermediate!9126) lt!427786) (undefined!9938 lt!427786)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57518 (_ BitVec 32)) SeekEntryResult!9126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115073 (= lt!427786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27559 thiss!1141)) key!756 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))

(assert (=> d!115073 (validMask!0 (mask!27559 thiss!1141))))

(assert (=> d!115073 (= (seekEntry!0 key!756 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)) lt!427785)))

(declare-fun b!949914 () Bool)

(declare-fun c!99111 () Bool)

(assert (=> b!949914 (= c!99111 (= lt!427787 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949914 (= e!534829 e!534828)))

(assert (= (and d!115073 c!99109) b!949917))

(assert (= (and d!115073 (not c!99109)) b!949913))

(assert (= (and b!949913 c!99110) b!949916))

(assert (= (and b!949913 (not c!99110)) b!949914))

(assert (= (and b!949914 c!99111) b!949918))

(assert (= (and b!949914 (not c!99111)) b!949915))

(declare-fun m!882541 () Bool)

(assert (=> b!949913 m!882541))

(declare-fun m!882543 () Bool)

(assert (=> b!949915 m!882543))

(declare-fun m!882545 () Bool)

(assert (=> d!115073 m!882545))

(declare-fun m!882547 () Bool)

(assert (=> d!115073 m!882547))

(assert (=> d!115073 m!882547))

(declare-fun m!882549 () Bool)

(assert (=> d!115073 m!882549))

(assert (=> d!115073 m!882499))

(assert (=> b!949848 d!115073))

(declare-fun d!115075 () Bool)

(assert (=> d!115075 (= (validMask!0 (mask!27559 thiss!1141)) (and (or (= (mask!27559 thiss!1141) #b00000000000000000000000000000111) (= (mask!27559 thiss!1141) #b00000000000000000000000000001111) (= (mask!27559 thiss!1141) #b00000000000000000000000000011111) (= (mask!27559 thiss!1141) #b00000000000000000000000000111111) (= (mask!27559 thiss!1141) #b00000000000000000000000001111111) (= (mask!27559 thiss!1141) #b00000000000000000000000011111111) (= (mask!27559 thiss!1141) #b00000000000000000000000111111111) (= (mask!27559 thiss!1141) #b00000000000000000000001111111111) (= (mask!27559 thiss!1141) #b00000000000000000000011111111111) (= (mask!27559 thiss!1141) #b00000000000000000000111111111111) (= (mask!27559 thiss!1141) #b00000000000000000001111111111111) (= (mask!27559 thiss!1141) #b00000000000000000011111111111111) (= (mask!27559 thiss!1141) #b00000000000000000111111111111111) (= (mask!27559 thiss!1141) #b00000000000000001111111111111111) (= (mask!27559 thiss!1141) #b00000000000000011111111111111111) (= (mask!27559 thiss!1141) #b00000000000000111111111111111111) (= (mask!27559 thiss!1141) #b00000000000001111111111111111111) (= (mask!27559 thiss!1141) #b00000000000011111111111111111111) (= (mask!27559 thiss!1141) #b00000000000111111111111111111111) (= (mask!27559 thiss!1141) #b00000000001111111111111111111111) (= (mask!27559 thiss!1141) #b00000000011111111111111111111111) (= (mask!27559 thiss!1141) #b00000000111111111111111111111111) (= (mask!27559 thiss!1141) #b00000001111111111111111111111111) (= (mask!27559 thiss!1141) #b00000011111111111111111111111111) (= (mask!27559 thiss!1141) #b00000111111111111111111111111111) (= (mask!27559 thiss!1141) #b00001111111111111111111111111111) (= (mask!27559 thiss!1141) #b00011111111111111111111111111111) (= (mask!27559 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27559 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!949846 d!115075))

(declare-fun b!949927 () Bool)

(declare-fun e!534839 () Bool)

(declare-fun call!41349 () Bool)

(assert (=> b!949927 (= e!534839 call!41349)))

(declare-fun b!949928 () Bool)

(declare-fun e!534837 () Bool)

(assert (=> b!949928 (= e!534837 e!534839)))

(declare-fun c!99114 () Bool)

(assert (=> b!949928 (= c!99114 (validKeyInArray!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41346 () Bool)

(assert (=> bm!41346 (= call!41349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))

(declare-fun b!949929 () Bool)

(declare-fun e!534838 () Bool)

(assert (=> b!949929 (= e!534839 e!534838)))

(declare-fun lt!427794 () (_ BitVec 64))

(assert (=> b!949929 (= lt!427794 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31976 0))(
  ( (Unit!31977) )
))
(declare-fun lt!427796 () Unit!31976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57518 (_ BitVec 64) (_ BitVec 32)) Unit!31976)

(assert (=> b!949929 (= lt!427796 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10703 thiss!1141) lt!427794 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!949929 (arrayContainsKey!0 (_keys!10703 thiss!1141) lt!427794 #b00000000000000000000000000000000)))

(declare-fun lt!427795 () Unit!31976)

(assert (=> b!949929 (= lt!427795 lt!427796)))

(declare-fun res!637042 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57518 (_ BitVec 32)) SeekEntryResult!9126)

(assert (=> b!949929 (= res!637042 (= (seekEntryOrOpen!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000) (_keys!10703 thiss!1141) (mask!27559 thiss!1141)) (Found!9126 #b00000000000000000000000000000000)))))

(assert (=> b!949929 (=> (not res!637042) (not e!534838))))

(declare-fun b!949930 () Bool)

(assert (=> b!949930 (= e!534838 call!41349)))

(declare-fun d!115077 () Bool)

(declare-fun res!637043 () Bool)

(assert (=> d!115077 (=> res!637043 e!534837)))

(assert (=> d!115077 (= res!637043 (bvsge #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(assert (=> d!115077 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)) e!534837)))

(assert (= (and d!115077 (not res!637043)) b!949928))

(assert (= (and b!949928 c!99114) b!949929))

(assert (= (and b!949928 (not c!99114)) b!949927))

(assert (= (and b!949929 res!637042) b!949930))

(assert (= (or b!949930 b!949927) bm!41346))

(assert (=> b!949928 m!882533))

(assert (=> b!949928 m!882533))

(assert (=> b!949928 m!882537))

(declare-fun m!882551 () Bool)

(assert (=> bm!41346 m!882551))

(assert (=> b!949929 m!882533))

(declare-fun m!882553 () Bool)

(assert (=> b!949929 m!882553))

(declare-fun m!882555 () Bool)

(assert (=> b!949929 m!882555))

(assert (=> b!949929 m!882533))

(declare-fun m!882557 () Bool)

(assert (=> b!949929 m!882557))

(assert (=> b!949851 d!115077))

(declare-fun d!115079 () Bool)

(declare-fun res!637050 () Bool)

(declare-fun e!534842 () Bool)

(assert (=> d!115079 (=> (not res!637050) (not e!534842))))

(declare-fun simpleValid!372 (LongMapFixedSize!4926) Bool)

(assert (=> d!115079 (= res!637050 (simpleValid!372 thiss!1141))))

(assert (=> d!115079 (= (valid!1849 thiss!1141) e!534842)))

(declare-fun b!949937 () Bool)

(declare-fun res!637051 () Bool)

(assert (=> b!949937 (=> (not res!637051) (not e!534842))))

(declare-fun arrayCountValidKeys!0 (array!57518 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!949937 (= res!637051 (= (arrayCountValidKeys!0 (_keys!10703 thiss!1141) #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))) (_size!2518 thiss!1141)))))

(declare-fun b!949938 () Bool)

(declare-fun res!637052 () Bool)

(assert (=> b!949938 (=> (not res!637052) (not e!534842))))

(assert (=> b!949938 (= res!637052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10703 thiss!1141) (mask!27559 thiss!1141)))))

(declare-fun b!949939 () Bool)

(assert (=> b!949939 (= e!534842 (arrayNoDuplicates!0 (_keys!10703 thiss!1141) #b00000000000000000000000000000000 Nil!19460))))

(assert (= (and d!115079 res!637050) b!949937))

(assert (= (and b!949937 res!637051) b!949938))

(assert (= (and b!949938 res!637052) b!949939))

(declare-fun m!882559 () Bool)

(assert (=> d!115079 m!882559))

(declare-fun m!882561 () Bool)

(assert (=> b!949937 m!882561))

(assert (=> b!949938 m!882495))

(assert (=> b!949939 m!882493))

(assert (=> start!81206 d!115079))

(declare-fun d!115081 () Bool)

(declare-fun e!534847 () Bool)

(assert (=> d!115081 e!534847))

(declare-fun res!637055 () Bool)

(assert (=> d!115081 (=> res!637055 e!534847)))

(declare-fun lt!427807 () Bool)

(assert (=> d!115081 (= res!637055 (not lt!427807))))

(declare-fun lt!427805 () Bool)

(assert (=> d!115081 (= lt!427807 lt!427805)))

(declare-fun lt!427808 () Unit!31976)

(declare-fun e!534848 () Unit!31976)

(assert (=> d!115081 (= lt!427808 e!534848)))

(declare-fun c!99117 () Bool)

(assert (=> d!115081 (= c!99117 lt!427805)))

(declare-fun containsKey!464 (List!19464 (_ BitVec 64)) Bool)

(assert (=> d!115081 (= lt!427805 (containsKey!464 (toList!6190 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141))) key!756))))

(assert (=> d!115081 (= (contains!5231 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)) key!756) lt!427807)))

(declare-fun b!949946 () Bool)

(declare-fun lt!427806 () Unit!31976)

(assert (=> b!949946 (= e!534848 lt!427806)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!359 (List!19464 (_ BitVec 64)) Unit!31976)

(assert (=> b!949946 (= lt!427806 (lemmaContainsKeyImpliesGetValueByKeyDefined!359 (toList!6190 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141))) key!756))))

(declare-datatypes ((Option!505 0))(
  ( (Some!504 (v!12964 V!32617)) (None!503) )
))
(declare-fun isDefined!369 (Option!505) Bool)

(declare-fun getValueByKey!499 (List!19464 (_ BitVec 64)) Option!505)

(assert (=> b!949946 (isDefined!369 (getValueByKey!499 (toList!6190 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141))) key!756))))

(declare-fun b!949947 () Bool)

(declare-fun Unit!31978 () Unit!31976)

(assert (=> b!949947 (= e!534848 Unit!31978)))

(declare-fun b!949948 () Bool)

(assert (=> b!949948 (= e!534847 (isDefined!369 (getValueByKey!499 (toList!6190 (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141))) key!756)))))

(assert (= (and d!115081 c!99117) b!949946))

(assert (= (and d!115081 (not c!99117)) b!949947))

(assert (= (and d!115081 (not res!637055)) b!949948))

(declare-fun m!882563 () Bool)

(assert (=> d!115081 m!882563))

(declare-fun m!882565 () Bool)

(assert (=> b!949946 m!882565))

(declare-fun m!882567 () Bool)

(assert (=> b!949946 m!882567))

(assert (=> b!949946 m!882567))

(declare-fun m!882569 () Bool)

(assert (=> b!949946 m!882569))

(assert (=> b!949948 m!882567))

(assert (=> b!949948 m!882567))

(assert (=> b!949948 m!882569))

(assert (=> b!949849 d!115081))

(declare-fun b!949991 () Bool)

(declare-fun e!534887 () Unit!31976)

(declare-fun Unit!31979 () Unit!31976)

(assert (=> b!949991 (= e!534887 Unit!31979)))

(declare-fun call!41364 () ListLongMap!12349)

(declare-fun call!41366 () ListLongMap!12349)

(declare-fun c!99134 () Bool)

(declare-fun bm!41361 () Bool)

(declare-fun c!99133 () Bool)

(declare-fun call!41369 () ListLongMap!12349)

(declare-fun call!41368 () ListLongMap!12349)

(declare-fun +!2826 (ListLongMap!12349 tuple2!13638) ListLongMap!12349)

(assert (=> bm!41361 (= call!41369 (+!2826 (ite c!99134 call!41368 (ite c!99133 call!41366 call!41364)) (ite (or c!99134 c!99133) (tuple2!13639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5609 thiss!1141)) (tuple2!13639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5609 thiss!1141)))))))

(declare-fun b!949992 () Bool)

(declare-fun e!534879 () Bool)

(declare-fun e!534882 () Bool)

(assert (=> b!949992 (= e!534879 e!534882)))

(declare-fun res!637080 () Bool)

(declare-fun call!41367 () Bool)

(assert (=> b!949992 (= res!637080 call!41367)))

(assert (=> b!949992 (=> (not res!637080) (not e!534882))))

(declare-fun b!949993 () Bool)

(declare-fun e!534883 () ListLongMap!12349)

(declare-fun call!41365 () ListLongMap!12349)

(assert (=> b!949993 (= e!534883 call!41365)))

(declare-fun b!949994 () Bool)

(declare-fun e!534884 () Bool)

(declare-fun e!534875 () Bool)

(assert (=> b!949994 (= e!534884 e!534875)))

(declare-fun res!637076 () Bool)

(assert (=> b!949994 (=> (not res!637076) (not e!534875))))

(declare-fun lt!427860 () ListLongMap!12349)

(assert (=> b!949994 (= res!637076 (contains!5231 lt!427860 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(declare-fun b!949995 () Bool)

(declare-fun c!99131 () Bool)

(assert (=> b!949995 (= c!99131 (and (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!534877 () ListLongMap!12349)

(assert (=> b!949995 (= e!534883 e!534877)))

(declare-fun b!949997 () Bool)

(declare-fun apply!912 (ListLongMap!12349 (_ BitVec 64)) V!32617)

(declare-fun get!14551 (ValueCell!9888 V!32617) V!32617)

(declare-fun dynLambda!1665 (Int (_ BitVec 64)) V!32617)

(assert (=> b!949997 (= e!534875 (= (apply!912 lt!427860 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)) (get!14551 (select (arr!27655 (_values!5796 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1665 (defaultEntry!5773 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!949997 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28133 (_values!5796 thiss!1141))))))

(assert (=> b!949997 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(declare-fun bm!41362 () Bool)

(assert (=> bm!41362 (= call!41367 (contains!5231 lt!427860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949998 () Bool)

(declare-fun e!534878 () ListLongMap!12349)

(assert (=> b!949998 (= e!534878 (+!2826 call!41369 (tuple2!13639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5609 thiss!1141))))))

(declare-fun bm!41363 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3332 (array!57518 array!57516 (_ BitVec 32) (_ BitVec 32) V!32617 V!32617 (_ BitVec 32) Int) ListLongMap!12349)

(assert (=> bm!41363 (= call!41368 (getCurrentListMapNoExtraKeys!3332 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)))))

(declare-fun b!949999 () Bool)

(declare-fun e!534876 () Bool)

(assert (=> b!949999 (= e!534876 e!534879)))

(declare-fun c!99135 () Bool)

(assert (=> b!949999 (= c!99135 (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950000 () Bool)

(declare-fun e!534886 () Bool)

(assert (=> b!950000 (= e!534886 (= (apply!912 lt!427860 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5609 thiss!1141)))))

(declare-fun b!950001 () Bool)

(assert (=> b!950001 (= e!534877 call!41365)))

(declare-fun bm!41364 () Bool)

(assert (=> bm!41364 (= call!41365 call!41369)))

(declare-fun bm!41365 () Bool)

(assert (=> bm!41365 (= call!41366 call!41368)))

(declare-fun b!950002 () Bool)

(declare-fun e!534881 () Bool)

(assert (=> b!950002 (= e!534881 e!534886)))

(declare-fun res!637077 () Bool)

(declare-fun call!41370 () Bool)

(assert (=> b!950002 (= res!637077 call!41370)))

(assert (=> b!950002 (=> (not res!637077) (not e!534886))))

(declare-fun b!950003 () Bool)

(assert (=> b!950003 (= e!534878 e!534883)))

(assert (=> b!950003 (= c!99133 (and (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!115083 () Bool)

(assert (=> d!115083 e!534876))

(declare-fun res!637081 () Bool)

(assert (=> d!115083 (=> (not res!637081) (not e!534876))))

(assert (=> d!115083 (= res!637081 (or (bvsge #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))))

(declare-fun lt!427869 () ListLongMap!12349)

(assert (=> d!115083 (= lt!427860 lt!427869)))

(declare-fun lt!427868 () Unit!31976)

(assert (=> d!115083 (= lt!427868 e!534887)))

(declare-fun c!99130 () Bool)

(declare-fun e!534885 () Bool)

(assert (=> d!115083 (= c!99130 e!534885)))

(declare-fun res!637082 () Bool)

(assert (=> d!115083 (=> (not res!637082) (not e!534885))))

(assert (=> d!115083 (= res!637082 (bvslt #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(assert (=> d!115083 (= lt!427869 e!534878)))

(assert (=> d!115083 (= c!99134 (and (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115083 (validMask!0 (mask!27559 thiss!1141))))

(assert (=> d!115083 (= (getCurrentListMap!3375 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)) lt!427860)))

(declare-fun b!949996 () Bool)

(declare-fun lt!427859 () Unit!31976)

(assert (=> b!949996 (= e!534887 lt!427859)))

(declare-fun lt!427862 () ListLongMap!12349)

(assert (=> b!949996 (= lt!427862 (getCurrentListMapNoExtraKeys!3332 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)))))

(declare-fun lt!427873 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427873 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427864 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427864 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427870 () Unit!31976)

(declare-fun addStillContains!582 (ListLongMap!12349 (_ BitVec 64) V!32617 (_ BitVec 64)) Unit!31976)

(assert (=> b!949996 (= lt!427870 (addStillContains!582 lt!427862 lt!427873 (zeroValue!5609 thiss!1141) lt!427864))))

(assert (=> b!949996 (contains!5231 (+!2826 lt!427862 (tuple2!13639 lt!427873 (zeroValue!5609 thiss!1141))) lt!427864)))

(declare-fun lt!427874 () Unit!31976)

(assert (=> b!949996 (= lt!427874 lt!427870)))

(declare-fun lt!427853 () ListLongMap!12349)

(assert (=> b!949996 (= lt!427853 (getCurrentListMapNoExtraKeys!3332 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)))))

(declare-fun lt!427858 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427858 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427861 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427861 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427856 () Unit!31976)

(declare-fun addApplyDifferent!456 (ListLongMap!12349 (_ BitVec 64) V!32617 (_ BitVec 64)) Unit!31976)

(assert (=> b!949996 (= lt!427856 (addApplyDifferent!456 lt!427853 lt!427858 (minValue!5609 thiss!1141) lt!427861))))

(assert (=> b!949996 (= (apply!912 (+!2826 lt!427853 (tuple2!13639 lt!427858 (minValue!5609 thiss!1141))) lt!427861) (apply!912 lt!427853 lt!427861))))

(declare-fun lt!427865 () Unit!31976)

(assert (=> b!949996 (= lt!427865 lt!427856)))

(declare-fun lt!427867 () ListLongMap!12349)

(assert (=> b!949996 (= lt!427867 (getCurrentListMapNoExtraKeys!3332 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)))))

(declare-fun lt!427871 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427871 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427857 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427857 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427872 () Unit!31976)

(assert (=> b!949996 (= lt!427872 (addApplyDifferent!456 lt!427867 lt!427871 (zeroValue!5609 thiss!1141) lt!427857))))

(assert (=> b!949996 (= (apply!912 (+!2826 lt!427867 (tuple2!13639 lt!427871 (zeroValue!5609 thiss!1141))) lt!427857) (apply!912 lt!427867 lt!427857))))

(declare-fun lt!427863 () Unit!31976)

(assert (=> b!949996 (= lt!427863 lt!427872)))

(declare-fun lt!427854 () ListLongMap!12349)

(assert (=> b!949996 (= lt!427854 (getCurrentListMapNoExtraKeys!3332 (_keys!10703 thiss!1141) (_values!5796 thiss!1141) (mask!27559 thiss!1141) (extraKeys!5505 thiss!1141) (zeroValue!5609 thiss!1141) (minValue!5609 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5773 thiss!1141)))))

(declare-fun lt!427866 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427866 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427855 () (_ BitVec 64))

(assert (=> b!949996 (= lt!427855 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949996 (= lt!427859 (addApplyDifferent!456 lt!427854 lt!427866 (minValue!5609 thiss!1141) lt!427855))))

(assert (=> b!949996 (= (apply!912 (+!2826 lt!427854 (tuple2!13639 lt!427866 (minValue!5609 thiss!1141))) lt!427855) (apply!912 lt!427854 lt!427855))))

(declare-fun b!950004 () Bool)

(declare-fun res!637078 () Bool)

(assert (=> b!950004 (=> (not res!637078) (not e!534876))))

(assert (=> b!950004 (= res!637078 e!534884)))

(declare-fun res!637074 () Bool)

(assert (=> b!950004 (=> res!637074 e!534884)))

(declare-fun e!534880 () Bool)

(assert (=> b!950004 (= res!637074 (not e!534880))))

(declare-fun res!637079 () Bool)

(assert (=> b!950004 (=> (not res!637079) (not e!534880))))

(assert (=> b!950004 (= res!637079 (bvslt #b00000000000000000000000000000000 (size!28134 (_keys!10703 thiss!1141))))))

(declare-fun b!950005 () Bool)

(declare-fun res!637075 () Bool)

(assert (=> b!950005 (=> (not res!637075) (not e!534876))))

(assert (=> b!950005 (= res!637075 e!534881)))

(declare-fun c!99132 () Bool)

(assert (=> b!950005 (= c!99132 (not (= (bvand (extraKeys!5505 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!950006 () Bool)

(assert (=> b!950006 (= e!534880 (validKeyInArray!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950007 () Bool)

(assert (=> b!950007 (= e!534881 (not call!41370))))

(declare-fun b!950008 () Bool)

(assert (=> b!950008 (= e!534879 (not call!41367))))

(declare-fun b!950009 () Bool)

(assert (=> b!950009 (= e!534882 (= (apply!912 lt!427860 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5609 thiss!1141)))))

(declare-fun b!950010 () Bool)

(assert (=> b!950010 (= e!534877 call!41364)))

(declare-fun bm!41366 () Bool)

(assert (=> bm!41366 (= call!41370 (contains!5231 lt!427860 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41367 () Bool)

(assert (=> bm!41367 (= call!41364 call!41366)))

(declare-fun b!950011 () Bool)

(assert (=> b!950011 (= e!534885 (validKeyInArray!0 (select (arr!27656 (_keys!10703 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!115083 c!99134) b!949998))

(assert (= (and d!115083 (not c!99134)) b!950003))

(assert (= (and b!950003 c!99133) b!949993))

(assert (= (and b!950003 (not c!99133)) b!949995))

(assert (= (and b!949995 c!99131) b!950001))

(assert (= (and b!949995 (not c!99131)) b!950010))

(assert (= (or b!950001 b!950010) bm!41367))

(assert (= (or b!949993 bm!41367) bm!41365))

(assert (= (or b!949993 b!950001) bm!41364))

(assert (= (or b!949998 bm!41365) bm!41363))

(assert (= (or b!949998 bm!41364) bm!41361))

(assert (= (and d!115083 res!637082) b!950011))

(assert (= (and d!115083 c!99130) b!949996))

(assert (= (and d!115083 (not c!99130)) b!949991))

(assert (= (and d!115083 res!637081) b!950004))

(assert (= (and b!950004 res!637079) b!950006))

(assert (= (and b!950004 (not res!637074)) b!949994))

(assert (= (and b!949994 res!637076) b!949997))

(assert (= (and b!950004 res!637078) b!950005))

(assert (= (and b!950005 c!99132) b!950002))

(assert (= (and b!950005 (not c!99132)) b!950007))

(assert (= (and b!950002 res!637077) b!950000))

(assert (= (or b!950002 b!950007) bm!41366))

(assert (= (and b!950005 res!637075) b!949999))

(assert (= (and b!949999 c!99135) b!949992))

(assert (= (and b!949999 (not c!99135)) b!950008))

(assert (= (and b!949992 res!637080) b!950009))

(assert (= (or b!949992 b!950008) bm!41362))

(declare-fun b_lambda!14393 () Bool)

(assert (=> (not b_lambda!14393) (not b!949997)))

(declare-fun t!27811 () Bool)

(declare-fun tb!6197 () Bool)

(assert (=> (and b!949852 (= (defaultEntry!5773 thiss!1141) (defaultEntry!5773 thiss!1141)) t!27811) tb!6197))

(declare-fun result!12297 () Bool)

(assert (=> tb!6197 (= result!12297 tp_is_empty!20739)))

(assert (=> b!949997 t!27811))

(declare-fun b_and!29707 () Bool)

(assert (= b_and!29703 (and (=> t!27811 result!12297) b_and!29707)))

(assert (=> d!115083 m!882499))

(declare-fun m!882571 () Bool)

(assert (=> bm!41361 m!882571))

(assert (=> b!949997 m!882533))

(declare-fun m!882573 () Bool)

(assert (=> b!949997 m!882573))

(declare-fun m!882575 () Bool)

(assert (=> b!949997 m!882575))

(declare-fun m!882577 () Bool)

(assert (=> b!949997 m!882577))

(assert (=> b!949997 m!882575))

(declare-fun m!882579 () Bool)

(assert (=> b!949997 m!882579))

(assert (=> b!949997 m!882533))

(assert (=> b!949997 m!882577))

(declare-fun m!882581 () Bool)

(assert (=> b!949996 m!882581))

(declare-fun m!882583 () Bool)

(assert (=> b!949996 m!882583))

(declare-fun m!882585 () Bool)

(assert (=> b!949996 m!882585))

(assert (=> b!949996 m!882585))

(declare-fun m!882587 () Bool)

(assert (=> b!949996 m!882587))

(declare-fun m!882589 () Bool)

(assert (=> b!949996 m!882589))

(declare-fun m!882591 () Bool)

(assert (=> b!949996 m!882591))

(declare-fun m!882593 () Bool)

(assert (=> b!949996 m!882593))

(declare-fun m!882595 () Bool)

(assert (=> b!949996 m!882595))

(assert (=> b!949996 m!882533))

(declare-fun m!882597 () Bool)

(assert (=> b!949996 m!882597))

(declare-fun m!882599 () Bool)

(assert (=> b!949996 m!882599))

(declare-fun m!882601 () Bool)

(assert (=> b!949996 m!882601))

(declare-fun m!882603 () Bool)

(assert (=> b!949996 m!882603))

(assert (=> b!949996 m!882591))

(declare-fun m!882605 () Bool)

(assert (=> b!949996 m!882605))

(declare-fun m!882607 () Bool)

(assert (=> b!949996 m!882607))

(declare-fun m!882609 () Bool)

(assert (=> b!949996 m!882609))

(assert (=> b!949996 m!882607))

(declare-fun m!882611 () Bool)

(assert (=> b!949996 m!882611))

(assert (=> b!949996 m!882581))

(declare-fun m!882613 () Bool)

(assert (=> b!949998 m!882613))

(assert (=> bm!41363 m!882611))

(declare-fun m!882615 () Bool)

(assert (=> bm!41366 m!882615))

(assert (=> b!950011 m!882533))

(assert (=> b!950011 m!882533))

(assert (=> b!950011 m!882537))

(declare-fun m!882617 () Bool)

(assert (=> bm!41362 m!882617))

(declare-fun m!882619 () Bool)

(assert (=> b!950000 m!882619))

(assert (=> b!949994 m!882533))

(assert (=> b!949994 m!882533))

(declare-fun m!882621 () Bool)

(assert (=> b!949994 m!882621))

(declare-fun m!882623 () Bool)

(assert (=> b!950009 m!882623))

(assert (=> b!950006 m!882533))

(assert (=> b!950006 m!882533))

(assert (=> b!950006 m!882537))

(assert (=> b!949849 d!115083))

(declare-fun condMapEmpty!33023 () Bool)

(declare-fun mapDefault!33023 () ValueCell!9888)

(assert (=> mapNonEmpty!33017 (= condMapEmpty!33023 (= mapRest!33017 ((as const (Array (_ BitVec 32) ValueCell!9888)) mapDefault!33023)))))

(declare-fun e!534892 () Bool)

(declare-fun mapRes!33023 () Bool)

(assert (=> mapNonEmpty!33017 (= tp!63286 (and e!534892 mapRes!33023))))

(declare-fun mapIsEmpty!33023 () Bool)

(assert (=> mapIsEmpty!33023 mapRes!33023))

(declare-fun mapNonEmpty!33023 () Bool)

(declare-fun tp!63296 () Bool)

(declare-fun e!534893 () Bool)

(assert (=> mapNonEmpty!33023 (= mapRes!33023 (and tp!63296 e!534893))))

(declare-fun mapKey!33023 () (_ BitVec 32))

(declare-fun mapValue!33023 () ValueCell!9888)

(declare-fun mapRest!33023 () (Array (_ BitVec 32) ValueCell!9888))

(assert (=> mapNonEmpty!33023 (= mapRest!33017 (store mapRest!33023 mapKey!33023 mapValue!33023))))

(declare-fun b!950021 () Bool)

(assert (=> b!950021 (= e!534892 tp_is_empty!20739)))

(declare-fun b!950020 () Bool)

(assert (=> b!950020 (= e!534893 tp_is_empty!20739)))

(assert (= (and mapNonEmpty!33017 condMapEmpty!33023) mapIsEmpty!33023))

(assert (= (and mapNonEmpty!33017 (not condMapEmpty!33023)) mapNonEmpty!33023))

(assert (= (and mapNonEmpty!33023 ((_ is ValueCellFull!9888) mapValue!33023)) b!950020))

(assert (= (and mapNonEmpty!33017 ((_ is ValueCellFull!9888) mapDefault!33023)) b!950021))

(declare-fun m!882625 () Bool)

(assert (=> mapNonEmpty!33023 m!882625))

(declare-fun b_lambda!14395 () Bool)

(assert (= b_lambda!14393 (or (and b!949852 b_free!18231) b_lambda!14395)))

(check-sat (not b!949997) (not d!115083) (not b!949915) (not b!949946) (not b!949937) tp_is_empty!20739 (not b!950009) (not b!950000) (not b!949928) (not b!949994) (not d!115079) (not b_next!18231) (not b!949900) (not b!949998) (not bm!41343) (not b!949948) (not b!950006) (not b!949938) (not b!949898) (not b!949899) (not bm!41366) (not b_lambda!14395) (not b!949929) (not bm!41346) (not d!115073) (not b!950011) b_and!29707 (not b!949996) (not mapNonEmpty!33023) (not bm!41363) (not d!115081) (not bm!41361) (not bm!41362) (not b!949939))
(check-sat b_and!29707 (not b_next!18231))
