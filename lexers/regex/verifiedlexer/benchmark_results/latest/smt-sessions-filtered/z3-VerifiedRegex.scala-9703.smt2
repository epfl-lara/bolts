; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507972 () Bool)

(assert start!507972)

(declare-fun b!4860834 () Bool)

(declare-fun b_free!130475 () Bool)

(declare-fun b_next!131265 () Bool)

(assert (=> b!4860834 (= b_free!130475 (not b_next!131265))))

(declare-fun tp!1367519 () Bool)

(declare-fun b_and!342327 () Bool)

(assert (=> b!4860834 (= tp!1367519 b_and!342327)))

(declare-fun b!4860833 () Bool)

(declare-fun b_free!130477 () Bool)

(declare-fun b_next!131267 () Bool)

(assert (=> b!4860833 (= b_free!130477 (not b_next!131267))))

(declare-fun tp!1367515 () Bool)

(declare-fun b_and!342329 () Bool)

(assert (=> b!4860833 (= tp!1367515 b_and!342329)))

(declare-fun mapIsEmpty!22634 () Bool)

(declare-fun mapRes!22634 () Bool)

(assert (=> mapIsEmpty!22634 mapRes!22634))

(declare-fun b!4860827 () Bool)

(declare-fun e!3039035 () Bool)

(declare-fun e!3039036 () Bool)

(assert (=> b!4860827 (= e!3039035 e!3039036)))

(declare-fun res!2075052 () Bool)

(declare-fun e!3039037 () Bool)

(assert (=> start!507972 (=> (not res!2075052) (not e!3039037))))

(declare-datatypes ((Hashable!7579 0))(
  ( (HashableExt!7578 (__x!33922 Int)) )
))
(declare-datatypes ((K!17632 0))(
  ( (K!17633 (val!22463 Int)) )
))
(declare-datatypes ((V!17902 0))(
  ( (V!17903 (val!22464 Int)) )
))
(declare-datatypes ((tuple2!59628 0))(
  ( (tuple2!59629 (_1!33117 K!17632) (_2!33117 V!17902)) )
))
(declare-datatypes ((List!55935 0))(
  ( (Nil!55811) (Cons!55811 (h!62259 tuple2!59628) (t!363555 List!55935)) )
))
(declare-datatypes ((array!18939 0))(
  ( (array!18940 (arr!8452 (Array (_ BitVec 32) (_ BitVec 64))) (size!36795 (_ BitVec 32))) )
))
(declare-datatypes ((array!18941 0))(
  ( (array!18942 (arr!8453 (Array (_ BitVec 32) List!55935)) (size!36796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10268 0))(
  ( (LongMapFixedSize!10269 (defaultEntry!5559 Int) (mask!15478 (_ BitVec 32)) (extraKeys!5418 (_ BitVec 32)) (zeroValue!5431 List!55935) (minValue!5431 List!55935) (_size!10281 (_ BitVec 32)) (_keys!5488 array!18939) (_values!5456 array!18941) (_vacant!5199 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20277 0))(
  ( (Cell!20278 (v!49651 LongMapFixedSize!10268)) )
))
(declare-datatypes ((MutLongMap!5134 0))(
  ( (LongMap!5134 (underlying!10463 Cell!20277)) (MutLongMapExt!5133 (__x!33923 Int)) )
))
(declare-datatypes ((Cell!20279 0))(
  ( (Cell!20280 (v!49652 MutLongMap!5134)) )
))
(declare-datatypes ((MutableMap!5006 0))(
  ( (MutableMapExt!5005 (__x!33924 Int)) (HashMap!5006 (underlying!10464 Cell!20279) (hashF!13846 Hashable!7579) (_size!10282 (_ BitVec 32)) (defaultValue!5177 Int)) )
))
(declare-fun thiss!42706 () MutableMap!5006)

(get-info :version)

(assert (=> start!507972 (= res!2075052 ((_ is HashMap!5006) thiss!42706))))

(assert (=> start!507972 e!3039037))

(declare-fun e!3039033 () Bool)

(assert (=> start!507972 e!3039033))

(declare-fun b!4860828 () Bool)

(declare-fun res!2075051 () Bool)

(assert (=> b!4860828 (=> (not res!2075051) (not e!3039037))))

(declare-fun lambda!243125 () Int)

(declare-datatypes ((tuple2!59630 0))(
  ( (tuple2!59631 (_1!33118 (_ BitVec 64)) (_2!33118 List!55935)) )
))
(declare-datatypes ((List!55936 0))(
  ( (Nil!55812) (Cons!55812 (h!62260 tuple2!59630) (t!363556 List!55936)) )
))
(declare-fun forall!13021 (List!55936 Int) Bool)

(declare-datatypes ((ListLongMap!6573 0))(
  ( (ListLongMap!6574 (toList!7924 List!55936)) )
))
(declare-fun map!12851 (MutLongMap!5134) ListLongMap!6573)

(assert (=> b!4860828 (= res!2075051 (forall!13021 (toList!7924 (map!12851 (v!49652 (underlying!10464 thiss!42706)))) lambda!243125))))

(declare-fun b!4860829 () Bool)

(declare-fun res!2075053 () Bool)

(assert (=> b!4860829 (=> (not res!2075053) (not e!3039037))))

(declare-fun valid!4154 (MutLongMap!5134) Bool)

(assert (=> b!4860829 (= res!2075053 (valid!4154 (v!49652 (underlying!10464 thiss!42706))))))

(declare-fun b!4860830 () Bool)

(assert (=> b!4860830 (= e!3039037 (not ((_ is LongMap!5134) (v!49652 (underlying!10464 thiss!42706)))))))

(declare-fun b!4860831 () Bool)

(declare-fun e!3039031 () Bool)

(declare-fun e!3039032 () Bool)

(declare-fun lt!1992330 () MutLongMap!5134)

(assert (=> b!4860831 (= e!3039031 (and e!3039032 ((_ is LongMap!5134) lt!1992330)))))

(assert (=> b!4860831 (= lt!1992330 (v!49652 (underlying!10464 thiss!42706)))))

(declare-fun b!4860832 () Bool)

(declare-fun e!3039034 () Bool)

(declare-fun tp!1367514 () Bool)

(assert (=> b!4860832 (= e!3039034 (and tp!1367514 mapRes!22634))))

(declare-fun condMapEmpty!22634 () Bool)

(declare-fun mapDefault!22634 () List!55935)

(assert (=> b!4860832 (= condMapEmpty!22634 (= (arr!8453 (_values!5456 (v!49651 (underlying!10463 (v!49652 (underlying!10464 thiss!42706)))))) ((as const (Array (_ BitVec 32) List!55935)) mapDefault!22634)))))

(declare-fun mapNonEmpty!22634 () Bool)

(declare-fun tp!1367517 () Bool)

(declare-fun tp!1367518 () Bool)

(assert (=> mapNonEmpty!22634 (= mapRes!22634 (and tp!1367517 tp!1367518))))

(declare-fun mapKey!22634 () (_ BitVec 32))

(declare-fun mapRest!22634 () (Array (_ BitVec 32) List!55935))

(declare-fun mapValue!22634 () List!55935)

(assert (=> mapNonEmpty!22634 (= (arr!8453 (_values!5456 (v!49651 (underlying!10463 (v!49652 (underlying!10464 thiss!42706)))))) (store mapRest!22634 mapKey!22634 mapValue!22634))))

(assert (=> b!4860833 (= e!3039033 (and e!3039031 tp!1367515))))

(declare-fun tp!1367513 () Bool)

(declare-fun tp!1367516 () Bool)

(declare-fun array_inv!6104 (array!18939) Bool)

(declare-fun array_inv!6105 (array!18941) Bool)

(assert (=> b!4860834 (= e!3039036 (and tp!1367519 tp!1367516 tp!1367513 (array_inv!6104 (_keys!5488 (v!49651 (underlying!10463 (v!49652 (underlying!10464 thiss!42706)))))) (array_inv!6105 (_values!5456 (v!49651 (underlying!10463 (v!49652 (underlying!10464 thiss!42706)))))) e!3039034))))

(declare-fun b!4860835 () Bool)

(assert (=> b!4860835 (= e!3039032 e!3039035)))

(assert (= (and start!507972 res!2075052) b!4860829))

(assert (= (and b!4860829 res!2075053) b!4860828))

(assert (= (and b!4860828 res!2075051) b!4860830))

(assert (= (and b!4860832 condMapEmpty!22634) mapIsEmpty!22634))

(assert (= (and b!4860832 (not condMapEmpty!22634)) mapNonEmpty!22634))

(assert (= b!4860834 b!4860832))

(assert (= b!4860827 b!4860834))

(assert (= b!4860835 b!4860827))

(assert (= (and b!4860831 ((_ is LongMap!5134) (v!49652 (underlying!10464 thiss!42706)))) b!4860835))

(assert (= b!4860833 b!4860831))

(assert (= (and start!507972 ((_ is HashMap!5006) thiss!42706)) b!4860833))

(declare-fun m!5858726 () Bool)

(assert (=> b!4860828 m!5858726))

(declare-fun m!5858728 () Bool)

(assert (=> b!4860828 m!5858728))

(declare-fun m!5858730 () Bool)

(assert (=> b!4860829 m!5858730))

(declare-fun m!5858732 () Bool)

(assert (=> mapNonEmpty!22634 m!5858732))

(declare-fun m!5858734 () Bool)

(assert (=> b!4860834 m!5858734))

(declare-fun m!5858736 () Bool)

(assert (=> b!4860834 m!5858736))

(check-sat (not b!4860832) (not b!4860829) (not b!4860834) b_and!342329 b_and!342327 (not b_next!131267) (not mapNonEmpty!22634) (not b!4860828) (not b_next!131265))
(check-sat b_and!342327 b_and!342329 (not b_next!131265) (not b_next!131267))
