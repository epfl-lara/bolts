; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496574 () Bool)

(assert start!496574)

(declare-fun b!4805922 () Bool)

(declare-fun b_free!129819 () Bool)

(declare-fun b_next!130609 () Bool)

(assert (=> b!4805922 (= b_free!129819 (not b_next!130609))))

(declare-fun tp!1358600 () Bool)

(declare-fun b_and!341573 () Bool)

(assert (=> b!4805922 (= tp!1358600 b_and!341573)))

(declare-fun b!4805918 () Bool)

(declare-fun b_free!129821 () Bool)

(declare-fun b_next!130611 () Bool)

(assert (=> b!4805918 (= b_free!129821 (not b_next!130611))))

(declare-fun tp!1358596 () Bool)

(declare-fun b_and!341575 () Bool)

(assert (=> b!4805918 (= tp!1358596 b_and!341575)))

(declare-fun e!3001414 () Bool)

(declare-fun e!3001413 () Bool)

(assert (=> b!4805918 (= e!3001414 (and e!3001413 tp!1358596))))

(declare-fun mapNonEmpty!22025 () Bool)

(declare-fun mapRes!22025 () Bool)

(declare-fun tp!1358597 () Bool)

(declare-fun tp!1358594 () Bool)

(assert (=> mapNonEmpty!22025 (= mapRes!22025 (and tp!1358597 tp!1358594))))

(declare-fun mapKey!22025 () (_ BitVec 32))

(declare-datatypes ((K!15939 0))(
  ( (K!15940 (val!21057 Int)) )
))
(declare-datatypes ((array!18216 0))(
  ( (array!18217 (arr!8123 (Array (_ BitVec 32) (_ BitVec 64))) (size!36369 (_ BitVec 32))) )
))
(declare-datatypes ((V!16185 0))(
  ( (V!16186 (val!21058 Int)) )
))
(declare-datatypes ((tuple2!57086 0))(
  ( (tuple2!57087 (_1!31837 K!15939) (_2!31837 V!16185)) )
))
(declare-datatypes ((List!54496 0))(
  ( (Nil!54372) (Cons!54372 (h!60804 tuple2!57086) (t!361946 List!54496)) )
))
(declare-datatypes ((array!18218 0))(
  ( (array!18219 (arr!8124 (Array (_ BitVec 32) List!54496)) (size!36370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9938 0))(
  ( (LongMapFixedSize!9939 (defaultEntry!5387 Int) (mask!14924 (_ BitVec 32)) (extraKeys!5244 (_ BitVec 32)) (zeroValue!5257 List!54496) (minValue!5257 List!54496) (_size!9963 (_ BitVec 32)) (_keys!5311 array!18216) (_values!5282 array!18218) (_vacant!5034 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19641 0))(
  ( (Cell!19642 (v!48572 LongMapFixedSize!9938)) )
))
(declare-datatypes ((MutLongMap!4969 0))(
  ( (LongMap!4969 (underlying!10145 Cell!19641)) (MutLongMapExt!4968 (__x!33005 Int)) )
))
(declare-datatypes ((Hashable!6980 0))(
  ( (HashableExt!6979 (__x!33006 Int)) )
))
(declare-datatypes ((Cell!19643 0))(
  ( (Cell!19644 (v!48573 MutLongMap!4969)) )
))
(declare-datatypes ((MutableMap!4853 0))(
  ( (MutableMapExt!4852 (__x!33007 Int)) (HashMap!4853 (underlying!10146 Cell!19643) (hashF!13248 Hashable!6980) (_size!9964 (_ BitVec 32)) (defaultValue!5024 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4853)

(declare-fun mapRest!22025 () (Array (_ BitVec 32) List!54496))

(declare-fun mapValue!22025 () List!54496)

(assert (=> mapNonEmpty!22025 (= (arr!8124 (_values!5282 (v!48572 (underlying!10145 (v!48573 (underlying!10146 thiss!41921)))))) (store mapRest!22025 mapKey!22025 mapValue!22025))))

(declare-fun b!4805919 () Bool)

(declare-fun e!3001412 () Bool)

(declare-fun tp!1358599 () Bool)

(assert (=> b!4805919 (= e!3001412 (and tp!1358599 mapRes!22025))))

(declare-fun condMapEmpty!22025 () Bool)

(declare-fun mapDefault!22025 () List!54496)

(assert (=> b!4805919 (= condMapEmpty!22025 (= (arr!8124 (_values!5282 (v!48572 (underlying!10145 (v!48573 (underlying!10146 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54496)) mapDefault!22025)))))

(declare-fun b!4805920 () Bool)

(declare-fun e!3001410 () Bool)

(declare-fun lt!1959859 () MutLongMap!4969)

(get-info :version)

(assert (=> b!4805920 (= e!3001413 (and e!3001410 ((_ is LongMap!4969) lt!1959859)))))

(assert (=> b!4805920 (= lt!1959859 (v!48573 (underlying!10146 thiss!41921)))))

(declare-fun b!4805921 () Bool)

(declare-fun e!3001409 () Bool)

(assert (=> b!4805921 (= e!3001410 e!3001409)))

(declare-fun e!3001416 () Bool)

(declare-fun tp!1358595 () Bool)

(declare-fun tp!1358598 () Bool)

(declare-fun array_inv!5851 (array!18216) Bool)

(declare-fun array_inv!5852 (array!18218) Bool)

(assert (=> b!4805922 (= e!3001416 (and tp!1358600 tp!1358598 tp!1358595 (array_inv!5851 (_keys!5311 (v!48572 (underlying!10145 (v!48573 (underlying!10146 thiss!41921)))))) (array_inv!5852 (_values!5282 (v!48572 (underlying!10145 (v!48573 (underlying!10146 thiss!41921)))))) e!3001412))))

(declare-fun res!2044639 () Bool)

(declare-fun e!3001411 () Bool)

(assert (=> start!496574 (=> (not res!2044639) (not e!3001411))))

(assert (=> start!496574 (= res!2044639 ((_ is HashMap!4853) thiss!41921))))

(assert (=> start!496574 e!3001411))

(assert (=> start!496574 e!3001414))

(declare-fun tp_is_empty!33779 () Bool)

(assert (=> start!496574 tp_is_empty!33779))

(declare-fun b!4805923 () Bool)

(assert (=> b!4805923 (= e!3001409 e!3001416)))

(declare-fun mapIsEmpty!22025 () Bool)

(assert (=> mapIsEmpty!22025 mapRes!22025))

(declare-fun b!4805924 () Bool)

(assert (=> b!4805924 (= e!3001411 (not ((_ is LongMap!4969) (v!48573 (underlying!10146 thiss!41921)))))))

(declare-fun b!4805925 () Bool)

(declare-fun res!2044638 () Bool)

(assert (=> b!4805925 (=> (not res!2044638) (not e!3001411))))

(declare-fun valid!3977 (MutableMap!4853) Bool)

(assert (=> b!4805925 (= res!2044638 (valid!3977 thiss!41921))))

(declare-fun b!4805926 () Bool)

(declare-fun res!2044640 () Bool)

(assert (=> b!4805926 (=> (not res!2044640) (not e!3001411))))

(declare-fun key!1652 () K!15939)

(declare-fun contains!18039 (MutLongMap!4969 (_ BitVec 64)) Bool)

(declare-fun hash!5049 (Hashable!6980 K!15939) (_ BitVec 64))

(assert (=> b!4805926 (= res!2044640 (contains!18039 (v!48573 (underlying!10146 thiss!41921)) (hash!5049 (hashF!13248 thiss!41921) key!1652)))))

(assert (= (and start!496574 res!2044639) b!4805925))

(assert (= (and b!4805925 res!2044638) b!4805926))

(assert (= (and b!4805926 res!2044640) b!4805924))

(assert (= (and b!4805919 condMapEmpty!22025) mapIsEmpty!22025))

(assert (= (and b!4805919 (not condMapEmpty!22025)) mapNonEmpty!22025))

(assert (= b!4805922 b!4805919))

(assert (= b!4805923 b!4805922))

(assert (= b!4805921 b!4805923))

(assert (= (and b!4805920 ((_ is LongMap!4969) (v!48573 (underlying!10146 thiss!41921)))) b!4805921))

(assert (= b!4805918 b!4805920))

(assert (= (and start!496574 ((_ is HashMap!4853) thiss!41921)) b!4805918))

(declare-fun m!5792484 () Bool)

(assert (=> mapNonEmpty!22025 m!5792484))

(declare-fun m!5792486 () Bool)

(assert (=> b!4805922 m!5792486))

(declare-fun m!5792488 () Bool)

(assert (=> b!4805922 m!5792488))

(declare-fun m!5792490 () Bool)

(assert (=> b!4805925 m!5792490))

(declare-fun m!5792492 () Bool)

(assert (=> b!4805926 m!5792492))

(assert (=> b!4805926 m!5792492))

(declare-fun m!5792494 () Bool)

(assert (=> b!4805926 m!5792494))

(check-sat (not b_next!130611) (not mapNonEmpty!22025) tp_is_empty!33779 (not b!4805925) b_and!341573 b_and!341575 (not b_next!130609) (not b!4805922) (not b!4805919) (not b!4805926))
(check-sat b_and!341573 b_and!341575 (not b_next!130609) (not b_next!130611))
