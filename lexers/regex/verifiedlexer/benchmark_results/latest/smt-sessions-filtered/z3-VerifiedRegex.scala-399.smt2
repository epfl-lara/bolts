; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11986 () Bool)

(assert start!11986)

(declare-fun b!117673 () Bool)

(declare-fun b_free!3745 () Bool)

(declare-fun b_next!3745 () Bool)

(assert (=> b!117673 (= b_free!3745 (not b_next!3745))))

(declare-fun tp!64303 () Bool)

(declare-fun b_and!5875 () Bool)

(assert (=> b!117673 (= tp!64303 b_and!5875)))

(declare-fun b!117660 () Bool)

(declare-fun b_free!3747 () Bool)

(declare-fun b_next!3747 () Bool)

(assert (=> b!117660 (= b_free!3747 (not b_next!3747))))

(declare-fun tp!64302 () Bool)

(declare-fun b_and!5877 () Bool)

(assert (=> b!117660 (= tp!64302 b_and!5877)))

(declare-fun b!117655 () Bool)

(declare-fun e!67008 () Bool)

(declare-fun tp_is_empty!1081 () Bool)

(assert (=> b!117655 (= e!67008 tp_is_empty!1081)))

(declare-fun b!117656 () Bool)

(declare-fun e!67010 () Bool)

(declare-fun tp!64308 () Bool)

(assert (=> b!117656 (= e!67010 (and tp_is_empty!1081 tp!64308))))

(declare-fun res!55702 () Bool)

(declare-fun e!67006 () Bool)

(assert (=> start!11986 (=> (not res!55702) (not e!67006))))

(declare-datatypes ((C!1948 0))(
  ( (C!1949 (val!700 Int)) )
))
(declare-datatypes ((Regex!513 0))(
  ( (ElementMatch!513 (c!26737 C!1948)) (Concat!897 (regOne!1538 Regex!513) (regTwo!1538 Regex!513)) (EmptyExpr!513) (Star!513 (reg!842 Regex!513)) (EmptyLang!513) (Union!513 (regOne!1539 Regex!513) (regTwo!1539 Regex!513)) )
))
(declare-fun r!15532 () Regex!513)

(declare-fun validRegex!120 (Regex!513) Bool)

(assert (=> start!11986 (= res!55702 (validRegex!120 r!15532))))

(assert (=> start!11986 e!67006))

(assert (=> start!11986 true))

(assert (=> start!11986 e!67008))

(assert (=> start!11986 e!67010))

(declare-fun e!67004 () Bool)

(assert (=> start!11986 e!67004))

(declare-fun e!67007 () Bool)

(assert (=> start!11986 e!67007))

(declare-datatypes ((Hashable!375 0))(
  ( (HashableExt!374 (__x!2062 Int)) )
))
(declare-datatypes ((tuple2!2176 0))(
  ( (tuple2!2177 (_1!1298 Regex!513) (_2!1298 C!1948)) )
))
(declare-datatypes ((tuple2!2178 0))(
  ( (tuple2!2179 (_1!1299 tuple2!2176) (_2!1299 Regex!513)) )
))
(declare-datatypes ((List!1940 0))(
  ( (Nil!1934) (Cons!1934 (h!7331 tuple2!2178) (t!22417 List!1940)) )
))
(declare-datatypes ((array!1377 0))(
  ( (array!1378 (arr!642 (Array (_ BitVec 32) (_ BitVec 64))) (size!1760 (_ BitVec 32))) )
))
(declare-datatypes ((array!1379 0))(
  ( (array!1380 (arr!643 (Array (_ BitVec 32) List!1940)) (size!1761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!758 0))(
  ( (LongMapFixedSize!759 (defaultEntry!718 Int) (mask!1303 (_ BitVec 32)) (extraKeys!625 (_ BitVec 32)) (zeroValue!635 List!1940) (minValue!635 List!1940) (_size!891 (_ BitVec 32)) (_keys!670 array!1377) (_values!657 array!1379) (_vacant!440 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1505 0))(
  ( (Cell!1506 (v!13289 LongMapFixedSize!758)) )
))
(declare-datatypes ((MutLongMap!379 0))(
  ( (LongMap!379 (underlying!957 Cell!1505)) (MutLongMapExt!378 (__x!2063 Int)) )
))
(declare-datatypes ((Cell!1507 0))(
  ( (Cell!1508 (v!13290 MutLongMap!379)) )
))
(declare-datatypes ((MutableMap!375 0))(
  ( (MutableMapExt!374 (__x!2064 Int)) (HashMap!375 (underlying!958 Cell!1507) (hashF!2251 Hashable!375) (_size!892 (_ BitVec 32)) (defaultValue!524 Int)) )
))
(declare-datatypes ((Cache!186 0))(
  ( (Cache!187 (cache!827 MutableMap!375)) )
))
(declare-fun cache!470 () Cache!186)

(declare-fun e!67014 () Bool)

(declare-fun inv!2453 (Cache!186) Bool)

(assert (=> start!11986 (and (inv!2453 cache!470) e!67014)))

(declare-fun b!117657 () Bool)

(declare-fun res!55701 () Bool)

(declare-fun e!67012 () Bool)

(assert (=> b!117657 (=> (not res!55701) (not e!67012))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((List!1941 0))(
  ( (Nil!1935) (Cons!1935 (h!7332 C!1948) (t!22418 List!1941)) )
))
(declare-fun totalInput!1363 () List!1941)

(declare-fun size!1762 (List!1941) Int)

(assert (=> b!117657 (= res!55701 (= totalInputSize!643 (size!1762 totalInput!1363)))))

(declare-fun b!117658 () Bool)

(declare-fun res!55704 () Bool)

(assert (=> b!117658 (=> (not res!55704) (not e!67012))))

(declare-fun testedPSize!285 () Int)

(declare-fun testedP!367 () List!1941)

(assert (=> b!117658 (= res!55704 (= testedPSize!285 (size!1762 testedP!367)))))

(declare-fun b!117659 () Bool)

(declare-fun tp!64311 () Bool)

(declare-fun tp!64305 () Bool)

(assert (=> b!117659 (= e!67008 (and tp!64311 tp!64305))))

(declare-fun e!67013 () Bool)

(declare-fun e!67017 () Bool)

(assert (=> b!117660 (= e!67013 (and e!67017 tp!64302))))

(declare-fun mapIsEmpty!1471 () Bool)

(declare-fun mapRes!1471 () Bool)

(assert (=> mapIsEmpty!1471 mapRes!1471))

(declare-fun b!117661 () Bool)

(declare-fun tp!64299 () Bool)

(assert (=> b!117661 (= e!67008 tp!64299)))

(declare-fun b!117662 () Bool)

(declare-fun e!67015 () Bool)

(declare-fun e!67009 () Bool)

(assert (=> b!117662 (= e!67015 e!67009)))

(declare-fun b!117663 () Bool)

(declare-fun res!55705 () Bool)

(assert (=> b!117663 (=> (not res!55705) (not e!67006))))

(declare-fun valid!343 (Cache!186) Bool)

(assert (=> b!117663 (= res!55705 (valid!343 cache!470))))

(declare-fun b!117664 () Bool)

(declare-fun lt!34947 () MutLongMap!379)

(get-info :version)

(assert (=> b!117664 (= e!67017 (and e!67015 ((_ is LongMap!379) lt!34947)))))

(assert (=> b!117664 (= lt!34947 (v!13290 (underlying!958 (cache!827 cache!470))))))

(declare-fun b!117665 () Bool)

(assert (=> b!117665 (= e!67014 e!67013)))

(declare-fun b!117666 () Bool)

(assert (=> b!117666 (= e!67006 e!67012)))

(declare-fun res!55703 () Bool)

(assert (=> b!117666 (=> (not res!55703) (not e!67012))))

(declare-fun lt!34948 () List!1941)

(assert (=> b!117666 (= res!55703 (= lt!34948 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1941)

(declare-fun ++!352 (List!1941 List!1941) List!1941)

(assert (=> b!117666 (= lt!34948 (++!352 testedP!367 testedSuffix!285))))

(declare-fun b!117667 () Bool)

(declare-fun isPrefix!100 (List!1941 List!1941) Bool)

(assert (=> b!117667 (= e!67012 (not (isPrefix!100 testedP!367 totalInput!1363)))))

(assert (=> b!117667 (isPrefix!100 testedP!367 lt!34948)))

(declare-datatypes ((Unit!1447 0))(
  ( (Unit!1448) )
))
(declare-fun lt!34946 () Unit!1447)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!46 (List!1941 List!1941) Unit!1447)

(assert (=> b!117667 (= lt!34946 (lemmaConcatTwoListThenFirstIsPrefix!46 testedP!367 testedSuffix!285))))

(declare-fun b!117668 () Bool)

(declare-fun tp!64312 () Bool)

(assert (=> b!117668 (= e!67007 (and tp_is_empty!1081 tp!64312))))

(declare-fun b!117669 () Bool)

(declare-fun tp!64301 () Bool)

(declare-fun tp!64304 () Bool)

(assert (=> b!117669 (= e!67008 (and tp!64301 tp!64304))))

(declare-fun b!117670 () Bool)

(declare-fun e!67011 () Bool)

(assert (=> b!117670 (= e!67009 e!67011)))

(declare-fun b!117671 () Bool)

(declare-fun e!67016 () Bool)

(declare-fun tp!64300 () Bool)

(assert (=> b!117671 (= e!67016 (and tp!64300 mapRes!1471))))

(declare-fun condMapEmpty!1471 () Bool)

(declare-fun mapDefault!1471 () List!1940)

(assert (=> b!117671 (= condMapEmpty!1471 (= (arr!643 (_values!657 (v!13289 (underlying!957 (v!13290 (underlying!958 (cache!827 cache!470))))))) ((as const (Array (_ BitVec 32) List!1940)) mapDefault!1471)))))

(declare-fun b!117672 () Bool)

(declare-fun tp!64309 () Bool)

(assert (=> b!117672 (= e!67004 (and tp_is_empty!1081 tp!64309))))

(declare-fun mapNonEmpty!1471 () Bool)

(declare-fun tp!64313 () Bool)

(declare-fun tp!64306 () Bool)

(assert (=> mapNonEmpty!1471 (= mapRes!1471 (and tp!64313 tp!64306))))

(declare-fun mapKey!1471 () (_ BitVec 32))

(declare-fun mapValue!1471 () List!1940)

(declare-fun mapRest!1471 () (Array (_ BitVec 32) List!1940))

(assert (=> mapNonEmpty!1471 (= (arr!643 (_values!657 (v!13289 (underlying!957 (v!13290 (underlying!958 (cache!827 cache!470))))))) (store mapRest!1471 mapKey!1471 mapValue!1471))))

(declare-fun tp!64307 () Bool)

(declare-fun tp!64310 () Bool)

(declare-fun array_inv!459 (array!1377) Bool)

(declare-fun array_inv!460 (array!1379) Bool)

(assert (=> b!117673 (= e!67011 (and tp!64303 tp!64307 tp!64310 (array_inv!459 (_keys!670 (v!13289 (underlying!957 (v!13290 (underlying!958 (cache!827 cache!470))))))) (array_inv!460 (_values!657 (v!13289 (underlying!957 (v!13290 (underlying!958 (cache!827 cache!470))))))) e!67016))))

(assert (= (and start!11986 res!55702) b!117663))

(assert (= (and b!117663 res!55705) b!117666))

(assert (= (and b!117666 res!55703) b!117658))

(assert (= (and b!117658 res!55704) b!117657))

(assert (= (and b!117657 res!55701) b!117667))

(assert (= (and start!11986 ((_ is ElementMatch!513) r!15532)) b!117655))

(assert (= (and start!11986 ((_ is Concat!897) r!15532)) b!117659))

(assert (= (and start!11986 ((_ is Star!513) r!15532)) b!117661))

(assert (= (and start!11986 ((_ is Union!513) r!15532)) b!117669))

(assert (= (and start!11986 ((_ is Cons!1935) totalInput!1363)) b!117656))

(assert (= (and start!11986 ((_ is Cons!1935) testedSuffix!285)) b!117672))

(assert (= (and start!11986 ((_ is Cons!1935) testedP!367)) b!117668))

(assert (= (and b!117671 condMapEmpty!1471) mapIsEmpty!1471))

(assert (= (and b!117671 (not condMapEmpty!1471)) mapNonEmpty!1471))

(assert (= b!117673 b!117671))

(assert (= b!117670 b!117673))

(assert (= b!117662 b!117670))

(assert (= (and b!117664 ((_ is LongMap!379) (v!13290 (underlying!958 (cache!827 cache!470))))) b!117662))

(assert (= b!117660 b!117664))

(assert (= (and b!117665 ((_ is HashMap!375) (cache!827 cache!470))) b!117660))

(assert (= start!11986 b!117665))

(declare-fun m!105562 () Bool)

(assert (=> b!117673 m!105562))

(declare-fun m!105564 () Bool)

(assert (=> b!117673 m!105564))

(declare-fun m!105566 () Bool)

(assert (=> b!117666 m!105566))

(declare-fun m!105568 () Bool)

(assert (=> mapNonEmpty!1471 m!105568))

(declare-fun m!105570 () Bool)

(assert (=> b!117657 m!105570))

(declare-fun m!105572 () Bool)

(assert (=> b!117663 m!105572))

(declare-fun m!105574 () Bool)

(assert (=> b!117667 m!105574))

(declare-fun m!105576 () Bool)

(assert (=> b!117667 m!105576))

(declare-fun m!105578 () Bool)

(assert (=> b!117667 m!105578))

(declare-fun m!105580 () Bool)

(assert (=> start!11986 m!105580))

(declare-fun m!105582 () Bool)

(assert (=> start!11986 m!105582))

(declare-fun m!105584 () Bool)

(assert (=> b!117658 m!105584))

(check-sat (not b!117673) b_and!5875 (not b!117658) (not b!117671) (not b!117669) (not b!117663) (not b!117672) (not b!117657) tp_is_empty!1081 (not b!117667) (not b!117661) b_and!5877 (not mapNonEmpty!1471) (not b!117656) (not b!117668) (not b!117666) (not b_next!3747) (not start!11986) (not b!117659) (not b_next!3745))
(check-sat b_and!5877 b_and!5875 (not b_next!3747) (not b_next!3745))
