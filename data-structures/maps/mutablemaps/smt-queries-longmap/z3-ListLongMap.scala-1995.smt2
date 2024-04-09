; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34886 () Bool)

(assert start!34886)

(declare-fun b_free!7641 () Bool)

(declare-fun b_next!7641 () Bool)

(assert (=> start!34886 (= b_free!7641 (not b_next!7641))))

(declare-fun tp!26492 () Bool)

(declare-fun b_and!14883 () Bool)

(assert (=> start!34886 (= tp!26492 b_and!14883)))

(declare-fun b!349077 () Bool)

(declare-fun res!193535 () Bool)

(declare-fun e!213850 () Bool)

(assert (=> b!349077 (=> (not res!193535) (not e!213850))))

(declare-datatypes ((array!18741 0))(
  ( (array!18742 (arr!8876 (Array (_ BitVec 32) (_ BitVec 64))) (size!9228 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18741)

(declare-datatypes ((List!5186 0))(
  ( (Nil!5183) (Cons!5182 (h!6038 (_ BitVec 64)) (t!10326 List!5186)) )
))
(declare-fun arrayNoDuplicates!0 (array!18741 (_ BitVec 32) List!5186) Bool)

(assert (=> b!349077 (= res!193535 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5183))))

(declare-fun b!349078 () Bool)

(declare-fun e!213849 () Bool)

(declare-fun e!213846 () Bool)

(declare-fun mapRes!12852 () Bool)

(assert (=> b!349078 (= e!213849 (and e!213846 mapRes!12852))))

(declare-fun condMapEmpty!12852 () Bool)

(declare-datatypes ((V!11101 0))(
  ( (V!11102 (val!3841 Int)) )
))
(declare-datatypes ((ValueCell!3453 0))(
  ( (ValueCellFull!3453 (v!6021 V!11101)) (EmptyCell!3453) )
))
(declare-datatypes ((array!18743 0))(
  ( (array!18744 (arr!8877 (Array (_ BitVec 32) ValueCell!3453)) (size!9229 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18743)

(declare-fun mapDefault!12852 () ValueCell!3453)

(assert (=> b!349078 (= condMapEmpty!12852 (= (arr!8877 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3453)) mapDefault!12852)))))

(declare-fun b!349079 () Bool)

(declare-fun res!193532 () Bool)

(declare-fun e!213848 () Bool)

(assert (=> b!349079 (=> (not res!193532) (not e!213848))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349079 (= res!193532 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!349080 () Bool)

(declare-fun res!193534 () Bool)

(assert (=> b!349080 (=> (not res!193534) (not e!213850))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!11101)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11101)

(declare-datatypes ((tuple2!5546 0))(
  ( (tuple2!5547 (_1!2783 (_ BitVec 64)) (_2!2783 V!11101)) )
))
(declare-datatypes ((List!5187 0))(
  ( (Nil!5184) (Cons!5183 (h!6039 tuple2!5546) (t!10327 List!5187)) )
))
(declare-datatypes ((ListLongMap!4473 0))(
  ( (ListLongMap!4474 (toList!2252 List!5187)) )
))
(declare-fun contains!2314 (ListLongMap!4473 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1769 (array!18741 array!18743 (_ BitVec 32) (_ BitVec 32) V!11101 V!11101 (_ BitVec 32) Int) ListLongMap!4473)

(assert (=> b!349080 (= res!193534 (not (contains!2314 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12852 () Bool)

(declare-fun tp!26493 () Bool)

(declare-fun e!213847 () Bool)

(assert (=> mapNonEmpty!12852 (= mapRes!12852 (and tp!26493 e!213847))))

(declare-fun mapValue!12852 () ValueCell!3453)

(declare-fun mapKey!12852 () (_ BitVec 32))

(declare-fun mapRest!12852 () (Array (_ BitVec 32) ValueCell!3453))

(assert (=> mapNonEmpty!12852 (= (arr!8877 _values!1525) (store mapRest!12852 mapKey!12852 mapValue!12852))))

(declare-fun b!349081 () Bool)

(assert (=> b!349081 (= e!213850 e!213848)))

(declare-fun res!193539 () Bool)

(assert (=> b!349081 (=> (not res!193539) (not e!213848))))

(declare-datatypes ((SeekEntryResult!3418 0))(
  ( (MissingZero!3418 (index!15851 (_ BitVec 32))) (Found!3418 (index!15852 (_ BitVec 32))) (Intermediate!3418 (undefined!4230 Bool) (index!15853 (_ BitVec 32)) (x!34775 (_ BitVec 32))) (Undefined!3418) (MissingVacant!3418 (index!15854 (_ BitVec 32))) )
))
(declare-fun lt!164064 () SeekEntryResult!3418)

(get-info :version)

(assert (=> b!349081 (= res!193539 (and (not ((_ is Found!3418) lt!164064)) ((_ is MissingZero!3418) lt!164064)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18741 (_ BitVec 32)) SeekEntryResult!3418)

(assert (=> b!349081 (= lt!164064 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun e!213851 () Bool)

(declare-fun b!349082 () Bool)

(declare-fun lt!164063 () (_ BitVec 32))

(assert (=> b!349082 (= e!213851 (not (arrayContainsKey!0 _keys!1895 k0!1348 lt!164063)))))

(declare-fun b!349083 () Bool)

(declare-fun tp_is_empty!7593 () Bool)

(assert (=> b!349083 (= e!213847 tp_is_empty!7593)))

(declare-fun b!349084 () Bool)

(declare-fun res!193537 () Bool)

(assert (=> b!349084 (=> (not res!193537) (not e!213850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18741 (_ BitVec 32)) Bool)

(assert (=> b!349084 (= res!193537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349085 () Bool)

(assert (=> b!349085 (= e!213846 tp_is_empty!7593)))

(declare-fun res!193533 () Bool)

(assert (=> start!34886 (=> (not res!193533) (not e!213850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34886 (= res!193533 (validMask!0 mask!2385))))

(assert (=> start!34886 e!213850))

(assert (=> start!34886 true))

(assert (=> start!34886 tp_is_empty!7593))

(assert (=> start!34886 tp!26492))

(declare-fun array_inv!6548 (array!18743) Bool)

(assert (=> start!34886 (and (array_inv!6548 _values!1525) e!213849)))

(declare-fun array_inv!6549 (array!18741) Bool)

(assert (=> start!34886 (array_inv!6549 _keys!1895)))

(declare-fun b!349086 () Bool)

(declare-fun res!193536 () Bool)

(assert (=> b!349086 (=> (not res!193536) (not e!213850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349086 (= res!193536 (validKeyInArray!0 k0!1348))))

(declare-fun b!349087 () Bool)

(declare-fun res!193538 () Bool)

(assert (=> b!349087 (=> (not res!193538) (not e!213850))))

(assert (=> b!349087 (= res!193538 (and (= (size!9229 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9228 _keys!1895) (size!9229 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349088 () Bool)

(assert (=> b!349088 (= e!213848 e!213851)))

(declare-fun res!193540 () Bool)

(assert (=> b!349088 (=> (not res!193540) (not e!213851))))

(assert (=> b!349088 (= res!193540 (and (bvsge lt!164063 #b00000000000000000000000000000000) (bvslt lt!164063 (size!9228 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18741 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349088 (= lt!164063 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12852 () Bool)

(assert (=> mapIsEmpty!12852 mapRes!12852))

(assert (= (and start!34886 res!193533) b!349087))

(assert (= (and b!349087 res!193538) b!349084))

(assert (= (and b!349084 res!193537) b!349077))

(assert (= (and b!349077 res!193535) b!349086))

(assert (= (and b!349086 res!193536) b!349080))

(assert (= (and b!349080 res!193534) b!349081))

(assert (= (and b!349081 res!193539) b!349079))

(assert (= (and b!349079 res!193532) b!349088))

(assert (= (and b!349088 res!193540) b!349082))

(assert (= (and b!349078 condMapEmpty!12852) mapIsEmpty!12852))

(assert (= (and b!349078 (not condMapEmpty!12852)) mapNonEmpty!12852))

(assert (= (and mapNonEmpty!12852 ((_ is ValueCellFull!3453) mapValue!12852)) b!349083))

(assert (= (and b!349078 ((_ is ValueCellFull!3453) mapDefault!12852)) b!349085))

(assert (= start!34886 b!349078))

(declare-fun m!349659 () Bool)

(assert (=> b!349082 m!349659))

(declare-fun m!349661 () Bool)

(assert (=> b!349079 m!349661))

(declare-fun m!349663 () Bool)

(assert (=> b!349084 m!349663))

(declare-fun m!349665 () Bool)

(assert (=> b!349088 m!349665))

(declare-fun m!349667 () Bool)

(assert (=> b!349077 m!349667))

(declare-fun m!349669 () Bool)

(assert (=> b!349081 m!349669))

(declare-fun m!349671 () Bool)

(assert (=> mapNonEmpty!12852 m!349671))

(declare-fun m!349673 () Bool)

(assert (=> b!349086 m!349673))

(declare-fun m!349675 () Bool)

(assert (=> start!34886 m!349675))

(declare-fun m!349677 () Bool)

(assert (=> start!34886 m!349677))

(declare-fun m!349679 () Bool)

(assert (=> start!34886 m!349679))

(declare-fun m!349681 () Bool)

(assert (=> b!349080 m!349681))

(assert (=> b!349080 m!349681))

(declare-fun m!349683 () Bool)

(assert (=> b!349080 m!349683))

(check-sat (not b!349088) (not b!349086) (not b!349081) (not b!349079) (not start!34886) tp_is_empty!7593 (not mapNonEmpty!12852) (not b!349082) (not b_next!7641) b_and!14883 (not b!349080) (not b!349084) (not b!349077))
(check-sat b_and!14883 (not b_next!7641))
(get-model)

(declare-fun d!71211 () Bool)

(declare-fun res!193572 () Bool)

(declare-fun e!213877 () Bool)

(assert (=> d!71211 (=> res!193572 e!213877)))

(assert (=> d!71211 (= res!193572 (= (select (arr!8876 _keys!1895) lt!164063) k0!1348))))

(assert (=> d!71211 (= (arrayContainsKey!0 _keys!1895 k0!1348 lt!164063) e!213877)))

(declare-fun b!349129 () Bool)

(declare-fun e!213878 () Bool)

(assert (=> b!349129 (= e!213877 e!213878)))

(declare-fun res!193573 () Bool)

(assert (=> b!349129 (=> (not res!193573) (not e!213878))))

(assert (=> b!349129 (= res!193573 (bvslt (bvadd lt!164063 #b00000000000000000000000000000001) (size!9228 _keys!1895)))))

(declare-fun b!349130 () Bool)

(assert (=> b!349130 (= e!213878 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd lt!164063 #b00000000000000000000000000000001)))))

(assert (= (and d!71211 (not res!193572)) b!349129))

(assert (= (and b!349129 res!193573) b!349130))

(declare-fun m!349711 () Bool)

(assert (=> d!71211 m!349711))

(declare-fun m!349713 () Bool)

(assert (=> b!349130 m!349713))

(assert (=> b!349082 d!71211))

(declare-fun b!349141 () Bool)

(declare-fun e!213889 () Bool)

(declare-fun e!213888 () Bool)

(assert (=> b!349141 (= e!213889 e!213888)))

(declare-fun c!53171 () Bool)

(assert (=> b!349141 (= c!53171 (validKeyInArray!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349142 () Bool)

(declare-fun e!213887 () Bool)

(declare-fun contains!2316 (List!5186 (_ BitVec 64)) Bool)

(assert (=> b!349142 (= e!213887 (contains!2316 Nil!5183 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71213 () Bool)

(declare-fun res!193581 () Bool)

(declare-fun e!213890 () Bool)

(assert (=> d!71213 (=> res!193581 e!213890)))

(assert (=> d!71213 (= res!193581 (bvsge #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(assert (=> d!71213 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5183) e!213890)))

(declare-fun bm!26885 () Bool)

(declare-fun call!26888 () Bool)

(assert (=> bm!26885 (= call!26888 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53171 (Cons!5182 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000) Nil!5183) Nil!5183)))))

(declare-fun b!349143 () Bool)

(assert (=> b!349143 (= e!213890 e!213889)))

(declare-fun res!193582 () Bool)

(assert (=> b!349143 (=> (not res!193582) (not e!213889))))

(assert (=> b!349143 (= res!193582 (not e!213887))))

(declare-fun res!193580 () Bool)

(assert (=> b!349143 (=> (not res!193580) (not e!213887))))

(assert (=> b!349143 (= res!193580 (validKeyInArray!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349144 () Bool)

(assert (=> b!349144 (= e!213888 call!26888)))

(declare-fun b!349145 () Bool)

(assert (=> b!349145 (= e!213888 call!26888)))

(assert (= (and d!71213 (not res!193581)) b!349143))

(assert (= (and b!349143 res!193580) b!349142))

(assert (= (and b!349143 res!193582) b!349141))

(assert (= (and b!349141 c!53171) b!349144))

(assert (= (and b!349141 (not c!53171)) b!349145))

(assert (= (or b!349144 b!349145) bm!26885))

(declare-fun m!349715 () Bool)

(assert (=> b!349141 m!349715))

(assert (=> b!349141 m!349715))

(declare-fun m!349717 () Bool)

(assert (=> b!349141 m!349717))

(assert (=> b!349142 m!349715))

(assert (=> b!349142 m!349715))

(declare-fun m!349719 () Bool)

(assert (=> b!349142 m!349719))

(assert (=> bm!26885 m!349715))

(declare-fun m!349721 () Bool)

(assert (=> bm!26885 m!349721))

(assert (=> b!349143 m!349715))

(assert (=> b!349143 m!349715))

(assert (=> b!349143 m!349717))

(assert (=> b!349077 d!71213))

(declare-fun d!71215 () Bool)

(declare-fun res!193583 () Bool)

(declare-fun e!213891 () Bool)

(assert (=> d!71215 (=> res!193583 e!213891)))

(assert (=> d!71215 (= res!193583 (= (select (arr!8876 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71215 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!213891)))

(declare-fun b!349146 () Bool)

(declare-fun e!213892 () Bool)

(assert (=> b!349146 (= e!213891 e!213892)))

(declare-fun res!193584 () Bool)

(assert (=> b!349146 (=> (not res!193584) (not e!213892))))

(assert (=> b!349146 (= res!193584 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9228 _keys!1895)))))

(declare-fun b!349147 () Bool)

(assert (=> b!349147 (= e!213892 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71215 (not res!193583)) b!349146))

(assert (= (and b!349146 res!193584) b!349147))

(assert (=> d!71215 m!349715))

(declare-fun m!349723 () Bool)

(assert (=> b!349147 m!349723))

(assert (=> b!349079 d!71215))

(declare-fun d!71217 () Bool)

(declare-fun lt!164073 () (_ BitVec 32))

(assert (=> d!71217 (and (or (bvslt lt!164073 #b00000000000000000000000000000000) (bvsge lt!164073 (size!9228 _keys!1895)) (and (bvsge lt!164073 #b00000000000000000000000000000000) (bvslt lt!164073 (size!9228 _keys!1895)))) (bvsge lt!164073 #b00000000000000000000000000000000) (bvslt lt!164073 (size!9228 _keys!1895)) (= (select (arr!8876 _keys!1895) lt!164073) k0!1348))))

(declare-fun e!213895 () (_ BitVec 32))

(assert (=> d!71217 (= lt!164073 e!213895)))

(declare-fun c!53174 () Bool)

(assert (=> d!71217 (= c!53174 (= (select (arr!8876 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)) (bvslt (size!9228 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71217 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164073)))

(declare-fun b!349152 () Bool)

(assert (=> b!349152 (= e!213895 #b00000000000000000000000000000000)))

(declare-fun b!349153 () Bool)

(assert (=> b!349153 (= e!213895 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71217 c!53174) b!349152))

(assert (= (and d!71217 (not c!53174)) b!349153))

(declare-fun m!349725 () Bool)

(assert (=> d!71217 m!349725))

(assert (=> d!71217 m!349715))

(declare-fun m!349727 () Bool)

(assert (=> b!349153 m!349727))

(assert (=> b!349088 d!71217))

(declare-fun b!349162 () Bool)

(declare-fun e!213904 () Bool)

(declare-fun e!213902 () Bool)

(assert (=> b!349162 (= e!213904 e!213902)))

(declare-fun lt!164081 () (_ BitVec 64))

(assert (=> b!349162 (= lt!164081 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10810 0))(
  ( (Unit!10811) )
))
(declare-fun lt!164080 () Unit!10810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18741 (_ BitVec 64) (_ BitVec 32)) Unit!10810)

(assert (=> b!349162 (= lt!164080 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!164081 #b00000000000000000000000000000000))))

(assert (=> b!349162 (arrayContainsKey!0 _keys!1895 lt!164081 #b00000000000000000000000000000000)))

(declare-fun lt!164082 () Unit!10810)

(assert (=> b!349162 (= lt!164082 lt!164080)))

(declare-fun res!193590 () Bool)

(assert (=> b!349162 (= res!193590 (= (seekEntryOrOpen!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3418 #b00000000000000000000000000000000)))))

(assert (=> b!349162 (=> (not res!193590) (not e!213902))))

(declare-fun bm!26888 () Bool)

(declare-fun call!26891 () Bool)

(assert (=> bm!26888 (= call!26891 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun d!71219 () Bool)

(declare-fun res!193589 () Bool)

(declare-fun e!213903 () Bool)

(assert (=> d!71219 (=> res!193589 e!213903)))

(assert (=> d!71219 (= res!193589 (bvsge #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(assert (=> d!71219 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!213903)))

(declare-fun b!349163 () Bool)

(assert (=> b!349163 (= e!213902 call!26891)))

(declare-fun b!349164 () Bool)

(assert (=> b!349164 (= e!213903 e!213904)))

(declare-fun c!53177 () Bool)

(assert (=> b!349164 (= c!53177 (validKeyInArray!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349165 () Bool)

(assert (=> b!349165 (= e!213904 call!26891)))

(assert (= (and d!71219 (not res!193589)) b!349164))

(assert (= (and b!349164 c!53177) b!349162))

(assert (= (and b!349164 (not c!53177)) b!349165))

(assert (= (and b!349162 res!193590) b!349163))

(assert (= (or b!349163 b!349165) bm!26888))

(assert (=> b!349162 m!349715))

(declare-fun m!349729 () Bool)

(assert (=> b!349162 m!349729))

(declare-fun m!349731 () Bool)

(assert (=> b!349162 m!349731))

(assert (=> b!349162 m!349715))

(declare-fun m!349733 () Bool)

(assert (=> b!349162 m!349733))

(declare-fun m!349735 () Bool)

(assert (=> bm!26888 m!349735))

(assert (=> b!349164 m!349715))

(assert (=> b!349164 m!349715))

(assert (=> b!349164 m!349717))

(assert (=> b!349084 d!71219))

(declare-fun d!71221 () Bool)

(declare-fun e!213910 () Bool)

(assert (=> d!71221 e!213910))

(declare-fun res!193593 () Bool)

(assert (=> d!71221 (=> res!193593 e!213910)))

(declare-fun lt!164091 () Bool)

(assert (=> d!71221 (= res!193593 (not lt!164091))))

(declare-fun lt!164094 () Bool)

(assert (=> d!71221 (= lt!164091 lt!164094)))

(declare-fun lt!164093 () Unit!10810)

(declare-fun e!213909 () Unit!10810)

(assert (=> d!71221 (= lt!164093 e!213909)))

(declare-fun c!53180 () Bool)

(assert (=> d!71221 (= c!53180 lt!164094)))

(declare-fun containsKey!337 (List!5187 (_ BitVec 64)) Bool)

(assert (=> d!71221 (= lt!164094 (containsKey!337 (toList!2252 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71221 (= (contains!2314 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!164091)))

(declare-fun b!349172 () Bool)

(declare-fun lt!164092 () Unit!10810)

(assert (=> b!349172 (= e!213909 lt!164092)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!286 (List!5187 (_ BitVec 64)) Unit!10810)

(assert (=> b!349172 (= lt!164092 (lemmaContainsKeyImpliesGetValueByKeyDefined!286 (toList!2252 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!351 0))(
  ( (Some!350 (v!6023 V!11101)) (None!349) )
))
(declare-fun isDefined!287 (Option!351) Bool)

(declare-fun getValueByKey!345 (List!5187 (_ BitVec 64)) Option!351)

(assert (=> b!349172 (isDefined!287 (getValueByKey!345 (toList!2252 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!349173 () Bool)

(declare-fun Unit!10812 () Unit!10810)

(assert (=> b!349173 (= e!213909 Unit!10812)))

(declare-fun b!349174 () Bool)

(assert (=> b!349174 (= e!213910 (isDefined!287 (getValueByKey!345 (toList!2252 (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71221 c!53180) b!349172))

(assert (= (and d!71221 (not c!53180)) b!349173))

(assert (= (and d!71221 (not res!193593)) b!349174))

(declare-fun m!349737 () Bool)

(assert (=> d!71221 m!349737))

(declare-fun m!349739 () Bool)

(assert (=> b!349172 m!349739))

(declare-fun m!349741 () Bool)

(assert (=> b!349172 m!349741))

(assert (=> b!349172 m!349741))

(declare-fun m!349743 () Bool)

(assert (=> b!349172 m!349743))

(assert (=> b!349174 m!349741))

(assert (=> b!349174 m!349741))

(assert (=> b!349174 m!349743))

(assert (=> b!349080 d!71221))

(declare-fun bm!26903 () Bool)

(declare-fun call!26912 () ListLongMap!4473)

(declare-fun call!26910 () ListLongMap!4473)

(assert (=> bm!26903 (= call!26912 call!26910)))

(declare-fun b!349217 () Bool)

(declare-fun e!213945 () Bool)

(declare-fun call!26909 () Bool)

(assert (=> b!349217 (= e!213945 (not call!26909))))

(declare-fun b!349218 () Bool)

(declare-fun c!53198 () Bool)

(assert (=> b!349218 (= c!53198 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!213941 () ListLongMap!4473)

(declare-fun e!213937 () ListLongMap!4473)

(assert (=> b!349218 (= e!213941 e!213937)))

(declare-fun b!349219 () Bool)

(declare-fun e!213942 () Bool)

(declare-fun lt!164155 () ListLongMap!4473)

(declare-fun apply!288 (ListLongMap!4473 (_ BitVec 64)) V!11101)

(assert (=> b!349219 (= e!213942 (= (apply!288 lt!164155 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!349220 () Bool)

(declare-fun res!193612 () Bool)

(declare-fun e!213938 () Bool)

(assert (=> b!349220 (=> (not res!193612) (not e!213938))))

(declare-fun e!213947 () Bool)

(assert (=> b!349220 (= res!193612 e!213947)))

(declare-fun res!193613 () Bool)

(assert (=> b!349220 (=> res!193613 e!213947)))

(declare-fun e!213939 () Bool)

(assert (=> b!349220 (= res!193613 (not e!213939))))

(declare-fun res!193615 () Bool)

(assert (=> b!349220 (=> (not res!193615) (not e!213939))))

(assert (=> b!349220 (= res!193615 (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(declare-fun b!349221 () Bool)

(declare-fun e!213940 () Bool)

(assert (=> b!349221 (= e!213940 (validKeyInArray!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349222 () Bool)

(declare-fun e!213948 () Bool)

(assert (=> b!349222 (= e!213938 e!213948)))

(declare-fun c!53197 () Bool)

(assert (=> b!349222 (= c!53197 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!349223 () Bool)

(declare-fun e!213944 () Bool)

(assert (=> b!349223 (= e!213945 e!213944)))

(declare-fun res!193616 () Bool)

(assert (=> b!349223 (= res!193616 call!26909)))

(assert (=> b!349223 (=> (not res!193616) (not e!213944))))

(declare-fun d!71223 () Bool)

(assert (=> d!71223 e!213938))

(declare-fun res!193620 () Bool)

(assert (=> d!71223 (=> (not res!193620) (not e!213938))))

(assert (=> d!71223 (= res!193620 (or (bvsge #b00000000000000000000000000000000 (size!9228 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)))))))

(declare-fun lt!164151 () ListLongMap!4473)

(assert (=> d!71223 (= lt!164155 lt!164151)))

(declare-fun lt!164159 () Unit!10810)

(declare-fun e!213949 () Unit!10810)

(assert (=> d!71223 (= lt!164159 e!213949)))

(declare-fun c!53195 () Bool)

(assert (=> d!71223 (= c!53195 e!213940)))

(declare-fun res!193614 () Bool)

(assert (=> d!71223 (=> (not res!193614) (not e!213940))))

(assert (=> d!71223 (= res!193614 (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(declare-fun e!213946 () ListLongMap!4473)

(assert (=> d!71223 (= lt!164151 e!213946)))

(declare-fun c!53196 () Bool)

(assert (=> d!71223 (= c!53196 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71223 (validMask!0 mask!2385)))

(assert (=> d!71223 (= (getCurrentListMap!1769 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164155)))

(declare-fun b!349224 () Bool)

(assert (=> b!349224 (= e!213939 (validKeyInArray!0 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349225 () Bool)

(declare-fun +!732 (ListLongMap!4473 tuple2!5546) ListLongMap!4473)

(assert (=> b!349225 (= e!213946 (+!732 call!26910 (tuple2!5547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!349226 () Bool)

(declare-fun call!26906 () Bool)

(assert (=> b!349226 (= e!213948 (not call!26906))))

(declare-fun b!349227 () Bool)

(assert (=> b!349227 (= e!213944 (= (apply!288 lt!164155 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!349228 () Bool)

(declare-fun e!213943 () Bool)

(assert (=> b!349228 (= e!213947 e!213943)))

(declare-fun res!193618 () Bool)

(assert (=> b!349228 (=> (not res!193618) (not e!213943))))

(assert (=> b!349228 (= res!193618 (contains!2314 lt!164155 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!349228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(declare-fun bm!26904 () Bool)

(assert (=> bm!26904 (= call!26909 (contains!2314 lt!164155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26905 () Bool)

(declare-fun call!26908 () ListLongMap!4473)

(declare-fun call!26911 () ListLongMap!4473)

(assert (=> bm!26905 (= call!26908 call!26911)))

(declare-fun b!349229 () Bool)

(assert (=> b!349229 (= e!213937 call!26912)))

(declare-fun b!349230 () Bool)

(declare-fun res!193617 () Bool)

(assert (=> b!349230 (=> (not res!193617) (not e!213938))))

(assert (=> b!349230 (= res!193617 e!213945)))

(declare-fun c!53193 () Bool)

(assert (=> b!349230 (= c!53193 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!349231 () Bool)

(assert (=> b!349231 (= e!213946 e!213941)))

(declare-fun c!53194 () Bool)

(assert (=> b!349231 (= c!53194 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!349232 () Bool)

(declare-fun Unit!10813 () Unit!10810)

(assert (=> b!349232 (= e!213949 Unit!10813)))

(declare-fun bm!26906 () Bool)

(assert (=> bm!26906 (= call!26906 (contains!2314 lt!164155 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!349233 () Bool)

(assert (=> b!349233 (= e!213948 e!213942)))

(declare-fun res!193619 () Bool)

(assert (=> b!349233 (= res!193619 call!26906)))

(assert (=> b!349233 (=> (not res!193619) (not e!213942))))

(declare-fun bm!26907 () Bool)

(declare-fun call!26907 () ListLongMap!4473)

(assert (=> bm!26907 (= call!26910 (+!732 (ite c!53196 call!26911 (ite c!53194 call!26908 call!26907)) (ite (or c!53196 c!53194) (tuple2!5547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!349234 () Bool)

(declare-fun get!4765 (ValueCell!3453 V!11101) V!11101)

(declare-fun dynLambda!626 (Int (_ BitVec 64)) V!11101)

(assert (=> b!349234 (= e!213943 (= (apply!288 lt!164155 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000)) (get!4765 (select (arr!8877 _values!1525) #b00000000000000000000000000000000) (dynLambda!626 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!349234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9229 _values!1525)))))

(assert (=> b!349234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9228 _keys!1895)))))

(declare-fun b!349235 () Bool)

(declare-fun lt!164157 () Unit!10810)

(assert (=> b!349235 (= e!213949 lt!164157)))

(declare-fun lt!164152 () ListLongMap!4473)

(declare-fun getCurrentListMapNoExtraKeys!607 (array!18741 array!18743 (_ BitVec 32) (_ BitVec 32) V!11101 V!11101 (_ BitVec 32) Int) ListLongMap!4473)

(assert (=> b!349235 (= lt!164152 (getCurrentListMapNoExtraKeys!607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164148 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164148 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164150 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164150 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164147 () Unit!10810)

(declare-fun addStillContains!264 (ListLongMap!4473 (_ BitVec 64) V!11101 (_ BitVec 64)) Unit!10810)

(assert (=> b!349235 (= lt!164147 (addStillContains!264 lt!164152 lt!164148 zeroValue!1467 lt!164150))))

(assert (=> b!349235 (contains!2314 (+!732 lt!164152 (tuple2!5547 lt!164148 zeroValue!1467)) lt!164150)))

(declare-fun lt!164142 () Unit!10810)

(assert (=> b!349235 (= lt!164142 lt!164147)))

(declare-fun lt!164145 () ListLongMap!4473)

(assert (=> b!349235 (= lt!164145 (getCurrentListMapNoExtraKeys!607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164154 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164154 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164143 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164143 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164146 () Unit!10810)

(declare-fun addApplyDifferent!264 (ListLongMap!4473 (_ BitVec 64) V!11101 (_ BitVec 64)) Unit!10810)

(assert (=> b!349235 (= lt!164146 (addApplyDifferent!264 lt!164145 lt!164154 minValue!1467 lt!164143))))

(assert (=> b!349235 (= (apply!288 (+!732 lt!164145 (tuple2!5547 lt!164154 minValue!1467)) lt!164143) (apply!288 lt!164145 lt!164143))))

(declare-fun lt!164140 () Unit!10810)

(assert (=> b!349235 (= lt!164140 lt!164146)))

(declare-fun lt!164153 () ListLongMap!4473)

(assert (=> b!349235 (= lt!164153 (getCurrentListMapNoExtraKeys!607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164156 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164156 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164158 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164158 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164141 () Unit!10810)

(assert (=> b!349235 (= lt!164141 (addApplyDifferent!264 lt!164153 lt!164156 zeroValue!1467 lt!164158))))

(assert (=> b!349235 (= (apply!288 (+!732 lt!164153 (tuple2!5547 lt!164156 zeroValue!1467)) lt!164158) (apply!288 lt!164153 lt!164158))))

(declare-fun lt!164160 () Unit!10810)

(assert (=> b!349235 (= lt!164160 lt!164141)))

(declare-fun lt!164144 () ListLongMap!4473)

(assert (=> b!349235 (= lt!164144 (getCurrentListMapNoExtraKeys!607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164149 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164149 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164139 () (_ BitVec 64))

(assert (=> b!349235 (= lt!164139 (select (arr!8876 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!349235 (= lt!164157 (addApplyDifferent!264 lt!164144 lt!164149 minValue!1467 lt!164139))))

(assert (=> b!349235 (= (apply!288 (+!732 lt!164144 (tuple2!5547 lt!164149 minValue!1467)) lt!164139) (apply!288 lt!164144 lt!164139))))

(declare-fun b!349236 () Bool)

(assert (=> b!349236 (= e!213941 call!26912)))

(declare-fun bm!26908 () Bool)

(assert (=> bm!26908 (= call!26907 call!26908)))

(declare-fun bm!26909 () Bool)

(assert (=> bm!26909 (= call!26911 (getCurrentListMapNoExtraKeys!607 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!349237 () Bool)

(assert (=> b!349237 (= e!213937 call!26907)))

(assert (= (and d!71223 c!53196) b!349225))

(assert (= (and d!71223 (not c!53196)) b!349231))

(assert (= (and b!349231 c!53194) b!349236))

(assert (= (and b!349231 (not c!53194)) b!349218))

(assert (= (and b!349218 c!53198) b!349229))

(assert (= (and b!349218 (not c!53198)) b!349237))

(assert (= (or b!349229 b!349237) bm!26908))

(assert (= (or b!349236 bm!26908) bm!26905))

(assert (= (or b!349236 b!349229) bm!26903))

(assert (= (or b!349225 bm!26905) bm!26909))

(assert (= (or b!349225 bm!26903) bm!26907))

(assert (= (and d!71223 res!193614) b!349221))

(assert (= (and d!71223 c!53195) b!349235))

(assert (= (and d!71223 (not c!53195)) b!349232))

(assert (= (and d!71223 res!193620) b!349220))

(assert (= (and b!349220 res!193615) b!349224))

(assert (= (and b!349220 (not res!193613)) b!349228))

(assert (= (and b!349228 res!193618) b!349234))

(assert (= (and b!349220 res!193612) b!349230))

(assert (= (and b!349230 c!53193) b!349223))

(assert (= (and b!349230 (not c!53193)) b!349217))

(assert (= (and b!349223 res!193616) b!349227))

(assert (= (or b!349223 b!349217) bm!26904))

(assert (= (and b!349230 res!193617) b!349222))

(assert (= (and b!349222 c!53197) b!349233))

(assert (= (and b!349222 (not c!53197)) b!349226))

(assert (= (and b!349233 res!193619) b!349219))

(assert (= (or b!349233 b!349226) bm!26906))

(declare-fun b_lambda!8521 () Bool)

(assert (=> (not b_lambda!8521) (not b!349234)))

(declare-fun t!10330 () Bool)

(declare-fun tb!3099 () Bool)

(assert (=> (and start!34886 (= defaultEntry!1528 defaultEntry!1528) t!10330) tb!3099))

(declare-fun result!5611 () Bool)

(assert (=> tb!3099 (= result!5611 tp_is_empty!7593)))

(assert (=> b!349234 t!10330))

(declare-fun b_and!14887 () Bool)

(assert (= b_and!14883 (and (=> t!10330 result!5611) b_and!14887)))

(declare-fun m!349745 () Bool)

(assert (=> bm!26909 m!349745))

(declare-fun m!349747 () Bool)

(assert (=> bm!26907 m!349747))

(declare-fun m!349749 () Bool)

(assert (=> b!349234 m!349749))

(assert (=> b!349234 m!349749))

(declare-fun m!349751 () Bool)

(assert (=> b!349234 m!349751))

(declare-fun m!349753 () Bool)

(assert (=> b!349234 m!349753))

(assert (=> b!349234 m!349751))

(assert (=> b!349234 m!349715))

(declare-fun m!349755 () Bool)

(assert (=> b!349234 m!349755))

(assert (=> b!349234 m!349715))

(assert (=> b!349224 m!349715))

(assert (=> b!349224 m!349715))

(assert (=> b!349224 m!349717))

(assert (=> d!71223 m!349675))

(declare-fun m!349757 () Bool)

(assert (=> b!349227 m!349757))

(declare-fun m!349759 () Bool)

(assert (=> bm!26906 m!349759))

(assert (=> b!349228 m!349715))

(assert (=> b!349228 m!349715))

(declare-fun m!349761 () Bool)

(assert (=> b!349228 m!349761))

(declare-fun m!349763 () Bool)

(assert (=> b!349219 m!349763))

(assert (=> b!349221 m!349715))

(assert (=> b!349221 m!349715))

(assert (=> b!349221 m!349717))

(declare-fun m!349765 () Bool)

(assert (=> b!349235 m!349765))

(declare-fun m!349767 () Bool)

(assert (=> b!349235 m!349767))

(declare-fun m!349769 () Bool)

(assert (=> b!349235 m!349769))

(declare-fun m!349771 () Bool)

(assert (=> b!349235 m!349771))

(declare-fun m!349773 () Bool)

(assert (=> b!349235 m!349773))

(declare-fun m!349775 () Bool)

(assert (=> b!349235 m!349775))

(declare-fun m!349777 () Bool)

(assert (=> b!349235 m!349777))

(assert (=> b!349235 m!349745))

(declare-fun m!349779 () Bool)

(assert (=> b!349235 m!349779))

(assert (=> b!349235 m!349771))

(assert (=> b!349235 m!349779))

(declare-fun m!349781 () Bool)

(assert (=> b!349235 m!349781))

(assert (=> b!349235 m!349715))

(assert (=> b!349235 m!349767))

(declare-fun m!349783 () Bool)

(assert (=> b!349235 m!349783))

(declare-fun m!349785 () Bool)

(assert (=> b!349235 m!349785))

(declare-fun m!349787 () Bool)

(assert (=> b!349235 m!349787))

(declare-fun m!349789 () Bool)

(assert (=> b!349235 m!349789))

(declare-fun m!349791 () Bool)

(assert (=> b!349235 m!349791))

(assert (=> b!349235 m!349777))

(declare-fun m!349793 () Bool)

(assert (=> b!349235 m!349793))

(declare-fun m!349795 () Bool)

(assert (=> b!349225 m!349795))

(declare-fun m!349797 () Bool)

(assert (=> bm!26904 m!349797))

(assert (=> b!349080 d!71223))

(declare-fun d!71225 () Bool)

(assert (=> d!71225 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34886 d!71225))

(declare-fun d!71227 () Bool)

(assert (=> d!71227 (= (array_inv!6548 _values!1525) (bvsge (size!9229 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34886 d!71227))

(declare-fun d!71229 () Bool)

(assert (=> d!71229 (= (array_inv!6549 _keys!1895) (bvsge (size!9228 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34886 d!71229))

(declare-fun d!71231 () Bool)

(assert (=> d!71231 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!349086 d!71231))

(declare-fun b!349252 () Bool)

(declare-fun e!213957 () SeekEntryResult!3418)

(declare-fun e!213956 () SeekEntryResult!3418)

(assert (=> b!349252 (= e!213957 e!213956)))

(declare-fun lt!164169 () (_ BitVec 64))

(declare-fun lt!164168 () SeekEntryResult!3418)

(assert (=> b!349252 (= lt!164169 (select (arr!8876 _keys!1895) (index!15853 lt!164168)))))

(declare-fun c!53206 () Bool)

(assert (=> b!349252 (= c!53206 (= lt!164169 k0!1348))))

(declare-fun b!349253 () Bool)

(declare-fun e!213958 () SeekEntryResult!3418)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18741 (_ BitVec 32)) SeekEntryResult!3418)

(assert (=> b!349253 (= e!213958 (seekKeyOrZeroReturnVacant!0 (x!34775 lt!164168) (index!15853 lt!164168) (index!15853 lt!164168) k0!1348 _keys!1895 mask!2385))))

(declare-fun d!71233 () Bool)

(declare-fun lt!164167 () SeekEntryResult!3418)

(assert (=> d!71233 (and (or ((_ is Undefined!3418) lt!164167) (not ((_ is Found!3418) lt!164167)) (and (bvsge (index!15852 lt!164167) #b00000000000000000000000000000000) (bvslt (index!15852 lt!164167) (size!9228 _keys!1895)))) (or ((_ is Undefined!3418) lt!164167) ((_ is Found!3418) lt!164167) (not ((_ is MissingZero!3418) lt!164167)) (and (bvsge (index!15851 lt!164167) #b00000000000000000000000000000000) (bvslt (index!15851 lt!164167) (size!9228 _keys!1895)))) (or ((_ is Undefined!3418) lt!164167) ((_ is Found!3418) lt!164167) ((_ is MissingZero!3418) lt!164167) (not ((_ is MissingVacant!3418) lt!164167)) (and (bvsge (index!15854 lt!164167) #b00000000000000000000000000000000) (bvslt (index!15854 lt!164167) (size!9228 _keys!1895)))) (or ((_ is Undefined!3418) lt!164167) (ite ((_ is Found!3418) lt!164167) (= (select (arr!8876 _keys!1895) (index!15852 lt!164167)) k0!1348) (ite ((_ is MissingZero!3418) lt!164167) (= (select (arr!8876 _keys!1895) (index!15851 lt!164167)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3418) lt!164167) (= (select (arr!8876 _keys!1895) (index!15854 lt!164167)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71233 (= lt!164167 e!213957)))

(declare-fun c!53205 () Bool)

(assert (=> d!71233 (= c!53205 (and ((_ is Intermediate!3418) lt!164168) (undefined!4230 lt!164168)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18741 (_ BitVec 32)) SeekEntryResult!3418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71233 (= lt!164168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71233 (validMask!0 mask!2385)))

(assert (=> d!71233 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164167)))

(declare-fun b!349254 () Bool)

(assert (=> b!349254 (= e!213956 (Found!3418 (index!15853 lt!164168)))))

(declare-fun b!349255 () Bool)

(assert (=> b!349255 (= e!213958 (MissingZero!3418 (index!15853 lt!164168)))))

(declare-fun b!349256 () Bool)

(assert (=> b!349256 (= e!213957 Undefined!3418)))

(declare-fun b!349257 () Bool)

(declare-fun c!53207 () Bool)

(assert (=> b!349257 (= c!53207 (= lt!164169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!349257 (= e!213956 e!213958)))

(assert (= (and d!71233 c!53205) b!349256))

(assert (= (and d!71233 (not c!53205)) b!349252))

(assert (= (and b!349252 c!53206) b!349254))

(assert (= (and b!349252 (not c!53206)) b!349257))

(assert (= (and b!349257 c!53207) b!349255))

(assert (= (and b!349257 (not c!53207)) b!349253))

(declare-fun m!349799 () Bool)

(assert (=> b!349252 m!349799))

(declare-fun m!349801 () Bool)

(assert (=> b!349253 m!349801))

(declare-fun m!349803 () Bool)

(assert (=> d!71233 m!349803))

(declare-fun m!349805 () Bool)

(assert (=> d!71233 m!349805))

(assert (=> d!71233 m!349675))

(declare-fun m!349807 () Bool)

(assert (=> d!71233 m!349807))

(assert (=> d!71233 m!349803))

(declare-fun m!349809 () Bool)

(assert (=> d!71233 m!349809))

(declare-fun m!349811 () Bool)

(assert (=> d!71233 m!349811))

(assert (=> b!349081 d!71233))

(declare-fun condMapEmpty!12858 () Bool)

(declare-fun mapDefault!12858 () ValueCell!3453)

(assert (=> mapNonEmpty!12852 (= condMapEmpty!12858 (= mapRest!12852 ((as const (Array (_ BitVec 32) ValueCell!3453)) mapDefault!12858)))))

(declare-fun e!213963 () Bool)

(declare-fun mapRes!12858 () Bool)

(assert (=> mapNonEmpty!12852 (= tp!26493 (and e!213963 mapRes!12858))))

(declare-fun b!349264 () Bool)

(declare-fun e!213964 () Bool)

(assert (=> b!349264 (= e!213964 tp_is_empty!7593)))

(declare-fun b!349265 () Bool)

(assert (=> b!349265 (= e!213963 tp_is_empty!7593)))

(declare-fun mapNonEmpty!12858 () Bool)

(declare-fun tp!26502 () Bool)

(assert (=> mapNonEmpty!12858 (= mapRes!12858 (and tp!26502 e!213964))))

(declare-fun mapKey!12858 () (_ BitVec 32))

(declare-fun mapValue!12858 () ValueCell!3453)

(declare-fun mapRest!12858 () (Array (_ BitVec 32) ValueCell!3453))

(assert (=> mapNonEmpty!12858 (= mapRest!12852 (store mapRest!12858 mapKey!12858 mapValue!12858))))

(declare-fun mapIsEmpty!12858 () Bool)

(assert (=> mapIsEmpty!12858 mapRes!12858))

(assert (= (and mapNonEmpty!12852 condMapEmpty!12858) mapIsEmpty!12858))

(assert (= (and mapNonEmpty!12852 (not condMapEmpty!12858)) mapNonEmpty!12858))

(assert (= (and mapNonEmpty!12858 ((_ is ValueCellFull!3453) mapValue!12858)) b!349264))

(assert (= (and mapNonEmpty!12852 ((_ is ValueCellFull!3453) mapDefault!12858)) b!349265))

(declare-fun m!349813 () Bool)

(assert (=> mapNonEmpty!12858 m!349813))

(declare-fun b_lambda!8523 () Bool)

(assert (= b_lambda!8521 (or (and start!34886 b_free!7641) b_lambda!8523)))

(check-sat (not b!349174) (not b!349235) (not bm!26907) (not bm!26888) (not mapNonEmpty!12858) (not b!349224) (not bm!26885) (not b!349164) tp_is_empty!7593 (not bm!26909) (not b!349141) (not b!349234) (not b!349225) (not b_lambda!8523) (not b!349153) (not bm!26906) (not b!349227) (not b!349221) (not b!349142) (not d!71233) (not d!71223) (not bm!26904) (not b!349253) (not b!349219) (not b_next!7641) (not b!349130) (not d!71221) b_and!14887 (not b!349228) (not b!349162) (not b!349172) (not b!349147) (not b!349143))
(check-sat b_and!14887 (not b_next!7641))
