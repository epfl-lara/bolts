; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46516 () Bool)

(assert start!46516)

(declare-fun b!513642 () Bool)

(declare-fun b_free!13319 () Bool)

(declare-fun b_next!13319 () Bool)

(assert (=> b!513642 (= b_free!13319 (not b_next!13319))))

(declare-fun tp!159902 () Bool)

(declare-fun b_and!50745 () Bool)

(assert (=> b!513642 (= tp!159902 b_and!50745)))

(declare-fun b!513639 () Bool)

(declare-fun b_free!13321 () Bool)

(declare-fun b_next!13321 () Bool)

(assert (=> b!513639 (= b_free!13321 (not b_next!13321))))

(declare-fun tp!159897 () Bool)

(declare-fun b_and!50747 () Bool)

(assert (=> b!513639 (= tp!159897 b_and!50747)))

(declare-fun b_free!13323 () Bool)

(declare-fun b_next!13323 () Bool)

(assert (=> start!46516 (= b_free!13323 (not b_next!13323))))

(declare-fun tp!159900 () Bool)

(declare-fun b_and!50749 () Bool)

(assert (=> start!46516 (= tp!159900 b_and!50749)))

(declare-fun res!217791 () Bool)

(declare-fun e!306869 () Bool)

(assert (=> start!46516 (=> (not res!217791) (not e!306869))))

(declare-datatypes ((V!1405 0))(
  ( (V!1406 (val!1709 Int)) )
))
(declare-datatypes ((K!1307 0))(
  ( (K!1308 (val!1710 Int)) )
))
(declare-datatypes ((tuple2!5568 0))(
  ( (tuple2!5569 (_1!3000 K!1307) (_2!3000 V!1405)) )
))
(declare-datatypes ((List!4668 0))(
  ( (Nil!4658) (Cons!4658 (h!10055 tuple2!5568) (t!73190 List!4668)) )
))
(declare-datatypes ((array!1815 0))(
  ( (array!1816 (arr!838 (Array (_ BitVec 32) List!4668)) (size!3772 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!449 0))(
  ( (HashableExt!448 (__x!3322 Int)) )
))
(declare-datatypes ((array!1817 0))(
  ( (array!1818 (arr!839 (Array (_ BitVec 32) (_ BitVec 64))) (size!3773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!954 0))(
  ( (LongMapFixedSize!955 (defaultEntry!828 Int) (mask!1880 (_ BitVec 32)) (extraKeys!723 (_ BitVec 32)) (zeroValue!733 List!4668) (minValue!733 List!4668) (_size!1063 (_ BitVec 32)) (_keys!768 array!1817) (_values!755 array!1815) (_vacant!538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1849 0))(
  ( (Cell!1850 (v!15671 LongMapFixedSize!954)) )
))
(declare-datatypes ((MutLongMap!477 0))(
  ( (LongMap!477 (underlying!1133 Cell!1849)) (MutLongMapExt!476 (__x!3323 Int)) )
))
(declare-datatypes ((Cell!1851 0))(
  ( (Cell!1852 (v!15672 MutLongMap!477)) )
))
(declare-datatypes ((MutableMap!449 0))(
  ( (MutableMapExt!448 (__x!3324 Int)) (HashMap!449 (underlying!1134 Cell!1851) (hashF!2325 Hashable!449) (_size!1064 (_ BitVec 32)) (defaultValue!598 Int)) )
))
(declare-fun hm!65 () MutableMap!449)

(get-info :version)

(assert (=> start!46516 (= res!217791 ((_ is HashMap!449) hm!65))))

(assert (=> start!46516 e!306869))

(declare-fun e!306871 () Bool)

(assert (=> start!46516 e!306871))

(assert (=> start!46516 tp!159900))

(declare-fun b!513638 () Bool)

(declare-fun e!306875 () Bool)

(declare-fun e!306872 () Bool)

(declare-fun lt!212469 () MutLongMap!477)

(assert (=> b!513638 (= e!306875 (and e!306872 ((_ is LongMap!477) lt!212469)))))

(assert (=> b!513638 (= lt!212469 (v!15672 (underlying!1134 hm!65)))))

(declare-fun e!306874 () Bool)

(declare-fun e!306876 () Bool)

(declare-fun tp!159904 () Bool)

(declare-fun tp!159898 () Bool)

(declare-fun array_inv!601 (array!1817) Bool)

(declare-fun array_inv!602 (array!1815) Bool)

(assert (=> b!513639 (= e!306874 (and tp!159897 tp!159904 tp!159898 (array_inv!601 (_keys!768 (v!15671 (underlying!1133 (v!15672 (underlying!1134 hm!65)))))) (array_inv!602 (_values!755 (v!15671 (underlying!1133 (v!15672 (underlying!1134 hm!65)))))) e!306876))))

(declare-fun b!513640 () Bool)

(declare-fun e!306873 () Bool)

(assert (=> b!513640 (= e!306872 e!306873)))

(declare-fun b!513641 () Bool)

(declare-fun res!217792 () Bool)

(assert (=> b!513641 (=> (not res!217792) (not e!306869))))

(declare-fun valid!433 (MutableMap!449) Bool)

(assert (=> b!513641 (= res!217792 (valid!433 hm!65))))

(declare-fun mapNonEmpty!1843 () Bool)

(declare-fun mapRes!1843 () Bool)

(declare-fun tp!159901 () Bool)

(declare-fun tp!159899 () Bool)

(assert (=> mapNonEmpty!1843 (= mapRes!1843 (and tp!159901 tp!159899))))

(declare-fun mapRest!1843 () (Array (_ BitVec 32) List!4668))

(declare-fun mapValue!1843 () List!4668)

(declare-fun mapKey!1843 () (_ BitVec 32))

(assert (=> mapNonEmpty!1843 (= (arr!838 (_values!755 (v!15671 (underlying!1133 (v!15672 (underlying!1134 hm!65)))))) (store mapRest!1843 mapKey!1843 mapValue!1843))))

(assert (=> b!513642 (= e!306871 (and e!306875 tp!159902))))

(declare-fun mapIsEmpty!1843 () Bool)

(assert (=> mapIsEmpty!1843 mapRes!1843))

(declare-fun b!513643 () Bool)

(declare-fun tp!159903 () Bool)

(assert (=> b!513643 (= e!306876 (and tp!159903 mapRes!1843))))

(declare-fun condMapEmpty!1843 () Bool)

(declare-fun mapDefault!1843 () List!4668)

(assert (=> b!513643 (= condMapEmpty!1843 (= (arr!838 (_values!755 (v!15671 (underlying!1133 (v!15672 (underlying!1134 hm!65)))))) ((as const (Array (_ BitVec 32) List!4668)) mapDefault!1843)))))

(declare-fun b!513644 () Bool)

(assert (=> b!513644 (= e!306869 false)))

(declare-fun lt!212470 () Bool)

(declare-fun p!6060 () Int)

(declare-fun forall!1352 (List!4668 Int) Bool)

(declare-datatypes ((ListMap!111 0))(
  ( (ListMap!112 (toList!367 List!4668)) )
))
(declare-fun map!966 (MutableMap!449) ListMap!111)

(assert (=> b!513644 (= lt!212470 (forall!1352 (toList!367 (map!966 hm!65)) p!6060))))

(declare-fun b!513645 () Bool)

(assert (=> b!513645 (= e!306873 e!306874)))

(assert (= (and start!46516 res!217791) b!513641))

(assert (= (and b!513641 res!217792) b!513644))

(assert (= (and b!513643 condMapEmpty!1843) mapIsEmpty!1843))

(assert (= (and b!513643 (not condMapEmpty!1843)) mapNonEmpty!1843))

(assert (= b!513639 b!513643))

(assert (= b!513645 b!513639))

(assert (= b!513640 b!513645))

(assert (= (and b!513638 ((_ is LongMap!477) (v!15672 (underlying!1134 hm!65)))) b!513640))

(assert (= b!513642 b!513638))

(assert (= (and start!46516 ((_ is HashMap!449) hm!65)) b!513642))

(declare-fun m!759717 () Bool)

(assert (=> b!513639 m!759717))

(declare-fun m!759719 () Bool)

(assert (=> b!513639 m!759719))

(declare-fun m!759721 () Bool)

(assert (=> b!513641 m!759721))

(declare-fun m!759723 () Bool)

(assert (=> mapNonEmpty!1843 m!759723))

(declare-fun m!759725 () Bool)

(assert (=> b!513644 m!759725))

(declare-fun m!759727 () Bool)

(assert (=> b!513644 m!759727))

(check-sat b_and!50749 b_and!50745 (not b_next!13323) (not b!513643) (not b_next!13319) (not b!513641) (not b_next!13321) b_and!50747 (not b!513639) (not mapNonEmpty!1843) (not b!513644))
(check-sat b_and!50749 b_and!50745 (not b_next!13323) (not b_next!13319) (not b_next!13321) b_and!50747)
