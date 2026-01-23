; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487256 () Bool)

(assert start!487256)

(declare-fun b!4764249 () Bool)

(declare-fun b_free!129507 () Bool)

(declare-fun b_next!130297 () Bool)

(assert (=> b!4764249 (= b_free!129507 (not b_next!130297))))

(declare-fun tp!1354621 () Bool)

(declare-fun b_and!341195 () Bool)

(assert (=> b!4764249 (= tp!1354621 b_and!341195)))

(declare-fun b!4764252 () Bool)

(declare-fun b_free!129509 () Bool)

(declare-fun b_next!130299 () Bool)

(assert (=> b!4764252 (= b_free!129509 (not b_next!130299))))

(declare-fun tp!1354618 () Bool)

(declare-fun b_and!341197 () Bool)

(assert (=> b!4764252 (= tp!1354618 b_and!341197)))

(declare-fun tp!1354619 () Bool)

(declare-fun e!2973430 () Bool)

(declare-fun tp!1354623 () Bool)

(declare-fun e!2973431 () Bool)

(declare-datatypes ((K!14869 0))(
  ( (K!14870 (val!20201 Int)) )
))
(declare-datatypes ((V!15115 0))(
  ( (V!15116 (val!20202 Int)) )
))
(declare-datatypes ((tuple2!55406 0))(
  ( (tuple2!55407 (_1!30997 K!14869) (_2!30997 V!15115)) )
))
(declare-datatypes ((array!17862 0))(
  ( (array!17863 (arr!7967 (Array (_ BitVec 32) (_ BitVec 64))) (size!36197 (_ BitVec 32))) )
))
(declare-datatypes ((List!53547 0))(
  ( (Nil!53423) (Cons!53423 (h!59835 tuple2!55406) (t!360949 List!53547)) )
))
(declare-datatypes ((array!17864 0))(
  ( (array!17865 (arr!7968 (Array (_ BitVec 32) List!53547)) (size!36198 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6552 0))(
  ( (HashableExt!6551 (__x!32421 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9782 0))(
  ( (LongMapFixedSize!9783 (defaultEntry!5309 Int) (mask!14632 (_ BitVec 32)) (extraKeys!5166 (_ BitVec 32)) (zeroValue!5179 List!53547) (minValue!5179 List!53547) (_size!9807 (_ BitVec 32)) (_keys!5233 array!17862) (_values!5204 array!17864) (_vacant!4956 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19329 0))(
  ( (Cell!19330 (v!47509 LongMapFixedSize!9782)) )
))
(declare-datatypes ((MutLongMap!4891 0))(
  ( (LongMap!4891 (underlying!9989 Cell!19329)) (MutLongMapExt!4890 (__x!32422 Int)) )
))
(declare-datatypes ((Cell!19331 0))(
  ( (Cell!19332 (v!47510 MutLongMap!4891)) )
))
(declare-datatypes ((MutableMap!4775 0))(
  ( (MutableMapExt!4774 (__x!32423 Int)) (HashMap!4775 (underlying!9990 Cell!19331) (hashF!12377 Hashable!6552) (_size!9808 (_ BitVec 32)) (defaultValue!4946 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4775)

(declare-fun array_inv!5729 (array!17862) Bool)

(declare-fun array_inv!5730 (array!17864) Bool)

(assert (=> b!4764249 (= e!2973430 (and tp!1354621 tp!1354623 tp!1354619 (array_inv!5729 (_keys!5233 (v!47509 (underlying!9989 (v!47510 (underlying!9990 thiss!42052)))))) (array_inv!5730 (_values!5204 (v!47509 (underlying!9989 (v!47510 (underlying!9990 thiss!42052)))))) e!2973431))))

(declare-fun res!2020687 () Bool)

(declare-fun e!2973425 () Bool)

(assert (=> start!487256 (=> (not res!2020687) (not e!2973425))))

(get-info :version)

(assert (=> start!487256 (= res!2020687 ((_ is HashMap!4775) thiss!42052))))

(assert (=> start!487256 e!2973425))

(declare-fun e!2973424 () Bool)

(assert (=> start!487256 e!2973424))

(declare-fun tp_is_empty!32357 () Bool)

(assert (=> start!487256 tp_is_empty!32357))

(declare-fun b!4764250 () Bool)

(declare-fun e!2973426 () Bool)

(assert (=> b!4764250 (= e!2973426 e!2973430)))

(declare-fun mapIsEmpty!21725 () Bool)

(declare-fun mapRes!21725 () Bool)

(assert (=> mapIsEmpty!21725 mapRes!21725))

(declare-fun b!4764251 () Bool)

(declare-fun res!2020686 () Bool)

(assert (=> b!4764251 (=> (not res!2020686) (not e!2973425))))

(declare-fun key!1776 () K!14869)

(declare-fun contains!16737 (MutableMap!4775 K!14869) Bool)

(assert (=> b!4764251 (= res!2020686 (contains!16737 thiss!42052 key!1776))))

(declare-fun mapNonEmpty!21725 () Bool)

(declare-fun tp!1354622 () Bool)

(declare-fun tp!1354617 () Bool)

(assert (=> mapNonEmpty!21725 (= mapRes!21725 (and tp!1354622 tp!1354617))))

(declare-fun mapKey!21725 () (_ BitVec 32))

(declare-fun mapValue!21725 () List!53547)

(declare-fun mapRest!21725 () (Array (_ BitVec 32) List!53547))

(assert (=> mapNonEmpty!21725 (= (arr!7968 (_values!5204 (v!47509 (underlying!9989 (v!47510 (underlying!9990 thiss!42052)))))) (store mapRest!21725 mapKey!21725 mapValue!21725))))

(declare-fun e!2973429 () Bool)

(assert (=> b!4764252 (= e!2973424 (and e!2973429 tp!1354618))))

(declare-fun b!4764253 () Bool)

(declare-fun e!2973428 () Bool)

(assert (=> b!4764253 (= e!2973428 (not ((_ is LongMap!4891) (v!47510 (underlying!9990 thiss!42052)))))))

(declare-datatypes ((tuple2!55408 0))(
  ( (tuple2!55409 (_1!30998 (_ BitVec 64)) (_2!30998 List!53547)) )
))
(declare-datatypes ((List!53548 0))(
  ( (Nil!53424) (Cons!53424 (h!59836 tuple2!55408) (t!360950 List!53548)) )
))
(declare-datatypes ((ListLongMap!4635 0))(
  ( (ListLongMap!4636 (toList!6246 List!53548)) )
))
(declare-fun lt!1927205 () ListLongMap!4635)

(declare-fun lt!1927203 () (_ BitVec 64))

(declare-datatypes ((Option!12626 0))(
  ( (None!12625) (Some!12625 (v!47511 List!53547)) )
))
(declare-fun isDefined!9799 (Option!12626) Bool)

(declare-fun getValueByKey!2151 (List!53548 (_ BitVec 64)) Option!12626)

(assert (=> b!4764253 (isDefined!9799 (getValueByKey!2151 (toList!6246 lt!1927205) lt!1927203))))

(declare-datatypes ((Unit!138085 0))(
  ( (Unit!138086) )
))
(declare-fun lt!1927202 () Unit!138085)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1965 (List!53548 (_ BitVec 64)) Unit!138085)

(assert (=> b!4764253 (= lt!1927202 (lemmaContainsKeyImpliesGetValueByKeyDefined!1965 (toList!6246 lt!1927205) lt!1927203))))

(declare-fun b!4764254 () Bool)

(declare-fun tp!1354620 () Bool)

(assert (=> b!4764254 (= e!2973431 (and tp!1354620 mapRes!21725))))

(declare-fun condMapEmpty!21725 () Bool)

(declare-fun mapDefault!21725 () List!53547)

(assert (=> b!4764254 (= condMapEmpty!21725 (= (arr!7968 (_values!5204 (v!47509 (underlying!9989 (v!47510 (underlying!9990 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53547)) mapDefault!21725)))))

(declare-fun b!4764255 () Bool)

(declare-fun e!2973432 () Bool)

(assert (=> b!4764255 (= e!2973432 e!2973426)))

(declare-fun b!4764256 () Bool)

(declare-fun res!2020684 () Bool)

(assert (=> b!4764256 (=> (not res!2020684) (not e!2973425))))

(declare-fun valid!3888 (MutableMap!4775) Bool)

(assert (=> b!4764256 (= res!2020684 (valid!3888 thiss!42052))))

(declare-fun b!4764257 () Bool)

(declare-fun lt!1927204 () MutLongMap!4891)

(assert (=> b!4764257 (= e!2973429 (and e!2973432 ((_ is LongMap!4891) lt!1927204)))))

(assert (=> b!4764257 (= lt!1927204 (v!47510 (underlying!9990 thiss!42052)))))

(declare-fun b!4764258 () Bool)

(assert (=> b!4764258 (= e!2973425 e!2973428)))

(declare-fun res!2020685 () Bool)

(assert (=> b!4764258 (=> (not res!2020685) (not e!2973428))))

(declare-fun contains!16738 (List!53548 tuple2!55408) Bool)

(declare-fun apply!12575 (MutLongMap!4891 (_ BitVec 64)) List!53547)

(assert (=> b!4764258 (= res!2020685 (not (contains!16738 (toList!6246 lt!1927205) (tuple2!55409 lt!1927203 (apply!12575 (v!47510 (underlying!9990 thiss!42052)) lt!1927203)))))))

(declare-fun map!11924 (MutLongMap!4891) ListLongMap!4635)

(assert (=> b!4764258 (= lt!1927205 (map!11924 (v!47510 (underlying!9990 thiss!42052))))))

(declare-fun hash!4535 (Hashable!6552 K!14869) (_ BitVec 64))

(assert (=> b!4764258 (= lt!1927203 (hash!4535 (hashF!12377 thiss!42052) key!1776))))

(assert (= (and start!487256 res!2020687) b!4764256))

(assert (= (and b!4764256 res!2020684) b!4764251))

(assert (= (and b!4764251 res!2020686) b!4764258))

(assert (= (and b!4764258 res!2020685) b!4764253))

(assert (= (and b!4764254 condMapEmpty!21725) mapIsEmpty!21725))

(assert (= (and b!4764254 (not condMapEmpty!21725)) mapNonEmpty!21725))

(assert (= b!4764249 b!4764254))

(assert (= b!4764250 b!4764249))

(assert (= b!4764255 b!4764250))

(assert (= (and b!4764257 ((_ is LongMap!4891) (v!47510 (underlying!9990 thiss!42052)))) b!4764255))

(assert (= b!4764252 b!4764257))

(assert (= (and start!487256 ((_ is HashMap!4775) thiss!42052)) b!4764252))

(declare-fun m!5734780 () Bool)

(assert (=> mapNonEmpty!21725 m!5734780))

(declare-fun m!5734782 () Bool)

(assert (=> b!4764256 m!5734782))

(declare-fun m!5734784 () Bool)

(assert (=> b!4764251 m!5734784))

(declare-fun m!5734786 () Bool)

(assert (=> b!4764249 m!5734786))

(declare-fun m!5734788 () Bool)

(assert (=> b!4764249 m!5734788))

(declare-fun m!5734790 () Bool)

(assert (=> b!4764258 m!5734790))

(declare-fun m!5734792 () Bool)

(assert (=> b!4764258 m!5734792))

(declare-fun m!5734794 () Bool)

(assert (=> b!4764258 m!5734794))

(declare-fun m!5734796 () Bool)

(assert (=> b!4764258 m!5734796))

(declare-fun m!5734798 () Bool)

(assert (=> b!4764253 m!5734798))

(assert (=> b!4764253 m!5734798))

(declare-fun m!5734800 () Bool)

(assert (=> b!4764253 m!5734800))

(declare-fun m!5734802 () Bool)

(assert (=> b!4764253 m!5734802))

(check-sat b_and!341197 (not b_next!130297) (not mapNonEmpty!21725) (not b!4764254) b_and!341195 tp_is_empty!32357 (not b!4764258) (not b!4764251) (not b!4764256) (not b_next!130299) (not b!4764249) (not b!4764253))
(check-sat b_and!341197 b_and!341195 (not b_next!130299) (not b_next!130297))
