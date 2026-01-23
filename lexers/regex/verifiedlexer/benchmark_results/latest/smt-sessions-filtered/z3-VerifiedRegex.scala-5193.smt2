; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266796 () Bool)

(assert start!266796)

(declare-fun b!2752236 () Bool)

(declare-fun b_free!77877 () Bool)

(declare-fun b_next!78581 () Bool)

(assert (=> b!2752236 (= b_free!77877 (not b_next!78581))))

(declare-fun tp!869571 () Bool)

(declare-fun b_and!202615 () Bool)

(assert (=> b!2752236 (= tp!869571 b_and!202615)))

(declare-fun b!2752248 () Bool)

(declare-fun b_free!77879 () Bool)

(declare-fun b_next!78583 () Bool)

(assert (=> b!2752248 (= b_free!77879 (not b_next!78583))))

(declare-fun tp!869565 () Bool)

(declare-fun b_and!202617 () Bool)

(assert (=> b!2752248 (= tp!869565 b_and!202617)))

(declare-fun b!2752250 () Bool)

(declare-fun b_free!77881 () Bool)

(declare-fun b_next!78585 () Bool)

(assert (=> b!2752250 (= b_free!77881 (not b_next!78585))))

(declare-fun tp!869559 () Bool)

(declare-fun b_and!202619 () Bool)

(assert (=> b!2752250 (= tp!869559 b_and!202619)))

(declare-fun b!2752241 () Bool)

(declare-fun b_free!77883 () Bool)

(declare-fun b_next!78587 () Bool)

(assert (=> b!2752241 (= b_free!77883 (not b_next!78587))))

(declare-fun tp!869558 () Bool)

(declare-fun b_and!202621 () Bool)

(assert (=> b!2752241 (= tp!869558 b_and!202621)))

(declare-fun bm!177761 () Bool)

(declare-datatypes ((Unit!45617 0))(
  ( (Unit!45618) )
))
(declare-fun call!177774 () Unit!45617)

(declare-datatypes ((C!16260 0))(
  ( (C!16261 (val!10064 Int)) )
))
(declare-datatypes ((List!31951 0))(
  ( (Nil!31851) (Cons!31851 (h!37271 C!16260) (t!228055 List!31951)) )
))
(declare-fun lt!973884 () List!31951)

(declare-fun lemmaIsPrefixSameLengthThenSameList!435 (List!31951 List!31951 List!31951) Unit!45617)

(assert (=> bm!177761 (= call!177774 (lemmaIsPrefixSameLengthThenSameList!435 lt!973884 Nil!31851 lt!973884))))

(declare-fun b!2752233 () Bool)

(declare-fun e!1735235 () Unit!45617)

(declare-fun Unit!45619 () Unit!45617)

(assert (=> b!2752233 (= e!1735235 Unit!45619)))

(declare-fun b!2752234 () Bool)

(declare-fun res!1153828 () Bool)

(declare-fun call!177768 () Bool)

(assert (=> b!2752234 (= res!1153828 call!177768)))

(declare-fun e!1735231 () Bool)

(assert (=> b!2752234 (=> (not res!1153828) (not e!1735231))))

(declare-fun b!2752235 () Bool)

(declare-fun e!1735213 () Bool)

(declare-fun e!1735212 () Bool)

(assert (=> b!2752235 (= e!1735213 e!1735212)))

(declare-fun bm!177762 () Bool)

(declare-fun lt!973864 () C!16260)

(declare-datatypes ((Regex!8051 0))(
  ( (ElementMatch!8051 (c!445308 C!16260)) (Concat!13139 (regOne!16614 Regex!8051) (regTwo!16614 Regex!8051)) (EmptyExpr!8051) (Star!8051 (reg!8380 Regex!8051)) (EmptyLang!8051) (Union!8051 (regOne!16615 Regex!8051) (regTwo!16615 Regex!8051)) )
))
(declare-datatypes ((List!31952 0))(
  ( (Nil!31852) (Cons!31852 (h!37272 Regex!8051) (t!228056 List!31952)) )
))
(declare-datatypes ((Context!4538 0))(
  ( (Context!4539 (exprs!2769 List!31952)) )
))
(declare-datatypes ((tuple2!31832 0))(
  ( (tuple2!31833 (_1!18686 Context!4538) (_2!18686 C!16260)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31834 0))(
  ( (tuple2!31835 (_1!18687 tuple2!31832) (_2!18687 (InoxSet Context!4538))) )
))
(declare-datatypes ((List!31953 0))(
  ( (Nil!31853) (Cons!31853 (h!37273 tuple2!31834) (t!228057 List!31953)) )
))
(declare-datatypes ((Hashable!3626 0))(
  ( (HashableExt!3625 (__x!20780 Int)) )
))
(declare-datatypes ((array!13204 0))(
  ( (array!13205 (arr!5894 (Array (_ BitVec 32) List!31953)) (size!24611 (_ BitVec 32))) )
))
(declare-datatypes ((array!13206 0))(
  ( (array!13207 (arr!5895 (Array (_ BitVec 32) (_ BitVec 64))) (size!24612 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7420 0))(
  ( (LongMapFixedSize!7421 (defaultEntry!4095 Int) (mask!9472 (_ BitVec 32)) (extraKeys!3959 (_ BitVec 32)) (zeroValue!3969 List!31953) (minValue!3969 List!31953) (_size!7463 (_ BitVec 32)) (_keys!4010 array!13206) (_values!3991 array!13204) (_vacant!3771 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14649 0))(
  ( (Cell!14650 (v!33461 LongMapFixedSize!7420)) )
))
(declare-datatypes ((MutLongMap!3710 0))(
  ( (LongMap!3710 (underlying!7623 Cell!14649)) (MutLongMapExt!3709 (__x!20781 Int)) )
))
(declare-datatypes ((Cell!14651 0))(
  ( (Cell!14652 (v!33462 MutLongMap!3710)) )
))
(declare-datatypes ((MutableMap!3616 0))(
  ( (MutableMapExt!3615 (__x!20782 Int)) (HashMap!3616 (underlying!7624 Cell!14651) (hashF!5658 Hashable!3626) (_size!7464 (_ BitVec 32)) (defaultValue!3787 Int)) )
))
(declare-datatypes ((CacheUp!2322 0))(
  ( (CacheUp!2323 (cache!3759 MutableMap!3616)) )
))
(declare-datatypes ((tuple3!4600 0))(
  ( (tuple3!4601 (_1!18688 Regex!8051) (_2!18688 Context!4538) (_3!2770 C!16260)) )
))
(declare-datatypes ((tuple2!31836 0))(
  ( (tuple2!31837 (_1!18689 tuple3!4600) (_2!18689 (InoxSet Context!4538))) )
))
(declare-datatypes ((List!31954 0))(
  ( (Nil!31854) (Cons!31854 (h!37274 tuple2!31836) (t!228058 List!31954)) )
))
(declare-datatypes ((array!13208 0))(
  ( (array!13209 (arr!5896 (Array (_ BitVec 32) List!31954)) (size!24613 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7422 0))(
  ( (LongMapFixedSize!7423 (defaultEntry!4096 Int) (mask!9473 (_ BitVec 32)) (extraKeys!3960 (_ BitVec 32)) (zeroValue!3970 List!31954) (minValue!3970 List!31954) (_size!7465 (_ BitVec 32)) (_keys!4011 array!13206) (_values!3992 array!13208) (_vacant!3772 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14653 0))(
  ( (Cell!14654 (v!33463 LongMapFixedSize!7422)) )
))
(declare-datatypes ((MutLongMap!3711 0))(
  ( (LongMap!3711 (underlying!7625 Cell!14653)) (MutLongMapExt!3710 (__x!20783 Int)) )
))
(declare-datatypes ((Cell!14655 0))(
  ( (Cell!14656 (v!33464 MutLongMap!3711)) )
))
(declare-datatypes ((Hashable!3627 0))(
  ( (HashableExt!3626 (__x!20784 Int)) )
))
(declare-datatypes ((MutableMap!3617 0))(
  ( (MutableMapExt!3616 (__x!20785 Int)) (HashMap!3617 (underlying!7626 Cell!14655) (hashF!5659 Hashable!3627) (_size!7466 (_ BitVec 32)) (defaultValue!3788 Int)) )
))
(declare-datatypes ((CacheDown!2442 0))(
  ( (CacheDown!2443 (cache!3760 MutableMap!3617)) )
))
(declare-datatypes ((tuple3!4602 0))(
  ( (tuple3!4603 (_1!18690 (InoxSet Context!4538)) (_2!18690 CacheUp!2322) (_3!2771 CacheDown!2442)) )
))
(declare-fun call!177770 () tuple3!4602)

(declare-datatypes ((tuple3!4604 0))(
  ( (tuple3!4605 (_1!18691 Int) (_2!18691 CacheUp!2322) (_3!2772 CacheDown!2442)) )
))
(declare-fun lt!973870 () tuple3!4604)

(declare-fun z!3597 () (InoxSet Context!4538))

(declare-fun derivationStepZipperMem!74 ((InoxSet Context!4538) C!16260 CacheUp!2322 CacheDown!2442) tuple3!4602)

(assert (=> bm!177762 (= call!177770 (derivationStepZipperMem!74 z!3597 lt!973864 (_2!18691 lt!973870) (_3!2772 lt!973870)))))

(declare-fun mapNonEmpty!16873 () Bool)

(declare-fun mapRes!16874 () Bool)

(declare-fun tp!869560 () Bool)

(declare-fun tp!869570 () Bool)

(assert (=> mapNonEmpty!16873 (= mapRes!16874 (and tp!869560 tp!869570))))

(declare-fun mapRest!16874 () (Array (_ BitVec 32) List!31953))

(declare-fun mapKey!16873 () (_ BitVec 32))

(declare-fun mapValue!16873 () List!31953)

(declare-fun cacheUp!820 () CacheUp!2322)

(assert (=> mapNonEmpty!16873 (= (arr!5894 (_values!3991 (v!33461 (underlying!7623 (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))))) (store mapRest!16874 mapKey!16873 mapValue!16873))))

(declare-fun e!1735223 () Bool)

(declare-fun e!1735222 () Bool)

(assert (=> b!2752236 (= e!1735223 (and e!1735222 tp!869571))))

(declare-fun b!2752237 () Bool)

(declare-fun res!1153830 () Bool)

(declare-fun e!1735233 () Bool)

(assert (=> b!2752237 (=> (not res!1153830) (not e!1735233))))

(declare-fun valid!2878 (CacheDown!2442) Bool)

(assert (=> b!2752237 (= res!1153830 (valid!2878 (_3!2772 lt!973870)))))

(declare-fun b!2752238 () Bool)

(declare-fun e!1735230 () Bool)

(declare-fun e!1735224 () Bool)

(declare-fun lt!973869 () MutLongMap!3711)

(get-info :version)

(assert (=> b!2752238 (= e!1735230 (and e!1735224 ((_ is LongMap!3711) lt!973869)))))

(declare-fun cacheDown!939 () CacheDown!2442)

(assert (=> b!2752238 (= lt!973869 (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))))

(declare-fun b!2752240 () Bool)

(declare-fun e!1735209 () Bool)

(assert (=> b!2752240 (= e!1735209 e!1735223)))

(declare-fun tp!869568 () Bool)

(declare-fun tp!869574 () Bool)

(declare-fun e!1735217 () Bool)

(declare-fun e!1735228 () Bool)

(declare-fun array_inv!4213 (array!13206) Bool)

(declare-fun array_inv!4214 (array!13204) Bool)

(assert (=> b!2752241 (= e!1735217 (and tp!869558 tp!869568 tp!869574 (array_inv!4213 (_keys!4010 (v!33461 (underlying!7623 (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))))) (array_inv!4214 (_values!3991 (v!33461 (underlying!7623 (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))))) e!1735228))))

(declare-fun b!2752242 () Bool)

(declare-fun res!1153824 () Bool)

(declare-fun e!1735229 () Bool)

(assert (=> b!2752242 (=> (not res!1153824) (not e!1735229))))

(declare-fun lt!973874 () tuple3!4604)

(assert (=> b!2752242 (= res!1153824 (valid!2878 (_3!2772 lt!973874)))))

(declare-fun mapIsEmpty!16873 () Bool)

(assert (=> mapIsEmpty!16873 mapRes!16874))

(declare-fun b!2752243 () Bool)

(declare-datatypes ((tuple3!4606 0))(
  ( (tuple3!4607 (_1!18692 Int) (_2!18692 CacheDown!2442) (_3!2773 CacheUp!2322)) )
))
(declare-fun e!1735234 () tuple3!4606)

(declare-fun lt!973866 () tuple3!4604)

(assert (=> b!2752243 (= e!1735234 (tuple3!4607 (ite (= (_1!18691 lt!973866) 0) 0 (_1!18691 lt!973866)) (_3!2772 lt!973866) (_2!18691 lt!973866)))))

(declare-fun lt!973871 () tuple3!4602)

(assert (=> b!2752243 (= lt!973871 call!177770)))

(declare-fun call!177772 () tuple3!4604)

(assert (=> b!2752243 (= lt!973866 call!177772)))

(declare-fun res!1153826 () Bool)

(declare-fun call!177771 () Bool)

(assert (=> b!2752243 (= res!1153826 call!177771)))

(assert (=> b!2752243 (=> (not res!1153826) (not e!1735231))))

(assert (=> b!2752243 e!1735231))

(declare-fun b!2752244 () Bool)

(declare-fun res!1153825 () Bool)

(assert (=> b!2752244 (= res!1153825 call!177768)))

(declare-fun e!1735210 () Bool)

(assert (=> b!2752244 (=> (not res!1153825) (not e!1735210))))

(declare-fun mapIsEmpty!16874 () Bool)

(declare-fun mapRes!16873 () Bool)

(assert (=> mapIsEmpty!16874 mapRes!16873))

(declare-fun b!2752245 () Bool)

(declare-fun e!1735221 () Bool)

(assert (=> b!2752245 (= e!1735221 e!1735217)))

(declare-fun b!2752246 () Bool)

(declare-datatypes ((IArray!19871 0))(
  ( (IArray!19872 (innerList!9993 List!31951)) )
))
(declare-datatypes ((Conc!9933 0))(
  ( (Node!9933 (left!24320 Conc!9933) (right!24650 Conc!9933) (csize!20096 Int) (cheight!10144 Int)) (Leaf!15127 (xs!13040 IArray!19871) (csize!20097 Int)) (Empty!9933) )
))
(declare-datatypes ((BalanceConc!19480 0))(
  ( (BalanceConc!19481 (c!445309 Conc!9933)) )
))
(declare-fun input!5495 () BalanceConc!19480)

(declare-fun lt!973880 () Int)

(declare-fun findLongestMatchInnerZipperFast!9 ((InoxSet Context!4538) List!31951 Int List!31951 BalanceConc!19480 Int) Int)

(assert (=> b!2752246 (= e!1735229 (= (_1!18691 lt!973874) (findLongestMatchInnerZipperFast!9 z!3597 Nil!31851 0 lt!973884 input!5495 lt!973880)))))

(declare-fun b!2752247 () Bool)

(assert (=> b!2752247 (= e!1735224 e!1735213)))

(declare-fun e!1735227 () Bool)

(assert (=> b!2752248 (= e!1735227 (and e!1735230 tp!869565))))

(declare-fun bm!177763 () Bool)

(declare-fun call!177767 () Bool)

(declare-fun nullableZipper!606 ((InoxSet Context!4538)) Bool)

(assert (=> bm!177763 (= call!177767 (nullableZipper!606 z!3597))))

(declare-fun b!2752249 () Bool)

(declare-fun e!1735225 () Bool)

(declare-fun tp!869563 () Bool)

(declare-fun inv!43249 (Conc!9933) Bool)

(assert (=> b!2752249 (= e!1735225 (and (inv!43249 (c!445309 input!5495)) tp!869563))))

(declare-fun bm!177764 () Bool)

(declare-fun call!177769 () Unit!45617)

(declare-fun lemmaIsPrefixRefl!1653 (List!31951 List!31951) Unit!45617)

(assert (=> bm!177764 (= call!177769 (lemmaIsPrefixRefl!1653 lt!973884 lt!973884))))

(declare-fun e!1735220 () Bool)

(declare-fun tp!869566 () Bool)

(declare-fun tp!869573 () Bool)

(declare-fun array_inv!4215 (array!13208) Bool)

(assert (=> b!2752250 (= e!1735212 (and tp!869559 tp!869573 tp!869566 (array_inv!4213 (_keys!4011 (v!33463 (underlying!7625 (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))))) (array_inv!4215 (_values!3992 (v!33463 (underlying!7625 (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))))) e!1735220))))

(declare-fun b!2752251 () Bool)

(declare-fun e!1735232 () Bool)

(assert (=> b!2752251 (= e!1735232 e!1735221)))

(declare-fun b!2752252 () Bool)

(declare-fun lt!973881 () tuple3!4604)

(assert (=> b!2752252 (= e!1735234 (tuple3!4607 (_1!18691 lt!973881) (_3!2772 lt!973881) (_2!18691 lt!973881)))))

(declare-fun lt!973859 () tuple3!4602)

(assert (=> b!2752252 (= lt!973859 call!177770)))

(assert (=> b!2752252 (= lt!973881 call!177772)))

(declare-fun res!1153832 () Bool)

(assert (=> b!2752252 (= res!1153832 call!177771)))

(assert (=> b!2752252 (=> (not res!1153832) (not e!1735210))))

(assert (=> b!2752252 e!1735210))

(declare-fun bm!177765 () Bool)

(declare-fun call!177766 () Bool)

(declare-fun isPrefix!2527 (List!31951 List!31951) Bool)

(assert (=> bm!177765 (= call!177766 (isPrefix!2527 lt!973884 lt!973884))))

(declare-fun b!2752253 () Bool)

(declare-fun Unit!45620 () Unit!45617)

(assert (=> b!2752253 (= e!1735235 Unit!45620)))

(declare-fun lt!973858 () Unit!45617)

(assert (=> b!2752253 (= lt!973858 call!177769)))

(assert (=> b!2752253 call!177766))

(declare-fun lt!973888 () Unit!45617)

(assert (=> b!2752253 (= lt!973888 call!177774)))

(assert (=> b!2752253 false))

(declare-fun b!2752254 () Bool)

(declare-fun c!445306 () Bool)

(assert (=> b!2752254 (= c!445306 call!177767)))

(declare-fun lt!973860 () List!31951)

(declare-fun lt!973875 () List!31951)

(declare-fun ++!7887 (List!31951 List!31951) List!31951)

(assert (=> b!2752254 (= (++!7887 lt!973860 lt!973875) lt!973884)))

(assert (=> b!2752254 (= lt!973860 (++!7887 Nil!31851 (Cons!31851 lt!973864 Nil!31851)))))

(declare-fun lt!973865 () Unit!45617)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!844 (List!31951 C!16260 List!31951 List!31951) Unit!45617)

(assert (=> b!2752254 (= lt!973865 (lemmaMoveElementToOtherListKeepsConcatEq!844 Nil!31851 lt!973864 lt!973875 lt!973884))))

(declare-fun tail!4361 (List!31951) List!31951)

(assert (=> b!2752254 (= lt!973875 (tail!4361 lt!973884))))

(declare-fun apply!7441 (BalanceConc!19480 Int) C!16260)

(assert (=> b!2752254 (= lt!973864 (apply!7441 input!5495 0))))

(declare-fun lt!973862 () List!31951)

(declare-fun head!6123 (List!31951) C!16260)

(assert (=> b!2752254 (isPrefix!2527 (++!7887 Nil!31851 (Cons!31851 (head!6123 lt!973862) Nil!31851)) lt!973884)))

(declare-fun lt!973887 () Unit!45617)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!432 (List!31951 List!31951) Unit!45617)

(assert (=> b!2752254 (= lt!973887 (lemmaAddHeadSuffixToPrefixStillPrefix!432 Nil!31851 lt!973884))))

(declare-fun lt!973856 () Unit!45617)

(assert (=> b!2752254 (= lt!973856 e!1735235)))

(declare-fun c!445307 () Bool)

(declare-fun lt!973863 () Int)

(assert (=> b!2752254 (= c!445307 (= lt!973863 lt!973880))))

(declare-fun size!24614 (List!31951) Int)

(assert (=> b!2752254 (<= lt!973863 (size!24614 lt!973884))))

(assert (=> b!2752254 (= lt!973863 (size!24614 Nil!31851))))

(declare-fun lt!973855 () Unit!45617)

(declare-fun lemmaIsPrefixThenSmallerEqSize!235 (List!31951 List!31951) Unit!45617)

(assert (=> b!2752254 (= lt!973855 (lemmaIsPrefixThenSmallerEqSize!235 Nil!31851 lt!973884))))

(declare-fun drop!1682 (List!31951 Int) List!31951)

(declare-fun apply!7442 (List!31951 Int) C!16260)

(assert (=> b!2752254 (= (head!6123 (drop!1682 lt!973884 0)) (apply!7442 lt!973884 0))))

(declare-fun lt!973886 () Unit!45617)

(declare-fun lemmaDropApply!888 (List!31951 Int) Unit!45617)

(assert (=> b!2752254 (= lt!973886 (lemmaDropApply!888 lt!973884 0))))

(declare-fun lt!973883 () List!31951)

(declare-fun lt!973857 () List!31951)

(assert (=> b!2752254 (and (= lt!973883 Nil!31851) (= lt!973857 lt!973884))))

(declare-fun lt!973876 () Unit!45617)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!314 (List!31951 List!31951 List!31951 List!31951) Unit!45617)

(assert (=> b!2752254 (= lt!973876 (lemmaConcatSameAndSameSizesThenSameLists!314 lt!973883 lt!973857 Nil!31851 lt!973884))))

(declare-datatypes ((tuple2!31838 0))(
  ( (tuple2!31839 (_1!18693 BalanceConc!19480) (_2!18693 BalanceConc!19480)) )
))
(declare-fun lt!973861 () tuple2!31838)

(declare-fun list!12034 (BalanceConc!19480) List!31951)

(assert (=> b!2752254 (= lt!973857 (list!12034 (_2!18693 lt!973861)))))

(assert (=> b!2752254 (= lt!973883 (list!12034 (_1!18693 lt!973861)))))

(declare-fun splitAt!79 (BalanceConc!19480 Int) tuple2!31838)

(assert (=> b!2752254 (= lt!973861 (splitAt!79 input!5495 0))))

(declare-fun e!1735218 () tuple3!4606)

(assert (=> b!2752254 (= e!1735218 e!1735234)))

(declare-fun b!2752255 () Bool)

(declare-fun tp!869562 () Bool)

(assert (=> b!2752255 (= e!1735220 (and tp!869562 mapRes!16873))))

(declare-fun condMapEmpty!16873 () Bool)

(declare-fun mapDefault!16873 () List!31954)

(assert (=> b!2752255 (= condMapEmpty!16873 (= (arr!5896 (_values!3992 (v!33463 (underlying!7625 (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31954)) mapDefault!16873)))))

(declare-fun b!2752256 () Bool)

(declare-fun e!1735219 () Bool)

(declare-fun tp!869567 () Bool)

(assert (=> b!2752256 (= e!1735219 tp!869567)))

(declare-fun b!2752257 () Bool)

(declare-fun e!1735208 () tuple3!4606)

(assert (=> b!2752257 (= e!1735208 e!1735218)))

(declare-fun c!445304 () Bool)

(assert (=> b!2752257 (= c!445304 (= 0 lt!973880))))

(declare-fun setIsEmpty!22002 () Bool)

(declare-fun setRes!22002 () Bool)

(assert (=> setIsEmpty!22002 setRes!22002))

(declare-fun b!2752258 () Bool)

(declare-fun e!1735211 () Bool)

(declare-fun e!1735226 () Bool)

(assert (=> b!2752258 (= e!1735211 (not e!1735226))))

(declare-fun res!1153823 () Bool)

(assert (=> b!2752258 (=> res!1153823 e!1735226)))

(declare-fun lt!973873 () List!31951)

(assert (=> b!2752258 (= res!1153823 (not (= lt!973873 lt!973884)))))

(declare-fun lt!973879 () tuple3!4606)

(assert (=> b!2752258 (= lt!973874 (tuple3!4605 (_1!18692 lt!973879) (_3!2773 lt!973879) (_2!18692 lt!973879)))))

(assert (=> b!2752258 (= lt!973879 e!1735208)))

(declare-fun c!445305 () Bool)

(declare-fun lostCauseZipper!417 ((InoxSet Context!4538)) Bool)

(assert (=> b!2752258 (= c!445305 (lostCauseZipper!417 z!3597))))

(assert (=> b!2752258 (and (= lt!973884 lt!973862) (= lt!973862 lt!973884))))

(declare-fun lt!973868 () Unit!45617)

(declare-fun lemmaSamePrefixThenSameSuffix!1115 (List!31951 List!31951 List!31951 List!31951 List!31951) Unit!45617)

(assert (=> b!2752258 (= lt!973868 (lemmaSamePrefixThenSameSuffix!1115 Nil!31851 lt!973884 Nil!31851 lt!973862 lt!973884))))

(declare-fun getSuffix!1213 (List!31951 List!31951) List!31951)

(assert (=> b!2752258 (= lt!973862 (getSuffix!1213 lt!973884 Nil!31851))))

(assert (=> b!2752258 (isPrefix!2527 Nil!31851 lt!973873)))

(assert (=> b!2752258 (= lt!973873 (++!7887 Nil!31851 lt!973884))))

(declare-fun lt!973877 () Unit!45617)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1641 (List!31951 List!31951) Unit!45617)

(assert (=> b!2752258 (= lt!973877 (lemmaConcatTwoListThenFirstIsPrefix!1641 Nil!31851 lt!973884))))

(assert (=> b!2752258 e!1735229))

(declare-fun res!1153827 () Bool)

(assert (=> b!2752258 (=> (not res!1153827) (not e!1735229))))

(declare-fun valid!2879 (CacheUp!2322) Bool)

(assert (=> b!2752258 (= res!1153827 (valid!2879 (_2!18691 lt!973874)))))

(declare-fun findLongestMatchInnerZipperFastMem!7 (CacheUp!2322 CacheDown!2442 (InoxSet Context!4538) List!31951 Int List!31951 BalanceConc!19480 Int) tuple3!4604)

(assert (=> b!2752258 (= lt!973874 (findLongestMatchInnerZipperFastMem!7 (_2!18691 lt!973870) (_3!2772 lt!973870) z!3597 Nil!31851 0 lt!973884 input!5495 lt!973880))))

(assert (=> b!2752258 e!1735233))

(declare-fun res!1153831 () Bool)

(assert (=> b!2752258 (=> (not res!1153831) (not e!1735233))))

(assert (=> b!2752258 (= res!1153831 (valid!2879 (_2!18691 lt!973870)))))

(assert (=> b!2752258 (= lt!973870 (findLongestMatchInnerZipperFastMem!7 cacheUp!820 cacheDown!939 z!3597 Nil!31851 0 lt!973884 input!5495 lt!973880))))

(declare-fun size!24615 (BalanceConc!19480) Int)

(assert (=> b!2752258 (= lt!973880 (size!24615 input!5495))))

(assert (=> b!2752258 (= lt!973884 (list!12034 input!5495))))

(declare-fun res!1153833 () Bool)

(assert (=> start!266796 (=> (not res!1153833) (not e!1735211))))

(assert (=> start!266796 (= res!1153833 (valid!2879 cacheUp!820))))

(assert (=> start!266796 e!1735211))

(declare-fun inv!43250 (CacheUp!2322) Bool)

(assert (=> start!266796 (and (inv!43250 cacheUp!820) e!1735209)))

(declare-fun e!1735214 () Bool)

(declare-fun inv!43251 (CacheDown!2442) Bool)

(assert (=> start!266796 (and (inv!43251 cacheDown!939) e!1735214)))

(declare-fun condSetEmpty!22002 () Bool)

(assert (=> start!266796 (= condSetEmpty!22002 (= z!3597 ((as const (Array Context!4538 Bool)) false)))))

(assert (=> start!266796 setRes!22002))

(declare-fun inv!43252 (BalanceConc!19480) Bool)

(assert (=> start!266796 (and (inv!43252 input!5495) e!1735225)))

(declare-fun b!2752239 () Bool)

(declare-fun res!1153829 () Bool)

(assert (=> b!2752239 (=> (not res!1153829) (not e!1735211))))

(assert (=> b!2752239 (= res!1153829 (valid!2878 cacheDown!939))))

(declare-fun call!177773 () Int)

(declare-fun bm!177766 () Bool)

(assert (=> bm!177766 (= call!177773 (findLongestMatchInnerZipperFast!9 (ite c!445306 (_1!18690 lt!973871) (_1!18690 lt!973859)) lt!973860 1 lt!973875 input!5495 lt!973880))))

(declare-fun b!2752259 () Bool)

(assert (=> b!2752259 (= e!1735208 (tuple3!4607 0 (_3!2772 lt!973870) (_2!18691 lt!973870)))))

(declare-fun bm!177767 () Bool)

(assert (=> bm!177767 (= call!177768 (valid!2878 (ite c!445306 (_3!2772 lt!973866) (_3!2772 lt!973881))))))

(declare-fun bm!177768 () Bool)

(assert (=> bm!177768 (= call!177771 (valid!2879 (ite c!445306 (_2!18691 lt!973866) (_2!18691 lt!973881))))))

(declare-fun b!2752260 () Bool)

(declare-fun lt!973878 () MutLongMap!3710)

(assert (=> b!2752260 (= e!1735222 (and e!1735232 ((_ is LongMap!3710) lt!973878)))))

(assert (=> b!2752260 (= lt!973878 (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))))

(declare-fun b!2752261 () Bool)

(declare-fun tp!869561 () Bool)

(assert (=> b!2752261 (= e!1735228 (and tp!869561 mapRes!16874))))

(declare-fun condMapEmpty!16874 () Bool)

(declare-fun mapDefault!16874 () List!31953)

(assert (=> b!2752261 (= condMapEmpty!16874 (= (arr!5894 (_values!3991 (v!33461 (underlying!7623 (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31953)) mapDefault!16874)))))

(declare-fun b!2752262 () Bool)

(assert (=> b!2752262 (= e!1735214 e!1735227)))

(declare-fun setElem!22002 () Context!4538)

(declare-fun tp!869564 () Bool)

(declare-fun setNonEmpty!22002 () Bool)

(declare-fun inv!43253 (Context!4538) Bool)

(assert (=> setNonEmpty!22002 (= setRes!22002 (and tp!869564 (inv!43253 setElem!22002) e!1735219))))

(declare-fun setRest!22002 () (InoxSet Context!4538))

(assert (=> setNonEmpty!22002 (= z!3597 ((_ map or) (store ((as const (Array Context!4538 Bool)) false) setElem!22002 true) setRest!22002))))

(declare-fun b!2752263 () Bool)

(declare-fun lt!973882 () Bool)

(assert (=> b!2752263 (= lt!973882 call!177767)))

(assert (=> b!2752263 (= lt!973884 Nil!31851)))

(declare-fun lt!973872 () Unit!45617)

(assert (=> b!2752263 (= lt!973872 call!177774)))

(assert (=> b!2752263 call!177766))

(declare-fun lt!973885 () Unit!45617)

(assert (=> b!2752263 (= lt!973885 call!177769)))

(assert (=> b!2752263 (= e!1735218 (tuple3!4607 0 (_3!2772 lt!973870) (_2!18691 lt!973870)))))

(declare-fun bm!177769 () Bool)

(assert (=> bm!177769 (= call!177772 (findLongestMatchInnerZipperFastMem!7 (ite c!445306 (_2!18690 lt!973871) (_2!18690 lt!973859)) (ite c!445306 (_3!2771 lt!973871) (_3!2771 lt!973859)) (ite c!445306 (_1!18690 lt!973871) (_1!18690 lt!973859)) lt!973860 1 lt!973875 input!5495 lt!973880))))

(declare-fun b!2752264 () Bool)

(assert (=> b!2752264 (= e!1735226 true)))

(declare-fun lt!973867 () Int)

(assert (=> b!2752264 (= lt!973867 (size!24614 Nil!31851))))

(declare-fun b!2752265 () Bool)

(assert (=> b!2752265 (= e!1735231 (= (_1!18691 lt!973866) call!177773))))

(declare-fun mapNonEmpty!16874 () Bool)

(declare-fun tp!869572 () Bool)

(declare-fun tp!869569 () Bool)

(assert (=> mapNonEmpty!16874 (= mapRes!16873 (and tp!869572 tp!869569))))

(declare-fun mapValue!16874 () List!31954)

(declare-fun mapKey!16874 () (_ BitVec 32))

(declare-fun mapRest!16873 () (Array (_ BitVec 32) List!31954))

(assert (=> mapNonEmpty!16874 (= (arr!5896 (_values!3992 (v!33463 (underlying!7625 (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))))) (store mapRest!16873 mapKey!16874 mapValue!16874))))

(declare-fun b!2752266 () Bool)

(assert (=> b!2752266 (= e!1735210 (= (_1!18691 lt!973881) call!177773))))

(declare-fun b!2752267 () Bool)

(assert (=> b!2752267 (= e!1735233 (= (_1!18691 lt!973870) (findLongestMatchInnerZipperFast!9 z!3597 Nil!31851 0 lt!973884 input!5495 lt!973880)))))

(assert (= (and start!266796 res!1153833) b!2752239))

(assert (= (and b!2752239 res!1153829) b!2752258))

(assert (= (and b!2752258 res!1153831) b!2752237))

(assert (= (and b!2752237 res!1153830) b!2752267))

(assert (= (and b!2752258 res!1153827) b!2752242))

(assert (= (and b!2752242 res!1153824) b!2752246))

(assert (= (and b!2752258 c!445305) b!2752259))

(assert (= (and b!2752258 (not c!445305)) b!2752257))

(assert (= (and b!2752257 c!445304) b!2752263))

(assert (= (and b!2752257 (not c!445304)) b!2752254))

(assert (= (and b!2752254 c!445307) b!2752253))

(assert (= (and b!2752254 (not c!445307)) b!2752233))

(assert (= (and b!2752254 c!445306) b!2752243))

(assert (= (and b!2752254 (not c!445306)) b!2752252))

(assert (= (and b!2752243 res!1153826) b!2752234))

(assert (= (and b!2752234 res!1153828) b!2752265))

(assert (= (and b!2752252 res!1153832) b!2752244))

(assert (= (and b!2752244 res!1153825) b!2752266))

(assert (= (or b!2752265 b!2752266) bm!177766))

(assert (= (or b!2752243 b!2752252) bm!177762))

(assert (= (or b!2752243 b!2752252) bm!177769))

(assert (= (or b!2752243 b!2752252) bm!177768))

(assert (= (or b!2752234 b!2752244) bm!177767))

(assert (= (or b!2752263 b!2752254) bm!177763))

(assert (= (or b!2752263 b!2752253) bm!177764))

(assert (= (or b!2752263 b!2752253) bm!177761))

(assert (= (or b!2752263 b!2752253) bm!177765))

(assert (= (and b!2752258 (not res!1153823)) b!2752264))

(assert (= (and b!2752261 condMapEmpty!16874) mapIsEmpty!16873))

(assert (= (and b!2752261 (not condMapEmpty!16874)) mapNonEmpty!16873))

(assert (= b!2752241 b!2752261))

(assert (= b!2752245 b!2752241))

(assert (= b!2752251 b!2752245))

(assert (= (and b!2752260 ((_ is LongMap!3710) (v!33462 (underlying!7624 (cache!3759 cacheUp!820))))) b!2752251))

(assert (= b!2752236 b!2752260))

(assert (= (and b!2752240 ((_ is HashMap!3616) (cache!3759 cacheUp!820))) b!2752236))

(assert (= start!266796 b!2752240))

(assert (= (and b!2752255 condMapEmpty!16873) mapIsEmpty!16874))

(assert (= (and b!2752255 (not condMapEmpty!16873)) mapNonEmpty!16874))

(assert (= b!2752250 b!2752255))

(assert (= b!2752235 b!2752250))

(assert (= b!2752247 b!2752235))

(assert (= (and b!2752238 ((_ is LongMap!3711) (v!33464 (underlying!7626 (cache!3760 cacheDown!939))))) b!2752247))

(assert (= b!2752248 b!2752238))

(assert (= (and b!2752262 ((_ is HashMap!3617) (cache!3760 cacheDown!939))) b!2752248))

(assert (= start!266796 b!2752262))

(assert (= (and start!266796 condSetEmpty!22002) setIsEmpty!22002))

(assert (= (and start!266796 (not condSetEmpty!22002)) setNonEmpty!22002))

(assert (= setNonEmpty!22002 b!2752256))

(assert (= start!266796 b!2752249))

(declare-fun m!3167223 () Bool)

(assert (=> mapNonEmpty!16874 m!3167223))

(declare-fun m!3167225 () Bool)

(assert (=> bm!177762 m!3167225))

(declare-fun m!3167227 () Bool)

(assert (=> b!2752267 m!3167227))

(declare-fun m!3167229 () Bool)

(assert (=> bm!177766 m!3167229))

(declare-fun m!3167231 () Bool)

(assert (=> b!2752258 m!3167231))

(declare-fun m!3167233 () Bool)

(assert (=> b!2752258 m!3167233))

(declare-fun m!3167235 () Bool)

(assert (=> b!2752258 m!3167235))

(declare-fun m!3167237 () Bool)

(assert (=> b!2752258 m!3167237))

(declare-fun m!3167239 () Bool)

(assert (=> b!2752258 m!3167239))

(declare-fun m!3167241 () Bool)

(assert (=> b!2752258 m!3167241))

(declare-fun m!3167243 () Bool)

(assert (=> b!2752258 m!3167243))

(declare-fun m!3167245 () Bool)

(assert (=> b!2752258 m!3167245))

(declare-fun m!3167247 () Bool)

(assert (=> b!2752258 m!3167247))

(declare-fun m!3167249 () Bool)

(assert (=> b!2752258 m!3167249))

(declare-fun m!3167251 () Bool)

(assert (=> b!2752258 m!3167251))

(declare-fun m!3167253 () Bool)

(assert (=> b!2752258 m!3167253))

(declare-fun m!3167255 () Bool)

(assert (=> b!2752254 m!3167255))

(declare-fun m!3167257 () Bool)

(assert (=> b!2752254 m!3167257))

(declare-fun m!3167259 () Bool)

(assert (=> b!2752254 m!3167259))

(declare-fun m!3167261 () Bool)

(assert (=> b!2752254 m!3167261))

(declare-fun m!3167263 () Bool)

(assert (=> b!2752254 m!3167263))

(declare-fun m!3167265 () Bool)

(assert (=> b!2752254 m!3167265))

(declare-fun m!3167267 () Bool)

(assert (=> b!2752254 m!3167267))

(declare-fun m!3167269 () Bool)

(assert (=> b!2752254 m!3167269))

(declare-fun m!3167271 () Bool)

(assert (=> b!2752254 m!3167271))

(declare-fun m!3167273 () Bool)

(assert (=> b!2752254 m!3167273))

(declare-fun m!3167275 () Bool)

(assert (=> b!2752254 m!3167275))

(declare-fun m!3167277 () Bool)

(assert (=> b!2752254 m!3167277))

(declare-fun m!3167279 () Bool)

(assert (=> b!2752254 m!3167279))

(declare-fun m!3167281 () Bool)

(assert (=> b!2752254 m!3167281))

(assert (=> b!2752254 m!3167279))

(assert (=> b!2752254 m!3167255))

(declare-fun m!3167283 () Bool)

(assert (=> b!2752254 m!3167283))

(declare-fun m!3167285 () Bool)

(assert (=> b!2752254 m!3167285))

(declare-fun m!3167287 () Bool)

(assert (=> b!2752254 m!3167287))

(declare-fun m!3167289 () Bool)

(assert (=> b!2752254 m!3167289))

(declare-fun m!3167291 () Bool)

(assert (=> b!2752254 m!3167291))

(declare-fun m!3167293 () Bool)

(assert (=> b!2752254 m!3167293))

(declare-fun m!3167295 () Bool)

(assert (=> mapNonEmpty!16873 m!3167295))

(declare-fun m!3167297 () Bool)

(assert (=> start!266796 m!3167297))

(declare-fun m!3167299 () Bool)

(assert (=> start!266796 m!3167299))

(declare-fun m!3167301 () Bool)

(assert (=> start!266796 m!3167301))

(declare-fun m!3167303 () Bool)

(assert (=> start!266796 m!3167303))

(declare-fun m!3167305 () Bool)

(assert (=> bm!177761 m!3167305))

(declare-fun m!3167307 () Bool)

(assert (=> b!2752250 m!3167307))

(declare-fun m!3167309 () Bool)

(assert (=> b!2752250 m!3167309))

(declare-fun m!3167311 () Bool)

(assert (=> b!2752239 m!3167311))

(assert (=> b!2752246 m!3167227))

(declare-fun m!3167313 () Bool)

(assert (=> bm!177769 m!3167313))

(declare-fun m!3167315 () Bool)

(assert (=> bm!177765 m!3167315))

(declare-fun m!3167317 () Bool)

(assert (=> b!2752242 m!3167317))

(declare-fun m!3167319 () Bool)

(assert (=> setNonEmpty!22002 m!3167319))

(assert (=> b!2752264 m!3167265))

(declare-fun m!3167321 () Bool)

(assert (=> bm!177768 m!3167321))

(declare-fun m!3167323 () Bool)

(assert (=> b!2752249 m!3167323))

(declare-fun m!3167325 () Bool)

(assert (=> bm!177767 m!3167325))

(declare-fun m!3167327 () Bool)

(assert (=> b!2752237 m!3167327))

(declare-fun m!3167329 () Bool)

(assert (=> b!2752241 m!3167329))

(declare-fun m!3167331 () Bool)

(assert (=> b!2752241 m!3167331))

(declare-fun m!3167333 () Bool)

(assert (=> bm!177764 m!3167333))

(declare-fun m!3167335 () Bool)

(assert (=> bm!177763 m!3167335))

(check-sat (not b!2752256) (not b!2752255) (not setNonEmpty!22002) (not b!2752261) b_and!202621 b_and!202617 (not start!266796) (not bm!177761) (not b_next!78585) (not bm!177769) (not bm!177768) (not b!2752239) (not b!2752249) (not b!2752267) (not bm!177765) (not bm!177767) (not bm!177764) b_and!202619 (not b!2752264) (not b!2752242) (not b_next!78587) b_and!202615 (not mapNonEmpty!16873) (not mapNonEmpty!16874) (not b!2752258) (not bm!177762) (not b!2752246) (not b!2752254) (not b!2752250) (not b!2752237) (not b!2752241) (not bm!177766) (not bm!177763) (not b_next!78583) (not b_next!78581))
(check-sat b_and!202619 (not b_next!78587) b_and!202621 b_and!202617 b_and!202615 (not b_next!78585) (not b_next!78583) (not b_next!78581))
