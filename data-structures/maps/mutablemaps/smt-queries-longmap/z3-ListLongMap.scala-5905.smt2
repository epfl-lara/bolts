; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76402 () Bool)

(assert start!76402)

(declare-fun b!895856 () Bool)

(declare-fun b_free!15933 () Bool)

(declare-fun b_next!15933 () Bool)

(assert (=> b!895856 (= b_free!15933 (not b_next!15933))))

(declare-fun tp!55822 () Bool)

(declare-fun b_and!26243 () Bool)

(assert (=> b!895856 (= tp!55822 b_and!26243)))

(declare-fun mapNonEmpty!28999 () Bool)

(declare-fun mapRes!28999 () Bool)

(declare-fun tp!55821 () Bool)

(declare-fun e!500671 () Bool)

(assert (=> mapNonEmpty!28999 (= mapRes!28999 (and tp!55821 e!500671))))

(declare-datatypes ((V!29313 0))(
  ( (V!29314 (val!9181 Int)) )
))
(declare-datatypes ((ValueCell!8649 0))(
  ( (ValueCellFull!8649 (v!11668 V!29313)) (EmptyCell!8649) )
))
(declare-fun mapValue!28999 () ValueCell!8649)

(declare-fun mapKey!28999 () (_ BitVec 32))

(declare-fun mapRest!28999 () (Array (_ BitVec 32) ValueCell!8649))

(declare-datatypes ((array!52518 0))(
  ( (array!52519 (arr!25246 (Array (_ BitVec 32) (_ BitVec 64))) (size!25697 (_ BitVec 32))) )
))
(declare-datatypes ((array!52520 0))(
  ( (array!52521 (arr!25247 (Array (_ BitVec 32) ValueCell!8649)) (size!25698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4314 0))(
  ( (LongMapFixedSize!4315 (defaultEntry!5369 Int) (mask!25981 (_ BitVec 32)) (extraKeys!5066 (_ BitVec 32)) (zeroValue!5170 V!29313) (minValue!5170 V!29313) (_size!2212 (_ BitVec 32)) (_keys!10088 array!52518) (_values!5357 array!52520) (_vacant!2212 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4314)

(assert (=> mapNonEmpty!28999 (= (arr!25247 (_values!5357 thiss!1181)) (store mapRest!28999 mapKey!28999 mapValue!28999))))

(declare-fun b!895851 () Bool)

(declare-fun e!500673 () Bool)

(declare-datatypes ((SeekEntryResult!8879 0))(
  ( (MissingZero!8879 (index!37886 (_ BitVec 32))) (Found!8879 (index!37887 (_ BitVec 32))) (Intermediate!8879 (undefined!9691 Bool) (index!37888 (_ BitVec 32)) (x!76248 (_ BitVec 32))) (Undefined!8879) (MissingVacant!8879 (index!37889 (_ BitVec 32))) )
))
(declare-fun lt!404612 () SeekEntryResult!8879)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!895851 (= e!500673 (inRange!0 (index!37887 lt!404612) (mask!25981 thiss!1181)))))

(declare-fun b!895852 () Bool)

(declare-fun e!500672 () Bool)

(get-info :version)

(assert (=> b!895852 (= e!500672 (not (or (not ((_ is Found!8879) lt!404612)) (bvslt (index!37887 lt!404612) #b00000000000000000000000000000000) (bvslt (index!37887 lt!404612) (size!25697 (_keys!10088 thiss!1181))))))))

(assert (=> b!895852 e!500673))

(declare-fun res!605977 () Bool)

(assert (=> b!895852 (=> res!605977 e!500673)))

(assert (=> b!895852 (= res!605977 (not ((_ is Found!8879) lt!404612)))))

(declare-datatypes ((Unit!30445 0))(
  ( (Unit!30446) )
))
(declare-fun lt!404613 () Unit!30445)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!72 (array!52518 array!52520 (_ BitVec 32) (_ BitVec 32) V!29313 V!29313 (_ BitVec 64)) Unit!30445)

(assert (=> b!895852 (= lt!404613 (lemmaSeekEntryGivesInRangeIndex!72 (_keys!10088 thiss!1181) (_values!5357 thiss!1181) (mask!25981 thiss!1181) (extraKeys!5066 thiss!1181) (zeroValue!5170 thiss!1181) (minValue!5170 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52518 (_ BitVec 32)) SeekEntryResult!8879)

(assert (=> b!895852 (= lt!404612 (seekEntry!0 key!785 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)))))

(declare-fun b!895853 () Bool)

(declare-fun res!605978 () Bool)

(assert (=> b!895853 (=> (not res!605978) (not e!500672))))

(assert (=> b!895853 (= res!605978 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895854 () Bool)

(declare-fun e!500677 () Bool)

(declare-fun e!500675 () Bool)

(assert (=> b!895854 (= e!500677 (and e!500675 mapRes!28999))))

(declare-fun condMapEmpty!28999 () Bool)

(declare-fun mapDefault!28999 () ValueCell!8649)

(assert (=> b!895854 (= condMapEmpty!28999 (= (arr!25247 (_values!5357 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8649)) mapDefault!28999)))))

(declare-fun b!895855 () Bool)

(declare-fun tp_is_empty!18261 () Bool)

(assert (=> b!895855 (= e!500675 tp_is_empty!18261)))

(declare-fun e!500676 () Bool)

(declare-fun array_inv!19794 (array!52518) Bool)

(declare-fun array_inv!19795 (array!52520) Bool)

(assert (=> b!895856 (= e!500676 (and tp!55822 tp_is_empty!18261 (array_inv!19794 (_keys!10088 thiss!1181)) (array_inv!19795 (_values!5357 thiss!1181)) e!500677))))

(declare-fun res!605979 () Bool)

(assert (=> start!76402 (=> (not res!605979) (not e!500672))))

(declare-fun valid!1655 (LongMapFixedSize!4314) Bool)

(assert (=> start!76402 (= res!605979 (valid!1655 thiss!1181))))

(assert (=> start!76402 e!500672))

(assert (=> start!76402 e!500676))

(assert (=> start!76402 true))

(declare-fun b!895857 () Bool)

(assert (=> b!895857 (= e!500671 tp_is_empty!18261)))

(declare-fun mapIsEmpty!28999 () Bool)

(assert (=> mapIsEmpty!28999 mapRes!28999))

(assert (= (and start!76402 res!605979) b!895853))

(assert (= (and b!895853 res!605978) b!895852))

(assert (= (and b!895852 (not res!605977)) b!895851))

(assert (= (and b!895854 condMapEmpty!28999) mapIsEmpty!28999))

(assert (= (and b!895854 (not condMapEmpty!28999)) mapNonEmpty!28999))

(assert (= (and mapNonEmpty!28999 ((_ is ValueCellFull!8649) mapValue!28999)) b!895857))

(assert (= (and b!895854 ((_ is ValueCellFull!8649) mapDefault!28999)) b!895855))

(assert (= b!895856 b!895854))

(assert (= start!76402 b!895856))

(declare-fun m!833305 () Bool)

(assert (=> b!895851 m!833305))

(declare-fun m!833307 () Bool)

(assert (=> mapNonEmpty!28999 m!833307))

(declare-fun m!833309 () Bool)

(assert (=> start!76402 m!833309))

(declare-fun m!833311 () Bool)

(assert (=> b!895852 m!833311))

(declare-fun m!833313 () Bool)

(assert (=> b!895852 m!833313))

(declare-fun m!833315 () Bool)

(assert (=> b!895856 m!833315))

(declare-fun m!833317 () Bool)

(assert (=> b!895856 m!833317))

(check-sat (not b_next!15933) (not b!895856) (not b!895851) tp_is_empty!18261 (not mapNonEmpty!28999) (not start!76402) b_and!26243 (not b!895852))
(check-sat b_and!26243 (not b_next!15933))
(get-model)

(declare-fun d!110767 () Bool)

(assert (=> d!110767 (= (inRange!0 (index!37887 lt!404612) (mask!25981 thiss!1181)) (and (bvsge (index!37887 lt!404612) #b00000000000000000000000000000000) (bvslt (index!37887 lt!404612) (bvadd (mask!25981 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!895851 d!110767))

(declare-fun d!110769 () Bool)

(declare-fun e!500701 () Bool)

(assert (=> d!110769 e!500701))

(declare-fun res!605991 () Bool)

(assert (=> d!110769 (=> res!605991 e!500701)))

(declare-fun lt!404625 () SeekEntryResult!8879)

(assert (=> d!110769 (= res!605991 (not ((_ is Found!8879) lt!404625)))))

(assert (=> d!110769 (= lt!404625 (seekEntry!0 key!785 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)))))

(declare-fun lt!404624 () Unit!30445)

(declare-fun choose!1483 (array!52518 array!52520 (_ BitVec 32) (_ BitVec 32) V!29313 V!29313 (_ BitVec 64)) Unit!30445)

(assert (=> d!110769 (= lt!404624 (choose!1483 (_keys!10088 thiss!1181) (_values!5357 thiss!1181) (mask!25981 thiss!1181) (extraKeys!5066 thiss!1181) (zeroValue!5170 thiss!1181) (minValue!5170 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110769 (validMask!0 (mask!25981 thiss!1181))))

(assert (=> d!110769 (= (lemmaSeekEntryGivesInRangeIndex!72 (_keys!10088 thiss!1181) (_values!5357 thiss!1181) (mask!25981 thiss!1181) (extraKeys!5066 thiss!1181) (zeroValue!5170 thiss!1181) (minValue!5170 thiss!1181) key!785) lt!404624)))

(declare-fun b!895881 () Bool)

(assert (=> b!895881 (= e!500701 (inRange!0 (index!37887 lt!404625) (mask!25981 thiss!1181)))))

(assert (= (and d!110769 (not res!605991)) b!895881))

(assert (=> d!110769 m!833313))

(declare-fun m!833333 () Bool)

(assert (=> d!110769 m!833333))

(declare-fun m!833335 () Bool)

(assert (=> d!110769 m!833335))

(declare-fun m!833337 () Bool)

(assert (=> b!895881 m!833337))

(assert (=> b!895852 d!110769))

(declare-fun b!895894 () Bool)

(declare-fun c!94550 () Bool)

(declare-fun lt!404634 () (_ BitVec 64))

(assert (=> b!895894 (= c!94550 (= lt!404634 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500708 () SeekEntryResult!8879)

(declare-fun e!500709 () SeekEntryResult!8879)

(assert (=> b!895894 (= e!500708 e!500709)))

(declare-fun d!110771 () Bool)

(declare-fun lt!404636 () SeekEntryResult!8879)

(assert (=> d!110771 (and (or ((_ is MissingVacant!8879) lt!404636) (not ((_ is Found!8879) lt!404636)) (and (bvsge (index!37887 lt!404636) #b00000000000000000000000000000000) (bvslt (index!37887 lt!404636) (size!25697 (_keys!10088 thiss!1181))))) (not ((_ is MissingVacant!8879) lt!404636)) (or (not ((_ is Found!8879) lt!404636)) (= (select (arr!25246 (_keys!10088 thiss!1181)) (index!37887 lt!404636)) key!785)))))

(declare-fun e!500710 () SeekEntryResult!8879)

(assert (=> d!110771 (= lt!404636 e!500710)))

(declare-fun c!94552 () Bool)

(declare-fun lt!404637 () SeekEntryResult!8879)

(assert (=> d!110771 (= c!94552 (and ((_ is Intermediate!8879) lt!404637) (undefined!9691 lt!404637)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52518 (_ BitVec 32)) SeekEntryResult!8879)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110771 (= lt!404637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25981 thiss!1181)) key!785 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)))))

(assert (=> d!110771 (validMask!0 (mask!25981 thiss!1181))))

(assert (=> d!110771 (= (seekEntry!0 key!785 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)) lt!404636)))

(declare-fun b!895895 () Bool)

(assert (=> b!895895 (= e!500710 e!500708)))

(assert (=> b!895895 (= lt!404634 (select (arr!25246 (_keys!10088 thiss!1181)) (index!37888 lt!404637)))))

(declare-fun c!94551 () Bool)

(assert (=> b!895895 (= c!94551 (= lt!404634 key!785))))

(declare-fun b!895896 () Bool)

(assert (=> b!895896 (= e!500710 Undefined!8879)))

(declare-fun b!895897 () Bool)

(declare-fun lt!404635 () SeekEntryResult!8879)

(assert (=> b!895897 (= e!500709 (ite ((_ is MissingVacant!8879) lt!404635) (MissingZero!8879 (index!37889 lt!404635)) lt!404635))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52518 (_ BitVec 32)) SeekEntryResult!8879)

(assert (=> b!895897 (= lt!404635 (seekKeyOrZeroReturnVacant!0 (x!76248 lt!404637) (index!37888 lt!404637) (index!37888 lt!404637) key!785 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)))))

(declare-fun b!895898 () Bool)

(assert (=> b!895898 (= e!500709 (MissingZero!8879 (index!37888 lt!404637)))))

(declare-fun b!895899 () Bool)

(assert (=> b!895899 (= e!500708 (Found!8879 (index!37888 lt!404637)))))

(assert (= (and d!110771 c!94552) b!895896))

(assert (= (and d!110771 (not c!94552)) b!895895))

(assert (= (and b!895895 c!94551) b!895899))

(assert (= (and b!895895 (not c!94551)) b!895894))

(assert (= (and b!895894 c!94550) b!895898))

(assert (= (and b!895894 (not c!94550)) b!895897))

(declare-fun m!833339 () Bool)

(assert (=> d!110771 m!833339))

(declare-fun m!833341 () Bool)

(assert (=> d!110771 m!833341))

(assert (=> d!110771 m!833341))

(declare-fun m!833343 () Bool)

(assert (=> d!110771 m!833343))

(assert (=> d!110771 m!833335))

(declare-fun m!833345 () Bool)

(assert (=> b!895895 m!833345))

(declare-fun m!833347 () Bool)

(assert (=> b!895897 m!833347))

(assert (=> b!895852 d!110771))

(declare-fun d!110773 () Bool)

(declare-fun res!605998 () Bool)

(declare-fun e!500713 () Bool)

(assert (=> d!110773 (=> (not res!605998) (not e!500713))))

(declare-fun simpleValid!309 (LongMapFixedSize!4314) Bool)

(assert (=> d!110773 (= res!605998 (simpleValid!309 thiss!1181))))

(assert (=> d!110773 (= (valid!1655 thiss!1181) e!500713)))

(declare-fun b!895906 () Bool)

(declare-fun res!605999 () Bool)

(assert (=> b!895906 (=> (not res!605999) (not e!500713))))

(declare-fun arrayCountValidKeys!0 (array!52518 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895906 (= res!605999 (= (arrayCountValidKeys!0 (_keys!10088 thiss!1181) #b00000000000000000000000000000000 (size!25697 (_keys!10088 thiss!1181))) (_size!2212 thiss!1181)))))

(declare-fun b!895907 () Bool)

(declare-fun res!606000 () Bool)

(assert (=> b!895907 (=> (not res!606000) (not e!500713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52518 (_ BitVec 32)) Bool)

(assert (=> b!895907 (= res!606000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10088 thiss!1181) (mask!25981 thiss!1181)))))

(declare-fun b!895908 () Bool)

(declare-datatypes ((List!17897 0))(
  ( (Nil!17894) (Cons!17893 (h!19030 (_ BitVec 64)) (t!25244 List!17897)) )
))
(declare-fun arrayNoDuplicates!0 (array!52518 (_ BitVec 32) List!17897) Bool)

(assert (=> b!895908 (= e!500713 (arrayNoDuplicates!0 (_keys!10088 thiss!1181) #b00000000000000000000000000000000 Nil!17894))))

(assert (= (and d!110773 res!605998) b!895906))

(assert (= (and b!895906 res!605999) b!895907))

(assert (= (and b!895907 res!606000) b!895908))

(declare-fun m!833349 () Bool)

(assert (=> d!110773 m!833349))

(declare-fun m!833351 () Bool)

(assert (=> b!895906 m!833351))

(declare-fun m!833353 () Bool)

(assert (=> b!895907 m!833353))

(declare-fun m!833355 () Bool)

(assert (=> b!895908 m!833355))

(assert (=> start!76402 d!110773))

(declare-fun d!110775 () Bool)

(assert (=> d!110775 (= (array_inv!19794 (_keys!10088 thiss!1181)) (bvsge (size!25697 (_keys!10088 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895856 d!110775))

(declare-fun d!110777 () Bool)

(assert (=> d!110777 (= (array_inv!19795 (_values!5357 thiss!1181)) (bvsge (size!25698 (_values!5357 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895856 d!110777))

(declare-fun b!895915 () Bool)

(declare-fun e!500718 () Bool)

(assert (=> b!895915 (= e!500718 tp_is_empty!18261)))

(declare-fun condMapEmpty!29005 () Bool)

(declare-fun mapDefault!29005 () ValueCell!8649)

(assert (=> mapNonEmpty!28999 (= condMapEmpty!29005 (= mapRest!28999 ((as const (Array (_ BitVec 32) ValueCell!8649)) mapDefault!29005)))))

(declare-fun e!500719 () Bool)

(declare-fun mapRes!29005 () Bool)

(assert (=> mapNonEmpty!28999 (= tp!55821 (and e!500719 mapRes!29005))))

(declare-fun b!895916 () Bool)

(assert (=> b!895916 (= e!500719 tp_is_empty!18261)))

(declare-fun mapIsEmpty!29005 () Bool)

(assert (=> mapIsEmpty!29005 mapRes!29005))

(declare-fun mapNonEmpty!29005 () Bool)

(declare-fun tp!55831 () Bool)

(assert (=> mapNonEmpty!29005 (= mapRes!29005 (and tp!55831 e!500718))))

(declare-fun mapKey!29005 () (_ BitVec 32))

(declare-fun mapValue!29005 () ValueCell!8649)

(declare-fun mapRest!29005 () (Array (_ BitVec 32) ValueCell!8649))

(assert (=> mapNonEmpty!29005 (= mapRest!28999 (store mapRest!29005 mapKey!29005 mapValue!29005))))

(assert (= (and mapNonEmpty!28999 condMapEmpty!29005) mapIsEmpty!29005))

(assert (= (and mapNonEmpty!28999 (not condMapEmpty!29005)) mapNonEmpty!29005))

(assert (= (and mapNonEmpty!29005 ((_ is ValueCellFull!8649) mapValue!29005)) b!895915))

(assert (= (and mapNonEmpty!28999 ((_ is ValueCellFull!8649) mapDefault!29005)) b!895916))

(declare-fun m!833357 () Bool)

(assert (=> mapNonEmpty!29005 m!833357))

(check-sat (not d!110769) (not b!895881) b_and!26243 (not b!895897) (not b!895906) (not d!110771) (not b!895908) (not b_next!15933) tp_is_empty!18261 (not mapNonEmpty!29005) (not b!895907) (not d!110773))
(check-sat b_and!26243 (not b_next!15933))
