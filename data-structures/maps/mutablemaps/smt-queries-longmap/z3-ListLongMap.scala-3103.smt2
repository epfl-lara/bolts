; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43590 () Bool)

(assert start!43590)

(declare-fun b_free!12339 () Bool)

(declare-fun b_next!12339 () Bool)

(assert (=> start!43590 (= b_free!12339 (not b_next!12339))))

(declare-fun tp!43302 () Bool)

(declare-fun b_and!21119 () Bool)

(assert (=> start!43590 (= tp!43302 b_and!21119)))

(declare-fun b!482675 () Bool)

(declare-fun res!287757 () Bool)

(declare-fun e!284055 () Bool)

(assert (=> b!482675 (=> (not res!287757) (not e!284055))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19539 0))(
  ( (V!19540 (val!6973 Int)) )
))
(declare-fun minValue!1458 () V!19539)

(declare-fun zeroValue!1458 () V!19539)

(declare-datatypes ((ValueCell!6564 0))(
  ( (ValueCellFull!6564 (v!9263 V!19539)) (EmptyCell!6564) )
))
(declare-datatypes ((array!31327 0))(
  ( (array!31328 (arr!15062 (Array (_ BitVec 32) ValueCell!6564)) (size!15420 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31327)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31329 0))(
  ( (array!31330 (arr!15063 (Array (_ BitVec 32) (_ BitVec 64))) (size!15421 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31329)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((tuple2!9154 0))(
  ( (tuple2!9155 (_1!4587 (_ BitVec 64)) (_2!4587 V!19539)) )
))
(declare-datatypes ((List!9270 0))(
  ( (Nil!9267) (Cons!9266 (h!10122 tuple2!9154) (t!15494 List!9270)) )
))
(declare-datatypes ((ListLongMap!8081 0))(
  ( (ListLongMap!8082 (toList!4056 List!9270)) )
))
(declare-fun contains!2668 (ListLongMap!8081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2348 (array!31329 array!31327 (_ BitVec 32) (_ BitVec 32) V!19539 V!19539 (_ BitVec 32) Int) ListLongMap!8081)

(assert (=> b!482675 (= res!287757 (contains!2668 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!482676 () Bool)

(declare-fun e!284057 () Bool)

(declare-fun tp_is_empty!13851 () Bool)

(assert (=> b!482676 (= e!284057 tp_is_empty!13851)))

(declare-fun b!482677 () Bool)

(declare-fun e!284054 () Bool)

(declare-fun e!284056 () Bool)

(declare-fun mapRes!22489 () Bool)

(assert (=> b!482677 (= e!284054 (and e!284056 mapRes!22489))))

(declare-fun condMapEmpty!22489 () Bool)

(declare-fun mapDefault!22489 () ValueCell!6564)

(assert (=> b!482677 (= condMapEmpty!22489 (= (arr!15062 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6564)) mapDefault!22489)))))

(declare-fun mapIsEmpty!22489 () Bool)

(assert (=> mapIsEmpty!22489 mapRes!22489))

(declare-fun b!482678 () Bool)

(declare-fun res!287758 () Bool)

(assert (=> b!482678 (=> (not res!287758) (not e!284055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482678 (= res!287758 (validKeyInArray!0 k0!1332))))

(declare-fun b!482679 () Bool)

(declare-fun res!287760 () Bool)

(assert (=> b!482679 (=> (not res!287760) (not e!284055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31329 (_ BitVec 32)) Bool)

(assert (=> b!482679 (= res!287760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482680 () Bool)

(declare-fun res!287761 () Bool)

(assert (=> b!482680 (=> (not res!287761) (not e!284055))))

(declare-datatypes ((List!9271 0))(
  ( (Nil!9268) (Cons!9267 (h!10123 (_ BitVec 64)) (t!15495 List!9271)) )
))
(declare-fun arrayNoDuplicates!0 (array!31329 (_ BitVec 32) List!9271) Bool)

(assert (=> b!482680 (= res!287761 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9268))))

(declare-fun b!482681 () Bool)

(declare-fun e!284059 () Bool)

(declare-fun arrayContainsKey!0 (array!31329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482681 (= e!284059 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun res!287756 () Bool)

(assert (=> start!43590 (=> (not res!287756) (not e!284055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43590 (= res!287756 (validMask!0 mask!2352))))

(assert (=> start!43590 e!284055))

(assert (=> start!43590 true))

(assert (=> start!43590 tp_is_empty!13851))

(declare-fun array_inv!10844 (array!31327) Bool)

(assert (=> start!43590 (and (array_inv!10844 _values!1516) e!284054)))

(assert (=> start!43590 tp!43302))

(declare-fun array_inv!10845 (array!31329) Bool)

(assert (=> start!43590 (array_inv!10845 _keys!1874)))

(declare-fun mapNonEmpty!22489 () Bool)

(declare-fun tp!43303 () Bool)

(assert (=> mapNonEmpty!22489 (= mapRes!22489 (and tp!43303 e!284057))))

(declare-fun mapRest!22489 () (Array (_ BitVec 32) ValueCell!6564))

(declare-fun mapKey!22489 () (_ BitVec 32))

(declare-fun mapValue!22489 () ValueCell!6564)

(assert (=> mapNonEmpty!22489 (= (arr!15062 _values!1516) (store mapRest!22489 mapKey!22489 mapValue!22489))))

(declare-fun lt!218833 () (_ BitVec 32))

(declare-fun b!482682 () Bool)

(assert (=> b!482682 (= e!284055 (not (or (not (= (size!15421 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvsgt #b00000000000000000000000000000000 (size!15421 _keys!1874)) (and (bvsge lt!218833 #b00000000000000000000000000000000) (bvsle lt!218833 (size!15421 _keys!1874))))))))

(declare-fun arrayScanForKey!0 (array!31329 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482682 (= lt!218833 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!482682 e!284059))

(declare-fun c!57939 () Bool)

(assert (=> b!482682 (= c!57939 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14124 0))(
  ( (Unit!14125) )
))
(declare-fun lt!218834 () Unit!14124)

(declare-fun lemmaKeyInListMapIsInArray!150 (array!31329 array!31327 (_ BitVec 32) (_ BitVec 32) V!19539 V!19539 (_ BitVec 64) Int) Unit!14124)

(assert (=> b!482682 (= lt!218834 (lemmaKeyInListMapIsInArray!150 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!482683 () Bool)

(assert (=> b!482683 (= e!284056 tp_is_empty!13851)))

(declare-fun b!482684 () Bool)

(assert (=> b!482684 (= e!284059 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482685 () Bool)

(declare-fun res!287759 () Bool)

(assert (=> b!482685 (=> (not res!287759) (not e!284055))))

(assert (=> b!482685 (= res!287759 (and (= (size!15420 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15421 _keys!1874) (size!15420 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43590 res!287756) b!482685))

(assert (= (and b!482685 res!287759) b!482679))

(assert (= (and b!482679 res!287760) b!482680))

(assert (= (and b!482680 res!287761) b!482675))

(assert (= (and b!482675 res!287757) b!482678))

(assert (= (and b!482678 res!287758) b!482682))

(assert (= (and b!482682 c!57939) b!482681))

(assert (= (and b!482682 (not c!57939)) b!482684))

(assert (= (and b!482677 condMapEmpty!22489) mapIsEmpty!22489))

(assert (= (and b!482677 (not condMapEmpty!22489)) mapNonEmpty!22489))

(get-info :version)

(assert (= (and mapNonEmpty!22489 ((_ is ValueCellFull!6564) mapValue!22489)) b!482676))

(assert (= (and b!482677 ((_ is ValueCellFull!6564) mapDefault!22489)) b!482683))

(assert (= start!43590 b!482677))

(declare-fun m!463835 () Bool)

(assert (=> b!482680 m!463835))

(declare-fun m!463837 () Bool)

(assert (=> b!482678 m!463837))

(declare-fun m!463839 () Bool)

(assert (=> b!482679 m!463839))

(declare-fun m!463841 () Bool)

(assert (=> b!482681 m!463841))

(declare-fun m!463843 () Bool)

(assert (=> b!482675 m!463843))

(assert (=> b!482675 m!463843))

(declare-fun m!463845 () Bool)

(assert (=> b!482675 m!463845))

(declare-fun m!463847 () Bool)

(assert (=> start!43590 m!463847))

(declare-fun m!463849 () Bool)

(assert (=> start!43590 m!463849))

(declare-fun m!463851 () Bool)

(assert (=> start!43590 m!463851))

(declare-fun m!463853 () Bool)

(assert (=> b!482682 m!463853))

(declare-fun m!463855 () Bool)

(assert (=> b!482682 m!463855))

(declare-fun m!463857 () Bool)

(assert (=> mapNonEmpty!22489 m!463857))

(check-sat b_and!21119 (not b_next!12339) (not b!482681) (not b!482678) (not start!43590) (not mapNonEmpty!22489) tp_is_empty!13851 (not b!482680) (not b!482679) (not b!482682) (not b!482675))
(check-sat b_and!21119 (not b_next!12339))
(get-model)

(declare-fun d!76725 () Bool)

(declare-fun e!284082 () Bool)

(assert (=> d!76725 e!284082))

(declare-fun res!287782 () Bool)

(assert (=> d!76725 (=> res!287782 e!284082)))

(declare-fun lt!218849 () Bool)

(assert (=> d!76725 (= res!287782 (not lt!218849))))

(declare-fun lt!218852 () Bool)

(assert (=> d!76725 (= lt!218849 lt!218852)))

(declare-fun lt!218851 () Unit!14124)

(declare-fun e!284083 () Unit!14124)

(assert (=> d!76725 (= lt!218851 e!284083)))

(declare-fun c!57945 () Bool)

(assert (=> d!76725 (= c!57945 lt!218852)))

(declare-fun containsKey!358 (List!9270 (_ BitVec 64)) Bool)

(assert (=> d!76725 (= lt!218852 (containsKey!358 (toList!4056 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76725 (= (contains!2668 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!218849)))

(declare-fun b!482725 () Bool)

(declare-fun lt!218850 () Unit!14124)

(assert (=> b!482725 (= e!284083 lt!218850)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!307 (List!9270 (_ BitVec 64)) Unit!14124)

(assert (=> b!482725 (= lt!218850 (lemmaContainsKeyImpliesGetValueByKeyDefined!307 (toList!4056 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!402 0))(
  ( (Some!401 (v!9265 V!19539)) (None!400) )
))
(declare-fun isDefined!308 (Option!402) Bool)

(declare-fun getValueByKey!396 (List!9270 (_ BitVec 64)) Option!402)

(assert (=> b!482725 (isDefined!308 (getValueByKey!396 (toList!4056 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!482726 () Bool)

(declare-fun Unit!14128 () Unit!14124)

(assert (=> b!482726 (= e!284083 Unit!14128)))

(declare-fun b!482727 () Bool)

(assert (=> b!482727 (= e!284082 (isDefined!308 (getValueByKey!396 (toList!4056 (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76725 c!57945) b!482725))

(assert (= (and d!76725 (not c!57945)) b!482726))

(assert (= (and d!76725 (not res!287782)) b!482727))

(declare-fun m!463883 () Bool)

(assert (=> d!76725 m!463883))

(declare-fun m!463885 () Bool)

(assert (=> b!482725 m!463885))

(declare-fun m!463887 () Bool)

(assert (=> b!482725 m!463887))

(assert (=> b!482725 m!463887))

(declare-fun m!463889 () Bool)

(assert (=> b!482725 m!463889))

(assert (=> b!482727 m!463887))

(assert (=> b!482727 m!463887))

(assert (=> b!482727 m!463889))

(assert (=> b!482675 d!76725))

(declare-fun b!482770 () Bool)

(declare-fun res!287801 () Bool)

(declare-fun e!284121 () Bool)

(assert (=> b!482770 (=> (not res!287801) (not e!284121))))

(declare-fun e!284113 () Bool)

(assert (=> b!482770 (= res!287801 e!284113)))

(declare-fun res!287803 () Bool)

(assert (=> b!482770 (=> res!287803 e!284113)))

(declare-fun e!284110 () Bool)

(assert (=> b!482770 (= res!287803 (not e!284110))))

(declare-fun res!287805 () Bool)

(assert (=> b!482770 (=> (not res!287805) (not e!284110))))

(assert (=> b!482770 (= res!287805 (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(declare-fun b!482771 () Bool)

(declare-fun e!284119 () ListLongMap!8081)

(declare-fun call!30997 () ListLongMap!8081)

(declare-fun +!1747 (ListLongMap!8081 tuple2!9154) ListLongMap!8081)

(assert (=> b!482771 (= e!284119 (+!1747 call!30997 (tuple2!9155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun b!482772 () Bool)

(declare-fun e!284114 () Unit!14124)

(declare-fun lt!218900 () Unit!14124)

(assert (=> b!482772 (= e!284114 lt!218900)))

(declare-fun lt!218899 () ListLongMap!8081)

(declare-fun getCurrentListMapNoExtraKeys!2117 (array!31329 array!31327 (_ BitVec 32) (_ BitVec 32) V!19539 V!19539 (_ BitVec 32) Int) ListLongMap!8081)

(assert (=> b!482772 (= lt!218899 (getCurrentListMapNoExtraKeys!2117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218910 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218910 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218897 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218897 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218907 () Unit!14124)

(declare-fun addStillContains!302 (ListLongMap!8081 (_ BitVec 64) V!19539 (_ BitVec 64)) Unit!14124)

(assert (=> b!482772 (= lt!218907 (addStillContains!302 lt!218899 lt!218910 zeroValue!1458 lt!218897))))

(assert (=> b!482772 (contains!2668 (+!1747 lt!218899 (tuple2!9155 lt!218910 zeroValue!1458)) lt!218897)))

(declare-fun lt!218904 () Unit!14124)

(assert (=> b!482772 (= lt!218904 lt!218907)))

(declare-fun lt!218916 () ListLongMap!8081)

(assert (=> b!482772 (= lt!218916 (getCurrentListMapNoExtraKeys!2117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218905 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218905 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218901 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218901 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218917 () Unit!14124)

(declare-fun addApplyDifferent!302 (ListLongMap!8081 (_ BitVec 64) V!19539 (_ BitVec 64)) Unit!14124)

(assert (=> b!482772 (= lt!218917 (addApplyDifferent!302 lt!218916 lt!218905 minValue!1458 lt!218901))))

(declare-fun apply!344 (ListLongMap!8081 (_ BitVec 64)) V!19539)

(assert (=> b!482772 (= (apply!344 (+!1747 lt!218916 (tuple2!9155 lt!218905 minValue!1458)) lt!218901) (apply!344 lt!218916 lt!218901))))

(declare-fun lt!218913 () Unit!14124)

(assert (=> b!482772 (= lt!218913 lt!218917)))

(declare-fun lt!218914 () ListLongMap!8081)

(assert (=> b!482772 (= lt!218914 (getCurrentListMapNoExtraKeys!2117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218912 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218908 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218908 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218909 () Unit!14124)

(assert (=> b!482772 (= lt!218909 (addApplyDifferent!302 lt!218914 lt!218912 zeroValue!1458 lt!218908))))

(assert (=> b!482772 (= (apply!344 (+!1747 lt!218914 (tuple2!9155 lt!218912 zeroValue!1458)) lt!218908) (apply!344 lt!218914 lt!218908))))

(declare-fun lt!218902 () Unit!14124)

(assert (=> b!482772 (= lt!218902 lt!218909)))

(declare-fun lt!218906 () ListLongMap!8081)

(assert (=> b!482772 (= lt!218906 (getCurrentListMapNoExtraKeys!2117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218903 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218903 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218918 () (_ BitVec 64))

(assert (=> b!482772 (= lt!218918 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!482772 (= lt!218900 (addApplyDifferent!302 lt!218906 lt!218903 minValue!1458 lt!218918))))

(assert (=> b!482772 (= (apply!344 (+!1747 lt!218906 (tuple2!9155 lt!218903 minValue!1458)) lt!218918) (apply!344 lt!218906 lt!218918))))

(declare-fun b!482773 () Bool)

(declare-fun e!284111 () Bool)

(declare-fun e!284115 () Bool)

(assert (=> b!482773 (= e!284111 e!284115)))

(declare-fun res!287806 () Bool)

(declare-fun call!31002 () Bool)

(assert (=> b!482773 (= res!287806 call!31002)))

(assert (=> b!482773 (=> (not res!287806) (not e!284115))))

(declare-fun b!482774 () Bool)

(declare-fun e!284116 () ListLongMap!8081)

(declare-fun call!30998 () ListLongMap!8081)

(assert (=> b!482774 (= e!284116 call!30998)))

(declare-fun b!482775 () Bool)

(assert (=> b!482775 (= e!284119 e!284116)))

(declare-fun c!57959 () Bool)

(assert (=> b!482775 (= c!57959 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!218911 () ListLongMap!8081)

(declare-fun b!482776 () Bool)

(declare-fun e!284118 () Bool)

(declare-fun get!7304 (ValueCell!6564 V!19539) V!19539)

(declare-fun dynLambda!954 (Int (_ BitVec 64)) V!19539)

(assert (=> b!482776 (= e!284118 (= (apply!344 lt!218911 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)) (get!7304 (select (arr!15062 _values!1516) #b00000000000000000000000000000000) (dynLambda!954 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!482776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15420 _values!1516)))))

(assert (=> b!482776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(declare-fun bm!30993 () Bool)

(assert (=> bm!30993 (= call!30998 call!30997)))

(declare-fun b!482777 () Bool)

(declare-fun e!284122 () Bool)

(declare-fun call!30996 () Bool)

(assert (=> b!482777 (= e!284122 (not call!30996))))

(declare-fun b!482778 () Bool)

(declare-fun e!284112 () Bool)

(assert (=> b!482778 (= e!284122 e!284112)))

(declare-fun res!287804 () Bool)

(assert (=> b!482778 (= res!287804 call!30996)))

(assert (=> b!482778 (=> (not res!287804) (not e!284112))))

(declare-fun b!482779 () Bool)

(declare-fun e!284120 () Bool)

(assert (=> b!482779 (= e!284120 (validKeyInArray!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30994 () Bool)

(assert (=> bm!30994 (= call!30996 (contains!2668 lt!218911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30995 () Bool)

(declare-fun call!31000 () ListLongMap!8081)

(assert (=> bm!30995 (= call!31000 (getCurrentListMapNoExtraKeys!2117 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!482780 () Bool)

(declare-fun c!57961 () Bool)

(assert (=> b!482780 (= c!57961 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!284117 () ListLongMap!8081)

(assert (=> b!482780 (= e!284116 e!284117)))

(declare-fun bm!30996 () Bool)

(declare-fun call!31001 () ListLongMap!8081)

(assert (=> bm!30996 (= call!31001 call!31000)))

(declare-fun b!482781 () Bool)

(assert (=> b!482781 (= e!284110 (validKeyInArray!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30997 () Bool)

(assert (=> bm!30997 (= call!31002 (contains!2668 lt!218911 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!482782 () Bool)

(assert (=> b!482782 (= e!284115 (= (apply!344 lt!218911 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!482783 () Bool)

(assert (=> b!482783 (= e!284121 e!284111)))

(declare-fun c!57962 () Bool)

(assert (=> b!482783 (= c!57962 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!482784 () Bool)

(declare-fun res!287802 () Bool)

(assert (=> b!482784 (=> (not res!287802) (not e!284121))))

(assert (=> b!482784 (= res!287802 e!284122)))

(declare-fun c!57960 () Bool)

(assert (=> b!482784 (= c!57960 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30998 () Bool)

(declare-fun call!30999 () ListLongMap!8081)

(assert (=> bm!30998 (= call!30999 call!31001)))

(declare-fun b!482785 () Bool)

(assert (=> b!482785 (= e!284113 e!284118)))

(declare-fun res!287807 () Bool)

(assert (=> b!482785 (=> (not res!287807) (not e!284118))))

(assert (=> b!482785 (= res!287807 (contains!2668 lt!218911 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!482785 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(declare-fun b!482786 () Bool)

(assert (=> b!482786 (= e!284112 (= (apply!344 lt!218911 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun b!482787 () Bool)

(assert (=> b!482787 (= e!284111 (not call!31002))))

(declare-fun b!482788 () Bool)

(declare-fun Unit!14129 () Unit!14124)

(assert (=> b!482788 (= e!284114 Unit!14129)))

(declare-fun b!482789 () Bool)

(assert (=> b!482789 (= e!284117 call!30999)))

(declare-fun d!76727 () Bool)

(assert (=> d!76727 e!284121))

(declare-fun res!287809 () Bool)

(assert (=> d!76727 (=> (not res!287809) (not e!284121))))

(assert (=> d!76727 (= res!287809 (or (bvsge #b00000000000000000000000000000000 (size!15421 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)))))))

(declare-fun lt!218898 () ListLongMap!8081)

(assert (=> d!76727 (= lt!218911 lt!218898)))

(declare-fun lt!218915 () Unit!14124)

(assert (=> d!76727 (= lt!218915 e!284114)))

(declare-fun c!57963 () Bool)

(assert (=> d!76727 (= c!57963 e!284120)))

(declare-fun res!287808 () Bool)

(assert (=> d!76727 (=> (not res!287808) (not e!284120))))

(assert (=> d!76727 (= res!287808 (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(assert (=> d!76727 (= lt!218898 e!284119)))

(declare-fun c!57958 () Bool)

(assert (=> d!76727 (= c!57958 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76727 (validMask!0 mask!2352)))

(assert (=> d!76727 (= (getCurrentListMap!2348 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!218911)))

(declare-fun bm!30999 () Bool)

(assert (=> bm!30999 (= call!30997 (+!1747 (ite c!57958 call!31000 (ite c!57959 call!31001 call!30999)) (ite (or c!57958 c!57959) (tuple2!9155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun b!482790 () Bool)

(assert (=> b!482790 (= e!284117 call!30998)))

(assert (= (and d!76727 c!57958) b!482771))

(assert (= (and d!76727 (not c!57958)) b!482775))

(assert (= (and b!482775 c!57959) b!482774))

(assert (= (and b!482775 (not c!57959)) b!482780))

(assert (= (and b!482780 c!57961) b!482790))

(assert (= (and b!482780 (not c!57961)) b!482789))

(assert (= (or b!482790 b!482789) bm!30998))

(assert (= (or b!482774 bm!30998) bm!30996))

(assert (= (or b!482774 b!482790) bm!30993))

(assert (= (or b!482771 bm!30996) bm!30995))

(assert (= (or b!482771 bm!30993) bm!30999))

(assert (= (and d!76727 res!287808) b!482779))

(assert (= (and d!76727 c!57963) b!482772))

(assert (= (and d!76727 (not c!57963)) b!482788))

(assert (= (and d!76727 res!287809) b!482770))

(assert (= (and b!482770 res!287805) b!482781))

(assert (= (and b!482770 (not res!287803)) b!482785))

(assert (= (and b!482785 res!287807) b!482776))

(assert (= (and b!482770 res!287801) b!482784))

(assert (= (and b!482784 c!57960) b!482778))

(assert (= (and b!482784 (not c!57960)) b!482777))

(assert (= (and b!482778 res!287804) b!482786))

(assert (= (or b!482778 b!482777) bm!30994))

(assert (= (and b!482784 res!287802) b!482783))

(assert (= (and b!482783 c!57962) b!482773))

(assert (= (and b!482783 (not c!57962)) b!482787))

(assert (= (and b!482773 res!287806) b!482782))

(assert (= (or b!482773 b!482787) bm!30997))

(declare-fun b_lambda!10841 () Bool)

(assert (=> (not b_lambda!10841) (not b!482776)))

(declare-fun t!15497 () Bool)

(declare-fun tb!4177 () Bool)

(assert (=> (and start!43590 (= defaultEntry!1519 defaultEntry!1519) t!15497) tb!4177))

(declare-fun result!7783 () Bool)

(assert (=> tb!4177 (= result!7783 tp_is_empty!13851)))

(assert (=> b!482776 t!15497))

(declare-fun b_and!21123 () Bool)

(assert (= b_and!21119 (and (=> t!15497 result!7783) b_and!21123)))

(declare-fun m!463891 () Bool)

(assert (=> b!482772 m!463891))

(declare-fun m!463893 () Bool)

(assert (=> b!482772 m!463893))

(declare-fun m!463895 () Bool)

(assert (=> b!482772 m!463895))

(assert (=> b!482772 m!463895))

(declare-fun m!463897 () Bool)

(assert (=> b!482772 m!463897))

(declare-fun m!463899 () Bool)

(assert (=> b!482772 m!463899))

(assert (=> b!482772 m!463893))

(declare-fun m!463901 () Bool)

(assert (=> b!482772 m!463901))

(declare-fun m!463903 () Bool)

(assert (=> b!482772 m!463903))

(declare-fun m!463905 () Bool)

(assert (=> b!482772 m!463905))

(assert (=> b!482772 m!463891))

(declare-fun m!463907 () Bool)

(assert (=> b!482772 m!463907))

(declare-fun m!463909 () Bool)

(assert (=> b!482772 m!463909))

(declare-fun m!463911 () Bool)

(assert (=> b!482772 m!463911))

(declare-fun m!463913 () Bool)

(assert (=> b!482772 m!463913))

(declare-fun m!463915 () Bool)

(assert (=> b!482772 m!463915))

(declare-fun m!463917 () Bool)

(assert (=> b!482772 m!463917))

(declare-fun m!463919 () Bool)

(assert (=> b!482772 m!463919))

(assert (=> b!482772 m!463911))

(declare-fun m!463921 () Bool)

(assert (=> b!482772 m!463921))

(declare-fun m!463923 () Bool)

(assert (=> b!482772 m!463923))

(declare-fun m!463925 () Bool)

(assert (=> bm!30994 m!463925))

(assert (=> b!482781 m!463917))

(assert (=> b!482781 m!463917))

(declare-fun m!463927 () Bool)

(assert (=> b!482781 m!463927))

(declare-fun m!463929 () Bool)

(assert (=> bm!30999 m!463929))

(assert (=> b!482779 m!463917))

(assert (=> b!482779 m!463917))

(assert (=> b!482779 m!463927))

(declare-fun m!463931 () Bool)

(assert (=> b!482771 m!463931))

(assert (=> bm!30995 m!463913))

(declare-fun m!463933 () Bool)

(assert (=> bm!30997 m!463933))

(assert (=> b!482785 m!463917))

(assert (=> b!482785 m!463917))

(declare-fun m!463935 () Bool)

(assert (=> b!482785 m!463935))

(assert (=> d!76727 m!463847))

(declare-fun m!463937 () Bool)

(assert (=> b!482776 m!463937))

(assert (=> b!482776 m!463917))

(declare-fun m!463939 () Bool)

(assert (=> b!482776 m!463939))

(assert (=> b!482776 m!463917))

(declare-fun m!463941 () Bool)

(assert (=> b!482776 m!463941))

(assert (=> b!482776 m!463937))

(assert (=> b!482776 m!463939))

(declare-fun m!463943 () Bool)

(assert (=> b!482776 m!463943))

(declare-fun m!463945 () Bool)

(assert (=> b!482786 m!463945))

(declare-fun m!463947 () Bool)

(assert (=> b!482782 m!463947))

(assert (=> b!482675 d!76727))

(declare-fun d!76729 () Bool)

(declare-fun res!287815 () Bool)

(declare-fun e!284129 () Bool)

(assert (=> d!76729 (=> res!287815 e!284129)))

(assert (=> d!76729 (= res!287815 (bvsge #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(assert (=> d!76729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!284129)))

(declare-fun b!482801 () Bool)

(declare-fun e!284130 () Bool)

(declare-fun call!31005 () Bool)

(assert (=> b!482801 (= e!284130 call!31005)))

(declare-fun b!482802 () Bool)

(declare-fun e!284131 () Bool)

(assert (=> b!482802 (= e!284130 e!284131)))

(declare-fun lt!218925 () (_ BitVec 64))

(assert (=> b!482802 (= lt!218925 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218926 () Unit!14124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31329 (_ BitVec 64) (_ BitVec 32)) Unit!14124)

(assert (=> b!482802 (= lt!218926 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218925 #b00000000000000000000000000000000))))

(assert (=> b!482802 (arrayContainsKey!0 _keys!1874 lt!218925 #b00000000000000000000000000000000)))

(declare-fun lt!218927 () Unit!14124)

(assert (=> b!482802 (= lt!218927 lt!218926)))

(declare-fun res!287814 () Bool)

(declare-datatypes ((SeekEntryResult!3561 0))(
  ( (MissingZero!3561 (index!16423 (_ BitVec 32))) (Found!3561 (index!16424 (_ BitVec 32))) (Intermediate!3561 (undefined!4373 Bool) (index!16425 (_ BitVec 32)) (x!45344 (_ BitVec 32))) (Undefined!3561) (MissingVacant!3561 (index!16426 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31329 (_ BitVec 32)) SeekEntryResult!3561)

(assert (=> b!482802 (= res!287814 (= (seekEntryOrOpen!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3561 #b00000000000000000000000000000000)))))

(assert (=> b!482802 (=> (not res!287814) (not e!284131))))

(declare-fun b!482803 () Bool)

(assert (=> b!482803 (= e!284129 e!284130)))

(declare-fun c!57966 () Bool)

(assert (=> b!482803 (= c!57966 (validKeyInArray!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31002 () Bool)

(assert (=> bm!31002 (= call!31005 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!482804 () Bool)

(assert (=> b!482804 (= e!284131 call!31005)))

(assert (= (and d!76729 (not res!287815)) b!482803))

(assert (= (and b!482803 c!57966) b!482802))

(assert (= (and b!482803 (not c!57966)) b!482801))

(assert (= (and b!482802 res!287814) b!482804))

(assert (= (or b!482804 b!482801) bm!31002))

(assert (=> b!482802 m!463917))

(declare-fun m!463949 () Bool)

(assert (=> b!482802 m!463949))

(declare-fun m!463951 () Bool)

(assert (=> b!482802 m!463951))

(assert (=> b!482802 m!463917))

(declare-fun m!463953 () Bool)

(assert (=> b!482802 m!463953))

(assert (=> b!482803 m!463917))

(assert (=> b!482803 m!463917))

(assert (=> b!482803 m!463927))

(declare-fun m!463955 () Bool)

(assert (=> bm!31002 m!463955))

(assert (=> b!482679 d!76729))

(declare-fun d!76731 () Bool)

(assert (=> d!76731 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!482678 d!76731))

(declare-fun d!76733 () Bool)

(assert (=> d!76733 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43590 d!76733))

(declare-fun d!76735 () Bool)

(assert (=> d!76735 (= (array_inv!10844 _values!1516) (bvsge (size!15420 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43590 d!76735))

(declare-fun d!76737 () Bool)

(assert (=> d!76737 (= (array_inv!10845 _keys!1874) (bvsge (size!15421 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43590 d!76737))

(declare-fun d!76739 () Bool)

(declare-fun lt!218930 () (_ BitVec 32))

(assert (=> d!76739 (and (or (bvslt lt!218930 #b00000000000000000000000000000000) (bvsge lt!218930 (size!15421 _keys!1874)) (and (bvsge lt!218930 #b00000000000000000000000000000000) (bvslt lt!218930 (size!15421 _keys!1874)))) (bvsge lt!218930 #b00000000000000000000000000000000) (bvslt lt!218930 (size!15421 _keys!1874)) (= (select (arr!15063 _keys!1874) lt!218930) k0!1332))))

(declare-fun e!284134 () (_ BitVec 32))

(assert (=> d!76739 (= lt!218930 e!284134)))

(declare-fun c!57969 () Bool)

(assert (=> d!76739 (= c!57969 (= (select (arr!15063 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76739 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15421 _keys!1874)) (bvslt (size!15421 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76739 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!218930)))

(declare-fun b!482809 () Bool)

(assert (=> b!482809 (= e!284134 #b00000000000000000000000000000000)))

(declare-fun b!482810 () Bool)

(assert (=> b!482810 (= e!284134 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76739 c!57969) b!482809))

(assert (= (and d!76739 (not c!57969)) b!482810))

(declare-fun m!463957 () Bool)

(assert (=> d!76739 m!463957))

(assert (=> d!76739 m!463917))

(declare-fun m!463959 () Bool)

(assert (=> b!482810 m!463959))

(assert (=> b!482682 d!76739))

(declare-fun d!76741 () Bool)

(declare-fun e!284137 () Bool)

(assert (=> d!76741 e!284137))

(declare-fun c!57972 () Bool)

(assert (=> d!76741 (= c!57972 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218933 () Unit!14124)

(declare-fun choose!1387 (array!31329 array!31327 (_ BitVec 32) (_ BitVec 32) V!19539 V!19539 (_ BitVec 64) Int) Unit!14124)

(assert (=> d!76741 (= lt!218933 (choose!1387 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76741 (validMask!0 mask!2352)))

(assert (=> d!76741 (= (lemmaKeyInListMapIsInArray!150 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!218933)))

(declare-fun b!482815 () Bool)

(assert (=> b!482815 (= e!284137 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!482816 () Bool)

(assert (=> b!482816 (= e!284137 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76741 c!57972) b!482815))

(assert (= (and d!76741 (not c!57972)) b!482816))

(declare-fun m!463961 () Bool)

(assert (=> d!76741 m!463961))

(assert (=> d!76741 m!463847))

(assert (=> b!482815 m!463841))

(assert (=> b!482682 d!76741))

(declare-fun d!76743 () Bool)

(declare-fun res!287820 () Bool)

(declare-fun e!284142 () Bool)

(assert (=> d!76743 (=> res!287820 e!284142)))

(assert (=> d!76743 (= res!287820 (= (select (arr!15063 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76743 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!284142)))

(declare-fun b!482821 () Bool)

(declare-fun e!284143 () Bool)

(assert (=> b!482821 (= e!284142 e!284143)))

(declare-fun res!287821 () Bool)

(assert (=> b!482821 (=> (not res!287821) (not e!284143))))

(assert (=> b!482821 (= res!287821 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15421 _keys!1874)))))

(declare-fun b!482822 () Bool)

(assert (=> b!482822 (= e!284143 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76743 (not res!287820)) b!482821))

(assert (= (and b!482821 res!287821) b!482822))

(assert (=> d!76743 m!463917))

(declare-fun m!463963 () Bool)

(assert (=> b!482822 m!463963))

(assert (=> b!482681 d!76743))

(declare-fun b!482833 () Bool)

(declare-fun e!284152 () Bool)

(declare-fun call!31008 () Bool)

(assert (=> b!482833 (= e!284152 call!31008)))

(declare-fun b!482834 () Bool)

(declare-fun e!284153 () Bool)

(declare-fun contains!2669 (List!9271 (_ BitVec 64)) Bool)

(assert (=> b!482834 (= e!284153 (contains!2669 Nil!9268 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76745 () Bool)

(declare-fun res!287829 () Bool)

(declare-fun e!284154 () Bool)

(assert (=> d!76745 (=> res!287829 e!284154)))

(assert (=> d!76745 (= res!287829 (bvsge #b00000000000000000000000000000000 (size!15421 _keys!1874)))))

(assert (=> d!76745 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9268) e!284154)))

(declare-fun b!482835 () Bool)

(declare-fun e!284155 () Bool)

(assert (=> b!482835 (= e!284154 e!284155)))

(declare-fun res!287828 () Bool)

(assert (=> b!482835 (=> (not res!287828) (not e!284155))))

(assert (=> b!482835 (= res!287828 (not e!284153))))

(declare-fun res!287830 () Bool)

(assert (=> b!482835 (=> (not res!287830) (not e!284153))))

(assert (=> b!482835 (= res!287830 (validKeyInArray!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31005 () Bool)

(declare-fun c!57975 () Bool)

(assert (=> bm!31005 (= call!31008 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57975 (Cons!9267 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000) Nil!9268) Nil!9268)))))

(declare-fun b!482836 () Bool)

(assert (=> b!482836 (= e!284152 call!31008)))

(declare-fun b!482837 () Bool)

(assert (=> b!482837 (= e!284155 e!284152)))

(assert (=> b!482837 (= c!57975 (validKeyInArray!0 (select (arr!15063 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76745 (not res!287829)) b!482835))

(assert (= (and b!482835 res!287830) b!482834))

(assert (= (and b!482835 res!287828) b!482837))

(assert (= (and b!482837 c!57975) b!482833))

(assert (= (and b!482837 (not c!57975)) b!482836))

(assert (= (or b!482833 b!482836) bm!31005))

(assert (=> b!482834 m!463917))

(assert (=> b!482834 m!463917))

(declare-fun m!463965 () Bool)

(assert (=> b!482834 m!463965))

(assert (=> b!482835 m!463917))

(assert (=> b!482835 m!463917))

(assert (=> b!482835 m!463927))

(assert (=> bm!31005 m!463917))

(declare-fun m!463967 () Bool)

(assert (=> bm!31005 m!463967))

(assert (=> b!482837 m!463917))

(assert (=> b!482837 m!463917))

(assert (=> b!482837 m!463927))

(assert (=> b!482680 d!76745))

(declare-fun b!482844 () Bool)

(declare-fun e!284161 () Bool)

(assert (=> b!482844 (= e!284161 tp_is_empty!13851)))

(declare-fun condMapEmpty!22495 () Bool)

(declare-fun mapDefault!22495 () ValueCell!6564)

(assert (=> mapNonEmpty!22489 (= condMapEmpty!22495 (= mapRest!22489 ((as const (Array (_ BitVec 32) ValueCell!6564)) mapDefault!22495)))))

(declare-fun e!284160 () Bool)

(declare-fun mapRes!22495 () Bool)

(assert (=> mapNonEmpty!22489 (= tp!43303 (and e!284160 mapRes!22495))))

(declare-fun b!482845 () Bool)

(assert (=> b!482845 (= e!284160 tp_is_empty!13851)))

(declare-fun mapNonEmpty!22495 () Bool)

(declare-fun tp!43312 () Bool)

(assert (=> mapNonEmpty!22495 (= mapRes!22495 (and tp!43312 e!284161))))

(declare-fun mapKey!22495 () (_ BitVec 32))

(declare-fun mapRest!22495 () (Array (_ BitVec 32) ValueCell!6564))

(declare-fun mapValue!22495 () ValueCell!6564)

(assert (=> mapNonEmpty!22495 (= mapRest!22489 (store mapRest!22495 mapKey!22495 mapValue!22495))))

(declare-fun mapIsEmpty!22495 () Bool)

(assert (=> mapIsEmpty!22495 mapRes!22495))

(assert (= (and mapNonEmpty!22489 condMapEmpty!22495) mapIsEmpty!22495))

(assert (= (and mapNonEmpty!22489 (not condMapEmpty!22495)) mapNonEmpty!22495))

(assert (= (and mapNonEmpty!22495 ((_ is ValueCellFull!6564) mapValue!22495)) b!482844))

(assert (= (and mapNonEmpty!22489 ((_ is ValueCellFull!6564) mapDefault!22495)) b!482845))

(declare-fun m!463969 () Bool)

(assert (=> mapNonEmpty!22495 m!463969))

(declare-fun b_lambda!10843 () Bool)

(assert (= b_lambda!10841 (or (and start!43590 b_free!12339) b_lambda!10843)))

(check-sat (not b!482776) (not b!482803) (not b!482782) (not b!482822) b_and!21123 (not b!482802) (not b!482772) (not b!482771) (not b!482835) (not b!482785) (not b_next!12339) (not d!76727) (not b!482781) (not b!482786) (not b!482727) (not b!482725) (not bm!30994) (not bm!30995) (not mapNonEmpty!22495) (not b!482834) (not d!76725) (not b_lambda!10843) (not bm!31002) (not b!482779) tp_is_empty!13851 (not d!76741) (not bm!31005) (not bm!30997) (not b!482837) (not b!482810) (not bm!30999) (not b!482815))
(check-sat b_and!21123 (not b_next!12339))
