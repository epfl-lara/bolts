; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268402 () Bool)

(assert start!268402)

(declare-fun b!2774612 () Bool)

(declare-fun b_free!78373 () Bool)

(declare-fun b_next!79077 () Bool)

(assert (=> b!2774612 (= b_free!78373 (not b_next!79077))))

(declare-fun tp!878148 () Bool)

(declare-fun b_and!203111 () Bool)

(assert (=> b!2774612 (= tp!878148 b_and!203111)))

(declare-fun b!2774602 () Bool)

(declare-fun b_free!78375 () Bool)

(declare-fun b_next!79079 () Bool)

(assert (=> b!2774602 (= b_free!78375 (not b_next!79079))))

(declare-fun tp!878150 () Bool)

(declare-fun b_and!203113 () Bool)

(assert (=> b!2774602 (= tp!878150 b_and!203113)))

(declare-fun b!2774605 () Bool)

(declare-fun b_free!78377 () Bool)

(declare-fun b_next!79081 () Bool)

(assert (=> b!2774605 (= b_free!78377 (not b_next!79081))))

(declare-fun tp!878157 () Bool)

(declare-fun b_and!203115 () Bool)

(assert (=> b!2774605 (= tp!878157 b_and!203115)))

(declare-fun b!2774596 () Bool)

(declare-fun b_free!78379 () Bool)

(declare-fun b_next!79083 () Bool)

(assert (=> b!2774596 (= b_free!78379 (not b_next!79083))))

(declare-fun tp!878158 () Bool)

(declare-fun b_and!203117 () Bool)

(assert (=> b!2774596 (= tp!878158 b_and!203117)))

(declare-datatypes ((C!16360 0))(
  ( (C!16361 (val!10114 Int)) )
))
(declare-datatypes ((List!32164 0))(
  ( (Nil!32064) (Cons!32064 (h!37484 C!16360) (t!228292 List!32164)) )
))
(declare-fun lt!989123 () List!32164)

(declare-fun b!2774594 () Bool)

(declare-fun e!1749989 () Bool)

(declare-datatypes ((IArray!19963 0))(
  ( (IArray!19964 (innerList!10039 List!32164)) )
))
(declare-datatypes ((Conc!9979 0))(
  ( (Node!9979 (left!24415 Conc!9979) (right!24745 Conc!9979) (csize!20188 Int) (cheight!10190 Int)) (Leaf!15198 (xs!13089 IArray!19963) (csize!20189 Int)) (Empty!9979) )
))
(declare-datatypes ((BalanceConc!19572 0))(
  ( (BalanceConc!19573 (c!450411 Conc!9979)) )
))
(declare-fun input!5495 () BalanceConc!19572)

(declare-fun lt!989124 () Int)

(declare-datatypes ((Regex!8101 0))(
  ( (ElementMatch!8101 (c!450412 C!16360)) (Concat!13189 (regOne!16714 Regex!8101) (regTwo!16714 Regex!8101)) (EmptyExpr!8101) (Star!8101 (reg!8430 Regex!8101)) (EmptyLang!8101) (Union!8101 (regOne!16715 Regex!8101) (regTwo!16715 Regex!8101)) )
))
(declare-datatypes ((List!32165 0))(
  ( (Nil!32065) (Cons!32065 (h!37485 Regex!8101) (t!228293 List!32165)) )
))
(declare-datatypes ((Context!4638 0))(
  ( (Context!4639 (exprs!2819 List!32165)) )
))
(declare-datatypes ((tuple2!32272 0))(
  ( (tuple2!32273 (_1!19051 Context!4638) (_2!19051 C!16360)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32274 0))(
  ( (tuple2!32275 (_1!19052 tuple2!32272) (_2!19052 (InoxSet Context!4638))) )
))
(declare-datatypes ((List!32166 0))(
  ( (Nil!32066) (Cons!32066 (h!37486 tuple2!32274) (t!228294 List!32166)) )
))
(declare-datatypes ((Hashable!3725 0))(
  ( (HashableExt!3724 (__x!21077 Int)) )
))
(declare-datatypes ((array!13556 0))(
  ( (array!13557 (arr!6043 (Array (_ BitVec 32) List!32166)) (size!24855 (_ BitVec 32))) )
))
(declare-datatypes ((array!13558 0))(
  ( (array!13559 (arr!6044 (Array (_ BitVec 32) (_ BitVec 64))) (size!24856 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7618 0))(
  ( (LongMapFixedSize!7619 (defaultEntry!4194 Int) (mask!9596 (_ BitVec 32)) (extraKeys!4058 (_ BitVec 32)) (zeroValue!4068 List!32166) (minValue!4068 List!32166) (_size!7661 (_ BitVec 32)) (_keys!4109 array!13558) (_values!4090 array!13556) (_vacant!3870 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15045 0))(
  ( (Cell!15046 (v!33674 LongMapFixedSize!7618)) )
))
(declare-datatypes ((MutLongMap!3809 0))(
  ( (LongMap!3809 (underlying!7821 Cell!15045)) (MutLongMapExt!3808 (__x!21078 Int)) )
))
(declare-datatypes ((Cell!15047 0))(
  ( (Cell!15048 (v!33675 MutLongMap!3809)) )
))
(declare-datatypes ((MutableMap!3715 0))(
  ( (MutableMapExt!3714 (__x!21079 Int)) (HashMap!3715 (underlying!7822 Cell!15047) (hashF!5757 Hashable!3725) (_size!7662 (_ BitVec 32)) (defaultValue!3886 Int)) )
))
(declare-datatypes ((CacheUp!2420 0))(
  ( (CacheUp!2421 (cache!3858 MutableMap!3715)) )
))
(declare-datatypes ((tuple3!4890 0))(
  ( (tuple3!4891 (_1!19053 Regex!8101) (_2!19053 Context!4638) (_3!2915 C!16360)) )
))
(declare-datatypes ((tuple2!32276 0))(
  ( (tuple2!32277 (_1!19054 tuple3!4890) (_2!19054 (InoxSet Context!4638))) )
))
(declare-datatypes ((List!32167 0))(
  ( (Nil!32067) (Cons!32067 (h!37487 tuple2!32276) (t!228295 List!32167)) )
))
(declare-datatypes ((array!13560 0))(
  ( (array!13561 (arr!6045 (Array (_ BitVec 32) List!32167)) (size!24857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7620 0))(
  ( (LongMapFixedSize!7621 (defaultEntry!4195 Int) (mask!9597 (_ BitVec 32)) (extraKeys!4059 (_ BitVec 32)) (zeroValue!4069 List!32167) (minValue!4069 List!32167) (_size!7663 (_ BitVec 32)) (_keys!4110 array!13558) (_values!4091 array!13560) (_vacant!3871 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15049 0))(
  ( (Cell!15050 (v!33676 LongMapFixedSize!7620)) )
))
(declare-datatypes ((MutLongMap!3810 0))(
  ( (LongMap!3810 (underlying!7823 Cell!15049)) (MutLongMapExt!3809 (__x!21080 Int)) )
))
(declare-datatypes ((Cell!15051 0))(
  ( (Cell!15052 (v!33677 MutLongMap!3810)) )
))
(declare-datatypes ((Hashable!3726 0))(
  ( (HashableExt!3725 (__x!21081 Int)) )
))
(declare-datatypes ((MutableMap!3716 0))(
  ( (MutableMapExt!3715 (__x!21082 Int)) (HashMap!3716 (underlying!7824 Cell!15051) (hashF!5758 Hashable!3726) (_size!7664 (_ BitVec 32)) (defaultValue!3887 Int)) )
))
(declare-datatypes ((CacheDown!2542 0))(
  ( (CacheDown!2543 (cache!3859 MutableMap!3716)) )
))
(declare-datatypes ((tuple3!4892 0))(
  ( (tuple3!4893 (_1!19055 Int) (_2!19055 CacheUp!2420) (_3!2916 CacheDown!2542)) )
))
(declare-fun lt!989127 () tuple3!4892)

(declare-fun z!3597 () (InoxSet Context!4638))

(declare-fun findLongestMatchInnerZipperFast!50 ((InoxSet Context!4638) List!32164 Int List!32164 BalanceConc!19572 Int) Int)

(assert (=> b!2774594 (= e!1749989 (= (_1!19055 lt!989127) (findLongestMatchInnerZipperFast!50 z!3597 Nil!32064 0 lt!989123 input!5495 lt!989124)))))

(declare-fun b!2774595 () Bool)

(declare-fun e!1750002 () Bool)

(declare-fun tp!878144 () Bool)

(declare-fun mapRes!17366 () Bool)

(assert (=> b!2774595 (= e!1750002 (and tp!878144 mapRes!17366))))

(declare-fun condMapEmpty!17365 () Bool)

(declare-fun cacheUp!820 () CacheUp!2420)

(declare-fun mapDefault!17366 () List!32166)

(assert (=> b!2774595 (= condMapEmpty!17365 (= (arr!6043 (_values!4090 (v!33674 (underlying!7821 (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32166)) mapDefault!17366)))))

(declare-fun e!1750001 () Bool)

(declare-fun e!1749998 () Bool)

(declare-fun cacheDown!939 () CacheDown!2542)

(declare-fun tp!878156 () Bool)

(declare-fun tp!878147 () Bool)

(declare-fun array_inv!4320 (array!13558) Bool)

(declare-fun array_inv!4321 (array!13560) Bool)

(assert (=> b!2774596 (= e!1749998 (and tp!878158 tp!878147 tp!878156 (array_inv!4320 (_keys!4110 (v!33676 (underlying!7823 (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))))) (array_inv!4321 (_values!4091 (v!33676 (underlying!7823 (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))))) e!1750001))))

(declare-fun b!2774597 () Bool)

(declare-fun e!1749995 () Bool)

(declare-fun e!1750007 () Bool)

(declare-fun lt!989126 () MutLongMap!3810)

(get-info :version)

(assert (=> b!2774597 (= e!1749995 (and e!1750007 ((_ is LongMap!3810) lt!989126)))))

(assert (=> b!2774597 (= lt!989126 (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))))

(declare-fun b!2774598 () Bool)

(declare-fun e!1749994 () Bool)

(declare-fun e!1749988 () Bool)

(assert (=> b!2774598 (= e!1749994 e!1749988)))

(declare-fun b!2774599 () Bool)

(declare-fun res!1159544 () Bool)

(declare-fun e!1749993 () Bool)

(assert (=> b!2774599 (=> res!1159544 e!1749993)))

(declare-fun size!24858 (List!32164) Int)

(assert (=> b!2774599 (= res!1159544 (not (= 0 (size!24858 Nil!32064))))))

(declare-fun b!2774600 () Bool)

(declare-fun e!1750003 () Bool)

(declare-fun e!1750000 () Bool)

(assert (=> b!2774600 (= e!1750003 e!1750000)))

(declare-fun b!2774601 () Bool)

(declare-fun valid!2972 (CacheDown!2542) Bool)

(assert (=> b!2774601 (= e!1749993 (valid!2972 (_3!2916 lt!989127)))))

(declare-fun mapIsEmpty!17365 () Bool)

(assert (=> mapIsEmpty!17365 mapRes!17366))

(declare-fun tp!878149 () Bool)

(declare-fun e!1750004 () Bool)

(declare-fun tp!878151 () Bool)

(declare-fun array_inv!4322 (array!13556) Bool)

(assert (=> b!2774602 (= e!1750004 (and tp!878150 tp!878149 tp!878151 (array_inv!4320 (_keys!4109 (v!33674 (underlying!7821 (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))))) (array_inv!4322 (_values!4090 (v!33674 (underlying!7821 (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))))) e!1750002))))

(declare-fun b!2774604 () Bool)

(declare-fun e!1750009 () Bool)

(assert (=> b!2774604 (= e!1750009 e!1749998)))

(declare-fun e!1749992 () Bool)

(assert (=> b!2774605 (= e!1749992 (and e!1749995 tp!878157))))

(declare-fun b!2774606 () Bool)

(declare-fun e!1749997 () Bool)

(assert (=> b!2774606 (= e!1749997 e!1749992)))

(declare-fun b!2774607 () Bool)

(declare-fun e!1750008 () Bool)

(declare-fun lt!989129 () tuple3!4892)

(assert (=> b!2774607 (= e!1750008 (= (_1!19055 lt!989129) (findLongestMatchInnerZipperFast!50 z!3597 Nil!32064 0 lt!989123 input!5495 lt!989124)))))

(declare-fun b!2774608 () Bool)

(declare-fun e!1749999 () Bool)

(assert (=> b!2774608 (= e!1749999 (not e!1749993))))

(declare-fun res!1159537 () Bool)

(assert (=> b!2774608 (=> res!1159537 e!1749993)))

(declare-fun ++!7930 (List!32164 List!32164) List!32164)

(assert (=> b!2774608 (= res!1159537 (not (= (++!7930 Nil!32064 lt!989123) lt!989123)))))

(assert (=> b!2774608 e!1750008))

(declare-fun res!1159538 () Bool)

(assert (=> b!2774608 (=> (not res!1159538) (not e!1750008))))

(declare-fun valid!2973 (CacheUp!2420) Bool)

(assert (=> b!2774608 (= res!1159538 (valid!2973 (_2!19055 lt!989129)))))

(declare-fun findLongestMatchInnerZipperFastMem!43 (CacheUp!2420 CacheDown!2542 (InoxSet Context!4638) List!32164 Int List!32164 BalanceConc!19572 Int) tuple3!4892)

(assert (=> b!2774608 (= lt!989129 (findLongestMatchInnerZipperFastMem!43 (_2!19055 lt!989127) (_3!2916 lt!989127) z!3597 Nil!32064 0 lt!989123 input!5495 lt!989124))))

(assert (=> b!2774608 e!1749989))

(declare-fun res!1159539 () Bool)

(assert (=> b!2774608 (=> (not res!1159539) (not e!1749989))))

(declare-fun lt!989125 () Bool)

(assert (=> b!2774608 (= res!1159539 (not lt!989125))))

(assert (=> b!2774608 (= lt!989125 (not (valid!2973 (_2!19055 lt!989127))))))

(assert (=> b!2774608 (= lt!989127 (findLongestMatchInnerZipperFastMem!43 cacheUp!820 cacheDown!939 z!3597 Nil!32064 0 lt!989123 input!5495 lt!989124))))

(declare-fun size!24859 (BalanceConc!19572) Int)

(assert (=> b!2774608 (= lt!989124 (size!24859 input!5495))))

(declare-fun list!12094 (BalanceConc!19572) List!32164)

(assert (=> b!2774608 (= lt!989123 (list!12094 input!5495))))

(declare-fun mapIsEmpty!17366 () Bool)

(declare-fun mapRes!17365 () Bool)

(assert (=> mapIsEmpty!17366 mapRes!17365))

(declare-fun setIsEmpty!23022 () Bool)

(declare-fun setRes!23022 () Bool)

(assert (=> setIsEmpty!23022 setRes!23022))

(declare-fun mapNonEmpty!17365 () Bool)

(declare-fun tp!878153 () Bool)

(declare-fun tp!878152 () Bool)

(assert (=> mapNonEmpty!17365 (= mapRes!17365 (and tp!878153 tp!878152))))

(declare-fun mapKey!17365 () (_ BitVec 32))

(declare-fun mapRest!17365 () (Array (_ BitVec 32) List!32167))

(declare-fun mapValue!17366 () List!32167)

(assert (=> mapNonEmpty!17365 (= (arr!6045 (_values!4091 (v!33676 (underlying!7823 (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))))) (store mapRest!17365 mapKey!17365 mapValue!17366))))

(declare-fun b!2774609 () Bool)

(declare-fun e!1750005 () Bool)

(declare-fun tp!878146 () Bool)

(declare-fun inv!43547 (Conc!9979) Bool)

(assert (=> b!2774609 (= e!1750005 (and (inv!43547 (c!450411 input!5495)) tp!878146))))

(declare-fun b!2774610 () Bool)

(declare-fun tp!878155 () Bool)

(assert (=> b!2774610 (= e!1750001 (and tp!878155 mapRes!17365))))

(declare-fun condMapEmpty!17366 () Bool)

(declare-fun mapDefault!17365 () List!32167)

(assert (=> b!2774610 (= condMapEmpty!17366 (= (arr!6045 (_values!4091 (v!33676 (underlying!7823 (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32167)) mapDefault!17365)))))

(declare-fun b!2774611 () Bool)

(declare-fun res!1159540 () Bool)

(assert (=> b!2774611 (=> res!1159540 e!1749993)))

(assert (=> b!2774611 (= res!1159540 lt!989125)))

(declare-fun e!1749996 () Bool)

(assert (=> b!2774612 (= e!1749988 (and e!1749996 tp!878148))))

(declare-fun tp!878154 () Bool)

(declare-fun setElem!23022 () Context!4638)

(declare-fun setNonEmpty!23022 () Bool)

(declare-fun e!1750006 () Bool)

(declare-fun inv!43548 (Context!4638) Bool)

(assert (=> setNonEmpty!23022 (= setRes!23022 (and tp!878154 (inv!43548 setElem!23022) e!1750006))))

(declare-fun setRest!23022 () (InoxSet Context!4638))

(assert (=> setNonEmpty!23022 (= z!3597 ((_ map or) (store ((as const (Array Context!4638 Bool)) false) setElem!23022 true) setRest!23022))))

(declare-fun mapNonEmpty!17366 () Bool)

(declare-fun tp!878159 () Bool)

(declare-fun tp!878160 () Bool)

(assert (=> mapNonEmpty!17366 (= mapRes!17366 (and tp!878159 tp!878160))))

(declare-fun mapKey!17366 () (_ BitVec 32))

(declare-fun mapRest!17366 () (Array (_ BitVec 32) List!32166))

(declare-fun mapValue!17365 () List!32166)

(assert (=> mapNonEmpty!17366 (= (arr!6043 (_values!4090 (v!33674 (underlying!7821 (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))))) (store mapRest!17366 mapKey!17366 mapValue!17365))))

(declare-fun b!2774613 () Bool)

(assert (=> b!2774613 (= e!1750007 e!1750009)))

(declare-fun b!2774614 () Bool)

(declare-fun res!1159543 () Bool)

(assert (=> b!2774614 (=> (not res!1159543) (not e!1749989))))

(assert (=> b!2774614 (= res!1159543 (valid!2972 (_3!2916 lt!989127)))))

(declare-fun b!2774615 () Bool)

(declare-fun res!1159545 () Bool)

(assert (=> b!2774615 (=> (not res!1159545) (not e!1749999))))

(assert (=> b!2774615 (= res!1159545 (valid!2972 cacheDown!939))))

(declare-fun b!2774616 () Bool)

(declare-fun tp!878145 () Bool)

(assert (=> b!2774616 (= e!1750006 tp!878145)))

(declare-fun b!2774617 () Bool)

(assert (=> b!2774617 (= e!1750000 e!1750004)))

(declare-fun b!2774618 () Bool)

(declare-fun res!1159541 () Bool)

(assert (=> b!2774618 (=> (not res!1159541) (not e!1750008))))

(assert (=> b!2774618 (= res!1159541 (valid!2972 (_3!2916 lt!989129)))))

(declare-fun res!1159542 () Bool)

(assert (=> start!268402 (=> (not res!1159542) (not e!1749999))))

(assert (=> start!268402 (= res!1159542 (valid!2973 cacheUp!820))))

(assert (=> start!268402 e!1749999))

(declare-fun inv!43549 (CacheUp!2420) Bool)

(assert (=> start!268402 (and (inv!43549 cacheUp!820) e!1749994)))

(declare-fun inv!43550 (CacheDown!2542) Bool)

(assert (=> start!268402 (and (inv!43550 cacheDown!939) e!1749997)))

(declare-fun condSetEmpty!23022 () Bool)

(assert (=> start!268402 (= condSetEmpty!23022 (= z!3597 ((as const (Array Context!4638 Bool)) false)))))

(assert (=> start!268402 setRes!23022))

(declare-fun inv!43551 (BalanceConc!19572) Bool)

(assert (=> start!268402 (and (inv!43551 input!5495) e!1750005)))

(declare-fun b!2774603 () Bool)

(declare-fun lt!989128 () MutLongMap!3809)

(assert (=> b!2774603 (= e!1749996 (and e!1750003 ((_ is LongMap!3809) lt!989128)))))

(assert (=> b!2774603 (= lt!989128 (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))))

(assert (= (and start!268402 res!1159542) b!2774615))

(assert (= (and b!2774615 res!1159545) b!2774608))

(assert (= (and b!2774608 res!1159539) b!2774614))

(assert (= (and b!2774614 res!1159543) b!2774594))

(assert (= (and b!2774608 res!1159538) b!2774618))

(assert (= (and b!2774618 res!1159541) b!2774607))

(assert (= (and b!2774608 (not res!1159537)) b!2774599))

(assert (= (and b!2774599 (not res!1159544)) b!2774611))

(assert (= (and b!2774611 (not res!1159540)) b!2774601))

(assert (= (and b!2774595 condMapEmpty!17365) mapIsEmpty!17365))

(assert (= (and b!2774595 (not condMapEmpty!17365)) mapNonEmpty!17366))

(assert (= b!2774602 b!2774595))

(assert (= b!2774617 b!2774602))

(assert (= b!2774600 b!2774617))

(assert (= (and b!2774603 ((_ is LongMap!3809) (v!33675 (underlying!7822 (cache!3858 cacheUp!820))))) b!2774600))

(assert (= b!2774612 b!2774603))

(assert (= (and b!2774598 ((_ is HashMap!3715) (cache!3858 cacheUp!820))) b!2774612))

(assert (= start!268402 b!2774598))

(assert (= (and b!2774610 condMapEmpty!17366) mapIsEmpty!17366))

(assert (= (and b!2774610 (not condMapEmpty!17366)) mapNonEmpty!17365))

(assert (= b!2774596 b!2774610))

(assert (= b!2774604 b!2774596))

(assert (= b!2774613 b!2774604))

(assert (= (and b!2774597 ((_ is LongMap!3810) (v!33677 (underlying!7824 (cache!3859 cacheDown!939))))) b!2774613))

(assert (= b!2774605 b!2774597))

(assert (= (and b!2774606 ((_ is HashMap!3716) (cache!3859 cacheDown!939))) b!2774605))

(assert (= start!268402 b!2774606))

(assert (= (and start!268402 condSetEmpty!23022) setIsEmpty!23022))

(assert (= (and start!268402 (not condSetEmpty!23022)) setNonEmpty!23022))

(assert (= setNonEmpty!23022 b!2774616))

(assert (= start!268402 b!2774609))

(declare-fun m!3201105 () Bool)

(assert (=> b!2774596 m!3201105))

(declare-fun m!3201107 () Bool)

(assert (=> b!2774596 m!3201107))

(declare-fun m!3201109 () Bool)

(assert (=> b!2774614 m!3201109))

(declare-fun m!3201111 () Bool)

(assert (=> b!2774609 m!3201111))

(assert (=> b!2774601 m!3201109))

(declare-fun m!3201113 () Bool)

(assert (=> mapNonEmpty!17366 m!3201113))

(declare-fun m!3201115 () Bool)

(assert (=> b!2774594 m!3201115))

(declare-fun m!3201117 () Bool)

(assert (=> mapNonEmpty!17365 m!3201117))

(declare-fun m!3201119 () Bool)

(assert (=> b!2774608 m!3201119))

(declare-fun m!3201121 () Bool)

(assert (=> b!2774608 m!3201121))

(declare-fun m!3201123 () Bool)

(assert (=> b!2774608 m!3201123))

(declare-fun m!3201125 () Bool)

(assert (=> b!2774608 m!3201125))

(declare-fun m!3201127 () Bool)

(assert (=> b!2774608 m!3201127))

(declare-fun m!3201129 () Bool)

(assert (=> b!2774608 m!3201129))

(declare-fun m!3201131 () Bool)

(assert (=> b!2774608 m!3201131))

(declare-fun m!3201133 () Bool)

(assert (=> b!2774615 m!3201133))

(declare-fun m!3201135 () Bool)

(assert (=> b!2774602 m!3201135))

(declare-fun m!3201137 () Bool)

(assert (=> b!2774602 m!3201137))

(declare-fun m!3201139 () Bool)

(assert (=> b!2774599 m!3201139))

(declare-fun m!3201141 () Bool)

(assert (=> setNonEmpty!23022 m!3201141))

(declare-fun m!3201143 () Bool)

(assert (=> start!268402 m!3201143))

(declare-fun m!3201145 () Bool)

(assert (=> start!268402 m!3201145))

(declare-fun m!3201147 () Bool)

(assert (=> start!268402 m!3201147))

(declare-fun m!3201149 () Bool)

(assert (=> start!268402 m!3201149))

(declare-fun m!3201151 () Bool)

(assert (=> b!2774618 m!3201151))

(assert (=> b!2774607 m!3201115))

(check-sat b_and!203115 (not b!2774614) (not b!2774618) (not b_next!79081) (not b!2774616) (not b_next!79083) (not b!2774602) b_and!203113 (not b!2774596) (not setNonEmpty!23022) (not b_next!79079) (not b!2774610) (not b!2774615) b_and!203111 b_and!203117 (not b!2774609) (not start!268402) (not b_next!79077) (not b!2774601) (not b!2774594) (not b!2774599) (not b!2774607) (not b!2774595) (not mapNonEmpty!17365) (not b!2774608) (not mapNonEmpty!17366))
(check-sat b_and!203115 (not b_next!79081) (not b_next!79083) (not b_next!79077) b_and!203113 (not b_next!79079) b_and!203111 b_and!203117)
