; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486552 () Bool)

(assert start!486552)

(declare-fun b!4757702 () Bool)

(declare-fun b_free!129183 () Bool)

(declare-fun b_next!129887 () Bool)

(assert (=> b!4757702 (= b_free!129183 (not b_next!129887))))

(declare-fun tp!1351578 () Bool)

(declare-fun b_and!340787 () Bool)

(assert (=> b!4757702 (= tp!1351578 b_and!340787)))

(declare-fun b!4757712 () Bool)

(declare-fun b_free!129185 () Bool)

(declare-fun b_next!129889 () Bool)

(assert (=> b!4757712 (= b_free!129185 (not b_next!129889))))

(declare-fun tp!1351579 () Bool)

(declare-fun b_and!340789 () Bool)

(assert (=> b!4757712 (= tp!1351579 b_and!340789)))

(declare-fun e!2968291 () Bool)

(declare-fun e!2968290 () Bool)

(assert (=> b!4757702 (= e!2968291 (and e!2968290 tp!1351578))))

(declare-fun b!4757703 () Bool)

(declare-fun e!2968297 () Bool)

(declare-datatypes ((C!26228 0))(
  ( (C!26229 (val!20102 Int)) )
))
(declare-datatypes ((Regex!13015 0))(
  ( (ElementMatch!13015 (c!811859 C!26228)) (Concat!21334 (regOne!26542 Regex!13015) (regTwo!26542 Regex!13015)) (EmptyExpr!13015) (Star!13015 (reg!13344 Regex!13015)) (EmptyLang!13015) (Union!13015 (regOne!26543 Regex!13015) (regTwo!26543 Regex!13015)) )
))
(declare-datatypes ((List!53351 0))(
  ( (Nil!53227) (Cons!53227 (h!59638 Regex!13015) (t!360701 List!53351)) )
))
(declare-datatypes ((Context!5810 0))(
  ( (Context!5811 (exprs!3405 List!53351)) )
))
(declare-datatypes ((array!17528 0))(
  ( (array!17529 (arr!7819 (Array (_ BitVec 32) (_ BitVec 64))) (size!36019 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55116 0))(
  ( (tuple2!55117 (_1!30852 (InoxSet Context!5810)) (_2!30852 Int)) )
))
(declare-datatypes ((tuple2!55118 0))(
  ( (tuple2!55119 (_1!30853 tuple2!55116) (_2!30853 Int)) )
))
(declare-datatypes ((List!53352 0))(
  ( (Nil!53228) (Cons!53228 (h!59639 tuple2!55118) (t!360702 List!53352)) )
))
(declare-datatypes ((array!17530 0))(
  ( (array!17531 (arr!7820 (Array (_ BitVec 32) List!53352)) (size!36020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9634 0))(
  ( (LongMapFixedSize!9635 (defaultEntry!5231 Int) (mask!14511 (_ BitVec 32)) (extraKeys!5087 (_ BitVec 32)) (zeroValue!5100 List!53352) (minValue!5100 List!53352) (_size!9659 (_ BitVec 32)) (_keys!5152 array!17528) (_values!5125 array!17530) (_vacant!4882 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19033 0))(
  ( (Cell!19034 (v!47301 LongMapFixedSize!9634)) )
))
(declare-datatypes ((MutLongMap!4817 0))(
  ( (LongMap!4817 (underlying!9841 Cell!19033)) (MutLongMapExt!4816 (__x!32199 Int)) )
))
(declare-fun lt!1923652 () MutLongMap!4817)

(get-info :version)

(assert (=> b!4757703 (= e!2968290 (and e!2968297 ((_ is LongMap!4817) lt!1923652)))))

(declare-datatypes ((Hashable!6478 0))(
  ( (HashableExt!6477 (__x!32200 Int)) )
))
(declare-datatypes ((List!53353 0))(
  ( (Nil!53229) (Cons!53229 (h!59640 C!26228) (t!360703 List!53353)) )
))
(declare-datatypes ((IArray!28973 0))(
  ( (IArray!28974 (innerList!14544 List!53353)) )
))
(declare-datatypes ((Conc!14456 0))(
  ( (Node!14456 (left!39037 Conc!14456) (right!39367 Conc!14456) (csize!29142 Int) (cheight!14667 Int)) (Leaf!23536 (xs!17762 IArray!28973) (csize!29143 Int)) (Empty!14456) )
))
(declare-datatypes ((BalanceConc!28402 0))(
  ( (BalanceConc!28403 (c!811860 Conc!14456)) )
))
(declare-datatypes ((Cell!19035 0))(
  ( (Cell!19036 (v!47302 MutLongMap!4817)) )
))
(declare-datatypes ((MutableMap!4701 0))(
  ( (MutableMapExt!4700 (__x!32201 Int)) (HashMap!4701 (underlying!9842 Cell!19035) (hashF!12288 Hashable!6478) (_size!9660 (_ BitVec 32)) (defaultValue!4872 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!600 0))(
  ( (CacheFindLongestMatch!601 (cache!4543 MutableMap!4701) (totalInput!4451 BalanceConc!28402)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!600)

(assert (=> b!4757703 (= lt!1923652 (v!47302 (underlying!9842 (cache!4543 thiss!28972))))))

(declare-fun b!4757704 () Bool)

(declare-fun e!2968287 () Bool)

(declare-fun tp!1351574 () Bool)

(declare-fun mapRes!21443 () Bool)

(assert (=> b!4757704 (= e!2968287 (and tp!1351574 mapRes!21443))))

(declare-fun condMapEmpty!21443 () Bool)

(declare-fun mapDefault!21443 () List!53352)

(assert (=> b!4757704 (= condMapEmpty!21443 (= (arr!7820 (_values!5125 (v!47301 (underlying!9841 (v!47302 (underlying!9842 (cache!4543 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53352)) mapDefault!21443)))))

(declare-fun res!2018397 () Bool)

(declare-fun e!2968298 () Bool)

(assert (=> start!486552 (=> (not res!2018397) (not e!2968298))))

(declare-fun validCacheMapFindLongestMatch!104 (MutableMap!4701 BalanceConc!28402) Bool)

(assert (=> start!486552 (= res!2018397 (validCacheMapFindLongestMatch!104 (cache!4543 thiss!28972) (totalInput!4451 thiss!28972)))))

(assert (=> start!486552 e!2968298))

(declare-fun e!2968301 () Bool)

(declare-fun inv!68664 (CacheFindLongestMatch!600) Bool)

(assert (=> start!486552 (and (inv!68664 thiss!28972) e!2968301)))

(declare-fun condSetEmpty!26950 () Bool)

(declare-fun z!490 () (InoxSet Context!5810))

(assert (=> start!486552 (= condSetEmpty!26950 (= z!490 ((as const (Array Context!5810 Bool)) false)))))

(declare-fun setRes!26950 () Bool)

(assert (=> start!486552 setRes!26950))

(assert (=> start!486552 true))

(declare-fun b!4757705 () Bool)

(declare-fun e!2968293 () Bool)

(declare-fun from!930 () Int)

(declare-fun lt!1923655 () Int)

(assert (=> b!4757705 (= e!2968293 (and (>= from!930 0) (<= from!930 lt!1923655)))))

(declare-fun size!36021 (BalanceConc!28402) Int)

(assert (=> b!4757705 (= lt!1923655 (size!36021 (totalInput!4451 thiss!28972)))))

(declare-fun b!4757706 () Bool)

(declare-fun e!2968294 () Bool)

(declare-fun lt!1923656 () Int)

(declare-fun lt!1923653 () tuple2!55116)

(declare-fun findLongestMatchInnerZipperFastV2!64 ((InoxSet Context!5810) Int BalanceConc!28402 Int) Int)

(declare-fun apply!12511 (MutableMap!4701 tuple2!55116) Int)

(assert (=> b!4757706 (= e!2968294 (= (findLongestMatchInnerZipperFastV2!64 z!490 from!930 (totalInput!4451 thiss!28972) lt!1923656) (apply!12511 (cache!4543 thiss!28972) lt!1923653)))))

(declare-fun mapIsEmpty!21443 () Bool)

(assert (=> mapIsEmpty!21443 mapRes!21443))

(declare-fun b!4757707 () Bool)

(declare-fun e!2968296 () Bool)

(declare-fun tp!1351580 () Bool)

(assert (=> b!4757707 (= e!2968296 tp!1351580)))

(declare-fun b!4757708 () Bool)

(declare-fun e!2968300 () Bool)

(declare-fun inv!68665 (BalanceConc!28402) Bool)

(assert (=> b!4757708 (= e!2968301 (and e!2968291 (inv!68665 (totalInput!4451 thiss!28972)) e!2968300))))

(declare-fun setIsEmpty!26950 () Bool)

(assert (=> setIsEmpty!26950 setRes!26950))

(declare-fun mapNonEmpty!21443 () Bool)

(declare-fun tp!1351571 () Bool)

(declare-fun tp!1351575 () Bool)

(assert (=> mapNonEmpty!21443 (= mapRes!21443 (and tp!1351571 tp!1351575))))

(declare-fun mapValue!21443 () List!53352)

(declare-fun mapKey!21443 () (_ BitVec 32))

(declare-fun mapRest!21443 () (Array (_ BitVec 32) List!53352))

(assert (=> mapNonEmpty!21443 (= (arr!7820 (_values!5125 (v!47301 (underlying!9841 (v!47302 (underlying!9842 (cache!4543 thiss!28972))))))) (store mapRest!21443 mapKey!21443 mapValue!21443))))

(declare-fun b!4757709 () Bool)

(declare-fun tp!1351573 () Bool)

(declare-fun inv!68666 (Conc!14456) Bool)

(assert (=> b!4757709 (= e!2968300 (and (inv!68666 (c!811860 (totalInput!4451 thiss!28972))) tp!1351573))))

(declare-fun b!4757710 () Bool)

(declare-fun e!2968292 () Bool)

(assert (=> b!4757710 (= e!2968298 e!2968292)))

(declare-fun res!2018396 () Bool)

(assert (=> b!4757710 (=> (not res!2018396) (not e!2968292))))

(declare-fun contains!16613 (MutableMap!4701 tuple2!55116) Bool)

(assert (=> b!4757710 (= res!2018396 (contains!16613 (cache!4543 thiss!28972) lt!1923653))))

(assert (=> b!4757710 (= lt!1923653 (tuple2!55117 z!490 from!930))))

(declare-fun tp!1351576 () Bool)

(declare-fun setNonEmpty!26950 () Bool)

(declare-fun setElem!26950 () Context!5810)

(declare-fun inv!68667 (Context!5810) Bool)

(assert (=> setNonEmpty!26950 (= setRes!26950 (and tp!1351576 (inv!68667 setElem!26950) e!2968296))))

(declare-fun setRest!26950 () (InoxSet Context!5810))

(assert (=> setNonEmpty!26950 (= z!490 ((_ map or) (store ((as const (Array Context!5810 Bool)) false) setElem!26950 true) setRest!26950))))

(declare-fun b!4757711 () Bool)

(assert (=> b!4757711 (= e!2968292 (not e!2968293))))

(declare-fun res!2018399 () Bool)

(assert (=> b!4757711 (=> res!2018399 e!2968293)))

(declare-datatypes ((Option!12579 0))(
  ( (None!12578) (Some!12578 (v!47303 Int)) )
))
(declare-fun isEmpty!29259 (Option!12579) Bool)

(assert (=> b!4757711 (= res!2018399 (isEmpty!29259 (Some!12578 (apply!12511 (cache!4543 thiss!28972) lt!1923653))))))

(declare-fun e!2968299 () Bool)

(assert (=> b!4757711 e!2968299))

(declare-fun res!2018398 () Bool)

(assert (=> b!4757711 (=> (not res!2018398) (not e!2968299))))

(assert (=> b!4757711 (= res!2018398 (>= from!930 0))))

(declare-datatypes ((Unit!137747 0))(
  ( (Unit!137748) )
))
(declare-fun lt!1923654 () Unit!137747)

(declare-fun lemmaIfInCacheThenValid!76 (CacheFindLongestMatch!600 (InoxSet Context!5810) Int BalanceConc!28402) Unit!137747)

(assert (=> b!4757711 (= lt!1923654 (lemmaIfInCacheThenValid!76 thiss!28972 z!490 from!930 (totalInput!4451 thiss!28972)))))

(declare-fun tp!1351572 () Bool)

(declare-fun e!2968288 () Bool)

(declare-fun tp!1351577 () Bool)

(declare-fun array_inv!5629 (array!17528) Bool)

(declare-fun array_inv!5630 (array!17530) Bool)

(assert (=> b!4757712 (= e!2968288 (and tp!1351579 tp!1351572 tp!1351577 (array_inv!5629 (_keys!5152 (v!47301 (underlying!9841 (v!47302 (underlying!9842 (cache!4543 thiss!28972))))))) (array_inv!5630 (_values!5125 (v!47301 (underlying!9841 (v!47302 (underlying!9842 (cache!4543 thiss!28972))))))) e!2968287))))

(declare-fun b!4757713 () Bool)

(assert (=> b!4757713 (= e!2968299 e!2968294)))

(declare-fun res!2018395 () Bool)

(assert (=> b!4757713 (=> (not res!2018395) (not e!2968294))))

(assert (=> b!4757713 (= res!2018395 (<= from!930 lt!1923656))))

(assert (=> b!4757713 (= lt!1923656 (size!36021 (totalInput!4451 thiss!28972)))))

(declare-fun b!4757714 () Bool)

(declare-fun e!2968295 () Bool)

(assert (=> b!4757714 (= e!2968295 e!2968288)))

(declare-fun b!4757715 () Bool)

(assert (=> b!4757715 (= e!2968297 e!2968295)))

(assert (= (and start!486552 res!2018397) b!4757710))

(assert (= (and b!4757710 res!2018396) b!4757711))

(assert (= (and b!4757711 res!2018398) b!4757713))

(assert (= (and b!4757713 res!2018395) b!4757706))

(assert (= (and b!4757711 (not res!2018399)) b!4757705))

(assert (= (and b!4757704 condMapEmpty!21443) mapIsEmpty!21443))

(assert (= (and b!4757704 (not condMapEmpty!21443)) mapNonEmpty!21443))

(assert (= b!4757712 b!4757704))

(assert (= b!4757714 b!4757712))

(assert (= b!4757715 b!4757714))

(assert (= (and b!4757703 ((_ is LongMap!4817) (v!47302 (underlying!9842 (cache!4543 thiss!28972))))) b!4757715))

(assert (= b!4757702 b!4757703))

(assert (= (and b!4757708 ((_ is HashMap!4701) (cache!4543 thiss!28972))) b!4757702))

(assert (= b!4757708 b!4757709))

(assert (= start!486552 b!4757708))

(assert (= (and start!486552 condSetEmpty!26950) setIsEmpty!26950))

(assert (= (and start!486552 (not condSetEmpty!26950)) setNonEmpty!26950))

(assert (= setNonEmpty!26950 b!4757707))

(declare-fun m!5727412 () Bool)

(assert (=> b!4757711 m!5727412))

(declare-fun m!5727414 () Bool)

(assert (=> b!4757711 m!5727414))

(declare-fun m!5727416 () Bool)

(assert (=> b!4757711 m!5727416))

(declare-fun m!5727418 () Bool)

(assert (=> b!4757705 m!5727418))

(declare-fun m!5727420 () Bool)

(assert (=> b!4757709 m!5727420))

(declare-fun m!5727422 () Bool)

(assert (=> start!486552 m!5727422))

(declare-fun m!5727424 () Bool)

(assert (=> start!486552 m!5727424))

(declare-fun m!5727426 () Bool)

(assert (=> b!4757708 m!5727426))

(declare-fun m!5727428 () Bool)

(assert (=> mapNonEmpty!21443 m!5727428))

(declare-fun m!5727430 () Bool)

(assert (=> b!4757710 m!5727430))

(declare-fun m!5727432 () Bool)

(assert (=> b!4757712 m!5727432))

(declare-fun m!5727434 () Bool)

(assert (=> b!4757712 m!5727434))

(declare-fun m!5727436 () Bool)

(assert (=> b!4757706 m!5727436))

(assert (=> b!4757706 m!5727412))

(assert (=> b!4757713 m!5727418))

(declare-fun m!5727438 () Bool)

(assert (=> setNonEmpty!26950 m!5727438))

(check-sat (not b!4757709) (not b!4757708) (not b!4757711) (not b_next!129887) (not b!4757704) (not b!4757712) (not b!4757705) (not b_next!129889) (not start!486552) (not b!4757707) (not mapNonEmpty!21443) (not b!4757706) (not b!4757710) b_and!340789 (not b!4757713) b_and!340787 (not setNonEmpty!26950))
(check-sat b_and!340787 b_and!340789 (not b_next!129889) (not b_next!129887))
