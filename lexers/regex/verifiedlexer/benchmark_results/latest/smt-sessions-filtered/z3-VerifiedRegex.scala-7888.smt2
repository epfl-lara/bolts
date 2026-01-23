; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412220 () Bool)

(assert start!412220)

(declare-fun b!4293676 () Bool)

(declare-fun b_free!127631 () Bool)

(declare-fun b_next!128335 () Bool)

(assert (=> b!4293676 (= b_free!127631 (not b_next!128335))))

(declare-fun tp!1317735 () Bool)

(declare-fun b_and!338847 () Bool)

(assert (=> b!4293676 (= tp!1317735 b_and!338847)))

(declare-fun b!4293678 () Bool)

(declare-fun b_free!127633 () Bool)

(declare-fun b_next!128337 () Bool)

(assert (=> b!4293678 (= b_free!127633 (not b_next!128337))))

(declare-fun tp!1317728 () Bool)

(declare-fun b_and!338849 () Bool)

(assert (=> b!4293678 (= tp!1317728 b_and!338849)))

(declare-fun e!2667852 () Bool)

(declare-fun e!2667858 () Bool)

(declare-fun b!4293672 () Bool)

(declare-fun e!2667857 () Bool)

(declare-datatypes ((C!26148 0))(
  ( (C!26149 (val!15400 Int)) )
))
(declare-datatypes ((Regex!12975 0))(
  ( (ElementMatch!12975 (c!730694 C!26148)) (Concat!21294 (regOne!26462 Regex!12975) (regTwo!26462 Regex!12975)) (EmptyExpr!12975) (Star!12975 (reg!13304 Regex!12975)) (EmptyLang!12975) (Union!12975 (regOne!26463 Regex!12975) (regTwo!26463 Regex!12975)) )
))
(declare-datatypes ((List!47900 0))(
  ( (Nil!47776) (Cons!47776 (h!53196 Regex!12975) (t!354504 List!47900)) )
))
(declare-datatypes ((Context!5730 0))(
  ( (Context!5731 (exprs!3365 List!47900)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45500 0))(
  ( (tuple2!45501 (_1!26016 (InoxSet Context!5730)) (_2!26016 Int)) )
))
(declare-datatypes ((Hashable!4362 0))(
  ( (HashableExt!4361 (__x!29363 Int)) )
))
(declare-datatypes ((array!15864 0))(
  ( (array!15865 (arr!7088 (Array (_ BitVec 32) (_ BitVec 64))) (size!35086 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45502 0))(
  ( (tuple2!45503 (_1!26017 tuple2!45500) (_2!26017 Int)) )
))
(declare-datatypes ((List!47901 0))(
  ( (Nil!47777) (Cons!47777 (h!53197 tuple2!45502) (t!354505 List!47901)) )
))
(declare-datatypes ((array!15866 0))(
  ( (array!15867 (arr!7089 (Array (_ BitVec 32) List!47901)) (size!35087 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8892 0))(
  ( (LongMapFixedSize!8893 (defaultEntry!4831 Int) (mask!12903 (_ BitVec 32)) (extraKeys!4695 (_ BitVec 32)) (zeroValue!4705 List!47901) (minValue!4705 List!47901) (_size!8935 (_ BitVec 32)) (_keys!4746 array!15864) (_values!4727 array!15866) (_vacant!4507 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17593 0))(
  ( (Cell!17594 (v!41717 LongMapFixedSize!8892)) )
))
(declare-datatypes ((MutLongMap!4446 0))(
  ( (LongMap!4446 (underlying!9121 Cell!17593)) (MutLongMapExt!4445 (__x!29364 Int)) )
))
(declare-datatypes ((Cell!17595 0))(
  ( (Cell!17596 (v!41718 MutLongMap!4446)) )
))
(declare-datatypes ((MutableMap!4352 0))(
  ( (MutableMapExt!4351 (__x!29365 Int)) (HashMap!4352 (underlying!9122 Cell!17595) (hashF!6394 Hashable!4362) (_size!8936 (_ BitVec 32)) (defaultValue!4523 Int)) )
))
(declare-datatypes ((List!47902 0))(
  ( (Nil!47778) (Cons!47778 (h!53198 C!26148) (t!354506 List!47902)) )
))
(declare-datatypes ((IArray!28893 0))(
  ( (IArray!28894 (innerList!14504 List!47902)) )
))
(declare-datatypes ((Conc!14416 0))(
  ( (Node!14416 (left!35444 Conc!14416) (right!35774 Conc!14416) (csize!29062 Int) (cheight!14627 Int)) (Leaf!22305 (xs!17722 IArray!28893) (csize!29063 Int)) (Empty!14416) )
))
(declare-datatypes ((BalanceConc!28322 0))(
  ( (BalanceConc!28323 (c!730695 Conc!14416)) )
))
(declare-datatypes ((CacheFindLongestMatch!520 0))(
  ( (CacheFindLongestMatch!521 (cache!4492 MutableMap!4352) (totalInput!4384 BalanceConc!28322)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!520)

(declare-fun inv!63297 (BalanceConc!28322) Bool)

(assert (=> b!4293672 (= e!2667858 (and e!2667852 (inv!63297 (totalInput!4384 cacheFindLongestMatch!183)) e!2667857))))

(declare-fun b!4293673 () Bool)

(declare-fun e!2667856 () Bool)

(declare-fun totalInput!812 () BalanceConc!28322)

(declare-fun tp!1317730 () Bool)

(declare-fun inv!63298 (Conc!14416) Bool)

(assert (=> b!4293673 (= e!2667856 (and (inv!63298 (c!730695 totalInput!812)) tp!1317730))))

(declare-fun b!4293674 () Bool)

(declare-fun lt!1517570 () Int)

(declare-fun from!999 () Int)

(declare-fun e!2667851 () Bool)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4293674 (= e!2667851 (and (<= from!999 lt!1517570) (= totalInputSize!257 lt!1517570) (= (totalInput!4384 cacheFindLongestMatch!183) totalInput!812) (< (- lt!1517570 from!999) 0)))))

(declare-fun size!35088 (BalanceConc!28322) Int)

(assert (=> b!4293674 (= lt!1517570 (size!35088 totalInput!812))))

(declare-fun b!4293675 () Bool)

(declare-fun e!2667853 () Bool)

(declare-fun e!2667854 () Bool)

(declare-fun lt!1517569 () MutLongMap!4446)

(get-info :version)

(assert (=> b!4293675 (= e!2667853 (and e!2667854 ((_ is LongMap!4446) lt!1517569)))))

(assert (=> b!4293675 (= lt!1517569 (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))))

(declare-fun e!2667859 () Bool)

(declare-fun tp!1317732 () Bool)

(declare-fun tp!1317729 () Bool)

(declare-fun e!2667850 () Bool)

(declare-fun array_inv!5083 (array!15864) Bool)

(declare-fun array_inv!5084 (array!15866) Bool)

(assert (=> b!4293676 (= e!2667859 (and tp!1317735 tp!1317732 tp!1317729 (array_inv!5083 (_keys!4746 (v!41717 (underlying!9121 (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))))) (array_inv!5084 (_values!4727 (v!41717 (underlying!9121 (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))))) e!2667850))))

(declare-fun mapIsEmpty!19986 () Bool)

(declare-fun mapRes!19986 () Bool)

(assert (=> mapIsEmpty!19986 mapRes!19986))

(assert (=> b!4293678 (= e!2667852 (and e!2667853 tp!1317728))))

(declare-fun b!4293679 () Bool)

(declare-fun tp!1317727 () Bool)

(assert (=> b!4293679 (= e!2667850 (and tp!1317727 mapRes!19986))))

(declare-fun condMapEmpty!19986 () Bool)

(declare-fun mapDefault!19986 () List!47901)

(assert (=> b!4293679 (= condMapEmpty!19986 (= (arr!7089 (_values!4727 (v!41717 (underlying!9121 (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47901)) mapDefault!19986)))))

(declare-fun b!4293680 () Bool)

(declare-fun e!2667860 () Bool)

(assert (=> b!4293680 (= e!2667860 e!2667859)))

(declare-fun b!4293681 () Bool)

(declare-fun tp!1317731 () Bool)

(assert (=> b!4293681 (= e!2667857 (and (inv!63298 (c!730695 (totalInput!4384 cacheFindLongestMatch!183))) tp!1317731))))

(declare-fun mapNonEmpty!19986 () Bool)

(declare-fun tp!1317733 () Bool)

(declare-fun tp!1317734 () Bool)

(assert (=> mapNonEmpty!19986 (= mapRes!19986 (and tp!1317733 tp!1317734))))

(declare-fun mapRest!19986 () (Array (_ BitVec 32) List!47901))

(declare-fun mapKey!19986 () (_ BitVec 32))

(declare-fun mapValue!19986 () List!47901)

(assert (=> mapNonEmpty!19986 (= (arr!7089 (_values!4727 (v!41717 (underlying!9121 (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))))) (store mapRest!19986 mapKey!19986 mapValue!19986))))

(declare-fun res!1760309 () Bool)

(assert (=> start!412220 (=> (not res!1760309) (not e!2667851))))

(assert (=> start!412220 (= res!1760309 (>= from!999 0))))

(assert (=> start!412220 e!2667851))

(assert (=> start!412220 true))

(declare-fun inv!63299 (CacheFindLongestMatch!520) Bool)

(assert (=> start!412220 (and (inv!63299 cacheFindLongestMatch!183) e!2667858)))

(assert (=> start!412220 (and (inv!63297 totalInput!812) e!2667856)))

(declare-fun b!4293677 () Bool)

(assert (=> b!4293677 (= e!2667854 e!2667860)))

(assert (= (and start!412220 res!1760309) b!4293674))

(assert (= (and b!4293679 condMapEmpty!19986) mapIsEmpty!19986))

(assert (= (and b!4293679 (not condMapEmpty!19986)) mapNonEmpty!19986))

(assert (= b!4293676 b!4293679))

(assert (= b!4293680 b!4293676))

(assert (= b!4293677 b!4293680))

(assert (= (and b!4293675 ((_ is LongMap!4446) (v!41718 (underlying!9122 (cache!4492 cacheFindLongestMatch!183))))) b!4293677))

(assert (= b!4293678 b!4293675))

(assert (= (and b!4293672 ((_ is HashMap!4352) (cache!4492 cacheFindLongestMatch!183))) b!4293678))

(assert (= b!4293672 b!4293681))

(assert (= start!412220 b!4293672))

(assert (= start!412220 b!4293673))

(declare-fun m!4886682 () Bool)

(assert (=> b!4293673 m!4886682))

(declare-fun m!4886684 () Bool)

(assert (=> b!4293672 m!4886684))

(declare-fun m!4886686 () Bool)

(assert (=> mapNonEmpty!19986 m!4886686))

(declare-fun m!4886688 () Bool)

(assert (=> b!4293676 m!4886688))

(declare-fun m!4886690 () Bool)

(assert (=> b!4293676 m!4886690))

(declare-fun m!4886692 () Bool)

(assert (=> b!4293681 m!4886692))

(declare-fun m!4886694 () Bool)

(assert (=> b!4293674 m!4886694))

(declare-fun m!4886696 () Bool)

(assert (=> start!412220 m!4886696))

(declare-fun m!4886698 () Bool)

(assert (=> start!412220 m!4886698))

(check-sat (not mapNonEmpty!19986) (not b!4293679) (not b!4293672) (not b!4293681) b_and!338849 (not b_next!128337) (not b!4293673) (not b!4293676) (not b_next!128335) b_and!338847 (not b!4293674) (not start!412220))
(check-sat b_and!338849 b_and!338847 (not b_next!128335) (not b_next!128337))
