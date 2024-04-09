; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76248 () Bool)

(assert start!76248)

(declare-fun b!894847 () Bool)

(declare-fun b_free!15891 () Bool)

(declare-fun b_next!15891 () Bool)

(assert (=> b!894847 (= b_free!15891 (not b_next!15891))))

(declare-fun tp!55673 () Bool)

(declare-fun b_and!26201 () Bool)

(assert (=> b!894847 (= tp!55673 b_and!26201)))

(declare-fun b!894846 () Bool)

(declare-fun e!499942 () Bool)

(declare-fun tp_is_empty!18219 () Bool)

(assert (=> b!894846 (= e!499942 tp_is_empty!18219)))

(declare-datatypes ((array!52420 0))(
  ( (array!52421 (arr!25204 (Array (_ BitVec 32) (_ BitVec 64))) (size!25653 (_ BitVec 32))) )
))
(declare-datatypes ((V!29257 0))(
  ( (V!29258 (val!9160 Int)) )
))
(declare-datatypes ((ValueCell!8628 0))(
  ( (ValueCellFull!8628 (v!11647 V!29257)) (EmptyCell!8628) )
))
(declare-datatypes ((array!52422 0))(
  ( (array!52423 (arr!25205 (Array (_ BitVec 32) ValueCell!8628)) (size!25654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4272 0))(
  ( (LongMapFixedSize!4273 (defaultEntry!5348 Int) (mask!25920 (_ BitVec 32)) (extraKeys!5044 (_ BitVec 32)) (zeroValue!5148 V!29257) (minValue!5148 V!29257) (_size!2191 (_ BitVec 32)) (_keys!10050 array!52420) (_values!5335 array!52422) (_vacant!2191 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4272)

(declare-fun e!499938 () Bool)

(declare-fun e!499941 () Bool)

(declare-fun array_inv!19768 (array!52420) Bool)

(declare-fun array_inv!19769 (array!52422) Bool)

(assert (=> b!894847 (= e!499938 (and tp!55673 tp_is_empty!18219 (array_inv!19768 (_keys!10050 thiss!1181)) (array_inv!19769 (_values!5335 thiss!1181)) e!499941))))

(declare-fun b!894848 () Bool)

(declare-fun e!499943 () Bool)

(assert (=> b!894848 (= e!499943 (and (= (size!25654 (_values!5335 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25920 thiss!1181))) (= (size!25653 (_keys!10050 thiss!1181)) (size!25654 (_values!5335 thiss!1181))) (bvslt (mask!25920 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!894849 () Bool)

(declare-fun e!499944 () Bool)

(assert (=> b!894849 (= e!499944 e!499943)))

(declare-fun res!605558 () Bool)

(assert (=> b!894849 (=> (not res!605558) (not e!499943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894849 (= res!605558 (validMask!0 (mask!25920 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8866 0))(
  ( (MissingZero!8866 (index!37834 (_ BitVec 32))) (Found!8866 (index!37835 (_ BitVec 32))) (Intermediate!8866 (undefined!9678 Bool) (index!37836 (_ BitVec 32)) (x!76105 (_ BitVec 32))) (Undefined!8866) (MissingVacant!8866 (index!37837 (_ BitVec 32))) )
))
(declare-fun lt!404358 () SeekEntryResult!8866)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52420 (_ BitVec 32)) SeekEntryResult!8866)

(assert (=> b!894849 (= lt!404358 (seekEntry!0 key!785 (_keys!10050 thiss!1181) (mask!25920 thiss!1181)))))

(declare-fun b!894850 () Bool)

(declare-fun mapRes!28913 () Bool)

(assert (=> b!894850 (= e!499941 (and e!499942 mapRes!28913))))

(declare-fun condMapEmpty!28913 () Bool)

(declare-fun mapDefault!28913 () ValueCell!8628)

(assert (=> b!894850 (= condMapEmpty!28913 (= (arr!25205 (_values!5335 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8628)) mapDefault!28913)))))

(declare-fun b!894852 () Bool)

(declare-fun res!605560 () Bool)

(assert (=> b!894852 (=> (not res!605560) (not e!499944))))

(assert (=> b!894852 (= res!605560 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28913 () Bool)

(declare-fun tp!55672 () Bool)

(declare-fun e!499939 () Bool)

(assert (=> mapNonEmpty!28913 (= mapRes!28913 (and tp!55672 e!499939))))

(declare-fun mapValue!28913 () ValueCell!8628)

(declare-fun mapRest!28913 () (Array (_ BitVec 32) ValueCell!8628))

(declare-fun mapKey!28913 () (_ BitVec 32))

(assert (=> mapNonEmpty!28913 (= (arr!25205 (_values!5335 thiss!1181)) (store mapRest!28913 mapKey!28913 mapValue!28913))))

(declare-fun mapIsEmpty!28913 () Bool)

(assert (=> mapIsEmpty!28913 mapRes!28913))

(declare-fun b!894851 () Bool)

(assert (=> b!894851 (= e!499939 tp_is_empty!18219)))

(declare-fun res!605559 () Bool)

(assert (=> start!76248 (=> (not res!605559) (not e!499944))))

(declare-fun valid!1639 (LongMapFixedSize!4272) Bool)

(assert (=> start!76248 (= res!605559 (valid!1639 thiss!1181))))

(assert (=> start!76248 e!499944))

(assert (=> start!76248 e!499938))

(assert (=> start!76248 true))

(assert (= (and start!76248 res!605559) b!894852))

(assert (= (and b!894852 res!605560) b!894849))

(assert (= (and b!894849 res!605558) b!894848))

(assert (= (and b!894850 condMapEmpty!28913) mapIsEmpty!28913))

(assert (= (and b!894850 (not condMapEmpty!28913)) mapNonEmpty!28913))

(get-info :version)

(assert (= (and mapNonEmpty!28913 ((_ is ValueCellFull!8628) mapValue!28913)) b!894851))

(assert (= (and b!894850 ((_ is ValueCellFull!8628) mapDefault!28913)) b!894846))

(assert (= b!894847 b!894850))

(assert (= start!76248 b!894847))

(declare-fun m!832753 () Bool)

(assert (=> b!894847 m!832753))

(declare-fun m!832755 () Bool)

(assert (=> b!894847 m!832755))

(declare-fun m!832757 () Bool)

(assert (=> b!894849 m!832757))

(declare-fun m!832759 () Bool)

(assert (=> b!894849 m!832759))

(declare-fun m!832761 () Bool)

(assert (=> mapNonEmpty!28913 m!832761))

(declare-fun m!832763 () Bool)

(assert (=> start!76248 m!832763))

(check-sat (not mapNonEmpty!28913) (not b!894849) tp_is_empty!18219 (not start!76248) b_and!26201 (not b!894847) (not b_next!15891))
(check-sat b_and!26201 (not b_next!15891))
(get-model)

(declare-fun d!110641 () Bool)

(assert (=> d!110641 (= (array_inv!19768 (_keys!10050 thiss!1181)) (bvsge (size!25653 (_keys!10050 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894847 d!110641))

(declare-fun d!110643 () Bool)

(assert (=> d!110643 (= (array_inv!19769 (_values!5335 thiss!1181)) (bvsge (size!25654 (_values!5335 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894847 d!110643))

(declare-fun d!110645 () Bool)

(assert (=> d!110645 (= (validMask!0 (mask!25920 thiss!1181)) (and (or (= (mask!25920 thiss!1181) #b00000000000000000000000000000111) (= (mask!25920 thiss!1181) #b00000000000000000000000000001111) (= (mask!25920 thiss!1181) #b00000000000000000000000000011111) (= (mask!25920 thiss!1181) #b00000000000000000000000000111111) (= (mask!25920 thiss!1181) #b00000000000000000000000001111111) (= (mask!25920 thiss!1181) #b00000000000000000000000011111111) (= (mask!25920 thiss!1181) #b00000000000000000000000111111111) (= (mask!25920 thiss!1181) #b00000000000000000000001111111111) (= (mask!25920 thiss!1181) #b00000000000000000000011111111111) (= (mask!25920 thiss!1181) #b00000000000000000000111111111111) (= (mask!25920 thiss!1181) #b00000000000000000001111111111111) (= (mask!25920 thiss!1181) #b00000000000000000011111111111111) (= (mask!25920 thiss!1181) #b00000000000000000111111111111111) (= (mask!25920 thiss!1181) #b00000000000000001111111111111111) (= (mask!25920 thiss!1181) #b00000000000000011111111111111111) (= (mask!25920 thiss!1181) #b00000000000000111111111111111111) (= (mask!25920 thiss!1181) #b00000000000001111111111111111111) (= (mask!25920 thiss!1181) #b00000000000011111111111111111111) (= (mask!25920 thiss!1181) #b00000000000111111111111111111111) (= (mask!25920 thiss!1181) #b00000000001111111111111111111111) (= (mask!25920 thiss!1181) #b00000000011111111111111111111111) (= (mask!25920 thiss!1181) #b00000000111111111111111111111111) (= (mask!25920 thiss!1181) #b00000001111111111111111111111111) (= (mask!25920 thiss!1181) #b00000011111111111111111111111111) (= (mask!25920 thiss!1181) #b00000111111111111111111111111111) (= (mask!25920 thiss!1181) #b00001111111111111111111111111111) (= (mask!25920 thiss!1181) #b00011111111111111111111111111111) (= (mask!25920 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25920 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!894849 d!110645))

(declare-fun b!894886 () Bool)

(declare-fun e!499974 () SeekEntryResult!8866)

(declare-fun lt!404372 () SeekEntryResult!8866)

(assert (=> b!894886 (= e!499974 (Found!8866 (index!37836 lt!404372)))))

(declare-fun d!110647 () Bool)

(declare-fun lt!404371 () SeekEntryResult!8866)

(assert (=> d!110647 (and (or ((_ is MissingVacant!8866) lt!404371) (not ((_ is Found!8866) lt!404371)) (and (bvsge (index!37835 lt!404371) #b00000000000000000000000000000000) (bvslt (index!37835 lt!404371) (size!25653 (_keys!10050 thiss!1181))))) (not ((_ is MissingVacant!8866) lt!404371)) (or (not ((_ is Found!8866) lt!404371)) (= (select (arr!25204 (_keys!10050 thiss!1181)) (index!37835 lt!404371)) key!785)))))

(declare-fun e!499972 () SeekEntryResult!8866)

(assert (=> d!110647 (= lt!404371 e!499972)))

(declare-fun c!94414 () Bool)

(assert (=> d!110647 (= c!94414 (and ((_ is Intermediate!8866) lt!404372) (undefined!9678 lt!404372)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52420 (_ BitVec 32)) SeekEntryResult!8866)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110647 (= lt!404372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25920 thiss!1181)) key!785 (_keys!10050 thiss!1181) (mask!25920 thiss!1181)))))

(assert (=> d!110647 (validMask!0 (mask!25920 thiss!1181))))

(assert (=> d!110647 (= (seekEntry!0 key!785 (_keys!10050 thiss!1181) (mask!25920 thiss!1181)) lt!404371)))

(declare-fun b!894887 () Bool)

(assert (=> b!894887 (= e!499972 Undefined!8866)))

(declare-fun b!894888 () Bool)

(declare-fun e!499973 () SeekEntryResult!8866)

(declare-fun lt!404373 () SeekEntryResult!8866)

(assert (=> b!894888 (= e!499973 (ite ((_ is MissingVacant!8866) lt!404373) (MissingZero!8866 (index!37837 lt!404373)) lt!404373))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52420 (_ BitVec 32)) SeekEntryResult!8866)

(assert (=> b!894888 (= lt!404373 (seekKeyOrZeroReturnVacant!0 (x!76105 lt!404372) (index!37836 lt!404372) (index!37836 lt!404372) key!785 (_keys!10050 thiss!1181) (mask!25920 thiss!1181)))))

(declare-fun b!894889 () Bool)

(assert (=> b!894889 (= e!499973 (MissingZero!8866 (index!37836 lt!404372)))))

(declare-fun b!894890 () Bool)

(assert (=> b!894890 (= e!499972 e!499974)))

(declare-fun lt!404370 () (_ BitVec 64))

(assert (=> b!894890 (= lt!404370 (select (arr!25204 (_keys!10050 thiss!1181)) (index!37836 lt!404372)))))

(declare-fun c!94412 () Bool)

(assert (=> b!894890 (= c!94412 (= lt!404370 key!785))))

(declare-fun b!894891 () Bool)

(declare-fun c!94413 () Bool)

(assert (=> b!894891 (= c!94413 (= lt!404370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894891 (= e!499974 e!499973)))

(assert (= (and d!110647 c!94414) b!894887))

(assert (= (and d!110647 (not c!94414)) b!894890))

(assert (= (and b!894890 c!94412) b!894886))

(assert (= (and b!894890 (not c!94412)) b!894891))

(assert (= (and b!894891 c!94413) b!894889))

(assert (= (and b!894891 (not c!94413)) b!894888))

(declare-fun m!832777 () Bool)

(assert (=> d!110647 m!832777))

(declare-fun m!832779 () Bool)

(assert (=> d!110647 m!832779))

(assert (=> d!110647 m!832779))

(declare-fun m!832781 () Bool)

(assert (=> d!110647 m!832781))

(assert (=> d!110647 m!832757))

(declare-fun m!832783 () Bool)

(assert (=> b!894888 m!832783))

(declare-fun m!832785 () Bool)

(assert (=> b!894890 m!832785))

(assert (=> b!894849 d!110647))

(declare-fun d!110649 () Bool)

(declare-fun res!605576 () Bool)

(declare-fun e!499977 () Bool)

(assert (=> d!110649 (=> (not res!605576) (not e!499977))))

(declare-fun simpleValid!302 (LongMapFixedSize!4272) Bool)

(assert (=> d!110649 (= res!605576 (simpleValid!302 thiss!1181))))

(assert (=> d!110649 (= (valid!1639 thiss!1181) e!499977)))

(declare-fun b!894898 () Bool)

(declare-fun res!605577 () Bool)

(assert (=> b!894898 (=> (not res!605577) (not e!499977))))

(declare-fun arrayCountValidKeys!0 (array!52420 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894898 (= res!605577 (= (arrayCountValidKeys!0 (_keys!10050 thiss!1181) #b00000000000000000000000000000000 (size!25653 (_keys!10050 thiss!1181))) (_size!2191 thiss!1181)))))

(declare-fun b!894899 () Bool)

(declare-fun res!605578 () Bool)

(assert (=> b!894899 (=> (not res!605578) (not e!499977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52420 (_ BitVec 32)) Bool)

(assert (=> b!894899 (= res!605578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10050 thiss!1181) (mask!25920 thiss!1181)))))

(declare-fun b!894900 () Bool)

(declare-datatypes ((List!17890 0))(
  ( (Nil!17887) (Cons!17886 (h!19021 (_ BitVec 64)) (t!25237 List!17890)) )
))
(declare-fun arrayNoDuplicates!0 (array!52420 (_ BitVec 32) List!17890) Bool)

(assert (=> b!894900 (= e!499977 (arrayNoDuplicates!0 (_keys!10050 thiss!1181) #b00000000000000000000000000000000 Nil!17887))))

(assert (= (and d!110649 res!605576) b!894898))

(assert (= (and b!894898 res!605577) b!894899))

(assert (= (and b!894899 res!605578) b!894900))

(declare-fun m!832787 () Bool)

(assert (=> d!110649 m!832787))

(declare-fun m!832789 () Bool)

(assert (=> b!894898 m!832789))

(declare-fun m!832791 () Bool)

(assert (=> b!894899 m!832791))

(declare-fun m!832793 () Bool)

(assert (=> b!894900 m!832793))

(assert (=> start!76248 d!110649))

(declare-fun mapNonEmpty!28919 () Bool)

(declare-fun mapRes!28919 () Bool)

(declare-fun tp!55682 () Bool)

(declare-fun e!499982 () Bool)

(assert (=> mapNonEmpty!28919 (= mapRes!28919 (and tp!55682 e!499982))))

(declare-fun mapKey!28919 () (_ BitVec 32))

(declare-fun mapValue!28919 () ValueCell!8628)

(declare-fun mapRest!28919 () (Array (_ BitVec 32) ValueCell!8628))

(assert (=> mapNonEmpty!28919 (= mapRest!28913 (store mapRest!28919 mapKey!28919 mapValue!28919))))

(declare-fun mapIsEmpty!28919 () Bool)

(assert (=> mapIsEmpty!28919 mapRes!28919))

(declare-fun b!894908 () Bool)

(declare-fun e!499983 () Bool)

(assert (=> b!894908 (= e!499983 tp_is_empty!18219)))

(declare-fun b!894907 () Bool)

(assert (=> b!894907 (= e!499982 tp_is_empty!18219)))

(declare-fun condMapEmpty!28919 () Bool)

(declare-fun mapDefault!28919 () ValueCell!8628)

(assert (=> mapNonEmpty!28913 (= condMapEmpty!28919 (= mapRest!28913 ((as const (Array (_ BitVec 32) ValueCell!8628)) mapDefault!28919)))))

(assert (=> mapNonEmpty!28913 (= tp!55672 (and e!499983 mapRes!28919))))

(assert (= (and mapNonEmpty!28913 condMapEmpty!28919) mapIsEmpty!28919))

(assert (= (and mapNonEmpty!28913 (not condMapEmpty!28919)) mapNonEmpty!28919))

(assert (= (and mapNonEmpty!28919 ((_ is ValueCellFull!8628) mapValue!28919)) b!894907))

(assert (= (and mapNonEmpty!28913 ((_ is ValueCellFull!8628) mapDefault!28919)) b!894908))

(declare-fun m!832795 () Bool)

(assert (=> mapNonEmpty!28919 m!832795))

(check-sat (not b!894899) (not d!110649) tp_is_empty!18219 (not b!894898) b_and!26201 (not b_next!15891) (not b!894888) (not b!894900) (not mapNonEmpty!28919) (not d!110647))
(check-sat b_and!26201 (not b_next!15891))
