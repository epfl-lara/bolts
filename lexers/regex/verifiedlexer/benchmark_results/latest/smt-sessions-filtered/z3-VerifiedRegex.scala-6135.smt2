; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297332 () Bool)

(assert start!297332)

(declare-fun b!3175237 () Bool)

(declare-fun b_free!83449 () Bool)

(declare-fun b_next!84153 () Bool)

(assert (=> b!3175237 (= b_free!83449 (not b_next!84153))))

(declare-fun tp!1004001 () Bool)

(declare-fun b_and!209743 () Bool)

(assert (=> b!3175237 (= tp!1004001 b_and!209743)))

(declare-fun b!3175228 () Bool)

(declare-fun b_free!83451 () Bool)

(declare-fun b_next!84155 () Bool)

(assert (=> b!3175228 (= b_free!83451 (not b_next!84155))))

(declare-fun tp!1003996 () Bool)

(declare-fun b_and!209745 () Bool)

(assert (=> b!3175228 (= tp!1003996 b_and!209745)))

(declare-fun b!3175227 () Bool)

(declare-fun e!1977727 () Bool)

(declare-fun tp!1003999 () Bool)

(declare-fun tp!1004006 () Bool)

(assert (=> b!3175227 (= e!1977727 (and tp!1003999 tp!1004006))))

(declare-fun tp!1004005 () Bool)

(declare-fun e!1977729 () Bool)

(declare-datatypes ((C!19828 0))(
  ( (C!19829 (val!11950 Int)) )
))
(declare-datatypes ((Regex!9821 0))(
  ( (ElementMatch!9821 (c!533596 C!19828)) (Concat!15142 (regOne!20154 Regex!9821) (regTwo!20154 Regex!9821)) (EmptyExpr!9821) (Star!9821 (reg!10150 Regex!9821)) (EmptyLang!9821) (Union!9821 (regOne!20155 Regex!9821) (regTwo!20155 Regex!9821)) )
))
(declare-datatypes ((tuple2!34960 0))(
  ( (tuple2!34961 (_1!20612 Regex!9821) (_2!20612 C!19828)) )
))
(declare-datatypes ((tuple2!34962 0))(
  ( (tuple2!34963 (_1!20613 tuple2!34960) (_2!20613 Regex!9821)) )
))
(declare-datatypes ((List!35676 0))(
  ( (Nil!35552) (Cons!35552 (h!40972 tuple2!34962) (t!234767 List!35676)) )
))
(declare-datatypes ((array!15230 0))(
  ( (array!15231 (arr!6774 (Array (_ BitVec 32) (_ BitVec 64))) (size!26860 (_ BitVec 32))) )
))
(declare-datatypes ((array!15232 0))(
  ( (array!15233 (arr!6775 (Array (_ BitVec 32) List!35676)) (size!26861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8484 0))(
  ( (LongMapFixedSize!8485 (defaultEntry!4627 Int) (mask!10946 (_ BitVec 32)) (extraKeys!4491 (_ BitVec 32)) (zeroValue!4501 List!35676) (minValue!4501 List!35676) (_size!8527 (_ BitVec 32)) (_keys!4542 array!15230) (_values!4523 array!15232) (_vacant!4303 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16777 0))(
  ( (Cell!16778 (v!35350 LongMapFixedSize!8484)) )
))
(declare-datatypes ((MutLongMap!4242 0))(
  ( (LongMap!4242 (underlying!8713 Cell!16777)) (MutLongMapExt!4241 (__x!22832 Int)) )
))
(declare-datatypes ((Cell!16779 0))(
  ( (Cell!16780 (v!35351 MutLongMap!4242)) )
))
(declare-datatypes ((Hashable!4158 0))(
  ( (HashableExt!4157 (__x!22833 Int)) )
))
(declare-datatypes ((MutableMap!4148 0))(
  ( (MutableMapExt!4147 (__x!22834 Int)) (HashMap!4148 (underlying!8714 Cell!16779) (hashF!6190 Hashable!4158) (_size!8528 (_ BitVec 32)) (defaultValue!4319 Int)) )
))
(declare-datatypes ((Cache!566 0))(
  ( (Cache!567 (cache!4294 MutableMap!4148)) )
))
(declare-fun thiss!28445 () Cache!566)

(declare-fun e!1977734 () Bool)

(declare-fun tp!1003995 () Bool)

(declare-fun array_inv!4866 (array!15230) Bool)

(declare-fun array_inv!4867 (array!15232) Bool)

(assert (=> b!3175228 (= e!1977729 (and tp!1003996 tp!1003995 tp!1004005 (array_inv!4866 (_keys!4542 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) (array_inv!4867 (_values!4523 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) e!1977734))))

(declare-fun b!3175229 () Bool)

(declare-fun res!1290089 () Bool)

(declare-fun e!1977732 () Bool)

(assert (=> b!3175229 (=> (not res!1290089) (not e!1977732))))

(get-info :version)

(assert (=> b!3175229 (= res!1290089 ((_ is HashMap!4148) (cache!4294 thiss!28445)))))

(declare-fun b!3175230 () Bool)

(declare-fun tp!1004000 () Bool)

(declare-fun mapRes!19202 () Bool)

(assert (=> b!3175230 (= e!1977734 (and tp!1004000 mapRes!19202))))

(declare-fun condMapEmpty!19202 () Bool)

(declare-fun mapDefault!19202 () List!35676)

(assert (=> b!3175230 (= condMapEmpty!19202 (= (arr!6775 (_values!4523 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35676)) mapDefault!19202)))))

(declare-fun b!3175231 () Bool)

(declare-fun res!1290091 () Bool)

(assert (=> b!3175231 (=> (not res!1290091) (not e!1977732))))

(declare-fun r!4705 () Regex!9821)

(declare-fun validRegex!4522 (Regex!9821) Bool)

(assert (=> b!3175231 (= res!1290091 (validRegex!4522 r!4705))))

(declare-fun b!3175232 () Bool)

(declare-fun lambda!116192 () Int)

(declare-fun forall!7193 (List!35676 Int) Bool)

(declare-datatypes ((ListMap!1371 0))(
  ( (ListMap!1372 (toList!2112 List!35676)) )
))
(declare-fun map!7998 (MutableMap!4148) ListMap!1371)

(assert (=> b!3175232 (= e!1977732 (not (forall!7193 (toList!2112 (map!7998 (cache!4294 thiss!28445))) lambda!116192)))))

(declare-fun b!3175233 () Bool)

(declare-fun e!1977728 () Bool)

(declare-fun e!1977733 () Bool)

(assert (=> b!3175233 (= e!1977728 e!1977733)))

(declare-fun b!3175234 () Bool)

(declare-fun tp!1004003 () Bool)

(assert (=> b!3175234 (= e!1977727 tp!1004003)))

(declare-fun res!1290090 () Bool)

(assert (=> start!297332 (=> (not res!1290090) (not e!1977732))))

(declare-fun validCacheMap!117 (MutableMap!4148) Bool)

(assert (=> start!297332 (= res!1290090 (validCacheMap!117 (cache!4294 thiss!28445)))))

(assert (=> start!297332 e!1977732))

(declare-fun e!1977726 () Bool)

(declare-fun inv!48300 (Cache!566) Bool)

(assert (=> start!297332 (and (inv!48300 thiss!28445) e!1977726)))

(assert (=> start!297332 e!1977727))

(declare-fun tp_is_empty!17205 () Bool)

(assert (=> start!297332 tp_is_empty!17205))

(declare-fun b!3175235 () Bool)

(declare-fun e!1977730 () Bool)

(declare-fun lt!1067735 () MutLongMap!4242)

(assert (=> b!3175235 (= e!1977730 (and e!1977728 ((_ is LongMap!4242) lt!1067735)))))

(assert (=> b!3175235 (= lt!1067735 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))

(declare-fun mapNonEmpty!19202 () Bool)

(declare-fun tp!1004004 () Bool)

(declare-fun tp!1004002 () Bool)

(assert (=> mapNonEmpty!19202 (= mapRes!19202 (and tp!1004004 tp!1004002))))

(declare-fun mapValue!19202 () List!35676)

(declare-fun mapKey!19202 () (_ BitVec 32))

(declare-fun mapRest!19202 () (Array (_ BitVec 32) List!35676))

(assert (=> mapNonEmpty!19202 (= (arr!6775 (_values!4523 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) (store mapRest!19202 mapKey!19202 mapValue!19202))))

(declare-fun b!3175236 () Bool)

(declare-fun res!1290093 () Bool)

(assert (=> b!3175236 (=> (not res!1290093) (not e!1977732))))

(declare-fun valid!3297 (MutableMap!4148) Bool)

(assert (=> b!3175236 (= res!1290093 (valid!3297 (cache!4294 thiss!28445)))))

(declare-fun e!1977735 () Bool)

(assert (=> b!3175237 (= e!1977735 (and e!1977730 tp!1004001))))

(declare-fun mapIsEmpty!19202 () Bool)

(assert (=> mapIsEmpty!19202 mapRes!19202))

(declare-fun b!3175238 () Bool)

(assert (=> b!3175238 (= e!1977733 e!1977729)))

(declare-fun b!3175239 () Bool)

(declare-fun res!1290092 () Bool)

(assert (=> b!3175239 (=> (not res!1290092) (not e!1977732))))

(declare-fun c!6979 () C!19828)

(declare-fun contains!6277 (MutableMap!4148 tuple2!34960) Bool)

(assert (=> b!3175239 (= res!1290092 (contains!6277 (cache!4294 thiss!28445) (tuple2!34961 r!4705 c!6979)))))

(declare-fun b!3175240 () Bool)

(assert (=> b!3175240 (= e!1977727 tp_is_empty!17205)))

(declare-fun b!3175241 () Bool)

(declare-fun tp!1003997 () Bool)

(declare-fun tp!1003998 () Bool)

(assert (=> b!3175241 (= e!1977727 (and tp!1003997 tp!1003998))))

(declare-fun b!3175242 () Bool)

(assert (=> b!3175242 (= e!1977726 e!1977735)))

(assert (= (and start!297332 res!1290090) b!3175231))

(assert (= (and b!3175231 res!1290091) b!3175239))

(assert (= (and b!3175239 res!1290092) b!3175229))

(assert (= (and b!3175229 res!1290089) b!3175236))

(assert (= (and b!3175236 res!1290093) b!3175232))

(assert (= (and b!3175230 condMapEmpty!19202) mapIsEmpty!19202))

(assert (= (and b!3175230 (not condMapEmpty!19202)) mapNonEmpty!19202))

(assert (= b!3175228 b!3175230))

(assert (= b!3175238 b!3175228))

(assert (= b!3175233 b!3175238))

(assert (= (and b!3175235 ((_ is LongMap!4242) (v!35351 (underlying!8714 (cache!4294 thiss!28445))))) b!3175233))

(assert (= b!3175237 b!3175235))

(assert (= (and b!3175242 ((_ is HashMap!4148) (cache!4294 thiss!28445))) b!3175237))

(assert (= start!297332 b!3175242))

(assert (= (and start!297332 ((_ is ElementMatch!9821) r!4705)) b!3175240))

(assert (= (and start!297332 ((_ is Concat!15142) r!4705)) b!3175241))

(assert (= (and start!297332 ((_ is Star!9821) r!4705)) b!3175234))

(assert (= (and start!297332 ((_ is Union!9821) r!4705)) b!3175227))

(declare-fun m!3432110 () Bool)

(assert (=> b!3175236 m!3432110))

(declare-fun m!3432112 () Bool)

(assert (=> b!3175239 m!3432112))

(declare-fun m!3432114 () Bool)

(assert (=> mapNonEmpty!19202 m!3432114))

(declare-fun m!3432116 () Bool)

(assert (=> b!3175231 m!3432116))

(declare-fun m!3432118 () Bool)

(assert (=> b!3175232 m!3432118))

(declare-fun m!3432120 () Bool)

(assert (=> b!3175232 m!3432120))

(declare-fun m!3432122 () Bool)

(assert (=> b!3175228 m!3432122))

(declare-fun m!3432124 () Bool)

(assert (=> b!3175228 m!3432124))

(declare-fun m!3432126 () Bool)

(assert (=> start!297332 m!3432126))

(declare-fun m!3432128 () Bool)

(assert (=> start!297332 m!3432128))

(check-sat (not b!3175241) (not b!3175228) (not b!3175230) (not b!3175236) (not b!3175232) (not mapNonEmpty!19202) tp_is_empty!17205 (not b!3175231) (not b!3175239) (not b!3175227) (not b_next!84153) (not b!3175234) (not start!297332) (not b_next!84155) b_and!209745 b_and!209743)
(check-sat b_and!209745 b_and!209743 (not b_next!84155) (not b_next!84153))
(get-model)

(declare-fun d!869486 () Bool)

(declare-fun res!1290098 () Bool)

(declare-fun e!1977738 () Bool)

(assert (=> d!869486 (=> (not res!1290098) (not e!1977738))))

(declare-fun valid!3298 (MutLongMap!4242) Bool)

(assert (=> d!869486 (= res!1290098 (valid!3298 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))))

(assert (=> d!869486 (= (valid!3297 (cache!4294 thiss!28445)) e!1977738)))

(declare-fun b!3175247 () Bool)

(declare-fun res!1290099 () Bool)

(assert (=> b!3175247 (=> (not res!1290099) (not e!1977738))))

(declare-fun lambda!116195 () Int)

(declare-datatypes ((tuple2!34964 0))(
  ( (tuple2!34965 (_1!20614 (_ BitVec 64)) (_2!20614 List!35676)) )
))
(declare-datatypes ((List!35677 0))(
  ( (Nil!35553) (Cons!35553 (h!40973 tuple2!34964) (t!234768 List!35677)) )
))
(declare-fun forall!7194 (List!35677 Int) Bool)

(declare-datatypes ((ListLongMap!765 0))(
  ( (ListLongMap!766 (toList!2113 List!35677)) )
))
(declare-fun map!7999 (MutLongMap!4242) ListLongMap!765)

(assert (=> b!3175247 (= res!1290099 (forall!7194 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))) lambda!116195))))

(declare-fun b!3175248 () Bool)

(declare-fun allKeysSameHashInMap!251 (ListLongMap!765 Hashable!4158) Bool)

(assert (=> b!3175248 (= e!1977738 (allKeysSameHashInMap!251 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))) (hashF!6190 (cache!4294 thiss!28445))))))

(assert (= (and d!869486 res!1290098) b!3175247))

(assert (= (and b!3175247 res!1290099) b!3175248))

(declare-fun m!3432130 () Bool)

(assert (=> d!869486 m!3432130))

(declare-fun m!3432132 () Bool)

(assert (=> b!3175247 m!3432132))

(declare-fun m!3432134 () Bool)

(assert (=> b!3175247 m!3432134))

(assert (=> b!3175248 m!3432132))

(assert (=> b!3175248 m!3432132))

(declare-fun m!3432136 () Bool)

(assert (=> b!3175248 m!3432136))

(assert (=> b!3175236 d!869486))

(declare-fun bs!539672 () Bool)

(declare-fun b!3175256 () Bool)

(assert (= bs!539672 (and b!3175256 b!3175232)))

(declare-fun lambda!116198 () Int)

(assert (=> bs!539672 (= lambda!116198 lambda!116192)))

(declare-fun d!869488 () Bool)

(declare-fun res!1290106 () Bool)

(declare-fun e!1977743 () Bool)

(assert (=> d!869488 (=> (not res!1290106) (not e!1977743))))

(assert (=> d!869488 (= res!1290106 (valid!3297 (cache!4294 thiss!28445)))))

(assert (=> d!869488 (= (validCacheMap!117 (cache!4294 thiss!28445)) e!1977743)))

(declare-fun b!3175255 () Bool)

(declare-fun res!1290107 () Bool)

(assert (=> b!3175255 (=> (not res!1290107) (not e!1977743))))

(declare-fun invariantList!506 (List!35676) Bool)

(assert (=> b!3175255 (= res!1290107 (invariantList!506 (toList!2112 (map!7998 (cache!4294 thiss!28445)))))))

(assert (=> b!3175256 (= e!1977743 (forall!7193 (toList!2112 (map!7998 (cache!4294 thiss!28445))) lambda!116198))))

(assert (= (and d!869488 res!1290106) b!3175255))

(assert (= (and b!3175255 res!1290107) b!3175256))

(assert (=> d!869488 m!3432110))

(assert (=> b!3175255 m!3432118))

(declare-fun m!3432139 () Bool)

(assert (=> b!3175255 m!3432139))

(assert (=> b!3175256 m!3432118))

(declare-fun m!3432141 () Bool)

(assert (=> b!3175256 m!3432141))

(assert (=> start!297332 d!869488))

(declare-fun d!869490 () Bool)

(declare-fun res!1290110 () Bool)

(declare-fun e!1977746 () Bool)

(assert (=> d!869490 (=> (not res!1290110) (not e!1977746))))

(assert (=> d!869490 (= res!1290110 ((_ is HashMap!4148) (cache!4294 thiss!28445)))))

(assert (=> d!869490 (= (inv!48300 thiss!28445) e!1977746)))

(declare-fun b!3175259 () Bool)

(assert (=> b!3175259 (= e!1977746 (validCacheMap!117 (cache!4294 thiss!28445)))))

(assert (= (and d!869490 res!1290110) b!3175259))

(assert (=> b!3175259 m!3432126))

(assert (=> start!297332 d!869490))

(declare-fun d!869492 () Bool)

(declare-fun res!1290115 () Bool)

(declare-fun e!1977751 () Bool)

(assert (=> d!869492 (=> res!1290115 e!1977751)))

(assert (=> d!869492 (= res!1290115 ((_ is Nil!35552) (toList!2112 (map!7998 (cache!4294 thiss!28445)))))))

(assert (=> d!869492 (= (forall!7193 (toList!2112 (map!7998 (cache!4294 thiss!28445))) lambda!116192) e!1977751)))

(declare-fun b!3175264 () Bool)

(declare-fun e!1977752 () Bool)

(assert (=> b!3175264 (= e!1977751 e!1977752)))

(declare-fun res!1290116 () Bool)

(assert (=> b!3175264 (=> (not res!1290116) (not e!1977752))))

(declare-fun dynLambda!14375 (Int tuple2!34962) Bool)

(assert (=> b!3175264 (= res!1290116 (dynLambda!14375 lambda!116192 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445))))))))

(declare-fun b!3175265 () Bool)

(assert (=> b!3175265 (= e!1977752 (forall!7193 (t!234767 (toList!2112 (map!7998 (cache!4294 thiss!28445)))) lambda!116192))))

(assert (= (and d!869492 (not res!1290115)) b!3175264))

(assert (= (and b!3175264 res!1290116) b!3175265))

(declare-fun b_lambda!86511 () Bool)

(assert (=> (not b_lambda!86511) (not b!3175264)))

(declare-fun m!3432143 () Bool)

(assert (=> b!3175264 m!3432143))

(declare-fun m!3432145 () Bool)

(assert (=> b!3175265 m!3432145))

(assert (=> b!3175232 d!869492))

(declare-fun d!869494 () Bool)

(declare-fun lt!1067738 () ListMap!1371)

(assert (=> d!869494 (invariantList!506 (toList!2112 lt!1067738))))

(declare-fun extractMap!252 (List!35677) ListMap!1371)

(assert (=> d!869494 (= lt!1067738 (extractMap!252 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))))))

(assert (=> d!869494 (valid!3297 (cache!4294 thiss!28445))))

(assert (=> d!869494 (= (map!7998 (cache!4294 thiss!28445)) lt!1067738)))

(declare-fun bs!539673 () Bool)

(assert (= bs!539673 d!869494))

(declare-fun m!3432147 () Bool)

(assert (=> bs!539673 m!3432147))

(assert (=> bs!539673 m!3432132))

(declare-fun m!3432149 () Bool)

(assert (=> bs!539673 m!3432149))

(assert (=> bs!539673 m!3432110))

(assert (=> b!3175232 d!869494))

(declare-fun bm!230829 () Bool)

(declare-fun call!230836 () Bool)

(declare-fun call!230835 () Bool)

(assert (=> bm!230829 (= call!230836 call!230835)))

(declare-fun b!3175284 () Bool)

(declare-fun e!1977771 () Bool)

(assert (=> b!3175284 (= e!1977771 call!230835)))

(declare-fun b!3175285 () Bool)

(declare-fun e!1977772 () Bool)

(declare-fun e!1977773 () Bool)

(assert (=> b!3175285 (= e!1977772 e!1977773)))

(declare-fun c!533602 () Bool)

(assert (=> b!3175285 (= c!533602 ((_ is Star!9821) r!4705))))

(declare-fun bm!230830 () Bool)

(declare-fun call!230834 () Bool)

(declare-fun c!533601 () Bool)

(assert (=> bm!230830 (= call!230834 (validRegex!4522 (ite c!533601 (regOne!20155 r!4705) (regOne!20154 r!4705))))))

(declare-fun b!3175286 () Bool)

(assert (=> b!3175286 (= e!1977773 e!1977771)))

(declare-fun res!1290130 () Bool)

(declare-fun nullable!3374 (Regex!9821) Bool)

(assert (=> b!3175286 (= res!1290130 (not (nullable!3374 (reg!10150 r!4705))))))

(assert (=> b!3175286 (=> (not res!1290130) (not e!1977771))))

(declare-fun b!3175287 () Bool)

(declare-fun e!1977770 () Bool)

(assert (=> b!3175287 (= e!1977773 e!1977770)))

(assert (=> b!3175287 (= c!533601 ((_ is Union!9821) r!4705))))

(declare-fun b!3175289 () Bool)

(declare-fun res!1290131 () Bool)

(declare-fun e!1977769 () Bool)

(assert (=> b!3175289 (=> (not res!1290131) (not e!1977769))))

(assert (=> b!3175289 (= res!1290131 call!230834)))

(assert (=> b!3175289 (= e!1977770 e!1977769)))

(declare-fun b!3175290 () Bool)

(declare-fun e!1977768 () Bool)

(declare-fun e!1977767 () Bool)

(assert (=> b!3175290 (= e!1977768 e!1977767)))

(declare-fun res!1290129 () Bool)

(assert (=> b!3175290 (=> (not res!1290129) (not e!1977767))))

(assert (=> b!3175290 (= res!1290129 call!230834)))

(declare-fun b!3175291 () Bool)

(declare-fun res!1290127 () Bool)

(assert (=> b!3175291 (=> res!1290127 e!1977768)))

(assert (=> b!3175291 (= res!1290127 (not ((_ is Concat!15142) r!4705)))))

(assert (=> b!3175291 (= e!1977770 e!1977768)))

(declare-fun d!869496 () Bool)

(declare-fun res!1290128 () Bool)

(assert (=> d!869496 (=> res!1290128 e!1977772)))

(assert (=> d!869496 (= res!1290128 ((_ is ElementMatch!9821) r!4705))))

(assert (=> d!869496 (= (validRegex!4522 r!4705) e!1977772)))

(declare-fun b!3175288 () Bool)

(assert (=> b!3175288 (= e!1977769 call!230836)))

(declare-fun bm!230831 () Bool)

(assert (=> bm!230831 (= call!230835 (validRegex!4522 (ite c!533602 (reg!10150 r!4705) (ite c!533601 (regTwo!20155 r!4705) (regTwo!20154 r!4705)))))))

(declare-fun b!3175292 () Bool)

(assert (=> b!3175292 (= e!1977767 call!230836)))

(assert (= (and d!869496 (not res!1290128)) b!3175285))

(assert (= (and b!3175285 c!533602) b!3175286))

(assert (= (and b!3175285 (not c!533602)) b!3175287))

(assert (= (and b!3175286 res!1290130) b!3175284))

(assert (= (and b!3175287 c!533601) b!3175289))

(assert (= (and b!3175287 (not c!533601)) b!3175291))

(assert (= (and b!3175289 res!1290131) b!3175288))

(assert (= (and b!3175291 (not res!1290127)) b!3175290))

(assert (= (and b!3175290 res!1290129) b!3175292))

(assert (= (or b!3175288 b!3175292) bm!230829))

(assert (= (or b!3175289 b!3175290) bm!230830))

(assert (= (or b!3175284 bm!230829) bm!230831))

(declare-fun m!3432151 () Bool)

(assert (=> bm!230830 m!3432151))

(declare-fun m!3432153 () Bool)

(assert (=> b!3175286 m!3432153))

(declare-fun m!3432155 () Bool)

(assert (=> bm!230831 m!3432155))

(assert (=> b!3175231 d!869496))

(declare-fun d!869498 () Bool)

(assert (=> d!869498 (= (array_inv!4866 (_keys!4542 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) (bvsge (size!26860 (_keys!4542 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3175228 d!869498))

(declare-fun d!869500 () Bool)

(assert (=> d!869500 (= (array_inv!4867 (_values!4523 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) (bvsge (size!26861 (_values!4523 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3175228 d!869500))

(declare-fun bs!539674 () Bool)

(declare-fun b!3175318 () Bool)

(assert (= bs!539674 (and b!3175318 b!3175247)))

(declare-fun lambda!116201 () Int)

(assert (=> bs!539674 (= lambda!116201 lambda!116195)))

(declare-fun bm!230844 () Bool)

(declare-fun call!230853 () Bool)

(declare-datatypes ((Option!6947 0))(
  ( (None!6946) (Some!6946 (v!35352 tuple2!34962)) )
))
(declare-fun call!230850 () Option!6947)

(declare-fun isDefined!5453 (Option!6947) Bool)

(assert (=> bm!230844 (= call!230853 (isDefined!5453 call!230850))))

(declare-fun b!3175315 () Bool)

(declare-datatypes ((Unit!50059 0))(
  ( (Unit!50060) )
))
(declare-fun e!1977789 () Unit!50059)

(declare-fun Unit!50061 () Unit!50059)

(assert (=> b!3175315 (= e!1977789 Unit!50061)))

(declare-fun bm!230845 () Bool)

(declare-fun call!230851 () ListLongMap!765)

(assert (=> bm!230845 (= call!230851 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))))

(declare-fun b!3175316 () Bool)

(declare-fun e!1977793 () Unit!50059)

(assert (=> b!3175316 (= e!1977793 e!1977789)))

(declare-fun res!1290138 () Bool)

(declare-fun call!230854 () Bool)

(assert (=> b!3175316 (= res!1290138 call!230854)))

(declare-fun e!1977788 () Bool)

(assert (=> b!3175316 (=> (not res!1290138) (not e!1977788))))

(declare-fun c!533612 () Bool)

(assert (=> b!3175316 (= c!533612 e!1977788)))

(declare-fun b!3175317 () Bool)

(assert (=> b!3175317 false))

(declare-fun lt!1067791 () Unit!50059)

(declare-fun lt!1067789 () Unit!50059)

(assert (=> b!3175317 (= lt!1067791 lt!1067789)))

(declare-fun lt!1067796 () List!35677)

(declare-fun lt!1067793 () (_ BitVec 64))

(declare-fun lt!1067798 () List!35676)

(declare-fun contains!6278 (List!35677 tuple2!34964) Bool)

(assert (=> b!3175317 (contains!6278 lt!1067796 (tuple2!34965 lt!1067793 lt!1067798))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!115 (List!35677 (_ BitVec 64) List!35676) Unit!50059)

(assert (=> b!3175317 (= lt!1067789 (lemmaGetValueByKeyImpliesContainsTuple!115 lt!1067796 lt!1067793 lt!1067798))))

(declare-fun apply!7999 (MutLongMap!4242 (_ BitVec 64)) List!35676)

(assert (=> b!3175317 (= lt!1067798 (apply!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793))))

(assert (=> b!3175317 (= lt!1067796 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))))

(declare-fun lt!1067779 () Unit!50059)

(declare-fun lt!1067780 () Unit!50059)

(assert (=> b!3175317 (= lt!1067779 lt!1067780)))

(declare-fun lt!1067787 () List!35677)

(declare-datatypes ((Option!6948 0))(
  ( (None!6947) (Some!6947 (v!35353 List!35676)) )
))
(declare-fun isDefined!5454 (Option!6948) Bool)

(declare-fun getValueByKey!199 (List!35677 (_ BitVec 64)) Option!6948)

(assert (=> b!3175317 (isDefined!5454 (getValueByKey!199 lt!1067787 lt!1067793))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!143 (List!35677 (_ BitVec 64)) Unit!50059)

(assert (=> b!3175317 (= lt!1067780 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 lt!1067787 lt!1067793))))

(assert (=> b!3175317 (= lt!1067787 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))))

(declare-fun lt!1067783 () Unit!50059)

(declare-fun lt!1067795 () Unit!50059)

(assert (=> b!3175317 (= lt!1067783 lt!1067795)))

(declare-fun lt!1067785 () List!35677)

(declare-fun containsKey!211 (List!35677 (_ BitVec 64)) Bool)

(assert (=> b!3175317 (containsKey!211 lt!1067785 lt!1067793)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!110 (List!35677 (_ BitVec 64)) Unit!50059)

(assert (=> b!3175317 (= lt!1067795 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!110 lt!1067785 lt!1067793))))

(assert (=> b!3175317 (= lt!1067785 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))))))

(declare-fun e!1977794 () Unit!50059)

(declare-fun Unit!50062 () Unit!50059)

(assert (=> b!3175317 (= e!1977794 Unit!50062)))

(declare-fun lt!1067784 () ListLongMap!765)

(declare-fun bm!230846 () Bool)

(declare-fun call!230852 () (_ BitVec 64))

(declare-fun c!533611 () Bool)

(declare-fun contains!6279 (ListLongMap!765 (_ BitVec 64)) Bool)

(assert (=> bm!230846 (= call!230854 (contains!6279 (ite c!533611 lt!1067784 call!230851) call!230852))))

(declare-fun e!1977790 () Unit!50059)

(declare-fun forallContained!1087 (List!35677 Int tuple2!34964) Unit!50059)

(assert (=> b!3175318 (= e!1977790 (forallContained!1087 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))) lambda!116201 (tuple2!34965 lt!1067793 (apply!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793))))))

(declare-fun c!533614 () Bool)

(assert (=> b!3175318 (= c!533614 (not (contains!6278 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))))) (tuple2!34965 lt!1067793 (apply!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793)))))))

(declare-fun lt!1067797 () Unit!50059)

(assert (=> b!3175318 (= lt!1067797 e!1977794)))

(declare-fun b!3175319 () Bool)

(assert (=> b!3175319 (= e!1977788 call!230853)))

(declare-fun call!230849 () List!35676)

(declare-fun bm!230847 () Bool)

(declare-fun getPair!109 (List!35676 tuple2!34960) Option!6947)

(assert (=> bm!230847 (= call!230850 (getPair!109 call!230849 (tuple2!34961 r!4705 c!6979)))))

(declare-fun b!3175320 () Bool)

(declare-fun e!1977792 () Bool)

(assert (=> b!3175320 (= e!1977792 (isDefined!5453 (getPair!109 (apply!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793) (tuple2!34961 r!4705 c!6979))))))

(declare-fun bm!230848 () Bool)

(declare-fun hash!822 (Hashable!4158 tuple2!34960) (_ BitVec 64))

(assert (=> bm!230848 (= call!230852 (hash!822 (hashF!6190 (cache!4294 thiss!28445)) (tuple2!34961 r!4705 c!6979)))))

(declare-fun bm!230849 () Bool)

(declare-fun apply!8000 (ListLongMap!765 (_ BitVec 64)) List!35676)

(assert (=> bm!230849 (= call!230849 (apply!8000 (ite c!533611 lt!1067784 call!230851) call!230852))))

(declare-fun b!3175321 () Bool)

(declare-fun e!1977791 () Bool)

(assert (=> b!3175321 (= e!1977791 call!230853)))

(declare-fun b!3175322 () Bool)

(declare-fun lt!1067781 () Unit!50059)

(assert (=> b!3175322 (= e!1977793 lt!1067781)))

(assert (=> b!3175322 (= lt!1067784 call!230851)))

(declare-fun lemmaInGenericMapThenInLongMap!109 (ListLongMap!765 tuple2!34960 Hashable!4158) Unit!50059)

(assert (=> b!3175322 (= lt!1067781 (lemmaInGenericMapThenInLongMap!109 lt!1067784 (tuple2!34961 r!4705 c!6979) (hashF!6190 (cache!4294 thiss!28445))))))

(declare-fun res!1290140 () Bool)

(assert (=> b!3175322 (= res!1290140 call!230854)))

(assert (=> b!3175322 (=> (not res!1290140) (not e!1977791))))

(assert (=> b!3175322 e!1977791))

(declare-fun b!3175323 () Bool)

(declare-fun Unit!50063 () Unit!50059)

(assert (=> b!3175323 (= e!1977794 Unit!50063)))

(declare-fun b!3175324 () Bool)

(declare-fun Unit!50064 () Unit!50059)

(assert (=> b!3175324 (= e!1977790 Unit!50064)))

(declare-fun d!869502 () Bool)

(declare-fun lt!1067782 () Bool)

(declare-fun contains!6280 (ListMap!1371 tuple2!34960) Bool)

(assert (=> d!869502 (= lt!1067782 (contains!6280 (map!7998 (cache!4294 thiss!28445)) (tuple2!34961 r!4705 c!6979)))))

(assert (=> d!869502 (= lt!1067782 e!1977792)))

(declare-fun res!1290139 () Bool)

(assert (=> d!869502 (=> (not res!1290139) (not e!1977792))))

(declare-fun contains!6281 (MutLongMap!4242 (_ BitVec 64)) Bool)

(assert (=> d!869502 (= res!1290139 (contains!6281 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793))))

(declare-fun lt!1067792 () Unit!50059)

(assert (=> d!869502 (= lt!1067792 e!1977793)))

(assert (=> d!869502 (= c!533611 (contains!6280 (extractMap!252 (toList!2113 (map!7999 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))) (tuple2!34961 r!4705 c!6979)))))

(declare-fun lt!1067794 () Unit!50059)

(assert (=> d!869502 (= lt!1067794 e!1977790)))

(declare-fun c!533613 () Bool)

(assert (=> d!869502 (= c!533613 (contains!6281 (v!35351 (underlying!8714 (cache!4294 thiss!28445))) lt!1067793))))

(assert (=> d!869502 (= lt!1067793 (hash!822 (hashF!6190 (cache!4294 thiss!28445)) (tuple2!34961 r!4705 c!6979)))))

(assert (=> d!869502 (valid!3297 (cache!4294 thiss!28445))))

(assert (=> d!869502 (= (contains!6277 (cache!4294 thiss!28445) (tuple2!34961 r!4705 c!6979)) lt!1067782)))

(declare-fun b!3175325 () Bool)

(assert (=> b!3175325 false))

(declare-fun lt!1067786 () Unit!50059)

(declare-fun lt!1067790 () Unit!50059)

(assert (=> b!3175325 (= lt!1067786 lt!1067790)))

(declare-fun lt!1067788 () ListLongMap!765)

(assert (=> b!3175325 (contains!6280 (extractMap!252 (toList!2113 lt!1067788)) (tuple2!34961 r!4705 c!6979))))

(declare-fun lemmaInLongMapThenInGenericMap!109 (ListLongMap!765 tuple2!34960 Hashable!4158) Unit!50059)

(assert (=> b!3175325 (= lt!1067790 (lemmaInLongMapThenInGenericMap!109 lt!1067788 (tuple2!34961 r!4705 c!6979) (hashF!6190 (cache!4294 thiss!28445))))))

(assert (=> b!3175325 (= lt!1067788 call!230851)))

(declare-fun Unit!50065 () Unit!50059)

(assert (=> b!3175325 (= e!1977789 Unit!50065)))

(assert (= (and d!869502 c!533613) b!3175318))

(assert (= (and d!869502 (not c!533613)) b!3175324))

(assert (= (and b!3175318 c!533614) b!3175317))

(assert (= (and b!3175318 (not c!533614)) b!3175323))

(assert (= (and d!869502 c!533611) b!3175322))

(assert (= (and d!869502 (not c!533611)) b!3175316))

(assert (= (and b!3175322 res!1290140) b!3175321))

(assert (= (and b!3175316 res!1290138) b!3175319))

(assert (= (and b!3175316 c!533612) b!3175325))

(assert (= (and b!3175316 (not c!533612)) b!3175315))

(assert (= (or b!3175322 b!3175316 b!3175319 b!3175325) bm!230845))

(assert (= (or b!3175322 b!3175321 b!3175316 b!3175319) bm!230848))

(assert (= (or b!3175321 b!3175319) bm!230849))

(assert (= (or b!3175322 b!3175316) bm!230846))

(assert (= (or b!3175321 b!3175319) bm!230847))

(assert (= (or b!3175321 b!3175319) bm!230844))

(assert (= (and d!869502 res!1290139) b!3175320))

(declare-fun m!3432157 () Bool)

(assert (=> b!3175320 m!3432157))

(assert (=> b!3175320 m!3432157))

(declare-fun m!3432159 () Bool)

(assert (=> b!3175320 m!3432159))

(assert (=> b!3175320 m!3432159))

(declare-fun m!3432161 () Bool)

(assert (=> b!3175320 m!3432161))

(assert (=> b!3175317 m!3432132))

(declare-fun m!3432163 () Bool)

(assert (=> b!3175317 m!3432163))

(declare-fun m!3432165 () Bool)

(assert (=> b!3175317 m!3432165))

(assert (=> b!3175317 m!3432163))

(declare-fun m!3432167 () Bool)

(assert (=> b!3175317 m!3432167))

(declare-fun m!3432169 () Bool)

(assert (=> b!3175317 m!3432169))

(declare-fun m!3432171 () Bool)

(assert (=> b!3175317 m!3432171))

(declare-fun m!3432173 () Bool)

(assert (=> b!3175317 m!3432173))

(declare-fun m!3432175 () Bool)

(assert (=> b!3175317 m!3432175))

(assert (=> b!3175317 m!3432157))

(declare-fun m!3432177 () Bool)

(assert (=> b!3175322 m!3432177))

(declare-fun m!3432179 () Bool)

(assert (=> bm!230846 m!3432179))

(assert (=> b!3175318 m!3432132))

(assert (=> b!3175318 m!3432157))

(declare-fun m!3432181 () Bool)

(assert (=> b!3175318 m!3432181))

(declare-fun m!3432183 () Bool)

(assert (=> b!3175318 m!3432183))

(declare-fun m!3432185 () Bool)

(assert (=> bm!230844 m!3432185))

(declare-fun m!3432187 () Bool)

(assert (=> bm!230849 m!3432187))

(declare-fun m!3432189 () Bool)

(assert (=> bm!230847 m!3432189))

(assert (=> bm!230845 m!3432132))

(declare-fun m!3432191 () Bool)

(assert (=> bm!230848 m!3432191))

(assert (=> d!869502 m!3432191))

(declare-fun m!3432193 () Bool)

(assert (=> d!869502 m!3432193))

(assert (=> d!869502 m!3432118))

(declare-fun m!3432195 () Bool)

(assert (=> d!869502 m!3432195))

(assert (=> d!869502 m!3432110))

(assert (=> d!869502 m!3432118))

(assert (=> d!869502 m!3432149))

(declare-fun m!3432197 () Bool)

(assert (=> d!869502 m!3432197))

(assert (=> d!869502 m!3432132))

(assert (=> d!869502 m!3432149))

(declare-fun m!3432199 () Bool)

(assert (=> b!3175325 m!3432199))

(assert (=> b!3175325 m!3432199))

(declare-fun m!3432201 () Bool)

(assert (=> b!3175325 m!3432201))

(declare-fun m!3432203 () Bool)

(assert (=> b!3175325 m!3432203))

(assert (=> b!3175239 d!869502))

(declare-fun b!3175330 () Bool)

(declare-fun tp!1004013 () Bool)

(declare-fun tp!1004014 () Bool)

(declare-fun e!1977797 () Bool)

(declare-fun tp!1004015 () Bool)

(assert (=> b!3175330 (= e!1977797 (and tp!1004013 tp_is_empty!17205 tp!1004014 tp!1004015))))

(assert (=> b!3175228 (= tp!1003995 e!1977797)))

(assert (= (and b!3175228 ((_ is Cons!35552) (zeroValue!4501 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))))) b!3175330))

(declare-fun b!3175331 () Bool)

(declare-fun e!1977798 () Bool)

(declare-fun tp!1004018 () Bool)

(declare-fun tp!1004016 () Bool)

(declare-fun tp!1004017 () Bool)

(assert (=> b!3175331 (= e!1977798 (and tp!1004016 tp_is_empty!17205 tp!1004017 tp!1004018))))

(assert (=> b!3175228 (= tp!1004005 e!1977798)))

(assert (= (and b!3175228 ((_ is Cons!35552) (minValue!4501 (v!35350 (underlying!8713 (v!35351 (underlying!8714 (cache!4294 thiss!28445)))))))) b!3175331))

(declare-fun b!3175344 () Bool)

(declare-fun e!1977801 () Bool)

(declare-fun tp!1004031 () Bool)

(assert (=> b!3175344 (= e!1977801 tp!1004031)))

(declare-fun b!3175343 () Bool)

(declare-fun tp!1004030 () Bool)

(declare-fun tp!1004033 () Bool)

(assert (=> b!3175343 (= e!1977801 (and tp!1004030 tp!1004033))))

(declare-fun b!3175345 () Bool)

(declare-fun tp!1004032 () Bool)

(declare-fun tp!1004029 () Bool)

(assert (=> b!3175345 (= e!1977801 (and tp!1004032 tp!1004029))))

(assert (=> b!3175227 (= tp!1003999 e!1977801)))

(declare-fun b!3175342 () Bool)

(assert (=> b!3175342 (= e!1977801 tp_is_empty!17205)))

(assert (= (and b!3175227 ((_ is ElementMatch!9821) (regOne!20155 r!4705))) b!3175342))

(assert (= (and b!3175227 ((_ is Concat!15142) (regOne!20155 r!4705))) b!3175343))

(assert (= (and b!3175227 ((_ is Star!9821) (regOne!20155 r!4705))) b!3175344))

(assert (= (and b!3175227 ((_ is Union!9821) (regOne!20155 r!4705))) b!3175345))

(declare-fun b!3175348 () Bool)

(declare-fun e!1977802 () Bool)

(declare-fun tp!1004036 () Bool)

(assert (=> b!3175348 (= e!1977802 tp!1004036)))

(declare-fun b!3175347 () Bool)

(declare-fun tp!1004035 () Bool)

(declare-fun tp!1004038 () Bool)

(assert (=> b!3175347 (= e!1977802 (and tp!1004035 tp!1004038))))

(declare-fun b!3175349 () Bool)

(declare-fun tp!1004037 () Bool)

(declare-fun tp!1004034 () Bool)

(assert (=> b!3175349 (= e!1977802 (and tp!1004037 tp!1004034))))

(assert (=> b!3175227 (= tp!1004006 e!1977802)))

(declare-fun b!3175346 () Bool)

(assert (=> b!3175346 (= e!1977802 tp_is_empty!17205)))

(assert (= (and b!3175227 ((_ is ElementMatch!9821) (regTwo!20155 r!4705))) b!3175346))

(assert (= (and b!3175227 ((_ is Concat!15142) (regTwo!20155 r!4705))) b!3175347))

(assert (= (and b!3175227 ((_ is Star!9821) (regTwo!20155 r!4705))) b!3175348))

(assert (= (and b!3175227 ((_ is Union!9821) (regTwo!20155 r!4705))) b!3175349))

(declare-fun b!3175352 () Bool)

(declare-fun e!1977803 () Bool)

(declare-fun tp!1004041 () Bool)

(assert (=> b!3175352 (= e!1977803 tp!1004041)))

(declare-fun b!3175351 () Bool)

(declare-fun tp!1004040 () Bool)

(declare-fun tp!1004043 () Bool)

(assert (=> b!3175351 (= e!1977803 (and tp!1004040 tp!1004043))))

(declare-fun b!3175353 () Bool)

(declare-fun tp!1004042 () Bool)

(declare-fun tp!1004039 () Bool)

(assert (=> b!3175353 (= e!1977803 (and tp!1004042 tp!1004039))))

(assert (=> b!3175241 (= tp!1003997 e!1977803)))

(declare-fun b!3175350 () Bool)

(assert (=> b!3175350 (= e!1977803 tp_is_empty!17205)))

(assert (= (and b!3175241 ((_ is ElementMatch!9821) (regOne!20154 r!4705))) b!3175350))

(assert (= (and b!3175241 ((_ is Concat!15142) (regOne!20154 r!4705))) b!3175351))

(assert (= (and b!3175241 ((_ is Star!9821) (regOne!20154 r!4705))) b!3175352))

(assert (= (and b!3175241 ((_ is Union!9821) (regOne!20154 r!4705))) b!3175353))

(declare-fun b!3175356 () Bool)

(declare-fun e!1977804 () Bool)

(declare-fun tp!1004046 () Bool)

(assert (=> b!3175356 (= e!1977804 tp!1004046)))

(declare-fun b!3175355 () Bool)

(declare-fun tp!1004045 () Bool)

(declare-fun tp!1004048 () Bool)

(assert (=> b!3175355 (= e!1977804 (and tp!1004045 tp!1004048))))

(declare-fun b!3175357 () Bool)

(declare-fun tp!1004047 () Bool)

(declare-fun tp!1004044 () Bool)

(assert (=> b!3175357 (= e!1977804 (and tp!1004047 tp!1004044))))

(assert (=> b!3175241 (= tp!1003998 e!1977804)))

(declare-fun b!3175354 () Bool)

(assert (=> b!3175354 (= e!1977804 tp_is_empty!17205)))

(assert (= (and b!3175241 ((_ is ElementMatch!9821) (regTwo!20154 r!4705))) b!3175354))

(assert (= (and b!3175241 ((_ is Concat!15142) (regTwo!20154 r!4705))) b!3175355))

(assert (= (and b!3175241 ((_ is Star!9821) (regTwo!20154 r!4705))) b!3175356))

(assert (= (and b!3175241 ((_ is Union!9821) (regTwo!20154 r!4705))) b!3175357))

(declare-fun b!3175360 () Bool)

(declare-fun e!1977805 () Bool)

(declare-fun tp!1004051 () Bool)

(assert (=> b!3175360 (= e!1977805 tp!1004051)))

(declare-fun b!3175359 () Bool)

(declare-fun tp!1004050 () Bool)

(declare-fun tp!1004053 () Bool)

(assert (=> b!3175359 (= e!1977805 (and tp!1004050 tp!1004053))))

(declare-fun b!3175361 () Bool)

(declare-fun tp!1004052 () Bool)

(declare-fun tp!1004049 () Bool)

(assert (=> b!3175361 (= e!1977805 (and tp!1004052 tp!1004049))))

(assert (=> b!3175234 (= tp!1004003 e!1977805)))

(declare-fun b!3175358 () Bool)

(assert (=> b!3175358 (= e!1977805 tp_is_empty!17205)))

(assert (= (and b!3175234 ((_ is ElementMatch!9821) (reg!10150 r!4705))) b!3175358))

(assert (= (and b!3175234 ((_ is Concat!15142) (reg!10150 r!4705))) b!3175359))

(assert (= (and b!3175234 ((_ is Star!9821) (reg!10150 r!4705))) b!3175360))

(assert (= (and b!3175234 ((_ is Union!9821) (reg!10150 r!4705))) b!3175361))

(declare-fun tp!1004070 () Bool)

(declare-fun tp!1004073 () Bool)

(declare-fun b!3175368 () Bool)

(declare-fun tp!1004069 () Bool)

(declare-fun e!1977811 () Bool)

(assert (=> b!3175368 (= e!1977811 (and tp!1004069 tp_is_empty!17205 tp!1004073 tp!1004070))))

(declare-fun condMapEmpty!19205 () Bool)

(declare-fun mapDefault!19205 () List!35676)

(assert (=> mapNonEmpty!19202 (= condMapEmpty!19205 (= mapRest!19202 ((as const (Array (_ BitVec 32) List!35676)) mapDefault!19205)))))

(declare-fun e!1977810 () Bool)

(declare-fun mapRes!19205 () Bool)

(assert (=> mapNonEmpty!19202 (= tp!1004004 (and e!1977810 mapRes!19205))))

(declare-fun mapIsEmpty!19205 () Bool)

(assert (=> mapIsEmpty!19205 mapRes!19205))

(declare-fun mapNonEmpty!19205 () Bool)

(declare-fun tp!1004071 () Bool)

(assert (=> mapNonEmpty!19205 (= mapRes!19205 (and tp!1004071 e!1977811))))

(declare-fun mapRest!19205 () (Array (_ BitVec 32) List!35676))

(declare-fun mapKey!19205 () (_ BitVec 32))

(declare-fun mapValue!19205 () List!35676)

(assert (=> mapNonEmpty!19205 (= mapRest!19202 (store mapRest!19205 mapKey!19205 mapValue!19205))))

(declare-fun tp!1004074 () Bool)

(declare-fun tp!1004072 () Bool)

(declare-fun tp!1004068 () Bool)

(declare-fun b!3175369 () Bool)

(assert (=> b!3175369 (= e!1977810 (and tp!1004068 tp_is_empty!17205 tp!1004074 tp!1004072))))

(assert (= (and mapNonEmpty!19202 condMapEmpty!19205) mapIsEmpty!19205))

(assert (= (and mapNonEmpty!19202 (not condMapEmpty!19205)) mapNonEmpty!19205))

(assert (= (and mapNonEmpty!19205 ((_ is Cons!35552) mapValue!19205)) b!3175368))

(assert (= (and mapNonEmpty!19202 ((_ is Cons!35552) mapDefault!19205)) b!3175369))

(declare-fun m!3432205 () Bool)

(assert (=> mapNonEmpty!19205 m!3432205))

(declare-fun tp!1004075 () Bool)

(declare-fun e!1977812 () Bool)

(declare-fun tp!1004077 () Bool)

(declare-fun tp!1004076 () Bool)

(declare-fun b!3175370 () Bool)

(assert (=> b!3175370 (= e!1977812 (and tp!1004075 tp_is_empty!17205 tp!1004076 tp!1004077))))

(assert (=> mapNonEmpty!19202 (= tp!1004002 e!1977812)))

(assert (= (and mapNonEmpty!19202 ((_ is Cons!35552) mapValue!19202)) b!3175370))

(declare-fun e!1977813 () Bool)

(declare-fun tp!1004080 () Bool)

(declare-fun tp!1004078 () Bool)

(declare-fun tp!1004079 () Bool)

(declare-fun b!3175371 () Bool)

(assert (=> b!3175371 (= e!1977813 (and tp!1004078 tp_is_empty!17205 tp!1004079 tp!1004080))))

(assert (=> b!3175230 (= tp!1004000 e!1977813)))

(assert (= (and b!3175230 ((_ is Cons!35552) mapDefault!19202)) b!3175371))

(declare-fun b_lambda!86513 () Bool)

(assert (= b_lambda!86511 (or b!3175232 b_lambda!86513)))

(declare-fun bs!539675 () Bool)

(declare-fun d!869504 () Bool)

(assert (= bs!539675 (and d!869504 b!3175232)))

(declare-fun res!1290141 () Bool)

(declare-fun e!1977814 () Bool)

(assert (=> bs!539675 (=> (not res!1290141) (not e!1977814))))

(assert (=> bs!539675 (= res!1290141 (validRegex!4522 (_1!20612 (_1!20613 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445))))))))))

(assert (=> bs!539675 (= (dynLambda!14375 lambda!116192 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445))))) e!1977814)))

(declare-fun b!3175372 () Bool)

(declare-fun derivativeStep!2925 (Regex!9821 C!19828) Regex!9821)

(assert (=> b!3175372 (= e!1977814 (= (_2!20613 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445))))) (derivativeStep!2925 (_1!20612 (_1!20613 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445)))))) (_2!20612 (_1!20613 (h!40972 (toList!2112 (map!7998 (cache!4294 thiss!28445)))))))))))

(assert (= (and bs!539675 res!1290141) b!3175372))

(declare-fun m!3432207 () Bool)

(assert (=> bs!539675 m!3432207))

(declare-fun m!3432209 () Bool)

(assert (=> b!3175372 m!3432209))

(assert (=> b!3175264 d!869504))

(check-sat (not b!3175331) (not b!3175357) (not b!3175256) (not b!3175344) (not b!3175360) (not b!3175322) (not b!3175355) (not b!3175369) (not mapNonEmpty!19205) (not d!869488) (not d!869502) (not b!3175349) (not b!3175317) (not b!3175356) (not bs!539675) (not b!3175372) (not b!3175255) (not b!3175247) (not b!3175330) (not b!3175348) (not bm!230848) (not bm!230849) (not b!3175368) (not bm!230844) (not b!3175359) (not b!3175351) (not b!3175347) (not bm!230845) (not d!869494) (not b!3175352) (not b!3175371) tp_is_empty!17205 (not b!3175353) (not d!869486) (not b!3175343) (not b!3175345) (not b!3175286) (not bm!230846) (not b!3175320) (not b!3175361) (not b!3175318) (not b!3175370) (not b_next!84155) (not bm!230831) b_and!209745 b_and!209743 (not b_lambda!86513) (not bm!230847) (not b!3175259) (not b_next!84153) (not b!3175325) (not b!3175248) (not b!3175265) (not bm!230830))
(check-sat b_and!209745 b_and!209743 (not b_next!84155) (not b_next!84153))
