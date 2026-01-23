; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217904 () Bool)

(assert start!217904)

(declare-fun b!2235841 () Bool)

(declare-fun b_free!64841 () Bool)

(declare-fun b_next!65545 () Bool)

(assert (=> b!2235841 (= b_free!64841 (not b_next!65545))))

(declare-fun tp!702661 () Bool)

(declare-fun b_and!174829 () Bool)

(assert (=> b!2235841 (= tp!702661 b_and!174829)))

(declare-fun b!2235839 () Bool)

(declare-fun b_free!64843 () Bool)

(declare-fun b_next!65547 () Bool)

(assert (=> b!2235839 (= b_free!64843 (not b_next!65547))))

(declare-fun tp!702666 () Bool)

(declare-fun b_and!174831 () Bool)

(assert (=> b!2235839 (= tp!702666 b_and!174831)))

(declare-fun b!2235831 () Bool)

(declare-fun e!1428984 () Bool)

(declare-fun e!1428985 () Bool)

(declare-datatypes ((C!13060 0))(
  ( (C!13061 (val!7578 Int)) )
))
(declare-datatypes ((Regex!6457 0))(
  ( (ElementMatch!6457 (c!356353 C!13060)) (Concat!10795 (regOne!13426 Regex!6457) (regTwo!13426 Regex!6457)) (EmptyExpr!6457) (Star!6457 (reg!6786 Regex!6457)) (EmptyLang!6457) (Union!6457 (regOne!13427 Regex!6457) (regTwo!13427 Regex!6457)) )
))
(declare-datatypes ((List!26392 0))(
  ( (Nil!26298) (Cons!26298 (h!31699 Regex!6457) (t!199812 List!26392)) )
))
(declare-datatypes ((Context!4010 0))(
  ( (Context!4011 (exprs!2505 List!26392)) )
))
(declare-datatypes ((tuple3!3986 0))(
  ( (tuple3!3987 (_1!15309 Regex!6457) (_2!15309 Context!4010) (_3!2463 C!13060)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25692 0))(
  ( (tuple2!25693 (_1!15310 tuple3!3986) (_2!15310 (InoxSet Context!4010))) )
))
(declare-datatypes ((array!10756 0))(
  ( (array!10757 (arr!4777 (Array (_ BitVec 32) (_ BitVec 64))) (size!20558 (_ BitVec 32))) )
))
(declare-datatypes ((List!26393 0))(
  ( (Nil!26299) (Cons!26299 (h!31700 tuple2!25692) (t!199813 List!26393)) )
))
(declare-datatypes ((array!10758 0))(
  ( (array!10759 (arr!4778 (Array (_ BitVec 32) List!26393)) (size!20559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6190 0))(
  ( (LongMapFixedSize!6191 (defaultEntry!3460 Int) (mask!7677 (_ BitVec 32)) (extraKeys!3343 (_ BitVec 32)) (zeroValue!3353 List!26393) (minValue!3353 List!26393) (_size!6237 (_ BitVec 32)) (_keys!3392 array!10756) (_values!3375 array!10758) (_vacant!3156 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12197 0))(
  ( (Cell!12198 (v!29901 LongMapFixedSize!6190)) )
))
(declare-datatypes ((MutLongMap!3095 0))(
  ( (LongMap!3095 (underlying!6391 Cell!12197)) (MutLongMapExt!3094 (__x!17511 Int)) )
))
(declare-fun lt!831611 () MutLongMap!3095)

(get-info :version)

(assert (=> b!2235831 (= e!1428984 (and e!1428985 ((_ is LongMap!3095) lt!831611)))))

(declare-datatypes ((Cell!12199 0))(
  ( (Cell!12200 (v!29902 MutLongMap!3095)) )
))
(declare-datatypes ((Hashable!3005 0))(
  ( (HashableExt!3004 (__x!17512 Int)) )
))
(declare-datatypes ((MutableMap!3005 0))(
  ( (MutableMapExt!3004 (__x!17513 Int)) (HashMap!3005 (underlying!6392 Cell!12199) (hashF!4928 Hashable!3005) (_size!6238 (_ BitVec 32)) (defaultValue!3167 Int)) )
))
(declare-datatypes ((CacheDown!2056 0))(
  ( (CacheDown!2057 (cache!3386 MutableMap!3005)) )
))
(declare-fun thiss!28797 () CacheDown!2056)

(assert (=> b!2235831 (= lt!831611 (v!29902 (underlying!6392 (cache!3386 thiss!28797))))))

(declare-fun mapIsEmpty!14549 () Bool)

(declare-fun mapRes!14549 () Bool)

(assert (=> mapIsEmpty!14549 mapRes!14549))

(declare-fun b!2235832 () Bool)

(declare-fun e!1428983 () Bool)

(declare-fun tp!702663 () Bool)

(assert (=> b!2235832 (= e!1428983 (and tp!702663 mapRes!14549))))

(declare-fun condMapEmpty!14549 () Bool)

(declare-fun mapDefault!14549 () List!26393)

(assert (=> b!2235832 (= condMapEmpty!14549 (= (arr!4778 (_values!3375 (v!29901 (underlying!6391 (v!29902 (underlying!6392 (cache!3386 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26393)) mapDefault!14549)))))

(declare-fun b!2235833 () Bool)

(declare-fun e!1428988 () Bool)

(declare-fun tp_is_empty!10139 () Bool)

(assert (=> b!2235833 (= e!1428988 tp_is_empty!10139)))

(declare-fun b!2235834 () Bool)

(declare-fun tp!702658 () Bool)

(assert (=> b!2235834 (= e!1428988 tp!702658)))

(declare-fun b!2235835 () Bool)

(declare-fun e!1428986 () Bool)

(declare-fun e!1428982 () Bool)

(assert (=> b!2235835 (= e!1428986 e!1428982)))

(declare-fun b!2235836 () Bool)

(declare-fun e!1428979 () Bool)

(assert (=> b!2235836 (= e!1428979 false)))

(declare-fun a!997 () C!13060)

(declare-fun lt!831612 () Bool)

(declare-fun ctx!52 () Context!4010)

(declare-fun r!4766 () Regex!6457)

(declare-fun contains!4381 (MutableMap!3005 tuple3!3986) Bool)

(assert (=> b!2235836 (= lt!831612 (contains!4381 (cache!3386 thiss!28797) (tuple3!3987 r!4766 ctx!52 a!997)))))

(declare-fun b!2235837 () Bool)

(assert (=> b!2235837 (= e!1428985 e!1428986)))

(declare-fun b!2235838 () Bool)

(declare-fun tp!702664 () Bool)

(declare-fun tp!702662 () Bool)

(assert (=> b!2235838 (= e!1428988 (and tp!702664 tp!702662))))

(declare-fun e!1428987 () Bool)

(assert (=> b!2235839 (= e!1428987 (and e!1428984 tp!702666))))

(declare-fun b!2235840 () Bool)

(declare-fun res!956671 () Bool)

(assert (=> b!2235840 (=> (not res!956671) (not e!1428979))))

(declare-fun validRegex!2422 (Regex!6457) Bool)

(assert (=> b!2235840 (= res!956671 (validRegex!2422 r!4766))))

(declare-fun tp!702670 () Bool)

(declare-fun tp!702669 () Bool)

(declare-fun array_inv!3429 (array!10756) Bool)

(declare-fun array_inv!3430 (array!10758) Bool)

(assert (=> b!2235841 (= e!1428982 (and tp!702661 tp!702670 tp!702669 (array_inv!3429 (_keys!3392 (v!29901 (underlying!6391 (v!29902 (underlying!6392 (cache!3386 thiss!28797))))))) (array_inv!3430 (_values!3375 (v!29901 (underlying!6391 (v!29902 (underlying!6392 (cache!3386 thiss!28797))))))) e!1428983))))

(declare-fun b!2235842 () Bool)

(declare-fun tp!702659 () Bool)

(declare-fun tp!702660 () Bool)

(assert (=> b!2235842 (= e!1428988 (and tp!702659 tp!702660))))

(declare-fun res!956670 () Bool)

(assert (=> start!217904 (=> (not res!956670) (not e!1428979))))

(declare-fun validCacheMapDown!307 (MutableMap!3005) Bool)

(assert (=> start!217904 (= res!956670 (validCacheMapDown!307 (cache!3386 thiss!28797)))))

(assert (=> start!217904 e!1428979))

(declare-fun e!1428980 () Bool)

(declare-fun inv!35719 (CacheDown!2056) Bool)

(assert (=> start!217904 (and (inv!35719 thiss!28797) e!1428980)))

(assert (=> start!217904 e!1428988))

(declare-fun e!1428981 () Bool)

(declare-fun inv!35720 (Context!4010) Bool)

(assert (=> start!217904 (and (inv!35720 ctx!52) e!1428981)))

(assert (=> start!217904 tp_is_empty!10139))

(declare-fun mapNonEmpty!14549 () Bool)

(declare-fun tp!702665 () Bool)

(declare-fun tp!702667 () Bool)

(assert (=> mapNonEmpty!14549 (= mapRes!14549 (and tp!702665 tp!702667))))

(declare-fun mapRest!14549 () (Array (_ BitVec 32) List!26393))

(declare-fun mapKey!14549 () (_ BitVec 32))

(declare-fun mapValue!14549 () List!26393)

(assert (=> mapNonEmpty!14549 (= (arr!4778 (_values!3375 (v!29901 (underlying!6391 (v!29902 (underlying!6392 (cache!3386 thiss!28797))))))) (store mapRest!14549 mapKey!14549 mapValue!14549))))

(declare-fun b!2235843 () Bool)

(declare-fun tp!702668 () Bool)

(assert (=> b!2235843 (= e!1428981 tp!702668)))

(declare-fun b!2235844 () Bool)

(assert (=> b!2235844 (= e!1428980 e!1428987)))

(assert (= (and start!217904 res!956670) b!2235840))

(assert (= (and b!2235840 res!956671) b!2235836))

(assert (= (and b!2235832 condMapEmpty!14549) mapIsEmpty!14549))

(assert (= (and b!2235832 (not condMapEmpty!14549)) mapNonEmpty!14549))

(assert (= b!2235841 b!2235832))

(assert (= b!2235835 b!2235841))

(assert (= b!2235837 b!2235835))

(assert (= (and b!2235831 ((_ is LongMap!3095) (v!29902 (underlying!6392 (cache!3386 thiss!28797))))) b!2235837))

(assert (= b!2235839 b!2235831))

(assert (= (and b!2235844 ((_ is HashMap!3005) (cache!3386 thiss!28797))) b!2235839))

(assert (= start!217904 b!2235844))

(assert (= (and start!217904 ((_ is ElementMatch!6457) r!4766)) b!2235833))

(assert (= (and start!217904 ((_ is Concat!10795) r!4766)) b!2235838))

(assert (= (and start!217904 ((_ is Star!6457) r!4766)) b!2235834))

(assert (= (and start!217904 ((_ is Union!6457) r!4766)) b!2235842))

(assert (= start!217904 b!2235843))

(declare-fun m!2669945 () Bool)

(assert (=> b!2235836 m!2669945))

(declare-fun m!2669947 () Bool)

(assert (=> b!2235840 m!2669947))

(declare-fun m!2669949 () Bool)

(assert (=> b!2235841 m!2669949))

(declare-fun m!2669951 () Bool)

(assert (=> b!2235841 m!2669951))

(declare-fun m!2669953 () Bool)

(assert (=> start!217904 m!2669953))

(declare-fun m!2669955 () Bool)

(assert (=> start!217904 m!2669955))

(declare-fun m!2669957 () Bool)

(assert (=> start!217904 m!2669957))

(declare-fun m!2669959 () Bool)

(assert (=> mapNonEmpty!14549 m!2669959))

(check-sat (not b!2235836) tp_is_empty!10139 (not b!2235843) (not b_next!65545) (not b!2235841) (not b!2235838) b_and!174829 (not b!2235842) (not mapNonEmpty!14549) (not b_next!65547) b_and!174831 (not b!2235834) (not start!217904) (not b!2235840) (not b!2235832))
(check-sat b_and!174829 b_and!174831 (not b_next!65545) (not b_next!65547))
