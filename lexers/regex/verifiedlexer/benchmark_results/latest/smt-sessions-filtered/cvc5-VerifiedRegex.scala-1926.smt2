; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!95168 () Bool)

(assert start!95168)

(declare-fun bs!259773 () Bool)

(declare-fun b!1103824 () Bool)

(assert (= bs!259773 (and b!1103824 start!95168)))

(declare-fun lambda!43878 () Int)

(declare-fun lambda!43877 () Int)

(assert (=> bs!259773 (not (= lambda!43878 lambda!43877))))

(declare-fun b!1103847 () Bool)

(declare-fun e!699376 () Bool)

(assert (=> b!1103847 (= e!699376 true)))

(declare-fun b!1103846 () Bool)

(declare-fun e!699375 () Bool)

(assert (=> b!1103846 (= e!699375 e!699376)))

(assert (=> b!1103824 e!699375))

(assert (= b!1103846 b!1103847))

(assert (= b!1103824 b!1103846))

(declare-fun lambda!43879 () Int)

(assert (=> bs!259773 (not (= lambda!43879 lambda!43877))))

(assert (=> b!1103824 (not (= lambda!43879 lambda!43878))))

(declare-fun b!1103849 () Bool)

(declare-fun e!699378 () Bool)

(assert (=> b!1103849 (= e!699378 true)))

(declare-fun b!1103848 () Bool)

(declare-fun e!699377 () Bool)

(assert (=> b!1103848 (= e!699377 e!699378)))

(assert (=> b!1103824 e!699377))

(assert (= b!1103848 b!1103849))

(assert (= b!1103824 b!1103848))

(declare-fun lambda!43880 () Int)

(assert (=> bs!259773 (not (= lambda!43880 lambda!43877))))

(assert (=> b!1103824 (not (= lambda!43880 lambda!43878))))

(assert (=> b!1103824 (not (= lambda!43880 lambda!43879))))

(declare-fun b!1103851 () Bool)

(declare-fun e!699380 () Bool)

(assert (=> b!1103851 (= e!699380 true)))

(declare-fun b!1103850 () Bool)

(declare-fun e!699379 () Bool)

(assert (=> b!1103850 (= e!699379 e!699380)))

(assert (=> b!1103824 e!699379))

(assert (= b!1103850 b!1103851))

(assert (= b!1103824 b!1103850))

(declare-fun b!1103823 () Bool)

(declare-datatypes ((Unit!16323 0))(
  ( (Unit!16324) )
))
(declare-fun e!699362 () Unit!16323)

(declare-fun Unit!16325 () Unit!16323)

(assert (=> b!1103823 (= e!699362 Unit!16325)))

(declare-fun e!699358 () Bool)

(declare-fun e!699368 () Bool)

(assert (=> b!1103824 (= e!699358 e!699368)))

(declare-fun res!489369 () Bool)

(assert (=> b!1103824 (=> (not res!489369) (not e!699368))))

(declare-datatypes ((List!10707 0))(
  ( (Nil!10691) (Cons!10691 (h!16092 (_ BitVec 16)) (t!104513 List!10707)) )
))
(declare-datatypes ((TokenValue!1907 0))(
  ( (FloatLiteralValue!3814 (text!13794 List!10707)) (TokenValueExt!1906 (__x!7489 Int)) (Broken!9535 (value!60397 List!10707)) (Object!1922) (End!1907) (Def!1907) (Underscore!1907) (Match!1907) (Else!1907) (Error!1907) (Case!1907) (If!1907) (Extends!1907) (Abstract!1907) (Class!1907) (Val!1907) (DelimiterValue!3814 (del!1967 List!10707)) (KeywordValue!1913 (value!60398 List!10707)) (CommentValue!3814 (value!60399 List!10707)) (WhitespaceValue!3814 (value!60400 List!10707)) (IndentationValue!1907 (value!60401 List!10707)) (String!13106) (Int32!1907) (Broken!9536 (value!60402 List!10707)) (Boolean!1908) (Unit!16326) (OperatorValue!1910 (op!1967 List!10707)) (IdentifierValue!3814 (value!60403 List!10707)) (IdentifierValue!3815 (value!60404 List!10707)) (WhitespaceValue!3815 (value!60405 List!10707)) (True!3814) (False!3814) (Broken!9537 (value!60406 List!10707)) (Broken!9538 (value!60407 List!10707)) (True!3815) (RightBrace!1907) (RightBracket!1907) (Colon!1907) (Null!1907) (Comma!1907) (LeftBracket!1907) (False!3815) (LeftBrace!1907) (ImaginaryLiteralValue!1907 (text!13795 List!10707)) (StringLiteralValue!5721 (value!60408 List!10707)) (EOFValue!1907 (value!60409 List!10707)) (IdentValue!1907 (value!60410 List!10707)) (DelimiterValue!3815 (value!60411 List!10707)) (DedentValue!1907 (value!60412 List!10707)) (NewLineValue!1907 (value!60413 List!10707)) (IntegerValue!5721 (value!60414 (_ BitVec 32)) (text!13796 List!10707)) (IntegerValue!5722 (value!60415 Int) (text!13797 List!10707)) (Times!1907) (Or!1907) (Equal!1907) (Minus!1907) (Broken!9539 (value!60416 List!10707)) (And!1907) (Div!1907) (LessEqual!1907) (Mod!1907) (Concat!5017) (Not!1907) (Plus!1907) (SpaceValue!1907 (value!60417 List!10707)) (IntegerValue!5723 (value!60418 Int) (text!13798 List!10707)) (StringLiteralValue!5722 (text!13799 List!10707)) (FloatLiteralValue!3815 (text!13800 List!10707)) (BytesLiteralValue!1907 (value!60419 List!10707)) (CommentValue!3815 (value!60420 List!10707)) (StringLiteralValue!5723 (value!60421 List!10707)) (ErrorTokenValue!1907 (msg!1968 List!10707)) )
))
(declare-datatypes ((Regex!3110 0))(
  ( (ElementMatch!3110 (c!187380 (_ BitVec 16))) (Concat!5018 (regOne!6732 Regex!3110) (regTwo!6732 Regex!3110)) (EmptyExpr!3110) (Star!3110 (reg!3439 Regex!3110)) (EmptyLang!3110) (Union!3110 (regOne!6733 Regex!3110) (regTwo!6733 Regex!3110)) )
))
(declare-datatypes ((String!13107 0))(
  ( (String!13108 (value!60422 String)) )
))
(declare-datatypes ((IArray!6705 0))(
  ( (IArray!6706 (innerList!3410 List!10707)) )
))
(declare-datatypes ((Conc!3350 0))(
  ( (Node!3350 (left!9272 Conc!3350) (right!9602 Conc!3350) (csize!6930 Int) (cheight!3561 Int)) (Leaf!5277 (xs!6043 IArray!6705) (csize!6931 Int)) (Empty!3350) )
))
(declare-datatypes ((BalanceConc!6714 0))(
  ( (BalanceConc!6715 (c!187381 Conc!3350)) )
))
(declare-datatypes ((TokenValueInjection!3514 0))(
  ( (TokenValueInjection!3515 (toValue!2918 Int) (toChars!2777 Int)) )
))
(declare-datatypes ((Rule!3482 0))(
  ( (Rule!3483 (regex!1841 Regex!3110) (tag!2103 String!13107) (isSeparator!1841 Bool) (transformation!1841 TokenValueInjection!3514)) )
))
(declare-datatypes ((Token!3348 0))(
  ( (Token!3349 (value!60423 TokenValue!1907) (rule!3264 Rule!3482) (size!8311 Int) (originalCharacters!2397 List!10707)) )
))
(declare-datatypes ((List!10708 0))(
  ( (Nil!10692) (Cons!10692 (h!16093 Token!3348) (t!104514 List!10708)) )
))
(declare-datatypes ((IArray!6707 0))(
  ( (IArray!6708 (innerList!3411 List!10708)) )
))
(declare-datatypes ((Conc!3351 0))(
  ( (Node!3351 (left!9273 Conc!3351) (right!9603 Conc!3351) (csize!6932 Int) (cheight!3562 Int)) (Leaf!5278 (xs!6044 IArray!6707) (csize!6933 Int)) (Empty!3351) )
))
(declare-datatypes ((List!10709 0))(
  ( (Nil!10693) (Cons!10693 (h!16094 Rule!3482) (t!104515 List!10709)) )
))
(declare-datatypes ((BalanceConc!6716 0))(
  ( (BalanceConc!6717 (c!187382 Conc!3351)) )
))
(declare-datatypes ((PrintableTokens!398 0))(
  ( (PrintableTokens!399 (rules!9128 List!10709) (tokens!1400 BalanceConc!6716)) )
))
(declare-datatypes ((tuple2!11808 0))(
  ( (tuple2!11809 (_1!6730 Int) (_2!6730 PrintableTokens!398)) )
))
(declare-datatypes ((List!10710 0))(
  ( (Nil!10694) (Cons!10694 (h!16095 tuple2!11808) (t!104516 List!10710)) )
))
(declare-datatypes ((IArray!6709 0))(
  ( (IArray!6710 (innerList!3412 List!10710)) )
))
(declare-datatypes ((Conc!3352 0))(
  ( (Node!3352 (left!9274 Conc!3352) (right!9604 Conc!3352) (csize!6934 Int) (cheight!3563 Int)) (Leaf!5279 (xs!6045 IArray!6709) (csize!6935 Int)) (Empty!3352) )
))
(declare-datatypes ((BalanceConc!6718 0))(
  ( (BalanceConc!6719 (c!187383 Conc!3352)) )
))
(declare-fun objs!8 () BalanceConc!6718)

(declare-fun lt!373646 () tuple2!11808)

(declare-fun contains!1912 (BalanceConc!6718 tuple2!11808) Bool)

(assert (=> b!1103824 (= res!489369 (contains!1912 objs!8 lt!373646))))

(declare-fun lt!373636 () BalanceConc!6718)

(declare-fun filter!387 (BalanceConc!6718 Int) BalanceConc!6718)

(assert (=> b!1103824 (= lt!373636 (filter!387 objs!8 lambda!43880))))

(declare-fun lt!373653 () BalanceConc!6718)

(assert (=> b!1103824 (= lt!373653 (filter!387 objs!8 lambda!43879))))

(declare-fun lt!373633 () BalanceConc!6718)

(assert (=> b!1103824 (= lt!373633 (filter!387 objs!8 lambda!43878))))

(declare-fun lt!373634 () Int)

(declare-fun apply!2184 (BalanceConc!6718 Int) tuple2!11808)

(assert (=> b!1103824 (= lt!373646 (apply!2184 objs!8 (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2)))))))

(declare-fun b!1103825 () Bool)

(declare-fun e!699360 () Unit!16323)

(declare-fun Unit!16327 () Unit!16323)

(assert (=> b!1103825 (= e!699360 Unit!16327)))

(declare-fun b!1103826 () Bool)

(declare-fun e!699364 () Bool)

(assert (=> b!1103826 (= e!699364 e!699358)))

(declare-fun res!489371 () Bool)

(assert (=> b!1103826 (=> (not res!489371) (not e!699358))))

(assert (=> b!1103826 (= res!489371 (> lt!373634 1))))

(declare-fun size!8312 (BalanceConc!6718) Int)

(assert (=> b!1103826 (= lt!373634 (size!8312 objs!8))))

(declare-fun b!1103827 () Bool)

(declare-fun e!699365 () Bool)

(assert (=> b!1103827 (= e!699368 e!699365)))

(declare-fun res!489368 () Bool)

(assert (=> b!1103827 (=> (not res!489368) (not e!699365))))

(declare-fun lt!373630 () Bool)

(assert (=> b!1103827 (= res!489368 (not lt!373630))))

(declare-fun lt!373640 () Unit!16323)

(declare-fun e!699357 () Unit!16323)

(assert (=> b!1103827 (= lt!373640 e!699357)))

(declare-fun c!187379 () Bool)

(assert (=> b!1103827 (= c!187379 lt!373630)))

(assert (=> b!1103827 (= lt!373630 (contains!1912 lt!373633 lt!373646))))

(declare-fun b!1103828 () Bool)

(declare-fun e!699370 () Unit!16323)

(declare-fun Unit!16328 () Unit!16323)

(assert (=> b!1103828 (= e!699370 Unit!16328)))

(declare-fun b!1103829 () Bool)

(declare-fun e!699359 () Bool)

(assert (=> b!1103829 (= e!699365 (not e!699359))))

(declare-fun res!489372 () Bool)

(assert (=> b!1103829 (=> res!489372 e!699359)))

(assert (=> b!1103829 (= res!489372 (>= (size!8312 lt!373633) lt!373634))))

(declare-fun e!699369 () Bool)

(assert (=> b!1103829 e!699369))

(declare-fun res!489370 () Bool)

(assert (=> b!1103829 (=> res!489370 e!699369)))

(declare-fun lt!373643 () Bool)

(assert (=> b!1103829 (= res!489370 lt!373643)))

(declare-fun lt!373647 () List!10710)

(declare-fun isEmpty!6706 (List!10710) Bool)

(assert (=> b!1103829 (= lt!373643 (isEmpty!6706 lt!373647))))

(declare-fun lt!373648 () Unit!16323)

(declare-fun lemmaNotForallFilterShorter!68 (List!10710 Int) Unit!16323)

(assert (=> b!1103829 (= lt!373648 (lemmaNotForallFilterShorter!68 lt!373647 lambda!43878))))

(declare-fun list!3861 (BalanceConc!6718) List!10710)

(assert (=> b!1103829 (= lt!373647 (list!3861 objs!8))))

(declare-fun lt!373635 () Unit!16323)

(assert (=> b!1103829 (= lt!373635 e!699360)))

(declare-fun c!187376 () Bool)

(declare-fun forall!2499 (BalanceConc!6718 Int) Bool)

(assert (=> b!1103829 (= c!187376 (forall!2499 objs!8 lambda!43878))))

(declare-fun b!1103830 () Bool)

(declare-fun err!2833 () Unit!16323)

(assert (=> b!1103830 (= e!699360 err!2833)))

(declare-fun lt!373654 () Unit!16323)

(declare-fun forallContained!535 (List!10710 Int tuple2!11808) Unit!16323)

(assert (=> b!1103830 (= lt!373654 (forallContained!535 (list!3861 objs!8) lambda!43878 lt!373646))))

(assert (=> b!1103830 true))

(declare-fun b!1103831 () Bool)

(declare-fun e!699363 () Bool)

(declare-fun size!8313 (List!10710) Int)

(declare-fun filter!388 (List!10710 Int) List!10710)

(assert (=> b!1103831 (= e!699363 (< (size!8313 (filter!388 lt!373647 lambda!43880)) (size!8313 lt!373647)))))

(declare-fun res!489374 () Bool)

(assert (=> start!95168 (=> (not res!489374) (not e!699364))))

(assert (=> start!95168 (= res!489374 (forall!2499 objs!8 lambda!43877))))

(assert (=> start!95168 e!699364))

(declare-fun e!699367 () Bool)

(declare-fun inv!13755 (BalanceConc!6718) Bool)

(assert (=> start!95168 (and (inv!13755 objs!8) e!699367)))

(declare-fun b!1103822 () Bool)

(declare-fun err!2831 () Unit!16323)

(assert (=> b!1103822 (= e!699357 err!2831)))

(declare-fun lt!373631 () Unit!16323)

(assert (=> b!1103822 (= lt!373631 (forallContained!535 (list!3861 lt!373633) lambda!43878 lt!373646))))

(assert (=> b!1103822 true))

(declare-fun b!1103832 () Bool)

(declare-fun e!699361 () Bool)

(assert (=> b!1103832 (= e!699359 e!699361)))

(declare-fun res!489373 () Bool)

(assert (=> b!1103832 (=> res!489373 e!699361)))

(declare-fun lt!373650 () Bool)

(assert (=> b!1103832 (= res!489373 lt!373650)))

(declare-fun lt!373629 () Unit!16323)

(assert (=> b!1103832 (= lt!373629 e!699370)))

(declare-fun c!187378 () Bool)

(assert (=> b!1103832 (= c!187378 lt!373650)))

(assert (=> b!1103832 (= lt!373650 (contains!1912 lt!373636 lt!373646))))

(declare-fun b!1103833 () Bool)

(declare-fun err!2830 () Unit!16323)

(assert (=> b!1103833 (= e!699370 err!2830)))

(declare-fun lt!373644 () Unit!16323)

(assert (=> b!1103833 (= lt!373644 (forallContained!535 (list!3861 lt!373636) lambda!43880 lt!373646))))

(assert (=> b!1103833 true))

(declare-fun b!1103834 () Bool)

(declare-fun e!699366 () Bool)

(declare-fun forall!2500 (List!10710 Int) Bool)

(assert (=> b!1103834 (= e!699366 (forall!2500 lt!373647 lambda!43877))))

(declare-fun lt!373652 () List!10710)

(assert (=> b!1103834 (= lt!373652 (list!3861 (filter!387 objs!8 lambda!43880)))))

(declare-fun lt!373638 () List!10710)

(assert (=> b!1103834 (forall!2500 lt!373638 lambda!43877)))

(declare-fun lt!373637 () Unit!16323)

(declare-fun lemmaForallSubseq!54 (List!10710 List!10710 Int) Unit!16323)

(assert (=> b!1103834 (= lt!373637 (lemmaForallSubseq!54 lt!373638 lt!373647 lambda!43877))))

(assert (=> b!1103834 (= lt!373638 (list!3861 (filter!387 objs!8 lambda!43879)))))

(declare-fun lt!373642 () List!10710)

(assert (=> b!1103834 (forall!2500 lt!373642 lambda!43877)))

(declare-fun lt!373651 () Unit!16323)

(assert (=> b!1103834 (= lt!373651 (lemmaForallSubseq!54 lt!373642 lt!373647 lambda!43877))))

(assert (=> b!1103834 (= lt!373642 (list!3861 (filter!387 objs!8 lambda!43878)))))

(declare-fun lt!373641 () Unit!16323)

(declare-fun filterSubseq!50 (List!10710 Int) Unit!16323)

(assert (=> b!1103834 (= lt!373641 (filterSubseq!50 lt!373647 lambda!43880))))

(declare-fun lt!373632 () Unit!16323)

(assert (=> b!1103834 (= lt!373632 (filterSubseq!50 lt!373647 lambda!43879))))

(declare-fun lt!373645 () Unit!16323)

(assert (=> b!1103834 (= lt!373645 (filterSubseq!50 lt!373647 lambda!43878))))

(declare-fun b!1103835 () Bool)

(assert (=> b!1103835 (= e!699369 (< (size!8313 (filter!388 lt!373647 lambda!43878)) (size!8313 lt!373647)))))

(declare-fun b!1103836 () Bool)

(assert (=> b!1103836 (= e!699361 e!699366)))

(declare-fun res!489375 () Bool)

(assert (=> b!1103836 (=> res!489375 e!699366)))

(assert (=> b!1103836 (= res!489375 (>= (size!8312 lt!373636) lt!373634))))

(assert (=> b!1103836 e!699363))

(declare-fun res!489376 () Bool)

(assert (=> b!1103836 (=> res!489376 e!699363)))

(assert (=> b!1103836 (= res!489376 lt!373643)))

(declare-fun lt!373649 () Unit!16323)

(assert (=> b!1103836 (= lt!373649 (lemmaNotForallFilterShorter!68 lt!373647 lambda!43880))))

(declare-fun lt!373639 () Unit!16323)

(assert (=> b!1103836 (= lt!373639 e!699362)))

(declare-fun c!187377 () Bool)

(assert (=> b!1103836 (= c!187377 (forall!2499 objs!8 lambda!43880))))

(declare-fun b!1103837 () Bool)

(declare-fun Unit!16329 () Unit!16323)

(assert (=> b!1103837 (= e!699357 Unit!16329)))

(declare-fun b!1103838 () Bool)

(declare-fun tp!327233 () Bool)

(declare-fun inv!13756 (Conc!3352) Bool)

(assert (=> b!1103838 (= e!699367 (and (inv!13756 (c!187383 objs!8)) tp!327233))))

(declare-fun b!1103839 () Bool)

(declare-fun err!2832 () Unit!16323)

(assert (=> b!1103839 (= e!699362 err!2832)))

(declare-fun lt!373628 () Unit!16323)

(assert (=> b!1103839 (= lt!373628 (forallContained!535 lt!373647 lambda!43880 lt!373646))))

(assert (=> b!1103839 true))

(assert (= (and start!95168 res!489374) b!1103826))

(assert (= (and b!1103826 res!489371) b!1103824))

(assert (= (and b!1103824 res!489369) b!1103827))

(assert (= (and b!1103827 c!187379) b!1103822))

(assert (= (and b!1103827 (not c!187379)) b!1103837))

(assert (= (and b!1103827 res!489368) b!1103829))

(assert (= (and b!1103829 c!187376) b!1103830))

(assert (= (and b!1103829 (not c!187376)) b!1103825))

(assert (= (and b!1103829 (not res!489370)) b!1103835))

(assert (= (and b!1103829 (not res!489372)) b!1103832))

(assert (= (and b!1103832 c!187378) b!1103833))

(assert (= (and b!1103832 (not c!187378)) b!1103828))

(assert (= (and b!1103832 (not res!489373)) b!1103836))

(assert (= (and b!1103836 c!187377) b!1103839))

(assert (= (and b!1103836 (not c!187377)) b!1103823))

(assert (= (and b!1103836 (not res!489376)) b!1103831))

(assert (= (and b!1103836 (not res!489375)) b!1103834))

(assert (= start!95168 b!1103838))

(declare-fun m!1260227 () Bool)

(assert (=> b!1103833 m!1260227))

(assert (=> b!1103833 m!1260227))

(declare-fun m!1260229 () Bool)

(assert (=> b!1103833 m!1260229))

(declare-fun m!1260231 () Bool)

(assert (=> b!1103822 m!1260231))

(assert (=> b!1103822 m!1260231))

(declare-fun m!1260233 () Bool)

(assert (=> b!1103822 m!1260233))

(declare-fun m!1260235 () Bool)

(assert (=> b!1103836 m!1260235))

(declare-fun m!1260237 () Bool)

(assert (=> b!1103836 m!1260237))

(declare-fun m!1260239 () Bool)

(assert (=> b!1103836 m!1260239))

(declare-fun m!1260241 () Bool)

(assert (=> b!1103830 m!1260241))

(assert (=> b!1103830 m!1260241))

(declare-fun m!1260243 () Bool)

(assert (=> b!1103830 m!1260243))

(declare-fun m!1260245 () Bool)

(assert (=> b!1103826 m!1260245))

(declare-fun m!1260247 () Bool)

(assert (=> b!1103838 m!1260247))

(declare-fun m!1260249 () Bool)

(assert (=> b!1103835 m!1260249))

(assert (=> b!1103835 m!1260249))

(declare-fun m!1260251 () Bool)

(assert (=> b!1103835 m!1260251))

(declare-fun m!1260253 () Bool)

(assert (=> b!1103835 m!1260253))

(declare-fun m!1260255 () Bool)

(assert (=> b!1103834 m!1260255))

(declare-fun m!1260257 () Bool)

(assert (=> b!1103834 m!1260257))

(declare-fun m!1260259 () Bool)

(assert (=> b!1103834 m!1260259))

(declare-fun m!1260261 () Bool)

(assert (=> b!1103834 m!1260261))

(declare-fun m!1260263 () Bool)

(assert (=> b!1103834 m!1260263))

(declare-fun m!1260265 () Bool)

(assert (=> b!1103834 m!1260265))

(declare-fun m!1260267 () Bool)

(assert (=> b!1103834 m!1260267))

(declare-fun m!1260269 () Bool)

(assert (=> b!1103834 m!1260269))

(declare-fun m!1260271 () Bool)

(assert (=> b!1103834 m!1260271))

(declare-fun m!1260273 () Bool)

(assert (=> b!1103834 m!1260273))

(declare-fun m!1260275 () Bool)

(assert (=> b!1103834 m!1260275))

(declare-fun m!1260277 () Bool)

(assert (=> b!1103834 m!1260277))

(assert (=> b!1103834 m!1260275))

(declare-fun m!1260279 () Bool)

(assert (=> b!1103834 m!1260279))

(assert (=> b!1103834 m!1260279))

(declare-fun m!1260281 () Bool)

(assert (=> b!1103834 m!1260281))

(assert (=> b!1103834 m!1260271))

(declare-fun m!1260283 () Bool)

(assert (=> b!1103831 m!1260283))

(assert (=> b!1103831 m!1260283))

(declare-fun m!1260285 () Bool)

(assert (=> b!1103831 m!1260285))

(assert (=> b!1103831 m!1260253))

(assert (=> b!1103824 m!1260279))

(declare-fun m!1260287 () Bool)

(assert (=> b!1103824 m!1260287))

(declare-fun m!1260289 () Bool)

(assert (=> b!1103824 m!1260289))

(assert (=> b!1103824 m!1260275))

(assert (=> b!1103824 m!1260271))

(declare-fun m!1260291 () Bool)

(assert (=> b!1103827 m!1260291))

(declare-fun m!1260293 () Bool)

(assert (=> b!1103839 m!1260293))

(declare-fun m!1260295 () Bool)

(assert (=> b!1103832 m!1260295))

(assert (=> b!1103829 m!1260241))

(declare-fun m!1260297 () Bool)

(assert (=> b!1103829 m!1260297))

(declare-fun m!1260299 () Bool)

(assert (=> b!1103829 m!1260299))

(declare-fun m!1260301 () Bool)

(assert (=> b!1103829 m!1260301))

(declare-fun m!1260303 () Bool)

(assert (=> b!1103829 m!1260303))

(declare-fun m!1260305 () Bool)

(assert (=> start!95168 m!1260305))

(declare-fun m!1260307 () Bool)

(assert (=> start!95168 m!1260307))

(push 1)

(assert (not b!1103826))

(assert (not b!1103836))

(assert (not b!1103827))

(assert (not b!1103833))

(assert (not b!1103822))

(assert (not b!1103830))

(assert (not b!1103850))

(assert (not b!1103839))

(assert (not start!95168))

(assert (not b!1103838))

(assert (not b!1103834))

(assert (not b!1103846))

(assert (not b!1103848))

(assert (not b!1103824))

(assert (not b!1103835))

(assert (not b!1103832))

(assert (not b!1103849))

(assert (not b!1103829))

(assert (not b!1103847))

(assert (not b!1103831))

(assert (not b!1103851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!312513 () Bool)

(declare-fun lt!373743 () Int)

(assert (=> d!312513 (>= lt!373743 0)))

(declare-fun e!699442 () Int)

(assert (=> d!312513 (= lt!373743 e!699442)))

(declare-fun c!187409 () Bool)

(assert (=> d!312513 (= c!187409 (is-Nil!10694 (filter!388 lt!373647 lambda!43880)))))

(assert (=> d!312513 (= (size!8313 (filter!388 lt!373647 lambda!43880)) lt!373743)))

(declare-fun b!1103936 () Bool)

(assert (=> b!1103936 (= e!699442 0)))

(declare-fun b!1103937 () Bool)

(assert (=> b!1103937 (= e!699442 (+ 1 (size!8313 (t!104516 (filter!388 lt!373647 lambda!43880)))))))

(assert (= (and d!312513 c!187409) b!1103936))

(assert (= (and d!312513 (not c!187409)) b!1103937))

(declare-fun m!1260393 () Bool)

(assert (=> b!1103937 m!1260393))

(assert (=> b!1103831 d!312513))

(declare-fun b!1103960 () Bool)

(declare-fun e!699454 () List!10710)

(assert (=> b!1103960 (= e!699454 Nil!10694)))

(declare-fun b!1103961 () Bool)

(declare-fun res!489414 () Bool)

(declare-fun e!699455 () Bool)

(assert (=> b!1103961 (=> (not res!489414) (not e!699455))))

(declare-fun lt!373747 () List!10710)

(declare-fun content!1547 (List!10710) (Set tuple2!11808))

(assert (=> b!1103961 (= res!489414 (set.subset (content!1547 lt!373747) (content!1547 lt!373647)))))

(declare-fun bm!80479 () Bool)

(declare-fun call!80484 () List!10710)

(assert (=> bm!80479 (= call!80484 (filter!388 (t!104516 lt!373647) lambda!43880))))

(declare-fun b!1103962 () Bool)

(declare-fun e!699456 () List!10710)

(assert (=> b!1103962 (= e!699456 call!80484)))

(declare-fun b!1103963 () Bool)

(assert (=> b!1103963 (= e!699456 (Cons!10694 (h!16095 lt!373647) call!80484))))

(declare-fun b!1103964 () Bool)

(assert (=> b!1103964 (= e!699455 (forall!2500 lt!373747 lambda!43880))))

(declare-fun d!312515 () Bool)

(assert (=> d!312515 e!699455))

(declare-fun res!489415 () Bool)

(assert (=> d!312515 (=> (not res!489415) (not e!699455))))

(assert (=> d!312515 (= res!489415 (<= (size!8313 lt!373747) (size!8313 lt!373647)))))

(assert (=> d!312515 (= lt!373747 e!699454)))

(declare-fun c!187417 () Bool)

(assert (=> d!312515 (= c!187417 (is-Nil!10694 lt!373647))))

(assert (=> d!312515 (= (filter!388 lt!373647 lambda!43880) lt!373747)))

(declare-fun b!1103965 () Bool)

(assert (=> b!1103965 (= e!699454 e!699456)))

(declare-fun c!187416 () Bool)

(declare-fun dynLambda!4728 (Int tuple2!11808) Bool)

(assert (=> b!1103965 (= c!187416 (dynLambda!4728 lambda!43880 (h!16095 lt!373647)))))

(assert (= (and d!312515 c!187417) b!1103960))

(assert (= (and d!312515 (not c!187417)) b!1103965))

(assert (= (and b!1103965 c!187416) b!1103963))

(assert (= (and b!1103965 (not c!187416)) b!1103962))

(assert (= (or b!1103963 b!1103962) bm!80479))

(assert (= (and d!312515 res!489415) b!1103961))

(assert (= (and b!1103961 res!489414) b!1103964))

(declare-fun b_lambda!32563 () Bool)

(assert (=> (not b_lambda!32563) (not b!1103965)))

(declare-fun m!1260395 () Bool)

(assert (=> d!312515 m!1260395))

(assert (=> d!312515 m!1260253))

(declare-fun m!1260397 () Bool)

(assert (=> b!1103961 m!1260397))

(declare-fun m!1260399 () Bool)

(assert (=> b!1103961 m!1260399))

(declare-fun m!1260401 () Bool)

(assert (=> b!1103964 m!1260401))

(declare-fun m!1260403 () Bool)

(assert (=> b!1103965 m!1260403))

(declare-fun m!1260405 () Bool)

(assert (=> bm!80479 m!1260405))

(assert (=> b!1103831 d!312515))

(declare-fun d!312517 () Bool)

(declare-fun lt!373748 () Int)

(assert (=> d!312517 (>= lt!373748 0)))

(declare-fun e!699457 () Int)

(assert (=> d!312517 (= lt!373748 e!699457)))

(declare-fun c!187418 () Bool)

(assert (=> d!312517 (= c!187418 (is-Nil!10694 lt!373647))))

(assert (=> d!312517 (= (size!8313 lt!373647) lt!373748)))

(declare-fun b!1103966 () Bool)

(assert (=> b!1103966 (= e!699457 0)))

(declare-fun b!1103967 () Bool)

(assert (=> b!1103967 (= e!699457 (+ 1 (size!8313 (t!104516 lt!373647))))))

(assert (= (and d!312517 c!187418) b!1103966))

(assert (= (and d!312517 (not c!187418)) b!1103967))

(declare-fun m!1260415 () Bool)

(assert (=> b!1103967 m!1260415))

(assert (=> b!1103831 d!312517))

(declare-fun d!312519 () Bool)

(declare-fun lt!373752 () Bool)

(declare-fun contains!1914 (List!10710 tuple2!11808) Bool)

(assert (=> d!312519 (= lt!373752 (contains!1914 (list!3861 lt!373636) lt!373646))))

(declare-fun contains!1915 (Conc!3352 tuple2!11808) Bool)

(assert (=> d!312519 (= lt!373752 (contains!1915 (c!187383 lt!373636) lt!373646))))

(assert (=> d!312519 (= (contains!1912 lt!373636 lt!373646) lt!373752)))

(declare-fun bs!259775 () Bool)

(assert (= bs!259775 d!312519))

(assert (=> bs!259775 m!1260227))

(assert (=> bs!259775 m!1260227))

(declare-fun m!1260423 () Bool)

(assert (=> bs!259775 m!1260423))

(declare-fun m!1260425 () Bool)

(assert (=> bs!259775 m!1260425))

(assert (=> b!1103832 d!312519))

(declare-fun d!312525 () Bool)

(assert (=> d!312525 (dynLambda!4728 lambda!43878 lt!373646)))

(declare-fun lt!373757 () Unit!16323)

(declare-fun choose!7137 (List!10710 Int tuple2!11808) Unit!16323)

(assert (=> d!312525 (= lt!373757 (choose!7137 (list!3861 lt!373633) lambda!43878 lt!373646))))

(declare-fun e!699461 () Bool)

(assert (=> d!312525 e!699461))

(declare-fun res!489418 () Bool)

(assert (=> d!312525 (=> (not res!489418) (not e!699461))))

(assert (=> d!312525 (= res!489418 (forall!2500 (list!3861 lt!373633) lambda!43878))))

(assert (=> d!312525 (= (forallContained!535 (list!3861 lt!373633) lambda!43878 lt!373646) lt!373757)))

(declare-fun b!1103972 () Bool)

(assert (=> b!1103972 (= e!699461 (contains!1914 (list!3861 lt!373633) lt!373646))))

(assert (= (and d!312525 res!489418) b!1103972))

(declare-fun b_lambda!32567 () Bool)

(assert (=> (not b_lambda!32567) (not d!312525)))

(declare-fun m!1260427 () Bool)

(assert (=> d!312525 m!1260427))

(assert (=> d!312525 m!1260231))

(declare-fun m!1260429 () Bool)

(assert (=> d!312525 m!1260429))

(assert (=> d!312525 m!1260231))

(declare-fun m!1260431 () Bool)

(assert (=> d!312525 m!1260431))

(assert (=> b!1103972 m!1260231))

(declare-fun m!1260433 () Bool)

(assert (=> b!1103972 m!1260433))

(assert (=> b!1103822 d!312525))

(declare-fun d!312527 () Bool)

(declare-fun list!3863 (Conc!3352) List!10710)

(assert (=> d!312527 (= (list!3861 lt!373633) (list!3863 (c!187383 lt!373633)))))

(declare-fun bs!259777 () Bool)

(assert (= bs!259777 d!312527))

(declare-fun m!1260435 () Bool)

(assert (=> bs!259777 m!1260435))

(assert (=> b!1103822 d!312527))

(declare-fun d!312529 () Bool)

(assert (=> d!312529 (dynLambda!4728 lambda!43880 lt!373646)))

(declare-fun lt!373759 () Unit!16323)

(assert (=> d!312529 (= lt!373759 (choose!7137 (list!3861 lt!373636) lambda!43880 lt!373646))))

(declare-fun e!699462 () Bool)

(assert (=> d!312529 e!699462))

(declare-fun res!489419 () Bool)

(assert (=> d!312529 (=> (not res!489419) (not e!699462))))

(assert (=> d!312529 (= res!489419 (forall!2500 (list!3861 lt!373636) lambda!43880))))

(assert (=> d!312529 (= (forallContained!535 (list!3861 lt!373636) lambda!43880 lt!373646) lt!373759)))

(declare-fun b!1103973 () Bool)

(assert (=> b!1103973 (= e!699462 (contains!1914 (list!3861 lt!373636) lt!373646))))

(assert (= (and d!312529 res!489419) b!1103973))

(declare-fun b_lambda!32569 () Bool)

(assert (=> (not b_lambda!32569) (not d!312529)))

(declare-fun m!1260441 () Bool)

(assert (=> d!312529 m!1260441))

(assert (=> d!312529 m!1260227))

(declare-fun m!1260443 () Bool)

(assert (=> d!312529 m!1260443))

(assert (=> d!312529 m!1260227))

(declare-fun m!1260445 () Bool)

(assert (=> d!312529 m!1260445))

(assert (=> b!1103973 m!1260227))

(assert (=> b!1103973 m!1260423))

(assert (=> b!1103833 d!312529))

(declare-fun d!312533 () Bool)

(assert (=> d!312533 (= (list!3861 lt!373636) (list!3863 (c!187383 lt!373636)))))

(declare-fun bs!259778 () Bool)

(assert (= bs!259778 d!312533))

(declare-fun m!1260447 () Bool)

(assert (=> bs!259778 m!1260447))

(assert (=> b!1103833 d!312533))

(declare-fun d!312535 () Bool)

(assert (=> d!312535 (dynLambda!4728 lambda!43880 lt!373646)))

(declare-fun lt!373761 () Unit!16323)

(assert (=> d!312535 (= lt!373761 (choose!7137 lt!373647 lambda!43880 lt!373646))))

(declare-fun e!699464 () Bool)

(assert (=> d!312535 e!699464))

(declare-fun res!489420 () Bool)

(assert (=> d!312535 (=> (not res!489420) (not e!699464))))

(assert (=> d!312535 (= res!489420 (forall!2500 lt!373647 lambda!43880))))

(assert (=> d!312535 (= (forallContained!535 lt!373647 lambda!43880 lt!373646) lt!373761)))

(declare-fun b!1103976 () Bool)

(assert (=> b!1103976 (= e!699464 (contains!1914 lt!373647 lt!373646))))

(assert (= (and d!312535 res!489420) b!1103976))

(declare-fun b_lambda!32571 () Bool)

(assert (=> (not b_lambda!32571) (not d!312535)))

(assert (=> d!312535 m!1260441))

(declare-fun m!1260451 () Bool)

(assert (=> d!312535 m!1260451))

(declare-fun m!1260453 () Bool)

(assert (=> d!312535 m!1260453))

(declare-fun m!1260455 () Bool)

(assert (=> b!1103976 m!1260455))

(assert (=> b!1103839 d!312535))

(declare-fun d!312539 () Bool)

(assert (=> d!312539 (= (list!3861 objs!8) (list!3863 (c!187383 objs!8)))))

(declare-fun bs!259779 () Bool)

(assert (= bs!259779 d!312539))

(declare-fun m!1260457 () Bool)

(assert (=> bs!259779 m!1260457))

(assert (=> b!1103829 d!312539))

(declare-fun d!312541 () Bool)

(declare-fun e!699470 () Bool)

(assert (=> d!312541 e!699470))

(declare-fun res!489425 () Bool)

(assert (=> d!312541 (=> res!489425 e!699470)))

(assert (=> d!312541 (= res!489425 (isEmpty!6706 lt!373647))))

(declare-fun lt!373765 () Unit!16323)

(declare-fun choose!7138 (List!10710 Int) Unit!16323)

(assert (=> d!312541 (= lt!373765 (choose!7138 lt!373647 lambda!43878))))

(assert (=> d!312541 (not (forall!2500 lt!373647 lambda!43878))))

(assert (=> d!312541 (= (lemmaNotForallFilterShorter!68 lt!373647 lambda!43878) lt!373765)))

(declare-fun b!1103985 () Bool)

(assert (=> b!1103985 (= e!699470 (< (size!8313 (filter!388 lt!373647 lambda!43878)) (size!8313 lt!373647)))))

(assert (= (and d!312541 (not res!489425)) b!1103985))

(assert (=> d!312541 m!1260303))

(declare-fun m!1260469 () Bool)

(assert (=> d!312541 m!1260469))

(declare-fun m!1260471 () Bool)

(assert (=> d!312541 m!1260471))

(assert (=> b!1103985 m!1260249))

(assert (=> b!1103985 m!1260249))

(assert (=> b!1103985 m!1260251))

(assert (=> b!1103985 m!1260253))

(assert (=> b!1103829 d!312541))

(declare-fun d!312545 () Bool)

(declare-fun lt!373770 () Int)

(assert (=> d!312545 (= lt!373770 (size!8313 (list!3861 lt!373633)))))

(declare-fun size!8317 (Conc!3352) Int)

(assert (=> d!312545 (= lt!373770 (size!8317 (c!187383 lt!373633)))))

(assert (=> d!312545 (= (size!8312 lt!373633) lt!373770)))

(declare-fun bs!259780 () Bool)

(assert (= bs!259780 d!312545))

(assert (=> bs!259780 m!1260231))

(assert (=> bs!259780 m!1260231))

(declare-fun m!1260473 () Bool)

(assert (=> bs!259780 m!1260473))

(declare-fun m!1260475 () Bool)

(assert (=> bs!259780 m!1260475))

(assert (=> b!1103829 d!312545))

(declare-fun d!312547 () Bool)

(declare-fun lt!373774 () Bool)

(assert (=> d!312547 (= lt!373774 (forall!2500 (list!3861 objs!8) lambda!43878))))

(declare-fun forall!2503 (Conc!3352 Int) Bool)

(assert (=> d!312547 (= lt!373774 (forall!2503 (c!187383 objs!8) lambda!43878))))

(assert (=> d!312547 (= (forall!2499 objs!8 lambda!43878) lt!373774)))

(declare-fun bs!259781 () Bool)

(assert (= bs!259781 d!312547))

(assert (=> bs!259781 m!1260241))

(assert (=> bs!259781 m!1260241))

(declare-fun m!1260479 () Bool)

(assert (=> bs!259781 m!1260479))

(declare-fun m!1260483 () Bool)

(assert (=> bs!259781 m!1260483))

(assert (=> b!1103829 d!312547))

(declare-fun d!312549 () Bool)

(assert (=> d!312549 (= (isEmpty!6706 lt!373647) (is-Nil!10694 lt!373647))))

(assert (=> b!1103829 d!312549))

(declare-fun d!312553 () Bool)

(assert (=> d!312553 (dynLambda!4728 lambda!43878 lt!373646)))

(declare-fun lt!373775 () Unit!16323)

(assert (=> d!312553 (= lt!373775 (choose!7137 (list!3861 objs!8) lambda!43878 lt!373646))))

(declare-fun e!699474 () Bool)

(assert (=> d!312553 e!699474))

(declare-fun res!489429 () Bool)

(assert (=> d!312553 (=> (not res!489429) (not e!699474))))

(assert (=> d!312553 (= res!489429 (forall!2500 (list!3861 objs!8) lambda!43878))))

(assert (=> d!312553 (= (forallContained!535 (list!3861 objs!8) lambda!43878 lt!373646) lt!373775)))

(declare-fun b!1103989 () Bool)

(assert (=> b!1103989 (= e!699474 (contains!1914 (list!3861 objs!8) lt!373646))))

(assert (= (and d!312553 res!489429) b!1103989))

(declare-fun b_lambda!32577 () Bool)

(assert (=> (not b_lambda!32577) (not d!312553)))

(assert (=> d!312553 m!1260427))

(assert (=> d!312553 m!1260241))

(declare-fun m!1260489 () Bool)

(assert (=> d!312553 m!1260489))

(assert (=> d!312553 m!1260241))

(assert (=> d!312553 m!1260479))

(assert (=> b!1103989 m!1260241))

(declare-fun m!1260491 () Bool)

(assert (=> b!1103989 m!1260491))

(assert (=> b!1103830 d!312553))

(assert (=> b!1103830 d!312539))

(declare-fun d!312555 () Bool)

(declare-fun lt!373776 () Int)

(assert (=> d!312555 (= lt!373776 (size!8313 (list!3861 objs!8)))))

(assert (=> d!312555 (= lt!373776 (size!8317 (c!187383 objs!8)))))

(assert (=> d!312555 (= (size!8312 objs!8) lt!373776)))

(declare-fun bs!259782 () Bool)

(assert (= bs!259782 d!312555))

(assert (=> bs!259782 m!1260241))

(assert (=> bs!259782 m!1260241))

(declare-fun m!1260493 () Bool)

(assert (=> bs!259782 m!1260493))

(declare-fun m!1260495 () Bool)

(assert (=> bs!259782 m!1260495))

(assert (=> b!1103826 d!312555))

(declare-fun d!312557 () Bool)

(declare-fun c!187425 () Bool)

(assert (=> d!312557 (= c!187425 (is-Node!3352 (c!187383 objs!8)))))

(declare-fun e!699479 () Bool)

(assert (=> d!312557 (= (inv!13756 (c!187383 objs!8)) e!699479)))

(declare-fun b!1103996 () Bool)

(declare-fun inv!13759 (Conc!3352) Bool)

(assert (=> b!1103996 (= e!699479 (inv!13759 (c!187383 objs!8)))))

(declare-fun b!1103997 () Bool)

(declare-fun e!699480 () Bool)

(assert (=> b!1103997 (= e!699479 e!699480)))

(declare-fun res!489432 () Bool)

(assert (=> b!1103997 (= res!489432 (not (is-Leaf!5279 (c!187383 objs!8))))))

(assert (=> b!1103997 (=> res!489432 e!699480)))

(declare-fun b!1103998 () Bool)

(declare-fun inv!13760 (Conc!3352) Bool)

(assert (=> b!1103998 (= e!699480 (inv!13760 (c!187383 objs!8)))))

(assert (= (and d!312557 c!187425) b!1103996))

(assert (= (and d!312557 (not c!187425)) b!1103997))

(assert (= (and b!1103997 (not res!489432)) b!1103998))

(declare-fun m!1260499 () Bool)

(assert (=> b!1103996 m!1260499))

(declare-fun m!1260501 () Bool)

(assert (=> b!1103998 m!1260501))

(assert (=> b!1103838 d!312557))

(declare-fun d!312561 () Bool)

(declare-fun lt!373777 () Bool)

(assert (=> d!312561 (= lt!373777 (contains!1914 (list!3861 lt!373633) lt!373646))))

(assert (=> d!312561 (= lt!373777 (contains!1915 (c!187383 lt!373633) lt!373646))))

(assert (=> d!312561 (= (contains!1912 lt!373633 lt!373646) lt!373777)))

(declare-fun bs!259784 () Bool)

(assert (= bs!259784 d!312561))

(assert (=> bs!259784 m!1260231))

(assert (=> bs!259784 m!1260231))

(assert (=> bs!259784 m!1260433))

(declare-fun m!1260503 () Bool)

(assert (=> bs!259784 m!1260503))

(assert (=> b!1103827 d!312561))

(declare-fun d!312563 () Bool)

(declare-fun e!699483 () Bool)

(assert (=> d!312563 e!699483))

(declare-fun res!489435 () Bool)

(assert (=> d!312563 (=> (not res!489435) (not e!699483))))

(declare-fun isBalanced!928 (Conc!3352) Bool)

(declare-fun filter!391 (Conc!3352 Int) Conc!3352)

(assert (=> d!312563 (= res!489435 (isBalanced!928 (filter!391 (c!187383 objs!8) lambda!43880)))))

(declare-fun lt!373780 () BalanceConc!6718)

(assert (=> d!312563 (= lt!373780 (BalanceConc!6719 (filter!391 (c!187383 objs!8) lambda!43880)))))

(assert (=> d!312563 (= (filter!387 objs!8 lambda!43880) lt!373780)))

(declare-fun b!1104001 () Bool)

(assert (=> b!1104001 (= e!699483 (= (list!3861 lt!373780) (filter!388 (list!3861 objs!8) lambda!43880)))))

(assert (= (and d!312563 res!489435) b!1104001))

(declare-fun m!1260505 () Bool)

(assert (=> d!312563 m!1260505))

(assert (=> d!312563 m!1260505))

(declare-fun m!1260507 () Bool)

(assert (=> d!312563 m!1260507))

(declare-fun m!1260509 () Bool)

(assert (=> b!1104001 m!1260509))

(assert (=> b!1104001 m!1260241))

(assert (=> b!1104001 m!1260241))

(declare-fun m!1260511 () Bool)

(assert (=> b!1104001 m!1260511))

(assert (=> b!1103834 d!312563))

(declare-fun d!312565 () Bool)

(assert (=> d!312565 (= (list!3861 (filter!387 objs!8 lambda!43879)) (list!3863 (c!187383 (filter!387 objs!8 lambda!43879))))))

(declare-fun bs!259785 () Bool)

(assert (= bs!259785 d!312565))

(declare-fun m!1260513 () Bool)

(assert (=> bs!259785 m!1260513))

(assert (=> b!1103834 d!312565))

(declare-fun d!312567 () Bool)

(declare-fun subseq!160 (List!10710 List!10710) Bool)

(assert (=> d!312567 (subseq!160 (filter!388 lt!373647 lambda!43878) lt!373647)))

(declare-fun lt!373783 () Unit!16323)

(declare-fun choose!7139 (List!10710 Int) Unit!16323)

(assert (=> d!312567 (= lt!373783 (choose!7139 lt!373647 lambda!43878))))

(assert (=> d!312567 (= (filterSubseq!50 lt!373647 lambda!43878) lt!373783)))

(declare-fun bs!259786 () Bool)

(assert (= bs!259786 d!312567))

(assert (=> bs!259786 m!1260249))

(assert (=> bs!259786 m!1260249))

(declare-fun m!1260515 () Bool)

(assert (=> bs!259786 m!1260515))

(declare-fun m!1260517 () Bool)

(assert (=> bs!259786 m!1260517))

(assert (=> b!1103834 d!312567))

(declare-fun d!312569 () Bool)

(assert (=> d!312569 (= (list!3861 (filter!387 objs!8 lambda!43878)) (list!3863 (c!187383 (filter!387 objs!8 lambda!43878))))))

(declare-fun bs!259787 () Bool)

(assert (= bs!259787 d!312569))

(declare-fun m!1260519 () Bool)

(assert (=> bs!259787 m!1260519))

(assert (=> b!1103834 d!312569))

(declare-fun d!312571 () Bool)

(assert (=> d!312571 (forall!2500 lt!373642 lambda!43877)))

(declare-fun lt!373788 () Unit!16323)

(declare-fun choose!7140 (List!10710 List!10710 Int) Unit!16323)

(assert (=> d!312571 (= lt!373788 (choose!7140 lt!373642 lt!373647 lambda!43877))))

(assert (=> d!312571 (forall!2500 lt!373647 lambda!43877)))

(assert (=> d!312571 (= (lemmaForallSubseq!54 lt!373642 lt!373647 lambda!43877) lt!373788)))

(declare-fun bs!259788 () Bool)

(assert (= bs!259788 d!312571))

(assert (=> bs!259788 m!1260267))

(declare-fun m!1260521 () Bool)

(assert (=> bs!259788 m!1260521))

(assert (=> bs!259788 m!1260257))

(assert (=> b!1103834 d!312571))

(declare-fun d!312573 () Bool)

(declare-fun res!489443 () Bool)

(declare-fun e!699491 () Bool)

(assert (=> d!312573 (=> res!489443 e!699491)))

(assert (=> d!312573 (= res!489443 (is-Nil!10694 lt!373642))))

(assert (=> d!312573 (= (forall!2500 lt!373642 lambda!43877) e!699491)))

(declare-fun b!1104009 () Bool)

(declare-fun e!699492 () Bool)

(assert (=> b!1104009 (= e!699491 e!699492)))

(declare-fun res!489444 () Bool)

(assert (=> b!1104009 (=> (not res!489444) (not e!699492))))

(assert (=> b!1104009 (= res!489444 (dynLambda!4728 lambda!43877 (h!16095 lt!373642)))))

(declare-fun b!1104010 () Bool)

(assert (=> b!1104010 (= e!699492 (forall!2500 (t!104516 lt!373642) lambda!43877))))

(assert (= (and d!312573 (not res!489443)) b!1104009))

(assert (= (and b!1104009 res!489444) b!1104010))

(declare-fun b_lambda!32579 () Bool)

(assert (=> (not b_lambda!32579) (not b!1104009)))

(declare-fun m!1260529 () Bool)

(assert (=> b!1104009 m!1260529))

(declare-fun m!1260531 () Bool)

(assert (=> b!1104010 m!1260531))

(assert (=> b!1103834 d!312573))

(declare-fun d!312575 () Bool)

(assert (=> d!312575 (subseq!160 (filter!388 lt!373647 lambda!43879) lt!373647)))

(declare-fun lt!373790 () Unit!16323)

(assert (=> d!312575 (= lt!373790 (choose!7139 lt!373647 lambda!43879))))

(assert (=> d!312575 (= (filterSubseq!50 lt!373647 lambda!43879) lt!373790)))

(declare-fun bs!259789 () Bool)

(assert (= bs!259789 d!312575))

(declare-fun m!1260535 () Bool)

(assert (=> bs!259789 m!1260535))

(assert (=> bs!259789 m!1260535))

(declare-fun m!1260537 () Bool)

(assert (=> bs!259789 m!1260537))

(declare-fun m!1260539 () Bool)

(assert (=> bs!259789 m!1260539))

(assert (=> b!1103834 d!312575))

(declare-fun d!312579 () Bool)

(assert (=> d!312579 (forall!2500 lt!373638 lambda!43877)))

(declare-fun lt!373792 () Unit!16323)

(assert (=> d!312579 (= lt!373792 (choose!7140 lt!373638 lt!373647 lambda!43877))))

(assert (=> d!312579 (forall!2500 lt!373647 lambda!43877)))

(assert (=> d!312579 (= (lemmaForallSubseq!54 lt!373638 lt!373647 lambda!43877) lt!373792)))

(declare-fun bs!259791 () Bool)

(assert (= bs!259791 d!312579))

(assert (=> bs!259791 m!1260265))

(declare-fun m!1260543 () Bool)

(assert (=> bs!259791 m!1260543))

(assert (=> bs!259791 m!1260257))

(assert (=> b!1103834 d!312579))

(declare-fun d!312583 () Bool)

(declare-fun res!489445 () Bool)

(declare-fun e!699493 () Bool)

(assert (=> d!312583 (=> res!489445 e!699493)))

(assert (=> d!312583 (= res!489445 (is-Nil!10694 lt!373638))))

(assert (=> d!312583 (= (forall!2500 lt!373638 lambda!43877) e!699493)))

(declare-fun b!1104011 () Bool)

(declare-fun e!699494 () Bool)

(assert (=> b!1104011 (= e!699493 e!699494)))

(declare-fun res!489446 () Bool)

(assert (=> b!1104011 (=> (not res!489446) (not e!699494))))

(assert (=> b!1104011 (= res!489446 (dynLambda!4728 lambda!43877 (h!16095 lt!373638)))))

(declare-fun b!1104012 () Bool)

(assert (=> b!1104012 (= e!699494 (forall!2500 (t!104516 lt!373638) lambda!43877))))

(assert (= (and d!312583 (not res!489445)) b!1104011))

(assert (= (and b!1104011 res!489446) b!1104012))

(declare-fun b_lambda!32581 () Bool)

(assert (=> (not b_lambda!32581) (not b!1104011)))

(declare-fun m!1260545 () Bool)

(assert (=> b!1104011 m!1260545))

(declare-fun m!1260547 () Bool)

(assert (=> b!1104012 m!1260547))

(assert (=> b!1103834 d!312583))

(declare-fun d!312585 () Bool)

(declare-fun e!699496 () Bool)

(assert (=> d!312585 e!699496))

(declare-fun res!489448 () Bool)

(assert (=> d!312585 (=> (not res!489448) (not e!699496))))

(assert (=> d!312585 (= res!489448 (isBalanced!928 (filter!391 (c!187383 objs!8) lambda!43879)))))

(declare-fun lt!373794 () BalanceConc!6718)

(assert (=> d!312585 (= lt!373794 (BalanceConc!6719 (filter!391 (c!187383 objs!8) lambda!43879)))))

(assert (=> d!312585 (= (filter!387 objs!8 lambda!43879) lt!373794)))

(declare-fun b!1104014 () Bool)

(assert (=> b!1104014 (= e!699496 (= (list!3861 lt!373794) (filter!388 (list!3861 objs!8) lambda!43879)))))

(assert (= (and d!312585 res!489448) b!1104014))

(declare-fun m!1260551 () Bool)

(assert (=> d!312585 m!1260551))

(assert (=> d!312585 m!1260551))

(declare-fun m!1260553 () Bool)

(assert (=> d!312585 m!1260553))

(declare-fun m!1260555 () Bool)

(assert (=> b!1104014 m!1260555))

(assert (=> b!1104014 m!1260241))

(assert (=> b!1104014 m!1260241))

(declare-fun m!1260559 () Bool)

(assert (=> b!1104014 m!1260559))

(assert (=> b!1103834 d!312585))

(declare-fun d!312587 () Bool)

(declare-fun res!489449 () Bool)

(declare-fun e!699497 () Bool)

(assert (=> d!312587 (=> res!489449 e!699497)))

(assert (=> d!312587 (= res!489449 (is-Nil!10694 lt!373647))))

(assert (=> d!312587 (= (forall!2500 lt!373647 lambda!43877) e!699497)))

(declare-fun b!1104015 () Bool)

(declare-fun e!699498 () Bool)

(assert (=> b!1104015 (= e!699497 e!699498)))

(declare-fun res!489450 () Bool)

(assert (=> b!1104015 (=> (not res!489450) (not e!699498))))

(assert (=> b!1104015 (= res!489450 (dynLambda!4728 lambda!43877 (h!16095 lt!373647)))))

(declare-fun b!1104016 () Bool)

(assert (=> b!1104016 (= e!699498 (forall!2500 (t!104516 lt!373647) lambda!43877))))

(assert (= (and d!312587 (not res!489449)) b!1104015))

(assert (= (and b!1104015 res!489450) b!1104016))

(declare-fun b_lambda!32583 () Bool)

(assert (=> (not b_lambda!32583) (not b!1104015)))

(declare-fun m!1260565 () Bool)

(assert (=> b!1104015 m!1260565))

(declare-fun m!1260567 () Bool)

(assert (=> b!1104016 m!1260567))

(assert (=> b!1103834 d!312587))

(declare-fun d!312591 () Bool)

(declare-fun e!699499 () Bool)

(assert (=> d!312591 e!699499))

(declare-fun res!489451 () Bool)

(assert (=> d!312591 (=> (not res!489451) (not e!699499))))

(assert (=> d!312591 (= res!489451 (isBalanced!928 (filter!391 (c!187383 objs!8) lambda!43878)))))

(declare-fun lt!373795 () BalanceConc!6718)

(assert (=> d!312591 (= lt!373795 (BalanceConc!6719 (filter!391 (c!187383 objs!8) lambda!43878)))))

(assert (=> d!312591 (= (filter!387 objs!8 lambda!43878) lt!373795)))

(declare-fun b!1104017 () Bool)

(assert (=> b!1104017 (= e!699499 (= (list!3861 lt!373795) (filter!388 (list!3861 objs!8) lambda!43878)))))

(assert (= (and d!312591 res!489451) b!1104017))

(declare-fun m!1260569 () Bool)

(assert (=> d!312591 m!1260569))

(assert (=> d!312591 m!1260569))

(declare-fun m!1260571 () Bool)

(assert (=> d!312591 m!1260571))

(declare-fun m!1260573 () Bool)

(assert (=> b!1104017 m!1260573))

(assert (=> b!1104017 m!1260241))

(assert (=> b!1104017 m!1260241))

(declare-fun m!1260575 () Bool)

(assert (=> b!1104017 m!1260575))

(assert (=> b!1103834 d!312591))

(declare-fun d!312593 () Bool)

(assert (=> d!312593 (= (list!3861 (filter!387 objs!8 lambda!43880)) (list!3863 (c!187383 (filter!387 objs!8 lambda!43880))))))

(declare-fun bs!259792 () Bool)

(assert (= bs!259792 d!312593))

(declare-fun m!1260577 () Bool)

(assert (=> bs!259792 m!1260577))

(assert (=> b!1103834 d!312593))

(declare-fun d!312595 () Bool)

(assert (=> d!312595 (subseq!160 (filter!388 lt!373647 lambda!43880) lt!373647)))

(declare-fun lt!373796 () Unit!16323)

(assert (=> d!312595 (= lt!373796 (choose!7139 lt!373647 lambda!43880))))

(assert (=> d!312595 (= (filterSubseq!50 lt!373647 lambda!43880) lt!373796)))

(declare-fun bs!259793 () Bool)

(assert (= bs!259793 d!312595))

(assert (=> bs!259793 m!1260283))

(assert (=> bs!259793 m!1260283))

(declare-fun m!1260579 () Bool)

(assert (=> bs!259793 m!1260579))

(declare-fun m!1260581 () Bool)

(assert (=> bs!259793 m!1260581))

(assert (=> b!1103834 d!312595))

(declare-fun d!312597 () Bool)

(declare-fun lt!373797 () Bool)

(assert (=> d!312597 (= lt!373797 (forall!2500 (list!3861 objs!8) lambda!43877))))

(assert (=> d!312597 (= lt!373797 (forall!2503 (c!187383 objs!8) lambda!43877))))

(assert (=> d!312597 (= (forall!2499 objs!8 lambda!43877) lt!373797)))

(declare-fun bs!259794 () Bool)

(assert (= bs!259794 d!312597))

(assert (=> bs!259794 m!1260241))

(assert (=> bs!259794 m!1260241))

(declare-fun m!1260583 () Bool)

(assert (=> bs!259794 m!1260583))

(declare-fun m!1260585 () Bool)

(assert (=> bs!259794 m!1260585))

(assert (=> start!95168 d!312597))

(declare-fun d!312599 () Bool)

(assert (=> d!312599 (= (inv!13755 objs!8) (isBalanced!928 (c!187383 objs!8)))))

(declare-fun bs!259795 () Bool)

(assert (= bs!259795 d!312599))

(declare-fun m!1260587 () Bool)

(assert (=> bs!259795 m!1260587))

(assert (=> start!95168 d!312599))

(assert (=> b!1103824 d!312563))

(assert (=> b!1103824 d!312591))

(declare-fun d!312601 () Bool)

(declare-fun lt!373798 () Bool)

(assert (=> d!312601 (= lt!373798 (contains!1914 (list!3861 objs!8) lt!373646))))

(assert (=> d!312601 (= lt!373798 (contains!1915 (c!187383 objs!8) lt!373646))))

(assert (=> d!312601 (= (contains!1912 objs!8 lt!373646) lt!373798)))

(declare-fun bs!259796 () Bool)

(assert (= bs!259796 d!312601))

(assert (=> bs!259796 m!1260241))

(assert (=> bs!259796 m!1260241))

(assert (=> bs!259796 m!1260491))

(declare-fun m!1260589 () Bool)

(assert (=> bs!259796 m!1260589))

(assert (=> b!1103824 d!312601))

(declare-fun d!312603 () Bool)

(declare-fun lt!373801 () tuple2!11808)

(declare-fun apply!2186 (List!10710 Int) tuple2!11808)

(assert (=> d!312603 (= lt!373801 (apply!2186 (list!3861 objs!8) (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2)))))))

(declare-fun apply!2187 (Conc!3352 Int) tuple2!11808)

(assert (=> d!312603 (= lt!373801 (apply!2187 (c!187383 objs!8) (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2)))))))

(declare-fun e!699502 () Bool)

(assert (=> d!312603 e!699502))

(declare-fun res!489454 () Bool)

(assert (=> d!312603 (=> (not res!489454) (not e!699502))))

(assert (=> d!312603 (= res!489454 (<= 0 (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2)))))))

(assert (=> d!312603 (= (apply!2184 objs!8 (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2)))) lt!373801)))

(declare-fun b!1104020 () Bool)

(assert (=> b!1104020 (= e!699502 (< (ite (>= lt!373634 0) (div lt!373634 2) (- (div (- lt!373634) 2))) (size!8312 objs!8)))))

(assert (= (and d!312603 res!489454) b!1104020))

(assert (=> d!312603 m!1260241))

(assert (=> d!312603 m!1260241))

(declare-fun m!1260591 () Bool)

(assert (=> d!312603 m!1260591))

(declare-fun m!1260593 () Bool)

(assert (=> d!312603 m!1260593))

(assert (=> b!1104020 m!1260245))

(assert (=> b!1103824 d!312603))

(assert (=> b!1103824 d!312585))

(declare-fun d!312605 () Bool)

(declare-fun lt!373802 () Int)

(assert (=> d!312605 (>= lt!373802 0)))

(declare-fun e!699503 () Int)

(assert (=> d!312605 (= lt!373802 e!699503)))

(declare-fun c!187428 () Bool)

(assert (=> d!312605 (= c!187428 (is-Nil!10694 (filter!388 lt!373647 lambda!43878)))))

(assert (=> d!312605 (= (size!8313 (filter!388 lt!373647 lambda!43878)) lt!373802)))

(declare-fun b!1104021 () Bool)

(assert (=> b!1104021 (= e!699503 0)))

(declare-fun b!1104022 () Bool)

(assert (=> b!1104022 (= e!699503 (+ 1 (size!8313 (t!104516 (filter!388 lt!373647 lambda!43878)))))))

(assert (= (and d!312605 c!187428) b!1104021))

(assert (= (and d!312605 (not c!187428)) b!1104022))

(declare-fun m!1260595 () Bool)

(assert (=> b!1104022 m!1260595))

(assert (=> b!1103835 d!312605))

(declare-fun b!1104023 () Bool)

(declare-fun e!699504 () List!10710)

(assert (=> b!1104023 (= e!699504 Nil!10694)))

(declare-fun b!1104024 () Bool)

(declare-fun res!489455 () Bool)

(declare-fun e!699505 () Bool)

(assert (=> b!1104024 (=> (not res!489455) (not e!699505))))

(declare-fun lt!373803 () List!10710)

(assert (=> b!1104024 (= res!489455 (set.subset (content!1547 lt!373803) (content!1547 lt!373647)))))

(declare-fun bm!80481 () Bool)

(declare-fun call!80486 () List!10710)

(assert (=> bm!80481 (= call!80486 (filter!388 (t!104516 lt!373647) lambda!43878))))

(declare-fun b!1104025 () Bool)

(declare-fun e!699506 () List!10710)

(assert (=> b!1104025 (= e!699506 call!80486)))

(declare-fun b!1104026 () Bool)

(assert (=> b!1104026 (= e!699506 (Cons!10694 (h!16095 lt!373647) call!80486))))

(declare-fun b!1104027 () Bool)

(assert (=> b!1104027 (= e!699505 (forall!2500 lt!373803 lambda!43878))))

(declare-fun d!312607 () Bool)

(assert (=> d!312607 e!699505))

(declare-fun res!489456 () Bool)

(assert (=> d!312607 (=> (not res!489456) (not e!699505))))

(assert (=> d!312607 (= res!489456 (<= (size!8313 lt!373803) (size!8313 lt!373647)))))

(assert (=> d!312607 (= lt!373803 e!699504)))

(declare-fun c!187430 () Bool)

(assert (=> d!312607 (= c!187430 (is-Nil!10694 lt!373647))))

(assert (=> d!312607 (= (filter!388 lt!373647 lambda!43878) lt!373803)))

(declare-fun b!1104028 () Bool)

(assert (=> b!1104028 (= e!699504 e!699506)))

(declare-fun c!187429 () Bool)

(assert (=> b!1104028 (= c!187429 (dynLambda!4728 lambda!43878 (h!16095 lt!373647)))))

(assert (= (and d!312607 c!187430) b!1104023))

(assert (= (and d!312607 (not c!187430)) b!1104028))

(assert (= (and b!1104028 c!187429) b!1104026))

(assert (= (and b!1104028 (not c!187429)) b!1104025))

(assert (= (or b!1104026 b!1104025) bm!80481))

(assert (= (and d!312607 res!489456) b!1104024))

(assert (= (and b!1104024 res!489455) b!1104027))

(declare-fun b_lambda!32585 () Bool)

(assert (=> (not b_lambda!32585) (not b!1104028)))

(declare-fun m!1260597 () Bool)

(assert (=> d!312607 m!1260597))

(assert (=> d!312607 m!1260253))

(declare-fun m!1260599 () Bool)

(assert (=> b!1104024 m!1260599))

(assert (=> b!1104024 m!1260399))

(declare-fun m!1260601 () Bool)

(assert (=> b!1104027 m!1260601))

(declare-fun m!1260603 () Bool)

(assert (=> b!1104028 m!1260603))

(declare-fun m!1260605 () Bool)

(assert (=> bm!80481 m!1260605))

(assert (=> b!1103835 d!312607))

(assert (=> b!1103835 d!312517))

(declare-fun d!312609 () Bool)

(declare-fun lt!373804 () Int)

(assert (=> d!312609 (= lt!373804 (size!8313 (list!3861 lt!373636)))))

(assert (=> d!312609 (= lt!373804 (size!8317 (c!187383 lt!373636)))))

(assert (=> d!312609 (= (size!8312 lt!373636) lt!373804)))

(declare-fun bs!259797 () Bool)

(assert (= bs!259797 d!312609))

(assert (=> bs!259797 m!1260227))

(assert (=> bs!259797 m!1260227))

(declare-fun m!1260607 () Bool)

(assert (=> bs!259797 m!1260607))

(declare-fun m!1260609 () Bool)

(assert (=> bs!259797 m!1260609))

(assert (=> b!1103836 d!312609))

(declare-fun d!312611 () Bool)

(declare-fun e!699509 () Bool)

(assert (=> d!312611 e!699509))

(declare-fun res!489459 () Bool)

(assert (=> d!312611 (=> res!489459 e!699509)))

(assert (=> d!312611 (= res!489459 (isEmpty!6706 lt!373647))))

(declare-fun lt!373807 () Unit!16323)

(assert (=> d!312611 (= lt!373807 (choose!7138 lt!373647 lambda!43880))))

(assert (=> d!312611 (not (forall!2500 lt!373647 lambda!43880))))

(assert (=> d!312611 (= (lemmaNotForallFilterShorter!68 lt!373647 lambda!43880) lt!373807)))

(declare-fun b!1104031 () Bool)

(assert (=> b!1104031 (= e!699509 (< (size!8313 (filter!388 lt!373647 lambda!43880)) (size!8313 lt!373647)))))

(assert (= (and d!312611 (not res!489459)) b!1104031))

(assert (=> d!312611 m!1260303))

(declare-fun m!1260611 () Bool)

(assert (=> d!312611 m!1260611))

(assert (=> d!312611 m!1260453))

(assert (=> b!1104031 m!1260283))

(assert (=> b!1104031 m!1260283))

(assert (=> b!1104031 m!1260285))

(assert (=> b!1104031 m!1260253))

(assert (=> b!1103836 d!312611))

(declare-fun d!312613 () Bool)

(declare-fun lt!373808 () Bool)

(assert (=> d!312613 (= lt!373808 (forall!2500 (list!3861 objs!8) lambda!43880))))

(assert (=> d!312613 (= lt!373808 (forall!2503 (c!187383 objs!8) lambda!43880))))

(assert (=> d!312613 (= (forall!2499 objs!8 lambda!43880) lt!373808)))

(declare-fun bs!259798 () Bool)

(assert (= bs!259798 d!312613))

(assert (=> bs!259798 m!1260241))

(assert (=> bs!259798 m!1260241))

(declare-fun m!1260613 () Bool)

(assert (=> bs!259798 m!1260613))

(declare-fun m!1260615 () Bool)

(assert (=> bs!259798 m!1260615))

(assert (=> b!1103836 d!312613))

(declare-fun b!1104040 () Bool)

(declare-fun e!699514 () Bool)

(assert (=> b!1104040 (= e!699514 true)))

(declare-fun b!1104042 () Bool)

(declare-fun e!699515 () Bool)

(assert (=> b!1104042 (= e!699515 true)))

(declare-fun b!1104041 () Bool)

(assert (=> b!1104041 (= e!699514 e!699515)))

(assert (=> b!1103851 e!699514))

(assert (= (and b!1103851 (is-Node!3351 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104040))

(assert (= b!1104041 b!1104042))

(assert (= (and b!1103851 (is-Leaf!5278 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104041))

(declare-fun b!1104043 () Bool)

(declare-fun e!699516 () Bool)

(assert (=> b!1104043 (= e!699516 true)))

(declare-fun b!1104045 () Bool)

(declare-fun e!699517 () Bool)

(assert (=> b!1104045 (= e!699517 true)))

(declare-fun b!1104044 () Bool)

(assert (=> b!1104044 (= e!699516 e!699517)))

(assert (=> b!1103847 e!699516))

(assert (= (and b!1103847 (is-Node!3351 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104043))

(assert (= b!1104044 b!1104045))

(assert (= (and b!1103847 (is-Leaf!5278 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104044))

(declare-fun b!1104047 () Bool)

(declare-fun e!699519 () Bool)

(assert (=> b!1104047 (= e!699519 true)))

(declare-fun b!1104049 () Bool)

(declare-fun e!699520 () Bool)

(assert (=> b!1104049 (= e!699520 true)))

(declare-fun b!1104048 () Bool)

(assert (=> b!1104048 (= e!699519 e!699520)))

(assert (=> b!1103849 e!699519))

(assert (= (and b!1103849 (is-Node!3351 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104047))

(assert (= b!1104048 b!1104049))

(assert (= (and b!1103849 (is-Leaf!5278 (c!187382 (tokens!1400 (_2!6730 lt!373646))))) b!1104048))

(declare-fun e!699527 () Bool)

(declare-fun tp!327243 () Bool)

(declare-fun b!1104059 () Bool)

(declare-fun tp!327245 () Bool)

(assert (=> b!1104059 (= e!699527 (and (inv!13756 (left!9274 (c!187383 objs!8))) tp!327245 (inv!13756 (right!9604 (c!187383 objs!8))) tp!327243))))

(declare-fun b!1104061 () Bool)

(declare-fun e!699526 () Bool)

(declare-fun tp!327244 () Bool)

(assert (=> b!1104061 (= e!699526 tp!327244)))

(declare-fun b!1104060 () Bool)

(declare-fun inv!13761 (IArray!6709) Bool)

(assert (=> b!1104060 (= e!699527 (and (inv!13761 (xs!6045 (c!187383 objs!8))) e!699526))))

(assert (=> b!1103838 (= tp!327233 (and (inv!13756 (c!187383 objs!8)) e!699527))))

(assert (= (and b!1103838 (is-Node!3352 (c!187383 objs!8))) b!1104059))

(assert (= b!1104060 b!1104061))

(assert (= (and b!1103838 (is-Leaf!5279 (c!187383 objs!8))) b!1104060))

(declare-fun m!1260623 () Bool)

(assert (=> b!1104059 m!1260623))

(declare-fun m!1260625 () Bool)

(assert (=> b!1104059 m!1260625))

(declare-fun m!1260629 () Bool)

(assert (=> b!1104060 m!1260629))

(assert (=> b!1103838 m!1260247))

(declare-fun b!1104073 () Bool)

(declare-fun e!699537 () Bool)

(assert (=> b!1104073 (= e!699537 true)))

(declare-fun b!1104072 () Bool)

(declare-fun e!699536 () Bool)

(assert (=> b!1104072 (= e!699536 e!699537)))

(declare-fun b!1104071 () Bool)

(declare-fun e!699535 () Bool)

(assert (=> b!1104071 (= e!699535 e!699536)))

(assert (=> b!1103846 e!699535))

(assert (= b!1104072 b!1104073))

(assert (= b!1104071 b!1104072))

(assert (= (and b!1103846 (is-Cons!10693 (rules!9128 (_2!6730 lt!373646)))) b!1104071))

(declare-fun order!6561 () Int)

(declare-fun order!6563 () Int)

(declare-fun dynLambda!4730 (Int Int) Int)

(declare-fun dynLambda!4731 (Int Int) Int)

(assert (=> b!1104073 (< (dynLambda!4730 order!6561 (toValue!2918 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43878))))

(declare-fun order!6565 () Int)

(declare-fun dynLambda!4732 (Int Int) Int)

(assert (=> b!1104073 (< (dynLambda!4732 order!6565 (toChars!2777 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43878))))

(declare-fun b!1104077 () Bool)

(declare-fun e!699541 () Bool)

(assert (=> b!1104077 (= e!699541 true)))

(declare-fun b!1104076 () Bool)

(declare-fun e!699540 () Bool)

(assert (=> b!1104076 (= e!699540 e!699541)))

(declare-fun b!1104075 () Bool)

(declare-fun e!699539 () Bool)

(assert (=> b!1104075 (= e!699539 e!699540)))

(assert (=> b!1103848 e!699539))

(assert (= b!1104076 b!1104077))

(assert (= b!1104075 b!1104076))

(assert (= (and b!1103848 (is-Cons!10693 (rules!9128 (_2!6730 lt!373646)))) b!1104075))

(assert (=> b!1104077 (< (dynLambda!4730 order!6561 (toValue!2918 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43879))))

(assert (=> b!1104077 (< (dynLambda!4732 order!6565 (toChars!2777 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43879))))

(declare-fun b!1104080 () Bool)

(declare-fun e!699544 () Bool)

(assert (=> b!1104080 (= e!699544 true)))

(declare-fun b!1104079 () Bool)

(declare-fun e!699543 () Bool)

(assert (=> b!1104079 (= e!699543 e!699544)))

(declare-fun b!1104078 () Bool)

(declare-fun e!699542 () Bool)

(assert (=> b!1104078 (= e!699542 e!699543)))

(assert (=> b!1103850 e!699542))

(assert (= b!1104079 b!1104080))

(assert (= b!1104078 b!1104079))

(assert (= (and b!1103850 (is-Cons!10693 (rules!9128 (_2!6730 lt!373646)))) b!1104078))

(assert (=> b!1104080 (< (dynLambda!4730 order!6561 (toValue!2918 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43880))))

(assert (=> b!1104080 (< (dynLambda!4732 order!6565 (toChars!2777 (transformation!1841 (h!16094 (rules!9128 (_2!6730 lt!373646)))))) (dynLambda!4731 order!6563 lambda!43880))))

(declare-fun b_lambda!32591 () Bool)

(assert (= b_lambda!32579 (or start!95168 b_lambda!32591)))

(declare-fun bs!259801 () Bool)

(declare-fun d!312627 () Bool)

(assert (= bs!259801 (and d!312627 start!95168)))

(declare-fun usesJsonRules!0 (PrintableTokens!398) Bool)

(assert (=> bs!259801 (= (dynLambda!4728 lambda!43877 (h!16095 lt!373642)) (usesJsonRules!0 (_2!6730 (h!16095 lt!373642))))))

(declare-fun m!1260653 () Bool)

(assert (=> bs!259801 m!1260653))

(assert (=> b!1104009 d!312627))

(declare-fun b_lambda!32593 () Bool)

(assert (= b_lambda!32571 (or b!1103824 b_lambda!32593)))

(declare-fun bs!259802 () Bool)

(declare-fun d!312629 () Bool)

(assert (= bs!259802 (and d!312629 b!1103824)))

(assert (=> bs!259802 (= (dynLambda!4728 lambda!43880 lt!373646) (> (_1!6730 lt!373646) (_1!6730 lt!373646)))))

(assert (=> d!312535 d!312629))

(declare-fun b_lambda!32595 () Bool)

(assert (= b_lambda!32567 (or b!1103824 b_lambda!32595)))

(declare-fun bs!259803 () Bool)

(declare-fun d!312631 () Bool)

(assert (= bs!259803 (and d!312631 b!1103824)))

(assert (=> bs!259803 (= (dynLambda!4728 lambda!43878 lt!373646) (< (_1!6730 lt!373646) (_1!6730 lt!373646)))))

(assert (=> d!312525 d!312631))

(declare-fun b_lambda!32597 () Bool)

(assert (= b_lambda!32569 (or b!1103824 b_lambda!32597)))

(assert (=> d!312529 d!312629))

(declare-fun b_lambda!32599 () Bool)

(assert (= b_lambda!32583 (or start!95168 b_lambda!32599)))

(declare-fun bs!259804 () Bool)

(declare-fun d!312633 () Bool)

(assert (= bs!259804 (and d!312633 start!95168)))

(assert (=> bs!259804 (= (dynLambda!4728 lambda!43877 (h!16095 lt!373647)) (usesJsonRules!0 (_2!6730 (h!16095 lt!373647))))))

(declare-fun m!1260655 () Bool)

(assert (=> bs!259804 m!1260655))

(assert (=> b!1104015 d!312633))

(declare-fun b_lambda!32601 () Bool)

(assert (= b_lambda!32581 (or start!95168 b_lambda!32601)))

(declare-fun bs!259805 () Bool)

(declare-fun d!312635 () Bool)

(assert (= bs!259805 (and d!312635 start!95168)))

(assert (=> bs!259805 (= (dynLambda!4728 lambda!43877 (h!16095 lt!373638)) (usesJsonRules!0 (_2!6730 (h!16095 lt!373638))))))

(declare-fun m!1260657 () Bool)

(assert (=> bs!259805 m!1260657))

(assert (=> b!1104011 d!312635))

(declare-fun b_lambda!32603 () Bool)

(assert (= b_lambda!32577 (or b!1103824 b_lambda!32603)))

(assert (=> d!312553 d!312631))

(declare-fun b_lambda!32605 () Bool)

(assert (= b_lambda!32585 (or b!1103824 b_lambda!32605)))

(declare-fun bs!259806 () Bool)

(declare-fun d!312637 () Bool)

(assert (= bs!259806 (and d!312637 b!1103824)))

(assert (=> bs!259806 (= (dynLambda!4728 lambda!43878 (h!16095 lt!373647)) (< (_1!6730 (h!16095 lt!373647)) (_1!6730 lt!373646)))))

(assert (=> b!1104028 d!312637))

(declare-fun b_lambda!32607 () Bool)

(assert (= b_lambda!32563 (or b!1103824 b_lambda!32607)))

(declare-fun bs!259807 () Bool)

(declare-fun d!312639 () Bool)

(assert (= bs!259807 (and d!312639 b!1103824)))

(assert (=> bs!259807 (= (dynLambda!4728 lambda!43880 (h!16095 lt!373647)) (> (_1!6730 (h!16095 lt!373647)) (_1!6730 lt!373646)))))

(assert (=> b!1103965 d!312639))

(push 1)

(assert (not b!1104043))

(assert (not d!312613))

(assert (not b!1104047))

(assert (not b!1104022))

(assert (not d!312603))

(assert (not b!1103967))

(assert (not b_lambda!32595))

(assert (not d!312599))

(assert (not b!1103838))

(assert (not d!312609))

(assert (not d!312529))

(assert (not d!312563))

(assert (not b_lambda!32591))

(assert (not b!1103989))

(assert (not d!312593))

(assert (not d!312567))

(assert (not b!1104061))

(assert (not d!312607))

(assert (not d!312539))

(assert (not b!1104042))

(assert (not d!312545))

(assert (not b_lambda!32599))

(assert (not b!1103976))

(assert (not b_lambda!32603))

(assert (not d!312571))

(assert (not b!1103937))

(assert (not d!312597))

(assert (not b!1104045))

(assert (not b!1103996))

(assert (not d!312561))

(assert (not b!1104017))

(assert (not d!312535))

(assert (not d!312585))

(assert (not b!1104040))

(assert (not b_lambda!32607))

(assert (not d!312595))

(assert (not d!312579))

(assert (not d!312541))

(assert (not b_lambda!32597))

(assert (not b!1104024))

(assert (not b!1104060))

(assert (not b_lambda!32605))

(assert (not b!1104075))

(assert (not bs!259805))

(assert (not b!1104016))

(assert (not b!1104010))

(assert (not d!312601))

(assert (not b!1103961))

(assert (not b!1104027))

(assert (not b!1104049))

(assert (not b!1104059))

(assert (not b!1104012))

(assert (not d!312575))

(assert (not d!312527))

(assert (not b!1104014))

(assert (not b_lambda!32593))

(assert (not b!1104020))

(assert (not b!1104001))

(assert (not d!312611))

(assert (not bm!80481))

(assert (not b_lambda!32601))

(assert (not d!312547))

(assert (not d!312591))

(assert (not b!1103998))

(assert (not d!312525))

(assert (not d!312553))

(assert (not bs!259804))

(assert (not d!312569))

(assert (not b!1104031))

(assert (not d!312565))

(assert (not bs!259801))

(assert (not b!1104071))

(assert (not b!1103985))

(assert (not b!1104078))

(assert (not d!312533))

(assert (not d!312519))

(assert (not d!312555))

(assert (not d!312515))

(assert (not b!1103972))

(assert (not b!1103964))

(assert (not bm!80479))

(assert (not b!1103973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

