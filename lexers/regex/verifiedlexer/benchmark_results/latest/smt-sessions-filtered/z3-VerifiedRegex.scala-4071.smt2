; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218470 () Bool)

(assert start!218470)

(declare-fun b!2242213 () Bool)

(declare-fun b_free!65145 () Bool)

(declare-fun b_next!65849 () Bool)

(assert (=> b!2242213 (= b_free!65145 (not b_next!65849))))

(declare-fun tp!707203 () Bool)

(declare-fun b_and!175173 () Bool)

(assert (=> b!2242213 (= tp!707203 b_and!175173)))

(declare-fun b!2242218 () Bool)

(declare-fun b_free!65147 () Bool)

(declare-fun b_next!65851 () Bool)

(assert (=> b!2242218 (= b_free!65147 (not b_next!65851))))

(declare-fun tp!707208 () Bool)

(declare-fun b_and!175175 () Bool)

(assert (=> b!2242218 (= tp!707208 b_and!175175)))

(declare-fun e!1433938 () Bool)

(declare-fun e!1433941 () Bool)

(assert (=> b!2242213 (= e!1433938 (and e!1433941 tp!707203))))

(declare-fun b!2242214 () Bool)

(declare-fun e!1433936 () Bool)

(declare-fun e!1433942 () Bool)

(assert (=> b!2242214 (= e!1433936 e!1433942)))

(declare-fun mapIsEmpty!14852 () Bool)

(declare-fun mapRes!14852 () Bool)

(assert (=> mapIsEmpty!14852 mapRes!14852))

(declare-fun b!2242215 () Bool)

(declare-fun res!958124 () Bool)

(declare-fun e!1433937 () Bool)

(assert (=> b!2242215 (=> (not res!958124) (not e!1433937))))

(declare-datatypes ((C!13212 0))(
  ( (C!13213 (val!7654 Int)) )
))
(declare-datatypes ((Regex!6533 0))(
  ( (ElementMatch!6533 (c!356964 C!13212)) (Concat!10871 (regOne!13578 Regex!6533) (regTwo!13578 Regex!6533)) (EmptyExpr!6533) (Star!6533 (reg!6862 Regex!6533)) (EmptyLang!6533) (Union!6533 (regOne!13579 Regex!6533) (regTwo!13579 Regex!6533)) )
))
(declare-datatypes ((List!26568 0))(
  ( (Nil!26474) (Cons!26474 (h!31875 Regex!6533) (t!200008 List!26568)) )
))
(declare-datatypes ((Context!4162 0))(
  ( (Context!4163 (exprs!2581 List!26568)) )
))
(declare-datatypes ((tuple2!25950 0))(
  ( (tuple2!25951 (_1!15485 Context!4162) (_2!15485 C!13212)) )
))
(declare-datatypes ((array!11110 0))(
  ( (array!11111 (arr!4929 (Array (_ BitVec 32) (_ BitVec 64))) (size!20710 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25952 0))(
  ( (tuple2!25953 (_1!15486 tuple2!25950) (_2!15486 (InoxSet Context!4162))) )
))
(declare-datatypes ((List!26569 0))(
  ( (Nil!26475) (Cons!26475 (h!31876 tuple2!25952) (t!200009 List!26569)) )
))
(declare-datatypes ((array!11112 0))(
  ( (array!11113 (arr!4930 (Array (_ BitVec 32) List!26569)) (size!20711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6342 0))(
  ( (LongMapFixedSize!6343 (defaultEntry!3536 Int) (mask!7791 (_ BitVec 32)) (extraKeys!3419 (_ BitVec 32)) (zeroValue!3429 List!26569) (minValue!3429 List!26569) (_size!6389 (_ BitVec 32)) (_keys!3468 array!11110) (_values!3451 array!11112) (_vacant!3232 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12501 0))(
  ( (Cell!12502 (v!30116 LongMapFixedSize!6342)) )
))
(declare-datatypes ((MutLongMap!3171 0))(
  ( (LongMap!3171 (underlying!6543 Cell!12501)) (MutLongMapExt!3170 (__x!17739 Int)) )
))
(declare-datatypes ((Cell!12503 0))(
  ( (Cell!12504 (v!30117 MutLongMap!3171)) )
))
(declare-datatypes ((Hashable!3081 0))(
  ( (HashableExt!3080 (__x!17740 Int)) )
))
(declare-datatypes ((MutableMap!3081 0))(
  ( (MutableMapExt!3080 (__x!17741 Int)) (HashMap!3081 (underlying!6544 Cell!12503) (hashF!5004 Hashable!3081) (_size!6390 (_ BitVec 32)) (defaultValue!3243 Int)) )
))
(declare-datatypes ((CacheUp!2032 0))(
  ( (CacheUp!2033 (cache!3462 MutableMap!3081)) )
))
(declare-fun thiss!28603 () CacheUp!2032)

(get-info :version)

(assert (=> b!2242215 (= res!958124 ((_ is HashMap!3081) (cache!3462 thiss!28603)))))

(declare-fun b!2242216 () Bool)

(declare-fun lambda!84891 () Int)

(declare-fun forall!5461 (List!26569 Int) Bool)

(declare-datatypes ((ListMap!891 0))(
  ( (ListMap!892 (toList!1404 List!26569)) )
))
(declare-fun map!5492 (MutableMap!3081) ListMap!891)

(assert (=> b!2242216 (= e!1433937 (not (forall!5461 (toList!1404 (map!5492 (cache!3462 thiss!28603))) lambda!84891)))))

(declare-fun b!2242217 () Bool)

(declare-fun e!1433940 () Bool)

(assert (=> b!2242217 (= e!1433940 e!1433936)))

(declare-fun tp!707202 () Bool)

(declare-fun tp!707207 () Bool)

(declare-fun e!1433943 () Bool)

(declare-fun array_inv!3541 (array!11110) Bool)

(declare-fun array_inv!3542 (array!11112) Bool)

(assert (=> b!2242218 (= e!1433942 (and tp!707208 tp!707207 tp!707202 (array_inv!3541 (_keys!3468 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) (array_inv!3542 (_values!3451 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) e!1433943))))

(declare-fun b!2242219 () Bool)

(declare-fun lt!834801 () MutLongMap!3171)

(assert (=> b!2242219 (= e!1433941 (and e!1433940 ((_ is LongMap!3171) lt!834801)))))

(assert (=> b!2242219 (= lt!834801 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))

(declare-fun b!2242220 () Bool)

(declare-fun res!958123 () Bool)

(assert (=> b!2242220 (=> (not res!958123) (not e!1433937))))

(declare-fun ctx!36 () Context!4162)

(declare-fun a!922 () C!13212)

(declare-fun contains!4528 (MutableMap!3081 tuple2!25950) Bool)

(assert (=> b!2242220 (= res!958123 (contains!4528 (cache!3462 thiss!28603) (tuple2!25951 ctx!36 a!922)))))

(declare-fun res!958122 () Bool)

(assert (=> start!218470 (=> (not res!958122) (not e!1433937))))

(declare-fun validCacheMapUp!311 (MutableMap!3081) Bool)

(assert (=> start!218470 (= res!958122 (validCacheMapUp!311 (cache!3462 thiss!28603)))))

(assert (=> start!218470 e!1433937))

(declare-fun e!1433934 () Bool)

(declare-fun inv!35951 (CacheUp!2032) Bool)

(assert (=> start!218470 (and (inv!35951 thiss!28603) e!1433934)))

(declare-fun e!1433939 () Bool)

(declare-fun inv!35952 (Context!4162) Bool)

(assert (=> start!218470 (and (inv!35952 ctx!36) e!1433939)))

(declare-fun tp_is_empty!10287 () Bool)

(assert (=> start!218470 tp_is_empty!10287))

(declare-fun mapNonEmpty!14852 () Bool)

(declare-fun tp!707205 () Bool)

(declare-fun tp!707206 () Bool)

(assert (=> mapNonEmpty!14852 (= mapRes!14852 (and tp!707205 tp!707206))))

(declare-fun mapRest!14852 () (Array (_ BitVec 32) List!26569))

(declare-fun mapValue!14852 () List!26569)

(declare-fun mapKey!14852 () (_ BitVec 32))

(assert (=> mapNonEmpty!14852 (= (arr!4930 (_values!3451 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) (store mapRest!14852 mapKey!14852 mapValue!14852))))

(declare-fun b!2242221 () Bool)

(declare-fun tp!707201 () Bool)

(assert (=> b!2242221 (= e!1433939 tp!707201)))

(declare-fun b!2242222 () Bool)

(declare-fun res!958121 () Bool)

(assert (=> b!2242222 (=> (not res!958121) (not e!1433937))))

(declare-fun valid!2384 (MutableMap!3081) Bool)

(assert (=> b!2242222 (= res!958121 (valid!2384 (cache!3462 thiss!28603)))))

(declare-fun b!2242223 () Bool)

(declare-fun tp!707204 () Bool)

(assert (=> b!2242223 (= e!1433943 (and tp!707204 mapRes!14852))))

(declare-fun condMapEmpty!14852 () Bool)

(declare-fun mapDefault!14852 () List!26569)

(assert (=> b!2242223 (= condMapEmpty!14852 (= (arr!4930 (_values!3451 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26569)) mapDefault!14852)))))

(declare-fun b!2242224 () Bool)

(assert (=> b!2242224 (= e!1433934 e!1433938)))

(assert (= (and start!218470 res!958122) b!2242220))

(assert (= (and b!2242220 res!958123) b!2242215))

(assert (= (and b!2242215 res!958124) b!2242222))

(assert (= (and b!2242222 res!958121) b!2242216))

(assert (= (and b!2242223 condMapEmpty!14852) mapIsEmpty!14852))

(assert (= (and b!2242223 (not condMapEmpty!14852)) mapNonEmpty!14852))

(assert (= b!2242218 b!2242223))

(assert (= b!2242214 b!2242218))

(assert (= b!2242217 b!2242214))

(assert (= (and b!2242219 ((_ is LongMap!3171) (v!30117 (underlying!6544 (cache!3462 thiss!28603))))) b!2242217))

(assert (= b!2242213 b!2242219))

(assert (= (and b!2242224 ((_ is HashMap!3081) (cache!3462 thiss!28603))) b!2242213))

(assert (= start!218470 b!2242224))

(assert (= start!218470 b!2242221))

(declare-fun m!2674376 () Bool)

(assert (=> b!2242218 m!2674376))

(declare-fun m!2674378 () Bool)

(assert (=> b!2242218 m!2674378))

(declare-fun m!2674380 () Bool)

(assert (=> b!2242220 m!2674380))

(declare-fun m!2674382 () Bool)

(assert (=> b!2242222 m!2674382))

(declare-fun m!2674384 () Bool)

(assert (=> b!2242216 m!2674384))

(declare-fun m!2674386 () Bool)

(assert (=> b!2242216 m!2674386))

(declare-fun m!2674388 () Bool)

(assert (=> start!218470 m!2674388))

(declare-fun m!2674390 () Bool)

(assert (=> start!218470 m!2674390))

(declare-fun m!2674392 () Bool)

(assert (=> start!218470 m!2674392))

(declare-fun m!2674394 () Bool)

(assert (=> mapNonEmpty!14852 m!2674394))

(check-sat (not b_next!65851) (not start!218470) (not b!2242222) b_and!175173 (not b!2242223) (not mapNonEmpty!14852) tp_is_empty!10287 (not b!2242221) (not b!2242220) (not b!2242218) b_and!175175 (not b_next!65849) (not b!2242216))
(check-sat b_and!175173 b_and!175175 (not b_next!65851) (not b_next!65849))
(get-model)

(declare-fun b!2242247 () Bool)

(declare-datatypes ((Unit!39467 0))(
  ( (Unit!39468) )
))
(declare-fun e!1433961 () Unit!39467)

(declare-fun Unit!39469 () Unit!39467)

(assert (=> b!2242247 (= e!1433961 Unit!39469)))

(declare-fun bm!135374 () Bool)

(declare-fun call!135381 () Bool)

(declare-datatypes ((Option!5177 0))(
  ( (None!5176) (Some!5176 (v!30118 tuple2!25952)) )
))
(declare-fun call!135383 () Option!5177)

(declare-fun isDefined!4179 (Option!5177) Bool)

(assert (=> bm!135374 (= call!135381 (isDefined!4179 call!135383))))

(declare-fun b!2242248 () Bool)

(declare-fun e!1433962 () Unit!39467)

(declare-fun Unit!39470 () Unit!39467)

(assert (=> b!2242248 (= e!1433962 Unit!39470)))

(declare-fun bm!135375 () Bool)

(declare-datatypes ((tuple2!25954 0))(
  ( (tuple2!25955 (_1!15487 (_ BitVec 64)) (_2!15487 List!26569)) )
))
(declare-datatypes ((List!26570 0))(
  ( (Nil!26476) (Cons!26476 (h!31877 tuple2!25954) (t!200010 List!26570)) )
))
(declare-datatypes ((ListLongMap!371 0))(
  ( (ListLongMap!372 (toList!1405 List!26570)) )
))
(declare-fun call!135382 () ListLongMap!371)

(declare-fun map!5493 (MutLongMap!3171) ListLongMap!371)

(assert (=> bm!135375 (= call!135382 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))

(declare-fun bm!135376 () Bool)

(declare-fun call!135384 () List!26569)

(declare-fun getPair!50 (List!26569 tuple2!25950) Option!5177)

(assert (=> bm!135376 (= call!135383 (getPair!50 call!135384 (tuple2!25951 ctx!36 a!922)))))

(declare-fun lt!834842 () Bool)

(declare-fun d!665900 () Bool)

(declare-fun contains!4529 (ListMap!891 tuple2!25950) Bool)

(assert (=> d!665900 (= lt!834842 (contains!4529 (map!5492 (cache!3462 thiss!28603)) (tuple2!25951 ctx!36 a!922)))))

(declare-fun e!1433964 () Bool)

(assert (=> d!665900 (= lt!834842 e!1433964)))

(declare-fun res!958132 () Bool)

(assert (=> d!665900 (=> (not res!958132) (not e!1433964))))

(declare-fun lt!834857 () (_ BitVec 64))

(declare-fun contains!4530 (MutLongMap!3171 (_ BitVec 64)) Bool)

(assert (=> d!665900 (= res!958132 (contains!4530 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857))))

(declare-fun lt!834854 () Unit!39467)

(declare-fun e!1433963 () Unit!39467)

(assert (=> d!665900 (= lt!834854 e!1433963)))

(declare-fun c!356974 () Bool)

(declare-fun extractMap!130 (List!26570) ListMap!891)

(assert (=> d!665900 (= c!356974 (contains!4529 (extractMap!130 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))) (tuple2!25951 ctx!36 a!922)))))

(declare-fun lt!834853 () Unit!39467)

(assert (=> d!665900 (= lt!834853 e!1433961)))

(declare-fun c!356973 () Bool)

(assert (=> d!665900 (= c!356973 (contains!4530 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857))))

(declare-fun hash!597 (Hashable!3081 tuple2!25950) (_ BitVec 64))

(assert (=> d!665900 (= lt!834857 (hash!597 (hashF!5004 (cache!3462 thiss!28603)) (tuple2!25951 ctx!36 a!922)))))

(assert (=> d!665900 (valid!2384 (cache!3462 thiss!28603))))

(assert (=> d!665900 (= (contains!4528 (cache!3462 thiss!28603) (tuple2!25951 ctx!36 a!922)) lt!834842)))

(declare-fun b!2242249 () Bool)

(declare-fun e!1433959 () Bool)

(assert (=> b!2242249 (= e!1433959 call!135381)))

(declare-fun b!2242250 () Bool)

(declare-fun apply!6540 (MutLongMap!3171 (_ BitVec 64)) List!26569)

(assert (=> b!2242250 (= e!1433964 (isDefined!4179 (getPair!50 (apply!6540 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857) (tuple2!25951 ctx!36 a!922))))))

(declare-fun bm!135377 () Bool)

(declare-fun lt!834855 () ListLongMap!371)

(declare-fun call!135380 () (_ BitVec 64))

(declare-fun apply!6541 (ListLongMap!371 (_ BitVec 64)) List!26569)

(assert (=> bm!135377 (= call!135384 (apply!6541 (ite c!356974 lt!834855 call!135382) call!135380))))

(declare-fun bm!135378 () Bool)

(declare-fun call!135379 () Bool)

(declare-fun contains!4531 (ListLongMap!371 (_ BitVec 64)) Bool)

(assert (=> bm!135378 (= call!135379 (contains!4531 (ite c!356974 lt!834855 call!135382) call!135380))))

(declare-fun bm!135379 () Bool)

(assert (=> bm!135379 (= call!135380 (hash!597 (hashF!5004 (cache!3462 thiss!28603)) (tuple2!25951 ctx!36 a!922)))))

(declare-fun b!2242251 () Bool)

(assert (=> b!2242251 false))

(declare-fun lt!834861 () Unit!39467)

(declare-fun lt!834848 () Unit!39467)

(assert (=> b!2242251 (= lt!834861 lt!834848)))

(declare-fun lt!834851 () List!26570)

(declare-fun lt!834860 () List!26569)

(declare-fun contains!4532 (List!26570 tuple2!25954) Bool)

(assert (=> b!2242251 (contains!4532 lt!834851 (tuple2!25955 lt!834857 lt!834860))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!51 (List!26570 (_ BitVec 64) List!26569) Unit!39467)

(assert (=> b!2242251 (= lt!834848 (lemmaGetValueByKeyImpliesContainsTuple!51 lt!834851 lt!834857 lt!834860))))

(assert (=> b!2242251 (= lt!834860 (apply!6540 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857))))

(assert (=> b!2242251 (= lt!834851 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))))

(declare-fun lt!834845 () Unit!39467)

(declare-fun lt!834859 () Unit!39467)

(assert (=> b!2242251 (= lt!834845 lt!834859)))

(declare-fun lt!834852 () List!26570)

(declare-datatypes ((Option!5178 0))(
  ( (None!5177) (Some!5177 (v!30119 List!26569)) )
))
(declare-fun isDefined!4180 (Option!5178) Bool)

(declare-fun getValueByKey!104 (List!26570 (_ BitVec 64)) Option!5178)

(assert (=> b!2242251 (isDefined!4180 (getValueByKey!104 lt!834852 lt!834857))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!68 (List!26570 (_ BitVec 64)) Unit!39467)

(assert (=> b!2242251 (= lt!834859 (lemmaContainsKeyImpliesGetValueByKeyDefined!68 lt!834852 lt!834857))))

(assert (=> b!2242251 (= lt!834852 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))))

(declare-fun lt!834844 () Unit!39467)

(declare-fun lt!834847 () Unit!39467)

(assert (=> b!2242251 (= lt!834844 lt!834847)))

(declare-fun lt!834846 () List!26570)

(declare-fun containsKey!99 (List!26570 (_ BitVec 64)) Bool)

(assert (=> b!2242251 (containsKey!99 lt!834846 lt!834857)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!51 (List!26570 (_ BitVec 64)) Unit!39467)

(assert (=> b!2242251 (= lt!834847 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!51 lt!834846 lt!834857))))

(assert (=> b!2242251 (= lt!834846 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))))

(declare-fun Unit!39471 () Unit!39467)

(assert (=> b!2242251 (= e!1433962 Unit!39471)))

(declare-fun b!2242252 () Bool)

(declare-fun e!1433960 () Unit!39467)

(declare-fun Unit!39472 () Unit!39467)

(assert (=> b!2242252 (= e!1433960 Unit!39472)))

(declare-fun b!2242253 () Bool)

(declare-fun lambda!84894 () Int)

(declare-fun forallContained!797 (List!26570 Int tuple2!25954) Unit!39467)

(assert (=> b!2242253 (= e!1433961 (forallContained!797 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))) lambda!84894 (tuple2!25955 lt!834857 (apply!6540 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857))))))

(declare-fun c!356975 () Bool)

(assert (=> b!2242253 (= c!356975 (not (contains!4532 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))) (tuple2!25955 lt!834857 (apply!6540 (v!30117 (underlying!6544 (cache!3462 thiss!28603))) lt!834857)))))))

(declare-fun lt!834858 () Unit!39467)

(assert (=> b!2242253 (= lt!834858 e!1433962)))

(declare-fun b!2242254 () Bool)

(assert (=> b!2242254 false))

(declare-fun lt!834849 () Unit!39467)

(declare-fun lt!834850 () Unit!39467)

(assert (=> b!2242254 (= lt!834849 lt!834850)))

(declare-fun lt!834856 () ListLongMap!371)

(assert (=> b!2242254 (contains!4529 (extractMap!130 (toList!1405 lt!834856)) (tuple2!25951 ctx!36 a!922))))

(declare-fun lemmaInLongMapThenInGenericMap!50 (ListLongMap!371 tuple2!25950 Hashable!3081) Unit!39467)

(assert (=> b!2242254 (= lt!834850 (lemmaInLongMapThenInGenericMap!50 lt!834856 (tuple2!25951 ctx!36 a!922) (hashF!5004 (cache!3462 thiss!28603))))))

(assert (=> b!2242254 (= lt!834856 call!135382)))

(declare-fun Unit!39473 () Unit!39467)

(assert (=> b!2242254 (= e!1433960 Unit!39473)))

(declare-fun b!2242255 () Bool)

(declare-fun e!1433958 () Bool)

(assert (=> b!2242255 (= e!1433958 call!135381)))

(declare-fun b!2242256 () Bool)

(assert (=> b!2242256 (= e!1433963 e!1433960)))

(declare-fun res!958131 () Bool)

(assert (=> b!2242256 (= res!958131 call!135379)))

(assert (=> b!2242256 (=> (not res!958131) (not e!1433958))))

(declare-fun c!356976 () Bool)

(assert (=> b!2242256 (= c!356976 e!1433958)))

(declare-fun b!2242257 () Bool)

(declare-fun lt!834843 () Unit!39467)

(assert (=> b!2242257 (= e!1433963 lt!834843)))

(assert (=> b!2242257 (= lt!834855 call!135382)))

(declare-fun lemmaInGenericMapThenInLongMap!50 (ListLongMap!371 tuple2!25950 Hashable!3081) Unit!39467)

(assert (=> b!2242257 (= lt!834843 (lemmaInGenericMapThenInLongMap!50 lt!834855 (tuple2!25951 ctx!36 a!922) (hashF!5004 (cache!3462 thiss!28603))))))

(declare-fun res!958133 () Bool)

(assert (=> b!2242257 (= res!958133 call!135379)))

(assert (=> b!2242257 (=> (not res!958133) (not e!1433959))))

(assert (=> b!2242257 e!1433959))

(assert (= (and d!665900 c!356973) b!2242253))

(assert (= (and d!665900 (not c!356973)) b!2242247))

(assert (= (and b!2242253 c!356975) b!2242251))

(assert (= (and b!2242253 (not c!356975)) b!2242248))

(assert (= (and d!665900 c!356974) b!2242257))

(assert (= (and d!665900 (not c!356974)) b!2242256))

(assert (= (and b!2242257 res!958133) b!2242249))

(assert (= (and b!2242256 res!958131) b!2242255))

(assert (= (and b!2242256 c!356976) b!2242254))

(assert (= (and b!2242256 (not c!356976)) b!2242252))

(assert (= (or b!2242257 b!2242249 b!2242256 b!2242255) bm!135379))

(assert (= (or b!2242257 b!2242256 b!2242255 b!2242254) bm!135375))

(assert (= (or b!2242257 b!2242256) bm!135378))

(assert (= (or b!2242249 b!2242255) bm!135377))

(assert (= (or b!2242249 b!2242255) bm!135376))

(assert (= (or b!2242249 b!2242255) bm!135374))

(assert (= (and d!665900 res!958132) b!2242250))

(declare-fun m!2674396 () Bool)

(assert (=> bm!135375 m!2674396))

(declare-fun m!2674398 () Bool)

(assert (=> b!2242257 m!2674398))

(declare-fun m!2674400 () Bool)

(assert (=> b!2242250 m!2674400))

(assert (=> b!2242250 m!2674400))

(declare-fun m!2674402 () Bool)

(assert (=> b!2242250 m!2674402))

(assert (=> b!2242250 m!2674402))

(declare-fun m!2674404 () Bool)

(assert (=> b!2242250 m!2674404))

(declare-fun m!2674406 () Bool)

(assert (=> b!2242251 m!2674406))

(declare-fun m!2674408 () Bool)

(assert (=> b!2242251 m!2674408))

(declare-fun m!2674410 () Bool)

(assert (=> b!2242251 m!2674410))

(declare-fun m!2674412 () Bool)

(assert (=> b!2242251 m!2674412))

(assert (=> b!2242251 m!2674412))

(declare-fun m!2674414 () Bool)

(assert (=> b!2242251 m!2674414))

(declare-fun m!2674416 () Bool)

(assert (=> b!2242251 m!2674416))

(assert (=> b!2242251 m!2674396))

(assert (=> b!2242251 m!2674400))

(declare-fun m!2674418 () Bool)

(assert (=> b!2242251 m!2674418))

(declare-fun m!2674420 () Bool)

(assert (=> d!665900 m!2674420))

(assert (=> d!665900 m!2674396))

(assert (=> d!665900 m!2674382))

(assert (=> d!665900 m!2674384))

(declare-fun m!2674422 () Bool)

(assert (=> d!665900 m!2674422))

(assert (=> d!665900 m!2674422))

(declare-fun m!2674424 () Bool)

(assert (=> d!665900 m!2674424))

(declare-fun m!2674426 () Bool)

(assert (=> d!665900 m!2674426))

(assert (=> d!665900 m!2674384))

(declare-fun m!2674428 () Bool)

(assert (=> d!665900 m!2674428))

(assert (=> b!2242253 m!2674396))

(assert (=> b!2242253 m!2674400))

(declare-fun m!2674430 () Bool)

(assert (=> b!2242253 m!2674430))

(declare-fun m!2674432 () Bool)

(assert (=> b!2242253 m!2674432))

(declare-fun m!2674434 () Bool)

(assert (=> b!2242254 m!2674434))

(assert (=> b!2242254 m!2674434))

(declare-fun m!2674436 () Bool)

(assert (=> b!2242254 m!2674436))

(declare-fun m!2674438 () Bool)

(assert (=> b!2242254 m!2674438))

(assert (=> bm!135379 m!2674426))

(declare-fun m!2674440 () Bool)

(assert (=> bm!135377 m!2674440))

(declare-fun m!2674442 () Bool)

(assert (=> bm!135378 m!2674442))

(declare-fun m!2674444 () Bool)

(assert (=> bm!135376 m!2674444))

(declare-fun m!2674446 () Bool)

(assert (=> bm!135374 m!2674446))

(assert (=> b!2242220 d!665900))

(declare-fun bs!454355 () Bool)

(declare-fun b!2242263 () Bool)

(assert (= bs!454355 (and b!2242263 b!2242216)))

(declare-fun lambda!84897 () Int)

(assert (=> bs!454355 (= lambda!84897 lambda!84891)))

(declare-fun d!665902 () Bool)

(declare-fun res!958138 () Bool)

(declare-fun e!1433967 () Bool)

(assert (=> d!665902 (=> (not res!958138) (not e!1433967))))

(assert (=> d!665902 (= res!958138 (valid!2384 (cache!3462 thiss!28603)))))

(assert (=> d!665902 (= (validCacheMapUp!311 (cache!3462 thiss!28603)) e!1433967)))

(declare-fun b!2242262 () Bool)

(declare-fun res!958139 () Bool)

(assert (=> b!2242262 (=> (not res!958139) (not e!1433967))))

(declare-fun invariantList!396 (List!26569) Bool)

(assert (=> b!2242262 (= res!958139 (invariantList!396 (toList!1404 (map!5492 (cache!3462 thiss!28603)))))))

(assert (=> b!2242263 (= e!1433967 (forall!5461 (toList!1404 (map!5492 (cache!3462 thiss!28603))) lambda!84897))))

(assert (= (and d!665902 res!958138) b!2242262))

(assert (= (and b!2242262 res!958139) b!2242263))

(assert (=> d!665902 m!2674382))

(assert (=> b!2242262 m!2674384))

(declare-fun m!2674449 () Bool)

(assert (=> b!2242262 m!2674449))

(assert (=> b!2242263 m!2674384))

(declare-fun m!2674451 () Bool)

(assert (=> b!2242263 m!2674451))

(assert (=> start!218470 d!665902))

(declare-fun d!665904 () Bool)

(declare-fun res!958142 () Bool)

(declare-fun e!1433970 () Bool)

(assert (=> d!665904 (=> (not res!958142) (not e!1433970))))

(assert (=> d!665904 (= res!958142 ((_ is HashMap!3081) (cache!3462 thiss!28603)))))

(assert (=> d!665904 (= (inv!35951 thiss!28603) e!1433970)))

(declare-fun b!2242266 () Bool)

(assert (=> b!2242266 (= e!1433970 (validCacheMapUp!311 (cache!3462 thiss!28603)))))

(assert (= (and d!665904 res!958142) b!2242266))

(assert (=> b!2242266 m!2674388))

(assert (=> start!218470 d!665904))

(declare-fun d!665906 () Bool)

(declare-fun lambda!84900 () Int)

(declare-fun forall!5462 (List!26568 Int) Bool)

(assert (=> d!665906 (= (inv!35952 ctx!36) (forall!5462 (exprs!2581 ctx!36) lambda!84900))))

(declare-fun bs!454356 () Bool)

(assert (= bs!454356 d!665906))

(declare-fun m!2674453 () Bool)

(assert (=> bs!454356 m!2674453))

(assert (=> start!218470 d!665906))

(declare-fun bs!454357 () Bool)

(declare-fun b!2242271 () Bool)

(assert (= bs!454357 (and b!2242271 b!2242253)))

(declare-fun lambda!84903 () Int)

(assert (=> bs!454357 (= lambda!84903 lambda!84894)))

(declare-fun d!665908 () Bool)

(declare-fun res!958147 () Bool)

(declare-fun e!1433973 () Bool)

(assert (=> d!665908 (=> (not res!958147) (not e!1433973))))

(declare-fun valid!2385 (MutLongMap!3171) Bool)

(assert (=> d!665908 (= res!958147 (valid!2385 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))

(assert (=> d!665908 (= (valid!2384 (cache!3462 thiss!28603)) e!1433973)))

(declare-fun res!958148 () Bool)

(assert (=> b!2242271 (=> (not res!958148) (not e!1433973))))

(declare-fun forall!5463 (List!26570 Int) Bool)

(assert (=> b!2242271 (= res!958148 (forall!5463 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))) lambda!84903))))

(declare-fun b!2242272 () Bool)

(declare-fun allKeysSameHashInMap!119 (ListLongMap!371 Hashable!3081) Bool)

(assert (=> b!2242272 (= e!1433973 (allKeysSameHashInMap!119 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))) (hashF!5004 (cache!3462 thiss!28603))))))

(assert (= (and d!665908 res!958147) b!2242271))

(assert (= (and b!2242271 res!958148) b!2242272))

(declare-fun m!2674455 () Bool)

(assert (=> d!665908 m!2674455))

(assert (=> b!2242271 m!2674396))

(declare-fun m!2674457 () Bool)

(assert (=> b!2242271 m!2674457))

(assert (=> b!2242272 m!2674396))

(assert (=> b!2242272 m!2674396))

(declare-fun m!2674459 () Bool)

(assert (=> b!2242272 m!2674459))

(assert (=> b!2242222 d!665908))

(declare-fun d!665910 () Bool)

(assert (=> d!665910 (= (array_inv!3541 (_keys!3468 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) (bvsge (size!20710 (_keys!3468 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2242218 d!665910))

(declare-fun d!665912 () Bool)

(assert (=> d!665912 (= (array_inv!3542 (_values!3451 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) (bvsge (size!20711 (_values!3451 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2242218 d!665912))

(declare-fun d!665914 () Bool)

(declare-fun res!958153 () Bool)

(declare-fun e!1433978 () Bool)

(assert (=> d!665914 (=> res!958153 e!1433978)))

(assert (=> d!665914 (= res!958153 ((_ is Nil!26475) (toList!1404 (map!5492 (cache!3462 thiss!28603)))))))

(assert (=> d!665914 (= (forall!5461 (toList!1404 (map!5492 (cache!3462 thiss!28603))) lambda!84891) e!1433978)))

(declare-fun b!2242277 () Bool)

(declare-fun e!1433979 () Bool)

(assert (=> b!2242277 (= e!1433978 e!1433979)))

(declare-fun res!958154 () Bool)

(assert (=> b!2242277 (=> (not res!958154) (not e!1433979))))

(declare-fun dynLambda!11547 (Int tuple2!25952) Bool)

(assert (=> b!2242277 (= res!958154 (dynLambda!11547 lambda!84891 (h!31876 (toList!1404 (map!5492 (cache!3462 thiss!28603))))))))

(declare-fun b!2242278 () Bool)

(assert (=> b!2242278 (= e!1433979 (forall!5461 (t!200009 (toList!1404 (map!5492 (cache!3462 thiss!28603)))) lambda!84891))))

(assert (= (and d!665914 (not res!958153)) b!2242277))

(assert (= (and b!2242277 res!958154) b!2242278))

(declare-fun b_lambda!71797 () Bool)

(assert (=> (not b_lambda!71797) (not b!2242277)))

(declare-fun m!2674461 () Bool)

(assert (=> b!2242277 m!2674461))

(declare-fun m!2674463 () Bool)

(assert (=> b!2242278 m!2674463))

(assert (=> b!2242216 d!665914))

(declare-fun d!665916 () Bool)

(declare-fun lt!834864 () ListMap!891)

(assert (=> d!665916 (invariantList!396 (toList!1404 lt!834864))))

(assert (=> d!665916 (= lt!834864 (extractMap!130 (toList!1405 (map!5493 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))))

(assert (=> d!665916 (valid!2384 (cache!3462 thiss!28603))))

(assert (=> d!665916 (= (map!5492 (cache!3462 thiss!28603)) lt!834864)))

(declare-fun bs!454358 () Bool)

(assert (= bs!454358 d!665916))

(declare-fun m!2674465 () Bool)

(assert (=> bs!454358 m!2674465))

(assert (=> bs!454358 m!2674396))

(assert (=> bs!454358 m!2674422))

(assert (=> bs!454358 m!2674382))

(assert (=> b!2242216 d!665916))

(declare-fun b!2242293 () Bool)

(declare-fun e!1433995 () Bool)

(declare-fun tp!707229 () Bool)

(assert (=> b!2242293 (= e!1433995 tp!707229)))

(declare-fun b!2242294 () Bool)

(declare-fun e!1433993 () Bool)

(declare-fun tp!707230 () Bool)

(assert (=> b!2242294 (= e!1433993 tp!707230)))

(declare-fun mapNonEmpty!14855 () Bool)

(declare-fun mapRes!14855 () Bool)

(declare-fun tp!707232 () Bool)

(declare-fun e!1433997 () Bool)

(assert (=> mapNonEmpty!14855 (= mapRes!14855 (and tp!707232 e!1433997))))

(declare-fun mapValue!14855 () List!26569)

(declare-fun mapKey!14855 () (_ BitVec 32))

(declare-fun mapRest!14855 () (Array (_ BitVec 32) List!26569))

(assert (=> mapNonEmpty!14855 (= mapRest!14852 (store mapRest!14855 mapKey!14855 mapValue!14855))))

(declare-fun b!2242295 () Bool)

(declare-fun e!1433994 () Bool)

(declare-fun tp!707235 () Bool)

(assert (=> b!2242295 (= e!1433994 tp!707235)))

(declare-fun tp!707231 () Bool)

(declare-fun setNonEmpty!20676 () Bool)

(declare-fun setRes!20677 () Bool)

(declare-fun setElem!20677 () Context!4162)

(assert (=> setNonEmpty!20676 (= setRes!20677 (and tp!707231 (inv!35952 setElem!20677) e!1433995))))

(declare-fun mapDefault!14855 () List!26569)

(declare-fun setRest!20676 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20676 (= (_2!15486 (h!31876 mapDefault!14855)) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20677 true) setRest!20676))))

(declare-fun tp!707234 () Bool)

(declare-fun setNonEmpty!20677 () Bool)

(declare-fun setRes!20676 () Bool)

(declare-fun setElem!20676 () Context!4162)

(assert (=> setNonEmpty!20677 (= setRes!20676 (and tp!707234 (inv!35952 setElem!20676) e!1433994))))

(declare-fun setRest!20677 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20677 (= (_2!15486 (h!31876 mapValue!14855)) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20676 true) setRest!20677))))

(declare-fun b!2242296 () Bool)

(declare-fun e!1433992 () Bool)

(declare-fun tp!707228 () Bool)

(assert (=> b!2242296 (= e!1433992 tp!707228)))

(declare-fun mapIsEmpty!14855 () Bool)

(assert (=> mapIsEmpty!14855 mapRes!14855))

(declare-fun b!2242297 () Bool)

(declare-fun tp!707227 () Bool)

(assert (=> b!2242297 (= e!1433997 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 mapValue!14855)))) e!1433992 tp_is_empty!10287 setRes!20676 tp!707227))))

(declare-fun condSetEmpty!20676 () Bool)

(assert (=> b!2242297 (= condSetEmpty!20676 (= (_2!15486 (h!31876 mapValue!14855)) ((as const (Array Context!4162 Bool)) false)))))

(declare-fun setIsEmpty!20676 () Bool)

(assert (=> setIsEmpty!20676 setRes!20677))

(declare-fun setIsEmpty!20677 () Bool)

(assert (=> setIsEmpty!20677 setRes!20676))

(declare-fun condMapEmpty!14855 () Bool)

(assert (=> mapNonEmpty!14852 (= condMapEmpty!14855 (= mapRest!14852 ((as const (Array (_ BitVec 32) List!26569)) mapDefault!14855)))))

(declare-fun e!1433996 () Bool)

(assert (=> mapNonEmpty!14852 (= tp!707205 (and e!1433996 mapRes!14855))))

(declare-fun b!2242298 () Bool)

(declare-fun tp!707233 () Bool)

(assert (=> b!2242298 (= e!1433996 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 mapDefault!14855)))) e!1433993 tp_is_empty!10287 setRes!20677 tp!707233))))

(declare-fun condSetEmpty!20677 () Bool)

(assert (=> b!2242298 (= condSetEmpty!20677 (= (_2!15486 (h!31876 mapDefault!14855)) ((as const (Array Context!4162 Bool)) false)))))

(assert (= (and mapNonEmpty!14852 condMapEmpty!14855) mapIsEmpty!14855))

(assert (= (and mapNonEmpty!14852 (not condMapEmpty!14855)) mapNonEmpty!14855))

(assert (= b!2242297 b!2242296))

(assert (= (and b!2242297 condSetEmpty!20676) setIsEmpty!20677))

(assert (= (and b!2242297 (not condSetEmpty!20676)) setNonEmpty!20677))

(assert (= setNonEmpty!20677 b!2242295))

(assert (= (and mapNonEmpty!14855 ((_ is Cons!26475) mapValue!14855)) b!2242297))

(assert (= b!2242298 b!2242294))

(assert (= (and b!2242298 condSetEmpty!20677) setIsEmpty!20676))

(assert (= (and b!2242298 (not condSetEmpty!20677)) setNonEmpty!20676))

(assert (= setNonEmpty!20676 b!2242293))

(assert (= (and mapNonEmpty!14852 ((_ is Cons!26475) mapDefault!14855)) b!2242298))

(declare-fun m!2674467 () Bool)

(assert (=> setNonEmpty!20676 m!2674467))

(declare-fun m!2674469 () Bool)

(assert (=> setNonEmpty!20677 m!2674469))

(declare-fun m!2674471 () Bool)

(assert (=> b!2242297 m!2674471))

(declare-fun m!2674473 () Bool)

(assert (=> b!2242298 m!2674473))

(declare-fun m!2674475 () Bool)

(assert (=> mapNonEmpty!14855 m!2674475))

(declare-fun e!1434005 () Bool)

(assert (=> mapNonEmpty!14852 (= tp!707206 e!1434005)))

(declare-fun b!2242307 () Bool)

(declare-fun e!1434006 () Bool)

(declare-fun tp!707246 () Bool)

(assert (=> b!2242307 (= e!1434006 tp!707246)))

(declare-fun b!2242308 () Bool)

(declare-fun e!1434004 () Bool)

(declare-fun tp!707245 () Bool)

(assert (=> b!2242308 (= e!1434004 tp!707245)))

(declare-fun setIsEmpty!20680 () Bool)

(declare-fun setRes!20680 () Bool)

(assert (=> setIsEmpty!20680 setRes!20680))

(declare-fun tp!707244 () Bool)

(declare-fun setElem!20680 () Context!4162)

(declare-fun setNonEmpty!20680 () Bool)

(assert (=> setNonEmpty!20680 (= setRes!20680 (and tp!707244 (inv!35952 setElem!20680) e!1434006))))

(declare-fun setRest!20680 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20680 (= (_2!15486 (h!31876 mapValue!14852)) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20680 true) setRest!20680))))

(declare-fun b!2242309 () Bool)

(declare-fun tp!707247 () Bool)

(assert (=> b!2242309 (= e!1434005 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 mapValue!14852)))) e!1434004 tp_is_empty!10287 setRes!20680 tp!707247))))

(declare-fun condSetEmpty!20680 () Bool)

(assert (=> b!2242309 (= condSetEmpty!20680 (= (_2!15486 (h!31876 mapValue!14852)) ((as const (Array Context!4162 Bool)) false)))))

(assert (= b!2242309 b!2242308))

(assert (= (and b!2242309 condSetEmpty!20680) setIsEmpty!20680))

(assert (= (and b!2242309 (not condSetEmpty!20680)) setNonEmpty!20680))

(assert (= setNonEmpty!20680 b!2242307))

(assert (= (and mapNonEmpty!14852 ((_ is Cons!26475) mapValue!14852)) b!2242309))

(declare-fun m!2674477 () Bool)

(assert (=> setNonEmpty!20680 m!2674477))

(declare-fun m!2674479 () Bool)

(assert (=> b!2242309 m!2674479))

(declare-fun e!1434008 () Bool)

(assert (=> b!2242223 (= tp!707204 e!1434008)))

(declare-fun b!2242310 () Bool)

(declare-fun e!1434009 () Bool)

(declare-fun tp!707250 () Bool)

(assert (=> b!2242310 (= e!1434009 tp!707250)))

(declare-fun b!2242311 () Bool)

(declare-fun e!1434007 () Bool)

(declare-fun tp!707249 () Bool)

(assert (=> b!2242311 (= e!1434007 tp!707249)))

(declare-fun setIsEmpty!20681 () Bool)

(declare-fun setRes!20681 () Bool)

(assert (=> setIsEmpty!20681 setRes!20681))

(declare-fun setElem!20681 () Context!4162)

(declare-fun tp!707248 () Bool)

(declare-fun setNonEmpty!20681 () Bool)

(assert (=> setNonEmpty!20681 (= setRes!20681 (and tp!707248 (inv!35952 setElem!20681) e!1434009))))

(declare-fun setRest!20681 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20681 (= (_2!15486 (h!31876 mapDefault!14852)) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20681 true) setRest!20681))))

(declare-fun tp!707251 () Bool)

(declare-fun b!2242312 () Bool)

(assert (=> b!2242312 (= e!1434008 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 mapDefault!14852)))) e!1434007 tp_is_empty!10287 setRes!20681 tp!707251))))

(declare-fun condSetEmpty!20681 () Bool)

(assert (=> b!2242312 (= condSetEmpty!20681 (= (_2!15486 (h!31876 mapDefault!14852)) ((as const (Array Context!4162 Bool)) false)))))

(assert (= b!2242312 b!2242311))

(assert (= (and b!2242312 condSetEmpty!20681) setIsEmpty!20681))

(assert (= (and b!2242312 (not condSetEmpty!20681)) setNonEmpty!20681))

(assert (= setNonEmpty!20681 b!2242310))

(assert (= (and b!2242223 ((_ is Cons!26475) mapDefault!14852)) b!2242312))

(declare-fun m!2674481 () Bool)

(assert (=> setNonEmpty!20681 m!2674481))

(declare-fun m!2674483 () Bool)

(assert (=> b!2242312 m!2674483))

(declare-fun e!1434011 () Bool)

(assert (=> b!2242218 (= tp!707207 e!1434011)))

(declare-fun b!2242313 () Bool)

(declare-fun e!1434012 () Bool)

(declare-fun tp!707254 () Bool)

(assert (=> b!2242313 (= e!1434012 tp!707254)))

(declare-fun b!2242314 () Bool)

(declare-fun e!1434010 () Bool)

(declare-fun tp!707253 () Bool)

(assert (=> b!2242314 (= e!1434010 tp!707253)))

(declare-fun setIsEmpty!20682 () Bool)

(declare-fun setRes!20682 () Bool)

(assert (=> setIsEmpty!20682 setRes!20682))

(declare-fun tp!707252 () Bool)

(declare-fun setNonEmpty!20682 () Bool)

(declare-fun setElem!20682 () Context!4162)

(assert (=> setNonEmpty!20682 (= setRes!20682 (and tp!707252 (inv!35952 setElem!20682) e!1434012))))

(declare-fun setRest!20682 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20682 (= (_2!15486 (h!31876 (zeroValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20682 true) setRest!20682))))

(declare-fun tp!707255 () Bool)

(declare-fun b!2242315 () Bool)

(assert (=> b!2242315 (= e!1434011 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 (zeroValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))))) e!1434010 tp_is_empty!10287 setRes!20682 tp!707255))))

(declare-fun condSetEmpty!20682 () Bool)

(assert (=> b!2242315 (= condSetEmpty!20682 (= (_2!15486 (h!31876 (zeroValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) ((as const (Array Context!4162 Bool)) false)))))

(assert (= b!2242315 b!2242314))

(assert (= (and b!2242315 condSetEmpty!20682) setIsEmpty!20682))

(assert (= (and b!2242315 (not condSetEmpty!20682)) setNonEmpty!20682))

(assert (= setNonEmpty!20682 b!2242313))

(assert (= (and b!2242218 ((_ is Cons!26475) (zeroValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) b!2242315))

(declare-fun m!2674485 () Bool)

(assert (=> setNonEmpty!20682 m!2674485))

(declare-fun m!2674487 () Bool)

(assert (=> b!2242315 m!2674487))

(declare-fun e!1434014 () Bool)

(assert (=> b!2242218 (= tp!707202 e!1434014)))

(declare-fun b!2242316 () Bool)

(declare-fun e!1434015 () Bool)

(declare-fun tp!707258 () Bool)

(assert (=> b!2242316 (= e!1434015 tp!707258)))

(declare-fun b!2242317 () Bool)

(declare-fun e!1434013 () Bool)

(declare-fun tp!707257 () Bool)

(assert (=> b!2242317 (= e!1434013 tp!707257)))

(declare-fun setIsEmpty!20683 () Bool)

(declare-fun setRes!20683 () Bool)

(assert (=> setIsEmpty!20683 setRes!20683))

(declare-fun setElem!20683 () Context!4162)

(declare-fun setNonEmpty!20683 () Bool)

(declare-fun tp!707256 () Bool)

(assert (=> setNonEmpty!20683 (= setRes!20683 (and tp!707256 (inv!35952 setElem!20683) e!1434015))))

(declare-fun setRest!20683 () (InoxSet Context!4162))

(assert (=> setNonEmpty!20683 (= (_2!15486 (h!31876 (minValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4162 Bool)) false) setElem!20683 true) setRest!20683))))

(declare-fun tp!707259 () Bool)

(declare-fun b!2242318 () Bool)

(assert (=> b!2242318 (= e!1434014 (and (inv!35952 (_1!15485 (_1!15486 (h!31876 (minValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))))) e!1434013 tp_is_empty!10287 setRes!20683 tp!707259))))

(declare-fun condSetEmpty!20683 () Bool)

(assert (=> b!2242318 (= condSetEmpty!20683 (= (_2!15486 (h!31876 (minValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) ((as const (Array Context!4162 Bool)) false)))))

(assert (= b!2242318 b!2242317))

(assert (= (and b!2242318 condSetEmpty!20683) setIsEmpty!20683))

(assert (= (and b!2242318 (not condSetEmpty!20683)) setNonEmpty!20683))

(assert (= setNonEmpty!20683 b!2242316))

(assert (= (and b!2242218 ((_ is Cons!26475) (minValue!3429 (v!30116 (underlying!6543 (v!30117 (underlying!6544 (cache!3462 thiss!28603)))))))) b!2242318))

(declare-fun m!2674489 () Bool)

(assert (=> setNonEmpty!20683 m!2674489))

(declare-fun m!2674491 () Bool)

(assert (=> b!2242318 m!2674491))

(declare-fun b!2242323 () Bool)

(declare-fun e!1434018 () Bool)

(declare-fun tp!707264 () Bool)

(declare-fun tp!707265 () Bool)

(assert (=> b!2242323 (= e!1434018 (and tp!707264 tp!707265))))

(assert (=> b!2242221 (= tp!707201 e!1434018)))

(assert (= (and b!2242221 ((_ is Cons!26474) (exprs!2581 ctx!36))) b!2242323))

(declare-fun b_lambda!71799 () Bool)

(assert (= b_lambda!71797 (or b!2242216 b_lambda!71799)))

(declare-fun bs!454359 () Bool)

(declare-fun d!665918 () Bool)

(assert (= bs!454359 (and d!665918 b!2242216)))

(declare-fun derivationStepZipperUp!49 (Context!4162 C!13212) (InoxSet Context!4162))

(assert (=> bs!454359 (= (dynLambda!11547 lambda!84891 (h!31876 (toList!1404 (map!5492 (cache!3462 thiss!28603))))) (= (_2!15486 (h!31876 (toList!1404 (map!5492 (cache!3462 thiss!28603))))) (derivationStepZipperUp!49 (_1!15485 (_1!15486 (h!31876 (toList!1404 (map!5492 (cache!3462 thiss!28603)))))) (_2!15485 (_1!15486 (h!31876 (toList!1404 (map!5492 (cache!3462 thiss!28603)))))))))))

(declare-fun m!2674493 () Bool)

(assert (=> bs!454359 m!2674493))

(assert (=> b!2242277 d!665918))

(check-sat (not b!2242278) (not setNonEmpty!20676) (not b!2242317) (not setNonEmpty!20682) (not b_lambda!71799) tp_is_empty!10287 (not b!2242309) (not b!2242318) (not b_next!65851) (not b!2242296) (not setNonEmpty!20677) (not setNonEmpty!20680) (not setNonEmpty!20683) (not d!665908) (not b!2242311) (not bm!135377) (not b!2242254) (not b!2242323) b_and!175175 (not b!2242310) (not b_next!65849) (not b!2242308) (not b!2242272) (not mapNonEmpty!14855) (not bm!135376) (not b!2242251) (not d!665900) (not b!2242312) (not b!2242257) b_and!175173 (not b!2242316) (not b!2242293) (not b!2242294) (not b!2242295) (not b!2242307) (not b!2242314) (not b!2242315) (not b!2242253) (not bm!135375) (not b!2242263) (not b!2242250) (not bm!135379) (not b!2242262) (not b!2242313) (not setNonEmpty!20681) (not b!2242266) (not d!665916) (not bm!135378) (not bm!135374) (not bs!454359) (not b!2242271) (not d!665902) (not b!2242297) (not d!665906) (not b!2242298))
(check-sat b_and!175173 b_and!175175 (not b_next!65851) (not b_next!65849))
