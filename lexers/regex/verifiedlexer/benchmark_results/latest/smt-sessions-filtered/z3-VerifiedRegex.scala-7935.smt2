; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413138 () Bool)

(assert start!413138)

(declare-fun b!4302010 () Bool)

(declare-fun b_free!128163 () Bool)

(declare-fun b_next!128867 () Bool)

(assert (=> b!4302010 (= b_free!128163 (not b_next!128867))))

(declare-fun tp!1321877 () Bool)

(declare-fun b_and!339547 () Bool)

(assert (=> b!4302010 (= tp!1321877 b_and!339547)))

(declare-fun b!4302011 () Bool)

(declare-fun b_free!128165 () Bool)

(declare-fun b_next!128869 () Bool)

(assert (=> b!4302011 (= b_free!128165 (not b_next!128869))))

(declare-fun tp!1321876 () Bool)

(declare-fun b_and!339549 () Bool)

(assert (=> b!4302011 (= tp!1321876 b_and!339549)))

(declare-fun b!4302003 () Bool)

(declare-fun e!2674354 () Bool)

(declare-fun e!2674355 () Bool)

(assert (=> b!4302003 (= e!2674354 e!2674355)))

(declare-fun res!1763109 () Bool)

(assert (=> b!4302003 (=> (not res!1763109) (not e!2674355))))

(declare-datatypes ((V!9326 0))(
  ( (V!9327 (val!15557 Int)) )
))
(declare-datatypes ((K!9124 0))(
  ( (K!9125 (val!15558 Int)) )
))
(declare-datatypes ((tuple2!46032 0))(
  ( (tuple2!46033 (_1!26295 K!9124) (_2!26295 V!9326)) )
))
(declare-datatypes ((List!48114 0))(
  ( (Nil!47990) (Cons!47990 (h!53410 tuple2!46032) (t!354883 List!48114)) )
))
(declare-datatypes ((array!16326 0))(
  ( (array!16327 (arr!7287 (Array (_ BitVec 32) (_ BitVec 64))) (size!35326 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4467 0))(
  ( (HashableExt!4466 (__x!29678 Int)) )
))
(declare-datatypes ((array!16328 0))(
  ( (array!16329 (arr!7288 (Array (_ BitVec 32) List!48114)) (size!35327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9102 0))(
  ( (LongMapFixedSize!9103 (defaultEntry!4936 Int) (mask!13055 (_ BitVec 32)) (extraKeys!4800 (_ BitVec 32)) (zeroValue!4810 List!48114) (minValue!4810 List!48114) (_size!9145 (_ BitVec 32)) (_keys!4851 array!16326) (_values!4832 array!16328) (_vacant!4612 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18013 0))(
  ( (Cell!18014 (v!41984 LongMapFixedSize!9102)) )
))
(declare-datatypes ((MutLongMap!4551 0))(
  ( (LongMap!4551 (underlying!9331 Cell!18013)) (MutLongMapExt!4550 (__x!29679 Int)) )
))
(declare-datatypes ((Cell!18015 0))(
  ( (Cell!18016 (v!41985 MutLongMap!4551)) )
))
(declare-datatypes ((MutableMap!4457 0))(
  ( (MutableMapExt!4456 (__x!29680 Int)) (HashMap!4457 (underlying!9332 Cell!18015) (hashF!6502 Hashable!4467) (_size!9146 (_ BitVec 32)) (defaultValue!4628 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4457)

(declare-fun key!2048 () K!9124)

(declare-fun contains!9913 (MutableMap!4457 K!9124) Bool)

(assert (=> b!4302003 (= res!1763109 (contains!9913 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46034 0))(
  ( (tuple2!46035 (_1!26296 (_ BitVec 64)) (_2!26296 List!48114)) )
))
(declare-datatypes ((List!48115 0))(
  ( (Nil!47991) (Cons!47991 (h!53411 tuple2!46034) (t!354884 List!48115)) )
))
(declare-datatypes ((ListLongMap!839 0))(
  ( (ListLongMap!840 (toList!2232 List!48115)) )
))
(declare-fun lt!1523697 () ListLongMap!839)

(declare-fun map!9951 (MutLongMap!4551) ListLongMap!839)

(assert (=> b!4302003 (= lt!1523697 (map!9951 (v!41985 (underlying!9332 thiss!42308))))))

(declare-datatypes ((ListMap!1519 0))(
  ( (ListMap!1520 (toList!2233 List!48114)) )
))
(declare-fun lt!1523691 () ListMap!1519)

(declare-fun map!9952 (MutableMap!4457) ListMap!1519)

(assert (=> b!4302003 (= lt!1523691 (map!9952 thiss!42308))))

(declare-fun b!4302004 () Bool)

(declare-fun res!1763106 () Bool)

(assert (=> b!4302004 (=> (not res!1763106) (not e!2674354))))

(declare-fun valid!3537 (MutableMap!4457) Bool)

(assert (=> b!4302004 (= res!1763106 (valid!3537 thiss!42308))))

(declare-fun b!4302005 () Bool)

(declare-fun e!2674362 () Bool)

(declare-fun e!2674356 () Bool)

(assert (=> b!4302005 (= e!2674362 e!2674356)))

(declare-fun b!4302006 () Bool)

(declare-fun e!2674357 () Bool)

(declare-fun tp!1321874 () Bool)

(declare-fun mapRes!20425 () Bool)

(assert (=> b!4302006 (= e!2674357 (and tp!1321874 mapRes!20425))))

(declare-fun condMapEmpty!20425 () Bool)

(declare-fun mapDefault!20425 () List!48114)

(assert (=> b!4302006 (= condMapEmpty!20425 (= (arr!7288 (_values!4832 (v!41984 (underlying!9331 (v!41985 (underlying!9332 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48114)) mapDefault!20425)))))

(declare-fun b!4302007 () Bool)

(declare-fun e!2674360 () Bool)

(assert (=> b!4302007 (= e!2674360 e!2674362)))

(declare-fun b!4302008 () Bool)

(declare-fun e!2674353 () Bool)

(assert (=> b!4302008 (= e!2674353 (not true))))

(declare-fun lt!1523695 () Bool)

(declare-fun lt!1523692 () List!48114)

(declare-fun noDuplicateKeys!158 (List!48114) Bool)

(assert (=> b!4302008 (= lt!1523695 (noDuplicateKeys!158 lt!1523692))))

(declare-fun lt!1523693 () (_ BitVec 64))

(declare-fun allKeysSameHash!128 (List!48114 (_ BitVec 64) Hashable!4467) Bool)

(assert (=> b!4302008 (allKeysSameHash!128 lt!1523692 lt!1523693 (hashF!6502 thiss!42308))))

(declare-datatypes ((Unit!66970 0))(
  ( (Unit!66971) )
))
(declare-fun lt!1523696 () Unit!66970)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!119 (List!48115 (_ BitVec 64) List!48114 Hashable!4467) Unit!66970)

(assert (=> b!4302008 (= lt!1523696 (lemmaInLongMapAllKeySameHashThenForTuple!119 (toList!2232 lt!1523697) lt!1523693 lt!1523692 (hashF!6502 thiss!42308)))))

(declare-fun b!4302009 () Bool)

(declare-fun e!2674361 () Bool)

(declare-fun lt!1523694 () MutLongMap!4551)

(get-info :version)

(assert (=> b!4302009 (= e!2674361 (and e!2674360 ((_ is LongMap!4551) lt!1523694)))))

(assert (=> b!4302009 (= lt!1523694 (v!41985 (underlying!9332 thiss!42308)))))

(declare-fun res!1763108 () Bool)

(assert (=> start!413138 (=> (not res!1763108) (not e!2674354))))

(assert (=> start!413138 (= res!1763108 ((_ is HashMap!4457) thiss!42308))))

(assert (=> start!413138 e!2674354))

(declare-fun e!2674358 () Bool)

(assert (=> start!413138 e!2674358))

(declare-fun tp_is_empty!23343 () Bool)

(assert (=> start!413138 tp_is_empty!23343))

(declare-fun tp_is_empty!23345 () Bool)

(assert (=> start!413138 tp_is_empty!23345))

(declare-fun b!4302002 () Bool)

(assert (=> b!4302002 (= e!2674355 e!2674353)))

(declare-fun res!1763107 () Bool)

(assert (=> b!4302002 (=> (not res!1763107) (not e!2674353))))

(declare-fun v!9179 () V!9326)

(declare-datatypes ((tuple2!46036 0))(
  ( (tuple2!46037 (_1!26297 Bool) (_2!26297 MutLongMap!4551)) )
))
(declare-fun update!349 (MutLongMap!4551 (_ BitVec 64) List!48114) tuple2!46036)

(declare-fun removePairForKey!152 (List!48114 K!9124) List!48114)

(assert (=> b!4302002 (= res!1763107 (_1!26297 (update!349 (v!41985 (underlying!9332 thiss!42308)) lt!1523693 (Cons!47990 (tuple2!46033 key!2048 v!9179) (removePairForKey!152 lt!1523692 key!2048)))))))

(declare-fun apply!10895 (MutLongMap!4551 (_ BitVec 64)) List!48114)

(assert (=> b!4302002 (= lt!1523692 (apply!10895 (v!41985 (underlying!9332 thiss!42308)) lt!1523693))))

(declare-fun hash!855 (Hashable!4467 K!9124) (_ BitVec 64))

(assert (=> b!4302002 (= lt!1523693 (hash!855 (hashF!6502 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20425 () Bool)

(assert (=> mapIsEmpty!20425 mapRes!20425))

(declare-fun tp!1321879 () Bool)

(declare-fun tp!1321880 () Bool)

(declare-fun array_inv!5227 (array!16326) Bool)

(declare-fun array_inv!5228 (array!16328) Bool)

(assert (=> b!4302010 (= e!2674356 (and tp!1321877 tp!1321879 tp!1321880 (array_inv!5227 (_keys!4851 (v!41984 (underlying!9331 (v!41985 (underlying!9332 thiss!42308)))))) (array_inv!5228 (_values!4832 (v!41984 (underlying!9331 (v!41985 (underlying!9332 thiss!42308)))))) e!2674357))))

(assert (=> b!4302011 (= e!2674358 (and e!2674361 tp!1321876))))

(declare-fun mapNonEmpty!20425 () Bool)

(declare-fun tp!1321875 () Bool)

(declare-fun tp!1321878 () Bool)

(assert (=> mapNonEmpty!20425 (= mapRes!20425 (and tp!1321875 tp!1321878))))

(declare-fun mapValue!20425 () List!48114)

(declare-fun mapKey!20425 () (_ BitVec 32))

(declare-fun mapRest!20425 () (Array (_ BitVec 32) List!48114))

(assert (=> mapNonEmpty!20425 (= (arr!7288 (_values!4832 (v!41984 (underlying!9331 (v!41985 (underlying!9332 thiss!42308)))))) (store mapRest!20425 mapKey!20425 mapValue!20425))))

(assert (= (and start!413138 res!1763108) b!4302004))

(assert (= (and b!4302004 res!1763106) b!4302003))

(assert (= (and b!4302003 res!1763109) b!4302002))

(assert (= (and b!4302002 res!1763107) b!4302008))

(assert (= (and b!4302006 condMapEmpty!20425) mapIsEmpty!20425))

(assert (= (and b!4302006 (not condMapEmpty!20425)) mapNonEmpty!20425))

(assert (= b!4302010 b!4302006))

(assert (= b!4302005 b!4302010))

(assert (= b!4302007 b!4302005))

(assert (= (and b!4302009 ((_ is LongMap!4551) (v!41985 (underlying!9332 thiss!42308)))) b!4302007))

(assert (= b!4302011 b!4302009))

(assert (= (and start!413138 ((_ is HashMap!4457) thiss!42308)) b!4302011))

(declare-fun m!4894085 () Bool)

(assert (=> b!4302004 m!4894085))

(declare-fun m!4894087 () Bool)

(assert (=> b!4302010 m!4894087))

(declare-fun m!4894089 () Bool)

(assert (=> b!4302010 m!4894089))

(declare-fun m!4894091 () Bool)

(assert (=> b!4302002 m!4894091))

(declare-fun m!4894093 () Bool)

(assert (=> b!4302002 m!4894093))

(declare-fun m!4894095 () Bool)

(assert (=> b!4302002 m!4894095))

(declare-fun m!4894097 () Bool)

(assert (=> b!4302002 m!4894097))

(declare-fun m!4894099 () Bool)

(assert (=> b!4302003 m!4894099))

(declare-fun m!4894101 () Bool)

(assert (=> b!4302003 m!4894101))

(declare-fun m!4894103 () Bool)

(assert (=> b!4302003 m!4894103))

(declare-fun m!4894105 () Bool)

(assert (=> b!4302008 m!4894105))

(declare-fun m!4894107 () Bool)

(assert (=> b!4302008 m!4894107))

(declare-fun m!4894109 () Bool)

(assert (=> b!4302008 m!4894109))

(declare-fun m!4894111 () Bool)

(assert (=> mapNonEmpty!20425 m!4894111))

(check-sat tp_is_empty!23343 (not b_next!128869) tp_is_empty!23345 (not mapNonEmpty!20425) b_and!339547 (not b_next!128867) (not b!4302008) (not b!4302003) (not b!4302010) (not b!4302002) b_and!339549 (not b!4302004) (not b!4302006))
(check-sat b_and!339547 b_and!339549 (not b_next!128869) (not b_next!128867))
