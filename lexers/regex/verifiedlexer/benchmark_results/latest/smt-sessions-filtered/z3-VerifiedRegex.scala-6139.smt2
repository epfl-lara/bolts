; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297366 () Bool)

(assert start!297366)

(declare-fun b!3175642 () Bool)

(declare-fun b_free!83481 () Bool)

(declare-fun b_next!84185 () Bool)

(assert (=> b!3175642 (= b_free!83481 (not b_next!84185))))

(declare-fun tp!1004337 () Bool)

(declare-fun b_and!209775 () Bool)

(assert (=> b!3175642 (= tp!1004337 b_and!209775)))

(declare-fun b!3175644 () Bool)

(declare-fun b_free!83483 () Bool)

(declare-fun b_next!84187 () Bool)

(assert (=> b!3175644 (= b_free!83483 (not b_next!84187))))

(declare-fun tp!1004335 () Bool)

(declare-fun b_and!209777 () Bool)

(assert (=> b!3175644 (= tp!1004335 b_and!209777)))

(declare-fun e!1978038 () Bool)

(declare-fun e!1978042 () Bool)

(assert (=> b!3175642 (= e!1978038 (and e!1978042 tp!1004337))))

(declare-fun b!3175643 () Bool)

(declare-fun e!1978039 () Bool)

(declare-fun tp!1004331 () Bool)

(declare-fun tp!1004333 () Bool)

(assert (=> b!3175643 (= e!1978039 (and tp!1004331 tp!1004333))))

(declare-fun e!1978041 () Bool)

(declare-datatypes ((array!15264 0))(
  ( (array!15265 (arr!6790 (Array (_ BitVec 32) (_ BitVec 64))) (size!26876 (_ BitVec 32))) )
))
(declare-datatypes ((C!19844 0))(
  ( (C!19845 (val!11958 Int)) )
))
(declare-datatypes ((Regex!9829 0))(
  ( (ElementMatch!9829 (c!533622 C!19844)) (Concat!15150 (regOne!20170 Regex!9829) (regTwo!20170 Regex!9829)) (EmptyExpr!9829) (Star!9829 (reg!10158 Regex!9829)) (EmptyLang!9829) (Union!9829 (regOne!20171 Regex!9829) (regTwo!20171 Regex!9829)) )
))
(declare-datatypes ((tuple2!34994 0))(
  ( (tuple2!34995 (_1!20629 Regex!9829) (_2!20629 C!19844)) )
))
(declare-datatypes ((tuple2!34996 0))(
  ( (tuple2!34997 (_1!20630 tuple2!34994) (_2!20630 Regex!9829)) )
))
(declare-datatypes ((List!35685 0))(
  ( (Nil!35561) (Cons!35561 (h!40981 tuple2!34996) (t!234776 List!35685)) )
))
(declare-datatypes ((array!15266 0))(
  ( (array!15267 (arr!6791 (Array (_ BitVec 32) List!35685)) (size!26877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8500 0))(
  ( (LongMapFixedSize!8501 (defaultEntry!4635 Int) (mask!10958 (_ BitVec 32)) (extraKeys!4499 (_ BitVec 32)) (zeroValue!4509 List!35685) (minValue!4509 List!35685) (_size!8543 (_ BitVec 32)) (_keys!4550 array!15264) (_values!4531 array!15266) (_vacant!4311 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16809 0))(
  ( (Cell!16810 (v!35368 LongMapFixedSize!8500)) )
))
(declare-datatypes ((Hashable!4166 0))(
  ( (HashableExt!4165 (__x!22856 Int)) )
))
(declare-datatypes ((MutLongMap!4250 0))(
  ( (LongMap!4250 (underlying!8729 Cell!16809)) (MutLongMapExt!4249 (__x!22857 Int)) )
))
(declare-datatypes ((Cell!16811 0))(
  ( (Cell!16812 (v!35369 MutLongMap!4250)) )
))
(declare-datatypes ((MutableMap!4156 0))(
  ( (MutableMapExt!4155 (__x!22858 Int)) (HashMap!4156 (underlying!8730 Cell!16811) (hashF!6198 Hashable!4166) (_size!8544 (_ BitVec 32)) (defaultValue!4327 Int)) )
))
(declare-fun m!3458 () MutableMap!4156)

(declare-fun e!1978037 () Bool)

(declare-fun tp!1004338 () Bool)

(declare-fun tp!1004325 () Bool)

(declare-fun array_inv!4880 (array!15264) Bool)

(declare-fun array_inv!4881 (array!15266) Bool)

(assert (=> b!3175644 (= e!1978041 (and tp!1004335 tp!1004325 tp!1004338 (array_inv!4880 (_keys!4550 (v!35368 (underlying!8729 (v!35369 (underlying!8730 m!3458)))))) (array_inv!4881 (_values!4531 (v!35368 (underlying!8729 (v!35369 (underlying!8730 m!3458)))))) e!1978037))))

(declare-fun b!3175645 () Bool)

(declare-fun res!1290204 () Bool)

(declare-fun e!1978040 () Bool)

(assert (=> b!3175645 (=> (not res!1290204) (not e!1978040))))

(declare-fun invariantList!510 (List!35685) Bool)

(declare-datatypes ((ListMap!1379 0))(
  ( (ListMap!1380 (toList!2117 List!35685)) )
))
(declare-fun map!8007 (MutableMap!4156) ListMap!1379)

(assert (=> b!3175645 (= res!1290204 (invariantList!510 (toList!2117 (map!8007 m!3458))))))

(declare-fun res!1290203 () Bool)

(assert (=> start!297366 (=> (not res!1290203) (not e!1978040))))

(get-info :version)

(assert (=> start!297366 (= res!1290203 ((_ is HashMap!4156) m!3458))))

(assert (=> start!297366 e!1978040))

(assert (=> start!297366 e!1978038))

(declare-fun e!1978043 () Bool)

(declare-fun tp_is_empty!17213 () Bool)

(assert (=> start!297366 (and e!1978043 tp_is_empty!17213 e!1978039)))

(declare-fun b!3175646 () Bool)

(declare-fun tp!1004329 () Bool)

(assert (=> b!3175646 (= e!1978039 tp!1004329)))

(declare-fun mapNonEmpty!19229 () Bool)

(declare-fun mapRes!19229 () Bool)

(declare-fun tp!1004327 () Bool)

(declare-fun tp!1004322 () Bool)

(assert (=> mapNonEmpty!19229 (= mapRes!19229 (and tp!1004327 tp!1004322))))

(declare-fun mapKey!19229 () (_ BitVec 32))

(declare-fun mapRest!19229 () (Array (_ BitVec 32) List!35685))

(declare-fun mapValue!19229 () List!35685)

(assert (=> mapNonEmpty!19229 (= (arr!6791 (_values!4531 (v!35368 (underlying!8729 (v!35369 (underlying!8730 m!3458)))))) (store mapRest!19229 mapKey!19229 mapValue!19229))))

(declare-fun mapIsEmpty!19229 () Bool)

(assert (=> mapIsEmpty!19229 mapRes!19229))

(declare-fun b!3175647 () Bool)

(declare-fun tp!1004336 () Bool)

(assert (=> b!3175647 (= e!1978037 (and tp!1004336 mapRes!19229))))

(declare-fun condMapEmpty!19229 () Bool)

(declare-fun mapDefault!19229 () List!35685)

(assert (=> b!3175647 (= condMapEmpty!19229 (= (arr!6791 (_values!4531 (v!35368 (underlying!8729 (v!35369 (underlying!8730 m!3458)))))) ((as const (Array (_ BitVec 32) List!35685)) mapDefault!19229)))))

(declare-fun b!3175648 () Bool)

(declare-fun e!1978045 () Bool)

(declare-fun e!1978046 () Bool)

(assert (=> b!3175648 (= e!1978045 e!1978046)))

(declare-fun b!3175649 () Bool)

(assert (=> b!3175649 (= e!1978043 tp_is_empty!17213)))

(declare-fun b!3175650 () Bool)

(assert (=> b!3175650 (= e!1978046 e!1978041)))

(declare-fun b!3175651 () Bool)

(declare-fun tp!1004328 () Bool)

(declare-fun tp!1004334 () Bool)

(assert (=> b!3175651 (= e!1978039 (and tp!1004328 tp!1004334))))

(declare-fun b!3175652 () Bool)

(assert (=> b!3175652 (= e!1978040 false)))

(declare-fun b!3175653 () Bool)

(declare-fun tp!1004324 () Bool)

(declare-fun tp!1004323 () Bool)

(assert (=> b!3175653 (= e!1978043 (and tp!1004324 tp!1004323))))

(declare-fun b!3175654 () Bool)

(assert (=> b!3175654 (= e!1978039 tp_is_empty!17213)))

(declare-fun b!3175655 () Bool)

(declare-fun tp!1004332 () Bool)

(declare-fun tp!1004326 () Bool)

(assert (=> b!3175655 (= e!1978043 (and tp!1004332 tp!1004326))))

(declare-fun b!3175656 () Bool)

(declare-fun lt!1067852 () MutLongMap!4250)

(assert (=> b!3175656 (= e!1978042 (and e!1978045 ((_ is LongMap!4250) lt!1067852)))))

(assert (=> b!3175656 (= lt!1067852 (v!35369 (underlying!8730 m!3458)))))

(declare-fun b!3175657 () Bool)

(declare-fun res!1290205 () Bool)

(assert (=> b!3175657 (=> (not res!1290205) (not e!1978040))))

(declare-fun valid!3302 (MutableMap!4156) Bool)

(assert (=> b!3175657 (= res!1290205 (valid!3302 m!3458))))

(declare-fun b!3175658 () Bool)

(declare-fun tp!1004330 () Bool)

(assert (=> b!3175658 (= e!1978043 tp!1004330)))

(assert (= (and start!297366 res!1290203) b!3175657))

(assert (= (and b!3175657 res!1290205) b!3175645))

(assert (= (and b!3175645 res!1290204) b!3175652))

(assert (= (and b!3175647 condMapEmpty!19229) mapIsEmpty!19229))

(assert (= (and b!3175647 (not condMapEmpty!19229)) mapNonEmpty!19229))

(assert (= b!3175644 b!3175647))

(assert (= b!3175650 b!3175644))

(assert (= b!3175648 b!3175650))

(assert (= (and b!3175656 ((_ is LongMap!4250) (v!35369 (underlying!8730 m!3458)))) b!3175648))

(assert (= b!3175642 b!3175656))

(assert (= (and start!297366 ((_ is HashMap!4156) m!3458)) b!3175642))

(declare-fun _$1!201 () tuple2!34996)

(assert (= (and start!297366 ((_ is ElementMatch!9829) (_1!20629 (_1!20630 _$1!201)))) b!3175649))

(assert (= (and start!297366 ((_ is Concat!15150) (_1!20629 (_1!20630 _$1!201)))) b!3175655))

(assert (= (and start!297366 ((_ is Star!9829) (_1!20629 (_1!20630 _$1!201)))) b!3175658))

(assert (= (and start!297366 ((_ is Union!9829) (_1!20629 (_1!20630 _$1!201)))) b!3175653))

(assert (= (and start!297366 ((_ is ElementMatch!9829) (_2!20630 _$1!201))) b!3175654))

(assert (= (and start!297366 ((_ is Concat!15150) (_2!20630 _$1!201))) b!3175651))

(assert (= (and start!297366 ((_ is Star!9829) (_2!20630 _$1!201))) b!3175646))

(assert (= (and start!297366 ((_ is Union!9829) (_2!20630 _$1!201))) b!3175643))

(declare-fun m!3432311 () Bool)

(assert (=> b!3175644 m!3432311))

(declare-fun m!3432313 () Bool)

(assert (=> b!3175644 m!3432313))

(declare-fun m!3432315 () Bool)

(assert (=> b!3175645 m!3432315))

(declare-fun m!3432317 () Bool)

(assert (=> b!3175645 m!3432317))

(declare-fun m!3432319 () Bool)

(assert (=> mapNonEmpty!19229 m!3432319))

(declare-fun m!3432321 () Bool)

(assert (=> b!3175657 m!3432321))

(check-sat (not mapNonEmpty!19229) (not b!3175653) (not b!3175646) (not b!3175647) (not b!3175644) (not b!3175643) (not b!3175658) (not b_next!84187) b_and!209777 (not b!3175655) (not b!3175651) (not b_next!84185) tp_is_empty!17213 (not b!3175645) b_and!209775 (not b!3175657))
(check-sat b_and!209775 b_and!209777 (not b_next!84187) (not b_next!84185))
