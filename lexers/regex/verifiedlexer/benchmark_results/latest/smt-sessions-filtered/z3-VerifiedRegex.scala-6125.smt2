; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297202 () Bool)

(assert start!297202)

(declare-fun b!3173482 () Bool)

(declare-fun b_free!83369 () Bool)

(declare-fun b_next!84073 () Bool)

(assert (=> b!3173482 (= b_free!83369 (not b_next!84073))))

(declare-fun tp!1002837 () Bool)

(declare-fun b_and!209655 () Bool)

(assert (=> b!3173482 (= tp!1002837 b_and!209655)))

(declare-fun b!3173476 () Bool)

(declare-fun b_free!83371 () Bool)

(declare-fun b_next!84075 () Bool)

(assert (=> b!3173476 (= b_free!83371 (not b_next!84075))))

(declare-fun tp!1002826 () Bool)

(declare-fun b_and!209657 () Bool)

(assert (=> b!3173476 (= tp!1002826 b_and!209657)))

(declare-fun b!3173471 () Bool)

(declare-fun e!1976559 () Bool)

(assert (=> b!3173471 (= e!1976559 false)))

(declare-fun b!3173472 () Bool)

(declare-fun e!1976562 () Bool)

(declare-fun tp!1002836 () Bool)

(declare-fun tp!1002831 () Bool)

(assert (=> b!3173472 (= e!1976562 (and tp!1002836 tp!1002831))))

(declare-fun b!3173474 () Bool)

(declare-fun e!1976560 () Bool)

(declare-fun tp!1002838 () Bool)

(declare-fun tp!1002840 () Bool)

(assert (=> b!3173474 (= e!1976560 (and tp!1002838 tp!1002840))))

(declare-fun b!3173475 () Bool)

(declare-fun e!1976552 () Bool)

(declare-fun e!1976561 () Bool)

(declare-datatypes ((C!19788 0))(
  ( (C!19789 (val!11930 Int)) )
))
(declare-datatypes ((Regex!9801 0))(
  ( (ElementMatch!9801 (c!533416 C!19788)) (Concat!15122 (regOne!20114 Regex!9801) (regTwo!20114 Regex!9801)) (EmptyExpr!9801) (Star!9801 (reg!10130 Regex!9801)) (EmptyLang!9801) (Union!9801 (regOne!20115 Regex!9801) (regTwo!20115 Regex!9801)) )
))
(declare-datatypes ((tuple2!34868 0))(
  ( (tuple2!34869 (_1!20566 Regex!9801) (_2!20566 C!19788)) )
))
(declare-datatypes ((tuple2!34870 0))(
  ( (tuple2!34871 (_1!20567 tuple2!34868) (_2!20567 Regex!9801)) )
))
(declare-datatypes ((List!35650 0))(
  ( (Nil!35526) (Cons!35526 (h!40946 tuple2!34870) (t!234737 List!35650)) )
))
(declare-datatypes ((array!15138 0))(
  ( (array!15139 (arr!6734 (Array (_ BitVec 32) (_ BitVec 64))) (size!26820 (_ BitVec 32))) )
))
(declare-datatypes ((array!15140 0))(
  ( (array!15141 (arr!6735 (Array (_ BitVec 32) List!35650)) (size!26821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8444 0))(
  ( (LongMapFixedSize!8445 (defaultEntry!4607 Int) (mask!10916 (_ BitVec 32)) (extraKeys!4471 (_ BitVec 32)) (zeroValue!4481 List!35650) (minValue!4481 List!35650) (_size!8487 (_ BitVec 32)) (_keys!4522 array!15138) (_values!4503 array!15140) (_vacant!4283 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16697 0))(
  ( (Cell!16698 (v!35296 LongMapFixedSize!8444)) )
))
(declare-datatypes ((MutLongMap!4222 0))(
  ( (LongMap!4222 (underlying!8673 Cell!16697)) (MutLongMapExt!4221 (__x!22772 Int)) )
))
(declare-fun lt!1066985 () MutLongMap!4222)

(get-info :version)

(assert (=> b!3173475 (= e!1976552 (and e!1976561 ((_ is LongMap!4222) lt!1066985)))))

(declare-datatypes ((Cell!16699 0))(
  ( (Cell!16700 (v!35297 MutLongMap!4222)) )
))
(declare-datatypes ((Hashable!4138 0))(
  ( (HashableExt!4137 (__x!22773 Int)) )
))
(declare-datatypes ((MutableMap!4128 0))(
  ( (MutableMapExt!4127 (__x!22774 Int)) (HashMap!4128 (underlying!8674 Cell!16699) (hashF!6170 Hashable!4138) (_size!8488 (_ BitVec 32)) (defaultValue!4299 Int)) )
))
(declare-datatypes ((Cache!526 0))(
  ( (Cache!527 (cache!4274 MutableMap!4128)) )
))
(declare-fun thiss!28445 () Cache!526)

(assert (=> b!3173475 (= lt!1066985 (v!35297 (underlying!8674 (cache!4274 thiss!28445))))))

(declare-fun e!1976556 () Bool)

(declare-fun tp!1002830 () Bool)

(declare-fun tp!1002834 () Bool)

(declare-fun e!1976558 () Bool)

(declare-fun array_inv!4832 (array!15138) Bool)

(declare-fun array_inv!4833 (array!15140) Bool)

(assert (=> b!3173476 (= e!1976558 (and tp!1002826 tp!1002830 tp!1002834 (array_inv!4832 (_keys!4522 (v!35296 (underlying!8673 (v!35297 (underlying!8674 (cache!4274 thiss!28445))))))) (array_inv!4833 (_values!4503 (v!35296 (underlying!8673 (v!35297 (underlying!8674 (cache!4274 thiss!28445))))))) e!1976556))))

(declare-fun b!3173477 () Bool)

(declare-fun e!1976553 () Bool)

(declare-fun e!1976555 () Bool)

(assert (=> b!3173477 (= e!1976553 e!1976555)))

(declare-fun b!3173478 () Bool)

(declare-fun tp!1002829 () Bool)

(declare-fun tp!1002823 () Bool)

(assert (=> b!3173478 (= e!1976562 (and tp!1002829 tp!1002823))))

(declare-fun mapIsEmpty!19124 () Bool)

(declare-fun mapRes!19124 () Bool)

(assert (=> mapIsEmpty!19124 mapRes!19124))

(declare-fun b!3173479 () Bool)

(declare-fun tp!1002841 () Bool)

(assert (=> b!3173479 (= e!1976556 (and tp!1002841 mapRes!19124))))

(declare-fun condMapEmpty!19124 () Bool)

(declare-fun mapDefault!19124 () List!35650)

(assert (=> b!3173479 (= condMapEmpty!19124 (= (arr!6735 (_values!4503 (v!35296 (underlying!8673 (v!35297 (underlying!8674 (cache!4274 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35650)) mapDefault!19124)))))

(declare-fun b!3173480 () Bool)

(declare-fun tp!1002822 () Bool)

(assert (=> b!3173480 (= e!1976560 tp!1002822)))

(declare-fun b!3173481 () Bool)

(declare-fun e!1976551 () Bool)

(declare-fun tp!1002842 () Bool)

(declare-fun tp!1002833 () Bool)

(assert (=> b!3173481 (= e!1976551 (and tp!1002842 tp!1002833))))

(assert (=> b!3173482 (= e!1976555 (and e!1976552 tp!1002837))))

(declare-fun b!3173483 () Bool)

(declare-fun tp!1002827 () Bool)

(declare-fun tp!1002828 () Bool)

(assert (=> b!3173483 (= e!1976560 (and tp!1002827 tp!1002828))))

(declare-fun b!3173484 () Bool)

(declare-fun res!1289598 () Bool)

(assert (=> b!3173484 (=> (not res!1289598) (not e!1976559))))

(declare-fun r!4705 () Regex!9801)

(declare-fun c!6979 () C!19788)

(declare-fun contains!6237 (MutableMap!4128 tuple2!34868) Bool)

(assert (=> b!3173484 (= res!1289598 (contains!6237 (cache!4274 thiss!28445) (tuple2!34869 r!4705 c!6979)))))

(declare-fun b!3173485 () Bool)

(declare-fun tp!1002832 () Bool)

(declare-fun tp!1002839 () Bool)

(assert (=> b!3173485 (= e!1976551 (and tp!1002832 tp!1002839))))

(declare-fun b!3173486 () Bool)

(declare-fun e!1976557 () Bool)

(assert (=> b!3173486 (= e!1976561 e!1976557)))

(declare-fun b!3173487 () Bool)

(declare-fun tp_is_empty!17165 () Bool)

(assert (=> b!3173487 (= e!1976562 tp_is_empty!17165)))

(declare-fun mapNonEmpty!19124 () Bool)

(declare-fun tp!1002824 () Bool)

(declare-fun tp!1002825 () Bool)

(assert (=> mapNonEmpty!19124 (= mapRes!19124 (and tp!1002824 tp!1002825))))

(declare-fun mapRest!19124 () (Array (_ BitVec 32) List!35650))

(declare-fun mapValue!19124 () List!35650)

(declare-fun mapKey!19124 () (_ BitVec 32))

(assert (=> mapNonEmpty!19124 (= (arr!6735 (_values!4503 (v!35296 (underlying!8673 (v!35297 (underlying!8674 (cache!4274 thiss!28445))))))) (store mapRest!19124 mapKey!19124 mapValue!19124))))

(declare-fun b!3173488 () Bool)

(declare-fun tp!1002821 () Bool)

(assert (=> b!3173488 (= e!1976551 tp!1002821)))

(declare-fun res!1289597 () Bool)

(assert (=> start!297202 (=> (not res!1289597) (not e!1976559))))

(declare-fun validCacheMap!103 (MutableMap!4128) Bool)

(assert (=> start!297202 (= res!1289597 (validCacheMap!103 (cache!4274 thiss!28445)))))

(assert (=> start!297202 e!1976559))

(declare-fun inv!48256 (Cache!526) Bool)

(assert (=> start!297202 (and (inv!48256 thiss!28445) e!1976553)))

(assert (=> start!297202 e!1976562))

(assert (=> start!297202 tp_is_empty!17165))

(assert (=> start!297202 (and e!1976560 tp_is_empty!17165 e!1976551)))

(declare-fun b!3173473 () Bool)

(declare-fun tp!1002835 () Bool)

(assert (=> b!3173473 (= e!1976562 tp!1002835)))

(declare-fun b!3173489 () Bool)

(assert (=> b!3173489 (= e!1976560 tp_is_empty!17165)))

(declare-fun b!3173490 () Bool)

(assert (=> b!3173490 (= e!1976551 tp_is_empty!17165)))

(declare-fun b!3173491 () Bool)

(declare-fun res!1289599 () Bool)

(assert (=> b!3173491 (=> (not res!1289599) (not e!1976559))))

(declare-fun validRegex!4505 (Regex!9801) Bool)

(assert (=> b!3173491 (= res!1289599 (validRegex!4505 r!4705))))

(declare-fun b!3173492 () Bool)

(assert (=> b!3173492 (= e!1976557 e!1976558)))

(assert (= (and start!297202 res!1289597) b!3173491))

(assert (= (and b!3173491 res!1289599) b!3173484))

(assert (= (and b!3173484 res!1289598) b!3173471))

(assert (= (and b!3173479 condMapEmpty!19124) mapIsEmpty!19124))

(assert (= (and b!3173479 (not condMapEmpty!19124)) mapNonEmpty!19124))

(assert (= b!3173476 b!3173479))

(assert (= b!3173492 b!3173476))

(assert (= b!3173486 b!3173492))

(assert (= (and b!3173475 ((_ is LongMap!4222) (v!35297 (underlying!8674 (cache!4274 thiss!28445))))) b!3173486))

(assert (= b!3173482 b!3173475))

(assert (= (and b!3173477 ((_ is HashMap!4128) (cache!4274 thiss!28445))) b!3173482))

(assert (= start!297202 b!3173477))

(assert (= (and start!297202 ((_ is ElementMatch!9801) r!4705)) b!3173487))

(assert (= (and start!297202 ((_ is Concat!15122) r!4705)) b!3173472))

(assert (= (and start!297202 ((_ is Star!9801) r!4705)) b!3173473))

(assert (= (and start!297202 ((_ is Union!9801) r!4705)) b!3173478))

(declare-fun _$2!39 () tuple2!34870)

(assert (= (and start!297202 ((_ is ElementMatch!9801) (_1!20566 (_1!20567 _$2!39)))) b!3173489))

(assert (= (and start!297202 ((_ is Concat!15122) (_1!20566 (_1!20567 _$2!39)))) b!3173474))

(assert (= (and start!297202 ((_ is Star!9801) (_1!20566 (_1!20567 _$2!39)))) b!3173480))

(assert (= (and start!297202 ((_ is Union!9801) (_1!20566 (_1!20567 _$2!39)))) b!3173483))

(assert (= (and start!297202 ((_ is ElementMatch!9801) (_2!20567 _$2!39))) b!3173490))

(assert (= (and start!297202 ((_ is Concat!15122) (_2!20567 _$2!39))) b!3173481))

(assert (= (and start!297202 ((_ is Star!9801) (_2!20567 _$2!39))) b!3173488))

(assert (= (and start!297202 ((_ is Union!9801) (_2!20567 _$2!39))) b!3173485))

(declare-fun m!3431166 () Bool)

(assert (=> b!3173491 m!3431166))

(declare-fun m!3431168 () Bool)

(assert (=> b!3173476 m!3431168))

(declare-fun m!3431170 () Bool)

(assert (=> b!3173476 m!3431170))

(declare-fun m!3431172 () Bool)

(assert (=> mapNonEmpty!19124 m!3431172))

(declare-fun m!3431174 () Bool)

(assert (=> start!297202 m!3431174))

(declare-fun m!3431176 () Bool)

(assert (=> start!297202 m!3431176))

(declare-fun m!3431178 () Bool)

(assert (=> b!3173484 m!3431178))

(check-sat (not b_next!84073) (not b!3173476) (not b!3173480) (not b!3173485) (not b!3173479) (not mapNonEmpty!19124) (not b!3173478) (not b!3173472) (not b!3173483) tp_is_empty!17165 (not start!297202) (not b!3173481) (not b_next!84075) (not b!3173474) b_and!209657 (not b!3173488) (not b!3173484) b_and!209655 (not b!3173491) (not b!3173473))
(check-sat b_and!209657 b_and!209655 (not b_next!84075) (not b_next!84073))
