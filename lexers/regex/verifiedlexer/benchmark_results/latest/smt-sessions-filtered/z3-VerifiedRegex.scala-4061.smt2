; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218318 () Bool)

(assert start!218318)

(declare-fun b!2240826 () Bool)

(declare-fun b_free!65065 () Bool)

(declare-fun b_next!65769 () Bool)

(assert (=> b!2240826 (= b_free!65065 (not b_next!65769))))

(declare-fun tp!706324 () Bool)

(declare-fun b_and!175081 () Bool)

(assert (=> b!2240826 (= tp!706324 b_and!175081)))

(declare-fun b!2240834 () Bool)

(declare-fun b_free!65067 () Bool)

(declare-fun b_next!65771 () Bool)

(assert (=> b!2240834 (= b_free!65067 (not b_next!65771))))

(declare-fun tp!706322 () Bool)

(declare-fun b_and!175083 () Bool)

(assert (=> b!2240834 (= tp!706322 b_and!175083)))

(declare-fun e!1432758 () Bool)

(declare-fun e!1432763 () Bool)

(assert (=> b!2240826 (= e!1432758 (and e!1432763 tp!706324))))

(declare-fun b!2240827 () Bool)

(declare-fun e!1432760 () Bool)

(declare-datatypes ((C!13172 0))(
  ( (C!13173 (val!7634 Int)) )
))
(declare-datatypes ((Regex!6513 0))(
  ( (ElementMatch!6513 (c!356812 C!13172)) (Concat!10851 (regOne!13538 Regex!6513) (regTwo!13538 Regex!6513)) (EmptyExpr!6513) (Star!6513 (reg!6842 Regex!6513)) (EmptyLang!6513) (Union!6513 (regOne!13539 Regex!6513) (regTwo!13539 Regex!6513)) )
))
(declare-datatypes ((List!26521 0))(
  ( (Nil!26427) (Cons!26427 (h!31828 Regex!6513) (t!199955 List!26521)) )
))
(declare-datatypes ((Context!4122 0))(
  ( (Context!4123 (exprs!2561 List!26521)) )
))
(declare-datatypes ((tuple2!25856 0))(
  ( (tuple2!25857 (_1!15438 Context!4122) (_2!15438 C!13172)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25858 0))(
  ( (tuple2!25859 (_1!15439 tuple2!25856) (_2!15439 (InoxSet Context!4122))) )
))
(declare-datatypes ((List!26522 0))(
  ( (Nil!26428) (Cons!26428 (h!31829 tuple2!25858) (t!199956 List!26522)) )
))
(declare-datatypes ((array!11016 0))(
  ( (array!11017 (arr!4889 (Array (_ BitVec 32) (_ BitVec 64))) (size!20670 (_ BitVec 32))) )
))
(declare-datatypes ((array!11018 0))(
  ( (array!11019 (arr!4890 (Array (_ BitVec 32) List!26522)) (size!20671 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6302 0))(
  ( (LongMapFixedSize!6303 (defaultEntry!3516 Int) (mask!7761 (_ BitVec 32)) (extraKeys!3399 (_ BitVec 32)) (zeroValue!3409 List!26522) (minValue!3409 List!26522) (_size!6349 (_ BitVec 32)) (_keys!3448 array!11016) (_values!3431 array!11018) (_vacant!3212 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12421 0))(
  ( (Cell!12422 (v!30056 LongMapFixedSize!6302)) )
))
(declare-datatypes ((MutLongMap!3151 0))(
  ( (LongMap!3151 (underlying!6503 Cell!12421)) (MutLongMapExt!3150 (__x!17679 Int)) )
))
(declare-fun lt!833928 () MutLongMap!3151)

(get-info :version)

(assert (=> b!2240827 (= e!1432763 (and e!1432760 ((_ is LongMap!3151) lt!833928)))))

(declare-datatypes ((Hashable!3061 0))(
  ( (HashableExt!3060 (__x!17680 Int)) )
))
(declare-datatypes ((Cell!12423 0))(
  ( (Cell!12424 (v!30057 MutLongMap!3151)) )
))
(declare-datatypes ((MutableMap!3061 0))(
  ( (MutableMapExt!3060 (__x!17681 Int)) (HashMap!3061 (underlying!6504 Cell!12423) (hashF!4984 Hashable!3061) (_size!6350 (_ BitVec 32)) (defaultValue!3223 Int)) )
))
(declare-datatypes ((CacheUp!1992 0))(
  ( (CacheUp!1993 (cache!3442 MutableMap!3061)) )
))
(declare-fun thiss!28657 () CacheUp!1992)

(assert (=> b!2240827 (= lt!833928 (v!30057 (underlying!6504 (cache!3442 thiss!28657))))))

(declare-fun b!2240828 () Bool)

(declare-fun e!1432761 () Bool)

(assert (=> b!2240828 (= e!1432760 e!1432761)))

(declare-fun b!2240829 () Bool)

(declare-fun e!1432759 () Bool)

(assert (=> b!2240829 (= e!1432759 e!1432758)))

(declare-fun mapNonEmpty!14771 () Bool)

(declare-fun mapRes!14771 () Bool)

(declare-fun tp!706323 () Bool)

(declare-fun tp!706328 () Bool)

(assert (=> mapNonEmpty!14771 (= mapRes!14771 (and tp!706323 tp!706328))))

(declare-fun mapRest!14771 () (Array (_ BitVec 32) List!26522))

(declare-fun mapKey!14771 () (_ BitVec 32))

(declare-fun mapValue!14771 () List!26522)

(assert (=> mapNonEmpty!14771 (= (arr!4890 (_values!3431 (v!30056 (underlying!6503 (v!30057 (underlying!6504 (cache!3442 thiss!28657))))))) (store mapRest!14771 mapKey!14771 mapValue!14771))))

(declare-fun b!2240830 () Bool)

(declare-fun e!1432765 () Bool)

(assert (=> b!2240830 (= e!1432765 false)))

(declare-fun res!957794 () Bool)

(assert (=> start!218318 (=> (not res!957794) (not e!1432765))))

(declare-fun validCacheMapUp!296 (MutableMap!3061) Bool)

(assert (=> start!218318 (= res!957794 (validCacheMapUp!296 (cache!3442 thiss!28657)))))

(assert (=> start!218318 e!1432765))

(declare-fun inv!35891 (CacheUp!1992) Bool)

(assert (=> start!218318 (and (inv!35891 thiss!28657) e!1432759)))

(declare-fun ctx!40 () Context!4122)

(declare-fun e!1432766 () Bool)

(declare-fun inv!35892 (Context!4122) Bool)

(assert (=> start!218318 (and (inv!35892 ctx!40) e!1432766)))

(declare-fun tp_is_empty!10247 () Bool)

(assert (=> start!218318 tp_is_empty!10247))

(declare-fun b!2240831 () Bool)

(declare-fun res!957793 () Bool)

(assert (=> b!2240831 (=> (not res!957793) (not e!1432765))))

(declare-fun a!949 () C!13172)

(declare-fun contains!4484 (MutableMap!3061 tuple2!25856) Bool)

(assert (=> b!2240831 (= res!957793 (not (contains!4484 (cache!3442 thiss!28657) (tuple2!25857 ctx!40 a!949))))))

(declare-fun mapIsEmpty!14771 () Bool)

(assert (=> mapIsEmpty!14771 mapRes!14771))

(declare-fun b!2240832 () Bool)

(declare-fun tp!706329 () Bool)

(assert (=> b!2240832 (= e!1432766 tp!706329)))

(declare-fun b!2240833 () Bool)

(declare-fun e!1432762 () Bool)

(assert (=> b!2240833 (= e!1432761 e!1432762)))

(declare-fun tp!706325 () Bool)

(declare-fun tp!706327 () Bool)

(declare-fun e!1432767 () Bool)

(declare-fun array_inv!3507 (array!11016) Bool)

(declare-fun array_inv!3508 (array!11018) Bool)

(assert (=> b!2240834 (= e!1432762 (and tp!706322 tp!706327 tp!706325 (array_inv!3507 (_keys!3448 (v!30056 (underlying!6503 (v!30057 (underlying!6504 (cache!3442 thiss!28657))))))) (array_inv!3508 (_values!3431 (v!30056 (underlying!6503 (v!30057 (underlying!6504 (cache!3442 thiss!28657))))))) e!1432767))))

(declare-fun b!2240835 () Bool)

(declare-fun tp!706326 () Bool)

(assert (=> b!2240835 (= e!1432767 (and tp!706326 mapRes!14771))))

(declare-fun condMapEmpty!14771 () Bool)

(declare-fun mapDefault!14771 () List!26522)

(assert (=> b!2240835 (= condMapEmpty!14771 (= (arr!4890 (_values!3431 (v!30056 (underlying!6503 (v!30057 (underlying!6504 (cache!3442 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26522)) mapDefault!14771)))))

(assert (= (and start!218318 res!957794) b!2240831))

(assert (= (and b!2240831 res!957793) b!2240830))

(assert (= (and b!2240835 condMapEmpty!14771) mapIsEmpty!14771))

(assert (= (and b!2240835 (not condMapEmpty!14771)) mapNonEmpty!14771))

(assert (= b!2240834 b!2240835))

(assert (= b!2240833 b!2240834))

(assert (= b!2240828 b!2240833))

(assert (= (and b!2240827 ((_ is LongMap!3151) (v!30057 (underlying!6504 (cache!3442 thiss!28657))))) b!2240828))

(assert (= b!2240826 b!2240827))

(assert (= (and b!2240829 ((_ is HashMap!3061) (cache!3442 thiss!28657))) b!2240826))

(assert (= start!218318 b!2240829))

(assert (= start!218318 b!2240832))

(declare-fun m!2673165 () Bool)

(assert (=> mapNonEmpty!14771 m!2673165))

(declare-fun m!2673167 () Bool)

(assert (=> start!218318 m!2673167))

(declare-fun m!2673169 () Bool)

(assert (=> start!218318 m!2673169))

(declare-fun m!2673171 () Bool)

(assert (=> start!218318 m!2673171))

(declare-fun m!2673173 () Bool)

(assert (=> b!2240831 m!2673173))

(declare-fun m!2673175 () Bool)

(assert (=> b!2240834 m!2673175))

(declare-fun m!2673177 () Bool)

(assert (=> b!2240834 m!2673177))

(check-sat (not b!2240834) (not start!218318) (not b!2240835) b_and!175083 tp_is_empty!10247 (not b!2240832) (not b_next!65769) (not b_next!65771) (not b!2240831) (not mapNonEmpty!14771) b_and!175081)
(check-sat b_and!175083 b_and!175081 (not b_next!65769) (not b_next!65771))
