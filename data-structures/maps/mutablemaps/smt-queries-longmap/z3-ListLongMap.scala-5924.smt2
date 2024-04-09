; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77152 () Bool)

(assert start!77152)

(declare-fun b!900136 () Bool)

(declare-fun b_free!16047 () Bool)

(declare-fun b_next!16047 () Bool)

(assert (=> b!900136 (= b_free!16047 (not b_next!16047))))

(declare-fun tp!56229 () Bool)

(declare-fun b_and!26385 () Bool)

(assert (=> b!900136 (= tp!56229 b_and!26385)))

(declare-fun mapIsEmpty!29236 () Bool)

(declare-fun mapRes!29236 () Bool)

(assert (=> mapIsEmpty!29236 mapRes!29236))

(declare-fun res!608018 () Bool)

(declare-fun e!503808 () Bool)

(assert (=> start!77152 (=> (not res!608018) (not e!503808))))

(declare-datatypes ((array!52784 0))(
  ( (array!52785 (arr!25360 (Array (_ BitVec 32) (_ BitVec 64))) (size!25820 (_ BitVec 32))) )
))
(declare-datatypes ((V!29465 0))(
  ( (V!29466 (val!9238 Int)) )
))
(declare-datatypes ((ValueCell!8706 0))(
  ( (ValueCellFull!8706 (v!11731 V!29465)) (EmptyCell!8706) )
))
(declare-datatypes ((array!52786 0))(
  ( (array!52787 (arr!25361 (Array (_ BitVec 32) ValueCell!8706)) (size!25821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4428 0))(
  ( (LongMapFixedSize!4429 (defaultEntry!5446 Int) (mask!26219 (_ BitVec 32)) (extraKeys!5171 (_ BitVec 32)) (zeroValue!5275 V!29465) (minValue!5275 V!29465) (_size!2269 (_ BitVec 32)) (_keys!10243 array!52784) (_values!5462 array!52786) (_vacant!2269 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4428)

(declare-fun valid!1685 (LongMapFixedSize!4428) Bool)

(assert (=> start!77152 (= res!608018 (valid!1685 thiss!1181))))

(assert (=> start!77152 e!503808))

(declare-fun e!503812 () Bool)

(assert (=> start!77152 e!503812))

(assert (=> start!77152 true))

(declare-fun b!900128 () Bool)

(declare-fun res!608014 () Bool)

(assert (=> b!900128 (=> (not res!608014) (not e!503808))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!900128 (= res!608014 (not (= key!785 (bvneg key!785))))))

(declare-fun b!900129 () Bool)

(declare-fun e!503811 () Bool)

(assert (=> b!900129 (= e!503808 (not e!503811))))

(declare-fun res!608017 () Bool)

(assert (=> b!900129 (=> res!608017 e!503811)))

(declare-datatypes ((SeekEntryResult!8924 0))(
  ( (MissingZero!8924 (index!38066 (_ BitVec 32))) (Found!8924 (index!38067 (_ BitVec 32))) (Intermediate!8924 (undefined!9736 Bool) (index!38068 (_ BitVec 32)) (x!76686 (_ BitVec 32))) (Undefined!8924) (MissingVacant!8924 (index!38069 (_ BitVec 32))) )
))
(declare-fun lt!406692 () SeekEntryResult!8924)

(get-info :version)

(assert (=> b!900129 (= res!608017 (not ((_ is Found!8924) lt!406692)))))

(declare-fun e!503807 () Bool)

(assert (=> b!900129 e!503807))

(declare-fun res!608013 () Bool)

(assert (=> b!900129 (=> res!608013 e!503807)))

(assert (=> b!900129 (= res!608013 (not ((_ is Found!8924) lt!406692)))))

(declare-datatypes ((Unit!30553 0))(
  ( (Unit!30554) )
))
(declare-fun lt!406694 () Unit!30553)

(declare-fun lemmaSeekEntryGivesInRangeIndex!106 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 64)) Unit!30553)

(assert (=> b!900129 (= lt!406694 (lemmaSeekEntryGivesInRangeIndex!106 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52784 (_ BitVec 32)) SeekEntryResult!8924)

(assert (=> b!900129 (= lt!406692 (seekEntry!0 key!785 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun b!900130 () Bool)

(declare-fun res!608015 () Bool)

(declare-fun e!503806 () Bool)

(assert (=> b!900130 (=> res!608015 e!503806)))

(assert (=> b!900130 (= res!608015 (or (not (= (size!25821 (_values!5462 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26219 thiss!1181)))) (not (= (size!25820 (_keys!10243 thiss!1181)) (size!25821 (_values!5462 thiss!1181)))) (bvslt (mask!26219 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5171 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5171 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900131 () Bool)

(declare-fun e!503805 () Bool)

(declare-fun tp_is_empty!18375 () Bool)

(assert (=> b!900131 (= e!503805 tp_is_empty!18375)))

(declare-fun b!900132 () Bool)

(declare-fun e!503813 () Bool)

(declare-fun e!503809 () Bool)

(assert (=> b!900132 (= e!503813 (and e!503809 mapRes!29236))))

(declare-fun condMapEmpty!29236 () Bool)

(declare-fun mapDefault!29236 () ValueCell!8706)

(assert (=> b!900132 (= condMapEmpty!29236 (= (arr!25361 (_values!5462 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8706)) mapDefault!29236)))))

(declare-fun b!900133 () Bool)

(assert (=> b!900133 (= e!503811 e!503806)))

(declare-fun res!608016 () Bool)

(assert (=> b!900133 (=> res!608016 e!503806)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900133 (= res!608016 (not (validMask!0 (mask!26219 thiss!1181))))))

(declare-datatypes ((tuple2!12070 0))(
  ( (tuple2!12071 (_1!6045 (_ BitVec 64)) (_2!6045 V!29465)) )
))
(declare-datatypes ((List!17929 0))(
  ( (Nil!17926) (Cons!17925 (h!19071 tuple2!12070) (t!25288 List!17929)) )
))
(declare-datatypes ((ListLongMap!10781 0))(
  ( (ListLongMap!10782 (toList!5406 List!17929)) )
))
(declare-fun contains!4413 (ListLongMap!10781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2649 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 32) Int) ListLongMap!10781)

(assert (=> b!900133 (contains!4413 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692)))))

(declare-fun lt!406693 () Unit!30553)

(declare-fun lemmaValidKeyInArrayIsInListMap!242 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 32) Int) Unit!30553)

(assert (=> b!900133 (= lt!406693 (lemmaValidKeyInArrayIsInListMap!242 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) (index!38067 lt!406692) (defaultEntry!5446 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900133 (arrayContainsKey!0 (_keys!10243 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406691 () Unit!30553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52784 (_ BitVec 64) (_ BitVec 32)) Unit!30553)

(assert (=> b!900133 (= lt!406691 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10243 thiss!1181) key!785 (index!38067 lt!406692)))))

(declare-fun b!900134 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52784 (_ BitVec 32)) Bool)

(assert (=> b!900134 (= e!503806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun b!900135 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900135 (= e!503807 (inRange!0 (index!38067 lt!406692) (mask!26219 thiss!1181)))))

(declare-fun mapNonEmpty!29236 () Bool)

(declare-fun tp!56230 () Bool)

(assert (=> mapNonEmpty!29236 (= mapRes!29236 (and tp!56230 e!503805))))

(declare-fun mapKey!29236 () (_ BitVec 32))

(declare-fun mapRest!29236 () (Array (_ BitVec 32) ValueCell!8706))

(declare-fun mapValue!29236 () ValueCell!8706)

(assert (=> mapNonEmpty!29236 (= (arr!25361 (_values!5462 thiss!1181)) (store mapRest!29236 mapKey!29236 mapValue!29236))))

(declare-fun array_inv!19872 (array!52784) Bool)

(declare-fun array_inv!19873 (array!52786) Bool)

(assert (=> b!900136 (= e!503812 (and tp!56229 tp_is_empty!18375 (array_inv!19872 (_keys!10243 thiss!1181)) (array_inv!19873 (_values!5462 thiss!1181)) e!503813))))

(declare-fun b!900137 () Bool)

(assert (=> b!900137 (= e!503809 tp_is_empty!18375)))

(assert (= (and start!77152 res!608018) b!900128))

(assert (= (and b!900128 res!608014) b!900129))

(assert (= (and b!900129 (not res!608013)) b!900135))

(assert (= (and b!900129 (not res!608017)) b!900133))

(assert (= (and b!900133 (not res!608016)) b!900130))

(assert (= (and b!900130 (not res!608015)) b!900134))

(assert (= (and b!900132 condMapEmpty!29236) mapIsEmpty!29236))

(assert (= (and b!900132 (not condMapEmpty!29236)) mapNonEmpty!29236))

(assert (= (and mapNonEmpty!29236 ((_ is ValueCellFull!8706) mapValue!29236)) b!900131))

(assert (= (and b!900132 ((_ is ValueCellFull!8706) mapDefault!29236)) b!900137))

(assert (= b!900136 b!900132))

(assert (= start!77152 b!900136))

(declare-fun m!836711 () Bool)

(assert (=> b!900133 m!836711))

(declare-fun m!836713 () Bool)

(assert (=> b!900133 m!836713))

(declare-fun m!836715 () Bool)

(assert (=> b!900133 m!836715))

(declare-fun m!836717 () Bool)

(assert (=> b!900133 m!836717))

(declare-fun m!836719 () Bool)

(assert (=> b!900133 m!836719))

(assert (=> b!900133 m!836713))

(declare-fun m!836721 () Bool)

(assert (=> b!900133 m!836721))

(assert (=> b!900133 m!836711))

(declare-fun m!836723 () Bool)

(assert (=> b!900133 m!836723))

(declare-fun m!836725 () Bool)

(assert (=> b!900135 m!836725))

(declare-fun m!836727 () Bool)

(assert (=> mapNonEmpty!29236 m!836727))

(declare-fun m!836729 () Bool)

(assert (=> start!77152 m!836729))

(declare-fun m!836731 () Bool)

(assert (=> b!900129 m!836731))

(declare-fun m!836733 () Bool)

(assert (=> b!900129 m!836733))

(declare-fun m!836735 () Bool)

(assert (=> b!900134 m!836735))

(declare-fun m!836737 () Bool)

(assert (=> b!900136 m!836737))

(declare-fun m!836739 () Bool)

(assert (=> b!900136 m!836739))

(check-sat (not b!900133) (not b!900134) tp_is_empty!18375 (not mapNonEmpty!29236) (not b_next!16047) (not start!77152) b_and!26385 (not b!900129) (not b!900136) (not b!900135))
(check-sat b_and!26385 (not b_next!16047))
(get-model)

(declare-fun d!111627 () Bool)

(assert (=> d!111627 (= (array_inv!19872 (_keys!10243 thiss!1181)) (bvsge (size!25820 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900136 d!111627))

(declare-fun d!111629 () Bool)

(assert (=> d!111629 (= (array_inv!19873 (_values!5462 thiss!1181)) (bvsge (size!25821 (_values!5462 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900136 d!111629))

(declare-fun d!111631 () Bool)

(declare-fun res!608043 () Bool)

(declare-fun e!503843 () Bool)

(assert (=> d!111631 (=> (not res!608043) (not e!503843))))

(declare-fun simpleValid!328 (LongMapFixedSize!4428) Bool)

(assert (=> d!111631 (= res!608043 (simpleValid!328 thiss!1181))))

(assert (=> d!111631 (= (valid!1685 thiss!1181) e!503843)))

(declare-fun b!900174 () Bool)

(declare-fun res!608044 () Bool)

(assert (=> b!900174 (=> (not res!608044) (not e!503843))))

(declare-fun arrayCountValidKeys!0 (array!52784 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!900174 (= res!608044 (= (arrayCountValidKeys!0 (_keys!10243 thiss!1181) #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))) (_size!2269 thiss!1181)))))

(declare-fun b!900175 () Bool)

(declare-fun res!608045 () Bool)

(assert (=> b!900175 (=> (not res!608045) (not e!503843))))

(assert (=> b!900175 (= res!608045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun b!900176 () Bool)

(declare-datatypes ((List!17931 0))(
  ( (Nil!17928) (Cons!17927 (h!19073 (_ BitVec 64)) (t!25292 List!17931)) )
))
(declare-fun arrayNoDuplicates!0 (array!52784 (_ BitVec 32) List!17931) Bool)

(assert (=> b!900176 (= e!503843 (arrayNoDuplicates!0 (_keys!10243 thiss!1181) #b00000000000000000000000000000000 Nil!17928))))

(assert (= (and d!111631 res!608043) b!900174))

(assert (= (and b!900174 res!608044) b!900175))

(assert (= (and b!900175 res!608045) b!900176))

(declare-fun m!836771 () Bool)

(assert (=> d!111631 m!836771))

(declare-fun m!836773 () Bool)

(assert (=> b!900174 m!836773))

(assert (=> b!900175 m!836735))

(declare-fun m!836775 () Bool)

(assert (=> b!900176 m!836775))

(assert (=> start!77152 d!111631))

(declare-fun d!111633 () Bool)

(assert (=> d!111633 (= (inRange!0 (index!38067 lt!406692) (mask!26219 thiss!1181)) (and (bvsge (index!38067 lt!406692) #b00000000000000000000000000000000) (bvslt (index!38067 lt!406692) (bvadd (mask!26219 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!900135 d!111633))

(declare-fun d!111635 () Bool)

(declare-fun e!503846 () Bool)

(assert (=> d!111635 e!503846))

(declare-fun res!608048 () Bool)

(assert (=> d!111635 (=> res!608048 e!503846)))

(declare-fun lt!406712 () SeekEntryResult!8924)

(assert (=> d!111635 (= res!608048 (not ((_ is Found!8924) lt!406712)))))

(assert (=> d!111635 (= lt!406712 (seekEntry!0 key!785 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun lt!406711 () Unit!30553)

(declare-fun choose!1520 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 64)) Unit!30553)

(assert (=> d!111635 (= lt!406711 (choose!1520 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) key!785))))

(assert (=> d!111635 (validMask!0 (mask!26219 thiss!1181))))

(assert (=> d!111635 (= (lemmaSeekEntryGivesInRangeIndex!106 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) key!785) lt!406711)))

(declare-fun b!900179 () Bool)

(assert (=> b!900179 (= e!503846 (inRange!0 (index!38067 lt!406712) (mask!26219 thiss!1181)))))

(assert (= (and d!111635 (not res!608048)) b!900179))

(assert (=> d!111635 m!836733))

(declare-fun m!836777 () Bool)

(assert (=> d!111635 m!836777))

(assert (=> d!111635 m!836721))

(declare-fun m!836779 () Bool)

(assert (=> b!900179 m!836779))

(assert (=> b!900129 d!111635))

(declare-fun b!900192 () Bool)

(declare-fun e!503855 () SeekEntryResult!8924)

(declare-fun lt!406724 () SeekEntryResult!8924)

(assert (=> b!900192 (= e!503855 (MissingZero!8924 (index!38068 lt!406724)))))

(declare-fun b!900193 () Bool)

(declare-fun c!95239 () Bool)

(declare-fun lt!406722 () (_ BitVec 64))

(assert (=> b!900193 (= c!95239 (= lt!406722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503854 () SeekEntryResult!8924)

(assert (=> b!900193 (= e!503854 e!503855)))

(declare-fun b!900194 () Bool)

(declare-fun lt!406723 () SeekEntryResult!8924)

(assert (=> b!900194 (= e!503855 (ite ((_ is MissingVacant!8924) lt!406723) (MissingZero!8924 (index!38069 lt!406723)) lt!406723))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52784 (_ BitVec 32)) SeekEntryResult!8924)

(assert (=> b!900194 (= lt!406723 (seekKeyOrZeroReturnVacant!0 (x!76686 lt!406724) (index!38068 lt!406724) (index!38068 lt!406724) key!785 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun b!900195 () Bool)

(declare-fun e!503853 () SeekEntryResult!8924)

(assert (=> b!900195 (= e!503853 e!503854)))

(assert (=> b!900195 (= lt!406722 (select (arr!25360 (_keys!10243 thiss!1181)) (index!38068 lt!406724)))))

(declare-fun c!95238 () Bool)

(assert (=> b!900195 (= c!95238 (= lt!406722 key!785))))

(declare-fun d!111637 () Bool)

(declare-fun lt!406721 () SeekEntryResult!8924)

(assert (=> d!111637 (and (or ((_ is MissingVacant!8924) lt!406721) (not ((_ is Found!8924) lt!406721)) (and (bvsge (index!38067 lt!406721) #b00000000000000000000000000000000) (bvslt (index!38067 lt!406721) (size!25820 (_keys!10243 thiss!1181))))) (not ((_ is MissingVacant!8924) lt!406721)) (or (not ((_ is Found!8924) lt!406721)) (= (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406721)) key!785)))))

(assert (=> d!111637 (= lt!406721 e!503853)))

(declare-fun c!95240 () Bool)

(assert (=> d!111637 (= c!95240 (and ((_ is Intermediate!8924) lt!406724) (undefined!9736 lt!406724)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52784 (_ BitVec 32)) SeekEntryResult!8924)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111637 (= lt!406724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26219 thiss!1181)) key!785 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(assert (=> d!111637 (validMask!0 (mask!26219 thiss!1181))))

(assert (=> d!111637 (= (seekEntry!0 key!785 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)) lt!406721)))

(declare-fun b!900196 () Bool)

(assert (=> b!900196 (= e!503853 Undefined!8924)))

(declare-fun b!900197 () Bool)

(assert (=> b!900197 (= e!503854 (Found!8924 (index!38068 lt!406724)))))

(assert (= (and d!111637 c!95240) b!900196))

(assert (= (and d!111637 (not c!95240)) b!900195))

(assert (= (and b!900195 c!95238) b!900197))

(assert (= (and b!900195 (not c!95238)) b!900193))

(assert (= (and b!900193 c!95239) b!900192))

(assert (= (and b!900193 (not c!95239)) b!900194))

(declare-fun m!836781 () Bool)

(assert (=> b!900194 m!836781))

(declare-fun m!836783 () Bool)

(assert (=> b!900195 m!836783))

(declare-fun m!836785 () Bool)

(assert (=> d!111637 m!836785))

(declare-fun m!836787 () Bool)

(assert (=> d!111637 m!836787))

(assert (=> d!111637 m!836787))

(declare-fun m!836789 () Bool)

(assert (=> d!111637 m!836789))

(assert (=> d!111637 m!836721))

(assert (=> b!900129 d!111637))

(declare-fun d!111639 () Bool)

(declare-fun res!608054 () Bool)

(declare-fun e!503864 () Bool)

(assert (=> d!111639 (=> res!608054 e!503864)))

(assert (=> d!111639 (= res!608054 (bvsge #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))

(assert (=> d!111639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10243 thiss!1181) (mask!26219 thiss!1181)) e!503864)))

(declare-fun b!900206 () Bool)

(declare-fun e!503862 () Bool)

(declare-fun e!503863 () Bool)

(assert (=> b!900206 (= e!503862 e!503863)))

(declare-fun lt!406733 () (_ BitVec 64))

(assert (=> b!900206 (= lt!406733 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406731 () Unit!30553)

(assert (=> b!900206 (= lt!406731 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10243 thiss!1181) lt!406733 #b00000000000000000000000000000000))))

(assert (=> b!900206 (arrayContainsKey!0 (_keys!10243 thiss!1181) lt!406733 #b00000000000000000000000000000000)))

(declare-fun lt!406732 () Unit!30553)

(assert (=> b!900206 (= lt!406732 lt!406731)))

(declare-fun res!608053 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52784 (_ BitVec 32)) SeekEntryResult!8924)

(assert (=> b!900206 (= res!608053 (= (seekEntryOrOpen!0 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000) (_keys!10243 thiss!1181) (mask!26219 thiss!1181)) (Found!8924 #b00000000000000000000000000000000)))))

(assert (=> b!900206 (=> (not res!608053) (not e!503863))))

(declare-fun b!900207 () Bool)

(declare-fun call!40012 () Bool)

(assert (=> b!900207 (= e!503863 call!40012)))

(declare-fun bm!40009 () Bool)

(assert (=> bm!40009 (= call!40012 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10243 thiss!1181) (mask!26219 thiss!1181)))))

(declare-fun b!900208 () Bool)

(assert (=> b!900208 (= e!503864 e!503862)))

(declare-fun c!95243 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!900208 (= c!95243 (validKeyInArray!0 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900209 () Bool)

(assert (=> b!900209 (= e!503862 call!40012)))

(assert (= (and d!111639 (not res!608054)) b!900208))

(assert (= (and b!900208 c!95243) b!900206))

(assert (= (and b!900208 (not c!95243)) b!900209))

(assert (= (and b!900206 res!608053) b!900207))

(assert (= (or b!900207 b!900209) bm!40009))

(declare-fun m!836791 () Bool)

(assert (=> b!900206 m!836791))

(declare-fun m!836793 () Bool)

(assert (=> b!900206 m!836793))

(declare-fun m!836795 () Bool)

(assert (=> b!900206 m!836795))

(assert (=> b!900206 m!836791))

(declare-fun m!836797 () Bool)

(assert (=> b!900206 m!836797))

(declare-fun m!836799 () Bool)

(assert (=> bm!40009 m!836799))

(assert (=> b!900208 m!836791))

(assert (=> b!900208 m!836791))

(declare-fun m!836801 () Bool)

(assert (=> b!900208 m!836801))

(assert (=> b!900134 d!111639))

(declare-fun d!111641 () Bool)

(declare-fun e!503870 () Bool)

(assert (=> d!111641 e!503870))

(declare-fun res!608057 () Bool)

(assert (=> d!111641 (=> res!608057 e!503870)))

(declare-fun lt!406745 () Bool)

(assert (=> d!111641 (= res!608057 (not lt!406745))))

(declare-fun lt!406744 () Bool)

(assert (=> d!111641 (= lt!406745 lt!406744)))

(declare-fun lt!406743 () Unit!30553)

(declare-fun e!503869 () Unit!30553)

(assert (=> d!111641 (= lt!406743 e!503869)))

(declare-fun c!95246 () Bool)

(assert (=> d!111641 (= c!95246 lt!406744)))

(declare-fun containsKey!431 (List!17929 (_ BitVec 64)) Bool)

(assert (=> d!111641 (= lt!406744 (containsKey!431 (toList!5406 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181))) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692))))))

(assert (=> d!111641 (= (contains!4413 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692))) lt!406745)))

(declare-fun b!900216 () Bool)

(declare-fun lt!406742 () Unit!30553)

(assert (=> b!900216 (= e!503869 lt!406742)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!326 (List!17929 (_ BitVec 64)) Unit!30553)

(assert (=> b!900216 (= lt!406742 (lemmaContainsKeyImpliesGetValueByKeyDefined!326 (toList!5406 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181))) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692))))))

(declare-datatypes ((Option!467 0))(
  ( (Some!466 (v!11733 V!29465)) (None!465) )
))
(declare-fun isDefined!336 (Option!467) Bool)

(declare-fun getValueByKey!461 (List!17929 (_ BitVec 64)) Option!467)

(assert (=> b!900216 (isDefined!336 (getValueByKey!461 (toList!5406 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181))) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692))))))

(declare-fun b!900217 () Bool)

(declare-fun Unit!30557 () Unit!30553)

(assert (=> b!900217 (= e!503869 Unit!30557)))

(declare-fun b!900218 () Bool)

(assert (=> b!900218 (= e!503870 (isDefined!336 (getValueByKey!461 (toList!5406 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181))) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692)))))))

(assert (= (and d!111641 c!95246) b!900216))

(assert (= (and d!111641 (not c!95246)) b!900217))

(assert (= (and d!111641 (not res!608057)) b!900218))

(assert (=> d!111641 m!836713))

(declare-fun m!836803 () Bool)

(assert (=> d!111641 m!836803))

(assert (=> b!900216 m!836713))

(declare-fun m!836805 () Bool)

(assert (=> b!900216 m!836805))

(assert (=> b!900216 m!836713))

(declare-fun m!836807 () Bool)

(assert (=> b!900216 m!836807))

(assert (=> b!900216 m!836807))

(declare-fun m!836809 () Bool)

(assert (=> b!900216 m!836809))

(assert (=> b!900218 m!836713))

(assert (=> b!900218 m!836807))

(assert (=> b!900218 m!836807))

(assert (=> b!900218 m!836809))

(assert (=> b!900133 d!111641))

(declare-fun d!111643 () Bool)

(declare-fun e!503873 () Bool)

(assert (=> d!111643 e!503873))

(declare-fun res!608060 () Bool)

(assert (=> d!111643 (=> (not res!608060) (not e!503873))))

(assert (=> d!111643 (= res!608060 (and (bvsge (index!38067 lt!406692) #b00000000000000000000000000000000) (bvslt (index!38067 lt!406692) (size!25820 (_keys!10243 thiss!1181)))))))

(declare-fun lt!406748 () Unit!30553)

(declare-fun choose!1521 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 32) Int) Unit!30553)

(assert (=> d!111643 (= lt!406748 (choose!1521 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) (index!38067 lt!406692) (defaultEntry!5446 thiss!1181)))))

(assert (=> d!111643 (validMask!0 (mask!26219 thiss!1181))))

(assert (=> d!111643 (= (lemmaValidKeyInArrayIsInListMap!242 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) (index!38067 lt!406692) (defaultEntry!5446 thiss!1181)) lt!406748)))

(declare-fun b!900221 () Bool)

(assert (=> b!900221 (= e!503873 (contains!4413 (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)) (select (arr!25360 (_keys!10243 thiss!1181)) (index!38067 lt!406692))))))

(assert (= (and d!111643 res!608060) b!900221))

(declare-fun m!836811 () Bool)

(assert (=> d!111643 m!836811))

(assert (=> d!111643 m!836721))

(assert (=> b!900221 m!836711))

(assert (=> b!900221 m!836713))

(assert (=> b!900221 m!836711))

(assert (=> b!900221 m!836713))

(assert (=> b!900221 m!836715))

(assert (=> b!900133 d!111643))

(declare-fun d!111645 () Bool)

(assert (=> d!111645 (= (validMask!0 (mask!26219 thiss!1181)) (and (or (= (mask!26219 thiss!1181) #b00000000000000000000000000000111) (= (mask!26219 thiss!1181) #b00000000000000000000000000001111) (= (mask!26219 thiss!1181) #b00000000000000000000000000011111) (= (mask!26219 thiss!1181) #b00000000000000000000000000111111) (= (mask!26219 thiss!1181) #b00000000000000000000000001111111) (= (mask!26219 thiss!1181) #b00000000000000000000000011111111) (= (mask!26219 thiss!1181) #b00000000000000000000000111111111) (= (mask!26219 thiss!1181) #b00000000000000000000001111111111) (= (mask!26219 thiss!1181) #b00000000000000000000011111111111) (= (mask!26219 thiss!1181) #b00000000000000000000111111111111) (= (mask!26219 thiss!1181) #b00000000000000000001111111111111) (= (mask!26219 thiss!1181) #b00000000000000000011111111111111) (= (mask!26219 thiss!1181) #b00000000000000000111111111111111) (= (mask!26219 thiss!1181) #b00000000000000001111111111111111) (= (mask!26219 thiss!1181) #b00000000000000011111111111111111) (= (mask!26219 thiss!1181) #b00000000000000111111111111111111) (= (mask!26219 thiss!1181) #b00000000000001111111111111111111) (= (mask!26219 thiss!1181) #b00000000000011111111111111111111) (= (mask!26219 thiss!1181) #b00000000000111111111111111111111) (= (mask!26219 thiss!1181) #b00000000001111111111111111111111) (= (mask!26219 thiss!1181) #b00000000011111111111111111111111) (= (mask!26219 thiss!1181) #b00000000111111111111111111111111) (= (mask!26219 thiss!1181) #b00000001111111111111111111111111) (= (mask!26219 thiss!1181) #b00000011111111111111111111111111) (= (mask!26219 thiss!1181) #b00000111111111111111111111111111) (= (mask!26219 thiss!1181) #b00001111111111111111111111111111) (= (mask!26219 thiss!1181) #b00011111111111111111111111111111) (= (mask!26219 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26219 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!900133 d!111645))

(declare-fun d!111647 () Bool)

(declare-fun res!608065 () Bool)

(declare-fun e!503878 () Bool)

(assert (=> d!111647 (=> res!608065 e!503878)))

(assert (=> d!111647 (= res!608065 (= (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111647 (= (arrayContainsKey!0 (_keys!10243 thiss!1181) key!785 #b00000000000000000000000000000000) e!503878)))

(declare-fun b!900226 () Bool)

(declare-fun e!503879 () Bool)

(assert (=> b!900226 (= e!503878 e!503879)))

(declare-fun res!608066 () Bool)

(assert (=> b!900226 (=> (not res!608066) (not e!503879))))

(assert (=> b!900226 (= res!608066 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25820 (_keys!10243 thiss!1181))))))

(declare-fun b!900227 () Bool)

(assert (=> b!900227 (= e!503879 (arrayContainsKey!0 (_keys!10243 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111647 (not res!608065)) b!900226))

(assert (= (and b!900226 res!608066) b!900227))

(assert (=> d!111647 m!836791))

(declare-fun m!836813 () Bool)

(assert (=> b!900227 m!836813))

(assert (=> b!900133 d!111647))

(declare-fun d!111649 () Bool)

(assert (=> d!111649 (arrayContainsKey!0 (_keys!10243 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406751 () Unit!30553)

(declare-fun choose!13 (array!52784 (_ BitVec 64) (_ BitVec 32)) Unit!30553)

(assert (=> d!111649 (= lt!406751 (choose!13 (_keys!10243 thiss!1181) key!785 (index!38067 lt!406692)))))

(assert (=> d!111649 (bvsge (index!38067 lt!406692) #b00000000000000000000000000000000)))

(assert (=> d!111649 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10243 thiss!1181) key!785 (index!38067 lt!406692)) lt!406751)))

(declare-fun bs!25278 () Bool)

(assert (= bs!25278 d!111649))

(assert (=> bs!25278 m!836719))

(declare-fun m!836815 () Bool)

(assert (=> bs!25278 m!836815))

(assert (=> b!900133 d!111649))

(declare-fun b!900270 () Bool)

(declare-fun e!503911 () Bool)

(assert (=> b!900270 (= e!503911 (validKeyInArray!0 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900271 () Bool)

(declare-fun e!503912 () Unit!30553)

(declare-fun lt!406817 () Unit!30553)

(assert (=> b!900271 (= e!503912 lt!406817)))

(declare-fun lt!406798 () ListLongMap!10781)

(declare-fun getCurrentListMapNoExtraKeys!3299 (array!52784 array!52786 (_ BitVec 32) (_ BitVec 32) V!29465 V!29465 (_ BitVec 32) Int) ListLongMap!10781)

(assert (=> b!900271 (= lt!406798 (getCurrentListMapNoExtraKeys!3299 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)))))

(declare-fun lt!406805 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406805 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406797 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406797 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406814 () Unit!30553)

(declare-fun addStillContains!337 (ListLongMap!10781 (_ BitVec 64) V!29465 (_ BitVec 64)) Unit!30553)

(assert (=> b!900271 (= lt!406814 (addStillContains!337 lt!406798 lt!406805 (zeroValue!5275 thiss!1181) lt!406797))))

(declare-fun +!2551 (ListLongMap!10781 tuple2!12070) ListLongMap!10781)

(assert (=> b!900271 (contains!4413 (+!2551 lt!406798 (tuple2!12071 lt!406805 (zeroValue!5275 thiss!1181))) lt!406797)))

(declare-fun lt!406811 () Unit!30553)

(assert (=> b!900271 (= lt!406811 lt!406814)))

(declare-fun lt!406796 () ListLongMap!10781)

(assert (=> b!900271 (= lt!406796 (getCurrentListMapNoExtraKeys!3299 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)))))

(declare-fun lt!406800 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406800 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406801 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406801 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406803 () Unit!30553)

(declare-fun addApplyDifferent!337 (ListLongMap!10781 (_ BitVec 64) V!29465 (_ BitVec 64)) Unit!30553)

(assert (=> b!900271 (= lt!406803 (addApplyDifferent!337 lt!406796 lt!406800 (minValue!5275 thiss!1181) lt!406801))))

(declare-fun apply!415 (ListLongMap!10781 (_ BitVec 64)) V!29465)

(assert (=> b!900271 (= (apply!415 (+!2551 lt!406796 (tuple2!12071 lt!406800 (minValue!5275 thiss!1181))) lt!406801) (apply!415 lt!406796 lt!406801))))

(declare-fun lt!406812 () Unit!30553)

(assert (=> b!900271 (= lt!406812 lt!406803)))

(declare-fun lt!406799 () ListLongMap!10781)

(assert (=> b!900271 (= lt!406799 (getCurrentListMapNoExtraKeys!3299 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)))))

(declare-fun lt!406808 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406808 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406815 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406815 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406816 () Unit!30553)

(assert (=> b!900271 (= lt!406816 (addApplyDifferent!337 lt!406799 lt!406808 (zeroValue!5275 thiss!1181) lt!406815))))

(assert (=> b!900271 (= (apply!415 (+!2551 lt!406799 (tuple2!12071 lt!406808 (zeroValue!5275 thiss!1181))) lt!406815) (apply!415 lt!406799 lt!406815))))

(declare-fun lt!406813 () Unit!30553)

(assert (=> b!900271 (= lt!406813 lt!406816)))

(declare-fun lt!406804 () ListLongMap!10781)

(assert (=> b!900271 (= lt!406804 (getCurrentListMapNoExtraKeys!3299 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)))))

(declare-fun lt!406807 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406807 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406810 () (_ BitVec 64))

(assert (=> b!900271 (= lt!406810 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900271 (= lt!406817 (addApplyDifferent!337 lt!406804 lt!406807 (minValue!5275 thiss!1181) lt!406810))))

(assert (=> b!900271 (= (apply!415 (+!2551 lt!406804 (tuple2!12071 lt!406807 (minValue!5275 thiss!1181))) lt!406810) (apply!415 lt!406804 lt!406810))))

(declare-fun b!900272 () Bool)

(declare-fun e!503914 () Bool)

(declare-fun e!503907 () Bool)

(assert (=> b!900272 (= e!503914 e!503907)))

(declare-fun res!608090 () Bool)

(declare-fun call!40032 () Bool)

(assert (=> b!900272 (= res!608090 call!40032)))

(assert (=> b!900272 (=> (not res!608090) (not e!503907))))

(declare-fun b!900273 () Bool)

(declare-fun e!503918 () Bool)

(declare-fun lt!406806 () ListLongMap!10781)

(assert (=> b!900273 (= e!503918 (= (apply!415 lt!406806 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5275 thiss!1181)))))

(declare-fun b!900274 () Bool)

(declare-fun e!503915 () Bool)

(assert (=> b!900274 (= e!503915 e!503918)))

(declare-fun res!608087 () Bool)

(declare-fun call!40033 () Bool)

(assert (=> b!900274 (= res!608087 call!40033)))

(assert (=> b!900274 (=> (not res!608087) (not e!503918))))

(declare-fun b!900275 () Bool)

(declare-fun Unit!30558 () Unit!30553)

(assert (=> b!900275 (= e!503912 Unit!30558)))

(declare-fun bm!40024 () Bool)

(assert (=> bm!40024 (= call!40032 (contains!4413 lt!406806 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900276 () Bool)

(assert (=> b!900276 (= e!503915 (not call!40033))))

(declare-fun b!900277 () Bool)

(declare-fun e!503916 () ListLongMap!10781)

(declare-fun call!40031 () ListLongMap!10781)

(assert (=> b!900277 (= e!503916 call!40031)))

(declare-fun b!900278 () Bool)

(declare-fun e!503910 () Bool)

(declare-fun e!503917 () Bool)

(assert (=> b!900278 (= e!503910 e!503917)))

(declare-fun res!608092 () Bool)

(assert (=> b!900278 (=> (not res!608092) (not e!503917))))

(assert (=> b!900278 (= res!608092 (contains!4413 lt!406806 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!900278 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))

(declare-fun b!900279 () Bool)

(assert (=> b!900279 (= e!503914 (not call!40032))))

(declare-fun b!900280 () Bool)

(declare-fun res!608091 () Bool)

(declare-fun e!503908 () Bool)

(assert (=> b!900280 (=> (not res!608091) (not e!503908))))

(assert (=> b!900280 (= res!608091 e!503915)))

(declare-fun c!95261 () Bool)

(assert (=> b!900280 (= c!95261 (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!900281 () Bool)

(declare-fun e!503909 () Bool)

(assert (=> b!900281 (= e!503909 (validKeyInArray!0 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900282 () Bool)

(assert (=> b!900282 (= e!503907 (= (apply!415 lt!406806 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5275 thiss!1181)))))

(declare-fun b!900283 () Bool)

(declare-fun e!503913 () ListLongMap!10781)

(assert (=> b!900283 (= e!503913 call!40031)))

(declare-fun b!900284 () Bool)

(declare-fun c!95262 () Bool)

(assert (=> b!900284 (= c!95262 (and (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!900284 (= e!503916 e!503913)))

(declare-fun d!111651 () Bool)

(assert (=> d!111651 e!503908))

(declare-fun res!608088 () Bool)

(assert (=> d!111651 (=> (not res!608088) (not e!503908))))

(assert (=> d!111651 (= res!608088 (or (bvsge #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))))

(declare-fun lt!406809 () ListLongMap!10781)

(assert (=> d!111651 (= lt!406806 lt!406809)))

(declare-fun lt!406802 () Unit!30553)

(assert (=> d!111651 (= lt!406802 e!503912)))

(declare-fun c!95264 () Bool)

(assert (=> d!111651 (= c!95264 e!503909)))

(declare-fun res!608089 () Bool)

(assert (=> d!111651 (=> (not res!608089) (not e!503909))))

(assert (=> d!111651 (= res!608089 (bvslt #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))

(declare-fun e!503906 () ListLongMap!10781)

(assert (=> d!111651 (= lt!406809 e!503906)))

(declare-fun c!95260 () Bool)

(assert (=> d!111651 (= c!95260 (and (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111651 (validMask!0 (mask!26219 thiss!1181))))

(assert (=> d!111651 (= (getCurrentListMap!2649 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)) lt!406806)))

(declare-fun b!900285 () Bool)

(declare-fun res!608093 () Bool)

(assert (=> b!900285 (=> (not res!608093) (not e!503908))))

(assert (=> b!900285 (= res!608093 e!503910)))

(declare-fun res!608085 () Bool)

(assert (=> b!900285 (=> res!608085 e!503910)))

(assert (=> b!900285 (= res!608085 (not e!503911))))

(declare-fun res!608086 () Bool)

(assert (=> b!900285 (=> (not res!608086) (not e!503911))))

(assert (=> b!900285 (= res!608086 (bvslt #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))

(declare-fun bm!40025 () Bool)

(declare-fun c!95259 () Bool)

(declare-fun call!40029 () ListLongMap!10781)

(declare-fun call!40030 () ListLongMap!10781)

(declare-fun call!40027 () ListLongMap!10781)

(declare-fun call!40028 () ListLongMap!10781)

(assert (=> bm!40025 (= call!40027 (+!2551 (ite c!95260 call!40030 (ite c!95259 call!40028 call!40029)) (ite (or c!95260 c!95259) (tuple2!12071 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5275 thiss!1181)) (tuple2!12071 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5275 thiss!1181)))))))

(declare-fun b!900286 () Bool)

(assert (=> b!900286 (= e!503906 e!503916)))

(assert (=> b!900286 (= c!95259 (and (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40026 () Bool)

(assert (=> bm!40026 (= call!40030 (getCurrentListMapNoExtraKeys!3299 (_keys!10243 thiss!1181) (_values!5462 thiss!1181) (mask!26219 thiss!1181) (extraKeys!5171 thiss!1181) (zeroValue!5275 thiss!1181) (minValue!5275 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5446 thiss!1181)))))

(declare-fun b!900287 () Bool)

(assert (=> b!900287 (= e!503913 call!40029)))

(declare-fun bm!40027 () Bool)

(assert (=> bm!40027 (= call!40029 call!40028)))

(declare-fun bm!40028 () Bool)

(assert (=> bm!40028 (= call!40031 call!40027)))

(declare-fun b!900288 () Bool)

(assert (=> b!900288 (= e!503908 e!503914)))

(declare-fun c!95263 () Bool)

(assert (=> b!900288 (= c!95263 (not (= (bvand (extraKeys!5171 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40029 () Bool)

(assert (=> bm!40029 (= call!40033 (contains!4413 lt!406806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900289 () Bool)

(assert (=> b!900289 (= e!503906 (+!2551 call!40027 (tuple2!12071 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5275 thiss!1181))))))

(declare-fun bm!40030 () Bool)

(assert (=> bm!40030 (= call!40028 call!40030)))

(declare-fun b!900290 () Bool)

(declare-fun get!13354 (ValueCell!8706 V!29465) V!29465)

(declare-fun dynLambda!1310 (Int (_ BitVec 64)) V!29465)

(assert (=> b!900290 (= e!503917 (= (apply!415 lt!406806 (select (arr!25360 (_keys!10243 thiss!1181)) #b00000000000000000000000000000000)) (get!13354 (select (arr!25361 (_values!5462 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1310 (defaultEntry!5446 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!900290 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25821 (_values!5462 thiss!1181))))))

(assert (=> b!900290 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25820 (_keys!10243 thiss!1181))))))

(assert (= (and d!111651 c!95260) b!900289))

(assert (= (and d!111651 (not c!95260)) b!900286))

(assert (= (and b!900286 c!95259) b!900277))

(assert (= (and b!900286 (not c!95259)) b!900284))

(assert (= (and b!900284 c!95262) b!900283))

(assert (= (and b!900284 (not c!95262)) b!900287))

(assert (= (or b!900283 b!900287) bm!40027))

(assert (= (or b!900277 bm!40027) bm!40030))

(assert (= (or b!900277 b!900283) bm!40028))

(assert (= (or b!900289 bm!40030) bm!40026))

(assert (= (or b!900289 bm!40028) bm!40025))

(assert (= (and d!111651 res!608089) b!900281))

(assert (= (and d!111651 c!95264) b!900271))

(assert (= (and d!111651 (not c!95264)) b!900275))

(assert (= (and d!111651 res!608088) b!900285))

(assert (= (and b!900285 res!608086) b!900270))

(assert (= (and b!900285 (not res!608085)) b!900278))

(assert (= (and b!900278 res!608092) b!900290))

(assert (= (and b!900285 res!608093) b!900280))

(assert (= (and b!900280 c!95261) b!900274))

(assert (= (and b!900280 (not c!95261)) b!900276))

(assert (= (and b!900274 res!608087) b!900273))

(assert (= (or b!900274 b!900276) bm!40029))

(assert (= (and b!900280 res!608091) b!900288))

(assert (= (and b!900288 c!95263) b!900272))

(assert (= (and b!900288 (not c!95263)) b!900279))

(assert (= (and b!900272 res!608090) b!900282))

(assert (= (or b!900272 b!900279) bm!40024))

(declare-fun b_lambda!13045 () Bool)

(assert (=> (not b_lambda!13045) (not b!900290)))

(declare-fun t!25291 () Bool)

(declare-fun tb!5211 () Bool)

(assert (=> (and b!900136 (= (defaultEntry!5446 thiss!1181) (defaultEntry!5446 thiss!1181)) t!25291) tb!5211))

(declare-fun result!10189 () Bool)

(assert (=> tb!5211 (= result!10189 tp_is_empty!18375)))

(assert (=> b!900290 t!25291))

(declare-fun b_and!26389 () Bool)

(assert (= b_and!26385 (and (=> t!25291 result!10189) b_and!26389)))

(assert (=> b!900281 m!836791))

(assert (=> b!900281 m!836791))

(assert (=> b!900281 m!836801))

(assert (=> b!900270 m!836791))

(assert (=> b!900270 m!836791))

(assert (=> b!900270 m!836801))

(declare-fun m!836817 () Bool)

(assert (=> bm!40025 m!836817))

(declare-fun m!836819 () Bool)

(assert (=> b!900289 m!836819))

(declare-fun m!836821 () Bool)

(assert (=> bm!40024 m!836821))

(declare-fun m!836823 () Bool)

(assert (=> bm!40029 m!836823))

(assert (=> d!111651 m!836721))

(assert (=> b!900278 m!836791))

(assert (=> b!900278 m!836791))

(declare-fun m!836825 () Bool)

(assert (=> b!900278 m!836825))

(declare-fun m!836827 () Bool)

(assert (=> b!900271 m!836827))

(declare-fun m!836829 () Bool)

(assert (=> b!900271 m!836829))

(declare-fun m!836831 () Bool)

(assert (=> b!900271 m!836831))

(declare-fun m!836833 () Bool)

(assert (=> b!900271 m!836833))

(declare-fun m!836835 () Bool)

(assert (=> b!900271 m!836835))

(declare-fun m!836837 () Bool)

(assert (=> b!900271 m!836837))

(declare-fun m!836839 () Bool)

(assert (=> b!900271 m!836839))

(declare-fun m!836841 () Bool)

(assert (=> b!900271 m!836841))

(declare-fun m!836843 () Bool)

(assert (=> b!900271 m!836843))

(declare-fun m!836845 () Bool)

(assert (=> b!900271 m!836845))

(assert (=> b!900271 m!836831))

(declare-fun m!836847 () Bool)

(assert (=> b!900271 m!836847))

(assert (=> b!900271 m!836843))

(declare-fun m!836849 () Bool)

(assert (=> b!900271 m!836849))

(declare-fun m!836851 () Bool)

(assert (=> b!900271 m!836851))

(assert (=> b!900271 m!836791))

(declare-fun m!836853 () Bool)

(assert (=> b!900271 m!836853))

(declare-fun m!836855 () Bool)

(assert (=> b!900271 m!836855))

(assert (=> b!900271 m!836827))

(declare-fun m!836857 () Bool)

(assert (=> b!900271 m!836857))

(assert (=> b!900271 m!836853))

(assert (=> bm!40026 m!836829))

(declare-fun m!836859 () Bool)

(assert (=> b!900273 m!836859))

(assert (=> b!900290 m!836791))

(declare-fun m!836861 () Bool)

(assert (=> b!900290 m!836861))

(declare-fun m!836863 () Bool)

(assert (=> b!900290 m!836863))

(declare-fun m!836865 () Bool)

(assert (=> b!900290 m!836865))

(assert (=> b!900290 m!836865))

(assert (=> b!900290 m!836863))

(declare-fun m!836867 () Bool)

(assert (=> b!900290 m!836867))

(assert (=> b!900290 m!836791))

(declare-fun m!836869 () Bool)

(assert (=> b!900282 m!836869))

(assert (=> b!900133 d!111651))

(declare-fun mapNonEmpty!29242 () Bool)

(declare-fun mapRes!29242 () Bool)

(declare-fun tp!56239 () Bool)

(declare-fun e!503924 () Bool)

(assert (=> mapNonEmpty!29242 (= mapRes!29242 (and tp!56239 e!503924))))

(declare-fun mapKey!29242 () (_ BitVec 32))

(declare-fun mapValue!29242 () ValueCell!8706)

(declare-fun mapRest!29242 () (Array (_ BitVec 32) ValueCell!8706))

(assert (=> mapNonEmpty!29242 (= mapRest!29236 (store mapRest!29242 mapKey!29242 mapValue!29242))))

(declare-fun b!900299 () Bool)

(assert (=> b!900299 (= e!503924 tp_is_empty!18375)))

(declare-fun condMapEmpty!29242 () Bool)

(declare-fun mapDefault!29242 () ValueCell!8706)

(assert (=> mapNonEmpty!29236 (= condMapEmpty!29242 (= mapRest!29236 ((as const (Array (_ BitVec 32) ValueCell!8706)) mapDefault!29242)))))

(declare-fun e!503923 () Bool)

(assert (=> mapNonEmpty!29236 (= tp!56230 (and e!503923 mapRes!29242))))

(declare-fun b!900300 () Bool)

(assert (=> b!900300 (= e!503923 tp_is_empty!18375)))

(declare-fun mapIsEmpty!29242 () Bool)

(assert (=> mapIsEmpty!29242 mapRes!29242))

(assert (= (and mapNonEmpty!29236 condMapEmpty!29242) mapIsEmpty!29242))

(assert (= (and mapNonEmpty!29236 (not condMapEmpty!29242)) mapNonEmpty!29242))

(assert (= (and mapNonEmpty!29242 ((_ is ValueCellFull!8706) mapValue!29242)) b!900299))

(assert (= (and mapNonEmpty!29236 ((_ is ValueCellFull!8706) mapDefault!29242)) b!900300))

(declare-fun m!836871 () Bool)

(assert (=> mapNonEmpty!29242 m!836871))

(declare-fun b_lambda!13047 () Bool)

(assert (= b_lambda!13045 (or (and b!900136 b_free!16047) b_lambda!13047)))

(check-sat (not b!900270) (not b!900278) (not b!900206) (not d!111651) (not d!111637) (not b!900281) (not b_lambda!13047) (not b!900273) (not b!900194) (not bm!40026) (not d!111649) (not d!111641) (not b!900179) (not d!111635) (not b!900175) tp_is_empty!18375 (not d!111631) (not b!900282) (not b!900289) (not b!900290) (not b_next!16047) (not bm!40025) (not b!900271) (not bm!40009) (not bm!40029) (not b!900174) (not b!900218) (not bm!40024) (not mapNonEmpty!29242) (not b!900208) (not b!900227) (not b!900216) b_and!26389 (not d!111643) (not b!900221) (not b!900176))
(check-sat b_and!26389 (not b_next!16047))
