; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297206 () Bool)

(assert start!297206)

(declare-fun b!3173581 () Bool)

(declare-fun b_free!83377 () Bool)

(declare-fun b_next!84081 () Bool)

(assert (=> b!3173581 (= b_free!83377 (not b_next!84081))))

(declare-fun tp!1002909 () Bool)

(declare-fun b_and!209663 () Bool)

(assert (=> b!3173581 (= tp!1002909 b_and!209663)))

(declare-fun b!3173580 () Bool)

(declare-fun b_free!83379 () Bool)

(declare-fun b_next!84083 () Bool)

(assert (=> b!3173580 (= b_free!83379 (not b_next!84083))))

(declare-fun tp!1002907 () Bool)

(declare-fun b_and!209665 () Bool)

(assert (=> b!3173580 (= tp!1002907 b_and!209665)))

(declare-fun b!3173577 () Bool)

(declare-fun res!1289630 () Bool)

(declare-fun e!1976625 () Bool)

(assert (=> b!3173577 (=> (not res!1289630) (not e!1976625))))

(declare-datatypes ((C!19792 0))(
  ( (C!19793 (val!11932 Int)) )
))
(declare-datatypes ((Regex!9803 0))(
  ( (ElementMatch!9803 (c!533418 C!19792)) (Concat!15124 (regOne!20118 Regex!9803) (regTwo!20118 Regex!9803)) (EmptyExpr!9803) (Star!9803 (reg!10132 Regex!9803)) (EmptyLang!9803) (Union!9803 (regOne!20119 Regex!9803) (regTwo!20119 Regex!9803)) )
))
(declare-fun r!4705 () Regex!9803)

(declare-fun validRegex!4507 (Regex!9803) Bool)

(assert (=> b!3173577 (= res!1289630 (validRegex!4507 r!4705))))

(declare-fun b!3173578 () Bool)

(declare-fun e!1976619 () Bool)

(declare-fun tp!1002904 () Bool)

(declare-fun mapRes!19130 () Bool)

(assert (=> b!3173578 (= e!1976619 (and tp!1002904 mapRes!19130))))

(declare-fun condMapEmpty!19130 () Bool)

(declare-datatypes ((tuple2!34876 0))(
  ( (tuple2!34877 (_1!20570 Regex!9803) (_2!20570 C!19792)) )
))
(declare-datatypes ((tuple2!34878 0))(
  ( (tuple2!34879 (_1!20571 tuple2!34876) (_2!20571 Regex!9803)) )
))
(declare-datatypes ((List!35652 0))(
  ( (Nil!35528) (Cons!35528 (h!40948 tuple2!34878) (t!234739 List!35652)) )
))
(declare-datatypes ((array!15146 0))(
  ( (array!15147 (arr!6738 (Array (_ BitVec 32) (_ BitVec 64))) (size!26824 (_ BitVec 32))) )
))
(declare-datatypes ((array!15148 0))(
  ( (array!15149 (arr!6739 (Array (_ BitVec 32) List!35652)) (size!26825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8448 0))(
  ( (LongMapFixedSize!8449 (defaultEntry!4609 Int) (mask!10919 (_ BitVec 32)) (extraKeys!4473 (_ BitVec 32)) (zeroValue!4483 List!35652) (minValue!4483 List!35652) (_size!8491 (_ BitVec 32)) (_keys!4524 array!15146) (_values!4505 array!15148) (_vacant!4285 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16705 0))(
  ( (Cell!16706 (v!35300 LongMapFixedSize!8448)) )
))
(declare-datatypes ((MutLongMap!4224 0))(
  ( (LongMap!4224 (underlying!8677 Cell!16705)) (MutLongMapExt!4223 (__x!22778 Int)) )
))
(declare-datatypes ((Cell!16707 0))(
  ( (Cell!16708 (v!35301 MutLongMap!4224)) )
))
(declare-datatypes ((Hashable!4140 0))(
  ( (HashableExt!4139 (__x!22779 Int)) )
))
(declare-datatypes ((MutableMap!4130 0))(
  ( (MutableMapExt!4129 (__x!22780 Int)) (HashMap!4130 (underlying!8678 Cell!16707) (hashF!6172 Hashable!4140) (_size!8492 (_ BitVec 32)) (defaultValue!4301 Int)) )
))
(declare-datatypes ((Cache!530 0))(
  ( (Cache!531 (cache!4276 MutableMap!4130)) )
))
(declare-fun thiss!28445 () Cache!530)

(declare-fun mapDefault!19130 () List!35652)

(assert (=> b!3173578 (= condMapEmpty!19130 (= (arr!6739 (_values!4505 (v!35300 (underlying!8677 (v!35301 (underlying!8678 (cache!4276 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35652)) mapDefault!19130)))))

(declare-fun b!3173579 () Bool)

(declare-fun e!1976623 () Bool)

(declare-fun tp!1002912 () Bool)

(assert (=> b!3173579 (= e!1976623 tp!1002912)))

(declare-fun tp!1002913 () Bool)

(declare-fun e!1976621 () Bool)

(declare-fun tp!1002914 () Bool)

(declare-fun array_inv!4834 (array!15146) Bool)

(declare-fun array_inv!4835 (array!15148) Bool)

(assert (=> b!3173580 (= e!1976621 (and tp!1002907 tp!1002913 tp!1002914 (array_inv!4834 (_keys!4524 (v!35300 (underlying!8677 (v!35301 (underlying!8678 (cache!4276 thiss!28445))))))) (array_inv!4835 (_values!4505 (v!35300 (underlying!8677 (v!35301 (underlying!8678 (cache!4276 thiss!28445))))))) e!1976619))))

(declare-fun e!1976620 () Bool)

(declare-fun e!1976618 () Bool)

(assert (=> b!3173581 (= e!1976620 (and e!1976618 tp!1002909))))

(declare-fun mapIsEmpty!19130 () Bool)

(assert (=> mapIsEmpty!19130 mapRes!19130))

(declare-fun b!3173582 () Bool)

(assert (=> b!3173582 (= e!1976625 false)))

(declare-fun lt!1066996 () Bool)

(declare-fun lambda!116109 () Int)

(declare-fun forall!7182 (List!35652 Int) Bool)

(declare-datatypes ((ListMap!1355 0))(
  ( (ListMap!1356 (toList!2098 List!35652)) )
))
(declare-fun map!7975 (MutableMap!4130) ListMap!1355)

(assert (=> b!3173582 (= lt!1066996 (forall!7182 (toList!2098 (map!7975 (cache!4276 thiss!28445))) lambda!116109))))

(declare-fun b!3173583 () Bool)

(declare-fun res!1289632 () Bool)

(assert (=> b!3173583 (=> (not res!1289632) (not e!1976625))))

(declare-fun valid!3286 (MutableMap!4130) Bool)

(assert (=> b!3173583 (= res!1289632 (valid!3286 (cache!4276 thiss!28445)))))

(declare-fun b!3173584 () Bool)

(declare-fun e!1976617 () Bool)

(declare-fun e!1976626 () Bool)

(assert (=> b!3173584 (= e!1976617 e!1976626)))

(declare-fun b!3173585 () Bool)

(declare-fun tp_is_empty!17169 () Bool)

(assert (=> b!3173585 (= e!1976623 tp_is_empty!17169)))

(declare-fun b!3173586 () Bool)

(declare-fun res!1289633 () Bool)

(assert (=> b!3173586 (=> (not res!1289633) (not e!1976625))))

(get-info :version)

(assert (=> b!3173586 (= res!1289633 ((_ is HashMap!4130) (cache!4276 thiss!28445)))))

(declare-fun res!1289629 () Bool)

(assert (=> start!297206 (=> (not res!1289629) (not e!1976625))))

(declare-fun validCacheMap!105 (MutableMap!4130) Bool)

(assert (=> start!297206 (= res!1289629 (validCacheMap!105 (cache!4276 thiss!28445)))))

(assert (=> start!297206 e!1976625))

(declare-fun e!1976622 () Bool)

(declare-fun inv!48261 (Cache!530) Bool)

(assert (=> start!297206 (and (inv!48261 thiss!28445) e!1976622)))

(assert (=> start!297206 e!1976623))

(assert (=> start!297206 tp_is_empty!17169))

(declare-fun b!3173587 () Bool)

(assert (=> b!3173587 (= e!1976626 e!1976621)))

(declare-fun mapNonEmpty!19130 () Bool)

(declare-fun tp!1002910 () Bool)

(declare-fun tp!1002906 () Bool)

(assert (=> mapNonEmpty!19130 (= mapRes!19130 (and tp!1002910 tp!1002906))))

(declare-fun mapKey!19130 () (_ BitVec 32))

(declare-fun mapRest!19130 () (Array (_ BitVec 32) List!35652))

(declare-fun mapValue!19130 () List!35652)

(assert (=> mapNonEmpty!19130 (= (arr!6739 (_values!4505 (v!35300 (underlying!8677 (v!35301 (underlying!8678 (cache!4276 thiss!28445))))))) (store mapRest!19130 mapKey!19130 mapValue!19130))))

(declare-fun b!3173588 () Bool)

(declare-fun lt!1066997 () MutLongMap!4224)

(assert (=> b!3173588 (= e!1976618 (and e!1976617 ((_ is LongMap!4224) lt!1066997)))))

(assert (=> b!3173588 (= lt!1066997 (v!35301 (underlying!8678 (cache!4276 thiss!28445))))))

(declare-fun b!3173589 () Bool)

(declare-fun tp!1002903 () Bool)

(declare-fun tp!1002911 () Bool)

(assert (=> b!3173589 (= e!1976623 (and tp!1002903 tp!1002911))))

(declare-fun b!3173590 () Bool)

(declare-fun tp!1002908 () Bool)

(declare-fun tp!1002905 () Bool)

(assert (=> b!3173590 (= e!1976623 (and tp!1002908 tp!1002905))))

(declare-fun b!3173591 () Bool)

(assert (=> b!3173591 (= e!1976622 e!1976620)))

(declare-fun b!3173592 () Bool)

(declare-fun res!1289631 () Bool)

(assert (=> b!3173592 (=> (not res!1289631) (not e!1976625))))

(declare-fun c!6979 () C!19792)

(declare-fun contains!6238 (MutableMap!4130 tuple2!34876) Bool)

(assert (=> b!3173592 (= res!1289631 (contains!6238 (cache!4276 thiss!28445) (tuple2!34877 r!4705 c!6979)))))

(assert (= (and start!297206 res!1289629) b!3173577))

(assert (= (and b!3173577 res!1289630) b!3173592))

(assert (= (and b!3173592 res!1289631) b!3173586))

(assert (= (and b!3173586 res!1289633) b!3173583))

(assert (= (and b!3173583 res!1289632) b!3173582))

(assert (= (and b!3173578 condMapEmpty!19130) mapIsEmpty!19130))

(assert (= (and b!3173578 (not condMapEmpty!19130)) mapNonEmpty!19130))

(assert (= b!3173580 b!3173578))

(assert (= b!3173587 b!3173580))

(assert (= b!3173584 b!3173587))

(assert (= (and b!3173588 ((_ is LongMap!4224) (v!35301 (underlying!8678 (cache!4276 thiss!28445))))) b!3173584))

(assert (= b!3173581 b!3173588))

(assert (= (and b!3173591 ((_ is HashMap!4130) (cache!4276 thiss!28445))) b!3173581))

(assert (= start!297206 b!3173591))

(assert (= (and start!297206 ((_ is ElementMatch!9803) r!4705)) b!3173585))

(assert (= (and start!297206 ((_ is Concat!15124) r!4705)) b!3173590))

(assert (= (and start!297206 ((_ is Star!9803) r!4705)) b!3173579))

(assert (= (and start!297206 ((_ is Union!9803) r!4705)) b!3173589))

(declare-fun m!3431200 () Bool)

(assert (=> b!3173582 m!3431200))

(declare-fun m!3431202 () Bool)

(assert (=> b!3173582 m!3431202))

(declare-fun m!3431204 () Bool)

(assert (=> b!3173592 m!3431204))

(declare-fun m!3431206 () Bool)

(assert (=> b!3173577 m!3431206))

(declare-fun m!3431208 () Bool)

(assert (=> start!297206 m!3431208))

(declare-fun m!3431210 () Bool)

(assert (=> start!297206 m!3431210))

(declare-fun m!3431212 () Bool)

(assert (=> mapNonEmpty!19130 m!3431212))

(declare-fun m!3431214 () Bool)

(assert (=> b!3173580 m!3431214))

(declare-fun m!3431216 () Bool)

(assert (=> b!3173580 m!3431216))

(declare-fun m!3431218 () Bool)

(assert (=> b!3173583 m!3431218))

(check-sat (not b!3173579) (not b!3173583) (not b!3173590) (not b!3173582) (not b_next!84081) (not b!3173578) (not mapNonEmpty!19130) b_and!209665 (not b!3173592) (not b!3173580) (not start!297206) tp_is_empty!17169 b_and!209663 (not b!3173577) (not b_next!84083) (not b!3173589))
(check-sat b_and!209665 b_and!209663 (not b_next!84083) (not b_next!84081))
