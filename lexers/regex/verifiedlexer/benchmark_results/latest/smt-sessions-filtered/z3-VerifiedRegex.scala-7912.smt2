; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412706 () Bool)

(assert start!412706)

(declare-fun b!4298556 () Bool)

(declare-fun b_free!127929 () Bool)

(declare-fun b_next!128633 () Bool)

(assert (=> b!4298556 (= b_free!127929 (not b_next!128633))))

(declare-fun tp!1320585 () Bool)

(declare-fun b_and!339197 () Bool)

(assert (=> b!4298556 (= tp!1320585 b_and!339197)))

(declare-fun b_free!127931 () Bool)

(declare-fun b_next!128635 () Bool)

(assert (=> start!412706 (= b_free!127931 (not b_next!128635))))

(declare-fun tp!1320586 () Bool)

(declare-fun b_and!339199 () Bool)

(assert (=> start!412706 (= tp!1320586 b_and!339199)))

(declare-fun b!4298555 () Bool)

(declare-fun b_free!127933 () Bool)

(declare-fun b_next!128637 () Bool)

(assert (=> b!4298555 (= b_free!127933 (not b_next!128637))))

(declare-fun tp!1320587 () Bool)

(declare-fun b_and!339201 () Bool)

(assert (=> b!4298555 (= tp!1320587 b_and!339201)))

(declare-fun b!4298550 () Bool)

(declare-fun e!2671702 () Bool)

(declare-fun e!2671698 () Bool)

(assert (=> b!4298550 (= e!2671702 e!2671698)))

(declare-fun mapNonEmpty!20238 () Bool)

(declare-fun mapRes!20238 () Bool)

(declare-fun tp!1320592 () Bool)

(declare-fun tp!1320591 () Bool)

(assert (=> mapNonEmpty!20238 (= mapRes!20238 (and tp!1320592 tp!1320591))))

(declare-datatypes ((K!9009 0))(
  ( (K!9010 (val!15465 Int)) )
))
(declare-datatypes ((V!9211 0))(
  ( (V!9212 (val!15466 Int)) )
))
(declare-datatypes ((tuple2!45792 0))(
  ( (tuple2!45793 (_1!26175 K!9009) (_2!26175 V!9211)) )
))
(declare-datatypes ((List!48036 0))(
  ( (Nil!47912) (Cons!47912 (h!53332 tuple2!45792) (t!354697 List!48036)) )
))
(declare-datatypes ((array!16110 0))(
  ( (array!16111 (arr!7195 (Array (_ BitVec 32) (_ BitVec 64))) (size!35234 (_ BitVec 32))) )
))
(declare-datatypes ((array!16112 0))(
  ( (array!16113 (arr!7196 (Array (_ BitVec 32) List!48036)) (size!35235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9010 0))(
  ( (LongMapFixedSize!9011 (defaultEntry!4890 Int) (mask!12986 (_ BitVec 32)) (extraKeys!4754 (_ BitVec 32)) (zeroValue!4764 List!48036) (minValue!4764 List!48036) (_size!9053 (_ BitVec 32)) (_keys!4805 array!16110) (_values!4786 array!16112) (_vacant!4566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17829 0))(
  ( (Cell!17830 (v!41859 LongMapFixedSize!9010)) )
))
(declare-datatypes ((MutLongMap!4505 0))(
  ( (LongMap!4505 (underlying!9239 Cell!17829)) (MutLongMapExt!4504 (__x!29540 Int)) )
))
(declare-datatypes ((Hashable!4421 0))(
  ( (HashableExt!4420 (__x!29541 Int)) )
))
(declare-datatypes ((Cell!17831 0))(
  ( (Cell!17832 (v!41860 MutLongMap!4505)) )
))
(declare-datatypes ((MutableMap!4411 0))(
  ( (MutableMapExt!4410 (__x!29542 Int)) (HashMap!4411 (underlying!9240 Cell!17831) (hashF!6453 Hashable!4421) (_size!9054 (_ BitVec 32)) (defaultValue!4582 Int)) )
))
(declare-fun hm!64 () MutableMap!4411)

(declare-fun mapKey!20238 () (_ BitVec 32))

(declare-fun mapValue!20238 () List!48036)

(declare-fun mapRest!20238 () (Array (_ BitVec 32) List!48036))

(assert (=> mapNonEmpty!20238 (= (arr!7196 (_values!4786 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) (store mapRest!20238 mapKey!20238 mapValue!20238))))

(declare-fun b!4298551 () Bool)

(declare-fun res!1761804 () Bool)

(declare-fun e!2671700 () Bool)

(assert (=> b!4298551 (=> (not res!1761804) (not e!2671700))))

(declare-fun valid!3483 (MutableMap!4411) Bool)

(assert (=> b!4298551 (= res!1761804 (valid!3483 hm!64))))

(declare-fun b!4298552 () Bool)

(declare-fun e!2671699 () Bool)

(declare-fun lt!1520191 () MutLongMap!4505)

(get-info :version)

(assert (=> b!4298552 (= e!2671699 (and e!2671702 ((_ is LongMap!4505) lt!1520191)))))

(assert (=> b!4298552 (= lt!1520191 (v!41860 (underlying!9240 hm!64)))))

(declare-fun b!4298553 () Bool)

(declare-fun e!2671697 () Bool)

(declare-fun tp!1320588 () Bool)

(assert (=> b!4298553 (= e!2671697 (and tp!1320588 mapRes!20238))))

(declare-fun condMapEmpty!20238 () Bool)

(declare-fun mapDefault!20238 () List!48036)

(assert (=> b!4298553 (= condMapEmpty!20238 (= (arr!7196 (_values!4786 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) ((as const (Array (_ BitVec 32) List!48036)) mapDefault!20238)))))

(declare-fun res!1761805 () Bool)

(assert (=> start!412706 (=> (not res!1761805) (not e!2671700))))

(assert (=> start!412706 (= res!1761805 ((_ is HashMap!4411) hm!64))))

(assert (=> start!412706 e!2671700))

(declare-fun e!2671704 () Bool)

(assert (=> start!412706 e!2671704))

(declare-fun tp_is_empty!23193 () Bool)

(assert (=> start!412706 tp_is_empty!23193))

(declare-fun tp_is_empty!23195 () Bool)

(assert (=> start!412706 tp_is_empty!23195))

(assert (=> start!412706 tp!1320586))

(declare-fun b!4298554 () Bool)

(declare-fun e!2671706 () Bool)

(assert (=> b!4298554 (= e!2671700 e!2671706)))

(declare-fun res!1761803 () Bool)

(assert (=> b!4298554 (=> (not res!1761803) (not e!2671706))))

(declare-datatypes ((ListMap!1451 0))(
  ( (ListMap!1452 (toList!2174 List!48036)) )
))
(declare-fun lt!1520193 () ListMap!1451)

(declare-fun p!6034 () Int)

(declare-fun forall!8612 (List!48036 Int) Bool)

(assert (=> b!4298554 (= res!1761803 (forall!8612 (toList!2174 lt!1520193) p!6034))))

(declare-fun map!9871 (MutableMap!4411) ListMap!1451)

(assert (=> b!4298554 (= lt!1520193 (map!9871 hm!64))))

(declare-fun mapIsEmpty!20238 () Bool)

(assert (=> mapIsEmpty!20238 mapRes!20238))

(declare-fun e!2671701 () Bool)

(declare-fun tp!1320590 () Bool)

(declare-fun tp!1320589 () Bool)

(declare-fun array_inv!5155 (array!16110) Bool)

(declare-fun array_inv!5156 (array!16112) Bool)

(assert (=> b!4298555 (= e!2671701 (and tp!1320587 tp!1320589 tp!1320590 (array_inv!5155 (_keys!4805 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) (array_inv!5156 (_values!4786 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) e!2671697))))

(assert (=> b!4298556 (= e!2671704 (and e!2671699 tp!1320585))))

(declare-fun b!4298557 () Bool)

(declare-fun e!2671696 () Bool)

(declare-datatypes ((tuple2!45794 0))(
  ( (tuple2!45795 (_1!26176 Bool) (_2!26176 MutableMap!4411)) )
))
(declare-fun lt!1520195 () tuple2!45794)

(assert (=> b!4298557 (= e!2671696 (not (valid!3483 (_2!26176 lt!1520195))))))

(declare-fun b!4298558 () Bool)

(declare-fun e!2671705 () Bool)

(assert (=> b!4298558 (= e!2671706 e!2671705)))

(declare-fun res!1761806 () Bool)

(assert (=> b!4298558 (=> (not res!1761806) (not e!2671705))))

(declare-fun lt!1520194 () tuple2!45792)

(declare-fun dynLambda!20348 (Int tuple2!45792) Bool)

(assert (=> b!4298558 (= res!1761806 (dynLambda!20348 p!6034 lt!1520194))))

(declare-fun k0!1716 () K!9009)

(declare-fun v!9471 () V!9211)

(assert (=> b!4298558 (= lt!1520194 (tuple2!45793 k0!1716 v!9471))))

(declare-fun b!4298559 () Bool)

(assert (=> b!4298559 (= e!2671698 e!2671701)))

(declare-fun b!4298560 () Bool)

(assert (=> b!4298560 (= e!2671705 e!2671696)))

(declare-fun res!1761807 () Bool)

(assert (=> b!4298560 (=> (not res!1761807) (not e!2671696))))

(assert (=> b!4298560 (= res!1761807 (and (not (_1!26176 lt!1520195)) ((_ is HashMap!4411) (_2!26176 lt!1520195))))))

(declare-fun update!312 (MutableMap!4411 K!9009 V!9211) tuple2!45794)

(assert (=> b!4298560 (= lt!1520195 (update!312 hm!64 k0!1716 v!9471))))

(declare-fun lt!1520192 () ListMap!1451)

(declare-fun +!154 (ListMap!1451 tuple2!45792) ListMap!1451)

(assert (=> b!4298560 (= lt!1520192 (+!154 lt!1520193 lt!1520194))))

(assert (= (and start!412706 res!1761805) b!4298551))

(assert (= (and b!4298551 res!1761804) b!4298554))

(assert (= (and b!4298554 res!1761803) b!4298558))

(assert (= (and b!4298558 res!1761806) b!4298560))

(assert (= (and b!4298560 res!1761807) b!4298557))

(assert (= (and b!4298553 condMapEmpty!20238) mapIsEmpty!20238))

(assert (= (and b!4298553 (not condMapEmpty!20238)) mapNonEmpty!20238))

(assert (= b!4298555 b!4298553))

(assert (= b!4298559 b!4298555))

(assert (= b!4298550 b!4298559))

(assert (= (and b!4298552 ((_ is LongMap!4505) (v!41860 (underlying!9240 hm!64)))) b!4298550))

(assert (= b!4298556 b!4298552))

(assert (= (and start!412706 ((_ is HashMap!4411) hm!64)) b!4298556))

(declare-fun b_lambda!126225 () Bool)

(assert (=> (not b_lambda!126225) (not b!4298558)))

(declare-fun t!354696 () Bool)

(declare-fun tb!257145 () Bool)

(assert (=> (and start!412706 (= p!6034 p!6034) t!354696) tb!257145))

(declare-fun result!314398 () Bool)

(assert (=> tb!257145 (= result!314398 true)))

(assert (=> b!4298558 t!354696))

(declare-fun b_and!339203 () Bool)

(assert (= b_and!339199 (and (=> t!354696 result!314398) b_and!339203)))

(declare-fun m!4890643 () Bool)

(assert (=> b!4298558 m!4890643))

(declare-fun m!4890645 () Bool)

(assert (=> mapNonEmpty!20238 m!4890645))

(declare-fun m!4890647 () Bool)

(assert (=> b!4298560 m!4890647))

(declare-fun m!4890649 () Bool)

(assert (=> b!4298560 m!4890649))

(declare-fun m!4890651 () Bool)

(assert (=> b!4298554 m!4890651))

(declare-fun m!4890653 () Bool)

(assert (=> b!4298554 m!4890653))

(declare-fun m!4890655 () Bool)

(assert (=> b!4298557 m!4890655))

(declare-fun m!4890657 () Bool)

(assert (=> b!4298555 m!4890657))

(declare-fun m!4890659 () Bool)

(assert (=> b!4298555 m!4890659))

(declare-fun m!4890661 () Bool)

(assert (=> b!4298551 m!4890661))

(check-sat tp_is_empty!23193 b_and!339197 (not mapNonEmpty!20238) (not b_next!128633) b_and!339201 (not b!4298557) b_and!339203 (not b!4298551) (not b!4298560) (not b!4298554) (not b!4298553) (not b!4298555) (not b_next!128637) tp_is_empty!23195 (not b_lambda!126225) (not b_next!128635))
(check-sat b_and!339197 (not b_next!128633) b_and!339201 b_and!339203 (not b_next!128635) (not b_next!128637))
(get-model)

(declare-fun b_lambda!126227 () Bool)

(assert (= b_lambda!126225 (or (and start!412706 b_free!127931) b_lambda!126227)))

(check-sat tp_is_empty!23193 b_and!339197 (not mapNonEmpty!20238) (not b_next!128633) b_and!339201 (not b!4298557) b_and!339203 (not b_lambda!126227) (not b!4298551) (not b!4298560) (not b!4298554) (not b!4298553) (not b!4298555) (not b_next!128637) tp_is_empty!23195 (not b_next!128635))
(check-sat b_and!339197 (not b_next!128633) b_and!339201 b_and!339203 (not b_next!128635) (not b_next!128637))
(get-model)

(declare-fun bs!603899 () Bool)

(declare-fun b!4298599 () Bool)

(declare-fun b!4298612 () Bool)

(assert (= bs!603899 (and b!4298599 b!4298612)))

(declare-fun lambda!131880 () Int)

(declare-fun lambda!131879 () Int)

(assert (=> bs!603899 (= lambda!131880 lambda!131879)))

(declare-fun call!295478 () Bool)

(assert (=> b!4298599 call!295478))

(declare-datatypes ((Unit!66645 0))(
  ( (Unit!66646) )
))
(declare-fun lt!1520310 () Unit!66645)

(declare-fun Unit!66647 () Unit!66645)

(assert (=> b!4298599 (= lt!1520310 Unit!66647)))

(declare-fun call!295462 () ListMap!1451)

(declare-fun contains!9830 (ListMap!1451 K!9009) Bool)

(assert (=> b!4298599 (contains!9830 call!295462 k0!1716)))

(declare-fun lt!1520312 () Unit!66645)

(declare-fun lt!1520353 () Unit!66645)

(assert (=> b!4298599 (= lt!1520312 lt!1520353)))

(declare-fun call!295482 () Bool)

(declare-fun lt!1520343 () ListMap!1451)

(assert (=> b!4298599 (= call!295482 (contains!9830 lt!1520343 k0!1716))))

(declare-fun call!295469 () Unit!66645)

(assert (=> b!4298599 (= lt!1520353 call!295469)))

(assert (=> b!4298599 (= lt!1520343 call!295462)))

(declare-fun lt!1520347 () ListMap!1451)

(declare-fun call!295471 () ListMap!1451)

(assert (=> b!4298599 (= lt!1520347 call!295471)))

(declare-fun lt!1520313 () Unit!66645)

(declare-fun Unit!66648 () Unit!66645)

(assert (=> b!4298599 (= lt!1520313 Unit!66648)))

(declare-fun call!295479 () Bool)

(assert (=> b!4298599 call!295479))

(declare-fun lt!1520324 () Unit!66645)

(declare-fun Unit!66649 () Unit!66645)

(assert (=> b!4298599 (= lt!1520324 Unit!66649)))

(declare-fun call!295459 () Bool)

(assert (=> b!4298599 call!295459))

(declare-fun lt!1520338 () Unit!66645)

(declare-fun Unit!66650 () Unit!66645)

(assert (=> b!4298599 (= lt!1520338 Unit!66650)))

(declare-fun call!295461 () Bool)

(assert (=> b!4298599 call!295461))

(declare-fun lt!1520359 () Unit!66645)

(declare-fun lt!1520358 () Unit!66645)

(assert (=> b!4298599 (= lt!1520359 lt!1520358)))

(declare-fun call!295473 () Bool)

(assert (=> b!4298599 call!295473))

(declare-fun lt!1520330 () List!48036)

(declare-fun lt!1520327 () (_ BitVec 64))

(declare-datatypes ((tuple2!45796 0))(
  ( (tuple2!45797 (_1!26177 (_ BitVec 64)) (_2!26177 List!48036)) )
))
(declare-datatypes ((List!48037 0))(
  ( (Nil!47913) (Cons!47913 (h!53333 tuple2!45796) (t!354700 List!48037)) )
))
(declare-datatypes ((ListLongMap!791 0))(
  ( (ListLongMap!792 (toList!2175 List!48037)) )
))
(declare-fun lt!1520326 () ListLongMap!791)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!28 (ListLongMap!791 (_ BitVec 64) List!48036 K!9009 V!9211 Hashable!4421) Unit!66645)

(assert (=> b!4298599 (= lt!1520358 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!28 lt!1520326 lt!1520327 lt!1520330 k0!1716 v!9471 (hashF!6453 hm!64)))))

(declare-fun lt!1520317 () Unit!66645)

(declare-fun lt!1520333 () Unit!66645)

(assert (=> b!4298599 (= lt!1520317 lt!1520333)))

(declare-fun e!2671729 () Bool)

(assert (=> b!4298599 e!2671729))

(declare-fun res!1761820 () Bool)

(assert (=> b!4298599 (=> (not res!1761820) (not e!2671729))))

(declare-fun call!295465 () Bool)

(assert (=> b!4298599 (= res!1761820 call!295465)))

(declare-fun lt!1520309 () ListLongMap!791)

(declare-fun call!295481 () ListLongMap!791)

(assert (=> b!4298599 (= lt!1520309 call!295481)))

(declare-fun call!295468 () Unit!66645)

(assert (=> b!4298599 (= lt!1520333 call!295468)))

(declare-fun lt!1520307 () Unit!66645)

(declare-fun e!2671738 () Unit!66645)

(assert (=> b!4298599 (= lt!1520307 e!2671738)))

(declare-fun c!731216 () Bool)

(declare-fun lt!1520356 () List!48036)

(declare-fun isEmpty!28040 (List!48036) Bool)

(assert (=> b!4298599 (= c!731216 (not (isEmpty!28040 lt!1520356)))))

(declare-fun e!2671731 () Unit!66645)

(declare-fun Unit!66651 () Unit!66645)

(assert (=> b!4298599 (= e!2671731 Unit!66651)))

(declare-fun bm!295450 () Bool)

(declare-fun call!295467 () ListMap!1451)

(declare-fun extractMap!264 (List!48037) ListMap!1451)

(assert (=> bm!295450 (= call!295467 (extractMap!264 (toList!2175 lt!1520326)))))

(declare-fun b!4298600 () Bool)

(declare-fun e!2671733 () Bool)

(declare-fun call!295475 () Bool)

(assert (=> b!4298600 (= e!2671733 call!295475)))

(declare-fun bm!295451 () Bool)

(declare-fun call!295474 () ListMap!1451)

(declare-fun lt!1520316 () tuple2!45794)

(assert (=> bm!295451 (= call!295474 (map!9871 (_2!26176 lt!1520316)))))

(declare-fun b!4298601 () Bool)

(declare-datatypes ((tuple2!45798 0))(
  ( (tuple2!45799 (_1!26178 Bool) (_2!26178 MutLongMap!4505)) )
))
(declare-fun lt!1520322 () tuple2!45798)

(declare-fun e!2671739 () tuple2!45794)

(declare-fun lt!1520352 () MutableMap!4411)

(declare-datatypes ((tuple2!45800 0))(
  ( (tuple2!45801 (_1!26179 Unit!66645) (_2!26179 MutableMap!4411)) )
))
(declare-fun Unit!66652 () Unit!66645)

(declare-fun Unit!66653 () Unit!66645)

(assert (=> b!4298601 (= e!2671739 (tuple2!45795 (_1!26178 lt!1520322) (_2!26179 (ite false (tuple2!45801 Unit!66652 (HashMap!4411 (Cell!17832 (_2!26178 lt!1520322)) (hashF!6453 hm!64) (bvadd (_size!9054 hm!64) #b00000000000000000000000000000001) (defaultValue!4582 hm!64))) (tuple2!45801 Unit!66653 lt!1520352)))))))

(declare-fun lt!1520325 () (_ BitVec 64))

(declare-fun call!295485 () (_ BitVec 64))

(assert (=> b!4298601 (= lt!1520325 call!295485)))

(declare-fun lt!1520311 () List!48036)

(declare-fun call!295480 () List!48036)

(assert (=> b!4298601 (= lt!1520311 call!295480)))

(declare-fun lt!1520308 () List!48036)

(declare-fun call!295472 () List!48036)

(assert (=> b!4298601 (= lt!1520308 (Cons!47912 (tuple2!45793 k0!1716 v!9471) call!295472))))

(declare-fun call!295477 () tuple2!45798)

(assert (=> b!4298601 (= lt!1520322 call!295477)))

(assert (=> b!4298601 (= lt!1520352 (HashMap!4411 (Cell!17832 (_2!26178 lt!1520322)) (hashF!6453 hm!64) (_size!9054 hm!64) (defaultValue!4582 hm!64)))))

(declare-fun c!731215 () Bool)

(assert (=> b!4298601 (= c!731215 (_1!26178 lt!1520322))))

(declare-fun lt!1520329 () Unit!66645)

(declare-fun e!2671730 () Unit!66645)

(assert (=> b!4298601 (= lt!1520329 e!2671730)))

(declare-fun b!4298602 () Bool)

(declare-fun e!2671734 () Bool)

(assert (=> b!4298602 (= e!2671734 e!2671733)))

(declare-fun res!1761818 () Bool)

(assert (=> b!4298602 (= res!1761818 (contains!9830 call!295474 k0!1716))))

(assert (=> b!4298602 (=> (not res!1761818) (not e!2671733))))

(declare-fun c!731219 () Bool)

(declare-fun lt!1520331 () MutableMap!4411)

(declare-fun bm!295452 () Bool)

(declare-fun call!295455 () Bool)

(assert (=> bm!295452 (= call!295455 (valid!3483 (ite c!731219 lt!1520352 lt!1520331)))))

(declare-fun call!295476 () Unit!66645)

(declare-fun bm!295453 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!103 (List!48036 K!9009 (_ BitVec 64) Hashable!4421) Unit!66645)

(assert (=> bm!295453 (= call!295476 (lemmaRemovePairForKeyPreservesHash!103 (ite c!731219 lt!1520311 lt!1520356) k0!1716 (ite c!731219 lt!1520325 lt!1520327) (hashF!6453 hm!64)))))

(declare-fun d!1266427 () Bool)

(declare-fun e!2671737 () Bool)

(assert (=> d!1266427 e!2671737))

(declare-fun res!1761822 () Bool)

(assert (=> d!1266427 (=> (not res!1761822) (not e!2671737))))

(assert (=> d!1266427 (= res!1761822 ((_ is HashMap!4411) (_2!26176 lt!1520316)))))

(declare-fun lt!1520360 () tuple2!45794)

(assert (=> d!1266427 (= lt!1520316 (tuple2!45795 (_1!26176 lt!1520360) (_2!26176 lt!1520360)))))

(assert (=> d!1266427 (= lt!1520360 e!2671739)))

(declare-fun contains!9831 (MutableMap!4411 K!9009) Bool)

(assert (=> d!1266427 (= c!731219 (contains!9831 hm!64 k0!1716))))

(declare-fun map!9872 (MutLongMap!4505) ListLongMap!791)

(assert (=> d!1266427 (= lt!1520326 (map!9872 (v!41860 (underlying!9240 hm!64))))))

(declare-fun lt!1520332 () ListMap!1451)

(assert (=> d!1266427 (= lt!1520332 (map!9871 hm!64))))

(assert (=> d!1266427 (valid!3483 hm!64)))

(assert (=> d!1266427 (= (update!312 hm!64 k0!1716 v!9471) lt!1520316)))

(declare-fun b!4298603 () Bool)

(assert (=> b!4298603 (= e!2671737 e!2671734)))

(declare-fun c!731218 () Bool)

(assert (=> b!4298603 (= c!731218 (_1!26176 lt!1520316))))

(declare-fun bm!295454 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!94 (ListLongMap!791 (_ BitVec 64) List!48036 Hashable!4421) Unit!66645)

(assert (=> bm!295454 (= call!295468 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!94 lt!1520326 (ite c!731219 lt!1520325 lt!1520327) (ite c!731219 lt!1520308 lt!1520330) (hashF!6453 hm!64)))))

(declare-fun bm!295455 () Bool)

(declare-fun call!295458 () Bool)

(declare-fun allKeysSameHash!116 (List!48036 (_ BitVec 64) Hashable!4421) Bool)

(assert (=> bm!295455 (= call!295458 (allKeysSameHash!116 call!295472 (ite c!731219 lt!1520325 lt!1520327) (hashF!6453 hm!64)))))

(declare-fun bm!295456 () Bool)

(declare-fun call!295466 () ListLongMap!791)

(declare-fun forall!8613 (List!48037 Int) Bool)

(assert (=> bm!295456 (= call!295461 (forall!8613 (toList!2175 call!295466) (ite c!731219 lambda!131879 lambda!131880)))))

(declare-fun bm!295457 () Bool)

(declare-fun call!295456 () ListMap!1451)

(declare-fun call!295483 () ListMap!1451)

(assert (=> bm!295457 (= call!295456 call!295483)))

(declare-fun b!4298604 () Bool)

(declare-fun e!2671732 () ListMap!1451)

(declare-fun call!295460 () ListMap!1451)

(assert (=> b!4298604 (= e!2671732 call!295460)))

(declare-fun lt!1520306 () ListMap!1451)

(declare-fun bm!295458 () Bool)

(declare-fun lt!1520340 () ListMap!1451)

(declare-fun lemmaEquivalentThenSameContains!28 (ListMap!1451 ListMap!1451 K!9009) Unit!66645)

(assert (=> bm!295458 (= call!295469 (lemmaEquivalentThenSameContains!28 (ite c!731219 lt!1520340 lt!1520347) (ite c!731219 lt!1520306 lt!1520343) k0!1716))))

(declare-fun bm!295459 () Bool)

(declare-fun call!295463 () Bool)

(assert (=> bm!295459 (= call!295463 (allKeysSameHash!116 (ite c!731219 lt!1520311 lt!1520356) (ite c!731219 lt!1520325 lt!1520327) (hashF!6453 hm!64)))))

(declare-fun b!4298605 () Bool)

(declare-fun call!295484 () Bool)

(assert (=> b!4298605 (= e!2671729 call!295484)))

(declare-fun b!4298606 () Bool)

(declare-fun e!2671736 () Bool)

(assert (=> b!4298606 (= e!2671736 call!295484)))

(declare-fun bm!295460 () Bool)

(declare-fun apply!10869 (MutLongMap!4505 (_ BitVec 64)) List!48036)

(assert (=> bm!295460 (= call!295480 (apply!10869 (v!41860 (underlying!9240 hm!64)) (ite c!731219 lt!1520325 lt!1520327)))))

(declare-fun bm!295461 () Bool)

(assert (=> bm!295461 (= call!295462 (+!154 lt!1520332 (tuple2!45793 k0!1716 v!9471)))))

(declare-fun bm!295462 () Bool)

(declare-fun update!313 (MutLongMap!4505 (_ BitVec 64) List!48036) tuple2!45798)

(assert (=> bm!295462 (= call!295477 (update!313 (v!41860 (underlying!9240 hm!64)) (ite c!731219 lt!1520325 lt!1520327) (ite c!731219 lt!1520308 lt!1520330)))))

(declare-fun bm!295463 () Bool)

(declare-fun call!295470 () Unit!66645)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!107 (List!48037 (_ BitVec 64) List!48036 Hashable!4421) Unit!66645)

(assert (=> bm!295463 (= call!295470 (lemmaInLongMapAllKeySameHashThenForTuple!107 (toList!2175 lt!1520326) (ite c!731219 lt!1520325 lt!1520327) (ite c!731219 lt!1520311 lt!1520356) (hashF!6453 hm!64)))))

(declare-fun bm!295464 () Bool)

(assert (=> bm!295464 (= call!295482 (contains!9830 (ite c!731219 lt!1520340 lt!1520347) k0!1716))))

(declare-fun b!4298607 () Bool)

(assert (=> b!4298607 (= call!295471 lt!1520332)))

(declare-fun lt!1520334 () Unit!66645)

(declare-fun Unit!66654 () Unit!66645)

(assert (=> b!4298607 (= lt!1520334 Unit!66654)))

(assert (=> b!4298607 call!295455))

(declare-fun Unit!66655 () Unit!66645)

(assert (=> b!4298607 (= e!2671731 Unit!66655)))

(declare-fun bm!295465 () Bool)

(declare-fun eq!93 (ListMap!1451 ListMap!1451) Bool)

(assert (=> bm!295465 (= call!295475 (eq!93 call!295474 e!2671732))))

(declare-fun c!731221 () Bool)

(assert (=> bm!295465 (= c!731221 c!731218)))

(declare-fun bm!295466 () Bool)

(assert (=> bm!295466 (= call!295478 (contains!9830 (ite c!731219 lt!1520306 call!295471) k0!1716))))

(declare-fun b!4298608 () Bool)

(declare-fun res!1761821 () Bool)

(assert (=> b!4298608 (=> (not res!1761821) (not e!2671737))))

(assert (=> b!4298608 (= res!1761821 (valid!3483 (_2!26176 lt!1520316)))))

(declare-fun bm!295467 () Bool)

(declare-fun lt!1520349 () ListLongMap!791)

(assert (=> bm!295467 (= call!295465 (forall!8613 (ite c!731219 (toList!2175 lt!1520349) (toList!2175 lt!1520309)) (ite c!731219 lambda!131879 lambda!131880)))))

(declare-fun b!4298609 () Bool)

(assert (=> b!4298609 (= call!295456 lt!1520332)))

(declare-fun lt!1520336 () Unit!66645)

(declare-fun Unit!66656 () Unit!66645)

(assert (=> b!4298609 (= lt!1520336 Unit!66656)))

(assert (=> b!4298609 call!295455))

(declare-fun Unit!66657 () Unit!66645)

(assert (=> b!4298609 (= e!2671730 Unit!66657)))

(declare-fun bm!295468 () Bool)

(declare-fun allKeysSameHashInMap!264 (ListLongMap!791 Hashable!4421) Bool)

(assert (=> bm!295468 (= call!295459 (allKeysSameHashInMap!264 call!295466 (hashF!6453 hm!64)))))

(declare-fun bm!295469 () Bool)

(declare-fun lt!1520341 () tuple2!45798)

(assert (=> bm!295469 (= call!295466 (map!9872 (ite c!731219 (_2!26178 lt!1520322) (_2!26178 lt!1520341))))))

(declare-fun b!4298610 () Bool)

(declare-fun Unit!66658 () Unit!66645)

(declare-fun Unit!66659 () Unit!66645)

(assert (=> b!4298610 (= e!2671739 (tuple2!45795 (_1!26178 lt!1520341) (_2!26179 (ite (_1!26178 lt!1520341) (tuple2!45801 Unit!66658 (HashMap!4411 (Cell!17832 (_2!26178 lt!1520341)) (hashF!6453 hm!64) (bvadd (_size!9054 hm!64) #b00000000000000000000000000000001) (defaultValue!4582 hm!64))) (tuple2!45801 Unit!66659 lt!1520331)))))))

(assert (=> b!4298610 (= lt!1520327 call!295485)))

(declare-fun c!731220 () Bool)

(declare-fun contains!9832 (MutLongMap!4505 (_ BitVec 64)) Bool)

(assert (=> b!4298610 (= c!731220 (contains!9832 (v!41860 (underlying!9240 hm!64)) lt!1520327))))

(declare-fun e!2671735 () List!48036)

(assert (=> b!4298610 (= lt!1520356 e!2671735)))

(assert (=> b!4298610 (= lt!1520330 (Cons!47912 (tuple2!45793 k0!1716 v!9471) lt!1520356))))

(assert (=> b!4298610 (= lt!1520341 call!295477)))

(assert (=> b!4298610 (= lt!1520331 (HashMap!4411 (Cell!17832 (_2!26178 lt!1520341)) (hashF!6453 hm!64) (_size!9054 hm!64) (defaultValue!4582 hm!64)))))

(declare-fun c!731217 () Bool)

(assert (=> b!4298610 (= c!731217 (_1!26178 lt!1520341))))

(declare-fun lt!1520342 () Unit!66645)

(assert (=> b!4298610 (= lt!1520342 e!2671731)))

(declare-fun b!4298611 () Bool)

(assert (=> b!4298611 (= e!2671732 (+!154 call!295460 (tuple2!45793 k0!1716 v!9471)))))

(assert (=> b!4298612 call!295479))

(declare-fun lt!1520314 () Unit!66645)

(declare-fun Unit!66660 () Unit!66645)

(assert (=> b!4298612 (= lt!1520314 Unit!66660)))

(assert (=> b!4298612 call!295459))

(declare-fun lt!1520337 () Unit!66645)

(declare-fun Unit!66661 () Unit!66645)

(assert (=> b!4298612 (= lt!1520337 Unit!66661)))

(assert (=> b!4298612 call!295461))

(declare-fun lt!1520351 () Unit!66645)

(declare-fun lt!1520335 () Unit!66645)

(assert (=> b!4298612 (= lt!1520351 lt!1520335)))

(assert (=> b!4298612 (= call!295482 call!295478)))

(assert (=> b!4298612 (= lt!1520335 call!295469)))

(assert (=> b!4298612 (= lt!1520306 call!295462)))

(assert (=> b!4298612 (= lt!1520340 call!295456)))

(declare-fun lt!1520354 () Unit!66645)

(declare-fun lt!1520321 () Unit!66645)

(assert (=> b!4298612 (= lt!1520354 lt!1520321)))

(assert (=> b!4298612 call!295473))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!28 (ListLongMap!791 (_ BitVec 64) List!48036 K!9009 V!9211 Hashable!4421) Unit!66645)

(assert (=> b!4298612 (= lt!1520321 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!28 lt!1520326 lt!1520325 lt!1520308 k0!1716 v!9471 (hashF!6453 hm!64)))))

(declare-fun lt!1520328 () Unit!66645)

(declare-fun lt!1520344 () Unit!66645)

(assert (=> b!4298612 (= lt!1520328 lt!1520344)))

(assert (=> b!4298612 e!2671736))

(declare-fun res!1761819 () Bool)

(assert (=> b!4298612 (=> (not res!1761819) (not e!2671736))))

(assert (=> b!4298612 (= res!1761819 call!295465)))

(assert (=> b!4298612 (= lt!1520349 call!295481)))

(assert (=> b!4298612 (= lt!1520344 call!295468)))

(declare-fun lt!1520320 () Unit!66645)

(declare-fun Unit!66662 () Unit!66645)

(assert (=> b!4298612 (= lt!1520320 Unit!66662)))

(declare-fun noDuplicateKeys!144 (List!48036) Bool)

(assert (=> b!4298612 (noDuplicateKeys!144 lt!1520308)))

(declare-fun lt!1520339 () Unit!66645)

(declare-fun Unit!66663 () Unit!66645)

(assert (=> b!4298612 (= lt!1520339 Unit!66663)))

(declare-fun containsKey!223 (List!48036 K!9009) Bool)

(assert (=> b!4298612 (not (containsKey!223 call!295472 k0!1716))))

(declare-fun lt!1520319 () Unit!66645)

(declare-fun Unit!66664 () Unit!66645)

(assert (=> b!4298612 (= lt!1520319 Unit!66664)))

(declare-fun lt!1520357 () Unit!66645)

(declare-fun lt!1520355 () Unit!66645)

(assert (=> b!4298612 (= lt!1520357 lt!1520355)))

(assert (=> b!4298612 (noDuplicateKeys!144 call!295472)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!121 (List!48036 K!9009) Unit!66645)

(assert (=> b!4298612 (= lt!1520355 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!121 lt!1520311 k0!1716))))

(declare-fun lt!1520323 () Unit!66645)

(declare-fun lt!1520315 () Unit!66645)

(assert (=> b!4298612 (= lt!1520323 lt!1520315)))

(assert (=> b!4298612 call!295458))

(assert (=> b!4298612 (= lt!1520315 call!295476)))

(declare-fun lt!1520350 () Unit!66645)

(declare-fun lt!1520346 () Unit!66645)

(assert (=> b!4298612 (= lt!1520350 lt!1520346)))

(assert (=> b!4298612 call!295463))

(assert (=> b!4298612 (= lt!1520346 call!295470)))

(declare-fun Unit!66665 () Unit!66645)

(assert (=> b!4298612 (= e!2671730 Unit!66665)))

(declare-fun bm!295470 () Bool)

(assert (=> bm!295470 (= call!295471 call!295483)))

(declare-fun bm!295471 () Bool)

(declare-fun +!155 (ListLongMap!791 tuple2!45796) ListLongMap!791)

(assert (=> bm!295471 (= call!295481 (+!155 lt!1520326 (ite c!731219 (tuple2!45797 lt!1520325 lt!1520308) (tuple2!45797 lt!1520327 lt!1520330))))))

(declare-fun b!4298613 () Bool)

(assert (=> b!4298613 (= e!2671735 Nil!47912)))

(declare-fun bm!295472 () Bool)

(declare-fun removePairForKey!133 (List!48036 K!9009) List!48036)

(assert (=> bm!295472 (= call!295472 (removePairForKey!133 (ite c!731219 lt!1520311 lt!1520356) k0!1716))))

(declare-fun b!4298614 () Bool)

(assert (=> b!4298614 (= e!2671735 call!295480)))

(declare-fun bm!295473 () Bool)

(declare-fun call!295457 () ListMap!1451)

(assert (=> bm!295473 (= call!295457 (extractMap!264 (toList!2175 call!295481)))))

(declare-fun bm!295474 () Bool)

(declare-fun hash!832 (Hashable!4421 K!9009) (_ BitVec 64))

(assert (=> bm!295474 (= call!295485 (hash!832 (hashF!6453 hm!64) k0!1716))))

(declare-fun bm!295475 () Bool)

(assert (=> bm!295475 (= call!295460 (map!9871 hm!64))))

(declare-fun bm!295476 () Bool)

(assert (=> bm!295476 (= call!295483 (map!9871 (ite c!731219 lt!1520352 lt!1520331)))))

(declare-fun b!4298615 () Bool)

(assert (=> b!4298615 (= e!2671734 call!295475)))

(declare-fun bm!295477 () Bool)

(declare-fun call!295464 () ListMap!1451)

(assert (=> bm!295477 (= call!295473 (eq!93 call!295457 call!295464))))

(declare-fun b!4298616 () Bool)

(declare-fun lt!1520348 () Unit!66645)

(assert (=> b!4298616 (= e!2671738 lt!1520348)))

(declare-fun lt!1520318 () Unit!66645)

(assert (=> b!4298616 (= lt!1520318 call!295470)))

(assert (=> b!4298616 call!295463))

(declare-fun lt!1520345 () Unit!66645)

(assert (=> b!4298616 (= lt!1520345 lt!1520318)))

(assert (=> b!4298616 (= lt!1520348 call!295476)))

(assert (=> b!4298616 call!295458))

(declare-fun bm!295478 () Bool)

(assert (=> bm!295478 (= call!295484 (allKeysSameHashInMap!264 (ite c!731219 lt!1520349 lt!1520309) (hashF!6453 hm!64)))))

(declare-fun bm!295479 () Bool)

(assert (=> bm!295479 (= call!295479 (eq!93 (ite c!731219 call!295456 call!295471) call!295462))))

(declare-fun bm!295480 () Bool)

(assert (=> bm!295480 (= call!295464 (+!154 call!295467 (tuple2!45793 k0!1716 v!9471)))))

(declare-fun b!4298617 () Bool)

(declare-fun Unit!66666 () Unit!66645)

(assert (=> b!4298617 (= e!2671738 Unit!66666)))

(assert (= (and d!1266427 c!731219) b!4298601))

(assert (= (and d!1266427 (not c!731219)) b!4298610))

(assert (= (and b!4298601 c!731215) b!4298612))

(assert (= (and b!4298601 (not c!731215)) b!4298609))

(assert (= (and b!4298612 res!1761819) b!4298606))

(assert (= (or b!4298612 b!4298609) bm!295457))

(assert (= (and b!4298610 c!731220) b!4298614))

(assert (= (and b!4298610 (not c!731220)) b!4298613))

(assert (= (and b!4298610 c!731217) b!4298599))

(assert (= (and b!4298610 (not c!731217)) b!4298607))

(assert (= (and b!4298599 c!731216) b!4298616))

(assert (= (and b!4298599 (not c!731216)) b!4298617))

(assert (= (and b!4298599 res!1761820) b!4298605))

(assert (= (or b!4298599 b!4298607) bm!295470))

(assert (= (or b!4298601 b!4298614) bm!295460))

(assert (= (or b!4298612 b!4298599) bm!295454))

(assert (= (or b!4298612 b!4298599) bm!295461))

(assert (= (or b!4298612 b!4298599) bm!295469))

(assert (= (or b!4298606 b!4298605) bm!295478))

(assert (= (or b!4298612 b!4298599) bm!295467))

(assert (= (or b!4298612 b!4298599) bm!295450))

(assert (= (or b!4298601 b!4298610) bm!295462))

(assert (= (or b!4298609 b!4298607) bm!295452))

(assert (= (or b!4298612 b!4298599) bm!295458))

(assert (= (or b!4298601 b!4298610) bm!295474))

(assert (= (or b!4298612 b!4298599) bm!295464))

(assert (= (or b!4298612 b!4298601 b!4298616) bm!295472))

(assert (= (or bm!295457 bm!295470) bm!295476))

(assert (= (or b!4298612 b!4298599) bm!295471))

(assert (= (or b!4298612 b!4298616) bm!295453))

(assert (= (or b!4298612 b!4298616) bm!295463))

(assert (= (or b!4298612 b!4298616) bm!295459))

(assert (= (or b!4298612 b!4298599) bm!295466))

(assert (= (or b!4298612 b!4298599) bm!295456))

(assert (= (or b!4298612 b!4298599) bm!295473))

(assert (= (or b!4298612 b!4298599) bm!295479))

(assert (= (or b!4298612 b!4298599) bm!295480))

(assert (= (or b!4298612 b!4298599) bm!295468))

(assert (= (or b!4298612 b!4298616) bm!295455))

(assert (= (or b!4298612 b!4298599) bm!295477))

(assert (= (and d!1266427 res!1761822) b!4298608))

(assert (= (and b!4298608 res!1761821) b!4298603))

(assert (= (and b!4298603 c!731218) b!4298602))

(assert (= (and b!4298603 (not c!731218)) b!4298615))

(assert (= (and b!4298602 res!1761818) b!4298600))

(assert (= (or b!4298600 b!4298615) bm!295475))

(assert (= (or b!4298602 b!4298600 b!4298615) bm!295451))

(assert (= (or b!4298600 b!4298615) bm!295465))

(assert (= (and bm!295465 c!731221) b!4298611))

(assert (= (and bm!295465 (not c!731221)) b!4298604))

(declare-fun m!4890663 () Bool)

(assert (=> bm!295467 m!4890663))

(declare-fun m!4890665 () Bool)

(assert (=> bm!295464 m!4890665))

(assert (=> bm!295475 m!4890653))

(declare-fun m!4890667 () Bool)

(assert (=> b!4298611 m!4890667))

(declare-fun m!4890669 () Bool)

(assert (=> b!4298599 m!4890669))

(declare-fun m!4890671 () Bool)

(assert (=> b!4298599 m!4890671))

(declare-fun m!4890673 () Bool)

(assert (=> b!4298599 m!4890673))

(declare-fun m!4890675 () Bool)

(assert (=> b!4298599 m!4890675))

(declare-fun m!4890677 () Bool)

(assert (=> b!4298612 m!4890677))

(declare-fun m!4890679 () Bool)

(assert (=> b!4298612 m!4890679))

(declare-fun m!4890681 () Bool)

(assert (=> b!4298612 m!4890681))

(declare-fun m!4890683 () Bool)

(assert (=> b!4298612 m!4890683))

(declare-fun m!4890685 () Bool)

(assert (=> b!4298612 m!4890685))

(declare-fun m!4890687 () Bool)

(assert (=> bm!295458 m!4890687))

(declare-fun m!4890689 () Bool)

(assert (=> bm!295459 m!4890689))

(declare-fun m!4890691 () Bool)

(assert (=> bm!295456 m!4890691))

(declare-fun m!4890693 () Bool)

(assert (=> d!1266427 m!4890693))

(declare-fun m!4890695 () Bool)

(assert (=> d!1266427 m!4890695))

(assert (=> d!1266427 m!4890653))

(assert (=> d!1266427 m!4890661))

(declare-fun m!4890697 () Bool)

(assert (=> bm!295469 m!4890697))

(declare-fun m!4890699 () Bool)

(assert (=> bm!295480 m!4890699))

(declare-fun m!4890701 () Bool)

(assert (=> bm!295461 m!4890701))

(declare-fun m!4890703 () Bool)

(assert (=> bm!295468 m!4890703))

(declare-fun m!4890705 () Bool)

(assert (=> bm!295472 m!4890705))

(declare-fun m!4890707 () Bool)

(assert (=> bm!295476 m!4890707))

(declare-fun m!4890709 () Bool)

(assert (=> bm!295451 m!4890709))

(declare-fun m!4890711 () Bool)

(assert (=> bm!295477 m!4890711))

(declare-fun m!4890713 () Bool)

(assert (=> bm!295455 m!4890713))

(declare-fun m!4890715 () Bool)

(assert (=> b!4298608 m!4890715))

(declare-fun m!4890717 () Bool)

(assert (=> bm!295466 m!4890717))

(declare-fun m!4890719 () Bool)

(assert (=> bm!295465 m!4890719))

(declare-fun m!4890721 () Bool)

(assert (=> bm!295479 m!4890721))

(declare-fun m!4890723 () Bool)

(assert (=> bm!295474 m!4890723))

(declare-fun m!4890725 () Bool)

(assert (=> bm!295454 m!4890725))

(declare-fun m!4890727 () Bool)

(assert (=> bm!295450 m!4890727))

(declare-fun m!4890729 () Bool)

(assert (=> b!4298610 m!4890729))

(declare-fun m!4890731 () Bool)

(assert (=> bm!295473 m!4890731))

(declare-fun m!4890733 () Bool)

(assert (=> bm!295462 m!4890733))

(declare-fun m!4890735 () Bool)

(assert (=> bm!295452 m!4890735))

(declare-fun m!4890737 () Bool)

(assert (=> bm!295453 m!4890737))

(declare-fun m!4890739 () Bool)

(assert (=> bm!295460 m!4890739))

(declare-fun m!4890741 () Bool)

(assert (=> bm!295471 m!4890741))

(declare-fun m!4890743 () Bool)

(assert (=> b!4298602 m!4890743))

(declare-fun m!4890745 () Bool)

(assert (=> bm!295463 m!4890745))

(declare-fun m!4890747 () Bool)

(assert (=> bm!295478 m!4890747))

(assert (=> b!4298560 d!1266427))

(declare-fun d!1266429 () Bool)

(declare-fun e!2671742 () Bool)

(assert (=> d!1266429 e!2671742))

(declare-fun res!1761828 () Bool)

(assert (=> d!1266429 (=> (not res!1761828) (not e!2671742))))

(declare-fun lt!1520372 () ListMap!1451)

(assert (=> d!1266429 (= res!1761828 (contains!9830 lt!1520372 (_1!26175 lt!1520194)))))

(declare-fun lt!1520371 () List!48036)

(assert (=> d!1266429 (= lt!1520372 (ListMap!1452 lt!1520371))))

(declare-fun lt!1520370 () Unit!66645)

(declare-fun lt!1520369 () Unit!66645)

(assert (=> d!1266429 (= lt!1520370 lt!1520369)))

(declare-datatypes ((Option!10156 0))(
  ( (None!10155) (Some!10155 (v!41862 V!9211)) )
))
(declare-fun getValueByKey!205 (List!48036 K!9009) Option!10156)

(assert (=> d!1266429 (= (getValueByKey!205 lt!1520371 (_1!26175 lt!1520194)) (Some!10155 (_2!26175 lt!1520194)))))

(declare-fun lemmaContainsTupThenGetReturnValue!36 (List!48036 K!9009 V!9211) Unit!66645)

(assert (=> d!1266429 (= lt!1520369 (lemmaContainsTupThenGetReturnValue!36 lt!1520371 (_1!26175 lt!1520194) (_2!26175 lt!1520194)))))

(declare-fun insertNoDuplicatedKeys!14 (List!48036 K!9009 V!9211) List!48036)

(assert (=> d!1266429 (= lt!1520371 (insertNoDuplicatedKeys!14 (toList!2174 lt!1520193) (_1!26175 lt!1520194) (_2!26175 lt!1520194)))))

(assert (=> d!1266429 (= (+!154 lt!1520193 lt!1520194) lt!1520372)))

(declare-fun b!4298622 () Bool)

(declare-fun res!1761827 () Bool)

(assert (=> b!4298622 (=> (not res!1761827) (not e!2671742))))

(assert (=> b!4298622 (= res!1761827 (= (getValueByKey!205 (toList!2174 lt!1520372) (_1!26175 lt!1520194)) (Some!10155 (_2!26175 lt!1520194))))))

(declare-fun b!4298623 () Bool)

(declare-fun contains!9833 (List!48036 tuple2!45792) Bool)

(assert (=> b!4298623 (= e!2671742 (contains!9833 (toList!2174 lt!1520372) lt!1520194))))

(assert (= (and d!1266429 res!1761828) b!4298622))

(assert (= (and b!4298622 res!1761827) b!4298623))

(declare-fun m!4890749 () Bool)

(assert (=> d!1266429 m!4890749))

(declare-fun m!4890751 () Bool)

(assert (=> d!1266429 m!4890751))

(declare-fun m!4890753 () Bool)

(assert (=> d!1266429 m!4890753))

(declare-fun m!4890755 () Bool)

(assert (=> d!1266429 m!4890755))

(declare-fun m!4890757 () Bool)

(assert (=> b!4298622 m!4890757))

(declare-fun m!4890759 () Bool)

(assert (=> b!4298623 m!4890759))

(assert (=> b!4298560 d!1266429))

(declare-fun d!1266431 () Bool)

(assert (=> d!1266431 (= (array_inv!5155 (_keys!4805 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) (bvsge (size!35234 (_keys!4805 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298555 d!1266431))

(declare-fun d!1266433 () Bool)

(assert (=> d!1266433 (= (array_inv!5156 (_values!4786 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) (bvsge (size!35235 (_values!4786 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298555 d!1266433))

(declare-fun bs!603900 () Bool)

(declare-fun b!4298628 () Bool)

(assert (= bs!603900 (and b!4298628 b!4298612)))

(declare-fun lambda!131883 () Int)

(assert (=> bs!603900 (= lambda!131883 lambda!131879)))

(declare-fun bs!603901 () Bool)

(assert (= bs!603901 (and b!4298628 b!4298599)))

(assert (=> bs!603901 (= lambda!131883 lambda!131880)))

(declare-fun d!1266435 () Bool)

(declare-fun res!1761833 () Bool)

(declare-fun e!2671745 () Bool)

(assert (=> d!1266435 (=> (not res!1761833) (not e!2671745))))

(declare-fun valid!3484 (MutLongMap!4505) Bool)

(assert (=> d!1266435 (= res!1761833 (valid!3484 (v!41860 (underlying!9240 hm!64))))))

(assert (=> d!1266435 (= (valid!3483 hm!64) e!2671745)))

(declare-fun res!1761834 () Bool)

(assert (=> b!4298628 (=> (not res!1761834) (not e!2671745))))

(assert (=> b!4298628 (= res!1761834 (forall!8613 (toList!2175 (map!9872 (v!41860 (underlying!9240 hm!64)))) lambda!131883))))

(declare-fun b!4298629 () Bool)

(assert (=> b!4298629 (= e!2671745 (allKeysSameHashInMap!264 (map!9872 (v!41860 (underlying!9240 hm!64))) (hashF!6453 hm!64)))))

(assert (= (and d!1266435 res!1761833) b!4298628))

(assert (= (and b!4298628 res!1761834) b!4298629))

(declare-fun m!4890761 () Bool)

(assert (=> d!1266435 m!4890761))

(assert (=> b!4298628 m!4890695))

(declare-fun m!4890763 () Bool)

(assert (=> b!4298628 m!4890763))

(assert (=> b!4298629 m!4890695))

(assert (=> b!4298629 m!4890695))

(declare-fun m!4890765 () Bool)

(assert (=> b!4298629 m!4890765))

(assert (=> b!4298551 d!1266435))

(declare-fun bs!603902 () Bool)

(declare-fun b!4298630 () Bool)

(assert (= bs!603902 (and b!4298630 b!4298612)))

(declare-fun lambda!131884 () Int)

(assert (=> bs!603902 (= lambda!131884 lambda!131879)))

(declare-fun bs!603903 () Bool)

(assert (= bs!603903 (and b!4298630 b!4298599)))

(assert (=> bs!603903 (= lambda!131884 lambda!131880)))

(declare-fun bs!603904 () Bool)

(assert (= bs!603904 (and b!4298630 b!4298628)))

(assert (=> bs!603904 (= lambda!131884 lambda!131883)))

(declare-fun d!1266437 () Bool)

(declare-fun res!1761835 () Bool)

(declare-fun e!2671746 () Bool)

(assert (=> d!1266437 (=> (not res!1761835) (not e!2671746))))

(assert (=> d!1266437 (= res!1761835 (valid!3484 (v!41860 (underlying!9240 (_2!26176 lt!1520195)))))))

(assert (=> d!1266437 (= (valid!3483 (_2!26176 lt!1520195)) e!2671746)))

(declare-fun res!1761836 () Bool)

(assert (=> b!4298630 (=> (not res!1761836) (not e!2671746))))

(assert (=> b!4298630 (= res!1761836 (forall!8613 (toList!2175 (map!9872 (v!41860 (underlying!9240 (_2!26176 lt!1520195))))) lambda!131884))))

(declare-fun b!4298631 () Bool)

(assert (=> b!4298631 (= e!2671746 (allKeysSameHashInMap!264 (map!9872 (v!41860 (underlying!9240 (_2!26176 lt!1520195)))) (hashF!6453 (_2!26176 lt!1520195))))))

(assert (= (and d!1266437 res!1761835) b!4298630))

(assert (= (and b!4298630 res!1761836) b!4298631))

(declare-fun m!4890767 () Bool)

(assert (=> d!1266437 m!4890767))

(declare-fun m!4890769 () Bool)

(assert (=> b!4298630 m!4890769))

(declare-fun m!4890771 () Bool)

(assert (=> b!4298630 m!4890771))

(assert (=> b!4298631 m!4890769))

(assert (=> b!4298631 m!4890769))

(declare-fun m!4890773 () Bool)

(assert (=> b!4298631 m!4890773))

(assert (=> b!4298557 d!1266437))

(declare-fun d!1266439 () Bool)

(declare-fun res!1761841 () Bool)

(declare-fun e!2671751 () Bool)

(assert (=> d!1266439 (=> res!1761841 e!2671751)))

(assert (=> d!1266439 (= res!1761841 ((_ is Nil!47912) (toList!2174 lt!1520193)))))

(assert (=> d!1266439 (= (forall!8612 (toList!2174 lt!1520193) p!6034) e!2671751)))

(declare-fun b!4298636 () Bool)

(declare-fun e!2671752 () Bool)

(assert (=> b!4298636 (= e!2671751 e!2671752)))

(declare-fun res!1761842 () Bool)

(assert (=> b!4298636 (=> (not res!1761842) (not e!2671752))))

(assert (=> b!4298636 (= res!1761842 (dynLambda!20348 p!6034 (h!53332 (toList!2174 lt!1520193))))))

(declare-fun b!4298637 () Bool)

(assert (=> b!4298637 (= e!2671752 (forall!8612 (t!354697 (toList!2174 lt!1520193)) p!6034))))

(assert (= (and d!1266439 (not res!1761841)) b!4298636))

(assert (= (and b!4298636 res!1761842) b!4298637))

(declare-fun b_lambda!126229 () Bool)

(assert (=> (not b_lambda!126229) (not b!4298636)))

(declare-fun t!354699 () Bool)

(declare-fun tb!257147 () Bool)

(assert (=> (and start!412706 (= p!6034 p!6034) t!354699) tb!257147))

(declare-fun result!314400 () Bool)

(assert (=> tb!257147 (= result!314400 true)))

(assert (=> b!4298636 t!354699))

(declare-fun b_and!339205 () Bool)

(assert (= b_and!339203 (and (=> t!354699 result!314400) b_and!339205)))

(declare-fun m!4890775 () Bool)

(assert (=> b!4298636 m!4890775))

(declare-fun m!4890777 () Bool)

(assert (=> b!4298637 m!4890777))

(assert (=> b!4298554 d!1266439))

(declare-fun d!1266441 () Bool)

(declare-fun lt!1520375 () ListMap!1451)

(declare-fun invariantList!533 (List!48036) Bool)

(assert (=> d!1266441 (invariantList!533 (toList!2174 lt!1520375))))

(assert (=> d!1266441 (= lt!1520375 (extractMap!264 (toList!2175 (map!9872 (v!41860 (underlying!9240 hm!64))))))))

(assert (=> d!1266441 (valid!3483 hm!64)))

(assert (=> d!1266441 (= (map!9871 hm!64) lt!1520375)))

(declare-fun bs!603905 () Bool)

(assert (= bs!603905 d!1266441))

(declare-fun m!4890779 () Bool)

(assert (=> bs!603905 m!4890779))

(assert (=> bs!603905 m!4890695))

(declare-fun m!4890781 () Bool)

(assert (=> bs!603905 m!4890781))

(assert (=> bs!603905 m!4890661))

(assert (=> b!4298554 d!1266441))

(declare-fun b!4298642 () Bool)

(declare-fun tp!1320595 () Bool)

(declare-fun e!2671755 () Bool)

(assert (=> b!4298642 (= e!2671755 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320595))))

(assert (=> b!4298555 (= tp!1320589 e!2671755)))

(assert (= (and b!4298555 ((_ is Cons!47912) (zeroValue!4764 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64))))))) b!4298642))

(declare-fun e!2671756 () Bool)

(declare-fun tp!1320596 () Bool)

(declare-fun b!4298643 () Bool)

(assert (=> b!4298643 (= e!2671756 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320596))))

(assert (=> b!4298555 (= tp!1320590 e!2671756)))

(assert (= (and b!4298555 ((_ is Cons!47912) (minValue!4764 (v!41859 (underlying!9239 (v!41860 (underlying!9240 hm!64))))))) b!4298643))

(declare-fun tp!1320597 () Bool)

(declare-fun b!4298644 () Bool)

(declare-fun e!2671757 () Bool)

(assert (=> b!4298644 (= e!2671757 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320597))))

(assert (=> b!4298553 (= tp!1320588 e!2671757)))

(assert (= (and b!4298553 ((_ is Cons!47912) mapDefault!20238)) b!4298644))

(declare-fun mapNonEmpty!20241 () Bool)

(declare-fun mapRes!20241 () Bool)

(declare-fun tp!1320605 () Bool)

(declare-fun e!2671762 () Bool)

(assert (=> mapNonEmpty!20241 (= mapRes!20241 (and tp!1320605 e!2671762))))

(declare-fun mapValue!20241 () List!48036)

(declare-fun mapKey!20241 () (_ BitVec 32))

(declare-fun mapRest!20241 () (Array (_ BitVec 32) List!48036))

(assert (=> mapNonEmpty!20241 (= mapRest!20238 (store mapRest!20241 mapKey!20241 mapValue!20241))))

(declare-fun condMapEmpty!20241 () Bool)

(declare-fun mapDefault!20241 () List!48036)

(assert (=> mapNonEmpty!20238 (= condMapEmpty!20241 (= mapRest!20238 ((as const (Array (_ BitVec 32) List!48036)) mapDefault!20241)))))

(declare-fun e!2671763 () Bool)

(assert (=> mapNonEmpty!20238 (= tp!1320592 (and e!2671763 mapRes!20241))))

(declare-fun mapIsEmpty!20241 () Bool)

(assert (=> mapIsEmpty!20241 mapRes!20241))

(declare-fun b!4298651 () Bool)

(declare-fun tp!1320606 () Bool)

(assert (=> b!4298651 (= e!2671762 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320606))))

(declare-fun b!4298652 () Bool)

(declare-fun tp!1320604 () Bool)

(assert (=> b!4298652 (= e!2671763 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320604))))

(assert (= (and mapNonEmpty!20238 condMapEmpty!20241) mapIsEmpty!20241))

(assert (= (and mapNonEmpty!20238 (not condMapEmpty!20241)) mapNonEmpty!20241))

(assert (= (and mapNonEmpty!20241 ((_ is Cons!47912) mapValue!20241)) b!4298651))

(assert (= (and mapNonEmpty!20238 ((_ is Cons!47912) mapDefault!20241)) b!4298652))

(declare-fun m!4890783 () Bool)

(assert (=> mapNonEmpty!20241 m!4890783))

(declare-fun b!4298653 () Bool)

(declare-fun tp!1320607 () Bool)

(declare-fun e!2671764 () Bool)

(assert (=> b!4298653 (= e!2671764 (and tp_is_empty!23193 tp_is_empty!23195 tp!1320607))))

(assert (=> mapNonEmpty!20238 (= tp!1320591 e!2671764)))

(assert (= (and mapNonEmpty!20238 ((_ is Cons!47912) mapValue!20238)) b!4298653))

(declare-fun b_lambda!126231 () Bool)

(assert (= b_lambda!126229 (or (and start!412706 b_free!127931) b_lambda!126231)))

(check-sat (not bm!295467) tp_is_empty!23193 (not bm!295451) (not bm!295450) b_and!339205 (not b!4298653) (not b!4298608) (not b!4298643) (not b!4298644) (not b!4298629) (not d!1266427) (not bm!295461) (not bm!295464) b_and!339197 (not bm!295466) (not bm!295463) (not bm!295476) (not b!4298599) (not bm!295477) (not b!4298642) (not b!4298652) (not bm!295468) (not d!1266441) (not bm!295474) (not bm!295480) (not bm!295462) (not b_next!128633) (not mapNonEmpty!20241) (not bm!295454) (not d!1266435) b_and!339201 (not bm!295465) (not b!4298631) (not b!4298623) (not d!1266429) (not bm!295472) (not bm!295469) (not bm!295456) (not bm!295452) tp_is_empty!23195 (not b!4298651) (not b_next!128635) (not b!4298637) (not bm!295460) (not b!4298602) (not b_lambda!126227) (not b!4298630) (not b!4298612) (not bm!295473) (not b!4298611) (not bm!295478) (not b!4298628) (not d!1266437) (not bm!295459) (not b!4298622) (not bm!295455) (not bm!295458) (not bm!295471) (not b_lambda!126231) (not bm!295479) (not bm!295475) (not b_next!128637) (not b!4298610) (not bm!295453))
(check-sat b_and!339197 (not b_next!128633) b_and!339201 b_and!339205 (not b_next!128635) (not b_next!128637))
