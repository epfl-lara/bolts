; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297276 () Bool)

(assert start!297276)

(declare-fun b!3174519 () Bool)

(declare-fun b_free!83417 () Bool)

(declare-fun b_next!84121 () Bool)

(assert (=> b!3174519 (= b_free!83417 (not b_next!84121))))

(declare-fun tp!1003492 () Bool)

(declare-fun b_and!209711 () Bool)

(assert (=> b!3174519 (= tp!1003492 b_and!209711)))

(declare-fun b!3174527 () Bool)

(declare-fun b_free!83419 () Bool)

(declare-fun b_next!84123 () Bool)

(assert (=> b!3174527 (= b_free!83419 (not b_next!84123))))

(declare-fun tp!1003489 () Bool)

(declare-fun b_and!209713 () Bool)

(assert (=> b!3174527 (= tp!1003489 b_and!209713)))

(declare-fun b!3174513 () Bool)

(declare-fun e!1977273 () Bool)

(declare-fun tp_is_empty!17189 () Bool)

(assert (=> b!3174513 (= e!1977273 tp_is_empty!17189)))

(declare-fun res!1289888 () Bool)

(declare-fun e!1977271 () Bool)

(assert (=> start!297276 (=> (not res!1289888) (not e!1977271))))

(declare-datatypes ((C!19812 0))(
  ( (C!19813 (val!11942 Int)) )
))
(declare-datatypes ((Regex!9813 0))(
  ( (ElementMatch!9813 (c!533534 C!19812)) (Concat!15134 (regOne!20138 Regex!9813) (regTwo!20138 Regex!9813)) (EmptyExpr!9813) (Star!9813 (reg!10142 Regex!9813)) (EmptyLang!9813) (Union!9813 (regOne!20139 Regex!9813) (regTwo!20139 Regex!9813)) )
))
(declare-datatypes ((tuple2!34922 0))(
  ( (tuple2!34923 (_1!20593 Regex!9813) (_2!20593 C!19812)) )
))
(declare-datatypes ((tuple2!34924 0))(
  ( (tuple2!34925 (_1!20594 tuple2!34922) (_2!20594 Regex!9813)) )
))
(declare-datatypes ((List!35665 0))(
  ( (Nil!35541) (Cons!35541 (h!40961 tuple2!34924) (t!234756 List!35665)) )
))
(declare-datatypes ((array!15192 0))(
  ( (array!15193 (arr!6758 (Array (_ BitVec 32) (_ BitVec 64))) (size!26844 (_ BitVec 32))) )
))
(declare-datatypes ((array!15194 0))(
  ( (array!15195 (arr!6759 (Array (_ BitVec 32) List!35665)) (size!26845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8468 0))(
  ( (LongMapFixedSize!8469 (defaultEntry!4619 Int) (mask!10934 (_ BitVec 32)) (extraKeys!4483 (_ BitVec 32)) (zeroValue!4493 List!35665) (minValue!4493 List!35665) (_size!8511 (_ BitVec 32)) (_keys!4534 array!15192) (_values!4515 array!15194) (_vacant!4295 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16745 0))(
  ( (Cell!16746 (v!35328 LongMapFixedSize!8468)) )
))
(declare-datatypes ((MutLongMap!4234 0))(
  ( (LongMap!4234 (underlying!8697 Cell!16745)) (MutLongMapExt!4233 (__x!22808 Int)) )
))
(declare-datatypes ((Cell!16747 0))(
  ( (Cell!16748 (v!35329 MutLongMap!4234)) )
))
(declare-datatypes ((Hashable!4150 0))(
  ( (HashableExt!4149 (__x!22809 Int)) )
))
(declare-datatypes ((MutableMap!4140 0))(
  ( (MutableMapExt!4139 (__x!22810 Int)) (HashMap!4140 (underlying!8698 Cell!16747) (hashF!6182 Hashable!4150) (_size!8512 (_ BitVec 32)) (defaultValue!4311 Int)) )
))
(declare-datatypes ((Cache!550 0))(
  ( (Cache!551 (cache!4286 MutableMap!4140)) )
))
(declare-fun thiss!28445 () Cache!550)

(declare-fun validCacheMap!112 (MutableMap!4140) Bool)

(assert (=> start!297276 (= res!1289888 (validCacheMap!112 (cache!4286 thiss!28445)))))

(assert (=> start!297276 e!1977271))

(declare-fun e!1977276 () Bool)

(declare-fun inv!48283 (Cache!550) Bool)

(assert (=> start!297276 (and (inv!48283 thiss!28445) e!1977276)))

(assert (=> start!297276 e!1977273))

(assert (=> start!297276 tp_is_empty!17189))

(declare-fun b!3174514 () Bool)

(declare-fun res!1289887 () Bool)

(assert (=> b!3174514 (=> (not res!1289887) (not e!1977271))))

(declare-fun r!4705 () Regex!9813)

(declare-fun c!6979 () C!19812)

(declare-fun contains!6258 (MutableMap!4140 tuple2!34922) Bool)

(assert (=> b!3174514 (= res!1289887 (not (contains!6258 (cache!4286 thiss!28445) (tuple2!34923 r!4705 c!6979))))))

(declare-fun b!3174515 () Bool)

(declare-fun res!1289886 () Bool)

(assert (=> b!3174515 (=> (not res!1289886) (not e!1977271))))

(get-info :version)

(assert (=> b!3174515 (= res!1289886 ((_ is HashMap!4140) (cache!4286 thiss!28445)))))

(declare-fun b!3174516 () Bool)

(declare-fun tp!1003494 () Bool)

(declare-fun tp!1003491 () Bool)

(assert (=> b!3174516 (= e!1977273 (and tp!1003494 tp!1003491))))

(declare-fun b!3174517 () Bool)

(declare-fun res!1289885 () Bool)

(assert (=> b!3174517 (=> (not res!1289885) (not e!1977271))))

(declare-fun validRegex!4515 (Regex!9813) Bool)

(assert (=> b!3174517 (= res!1289885 (validRegex!4515 r!4705))))

(declare-fun b!3174518 () Bool)

(declare-fun e!1977275 () Bool)

(declare-fun e!1977274 () Bool)

(assert (=> b!3174518 (= e!1977275 e!1977274)))

(declare-fun mapNonEmpty!19169 () Bool)

(declare-fun mapRes!19169 () Bool)

(declare-fun tp!1003486 () Bool)

(declare-fun tp!1003488 () Bool)

(assert (=> mapNonEmpty!19169 (= mapRes!19169 (and tp!1003486 tp!1003488))))

(declare-fun mapKey!19169 () (_ BitVec 32))

(declare-fun mapRest!19169 () (Array (_ BitVec 32) List!35665))

(declare-fun mapValue!19169 () List!35665)

(assert (=> mapNonEmpty!19169 (= (arr!6759 (_values!4515 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) (store mapRest!19169 mapKey!19169 mapValue!19169))))

(declare-fun mapIsEmpty!19169 () Bool)

(assert (=> mapIsEmpty!19169 mapRes!19169))

(declare-fun tp!1003490 () Bool)

(declare-fun e!1977277 () Bool)

(declare-fun e!1977269 () Bool)

(declare-fun tp!1003496 () Bool)

(declare-fun array_inv!4850 (array!15192) Bool)

(declare-fun array_inv!4851 (array!15194) Bool)

(assert (=> b!3174519 (= e!1977269 (and tp!1003492 tp!1003490 tp!1003496 (array_inv!4850 (_keys!4534 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) (array_inv!4851 (_values!4515 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) e!1977277))))

(declare-fun b!3174520 () Bool)

(declare-fun tp!1003493 () Bool)

(declare-fun tp!1003495 () Bool)

(assert (=> b!3174520 (= e!1977273 (and tp!1003493 tp!1003495))))

(declare-fun b!3174521 () Bool)

(declare-fun e!1977272 () Bool)

(declare-fun lt!1067525 () MutLongMap!4234)

(assert (=> b!3174521 (= e!1977272 (and e!1977275 ((_ is LongMap!4234) lt!1067525)))))

(assert (=> b!3174521 (= lt!1067525 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))

(declare-fun b!3174522 () Bool)

(declare-fun tp!1003487 () Bool)

(assert (=> b!3174522 (= e!1977277 (and tp!1003487 mapRes!19169))))

(declare-fun condMapEmpty!19169 () Bool)

(declare-fun mapDefault!19169 () List!35665)

(assert (=> b!3174522 (= condMapEmpty!19169 (= (arr!6759 (_values!4515 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35665)) mapDefault!19169)))))

(declare-fun b!3174523 () Bool)

(declare-fun e!1977270 () Bool)

(assert (=> b!3174523 (= e!1977276 e!1977270)))

(declare-fun b!3174524 () Bool)

(declare-fun valid!3291 (MutableMap!4140) Bool)

(assert (=> b!3174524 (= e!1977271 (not (valid!3291 (cache!4286 thiss!28445))))))

(declare-fun b!3174525 () Bool)

(assert (=> b!3174525 (= e!1977274 e!1977269)))

(declare-fun b!3174526 () Bool)

(declare-fun tp!1003485 () Bool)

(assert (=> b!3174526 (= e!1977273 tp!1003485)))

(assert (=> b!3174527 (= e!1977270 (and e!1977272 tp!1003489))))

(assert (= (and start!297276 res!1289888) b!3174517))

(assert (= (and b!3174517 res!1289885) b!3174514))

(assert (= (and b!3174514 res!1289887) b!3174515))

(assert (= (and b!3174515 res!1289886) b!3174524))

(assert (= (and b!3174522 condMapEmpty!19169) mapIsEmpty!19169))

(assert (= (and b!3174522 (not condMapEmpty!19169)) mapNonEmpty!19169))

(assert (= b!3174519 b!3174522))

(assert (= b!3174525 b!3174519))

(assert (= b!3174518 b!3174525))

(assert (= (and b!3174521 ((_ is LongMap!4234) (v!35329 (underlying!8698 (cache!4286 thiss!28445))))) b!3174518))

(assert (= b!3174527 b!3174521))

(assert (= (and b!3174523 ((_ is HashMap!4140) (cache!4286 thiss!28445))) b!3174527))

(assert (= start!297276 b!3174523))

(assert (= (and start!297276 ((_ is ElementMatch!9813) r!4705)) b!3174513))

(assert (= (and start!297276 ((_ is Concat!15134) r!4705)) b!3174520))

(assert (= (and start!297276 ((_ is Star!9813) r!4705)) b!3174526))

(assert (= (and start!297276 ((_ is Union!9813) r!4705)) b!3174516))

(declare-fun m!3431771 () Bool)

(assert (=> mapNonEmpty!19169 m!3431771))

(declare-fun m!3431773 () Bool)

(assert (=> b!3174517 m!3431773))

(declare-fun m!3431775 () Bool)

(assert (=> start!297276 m!3431775))

(declare-fun m!3431777 () Bool)

(assert (=> start!297276 m!3431777))

(declare-fun m!3431779 () Bool)

(assert (=> b!3174519 m!3431779))

(declare-fun m!3431781 () Bool)

(assert (=> b!3174519 m!3431781))

(declare-fun m!3431783 () Bool)

(assert (=> b!3174514 m!3431783))

(declare-fun m!3431785 () Bool)

(assert (=> b!3174524 m!3431785))

(check-sat (not start!297276) (not b!3174522) (not b!3174526) (not b!3174519) tp_is_empty!17189 (not mapNonEmpty!19169) b_and!209713 (not b!3174514) (not b!3174524) (not b!3174516) (not b!3174517) b_and!209711 (not b_next!84121) (not b_next!84123) (not b!3174520))
(check-sat b_and!209711 b_and!209713 (not b_next!84121) (not b_next!84123))
(get-model)

(declare-fun b!3174546 () Bool)

(declare-fun e!1977296 () Bool)

(declare-fun call!230755 () Bool)

(assert (=> b!3174546 (= e!1977296 call!230755)))

(declare-fun d!869442 () Bool)

(declare-fun res!1289902 () Bool)

(declare-fun e!1977299 () Bool)

(assert (=> d!869442 (=> res!1289902 e!1977299)))

(assert (=> d!869442 (= res!1289902 ((_ is ElementMatch!9813) r!4705))))

(assert (=> d!869442 (= (validRegex!4515 r!4705) e!1977299)))

(declare-fun b!3174547 () Bool)

(declare-fun e!1977297 () Bool)

(declare-fun e!1977295 () Bool)

(assert (=> b!3174547 (= e!1977297 e!1977295)))

(declare-fun c!533539 () Bool)

(assert (=> b!3174547 (= c!533539 ((_ is Union!9813) r!4705))))

(declare-fun b!3174548 () Bool)

(assert (=> b!3174548 (= e!1977299 e!1977297)))

(declare-fun c!533540 () Bool)

(assert (=> b!3174548 (= c!533540 ((_ is Star!9813) r!4705))))

(declare-fun b!3174549 () Bool)

(declare-fun e!1977293 () Bool)

(declare-fun call!230753 () Bool)

(assert (=> b!3174549 (= e!1977293 call!230753)))

(declare-fun bm!230748 () Bool)

(assert (=> bm!230748 (= call!230753 call!230755)))

(declare-fun b!3174550 () Bool)

(declare-fun res!1289903 () Bool)

(declare-fun e!1977294 () Bool)

(assert (=> b!3174550 (=> res!1289903 e!1977294)))

(assert (=> b!3174550 (= res!1289903 (not ((_ is Concat!15134) r!4705)))))

(assert (=> b!3174550 (= e!1977295 e!1977294)))

(declare-fun bm!230749 () Bool)

(declare-fun call!230754 () Bool)

(assert (=> bm!230749 (= call!230754 (validRegex!4515 (ite c!533539 (regOne!20139 r!4705) (regOne!20138 r!4705))))))

(declare-fun b!3174551 () Bool)

(declare-fun res!1289901 () Bool)

(assert (=> b!3174551 (=> (not res!1289901) (not e!1977293))))

(assert (=> b!3174551 (= res!1289901 call!230754)))

(assert (=> b!3174551 (= e!1977295 e!1977293)))

(declare-fun b!3174552 () Bool)

(declare-fun e!1977298 () Bool)

(assert (=> b!3174552 (= e!1977298 call!230753)))

(declare-fun bm!230750 () Bool)

(assert (=> bm!230750 (= call!230755 (validRegex!4515 (ite c!533540 (reg!10142 r!4705) (ite c!533539 (regTwo!20139 r!4705) (regTwo!20138 r!4705)))))))

(declare-fun b!3174553 () Bool)

(assert (=> b!3174553 (= e!1977294 e!1977298)))

(declare-fun res!1289900 () Bool)

(assert (=> b!3174553 (=> (not res!1289900) (not e!1977298))))

(assert (=> b!3174553 (= res!1289900 call!230754)))

(declare-fun b!3174554 () Bool)

(assert (=> b!3174554 (= e!1977297 e!1977296)))

(declare-fun res!1289899 () Bool)

(declare-fun nullable!3371 (Regex!9813) Bool)

(assert (=> b!3174554 (= res!1289899 (not (nullable!3371 (reg!10142 r!4705))))))

(assert (=> b!3174554 (=> (not res!1289899) (not e!1977296))))

(assert (= (and d!869442 (not res!1289902)) b!3174548))

(assert (= (and b!3174548 c!533540) b!3174554))

(assert (= (and b!3174548 (not c!533540)) b!3174547))

(assert (= (and b!3174554 res!1289899) b!3174546))

(assert (= (and b!3174547 c!533539) b!3174551))

(assert (= (and b!3174547 (not c!533539)) b!3174550))

(assert (= (and b!3174551 res!1289901) b!3174549))

(assert (= (and b!3174550 (not res!1289903)) b!3174553))

(assert (= (and b!3174553 res!1289900) b!3174552))

(assert (= (or b!3174549 b!3174552) bm!230748))

(assert (= (or b!3174551 b!3174553) bm!230749))

(assert (= (or b!3174546 bm!230748) bm!230750))

(declare-fun m!3431787 () Bool)

(assert (=> bm!230749 m!3431787))

(declare-fun m!3431789 () Bool)

(assert (=> bm!230750 m!3431789))

(declare-fun m!3431791 () Bool)

(assert (=> b!3174554 m!3431791))

(assert (=> b!3174517 d!869442))

(declare-fun d!869444 () Bool)

(assert (=> d!869444 (= (array_inv!4850 (_keys!4534 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) (bvsge (size!26844 (_keys!4534 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174519 d!869444))

(declare-fun d!869446 () Bool)

(assert (=> d!869446 (= (array_inv!4851 (_values!4515 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) (bvsge (size!26845 (_values!4515 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3174519 d!869446))

(declare-fun d!869448 () Bool)

(declare-fun res!1289910 () Bool)

(declare-fun e!1977304 () Bool)

(assert (=> d!869448 (=> (not res!1289910) (not e!1977304))))

(assert (=> d!869448 (= res!1289910 (valid!3291 (cache!4286 thiss!28445)))))

(assert (=> d!869448 (= (validCacheMap!112 (cache!4286 thiss!28445)) e!1977304)))

(declare-fun b!3174561 () Bool)

(declare-fun res!1289911 () Bool)

(assert (=> b!3174561 (=> (not res!1289911) (not e!1977304))))

(declare-fun invariantList!503 (List!35665) Bool)

(declare-datatypes ((ListMap!1363 0))(
  ( (ListMap!1364 (toList!2105 List!35665)) )
))
(declare-fun map!7987 (MutableMap!4140) ListMap!1363)

(assert (=> b!3174561 (= res!1289911 (invariantList!503 (toList!2105 (map!7987 (cache!4286 thiss!28445)))))))

(declare-fun b!3174562 () Bool)

(declare-fun lambda!116165 () Int)

(declare-fun forall!7187 (List!35665 Int) Bool)

(assert (=> b!3174562 (= e!1977304 (forall!7187 (toList!2105 (map!7987 (cache!4286 thiss!28445))) lambda!116165))))

(assert (= (and d!869448 res!1289910) b!3174561))

(assert (= (and b!3174561 res!1289911) b!3174562))

(assert (=> d!869448 m!3431785))

(declare-fun m!3431794 () Bool)

(assert (=> b!3174561 m!3431794))

(declare-fun m!3431796 () Bool)

(assert (=> b!3174561 m!3431796))

(assert (=> b!3174562 m!3431794))

(declare-fun m!3431798 () Bool)

(assert (=> b!3174562 m!3431798))

(assert (=> start!297276 d!869448))

(declare-fun d!869450 () Bool)

(declare-fun res!1289914 () Bool)

(declare-fun e!1977307 () Bool)

(assert (=> d!869450 (=> (not res!1289914) (not e!1977307))))

(assert (=> d!869450 (= res!1289914 ((_ is HashMap!4140) (cache!4286 thiss!28445)))))

(assert (=> d!869450 (= (inv!48283 thiss!28445) e!1977307)))

(declare-fun b!3174565 () Bool)

(assert (=> b!3174565 (= e!1977307 (validCacheMap!112 (cache!4286 thiss!28445)))))

(assert (= (and d!869450 res!1289914) b!3174565))

(assert (=> b!3174565 m!3431775))

(assert (=> start!297276 d!869450))

(declare-fun d!869452 () Bool)

(declare-fun res!1289919 () Bool)

(declare-fun e!1977310 () Bool)

(assert (=> d!869452 (=> (not res!1289919) (not e!1977310))))

(declare-fun valid!3292 (MutLongMap!4234) Bool)

(assert (=> d!869452 (= res!1289919 (valid!3292 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))))))

(assert (=> d!869452 (= (valid!3291 (cache!4286 thiss!28445)) e!1977310)))

(declare-fun b!3174570 () Bool)

(declare-fun res!1289920 () Bool)

(assert (=> b!3174570 (=> (not res!1289920) (not e!1977310))))

(declare-fun lambda!116168 () Int)

(declare-datatypes ((tuple2!34926 0))(
  ( (tuple2!34927 (_1!20595 (_ BitVec 64)) (_2!20595 List!35665)) )
))
(declare-datatypes ((List!35666 0))(
  ( (Nil!35542) (Cons!35542 (h!40962 tuple2!34926) (t!234757 List!35666)) )
))
(declare-fun forall!7188 (List!35666 Int) Bool)

(declare-datatypes ((ListLongMap!759 0))(
  ( (ListLongMap!760 (toList!2106 List!35666)) )
))
(declare-fun map!7988 (MutLongMap!4234) ListLongMap!759)

(assert (=> b!3174570 (= res!1289920 (forall!7188 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))) lambda!116168))))

(declare-fun b!3174571 () Bool)

(declare-fun allKeysSameHashInMap!249 (ListLongMap!759 Hashable!4150) Bool)

(assert (=> b!3174571 (= e!1977310 (allKeysSameHashInMap!249 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))) (hashF!6182 (cache!4286 thiss!28445))))))

(assert (= (and d!869452 res!1289919) b!3174570))

(assert (= (and b!3174570 res!1289920) b!3174571))

(declare-fun m!3431800 () Bool)

(assert (=> d!869452 m!3431800))

(declare-fun m!3431802 () Bool)

(assert (=> b!3174570 m!3431802))

(declare-fun m!3431804 () Bool)

(assert (=> b!3174570 m!3431804))

(assert (=> b!3174571 m!3431802))

(assert (=> b!3174571 m!3431802))

(declare-fun m!3431806 () Bool)

(assert (=> b!3174571 m!3431806))

(assert (=> b!3174524 d!869452))

(declare-fun bs!539662 () Bool)

(declare-fun b!3174594 () Bool)

(assert (= bs!539662 (and b!3174594 b!3174570)))

(declare-fun lambda!116171 () Int)

(assert (=> bs!539662 (= lambda!116171 lambda!116168)))

(declare-fun bm!230763 () Bool)

(declare-fun call!230772 () Bool)

(declare-datatypes ((Option!6941 0))(
  ( (None!6940) (Some!6940 (v!35330 tuple2!34924)) )
))
(declare-fun call!230768 () Option!6941)

(declare-fun isDefined!5447 (Option!6941) Bool)

(assert (=> bm!230763 (= call!230772 (isDefined!5447 call!230768))))

(declare-fun lt!1067581 () (_ BitVec 64))

(declare-datatypes ((Unit!50038 0))(
  ( (Unit!50039) )
))
(declare-fun e!1977329 () Unit!50038)

(declare-fun forallContained!1084 (List!35666 Int tuple2!34926) Unit!50038)

(declare-fun apply!7993 (MutLongMap!4234 (_ BitVec 64)) List!35665)

(assert (=> b!3174594 (= e!1977329 (forallContained!1084 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))) lambda!116171 (tuple2!34927 lt!1067581 (apply!7993 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581))))))

(declare-fun c!533552 () Bool)

(declare-fun contains!6259 (List!35666 tuple2!34926) Bool)

(assert (=> b!3174594 (= c!533552 (not (contains!6259 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))) (tuple2!34927 lt!1067581 (apply!7993 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581)))))))

(declare-fun lt!1067571 () Unit!50038)

(declare-fun e!1977326 () Unit!50038)

(assert (=> b!3174594 (= lt!1067571 e!1977326)))

(declare-fun c!533550 () Bool)

(declare-fun call!230771 () (_ BitVec 64))

(declare-fun call!230773 () List!35665)

(declare-fun lt!1067582 () ListLongMap!759)

(declare-fun call!230770 () ListLongMap!759)

(declare-fun bm!230764 () Bool)

(declare-fun apply!7994 (ListLongMap!759 (_ BitVec 64)) List!35665)

(assert (=> bm!230764 (= call!230773 (apply!7994 (ite c!533550 lt!1067582 call!230770) call!230771))))

(declare-fun d!869454 () Bool)

(declare-fun lt!1067580 () Bool)

(declare-fun contains!6260 (ListMap!1363 tuple2!34922) Bool)

(assert (=> d!869454 (= lt!1067580 (contains!6260 (map!7987 (cache!4286 thiss!28445)) (tuple2!34923 r!4705 c!6979)))))

(declare-fun e!1977331 () Bool)

(assert (=> d!869454 (= lt!1067580 e!1977331)))

(declare-fun res!1289929 () Bool)

(assert (=> d!869454 (=> (not res!1289929) (not e!1977331))))

(declare-fun contains!6261 (MutLongMap!4234 (_ BitVec 64)) Bool)

(assert (=> d!869454 (= res!1289929 (contains!6261 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581))))

(declare-fun lt!1067573 () Unit!50038)

(declare-fun e!1977325 () Unit!50038)

(assert (=> d!869454 (= lt!1067573 e!1977325)))

(declare-fun extractMap!249 (List!35666) ListMap!1363)

(assert (=> d!869454 (= c!533550 (contains!6260 (extractMap!249 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))))) (tuple2!34923 r!4705 c!6979)))))

(declare-fun lt!1067566 () Unit!50038)

(assert (=> d!869454 (= lt!1067566 e!1977329)))

(declare-fun c!533549 () Bool)

(assert (=> d!869454 (= c!533549 (contains!6261 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581))))

(declare-fun hash!819 (Hashable!4150 tuple2!34922) (_ BitVec 64))

(assert (=> d!869454 (= lt!1067581 (hash!819 (hashF!6182 (cache!4286 thiss!28445)) (tuple2!34923 r!4705 c!6979)))))

(assert (=> d!869454 (valid!3291 (cache!4286 thiss!28445))))

(assert (=> d!869454 (= (contains!6258 (cache!4286 thiss!28445) (tuple2!34923 r!4705 c!6979)) lt!1067580)))

(declare-fun b!3174595 () Bool)

(declare-fun e!1977328 () Unit!50038)

(assert (=> b!3174595 (= e!1977325 e!1977328)))

(declare-fun res!1289927 () Bool)

(declare-fun call!230769 () Bool)

(assert (=> b!3174595 (= res!1289927 call!230769)))

(declare-fun e!1977330 () Bool)

(assert (=> b!3174595 (=> (not res!1289927) (not e!1977330))))

(declare-fun c!533551 () Bool)

(assert (=> b!3174595 (= c!533551 e!1977330)))

(declare-fun b!3174596 () Bool)

(declare-fun Unit!50040 () Unit!50038)

(assert (=> b!3174596 (= e!1977326 Unit!50040)))

(declare-fun b!3174597 () Bool)

(assert (=> b!3174597 false))

(declare-fun lt!1067579 () Unit!50038)

(declare-fun lt!1067575 () Unit!50038)

(assert (=> b!3174597 (= lt!1067579 lt!1067575)))

(declare-fun lt!1067578 () List!35666)

(declare-fun lt!1067583 () List!35665)

(assert (=> b!3174597 (contains!6259 lt!1067578 (tuple2!34927 lt!1067581 lt!1067583))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!112 (List!35666 (_ BitVec 64) List!35665) Unit!50038)

(assert (=> b!3174597 (= lt!1067575 (lemmaGetValueByKeyImpliesContainsTuple!112 lt!1067578 lt!1067581 lt!1067583))))

(assert (=> b!3174597 (= lt!1067583 (apply!7993 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581))))

(assert (=> b!3174597 (= lt!1067578 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))))

(declare-fun lt!1067574 () Unit!50038)

(declare-fun lt!1067567 () Unit!50038)

(assert (=> b!3174597 (= lt!1067574 lt!1067567)))

(declare-fun lt!1067572 () List!35666)

(declare-datatypes ((Option!6942 0))(
  ( (None!6941) (Some!6941 (v!35331 List!35665)) )
))
(declare-fun isDefined!5448 (Option!6942) Bool)

(declare-fun getValueByKey!196 (List!35666 (_ BitVec 64)) Option!6942)

(assert (=> b!3174597 (isDefined!5448 (getValueByKey!196 lt!1067572 lt!1067581))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!140 (List!35666 (_ BitVec 64)) Unit!50038)

(assert (=> b!3174597 (= lt!1067567 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 lt!1067572 lt!1067581))))

(assert (=> b!3174597 (= lt!1067572 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))))

(declare-fun lt!1067585 () Unit!50038)

(declare-fun lt!1067584 () Unit!50038)

(assert (=> b!3174597 (= lt!1067585 lt!1067584)))

(declare-fun lt!1067576 () List!35666)

(declare-fun containsKey!208 (List!35666 (_ BitVec 64)) Bool)

(assert (=> b!3174597 (containsKey!208 lt!1067576 lt!1067581)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!107 (List!35666 (_ BitVec 64)) Unit!50038)

(assert (=> b!3174597 (= lt!1067584 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!107 lt!1067576 lt!1067581))))

(assert (=> b!3174597 (= lt!1067576 (toList!2106 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445))))))))

(declare-fun Unit!50041 () Unit!50038)

(assert (=> b!3174597 (= e!1977326 Unit!50041)))

(declare-fun b!3174598 () Bool)

(declare-fun Unit!50042 () Unit!50038)

(assert (=> b!3174598 (= e!1977328 Unit!50042)))

(declare-fun b!3174599 () Bool)

(declare-fun lt!1067569 () Unit!50038)

(assert (=> b!3174599 (= e!1977325 lt!1067569)))

(assert (=> b!3174599 (= lt!1067582 call!230770)))

(declare-fun lemmaInGenericMapThenInLongMap!106 (ListLongMap!759 tuple2!34922 Hashable!4150) Unit!50038)

(assert (=> b!3174599 (= lt!1067569 (lemmaInGenericMapThenInLongMap!106 lt!1067582 (tuple2!34923 r!4705 c!6979) (hashF!6182 (cache!4286 thiss!28445))))))

(declare-fun res!1289928 () Bool)

(assert (=> b!3174599 (= res!1289928 call!230769)))

(declare-fun e!1977327 () Bool)

(assert (=> b!3174599 (=> (not res!1289928) (not e!1977327))))

(assert (=> b!3174599 e!1977327))

(declare-fun b!3174600 () Bool)

(assert (=> b!3174600 false))

(declare-fun lt!1067568 () Unit!50038)

(declare-fun lt!1067570 () Unit!50038)

(assert (=> b!3174600 (= lt!1067568 lt!1067570)))

(declare-fun lt!1067577 () ListLongMap!759)

(assert (=> b!3174600 (contains!6260 (extractMap!249 (toList!2106 lt!1067577)) (tuple2!34923 r!4705 c!6979))))

(declare-fun lemmaInLongMapThenInGenericMap!106 (ListLongMap!759 tuple2!34922 Hashable!4150) Unit!50038)

(assert (=> b!3174600 (= lt!1067570 (lemmaInLongMapThenInGenericMap!106 lt!1067577 (tuple2!34923 r!4705 c!6979) (hashF!6182 (cache!4286 thiss!28445))))))

(assert (=> b!3174600 (= lt!1067577 call!230770)))

(declare-fun Unit!50043 () Unit!50038)

(assert (=> b!3174600 (= e!1977328 Unit!50043)))

(declare-fun b!3174601 () Bool)

(declare-fun getPair!106 (List!35665 tuple2!34922) Option!6941)

(assert (=> b!3174601 (= e!1977331 (isDefined!5447 (getPair!106 (apply!7993 (v!35329 (underlying!8698 (cache!4286 thiss!28445))) lt!1067581) (tuple2!34923 r!4705 c!6979))))))

(declare-fun bm!230765 () Bool)

(assert (=> bm!230765 (= call!230768 (getPair!106 call!230773 (tuple2!34923 r!4705 c!6979)))))

(declare-fun b!3174602 () Bool)

(assert (=> b!3174602 (= e!1977330 call!230772)))

(declare-fun b!3174603 () Bool)

(assert (=> b!3174603 (= e!1977327 call!230772)))

(declare-fun bm!230766 () Bool)

(assert (=> bm!230766 (= call!230770 (map!7988 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))))))

(declare-fun bm!230767 () Bool)

(declare-fun contains!6262 (ListLongMap!759 (_ BitVec 64)) Bool)

(assert (=> bm!230767 (= call!230769 (contains!6262 (ite c!533550 lt!1067582 call!230770) call!230771))))

(declare-fun b!3174604 () Bool)

(declare-fun Unit!50044 () Unit!50038)

(assert (=> b!3174604 (= e!1977329 Unit!50044)))

(declare-fun bm!230768 () Bool)

(assert (=> bm!230768 (= call!230771 (hash!819 (hashF!6182 (cache!4286 thiss!28445)) (tuple2!34923 r!4705 c!6979)))))

(assert (= (and d!869454 c!533549) b!3174594))

(assert (= (and d!869454 (not c!533549)) b!3174604))

(assert (= (and b!3174594 c!533552) b!3174597))

(assert (= (and b!3174594 (not c!533552)) b!3174596))

(assert (= (and d!869454 c!533550) b!3174599))

(assert (= (and d!869454 (not c!533550)) b!3174595))

(assert (= (and b!3174599 res!1289928) b!3174603))

(assert (= (and b!3174595 res!1289927) b!3174602))

(assert (= (and b!3174595 c!533551) b!3174600))

(assert (= (and b!3174595 (not c!533551)) b!3174598))

(assert (= (or b!3174599 b!3174595 b!3174602 b!3174600) bm!230766))

(assert (= (or b!3174599 b!3174603 b!3174595 b!3174602) bm!230768))

(assert (= (or b!3174603 b!3174602) bm!230764))

(assert (= (or b!3174599 b!3174595) bm!230767))

(assert (= (or b!3174603 b!3174602) bm!230765))

(assert (= (or b!3174603 b!3174602) bm!230763))

(assert (= (and d!869454 res!1289929) b!3174601))

(assert (=> b!3174594 m!3431802))

(declare-fun m!3431808 () Bool)

(assert (=> b!3174594 m!3431808))

(declare-fun m!3431810 () Bool)

(assert (=> b!3174594 m!3431810))

(declare-fun m!3431812 () Bool)

(assert (=> b!3174594 m!3431812))

(declare-fun m!3431814 () Bool)

(assert (=> bm!230764 m!3431814))

(declare-fun m!3431816 () Bool)

(assert (=> b!3174599 m!3431816))

(declare-fun m!3431818 () Bool)

(assert (=> bm!230765 m!3431818))

(declare-fun m!3431820 () Bool)

(assert (=> bm!230763 m!3431820))

(assert (=> d!869454 m!3431785))

(assert (=> d!869454 m!3431794))

(declare-fun m!3431822 () Bool)

(assert (=> d!869454 m!3431822))

(assert (=> d!869454 m!3431802))

(assert (=> d!869454 m!3431822))

(declare-fun m!3431824 () Bool)

(assert (=> d!869454 m!3431824))

(declare-fun m!3431826 () Bool)

(assert (=> d!869454 m!3431826))

(declare-fun m!3431828 () Bool)

(assert (=> d!869454 m!3431828))

(assert (=> d!869454 m!3431794))

(declare-fun m!3431830 () Bool)

(assert (=> d!869454 m!3431830))

(assert (=> bm!230766 m!3431802))

(declare-fun m!3431832 () Bool)

(assert (=> bm!230767 m!3431832))

(declare-fun m!3431834 () Bool)

(assert (=> b!3174597 m!3431834))

(declare-fun m!3431836 () Bool)

(assert (=> b!3174597 m!3431836))

(assert (=> b!3174597 m!3431808))

(declare-fun m!3431838 () Bool)

(assert (=> b!3174597 m!3431838))

(declare-fun m!3431840 () Bool)

(assert (=> b!3174597 m!3431840))

(declare-fun m!3431842 () Bool)

(assert (=> b!3174597 m!3431842))

(assert (=> b!3174597 m!3431834))

(assert (=> b!3174597 m!3431802))

(declare-fun m!3431844 () Bool)

(assert (=> b!3174597 m!3431844))

(declare-fun m!3431846 () Bool)

(assert (=> b!3174597 m!3431846))

(declare-fun m!3431848 () Bool)

(assert (=> b!3174600 m!3431848))

(assert (=> b!3174600 m!3431848))

(declare-fun m!3431850 () Bool)

(assert (=> b!3174600 m!3431850))

(declare-fun m!3431852 () Bool)

(assert (=> b!3174600 m!3431852))

(assert (=> bm!230768 m!3431826))

(assert (=> b!3174601 m!3431808))

(assert (=> b!3174601 m!3431808))

(declare-fun m!3431854 () Bool)

(assert (=> b!3174601 m!3431854))

(assert (=> b!3174601 m!3431854))

(declare-fun m!3431856 () Bool)

(assert (=> b!3174601 m!3431856))

(assert (=> b!3174514 d!869454))

(declare-fun tp!1003503 () Bool)

(declare-fun b!3174609 () Bool)

(declare-fun e!1977334 () Bool)

(declare-fun tp!1003504 () Bool)

(declare-fun tp!1003505 () Bool)

(assert (=> b!3174609 (= e!1977334 (and tp!1003503 tp_is_empty!17189 tp!1003504 tp!1003505))))

(assert (=> b!3174522 (= tp!1003487 e!1977334)))

(assert (= (and b!3174522 ((_ is Cons!35541) mapDefault!19169)) b!3174609))

(declare-fun b!3174620 () Bool)

(declare-fun e!1977337 () Bool)

(assert (=> b!3174620 (= e!1977337 tp_is_empty!17189)))

(declare-fun b!3174622 () Bool)

(declare-fun tp!1003519 () Bool)

(assert (=> b!3174622 (= e!1977337 tp!1003519)))

(assert (=> b!3174526 (= tp!1003485 e!1977337)))

(declare-fun b!3174621 () Bool)

(declare-fun tp!1003518 () Bool)

(declare-fun tp!1003517 () Bool)

(assert (=> b!3174621 (= e!1977337 (and tp!1003518 tp!1003517))))

(declare-fun b!3174623 () Bool)

(declare-fun tp!1003516 () Bool)

(declare-fun tp!1003520 () Bool)

(assert (=> b!3174623 (= e!1977337 (and tp!1003516 tp!1003520))))

(assert (= (and b!3174526 ((_ is ElementMatch!9813) (reg!10142 r!4705))) b!3174620))

(assert (= (and b!3174526 ((_ is Concat!15134) (reg!10142 r!4705))) b!3174621))

(assert (= (and b!3174526 ((_ is Star!9813) (reg!10142 r!4705))) b!3174622))

(assert (= (and b!3174526 ((_ is Union!9813) (reg!10142 r!4705))) b!3174623))

(declare-fun b!3174624 () Bool)

(declare-fun e!1977338 () Bool)

(assert (=> b!3174624 (= e!1977338 tp_is_empty!17189)))

(declare-fun b!3174626 () Bool)

(declare-fun tp!1003524 () Bool)

(assert (=> b!3174626 (= e!1977338 tp!1003524)))

(assert (=> b!3174520 (= tp!1003493 e!1977338)))

(declare-fun b!3174625 () Bool)

(declare-fun tp!1003523 () Bool)

(declare-fun tp!1003522 () Bool)

(assert (=> b!3174625 (= e!1977338 (and tp!1003523 tp!1003522))))

(declare-fun b!3174627 () Bool)

(declare-fun tp!1003521 () Bool)

(declare-fun tp!1003525 () Bool)

(assert (=> b!3174627 (= e!1977338 (and tp!1003521 tp!1003525))))

(assert (= (and b!3174520 ((_ is ElementMatch!9813) (regOne!20138 r!4705))) b!3174624))

(assert (= (and b!3174520 ((_ is Concat!15134) (regOne!20138 r!4705))) b!3174625))

(assert (= (and b!3174520 ((_ is Star!9813) (regOne!20138 r!4705))) b!3174626))

(assert (= (and b!3174520 ((_ is Union!9813) (regOne!20138 r!4705))) b!3174627))

(declare-fun b!3174628 () Bool)

(declare-fun e!1977339 () Bool)

(assert (=> b!3174628 (= e!1977339 tp_is_empty!17189)))

(declare-fun b!3174630 () Bool)

(declare-fun tp!1003529 () Bool)

(assert (=> b!3174630 (= e!1977339 tp!1003529)))

(assert (=> b!3174520 (= tp!1003495 e!1977339)))

(declare-fun b!3174629 () Bool)

(declare-fun tp!1003528 () Bool)

(declare-fun tp!1003527 () Bool)

(assert (=> b!3174629 (= e!1977339 (and tp!1003528 tp!1003527))))

(declare-fun b!3174631 () Bool)

(declare-fun tp!1003526 () Bool)

(declare-fun tp!1003530 () Bool)

(assert (=> b!3174631 (= e!1977339 (and tp!1003526 tp!1003530))))

(assert (= (and b!3174520 ((_ is ElementMatch!9813) (regTwo!20138 r!4705))) b!3174628))

(assert (= (and b!3174520 ((_ is Concat!15134) (regTwo!20138 r!4705))) b!3174629))

(assert (= (and b!3174520 ((_ is Star!9813) (regTwo!20138 r!4705))) b!3174630))

(assert (= (and b!3174520 ((_ is Union!9813) (regTwo!20138 r!4705))) b!3174631))

(declare-fun tp!1003531 () Bool)

(declare-fun tp!1003532 () Bool)

(declare-fun tp!1003533 () Bool)

(declare-fun e!1977340 () Bool)

(declare-fun b!3174632 () Bool)

(assert (=> b!3174632 (= e!1977340 (and tp!1003531 tp_is_empty!17189 tp!1003532 tp!1003533))))

(assert (=> b!3174519 (= tp!1003490 e!1977340)))

(assert (= (and b!3174519 ((_ is Cons!35541) (zeroValue!4493 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))))))) b!3174632))

(declare-fun b!3174633 () Bool)

(declare-fun tp!1003535 () Bool)

(declare-fun e!1977341 () Bool)

(declare-fun tp!1003534 () Bool)

(declare-fun tp!1003536 () Bool)

(assert (=> b!3174633 (= e!1977341 (and tp!1003534 tp_is_empty!17189 tp!1003535 tp!1003536))))

(assert (=> b!3174519 (= tp!1003496 e!1977341)))

(assert (= (and b!3174519 ((_ is Cons!35541) (minValue!4493 (v!35328 (underlying!8697 (v!35329 (underlying!8698 (cache!4286 thiss!28445)))))))) b!3174633))

(declare-fun b!3174634 () Bool)

(declare-fun e!1977342 () Bool)

(assert (=> b!3174634 (= e!1977342 tp_is_empty!17189)))

(declare-fun b!3174636 () Bool)

(declare-fun tp!1003540 () Bool)

(assert (=> b!3174636 (= e!1977342 tp!1003540)))

(assert (=> b!3174516 (= tp!1003494 e!1977342)))

(declare-fun b!3174635 () Bool)

(declare-fun tp!1003539 () Bool)

(declare-fun tp!1003538 () Bool)

(assert (=> b!3174635 (= e!1977342 (and tp!1003539 tp!1003538))))

(declare-fun b!3174637 () Bool)

(declare-fun tp!1003537 () Bool)

(declare-fun tp!1003541 () Bool)

(assert (=> b!3174637 (= e!1977342 (and tp!1003537 tp!1003541))))

(assert (= (and b!3174516 ((_ is ElementMatch!9813) (regOne!20139 r!4705))) b!3174634))

(assert (= (and b!3174516 ((_ is Concat!15134) (regOne!20139 r!4705))) b!3174635))

(assert (= (and b!3174516 ((_ is Star!9813) (regOne!20139 r!4705))) b!3174636))

(assert (= (and b!3174516 ((_ is Union!9813) (regOne!20139 r!4705))) b!3174637))

(declare-fun b!3174638 () Bool)

(declare-fun e!1977343 () Bool)

(assert (=> b!3174638 (= e!1977343 tp_is_empty!17189)))

(declare-fun b!3174640 () Bool)

(declare-fun tp!1003545 () Bool)

(assert (=> b!3174640 (= e!1977343 tp!1003545)))

(assert (=> b!3174516 (= tp!1003491 e!1977343)))

(declare-fun b!3174639 () Bool)

(declare-fun tp!1003544 () Bool)

(declare-fun tp!1003543 () Bool)

(assert (=> b!3174639 (= e!1977343 (and tp!1003544 tp!1003543))))

(declare-fun b!3174641 () Bool)

(declare-fun tp!1003542 () Bool)

(declare-fun tp!1003546 () Bool)

(assert (=> b!3174641 (= e!1977343 (and tp!1003542 tp!1003546))))

(assert (= (and b!3174516 ((_ is ElementMatch!9813) (regTwo!20139 r!4705))) b!3174638))

(assert (= (and b!3174516 ((_ is Concat!15134) (regTwo!20139 r!4705))) b!3174639))

(assert (= (and b!3174516 ((_ is Star!9813) (regTwo!20139 r!4705))) b!3174640))

(assert (= (and b!3174516 ((_ is Union!9813) (regTwo!20139 r!4705))) b!3174641))

(declare-fun tp!1003561 () Bool)

(declare-fun b!3174648 () Bool)

(declare-fun tp!1003564 () Bool)

(declare-fun tp!1003566 () Bool)

(declare-fun e!1977349 () Bool)

(assert (=> b!3174648 (= e!1977349 (and tp!1003564 tp_is_empty!17189 tp!1003566 tp!1003561))))

(declare-fun condMapEmpty!19172 () Bool)

(declare-fun mapDefault!19172 () List!35665)

(assert (=> mapNonEmpty!19169 (= condMapEmpty!19172 (= mapRest!19169 ((as const (Array (_ BitVec 32) List!35665)) mapDefault!19172)))))

(declare-fun e!1977348 () Bool)

(declare-fun mapRes!19172 () Bool)

(assert (=> mapNonEmpty!19169 (= tp!1003486 (and e!1977348 mapRes!19172))))

(declare-fun mapNonEmpty!19172 () Bool)

(declare-fun tp!1003567 () Bool)

(assert (=> mapNonEmpty!19172 (= mapRes!19172 (and tp!1003567 e!1977349))))

(declare-fun mapRest!19172 () (Array (_ BitVec 32) List!35665))

(declare-fun mapKey!19172 () (_ BitVec 32))

(declare-fun mapValue!19172 () List!35665)

(assert (=> mapNonEmpty!19172 (= mapRest!19169 (store mapRest!19172 mapKey!19172 mapValue!19172))))

(declare-fun mapIsEmpty!19172 () Bool)

(assert (=> mapIsEmpty!19172 mapRes!19172))

(declare-fun tp!1003563 () Bool)

(declare-fun tp!1003562 () Bool)

(declare-fun b!3174649 () Bool)

(declare-fun tp!1003565 () Bool)

(assert (=> b!3174649 (= e!1977348 (and tp!1003562 tp_is_empty!17189 tp!1003563 tp!1003565))))

(assert (= (and mapNonEmpty!19169 condMapEmpty!19172) mapIsEmpty!19172))

(assert (= (and mapNonEmpty!19169 (not condMapEmpty!19172)) mapNonEmpty!19172))

(assert (= (and mapNonEmpty!19172 ((_ is Cons!35541) mapValue!19172)) b!3174648))

(assert (= (and mapNonEmpty!19169 ((_ is Cons!35541) mapDefault!19172)) b!3174649))

(declare-fun m!3431858 () Bool)

(assert (=> mapNonEmpty!19172 m!3431858))

(declare-fun tp!1003568 () Bool)

(declare-fun tp!1003569 () Bool)

(declare-fun tp!1003570 () Bool)

(declare-fun e!1977350 () Bool)

(declare-fun b!3174650 () Bool)

(assert (=> b!3174650 (= e!1977350 (and tp!1003568 tp_is_empty!17189 tp!1003569 tp!1003570))))

(assert (=> mapNonEmpty!19169 (= tp!1003488 e!1977350)))

(assert (= (and mapNonEmpty!19169 ((_ is Cons!35541) mapValue!19169)) b!3174650))

(check-sat (not b!3174641) (not b!3174632) (not b!3174649) (not bm!230768) (not bm!230765) (not b!3174648) (not b!3174609) tp_is_empty!17189 (not b!3174570) (not b!3174626) (not bm!230764) (not b!3174600) (not b!3174629) b_and!209711 (not b_next!84121) (not b!3174594) (not bm!230766) (not b!3174599) (not b!3174625) (not b!3174562) (not d!869452) (not b!3174621) (not b!3174631) (not b!3174554) (not b!3174637) (not b!3174639) (not b!3174650) (not b!3174571) (not d!869448) (not b!3174630) b_and!209713 (not b!3174635) (not bm!230767) (not b!3174622) (not b!3174640) (not b_next!84123) (not b!3174636) (not d!869454) (not b!3174633) (not b!3174561) (not bm!230763) (not b!3174565) (not b!3174623) (not mapNonEmpty!19172) (not b!3174601) (not b!3174597) (not b!3174627) (not bm!230750) (not bm!230749))
(check-sat b_and!209711 b_and!209713 (not b_next!84121) (not b_next!84123))
