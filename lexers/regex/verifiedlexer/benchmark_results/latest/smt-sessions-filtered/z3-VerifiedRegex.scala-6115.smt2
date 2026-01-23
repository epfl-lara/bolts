; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297068 () Bool)

(assert start!297068)

(declare-fun b!3171809 () Bool)

(declare-fun b_free!83289 () Bool)

(declare-fun b_next!83993 () Bool)

(assert (=> b!3171809 (= b_free!83289 (not b_next!83993))))

(declare-fun tp!1001615 () Bool)

(declare-fun b_and!209567 () Bool)

(assert (=> b!3171809 (= tp!1001615 b_and!209567)))

(declare-fun b!3171806 () Bool)

(declare-fun b_free!83291 () Bool)

(declare-fun b_next!83995 () Bool)

(assert (=> b!3171806 (= b_free!83291 (not b_next!83995))))

(declare-fun tp!1001618 () Bool)

(declare-fun b_and!209569 () Bool)

(assert (=> b!3171806 (= tp!1001618 b_and!209569)))

(declare-fun b!3171804 () Bool)

(declare-fun e!1975442 () Bool)

(assert (=> b!3171804 (= e!1975442 false)))

(declare-datatypes ((C!19748 0))(
  ( (C!19749 (val!11910 Int)) )
))
(declare-datatypes ((Regex!9781 0))(
  ( (ElementMatch!9781 (c!533263 C!19748)) (Concat!15102 (regOne!20074 Regex!9781) (regTwo!20074 Regex!9781)) (EmptyExpr!9781) (Star!9781 (reg!10110 Regex!9781)) (EmptyLang!9781) (Union!9781 (regOne!20075 Regex!9781) (regTwo!20075 Regex!9781)) )
))
(declare-datatypes ((tuple2!34778 0))(
  ( (tuple2!34779 (_1!20521 Regex!9781) (_2!20521 C!19748)) )
))
(declare-datatypes ((tuple2!34780 0))(
  ( (tuple2!34781 (_1!20522 tuple2!34778) (_2!20522 Regex!9781)) )
))
(declare-datatypes ((List!35625 0))(
  ( (Nil!35501) (Cons!35501 (h!40921 tuple2!34780) (t!234708 List!35625)) )
))
(declare-datatypes ((array!15046 0))(
  ( (array!15047 (arr!6694 (Array (_ BitVec 32) (_ BitVec 64))) (size!26780 (_ BitVec 32))) )
))
(declare-datatypes ((array!15048 0))(
  ( (array!15049 (arr!6695 (Array (_ BitVec 32) List!35625)) (size!26781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8404 0))(
  ( (LongMapFixedSize!8405 (defaultEntry!4587 Int) (mask!10886 (_ BitVec 32)) (extraKeys!4451 (_ BitVec 32)) (zeroValue!4461 List!35625) (minValue!4461 List!35625) (_size!8447 (_ BitVec 32)) (_keys!4502 array!15046) (_values!4483 array!15048) (_vacant!4263 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16617 0))(
  ( (Cell!16618 (v!35243 LongMapFixedSize!8404)) )
))
(declare-datatypes ((MutLongMap!4202 0))(
  ( (LongMap!4202 (underlying!8633 Cell!16617)) (MutLongMapExt!4201 (__x!22712 Int)) )
))
(declare-datatypes ((Cell!16619 0))(
  ( (Cell!16620 (v!35244 MutLongMap!4202)) )
))
(declare-datatypes ((Hashable!4118 0))(
  ( (HashableExt!4117 (__x!22713 Int)) )
))
(declare-datatypes ((MutableMap!4108 0))(
  ( (MutableMapExt!4107 (__x!22714 Int)) (HashMap!4108 (underlying!8634 Cell!16619) (hashF!6150 Hashable!4118) (_size!8448 (_ BitVec 32)) (defaultValue!4279 Int)) )
))
(declare-datatypes ((Cache!486 0))(
  ( (Cache!487 (cache!4254 MutableMap!4108)) )
))
(declare-fun thiss!28499 () Cache!486)

(declare-fun lt!1066340 () Bool)

(declare-fun c!6988 () C!19748)

(declare-fun r!4721 () Regex!9781)

(declare-fun contains!6207 (MutableMap!4108 tuple2!34778) Bool)

(assert (=> b!3171804 (= lt!1066340 (contains!6207 (cache!4254 thiss!28499) (tuple2!34779 r!4721 c!6988)))))

(declare-fun b!3171805 () Bool)

(declare-fun res!1289164 () Bool)

(assert (=> b!3171805 (=> (not res!1289164) (not e!1975442))))

(declare-fun validCacheMap!87 (MutableMap!4108) Bool)

(assert (=> b!3171805 (= res!1289164 (validCacheMap!87 (cache!4254 thiss!28499)))))

(declare-fun mapIsEmpty!19046 () Bool)

(declare-fun mapRes!19046 () Bool)

(assert (=> mapIsEmpty!19046 mapRes!19046))

(declare-fun e!1975436 () Bool)

(declare-fun e!1975438 () Bool)

(assert (=> b!3171806 (= e!1975436 (and e!1975438 tp!1001618))))

(declare-fun b!3171807 () Bool)

(declare-fun e!1975435 () Bool)

(declare-fun e!1975440 () Bool)

(assert (=> b!3171807 (= e!1975435 e!1975440)))

(declare-fun b!3171808 () Bool)

(declare-fun e!1975441 () Bool)

(declare-fun tp_is_empty!17125 () Bool)

(assert (=> b!3171808 (= e!1975441 tp_is_empty!17125)))

(declare-fun e!1975439 () Bool)

(declare-fun e!1975434 () Bool)

(declare-fun tp!1001608 () Bool)

(declare-fun tp!1001611 () Bool)

(declare-fun array_inv!4800 (array!15046) Bool)

(declare-fun array_inv!4801 (array!15048) Bool)

(assert (=> b!3171809 (= e!1975439 (and tp!1001615 tp!1001608 tp!1001611 (array_inv!4800 (_keys!4502 (v!35243 (underlying!8633 (v!35244 (underlying!8634 (cache!4254 thiss!28499))))))) (array_inv!4801 (_values!4483 (v!35243 (underlying!8633 (v!35244 (underlying!8634 (cache!4254 thiss!28499))))))) e!1975434))))

(declare-fun b!3171810 () Bool)

(declare-fun e!1975443 () Bool)

(assert (=> b!3171810 (= e!1975443 e!1975436)))

(declare-fun b!3171811 () Bool)

(declare-fun tp!1001607 () Bool)

(declare-fun tp!1001609 () Bool)

(assert (=> b!3171811 (= e!1975441 (and tp!1001607 tp!1001609))))

(declare-fun b!3171812 () Bool)

(declare-fun tp!1001610 () Bool)

(declare-fun tp!1001613 () Bool)

(assert (=> b!3171812 (= e!1975441 (and tp!1001610 tp!1001613))))

(declare-fun b!3171813 () Bool)

(assert (=> b!3171813 (= e!1975440 e!1975439)))

(declare-fun res!1289165 () Bool)

(assert (=> start!297068 (=> (not res!1289165) (not e!1975442))))

(declare-fun validRegex!4490 (Regex!9781) Bool)

(assert (=> start!297068 (= res!1289165 (validRegex!4490 r!4721))))

(assert (=> start!297068 e!1975442))

(assert (=> start!297068 e!1975441))

(declare-fun inv!48211 (Cache!486) Bool)

(assert (=> start!297068 (and (inv!48211 thiss!28499) e!1975443)))

(assert (=> start!297068 tp_is_empty!17125))

(declare-fun mapNonEmpty!19046 () Bool)

(declare-fun tp!1001616 () Bool)

(declare-fun tp!1001612 () Bool)

(assert (=> mapNonEmpty!19046 (= mapRes!19046 (and tp!1001616 tp!1001612))))

(declare-fun mapValue!19046 () List!35625)

(declare-fun mapRest!19046 () (Array (_ BitVec 32) List!35625))

(declare-fun mapKey!19046 () (_ BitVec 32))

(assert (=> mapNonEmpty!19046 (= (arr!6695 (_values!4483 (v!35243 (underlying!8633 (v!35244 (underlying!8634 (cache!4254 thiss!28499))))))) (store mapRest!19046 mapKey!19046 mapValue!19046))))

(declare-fun b!3171814 () Bool)

(declare-fun lt!1066339 () MutLongMap!4202)

(get-info :version)

(assert (=> b!3171814 (= e!1975438 (and e!1975435 ((_ is LongMap!4202) lt!1066339)))))

(assert (=> b!3171814 (= lt!1066339 (v!35244 (underlying!8634 (cache!4254 thiss!28499))))))

(declare-fun b!3171815 () Bool)

(declare-fun tp!1001614 () Bool)

(assert (=> b!3171815 (= e!1975434 (and tp!1001614 mapRes!19046))))

(declare-fun condMapEmpty!19046 () Bool)

(declare-fun mapDefault!19046 () List!35625)

(assert (=> b!3171815 (= condMapEmpty!19046 (= (arr!6695 (_values!4483 (v!35243 (underlying!8633 (v!35244 (underlying!8634 (cache!4254 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35625)) mapDefault!19046)))))

(declare-fun b!3171816 () Bool)

(declare-fun tp!1001617 () Bool)

(assert (=> b!3171816 (= e!1975441 tp!1001617)))

(assert (= (and start!297068 res!1289165) b!3171805))

(assert (= (and b!3171805 res!1289164) b!3171804))

(assert (= (and start!297068 ((_ is ElementMatch!9781) r!4721)) b!3171808))

(assert (= (and start!297068 ((_ is Concat!15102) r!4721)) b!3171811))

(assert (= (and start!297068 ((_ is Star!9781) r!4721)) b!3171816))

(assert (= (and start!297068 ((_ is Union!9781) r!4721)) b!3171812))

(assert (= (and b!3171815 condMapEmpty!19046) mapIsEmpty!19046))

(assert (= (and b!3171815 (not condMapEmpty!19046)) mapNonEmpty!19046))

(assert (= b!3171809 b!3171815))

(assert (= b!3171813 b!3171809))

(assert (= b!3171807 b!3171813))

(assert (= (and b!3171814 ((_ is LongMap!4202) (v!35244 (underlying!8634 (cache!4254 thiss!28499))))) b!3171807))

(assert (= b!3171806 b!3171814))

(assert (= (and b!3171810 ((_ is HashMap!4108) (cache!4254 thiss!28499))) b!3171806))

(assert (= start!297068 b!3171810))

(declare-fun m!3430332 () Bool)

(assert (=> b!3171805 m!3430332))

(declare-fun m!3430334 () Bool)

(assert (=> b!3171809 m!3430334))

(declare-fun m!3430336 () Bool)

(assert (=> b!3171809 m!3430336))

(declare-fun m!3430338 () Bool)

(assert (=> start!297068 m!3430338))

(declare-fun m!3430340 () Bool)

(assert (=> start!297068 m!3430340))

(declare-fun m!3430342 () Bool)

(assert (=> mapNonEmpty!19046 m!3430342))

(declare-fun m!3430344 () Bool)

(assert (=> b!3171804 m!3430344))

(check-sat (not mapNonEmpty!19046) (not b!3171812) (not b!3171804) (not b!3171811) (not b!3171809) b_and!209567 (not b_next!83993) tp_is_empty!17125 (not b!3171816) (not start!297068) (not b_next!83995) (not b!3171805) b_and!209569 (not b!3171815))
(check-sat b_and!209569 b_and!209567 (not b_next!83993) (not b_next!83995))
