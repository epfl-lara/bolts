; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84484 () Bool)

(assert start!84484)

(declare-fun b_free!20007 () Bool)

(declare-fun b_next!20007 () Bool)

(assert (=> start!84484 (= b_free!20007 (not b_next!20007))))

(declare-fun tp!69802 () Bool)

(declare-fun b_and!32099 () Bool)

(assert (=> start!84484 (= tp!69802 b_and!32099)))

(declare-fun mapIsEmpty!36869 () Bool)

(declare-fun mapRes!36869 () Bool)

(assert (=> mapIsEmpty!36869 mapRes!36869))

(declare-fun res!660863 () Bool)

(declare-fun e!556967 () Bool)

(assert (=> start!84484 (=> (not res!660863) (not e!556967))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84484 (= res!660863 (validMask!0 mask!1948))))

(assert (=> start!84484 e!556967))

(assert (=> start!84484 true))

(declare-fun tp_is_empty!23223 () Bool)

(assert (=> start!84484 tp_is_empty!23223))

(declare-datatypes ((V!35947 0))(
  ( (V!35948 (val!11662 Int)) )
))
(declare-datatypes ((ValueCell!11130 0))(
  ( (ValueCellFull!11130 (v!14226 V!35947)) (EmptyCell!11130) )
))
(declare-datatypes ((array!62395 0))(
  ( (array!62396 (arr!30049 (Array (_ BitVec 32) ValueCell!11130)) (size!30529 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62395)

(declare-fun e!556964 () Bool)

(declare-fun array_inv!23073 (array!62395) Bool)

(assert (=> start!84484 (and (array_inv!23073 _values!1278) e!556964)))

(assert (=> start!84484 tp!69802))

(declare-datatypes ((array!62397 0))(
  ( (array!62398 (arr!30050 (Array (_ BitVec 32) (_ BitVec 64))) (size!30530 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62397)

(declare-fun array_inv!23074 (array!62397) Bool)

(assert (=> start!84484 (array_inv!23074 _keys!1544)))

(declare-fun b!987690 () Bool)

(declare-fun res!660860 () Bool)

(assert (=> b!987690 (=> (not res!660860) (not e!556967))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!987690 (= res!660860 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544))))))

(declare-fun b!987691 () Bool)

(declare-fun res!660858 () Bool)

(assert (=> b!987691 (=> (not res!660858) (not e!556967))))

(declare-datatypes ((List!20908 0))(
  ( (Nil!20905) (Cons!20904 (h!22066 (_ BitVec 64)) (t!29851 List!20908)) )
))
(declare-fun arrayNoDuplicates!0 (array!62397 (_ BitVec 32) List!20908) Bool)

(assert (=> b!987691 (= res!660858 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20905))))

(declare-fun b!987692 () Bool)

(declare-fun res!660859 () Bool)

(assert (=> b!987692 (=> (not res!660859) (not e!556967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62397 (_ BitVec 32)) Bool)

(assert (=> b!987692 (= res!660859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987693 () Bool)

(declare-fun e!556966 () Bool)

(assert (=> b!987693 (= e!556967 (not e!556966))))

(declare-fun res!660857 () Bool)

(assert (=> b!987693 (=> res!660857 e!556966)))

(assert (=> b!987693 (= res!660857 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30050 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14956 0))(
  ( (tuple2!14957 (_1!7488 (_ BitVec 64)) (_2!7488 V!35947)) )
))
(declare-fun lt!438012 () tuple2!14956)

(declare-datatypes ((List!20909 0))(
  ( (Nil!20906) (Cons!20905 (h!22067 tuple2!14956) (t!29852 List!20909)) )
))
(declare-datatypes ((ListLongMap!13667 0))(
  ( (ListLongMap!13668 (toList!6849 List!20909)) )
))
(declare-fun lt!438019 () ListLongMap!13667)

(declare-fun lt!438013 () tuple2!14956)

(declare-fun lt!438017 () ListLongMap!13667)

(declare-fun +!3037 (ListLongMap!13667 tuple2!14956) ListLongMap!13667)

(assert (=> b!987693 (= (+!3037 lt!438017 lt!438012) (+!3037 lt!438019 lt!438013))))

(declare-fun lt!438020 () ListLongMap!13667)

(assert (=> b!987693 (= lt!438019 (+!3037 lt!438020 lt!438012))))

(declare-fun lt!438011 () V!35947)

(assert (=> b!987693 (= lt!438012 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))

(assert (=> b!987693 (= lt!438017 (+!3037 lt!438020 lt!438013))))

(declare-fun minValue!1220 () V!35947)

(assert (=> b!987693 (= lt!438013 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32739 0))(
  ( (Unit!32740) )
))
(declare-fun lt!438018 () Unit!32739)

(declare-fun addCommutativeForDiffKeys!693 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64) V!35947) Unit!32739)

(assert (=> b!987693 (= lt!438018 (addCommutativeForDiffKeys!693 lt!438020 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15608 (ValueCell!11130 V!35947) V!35947)

(declare-fun dynLambda!1865 (Int (_ BitVec 64)) V!35947)

(assert (=> b!987693 (= lt!438011 (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!438016 () ListLongMap!13667)

(declare-fun lt!438014 () tuple2!14956)

(assert (=> b!987693 (= lt!438020 (+!3037 lt!438016 lt!438014))))

(declare-fun zeroValue!1220 () V!35947)

(assert (=> b!987693 (= lt!438014 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3499 (array!62397 array!62395 (_ BitVec 32) (_ BitVec 32) V!35947 V!35947 (_ BitVec 32) Int) ListLongMap!13667)

(assert (=> b!987693 (= lt!438016 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!987694 () Bool)

(declare-fun getCurrentListMap!3870 (array!62397 array!62395 (_ BitVec 32) (_ BitVec 32) V!35947 V!35947 (_ BitVec 32) Int) ListLongMap!13667)

(assert (=> b!987694 (= e!556966 (= (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3037 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438012)))))

(assert (=> b!987694 (= lt!438019 (+!3037 (+!3037 lt!438016 lt!438012) lt!438014))))

(declare-fun lt!438015 () Unit!32739)

(assert (=> b!987694 (= lt!438015 (addCommutativeForDiffKeys!693 lt!438016 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011))))

(declare-fun mapNonEmpty!36869 () Bool)

(declare-fun tp!69803 () Bool)

(declare-fun e!556963 () Bool)

(assert (=> mapNonEmpty!36869 (= mapRes!36869 (and tp!69803 e!556963))))

(declare-fun mapKey!36869 () (_ BitVec 32))

(declare-fun mapValue!36869 () ValueCell!11130)

(declare-fun mapRest!36869 () (Array (_ BitVec 32) ValueCell!11130))

(assert (=> mapNonEmpty!36869 (= (arr!30049 _values!1278) (store mapRest!36869 mapKey!36869 mapValue!36869))))

(declare-fun b!987695 () Bool)

(declare-fun res!660856 () Bool)

(assert (=> b!987695 (=> (not res!660856) (not e!556967))))

(assert (=> b!987695 (= res!660856 (and (= (size!30529 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30530 _keys!1544) (size!30529 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987696 () Bool)

(assert (=> b!987696 (= e!556963 tp_is_empty!23223)))

(declare-fun b!987697 () Bool)

(declare-fun e!556968 () Bool)

(assert (=> b!987697 (= e!556964 (and e!556968 mapRes!36869))))

(declare-fun condMapEmpty!36869 () Bool)

(declare-fun mapDefault!36869 () ValueCell!11130)

(assert (=> b!987697 (= condMapEmpty!36869 (= (arr!30049 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11130)) mapDefault!36869)))))

(declare-fun b!987698 () Bool)

(declare-fun res!660861 () Bool)

(assert (=> b!987698 (=> (not res!660861) (not e!556967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987698 (= res!660861 (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)))))

(declare-fun b!987699 () Bool)

(declare-fun res!660862 () Bool)

(assert (=> b!987699 (=> (not res!660862) (not e!556967))))

(assert (=> b!987699 (= res!660862 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987700 () Bool)

(assert (=> b!987700 (= e!556968 tp_is_empty!23223)))

(assert (= (and start!84484 res!660863) b!987695))

(assert (= (and b!987695 res!660856) b!987692))

(assert (= (and b!987692 res!660859) b!987691))

(assert (= (and b!987691 res!660858) b!987690))

(assert (= (and b!987690 res!660860) b!987698))

(assert (= (and b!987698 res!660861) b!987699))

(assert (= (and b!987699 res!660862) b!987693))

(assert (= (and b!987693 (not res!660857)) b!987694))

(assert (= (and b!987697 condMapEmpty!36869) mapIsEmpty!36869))

(assert (= (and b!987697 (not condMapEmpty!36869)) mapNonEmpty!36869))

(get-info :version)

(assert (= (and mapNonEmpty!36869 ((_ is ValueCellFull!11130) mapValue!36869)) b!987696))

(assert (= (and b!987697 ((_ is ValueCellFull!11130) mapDefault!36869)) b!987700))

(assert (= start!84484 b!987697))

(declare-fun b_lambda!15069 () Bool)

(assert (=> (not b_lambda!15069) (not b!987693)))

(declare-fun t!29850 () Bool)

(declare-fun tb!6793 () Bool)

(assert (=> (and start!84484 (= defaultEntry!1281 defaultEntry!1281) t!29850) tb!6793))

(declare-fun result!13571 () Bool)

(assert (=> tb!6793 (= result!13571 tp_is_empty!23223)))

(assert (=> b!987693 t!29850))

(declare-fun b_and!32101 () Bool)

(assert (= b_and!32099 (and (=> t!29850 result!13571) b_and!32101)))

(declare-fun m!914495 () Bool)

(assert (=> b!987691 m!914495))

(declare-fun m!914497 () Bool)

(assert (=> start!84484 m!914497))

(declare-fun m!914499 () Bool)

(assert (=> start!84484 m!914499))

(declare-fun m!914501 () Bool)

(assert (=> start!84484 m!914501))

(declare-fun m!914503 () Bool)

(assert (=> mapNonEmpty!36869 m!914503))

(declare-fun m!914505 () Bool)

(assert (=> b!987698 m!914505))

(assert (=> b!987698 m!914505))

(declare-fun m!914507 () Bool)

(assert (=> b!987698 m!914507))

(assert (=> b!987693 m!914505))

(declare-fun m!914509 () Bool)

(assert (=> b!987693 m!914509))

(assert (=> b!987693 m!914505))

(declare-fun m!914511 () Bool)

(assert (=> b!987693 m!914511))

(declare-fun m!914513 () Bool)

(assert (=> b!987693 m!914513))

(declare-fun m!914515 () Bool)

(assert (=> b!987693 m!914515))

(declare-fun m!914517 () Bool)

(assert (=> b!987693 m!914517))

(declare-fun m!914519 () Bool)

(assert (=> b!987693 m!914519))

(declare-fun m!914521 () Bool)

(assert (=> b!987693 m!914521))

(declare-fun m!914523 () Bool)

(assert (=> b!987693 m!914523))

(declare-fun m!914525 () Bool)

(assert (=> b!987693 m!914525))

(assert (=> b!987693 m!914509))

(assert (=> b!987693 m!914525))

(declare-fun m!914527 () Bool)

(assert (=> b!987693 m!914527))

(declare-fun m!914529 () Bool)

(assert (=> b!987692 m!914529))

(assert (=> b!987694 m!914505))

(assert (=> b!987694 m!914505))

(declare-fun m!914531 () Bool)

(assert (=> b!987694 m!914531))

(declare-fun m!914533 () Bool)

(assert (=> b!987694 m!914533))

(declare-fun m!914535 () Bool)

(assert (=> b!987694 m!914535))

(assert (=> b!987694 m!914533))

(declare-fun m!914537 () Bool)

(assert (=> b!987694 m!914537))

(assert (=> b!987694 m!914537))

(declare-fun m!914539 () Bool)

(assert (=> b!987694 m!914539))

(declare-fun m!914541 () Bool)

(assert (=> b!987694 m!914541))

(check-sat (not b_next!20007) (not b!987694) (not b_lambda!15069) (not b!987692) (not b!987691) (not start!84484) tp_is_empty!23223 (not b!987698) (not mapNonEmpty!36869) (not b!987693) b_and!32101)
(check-sat b_and!32101 (not b_next!20007))
(get-model)

(declare-fun b_lambda!15073 () Bool)

(assert (= b_lambda!15069 (or (and start!84484 b_free!20007) b_lambda!15073)))

(check-sat (not b_next!20007) (not b!987694) (not b!987691) (not start!84484) tp_is_empty!23223 (not b!987698) (not mapNonEmpty!36869) (not b!987692) (not b_lambda!15073) (not b!987693) b_and!32101)
(check-sat b_and!32101 (not b_next!20007))
(get-model)

(declare-fun b!987746 () Bool)

(declare-fun e!556994 () Bool)

(declare-fun e!556993 () Bool)

(assert (=> b!987746 (= e!556994 e!556993)))

(declare-fun lt!438057 () (_ BitVec 64))

(assert (=> b!987746 (= lt!438057 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!438059 () Unit!32739)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62397 (_ BitVec 64) (_ BitVec 32)) Unit!32739)

(assert (=> b!987746 (= lt!438059 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438057 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!987746 (arrayContainsKey!0 _keys!1544 lt!438057 #b00000000000000000000000000000000)))

(declare-fun lt!438058 () Unit!32739)

(assert (=> b!987746 (= lt!438058 lt!438059)))

(declare-fun res!660893 () Bool)

(declare-datatypes ((SeekEntryResult!9196 0))(
  ( (MissingZero!9196 (index!39154 (_ BitVec 32))) (Found!9196 (index!39155 (_ BitVec 32))) (Intermediate!9196 (undefined!10008 Bool) (index!39156 (_ BitVec 32)) (x!85979 (_ BitVec 32))) (Undefined!9196) (MissingVacant!9196 (index!39157 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62397 (_ BitVec 32)) SeekEntryResult!9196)

(assert (=> b!987746 (= res!660893 (= (seekEntryOrOpen!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9196 #b00000000000000000000000000000000)))))

(assert (=> b!987746 (=> (not res!660893) (not e!556993))))

(declare-fun b!987747 () Bool)

(declare-fun call!41814 () Bool)

(assert (=> b!987747 (= e!556993 call!41814)))

(declare-fun bm!41811 () Bool)

(assert (=> bm!41811 (= call!41814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!987748 () Bool)

(declare-fun e!556995 () Bool)

(assert (=> b!987748 (= e!556995 e!556994)))

(declare-fun c!99982 () Bool)

(assert (=> b!987748 (= c!99982 (validKeyInArray!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!116881 () Bool)

(declare-fun res!660892 () Bool)

(assert (=> d!116881 (=> res!660892 e!556995)))

(assert (=> d!116881 (= res!660892 (bvsge #b00000000000000000000000000000000 (size!30530 _keys!1544)))))

(assert (=> d!116881 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!556995)))

(declare-fun b!987749 () Bool)

(assert (=> b!987749 (= e!556994 call!41814)))

(assert (= (and d!116881 (not res!660892)) b!987748))

(assert (= (and b!987748 c!99982) b!987746))

(assert (= (and b!987748 (not c!99982)) b!987749))

(assert (= (and b!987746 res!660893) b!987747))

(assert (= (or b!987747 b!987749) bm!41811))

(declare-fun m!914591 () Bool)

(assert (=> b!987746 m!914591))

(declare-fun m!914593 () Bool)

(assert (=> b!987746 m!914593))

(declare-fun m!914595 () Bool)

(assert (=> b!987746 m!914595))

(assert (=> b!987746 m!914591))

(declare-fun m!914597 () Bool)

(assert (=> b!987746 m!914597))

(declare-fun m!914599 () Bool)

(assert (=> bm!41811 m!914599))

(assert (=> b!987748 m!914591))

(assert (=> b!987748 m!914591))

(declare-fun m!914601 () Bool)

(assert (=> b!987748 m!914601))

(assert (=> b!987692 d!116881))

(declare-fun d!116883 () Bool)

(assert (=> d!116883 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84484 d!116883))

(declare-fun d!116885 () Bool)

(assert (=> d!116885 (= (array_inv!23073 _values!1278) (bvsge (size!30529 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84484 d!116885))

(declare-fun d!116887 () Bool)

(assert (=> d!116887 (= (array_inv!23074 _keys!1544) (bvsge (size!30530 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84484 d!116887))

(declare-fun d!116889 () Bool)

(declare-fun e!556998 () Bool)

(assert (=> d!116889 e!556998))

(declare-fun res!660899 () Bool)

(assert (=> d!116889 (=> (not res!660899) (not e!556998))))

(declare-fun lt!438070 () ListLongMap!13667)

(declare-fun contains!5722 (ListLongMap!13667 (_ BitVec 64)) Bool)

(assert (=> d!116889 (= res!660899 (contains!5722 lt!438070 (_1!7488 lt!438012)))))

(declare-fun lt!438071 () List!20909)

(assert (=> d!116889 (= lt!438070 (ListLongMap!13668 lt!438071))))

(declare-fun lt!438069 () Unit!32739)

(declare-fun lt!438068 () Unit!32739)

(assert (=> d!116889 (= lt!438069 lt!438068)))

(declare-datatypes ((Option!521 0))(
  ( (Some!520 (v!14228 V!35947)) (None!519) )
))
(declare-fun getValueByKey!515 (List!20909 (_ BitVec 64)) Option!521)

(assert (=> d!116889 (= (getValueByKey!515 lt!438071 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(declare-fun lemmaContainsTupThenGetReturnValue!272 (List!20909 (_ BitVec 64) V!35947) Unit!32739)

(assert (=> d!116889 (= lt!438068 (lemmaContainsTupThenGetReturnValue!272 lt!438071 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun insertStrictlySorted!328 (List!20909 (_ BitVec 64) V!35947) List!20909)

(assert (=> d!116889 (= lt!438071 (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116889 (= (+!3037 lt!438020 lt!438012) lt!438070)))

(declare-fun b!987754 () Bool)

(declare-fun res!660898 () Bool)

(assert (=> b!987754 (=> (not res!660898) (not e!556998))))

(assert (=> b!987754 (= res!660898 (= (getValueByKey!515 (toList!6849 lt!438070) (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012))))))

(declare-fun b!987755 () Bool)

(declare-fun contains!5723 (List!20909 tuple2!14956) Bool)

(assert (=> b!987755 (= e!556998 (contains!5723 (toList!6849 lt!438070) lt!438012))))

(assert (= (and d!116889 res!660899) b!987754))

(assert (= (and b!987754 res!660898) b!987755))

(declare-fun m!914603 () Bool)

(assert (=> d!116889 m!914603))

(declare-fun m!914605 () Bool)

(assert (=> d!116889 m!914605))

(declare-fun m!914607 () Bool)

(assert (=> d!116889 m!914607))

(declare-fun m!914609 () Bool)

(assert (=> d!116889 m!914609))

(declare-fun m!914611 () Bool)

(assert (=> b!987754 m!914611))

(declare-fun m!914613 () Bool)

(assert (=> b!987755 m!914613))

(assert (=> b!987693 d!116889))

(declare-fun d!116891 () Bool)

(declare-fun c!99985 () Bool)

(assert (=> d!116891 (= c!99985 ((_ is ValueCellFull!11130) (select (arr!30049 _values!1278) from!1932)))))

(declare-fun e!557001 () V!35947)

(assert (=> d!116891 (= (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!557001)))

(declare-fun b!987760 () Bool)

(declare-fun get!15609 (ValueCell!11130 V!35947) V!35947)

(assert (=> b!987760 (= e!557001 (get!15609 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987761 () Bool)

(declare-fun get!15610 (ValueCell!11130 V!35947) V!35947)

(assert (=> b!987761 (= e!557001 (get!15610 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116891 c!99985) b!987760))

(assert (= (and d!116891 (not c!99985)) b!987761))

(assert (=> b!987760 m!914509))

(assert (=> b!987760 m!914525))

(declare-fun m!914615 () Bool)

(assert (=> b!987760 m!914615))

(assert (=> b!987761 m!914509))

(assert (=> b!987761 m!914525))

(declare-fun m!914617 () Bool)

(assert (=> b!987761 m!914617))

(assert (=> b!987693 d!116891))

(declare-fun b!987786 () Bool)

(declare-fun e!557022 () Bool)

(declare-fun lt!438090 () ListLongMap!13667)

(declare-fun isEmpty!725 (ListLongMap!13667) Bool)

(assert (=> b!987786 (= e!557022 (isEmpty!725 lt!438090))))

(declare-fun b!987787 () Bool)

(assert (=> b!987787 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(assert (=> b!987787 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30529 _values!1278)))))

(declare-fun e!557021 () Bool)

(declare-fun apply!928 (ListLongMap!13667 (_ BitVec 64)) V!35947)

(assert (=> b!987787 (= e!557021 (= (apply!928 lt!438090 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!987788 () Bool)

(declare-fun e!557017 () ListLongMap!13667)

(assert (=> b!987788 (= e!557017 (ListLongMap!13668 Nil!20906))))

(declare-fun b!987789 () Bool)

(declare-fun e!557018 () Bool)

(assert (=> b!987789 (= e!557018 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987789 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun b!987790 () Bool)

(declare-fun e!557016 () Bool)

(assert (=> b!987790 (= e!557016 e!557022)))

(declare-fun c!99997 () Bool)

(assert (=> b!987790 (= c!99997 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun d!116893 () Bool)

(declare-fun e!557019 () Bool)

(assert (=> d!116893 e!557019))

(declare-fun res!660910 () Bool)

(assert (=> d!116893 (=> (not res!660910) (not e!557019))))

(assert (=> d!116893 (= res!660910 (not (contains!5722 lt!438090 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!116893 (= lt!438090 e!557017)))

(declare-fun c!99994 () Bool)

(assert (=> d!116893 (= c!99994 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(assert (=> d!116893 (validMask!0 mask!1948)))

(assert (=> d!116893 (= (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438090)))

(declare-fun b!987791 () Bool)

(declare-fun lt!438088 () Unit!32739)

(declare-fun lt!438091 () Unit!32739)

(assert (=> b!987791 (= lt!438088 lt!438091)))

(declare-fun lt!438089 () V!35947)

(declare-fun lt!438087 () ListLongMap!13667)

(declare-fun lt!438092 () (_ BitVec 64))

(declare-fun lt!438086 () (_ BitVec 64))

(assert (=> b!987791 (not (contains!5722 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089)) lt!438092))))

(declare-fun addStillNotContains!234 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> b!987791 (= lt!438091 (addStillNotContains!234 lt!438087 lt!438086 lt!438089 lt!438092))))

(assert (=> b!987791 (= lt!438092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!987791 (= lt!438089 (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!987791 (= lt!438086 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun call!41817 () ListLongMap!13667)

(assert (=> b!987791 (= lt!438087 call!41817)))

(declare-fun e!557020 () ListLongMap!13667)

(assert (=> b!987791 (= e!557020 (+!3037 call!41817 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!987792 () Bool)

(declare-fun res!660909 () Bool)

(assert (=> b!987792 (=> (not res!660909) (not e!557019))))

(assert (=> b!987792 (= res!660909 (not (contains!5722 lt!438090 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987793 () Bool)

(assert (=> b!987793 (= e!557017 e!557020)))

(declare-fun c!99995 () Bool)

(assert (=> b!987793 (= c!99995 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!987794 () Bool)

(assert (=> b!987794 (= e!557022 (= lt!438090 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!987795 () Bool)

(assert (=> b!987795 (= e!557019 e!557016)))

(declare-fun c!99996 () Bool)

(assert (=> b!987795 (= c!99996 e!557018)))

(declare-fun res!660911 () Bool)

(assert (=> b!987795 (=> (not res!660911) (not e!557018))))

(assert (=> b!987795 (= res!660911 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun bm!41814 () Bool)

(assert (=> bm!41814 (= call!41817 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!987796 () Bool)

(assert (=> b!987796 (= e!557020 call!41817)))

(declare-fun b!987797 () Bool)

(assert (=> b!987797 (= e!557016 e!557021)))

(assert (=> b!987797 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun res!660908 () Bool)

(assert (=> b!987797 (= res!660908 (contains!5722 lt!438090 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987797 (=> (not res!660908) (not e!557021))))

(assert (= (and d!116893 c!99994) b!987788))

(assert (= (and d!116893 (not c!99994)) b!987793))

(assert (= (and b!987793 c!99995) b!987791))

(assert (= (and b!987793 (not c!99995)) b!987796))

(assert (= (or b!987791 b!987796) bm!41814))

(assert (= (and d!116893 res!660910) b!987792))

(assert (= (and b!987792 res!660909) b!987795))

(assert (= (and b!987795 res!660911) b!987789))

(assert (= (and b!987795 c!99996) b!987797))

(assert (= (and b!987795 (not c!99996)) b!987790))

(assert (= (and b!987797 res!660908) b!987787))

(assert (= (and b!987790 c!99997) b!987794))

(assert (= (and b!987790 (not c!99997)) b!987786))

(declare-fun b_lambda!15075 () Bool)

(assert (=> (not b_lambda!15075) (not b!987787)))

(assert (=> b!987787 t!29850))

(declare-fun b_and!32107 () Bool)

(assert (= b_and!32101 (and (=> t!29850 result!13571) b_and!32107)))

(declare-fun b_lambda!15077 () Bool)

(assert (=> (not b_lambda!15077) (not b!987791)))

(assert (=> b!987791 t!29850))

(declare-fun b_and!32109 () Bool)

(assert (= b_and!32107 (and (=> t!29850 result!13571) b_and!32109)))

(declare-fun m!914619 () Bool)

(assert (=> b!987789 m!914619))

(assert (=> b!987789 m!914619))

(declare-fun m!914621 () Bool)

(assert (=> b!987789 m!914621))

(declare-fun m!914623 () Bool)

(assert (=> bm!41814 m!914623))

(declare-fun m!914625 () Bool)

(assert (=> b!987791 m!914625))

(declare-fun m!914627 () Bool)

(assert (=> b!987791 m!914627))

(assert (=> b!987791 m!914525))

(declare-fun m!914629 () Bool)

(assert (=> b!987791 m!914629))

(assert (=> b!987791 m!914625))

(declare-fun m!914631 () Bool)

(assert (=> b!987791 m!914631))

(assert (=> b!987791 m!914525))

(assert (=> b!987791 m!914619))

(declare-fun m!914633 () Bool)

(assert (=> b!987791 m!914633))

(declare-fun m!914635 () Bool)

(assert (=> b!987791 m!914635))

(assert (=> b!987791 m!914627))

(assert (=> b!987787 m!914619))

(assert (=> b!987787 m!914627))

(assert (=> b!987787 m!914525))

(assert (=> b!987787 m!914629))

(assert (=> b!987787 m!914525))

(assert (=> b!987787 m!914627))

(assert (=> b!987787 m!914619))

(declare-fun m!914637 () Bool)

(assert (=> b!987787 m!914637))

(declare-fun m!914639 () Bool)

(assert (=> b!987786 m!914639))

(assert (=> b!987794 m!914623))

(assert (=> b!987797 m!914619))

(assert (=> b!987797 m!914619))

(declare-fun m!914641 () Bool)

(assert (=> b!987797 m!914641))

(declare-fun m!914643 () Bool)

(assert (=> d!116893 m!914643))

(assert (=> d!116893 m!914497))

(declare-fun m!914645 () Bool)

(assert (=> b!987792 m!914645))

(assert (=> b!987793 m!914619))

(assert (=> b!987793 m!914619))

(assert (=> b!987793 m!914621))

(assert (=> b!987693 d!116893))

(declare-fun d!116895 () Bool)

(declare-fun e!557023 () Bool)

(assert (=> d!116895 e!557023))

(declare-fun res!660913 () Bool)

(assert (=> d!116895 (=> (not res!660913) (not e!557023))))

(declare-fun lt!438095 () ListLongMap!13667)

(assert (=> d!116895 (= res!660913 (contains!5722 lt!438095 (_1!7488 lt!438013)))))

(declare-fun lt!438096 () List!20909)

(assert (=> d!116895 (= lt!438095 (ListLongMap!13668 lt!438096))))

(declare-fun lt!438094 () Unit!32739)

(declare-fun lt!438093 () Unit!32739)

(assert (=> d!116895 (= lt!438094 lt!438093)))

(assert (=> d!116895 (= (getValueByKey!515 lt!438096 (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013)))))

(assert (=> d!116895 (= lt!438093 (lemmaContainsTupThenGetReturnValue!272 lt!438096 (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(assert (=> d!116895 (= lt!438096 (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(assert (=> d!116895 (= (+!3037 lt!438020 lt!438013) lt!438095)))

(declare-fun b!987798 () Bool)

(declare-fun res!660912 () Bool)

(assert (=> b!987798 (=> (not res!660912) (not e!557023))))

(assert (=> b!987798 (= res!660912 (= (getValueByKey!515 (toList!6849 lt!438095) (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013))))))

(declare-fun b!987799 () Bool)

(assert (=> b!987799 (= e!557023 (contains!5723 (toList!6849 lt!438095) lt!438013))))

(assert (= (and d!116895 res!660913) b!987798))

(assert (= (and b!987798 res!660912) b!987799))

(declare-fun m!914647 () Bool)

(assert (=> d!116895 m!914647))

(declare-fun m!914649 () Bool)

(assert (=> d!116895 m!914649))

(declare-fun m!914651 () Bool)

(assert (=> d!116895 m!914651))

(declare-fun m!914653 () Bool)

(assert (=> d!116895 m!914653))

(declare-fun m!914655 () Bool)

(assert (=> b!987798 m!914655))

(declare-fun m!914657 () Bool)

(assert (=> b!987799 m!914657))

(assert (=> b!987693 d!116895))

(declare-fun d!116897 () Bool)

(assert (=> d!116897 (= (+!3037 (+!3037 lt!438020 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (+!3037 (+!3037 lt!438020 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun lt!438099 () Unit!32739)

(declare-fun choose!1613 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64) V!35947) Unit!32739)

(assert (=> d!116897 (= lt!438099 (choose!1613 lt!438020 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011))))

(assert (=> d!116897 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> d!116897 (= (addCommutativeForDiffKeys!693 lt!438020 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011) lt!438099)))

(declare-fun bs!28023 () Bool)

(assert (= bs!28023 d!116897))

(assert (=> bs!28023 m!914505))

(declare-fun m!914659 () Bool)

(assert (=> bs!28023 m!914659))

(declare-fun m!914661 () Bool)

(assert (=> bs!28023 m!914661))

(assert (=> bs!28023 m!914661))

(declare-fun m!914663 () Bool)

(assert (=> bs!28023 m!914663))

(declare-fun m!914665 () Bool)

(assert (=> bs!28023 m!914665))

(declare-fun m!914667 () Bool)

(assert (=> bs!28023 m!914667))

(assert (=> bs!28023 m!914665))

(assert (=> b!987693 d!116897))

(declare-fun d!116899 () Bool)

(declare-fun e!557024 () Bool)

(assert (=> d!116899 e!557024))

(declare-fun res!660915 () Bool)

(assert (=> d!116899 (=> (not res!660915) (not e!557024))))

(declare-fun lt!438102 () ListLongMap!13667)

(assert (=> d!116899 (= res!660915 (contains!5722 lt!438102 (_1!7488 lt!438013)))))

(declare-fun lt!438103 () List!20909)

(assert (=> d!116899 (= lt!438102 (ListLongMap!13668 lt!438103))))

(declare-fun lt!438101 () Unit!32739)

(declare-fun lt!438100 () Unit!32739)

(assert (=> d!116899 (= lt!438101 lt!438100)))

(assert (=> d!116899 (= (getValueByKey!515 lt!438103 (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013)))))

(assert (=> d!116899 (= lt!438100 (lemmaContainsTupThenGetReturnValue!272 lt!438103 (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(assert (=> d!116899 (= lt!438103 (insertStrictlySorted!328 (toList!6849 lt!438019) (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(assert (=> d!116899 (= (+!3037 lt!438019 lt!438013) lt!438102)))

(declare-fun b!987800 () Bool)

(declare-fun res!660914 () Bool)

(assert (=> b!987800 (=> (not res!660914) (not e!557024))))

(assert (=> b!987800 (= res!660914 (= (getValueByKey!515 (toList!6849 lt!438102) (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013))))))

(declare-fun b!987801 () Bool)

(assert (=> b!987801 (= e!557024 (contains!5723 (toList!6849 lt!438102) lt!438013))))

(assert (= (and d!116899 res!660915) b!987800))

(assert (= (and b!987800 res!660914) b!987801))

(declare-fun m!914669 () Bool)

(assert (=> d!116899 m!914669))

(declare-fun m!914671 () Bool)

(assert (=> d!116899 m!914671))

(declare-fun m!914673 () Bool)

(assert (=> d!116899 m!914673))

(declare-fun m!914675 () Bool)

(assert (=> d!116899 m!914675))

(declare-fun m!914677 () Bool)

(assert (=> b!987800 m!914677))

(declare-fun m!914679 () Bool)

(assert (=> b!987801 m!914679))

(assert (=> b!987693 d!116899))

(declare-fun d!116901 () Bool)

(declare-fun e!557025 () Bool)

(assert (=> d!116901 e!557025))

(declare-fun res!660917 () Bool)

(assert (=> d!116901 (=> (not res!660917) (not e!557025))))

(declare-fun lt!438106 () ListLongMap!13667)

(assert (=> d!116901 (= res!660917 (contains!5722 lt!438106 (_1!7488 lt!438012)))))

(declare-fun lt!438107 () List!20909)

(assert (=> d!116901 (= lt!438106 (ListLongMap!13668 lt!438107))))

(declare-fun lt!438105 () Unit!32739)

(declare-fun lt!438104 () Unit!32739)

(assert (=> d!116901 (= lt!438105 lt!438104)))

(assert (=> d!116901 (= (getValueByKey!515 lt!438107 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(assert (=> d!116901 (= lt!438104 (lemmaContainsTupThenGetReturnValue!272 lt!438107 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116901 (= lt!438107 (insertStrictlySorted!328 (toList!6849 lt!438017) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116901 (= (+!3037 lt!438017 lt!438012) lt!438106)))

(declare-fun b!987802 () Bool)

(declare-fun res!660916 () Bool)

(assert (=> b!987802 (=> (not res!660916) (not e!557025))))

(assert (=> b!987802 (= res!660916 (= (getValueByKey!515 (toList!6849 lt!438106) (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012))))))

(declare-fun b!987803 () Bool)

(assert (=> b!987803 (= e!557025 (contains!5723 (toList!6849 lt!438106) lt!438012))))

(assert (= (and d!116901 res!660917) b!987802))

(assert (= (and b!987802 res!660916) b!987803))

(declare-fun m!914681 () Bool)

(assert (=> d!116901 m!914681))

(declare-fun m!914683 () Bool)

(assert (=> d!116901 m!914683))

(declare-fun m!914685 () Bool)

(assert (=> d!116901 m!914685))

(declare-fun m!914687 () Bool)

(assert (=> d!116901 m!914687))

(declare-fun m!914689 () Bool)

(assert (=> b!987802 m!914689))

(declare-fun m!914691 () Bool)

(assert (=> b!987803 m!914691))

(assert (=> b!987693 d!116901))

(declare-fun d!116903 () Bool)

(declare-fun e!557026 () Bool)

(assert (=> d!116903 e!557026))

(declare-fun res!660919 () Bool)

(assert (=> d!116903 (=> (not res!660919) (not e!557026))))

(declare-fun lt!438110 () ListLongMap!13667)

(assert (=> d!116903 (= res!660919 (contains!5722 lt!438110 (_1!7488 lt!438014)))))

(declare-fun lt!438111 () List!20909)

(assert (=> d!116903 (= lt!438110 (ListLongMap!13668 lt!438111))))

(declare-fun lt!438109 () Unit!32739)

(declare-fun lt!438108 () Unit!32739)

(assert (=> d!116903 (= lt!438109 lt!438108)))

(assert (=> d!116903 (= (getValueByKey!515 lt!438111 (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014)))))

(assert (=> d!116903 (= lt!438108 (lemmaContainsTupThenGetReturnValue!272 lt!438111 (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(assert (=> d!116903 (= lt!438111 (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(assert (=> d!116903 (= (+!3037 lt!438016 lt!438014) lt!438110)))

(declare-fun b!987804 () Bool)

(declare-fun res!660918 () Bool)

(assert (=> b!987804 (=> (not res!660918) (not e!557026))))

(assert (=> b!987804 (= res!660918 (= (getValueByKey!515 (toList!6849 lt!438110) (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014))))))

(declare-fun b!987805 () Bool)

(assert (=> b!987805 (= e!557026 (contains!5723 (toList!6849 lt!438110) lt!438014))))

(assert (= (and d!116903 res!660919) b!987804))

(assert (= (and b!987804 res!660918) b!987805))

(declare-fun m!914693 () Bool)

(assert (=> d!116903 m!914693))

(declare-fun m!914695 () Bool)

(assert (=> d!116903 m!914695))

(declare-fun m!914697 () Bool)

(assert (=> d!116903 m!914697))

(declare-fun m!914699 () Bool)

(assert (=> d!116903 m!914699))

(declare-fun m!914701 () Bool)

(assert (=> b!987804 m!914701))

(declare-fun m!914703 () Bool)

(assert (=> b!987805 m!914703))

(assert (=> b!987693 d!116903))

(declare-fun d!116905 () Bool)

(declare-fun e!557027 () Bool)

(assert (=> d!116905 e!557027))

(declare-fun res!660921 () Bool)

(assert (=> d!116905 (=> (not res!660921) (not e!557027))))

(declare-fun lt!438114 () ListLongMap!13667)

(assert (=> d!116905 (= res!660921 (contains!5722 lt!438114 (_1!7488 lt!438012)))))

(declare-fun lt!438115 () List!20909)

(assert (=> d!116905 (= lt!438114 (ListLongMap!13668 lt!438115))))

(declare-fun lt!438113 () Unit!32739)

(declare-fun lt!438112 () Unit!32739)

(assert (=> d!116905 (= lt!438113 lt!438112)))

(assert (=> d!116905 (= (getValueByKey!515 lt!438115 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(assert (=> d!116905 (= lt!438112 (lemmaContainsTupThenGetReturnValue!272 lt!438115 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116905 (= lt!438115 (insertStrictlySorted!328 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116905 (= (+!3037 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438012) lt!438114)))

(declare-fun b!987806 () Bool)

(declare-fun res!660920 () Bool)

(assert (=> b!987806 (=> (not res!660920) (not e!557027))))

(assert (=> b!987806 (= res!660920 (= (getValueByKey!515 (toList!6849 lt!438114) (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012))))))

(declare-fun b!987807 () Bool)

(assert (=> b!987807 (= e!557027 (contains!5723 (toList!6849 lt!438114) lt!438012))))

(assert (= (and d!116905 res!660921) b!987806))

(assert (= (and b!987806 res!660920) b!987807))

(declare-fun m!914705 () Bool)

(assert (=> d!116905 m!914705))

(declare-fun m!914707 () Bool)

(assert (=> d!116905 m!914707))

(declare-fun m!914709 () Bool)

(assert (=> d!116905 m!914709))

(declare-fun m!914711 () Bool)

(assert (=> d!116905 m!914711))

(declare-fun m!914713 () Bool)

(assert (=> b!987806 m!914713))

(declare-fun m!914715 () Bool)

(assert (=> b!987807 m!914715))

(assert (=> b!987694 d!116905))

(declare-fun d!116907 () Bool)

(declare-fun e!557028 () Bool)

(assert (=> d!116907 e!557028))

(declare-fun res!660923 () Bool)

(assert (=> d!116907 (=> (not res!660923) (not e!557028))))

(declare-fun lt!438118 () ListLongMap!13667)

(assert (=> d!116907 (= res!660923 (contains!5722 lt!438118 (_1!7488 lt!438012)))))

(declare-fun lt!438119 () List!20909)

(assert (=> d!116907 (= lt!438118 (ListLongMap!13668 lt!438119))))

(declare-fun lt!438117 () Unit!32739)

(declare-fun lt!438116 () Unit!32739)

(assert (=> d!116907 (= lt!438117 lt!438116)))

(assert (=> d!116907 (= (getValueByKey!515 lt!438119 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(assert (=> d!116907 (= lt!438116 (lemmaContainsTupThenGetReturnValue!272 lt!438119 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116907 (= lt!438119 (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(assert (=> d!116907 (= (+!3037 lt!438016 lt!438012) lt!438118)))

(declare-fun b!987808 () Bool)

(declare-fun res!660922 () Bool)

(assert (=> b!987808 (=> (not res!660922) (not e!557028))))

(assert (=> b!987808 (= res!660922 (= (getValueByKey!515 (toList!6849 lt!438118) (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012))))))

(declare-fun b!987809 () Bool)

(assert (=> b!987809 (= e!557028 (contains!5723 (toList!6849 lt!438118) lt!438012))))

(assert (= (and d!116907 res!660923) b!987808))

(assert (= (and b!987808 res!660922) b!987809))

(declare-fun m!914717 () Bool)

(assert (=> d!116907 m!914717))

(declare-fun m!914719 () Bool)

(assert (=> d!116907 m!914719))

(declare-fun m!914721 () Bool)

(assert (=> d!116907 m!914721))

(declare-fun m!914723 () Bool)

(assert (=> d!116907 m!914723))

(declare-fun m!914725 () Bool)

(assert (=> b!987808 m!914725))

(declare-fun m!914727 () Bool)

(assert (=> b!987809 m!914727))

(assert (=> b!987694 d!116907))

(declare-fun d!116909 () Bool)

(declare-fun e!557029 () Bool)

(assert (=> d!116909 e!557029))

(declare-fun res!660925 () Bool)

(assert (=> d!116909 (=> (not res!660925) (not e!557029))))

(declare-fun lt!438122 () ListLongMap!13667)

(assert (=> d!116909 (= res!660925 (contains!5722 lt!438122 (_1!7488 lt!438014)))))

(declare-fun lt!438123 () List!20909)

(assert (=> d!116909 (= lt!438122 (ListLongMap!13668 lt!438123))))

(declare-fun lt!438121 () Unit!32739)

(declare-fun lt!438120 () Unit!32739)

(assert (=> d!116909 (= lt!438121 lt!438120)))

(assert (=> d!116909 (= (getValueByKey!515 lt!438123 (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014)))))

(assert (=> d!116909 (= lt!438120 (lemmaContainsTupThenGetReturnValue!272 lt!438123 (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(assert (=> d!116909 (= lt!438123 (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438016 lt!438012)) (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(assert (=> d!116909 (= (+!3037 (+!3037 lt!438016 lt!438012) lt!438014) lt!438122)))

(declare-fun b!987810 () Bool)

(declare-fun res!660924 () Bool)

(assert (=> b!987810 (=> (not res!660924) (not e!557029))))

(assert (=> b!987810 (= res!660924 (= (getValueByKey!515 (toList!6849 lt!438122) (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014))))))

(declare-fun b!987811 () Bool)

(assert (=> b!987811 (= e!557029 (contains!5723 (toList!6849 lt!438122) lt!438014))))

(assert (= (and d!116909 res!660925) b!987810))

(assert (= (and b!987810 res!660924) b!987811))

(declare-fun m!914729 () Bool)

(assert (=> d!116909 m!914729))

(declare-fun m!914731 () Bool)

(assert (=> d!116909 m!914731))

(declare-fun m!914733 () Bool)

(assert (=> d!116909 m!914733))

(declare-fun m!914735 () Bool)

(assert (=> d!116909 m!914735))

(declare-fun m!914737 () Bool)

(assert (=> b!987810 m!914737))

(declare-fun m!914739 () Bool)

(assert (=> b!987811 m!914739))

(assert (=> b!987694 d!116909))

(declare-fun d!116911 () Bool)

(assert (=> d!116911 (= (+!3037 (+!3037 lt!438016 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (+!3037 (+!3037 lt!438016 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun lt!438124 () Unit!32739)

(assert (=> d!116911 (= lt!438124 (choose!1613 lt!438016 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011))))

(assert (=> d!116911 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> d!116911 (= (addCommutativeForDiffKeys!693 lt!438016 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011) lt!438124)))

(declare-fun bs!28024 () Bool)

(assert (= bs!28024 d!116911))

(assert (=> bs!28024 m!914505))

(declare-fun m!914741 () Bool)

(assert (=> bs!28024 m!914741))

(declare-fun m!914743 () Bool)

(assert (=> bs!28024 m!914743))

(assert (=> bs!28024 m!914743))

(declare-fun m!914745 () Bool)

(assert (=> bs!28024 m!914745))

(declare-fun m!914747 () Bool)

(assert (=> bs!28024 m!914747))

(declare-fun m!914749 () Bool)

(assert (=> bs!28024 m!914749))

(assert (=> bs!28024 m!914747))

(assert (=> b!987694 d!116911))

(declare-fun b!987854 () Bool)

(declare-fun res!660949 () Bool)

(declare-fun e!557061 () Bool)

(assert (=> b!987854 (=> (not res!660949) (not e!557061))))

(declare-fun e!557066 () Bool)

(assert (=> b!987854 (= res!660949 e!557066)))

(declare-fun c!100013 () Bool)

(assert (=> b!987854 (= c!100013 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!987855 () Bool)

(declare-fun e!557056 () Bool)

(declare-fun lt!438185 () ListLongMap!13667)

(assert (=> b!987855 (= e!557056 (= (apply!928 lt!438185 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun d!116913 () Bool)

(assert (=> d!116913 e!557061))

(declare-fun res!660945 () Bool)

(assert (=> d!116913 (=> (not res!660945) (not e!557061))))

(assert (=> d!116913 (= res!660945 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))))

(declare-fun lt!438174 () ListLongMap!13667)

(assert (=> d!116913 (= lt!438185 lt!438174)))

(declare-fun lt!438183 () Unit!32739)

(declare-fun e!557059 () Unit!32739)

(assert (=> d!116913 (= lt!438183 e!557059)))

(declare-fun c!100014 () Bool)

(declare-fun e!557058 () Bool)

(assert (=> d!116913 (= c!100014 e!557058)))

(declare-fun res!660946 () Bool)

(assert (=> d!116913 (=> (not res!660946) (not e!557058))))

(assert (=> d!116913 (= res!660946 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun e!557067 () ListLongMap!13667)

(assert (=> d!116913 (= lt!438174 e!557067)))

(declare-fun c!100015 () Bool)

(assert (=> d!116913 (= c!100015 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!116913 (validMask!0 mask!1948)))

(assert (=> d!116913 (= (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438185)))

(declare-fun b!987856 () Bool)

(declare-fun e!557063 () ListLongMap!13667)

(declare-fun call!41838 () ListLongMap!13667)

(assert (=> b!987856 (= e!557063 call!41838)))

(declare-fun b!987857 () Bool)

(declare-fun Unit!32741 () Unit!32739)

(assert (=> b!987857 (= e!557059 Unit!32741)))

(declare-fun b!987858 () Bool)

(declare-fun e!557060 () ListLongMap!13667)

(assert (=> b!987858 (= e!557067 e!557060)))

(declare-fun c!100011 () Bool)

(assert (=> b!987858 (= c!100011 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!987859 () Bool)

(declare-fun e!557064 () Bool)

(assert (=> b!987859 (= e!557064 (= (apply!928 lt!438185 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987859 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30529 _values!1278)))))

(assert (=> b!987859 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun b!987860 () Bool)

(declare-fun e!557062 () Bool)

(assert (=> b!987860 (= e!557062 (= (apply!928 lt!438185 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!987861 () Bool)

(declare-fun lt!438175 () Unit!32739)

(assert (=> b!987861 (= e!557059 lt!438175)))

(declare-fun lt!438184 () ListLongMap!13667)

(assert (=> b!987861 (= lt!438184 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438186 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438186 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438170 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438170 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438178 () Unit!32739)

(declare-fun addStillContains!618 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> b!987861 (= lt!438178 (addStillContains!618 lt!438184 lt!438186 zeroValue!1220 lt!438170))))

(assert (=> b!987861 (contains!5722 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220)) lt!438170)))

(declare-fun lt!438182 () Unit!32739)

(assert (=> b!987861 (= lt!438182 lt!438178)))

(declare-fun lt!438173 () ListLongMap!13667)

(assert (=> b!987861 (= lt!438173 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438179 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438179 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438190 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438190 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438180 () Unit!32739)

(declare-fun addApplyDifferent!470 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> b!987861 (= lt!438180 (addApplyDifferent!470 lt!438173 lt!438179 minValue!1220 lt!438190))))

(assert (=> b!987861 (= (apply!928 (+!3037 lt!438173 (tuple2!14957 lt!438179 minValue!1220)) lt!438190) (apply!928 lt!438173 lt!438190))))

(declare-fun lt!438169 () Unit!32739)

(assert (=> b!987861 (= lt!438169 lt!438180)))

(declare-fun lt!438171 () ListLongMap!13667)

(assert (=> b!987861 (= lt!438171 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438172 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438172 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438176 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438176 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438181 () Unit!32739)

(assert (=> b!987861 (= lt!438181 (addApplyDifferent!470 lt!438171 lt!438172 zeroValue!1220 lt!438176))))

(assert (=> b!987861 (= (apply!928 (+!3037 lt!438171 (tuple2!14957 lt!438172 zeroValue!1220)) lt!438176) (apply!928 lt!438171 lt!438176))))

(declare-fun lt!438188 () Unit!32739)

(assert (=> b!987861 (= lt!438188 lt!438181)))

(declare-fun lt!438177 () ListLongMap!13667)

(assert (=> b!987861 (= lt!438177 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438189 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438189 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438187 () (_ BitVec 64))

(assert (=> b!987861 (= lt!438187 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!987861 (= lt!438175 (addApplyDifferent!470 lt!438177 lt!438189 minValue!1220 lt!438187))))

(assert (=> b!987861 (= (apply!928 (+!3037 lt!438177 (tuple2!14957 lt!438189 minValue!1220)) lt!438187) (apply!928 lt!438177 lt!438187))))

(declare-fun b!987862 () Bool)

(assert (=> b!987862 (= e!557066 e!557062)))

(declare-fun res!660951 () Bool)

(declare-fun call!41833 () Bool)

(assert (=> b!987862 (= res!660951 call!41833)))

(assert (=> b!987862 (=> (not res!660951) (not e!557062))))

(declare-fun b!987863 () Bool)

(declare-fun e!557065 () Bool)

(assert (=> b!987863 (= e!557061 e!557065)))

(declare-fun c!100012 () Bool)

(assert (=> b!987863 (= c!100012 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41829 () Bool)

(declare-fun call!41835 () ListLongMap!13667)

(assert (=> bm!41829 (= call!41835 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun bm!41830 () Bool)

(declare-fun call!41832 () ListLongMap!13667)

(declare-fun call!41834 () ListLongMap!13667)

(assert (=> bm!41830 (= call!41834 (+!3037 (ite c!100015 call!41835 (ite c!100011 call!41832 call!41838)) (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!987864 () Bool)

(declare-fun e!557057 () Bool)

(assert (=> b!987864 (= e!557057 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun bm!41831 () Bool)

(assert (=> bm!41831 (= call!41833 (contains!5722 lt!438185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41832 () Bool)

(declare-fun call!41837 () ListLongMap!13667)

(assert (=> bm!41832 (= call!41837 call!41834)))

(declare-fun bm!41833 () Bool)

(declare-fun call!41836 () Bool)

(assert (=> bm!41833 (= call!41836 (contains!5722 lt!438185 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!987865 () Bool)

(assert (=> b!987865 (= e!557060 call!41837)))

(declare-fun b!987866 () Bool)

(assert (=> b!987866 (= e!557067 (+!3037 call!41834 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun b!987867 () Bool)

(assert (=> b!987867 (= e!557063 call!41837)))

(declare-fun b!987868 () Bool)

(declare-fun e!557068 () Bool)

(assert (=> b!987868 (= e!557068 e!557064)))

(declare-fun res!660944 () Bool)

(assert (=> b!987868 (=> (not res!660944) (not e!557064))))

(assert (=> b!987868 (= res!660944 (contains!5722 lt!438185 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987868 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(declare-fun bm!41834 () Bool)

(assert (=> bm!41834 (= call!41832 call!41835)))

(declare-fun b!987869 () Bool)

(assert (=> b!987869 (= e!557066 (not call!41833))))

(declare-fun b!987870 () Bool)

(declare-fun c!100010 () Bool)

(assert (=> b!987870 (= c!100010 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!987870 (= e!557060 e!557063)))

(declare-fun b!987871 () Bool)

(assert (=> b!987871 (= e!557065 (not call!41836))))

(declare-fun b!987872 () Bool)

(assert (=> b!987872 (= e!557058 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun bm!41835 () Bool)

(assert (=> bm!41835 (= call!41838 call!41832)))

(declare-fun b!987873 () Bool)

(assert (=> b!987873 (= e!557065 e!557056)))

(declare-fun res!660947 () Bool)

(assert (=> b!987873 (= res!660947 call!41836)))

(assert (=> b!987873 (=> (not res!660947) (not e!557056))))

(declare-fun b!987874 () Bool)

(declare-fun res!660948 () Bool)

(assert (=> b!987874 (=> (not res!660948) (not e!557061))))

(assert (=> b!987874 (= res!660948 e!557068)))

(declare-fun res!660950 () Bool)

(assert (=> b!987874 (=> res!660950 e!557068)))

(assert (=> b!987874 (= res!660950 (not e!557057))))

(declare-fun res!660952 () Bool)

(assert (=> b!987874 (=> (not res!660952) (not e!557057))))

(assert (=> b!987874 (= res!660952 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30530 _keys!1544)))))

(assert (= (and d!116913 c!100015) b!987866))

(assert (= (and d!116913 (not c!100015)) b!987858))

(assert (= (and b!987858 c!100011) b!987865))

(assert (= (and b!987858 (not c!100011)) b!987870))

(assert (= (and b!987870 c!100010) b!987867))

(assert (= (and b!987870 (not c!100010)) b!987856))

(assert (= (or b!987867 b!987856) bm!41835))

(assert (= (or b!987865 bm!41835) bm!41834))

(assert (= (or b!987865 b!987867) bm!41832))

(assert (= (or b!987866 bm!41834) bm!41829))

(assert (= (or b!987866 bm!41832) bm!41830))

(assert (= (and d!116913 res!660946) b!987872))

(assert (= (and d!116913 c!100014) b!987861))

(assert (= (and d!116913 (not c!100014)) b!987857))

(assert (= (and d!116913 res!660945) b!987874))

(assert (= (and b!987874 res!660952) b!987864))

(assert (= (and b!987874 (not res!660950)) b!987868))

(assert (= (and b!987868 res!660944) b!987859))

(assert (= (and b!987874 res!660948) b!987854))

(assert (= (and b!987854 c!100013) b!987862))

(assert (= (and b!987854 (not c!100013)) b!987869))

(assert (= (and b!987862 res!660951) b!987860))

(assert (= (or b!987862 b!987869) bm!41831))

(assert (= (and b!987854 res!660949) b!987863))

(assert (= (and b!987863 c!100012) b!987873))

(assert (= (and b!987863 (not c!100012)) b!987871))

(assert (= (and b!987873 res!660947) b!987855))

(assert (= (or b!987873 b!987871) bm!41833))

(declare-fun b_lambda!15079 () Bool)

(assert (=> (not b_lambda!15079) (not b!987859)))

(assert (=> b!987859 t!29850))

(declare-fun b_and!32111 () Bool)

(assert (= b_and!32109 (and (=> t!29850 result!13571) b_and!32111)))

(declare-fun m!914751 () Bool)

(assert (=> b!987866 m!914751))

(assert (=> b!987872 m!914619))

(assert (=> b!987872 m!914619))

(assert (=> b!987872 m!914621))

(assert (=> b!987859 m!914627))

(assert (=> b!987859 m!914525))

(assert (=> b!987859 m!914619))

(declare-fun m!914753 () Bool)

(assert (=> b!987859 m!914753))

(assert (=> b!987859 m!914627))

(assert (=> b!987859 m!914525))

(assert (=> b!987859 m!914629))

(assert (=> b!987859 m!914619))

(declare-fun m!914755 () Bool)

(assert (=> bm!41830 m!914755))

(declare-fun m!914757 () Bool)

(assert (=> bm!41833 m!914757))

(assert (=> b!987868 m!914619))

(assert (=> b!987868 m!914619))

(declare-fun m!914759 () Bool)

(assert (=> b!987868 m!914759))

(assert (=> b!987864 m!914619))

(assert (=> b!987864 m!914619))

(assert (=> b!987864 m!914621))

(assert (=> bm!41829 m!914517))

(declare-fun m!914761 () Bool)

(assert (=> b!987860 m!914761))

(declare-fun m!914763 () Bool)

(assert (=> b!987855 m!914763))

(declare-fun m!914765 () Bool)

(assert (=> b!987861 m!914765))

(assert (=> b!987861 m!914765))

(declare-fun m!914767 () Bool)

(assert (=> b!987861 m!914767))

(declare-fun m!914769 () Bool)

(assert (=> b!987861 m!914769))

(declare-fun m!914771 () Bool)

(assert (=> b!987861 m!914771))

(declare-fun m!914773 () Bool)

(assert (=> b!987861 m!914773))

(declare-fun m!914775 () Bool)

(assert (=> b!987861 m!914775))

(declare-fun m!914777 () Bool)

(assert (=> b!987861 m!914777))

(declare-fun m!914779 () Bool)

(assert (=> b!987861 m!914779))

(assert (=> b!987861 m!914619))

(declare-fun m!914781 () Bool)

(assert (=> b!987861 m!914781))

(declare-fun m!914783 () Bool)

(assert (=> b!987861 m!914783))

(declare-fun m!914785 () Bool)

(assert (=> b!987861 m!914785))

(assert (=> b!987861 m!914517))

(assert (=> b!987861 m!914781))

(declare-fun m!914787 () Bool)

(assert (=> b!987861 m!914787))

(declare-fun m!914789 () Bool)

(assert (=> b!987861 m!914789))

(declare-fun m!914791 () Bool)

(assert (=> b!987861 m!914791))

(declare-fun m!914793 () Bool)

(assert (=> b!987861 m!914793))

(assert (=> b!987861 m!914773))

(assert (=> b!987861 m!914789))

(assert (=> d!116913 m!914497))

(declare-fun m!914795 () Bool)

(assert (=> bm!41831 m!914795))

(assert (=> b!987694 d!116913))

(declare-fun b!987875 () Bool)

(declare-fun res!660958 () Bool)

(declare-fun e!557074 () Bool)

(assert (=> b!987875 (=> (not res!660958) (not e!557074))))

(declare-fun e!557079 () Bool)

(assert (=> b!987875 (= res!660958 e!557079)))

(declare-fun c!100019 () Bool)

(assert (=> b!987875 (= c!100019 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!987876 () Bool)

(declare-fun e!557069 () Bool)

(declare-fun lt!438207 () ListLongMap!13667)

(assert (=> b!987876 (= e!557069 (= (apply!928 lt!438207 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun d!116915 () Bool)

(assert (=> d!116915 e!557074))

(declare-fun res!660954 () Bool)

(assert (=> d!116915 (=> (not res!660954) (not e!557074))))

(assert (=> d!116915 (= res!660954 (or (bvsge from!1932 (size!30530 _keys!1544)) (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544)))))))

(declare-fun lt!438196 () ListLongMap!13667)

(assert (=> d!116915 (= lt!438207 lt!438196)))

(declare-fun lt!438205 () Unit!32739)

(declare-fun e!557072 () Unit!32739)

(assert (=> d!116915 (= lt!438205 e!557072)))

(declare-fun c!100020 () Bool)

(declare-fun e!557071 () Bool)

(assert (=> d!116915 (= c!100020 e!557071)))

(declare-fun res!660955 () Bool)

(assert (=> d!116915 (=> (not res!660955) (not e!557071))))

(assert (=> d!116915 (= res!660955 (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun e!557080 () ListLongMap!13667)

(assert (=> d!116915 (= lt!438196 e!557080)))

(declare-fun c!100021 () Bool)

(assert (=> d!116915 (= c!100021 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!116915 (validMask!0 mask!1948)))

(assert (=> d!116915 (= (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!438207)))

(declare-fun b!987877 () Bool)

(declare-fun e!557076 () ListLongMap!13667)

(declare-fun call!41845 () ListLongMap!13667)

(assert (=> b!987877 (= e!557076 call!41845)))

(declare-fun b!987878 () Bool)

(declare-fun Unit!32742 () Unit!32739)

(assert (=> b!987878 (= e!557072 Unit!32742)))

(declare-fun b!987879 () Bool)

(declare-fun e!557073 () ListLongMap!13667)

(assert (=> b!987879 (= e!557080 e!557073)))

(declare-fun c!100017 () Bool)

(assert (=> b!987879 (= c!100017 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!987880 () Bool)

(declare-fun e!557077 () Bool)

(assert (=> b!987880 (= e!557077 (= (apply!928 lt!438207 (select (arr!30050 _keys!1544) from!1932)) (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987880 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30529 _values!1278)))))

(assert (=> b!987880 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun b!987881 () Bool)

(declare-fun e!557075 () Bool)

(assert (=> b!987881 (= e!557075 (= (apply!928 lt!438207 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!987882 () Bool)

(declare-fun lt!438197 () Unit!32739)

(assert (=> b!987882 (= e!557072 lt!438197)))

(declare-fun lt!438206 () ListLongMap!13667)

(assert (=> b!987882 (= lt!438206 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438208 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438208 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438192 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438192 (select (arr!30050 _keys!1544) from!1932))))

(declare-fun lt!438200 () Unit!32739)

(assert (=> b!987882 (= lt!438200 (addStillContains!618 lt!438206 lt!438208 zeroValue!1220 lt!438192))))

(assert (=> b!987882 (contains!5722 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220)) lt!438192)))

(declare-fun lt!438204 () Unit!32739)

(assert (=> b!987882 (= lt!438204 lt!438200)))

(declare-fun lt!438195 () ListLongMap!13667)

(assert (=> b!987882 (= lt!438195 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438201 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438201 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438212 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438212 (select (arr!30050 _keys!1544) from!1932))))

(declare-fun lt!438202 () Unit!32739)

(assert (=> b!987882 (= lt!438202 (addApplyDifferent!470 lt!438195 lt!438201 minValue!1220 lt!438212))))

(assert (=> b!987882 (= (apply!928 (+!3037 lt!438195 (tuple2!14957 lt!438201 minValue!1220)) lt!438212) (apply!928 lt!438195 lt!438212))))

(declare-fun lt!438191 () Unit!32739)

(assert (=> b!987882 (= lt!438191 lt!438202)))

(declare-fun lt!438193 () ListLongMap!13667)

(assert (=> b!987882 (= lt!438193 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438194 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438194 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438198 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438198 (select (arr!30050 _keys!1544) from!1932))))

(declare-fun lt!438203 () Unit!32739)

(assert (=> b!987882 (= lt!438203 (addApplyDifferent!470 lt!438193 lt!438194 zeroValue!1220 lt!438198))))

(assert (=> b!987882 (= (apply!928 (+!3037 lt!438193 (tuple2!14957 lt!438194 zeroValue!1220)) lt!438198) (apply!928 lt!438193 lt!438198))))

(declare-fun lt!438210 () Unit!32739)

(assert (=> b!987882 (= lt!438210 lt!438203)))

(declare-fun lt!438199 () ListLongMap!13667)

(assert (=> b!987882 (= lt!438199 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438211 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438211 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438209 () (_ BitVec 64))

(assert (=> b!987882 (= lt!438209 (select (arr!30050 _keys!1544) from!1932))))

(assert (=> b!987882 (= lt!438197 (addApplyDifferent!470 lt!438199 lt!438211 minValue!1220 lt!438209))))

(assert (=> b!987882 (= (apply!928 (+!3037 lt!438199 (tuple2!14957 lt!438211 minValue!1220)) lt!438209) (apply!928 lt!438199 lt!438209))))

(declare-fun b!987883 () Bool)

(assert (=> b!987883 (= e!557079 e!557075)))

(declare-fun res!660960 () Bool)

(declare-fun call!41840 () Bool)

(assert (=> b!987883 (= res!660960 call!41840)))

(assert (=> b!987883 (=> (not res!660960) (not e!557075))))

(declare-fun b!987884 () Bool)

(declare-fun e!557078 () Bool)

(assert (=> b!987884 (= e!557074 e!557078)))

(declare-fun c!100018 () Bool)

(assert (=> b!987884 (= c!100018 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41836 () Bool)

(declare-fun call!41842 () ListLongMap!13667)

(assert (=> bm!41836 (= call!41842 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun bm!41837 () Bool)

(declare-fun call!41841 () ListLongMap!13667)

(declare-fun call!41839 () ListLongMap!13667)

(assert (=> bm!41837 (= call!41841 (+!3037 (ite c!100021 call!41842 (ite c!100017 call!41839 call!41845)) (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!987885 () Bool)

(declare-fun e!557070 () Bool)

(assert (=> b!987885 (= e!557070 (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)))))

(declare-fun bm!41838 () Bool)

(assert (=> bm!41838 (= call!41840 (contains!5722 lt!438207 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41839 () Bool)

(declare-fun call!41844 () ListLongMap!13667)

(assert (=> bm!41839 (= call!41844 call!41841)))

(declare-fun bm!41840 () Bool)

(declare-fun call!41843 () Bool)

(assert (=> bm!41840 (= call!41843 (contains!5722 lt!438207 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!987886 () Bool)

(assert (=> b!987886 (= e!557073 call!41844)))

(declare-fun b!987887 () Bool)

(assert (=> b!987887 (= e!557080 (+!3037 call!41841 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun b!987888 () Bool)

(assert (=> b!987888 (= e!557076 call!41844)))

(declare-fun b!987889 () Bool)

(declare-fun e!557081 () Bool)

(assert (=> b!987889 (= e!557081 e!557077)))

(declare-fun res!660953 () Bool)

(assert (=> b!987889 (=> (not res!660953) (not e!557077))))

(assert (=> b!987889 (= res!660953 (contains!5722 lt!438207 (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> b!987889 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun bm!41841 () Bool)

(assert (=> bm!41841 (= call!41839 call!41842)))

(declare-fun b!987890 () Bool)

(assert (=> b!987890 (= e!557079 (not call!41840))))

(declare-fun b!987891 () Bool)

(declare-fun c!100016 () Bool)

(assert (=> b!987891 (= c!100016 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!987891 (= e!557073 e!557076)))

(declare-fun b!987892 () Bool)

(assert (=> b!987892 (= e!557078 (not call!41843))))

(declare-fun b!987893 () Bool)

(assert (=> b!987893 (= e!557071 (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)))))

(declare-fun bm!41842 () Bool)

(assert (=> bm!41842 (= call!41845 call!41839)))

(declare-fun b!987894 () Bool)

(assert (=> b!987894 (= e!557078 e!557069)))

(declare-fun res!660956 () Bool)

(assert (=> b!987894 (= res!660956 call!41843)))

(assert (=> b!987894 (=> (not res!660956) (not e!557069))))

(declare-fun b!987895 () Bool)

(declare-fun res!660957 () Bool)

(assert (=> b!987895 (=> (not res!660957) (not e!557074))))

(assert (=> b!987895 (= res!660957 e!557081)))

(declare-fun res!660959 () Bool)

(assert (=> b!987895 (=> res!660959 e!557081)))

(assert (=> b!987895 (= res!660959 (not e!557070))))

(declare-fun res!660961 () Bool)

(assert (=> b!987895 (=> (not res!660961) (not e!557070))))

(assert (=> b!987895 (= res!660961 (bvslt from!1932 (size!30530 _keys!1544)))))

(assert (= (and d!116915 c!100021) b!987887))

(assert (= (and d!116915 (not c!100021)) b!987879))

(assert (= (and b!987879 c!100017) b!987886))

(assert (= (and b!987879 (not c!100017)) b!987891))

(assert (= (and b!987891 c!100016) b!987888))

(assert (= (and b!987891 (not c!100016)) b!987877))

(assert (= (or b!987888 b!987877) bm!41842))

(assert (= (or b!987886 bm!41842) bm!41841))

(assert (= (or b!987886 b!987888) bm!41839))

(assert (= (or b!987887 bm!41841) bm!41836))

(assert (= (or b!987887 bm!41839) bm!41837))

(assert (= (and d!116915 res!660955) b!987893))

(assert (= (and d!116915 c!100020) b!987882))

(assert (= (and d!116915 (not c!100020)) b!987878))

(assert (= (and d!116915 res!660954) b!987895))

(assert (= (and b!987895 res!660961) b!987885))

(assert (= (and b!987895 (not res!660959)) b!987889))

(assert (= (and b!987889 res!660953) b!987880))

(assert (= (and b!987895 res!660957) b!987875))

(assert (= (and b!987875 c!100019) b!987883))

(assert (= (and b!987875 (not c!100019)) b!987890))

(assert (= (and b!987883 res!660960) b!987881))

(assert (= (or b!987883 b!987890) bm!41838))

(assert (= (and b!987875 res!660958) b!987884))

(assert (= (and b!987884 c!100018) b!987894))

(assert (= (and b!987884 (not c!100018)) b!987892))

(assert (= (and b!987894 res!660956) b!987876))

(assert (= (or b!987894 b!987892) bm!41840))

(declare-fun b_lambda!15081 () Bool)

(assert (=> (not b_lambda!15081) (not b!987880)))

(assert (=> b!987880 t!29850))

(declare-fun b_and!32113 () Bool)

(assert (= b_and!32111 (and (=> t!29850 result!13571) b_and!32113)))

(declare-fun m!914797 () Bool)

(assert (=> b!987887 m!914797))

(assert (=> b!987893 m!914505))

(assert (=> b!987893 m!914505))

(assert (=> b!987893 m!914507))

(assert (=> b!987880 m!914509))

(assert (=> b!987880 m!914525))

(assert (=> b!987880 m!914505))

(declare-fun m!914799 () Bool)

(assert (=> b!987880 m!914799))

(assert (=> b!987880 m!914509))

(assert (=> b!987880 m!914525))

(assert (=> b!987880 m!914527))

(assert (=> b!987880 m!914505))

(declare-fun m!914801 () Bool)

(assert (=> bm!41837 m!914801))

(declare-fun m!914803 () Bool)

(assert (=> bm!41840 m!914803))

(assert (=> b!987889 m!914505))

(assert (=> b!987889 m!914505))

(declare-fun m!914805 () Bool)

(assert (=> b!987889 m!914805))

(assert (=> b!987885 m!914505))

(assert (=> b!987885 m!914505))

(assert (=> b!987885 m!914507))

(declare-fun m!914807 () Bool)

(assert (=> bm!41836 m!914807))

(declare-fun m!914809 () Bool)

(assert (=> b!987881 m!914809))

(declare-fun m!914811 () Bool)

(assert (=> b!987876 m!914811))

(declare-fun m!914813 () Bool)

(assert (=> b!987882 m!914813))

(assert (=> b!987882 m!914813))

(declare-fun m!914815 () Bool)

(assert (=> b!987882 m!914815))

(declare-fun m!914817 () Bool)

(assert (=> b!987882 m!914817))

(declare-fun m!914819 () Bool)

(assert (=> b!987882 m!914819))

(declare-fun m!914821 () Bool)

(assert (=> b!987882 m!914821))

(declare-fun m!914823 () Bool)

(assert (=> b!987882 m!914823))

(declare-fun m!914825 () Bool)

(assert (=> b!987882 m!914825))

(declare-fun m!914827 () Bool)

(assert (=> b!987882 m!914827))

(assert (=> b!987882 m!914505))

(declare-fun m!914829 () Bool)

(assert (=> b!987882 m!914829))

(declare-fun m!914831 () Bool)

(assert (=> b!987882 m!914831))

(declare-fun m!914833 () Bool)

(assert (=> b!987882 m!914833))

(assert (=> b!987882 m!914807))

(assert (=> b!987882 m!914829))

(declare-fun m!914835 () Bool)

(assert (=> b!987882 m!914835))

(declare-fun m!914837 () Bool)

(assert (=> b!987882 m!914837))

(declare-fun m!914839 () Bool)

(assert (=> b!987882 m!914839))

(declare-fun m!914841 () Bool)

(assert (=> b!987882 m!914841))

(assert (=> b!987882 m!914821))

(assert (=> b!987882 m!914837))

(assert (=> d!116915 m!914497))

(declare-fun m!914843 () Bool)

(assert (=> bm!41838 m!914843))

(assert (=> b!987694 d!116915))

(declare-fun d!116917 () Bool)

(assert (=> d!116917 (= (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)) (and (not (= (select (arr!30050 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30050 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987698 d!116917))

(declare-fun b!987906 () Bool)

(declare-fun e!557093 () Bool)

(declare-fun e!557092 () Bool)

(assert (=> b!987906 (= e!557093 e!557092)))

(declare-fun res!660968 () Bool)

(assert (=> b!987906 (=> (not res!660968) (not e!557092))))

(declare-fun e!557091 () Bool)

(assert (=> b!987906 (= res!660968 (not e!557091))))

(declare-fun res!660969 () Bool)

(assert (=> b!987906 (=> (not res!660969) (not e!557091))))

(assert (=> b!987906 (= res!660969 (validKeyInArray!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!987907 () Bool)

(declare-fun e!557090 () Bool)

(assert (=> b!987907 (= e!557092 e!557090)))

(declare-fun c!100024 () Bool)

(assert (=> b!987907 (= c!100024 (validKeyInArray!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!987908 () Bool)

(declare-fun call!41848 () Bool)

(assert (=> b!987908 (= e!557090 call!41848)))

(declare-fun d!116919 () Bool)

(declare-fun res!660970 () Bool)

(assert (=> d!116919 (=> res!660970 e!557093)))

(assert (=> d!116919 (= res!660970 (bvsge #b00000000000000000000000000000000 (size!30530 _keys!1544)))))

(assert (=> d!116919 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20905) e!557093)))

(declare-fun b!987909 () Bool)

(declare-fun contains!5724 (List!20908 (_ BitVec 64)) Bool)

(assert (=> b!987909 (= e!557091 (contains!5724 Nil!20905 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun bm!41845 () Bool)

(assert (=> bm!41845 (= call!41848 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100024 (Cons!20904 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) Nil!20905) Nil!20905)))))

(declare-fun b!987910 () Bool)

(assert (=> b!987910 (= e!557090 call!41848)))

(assert (= (and d!116919 (not res!660970)) b!987906))

(assert (= (and b!987906 res!660969) b!987909))

(assert (= (and b!987906 res!660968) b!987907))

(assert (= (and b!987907 c!100024) b!987910))

(assert (= (and b!987907 (not c!100024)) b!987908))

(assert (= (or b!987910 b!987908) bm!41845))

(assert (=> b!987906 m!914591))

(assert (=> b!987906 m!914591))

(assert (=> b!987906 m!914601))

(assert (=> b!987907 m!914591))

(assert (=> b!987907 m!914591))

(assert (=> b!987907 m!914601))

(assert (=> b!987909 m!914591))

(assert (=> b!987909 m!914591))

(declare-fun m!914845 () Bool)

(assert (=> b!987909 m!914845))

(assert (=> bm!41845 m!914591))

(declare-fun m!914847 () Bool)

(assert (=> bm!41845 m!914847))

(assert (=> b!987691 d!116919))

(declare-fun b!987917 () Bool)

(declare-fun e!557098 () Bool)

(assert (=> b!987917 (= e!557098 tp_is_empty!23223)))

(declare-fun b!987918 () Bool)

(declare-fun e!557099 () Bool)

(assert (=> b!987918 (= e!557099 tp_is_empty!23223)))

(declare-fun mapNonEmpty!36875 () Bool)

(declare-fun mapRes!36875 () Bool)

(declare-fun tp!69812 () Bool)

(assert (=> mapNonEmpty!36875 (= mapRes!36875 (and tp!69812 e!557098))))

(declare-fun mapKey!36875 () (_ BitVec 32))

(declare-fun mapRest!36875 () (Array (_ BitVec 32) ValueCell!11130))

(declare-fun mapValue!36875 () ValueCell!11130)

(assert (=> mapNonEmpty!36875 (= mapRest!36869 (store mapRest!36875 mapKey!36875 mapValue!36875))))

(declare-fun condMapEmpty!36875 () Bool)

(declare-fun mapDefault!36875 () ValueCell!11130)

(assert (=> mapNonEmpty!36869 (= condMapEmpty!36875 (= mapRest!36869 ((as const (Array (_ BitVec 32) ValueCell!11130)) mapDefault!36875)))))

(assert (=> mapNonEmpty!36869 (= tp!69803 (and e!557099 mapRes!36875))))

(declare-fun mapIsEmpty!36875 () Bool)

(assert (=> mapIsEmpty!36875 mapRes!36875))

(assert (= (and mapNonEmpty!36869 condMapEmpty!36875) mapIsEmpty!36875))

(assert (= (and mapNonEmpty!36869 (not condMapEmpty!36875)) mapNonEmpty!36875))

(assert (= (and mapNonEmpty!36875 ((_ is ValueCellFull!11130) mapValue!36875)) b!987917))

(assert (= (and mapNonEmpty!36869 ((_ is ValueCellFull!11130) mapDefault!36875)) b!987918))

(declare-fun m!914849 () Bool)

(assert (=> mapNonEmpty!36875 m!914849))

(declare-fun b_lambda!15083 () Bool)

(assert (= b_lambda!15075 (or (and start!84484 b_free!20007) b_lambda!15083)))

(declare-fun b_lambda!15085 () Bool)

(assert (= b_lambda!15077 (or (and start!84484 b_free!20007) b_lambda!15085)))

(declare-fun b_lambda!15087 () Bool)

(assert (= b_lambda!15081 (or (and start!84484 b_free!20007) b_lambda!15087)))

(declare-fun b_lambda!15089 () Bool)

(assert (= b_lambda!15079 (or (and start!84484 b_free!20007) b_lambda!15089)))

(check-sat (not b!987868) (not b!987859) (not d!116895) (not b_lambda!15089) (not b!987861) (not mapNonEmpty!36875) (not b!987797) (not bm!41838) (not b_next!20007) (not b!987754) (not b!987793) (not b!987802) (not b!987792) (not d!116897) (not d!116905) (not b!987786) (not d!116911) (not d!116889) (not b!987885) (not b!987805) (not b!987866) (not b!987810) (not b!987880) (not b!987798) (not b!987799) (not bm!41845) (not d!116915) (not b!987882) (not b!987872) (not b!987800) (not bm!41836) (not b!987801) (not b!987906) (not b!987876) (not bm!41830) (not b!987789) (not b!987864) (not d!116907) (not b!987889) (not d!116901) (not b!987809) (not b!987748) (not b!987804) (not b_lambda!15073) (not b!987791) (not b!987803) (not bm!41840) (not b!987811) (not b!987746) (not b!987808) (not bm!41837) (not b_lambda!15083) (not b!987893) (not d!116913) (not bm!41811) (not bm!41831) b_and!32113 (not b_lambda!15085) (not b!987887) (not d!116909) (not b!987909) (not d!116893) (not b!987881) (not d!116903) tp_is_empty!23223 (not b!987761) (not b!987860) (not bm!41814) (not b!987794) (not b!987807) (not b!987760) (not bm!41829) (not b_lambda!15087) (not bm!41833) (not b!987806) (not b!987755) (not d!116899) (not b!987855) (not b!987907) (not b!987787))
(check-sat b_and!32113 (not b_next!20007))
(get-model)

(declare-fun b!987930 () Bool)

(declare-fun e!557105 () Option!521)

(assert (=> b!987930 (= e!557105 None!519)))

(declare-fun b!987927 () Bool)

(declare-fun e!557104 () Option!521)

(assert (=> b!987927 (= e!557104 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438102)))))))

(declare-fun d!116921 () Bool)

(declare-fun c!100029 () Bool)

(assert (=> d!116921 (= c!100029 (and ((_ is Cons!20905) (toList!6849 lt!438102)) (= (_1!7488 (h!22067 (toList!6849 lt!438102))) (_1!7488 lt!438013))))))

(assert (=> d!116921 (= (getValueByKey!515 (toList!6849 lt!438102) (_1!7488 lt!438013)) e!557104)))

(declare-fun b!987929 () Bool)

(assert (=> b!987929 (= e!557105 (getValueByKey!515 (t!29852 (toList!6849 lt!438102)) (_1!7488 lt!438013)))))

(declare-fun b!987928 () Bool)

(assert (=> b!987928 (= e!557104 e!557105)))

(declare-fun c!100030 () Bool)

(assert (=> b!987928 (= c!100030 (and ((_ is Cons!20905) (toList!6849 lt!438102)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438102))) (_1!7488 lt!438013)))))))

(assert (= (and d!116921 c!100029) b!987927))

(assert (= (and d!116921 (not c!100029)) b!987928))

(assert (= (and b!987928 c!100030) b!987929))

(assert (= (and b!987928 (not c!100030)) b!987930))

(declare-fun m!914851 () Bool)

(assert (=> b!987929 m!914851))

(assert (=> b!987800 d!116921))

(declare-fun d!116923 () Bool)

(declare-fun e!557110 () Bool)

(assert (=> d!116923 e!557110))

(declare-fun res!660973 () Bool)

(assert (=> d!116923 (=> res!660973 e!557110)))

(declare-fun lt!438224 () Bool)

(assert (=> d!116923 (= res!660973 (not lt!438224))))

(declare-fun lt!438222 () Bool)

(assert (=> d!116923 (= lt!438224 lt!438222)))

(declare-fun lt!438221 () Unit!32739)

(declare-fun e!557111 () Unit!32739)

(assert (=> d!116923 (= lt!438221 e!557111)))

(declare-fun c!100033 () Bool)

(assert (=> d!116923 (= c!100033 lt!438222)))

(declare-fun containsKey!478 (List!20909 (_ BitVec 64)) Bool)

(assert (=> d!116923 (= lt!438222 (containsKey!478 (toList!6849 lt!438122) (_1!7488 lt!438014)))))

(assert (=> d!116923 (= (contains!5722 lt!438122 (_1!7488 lt!438014)) lt!438224)))

(declare-fun b!987937 () Bool)

(declare-fun lt!438223 () Unit!32739)

(assert (=> b!987937 (= e!557111 lt!438223)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!373 (List!20909 (_ BitVec 64)) Unit!32739)

(assert (=> b!987937 (= lt!438223 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438122) (_1!7488 lt!438014)))))

(declare-fun isDefined!383 (Option!521) Bool)

(assert (=> b!987937 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438122) (_1!7488 lt!438014)))))

(declare-fun b!987938 () Bool)

(declare-fun Unit!32743 () Unit!32739)

(assert (=> b!987938 (= e!557111 Unit!32743)))

(declare-fun b!987939 () Bool)

(assert (=> b!987939 (= e!557110 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438122) (_1!7488 lt!438014))))))

(assert (= (and d!116923 c!100033) b!987937))

(assert (= (and d!116923 (not c!100033)) b!987938))

(assert (= (and d!116923 (not res!660973)) b!987939))

(declare-fun m!914853 () Bool)

(assert (=> d!116923 m!914853))

(declare-fun m!914855 () Bool)

(assert (=> b!987937 m!914855))

(assert (=> b!987937 m!914737))

(assert (=> b!987937 m!914737))

(declare-fun m!914857 () Bool)

(assert (=> b!987937 m!914857))

(assert (=> b!987939 m!914737))

(assert (=> b!987939 m!914737))

(assert (=> b!987939 m!914857))

(assert (=> d!116909 d!116923))

(declare-fun b!987943 () Bool)

(declare-fun e!557113 () Option!521)

(assert (=> b!987943 (= e!557113 None!519)))

(declare-fun b!987940 () Bool)

(declare-fun e!557112 () Option!521)

(assert (=> b!987940 (= e!557112 (Some!520 (_2!7488 (h!22067 lt!438123))))))

(declare-fun d!116925 () Bool)

(declare-fun c!100034 () Bool)

(assert (=> d!116925 (= c!100034 (and ((_ is Cons!20905) lt!438123) (= (_1!7488 (h!22067 lt!438123)) (_1!7488 lt!438014))))))

(assert (=> d!116925 (= (getValueByKey!515 lt!438123 (_1!7488 lt!438014)) e!557112)))

(declare-fun b!987942 () Bool)

(assert (=> b!987942 (= e!557113 (getValueByKey!515 (t!29852 lt!438123) (_1!7488 lt!438014)))))

(declare-fun b!987941 () Bool)

(assert (=> b!987941 (= e!557112 e!557113)))

(declare-fun c!100035 () Bool)

(assert (=> b!987941 (= c!100035 (and ((_ is Cons!20905) lt!438123) (not (= (_1!7488 (h!22067 lt!438123)) (_1!7488 lt!438014)))))))

(assert (= (and d!116925 c!100034) b!987940))

(assert (= (and d!116925 (not c!100034)) b!987941))

(assert (= (and b!987941 c!100035) b!987942))

(assert (= (and b!987941 (not c!100035)) b!987943))

(declare-fun m!914859 () Bool)

(assert (=> b!987942 m!914859))

(assert (=> d!116909 d!116925))

(declare-fun d!116927 () Bool)

(assert (=> d!116927 (= (getValueByKey!515 lt!438123 (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014)))))

(declare-fun lt!438227 () Unit!32739)

(declare-fun choose!1614 (List!20909 (_ BitVec 64) V!35947) Unit!32739)

(assert (=> d!116927 (= lt!438227 (choose!1614 lt!438123 (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(declare-fun e!557116 () Bool)

(assert (=> d!116927 e!557116))

(declare-fun res!660978 () Bool)

(assert (=> d!116927 (=> (not res!660978) (not e!557116))))

(declare-fun isStrictlySorted!511 (List!20909) Bool)

(assert (=> d!116927 (= res!660978 (isStrictlySorted!511 lt!438123))))

(assert (=> d!116927 (= (lemmaContainsTupThenGetReturnValue!272 lt!438123 (_1!7488 lt!438014) (_2!7488 lt!438014)) lt!438227)))

(declare-fun b!987948 () Bool)

(declare-fun res!660979 () Bool)

(assert (=> b!987948 (=> (not res!660979) (not e!557116))))

(assert (=> b!987948 (= res!660979 (containsKey!478 lt!438123 (_1!7488 lt!438014)))))

(declare-fun b!987949 () Bool)

(assert (=> b!987949 (= e!557116 (contains!5723 lt!438123 (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014))))))

(assert (= (and d!116927 res!660978) b!987948))

(assert (= (and b!987948 res!660979) b!987949))

(assert (=> d!116927 m!914731))

(declare-fun m!914861 () Bool)

(assert (=> d!116927 m!914861))

(declare-fun m!914863 () Bool)

(assert (=> d!116927 m!914863))

(declare-fun m!914865 () Bool)

(assert (=> b!987948 m!914865))

(declare-fun m!914867 () Bool)

(assert (=> b!987949 m!914867))

(assert (=> d!116909 d!116927))

(declare-fun b!987970 () Bool)

(declare-fun e!557128 () List!20909)

(declare-fun e!557129 () List!20909)

(assert (=> b!987970 (= e!557128 e!557129)))

(declare-fun c!100047 () Bool)

(assert (=> b!987970 (= c!100047 (and ((_ is Cons!20905) (toList!6849 (+!3037 lt!438016 lt!438012))) (= (_1!7488 (h!22067 (toList!6849 (+!3037 lt!438016 lt!438012)))) (_1!7488 lt!438014))))))

(declare-fun b!987971 () Bool)

(declare-fun c!100045 () Bool)

(assert (=> b!987971 (= c!100045 (and ((_ is Cons!20905) (toList!6849 (+!3037 lt!438016 lt!438012))) (bvsgt (_1!7488 (h!22067 (toList!6849 (+!3037 lt!438016 lt!438012)))) (_1!7488 lt!438014))))))

(declare-fun e!557127 () List!20909)

(assert (=> b!987971 (= e!557129 e!557127)))

(declare-fun b!987972 () Bool)

(declare-fun res!660985 () Bool)

(declare-fun e!557131 () Bool)

(assert (=> b!987972 (=> (not res!660985) (not e!557131))))

(declare-fun lt!438230 () List!20909)

(assert (=> b!987972 (= res!660985 (containsKey!478 lt!438230 (_1!7488 lt!438014)))))

(declare-fun b!987974 () Bool)

(declare-fun call!41856 () List!20909)

(assert (=> b!987974 (= e!557127 call!41856)))

(declare-fun b!987975 () Bool)

(assert (=> b!987975 (= e!557131 (contains!5723 lt!438230 (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014))))))

(declare-fun b!987976 () Bool)

(declare-fun call!41855 () List!20909)

(assert (=> b!987976 (= e!557129 call!41855)))

(declare-fun b!987977 () Bool)

(declare-fun e!557130 () List!20909)

(assert (=> b!987977 (= e!557130 (insertStrictlySorted!328 (t!29852 (toList!6849 (+!3037 lt!438016 lt!438012))) (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(declare-fun call!41857 () List!20909)

(declare-fun bm!41852 () Bool)

(declare-fun c!100046 () Bool)

(declare-fun $colon$colon!555 (List!20909 tuple2!14956) List!20909)

(assert (=> bm!41852 (= call!41857 ($colon$colon!555 e!557130 (ite c!100046 (h!22067 (toList!6849 (+!3037 lt!438016 lt!438012))) (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014)))))))

(declare-fun c!100044 () Bool)

(assert (=> bm!41852 (= c!100044 c!100046)))

(declare-fun bm!41853 () Bool)

(assert (=> bm!41853 (= call!41856 call!41855)))

(declare-fun bm!41854 () Bool)

(assert (=> bm!41854 (= call!41855 call!41857)))

(declare-fun b!987978 () Bool)

(assert (=> b!987978 (= e!557130 (ite c!100047 (t!29852 (toList!6849 (+!3037 lt!438016 lt!438012))) (ite c!100045 (Cons!20905 (h!22067 (toList!6849 (+!3037 lt!438016 lt!438012))) (t!29852 (toList!6849 (+!3037 lt!438016 lt!438012)))) Nil!20906)))))

(declare-fun b!987979 () Bool)

(assert (=> b!987979 (= e!557127 call!41856)))

(declare-fun b!987973 () Bool)

(assert (=> b!987973 (= e!557128 call!41857)))

(declare-fun d!116929 () Bool)

(assert (=> d!116929 e!557131))

(declare-fun res!660984 () Bool)

(assert (=> d!116929 (=> (not res!660984) (not e!557131))))

(assert (=> d!116929 (= res!660984 (isStrictlySorted!511 lt!438230))))

(assert (=> d!116929 (= lt!438230 e!557128)))

(assert (=> d!116929 (= c!100046 (and ((_ is Cons!20905) (toList!6849 (+!3037 lt!438016 lt!438012))) (bvslt (_1!7488 (h!22067 (toList!6849 (+!3037 lt!438016 lt!438012)))) (_1!7488 lt!438014))))))

(assert (=> d!116929 (isStrictlySorted!511 (toList!6849 (+!3037 lt!438016 lt!438012)))))

(assert (=> d!116929 (= (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438016 lt!438012)) (_1!7488 lt!438014) (_2!7488 lt!438014)) lt!438230)))

(assert (= (and d!116929 c!100046) b!987973))

(assert (= (and d!116929 (not c!100046)) b!987970))

(assert (= (and b!987970 c!100047) b!987976))

(assert (= (and b!987970 (not c!100047)) b!987971))

(assert (= (and b!987971 c!100045) b!987979))

(assert (= (and b!987971 (not c!100045)) b!987974))

(assert (= (or b!987979 b!987974) bm!41853))

(assert (= (or b!987976 bm!41853) bm!41854))

(assert (= (or b!987973 bm!41854) bm!41852))

(assert (= (and bm!41852 c!100044) b!987977))

(assert (= (and bm!41852 (not c!100044)) b!987978))

(assert (= (and d!116929 res!660984) b!987972))

(assert (= (and b!987972 res!660985) b!987975))

(declare-fun m!914869 () Bool)

(assert (=> bm!41852 m!914869))

(declare-fun m!914871 () Bool)

(assert (=> b!987972 m!914871))

(declare-fun m!914873 () Bool)

(assert (=> d!116929 m!914873))

(declare-fun m!914875 () Bool)

(assert (=> d!116929 m!914875))

(declare-fun m!914877 () Bool)

(assert (=> b!987977 m!914877))

(declare-fun m!914879 () Bool)

(assert (=> b!987975 m!914879))

(assert (=> d!116909 d!116929))

(declare-fun b!987983 () Bool)

(declare-fun e!557133 () Option!521)

(assert (=> b!987983 (= e!557133 None!519)))

(declare-fun b!987980 () Bool)

(declare-fun e!557132 () Option!521)

(assert (=> b!987980 (= e!557132 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438106)))))))

(declare-fun d!116931 () Bool)

(declare-fun c!100048 () Bool)

(assert (=> d!116931 (= c!100048 (and ((_ is Cons!20905) (toList!6849 lt!438106)) (= (_1!7488 (h!22067 (toList!6849 lt!438106))) (_1!7488 lt!438012))))))

(assert (=> d!116931 (= (getValueByKey!515 (toList!6849 lt!438106) (_1!7488 lt!438012)) e!557132)))

(declare-fun b!987982 () Bool)

(assert (=> b!987982 (= e!557133 (getValueByKey!515 (t!29852 (toList!6849 lt!438106)) (_1!7488 lt!438012)))))

(declare-fun b!987981 () Bool)

(assert (=> b!987981 (= e!557132 e!557133)))

(declare-fun c!100049 () Bool)

(assert (=> b!987981 (= c!100049 (and ((_ is Cons!20905) (toList!6849 lt!438106)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438106))) (_1!7488 lt!438012)))))))

(assert (= (and d!116931 c!100048) b!987980))

(assert (= (and d!116931 (not c!100048)) b!987981))

(assert (= (and b!987981 c!100049) b!987982))

(assert (= (and b!987981 (not c!100049)) b!987983))

(declare-fun m!914881 () Bool)

(assert (=> b!987982 m!914881))

(assert (=> b!987802 d!116931))

(declare-fun d!116933 () Bool)

(declare-fun e!557134 () Bool)

(assert (=> d!116933 e!557134))

(declare-fun res!660987 () Bool)

(assert (=> d!116933 (=> (not res!660987) (not e!557134))))

(declare-fun lt!438233 () ListLongMap!13667)

(assert (=> d!116933 (= res!660987 (contains!5722 lt!438233 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(declare-fun lt!438234 () List!20909)

(assert (=> d!116933 (= lt!438233 (ListLongMap!13668 lt!438234))))

(declare-fun lt!438232 () Unit!32739)

(declare-fun lt!438231 () Unit!32739)

(assert (=> d!116933 (= lt!438232 lt!438231)))

(assert (=> d!116933 (= (getValueByKey!515 lt!438234 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116933 (= lt!438231 (lemmaContainsTupThenGetReturnValue!272 lt!438234 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116933 (= lt!438234 (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116933 (= (+!3037 lt!438016 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) lt!438233)))

(declare-fun b!987984 () Bool)

(declare-fun res!660986 () Bool)

(assert (=> b!987984 (=> (not res!660986) (not e!557134))))

(assert (=> b!987984 (= res!660986 (= (getValueByKey!515 (toList!6849 lt!438233) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))))

(declare-fun b!987985 () Bool)

(assert (=> b!987985 (= e!557134 (contains!5723 (toList!6849 lt!438233) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))

(assert (= (and d!116933 res!660987) b!987984))

(assert (= (and b!987984 res!660986) b!987985))

(declare-fun m!914883 () Bool)

(assert (=> d!116933 m!914883))

(declare-fun m!914885 () Bool)

(assert (=> d!116933 m!914885))

(declare-fun m!914887 () Bool)

(assert (=> d!116933 m!914887))

(declare-fun m!914889 () Bool)

(assert (=> d!116933 m!914889))

(declare-fun m!914891 () Bool)

(assert (=> b!987984 m!914891))

(declare-fun m!914893 () Bool)

(assert (=> b!987985 m!914893))

(assert (=> d!116911 d!116933))

(declare-fun d!116935 () Bool)

(declare-fun e!557135 () Bool)

(assert (=> d!116935 e!557135))

(declare-fun res!660989 () Bool)

(assert (=> d!116935 (=> (not res!660989) (not e!557135))))

(declare-fun lt!438237 () ListLongMap!13667)

(assert (=> d!116935 (= res!660989 (contains!5722 lt!438237 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!438238 () List!20909)

(assert (=> d!116935 (= lt!438237 (ListLongMap!13668 lt!438238))))

(declare-fun lt!438236 () Unit!32739)

(declare-fun lt!438235 () Unit!32739)

(assert (=> d!116935 (= lt!438236 lt!438235)))

(assert (=> d!116935 (= (getValueByKey!515 lt!438238 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116935 (= lt!438235 (lemmaContainsTupThenGetReturnValue!272 lt!438238 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116935 (= lt!438238 (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116935 (= (+!3037 lt!438016 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!438237)))

(declare-fun b!987986 () Bool)

(declare-fun res!660988 () Bool)

(assert (=> b!987986 (=> (not res!660988) (not e!557135))))

(assert (=> b!987986 (= res!660988 (= (getValueByKey!515 (toList!6849 lt!438237) (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!987987 () Bool)

(assert (=> b!987987 (= e!557135 (contains!5723 (toList!6849 lt!438237) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!116935 res!660989) b!987986))

(assert (= (and b!987986 res!660988) b!987987))

(declare-fun m!914895 () Bool)

(assert (=> d!116935 m!914895))

(declare-fun m!914897 () Bool)

(assert (=> d!116935 m!914897))

(declare-fun m!914899 () Bool)

(assert (=> d!116935 m!914899))

(declare-fun m!914901 () Bool)

(assert (=> d!116935 m!914901))

(declare-fun m!914903 () Bool)

(assert (=> b!987986 m!914903))

(declare-fun m!914905 () Bool)

(assert (=> b!987987 m!914905))

(assert (=> d!116911 d!116935))

(declare-fun d!116937 () Bool)

(declare-fun e!557136 () Bool)

(assert (=> d!116937 e!557136))

(declare-fun res!660991 () Bool)

(assert (=> d!116937 (=> (not res!660991) (not e!557136))))

(declare-fun lt!438241 () ListLongMap!13667)

(assert (=> d!116937 (= res!660991 (contains!5722 lt!438241 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(declare-fun lt!438242 () List!20909)

(assert (=> d!116937 (= lt!438241 (ListLongMap!13668 lt!438242))))

(declare-fun lt!438240 () Unit!32739)

(declare-fun lt!438239 () Unit!32739)

(assert (=> d!116937 (= lt!438240 lt!438239)))

(assert (=> d!116937 (= (getValueByKey!515 lt!438242 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116937 (= lt!438239 (lemmaContainsTupThenGetReturnValue!272 lt!438242 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116937 (= lt!438242 (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438016 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!116937 (= (+!3037 (+!3037 lt!438016 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) lt!438241)))

(declare-fun b!987988 () Bool)

(declare-fun res!660990 () Bool)

(assert (=> b!987988 (=> (not res!660990) (not e!557136))))

(assert (=> b!987988 (= res!660990 (= (getValueByKey!515 (toList!6849 lt!438241) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))))

(declare-fun b!987989 () Bool)

(assert (=> b!987989 (= e!557136 (contains!5723 (toList!6849 lt!438241) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))

(assert (= (and d!116937 res!660991) b!987988))

(assert (= (and b!987988 res!660990) b!987989))

(declare-fun m!914907 () Bool)

(assert (=> d!116937 m!914907))

(declare-fun m!914909 () Bool)

(assert (=> d!116937 m!914909))

(declare-fun m!914911 () Bool)

(assert (=> d!116937 m!914911))

(declare-fun m!914913 () Bool)

(assert (=> d!116937 m!914913))

(declare-fun m!914915 () Bool)

(assert (=> b!987988 m!914915))

(declare-fun m!914917 () Bool)

(assert (=> b!987989 m!914917))

(assert (=> d!116911 d!116937))

(declare-fun d!116939 () Bool)

(declare-fun e!557137 () Bool)

(assert (=> d!116939 e!557137))

(declare-fun res!660993 () Bool)

(assert (=> d!116939 (=> (not res!660993) (not e!557137))))

(declare-fun lt!438245 () ListLongMap!13667)

(assert (=> d!116939 (= res!660993 (contains!5722 lt!438245 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!438246 () List!20909)

(assert (=> d!116939 (= lt!438245 (ListLongMap!13668 lt!438246))))

(declare-fun lt!438244 () Unit!32739)

(declare-fun lt!438243 () Unit!32739)

(assert (=> d!116939 (= lt!438244 lt!438243)))

(assert (=> d!116939 (= (getValueByKey!515 lt!438246 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116939 (= lt!438243 (lemmaContainsTupThenGetReturnValue!272 lt!438246 (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116939 (= lt!438246 (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438016 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116939 (= (+!3037 (+!3037 lt!438016 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!438245)))

(declare-fun b!987990 () Bool)

(declare-fun res!660992 () Bool)

(assert (=> b!987990 (=> (not res!660992) (not e!557137))))

(assert (=> b!987990 (= res!660992 (= (getValueByKey!515 (toList!6849 lt!438245) (_1!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!987991 () Bool)

(assert (=> b!987991 (= e!557137 (contains!5723 (toList!6849 lt!438245) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!116939 res!660993) b!987990))

(assert (= (and b!987990 res!660992) b!987991))

(declare-fun m!914919 () Bool)

(assert (=> d!116939 m!914919))

(declare-fun m!914921 () Bool)

(assert (=> d!116939 m!914921))

(declare-fun m!914923 () Bool)

(assert (=> d!116939 m!914923))

(declare-fun m!914925 () Bool)

(assert (=> d!116939 m!914925))

(declare-fun m!914927 () Bool)

(assert (=> b!987990 m!914927))

(declare-fun m!914929 () Bool)

(assert (=> b!987991 m!914929))

(assert (=> d!116911 d!116939))

(declare-fun d!116941 () Bool)

(assert (=> d!116941 (= (+!3037 (+!3037 lt!438016 (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (+!3037 (+!3037 lt!438016 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (=> d!116941 true))

(declare-fun _$28!184 () Unit!32739)

(assert (=> d!116941 (= (choose!1613 lt!438016 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011) _$28!184)))

(declare-fun bs!28025 () Bool)

(assert (= bs!28025 d!116941))

(assert (=> bs!28025 m!914743))

(assert (=> bs!28025 m!914743))

(assert (=> bs!28025 m!914745))

(assert (=> bs!28025 m!914747))

(assert (=> bs!28025 m!914747))

(assert (=> bs!28025 m!914749))

(assert (=> d!116911 d!116941))

(declare-fun b!987995 () Bool)

(declare-fun e!557139 () Option!521)

(assert (=> b!987995 (= e!557139 None!519)))

(declare-fun b!987992 () Bool)

(declare-fun e!557138 () Option!521)

(assert (=> b!987992 (= e!557138 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438110)))))))

(declare-fun d!116943 () Bool)

(declare-fun c!100050 () Bool)

(assert (=> d!116943 (= c!100050 (and ((_ is Cons!20905) (toList!6849 lt!438110)) (= (_1!7488 (h!22067 (toList!6849 lt!438110))) (_1!7488 lt!438014))))))

(assert (=> d!116943 (= (getValueByKey!515 (toList!6849 lt!438110) (_1!7488 lt!438014)) e!557138)))

(declare-fun b!987994 () Bool)

(assert (=> b!987994 (= e!557139 (getValueByKey!515 (t!29852 (toList!6849 lt!438110)) (_1!7488 lt!438014)))))

(declare-fun b!987993 () Bool)

(assert (=> b!987993 (= e!557138 e!557139)))

(declare-fun c!100051 () Bool)

(assert (=> b!987993 (= c!100051 (and ((_ is Cons!20905) (toList!6849 lt!438110)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438110))) (_1!7488 lt!438014)))))))

(assert (= (and d!116943 c!100050) b!987992))

(assert (= (and d!116943 (not c!100050)) b!987993))

(assert (= (and b!987993 c!100051) b!987994))

(assert (= (and b!987993 (not c!100051)) b!987995))

(declare-fun m!914931 () Bool)

(assert (=> b!987994 m!914931))

(assert (=> b!987804 d!116943))

(declare-fun d!116945 () Bool)

(declare-fun get!15611 (Option!521) V!35947)

(assert (=> d!116945 (= (apply!928 lt!438090 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15611 (getValueByKey!515 (toList!6849 lt!438090) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28026 () Bool)

(assert (= bs!28026 d!116945))

(assert (=> bs!28026 m!914619))

(declare-fun m!914933 () Bool)

(assert (=> bs!28026 m!914933))

(assert (=> bs!28026 m!914933))

(declare-fun m!914935 () Bool)

(assert (=> bs!28026 m!914935))

(assert (=> b!987787 d!116945))

(declare-fun d!116947 () Bool)

(declare-fun c!100052 () Bool)

(assert (=> d!116947 (= c!100052 ((_ is ValueCellFull!11130) (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun e!557140 () V!35947)

(assert (=> d!116947 (= (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!557140)))

(declare-fun b!987996 () Bool)

(assert (=> b!987996 (= e!557140 (get!15609 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987997 () Bool)

(assert (=> b!987997 (= e!557140 (get!15610 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116947 c!100052) b!987996))

(assert (= (and d!116947 (not c!100052)) b!987997))

(assert (=> b!987996 m!914627))

(assert (=> b!987996 m!914525))

(declare-fun m!914937 () Bool)

(assert (=> b!987996 m!914937))

(assert (=> b!987997 m!914627))

(assert (=> b!987997 m!914525))

(declare-fun m!914939 () Bool)

(assert (=> b!987997 m!914939))

(assert (=> b!987787 d!116947))

(declare-fun d!116949 () Bool)

(assert (=> d!116949 (= (apply!928 lt!438185 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15611 (getValueByKey!515 (toList!6849 lt!438185) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28027 () Bool)

(assert (= bs!28027 d!116949))

(declare-fun m!914941 () Bool)

(assert (=> bs!28027 m!914941))

(assert (=> bs!28027 m!914941))

(declare-fun m!914943 () Bool)

(assert (=> bs!28027 m!914943))

(assert (=> b!987860 d!116949))

(declare-fun d!116951 () Bool)

(assert (=> d!116951 (= (get!15609 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14226 (select (arr!30049 _values!1278) from!1932)))))

(assert (=> b!987760 d!116951))

(declare-fun d!116953 () Bool)

(declare-fun e!557141 () Bool)

(assert (=> d!116953 e!557141))

(declare-fun res!660994 () Bool)

(assert (=> d!116953 (=> res!660994 e!557141)))

(declare-fun lt!438250 () Bool)

(assert (=> d!116953 (= res!660994 (not lt!438250))))

(declare-fun lt!438248 () Bool)

(assert (=> d!116953 (= lt!438250 lt!438248)))

(declare-fun lt!438247 () Unit!32739)

(declare-fun e!557142 () Unit!32739)

(assert (=> d!116953 (= lt!438247 e!557142)))

(declare-fun c!100053 () Bool)

(assert (=> d!116953 (= c!100053 lt!438248)))

(assert (=> d!116953 (= lt!438248 (containsKey!478 (toList!6849 lt!438110) (_1!7488 lt!438014)))))

(assert (=> d!116953 (= (contains!5722 lt!438110 (_1!7488 lt!438014)) lt!438250)))

(declare-fun b!987998 () Bool)

(declare-fun lt!438249 () Unit!32739)

(assert (=> b!987998 (= e!557142 lt!438249)))

(assert (=> b!987998 (= lt!438249 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438110) (_1!7488 lt!438014)))))

(assert (=> b!987998 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438110) (_1!7488 lt!438014)))))

(declare-fun b!987999 () Bool)

(declare-fun Unit!32744 () Unit!32739)

(assert (=> b!987999 (= e!557142 Unit!32744)))

(declare-fun b!988000 () Bool)

(assert (=> b!988000 (= e!557141 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438110) (_1!7488 lt!438014))))))

(assert (= (and d!116953 c!100053) b!987998))

(assert (= (and d!116953 (not c!100053)) b!987999))

(assert (= (and d!116953 (not res!660994)) b!988000))

(declare-fun m!914945 () Bool)

(assert (=> d!116953 m!914945))

(declare-fun m!914947 () Bool)

(assert (=> b!987998 m!914947))

(assert (=> b!987998 m!914701))

(assert (=> b!987998 m!914701))

(declare-fun m!914949 () Bool)

(assert (=> b!987998 m!914949))

(assert (=> b!988000 m!914701))

(assert (=> b!988000 m!914701))

(assert (=> b!988000 m!914949))

(assert (=> d!116903 d!116953))

(declare-fun b!988004 () Bool)

(declare-fun e!557144 () Option!521)

(assert (=> b!988004 (= e!557144 None!519)))

(declare-fun b!988001 () Bool)

(declare-fun e!557143 () Option!521)

(assert (=> b!988001 (= e!557143 (Some!520 (_2!7488 (h!22067 lt!438111))))))

(declare-fun d!116955 () Bool)

(declare-fun c!100054 () Bool)

(assert (=> d!116955 (= c!100054 (and ((_ is Cons!20905) lt!438111) (= (_1!7488 (h!22067 lt!438111)) (_1!7488 lt!438014))))))

(assert (=> d!116955 (= (getValueByKey!515 lt!438111 (_1!7488 lt!438014)) e!557143)))

(declare-fun b!988003 () Bool)

(assert (=> b!988003 (= e!557144 (getValueByKey!515 (t!29852 lt!438111) (_1!7488 lt!438014)))))

(declare-fun b!988002 () Bool)

(assert (=> b!988002 (= e!557143 e!557144)))

(declare-fun c!100055 () Bool)

(assert (=> b!988002 (= c!100055 (and ((_ is Cons!20905) lt!438111) (not (= (_1!7488 (h!22067 lt!438111)) (_1!7488 lt!438014)))))))

(assert (= (and d!116955 c!100054) b!988001))

(assert (= (and d!116955 (not c!100054)) b!988002))

(assert (= (and b!988002 c!100055) b!988003))

(assert (= (and b!988002 (not c!100055)) b!988004))

(declare-fun m!914951 () Bool)

(assert (=> b!988003 m!914951))

(assert (=> d!116903 d!116955))

(declare-fun d!116957 () Bool)

(assert (=> d!116957 (= (getValueByKey!515 lt!438111 (_1!7488 lt!438014)) (Some!520 (_2!7488 lt!438014)))))

(declare-fun lt!438251 () Unit!32739)

(assert (=> d!116957 (= lt!438251 (choose!1614 lt!438111 (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(declare-fun e!557145 () Bool)

(assert (=> d!116957 e!557145))

(declare-fun res!660995 () Bool)

(assert (=> d!116957 (=> (not res!660995) (not e!557145))))

(assert (=> d!116957 (= res!660995 (isStrictlySorted!511 lt!438111))))

(assert (=> d!116957 (= (lemmaContainsTupThenGetReturnValue!272 lt!438111 (_1!7488 lt!438014) (_2!7488 lt!438014)) lt!438251)))

(declare-fun b!988005 () Bool)

(declare-fun res!660996 () Bool)

(assert (=> b!988005 (=> (not res!660996) (not e!557145))))

(assert (=> b!988005 (= res!660996 (containsKey!478 lt!438111 (_1!7488 lt!438014)))))

(declare-fun b!988006 () Bool)

(assert (=> b!988006 (= e!557145 (contains!5723 lt!438111 (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014))))))

(assert (= (and d!116957 res!660995) b!988005))

(assert (= (and b!988005 res!660996) b!988006))

(assert (=> d!116957 m!914695))

(declare-fun m!914953 () Bool)

(assert (=> d!116957 m!914953))

(declare-fun m!914955 () Bool)

(assert (=> d!116957 m!914955))

(declare-fun m!914957 () Bool)

(assert (=> b!988005 m!914957))

(declare-fun m!914959 () Bool)

(assert (=> b!988006 m!914959))

(assert (=> d!116903 d!116957))

(declare-fun b!988007 () Bool)

(declare-fun e!557147 () List!20909)

(declare-fun e!557148 () List!20909)

(assert (=> b!988007 (= e!557147 e!557148)))

(declare-fun c!100059 () Bool)

(assert (=> b!988007 (= c!100059 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (= (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438014))))))

(declare-fun b!988008 () Bool)

(declare-fun c!100057 () Bool)

(assert (=> b!988008 (= c!100057 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438014))))))

(declare-fun e!557146 () List!20909)

(assert (=> b!988008 (= e!557148 e!557146)))

(declare-fun b!988009 () Bool)

(declare-fun res!660998 () Bool)

(declare-fun e!557150 () Bool)

(assert (=> b!988009 (=> (not res!660998) (not e!557150))))

(declare-fun lt!438252 () List!20909)

(assert (=> b!988009 (= res!660998 (containsKey!478 lt!438252 (_1!7488 lt!438014)))))

(declare-fun b!988011 () Bool)

(declare-fun call!41859 () List!20909)

(assert (=> b!988011 (= e!557146 call!41859)))

(declare-fun b!988012 () Bool)

(assert (=> b!988012 (= e!557150 (contains!5723 lt!438252 (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014))))))

(declare-fun b!988013 () Bool)

(declare-fun call!41858 () List!20909)

(assert (=> b!988013 (= e!557148 call!41858)))

(declare-fun b!988014 () Bool)

(declare-fun e!557149 () List!20909)

(assert (=> b!988014 (= e!557149 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438016)) (_1!7488 lt!438014) (_2!7488 lt!438014)))))

(declare-fun bm!41855 () Bool)

(declare-fun call!41860 () List!20909)

(declare-fun c!100058 () Bool)

(assert (=> bm!41855 (= call!41860 ($colon$colon!555 e!557149 (ite c!100058 (h!22067 (toList!6849 lt!438016)) (tuple2!14957 (_1!7488 lt!438014) (_2!7488 lt!438014)))))))

(declare-fun c!100056 () Bool)

(assert (=> bm!41855 (= c!100056 c!100058)))

(declare-fun bm!41856 () Bool)

(assert (=> bm!41856 (= call!41859 call!41858)))

(declare-fun bm!41857 () Bool)

(assert (=> bm!41857 (= call!41858 call!41860)))

(declare-fun b!988015 () Bool)

(assert (=> b!988015 (= e!557149 (ite c!100059 (t!29852 (toList!6849 lt!438016)) (ite c!100057 (Cons!20905 (h!22067 (toList!6849 lt!438016)) (t!29852 (toList!6849 lt!438016))) Nil!20906)))))

(declare-fun b!988016 () Bool)

(assert (=> b!988016 (= e!557146 call!41859)))

(declare-fun b!988010 () Bool)

(assert (=> b!988010 (= e!557147 call!41860)))

(declare-fun d!116959 () Bool)

(assert (=> d!116959 e!557150))

(declare-fun res!660997 () Bool)

(assert (=> d!116959 (=> (not res!660997) (not e!557150))))

(assert (=> d!116959 (= res!660997 (isStrictlySorted!511 lt!438252))))

(assert (=> d!116959 (= lt!438252 e!557147)))

(assert (=> d!116959 (= c!100058 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438014))))))

(assert (=> d!116959 (isStrictlySorted!511 (toList!6849 lt!438016))))

(assert (=> d!116959 (= (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 lt!438014) (_2!7488 lt!438014)) lt!438252)))

(assert (= (and d!116959 c!100058) b!988010))

(assert (= (and d!116959 (not c!100058)) b!988007))

(assert (= (and b!988007 c!100059) b!988013))

(assert (= (and b!988007 (not c!100059)) b!988008))

(assert (= (and b!988008 c!100057) b!988016))

(assert (= (and b!988008 (not c!100057)) b!988011))

(assert (= (or b!988016 b!988011) bm!41856))

(assert (= (or b!988013 bm!41856) bm!41857))

(assert (= (or b!988010 bm!41857) bm!41855))

(assert (= (and bm!41855 c!100056) b!988014))

(assert (= (and bm!41855 (not c!100056)) b!988015))

(assert (= (and d!116959 res!660997) b!988009))

(assert (= (and b!988009 res!660998) b!988012))

(declare-fun m!914961 () Bool)

(assert (=> bm!41855 m!914961))

(declare-fun m!914963 () Bool)

(assert (=> b!988009 m!914963))

(declare-fun m!914965 () Bool)

(assert (=> d!116959 m!914965))

(declare-fun m!914967 () Bool)

(assert (=> d!116959 m!914967))

(declare-fun m!914969 () Bool)

(assert (=> b!988014 m!914969))

(declare-fun m!914971 () Bool)

(assert (=> b!988012 m!914971))

(assert (=> d!116903 d!116959))

(declare-fun b!988017 () Bool)

(declare-fun e!557157 () Bool)

(declare-fun lt!438257 () ListLongMap!13667)

(assert (=> b!988017 (= e!557157 (isEmpty!725 lt!438257))))

(declare-fun b!988018 () Bool)

(assert (=> b!988018 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544)))))

(assert (=> b!988018 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30529 _values!1278)))))

(declare-fun e!557156 () Bool)

(assert (=> b!988018 (= e!557156 (= (apply!928 lt!438257 (select (arr!30050 _keys!1544) from!1932)) (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!988019 () Bool)

(declare-fun e!557152 () ListLongMap!13667)

(assert (=> b!988019 (= e!557152 (ListLongMap!13668 Nil!20906))))

(declare-fun b!988020 () Bool)

(declare-fun e!557153 () Bool)

(assert (=> b!988020 (= e!557153 (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> b!988020 (bvsge from!1932 #b00000000000000000000000000000000)))

(declare-fun b!988021 () Bool)

(declare-fun e!557151 () Bool)

(assert (=> b!988021 (= e!557151 e!557157)))

(declare-fun c!100063 () Bool)

(assert (=> b!988021 (= c!100063 (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun d!116961 () Bool)

(declare-fun e!557154 () Bool)

(assert (=> d!116961 e!557154))

(declare-fun res!661001 () Bool)

(assert (=> d!116961 (=> (not res!661001) (not e!557154))))

(assert (=> d!116961 (= res!661001 (not (contains!5722 lt!438257 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!116961 (= lt!438257 e!557152)))

(declare-fun c!100060 () Bool)

(assert (=> d!116961 (= c!100060 (bvsge from!1932 (size!30530 _keys!1544)))))

(assert (=> d!116961 (validMask!0 mask!1948)))

(assert (=> d!116961 (= (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!438257)))

(declare-fun b!988022 () Bool)

(declare-fun lt!438255 () Unit!32739)

(declare-fun lt!438258 () Unit!32739)

(assert (=> b!988022 (= lt!438255 lt!438258)))

(declare-fun lt!438254 () ListLongMap!13667)

(declare-fun lt!438253 () (_ BitVec 64))

(declare-fun lt!438259 () (_ BitVec 64))

(declare-fun lt!438256 () V!35947)

(assert (=> b!988022 (not (contains!5722 (+!3037 lt!438254 (tuple2!14957 lt!438253 lt!438256)) lt!438259))))

(assert (=> b!988022 (= lt!438258 (addStillNotContains!234 lt!438254 lt!438253 lt!438256 lt!438259))))

(assert (=> b!988022 (= lt!438259 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!988022 (= lt!438256 (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!988022 (= lt!438253 (select (arr!30050 _keys!1544) from!1932))))

(declare-fun call!41861 () ListLongMap!13667)

(assert (=> b!988022 (= lt!438254 call!41861)))

(declare-fun e!557155 () ListLongMap!13667)

(assert (=> b!988022 (= e!557155 (+!3037 call!41861 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) (get!15608 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!988023 () Bool)

(declare-fun res!661000 () Bool)

(assert (=> b!988023 (=> (not res!661000) (not e!557154))))

(assert (=> b!988023 (= res!661000 (not (contains!5722 lt!438257 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!988024 () Bool)

(assert (=> b!988024 (= e!557152 e!557155)))

(declare-fun c!100061 () Bool)

(assert (=> b!988024 (= c!100061 (validKeyInArray!0 (select (arr!30050 _keys!1544) from!1932)))))

(declare-fun b!988025 () Bool)

(assert (=> b!988025 (= e!557157 (= lt!438257 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!988026 () Bool)

(assert (=> b!988026 (= e!557154 e!557151)))

(declare-fun c!100062 () Bool)

(assert (=> b!988026 (= c!100062 e!557153)))

(declare-fun res!661002 () Bool)

(assert (=> b!988026 (=> (not res!661002) (not e!557153))))

(assert (=> b!988026 (= res!661002 (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun bm!41858 () Bool)

(assert (=> bm!41858 (= call!41861 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!988027 () Bool)

(assert (=> b!988027 (= e!557155 call!41861)))

(declare-fun b!988028 () Bool)

(assert (=> b!988028 (= e!557151 e!557156)))

(assert (=> b!988028 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30530 _keys!1544)))))

(declare-fun res!660999 () Bool)

(assert (=> b!988028 (= res!660999 (contains!5722 lt!438257 (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> b!988028 (=> (not res!660999) (not e!557156))))

(assert (= (and d!116961 c!100060) b!988019))

(assert (= (and d!116961 (not c!100060)) b!988024))

(assert (= (and b!988024 c!100061) b!988022))

(assert (= (and b!988024 (not c!100061)) b!988027))

(assert (= (or b!988022 b!988027) bm!41858))

(assert (= (and d!116961 res!661001) b!988023))

(assert (= (and b!988023 res!661000) b!988026))

(assert (= (and b!988026 res!661002) b!988020))

(assert (= (and b!988026 c!100062) b!988028))

(assert (= (and b!988026 (not c!100062)) b!988021))

(assert (= (and b!988028 res!660999) b!988018))

(assert (= (and b!988021 c!100063) b!988025))

(assert (= (and b!988021 (not c!100063)) b!988017))

(declare-fun b_lambda!15091 () Bool)

(assert (=> (not b_lambda!15091) (not b!988018)))

(assert (=> b!988018 t!29850))

(declare-fun b_and!32115 () Bool)

(assert (= b_and!32113 (and (=> t!29850 result!13571) b_and!32115)))

(declare-fun b_lambda!15093 () Bool)

(assert (=> (not b_lambda!15093) (not b!988022)))

(assert (=> b!988022 t!29850))

(declare-fun b_and!32117 () Bool)

(assert (= b_and!32115 (and (=> t!29850 result!13571) b_and!32117)))

(assert (=> b!988020 m!914505))

(assert (=> b!988020 m!914505))

(assert (=> b!988020 m!914507))

(declare-fun m!914973 () Bool)

(assert (=> bm!41858 m!914973))

(declare-fun m!914975 () Bool)

(assert (=> b!988022 m!914975))

(assert (=> b!988022 m!914509))

(assert (=> b!988022 m!914525))

(assert (=> b!988022 m!914527))

(assert (=> b!988022 m!914975))

(declare-fun m!914977 () Bool)

(assert (=> b!988022 m!914977))

(assert (=> b!988022 m!914525))

(assert (=> b!988022 m!914505))

(declare-fun m!914979 () Bool)

(assert (=> b!988022 m!914979))

(declare-fun m!914981 () Bool)

(assert (=> b!988022 m!914981))

(assert (=> b!988022 m!914509))

(assert (=> b!988018 m!914505))

(assert (=> b!988018 m!914509))

(assert (=> b!988018 m!914525))

(assert (=> b!988018 m!914527))

(assert (=> b!988018 m!914525))

(assert (=> b!988018 m!914509))

(assert (=> b!988018 m!914505))

(declare-fun m!914983 () Bool)

(assert (=> b!988018 m!914983))

(declare-fun m!914985 () Bool)

(assert (=> b!988017 m!914985))

(assert (=> b!988025 m!914973))

(assert (=> b!988028 m!914505))

(assert (=> b!988028 m!914505))

(declare-fun m!914987 () Bool)

(assert (=> b!988028 m!914987))

(declare-fun m!914989 () Bool)

(assert (=> d!116961 m!914989))

(assert (=> d!116961 m!914497))

(declare-fun m!914991 () Bool)

(assert (=> b!988023 m!914991))

(assert (=> b!988024 m!914505))

(assert (=> b!988024 m!914505))

(assert (=> b!988024 m!914507))

(assert (=> bm!41836 d!116961))

(declare-fun d!116963 () Bool)

(declare-fun e!557158 () Bool)

(assert (=> d!116963 e!557158))

(declare-fun res!661003 () Bool)

(assert (=> d!116963 (=> res!661003 e!557158)))

(declare-fun lt!438263 () Bool)

(assert (=> d!116963 (= res!661003 (not lt!438263))))

(declare-fun lt!438261 () Bool)

(assert (=> d!116963 (= lt!438263 lt!438261)))

(declare-fun lt!438260 () Unit!32739)

(declare-fun e!557159 () Unit!32739)

(assert (=> d!116963 (= lt!438260 e!557159)))

(declare-fun c!100064 () Bool)

(assert (=> d!116963 (= c!100064 lt!438261)))

(assert (=> d!116963 (= lt!438261 (containsKey!478 (toList!6849 lt!438185) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!116963 (= (contains!5722 lt!438185 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!438263)))

(declare-fun b!988029 () Bool)

(declare-fun lt!438262 () Unit!32739)

(assert (=> b!988029 (= e!557159 lt!438262)))

(assert (=> b!988029 (= lt!438262 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438185) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!988029 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!988030 () Bool)

(declare-fun Unit!32745 () Unit!32739)

(assert (=> b!988030 (= e!557159 Unit!32745)))

(declare-fun b!988031 () Bool)

(assert (=> b!988031 (= e!557158 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!116963 c!100064) b!988029))

(assert (= (and d!116963 (not c!100064)) b!988030))

(assert (= (and d!116963 (not res!661003)) b!988031))

(assert (=> d!116963 m!914619))

(declare-fun m!914993 () Bool)

(assert (=> d!116963 m!914993))

(assert (=> b!988029 m!914619))

(declare-fun m!914995 () Bool)

(assert (=> b!988029 m!914995))

(assert (=> b!988029 m!914619))

(declare-fun m!914997 () Bool)

(assert (=> b!988029 m!914997))

(assert (=> b!988029 m!914997))

(declare-fun m!914999 () Bool)

(assert (=> b!988029 m!914999))

(assert (=> b!988031 m!914619))

(assert (=> b!988031 m!914997))

(assert (=> b!988031 m!914997))

(assert (=> b!988031 m!914999))

(assert (=> b!987868 d!116963))

(declare-fun b!988035 () Bool)

(declare-fun e!557161 () Option!521)

(assert (=> b!988035 (= e!557161 None!519)))

(declare-fun b!988032 () Bool)

(declare-fun e!557160 () Option!521)

(assert (=> b!988032 (= e!557160 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438095)))))))

(declare-fun d!116965 () Bool)

(declare-fun c!100065 () Bool)

(assert (=> d!116965 (= c!100065 (and ((_ is Cons!20905) (toList!6849 lt!438095)) (= (_1!7488 (h!22067 (toList!6849 lt!438095))) (_1!7488 lt!438013))))))

(assert (=> d!116965 (= (getValueByKey!515 (toList!6849 lt!438095) (_1!7488 lt!438013)) e!557160)))

(declare-fun b!988034 () Bool)

(assert (=> b!988034 (= e!557161 (getValueByKey!515 (t!29852 (toList!6849 lt!438095)) (_1!7488 lt!438013)))))

(declare-fun b!988033 () Bool)

(assert (=> b!988033 (= e!557160 e!557161)))

(declare-fun c!100066 () Bool)

(assert (=> b!988033 (= c!100066 (and ((_ is Cons!20905) (toList!6849 lt!438095)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438095))) (_1!7488 lt!438013)))))))

(assert (= (and d!116965 c!100065) b!988032))

(assert (= (and d!116965 (not c!100065)) b!988033))

(assert (= (and b!988033 c!100066) b!988034))

(assert (= (and b!988033 (not c!100066)) b!988035))

(declare-fun m!915001 () Bool)

(assert (=> b!988034 m!915001))

(assert (=> b!987798 d!116965))

(declare-fun d!116967 () Bool)

(declare-fun e!557162 () Bool)

(assert (=> d!116967 e!557162))

(declare-fun res!661004 () Bool)

(assert (=> d!116967 (=> res!661004 e!557162)))

(declare-fun lt!438267 () Bool)

(assert (=> d!116967 (= res!661004 (not lt!438267))))

(declare-fun lt!438265 () Bool)

(assert (=> d!116967 (= lt!438267 lt!438265)))

(declare-fun lt!438264 () Unit!32739)

(declare-fun e!557163 () Unit!32739)

(assert (=> d!116967 (= lt!438264 e!557163)))

(declare-fun c!100067 () Bool)

(assert (=> d!116967 (= c!100067 lt!438265)))

(assert (=> d!116967 (= lt!438265 (containsKey!478 (toList!6849 lt!438114) (_1!7488 lt!438012)))))

(assert (=> d!116967 (= (contains!5722 lt!438114 (_1!7488 lt!438012)) lt!438267)))

(declare-fun b!988036 () Bool)

(declare-fun lt!438266 () Unit!32739)

(assert (=> b!988036 (= e!557163 lt!438266)))

(assert (=> b!988036 (= lt!438266 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438114) (_1!7488 lt!438012)))))

(assert (=> b!988036 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438114) (_1!7488 lt!438012)))))

(declare-fun b!988037 () Bool)

(declare-fun Unit!32746 () Unit!32739)

(assert (=> b!988037 (= e!557163 Unit!32746)))

(declare-fun b!988038 () Bool)

(assert (=> b!988038 (= e!557162 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438114) (_1!7488 lt!438012))))))

(assert (= (and d!116967 c!100067) b!988036))

(assert (= (and d!116967 (not c!100067)) b!988037))

(assert (= (and d!116967 (not res!661004)) b!988038))

(declare-fun m!915003 () Bool)

(assert (=> d!116967 m!915003))

(declare-fun m!915005 () Bool)

(assert (=> b!988036 m!915005))

(assert (=> b!988036 m!914713))

(assert (=> b!988036 m!914713))

(declare-fun m!915007 () Bool)

(assert (=> b!988036 m!915007))

(assert (=> b!988038 m!914713))

(assert (=> b!988038 m!914713))

(assert (=> b!988038 m!915007))

(assert (=> d!116905 d!116967))

(declare-fun b!988042 () Bool)

(declare-fun e!557165 () Option!521)

(assert (=> b!988042 (= e!557165 None!519)))

(declare-fun b!988039 () Bool)

(declare-fun e!557164 () Option!521)

(assert (=> b!988039 (= e!557164 (Some!520 (_2!7488 (h!22067 lt!438115))))))

(declare-fun d!116969 () Bool)

(declare-fun c!100068 () Bool)

(assert (=> d!116969 (= c!100068 (and ((_ is Cons!20905) lt!438115) (= (_1!7488 (h!22067 lt!438115)) (_1!7488 lt!438012))))))

(assert (=> d!116969 (= (getValueByKey!515 lt!438115 (_1!7488 lt!438012)) e!557164)))

(declare-fun b!988041 () Bool)

(assert (=> b!988041 (= e!557165 (getValueByKey!515 (t!29852 lt!438115) (_1!7488 lt!438012)))))

(declare-fun b!988040 () Bool)

(assert (=> b!988040 (= e!557164 e!557165)))

(declare-fun c!100069 () Bool)

(assert (=> b!988040 (= c!100069 (and ((_ is Cons!20905) lt!438115) (not (= (_1!7488 (h!22067 lt!438115)) (_1!7488 lt!438012)))))))

(assert (= (and d!116969 c!100068) b!988039))

(assert (= (and d!116969 (not c!100068)) b!988040))

(assert (= (and b!988040 c!100069) b!988041))

(assert (= (and b!988040 (not c!100069)) b!988042))

(declare-fun m!915009 () Bool)

(assert (=> b!988041 m!915009))

(assert (=> d!116905 d!116969))

(declare-fun d!116971 () Bool)

(assert (=> d!116971 (= (getValueByKey!515 lt!438115 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(declare-fun lt!438268 () Unit!32739)

(assert (=> d!116971 (= lt!438268 (choose!1614 lt!438115 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun e!557166 () Bool)

(assert (=> d!116971 e!557166))

(declare-fun res!661005 () Bool)

(assert (=> d!116971 (=> (not res!661005) (not e!557166))))

(assert (=> d!116971 (= res!661005 (isStrictlySorted!511 lt!438115))))

(assert (=> d!116971 (= (lemmaContainsTupThenGetReturnValue!272 lt!438115 (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438268)))

(declare-fun b!988043 () Bool)

(declare-fun res!661006 () Bool)

(assert (=> b!988043 (=> (not res!661006) (not e!557166))))

(assert (=> b!988043 (= res!661006 (containsKey!478 lt!438115 (_1!7488 lt!438012)))))

(declare-fun b!988044 () Bool)

(assert (=> b!988044 (= e!557166 (contains!5723 lt!438115 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(assert (= (and d!116971 res!661005) b!988043))

(assert (= (and b!988043 res!661006) b!988044))

(assert (=> d!116971 m!914707))

(declare-fun m!915011 () Bool)

(assert (=> d!116971 m!915011))

(declare-fun m!915013 () Bool)

(assert (=> d!116971 m!915013))

(declare-fun m!915015 () Bool)

(assert (=> b!988043 m!915015))

(declare-fun m!915017 () Bool)

(assert (=> b!988044 m!915017))

(assert (=> d!116905 d!116971))

(declare-fun b!988045 () Bool)

(declare-fun e!557168 () List!20909)

(declare-fun e!557169 () List!20909)

(assert (=> b!988045 (= e!557168 e!557169)))

(declare-fun c!100073 () Bool)

(assert (=> b!988045 (= c!100073 (and ((_ is Cons!20905) (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (= (_1!7488 (h!22067 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7488 lt!438012))))))

(declare-fun c!100071 () Bool)

(declare-fun b!988046 () Bool)

(assert (=> b!988046 (= c!100071 (and ((_ is Cons!20905) (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvsgt (_1!7488 (h!22067 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7488 lt!438012))))))

(declare-fun e!557167 () List!20909)

(assert (=> b!988046 (= e!557169 e!557167)))

(declare-fun b!988047 () Bool)

(declare-fun res!661008 () Bool)

(declare-fun e!557171 () Bool)

(assert (=> b!988047 (=> (not res!661008) (not e!557171))))

(declare-fun lt!438269 () List!20909)

(assert (=> b!988047 (= res!661008 (containsKey!478 lt!438269 (_1!7488 lt!438012)))))

(declare-fun b!988049 () Bool)

(declare-fun call!41863 () List!20909)

(assert (=> b!988049 (= e!557167 call!41863)))

(declare-fun b!988050 () Bool)

(assert (=> b!988050 (= e!557171 (contains!5723 lt!438269 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(declare-fun b!988051 () Bool)

(declare-fun call!41862 () List!20909)

(assert (=> b!988051 (= e!557169 call!41862)))

(declare-fun b!988052 () Bool)

(declare-fun e!557170 () List!20909)

(assert (=> b!988052 (= e!557170 (insertStrictlySorted!328 (t!29852 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun call!41864 () List!20909)

(declare-fun c!100072 () Bool)

(declare-fun bm!41859 () Bool)

(assert (=> bm!41859 (= call!41864 ($colon$colon!555 e!557170 (ite c!100072 (h!22067 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012)))))))

(declare-fun c!100070 () Bool)

(assert (=> bm!41859 (= c!100070 c!100072)))

(declare-fun bm!41860 () Bool)

(assert (=> bm!41860 (= call!41863 call!41862)))

(declare-fun bm!41861 () Bool)

(assert (=> bm!41861 (= call!41862 call!41864)))

(declare-fun b!988053 () Bool)

(assert (=> b!988053 (= e!557170 (ite c!100073 (t!29852 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (ite c!100071 (Cons!20905 (h!22067 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (t!29852 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) Nil!20906)))))

(declare-fun b!988054 () Bool)

(assert (=> b!988054 (= e!557167 call!41863)))

(declare-fun b!988048 () Bool)

(assert (=> b!988048 (= e!557168 call!41864)))

(declare-fun d!116973 () Bool)

(assert (=> d!116973 e!557171))

(declare-fun res!661007 () Bool)

(assert (=> d!116973 (=> (not res!661007) (not e!557171))))

(assert (=> d!116973 (= res!661007 (isStrictlySorted!511 lt!438269))))

(assert (=> d!116973 (= lt!438269 e!557168)))

(assert (=> d!116973 (= c!100072 (and ((_ is Cons!20905) (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvslt (_1!7488 (h!22067 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7488 lt!438012))))))

(assert (=> d!116973 (isStrictlySorted!511 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))))

(assert (=> d!116973 (= (insertStrictlySorted!328 (toList!6849 (getCurrentListMap!3870 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438269)))

(assert (= (and d!116973 c!100072) b!988048))

(assert (= (and d!116973 (not c!100072)) b!988045))

(assert (= (and b!988045 c!100073) b!988051))

(assert (= (and b!988045 (not c!100073)) b!988046))

(assert (= (and b!988046 c!100071) b!988054))

(assert (= (and b!988046 (not c!100071)) b!988049))

(assert (= (or b!988054 b!988049) bm!41860))

(assert (= (or b!988051 bm!41860) bm!41861))

(assert (= (or b!988048 bm!41861) bm!41859))

(assert (= (and bm!41859 c!100070) b!988052))

(assert (= (and bm!41859 (not c!100070)) b!988053))

(assert (= (and d!116973 res!661007) b!988047))

(assert (= (and b!988047 res!661008) b!988050))

(declare-fun m!915019 () Bool)

(assert (=> bm!41859 m!915019))

(declare-fun m!915021 () Bool)

(assert (=> b!988047 m!915021))

(declare-fun m!915023 () Bool)

(assert (=> d!116973 m!915023))

(declare-fun m!915025 () Bool)

(assert (=> d!116973 m!915025))

(declare-fun m!915027 () Bool)

(assert (=> b!988052 m!915027))

(declare-fun m!915029 () Bool)

(assert (=> b!988050 m!915029))

(assert (=> d!116905 d!116973))

(assert (=> b!987885 d!116917))

(declare-fun d!116975 () Bool)

(declare-fun e!557172 () Bool)

(assert (=> d!116975 e!557172))

(declare-fun res!661009 () Bool)

(assert (=> d!116975 (=> res!661009 e!557172)))

(declare-fun lt!438273 () Bool)

(assert (=> d!116975 (= res!661009 (not lt!438273))))

(declare-fun lt!438271 () Bool)

(assert (=> d!116975 (= lt!438273 lt!438271)))

(declare-fun lt!438270 () Unit!32739)

(declare-fun e!557173 () Unit!32739)

(assert (=> d!116975 (= lt!438270 e!557173)))

(declare-fun c!100074 () Bool)

(assert (=> d!116975 (= c!100074 lt!438271)))

(assert (=> d!116975 (= lt!438271 (containsKey!478 (toList!6849 lt!438118) (_1!7488 lt!438012)))))

(assert (=> d!116975 (= (contains!5722 lt!438118 (_1!7488 lt!438012)) lt!438273)))

(declare-fun b!988055 () Bool)

(declare-fun lt!438272 () Unit!32739)

(assert (=> b!988055 (= e!557173 lt!438272)))

(assert (=> b!988055 (= lt!438272 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438118) (_1!7488 lt!438012)))))

(assert (=> b!988055 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438118) (_1!7488 lt!438012)))))

(declare-fun b!988056 () Bool)

(declare-fun Unit!32747 () Unit!32739)

(assert (=> b!988056 (= e!557173 Unit!32747)))

(declare-fun b!988057 () Bool)

(assert (=> b!988057 (= e!557172 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438118) (_1!7488 lt!438012))))))

(assert (= (and d!116975 c!100074) b!988055))

(assert (= (and d!116975 (not c!100074)) b!988056))

(assert (= (and d!116975 (not res!661009)) b!988057))

(declare-fun m!915031 () Bool)

(assert (=> d!116975 m!915031))

(declare-fun m!915033 () Bool)

(assert (=> b!988055 m!915033))

(assert (=> b!988055 m!914725))

(assert (=> b!988055 m!914725))

(declare-fun m!915035 () Bool)

(assert (=> b!988055 m!915035))

(assert (=> b!988057 m!914725))

(assert (=> b!988057 m!914725))

(assert (=> b!988057 m!915035))

(assert (=> d!116907 d!116975))

(declare-fun b!988061 () Bool)

(declare-fun e!557175 () Option!521)

(assert (=> b!988061 (= e!557175 None!519)))

(declare-fun b!988058 () Bool)

(declare-fun e!557174 () Option!521)

(assert (=> b!988058 (= e!557174 (Some!520 (_2!7488 (h!22067 lt!438119))))))

(declare-fun d!116977 () Bool)

(declare-fun c!100075 () Bool)

(assert (=> d!116977 (= c!100075 (and ((_ is Cons!20905) lt!438119) (= (_1!7488 (h!22067 lt!438119)) (_1!7488 lt!438012))))))

(assert (=> d!116977 (= (getValueByKey!515 lt!438119 (_1!7488 lt!438012)) e!557174)))

(declare-fun b!988060 () Bool)

(assert (=> b!988060 (= e!557175 (getValueByKey!515 (t!29852 lt!438119) (_1!7488 lt!438012)))))

(declare-fun b!988059 () Bool)

(assert (=> b!988059 (= e!557174 e!557175)))

(declare-fun c!100076 () Bool)

(assert (=> b!988059 (= c!100076 (and ((_ is Cons!20905) lt!438119) (not (= (_1!7488 (h!22067 lt!438119)) (_1!7488 lt!438012)))))))

(assert (= (and d!116977 c!100075) b!988058))

(assert (= (and d!116977 (not c!100075)) b!988059))

(assert (= (and b!988059 c!100076) b!988060))

(assert (= (and b!988059 (not c!100076)) b!988061))

(declare-fun m!915037 () Bool)

(assert (=> b!988060 m!915037))

(assert (=> d!116907 d!116977))

(declare-fun d!116979 () Bool)

(assert (=> d!116979 (= (getValueByKey!515 lt!438119 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(declare-fun lt!438274 () Unit!32739)

(assert (=> d!116979 (= lt!438274 (choose!1614 lt!438119 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun e!557176 () Bool)

(assert (=> d!116979 e!557176))

(declare-fun res!661010 () Bool)

(assert (=> d!116979 (=> (not res!661010) (not e!557176))))

(assert (=> d!116979 (= res!661010 (isStrictlySorted!511 lt!438119))))

(assert (=> d!116979 (= (lemmaContainsTupThenGetReturnValue!272 lt!438119 (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438274)))

(declare-fun b!988062 () Bool)

(declare-fun res!661011 () Bool)

(assert (=> b!988062 (=> (not res!661011) (not e!557176))))

(assert (=> b!988062 (= res!661011 (containsKey!478 lt!438119 (_1!7488 lt!438012)))))

(declare-fun b!988063 () Bool)

(assert (=> b!988063 (= e!557176 (contains!5723 lt!438119 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(assert (= (and d!116979 res!661010) b!988062))

(assert (= (and b!988062 res!661011) b!988063))

(assert (=> d!116979 m!914719))

(declare-fun m!915039 () Bool)

(assert (=> d!116979 m!915039))

(declare-fun m!915041 () Bool)

(assert (=> d!116979 m!915041))

(declare-fun m!915043 () Bool)

(assert (=> b!988062 m!915043))

(declare-fun m!915045 () Bool)

(assert (=> b!988063 m!915045))

(assert (=> d!116907 d!116979))

(declare-fun b!988064 () Bool)

(declare-fun e!557178 () List!20909)

(declare-fun e!557179 () List!20909)

(assert (=> b!988064 (= e!557178 e!557179)))

(declare-fun c!100080 () Bool)

(assert (=> b!988064 (= c!100080 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (= (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438012))))))

(declare-fun b!988065 () Bool)

(declare-fun c!100078 () Bool)

(assert (=> b!988065 (= c!100078 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438012))))))

(declare-fun e!557177 () List!20909)

(assert (=> b!988065 (= e!557179 e!557177)))

(declare-fun b!988066 () Bool)

(declare-fun res!661013 () Bool)

(declare-fun e!557181 () Bool)

(assert (=> b!988066 (=> (not res!661013) (not e!557181))))

(declare-fun lt!438275 () List!20909)

(assert (=> b!988066 (= res!661013 (containsKey!478 lt!438275 (_1!7488 lt!438012)))))

(declare-fun b!988068 () Bool)

(declare-fun call!41866 () List!20909)

(assert (=> b!988068 (= e!557177 call!41866)))

(declare-fun b!988069 () Bool)

(assert (=> b!988069 (= e!557181 (contains!5723 lt!438275 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(declare-fun b!988070 () Bool)

(declare-fun call!41865 () List!20909)

(assert (=> b!988070 (= e!557179 call!41865)))

(declare-fun b!988071 () Bool)

(declare-fun e!557180 () List!20909)

(assert (=> b!988071 (= e!557180 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438016)) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun bm!41862 () Bool)

(declare-fun c!100079 () Bool)

(declare-fun call!41867 () List!20909)

(assert (=> bm!41862 (= call!41867 ($colon$colon!555 e!557180 (ite c!100079 (h!22067 (toList!6849 lt!438016)) (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012)))))))

(declare-fun c!100077 () Bool)

(assert (=> bm!41862 (= c!100077 c!100079)))

(declare-fun bm!41863 () Bool)

(assert (=> bm!41863 (= call!41866 call!41865)))

(declare-fun bm!41864 () Bool)

(assert (=> bm!41864 (= call!41865 call!41867)))

(declare-fun b!988072 () Bool)

(assert (=> b!988072 (= e!557180 (ite c!100080 (t!29852 (toList!6849 lt!438016)) (ite c!100078 (Cons!20905 (h!22067 (toList!6849 lt!438016)) (t!29852 (toList!6849 lt!438016))) Nil!20906)))))

(declare-fun b!988073 () Bool)

(assert (=> b!988073 (= e!557177 call!41866)))

(declare-fun b!988067 () Bool)

(assert (=> b!988067 (= e!557178 call!41867)))

(declare-fun d!116981 () Bool)

(assert (=> d!116981 e!557181))

(declare-fun res!661012 () Bool)

(assert (=> d!116981 (=> (not res!661012) (not e!557181))))

(assert (=> d!116981 (= res!661012 (isStrictlySorted!511 lt!438275))))

(assert (=> d!116981 (= lt!438275 e!557178)))

(assert (=> d!116981 (= c!100079 (and ((_ is Cons!20905) (toList!6849 lt!438016)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438016))) (_1!7488 lt!438012))))))

(assert (=> d!116981 (isStrictlySorted!511 (toList!6849 lt!438016))))

(assert (=> d!116981 (= (insertStrictlySorted!328 (toList!6849 lt!438016) (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438275)))

(assert (= (and d!116981 c!100079) b!988067))

(assert (= (and d!116981 (not c!100079)) b!988064))

(assert (= (and b!988064 c!100080) b!988070))

(assert (= (and b!988064 (not c!100080)) b!988065))

(assert (= (and b!988065 c!100078) b!988073))

(assert (= (and b!988065 (not c!100078)) b!988068))

(assert (= (or b!988073 b!988068) bm!41863))

(assert (= (or b!988070 bm!41863) bm!41864))

(assert (= (or b!988067 bm!41864) bm!41862))

(assert (= (and bm!41862 c!100077) b!988071))

(assert (= (and bm!41862 (not c!100077)) b!988072))

(assert (= (and d!116981 res!661012) b!988066))

(assert (= (and b!988066 res!661013) b!988069))

(declare-fun m!915047 () Bool)

(assert (=> bm!41862 m!915047))

(declare-fun m!915049 () Bool)

(assert (=> b!988066 m!915049))

(declare-fun m!915051 () Bool)

(assert (=> d!116981 m!915051))

(assert (=> d!116981 m!914967))

(declare-fun m!915053 () Bool)

(assert (=> b!988071 m!915053))

(declare-fun m!915055 () Bool)

(assert (=> b!988069 m!915055))

(assert (=> d!116907 d!116981))

(declare-fun b!988074 () Bool)

(declare-fun e!557183 () Bool)

(declare-fun e!557182 () Bool)

(assert (=> b!988074 (= e!557183 e!557182)))

(declare-fun lt!438276 () (_ BitVec 64))

(assert (=> b!988074 (= lt!438276 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!438278 () Unit!32739)

(assert (=> b!988074 (= lt!438278 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438276 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!988074 (arrayContainsKey!0 _keys!1544 lt!438276 #b00000000000000000000000000000000)))

(declare-fun lt!438277 () Unit!32739)

(assert (=> b!988074 (= lt!438277 lt!438278)))

(declare-fun res!661015 () Bool)

(assert (=> b!988074 (= res!661015 (= (seekEntryOrOpen!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1544 mask!1948) (Found!9196 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!988074 (=> (not res!661015) (not e!557182))))

(declare-fun b!988075 () Bool)

(declare-fun call!41868 () Bool)

(assert (=> b!988075 (= e!557182 call!41868)))

(declare-fun bm!41865 () Bool)

(assert (=> bm!41865 (= call!41868 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!988076 () Bool)

(declare-fun e!557184 () Bool)

(assert (=> b!988076 (= e!557184 e!557183)))

(declare-fun c!100081 () Bool)

(assert (=> b!988076 (= c!100081 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!116983 () Bool)

(declare-fun res!661014 () Bool)

(assert (=> d!116983 (=> res!661014 e!557184)))

(assert (=> d!116983 (= res!661014 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(assert (=> d!116983 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948) e!557184)))

(declare-fun b!988077 () Bool)

(assert (=> b!988077 (= e!557183 call!41868)))

(assert (= (and d!116983 (not res!661014)) b!988076))

(assert (= (and b!988076 c!100081) b!988074))

(assert (= (and b!988076 (not c!100081)) b!988077))

(assert (= (and b!988074 res!661015) b!988075))

(assert (= (or b!988075 b!988077) bm!41865))

(declare-fun m!915057 () Bool)

(assert (=> b!988074 m!915057))

(declare-fun m!915059 () Bool)

(assert (=> b!988074 m!915059))

(declare-fun m!915061 () Bool)

(assert (=> b!988074 m!915061))

(assert (=> b!988074 m!915057))

(declare-fun m!915063 () Bool)

(assert (=> b!988074 m!915063))

(declare-fun m!915065 () Bool)

(assert (=> bm!41865 m!915065))

(assert (=> b!988076 m!915057))

(assert (=> b!988076 m!915057))

(declare-fun m!915067 () Bool)

(assert (=> b!988076 m!915067))

(assert (=> bm!41811 d!116983))

(declare-fun d!116985 () Bool)

(assert (=> d!116985 (= (apply!928 lt!438207 (select (arr!30050 _keys!1544) from!1932)) (get!15611 (getValueByKey!515 (toList!6849 lt!438207) (select (arr!30050 _keys!1544) from!1932))))))

(declare-fun bs!28028 () Bool)

(assert (= bs!28028 d!116985))

(assert (=> bs!28028 m!914505))

(declare-fun m!915069 () Bool)

(assert (=> bs!28028 m!915069))

(assert (=> bs!28028 m!915069))

(declare-fun m!915071 () Bool)

(assert (=> bs!28028 m!915071))

(assert (=> b!987880 d!116985))

(assert (=> b!987880 d!116891))

(assert (=> d!116915 d!116883))

(declare-fun b!988078 () Bool)

(declare-fun e!557188 () Bool)

(declare-fun e!557187 () Bool)

(assert (=> b!988078 (= e!557188 e!557187)))

(declare-fun res!661016 () Bool)

(assert (=> b!988078 (=> (not res!661016) (not e!557187))))

(declare-fun e!557186 () Bool)

(assert (=> b!988078 (= res!661016 (not e!557186))))

(declare-fun res!661017 () Bool)

(assert (=> b!988078 (=> (not res!661017) (not e!557186))))

(assert (=> b!988078 (= res!661017 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!988079 () Bool)

(declare-fun e!557185 () Bool)

(assert (=> b!988079 (= e!557187 e!557185)))

(declare-fun c!100082 () Bool)

(assert (=> b!988079 (= c!100082 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!988080 () Bool)

(declare-fun call!41869 () Bool)

(assert (=> b!988080 (= e!557185 call!41869)))

(declare-fun d!116987 () Bool)

(declare-fun res!661018 () Bool)

(assert (=> d!116987 (=> res!661018 e!557188)))

(assert (=> d!116987 (= res!661018 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(assert (=> d!116987 (= (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100024 (Cons!20904 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) Nil!20905) Nil!20905)) e!557188)))

(declare-fun b!988081 () Bool)

(assert (=> b!988081 (= e!557186 (contains!5724 (ite c!100024 (Cons!20904 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) Nil!20905) Nil!20905) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!41866 () Bool)

(assert (=> bm!41866 (= call!41869 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100082 (Cons!20904 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!100024 (Cons!20904 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) Nil!20905) Nil!20905)) (ite c!100024 (Cons!20904 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) Nil!20905) Nil!20905))))))

(declare-fun b!988082 () Bool)

(assert (=> b!988082 (= e!557185 call!41869)))

(assert (= (and d!116987 (not res!661018)) b!988078))

(assert (= (and b!988078 res!661017) b!988081))

(assert (= (and b!988078 res!661016) b!988079))

(assert (= (and b!988079 c!100082) b!988082))

(assert (= (and b!988079 (not c!100082)) b!988080))

(assert (= (or b!988082 b!988080) bm!41866))

(assert (=> b!988078 m!915057))

(assert (=> b!988078 m!915057))

(assert (=> b!988078 m!915067))

(assert (=> b!988079 m!915057))

(assert (=> b!988079 m!915057))

(assert (=> b!988079 m!915067))

(assert (=> b!988081 m!915057))

(assert (=> b!988081 m!915057))

(declare-fun m!915073 () Bool)

(assert (=> b!988081 m!915073))

(assert (=> bm!41866 m!915057))

(declare-fun m!915075 () Bool)

(assert (=> bm!41866 m!915075))

(assert (=> bm!41845 d!116987))

(declare-fun d!116989 () Bool)

(declare-fun e!557189 () Bool)

(assert (=> d!116989 e!557189))

(declare-fun res!661019 () Bool)

(assert (=> d!116989 (=> res!661019 e!557189)))

(declare-fun lt!438282 () Bool)

(assert (=> d!116989 (= res!661019 (not lt!438282))))

(declare-fun lt!438280 () Bool)

(assert (=> d!116989 (= lt!438282 lt!438280)))

(declare-fun lt!438279 () Unit!32739)

(declare-fun e!557190 () Unit!32739)

(assert (=> d!116989 (= lt!438279 e!557190)))

(declare-fun c!100083 () Bool)

(assert (=> d!116989 (= c!100083 lt!438280)))

(assert (=> d!116989 (= lt!438280 (containsKey!478 (toList!6849 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220))) lt!438192))))

(assert (=> d!116989 (= (contains!5722 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220)) lt!438192) lt!438282)))

(declare-fun b!988083 () Bool)

(declare-fun lt!438281 () Unit!32739)

(assert (=> b!988083 (= e!557190 lt!438281)))

(assert (=> b!988083 (= lt!438281 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220))) lt!438192))))

(assert (=> b!988083 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220))) lt!438192))))

(declare-fun b!988084 () Bool)

(declare-fun Unit!32748 () Unit!32739)

(assert (=> b!988084 (= e!557190 Unit!32748)))

(declare-fun b!988085 () Bool)

(assert (=> b!988085 (= e!557189 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220))) lt!438192)))))

(assert (= (and d!116989 c!100083) b!988083))

(assert (= (and d!116989 (not c!100083)) b!988084))

(assert (= (and d!116989 (not res!661019)) b!988085))

(declare-fun m!915077 () Bool)

(assert (=> d!116989 m!915077))

(declare-fun m!915079 () Bool)

(assert (=> b!988083 m!915079))

(declare-fun m!915081 () Bool)

(assert (=> b!988083 m!915081))

(assert (=> b!988083 m!915081))

(declare-fun m!915083 () Bool)

(assert (=> b!988083 m!915083))

(assert (=> b!988085 m!915081))

(assert (=> b!988085 m!915081))

(assert (=> b!988085 m!915083))

(assert (=> b!987882 d!116989))

(declare-fun d!116991 () Bool)

(assert (=> d!116991 (= (apply!928 lt!438195 lt!438212) (get!15611 (getValueByKey!515 (toList!6849 lt!438195) lt!438212)))))

(declare-fun bs!28029 () Bool)

(assert (= bs!28029 d!116991))

(declare-fun m!915085 () Bool)

(assert (=> bs!28029 m!915085))

(assert (=> bs!28029 m!915085))

(declare-fun m!915087 () Bool)

(assert (=> bs!28029 m!915087))

(assert (=> b!987882 d!116991))

(declare-fun d!116993 () Bool)

(assert (=> d!116993 (= (apply!928 lt!438199 lt!438209) (get!15611 (getValueByKey!515 (toList!6849 lt!438199) lt!438209)))))

(declare-fun bs!28030 () Bool)

(assert (= bs!28030 d!116993))

(declare-fun m!915089 () Bool)

(assert (=> bs!28030 m!915089))

(assert (=> bs!28030 m!915089))

(declare-fun m!915091 () Bool)

(assert (=> bs!28030 m!915091))

(assert (=> b!987882 d!116993))

(declare-fun d!116995 () Bool)

(declare-fun e!557191 () Bool)

(assert (=> d!116995 e!557191))

(declare-fun res!661021 () Bool)

(assert (=> d!116995 (=> (not res!661021) (not e!557191))))

(declare-fun lt!438285 () ListLongMap!13667)

(assert (=> d!116995 (= res!661021 (contains!5722 lt!438285 (_1!7488 (tuple2!14957 lt!438208 zeroValue!1220))))))

(declare-fun lt!438286 () List!20909)

(assert (=> d!116995 (= lt!438285 (ListLongMap!13668 lt!438286))))

(declare-fun lt!438284 () Unit!32739)

(declare-fun lt!438283 () Unit!32739)

(assert (=> d!116995 (= lt!438284 lt!438283)))

(assert (=> d!116995 (= (getValueByKey!515 lt!438286 (_1!7488 (tuple2!14957 lt!438208 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438208 zeroValue!1220))))))

(assert (=> d!116995 (= lt!438283 (lemmaContainsTupThenGetReturnValue!272 lt!438286 (_1!7488 (tuple2!14957 lt!438208 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438208 zeroValue!1220))))))

(assert (=> d!116995 (= lt!438286 (insertStrictlySorted!328 (toList!6849 lt!438206) (_1!7488 (tuple2!14957 lt!438208 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438208 zeroValue!1220))))))

(assert (=> d!116995 (= (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220)) lt!438285)))

(declare-fun b!988086 () Bool)

(declare-fun res!661020 () Bool)

(assert (=> b!988086 (=> (not res!661020) (not e!557191))))

(assert (=> b!988086 (= res!661020 (= (getValueByKey!515 (toList!6849 lt!438285) (_1!7488 (tuple2!14957 lt!438208 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438208 zeroValue!1220)))))))

(declare-fun b!988087 () Bool)

(assert (=> b!988087 (= e!557191 (contains!5723 (toList!6849 lt!438285) (tuple2!14957 lt!438208 zeroValue!1220)))))

(assert (= (and d!116995 res!661021) b!988086))

(assert (= (and b!988086 res!661020) b!988087))

(declare-fun m!915093 () Bool)

(assert (=> d!116995 m!915093))

(declare-fun m!915095 () Bool)

(assert (=> d!116995 m!915095))

(declare-fun m!915097 () Bool)

(assert (=> d!116995 m!915097))

(declare-fun m!915099 () Bool)

(assert (=> d!116995 m!915099))

(declare-fun m!915101 () Bool)

(assert (=> b!988086 m!915101))

(declare-fun m!915103 () Bool)

(assert (=> b!988087 m!915103))

(assert (=> b!987882 d!116995))

(declare-fun d!116997 () Bool)

(declare-fun e!557192 () Bool)

(assert (=> d!116997 e!557192))

(declare-fun res!661023 () Bool)

(assert (=> d!116997 (=> (not res!661023) (not e!557192))))

(declare-fun lt!438289 () ListLongMap!13667)

(assert (=> d!116997 (= res!661023 (contains!5722 lt!438289 (_1!7488 (tuple2!14957 lt!438211 minValue!1220))))))

(declare-fun lt!438290 () List!20909)

(assert (=> d!116997 (= lt!438289 (ListLongMap!13668 lt!438290))))

(declare-fun lt!438288 () Unit!32739)

(declare-fun lt!438287 () Unit!32739)

(assert (=> d!116997 (= lt!438288 lt!438287)))

(assert (=> d!116997 (= (getValueByKey!515 lt!438290 (_1!7488 (tuple2!14957 lt!438211 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438211 minValue!1220))))))

(assert (=> d!116997 (= lt!438287 (lemmaContainsTupThenGetReturnValue!272 lt!438290 (_1!7488 (tuple2!14957 lt!438211 minValue!1220)) (_2!7488 (tuple2!14957 lt!438211 minValue!1220))))))

(assert (=> d!116997 (= lt!438290 (insertStrictlySorted!328 (toList!6849 lt!438199) (_1!7488 (tuple2!14957 lt!438211 minValue!1220)) (_2!7488 (tuple2!14957 lt!438211 minValue!1220))))))

(assert (=> d!116997 (= (+!3037 lt!438199 (tuple2!14957 lt!438211 minValue!1220)) lt!438289)))

(declare-fun b!988088 () Bool)

(declare-fun res!661022 () Bool)

(assert (=> b!988088 (=> (not res!661022) (not e!557192))))

(assert (=> b!988088 (= res!661022 (= (getValueByKey!515 (toList!6849 lt!438289) (_1!7488 (tuple2!14957 lt!438211 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438211 minValue!1220)))))))

(declare-fun b!988089 () Bool)

(assert (=> b!988089 (= e!557192 (contains!5723 (toList!6849 lt!438289) (tuple2!14957 lt!438211 minValue!1220)))))

(assert (= (and d!116997 res!661023) b!988088))

(assert (= (and b!988088 res!661022) b!988089))

(declare-fun m!915105 () Bool)

(assert (=> d!116997 m!915105))

(declare-fun m!915107 () Bool)

(assert (=> d!116997 m!915107))

(declare-fun m!915109 () Bool)

(assert (=> d!116997 m!915109))

(declare-fun m!915111 () Bool)

(assert (=> d!116997 m!915111))

(declare-fun m!915113 () Bool)

(assert (=> b!988088 m!915113))

(declare-fun m!915115 () Bool)

(assert (=> b!988089 m!915115))

(assert (=> b!987882 d!116997))

(declare-fun d!116999 () Bool)

(declare-fun e!557193 () Bool)

(assert (=> d!116999 e!557193))

(declare-fun res!661025 () Bool)

(assert (=> d!116999 (=> (not res!661025) (not e!557193))))

(declare-fun lt!438293 () ListLongMap!13667)

(assert (=> d!116999 (= res!661025 (contains!5722 lt!438293 (_1!7488 (tuple2!14957 lt!438194 zeroValue!1220))))))

(declare-fun lt!438294 () List!20909)

(assert (=> d!116999 (= lt!438293 (ListLongMap!13668 lt!438294))))

(declare-fun lt!438292 () Unit!32739)

(declare-fun lt!438291 () Unit!32739)

(assert (=> d!116999 (= lt!438292 lt!438291)))

(assert (=> d!116999 (= (getValueByKey!515 lt!438294 (_1!7488 (tuple2!14957 lt!438194 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438194 zeroValue!1220))))))

(assert (=> d!116999 (= lt!438291 (lemmaContainsTupThenGetReturnValue!272 lt!438294 (_1!7488 (tuple2!14957 lt!438194 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438194 zeroValue!1220))))))

(assert (=> d!116999 (= lt!438294 (insertStrictlySorted!328 (toList!6849 lt!438193) (_1!7488 (tuple2!14957 lt!438194 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438194 zeroValue!1220))))))

(assert (=> d!116999 (= (+!3037 lt!438193 (tuple2!14957 lt!438194 zeroValue!1220)) lt!438293)))

(declare-fun b!988090 () Bool)

(declare-fun res!661024 () Bool)

(assert (=> b!988090 (=> (not res!661024) (not e!557193))))

(assert (=> b!988090 (= res!661024 (= (getValueByKey!515 (toList!6849 lt!438293) (_1!7488 (tuple2!14957 lt!438194 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438194 zeroValue!1220)))))))

(declare-fun b!988091 () Bool)

(assert (=> b!988091 (= e!557193 (contains!5723 (toList!6849 lt!438293) (tuple2!14957 lt!438194 zeroValue!1220)))))

(assert (= (and d!116999 res!661025) b!988090))

(assert (= (and b!988090 res!661024) b!988091))

(declare-fun m!915117 () Bool)

(assert (=> d!116999 m!915117))

(declare-fun m!915119 () Bool)

(assert (=> d!116999 m!915119))

(declare-fun m!915121 () Bool)

(assert (=> d!116999 m!915121))

(declare-fun m!915123 () Bool)

(assert (=> d!116999 m!915123))

(declare-fun m!915125 () Bool)

(assert (=> b!988090 m!915125))

(declare-fun m!915127 () Bool)

(assert (=> b!988091 m!915127))

(assert (=> b!987882 d!116999))

(assert (=> b!987882 d!116961))

(declare-fun d!117001 () Bool)

(assert (=> d!117001 (= (apply!928 (+!3037 lt!438195 (tuple2!14957 lt!438201 minValue!1220)) lt!438212) (apply!928 lt!438195 lt!438212))))

(declare-fun lt!438297 () Unit!32739)

(declare-fun choose!1615 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> d!117001 (= lt!438297 (choose!1615 lt!438195 lt!438201 minValue!1220 lt!438212))))

(declare-fun e!557196 () Bool)

(assert (=> d!117001 e!557196))

(declare-fun res!661028 () Bool)

(assert (=> d!117001 (=> (not res!661028) (not e!557196))))

(assert (=> d!117001 (= res!661028 (contains!5722 lt!438195 lt!438212))))

(assert (=> d!117001 (= (addApplyDifferent!470 lt!438195 lt!438201 minValue!1220 lt!438212) lt!438297)))

(declare-fun b!988095 () Bool)

(assert (=> b!988095 (= e!557196 (not (= lt!438212 lt!438201)))))

(assert (= (and d!117001 res!661028) b!988095))

(assert (=> d!117001 m!914833))

(assert (=> d!117001 m!914837))

(assert (=> d!117001 m!914839))

(declare-fun m!915129 () Bool)

(assert (=> d!117001 m!915129))

(assert (=> d!117001 m!914837))

(declare-fun m!915131 () Bool)

(assert (=> d!117001 m!915131))

(assert (=> b!987882 d!117001))

(declare-fun d!117003 () Bool)

(assert (=> d!117003 (= (apply!928 lt!438193 lt!438198) (get!15611 (getValueByKey!515 (toList!6849 lt!438193) lt!438198)))))

(declare-fun bs!28031 () Bool)

(assert (= bs!28031 d!117003))

(declare-fun m!915133 () Bool)

(assert (=> bs!28031 m!915133))

(assert (=> bs!28031 m!915133))

(declare-fun m!915135 () Bool)

(assert (=> bs!28031 m!915135))

(assert (=> b!987882 d!117003))

(declare-fun d!117005 () Bool)

(assert (=> d!117005 (= (apply!928 (+!3037 lt!438193 (tuple2!14957 lt!438194 zeroValue!1220)) lt!438198) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438193 (tuple2!14957 lt!438194 zeroValue!1220))) lt!438198)))))

(declare-fun bs!28032 () Bool)

(assert (= bs!28032 d!117005))

(declare-fun m!915137 () Bool)

(assert (=> bs!28032 m!915137))

(assert (=> bs!28032 m!915137))

(declare-fun m!915139 () Bool)

(assert (=> bs!28032 m!915139))

(assert (=> b!987882 d!117005))

(declare-fun d!117007 () Bool)

(assert (=> d!117007 (contains!5722 (+!3037 lt!438206 (tuple2!14957 lt!438208 zeroValue!1220)) lt!438192)))

(declare-fun lt!438300 () Unit!32739)

(declare-fun choose!1616 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> d!117007 (= lt!438300 (choose!1616 lt!438206 lt!438208 zeroValue!1220 lt!438192))))

(assert (=> d!117007 (contains!5722 lt!438206 lt!438192)))

(assert (=> d!117007 (= (addStillContains!618 lt!438206 lt!438208 zeroValue!1220 lt!438192) lt!438300)))

(declare-fun bs!28033 () Bool)

(assert (= bs!28033 d!117007))

(assert (=> bs!28033 m!914829))

(assert (=> bs!28033 m!914829))

(assert (=> bs!28033 m!914831))

(declare-fun m!915141 () Bool)

(assert (=> bs!28033 m!915141))

(declare-fun m!915143 () Bool)

(assert (=> bs!28033 m!915143))

(assert (=> b!987882 d!117007))

(declare-fun d!117009 () Bool)

(assert (=> d!117009 (= (apply!928 (+!3037 lt!438193 (tuple2!14957 lt!438194 zeroValue!1220)) lt!438198) (apply!928 lt!438193 lt!438198))))

(declare-fun lt!438301 () Unit!32739)

(assert (=> d!117009 (= lt!438301 (choose!1615 lt!438193 lt!438194 zeroValue!1220 lt!438198))))

(declare-fun e!557197 () Bool)

(assert (=> d!117009 e!557197))

(declare-fun res!661029 () Bool)

(assert (=> d!117009 (=> (not res!661029) (not e!557197))))

(assert (=> d!117009 (= res!661029 (contains!5722 lt!438193 lt!438198))))

(assert (=> d!117009 (= (addApplyDifferent!470 lt!438193 lt!438194 zeroValue!1220 lt!438198) lt!438301)))

(declare-fun b!988097 () Bool)

(assert (=> b!988097 (= e!557197 (not (= lt!438198 lt!438194)))))

(assert (= (and d!117009 res!661029) b!988097))

(assert (=> d!117009 m!914817))

(assert (=> d!117009 m!914813))

(assert (=> d!117009 m!914815))

(declare-fun m!915145 () Bool)

(assert (=> d!117009 m!915145))

(assert (=> d!117009 m!914813))

(declare-fun m!915147 () Bool)

(assert (=> d!117009 m!915147))

(assert (=> b!987882 d!117009))

(declare-fun d!117011 () Bool)

(assert (=> d!117011 (= (apply!928 (+!3037 lt!438195 (tuple2!14957 lt!438201 minValue!1220)) lt!438212) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438195 (tuple2!14957 lt!438201 minValue!1220))) lt!438212)))))

(declare-fun bs!28034 () Bool)

(assert (= bs!28034 d!117011))

(declare-fun m!915149 () Bool)

(assert (=> bs!28034 m!915149))

(assert (=> bs!28034 m!915149))

(declare-fun m!915151 () Bool)

(assert (=> bs!28034 m!915151))

(assert (=> b!987882 d!117011))

(declare-fun d!117013 () Bool)

(assert (=> d!117013 (= (apply!928 (+!3037 lt!438199 (tuple2!14957 lt!438211 minValue!1220)) lt!438209) (apply!928 lt!438199 lt!438209))))

(declare-fun lt!438302 () Unit!32739)

(assert (=> d!117013 (= lt!438302 (choose!1615 lt!438199 lt!438211 minValue!1220 lt!438209))))

(declare-fun e!557198 () Bool)

(assert (=> d!117013 e!557198))

(declare-fun res!661030 () Bool)

(assert (=> d!117013 (=> (not res!661030) (not e!557198))))

(assert (=> d!117013 (= res!661030 (contains!5722 lt!438199 lt!438209))))

(assert (=> d!117013 (= (addApplyDifferent!470 lt!438199 lt!438211 minValue!1220 lt!438209) lt!438302)))

(declare-fun b!988098 () Bool)

(assert (=> b!988098 (= e!557198 (not (= lt!438209 lt!438211)))))

(assert (= (and d!117013 res!661030) b!988098))

(assert (=> d!117013 m!914835))

(assert (=> d!117013 m!914821))

(assert (=> d!117013 m!914823))

(declare-fun m!915153 () Bool)

(assert (=> d!117013 m!915153))

(assert (=> d!117013 m!914821))

(declare-fun m!915155 () Bool)

(assert (=> d!117013 m!915155))

(assert (=> b!987882 d!117013))

(declare-fun d!117015 () Bool)

(assert (=> d!117015 (= (apply!928 (+!3037 lt!438199 (tuple2!14957 lt!438211 minValue!1220)) lt!438209) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438199 (tuple2!14957 lt!438211 minValue!1220))) lt!438209)))))

(declare-fun bs!28035 () Bool)

(assert (= bs!28035 d!117015))

(declare-fun m!915157 () Bool)

(assert (=> bs!28035 m!915157))

(assert (=> bs!28035 m!915157))

(declare-fun m!915159 () Bool)

(assert (=> bs!28035 m!915159))

(assert (=> b!987882 d!117015))

(declare-fun d!117017 () Bool)

(declare-fun e!557199 () Bool)

(assert (=> d!117017 e!557199))

(declare-fun res!661032 () Bool)

(assert (=> d!117017 (=> (not res!661032) (not e!557199))))

(declare-fun lt!438305 () ListLongMap!13667)

(assert (=> d!117017 (= res!661032 (contains!5722 lt!438305 (_1!7488 (tuple2!14957 lt!438201 minValue!1220))))))

(declare-fun lt!438306 () List!20909)

(assert (=> d!117017 (= lt!438305 (ListLongMap!13668 lt!438306))))

(declare-fun lt!438304 () Unit!32739)

(declare-fun lt!438303 () Unit!32739)

(assert (=> d!117017 (= lt!438304 lt!438303)))

(assert (=> d!117017 (= (getValueByKey!515 lt!438306 (_1!7488 (tuple2!14957 lt!438201 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438201 minValue!1220))))))

(assert (=> d!117017 (= lt!438303 (lemmaContainsTupThenGetReturnValue!272 lt!438306 (_1!7488 (tuple2!14957 lt!438201 minValue!1220)) (_2!7488 (tuple2!14957 lt!438201 minValue!1220))))))

(assert (=> d!117017 (= lt!438306 (insertStrictlySorted!328 (toList!6849 lt!438195) (_1!7488 (tuple2!14957 lt!438201 minValue!1220)) (_2!7488 (tuple2!14957 lt!438201 minValue!1220))))))

(assert (=> d!117017 (= (+!3037 lt!438195 (tuple2!14957 lt!438201 minValue!1220)) lt!438305)))

(declare-fun b!988099 () Bool)

(declare-fun res!661031 () Bool)

(assert (=> b!988099 (=> (not res!661031) (not e!557199))))

(assert (=> b!988099 (= res!661031 (= (getValueByKey!515 (toList!6849 lt!438305) (_1!7488 (tuple2!14957 lt!438201 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438201 minValue!1220)))))))

(declare-fun b!988100 () Bool)

(assert (=> b!988100 (= e!557199 (contains!5723 (toList!6849 lt!438305) (tuple2!14957 lt!438201 minValue!1220)))))

(assert (= (and d!117017 res!661032) b!988099))

(assert (= (and b!988099 res!661031) b!988100))

(declare-fun m!915161 () Bool)

(assert (=> d!117017 m!915161))

(declare-fun m!915163 () Bool)

(assert (=> d!117017 m!915163))

(declare-fun m!915165 () Bool)

(assert (=> d!117017 m!915165))

(declare-fun m!915167 () Bool)

(assert (=> d!117017 m!915167))

(declare-fun m!915169 () Bool)

(assert (=> b!988099 m!915169))

(declare-fun m!915171 () Bool)

(assert (=> b!988100 m!915171))

(assert (=> b!987882 d!117017))

(declare-fun b!988104 () Bool)

(declare-fun e!557201 () Option!521)

(assert (=> b!988104 (= e!557201 None!519)))

(declare-fun b!988101 () Bool)

(declare-fun e!557200 () Option!521)

(assert (=> b!988101 (= e!557200 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438114)))))))

(declare-fun d!117019 () Bool)

(declare-fun c!100084 () Bool)

(assert (=> d!117019 (= c!100084 (and ((_ is Cons!20905) (toList!6849 lt!438114)) (= (_1!7488 (h!22067 (toList!6849 lt!438114))) (_1!7488 lt!438012))))))

(assert (=> d!117019 (= (getValueByKey!515 (toList!6849 lt!438114) (_1!7488 lt!438012)) e!557200)))

(declare-fun b!988103 () Bool)

(assert (=> b!988103 (= e!557201 (getValueByKey!515 (t!29852 (toList!6849 lt!438114)) (_1!7488 lt!438012)))))

(declare-fun b!988102 () Bool)

(assert (=> b!988102 (= e!557200 e!557201)))

(declare-fun c!100085 () Bool)

(assert (=> b!988102 (= c!100085 (and ((_ is Cons!20905) (toList!6849 lt!438114)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438114))) (_1!7488 lt!438012)))))))

(assert (= (and d!117019 c!100084) b!988101))

(assert (= (and d!117019 (not c!100084)) b!988102))

(assert (= (and b!988102 c!100085) b!988103))

(assert (= (and b!988102 (not c!100085)) b!988104))

(declare-fun m!915173 () Bool)

(assert (=> b!988103 m!915173))

(assert (=> b!987806 d!117019))

(declare-fun d!117021 () Bool)

(assert (=> d!117021 (= (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (and (not (= (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987789 d!117021))

(declare-fun b!988108 () Bool)

(declare-fun e!557203 () Option!521)

(assert (=> b!988108 (= e!557203 None!519)))

(declare-fun b!988105 () Bool)

(declare-fun e!557202 () Option!521)

(assert (=> b!988105 (= e!557202 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438118)))))))

(declare-fun d!117023 () Bool)

(declare-fun c!100086 () Bool)

(assert (=> d!117023 (= c!100086 (and ((_ is Cons!20905) (toList!6849 lt!438118)) (= (_1!7488 (h!22067 (toList!6849 lt!438118))) (_1!7488 lt!438012))))))

(assert (=> d!117023 (= (getValueByKey!515 (toList!6849 lt!438118) (_1!7488 lt!438012)) e!557202)))

(declare-fun b!988107 () Bool)

(assert (=> b!988107 (= e!557203 (getValueByKey!515 (t!29852 (toList!6849 lt!438118)) (_1!7488 lt!438012)))))

(declare-fun b!988106 () Bool)

(assert (=> b!988106 (= e!557202 e!557203)))

(declare-fun c!100087 () Bool)

(assert (=> b!988106 (= c!100087 (and ((_ is Cons!20905) (toList!6849 lt!438118)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438118))) (_1!7488 lt!438012)))))))

(assert (= (and d!117023 c!100086) b!988105))

(assert (= (and d!117023 (not c!100086)) b!988106))

(assert (= (and b!988106 c!100087) b!988107))

(assert (= (and b!988106 (not c!100087)) b!988108))

(declare-fun m!915175 () Bool)

(assert (=> b!988107 m!915175))

(assert (=> b!987808 d!117023))

(declare-fun b!988112 () Bool)

(declare-fun e!557205 () Option!521)

(assert (=> b!988112 (= e!557205 None!519)))

(declare-fun b!988109 () Bool)

(declare-fun e!557204 () Option!521)

(assert (=> b!988109 (= e!557204 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438070)))))))

(declare-fun d!117025 () Bool)

(declare-fun c!100088 () Bool)

(assert (=> d!117025 (= c!100088 (and ((_ is Cons!20905) (toList!6849 lt!438070)) (= (_1!7488 (h!22067 (toList!6849 lt!438070))) (_1!7488 lt!438012))))))

(assert (=> d!117025 (= (getValueByKey!515 (toList!6849 lt!438070) (_1!7488 lt!438012)) e!557204)))

(declare-fun b!988111 () Bool)

(assert (=> b!988111 (= e!557205 (getValueByKey!515 (t!29852 (toList!6849 lt!438070)) (_1!7488 lt!438012)))))

(declare-fun b!988110 () Bool)

(assert (=> b!988110 (= e!557204 e!557205)))

(declare-fun c!100089 () Bool)

(assert (=> b!988110 (= c!100089 (and ((_ is Cons!20905) (toList!6849 lt!438070)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438070))) (_1!7488 lt!438012)))))))

(assert (= (and d!117025 c!100088) b!988109))

(assert (= (and d!117025 (not c!100088)) b!988110))

(assert (= (and b!988110 c!100089) b!988111))

(assert (= (and b!988110 (not c!100089)) b!988112))

(declare-fun m!915177 () Bool)

(assert (=> b!988111 m!915177))

(assert (=> b!987754 d!117025))

(declare-fun d!117027 () Bool)

(declare-fun e!557206 () Bool)

(assert (=> d!117027 e!557206))

(declare-fun res!661034 () Bool)

(assert (=> d!117027 (=> (not res!661034) (not e!557206))))

(declare-fun lt!438309 () ListLongMap!13667)

(assert (=> d!117027 (= res!661034 (contains!5722 lt!438309 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!438310 () List!20909)

(assert (=> d!117027 (= lt!438309 (ListLongMap!13668 lt!438310))))

(declare-fun lt!438308 () Unit!32739)

(declare-fun lt!438307 () Unit!32739)

(assert (=> d!117027 (= lt!438308 lt!438307)))

(assert (=> d!117027 (= (getValueByKey!515 lt!438310 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117027 (= lt!438307 (lemmaContainsTupThenGetReturnValue!272 lt!438310 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117027 (= lt!438310 (insertStrictlySorted!328 (toList!6849 call!41817) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117027 (= (+!3037 call!41817 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!438309)))

(declare-fun b!988113 () Bool)

(declare-fun res!661033 () Bool)

(assert (=> b!988113 (=> (not res!661033) (not e!557206))))

(assert (=> b!988113 (= res!661033 (= (getValueByKey!515 (toList!6849 lt!438309) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!988114 () Bool)

(assert (=> b!988114 (= e!557206 (contains!5723 (toList!6849 lt!438309) (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!117027 res!661034) b!988113))

(assert (= (and b!988113 res!661033) b!988114))

(declare-fun m!915179 () Bool)

(assert (=> d!117027 m!915179))

(declare-fun m!915181 () Bool)

(assert (=> d!117027 m!915181))

(declare-fun m!915183 () Bool)

(assert (=> d!117027 m!915183))

(declare-fun m!915185 () Bool)

(assert (=> d!117027 m!915185))

(declare-fun m!915187 () Bool)

(assert (=> b!988113 m!915187))

(declare-fun m!915189 () Bool)

(assert (=> b!988114 m!915189))

(assert (=> b!987791 d!117027))

(declare-fun d!117029 () Bool)

(assert (=> d!117029 (not (contains!5722 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089)) lt!438092))))

(declare-fun lt!438313 () Unit!32739)

(declare-fun choose!1617 (ListLongMap!13667 (_ BitVec 64) V!35947 (_ BitVec 64)) Unit!32739)

(assert (=> d!117029 (= lt!438313 (choose!1617 lt!438087 lt!438086 lt!438089 lt!438092))))

(declare-fun e!557209 () Bool)

(assert (=> d!117029 e!557209))

(declare-fun res!661037 () Bool)

(assert (=> d!117029 (=> (not res!661037) (not e!557209))))

(assert (=> d!117029 (= res!661037 (not (contains!5722 lt!438087 lt!438092)))))

(assert (=> d!117029 (= (addStillNotContains!234 lt!438087 lt!438086 lt!438089 lt!438092) lt!438313)))

(declare-fun b!988118 () Bool)

(assert (=> b!988118 (= e!557209 (not (= lt!438086 lt!438092)))))

(assert (= (and d!117029 res!661037) b!988118))

(assert (=> d!117029 m!914625))

(assert (=> d!117029 m!914625))

(assert (=> d!117029 m!914631))

(declare-fun m!915191 () Bool)

(assert (=> d!117029 m!915191))

(declare-fun m!915193 () Bool)

(assert (=> d!117029 m!915193))

(assert (=> b!987791 d!117029))

(declare-fun d!117031 () Bool)

(declare-fun e!557210 () Bool)

(assert (=> d!117031 e!557210))

(declare-fun res!661039 () Bool)

(assert (=> d!117031 (=> (not res!661039) (not e!557210))))

(declare-fun lt!438316 () ListLongMap!13667)

(assert (=> d!117031 (= res!661039 (contains!5722 lt!438316 (_1!7488 (tuple2!14957 lt!438086 lt!438089))))))

(declare-fun lt!438317 () List!20909)

(assert (=> d!117031 (= lt!438316 (ListLongMap!13668 lt!438317))))

(declare-fun lt!438315 () Unit!32739)

(declare-fun lt!438314 () Unit!32739)

(assert (=> d!117031 (= lt!438315 lt!438314)))

(assert (=> d!117031 (= (getValueByKey!515 lt!438317 (_1!7488 (tuple2!14957 lt!438086 lt!438089))) (Some!520 (_2!7488 (tuple2!14957 lt!438086 lt!438089))))))

(assert (=> d!117031 (= lt!438314 (lemmaContainsTupThenGetReturnValue!272 lt!438317 (_1!7488 (tuple2!14957 lt!438086 lt!438089)) (_2!7488 (tuple2!14957 lt!438086 lt!438089))))))

(assert (=> d!117031 (= lt!438317 (insertStrictlySorted!328 (toList!6849 lt!438087) (_1!7488 (tuple2!14957 lt!438086 lt!438089)) (_2!7488 (tuple2!14957 lt!438086 lt!438089))))))

(assert (=> d!117031 (= (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089)) lt!438316)))

(declare-fun b!988119 () Bool)

(declare-fun res!661038 () Bool)

(assert (=> b!988119 (=> (not res!661038) (not e!557210))))

(assert (=> b!988119 (= res!661038 (= (getValueByKey!515 (toList!6849 lt!438316) (_1!7488 (tuple2!14957 lt!438086 lt!438089))) (Some!520 (_2!7488 (tuple2!14957 lt!438086 lt!438089)))))))

(declare-fun b!988120 () Bool)

(assert (=> b!988120 (= e!557210 (contains!5723 (toList!6849 lt!438316) (tuple2!14957 lt!438086 lt!438089)))))

(assert (= (and d!117031 res!661039) b!988119))

(assert (= (and b!988119 res!661038) b!988120))

(declare-fun m!915195 () Bool)

(assert (=> d!117031 m!915195))

(declare-fun m!915197 () Bool)

(assert (=> d!117031 m!915197))

(declare-fun m!915199 () Bool)

(assert (=> d!117031 m!915199))

(declare-fun m!915201 () Bool)

(assert (=> d!117031 m!915201))

(declare-fun m!915203 () Bool)

(assert (=> b!988119 m!915203))

(declare-fun m!915205 () Bool)

(assert (=> b!988120 m!915205))

(assert (=> b!987791 d!117031))

(declare-fun d!117033 () Bool)

(declare-fun e!557211 () Bool)

(assert (=> d!117033 e!557211))

(declare-fun res!661040 () Bool)

(assert (=> d!117033 (=> res!661040 e!557211)))

(declare-fun lt!438321 () Bool)

(assert (=> d!117033 (= res!661040 (not lt!438321))))

(declare-fun lt!438319 () Bool)

(assert (=> d!117033 (= lt!438321 lt!438319)))

(declare-fun lt!438318 () Unit!32739)

(declare-fun e!557212 () Unit!32739)

(assert (=> d!117033 (= lt!438318 e!557212)))

(declare-fun c!100090 () Bool)

(assert (=> d!117033 (= c!100090 lt!438319)))

(assert (=> d!117033 (= lt!438319 (containsKey!478 (toList!6849 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089))) lt!438092))))

(assert (=> d!117033 (= (contains!5722 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089)) lt!438092) lt!438321)))

(declare-fun b!988121 () Bool)

(declare-fun lt!438320 () Unit!32739)

(assert (=> b!988121 (= e!557212 lt!438320)))

(assert (=> b!988121 (= lt!438320 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089))) lt!438092))))

(assert (=> b!988121 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089))) lt!438092))))

(declare-fun b!988122 () Bool)

(declare-fun Unit!32749 () Unit!32739)

(assert (=> b!988122 (= e!557212 Unit!32749)))

(declare-fun b!988123 () Bool)

(assert (=> b!988123 (= e!557211 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438087 (tuple2!14957 lt!438086 lt!438089))) lt!438092)))))

(assert (= (and d!117033 c!100090) b!988121))

(assert (= (and d!117033 (not c!100090)) b!988122))

(assert (= (and d!117033 (not res!661040)) b!988123))

(declare-fun m!915207 () Bool)

(assert (=> d!117033 m!915207))

(declare-fun m!915209 () Bool)

(assert (=> b!988121 m!915209))

(declare-fun m!915211 () Bool)

(assert (=> b!988121 m!915211))

(assert (=> b!988121 m!915211))

(declare-fun m!915213 () Bool)

(assert (=> b!988121 m!915213))

(assert (=> b!988123 m!915211))

(assert (=> b!988123 m!915211))

(assert (=> b!988123 m!915213))

(assert (=> b!987791 d!117033))

(assert (=> b!987791 d!116947))

(declare-fun d!117035 () Bool)

(assert (=> d!117035 (= (apply!928 lt!438207 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15611 (getValueByKey!515 (toList!6849 lt!438207) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28036 () Bool)

(assert (= bs!28036 d!117035))

(declare-fun m!915215 () Bool)

(assert (=> bs!28036 m!915215))

(assert (=> bs!28036 m!915215))

(declare-fun m!915217 () Bool)

(assert (=> bs!28036 m!915217))

(assert (=> b!987876 d!117035))

(assert (=> bm!41829 d!116893))

(declare-fun b!988127 () Bool)

(declare-fun e!557214 () Option!521)

(assert (=> b!988127 (= e!557214 None!519)))

(declare-fun b!988124 () Bool)

(declare-fun e!557213 () Option!521)

(assert (=> b!988124 (= e!557213 (Some!520 (_2!7488 (h!22067 (toList!6849 lt!438122)))))))

(declare-fun d!117037 () Bool)

(declare-fun c!100091 () Bool)

(assert (=> d!117037 (= c!100091 (and ((_ is Cons!20905) (toList!6849 lt!438122)) (= (_1!7488 (h!22067 (toList!6849 lt!438122))) (_1!7488 lt!438014))))))

(assert (=> d!117037 (= (getValueByKey!515 (toList!6849 lt!438122) (_1!7488 lt!438014)) e!557213)))

(declare-fun b!988126 () Bool)

(assert (=> b!988126 (= e!557214 (getValueByKey!515 (t!29852 (toList!6849 lt!438122)) (_1!7488 lt!438014)))))

(declare-fun b!988125 () Bool)

(assert (=> b!988125 (= e!557213 e!557214)))

(declare-fun c!100092 () Bool)

(assert (=> b!988125 (= c!100092 (and ((_ is Cons!20905) (toList!6849 lt!438122)) (not (= (_1!7488 (h!22067 (toList!6849 lt!438122))) (_1!7488 lt!438014)))))))

(assert (= (and d!117037 c!100091) b!988124))

(assert (= (and d!117037 (not c!100091)) b!988125))

(assert (= (and b!988125 c!100092) b!988126))

(assert (= (and b!988125 (not c!100092)) b!988127))

(declare-fun m!915219 () Bool)

(assert (=> b!988126 m!915219))

(assert (=> b!987810 d!117037))

(declare-fun d!117039 () Bool)

(assert (=> d!117039 (arrayContainsKey!0 _keys!1544 lt!438057 #b00000000000000000000000000000000)))

(declare-fun lt!438324 () Unit!32739)

(declare-fun choose!13 (array!62397 (_ BitVec 64) (_ BitVec 32)) Unit!32739)

(assert (=> d!117039 (= lt!438324 (choose!13 _keys!1544 lt!438057 #b00000000000000000000000000000000))))

(assert (=> d!117039 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!117039 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438057 #b00000000000000000000000000000000) lt!438324)))

(declare-fun bs!28037 () Bool)

(assert (= bs!28037 d!117039))

(assert (=> bs!28037 m!914595))

(declare-fun m!915221 () Bool)

(assert (=> bs!28037 m!915221))

(assert (=> b!987746 d!117039))

(declare-fun d!117041 () Bool)

(declare-fun res!661045 () Bool)

(declare-fun e!557219 () Bool)

(assert (=> d!117041 (=> res!661045 e!557219)))

(assert (=> d!117041 (= res!661045 (= (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) lt!438057))))

(assert (=> d!117041 (= (arrayContainsKey!0 _keys!1544 lt!438057 #b00000000000000000000000000000000) e!557219)))

(declare-fun b!988132 () Bool)

(declare-fun e!557220 () Bool)

(assert (=> b!988132 (= e!557219 e!557220)))

(declare-fun res!661046 () Bool)

(assert (=> b!988132 (=> (not res!661046) (not e!557220))))

(assert (=> b!988132 (= res!661046 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(declare-fun b!988133 () Bool)

(assert (=> b!988133 (= e!557220 (arrayContainsKey!0 _keys!1544 lt!438057 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!117041 (not res!661045)) b!988132))

(assert (= (and b!988132 res!661046) b!988133))

(assert (=> d!117041 m!914591))

(declare-fun m!915223 () Bool)

(assert (=> b!988133 m!915223))

(assert (=> b!987746 d!117041))

(declare-fun e!557227 () SeekEntryResult!9196)

(declare-fun b!988146 () Bool)

(declare-fun lt!438332 () SeekEntryResult!9196)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62397 (_ BitVec 32)) SeekEntryResult!9196)

(assert (=> b!988146 (= e!557227 (seekKeyOrZeroReturnVacant!0 (x!85979 lt!438332) (index!39156 lt!438332) (index!39156 lt!438332) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(declare-fun b!988147 () Bool)

(assert (=> b!988147 (= e!557227 (MissingZero!9196 (index!39156 lt!438332)))))

(declare-fun d!117043 () Bool)

(declare-fun lt!438333 () SeekEntryResult!9196)

(assert (=> d!117043 (and (or ((_ is Undefined!9196) lt!438333) (not ((_ is Found!9196) lt!438333)) (and (bvsge (index!39155 lt!438333) #b00000000000000000000000000000000) (bvslt (index!39155 lt!438333) (size!30530 _keys!1544)))) (or ((_ is Undefined!9196) lt!438333) ((_ is Found!9196) lt!438333) (not ((_ is MissingZero!9196) lt!438333)) (and (bvsge (index!39154 lt!438333) #b00000000000000000000000000000000) (bvslt (index!39154 lt!438333) (size!30530 _keys!1544)))) (or ((_ is Undefined!9196) lt!438333) ((_ is Found!9196) lt!438333) ((_ is MissingZero!9196) lt!438333) (not ((_ is MissingVacant!9196) lt!438333)) (and (bvsge (index!39157 lt!438333) #b00000000000000000000000000000000) (bvslt (index!39157 lt!438333) (size!30530 _keys!1544)))) (or ((_ is Undefined!9196) lt!438333) (ite ((_ is Found!9196) lt!438333) (= (select (arr!30050 _keys!1544) (index!39155 lt!438333)) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9196) lt!438333) (= (select (arr!30050 _keys!1544) (index!39154 lt!438333)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9196) lt!438333) (= (select (arr!30050 _keys!1544) (index!39157 lt!438333)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!557228 () SeekEntryResult!9196)

(assert (=> d!117043 (= lt!438333 e!557228)))

(declare-fun c!100101 () Bool)

(assert (=> d!117043 (= c!100101 (and ((_ is Intermediate!9196) lt!438332) (undefined!10008 lt!438332)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62397 (_ BitVec 32)) SeekEntryResult!9196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!117043 (= lt!438332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) mask!1948) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(assert (=> d!117043 (validMask!0 mask!1948)))

(assert (=> d!117043 (= (seekEntryOrOpen!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) lt!438333)))

(declare-fun b!988148 () Bool)

(declare-fun e!557229 () SeekEntryResult!9196)

(assert (=> b!988148 (= e!557229 (Found!9196 (index!39156 lt!438332)))))

(declare-fun b!988149 () Bool)

(declare-fun c!100099 () Bool)

(declare-fun lt!438331 () (_ BitVec 64))

(assert (=> b!988149 (= c!100099 (= lt!438331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988149 (= e!557229 e!557227)))

(declare-fun b!988150 () Bool)

(assert (=> b!988150 (= e!557228 e!557229)))

(assert (=> b!988150 (= lt!438331 (select (arr!30050 _keys!1544) (index!39156 lt!438332)))))

(declare-fun c!100100 () Bool)

(assert (=> b!988150 (= c!100100 (= lt!438331 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!988151 () Bool)

(assert (=> b!988151 (= e!557228 Undefined!9196)))

(assert (= (and d!117043 c!100101) b!988151))

(assert (= (and d!117043 (not c!100101)) b!988150))

(assert (= (and b!988150 c!100100) b!988148))

(assert (= (and b!988150 (not c!100100)) b!988149))

(assert (= (and b!988149 c!100099) b!988147))

(assert (= (and b!988149 (not c!100099)) b!988146))

(assert (=> b!988146 m!914591))

(declare-fun m!915225 () Bool)

(assert (=> b!988146 m!915225))

(declare-fun m!915227 () Bool)

(assert (=> d!117043 m!915227))

(assert (=> d!117043 m!914591))

(declare-fun m!915229 () Bool)

(assert (=> d!117043 m!915229))

(declare-fun m!915231 () Bool)

(assert (=> d!117043 m!915231))

(assert (=> d!117043 m!914591))

(assert (=> d!117043 m!915227))

(assert (=> d!117043 m!914497))

(declare-fun m!915233 () Bool)

(assert (=> d!117043 m!915233))

(declare-fun m!915235 () Bool)

(assert (=> d!117043 m!915235))

(declare-fun m!915237 () Bool)

(assert (=> b!988150 m!915237))

(assert (=> b!987746 d!117043))

(assert (=> b!987893 d!116917))

(assert (=> b!987793 d!117021))

(declare-fun d!117045 () Bool)

(assert (=> d!117045 (= (validKeyInArray!0 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)) (and (not (= (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30050 _keys!1544) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987906 d!117045))

(assert (=> b!987864 d!117021))

(declare-fun d!117047 () Bool)

(declare-fun e!557230 () Bool)

(assert (=> d!117047 e!557230))

(declare-fun res!661047 () Bool)

(assert (=> d!117047 (=> res!661047 e!557230)))

(declare-fun lt!438337 () Bool)

(assert (=> d!117047 (= res!661047 (not lt!438337))))

(declare-fun lt!438335 () Bool)

(assert (=> d!117047 (= lt!438337 lt!438335)))

(declare-fun lt!438334 () Unit!32739)

(declare-fun e!557231 () Unit!32739)

(assert (=> d!117047 (= lt!438334 e!557231)))

(declare-fun c!100102 () Bool)

(assert (=> d!117047 (= c!100102 lt!438335)))

(assert (=> d!117047 (= lt!438335 (containsKey!478 (toList!6849 lt!438207) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117047 (= (contains!5722 lt!438207 #b1000000000000000000000000000000000000000000000000000000000000000) lt!438337)))

(declare-fun b!988152 () Bool)

(declare-fun lt!438336 () Unit!32739)

(assert (=> b!988152 (= e!557231 lt!438336)))

(assert (=> b!988152 (= lt!438336 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438207) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988152 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988153 () Bool)

(declare-fun Unit!32750 () Unit!32739)

(assert (=> b!988153 (= e!557231 Unit!32750)))

(declare-fun b!988154 () Bool)

(assert (=> b!988154 (= e!557230 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117047 c!100102) b!988152))

(assert (= (and d!117047 (not c!100102)) b!988153))

(assert (= (and d!117047 (not res!661047)) b!988154))

(declare-fun m!915239 () Bool)

(assert (=> d!117047 m!915239))

(declare-fun m!915241 () Bool)

(assert (=> b!988152 m!915241))

(assert (=> b!988152 m!915215))

(assert (=> b!988152 m!915215))

(declare-fun m!915243 () Bool)

(assert (=> b!988152 m!915243))

(assert (=> b!988154 m!915215))

(assert (=> b!988154 m!915215))

(assert (=> b!988154 m!915243))

(assert (=> bm!41840 d!117047))

(assert (=> b!987872 d!117021))

(declare-fun d!117049 () Bool)

(declare-fun lt!438340 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!420 (List!20909) (InoxSet tuple2!14956))

(assert (=> d!117049 (= lt!438340 (select (content!420 (toList!6849 lt!438102)) lt!438013))))

(declare-fun e!557236 () Bool)

(assert (=> d!117049 (= lt!438340 e!557236)))

(declare-fun res!661053 () Bool)

(assert (=> d!117049 (=> (not res!661053) (not e!557236))))

(assert (=> d!117049 (= res!661053 ((_ is Cons!20905) (toList!6849 lt!438102)))))

(assert (=> d!117049 (= (contains!5723 (toList!6849 lt!438102) lt!438013) lt!438340)))

(declare-fun b!988159 () Bool)

(declare-fun e!557237 () Bool)

(assert (=> b!988159 (= e!557236 e!557237)))

(declare-fun res!661052 () Bool)

(assert (=> b!988159 (=> res!661052 e!557237)))

(assert (=> b!988159 (= res!661052 (= (h!22067 (toList!6849 lt!438102)) lt!438013))))

(declare-fun b!988160 () Bool)

(assert (=> b!988160 (= e!557237 (contains!5723 (t!29852 (toList!6849 lt!438102)) lt!438013))))

(assert (= (and d!117049 res!661053) b!988159))

(assert (= (and b!988159 (not res!661052)) b!988160))

(declare-fun m!915245 () Bool)

(assert (=> d!117049 m!915245))

(declare-fun m!915247 () Bool)

(assert (=> d!117049 m!915247))

(declare-fun m!915249 () Bool)

(assert (=> b!988160 m!915249))

(assert (=> b!987801 d!117049))

(declare-fun d!117051 () Bool)

(declare-fun e!557238 () Bool)

(assert (=> d!117051 e!557238))

(declare-fun res!661054 () Bool)

(assert (=> d!117051 (=> res!661054 e!557238)))

(declare-fun lt!438344 () Bool)

(assert (=> d!117051 (= res!661054 (not lt!438344))))

(declare-fun lt!438342 () Bool)

(assert (=> d!117051 (= lt!438344 lt!438342)))

(declare-fun lt!438341 () Unit!32739)

(declare-fun e!557239 () Unit!32739)

(assert (=> d!117051 (= lt!438341 e!557239)))

(declare-fun c!100103 () Bool)

(assert (=> d!117051 (= c!100103 lt!438342)))

(assert (=> d!117051 (= lt!438342 (containsKey!478 (toList!6849 lt!438090) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117051 (= (contains!5722 lt!438090 #b0000000000000000000000000000000000000000000000000000000000000000) lt!438344)))

(declare-fun b!988161 () Bool)

(declare-fun lt!438343 () Unit!32739)

(assert (=> b!988161 (= e!557239 lt!438343)))

(assert (=> b!988161 (= lt!438343 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438090) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988161 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988162 () Bool)

(declare-fun Unit!32751 () Unit!32739)

(assert (=> b!988162 (= e!557239 Unit!32751)))

(declare-fun b!988163 () Bool)

(assert (=> b!988163 (= e!557238 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117051 c!100103) b!988161))

(assert (= (and d!117051 (not c!100103)) b!988162))

(assert (= (and d!117051 (not res!661054)) b!988163))

(declare-fun m!915251 () Bool)

(assert (=> d!117051 m!915251))

(declare-fun m!915253 () Bool)

(assert (=> b!988161 m!915253))

(declare-fun m!915255 () Bool)

(assert (=> b!988161 m!915255))

(assert (=> b!988161 m!915255))

(declare-fun m!915257 () Bool)

(assert (=> b!988161 m!915257))

(assert (=> b!988163 m!915255))

(assert (=> b!988163 m!915255))

(assert (=> b!988163 m!915257))

(assert (=> d!116893 d!117051))

(assert (=> d!116893 d!116883))

(declare-fun d!117053 () Bool)

(declare-fun e!557240 () Bool)

(assert (=> d!117053 e!557240))

(declare-fun res!661056 () Bool)

(assert (=> d!117053 (=> (not res!661056) (not e!557240))))

(declare-fun lt!438347 () ListLongMap!13667)

(assert (=> d!117053 (= res!661056 (contains!5722 lt!438347 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438348 () List!20909)

(assert (=> d!117053 (= lt!438347 (ListLongMap!13668 lt!438348))))

(declare-fun lt!438346 () Unit!32739)

(declare-fun lt!438345 () Unit!32739)

(assert (=> d!117053 (= lt!438346 lt!438345)))

(assert (=> d!117053 (= (getValueByKey!515 lt!438348 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117053 (= lt!438345 (lemmaContainsTupThenGetReturnValue!272 lt!438348 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117053 (= lt!438348 (insertStrictlySorted!328 (toList!6849 call!41841) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117053 (= (+!3037 call!41841 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438347)))

(declare-fun b!988164 () Bool)

(declare-fun res!661055 () Bool)

(assert (=> b!988164 (=> (not res!661055) (not e!557240))))

(assert (=> b!988164 (= res!661055 (= (getValueByKey!515 (toList!6849 lt!438347) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!988165 () Bool)

(assert (=> b!988165 (= e!557240 (contains!5723 (toList!6849 lt!438347) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117053 res!661056) b!988164))

(assert (= (and b!988164 res!661055) b!988165))

(declare-fun m!915259 () Bool)

(assert (=> d!117053 m!915259))

(declare-fun m!915261 () Bool)

(assert (=> d!117053 m!915261))

(declare-fun m!915263 () Bool)

(assert (=> d!117053 m!915263))

(declare-fun m!915265 () Bool)

(assert (=> d!117053 m!915265))

(declare-fun m!915267 () Bool)

(assert (=> b!988164 m!915267))

(declare-fun m!915269 () Bool)

(assert (=> b!988165 m!915269))

(assert (=> b!987887 d!117053))

(declare-fun d!117055 () Bool)

(declare-fun lt!438349 () Bool)

(assert (=> d!117055 (= lt!438349 (select (content!420 (toList!6849 lt!438106)) lt!438012))))

(declare-fun e!557241 () Bool)

(assert (=> d!117055 (= lt!438349 e!557241)))

(declare-fun res!661058 () Bool)

(assert (=> d!117055 (=> (not res!661058) (not e!557241))))

(assert (=> d!117055 (= res!661058 ((_ is Cons!20905) (toList!6849 lt!438106)))))

(assert (=> d!117055 (= (contains!5723 (toList!6849 lt!438106) lt!438012) lt!438349)))

(declare-fun b!988166 () Bool)

(declare-fun e!557242 () Bool)

(assert (=> b!988166 (= e!557241 e!557242)))

(declare-fun res!661057 () Bool)

(assert (=> b!988166 (=> res!661057 e!557242)))

(assert (=> b!988166 (= res!661057 (= (h!22067 (toList!6849 lt!438106)) lt!438012))))

(declare-fun b!988167 () Bool)

(assert (=> b!988167 (= e!557242 (contains!5723 (t!29852 (toList!6849 lt!438106)) lt!438012))))

(assert (= (and d!117055 res!661058) b!988166))

(assert (= (and b!988166 (not res!661057)) b!988167))

(declare-fun m!915271 () Bool)

(assert (=> d!117055 m!915271))

(declare-fun m!915273 () Bool)

(assert (=> d!117055 m!915273))

(declare-fun m!915275 () Bool)

(assert (=> b!988167 m!915275))

(assert (=> b!987803 d!117055))

(declare-fun d!117057 () Bool)

(declare-fun isEmpty!726 (List!20909) Bool)

(assert (=> d!117057 (= (isEmpty!725 lt!438090) (isEmpty!726 (toList!6849 lt!438090)))))

(declare-fun bs!28038 () Bool)

(assert (= bs!28038 d!117057))

(declare-fun m!915277 () Bool)

(assert (=> bs!28038 m!915277))

(assert (=> b!987786 d!117057))

(declare-fun d!117059 () Bool)

(assert (=> d!117059 (= (apply!928 lt!438185 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15611 (getValueByKey!515 (toList!6849 lt!438185) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28039 () Bool)

(assert (= bs!28039 d!117059))

(assert (=> bs!28039 m!914619))

(assert (=> bs!28039 m!914997))

(assert (=> bs!28039 m!914997))

(declare-fun m!915279 () Bool)

(assert (=> bs!28039 m!915279))

(assert (=> b!987859 d!117059))

(assert (=> b!987859 d!116947))

(declare-fun d!117061 () Bool)

(declare-fun lt!438350 () Bool)

(assert (=> d!117061 (= lt!438350 (select (content!420 (toList!6849 lt!438110)) lt!438014))))

(declare-fun e!557243 () Bool)

(assert (=> d!117061 (= lt!438350 e!557243)))

(declare-fun res!661060 () Bool)

(assert (=> d!117061 (=> (not res!661060) (not e!557243))))

(assert (=> d!117061 (= res!661060 ((_ is Cons!20905) (toList!6849 lt!438110)))))

(assert (=> d!117061 (= (contains!5723 (toList!6849 lt!438110) lt!438014) lt!438350)))

(declare-fun b!988168 () Bool)

(declare-fun e!557244 () Bool)

(assert (=> b!988168 (= e!557243 e!557244)))

(declare-fun res!661059 () Bool)

(assert (=> b!988168 (=> res!661059 e!557244)))

(assert (=> b!988168 (= res!661059 (= (h!22067 (toList!6849 lt!438110)) lt!438014))))

(declare-fun b!988169 () Bool)

(assert (=> b!988169 (= e!557244 (contains!5723 (t!29852 (toList!6849 lt!438110)) lt!438014))))

(assert (= (and d!117061 res!661060) b!988168))

(assert (= (and b!988168 (not res!661059)) b!988169))

(declare-fun m!915281 () Bool)

(assert (=> d!117061 m!915281))

(declare-fun m!915283 () Bool)

(assert (=> d!117061 m!915283))

(declare-fun m!915285 () Bool)

(assert (=> b!988169 m!915285))

(assert (=> b!987805 d!117061))

(declare-fun d!117063 () Bool)

(declare-fun e!557245 () Bool)

(assert (=> d!117063 e!557245))

(declare-fun res!661061 () Bool)

(assert (=> d!117063 (=> res!661061 e!557245)))

(declare-fun lt!438354 () Bool)

(assert (=> d!117063 (= res!661061 (not lt!438354))))

(declare-fun lt!438352 () Bool)

(assert (=> d!117063 (= lt!438354 lt!438352)))

(declare-fun lt!438351 () Unit!32739)

(declare-fun e!557246 () Unit!32739)

(assert (=> d!117063 (= lt!438351 e!557246)))

(declare-fun c!100104 () Bool)

(assert (=> d!117063 (= c!100104 lt!438352)))

(assert (=> d!117063 (= lt!438352 (containsKey!478 (toList!6849 lt!438207) (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> d!117063 (= (contains!5722 lt!438207 (select (arr!30050 _keys!1544) from!1932)) lt!438354)))

(declare-fun b!988170 () Bool)

(declare-fun lt!438353 () Unit!32739)

(assert (=> b!988170 (= e!557246 lt!438353)))

(assert (=> b!988170 (= lt!438353 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438207) (select (arr!30050 _keys!1544) from!1932)))))

(assert (=> b!988170 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) (select (arr!30050 _keys!1544) from!1932)))))

(declare-fun b!988171 () Bool)

(declare-fun Unit!32752 () Unit!32739)

(assert (=> b!988171 (= e!557246 Unit!32752)))

(declare-fun b!988172 () Bool)

(assert (=> b!988172 (= e!557245 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) (select (arr!30050 _keys!1544) from!1932))))))

(assert (= (and d!117063 c!100104) b!988170))

(assert (= (and d!117063 (not c!100104)) b!988171))

(assert (= (and d!117063 (not res!661061)) b!988172))

(assert (=> d!117063 m!914505))

(declare-fun m!915287 () Bool)

(assert (=> d!117063 m!915287))

(assert (=> b!988170 m!914505))

(declare-fun m!915289 () Bool)

(assert (=> b!988170 m!915289))

(assert (=> b!988170 m!914505))

(assert (=> b!988170 m!915069))

(assert (=> b!988170 m!915069))

(declare-fun m!915291 () Bool)

(assert (=> b!988170 m!915291))

(assert (=> b!988172 m!914505))

(assert (=> b!988172 m!915069))

(assert (=> b!988172 m!915069))

(assert (=> b!988172 m!915291))

(assert (=> b!987889 d!117063))

(assert (=> d!116913 d!116883))

(declare-fun d!117065 () Bool)

(assert (=> d!117065 (= (get!15610 (select (arr!30049 _values!1278) from!1932) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!987761 d!117065))

(declare-fun d!117067 () Bool)

(declare-fun e!557247 () Bool)

(assert (=> d!117067 e!557247))

(declare-fun res!661063 () Bool)

(assert (=> d!117067 (=> (not res!661063) (not e!557247))))

(declare-fun lt!438357 () ListLongMap!13667)

(assert (=> d!117067 (= res!661063 (contains!5722 lt!438357 (_1!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!438358 () List!20909)

(assert (=> d!117067 (= lt!438357 (ListLongMap!13668 lt!438358))))

(declare-fun lt!438356 () Unit!32739)

(declare-fun lt!438355 () Unit!32739)

(assert (=> d!117067 (= lt!438356 lt!438355)))

(assert (=> d!117067 (= (getValueByKey!515 lt!438358 (_1!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!520 (_2!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117067 (= lt!438355 (lemmaContainsTupThenGetReturnValue!272 lt!438358 (_1!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117067 (= lt!438358 (insertStrictlySorted!328 (toList!6849 (ite c!100021 call!41842 (ite c!100017 call!41839 call!41845))) (_1!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117067 (= (+!3037 (ite c!100021 call!41842 (ite c!100017 call!41839 call!41845)) (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!438357)))

(declare-fun b!988173 () Bool)

(declare-fun res!661062 () Bool)

(assert (=> b!988173 (=> (not res!661062) (not e!557247))))

(assert (=> b!988173 (= res!661062 (= (getValueByKey!515 (toList!6849 lt!438357) (_1!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!520 (_2!7488 (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!988174 () Bool)

(assert (=> b!988174 (= e!557247 (contains!5723 (toList!6849 lt!438357) (ite (or c!100021 c!100017) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117067 res!661063) b!988173))

(assert (= (and b!988173 res!661062) b!988174))

(declare-fun m!915293 () Bool)

(assert (=> d!117067 m!915293))

(declare-fun m!915295 () Bool)

(assert (=> d!117067 m!915295))

(declare-fun m!915297 () Bool)

(assert (=> d!117067 m!915297))

(declare-fun m!915299 () Bool)

(assert (=> d!117067 m!915299))

(declare-fun m!915301 () Bool)

(assert (=> b!988173 m!915301))

(declare-fun m!915303 () Bool)

(assert (=> b!988174 m!915303))

(assert (=> bm!41837 d!117067))

(declare-fun d!117069 () Bool)

(declare-fun lt!438359 () Bool)

(assert (=> d!117069 (= lt!438359 (select (content!420 (toList!6849 lt!438095)) lt!438013))))

(declare-fun e!557248 () Bool)

(assert (=> d!117069 (= lt!438359 e!557248)))

(declare-fun res!661065 () Bool)

(assert (=> d!117069 (=> (not res!661065) (not e!557248))))

(assert (=> d!117069 (= res!661065 ((_ is Cons!20905) (toList!6849 lt!438095)))))

(assert (=> d!117069 (= (contains!5723 (toList!6849 lt!438095) lt!438013) lt!438359)))

(declare-fun b!988175 () Bool)

(declare-fun e!557249 () Bool)

(assert (=> b!988175 (= e!557248 e!557249)))

(declare-fun res!661064 () Bool)

(assert (=> b!988175 (=> res!661064 e!557249)))

(assert (=> b!988175 (= res!661064 (= (h!22067 (toList!6849 lt!438095)) lt!438013))))

(declare-fun b!988176 () Bool)

(assert (=> b!988176 (= e!557249 (contains!5723 (t!29852 (toList!6849 lt!438095)) lt!438013))))

(assert (= (and d!117069 res!661065) b!988175))

(assert (= (and b!988175 (not res!661064)) b!988176))

(declare-fun m!915305 () Bool)

(assert (=> d!117069 m!915305))

(declare-fun m!915307 () Bool)

(assert (=> d!117069 m!915307))

(declare-fun m!915309 () Bool)

(assert (=> b!988176 m!915309))

(assert (=> b!987799 d!117069))

(declare-fun d!117071 () Bool)

(declare-fun e!557250 () Bool)

(assert (=> d!117071 e!557250))

(declare-fun res!661066 () Bool)

(assert (=> d!117071 (=> res!661066 e!557250)))

(declare-fun lt!438363 () Bool)

(assert (=> d!117071 (= res!661066 (not lt!438363))))

(declare-fun lt!438361 () Bool)

(assert (=> d!117071 (= lt!438363 lt!438361)))

(declare-fun lt!438360 () Unit!32739)

(declare-fun e!557251 () Unit!32739)

(assert (=> d!117071 (= lt!438360 e!557251)))

(declare-fun c!100105 () Bool)

(assert (=> d!117071 (= c!100105 lt!438361)))

(assert (=> d!117071 (= lt!438361 (containsKey!478 (toList!6849 lt!438207) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117071 (= (contains!5722 lt!438207 #b0000000000000000000000000000000000000000000000000000000000000000) lt!438363)))

(declare-fun b!988177 () Bool)

(declare-fun lt!438362 () Unit!32739)

(assert (=> b!988177 (= e!557251 lt!438362)))

(assert (=> b!988177 (= lt!438362 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438207) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988177 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988178 () Bool)

(declare-fun Unit!32753 () Unit!32739)

(assert (=> b!988178 (= e!557251 Unit!32753)))

(declare-fun b!988179 () Bool)

(assert (=> b!988179 (= e!557250 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438207) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117071 c!100105) b!988177))

(assert (= (and d!117071 (not c!100105)) b!988178))

(assert (= (and d!117071 (not res!661066)) b!988179))

(declare-fun m!915311 () Bool)

(assert (=> d!117071 m!915311))

(declare-fun m!915313 () Bool)

(assert (=> b!988177 m!915313))

(declare-fun m!915315 () Bool)

(assert (=> b!988177 m!915315))

(assert (=> b!988177 m!915315))

(declare-fun m!915317 () Bool)

(assert (=> b!988177 m!915317))

(assert (=> b!988179 m!915315))

(assert (=> b!988179 m!915315))

(assert (=> b!988179 m!915317))

(assert (=> bm!41838 d!117071))

(declare-fun d!117073 () Bool)

(declare-fun e!557252 () Bool)

(assert (=> d!117073 e!557252))

(declare-fun res!661067 () Bool)

(assert (=> d!117073 (=> res!661067 e!557252)))

(declare-fun lt!438367 () Bool)

(assert (=> d!117073 (= res!661067 (not lt!438367))))

(declare-fun lt!438365 () Bool)

(assert (=> d!117073 (= lt!438367 lt!438365)))

(declare-fun lt!438364 () Unit!32739)

(declare-fun e!557253 () Unit!32739)

(assert (=> d!117073 (= lt!438364 e!557253)))

(declare-fun c!100106 () Bool)

(assert (=> d!117073 (= c!100106 lt!438365)))

(assert (=> d!117073 (= lt!438365 (containsKey!478 (toList!6849 lt!438070) (_1!7488 lt!438012)))))

(assert (=> d!117073 (= (contains!5722 lt!438070 (_1!7488 lt!438012)) lt!438367)))

(declare-fun b!988180 () Bool)

(declare-fun lt!438366 () Unit!32739)

(assert (=> b!988180 (= e!557253 lt!438366)))

(assert (=> b!988180 (= lt!438366 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438070) (_1!7488 lt!438012)))))

(assert (=> b!988180 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438070) (_1!7488 lt!438012)))))

(declare-fun b!988181 () Bool)

(declare-fun Unit!32754 () Unit!32739)

(assert (=> b!988181 (= e!557253 Unit!32754)))

(declare-fun b!988182 () Bool)

(assert (=> b!988182 (= e!557252 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438070) (_1!7488 lt!438012))))))

(assert (= (and d!117073 c!100106) b!988180))

(assert (= (and d!117073 (not c!100106)) b!988181))

(assert (= (and d!117073 (not res!661067)) b!988182))

(declare-fun m!915319 () Bool)

(assert (=> d!117073 m!915319))

(declare-fun m!915321 () Bool)

(assert (=> b!988180 m!915321))

(assert (=> b!988180 m!914611))

(assert (=> b!988180 m!914611))

(declare-fun m!915323 () Bool)

(assert (=> b!988180 m!915323))

(assert (=> b!988182 m!914611))

(assert (=> b!988182 m!914611))

(assert (=> b!988182 m!915323))

(assert (=> d!116889 d!117073))

(declare-fun b!988186 () Bool)

(declare-fun e!557255 () Option!521)

(assert (=> b!988186 (= e!557255 None!519)))

(declare-fun b!988183 () Bool)

(declare-fun e!557254 () Option!521)

(assert (=> b!988183 (= e!557254 (Some!520 (_2!7488 (h!22067 lt!438071))))))

(declare-fun d!117075 () Bool)

(declare-fun c!100107 () Bool)

(assert (=> d!117075 (= c!100107 (and ((_ is Cons!20905) lt!438071) (= (_1!7488 (h!22067 lt!438071)) (_1!7488 lt!438012))))))

(assert (=> d!117075 (= (getValueByKey!515 lt!438071 (_1!7488 lt!438012)) e!557254)))

(declare-fun b!988185 () Bool)

(assert (=> b!988185 (= e!557255 (getValueByKey!515 (t!29852 lt!438071) (_1!7488 lt!438012)))))

(declare-fun b!988184 () Bool)

(assert (=> b!988184 (= e!557254 e!557255)))

(declare-fun c!100108 () Bool)

(assert (=> b!988184 (= c!100108 (and ((_ is Cons!20905) lt!438071) (not (= (_1!7488 (h!22067 lt!438071)) (_1!7488 lt!438012)))))))

(assert (= (and d!117075 c!100107) b!988183))

(assert (= (and d!117075 (not c!100107)) b!988184))

(assert (= (and b!988184 c!100108) b!988185))

(assert (= (and b!988184 (not c!100108)) b!988186))

(declare-fun m!915325 () Bool)

(assert (=> b!988185 m!915325))

(assert (=> d!116889 d!117075))

(declare-fun d!117077 () Bool)

(assert (=> d!117077 (= (getValueByKey!515 lt!438071 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(declare-fun lt!438368 () Unit!32739)

(assert (=> d!117077 (= lt!438368 (choose!1614 lt!438071 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun e!557256 () Bool)

(assert (=> d!117077 e!557256))

(declare-fun res!661068 () Bool)

(assert (=> d!117077 (=> (not res!661068) (not e!557256))))

(assert (=> d!117077 (= res!661068 (isStrictlySorted!511 lt!438071))))

(assert (=> d!117077 (= (lemmaContainsTupThenGetReturnValue!272 lt!438071 (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438368)))

(declare-fun b!988187 () Bool)

(declare-fun res!661069 () Bool)

(assert (=> b!988187 (=> (not res!661069) (not e!557256))))

(assert (=> b!988187 (= res!661069 (containsKey!478 lt!438071 (_1!7488 lt!438012)))))

(declare-fun b!988188 () Bool)

(assert (=> b!988188 (= e!557256 (contains!5723 lt!438071 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(assert (= (and d!117077 res!661068) b!988187))

(assert (= (and b!988187 res!661069) b!988188))

(assert (=> d!117077 m!914605))

(declare-fun m!915327 () Bool)

(assert (=> d!117077 m!915327))

(declare-fun m!915329 () Bool)

(assert (=> d!117077 m!915329))

(declare-fun m!915331 () Bool)

(assert (=> b!988187 m!915331))

(declare-fun m!915333 () Bool)

(assert (=> b!988188 m!915333))

(assert (=> d!116889 d!117077))

(declare-fun b!988189 () Bool)

(declare-fun e!557258 () List!20909)

(declare-fun e!557259 () List!20909)

(assert (=> b!988189 (= e!557258 e!557259)))

(declare-fun c!100112 () Bool)

(assert (=> b!988189 (= c!100112 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (= (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438012))))))

(declare-fun b!988190 () Bool)

(declare-fun c!100110 () Bool)

(assert (=> b!988190 (= c!100110 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438012))))))

(declare-fun e!557257 () List!20909)

(assert (=> b!988190 (= e!557259 e!557257)))

(declare-fun b!988191 () Bool)

(declare-fun res!661071 () Bool)

(declare-fun e!557261 () Bool)

(assert (=> b!988191 (=> (not res!661071) (not e!557261))))

(declare-fun lt!438369 () List!20909)

(assert (=> b!988191 (= res!661071 (containsKey!478 lt!438369 (_1!7488 lt!438012)))))

(declare-fun b!988193 () Bool)

(declare-fun call!41871 () List!20909)

(assert (=> b!988193 (= e!557257 call!41871)))

(declare-fun b!988194 () Bool)

(assert (=> b!988194 (= e!557261 (contains!5723 lt!438369 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(declare-fun b!988195 () Bool)

(declare-fun call!41870 () List!20909)

(assert (=> b!988195 (= e!557259 call!41870)))

(declare-fun b!988196 () Bool)

(declare-fun e!557260 () List!20909)

(assert (=> b!988196 (= e!557260 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438020)) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun c!100111 () Bool)

(declare-fun call!41872 () List!20909)

(declare-fun bm!41867 () Bool)

(assert (=> bm!41867 (= call!41872 ($colon$colon!555 e!557260 (ite c!100111 (h!22067 (toList!6849 lt!438020)) (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012)))))))

(declare-fun c!100109 () Bool)

(assert (=> bm!41867 (= c!100109 c!100111)))

(declare-fun bm!41868 () Bool)

(assert (=> bm!41868 (= call!41871 call!41870)))

(declare-fun bm!41869 () Bool)

(assert (=> bm!41869 (= call!41870 call!41872)))

(declare-fun b!988197 () Bool)

(assert (=> b!988197 (= e!557260 (ite c!100112 (t!29852 (toList!6849 lt!438020)) (ite c!100110 (Cons!20905 (h!22067 (toList!6849 lt!438020)) (t!29852 (toList!6849 lt!438020))) Nil!20906)))))

(declare-fun b!988198 () Bool)

(assert (=> b!988198 (= e!557257 call!41871)))

(declare-fun b!988192 () Bool)

(assert (=> b!988192 (= e!557258 call!41872)))

(declare-fun d!117079 () Bool)

(assert (=> d!117079 e!557261))

(declare-fun res!661070 () Bool)

(assert (=> d!117079 (=> (not res!661070) (not e!557261))))

(assert (=> d!117079 (= res!661070 (isStrictlySorted!511 lt!438369))))

(assert (=> d!117079 (= lt!438369 e!557258)))

(assert (=> d!117079 (= c!100111 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438012))))))

(assert (=> d!117079 (isStrictlySorted!511 (toList!6849 lt!438020))))

(assert (=> d!117079 (= (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438369)))

(assert (= (and d!117079 c!100111) b!988192))

(assert (= (and d!117079 (not c!100111)) b!988189))

(assert (= (and b!988189 c!100112) b!988195))

(assert (= (and b!988189 (not c!100112)) b!988190))

(assert (= (and b!988190 c!100110) b!988198))

(assert (= (and b!988190 (not c!100110)) b!988193))

(assert (= (or b!988198 b!988193) bm!41868))

(assert (= (or b!988195 bm!41868) bm!41869))

(assert (= (or b!988192 bm!41869) bm!41867))

(assert (= (and bm!41867 c!100109) b!988196))

(assert (= (and bm!41867 (not c!100109)) b!988197))

(assert (= (and d!117079 res!661070) b!988191))

(assert (= (and b!988191 res!661071) b!988194))

(declare-fun m!915335 () Bool)

(assert (=> bm!41867 m!915335))

(declare-fun m!915337 () Bool)

(assert (=> b!988191 m!915337))

(declare-fun m!915339 () Bool)

(assert (=> d!117079 m!915339))

(declare-fun m!915341 () Bool)

(assert (=> d!117079 m!915341))

(declare-fun m!915343 () Bool)

(assert (=> b!988196 m!915343))

(declare-fun m!915345 () Bool)

(assert (=> b!988194 m!915345))

(assert (=> d!116889 d!117079))

(declare-fun d!117081 () Bool)

(assert (=> d!117081 (= (apply!928 lt!438185 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15611 (getValueByKey!515 (toList!6849 lt!438185) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28040 () Bool)

(assert (= bs!28040 d!117081))

(declare-fun m!915347 () Bool)

(assert (=> bs!28040 m!915347))

(assert (=> bs!28040 m!915347))

(declare-fun m!915349 () Bool)

(assert (=> bs!28040 m!915349))

(assert (=> b!987855 d!117081))

(declare-fun b!988199 () Bool)

(declare-fun e!557268 () Bool)

(declare-fun lt!438374 () ListLongMap!13667)

(assert (=> b!988199 (= e!557268 (isEmpty!725 lt!438374))))

(declare-fun b!988200 () Bool)

(assert (=> b!988200 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(assert (=> b!988200 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30529 _values!1278)))))

(declare-fun e!557267 () Bool)

(assert (=> b!988200 (= e!557267 (= (apply!928 lt!438374 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!988201 () Bool)

(declare-fun e!557263 () ListLongMap!13667)

(assert (=> b!988201 (= e!557263 (ListLongMap!13668 Nil!20906))))

(declare-fun b!988202 () Bool)

(declare-fun e!557264 () Bool)

(assert (=> b!988202 (= e!557264 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!988202 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!988203 () Bool)

(declare-fun e!557262 () Bool)

(assert (=> b!988203 (= e!557262 e!557268)))

(declare-fun c!100116 () Bool)

(assert (=> b!988203 (= c!100116 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(declare-fun d!117083 () Bool)

(declare-fun e!557265 () Bool)

(assert (=> d!117083 e!557265))

(declare-fun res!661074 () Bool)

(assert (=> d!117083 (=> (not res!661074) (not e!557265))))

(assert (=> d!117083 (= res!661074 (not (contains!5722 lt!438374 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!117083 (= lt!438374 e!557263)))

(declare-fun c!100113 () Bool)

(assert (=> d!117083 (= c!100113 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(assert (=> d!117083 (validMask!0 mask!1948)))

(assert (=> d!117083 (= (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281) lt!438374)))

(declare-fun b!988204 () Bool)

(declare-fun lt!438372 () Unit!32739)

(declare-fun lt!438375 () Unit!32739)

(assert (=> b!988204 (= lt!438372 lt!438375)))

(declare-fun lt!438370 () (_ BitVec 64))

(declare-fun lt!438376 () (_ BitVec 64))

(declare-fun lt!438373 () V!35947)

(declare-fun lt!438371 () ListLongMap!13667)

(assert (=> b!988204 (not (contains!5722 (+!3037 lt!438371 (tuple2!14957 lt!438370 lt!438373)) lt!438376))))

(assert (=> b!988204 (= lt!438375 (addStillNotContains!234 lt!438371 lt!438370 lt!438373 lt!438376))))

(assert (=> b!988204 (= lt!438376 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!988204 (= lt!438373 (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!988204 (= lt!438370 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)))))

(declare-fun call!41873 () ListLongMap!13667)

(assert (=> b!988204 (= lt!438371 call!41873)))

(declare-fun e!557266 () ListLongMap!13667)

(assert (=> b!988204 (= e!557266 (+!3037 call!41873 (tuple2!14957 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (get!15608 (select (arr!30049 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1865 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!988205 () Bool)

(declare-fun res!661073 () Bool)

(assert (=> b!988205 (=> (not res!661073) (not e!557265))))

(assert (=> b!988205 (= res!661073 (not (contains!5722 lt!438374 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!988206 () Bool)

(assert (=> b!988206 (= e!557263 e!557266)))

(declare-fun c!100114 () Bool)

(assert (=> b!988206 (= c!100114 (validKeyInArray!0 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(declare-fun b!988207 () Bool)

(assert (=> b!988207 (= e!557268 (= lt!438374 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!988208 () Bool)

(assert (=> b!988208 (= e!557265 e!557262)))

(declare-fun c!100115 () Bool)

(assert (=> b!988208 (= c!100115 e!557264)))

(declare-fun res!661075 () Bool)

(assert (=> b!988208 (=> (not res!661075) (not e!557264))))

(assert (=> b!988208 (= res!661075 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(declare-fun bm!41870 () Bool)

(assert (=> bm!41870 (= call!41873 (getCurrentListMapNoExtraKeys!3499 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!988209 () Bool)

(assert (=> b!988209 (= e!557266 call!41873)))

(declare-fun b!988210 () Bool)

(assert (=> b!988210 (= e!557262 e!557267)))

(assert (=> b!988210 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30530 _keys!1544)))))

(declare-fun res!661072 () Bool)

(assert (=> b!988210 (= res!661072 (contains!5722 lt!438374 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!988210 (=> (not res!661072) (not e!557267))))

(assert (= (and d!117083 c!100113) b!988201))

(assert (= (and d!117083 (not c!100113)) b!988206))

(assert (= (and b!988206 c!100114) b!988204))

(assert (= (and b!988206 (not c!100114)) b!988209))

(assert (= (or b!988204 b!988209) bm!41870))

(assert (= (and d!117083 res!661074) b!988205))

(assert (= (and b!988205 res!661073) b!988208))

(assert (= (and b!988208 res!661075) b!988202))

(assert (= (and b!988208 c!100115) b!988210))

(assert (= (and b!988208 (not c!100115)) b!988203))

(assert (= (and b!988210 res!661072) b!988200))

(assert (= (and b!988203 c!100116) b!988207))

(assert (= (and b!988203 (not c!100116)) b!988199))

(declare-fun b_lambda!15095 () Bool)

(assert (=> (not b_lambda!15095) (not b!988200)))

(assert (=> b!988200 t!29850))

(declare-fun b_and!32119 () Bool)

(assert (= b_and!32117 (and (=> t!29850 result!13571) b_and!32119)))

(declare-fun b_lambda!15097 () Bool)

(assert (=> (not b_lambda!15097) (not b!988204)))

(assert (=> b!988204 t!29850))

(declare-fun b_and!32121 () Bool)

(assert (= b_and!32119 (and (=> t!29850 result!13571) b_and!32121)))

(declare-fun m!915351 () Bool)

(assert (=> b!988202 m!915351))

(assert (=> b!988202 m!915351))

(declare-fun m!915353 () Bool)

(assert (=> b!988202 m!915353))

(declare-fun m!915355 () Bool)

(assert (=> bm!41870 m!915355))

(declare-fun m!915357 () Bool)

(assert (=> b!988204 m!915357))

(declare-fun m!915359 () Bool)

(assert (=> b!988204 m!915359))

(assert (=> b!988204 m!914525))

(declare-fun m!915361 () Bool)

(assert (=> b!988204 m!915361))

(assert (=> b!988204 m!915357))

(declare-fun m!915363 () Bool)

(assert (=> b!988204 m!915363))

(assert (=> b!988204 m!914525))

(assert (=> b!988204 m!915351))

(declare-fun m!915365 () Bool)

(assert (=> b!988204 m!915365))

(declare-fun m!915367 () Bool)

(assert (=> b!988204 m!915367))

(assert (=> b!988204 m!915359))

(assert (=> b!988200 m!915351))

(assert (=> b!988200 m!915359))

(assert (=> b!988200 m!914525))

(assert (=> b!988200 m!915361))

(assert (=> b!988200 m!914525))

(assert (=> b!988200 m!915359))

(assert (=> b!988200 m!915351))

(declare-fun m!915369 () Bool)

(assert (=> b!988200 m!915369))

(declare-fun m!915371 () Bool)

(assert (=> b!988199 m!915371))

(assert (=> b!988207 m!915355))

(assert (=> b!988210 m!915351))

(assert (=> b!988210 m!915351))

(declare-fun m!915373 () Bool)

(assert (=> b!988210 m!915373))

(declare-fun m!915375 () Bool)

(assert (=> d!117083 m!915375))

(assert (=> d!117083 m!914497))

(declare-fun m!915377 () Bool)

(assert (=> b!988205 m!915377))

(assert (=> b!988206 m!915351))

(assert (=> b!988206 m!915351))

(assert (=> b!988206 m!915353))

(assert (=> b!987794 d!117083))

(assert (=> b!987907 d!117045))

(declare-fun d!117085 () Bool)

(declare-fun e!557269 () Bool)

(assert (=> d!117085 e!557269))

(declare-fun res!661076 () Bool)

(assert (=> d!117085 (=> res!661076 e!557269)))

(declare-fun lt!438380 () Bool)

(assert (=> d!117085 (= res!661076 (not lt!438380))))

(declare-fun lt!438378 () Bool)

(assert (=> d!117085 (= lt!438380 lt!438378)))

(declare-fun lt!438377 () Unit!32739)

(declare-fun e!557270 () Unit!32739)

(assert (=> d!117085 (= lt!438377 e!557270)))

(declare-fun c!100117 () Bool)

(assert (=> d!117085 (= c!100117 lt!438378)))

(assert (=> d!117085 (= lt!438378 (containsKey!478 (toList!6849 lt!438185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117085 (= (contains!5722 lt!438185 #b0000000000000000000000000000000000000000000000000000000000000000) lt!438380)))

(declare-fun b!988211 () Bool)

(declare-fun lt!438379 () Unit!32739)

(assert (=> b!988211 (= e!557270 lt!438379)))

(assert (=> b!988211 (= lt!438379 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988211 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988212 () Bool)

(declare-fun Unit!32755 () Unit!32739)

(assert (=> b!988212 (= e!557270 Unit!32755)))

(declare-fun b!988213 () Bool)

(assert (=> b!988213 (= e!557269 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117085 c!100117) b!988211))

(assert (= (and d!117085 (not c!100117)) b!988212))

(assert (= (and d!117085 (not res!661076)) b!988213))

(declare-fun m!915379 () Bool)

(assert (=> d!117085 m!915379))

(declare-fun m!915381 () Bool)

(assert (=> b!988211 m!915381))

(assert (=> b!988211 m!914941))

(assert (=> b!988211 m!914941))

(declare-fun m!915383 () Bool)

(assert (=> b!988211 m!915383))

(assert (=> b!988213 m!914941))

(assert (=> b!988213 m!914941))

(assert (=> b!988213 m!915383))

(assert (=> bm!41831 d!117085))

(assert (=> b!987748 d!117045))

(declare-fun d!117087 () Bool)

(declare-fun e!557271 () Bool)

(assert (=> d!117087 e!557271))

(declare-fun res!661078 () Bool)

(assert (=> d!117087 (=> (not res!661078) (not e!557271))))

(declare-fun lt!438383 () ListLongMap!13667)

(assert (=> d!117087 (= res!661078 (contains!5722 lt!438383 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438384 () List!20909)

(assert (=> d!117087 (= lt!438383 (ListLongMap!13668 lt!438384))))

(declare-fun lt!438382 () Unit!32739)

(declare-fun lt!438381 () Unit!32739)

(assert (=> d!117087 (= lt!438382 lt!438381)))

(assert (=> d!117087 (= (getValueByKey!515 lt!438384 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117087 (= lt!438381 (lemmaContainsTupThenGetReturnValue!272 lt!438384 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117087 (= lt!438384 (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117087 (= (+!3037 lt!438020 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438383)))

(declare-fun b!988214 () Bool)

(declare-fun res!661077 () Bool)

(assert (=> b!988214 (=> (not res!661077) (not e!557271))))

(assert (=> b!988214 (= res!661077 (= (getValueByKey!515 (toList!6849 lt!438383) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!988215 () Bool)

(assert (=> b!988215 (= e!557271 (contains!5723 (toList!6849 lt!438383) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117087 res!661078) b!988214))

(assert (= (and b!988214 res!661077) b!988215))

(declare-fun m!915385 () Bool)

(assert (=> d!117087 m!915385))

(declare-fun m!915387 () Bool)

(assert (=> d!117087 m!915387))

(declare-fun m!915389 () Bool)

(assert (=> d!117087 m!915389))

(declare-fun m!915391 () Bool)

(assert (=> d!117087 m!915391))

(declare-fun m!915393 () Bool)

(assert (=> b!988214 m!915393))

(declare-fun m!915395 () Bool)

(assert (=> b!988215 m!915395))

(assert (=> d!116897 d!117087))

(declare-fun d!117089 () Bool)

(declare-fun e!557272 () Bool)

(assert (=> d!117089 e!557272))

(declare-fun res!661080 () Bool)

(assert (=> d!117089 (=> (not res!661080) (not e!557272))))

(declare-fun lt!438387 () ListLongMap!13667)

(assert (=> d!117089 (= res!661080 (contains!5722 lt!438387 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438388 () List!20909)

(assert (=> d!117089 (= lt!438387 (ListLongMap!13668 lt!438388))))

(declare-fun lt!438386 () Unit!32739)

(declare-fun lt!438385 () Unit!32739)

(assert (=> d!117089 (= lt!438386 lt!438385)))

(assert (=> d!117089 (= (getValueByKey!515 lt!438388 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117089 (= lt!438385 (lemmaContainsTupThenGetReturnValue!272 lt!438388 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117089 (= lt!438388 (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438020 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117089 (= (+!3037 (+!3037 lt!438020 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438387)))

(declare-fun b!988216 () Bool)

(declare-fun res!661079 () Bool)

(assert (=> b!988216 (=> (not res!661079) (not e!557272))))

(assert (=> b!988216 (= res!661079 (= (getValueByKey!515 (toList!6849 lt!438387) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!988217 () Bool)

(assert (=> b!988217 (= e!557272 (contains!5723 (toList!6849 lt!438387) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117089 res!661080) b!988216))

(assert (= (and b!988216 res!661079) b!988217))

(declare-fun m!915397 () Bool)

(assert (=> d!117089 m!915397))

(declare-fun m!915399 () Bool)

(assert (=> d!117089 m!915399))

(declare-fun m!915401 () Bool)

(assert (=> d!117089 m!915401))

(declare-fun m!915403 () Bool)

(assert (=> d!117089 m!915403))

(declare-fun m!915405 () Bool)

(assert (=> b!988216 m!915405))

(declare-fun m!915407 () Bool)

(assert (=> b!988217 m!915407))

(assert (=> d!116897 d!117089))

(declare-fun d!117091 () Bool)

(declare-fun e!557273 () Bool)

(assert (=> d!117091 e!557273))

(declare-fun res!661082 () Bool)

(assert (=> d!117091 (=> (not res!661082) (not e!557273))))

(declare-fun lt!438391 () ListLongMap!13667)

(assert (=> d!117091 (= res!661082 (contains!5722 lt!438391 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(declare-fun lt!438392 () List!20909)

(assert (=> d!117091 (= lt!438391 (ListLongMap!13668 lt!438392))))

(declare-fun lt!438390 () Unit!32739)

(declare-fun lt!438389 () Unit!32739)

(assert (=> d!117091 (= lt!438390 lt!438389)))

(assert (=> d!117091 (= (getValueByKey!515 lt!438392 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117091 (= lt!438389 (lemmaContainsTupThenGetReturnValue!272 lt!438392 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117091 (= lt!438392 (insertStrictlySorted!328 (toList!6849 (+!3037 lt!438020 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117091 (= (+!3037 (+!3037 lt!438020 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) lt!438391)))

(declare-fun b!988218 () Bool)

(declare-fun res!661081 () Bool)

(assert (=> b!988218 (=> (not res!661081) (not e!557273))))

(assert (=> b!988218 (= res!661081 (= (getValueByKey!515 (toList!6849 lt!438391) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))))

(declare-fun b!988219 () Bool)

(assert (=> b!988219 (= e!557273 (contains!5723 (toList!6849 lt!438391) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))

(assert (= (and d!117091 res!661082) b!988218))

(assert (= (and b!988218 res!661081) b!988219))

(declare-fun m!915409 () Bool)

(assert (=> d!117091 m!915409))

(declare-fun m!915411 () Bool)

(assert (=> d!117091 m!915411))

(declare-fun m!915413 () Bool)

(assert (=> d!117091 m!915413))

(declare-fun m!915415 () Bool)

(assert (=> d!117091 m!915415))

(declare-fun m!915417 () Bool)

(assert (=> b!988218 m!915417))

(declare-fun m!915419 () Bool)

(assert (=> b!988219 m!915419))

(assert (=> d!116897 d!117091))

(declare-fun d!117093 () Bool)

(declare-fun e!557274 () Bool)

(assert (=> d!117093 e!557274))

(declare-fun res!661084 () Bool)

(assert (=> d!117093 (=> (not res!661084) (not e!557274))))

(declare-fun lt!438395 () ListLongMap!13667)

(assert (=> d!117093 (= res!661084 (contains!5722 lt!438395 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(declare-fun lt!438396 () List!20909)

(assert (=> d!117093 (= lt!438395 (ListLongMap!13668 lt!438396))))

(declare-fun lt!438394 () Unit!32739)

(declare-fun lt!438393 () Unit!32739)

(assert (=> d!117093 (= lt!438394 lt!438393)))

(assert (=> d!117093 (= (getValueByKey!515 lt!438396 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117093 (= lt!438393 (lemmaContainsTupThenGetReturnValue!272 lt!438396 (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117093 (= lt!438396 (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))))))

(assert (=> d!117093 (= (+!3037 lt!438020 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) lt!438395)))

(declare-fun b!988220 () Bool)

(declare-fun res!661083 () Bool)

(assert (=> b!988220 (=> (not res!661083) (not e!557274))))

(assert (=> b!988220 (= res!661083 (= (getValueByKey!515 (toList!6849 lt!438395) (_1!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011))) (Some!520 (_2!7488 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))))

(declare-fun b!988221 () Bool)

(assert (=> b!988221 (= e!557274 (contains!5723 (toList!6849 lt!438395) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)))))

(assert (= (and d!117093 res!661084) b!988220))

(assert (= (and b!988220 res!661083) b!988221))

(declare-fun m!915421 () Bool)

(assert (=> d!117093 m!915421))

(declare-fun m!915423 () Bool)

(assert (=> d!117093 m!915423))

(declare-fun m!915425 () Bool)

(assert (=> d!117093 m!915425))

(declare-fun m!915427 () Bool)

(assert (=> d!117093 m!915427))

(declare-fun m!915429 () Bool)

(assert (=> b!988220 m!915429))

(declare-fun m!915431 () Bool)

(assert (=> b!988221 m!915431))

(assert (=> d!116897 d!117093))

(declare-fun d!117095 () Bool)

(assert (=> d!117095 (= (+!3037 (+!3037 lt!438020 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (+!3037 (+!3037 lt!438020 (tuple2!14957 (select (arr!30050 _keys!1544) from!1932) lt!438011)) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (=> d!117095 true))

(declare-fun _$28!185 () Unit!32739)

(assert (=> d!117095 (= (choose!1613 lt!438020 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30050 _keys!1544) from!1932) lt!438011) _$28!185)))

(declare-fun bs!28041 () Bool)

(assert (= bs!28041 d!117095))

(assert (=> bs!28041 m!914661))

(assert (=> bs!28041 m!914661))

(assert (=> bs!28041 m!914663))

(assert (=> bs!28041 m!914665))

(assert (=> bs!28041 m!914665))

(assert (=> bs!28041 m!914667))

(assert (=> d!116897 d!117095))

(assert (=> bm!41814 d!117083))

(declare-fun d!117097 () Bool)

(declare-fun lt!438399 () Bool)

(declare-fun content!421 (List!20908) (InoxSet (_ BitVec 64)))

(assert (=> d!117097 (= lt!438399 (select (content!421 Nil!20905) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun e!557280 () Bool)

(assert (=> d!117097 (= lt!438399 e!557280)))

(declare-fun res!661089 () Bool)

(assert (=> d!117097 (=> (not res!661089) (not e!557280))))

(assert (=> d!117097 (= res!661089 ((_ is Cons!20904) Nil!20905))))

(assert (=> d!117097 (= (contains!5724 Nil!20905 (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)) lt!438399)))

(declare-fun b!988226 () Bool)

(declare-fun e!557279 () Bool)

(assert (=> b!988226 (= e!557280 e!557279)))

(declare-fun res!661090 () Bool)

(assert (=> b!988226 (=> res!661090 e!557279)))

(assert (=> b!988226 (= res!661090 (= (h!22066 Nil!20905) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!988227 () Bool)

(assert (=> b!988227 (= e!557279 (contains!5724 (t!29851 Nil!20905) (select (arr!30050 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117097 res!661089) b!988226))

(assert (= (and b!988226 (not res!661090)) b!988227))

(declare-fun m!915433 () Bool)

(assert (=> d!117097 m!915433))

(assert (=> d!117097 m!914591))

(declare-fun m!915435 () Bool)

(assert (=> d!117097 m!915435))

(assert (=> b!988227 m!914591))

(declare-fun m!915437 () Bool)

(assert (=> b!988227 m!915437))

(assert (=> b!987909 d!117097))

(declare-fun d!117099 () Bool)

(assert (=> d!117099 (= (apply!928 lt!438207 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15611 (getValueByKey!515 (toList!6849 lt!438207) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28042 () Bool)

(assert (= bs!28042 d!117099))

(assert (=> bs!28042 m!915315))

(assert (=> bs!28042 m!915315))

(declare-fun m!915439 () Bool)

(assert (=> bs!28042 m!915439))

(assert (=> b!987881 d!117099))

(declare-fun d!117101 () Bool)

(declare-fun e!557281 () Bool)

(assert (=> d!117101 e!557281))

(declare-fun res!661091 () Bool)

(assert (=> d!117101 (=> res!661091 e!557281)))

(declare-fun lt!438403 () Bool)

(assert (=> d!117101 (= res!661091 (not lt!438403))))

(declare-fun lt!438401 () Bool)

(assert (=> d!117101 (= lt!438403 lt!438401)))

(declare-fun lt!438400 () Unit!32739)

(declare-fun e!557282 () Unit!32739)

(assert (=> d!117101 (= lt!438400 e!557282)))

(declare-fun c!100118 () Bool)

(assert (=> d!117101 (= c!100118 lt!438401)))

(assert (=> d!117101 (= lt!438401 (containsKey!478 (toList!6849 lt!438185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117101 (= (contains!5722 lt!438185 #b1000000000000000000000000000000000000000000000000000000000000000) lt!438403)))

(declare-fun b!988228 () Bool)

(declare-fun lt!438402 () Unit!32739)

(assert (=> b!988228 (= e!557282 lt!438402)))

(assert (=> b!988228 (= lt!438402 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988228 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988229 () Bool)

(declare-fun Unit!32756 () Unit!32739)

(assert (=> b!988229 (= e!557282 Unit!32756)))

(declare-fun b!988230 () Bool)

(assert (=> b!988230 (= e!557281 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438185) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117101 c!100118) b!988228))

(assert (= (and d!117101 (not c!100118)) b!988229))

(assert (= (and d!117101 (not res!661091)) b!988230))

(declare-fun m!915441 () Bool)

(assert (=> d!117101 m!915441))

(declare-fun m!915443 () Bool)

(assert (=> b!988228 m!915443))

(assert (=> b!988228 m!915347))

(assert (=> b!988228 m!915347))

(declare-fun m!915445 () Bool)

(assert (=> b!988228 m!915445))

(assert (=> b!988230 m!915347))

(assert (=> b!988230 m!915347))

(assert (=> b!988230 m!915445))

(assert (=> bm!41833 d!117101))

(declare-fun d!117103 () Bool)

(declare-fun e!557283 () Bool)

(assert (=> d!117103 e!557283))

(declare-fun res!661092 () Bool)

(assert (=> d!117103 (=> res!661092 e!557283)))

(declare-fun lt!438407 () Bool)

(assert (=> d!117103 (= res!661092 (not lt!438407))))

(declare-fun lt!438405 () Bool)

(assert (=> d!117103 (= lt!438407 lt!438405)))

(declare-fun lt!438404 () Unit!32739)

(declare-fun e!557284 () Unit!32739)

(assert (=> d!117103 (= lt!438404 e!557284)))

(declare-fun c!100119 () Bool)

(assert (=> d!117103 (= c!100119 lt!438405)))

(assert (=> d!117103 (= lt!438405 (containsKey!478 (toList!6849 lt!438102) (_1!7488 lt!438013)))))

(assert (=> d!117103 (= (contains!5722 lt!438102 (_1!7488 lt!438013)) lt!438407)))

(declare-fun b!988231 () Bool)

(declare-fun lt!438406 () Unit!32739)

(assert (=> b!988231 (= e!557284 lt!438406)))

(assert (=> b!988231 (= lt!438406 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438102) (_1!7488 lt!438013)))))

(assert (=> b!988231 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438102) (_1!7488 lt!438013)))))

(declare-fun b!988232 () Bool)

(declare-fun Unit!32757 () Unit!32739)

(assert (=> b!988232 (= e!557284 Unit!32757)))

(declare-fun b!988233 () Bool)

(assert (=> b!988233 (= e!557283 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438102) (_1!7488 lt!438013))))))

(assert (= (and d!117103 c!100119) b!988231))

(assert (= (and d!117103 (not c!100119)) b!988232))

(assert (= (and d!117103 (not res!661092)) b!988233))

(declare-fun m!915447 () Bool)

(assert (=> d!117103 m!915447))

(declare-fun m!915449 () Bool)

(assert (=> b!988231 m!915449))

(assert (=> b!988231 m!914677))

(assert (=> b!988231 m!914677))

(declare-fun m!915451 () Bool)

(assert (=> b!988231 m!915451))

(assert (=> b!988233 m!914677))

(assert (=> b!988233 m!914677))

(assert (=> b!988233 m!915451))

(assert (=> d!116899 d!117103))

(declare-fun b!988237 () Bool)

(declare-fun e!557286 () Option!521)

(assert (=> b!988237 (= e!557286 None!519)))

(declare-fun b!988234 () Bool)

(declare-fun e!557285 () Option!521)

(assert (=> b!988234 (= e!557285 (Some!520 (_2!7488 (h!22067 lt!438103))))))

(declare-fun d!117105 () Bool)

(declare-fun c!100120 () Bool)

(assert (=> d!117105 (= c!100120 (and ((_ is Cons!20905) lt!438103) (= (_1!7488 (h!22067 lt!438103)) (_1!7488 lt!438013))))))

(assert (=> d!117105 (= (getValueByKey!515 lt!438103 (_1!7488 lt!438013)) e!557285)))

(declare-fun b!988236 () Bool)

(assert (=> b!988236 (= e!557286 (getValueByKey!515 (t!29852 lt!438103) (_1!7488 lt!438013)))))

(declare-fun b!988235 () Bool)

(assert (=> b!988235 (= e!557285 e!557286)))

(declare-fun c!100121 () Bool)

(assert (=> b!988235 (= c!100121 (and ((_ is Cons!20905) lt!438103) (not (= (_1!7488 (h!22067 lt!438103)) (_1!7488 lt!438013)))))))

(assert (= (and d!117105 c!100120) b!988234))

(assert (= (and d!117105 (not c!100120)) b!988235))

(assert (= (and b!988235 c!100121) b!988236))

(assert (= (and b!988235 (not c!100121)) b!988237))

(declare-fun m!915453 () Bool)

(assert (=> b!988236 m!915453))

(assert (=> d!116899 d!117105))

(declare-fun d!117107 () Bool)

(assert (=> d!117107 (= (getValueByKey!515 lt!438103 (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013)))))

(declare-fun lt!438408 () Unit!32739)

(assert (=> d!117107 (= lt!438408 (choose!1614 lt!438103 (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(declare-fun e!557287 () Bool)

(assert (=> d!117107 e!557287))

(declare-fun res!661093 () Bool)

(assert (=> d!117107 (=> (not res!661093) (not e!557287))))

(assert (=> d!117107 (= res!661093 (isStrictlySorted!511 lt!438103))))

(assert (=> d!117107 (= (lemmaContainsTupThenGetReturnValue!272 lt!438103 (_1!7488 lt!438013) (_2!7488 lt!438013)) lt!438408)))

(declare-fun b!988238 () Bool)

(declare-fun res!661094 () Bool)

(assert (=> b!988238 (=> (not res!661094) (not e!557287))))

(assert (=> b!988238 (= res!661094 (containsKey!478 lt!438103 (_1!7488 lt!438013)))))

(declare-fun b!988239 () Bool)

(assert (=> b!988239 (= e!557287 (contains!5723 lt!438103 (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013))))))

(assert (= (and d!117107 res!661093) b!988238))

(assert (= (and b!988238 res!661094) b!988239))

(assert (=> d!117107 m!914671))

(declare-fun m!915455 () Bool)

(assert (=> d!117107 m!915455))

(declare-fun m!915457 () Bool)

(assert (=> d!117107 m!915457))

(declare-fun m!915459 () Bool)

(assert (=> b!988238 m!915459))

(declare-fun m!915461 () Bool)

(assert (=> b!988239 m!915461))

(assert (=> d!116899 d!117107))

(declare-fun b!988240 () Bool)

(declare-fun e!557289 () List!20909)

(declare-fun e!557290 () List!20909)

(assert (=> b!988240 (= e!557289 e!557290)))

(declare-fun c!100125 () Bool)

(assert (=> b!988240 (= c!100125 (and ((_ is Cons!20905) (toList!6849 lt!438019)) (= (_1!7488 (h!22067 (toList!6849 lt!438019))) (_1!7488 lt!438013))))))

(declare-fun b!988241 () Bool)

(declare-fun c!100123 () Bool)

(assert (=> b!988241 (= c!100123 (and ((_ is Cons!20905) (toList!6849 lt!438019)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438019))) (_1!7488 lt!438013))))))

(declare-fun e!557288 () List!20909)

(assert (=> b!988241 (= e!557290 e!557288)))

(declare-fun b!988242 () Bool)

(declare-fun res!661096 () Bool)

(declare-fun e!557292 () Bool)

(assert (=> b!988242 (=> (not res!661096) (not e!557292))))

(declare-fun lt!438409 () List!20909)

(assert (=> b!988242 (= res!661096 (containsKey!478 lt!438409 (_1!7488 lt!438013)))))

(declare-fun b!988244 () Bool)

(declare-fun call!41875 () List!20909)

(assert (=> b!988244 (= e!557288 call!41875)))

(declare-fun b!988245 () Bool)

(assert (=> b!988245 (= e!557292 (contains!5723 lt!438409 (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013))))))

(declare-fun b!988246 () Bool)

(declare-fun call!41874 () List!20909)

(assert (=> b!988246 (= e!557290 call!41874)))

(declare-fun b!988247 () Bool)

(declare-fun e!557291 () List!20909)

(assert (=> b!988247 (= e!557291 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438019)) (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(declare-fun c!100124 () Bool)

(declare-fun call!41876 () List!20909)

(declare-fun bm!41871 () Bool)

(assert (=> bm!41871 (= call!41876 ($colon$colon!555 e!557291 (ite c!100124 (h!22067 (toList!6849 lt!438019)) (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013)))))))

(declare-fun c!100122 () Bool)

(assert (=> bm!41871 (= c!100122 c!100124)))

(declare-fun bm!41872 () Bool)

(assert (=> bm!41872 (= call!41875 call!41874)))

(declare-fun bm!41873 () Bool)

(assert (=> bm!41873 (= call!41874 call!41876)))

(declare-fun b!988248 () Bool)

(assert (=> b!988248 (= e!557291 (ite c!100125 (t!29852 (toList!6849 lt!438019)) (ite c!100123 (Cons!20905 (h!22067 (toList!6849 lt!438019)) (t!29852 (toList!6849 lt!438019))) Nil!20906)))))

(declare-fun b!988249 () Bool)

(assert (=> b!988249 (= e!557288 call!41875)))

(declare-fun b!988243 () Bool)

(assert (=> b!988243 (= e!557289 call!41876)))

(declare-fun d!117109 () Bool)

(assert (=> d!117109 e!557292))

(declare-fun res!661095 () Bool)

(assert (=> d!117109 (=> (not res!661095) (not e!557292))))

(assert (=> d!117109 (= res!661095 (isStrictlySorted!511 lt!438409))))

(assert (=> d!117109 (= lt!438409 e!557289)))

(assert (=> d!117109 (= c!100124 (and ((_ is Cons!20905) (toList!6849 lt!438019)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438019))) (_1!7488 lt!438013))))))

(assert (=> d!117109 (isStrictlySorted!511 (toList!6849 lt!438019))))

(assert (=> d!117109 (= (insertStrictlySorted!328 (toList!6849 lt!438019) (_1!7488 lt!438013) (_2!7488 lt!438013)) lt!438409)))

(assert (= (and d!117109 c!100124) b!988243))

(assert (= (and d!117109 (not c!100124)) b!988240))

(assert (= (and b!988240 c!100125) b!988246))

(assert (= (and b!988240 (not c!100125)) b!988241))

(assert (= (and b!988241 c!100123) b!988249))

(assert (= (and b!988241 (not c!100123)) b!988244))

(assert (= (or b!988249 b!988244) bm!41872))

(assert (= (or b!988246 bm!41872) bm!41873))

(assert (= (or b!988243 bm!41873) bm!41871))

(assert (= (and bm!41871 c!100122) b!988247))

(assert (= (and bm!41871 (not c!100122)) b!988248))

(assert (= (and d!117109 res!661095) b!988242))

(assert (= (and b!988242 res!661096) b!988245))

(declare-fun m!915463 () Bool)

(assert (=> bm!41871 m!915463))

(declare-fun m!915465 () Bool)

(assert (=> b!988242 m!915465))

(declare-fun m!915467 () Bool)

(assert (=> d!117109 m!915467))

(declare-fun m!915469 () Bool)

(assert (=> d!117109 m!915469))

(declare-fun m!915471 () Bool)

(assert (=> b!988247 m!915471))

(declare-fun m!915473 () Bool)

(assert (=> b!988245 m!915473))

(assert (=> d!116899 d!117109))

(declare-fun d!117111 () Bool)

(declare-fun e!557293 () Bool)

(assert (=> d!117111 e!557293))

(declare-fun res!661097 () Bool)

(assert (=> d!117111 (=> res!661097 e!557293)))

(declare-fun lt!438413 () Bool)

(assert (=> d!117111 (= res!661097 (not lt!438413))))

(declare-fun lt!438411 () Bool)

(assert (=> d!117111 (= lt!438413 lt!438411)))

(declare-fun lt!438410 () Unit!32739)

(declare-fun e!557294 () Unit!32739)

(assert (=> d!117111 (= lt!438410 e!557294)))

(declare-fun c!100126 () Bool)

(assert (=> d!117111 (= c!100126 lt!438411)))

(assert (=> d!117111 (= lt!438411 (containsKey!478 (toList!6849 lt!438090) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117111 (= (contains!5722 lt!438090 (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!438413)))

(declare-fun b!988250 () Bool)

(declare-fun lt!438412 () Unit!32739)

(assert (=> b!988250 (= e!557294 lt!438412)))

(assert (=> b!988250 (= lt!438412 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438090) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!988250 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!988251 () Bool)

(declare-fun Unit!32758 () Unit!32739)

(assert (=> b!988251 (= e!557294 Unit!32758)))

(declare-fun b!988252 () Bool)

(assert (=> b!988252 (= e!557293 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) (select (arr!30050 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117111 c!100126) b!988250))

(assert (= (and d!117111 (not c!100126)) b!988251))

(assert (= (and d!117111 (not res!661097)) b!988252))

(assert (=> d!117111 m!914619))

(declare-fun m!915475 () Bool)

(assert (=> d!117111 m!915475))

(assert (=> b!988250 m!914619))

(declare-fun m!915477 () Bool)

(assert (=> b!988250 m!915477))

(assert (=> b!988250 m!914619))

(assert (=> b!988250 m!914933))

(assert (=> b!988250 m!914933))

(declare-fun m!915479 () Bool)

(assert (=> b!988250 m!915479))

(assert (=> b!988252 m!914619))

(assert (=> b!988252 m!914933))

(assert (=> b!988252 m!914933))

(assert (=> b!988252 m!915479))

(assert (=> b!987797 d!117111))

(declare-fun d!117113 () Bool)

(declare-fun e!557295 () Bool)

(assert (=> d!117113 e!557295))

(declare-fun res!661099 () Bool)

(assert (=> d!117113 (=> (not res!661099) (not e!557295))))

(declare-fun lt!438416 () ListLongMap!13667)

(assert (=> d!117113 (= res!661099 (contains!5722 lt!438416 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438417 () List!20909)

(assert (=> d!117113 (= lt!438416 (ListLongMap!13668 lt!438417))))

(declare-fun lt!438415 () Unit!32739)

(declare-fun lt!438414 () Unit!32739)

(assert (=> d!117113 (= lt!438415 lt!438414)))

(assert (=> d!117113 (= (getValueByKey!515 lt!438417 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117113 (= lt!438414 (lemmaContainsTupThenGetReturnValue!272 lt!438417 (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117113 (= lt!438417 (insertStrictlySorted!328 (toList!6849 call!41834) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117113 (= (+!3037 call!41834 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438416)))

(declare-fun b!988253 () Bool)

(declare-fun res!661098 () Bool)

(assert (=> b!988253 (=> (not res!661098) (not e!557295))))

(assert (=> b!988253 (= res!661098 (= (getValueByKey!515 (toList!6849 lt!438416) (_1!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!988254 () Bool)

(assert (=> b!988254 (= e!557295 (contains!5723 (toList!6849 lt!438416) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117113 res!661099) b!988253))

(assert (= (and b!988253 res!661098) b!988254))

(declare-fun m!915481 () Bool)

(assert (=> d!117113 m!915481))

(declare-fun m!915483 () Bool)

(assert (=> d!117113 m!915483))

(declare-fun m!915485 () Bool)

(assert (=> d!117113 m!915485))

(declare-fun m!915487 () Bool)

(assert (=> d!117113 m!915487))

(declare-fun m!915489 () Bool)

(assert (=> b!988253 m!915489))

(declare-fun m!915491 () Bool)

(assert (=> b!988254 m!915491))

(assert (=> b!987866 d!117113))

(declare-fun d!117115 () Bool)

(declare-fun e!557296 () Bool)

(assert (=> d!117115 e!557296))

(declare-fun res!661100 () Bool)

(assert (=> d!117115 (=> res!661100 e!557296)))

(declare-fun lt!438421 () Bool)

(assert (=> d!117115 (= res!661100 (not lt!438421))))

(declare-fun lt!438419 () Bool)

(assert (=> d!117115 (= lt!438421 lt!438419)))

(declare-fun lt!438418 () Unit!32739)

(declare-fun e!557297 () Unit!32739)

(assert (=> d!117115 (= lt!438418 e!557297)))

(declare-fun c!100127 () Bool)

(assert (=> d!117115 (= c!100127 lt!438419)))

(assert (=> d!117115 (= lt!438419 (containsKey!478 (toList!6849 lt!438106) (_1!7488 lt!438012)))))

(assert (=> d!117115 (= (contains!5722 lt!438106 (_1!7488 lt!438012)) lt!438421)))

(declare-fun b!988255 () Bool)

(declare-fun lt!438420 () Unit!32739)

(assert (=> b!988255 (= e!557297 lt!438420)))

(assert (=> b!988255 (= lt!438420 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438106) (_1!7488 lt!438012)))))

(assert (=> b!988255 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438106) (_1!7488 lt!438012)))))

(declare-fun b!988256 () Bool)

(declare-fun Unit!32759 () Unit!32739)

(assert (=> b!988256 (= e!557297 Unit!32759)))

(declare-fun b!988257 () Bool)

(assert (=> b!988257 (= e!557296 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438106) (_1!7488 lt!438012))))))

(assert (= (and d!117115 c!100127) b!988255))

(assert (= (and d!117115 (not c!100127)) b!988256))

(assert (= (and d!117115 (not res!661100)) b!988257))

(declare-fun m!915493 () Bool)

(assert (=> d!117115 m!915493))

(declare-fun m!915495 () Bool)

(assert (=> b!988255 m!915495))

(assert (=> b!988255 m!914689))

(assert (=> b!988255 m!914689))

(declare-fun m!915497 () Bool)

(assert (=> b!988255 m!915497))

(assert (=> b!988257 m!914689))

(assert (=> b!988257 m!914689))

(assert (=> b!988257 m!915497))

(assert (=> d!116901 d!117115))

(declare-fun b!988261 () Bool)

(declare-fun e!557299 () Option!521)

(assert (=> b!988261 (= e!557299 None!519)))

(declare-fun b!988258 () Bool)

(declare-fun e!557298 () Option!521)

(assert (=> b!988258 (= e!557298 (Some!520 (_2!7488 (h!22067 lt!438107))))))

(declare-fun d!117117 () Bool)

(declare-fun c!100128 () Bool)

(assert (=> d!117117 (= c!100128 (and ((_ is Cons!20905) lt!438107) (= (_1!7488 (h!22067 lt!438107)) (_1!7488 lt!438012))))))

(assert (=> d!117117 (= (getValueByKey!515 lt!438107 (_1!7488 lt!438012)) e!557298)))

(declare-fun b!988260 () Bool)

(assert (=> b!988260 (= e!557299 (getValueByKey!515 (t!29852 lt!438107) (_1!7488 lt!438012)))))

(declare-fun b!988259 () Bool)

(assert (=> b!988259 (= e!557298 e!557299)))

(declare-fun c!100129 () Bool)

(assert (=> b!988259 (= c!100129 (and ((_ is Cons!20905) lt!438107) (not (= (_1!7488 (h!22067 lt!438107)) (_1!7488 lt!438012)))))))

(assert (= (and d!117117 c!100128) b!988258))

(assert (= (and d!117117 (not c!100128)) b!988259))

(assert (= (and b!988259 c!100129) b!988260))

(assert (= (and b!988259 (not c!100129)) b!988261))

(declare-fun m!915499 () Bool)

(assert (=> b!988260 m!915499))

(assert (=> d!116901 d!117117))

(declare-fun d!117119 () Bool)

(assert (=> d!117119 (= (getValueByKey!515 lt!438107 (_1!7488 lt!438012)) (Some!520 (_2!7488 lt!438012)))))

(declare-fun lt!438422 () Unit!32739)

(assert (=> d!117119 (= lt!438422 (choose!1614 lt!438107 (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun e!557300 () Bool)

(assert (=> d!117119 e!557300))

(declare-fun res!661101 () Bool)

(assert (=> d!117119 (=> (not res!661101) (not e!557300))))

(assert (=> d!117119 (= res!661101 (isStrictlySorted!511 lt!438107))))

(assert (=> d!117119 (= (lemmaContainsTupThenGetReturnValue!272 lt!438107 (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438422)))

(declare-fun b!988262 () Bool)

(declare-fun res!661102 () Bool)

(assert (=> b!988262 (=> (not res!661102) (not e!557300))))

(assert (=> b!988262 (= res!661102 (containsKey!478 lt!438107 (_1!7488 lt!438012)))))

(declare-fun b!988263 () Bool)

(assert (=> b!988263 (= e!557300 (contains!5723 lt!438107 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(assert (= (and d!117119 res!661101) b!988262))

(assert (= (and b!988262 res!661102) b!988263))

(assert (=> d!117119 m!914683))

(declare-fun m!915501 () Bool)

(assert (=> d!117119 m!915501))

(declare-fun m!915503 () Bool)

(assert (=> d!117119 m!915503))

(declare-fun m!915505 () Bool)

(assert (=> b!988262 m!915505))

(declare-fun m!915507 () Bool)

(assert (=> b!988263 m!915507))

(assert (=> d!116901 d!117119))

(declare-fun b!988264 () Bool)

(declare-fun e!557302 () List!20909)

(declare-fun e!557303 () List!20909)

(assert (=> b!988264 (= e!557302 e!557303)))

(declare-fun c!100133 () Bool)

(assert (=> b!988264 (= c!100133 (and ((_ is Cons!20905) (toList!6849 lt!438017)) (= (_1!7488 (h!22067 (toList!6849 lt!438017))) (_1!7488 lt!438012))))))

(declare-fun b!988265 () Bool)

(declare-fun c!100131 () Bool)

(assert (=> b!988265 (= c!100131 (and ((_ is Cons!20905) (toList!6849 lt!438017)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438017))) (_1!7488 lt!438012))))))

(declare-fun e!557301 () List!20909)

(assert (=> b!988265 (= e!557303 e!557301)))

(declare-fun b!988266 () Bool)

(declare-fun res!661104 () Bool)

(declare-fun e!557305 () Bool)

(assert (=> b!988266 (=> (not res!661104) (not e!557305))))

(declare-fun lt!438423 () List!20909)

(assert (=> b!988266 (= res!661104 (containsKey!478 lt!438423 (_1!7488 lt!438012)))))

(declare-fun b!988268 () Bool)

(declare-fun call!41878 () List!20909)

(assert (=> b!988268 (= e!557301 call!41878)))

(declare-fun b!988269 () Bool)

(assert (=> b!988269 (= e!557305 (contains!5723 lt!438423 (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012))))))

(declare-fun b!988270 () Bool)

(declare-fun call!41877 () List!20909)

(assert (=> b!988270 (= e!557303 call!41877)))

(declare-fun b!988271 () Bool)

(declare-fun e!557304 () List!20909)

(assert (=> b!988271 (= e!557304 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438017)) (_1!7488 lt!438012) (_2!7488 lt!438012)))))

(declare-fun c!100132 () Bool)

(declare-fun call!41879 () List!20909)

(declare-fun bm!41874 () Bool)

(assert (=> bm!41874 (= call!41879 ($colon$colon!555 e!557304 (ite c!100132 (h!22067 (toList!6849 lt!438017)) (tuple2!14957 (_1!7488 lt!438012) (_2!7488 lt!438012)))))))

(declare-fun c!100130 () Bool)

(assert (=> bm!41874 (= c!100130 c!100132)))

(declare-fun bm!41875 () Bool)

(assert (=> bm!41875 (= call!41878 call!41877)))

(declare-fun bm!41876 () Bool)

(assert (=> bm!41876 (= call!41877 call!41879)))

(declare-fun b!988272 () Bool)

(assert (=> b!988272 (= e!557304 (ite c!100133 (t!29852 (toList!6849 lt!438017)) (ite c!100131 (Cons!20905 (h!22067 (toList!6849 lt!438017)) (t!29852 (toList!6849 lt!438017))) Nil!20906)))))

(declare-fun b!988273 () Bool)

(assert (=> b!988273 (= e!557301 call!41878)))

(declare-fun b!988267 () Bool)

(assert (=> b!988267 (= e!557302 call!41879)))

(declare-fun d!117121 () Bool)

(assert (=> d!117121 e!557305))

(declare-fun res!661103 () Bool)

(assert (=> d!117121 (=> (not res!661103) (not e!557305))))

(assert (=> d!117121 (= res!661103 (isStrictlySorted!511 lt!438423))))

(assert (=> d!117121 (= lt!438423 e!557302)))

(assert (=> d!117121 (= c!100132 (and ((_ is Cons!20905) (toList!6849 lt!438017)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438017))) (_1!7488 lt!438012))))))

(assert (=> d!117121 (isStrictlySorted!511 (toList!6849 lt!438017))))

(assert (=> d!117121 (= (insertStrictlySorted!328 (toList!6849 lt!438017) (_1!7488 lt!438012) (_2!7488 lt!438012)) lt!438423)))

(assert (= (and d!117121 c!100132) b!988267))

(assert (= (and d!117121 (not c!100132)) b!988264))

(assert (= (and b!988264 c!100133) b!988270))

(assert (= (and b!988264 (not c!100133)) b!988265))

(assert (= (and b!988265 c!100131) b!988273))

(assert (= (and b!988265 (not c!100131)) b!988268))

(assert (= (or b!988273 b!988268) bm!41875))

(assert (= (or b!988270 bm!41875) bm!41876))

(assert (= (or b!988267 bm!41876) bm!41874))

(assert (= (and bm!41874 c!100130) b!988271))

(assert (= (and bm!41874 (not c!100130)) b!988272))

(assert (= (and d!117121 res!661103) b!988266))

(assert (= (and b!988266 res!661104) b!988269))

(declare-fun m!915509 () Bool)

(assert (=> bm!41874 m!915509))

(declare-fun m!915511 () Bool)

(assert (=> b!988266 m!915511))

(declare-fun m!915513 () Bool)

(assert (=> d!117121 m!915513))

(declare-fun m!915515 () Bool)

(assert (=> d!117121 m!915515))

(declare-fun m!915517 () Bool)

(assert (=> b!988271 m!915517))

(declare-fun m!915519 () Bool)

(assert (=> b!988269 m!915519))

(assert (=> d!116901 d!117121))

(declare-fun d!117123 () Bool)

(assert (=> d!117123 (= (apply!928 (+!3037 lt!438173 (tuple2!14957 lt!438179 minValue!1220)) lt!438190) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438173 (tuple2!14957 lt!438179 minValue!1220))) lt!438190)))))

(declare-fun bs!28043 () Bool)

(assert (= bs!28043 d!117123))

(declare-fun m!915521 () Bool)

(assert (=> bs!28043 m!915521))

(assert (=> bs!28043 m!915521))

(declare-fun m!915523 () Bool)

(assert (=> bs!28043 m!915523))

(assert (=> b!987861 d!117123))

(declare-fun d!117125 () Bool)

(assert (=> d!117125 (= (apply!928 (+!3037 lt!438177 (tuple2!14957 lt!438189 minValue!1220)) lt!438187) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438177 (tuple2!14957 lt!438189 minValue!1220))) lt!438187)))))

(declare-fun bs!28044 () Bool)

(assert (= bs!28044 d!117125))

(declare-fun m!915525 () Bool)

(assert (=> bs!28044 m!915525))

(assert (=> bs!28044 m!915525))

(declare-fun m!915527 () Bool)

(assert (=> bs!28044 m!915527))

(assert (=> b!987861 d!117125))

(declare-fun d!117127 () Bool)

(declare-fun e!557306 () Bool)

(assert (=> d!117127 e!557306))

(declare-fun res!661105 () Bool)

(assert (=> d!117127 (=> res!661105 e!557306)))

(declare-fun lt!438427 () Bool)

(assert (=> d!117127 (= res!661105 (not lt!438427))))

(declare-fun lt!438425 () Bool)

(assert (=> d!117127 (= lt!438427 lt!438425)))

(declare-fun lt!438424 () Unit!32739)

(declare-fun e!557307 () Unit!32739)

(assert (=> d!117127 (= lt!438424 e!557307)))

(declare-fun c!100134 () Bool)

(assert (=> d!117127 (= c!100134 lt!438425)))

(assert (=> d!117127 (= lt!438425 (containsKey!478 (toList!6849 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220))) lt!438170))))

(assert (=> d!117127 (= (contains!5722 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220)) lt!438170) lt!438427)))

(declare-fun b!988274 () Bool)

(declare-fun lt!438426 () Unit!32739)

(assert (=> b!988274 (= e!557307 lt!438426)))

(assert (=> b!988274 (= lt!438426 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220))) lt!438170))))

(assert (=> b!988274 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220))) lt!438170))))

(declare-fun b!988275 () Bool)

(declare-fun Unit!32760 () Unit!32739)

(assert (=> b!988275 (= e!557307 Unit!32760)))

(declare-fun b!988276 () Bool)

(assert (=> b!988276 (= e!557306 (isDefined!383 (getValueByKey!515 (toList!6849 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220))) lt!438170)))))

(assert (= (and d!117127 c!100134) b!988274))

(assert (= (and d!117127 (not c!100134)) b!988275))

(assert (= (and d!117127 (not res!661105)) b!988276))

(declare-fun m!915529 () Bool)

(assert (=> d!117127 m!915529))

(declare-fun m!915531 () Bool)

(assert (=> b!988274 m!915531))

(declare-fun m!915533 () Bool)

(assert (=> b!988274 m!915533))

(assert (=> b!988274 m!915533))

(declare-fun m!915535 () Bool)

(assert (=> b!988274 m!915535))

(assert (=> b!988276 m!915533))

(assert (=> b!988276 m!915533))

(assert (=> b!988276 m!915535))

(assert (=> b!987861 d!117127))

(declare-fun d!117129 () Bool)

(assert (=> d!117129 (= (apply!928 lt!438177 lt!438187) (get!15611 (getValueByKey!515 (toList!6849 lt!438177) lt!438187)))))

(declare-fun bs!28045 () Bool)

(assert (= bs!28045 d!117129))

(declare-fun m!915537 () Bool)

(assert (=> bs!28045 m!915537))

(assert (=> bs!28045 m!915537))

(declare-fun m!915539 () Bool)

(assert (=> bs!28045 m!915539))

(assert (=> b!987861 d!117129))

(declare-fun d!117131 () Bool)

(assert (=> d!117131 (= (apply!928 (+!3037 lt!438173 (tuple2!14957 lt!438179 minValue!1220)) lt!438190) (apply!928 lt!438173 lt!438190))))

(declare-fun lt!438428 () Unit!32739)

(assert (=> d!117131 (= lt!438428 (choose!1615 lt!438173 lt!438179 minValue!1220 lt!438190))))

(declare-fun e!557308 () Bool)

(assert (=> d!117131 e!557308))

(declare-fun res!661106 () Bool)

(assert (=> d!117131 (=> (not res!661106) (not e!557308))))

(assert (=> d!117131 (= res!661106 (contains!5722 lt!438173 lt!438190))))

(assert (=> d!117131 (= (addApplyDifferent!470 lt!438173 lt!438179 minValue!1220 lt!438190) lt!438428)))

(declare-fun b!988277 () Bool)

(assert (=> b!988277 (= e!557308 (not (= lt!438190 lt!438179)))))

(assert (= (and d!117131 res!661106) b!988277))

(assert (=> d!117131 m!914785))

(assert (=> d!117131 m!914789))

(assert (=> d!117131 m!914791))

(declare-fun m!915541 () Bool)

(assert (=> d!117131 m!915541))

(assert (=> d!117131 m!914789))

(declare-fun m!915543 () Bool)

(assert (=> d!117131 m!915543))

(assert (=> b!987861 d!117131))

(declare-fun d!117133 () Bool)

(assert (=> d!117133 (contains!5722 (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220)) lt!438170)))

(declare-fun lt!438429 () Unit!32739)

(assert (=> d!117133 (= lt!438429 (choose!1616 lt!438184 lt!438186 zeroValue!1220 lt!438170))))

(assert (=> d!117133 (contains!5722 lt!438184 lt!438170)))

(assert (=> d!117133 (= (addStillContains!618 lt!438184 lt!438186 zeroValue!1220 lt!438170) lt!438429)))

(declare-fun bs!28046 () Bool)

(assert (= bs!28046 d!117133))

(assert (=> bs!28046 m!914781))

(assert (=> bs!28046 m!914781))

(assert (=> bs!28046 m!914783))

(declare-fun m!915545 () Bool)

(assert (=> bs!28046 m!915545))

(declare-fun m!915547 () Bool)

(assert (=> bs!28046 m!915547))

(assert (=> b!987861 d!117133))

(declare-fun d!117135 () Bool)

(declare-fun e!557309 () Bool)

(assert (=> d!117135 e!557309))

(declare-fun res!661108 () Bool)

(assert (=> d!117135 (=> (not res!661108) (not e!557309))))

(declare-fun lt!438432 () ListLongMap!13667)

(assert (=> d!117135 (= res!661108 (contains!5722 lt!438432 (_1!7488 (tuple2!14957 lt!438172 zeroValue!1220))))))

(declare-fun lt!438433 () List!20909)

(assert (=> d!117135 (= lt!438432 (ListLongMap!13668 lt!438433))))

(declare-fun lt!438431 () Unit!32739)

(declare-fun lt!438430 () Unit!32739)

(assert (=> d!117135 (= lt!438431 lt!438430)))

(assert (=> d!117135 (= (getValueByKey!515 lt!438433 (_1!7488 (tuple2!14957 lt!438172 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438172 zeroValue!1220))))))

(assert (=> d!117135 (= lt!438430 (lemmaContainsTupThenGetReturnValue!272 lt!438433 (_1!7488 (tuple2!14957 lt!438172 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438172 zeroValue!1220))))))

(assert (=> d!117135 (= lt!438433 (insertStrictlySorted!328 (toList!6849 lt!438171) (_1!7488 (tuple2!14957 lt!438172 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438172 zeroValue!1220))))))

(assert (=> d!117135 (= (+!3037 lt!438171 (tuple2!14957 lt!438172 zeroValue!1220)) lt!438432)))

(declare-fun b!988278 () Bool)

(declare-fun res!661107 () Bool)

(assert (=> b!988278 (=> (not res!661107) (not e!557309))))

(assert (=> b!988278 (= res!661107 (= (getValueByKey!515 (toList!6849 lt!438432) (_1!7488 (tuple2!14957 lt!438172 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438172 zeroValue!1220)))))))

(declare-fun b!988279 () Bool)

(assert (=> b!988279 (= e!557309 (contains!5723 (toList!6849 lt!438432) (tuple2!14957 lt!438172 zeroValue!1220)))))

(assert (= (and d!117135 res!661108) b!988278))

(assert (= (and b!988278 res!661107) b!988279))

(declare-fun m!915549 () Bool)

(assert (=> d!117135 m!915549))

(declare-fun m!915551 () Bool)

(assert (=> d!117135 m!915551))

(declare-fun m!915553 () Bool)

(assert (=> d!117135 m!915553))

(declare-fun m!915555 () Bool)

(assert (=> d!117135 m!915555))

(declare-fun m!915557 () Bool)

(assert (=> b!988278 m!915557))

(declare-fun m!915559 () Bool)

(assert (=> b!988279 m!915559))

(assert (=> b!987861 d!117135))

(declare-fun d!117137 () Bool)

(assert (=> d!117137 (= (apply!928 (+!3037 lt!438177 (tuple2!14957 lt!438189 minValue!1220)) lt!438187) (apply!928 lt!438177 lt!438187))))

(declare-fun lt!438434 () Unit!32739)

(assert (=> d!117137 (= lt!438434 (choose!1615 lt!438177 lt!438189 minValue!1220 lt!438187))))

(declare-fun e!557310 () Bool)

(assert (=> d!117137 e!557310))

(declare-fun res!661109 () Bool)

(assert (=> d!117137 (=> (not res!661109) (not e!557310))))

(assert (=> d!117137 (= res!661109 (contains!5722 lt!438177 lt!438187))))

(assert (=> d!117137 (= (addApplyDifferent!470 lt!438177 lt!438189 minValue!1220 lt!438187) lt!438434)))

(declare-fun b!988280 () Bool)

(assert (=> b!988280 (= e!557310 (not (= lt!438187 lt!438189)))))

(assert (= (and d!117137 res!661109) b!988280))

(assert (=> d!117137 m!914787))

(assert (=> d!117137 m!914773))

(assert (=> d!117137 m!914775))

(declare-fun m!915561 () Bool)

(assert (=> d!117137 m!915561))

(assert (=> d!117137 m!914773))

(declare-fun m!915563 () Bool)

(assert (=> d!117137 m!915563))

(assert (=> b!987861 d!117137))

(declare-fun d!117139 () Bool)

(assert (=> d!117139 (= (apply!928 (+!3037 lt!438171 (tuple2!14957 lt!438172 zeroValue!1220)) lt!438176) (get!15611 (getValueByKey!515 (toList!6849 (+!3037 lt!438171 (tuple2!14957 lt!438172 zeroValue!1220))) lt!438176)))))

(declare-fun bs!28047 () Bool)

(assert (= bs!28047 d!117139))

(declare-fun m!915565 () Bool)

(assert (=> bs!28047 m!915565))

(assert (=> bs!28047 m!915565))

(declare-fun m!915567 () Bool)

(assert (=> bs!28047 m!915567))

(assert (=> b!987861 d!117139))

(declare-fun d!117141 () Bool)

(declare-fun e!557311 () Bool)

(assert (=> d!117141 e!557311))

(declare-fun res!661111 () Bool)

(assert (=> d!117141 (=> (not res!661111) (not e!557311))))

(declare-fun lt!438437 () ListLongMap!13667)

(assert (=> d!117141 (= res!661111 (contains!5722 lt!438437 (_1!7488 (tuple2!14957 lt!438189 minValue!1220))))))

(declare-fun lt!438438 () List!20909)

(assert (=> d!117141 (= lt!438437 (ListLongMap!13668 lt!438438))))

(declare-fun lt!438436 () Unit!32739)

(declare-fun lt!438435 () Unit!32739)

(assert (=> d!117141 (= lt!438436 lt!438435)))

(assert (=> d!117141 (= (getValueByKey!515 lt!438438 (_1!7488 (tuple2!14957 lt!438189 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438189 minValue!1220))))))

(assert (=> d!117141 (= lt!438435 (lemmaContainsTupThenGetReturnValue!272 lt!438438 (_1!7488 (tuple2!14957 lt!438189 minValue!1220)) (_2!7488 (tuple2!14957 lt!438189 minValue!1220))))))

(assert (=> d!117141 (= lt!438438 (insertStrictlySorted!328 (toList!6849 lt!438177) (_1!7488 (tuple2!14957 lt!438189 minValue!1220)) (_2!7488 (tuple2!14957 lt!438189 minValue!1220))))))

(assert (=> d!117141 (= (+!3037 lt!438177 (tuple2!14957 lt!438189 minValue!1220)) lt!438437)))

(declare-fun b!988281 () Bool)

(declare-fun res!661110 () Bool)

(assert (=> b!988281 (=> (not res!661110) (not e!557311))))

(assert (=> b!988281 (= res!661110 (= (getValueByKey!515 (toList!6849 lt!438437) (_1!7488 (tuple2!14957 lt!438189 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438189 minValue!1220)))))))

(declare-fun b!988282 () Bool)

(assert (=> b!988282 (= e!557311 (contains!5723 (toList!6849 lt!438437) (tuple2!14957 lt!438189 minValue!1220)))))

(assert (= (and d!117141 res!661111) b!988281))

(assert (= (and b!988281 res!661110) b!988282))

(declare-fun m!915569 () Bool)

(assert (=> d!117141 m!915569))

(declare-fun m!915571 () Bool)

(assert (=> d!117141 m!915571))

(declare-fun m!915573 () Bool)

(assert (=> d!117141 m!915573))

(declare-fun m!915575 () Bool)

(assert (=> d!117141 m!915575))

(declare-fun m!915577 () Bool)

(assert (=> b!988281 m!915577))

(declare-fun m!915579 () Bool)

(assert (=> b!988282 m!915579))

(assert (=> b!987861 d!117141))

(declare-fun d!117143 () Bool)

(assert (=> d!117143 (= (apply!928 lt!438173 lt!438190) (get!15611 (getValueByKey!515 (toList!6849 lt!438173) lt!438190)))))

(declare-fun bs!28048 () Bool)

(assert (= bs!28048 d!117143))

(declare-fun m!915581 () Bool)

(assert (=> bs!28048 m!915581))

(assert (=> bs!28048 m!915581))

(declare-fun m!915583 () Bool)

(assert (=> bs!28048 m!915583))

(assert (=> b!987861 d!117143))

(assert (=> b!987861 d!116893))

(declare-fun d!117145 () Bool)

(declare-fun e!557312 () Bool)

(assert (=> d!117145 e!557312))

(declare-fun res!661113 () Bool)

(assert (=> d!117145 (=> (not res!661113) (not e!557312))))

(declare-fun lt!438441 () ListLongMap!13667)

(assert (=> d!117145 (= res!661113 (contains!5722 lt!438441 (_1!7488 (tuple2!14957 lt!438186 zeroValue!1220))))))

(declare-fun lt!438442 () List!20909)

(assert (=> d!117145 (= lt!438441 (ListLongMap!13668 lt!438442))))

(declare-fun lt!438440 () Unit!32739)

(declare-fun lt!438439 () Unit!32739)

(assert (=> d!117145 (= lt!438440 lt!438439)))

(assert (=> d!117145 (= (getValueByKey!515 lt!438442 (_1!7488 (tuple2!14957 lt!438186 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438186 zeroValue!1220))))))

(assert (=> d!117145 (= lt!438439 (lemmaContainsTupThenGetReturnValue!272 lt!438442 (_1!7488 (tuple2!14957 lt!438186 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438186 zeroValue!1220))))))

(assert (=> d!117145 (= lt!438442 (insertStrictlySorted!328 (toList!6849 lt!438184) (_1!7488 (tuple2!14957 lt!438186 zeroValue!1220)) (_2!7488 (tuple2!14957 lt!438186 zeroValue!1220))))))

(assert (=> d!117145 (= (+!3037 lt!438184 (tuple2!14957 lt!438186 zeroValue!1220)) lt!438441)))

(declare-fun b!988283 () Bool)

(declare-fun res!661112 () Bool)

(assert (=> b!988283 (=> (not res!661112) (not e!557312))))

(assert (=> b!988283 (= res!661112 (= (getValueByKey!515 (toList!6849 lt!438441) (_1!7488 (tuple2!14957 lt!438186 zeroValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438186 zeroValue!1220)))))))

(declare-fun b!988284 () Bool)

(assert (=> b!988284 (= e!557312 (contains!5723 (toList!6849 lt!438441) (tuple2!14957 lt!438186 zeroValue!1220)))))

(assert (= (and d!117145 res!661113) b!988283))

(assert (= (and b!988283 res!661112) b!988284))

(declare-fun m!915585 () Bool)

(assert (=> d!117145 m!915585))

(declare-fun m!915587 () Bool)

(assert (=> d!117145 m!915587))

(declare-fun m!915589 () Bool)

(assert (=> d!117145 m!915589))

(declare-fun m!915591 () Bool)

(assert (=> d!117145 m!915591))

(declare-fun m!915593 () Bool)

(assert (=> b!988283 m!915593))

(declare-fun m!915595 () Bool)

(assert (=> b!988284 m!915595))

(assert (=> b!987861 d!117145))

(declare-fun d!117147 () Bool)

(assert (=> d!117147 (= (apply!928 (+!3037 lt!438171 (tuple2!14957 lt!438172 zeroValue!1220)) lt!438176) (apply!928 lt!438171 lt!438176))))

(declare-fun lt!438443 () Unit!32739)

(assert (=> d!117147 (= lt!438443 (choose!1615 lt!438171 lt!438172 zeroValue!1220 lt!438176))))

(declare-fun e!557313 () Bool)

(assert (=> d!117147 e!557313))

(declare-fun res!661114 () Bool)

(assert (=> d!117147 (=> (not res!661114) (not e!557313))))

(assert (=> d!117147 (= res!661114 (contains!5722 lt!438171 lt!438176))))

(assert (=> d!117147 (= (addApplyDifferent!470 lt!438171 lt!438172 zeroValue!1220 lt!438176) lt!438443)))

(declare-fun b!988285 () Bool)

(assert (=> b!988285 (= e!557313 (not (= lt!438176 lt!438172)))))

(assert (= (and d!117147 res!661114) b!988285))

(assert (=> d!117147 m!914769))

(assert (=> d!117147 m!914765))

(assert (=> d!117147 m!914767))

(declare-fun m!915597 () Bool)

(assert (=> d!117147 m!915597))

(assert (=> d!117147 m!914765))

(declare-fun m!915599 () Bool)

(assert (=> d!117147 m!915599))

(assert (=> b!987861 d!117147))

(declare-fun d!117149 () Bool)

(declare-fun e!557314 () Bool)

(assert (=> d!117149 e!557314))

(declare-fun res!661116 () Bool)

(assert (=> d!117149 (=> (not res!661116) (not e!557314))))

(declare-fun lt!438446 () ListLongMap!13667)

(assert (=> d!117149 (= res!661116 (contains!5722 lt!438446 (_1!7488 (tuple2!14957 lt!438179 minValue!1220))))))

(declare-fun lt!438447 () List!20909)

(assert (=> d!117149 (= lt!438446 (ListLongMap!13668 lt!438447))))

(declare-fun lt!438445 () Unit!32739)

(declare-fun lt!438444 () Unit!32739)

(assert (=> d!117149 (= lt!438445 lt!438444)))

(assert (=> d!117149 (= (getValueByKey!515 lt!438447 (_1!7488 (tuple2!14957 lt!438179 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438179 minValue!1220))))))

(assert (=> d!117149 (= lt!438444 (lemmaContainsTupThenGetReturnValue!272 lt!438447 (_1!7488 (tuple2!14957 lt!438179 minValue!1220)) (_2!7488 (tuple2!14957 lt!438179 minValue!1220))))))

(assert (=> d!117149 (= lt!438447 (insertStrictlySorted!328 (toList!6849 lt!438173) (_1!7488 (tuple2!14957 lt!438179 minValue!1220)) (_2!7488 (tuple2!14957 lt!438179 minValue!1220))))))

(assert (=> d!117149 (= (+!3037 lt!438173 (tuple2!14957 lt!438179 minValue!1220)) lt!438446)))

(declare-fun b!988286 () Bool)

(declare-fun res!661115 () Bool)

(assert (=> b!988286 (=> (not res!661115) (not e!557314))))

(assert (=> b!988286 (= res!661115 (= (getValueByKey!515 (toList!6849 lt!438446) (_1!7488 (tuple2!14957 lt!438179 minValue!1220))) (Some!520 (_2!7488 (tuple2!14957 lt!438179 minValue!1220)))))))

(declare-fun b!988287 () Bool)

(assert (=> b!988287 (= e!557314 (contains!5723 (toList!6849 lt!438446) (tuple2!14957 lt!438179 minValue!1220)))))

(assert (= (and d!117149 res!661116) b!988286))

(assert (= (and b!988286 res!661115) b!988287))

(declare-fun m!915601 () Bool)

(assert (=> d!117149 m!915601))

(declare-fun m!915603 () Bool)

(assert (=> d!117149 m!915603))

(declare-fun m!915605 () Bool)

(assert (=> d!117149 m!915605))

(declare-fun m!915607 () Bool)

(assert (=> d!117149 m!915607))

(declare-fun m!915609 () Bool)

(assert (=> b!988286 m!915609))

(declare-fun m!915611 () Bool)

(assert (=> b!988287 m!915611))

(assert (=> b!987861 d!117149))

(declare-fun d!117151 () Bool)

(assert (=> d!117151 (= (apply!928 lt!438171 lt!438176) (get!15611 (getValueByKey!515 (toList!6849 lt!438171) lt!438176)))))

(declare-fun bs!28049 () Bool)

(assert (= bs!28049 d!117151))

(declare-fun m!915613 () Bool)

(assert (=> bs!28049 m!915613))

(assert (=> bs!28049 m!915613))

(declare-fun m!915615 () Bool)

(assert (=> bs!28049 m!915615))

(assert (=> b!987861 d!117151))

(declare-fun d!117153 () Bool)

(declare-fun lt!438448 () Bool)

(assert (=> d!117153 (= lt!438448 (select (content!420 (toList!6849 lt!438114)) lt!438012))))

(declare-fun e!557315 () Bool)

(assert (=> d!117153 (= lt!438448 e!557315)))

(declare-fun res!661118 () Bool)

(assert (=> d!117153 (=> (not res!661118) (not e!557315))))

(assert (=> d!117153 (= res!661118 ((_ is Cons!20905) (toList!6849 lt!438114)))))

(assert (=> d!117153 (= (contains!5723 (toList!6849 lt!438114) lt!438012) lt!438448)))

(declare-fun b!988288 () Bool)

(declare-fun e!557316 () Bool)

(assert (=> b!988288 (= e!557315 e!557316)))

(declare-fun res!661117 () Bool)

(assert (=> b!988288 (=> res!661117 e!557316)))

(assert (=> b!988288 (= res!661117 (= (h!22067 (toList!6849 lt!438114)) lt!438012))))

(declare-fun b!988289 () Bool)

(assert (=> b!988289 (= e!557316 (contains!5723 (t!29852 (toList!6849 lt!438114)) lt!438012))))

(assert (= (and d!117153 res!661118) b!988288))

(assert (= (and b!988288 (not res!661117)) b!988289))

(declare-fun m!915617 () Bool)

(assert (=> d!117153 m!915617))

(declare-fun m!915619 () Bool)

(assert (=> d!117153 m!915619))

(declare-fun m!915621 () Bool)

(assert (=> b!988289 m!915621))

(assert (=> b!987807 d!117153))

(declare-fun d!117155 () Bool)

(declare-fun lt!438449 () Bool)

(assert (=> d!117155 (= lt!438449 (select (content!420 (toList!6849 lt!438118)) lt!438012))))

(declare-fun e!557317 () Bool)

(assert (=> d!117155 (= lt!438449 e!557317)))

(declare-fun res!661120 () Bool)

(assert (=> d!117155 (=> (not res!661120) (not e!557317))))

(assert (=> d!117155 (= res!661120 ((_ is Cons!20905) (toList!6849 lt!438118)))))

(assert (=> d!117155 (= (contains!5723 (toList!6849 lt!438118) lt!438012) lt!438449)))

(declare-fun b!988290 () Bool)

(declare-fun e!557318 () Bool)

(assert (=> b!988290 (= e!557317 e!557318)))

(declare-fun res!661119 () Bool)

(assert (=> b!988290 (=> res!661119 e!557318)))

(assert (=> b!988290 (= res!661119 (= (h!22067 (toList!6849 lt!438118)) lt!438012))))

(declare-fun b!988291 () Bool)

(assert (=> b!988291 (= e!557318 (contains!5723 (t!29852 (toList!6849 lt!438118)) lt!438012))))

(assert (= (and d!117155 res!661120) b!988290))

(assert (= (and b!988290 (not res!661119)) b!988291))

(declare-fun m!915623 () Bool)

(assert (=> d!117155 m!915623))

(declare-fun m!915625 () Bool)

(assert (=> d!117155 m!915625))

(declare-fun m!915627 () Bool)

(assert (=> b!988291 m!915627))

(assert (=> b!987809 d!117155))

(declare-fun d!117157 () Bool)

(declare-fun e!557319 () Bool)

(assert (=> d!117157 e!557319))

(declare-fun res!661121 () Bool)

(assert (=> d!117157 (=> res!661121 e!557319)))

(declare-fun lt!438453 () Bool)

(assert (=> d!117157 (= res!661121 (not lt!438453))))

(declare-fun lt!438451 () Bool)

(assert (=> d!117157 (= lt!438453 lt!438451)))

(declare-fun lt!438450 () Unit!32739)

(declare-fun e!557320 () Unit!32739)

(assert (=> d!117157 (= lt!438450 e!557320)))

(declare-fun c!100135 () Bool)

(assert (=> d!117157 (= c!100135 lt!438451)))

(assert (=> d!117157 (= lt!438451 (containsKey!478 (toList!6849 lt!438090) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117157 (= (contains!5722 lt!438090 #b1000000000000000000000000000000000000000000000000000000000000000) lt!438453)))

(declare-fun b!988292 () Bool)

(declare-fun lt!438452 () Unit!32739)

(assert (=> b!988292 (= e!557320 lt!438452)))

(assert (=> b!988292 (= lt!438452 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438090) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!988292 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!988293 () Bool)

(declare-fun Unit!32761 () Unit!32739)

(assert (=> b!988293 (= e!557320 Unit!32761)))

(declare-fun b!988294 () Bool)

(assert (=> b!988294 (= e!557319 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438090) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117157 c!100135) b!988292))

(assert (= (and d!117157 (not c!100135)) b!988293))

(assert (= (and d!117157 (not res!661121)) b!988294))

(declare-fun m!915629 () Bool)

(assert (=> d!117157 m!915629))

(declare-fun m!915631 () Bool)

(assert (=> b!988292 m!915631))

(declare-fun m!915633 () Bool)

(assert (=> b!988292 m!915633))

(assert (=> b!988292 m!915633))

(declare-fun m!915635 () Bool)

(assert (=> b!988292 m!915635))

(assert (=> b!988294 m!915633))

(assert (=> b!988294 m!915633))

(assert (=> b!988294 m!915635))

(assert (=> b!987792 d!117157))

(declare-fun d!117159 () Bool)

(declare-fun e!557321 () Bool)

(assert (=> d!117159 e!557321))

(declare-fun res!661123 () Bool)

(assert (=> d!117159 (=> (not res!661123) (not e!557321))))

(declare-fun lt!438456 () ListLongMap!13667)

(assert (=> d!117159 (= res!661123 (contains!5722 lt!438456 (_1!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!438457 () List!20909)

(assert (=> d!117159 (= lt!438456 (ListLongMap!13668 lt!438457))))

(declare-fun lt!438455 () Unit!32739)

(declare-fun lt!438454 () Unit!32739)

(assert (=> d!117159 (= lt!438455 lt!438454)))

(assert (=> d!117159 (= (getValueByKey!515 lt!438457 (_1!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!520 (_2!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117159 (= lt!438454 (lemmaContainsTupThenGetReturnValue!272 lt!438457 (_1!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117159 (= lt!438457 (insertStrictlySorted!328 (toList!6849 (ite c!100015 call!41835 (ite c!100011 call!41832 call!41838))) (_1!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117159 (= (+!3037 (ite c!100015 call!41835 (ite c!100011 call!41832 call!41838)) (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!438456)))

(declare-fun b!988295 () Bool)

(declare-fun res!661122 () Bool)

(assert (=> b!988295 (=> (not res!661122) (not e!557321))))

(assert (=> b!988295 (= res!661122 (= (getValueByKey!515 (toList!6849 lt!438456) (_1!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!520 (_2!7488 (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!988296 () Bool)

(assert (=> b!988296 (= e!557321 (contains!5723 (toList!6849 lt!438456) (ite (or c!100015 c!100011) (tuple2!14957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117159 res!661123) b!988295))

(assert (= (and b!988295 res!661122) b!988296))

(declare-fun m!915637 () Bool)

(assert (=> d!117159 m!915637))

(declare-fun m!915639 () Bool)

(assert (=> d!117159 m!915639))

(declare-fun m!915641 () Bool)

(assert (=> d!117159 m!915641))

(declare-fun m!915643 () Bool)

(assert (=> d!117159 m!915643))

(declare-fun m!915645 () Bool)

(assert (=> b!988295 m!915645))

(declare-fun m!915647 () Bool)

(assert (=> b!988296 m!915647))

(assert (=> bm!41830 d!117159))

(declare-fun d!117161 () Bool)

(declare-fun lt!438458 () Bool)

(assert (=> d!117161 (= lt!438458 (select (content!420 (toList!6849 lt!438070)) lt!438012))))

(declare-fun e!557322 () Bool)

(assert (=> d!117161 (= lt!438458 e!557322)))

(declare-fun res!661125 () Bool)

(assert (=> d!117161 (=> (not res!661125) (not e!557322))))

(assert (=> d!117161 (= res!661125 ((_ is Cons!20905) (toList!6849 lt!438070)))))

(assert (=> d!117161 (= (contains!5723 (toList!6849 lt!438070) lt!438012) lt!438458)))

(declare-fun b!988297 () Bool)

(declare-fun e!557323 () Bool)

(assert (=> b!988297 (= e!557322 e!557323)))

(declare-fun res!661124 () Bool)

(assert (=> b!988297 (=> res!661124 e!557323)))

(assert (=> b!988297 (= res!661124 (= (h!22067 (toList!6849 lt!438070)) lt!438012))))

(declare-fun b!988298 () Bool)

(assert (=> b!988298 (= e!557323 (contains!5723 (t!29852 (toList!6849 lt!438070)) lt!438012))))

(assert (= (and d!117161 res!661125) b!988297))

(assert (= (and b!988297 (not res!661124)) b!988298))

(declare-fun m!915649 () Bool)

(assert (=> d!117161 m!915649))

(declare-fun m!915651 () Bool)

(assert (=> d!117161 m!915651))

(declare-fun m!915653 () Bool)

(assert (=> b!988298 m!915653))

(assert (=> b!987755 d!117161))

(declare-fun d!117163 () Bool)

(declare-fun lt!438459 () Bool)

(assert (=> d!117163 (= lt!438459 (select (content!420 (toList!6849 lt!438122)) lt!438014))))

(declare-fun e!557324 () Bool)

(assert (=> d!117163 (= lt!438459 e!557324)))

(declare-fun res!661127 () Bool)

(assert (=> d!117163 (=> (not res!661127) (not e!557324))))

(assert (=> d!117163 (= res!661127 ((_ is Cons!20905) (toList!6849 lt!438122)))))

(assert (=> d!117163 (= (contains!5723 (toList!6849 lt!438122) lt!438014) lt!438459)))

(declare-fun b!988299 () Bool)

(declare-fun e!557325 () Bool)

(assert (=> b!988299 (= e!557324 e!557325)))

(declare-fun res!661126 () Bool)

(assert (=> b!988299 (=> res!661126 e!557325)))

(assert (=> b!988299 (= res!661126 (= (h!22067 (toList!6849 lt!438122)) lt!438014))))

(declare-fun b!988300 () Bool)

(assert (=> b!988300 (= e!557325 (contains!5723 (t!29852 (toList!6849 lt!438122)) lt!438014))))

(assert (= (and d!117163 res!661127) b!988299))

(assert (= (and b!988299 (not res!661126)) b!988300))

(declare-fun m!915655 () Bool)

(assert (=> d!117163 m!915655))

(declare-fun m!915657 () Bool)

(assert (=> d!117163 m!915657))

(declare-fun m!915659 () Bool)

(assert (=> b!988300 m!915659))

(assert (=> b!987811 d!117163))

(declare-fun d!117165 () Bool)

(declare-fun e!557326 () Bool)

(assert (=> d!117165 e!557326))

(declare-fun res!661128 () Bool)

(assert (=> d!117165 (=> res!661128 e!557326)))

(declare-fun lt!438463 () Bool)

(assert (=> d!117165 (= res!661128 (not lt!438463))))

(declare-fun lt!438461 () Bool)

(assert (=> d!117165 (= lt!438463 lt!438461)))

(declare-fun lt!438460 () Unit!32739)

(declare-fun e!557327 () Unit!32739)

(assert (=> d!117165 (= lt!438460 e!557327)))

(declare-fun c!100136 () Bool)

(assert (=> d!117165 (= c!100136 lt!438461)))

(assert (=> d!117165 (= lt!438461 (containsKey!478 (toList!6849 lt!438095) (_1!7488 lt!438013)))))

(assert (=> d!117165 (= (contains!5722 lt!438095 (_1!7488 lt!438013)) lt!438463)))

(declare-fun b!988301 () Bool)

(declare-fun lt!438462 () Unit!32739)

(assert (=> b!988301 (= e!557327 lt!438462)))

(assert (=> b!988301 (= lt!438462 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!6849 lt!438095) (_1!7488 lt!438013)))))

(assert (=> b!988301 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438095) (_1!7488 lt!438013)))))

(declare-fun b!988302 () Bool)

(declare-fun Unit!32762 () Unit!32739)

(assert (=> b!988302 (= e!557327 Unit!32762)))

(declare-fun b!988303 () Bool)

(assert (=> b!988303 (= e!557326 (isDefined!383 (getValueByKey!515 (toList!6849 lt!438095) (_1!7488 lt!438013))))))

(assert (= (and d!117165 c!100136) b!988301))

(assert (= (and d!117165 (not c!100136)) b!988302))

(assert (= (and d!117165 (not res!661128)) b!988303))

(declare-fun m!915661 () Bool)

(assert (=> d!117165 m!915661))

(declare-fun m!915663 () Bool)

(assert (=> b!988301 m!915663))

(assert (=> b!988301 m!914655))

(assert (=> b!988301 m!914655))

(declare-fun m!915665 () Bool)

(assert (=> b!988301 m!915665))

(assert (=> b!988303 m!914655))

(assert (=> b!988303 m!914655))

(assert (=> b!988303 m!915665))

(assert (=> d!116895 d!117165))

(declare-fun b!988307 () Bool)

(declare-fun e!557329 () Option!521)

(assert (=> b!988307 (= e!557329 None!519)))

(declare-fun b!988304 () Bool)

(declare-fun e!557328 () Option!521)

(assert (=> b!988304 (= e!557328 (Some!520 (_2!7488 (h!22067 lt!438096))))))

(declare-fun d!117167 () Bool)

(declare-fun c!100137 () Bool)

(assert (=> d!117167 (= c!100137 (and ((_ is Cons!20905) lt!438096) (= (_1!7488 (h!22067 lt!438096)) (_1!7488 lt!438013))))))

(assert (=> d!117167 (= (getValueByKey!515 lt!438096 (_1!7488 lt!438013)) e!557328)))

(declare-fun b!988306 () Bool)

(assert (=> b!988306 (= e!557329 (getValueByKey!515 (t!29852 lt!438096) (_1!7488 lt!438013)))))

(declare-fun b!988305 () Bool)

(assert (=> b!988305 (= e!557328 e!557329)))

(declare-fun c!100138 () Bool)

(assert (=> b!988305 (= c!100138 (and ((_ is Cons!20905) lt!438096) (not (= (_1!7488 (h!22067 lt!438096)) (_1!7488 lt!438013)))))))

(assert (= (and d!117167 c!100137) b!988304))

(assert (= (and d!117167 (not c!100137)) b!988305))

(assert (= (and b!988305 c!100138) b!988306))

(assert (= (and b!988305 (not c!100138)) b!988307))

(declare-fun m!915667 () Bool)

(assert (=> b!988306 m!915667))

(assert (=> d!116895 d!117167))

(declare-fun d!117169 () Bool)

(assert (=> d!117169 (= (getValueByKey!515 lt!438096 (_1!7488 lt!438013)) (Some!520 (_2!7488 lt!438013)))))

(declare-fun lt!438464 () Unit!32739)

(assert (=> d!117169 (= lt!438464 (choose!1614 lt!438096 (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(declare-fun e!557330 () Bool)

(assert (=> d!117169 e!557330))

(declare-fun res!661129 () Bool)

(assert (=> d!117169 (=> (not res!661129) (not e!557330))))

(assert (=> d!117169 (= res!661129 (isStrictlySorted!511 lt!438096))))

(assert (=> d!117169 (= (lemmaContainsTupThenGetReturnValue!272 lt!438096 (_1!7488 lt!438013) (_2!7488 lt!438013)) lt!438464)))

(declare-fun b!988308 () Bool)

(declare-fun res!661130 () Bool)

(assert (=> b!988308 (=> (not res!661130) (not e!557330))))

(assert (=> b!988308 (= res!661130 (containsKey!478 lt!438096 (_1!7488 lt!438013)))))

(declare-fun b!988309 () Bool)

(assert (=> b!988309 (= e!557330 (contains!5723 lt!438096 (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013))))))

(assert (= (and d!117169 res!661129) b!988308))

(assert (= (and b!988308 res!661130) b!988309))

(assert (=> d!117169 m!914649))

(declare-fun m!915669 () Bool)

(assert (=> d!117169 m!915669))

(declare-fun m!915671 () Bool)

(assert (=> d!117169 m!915671))

(declare-fun m!915673 () Bool)

(assert (=> b!988308 m!915673))

(declare-fun m!915675 () Bool)

(assert (=> b!988309 m!915675))

(assert (=> d!116895 d!117169))

(declare-fun b!988310 () Bool)

(declare-fun e!557332 () List!20909)

(declare-fun e!557333 () List!20909)

(assert (=> b!988310 (= e!557332 e!557333)))

(declare-fun c!100142 () Bool)

(assert (=> b!988310 (= c!100142 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (= (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438013))))))

(declare-fun b!988311 () Bool)

(declare-fun c!100140 () Bool)

(assert (=> b!988311 (= c!100140 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (bvsgt (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438013))))))

(declare-fun e!557331 () List!20909)

(assert (=> b!988311 (= e!557333 e!557331)))

(declare-fun b!988312 () Bool)

(declare-fun res!661132 () Bool)

(declare-fun e!557335 () Bool)

(assert (=> b!988312 (=> (not res!661132) (not e!557335))))

(declare-fun lt!438465 () List!20909)

(assert (=> b!988312 (= res!661132 (containsKey!478 lt!438465 (_1!7488 lt!438013)))))

(declare-fun b!988314 () Bool)

(declare-fun call!41881 () List!20909)

(assert (=> b!988314 (= e!557331 call!41881)))

(declare-fun b!988315 () Bool)

(assert (=> b!988315 (= e!557335 (contains!5723 lt!438465 (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013))))))

(declare-fun b!988316 () Bool)

(declare-fun call!41880 () List!20909)

(assert (=> b!988316 (= e!557333 call!41880)))

(declare-fun b!988317 () Bool)

(declare-fun e!557334 () List!20909)

(assert (=> b!988317 (= e!557334 (insertStrictlySorted!328 (t!29852 (toList!6849 lt!438020)) (_1!7488 lt!438013) (_2!7488 lt!438013)))))

(declare-fun bm!41877 () Bool)

(declare-fun call!41882 () List!20909)

(declare-fun c!100141 () Bool)

(assert (=> bm!41877 (= call!41882 ($colon$colon!555 e!557334 (ite c!100141 (h!22067 (toList!6849 lt!438020)) (tuple2!14957 (_1!7488 lt!438013) (_2!7488 lt!438013)))))))

(declare-fun c!100139 () Bool)

(assert (=> bm!41877 (= c!100139 c!100141)))

(declare-fun bm!41878 () Bool)

(assert (=> bm!41878 (= call!41881 call!41880)))

(declare-fun bm!41879 () Bool)

(assert (=> bm!41879 (= call!41880 call!41882)))

(declare-fun b!988318 () Bool)

(assert (=> b!988318 (= e!557334 (ite c!100142 (t!29852 (toList!6849 lt!438020)) (ite c!100140 (Cons!20905 (h!22067 (toList!6849 lt!438020)) (t!29852 (toList!6849 lt!438020))) Nil!20906)))))

(declare-fun b!988319 () Bool)

(assert (=> b!988319 (= e!557331 call!41881)))

(declare-fun b!988313 () Bool)

(assert (=> b!988313 (= e!557332 call!41882)))

(declare-fun d!117171 () Bool)

(assert (=> d!117171 e!557335))

(declare-fun res!661131 () Bool)

(assert (=> d!117171 (=> (not res!661131) (not e!557335))))

(assert (=> d!117171 (= res!661131 (isStrictlySorted!511 lt!438465))))

(assert (=> d!117171 (= lt!438465 e!557332)))

(assert (=> d!117171 (= c!100141 (and ((_ is Cons!20905) (toList!6849 lt!438020)) (bvslt (_1!7488 (h!22067 (toList!6849 lt!438020))) (_1!7488 lt!438013))))))

(assert (=> d!117171 (isStrictlySorted!511 (toList!6849 lt!438020))))

(assert (=> d!117171 (= (insertStrictlySorted!328 (toList!6849 lt!438020) (_1!7488 lt!438013) (_2!7488 lt!438013)) lt!438465)))

(assert (= (and d!117171 c!100141) b!988313))

(assert (= (and d!117171 (not c!100141)) b!988310))

(assert (= (and b!988310 c!100142) b!988316))

(assert (= (and b!988310 (not c!100142)) b!988311))

(assert (= (and b!988311 c!100140) b!988319))

(assert (= (and b!988311 (not c!100140)) b!988314))

(assert (= (or b!988319 b!988314) bm!41878))

(assert (= (or b!988316 bm!41878) bm!41879))

(assert (= (or b!988313 bm!41879) bm!41877))

(assert (= (and bm!41877 c!100139) b!988317))

(assert (= (and bm!41877 (not c!100139)) b!988318))

(assert (= (and d!117171 res!661131) b!988312))

(assert (= (and b!988312 res!661132) b!988315))

(declare-fun m!915677 () Bool)

(assert (=> bm!41877 m!915677))

(declare-fun m!915679 () Bool)

(assert (=> b!988312 m!915679))

(declare-fun m!915681 () Bool)

(assert (=> d!117171 m!915681))

(assert (=> d!117171 m!915341))

(declare-fun m!915683 () Bool)

(assert (=> b!988317 m!915683))

(declare-fun m!915685 () Bool)

(assert (=> b!988315 m!915685))

(assert (=> d!116895 d!117171))

(declare-fun b!988320 () Bool)

(declare-fun e!557336 () Bool)

(assert (=> b!988320 (= e!557336 tp_is_empty!23223)))

(declare-fun b!988321 () Bool)

(declare-fun e!557337 () Bool)

(assert (=> b!988321 (= e!557337 tp_is_empty!23223)))

(declare-fun mapNonEmpty!36876 () Bool)

(declare-fun mapRes!36876 () Bool)

(declare-fun tp!69813 () Bool)

(assert (=> mapNonEmpty!36876 (= mapRes!36876 (and tp!69813 e!557336))))

(declare-fun mapRest!36876 () (Array (_ BitVec 32) ValueCell!11130))

(declare-fun mapValue!36876 () ValueCell!11130)

(declare-fun mapKey!36876 () (_ BitVec 32))

(assert (=> mapNonEmpty!36876 (= mapRest!36875 (store mapRest!36876 mapKey!36876 mapValue!36876))))

(declare-fun condMapEmpty!36876 () Bool)

(declare-fun mapDefault!36876 () ValueCell!11130)

(assert (=> mapNonEmpty!36875 (= condMapEmpty!36876 (= mapRest!36875 ((as const (Array (_ BitVec 32) ValueCell!11130)) mapDefault!36876)))))

(assert (=> mapNonEmpty!36875 (= tp!69812 (and e!557337 mapRes!36876))))

(declare-fun mapIsEmpty!36876 () Bool)

(assert (=> mapIsEmpty!36876 mapRes!36876))

(assert (= (and mapNonEmpty!36875 condMapEmpty!36876) mapIsEmpty!36876))

(assert (= (and mapNonEmpty!36875 (not condMapEmpty!36876)) mapNonEmpty!36876))

(assert (= (and mapNonEmpty!36876 ((_ is ValueCellFull!11130) mapValue!36876)) b!988320))

(assert (= (and mapNonEmpty!36875 ((_ is ValueCellFull!11130) mapDefault!36876)) b!988321))

(declare-fun m!915687 () Bool)

(assert (=> mapNonEmpty!36876 m!915687))

(declare-fun b_lambda!15099 () Bool)

(assert (= b_lambda!15097 (or (and start!84484 b_free!20007) b_lambda!15099)))

(declare-fun b_lambda!15101 () Bool)

(assert (= b_lambda!15095 (or (and start!84484 b_free!20007) b_lambda!15101)))

(declare-fun b_lambda!15103 () Bool)

(assert (= b_lambda!15093 (or (and start!84484 b_free!20007) b_lambda!15103)))

(declare-fun b_lambda!15105 () Bool)

(assert (= b_lambda!15091 (or (and start!84484 b_free!20007) b_lambda!15105)))

(check-sat (not d!116979) (not d!116949) (not b_next!20007) (not b!988191) (not d!117153) (not bm!41852) (not d!117053) (not d!116981) (not d!117147) (not b!988085) (not d!116935) (not b!988165) (not d!117143) (not d!117133) (not d!116963) (not d!117055) (not b!988219) (not b!988076) (not b!988020) (not d!117001) (not b!988000) (not b!988250) (not b!988196) (not b!988199) (not bm!41874) (not b!988100) (not b!988220) (not b!988238) (not b!988177) (not d!117121) (not b!988182) (not b!988069) (not d!117093) (not b!988317) (not b!988091) (not b!988161) (not b!988233) (not d!116957) (not d!116991) (not d!116975) (not d!117123) (not b!987997) (not b!988083) (not b!988215) (not d!116961) (not b!988213) (not b!987994) (not d!117099) (not bm!41859) (not bm!41871) (not bm!41867) (not b!988315) (not d!117091) (not d!117161) (not b!988014) (not d!117009) (not d!116937) (not b!988173) (not b!988078) (not b!988291) (not d!117029) (not b!988119) (not d!117063) (not b!988152) (not d!117079) (not b!988031) (not d!117043) (not d!117131) (not b!988038) (not d!117145) (not b!987984) (not d!116973) (not b_lambda!15103) (not b!988287) (not d!116945) (not b!988211) (not d!117089) (not b!988179) (not b!987987) (not d!117101) (not b!988262) (not d!117107) (not b!987975) (not b!987998) (not b!988188) (not b!988254) (not d!116941) (not b!988023) (not bm!41855) (not b!988301) (not b!987937) (not d!116999) (not b!988066) (not d!117103) (not b!987989) (not b!988278) (not d!117097) (not b!988172) (not d!116985) (not b!988253) (not b!988221) (not b!988041) (not b!988120) (not d!116927) (not b!988303) (not d!117013) (not b!988205) (not b!988279) (not d!116995) (not b!988005) (not b!988312) (not d!117035) (not b!988113) (not b!988298) (not d!116933) (not d!117155) (not b!988274) (not d!117039) (not d!117015) (not b!988236) (not b!988176) (not b!988024) (not bm!41858) (not b!988227) (not b!988218) (not b!987929) (not b!988047) (not b!987948) (not d!117163) (not d!117129) (not b!988257) (not b_lambda!15073) (not b!988282) (not b!987982) (not b!988281) (not b!988086) (not d!117047) (not d!117011) (not b!988107) (not d!117111) (not d!116939) (not d!117115) (not b!988276) (not b!988050) (not b!987985) (not b!988146) (not b!988308) (not d!117003) (not d!117057) (not d!117137) (not b!988194) (not b!988025) (not d!116993) (not b!988018) (not b_lambda!15083) (not d!117017) (not b!987988) (not d!117051) (not b!988169) (not b!988216) (not b!988309) (not d!117125) (not b!988123) (not bm!41870) (not b!988242) (not d!117033) (not b!988296) (not b!988060) (not b_lambda!15089) (not d!117159) (not b_lambda!15101) (not d!117067) (not b!988210) (not b!988294) (not b!988180) (not b!988269) (not d!117083) (not b!987949) (not b!988202) (not b!988167) (not d!117071) (not b!988103) (not bm!41866) (not b!987972) (not b!988126) (not b!988057) (not b!988160) (not b!988063) (not b!988284) (not b!988163) (not b!988292) (not b!988043) (not d!117007) (not d!117081) (not d!117085) (not d!117127) (not b!988017) (not b!988185) (not d!117073) (not b!988170) (not d!117027) (not b!988022) (not b!988247) (not bm!41877) (not b!988255) (not b!987942) (not b!988074) (not d!116967) (not b!987996) (not b!988044) (not b!988187) (not b!988087) (not b!988006) (not b_lambda!15085) (not d!117171) (not d!117135) (not b!988266) (not b_lambda!15105) (not b!988260) (not b!988099) (not b!988286) (not d!117049) (not d!117169) (not b!988228) (not b!987977) (not b!988300) (not d!117095) (not b!988121) (not d!117031) (not b!988245) (not d!117005) (not b!988174) (not b!988062) (not d!117087) (not b!988263) (not b!988217) (not b!988028) (not b!988003) (not b!988029) (not mapNonEmpty!36876) (not b!988204) (not b!988239) (not d!116989) (not b!988207) (not b!988306) (not b!988295) (not d!116959) (not b!988089) (not b!988034) (not b!988252) (not b!988133) tp_is_empty!23223 (not d!116997) (not b!988071) (not b!988111) (not d!117139) (not b!988036) (not b!988009) (not b!988081) (not d!117149) (not b!988055) (not d!117059) (not b!988214) b_and!32121 (not d!116971) (not d!116953) (not b!988230) (not b!988052) (not b!988206) (not b!988090) (not d!117113) (not b_lambda!15099) (not b!988164) (not b!987991) (not d!117141) (not b!988012) (not b!988114) (not d!117109) (not bm!41865) (not b!988271) (not d!117069) (not d!117157) (not b_lambda!15087) (not d!117151) (not b!987990) (not b!988154) (not bm!41862) (not d!117077) (not d!117165) (not b!987939) (not b!987986) (not d!116923) (not b!988283) (not d!116929) (not b!988289) (not b!988088) (not d!117119) (not b!988231) (not d!117061) (not b!988200) (not b!988079))
(check-sat b_and!32121 (not b_next!20007))
