; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487226 () Bool)

(assert start!487226)

(declare-fun b!4763998 () Bool)

(declare-fun b_free!129483 () Bool)

(declare-fun b_next!130273 () Bool)

(assert (=> b!4763998 (= b_free!129483 (not b_next!130273))))

(declare-fun tp!1354477 () Bool)

(declare-fun b_and!341169 () Bool)

(assert (=> b!4763998 (= tp!1354477 b_and!341169)))

(declare-fun b!4764005 () Bool)

(declare-fun b_free!129485 () Bool)

(declare-fun b_next!130275 () Bool)

(assert (=> b!4764005 (= b_free!129485 (not b_next!130275))))

(declare-fun tp!1354478 () Bool)

(declare-fun b_and!341171 () Bool)

(assert (=> b!4764005 (= tp!1354478 b_and!341171)))

(declare-fun mapNonEmpty!21704 () Bool)

(declare-fun mapRes!21704 () Bool)

(declare-fun tp!1354480 () Bool)

(declare-fun tp!1354476 () Bool)

(assert (=> mapNonEmpty!21704 (= mapRes!21704 (and tp!1354480 tp!1354476))))

(declare-datatypes ((K!14854 0))(
  ( (K!14855 (val!20189 Int)) )
))
(declare-datatypes ((V!15100 0))(
  ( (V!15101 (val!20190 Int)) )
))
(declare-datatypes ((tuple2!55386 0))(
  ( (tuple2!55387 (_1!30987 K!14854) (_2!30987 V!15100)) )
))
(declare-datatypes ((List!53537 0))(
  ( (Nil!53413) (Cons!53413 (h!59825 tuple2!55386) (t!360937 List!53537)) )
))
(declare-fun mapValue!21704 () List!53537)

(declare-datatypes ((array!17836 0))(
  ( (array!17837 (arr!7955 (Array (_ BitVec 32) (_ BitVec 64))) (size!36185 (_ BitVec 32))) )
))
(declare-datatypes ((array!17838 0))(
  ( (array!17839 (arr!7956 (Array (_ BitVec 32) List!53537)) (size!36186 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6546 0))(
  ( (HashableExt!6545 (__x!32403 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9770 0))(
  ( (LongMapFixedSize!9771 (defaultEntry!5303 Int) (mask!14623 (_ BitVec 32)) (extraKeys!5160 (_ BitVec 32)) (zeroValue!5173 List!53537) (minValue!5173 List!53537) (_size!9795 (_ BitVec 32)) (_keys!5227 array!17836) (_values!5198 array!17838) (_vacant!4950 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19305 0))(
  ( (Cell!19306 (v!47494 LongMapFixedSize!9770)) )
))
(declare-datatypes ((MutLongMap!4885 0))(
  ( (LongMap!4885 (underlying!9977 Cell!19305)) (MutLongMapExt!4884 (__x!32404 Int)) )
))
(declare-datatypes ((Cell!19307 0))(
  ( (Cell!19308 (v!47495 MutLongMap!4885)) )
))
(declare-datatypes ((MutableMap!4769 0))(
  ( (MutableMapExt!4768 (__x!32405 Int)) (HashMap!4769 (underlying!9978 Cell!19307) (hashF!12371 Hashable!6546) (_size!9796 (_ BitVec 32)) (defaultValue!4940 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4769)

(declare-fun mapKey!21704 () (_ BitVec 32))

(declare-fun mapRest!21704 () (Array (_ BitVec 32) List!53537))

(assert (=> mapNonEmpty!21704 (= (arr!7956 (_values!5198 (v!47494 (underlying!9977 (v!47495 (underlying!9978 thiss!42052)))))) (store mapRest!21704 mapKey!21704 mapValue!21704))))

(declare-fun b!4763996 () Bool)

(declare-fun e!2973218 () Bool)

(get-info :version)

(assert (=> b!4763996 (= e!2973218 (not ((_ is LongMap!4885) (v!47495 (underlying!9978 thiss!42052)))))))

(declare-fun b!4763997 () Bool)

(declare-fun res!2020585 () Bool)

(declare-fun e!2973217 () Bool)

(assert (=> b!4763997 (=> (not res!2020585) (not e!2973217))))

(declare-fun key!1776 () K!14854)

(declare-fun contains!16726 (MutableMap!4769 K!14854) Bool)

(assert (=> b!4763997 (= res!2020585 (contains!16726 thiss!42052 key!1776))))

(declare-fun e!2973224 () Bool)

(declare-fun tp!1354479 () Bool)

(declare-fun tp!1354481 () Bool)

(declare-fun e!2973222 () Bool)

(declare-fun array_inv!5723 (array!17836) Bool)

(declare-fun array_inv!5724 (array!17838) Bool)

(assert (=> b!4763998 (= e!2973222 (and tp!1354477 tp!1354481 tp!1354479 (array_inv!5723 (_keys!5227 (v!47494 (underlying!9977 (v!47495 (underlying!9978 thiss!42052)))))) (array_inv!5724 (_values!5198 (v!47494 (underlying!9977 (v!47495 (underlying!9978 thiss!42052)))))) e!2973224))))

(declare-fun b!4763999 () Bool)

(declare-fun tp!1354482 () Bool)

(assert (=> b!4763999 (= e!2973224 (and tp!1354482 mapRes!21704))))

(declare-fun condMapEmpty!21704 () Bool)

(declare-fun mapDefault!21704 () List!53537)

(assert (=> b!4763999 (= condMapEmpty!21704 (= (arr!7956 (_values!5198 (v!47494 (underlying!9977 (v!47495 (underlying!9978 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53537)) mapDefault!21704)))))

(declare-fun b!4764000 () Bool)

(declare-fun e!2973223 () Bool)

(declare-fun e!2973220 () Bool)

(assert (=> b!4764000 (= e!2973223 e!2973220)))

(declare-fun b!4764001 () Bool)

(assert (=> b!4764001 (= e!2973220 e!2973222)))

(declare-fun b!4764002 () Bool)

(declare-fun e!2973221 () Bool)

(declare-fun lt!1927090 () MutLongMap!4885)

(assert (=> b!4764002 (= e!2973221 (and e!2973223 ((_ is LongMap!4885) lt!1927090)))))

(assert (=> b!4764002 (= lt!1927090 (v!47495 (underlying!9978 thiss!42052)))))

(declare-fun res!2020587 () Bool)

(assert (=> start!487226 (=> (not res!2020587) (not e!2973217))))

(assert (=> start!487226 (= res!2020587 ((_ is HashMap!4769) thiss!42052))))

(assert (=> start!487226 e!2973217))

(declare-fun e!2973225 () Bool)

(assert (=> start!487226 e!2973225))

(declare-fun tp_is_empty!32343 () Bool)

(assert (=> start!487226 tp_is_empty!32343))

(declare-fun mapIsEmpty!21704 () Bool)

(assert (=> mapIsEmpty!21704 mapRes!21704))

(declare-fun b!4764003 () Bool)

(declare-fun res!2020588 () Bool)

(assert (=> b!4764003 (=> (not res!2020588) (not e!2973217))))

(declare-fun valid!3881 (MutableMap!4769) Bool)

(assert (=> b!4764003 (= res!2020588 (valid!3881 thiss!42052))))

(declare-fun b!4764004 () Bool)

(assert (=> b!4764004 (= e!2973217 e!2973218)))

(declare-fun res!2020586 () Bool)

(assert (=> b!4764004 (=> (not res!2020586) (not e!2973218))))

(declare-fun lt!1927091 () (_ BitVec 64))

(declare-datatypes ((tuple2!55388 0))(
  ( (tuple2!55389 (_1!30988 (_ BitVec 64)) (_2!30988 List!53537)) )
))
(declare-datatypes ((List!53538 0))(
  ( (Nil!53414) (Cons!53414 (h!59826 tuple2!55388) (t!360938 List!53538)) )
))
(declare-fun contains!16727 (List!53538 tuple2!55388) Bool)

(declare-datatypes ((ListLongMap!4627 0))(
  ( (ListLongMap!4628 (toList!6241 List!53538)) )
))
(declare-fun map!11915 (MutLongMap!4885) ListLongMap!4627)

(declare-fun apply!12569 (MutLongMap!4885 (_ BitVec 64)) List!53537)

(assert (=> b!4764004 (= res!2020586 (not (contains!16727 (toList!6241 (map!11915 (v!47495 (underlying!9978 thiss!42052)))) (tuple2!55389 lt!1927091 (apply!12569 (v!47495 (underlying!9978 thiss!42052)) lt!1927091)))))))

(declare-fun hash!4530 (Hashable!6546 K!14854) (_ BitVec 64))

(assert (=> b!4764004 (= lt!1927091 (hash!4530 (hashF!12371 thiss!42052) key!1776))))

(assert (=> b!4764005 (= e!2973225 (and e!2973221 tp!1354478))))

(assert (= (and start!487226 res!2020587) b!4764003))

(assert (= (and b!4764003 res!2020588) b!4763997))

(assert (= (and b!4763997 res!2020585) b!4764004))

(assert (= (and b!4764004 res!2020586) b!4763996))

(assert (= (and b!4763999 condMapEmpty!21704) mapIsEmpty!21704))

(assert (= (and b!4763999 (not condMapEmpty!21704)) mapNonEmpty!21704))

(assert (= b!4763998 b!4763999))

(assert (= b!4764001 b!4763998))

(assert (= b!4764000 b!4764001))

(assert (= (and b!4764002 ((_ is LongMap!4885) (v!47495 (underlying!9978 thiss!42052)))) b!4764000))

(assert (= b!4764005 b!4764002))

(assert (= (and start!487226 ((_ is HashMap!4769) thiss!42052)) b!4764005))

(declare-fun m!5734584 () Bool)

(assert (=> mapNonEmpty!21704 m!5734584))

(declare-fun m!5734586 () Bool)

(assert (=> b!4764003 m!5734586))

(declare-fun m!5734588 () Bool)

(assert (=> b!4763997 m!5734588))

(declare-fun m!5734590 () Bool)

(assert (=> b!4764004 m!5734590))

(declare-fun m!5734592 () Bool)

(assert (=> b!4764004 m!5734592))

(declare-fun m!5734594 () Bool)

(assert (=> b!4764004 m!5734594))

(declare-fun m!5734596 () Bool)

(assert (=> b!4764004 m!5734596))

(declare-fun m!5734598 () Bool)

(assert (=> b!4763998 m!5734598))

(declare-fun m!5734600 () Bool)

(assert (=> b!4763998 m!5734600))

(check-sat (not b!4763999) (not b!4764003) (not b!4763997) (not b!4764004) (not mapNonEmpty!21704) (not b!4763998) (not b_next!130273) b_and!341169 (not b_next!130275) b_and!341171 tp_is_empty!32343)
(check-sat b_and!341171 b_and!341169 (not b_next!130275) (not b_next!130273))
