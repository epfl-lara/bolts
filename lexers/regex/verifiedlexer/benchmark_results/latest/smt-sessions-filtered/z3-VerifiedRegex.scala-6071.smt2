; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296250 () Bool)

(assert start!296250)

(declare-fun b!3159921 () Bool)

(declare-fun b_free!82937 () Bool)

(declare-fun b_next!83641 () Bool)

(assert (=> b!3159921 (= b_free!82937 (not b_next!83641))))

(declare-fun tp!993636 () Bool)

(declare-fun b_and!209179 () Bool)

(assert (=> b!3159921 (= tp!993636 b_and!209179)))

(declare-fun b!3159931 () Bool)

(declare-fun b_free!82939 () Bool)

(declare-fun b_next!83643 () Bool)

(assert (=> b!3159931 (= b_free!82939 (not b_next!83643))))

(declare-fun tp!993638 () Bool)

(declare-fun b_and!209181 () Bool)

(assert (=> b!3159931 (= tp!993638 b_and!209181)))

(declare-fun b!3159918 () Bool)

(declare-fun e!1968598 () Bool)

(declare-fun e!1968599 () Bool)

(assert (=> b!3159918 (= e!1968598 e!1968599)))

(declare-fun b!3159919 () Bool)

(declare-fun e!1968596 () Bool)

(assert (=> b!3159919 (= e!1968596 false)))

(declare-datatypes ((C!19572 0))(
  ( (C!19573 (val!11822 Int)) )
))
(declare-datatypes ((List!35517 0))(
  ( (Nil!35393) (Cons!35393 (h!40813 C!19572) (t!234582 List!35517)) )
))
(declare-fun input!5974 () List!35517)

(declare-fun lt!1062684 () Bool)

(declare-datatypes ((Regex!9693 0))(
  ( (ElementMatch!9693 (c!531527 C!19572)) (Concat!15014 (regOne!19898 Regex!9693) (regTwo!19898 Regex!9693)) (EmptyExpr!9693) (Star!9693 (reg!10022 Regex!9693)) (EmptyLang!9693) (Union!9693 (regOne!19899 Regex!9693) (regTwo!19899 Regex!9693)) )
))
(declare-fun r!13207 () Regex!9693)

(declare-datatypes ((array!14630 0))(
  ( (array!14631 (arr!6518 (Array (_ BitVec 32) (_ BitVec 64))) (size!26604 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!34284 0))(
  ( (tuple2!34285 (_1!20274 Regex!9693) (_2!20274 C!19572)) )
))
(declare-datatypes ((tuple2!34286 0))(
  ( (tuple2!34287 (_1!20275 tuple2!34284) (_2!20275 Regex!9693)) )
))
(declare-datatypes ((List!35518 0))(
  ( (Nil!35394) (Cons!35394 (h!40814 tuple2!34286) (t!234583 List!35518)) )
))
(declare-datatypes ((array!14632 0))(
  ( (array!14633 (arr!6519 (Array (_ BitVec 32) List!35518)) (size!26605 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8228 0))(
  ( (LongMapFixedSize!8229 (defaultEntry!4499 Int) (mask!10754 (_ BitVec 32)) (extraKeys!4363 (_ BitVec 32)) (zeroValue!4373 List!35518) (minValue!4373 List!35518) (_size!8271 (_ BitVec 32)) (_keys!4414 array!14630) (_values!4395 array!14632) (_vacant!4175 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4030 0))(
  ( (HashableExt!4029 (__x!22448 Int)) )
))
(declare-datatypes ((Cell!16265 0))(
  ( (Cell!16266 (v!35003 LongMapFixedSize!8228)) )
))
(declare-datatypes ((MutLongMap!4114 0))(
  ( (LongMap!4114 (underlying!8457 Cell!16265)) (MutLongMapExt!4113 (__x!22449 Int)) )
))
(declare-datatypes ((Cell!16267 0))(
  ( (Cell!16268 (v!35004 MutLongMap!4114)) )
))
(declare-datatypes ((MutableMap!4020 0))(
  ( (MutableMapExt!4019 (__x!22450 Int)) (HashMap!4020 (underlying!8458 Cell!16267) (hashF!6062 Hashable!4030) (_size!8272 (_ BitVec 32)) (defaultValue!4191 Int)) )
))
(declare-datatypes ((Cache!310 0))(
  ( (Cache!311 (cache!4156 MutableMap!4020)) )
))
(declare-fun cache!429 () Cache!310)

(declare-fun validRegex!4426 (Regex!9693) Bool)

(declare-fun derivative!340 (Regex!9693 List!35517) Regex!9693)

(declare-datatypes ((tuple2!34288 0))(
  ( (tuple2!34289 (_1!20276 Regex!9693) (_2!20276 Cache!310)) )
))
(declare-fun derivativeStepMem!14 (Regex!9693 C!19572 Cache!310) tuple2!34288)

(assert (=> b!3159919 (= lt!1062684 (validRegex!4426 (derivative!340 (_1!20276 (derivativeStepMem!14 r!13207 (h!40813 input!5974) cache!429)) (t!234582 input!5974))))))

(declare-fun b!3159920 () Bool)

(declare-fun res!1286792 () Bool)

(assert (=> b!3159920 (=> (not res!1286792) (not e!1968596))))

(get-info :version)

(assert (=> b!3159920 (= res!1286792 ((_ is Cons!35393) input!5974))))

(declare-fun e!1968593 () Bool)

(declare-fun e!1968602 () Bool)

(assert (=> b!3159921 (= e!1968593 (and e!1968602 tp!993636))))

(declare-fun b!3159922 () Bool)

(declare-fun lt!1062685 () MutLongMap!4114)

(assert (=> b!3159922 (= e!1968602 (and e!1968598 ((_ is LongMap!4114) lt!1062685)))))

(assert (=> b!3159922 (= lt!1062685 (v!35004 (underlying!8458 (cache!4156 cache!429))))))

(declare-fun b!3159923 () Bool)

(declare-fun res!1286793 () Bool)

(assert (=> b!3159923 (=> (not res!1286793) (not e!1968596))))

(declare-fun valid!3202 (Cache!310) Bool)

(assert (=> b!3159923 (= res!1286793 (valid!3202 cache!429))))

(declare-fun b!3159924 () Bool)

(declare-fun e!1968595 () Bool)

(declare-fun tp!993629 () Bool)

(declare-fun tp!993632 () Bool)

(assert (=> b!3159924 (= e!1968595 (and tp!993629 tp!993632))))

(declare-fun res!1286791 () Bool)

(assert (=> start!296250 (=> (not res!1286791) (not e!1968596))))

(assert (=> start!296250 (= res!1286791 (validRegex!4426 r!13207))))

(assert (=> start!296250 e!1968596))

(assert (=> start!296250 e!1968595))

(declare-fun e!1968600 () Bool)

(declare-fun inv!48015 (Cache!310) Bool)

(assert (=> start!296250 (and (inv!48015 cache!429) e!1968600)))

(declare-fun e!1968601 () Bool)

(assert (=> start!296250 e!1968601))

(declare-fun b!3159925 () Bool)

(declare-fun tp!993628 () Bool)

(assert (=> b!3159925 (= e!1968595 tp!993628)))

(declare-fun mapNonEmpty!18677 () Bool)

(declare-fun mapRes!18677 () Bool)

(declare-fun tp!993630 () Bool)

(declare-fun tp!993639 () Bool)

(assert (=> mapNonEmpty!18677 (= mapRes!18677 (and tp!993630 tp!993639))))

(declare-fun mapValue!18677 () List!35518)

(declare-fun mapRest!18677 () (Array (_ BitVec 32) List!35518))

(declare-fun mapKey!18677 () (_ BitVec 32))

(assert (=> mapNonEmpty!18677 (= (arr!6519 (_values!4395 (v!35003 (underlying!8457 (v!35004 (underlying!8458 (cache!4156 cache!429))))))) (store mapRest!18677 mapKey!18677 mapValue!18677))))

(declare-fun b!3159926 () Bool)

(declare-fun tp_is_empty!16949 () Bool)

(assert (=> b!3159926 (= e!1968595 tp_is_empty!16949)))

(declare-fun b!3159927 () Bool)

(assert (=> b!3159927 (= e!1968600 e!1968593)))

(declare-fun mapIsEmpty!18677 () Bool)

(assert (=> mapIsEmpty!18677 mapRes!18677))

(declare-fun b!3159928 () Bool)

(declare-fun e!1968594 () Bool)

(declare-fun tp!993637 () Bool)

(assert (=> b!3159928 (= e!1968594 (and tp!993637 mapRes!18677))))

(declare-fun condMapEmpty!18677 () Bool)

(declare-fun mapDefault!18677 () List!35518)

(assert (=> b!3159928 (= condMapEmpty!18677 (= (arr!6519 (_values!4395 (v!35003 (underlying!8457 (v!35004 (underlying!8458 (cache!4156 cache!429))))))) ((as const (Array (_ BitVec 32) List!35518)) mapDefault!18677)))))

(declare-fun b!3159929 () Bool)

(declare-fun e!1968597 () Bool)

(assert (=> b!3159929 (= e!1968599 e!1968597)))

(declare-fun b!3159930 () Bool)

(declare-fun tp!993634 () Bool)

(assert (=> b!3159930 (= e!1968601 (and tp_is_empty!16949 tp!993634))))

(declare-fun tp!993633 () Bool)

(declare-fun tp!993627 () Bool)

(declare-fun array_inv!4668 (array!14630) Bool)

(declare-fun array_inv!4669 (array!14632) Bool)

(assert (=> b!3159931 (= e!1968597 (and tp!993638 tp!993633 tp!993627 (array_inv!4668 (_keys!4414 (v!35003 (underlying!8457 (v!35004 (underlying!8458 (cache!4156 cache!429))))))) (array_inv!4669 (_values!4395 (v!35003 (underlying!8457 (v!35004 (underlying!8458 (cache!4156 cache!429))))))) e!1968594))))

(declare-fun b!3159932 () Bool)

(declare-fun tp!993631 () Bool)

(declare-fun tp!993635 () Bool)

(assert (=> b!3159932 (= e!1968595 (and tp!993631 tp!993635))))

(assert (= (and start!296250 res!1286791) b!3159923))

(assert (= (and b!3159923 res!1286793) b!3159920))

(assert (= (and b!3159920 res!1286792) b!3159919))

(assert (= (and start!296250 ((_ is ElementMatch!9693) r!13207)) b!3159926))

(assert (= (and start!296250 ((_ is Concat!15014) r!13207)) b!3159924))

(assert (= (and start!296250 ((_ is Star!9693) r!13207)) b!3159925))

(assert (= (and start!296250 ((_ is Union!9693) r!13207)) b!3159932))

(assert (= (and b!3159928 condMapEmpty!18677) mapIsEmpty!18677))

(assert (= (and b!3159928 (not condMapEmpty!18677)) mapNonEmpty!18677))

(assert (= b!3159931 b!3159928))

(assert (= b!3159929 b!3159931))

(assert (= b!3159918 b!3159929))

(assert (= (and b!3159922 ((_ is LongMap!4114) (v!35004 (underlying!8458 (cache!4156 cache!429))))) b!3159918))

(assert (= b!3159921 b!3159922))

(assert (= (and b!3159927 ((_ is HashMap!4020) (cache!4156 cache!429))) b!3159921))

(assert (= start!296250 b!3159927))

(assert (= (and start!296250 ((_ is Cons!35393) input!5974)) b!3159930))

(declare-fun m!3425326 () Bool)

(assert (=> mapNonEmpty!18677 m!3425326))

(declare-fun m!3425328 () Bool)

(assert (=> b!3159919 m!3425328))

(declare-fun m!3425330 () Bool)

(assert (=> b!3159919 m!3425330))

(assert (=> b!3159919 m!3425330))

(declare-fun m!3425332 () Bool)

(assert (=> b!3159919 m!3425332))

(declare-fun m!3425334 () Bool)

(assert (=> start!296250 m!3425334))

(declare-fun m!3425336 () Bool)

(assert (=> start!296250 m!3425336))

(declare-fun m!3425338 () Bool)

(assert (=> b!3159931 m!3425338))

(declare-fun m!3425340 () Bool)

(assert (=> b!3159931 m!3425340))

(declare-fun m!3425342 () Bool)

(assert (=> b!3159923 m!3425342))

(check-sat b_and!209181 tp_is_empty!16949 (not b!3159928) (not b!3159924) (not b!3159923) b_and!209179 (not b_next!83643) (not b!3159919) (not b!3159930) (not start!296250) (not b!3159931) (not mapNonEmpty!18677) (not b_next!83641) (not b!3159932) (not b!3159925))
(check-sat b_and!209181 b_and!209179 (not b_next!83641) (not b_next!83643))
