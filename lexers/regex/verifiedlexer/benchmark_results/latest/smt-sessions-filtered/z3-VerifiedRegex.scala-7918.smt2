; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412820 () Bool)

(assert start!412820)

(declare-fun b!4299581 () Bool)

(declare-fun b_free!128001 () Bool)

(declare-fun b_next!128705 () Bool)

(assert (=> b!4299581 (= b_free!128001 (not b_next!128705))))

(declare-fun tp!1320950 () Bool)

(declare-fun b_and!339315 () Bool)

(assert (=> b!4299581 (= tp!1320950 b_and!339315)))

(declare-fun b_free!128003 () Bool)

(declare-fun b_next!128707 () Bool)

(assert (=> start!412820 (= b_free!128003 (not b_next!128707))))

(declare-fun tp!1320953 () Bool)

(declare-fun b_and!339317 () Bool)

(assert (=> start!412820 (= tp!1320953 b_and!339317)))

(declare-fun b!4299577 () Bool)

(declare-fun b_free!128005 () Bool)

(declare-fun b_next!128709 () Bool)

(assert (=> b!4299577 (= b_free!128005 (not b_next!128709))))

(declare-fun tp!1320954 () Bool)

(declare-fun b_and!339319 () Bool)

(assert (=> b!4299577 (= tp!1320954 b_and!339319)))

(declare-fun b!4299573 () Bool)

(declare-fun e!2672465 () Bool)

(declare-fun e!2672460 () Bool)

(assert (=> b!4299573 (= e!2672465 e!2672460)))

(declare-fun res!1762196 () Bool)

(assert (=> b!4299573 (=> (not res!1762196) (not e!2672460))))

(declare-fun p!6034 () Int)

(declare-datatypes ((K!9039 0))(
  ( (K!9040 (val!15489 Int)) )
))
(declare-datatypes ((V!9241 0))(
  ( (V!9242 (val!15490 Int)) )
))
(declare-datatypes ((tuple2!45866 0))(
  ( (tuple2!45867 (_1!26212 K!9039) (_2!26212 V!9241)) )
))
(declare-fun lt!1521467 () tuple2!45866)

(declare-fun dynLambda!20356 (Int tuple2!45866) Bool)

(assert (=> b!4299573 (= res!1762196 (dynLambda!20356 p!6034 lt!1521467))))

(declare-fun k0!1716 () K!9039)

(declare-fun v!9471 () V!9241)

(assert (=> b!4299573 (= lt!1521467 (tuple2!45867 k0!1716 v!9471))))

(declare-fun mapNonEmpty!20289 () Bool)

(declare-fun mapRes!20289 () Bool)

(declare-fun tp!1320949 () Bool)

(declare-fun tp!1320955 () Bool)

(assert (=> mapNonEmpty!20289 (= mapRes!20289 (and tp!1320949 tp!1320955))))

(declare-datatypes ((List!48056 0))(
  ( (Nil!47932) (Cons!47932 (h!53352 tuple2!45866) (t!354763 List!48056)) )
))
(declare-datatypes ((array!16168 0))(
  ( (array!16169 (arr!7219 (Array (_ BitVec 32) (_ BitVec 64))) (size!35258 (_ BitVec 32))) )
))
(declare-datatypes ((array!16170 0))(
  ( (array!16171 (arr!7220 (Array (_ BitVec 32) List!48056)) (size!35259 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9034 0))(
  ( (LongMapFixedSize!9035 (defaultEntry!4902 Int) (mask!13004 (_ BitVec 32)) (extraKeys!4766 (_ BitVec 32)) (zeroValue!4776 List!48056) (minValue!4776 List!48056) (_size!9077 (_ BitVec 32)) (_keys!4817 array!16168) (_values!4798 array!16170) (_vacant!4578 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17877 0))(
  ( (Cell!17878 (v!41893 LongMapFixedSize!9034)) )
))
(declare-datatypes ((MutLongMap!4517 0))(
  ( (LongMap!4517 (underlying!9263 Cell!17877)) (MutLongMapExt!4516 (__x!29576 Int)) )
))
(declare-datatypes ((Hashable!4433 0))(
  ( (HashableExt!4432 (__x!29577 Int)) )
))
(declare-datatypes ((Cell!17879 0))(
  ( (Cell!17880 (v!41894 MutLongMap!4517)) )
))
(declare-datatypes ((MutableMap!4423 0))(
  ( (MutableMapExt!4422 (__x!29578 Int)) (HashMap!4423 (underlying!9264 Cell!17879) (hashF!6465 Hashable!4433) (_size!9078 (_ BitVec 32)) (defaultValue!4594 Int)) )
))
(declare-fun hm!64 () MutableMap!4423)

(declare-fun mapKey!20289 () (_ BitVec 32))

(declare-fun mapValue!20289 () List!48056)

(declare-fun mapRest!20289 () (Array (_ BitVec 32) List!48056))

(assert (=> mapNonEmpty!20289 (= (arr!7220 (_values!4798 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) (store mapRest!20289 mapKey!20289 mapValue!20289))))

(declare-fun b!4299574 () Bool)

(declare-fun e!2672469 () Bool)

(assert (=> b!4299574 (= e!2672460 e!2672469)))

(declare-fun res!1762197 () Bool)

(assert (=> b!4299574 (=> (not res!1762197) (not e!2672469))))

(declare-datatypes ((tuple2!45868 0))(
  ( (tuple2!45869 (_1!26213 Bool) (_2!26213 MutableMap!4423)) )
))
(declare-fun lt!1521471 () tuple2!45868)

(assert (=> b!4299574 (= res!1762197 (not (_1!26213 lt!1521471)))))

(declare-fun update!326 (MutableMap!4423 K!9039 V!9241) tuple2!45868)

(assert (=> b!4299574 (= lt!1521471 (update!326 hm!64 k0!1716 v!9471))))

(declare-datatypes ((ListMap!1471 0))(
  ( (ListMap!1472 (toList!2189 List!48056)) )
))
(declare-fun lt!1521469 () ListMap!1471)

(declare-fun lt!1521470 () ListMap!1471)

(declare-fun +!168 (ListMap!1471 tuple2!45866) ListMap!1471)

(assert (=> b!4299574 (= lt!1521469 (+!168 lt!1521470 lt!1521467))))

(declare-fun b!4299575 () Bool)

(declare-fun e!2672466 () Bool)

(declare-fun e!2672470 () Bool)

(assert (=> b!4299575 (= e!2672466 e!2672470)))

(declare-fun b!4299576 () Bool)

(declare-fun e!2672461 () Bool)

(assert (=> b!4299576 (= e!2672461 e!2672465)))

(declare-fun res!1762198 () Bool)

(assert (=> b!4299576 (=> (not res!1762198) (not e!2672465))))

(declare-fun forall!8625 (List!48056 Int) Bool)

(assert (=> b!4299576 (= res!1762198 (forall!8625 (toList!2189 lt!1521470) p!6034))))

(declare-fun map!9890 (MutableMap!4423) ListMap!1471)

(assert (=> b!4299576 (= lt!1521470 (map!9890 hm!64))))

(declare-fun res!1762194 () Bool)

(assert (=> start!412820 (=> (not res!1762194) (not e!2672461))))

(get-info :version)

(assert (=> start!412820 (= res!1762194 ((_ is HashMap!4423) hm!64))))

(assert (=> start!412820 e!2672461))

(declare-fun e!2672462 () Bool)

(assert (=> start!412820 e!2672462))

(declare-fun tp_is_empty!23241 () Bool)

(assert (=> start!412820 tp_is_empty!23241))

(declare-fun tp_is_empty!23243 () Bool)

(assert (=> start!412820 tp_is_empty!23243))

(assert (=> start!412820 tp!1320953))

(declare-fun tp!1320952 () Bool)

(declare-fun e!2672468 () Bool)

(declare-fun tp!1320948 () Bool)

(declare-fun array_inv!5171 (array!16168) Bool)

(declare-fun array_inv!5172 (array!16170) Bool)

(assert (=> b!4299577 (= e!2672470 (and tp!1320954 tp!1320952 tp!1320948 (array_inv!5171 (_keys!4817 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) (array_inv!5172 (_values!4798 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) e!2672468))))

(declare-fun b!4299578 () Bool)

(declare-fun e!2672463 () Bool)

(assert (=> b!4299578 (= e!2672463 e!2672466)))

(declare-fun b!4299579 () Bool)

(declare-fun tp!1320951 () Bool)

(assert (=> b!4299579 (= e!2672468 (and tp!1320951 mapRes!20289))))

(declare-fun condMapEmpty!20289 () Bool)

(declare-fun mapDefault!20289 () List!48056)

(assert (=> b!4299579 (= condMapEmpty!20289 (= (arr!7220 (_values!4798 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) ((as const (Array (_ BitVec 32) List!48056)) mapDefault!20289)))))

(declare-fun b!4299580 () Bool)

(declare-fun e!2672467 () Bool)

(declare-fun lt!1521468 () MutLongMap!4517)

(assert (=> b!4299580 (= e!2672467 (and e!2672463 ((_ is LongMap!4517) lt!1521468)))))

(assert (=> b!4299580 (= lt!1521468 (v!41894 (underlying!9264 hm!64)))))

(assert (=> b!4299581 (= e!2672462 (and e!2672467 tp!1320950))))

(declare-fun b!4299582 () Bool)

(declare-fun res!1762195 () Bool)

(assert (=> b!4299582 (=> (not res!1762195) (not e!2672461))))

(declare-fun valid!3496 (MutableMap!4423) Bool)

(assert (=> b!4299582 (= res!1762195 (valid!3496 hm!64))))

(declare-fun b!4299583 () Bool)

(declare-fun eq!99 (ListMap!1471 ListMap!1471) Bool)

(assert (=> b!4299583 (= e!2672469 (not (eq!99 (map!9890 (_2!26213 lt!1521471)) lt!1521470)))))

(declare-fun mapIsEmpty!20289 () Bool)

(assert (=> mapIsEmpty!20289 mapRes!20289))

(assert (= (and start!412820 res!1762194) b!4299582))

(assert (= (and b!4299582 res!1762195) b!4299576))

(assert (= (and b!4299576 res!1762198) b!4299573))

(assert (= (and b!4299573 res!1762196) b!4299574))

(assert (= (and b!4299574 res!1762197) b!4299583))

(assert (= (and b!4299579 condMapEmpty!20289) mapIsEmpty!20289))

(assert (= (and b!4299579 (not condMapEmpty!20289)) mapNonEmpty!20289))

(assert (= b!4299577 b!4299579))

(assert (= b!4299575 b!4299577))

(assert (= b!4299578 b!4299575))

(assert (= (and b!4299580 ((_ is LongMap!4517) (v!41894 (underlying!9264 hm!64)))) b!4299578))

(assert (= b!4299581 b!4299580))

(assert (= (and start!412820 ((_ is HashMap!4423) hm!64)) b!4299581))

(declare-fun b_lambda!126303 () Bool)

(assert (=> (not b_lambda!126303) (not b!4299573)))

(declare-fun t!354762 () Bool)

(declare-fun tb!257191 () Bool)

(assert (=> (and start!412820 (= p!6034 p!6034) t!354762) tb!257191))

(declare-fun result!314464 () Bool)

(assert (=> tb!257191 (= result!314464 true)))

(assert (=> b!4299573 t!354762))

(declare-fun b_and!339321 () Bool)

(assert (= b_and!339317 (and (=> t!354762 result!314464) b_and!339321)))

(declare-fun m!4891755 () Bool)

(assert (=> b!4299576 m!4891755))

(declare-fun m!4891757 () Bool)

(assert (=> b!4299576 m!4891757))

(declare-fun m!4891759 () Bool)

(assert (=> mapNonEmpty!20289 m!4891759))

(declare-fun m!4891761 () Bool)

(assert (=> b!4299573 m!4891761))

(declare-fun m!4891763 () Bool)

(assert (=> b!4299582 m!4891763))

(declare-fun m!4891765 () Bool)

(assert (=> b!4299574 m!4891765))

(declare-fun m!4891767 () Bool)

(assert (=> b!4299574 m!4891767))

(declare-fun m!4891769 () Bool)

(assert (=> b!4299577 m!4891769))

(declare-fun m!4891771 () Bool)

(assert (=> b!4299577 m!4891771))

(declare-fun m!4891773 () Bool)

(assert (=> b!4299583 m!4891773))

(assert (=> b!4299583 m!4891773))

(declare-fun m!4891775 () Bool)

(assert (=> b!4299583 m!4891775))

(check-sat (not b!4299582) tp_is_empty!23243 (not b!4299574) (not b_next!128705) (not mapNonEmpty!20289) (not b!4299576) (not b!4299577) tp_is_empty!23241 b_and!339319 b_and!339321 (not b_next!128707) (not b!4299579) (not b!4299583) b_and!339315 (not b_next!128709) (not b_lambda!126303))
(check-sat (not b_next!128705) b_and!339315 (not b_next!128709) b_and!339319 b_and!339321 (not b_next!128707))
(get-model)

(declare-fun b_lambda!126305 () Bool)

(assert (= b_lambda!126303 (or (and start!412820 b_free!128003) b_lambda!126305)))

(check-sat (not b!4299582) tp_is_empty!23243 (not b!4299574) (not b_next!128705) (not mapNonEmpty!20289) (not b!4299576) (not b_lambda!126305) (not b!4299577) tp_is_empty!23241 (not b_next!128709) b_and!339319 b_and!339321 (not b_next!128707) (not b!4299579) (not b!4299583) b_and!339315)
(check-sat (not b_next!128705) b_and!339315 (not b_next!128709) b_and!339319 b_and!339321 (not b_next!128707))
(get-model)

(declare-fun d!1266547 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7530 (List!48056) (InoxSet tuple2!45866))

(assert (=> d!1266547 (= (eq!99 (map!9890 (_2!26213 lt!1521471)) lt!1521470) (= (content!7530 (toList!2189 (map!9890 (_2!26213 lt!1521471)))) (content!7530 (toList!2189 lt!1521470))))))

(declare-fun bs!603948 () Bool)

(assert (= bs!603948 d!1266547))

(declare-fun m!4891777 () Bool)

(assert (=> bs!603948 m!4891777))

(declare-fun m!4891779 () Bool)

(assert (=> bs!603948 m!4891779))

(assert (=> b!4299583 d!1266547))

(declare-fun d!1266549 () Bool)

(declare-fun lt!1521474 () ListMap!1471)

(declare-fun invariantList!538 (List!48056) Bool)

(assert (=> d!1266549 (invariantList!538 (toList!2189 lt!1521474))))

(declare-datatypes ((tuple2!45870 0))(
  ( (tuple2!45871 (_1!26214 (_ BitVec 64)) (_2!26214 List!48056)) )
))
(declare-datatypes ((List!48057 0))(
  ( (Nil!47933) (Cons!47933 (h!53353 tuple2!45870) (t!354766 List!48057)) )
))
(declare-fun extractMap!269 (List!48057) ListMap!1471)

(declare-datatypes ((ListLongMap!801 0))(
  ( (ListLongMap!802 (toList!2190 List!48057)) )
))
(declare-fun map!9891 (MutLongMap!4517) ListLongMap!801)

(assert (=> d!1266549 (= lt!1521474 (extractMap!269 (toList!2190 (map!9891 (v!41894 (underlying!9264 (_2!26213 lt!1521471)))))))))

(assert (=> d!1266549 (valid!3496 (_2!26213 lt!1521471))))

(assert (=> d!1266549 (= (map!9890 (_2!26213 lt!1521471)) lt!1521474)))

(declare-fun bs!603949 () Bool)

(assert (= bs!603949 d!1266549))

(declare-fun m!4891781 () Bool)

(assert (=> bs!603949 m!4891781))

(declare-fun m!4891783 () Bool)

(assert (=> bs!603949 m!4891783))

(declare-fun m!4891785 () Bool)

(assert (=> bs!603949 m!4891785))

(declare-fun m!4891787 () Bool)

(assert (=> bs!603949 m!4891787))

(assert (=> b!4299583 d!1266549))

(declare-fun d!1266551 () Bool)

(assert (=> d!1266551 (= (array_inv!5171 (_keys!4817 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) (bvsge (size!35258 (_keys!4817 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299577 d!1266551))

(declare-fun d!1266553 () Bool)

(assert (=> d!1266553 (= (array_inv!5172 (_values!4798 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) (bvsge (size!35259 (_values!4798 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299577 d!1266553))

(declare-fun d!1266555 () Bool)

(declare-fun res!1762203 () Bool)

(declare-fun e!2672473 () Bool)

(assert (=> d!1266555 (=> (not res!1762203) (not e!2672473))))

(declare-fun valid!3497 (MutLongMap!4517) Bool)

(assert (=> d!1266555 (= res!1762203 (valid!3497 (v!41894 (underlying!9264 hm!64))))))

(assert (=> d!1266555 (= (valid!3496 hm!64) e!2672473)))

(declare-fun b!4299588 () Bool)

(declare-fun res!1762204 () Bool)

(assert (=> b!4299588 (=> (not res!1762204) (not e!2672473))))

(declare-fun lambda!131940 () Int)

(declare-fun forall!8626 (List!48057 Int) Bool)

(assert (=> b!4299588 (= res!1762204 (forall!8626 (toList!2190 (map!9891 (v!41894 (underlying!9264 hm!64)))) lambda!131940))))

(declare-fun b!4299589 () Bool)

(declare-fun allKeysSameHashInMap!269 (ListLongMap!801 Hashable!4433) Bool)

(assert (=> b!4299589 (= e!2672473 (allKeysSameHashInMap!269 (map!9891 (v!41894 (underlying!9264 hm!64))) (hashF!6465 hm!64)))))

(assert (= (and d!1266555 res!1762203) b!4299588))

(assert (= (and b!4299588 res!1762204) b!4299589))

(declare-fun m!4891789 () Bool)

(assert (=> d!1266555 m!4891789))

(declare-fun m!4891791 () Bool)

(assert (=> b!4299588 m!4891791))

(declare-fun m!4891793 () Bool)

(assert (=> b!4299588 m!4891793))

(assert (=> b!4299589 m!4891791))

(assert (=> b!4299589 m!4891791))

(declare-fun m!4891795 () Bool)

(assert (=> b!4299589 m!4891795))

(assert (=> b!4299582 d!1266555))

(declare-fun d!1266557 () Bool)

(declare-fun res!1762209 () Bool)

(declare-fun e!2672478 () Bool)

(assert (=> d!1266557 (=> res!1762209 e!2672478)))

(assert (=> d!1266557 (= res!1762209 ((_ is Nil!47932) (toList!2189 lt!1521470)))))

(assert (=> d!1266557 (= (forall!8625 (toList!2189 lt!1521470) p!6034) e!2672478)))

(declare-fun b!4299594 () Bool)

(declare-fun e!2672479 () Bool)

(assert (=> b!4299594 (= e!2672478 e!2672479)))

(declare-fun res!1762210 () Bool)

(assert (=> b!4299594 (=> (not res!1762210) (not e!2672479))))

(assert (=> b!4299594 (= res!1762210 (dynLambda!20356 p!6034 (h!53352 (toList!2189 lt!1521470))))))

(declare-fun b!4299595 () Bool)

(assert (=> b!4299595 (= e!2672479 (forall!8625 (t!354763 (toList!2189 lt!1521470)) p!6034))))

(assert (= (and d!1266557 (not res!1762209)) b!4299594))

(assert (= (and b!4299594 res!1762210) b!4299595))

(declare-fun b_lambda!126307 () Bool)

(assert (=> (not b_lambda!126307) (not b!4299594)))

(declare-fun t!354765 () Bool)

(declare-fun tb!257193 () Bool)

(assert (=> (and start!412820 (= p!6034 p!6034) t!354765) tb!257193))

(declare-fun result!314466 () Bool)

(assert (=> tb!257193 (= result!314466 true)))

(assert (=> b!4299594 t!354765))

(declare-fun b_and!339323 () Bool)

(assert (= b_and!339321 (and (=> t!354765 result!314466) b_and!339323)))

(declare-fun m!4891797 () Bool)

(assert (=> b!4299594 m!4891797))

(declare-fun m!4891799 () Bool)

(assert (=> b!4299595 m!4891799))

(assert (=> b!4299576 d!1266557))

(declare-fun d!1266559 () Bool)

(declare-fun lt!1521475 () ListMap!1471)

(assert (=> d!1266559 (invariantList!538 (toList!2189 lt!1521475))))

(assert (=> d!1266559 (= lt!1521475 (extractMap!269 (toList!2190 (map!9891 (v!41894 (underlying!9264 hm!64))))))))

(assert (=> d!1266559 (valid!3496 hm!64)))

(assert (=> d!1266559 (= (map!9890 hm!64) lt!1521475)))

(declare-fun bs!603950 () Bool)

(assert (= bs!603950 d!1266559))

(declare-fun m!4891801 () Bool)

(assert (=> bs!603950 m!4891801))

(assert (=> bs!603950 m!4891791))

(declare-fun m!4891803 () Bool)

(assert (=> bs!603950 m!4891803))

(assert (=> bs!603950 m!4891763))

(assert (=> b!4299576 d!1266559))

(declare-fun bs!603951 () Bool)

(declare-fun b!4299638 () Bool)

(assert (= bs!603951 (and b!4299638 b!4299588)))

(declare-fun lambda!131949 () Int)

(assert (=> bs!603951 (= lambda!131949 lambda!131940)))

(declare-fun bs!603952 () Bool)

(declare-fun b!4299649 () Bool)

(assert (= bs!603952 (and b!4299649 b!4299588)))

(declare-fun lambda!131950 () Int)

(assert (=> bs!603952 (= lambda!131950 lambda!131940)))

(declare-fun bs!603953 () Bool)

(assert (= bs!603953 (and b!4299649 b!4299638)))

(assert (=> bs!603953 (= lambda!131950 lambda!131949)))

(declare-datatypes ((Unit!66773 0))(
  ( (Unit!66774) )
))
(declare-fun call!295984 () Unit!66773)

(declare-fun lt!1521610 () ListMap!1471)

(declare-fun lt!1521626 () ListMap!1471)

(declare-fun lt!1521605 () ListMap!1471)

(declare-fun c!731383 () Bool)

(declare-fun bm!295951 () Bool)

(declare-fun lt!1521624 () ListMap!1471)

(declare-fun lemmaEquivalentThenSameContains!33 (ListMap!1471 ListMap!1471 K!9039) Unit!66773)

(assert (=> bm!295951 (= call!295984 (lemmaEquivalentThenSameContains!33 (ite c!731383 lt!1521605 lt!1521624) (ite c!731383 lt!1521610 lt!1521626) k0!1716))))

(declare-fun b!4299634 () Bool)

(declare-fun e!2672508 () Bool)

(declare-fun e!2672505 () Bool)

(assert (=> b!4299634 (= e!2672508 e!2672505)))

(declare-fun res!1762221 () Bool)

(declare-fun call!295969 () ListMap!1471)

(declare-fun contains!9853 (ListMap!1471 K!9039) Bool)

(assert (=> b!4299634 (= res!1762221 (contains!9853 call!295969 k0!1716))))

(assert (=> b!4299634 (=> (not res!1762221) (not e!2672505))))

(declare-fun bm!295952 () Bool)

(declare-fun call!295979 () (_ BitVec 64))

(declare-fun hash!837 (Hashable!4433 K!9039) (_ BitVec 64))

(assert (=> bm!295952 (= call!295979 (hash!837 (hashF!6465 hm!64) k0!1716))))

(declare-fun call!295965 () ListLongMap!801)

(declare-fun bm!295953 () Bool)

(declare-fun call!295963 () Bool)

(assert (=> bm!295953 (= call!295963 (forall!8626 (toList!2190 call!295965) (ite c!731383 lambda!131949 lambda!131950)))))

(declare-fun lt!1521594 () (_ BitVec 64))

(declare-fun lt!1521632 () (_ BitVec 64))

(declare-fun bm!295954 () Bool)

(declare-fun lt!1521598 () List!48056)

(declare-fun lt!1521613 () ListLongMap!801)

(declare-fun lt!1521640 () List!48056)

(declare-fun call!295977 () Unit!66773)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!112 (List!48057 (_ BitVec 64) List!48056 Hashable!4433) Unit!66773)

(assert (=> bm!295954 (= call!295977 (lemmaInLongMapAllKeySameHashThenForTuple!112 (toList!2190 lt!1521613) (ite c!731383 lt!1521594 lt!1521632) (ite c!731383 lt!1521640 lt!1521598) (hashF!6465 hm!64)))))

(declare-fun bm!295955 () Bool)

(declare-fun call!295986 () Bool)

(declare-fun lt!1521601 () MutableMap!4423)

(declare-fun lt!1521629 () MutableMap!4423)

(assert (=> bm!295955 (= call!295986 (valid!3496 (ite c!731383 lt!1521629 lt!1521601)))))

(declare-fun bm!295956 () Bool)

(declare-fun call!295976 () Bool)

(assert (=> bm!295956 (= call!295976 (contains!9853 (ite c!731383 lt!1521610 lt!1521624) k0!1716))))

(declare-fun call!295960 () Bool)

(declare-fun bm!295957 () Bool)

(declare-fun allKeysSameHash!121 (List!48056 (_ BitVec 64) Hashable!4433) Bool)

(assert (=> bm!295957 (= call!295960 (allKeysSameHash!121 (ite c!731383 lt!1521640 lt!1521598) (ite c!731383 lt!1521594 lt!1521632) (hashF!6465 hm!64)))))

(declare-fun bm!295958 () Bool)

(declare-fun lt!1521588 () tuple2!45868)

(assert (=> bm!295958 (= call!295969 (map!9890 (_2!26213 lt!1521588)))))

(declare-fun b!4299635 () Bool)

(declare-fun e!2672509 () Unit!66773)

(declare-fun lt!1521633 () Unit!66773)

(assert (=> b!4299635 (= e!2672509 lt!1521633)))

(declare-fun lt!1521625 () Unit!66773)

(assert (=> b!4299635 (= lt!1521625 call!295977)))

(assert (=> b!4299635 call!295960))

(declare-fun lt!1521607 () Unit!66773)

(assert (=> b!4299635 (= lt!1521607 lt!1521625)))

(declare-fun call!295967 () Unit!66773)

(assert (=> b!4299635 (= lt!1521633 call!295967)))

(declare-fun call!295961 () Bool)

(assert (=> b!4299635 call!295961))

(declare-fun b!4299636 () Bool)

(declare-fun e!2672503 () ListMap!1471)

(declare-fun call!295970 () ListMap!1471)

(assert (=> b!4299636 (= e!2672503 (+!168 call!295970 (tuple2!45867 k0!1716 v!9471)))))

(declare-fun b!4299637 () Bool)

(declare-fun call!295974 () Bool)

(assert (=> b!4299637 (= e!2672505 call!295974)))

(declare-fun bm!295960 () Bool)

(declare-fun call!295972 () Bool)

(declare-fun call!295964 () ListMap!1471)

(declare-fun call!295968 () ListMap!1471)

(assert (=> bm!295960 (= call!295972 (eq!99 call!295964 call!295968))))

(declare-fun bm!295961 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!108 (List!48056 K!9039 (_ BitVec 64) Hashable!4433) Unit!66773)

(assert (=> bm!295961 (= call!295967 (lemmaRemovePairForKeyPreservesHash!108 (ite c!731383 lt!1521640 lt!1521598) k0!1716 (ite c!731383 lt!1521594 lt!1521632) (hashF!6465 hm!64)))))

(declare-fun bm!295962 () Bool)

(declare-fun call!295975 () ListMap!1471)

(declare-fun call!295957 () ListMap!1471)

(assert (=> bm!295962 (= call!295975 call!295957)))

(declare-fun call!295983 () Bool)

(assert (=> b!4299638 call!295983))

(declare-fun lt!1521616 () Unit!66773)

(declare-fun Unit!66775 () Unit!66773)

(assert (=> b!4299638 (= lt!1521616 Unit!66775)))

(declare-fun call!295982 () Bool)

(assert (=> b!4299638 call!295982))

(declare-fun lt!1521630 () Unit!66773)

(declare-fun Unit!66776 () Unit!66773)

(assert (=> b!4299638 (= lt!1521630 Unit!66776)))

(assert (=> b!4299638 call!295963))

(declare-fun lt!1521599 () Unit!66773)

(declare-fun lt!1521635 () Unit!66773)

(assert (=> b!4299638 (= lt!1521599 lt!1521635)))

(declare-fun call!295958 () Bool)

(assert (=> b!4299638 (= call!295958 call!295976)))

(assert (=> b!4299638 (= lt!1521635 call!295984)))

(declare-fun call!295981 () ListMap!1471)

(assert (=> b!4299638 (= lt!1521610 call!295981)))

(assert (=> b!4299638 (= lt!1521605 call!295975)))

(declare-fun lt!1521608 () Unit!66773)

(declare-fun lt!1521589 () Unit!66773)

(assert (=> b!4299638 (= lt!1521608 lt!1521589)))

(assert (=> b!4299638 call!295972))

(declare-fun lt!1521611 () List!48056)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!33 (ListLongMap!801 (_ BitVec 64) List!48056 K!9039 V!9241 Hashable!4433) Unit!66773)

(assert (=> b!4299638 (= lt!1521589 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!33 lt!1521613 lt!1521594 lt!1521611 k0!1716 v!9471 (hashF!6465 hm!64)))))

(declare-fun lt!1521628 () Unit!66773)

(declare-fun lt!1521603 () Unit!66773)

(assert (=> b!4299638 (= lt!1521628 lt!1521603)))

(declare-fun e!2672510 () Bool)

(assert (=> b!4299638 e!2672510))

(declare-fun res!1762223 () Bool)

(assert (=> b!4299638 (=> (not res!1762223) (not e!2672510))))

(declare-fun call!295978 () Bool)

(assert (=> b!4299638 (= res!1762223 call!295978)))

(declare-fun lt!1521606 () ListLongMap!801)

(declare-fun call!295956 () ListLongMap!801)

(assert (=> b!4299638 (= lt!1521606 call!295956)))

(declare-fun call!295959 () Unit!66773)

(assert (=> b!4299638 (= lt!1521603 call!295959)))

(declare-fun lt!1521636 () Unit!66773)

(declare-fun Unit!66777 () Unit!66773)

(assert (=> b!4299638 (= lt!1521636 Unit!66777)))

(declare-fun noDuplicateKeys!149 (List!48056) Bool)

(assert (=> b!4299638 (noDuplicateKeys!149 lt!1521611)))

(declare-fun lt!1521597 () Unit!66773)

(declare-fun Unit!66778 () Unit!66773)

(assert (=> b!4299638 (= lt!1521597 Unit!66778)))

(declare-fun call!295962 () List!48056)

(declare-fun containsKey!231 (List!48056 K!9039) Bool)

(assert (=> b!4299638 (not (containsKey!231 call!295962 k0!1716))))

(declare-fun lt!1521600 () Unit!66773)

(declare-fun Unit!66779 () Unit!66773)

(assert (=> b!4299638 (= lt!1521600 Unit!66779)))

(declare-fun lt!1521587 () Unit!66773)

(declare-fun lt!1521602 () Unit!66773)

(assert (=> b!4299638 (= lt!1521587 lt!1521602)))

(assert (=> b!4299638 (noDuplicateKeys!149 call!295962)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!126 (List!48056 K!9039) Unit!66773)

(assert (=> b!4299638 (= lt!1521602 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!126 lt!1521640 k0!1716))))

(declare-fun lt!1521591 () Unit!66773)

(declare-fun lt!1521637 () Unit!66773)

(assert (=> b!4299638 (= lt!1521591 lt!1521637)))

(assert (=> b!4299638 call!295961))

(assert (=> b!4299638 (= lt!1521637 call!295967)))

(declare-fun lt!1521638 () Unit!66773)

(declare-fun lt!1521604 () Unit!66773)

(assert (=> b!4299638 (= lt!1521638 lt!1521604)))

(assert (=> b!4299638 call!295960))

(assert (=> b!4299638 (= lt!1521604 call!295977)))

(declare-fun e!2672512 () Unit!66773)

(declare-fun Unit!66780 () Unit!66773)

(assert (=> b!4299638 (= e!2672512 Unit!66780)))

(declare-fun bm!295963 () Bool)

(declare-fun call!295966 () ListMap!1471)

(assert (=> bm!295963 (= call!295983 (eq!99 (ite c!731383 call!295975 call!295966) call!295981))))

(declare-fun lt!1521619 () ListLongMap!801)

(declare-fun bm!295964 () Bool)

(assert (=> bm!295964 (= call!295978 (forall!8626 (ite c!731383 (toList!2190 lt!1521606) (toList!2190 lt!1521619)) (ite c!731383 lambda!131949 lambda!131950)))))

(declare-fun e!2672507 () tuple2!45868)

(declare-fun b!4299639 () Bool)

(declare-datatypes ((tuple2!45872 0))(
  ( (tuple2!45873 (_1!26215 Bool) (_2!26215 MutLongMap!4517)) )
))
(declare-fun lt!1521595 () tuple2!45872)

(declare-datatypes ((tuple2!45874 0))(
  ( (tuple2!45875 (_1!26216 Unit!66773) (_2!26216 MutableMap!4423)) )
))
(declare-fun Unit!66781 () Unit!66773)

(declare-fun Unit!66782 () Unit!66773)

(assert (=> b!4299639 (= e!2672507 (tuple2!45869 (_1!26215 lt!1521595) (_2!26216 (ite false (tuple2!45875 Unit!66781 (HashMap!4423 (Cell!17880 (_2!26215 lt!1521595)) (hashF!6465 hm!64) (bvadd (_size!9078 hm!64) #b00000000000000000000000000000001) (defaultValue!4594 hm!64))) (tuple2!45875 Unit!66782 lt!1521629)))))))

(assert (=> b!4299639 (= lt!1521594 call!295979)))

(declare-fun call!295985 () List!48056)

(assert (=> b!4299639 (= lt!1521640 call!295985)))

(assert (=> b!4299639 (= lt!1521611 (Cons!47932 (tuple2!45867 k0!1716 v!9471) call!295962))))

(declare-fun call!295973 () tuple2!45872)

(assert (=> b!4299639 (= lt!1521595 call!295973)))

(assert (=> b!4299639 (= lt!1521629 (HashMap!4423 (Cell!17880 (_2!26215 lt!1521595)) (hashF!6465 hm!64) (_size!9078 hm!64) (defaultValue!4594 hm!64)))))

(declare-fun c!731386 () Bool)

(assert (=> b!4299639 (= c!731386 (_1!26215 lt!1521595))))

(declare-fun lt!1521596 () Unit!66773)

(assert (=> b!4299639 (= lt!1521596 e!2672512)))

(declare-fun bm!295965 () Bool)

(assert (=> bm!295965 (= call!295958 (contains!9853 (ite c!731383 lt!1521605 lt!1521626) k0!1716))))

(declare-fun bm!295966 () Bool)

(assert (=> bm!295966 (= call!295970 (map!9890 hm!64))))

(declare-fun bm!295967 () Bool)

(declare-fun lt!1521634 () List!48056)

(declare-fun update!327 (MutLongMap!4517 (_ BitVec 64) List!48056) tuple2!45872)

(assert (=> bm!295967 (= call!295973 (update!327 (v!41894 (underlying!9264 hm!64)) (ite c!731383 lt!1521594 lt!1521632) (ite c!731383 lt!1521611 lt!1521634)))))

(declare-fun b!4299640 () Bool)

(declare-fun lt!1521614 () ListMap!1471)

(assert (=> b!4299640 (= call!295966 lt!1521614)))

(declare-fun lt!1521639 () Unit!66773)

(declare-fun Unit!66783 () Unit!66773)

(assert (=> b!4299640 (= lt!1521639 Unit!66783)))

(assert (=> b!4299640 call!295986))

(declare-fun e!2672504 () Unit!66773)

(declare-fun Unit!66784 () Unit!66773)

(assert (=> b!4299640 (= e!2672504 Unit!66784)))

(declare-fun bm!295968 () Bool)

(declare-fun call!295971 () ListMap!1471)

(assert (=> bm!295968 (= call!295968 (+!168 call!295971 (tuple2!45867 k0!1716 v!9471)))))

(declare-fun bm!295969 () Bool)

(assert (=> bm!295969 (= call!295982 (allKeysSameHashInMap!269 call!295965 (hashF!6465 hm!64)))))

(declare-fun bm!295970 () Bool)

(assert (=> bm!295970 (= call!295971 (extractMap!269 (toList!2190 lt!1521613)))))

(declare-fun bm!295971 () Bool)

(assert (=> bm!295971 (= call!295981 (+!168 lt!1521614 (tuple2!45867 k0!1716 v!9471)))))

(declare-fun b!4299641 () Bool)

(assert (=> b!4299641 (= e!2672508 call!295974)))

(declare-fun bm!295972 () Bool)

(declare-fun apply!10874 (MutLongMap!4517 (_ BitVec 64)) List!48056)

(assert (=> bm!295972 (= call!295985 (apply!10874 (v!41894 (underlying!9264 hm!64)) (ite c!731383 lt!1521594 lt!1521632)))))

(declare-fun bm!295973 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!99 (ListLongMap!801 (_ BitVec 64) List!48056 Hashable!4433) Unit!66773)

(assert (=> bm!295973 (= call!295959 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!99 lt!1521613 (ite c!731383 lt!1521594 lt!1521632) (ite c!731383 lt!1521611 lt!1521634) (hashF!6465 hm!64)))))

(declare-fun lt!1521615 () tuple2!45872)

(declare-fun b!4299642 () Bool)

(declare-fun Unit!66785 () Unit!66773)

(declare-fun Unit!66786 () Unit!66773)

(assert (=> b!4299642 (= e!2672507 (tuple2!45869 (_1!26215 lt!1521615) (_2!26216 (ite (_1!26215 lt!1521615) (tuple2!45875 Unit!66785 (HashMap!4423 (Cell!17880 (_2!26215 lt!1521615)) (hashF!6465 hm!64) (bvadd (_size!9078 hm!64) #b00000000000000000000000000000001) (defaultValue!4594 hm!64))) (tuple2!45875 Unit!66786 lt!1521601)))))))

(assert (=> b!4299642 (= lt!1521632 call!295979)))

(declare-fun c!731385 () Bool)

(declare-fun contains!9854 (MutLongMap!4517 (_ BitVec 64)) Bool)

(assert (=> b!4299642 (= c!731385 (contains!9854 (v!41894 (underlying!9264 hm!64)) lt!1521632))))

(declare-fun e!2672506 () List!48056)

(assert (=> b!4299642 (= lt!1521598 e!2672506)))

(assert (=> b!4299642 (= lt!1521634 (Cons!47932 (tuple2!45867 k0!1716 v!9471) lt!1521598))))

(assert (=> b!4299642 (= lt!1521615 call!295973)))

(assert (=> b!4299642 (= lt!1521601 (HashMap!4423 (Cell!17880 (_2!26215 lt!1521615)) (hashF!6465 hm!64) (_size!9078 hm!64) (defaultValue!4594 hm!64)))))

(declare-fun c!731387 () Bool)

(assert (=> b!4299642 (= c!731387 (_1!26215 lt!1521615))))

(declare-fun lt!1521620 () Unit!66773)

(assert (=> b!4299642 (= lt!1521620 e!2672504)))

(declare-fun bm!295974 () Bool)

(assert (=> bm!295974 (= call!295966 call!295957)))

(declare-fun bm!295975 () Bool)

(assert (=> bm!295975 (= call!295957 (map!9890 (ite c!731383 lt!1521629 lt!1521601)))))

(declare-fun bm!295976 () Bool)

(declare-fun +!169 (ListLongMap!801 tuple2!45870) ListLongMap!801)

(assert (=> bm!295976 (= call!295956 (+!169 lt!1521613 (ite c!731383 (tuple2!45871 lt!1521594 lt!1521611) (tuple2!45871 lt!1521632 lt!1521634))))))

(declare-fun bm!295977 () Bool)

(assert (=> bm!295977 (= call!295961 (allKeysSameHash!121 call!295962 (ite c!731383 lt!1521594 lt!1521632) (hashF!6465 hm!64)))))

(declare-fun b!4299643 () Bool)

(assert (=> b!4299643 (= e!2672503 call!295970)))

(declare-fun bm!295978 () Bool)

(assert (=> bm!295978 (= call!295965 (map!9891 (ite c!731383 (_2!26215 lt!1521595) (_2!26215 lt!1521615))))))

(declare-fun b!4299644 () Bool)

(declare-fun e!2672502 () Bool)

(declare-fun call!295980 () Bool)

(assert (=> b!4299644 (= e!2672502 call!295980)))

(declare-fun bm!295979 () Bool)

(declare-fun removePairForKey!138 (List!48056 K!9039) List!48056)

(assert (=> bm!295979 (= call!295962 (removePairForKey!138 (ite c!731383 lt!1521640 lt!1521598) k0!1716))))

(declare-fun b!4299645 () Bool)

(assert (=> b!4299645 (= e!2672506 Nil!47932)))

(declare-fun b!4299646 () Bool)

(assert (=> b!4299646 (= call!295975 lt!1521614)))

(declare-fun lt!1521593 () Unit!66773)

(declare-fun Unit!66787 () Unit!66773)

(assert (=> b!4299646 (= lt!1521593 Unit!66787)))

(assert (=> b!4299646 call!295986))

(declare-fun Unit!66788 () Unit!66773)

(assert (=> b!4299646 (= e!2672512 Unit!66788)))

(declare-fun bm!295980 () Bool)

(assert (=> bm!295980 (= call!295964 (extractMap!269 (toList!2190 call!295956)))))

(declare-fun d!1266561 () Bool)

(declare-fun e!2672511 () Bool)

(assert (=> d!1266561 e!2672511))

(declare-fun res!1762224 () Bool)

(assert (=> d!1266561 (=> (not res!1762224) (not e!2672511))))

(assert (=> d!1266561 (= res!1762224 ((_ is HashMap!4423) (_2!26213 lt!1521588)))))

(declare-fun lt!1521609 () tuple2!45868)

(assert (=> d!1266561 (= lt!1521588 (tuple2!45869 (_1!26213 lt!1521609) (_2!26213 lt!1521609)))))

(assert (=> d!1266561 (= lt!1521609 e!2672507)))

(declare-fun contains!9855 (MutableMap!4423 K!9039) Bool)

(assert (=> d!1266561 (= c!731383 (contains!9855 hm!64 k0!1716))))

(assert (=> d!1266561 (= lt!1521613 (map!9891 (v!41894 (underlying!9264 hm!64))))))

(assert (=> d!1266561 (= lt!1521614 (map!9890 hm!64))))

(assert (=> d!1266561 (valid!3496 hm!64)))

(assert (=> d!1266561 (= (update!326 hm!64 k0!1716 v!9471) lt!1521588)))

(declare-fun bm!295959 () Bool)

(assert (=> bm!295959 (= call!295980 (allKeysSameHashInMap!269 (ite c!731383 lt!1521606 lt!1521619) (hashF!6465 hm!64)))))

(declare-fun b!4299647 () Bool)

(assert (=> b!4299647 (= e!2672506 call!295985)))

(declare-fun b!4299648 () Bool)

(declare-fun res!1762222 () Bool)

(assert (=> b!4299648 (=> (not res!1762222) (not e!2672511))))

(assert (=> b!4299648 (= res!1762222 (valid!3496 (_2!26213 lt!1521588)))))

(assert (=> b!4299649 (contains!9853 call!295966 k0!1716)))

(declare-fun lt!1521590 () Unit!66773)

(declare-fun Unit!66789 () Unit!66773)

(assert (=> b!4299649 (= lt!1521590 Unit!66789)))

(assert (=> b!4299649 (contains!9853 call!295981 k0!1716)))

(declare-fun lt!1521621 () Unit!66773)

(declare-fun lt!1521586 () Unit!66773)

(assert (=> b!4299649 (= lt!1521621 lt!1521586)))

(assert (=> b!4299649 (= call!295976 call!295958)))

(assert (=> b!4299649 (= lt!1521586 call!295984)))

(assert (=> b!4299649 (= lt!1521626 call!295981)))

(assert (=> b!4299649 (= lt!1521624 call!295966)))

(declare-fun lt!1521622 () Unit!66773)

(declare-fun Unit!66790 () Unit!66773)

(assert (=> b!4299649 (= lt!1521622 Unit!66790)))

(assert (=> b!4299649 call!295983))

(declare-fun lt!1521627 () Unit!66773)

(declare-fun Unit!66791 () Unit!66773)

(assert (=> b!4299649 (= lt!1521627 Unit!66791)))

(assert (=> b!4299649 call!295982))

(declare-fun lt!1521631 () Unit!66773)

(declare-fun Unit!66792 () Unit!66773)

(assert (=> b!4299649 (= lt!1521631 Unit!66792)))

(assert (=> b!4299649 call!295963))

(declare-fun lt!1521592 () Unit!66773)

(declare-fun lt!1521617 () Unit!66773)

(assert (=> b!4299649 (= lt!1521592 lt!1521617)))

(assert (=> b!4299649 call!295972))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!33 (ListLongMap!801 (_ BitVec 64) List!48056 K!9039 V!9241 Hashable!4433) Unit!66773)

(assert (=> b!4299649 (= lt!1521617 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!33 lt!1521613 lt!1521632 lt!1521634 k0!1716 v!9471 (hashF!6465 hm!64)))))

(declare-fun lt!1521623 () Unit!66773)

(declare-fun lt!1521618 () Unit!66773)

(assert (=> b!4299649 (= lt!1521623 lt!1521618)))

(assert (=> b!4299649 e!2672502))

(declare-fun res!1762225 () Bool)

(assert (=> b!4299649 (=> (not res!1762225) (not e!2672502))))

(assert (=> b!4299649 (= res!1762225 call!295978)))

(assert (=> b!4299649 (= lt!1521619 call!295956)))

(assert (=> b!4299649 (= lt!1521618 call!295959)))

(declare-fun lt!1521612 () Unit!66773)

(assert (=> b!4299649 (= lt!1521612 e!2672509)))

(declare-fun c!731388 () Bool)

(declare-fun isEmpty!28045 (List!48056) Bool)

(assert (=> b!4299649 (= c!731388 (not (isEmpty!28045 lt!1521598)))))

(declare-fun Unit!66793 () Unit!66773)

(assert (=> b!4299649 (= e!2672504 Unit!66793)))

(declare-fun b!4299650 () Bool)

(declare-fun Unit!66794 () Unit!66773)

(assert (=> b!4299650 (= e!2672509 Unit!66794)))

(declare-fun bm!295981 () Bool)

(assert (=> bm!295981 (= call!295974 (eq!99 call!295969 e!2672503))))

(declare-fun c!731389 () Bool)

(declare-fun c!731384 () Bool)

(assert (=> bm!295981 (= c!731389 c!731384)))

(declare-fun b!4299651 () Bool)

(assert (=> b!4299651 (= e!2672510 call!295980)))

(declare-fun b!4299652 () Bool)

(assert (=> b!4299652 (= e!2672511 e!2672508)))

(assert (=> b!4299652 (= c!731384 (_1!26213 lt!1521588))))

(assert (= (and d!1266561 c!731383) b!4299639))

(assert (= (and d!1266561 (not c!731383)) b!4299642))

(assert (= (and b!4299639 c!731386) b!4299638))

(assert (= (and b!4299639 (not c!731386)) b!4299646))

(assert (= (and b!4299638 res!1762223) b!4299651))

(assert (= (or b!4299638 b!4299646) bm!295962))

(assert (= (and b!4299642 c!731385) b!4299647))

(assert (= (and b!4299642 (not c!731385)) b!4299645))

(assert (= (and b!4299642 c!731387) b!4299649))

(assert (= (and b!4299642 (not c!731387)) b!4299640))

(assert (= (and b!4299649 c!731388) b!4299635))

(assert (= (and b!4299649 (not c!731388)) b!4299650))

(assert (= (and b!4299649 res!1762225) b!4299644))

(assert (= (or b!4299649 b!4299640) bm!295974))

(assert (= (or b!4299638 b!4299649) bm!295956))

(assert (= (or b!4299638 b!4299649) bm!295965))

(assert (= (or b!4299638 b!4299649) bm!295976))

(assert (= (or b!4299638 b!4299649) bm!295978))

(assert (= (or b!4299638 b!4299649) bm!295970))

(assert (= (or b!4299638 b!4299649) bm!295971))

(assert (= (or b!4299638 b!4299635) bm!295957))

(assert (= (or b!4299651 b!4299644) bm!295959))

(assert (= (or b!4299639 b!4299642) bm!295967))

(assert (= (or b!4299638 b!4299649) bm!295964))

(assert (= (or b!4299638 b!4299635) bm!295954))

(assert (= (or b!4299646 b!4299640) bm!295955))

(assert (= (or b!4299639 b!4299642) bm!295952))

(assert (= (or b!4299639 b!4299647) bm!295972))

(assert (= (or b!4299638 b!4299649) bm!295951))

(assert (= (or bm!295962 bm!295974) bm!295975))

(assert (= (or b!4299638 b!4299649) bm!295973))

(assert (= (or b!4299638 b!4299635) bm!295961))

(assert (= (or b!4299638 b!4299639 b!4299635) bm!295979))

(assert (= (or b!4299638 b!4299649) bm!295980))

(assert (= (or b!4299638 b!4299649) bm!295963))

(assert (= (or b!4299638 b!4299635) bm!295977))

(assert (= (or b!4299638 b!4299649) bm!295968))

(assert (= (or b!4299638 b!4299649) bm!295969))

(assert (= (or b!4299638 b!4299649) bm!295953))

(assert (= (or b!4299638 b!4299649) bm!295960))

(assert (= (and d!1266561 res!1762224) b!4299648))

(assert (= (and b!4299648 res!1762222) b!4299652))

(assert (= (and b!4299652 c!731384) b!4299634))

(assert (= (and b!4299652 (not c!731384)) b!4299641))

(assert (= (and b!4299634 res!1762221) b!4299637))

(assert (= (or b!4299637 b!4299641) bm!295966))

(assert (= (or b!4299634 b!4299637 b!4299641) bm!295958))

(assert (= (or b!4299637 b!4299641) bm!295981))

(assert (= (and bm!295981 c!731389) b!4299636))

(assert (= (and bm!295981 (not c!731389)) b!4299643))

(declare-fun m!4891805 () Bool)

(assert (=> bm!295958 m!4891805))

(declare-fun m!4891807 () Bool)

(assert (=> bm!295971 m!4891807))

(declare-fun m!4891809 () Bool)

(assert (=> b!4299636 m!4891809))

(declare-fun m!4891811 () Bool)

(assert (=> b!4299649 m!4891811))

(declare-fun m!4891813 () Bool)

(assert (=> b!4299649 m!4891813))

(declare-fun m!4891815 () Bool)

(assert (=> b!4299649 m!4891815))

(declare-fun m!4891817 () Bool)

(assert (=> b!4299649 m!4891817))

(declare-fun m!4891819 () Bool)

(assert (=> bm!295977 m!4891819))

(declare-fun m!4891821 () Bool)

(assert (=> bm!295979 m!4891821))

(declare-fun m!4891823 () Bool)

(assert (=> bm!295969 m!4891823))

(declare-fun m!4891825 () Bool)

(assert (=> bm!295981 m!4891825))

(declare-fun m!4891827 () Bool)

(assert (=> bm!295973 m!4891827))

(declare-fun m!4891829 () Bool)

(assert (=> bm!295955 m!4891829))

(declare-fun m!4891831 () Bool)

(assert (=> d!1266561 m!4891831))

(assert (=> d!1266561 m!4891791))

(assert (=> d!1266561 m!4891757))

(assert (=> d!1266561 m!4891763))

(declare-fun m!4891833 () Bool)

(assert (=> bm!295959 m!4891833))

(declare-fun m!4891835 () Bool)

(assert (=> bm!295953 m!4891835))

(declare-fun m!4891837 () Bool)

(assert (=> b!4299638 m!4891837))

(declare-fun m!4891839 () Bool)

(assert (=> b!4299638 m!4891839))

(declare-fun m!4891841 () Bool)

(assert (=> b!4299638 m!4891841))

(declare-fun m!4891843 () Bool)

(assert (=> b!4299638 m!4891843))

(declare-fun m!4891845 () Bool)

(assert (=> b!4299638 m!4891845))

(assert (=> bm!295966 m!4891757))

(declare-fun m!4891847 () Bool)

(assert (=> bm!295957 m!4891847))

(declare-fun m!4891849 () Bool)

(assert (=> bm!295970 m!4891849))

(declare-fun m!4891851 () Bool)

(assert (=> bm!295976 m!4891851))

(declare-fun m!4891853 () Bool)

(assert (=> bm!295952 m!4891853))

(declare-fun m!4891855 () Bool)

(assert (=> bm!295967 m!4891855))

(declare-fun m!4891857 () Bool)

(assert (=> bm!295954 m!4891857))

(declare-fun m!4891859 () Bool)

(assert (=> b!4299648 m!4891859))

(declare-fun m!4891861 () Bool)

(assert (=> bm!295975 m!4891861))

(declare-fun m!4891863 () Bool)

(assert (=> bm!295968 m!4891863))

(declare-fun m!4891865 () Bool)

(assert (=> bm!295980 m!4891865))

(declare-fun m!4891867 () Bool)

(assert (=> bm!295961 m!4891867))

(declare-fun m!4891869 () Bool)

(assert (=> bm!295978 m!4891869))

(declare-fun m!4891871 () Bool)

(assert (=> bm!295965 m!4891871))

(declare-fun m!4891873 () Bool)

(assert (=> bm!295951 m!4891873))

(declare-fun m!4891875 () Bool)

(assert (=> bm!295964 m!4891875))

(declare-fun m!4891877 () Bool)

(assert (=> b!4299634 m!4891877))

(declare-fun m!4891879 () Bool)

(assert (=> bm!295972 m!4891879))

(declare-fun m!4891881 () Bool)

(assert (=> bm!295960 m!4891881))

(declare-fun m!4891883 () Bool)

(assert (=> bm!295956 m!4891883))

(declare-fun m!4891885 () Bool)

(assert (=> bm!295963 m!4891885))

(declare-fun m!4891887 () Bool)

(assert (=> b!4299642 m!4891887))

(assert (=> b!4299574 d!1266561))

(declare-fun d!1266563 () Bool)

(declare-fun e!2672515 () Bool)

(assert (=> d!1266563 e!2672515))

(declare-fun res!1762230 () Bool)

(assert (=> d!1266563 (=> (not res!1762230) (not e!2672515))))

(declare-fun lt!1521651 () ListMap!1471)

(assert (=> d!1266563 (= res!1762230 (contains!9853 lt!1521651 (_1!26212 lt!1521467)))))

(declare-fun lt!1521652 () List!48056)

(assert (=> d!1266563 (= lt!1521651 (ListMap!1472 lt!1521652))))

(declare-fun lt!1521650 () Unit!66773)

(declare-fun lt!1521649 () Unit!66773)

(assert (=> d!1266563 (= lt!1521650 lt!1521649)))

(declare-datatypes ((Option!10161 0))(
  ( (None!10160) (Some!10160 (v!41896 V!9241)) )
))
(declare-fun getValueByKey!210 (List!48056 K!9039) Option!10161)

(assert (=> d!1266563 (= (getValueByKey!210 lt!1521652 (_1!26212 lt!1521467)) (Some!10160 (_2!26212 lt!1521467)))))

(declare-fun lemmaContainsTupThenGetReturnValue!41 (List!48056 K!9039 V!9241) Unit!66773)

(assert (=> d!1266563 (= lt!1521649 (lemmaContainsTupThenGetReturnValue!41 lt!1521652 (_1!26212 lt!1521467) (_2!26212 lt!1521467)))))

(declare-fun insertNoDuplicatedKeys!22 (List!48056 K!9039 V!9241) List!48056)

(assert (=> d!1266563 (= lt!1521652 (insertNoDuplicatedKeys!22 (toList!2189 lt!1521470) (_1!26212 lt!1521467) (_2!26212 lt!1521467)))))

(assert (=> d!1266563 (= (+!168 lt!1521470 lt!1521467) lt!1521651)))

(declare-fun b!4299657 () Bool)

(declare-fun res!1762231 () Bool)

(assert (=> b!4299657 (=> (not res!1762231) (not e!2672515))))

(assert (=> b!4299657 (= res!1762231 (= (getValueByKey!210 (toList!2189 lt!1521651) (_1!26212 lt!1521467)) (Some!10160 (_2!26212 lt!1521467))))))

(declare-fun b!4299658 () Bool)

(declare-fun contains!9856 (List!48056 tuple2!45866) Bool)

(assert (=> b!4299658 (= e!2672515 (contains!9856 (toList!2189 lt!1521651) lt!1521467))))

(assert (= (and d!1266563 res!1762230) b!4299657))

(assert (= (and b!4299657 res!1762231) b!4299658))

(declare-fun m!4891889 () Bool)

(assert (=> d!1266563 m!4891889))

(declare-fun m!4891891 () Bool)

(assert (=> d!1266563 m!4891891))

(declare-fun m!4891893 () Bool)

(assert (=> d!1266563 m!4891893))

(declare-fun m!4891895 () Bool)

(assert (=> d!1266563 m!4891895))

(declare-fun m!4891897 () Bool)

(assert (=> b!4299657 m!4891897))

(declare-fun m!4891899 () Bool)

(assert (=> b!4299658 m!4891899))

(assert (=> b!4299574 d!1266563))

(declare-fun e!2672518 () Bool)

(declare-fun b!4299663 () Bool)

(declare-fun tp!1320958 () Bool)

(assert (=> b!4299663 (= e!2672518 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320958))))

(assert (=> b!4299577 (= tp!1320952 e!2672518)))

(assert (= (and b!4299577 ((_ is Cons!47932) (zeroValue!4776 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64))))))) b!4299663))

(declare-fun e!2672519 () Bool)

(declare-fun b!4299664 () Bool)

(declare-fun tp!1320959 () Bool)

(assert (=> b!4299664 (= e!2672519 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320959))))

(assert (=> b!4299577 (= tp!1320948 e!2672519)))

(assert (= (and b!4299577 ((_ is Cons!47932) (minValue!4776 (v!41893 (underlying!9263 (v!41894 (underlying!9264 hm!64))))))) b!4299664))

(declare-fun b!4299665 () Bool)

(declare-fun tp!1320960 () Bool)

(declare-fun e!2672520 () Bool)

(assert (=> b!4299665 (= e!2672520 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320960))))

(assert (=> b!4299579 (= tp!1320951 e!2672520)))

(assert (= (and b!4299579 ((_ is Cons!47932) mapDefault!20289)) b!4299665))

(declare-fun tp!1320967 () Bool)

(declare-fun e!2672525 () Bool)

(declare-fun b!4299672 () Bool)

(assert (=> b!4299672 (= e!2672525 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320967))))

(declare-fun e!2672526 () Bool)

(declare-fun b!4299673 () Bool)

(declare-fun tp!1320968 () Bool)

(assert (=> b!4299673 (= e!2672526 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320968))))

(declare-fun mapIsEmpty!20292 () Bool)

(declare-fun mapRes!20292 () Bool)

(assert (=> mapIsEmpty!20292 mapRes!20292))

(declare-fun condMapEmpty!20292 () Bool)

(declare-fun mapDefault!20292 () List!48056)

(assert (=> mapNonEmpty!20289 (= condMapEmpty!20292 (= mapRest!20289 ((as const (Array (_ BitVec 32) List!48056)) mapDefault!20292)))))

(assert (=> mapNonEmpty!20289 (= tp!1320949 (and e!2672526 mapRes!20292))))

(declare-fun mapNonEmpty!20292 () Bool)

(declare-fun tp!1320969 () Bool)

(assert (=> mapNonEmpty!20292 (= mapRes!20292 (and tp!1320969 e!2672525))))

(declare-fun mapValue!20292 () List!48056)

(declare-fun mapKey!20292 () (_ BitVec 32))

(declare-fun mapRest!20292 () (Array (_ BitVec 32) List!48056))

(assert (=> mapNonEmpty!20292 (= mapRest!20289 (store mapRest!20292 mapKey!20292 mapValue!20292))))

(assert (= (and mapNonEmpty!20289 condMapEmpty!20292) mapIsEmpty!20292))

(assert (= (and mapNonEmpty!20289 (not condMapEmpty!20292)) mapNonEmpty!20292))

(assert (= (and mapNonEmpty!20292 ((_ is Cons!47932) mapValue!20292)) b!4299672))

(assert (= (and mapNonEmpty!20289 ((_ is Cons!47932) mapDefault!20292)) b!4299673))

(declare-fun m!4891901 () Bool)

(assert (=> mapNonEmpty!20292 m!4891901))

(declare-fun tp!1320970 () Bool)

(declare-fun e!2672527 () Bool)

(declare-fun b!4299674 () Bool)

(assert (=> b!4299674 (= e!2672527 (and tp_is_empty!23241 tp_is_empty!23243 tp!1320970))))

(assert (=> mapNonEmpty!20289 (= tp!1320955 e!2672527)))

(assert (= (and mapNonEmpty!20289 ((_ is Cons!47932) mapValue!20289)) b!4299674))

(declare-fun b_lambda!126309 () Bool)

(assert (= b_lambda!126307 (or (and start!412820 b_free!128003) b_lambda!126309)))

(check-sat (not bm!295958) (not bm!295977) (not bm!295980) (not b!4299657) (not bm!295970) (not d!1266547) (not b!4299672) (not bm!295967) (not b!4299658) (not bm!295953) (not bm!295964) (not b!4299588) tp_is_empty!23243 (not mapNonEmpty!20292) (not bm!295957) (not bm!295976) (not b!4299589) (not b!4299636) (not bm!295971) (not d!1266561) (not bm!295963) (not bm!295972) (not b!4299674) (not bm!295981) (not bm!295979) (not b_next!128705) (not bm!295969) (not b!4299648) (not b!4299673) (not bm!295951) (not b_lambda!126305) (not d!1266559) (not b!4299649) (not b!4299664) (not b!4299634) (not bm!295952) (not bm!295975) (not bm!295954) (not bm!295955) (not b!4299595) (not d!1266555) b_and!339315 (not bm!295960) (not d!1266549) (not b!4299638) (not b_lambda!126309) (not bm!295965) (not bm!295973) tp_is_empty!23241 (not bm!295959) (not b_next!128709) (not bm!295966) (not b!4299642) (not bm!295978) b_and!339319 (not d!1266563) (not b!4299663) (not bm!295956) (not bm!295961) (not bm!295968) (not b_next!128707) (not b!4299665) b_and!339323)
(check-sat (not b_next!128705) b_and!339315 (not b_next!128709) b_and!339319 (not b_next!128707) b_and!339323)
