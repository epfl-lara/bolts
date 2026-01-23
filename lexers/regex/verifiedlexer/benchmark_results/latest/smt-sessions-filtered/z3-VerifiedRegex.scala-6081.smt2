; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296398 () Bool)

(assert start!296398)

(declare-fun b!3161913 () Bool)

(declare-fun b_free!83017 () Bool)

(declare-fun b_next!83721 () Bool)

(assert (=> b!3161913 (= b_free!83017 (not b_next!83721))))

(declare-fun tp!995102 () Bool)

(declare-fun b_and!209263 () Bool)

(assert (=> b!3161913 (= tp!995102 b_and!209263)))

(declare-fun b!3161909 () Bool)

(declare-fun b_free!83019 () Bool)

(declare-fun b_next!83723 () Bool)

(assert (=> b!3161909 (= b_free!83019 (not b_next!83723))))

(declare-fun tp!995096 () Bool)

(declare-fun b_and!209265 () Bool)

(assert (=> b!3161909 (= tp!995096 b_and!209265)))

(declare-fun b!3161904 () Bool)

(declare-fun e!1969829 () Bool)

(declare-fun tp!995105 () Bool)

(declare-fun mapRes!18759 () Bool)

(assert (=> b!3161904 (= e!1969829 (and tp!995105 mapRes!18759))))

(declare-fun condMapEmpty!18759 () Bool)

(declare-datatypes ((C!19612 0))(
  ( (C!19613 (val!11842 Int)) )
))
(declare-datatypes ((Regex!9713 0))(
  ( (ElementMatch!9713 (c!531745 C!19612)) (Concat!15034 (regOne!19938 Regex!9713) (regTwo!19938 Regex!9713)) (EmptyExpr!9713) (Star!9713 (reg!10042 Regex!9713)) (EmptyLang!9713) (Union!9713 (regOne!19939 Regex!9713) (regTwo!19939 Regex!9713)) )
))
(declare-datatypes ((tuple2!34386 0))(
  ( (tuple2!34387 (_1!20325 Regex!9713) (_2!20325 C!19612)) )
))
(declare-datatypes ((tuple2!34388 0))(
  ( (tuple2!34389 (_1!20326 tuple2!34386) (_2!20326 Regex!9713)) )
))
(declare-datatypes ((array!14724 0))(
  ( (array!14725 (arr!6558 (Array (_ BitVec 32) (_ BitVec 64))) (size!26644 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4050 0))(
  ( (HashableExt!4049 (__x!22508 Int)) )
))
(declare-datatypes ((List!35542 0))(
  ( (Nil!35418) (Cons!35418 (h!40838 tuple2!34388) (t!234609 List!35542)) )
))
(declare-datatypes ((array!14726 0))(
  ( (array!14727 (arr!6559 (Array (_ BitVec 32) List!35542)) (size!26645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8268 0))(
  ( (LongMapFixedSize!8269 (defaultEntry!4519 Int) (mask!10784 (_ BitVec 32)) (extraKeys!4383 (_ BitVec 32)) (zeroValue!4393 List!35542) (minValue!4393 List!35542) (_size!8311 (_ BitVec 32)) (_keys!4434 array!14724) (_values!4415 array!14726) (_vacant!4195 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16345 0))(
  ( (Cell!16346 (v!35056 LongMapFixedSize!8268)) )
))
(declare-datatypes ((MutLongMap!4134 0))(
  ( (LongMap!4134 (underlying!8497 Cell!16345)) (MutLongMapExt!4133 (__x!22509 Int)) )
))
(declare-datatypes ((Cell!16347 0))(
  ( (Cell!16348 (v!35057 MutLongMap!4134)) )
))
(declare-datatypes ((MutableMap!4040 0))(
  ( (MutableMapExt!4039 (__x!22510 Int)) (HashMap!4040 (underlying!8498 Cell!16347) (hashF!6082 Hashable!4050) (_size!8312 (_ BitVec 32)) (defaultValue!4211 Int)) )
))
(declare-datatypes ((Cache!350 0))(
  ( (Cache!351 (cache!4179 MutableMap!4040)) )
))
(declare-fun cache!347 () Cache!350)

(declare-fun mapDefault!18759 () List!35542)

(assert (=> b!3161904 (= condMapEmpty!18759 (= (arr!6559 (_values!4415 (v!35056 (underlying!8497 (v!35057 (underlying!8498 (cache!4179 cache!347))))))) ((as const (Array (_ BitVec 32) List!35542)) mapDefault!18759)))))

(declare-fun b!3161905 () Bool)

(declare-fun e!1969833 () Bool)

(declare-fun tp_is_empty!16989 () Bool)

(assert (=> b!3161905 (= e!1969833 tp_is_empty!16989)))

(declare-fun b!3161906 () Bool)

(declare-fun res!1287222 () Bool)

(declare-fun e!1969835 () Bool)

(assert (=> b!3161906 (=> (not res!1287222) (not e!1969835))))

(declare-fun valid!3220 (Cache!350) Bool)

(assert (=> b!3161906 (= res!1287222 (valid!3220 cache!347))))

(declare-fun b!3161907 () Bool)

(declare-fun tp!995098 () Bool)

(declare-fun tp!995104 () Bool)

(assert (=> b!3161907 (= e!1969833 (and tp!995098 tp!995104))))

(declare-fun b!3161908 () Bool)

(assert (=> b!3161908 (= e!1969835 false)))

(declare-fun tp!995094 () Bool)

(declare-fun tp!995097 () Bool)

(declare-fun e!1969827 () Bool)

(declare-fun array_inv!4698 (array!14724) Bool)

(declare-fun array_inv!4699 (array!14726) Bool)

(assert (=> b!3161909 (= e!1969827 (and tp!995096 tp!995097 tp!995094 (array_inv!4698 (_keys!4434 (v!35056 (underlying!8497 (v!35057 (underlying!8498 (cache!4179 cache!347))))))) (array_inv!4699 (_values!4415 (v!35056 (underlying!8497 (v!35057 (underlying!8498 (cache!4179 cache!347))))))) e!1969829))))

(declare-fun b!3161910 () Bool)

(declare-fun e!1969832 () Bool)

(declare-fun e!1969826 () Bool)

(assert (=> b!3161910 (= e!1969832 e!1969826)))

(declare-fun res!1287224 () Bool)

(assert (=> start!296398 (=> (not res!1287224) (not e!1969835))))

(declare-fun r!13156 () Regex!9713)

(declare-fun validRegex!4441 (Regex!9713) Bool)

(assert (=> start!296398 (= res!1287224 (validRegex!4441 r!13156))))

(assert (=> start!296398 e!1969835))

(assert (=> start!296398 e!1969833))

(declare-fun inv!48059 (Cache!350) Bool)

(assert (=> start!296398 (and (inv!48059 cache!347) e!1969832)))

(assert (=> start!296398 tp_is_empty!16989))

(declare-fun b!3161911 () Bool)

(declare-fun tp!995100 () Bool)

(assert (=> b!3161911 (= e!1969833 tp!995100)))

(declare-fun b!3161912 () Bool)

(declare-fun res!1287223 () Bool)

(assert (=> b!3161912 (=> (not res!1287223) (not e!1969835))))

(declare-fun a!2409 () C!19612)

(get-info :version)

(declare-datatypes ((Option!6877 0))(
  ( (None!6876) (Some!6876 (v!35058 Regex!9713)) )
))
(declare-fun get!11203 (Cache!350 Regex!9713 C!19612) Option!6877)

(assert (=> b!3161912 (= res!1287223 (not ((_ is Some!6876) (get!11203 cache!347 r!13156 a!2409))))))

(declare-fun mapIsEmpty!18759 () Bool)

(assert (=> mapIsEmpty!18759 mapRes!18759))

(declare-fun e!1969834 () Bool)

(assert (=> b!3161913 (= e!1969826 (and e!1969834 tp!995102))))

(declare-fun b!3161914 () Bool)

(declare-fun tp!995099 () Bool)

(declare-fun tp!995095 () Bool)

(assert (=> b!3161914 (= e!1969833 (and tp!995099 tp!995095))))

(declare-fun b!3161915 () Bool)

(declare-fun e!1969830 () Bool)

(assert (=> b!3161915 (= e!1969830 e!1969827)))

(declare-fun b!3161916 () Bool)

(declare-fun e!1969828 () Bool)

(assert (=> b!3161916 (= e!1969828 e!1969830)))

(declare-fun mapNonEmpty!18759 () Bool)

(declare-fun tp!995103 () Bool)

(declare-fun tp!995101 () Bool)

(assert (=> mapNonEmpty!18759 (= mapRes!18759 (and tp!995103 tp!995101))))

(declare-fun mapKey!18759 () (_ BitVec 32))

(declare-fun mapValue!18759 () List!35542)

(declare-fun mapRest!18759 () (Array (_ BitVec 32) List!35542))

(assert (=> mapNonEmpty!18759 (= (arr!6559 (_values!4415 (v!35056 (underlying!8497 (v!35057 (underlying!8498 (cache!4179 cache!347))))))) (store mapRest!18759 mapKey!18759 mapValue!18759))))

(declare-fun b!3161917 () Bool)

(declare-fun lt!1063094 () MutLongMap!4134)

(assert (=> b!3161917 (= e!1969834 (and e!1969828 ((_ is LongMap!4134) lt!1063094)))))

(assert (=> b!3161917 (= lt!1063094 (v!35057 (underlying!8498 (cache!4179 cache!347))))))

(assert (= (and start!296398 res!1287224) b!3161906))

(assert (= (and b!3161906 res!1287222) b!3161912))

(assert (= (and b!3161912 res!1287223) b!3161908))

(assert (= (and start!296398 ((_ is ElementMatch!9713) r!13156)) b!3161905))

(assert (= (and start!296398 ((_ is Concat!15034) r!13156)) b!3161914))

(assert (= (and start!296398 ((_ is Star!9713) r!13156)) b!3161911))

(assert (= (and start!296398 ((_ is Union!9713) r!13156)) b!3161907))

(assert (= (and b!3161904 condMapEmpty!18759) mapIsEmpty!18759))

(assert (= (and b!3161904 (not condMapEmpty!18759)) mapNonEmpty!18759))

(assert (= b!3161909 b!3161904))

(assert (= b!3161915 b!3161909))

(assert (= b!3161916 b!3161915))

(assert (= (and b!3161917 ((_ is LongMap!4134) (v!35057 (underlying!8498 (cache!4179 cache!347))))) b!3161916))

(assert (= b!3161913 b!3161917))

(assert (= (and b!3161910 ((_ is HashMap!4040) (cache!4179 cache!347))) b!3161913))

(assert (= start!296398 b!3161910))

(declare-fun m!3426104 () Bool)

(assert (=> b!3161912 m!3426104))

(declare-fun m!3426106 () Bool)

(assert (=> mapNonEmpty!18759 m!3426106))

(declare-fun m!3426108 () Bool)

(assert (=> start!296398 m!3426108))

(declare-fun m!3426110 () Bool)

(assert (=> start!296398 m!3426110))

(declare-fun m!3426112 () Bool)

(assert (=> b!3161906 m!3426112))

(declare-fun m!3426114 () Bool)

(assert (=> b!3161909 m!3426114))

(declare-fun m!3426116 () Bool)

(assert (=> b!3161909 m!3426116))

(check-sat b_and!209263 (not b_next!83721) (not b_next!83723) (not b!3161914) (not b!3161909) b_and!209265 (not b!3161911) (not start!296398) (not b!3161907) (not b!3161904) (not b!3161906) tp_is_empty!16989 (not mapNonEmpty!18759) (not b!3161912))
(check-sat b_and!209263 b_and!209265 (not b_next!83723) (not b_next!83721))
