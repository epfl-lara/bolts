; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242308 () Bool)

(assert start!242308)

(declare-fun b!2482634 () Bool)

(declare-fun b_free!72377 () Bool)

(declare-fun b_next!73081 () Bool)

(assert (=> b!2482634 (= b_free!72377 (not b_next!73081))))

(declare-fun tp!794877 () Bool)

(declare-fun b_and!188629 () Bool)

(assert (=> b!2482634 (= tp!794877 b_and!188629)))

(declare-fun b!2482633 () Bool)

(declare-fun b_free!72379 () Bool)

(declare-fun b_next!73083 () Bool)

(assert (=> b!2482633 (= b_free!72379 (not b_next!73083))))

(declare-fun tp!794878 () Bool)

(declare-fun b_and!188631 () Bool)

(assert (=> b!2482633 (= tp!794878 b_and!188631)))

(declare-fun b!2482626 () Bool)

(declare-fun e!1576027 () Bool)

(declare-fun e!1576032 () Bool)

(assert (=> b!2482626 (= e!1576027 e!1576032)))

(declare-fun b!2482627 () Bool)

(declare-fun e!1576030 () Bool)

(assert (=> b!2482627 (= e!1576032 e!1576030)))

(declare-datatypes ((K!5535 0))(
  ( (K!5536 (val!8903 Int)) )
))
(declare-datatypes ((V!5737 0))(
  ( (V!5738 (val!8904 Int)) )
))
(declare-datatypes ((tuple2!28904 0))(
  ( (tuple2!28905 (_1!16993 K!5535) (_2!16993 V!5737)) )
))
(declare-datatypes ((List!29236 0))(
  ( (Nil!29136) (Cons!29136 (h!34542 tuple2!28904) (t!210899 List!29236)) )
))
(declare-datatypes ((array!11989 0))(
  ( (array!11990 (arr!5350 (Array (_ BitVec 32) List!29236)) (size!22769 (_ BitVec 32))) )
))
(declare-datatypes ((array!11991 0))(
  ( (array!11992 (arr!5351 (Array (_ BitVec 32) (_ BitVec 64))) (size!22770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6760 0))(
  ( (LongMapFixedSize!6761 (defaultEntry!3754 Int) (mask!8559 (_ BitVec 32)) (extraKeys!3628 (_ BitVec 32)) (zeroValue!3638 List!29236) (minValue!3638 List!29236) (_size!6807 (_ BitVec 32)) (_keys!3677 array!11991) (_values!3660 array!11989) (_vacant!3441 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13337 0))(
  ( (Cell!13338 (v!31496 LongMapFixedSize!6760)) )
))
(declare-datatypes ((MutLongMap!3380 0))(
  ( (LongMap!3380 (underlying!6967 Cell!13337)) (MutLongMapExt!3379 (__x!19046 Int)) )
))
(declare-datatypes ((tuple2!28906 0))(
  ( (tuple2!28907 (_1!16994 Bool) (_2!16994 MutLongMap!3380)) )
))
(declare-fun lt!889093 () tuple2!28906)

(declare-fun b!2482628 () Bool)

(declare-fun e!1576031 () Bool)

(declare-datatypes ((Cell!13339 0))(
  ( (Cell!13340 (v!31497 MutLongMap!3380)) )
))
(declare-fun lt!889090 () Cell!13339)

(declare-datatypes ((Hashable!3290 0))(
  ( (HashableExt!3289 (__x!19047 Int)) )
))
(declare-datatypes ((MutableMap!3290 0))(
  ( (MutableMapExt!3289 (__x!19048 Int)) (HashMap!3290 (underlying!6968 Cell!13339) (hashF!5253 Hashable!3290) (_size!6808 (_ BitVec 32)) (defaultValue!3452 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3290)

(get-info :version)

(declare-datatypes ((Unit!42659 0))(
  ( (Unit!42660) )
))
(declare-datatypes ((tuple2!28908 0))(
  ( (tuple2!28909 (_1!16995 Unit!42659) (_2!16995 MutableMap!3290)) )
))
(declare-fun Unit!42661 () Unit!42659)

(declare-fun Unit!42662 () Unit!42659)

(assert (=> b!2482628 (= e!1576031 (not (or (not (_1!16994 lt!889093)) ((_ is HashMap!3290) (_2!16995 (ite (_1!16994 lt!889093) (tuple2!28909 Unit!42661 (HashMap!3290 lt!889090 (hashF!5253 thiss!42540) (bvsub (_size!6808 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3452 thiss!42540))) (tuple2!28909 Unit!42662 (HashMap!3290 lt!889090 (hashF!5253 thiss!42540) (_size!6808 thiss!42540) (defaultValue!3452 thiss!42540)))))))))))

(declare-fun lt!889088 () List!29236)

(declare-fun noDuplicateKeys!88 (List!29236) Bool)

(assert (=> b!2482628 (noDuplicateKeys!88 lt!889088)))

(declare-fun lt!889092 () Unit!42659)

(declare-fun lt!889096 () List!29236)

(declare-fun key!2246 () K!5535)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!68 (List!29236 K!5535) Unit!42659)

(assert (=> b!2482628 (= lt!889092 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!68 lt!889096 key!2246))))

(assert (=> b!2482628 (= lt!889090 (Cell!13340 (_2!16994 lt!889093)))))

(declare-fun lt!889094 () (_ BitVec 64))

(declare-fun update!197 (MutLongMap!3380 (_ BitVec 64) List!29236) tuple2!28906)

(assert (=> b!2482628 (= lt!889093 (update!197 (v!31497 (underlying!6968 thiss!42540)) lt!889094 lt!889088))))

(declare-fun removePairForKey!80 (List!29236 K!5535) List!29236)

(assert (=> b!2482628 (= lt!889088 (removePairForKey!80 lt!889096 key!2246))))

(declare-datatypes ((ListMap!1085 0))(
  ( (ListMap!1086 (toList!1603 List!29236)) )
))
(declare-fun lt!889089 () ListMap!1085)

(declare-fun map!6232 (MutableMap!3290) ListMap!1085)

(assert (=> b!2482628 (= lt!889089 (map!6232 thiss!42540))))

(declare-fun lt!889091 () Unit!42659)

(declare-fun lambda!94111 () Int)

(declare-datatypes ((tuple2!28910 0))(
  ( (tuple2!28911 (_1!16996 (_ BitVec 64)) (_2!16996 List!29236)) )
))
(declare-datatypes ((List!29237 0))(
  ( (Nil!29137) (Cons!29137 (h!34543 tuple2!28910) (t!210900 List!29237)) )
))
(declare-fun forallContained!869 (List!29237 Int tuple2!28910) Unit!42659)

(declare-datatypes ((ListLongMap!551 0))(
  ( (ListLongMap!552 (toList!1604 List!29237)) )
))
(declare-fun map!6233 (MutLongMap!3380) ListLongMap!551)

(assert (=> b!2482628 (= lt!889091 (forallContained!869 (toList!1604 (map!6233 (v!31497 (underlying!6968 thiss!42540)))) lambda!94111 (tuple2!28911 lt!889094 lt!889096)))))

(declare-fun apply!6935 (MutLongMap!3380 (_ BitVec 64)) List!29236)

(assert (=> b!2482628 (= lt!889096 (apply!6935 (v!31497 (underlying!6968 thiss!42540)) lt!889094))))

(declare-fun hash!704 (Hashable!3290 K!5535) (_ BitVec 64))

(assert (=> b!2482628 (= lt!889094 (hash!704 (hashF!5253 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15617 () Bool)

(declare-fun mapRes!15617 () Bool)

(assert (=> mapIsEmpty!15617 mapRes!15617))

(declare-fun b!2482629 () Bool)

(declare-fun e!1576033 () Bool)

(declare-fun lt!889095 () MutLongMap!3380)

(assert (=> b!2482629 (= e!1576033 (and e!1576027 ((_ is LongMap!3380) lt!889095)))))

(assert (=> b!2482629 (= lt!889095 (v!31497 (underlying!6968 thiss!42540)))))

(declare-fun res!1050942 () Bool)

(assert (=> start!242308 (=> (not res!1050942) (not e!1576031))))

(assert (=> start!242308 (= res!1050942 ((_ is HashMap!3290) thiss!42540))))

(assert (=> start!242308 e!1576031))

(declare-fun e!1576028 () Bool)

(assert (=> start!242308 e!1576028))

(declare-fun tp_is_empty!12295 () Bool)

(assert (=> start!242308 tp_is_empty!12295))

(declare-fun mapNonEmpty!15617 () Bool)

(declare-fun tp!794873 () Bool)

(declare-fun tp!794879 () Bool)

(assert (=> mapNonEmpty!15617 (= mapRes!15617 (and tp!794873 tp!794879))))

(declare-fun mapRest!15617 () (Array (_ BitVec 32) List!29236))

(declare-fun mapKey!15617 () (_ BitVec 32))

(declare-fun mapValue!15617 () List!29236)

(assert (=> mapNonEmpty!15617 (= (arr!5350 (_values!3660 (v!31496 (underlying!6967 (v!31497 (underlying!6968 thiss!42540)))))) (store mapRest!15617 mapKey!15617 mapValue!15617))))

(declare-fun b!2482630 () Bool)

(declare-fun res!1050943 () Bool)

(assert (=> b!2482630 (=> (not res!1050943) (not e!1576031))))

(declare-fun valid!2585 (MutableMap!3290) Bool)

(assert (=> b!2482630 (= res!1050943 (valid!2585 thiss!42540))))

(declare-fun b!2482631 () Bool)

(declare-fun res!1050941 () Bool)

(assert (=> b!2482631 (=> (not res!1050941) (not e!1576031))))

(declare-fun contains!5133 (MutableMap!3290 K!5535) Bool)

(assert (=> b!2482631 (= res!1050941 (contains!5133 thiss!42540 key!2246))))

(declare-fun b!2482632 () Bool)

(declare-fun e!1576029 () Bool)

(declare-fun tp!794874 () Bool)

(assert (=> b!2482632 (= e!1576029 (and tp!794874 mapRes!15617))))

(declare-fun condMapEmpty!15617 () Bool)

(declare-fun mapDefault!15617 () List!29236)

(assert (=> b!2482632 (= condMapEmpty!15617 (= (arr!5350 (_values!3660 (v!31496 (underlying!6967 (v!31497 (underlying!6968 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29236)) mapDefault!15617)))))

(assert (=> b!2482633 (= e!1576028 (and e!1576033 tp!794878))))

(declare-fun tp!794875 () Bool)

(declare-fun tp!794876 () Bool)

(declare-fun array_inv!3841 (array!11991) Bool)

(declare-fun array_inv!3842 (array!11989) Bool)

(assert (=> b!2482634 (= e!1576030 (and tp!794877 tp!794876 tp!794875 (array_inv!3841 (_keys!3677 (v!31496 (underlying!6967 (v!31497 (underlying!6968 thiss!42540)))))) (array_inv!3842 (_values!3660 (v!31496 (underlying!6967 (v!31497 (underlying!6968 thiss!42540)))))) e!1576029))))

(assert (= (and start!242308 res!1050942) b!2482630))

(assert (= (and b!2482630 res!1050943) b!2482631))

(assert (= (and b!2482631 res!1050941) b!2482628))

(assert (= (and b!2482632 condMapEmpty!15617) mapIsEmpty!15617))

(assert (= (and b!2482632 (not condMapEmpty!15617)) mapNonEmpty!15617))

(assert (= b!2482634 b!2482632))

(assert (= b!2482627 b!2482634))

(assert (= b!2482626 b!2482627))

(assert (= (and b!2482629 ((_ is LongMap!3380) (v!31497 (underlying!6968 thiss!42540)))) b!2482626))

(assert (= b!2482633 b!2482629))

(assert (= (and start!242308 ((_ is HashMap!3290) thiss!42540)) b!2482633))

(declare-fun m!2850661 () Bool)

(assert (=> b!2482630 m!2850661))

(declare-fun m!2850663 () Bool)

(assert (=> b!2482631 m!2850663))

(declare-fun m!2850665 () Bool)

(assert (=> mapNonEmpty!15617 m!2850665))

(declare-fun m!2850667 () Bool)

(assert (=> b!2482634 m!2850667))

(declare-fun m!2850669 () Bool)

(assert (=> b!2482634 m!2850669))

(declare-fun m!2850671 () Bool)

(assert (=> b!2482628 m!2850671))

(declare-fun m!2850673 () Bool)

(assert (=> b!2482628 m!2850673))

(declare-fun m!2850675 () Bool)

(assert (=> b!2482628 m!2850675))

(declare-fun m!2850677 () Bool)

(assert (=> b!2482628 m!2850677))

(declare-fun m!2850679 () Bool)

(assert (=> b!2482628 m!2850679))

(declare-fun m!2850681 () Bool)

(assert (=> b!2482628 m!2850681))

(declare-fun m!2850683 () Bool)

(assert (=> b!2482628 m!2850683))

(declare-fun m!2850685 () Bool)

(assert (=> b!2482628 m!2850685))

(declare-fun m!2850687 () Bool)

(assert (=> b!2482628 m!2850687))

(check-sat (not b_next!73083) (not mapNonEmpty!15617) (not b_next!73081) tp_is_empty!12295 (not b!2482634) (not b!2482630) (not b!2482632) (not b!2482631) b_and!188629 (not b!2482628) b_and!188631)
(check-sat b_and!188631 b_and!188629 (not b_next!73081) (not b_next!73083))
