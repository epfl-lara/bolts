; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486828 () Bool)

(assert start!486828)

(declare-fun b!4760443 () Bool)

(declare-fun b_free!129343 () Bool)

(declare-fun b_next!130047 () Bool)

(assert (=> b!4760443 (= b_free!129343 (not b_next!130047))))

(declare-fun tp!1353399 () Bool)

(declare-fun b_and!340967 () Bool)

(assert (=> b!4760443 (= tp!1353399 b_and!340967)))

(declare-fun b!4760439 () Bool)

(declare-fun b_free!129345 () Bool)

(declare-fun b_next!130049 () Bool)

(assert (=> b!4760439 (= b_free!129345 (not b_next!130049))))

(declare-fun tp!1353405 () Bool)

(declare-fun b_and!340969 () Bool)

(assert (=> b!4760439 (= tp!1353405 b_and!340969)))

(declare-fun mapNonEmpty!21593 () Bool)

(declare-fun mapRes!21593 () Bool)

(declare-fun tp!1353402 () Bool)

(declare-fun tp!1353404 () Bool)

(assert (=> mapNonEmpty!21593 (= mapRes!21593 (and tp!1353402 tp!1353404))))

(declare-datatypes ((C!26308 0))(
  ( (C!26309 (val!20142 Int)) )
))
(declare-datatypes ((Regex!13055 0))(
  ( (ElementMatch!13055 (c!812119 C!26308)) (Concat!21374 (regOne!26622 Regex!13055) (regTwo!26622 Regex!13055)) (EmptyExpr!13055) (Star!13055 (reg!13384 Regex!13055)) (EmptyLang!13055) (Union!13055 (regOne!26623 Regex!13055) (regTwo!26623 Regex!13055)) )
))
(declare-datatypes ((List!53479 0))(
  ( (Nil!53355) (Cons!53355 (h!59766 Regex!13055) (t!360839 List!53479)) )
))
(declare-datatypes ((Context!5890 0))(
  ( (Context!5891 (exprs!3445 List!53479)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55292 0))(
  ( (tuple2!55293 (_1!30940 (InoxSet Context!5890)) (_2!30940 Int)) )
))
(declare-datatypes ((tuple2!55294 0))(
  ( (tuple2!55295 (_1!30941 tuple2!55292) (_2!30941 Int)) )
))
(declare-datatypes ((List!53480 0))(
  ( (Nil!53356) (Cons!53356 (h!59767 tuple2!55294) (t!360840 List!53480)) )
))
(declare-datatypes ((List!53481 0))(
  ( (Nil!53357) (Cons!53357 (h!59768 C!26308) (t!360841 List!53481)) )
))
(declare-datatypes ((IArray!29053 0))(
  ( (IArray!29054 (innerList!14584 List!53481)) )
))
(declare-datatypes ((Conc!14496 0))(
  ( (Node!14496 (left!39137 Conc!14496) (right!39467 Conc!14496) (csize!29222 Int) (cheight!14707 Int)) (Leaf!23596 (xs!17802 IArray!29053) (csize!29223 Int)) (Empty!14496) )
))
(declare-datatypes ((Hashable!6518 0))(
  ( (HashableExt!6517 (__x!32319 Int)) )
))
(declare-datatypes ((array!17708 0))(
  ( (array!17709 (arr!7899 (Array (_ BitVec 32) (_ BitVec 64))) (size!36122 (_ BitVec 32))) )
))
(declare-datatypes ((array!17710 0))(
  ( (array!17711 (arr!7900 (Array (_ BitVec 32) List!53480)) (size!36123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9714 0))(
  ( (LongMapFixedSize!9715 (defaultEntry!5271 Int) (mask!14571 (_ BitVec 32)) (extraKeys!5127 (_ BitVec 32)) (zeroValue!5140 List!53480) (minValue!5140 List!53480) (_size!9739 (_ BitVec 32)) (_keys!5192 array!17708) (_values!5165 array!17710) (_vacant!4922 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19193 0))(
  ( (Cell!19194 (v!47404 LongMapFixedSize!9714)) )
))
(declare-datatypes ((MutLongMap!4857 0))(
  ( (LongMap!4857 (underlying!9921 Cell!19193)) (MutLongMapExt!4856 (__x!32320 Int)) )
))
(declare-datatypes ((Cell!19195 0))(
  ( (Cell!19196 (v!47405 MutLongMap!4857)) )
))
(declare-datatypes ((MutableMap!4741 0))(
  ( (MutableMapExt!4740 (__x!32321 Int)) (HashMap!4741 (underlying!9922 Cell!19195) (hashF!12328 Hashable!6518) (_size!9740 (_ BitVec 32)) (defaultValue!4912 Int)) )
))
(declare-datatypes ((BalanceConc!28482 0))(
  ( (BalanceConc!28483 (c!812120 Conc!14496)) )
))
(declare-datatypes ((CacheFindLongestMatch!680 0))(
  ( (CacheFindLongestMatch!681 (cache!4583 MutableMap!4741) (totalInput!4506 BalanceConc!28482)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!680)

(declare-fun mapKey!21593 () (_ BitVec 32))

(declare-fun mapRest!21593 () (Array (_ BitVec 32) List!53480))

(declare-fun mapValue!21593 () List!53480)

(assert (=> mapNonEmpty!21593 (= (arr!7900 (_values!5165 (v!47404 (underlying!9921 (v!47405 (underlying!9922 (cache!4583 thiss!28909))))))) (store mapRest!21593 mapKey!21593 mapValue!21593))))

(declare-fun b!4760437 () Bool)

(declare-fun res!2019103 () Bool)

(declare-fun e!2970563 () Bool)

(assert (=> b!4760437 (=> (not res!2019103) (not e!2970563))))

(declare-fun validCacheMapFindLongestMatch!137 (MutableMap!4741 BalanceConc!28482) Bool)

(assert (=> b!4760437 (= res!2019103 (validCacheMapFindLongestMatch!137 (cache!4583 thiss!28909) (totalInput!4506 thiss!28909)))))

(declare-fun b!4760438 () Bool)

(declare-fun e!2970559 () Bool)

(declare-fun tp!1353407 () Bool)

(assert (=> b!4760438 (= e!2970559 (and tp!1353407 mapRes!21593))))

(declare-fun condMapEmpty!21593 () Bool)

(declare-fun mapDefault!21593 () List!53480)

(assert (=> b!4760438 (= condMapEmpty!21593 (= (arr!7900 (_values!5165 (v!47404 (underlying!9921 (v!47405 (underlying!9922 (cache!4583 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53480)) mapDefault!21593)))))

(declare-fun e!2970558 () Bool)

(declare-fun tp!1353406 () Bool)

(declare-fun tp!1353403 () Bool)

(declare-fun array_inv!5683 (array!17708) Bool)

(declare-fun array_inv!5684 (array!17710) Bool)

(assert (=> b!4760439 (= e!2970558 (and tp!1353405 tp!1353406 tp!1353403 (array_inv!5683 (_keys!5192 (v!47404 (underlying!9921 (v!47405 (underlying!9922 (cache!4583 thiss!28909))))))) (array_inv!5684 (_values!5165 (v!47404 (underlying!9921 (v!47405 (underlying!9922 (cache!4583 thiss!28909))))))) e!2970559))))

(declare-fun b!4760440 () Bool)

(declare-fun e!2970567 () Bool)

(declare-fun e!2970562 () Bool)

(declare-fun lt!1924832 () MutLongMap!4857)

(get-info :version)

(assert (=> b!4760440 (= e!2970567 (and e!2970562 ((_ is LongMap!4857) lt!1924832)))))

(assert (=> b!4760440 (= lt!1924832 (v!47405 (underlying!9922 (cache!4583 thiss!28909))))))

(declare-fun b!4760442 () Bool)

(declare-fun e!2970564 () Bool)

(declare-fun tp!1353400 () Bool)

(declare-fun inv!68880 (Conc!14496) Bool)

(assert (=> b!4760442 (= e!2970564 (and (inv!68880 (c!812120 (totalInput!4506 thiss!28909))) tp!1353400))))

(declare-fun mapIsEmpty!21593 () Bool)

(assert (=> mapIsEmpty!21593 mapRes!21593))

(declare-fun e!2970561 () Bool)

(assert (=> b!4760443 (= e!2970561 (and e!2970567 tp!1353399))))

(declare-fun b!4760444 () Bool)

(declare-fun localTotalInput!8 () BalanceConc!28482)

(assert (=> b!4760444 (= e!2970563 (not (validCacheMapFindLongestMatch!137 (cache!4583 thiss!28909) localTotalInput!8)))))

(declare-fun b!4760445 () Bool)

(declare-fun e!2970565 () Bool)

(declare-fun inv!68881 (BalanceConc!28482) Bool)

(assert (=> b!4760445 (= e!2970565 (and e!2970561 (inv!68881 (totalInput!4506 thiss!28909)) e!2970564))))

(declare-fun b!4760441 () Bool)

(declare-fun e!2970557 () Bool)

(declare-fun tp!1353401 () Bool)

(assert (=> b!4760441 (= e!2970557 (and (inv!68880 (c!812120 localTotalInput!8)) tp!1353401))))

(declare-fun res!2019104 () Bool)

(assert (=> start!486828 (=> (not res!2019104) (not e!2970563))))

(assert (=> start!486828 (= res!2019104 (= localTotalInput!8 (totalInput!4506 thiss!28909)))))

(assert (=> start!486828 e!2970563))

(assert (=> start!486828 (and (inv!68881 localTotalInput!8) e!2970557)))

(declare-fun inv!68882 (CacheFindLongestMatch!680) Bool)

(assert (=> start!486828 (and (inv!68882 thiss!28909) e!2970565)))

(declare-fun b!4760446 () Bool)

(declare-fun e!2970560 () Bool)

(assert (=> b!4760446 (= e!2970562 e!2970560)))

(declare-fun b!4760447 () Bool)

(assert (=> b!4760447 (= e!2970560 e!2970558)))

(assert (= (and start!486828 res!2019104) b!4760437))

(assert (= (and b!4760437 res!2019103) b!4760444))

(assert (= start!486828 b!4760441))

(assert (= (and b!4760438 condMapEmpty!21593) mapIsEmpty!21593))

(assert (= (and b!4760438 (not condMapEmpty!21593)) mapNonEmpty!21593))

(assert (= b!4760439 b!4760438))

(assert (= b!4760447 b!4760439))

(assert (= b!4760446 b!4760447))

(assert (= (and b!4760440 ((_ is LongMap!4857) (v!47405 (underlying!9922 (cache!4583 thiss!28909))))) b!4760446))

(assert (= b!4760443 b!4760440))

(assert (= (and b!4760445 ((_ is HashMap!4741) (cache!4583 thiss!28909))) b!4760443))

(assert (= b!4760445 b!4760442))

(assert (= start!486828 b!4760445))

(declare-fun m!5729704 () Bool)

(assert (=> b!4760442 m!5729704))

(declare-fun m!5729706 () Bool)

(assert (=> mapNonEmpty!21593 m!5729706))

(declare-fun m!5729708 () Bool)

(assert (=> b!4760441 m!5729708))

(declare-fun m!5729710 () Bool)

(assert (=> b!4760437 m!5729710))

(declare-fun m!5729712 () Bool)

(assert (=> start!486828 m!5729712))

(declare-fun m!5729714 () Bool)

(assert (=> start!486828 m!5729714))

(declare-fun m!5729716 () Bool)

(assert (=> b!4760444 m!5729716))

(declare-fun m!5729718 () Bool)

(assert (=> b!4760445 m!5729718))

(declare-fun m!5729720 () Bool)

(assert (=> b!4760439 m!5729720))

(declare-fun m!5729722 () Bool)

(assert (=> b!4760439 m!5729722))

(check-sat (not b!4760439) (not b!4760441) (not mapNonEmpty!21593) b_and!340967 (not b!4760444) b_and!340969 (not b!4760442) (not start!486828) (not b!4760438) (not b!4760437) (not b!4760445) (not b_next!130047) (not b_next!130049))
(check-sat b_and!340967 b_and!340969 (not b_next!130049) (not b_next!130047))
