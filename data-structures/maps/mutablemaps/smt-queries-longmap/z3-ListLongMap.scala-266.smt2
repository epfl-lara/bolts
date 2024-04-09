; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4368 () Bool)

(assert start!4368)

(declare-fun b_free!1185 () Bool)

(declare-fun b_next!1185 () Bool)

(assert (=> start!4368 (= b_free!1185 (not b_next!1185))))

(declare-fun tp!4987 () Bool)

(declare-fun b_and!2005 () Bool)

(assert (=> start!4368 (= tp!4987 b_and!2005)))

(declare-fun b!33726 () Bool)

(declare-fun res!20464 () Bool)

(declare-fun e!21417 () Bool)

(assert (=> b!33726 (=> (not res!20464) (not e!21417))))

(declare-datatypes ((array!2285 0))(
  ( (array!2286 (arr!1092 (Array (_ BitVec 32) (_ BitVec 64))) (size!1193 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2285)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2285 (_ BitVec 32)) Bool)

(assert (=> b!33726 (= res!20464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!20468 () Bool)

(assert (=> start!4368 (=> (not res!20468) (not e!21417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4368 (= res!20468 (validMask!0 mask!2294))))

(assert (=> start!4368 e!21417))

(assert (=> start!4368 true))

(assert (=> start!4368 tp!4987))

(declare-datatypes ((V!1877 0))(
  ( (V!1878 (val!796 Int)) )
))
(declare-datatypes ((ValueCell!570 0))(
  ( (ValueCellFull!570 (v!1889 V!1877)) (EmptyCell!570) )
))
(declare-datatypes ((array!2287 0))(
  ( (array!2288 (arr!1093 (Array (_ BitVec 32) ValueCell!570)) (size!1194 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2287)

(declare-fun e!21415 () Bool)

(declare-fun array_inv!729 (array!2287) Bool)

(assert (=> start!4368 (and (array_inv!729 _values!1501) e!21415)))

(declare-fun array_inv!730 (array!2285) Bool)

(assert (=> start!4368 (array_inv!730 _keys!1833)))

(declare-fun tp_is_empty!1539 () Bool)

(assert (=> start!4368 tp_is_empty!1539))

(declare-fun mapNonEmpty!1849 () Bool)

(declare-fun mapRes!1849 () Bool)

(declare-fun tp!4986 () Bool)

(declare-fun e!21418 () Bool)

(assert (=> mapNonEmpty!1849 (= mapRes!1849 (and tp!4986 e!21418))))

(declare-fun mapRest!1849 () (Array (_ BitVec 32) ValueCell!570))

(declare-fun mapValue!1849 () ValueCell!570)

(declare-fun mapKey!1849 () (_ BitVec 32))

(assert (=> mapNonEmpty!1849 (= (arr!1093 _values!1501) (store mapRest!1849 mapKey!1849 mapValue!1849))))

(declare-fun b!33727 () Bool)

(declare-fun res!20466 () Bool)

(declare-fun e!21419 () Bool)

(assert (=> b!33727 (=> (not res!20466) (not e!21419))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33727 (= res!20466 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33728 () Bool)

(declare-fun res!20465 () Bool)

(assert (=> b!33728 (=> (not res!20465) (not e!21417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33728 (= res!20465 (validKeyInArray!0 k0!1304))))

(declare-fun b!33729 () Bool)

(declare-fun e!21416 () Bool)

(assert (=> b!33729 (= e!21415 (and e!21416 mapRes!1849))))

(declare-fun condMapEmpty!1849 () Bool)

(declare-fun mapDefault!1849 () ValueCell!570)

(assert (=> b!33729 (= condMapEmpty!1849 (= (arr!1093 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!570)) mapDefault!1849)))))

(declare-fun b!33730 () Bool)

(assert (=> b!33730 (= e!21418 tp_is_empty!1539)))

(declare-fun b!33731 () Bool)

(assert (=> b!33731 (= e!21417 e!21419)))

(declare-fun res!20463 () Bool)

(assert (=> b!33731 (=> (not res!20463) (not e!21419))))

(declare-datatypes ((tuple2!1282 0))(
  ( (tuple2!1283 (_1!651 (_ BitVec 64)) (_2!651 V!1877)) )
))
(declare-datatypes ((List!887 0))(
  ( (Nil!884) (Cons!883 (h!1450 tuple2!1282) (t!3590 List!887)) )
))
(declare-datatypes ((ListLongMap!863 0))(
  ( (ListLongMap!864 (toList!447 List!887)) )
))
(declare-fun lt!12367 () ListLongMap!863)

(declare-fun contains!388 (ListLongMap!863 (_ BitVec 64)) Bool)

(assert (=> b!33731 (= res!20463 (not (contains!388 lt!12367 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1877)

(declare-fun minValue!1443 () V!1877)

(declare-fun getCurrentListMap!270 (array!2285 array!2287 (_ BitVec 32) (_ BitVec 32) V!1877 V!1877 (_ BitVec 32) Int) ListLongMap!863)

(assert (=> b!33731 (= lt!12367 (getCurrentListMap!270 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33732 () Bool)

(assert (=> b!33732 (= e!21416 tp_is_empty!1539)))

(declare-fun b!33733 () Bool)

(declare-fun res!20469 () Bool)

(assert (=> b!33733 (=> (not res!20469) (not e!21417))))

(assert (=> b!33733 (= res!20469 (and (= (size!1194 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1193 _keys!1833) (size!1194 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33734 () Bool)

(declare-fun res!20467 () Bool)

(assert (=> b!33734 (=> (not res!20467) (not e!21417))))

(declare-datatypes ((List!888 0))(
  ( (Nil!885) (Cons!884 (h!1451 (_ BitVec 64)) (t!3591 List!888)) )
))
(declare-fun arrayNoDuplicates!0 (array!2285 (_ BitVec 32) List!888) Bool)

(assert (=> b!33734 (= res!20467 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!885))))

(declare-fun lt!12371 () (_ BitVec 32))

(declare-fun b!33735 () Bool)

(assert (=> b!33735 (= e!21419 (not (or (not (= (size!1193 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))) (bvsgt #b00000000000000000000000000000000 (size!1193 _keys!1833)) (and (bvsge lt!12371 #b00000000000000000000000000000000) (bvsle lt!12371 (size!1193 _keys!1833))))))))

(declare-datatypes ((SeekEntryResult!139 0))(
  ( (MissingZero!139 (index!2678 (_ BitVec 32))) (Found!139 (index!2679 (_ BitVec 32))) (Intermediate!139 (undefined!951 Bool) (index!2680 (_ BitVec 32)) (x!6849 (_ BitVec 32))) (Undefined!139) (MissingVacant!139 (index!2681 (_ BitVec 32))) )
))
(declare-fun lt!12368 () SeekEntryResult!139)

(get-info :version)

(assert (=> b!33735 (and ((_ is Found!139) lt!12368) (= (index!2679 lt!12368) lt!12371))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2285 (_ BitVec 32)) SeekEntryResult!139)

(assert (=> b!33735 (= lt!12368 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!753 0))(
  ( (Unit!754) )
))
(declare-fun lt!12369 () Unit!753)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2285 (_ BitVec 32)) Unit!753)

(assert (=> b!33735 (= lt!12369 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12371 _keys!1833 mask!2294))))

(assert (=> b!33735 (contains!388 lt!12367 (select (arr!1092 _keys!1833) lt!12371))))

(declare-fun lt!12370 () Unit!753)

(declare-fun lemmaValidKeyInArrayIsInListMap!61 (array!2285 array!2287 (_ BitVec 32) (_ BitVec 32) V!1877 V!1877 (_ BitVec 32) Int) Unit!753)

(assert (=> b!33735 (= lt!12370 (lemmaValidKeyInArrayIsInListMap!61 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12371 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2285 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33735 (= lt!12371 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1849 () Bool)

(assert (=> mapIsEmpty!1849 mapRes!1849))

(assert (= (and start!4368 res!20468) b!33733))

(assert (= (and b!33733 res!20469) b!33726))

(assert (= (and b!33726 res!20464) b!33734))

(assert (= (and b!33734 res!20467) b!33728))

(assert (= (and b!33728 res!20465) b!33731))

(assert (= (and b!33731 res!20463) b!33727))

(assert (= (and b!33727 res!20466) b!33735))

(assert (= (and b!33729 condMapEmpty!1849) mapIsEmpty!1849))

(assert (= (and b!33729 (not condMapEmpty!1849)) mapNonEmpty!1849))

(assert (= (and mapNonEmpty!1849 ((_ is ValueCellFull!570) mapValue!1849)) b!33730))

(assert (= (and b!33729 ((_ is ValueCellFull!570) mapDefault!1849)) b!33732))

(assert (= start!4368 b!33729))

(declare-fun m!27105 () Bool)

(assert (=> b!33728 m!27105))

(declare-fun m!27107 () Bool)

(assert (=> start!4368 m!27107))

(declare-fun m!27109 () Bool)

(assert (=> start!4368 m!27109))

(declare-fun m!27111 () Bool)

(assert (=> start!4368 m!27111))

(declare-fun m!27113 () Bool)

(assert (=> b!33727 m!27113))

(declare-fun m!27115 () Bool)

(assert (=> b!33731 m!27115))

(declare-fun m!27117 () Bool)

(assert (=> b!33731 m!27117))

(declare-fun m!27119 () Bool)

(assert (=> b!33735 m!27119))

(declare-fun m!27121 () Bool)

(assert (=> b!33735 m!27121))

(declare-fun m!27123 () Bool)

(assert (=> b!33735 m!27123))

(declare-fun m!27125 () Bool)

(assert (=> b!33735 m!27125))

(declare-fun m!27127 () Bool)

(assert (=> b!33735 m!27127))

(declare-fun m!27129 () Bool)

(assert (=> b!33735 m!27129))

(assert (=> b!33735 m!27123))

(declare-fun m!27131 () Bool)

(assert (=> b!33734 m!27131))

(declare-fun m!27133 () Bool)

(assert (=> mapNonEmpty!1849 m!27133))

(declare-fun m!27135 () Bool)

(assert (=> b!33726 m!27135))

(check-sat (not start!4368) (not b!33728) (not b!33735) b_and!2005 (not b!33727) (not b!33731) (not b!33734) (not b!33726) (not mapNonEmpty!1849) tp_is_empty!1539 (not b_next!1185))
(check-sat b_and!2005 (not b_next!1185))
(get-model)

(declare-fun d!5197 () Bool)

(assert (=> d!5197 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33728 d!5197))

(declare-fun d!5199 () Bool)

(declare-fun res!20497 () Bool)

(declare-fun e!21447 () Bool)

(assert (=> d!5199 (=> res!20497 e!21447)))

(assert (=> d!5199 (= res!20497 (bvsge #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(assert (=> d!5199 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!885) e!21447)))

(declare-fun b!33776 () Bool)

(declare-fun e!21449 () Bool)

(declare-fun contains!390 (List!888 (_ BitVec 64)) Bool)

(assert (=> b!33776 (= e!21449 (contains!390 Nil!885 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33777 () Bool)

(declare-fun e!21448 () Bool)

(declare-fun call!2699 () Bool)

(assert (=> b!33777 (= e!21448 call!2699)))

(declare-fun b!33778 () Bool)

(declare-fun e!21446 () Bool)

(assert (=> b!33778 (= e!21447 e!21446)))

(declare-fun res!20498 () Bool)

(assert (=> b!33778 (=> (not res!20498) (not e!21446))))

(assert (=> b!33778 (= res!20498 (not e!21449))))

(declare-fun res!20499 () Bool)

(assert (=> b!33778 (=> (not res!20499) (not e!21449))))

(assert (=> b!33778 (= res!20499 (validKeyInArray!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33779 () Bool)

(assert (=> b!33779 (= e!21448 call!2699)))

(declare-fun bm!2696 () Bool)

(declare-fun c!3894 () Bool)

(assert (=> bm!2696 (= call!2699 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3894 (Cons!884 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000) Nil!885) Nil!885)))))

(declare-fun b!33780 () Bool)

(assert (=> b!33780 (= e!21446 e!21448)))

(assert (=> b!33780 (= c!3894 (validKeyInArray!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5199 (not res!20497)) b!33778))

(assert (= (and b!33778 res!20499) b!33776))

(assert (= (and b!33778 res!20498) b!33780))

(assert (= (and b!33780 c!3894) b!33777))

(assert (= (and b!33780 (not c!3894)) b!33779))

(assert (= (or b!33777 b!33779) bm!2696))

(declare-fun m!27169 () Bool)

(assert (=> b!33776 m!27169))

(assert (=> b!33776 m!27169))

(declare-fun m!27171 () Bool)

(assert (=> b!33776 m!27171))

(assert (=> b!33778 m!27169))

(assert (=> b!33778 m!27169))

(declare-fun m!27173 () Bool)

(assert (=> b!33778 m!27173))

(assert (=> bm!2696 m!27169))

(declare-fun m!27175 () Bool)

(assert (=> bm!2696 m!27175))

(assert (=> b!33780 m!27169))

(assert (=> b!33780 m!27169))

(assert (=> b!33780 m!27173))

(assert (=> b!33734 d!5199))

(declare-fun d!5201 () Bool)

(declare-fun res!20504 () Bool)

(declare-fun e!21454 () Bool)

(assert (=> d!5201 (=> res!20504 e!21454)))

(assert (=> d!5201 (= res!20504 (= (select (arr!1092 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5201 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!21454)))

(declare-fun b!33785 () Bool)

(declare-fun e!21455 () Bool)

(assert (=> b!33785 (= e!21454 e!21455)))

(declare-fun res!20505 () Bool)

(assert (=> b!33785 (=> (not res!20505) (not e!21455))))

(assert (=> b!33785 (= res!20505 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1193 _keys!1833)))))

(declare-fun b!33786 () Bool)

(assert (=> b!33786 (= e!21455 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5201 (not res!20504)) b!33785))

(assert (= (and b!33785 res!20505) b!33786))

(assert (=> d!5201 m!27169))

(declare-fun m!27177 () Bool)

(assert (=> b!33786 m!27177))

(assert (=> b!33727 d!5201))

(declare-fun d!5203 () Bool)

(assert (=> d!5203 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4368 d!5203))

(declare-fun d!5205 () Bool)

(assert (=> d!5205 (= (array_inv!729 _values!1501) (bvsge (size!1194 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4368 d!5205))

(declare-fun d!5207 () Bool)

(assert (=> d!5207 (= (array_inv!730 _keys!1833) (bvsge (size!1193 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4368 d!5207))

(declare-fun d!5209 () Bool)

(declare-fun e!21461 () Bool)

(assert (=> d!5209 e!21461))

(declare-fun res!20508 () Bool)

(assert (=> d!5209 (=> res!20508 e!21461)))

(declare-fun lt!12398 () Bool)

(assert (=> d!5209 (= res!20508 (not lt!12398))))

(declare-fun lt!12395 () Bool)

(assert (=> d!5209 (= lt!12398 lt!12395)))

(declare-fun lt!12396 () Unit!753)

(declare-fun e!21460 () Unit!753)

(assert (=> d!5209 (= lt!12396 e!21460)))

(declare-fun c!3897 () Bool)

(assert (=> d!5209 (= c!3897 lt!12395)))

(declare-fun containsKey!33 (List!887 (_ BitVec 64)) Bool)

(assert (=> d!5209 (= lt!12395 (containsKey!33 (toList!447 lt!12367) k0!1304))))

(assert (=> d!5209 (= (contains!388 lt!12367 k0!1304) lt!12398)))

(declare-fun b!33793 () Bool)

(declare-fun lt!12397 () Unit!753)

(assert (=> b!33793 (= e!21460 lt!12397)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!30 (List!887 (_ BitVec 64)) Unit!753)

(assert (=> b!33793 (= lt!12397 (lemmaContainsKeyImpliesGetValueByKeyDefined!30 (toList!447 lt!12367) k0!1304))))

(declare-datatypes ((Option!75 0))(
  ( (Some!74 (v!1891 V!1877)) (None!73) )
))
(declare-fun isDefined!31 (Option!75) Bool)

(declare-fun getValueByKey!69 (List!887 (_ BitVec 64)) Option!75)

(assert (=> b!33793 (isDefined!31 (getValueByKey!69 (toList!447 lt!12367) k0!1304))))

(declare-fun b!33794 () Bool)

(declare-fun Unit!757 () Unit!753)

(assert (=> b!33794 (= e!21460 Unit!757)))

(declare-fun b!33795 () Bool)

(assert (=> b!33795 (= e!21461 (isDefined!31 (getValueByKey!69 (toList!447 lt!12367) k0!1304)))))

(assert (= (and d!5209 c!3897) b!33793))

(assert (= (and d!5209 (not c!3897)) b!33794))

(assert (= (and d!5209 (not res!20508)) b!33795))

(declare-fun m!27179 () Bool)

(assert (=> d!5209 m!27179))

(declare-fun m!27181 () Bool)

(assert (=> b!33793 m!27181))

(declare-fun m!27183 () Bool)

(assert (=> b!33793 m!27183))

(assert (=> b!33793 m!27183))

(declare-fun m!27185 () Bool)

(assert (=> b!33793 m!27185))

(assert (=> b!33795 m!27183))

(assert (=> b!33795 m!27183))

(assert (=> b!33795 m!27185))

(assert (=> b!33731 d!5209))

(declare-fun b!33838 () Bool)

(declare-fun res!20533 () Bool)

(declare-fun e!21496 () Bool)

(assert (=> b!33838 (=> (not res!20533) (not e!21496))))

(declare-fun e!21492 () Bool)

(assert (=> b!33838 (= res!20533 e!21492)))

(declare-fun res!20531 () Bool)

(assert (=> b!33838 (=> res!20531 e!21492)))

(declare-fun e!21494 () Bool)

(assert (=> b!33838 (= res!20531 (not e!21494))))

(declare-fun res!20529 () Bool)

(assert (=> b!33838 (=> (not res!20529) (not e!21494))))

(assert (=> b!33838 (= res!20529 (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(declare-fun b!33839 () Bool)

(declare-fun e!21491 () Bool)

(declare-fun lt!12448 () ListLongMap!863)

(declare-fun apply!37 (ListLongMap!863 (_ BitVec 64)) V!1877)

(declare-fun get!574 (ValueCell!570 V!1877) V!1877)

(declare-fun dynLambda!154 (Int (_ BitVec 64)) V!1877)

(assert (=> b!33839 (= e!21491 (= (apply!37 lt!12448 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)) (get!574 (select (arr!1093 _values!1501) #b00000000000000000000000000000000) (dynLambda!154 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33839 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1194 _values!1501)))))

(assert (=> b!33839 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(declare-fun b!33840 () Bool)

(declare-fun e!21499 () ListLongMap!863)

(declare-fun call!2716 () ListLongMap!863)

(assert (=> b!33840 (= e!21499 call!2716)))

(declare-fun b!33841 () Bool)

(declare-fun e!21498 () ListLongMap!863)

(declare-fun call!2717 () ListLongMap!863)

(declare-fun +!55 (ListLongMap!863 tuple2!1282) ListLongMap!863)

(assert (=> b!33841 (= e!21498 (+!55 call!2717 (tuple2!1283 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun d!5211 () Bool)

(assert (=> d!5211 e!21496))

(declare-fun res!20528 () Bool)

(assert (=> d!5211 (=> (not res!20528) (not e!21496))))

(assert (=> d!5211 (= res!20528 (or (bvsge #b00000000000000000000000000000000 (size!1193 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)))))))

(declare-fun lt!12445 () ListLongMap!863)

(assert (=> d!5211 (= lt!12448 lt!12445)))

(declare-fun lt!12454 () Unit!753)

(declare-fun e!21490 () Unit!753)

(assert (=> d!5211 (= lt!12454 e!21490)))

(declare-fun c!3912 () Bool)

(declare-fun e!21495 () Bool)

(assert (=> d!5211 (= c!3912 e!21495)))

(declare-fun res!20535 () Bool)

(assert (=> d!5211 (=> (not res!20535) (not e!21495))))

(assert (=> d!5211 (= res!20535 (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(assert (=> d!5211 (= lt!12445 e!21498)))

(declare-fun c!3915 () Bool)

(assert (=> d!5211 (= c!3915 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5211 (validMask!0 mask!2294)))

(assert (=> d!5211 (= (getCurrentListMap!270 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!12448)))

(declare-fun bm!2711 () Bool)

(declare-fun call!2719 () Bool)

(assert (=> bm!2711 (= call!2719 (contains!388 lt!12448 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2712 () Bool)

(assert (=> bm!2712 (= call!2716 call!2717)))

(declare-fun b!33842 () Bool)

(declare-fun Unit!758 () Unit!753)

(assert (=> b!33842 (= e!21490 Unit!758)))

(declare-fun b!33843 () Bool)

(assert (=> b!33843 (= e!21494 (validKeyInArray!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33844 () Bool)

(declare-fun e!21489 () Bool)

(assert (=> b!33844 (= e!21489 (= (apply!37 lt!12448 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!33845 () Bool)

(declare-fun e!21488 () Bool)

(assert (=> b!33845 (= e!21496 e!21488)))

(declare-fun c!3910 () Bool)

(assert (=> b!33845 (= c!3910 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!33846 () Bool)

(declare-fun c!3911 () Bool)

(assert (=> b!33846 (= c!3911 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!21500 () ListLongMap!863)

(assert (=> b!33846 (= e!21500 e!21499)))

(declare-fun b!33847 () Bool)

(assert (=> b!33847 (= e!21500 call!2716)))

(declare-fun b!33848 () Bool)

(assert (=> b!33848 (= e!21498 e!21500)))

(declare-fun c!3914 () Bool)

(assert (=> b!33848 (= c!3914 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!33849 () Bool)

(assert (=> b!33849 (= e!21492 e!21491)))

(declare-fun res!20530 () Bool)

(assert (=> b!33849 (=> (not res!20530) (not e!21491))))

(assert (=> b!33849 (= res!20530 (contains!388 lt!12448 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!33849 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(declare-fun b!33850 () Bool)

(declare-fun e!21497 () Bool)

(assert (=> b!33850 (= e!21488 e!21497)))

(declare-fun res!20532 () Bool)

(assert (=> b!33850 (= res!20532 call!2719)))

(assert (=> b!33850 (=> (not res!20532) (not e!21497))))

(declare-fun b!33851 () Bool)

(assert (=> b!33851 (= e!21495 (validKeyInArray!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33852 () Bool)

(declare-fun e!21493 () Bool)

(assert (=> b!33852 (= e!21493 e!21489)))

(declare-fun res!20527 () Bool)

(declare-fun call!2714 () Bool)

(assert (=> b!33852 (= res!20527 call!2714)))

(assert (=> b!33852 (=> (not res!20527) (not e!21489))))

(declare-fun b!33853 () Bool)

(assert (=> b!33853 (= e!21497 (= (apply!37 lt!12448 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!33854 () Bool)

(declare-fun call!2720 () ListLongMap!863)

(assert (=> b!33854 (= e!21499 call!2720)))

(declare-fun bm!2713 () Bool)

(declare-fun call!2715 () ListLongMap!863)

(assert (=> bm!2713 (= call!2720 call!2715)))

(declare-fun b!33855 () Bool)

(declare-fun lt!12457 () Unit!753)

(assert (=> b!33855 (= e!21490 lt!12457)))

(declare-fun lt!12459 () ListLongMap!863)

(declare-fun getCurrentListMapNoExtraKeys!24 (array!2285 array!2287 (_ BitVec 32) (_ BitVec 32) V!1877 V!1877 (_ BitVec 32) Int) ListLongMap!863)

(assert (=> b!33855 (= lt!12459 (getCurrentListMapNoExtraKeys!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12462 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12462 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12443 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12443 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12450 () Unit!753)

(declare-fun addStillContains!22 (ListLongMap!863 (_ BitVec 64) V!1877 (_ BitVec 64)) Unit!753)

(assert (=> b!33855 (= lt!12450 (addStillContains!22 lt!12459 lt!12462 zeroValue!1443 lt!12443))))

(assert (=> b!33855 (contains!388 (+!55 lt!12459 (tuple2!1283 lt!12462 zeroValue!1443)) lt!12443)))

(declare-fun lt!12458 () Unit!753)

(assert (=> b!33855 (= lt!12458 lt!12450)))

(declare-fun lt!12461 () ListLongMap!863)

(assert (=> b!33855 (= lt!12461 (getCurrentListMapNoExtraKeys!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12451 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12451 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12447 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12447 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12456 () Unit!753)

(declare-fun addApplyDifferent!22 (ListLongMap!863 (_ BitVec 64) V!1877 (_ BitVec 64)) Unit!753)

(assert (=> b!33855 (= lt!12456 (addApplyDifferent!22 lt!12461 lt!12451 minValue!1443 lt!12447))))

(assert (=> b!33855 (= (apply!37 (+!55 lt!12461 (tuple2!1283 lt!12451 minValue!1443)) lt!12447) (apply!37 lt!12461 lt!12447))))

(declare-fun lt!12449 () Unit!753)

(assert (=> b!33855 (= lt!12449 lt!12456)))

(declare-fun lt!12464 () ListLongMap!863)

(assert (=> b!33855 (= lt!12464 (getCurrentListMapNoExtraKeys!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12453 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12453 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12455 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12455 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12463 () Unit!753)

(assert (=> b!33855 (= lt!12463 (addApplyDifferent!22 lt!12464 lt!12453 zeroValue!1443 lt!12455))))

(assert (=> b!33855 (= (apply!37 (+!55 lt!12464 (tuple2!1283 lt!12453 zeroValue!1443)) lt!12455) (apply!37 lt!12464 lt!12455))))

(declare-fun lt!12444 () Unit!753)

(assert (=> b!33855 (= lt!12444 lt!12463)))

(declare-fun lt!12452 () ListLongMap!863)

(assert (=> b!33855 (= lt!12452 (getCurrentListMapNoExtraKeys!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12460 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12460 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12446 () (_ BitVec 64))

(assert (=> b!33855 (= lt!12446 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!33855 (= lt!12457 (addApplyDifferent!22 lt!12452 lt!12460 minValue!1443 lt!12446))))

(assert (=> b!33855 (= (apply!37 (+!55 lt!12452 (tuple2!1283 lt!12460 minValue!1443)) lt!12446) (apply!37 lt!12452 lt!12446))))

(declare-fun b!33856 () Bool)

(assert (=> b!33856 (= e!21493 (not call!2714))))

(declare-fun bm!2714 () Bool)

(declare-fun call!2718 () ListLongMap!863)

(assert (=> bm!2714 (= call!2715 call!2718)))

(declare-fun bm!2715 () Bool)

(assert (=> bm!2715 (= call!2714 (contains!388 lt!12448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!33857 () Bool)

(declare-fun res!20534 () Bool)

(assert (=> b!33857 (=> (not res!20534) (not e!21496))))

(assert (=> b!33857 (= res!20534 e!21493)))

(declare-fun c!3913 () Bool)

(assert (=> b!33857 (= c!3913 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!33858 () Bool)

(assert (=> b!33858 (= e!21488 (not call!2719))))

(declare-fun bm!2716 () Bool)

(assert (=> bm!2716 (= call!2718 (getCurrentListMapNoExtraKeys!24 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun bm!2717 () Bool)

(assert (=> bm!2717 (= call!2717 (+!55 (ite c!3915 call!2718 (ite c!3914 call!2715 call!2720)) (ite (or c!3915 c!3914) (tuple2!1283 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1283 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(assert (= (and d!5211 c!3915) b!33841))

(assert (= (and d!5211 (not c!3915)) b!33848))

(assert (= (and b!33848 c!3914) b!33847))

(assert (= (and b!33848 (not c!3914)) b!33846))

(assert (= (and b!33846 c!3911) b!33840))

(assert (= (and b!33846 (not c!3911)) b!33854))

(assert (= (or b!33840 b!33854) bm!2713))

(assert (= (or b!33847 bm!2713) bm!2714))

(assert (= (or b!33847 b!33840) bm!2712))

(assert (= (or b!33841 bm!2714) bm!2716))

(assert (= (or b!33841 bm!2712) bm!2717))

(assert (= (and d!5211 res!20535) b!33851))

(assert (= (and d!5211 c!3912) b!33855))

(assert (= (and d!5211 (not c!3912)) b!33842))

(assert (= (and d!5211 res!20528) b!33838))

(assert (= (and b!33838 res!20529) b!33843))

(assert (= (and b!33838 (not res!20531)) b!33849))

(assert (= (and b!33849 res!20530) b!33839))

(assert (= (and b!33838 res!20533) b!33857))

(assert (= (and b!33857 c!3913) b!33852))

(assert (= (and b!33857 (not c!3913)) b!33856))

(assert (= (and b!33852 res!20527) b!33844))

(assert (= (or b!33852 b!33856) bm!2715))

(assert (= (and b!33857 res!20534) b!33845))

(assert (= (and b!33845 c!3910) b!33850))

(assert (= (and b!33845 (not c!3910)) b!33858))

(assert (= (and b!33850 res!20532) b!33853))

(assert (= (or b!33850 b!33858) bm!2711))

(declare-fun b_lambda!1715 () Bool)

(assert (=> (not b_lambda!1715) (not b!33839)))

(declare-fun t!3595 () Bool)

(declare-fun tb!691 () Bool)

(assert (=> (and start!4368 (= defaultEntry!1504 defaultEntry!1504) t!3595) tb!691))

(declare-fun result!1179 () Bool)

(assert (=> tb!691 (= result!1179 tp_is_empty!1539)))

(assert (=> b!33839 t!3595))

(declare-fun b_and!2009 () Bool)

(assert (= b_and!2005 (and (=> t!3595 result!1179) b_and!2009)))

(declare-fun m!27187 () Bool)

(assert (=> b!33844 m!27187))

(declare-fun m!27189 () Bool)

(assert (=> b!33855 m!27189))

(declare-fun m!27191 () Bool)

(assert (=> b!33855 m!27191))

(declare-fun m!27193 () Bool)

(assert (=> b!33855 m!27193))

(declare-fun m!27195 () Bool)

(assert (=> b!33855 m!27195))

(declare-fun m!27197 () Bool)

(assert (=> b!33855 m!27197))

(assert (=> b!33855 m!27169))

(declare-fun m!27199 () Bool)

(assert (=> b!33855 m!27199))

(assert (=> b!33855 m!27199))

(declare-fun m!27201 () Bool)

(assert (=> b!33855 m!27201))

(assert (=> b!33855 m!27195))

(declare-fun m!27203 () Bool)

(assert (=> b!33855 m!27203))

(declare-fun m!27205 () Bool)

(assert (=> b!33855 m!27205))

(assert (=> b!33855 m!27189))

(declare-fun m!27207 () Bool)

(assert (=> b!33855 m!27207))

(declare-fun m!27209 () Bool)

(assert (=> b!33855 m!27209))

(declare-fun m!27211 () Bool)

(assert (=> b!33855 m!27211))

(declare-fun m!27213 () Bool)

(assert (=> b!33855 m!27213))

(declare-fun m!27215 () Bool)

(assert (=> b!33855 m!27215))

(declare-fun m!27217 () Bool)

(assert (=> b!33855 m!27217))

(assert (=> b!33855 m!27203))

(declare-fun m!27219 () Bool)

(assert (=> b!33855 m!27219))

(declare-fun m!27221 () Bool)

(assert (=> bm!2717 m!27221))

(assert (=> bm!2716 m!27215))

(assert (=> b!33843 m!27169))

(assert (=> b!33843 m!27169))

(assert (=> b!33843 m!27173))

(declare-fun m!27223 () Bool)

(assert (=> bm!2711 m!27223))

(assert (=> d!5211 m!27107))

(declare-fun m!27225 () Bool)

(assert (=> b!33841 m!27225))

(assert (=> b!33851 m!27169))

(assert (=> b!33851 m!27169))

(assert (=> b!33851 m!27173))

(assert (=> b!33849 m!27169))

(assert (=> b!33849 m!27169))

(declare-fun m!27227 () Bool)

(assert (=> b!33849 m!27227))

(declare-fun m!27229 () Bool)

(assert (=> b!33853 m!27229))

(declare-fun m!27231 () Bool)

(assert (=> bm!2715 m!27231))

(declare-fun m!27233 () Bool)

(assert (=> b!33839 m!27233))

(assert (=> b!33839 m!27169))

(declare-fun m!27235 () Bool)

(assert (=> b!33839 m!27235))

(assert (=> b!33839 m!27169))

(declare-fun m!27237 () Bool)

(assert (=> b!33839 m!27237))

(assert (=> b!33839 m!27235))

(assert (=> b!33839 m!27233))

(declare-fun m!27239 () Bool)

(assert (=> b!33839 m!27239))

(assert (=> b!33731 d!5211))

(declare-fun d!5213 () Bool)

(declare-fun lt!12470 () SeekEntryResult!139)

(assert (=> d!5213 (and ((_ is Found!139) lt!12470) (= (index!2679 lt!12470) lt!12371))))

(assert (=> d!5213 (= lt!12470 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!12469 () Unit!753)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!2285 (_ BitVec 32)) Unit!753)

(assert (=> d!5213 (= lt!12469 (choose!0 k0!1304 lt!12371 _keys!1833 mask!2294))))

(assert (=> d!5213 (validMask!0 mask!2294)))

(assert (=> d!5213 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12371 _keys!1833 mask!2294) lt!12469)))

(declare-fun bs!1309 () Bool)

(assert (= bs!1309 d!5213))

(assert (=> bs!1309 m!27127))

(declare-fun m!27241 () Bool)

(assert (=> bs!1309 m!27241))

(assert (=> bs!1309 m!27107))

(assert (=> b!33735 d!5213))

(declare-fun d!5215 () Bool)

(declare-fun lt!12480 () SeekEntryResult!139)

(assert (=> d!5215 (and (or ((_ is MissingVacant!139) lt!12480) (not ((_ is Found!139) lt!12480)) (and (bvsge (index!2679 lt!12480) #b00000000000000000000000000000000) (bvslt (index!2679 lt!12480) (size!1193 _keys!1833)))) (not ((_ is MissingVacant!139) lt!12480)) (or (not ((_ is Found!139) lt!12480)) (= (select (arr!1092 _keys!1833) (index!2679 lt!12480)) k0!1304)))))

(declare-fun e!21509 () SeekEntryResult!139)

(assert (=> d!5215 (= lt!12480 e!21509)))

(declare-fun c!3922 () Bool)

(declare-fun lt!12482 () SeekEntryResult!139)

(assert (=> d!5215 (= c!3922 (and ((_ is Intermediate!139) lt!12482) (undefined!951 lt!12482)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2285 (_ BitVec 32)) SeekEntryResult!139)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5215 (= lt!12482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5215 (validMask!0 mask!2294)))

(assert (=> d!5215 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!12480)))

(declare-fun b!33873 () Bool)

(assert (=> b!33873 (= e!21509 Undefined!139)))

(declare-fun b!33874 () Bool)

(declare-fun e!21508 () SeekEntryResult!139)

(assert (=> b!33874 (= e!21508 (Found!139 (index!2680 lt!12482)))))

(declare-fun b!33875 () Bool)

(declare-fun e!21507 () SeekEntryResult!139)

(declare-fun lt!12481 () SeekEntryResult!139)

(assert (=> b!33875 (= e!21507 (ite ((_ is MissingVacant!139) lt!12481) (MissingZero!139 (index!2681 lt!12481)) lt!12481))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2285 (_ BitVec 32)) SeekEntryResult!139)

(assert (=> b!33875 (= lt!12481 (seekKeyOrZeroReturnVacant!0 (x!6849 lt!12482) (index!2680 lt!12482) (index!2680 lt!12482) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!33876 () Bool)

(declare-fun c!3924 () Bool)

(declare-fun lt!12479 () (_ BitVec 64))

(assert (=> b!33876 (= c!3924 (= lt!12479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!33876 (= e!21508 e!21507)))

(declare-fun b!33877 () Bool)

(assert (=> b!33877 (= e!21507 (MissingZero!139 (index!2680 lt!12482)))))

(declare-fun b!33878 () Bool)

(assert (=> b!33878 (= e!21509 e!21508)))

(assert (=> b!33878 (= lt!12479 (select (arr!1092 _keys!1833) (index!2680 lt!12482)))))

(declare-fun c!3923 () Bool)

(assert (=> b!33878 (= c!3923 (= lt!12479 k0!1304))))

(assert (= (and d!5215 c!3922) b!33873))

(assert (= (and d!5215 (not c!3922)) b!33878))

(assert (= (and b!33878 c!3923) b!33874))

(assert (= (and b!33878 (not c!3923)) b!33876))

(assert (= (and b!33876 c!3924) b!33877))

(assert (= (and b!33876 (not c!3924)) b!33875))

(declare-fun m!27243 () Bool)

(assert (=> d!5215 m!27243))

(declare-fun m!27245 () Bool)

(assert (=> d!5215 m!27245))

(assert (=> d!5215 m!27245))

(declare-fun m!27247 () Bool)

(assert (=> d!5215 m!27247))

(assert (=> d!5215 m!27107))

(declare-fun m!27249 () Bool)

(assert (=> b!33875 m!27249))

(declare-fun m!27251 () Bool)

(assert (=> b!33878 m!27251))

(assert (=> b!33735 d!5215))

(declare-fun d!5217 () Bool)

(declare-fun e!21511 () Bool)

(assert (=> d!5217 e!21511))

(declare-fun res!20536 () Bool)

(assert (=> d!5217 (=> res!20536 e!21511)))

(declare-fun lt!12486 () Bool)

(assert (=> d!5217 (= res!20536 (not lt!12486))))

(declare-fun lt!12483 () Bool)

(assert (=> d!5217 (= lt!12486 lt!12483)))

(declare-fun lt!12484 () Unit!753)

(declare-fun e!21510 () Unit!753)

(assert (=> d!5217 (= lt!12484 e!21510)))

(declare-fun c!3925 () Bool)

(assert (=> d!5217 (= c!3925 lt!12483)))

(assert (=> d!5217 (= lt!12483 (containsKey!33 (toList!447 lt!12367) (select (arr!1092 _keys!1833) lt!12371)))))

(assert (=> d!5217 (= (contains!388 lt!12367 (select (arr!1092 _keys!1833) lt!12371)) lt!12486)))

(declare-fun b!33879 () Bool)

(declare-fun lt!12485 () Unit!753)

(assert (=> b!33879 (= e!21510 lt!12485)))

(assert (=> b!33879 (= lt!12485 (lemmaContainsKeyImpliesGetValueByKeyDefined!30 (toList!447 lt!12367) (select (arr!1092 _keys!1833) lt!12371)))))

(assert (=> b!33879 (isDefined!31 (getValueByKey!69 (toList!447 lt!12367) (select (arr!1092 _keys!1833) lt!12371)))))

(declare-fun b!33880 () Bool)

(declare-fun Unit!759 () Unit!753)

(assert (=> b!33880 (= e!21510 Unit!759)))

(declare-fun b!33881 () Bool)

(assert (=> b!33881 (= e!21511 (isDefined!31 (getValueByKey!69 (toList!447 lt!12367) (select (arr!1092 _keys!1833) lt!12371))))))

(assert (= (and d!5217 c!3925) b!33879))

(assert (= (and d!5217 (not c!3925)) b!33880))

(assert (= (and d!5217 (not res!20536)) b!33881))

(assert (=> d!5217 m!27123))

(declare-fun m!27253 () Bool)

(assert (=> d!5217 m!27253))

(assert (=> b!33879 m!27123))

(declare-fun m!27255 () Bool)

(assert (=> b!33879 m!27255))

(assert (=> b!33879 m!27123))

(declare-fun m!27257 () Bool)

(assert (=> b!33879 m!27257))

(assert (=> b!33879 m!27257))

(declare-fun m!27259 () Bool)

(assert (=> b!33879 m!27259))

(assert (=> b!33881 m!27123))

(assert (=> b!33881 m!27257))

(assert (=> b!33881 m!27257))

(assert (=> b!33881 m!27259))

(assert (=> b!33735 d!5217))

(declare-fun d!5219 () Bool)

(declare-fun lt!12489 () (_ BitVec 32))

(assert (=> d!5219 (and (or (bvslt lt!12489 #b00000000000000000000000000000000) (bvsge lt!12489 (size!1193 _keys!1833)) (and (bvsge lt!12489 #b00000000000000000000000000000000) (bvslt lt!12489 (size!1193 _keys!1833)))) (bvsge lt!12489 #b00000000000000000000000000000000) (bvslt lt!12489 (size!1193 _keys!1833)) (= (select (arr!1092 _keys!1833) lt!12489) k0!1304))))

(declare-fun e!21514 () (_ BitVec 32))

(assert (=> d!5219 (= lt!12489 e!21514)))

(declare-fun c!3928 () Bool)

(assert (=> d!5219 (= c!3928 (= (select (arr!1092 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5219 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1193 _keys!1833)) (bvslt (size!1193 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5219 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!12489)))

(declare-fun b!33886 () Bool)

(assert (=> b!33886 (= e!21514 #b00000000000000000000000000000000)))

(declare-fun b!33887 () Bool)

(assert (=> b!33887 (= e!21514 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5219 c!3928) b!33886))

(assert (= (and d!5219 (not c!3928)) b!33887))

(declare-fun m!27261 () Bool)

(assert (=> d!5219 m!27261))

(assert (=> d!5219 m!27169))

(declare-fun m!27263 () Bool)

(assert (=> b!33887 m!27263))

(assert (=> b!33735 d!5219))

(declare-fun d!5221 () Bool)

(declare-fun e!21517 () Bool)

(assert (=> d!5221 e!21517))

(declare-fun res!20539 () Bool)

(assert (=> d!5221 (=> (not res!20539) (not e!21517))))

(assert (=> d!5221 (= res!20539 (and (bvsge lt!12371 #b00000000000000000000000000000000) (bvslt lt!12371 (size!1193 _keys!1833))))))

(declare-fun lt!12492 () Unit!753)

(declare-fun choose!221 (array!2285 array!2287 (_ BitVec 32) (_ BitVec 32) V!1877 V!1877 (_ BitVec 32) Int) Unit!753)

(assert (=> d!5221 (= lt!12492 (choose!221 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12371 defaultEntry!1504))))

(assert (=> d!5221 (validMask!0 mask!2294)))

(assert (=> d!5221 (= (lemmaValidKeyInArrayIsInListMap!61 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12371 defaultEntry!1504) lt!12492)))

(declare-fun b!33890 () Bool)

(assert (=> b!33890 (= e!21517 (contains!388 (getCurrentListMap!270 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) (select (arr!1092 _keys!1833) lt!12371)))))

(assert (= (and d!5221 res!20539) b!33890))

(declare-fun m!27265 () Bool)

(assert (=> d!5221 m!27265))

(assert (=> d!5221 m!27107))

(assert (=> b!33890 m!27117))

(assert (=> b!33890 m!27123))

(assert (=> b!33890 m!27117))

(assert (=> b!33890 m!27123))

(declare-fun m!27267 () Bool)

(assert (=> b!33890 m!27267))

(assert (=> b!33735 d!5221))

(declare-fun b!33899 () Bool)

(declare-fun e!21526 () Bool)

(declare-fun call!2723 () Bool)

(assert (=> b!33899 (= e!21526 call!2723)))

(declare-fun b!33900 () Bool)

(declare-fun e!21525 () Bool)

(assert (=> b!33900 (= e!21525 call!2723)))

(declare-fun b!33901 () Bool)

(assert (=> b!33901 (= e!21526 e!21525)))

(declare-fun lt!12501 () (_ BitVec 64))

(assert (=> b!33901 (= lt!12501 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12500 () Unit!753)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2285 (_ BitVec 64) (_ BitVec 32)) Unit!753)

(assert (=> b!33901 (= lt!12500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12501 #b00000000000000000000000000000000))))

(assert (=> b!33901 (arrayContainsKey!0 _keys!1833 lt!12501 #b00000000000000000000000000000000)))

(declare-fun lt!12499 () Unit!753)

(assert (=> b!33901 (= lt!12499 lt!12500)))

(declare-fun res!20545 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2285 (_ BitVec 32)) SeekEntryResult!139)

(assert (=> b!33901 (= res!20545 (= (seekEntryOrOpen!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!139 #b00000000000000000000000000000000)))))

(assert (=> b!33901 (=> (not res!20545) (not e!21525))))

(declare-fun d!5223 () Bool)

(declare-fun res!20544 () Bool)

(declare-fun e!21524 () Bool)

(assert (=> d!5223 (=> res!20544 e!21524)))

(assert (=> d!5223 (= res!20544 (bvsge #b00000000000000000000000000000000 (size!1193 _keys!1833)))))

(assert (=> d!5223 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!21524)))

(declare-fun b!33902 () Bool)

(assert (=> b!33902 (= e!21524 e!21526)))

(declare-fun c!3931 () Bool)

(assert (=> b!33902 (= c!3931 (validKeyInArray!0 (select (arr!1092 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2720 () Bool)

(assert (=> bm!2720 (= call!2723 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(assert (= (and d!5223 (not res!20544)) b!33902))

(assert (= (and b!33902 c!3931) b!33901))

(assert (= (and b!33902 (not c!3931)) b!33899))

(assert (= (and b!33901 res!20545) b!33900))

(assert (= (or b!33900 b!33899) bm!2720))

(assert (=> b!33901 m!27169))

(declare-fun m!27269 () Bool)

(assert (=> b!33901 m!27269))

(declare-fun m!27271 () Bool)

(assert (=> b!33901 m!27271))

(assert (=> b!33901 m!27169))

(declare-fun m!27273 () Bool)

(assert (=> b!33901 m!27273))

(assert (=> b!33902 m!27169))

(assert (=> b!33902 m!27169))

(assert (=> b!33902 m!27173))

(declare-fun m!27275 () Bool)

(assert (=> bm!2720 m!27275))

(assert (=> b!33726 d!5223))

(declare-fun b!33909 () Bool)

(declare-fun e!21532 () Bool)

(assert (=> b!33909 (= e!21532 tp_is_empty!1539)))

(declare-fun b!33910 () Bool)

(declare-fun e!21531 () Bool)

(assert (=> b!33910 (= e!21531 tp_is_empty!1539)))

(declare-fun condMapEmpty!1855 () Bool)

(declare-fun mapDefault!1855 () ValueCell!570)

(assert (=> mapNonEmpty!1849 (= condMapEmpty!1855 (= mapRest!1849 ((as const (Array (_ BitVec 32) ValueCell!570)) mapDefault!1855)))))

(declare-fun mapRes!1855 () Bool)

(assert (=> mapNonEmpty!1849 (= tp!4986 (and e!21531 mapRes!1855))))

(declare-fun mapNonEmpty!1855 () Bool)

(declare-fun tp!4996 () Bool)

(assert (=> mapNonEmpty!1855 (= mapRes!1855 (and tp!4996 e!21532))))

(declare-fun mapRest!1855 () (Array (_ BitVec 32) ValueCell!570))

(declare-fun mapKey!1855 () (_ BitVec 32))

(declare-fun mapValue!1855 () ValueCell!570)

(assert (=> mapNonEmpty!1855 (= mapRest!1849 (store mapRest!1855 mapKey!1855 mapValue!1855))))

(declare-fun mapIsEmpty!1855 () Bool)

(assert (=> mapIsEmpty!1855 mapRes!1855))

(assert (= (and mapNonEmpty!1849 condMapEmpty!1855) mapIsEmpty!1855))

(assert (= (and mapNonEmpty!1849 (not condMapEmpty!1855)) mapNonEmpty!1855))

(assert (= (and mapNonEmpty!1855 ((_ is ValueCellFull!570) mapValue!1855)) b!33909))

(assert (= (and mapNonEmpty!1849 ((_ is ValueCellFull!570) mapDefault!1855)) b!33910))

(declare-fun m!27277 () Bool)

(assert (=> mapNonEmpty!1855 m!27277))

(declare-fun b_lambda!1717 () Bool)

(assert (= b_lambda!1715 (or (and start!4368 b_free!1185) b_lambda!1717)))

(check-sat (not b!33841) (not d!5211) (not bm!2715) (not b!33844) (not b!33776) (not b!33795) (not b_lambda!1717) (not d!5215) (not d!5217) (not bm!2696) (not b!33890) tp_is_empty!1539 (not b_next!1185) (not b!33786) (not b!33849) (not b!33901) (not d!5221) (not bm!2717) (not b!33853) (not bm!2716) (not b!33887) (not bm!2711) (not b!33855) (not bm!2720) (not b!33839) (not b!33879) (not b!33780) (not d!5213) (not b!33793) (not mapNonEmpty!1855) (not d!5209) (not b!33778) (not b!33851) (not b!33881) (not b!33902) (not b!33875) b_and!2009 (not b!33843))
(check-sat b_and!2009 (not b_next!1185))
