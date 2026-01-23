; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416620 () Bool)

(assert start!416620)

(declare-fun b!4326131 () Bool)

(declare-fun b_free!129091 () Bool)

(declare-fun b_next!129795 () Bool)

(assert (=> b!4326131 (= b_free!129091 (not b_next!129795))))

(declare-fun tp!1327750 () Bool)

(declare-fun b_and!340677 () Bool)

(assert (=> b!4326131 (= tp!1327750 b_and!340677)))

(declare-fun b!4326137 () Bool)

(declare-fun b_free!129093 () Bool)

(declare-fun b_next!129797 () Bool)

(assert (=> b!4326137 (= b_free!129093 (not b_next!129797))))

(declare-fun tp!1327751 () Bool)

(declare-fun b_and!340679 () Bool)

(assert (=> b!4326137 (= tp!1327751 b_and!340679)))

(declare-fun bs!607406 () Bool)

(declare-fun b!4326134 () Bool)

(declare-fun b!4326126 () Bool)

(assert (= bs!607406 (and b!4326134 b!4326126)))

(declare-fun lambda!134350 () Int)

(declare-fun lambda!134349 () Int)

(assert (=> bs!607406 (= lambda!134350 lambda!134349)))

(declare-fun c!736015 () Bool)

(declare-fun bm!300325 () Bool)

(declare-fun call!300335 () Bool)

(declare-datatypes ((V!9906 0))(
  ( (V!9907 (val!16021 Int)) )
))
(declare-datatypes ((K!9704 0))(
  ( (K!9705 (val!16022 Int)) )
))
(declare-datatypes ((tuple2!47382 0))(
  ( (tuple2!47383 (_1!26979 K!9704) (_2!26979 V!9906)) )
))
(declare-datatypes ((List!48567 0))(
  ( (Nil!48443) (Cons!48443 (h!53911 tuple2!47382) (t!355473 List!48567)) )
))
(declare-datatypes ((array!17372 0))(
  ( (array!17373 (arr!7751 (Array (_ BitVec 32) (_ BitVec 64))) (size!35790 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4699 0))(
  ( (HashableExt!4698 (__x!30374 Int)) )
))
(declare-datatypes ((array!17374 0))(
  ( (array!17375 (arr!7752 (Array (_ BitVec 32) List!48567)) (size!35791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9566 0))(
  ( (LongMapFixedSize!9567 (defaultEntry!5188 Int) (mask!13437 (_ BitVec 32)) (extraKeys!5048 (_ BitVec 32)) (zeroValue!5060 List!48567) (minValue!5060 List!48567) (_size!9611 (_ BitVec 32)) (_keys!5109 array!17372) (_values!5084 array!17374) (_vacant!4846 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18941 0))(
  ( (Cell!18942 (v!42898 LongMapFixedSize!9566)) )
))
(declare-datatypes ((MutLongMap!4783 0))(
  ( (LongMap!4783 (underlying!9795 Cell!18941)) (MutLongMapExt!4782 (__x!30375 Int)) )
))
(declare-datatypes ((Cell!18943 0))(
  ( (Cell!18944 (v!42899 MutLongMap!4783)) )
))
(declare-datatypes ((MutableMap!4689 0))(
  ( (MutableMapExt!4688 (__x!30376 Int)) (HashMap!4689 (underlying!9796 Cell!18943) (hashF!7005 Hashable!4699) (_size!9612 (_ BitVec 32)) (defaultValue!4860 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4689)

(declare-datatypes ((tuple2!47384 0))(
  ( (tuple2!47385 (_1!26980 (_ BitVec 64)) (_2!26980 List!48567)) )
))
(declare-datatypes ((List!48568 0))(
  ( (Nil!48444) (Cons!48444 (h!53912 tuple2!47384) (t!355474 List!48568)) )
))
(declare-datatypes ((ListLongMap!1229 0))(
  ( (ListLongMap!1230 (toList!2612 List!48568)) )
))
(declare-fun lt!1543470 () ListLongMap!1229)

(declare-fun lt!1543478 () ListLongMap!1229)

(declare-fun allKeysSameHashInMap!411 (ListLongMap!1229 Hashable!4699) Bool)

(assert (=> bm!300325 (= call!300335 (allKeysSameHashInMap!411 (ite c!736015 lt!1543470 lt!1543478) (hashF!7005 thiss!42308)))))

(declare-fun b!4326115 () Bool)

(declare-fun e!2691825 () List!48567)

(assert (=> b!4326115 (= e!2691825 Nil!48443)))

(declare-fun b!4326116 () Bool)

(declare-fun call!300337 () List!48567)

(assert (=> b!4326116 (= e!2691825 call!300337)))

(declare-fun bm!300326 () Bool)

(declare-fun lt!1543461 () ListLongMap!1229)

(declare-datatypes ((ListMap!1889 0))(
  ( (ListMap!1890 (toList!2613 List!48567)) )
))
(declare-fun call!300344 () ListMap!1889)

(declare-fun extractMap!390 (List!48568) ListMap!1889)

(assert (=> bm!300326 (= call!300344 (extractMap!390 (ite c!736015 (toList!2612 lt!1543470) (toList!2612 lt!1543461))))))

(declare-fun b!4326117 () Bool)

(declare-fun e!2691824 () Bool)

(declare-fun call!300334 () Bool)

(assert (=> b!4326117 (= e!2691824 call!300334)))

(declare-fun bm!300327 () Bool)

(declare-fun lt!1543491 () ListMap!1889)

(declare-fun call!300341 () Bool)

(declare-fun lt!1543458 () ListMap!1889)

(declare-fun key!2048 () K!9704)

(declare-fun contains!10532 (ListMap!1889 K!9704) Bool)

(assert (=> bm!300327 (= call!300341 (contains!10532 (ite c!736015 lt!1543491 lt!1543458) key!2048))))

(declare-fun bm!300328 () Bool)

(declare-fun lt!1543465 () List!48567)

(declare-fun call!300336 () ListLongMap!1229)

(declare-fun lt!1543471 () List!48567)

(declare-fun lt!1543487 () (_ BitVec 64))

(declare-fun lt!1543452 () (_ BitVec 64))

(declare-fun +!372 (ListLongMap!1229 tuple2!47384) ListLongMap!1229)

(assert (=> bm!300328 (= call!300336 (+!372 lt!1543461 (ite c!736015 (tuple2!47385 lt!1543452 lt!1543471) (tuple2!47385 lt!1543487 lt!1543465))))))

(declare-fun bm!300329 () Bool)

(declare-datatypes ((Unit!68021 0))(
  ( (Unit!68022) )
))
(declare-fun call!300332 () Unit!68021)

(declare-fun lt!1543475 () List!48567)

(declare-fun lt!1543453 () List!48567)

(declare-fun lemmaRemovePairForKeyPreservesHash!244 (List!48567 K!9704 (_ BitVec 64) Hashable!4699) Unit!68021)

(assert (=> bm!300329 (= call!300332 (lemmaRemovePairForKeyPreservesHash!244 (ite c!736015 lt!1543475 lt!1543453) key!2048 (ite c!736015 lt!1543452 lt!1543487) (hashF!7005 thiss!42308)))))

(declare-fun b!4326118 () Bool)

(declare-fun e!2691816 () Bool)

(declare-fun e!2691822 () Bool)

(declare-fun lt!1543480 () MutLongMap!4783)

(get-info :version)

(assert (=> b!4326118 (= e!2691816 (and e!2691822 ((_ is LongMap!4783) lt!1543480)))))

(assert (=> b!4326118 (= lt!1543480 (v!42899 (underlying!9796 thiss!42308)))))

(declare-fun b!4326119 () Bool)

(declare-fun e!2691819 () Bool)

(declare-fun call!300356 () ListMap!1889)

(declare-fun lt!1543469 () ListMap!1889)

(assert (=> b!4326119 (= e!2691819 (= call!300356 lt!1543469))))

(declare-fun call!300349 () Bool)

(declare-fun bm!300331 () Bool)

(declare-fun lt!1543473 () ListMap!1889)

(declare-fun lt!1543466 () ListMap!1889)

(assert (=> bm!300331 (= call!300349 (contains!10532 (ite c!736015 lt!1543473 lt!1543466) key!2048))))

(declare-fun lt!1543484 () tuple2!47382)

(declare-fun bm!300332 () Bool)

(declare-fun call!300346 () ListMap!1889)

(declare-fun lt!1543457 () tuple2!47382)

(declare-fun +!373 (ListMap!1889 tuple2!47382) ListMap!1889)

(assert (=> bm!300332 (= call!300346 (+!373 lt!1543469 (ite c!736015 lt!1543484 lt!1543457)))))

(declare-fun b!4326120 () Bool)

(declare-fun e!2691826 () Bool)

(declare-fun call!300353 () ListMap!1889)

(assert (=> b!4326120 (= e!2691826 (= call!300353 lt!1543469))))

(declare-datatypes ((tuple2!47386 0))(
  ( (tuple2!47387 (_1!26981 Bool) (_2!26981 MutLongMap!4783)) )
))
(declare-fun lt!1543483 () tuple2!47386)

(declare-fun call!300331 () ListLongMap!1229)

(declare-fun lt!1543460 () tuple2!47386)

(declare-fun bm!300333 () Bool)

(declare-fun map!10485 (MutLongMap!4783) ListLongMap!1229)

(assert (=> bm!300333 (= call!300331 (map!10485 (ite c!736015 (_2!26981 lt!1543483) (_2!26981 lt!1543460))))))

(declare-fun bm!300334 () Bool)

(declare-fun lt!1543481 () ListLongMap!1229)

(declare-fun call!300338 () Bool)

(declare-fun lt!1543456 () ListLongMap!1229)

(declare-fun forall!8844 (List!48568 Int) Bool)

(assert (=> bm!300334 (= call!300338 (forall!8844 (ite c!736015 (toList!2612 lt!1543481) (toList!2612 lt!1543456)) (ite c!736015 lambda!134349 lambda!134350)))))

(declare-fun call!300354 () Unit!68021)

(declare-fun bm!300335 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!252 (List!48568 (_ BitVec 64) List!48567 Hashable!4699) Unit!68021)

(assert (=> bm!300335 (= call!300354 (lemmaInLongMapAllKeySameHashThenForTuple!252 (toList!2612 lt!1543461) (ite c!736015 lt!1543452 lt!1543487) (ite c!736015 lt!1543475 lt!1543453) (hashF!7005 thiss!42308)))))

(declare-fun b!4326121 () Bool)

(declare-fun e!2691815 () Bool)

(assert (=> b!4326121 (= e!2691822 e!2691815)))

(declare-fun b!4326122 () Bool)

(declare-fun e!2691834 () Unit!68021)

(declare-fun Unit!68023 () Unit!68021)

(assert (=> b!4326122 (= e!2691834 Unit!68023)))

(declare-datatypes ((tuple2!47388 0))(
  ( (tuple2!47389 (_1!26982 Bool) (_2!26982 MutableMap!4689)) )
))
(declare-fun e!2691818 () tuple2!47388)

(declare-fun b!4326123 () Bool)

(declare-fun lt!1543485 () Cell!18943)

(declare-fun lt!1543451 () MutableMap!4689)

(declare-fun lt!1543488 () Bool)

(declare-datatypes ((tuple2!47390 0))(
  ( (tuple2!47391 (_1!26983 Unit!68021) (_2!26983 MutableMap!4689)) )
))
(declare-fun Unit!68024 () Unit!68021)

(declare-fun Unit!68025 () Unit!68021)

(assert (=> b!4326123 (= e!2691818 (tuple2!47389 (_1!26981 lt!1543483) (_2!26983 (ite (and (_1!26981 lt!1543483) (not lt!1543488)) (tuple2!47391 Unit!68024 (HashMap!4689 lt!1543485 (hashF!7005 thiss!42308) (bvadd (_size!9612 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4860 thiss!42308))) (tuple2!47391 Unit!68025 lt!1543451)))))))

(declare-fun call!300350 () (_ BitVec 64))

(assert (=> b!4326123 (= lt!1543452 call!300350)))

(assert (=> b!4326123 (= lt!1543475 call!300337)))

(declare-fun v!9179 () V!9906)

(assert (=> b!4326123 (= lt!1543484 (tuple2!47383 key!2048 v!9179))))

(declare-fun lt!1543477 () List!48567)

(declare-fun call!300352 () List!48567)

(assert (=> b!4326123 (= lt!1543477 call!300352)))

(assert (=> b!4326123 (= lt!1543471 (Cons!48443 lt!1543484 lt!1543477))))

(declare-fun call!300351 () tuple2!47386)

(assert (=> b!4326123 (= lt!1543483 call!300351)))

(assert (=> b!4326123 (= lt!1543485 (Cell!18944 (_2!26981 lt!1543483)))))

(assert (=> b!4326123 (= lt!1543451 (HashMap!4689 lt!1543485 (hashF!7005 thiss!42308) (_size!9612 thiss!42308) (defaultValue!4860 thiss!42308)))))

(declare-fun c!736017 () Bool)

(assert (=> b!4326123 (= c!736017 (_1!26981 lt!1543483))))

(declare-fun lt!1543474 () Unit!68021)

(declare-fun e!2691828 () Unit!68021)

(assert (=> b!4326123 (= lt!1543474 e!2691828)))

(declare-fun call!300347 () Bool)

(declare-fun bm!300336 () Bool)

(declare-fun allKeysSameHash!267 (List!48567 (_ BitVec 64) Hashable!4699) Bool)

(assert (=> bm!300336 (= call!300347 (allKeysSameHash!267 (ite c!736015 lt!1543477 lt!1543453) (ite c!736015 lt!1543452 lt!1543487) (hashF!7005 thiss!42308)))))

(declare-fun b!4326124 () Bool)

(declare-fun lt!1543455 () Unit!68021)

(assert (=> b!4326124 (= e!2691834 lt!1543455)))

(declare-fun lt!1543482 () Unit!68021)

(assert (=> b!4326124 (= lt!1543482 call!300354)))

(assert (=> b!4326124 call!300347))

(assert (=> b!4326124 (= lt!1543455 call!300332)))

(declare-fun call!300355 () Bool)

(assert (=> b!4326124 call!300355))

(declare-fun bm!300337 () Bool)

(declare-fun call!300330 () ListMap!1889)

(assert (=> bm!300337 (= call!300353 call!300330)))

(declare-fun bm!300338 () Bool)

(declare-fun apply!11183 (MutLongMap!4783 (_ BitVec 64)) List!48567)

(assert (=> bm!300338 (= call!300337 (apply!11183 (v!42899 (underlying!9796 thiss!42308)) (ite c!736015 lt!1543452 lt!1543487)))))

(declare-fun b!4326125 () Bool)

(declare-fun e!2691821 () Bool)

(assert (=> b!4326125 (= e!2691821 (not ((_ is HashMap!4689) (_2!26982 e!2691818))))))

(assert (=> b!4326125 (= c!736015 lt!1543488)))

(declare-fun contains!10533 (MutableMap!4689 K!9704) Bool)

(assert (=> b!4326125 (= lt!1543488 (contains!10533 thiss!42308 key!2048))))

(assert (=> b!4326125 (= lt!1543461 (map!10485 (v!42899 (underlying!9796 thiss!42308))))))

(declare-fun map!10486 (MutableMap!4689) ListMap!1889)

(assert (=> b!4326125 (= lt!1543469 (map!10486 thiss!42308))))

(declare-fun bm!300339 () Bool)

(declare-fun removePairForKey!290 (List!48567 K!9704) List!48567)

(assert (=> bm!300339 (= call!300352 (removePairForKey!290 (ite c!736015 lt!1543475 lt!1543453) key!2048))))

(declare-fun e!2691833 () Bool)

(assert (=> b!4326126 e!2691833))

(declare-fun res!1772849 () Bool)

(assert (=> b!4326126 (=> (not res!1772849) (not e!2691833))))

(assert (=> b!4326126 (= res!1772849 call!300338)))

(assert (=> b!4326126 (= lt!1543481 call!300331)))

(assert (=> b!4326126 (= call!300349 call!300341)))

(declare-fun lt!1543492 () Unit!68021)

(declare-fun call!300342 () Unit!68021)

(assert (=> b!4326126 (= lt!1543492 call!300342)))

(assert (=> b!4326126 (= lt!1543491 call!300346)))

(assert (=> b!4326126 (= lt!1543473 call!300356)))

(declare-fun call!300357 () Bool)

(assert (=> b!4326126 call!300357))

(declare-fun lt!1543489 () Unit!68021)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!72 (ListLongMap!1229 (_ BitVec 64) List!48567 K!9704 V!9906 Hashable!4699) Unit!68021)

(assert (=> b!4326126 (= lt!1543489 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!72 lt!1543461 lt!1543452 lt!1543471 key!2048 v!9179 (hashF!7005 thiss!42308)))))

(declare-fun e!2691831 () Bool)

(assert (=> b!4326126 e!2691831))

(declare-fun res!1772858 () Bool)

(assert (=> b!4326126 (=> (not res!1772858) (not e!2691831))))

(declare-fun call!300345 () Bool)

(assert (=> b!4326126 (= res!1772858 call!300345)))

(assert (=> b!4326126 (= lt!1543470 call!300336)))

(declare-fun lt!1543463 () Unit!68021)

(declare-fun call!300340 () Unit!68021)

(assert (=> b!4326126 (= lt!1543463 call!300340)))

(declare-fun e!2691832 () Bool)

(assert (=> b!4326126 e!2691832))

(declare-fun res!1772857 () Bool)

(assert (=> b!4326126 (=> (not res!1772857) (not e!2691832))))

(declare-fun noDuplicateKeys!271 (List!48567) Bool)

(assert (=> b!4326126 (= res!1772857 (noDuplicateKeys!271 lt!1543477))))

(declare-fun lt!1543479 () Unit!68021)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!200 (List!48567 K!9704) Unit!68021)

(assert (=> b!4326126 (= lt!1543479 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!200 lt!1543475 key!2048))))

(assert (=> b!4326126 call!300347))

(declare-fun lt!1543493 () Unit!68021)

(assert (=> b!4326126 (= lt!1543493 call!300332)))

(assert (=> b!4326126 call!300355))

(declare-fun lt!1543490 () Unit!68021)

(assert (=> b!4326126 (= lt!1543490 call!300354)))

(declare-fun Unit!68026 () Unit!68021)

(assert (=> b!4326126 (= e!2691828 Unit!68026)))

(declare-fun call!300348 () ListMap!1889)

(declare-fun call!300343 () ListMap!1889)

(declare-fun bm!300340 () Bool)

(declare-fun eq!169 (ListMap!1889 ListMap!1889) Bool)

(assert (=> bm!300340 (= call!300357 (eq!169 (ite c!736015 call!300344 call!300348) call!300343))))

(declare-fun b!4326127 () Bool)

(declare-fun res!1772848 () Bool)

(assert (=> b!4326127 (=> (not res!1772848) (not e!2691833))))

(assert (=> b!4326127 (= res!1772848 call!300334)))

(declare-fun b!4326128 () Bool)

(assert (=> b!4326128 (= e!2691831 call!300335)))

(declare-fun b!4326129 () Bool)

(declare-fun call!300333 () Bool)

(assert (=> b!4326129 (= e!2691833 call!300333)))

(declare-fun b!4326130 () Bool)

(assert (=> b!4326130 e!2691826))

(declare-fun res!1772851 () Bool)

(assert (=> b!4326130 (=> (not res!1772851) (not e!2691826))))

(declare-fun call!300339 () Bool)

(assert (=> b!4326130 (= res!1772851 call!300339)))

(declare-fun e!2691817 () Unit!68021)

(declare-fun Unit!68027 () Unit!68021)

(assert (=> b!4326130 (= e!2691817 Unit!68027)))

(declare-fun tp!1327752 () Bool)

(declare-fun tp!1327749 () Bool)

(declare-fun e!2691823 () Bool)

(declare-fun e!2691829 () Bool)

(declare-fun array_inv!5585 (array!17372) Bool)

(declare-fun array_inv!5586 (array!17374) Bool)

(assert (=> b!4326131 (= e!2691829 (and tp!1327750 tp!1327752 tp!1327749 (array_inv!5585 (_keys!5109 (v!42898 (underlying!9795 (v!42899 (underlying!9796 thiss!42308)))))) (array_inv!5586 (_values!5084 (v!42898 (underlying!9795 (v!42899 (underlying!9796 thiss!42308)))))) e!2691823))))

(declare-fun lt!1543467 () Cell!18943)

(declare-fun b!4326132 () Bool)

(declare-fun lt!1543459 () MutableMap!4689)

(declare-fun Unit!68028 () Unit!68021)

(declare-fun Unit!68029 () Unit!68021)

(assert (=> b!4326132 (= e!2691818 (tuple2!47389 (_1!26981 lt!1543460) (_2!26983 (ite (and (_1!26981 lt!1543460) (not lt!1543488)) (tuple2!47391 Unit!68028 (HashMap!4689 lt!1543467 (hashF!7005 thiss!42308) (bvadd (_size!9612 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4860 thiss!42308))) (tuple2!47391 Unit!68029 lt!1543459)))))))

(assert (=> b!4326132 (= lt!1543487 call!300350)))

(declare-fun c!736016 () Bool)

(declare-fun contains!10534 (MutLongMap!4783 (_ BitVec 64)) Bool)

(assert (=> b!4326132 (= c!736016 (contains!10534 (v!42899 (underlying!9796 thiss!42308)) lt!1543487))))

(assert (=> b!4326132 (= lt!1543453 e!2691825)))

(assert (=> b!4326132 (= lt!1543457 (tuple2!47383 key!2048 v!9179))))

(assert (=> b!4326132 (= lt!1543465 (Cons!48443 lt!1543457 lt!1543453))))

(assert (=> b!4326132 (= lt!1543460 call!300351)))

(assert (=> b!4326132 (= lt!1543467 (Cell!18944 (_2!26981 lt!1543460)))))

(assert (=> b!4326132 (= lt!1543459 (HashMap!4689 lt!1543467 (hashF!7005 thiss!42308) (_size!9612 thiss!42308) (defaultValue!4860 thiss!42308)))))

(declare-fun c!736018 () Bool)

(assert (=> b!4326132 (= c!736018 (_1!26981 lt!1543460))))

(declare-fun lt!1543464 () Unit!68021)

(assert (=> b!4326132 (= lt!1543464 e!2691817)))

(declare-fun bm!300341 () Bool)

(assert (=> bm!300341 (= call!300343 (+!373 (ite c!736015 call!300348 call!300344) (ite c!736015 lt!1543484 lt!1543457)))))

(declare-fun bm!300342 () Bool)

(declare-fun hash!1244 (Hashable!4699 K!9704) (_ BitVec 64))

(assert (=> bm!300342 (= call!300350 (hash!1244 (hashF!7005 thiss!42308) key!2048))))

(declare-fun b!4326133 () Bool)

(declare-fun e!2691820 () Bool)

(assert (=> b!4326133 (= e!2691820 call!300335)))

(declare-fun bm!300330 () Bool)

(assert (=> bm!300330 (= call!300333 (eq!169 (ite c!736015 lt!1543473 lt!1543458) (ite c!736015 lt!1543491 lt!1543466)))))

(declare-fun res!1772852 () Bool)

(assert (=> start!416620 (=> (not res!1772852) (not e!2691821))))

(assert (=> start!416620 (= res!1772852 ((_ is HashMap!4689) thiss!42308))))

(assert (=> start!416620 e!2691821))

(declare-fun e!2691827 () Bool)

(assert (=> start!416620 e!2691827))

(declare-fun tp_is_empty!24229 () Bool)

(assert (=> start!416620 tp_is_empty!24229))

(declare-fun tp_is_empty!24231 () Bool)

(assert (=> start!416620 tp_is_empty!24231))

(declare-fun mapIsEmpty!21309 () Bool)

(declare-fun mapRes!21309 () Bool)

(assert (=> mapIsEmpty!21309 mapRes!21309))

(declare-fun lt!1543454 () Bool)

(declare-fun lt!1543468 () Bool)

(assert (=> b!4326134 (and (= lt!1543454 lt!1543468) lt!1543468 lt!1543454)))

(assert (=> b!4326134 (= lt!1543468 call!300349)))

(assert (=> b!4326134 (= lt!1543454 call!300341)))

(declare-fun lt!1543476 () Unit!68021)

(assert (=> b!4326134 (= lt!1543476 call!300342)))

(assert (=> b!4326134 call!300333))

(assert (=> b!4326134 (= lt!1543466 call!300346)))

(assert (=> b!4326134 (= lt!1543458 call!300353)))

(assert (=> b!4326134 e!2691820))

(declare-fun res!1772850 () Bool)

(assert (=> b!4326134 (=> (not res!1772850) (not e!2691820))))

(assert (=> b!4326134 (= res!1772850 call!300345)))

(assert (=> b!4326134 (= lt!1543478 call!300331)))

(assert (=> b!4326134 call!300357))

(declare-fun lt!1543486 () Unit!68021)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!73 (ListLongMap!1229 (_ BitVec 64) List!48567 K!9704 V!9906 Hashable!4699) Unit!68021)

(assert (=> b!4326134 (= lt!1543486 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!73 lt!1543461 lt!1543487 lt!1543465 key!2048 v!9179 (hashF!7005 thiss!42308)))))

(assert (=> b!4326134 e!2691824))

(declare-fun res!1772853 () Bool)

(assert (=> b!4326134 (=> (not res!1772853) (not e!2691824))))

(assert (=> b!4326134 (= res!1772853 call!300338)))

(assert (=> b!4326134 (= lt!1543456 call!300336)))

(declare-fun lt!1543472 () Unit!68021)

(assert (=> b!4326134 (= lt!1543472 call!300340)))

(declare-fun lt!1543462 () Unit!68021)

(assert (=> b!4326134 (= lt!1543462 e!2691834)))

(declare-fun c!736019 () Bool)

(declare-fun isEmpty!28145 (List!48567) Bool)

(assert (=> b!4326134 (= c!736019 (not (isEmpty!28145 lt!1543453)))))

(declare-fun Unit!68030 () Unit!68021)

(assert (=> b!4326134 (= e!2691817 Unit!68030)))

(declare-fun b!4326135 () Bool)

(assert (=> b!4326135 (= e!2691832 (noDuplicateKeys!271 lt!1543471))))

(declare-fun b!4326136 () Bool)

(assert (=> b!4326136 (= e!2691815 e!2691829)))

(declare-fun mapNonEmpty!21309 () Bool)

(declare-fun tp!1327753 () Bool)

(declare-fun tp!1327747 () Bool)

(assert (=> mapNonEmpty!21309 (= mapRes!21309 (and tp!1327753 tp!1327747))))

(declare-fun mapKey!21309 () (_ BitVec 32))

(declare-fun mapRest!21309 () (Array (_ BitVec 32) List!48567))

(declare-fun mapValue!21309 () List!48567)

(assert (=> mapNonEmpty!21309 (= (arr!7752 (_values!5084 (v!42898 (underlying!9795 (v!42899 (underlying!9796 thiss!42308)))))) (store mapRest!21309 mapKey!21309 mapValue!21309))))

(declare-fun bm!300343 () Bool)

(assert (=> bm!300343 (= call!300355 (allKeysSameHash!267 (ite c!736015 lt!1543475 call!300352) (ite c!736015 lt!1543452 lt!1543487) (hashF!7005 thiss!42308)))))

(assert (=> b!4326137 (= e!2691827 (and e!2691816 tp!1327751))))

(declare-fun bm!300344 () Bool)

(declare-fun lemmaEquivalentThenSameContains!73 (ListMap!1889 ListMap!1889 K!9704) Unit!68021)

(assert (=> bm!300344 (= call!300342 (lemmaEquivalentThenSameContains!73 (ite c!736015 lt!1543473 lt!1543458) (ite c!736015 lt!1543491 lt!1543466) key!2048))))

(declare-fun bm!300345 () Bool)

(assert (=> bm!300345 (= call!300334 (allKeysSameHashInMap!411 (ite c!736015 lt!1543481 lt!1543456) (hashF!7005 thiss!42308)))))

(declare-fun bm!300346 () Bool)

(assert (=> bm!300346 (= call!300356 call!300330)))

(declare-fun bm!300347 () Bool)

(declare-fun valid!3800 (MutableMap!4689) Bool)

(assert (=> bm!300347 (= call!300339 (valid!3800 (ite c!736015 lt!1543451 lt!1543459)))))

(declare-fun bm!300348 () Bool)

(declare-fun update!563 (MutLongMap!4783 (_ BitVec 64) List!48567) tuple2!47386)

(assert (=> bm!300348 (= call!300351 (update!563 (v!42899 (underlying!9796 thiss!42308)) (ite c!736015 lt!1543452 lt!1543487) (ite c!736015 lt!1543471 lt!1543465)))))

(declare-fun bm!300349 () Bool)

(assert (=> bm!300349 (= call!300348 (extractMap!390 (ite c!736015 (toList!2612 lt!1543461) (toList!2612 lt!1543456))))))

(declare-fun bm!300350 () Bool)

(assert (=> bm!300350 (= call!300345 (forall!8844 (ite c!736015 (toList!2612 lt!1543470) (toList!2612 lt!1543478)) (ite c!736015 lambda!134349 lambda!134350)))))

(declare-fun b!4326138 () Bool)

(declare-fun tp!1327748 () Bool)

(assert (=> b!4326138 (= e!2691823 (and tp!1327748 mapRes!21309))))

(declare-fun condMapEmpty!21309 () Bool)

(declare-fun mapDefault!21309 () List!48567)

(assert (=> b!4326138 (= condMapEmpty!21309 (= (arr!7752 (_values!5084 (v!42898 (underlying!9795 (v!42899 (underlying!9796 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48567)) mapDefault!21309)))))

(declare-fun b!4326139 () Bool)

(assert (=> b!4326139 e!2691819))

(declare-fun res!1772855 () Bool)

(assert (=> b!4326139 (=> (not res!1772855) (not e!2691819))))

(assert (=> b!4326139 (= res!1772855 call!300339)))

(declare-fun Unit!68031 () Unit!68021)

(assert (=> b!4326139 (= e!2691828 Unit!68031)))

(declare-fun bm!300351 () Bool)

(assert (=> bm!300351 (= call!300330 (map!10486 (ite c!736015 lt!1543451 lt!1543459)))))

(declare-fun bm!300352 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!201 (ListLongMap!1229 (_ BitVec 64) List!48567 Hashable!4699) Unit!68021)

(assert (=> bm!300352 (= call!300340 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!201 lt!1543461 (ite c!736015 lt!1543452 lt!1543487) (ite c!736015 lt!1543471 lt!1543465) (hashF!7005 thiss!42308)))))

(declare-fun b!4326140 () Bool)

(declare-fun res!1772856 () Bool)

(assert (=> b!4326140 (=> (not res!1772856) (not e!2691821))))

(assert (=> b!4326140 (= res!1772856 (valid!3800 thiss!42308))))

(declare-fun b!4326141 () Bool)

(declare-fun res!1772854 () Bool)

(assert (=> b!4326141 (=> (not res!1772854) (not e!2691832))))

(declare-fun containsKey!423 (List!48567 K!9704) Bool)

(assert (=> b!4326141 (= res!1772854 (not (containsKey!423 lt!1543477 key!2048)))))

(assert (= (and start!416620 res!1772852) b!4326140))

(assert (= (and b!4326140 res!1772856) b!4326125))

(assert (= (and b!4326125 c!736015) b!4326123))

(assert (= (and b!4326125 (not c!736015)) b!4326132))

(assert (= (and b!4326123 c!736017) b!4326126))

(assert (= (and b!4326123 (not c!736017)) b!4326139))

(assert (= (and b!4326126 res!1772857) b!4326141))

(assert (= (and b!4326141 res!1772854) b!4326135))

(assert (= (and b!4326126 res!1772858) b!4326128))

(assert (= (and b!4326126 res!1772849) b!4326127))

(assert (= (and b!4326127 res!1772848) b!4326129))

(assert (= (and b!4326139 res!1772855) b!4326119))

(assert (= (or b!4326126 b!4326119) bm!300346))

(assert (= (and b!4326132 c!736016) b!4326116))

(assert (= (and b!4326132 (not c!736016)) b!4326115))

(assert (= (and b!4326132 c!736018) b!4326134))

(assert (= (and b!4326132 (not c!736018)) b!4326130))

(assert (= (and b!4326134 c!736019) b!4326124))

(assert (= (and b!4326134 (not c!736019)) b!4326122))

(assert (= (and b!4326134 res!1772853) b!4326117))

(assert (= (and b!4326134 res!1772850) b!4326133))

(assert (= (and b!4326130 res!1772851) b!4326120))

(assert (= (or b!4326134 b!4326120) bm!300337))

(assert (= (or b!4326123 b!4326124) bm!300339))

(assert (= (or b!4326139 b!4326130) bm!300347))

(assert (= (or b!4326126 b!4326124) bm!300335))

(assert (= (or bm!300346 bm!300337) bm!300351))

(assert (= (or b!4326126 b!4326134) bm!300332))

(assert (= (or b!4326123 b!4326132) bm!300348))

(assert (= (or b!4326126 b!4326134) bm!300333))

(assert (= (or b!4326126 b!4326134) bm!300331))

(assert (= (or b!4326126 b!4326134) bm!300326))

(assert (= (or b!4326126 b!4326134) bm!300349))

(assert (= (or b!4326126 b!4326134) bm!300327))

(assert (= (or b!4326127 b!4326117) bm!300345))

(assert (= (or b!4326126 b!4326134) bm!300352))

(assert (= (or b!4326126 b!4326134) bm!300344))

(assert (= (or b!4326128 b!4326133) bm!300325))

(assert (= (or b!4326123 b!4326116) bm!300338))

(assert (= (or b!4326126 b!4326124) bm!300336))

(assert (= (or b!4326126 b!4326134) bm!300350))

(assert (= (or b!4326129 b!4326134) bm!300330))

(assert (= (or b!4326126 b!4326134) bm!300328))

(assert (= (or b!4326123 b!4326132) bm!300342))

(assert (= (or b!4326126 b!4326134) bm!300334))

(assert (= (or b!4326126 b!4326124) bm!300329))

(assert (= (or b!4326126 b!4326124) bm!300343))

(assert (= (or b!4326126 b!4326134) bm!300341))

(assert (= (or b!4326126 b!4326134) bm!300340))

(assert (= (and b!4326138 condMapEmpty!21309) mapIsEmpty!21309))

(assert (= (and b!4326138 (not condMapEmpty!21309)) mapNonEmpty!21309))

(assert (= b!4326131 b!4326138))

(assert (= b!4326136 b!4326131))

(assert (= b!4326121 b!4326136))

(assert (= (and b!4326118 ((_ is LongMap!4783) (v!42899 (underlying!9796 thiss!42308)))) b!4326121))

(assert (= b!4326137 b!4326118))

(assert (= (and start!416620 ((_ is HashMap!4689) thiss!42308)) b!4326137))

(declare-fun m!4921101 () Bool)

(assert (=> b!4326132 m!4921101))

(declare-fun m!4921103 () Bool)

(assert (=> bm!300327 m!4921103))

(declare-fun m!4921105 () Bool)

(assert (=> b!4326141 m!4921105))

(declare-fun m!4921107 () Bool)

(assert (=> b!4326134 m!4921107))

(declare-fun m!4921109 () Bool)

(assert (=> b!4326134 m!4921109))

(declare-fun m!4921111 () Bool)

(assert (=> bm!300342 m!4921111))

(declare-fun m!4921113 () Bool)

(assert (=> b!4326125 m!4921113))

(declare-fun m!4921115 () Bool)

(assert (=> b!4326125 m!4921115))

(declare-fun m!4921117 () Bool)

(assert (=> b!4326125 m!4921117))

(declare-fun m!4921119 () Bool)

(assert (=> bm!300350 m!4921119))

(declare-fun m!4921121 () Bool)

(assert (=> b!4326126 m!4921121))

(declare-fun m!4921123 () Bool)

(assert (=> b!4326126 m!4921123))

(declare-fun m!4921125 () Bool)

(assert (=> b!4326126 m!4921125))

(declare-fun m!4921127 () Bool)

(assert (=> bm!300345 m!4921127))

(declare-fun m!4921129 () Bool)

(assert (=> bm!300335 m!4921129))

(declare-fun m!4921131 () Bool)

(assert (=> bm!300331 m!4921131))

(declare-fun m!4921133 () Bool)

(assert (=> bm!300328 m!4921133))

(declare-fun m!4921135 () Bool)

(assert (=> bm!300334 m!4921135))

(declare-fun m!4921137 () Bool)

(assert (=> bm!300343 m!4921137))

(declare-fun m!4921139 () Bool)

(assert (=> bm!300340 m!4921139))

(declare-fun m!4921141 () Bool)

(assert (=> bm!300330 m!4921141))

(declare-fun m!4921143 () Bool)

(assert (=> bm!300347 m!4921143))

(declare-fun m!4921145 () Bool)

(assert (=> mapNonEmpty!21309 m!4921145))

(declare-fun m!4921147 () Bool)

(assert (=> bm!300325 m!4921147))

(declare-fun m!4921149 () Bool)

(assert (=> bm!300348 m!4921149))

(declare-fun m!4921151 () Bool)

(assert (=> bm!300349 m!4921151))

(declare-fun m!4921153 () Bool)

(assert (=> bm!300336 m!4921153))

(declare-fun m!4921155 () Bool)

(assert (=> b!4326140 m!4921155))

(declare-fun m!4921157 () Bool)

(assert (=> b!4326131 m!4921157))

(declare-fun m!4921159 () Bool)

(assert (=> b!4326131 m!4921159))

(declare-fun m!4921161 () Bool)

(assert (=> bm!300333 m!4921161))

(declare-fun m!4921163 () Bool)

(assert (=> bm!300352 m!4921163))

(declare-fun m!4921165 () Bool)

(assert (=> bm!300332 m!4921165))

(declare-fun m!4921167 () Bool)

(assert (=> bm!300341 m!4921167))

(declare-fun m!4921169 () Bool)

(assert (=> bm!300351 m!4921169))

(declare-fun m!4921171 () Bool)

(assert (=> bm!300339 m!4921171))

(declare-fun m!4921173 () Bool)

(assert (=> bm!300326 m!4921173))

(declare-fun m!4921175 () Bool)

(assert (=> bm!300329 m!4921175))

(declare-fun m!4921177 () Bool)

(assert (=> b!4326135 m!4921177))

(declare-fun m!4921179 () Bool)

(assert (=> bm!300338 m!4921179))

(declare-fun m!4921181 () Bool)

(assert (=> bm!300344 m!4921181))

(check-sat (not bm!300332) (not bm!300344) (not b!4326138) (not bm!300334) (not bm!300329) (not b!4326140) (not bm!300336) (not b!4326131) (not bm!300348) (not b!4326126) (not b!4326132) (not bm!300330) (not b!4326135) (not bm!300343) b_and!340679 (not mapNonEmpty!21309) (not bm!300325) (not bm!300340) (not b!4326141) tp_is_empty!24231 (not bm!300345) b_and!340677 (not bm!300352) (not bm!300347) (not bm!300351) (not bm!300333) (not b_next!129797) (not bm!300327) (not bm!300349) tp_is_empty!24229 (not bm!300339) (not bm!300338) (not b!4326125) (not bm!300328) (not bm!300341) (not b_next!129795) (not bm!300326) (not bm!300342) (not bm!300350) (not bm!300335) (not b!4326134) (not bm!300331))
(check-sat b_and!340677 b_and!340679 (not b_next!129797) (not b_next!129795))
