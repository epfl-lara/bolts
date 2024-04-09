; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34144 () Bool)

(assert start!34144)

(declare-fun b_free!7179 () Bool)

(declare-fun b_next!7179 () Bool)

(assert (=> start!34144 (= b_free!7179 (not b_next!7179))))

(declare-fun tp!25067 () Bool)

(declare-fun b_and!14395 () Bool)

(assert (=> start!34144 (= tp!25067 b_and!14395)))

(declare-fun b!339979 () Bool)

(declare-fun e!208584 () Bool)

(declare-fun e!208586 () Bool)

(declare-fun mapRes!12120 () Bool)

(assert (=> b!339979 (= e!208584 (and e!208586 mapRes!12120))))

(declare-fun condMapEmpty!12120 () Bool)

(declare-datatypes ((V!10485 0))(
  ( (V!10486 (val!3610 Int)) )
))
(declare-datatypes ((ValueCell!3222 0))(
  ( (ValueCellFull!3222 (v!5777 V!10485)) (EmptyCell!3222) )
))
(declare-datatypes ((array!17833 0))(
  ( (array!17834 (arr!8435 (Array (_ BitVec 32) ValueCell!3222)) (size!8787 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17833)

(declare-fun mapDefault!12120 () ValueCell!3222)

(assert (=> b!339979 (= condMapEmpty!12120 (= (arr!8435 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3222)) mapDefault!12120)))))

(declare-fun res!187844 () Bool)

(declare-fun e!208582 () Bool)

(assert (=> start!34144 (=> (not res!187844) (not e!208582))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34144 (= res!187844 (validMask!0 mask!2385))))

(assert (=> start!34144 e!208582))

(assert (=> start!34144 true))

(declare-fun tp_is_empty!7131 () Bool)

(assert (=> start!34144 tp_is_empty!7131))

(assert (=> start!34144 tp!25067))

(declare-fun array_inv!6242 (array!17833) Bool)

(assert (=> start!34144 (and (array_inv!6242 _values!1525) e!208584)))

(declare-datatypes ((array!17835 0))(
  ( (array!17836 (arr!8436 (Array (_ BitVec 32) (_ BitVec 64))) (size!8788 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17835)

(declare-fun array_inv!6243 (array!17835) Bool)

(assert (=> start!34144 (array_inv!6243 _keys!1895)))

(declare-fun b!339980 () Bool)

(declare-fun res!187850 () Bool)

(declare-fun e!208587 () Bool)

(assert (=> b!339980 (=> (not res!187850) (not e!208587))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339980 (= res!187850 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12120 () Bool)

(assert (=> mapIsEmpty!12120 mapRes!12120))

(declare-fun b!339981 () Bool)

(declare-fun res!187847 () Bool)

(assert (=> b!339981 (=> (not res!187847) (not e!208582))))

(declare-datatypes ((List!4872 0))(
  ( (Nil!4869) (Cons!4868 (h!5724 (_ BitVec 64)) (t!9986 List!4872)) )
))
(declare-fun arrayNoDuplicates!0 (array!17835 (_ BitVec 32) List!4872) Bool)

(assert (=> b!339981 (= res!187847 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4869))))

(declare-fun b!339982 () Bool)

(assert (=> b!339982 (= e!208582 e!208587)))

(declare-fun res!187848 () Bool)

(assert (=> b!339982 (=> (not res!187848) (not e!208587))))

(declare-datatypes ((SeekEntryResult!3261 0))(
  ( (MissingZero!3261 (index!15223 (_ BitVec 32))) (Found!3261 (index!15224 (_ BitVec 32))) (Intermediate!3261 (undefined!4073 Bool) (index!15225 (_ BitVec 32)) (x!33872 (_ BitVec 32))) (Undefined!3261) (MissingVacant!3261 (index!15226 (_ BitVec 32))) )
))
(declare-fun lt!161439 () SeekEntryResult!3261)

(get-info :version)

(assert (=> b!339982 (= res!187848 (and (not ((_ is Found!3261) lt!161439)) (not ((_ is MissingZero!3261) lt!161439)) ((_ is MissingVacant!3261) lt!161439)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17835 (_ BitVec 32)) SeekEntryResult!3261)

(assert (=> b!339982 (= lt!161439 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339983 () Bool)

(declare-fun res!187843 () Bool)

(assert (=> b!339983 (=> (not res!187843) (not e!208582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17835 (_ BitVec 32)) Bool)

(assert (=> b!339983 (= res!187843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12120 () Bool)

(declare-fun tp!25068 () Bool)

(declare-fun e!208585 () Bool)

(assert (=> mapNonEmpty!12120 (= mapRes!12120 (and tp!25068 e!208585))))

(declare-fun mapRest!12120 () (Array (_ BitVec 32) ValueCell!3222))

(declare-fun mapValue!12120 () ValueCell!3222)

(declare-fun mapKey!12120 () (_ BitVec 32))

(assert (=> mapNonEmpty!12120 (= (arr!8435 _values!1525) (store mapRest!12120 mapKey!12120 mapValue!12120))))

(declare-fun b!339984 () Bool)

(declare-fun res!187849 () Bool)

(assert (=> b!339984 (=> (not res!187849) (not e!208582))))

(declare-fun zeroValue!1467 () V!10485)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10485)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5228 0))(
  ( (tuple2!5229 (_1!2624 (_ BitVec 64)) (_2!2624 V!10485)) )
))
(declare-datatypes ((List!4873 0))(
  ( (Nil!4870) (Cons!4869 (h!5725 tuple2!5228) (t!9987 List!4873)) )
))
(declare-datatypes ((ListLongMap!4155 0))(
  ( (ListLongMap!4156 (toList!2093 List!4873)) )
))
(declare-fun contains!2142 (ListLongMap!4155 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1613 (array!17835 array!17833 (_ BitVec 32) (_ BitVec 32) V!10485 V!10485 (_ BitVec 32) Int) ListLongMap!4155)

(assert (=> b!339984 (= res!187849 (not (contains!2142 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!339985 () Bool)

(declare-fun res!187845 () Bool)

(assert (=> b!339985 (=> (not res!187845) (not e!208582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339985 (= res!187845 (validKeyInArray!0 k0!1348))))

(declare-fun b!339986 () Bool)

(assert (=> b!339986 (= e!208585 tp_is_empty!7131)))

(declare-fun b!339987 () Bool)

(declare-fun res!187846 () Bool)

(assert (=> b!339987 (=> (not res!187846) (not e!208582))))

(assert (=> b!339987 (= res!187846 (and (= (size!8787 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8788 _keys!1895) (size!8787 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339988 () Bool)

(assert (=> b!339988 (= e!208586 tp_is_empty!7131)))

(declare-fun b!339989 () Bool)

(assert (=> b!339989 (= e!208587 (or (bvsge #b00000000000000000000000000000000 (size!8788 _keys!1895)) (bvsge (size!8788 _keys!1895) #b01111111111111111111111111111111)))))

(assert (= (and start!34144 res!187844) b!339987))

(assert (= (and b!339987 res!187846) b!339983))

(assert (= (and b!339983 res!187843) b!339981))

(assert (= (and b!339981 res!187847) b!339985))

(assert (= (and b!339985 res!187845) b!339984))

(assert (= (and b!339984 res!187849) b!339982))

(assert (= (and b!339982 res!187848) b!339980))

(assert (= (and b!339980 res!187850) b!339989))

(assert (= (and b!339979 condMapEmpty!12120) mapIsEmpty!12120))

(assert (= (and b!339979 (not condMapEmpty!12120)) mapNonEmpty!12120))

(assert (= (and mapNonEmpty!12120 ((_ is ValueCellFull!3222) mapValue!12120)) b!339986))

(assert (= (and b!339979 ((_ is ValueCellFull!3222) mapDefault!12120)) b!339988))

(assert (= start!34144 b!339979))

(declare-fun m!342799 () Bool)

(assert (=> b!339981 m!342799))

(declare-fun m!342801 () Bool)

(assert (=> start!34144 m!342801))

(declare-fun m!342803 () Bool)

(assert (=> start!34144 m!342803))

(declare-fun m!342805 () Bool)

(assert (=> start!34144 m!342805))

(declare-fun m!342807 () Bool)

(assert (=> b!339983 m!342807))

(declare-fun m!342809 () Bool)

(assert (=> b!339982 m!342809))

(declare-fun m!342811 () Bool)

(assert (=> b!339984 m!342811))

(assert (=> b!339984 m!342811))

(declare-fun m!342813 () Bool)

(assert (=> b!339984 m!342813))

(declare-fun m!342815 () Bool)

(assert (=> b!339980 m!342815))

(declare-fun m!342817 () Bool)

(assert (=> b!339985 m!342817))

(declare-fun m!342819 () Bool)

(assert (=> mapNonEmpty!12120 m!342819))

(check-sat (not b_next!7179) (not start!34144) (not b!339981) (not b!339983) b_and!14395 tp_is_empty!7131 (not mapNonEmpty!12120) (not b!339982) (not b!339985) (not b!339980) (not b!339984))
(check-sat b_and!14395 (not b_next!7179))
(get-model)

(declare-fun b!340033 () Bool)

(declare-fun e!208617 () Bool)

(declare-fun e!208615 () Bool)

(assert (=> b!340033 (= e!208617 e!208615)))

(declare-fun c!52571 () Bool)

(assert (=> b!340033 (= c!52571 (validKeyInArray!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!340034 () Bool)

(declare-fun e!208616 () Bool)

(assert (=> b!340034 (= e!208616 e!208617)))

(declare-fun res!187882 () Bool)

(assert (=> b!340034 (=> (not res!187882) (not e!208617))))

(declare-fun e!208614 () Bool)

(assert (=> b!340034 (= res!187882 (not e!208614))))

(declare-fun res!187881 () Bool)

(assert (=> b!340034 (=> (not res!187881) (not e!208614))))

(assert (=> b!340034 (= res!187881 (validKeyInArray!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!340036 () Bool)

(declare-fun call!26537 () Bool)

(assert (=> b!340036 (= e!208615 call!26537)))

(declare-fun b!340037 () Bool)

(declare-fun contains!2143 (List!4872 (_ BitVec 64)) Bool)

(assert (=> b!340037 (= e!208614 (contains!2143 Nil!4869 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26534 () Bool)

(assert (=> bm!26534 (= call!26537 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52571 (Cons!4868 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000) Nil!4869) Nil!4869)))))

(declare-fun d!70775 () Bool)

(declare-fun res!187883 () Bool)

(assert (=> d!70775 (=> res!187883 e!208616)))

(assert (=> d!70775 (= res!187883 (bvsge #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(assert (=> d!70775 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4869) e!208616)))

(declare-fun b!340035 () Bool)

(assert (=> b!340035 (= e!208615 call!26537)))

(assert (= (and d!70775 (not res!187883)) b!340034))

(assert (= (and b!340034 res!187881) b!340037))

(assert (= (and b!340034 res!187882) b!340033))

(assert (= (and b!340033 c!52571) b!340036))

(assert (= (and b!340033 (not c!52571)) b!340035))

(assert (= (or b!340036 b!340035) bm!26534))

(declare-fun m!342843 () Bool)

(assert (=> b!340033 m!342843))

(assert (=> b!340033 m!342843))

(declare-fun m!342845 () Bool)

(assert (=> b!340033 m!342845))

(assert (=> b!340034 m!342843))

(assert (=> b!340034 m!342843))

(assert (=> b!340034 m!342845))

(assert (=> b!340037 m!342843))

(assert (=> b!340037 m!342843))

(declare-fun m!342847 () Bool)

(assert (=> b!340037 m!342847))

(assert (=> bm!26534 m!342843))

(declare-fun m!342849 () Bool)

(assert (=> bm!26534 m!342849))

(assert (=> b!339981 d!70775))

(declare-fun d!70777 () Bool)

(assert (=> d!70777 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34144 d!70777))

(declare-fun d!70779 () Bool)

(assert (=> d!70779 (= (array_inv!6242 _values!1525) (bvsge (size!8787 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34144 d!70779))

(declare-fun d!70781 () Bool)

(assert (=> d!70781 (= (array_inv!6243 _keys!1895) (bvsge (size!8788 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34144 d!70781))

(declare-fun b!340050 () Bool)

(declare-fun e!208624 () SeekEntryResult!3261)

(declare-fun lt!161450 () SeekEntryResult!3261)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17835 (_ BitVec 32)) SeekEntryResult!3261)

(assert (=> b!340050 (= e!208624 (seekKeyOrZeroReturnVacant!0 (x!33872 lt!161450) (index!15225 lt!161450) (index!15225 lt!161450) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!340051 () Bool)

(declare-fun e!208626 () SeekEntryResult!3261)

(assert (=> b!340051 (= e!208626 (Found!3261 (index!15225 lt!161450)))))

(declare-fun d!70783 () Bool)

(declare-fun lt!161449 () SeekEntryResult!3261)

(assert (=> d!70783 (and (or ((_ is Undefined!3261) lt!161449) (not ((_ is Found!3261) lt!161449)) (and (bvsge (index!15224 lt!161449) #b00000000000000000000000000000000) (bvslt (index!15224 lt!161449) (size!8788 _keys!1895)))) (or ((_ is Undefined!3261) lt!161449) ((_ is Found!3261) lt!161449) (not ((_ is MissingZero!3261) lt!161449)) (and (bvsge (index!15223 lt!161449) #b00000000000000000000000000000000) (bvslt (index!15223 lt!161449) (size!8788 _keys!1895)))) (or ((_ is Undefined!3261) lt!161449) ((_ is Found!3261) lt!161449) ((_ is MissingZero!3261) lt!161449) (not ((_ is MissingVacant!3261) lt!161449)) (and (bvsge (index!15226 lt!161449) #b00000000000000000000000000000000) (bvslt (index!15226 lt!161449) (size!8788 _keys!1895)))) (or ((_ is Undefined!3261) lt!161449) (ite ((_ is Found!3261) lt!161449) (= (select (arr!8436 _keys!1895) (index!15224 lt!161449)) k0!1348) (ite ((_ is MissingZero!3261) lt!161449) (= (select (arr!8436 _keys!1895) (index!15223 lt!161449)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3261) lt!161449) (= (select (arr!8436 _keys!1895) (index!15226 lt!161449)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!208625 () SeekEntryResult!3261)

(assert (=> d!70783 (= lt!161449 e!208625)))

(declare-fun c!52578 () Bool)

(assert (=> d!70783 (= c!52578 (and ((_ is Intermediate!3261) lt!161450) (undefined!4073 lt!161450)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17835 (_ BitVec 32)) SeekEntryResult!3261)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70783 (= lt!161450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70783 (validMask!0 mask!2385)))

(assert (=> d!70783 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!161449)))

(declare-fun b!340052 () Bool)

(assert (=> b!340052 (= e!208625 Undefined!3261)))

(declare-fun b!340053 () Bool)

(assert (=> b!340053 (= e!208625 e!208626)))

(declare-fun lt!161451 () (_ BitVec 64))

(assert (=> b!340053 (= lt!161451 (select (arr!8436 _keys!1895) (index!15225 lt!161450)))))

(declare-fun c!52579 () Bool)

(assert (=> b!340053 (= c!52579 (= lt!161451 k0!1348))))

(declare-fun b!340054 () Bool)

(assert (=> b!340054 (= e!208624 (MissingZero!3261 (index!15225 lt!161450)))))

(declare-fun b!340055 () Bool)

(declare-fun c!52580 () Bool)

(assert (=> b!340055 (= c!52580 (= lt!161451 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!340055 (= e!208626 e!208624)))

(assert (= (and d!70783 c!52578) b!340052))

(assert (= (and d!70783 (not c!52578)) b!340053))

(assert (= (and b!340053 c!52579) b!340051))

(assert (= (and b!340053 (not c!52579)) b!340055))

(assert (= (and b!340055 c!52580) b!340054))

(assert (= (and b!340055 (not c!52580)) b!340050))

(declare-fun m!342851 () Bool)

(assert (=> b!340050 m!342851))

(declare-fun m!342853 () Bool)

(assert (=> d!70783 m!342853))

(declare-fun m!342855 () Bool)

(assert (=> d!70783 m!342855))

(declare-fun m!342857 () Bool)

(assert (=> d!70783 m!342857))

(assert (=> d!70783 m!342853))

(declare-fun m!342859 () Bool)

(assert (=> d!70783 m!342859))

(declare-fun m!342861 () Bool)

(assert (=> d!70783 m!342861))

(assert (=> d!70783 m!342801))

(declare-fun m!342863 () Bool)

(assert (=> b!340053 m!342863))

(assert (=> b!339982 d!70783))

(declare-fun d!70785 () Bool)

(declare-fun e!208631 () Bool)

(assert (=> d!70785 e!208631))

(declare-fun res!187886 () Bool)

(assert (=> d!70785 (=> res!187886 e!208631)))

(declare-fun lt!161460 () Bool)

(assert (=> d!70785 (= res!187886 (not lt!161460))))

(declare-fun lt!161463 () Bool)

(assert (=> d!70785 (= lt!161460 lt!161463)))

(declare-datatypes ((Unit!10594 0))(
  ( (Unit!10595) )
))
(declare-fun lt!161461 () Unit!10594)

(declare-fun e!208632 () Unit!10594)

(assert (=> d!70785 (= lt!161461 e!208632)))

(declare-fun c!52583 () Bool)

(assert (=> d!70785 (= c!52583 lt!161463)))

(declare-fun containsKey!324 (List!4873 (_ BitVec 64)) Bool)

(assert (=> d!70785 (= lt!161463 (containsKey!324 (toList!2093 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70785 (= (contains!2142 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161460)))

(declare-fun b!340062 () Bool)

(declare-fun lt!161462 () Unit!10594)

(assert (=> b!340062 (= e!208632 lt!161462)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!273 (List!4873 (_ BitVec 64)) Unit!10594)

(assert (=> b!340062 (= lt!161462 (lemmaContainsKeyImpliesGetValueByKeyDefined!273 (toList!2093 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!338 0))(
  ( (Some!337 (v!5779 V!10485)) (None!336) )
))
(declare-fun isDefined!274 (Option!338) Bool)

(declare-fun getValueByKey!332 (List!4873 (_ BitVec 64)) Option!338)

(assert (=> b!340062 (isDefined!274 (getValueByKey!332 (toList!2093 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!340063 () Bool)

(declare-fun Unit!10596 () Unit!10594)

(assert (=> b!340063 (= e!208632 Unit!10596)))

(declare-fun b!340064 () Bool)

(assert (=> b!340064 (= e!208631 (isDefined!274 (getValueByKey!332 (toList!2093 (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70785 c!52583) b!340062))

(assert (= (and d!70785 (not c!52583)) b!340063))

(assert (= (and d!70785 (not res!187886)) b!340064))

(declare-fun m!342865 () Bool)

(assert (=> d!70785 m!342865))

(declare-fun m!342867 () Bool)

(assert (=> b!340062 m!342867))

(declare-fun m!342869 () Bool)

(assert (=> b!340062 m!342869))

(assert (=> b!340062 m!342869))

(declare-fun m!342871 () Bool)

(assert (=> b!340062 m!342871))

(assert (=> b!340064 m!342869))

(assert (=> b!340064 m!342869))

(assert (=> b!340064 m!342871))

(assert (=> b!339984 d!70785))

(declare-fun bm!26549 () Bool)

(declare-fun call!26552 () ListLongMap!4155)

(declare-fun call!26553 () ListLongMap!4155)

(assert (=> bm!26549 (= call!26552 call!26553)))

(declare-fun b!340107 () Bool)

(declare-fun c!52601 () Bool)

(assert (=> b!340107 (= c!52601 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!208671 () ListLongMap!4155)

(declare-fun e!208667 () ListLongMap!4155)

(assert (=> b!340107 (= e!208671 e!208667)))

(declare-fun b!340108 () Bool)

(declare-fun e!208668 () Unit!10594)

(declare-fun lt!161523 () Unit!10594)

(assert (=> b!340108 (= e!208668 lt!161523)))

(declare-fun lt!161510 () ListLongMap!4155)

(declare-fun getCurrentListMapNoExtraKeys!594 (array!17835 array!17833 (_ BitVec 32) (_ BitVec 32) V!10485 V!10485 (_ BitVec 32) Int) ListLongMap!4155)

(assert (=> b!340108 (= lt!161510 (getCurrentListMapNoExtraKeys!594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161522 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161522 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161525 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161525 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161529 () Unit!10594)

(declare-fun addStillContains!251 (ListLongMap!4155 (_ BitVec 64) V!10485 (_ BitVec 64)) Unit!10594)

(assert (=> b!340108 (= lt!161529 (addStillContains!251 lt!161510 lt!161522 zeroValue!1467 lt!161525))))

(declare-fun +!719 (ListLongMap!4155 tuple2!5228) ListLongMap!4155)

(assert (=> b!340108 (contains!2142 (+!719 lt!161510 (tuple2!5229 lt!161522 zeroValue!1467)) lt!161525)))

(declare-fun lt!161508 () Unit!10594)

(assert (=> b!340108 (= lt!161508 lt!161529)))

(declare-fun lt!161509 () ListLongMap!4155)

(assert (=> b!340108 (= lt!161509 (getCurrentListMapNoExtraKeys!594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161512 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161512 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161513 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161513 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161526 () Unit!10594)

(declare-fun addApplyDifferent!251 (ListLongMap!4155 (_ BitVec 64) V!10485 (_ BitVec 64)) Unit!10594)

(assert (=> b!340108 (= lt!161526 (addApplyDifferent!251 lt!161509 lt!161512 minValue!1467 lt!161513))))

(declare-fun apply!275 (ListLongMap!4155 (_ BitVec 64)) V!10485)

(assert (=> b!340108 (= (apply!275 (+!719 lt!161509 (tuple2!5229 lt!161512 minValue!1467)) lt!161513) (apply!275 lt!161509 lt!161513))))

(declare-fun lt!161527 () Unit!10594)

(assert (=> b!340108 (= lt!161527 lt!161526)))

(declare-fun lt!161516 () ListLongMap!4155)

(assert (=> b!340108 (= lt!161516 (getCurrentListMapNoExtraKeys!594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161517 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161517 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161511 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161511 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161515 () Unit!10594)

(assert (=> b!340108 (= lt!161515 (addApplyDifferent!251 lt!161516 lt!161517 zeroValue!1467 lt!161511))))

(assert (=> b!340108 (= (apply!275 (+!719 lt!161516 (tuple2!5229 lt!161517 zeroValue!1467)) lt!161511) (apply!275 lt!161516 lt!161511))))

(declare-fun lt!161520 () Unit!10594)

(assert (=> b!340108 (= lt!161520 lt!161515)))

(declare-fun lt!161528 () ListLongMap!4155)

(assert (=> b!340108 (= lt!161528 (getCurrentListMapNoExtraKeys!594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161524 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161524 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161518 () (_ BitVec 64))

(assert (=> b!340108 (= lt!161518 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!340108 (= lt!161523 (addApplyDifferent!251 lt!161528 lt!161524 minValue!1467 lt!161518))))

(assert (=> b!340108 (= (apply!275 (+!719 lt!161528 (tuple2!5229 lt!161524 minValue!1467)) lt!161518) (apply!275 lt!161528 lt!161518))))

(declare-fun bm!26550 () Bool)

(declare-fun call!26556 () ListLongMap!4155)

(assert (=> bm!26550 (= call!26556 call!26552)))

(declare-fun b!340109 () Bool)

(declare-fun e!208665 () Bool)

(declare-fun call!26558 () Bool)

(assert (=> b!340109 (= e!208665 (not call!26558))))

(declare-fun b!340110 () Bool)

(declare-fun call!26555 () ListLongMap!4155)

(assert (=> b!340110 (= e!208671 call!26555)))

(declare-fun b!340111 () Bool)

(declare-fun Unit!10597 () Unit!10594)

(assert (=> b!340111 (= e!208668 Unit!10597)))

(declare-fun b!340112 () Bool)

(declare-fun e!208669 () Bool)

(declare-fun lt!161514 () ListLongMap!4155)

(assert (=> b!340112 (= e!208669 (= (apply!275 lt!161514 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun d!70787 () Bool)

(declare-fun e!208661 () Bool)

(assert (=> d!70787 e!208661))

(declare-fun res!187912 () Bool)

(assert (=> d!70787 (=> (not res!187912) (not e!208661))))

(assert (=> d!70787 (= res!187912 (or (bvsge #b00000000000000000000000000000000 (size!8788 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8788 _keys!1895)))))))

(declare-fun lt!161521 () ListLongMap!4155)

(assert (=> d!70787 (= lt!161514 lt!161521)))

(declare-fun lt!161519 () Unit!10594)

(assert (=> d!70787 (= lt!161519 e!208668)))

(declare-fun c!52596 () Bool)

(declare-fun e!208659 () Bool)

(assert (=> d!70787 (= c!52596 e!208659)))

(declare-fun res!187909 () Bool)

(assert (=> d!70787 (=> (not res!187909) (not e!208659))))

(assert (=> d!70787 (= res!187909 (bvslt #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(declare-fun e!208662 () ListLongMap!4155)

(assert (=> d!70787 (= lt!161521 e!208662)))

(declare-fun c!52598 () Bool)

(assert (=> d!70787 (= c!52598 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70787 (validMask!0 mask!2385)))

(assert (=> d!70787 (= (getCurrentListMap!1613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161514)))

(declare-fun bm!26551 () Bool)

(assert (=> bm!26551 (= call!26558 (contains!2142 lt!161514 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26552 () Bool)

(declare-fun call!26554 () Bool)

(assert (=> bm!26552 (= call!26554 (contains!2142 lt!161514 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26553 () Bool)

(assert (=> bm!26553 (= call!26553 (getCurrentListMapNoExtraKeys!594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!340113 () Bool)

(declare-fun e!208666 () Bool)

(assert (=> b!340113 (= e!208666 (= (apply!275 lt!161514 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!340114 () Bool)

(declare-fun call!26557 () ListLongMap!4155)

(assert (=> b!340114 (= e!208662 (+!719 call!26557 (tuple2!5229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!340115 () Bool)

(assert (=> b!340115 (= e!208665 e!208669)))

(declare-fun res!187907 () Bool)

(assert (=> b!340115 (= res!187907 call!26558)))

(assert (=> b!340115 (=> (not res!187907) (not e!208669))))

(declare-fun e!208663 () Bool)

(declare-fun b!340116 () Bool)

(declare-fun get!4598 (ValueCell!3222 V!10485) V!10485)

(declare-fun dynLambda!613 (Int (_ BitVec 64)) V!10485)

(assert (=> b!340116 (= e!208663 (= (apply!275 lt!161514 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)) (get!4598 (select (arr!8435 _values!1525) #b00000000000000000000000000000000) (dynLambda!613 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!340116 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8787 _values!1525)))))

(assert (=> b!340116 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(declare-fun b!340117 () Bool)

(assert (=> b!340117 (= e!208667 call!26556)))

(declare-fun b!340118 () Bool)

(declare-fun e!208660 () Bool)

(assert (=> b!340118 (= e!208660 e!208666)))

(declare-fun res!187913 () Bool)

(assert (=> b!340118 (= res!187913 call!26554)))

(assert (=> b!340118 (=> (not res!187913) (not e!208666))))

(declare-fun b!340119 () Bool)

(declare-fun e!208670 () Bool)

(assert (=> b!340119 (= e!208670 (validKeyInArray!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!340120 () Bool)

(assert (=> b!340120 (= e!208660 (not call!26554))))

(declare-fun b!340121 () Bool)

(assert (=> b!340121 (= e!208667 call!26555)))

(declare-fun b!340122 () Bool)

(assert (=> b!340122 (= e!208662 e!208671)))

(declare-fun c!52599 () Bool)

(assert (=> b!340122 (= c!52599 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!340123 () Bool)

(declare-fun res!187910 () Bool)

(assert (=> b!340123 (=> (not res!187910) (not e!208661))))

(assert (=> b!340123 (= res!187910 e!208665)))

(declare-fun c!52600 () Bool)

(assert (=> b!340123 (= c!52600 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!26554 () Bool)

(assert (=> bm!26554 (= call!26557 (+!719 (ite c!52598 call!26553 (ite c!52599 call!26552 call!26556)) (ite (or c!52598 c!52599) (tuple2!5229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26555 () Bool)

(assert (=> bm!26555 (= call!26555 call!26557)))

(declare-fun b!340124 () Bool)

(declare-fun e!208664 () Bool)

(assert (=> b!340124 (= e!208664 e!208663)))

(declare-fun res!187905 () Bool)

(assert (=> b!340124 (=> (not res!187905) (not e!208663))))

(assert (=> b!340124 (= res!187905 (contains!2142 lt!161514 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!340124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(declare-fun b!340125 () Bool)

(assert (=> b!340125 (= e!208659 (validKeyInArray!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!340126 () Bool)

(declare-fun res!187911 () Bool)

(assert (=> b!340126 (=> (not res!187911) (not e!208661))))

(assert (=> b!340126 (= res!187911 e!208664)))

(declare-fun res!187908 () Bool)

(assert (=> b!340126 (=> res!187908 e!208664)))

(assert (=> b!340126 (= res!187908 (not e!208670))))

(declare-fun res!187906 () Bool)

(assert (=> b!340126 (=> (not res!187906) (not e!208670))))

(assert (=> b!340126 (= res!187906 (bvslt #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(declare-fun b!340127 () Bool)

(assert (=> b!340127 (= e!208661 e!208660)))

(declare-fun c!52597 () Bool)

(assert (=> b!340127 (= c!52597 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!70787 c!52598) b!340114))

(assert (= (and d!70787 (not c!52598)) b!340122))

(assert (= (and b!340122 c!52599) b!340110))

(assert (= (and b!340122 (not c!52599)) b!340107))

(assert (= (and b!340107 c!52601) b!340121))

(assert (= (and b!340107 (not c!52601)) b!340117))

(assert (= (or b!340121 b!340117) bm!26550))

(assert (= (or b!340110 bm!26550) bm!26549))

(assert (= (or b!340110 b!340121) bm!26555))

(assert (= (or b!340114 bm!26549) bm!26553))

(assert (= (or b!340114 bm!26555) bm!26554))

(assert (= (and d!70787 res!187909) b!340125))

(assert (= (and d!70787 c!52596) b!340108))

(assert (= (and d!70787 (not c!52596)) b!340111))

(assert (= (and d!70787 res!187912) b!340126))

(assert (= (and b!340126 res!187906) b!340119))

(assert (= (and b!340126 (not res!187908)) b!340124))

(assert (= (and b!340124 res!187905) b!340116))

(assert (= (and b!340126 res!187911) b!340123))

(assert (= (and b!340123 c!52600) b!340115))

(assert (= (and b!340123 (not c!52600)) b!340109))

(assert (= (and b!340115 res!187907) b!340112))

(assert (= (or b!340115 b!340109) bm!26551))

(assert (= (and b!340123 res!187910) b!340127))

(assert (= (and b!340127 c!52597) b!340118))

(assert (= (and b!340127 (not c!52597)) b!340120))

(assert (= (and b!340118 res!187913) b!340113))

(assert (= (or b!340118 b!340120) bm!26552))

(declare-fun b_lambda!8469 () Bool)

(assert (=> (not b_lambda!8469) (not b!340116)))

(declare-fun t!9989 () Bool)

(declare-fun tb!3073 () Bool)

(assert (=> (and start!34144 (= defaultEntry!1528 defaultEntry!1528) t!9989) tb!3073))

(declare-fun result!5533 () Bool)

(assert (=> tb!3073 (= result!5533 tp_is_empty!7131)))

(assert (=> b!340116 t!9989))

(declare-fun b_and!14399 () Bool)

(assert (= b_and!14395 (and (=> t!9989 result!5533) b_and!14399)))

(declare-fun m!342873 () Bool)

(assert (=> b!340112 m!342873))

(declare-fun m!342875 () Bool)

(assert (=> bm!26552 m!342875))

(declare-fun m!342877 () Bool)

(assert (=> bm!26553 m!342877))

(declare-fun m!342879 () Bool)

(assert (=> b!340114 m!342879))

(declare-fun m!342881 () Bool)

(assert (=> b!340108 m!342881))

(assert (=> b!340108 m!342843))

(declare-fun m!342883 () Bool)

(assert (=> b!340108 m!342883))

(assert (=> b!340108 m!342877))

(declare-fun m!342885 () Bool)

(assert (=> b!340108 m!342885))

(declare-fun m!342887 () Bool)

(assert (=> b!340108 m!342887))

(declare-fun m!342889 () Bool)

(assert (=> b!340108 m!342889))

(declare-fun m!342891 () Bool)

(assert (=> b!340108 m!342891))

(declare-fun m!342893 () Bool)

(assert (=> b!340108 m!342893))

(declare-fun m!342895 () Bool)

(assert (=> b!340108 m!342895))

(assert (=> b!340108 m!342889))

(declare-fun m!342897 () Bool)

(assert (=> b!340108 m!342897))

(declare-fun m!342899 () Bool)

(assert (=> b!340108 m!342899))

(declare-fun m!342901 () Bool)

(assert (=> b!340108 m!342901))

(assert (=> b!340108 m!342893))

(declare-fun m!342903 () Bool)

(assert (=> b!340108 m!342903))

(declare-fun m!342905 () Bool)

(assert (=> b!340108 m!342905))

(assert (=> b!340108 m!342885))

(declare-fun m!342907 () Bool)

(assert (=> b!340108 m!342907))

(assert (=> b!340108 m!342895))

(declare-fun m!342909 () Bool)

(assert (=> b!340108 m!342909))

(declare-fun m!342911 () Bool)

(assert (=> bm!26551 m!342911))

(assert (=> b!340119 m!342843))

(assert (=> b!340119 m!342843))

(assert (=> b!340119 m!342845))

(declare-fun m!342913 () Bool)

(assert (=> bm!26554 m!342913))

(declare-fun m!342915 () Bool)

(assert (=> b!340116 m!342915))

(assert (=> b!340116 m!342843))

(assert (=> b!340116 m!342843))

(declare-fun m!342917 () Bool)

(assert (=> b!340116 m!342917))

(assert (=> b!340116 m!342915))

(declare-fun m!342919 () Bool)

(assert (=> b!340116 m!342919))

(declare-fun m!342921 () Bool)

(assert (=> b!340116 m!342921))

(assert (=> b!340116 m!342919))

(assert (=> d!70787 m!342801))

(assert (=> b!340124 m!342843))

(assert (=> b!340124 m!342843))

(declare-fun m!342923 () Bool)

(assert (=> b!340124 m!342923))

(assert (=> b!340125 m!342843))

(assert (=> b!340125 m!342843))

(assert (=> b!340125 m!342845))

(declare-fun m!342925 () Bool)

(assert (=> b!340113 m!342925))

(assert (=> b!339984 d!70787))

(declare-fun d!70789 () Bool)

(assert (=> d!70789 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339985 d!70789))

(declare-fun d!70791 () Bool)

(declare-fun res!187918 () Bool)

(declare-fun e!208676 () Bool)

(assert (=> d!70791 (=> res!187918 e!208676)))

(assert (=> d!70791 (= res!187918 (= (select (arr!8436 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70791 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!208676)))

(declare-fun b!340134 () Bool)

(declare-fun e!208677 () Bool)

(assert (=> b!340134 (= e!208676 e!208677)))

(declare-fun res!187919 () Bool)

(assert (=> b!340134 (=> (not res!187919) (not e!208677))))

(assert (=> b!340134 (= res!187919 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8788 _keys!1895)))))

(declare-fun b!340135 () Bool)

(assert (=> b!340135 (= e!208677 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70791 (not res!187918)) b!340134))

(assert (= (and b!340134 res!187919) b!340135))

(assert (=> d!70791 m!342843))

(declare-fun m!342927 () Bool)

(assert (=> b!340135 m!342927))

(assert (=> b!339980 d!70791))

(declare-fun b!340144 () Bool)

(declare-fun e!208685 () Bool)

(declare-fun call!26561 () Bool)

(assert (=> b!340144 (= e!208685 call!26561)))

(declare-fun b!340145 () Bool)

(declare-fun e!208684 () Bool)

(assert (=> b!340145 (= e!208684 e!208685)))

(declare-fun lt!161537 () (_ BitVec 64))

(assert (=> b!340145 (= lt!161537 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161538 () Unit!10594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17835 (_ BitVec 64) (_ BitVec 32)) Unit!10594)

(assert (=> b!340145 (= lt!161538 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!161537 #b00000000000000000000000000000000))))

(assert (=> b!340145 (arrayContainsKey!0 _keys!1895 lt!161537 #b00000000000000000000000000000000)))

(declare-fun lt!161536 () Unit!10594)

(assert (=> b!340145 (= lt!161536 lt!161538)))

(declare-fun res!187925 () Bool)

(assert (=> b!340145 (= res!187925 (= (seekEntryOrOpen!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3261 #b00000000000000000000000000000000)))))

(assert (=> b!340145 (=> (not res!187925) (not e!208685))))

(declare-fun bm!26558 () Bool)

(assert (=> bm!26558 (= call!26561 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun d!70793 () Bool)

(declare-fun res!187924 () Bool)

(declare-fun e!208686 () Bool)

(assert (=> d!70793 (=> res!187924 e!208686)))

(assert (=> d!70793 (= res!187924 (bvsge #b00000000000000000000000000000000 (size!8788 _keys!1895)))))

(assert (=> d!70793 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!208686)))

(declare-fun b!340146 () Bool)

(assert (=> b!340146 (= e!208686 e!208684)))

(declare-fun c!52604 () Bool)

(assert (=> b!340146 (= c!52604 (validKeyInArray!0 (select (arr!8436 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!340147 () Bool)

(assert (=> b!340147 (= e!208684 call!26561)))

(assert (= (and d!70793 (not res!187924)) b!340146))

(assert (= (and b!340146 c!52604) b!340145))

(assert (= (and b!340146 (not c!52604)) b!340147))

(assert (= (and b!340145 res!187925) b!340144))

(assert (= (or b!340144 b!340147) bm!26558))

(assert (=> b!340145 m!342843))

(declare-fun m!342929 () Bool)

(assert (=> b!340145 m!342929))

(declare-fun m!342931 () Bool)

(assert (=> b!340145 m!342931))

(assert (=> b!340145 m!342843))

(declare-fun m!342933 () Bool)

(assert (=> b!340145 m!342933))

(declare-fun m!342935 () Bool)

(assert (=> bm!26558 m!342935))

(assert (=> b!340146 m!342843))

(assert (=> b!340146 m!342843))

(assert (=> b!340146 m!342845))

(assert (=> b!339983 d!70793))

(declare-fun mapNonEmpty!12126 () Bool)

(declare-fun mapRes!12126 () Bool)

(declare-fun tp!25077 () Bool)

(declare-fun e!208691 () Bool)

(assert (=> mapNonEmpty!12126 (= mapRes!12126 (and tp!25077 e!208691))))

(declare-fun mapKey!12126 () (_ BitVec 32))

(declare-fun mapRest!12126 () (Array (_ BitVec 32) ValueCell!3222))

(declare-fun mapValue!12126 () ValueCell!3222)

(assert (=> mapNonEmpty!12126 (= mapRest!12120 (store mapRest!12126 mapKey!12126 mapValue!12126))))

(declare-fun b!340154 () Bool)

(assert (=> b!340154 (= e!208691 tp_is_empty!7131)))

(declare-fun mapIsEmpty!12126 () Bool)

(assert (=> mapIsEmpty!12126 mapRes!12126))

(declare-fun b!340155 () Bool)

(declare-fun e!208692 () Bool)

(assert (=> b!340155 (= e!208692 tp_is_empty!7131)))

(declare-fun condMapEmpty!12126 () Bool)

(declare-fun mapDefault!12126 () ValueCell!3222)

(assert (=> mapNonEmpty!12120 (= condMapEmpty!12126 (= mapRest!12120 ((as const (Array (_ BitVec 32) ValueCell!3222)) mapDefault!12126)))))

(assert (=> mapNonEmpty!12120 (= tp!25068 (and e!208692 mapRes!12126))))

(assert (= (and mapNonEmpty!12120 condMapEmpty!12126) mapIsEmpty!12126))

(assert (= (and mapNonEmpty!12120 (not condMapEmpty!12126)) mapNonEmpty!12126))

(assert (= (and mapNonEmpty!12126 ((_ is ValueCellFull!3222) mapValue!12126)) b!340154))

(assert (= (and mapNonEmpty!12120 ((_ is ValueCellFull!3222) mapDefault!12126)) b!340155))

(declare-fun m!342937 () Bool)

(assert (=> mapNonEmpty!12126 m!342937))

(declare-fun b_lambda!8471 () Bool)

(assert (= b_lambda!8469 (or (and start!34144 b_free!7179) b_lambda!8471)))

(check-sat (not b!340116) (not b_next!7179) (not b!340064) (not mapNonEmpty!12126) (not b!340033) (not bm!26551) (not b!340146) (not bm!26553) (not b!340062) (not b!340108) (not bm!26534) (not bm!26558) (not b!340119) (not b_lambda!8471) tp_is_empty!7131 (not d!70787) (not b!340112) (not b!340125) (not b!340145) (not bm!26552) (not b!340034) (not b!340114) (not b!340050) (not bm!26554) (not b!340135) (not b!340124) (not d!70783) (not d!70785) b_and!14399 (not b!340037) (not b!340113))
(check-sat b_and!14399 (not b_next!7179))
