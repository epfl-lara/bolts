; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33790 () Bool)

(assert start!33790)

(declare-fun b_free!6999 () Bool)

(declare-fun b_next!6999 () Bool)

(assert (=> start!33790 (= b_free!6999 (not b_next!6999))))

(declare-fun tp!24504 () Bool)

(declare-fun b_and!14199 () Bool)

(assert (=> start!33790 (= tp!24504 b_and!14199)))

(declare-fun b!335866 () Bool)

(declare-fun res!185456 () Bool)

(declare-fun e!206179 () Bool)

(assert (=> b!335866 (=> (not res!185456) (not e!206179))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10245 0))(
  ( (V!10246 (val!3520 Int)) )
))
(declare-datatypes ((ValueCell!3132 0))(
  ( (ValueCellFull!3132 (v!5679 V!10245)) (EmptyCell!3132) )
))
(declare-datatypes ((array!17481 0))(
  ( (array!17482 (arr!8267 (Array (_ BitVec 32) ValueCell!3132)) (size!8619 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17481)

(declare-datatypes ((array!17483 0))(
  ( (array!17484 (arr!8268 (Array (_ BitVec 32) (_ BitVec 64))) (size!8620 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17483)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335866 (= res!185456 (and (= (size!8619 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8620 _keys!1895) (size!8619 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335867 () Bool)

(declare-fun res!185454 () Bool)

(assert (=> b!335867 (=> (not res!185454) (not e!206179))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10245)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10245)

(declare-datatypes ((tuple2!5114 0))(
  ( (tuple2!5115 (_1!2567 (_ BitVec 64)) (_2!2567 V!10245)) )
))
(declare-datatypes ((List!4754 0))(
  ( (Nil!4751) (Cons!4750 (h!5606 tuple2!5114) (t!9852 List!4754)) )
))
(declare-datatypes ((ListLongMap!4041 0))(
  ( (ListLongMap!4042 (toList!2036 List!4754)) )
))
(declare-fun contains!2077 (ListLongMap!4041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1556 (array!17483 array!17481 (_ BitVec 32) (_ BitVec 32) V!10245 V!10245 (_ BitVec 32) Int) ListLongMap!4041)

(assert (=> b!335867 (= res!185454 (not (contains!2077 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!11826 () Bool)

(declare-fun mapRes!11826 () Bool)

(declare-fun tp!24503 () Bool)

(declare-fun e!206178 () Bool)

(assert (=> mapNonEmpty!11826 (= mapRes!11826 (and tp!24503 e!206178))))

(declare-fun mapRest!11826 () (Array (_ BitVec 32) ValueCell!3132))

(declare-fun mapValue!11826 () ValueCell!3132)

(declare-fun mapKey!11826 () (_ BitVec 32))

(assert (=> mapNonEmpty!11826 (= (arr!8267 _values!1525) (store mapRest!11826 mapKey!11826 mapValue!11826))))

(declare-fun b!335868 () Bool)

(declare-fun tp_is_empty!6951 () Bool)

(assert (=> b!335868 (= e!206178 tp_is_empty!6951)))

(declare-fun b!335869 () Bool)

(declare-fun e!206180 () Bool)

(assert (=> b!335869 (= e!206180 tp_is_empty!6951)))

(declare-fun b!335870 () Bool)

(declare-fun res!185455 () Bool)

(assert (=> b!335870 (=> (not res!185455) (not e!206179))))

(declare-datatypes ((List!4755 0))(
  ( (Nil!4752) (Cons!4751 (h!5607 (_ BitVec 64)) (t!9853 List!4755)) )
))
(declare-fun arrayNoDuplicates!0 (array!17483 (_ BitVec 32) List!4755) Bool)

(assert (=> b!335870 (= res!185455 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4752))))

(declare-fun b!335871 () Bool)

(declare-fun res!185459 () Bool)

(assert (=> b!335871 (=> (not res!185459) (not e!206179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335871 (= res!185459 (validKeyInArray!0 k0!1348))))

(declare-fun b!335872 () Bool)

(declare-datatypes ((SeekEntryResult!3206 0))(
  ( (MissingZero!3206 (index!15003 (_ BitVec 32))) (Found!3206 (index!15004 (_ BitVec 32))) (Intermediate!3206 (undefined!4018 Bool) (index!15005 (_ BitVec 32)) (x!33497 (_ BitVec 32))) (Undefined!3206) (MissingVacant!3206 (index!15006 (_ BitVec 32))) )
))
(declare-fun lt!160017 () SeekEntryResult!3206)

(get-info :version)

(assert (=> b!335872 (= e!206179 (and (not ((_ is Found!3206) lt!160017)) ((_ is MissingZero!3206) lt!160017) (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)) (bvsge (size!8620 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17483 (_ BitVec 32)) SeekEntryResult!3206)

(assert (=> b!335872 (= lt!160017 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335873 () Bool)

(declare-fun res!185457 () Bool)

(assert (=> b!335873 (=> (not res!185457) (not e!206179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17483 (_ BitVec 32)) Bool)

(assert (=> b!335873 (= res!185457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335874 () Bool)

(declare-fun e!206177 () Bool)

(assert (=> b!335874 (= e!206177 (and e!206180 mapRes!11826))))

(declare-fun condMapEmpty!11826 () Bool)

(declare-fun mapDefault!11826 () ValueCell!3132)

(assert (=> b!335874 (= condMapEmpty!11826 (= (arr!8267 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3132)) mapDefault!11826)))))

(declare-fun mapIsEmpty!11826 () Bool)

(assert (=> mapIsEmpty!11826 mapRes!11826))

(declare-fun res!185458 () Bool)

(assert (=> start!33790 (=> (not res!185458) (not e!206179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33790 (= res!185458 (validMask!0 mask!2385))))

(assert (=> start!33790 e!206179))

(assert (=> start!33790 true))

(assert (=> start!33790 tp_is_empty!6951))

(assert (=> start!33790 tp!24504))

(declare-fun array_inv!6128 (array!17481) Bool)

(assert (=> start!33790 (and (array_inv!6128 _values!1525) e!206177)))

(declare-fun array_inv!6129 (array!17483) Bool)

(assert (=> start!33790 (array_inv!6129 _keys!1895)))

(assert (= (and start!33790 res!185458) b!335866))

(assert (= (and b!335866 res!185456) b!335873))

(assert (= (and b!335873 res!185457) b!335870))

(assert (= (and b!335870 res!185455) b!335871))

(assert (= (and b!335871 res!185459) b!335867))

(assert (= (and b!335867 res!185454) b!335872))

(assert (= (and b!335874 condMapEmpty!11826) mapIsEmpty!11826))

(assert (= (and b!335874 (not condMapEmpty!11826)) mapNonEmpty!11826))

(assert (= (and mapNonEmpty!11826 ((_ is ValueCellFull!3132) mapValue!11826)) b!335868))

(assert (= (and b!335874 ((_ is ValueCellFull!3132) mapDefault!11826)) b!335869))

(assert (= start!33790 b!335874))

(declare-fun m!339815 () Bool)

(assert (=> b!335871 m!339815))

(declare-fun m!339817 () Bool)

(assert (=> b!335872 m!339817))

(declare-fun m!339819 () Bool)

(assert (=> b!335870 m!339819))

(declare-fun m!339821 () Bool)

(assert (=> start!33790 m!339821))

(declare-fun m!339823 () Bool)

(assert (=> start!33790 m!339823))

(declare-fun m!339825 () Bool)

(assert (=> start!33790 m!339825))

(declare-fun m!339827 () Bool)

(assert (=> mapNonEmpty!11826 m!339827))

(declare-fun m!339829 () Bool)

(assert (=> b!335867 m!339829))

(assert (=> b!335867 m!339829))

(declare-fun m!339831 () Bool)

(assert (=> b!335867 m!339831))

(declare-fun m!339833 () Bool)

(assert (=> b!335873 m!339833))

(check-sat (not start!33790) tp_is_empty!6951 (not mapNonEmpty!11826) (not b_next!6999) (not b!335873) (not b!335872) (not b!335870) b_and!14199 (not b!335867) (not b!335871))
(check-sat b_and!14199 (not b_next!6999))
(get-model)

(declare-fun b!335910 () Bool)

(declare-fun e!206203 () Bool)

(declare-fun e!206204 () Bool)

(assert (=> b!335910 (= e!206203 e!206204)))

(declare-fun lt!160029 () (_ BitVec 64))

(assert (=> b!335910 (= lt!160029 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10446 0))(
  ( (Unit!10447) )
))
(declare-fun lt!160027 () Unit!10446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17483 (_ BitVec 64) (_ BitVec 32)) Unit!10446)

(assert (=> b!335910 (= lt!160027 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!160029 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335910 (arrayContainsKey!0 _keys!1895 lt!160029 #b00000000000000000000000000000000)))

(declare-fun lt!160028 () Unit!10446)

(assert (=> b!335910 (= lt!160028 lt!160027)))

(declare-fun res!185483 () Bool)

(assert (=> b!335910 (= res!185483 (= (seekEntryOrOpen!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3206 #b00000000000000000000000000000000)))))

(assert (=> b!335910 (=> (not res!185483) (not e!206204))))

(declare-fun d!70541 () Bool)

(declare-fun res!185482 () Bool)

(declare-fun e!206205 () Bool)

(assert (=> d!70541 (=> res!185482 e!206205)))

(assert (=> d!70541 (= res!185482 (bvsge #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(assert (=> d!70541 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!206205)))

(declare-fun b!335911 () Bool)

(assert (=> b!335911 (= e!206205 e!206203)))

(declare-fun c!52154 () Bool)

(assert (=> b!335911 (= c!52154 (validKeyInArray!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335912 () Bool)

(declare-fun call!26321 () Bool)

(assert (=> b!335912 (= e!206204 call!26321)))

(declare-fun bm!26318 () Bool)

(assert (=> bm!26318 (= call!26321 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!335913 () Bool)

(assert (=> b!335913 (= e!206203 call!26321)))

(assert (= (and d!70541 (not res!185482)) b!335911))

(assert (= (and b!335911 c!52154) b!335910))

(assert (= (and b!335911 (not c!52154)) b!335913))

(assert (= (and b!335910 res!185483) b!335912))

(assert (= (or b!335912 b!335913) bm!26318))

(declare-fun m!339855 () Bool)

(assert (=> b!335910 m!339855))

(declare-fun m!339857 () Bool)

(assert (=> b!335910 m!339857))

(declare-fun m!339859 () Bool)

(assert (=> b!335910 m!339859))

(assert (=> b!335910 m!339855))

(declare-fun m!339861 () Bool)

(assert (=> b!335910 m!339861))

(assert (=> b!335911 m!339855))

(assert (=> b!335911 m!339855))

(declare-fun m!339863 () Bool)

(assert (=> b!335911 m!339863))

(declare-fun m!339865 () Bool)

(assert (=> bm!26318 m!339865))

(assert (=> b!335873 d!70541))

(declare-fun b!335926 () Bool)

(declare-fun e!206213 () SeekEntryResult!3206)

(declare-fun lt!160036 () SeekEntryResult!3206)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17483 (_ BitVec 32)) SeekEntryResult!3206)

(assert (=> b!335926 (= e!206213 (seekKeyOrZeroReturnVacant!0 (x!33497 lt!160036) (index!15005 lt!160036) (index!15005 lt!160036) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335927 () Bool)

(declare-fun e!206214 () SeekEntryResult!3206)

(assert (=> b!335927 (= e!206214 Undefined!3206)))

(declare-fun b!335928 () Bool)

(declare-fun e!206212 () SeekEntryResult!3206)

(assert (=> b!335928 (= e!206212 (Found!3206 (index!15005 lt!160036)))))

(declare-fun d!70543 () Bool)

(declare-fun lt!160038 () SeekEntryResult!3206)

(assert (=> d!70543 (and (or ((_ is Undefined!3206) lt!160038) (not ((_ is Found!3206) lt!160038)) (and (bvsge (index!15004 lt!160038) #b00000000000000000000000000000000) (bvslt (index!15004 lt!160038) (size!8620 _keys!1895)))) (or ((_ is Undefined!3206) lt!160038) ((_ is Found!3206) lt!160038) (not ((_ is MissingZero!3206) lt!160038)) (and (bvsge (index!15003 lt!160038) #b00000000000000000000000000000000) (bvslt (index!15003 lt!160038) (size!8620 _keys!1895)))) (or ((_ is Undefined!3206) lt!160038) ((_ is Found!3206) lt!160038) ((_ is MissingZero!3206) lt!160038) (not ((_ is MissingVacant!3206) lt!160038)) (and (bvsge (index!15006 lt!160038) #b00000000000000000000000000000000) (bvslt (index!15006 lt!160038) (size!8620 _keys!1895)))) (or ((_ is Undefined!3206) lt!160038) (ite ((_ is Found!3206) lt!160038) (= (select (arr!8268 _keys!1895) (index!15004 lt!160038)) k0!1348) (ite ((_ is MissingZero!3206) lt!160038) (= (select (arr!8268 _keys!1895) (index!15003 lt!160038)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3206) lt!160038) (= (select (arr!8268 _keys!1895) (index!15006 lt!160038)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70543 (= lt!160038 e!206214)))

(declare-fun c!52162 () Bool)

(assert (=> d!70543 (= c!52162 (and ((_ is Intermediate!3206) lt!160036) (undefined!4018 lt!160036)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17483 (_ BitVec 32)) SeekEntryResult!3206)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70543 (= lt!160036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70543 (validMask!0 mask!2385)))

(assert (=> d!70543 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160038)))

(declare-fun b!335929 () Bool)

(assert (=> b!335929 (= e!206213 (MissingZero!3206 (index!15005 lt!160036)))))

(declare-fun b!335930 () Bool)

(declare-fun c!52163 () Bool)

(declare-fun lt!160037 () (_ BitVec 64))

(assert (=> b!335930 (= c!52163 (= lt!160037 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!335930 (= e!206212 e!206213)))

(declare-fun b!335931 () Bool)

(assert (=> b!335931 (= e!206214 e!206212)))

(assert (=> b!335931 (= lt!160037 (select (arr!8268 _keys!1895) (index!15005 lt!160036)))))

(declare-fun c!52161 () Bool)

(assert (=> b!335931 (= c!52161 (= lt!160037 k0!1348))))

(assert (= (and d!70543 c!52162) b!335927))

(assert (= (and d!70543 (not c!52162)) b!335931))

(assert (= (and b!335931 c!52161) b!335928))

(assert (= (and b!335931 (not c!52161)) b!335930))

(assert (= (and b!335930 c!52163) b!335929))

(assert (= (and b!335930 (not c!52163)) b!335926))

(declare-fun m!339867 () Bool)

(assert (=> b!335926 m!339867))

(declare-fun m!339869 () Bool)

(assert (=> d!70543 m!339869))

(declare-fun m!339871 () Bool)

(assert (=> d!70543 m!339871))

(declare-fun m!339873 () Bool)

(assert (=> d!70543 m!339873))

(declare-fun m!339875 () Bool)

(assert (=> d!70543 m!339875))

(assert (=> d!70543 m!339821))

(declare-fun m!339877 () Bool)

(assert (=> d!70543 m!339877))

(assert (=> d!70543 m!339873))

(declare-fun m!339879 () Bool)

(assert (=> b!335931 m!339879))

(assert (=> b!335872 d!70543))

(declare-fun d!70545 () Bool)

(assert (=> d!70545 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!335871 d!70545))

(declare-fun d!70547 () Bool)

(declare-fun e!206219 () Bool)

(assert (=> d!70547 e!206219))

(declare-fun res!185486 () Bool)

(assert (=> d!70547 (=> res!185486 e!206219)))

(declare-fun lt!160048 () Bool)

(assert (=> d!70547 (= res!185486 (not lt!160048))))

(declare-fun lt!160049 () Bool)

(assert (=> d!70547 (= lt!160048 lt!160049)))

(declare-fun lt!160047 () Unit!10446)

(declare-fun e!206220 () Unit!10446)

(assert (=> d!70547 (= lt!160047 e!206220)))

(declare-fun c!52166 () Bool)

(assert (=> d!70547 (= c!52166 lt!160049)))

(declare-fun containsKey!316 (List!4754 (_ BitVec 64)) Bool)

(assert (=> d!70547 (= lt!160049 (containsKey!316 (toList!2036 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70547 (= (contains!2077 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!160048)))

(declare-fun b!335938 () Bool)

(declare-fun lt!160050 () Unit!10446)

(assert (=> b!335938 (= e!206220 lt!160050)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!265 (List!4754 (_ BitVec 64)) Unit!10446)

(assert (=> b!335938 (= lt!160050 (lemmaContainsKeyImpliesGetValueByKeyDefined!265 (toList!2036 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!330 0))(
  ( (Some!329 (v!5681 V!10245)) (None!328) )
))
(declare-fun isDefined!266 (Option!330) Bool)

(declare-fun getValueByKey!324 (List!4754 (_ BitVec 64)) Option!330)

(assert (=> b!335938 (isDefined!266 (getValueByKey!324 (toList!2036 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!335939 () Bool)

(declare-fun Unit!10448 () Unit!10446)

(assert (=> b!335939 (= e!206220 Unit!10448)))

(declare-fun b!335940 () Bool)

(assert (=> b!335940 (= e!206219 (isDefined!266 (getValueByKey!324 (toList!2036 (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70547 c!52166) b!335938))

(assert (= (and d!70547 (not c!52166)) b!335939))

(assert (= (and d!70547 (not res!185486)) b!335940))

(declare-fun m!339881 () Bool)

(assert (=> d!70547 m!339881))

(declare-fun m!339883 () Bool)

(assert (=> b!335938 m!339883))

(declare-fun m!339885 () Bool)

(assert (=> b!335938 m!339885))

(assert (=> b!335938 m!339885))

(declare-fun m!339887 () Bool)

(assert (=> b!335938 m!339887))

(assert (=> b!335940 m!339885))

(assert (=> b!335940 m!339885))

(assert (=> b!335940 m!339887))

(assert (=> b!335867 d!70547))

(declare-fun b!335983 () Bool)

(declare-fun res!185513 () Bool)

(declare-fun e!206253 () Bool)

(assert (=> b!335983 (=> (not res!185513) (not e!206253))))

(declare-fun e!206258 () Bool)

(assert (=> b!335983 (= res!185513 e!206258)))

(declare-fun res!185508 () Bool)

(assert (=> b!335983 (=> res!185508 e!206258)))

(declare-fun e!206248 () Bool)

(assert (=> b!335983 (= res!185508 (not e!206248))))

(declare-fun res!185507 () Bool)

(assert (=> b!335983 (=> (not res!185507) (not e!206248))))

(assert (=> b!335983 (= res!185507 (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(declare-fun b!335984 () Bool)

(assert (=> b!335984 (= e!206248 (validKeyInArray!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335985 () Bool)

(declare-fun e!206250 () Bool)

(declare-fun e!206259 () Bool)

(assert (=> b!335985 (= e!206250 e!206259)))

(declare-fun res!185506 () Bool)

(declare-fun call!26339 () Bool)

(assert (=> b!335985 (= res!185506 call!26339)))

(assert (=> b!335985 (=> (not res!185506) (not e!206259))))

(declare-fun b!335986 () Bool)

(declare-fun e!206255 () Bool)

(assert (=> b!335986 (= e!206258 e!206255)))

(declare-fun res!185512 () Bool)

(assert (=> b!335986 (=> (not res!185512) (not e!206255))))

(declare-fun lt!160106 () ListLongMap!4041)

(assert (=> b!335986 (= res!185512 (contains!2077 lt!160106 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!335986 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(declare-fun b!335987 () Bool)

(declare-fun res!185505 () Bool)

(assert (=> b!335987 (=> (not res!185505) (not e!206253))))

(assert (=> b!335987 (= res!185505 e!206250)))

(declare-fun c!52180 () Bool)

(assert (=> b!335987 (= c!52180 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!26333 () Bool)

(declare-fun call!26340 () ListLongMap!4041)

(declare-fun call!26336 () ListLongMap!4041)

(assert (=> bm!26333 (= call!26340 call!26336)))

(declare-fun bm!26334 () Bool)

(declare-fun call!26341 () ListLongMap!4041)

(declare-fun call!26342 () ListLongMap!4041)

(assert (=> bm!26334 (= call!26341 call!26342)))

(declare-fun bm!26335 () Bool)

(assert (=> bm!26335 (= call!26339 (contains!2077 lt!160106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!335988 () Bool)

(declare-fun e!206247 () Bool)

(declare-fun apply!267 (ListLongMap!4041 (_ BitVec 64)) V!10245)

(assert (=> b!335988 (= e!206247 (= (apply!267 lt!160106 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!335989 () Bool)

(assert (=> b!335989 (= e!206259 (= (apply!267 lt!160106 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!335990 () Bool)

(declare-fun e!206256 () ListLongMap!4041)

(assert (=> b!335990 (= e!206256 call!26340)))

(declare-fun call!26337 () ListLongMap!4041)

(declare-fun c!52181 () Bool)

(declare-fun bm!26336 () Bool)

(declare-fun c!52182 () Bool)

(declare-fun +!711 (ListLongMap!4041 tuple2!5114) ListLongMap!4041)

(assert (=> bm!26336 (= call!26342 (+!711 (ite c!52181 call!26337 (ite c!52182 call!26336 call!26340)) (ite (or c!52181 c!52182) (tuple2!5115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!335992 () Bool)

(declare-fun c!52184 () Bool)

(assert (=> b!335992 (= c!52184 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!206251 () ListLongMap!4041)

(assert (=> b!335992 (= e!206251 e!206256)))

(declare-fun b!335993 () Bool)

(declare-fun e!206254 () Unit!10446)

(declare-fun Unit!10449 () Unit!10446)

(assert (=> b!335993 (= e!206254 Unit!10449)))

(declare-fun b!335994 () Bool)

(declare-fun e!206252 () ListLongMap!4041)

(assert (=> b!335994 (= e!206252 e!206251)))

(assert (=> b!335994 (= c!52182 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26337 () Bool)

(declare-fun call!26338 () Bool)

(assert (=> bm!26337 (= call!26338 (contains!2077 lt!160106 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!335995 () Bool)

(declare-fun get!4530 (ValueCell!3132 V!10245) V!10245)

(declare-fun dynLambda!605 (Int (_ BitVec 64)) V!10245)

(assert (=> b!335995 (= e!206255 (= (apply!267 lt!160106 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)) (get!4530 (select (arr!8267 _values!1525) #b00000000000000000000000000000000) (dynLambda!605 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!335995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8619 _values!1525)))))

(assert (=> b!335995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(declare-fun b!335996 () Bool)

(assert (=> b!335996 (= e!206251 call!26341)))

(declare-fun b!335997 () Bool)

(assert (=> b!335997 (= e!206250 (not call!26339))))

(declare-fun b!335998 () Bool)

(declare-fun e!206257 () Bool)

(assert (=> b!335998 (= e!206257 (not call!26338))))

(declare-fun bm!26338 () Bool)

(assert (=> bm!26338 (= call!26336 call!26337)))

(declare-fun b!335999 () Bool)

(assert (=> b!335999 (= e!206252 (+!711 call!26342 (tuple2!5115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!336000 () Bool)

(assert (=> b!336000 (= e!206256 call!26341)))

(declare-fun b!336001 () Bool)

(declare-fun lt!160108 () Unit!10446)

(assert (=> b!336001 (= e!206254 lt!160108)))

(declare-fun lt!160115 () ListLongMap!4041)

(declare-fun getCurrentListMapNoExtraKeys!586 (array!17483 array!17481 (_ BitVec 32) (_ BitVec 32) V!10245 V!10245 (_ BitVec 32) Int) ListLongMap!4041)

(assert (=> b!336001 (= lt!160115 (getCurrentListMapNoExtraKeys!586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160105 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160105 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160110 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160110 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160098 () Unit!10446)

(declare-fun addStillContains!243 (ListLongMap!4041 (_ BitVec 64) V!10245 (_ BitVec 64)) Unit!10446)

(assert (=> b!336001 (= lt!160098 (addStillContains!243 lt!160115 lt!160105 zeroValue!1467 lt!160110))))

(assert (=> b!336001 (contains!2077 (+!711 lt!160115 (tuple2!5115 lt!160105 zeroValue!1467)) lt!160110)))

(declare-fun lt!160102 () Unit!10446)

(assert (=> b!336001 (= lt!160102 lt!160098)))

(declare-fun lt!160103 () ListLongMap!4041)

(assert (=> b!336001 (= lt!160103 (getCurrentListMapNoExtraKeys!586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160096 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160096 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160095 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160095 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160099 () Unit!10446)

(declare-fun addApplyDifferent!243 (ListLongMap!4041 (_ BitVec 64) V!10245 (_ BitVec 64)) Unit!10446)

(assert (=> b!336001 (= lt!160099 (addApplyDifferent!243 lt!160103 lt!160096 minValue!1467 lt!160095))))

(assert (=> b!336001 (= (apply!267 (+!711 lt!160103 (tuple2!5115 lt!160096 minValue!1467)) lt!160095) (apply!267 lt!160103 lt!160095))))

(declare-fun lt!160104 () Unit!10446)

(assert (=> b!336001 (= lt!160104 lt!160099)))

(declare-fun lt!160101 () ListLongMap!4041)

(assert (=> b!336001 (= lt!160101 (getCurrentListMapNoExtraKeys!586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160111 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160111 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160097 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160097 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160100 () Unit!10446)

(assert (=> b!336001 (= lt!160100 (addApplyDifferent!243 lt!160101 lt!160111 zeroValue!1467 lt!160097))))

(assert (=> b!336001 (= (apply!267 (+!711 lt!160101 (tuple2!5115 lt!160111 zeroValue!1467)) lt!160097) (apply!267 lt!160101 lt!160097))))

(declare-fun lt!160112 () Unit!10446)

(assert (=> b!336001 (= lt!160112 lt!160100)))

(declare-fun lt!160116 () ListLongMap!4041)

(assert (=> b!336001 (= lt!160116 (getCurrentListMapNoExtraKeys!586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160114 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160114 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160109 () (_ BitVec 64))

(assert (=> b!336001 (= lt!160109 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!336001 (= lt!160108 (addApplyDifferent!243 lt!160116 lt!160114 minValue!1467 lt!160109))))

(assert (=> b!336001 (= (apply!267 (+!711 lt!160116 (tuple2!5115 lt!160114 minValue!1467)) lt!160109) (apply!267 lt!160116 lt!160109))))

(declare-fun b!336002 () Bool)

(declare-fun e!206249 () Bool)

(assert (=> b!336002 (= e!206249 (validKeyInArray!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336003 () Bool)

(assert (=> b!336003 (= e!206257 e!206247)))

(declare-fun res!185511 () Bool)

(assert (=> b!336003 (= res!185511 call!26338)))

(assert (=> b!336003 (=> (not res!185511) (not e!206247))))

(declare-fun bm!26339 () Bool)

(assert (=> bm!26339 (= call!26337 (getCurrentListMapNoExtraKeys!586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun d!70549 () Bool)

(assert (=> d!70549 e!206253))

(declare-fun res!185510 () Bool)

(assert (=> d!70549 (=> (not res!185510) (not e!206253))))

(assert (=> d!70549 (= res!185510 (or (bvsge #b00000000000000000000000000000000 (size!8620 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)))))))

(declare-fun lt!160113 () ListLongMap!4041)

(assert (=> d!70549 (= lt!160106 lt!160113)))

(declare-fun lt!160107 () Unit!10446)

(assert (=> d!70549 (= lt!160107 e!206254)))

(declare-fun c!52183 () Bool)

(assert (=> d!70549 (= c!52183 e!206249)))

(declare-fun res!185509 () Bool)

(assert (=> d!70549 (=> (not res!185509) (not e!206249))))

(assert (=> d!70549 (= res!185509 (bvslt #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(assert (=> d!70549 (= lt!160113 e!206252)))

(assert (=> d!70549 (= c!52181 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70549 (validMask!0 mask!2385)))

(assert (=> d!70549 (= (getCurrentListMap!1556 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!160106)))

(declare-fun b!335991 () Bool)

(assert (=> b!335991 (= e!206253 e!206257)))

(declare-fun c!52179 () Bool)

(assert (=> b!335991 (= c!52179 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!70549 c!52181) b!335999))

(assert (= (and d!70549 (not c!52181)) b!335994))

(assert (= (and b!335994 c!52182) b!335996))

(assert (= (and b!335994 (not c!52182)) b!335992))

(assert (= (and b!335992 c!52184) b!336000))

(assert (= (and b!335992 (not c!52184)) b!335990))

(assert (= (or b!336000 b!335990) bm!26333))

(assert (= (or b!335996 bm!26333) bm!26338))

(assert (= (or b!335996 b!336000) bm!26334))

(assert (= (or b!335999 bm!26338) bm!26339))

(assert (= (or b!335999 bm!26334) bm!26336))

(assert (= (and d!70549 res!185509) b!336002))

(assert (= (and d!70549 c!52183) b!336001))

(assert (= (and d!70549 (not c!52183)) b!335993))

(assert (= (and d!70549 res!185510) b!335983))

(assert (= (and b!335983 res!185507) b!335984))

(assert (= (and b!335983 (not res!185508)) b!335986))

(assert (= (and b!335986 res!185512) b!335995))

(assert (= (and b!335983 res!185513) b!335987))

(assert (= (and b!335987 c!52180) b!335985))

(assert (= (and b!335987 (not c!52180)) b!335997))

(assert (= (and b!335985 res!185506) b!335989))

(assert (= (or b!335985 b!335997) bm!26335))

(assert (= (and b!335987 res!185505) b!335991))

(assert (= (and b!335991 c!52179) b!336003))

(assert (= (and b!335991 (not c!52179)) b!335998))

(assert (= (and b!336003 res!185511) b!335988))

(assert (= (or b!336003 b!335998) bm!26337))

(declare-fun b_lambda!8437 () Bool)

(assert (=> (not b_lambda!8437) (not b!335995)))

(declare-fun t!9856 () Bool)

(declare-fun tb!3057 () Bool)

(assert (=> (and start!33790 (= defaultEntry!1528 defaultEntry!1528) t!9856) tb!3057))

(declare-fun result!5485 () Bool)

(assert (=> tb!3057 (= result!5485 tp_is_empty!6951)))

(assert (=> b!335995 t!9856))

(declare-fun b_and!14203 () Bool)

(assert (= b_and!14199 (and (=> t!9856 result!5485) b_and!14203)))

(declare-fun m!339889 () Bool)

(assert (=> bm!26335 m!339889))

(declare-fun m!339891 () Bool)

(assert (=> b!335989 m!339891))

(declare-fun m!339893 () Bool)

(assert (=> b!336001 m!339893))

(declare-fun m!339895 () Bool)

(assert (=> b!336001 m!339895))

(declare-fun m!339897 () Bool)

(assert (=> b!336001 m!339897))

(assert (=> b!336001 m!339855))

(declare-fun m!339899 () Bool)

(assert (=> b!336001 m!339899))

(declare-fun m!339901 () Bool)

(assert (=> b!336001 m!339901))

(declare-fun m!339903 () Bool)

(assert (=> b!336001 m!339903))

(declare-fun m!339905 () Bool)

(assert (=> b!336001 m!339905))

(declare-fun m!339907 () Bool)

(assert (=> b!336001 m!339907))

(declare-fun m!339909 () Bool)

(assert (=> b!336001 m!339909))

(declare-fun m!339911 () Bool)

(assert (=> b!336001 m!339911))

(declare-fun m!339913 () Bool)

(assert (=> b!336001 m!339913))

(declare-fun m!339915 () Bool)

(assert (=> b!336001 m!339915))

(assert (=> b!336001 m!339911))

(assert (=> b!336001 m!339915))

(declare-fun m!339917 () Bool)

(assert (=> b!336001 m!339917))

(declare-fun m!339919 () Bool)

(assert (=> b!336001 m!339919))

(assert (=> b!336001 m!339903))

(assert (=> b!336001 m!339907))

(declare-fun m!339921 () Bool)

(assert (=> b!336001 m!339921))

(declare-fun m!339923 () Bool)

(assert (=> b!336001 m!339923))

(declare-fun m!339925 () Bool)

(assert (=> b!335999 m!339925))

(assert (=> b!335986 m!339855))

(assert (=> b!335986 m!339855))

(declare-fun m!339927 () Bool)

(assert (=> b!335986 m!339927))

(declare-fun m!339929 () Bool)

(assert (=> bm!26337 m!339929))

(assert (=> bm!26339 m!339923))

(declare-fun m!339931 () Bool)

(assert (=> b!335995 m!339931))

(assert (=> b!335995 m!339855))

(declare-fun m!339933 () Bool)

(assert (=> b!335995 m!339933))

(assert (=> b!335995 m!339933))

(assert (=> b!335995 m!339931))

(declare-fun m!339935 () Bool)

(assert (=> b!335995 m!339935))

(assert (=> b!335995 m!339855))

(declare-fun m!339937 () Bool)

(assert (=> b!335995 m!339937))

(declare-fun m!339939 () Bool)

(assert (=> b!335988 m!339939))

(assert (=> b!336002 m!339855))

(assert (=> b!336002 m!339855))

(assert (=> b!336002 m!339863))

(assert (=> d!70549 m!339821))

(assert (=> b!335984 m!339855))

(assert (=> b!335984 m!339855))

(assert (=> b!335984 m!339863))

(declare-fun m!339941 () Bool)

(assert (=> bm!26336 m!339941))

(assert (=> b!335867 d!70549))

(declare-fun d!70551 () Bool)

(assert (=> d!70551 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33790 d!70551))

(declare-fun d!70553 () Bool)

(assert (=> d!70553 (= (array_inv!6128 _values!1525) (bvsge (size!8619 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33790 d!70553))

(declare-fun d!70555 () Bool)

(assert (=> d!70555 (= (array_inv!6129 _keys!1895) (bvsge (size!8620 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33790 d!70555))

(declare-fun b!336016 () Bool)

(declare-fun e!206268 () Bool)

(declare-fun e!206269 () Bool)

(assert (=> b!336016 (= e!206268 e!206269)))

(declare-fun res!185520 () Bool)

(assert (=> b!336016 (=> (not res!185520) (not e!206269))))

(declare-fun e!206270 () Bool)

(assert (=> b!336016 (= res!185520 (not e!206270))))

(declare-fun res!185521 () Bool)

(assert (=> b!336016 (=> (not res!185521) (not e!206270))))

(assert (=> b!336016 (= res!185521 (validKeyInArray!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336017 () Bool)

(declare-fun contains!2079 (List!4755 (_ BitVec 64)) Bool)

(assert (=> b!336017 (= e!206270 (contains!2079 Nil!4752 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336018 () Bool)

(declare-fun e!206271 () Bool)

(assert (=> b!336018 (= e!206269 e!206271)))

(declare-fun c!52187 () Bool)

(assert (=> b!336018 (= c!52187 (validKeyInArray!0 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336019 () Bool)

(declare-fun call!26345 () Bool)

(assert (=> b!336019 (= e!206271 call!26345)))

(declare-fun b!336020 () Bool)

(assert (=> b!336020 (= e!206271 call!26345)))

(declare-fun bm!26342 () Bool)

(assert (=> bm!26342 (= call!26345 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52187 (Cons!4751 (select (arr!8268 _keys!1895) #b00000000000000000000000000000000) Nil!4752) Nil!4752)))))

(declare-fun d!70557 () Bool)

(declare-fun res!185522 () Bool)

(assert (=> d!70557 (=> res!185522 e!206268)))

(assert (=> d!70557 (= res!185522 (bvsge #b00000000000000000000000000000000 (size!8620 _keys!1895)))))

(assert (=> d!70557 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4752) e!206268)))

(assert (= (and d!70557 (not res!185522)) b!336016))

(assert (= (and b!336016 res!185521) b!336017))

(assert (= (and b!336016 res!185520) b!336018))

(assert (= (and b!336018 c!52187) b!336019))

(assert (= (and b!336018 (not c!52187)) b!336020))

(assert (= (or b!336019 b!336020) bm!26342))

(assert (=> b!336016 m!339855))

(assert (=> b!336016 m!339855))

(assert (=> b!336016 m!339863))

(assert (=> b!336017 m!339855))

(assert (=> b!336017 m!339855))

(declare-fun m!339943 () Bool)

(assert (=> b!336017 m!339943))

(assert (=> b!336018 m!339855))

(assert (=> b!336018 m!339855))

(assert (=> b!336018 m!339863))

(assert (=> bm!26342 m!339855))

(declare-fun m!339945 () Bool)

(assert (=> bm!26342 m!339945))

(assert (=> b!335870 d!70557))

(declare-fun mapIsEmpty!11832 () Bool)

(declare-fun mapRes!11832 () Bool)

(assert (=> mapIsEmpty!11832 mapRes!11832))

(declare-fun mapNonEmpty!11832 () Bool)

(declare-fun tp!24513 () Bool)

(declare-fun e!206277 () Bool)

(assert (=> mapNonEmpty!11832 (= mapRes!11832 (and tp!24513 e!206277))))

(declare-fun mapKey!11832 () (_ BitVec 32))

(declare-fun mapRest!11832 () (Array (_ BitVec 32) ValueCell!3132))

(declare-fun mapValue!11832 () ValueCell!3132)

(assert (=> mapNonEmpty!11832 (= mapRest!11826 (store mapRest!11832 mapKey!11832 mapValue!11832))))

(declare-fun b!336028 () Bool)

(declare-fun e!206276 () Bool)

(assert (=> b!336028 (= e!206276 tp_is_empty!6951)))

(declare-fun condMapEmpty!11832 () Bool)

(declare-fun mapDefault!11832 () ValueCell!3132)

(assert (=> mapNonEmpty!11826 (= condMapEmpty!11832 (= mapRest!11826 ((as const (Array (_ BitVec 32) ValueCell!3132)) mapDefault!11832)))))

(assert (=> mapNonEmpty!11826 (= tp!24503 (and e!206276 mapRes!11832))))

(declare-fun b!336027 () Bool)

(assert (=> b!336027 (= e!206277 tp_is_empty!6951)))

(assert (= (and mapNonEmpty!11826 condMapEmpty!11832) mapIsEmpty!11832))

(assert (= (and mapNonEmpty!11826 (not condMapEmpty!11832)) mapNonEmpty!11832))

(assert (= (and mapNonEmpty!11832 ((_ is ValueCellFull!3132) mapValue!11832)) b!336027))

(assert (= (and mapNonEmpty!11826 ((_ is ValueCellFull!3132) mapDefault!11832)) b!336028))

(declare-fun m!339947 () Bool)

(assert (=> mapNonEmpty!11832 m!339947))

(declare-fun b_lambda!8439 () Bool)

(assert (= b_lambda!8437 (or (and start!33790 b_free!6999) b_lambda!8439)))

(check-sat (not b!335940) (not b!335988) b_and!14203 (not bm!26339) (not b!336017) tp_is_empty!6951 (not b_lambda!8439) (not d!70549) (not b!335999) (not b!335995) (not bm!26335) (not b!335910) (not mapNonEmpty!11832) (not bm!26342) (not b!335986) (not b!335911) (not b_next!6999) (not d!70547) (not b!336016) (not b!335989) (not b!336001) (not bm!26337) (not b!335984) (not b!336018) (not bm!26336) (not d!70543) (not b!336002) (not b!335938) (not bm!26318) (not b!335926))
(check-sat b_and!14203 (not b_next!6999))
