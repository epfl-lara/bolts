; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15976 () Bool)

(assert start!15976)

(declare-fun b!158561 () Bool)

(declare-fun b_free!3489 () Bool)

(declare-fun b_next!3489 () Bool)

(assert (=> b!158561 (= b_free!3489 (not b_next!3489))))

(declare-fun tp!13024 () Bool)

(declare-fun b_and!9921 () Bool)

(assert (=> b!158561 (= tp!13024 b_and!9921)))

(declare-fun b!158559 () Bool)

(declare-fun res!74891 () Bool)

(declare-fun e!103850 () Bool)

(assert (=> b!158559 (=> (not res!74891) (not e!103850))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158559 (= res!74891 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158560 () Bool)

(declare-fun res!74890 () Bool)

(assert (=> b!158560 (=> (not res!74890) (not e!103850))))

(declare-datatypes ((V!4035 0))(
  ( (V!4036 (val!1690 Int)) )
))
(declare-datatypes ((ValueCell!1302 0))(
  ( (ValueCellFull!1302 (v!3551 V!4035)) (EmptyCell!1302) )
))
(declare-datatypes ((array!5652 0))(
  ( (array!5653 (arr!2674 (Array (_ BitVec 32) (_ BitVec 64))) (size!2957 (_ BitVec 32))) )
))
(declare-datatypes ((array!5654 0))(
  ( (array!5655 (arr!2675 (Array (_ BitVec 32) ValueCell!1302)) (size!2958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1512 0))(
  ( (LongMapFixedSize!1513 (defaultEntry!3198 Int) (mask!7721 (_ BitVec 32)) (extraKeys!2939 (_ BitVec 32)) (zeroValue!3041 V!4035) (minValue!3041 V!4035) (_size!805 (_ BitVec 32)) (_keys!4989 array!5652) (_values!3181 array!5654) (_vacant!805 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1512)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158560 (= res!74890 (validMask!0 (mask!7721 thiss!1248)))))

(declare-fun tp_is_empty!3291 () Bool)

(declare-fun e!103852 () Bool)

(declare-fun e!103851 () Bool)

(declare-fun array_inv!1693 (array!5652) Bool)

(declare-fun array_inv!1694 (array!5654) Bool)

(assert (=> b!158561 (= e!103851 (and tp!13024 tp_is_empty!3291 (array_inv!1693 (_keys!4989 thiss!1248)) (array_inv!1694 (_values!3181 thiss!1248)) e!103852))))

(declare-fun b!158562 () Bool)

(assert (=> b!158562 (= e!103850 (and (= (size!2958 (_values!3181 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7721 thiss!1248))) (= (size!2957 (_keys!4989 thiss!1248)) (size!2958 (_values!3181 thiss!1248))) (bvsge (mask!7721 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2939 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!2939 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158563 () Bool)

(declare-fun e!103853 () Bool)

(assert (=> b!158563 (= e!103853 tp_is_empty!3291)))

(declare-fun mapIsEmpty!5611 () Bool)

(declare-fun mapRes!5611 () Bool)

(assert (=> mapIsEmpty!5611 mapRes!5611))

(declare-fun res!74892 () Bool)

(assert (=> start!15976 (=> (not res!74892) (not e!103850))))

(declare-fun valid!709 (LongMapFixedSize!1512) Bool)

(assert (=> start!15976 (= res!74892 (valid!709 thiss!1248))))

(assert (=> start!15976 e!103850))

(assert (=> start!15976 e!103851))

(assert (=> start!15976 true))

(declare-fun b!158564 () Bool)

(declare-fun e!103849 () Bool)

(assert (=> b!158564 (= e!103849 tp_is_empty!3291)))

(declare-fun b!158565 () Bool)

(assert (=> b!158565 (= e!103852 (and e!103849 mapRes!5611))))

(declare-fun condMapEmpty!5611 () Bool)

(declare-fun mapDefault!5611 () ValueCell!1302)

(assert (=> b!158565 (= condMapEmpty!5611 (= (arr!2675 (_values!3181 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1302)) mapDefault!5611)))))

(declare-fun b!158566 () Bool)

(declare-fun res!74893 () Bool)

(assert (=> b!158566 (=> (not res!74893) (not e!103850))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!311 0))(
  ( (MissingZero!311 (index!3412 (_ BitVec 32))) (Found!311 (index!3413 (_ BitVec 32))) (Intermediate!311 (undefined!1123 Bool) (index!3414 (_ BitVec 32)) (x!17518 (_ BitVec 32))) (Undefined!311) (MissingVacant!311 (index!3415 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5652 (_ BitVec 32)) SeekEntryResult!311)

(assert (=> b!158566 (= res!74893 ((_ is Undefined!311) (seekEntryOrOpen!0 key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248))))))

(declare-fun mapNonEmpty!5611 () Bool)

(declare-fun tp!13023 () Bool)

(assert (=> mapNonEmpty!5611 (= mapRes!5611 (and tp!13023 e!103853))))

(declare-fun mapRest!5611 () (Array (_ BitVec 32) ValueCell!1302))

(declare-fun mapKey!5611 () (_ BitVec 32))

(declare-fun mapValue!5611 () ValueCell!1302)

(assert (=> mapNonEmpty!5611 (= (arr!2675 (_values!3181 thiss!1248)) (store mapRest!5611 mapKey!5611 mapValue!5611))))

(assert (= (and start!15976 res!74892) b!158559))

(assert (= (and b!158559 res!74891) b!158566))

(assert (= (and b!158566 res!74893) b!158560))

(assert (= (and b!158560 res!74890) b!158562))

(assert (= (and b!158565 condMapEmpty!5611) mapIsEmpty!5611))

(assert (= (and b!158565 (not condMapEmpty!5611)) mapNonEmpty!5611))

(assert (= (and mapNonEmpty!5611 ((_ is ValueCellFull!1302) mapValue!5611)) b!158563))

(assert (= (and b!158565 ((_ is ValueCellFull!1302) mapDefault!5611)) b!158564))

(assert (= b!158561 b!158565))

(assert (= start!15976 b!158561))

(declare-fun m!191225 () Bool)

(assert (=> b!158560 m!191225))

(declare-fun m!191227 () Bool)

(assert (=> mapNonEmpty!5611 m!191227))

(declare-fun m!191229 () Bool)

(assert (=> start!15976 m!191229))

(declare-fun m!191231 () Bool)

(assert (=> b!158566 m!191231))

(declare-fun m!191233 () Bool)

(assert (=> b!158561 m!191233))

(declare-fun m!191235 () Bool)

(assert (=> b!158561 m!191235))

(check-sat (not b!158566) (not b_next!3489) (not b!158561) (not start!15976) (not b!158560) (not mapNonEmpty!5611) b_and!9921 tp_is_empty!3291)
(check-sat b_and!9921 (not b_next!3489))
(get-model)

(declare-fun d!51115 () Bool)

(assert (=> d!51115 (= (validMask!0 (mask!7721 thiss!1248)) (and (or (= (mask!7721 thiss!1248) #b00000000000000000000000000000111) (= (mask!7721 thiss!1248) #b00000000000000000000000000001111) (= (mask!7721 thiss!1248) #b00000000000000000000000000011111) (= (mask!7721 thiss!1248) #b00000000000000000000000000111111) (= (mask!7721 thiss!1248) #b00000000000000000000000001111111) (= (mask!7721 thiss!1248) #b00000000000000000000000011111111) (= (mask!7721 thiss!1248) #b00000000000000000000000111111111) (= (mask!7721 thiss!1248) #b00000000000000000000001111111111) (= (mask!7721 thiss!1248) #b00000000000000000000011111111111) (= (mask!7721 thiss!1248) #b00000000000000000000111111111111) (= (mask!7721 thiss!1248) #b00000000000000000001111111111111) (= (mask!7721 thiss!1248) #b00000000000000000011111111111111) (= (mask!7721 thiss!1248) #b00000000000000000111111111111111) (= (mask!7721 thiss!1248) #b00000000000000001111111111111111) (= (mask!7721 thiss!1248) #b00000000000000011111111111111111) (= (mask!7721 thiss!1248) #b00000000000000111111111111111111) (= (mask!7721 thiss!1248) #b00000000000001111111111111111111) (= (mask!7721 thiss!1248) #b00000000000011111111111111111111) (= (mask!7721 thiss!1248) #b00000000000111111111111111111111) (= (mask!7721 thiss!1248) #b00000000001111111111111111111111) (= (mask!7721 thiss!1248) #b00000000011111111111111111111111) (= (mask!7721 thiss!1248) #b00000000111111111111111111111111) (= (mask!7721 thiss!1248) #b00000001111111111111111111111111) (= (mask!7721 thiss!1248) #b00000011111111111111111111111111) (= (mask!7721 thiss!1248) #b00000111111111111111111111111111) (= (mask!7721 thiss!1248) #b00001111111111111111111111111111) (= (mask!7721 thiss!1248) #b00011111111111111111111111111111) (= (mask!7721 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7721 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158560 d!51115))

(declare-fun d!51117 () Bool)

(declare-fun res!74912 () Bool)

(declare-fun e!103875 () Bool)

(assert (=> d!51117 (=> (not res!74912) (not e!103875))))

(declare-fun simpleValid!113 (LongMapFixedSize!1512) Bool)

(assert (=> d!51117 (= res!74912 (simpleValid!113 thiss!1248))))

(assert (=> d!51117 (= (valid!709 thiss!1248) e!103875)))

(declare-fun b!158597 () Bool)

(declare-fun res!74913 () Bool)

(assert (=> b!158597 (=> (not res!74913) (not e!103875))))

(declare-fun arrayCountValidKeys!0 (array!5652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158597 (= res!74913 (= (arrayCountValidKeys!0 (_keys!4989 thiss!1248) #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))) (_size!805 thiss!1248)))))

(declare-fun b!158598 () Bool)

(declare-fun res!74914 () Bool)

(assert (=> b!158598 (=> (not res!74914) (not e!103875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5652 (_ BitVec 32)) Bool)

(assert (=> b!158598 (= res!74914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(declare-fun b!158599 () Bool)

(declare-datatypes ((List!1905 0))(
  ( (Nil!1902) (Cons!1901 (h!2513 (_ BitVec 64)) (t!6715 List!1905)) )
))
(declare-fun arrayNoDuplicates!0 (array!5652 (_ BitVec 32) List!1905) Bool)

(assert (=> b!158599 (= e!103875 (arrayNoDuplicates!0 (_keys!4989 thiss!1248) #b00000000000000000000000000000000 Nil!1902))))

(assert (= (and d!51117 res!74912) b!158597))

(assert (= (and b!158597 res!74913) b!158598))

(assert (= (and b!158598 res!74914) b!158599))

(declare-fun m!191249 () Bool)

(assert (=> d!51117 m!191249))

(declare-fun m!191251 () Bool)

(assert (=> b!158597 m!191251))

(declare-fun m!191253 () Bool)

(assert (=> b!158598 m!191253))

(declare-fun m!191255 () Bool)

(assert (=> b!158599 m!191255))

(assert (=> start!15976 d!51117))

(declare-fun b!158612 () Bool)

(declare-fun e!103884 () SeekEntryResult!311)

(declare-fun lt!81912 () SeekEntryResult!311)

(assert (=> b!158612 (= e!103884 (Found!311 (index!3414 lt!81912)))))

(declare-fun e!103883 () SeekEntryResult!311)

(declare-fun b!158613 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5652 (_ BitVec 32)) SeekEntryResult!311)

(assert (=> b!158613 (= e!103883 (seekKeyOrZeroReturnVacant!0 (x!17518 lt!81912) (index!3414 lt!81912) (index!3414 lt!81912) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(declare-fun d!51119 () Bool)

(declare-fun lt!81913 () SeekEntryResult!311)

(assert (=> d!51119 (and (or ((_ is Undefined!311) lt!81913) (not ((_ is Found!311) lt!81913)) (and (bvsge (index!3413 lt!81913) #b00000000000000000000000000000000) (bvslt (index!3413 lt!81913) (size!2957 (_keys!4989 thiss!1248))))) (or ((_ is Undefined!311) lt!81913) ((_ is Found!311) lt!81913) (not ((_ is MissingZero!311) lt!81913)) (and (bvsge (index!3412 lt!81913) #b00000000000000000000000000000000) (bvslt (index!3412 lt!81913) (size!2957 (_keys!4989 thiss!1248))))) (or ((_ is Undefined!311) lt!81913) ((_ is Found!311) lt!81913) ((_ is MissingZero!311) lt!81913) (not ((_ is MissingVacant!311) lt!81913)) (and (bvsge (index!3415 lt!81913) #b00000000000000000000000000000000) (bvslt (index!3415 lt!81913) (size!2957 (_keys!4989 thiss!1248))))) (or ((_ is Undefined!311) lt!81913) (ite ((_ is Found!311) lt!81913) (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3413 lt!81913)) key!828) (ite ((_ is MissingZero!311) lt!81913) (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3412 lt!81913)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!311) lt!81913) (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3415 lt!81913)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!103882 () SeekEntryResult!311)

(assert (=> d!51119 (= lt!81913 e!103882)))

(declare-fun c!29839 () Bool)

(assert (=> d!51119 (= c!29839 (and ((_ is Intermediate!311) lt!81912) (undefined!1123 lt!81912)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5652 (_ BitVec 32)) SeekEntryResult!311)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51119 (= lt!81912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7721 thiss!1248)) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(assert (=> d!51119 (validMask!0 (mask!7721 thiss!1248))))

(assert (=> d!51119 (= (seekEntryOrOpen!0 key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)) lt!81913)))

(declare-fun b!158614 () Bool)

(declare-fun c!29841 () Bool)

(declare-fun lt!81914 () (_ BitVec 64))

(assert (=> b!158614 (= c!29841 (= lt!81914 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158614 (= e!103884 e!103883)))

(declare-fun b!158615 () Bool)

(assert (=> b!158615 (= e!103883 (MissingZero!311 (index!3414 lt!81912)))))

(declare-fun b!158616 () Bool)

(assert (=> b!158616 (= e!103882 Undefined!311)))

(declare-fun b!158617 () Bool)

(assert (=> b!158617 (= e!103882 e!103884)))

(assert (=> b!158617 (= lt!81914 (select (arr!2674 (_keys!4989 thiss!1248)) (index!3414 lt!81912)))))

(declare-fun c!29840 () Bool)

(assert (=> b!158617 (= c!29840 (= lt!81914 key!828))))

(assert (= (and d!51119 c!29839) b!158616))

(assert (= (and d!51119 (not c!29839)) b!158617))

(assert (= (and b!158617 c!29840) b!158612))

(assert (= (and b!158617 (not c!29840)) b!158614))

(assert (= (and b!158614 c!29841) b!158615))

(assert (= (and b!158614 (not c!29841)) b!158613))

(declare-fun m!191257 () Bool)

(assert (=> b!158613 m!191257))

(assert (=> d!51119 m!191225))

(declare-fun m!191259 () Bool)

(assert (=> d!51119 m!191259))

(declare-fun m!191261 () Bool)

(assert (=> d!51119 m!191261))

(declare-fun m!191263 () Bool)

(assert (=> d!51119 m!191263))

(declare-fun m!191265 () Bool)

(assert (=> d!51119 m!191265))

(assert (=> d!51119 m!191265))

(declare-fun m!191267 () Bool)

(assert (=> d!51119 m!191267))

(declare-fun m!191269 () Bool)

(assert (=> b!158617 m!191269))

(assert (=> b!158566 d!51119))

(declare-fun d!51121 () Bool)

(assert (=> d!51121 (= (array_inv!1693 (_keys!4989 thiss!1248)) (bvsge (size!2957 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158561 d!51121))

(declare-fun d!51123 () Bool)

(assert (=> d!51123 (= (array_inv!1694 (_values!3181 thiss!1248)) (bvsge (size!2958 (_values!3181 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158561 d!51123))

(declare-fun condMapEmpty!5617 () Bool)

(declare-fun mapDefault!5617 () ValueCell!1302)

(assert (=> mapNonEmpty!5611 (= condMapEmpty!5617 (= mapRest!5611 ((as const (Array (_ BitVec 32) ValueCell!1302)) mapDefault!5617)))))

(declare-fun e!103890 () Bool)

(declare-fun mapRes!5617 () Bool)

(assert (=> mapNonEmpty!5611 (= tp!13023 (and e!103890 mapRes!5617))))

(declare-fun b!158624 () Bool)

(declare-fun e!103889 () Bool)

(assert (=> b!158624 (= e!103889 tp_is_empty!3291)))

(declare-fun mapNonEmpty!5617 () Bool)

(declare-fun tp!13033 () Bool)

(assert (=> mapNonEmpty!5617 (= mapRes!5617 (and tp!13033 e!103889))))

(declare-fun mapRest!5617 () (Array (_ BitVec 32) ValueCell!1302))

(declare-fun mapKey!5617 () (_ BitVec 32))

(declare-fun mapValue!5617 () ValueCell!1302)

(assert (=> mapNonEmpty!5617 (= mapRest!5611 (store mapRest!5617 mapKey!5617 mapValue!5617))))

(declare-fun mapIsEmpty!5617 () Bool)

(assert (=> mapIsEmpty!5617 mapRes!5617))

(declare-fun b!158625 () Bool)

(assert (=> b!158625 (= e!103890 tp_is_empty!3291)))

(assert (= (and mapNonEmpty!5611 condMapEmpty!5617) mapIsEmpty!5617))

(assert (= (and mapNonEmpty!5611 (not condMapEmpty!5617)) mapNonEmpty!5617))

(assert (= (and mapNonEmpty!5617 ((_ is ValueCellFull!1302) mapValue!5617)) b!158624))

(assert (= (and mapNonEmpty!5611 ((_ is ValueCellFull!1302) mapDefault!5617)) b!158625))

(declare-fun m!191271 () Bool)

(assert (=> mapNonEmpty!5617 m!191271))

(check-sat (not b!158598) (not d!51117) (not b_next!3489) (not d!51119) (not b!158597) (not b!158599) (not b!158613) (not mapNonEmpty!5617) b_and!9921 tp_is_empty!3291)
(check-sat b_and!9921 (not b_next!3489))
(get-model)

(declare-fun d!51125 () Bool)

(declare-fun res!74923 () Bool)

(declare-fun e!103900 () Bool)

(assert (=> d!51125 (=> res!74923 e!103900)))

(assert (=> d!51125 (= res!74923 (bvsge #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))))))

(assert (=> d!51125 (= (arrayNoDuplicates!0 (_keys!4989 thiss!1248) #b00000000000000000000000000000000 Nil!1902) e!103900)))

(declare-fun b!158636 () Bool)

(declare-fun e!103902 () Bool)

(declare-fun e!103899 () Bool)

(assert (=> b!158636 (= e!103902 e!103899)))

(declare-fun c!29844 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!158636 (= c!29844 (validKeyInArray!0 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158637 () Bool)

(assert (=> b!158637 (= e!103900 e!103902)))

(declare-fun res!74921 () Bool)

(assert (=> b!158637 (=> (not res!74921) (not e!103902))))

(declare-fun e!103901 () Bool)

(assert (=> b!158637 (= res!74921 (not e!103901))))

(declare-fun res!74922 () Bool)

(assert (=> b!158637 (=> (not res!74922) (not e!103901))))

(assert (=> b!158637 (= res!74922 (validKeyInArray!0 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158638 () Bool)

(declare-fun contains!976 (List!1905 (_ BitVec 64)) Bool)

(assert (=> b!158638 (= e!103901 (contains!976 Nil!1902 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17258 () Bool)

(declare-fun call!17261 () Bool)

(assert (=> bm!17258 (= call!17261 (arrayNoDuplicates!0 (_keys!4989 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29844 (Cons!1901 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000) Nil!1902) Nil!1902)))))

(declare-fun b!158639 () Bool)

(assert (=> b!158639 (= e!103899 call!17261)))

(declare-fun b!158640 () Bool)

(assert (=> b!158640 (= e!103899 call!17261)))

(assert (= (and d!51125 (not res!74923)) b!158637))

(assert (= (and b!158637 res!74922) b!158638))

(assert (= (and b!158637 res!74921) b!158636))

(assert (= (and b!158636 c!29844) b!158640))

(assert (= (and b!158636 (not c!29844)) b!158639))

(assert (= (or b!158640 b!158639) bm!17258))

(declare-fun m!191273 () Bool)

(assert (=> b!158636 m!191273))

(assert (=> b!158636 m!191273))

(declare-fun m!191275 () Bool)

(assert (=> b!158636 m!191275))

(assert (=> b!158637 m!191273))

(assert (=> b!158637 m!191273))

(assert (=> b!158637 m!191275))

(assert (=> b!158638 m!191273))

(assert (=> b!158638 m!191273))

(declare-fun m!191277 () Bool)

(assert (=> b!158638 m!191277))

(assert (=> bm!17258 m!191273))

(declare-fun m!191279 () Bool)

(assert (=> bm!17258 m!191279))

(assert (=> b!158599 d!51125))

(declare-fun d!51127 () Bool)

(declare-fun lt!81920 () SeekEntryResult!311)

(assert (=> d!51127 (and (or ((_ is Undefined!311) lt!81920) (not ((_ is Found!311) lt!81920)) (and (bvsge (index!3413 lt!81920) #b00000000000000000000000000000000) (bvslt (index!3413 lt!81920) (size!2957 (_keys!4989 thiss!1248))))) (or ((_ is Undefined!311) lt!81920) ((_ is Found!311) lt!81920) (not ((_ is MissingVacant!311) lt!81920)) (not (= (index!3415 lt!81920) (index!3414 lt!81912))) (and (bvsge (index!3415 lt!81920) #b00000000000000000000000000000000) (bvslt (index!3415 lt!81920) (size!2957 (_keys!4989 thiss!1248))))) (or ((_ is Undefined!311) lt!81920) (ite ((_ is Found!311) lt!81920) (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3413 lt!81920)) key!828) (and ((_ is MissingVacant!311) lt!81920) (= (index!3415 lt!81920) (index!3414 lt!81912)) (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3415 lt!81920)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!103910 () SeekEntryResult!311)

(assert (=> d!51127 (= lt!81920 e!103910)))

(declare-fun c!29853 () Bool)

(assert (=> d!51127 (= c!29853 (bvsge (x!17518 lt!81912) #b01111111111111111111111111111110))))

(declare-fun lt!81919 () (_ BitVec 64))

(assert (=> d!51127 (= lt!81919 (select (arr!2674 (_keys!4989 thiss!1248)) (index!3414 lt!81912)))))

(assert (=> d!51127 (validMask!0 (mask!7721 thiss!1248))))

(assert (=> d!51127 (= (seekKeyOrZeroReturnVacant!0 (x!17518 lt!81912) (index!3414 lt!81912) (index!3414 lt!81912) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)) lt!81920)))

(declare-fun b!158653 () Bool)

(assert (=> b!158653 (= e!103910 Undefined!311)))

(declare-fun b!158654 () Bool)

(declare-fun e!103911 () SeekEntryResult!311)

(assert (=> b!158654 (= e!103911 (MissingVacant!311 (index!3414 lt!81912)))))

(declare-fun b!158655 () Bool)

(declare-fun e!103909 () SeekEntryResult!311)

(assert (=> b!158655 (= e!103909 (Found!311 (index!3414 lt!81912)))))

(declare-fun b!158656 () Bool)

(declare-fun c!29852 () Bool)

(assert (=> b!158656 (= c!29852 (= lt!81919 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158656 (= e!103909 e!103911)))

(declare-fun b!158657 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158657 (= e!103911 (seekKeyOrZeroReturnVacant!0 (bvadd (x!17518 lt!81912) #b00000000000000000000000000000001) (nextIndex!0 (index!3414 lt!81912) (x!17518 lt!81912) (mask!7721 thiss!1248)) (index!3414 lt!81912) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(declare-fun b!158658 () Bool)

(assert (=> b!158658 (= e!103910 e!103909)))

(declare-fun c!29851 () Bool)

(assert (=> b!158658 (= c!29851 (= lt!81919 key!828))))

(assert (= (and d!51127 c!29853) b!158653))

(assert (= (and d!51127 (not c!29853)) b!158658))

(assert (= (and b!158658 c!29851) b!158655))

(assert (= (and b!158658 (not c!29851)) b!158656))

(assert (= (and b!158656 c!29852) b!158654))

(assert (= (and b!158656 (not c!29852)) b!158657))

(declare-fun m!191281 () Bool)

(assert (=> d!51127 m!191281))

(declare-fun m!191283 () Bool)

(assert (=> d!51127 m!191283))

(assert (=> d!51127 m!191269))

(assert (=> d!51127 m!191225))

(declare-fun m!191285 () Bool)

(assert (=> b!158657 m!191285))

(assert (=> b!158657 m!191285))

(declare-fun m!191287 () Bool)

(assert (=> b!158657 m!191287))

(assert (=> b!158613 d!51127))

(declare-fun b!158667 () Bool)

(declare-fun e!103917 () (_ BitVec 32))

(declare-fun e!103916 () (_ BitVec 32))

(assert (=> b!158667 (= e!103917 e!103916)))

(declare-fun c!29858 () Bool)

(assert (=> b!158667 (= c!29858 (validKeyInArray!0 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51129 () Bool)

(declare-fun lt!81923 () (_ BitVec 32))

(assert (=> d!51129 (and (bvsge lt!81923 #b00000000000000000000000000000000) (bvsle lt!81923 (bvsub (size!2957 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51129 (= lt!81923 e!103917)))

(declare-fun c!29859 () Bool)

(assert (=> d!51129 (= c!29859 (bvsge #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))))))

(assert (=> d!51129 (and (bvsle #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2957 (_keys!4989 thiss!1248)) (size!2957 (_keys!4989 thiss!1248))))))

(assert (=> d!51129 (= (arrayCountValidKeys!0 (_keys!4989 thiss!1248) #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))) lt!81923)))

(declare-fun b!158668 () Bool)

(assert (=> b!158668 (= e!103917 #b00000000000000000000000000000000)))

(declare-fun b!158669 () Bool)

(declare-fun call!17264 () (_ BitVec 32))

(assert (=> b!158669 (= e!103916 call!17264)))

(declare-fun b!158670 () Bool)

(assert (=> b!158670 (= e!103916 (bvadd #b00000000000000000000000000000001 call!17264))))

(declare-fun bm!17261 () Bool)

(assert (=> bm!17261 (= call!17264 (arrayCountValidKeys!0 (_keys!4989 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2957 (_keys!4989 thiss!1248))))))

(assert (= (and d!51129 c!29859) b!158668))

(assert (= (and d!51129 (not c!29859)) b!158667))

(assert (= (and b!158667 c!29858) b!158670))

(assert (= (and b!158667 (not c!29858)) b!158669))

(assert (= (or b!158670 b!158669) bm!17261))

(assert (=> b!158667 m!191273))

(assert (=> b!158667 m!191273))

(assert (=> b!158667 m!191275))

(declare-fun m!191289 () Bool)

(assert (=> bm!17261 m!191289))

(assert (=> b!158597 d!51129))

(declare-fun b!158680 () Bool)

(declare-fun res!74934 () Bool)

(declare-fun e!103920 () Bool)

(assert (=> b!158680 (=> (not res!74934) (not e!103920))))

(declare-fun size!2961 (LongMapFixedSize!1512) (_ BitVec 32))

(assert (=> b!158680 (= res!74934 (bvsge (size!2961 thiss!1248) (_size!805 thiss!1248)))))

(declare-fun d!51131 () Bool)

(declare-fun res!74933 () Bool)

(assert (=> d!51131 (=> (not res!74933) (not e!103920))))

(assert (=> d!51131 (= res!74933 (validMask!0 (mask!7721 thiss!1248)))))

(assert (=> d!51131 (= (simpleValid!113 thiss!1248) e!103920)))

(declare-fun b!158682 () Bool)

(assert (=> b!158682 (= e!103920 (and (bvsge (extraKeys!2939 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2939 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!805 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!158681 () Bool)

(declare-fun res!74932 () Bool)

(assert (=> b!158681 (=> (not res!74932) (not e!103920))))

(assert (=> b!158681 (= res!74932 (= (size!2961 thiss!1248) (bvadd (_size!805 thiss!1248) (bvsdiv (bvadd (extraKeys!2939 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!158679 () Bool)

(declare-fun res!74935 () Bool)

(assert (=> b!158679 (=> (not res!74935) (not e!103920))))

(assert (=> b!158679 (= res!74935 (and (= (size!2958 (_values!3181 thiss!1248)) (bvadd (mask!7721 thiss!1248) #b00000000000000000000000000000001)) (= (size!2957 (_keys!4989 thiss!1248)) (size!2958 (_values!3181 thiss!1248))) (bvsge (_size!805 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!805 thiss!1248) (bvadd (mask!7721 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!51131 res!74933) b!158679))

(assert (= (and b!158679 res!74935) b!158680))

(assert (= (and b!158680 res!74934) b!158681))

(assert (= (and b!158681 res!74932) b!158682))

(declare-fun m!191291 () Bool)

(assert (=> b!158680 m!191291))

(assert (=> d!51131 m!191225))

(assert (=> b!158681 m!191291))

(assert (=> d!51117 d!51131))

(declare-fun b!158701 () Bool)

(declare-fun lt!81929 () SeekEntryResult!311)

(assert (=> b!158701 (and (bvsge (index!3414 lt!81929) #b00000000000000000000000000000000) (bvslt (index!3414 lt!81929) (size!2957 (_keys!4989 thiss!1248))))))

(declare-fun res!74943 () Bool)

(assert (=> b!158701 (= res!74943 (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3414 lt!81929)) key!828))))

(declare-fun e!103931 () Bool)

(assert (=> b!158701 (=> res!74943 e!103931)))

(declare-fun e!103932 () Bool)

(assert (=> b!158701 (= e!103932 e!103931)))

(declare-fun b!158702 () Bool)

(declare-fun e!103935 () Bool)

(assert (=> b!158702 (= e!103935 (bvsge (x!17518 lt!81929) #b01111111111111111111111111111110))))

(declare-fun b!158703 () Bool)

(declare-fun e!103934 () SeekEntryResult!311)

(assert (=> b!158703 (= e!103934 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7721 thiss!1248)) #b00000000000000000000000000000000 (mask!7721 thiss!1248)) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(declare-fun b!158704 () Bool)

(assert (=> b!158704 (and (bvsge (index!3414 lt!81929) #b00000000000000000000000000000000) (bvslt (index!3414 lt!81929) (size!2957 (_keys!4989 thiss!1248))))))

(declare-fun res!74944 () Bool)

(assert (=> b!158704 (= res!74944 (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3414 lt!81929)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158704 (=> res!74944 e!103931)))

(declare-fun b!158705 () Bool)

(assert (=> b!158705 (and (bvsge (index!3414 lt!81929) #b00000000000000000000000000000000) (bvslt (index!3414 lt!81929) (size!2957 (_keys!4989 thiss!1248))))))

(assert (=> b!158705 (= e!103931 (= (select (arr!2674 (_keys!4989 thiss!1248)) (index!3414 lt!81929)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!158706 () Bool)

(declare-fun e!103933 () SeekEntryResult!311)

(assert (=> b!158706 (= e!103933 (Intermediate!311 true (toIndex!0 key!828 (mask!7721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!158707 () Bool)

(assert (=> b!158707 (= e!103934 (Intermediate!311 false (toIndex!0 key!828 (mask!7721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun d!51133 () Bool)

(assert (=> d!51133 e!103935))

(declare-fun c!29868 () Bool)

(assert (=> d!51133 (= c!29868 (and ((_ is Intermediate!311) lt!81929) (undefined!1123 lt!81929)))))

(assert (=> d!51133 (= lt!81929 e!103933)))

(declare-fun c!29866 () Bool)

(assert (=> d!51133 (= c!29866 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!81928 () (_ BitVec 64))

(assert (=> d!51133 (= lt!81928 (select (arr!2674 (_keys!4989 thiss!1248)) (toIndex!0 key!828 (mask!7721 thiss!1248))))))

(assert (=> d!51133 (validMask!0 (mask!7721 thiss!1248))))

(assert (=> d!51133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7721 thiss!1248)) key!828 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)) lt!81929)))

(declare-fun b!158708 () Bool)

(assert (=> b!158708 (= e!103933 e!103934)))

(declare-fun c!29867 () Bool)

(assert (=> b!158708 (= c!29867 (or (= lt!81928 key!828) (= (bvadd lt!81928 lt!81928) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!158709 () Bool)

(assert (=> b!158709 (= e!103935 e!103932)))

(declare-fun res!74942 () Bool)

(assert (=> b!158709 (= res!74942 (and ((_ is Intermediate!311) lt!81929) (not (undefined!1123 lt!81929)) (bvslt (x!17518 lt!81929) #b01111111111111111111111111111110) (bvsge (x!17518 lt!81929) #b00000000000000000000000000000000) (bvsge (x!17518 lt!81929) #b00000000000000000000000000000000)))))

(assert (=> b!158709 (=> (not res!74942) (not e!103932))))

(assert (= (and d!51133 c!29866) b!158706))

(assert (= (and d!51133 (not c!29866)) b!158708))

(assert (= (and b!158708 c!29867) b!158707))

(assert (= (and b!158708 (not c!29867)) b!158703))

(assert (= (and d!51133 c!29868) b!158702))

(assert (= (and d!51133 (not c!29868)) b!158709))

(assert (= (and b!158709 res!74942) b!158701))

(assert (= (and b!158701 (not res!74943)) b!158704))

(assert (= (and b!158704 (not res!74944)) b!158705))

(assert (=> d!51133 m!191265))

(declare-fun m!191293 () Bool)

(assert (=> d!51133 m!191293))

(assert (=> d!51133 m!191225))

(assert (=> b!158703 m!191265))

(declare-fun m!191295 () Bool)

(assert (=> b!158703 m!191295))

(assert (=> b!158703 m!191295))

(declare-fun m!191297 () Bool)

(assert (=> b!158703 m!191297))

(declare-fun m!191299 () Bool)

(assert (=> b!158704 m!191299))

(assert (=> b!158701 m!191299))

(assert (=> b!158705 m!191299))

(assert (=> d!51119 d!51133))

(declare-fun d!51135 () Bool)

(declare-fun lt!81935 () (_ BitVec 32))

(declare-fun lt!81934 () (_ BitVec 32))

(assert (=> d!51135 (= lt!81935 (bvmul (bvxor lt!81934 (bvlshr lt!81934 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51135 (= lt!81934 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51135 (and (bvsge (mask!7721 thiss!1248) #b00000000000000000000000000000000) (let ((res!74945 (let ((h!2514 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!17536 (bvmul (bvxor h!2514 (bvlshr h!2514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!17536 (bvlshr x!17536 #b00000000000000000000000000001101)) (mask!7721 thiss!1248)))))) (and (bvslt res!74945 (bvadd (mask!7721 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!74945 #b00000000000000000000000000000000))))))

(assert (=> d!51135 (= (toIndex!0 key!828 (mask!7721 thiss!1248)) (bvand (bvxor lt!81935 (bvlshr lt!81935 #b00000000000000000000000000001101)) (mask!7721 thiss!1248)))))

(assert (=> d!51119 d!51135))

(assert (=> d!51119 d!51115))

(declare-fun b!158718 () Bool)

(declare-fun e!103944 () Bool)

(declare-fun e!103943 () Bool)

(assert (=> b!158718 (= e!103944 e!103943)))

(declare-fun lt!81942 () (_ BitVec 64))

(assert (=> b!158718 (= lt!81942 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4986 0))(
  ( (Unit!4987) )
))
(declare-fun lt!81944 () Unit!4986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5652 (_ BitVec 64) (_ BitVec 32)) Unit!4986)

(assert (=> b!158718 (= lt!81944 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4989 thiss!1248) lt!81942 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!158718 (arrayContainsKey!0 (_keys!4989 thiss!1248) lt!81942 #b00000000000000000000000000000000)))

(declare-fun lt!81943 () Unit!4986)

(assert (=> b!158718 (= lt!81943 lt!81944)))

(declare-fun res!74951 () Bool)

(assert (=> b!158718 (= res!74951 (= (seekEntryOrOpen!0 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000) (_keys!4989 thiss!1248) (mask!7721 thiss!1248)) (Found!311 #b00000000000000000000000000000000)))))

(assert (=> b!158718 (=> (not res!74951) (not e!103943))))

(declare-fun b!158719 () Bool)

(declare-fun e!103942 () Bool)

(assert (=> b!158719 (= e!103942 e!103944)))

(declare-fun c!29871 () Bool)

(assert (=> b!158719 (= c!29871 (validKeyInArray!0 (select (arr!2674 (_keys!4989 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17264 () Bool)

(declare-fun call!17267 () Bool)

(assert (=> bm!17264 (= call!17267 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4989 thiss!1248) (mask!7721 thiss!1248)))))

(declare-fun b!158720 () Bool)

(assert (=> b!158720 (= e!103944 call!17267)))

(declare-fun b!158721 () Bool)

(assert (=> b!158721 (= e!103943 call!17267)))

(declare-fun d!51137 () Bool)

(declare-fun res!74950 () Bool)

(assert (=> d!51137 (=> res!74950 e!103942)))

(assert (=> d!51137 (= res!74950 (bvsge #b00000000000000000000000000000000 (size!2957 (_keys!4989 thiss!1248))))))

(assert (=> d!51137 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4989 thiss!1248) (mask!7721 thiss!1248)) e!103942)))

(assert (= (and d!51137 (not res!74950)) b!158719))

(assert (= (and b!158719 c!29871) b!158718))

(assert (= (and b!158719 (not c!29871)) b!158720))

(assert (= (and b!158718 res!74951) b!158721))

(assert (= (or b!158721 b!158720) bm!17264))

(assert (=> b!158718 m!191273))

(declare-fun m!191301 () Bool)

(assert (=> b!158718 m!191301))

(declare-fun m!191303 () Bool)

(assert (=> b!158718 m!191303))

(assert (=> b!158718 m!191273))

(declare-fun m!191305 () Bool)

(assert (=> b!158718 m!191305))

(assert (=> b!158719 m!191273))

(assert (=> b!158719 m!191273))

(assert (=> b!158719 m!191275))

(declare-fun m!191307 () Bool)

(assert (=> bm!17264 m!191307))

(assert (=> b!158598 d!51137))

(declare-fun condMapEmpty!5618 () Bool)

(declare-fun mapDefault!5618 () ValueCell!1302)

(assert (=> mapNonEmpty!5617 (= condMapEmpty!5618 (= mapRest!5617 ((as const (Array (_ BitVec 32) ValueCell!1302)) mapDefault!5618)))))

(declare-fun e!103946 () Bool)

(declare-fun mapRes!5618 () Bool)

(assert (=> mapNonEmpty!5617 (= tp!13033 (and e!103946 mapRes!5618))))

(declare-fun b!158722 () Bool)

(declare-fun e!103945 () Bool)

(assert (=> b!158722 (= e!103945 tp_is_empty!3291)))

(declare-fun mapNonEmpty!5618 () Bool)

(declare-fun tp!13034 () Bool)

(assert (=> mapNonEmpty!5618 (= mapRes!5618 (and tp!13034 e!103945))))

(declare-fun mapRest!5618 () (Array (_ BitVec 32) ValueCell!1302))

(declare-fun mapKey!5618 () (_ BitVec 32))

(declare-fun mapValue!5618 () ValueCell!1302)

(assert (=> mapNonEmpty!5618 (= mapRest!5617 (store mapRest!5618 mapKey!5618 mapValue!5618))))

(declare-fun mapIsEmpty!5618 () Bool)

(assert (=> mapIsEmpty!5618 mapRes!5618))

(declare-fun b!158723 () Bool)

(assert (=> b!158723 (= e!103946 tp_is_empty!3291)))

(assert (= (and mapNonEmpty!5617 condMapEmpty!5618) mapIsEmpty!5618))

(assert (= (and mapNonEmpty!5617 (not condMapEmpty!5618)) mapNonEmpty!5618))

(assert (= (and mapNonEmpty!5618 ((_ is ValueCellFull!1302) mapValue!5618)) b!158722))

(assert (= (and mapNonEmpty!5617 ((_ is ValueCellFull!1302) mapDefault!5618)) b!158723))

(declare-fun m!191309 () Bool)

(assert (=> mapNonEmpty!5618 m!191309))

(check-sat (not b!158718) (not b!158638) (not b_next!3489) (not d!51127) (not bm!17258) (not d!51131) (not mapNonEmpty!5618) (not b!158681) (not bm!17261) b_and!9921 tp_is_empty!3291 (not b!158680) (not d!51133) (not b!158636) (not b!158637) (not b!158667) (not bm!17264) (not b!158719) (not b!158703) (not b!158657))
(check-sat b_and!9921 (not b_next!3489))
