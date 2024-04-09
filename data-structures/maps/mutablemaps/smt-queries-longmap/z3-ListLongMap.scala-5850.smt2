; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75634 () Bool)

(assert start!75634)

(declare-fun b!888931 () Bool)

(declare-fun b_free!15603 () Bool)

(declare-fun b_next!15603 () Bool)

(assert (=> b!888931 (= b_free!15603 (not b_next!15603))))

(declare-fun tp!54771 () Bool)

(declare-fun b_and!25861 () Bool)

(assert (=> b!888931 (= tp!54771 b_and!25861)))

(declare-fun mapNonEmpty!28444 () Bool)

(declare-fun mapRes!28444 () Bool)

(declare-fun tp!54772 () Bool)

(declare-fun e!495474 () Bool)

(assert (=> mapNonEmpty!28444 (= mapRes!28444 (and tp!54772 e!495474))))

(declare-fun mapKey!28444 () (_ BitVec 32))

(declare-datatypes ((array!51824 0))(
  ( (array!51825 (arr!24916 (Array (_ BitVec 32) (_ BitVec 64))) (size!25360 (_ BitVec 32))) )
))
(declare-datatypes ((V!28873 0))(
  ( (V!28874 (val!9016 Int)) )
))
(declare-datatypes ((ValueCell!8484 0))(
  ( (ValueCellFull!8484 (v!11488 V!28873)) (EmptyCell!8484) )
))
(declare-datatypes ((array!51826 0))(
  ( (array!51827 (arr!24917 (Array (_ BitVec 32) ValueCell!8484)) (size!25361 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3984 0))(
  ( (LongMapFixedSize!3985 (defaultEntry!5189 Int) (mask!25620 (_ BitVec 32)) (extraKeys!4883 (_ BitVec 32)) (zeroValue!4987 V!28873) (minValue!4987 V!28873) (_size!2047 (_ BitVec 32)) (_keys!9867 array!51824) (_values!5174 array!51826) (_vacant!2047 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3984)

(declare-fun mapRest!28444 () (Array (_ BitVec 32) ValueCell!8484))

(declare-fun mapValue!28444 () ValueCell!8484)

(assert (=> mapNonEmpty!28444 (= (arr!24917 (_values!5174 thiss!1181)) (store mapRest!28444 mapKey!28444 mapValue!28444))))

(declare-fun b!888927 () Bool)

(declare-fun res!602607 () Bool)

(declare-fun e!495469 () Bool)

(assert (=> b!888927 (=> (not res!602607) (not e!495469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!888927 (= res!602607 (validMask!0 (mask!25620 thiss!1181)))))

(declare-fun res!602605 () Bool)

(assert (=> start!75634 (=> (not res!602605) (not e!495469))))

(declare-fun valid!1541 (LongMapFixedSize!3984) Bool)

(assert (=> start!75634 (= res!602605 (valid!1541 thiss!1181))))

(assert (=> start!75634 e!495469))

(declare-fun e!495472 () Bool)

(assert (=> start!75634 e!495472))

(assert (=> start!75634 true))

(declare-fun b!888928 () Bool)

(declare-fun e!495470 () Bool)

(declare-fun tp_is_empty!17931 () Bool)

(assert (=> b!888928 (= e!495470 tp_is_empty!17931)))

(declare-fun b!888929 () Bool)

(declare-fun res!602606 () Bool)

(assert (=> b!888929 (=> (not res!602606) (not e!495469))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888929 (= res!602606 (not (= key!785 (bvneg key!785))))))

(declare-fun b!888930 () Bool)

(assert (=> b!888930 (= e!495469 (not (= (size!25360 (_keys!9867 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25620 thiss!1181)))))))

(declare-fun e!495471 () Bool)

(declare-fun array_inv!19574 (array!51824) Bool)

(declare-fun array_inv!19575 (array!51826) Bool)

(assert (=> b!888931 (= e!495472 (and tp!54771 tp_is_empty!17931 (array_inv!19574 (_keys!9867 thiss!1181)) (array_inv!19575 (_values!5174 thiss!1181)) e!495471))))

(declare-fun b!888932 () Bool)

(assert (=> b!888932 (= e!495471 (and e!495470 mapRes!28444))))

(declare-fun condMapEmpty!28444 () Bool)

(declare-fun mapDefault!28444 () ValueCell!8484)

(assert (=> b!888932 (= condMapEmpty!28444 (= (arr!24917 (_values!5174 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8484)) mapDefault!28444)))))

(declare-fun mapIsEmpty!28444 () Bool)

(assert (=> mapIsEmpty!28444 mapRes!28444))

(declare-fun b!888933 () Bool)

(assert (=> b!888933 (= e!495474 tp_is_empty!17931)))

(assert (= (and start!75634 res!602605) b!888929))

(assert (= (and b!888929 res!602606) b!888927))

(assert (= (and b!888927 res!602607) b!888930))

(assert (= (and b!888932 condMapEmpty!28444) mapIsEmpty!28444))

(assert (= (and b!888932 (not condMapEmpty!28444)) mapNonEmpty!28444))

(get-info :version)

(assert (= (and mapNonEmpty!28444 ((_ is ValueCellFull!8484) mapValue!28444)) b!888933))

(assert (= (and b!888932 ((_ is ValueCellFull!8484) mapDefault!28444)) b!888928))

(assert (= b!888931 b!888932))

(assert (= start!75634 b!888931))

(declare-fun m!828119 () Bool)

(assert (=> mapNonEmpty!28444 m!828119))

(declare-fun m!828121 () Bool)

(assert (=> b!888927 m!828121))

(declare-fun m!828123 () Bool)

(assert (=> start!75634 m!828123))

(declare-fun m!828125 () Bool)

(assert (=> b!888931 m!828125))

(declare-fun m!828127 () Bool)

(assert (=> b!888931 m!828127))

(check-sat (not b!888927) (not b!888931) (not start!75634) (not mapNonEmpty!28444) b_and!25861 (not b_next!15603) tp_is_empty!17931)
(check-sat b_and!25861 (not b_next!15603))
(get-model)

(declare-fun d!110059 () Bool)

(assert (=> d!110059 (= (array_inv!19574 (_keys!9867 thiss!1181)) (bvsge (size!25360 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888931 d!110059))

(declare-fun d!110061 () Bool)

(assert (=> d!110061 (= (array_inv!19575 (_values!5174 thiss!1181)) (bvsge (size!25361 (_values!5174 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888931 d!110061))

(declare-fun d!110063 () Bool)

(declare-fun res!602623 () Bool)

(declare-fun e!495495 () Bool)

(assert (=> d!110063 (=> (not res!602623) (not e!495495))))

(declare-fun simpleValid!292 (LongMapFixedSize!3984) Bool)

(assert (=> d!110063 (= res!602623 (simpleValid!292 thiss!1181))))

(assert (=> d!110063 (= (valid!1541 thiss!1181) e!495495)))

(declare-fun b!888961 () Bool)

(declare-fun res!602624 () Bool)

(assert (=> b!888961 (=> (not res!602624) (not e!495495))))

(declare-fun arrayCountValidKeys!0 (array!51824 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888961 (= res!602624 (= (arrayCountValidKeys!0 (_keys!9867 thiss!1181) #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))) (_size!2047 thiss!1181)))))

(declare-fun b!888962 () Bool)

(declare-fun res!602625 () Bool)

(assert (=> b!888962 (=> (not res!602625) (not e!495495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51824 (_ BitVec 32)) Bool)

(assert (=> b!888962 (= res!602625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9867 thiss!1181) (mask!25620 thiss!1181)))))

(declare-fun b!888963 () Bool)

(declare-datatypes ((List!17779 0))(
  ( (Nil!17776) (Cons!17775 (h!18906 (_ BitVec 64)) (t!25086 List!17779)) )
))
(declare-fun arrayNoDuplicates!0 (array!51824 (_ BitVec 32) List!17779) Bool)

(assert (=> b!888963 (= e!495495 (arrayNoDuplicates!0 (_keys!9867 thiss!1181) #b00000000000000000000000000000000 Nil!17776))))

(assert (= (and d!110063 res!602623) b!888961))

(assert (= (and b!888961 res!602624) b!888962))

(assert (= (and b!888962 res!602625) b!888963))

(declare-fun m!828139 () Bool)

(assert (=> d!110063 m!828139))

(declare-fun m!828141 () Bool)

(assert (=> b!888961 m!828141))

(declare-fun m!828143 () Bool)

(assert (=> b!888962 m!828143))

(declare-fun m!828145 () Bool)

(assert (=> b!888963 m!828145))

(assert (=> start!75634 d!110063))

(declare-fun d!110065 () Bool)

(assert (=> d!110065 (= (validMask!0 (mask!25620 thiss!1181)) (and (or (= (mask!25620 thiss!1181) #b00000000000000000000000000000111) (= (mask!25620 thiss!1181) #b00000000000000000000000000001111) (= (mask!25620 thiss!1181) #b00000000000000000000000000011111) (= (mask!25620 thiss!1181) #b00000000000000000000000000111111) (= (mask!25620 thiss!1181) #b00000000000000000000000001111111) (= (mask!25620 thiss!1181) #b00000000000000000000000011111111) (= (mask!25620 thiss!1181) #b00000000000000000000000111111111) (= (mask!25620 thiss!1181) #b00000000000000000000001111111111) (= (mask!25620 thiss!1181) #b00000000000000000000011111111111) (= (mask!25620 thiss!1181) #b00000000000000000000111111111111) (= (mask!25620 thiss!1181) #b00000000000000000001111111111111) (= (mask!25620 thiss!1181) #b00000000000000000011111111111111) (= (mask!25620 thiss!1181) #b00000000000000000111111111111111) (= (mask!25620 thiss!1181) #b00000000000000001111111111111111) (= (mask!25620 thiss!1181) #b00000000000000011111111111111111) (= (mask!25620 thiss!1181) #b00000000000000111111111111111111) (= (mask!25620 thiss!1181) #b00000000000001111111111111111111) (= (mask!25620 thiss!1181) #b00000000000011111111111111111111) (= (mask!25620 thiss!1181) #b00000000000111111111111111111111) (= (mask!25620 thiss!1181) #b00000000001111111111111111111111) (= (mask!25620 thiss!1181) #b00000000011111111111111111111111) (= (mask!25620 thiss!1181) #b00000000111111111111111111111111) (= (mask!25620 thiss!1181) #b00000001111111111111111111111111) (= (mask!25620 thiss!1181) #b00000011111111111111111111111111) (= (mask!25620 thiss!1181) #b00000111111111111111111111111111) (= (mask!25620 thiss!1181) #b00001111111111111111111111111111) (= (mask!25620 thiss!1181) #b00011111111111111111111111111111) (= (mask!25620 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25620 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!888927 d!110065))

(declare-fun b!888970 () Bool)

(declare-fun e!495500 () Bool)

(assert (=> b!888970 (= e!495500 tp_is_empty!17931)))

(declare-fun condMapEmpty!28450 () Bool)

(declare-fun mapDefault!28450 () ValueCell!8484)

(assert (=> mapNonEmpty!28444 (= condMapEmpty!28450 (= mapRest!28444 ((as const (Array (_ BitVec 32) ValueCell!8484)) mapDefault!28450)))))

(declare-fun e!495501 () Bool)

(declare-fun mapRes!28450 () Bool)

(assert (=> mapNonEmpty!28444 (= tp!54772 (and e!495501 mapRes!28450))))

(declare-fun b!888971 () Bool)

(assert (=> b!888971 (= e!495501 tp_is_empty!17931)))

(declare-fun mapIsEmpty!28450 () Bool)

(assert (=> mapIsEmpty!28450 mapRes!28450))

(declare-fun mapNonEmpty!28450 () Bool)

(declare-fun tp!54781 () Bool)

(assert (=> mapNonEmpty!28450 (= mapRes!28450 (and tp!54781 e!495500))))

(declare-fun mapValue!28450 () ValueCell!8484)

(declare-fun mapKey!28450 () (_ BitVec 32))

(declare-fun mapRest!28450 () (Array (_ BitVec 32) ValueCell!8484))

(assert (=> mapNonEmpty!28450 (= mapRest!28444 (store mapRest!28450 mapKey!28450 mapValue!28450))))

(assert (= (and mapNonEmpty!28444 condMapEmpty!28450) mapIsEmpty!28450))

(assert (= (and mapNonEmpty!28444 (not condMapEmpty!28450)) mapNonEmpty!28450))

(assert (= (and mapNonEmpty!28450 ((_ is ValueCellFull!8484) mapValue!28450)) b!888970))

(assert (= (and mapNonEmpty!28444 ((_ is ValueCellFull!8484) mapDefault!28450)) b!888971))

(declare-fun m!828147 () Bool)

(assert (=> mapNonEmpty!28450 m!828147))

(check-sat (not b!888962) b_and!25861 (not b!888963) (not b!888961) (not d!110063) (not mapNonEmpty!28450) (not b_next!15603) tp_is_empty!17931)
(check-sat b_and!25861 (not b_next!15603))
(get-model)

(declare-fun b!888980 () Bool)

(declare-fun e!495509 () Bool)

(declare-fun e!495508 () Bool)

(assert (=> b!888980 (= e!495509 e!495508)))

(declare-fun lt!401934 () (_ BitVec 64))

(assert (=> b!888980 (= lt!401934 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30245 0))(
  ( (Unit!30246) )
))
(declare-fun lt!401932 () Unit!30245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51824 (_ BitVec 64) (_ BitVec 32)) Unit!30245)

(assert (=> b!888980 (= lt!401932 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9867 thiss!1181) lt!401934 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!888980 (arrayContainsKey!0 (_keys!9867 thiss!1181) lt!401934 #b00000000000000000000000000000000)))

(declare-fun lt!401933 () Unit!30245)

(assert (=> b!888980 (= lt!401933 lt!401932)))

(declare-fun res!602630 () Bool)

(declare-datatypes ((SeekEntryResult!8759 0))(
  ( (MissingZero!8759 (index!37406 (_ BitVec 32))) (Found!8759 (index!37407 (_ BitVec 32))) (Intermediate!8759 (undefined!9571 Bool) (index!37408 (_ BitVec 32)) (x!75456 (_ BitVec 32))) (Undefined!8759) (MissingVacant!8759 (index!37409 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51824 (_ BitVec 32)) SeekEntryResult!8759)

(assert (=> b!888980 (= res!602630 (= (seekEntryOrOpen!0 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000) (_keys!9867 thiss!1181) (mask!25620 thiss!1181)) (Found!8759 #b00000000000000000000000000000000)))))

(assert (=> b!888980 (=> (not res!602630) (not e!495508))))

(declare-fun d!110067 () Bool)

(declare-fun res!602631 () Bool)

(declare-fun e!495510 () Bool)

(assert (=> d!110067 (=> res!602631 e!495510)))

(assert (=> d!110067 (= res!602631 (bvsge #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))))))

(assert (=> d!110067 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9867 thiss!1181) (mask!25620 thiss!1181)) e!495510)))

(declare-fun b!888981 () Bool)

(declare-fun call!39504 () Bool)

(assert (=> b!888981 (= e!495508 call!39504)))

(declare-fun b!888982 () Bool)

(assert (=> b!888982 (= e!495510 e!495509)))

(declare-fun c!93854 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!888982 (= c!93854 (validKeyInArray!0 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39501 () Bool)

(assert (=> bm!39501 (= call!39504 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!9867 thiss!1181) (mask!25620 thiss!1181)))))

(declare-fun b!888983 () Bool)

(assert (=> b!888983 (= e!495509 call!39504)))

(assert (= (and d!110067 (not res!602631)) b!888982))

(assert (= (and b!888982 c!93854) b!888980))

(assert (= (and b!888982 (not c!93854)) b!888983))

(assert (= (and b!888980 res!602630) b!888981))

(assert (= (or b!888981 b!888983) bm!39501))

(declare-fun m!828149 () Bool)

(assert (=> b!888980 m!828149))

(declare-fun m!828151 () Bool)

(assert (=> b!888980 m!828151))

(declare-fun m!828153 () Bool)

(assert (=> b!888980 m!828153))

(assert (=> b!888980 m!828149))

(declare-fun m!828155 () Bool)

(assert (=> b!888980 m!828155))

(assert (=> b!888982 m!828149))

(assert (=> b!888982 m!828149))

(declare-fun m!828157 () Bool)

(assert (=> b!888982 m!828157))

(declare-fun m!828159 () Bool)

(assert (=> bm!39501 m!828159))

(assert (=> b!888962 d!110067))

(declare-fun b!888992 () Bool)

(declare-fun e!495515 () (_ BitVec 32))

(declare-fun e!495516 () (_ BitVec 32))

(assert (=> b!888992 (= e!495515 e!495516)))

(declare-fun c!93859 () Bool)

(assert (=> b!888992 (= c!93859 (validKeyInArray!0 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888993 () Bool)

(declare-fun call!39507 () (_ BitVec 32))

(assert (=> b!888993 (= e!495516 (bvadd #b00000000000000000000000000000001 call!39507))))

(declare-fun b!888994 () Bool)

(assert (=> b!888994 (= e!495515 #b00000000000000000000000000000000)))

(declare-fun d!110069 () Bool)

(declare-fun lt!401937 () (_ BitVec 32))

(assert (=> d!110069 (and (bvsge lt!401937 #b00000000000000000000000000000000) (bvsle lt!401937 (bvsub (size!25360 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110069 (= lt!401937 e!495515)))

(declare-fun c!93860 () Bool)

(assert (=> d!110069 (= c!93860 (bvsge #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))))))

(assert (=> d!110069 (and (bvsle #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25360 (_keys!9867 thiss!1181)) (size!25360 (_keys!9867 thiss!1181))))))

(assert (=> d!110069 (= (arrayCountValidKeys!0 (_keys!9867 thiss!1181) #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))) lt!401937)))

(declare-fun bm!39504 () Bool)

(assert (=> bm!39504 (= call!39507 (arrayCountValidKeys!0 (_keys!9867 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25360 (_keys!9867 thiss!1181))))))

(declare-fun b!888995 () Bool)

(assert (=> b!888995 (= e!495516 call!39507)))

(assert (= (and d!110069 c!93860) b!888994))

(assert (= (and d!110069 (not c!93860)) b!888992))

(assert (= (and b!888992 c!93859) b!888993))

(assert (= (and b!888992 (not c!93859)) b!888995))

(assert (= (or b!888993 b!888995) bm!39504))

(assert (=> b!888992 m!828149))

(assert (=> b!888992 m!828149))

(assert (=> b!888992 m!828157))

(declare-fun m!828161 () Bool)

(assert (=> bm!39504 m!828161))

(assert (=> b!888961 d!110069))

(declare-fun b!889005 () Bool)

(declare-fun res!602640 () Bool)

(declare-fun e!495519 () Bool)

(assert (=> b!889005 (=> (not res!602640) (not e!495519))))

(declare-fun size!25364 (LongMapFixedSize!3984) (_ BitVec 32))

(assert (=> b!889005 (= res!602640 (bvsge (size!25364 thiss!1181) (_size!2047 thiss!1181)))))

(declare-fun b!889006 () Bool)

(declare-fun res!602642 () Bool)

(assert (=> b!889006 (=> (not res!602642) (not e!495519))))

(assert (=> b!889006 (= res!602642 (= (size!25364 thiss!1181) (bvadd (_size!2047 thiss!1181) (bvsdiv (bvadd (extraKeys!4883 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!110071 () Bool)

(declare-fun res!602641 () Bool)

(assert (=> d!110071 (=> (not res!602641) (not e!495519))))

(assert (=> d!110071 (= res!602641 (validMask!0 (mask!25620 thiss!1181)))))

(assert (=> d!110071 (= (simpleValid!292 thiss!1181) e!495519)))

(declare-fun b!889007 () Bool)

(assert (=> b!889007 (= e!495519 (and (bvsge (extraKeys!4883 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4883 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2047 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!889004 () Bool)

(declare-fun res!602643 () Bool)

(assert (=> b!889004 (=> (not res!602643) (not e!495519))))

(assert (=> b!889004 (= res!602643 (and (= (size!25361 (_values!5174 thiss!1181)) (bvadd (mask!25620 thiss!1181) #b00000000000000000000000000000001)) (= (size!25360 (_keys!9867 thiss!1181)) (size!25361 (_values!5174 thiss!1181))) (bvsge (_size!2047 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2047 thiss!1181) (bvadd (mask!25620 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!110071 res!602641) b!889004))

(assert (= (and b!889004 res!602643) b!889005))

(assert (= (and b!889005 res!602640) b!889006))

(assert (= (and b!889006 res!602642) b!889007))

(declare-fun m!828163 () Bool)

(assert (=> b!889005 m!828163))

(assert (=> b!889006 m!828163))

(assert (=> d!110071 m!828121))

(assert (=> d!110063 d!110071))

(declare-fun b!889018 () Bool)

(declare-fun e!495531 () Bool)

(declare-fun e!495529 () Bool)

(assert (=> b!889018 (= e!495531 e!495529)))

(declare-fun c!93863 () Bool)

(assert (=> b!889018 (= c!93863 (validKeyInArray!0 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!889019 () Bool)

(declare-fun call!39510 () Bool)

(assert (=> b!889019 (= e!495529 call!39510)))

(declare-fun b!889020 () Bool)

(declare-fun e!495528 () Bool)

(declare-fun contains!4329 (List!17779 (_ BitVec 64)) Bool)

(assert (=> b!889020 (= e!495528 (contains!4329 Nil!17776 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!889021 () Bool)

(declare-fun e!495530 () Bool)

(assert (=> b!889021 (= e!495530 e!495531)))

(declare-fun res!602651 () Bool)

(assert (=> b!889021 (=> (not res!602651) (not e!495531))))

(assert (=> b!889021 (= res!602651 (not e!495528))))

(declare-fun res!602652 () Bool)

(assert (=> b!889021 (=> (not res!602652) (not e!495528))))

(assert (=> b!889021 (= res!602652 (validKeyInArray!0 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!889022 () Bool)

(assert (=> b!889022 (= e!495529 call!39510)))

(declare-fun d!110073 () Bool)

(declare-fun res!602650 () Bool)

(assert (=> d!110073 (=> res!602650 e!495530)))

(assert (=> d!110073 (= res!602650 (bvsge #b00000000000000000000000000000000 (size!25360 (_keys!9867 thiss!1181))))))

(assert (=> d!110073 (= (arrayNoDuplicates!0 (_keys!9867 thiss!1181) #b00000000000000000000000000000000 Nil!17776) e!495530)))

(declare-fun bm!39507 () Bool)

(assert (=> bm!39507 (= call!39510 (arrayNoDuplicates!0 (_keys!9867 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93863 (Cons!17775 (select (arr!24916 (_keys!9867 thiss!1181)) #b00000000000000000000000000000000) Nil!17776) Nil!17776)))))

(assert (= (and d!110073 (not res!602650)) b!889021))

(assert (= (and b!889021 res!602652) b!889020))

(assert (= (and b!889021 res!602651) b!889018))

(assert (= (and b!889018 c!93863) b!889022))

(assert (= (and b!889018 (not c!93863)) b!889019))

(assert (= (or b!889022 b!889019) bm!39507))

(assert (=> b!889018 m!828149))

(assert (=> b!889018 m!828149))

(assert (=> b!889018 m!828157))

(assert (=> b!889020 m!828149))

(assert (=> b!889020 m!828149))

(declare-fun m!828165 () Bool)

(assert (=> b!889020 m!828165))

(assert (=> b!889021 m!828149))

(assert (=> b!889021 m!828149))

(assert (=> b!889021 m!828157))

(assert (=> bm!39507 m!828149))

(declare-fun m!828167 () Bool)

(assert (=> bm!39507 m!828167))

(assert (=> b!888963 d!110073))

(declare-fun b!889023 () Bool)

(declare-fun e!495532 () Bool)

(assert (=> b!889023 (= e!495532 tp_is_empty!17931)))

(declare-fun condMapEmpty!28451 () Bool)

(declare-fun mapDefault!28451 () ValueCell!8484)

(assert (=> mapNonEmpty!28450 (= condMapEmpty!28451 (= mapRest!28450 ((as const (Array (_ BitVec 32) ValueCell!8484)) mapDefault!28451)))))

(declare-fun e!495533 () Bool)

(declare-fun mapRes!28451 () Bool)

(assert (=> mapNonEmpty!28450 (= tp!54781 (and e!495533 mapRes!28451))))

(declare-fun b!889024 () Bool)

(assert (=> b!889024 (= e!495533 tp_is_empty!17931)))

(declare-fun mapIsEmpty!28451 () Bool)

(assert (=> mapIsEmpty!28451 mapRes!28451))

(declare-fun mapNonEmpty!28451 () Bool)

(declare-fun tp!54782 () Bool)

(assert (=> mapNonEmpty!28451 (= mapRes!28451 (and tp!54782 e!495532))))

(declare-fun mapValue!28451 () ValueCell!8484)

(declare-fun mapKey!28451 () (_ BitVec 32))

(declare-fun mapRest!28451 () (Array (_ BitVec 32) ValueCell!8484))

(assert (=> mapNonEmpty!28451 (= mapRest!28450 (store mapRest!28451 mapKey!28451 mapValue!28451))))

(assert (= (and mapNonEmpty!28450 condMapEmpty!28451) mapIsEmpty!28451))

(assert (= (and mapNonEmpty!28450 (not condMapEmpty!28451)) mapNonEmpty!28451))

(assert (= (and mapNonEmpty!28451 ((_ is ValueCellFull!8484) mapValue!28451)) b!889023))

(assert (= (and mapNonEmpty!28450 ((_ is ValueCellFull!8484) mapDefault!28451)) b!889024))

(declare-fun m!828169 () Bool)

(assert (=> mapNonEmpty!28451 m!828169))

(check-sat (not bm!39507) (not d!110071) (not b!889006) (not b!888992) (not b!889005) (not mapNonEmpty!28451) (not bm!39501) (not b!888982) b_and!25861 (not b!888980) (not b!889018) (not b_next!15603) tp_is_empty!17931 (not bm!39504) (not b!889020) (not b!889021))
(check-sat b_and!25861 (not b_next!15603))
