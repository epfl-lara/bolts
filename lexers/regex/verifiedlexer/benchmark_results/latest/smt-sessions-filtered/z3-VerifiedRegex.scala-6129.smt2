; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297256 () Bool)

(assert start!297256)

(declare-fun b!3174228 () Bool)

(declare-fun b_free!83401 () Bool)

(declare-fun b_next!84105 () Bool)

(assert (=> b!3174228 (= b_free!83401 (not b_next!84105))))

(declare-fun tp!1003270 () Bool)

(declare-fun b_and!209695 () Bool)

(assert (=> b!3174228 (= tp!1003270 b_and!209695)))

(declare-fun b!3174233 () Bool)

(declare-fun b_free!83403 () Bool)

(declare-fun b_next!84107 () Bool)

(assert (=> b!3174233 (= b_free!83403 (not b_next!84107))))

(declare-fun tp!1003271 () Bool)

(declare-fun b_and!209697 () Bool)

(assert (=> b!3174233 (= tp!1003271 b_and!209697)))

(declare-fun b!3174222 () Bool)

(declare-fun res!1289808 () Bool)

(declare-fun e!1977083 () Bool)

(assert (=> b!3174222 (=> (not res!1289808) (not e!1977083))))

(declare-datatypes ((C!19804 0))(
  ( (C!19805 (val!11938 Int)) )
))
(declare-datatypes ((Regex!9809 0))(
  ( (ElementMatch!9809 (c!533512 C!19804)) (Concat!15130 (regOne!20130 Regex!9809) (regTwo!20130 Regex!9809)) (EmptyExpr!9809) (Star!9809 (reg!10138 Regex!9809)) (EmptyLang!9809) (Union!9809 (regOne!20131 Regex!9809) (regTwo!20131 Regex!9809)) )
))
(declare-fun r!4705 () Regex!9809)

(declare-fun validRegex!4512 (Regex!9809) Bool)

(assert (=> b!3174222 (= res!1289808 (validRegex!4512 r!4705))))

(declare-fun b!3174223 () Bool)

(declare-fun e!1977082 () Bool)

(assert (=> b!3174223 (= e!1977082 (not true))))

(declare-fun e!1977089 () Bool)

(assert (=> b!3174223 e!1977089))

(declare-fun res!1289811 () Bool)

(assert (=> b!3174223 (=> (not res!1289811) (not e!1977089))))

(declare-datatypes ((tuple2!34904 0))(
  ( (tuple2!34905 (_1!20584 Regex!9809) (_2!20584 C!19804)) )
))
(declare-fun lt!1067446 () tuple2!34904)

(assert (=> b!3174223 (= res!1289811 (validRegex!4512 (_1!20584 lt!1067446)))))

(declare-fun lt!1067453 () Regex!9809)

(declare-datatypes ((tuple2!34906 0))(
  ( (tuple2!34907 (_1!20585 tuple2!34904) (_2!20585 Regex!9809)) )
))
(declare-datatypes ((List!35660 0))(
  ( (Nil!35536) (Cons!35536 (h!40956 tuple2!34906) (t!234751 List!35660)) )
))
(declare-datatypes ((array!15174 0))(
  ( (array!15175 (arr!6750 (Array (_ BitVec 32) (_ BitVec 64))) (size!26836 (_ BitVec 32))) )
))
(declare-datatypes ((array!15176 0))(
  ( (array!15177 (arr!6751 (Array (_ BitVec 32) List!35660)) (size!26837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8460 0))(
  ( (LongMapFixedSize!8461 (defaultEntry!4615 Int) (mask!10928 (_ BitVec 32)) (extraKeys!4479 (_ BitVec 32)) (zeroValue!4489 List!35660) (minValue!4489 List!35660) (_size!8503 (_ BitVec 32)) (_keys!4530 array!15174) (_values!4511 array!15176) (_vacant!4291 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16729 0))(
  ( (Cell!16730 (v!35318 LongMapFixedSize!8460)) )
))
(declare-datatypes ((MutLongMap!4230 0))(
  ( (LongMap!4230 (underlying!8689 Cell!16729)) (MutLongMapExt!4229 (__x!22796 Int)) )
))
(declare-datatypes ((Cell!16731 0))(
  ( (Cell!16732 (v!35319 MutLongMap!4230)) )
))
(declare-datatypes ((Hashable!4146 0))(
  ( (HashableExt!4145 (__x!22797 Int)) )
))
(declare-datatypes ((MutableMap!4136 0))(
  ( (MutableMapExt!4135 (__x!22798 Int)) (HashMap!4136 (underlying!8690 Cell!16731) (hashF!6178 Hashable!4146) (_size!8504 (_ BitVec 32)) (defaultValue!4307 Int)) )
))
(declare-datatypes ((Cache!542 0))(
  ( (Cache!543 (cache!4282 MutableMap!4136)) )
))
(declare-fun thiss!28445 () Cache!542)

(declare-fun apply!7990 (MutableMap!4136 tuple2!34904) Regex!9809)

(assert (=> b!3174223 (= lt!1067453 (apply!7990 (cache!4282 thiss!28445) lt!1067446))))

(declare-fun lt!1067452 () tuple2!34906)

(assert (=> b!3174223 (= lt!1067452 (tuple2!34907 lt!1067446 (apply!7990 (cache!4282 thiss!28445) lt!1067446)))))

(declare-fun lambda!116156 () Int)

(declare-datatypes ((Unit!50029 0))(
  ( (Unit!50030) )
))
(declare-fun lt!1067447 () Unit!50029)

(declare-fun lemmaForallPairsThenForLookup!59 (MutableMap!4136 tuple2!34904 Int) Unit!50029)

(assert (=> b!3174223 (= lt!1067447 (lemmaForallPairsThenForLookup!59 (cache!4282 thiss!28445) lt!1067446 lambda!116156))))

(declare-fun b!3174224 () Bool)

(declare-fun e!1977088 () Bool)

(declare-fun tp_is_empty!17181 () Bool)

(assert (=> b!3174224 (= e!1977088 tp_is_empty!17181)))

(declare-fun b!3174225 () Bool)

(declare-fun e!1977080 () Bool)

(declare-fun e!1977084 () Bool)

(assert (=> b!3174225 (= e!1977080 e!1977084)))

(declare-fun b!3174226 () Bool)

(declare-fun tp!1003268 () Bool)

(declare-fun tp!1003275 () Bool)

(assert (=> b!3174226 (= e!1977088 (and tp!1003268 tp!1003275))))

(declare-fun b!3174227 () Bool)

(declare-fun e!1977079 () Bool)

(declare-fun e!1977087 () Bool)

(assert (=> b!3174227 (= e!1977079 e!1977087)))

(declare-fun e!1977085 () Bool)

(assert (=> b!3174228 (= e!1977087 (and e!1977085 tp!1003270))))

(declare-fun b!3174229 () Bool)

(declare-fun e!1977078 () Bool)

(assert (=> b!3174229 (= e!1977084 e!1977078)))

(declare-fun b!3174230 () Bool)

(declare-fun tp!1003274 () Bool)

(declare-fun tp!1003273 () Bool)

(assert (=> b!3174230 (= e!1977088 (and tp!1003274 tp!1003273))))

(declare-fun b!3174232 () Bool)

(declare-fun derivativeStep!2924 (Regex!9809 C!19804) Regex!9809)

(assert (=> b!3174232 (= e!1977089 (= (apply!7990 (cache!4282 thiss!28445) lt!1067446) (derivativeStep!2924 (_1!20584 lt!1067446) (_2!20584 lt!1067446))))))

(declare-fun lt!1067450 () Regex!9809)

(assert (=> b!3174232 (= lt!1067450 (apply!7990 (cache!4282 thiss!28445) lt!1067446))))

(declare-fun lt!1067449 () Regex!9809)

(assert (=> b!3174232 (= lt!1067449 (apply!7990 (cache!4282 thiss!28445) lt!1067446))))

(declare-fun lt!1067451 () tuple2!34904)

(assert (=> b!3174232 (= lt!1067451 lt!1067446)))

(declare-fun mapNonEmpty!19154 () Bool)

(declare-fun mapRes!19154 () Bool)

(declare-fun tp!1003269 () Bool)

(declare-fun tp!1003277 () Bool)

(assert (=> mapNonEmpty!19154 (= mapRes!19154 (and tp!1003269 tp!1003277))))

(declare-fun mapRest!19154 () (Array (_ BitVec 32) List!35660))

(declare-fun mapValue!19154 () List!35660)

(declare-fun mapKey!19154 () (_ BitVec 32))

(assert (=> mapNonEmpty!19154 (= (arr!6751 (_values!4511 (v!35318 (underlying!8689 (v!35319 (underlying!8690 (cache!4282 thiss!28445))))))) (store mapRest!19154 mapKey!19154 mapValue!19154))))

(declare-fun e!1977086 () Bool)

(declare-fun tp!1003272 () Bool)

(declare-fun tp!1003278 () Bool)

(declare-fun array_inv!4844 (array!15174) Bool)

(declare-fun array_inv!4845 (array!15176) Bool)

(assert (=> b!3174233 (= e!1977078 (and tp!1003271 tp!1003272 tp!1003278 (array_inv!4844 (_keys!4530 (v!35318 (underlying!8689 (v!35319 (underlying!8690 (cache!4282 thiss!28445))))))) (array_inv!4845 (_values!4511 (v!35318 (underlying!8689 (v!35319 (underlying!8690 (cache!4282 thiss!28445))))))) e!1977086))))

(declare-fun b!3174234 () Bool)

(assert (=> b!3174234 (= e!1977083 e!1977082)))

(declare-fun res!1289809 () Bool)

(assert (=> b!3174234 (=> (not res!1289809) (not e!1977082))))

(declare-fun contains!6251 (MutableMap!4136 tuple2!34904) Bool)

(assert (=> b!3174234 (= res!1289809 (contains!6251 (cache!4282 thiss!28445) lt!1067446))))

(declare-fun c!6979 () C!19804)

(assert (=> b!3174234 (= lt!1067446 (tuple2!34905 r!4705 c!6979))))

(declare-fun mapIsEmpty!19154 () Bool)

(assert (=> mapIsEmpty!19154 mapRes!19154))

(declare-fun b!3174235 () Bool)

(declare-fun lt!1067448 () MutLongMap!4230)

(get-info :version)

(assert (=> b!3174235 (= e!1977085 (and e!1977080 ((_ is LongMap!4230) lt!1067448)))))

(assert (=> b!3174235 (= lt!1067448 (v!35319 (underlying!8690 (cache!4282 thiss!28445))))))

(declare-fun b!3174236 () Bool)

(declare-fun tp!1003267 () Bool)

(assert (=> b!3174236 (= e!1977086 (and tp!1003267 mapRes!19154))))

(declare-fun condMapEmpty!19154 () Bool)

(declare-fun mapDefault!19154 () List!35660)

(assert (=> b!3174236 (= condMapEmpty!19154 (= (arr!6751 (_values!4511 (v!35318 (underlying!8689 (v!35319 (underlying!8690 (cache!4282 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35660)) mapDefault!19154)))))

(declare-fun res!1289810 () Bool)

(assert (=> start!297256 (=> (not res!1289810) (not e!1977083))))

(declare-fun validCacheMap!109 (MutableMap!4136) Bool)

(assert (=> start!297256 (= res!1289810 (validCacheMap!109 (cache!4282 thiss!28445)))))

(assert (=> start!297256 e!1977083))

(declare-fun inv!48274 (Cache!542) Bool)

(assert (=> start!297256 (and (inv!48274 thiss!28445) e!1977079)))

(assert (=> start!297256 e!1977088))

(assert (=> start!297256 tp_is_empty!17181))

(declare-fun b!3174231 () Bool)

(declare-fun tp!1003276 () Bool)

(assert (=> b!3174231 (= e!1977088 tp!1003276)))

(assert (= (and start!297256 res!1289810) b!3174222))

(assert (= (and b!3174222 res!1289808) b!3174234))

(assert (= (and b!3174234 res!1289809) b!3174223))

(assert (= (and b!3174223 res!1289811) b!3174232))

(assert (= (and b!3174236 condMapEmpty!19154) mapIsEmpty!19154))

(assert (= (and b!3174236 (not condMapEmpty!19154)) mapNonEmpty!19154))

(assert (= b!3174233 b!3174236))

(assert (= b!3174229 b!3174233))

(assert (= b!3174225 b!3174229))

(assert (= (and b!3174235 ((_ is LongMap!4230) (v!35319 (underlying!8690 (cache!4282 thiss!28445))))) b!3174225))

(assert (= b!3174228 b!3174235))

(assert (= (and b!3174227 ((_ is HashMap!4136) (cache!4282 thiss!28445))) b!3174228))

(assert (= start!297256 b!3174227))

(assert (= (and start!297256 ((_ is ElementMatch!9809) r!4705)) b!3174224))

(assert (= (and start!297256 ((_ is Concat!15130) r!4705)) b!3174226))

(assert (= (and start!297256 ((_ is Star!9809) r!4705)) b!3174231))

(assert (= (and start!297256 ((_ is Union!9809) r!4705)) b!3174230))

(declare-fun m!3431636 () Bool)

(assert (=> b!3174233 m!3431636))

(declare-fun m!3431638 () Bool)

(assert (=> b!3174233 m!3431638))

(declare-fun m!3431640 () Bool)

(assert (=> b!3174222 m!3431640))

(declare-fun m!3431642 () Bool)

(assert (=> b!3174234 m!3431642))

(declare-fun m!3431644 () Bool)

(assert (=> mapNonEmpty!19154 m!3431644))

(declare-fun m!3431646 () Bool)

(assert (=> b!3174223 m!3431646))

(declare-fun m!3431648 () Bool)

(assert (=> b!3174223 m!3431648))

(declare-fun m!3431650 () Bool)

(assert (=> b!3174223 m!3431650))

(declare-fun m!3431652 () Bool)

(assert (=> start!297256 m!3431652))

(declare-fun m!3431654 () Bool)

(assert (=> start!297256 m!3431654))

(assert (=> b!3174232 m!3431648))

(declare-fun m!3431656 () Bool)

(assert (=> b!3174232 m!3431656))

(check-sat (not b!3174226) (not b!3174233) (not b!3174236) tp_is_empty!17181 (not b_next!84105) (not b!3174232) (not mapNonEmpty!19154) (not b_next!84107) (not b!3174230) (not b!3174234) b_and!209697 (not start!297256) (not b!3174222) (not b!3174231) b_and!209695 (not b!3174223))
(check-sat b_and!209697 b_and!209695 (not b_next!84107) (not b_next!84105))
