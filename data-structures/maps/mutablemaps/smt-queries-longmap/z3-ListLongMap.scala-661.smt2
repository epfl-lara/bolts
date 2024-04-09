; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16338 () Bool)

(assert start!16338)

(declare-fun b!162826 () Bool)

(declare-fun b_free!3777 () Bool)

(declare-fun b_next!3777 () Bool)

(assert (=> b!162826 (= b_free!3777 (not b_next!3777))))

(declare-fun tp!13904 () Bool)

(declare-fun b_and!10209 () Bool)

(assert (=> b!162826 (= tp!13904 b_and!10209)))

(declare-fun mapNonEmpty!6059 () Bool)

(declare-fun mapRes!6059 () Bool)

(declare-fun tp!13903 () Bool)

(declare-fun e!106829 () Bool)

(assert (=> mapNonEmpty!6059 (= mapRes!6059 (and tp!13903 e!106829))))

(declare-datatypes ((V!4419 0))(
  ( (V!4420 (val!1834 Int)) )
))
(declare-datatypes ((ValueCell!1446 0))(
  ( (ValueCellFull!1446 (v!3695 V!4419)) (EmptyCell!1446) )
))
(declare-fun mapRest!6059 () (Array (_ BitVec 32) ValueCell!1446))

(declare-fun mapValue!6059 () ValueCell!1446)

(declare-fun mapKey!6059 () (_ BitVec 32))

(declare-datatypes ((array!6238 0))(
  ( (array!6239 (arr!2962 (Array (_ BitVec 32) (_ BitVec 64))) (size!3246 (_ BitVec 32))) )
))
(declare-datatypes ((array!6240 0))(
  ( (array!6241 (arr!2963 (Array (_ BitVec 32) ValueCell!1446)) (size!3247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1800 0))(
  ( (LongMapFixedSize!1801 (defaultEntry!3342 Int) (mask!7978 (_ BitVec 32)) (extraKeys!3083 (_ BitVec 32)) (zeroValue!3185 V!4419) (minValue!3185 V!4419) (_size!949 (_ BitVec 32)) (_keys!5144 array!6238) (_values!3325 array!6240) (_vacant!949 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1800)

(assert (=> mapNonEmpty!6059 (= (arr!2963 (_values!3325 thiss!1248)) (store mapRest!6059 mapKey!6059 mapValue!6059))))

(declare-fun b!162823 () Bool)

(declare-fun res!77115 () Bool)

(declare-fun e!106823 () Bool)

(assert (=> b!162823 (=> (not res!77115) (not e!106823))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162823 (= res!77115 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162824 () Bool)

(declare-fun e!106824 () Bool)

(declare-fun e!106825 () Bool)

(assert (=> b!162824 (= e!106824 (and e!106825 mapRes!6059))))

(declare-fun condMapEmpty!6059 () Bool)

(declare-fun mapDefault!6059 () ValueCell!1446)

(assert (=> b!162824 (= condMapEmpty!6059 (= (arr!2963 (_values!3325 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1446)) mapDefault!6059)))))

(declare-fun b!162825 () Bool)

(declare-fun e!106827 () Bool)

(assert (=> b!162825 (= e!106823 e!106827)))

(declare-fun res!77116 () Bool)

(assert (=> b!162825 (=> (not res!77116) (not e!106827))))

(declare-datatypes ((SeekEntryResult!403 0))(
  ( (MissingZero!403 (index!3780 (_ BitVec 32))) (Found!403 (index!3781 (_ BitVec 32))) (Intermediate!403 (undefined!1215 Bool) (index!3782 (_ BitVec 32)) (x!18043 (_ BitVec 32))) (Undefined!403) (MissingVacant!403 (index!3783 (_ BitVec 32))) )
))
(declare-fun lt!82580 () SeekEntryResult!403)

(get-info :version)

(assert (=> b!162825 (= res!77116 (and (not ((_ is Undefined!403) lt!82580)) (not ((_ is MissingVacant!403) lt!82580)) (not ((_ is MissingZero!403) lt!82580)) ((_ is Found!403) lt!82580)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6238 (_ BitVec 32)) SeekEntryResult!403)

(assert (=> b!162825 (= lt!82580 (seekEntryOrOpen!0 key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(declare-fun tp_is_empty!3579 () Bool)

(declare-fun e!106826 () Bool)

(declare-fun array_inv!1883 (array!6238) Bool)

(declare-fun array_inv!1884 (array!6240) Bool)

(assert (=> b!162826 (= e!106826 (and tp!13904 tp_is_empty!3579 (array_inv!1883 (_keys!5144 thiss!1248)) (array_inv!1884 (_values!3325 thiss!1248)) e!106824))))

(declare-fun b!162827 () Bool)

(assert (=> b!162827 (= e!106827 (not (= (size!3247 (_values!3325 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7978 thiss!1248)))))))

(declare-fun b!162828 () Bool)

(assert (=> b!162828 (= e!106825 tp_is_empty!3579)))

(declare-fun b!162822 () Bool)

(assert (=> b!162822 (= e!106829 tp_is_empty!3579)))

(declare-fun res!77114 () Bool)

(assert (=> start!16338 (=> (not res!77114) (not e!106823))))

(declare-fun valid!801 (LongMapFixedSize!1800) Bool)

(assert (=> start!16338 (= res!77114 (valid!801 thiss!1248))))

(assert (=> start!16338 e!106823))

(assert (=> start!16338 e!106826))

(assert (=> start!16338 true))

(declare-fun mapIsEmpty!6059 () Bool)

(assert (=> mapIsEmpty!6059 mapRes!6059))

(declare-fun b!162829 () Bool)

(declare-fun res!77117 () Bool)

(assert (=> b!162829 (=> (not res!77117) (not e!106827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!162829 (= res!77117 (validMask!0 (mask!7978 thiss!1248)))))

(assert (= (and start!16338 res!77114) b!162823))

(assert (= (and b!162823 res!77115) b!162825))

(assert (= (and b!162825 res!77116) b!162829))

(assert (= (and b!162829 res!77117) b!162827))

(assert (= (and b!162824 condMapEmpty!6059) mapIsEmpty!6059))

(assert (= (and b!162824 (not condMapEmpty!6059)) mapNonEmpty!6059))

(assert (= (and mapNonEmpty!6059 ((_ is ValueCellFull!1446) mapValue!6059)) b!162822))

(assert (= (and b!162824 ((_ is ValueCellFull!1446) mapDefault!6059)) b!162828))

(assert (= b!162826 b!162824))

(assert (= start!16338 b!162826))

(declare-fun m!193805 () Bool)

(assert (=> start!16338 m!193805))

(declare-fun m!193807 () Bool)

(assert (=> mapNonEmpty!6059 m!193807))

(declare-fun m!193809 () Bool)

(assert (=> b!162826 m!193809))

(declare-fun m!193811 () Bool)

(assert (=> b!162826 m!193811))

(declare-fun m!193813 () Bool)

(assert (=> b!162825 m!193813))

(declare-fun m!193815 () Bool)

(assert (=> b!162829 m!193815))

(check-sat tp_is_empty!3579 b_and!10209 (not b!162825) (not b_next!3777) (not b!162829) (not b!162826) (not start!16338) (not mapNonEmpty!6059))
(check-sat b_and!10209 (not b_next!3777))
(get-model)

(declare-fun d!51285 () Bool)

(declare-fun res!77136 () Bool)

(declare-fun e!106853 () Bool)

(assert (=> d!51285 (=> (not res!77136) (not e!106853))))

(declare-fun simpleValid!118 (LongMapFixedSize!1800) Bool)

(assert (=> d!51285 (= res!77136 (simpleValid!118 thiss!1248))))

(assert (=> d!51285 (= (valid!801 thiss!1248) e!106853)))

(declare-fun b!162860 () Bool)

(declare-fun res!77137 () Bool)

(assert (=> b!162860 (=> (not res!77137) (not e!106853))))

(declare-fun arrayCountValidKeys!0 (array!6238 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!162860 (= res!77137 (= (arrayCountValidKeys!0 (_keys!5144 thiss!1248) #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))) (_size!949 thiss!1248)))))

(declare-fun b!162861 () Bool)

(declare-fun res!77138 () Bool)

(assert (=> b!162861 (=> (not res!77138) (not e!106853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6238 (_ BitVec 32)) Bool)

(assert (=> b!162861 (= res!77138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(declare-fun b!162862 () Bool)

(declare-datatypes ((List!2008 0))(
  ( (Nil!2005) (Cons!2004 (h!2617 (_ BitVec 64)) (t!6818 List!2008)) )
))
(declare-fun arrayNoDuplicates!0 (array!6238 (_ BitVec 32) List!2008) Bool)

(assert (=> b!162862 (= e!106853 (arrayNoDuplicates!0 (_keys!5144 thiss!1248) #b00000000000000000000000000000000 Nil!2005))))

(assert (= (and d!51285 res!77136) b!162860))

(assert (= (and b!162860 res!77137) b!162861))

(assert (= (and b!162861 res!77138) b!162862))

(declare-fun m!193829 () Bool)

(assert (=> d!51285 m!193829))

(declare-fun m!193831 () Bool)

(assert (=> b!162860 m!193831))

(declare-fun m!193833 () Bool)

(assert (=> b!162861 m!193833))

(declare-fun m!193835 () Bool)

(assert (=> b!162862 m!193835))

(assert (=> start!16338 d!51285))

(declare-fun b!162875 () Bool)

(declare-fun e!106861 () SeekEntryResult!403)

(declare-fun e!106862 () SeekEntryResult!403)

(assert (=> b!162875 (= e!106861 e!106862)))

(declare-fun lt!82590 () (_ BitVec 64))

(declare-fun lt!82591 () SeekEntryResult!403)

(assert (=> b!162875 (= lt!82590 (select (arr!2962 (_keys!5144 thiss!1248)) (index!3782 lt!82591)))))

(declare-fun c!29975 () Bool)

(assert (=> b!162875 (= c!29975 (= lt!82590 key!828))))

(declare-fun b!162876 () Bool)

(assert (=> b!162876 (= e!106861 Undefined!403)))

(declare-fun d!51287 () Bool)

(declare-fun lt!82592 () SeekEntryResult!403)

(assert (=> d!51287 (and (or ((_ is Undefined!403) lt!82592) (not ((_ is Found!403) lt!82592)) (and (bvsge (index!3781 lt!82592) #b00000000000000000000000000000000) (bvslt (index!3781 lt!82592) (size!3246 (_keys!5144 thiss!1248))))) (or ((_ is Undefined!403) lt!82592) ((_ is Found!403) lt!82592) (not ((_ is MissingZero!403) lt!82592)) (and (bvsge (index!3780 lt!82592) #b00000000000000000000000000000000) (bvslt (index!3780 lt!82592) (size!3246 (_keys!5144 thiss!1248))))) (or ((_ is Undefined!403) lt!82592) ((_ is Found!403) lt!82592) ((_ is MissingZero!403) lt!82592) (not ((_ is MissingVacant!403) lt!82592)) (and (bvsge (index!3783 lt!82592) #b00000000000000000000000000000000) (bvslt (index!3783 lt!82592) (size!3246 (_keys!5144 thiss!1248))))) (or ((_ is Undefined!403) lt!82592) (ite ((_ is Found!403) lt!82592) (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3781 lt!82592)) key!828) (ite ((_ is MissingZero!403) lt!82592) (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3780 lt!82592)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!403) lt!82592) (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3783 lt!82592)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51287 (= lt!82592 e!106861)))

(declare-fun c!29976 () Bool)

(assert (=> d!51287 (= c!29976 (and ((_ is Intermediate!403) lt!82591) (undefined!1215 lt!82591)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6238 (_ BitVec 32)) SeekEntryResult!403)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51287 (= lt!82591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7978 thiss!1248)) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(assert (=> d!51287 (validMask!0 (mask!7978 thiss!1248))))

(assert (=> d!51287 (= (seekEntryOrOpen!0 key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)) lt!82592)))

(declare-fun b!162877 () Bool)

(declare-fun e!106860 () SeekEntryResult!403)

(assert (=> b!162877 (= e!106860 (MissingZero!403 (index!3782 lt!82591)))))

(declare-fun b!162878 () Bool)

(declare-fun c!29974 () Bool)

(assert (=> b!162878 (= c!29974 (= lt!82590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!162878 (= e!106862 e!106860)))

(declare-fun b!162879 () Bool)

(assert (=> b!162879 (= e!106862 (Found!403 (index!3782 lt!82591)))))

(declare-fun b!162880 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6238 (_ BitVec 32)) SeekEntryResult!403)

(assert (=> b!162880 (= e!106860 (seekKeyOrZeroReturnVacant!0 (x!18043 lt!82591) (index!3782 lt!82591) (index!3782 lt!82591) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(assert (= (and d!51287 c!29976) b!162876))

(assert (= (and d!51287 (not c!29976)) b!162875))

(assert (= (and b!162875 c!29975) b!162879))

(assert (= (and b!162875 (not c!29975)) b!162878))

(assert (= (and b!162878 c!29974) b!162877))

(assert (= (and b!162878 (not c!29974)) b!162880))

(declare-fun m!193837 () Bool)

(assert (=> b!162875 m!193837))

(declare-fun m!193839 () Bool)

(assert (=> d!51287 m!193839))

(assert (=> d!51287 m!193815))

(declare-fun m!193841 () Bool)

(assert (=> d!51287 m!193841))

(declare-fun m!193843 () Bool)

(assert (=> d!51287 m!193843))

(assert (=> d!51287 m!193841))

(declare-fun m!193845 () Bool)

(assert (=> d!51287 m!193845))

(declare-fun m!193847 () Bool)

(assert (=> d!51287 m!193847))

(declare-fun m!193849 () Bool)

(assert (=> b!162880 m!193849))

(assert (=> b!162825 d!51287))

(declare-fun d!51289 () Bool)

(assert (=> d!51289 (= (array_inv!1883 (_keys!5144 thiss!1248)) (bvsge (size!3246 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!162826 d!51289))

(declare-fun d!51291 () Bool)

(assert (=> d!51291 (= (array_inv!1884 (_values!3325 thiss!1248)) (bvsge (size!3247 (_values!3325 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!162826 d!51291))

(declare-fun d!51293 () Bool)

(assert (=> d!51293 (= (validMask!0 (mask!7978 thiss!1248)) (and (or (= (mask!7978 thiss!1248) #b00000000000000000000000000000111) (= (mask!7978 thiss!1248) #b00000000000000000000000000001111) (= (mask!7978 thiss!1248) #b00000000000000000000000000011111) (= (mask!7978 thiss!1248) #b00000000000000000000000000111111) (= (mask!7978 thiss!1248) #b00000000000000000000000001111111) (= (mask!7978 thiss!1248) #b00000000000000000000000011111111) (= (mask!7978 thiss!1248) #b00000000000000000000000111111111) (= (mask!7978 thiss!1248) #b00000000000000000000001111111111) (= (mask!7978 thiss!1248) #b00000000000000000000011111111111) (= (mask!7978 thiss!1248) #b00000000000000000000111111111111) (= (mask!7978 thiss!1248) #b00000000000000000001111111111111) (= (mask!7978 thiss!1248) #b00000000000000000011111111111111) (= (mask!7978 thiss!1248) #b00000000000000000111111111111111) (= (mask!7978 thiss!1248) #b00000000000000001111111111111111) (= (mask!7978 thiss!1248) #b00000000000000011111111111111111) (= (mask!7978 thiss!1248) #b00000000000000111111111111111111) (= (mask!7978 thiss!1248) #b00000000000001111111111111111111) (= (mask!7978 thiss!1248) #b00000000000011111111111111111111) (= (mask!7978 thiss!1248) #b00000000000111111111111111111111) (= (mask!7978 thiss!1248) #b00000000001111111111111111111111) (= (mask!7978 thiss!1248) #b00000000011111111111111111111111) (= (mask!7978 thiss!1248) #b00000000111111111111111111111111) (= (mask!7978 thiss!1248) #b00000001111111111111111111111111) (= (mask!7978 thiss!1248) #b00000011111111111111111111111111) (= (mask!7978 thiss!1248) #b00000111111111111111111111111111) (= (mask!7978 thiss!1248) #b00001111111111111111111111111111) (= (mask!7978 thiss!1248) #b00011111111111111111111111111111) (= (mask!7978 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7978 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!162829 d!51293))

(declare-fun b!162888 () Bool)

(declare-fun e!106868 () Bool)

(assert (=> b!162888 (= e!106868 tp_is_empty!3579)))

(declare-fun mapNonEmpty!6065 () Bool)

(declare-fun mapRes!6065 () Bool)

(declare-fun tp!13913 () Bool)

(declare-fun e!106867 () Bool)

(assert (=> mapNonEmpty!6065 (= mapRes!6065 (and tp!13913 e!106867))))

(declare-fun mapValue!6065 () ValueCell!1446)

(declare-fun mapKey!6065 () (_ BitVec 32))

(declare-fun mapRest!6065 () (Array (_ BitVec 32) ValueCell!1446))

(assert (=> mapNonEmpty!6065 (= mapRest!6059 (store mapRest!6065 mapKey!6065 mapValue!6065))))

(declare-fun condMapEmpty!6065 () Bool)

(declare-fun mapDefault!6065 () ValueCell!1446)

(assert (=> mapNonEmpty!6059 (= condMapEmpty!6065 (= mapRest!6059 ((as const (Array (_ BitVec 32) ValueCell!1446)) mapDefault!6065)))))

(assert (=> mapNonEmpty!6059 (= tp!13903 (and e!106868 mapRes!6065))))

(declare-fun mapIsEmpty!6065 () Bool)

(assert (=> mapIsEmpty!6065 mapRes!6065))

(declare-fun b!162887 () Bool)

(assert (=> b!162887 (= e!106867 tp_is_empty!3579)))

(assert (= (and mapNonEmpty!6059 condMapEmpty!6065) mapIsEmpty!6065))

(assert (= (and mapNonEmpty!6059 (not condMapEmpty!6065)) mapNonEmpty!6065))

(assert (= (and mapNonEmpty!6065 ((_ is ValueCellFull!1446) mapValue!6065)) b!162887))

(assert (= (and mapNonEmpty!6059 ((_ is ValueCellFull!1446) mapDefault!6065)) b!162888))

(declare-fun m!193851 () Bool)

(assert (=> mapNonEmpty!6065 m!193851))

(check-sat tp_is_empty!3579 b_and!10209 (not b_next!3777) (not b!162880) (not d!51287) (not d!51285) (not b!162860) (not b!162862) (not mapNonEmpty!6065) (not b!162861))
(check-sat b_and!10209 (not b_next!3777))
(get-model)

(declare-fun b!162907 () Bool)

(declare-fun e!106883 () Bool)

(declare-fun e!106882 () Bool)

(assert (=> b!162907 (= e!106883 e!106882)))

(declare-fun res!77147 () Bool)

(declare-fun lt!82597 () SeekEntryResult!403)

(assert (=> b!162907 (= res!77147 (and ((_ is Intermediate!403) lt!82597) (not (undefined!1215 lt!82597)) (bvslt (x!18043 lt!82597) #b01111111111111111111111111111110) (bvsge (x!18043 lt!82597) #b00000000000000000000000000000000) (bvsge (x!18043 lt!82597) #b00000000000000000000000000000000)))))

(assert (=> b!162907 (=> (not res!77147) (not e!106882))))

(declare-fun b!162908 () Bool)

(assert (=> b!162908 (and (bvsge (index!3782 lt!82597) #b00000000000000000000000000000000) (bvslt (index!3782 lt!82597) (size!3246 (_keys!5144 thiss!1248))))))

(declare-fun res!77146 () Bool)

(assert (=> b!162908 (= res!77146 (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3782 lt!82597)) key!828))))

(declare-fun e!106881 () Bool)

(assert (=> b!162908 (=> res!77146 e!106881)))

(assert (=> b!162908 (= e!106882 e!106881)))

(declare-fun b!162909 () Bool)

(declare-fun e!106879 () SeekEntryResult!403)

(assert (=> b!162909 (= e!106879 (Intermediate!403 false (toIndex!0 key!828 (mask!7978 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!162910 () Bool)

(declare-fun e!106880 () SeekEntryResult!403)

(assert (=> b!162910 (= e!106880 (Intermediate!403 true (toIndex!0 key!828 (mask!7978 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!162911 () Bool)

(assert (=> b!162911 (= e!106883 (bvsge (x!18043 lt!82597) #b01111111111111111111111111111110))))

(declare-fun d!51295 () Bool)

(assert (=> d!51295 e!106883))

(declare-fun c!29983 () Bool)

(assert (=> d!51295 (= c!29983 (and ((_ is Intermediate!403) lt!82597) (undefined!1215 lt!82597)))))

(assert (=> d!51295 (= lt!82597 e!106880)))

(declare-fun c!29984 () Bool)

(assert (=> d!51295 (= c!29984 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!82598 () (_ BitVec 64))

(assert (=> d!51295 (= lt!82598 (select (arr!2962 (_keys!5144 thiss!1248)) (toIndex!0 key!828 (mask!7978 thiss!1248))))))

(assert (=> d!51295 (validMask!0 (mask!7978 thiss!1248))))

(assert (=> d!51295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7978 thiss!1248)) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)) lt!82597)))

(declare-fun b!162912 () Bool)

(assert (=> b!162912 (and (bvsge (index!3782 lt!82597) #b00000000000000000000000000000000) (bvslt (index!3782 lt!82597) (size!3246 (_keys!5144 thiss!1248))))))

(declare-fun res!77145 () Bool)

(assert (=> b!162912 (= res!77145 (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3782 lt!82597)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!162912 (=> res!77145 e!106881)))

(declare-fun b!162913 () Bool)

(assert (=> b!162913 (= e!106880 e!106879)))

(declare-fun c!29985 () Bool)

(assert (=> b!162913 (= c!29985 (or (= lt!82598 key!828) (= (bvadd lt!82598 lt!82598) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!162914 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!162914 (= e!106879 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7978 thiss!1248)) #b00000000000000000000000000000000 (mask!7978 thiss!1248)) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(declare-fun b!162915 () Bool)

(assert (=> b!162915 (and (bvsge (index!3782 lt!82597) #b00000000000000000000000000000000) (bvslt (index!3782 lt!82597) (size!3246 (_keys!5144 thiss!1248))))))

(assert (=> b!162915 (= e!106881 (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3782 lt!82597)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!51295 c!29984) b!162910))

(assert (= (and d!51295 (not c!29984)) b!162913))

(assert (= (and b!162913 c!29985) b!162909))

(assert (= (and b!162913 (not c!29985)) b!162914))

(assert (= (and d!51295 c!29983) b!162911))

(assert (= (and d!51295 (not c!29983)) b!162907))

(assert (= (and b!162907 res!77147) b!162908))

(assert (= (and b!162908 (not res!77146)) b!162912))

(assert (= (and b!162912 (not res!77145)) b!162915))

(declare-fun m!193853 () Bool)

(assert (=> b!162908 m!193853))

(assert (=> b!162914 m!193841))

(declare-fun m!193855 () Bool)

(assert (=> b!162914 m!193855))

(assert (=> b!162914 m!193855))

(declare-fun m!193857 () Bool)

(assert (=> b!162914 m!193857))

(assert (=> b!162912 m!193853))

(assert (=> d!51295 m!193841))

(declare-fun m!193859 () Bool)

(assert (=> d!51295 m!193859))

(assert (=> d!51295 m!193815))

(assert (=> b!162915 m!193853))

(assert (=> d!51287 d!51295))

(declare-fun d!51297 () Bool)

(declare-fun lt!82604 () (_ BitVec 32))

(declare-fun lt!82603 () (_ BitVec 32))

(assert (=> d!51297 (= lt!82604 (bvmul (bvxor lt!82603 (bvlshr lt!82603 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51297 (= lt!82603 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51297 (and (bvsge (mask!7978 thiss!1248) #b00000000000000000000000000000000) (let ((res!77148 (let ((h!2618 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!18059 (bvmul (bvxor h!2618 (bvlshr h!2618 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!18059 (bvlshr x!18059 #b00000000000000000000000000001101)) (mask!7978 thiss!1248)))))) (and (bvslt res!77148 (bvadd (mask!7978 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!77148 #b00000000000000000000000000000000))))))

(assert (=> d!51297 (= (toIndex!0 key!828 (mask!7978 thiss!1248)) (bvand (bvxor lt!82604 (bvlshr lt!82604 #b00000000000000000000000000001101)) (mask!7978 thiss!1248)))))

(assert (=> d!51287 d!51297))

(assert (=> d!51287 d!51293))

(declare-fun b!162926 () Bool)

(declare-fun e!106894 () Bool)

(declare-fun e!106892 () Bool)

(assert (=> b!162926 (= e!106894 e!106892)))

(declare-fun res!77156 () Bool)

(assert (=> b!162926 (=> (not res!77156) (not e!106892))))

(declare-fun e!106895 () Bool)

(assert (=> b!162926 (= res!77156 (not e!106895))))

(declare-fun res!77155 () Bool)

(assert (=> b!162926 (=> (not res!77155) (not e!106895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!162926 (= res!77155 (validKeyInArray!0 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!162927 () Bool)

(declare-fun e!106893 () Bool)

(declare-fun call!17285 () Bool)

(assert (=> b!162927 (= e!106893 call!17285)))

(declare-fun d!51299 () Bool)

(declare-fun res!77157 () Bool)

(assert (=> d!51299 (=> res!77157 e!106894)))

(assert (=> d!51299 (= res!77157 (bvsge #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))))))

(assert (=> d!51299 (= (arrayNoDuplicates!0 (_keys!5144 thiss!1248) #b00000000000000000000000000000000 Nil!2005) e!106894)))

(declare-fun b!162928 () Bool)

(assert (=> b!162928 (= e!106892 e!106893)))

(declare-fun c!29988 () Bool)

(assert (=> b!162928 (= c!29988 (validKeyInArray!0 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!162929 () Bool)

(declare-fun contains!1035 (List!2008 (_ BitVec 64)) Bool)

(assert (=> b!162929 (= e!106895 (contains!1035 Nil!2005 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17282 () Bool)

(assert (=> bm!17282 (= call!17285 (arrayNoDuplicates!0 (_keys!5144 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29988 (Cons!2004 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000) Nil!2005) Nil!2005)))))

(declare-fun b!162930 () Bool)

(assert (=> b!162930 (= e!106893 call!17285)))

(assert (= (and d!51299 (not res!77157)) b!162926))

(assert (= (and b!162926 res!77155) b!162929))

(assert (= (and b!162926 res!77156) b!162928))

(assert (= (and b!162928 c!29988) b!162927))

(assert (= (and b!162928 (not c!29988)) b!162930))

(assert (= (or b!162927 b!162930) bm!17282))

(declare-fun m!193861 () Bool)

(assert (=> b!162926 m!193861))

(assert (=> b!162926 m!193861))

(declare-fun m!193863 () Bool)

(assert (=> b!162926 m!193863))

(assert (=> b!162928 m!193861))

(assert (=> b!162928 m!193861))

(assert (=> b!162928 m!193863))

(assert (=> b!162929 m!193861))

(assert (=> b!162929 m!193861))

(declare-fun m!193865 () Bool)

(assert (=> b!162929 m!193865))

(assert (=> bm!17282 m!193861))

(declare-fun m!193867 () Bool)

(assert (=> bm!17282 m!193867))

(assert (=> b!162862 d!51299))

(declare-fun d!51301 () Bool)

(declare-fun lt!82607 () (_ BitVec 32))

(assert (=> d!51301 (and (bvsge lt!82607 #b00000000000000000000000000000000) (bvsle lt!82607 (bvsub (size!3246 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!106901 () (_ BitVec 32))

(assert (=> d!51301 (= lt!82607 e!106901)))

(declare-fun c!29993 () Bool)

(assert (=> d!51301 (= c!29993 (bvsge #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))))))

(assert (=> d!51301 (and (bvsle #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3246 (_keys!5144 thiss!1248)) (size!3246 (_keys!5144 thiss!1248))))))

(assert (=> d!51301 (= (arrayCountValidKeys!0 (_keys!5144 thiss!1248) #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))) lt!82607)))

(declare-fun b!162939 () Bool)

(assert (=> b!162939 (= e!106901 #b00000000000000000000000000000000)))

(declare-fun b!162940 () Bool)

(declare-fun e!106900 () (_ BitVec 32))

(declare-fun call!17288 () (_ BitVec 32))

(assert (=> b!162940 (= e!106900 (bvadd #b00000000000000000000000000000001 call!17288))))

(declare-fun b!162941 () Bool)

(assert (=> b!162941 (= e!106901 e!106900)))

(declare-fun c!29994 () Bool)

(assert (=> b!162941 (= c!29994 (validKeyInArray!0 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17285 () Bool)

(assert (=> bm!17285 (= call!17288 (arrayCountValidKeys!0 (_keys!5144 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3246 (_keys!5144 thiss!1248))))))

(declare-fun b!162942 () Bool)

(assert (=> b!162942 (= e!106900 call!17288)))

(assert (= (and d!51301 c!29993) b!162939))

(assert (= (and d!51301 (not c!29993)) b!162941))

(assert (= (and b!162941 c!29994) b!162940))

(assert (= (and b!162941 (not c!29994)) b!162942))

(assert (= (or b!162940 b!162942) bm!17285))

(assert (=> b!162941 m!193861))

(assert (=> b!162941 m!193861))

(assert (=> b!162941 m!193863))

(declare-fun m!193869 () Bool)

(assert (=> bm!17285 m!193869))

(assert (=> b!162860 d!51301))

(declare-fun b!162951 () Bool)

(declare-fun e!106910 () Bool)

(declare-fun e!106908 () Bool)

(assert (=> b!162951 (= e!106910 e!106908)))

(declare-fun c!29997 () Bool)

(assert (=> b!162951 (= c!29997 (validKeyInArray!0 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51303 () Bool)

(declare-fun res!77162 () Bool)

(assert (=> d!51303 (=> res!77162 e!106910)))

(assert (=> d!51303 (= res!77162 (bvsge #b00000000000000000000000000000000 (size!3246 (_keys!5144 thiss!1248))))))

(assert (=> d!51303 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)) e!106910)))

(declare-fun bm!17288 () Bool)

(declare-fun call!17291 () Bool)

(assert (=> bm!17288 (= call!17291 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(declare-fun b!162952 () Bool)

(declare-fun e!106909 () Bool)

(assert (=> b!162952 (= e!106908 e!106909)))

(declare-fun lt!82614 () (_ BitVec 64))

(assert (=> b!162952 (= lt!82614 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5032 0))(
  ( (Unit!5033) )
))
(declare-fun lt!82616 () Unit!5032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6238 (_ BitVec 64) (_ BitVec 32)) Unit!5032)

(assert (=> b!162952 (= lt!82616 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5144 thiss!1248) lt!82614 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!162952 (arrayContainsKey!0 (_keys!5144 thiss!1248) lt!82614 #b00000000000000000000000000000000)))

(declare-fun lt!82615 () Unit!5032)

(assert (=> b!162952 (= lt!82615 lt!82616)))

(declare-fun res!77163 () Bool)

(assert (=> b!162952 (= res!77163 (= (seekEntryOrOpen!0 (select (arr!2962 (_keys!5144 thiss!1248)) #b00000000000000000000000000000000) (_keys!5144 thiss!1248) (mask!7978 thiss!1248)) (Found!403 #b00000000000000000000000000000000)))))

(assert (=> b!162952 (=> (not res!77163) (not e!106909))))

(declare-fun b!162953 () Bool)

(assert (=> b!162953 (= e!106909 call!17291)))

(declare-fun b!162954 () Bool)

(assert (=> b!162954 (= e!106908 call!17291)))

(assert (= (and d!51303 (not res!77162)) b!162951))

(assert (= (and b!162951 c!29997) b!162952))

(assert (= (and b!162951 (not c!29997)) b!162954))

(assert (= (and b!162952 res!77163) b!162953))

(assert (= (or b!162953 b!162954) bm!17288))

(assert (=> b!162951 m!193861))

(assert (=> b!162951 m!193861))

(assert (=> b!162951 m!193863))

(declare-fun m!193871 () Bool)

(assert (=> bm!17288 m!193871))

(assert (=> b!162952 m!193861))

(declare-fun m!193873 () Bool)

(assert (=> b!162952 m!193873))

(declare-fun m!193875 () Bool)

(assert (=> b!162952 m!193875))

(assert (=> b!162952 m!193861))

(declare-fun m!193877 () Bool)

(assert (=> b!162952 m!193877))

(assert (=> b!162861 d!51303))

(declare-fun b!162967 () Bool)

(declare-fun e!106917 () SeekEntryResult!403)

(declare-fun e!106918 () SeekEntryResult!403)

(assert (=> b!162967 (= e!106917 e!106918)))

(declare-fun c!30005 () Bool)

(declare-fun lt!82622 () (_ BitVec 64))

(assert (=> b!162967 (= c!30005 (= lt!82622 key!828))))

(declare-fun lt!82621 () SeekEntryResult!403)

(declare-fun d!51305 () Bool)

(assert (=> d!51305 (and (or ((_ is Undefined!403) lt!82621) (not ((_ is Found!403) lt!82621)) (and (bvsge (index!3781 lt!82621) #b00000000000000000000000000000000) (bvslt (index!3781 lt!82621) (size!3246 (_keys!5144 thiss!1248))))) (or ((_ is Undefined!403) lt!82621) ((_ is Found!403) lt!82621) (not ((_ is MissingVacant!403) lt!82621)) (not (= (index!3783 lt!82621) (index!3782 lt!82591))) (and (bvsge (index!3783 lt!82621) #b00000000000000000000000000000000) (bvslt (index!3783 lt!82621) (size!3246 (_keys!5144 thiss!1248))))) (or ((_ is Undefined!403) lt!82621) (ite ((_ is Found!403) lt!82621) (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3781 lt!82621)) key!828) (and ((_ is MissingVacant!403) lt!82621) (= (index!3783 lt!82621) (index!3782 lt!82591)) (= (select (arr!2962 (_keys!5144 thiss!1248)) (index!3783 lt!82621)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!51305 (= lt!82621 e!106917)))

(declare-fun c!30006 () Bool)

(assert (=> d!51305 (= c!30006 (bvsge (x!18043 lt!82591) #b01111111111111111111111111111110))))

(assert (=> d!51305 (= lt!82622 (select (arr!2962 (_keys!5144 thiss!1248)) (index!3782 lt!82591)))))

(assert (=> d!51305 (validMask!0 (mask!7978 thiss!1248))))

(assert (=> d!51305 (= (seekKeyOrZeroReturnVacant!0 (x!18043 lt!82591) (index!3782 lt!82591) (index!3782 lt!82591) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)) lt!82621)))

(declare-fun e!106919 () SeekEntryResult!403)

(declare-fun b!162968 () Bool)

(assert (=> b!162968 (= e!106919 (seekKeyOrZeroReturnVacant!0 (bvadd (x!18043 lt!82591) #b00000000000000000000000000000001) (nextIndex!0 (index!3782 lt!82591) (x!18043 lt!82591) (mask!7978 thiss!1248)) (index!3782 lt!82591) key!828 (_keys!5144 thiss!1248) (mask!7978 thiss!1248)))))

(declare-fun b!162969 () Bool)

(assert (=> b!162969 (= e!106919 (MissingVacant!403 (index!3782 lt!82591)))))

(declare-fun b!162970 () Bool)

(assert (=> b!162970 (= e!106917 Undefined!403)))

(declare-fun b!162971 () Bool)

(declare-fun c!30004 () Bool)

(assert (=> b!162971 (= c!30004 (= lt!82622 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!162971 (= e!106918 e!106919)))

(declare-fun b!162972 () Bool)

(assert (=> b!162972 (= e!106918 (Found!403 (index!3782 lt!82591)))))

(assert (= (and d!51305 c!30006) b!162970))

(assert (= (and d!51305 (not c!30006)) b!162967))

(assert (= (and b!162967 c!30005) b!162972))

(assert (= (and b!162967 (not c!30005)) b!162971))

(assert (= (and b!162971 c!30004) b!162969))

(assert (= (and b!162971 (not c!30004)) b!162968))

(declare-fun m!193879 () Bool)

(assert (=> d!51305 m!193879))

(declare-fun m!193881 () Bool)

(assert (=> d!51305 m!193881))

(assert (=> d!51305 m!193837))

(assert (=> d!51305 m!193815))

(declare-fun m!193883 () Bool)

(assert (=> b!162968 m!193883))

(assert (=> b!162968 m!193883))

(declare-fun m!193885 () Bool)

(assert (=> b!162968 m!193885))

(assert (=> b!162880 d!51305))

(declare-fun b!162982 () Bool)

(declare-fun res!77174 () Bool)

(declare-fun e!106922 () Bool)

(assert (=> b!162982 (=> (not res!77174) (not e!106922))))

(declare-fun size!3250 (LongMapFixedSize!1800) (_ BitVec 32))

(assert (=> b!162982 (= res!77174 (bvsge (size!3250 thiss!1248) (_size!949 thiss!1248)))))

(declare-fun b!162981 () Bool)

(declare-fun res!77173 () Bool)

(assert (=> b!162981 (=> (not res!77173) (not e!106922))))

(assert (=> b!162981 (= res!77173 (and (= (size!3247 (_values!3325 thiss!1248)) (bvadd (mask!7978 thiss!1248) #b00000000000000000000000000000001)) (= (size!3246 (_keys!5144 thiss!1248)) (size!3247 (_values!3325 thiss!1248))) (bvsge (_size!949 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!949 thiss!1248) (bvadd (mask!7978 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!162983 () Bool)

(declare-fun res!77172 () Bool)

(assert (=> b!162983 (=> (not res!77172) (not e!106922))))

(assert (=> b!162983 (= res!77172 (= (size!3250 thiss!1248) (bvadd (_size!949 thiss!1248) (bvsdiv (bvadd (extraKeys!3083 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!51307 () Bool)

(declare-fun res!77175 () Bool)

(assert (=> d!51307 (=> (not res!77175) (not e!106922))))

(assert (=> d!51307 (= res!77175 (validMask!0 (mask!7978 thiss!1248)))))

(assert (=> d!51307 (= (simpleValid!118 thiss!1248) e!106922)))

(declare-fun b!162984 () Bool)

(assert (=> b!162984 (= e!106922 (and (bvsge (extraKeys!3083 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3083 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!949 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!51307 res!77175) b!162981))

(assert (= (and b!162981 res!77173) b!162982))

(assert (= (and b!162982 res!77174) b!162983))

(assert (= (and b!162983 res!77172) b!162984))

(declare-fun m!193887 () Bool)

(assert (=> b!162982 m!193887))

(assert (=> b!162983 m!193887))

(assert (=> d!51307 m!193815))

(assert (=> d!51285 d!51307))

(declare-fun b!162986 () Bool)

(declare-fun e!106924 () Bool)

(assert (=> b!162986 (= e!106924 tp_is_empty!3579)))

(declare-fun mapNonEmpty!6066 () Bool)

(declare-fun mapRes!6066 () Bool)

(declare-fun tp!13914 () Bool)

(declare-fun e!106923 () Bool)

(assert (=> mapNonEmpty!6066 (= mapRes!6066 (and tp!13914 e!106923))))

(declare-fun mapKey!6066 () (_ BitVec 32))

(declare-fun mapValue!6066 () ValueCell!1446)

(declare-fun mapRest!6066 () (Array (_ BitVec 32) ValueCell!1446))

(assert (=> mapNonEmpty!6066 (= mapRest!6065 (store mapRest!6066 mapKey!6066 mapValue!6066))))

(declare-fun condMapEmpty!6066 () Bool)

(declare-fun mapDefault!6066 () ValueCell!1446)

(assert (=> mapNonEmpty!6065 (= condMapEmpty!6066 (= mapRest!6065 ((as const (Array (_ BitVec 32) ValueCell!1446)) mapDefault!6066)))))

(assert (=> mapNonEmpty!6065 (= tp!13913 (and e!106924 mapRes!6066))))

(declare-fun mapIsEmpty!6066 () Bool)

(assert (=> mapIsEmpty!6066 mapRes!6066))

(declare-fun b!162985 () Bool)

(assert (=> b!162985 (= e!106923 tp_is_empty!3579)))

(assert (= (and mapNonEmpty!6065 condMapEmpty!6066) mapIsEmpty!6066))

(assert (= (and mapNonEmpty!6065 (not condMapEmpty!6066)) mapNonEmpty!6066))

(assert (= (and mapNonEmpty!6066 ((_ is ValueCellFull!1446) mapValue!6066)) b!162985))

(assert (= (and mapNonEmpty!6065 ((_ is ValueCellFull!1446) mapDefault!6066)) b!162986))

(declare-fun m!193889 () Bool)

(assert (=> mapNonEmpty!6066 m!193889))

(check-sat (not b!162929) tp_is_empty!3579 (not b!162928) b_and!10209 (not b_next!3777) (not b!162952) (not bm!17285) (not b!162941) (not d!51307) (not b!162983) (not bm!17288) (not d!51295) (not b!162951) (not b!162982) (not b!162926) (not bm!17282) (not mapNonEmpty!6066) (not d!51305) (not b!162914) (not b!162968))
(check-sat b_and!10209 (not b_next!3777))
