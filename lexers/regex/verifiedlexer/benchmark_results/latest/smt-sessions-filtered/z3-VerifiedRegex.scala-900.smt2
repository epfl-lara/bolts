; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46856 () Bool)

(assert start!46856)

(declare-fun b!516289 () Bool)

(declare-fun b_free!13583 () Bool)

(declare-fun b_next!13587 () Bool)

(assert (=> b!516289 (= b_free!13583 (not b_next!13587))))

(declare-fun tp!161145 () Bool)

(declare-fun b_and!51043 () Bool)

(assert (=> b!516289 (= tp!161145 b_and!51043)))

(declare-fun b!516291 () Bool)

(declare-fun b_free!13585 () Bool)

(declare-fun b_next!13589 () Bool)

(assert (=> b!516291 (= b_free!13585 (not b_next!13589))))

(declare-fun tp!161149 () Bool)

(declare-fun b_and!51045 () Bool)

(assert (=> b!516291 (= tp!161149 b_and!51045)))

(declare-fun b_free!13587 () Bool)

(declare-fun b_next!13591 () Bool)

(assert (=> start!46856 (= b_free!13587 (not b_next!13591))))

(declare-fun tp!161142 () Bool)

(declare-fun b_and!51047 () Bool)

(assert (=> start!46856 (= tp!161142 b_and!51047)))

(declare-fun b!516281 () Bool)

(declare-fun e!308953 () Bool)

(declare-fun e!308956 () Bool)

(assert (=> b!516281 (= e!308953 e!308956)))

(declare-fun res!218959 () Bool)

(assert (=> b!516281 (=> (not res!218959) (not e!308956))))

(declare-datatypes ((K!1417 0))(
  ( (K!1418 (val!1797 Int)) )
))
(declare-datatypes ((V!1515 0))(
  ( (V!1516 (val!1798 Int)) )
))
(declare-datatypes ((tuple2!5800 0))(
  ( (tuple2!5801 (_1!3116 K!1417) (_2!3116 V!1515)) )
))
(declare-datatypes ((List!4736 0))(
  ( (Nil!4726) (Cons!4726 (h!10124 tuple2!5800) (t!73292 List!4736)) )
))
(declare-datatypes ((ListMap!193 0))(
  ( (ListMap!194 (toList!420 List!4736)) )
))
(declare-fun lt!214518 () ListMap!193)

(declare-fun p!6060 () Int)

(declare-fun forall!1401 (List!4736 Int) Bool)

(assert (=> b!516281 (= res!218959 (forall!1401 (toList!420 lt!214518) p!6060))))

(declare-datatypes ((array!2015 0))(
  ( (array!2016 (arr!926 (Array (_ BitVec 32) List!4736)) (size!3860 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!493 0))(
  ( (HashableExt!492 (__x!3454 Int)) )
))
(declare-datatypes ((array!2017 0))(
  ( (array!2018 (arr!927 (Array (_ BitVec 32) (_ BitVec 64))) (size!3861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1042 0))(
  ( (LongMapFixedSize!1043 (defaultEntry!872 Int) (mask!1946 (_ BitVec 32)) (extraKeys!767 (_ BitVec 32)) (zeroValue!777 List!4736) (minValue!777 List!4736) (_size!1151 (_ BitVec 32)) (_keys!812 array!2017) (_values!799 array!2015) (_vacant!582 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2025 0))(
  ( (Cell!2026 (v!15766 LongMapFixedSize!1042)) )
))
(declare-datatypes ((MutLongMap!521 0))(
  ( (LongMap!521 (underlying!1221 Cell!2025)) (MutLongMapExt!520 (__x!3455 Int)) )
))
(declare-datatypes ((Cell!2027 0))(
  ( (Cell!2028 (v!15767 MutLongMap!521)) )
))
(declare-datatypes ((MutableMap!493 0))(
  ( (MutableMapExt!492 (__x!3456 Int)) (HashMap!493 (underlying!1222 Cell!2027) (hashF!2376 Hashable!493) (_size!1152 (_ BitVec 32)) (defaultValue!642 Int)) )
))
(declare-fun hm!65 () MutableMap!493)

(declare-fun map!1040 (MutableMap!493) ListMap!193)

(assert (=> b!516281 (= lt!214518 (map!1040 hm!65))))

(declare-fun res!218955 () Bool)

(assert (=> start!46856 (=> (not res!218955) (not e!308953))))

(get-info :version)

(assert (=> start!46856 (= res!218955 ((_ is HashMap!493) hm!65))))

(assert (=> start!46856 e!308953))

(declare-fun e!308952 () Bool)

(assert (=> start!46856 e!308952))

(assert (=> start!46856 tp!161142))

(declare-fun tp_is_empty!2627 () Bool)

(assert (=> start!46856 tp_is_empty!2627))

(declare-fun b!516282 () Bool)

(declare-fun e!308954 () Bool)

(declare-fun e!308957 () Bool)

(declare-fun lt!214519 () MutLongMap!521)

(assert (=> b!516282 (= e!308954 (and e!308957 ((_ is LongMap!521) lt!214519)))))

(assert (=> b!516282 (= lt!214519 (v!15767 (underlying!1222 hm!65)))))

(declare-fun mapNonEmpty!2012 () Bool)

(declare-fun mapRes!2012 () Bool)

(declare-fun tp!161146 () Bool)

(declare-fun tp!161147 () Bool)

(assert (=> mapNonEmpty!2012 (= mapRes!2012 (and tp!161146 tp!161147))))

(declare-fun mapValue!2012 () List!4736)

(declare-fun mapKey!2012 () (_ BitVec 32))

(declare-fun mapRest!2012 () (Array (_ BitVec 32) List!4736))

(assert (=> mapNonEmpty!2012 (= (arr!926 (_values!799 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) (store mapRest!2012 mapKey!2012 mapValue!2012))))

(declare-fun b!516283 () Bool)

(declare-fun res!218956 () Bool)

(declare-fun e!308955 () Bool)

(assert (=> b!516283 (=> (not res!218956) (not e!308955))))

(declare-fun lt!214521 () ListMap!193)

(declare-fun lt!214520 () ListMap!193)

(declare-fun eq!33 (ListMap!193 ListMap!193) Bool)

(assert (=> b!516283 (= res!218956 (eq!33 lt!214521 lt!214520))))

(declare-fun b!516284 () Bool)

(declare-fun res!218962 () Bool)

(assert (=> b!516284 (=> (not res!218962) (not e!308955))))

(declare-fun invariantList!74 (List!4736) Bool)

(assert (=> b!516284 (= res!218962 (invariantList!74 (toList!420 lt!214518)))))

(declare-fun b!516285 () Bool)

(declare-fun e!308951 () Bool)

(declare-fun tp!161144 () Bool)

(assert (=> b!516285 (= e!308951 (and tp!161144 mapRes!2012))))

(declare-fun condMapEmpty!2012 () Bool)

(declare-fun mapDefault!2012 () List!4736)

(assert (=> b!516285 (= condMapEmpty!2012 (= (arr!926 (_values!799 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) ((as const (Array (_ BitVec 32) List!4736)) mapDefault!2012)))))

(declare-fun b!516286 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!826 (List!4736) (InoxSet tuple2!5800))

(assert (=> b!516286 (= e!308955 (not (= ((_ map implies) (content!826 (toList!420 lt!214520)) (content!826 (toList!420 lt!214518))) ((as const (InoxSet tuple2!5800)) true))))))

(declare-fun b!516287 () Bool)

(declare-fun res!218960 () Bool)

(assert (=> b!516287 (=> (not res!218960) (not e!308953))))

(declare-fun valid!484 (MutableMap!493) Bool)

(assert (=> b!516287 (= res!218960 (valid!484 hm!65))))

(declare-fun b!516288 () Bool)

(declare-fun res!218958 () Bool)

(assert (=> b!516288 (=> (not res!218958) (not e!308955))))

(assert (=> b!516288 (= res!218958 (invariantList!74 (toList!420 lt!214520)))))

(declare-fun mapIsEmpty!2012 () Bool)

(assert (=> mapIsEmpty!2012 mapRes!2012))

(declare-fun e!308959 () Bool)

(declare-fun tp!161148 () Bool)

(declare-fun tp!161143 () Bool)

(declare-fun array_inv!677 (array!2017) Bool)

(declare-fun array_inv!678 (array!2015) Bool)

(assert (=> b!516289 (= e!308959 (and tp!161145 tp!161148 tp!161143 (array_inv!677 (_keys!812 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) (array_inv!678 (_values!799 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) e!308951))))

(declare-fun b!516290 () Bool)

(declare-fun e!308960 () Bool)

(assert (=> b!516290 (= e!308957 e!308960)))

(assert (=> b!516291 (= e!308952 (and e!308954 tp!161149))))

(declare-fun b!516292 () Bool)

(declare-fun e!308958 () Bool)

(assert (=> b!516292 (= e!308958 e!308955)))

(declare-fun res!218957 () Bool)

(assert (=> b!516292 (=> (not res!218957) (not e!308955))))

(assert (=> b!516292 (= res!218957 (invariantList!74 (toList!420 lt!214521)))))

(declare-datatypes ((tuple2!5802 0))(
  ( (tuple2!5803 (_1!3117 Bool) (_2!3117 MutableMap!493)) )
))
(declare-fun lt!214522 () tuple2!5802)

(assert (=> b!516292 (= lt!214521 (map!1040 (_2!3117 lt!214522)))))

(declare-fun b!516293 () Bool)

(declare-fun res!218961 () Bool)

(assert (=> b!516293 (=> (not res!218961) (not e!308955))))

(assert (=> b!516293 (= res!218961 (_1!3117 lt!214522))))

(declare-fun b!516294 () Bool)

(assert (=> b!516294 (= e!308956 e!308958)))

(declare-fun res!218954 () Bool)

(assert (=> b!516294 (=> (not res!218954) (not e!308958))))

(assert (=> b!516294 (= res!218954 (valid!484 (_2!3117 lt!214522)))))

(declare-fun k0!1740 () K!1417)

(declare-fun remove!39 (MutableMap!493 K!1417) tuple2!5802)

(assert (=> b!516294 (= lt!214522 (remove!39 hm!65 k0!1740))))

(declare-fun -!36 (ListMap!193 K!1417) ListMap!193)

(assert (=> b!516294 (= lt!214520 (-!36 lt!214518 k0!1740))))

(declare-fun b!516295 () Bool)

(assert (=> b!516295 (= e!308960 e!308959)))

(assert (= (and start!46856 res!218955) b!516287))

(assert (= (and b!516287 res!218960) b!516281))

(assert (= (and b!516281 res!218959) b!516294))

(assert (= (and b!516294 res!218954) b!516292))

(assert (= (and b!516292 res!218957) b!516293))

(assert (= (and b!516293 res!218961) b!516283))

(assert (= (and b!516283 res!218956) b!516288))

(assert (= (and b!516288 res!218958) b!516284))

(assert (= (and b!516284 res!218962) b!516286))

(assert (= (and b!516285 condMapEmpty!2012) mapIsEmpty!2012))

(assert (= (and b!516285 (not condMapEmpty!2012)) mapNonEmpty!2012))

(assert (= b!516289 b!516285))

(assert (= b!516295 b!516289))

(assert (= b!516290 b!516295))

(assert (= (and b!516282 ((_ is LongMap!521) (v!15767 (underlying!1222 hm!65)))) b!516290))

(assert (= b!516291 b!516282))

(assert (= (and start!46856 ((_ is HashMap!493) hm!65)) b!516291))

(declare-fun m!762599 () Bool)

(assert (=> b!516294 m!762599))

(declare-fun m!762601 () Bool)

(assert (=> b!516294 m!762601))

(declare-fun m!762603 () Bool)

(assert (=> b!516294 m!762603))

(declare-fun m!762605 () Bool)

(assert (=> b!516286 m!762605))

(declare-fun m!762607 () Bool)

(assert (=> b!516286 m!762607))

(declare-fun m!762609 () Bool)

(assert (=> b!516289 m!762609))

(declare-fun m!762611 () Bool)

(assert (=> b!516289 m!762611))

(declare-fun m!762613 () Bool)

(assert (=> b!516284 m!762613))

(declare-fun m!762615 () Bool)

(assert (=> b!516281 m!762615))

(declare-fun m!762617 () Bool)

(assert (=> b!516281 m!762617))

(declare-fun m!762619 () Bool)

(assert (=> b!516287 m!762619))

(declare-fun m!762621 () Bool)

(assert (=> mapNonEmpty!2012 m!762621))

(declare-fun m!762623 () Bool)

(assert (=> b!516288 m!762623))

(declare-fun m!762625 () Bool)

(assert (=> b!516283 m!762625))

(declare-fun m!762627 () Bool)

(assert (=> b!516292 m!762627))

(declare-fun m!762629 () Bool)

(assert (=> b!516292 m!762629))

(check-sat (not b!516289) (not b!516288) (not b!516294) (not b!516281) (not b!516284) (not b!516292) (not b_next!13591) (not b!516283) (not b!516285) (not b!516286) (not mapNonEmpty!2012) (not b!516287) (not b_next!13587) (not b_next!13589) tp_is_empty!2627 b_and!51045 b_and!51047 b_and!51043)
(check-sat (not b_next!13591) (not b_next!13587) (not b_next!13589) b_and!51045 b_and!51047 b_and!51043)
(get-model)

(declare-fun d!184649 () Bool)

(declare-fun res!218967 () Bool)

(declare-fun e!308964 () Bool)

(assert (=> d!184649 (=> (not res!218967) (not e!308964))))

(declare-fun valid!485 (MutLongMap!521) Bool)

(assert (=> d!184649 (= res!218967 (valid!485 (v!15767 (underlying!1222 hm!65))))))

(assert (=> d!184649 (= (valid!484 hm!65) e!308964)))

(declare-fun b!516300 () Bool)

(declare-fun res!218968 () Bool)

(assert (=> b!516300 (=> (not res!218968) (not e!308964))))

(declare-fun lambda!14462 () Int)

(declare-datatypes ((tuple2!5804 0))(
  ( (tuple2!5805 (_1!3118 (_ BitVec 64)) (_2!3118 List!4736)) )
))
(declare-datatypes ((List!4737 0))(
  ( (Nil!4727) (Cons!4727 (h!10125 tuple2!5804) (t!73295 List!4737)) )
))
(declare-fun forall!1402 (List!4737 Int) Bool)

(declare-datatypes ((ListLongMap!79 0))(
  ( (ListLongMap!80 (toList!421 List!4737)) )
))
(declare-fun map!1041 (MutLongMap!521) ListLongMap!79)

(assert (=> b!516300 (= res!218968 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14462))))

(declare-fun b!516301 () Bool)

(declare-fun allKeysSameHashInMap!28 (ListLongMap!79 Hashable!493) Bool)

(assert (=> b!516301 (= e!308964 (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 hm!65))) (hashF!2376 hm!65)))))

(assert (= (and d!184649 res!218967) b!516300))

(assert (= (and b!516300 res!218968) b!516301))

(declare-fun m!762631 () Bool)

(assert (=> d!184649 m!762631))

(declare-fun m!762633 () Bool)

(assert (=> b!516300 m!762633))

(declare-fun m!762635 () Bool)

(assert (=> b!516300 m!762635))

(assert (=> b!516301 m!762633))

(assert (=> b!516301 m!762633))

(declare-fun m!762637 () Bool)

(assert (=> b!516301 m!762637))

(assert (=> b!516287 d!184649))

(declare-fun d!184651 () Bool)

(declare-fun noDuplicatedKeys!16 (List!4736) Bool)

(assert (=> d!184651 (= (invariantList!74 (toList!420 lt!214520)) (noDuplicatedKeys!16 (toList!420 lt!214520)))))

(declare-fun bs!59698 () Bool)

(assert (= bs!59698 d!184651))

(declare-fun m!762639 () Bool)

(assert (=> bs!59698 m!762639))

(assert (=> b!516288 d!184651))

(declare-fun d!184653 () Bool)

(assert (=> d!184653 (= (invariantList!74 (toList!420 lt!214521)) (noDuplicatedKeys!16 (toList!420 lt!214521)))))

(declare-fun bs!59699 () Bool)

(assert (= bs!59699 d!184653))

(declare-fun m!762641 () Bool)

(assert (=> bs!59699 m!762641))

(assert (=> b!516292 d!184653))

(declare-fun d!184655 () Bool)

(declare-fun lt!214525 () ListMap!193)

(assert (=> d!184655 (invariantList!74 (toList!420 lt!214525))))

(declare-fun extractMap!21 (List!4737) ListMap!193)

(assert (=> d!184655 (= lt!214525 (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))

(assert (=> d!184655 (valid!484 (_2!3117 lt!214522))))

(assert (=> d!184655 (= (map!1040 (_2!3117 lt!214522)) lt!214525)))

(declare-fun bs!59700 () Bool)

(assert (= bs!59700 d!184655))

(declare-fun m!762643 () Bool)

(assert (=> bs!59700 m!762643))

(declare-fun m!762645 () Bool)

(assert (=> bs!59700 m!762645))

(declare-fun m!762647 () Bool)

(assert (=> bs!59700 m!762647))

(assert (=> bs!59700 m!762599))

(assert (=> b!516292 d!184655))

(declare-fun d!184657 () Bool)

(assert (=> d!184657 (= (eq!33 lt!214521 lt!214520) (= (content!826 (toList!420 lt!214521)) (content!826 (toList!420 lt!214520))))))

(declare-fun bs!59701 () Bool)

(assert (= bs!59701 d!184657))

(declare-fun m!762649 () Bool)

(assert (=> bs!59701 m!762649))

(assert (=> bs!59701 m!762605))

(assert (=> b!516283 d!184657))

(declare-fun d!184659 () Bool)

(assert (=> d!184659 (= (invariantList!74 (toList!420 lt!214518)) (noDuplicatedKeys!16 (toList!420 lt!214518)))))

(declare-fun bs!59702 () Bool)

(assert (= bs!59702 d!184659))

(declare-fun m!762651 () Bool)

(assert (=> bs!59702 m!762651))

(assert (=> b!516284 d!184659))

(declare-fun d!184661 () Bool)

(assert (=> d!184661 (= (array_inv!677 (_keys!812 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) (bvsge (size!3861 (_keys!812 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516289 d!184661))

(declare-fun d!184663 () Bool)

(assert (=> d!184663 (= (array_inv!678 (_values!799 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) (bvsge (size!3860 (_values!799 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516289 d!184663))

(declare-fun bs!59703 () Bool)

(declare-fun b!516302 () Bool)

(assert (= bs!59703 (and b!516302 b!516300)))

(declare-fun lambda!14463 () Int)

(assert (=> bs!59703 (= lambda!14463 lambda!14462)))

(declare-fun d!184665 () Bool)

(declare-fun res!218969 () Bool)

(declare-fun e!308965 () Bool)

(assert (=> d!184665 (=> (not res!218969) (not e!308965))))

(assert (=> d!184665 (= res!218969 (valid!485 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))

(assert (=> d!184665 (= (valid!484 (_2!3117 lt!214522)) e!308965)))

(declare-fun res!218970 () Bool)

(assert (=> b!516302 (=> (not res!218970) (not e!308965))))

(assert (=> b!516302 (= res!218970 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))) lambda!14463))))

(declare-fun b!516303 () Bool)

(assert (=> b!516303 (= e!308965 (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))) (hashF!2376 (_2!3117 lt!214522))))))

(assert (= (and d!184665 res!218969) b!516302))

(assert (= (and b!516302 res!218970) b!516303))

(declare-fun m!762653 () Bool)

(assert (=> d!184665 m!762653))

(assert (=> b!516302 m!762645))

(declare-fun m!762655 () Bool)

(assert (=> b!516302 m!762655))

(assert (=> b!516303 m!762645))

(assert (=> b!516303 m!762645))

(declare-fun m!762657 () Bool)

(assert (=> b!516303 m!762657))

(assert (=> b!516294 d!184665))

(declare-fun bs!59704 () Bool)

(declare-fun b!516327 () Bool)

(assert (= bs!59704 (and b!516327 b!516300)))

(declare-fun lambda!14470 () Int)

(assert (=> bs!59704 (= lambda!14470 lambda!14462)))

(declare-fun bs!59705 () Bool)

(assert (= bs!59705 (and b!516327 b!516302)))

(assert (=> bs!59705 (= lambda!14470 lambda!14463)))

(declare-fun bm!37682 () Bool)

(declare-fun call!37690 () ListMap!193)

(declare-fun lt!214596 () ListLongMap!79)

(declare-fun c!100001 () Bool)

(declare-fun lt!214591 () ListLongMap!79)

(assert (=> bm!37682 (= call!37690 (extractMap!21 (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596))))))

(declare-fun b!516326 () Bool)

(declare-fun call!37692 () ListMap!193)

(declare-fun lt!214594 () ListMap!193)

(assert (=> b!516326 (= call!37692 lt!214594)))

(declare-datatypes ((Unit!8580 0))(
  ( (Unit!8581) )
))
(declare-fun lt!214610 () Unit!8580)

(declare-fun Unit!8582 () Unit!8580)

(assert (=> b!516326 (= lt!214610 Unit!8582)))

(declare-fun call!37694 () Bool)

(assert (=> b!516326 call!37694))

(declare-fun e!308982 () Unit!8580)

(declare-fun Unit!8583 () Unit!8580)

(assert (=> b!516326 (= e!308982 Unit!8583)))

(declare-fun e!308979 () tuple2!5802)

(declare-datatypes ((tuple2!5806 0))(
  ( (tuple2!5807 (_1!3119 Bool) (_2!3119 MutLongMap!521)) )
))
(declare-fun lt!214615 () tuple2!5806)

(declare-datatypes ((tuple2!5808 0))(
  ( (tuple2!5809 (_1!3120 Unit!8580) (_2!3120 MutableMap!493)) )
))
(declare-fun lt!214588 () tuple2!5808)

(assert (=> b!516327 (= e!308979 (tuple2!5803 (_1!3119 lt!214615) (_2!3120 lt!214588)))))

(declare-fun lt!214603 () (_ BitVec 64))

(declare-fun hash!519 (Hashable!493 K!1417) (_ BitVec 64))

(assert (=> b!516327 (= lt!214603 (hash!519 (hashF!2376 hm!65) k0!1740))))

(declare-fun lt!214606 () List!4736)

(declare-fun apply!1185 (MutLongMap!521 (_ BitVec 64)) List!4736)

(assert (=> b!516327 (= lt!214606 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))))

(declare-fun lt!214586 () Unit!8580)

(declare-fun forallContained!446 (List!4737 Int tuple2!5804) Unit!8580)

(assert (=> b!516327 (= lt!214586 (forallContained!446 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14470 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))))))

(assert (=> b!516327 (= lt!214594 (map!1040 hm!65))))

(assert (=> b!516327 (= lt!214596 (map!1041 (v!15767 (underlying!1222 hm!65))))))

(declare-fun lt!214607 () List!4736)

(declare-fun removePairForKey!15 (List!4736 K!1417) List!4736)

(assert (=> b!516327 (= lt!214607 (removePairForKey!15 lt!214606 k0!1740))))

(declare-fun update!55 (MutLongMap!521 (_ BitVec 64) List!4736) tuple2!5806)

(assert (=> b!516327 (= lt!214615 (update!55 (v!15767 (underlying!1222 hm!65)) lt!214603 lt!214607))))

(declare-fun lt!214599 () Bool)

(declare-fun Unit!8584 () Unit!8580)

(declare-fun Unit!8585 () Unit!8580)

(assert (=> b!516327 (= lt!214588 (ite (and (_1!3119 lt!214615) lt!214599) (tuple2!5809 Unit!8584 (HashMap!493 (Cell!2028 (_2!3119 lt!214615)) (hashF!2376 hm!65) (bvsub (_size!1152 hm!65) #b00000000000000000000000000000001) (defaultValue!642 hm!65))) (tuple2!5809 Unit!8585 (HashMap!493 (Cell!2028 (_2!3119 lt!214615)) (hashF!2376 hm!65) (_size!1152 hm!65) (defaultValue!642 hm!65)))))))

(declare-fun lt!214600 () Unit!8580)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!15 (List!4736 K!1417) Unit!8580)

(assert (=> b!516327 (= lt!214600 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!15 lt!214606 k0!1740))))

(declare-fun noDuplicateKeys!17 (List!4736) Bool)

(assert (=> b!516327 (noDuplicateKeys!17 (removePairForKey!15 lt!214606 k0!1740))))

(declare-fun lt!214602 () Unit!8580)

(assert (=> b!516327 (= lt!214602 lt!214600)))

(declare-fun c!99999 () Bool)

(assert (=> b!516327 (= c!99999 (_1!3119 lt!214615))))

(declare-fun lt!214601 () Unit!8580)

(assert (=> b!516327 (= lt!214601 e!308982)))

(declare-fun call!37688 () ListLongMap!79)

(declare-fun bm!37683 () Bool)

(assert (=> bm!37683 (= call!37688 (map!1041 (ite c!100001 (v!15767 (underlying!1222 hm!65)) (v!15767 (underlying!1222 (_2!3120 lt!214588))))))))

(declare-fun b!516328 () Bool)

(declare-fun e!308983 () ListMap!193)

(declare-fun call!37687 () ListMap!193)

(assert (=> b!516328 (= e!308983 call!37687)))

(declare-fun call!37691 () ListMap!193)

(declare-fun bm!37684 () Bool)

(assert (=> bm!37684 (= call!37691 (-!36 (ite c!100001 call!37690 lt!214594) k0!1740))))

(declare-fun bm!37685 () Bool)

(declare-fun call!37693 () ListMap!193)

(declare-fun lt!214608 () tuple2!5802)

(assert (=> bm!37685 (= call!37693 (map!1040 (_2!3117 lt!214608)))))

(declare-fun d!184667 () Bool)

(declare-fun e!308981 () Bool)

(assert (=> d!184667 e!308981))

(declare-fun res!218977 () Bool)

(assert (=> d!184667 (=> (not res!218977) (not e!308981))))

(assert (=> d!184667 (= res!218977 ((_ is HashMap!493) (_2!3117 lt!214608)))))

(assert (=> d!184667 (= lt!214608 e!308979)))

(assert (=> d!184667 (= c!100001 (not lt!214599))))

(declare-fun contains!1086 (MutableMap!493 K!1417) Bool)

(assert (=> d!184667 (= lt!214599 (contains!1086 hm!65 k0!1740))))

(assert (=> d!184667 (valid!484 hm!65)))

(assert (=> d!184667 (= (remove!39 hm!65 k0!1740) lt!214608)))

(declare-fun b!516329 () Bool)

(declare-fun res!218978 () Bool)

(assert (=> b!516329 (=> (not res!218978) (not e!308981))))

(assert (=> b!516329 (= res!218978 (valid!484 (_2!3117 lt!214608)))))

(declare-fun bm!37686 () Bool)

(assert (=> bm!37686 (= call!37692 (map!1040 (_2!3120 lt!214588)))))

(declare-fun b!516330 () Bool)

(declare-fun e!308980 () Bool)

(assert (=> b!516330 (= e!308981 e!308980)))

(declare-fun c!99998 () Bool)

(assert (=> b!516330 (= c!99998 (_1!3117 lt!214608))))

(declare-fun b!516331 () Bool)

(assert (=> b!516331 (eq!33 call!37692 call!37691)))

(declare-fun lt!214598 () Unit!8580)

(declare-fun lt!214595 () Unit!8580)

(assert (=> b!516331 (= lt!214598 lt!214595)))

(declare-fun +!24 (ListLongMap!79 tuple2!5804) ListLongMap!79)

(assert (=> b!516331 (eq!33 (extractMap!21 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))) (-!36 call!37690 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!13 (ListLongMap!79 (_ BitVec 64) List!4736 K!1417 Hashable!493) Unit!8580)

(assert (=> b!516331 (= lt!214595 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!13 lt!214596 lt!214603 lt!214607 k0!1740 (hashF!2376 (_2!3120 lt!214588))))))

(declare-fun lt!214593 () Unit!8580)

(declare-fun Unit!8586 () Unit!8580)

(assert (=> b!516331 (= lt!214593 Unit!8586)))

(declare-fun contains!1087 (ListMap!193 K!1417) Bool)

(assert (=> b!516331 (contains!1087 lt!214594 k0!1740)))

(declare-fun lt!214613 () Unit!8580)

(declare-fun Unit!8587 () Unit!8580)

(assert (=> b!516331 (= lt!214613 Unit!8587)))

(assert (=> b!516331 call!37694))

(declare-fun lt!214590 () Unit!8580)

(declare-fun Unit!8588 () Unit!8580)

(assert (=> b!516331 (= lt!214590 Unit!8588)))

(assert (=> b!516331 (allKeysSameHashInMap!28 call!37688 (hashF!2376 (_2!3120 lt!214588)))))

(declare-fun lt!214605 () Unit!8580)

(declare-fun Unit!8589 () Unit!8580)

(assert (=> b!516331 (= lt!214605 Unit!8589)))

(assert (=> b!516331 (forall!1402 (toList!421 call!37688) lambda!14470)))

(declare-fun lt!214614 () Unit!8580)

(declare-fun lt!214611 () Unit!8580)

(assert (=> b!516331 (= lt!214614 lt!214611)))

(declare-fun e!308978 () Bool)

(assert (=> b!516331 e!308978))

(declare-fun res!218979 () Bool)

(assert (=> b!516331 (=> (not res!218979) (not e!308978))))

(declare-fun lt!214609 () ListLongMap!79)

(assert (=> b!516331 (= res!218979 (forall!1402 (toList!421 lt!214609) lambda!14470))))

(assert (=> b!516331 (= lt!214609 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!15 (ListLongMap!79 (_ BitVec 64) List!4736 Hashable!493) Unit!8580)

(assert (=> b!516331 (= lt!214611 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!15 lt!214596 lt!214603 lt!214607 (hashF!2376 (_2!3120 lt!214588))))))

(declare-fun lt!214612 () Unit!8580)

(declare-fun lt!214587 () Unit!8580)

(assert (=> b!516331 (= lt!214612 lt!214587)))

(declare-fun allKeysSameHash!16 (List!4736 (_ BitVec 64) Hashable!493) Bool)

(assert (=> b!516331 (allKeysSameHash!16 (removePairForKey!15 lt!214606 k0!1740) lt!214603 (hashF!2376 (_2!3120 lt!214588)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!15 (List!4736 K!1417 (_ BitVec 64) Hashable!493) Unit!8580)

(assert (=> b!516331 (= lt!214587 (lemmaRemovePairForKeyPreservesHash!15 lt!214606 k0!1740 lt!214603 (hashF!2376 (_2!3120 lt!214588))))))

(declare-fun lt!214592 () Unit!8580)

(declare-fun lt!214597 () Unit!8580)

(assert (=> b!516331 (= lt!214592 lt!214597)))

(assert (=> b!516331 (allKeysSameHash!16 lt!214606 lt!214603 (hashF!2376 (_2!3120 lt!214588)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!15 (List!4737 (_ BitVec 64) List!4736 Hashable!493) Unit!8580)

(assert (=> b!516331 (= lt!214597 (lemmaInLongMapAllKeySameHashThenForTuple!15 (toList!421 lt!214596) lt!214603 lt!214606 (hashF!2376 (_2!3120 lt!214588))))))

(declare-fun Unit!8590 () Unit!8580)

(assert (=> b!516331 (= e!308982 Unit!8590)))

(declare-fun b!516332 () Bool)

(assert (=> b!516332 (= e!308978 (allKeysSameHashInMap!28 lt!214609 (hashF!2376 (_2!3120 lt!214588))))))

(declare-fun b!516333 () Bool)

(declare-fun call!37689 () Bool)

(assert (=> b!516333 (= e!308980 call!37689)))

(declare-fun bm!37687 () Bool)

(assert (=> bm!37687 (= call!37694 (valid!484 (_2!3120 lt!214588)))))

(declare-fun b!516334 () Bool)

(assert (=> b!516334 (= e!308980 call!37689)))

(declare-fun bm!37688 () Bool)

(assert (=> bm!37688 (= call!37689 (eq!33 call!37693 e!308983))))

(declare-fun c!100000 () Bool)

(assert (=> bm!37688 (= c!100000 c!99998)))

(declare-fun bm!37689 () Bool)

(assert (=> bm!37689 (= call!37687 (map!1040 hm!65))))

(declare-fun b!516335 () Bool)

(assert (=> b!516335 (= e!308983 (-!36 call!37687 k0!1740))))

(declare-fun b!516336 () Bool)

(assert (=> b!516336 (= e!308979 (tuple2!5803 true hm!65))))

(assert (=> b!516336 (= lt!214591 call!37688)))

(declare-fun lt!214589 () Unit!8580)

(declare-fun lemmaRemoveNotContainedDoesNotChange!13 (ListLongMap!79 K!1417 Hashable!493) Unit!8580)

(assert (=> b!516336 (= lt!214589 (lemmaRemoveNotContainedDoesNotChange!13 lt!214591 k0!1740 (hashF!2376 hm!65)))))

(assert (=> b!516336 (= call!37690 call!37691)))

(declare-fun lt!214604 () Unit!8580)

(assert (=> b!516336 (= lt!214604 lt!214589)))

(assert (= (and d!184667 c!100001) b!516336))

(assert (= (and d!184667 (not c!100001)) b!516327))

(assert (= (and b!516327 c!99999) b!516331))

(assert (= (and b!516327 (not c!99999)) b!516326))

(assert (= (and b!516331 res!218979) b!516332))

(assert (= (or b!516331 b!516326) bm!37687))

(assert (= (or b!516331 b!516326) bm!37686))

(assert (= (or b!516336 b!516331) bm!37683))

(assert (= (or b!516336 b!516331) bm!37682))

(assert (= (or b!516336 b!516331) bm!37684))

(assert (= (and d!184667 res!218977) b!516329))

(assert (= (and b!516329 res!218978) b!516330))

(assert (= (and b!516330 c!99998) b!516333))

(assert (= (and b!516330 (not c!99998)) b!516334))

(assert (= (or b!516333 b!516334) bm!37689))

(assert (= (or b!516333 b!516334) bm!37685))

(assert (= (or b!516333 b!516334) bm!37688))

(assert (= (and bm!37688 c!100000) b!516335))

(assert (= (and bm!37688 (not c!100000)) b!516328))

(declare-fun m!762659 () Bool)

(assert (=> b!516329 m!762659))

(declare-fun m!762661 () Bool)

(assert (=> bm!37686 m!762661))

(declare-fun m!762663 () Bool)

(assert (=> b!516327 m!762663))

(declare-fun m!762665 () Bool)

(assert (=> b!516327 m!762665))

(declare-fun m!762667 () Bool)

(assert (=> b!516327 m!762667))

(assert (=> b!516327 m!762633))

(assert (=> b!516327 m!762663))

(declare-fun m!762669 () Bool)

(assert (=> b!516327 m!762669))

(declare-fun m!762671 () Bool)

(assert (=> b!516327 m!762671))

(assert (=> b!516327 m!762617))

(declare-fun m!762673 () Bool)

(assert (=> b!516327 m!762673))

(declare-fun m!762675 () Bool)

(assert (=> b!516327 m!762675))

(declare-fun m!762677 () Bool)

(assert (=> bm!37688 m!762677))

(declare-fun m!762679 () Bool)

(assert (=> bm!37687 m!762679))

(declare-fun m!762681 () Bool)

(assert (=> b!516332 m!762681))

(declare-fun m!762683 () Bool)

(assert (=> d!184667 m!762683))

(assert (=> d!184667 m!762619))

(declare-fun m!762685 () Bool)

(assert (=> b!516335 m!762685))

(declare-fun m!762687 () Bool)

(assert (=> b!516331 m!762687))

(declare-fun m!762689 () Bool)

(assert (=> b!516331 m!762689))

(declare-fun m!762691 () Bool)

(assert (=> b!516331 m!762691))

(declare-fun m!762693 () Bool)

(assert (=> b!516331 m!762693))

(declare-fun m!762695 () Bool)

(assert (=> b!516331 m!762695))

(assert (=> b!516331 m!762663))

(declare-fun m!762697 () Bool)

(assert (=> b!516331 m!762697))

(declare-fun m!762699 () Bool)

(assert (=> b!516331 m!762699))

(declare-fun m!762701 () Bool)

(assert (=> b!516331 m!762701))

(declare-fun m!762703 () Bool)

(assert (=> b!516331 m!762703))

(declare-fun m!762705 () Bool)

(assert (=> b!516331 m!762705))

(assert (=> b!516331 m!762663))

(declare-fun m!762707 () Bool)

(assert (=> b!516331 m!762707))

(declare-fun m!762709 () Bool)

(assert (=> b!516331 m!762709))

(declare-fun m!762711 () Bool)

(assert (=> b!516331 m!762711))

(declare-fun m!762713 () Bool)

(assert (=> b!516331 m!762713))

(assert (=> b!516331 m!762693))

(assert (=> b!516331 m!762703))

(declare-fun m!762715 () Bool)

(assert (=> b!516331 m!762715))

(declare-fun m!762717 () Bool)

(assert (=> bm!37685 m!762717))

(assert (=> bm!37689 m!762617))

(declare-fun m!762719 () Bool)

(assert (=> bm!37684 m!762719))

(declare-fun m!762721 () Bool)

(assert (=> bm!37682 m!762721))

(declare-fun m!762723 () Bool)

(assert (=> b!516336 m!762723))

(declare-fun m!762725 () Bool)

(assert (=> bm!37683 m!762725))

(assert (=> b!516294 d!184667))

(declare-fun d!184669 () Bool)

(declare-fun e!308986 () Bool)

(assert (=> d!184669 e!308986))

(declare-fun res!218982 () Bool)

(assert (=> d!184669 (=> (not res!218982) (not e!308986))))

(declare-fun lt!214618 () ListMap!193)

(assert (=> d!184669 (= res!218982 (not (contains!1087 lt!214618 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!13 (List!4736 K!1417) List!4736)

(assert (=> d!184669 (= lt!214618 (ListMap!194 (removePresrvNoDuplicatedKeys!13 (toList!420 lt!214518) k0!1740)))))

(assert (=> d!184669 (= (-!36 lt!214518 k0!1740) lt!214618)))

(declare-fun b!516339 () Bool)

(declare-datatypes ((List!4738 0))(
  ( (Nil!4728) (Cons!4728 (h!10126 K!1417) (t!73296 List!4738)) )
))
(declare-fun content!827 (List!4738) (InoxSet K!1417))

(declare-fun keys!1854 (ListMap!193) List!4738)

(assert (=> b!516339 (= e!308986 (= ((_ map and) (content!827 (keys!1854 lt!214518)) ((_ map not) (store ((as const (Array K!1417 Bool)) false) k0!1740 true))) (content!827 (keys!1854 lt!214618))))))

(assert (= (and d!184669 res!218982) b!516339))

(declare-fun m!762727 () Bool)

(assert (=> d!184669 m!762727))

(declare-fun m!762729 () Bool)

(assert (=> d!184669 m!762729))

(declare-fun m!762731 () Bool)

(assert (=> b!516339 m!762731))

(declare-fun m!762733 () Bool)

(assert (=> b!516339 m!762733))

(declare-fun m!762735 () Bool)

(assert (=> b!516339 m!762735))

(assert (=> b!516339 m!762731))

(declare-fun m!762737 () Bool)

(assert (=> b!516339 m!762737))

(assert (=> b!516339 m!762735))

(declare-fun m!762739 () Bool)

(assert (=> b!516339 m!762739))

(assert (=> b!516294 d!184669))

(declare-fun d!184671 () Bool)

(declare-fun res!218987 () Bool)

(declare-fun e!308991 () Bool)

(assert (=> d!184671 (=> res!218987 e!308991)))

(assert (=> d!184671 (= res!218987 ((_ is Nil!4726) (toList!420 lt!214518)))))

(assert (=> d!184671 (= (forall!1401 (toList!420 lt!214518) p!6060) e!308991)))

(declare-fun b!516344 () Bool)

(declare-fun e!308992 () Bool)

(assert (=> b!516344 (= e!308991 e!308992)))

(declare-fun res!218988 () Bool)

(assert (=> b!516344 (=> (not res!218988) (not e!308992))))

(declare-fun dynLambda!2978 (Int tuple2!5800) Bool)

(assert (=> b!516344 (= res!218988 (dynLambda!2978 p!6060 (h!10124 (toList!420 lt!214518))))))

(declare-fun b!516345 () Bool)

(assert (=> b!516345 (= e!308992 (forall!1401 (t!73292 (toList!420 lt!214518)) p!6060))))

(assert (= (and d!184671 (not res!218987)) b!516344))

(assert (= (and b!516344 res!218988) b!516345))

(declare-fun b_lambda!20053 () Bool)

(assert (=> (not b_lambda!20053) (not b!516344)))

(declare-fun t!73294 () Bool)

(declare-fun tb!47155 () Bool)

(assert (=> (and start!46856 (= p!6060 p!6060) t!73294) tb!47155))

(declare-fun result!52212 () Bool)

(assert (=> tb!47155 (= result!52212 true)))

(assert (=> b!516344 t!73294))

(declare-fun b_and!51049 () Bool)

(assert (= b_and!51047 (and (=> t!73294 result!52212) b_and!51049)))

(declare-fun m!762741 () Bool)

(assert (=> b!516344 m!762741))

(declare-fun m!762743 () Bool)

(assert (=> b!516345 m!762743))

(assert (=> b!516281 d!184671))

(declare-fun d!184673 () Bool)

(declare-fun lt!214619 () ListMap!193)

(assert (=> d!184673 (invariantList!74 (toList!420 lt!214619))))

(assert (=> d!184673 (= lt!214619 (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))))))

(assert (=> d!184673 (valid!484 hm!65)))

(assert (=> d!184673 (= (map!1040 hm!65) lt!214619)))

(declare-fun bs!59706 () Bool)

(assert (= bs!59706 d!184673))

(declare-fun m!762745 () Bool)

(assert (=> bs!59706 m!762745))

(assert (=> bs!59706 m!762633))

(declare-fun m!762747 () Bool)

(assert (=> bs!59706 m!762747))

(assert (=> bs!59706 m!762619))

(assert (=> b!516281 d!184673))

(declare-fun d!184675 () Bool)

(declare-fun c!100004 () Bool)

(assert (=> d!184675 (= c!100004 ((_ is Nil!4726) (toList!420 lt!214520)))))

(declare-fun e!308995 () (InoxSet tuple2!5800))

(assert (=> d!184675 (= (content!826 (toList!420 lt!214520)) e!308995)))

(declare-fun b!516350 () Bool)

(assert (=> b!516350 (= e!308995 ((as const (Array tuple2!5800 Bool)) false))))

(declare-fun b!516351 () Bool)

(assert (=> b!516351 (= e!308995 ((_ map or) (store ((as const (Array tuple2!5800 Bool)) false) (h!10124 (toList!420 lt!214520)) true) (content!826 (t!73292 (toList!420 lt!214520)))))))

(assert (= (and d!184675 c!100004) b!516350))

(assert (= (and d!184675 (not c!100004)) b!516351))

(declare-fun m!762749 () Bool)

(assert (=> b!516351 m!762749))

(declare-fun m!762751 () Bool)

(assert (=> b!516351 m!762751))

(assert (=> b!516286 d!184675))

(declare-fun d!184677 () Bool)

(declare-fun c!100005 () Bool)

(assert (=> d!184677 (= c!100005 ((_ is Nil!4726) (toList!420 lt!214518)))))

(declare-fun e!308996 () (InoxSet tuple2!5800))

(assert (=> d!184677 (= (content!826 (toList!420 lt!214518)) e!308996)))

(declare-fun b!516352 () Bool)

(assert (=> b!516352 (= e!308996 ((as const (Array tuple2!5800 Bool)) false))))

(declare-fun b!516353 () Bool)

(assert (=> b!516353 (= e!308996 ((_ map or) (store ((as const (Array tuple2!5800 Bool)) false) (h!10124 (toList!420 lt!214518)) true) (content!826 (t!73292 (toList!420 lt!214518)))))))

(assert (= (and d!184677 c!100005) b!516352))

(assert (= (and d!184677 (not c!100005)) b!516353))

(declare-fun m!762753 () Bool)

(assert (=> b!516353 m!762753))

(declare-fun m!762755 () Bool)

(assert (=> b!516353 m!762755))

(assert (=> b!516286 d!184677))

(declare-fun mapIsEmpty!2015 () Bool)

(declare-fun mapRes!2015 () Bool)

(assert (=> mapIsEmpty!2015 mapRes!2015))

(declare-fun condMapEmpty!2015 () Bool)

(declare-fun mapDefault!2015 () List!4736)

(assert (=> mapNonEmpty!2012 (= condMapEmpty!2015 (= mapRest!2012 ((as const (Array (_ BitVec 32) List!4736)) mapDefault!2015)))))

(declare-fun e!309001 () Bool)

(assert (=> mapNonEmpty!2012 (= tp!161146 (and e!309001 mapRes!2015))))

(declare-fun e!309002 () Bool)

(declare-fun tp_is_empty!2629 () Bool)

(declare-fun tp!161156 () Bool)

(declare-fun b!516360 () Bool)

(assert (=> b!516360 (= e!309002 (and tp_is_empty!2627 tp_is_empty!2629 tp!161156))))

(declare-fun mapNonEmpty!2015 () Bool)

(declare-fun tp!161158 () Bool)

(assert (=> mapNonEmpty!2015 (= mapRes!2015 (and tp!161158 e!309002))))

(declare-fun mapRest!2015 () (Array (_ BitVec 32) List!4736))

(declare-fun mapValue!2015 () List!4736)

(declare-fun mapKey!2015 () (_ BitVec 32))

(assert (=> mapNonEmpty!2015 (= mapRest!2012 (store mapRest!2015 mapKey!2015 mapValue!2015))))

(declare-fun tp!161157 () Bool)

(declare-fun b!516361 () Bool)

(assert (=> b!516361 (= e!309001 (and tp_is_empty!2627 tp_is_empty!2629 tp!161157))))

(assert (= (and mapNonEmpty!2012 condMapEmpty!2015) mapIsEmpty!2015))

(assert (= (and mapNonEmpty!2012 (not condMapEmpty!2015)) mapNonEmpty!2015))

(assert (= (and mapNonEmpty!2015 ((_ is Cons!4726) mapValue!2015)) b!516360))

(assert (= (and mapNonEmpty!2012 ((_ is Cons!4726) mapDefault!2015)) b!516361))

(declare-fun m!762757 () Bool)

(assert (=> mapNonEmpty!2015 m!762757))

(declare-fun e!309005 () Bool)

(declare-fun tp!161161 () Bool)

(declare-fun b!516366 () Bool)

(assert (=> b!516366 (= e!309005 (and tp_is_empty!2627 tp_is_empty!2629 tp!161161))))

(assert (=> mapNonEmpty!2012 (= tp!161147 e!309005)))

(assert (= (and mapNonEmpty!2012 ((_ is Cons!4726) mapValue!2012)) b!516366))

(declare-fun b!516367 () Bool)

(declare-fun tp!161162 () Bool)

(declare-fun e!309006 () Bool)

(assert (=> b!516367 (= e!309006 (and tp_is_empty!2627 tp_is_empty!2629 tp!161162))))

(assert (=> b!516289 (= tp!161148 e!309006)))

(assert (= (and b!516289 ((_ is Cons!4726) (zeroValue!777 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))))) b!516367))

(declare-fun b!516368 () Bool)

(declare-fun tp!161163 () Bool)

(declare-fun e!309007 () Bool)

(assert (=> b!516368 (= e!309007 (and tp_is_empty!2627 tp_is_empty!2629 tp!161163))))

(assert (=> b!516289 (= tp!161143 e!309007)))

(assert (= (and b!516289 ((_ is Cons!4726) (minValue!777 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))))) b!516368))

(declare-fun b!516369 () Bool)

(declare-fun tp!161164 () Bool)

(declare-fun e!309008 () Bool)

(assert (=> b!516369 (= e!309008 (and tp_is_empty!2627 tp_is_empty!2629 tp!161164))))

(assert (=> b!516285 (= tp!161144 e!309008)))

(assert (= (and b!516285 ((_ is Cons!4726) mapDefault!2012)) b!516369))

(declare-fun b_lambda!20055 () Bool)

(assert (= b_lambda!20053 (or (and start!46856 b_free!13587) b_lambda!20055)))

(check-sat (not b!516336) (not b!516300) (not b!516367) (not b!516329) (not bm!37687) (not d!184655) tp_is_empty!2629 b_and!51049 (not bm!37688) (not mapNonEmpty!2015) (not bm!37684) (not d!184653) (not b!516302) (not bm!37682) (not b!516331) (not d!184649) (not b!516351) (not d!184667) (not bm!37685) (not b!516353) (not b!516345) (not bm!37686) (not d!184659) (not b!516327) (not b!516368) (not bm!37683) (not b!516301) (not b!516332) (not b!516335) (not d!184651) (not bm!37689) (not b_next!13587) (not b_next!13589) (not d!184665) (not b!516360) tp_is_empty!2627 b_and!51045 b_and!51043 (not d!184657) (not b_lambda!20055) (not d!184673) (not b!516339) (not b!516361) (not b!516369) (not b!516303) (not b_next!13591) (not b!516366) (not d!184669))
(check-sat b_and!51049 (not b_next!13591) (not b_next!13587) (not b_next!13589) b_and!51045 b_and!51043)
(get-model)

(declare-fun d!184679 () Bool)

(assert (=> d!184679 (allKeysSameHash!16 (removePairForKey!15 lt!214606 k0!1740) lt!214603 (hashF!2376 (_2!3120 lt!214588)))))

(declare-fun lt!214622 () Unit!8580)

(declare-fun choose!3677 (List!4736 K!1417 (_ BitVec 64) Hashable!493) Unit!8580)

(assert (=> d!184679 (= lt!214622 (choose!3677 lt!214606 k0!1740 lt!214603 (hashF!2376 (_2!3120 lt!214588))))))

(assert (=> d!184679 (noDuplicateKeys!17 lt!214606)))

(assert (=> d!184679 (= (lemmaRemovePairForKeyPreservesHash!15 lt!214606 k0!1740 lt!214603 (hashF!2376 (_2!3120 lt!214588))) lt!214622)))

(declare-fun bs!59707 () Bool)

(assert (= bs!59707 d!184679))

(assert (=> bs!59707 m!762663))

(assert (=> bs!59707 m!762663))

(assert (=> bs!59707 m!762697))

(declare-fun m!762759 () Bool)

(assert (=> bs!59707 m!762759))

(declare-fun m!762761 () Bool)

(assert (=> bs!59707 m!762761))

(assert (=> b!516331 d!184679))

(declare-fun d!184681 () Bool)

(assert (=> d!184681 (= (eq!33 call!37692 call!37691) (= (content!826 (toList!420 call!37692)) (content!826 (toList!420 call!37691))))))

(declare-fun bs!59708 () Bool)

(assert (= bs!59708 d!184681))

(declare-fun m!762763 () Bool)

(assert (=> bs!59708 m!762763))

(declare-fun m!762765 () Bool)

(assert (=> bs!59708 m!762765))

(assert (=> b!516331 d!184681))

(declare-fun bs!59709 () Bool)

(declare-fun d!184683 () Bool)

(assert (= bs!59709 (and d!184683 b!516300)))

(declare-fun lambda!14473 () Int)

(assert (=> bs!59709 (not (= lambda!14473 lambda!14462))))

(declare-fun bs!59710 () Bool)

(assert (= bs!59710 (and d!184683 b!516302)))

(assert (=> bs!59710 (not (= lambda!14473 lambda!14463))))

(declare-fun bs!59711 () Bool)

(assert (= bs!59711 (and d!184683 b!516327)))

(assert (=> bs!59711 (not (= lambda!14473 lambda!14470))))

(assert (=> d!184683 true))

(assert (=> d!184683 (= (allKeysSameHashInMap!28 call!37688 (hashF!2376 (_2!3120 lt!214588))) (forall!1402 (toList!421 call!37688) lambda!14473))))

(declare-fun bs!59712 () Bool)

(assert (= bs!59712 d!184683))

(declare-fun m!762767 () Bool)

(assert (=> bs!59712 m!762767))

(assert (=> b!516331 d!184683))

(declare-fun d!184685 () Bool)

(assert (=> d!184685 true))

(assert (=> d!184685 true))

(declare-fun b_next!13593 () Bool)

(declare-fun lambda!14476 () Int)

(assert (=> start!46856 (= b_next!13591 (or (and d!184685 (= lambda!14476 p!6060)) b_next!13593))))

(assert (=> d!184685 (= (allKeysSameHash!16 (removePairForKey!15 lt!214606 k0!1740) lt!214603 (hashF!2376 (_2!3120 lt!214588))) (forall!1401 (removePairForKey!15 lt!214606 k0!1740) lambda!14476))))

(declare-fun bs!59713 () Bool)

(assert (= bs!59713 d!184685))

(assert (=> bs!59713 m!762663))

(declare-fun m!762769 () Bool)

(assert (=> bs!59713 m!762769))

(assert (=> b!516331 d!184685))

(declare-fun bs!59714 () Bool)

(declare-fun d!184687 () Bool)

(assert (= bs!59714 (and d!184687 b!516300)))

(declare-fun lambda!14479 () Int)

(assert (=> bs!59714 (= lambda!14479 lambda!14462)))

(declare-fun bs!59715 () Bool)

(assert (= bs!59715 (and d!184687 b!516302)))

(assert (=> bs!59715 (= lambda!14479 lambda!14463)))

(declare-fun bs!59716 () Bool)

(assert (= bs!59716 (and d!184687 b!516327)))

(assert (=> bs!59716 (= lambda!14479 lambda!14470)))

(declare-fun bs!59717 () Bool)

(assert (= bs!59717 (and d!184687 d!184683)))

(assert (=> bs!59717 (not (= lambda!14479 lambda!14473))))

(declare-fun lt!214625 () ListMap!193)

(assert (=> d!184687 (invariantList!74 (toList!420 lt!214625))))

(declare-fun e!309011 () ListMap!193)

(assert (=> d!184687 (= lt!214625 e!309011)))

(declare-fun c!100008 () Bool)

(assert (=> d!184687 (= c!100008 ((_ is Cons!4727) (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))))))

(assert (=> d!184687 (forall!1402 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607))) lambda!14479)))

(assert (=> d!184687 (= (extractMap!21 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))) lt!214625)))

(declare-fun b!516380 () Bool)

(declare-fun addToMapMapFromBucket!4 (List!4736 ListMap!193) ListMap!193)

(assert (=> b!516380 (= e!309011 (addToMapMapFromBucket!4 (_2!3118 (h!10125 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607))))) (extractMap!21 (t!73295 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))))))))

(declare-fun b!516381 () Bool)

(assert (=> b!516381 (= e!309011 (ListMap!194 Nil!4726))))

(assert (= (and d!184687 c!100008) b!516380))

(assert (= (and d!184687 (not c!100008)) b!516381))

(declare-fun m!762771 () Bool)

(assert (=> d!184687 m!762771))

(declare-fun m!762773 () Bool)

(assert (=> d!184687 m!762773))

(declare-fun m!762775 () Bool)

(assert (=> b!516380 m!762775))

(assert (=> b!516380 m!762775))

(declare-fun m!762777 () Bool)

(assert (=> b!516380 m!762777))

(assert (=> b!516331 d!184687))

(declare-fun bs!59718 () Bool)

(declare-fun d!184689 () Bool)

(assert (= bs!59718 (and d!184689 b!516302)))

(declare-fun lambda!14482 () Int)

(assert (=> bs!59718 (= lambda!14482 lambda!14463)))

(declare-fun bs!59719 () Bool)

(assert (= bs!59719 (and d!184689 b!516300)))

(assert (=> bs!59719 (= lambda!14482 lambda!14462)))

(declare-fun bs!59720 () Bool)

(assert (= bs!59720 (and d!184689 d!184683)))

(assert (=> bs!59720 (not (= lambda!14482 lambda!14473))))

(declare-fun bs!59721 () Bool)

(assert (= bs!59721 (and d!184689 d!184687)))

(assert (=> bs!59721 (= lambda!14482 lambda!14479)))

(declare-fun bs!59722 () Bool)

(assert (= bs!59722 (and d!184689 b!516327)))

(assert (=> bs!59722 (= lambda!14482 lambda!14470)))

(assert (=> d!184689 (eq!33 (extractMap!21 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))) (-!36 (extractMap!21 (toList!421 lt!214596)) k0!1740))))

(declare-fun lt!214628 () Unit!8580)

(declare-fun choose!3678 (ListLongMap!79 (_ BitVec 64) List!4736 K!1417 Hashable!493) Unit!8580)

(assert (=> d!184689 (= lt!214628 (choose!3678 lt!214596 lt!214603 lt!214607 k0!1740 (hashF!2376 (_2!3120 lt!214588))))))

(assert (=> d!184689 (forall!1402 (toList!421 lt!214596) lambda!14482)))

(assert (=> d!184689 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!13 lt!214596 lt!214603 lt!214607 k0!1740 (hashF!2376 (_2!3120 lt!214588))) lt!214628)))

(declare-fun bs!59723 () Bool)

(assert (= bs!59723 d!184689))

(declare-fun m!762779 () Bool)

(assert (=> bs!59723 m!762779))

(declare-fun m!762781 () Bool)

(assert (=> bs!59723 m!762781))

(assert (=> bs!59723 m!762693))

(declare-fun m!762783 () Bool)

(assert (=> bs!59723 m!762783))

(declare-fun m!762785 () Bool)

(assert (=> bs!59723 m!762785))

(declare-fun m!762787 () Bool)

(assert (=> bs!59723 m!762787))

(assert (=> bs!59723 m!762783))

(assert (=> bs!59723 m!762699))

(assert (=> bs!59723 m!762787))

(assert (=> bs!59723 m!762693))

(assert (=> b!516331 d!184689))

(declare-fun d!184691 () Bool)

(declare-fun e!309012 () Bool)

(assert (=> d!184691 e!309012))

(declare-fun res!218989 () Bool)

(assert (=> d!184691 (=> (not res!218989) (not e!309012))))

(declare-fun lt!214629 () ListMap!193)

(assert (=> d!184691 (= res!218989 (not (contains!1087 lt!214629 k0!1740)))))

(assert (=> d!184691 (= lt!214629 (ListMap!194 (removePresrvNoDuplicatedKeys!13 (toList!420 call!37690) k0!1740)))))

(assert (=> d!184691 (= (-!36 call!37690 k0!1740) lt!214629)))

(declare-fun b!516382 () Bool)

(assert (=> b!516382 (= e!309012 (= ((_ map and) (content!827 (keys!1854 call!37690)) ((_ map not) (store ((as const (Array K!1417 Bool)) false) k0!1740 true))) (content!827 (keys!1854 lt!214629))))))

(assert (= (and d!184691 res!218989) b!516382))

(declare-fun m!762789 () Bool)

(assert (=> d!184691 m!762789))

(declare-fun m!762791 () Bool)

(assert (=> d!184691 m!762791))

(declare-fun m!762793 () Bool)

(assert (=> b!516382 m!762793))

(declare-fun m!762795 () Bool)

(assert (=> b!516382 m!762795))

(declare-fun m!762797 () Bool)

(assert (=> b!516382 m!762797))

(assert (=> b!516382 m!762793))

(assert (=> b!516382 m!762737))

(assert (=> b!516382 m!762797))

(declare-fun m!762799 () Bool)

(assert (=> b!516382 m!762799))

(assert (=> b!516331 d!184691))

(declare-fun b!516394 () Bool)

(declare-fun e!309018 () List!4736)

(assert (=> b!516394 (= e!309018 Nil!4726)))

(declare-fun b!516392 () Bool)

(declare-fun e!309017 () List!4736)

(assert (=> b!516392 (= e!309017 e!309018)))

(declare-fun c!100013 () Bool)

(assert (=> b!516392 (= c!100013 ((_ is Cons!4726) lt!214606))))

(declare-fun b!516391 () Bool)

(assert (=> b!516391 (= e!309017 (t!73292 lt!214606))))

(declare-fun b!516393 () Bool)

(assert (=> b!516393 (= e!309018 (Cons!4726 (h!10124 lt!214606) (removePairForKey!15 (t!73292 lt!214606) k0!1740)))))

(declare-fun d!184693 () Bool)

(declare-fun lt!214632 () List!4736)

(declare-fun containsKey!16 (List!4736 K!1417) Bool)

(assert (=> d!184693 (not (containsKey!16 lt!214632 k0!1740))))

(assert (=> d!184693 (= lt!214632 e!309017)))

(declare-fun c!100014 () Bool)

(assert (=> d!184693 (= c!100014 (and ((_ is Cons!4726) lt!214606) (= (_1!3116 (h!10124 lt!214606)) k0!1740)))))

(assert (=> d!184693 (noDuplicateKeys!17 lt!214606)))

(assert (=> d!184693 (= (removePairForKey!15 lt!214606 k0!1740) lt!214632)))

(assert (= (and d!184693 c!100014) b!516391))

(assert (= (and d!184693 (not c!100014)) b!516392))

(assert (= (and b!516392 c!100013) b!516393))

(assert (= (and b!516392 (not c!100013)) b!516394))

(declare-fun m!762801 () Bool)

(assert (=> b!516393 m!762801))

(declare-fun m!762803 () Bool)

(assert (=> d!184693 m!762803))

(assert (=> d!184693 m!762761))

(assert (=> b!516331 d!184693))

(declare-fun d!184695 () Bool)

(declare-fun e!309021 () Bool)

(assert (=> d!184695 e!309021))

(declare-fun res!218995 () Bool)

(assert (=> d!184695 (=> (not res!218995) (not e!309021))))

(declare-fun lt!214644 () ListLongMap!79)

(declare-fun contains!1088 (ListLongMap!79 (_ BitVec 64)) Bool)

(assert (=> d!184695 (= res!218995 (contains!1088 lt!214644 (_1!3118 (tuple2!5805 lt!214603 lt!214607))))))

(declare-fun lt!214642 () List!4737)

(assert (=> d!184695 (= lt!214644 (ListLongMap!80 lt!214642))))

(declare-fun lt!214641 () Unit!8580)

(declare-fun lt!214643 () Unit!8580)

(assert (=> d!184695 (= lt!214641 lt!214643)))

(declare-datatypes ((Option!1233 0))(
  ( (None!1232) (Some!1232 (v!15772 List!4736)) )
))
(declare-fun getValueByKey!18 (List!4737 (_ BitVec 64)) Option!1233)

(assert (=> d!184695 (= (getValueByKey!18 lt!214642 (_1!3118 (tuple2!5805 lt!214603 lt!214607))) (Some!1232 (_2!3118 (tuple2!5805 lt!214603 lt!214607))))))

(declare-fun lemmaContainsTupThenGetReturnValue!7 (List!4737 (_ BitVec 64) List!4736) Unit!8580)

(assert (=> d!184695 (= lt!214643 (lemmaContainsTupThenGetReturnValue!7 lt!214642 (_1!3118 (tuple2!5805 lt!214603 lt!214607)) (_2!3118 (tuple2!5805 lt!214603 lt!214607))))))

(declare-fun insertStrictlySorted!3 (List!4737 (_ BitVec 64) List!4736) List!4737)

(assert (=> d!184695 (= lt!214642 (insertStrictlySorted!3 (toList!421 lt!214596) (_1!3118 (tuple2!5805 lt!214603 lt!214607)) (_2!3118 (tuple2!5805 lt!214603 lt!214607))))))

(assert (=> d!184695 (= (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)) lt!214644)))

(declare-fun b!516399 () Bool)

(declare-fun res!218994 () Bool)

(assert (=> b!516399 (=> (not res!218994) (not e!309021))))

(assert (=> b!516399 (= res!218994 (= (getValueByKey!18 (toList!421 lt!214644) (_1!3118 (tuple2!5805 lt!214603 lt!214607))) (Some!1232 (_2!3118 (tuple2!5805 lt!214603 lt!214607)))))))

(declare-fun b!516400 () Bool)

(declare-fun contains!1089 (List!4737 tuple2!5804) Bool)

(assert (=> b!516400 (= e!309021 (contains!1089 (toList!421 lt!214644) (tuple2!5805 lt!214603 lt!214607)))))

(assert (= (and d!184695 res!218995) b!516399))

(assert (= (and b!516399 res!218994) b!516400))

(declare-fun m!762805 () Bool)

(assert (=> d!184695 m!762805))

(declare-fun m!762807 () Bool)

(assert (=> d!184695 m!762807))

(declare-fun m!762809 () Bool)

(assert (=> d!184695 m!762809))

(declare-fun m!762811 () Bool)

(assert (=> d!184695 m!762811))

(declare-fun m!762813 () Bool)

(assert (=> b!516399 m!762813))

(declare-fun m!762815 () Bool)

(assert (=> b!516400 m!762815))

(assert (=> b!516331 d!184695))

(declare-fun d!184697 () Bool)

(assert (=> d!184697 (= (eq!33 (extractMap!21 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))) (-!36 call!37690 k0!1740)) (= (content!826 (toList!420 (extractMap!21 (toList!421 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))))) (content!826 (toList!420 (-!36 call!37690 k0!1740)))))))

(declare-fun bs!59724 () Bool)

(assert (= bs!59724 d!184697))

(declare-fun m!762817 () Bool)

(assert (=> bs!59724 m!762817))

(declare-fun m!762819 () Bool)

(assert (=> bs!59724 m!762819))

(assert (=> b!516331 d!184697))

(declare-fun d!184699 () Bool)

(declare-fun res!219000 () Bool)

(declare-fun e!309026 () Bool)

(assert (=> d!184699 (=> res!219000 e!309026)))

(assert (=> d!184699 (= res!219000 ((_ is Nil!4727) (toList!421 call!37688)))))

(assert (=> d!184699 (= (forall!1402 (toList!421 call!37688) lambda!14470) e!309026)))

(declare-fun b!516405 () Bool)

(declare-fun e!309027 () Bool)

(assert (=> b!516405 (= e!309026 e!309027)))

(declare-fun res!219001 () Bool)

(assert (=> b!516405 (=> (not res!219001) (not e!309027))))

(declare-fun dynLambda!2979 (Int tuple2!5804) Bool)

(assert (=> b!516405 (= res!219001 (dynLambda!2979 lambda!14470 (h!10125 (toList!421 call!37688))))))

(declare-fun b!516406 () Bool)

(assert (=> b!516406 (= e!309027 (forall!1402 (t!73295 (toList!421 call!37688)) lambda!14470))))

(assert (= (and d!184699 (not res!219000)) b!516405))

(assert (= (and b!516405 res!219001) b!516406))

(declare-fun b_lambda!20057 () Bool)

(assert (=> (not b_lambda!20057) (not b!516405)))

(declare-fun m!762821 () Bool)

(assert (=> b!516405 m!762821))

(declare-fun m!762823 () Bool)

(assert (=> b!516406 m!762823))

(assert (=> b!516331 d!184699))

(declare-fun bs!59725 () Bool)

(declare-fun d!184701 () Bool)

(assert (= bs!59725 (and d!184701 d!184685)))

(declare-fun lambda!14483 () Int)

(assert (=> bs!59725 (= lambda!14483 lambda!14476)))

(assert (=> d!184701 true))

(assert (=> d!184701 true))

(declare-fun b_next!13595 () Bool)

(assert (=> start!46856 (= b_next!13593 (or (and d!184701 (= lambda!14483 p!6060)) b_next!13595))))

(assert (=> d!184701 (= (allKeysSameHash!16 lt!214606 lt!214603 (hashF!2376 (_2!3120 lt!214588))) (forall!1401 lt!214606 lambda!14483))))

(declare-fun bs!59726 () Bool)

(assert (= bs!59726 d!184701))

(declare-fun m!762825 () Bool)

(assert (=> bs!59726 m!762825))

(assert (=> b!516331 d!184701))

(declare-fun d!184703 () Bool)

(declare-fun res!219002 () Bool)

(declare-fun e!309028 () Bool)

(assert (=> d!184703 (=> res!219002 e!309028)))

(assert (=> d!184703 (= res!219002 ((_ is Nil!4727) (toList!421 lt!214609)))))

(assert (=> d!184703 (= (forall!1402 (toList!421 lt!214609) lambda!14470) e!309028)))

(declare-fun b!516407 () Bool)

(declare-fun e!309029 () Bool)

(assert (=> b!516407 (= e!309028 e!309029)))

(declare-fun res!219003 () Bool)

(assert (=> b!516407 (=> (not res!219003) (not e!309029))))

(assert (=> b!516407 (= res!219003 (dynLambda!2979 lambda!14470 (h!10125 (toList!421 lt!214609))))))

(declare-fun b!516408 () Bool)

(assert (=> b!516408 (= e!309029 (forall!1402 (t!73295 (toList!421 lt!214609)) lambda!14470))))

(assert (= (and d!184703 (not res!219002)) b!516407))

(assert (= (and b!516407 res!219003) b!516408))

(declare-fun b_lambda!20059 () Bool)

(assert (=> (not b_lambda!20059) (not b!516407)))

(declare-fun m!762827 () Bool)

(assert (=> b!516407 m!762827))

(declare-fun m!762829 () Bool)

(assert (=> b!516408 m!762829))

(assert (=> b!516331 d!184703))

(declare-fun bs!59727 () Bool)

(declare-fun d!184705 () Bool)

(assert (= bs!59727 (and d!184705 b!516300)))

(declare-fun lambda!14486 () Int)

(assert (=> bs!59727 (not (= lambda!14486 lambda!14462))))

(declare-fun bs!59728 () Bool)

(assert (= bs!59728 (and d!184705 d!184683)))

(assert (=> bs!59728 (= lambda!14486 lambda!14473)))

(declare-fun bs!59729 () Bool)

(assert (= bs!59729 (and d!184705 d!184687)))

(assert (=> bs!59729 (not (= lambda!14486 lambda!14479))))

(declare-fun bs!59730 () Bool)

(assert (= bs!59730 (and d!184705 b!516327)))

(assert (=> bs!59730 (not (= lambda!14486 lambda!14470))))

(declare-fun bs!59731 () Bool)

(assert (= bs!59731 (and d!184705 b!516302)))

(assert (=> bs!59731 (not (= lambda!14486 lambda!14463))))

(declare-fun bs!59732 () Bool)

(assert (= bs!59732 (and d!184705 d!184689)))

(assert (=> bs!59732 (not (= lambda!14486 lambda!14482))))

(assert (=> d!184705 true))

(assert (=> d!184705 (allKeysSameHash!16 lt!214606 lt!214603 (hashF!2376 (_2!3120 lt!214588)))))

(declare-fun lt!214647 () Unit!8580)

(declare-fun choose!3679 (List!4737 (_ BitVec 64) List!4736 Hashable!493) Unit!8580)

(assert (=> d!184705 (= lt!214647 (choose!3679 (toList!421 lt!214596) lt!214603 lt!214606 (hashF!2376 (_2!3120 lt!214588))))))

(assert (=> d!184705 (forall!1402 (toList!421 lt!214596) lambda!14486)))

(assert (=> d!184705 (= (lemmaInLongMapAllKeySameHashThenForTuple!15 (toList!421 lt!214596) lt!214603 lt!214606 (hashF!2376 (_2!3120 lt!214588))) lt!214647)))

(declare-fun bs!59733 () Bool)

(assert (= bs!59733 d!184705))

(assert (=> bs!59733 m!762687))

(declare-fun m!762831 () Bool)

(assert (=> bs!59733 m!762831))

(declare-fun m!762833 () Bool)

(assert (=> bs!59733 m!762833))

(assert (=> b!516331 d!184705))

(declare-fun bm!37692 () Bool)

(declare-fun call!37697 () Bool)

(declare-fun e!309044 () List!4738)

(declare-fun contains!1090 (List!4738 K!1417) Bool)

(assert (=> bm!37692 (= call!37697 (contains!1090 e!309044 k0!1740))))

(declare-fun c!100022 () Bool)

(declare-fun c!100021 () Bool)

(assert (=> bm!37692 (= c!100022 c!100021)))

(declare-fun b!516427 () Bool)

(declare-fun e!309047 () Unit!8580)

(declare-fun Unit!8591 () Unit!8580)

(assert (=> b!516427 (= e!309047 Unit!8591)))

(declare-fun b!516428 () Bool)

(declare-fun e!309045 () Bool)

(assert (=> b!516428 (= e!309045 (not (contains!1090 (keys!1854 lt!214594) k0!1740)))))

(declare-fun b!516429 () Bool)

(declare-fun e!309042 () Bool)

(assert (=> b!516429 (= e!309042 (contains!1090 (keys!1854 lt!214594) k0!1740))))

(declare-fun b!516430 () Bool)

(declare-fun e!309046 () Bool)

(assert (=> b!516430 (= e!309046 e!309042)))

(declare-fun res!219012 () Bool)

(assert (=> b!516430 (=> (not res!219012) (not e!309042))))

(declare-datatypes ((Option!1234 0))(
  ( (None!1233) (Some!1233 (v!15773 V!1515)) )
))
(declare-fun isDefined!1047 (Option!1234) Bool)

(declare-fun getValueByKey!19 (List!4736 K!1417) Option!1234)

(assert (=> b!516430 (= res!219012 (isDefined!1047 (getValueByKey!19 (toList!420 lt!214594) k0!1740)))))

(declare-fun b!516431 () Bool)

(assert (=> b!516431 false))

(declare-fun lt!214664 () Unit!8580)

(declare-fun lt!214669 () Unit!8580)

(assert (=> b!516431 (= lt!214664 lt!214669)))

(declare-fun containsKey!17 (List!4736 K!1417) Bool)

(assert (=> b!516431 (containsKey!17 (toList!420 lt!214594) k0!1740)))

(declare-fun lemmaInGetKeysListThenContainsKey!5 (List!4736 K!1417) Unit!8580)

(assert (=> b!516431 (= lt!214669 (lemmaInGetKeysListThenContainsKey!5 (toList!420 lt!214594) k0!1740))))

(declare-fun Unit!8592 () Unit!8580)

(assert (=> b!516431 (= e!309047 Unit!8592)))

(declare-fun b!516432 () Bool)

(assert (=> b!516432 (= e!309044 (keys!1854 lt!214594))))

(declare-fun d!184707 () Bool)

(assert (=> d!184707 e!309046))

(declare-fun res!219010 () Bool)

(assert (=> d!184707 (=> res!219010 e!309046)))

(assert (=> d!184707 (= res!219010 e!309045)))

(declare-fun res!219011 () Bool)

(assert (=> d!184707 (=> (not res!219011) (not e!309045))))

(declare-fun lt!214670 () Bool)

(assert (=> d!184707 (= res!219011 (not lt!214670))))

(declare-fun lt!214671 () Bool)

(assert (=> d!184707 (= lt!214670 lt!214671)))

(declare-fun lt!214666 () Unit!8580)

(declare-fun e!309043 () Unit!8580)

(assert (=> d!184707 (= lt!214666 e!309043)))

(assert (=> d!184707 (= c!100021 lt!214671)))

(assert (=> d!184707 (= lt!214671 (containsKey!17 (toList!420 lt!214594) k0!1740))))

(assert (=> d!184707 (= (contains!1087 lt!214594 k0!1740) lt!214670)))

(declare-fun b!516433 () Bool)

(declare-fun getKeysList!6 (List!4736) List!4738)

(assert (=> b!516433 (= e!309044 (getKeysList!6 (toList!420 lt!214594)))))

(declare-fun b!516434 () Bool)

(assert (=> b!516434 (= e!309043 e!309047)))

(declare-fun c!100023 () Bool)

(assert (=> b!516434 (= c!100023 call!37697)))

(declare-fun b!516435 () Bool)

(declare-fun lt!214665 () Unit!8580)

(assert (=> b!516435 (= e!309043 lt!214665)))

(declare-fun lt!214668 () Unit!8580)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!10 (List!4736 K!1417) Unit!8580)

(assert (=> b!516435 (= lt!214668 (lemmaContainsKeyImpliesGetValueByKeyDefined!10 (toList!420 lt!214594) k0!1740))))

(assert (=> b!516435 (isDefined!1047 (getValueByKey!19 (toList!420 lt!214594) k0!1740))))

(declare-fun lt!214667 () Unit!8580)

(assert (=> b!516435 (= lt!214667 lt!214668)))

(declare-fun lemmaInListThenGetKeysListContains!5 (List!4736 K!1417) Unit!8580)

(assert (=> b!516435 (= lt!214665 (lemmaInListThenGetKeysListContains!5 (toList!420 lt!214594) k0!1740))))

(assert (=> b!516435 call!37697))

(assert (= (and d!184707 c!100021) b!516435))

(assert (= (and d!184707 (not c!100021)) b!516434))

(assert (= (and b!516434 c!100023) b!516431))

(assert (= (and b!516434 (not c!100023)) b!516427))

(assert (= (or b!516435 b!516434) bm!37692))

(assert (= (and bm!37692 c!100022) b!516433))

(assert (= (and bm!37692 (not c!100022)) b!516432))

(assert (= (and d!184707 res!219011) b!516428))

(assert (= (and d!184707 (not res!219010)) b!516430))

(assert (= (and b!516430 res!219012) b!516429))

(declare-fun m!762835 () Bool)

(assert (=> b!516430 m!762835))

(assert (=> b!516430 m!762835))

(declare-fun m!762837 () Bool)

(assert (=> b!516430 m!762837))

(declare-fun m!762839 () Bool)

(assert (=> bm!37692 m!762839))

(declare-fun m!762841 () Bool)

(assert (=> d!184707 m!762841))

(declare-fun m!762843 () Bool)

(assert (=> b!516429 m!762843))

(assert (=> b!516429 m!762843))

(declare-fun m!762845 () Bool)

(assert (=> b!516429 m!762845))

(declare-fun m!762847 () Bool)

(assert (=> b!516435 m!762847))

(assert (=> b!516435 m!762835))

(assert (=> b!516435 m!762835))

(assert (=> b!516435 m!762837))

(declare-fun m!762849 () Bool)

(assert (=> b!516435 m!762849))

(assert (=> b!516432 m!762843))

(assert (=> b!516428 m!762843))

(assert (=> b!516428 m!762843))

(assert (=> b!516428 m!762845))

(assert (=> b!516431 m!762841))

(declare-fun m!762851 () Bool)

(assert (=> b!516431 m!762851))

(declare-fun m!762853 () Bool)

(assert (=> b!516433 m!762853))

(assert (=> b!516331 d!184707))

(declare-fun bs!59734 () Bool)

(declare-fun d!184709 () Bool)

(assert (= bs!59734 (and d!184709 b!516300)))

(declare-fun lambda!14491 () Int)

(assert (=> bs!59734 (= lambda!14491 lambda!14462)))

(declare-fun bs!59735 () Bool)

(assert (= bs!59735 (and d!184709 d!184705)))

(assert (=> bs!59735 (not (= lambda!14491 lambda!14486))))

(declare-fun bs!59736 () Bool)

(assert (= bs!59736 (and d!184709 d!184683)))

(assert (=> bs!59736 (not (= lambda!14491 lambda!14473))))

(declare-fun bs!59737 () Bool)

(assert (= bs!59737 (and d!184709 d!184687)))

(assert (=> bs!59737 (= lambda!14491 lambda!14479)))

(declare-fun bs!59738 () Bool)

(assert (= bs!59738 (and d!184709 b!516327)))

(assert (=> bs!59738 (= lambda!14491 lambda!14470)))

(declare-fun bs!59739 () Bool)

(assert (= bs!59739 (and d!184709 b!516302)))

(assert (=> bs!59739 (= lambda!14491 lambda!14463)))

(declare-fun bs!59740 () Bool)

(assert (= bs!59740 (and d!184709 d!184689)))

(assert (=> bs!59740 (= lambda!14491 lambda!14482)))

(declare-fun e!309050 () Bool)

(assert (=> d!184709 e!309050))

(declare-fun res!219015 () Bool)

(assert (=> d!184709 (=> (not res!219015) (not e!309050))))

(declare-fun lt!214677 () ListLongMap!79)

(assert (=> d!184709 (= res!219015 (forall!1402 (toList!421 lt!214677) lambda!14491))))

(assert (=> d!184709 (= lt!214677 (+!24 lt!214596 (tuple2!5805 lt!214603 lt!214607)))))

(declare-fun lt!214676 () Unit!8580)

(declare-fun choose!3680 (ListLongMap!79 (_ BitVec 64) List!4736 Hashable!493) Unit!8580)

(assert (=> d!184709 (= lt!214676 (choose!3680 lt!214596 lt!214603 lt!214607 (hashF!2376 (_2!3120 lt!214588))))))

(assert (=> d!184709 (forall!1402 (toList!421 lt!214596) lambda!14491)))

(assert (=> d!184709 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!15 lt!214596 lt!214603 lt!214607 (hashF!2376 (_2!3120 lt!214588))) lt!214676)))

(declare-fun b!516438 () Bool)

(assert (=> b!516438 (= e!309050 (allKeysSameHashInMap!28 lt!214677 (hashF!2376 (_2!3120 lt!214588))))))

(assert (= (and d!184709 res!219015) b!516438))

(declare-fun m!762855 () Bool)

(assert (=> d!184709 m!762855))

(assert (=> d!184709 m!762699))

(declare-fun m!762857 () Bool)

(assert (=> d!184709 m!762857))

(declare-fun m!762859 () Bool)

(assert (=> d!184709 m!762859))

(declare-fun m!762861 () Bool)

(assert (=> b!516438 m!762861))

(assert (=> b!516331 d!184709))

(declare-fun bs!59741 () Bool)

(declare-fun d!184711 () Bool)

(assert (= bs!59741 (and d!184711 b!516300)))

(declare-fun lambda!14492 () Int)

(assert (=> bs!59741 (not (= lambda!14492 lambda!14462))))

(declare-fun bs!59742 () Bool)

(assert (= bs!59742 (and d!184711 d!184705)))

(assert (=> bs!59742 (= lambda!14492 lambda!14486)))

(declare-fun bs!59743 () Bool)

(assert (= bs!59743 (and d!184711 d!184683)))

(assert (=> bs!59743 (= lambda!14492 lambda!14473)))

(declare-fun bs!59744 () Bool)

(assert (= bs!59744 (and d!184711 d!184687)))

(assert (=> bs!59744 (not (= lambda!14492 lambda!14479))))

(declare-fun bs!59745 () Bool)

(assert (= bs!59745 (and d!184711 b!516327)))

(assert (=> bs!59745 (not (= lambda!14492 lambda!14470))))

(declare-fun bs!59746 () Bool)

(assert (= bs!59746 (and d!184711 d!184709)))

(assert (=> bs!59746 (not (= lambda!14492 lambda!14491))))

(declare-fun bs!59747 () Bool)

(assert (= bs!59747 (and d!184711 b!516302)))

(assert (=> bs!59747 (not (= lambda!14492 lambda!14463))))

(declare-fun bs!59748 () Bool)

(assert (= bs!59748 (and d!184711 d!184689)))

(assert (=> bs!59748 (not (= lambda!14492 lambda!14482))))

(assert (=> d!184711 true))

(assert (=> d!184711 (= (allKeysSameHashInMap!28 lt!214609 (hashF!2376 (_2!3120 lt!214588))) (forall!1402 (toList!421 lt!214609) lambda!14492))))

(declare-fun bs!59749 () Bool)

(assert (= bs!59749 d!184711))

(declare-fun m!762863 () Bool)

(assert (=> bs!59749 m!762863))

(assert (=> b!516332 d!184711))

(declare-fun d!184713 () Bool)

(assert (=> d!184713 (= (invariantList!74 (toList!420 lt!214619)) (noDuplicatedKeys!16 (toList!420 lt!214619)))))

(declare-fun bs!59750 () Bool)

(assert (= bs!59750 d!184713))

(declare-fun m!762865 () Bool)

(assert (=> bs!59750 m!762865))

(assert (=> d!184673 d!184713))

(declare-fun bs!59751 () Bool)

(declare-fun d!184715 () Bool)

(assert (= bs!59751 (and d!184715 b!516300)))

(declare-fun lambda!14493 () Int)

(assert (=> bs!59751 (= lambda!14493 lambda!14462)))

(declare-fun bs!59752 () Bool)

(assert (= bs!59752 (and d!184715 d!184705)))

(assert (=> bs!59752 (not (= lambda!14493 lambda!14486))))

(declare-fun bs!59753 () Bool)

(assert (= bs!59753 (and d!184715 d!184683)))

(assert (=> bs!59753 (not (= lambda!14493 lambda!14473))))

(declare-fun bs!59754 () Bool)

(assert (= bs!59754 (and d!184715 d!184687)))

(assert (=> bs!59754 (= lambda!14493 lambda!14479)))

(declare-fun bs!59755 () Bool)

(assert (= bs!59755 (and d!184715 b!516327)))

(assert (=> bs!59755 (= lambda!14493 lambda!14470)))

(declare-fun bs!59756 () Bool)

(assert (= bs!59756 (and d!184715 d!184711)))

(assert (=> bs!59756 (not (= lambda!14493 lambda!14492))))

(declare-fun bs!59757 () Bool)

(assert (= bs!59757 (and d!184715 d!184709)))

(assert (=> bs!59757 (= lambda!14493 lambda!14491)))

(declare-fun bs!59758 () Bool)

(assert (= bs!59758 (and d!184715 b!516302)))

(assert (=> bs!59758 (= lambda!14493 lambda!14463)))

(declare-fun bs!59759 () Bool)

(assert (= bs!59759 (and d!184715 d!184689)))

(assert (=> bs!59759 (= lambda!14493 lambda!14482)))

(declare-fun lt!214678 () ListMap!193)

(assert (=> d!184715 (invariantList!74 (toList!420 lt!214678))))

(declare-fun e!309051 () ListMap!193)

(assert (=> d!184715 (= lt!214678 e!309051)))

(declare-fun c!100024 () Bool)

(assert (=> d!184715 (= c!100024 ((_ is Cons!4727) (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))))))

(assert (=> d!184715 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14493)))

(assert (=> d!184715 (= (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))) lt!214678)))

(declare-fun b!516439 () Bool)

(assert (=> b!516439 (= e!309051 (addToMapMapFromBucket!4 (_2!3118 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))) (extractMap!21 (t!73295 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))))))))

(declare-fun b!516440 () Bool)

(assert (=> b!516440 (= e!309051 (ListMap!194 Nil!4726))))

(assert (= (and d!184715 c!100024) b!516439))

(assert (= (and d!184715 (not c!100024)) b!516440))

(declare-fun m!762867 () Bool)

(assert (=> d!184715 m!762867))

(declare-fun m!762869 () Bool)

(assert (=> d!184715 m!762869))

(declare-fun m!762871 () Bool)

(assert (=> b!516439 m!762871))

(assert (=> b!516439 m!762871))

(declare-fun m!762873 () Bool)

(assert (=> b!516439 m!762873))

(assert (=> d!184673 d!184715))

(declare-fun d!184717 () Bool)

(declare-fun map!1042 (LongMapFixedSize!1042) ListLongMap!79)

(assert (=> d!184717 (= (map!1041 (v!15767 (underlying!1222 hm!65))) (map!1042 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))))))

(declare-fun bs!59760 () Bool)

(assert (= bs!59760 d!184717))

(declare-fun m!762875 () Bool)

(assert (=> bs!59760 m!762875))

(assert (=> d!184673 d!184717))

(assert (=> d!184673 d!184649))

(declare-fun d!184719 () Bool)

(declare-fun res!219016 () Bool)

(declare-fun e!309052 () Bool)

(assert (=> d!184719 (=> res!219016 e!309052)))

(assert (=> d!184719 (= res!219016 ((_ is Nil!4727) (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))

(assert (=> d!184719 (= (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))) lambda!14463) e!309052)))

(declare-fun b!516441 () Bool)

(declare-fun e!309053 () Bool)

(assert (=> b!516441 (= e!309052 e!309053)))

(declare-fun res!219017 () Bool)

(assert (=> b!516441 (=> (not res!219017) (not e!309053))))

(assert (=> b!516441 (= res!219017 (dynLambda!2979 lambda!14463 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))))))))

(declare-fun b!516442 () Bool)

(assert (=> b!516442 (= e!309053 (forall!1402 (t!73295 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))) lambda!14463))))

(assert (= (and d!184719 (not res!219016)) b!516441))

(assert (= (and b!516441 res!219017) b!516442))

(declare-fun b_lambda!20061 () Bool)

(assert (=> (not b_lambda!20061) (not b!516441)))

(declare-fun m!762877 () Bool)

(assert (=> b!516441 m!762877))

(declare-fun m!762879 () Bool)

(assert (=> b!516442 m!762879))

(assert (=> b!516302 d!184719))

(declare-fun d!184721 () Bool)

(assert (=> d!184721 (= (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))) (map!1042 (v!15766 (underlying!1221 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))

(declare-fun bs!59761 () Bool)

(assert (= bs!59761 d!184721))

(declare-fun m!762881 () Bool)

(assert (=> bs!59761 m!762881))

(assert (=> b!516302 d!184721))

(declare-fun d!184723 () Bool)

(assert (=> d!184723 (= (invariantList!74 (toList!420 lt!214525)) (noDuplicatedKeys!16 (toList!420 lt!214525)))))

(declare-fun bs!59762 () Bool)

(assert (= bs!59762 d!184723))

(declare-fun m!762883 () Bool)

(assert (=> bs!59762 m!762883))

(assert (=> d!184655 d!184723))

(declare-fun bs!59763 () Bool)

(declare-fun d!184725 () Bool)

(assert (= bs!59763 (and d!184725 b!516300)))

(declare-fun lambda!14494 () Int)

(assert (=> bs!59763 (= lambda!14494 lambda!14462)))

(declare-fun bs!59764 () Bool)

(assert (= bs!59764 (and d!184725 d!184705)))

(assert (=> bs!59764 (not (= lambda!14494 lambda!14486))))

(declare-fun bs!59765 () Bool)

(assert (= bs!59765 (and d!184725 d!184683)))

(assert (=> bs!59765 (not (= lambda!14494 lambda!14473))))

(declare-fun bs!59766 () Bool)

(assert (= bs!59766 (and d!184725 d!184687)))

(assert (=> bs!59766 (= lambda!14494 lambda!14479)))

(declare-fun bs!59767 () Bool)

(assert (= bs!59767 (and d!184725 b!516327)))

(assert (=> bs!59767 (= lambda!14494 lambda!14470)))

(declare-fun bs!59768 () Bool)

(assert (= bs!59768 (and d!184725 d!184709)))

(assert (=> bs!59768 (= lambda!14494 lambda!14491)))

(declare-fun bs!59769 () Bool)

(assert (= bs!59769 (and d!184725 b!516302)))

(assert (=> bs!59769 (= lambda!14494 lambda!14463)))

(declare-fun bs!59770 () Bool)

(assert (= bs!59770 (and d!184725 d!184689)))

(assert (=> bs!59770 (= lambda!14494 lambda!14482)))

(declare-fun bs!59771 () Bool)

(assert (= bs!59771 (and d!184725 d!184715)))

(assert (=> bs!59771 (= lambda!14494 lambda!14493)))

(declare-fun bs!59772 () Bool)

(assert (= bs!59772 (and d!184725 d!184711)))

(assert (=> bs!59772 (not (= lambda!14494 lambda!14492))))

(declare-fun lt!214679 () ListMap!193)

(assert (=> d!184725 (invariantList!74 (toList!420 lt!214679))))

(declare-fun e!309054 () ListMap!193)

(assert (=> d!184725 (= lt!214679 e!309054)))

(declare-fun c!100025 () Bool)

(assert (=> d!184725 (= c!100025 ((_ is Cons!4727) (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))

(assert (=> d!184725 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))) lambda!14494)))

(assert (=> d!184725 (= (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))) lt!214679)))

(declare-fun b!516443 () Bool)

(assert (=> b!516443 (= e!309054 (addToMapMapFromBucket!4 (_2!3118 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))))) (extractMap!21 (t!73295 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))))

(declare-fun b!516444 () Bool)

(assert (=> b!516444 (= e!309054 (ListMap!194 Nil!4726))))

(assert (= (and d!184725 c!100025) b!516443))

(assert (= (and d!184725 (not c!100025)) b!516444))

(declare-fun m!762885 () Bool)

(assert (=> d!184725 m!762885))

(declare-fun m!762887 () Bool)

(assert (=> d!184725 m!762887))

(declare-fun m!762889 () Bool)

(assert (=> b!516443 m!762889))

(assert (=> b!516443 m!762889))

(declare-fun m!762891 () Bool)

(assert (=> b!516443 m!762891))

(assert (=> d!184655 d!184725))

(assert (=> d!184655 d!184721))

(assert (=> d!184655 d!184665))

(declare-fun d!184727 () Bool)

(declare-fun valid!486 (LongMapFixedSize!1042) Bool)

(assert (=> d!184727 (= (valid!485 (v!15767 (underlying!1222 (_2!3117 lt!214522)))) (valid!486 (v!15766 (underlying!1221 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))

(declare-fun bs!59773 () Bool)

(assert (= bs!59773 d!184727))

(declare-fun m!762893 () Bool)

(assert (=> bs!59773 m!762893))

(assert (=> d!184665 d!184727))

(declare-fun d!184729 () Bool)

(declare-fun res!219018 () Bool)

(declare-fun e!309055 () Bool)

(assert (=> d!184729 (=> res!219018 e!309055)))

(assert (=> d!184729 (= res!219018 ((_ is Nil!4727) (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))))))

(assert (=> d!184729 (= (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14462) e!309055)))

(declare-fun b!516445 () Bool)

(declare-fun e!309056 () Bool)

(assert (=> b!516445 (= e!309055 e!309056)))

(declare-fun res!219019 () Bool)

(assert (=> b!516445 (=> (not res!219019) (not e!309056))))

(assert (=> b!516445 (= res!219019 (dynLambda!2979 lambda!14462 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))))))

(declare-fun b!516446 () Bool)

(assert (=> b!516446 (= e!309056 (forall!1402 (t!73295 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))) lambda!14462))))

(assert (= (and d!184729 (not res!219018)) b!516445))

(assert (= (and b!516445 res!219019) b!516446))

(declare-fun b_lambda!20063 () Bool)

(assert (=> (not b_lambda!20063) (not b!516445)))

(declare-fun m!762895 () Bool)

(assert (=> b!516445 m!762895))

(declare-fun m!762897 () Bool)

(assert (=> b!516446 m!762897))

(assert (=> b!516300 d!184729))

(assert (=> b!516300 d!184717))

(declare-fun d!184731 () Bool)

(declare-fun lt!214680 () ListMap!193)

(assert (=> d!184731 (invariantList!74 (toList!420 lt!214680))))

(assert (=> d!184731 (= lt!214680 (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3120 lt!214588)))))))))

(assert (=> d!184731 (valid!484 (_2!3120 lt!214588))))

(assert (=> d!184731 (= (map!1040 (_2!3120 lt!214588)) lt!214680)))

(declare-fun bs!59774 () Bool)

(assert (= bs!59774 d!184731))

(declare-fun m!762899 () Bool)

(assert (=> bs!59774 m!762899))

(declare-fun m!762901 () Bool)

(assert (=> bs!59774 m!762901))

(declare-fun m!762903 () Bool)

(assert (=> bs!59774 m!762903))

(assert (=> bs!59774 m!762679))

(assert (=> bm!37686 d!184731))

(declare-fun bs!59775 () Bool)

(declare-fun d!184733 () Bool)

(assert (= bs!59775 (and d!184733 b!516300)))

(declare-fun lambda!14495 () Int)

(assert (=> bs!59775 (not (= lambda!14495 lambda!14462))))

(declare-fun bs!59776 () Bool)

(assert (= bs!59776 (and d!184733 d!184705)))

(assert (=> bs!59776 (= (= (hashF!2376 hm!65) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14495 lambda!14486))))

(declare-fun bs!59777 () Bool)

(assert (= bs!59777 (and d!184733 d!184683)))

(assert (=> bs!59777 (= (= (hashF!2376 hm!65) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14495 lambda!14473))))

(declare-fun bs!59778 () Bool)

(assert (= bs!59778 (and d!184733 d!184687)))

(assert (=> bs!59778 (not (= lambda!14495 lambda!14479))))

(declare-fun bs!59779 () Bool)

(assert (= bs!59779 (and d!184733 b!516327)))

(assert (=> bs!59779 (not (= lambda!14495 lambda!14470))))

(declare-fun bs!59780 () Bool)

(assert (= bs!59780 (and d!184733 d!184725)))

(assert (=> bs!59780 (not (= lambda!14495 lambda!14494))))

(declare-fun bs!59781 () Bool)

(assert (= bs!59781 (and d!184733 d!184709)))

(assert (=> bs!59781 (not (= lambda!14495 lambda!14491))))

(declare-fun bs!59782 () Bool)

(assert (= bs!59782 (and d!184733 b!516302)))

(assert (=> bs!59782 (not (= lambda!14495 lambda!14463))))

(declare-fun bs!59783 () Bool)

(assert (= bs!59783 (and d!184733 d!184689)))

(assert (=> bs!59783 (not (= lambda!14495 lambda!14482))))

(declare-fun bs!59784 () Bool)

(assert (= bs!59784 (and d!184733 d!184715)))

(assert (=> bs!59784 (not (= lambda!14495 lambda!14493))))

(declare-fun bs!59785 () Bool)

(assert (= bs!59785 (and d!184733 d!184711)))

(assert (=> bs!59785 (= (= (hashF!2376 hm!65) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14495 lambda!14492))))

(assert (=> d!184733 true))

(assert (=> d!184733 (= (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 hm!65))) (hashF!2376 hm!65)) (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14495))))

(declare-fun bs!59786 () Bool)

(assert (= bs!59786 d!184733))

(declare-fun m!762905 () Bool)

(assert (=> bs!59786 m!762905))

(assert (=> b!516301 d!184733))

(assert (=> b!516301 d!184717))

(assert (=> bm!37689 d!184673))

(declare-fun d!184735 () Bool)

(declare-fun res!219020 () Bool)

(declare-fun e!309057 () Bool)

(assert (=> d!184735 (=> res!219020 e!309057)))

(assert (=> d!184735 (= res!219020 ((_ is Nil!4726) (t!73292 (toList!420 lt!214518))))))

(assert (=> d!184735 (= (forall!1401 (t!73292 (toList!420 lt!214518)) p!6060) e!309057)))

(declare-fun b!516447 () Bool)

(declare-fun e!309058 () Bool)

(assert (=> b!516447 (= e!309057 e!309058)))

(declare-fun res!219021 () Bool)

(assert (=> b!516447 (=> (not res!219021) (not e!309058))))

(assert (=> b!516447 (= res!219021 (dynLambda!2978 p!6060 (h!10124 (t!73292 (toList!420 lt!214518)))))))

(declare-fun b!516448 () Bool)

(assert (=> b!516448 (= e!309058 (forall!1401 (t!73292 (t!73292 (toList!420 lt!214518))) p!6060))))

(assert (= (and d!184735 (not res!219020)) b!516447))

(assert (= (and b!516447 res!219021) b!516448))

(declare-fun b_lambda!20065 () Bool)

(assert (=> (not b_lambda!20065) (not b!516447)))

(declare-fun t!73298 () Bool)

(declare-fun tb!47157 () Bool)

(assert (=> (and start!46856 (= p!6060 p!6060) t!73298) tb!47157))

(declare-fun result!52218 () Bool)

(assert (=> tb!47157 (= result!52218 true)))

(assert (=> b!516447 t!73298))

(declare-fun b_and!51051 () Bool)

(assert (= b_and!51049 (and (=> t!73298 result!52218) b_and!51051)))

(declare-fun m!762907 () Bool)

(assert (=> b!516447 m!762907))

(declare-fun m!762909 () Bool)

(assert (=> b!516448 m!762909))

(assert (=> b!516345 d!184735))

(declare-fun d!184737 () Bool)

(declare-fun e!309059 () Bool)

(assert (=> d!184737 e!309059))

(declare-fun res!219022 () Bool)

(assert (=> d!184737 (=> (not res!219022) (not e!309059))))

(declare-fun lt!214681 () ListMap!193)

(assert (=> d!184737 (= res!219022 (not (contains!1087 lt!214681 k0!1740)))))

(assert (=> d!184737 (= lt!214681 (ListMap!194 (removePresrvNoDuplicatedKeys!13 (toList!420 call!37687) k0!1740)))))

(assert (=> d!184737 (= (-!36 call!37687 k0!1740) lt!214681)))

(declare-fun b!516449 () Bool)

(assert (=> b!516449 (= e!309059 (= ((_ map and) (content!827 (keys!1854 call!37687)) ((_ map not) (store ((as const (Array K!1417 Bool)) false) k0!1740 true))) (content!827 (keys!1854 lt!214681))))))

(assert (= (and d!184737 res!219022) b!516449))

(declare-fun m!762911 () Bool)

(assert (=> d!184737 m!762911))

(declare-fun m!762913 () Bool)

(assert (=> d!184737 m!762913))

(declare-fun m!762915 () Bool)

(assert (=> b!516449 m!762915))

(declare-fun m!762917 () Bool)

(assert (=> b!516449 m!762917))

(declare-fun m!762919 () Bool)

(assert (=> b!516449 m!762919))

(assert (=> b!516449 m!762915))

(assert (=> b!516449 m!762737))

(assert (=> b!516449 m!762919))

(declare-fun m!762921 () Bool)

(assert (=> b!516449 m!762921))

(assert (=> b!516335 d!184737))

(declare-fun bs!59787 () Bool)

(declare-fun b!516450 () Bool)

(assert (= bs!59787 (and b!516450 b!516300)))

(declare-fun lambda!14496 () Int)

(assert (=> bs!59787 (= lambda!14496 lambda!14462)))

(declare-fun bs!59788 () Bool)

(assert (= bs!59788 (and b!516450 d!184733)))

(assert (=> bs!59788 (not (= lambda!14496 lambda!14495))))

(declare-fun bs!59789 () Bool)

(assert (= bs!59789 (and b!516450 d!184705)))

(assert (=> bs!59789 (not (= lambda!14496 lambda!14486))))

(declare-fun bs!59790 () Bool)

(assert (= bs!59790 (and b!516450 d!184683)))

(assert (=> bs!59790 (not (= lambda!14496 lambda!14473))))

(declare-fun bs!59791 () Bool)

(assert (= bs!59791 (and b!516450 d!184687)))

(assert (=> bs!59791 (= lambda!14496 lambda!14479)))

(declare-fun bs!59792 () Bool)

(assert (= bs!59792 (and b!516450 b!516327)))

(assert (=> bs!59792 (= lambda!14496 lambda!14470)))

(declare-fun bs!59793 () Bool)

(assert (= bs!59793 (and b!516450 d!184725)))

(assert (=> bs!59793 (= lambda!14496 lambda!14494)))

(declare-fun bs!59794 () Bool)

(assert (= bs!59794 (and b!516450 d!184709)))

(assert (=> bs!59794 (= lambda!14496 lambda!14491)))

(declare-fun bs!59795 () Bool)

(assert (= bs!59795 (and b!516450 b!516302)))

(assert (=> bs!59795 (= lambda!14496 lambda!14463)))

(declare-fun bs!59796 () Bool)

(assert (= bs!59796 (and b!516450 d!184689)))

(assert (=> bs!59796 (= lambda!14496 lambda!14482)))

(declare-fun bs!59797 () Bool)

(assert (= bs!59797 (and b!516450 d!184715)))

(assert (=> bs!59797 (= lambda!14496 lambda!14493)))

(declare-fun bs!59798 () Bool)

(assert (= bs!59798 (and b!516450 d!184711)))

(assert (=> bs!59798 (not (= lambda!14496 lambda!14492))))

(declare-fun d!184739 () Bool)

(declare-fun res!219023 () Bool)

(declare-fun e!309060 () Bool)

(assert (=> d!184739 (=> (not res!219023) (not e!309060))))

(assert (=> d!184739 (= res!219023 (valid!485 (v!15767 (underlying!1222 (_2!3120 lt!214588)))))))

(assert (=> d!184739 (= (valid!484 (_2!3120 lt!214588)) e!309060)))

(declare-fun res!219024 () Bool)

(assert (=> b!516450 (=> (not res!219024) (not e!309060))))

(assert (=> b!516450 (= res!219024 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3120 lt!214588))))) lambda!14496))))

(declare-fun b!516451 () Bool)

(assert (=> b!516451 (= e!309060 (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 (_2!3120 lt!214588)))) (hashF!2376 (_2!3120 lt!214588))))))

(assert (= (and d!184739 res!219023) b!516450))

(assert (= (and b!516450 res!219024) b!516451))

(declare-fun m!762923 () Bool)

(assert (=> d!184739 m!762923))

(assert (=> b!516450 m!762901))

(declare-fun m!762925 () Bool)

(assert (=> b!516450 m!762925))

(assert (=> b!516451 m!762901))

(assert (=> b!516451 m!762901))

(declare-fun m!762927 () Bool)

(assert (=> b!516451 m!762927))

(assert (=> bm!37687 d!184739))

(declare-fun bs!59799 () Bool)

(declare-fun d!184741 () Bool)

(assert (= bs!59799 (and d!184741 b!516300)))

(declare-fun lambda!14497 () Int)

(assert (=> bs!59799 (not (= lambda!14497 lambda!14462))))

(declare-fun bs!59800 () Bool)

(assert (= bs!59800 (and d!184741 d!184733)))

(assert (=> bs!59800 (= (= (hashF!2376 (_2!3117 lt!214522)) (hashF!2376 hm!65)) (= lambda!14497 lambda!14495))))

(declare-fun bs!59801 () Bool)

(assert (= bs!59801 (and d!184741 d!184705)))

(assert (=> bs!59801 (= (= (hashF!2376 (_2!3117 lt!214522)) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14497 lambda!14486))))

(declare-fun bs!59802 () Bool)

(assert (= bs!59802 (and d!184741 d!184683)))

(assert (=> bs!59802 (= (= (hashF!2376 (_2!3117 lt!214522)) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14497 lambda!14473))))

(declare-fun bs!59803 () Bool)

(assert (= bs!59803 (and d!184741 b!516450)))

(assert (=> bs!59803 (not (= lambda!14497 lambda!14496))))

(declare-fun bs!59804 () Bool)

(assert (= bs!59804 (and d!184741 d!184687)))

(assert (=> bs!59804 (not (= lambda!14497 lambda!14479))))

(declare-fun bs!59805 () Bool)

(assert (= bs!59805 (and d!184741 b!516327)))

(assert (=> bs!59805 (not (= lambda!14497 lambda!14470))))

(declare-fun bs!59806 () Bool)

(assert (= bs!59806 (and d!184741 d!184725)))

(assert (=> bs!59806 (not (= lambda!14497 lambda!14494))))

(declare-fun bs!59807 () Bool)

(assert (= bs!59807 (and d!184741 d!184709)))

(assert (=> bs!59807 (not (= lambda!14497 lambda!14491))))

(declare-fun bs!59808 () Bool)

(assert (= bs!59808 (and d!184741 b!516302)))

(assert (=> bs!59808 (not (= lambda!14497 lambda!14463))))

(declare-fun bs!59809 () Bool)

(assert (= bs!59809 (and d!184741 d!184689)))

(assert (=> bs!59809 (not (= lambda!14497 lambda!14482))))

(declare-fun bs!59810 () Bool)

(assert (= bs!59810 (and d!184741 d!184715)))

(assert (=> bs!59810 (not (= lambda!14497 lambda!14493))))

(declare-fun bs!59811 () Bool)

(assert (= bs!59811 (and d!184741 d!184711)))

(assert (=> bs!59811 (= (= (hashF!2376 (_2!3117 lt!214522)) (hashF!2376 (_2!3120 lt!214588))) (= lambda!14497 lambda!14492))))

(assert (=> d!184741 true))

(assert (=> d!184741 (= (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))) (hashF!2376 (_2!3117 lt!214522))) (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))) lambda!14497))))

(declare-fun bs!59812 () Bool)

(assert (= bs!59812 d!184741))

(declare-fun m!762929 () Bool)

(assert (=> bs!59812 m!762929))

(assert (=> b!516303 d!184741))

(assert (=> b!516303 d!184721))

(declare-fun d!184743 () Bool)

(declare-fun c!100026 () Bool)

(assert (=> d!184743 (= c!100026 ((_ is Nil!4726) (t!73292 (toList!420 lt!214520))))))

(declare-fun e!309061 () (InoxSet tuple2!5800))

(assert (=> d!184743 (= (content!826 (t!73292 (toList!420 lt!214520))) e!309061)))

(declare-fun b!516452 () Bool)

(assert (=> b!516452 (= e!309061 ((as const (Array tuple2!5800 Bool)) false))))

(declare-fun b!516453 () Bool)

(assert (=> b!516453 (= e!309061 ((_ map or) (store ((as const (Array tuple2!5800 Bool)) false) (h!10124 (t!73292 (toList!420 lt!214520))) true) (content!826 (t!73292 (t!73292 (toList!420 lt!214520))))))))

(assert (= (and d!184743 c!100026) b!516452))

(assert (= (and d!184743 (not c!100026)) b!516453))

(declare-fun m!762931 () Bool)

(assert (=> b!516453 m!762931))

(declare-fun m!762933 () Bool)

(assert (=> b!516453 m!762933))

(assert (=> b!516351 d!184743))

(declare-fun d!184745 () Bool)

(declare-fun res!219029 () Bool)

(declare-fun e!309066 () Bool)

(assert (=> d!184745 (=> res!219029 e!309066)))

(assert (=> d!184745 (= res!219029 (or ((_ is Nil!4726) (toList!420 lt!214518)) ((_ is Nil!4726) (t!73292 (toList!420 lt!214518)))))))

(assert (=> d!184745 (= (noDuplicatedKeys!16 (toList!420 lt!214518)) e!309066)))

(declare-fun b!516458 () Bool)

(declare-fun e!309067 () Bool)

(assert (=> b!516458 (= e!309066 e!309067)))

(declare-fun res!219030 () Bool)

(assert (=> b!516458 (=> (not res!219030) (not e!309067))))

(assert (=> b!516458 (= res!219030 (not (containsKey!17 (t!73292 (toList!420 lt!214518)) (_1!3116 (h!10124 (toList!420 lt!214518))))))))

(declare-fun b!516459 () Bool)

(assert (=> b!516459 (= e!309067 (noDuplicatedKeys!16 (t!73292 (toList!420 lt!214518))))))

(assert (= (and d!184745 (not res!219029)) b!516458))

(assert (= (and b!516458 res!219030) b!516459))

(declare-fun m!762935 () Bool)

(assert (=> b!516458 m!762935))

(declare-fun m!762937 () Bool)

(assert (=> b!516459 m!762937))

(assert (=> d!184659 d!184745))

(declare-fun d!184747 () Bool)

(assert (=> d!184747 (= (eq!33 call!37693 e!308983) (= (content!826 (toList!420 call!37693)) (content!826 (toList!420 e!308983))))))

(declare-fun bs!59813 () Bool)

(assert (= bs!59813 d!184747))

(declare-fun m!762939 () Bool)

(assert (=> bs!59813 m!762939))

(declare-fun m!762941 () Bool)

(assert (=> bs!59813 m!762941))

(assert (=> bm!37688 d!184747))

(declare-fun d!184749 () Bool)

(declare-fun c!100029 () Bool)

(assert (=> d!184749 (= c!100029 ((_ is Nil!4728) (keys!1854 lt!214518)))))

(declare-fun e!309070 () (InoxSet K!1417))

(assert (=> d!184749 (= (content!827 (keys!1854 lt!214518)) e!309070)))

(declare-fun b!516464 () Bool)

(assert (=> b!516464 (= e!309070 ((as const (Array K!1417 Bool)) false))))

(declare-fun b!516465 () Bool)

(assert (=> b!516465 (= e!309070 ((_ map or) (store ((as const (Array K!1417 Bool)) false) (h!10126 (keys!1854 lt!214518)) true) (content!827 (t!73296 (keys!1854 lt!214518)))))))

(assert (= (and d!184749 c!100029) b!516464))

(assert (= (and d!184749 (not c!100029)) b!516465))

(declare-fun m!762943 () Bool)

(assert (=> b!516465 m!762943))

(declare-fun m!762945 () Bool)

(assert (=> b!516465 m!762945))

(assert (=> b!516339 d!184749))

(declare-fun b!516473 () Bool)

(assert (=> b!516473 true))

(declare-fun d!184751 () Bool)

(declare-fun e!309073 () Bool)

(assert (=> d!184751 e!309073))

(declare-fun res!219037 () Bool)

(assert (=> d!184751 (=> (not res!219037) (not e!309073))))

(declare-fun lt!214684 () List!4738)

(declare-fun noDuplicate!111 (List!4738) Bool)

(assert (=> d!184751 (= res!219037 (noDuplicate!111 lt!214684))))

(assert (=> d!184751 (= lt!214684 (getKeysList!6 (toList!420 lt!214518)))))

(assert (=> d!184751 (= (keys!1854 lt!214518) lt!214684)))

(declare-fun b!516472 () Bool)

(declare-fun res!219039 () Bool)

(assert (=> b!516472 (=> (not res!219039) (not e!309073))))

(declare-fun length!8 (List!4738) Int)

(declare-fun length!9 (List!4736) Int)

(assert (=> b!516472 (= res!219039 (= (length!8 lt!214684) (length!9 (toList!420 lt!214518))))))

(declare-fun res!219038 () Bool)

(assert (=> b!516473 (=> (not res!219038) (not e!309073))))

(declare-fun lambda!14502 () Int)

(declare-fun forall!1403 (List!4738 Int) Bool)

(assert (=> b!516473 (= res!219038 (forall!1403 lt!214684 lambda!14502))))

(declare-fun b!516474 () Bool)

(declare-fun lambda!14503 () Int)

(declare-fun map!1043 (List!4736 Int) List!4738)

(assert (=> b!516474 (= e!309073 (= (content!827 lt!214684) (content!827 (map!1043 (toList!420 lt!214518) lambda!14503))))))

(assert (= (and d!184751 res!219037) b!516472))

(assert (= (and b!516472 res!219039) b!516473))

(assert (= (and b!516473 res!219038) b!516474))

(declare-fun m!762947 () Bool)

(assert (=> d!184751 m!762947))

(declare-fun m!762949 () Bool)

(assert (=> d!184751 m!762949))

(declare-fun m!762951 () Bool)

(assert (=> b!516472 m!762951))

(declare-fun m!762953 () Bool)

(assert (=> b!516472 m!762953))

(declare-fun m!762955 () Bool)

(assert (=> b!516473 m!762955))

(declare-fun m!762957 () Bool)

(assert (=> b!516474 m!762957))

(declare-fun m!762959 () Bool)

(assert (=> b!516474 m!762959))

(assert (=> b!516474 m!762959))

(declare-fun m!762961 () Bool)

(assert (=> b!516474 m!762961))

(assert (=> b!516339 d!184751))

(declare-fun d!184753 () Bool)

(declare-fun c!100030 () Bool)

(assert (=> d!184753 (= c!100030 ((_ is Nil!4728) (keys!1854 lt!214618)))))

(declare-fun e!309074 () (InoxSet K!1417))

(assert (=> d!184753 (= (content!827 (keys!1854 lt!214618)) e!309074)))

(declare-fun b!516477 () Bool)

(assert (=> b!516477 (= e!309074 ((as const (Array K!1417 Bool)) false))))

(declare-fun b!516478 () Bool)

(assert (=> b!516478 (= e!309074 ((_ map or) (store ((as const (Array K!1417 Bool)) false) (h!10126 (keys!1854 lt!214618)) true) (content!827 (t!73296 (keys!1854 lt!214618)))))))

(assert (= (and d!184753 c!100030) b!516477))

(assert (= (and d!184753 (not c!100030)) b!516478))

(declare-fun m!762963 () Bool)

(assert (=> b!516478 m!762963))

(declare-fun m!762965 () Bool)

(assert (=> b!516478 m!762965))

(assert (=> b!516339 d!184753))

(declare-fun bs!59814 () Bool)

(declare-fun b!516480 () Bool)

(assert (= bs!59814 (and b!516480 b!516473)))

(declare-fun lambda!14504 () Int)

(assert (=> bs!59814 (= (= (toList!420 lt!214618) (toList!420 lt!214518)) (= lambda!14504 lambda!14502))))

(assert (=> b!516480 true))

(declare-fun bs!59815 () Bool)

(declare-fun b!516481 () Bool)

(assert (= bs!59815 (and b!516481 b!516474)))

(declare-fun lambda!14505 () Int)

(assert (=> bs!59815 (= lambda!14505 lambda!14503)))

(declare-fun d!184755 () Bool)

(declare-fun e!309075 () Bool)

(assert (=> d!184755 e!309075))

(declare-fun res!219040 () Bool)

(assert (=> d!184755 (=> (not res!219040) (not e!309075))))

(declare-fun lt!214685 () List!4738)

(assert (=> d!184755 (= res!219040 (noDuplicate!111 lt!214685))))

(assert (=> d!184755 (= lt!214685 (getKeysList!6 (toList!420 lt!214618)))))

(assert (=> d!184755 (= (keys!1854 lt!214618) lt!214685)))

(declare-fun b!516479 () Bool)

(declare-fun res!219042 () Bool)

(assert (=> b!516479 (=> (not res!219042) (not e!309075))))

(assert (=> b!516479 (= res!219042 (= (length!8 lt!214685) (length!9 (toList!420 lt!214618))))))

(declare-fun res!219041 () Bool)

(assert (=> b!516480 (=> (not res!219041) (not e!309075))))

(assert (=> b!516480 (= res!219041 (forall!1403 lt!214685 lambda!14504))))

(assert (=> b!516481 (= e!309075 (= (content!827 lt!214685) (content!827 (map!1043 (toList!420 lt!214618) lambda!14505))))))

(assert (= (and d!184755 res!219040) b!516479))

(assert (= (and b!516479 res!219042) b!516480))

(assert (= (and b!516480 res!219041) b!516481))

(declare-fun m!762967 () Bool)

(assert (=> d!184755 m!762967))

(declare-fun m!762969 () Bool)

(assert (=> d!184755 m!762969))

(declare-fun m!762971 () Bool)

(assert (=> b!516479 m!762971))

(declare-fun m!762973 () Bool)

(assert (=> b!516479 m!762973))

(declare-fun m!762975 () Bool)

(assert (=> b!516480 m!762975))

(declare-fun m!762977 () Bool)

(assert (=> b!516481 m!762977))

(declare-fun m!762979 () Bool)

(assert (=> b!516481 m!762979))

(assert (=> b!516481 m!762979))

(declare-fun m!762981 () Bool)

(assert (=> b!516481 m!762981))

(assert (=> b!516339 d!184755))

(declare-fun bs!59816 () Bool)

(declare-fun d!184757 () Bool)

(assert (= bs!59816 (and d!184757 b!516300)))

(declare-fun lambda!14506 () Int)

(assert (=> bs!59816 (= lambda!14506 lambda!14462)))

(declare-fun bs!59817 () Bool)

(assert (= bs!59817 (and d!184757 d!184733)))

(assert (=> bs!59817 (not (= lambda!14506 lambda!14495))))

(declare-fun bs!59818 () Bool)

(assert (= bs!59818 (and d!184757 d!184705)))

(assert (=> bs!59818 (not (= lambda!14506 lambda!14486))))

(declare-fun bs!59819 () Bool)

(assert (= bs!59819 (and d!184757 d!184683)))

(assert (=> bs!59819 (not (= lambda!14506 lambda!14473))))

(declare-fun bs!59820 () Bool)

(assert (= bs!59820 (and d!184757 b!516450)))

(assert (=> bs!59820 (= lambda!14506 lambda!14496)))

(declare-fun bs!59821 () Bool)

(assert (= bs!59821 (and d!184757 d!184687)))

(assert (=> bs!59821 (= lambda!14506 lambda!14479)))

(declare-fun bs!59822 () Bool)

(assert (= bs!59822 (and d!184757 b!516327)))

(assert (=> bs!59822 (= lambda!14506 lambda!14470)))

(declare-fun bs!59823 () Bool)

(assert (= bs!59823 (and d!184757 d!184725)))

(assert (=> bs!59823 (= lambda!14506 lambda!14494)))

(declare-fun bs!59824 () Bool)

(assert (= bs!59824 (and d!184757 b!516302)))

(assert (=> bs!59824 (= lambda!14506 lambda!14463)))

(declare-fun bs!59825 () Bool)

(assert (= bs!59825 (and d!184757 d!184689)))

(assert (=> bs!59825 (= lambda!14506 lambda!14482)))

(declare-fun bs!59826 () Bool)

(assert (= bs!59826 (and d!184757 d!184715)))

(assert (=> bs!59826 (= lambda!14506 lambda!14493)))

(declare-fun bs!59827 () Bool)

(assert (= bs!59827 (and d!184757 d!184711)))

(assert (=> bs!59827 (not (= lambda!14506 lambda!14492))))

(declare-fun bs!59828 () Bool)

(assert (= bs!59828 (and d!184757 d!184709)))

(assert (=> bs!59828 (= lambda!14506 lambda!14491)))

(declare-fun bs!59829 () Bool)

(assert (= bs!59829 (and d!184757 d!184741)))

(assert (=> bs!59829 (not (= lambda!14506 lambda!14497))))

(declare-fun lt!214686 () ListMap!193)

(assert (=> d!184757 (invariantList!74 (toList!420 lt!214686))))

(declare-fun e!309076 () ListMap!193)

(assert (=> d!184757 (= lt!214686 e!309076)))

(declare-fun c!100031 () Bool)

(assert (=> d!184757 (= c!100031 ((_ is Cons!4727) (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596))))))

(assert (=> d!184757 (forall!1402 (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596)) lambda!14506)))

(assert (=> d!184757 (= (extractMap!21 (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596))) lt!214686)))

(declare-fun b!516482 () Bool)

(assert (=> b!516482 (= e!309076 (addToMapMapFromBucket!4 (_2!3118 (h!10125 (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596)))) (extractMap!21 (t!73295 (ite c!100001 (toList!421 lt!214591) (toList!421 lt!214596))))))))

(declare-fun b!516483 () Bool)

(assert (=> b!516483 (= e!309076 (ListMap!194 Nil!4726))))

(assert (= (and d!184757 c!100031) b!516482))

(assert (= (and d!184757 (not c!100031)) b!516483))

(declare-fun m!762983 () Bool)

(assert (=> d!184757 m!762983))

(declare-fun m!762985 () Bool)

(assert (=> d!184757 m!762985))

(declare-fun m!762987 () Bool)

(assert (=> b!516482 m!762987))

(assert (=> b!516482 m!762987))

(declare-fun m!762989 () Bool)

(assert (=> b!516482 m!762989))

(assert (=> bm!37682 d!184757))

(declare-fun bs!59830 () Bool)

(declare-fun b!516516 () Bool)

(assert (= bs!59830 (and b!516516 b!516300)))

(declare-fun lambda!14509 () Int)

(assert (=> bs!59830 (= lambda!14509 lambda!14462)))

(declare-fun bs!59831 () Bool)

(assert (= bs!59831 (and b!516516 d!184733)))

(assert (=> bs!59831 (not (= lambda!14509 lambda!14495))))

(declare-fun bs!59832 () Bool)

(assert (= bs!59832 (and b!516516 d!184705)))

(assert (=> bs!59832 (not (= lambda!14509 lambda!14486))))

(declare-fun bs!59833 () Bool)

(assert (= bs!59833 (and b!516516 d!184683)))

(assert (=> bs!59833 (not (= lambda!14509 lambda!14473))))

(declare-fun bs!59834 () Bool)

(assert (= bs!59834 (and b!516516 b!516450)))

(assert (=> bs!59834 (= lambda!14509 lambda!14496)))

(declare-fun bs!59835 () Bool)

(assert (= bs!59835 (and b!516516 d!184687)))

(assert (=> bs!59835 (= lambda!14509 lambda!14479)))

(declare-fun bs!59836 () Bool)

(assert (= bs!59836 (and b!516516 b!516327)))

(assert (=> bs!59836 (= lambda!14509 lambda!14470)))

(declare-fun bs!59837 () Bool)

(assert (= bs!59837 (and b!516516 d!184725)))

(assert (=> bs!59837 (= lambda!14509 lambda!14494)))

(declare-fun bs!59838 () Bool)

(assert (= bs!59838 (and b!516516 d!184757)))

(assert (=> bs!59838 (= lambda!14509 lambda!14506)))

(declare-fun bs!59839 () Bool)

(assert (= bs!59839 (and b!516516 b!516302)))

(assert (=> bs!59839 (= lambda!14509 lambda!14463)))

(declare-fun bs!59840 () Bool)

(assert (= bs!59840 (and b!516516 d!184689)))

(assert (=> bs!59840 (= lambda!14509 lambda!14482)))

(declare-fun bs!59841 () Bool)

(assert (= bs!59841 (and b!516516 d!184715)))

(assert (=> bs!59841 (= lambda!14509 lambda!14493)))

(declare-fun bs!59842 () Bool)

(assert (= bs!59842 (and b!516516 d!184711)))

(assert (=> bs!59842 (not (= lambda!14509 lambda!14492))))

(declare-fun bs!59843 () Bool)

(assert (= bs!59843 (and b!516516 d!184709)))

(assert (=> bs!59843 (= lambda!14509 lambda!14491)))

(declare-fun bs!59844 () Bool)

(assert (= bs!59844 (and b!516516 d!184741)))

(assert (=> bs!59844 (not (= lambda!14509 lambda!14497))))

(declare-fun b!516506 () Bool)

(declare-fun e!309097 () Bool)

(declare-fun call!37715 () Bool)

(assert (=> b!516506 (= e!309097 call!37715)))

(declare-fun call!37712 () ListLongMap!79)

(declare-fun bm!37705 () Bool)

(declare-fun call!37713 () Bool)

(declare-fun call!37710 () (_ BitVec 64))

(declare-fun lt!214741 () ListLongMap!79)

(declare-fun c!100043 () Bool)

(assert (=> bm!37705 (= call!37713 (contains!1088 (ite c!100043 lt!214741 call!37712) call!37710))))

(declare-fun b!516507 () Bool)

(declare-fun e!309091 () Bool)

(assert (=> b!516507 (= e!309091 call!37715)))

(declare-fun b!516508 () Bool)

(declare-fun e!309096 () Unit!8580)

(declare-fun lt!214736 () Unit!8580)

(assert (=> b!516508 (= e!309096 lt!214736)))

(assert (=> b!516508 (= lt!214741 call!37712)))

(declare-fun lemmaInGenericMapThenInLongMap!3 (ListLongMap!79 K!1417 Hashable!493) Unit!8580)

(assert (=> b!516508 (= lt!214736 (lemmaInGenericMapThenInLongMap!3 lt!214741 k0!1740 (hashF!2376 hm!65)))))

(declare-fun res!219051 () Bool)

(assert (=> b!516508 (= res!219051 call!37713)))

(assert (=> b!516508 (=> (not res!219051) (not e!309097))))

(assert (=> b!516508 e!309097))

(declare-fun call!37711 () List!4736)

(declare-fun bm!37706 () Bool)

(declare-fun apply!1186 (ListLongMap!79 (_ BitVec 64)) List!4736)

(assert (=> bm!37706 (= call!37711 (apply!1186 (ite c!100043 lt!214741 call!37712) call!37710))))

(declare-fun bm!37707 () Bool)

(assert (=> bm!37707 (= call!37712 (map!1041 (v!15767 (underlying!1222 hm!65))))))

(declare-fun d!184759 () Bool)

(declare-fun lt!214739 () Bool)

(assert (=> d!184759 (= lt!214739 (contains!1087 (map!1040 hm!65) k0!1740))))

(declare-fun e!309093 () Bool)

(assert (=> d!184759 (= lt!214739 e!309093)))

(declare-fun res!219049 () Bool)

(assert (=> d!184759 (=> (not res!219049) (not e!309093))))

(declare-fun lt!214728 () (_ BitVec 64))

(declare-fun contains!1091 (MutLongMap!521 (_ BitVec 64)) Bool)

(assert (=> d!184759 (= res!219049 (contains!1091 (v!15767 (underlying!1222 hm!65)) lt!214728))))

(declare-fun lt!214734 () Unit!8580)

(assert (=> d!184759 (= lt!214734 e!309096)))

(assert (=> d!184759 (= c!100043 (contains!1087 (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))) k0!1740))))

(declare-fun lt!214737 () Unit!8580)

(declare-fun e!309095 () Unit!8580)

(assert (=> d!184759 (= lt!214737 e!309095)))

(declare-fun c!100042 () Bool)

(assert (=> d!184759 (= c!100042 (contains!1091 (v!15767 (underlying!1222 hm!65)) lt!214728))))

(assert (=> d!184759 (= lt!214728 (hash!519 (hashF!2376 hm!65) k0!1740))))

(assert (=> d!184759 (valid!484 hm!65)))

(assert (=> d!184759 (= (contains!1086 hm!65 k0!1740) lt!214739)))

(declare-fun bm!37708 () Bool)

(declare-datatypes ((Option!1235 0))(
  ( (None!1234) (Some!1234 (v!15774 tuple2!5800)) )
))
(declare-fun call!37714 () Option!1235)

(declare-fun getPair!3 (List!4736 K!1417) Option!1235)

(assert (=> bm!37708 (= call!37714 (getPair!3 call!37711 k0!1740))))

(declare-fun b!516509 () Bool)

(declare-fun e!309092 () Unit!8580)

(declare-fun Unit!8593 () Unit!8580)

(assert (=> b!516509 (= e!309092 Unit!8593)))

(declare-fun b!516510 () Bool)

(declare-fun e!309094 () Unit!8580)

(declare-fun Unit!8594 () Unit!8580)

(assert (=> b!516510 (= e!309094 Unit!8594)))

(declare-fun b!516511 () Bool)

(declare-fun isDefined!1048 (Option!1235) Bool)

(assert (=> b!516511 (= e!309093 (isDefined!1048 (getPair!3 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214728) k0!1740)))))

(declare-fun bm!37709 () Bool)

(assert (=> bm!37709 (= call!37715 (isDefined!1048 call!37714))))

(declare-fun b!516512 () Bool)

(declare-fun Unit!8595 () Unit!8580)

(assert (=> b!516512 (= e!309095 Unit!8595)))

(declare-fun b!516513 () Bool)

(assert (=> b!516513 false))

(declare-fun lt!214744 () Unit!8580)

(declare-fun lt!214731 () Unit!8580)

(assert (=> b!516513 (= lt!214744 lt!214731)))

(declare-fun lt!214746 () List!4737)

(declare-fun lt!214727 () List!4736)

(assert (=> b!516513 (contains!1089 lt!214746 (tuple2!5805 lt!214728 lt!214727))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!4 (List!4737 (_ BitVec 64) List!4736) Unit!8580)

(assert (=> b!516513 (= lt!214731 (lemmaGetValueByKeyImpliesContainsTuple!4 lt!214746 lt!214728 lt!214727))))

(assert (=> b!516513 (= lt!214727 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214728))))

(assert (=> b!516513 (= lt!214746 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))))

(declare-fun lt!214733 () Unit!8580)

(declare-fun lt!214743 () Unit!8580)

(assert (=> b!516513 (= lt!214733 lt!214743)))

(declare-fun lt!214745 () List!4737)

(declare-fun isDefined!1049 (Option!1233) Bool)

(assert (=> b!516513 (isDefined!1049 (getValueByKey!18 lt!214745 lt!214728))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!11 (List!4737 (_ BitVec 64)) Unit!8580)

(assert (=> b!516513 (= lt!214743 (lemmaContainsKeyImpliesGetValueByKeyDefined!11 lt!214745 lt!214728))))

(assert (=> b!516513 (= lt!214745 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))))

(declare-fun lt!214732 () Unit!8580)

(declare-fun lt!214740 () Unit!8580)

(assert (=> b!516513 (= lt!214732 lt!214740)))

(declare-fun lt!214735 () List!4737)

(declare-fun containsKey!18 (List!4737 (_ BitVec 64)) Bool)

(assert (=> b!516513 (containsKey!18 lt!214735 lt!214728)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!4 (List!4737 (_ BitVec 64)) Unit!8580)

(assert (=> b!516513 (= lt!214740 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!4 lt!214735 lt!214728))))

(assert (=> b!516513 (= lt!214735 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))))

(declare-fun Unit!8596 () Unit!8580)

(assert (=> b!516513 (= e!309094 Unit!8596)))

(declare-fun b!516514 () Bool)

(assert (=> b!516514 (= e!309096 e!309092)))

(declare-fun res!219050 () Bool)

(assert (=> b!516514 (= res!219050 call!37713)))

(assert (=> b!516514 (=> (not res!219050) (not e!309091))))

(declare-fun c!100041 () Bool)

(assert (=> b!516514 (= c!100041 e!309091)))

(declare-fun bm!37710 () Bool)

(assert (=> bm!37710 (= call!37710 (hash!519 (hashF!2376 hm!65) k0!1740))))

(declare-fun b!516515 () Bool)

(assert (=> b!516515 false))

(declare-fun lt!214738 () Unit!8580)

(declare-fun lt!214729 () Unit!8580)

(assert (=> b!516515 (= lt!214738 lt!214729)))

(declare-fun lt!214730 () ListLongMap!79)

(assert (=> b!516515 (contains!1087 (extractMap!21 (toList!421 lt!214730)) k0!1740)))

(declare-fun lemmaInLongMapThenInGenericMap!3 (ListLongMap!79 K!1417 Hashable!493) Unit!8580)

(assert (=> b!516515 (= lt!214729 (lemmaInLongMapThenInGenericMap!3 lt!214730 k0!1740 (hashF!2376 hm!65)))))

(assert (=> b!516515 (= lt!214730 call!37712)))

(declare-fun Unit!8597 () Unit!8580)

(assert (=> b!516515 (= e!309092 Unit!8597)))

(assert (=> b!516516 (= e!309095 (forallContained!446 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14509 (tuple2!5805 lt!214728 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214728))))))

(declare-fun c!100040 () Bool)

(assert (=> b!516516 (= c!100040 (not (contains!1089 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) (tuple2!5805 lt!214728 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214728)))))))

(declare-fun lt!214742 () Unit!8580)

(assert (=> b!516516 (= lt!214742 e!309094)))

(assert (= (and d!184759 c!100042) b!516516))

(assert (= (and d!184759 (not c!100042)) b!516512))

(assert (= (and b!516516 c!100040) b!516513))

(assert (= (and b!516516 (not c!100040)) b!516510))

(assert (= (and d!184759 c!100043) b!516508))

(assert (= (and d!184759 (not c!100043)) b!516514))

(assert (= (and b!516508 res!219051) b!516506))

(assert (= (and b!516514 res!219050) b!516507))

(assert (= (and b!516514 c!100041) b!516515))

(assert (= (and b!516514 (not c!100041)) b!516509))

(assert (= (or b!516508 b!516514 b!516507 b!516515) bm!37707))

(assert (= (or b!516508 b!516506 b!516514 b!516507) bm!37710))

(assert (= (or b!516506 b!516507) bm!37706))

(assert (= (or b!516508 b!516514) bm!37705))

(assert (= (or b!516506 b!516507) bm!37708))

(assert (= (or b!516506 b!516507) bm!37709))

(assert (= (and d!184759 res!219049) b!516511))

(assert (=> b!516516 m!762633))

(declare-fun m!762991 () Bool)

(assert (=> b!516516 m!762991))

(declare-fun m!762993 () Bool)

(assert (=> b!516516 m!762993))

(declare-fun m!762995 () Bool)

(assert (=> b!516516 m!762995))

(declare-fun m!762997 () Bool)

(assert (=> bm!37706 m!762997))

(declare-fun m!762999 () Bool)

(assert (=> bm!37705 m!762999))

(declare-fun m!763001 () Bool)

(assert (=> b!516515 m!763001))

(assert (=> b!516515 m!763001))

(declare-fun m!763003 () Bool)

(assert (=> b!516515 m!763003))

(declare-fun m!763005 () Bool)

(assert (=> b!516515 m!763005))

(assert (=> b!516511 m!762991))

(assert (=> b!516511 m!762991))

(declare-fun m!763007 () Bool)

(assert (=> b!516511 m!763007))

(assert (=> b!516511 m!763007))

(declare-fun m!763009 () Bool)

(assert (=> b!516511 m!763009))

(declare-fun m!763011 () Bool)

(assert (=> bm!37708 m!763011))

(assert (=> bm!37710 m!762673))

(assert (=> bm!37707 m!762633))

(assert (=> d!184759 m!762747))

(declare-fun m!763013 () Bool)

(assert (=> d!184759 m!763013))

(assert (=> d!184759 m!762673))

(assert (=> d!184759 m!762619))

(declare-fun m!763015 () Bool)

(assert (=> d!184759 m!763015))

(assert (=> d!184759 m!762747))

(assert (=> d!184759 m!762617))

(declare-fun m!763017 () Bool)

(assert (=> d!184759 m!763017))

(assert (=> d!184759 m!762617))

(assert (=> d!184759 m!762633))

(declare-fun m!763019 () Bool)

(assert (=> bm!37709 m!763019))

(declare-fun m!763021 () Bool)

(assert (=> b!516513 m!763021))

(assert (=> b!516513 m!763021))

(declare-fun m!763023 () Bool)

(assert (=> b!516513 m!763023))

(declare-fun m!763025 () Bool)

(assert (=> b!516513 m!763025))

(assert (=> b!516513 m!762991))

(declare-fun m!763027 () Bool)

(assert (=> b!516513 m!763027))

(declare-fun m!763029 () Bool)

(assert (=> b!516513 m!763029))

(declare-fun m!763031 () Bool)

(assert (=> b!516513 m!763031))

(assert (=> b!516513 m!762633))

(declare-fun m!763033 () Bool)

(assert (=> b!516513 m!763033))

(declare-fun m!763035 () Bool)

(assert (=> b!516508 m!763035))

(assert (=> d!184667 d!184759))

(assert (=> d!184667 d!184649))

(declare-fun bs!59845 () Bool)

(declare-fun d!184761 () Bool)

(assert (= bs!59845 (and d!184761 b!516300)))

(declare-fun lambda!14512 () Int)

(assert (=> bs!59845 (= lambda!14512 lambda!14462)))

(declare-fun bs!59846 () Bool)

(assert (= bs!59846 (and d!184761 d!184733)))

(assert (=> bs!59846 (not (= lambda!14512 lambda!14495))))

(declare-fun bs!59847 () Bool)

(assert (= bs!59847 (and d!184761 d!184705)))

(assert (=> bs!59847 (not (= lambda!14512 lambda!14486))))

(declare-fun bs!59848 () Bool)

(assert (= bs!59848 (and d!184761 d!184683)))

(assert (=> bs!59848 (not (= lambda!14512 lambda!14473))))

(declare-fun bs!59849 () Bool)

(assert (= bs!59849 (and d!184761 b!516450)))

(assert (=> bs!59849 (= lambda!14512 lambda!14496)))

(declare-fun bs!59850 () Bool)

(assert (= bs!59850 (and d!184761 d!184687)))

(assert (=> bs!59850 (= lambda!14512 lambda!14479)))

(declare-fun bs!59851 () Bool)

(assert (= bs!59851 (and d!184761 b!516327)))

(assert (=> bs!59851 (= lambda!14512 lambda!14470)))

(declare-fun bs!59852 () Bool)

(assert (= bs!59852 (and d!184761 d!184725)))

(assert (=> bs!59852 (= lambda!14512 lambda!14494)))

(declare-fun bs!59853 () Bool)

(assert (= bs!59853 (and d!184761 b!516516)))

(assert (=> bs!59853 (= lambda!14512 lambda!14509)))

(declare-fun bs!59854 () Bool)

(assert (= bs!59854 (and d!184761 d!184757)))

(assert (=> bs!59854 (= lambda!14512 lambda!14506)))

(declare-fun bs!59855 () Bool)

(assert (= bs!59855 (and d!184761 b!516302)))

(assert (=> bs!59855 (= lambda!14512 lambda!14463)))

(declare-fun bs!59856 () Bool)

(assert (= bs!59856 (and d!184761 d!184689)))

(assert (=> bs!59856 (= lambda!14512 lambda!14482)))

(declare-fun bs!59857 () Bool)

(assert (= bs!59857 (and d!184761 d!184715)))

(assert (=> bs!59857 (= lambda!14512 lambda!14493)))

(declare-fun bs!59858 () Bool)

(assert (= bs!59858 (and d!184761 d!184711)))

(assert (=> bs!59858 (not (= lambda!14512 lambda!14492))))

(declare-fun bs!59859 () Bool)

(assert (= bs!59859 (and d!184761 d!184709)))

(assert (=> bs!59859 (= lambda!14512 lambda!14491)))

(declare-fun bs!59860 () Bool)

(assert (= bs!59860 (and d!184761 d!184741)))

(assert (=> bs!59860 (not (= lambda!14512 lambda!14497))))

(assert (=> d!184761 (= (extractMap!21 (toList!421 lt!214591)) (-!36 (extractMap!21 (toList!421 lt!214591)) k0!1740))))

(declare-fun lt!214749 () Unit!8580)

(declare-fun choose!3681 (ListLongMap!79 K!1417 Hashable!493) Unit!8580)

(assert (=> d!184761 (= lt!214749 (choose!3681 lt!214591 k0!1740 (hashF!2376 hm!65)))))

(assert (=> d!184761 (forall!1402 (toList!421 lt!214591) lambda!14512)))

(assert (=> d!184761 (= (lemmaRemoveNotContainedDoesNotChange!13 lt!214591 k0!1740 (hashF!2376 hm!65)) lt!214749)))

(declare-fun bs!59861 () Bool)

(assert (= bs!59861 d!184761))

(declare-fun m!763037 () Bool)

(assert (=> bs!59861 m!763037))

(assert (=> bs!59861 m!763037))

(declare-fun m!763039 () Bool)

(assert (=> bs!59861 m!763039))

(declare-fun m!763041 () Bool)

(assert (=> bs!59861 m!763041))

(declare-fun m!763043 () Bool)

(assert (=> bs!59861 m!763043))

(assert (=> b!516336 d!184761))

(declare-fun d!184763 () Bool)

(declare-fun res!219052 () Bool)

(declare-fun e!309098 () Bool)

(assert (=> d!184763 (=> res!219052 e!309098)))

(assert (=> d!184763 (= res!219052 (or ((_ is Nil!4726) (toList!420 lt!214520)) ((_ is Nil!4726) (t!73292 (toList!420 lt!214520)))))))

(assert (=> d!184763 (= (noDuplicatedKeys!16 (toList!420 lt!214520)) e!309098)))

(declare-fun b!516517 () Bool)

(declare-fun e!309099 () Bool)

(assert (=> b!516517 (= e!309098 e!309099)))

(declare-fun res!219053 () Bool)

(assert (=> b!516517 (=> (not res!219053) (not e!309099))))

(assert (=> b!516517 (= res!219053 (not (containsKey!17 (t!73292 (toList!420 lt!214520)) (_1!3116 (h!10124 (toList!420 lt!214520))))))))

(declare-fun b!516518 () Bool)

(assert (=> b!516518 (= e!309099 (noDuplicatedKeys!16 (t!73292 (toList!420 lt!214520))))))

(assert (= (and d!184763 (not res!219052)) b!516517))

(assert (= (and b!516517 res!219053) b!516518))

(declare-fun m!763045 () Bool)

(assert (=> b!516517 m!763045))

(declare-fun m!763047 () Bool)

(assert (=> b!516518 m!763047))

(assert (=> d!184651 d!184763))

(declare-fun d!184765 () Bool)

(declare-fun e!309100 () Bool)

(assert (=> d!184765 e!309100))

(declare-fun res!219054 () Bool)

(assert (=> d!184765 (=> (not res!219054) (not e!309100))))

(declare-fun lt!214750 () ListMap!193)

(assert (=> d!184765 (= res!219054 (not (contains!1087 lt!214750 k0!1740)))))

(assert (=> d!184765 (= lt!214750 (ListMap!194 (removePresrvNoDuplicatedKeys!13 (toList!420 (ite c!100001 call!37690 lt!214594)) k0!1740)))))

(assert (=> d!184765 (= (-!36 (ite c!100001 call!37690 lt!214594) k0!1740) lt!214750)))

(declare-fun b!516519 () Bool)

(assert (=> b!516519 (= e!309100 (= ((_ map and) (content!827 (keys!1854 (ite c!100001 call!37690 lt!214594))) ((_ map not) (store ((as const (Array K!1417 Bool)) false) k0!1740 true))) (content!827 (keys!1854 lt!214750))))))

(assert (= (and d!184765 res!219054) b!516519))

(declare-fun m!763049 () Bool)

(assert (=> d!184765 m!763049))

(declare-fun m!763051 () Bool)

(assert (=> d!184765 m!763051))

(declare-fun m!763053 () Bool)

(assert (=> b!516519 m!763053))

(declare-fun m!763055 () Bool)

(assert (=> b!516519 m!763055))

(declare-fun m!763057 () Bool)

(assert (=> b!516519 m!763057))

(assert (=> b!516519 m!763053))

(assert (=> b!516519 m!762737))

(assert (=> b!516519 m!763057))

(declare-fun m!763059 () Bool)

(assert (=> b!516519 m!763059))

(assert (=> bm!37684 d!184765))

(declare-fun d!184767 () Bool)

(declare-fun c!100044 () Bool)

(assert (=> d!184767 (= c!100044 ((_ is Nil!4726) (toList!420 lt!214521)))))

(declare-fun e!309101 () (InoxSet tuple2!5800))

(assert (=> d!184767 (= (content!826 (toList!420 lt!214521)) e!309101)))

(declare-fun b!516520 () Bool)

(assert (=> b!516520 (= e!309101 ((as const (Array tuple2!5800 Bool)) false))))

(declare-fun b!516521 () Bool)

(assert (=> b!516521 (= e!309101 ((_ map or) (store ((as const (Array tuple2!5800 Bool)) false) (h!10124 (toList!420 lt!214521)) true) (content!826 (t!73292 (toList!420 lt!214521)))))))

(assert (= (and d!184767 c!100044) b!516520))

(assert (= (and d!184767 (not c!100044)) b!516521))

(declare-fun m!763061 () Bool)

(assert (=> b!516521 m!763061))

(declare-fun m!763063 () Bool)

(assert (=> b!516521 m!763063))

(assert (=> d!184657 d!184767))

(assert (=> d!184657 d!184675))

(declare-fun bm!37711 () Bool)

(declare-fun call!37716 () Bool)

(declare-fun e!309104 () List!4738)

(assert (=> bm!37711 (= call!37716 (contains!1090 e!309104 k0!1740))))

(declare-fun c!100046 () Bool)

(declare-fun c!100045 () Bool)

(assert (=> bm!37711 (= c!100046 c!100045)))

(declare-fun b!516522 () Bool)

(declare-fun e!309107 () Unit!8580)

(declare-fun Unit!8598 () Unit!8580)

(assert (=> b!516522 (= e!309107 Unit!8598)))

(declare-fun b!516523 () Bool)

(declare-fun e!309105 () Bool)

(assert (=> b!516523 (= e!309105 (not (contains!1090 (keys!1854 lt!214618) k0!1740)))))

(declare-fun b!516524 () Bool)

(declare-fun e!309102 () Bool)

(assert (=> b!516524 (= e!309102 (contains!1090 (keys!1854 lt!214618) k0!1740))))

(declare-fun b!516525 () Bool)

(declare-fun e!309106 () Bool)

(assert (=> b!516525 (= e!309106 e!309102)))

(declare-fun res!219057 () Bool)

(assert (=> b!516525 (=> (not res!219057) (not e!309102))))

(assert (=> b!516525 (= res!219057 (isDefined!1047 (getValueByKey!19 (toList!420 lt!214618) k0!1740)))))

(declare-fun b!516526 () Bool)

(assert (=> b!516526 false))

(declare-fun lt!214751 () Unit!8580)

(declare-fun lt!214756 () Unit!8580)

(assert (=> b!516526 (= lt!214751 lt!214756)))

(assert (=> b!516526 (containsKey!17 (toList!420 lt!214618) k0!1740)))

(assert (=> b!516526 (= lt!214756 (lemmaInGetKeysListThenContainsKey!5 (toList!420 lt!214618) k0!1740))))

(declare-fun Unit!8599 () Unit!8580)

(assert (=> b!516526 (= e!309107 Unit!8599)))

(declare-fun b!516527 () Bool)

(assert (=> b!516527 (= e!309104 (keys!1854 lt!214618))))

(declare-fun d!184769 () Bool)

(assert (=> d!184769 e!309106))

(declare-fun res!219055 () Bool)

(assert (=> d!184769 (=> res!219055 e!309106)))

(assert (=> d!184769 (= res!219055 e!309105)))

(declare-fun res!219056 () Bool)

(assert (=> d!184769 (=> (not res!219056) (not e!309105))))

(declare-fun lt!214757 () Bool)

(assert (=> d!184769 (= res!219056 (not lt!214757))))

(declare-fun lt!214758 () Bool)

(assert (=> d!184769 (= lt!214757 lt!214758)))

(declare-fun lt!214753 () Unit!8580)

(declare-fun e!309103 () Unit!8580)

(assert (=> d!184769 (= lt!214753 e!309103)))

(assert (=> d!184769 (= c!100045 lt!214758)))

(assert (=> d!184769 (= lt!214758 (containsKey!17 (toList!420 lt!214618) k0!1740))))

(assert (=> d!184769 (= (contains!1087 lt!214618 k0!1740) lt!214757)))

(declare-fun b!516528 () Bool)

(assert (=> b!516528 (= e!309104 (getKeysList!6 (toList!420 lt!214618)))))

(declare-fun b!516529 () Bool)

(assert (=> b!516529 (= e!309103 e!309107)))

(declare-fun c!100047 () Bool)

(assert (=> b!516529 (= c!100047 call!37716)))

(declare-fun b!516530 () Bool)

(declare-fun lt!214752 () Unit!8580)

(assert (=> b!516530 (= e!309103 lt!214752)))

(declare-fun lt!214755 () Unit!8580)

(assert (=> b!516530 (= lt!214755 (lemmaContainsKeyImpliesGetValueByKeyDefined!10 (toList!420 lt!214618) k0!1740))))

(assert (=> b!516530 (isDefined!1047 (getValueByKey!19 (toList!420 lt!214618) k0!1740))))

(declare-fun lt!214754 () Unit!8580)

(assert (=> b!516530 (= lt!214754 lt!214755)))

(assert (=> b!516530 (= lt!214752 (lemmaInListThenGetKeysListContains!5 (toList!420 lt!214618) k0!1740))))

(assert (=> b!516530 call!37716))

(assert (= (and d!184769 c!100045) b!516530))

(assert (= (and d!184769 (not c!100045)) b!516529))

(assert (= (and b!516529 c!100047) b!516526))

(assert (= (and b!516529 (not c!100047)) b!516522))

(assert (= (or b!516530 b!516529) bm!37711))

(assert (= (and bm!37711 c!100046) b!516528))

(assert (= (and bm!37711 (not c!100046)) b!516527))

(assert (= (and d!184769 res!219056) b!516523))

(assert (= (and d!184769 (not res!219055)) b!516525))

(assert (= (and b!516525 res!219057) b!516524))

(declare-fun m!763065 () Bool)

(assert (=> b!516525 m!763065))

(assert (=> b!516525 m!763065))

(declare-fun m!763067 () Bool)

(assert (=> b!516525 m!763067))

(declare-fun m!763069 () Bool)

(assert (=> bm!37711 m!763069))

(declare-fun m!763071 () Bool)

(assert (=> d!184769 m!763071))

(assert (=> b!516524 m!762735))

(assert (=> b!516524 m!762735))

(declare-fun m!763073 () Bool)

(assert (=> b!516524 m!763073))

(declare-fun m!763075 () Bool)

(assert (=> b!516530 m!763075))

(assert (=> b!516530 m!763065))

(assert (=> b!516530 m!763065))

(assert (=> b!516530 m!763067))

(declare-fun m!763077 () Bool)

(assert (=> b!516530 m!763077))

(assert (=> b!516527 m!762735))

(assert (=> b!516523 m!762735))

(assert (=> b!516523 m!762735))

(assert (=> b!516523 m!763073))

(assert (=> b!516526 m!763071))

(declare-fun m!763079 () Bool)

(assert (=> b!516526 m!763079))

(assert (=> b!516528 m!762969))

(assert (=> d!184669 d!184769))

(declare-fun b!516569 () Bool)

(declare-fun e!309134 () List!4736)

(assert (=> b!516569 (= e!309134 (t!73292 (toList!420 lt!214518)))))

(declare-fun b!516570 () Bool)

(declare-fun e!309128 () List!4736)

(assert (=> b!516570 (= e!309128 Nil!4726)))

(declare-fun bm!37724 () Bool)

(declare-fun call!37730 () (InoxSet tuple2!5800))

(assert (=> bm!37724 (= call!37730 (content!826 (toList!420 lt!214518)))))

(declare-fun b!516571 () Bool)

(declare-fun lt!214797 () Unit!8580)

(declare-fun e!309130 () Unit!8580)

(assert (=> b!516571 (= lt!214797 e!309130)))

(declare-fun c!100067 () Bool)

(declare-fun call!37733 () Bool)

(assert (=> b!516571 (= c!100067 call!37733)))

(declare-fun lt!214799 () Unit!8580)

(declare-fun e!309133 () Unit!8580)

(assert (=> b!516571 (= lt!214799 e!309133)))

(declare-fun c!100070 () Bool)

(assert (=> b!516571 (= c!100070 (contains!1090 (getKeysList!6 (t!73292 (toList!420 lt!214518))) (_1!3116 (h!10124 (toList!420 lt!214518)))))))

(declare-fun lt!214812 () List!4736)

(declare-fun $colon$colon!41 (List!4736 tuple2!5800) List!4736)

(assert (=> b!516571 (= lt!214812 ($colon$colon!41 (removePresrvNoDuplicatedKeys!13 (t!73292 (toList!420 lt!214518)) k0!1740) (h!10124 (toList!420 lt!214518))))))

(assert (=> b!516571 (= e!309128 lt!214812)))

(declare-fun b!516572 () Bool)

(declare-fun Unit!8600 () Unit!8580)

(assert (=> b!516572 (= e!309130 Unit!8600)))

(declare-fun lt!214804 () List!4736)

(assert (=> b!516572 (= lt!214804 (removePresrvNoDuplicatedKeys!13 (t!73292 (toList!420 lt!214518)) k0!1740))))

(declare-fun lt!214796 () Unit!8580)

(assert (=> b!516572 (= lt!214796 (lemmaInListThenGetKeysListContains!5 lt!214804 (_1!3116 (h!10124 (toList!420 lt!214518)))))))

(assert (=> b!516572 (contains!1090 (getKeysList!6 lt!214804) (_1!3116 (h!10124 (toList!420 lt!214518))))))

(declare-fun lt!214803 () Unit!8580)

(assert (=> b!516572 (= lt!214803 lt!214796)))

(assert (=> b!516572 false))

(declare-fun c!100069 () Bool)

(declare-fun bm!37725 () Bool)

(declare-fun lt!214811 () K!1417)

(assert (=> bm!37725 (= call!37733 (containsKey!17 e!309134 (ite c!100069 lt!214811 (_1!3116 (h!10124 (toList!420 lt!214518))))))))

(declare-fun c!100068 () Bool)

(assert (=> bm!37725 (= c!100068 c!100069)))

(declare-fun b!516573 () Bool)

(declare-fun e!309129 () Unit!8580)

(declare-fun Unit!8601 () Unit!8580)

(assert (=> b!516573 (= e!309129 Unit!8601)))

(declare-fun e!309135 () Bool)

(declare-fun b!516574 () Bool)

(declare-fun call!37729 () (InoxSet tuple2!5800))

(declare-fun call!37734 () (InoxSet tuple2!5800))

(declare-fun get!1798 (Option!1234) V!1515)

(assert (=> b!516574 (= e!309135 (= call!37734 ((_ map and) call!37729 ((_ map not) (store ((as const (Array tuple2!5800 Bool)) false) (tuple2!5801 k0!1740 (get!1798 (getValueByKey!19 (toList!420 lt!214518) k0!1740))) true)))))))

(assert (=> b!516574 (containsKey!17 (toList!420 lt!214518) k0!1740)))

(declare-fun lt!214802 () Unit!8580)

(assert (=> b!516574 (= lt!214802 (lemmaContainsKeyImpliesGetValueByKeyDefined!10 (toList!420 lt!214518) k0!1740))))

(assert (=> b!516574 (isDefined!1047 (getValueByKey!19 (toList!420 lt!214518) k0!1740))))

(declare-fun lt!214800 () Unit!8580)

(assert (=> b!516574 (= lt!214800 lt!214802)))

(declare-fun b!516575 () Bool)

(declare-fun e!309136 () List!4736)

(assert (=> b!516575 (= e!309136 e!309128)))

(declare-fun c!100064 () Bool)

(assert (=> b!516575 (= c!100064 (and ((_ is Cons!4726) (toList!420 lt!214518)) (not (= (_1!3116 (h!10124 (toList!420 lt!214518))) k0!1740))))))

(declare-fun b!516576 () Bool)

(assert (=> b!516576 (= e!309134 (removePresrvNoDuplicatedKeys!13 (t!73292 (toList!420 lt!214518)) k0!1740))))

(declare-fun b!516577 () Bool)

(declare-fun e!309132 () Bool)

(assert (=> b!516577 (= e!309132 e!309135)))

(declare-fun c!100071 () Bool)

(assert (=> b!516577 (= c!100071 (containsKey!17 (toList!420 lt!214518) k0!1740))))

(declare-fun b!516578 () Bool)

(declare-fun Unit!8602 () Unit!8580)

(assert (=> b!516578 (= e!309129 Unit!8602)))

(declare-fun lt!214810 () V!1515)

(assert (=> b!516578 (= lt!214810 (get!1798 (getValueByKey!19 (toList!420 lt!214518) k0!1740)))))

(assert (=> b!516578 (= lt!214811 k0!1740)))

(declare-fun lt!214801 () K!1417)

(assert (=> b!516578 (= lt!214801 k0!1740)))

(declare-fun lt!214795 () Unit!8580)

(declare-fun lemmaContainsTupleThenContainsKey!3 (List!4736 K!1417 V!1515) Unit!8580)

(assert (=> b!516578 (= lt!214795 (lemmaContainsTupleThenContainsKey!3 (t!73292 (toList!420 lt!214518)) lt!214811 (get!1798 (getValueByKey!19 (toList!420 lt!214518) k0!1740))))))

(assert (=> b!516578 call!37733))

(declare-fun lt!214798 () Unit!8580)

(assert (=> b!516578 (= lt!214798 lt!214795)))

(assert (=> b!516578 false))

(declare-fun bm!37726 () Bool)

(declare-fun call!37732 () (InoxSet tuple2!5800))

(assert (=> bm!37726 (= call!37732 (content!826 (t!73292 (toList!420 lt!214518))))))

(declare-fun b!516579 () Bool)

(declare-fun Unit!8603 () Unit!8580)

(assert (=> b!516579 (= e!309130 Unit!8603)))

(declare-fun b!516580 () Bool)

(assert (=> b!516580 (= e!309135 (= call!37734 call!37729))))

(declare-fun b!516581 () Bool)

(assert (=> b!516581 (= e!309136 (t!73292 (toList!420 lt!214518)))))

(declare-fun c!100066 () Bool)

(declare-fun call!37731 () Bool)

(assert (=> b!516581 (= c!100066 call!37731)))

(declare-fun lt!214808 () Unit!8580)

(declare-fun e!309131 () Unit!8580)

(assert (=> b!516581 (= lt!214808 e!309131)))

(declare-fun b!516582 () Bool)

(declare-fun Unit!8604 () Unit!8580)

(assert (=> b!516582 (= e!309133 Unit!8604)))

(declare-fun lt!214809 () Unit!8580)

(assert (=> b!516582 (= lt!214809 (lemmaInGetKeysListThenContainsKey!5 (t!73292 (toList!420 lt!214518)) (_1!3116 (h!10124 (toList!420 lt!214518)))))))

(assert (=> b!516582 call!37731))

(declare-fun lt!214807 () Unit!8580)

(assert (=> b!516582 (= lt!214807 lt!214809)))

(assert (=> b!516582 false))

(declare-fun b!516583 () Bool)

(declare-fun Unit!8605 () Unit!8580)

(assert (=> b!516583 (= e!309133 Unit!8605)))

(declare-fun b!516584 () Bool)

(assert (=> b!516584 (= call!37732 ((_ map and) call!37730 ((_ map not) (store ((as const (Array tuple2!5800 Bool)) false) (tuple2!5801 k0!1740 (get!1798 (getValueByKey!19 (toList!420 lt!214518) k0!1740))) true))))))

(declare-fun lt!214806 () Unit!8580)

(assert (=> b!516584 (= lt!214806 e!309129)))

(declare-fun c!100065 () Bool)

(declare-fun contains!1092 (List!4736 tuple2!5800) Bool)

(assert (=> b!516584 (= c!100065 (contains!1092 (t!73292 (toList!420 lt!214518)) (tuple2!5801 k0!1740 (get!1798 (getValueByKey!19 (toList!420 lt!214518) k0!1740)))))))

(declare-fun Unit!8606 () Unit!8580)

(assert (=> b!516584 (= e!309131 Unit!8606)))

(declare-fun b!516585 () Bool)

(declare-fun res!219065 () Bool)

(assert (=> b!516585 (=> (not res!219065) (not e!309132))))

(declare-fun lt!214805 () List!4736)

(assert (=> b!516585 (= res!219065 (not (containsKey!17 lt!214805 k0!1740)))))

(declare-fun bm!37727 () Bool)

(assert (=> bm!37727 (= call!37729 (content!826 (toList!420 lt!214518)))))

(declare-fun bm!37728 () Bool)

(assert (=> bm!37728 (= call!37731 (containsKey!17 (ite c!100069 (toList!420 lt!214518) (t!73292 (toList!420 lt!214518))) (ite c!100069 k0!1740 (_1!3116 (h!10124 (toList!420 lt!214518))))))))

(declare-fun d!184771 () Bool)

(assert (=> d!184771 e!309132))

(declare-fun res!219066 () Bool)

(assert (=> d!184771 (=> (not res!219066) (not e!309132))))

(assert (=> d!184771 (= res!219066 (invariantList!74 lt!214805))))

(assert (=> d!184771 (= lt!214805 e!309136)))

(assert (=> d!184771 (= c!100069 (and ((_ is Cons!4726) (toList!420 lt!214518)) (= (_1!3116 (h!10124 (toList!420 lt!214518))) k0!1740)))))

(assert (=> d!184771 (invariantList!74 (toList!420 lt!214518))))

(assert (=> d!184771 (= (removePresrvNoDuplicatedKeys!13 (toList!420 lt!214518) k0!1740) lt!214805)))

(declare-fun bm!37729 () Bool)

(assert (=> bm!37729 (= call!37734 (content!826 lt!214805))))

(declare-fun b!516586 () Bool)

(declare-fun res!219064 () Bool)

(assert (=> b!516586 (=> (not res!219064) (not e!309132))))

(assert (=> b!516586 (= res!219064 (= (content!827 (getKeysList!6 lt!214805)) ((_ map and) (content!827 (getKeysList!6 (toList!420 lt!214518))) ((_ map not) (store ((as const (Array K!1417 Bool)) false) k0!1740 true)))))))

(declare-fun b!516587 () Bool)

(assert (=> b!516587 (= call!37732 call!37730)))

(declare-fun Unit!8607 () Unit!8580)

(assert (=> b!516587 (= e!309131 Unit!8607)))

(assert (= (and d!184771 c!100069) b!516581))

(assert (= (and d!184771 (not c!100069)) b!516575))

(assert (= (and b!516581 c!100066) b!516584))

(assert (= (and b!516581 (not c!100066)) b!516587))

(assert (= (and b!516584 c!100065) b!516578))

(assert (= (and b!516584 (not c!100065)) b!516573))

(assert (= (or b!516584 b!516587) bm!37724))

(assert (= (or b!516584 b!516587) bm!37726))

(assert (= (and b!516575 c!100064) b!516571))

(assert (= (and b!516575 (not c!100064)) b!516570))

(assert (= (and b!516571 c!100070) b!516582))

(assert (= (and b!516571 (not c!100070)) b!516583))

(assert (= (and b!516571 c!100067) b!516572))

(assert (= (and b!516571 (not c!100067)) b!516579))

(assert (= (or b!516581 b!516582) bm!37728))

(assert (= (or b!516578 b!516571) bm!37725))

(assert (= (and bm!37725 c!100068) b!516569))

(assert (= (and bm!37725 (not c!100068)) b!516576))

(assert (= (and d!184771 res!219066) b!516585))

(assert (= (and b!516585 res!219065) b!516586))

(assert (= (and b!516586 res!219064) b!516577))

(assert (= (and b!516577 c!100071) b!516574))

(assert (= (and b!516577 (not c!100071)) b!516580))

(assert (= (or b!516574 b!516580) bm!37729))

(assert (= (or b!516574 b!516580) bm!37727))

(declare-fun m!763081 () Bool)

(assert (=> b!516584 m!763081))

(assert (=> b!516584 m!763081))

(declare-fun m!763083 () Bool)

(assert (=> b!516584 m!763083))

(declare-fun m!763085 () Bool)

(assert (=> b!516584 m!763085))

(declare-fun m!763087 () Bool)

(assert (=> b!516584 m!763087))

(declare-fun m!763089 () Bool)

(assert (=> b!516574 m!763089))

(assert (=> b!516574 m!763081))

(declare-fun m!763091 () Bool)

(assert (=> b!516574 m!763091))

(assert (=> b!516574 m!763081))

(assert (=> b!516574 m!763083))

(assert (=> b!516574 m!763081))

(assert (=> b!516574 m!763085))

(declare-fun m!763093 () Bool)

(assert (=> b!516574 m!763093))

(declare-fun m!763095 () Bool)

(assert (=> bm!37728 m!763095))

(declare-fun m!763097 () Bool)

(assert (=> bm!37729 m!763097))

(assert (=> b!516586 m!762737))

(declare-fun m!763099 () Bool)

(assert (=> b!516586 m!763099))

(declare-fun m!763101 () Bool)

(assert (=> b!516586 m!763101))

(assert (=> b!516586 m!762949))

(declare-fun m!763103 () Bool)

(assert (=> b!516586 m!763103))

(assert (=> b!516586 m!763099))

(assert (=> b!516586 m!762949))

(declare-fun m!763105 () Bool)

(assert (=> b!516582 m!763105))

(declare-fun m!763107 () Bool)

(assert (=> b!516585 m!763107))

(assert (=> bm!37726 m!762755))

(declare-fun m!763109 () Bool)

(assert (=> bm!37725 m!763109))

(declare-fun m!763111 () Bool)

(assert (=> b!516576 m!763111))

(declare-fun m!763113 () Bool)

(assert (=> b!516571 m!763113))

(assert (=> b!516571 m!763113))

(declare-fun m!763115 () Bool)

(assert (=> b!516571 m!763115))

(assert (=> b!516571 m!763111))

(assert (=> b!516571 m!763111))

(declare-fun m!763117 () Bool)

(assert (=> b!516571 m!763117))

(assert (=> b!516578 m!763081))

(assert (=> b!516578 m!763081))

(assert (=> b!516578 m!763083))

(assert (=> b!516578 m!763083))

(declare-fun m!763119 () Bool)

(assert (=> b!516578 m!763119))

(assert (=> b!516577 m!763093))

(assert (=> bm!37727 m!762607))

(assert (=> bm!37724 m!762607))

(declare-fun m!763121 () Bool)

(assert (=> d!184771 m!763121))

(assert (=> d!184771 m!762613))

(assert (=> b!516572 m!763111))

(declare-fun m!763123 () Bool)

(assert (=> b!516572 m!763123))

(declare-fun m!763125 () Bool)

(assert (=> b!516572 m!763125))

(assert (=> b!516572 m!763125))

(declare-fun m!763127 () Bool)

(assert (=> b!516572 m!763127))

(assert (=> d!184669 d!184771))

(declare-fun d!184773 () Bool)

(declare-fun res!219067 () Bool)

(declare-fun e!309137 () Bool)

(assert (=> d!184773 (=> res!219067 e!309137)))

(assert (=> d!184773 (= res!219067 (or ((_ is Nil!4726) (toList!420 lt!214521)) ((_ is Nil!4726) (t!73292 (toList!420 lt!214521)))))))

(assert (=> d!184773 (= (noDuplicatedKeys!16 (toList!420 lt!214521)) e!309137)))

(declare-fun b!516588 () Bool)

(declare-fun e!309138 () Bool)

(assert (=> b!516588 (= e!309137 e!309138)))

(declare-fun res!219068 () Bool)

(assert (=> b!516588 (=> (not res!219068) (not e!309138))))

(assert (=> b!516588 (= res!219068 (not (containsKey!17 (t!73292 (toList!420 lt!214521)) (_1!3116 (h!10124 (toList!420 lt!214521))))))))

(declare-fun b!516589 () Bool)

(assert (=> b!516589 (= e!309138 (noDuplicatedKeys!16 (t!73292 (toList!420 lt!214521))))))

(assert (= (and d!184773 (not res!219067)) b!516588))

(assert (= (and b!516588 res!219068) b!516589))

(declare-fun m!763129 () Bool)

(assert (=> b!516588 m!763129))

(declare-fun m!763131 () Bool)

(assert (=> b!516589 m!763131))

(assert (=> d!184653 d!184773))

(declare-fun d!184775 () Bool)

(declare-fun lt!214813 () ListMap!193)

(assert (=> d!184775 (invariantList!74 (toList!420 lt!214813))))

(assert (=> d!184775 (= lt!214813 (extractMap!21 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214608)))))))))

(assert (=> d!184775 (valid!484 (_2!3117 lt!214608))))

(assert (=> d!184775 (= (map!1040 (_2!3117 lt!214608)) lt!214813)))

(declare-fun bs!59862 () Bool)

(assert (= bs!59862 d!184775))

(declare-fun m!763133 () Bool)

(assert (=> bs!59862 m!763133))

(declare-fun m!763135 () Bool)

(assert (=> bs!59862 m!763135))

(declare-fun m!763137 () Bool)

(assert (=> bs!59862 m!763137))

(assert (=> bs!59862 m!762659))

(assert (=> bm!37685 d!184775))

(declare-fun bs!59863 () Bool)

(declare-fun b!516590 () Bool)

(assert (= bs!59863 (and b!516590 b!516300)))

(declare-fun lambda!14513 () Int)

(assert (=> bs!59863 (= lambda!14513 lambda!14462)))

(declare-fun bs!59864 () Bool)

(assert (= bs!59864 (and b!516590 d!184761)))

(assert (=> bs!59864 (= lambda!14513 lambda!14512)))

(declare-fun bs!59865 () Bool)

(assert (= bs!59865 (and b!516590 d!184733)))

(assert (=> bs!59865 (not (= lambda!14513 lambda!14495))))

(declare-fun bs!59866 () Bool)

(assert (= bs!59866 (and b!516590 d!184705)))

(assert (=> bs!59866 (not (= lambda!14513 lambda!14486))))

(declare-fun bs!59867 () Bool)

(assert (= bs!59867 (and b!516590 d!184683)))

(assert (=> bs!59867 (not (= lambda!14513 lambda!14473))))

(declare-fun bs!59868 () Bool)

(assert (= bs!59868 (and b!516590 b!516450)))

(assert (=> bs!59868 (= lambda!14513 lambda!14496)))

(declare-fun bs!59869 () Bool)

(assert (= bs!59869 (and b!516590 d!184687)))

(assert (=> bs!59869 (= lambda!14513 lambda!14479)))

(declare-fun bs!59870 () Bool)

(assert (= bs!59870 (and b!516590 b!516327)))

(assert (=> bs!59870 (= lambda!14513 lambda!14470)))

(declare-fun bs!59871 () Bool)

(assert (= bs!59871 (and b!516590 d!184725)))

(assert (=> bs!59871 (= lambda!14513 lambda!14494)))

(declare-fun bs!59872 () Bool)

(assert (= bs!59872 (and b!516590 b!516516)))

(assert (=> bs!59872 (= lambda!14513 lambda!14509)))

(declare-fun bs!59873 () Bool)

(assert (= bs!59873 (and b!516590 d!184757)))

(assert (=> bs!59873 (= lambda!14513 lambda!14506)))

(declare-fun bs!59874 () Bool)

(assert (= bs!59874 (and b!516590 b!516302)))

(assert (=> bs!59874 (= lambda!14513 lambda!14463)))

(declare-fun bs!59875 () Bool)

(assert (= bs!59875 (and b!516590 d!184689)))

(assert (=> bs!59875 (= lambda!14513 lambda!14482)))

(declare-fun bs!59876 () Bool)

(assert (= bs!59876 (and b!516590 d!184715)))

(assert (=> bs!59876 (= lambda!14513 lambda!14493)))

(declare-fun bs!59877 () Bool)

(assert (= bs!59877 (and b!516590 d!184711)))

(assert (=> bs!59877 (not (= lambda!14513 lambda!14492))))

(declare-fun bs!59878 () Bool)

(assert (= bs!59878 (and b!516590 d!184709)))

(assert (=> bs!59878 (= lambda!14513 lambda!14491)))

(declare-fun bs!59879 () Bool)

(assert (= bs!59879 (and b!516590 d!184741)))

(assert (=> bs!59879 (not (= lambda!14513 lambda!14497))))

(declare-fun d!184777 () Bool)

(declare-fun res!219069 () Bool)

(declare-fun e!309139 () Bool)

(assert (=> d!184777 (=> (not res!219069) (not e!309139))))

(assert (=> d!184777 (= res!219069 (valid!485 (v!15767 (underlying!1222 (_2!3117 lt!214608)))))))

(assert (=> d!184777 (= (valid!484 (_2!3117 lt!214608)) e!309139)))

(declare-fun res!219070 () Bool)

(assert (=> b!516590 (=> (not res!219070) (not e!309139))))

(assert (=> b!516590 (= res!219070 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214608))))) lambda!14513))))

(declare-fun b!516591 () Bool)

(assert (=> b!516591 (= e!309139 (allKeysSameHashInMap!28 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214608)))) (hashF!2376 (_2!3117 lt!214608))))))

(assert (= (and d!184777 res!219069) b!516590))

(assert (= (and b!516590 res!219070) b!516591))

(declare-fun m!763139 () Bool)

(assert (=> d!184777 m!763139))

(assert (=> b!516590 m!763135))

(declare-fun m!763141 () Bool)

(assert (=> b!516590 m!763141))

(assert (=> b!516591 m!763135))

(assert (=> b!516591 m!763135))

(declare-fun m!763143 () Bool)

(assert (=> b!516591 m!763143))

(assert (=> b!516329 d!184777))

(declare-fun d!184779 () Bool)

(declare-fun c!100072 () Bool)

(assert (=> d!184779 (= c!100072 ((_ is Nil!4726) (t!73292 (toList!420 lt!214518))))))

(declare-fun e!309140 () (InoxSet tuple2!5800))

(assert (=> d!184779 (= (content!826 (t!73292 (toList!420 lt!214518))) e!309140)))

(declare-fun b!516592 () Bool)

(assert (=> b!516592 (= e!309140 ((as const (Array tuple2!5800 Bool)) false))))

(declare-fun b!516593 () Bool)

(assert (=> b!516593 (= e!309140 ((_ map or) (store ((as const (Array tuple2!5800 Bool)) false) (h!10124 (t!73292 (toList!420 lt!214518))) true) (content!826 (t!73292 (t!73292 (toList!420 lt!214518))))))))

(assert (= (and d!184779 c!100072) b!516592))

(assert (= (and d!184779 (not c!100072)) b!516593))

(declare-fun m!763145 () Bool)

(assert (=> b!516593 m!763145))

(declare-fun m!763147 () Bool)

(assert (=> b!516593 m!763147))

(assert (=> b!516353 d!184779))

(declare-fun d!184781 () Bool)

(assert (=> d!184781 (dynLambda!2979 lambda!14470 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603)))))

(declare-fun lt!214816 () Unit!8580)

(declare-fun choose!3682 (List!4737 Int tuple2!5804) Unit!8580)

(assert (=> d!184781 (= lt!214816 (choose!3682 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14470 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))))))

(declare-fun e!309143 () Bool)

(assert (=> d!184781 e!309143))

(declare-fun res!219073 () Bool)

(assert (=> d!184781 (=> (not res!219073) (not e!309143))))

(assert (=> d!184781 (= res!219073 (forall!1402 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14470))))

(assert (=> d!184781 (= (forallContained!446 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lambda!14470 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))) lt!214816)))

(declare-fun b!516596 () Bool)

(assert (=> b!516596 (= e!309143 (contains!1089 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))))))

(assert (= (and d!184781 res!219073) b!516596))

(declare-fun b_lambda!20067 () Bool)

(assert (=> (not b_lambda!20067) (not d!184781)))

(declare-fun m!763149 () Bool)

(assert (=> d!184781 m!763149))

(declare-fun m!763151 () Bool)

(assert (=> d!184781 m!763151))

(declare-fun m!763153 () Bool)

(assert (=> d!184781 m!763153))

(declare-fun m!763155 () Bool)

(assert (=> b!516596 m!763155))

(assert (=> b!516327 d!184781))

(declare-fun d!184783 () Bool)

(declare-fun res!219078 () Bool)

(declare-fun e!309148 () Bool)

(assert (=> d!184783 (=> res!219078 e!309148)))

(assert (=> d!184783 (= res!219078 (not ((_ is Cons!4726) (removePairForKey!15 lt!214606 k0!1740))))))

(assert (=> d!184783 (= (noDuplicateKeys!17 (removePairForKey!15 lt!214606 k0!1740)) e!309148)))

(declare-fun b!516601 () Bool)

(declare-fun e!309149 () Bool)

(assert (=> b!516601 (= e!309148 e!309149)))

(declare-fun res!219079 () Bool)

(assert (=> b!516601 (=> (not res!219079) (not e!309149))))

(assert (=> b!516601 (= res!219079 (not (containsKey!16 (t!73292 (removePairForKey!15 lt!214606 k0!1740)) (_1!3116 (h!10124 (removePairForKey!15 lt!214606 k0!1740))))))))

(declare-fun b!516602 () Bool)

(assert (=> b!516602 (= e!309149 (noDuplicateKeys!17 (t!73292 (removePairForKey!15 lt!214606 k0!1740))))))

(assert (= (and d!184783 (not res!219078)) b!516601))

(assert (= (and b!516601 res!219079) b!516602))

(declare-fun m!763157 () Bool)

(assert (=> b!516601 m!763157))

(declare-fun m!763159 () Bool)

(assert (=> b!516602 m!763159))

(assert (=> b!516327 d!184783))

(assert (=> b!516327 d!184717))

(assert (=> b!516327 d!184693))

(declare-fun d!184785 () Bool)

(declare-fun e!309152 () Bool)

(assert (=> d!184785 e!309152))

(declare-fun c!100075 () Bool)

(assert (=> d!184785 (= c!100075 (contains!1091 (v!15767 (underlying!1222 hm!65)) lt!214603))))

(declare-fun lt!214819 () List!4736)

(declare-fun apply!1187 (LongMapFixedSize!1042 (_ BitVec 64)) List!4736)

(assert (=> d!184785 (= lt!214819 (apply!1187 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))) lt!214603))))

(assert (=> d!184785 (valid!485 (v!15767 (underlying!1222 hm!65)))))

(assert (=> d!184785 (= (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603) lt!214819)))

(declare-fun b!516607 () Bool)

(declare-fun get!1799 (Option!1233) List!4736)

(assert (=> b!516607 (= e!309152 (= lt!214819 (get!1799 (getValueByKey!18 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))) lt!214603))))))

(declare-fun b!516608 () Bool)

(declare-fun dynLambda!2980 (Int (_ BitVec 64)) List!4736)

(assert (=> b!516608 (= e!309152 (= lt!214819 (dynLambda!2980 (defaultEntry!872 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))) lt!214603)))))

(assert (=> b!516608 ((_ is LongMap!521) (v!15767 (underlying!1222 hm!65)))))

(assert (= (and d!184785 c!100075) b!516607))

(assert (= (and d!184785 (not c!100075)) b!516608))

(declare-fun b_lambda!20069 () Bool)

(assert (=> (not b_lambda!20069) (not b!516608)))

(declare-fun t!73300 () Bool)

(declare-fun tb!47159 () Bool)

(assert (=> (and b!516289 (= (defaultEntry!872 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))) (defaultEntry!872 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))) t!73300) tb!47159))

(assert (=> b!516608 t!73300))

(declare-fun result!52220 () Bool)

(declare-fun b_and!51053 () Bool)

(assert (= b_and!51043 (and (=> t!73300 result!52220) b_and!51053)))

(declare-fun m!763161 () Bool)

(assert (=> d!184785 m!763161))

(declare-fun m!763163 () Bool)

(assert (=> d!184785 m!763163))

(assert (=> d!184785 m!762631))

(assert (=> b!516607 m!762633))

(declare-fun m!763165 () Bool)

(assert (=> b!516607 m!763165))

(assert (=> b!516607 m!763165))

(declare-fun m!763167 () Bool)

(assert (=> b!516607 m!763167))

(declare-fun m!763169 () Bool)

(assert (=> b!516608 m!763169))

(assert (=> b!516327 d!184785))

(assert (=> b!516327 d!184673))

(declare-fun d!184787 () Bool)

(declare-fun hash!524 (Hashable!493 K!1417) (_ BitVec 64))

(assert (=> d!184787 (= (hash!519 (hashF!2376 hm!65) k0!1740) (hash!524 (hashF!2376 hm!65) k0!1740))))

(declare-fun bs!59880 () Bool)

(assert (= bs!59880 d!184787))

(declare-fun m!763171 () Bool)

(assert (=> bs!59880 m!763171))

(assert (=> b!516327 d!184787))

(declare-fun d!184789 () Bool)

(assert (=> d!184789 (noDuplicateKeys!17 (removePairForKey!15 lt!214606 k0!1740))))

(declare-fun lt!214822 () Unit!8580)

(declare-fun choose!3683 (List!4736 K!1417) Unit!8580)

(assert (=> d!184789 (= lt!214822 (choose!3683 lt!214606 k0!1740))))

(assert (=> d!184789 (noDuplicateKeys!17 lt!214606)))

(assert (=> d!184789 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!15 lt!214606 k0!1740) lt!214822)))

(declare-fun bs!59881 () Bool)

(assert (= bs!59881 d!184789))

(assert (=> bs!59881 m!762663))

(assert (=> bs!59881 m!762663))

(assert (=> bs!59881 m!762669))

(declare-fun m!763173 () Bool)

(assert (=> bs!59881 m!763173))

(assert (=> bs!59881 m!762761))

(assert (=> b!516327 d!184789))

(declare-fun b!516627 () Bool)

(declare-fun e!309166 () Bool)

(declare-fun call!37740 () ListLongMap!79)

(declare-fun call!37739 () ListLongMap!79)

(assert (=> b!516627 (= e!309166 (= call!37740 call!37739))))

(declare-fun bm!37734 () Bool)

(declare-fun lt!214832 () tuple2!5806)

(assert (=> bm!37734 (= call!37740 (map!1041 (_2!3119 lt!214832)))))

(declare-fun b!516628 () Bool)

(declare-fun e!309165 () tuple2!5806)

(declare-datatypes ((tuple2!5810 0))(
  ( (tuple2!5811 (_1!3121 Bool) (_2!3121 LongMapFixedSize!1042)) )
))
(declare-fun lt!214834 () tuple2!5810)

(assert (=> b!516628 (= e!309165 (tuple2!5807 (_1!3121 lt!214834) (LongMap!521 (Cell!2026 (_2!3121 lt!214834)))))))

(declare-fun lt!214831 () tuple2!5806)

(declare-fun update!56 (LongMapFixedSize!1042 (_ BitVec 64) List!4736) tuple2!5810)

(assert (=> b!516628 (= lt!214834 (update!56 (v!15766 (underlying!1221 (_2!3119 lt!214831))) lt!214603 lt!214607))))

(declare-fun b!516629 () Bool)

(declare-fun e!309163 () Bool)

(assert (=> b!516629 (= e!309166 e!309163)))

(declare-fun res!219086 () Bool)

(assert (=> b!516629 (= res!219086 (contains!1088 call!37740 lt!214603))))

(assert (=> b!516629 (=> (not res!219086) (not e!309163))))

(declare-fun b!516630 () Bool)

(declare-fun e!309164 () tuple2!5806)

(assert (=> b!516630 (= e!309164 (tuple2!5807 true (v!15767 (underlying!1222 hm!65))))))

(declare-fun b!516631 () Bool)

(declare-fun e!309167 () Bool)

(assert (=> b!516631 (= e!309167 e!309166)))

(declare-fun c!100084 () Bool)

(assert (=> b!516631 (= c!100084 (_1!3119 lt!214832))))

(declare-fun b!516632 () Bool)

(declare-fun res!219087 () Bool)

(assert (=> b!516632 (=> (not res!219087) (not e!309167))))

(assert (=> b!516632 (= res!219087 (valid!485 (_2!3119 lt!214832)))))

(declare-fun b!516633 () Bool)

(declare-fun lt!214833 () tuple2!5806)

(assert (=> b!516633 (= e!309164 (tuple2!5807 (_1!3119 lt!214833) (_2!3119 lt!214833)))))

(declare-fun repack!9 (MutLongMap!521) tuple2!5806)

(assert (=> b!516633 (= lt!214833 (repack!9 (v!15767 (underlying!1222 hm!65))))))

(declare-fun b!516634 () Bool)

(assert (=> b!516634 (= e!309163 (= call!37740 (+!24 call!37739 (tuple2!5805 lt!214603 lt!214607))))))

(declare-fun d!184791 () Bool)

(assert (=> d!184791 e!309167))

(declare-fun res!219088 () Bool)

(assert (=> d!184791 (=> (not res!219088) (not e!309167))))

(assert (=> d!184791 (= res!219088 ((_ is LongMap!521) (_2!3119 lt!214832)))))

(assert (=> d!184791 (= lt!214832 e!309165)))

(declare-fun c!100083 () Bool)

(assert (=> d!184791 (= c!100083 (_1!3119 lt!214831))))

(assert (=> d!184791 (= lt!214831 e!309164)))

(declare-fun c!100082 () Bool)

(declare-fun imbalanced!5 (MutLongMap!521) Bool)

(assert (=> d!184791 (= c!100082 (imbalanced!5 (v!15767 (underlying!1222 hm!65))))))

(assert (=> d!184791 (valid!485 (v!15767 (underlying!1222 hm!65)))))

(assert (=> d!184791 (= (update!55 (v!15767 (underlying!1222 hm!65)) lt!214603 lt!214607) lt!214832)))

(declare-fun bm!37735 () Bool)

(assert (=> bm!37735 (= call!37739 (map!1041 (v!15767 (underlying!1222 hm!65))))))

(declare-fun b!516635 () Bool)

(assert (=> b!516635 (= e!309165 (tuple2!5807 false (_2!3119 lt!214831)))))

(assert (= (and d!184791 c!100082) b!516633))

(assert (= (and d!184791 (not c!100082)) b!516630))

(assert (= (and d!184791 c!100083) b!516628))

(assert (= (and d!184791 (not c!100083)) b!516635))

(assert (= (and d!184791 res!219088) b!516632))

(assert (= (and b!516632 res!219087) b!516631))

(assert (= (and b!516631 c!100084) b!516629))

(assert (= (and b!516631 (not c!100084)) b!516627))

(assert (= (and b!516629 res!219086) b!516634))

(assert (= (or b!516629 b!516634 b!516627) bm!37734))

(assert (= (or b!516634 b!516627) bm!37735))

(declare-fun m!763175 () Bool)

(assert (=> b!516632 m!763175))

(declare-fun m!763177 () Bool)

(assert (=> b!516633 m!763177))

(declare-fun m!763179 () Bool)

(assert (=> d!184791 m!763179))

(assert (=> d!184791 m!762631))

(declare-fun m!763181 () Bool)

(assert (=> bm!37734 m!763181))

(assert (=> bm!37735 m!762633))

(declare-fun m!763183 () Bool)

(assert (=> b!516629 m!763183))

(declare-fun m!763185 () Bool)

(assert (=> b!516628 m!763185))

(declare-fun m!763187 () Bool)

(assert (=> b!516634 m!763187))

(assert (=> b!516327 d!184791))

(declare-fun d!184793 () Bool)

(assert (=> d!184793 (= (map!1041 (ite c!100001 (v!15767 (underlying!1222 hm!65)) (v!15767 (underlying!1222 (_2!3120 lt!214588))))) (map!1042 (v!15766 (underlying!1221 (ite c!100001 (v!15767 (underlying!1222 hm!65)) (v!15767 (underlying!1222 (_2!3120 lt!214588))))))))))

(declare-fun bs!59882 () Bool)

(assert (= bs!59882 d!184793))

(declare-fun m!763189 () Bool)

(assert (=> bs!59882 m!763189))

(assert (=> bm!37683 d!184793))

(declare-fun d!184795 () Bool)

(assert (=> d!184795 (= (valid!485 (v!15767 (underlying!1222 hm!65))) (valid!486 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65))))))))

(declare-fun bs!59883 () Bool)

(assert (= bs!59883 d!184795))

(declare-fun m!763191 () Bool)

(assert (=> bs!59883 m!763191))

(assert (=> d!184649 d!184795))

(declare-fun b!516636 () Bool)

(declare-fun e!309168 () Bool)

(declare-fun tp!161165 () Bool)

(assert (=> b!516636 (= e!309168 (and tp_is_empty!2627 tp_is_empty!2629 tp!161165))))

(assert (=> b!516360 (= tp!161156 e!309168)))

(assert (= (and b!516360 ((_ is Cons!4726) (t!73292 mapValue!2015))) b!516636))

(declare-fun e!309169 () Bool)

(declare-fun tp!161166 () Bool)

(declare-fun b!516637 () Bool)

(assert (=> b!516637 (= e!309169 (and tp_is_empty!2627 tp_is_empty!2629 tp!161166))))

(assert (=> b!516369 (= tp!161164 e!309169)))

(assert (= (and b!516369 ((_ is Cons!4726) (t!73292 mapDefault!2012))) b!516637))

(declare-fun e!309170 () Bool)

(declare-fun tp!161167 () Bool)

(declare-fun b!516638 () Bool)

(assert (=> b!516638 (= e!309170 (and tp_is_empty!2627 tp_is_empty!2629 tp!161167))))

(assert (=> b!516361 (= tp!161157 e!309170)))

(assert (= (and b!516361 ((_ is Cons!4726) (t!73292 mapDefault!2015))) b!516638))

(declare-fun b!516639 () Bool)

(declare-fun tp!161168 () Bool)

(declare-fun e!309171 () Bool)

(assert (=> b!516639 (= e!309171 (and tp_is_empty!2627 tp_is_empty!2629 tp!161168))))

(assert (=> b!516366 (= tp!161161 e!309171)))

(assert (= (and b!516366 ((_ is Cons!4726) (t!73292 mapValue!2012))) b!516639))

(declare-fun b!516647 () Bool)

(declare-fun e!309177 () Bool)

(declare-fun lt!214837 () MutLongMap!521)

(assert (=> b!516647 (= e!309177 ((_ is LongMap!521) lt!214837))))

(assert (=> b!516647 (= lt!214837 (v!15767 (underlying!1222 (_2!3117 (remove!39 hm!65 k0!1740)))))))

(declare-fun b!516646 () Bool)

(declare-fun e!309176 () Bool)

(assert (=> b!516646 (= e!309176 e!309177)))

(assert (=> d!184667 (= true e!309176)))

(assert (= b!516646 b!516647))

(assert (= (and d!184667 ((_ is HashMap!493) (_2!3117 (remove!39 hm!65 k0!1740)))) b!516646))

(declare-fun b!516648 () Bool)

(declare-fun tp!161169 () Bool)

(declare-fun e!309178 () Bool)

(assert (=> b!516648 (= e!309178 (and tp_is_empty!2627 tp_is_empty!2629 tp!161169))))

(assert (=> b!516368 (= tp!161163 e!309178)))

(assert (= (and b!516368 ((_ is Cons!4726) (t!73292 (minValue!777 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))))) b!516648))

(declare-fun mapIsEmpty!2016 () Bool)

(declare-fun mapRes!2016 () Bool)

(assert (=> mapIsEmpty!2016 mapRes!2016))

(declare-fun condMapEmpty!2016 () Bool)

(declare-fun mapDefault!2016 () List!4736)

(assert (=> mapNonEmpty!2015 (= condMapEmpty!2016 (= mapRest!2015 ((as const (Array (_ BitVec 32) List!4736)) mapDefault!2016)))))

(declare-fun e!309179 () Bool)

(assert (=> mapNonEmpty!2015 (= tp!161158 (and e!309179 mapRes!2016))))

(declare-fun e!309180 () Bool)

(declare-fun tp!161170 () Bool)

(declare-fun b!516649 () Bool)

(assert (=> b!516649 (= e!309180 (and tp_is_empty!2627 tp_is_empty!2629 tp!161170))))

(declare-fun mapNonEmpty!2016 () Bool)

(declare-fun tp!161172 () Bool)

(assert (=> mapNonEmpty!2016 (= mapRes!2016 (and tp!161172 e!309180))))

(declare-fun mapValue!2016 () List!4736)

(declare-fun mapKey!2016 () (_ BitVec 32))

(declare-fun mapRest!2016 () (Array (_ BitVec 32) List!4736))

(assert (=> mapNonEmpty!2016 (= mapRest!2015 (store mapRest!2016 mapKey!2016 mapValue!2016))))

(declare-fun tp!161171 () Bool)

(declare-fun b!516650 () Bool)

(assert (=> b!516650 (= e!309179 (and tp_is_empty!2627 tp_is_empty!2629 tp!161171))))

(assert (= (and mapNonEmpty!2015 condMapEmpty!2016) mapIsEmpty!2016))

(assert (= (and mapNonEmpty!2015 (not condMapEmpty!2016)) mapNonEmpty!2016))

(assert (= (and mapNonEmpty!2016 ((_ is Cons!4726) mapValue!2016)) b!516649))

(assert (= (and mapNonEmpty!2015 ((_ is Cons!4726) mapDefault!2016)) b!516650))

(declare-fun m!763193 () Bool)

(assert (=> mapNonEmpty!2016 m!763193))

(declare-fun b!516651 () Bool)

(declare-fun tp!161173 () Bool)

(declare-fun e!309181 () Bool)

(assert (=> b!516651 (= e!309181 (and tp_is_empty!2627 tp_is_empty!2629 tp!161173))))

(assert (=> b!516367 (= tp!161162 e!309181)))

(assert (= (and b!516367 ((_ is Cons!4726) (t!73292 (zeroValue!777 (v!15766 (underlying!1221 (v!15767 (underlying!1222 hm!65)))))))) b!516651))

(declare-fun b_lambda!20071 () Bool)

(assert (= b_lambda!20063 (or b!516300 b_lambda!20071)))

(declare-fun bs!59884 () Bool)

(declare-fun d!184797 () Bool)

(assert (= bs!59884 (and d!184797 b!516300)))

(assert (=> bs!59884 (= (dynLambda!2979 lambda!14462 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65)))))) (noDuplicateKeys!17 (_2!3118 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 hm!65))))))))))

(declare-fun m!763195 () Bool)

(assert (=> bs!59884 m!763195))

(assert (=> b!516445 d!184797))

(declare-fun b_lambda!20073 () Bool)

(assert (= b_lambda!20069 (or (and b!516289 b_free!13583) b_lambda!20073)))

(declare-fun b_lambda!20075 () Bool)

(assert (= b_lambda!20067 (or b!516327 b_lambda!20075)))

(declare-fun bs!59885 () Bool)

(declare-fun d!184799 () Bool)

(assert (= bs!59885 (and d!184799 b!516327)))

(assert (=> bs!59885 (= (dynLambda!2979 lambda!14470 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603))) (noDuplicateKeys!17 (_2!3118 (tuple2!5805 lt!214603 (apply!1185 (v!15767 (underlying!1222 hm!65)) lt!214603)))))))

(declare-fun m!763197 () Bool)

(assert (=> bs!59885 m!763197))

(assert (=> d!184781 d!184799))

(declare-fun b_lambda!20077 () Bool)

(assert (= b_lambda!20057 (or b!516327 b_lambda!20077)))

(declare-fun bs!59886 () Bool)

(declare-fun d!184801 () Bool)

(assert (= bs!59886 (and d!184801 b!516327)))

(assert (=> bs!59886 (= (dynLambda!2979 lambda!14470 (h!10125 (toList!421 call!37688))) (noDuplicateKeys!17 (_2!3118 (h!10125 (toList!421 call!37688)))))))

(declare-fun m!763199 () Bool)

(assert (=> bs!59886 m!763199))

(assert (=> b!516405 d!184801))

(declare-fun b_lambda!20079 () Bool)

(assert (= b_lambda!20059 (or b!516327 b_lambda!20079)))

(declare-fun bs!59887 () Bool)

(declare-fun d!184803 () Bool)

(assert (= bs!59887 (and d!184803 b!516327)))

(assert (=> bs!59887 (= (dynLambda!2979 lambda!14470 (h!10125 (toList!421 lt!214609))) (noDuplicateKeys!17 (_2!3118 (h!10125 (toList!421 lt!214609)))))))

(declare-fun m!763201 () Bool)

(assert (=> bs!59887 m!763201))

(assert (=> b!516407 d!184803))

(declare-fun b_lambda!20081 () Bool)

(assert (= b_lambda!20061 (or b!516302 b_lambda!20081)))

(declare-fun bs!59888 () Bool)

(declare-fun d!184805 () Bool)

(assert (= bs!59888 (and d!184805 b!516302)))

(assert (=> bs!59888 (= (dynLambda!2979 lambda!14463 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522))))))) (noDuplicateKeys!17 (_2!3118 (h!10125 (toList!421 (map!1041 (v!15767 (underlying!1222 (_2!3117 lt!214522)))))))))))

(declare-fun m!763203 () Bool)

(assert (=> bs!59888 m!763203))

(assert (=> b!516441 d!184805))

(declare-fun b_lambda!20083 () Bool)

(assert (= b_lambda!20065 (or (and d!184685 (= lambda!14476 p!6060)) (and d!184701 (= lambda!14483 p!6060)) (and start!46856 b_free!13587) b_lambda!20083)))

(declare-fun bs!59889 () Bool)

(declare-fun d!184807 () Bool)

(assert (= bs!59889 (and d!184807 d!184685)))

(assert (=> bs!59889 (= (dynLambda!2978 lambda!14476 (h!10124 (t!73292 (toList!420 lt!214518)))) (= (hash!519 (hashF!2376 (_2!3120 lt!214588)) (_1!3116 (h!10124 (t!73292 (toList!420 lt!214518))))) lt!214603))))

(declare-fun m!763205 () Bool)

(assert (=> bs!59889 m!763205))

(assert (=> (and d!184685 (= lambda!14476 p!6060) b!516447) d!184807))

(declare-fun bs!59890 () Bool)

(declare-fun d!184809 () Bool)

(assert (= bs!59890 (and d!184809 d!184701)))

(assert (=> bs!59890 (= (dynLambda!2978 lambda!14483 (h!10124 (t!73292 (toList!420 lt!214518)))) (= (hash!519 (hashF!2376 (_2!3120 lt!214588)) (_1!3116 (h!10124 (t!73292 (toList!420 lt!214518))))) lt!214603))))

(assert (=> bs!59890 m!763205))

(assert (=> (and d!184701 (= lambda!14483 p!6060) b!516447) d!184809))

(check-sat (not b!516408) (not bm!37710) (not bs!59890) (not b!516428) (not d!184687) (not d!184707) (not b!516639) (not d!184789) (not bm!37705) (not b!516513) (not b!516526) (not d!184679) (not d!184739) (not b!516585) (not bm!37724) (not b_lambda!20079) (not d!184721) (not b!516528) (not d!184775) (not d!184691) (not d!184759) (not b!516525) (not b!516636) (not b!516628) (not d!184709) (not b!516638) (not bm!37734) (not b!516446) (not d!184705) (not bs!59889) (not b!516479) (not d!184747) (not d!184717) (not b!516465) (not b!516518) b_and!51053 (not b!516473) (not b!516572) (not bm!37725) (not b_lambda!20077) (not b!516523) (not mapNonEmpty!2016) (not b!516508) (not b!516439) (not bm!37728) (not bm!37727) (not b!516450) (not b!516634) (not b!516607) (not b!516651) (not b!516478) (not b!516584) (not d!184689) (not b!516530) (not b!516571) (not bs!59884) (not b!516433) (not d!184693) (not b!516438) (not b!516576) (not d!184755) (not bm!37707) (not d!184695) (not d!184771) (not d!184731) (not b!516577) (not d!184681) (not bm!37735) (not b!516481) (not b!516517) b_and!51051 (not b!516578) (not b!516380) (not b!516582) (not b!516649) (not bs!59886) (not b!516602) (not b!516480) (not d!184793) tp_is_empty!2629 (not b!516574) (not b!516430) (not b!516516) (not b!516601) (not b!516459) (not b!516435) (not d!184725) (not b!516448) (not d!184777) (not bm!37729) (not d!184769) (not d!184787) (not b!516629) (not bs!59887) (not d!184733) (not d!184791) (not b!516432) (not b!516382) (not d!184751) (not b_next!13587) (not b_next!13589) (not b_next!13595) (not b!516474) (not tb!47159) (not d!184683) (not d!184781) (not d!184697) (not b!516590) (not b!516400) (not d!184795) (not b!516451) (not b!516632) (not b!516521) (not bm!37706) (not b_lambda!20081) (not b!516519) (not d!184727) (not d!184711) (not d!184713) (not b!516633) (not b!516442) (not b!516431) (not b!516637) (not d!184757) (not d!184785) (not bm!37709) (not d!184761) (not d!184723) tp_is_empty!2627 (not b!516472) b_and!51045 (not b!516443) (not b!516429) (not b!516596) (not b_lambda!20055) (not bm!37692) (not b_lambda!20071) (not b!516588) (not bs!59885) (not b!516482) (not d!184685) (not b_lambda!20073) (not d!184741) (not b!516589) (not b!516453) (not b!516586) (not b!516593) (not bm!37708) (not b!516458) (not b!516591) (not b!516515) (not bm!37726) (not d!184715) (not d!184765) (not b!516399) (not d!184701) (not bs!59888) (not b!516648) (not b!516393) (not b_lambda!20075) (not b!516449) (not bm!37711) (not b!516527) (not b!516406) (not d!184737) (not b!516524) (not b_lambda!20083) (not b!516650) (not b!516511))
(check-sat b_and!51053 b_and!51051 b_and!51045 (not b_next!13587) (not b_next!13589) (not b_next!13595))
