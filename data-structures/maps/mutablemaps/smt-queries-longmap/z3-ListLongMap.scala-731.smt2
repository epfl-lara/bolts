; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17002 () Bool)

(assert start!17002)

(declare-fun b!170723 () Bool)

(declare-fun b_free!4227 () Bool)

(declare-fun b_next!4227 () Bool)

(assert (=> b!170723 (= b_free!4227 (not b_next!4227))))

(declare-fun tp!15307 () Bool)

(declare-fun b_and!10659 () Bool)

(assert (=> b!170723 (= tp!15307 b_and!10659)))

(declare-fun b!170720 () Bool)

(declare-fun e!112701 () Bool)

(declare-fun e!112698 () Bool)

(declare-fun mapRes!6788 () Bool)

(assert (=> b!170720 (= e!112701 (and e!112698 mapRes!6788))))

(declare-fun condMapEmpty!6788 () Bool)

(declare-datatypes ((V!4979 0))(
  ( (V!4980 (val!2044 Int)) )
))
(declare-datatypes ((ValueCell!1656 0))(
  ( (ValueCellFull!1656 (v!3905 V!4979)) (EmptyCell!1656) )
))
(declare-datatypes ((array!7108 0))(
  ( (array!7109 (arr!3382 (Array (_ BitVec 32) (_ BitVec 64))) (size!3675 (_ BitVec 32))) )
))
(declare-datatypes ((array!7110 0))(
  ( (array!7111 (arr!3383 (Array (_ BitVec 32) ValueCell!1656)) (size!3676 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2220 0))(
  ( (LongMapFixedSize!2221 (defaultEntry!3552 Int) (mask!8376 (_ BitVec 32)) (extraKeys!3293 (_ BitVec 32)) (zeroValue!3395 V!4979) (minValue!3395 V!4979) (_size!1159 (_ BitVec 32)) (_keys!5383 array!7108) (_values!3535 array!7110) (_vacant!1159 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2220)

(declare-fun mapDefault!6788 () ValueCell!1656)

(assert (=> b!170720 (= condMapEmpty!6788 (= (arr!3383 (_values!3535 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1656)) mapDefault!6788)))))

(declare-fun b!170721 () Bool)

(declare-fun tp_is_empty!3999 () Bool)

(assert (=> b!170721 (= e!112698 tp_is_empty!3999)))

(declare-fun mapNonEmpty!6788 () Bool)

(declare-fun tp!15308 () Bool)

(declare-fun e!112703 () Bool)

(assert (=> mapNonEmpty!6788 (= mapRes!6788 (and tp!15308 e!112703))))

(declare-fun mapRest!6788 () (Array (_ BitVec 32) ValueCell!1656))

(declare-fun mapKey!6788 () (_ BitVec 32))

(declare-fun mapValue!6788 () ValueCell!1656)

(assert (=> mapNonEmpty!6788 (= (arr!3383 (_values!3535 thiss!1248)) (store mapRest!6788 mapKey!6788 mapValue!6788))))

(declare-fun res!81171 () Bool)

(declare-fun e!112700 () Bool)

(assert (=> start!17002 (=> (not res!81171) (not e!112700))))

(declare-fun valid!937 (LongMapFixedSize!2220) Bool)

(assert (=> start!17002 (= res!81171 (valid!937 thiss!1248))))

(assert (=> start!17002 e!112700))

(declare-fun e!112699 () Bool)

(assert (=> start!17002 e!112699))

(assert (=> start!17002 true))

(declare-fun b!170722 () Bool)

(declare-fun res!81173 () Bool)

(assert (=> b!170722 (=> (not res!81173) (not e!112700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170722 (= res!81173 (validMask!0 (mask!8376 thiss!1248)))))

(declare-fun array_inv!2153 (array!7108) Bool)

(declare-fun array_inv!2154 (array!7110) Bool)

(assert (=> b!170723 (= e!112699 (and tp!15307 tp_is_empty!3999 (array_inv!2153 (_keys!5383 thiss!1248)) (array_inv!2154 (_values!3535 thiss!1248)) e!112701))))

(declare-fun b!170724 () Bool)

(declare-fun res!81174 () Bool)

(assert (=> b!170724 (=> (not res!81174) (not e!112700))))

(assert (=> b!170724 (= res!81174 (and (= (size!3676 (_values!3535 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8376 thiss!1248))) (= (size!3675 (_keys!5383 thiss!1248)) (size!3676 (_values!3535 thiss!1248))) (bvsge (mask!8376 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3293 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3293 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3293 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3293 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3293 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3293 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!3293 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!170725 () Bool)

(declare-fun res!81172 () Bool)

(assert (=> b!170725 (=> (not res!81172) (not e!112700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7108 (_ BitVec 32)) Bool)

(assert (=> b!170725 (= res!81172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5383 thiss!1248) (mask!8376 thiss!1248)))))

(declare-fun b!170726 () Bool)

(declare-fun res!81170 () Bool)

(assert (=> b!170726 (=> (not res!81170) (not e!112700))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170726 (= res!81170 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!6788 () Bool)

(assert (=> mapIsEmpty!6788 mapRes!6788))

(declare-fun b!170727 () Bool)

(declare-datatypes ((List!2210 0))(
  ( (Nil!2207) (Cons!2206 (h!2823 (_ BitVec 64)) (t!7020 List!2210)) )
))
(declare-fun arrayNoDuplicates!0 (array!7108 (_ BitVec 32) List!2210) Bool)

(assert (=> b!170727 (= e!112700 (not (arrayNoDuplicates!0 (_keys!5383 thiss!1248) #b00000000000000000000000000000000 Nil!2207)))))

(declare-fun b!170728 () Bool)

(assert (=> b!170728 (= e!112703 tp_is_empty!3999)))

(assert (= (and start!17002 res!81171) b!170726))

(assert (= (and b!170726 res!81170) b!170722))

(assert (= (and b!170722 res!81173) b!170724))

(assert (= (and b!170724 res!81174) b!170725))

(assert (= (and b!170725 res!81172) b!170727))

(assert (= (and b!170720 condMapEmpty!6788) mapIsEmpty!6788))

(assert (= (and b!170720 (not condMapEmpty!6788)) mapNonEmpty!6788))

(get-info :version)

(assert (= (and mapNonEmpty!6788 ((_ is ValueCellFull!1656) mapValue!6788)) b!170728))

(assert (= (and b!170720 ((_ is ValueCellFull!1656) mapDefault!6788)) b!170721))

(assert (= b!170723 b!170720))

(assert (= start!17002 b!170723))

(declare-fun m!199091 () Bool)

(assert (=> b!170727 m!199091))

(declare-fun m!199093 () Bool)

(assert (=> start!17002 m!199093))

(declare-fun m!199095 () Bool)

(assert (=> b!170723 m!199095))

(declare-fun m!199097 () Bool)

(assert (=> b!170723 m!199097))

(declare-fun m!199099 () Bool)

(assert (=> b!170722 m!199099))

(declare-fun m!199101 () Bool)

(assert (=> b!170725 m!199101))

(declare-fun m!199103 () Bool)

(assert (=> mapNonEmpty!6788 m!199103))

(check-sat (not start!17002) (not b_next!4227) (not b!170725) (not b!170727) tp_is_empty!3999 (not mapNonEmpty!6788) (not b!170722) (not b!170723) b_and!10659)
(check-sat b_and!10659 (not b_next!4227))
(get-model)

(declare-fun d!51669 () Bool)

(assert (=> d!51669 (= (validMask!0 (mask!8376 thiss!1248)) (and (or (= (mask!8376 thiss!1248) #b00000000000000000000000000000111) (= (mask!8376 thiss!1248) #b00000000000000000000000000001111) (= (mask!8376 thiss!1248) #b00000000000000000000000000011111) (= (mask!8376 thiss!1248) #b00000000000000000000000000111111) (= (mask!8376 thiss!1248) #b00000000000000000000000001111111) (= (mask!8376 thiss!1248) #b00000000000000000000000011111111) (= (mask!8376 thiss!1248) #b00000000000000000000000111111111) (= (mask!8376 thiss!1248) #b00000000000000000000001111111111) (= (mask!8376 thiss!1248) #b00000000000000000000011111111111) (= (mask!8376 thiss!1248) #b00000000000000000000111111111111) (= (mask!8376 thiss!1248) #b00000000000000000001111111111111) (= (mask!8376 thiss!1248) #b00000000000000000011111111111111) (= (mask!8376 thiss!1248) #b00000000000000000111111111111111) (= (mask!8376 thiss!1248) #b00000000000000001111111111111111) (= (mask!8376 thiss!1248) #b00000000000000011111111111111111) (= (mask!8376 thiss!1248) #b00000000000000111111111111111111) (= (mask!8376 thiss!1248) #b00000000000001111111111111111111) (= (mask!8376 thiss!1248) #b00000000000011111111111111111111) (= (mask!8376 thiss!1248) #b00000000000111111111111111111111) (= (mask!8376 thiss!1248) #b00000000001111111111111111111111) (= (mask!8376 thiss!1248) #b00000000011111111111111111111111) (= (mask!8376 thiss!1248) #b00000000111111111111111111111111) (= (mask!8376 thiss!1248) #b00000001111111111111111111111111) (= (mask!8376 thiss!1248) #b00000011111111111111111111111111) (= (mask!8376 thiss!1248) #b00000111111111111111111111111111) (= (mask!8376 thiss!1248) #b00001111111111111111111111111111) (= (mask!8376 thiss!1248) #b00011111111111111111111111111111) (= (mask!8376 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8376 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!170722 d!51669))

(declare-fun d!51671 () Bool)

(declare-fun res!81196 () Bool)

(declare-fun e!112724 () Bool)

(assert (=> d!51671 (=> (not res!81196) (not e!112724))))

(declare-fun simpleValid!133 (LongMapFixedSize!2220) Bool)

(assert (=> d!51671 (= res!81196 (simpleValid!133 thiss!1248))))

(assert (=> d!51671 (= (valid!937 thiss!1248) e!112724)))

(declare-fun b!170762 () Bool)

(declare-fun res!81197 () Bool)

(assert (=> b!170762 (=> (not res!81197) (not e!112724))))

(declare-fun arrayCountValidKeys!0 (array!7108 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170762 (= res!81197 (= (arrayCountValidKeys!0 (_keys!5383 thiss!1248) #b00000000000000000000000000000000 (size!3675 (_keys!5383 thiss!1248))) (_size!1159 thiss!1248)))))

(declare-fun b!170763 () Bool)

(declare-fun res!81198 () Bool)

(assert (=> b!170763 (=> (not res!81198) (not e!112724))))

(assert (=> b!170763 (= res!81198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5383 thiss!1248) (mask!8376 thiss!1248)))))

(declare-fun b!170764 () Bool)

(assert (=> b!170764 (= e!112724 (arrayNoDuplicates!0 (_keys!5383 thiss!1248) #b00000000000000000000000000000000 Nil!2207))))

(assert (= (and d!51671 res!81196) b!170762))

(assert (= (and b!170762 res!81197) b!170763))

(assert (= (and b!170763 res!81198) b!170764))

(declare-fun m!199119 () Bool)

(assert (=> d!51671 m!199119))

(declare-fun m!199121 () Bool)

(assert (=> b!170762 m!199121))

(assert (=> b!170763 m!199101))

(assert (=> b!170764 m!199091))

(assert (=> start!17002 d!51671))

(declare-fun b!170775 () Bool)

(declare-fun e!112735 () Bool)

(declare-fun contains!1141 (List!2210 (_ BitVec 64)) Bool)

(assert (=> b!170775 (= e!112735 (contains!1141 Nil!2207 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17381 () Bool)

(declare-fun call!17384 () Bool)

(declare-fun c!30474 () Bool)

(assert (=> bm!17381 (= call!17384 (arrayNoDuplicates!0 (_keys!5383 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30474 (Cons!2206 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000) Nil!2207) Nil!2207)))))

(declare-fun d!51673 () Bool)

(declare-fun res!81207 () Bool)

(declare-fun e!112733 () Bool)

(assert (=> d!51673 (=> res!81207 e!112733)))

(assert (=> d!51673 (= res!81207 (bvsge #b00000000000000000000000000000000 (size!3675 (_keys!5383 thiss!1248))))))

(assert (=> d!51673 (= (arrayNoDuplicates!0 (_keys!5383 thiss!1248) #b00000000000000000000000000000000 Nil!2207) e!112733)))

(declare-fun b!170776 () Bool)

(declare-fun e!112736 () Bool)

(assert (=> b!170776 (= e!112733 e!112736)))

(declare-fun res!81205 () Bool)

(assert (=> b!170776 (=> (not res!81205) (not e!112736))))

(assert (=> b!170776 (= res!81205 (not e!112735))))

(declare-fun res!81206 () Bool)

(assert (=> b!170776 (=> (not res!81206) (not e!112735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!170776 (= res!81206 (validKeyInArray!0 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170777 () Bool)

(declare-fun e!112734 () Bool)

(assert (=> b!170777 (= e!112736 e!112734)))

(assert (=> b!170777 (= c!30474 (validKeyInArray!0 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170778 () Bool)

(assert (=> b!170778 (= e!112734 call!17384)))

(declare-fun b!170779 () Bool)

(assert (=> b!170779 (= e!112734 call!17384)))

(assert (= (and d!51673 (not res!81207)) b!170776))

(assert (= (and b!170776 res!81206) b!170775))

(assert (= (and b!170776 res!81205) b!170777))

(assert (= (and b!170777 c!30474) b!170778))

(assert (= (and b!170777 (not c!30474)) b!170779))

(assert (= (or b!170778 b!170779) bm!17381))

(declare-fun m!199123 () Bool)

(assert (=> b!170775 m!199123))

(assert (=> b!170775 m!199123))

(declare-fun m!199125 () Bool)

(assert (=> b!170775 m!199125))

(assert (=> bm!17381 m!199123))

(declare-fun m!199127 () Bool)

(assert (=> bm!17381 m!199127))

(assert (=> b!170776 m!199123))

(assert (=> b!170776 m!199123))

(declare-fun m!199129 () Bool)

(assert (=> b!170776 m!199129))

(assert (=> b!170777 m!199123))

(assert (=> b!170777 m!199123))

(assert (=> b!170777 m!199129))

(assert (=> b!170727 d!51673))

(declare-fun d!51675 () Bool)

(assert (=> d!51675 (= (array_inv!2153 (_keys!5383 thiss!1248)) (bvsge (size!3675 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170723 d!51675))

(declare-fun d!51677 () Bool)

(assert (=> d!51677 (= (array_inv!2154 (_values!3535 thiss!1248)) (bvsge (size!3676 (_values!3535 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170723 d!51677))

(declare-fun b!170788 () Bool)

(declare-fun e!112745 () Bool)

(declare-fun call!17387 () Bool)

(assert (=> b!170788 (= e!112745 call!17387)))

(declare-fun b!170789 () Bool)

(declare-fun e!112744 () Bool)

(assert (=> b!170789 (= e!112744 call!17387)))

(declare-fun bm!17384 () Bool)

(assert (=> bm!17384 (= call!17387 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5383 thiss!1248) (mask!8376 thiss!1248)))))

(declare-fun d!51679 () Bool)

(declare-fun res!81213 () Bool)

(declare-fun e!112743 () Bool)

(assert (=> d!51679 (=> res!81213 e!112743)))

(assert (=> d!51679 (= res!81213 (bvsge #b00000000000000000000000000000000 (size!3675 (_keys!5383 thiss!1248))))))

(assert (=> d!51679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5383 thiss!1248) (mask!8376 thiss!1248)) e!112743)))

(declare-fun b!170790 () Bool)

(assert (=> b!170790 (= e!112744 e!112745)))

(declare-fun lt!85048 () (_ BitVec 64))

(assert (=> b!170790 (= lt!85048 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5245 0))(
  ( (Unit!5246) )
))
(declare-fun lt!85047 () Unit!5245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7108 (_ BitVec 64) (_ BitVec 32)) Unit!5245)

(assert (=> b!170790 (= lt!85047 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5383 thiss!1248) lt!85048 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!170790 (arrayContainsKey!0 (_keys!5383 thiss!1248) lt!85048 #b00000000000000000000000000000000)))

(declare-fun lt!85049 () Unit!5245)

(assert (=> b!170790 (= lt!85049 lt!85047)))

(declare-fun res!81212 () Bool)

(declare-datatypes ((SeekEntryResult!543 0))(
  ( (MissingZero!543 (index!4340 (_ BitVec 32))) (Found!543 (index!4341 (_ BitVec 32))) (Intermediate!543 (undefined!1355 Bool) (index!4342 (_ BitVec 32)) (x!18937 (_ BitVec 32))) (Undefined!543) (MissingVacant!543 (index!4343 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7108 (_ BitVec 32)) SeekEntryResult!543)

(assert (=> b!170790 (= res!81212 (= (seekEntryOrOpen!0 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000) (_keys!5383 thiss!1248) (mask!8376 thiss!1248)) (Found!543 #b00000000000000000000000000000000)))))

(assert (=> b!170790 (=> (not res!81212) (not e!112745))))

(declare-fun b!170791 () Bool)

(assert (=> b!170791 (= e!112743 e!112744)))

(declare-fun c!30477 () Bool)

(assert (=> b!170791 (= c!30477 (validKeyInArray!0 (select (arr!3382 (_keys!5383 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51679 (not res!81213)) b!170791))

(assert (= (and b!170791 c!30477) b!170790))

(assert (= (and b!170791 (not c!30477)) b!170789))

(assert (= (and b!170790 res!81212) b!170788))

(assert (= (or b!170788 b!170789) bm!17384))

(declare-fun m!199131 () Bool)

(assert (=> bm!17384 m!199131))

(assert (=> b!170790 m!199123))

(declare-fun m!199133 () Bool)

(assert (=> b!170790 m!199133))

(declare-fun m!199135 () Bool)

(assert (=> b!170790 m!199135))

(assert (=> b!170790 m!199123))

(declare-fun m!199137 () Bool)

(assert (=> b!170790 m!199137))

(assert (=> b!170791 m!199123))

(assert (=> b!170791 m!199123))

(assert (=> b!170791 m!199129))

(assert (=> b!170725 d!51679))

(declare-fun b!170798 () Bool)

(declare-fun e!112751 () Bool)

(assert (=> b!170798 (= e!112751 tp_is_empty!3999)))

(declare-fun mapNonEmpty!6794 () Bool)

(declare-fun mapRes!6794 () Bool)

(declare-fun tp!15317 () Bool)

(assert (=> mapNonEmpty!6794 (= mapRes!6794 (and tp!15317 e!112751))))

(declare-fun mapRest!6794 () (Array (_ BitVec 32) ValueCell!1656))

(declare-fun mapValue!6794 () ValueCell!1656)

(declare-fun mapKey!6794 () (_ BitVec 32))

(assert (=> mapNonEmpty!6794 (= mapRest!6788 (store mapRest!6794 mapKey!6794 mapValue!6794))))

(declare-fun mapIsEmpty!6794 () Bool)

(assert (=> mapIsEmpty!6794 mapRes!6794))

(declare-fun b!170799 () Bool)

(declare-fun e!112750 () Bool)

(assert (=> b!170799 (= e!112750 tp_is_empty!3999)))

(declare-fun condMapEmpty!6794 () Bool)

(declare-fun mapDefault!6794 () ValueCell!1656)

(assert (=> mapNonEmpty!6788 (= condMapEmpty!6794 (= mapRest!6788 ((as const (Array (_ BitVec 32) ValueCell!1656)) mapDefault!6794)))))

(assert (=> mapNonEmpty!6788 (= tp!15308 (and e!112750 mapRes!6794))))

(assert (= (and mapNonEmpty!6788 condMapEmpty!6794) mapIsEmpty!6794))

(assert (= (and mapNonEmpty!6788 (not condMapEmpty!6794)) mapNonEmpty!6794))

(assert (= (and mapNonEmpty!6794 ((_ is ValueCellFull!1656) mapValue!6794)) b!170798))

(assert (= (and mapNonEmpty!6788 ((_ is ValueCellFull!1656) mapDefault!6794)) b!170799))

(declare-fun m!199139 () Bool)

(assert (=> mapNonEmpty!6794 m!199139))

(check-sat (not b!170775) (not b!170764) (not b!170791) (not b_next!4227) (not d!51671) (not b!170763) (not b!170777) (not bm!17384) tp_is_empty!3999 (not b!170776) (not b!170762) (not bm!17381) (not b!170790) b_and!10659 (not mapNonEmpty!6794))
(check-sat b_and!10659 (not b_next!4227))
