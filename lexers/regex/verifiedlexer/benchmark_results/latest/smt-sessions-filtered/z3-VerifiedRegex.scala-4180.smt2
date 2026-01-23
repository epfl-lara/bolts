; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226348 () Bool)

(assert start!226348)

(declare-fun b!2301464 () Bool)

(declare-fun b_free!69453 () Bool)

(declare-fun b_next!70157 () Bool)

(assert (=> b!2301464 (= b_free!69453 (not b_next!70157))))

(declare-fun tp!730125 () Bool)

(declare-fun b_and!183305 () Bool)

(assert (=> b!2301464 (= tp!730125 b_and!183305)))

(declare-fun b_free!69455 () Bool)

(declare-fun b_next!70159 () Bool)

(assert (=> b!2301464 (= b_free!69455 (not b_next!70159))))

(declare-fun tp!730122 () Bool)

(declare-fun b_and!183307 () Bool)

(assert (=> b!2301464 (= tp!730122 b_and!183307)))

(declare-fun b!2301469 () Bool)

(declare-fun b_free!69457 () Bool)

(declare-fun b_next!70161 () Bool)

(assert (=> b!2301469 (= b_free!69457 (not b_next!70161))))

(declare-fun tp!730115 () Bool)

(declare-fun b_and!183309 () Bool)

(assert (=> b!2301469 (= tp!730115 b_and!183309)))

(declare-fun b_free!69459 () Bool)

(declare-fun b_next!70163 () Bool)

(assert (=> b!2301469 (= b_free!69459 (not b_next!70163))))

(declare-fun tp!730112 () Bool)

(declare-fun b_and!183311 () Bool)

(assert (=> b!2301469 (= tp!730112 b_and!183311)))

(declare-fun b!2301477 () Bool)

(declare-fun b_free!69461 () Bool)

(declare-fun b_next!70165 () Bool)

(assert (=> b!2301477 (= b_free!69461 (not b_next!70165))))

(declare-fun tp!730116 () Bool)

(declare-fun b_and!183313 () Bool)

(assert (=> b!2301477 (= tp!730116 b_and!183313)))

(declare-fun b_free!69463 () Bool)

(declare-fun b_next!70167 () Bool)

(assert (=> b!2301477 (= b_free!69463 (not b_next!70167))))

(declare-fun tp!730111 () Bool)

(declare-fun b_and!183315 () Bool)

(assert (=> b!2301477 (= tp!730111 b_and!183315)))

(declare-fun b!2301485 () Bool)

(declare-fun b_free!69465 () Bool)

(declare-fun b_next!70169 () Bool)

(assert (=> b!2301485 (= b_free!69465 (not b_next!70169))))

(declare-fun tp!730119 () Bool)

(declare-fun b_and!183317 () Bool)

(assert (=> b!2301485 (= tp!730119 b_and!183317)))

(declare-fun b_free!69467 () Bool)

(declare-fun b_next!70171 () Bool)

(assert (=> b!2301485 (= b_free!69467 (not b_next!70171))))

(declare-fun tp!730114 () Bool)

(declare-fun b_and!183319 () Bool)

(assert (=> b!2301485 (= tp!730114 b_and!183319)))

(declare-fun b!2301456 () Bool)

(declare-fun e!1474834 () Bool)

(declare-fun tp_is_empty!10699 () Bool)

(declare-fun tp!730110 () Bool)

(assert (=> b!2301456 (= e!1474834 (and tp_is_empty!10699 tp!730110))))

(declare-fun b!2301457 () Bool)

(declare-fun res!983929 () Bool)

(declare-fun e!1474845 () Bool)

(assert (=> b!2301457 (=> (not res!983929) (not e!1474845))))

(declare-datatypes ((List!27489 0))(
  ( (Nil!27395) (Cons!27395 (h!32796 (_ BitVec 16)) (t!205867 List!27489)) )
))
(declare-datatypes ((TokenValue!4553 0))(
  ( (FloatLiteralValue!9106 (text!32316 List!27489)) (TokenValueExt!4552 (__x!18166 Int)) (Broken!22765 (value!138937 List!27489)) (Object!4646) (End!4553) (Def!4553) (Underscore!4553) (Match!4553) (Else!4553) (Error!4553) (Case!4553) (If!4553) (Extends!4553) (Abstract!4553) (Class!4553) (Val!4553) (DelimiterValue!9106 (del!4613 List!27489)) (KeywordValue!4559 (value!138938 List!27489)) (CommentValue!9106 (value!138939 List!27489)) (WhitespaceValue!9106 (value!138940 List!27489)) (IndentationValue!4553 (value!138941 List!27489)) (String!29868) (Int32!4553) (Broken!22766 (value!138942 List!27489)) (Boolean!4554) (Unit!40299) (OperatorValue!4556 (op!4613 List!27489)) (IdentifierValue!9106 (value!138943 List!27489)) (IdentifierValue!9107 (value!138944 List!27489)) (WhitespaceValue!9107 (value!138945 List!27489)) (True!9106) (False!9106) (Broken!22767 (value!138946 List!27489)) (Broken!22768 (value!138947 List!27489)) (True!9107) (RightBrace!4553) (RightBracket!4553) (Colon!4553) (Null!4553) (Comma!4553) (LeftBracket!4553) (False!9107) (LeftBrace!4553) (ImaginaryLiteralValue!4553 (text!32317 List!27489)) (StringLiteralValue!13659 (value!138948 List!27489)) (EOFValue!4553 (value!138949 List!27489)) (IdentValue!4553 (value!138950 List!27489)) (DelimiterValue!9107 (value!138951 List!27489)) (DedentValue!4553 (value!138952 List!27489)) (NewLineValue!4553 (value!138953 List!27489)) (IntegerValue!13659 (value!138954 (_ BitVec 32)) (text!32318 List!27489)) (IntegerValue!13660 (value!138955 Int) (text!32319 List!27489)) (Times!4553) (Or!4553) (Equal!4553) (Minus!4553) (Broken!22769 (value!138956 List!27489)) (And!4553) (Div!4553) (LessEqual!4553) (Mod!4553) (Concat!11292) (Not!4553) (Plus!4553) (SpaceValue!4553 (value!138957 List!27489)) (IntegerValue!13661 (value!138958 Int) (text!32320 List!27489)) (StringLiteralValue!13660 (text!32321 List!27489)) (FloatLiteralValue!9107 (text!32322 List!27489)) (BytesLiteralValue!4553 (value!138959 List!27489)) (CommentValue!9107 (value!138960 List!27489)) (StringLiteralValue!13661 (value!138961 List!27489)) (ErrorTokenValue!4553 (msg!4614 List!27489)) )
))
(declare-datatypes ((C!13624 0))(
  ( (C!13625 (val!7860 Int)) )
))
(declare-datatypes ((List!27490 0))(
  ( (Nil!27396) (Cons!27396 (h!32797 C!13624) (t!205868 List!27490)) )
))
(declare-datatypes ((IArray!17865 0))(
  ( (IArray!17866 (innerList!8990 List!27490)) )
))
(declare-datatypes ((Conc!8930 0))(
  ( (Node!8930 (left!20762 Conc!8930) (right!21092 Conc!8930) (csize!18090 Int) (cheight!9141 Int)) (Leaf!13111 (xs!11872 IArray!17865) (csize!18091 Int)) (Empty!8930) )
))
(declare-datatypes ((BalanceConc!17588 0))(
  ( (BalanceConc!17589 (c!364890 Conc!8930)) )
))
(declare-datatypes ((Regex!6739 0))(
  ( (ElementMatch!6739 (c!364891 C!13624)) (Concat!11293 (regOne!13990 Regex!6739) (regTwo!13990 Regex!6739)) (EmptyExpr!6739) (Star!6739 (reg!7068 Regex!6739)) (EmptyLang!6739) (Union!6739 (regOne!13991 Regex!6739) (regTwo!13991 Regex!6739)) )
))
(declare-datatypes ((String!29869 0))(
  ( (String!29870 (value!138962 String)) )
))
(declare-datatypes ((TokenValueInjection!8646 0))(
  ( (TokenValueInjection!8647 (toValue!6201 Int) (toChars!6060 Int)) )
))
(declare-datatypes ((Rule!8582 0))(
  ( (Rule!8583 (regex!4391 Regex!6739) (tag!4881 String!29869) (isSeparator!4391 Bool) (transformation!4391 TokenValueInjection!8646)) )
))
(declare-datatypes ((List!27491 0))(
  ( (Nil!27397) (Cons!27397 (h!32798 Rule!8582) (t!205869 List!27491)) )
))
(declare-fun rules!1750 () List!27491)

(declare-fun isEmpty!15639 (List!27491) Bool)

(assert (=> b!2301457 (= res!983929 (not (isEmpty!15639 rules!1750)))))

(declare-fun b!2301458 () Bool)

(declare-fun res!983922 () Bool)

(declare-fun e!1474852 () Bool)

(assert (=> b!2301458 (=> (not res!983922) (not e!1474852))))

(declare-fun e!1474862 () Bool)

(assert (=> b!2301458 (= res!983922 e!1474862)))

(declare-fun res!983936 () Bool)

(assert (=> b!2301458 (=> res!983936 e!1474862)))

(declare-fun lt!853680 () Bool)

(assert (=> b!2301458 (= res!983936 lt!853680)))

(declare-fun b!2301460 () Bool)

(declare-fun e!1474840 () Bool)

(declare-fun e!1474846 () Bool)

(assert (=> b!2301460 (= e!1474840 e!1474846)))

(declare-fun res!983928 () Bool)

(assert (=> b!2301460 (=> res!983928 e!1474846)))

(declare-datatypes ((Token!8260 0))(
  ( (Token!8261 (value!138963 TokenValue!4553) (rule!6737 Rule!8582) (size!21604 Int) (originalCharacters!5161 List!27490)) )
))
(declare-datatypes ((List!27492 0))(
  ( (Nil!27398) (Cons!27398 (h!32799 Token!8260) (t!205870 List!27492)) )
))
(declare-fun tokens!456 () List!27492)

(get-info :version)

(assert (=> b!2301460 (= res!983928 ((_ is Nil!27398) tokens!456))))

(declare-datatypes ((Unit!40300 0))(
  ( (Unit!40301) )
))
(declare-fun lt!853683 () Unit!40300)

(declare-fun e!1474843 () Unit!40300)

(assert (=> b!2301460 (= lt!853683 e!1474843)))

(declare-fun c!364889 () Bool)

(declare-fun lt!853679 () Int)

(declare-fun lt!853675 () Int)

(assert (=> b!2301460 (= c!364889 (= lt!853679 lt!853675))))

(declare-fun b!2301461 () Bool)

(declare-fun res!983923 () Bool)

(assert (=> b!2301461 (=> (not res!983923) (not e!1474845))))

(declare-fun r!2363 () Rule!8582)

(declare-fun contains!4777 (List!27491 Rule!8582) Bool)

(assert (=> b!2301461 (= res!983923 (contains!4777 rules!1750 r!2363))))

(declare-fun b!2301462 () Bool)

(declare-fun e!1474839 () Bool)

(declare-fun tp!730121 () Bool)

(assert (=> b!2301462 (= e!1474839 (and tp_is_empty!10699 tp!730121))))

(declare-fun b!2301463 () Bool)

(declare-fun e!1474859 () Bool)

(declare-fun matchR!2996 (Regex!6739 List!27490) Bool)

(declare-fun list!10784 (BalanceConc!17588) List!27490)

(declare-fun charsOf!2779 (Token!8260) BalanceConc!17588)

(declare-fun head!5034 (List!27492) Token!8260)

(assert (=> b!2301463 (= e!1474859 (not (matchR!2996 (regex!4391 r!2363) (list!10784 (charsOf!2779 (head!5034 tokens!456))))))))

(declare-fun e!1474841 () Bool)

(assert (=> b!2301464 (= e!1474841 (and tp!730125 tp!730122))))

(declare-fun b!2301465 () Bool)

(assert (=> b!2301465 (= e!1474862 (= (rule!6737 (head!5034 tokens!456)) r!2363))))

(declare-fun b!2301466 () Bool)

(declare-fun e!1474863 () Bool)

(declare-fun tp!730113 () Bool)

(declare-fun inv!37024 (String!29869) Bool)

(declare-fun inv!37027 (TokenValueInjection!8646) Bool)

(assert (=> b!2301466 (= e!1474863 (and tp!730113 (inv!37024 (tag!4881 r!2363)) (inv!37027 (transformation!4391 r!2363)) e!1474841))))

(declare-fun b!2301467 () Bool)

(declare-fun e!1474836 () Bool)

(declare-fun e!1474854 () Bool)

(declare-fun tp!730124 () Bool)

(assert (=> b!2301467 (= e!1474836 (and e!1474854 tp!730124))))

(declare-fun e!1474851 () Bool)

(declare-fun b!2301468 () Bool)

(declare-fun tp!730117 () Bool)

(declare-fun e!1474842 () Bool)

(assert (=> b!2301468 (= e!1474851 (and tp!730117 (inv!37024 (tag!4881 (rule!6737 (h!32799 tokens!456)))) (inv!37027 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) e!1474842))))

(declare-fun e!1474853 () Bool)

(assert (=> b!2301469 (= e!1474853 (and tp!730115 tp!730112))))

(declare-fun b!2301470 () Bool)

(declare-fun res!983925 () Bool)

(assert (=> b!2301470 (=> (not res!983925) (not e!1474852))))

(declare-fun otherP!12 () List!27490)

(declare-fun input!1722 () List!27490)

(declare-fun isPrefix!2381 (List!27490 List!27490) Bool)

(assert (=> b!2301470 (= res!983925 (isPrefix!2381 otherP!12 input!1722))))

(declare-fun b!2301471 () Bool)

(declare-fun e!1474858 () Bool)

(assert (=> b!2301471 (= e!1474852 (not e!1474858))))

(declare-fun res!983932 () Bool)

(assert (=> b!2301471 (=> res!983932 e!1474858)))

(assert (=> b!2301471 (= res!983932 e!1474859)))

(declare-fun res!983926 () Bool)

(assert (=> b!2301471 (=> (not res!983926) (not e!1474859))))

(assert (=> b!2301471 (= res!983926 (not lt!853680))))

(declare-datatypes ((LexerInterface!3988 0))(
  ( (LexerInterfaceExt!3985 (__x!18167 Int)) (Lexer!3986) )
))
(declare-fun thiss!16613 () LexerInterface!3988)

(declare-fun ruleValid!1481 (LexerInterface!3988 Rule!8582) Bool)

(assert (=> b!2301471 (ruleValid!1481 thiss!16613 r!2363)))

(declare-fun lt!853686 () Unit!40300)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!886 (LexerInterface!3988 Rule!8582 List!27491) Unit!40300)

(assert (=> b!2301471 (= lt!853686 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!886 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2301472 () Bool)

(declare-fun e!1474848 () Bool)

(assert (=> b!2301472 (= e!1474845 e!1474848)))

(declare-fun res!983924 () Bool)

(assert (=> b!2301472 (=> (not res!983924) (not e!1474848))))

(declare-datatypes ((IArray!17867 0))(
  ( (IArray!17868 (innerList!8991 List!27492)) )
))
(declare-datatypes ((Conc!8931 0))(
  ( (Node!8931 (left!20763 Conc!8931) (right!21093 Conc!8931) (csize!18092 Int) (cheight!9142 Int)) (Leaf!13112 (xs!11873 IArray!17867) (csize!18093 Int)) (Empty!8931) )
))
(declare-datatypes ((BalanceConc!17590 0))(
  ( (BalanceConc!17591 (c!364892 Conc!8931)) )
))
(declare-datatypes ((tuple2!27278 0))(
  ( (tuple2!27279 (_1!16149 BalanceConc!17590) (_2!16149 BalanceConc!17588)) )
))
(declare-fun lt!853681 () tuple2!27278)

(declare-fun suffix!886 () List!27490)

(declare-datatypes ((tuple2!27280 0))(
  ( (tuple2!27281 (_1!16150 List!27492) (_2!16150 List!27490)) )
))
(declare-fun list!10785 (BalanceConc!17590) List!27492)

(assert (=> b!2301472 (= res!983924 (= (tuple2!27281 (list!10785 (_1!16149 lt!853681)) (list!10784 (_2!16149 lt!853681))) (tuple2!27281 tokens!456 suffix!886)))))

(declare-fun lex!1827 (LexerInterface!3988 List!27491 BalanceConc!17588) tuple2!27278)

(declare-fun seqFromList!3095 (List!27490) BalanceConc!17588)

(assert (=> b!2301472 (= lt!853681 (lex!1827 thiss!16613 rules!1750 (seqFromList!3095 input!1722)))))

(declare-fun b!2301473 () Bool)

(declare-fun e!1474847 () Bool)

(declare-fun lt!853682 () List!27490)

(assert (=> b!2301473 (= e!1474847 (= input!1722 lt!853682))))

(declare-fun tp!730108 () Bool)

(declare-fun b!2301474 () Bool)

(declare-fun e!1474855 () Bool)

(declare-fun otherR!12 () Rule!8582)

(assert (=> b!2301474 (= e!1474855 (and tp!730108 (inv!37024 (tag!4881 otherR!12)) (inv!37027 (transformation!4391 otherR!12)) e!1474853))))

(declare-fun b!2301475 () Bool)

(declare-fun e!1474860 () Bool)

(declare-fun size!21605 (BalanceConc!17588) Int)

(declare-fun size!21606 (List!27490) Int)

(assert (=> b!2301475 (= e!1474860 (<= (size!21605 (charsOf!2779 (head!5034 tokens!456))) (size!21606 otherP!12)))))

(declare-fun tp!730120 () Bool)

(declare-fun e!1474850 () Bool)

(declare-fun b!2301476 () Bool)

(declare-fun inv!21 (TokenValue!4553) Bool)

(assert (=> b!2301476 (= e!1474850 (and (inv!21 (value!138963 (h!32799 tokens!456))) e!1474851 tp!730120))))

(assert (=> b!2301477 (= e!1474842 (and tp!730116 tp!730111))))

(declare-fun b!2301478 () Bool)

(declare-fun Unit!40302 () Unit!40300)

(assert (=> b!2301478 (= e!1474843 Unit!40302)))

(declare-fun b!2301479 () Bool)

(declare-fun res!983931 () Bool)

(assert (=> b!2301479 (=> (not res!983931) (not e!1474845))))

(declare-fun rulesInvariant!3490 (LexerInterface!3988 List!27491) Bool)

(assert (=> b!2301479 (= res!983931 (rulesInvariant!3490 thiss!16613 rules!1750))))

(declare-fun res!983933 () Bool)

(assert (=> start!226348 (=> (not res!983933) (not e!1474845))))

(assert (=> start!226348 (= res!983933 ((_ is Lexer!3986) thiss!16613))))

(assert (=> start!226348 e!1474845))

(assert (=> start!226348 true))

(declare-fun e!1474857 () Bool)

(assert (=> start!226348 e!1474857))

(assert (=> start!226348 e!1474855))

(assert (=> start!226348 e!1474839))

(assert (=> start!226348 e!1474834))

(assert (=> start!226348 e!1474836))

(assert (=> start!226348 e!1474863))

(declare-fun e!1474835 () Bool)

(assert (=> start!226348 e!1474835))

(declare-fun b!2301459 () Bool)

(declare-fun tp!730123 () Bool)

(declare-fun inv!37028 (Token!8260) Bool)

(assert (=> b!2301459 (= e!1474835 (and (inv!37028 (h!32799 tokens!456)) e!1474850 tp!730123))))

(declare-fun b!2301480 () Bool)

(declare-fun res!983920 () Bool)

(assert (=> b!2301480 (=> (not res!983920) (not e!1474852))))

(assert (=> b!2301480 (= res!983920 (not (= r!2363 otherR!12)))))

(declare-fun b!2301481 () Bool)

(declare-fun Unit!40303 () Unit!40300)

(assert (=> b!2301481 (= e!1474843 Unit!40303)))

(declare-fun lt!853674 () Unit!40300)

(declare-fun lemmaSameIndexThenSameElement!184 (List!27491 Rule!8582 Rule!8582) Unit!40300)

(assert (=> b!2301481 (= lt!853674 (lemmaSameIndexThenSameElement!184 rules!1750 r!2363 otherR!12))))

(assert (=> b!2301481 false))

(declare-fun b!2301482 () Bool)

(assert (=> b!2301482 (= e!1474858 e!1474840)))

(declare-fun res!983921 () Bool)

(assert (=> b!2301482 (=> res!983921 e!1474840)))

(assert (=> b!2301482 (= res!983921 (> lt!853679 lt!853675))))

(declare-fun getIndex!404 (List!27491 Rule!8582) Int)

(assert (=> b!2301482 (= lt!853675 (getIndex!404 rules!1750 otherR!12))))

(assert (=> b!2301482 (= lt!853679 (getIndex!404 rules!1750 r!2363))))

(assert (=> b!2301482 (ruleValid!1481 thiss!16613 otherR!12)))

(declare-fun lt!853684 () Unit!40300)

(assert (=> b!2301482 (= lt!853684 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!886 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2301483 () Bool)

(declare-fun e!1474844 () Bool)

(declare-fun tp!730118 () Bool)

(assert (=> b!2301483 (= e!1474854 (and tp!730118 (inv!37024 (tag!4881 (h!32798 rules!1750))) (inv!37027 (transformation!4391 (h!32798 rules!1750))) e!1474844))))

(declare-fun b!2301484 () Bool)

(declare-fun res!983930 () Bool)

(assert (=> b!2301484 (=> (not res!983930) (not e!1474845))))

(assert (=> b!2301484 (= res!983930 (contains!4777 rules!1750 otherR!12))))

(assert (=> b!2301485 (= e!1474844 (and tp!730119 tp!730114))))

(declare-fun b!2301486 () Bool)

(declare-fun tp!730109 () Bool)

(assert (=> b!2301486 (= e!1474857 (and tp_is_empty!10699 tp!730109))))

(declare-fun b!2301487 () Bool)

(assert (=> b!2301487 (= e!1474846 e!1474847)))

(declare-fun res!983934 () Bool)

(assert (=> b!2301487 (=> res!983934 e!1474847)))

(declare-fun lt!853677 () List!27490)

(assert (=> b!2301487 (= res!983934 (<= (size!21606 otherP!12) (size!21606 lt!853677)))))

(declare-datatypes ((tuple2!27282 0))(
  ( (tuple2!27283 (_1!16151 Token!8260) (_2!16151 List!27490)) )
))
(declare-fun lt!853678 () tuple2!27282)

(declare-fun lt!853676 () List!27490)

(assert (=> b!2301487 (= (_2!16151 lt!853678) lt!853676)))

(declare-fun lt!853685 () Unit!40300)

(declare-fun lemmaSamePrefixThenSameSuffix!1062 (List!27490 List!27490 List!27490 List!27490 List!27490) Unit!40300)

(assert (=> b!2301487 (= lt!853685 (lemmaSamePrefixThenSameSuffix!1062 lt!853677 (_2!16151 lt!853678) lt!853677 lt!853676 input!1722))))

(declare-fun getSuffix!1160 (List!27490 List!27490) List!27490)

(assert (=> b!2301487 (= lt!853676 (getSuffix!1160 input!1722 lt!853677))))

(assert (=> b!2301487 (isPrefix!2381 lt!853677 lt!853682)))

(declare-fun ++!6705 (List!27490 List!27490) List!27490)

(assert (=> b!2301487 (= lt!853682 (++!6705 lt!853677 (_2!16151 lt!853678)))))

(declare-fun lt!853673 () Unit!40300)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1574 (List!27490 List!27490) Unit!40300)

(assert (=> b!2301487 (= lt!853673 (lemmaConcatTwoListThenFirstIsPrefix!1574 lt!853677 (_2!16151 lt!853678)))))

(assert (=> b!2301487 (= lt!853677 (list!10784 (charsOf!2779 (h!32799 tokens!456))))))

(declare-datatypes ((Option!5387 0))(
  ( (None!5386) (Some!5386 (v!30482 tuple2!27282)) )
))
(declare-fun get!8258 (Option!5387) tuple2!27282)

(declare-fun maxPrefix!2244 (LexerInterface!3988 List!27491 List!27490) Option!5387)

(assert (=> b!2301487 (= lt!853678 (get!8258 (maxPrefix!2244 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2301488 () Bool)

(assert (=> b!2301488 (= e!1474848 e!1474852)))

(declare-fun res!983935 () Bool)

(assert (=> b!2301488 (=> (not res!983935) (not e!1474852))))

(assert (=> b!2301488 (= res!983935 e!1474860)))

(declare-fun res!983927 () Bool)

(assert (=> b!2301488 (=> res!983927 e!1474860)))

(assert (=> b!2301488 (= res!983927 lt!853680)))

(declare-fun isEmpty!15640 (List!27492) Bool)

(assert (=> b!2301488 (= lt!853680 (isEmpty!15640 tokens!456))))

(assert (= (and start!226348 res!983933) b!2301457))

(assert (= (and b!2301457 res!983929) b!2301479))

(assert (= (and b!2301479 res!983931) b!2301461))

(assert (= (and b!2301461 res!983923) b!2301484))

(assert (= (and b!2301484 res!983930) b!2301472))

(assert (= (and b!2301472 res!983924) b!2301488))

(assert (= (and b!2301488 (not res!983927)) b!2301475))

(assert (= (and b!2301488 res!983935) b!2301458))

(assert (= (and b!2301458 (not res!983936)) b!2301465))

(assert (= (and b!2301458 res!983922) b!2301470))

(assert (= (and b!2301470 res!983925) b!2301480))

(assert (= (and b!2301480 res!983920) b!2301471))

(assert (= (and b!2301471 res!983926) b!2301463))

(assert (= (and b!2301471 (not res!983932)) b!2301482))

(assert (= (and b!2301482 (not res!983921)) b!2301460))

(assert (= (and b!2301460 c!364889) b!2301481))

(assert (= (and b!2301460 (not c!364889)) b!2301478))

(assert (= (and b!2301460 (not res!983928)) b!2301487))

(assert (= (and b!2301487 (not res!983934)) b!2301473))

(assert (= (and start!226348 ((_ is Cons!27396) input!1722)) b!2301486))

(assert (= b!2301474 b!2301469))

(assert (= start!226348 b!2301474))

(assert (= (and start!226348 ((_ is Cons!27396) suffix!886)) b!2301462))

(assert (= (and start!226348 ((_ is Cons!27396) otherP!12)) b!2301456))

(assert (= b!2301483 b!2301485))

(assert (= b!2301467 b!2301483))

(assert (= (and start!226348 ((_ is Cons!27397) rules!1750)) b!2301467))

(assert (= b!2301466 b!2301464))

(assert (= start!226348 b!2301466))

(assert (= b!2301468 b!2301477))

(assert (= b!2301476 b!2301468))

(assert (= b!2301459 b!2301476))

(assert (= (and start!226348 ((_ is Cons!27398) tokens!456)) b!2301459))

(declare-fun m!2728729 () Bool)

(assert (=> b!2301466 m!2728729))

(declare-fun m!2728731 () Bool)

(assert (=> b!2301466 m!2728731))

(declare-fun m!2728733 () Bool)

(assert (=> b!2301471 m!2728733))

(declare-fun m!2728735 () Bool)

(assert (=> b!2301471 m!2728735))

(declare-fun m!2728737 () Bool)

(assert (=> b!2301472 m!2728737))

(declare-fun m!2728739 () Bool)

(assert (=> b!2301472 m!2728739))

(declare-fun m!2728741 () Bool)

(assert (=> b!2301472 m!2728741))

(assert (=> b!2301472 m!2728741))

(declare-fun m!2728743 () Bool)

(assert (=> b!2301472 m!2728743))

(declare-fun m!2728745 () Bool)

(assert (=> b!2301470 m!2728745))

(declare-fun m!2728747 () Bool)

(assert (=> b!2301484 m!2728747))

(declare-fun m!2728749 () Bool)

(assert (=> b!2301476 m!2728749))

(declare-fun m!2728751 () Bool)

(assert (=> b!2301483 m!2728751))

(declare-fun m!2728753 () Bool)

(assert (=> b!2301483 m!2728753))

(declare-fun m!2728755 () Bool)

(assert (=> b!2301488 m!2728755))

(declare-fun m!2728757 () Bool)

(assert (=> b!2301474 m!2728757))

(declare-fun m!2728759 () Bool)

(assert (=> b!2301474 m!2728759))

(declare-fun m!2728761 () Bool)

(assert (=> b!2301487 m!2728761))

(declare-fun m!2728763 () Bool)

(assert (=> b!2301487 m!2728763))

(declare-fun m!2728765 () Bool)

(assert (=> b!2301487 m!2728765))

(declare-fun m!2728767 () Bool)

(assert (=> b!2301487 m!2728767))

(declare-fun m!2728769 () Bool)

(assert (=> b!2301487 m!2728769))

(declare-fun m!2728771 () Bool)

(assert (=> b!2301487 m!2728771))

(declare-fun m!2728773 () Bool)

(assert (=> b!2301487 m!2728773))

(assert (=> b!2301487 m!2728771))

(declare-fun m!2728775 () Bool)

(assert (=> b!2301487 m!2728775))

(declare-fun m!2728777 () Bool)

(assert (=> b!2301487 m!2728777))

(assert (=> b!2301487 m!2728769))

(declare-fun m!2728779 () Bool)

(assert (=> b!2301487 m!2728779))

(declare-fun m!2728781 () Bool)

(assert (=> b!2301487 m!2728781))

(declare-fun m!2728783 () Bool)

(assert (=> b!2301468 m!2728783))

(declare-fun m!2728785 () Bool)

(assert (=> b!2301468 m!2728785))

(declare-fun m!2728787 () Bool)

(assert (=> b!2301481 m!2728787))

(declare-fun m!2728789 () Bool)

(assert (=> b!2301482 m!2728789))

(declare-fun m!2728791 () Bool)

(assert (=> b!2301482 m!2728791))

(declare-fun m!2728793 () Bool)

(assert (=> b!2301482 m!2728793))

(declare-fun m!2728795 () Bool)

(assert (=> b!2301482 m!2728795))

(declare-fun m!2728797 () Bool)

(assert (=> b!2301461 m!2728797))

(declare-fun m!2728799 () Bool)

(assert (=> b!2301475 m!2728799))

(assert (=> b!2301475 m!2728799))

(declare-fun m!2728801 () Bool)

(assert (=> b!2301475 m!2728801))

(assert (=> b!2301475 m!2728801))

(declare-fun m!2728803 () Bool)

(assert (=> b!2301475 m!2728803))

(assert (=> b!2301475 m!2728781))

(declare-fun m!2728805 () Bool)

(assert (=> b!2301457 m!2728805))

(declare-fun m!2728807 () Bool)

(assert (=> b!2301459 m!2728807))

(assert (=> b!2301465 m!2728799))

(assert (=> b!2301463 m!2728799))

(assert (=> b!2301463 m!2728799))

(assert (=> b!2301463 m!2728801))

(assert (=> b!2301463 m!2728801))

(declare-fun m!2728809 () Bool)

(assert (=> b!2301463 m!2728809))

(assert (=> b!2301463 m!2728809))

(declare-fun m!2728811 () Bool)

(assert (=> b!2301463 m!2728811))

(declare-fun m!2728813 () Bool)

(assert (=> b!2301479 m!2728813))

(check-sat (not b!2301456) (not b_next!70167) (not b!2301472) (not b!2301475) (not b!2301487) b_and!183313 b_and!183317 b_and!183315 b_and!183311 (not b!2301481) (not b!2301467) (not b!2301476) (not b!2301479) (not b_next!70159) (not b!2301486) tp_is_empty!10699 (not b_next!70161) (not b!2301463) (not b!2301483) b_and!183307 (not b!2301471) (not b_next!70165) (not b!2301457) (not b!2301462) b_and!183309 (not b_next!70157) (not b_next!70171) (not b!2301466) (not b_next!70163) (not b!2301465) (not b!2301484) (not b_next!70169) b_and!183319 b_and!183305 (not b!2301470) (not b!2301488) (not b!2301482) (not b!2301474) (not b!2301459) (not b!2301468) (not b!2301461))
(check-sat (not b_next!70161) (not b_next!70167) b_and!183307 (not b_next!70165) b_and!183313 b_and!183317 b_and!183315 (not b_next!70163) b_and!183311 (not b_next!70159) b_and!183309 (not b_next!70157) (not b_next!70171) (not b_next!70169) b_and!183319 b_and!183305)
(get-model)

(declare-fun d!680801 () Bool)

(declare-fun e!1474911 () Bool)

(assert (=> d!680801 e!1474911))

(declare-fun c!364907 () Bool)

(assert (=> d!680801 (= c!364907 ((_ is EmptyExpr!6739) (regex!4391 r!2363)))))

(declare-fun lt!853695 () Bool)

(declare-fun e!1474908 () Bool)

(assert (=> d!680801 (= lt!853695 e!1474908)))

(declare-fun c!364906 () Bool)

(declare-fun isEmpty!15644 (List!27490) Bool)

(assert (=> d!680801 (= c!364906 (isEmpty!15644 (list!10784 (charsOf!2779 (head!5034 tokens!456)))))))

(declare-fun validRegex!2544 (Regex!6739) Bool)

(assert (=> d!680801 (validRegex!2544 (regex!4391 r!2363))))

(assert (=> d!680801 (= (matchR!2996 (regex!4391 r!2363) (list!10784 (charsOf!2779 (head!5034 tokens!456)))) lt!853695)))

(declare-fun b!2301558 () Bool)

(declare-fun e!1474905 () Bool)

(declare-fun head!5036 (List!27490) C!13624)

(assert (=> b!2301558 (= e!1474905 (= (head!5036 (list!10784 (charsOf!2779 (head!5034 tokens!456)))) (c!364891 (regex!4391 r!2363))))))

(declare-fun b!2301559 () Bool)

(declare-fun call!137053 () Bool)

(assert (=> b!2301559 (= e!1474911 (= lt!853695 call!137053))))

(declare-fun b!2301560 () Bool)

(declare-fun e!1474909 () Bool)

(assert (=> b!2301560 (= e!1474909 (not lt!853695))))

(declare-fun b!2301561 () Bool)

(declare-fun derivativeStep!1541 (Regex!6739 C!13624) Regex!6739)

(declare-fun tail!3325 (List!27490) List!27490)

(assert (=> b!2301561 (= e!1474908 (matchR!2996 (derivativeStep!1541 (regex!4391 r!2363) (head!5036 (list!10784 (charsOf!2779 (head!5034 tokens!456))))) (tail!3325 (list!10784 (charsOf!2779 (head!5034 tokens!456))))))))

(declare-fun b!2301562 () Bool)

(declare-fun nullable!1882 (Regex!6739) Bool)

(assert (=> b!2301562 (= e!1474908 (nullable!1882 (regex!4391 r!2363)))))

(declare-fun b!2301563 () Bool)

(declare-fun res!983994 () Bool)

(declare-fun e!1474907 () Bool)

(assert (=> b!2301563 (=> res!983994 e!1474907)))

(assert (=> b!2301563 (= res!983994 e!1474905)))

(declare-fun res!983990 () Bool)

(assert (=> b!2301563 (=> (not res!983990) (not e!1474905))))

(assert (=> b!2301563 (= res!983990 lt!853695)))

(declare-fun b!2301564 () Bool)

(declare-fun res!983995 () Bool)

(assert (=> b!2301564 (=> (not res!983995) (not e!1474905))))

(assert (=> b!2301564 (= res!983995 (isEmpty!15644 (tail!3325 (list!10784 (charsOf!2779 (head!5034 tokens!456))))))))

(declare-fun b!2301565 () Bool)

(declare-fun e!1474910 () Bool)

(assert (=> b!2301565 (= e!1474907 e!1474910)))

(declare-fun res!983996 () Bool)

(assert (=> b!2301565 (=> (not res!983996) (not e!1474910))))

(assert (=> b!2301565 (= res!983996 (not lt!853695))))

(declare-fun bm!137048 () Bool)

(assert (=> bm!137048 (= call!137053 (isEmpty!15644 (list!10784 (charsOf!2779 (head!5034 tokens!456)))))))

(declare-fun b!2301566 () Bool)

(declare-fun res!983997 () Bool)

(declare-fun e!1474906 () Bool)

(assert (=> b!2301566 (=> res!983997 e!1474906)))

(assert (=> b!2301566 (= res!983997 (not (isEmpty!15644 (tail!3325 (list!10784 (charsOf!2779 (head!5034 tokens!456)))))))))

(declare-fun b!2301567 () Bool)

(assert (=> b!2301567 (= e!1474910 e!1474906)))

(declare-fun res!983993 () Bool)

(assert (=> b!2301567 (=> res!983993 e!1474906)))

(assert (=> b!2301567 (= res!983993 call!137053)))

(declare-fun b!2301568 () Bool)

(assert (=> b!2301568 (= e!1474906 (not (= (head!5036 (list!10784 (charsOf!2779 (head!5034 tokens!456)))) (c!364891 (regex!4391 r!2363)))))))

(declare-fun b!2301569 () Bool)

(declare-fun res!983991 () Bool)

(assert (=> b!2301569 (=> (not res!983991) (not e!1474905))))

(assert (=> b!2301569 (= res!983991 (not call!137053))))

(declare-fun b!2301570 () Bool)

(assert (=> b!2301570 (= e!1474911 e!1474909)))

(declare-fun c!364905 () Bool)

(assert (=> b!2301570 (= c!364905 ((_ is EmptyLang!6739) (regex!4391 r!2363)))))

(declare-fun b!2301571 () Bool)

(declare-fun res!983992 () Bool)

(assert (=> b!2301571 (=> res!983992 e!1474907)))

(assert (=> b!2301571 (= res!983992 (not ((_ is ElementMatch!6739) (regex!4391 r!2363))))))

(assert (=> b!2301571 (= e!1474909 e!1474907)))

(assert (= (and d!680801 c!364906) b!2301562))

(assert (= (and d!680801 (not c!364906)) b!2301561))

(assert (= (and d!680801 c!364907) b!2301559))

(assert (= (and d!680801 (not c!364907)) b!2301570))

(assert (= (and b!2301570 c!364905) b!2301560))

(assert (= (and b!2301570 (not c!364905)) b!2301571))

(assert (= (and b!2301571 (not res!983992)) b!2301563))

(assert (= (and b!2301563 res!983990) b!2301569))

(assert (= (and b!2301569 res!983991) b!2301564))

(assert (= (and b!2301564 res!983995) b!2301558))

(assert (= (and b!2301563 (not res!983994)) b!2301565))

(assert (= (and b!2301565 res!983996) b!2301567))

(assert (= (and b!2301567 (not res!983993)) b!2301566))

(assert (= (and b!2301566 (not res!983997)) b!2301568))

(assert (= (or b!2301559 b!2301567 b!2301569) bm!137048))

(assert (=> b!2301566 m!2728809))

(declare-fun m!2728853 () Bool)

(assert (=> b!2301566 m!2728853))

(assert (=> b!2301566 m!2728853))

(declare-fun m!2728855 () Bool)

(assert (=> b!2301566 m!2728855))

(assert (=> b!2301561 m!2728809))

(declare-fun m!2728857 () Bool)

(assert (=> b!2301561 m!2728857))

(assert (=> b!2301561 m!2728857))

(declare-fun m!2728859 () Bool)

(assert (=> b!2301561 m!2728859))

(assert (=> b!2301561 m!2728809))

(assert (=> b!2301561 m!2728853))

(assert (=> b!2301561 m!2728859))

(assert (=> b!2301561 m!2728853))

(declare-fun m!2728861 () Bool)

(assert (=> b!2301561 m!2728861))

(declare-fun m!2728863 () Bool)

(assert (=> b!2301562 m!2728863))

(assert (=> b!2301568 m!2728809))

(assert (=> b!2301568 m!2728857))

(assert (=> d!680801 m!2728809))

(declare-fun m!2728865 () Bool)

(assert (=> d!680801 m!2728865))

(declare-fun m!2728867 () Bool)

(assert (=> d!680801 m!2728867))

(assert (=> b!2301558 m!2728809))

(assert (=> b!2301558 m!2728857))

(assert (=> bm!137048 m!2728809))

(assert (=> bm!137048 m!2728865))

(assert (=> b!2301564 m!2728809))

(assert (=> b!2301564 m!2728853))

(assert (=> b!2301564 m!2728853))

(assert (=> b!2301564 m!2728855))

(assert (=> b!2301463 d!680801))

(declare-fun d!680827 () Bool)

(declare-fun list!10788 (Conc!8930) List!27490)

(assert (=> d!680827 (= (list!10784 (charsOf!2779 (head!5034 tokens!456))) (list!10788 (c!364890 (charsOf!2779 (head!5034 tokens!456)))))))

(declare-fun bs!457711 () Bool)

(assert (= bs!457711 d!680827))

(declare-fun m!2728869 () Bool)

(assert (=> bs!457711 m!2728869))

(assert (=> b!2301463 d!680827))

(declare-fun d!680829 () Bool)

(declare-fun lt!853698 () BalanceConc!17588)

(assert (=> d!680829 (= (list!10784 lt!853698) (originalCharacters!5161 (head!5034 tokens!456)))))

(declare-fun dynLambda!11911 (Int TokenValue!4553) BalanceConc!17588)

(assert (=> d!680829 (= lt!853698 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456)))) (value!138963 (head!5034 tokens!456))))))

(assert (=> d!680829 (= (charsOf!2779 (head!5034 tokens!456)) lt!853698)))

(declare-fun b_lambda!73295 () Bool)

(assert (=> (not b_lambda!73295) (not d!680829)))

(declare-fun tb!137607 () Bool)

(declare-fun t!205880 () Bool)

(assert (=> (and b!2301464 (= (toChars!6060 (transformation!4391 r!2363)) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205880) tb!137607))

(declare-fun b!2301576 () Bool)

(declare-fun e!1474914 () Bool)

(declare-fun tp!730131 () Bool)

(declare-fun inv!37031 (Conc!8930) Bool)

(assert (=> b!2301576 (= e!1474914 (and (inv!37031 (c!364890 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456)))) (value!138963 (head!5034 tokens!456))))) tp!730131))))

(declare-fun result!167744 () Bool)

(declare-fun inv!37032 (BalanceConc!17588) Bool)

(assert (=> tb!137607 (= result!167744 (and (inv!37032 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456)))) (value!138963 (head!5034 tokens!456)))) e!1474914))))

(assert (= tb!137607 b!2301576))

(declare-fun m!2728871 () Bool)

(assert (=> b!2301576 m!2728871))

(declare-fun m!2728873 () Bool)

(assert (=> tb!137607 m!2728873))

(assert (=> d!680829 t!205880))

(declare-fun b_and!183329 () Bool)

(assert (= b_and!183307 (and (=> t!205880 result!167744) b_and!183329)))

(declare-fun tb!137609 () Bool)

(declare-fun t!205882 () Bool)

(assert (=> (and b!2301469 (= (toChars!6060 (transformation!4391 otherR!12)) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205882) tb!137609))

(declare-fun result!167748 () Bool)

(assert (= result!167748 result!167744))

(assert (=> d!680829 t!205882))

(declare-fun b_and!183331 () Bool)

(assert (= b_and!183311 (and (=> t!205882 result!167748) b_and!183331)))

(declare-fun t!205884 () Bool)

(declare-fun tb!137611 () Bool)

(assert (=> (and b!2301477 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205884) tb!137611))

(declare-fun result!167750 () Bool)

(assert (= result!167750 result!167744))

(assert (=> d!680829 t!205884))

(declare-fun b_and!183333 () Bool)

(assert (= b_and!183315 (and (=> t!205884 result!167750) b_and!183333)))

(declare-fun t!205886 () Bool)

(declare-fun tb!137613 () Bool)

(assert (=> (and b!2301485 (= (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205886) tb!137613))

(declare-fun result!167752 () Bool)

(assert (= result!167752 result!167744))

(assert (=> d!680829 t!205886))

(declare-fun b_and!183335 () Bool)

(assert (= b_and!183319 (and (=> t!205886 result!167752) b_and!183335)))

(declare-fun m!2728875 () Bool)

(assert (=> d!680829 m!2728875))

(declare-fun m!2728877 () Bool)

(assert (=> d!680829 m!2728877))

(assert (=> b!2301463 d!680829))

(declare-fun d!680831 () Bool)

(assert (=> d!680831 (= (head!5034 tokens!456) (h!32799 tokens!456))))

(assert (=> b!2301463 d!680831))

(declare-fun d!680833 () Bool)

(assert (=> d!680833 (= (inv!37024 (tag!4881 otherR!12)) (= (mod (str.len (value!138962 (tag!4881 otherR!12))) 2) 0))))

(assert (=> b!2301474 d!680833))

(declare-fun d!680835 () Bool)

(declare-fun res!984000 () Bool)

(declare-fun e!1474917 () Bool)

(assert (=> d!680835 (=> (not res!984000) (not e!1474917))))

(declare-fun semiInverseModEq!1784 (Int Int) Bool)

(assert (=> d!680835 (= res!984000 (semiInverseModEq!1784 (toChars!6060 (transformation!4391 otherR!12)) (toValue!6201 (transformation!4391 otherR!12))))))

(assert (=> d!680835 (= (inv!37027 (transformation!4391 otherR!12)) e!1474917)))

(declare-fun b!2301579 () Bool)

(declare-fun equivClasses!1703 (Int Int) Bool)

(assert (=> b!2301579 (= e!1474917 (equivClasses!1703 (toChars!6060 (transformation!4391 otherR!12)) (toValue!6201 (transformation!4391 otherR!12))))))

(assert (= (and d!680835 res!984000) b!2301579))

(declare-fun m!2728879 () Bool)

(assert (=> d!680835 m!2728879))

(declare-fun m!2728881 () Bool)

(assert (=> b!2301579 m!2728881))

(assert (=> b!2301474 d!680835))

(assert (=> b!2301465 d!680831))

(declare-fun b!2301590 () Bool)

(declare-fun e!1474924 () Bool)

(declare-fun inv!15 (TokenValue!4553) Bool)

(assert (=> b!2301590 (= e!1474924 (inv!15 (value!138963 (h!32799 tokens!456))))))

(declare-fun d!680837 () Bool)

(declare-fun c!364913 () Bool)

(assert (=> d!680837 (= c!364913 ((_ is IntegerValue!13659) (value!138963 (h!32799 tokens!456))))))

(declare-fun e!1474926 () Bool)

(assert (=> d!680837 (= (inv!21 (value!138963 (h!32799 tokens!456))) e!1474926)))

(declare-fun b!2301591 () Bool)

(declare-fun e!1474925 () Bool)

(assert (=> b!2301591 (= e!1474926 e!1474925)))

(declare-fun c!364912 () Bool)

(assert (=> b!2301591 (= c!364912 ((_ is IntegerValue!13660) (value!138963 (h!32799 tokens!456))))))

(declare-fun b!2301592 () Bool)

(declare-fun inv!16 (TokenValue!4553) Bool)

(assert (=> b!2301592 (= e!1474926 (inv!16 (value!138963 (h!32799 tokens!456))))))

(declare-fun b!2301593 () Bool)

(declare-fun res!984003 () Bool)

(assert (=> b!2301593 (=> res!984003 e!1474924)))

(assert (=> b!2301593 (= res!984003 (not ((_ is IntegerValue!13661) (value!138963 (h!32799 tokens!456)))))))

(assert (=> b!2301593 (= e!1474925 e!1474924)))

(declare-fun b!2301594 () Bool)

(declare-fun inv!17 (TokenValue!4553) Bool)

(assert (=> b!2301594 (= e!1474925 (inv!17 (value!138963 (h!32799 tokens!456))))))

(assert (= (and d!680837 c!364913) b!2301592))

(assert (= (and d!680837 (not c!364913)) b!2301591))

(assert (= (and b!2301591 c!364912) b!2301594))

(assert (= (and b!2301591 (not c!364912)) b!2301593))

(assert (= (and b!2301593 (not res!984003)) b!2301590))

(declare-fun m!2728883 () Bool)

(assert (=> b!2301590 m!2728883))

(declare-fun m!2728885 () Bool)

(assert (=> b!2301592 m!2728885))

(declare-fun m!2728887 () Bool)

(assert (=> b!2301594 m!2728887))

(assert (=> b!2301476 d!680837))

(declare-fun d!680839 () Bool)

(declare-fun lt!853701 () Int)

(assert (=> d!680839 (= lt!853701 (size!21606 (list!10784 (charsOf!2779 (head!5034 tokens!456)))))))

(declare-fun size!21608 (Conc!8930) Int)

(assert (=> d!680839 (= lt!853701 (size!21608 (c!364890 (charsOf!2779 (head!5034 tokens!456)))))))

(assert (=> d!680839 (= (size!21605 (charsOf!2779 (head!5034 tokens!456))) lt!853701)))

(declare-fun bs!457712 () Bool)

(assert (= bs!457712 d!680839))

(assert (=> bs!457712 m!2728801))

(assert (=> bs!457712 m!2728809))

(assert (=> bs!457712 m!2728809))

(declare-fun m!2728889 () Bool)

(assert (=> bs!457712 m!2728889))

(declare-fun m!2728891 () Bool)

(assert (=> bs!457712 m!2728891))

(assert (=> b!2301475 d!680839))

(assert (=> b!2301475 d!680829))

(assert (=> b!2301475 d!680831))

(declare-fun d!680841 () Bool)

(declare-fun lt!853704 () Int)

(assert (=> d!680841 (>= lt!853704 0)))

(declare-fun e!1474929 () Int)

(assert (=> d!680841 (= lt!853704 e!1474929)))

(declare-fun c!364916 () Bool)

(assert (=> d!680841 (= c!364916 ((_ is Nil!27396) otherP!12))))

(assert (=> d!680841 (= (size!21606 otherP!12) lt!853704)))

(declare-fun b!2301599 () Bool)

(assert (=> b!2301599 (= e!1474929 0)))

(declare-fun b!2301600 () Bool)

(assert (=> b!2301600 (= e!1474929 (+ 1 (size!21606 (t!205868 otherP!12))))))

(assert (= (and d!680841 c!364916) b!2301599))

(assert (= (and d!680841 (not c!364916)) b!2301600))

(declare-fun m!2728893 () Bool)

(assert (=> b!2301600 m!2728893))

(assert (=> b!2301475 d!680841))

(declare-fun d!680843 () Bool)

(assert (=> d!680843 (= (isEmpty!15640 tokens!456) ((_ is Nil!27398) tokens!456))))

(assert (=> b!2301488 d!680843))

(declare-fun d!680845 () Bool)

(declare-fun lt!853705 () Int)

(assert (=> d!680845 (>= lt!853705 0)))

(declare-fun e!1474930 () Int)

(assert (=> d!680845 (= lt!853705 e!1474930)))

(declare-fun c!364917 () Bool)

(assert (=> d!680845 (= c!364917 ((_ is Nil!27396) lt!853677))))

(assert (=> d!680845 (= (size!21606 lt!853677) lt!853705)))

(declare-fun b!2301601 () Bool)

(assert (=> b!2301601 (= e!1474930 0)))

(declare-fun b!2301602 () Bool)

(assert (=> b!2301602 (= e!1474930 (+ 1 (size!21606 (t!205868 lt!853677))))))

(assert (= (and d!680845 c!364917) b!2301601))

(assert (= (and d!680845 (not c!364917)) b!2301602))

(declare-fun m!2728895 () Bool)

(assert (=> b!2301602 m!2728895))

(assert (=> b!2301487 d!680845))

(assert (=> b!2301487 d!680841))

(declare-fun d!680847 () Bool)

(assert (=> d!680847 (isPrefix!2381 lt!853677 (++!6705 lt!853677 (_2!16151 lt!853678)))))

(declare-fun lt!853708 () Unit!40300)

(declare-fun choose!13436 (List!27490 List!27490) Unit!40300)

(assert (=> d!680847 (= lt!853708 (choose!13436 lt!853677 (_2!16151 lt!853678)))))

(assert (=> d!680847 (= (lemmaConcatTwoListThenFirstIsPrefix!1574 lt!853677 (_2!16151 lt!853678)) lt!853708)))

(declare-fun bs!457713 () Bool)

(assert (= bs!457713 d!680847))

(assert (=> bs!457713 m!2728775))

(assert (=> bs!457713 m!2728775))

(declare-fun m!2728897 () Bool)

(assert (=> bs!457713 m!2728897))

(declare-fun m!2728899 () Bool)

(assert (=> bs!457713 m!2728899))

(assert (=> b!2301487 d!680847))

(declare-fun d!680849 () Bool)

(declare-fun lt!853709 () BalanceConc!17588)

(assert (=> d!680849 (= (list!10784 lt!853709) (originalCharacters!5161 (h!32799 tokens!456)))))

(assert (=> d!680849 (= lt!853709 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (value!138963 (h!32799 tokens!456))))))

(assert (=> d!680849 (= (charsOf!2779 (h!32799 tokens!456)) lt!853709)))

(declare-fun b_lambda!73297 () Bool)

(assert (=> (not b_lambda!73297) (not d!680849)))

(declare-fun t!205888 () Bool)

(declare-fun tb!137615 () Bool)

(assert (=> (and b!2301464 (= (toChars!6060 (transformation!4391 r!2363)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205888) tb!137615))

(declare-fun b!2301603 () Bool)

(declare-fun e!1474931 () Bool)

(declare-fun tp!730132 () Bool)

(assert (=> b!2301603 (= e!1474931 (and (inv!37031 (c!364890 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (value!138963 (h!32799 tokens!456))))) tp!730132))))

(declare-fun result!167754 () Bool)

(assert (=> tb!137615 (= result!167754 (and (inv!37032 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (value!138963 (h!32799 tokens!456)))) e!1474931))))

(assert (= tb!137615 b!2301603))

(declare-fun m!2728901 () Bool)

(assert (=> b!2301603 m!2728901))

(declare-fun m!2728903 () Bool)

(assert (=> tb!137615 m!2728903))

(assert (=> d!680849 t!205888))

(declare-fun b_and!183337 () Bool)

(assert (= b_and!183329 (and (=> t!205888 result!167754) b_and!183337)))

(declare-fun t!205890 () Bool)

(declare-fun tb!137617 () Bool)

(assert (=> (and b!2301469 (= (toChars!6060 (transformation!4391 otherR!12)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205890) tb!137617))

(declare-fun result!167756 () Bool)

(assert (= result!167756 result!167754))

(assert (=> d!680849 t!205890))

(declare-fun b_and!183339 () Bool)

(assert (= b_and!183331 (and (=> t!205890 result!167756) b_and!183339)))

(declare-fun t!205892 () Bool)

(declare-fun tb!137619 () Bool)

(assert (=> (and b!2301477 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205892) tb!137619))

(declare-fun result!167758 () Bool)

(assert (= result!167758 result!167754))

(assert (=> d!680849 t!205892))

(declare-fun b_and!183341 () Bool)

(assert (= b_and!183333 (and (=> t!205892 result!167758) b_and!183341)))

(declare-fun t!205894 () Bool)

(declare-fun tb!137621 () Bool)

(assert (=> (and b!2301485 (= (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205894) tb!137621))

(declare-fun result!167760 () Bool)

(assert (= result!167760 result!167754))

(assert (=> d!680849 t!205894))

(declare-fun b_and!183343 () Bool)

(assert (= b_and!183335 (and (=> t!205894 result!167760) b_and!183343)))

(declare-fun m!2728905 () Bool)

(assert (=> d!680849 m!2728905))

(declare-fun m!2728907 () Bool)

(assert (=> d!680849 m!2728907))

(assert (=> b!2301487 d!680849))

(declare-fun d!680851 () Bool)

(assert (=> d!680851 (= (_2!16151 lt!853678) lt!853676)))

(declare-fun lt!853712 () Unit!40300)

(declare-fun choose!13437 (List!27490 List!27490 List!27490 List!27490 List!27490) Unit!40300)

(assert (=> d!680851 (= lt!853712 (choose!13437 lt!853677 (_2!16151 lt!853678) lt!853677 lt!853676 input!1722))))

(assert (=> d!680851 (isPrefix!2381 lt!853677 input!1722)))

(assert (=> d!680851 (= (lemmaSamePrefixThenSameSuffix!1062 lt!853677 (_2!16151 lt!853678) lt!853677 lt!853676 input!1722) lt!853712)))

(declare-fun bs!457714 () Bool)

(assert (= bs!457714 d!680851))

(declare-fun m!2728909 () Bool)

(assert (=> bs!457714 m!2728909))

(declare-fun m!2728911 () Bool)

(assert (=> bs!457714 m!2728911))

(assert (=> b!2301487 d!680851))

(declare-fun d!680853 () Bool)

(assert (=> d!680853 (= (get!8258 (maxPrefix!2244 thiss!16613 rules!1750 input!1722)) (v!30482 (maxPrefix!2244 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2301487 d!680853))

(declare-fun b!2301684 () Bool)

(declare-fun e!1474967 () Bool)

(declare-fun lt!853760 () Option!5387)

(assert (=> b!2301684 (= e!1474967 (contains!4777 rules!1750 (rule!6737 (_1!16151 (get!8258 lt!853760)))))))

(declare-fun b!2301685 () Bool)

(declare-fun res!984059 () Bool)

(assert (=> b!2301685 (=> (not res!984059) (not e!1474967))))

(assert (=> b!2301685 (= res!984059 (= (list!10784 (charsOf!2779 (_1!16151 (get!8258 lt!853760)))) (originalCharacters!5161 (_1!16151 (get!8258 lt!853760)))))))

(declare-fun b!2301686 () Bool)

(declare-fun e!1474968 () Option!5387)

(declare-fun lt!853759 () Option!5387)

(declare-fun lt!853757 () Option!5387)

(assert (=> b!2301686 (= e!1474968 (ite (and ((_ is None!5386) lt!853759) ((_ is None!5386) lt!853757)) None!5386 (ite ((_ is None!5386) lt!853757) lt!853759 (ite ((_ is None!5386) lt!853759) lt!853757 (ite (>= (size!21604 (_1!16151 (v!30482 lt!853759))) (size!21604 (_1!16151 (v!30482 lt!853757)))) lt!853759 lt!853757)))))))

(declare-fun call!137059 () Option!5387)

(assert (=> b!2301686 (= lt!853759 call!137059)))

(assert (=> b!2301686 (= lt!853757 (maxPrefix!2244 thiss!16613 (t!205869 rules!1750) input!1722))))

(declare-fun bm!137054 () Bool)

(declare-fun maxPrefixOneRule!1414 (LexerInterface!3988 Rule!8582 List!27490) Option!5387)

(assert (=> bm!137054 (= call!137059 (maxPrefixOneRule!1414 thiss!16613 (h!32798 rules!1750) input!1722))))

(declare-fun b!2301687 () Bool)

(declare-fun res!984058 () Bool)

(assert (=> b!2301687 (=> (not res!984058) (not e!1474967))))

(assert (=> b!2301687 (= res!984058 (matchR!2996 (regex!4391 (rule!6737 (_1!16151 (get!8258 lt!853760)))) (list!10784 (charsOf!2779 (_1!16151 (get!8258 lt!853760))))))))

(declare-fun d!680855 () Bool)

(declare-fun e!1474966 () Bool)

(assert (=> d!680855 e!1474966))

(declare-fun res!984055 () Bool)

(assert (=> d!680855 (=> res!984055 e!1474966)))

(declare-fun isEmpty!15645 (Option!5387) Bool)

(assert (=> d!680855 (= res!984055 (isEmpty!15645 lt!853760))))

(assert (=> d!680855 (= lt!853760 e!1474968)))

(declare-fun c!364933 () Bool)

(assert (=> d!680855 (= c!364933 (and ((_ is Cons!27397) rules!1750) ((_ is Nil!27397) (t!205869 rules!1750))))))

(declare-fun lt!853758 () Unit!40300)

(declare-fun lt!853761 () Unit!40300)

(assert (=> d!680855 (= lt!853758 lt!853761)))

(assert (=> d!680855 (isPrefix!2381 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1511 (List!27490 List!27490) Unit!40300)

(assert (=> d!680855 (= lt!853761 (lemmaIsPrefixRefl!1511 input!1722 input!1722))))

(declare-fun rulesValidInductive!1553 (LexerInterface!3988 List!27491) Bool)

(assert (=> d!680855 (rulesValidInductive!1553 thiss!16613 rules!1750)))

(assert (=> d!680855 (= (maxPrefix!2244 thiss!16613 rules!1750 input!1722) lt!853760)))

(declare-fun b!2301688 () Bool)

(assert (=> b!2301688 (= e!1474966 e!1474967)))

(declare-fun res!984060 () Bool)

(assert (=> b!2301688 (=> (not res!984060) (not e!1474967))))

(declare-fun isDefined!4244 (Option!5387) Bool)

(assert (=> b!2301688 (= res!984060 (isDefined!4244 lt!853760))))

(declare-fun b!2301689 () Bool)

(declare-fun res!984057 () Bool)

(assert (=> b!2301689 (=> (not res!984057) (not e!1474967))))

(declare-fun apply!6653 (TokenValueInjection!8646 BalanceConc!17588) TokenValue!4553)

(assert (=> b!2301689 (= res!984057 (= (value!138963 (_1!16151 (get!8258 lt!853760))) (apply!6653 (transformation!4391 (rule!6737 (_1!16151 (get!8258 lt!853760)))) (seqFromList!3095 (originalCharacters!5161 (_1!16151 (get!8258 lt!853760)))))))))

(declare-fun b!2301690 () Bool)

(declare-fun res!984054 () Bool)

(assert (=> b!2301690 (=> (not res!984054) (not e!1474967))))

(assert (=> b!2301690 (= res!984054 (< (size!21606 (_2!16151 (get!8258 lt!853760))) (size!21606 input!1722)))))

(declare-fun b!2301691 () Bool)

(assert (=> b!2301691 (= e!1474968 call!137059)))

(declare-fun b!2301692 () Bool)

(declare-fun res!984056 () Bool)

(assert (=> b!2301692 (=> (not res!984056) (not e!1474967))))

(assert (=> b!2301692 (= res!984056 (= (++!6705 (list!10784 (charsOf!2779 (_1!16151 (get!8258 lt!853760)))) (_2!16151 (get!8258 lt!853760))) input!1722))))

(assert (= (and d!680855 c!364933) b!2301691))

(assert (= (and d!680855 (not c!364933)) b!2301686))

(assert (= (or b!2301691 b!2301686) bm!137054))

(assert (= (and d!680855 (not res!984055)) b!2301688))

(assert (= (and b!2301688 res!984060) b!2301685))

(assert (= (and b!2301685 res!984059) b!2301690))

(assert (= (and b!2301690 res!984054) b!2301692))

(assert (= (and b!2301692 res!984056) b!2301689))

(assert (= (and b!2301689 res!984057) b!2301687))

(assert (= (and b!2301687 res!984058) b!2301684))

(declare-fun m!2729007 () Bool)

(assert (=> bm!137054 m!2729007))

(declare-fun m!2729009 () Bool)

(assert (=> b!2301689 m!2729009))

(declare-fun m!2729011 () Bool)

(assert (=> b!2301689 m!2729011))

(assert (=> b!2301689 m!2729011))

(declare-fun m!2729013 () Bool)

(assert (=> b!2301689 m!2729013))

(declare-fun m!2729015 () Bool)

(assert (=> b!2301688 m!2729015))

(assert (=> b!2301684 m!2729009))

(declare-fun m!2729017 () Bool)

(assert (=> b!2301684 m!2729017))

(assert (=> b!2301685 m!2729009))

(declare-fun m!2729019 () Bool)

(assert (=> b!2301685 m!2729019))

(assert (=> b!2301685 m!2729019))

(declare-fun m!2729021 () Bool)

(assert (=> b!2301685 m!2729021))

(assert (=> b!2301690 m!2729009))

(declare-fun m!2729023 () Bool)

(assert (=> b!2301690 m!2729023))

(declare-fun m!2729025 () Bool)

(assert (=> b!2301690 m!2729025))

(declare-fun m!2729027 () Bool)

(assert (=> d!680855 m!2729027))

(declare-fun m!2729029 () Bool)

(assert (=> d!680855 m!2729029))

(declare-fun m!2729031 () Bool)

(assert (=> d!680855 m!2729031))

(declare-fun m!2729033 () Bool)

(assert (=> d!680855 m!2729033))

(assert (=> b!2301687 m!2729009))

(assert (=> b!2301687 m!2729019))

(assert (=> b!2301687 m!2729019))

(assert (=> b!2301687 m!2729021))

(assert (=> b!2301687 m!2729021))

(declare-fun m!2729035 () Bool)

(assert (=> b!2301687 m!2729035))

(declare-fun m!2729037 () Bool)

(assert (=> b!2301686 m!2729037))

(assert (=> b!2301692 m!2729009))

(assert (=> b!2301692 m!2729019))

(assert (=> b!2301692 m!2729019))

(assert (=> b!2301692 m!2729021))

(assert (=> b!2301692 m!2729021))

(declare-fun m!2729039 () Bool)

(assert (=> b!2301692 m!2729039))

(assert (=> b!2301487 d!680855))

(declare-fun b!2301728 () Bool)

(declare-fun e!1474996 () Bool)

(declare-fun e!1474995 () Bool)

(assert (=> b!2301728 (= e!1474996 e!1474995)))

(declare-fun res!984092 () Bool)

(assert (=> b!2301728 (=> (not res!984092) (not e!1474995))))

(assert (=> b!2301728 (= res!984092 (not ((_ is Nil!27396) lt!853682)))))

(declare-fun b!2301731 () Bool)

(declare-fun e!1474997 () Bool)

(assert (=> b!2301731 (= e!1474997 (>= (size!21606 lt!853682) (size!21606 lt!853677)))))

(declare-fun b!2301730 () Bool)

(assert (=> b!2301730 (= e!1474995 (isPrefix!2381 (tail!3325 lt!853677) (tail!3325 lt!853682)))))

(declare-fun d!680881 () Bool)

(assert (=> d!680881 e!1474997))

(declare-fun res!984090 () Bool)

(assert (=> d!680881 (=> res!984090 e!1474997)))

(declare-fun lt!853774 () Bool)

(assert (=> d!680881 (= res!984090 (not lt!853774))))

(assert (=> d!680881 (= lt!853774 e!1474996)))

(declare-fun res!984093 () Bool)

(assert (=> d!680881 (=> res!984093 e!1474996)))

(assert (=> d!680881 (= res!984093 ((_ is Nil!27396) lt!853677))))

(assert (=> d!680881 (= (isPrefix!2381 lt!853677 lt!853682) lt!853774)))

(declare-fun b!2301729 () Bool)

(declare-fun res!984091 () Bool)

(assert (=> b!2301729 (=> (not res!984091) (not e!1474995))))

(assert (=> b!2301729 (= res!984091 (= (head!5036 lt!853677) (head!5036 lt!853682)))))

(assert (= (and d!680881 (not res!984093)) b!2301728))

(assert (= (and b!2301728 res!984092) b!2301729))

(assert (= (and b!2301729 res!984091) b!2301730))

(assert (= (and d!680881 (not res!984090)) b!2301731))

(declare-fun m!2729069 () Bool)

(assert (=> b!2301731 m!2729069))

(assert (=> b!2301731 m!2728767))

(declare-fun m!2729071 () Bool)

(assert (=> b!2301730 m!2729071))

(declare-fun m!2729073 () Bool)

(assert (=> b!2301730 m!2729073))

(assert (=> b!2301730 m!2729071))

(assert (=> b!2301730 m!2729073))

(declare-fun m!2729075 () Bool)

(assert (=> b!2301730 m!2729075))

(declare-fun m!2729077 () Bool)

(assert (=> b!2301729 m!2729077))

(declare-fun m!2729079 () Bool)

(assert (=> b!2301729 m!2729079))

(assert (=> b!2301487 d!680881))

(declare-fun d!680901 () Bool)

(assert (=> d!680901 (= (list!10784 (charsOf!2779 (h!32799 tokens!456))) (list!10788 (c!364890 (charsOf!2779 (h!32799 tokens!456)))))))

(declare-fun bs!457720 () Bool)

(assert (= bs!457720 d!680901))

(declare-fun m!2729081 () Bool)

(assert (=> bs!457720 m!2729081))

(assert (=> b!2301487 d!680901))

(declare-fun b!2301760 () Bool)

(declare-fun e!1475014 () List!27490)

(assert (=> b!2301760 (= e!1475014 (Cons!27396 (h!32797 lt!853677) (++!6705 (t!205868 lt!853677) (_2!16151 lt!853678))))))

(declare-fun b!2301762 () Bool)

(declare-fun lt!853786 () List!27490)

(declare-fun e!1475013 () Bool)

(assert (=> b!2301762 (= e!1475013 (or (not (= (_2!16151 lt!853678) Nil!27396)) (= lt!853786 lt!853677)))))

(declare-fun b!2301759 () Bool)

(assert (=> b!2301759 (= e!1475014 (_2!16151 lt!853678))))

(declare-fun b!2301761 () Bool)

(declare-fun res!984100 () Bool)

(assert (=> b!2301761 (=> (not res!984100) (not e!1475013))))

(assert (=> b!2301761 (= res!984100 (= (size!21606 lt!853786) (+ (size!21606 lt!853677) (size!21606 (_2!16151 lt!853678)))))))

(declare-fun d!680903 () Bool)

(assert (=> d!680903 e!1475013))

(declare-fun res!984101 () Bool)

(assert (=> d!680903 (=> (not res!984101) (not e!1475013))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3690 (List!27490) (InoxSet C!13624))

(assert (=> d!680903 (= res!984101 (= (content!3690 lt!853786) ((_ map or) (content!3690 lt!853677) (content!3690 (_2!16151 lt!853678)))))))

(assert (=> d!680903 (= lt!853786 e!1475014)))

(declare-fun c!364947 () Bool)

(assert (=> d!680903 (= c!364947 ((_ is Nil!27396) lt!853677))))

(assert (=> d!680903 (= (++!6705 lt!853677 (_2!16151 lt!853678)) lt!853786)))

(assert (= (and d!680903 c!364947) b!2301759))

(assert (= (and d!680903 (not c!364947)) b!2301760))

(assert (= (and d!680903 res!984101) b!2301761))

(assert (= (and b!2301761 res!984100) b!2301762))

(declare-fun m!2729105 () Bool)

(assert (=> b!2301760 m!2729105))

(declare-fun m!2729107 () Bool)

(assert (=> b!2301761 m!2729107))

(assert (=> b!2301761 m!2728767))

(declare-fun m!2729109 () Bool)

(assert (=> b!2301761 m!2729109))

(declare-fun m!2729111 () Bool)

(assert (=> d!680903 m!2729111))

(declare-fun m!2729113 () Bool)

(assert (=> d!680903 m!2729113))

(declare-fun m!2729115 () Bool)

(assert (=> d!680903 m!2729115))

(assert (=> b!2301487 d!680903))

(declare-fun d!680917 () Bool)

(declare-fun lt!853789 () List!27490)

(assert (=> d!680917 (= (++!6705 lt!853677 lt!853789) input!1722)))

(declare-fun e!1475017 () List!27490)

(assert (=> d!680917 (= lt!853789 e!1475017)))

(declare-fun c!364950 () Bool)

(assert (=> d!680917 (= c!364950 ((_ is Cons!27396) lt!853677))))

(assert (=> d!680917 (>= (size!21606 input!1722) (size!21606 lt!853677))))

(assert (=> d!680917 (= (getSuffix!1160 input!1722 lt!853677) lt!853789)))

(declare-fun b!2301767 () Bool)

(assert (=> b!2301767 (= e!1475017 (getSuffix!1160 (tail!3325 input!1722) (t!205868 lt!853677)))))

(declare-fun b!2301768 () Bool)

(assert (=> b!2301768 (= e!1475017 input!1722)))

(assert (= (and d!680917 c!364950) b!2301767))

(assert (= (and d!680917 (not c!364950)) b!2301768))

(declare-fun m!2729117 () Bool)

(assert (=> d!680917 m!2729117))

(assert (=> d!680917 m!2729025))

(assert (=> d!680917 m!2728767))

(declare-fun m!2729119 () Bool)

(assert (=> b!2301767 m!2729119))

(assert (=> b!2301767 m!2729119))

(declare-fun m!2729121 () Bool)

(assert (=> b!2301767 m!2729121))

(assert (=> b!2301487 d!680917))

(declare-fun d!680919 () Bool)

(assert (=> d!680919 (= (inv!37024 (tag!4881 r!2363)) (= (mod (str.len (value!138962 (tag!4881 r!2363))) 2) 0))))

(assert (=> b!2301466 d!680919))

(declare-fun d!680921 () Bool)

(declare-fun res!984102 () Bool)

(declare-fun e!1475018 () Bool)

(assert (=> d!680921 (=> (not res!984102) (not e!1475018))))

(assert (=> d!680921 (= res!984102 (semiInverseModEq!1784 (toChars!6060 (transformation!4391 r!2363)) (toValue!6201 (transformation!4391 r!2363))))))

(assert (=> d!680921 (= (inv!37027 (transformation!4391 r!2363)) e!1475018)))

(declare-fun b!2301769 () Bool)

(assert (=> b!2301769 (= e!1475018 (equivClasses!1703 (toChars!6060 (transformation!4391 r!2363)) (toValue!6201 (transformation!4391 r!2363))))))

(assert (= (and d!680921 res!984102) b!2301769))

(declare-fun m!2729123 () Bool)

(assert (=> d!680921 m!2729123))

(declare-fun m!2729125 () Bool)

(assert (=> b!2301769 m!2729125))

(assert (=> b!2301466 d!680921))

(declare-fun d!680923 () Bool)

(assert (=> d!680923 (= (isEmpty!15639 rules!1750) ((_ is Nil!27397) rules!1750))))

(assert (=> b!2301457 d!680923))

(declare-fun d!680925 () Bool)

(assert (=> d!680925 (= (inv!37024 (tag!4881 (rule!6737 (h!32799 tokens!456)))) (= (mod (str.len (value!138962 (tag!4881 (rule!6737 (h!32799 tokens!456))))) 2) 0))))

(assert (=> b!2301468 d!680925))

(declare-fun d!680927 () Bool)

(declare-fun res!984103 () Bool)

(declare-fun e!1475023 () Bool)

(assert (=> d!680927 (=> (not res!984103) (not e!1475023))))

(assert (=> d!680927 (= res!984103 (semiInverseModEq!1784 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (toValue!6201 (transformation!4391 (rule!6737 (h!32799 tokens!456))))))))

(assert (=> d!680927 (= (inv!37027 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) e!1475023)))

(declare-fun b!2301778 () Bool)

(assert (=> b!2301778 (= e!1475023 (equivClasses!1703 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (toValue!6201 (transformation!4391 (rule!6737 (h!32799 tokens!456))))))))

(assert (= (and d!680927 res!984103) b!2301778))

(declare-fun m!2729127 () Bool)

(assert (=> d!680927 m!2729127))

(declare-fun m!2729129 () Bool)

(assert (=> b!2301778 m!2729129))

(assert (=> b!2301468 d!680927))

(declare-fun d!680929 () Bool)

(declare-fun res!984122 () Bool)

(declare-fun e!1475036 () Bool)

(assert (=> d!680929 (=> (not res!984122) (not e!1475036))))

(declare-fun rulesValid!1628 (LexerInterface!3988 List!27491) Bool)

(assert (=> d!680929 (= res!984122 (rulesValid!1628 thiss!16613 rules!1750))))

(assert (=> d!680929 (= (rulesInvariant!3490 thiss!16613 rules!1750) e!1475036)))

(declare-fun b!2301801 () Bool)

(declare-datatypes ((List!27494 0))(
  ( (Nil!27400) (Cons!27400 (h!32801 String!29869) (t!205920 List!27494)) )
))
(declare-fun noDuplicateTag!1626 (LexerInterface!3988 List!27491 List!27494) Bool)

(assert (=> b!2301801 (= e!1475036 (noDuplicateTag!1626 thiss!16613 rules!1750 Nil!27400))))

(assert (= (and d!680929 res!984122) b!2301801))

(declare-fun m!2729131 () Bool)

(assert (=> d!680929 m!2729131))

(declare-fun m!2729133 () Bool)

(assert (=> b!2301801 m!2729133))

(assert (=> b!2301479 d!680929))

(declare-fun d!680931 () Bool)

(assert (=> d!680931 (= r!2363 otherR!12)))

(declare-fun lt!853794 () Unit!40300)

(declare-fun choose!13438 (List!27491 Rule!8582 Rule!8582) Unit!40300)

(assert (=> d!680931 (= lt!853794 (choose!13438 rules!1750 r!2363 otherR!12))))

(assert (=> d!680931 (contains!4777 rules!1750 r!2363)))

(assert (=> d!680931 (= (lemmaSameIndexThenSameElement!184 rules!1750 r!2363 otherR!12) lt!853794)))

(declare-fun bs!457723 () Bool)

(assert (= bs!457723 d!680931))

(declare-fun m!2729135 () Bool)

(assert (=> bs!457723 m!2729135))

(assert (=> bs!457723 m!2728797))

(assert (=> b!2301481 d!680931))

(declare-fun d!680933 () Bool)

(declare-fun res!984135 () Bool)

(declare-fun e!1475046 () Bool)

(assert (=> d!680933 (=> (not res!984135) (not e!1475046))))

(assert (=> d!680933 (= res!984135 (not (isEmpty!15644 (originalCharacters!5161 (h!32799 tokens!456)))))))

(assert (=> d!680933 (= (inv!37028 (h!32799 tokens!456)) e!1475046)))

(declare-fun b!2301820 () Bool)

(declare-fun res!984136 () Bool)

(assert (=> b!2301820 (=> (not res!984136) (not e!1475046))))

(assert (=> b!2301820 (= res!984136 (= (originalCharacters!5161 (h!32799 tokens!456)) (list!10784 (dynLambda!11911 (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))) (value!138963 (h!32799 tokens!456))))))))

(declare-fun b!2301821 () Bool)

(assert (=> b!2301821 (= e!1475046 (= (size!21604 (h!32799 tokens!456)) (size!21606 (originalCharacters!5161 (h!32799 tokens!456)))))))

(assert (= (and d!680933 res!984135) b!2301820))

(assert (= (and b!2301820 res!984136) b!2301821))

(declare-fun b_lambda!73303 () Bool)

(assert (=> (not b_lambda!73303) (not b!2301820)))

(assert (=> b!2301820 t!205888))

(declare-fun b_and!183361 () Bool)

(assert (= b_and!183337 (and (=> t!205888 result!167754) b_and!183361)))

(assert (=> b!2301820 t!205890))

(declare-fun b_and!183363 () Bool)

(assert (= b_and!183339 (and (=> t!205890 result!167756) b_and!183363)))

(assert (=> b!2301820 t!205892))

(declare-fun b_and!183365 () Bool)

(assert (= b_and!183341 (and (=> t!205892 result!167758) b_and!183365)))

(assert (=> b!2301820 t!205894))

(declare-fun b_and!183367 () Bool)

(assert (= b_and!183343 (and (=> t!205894 result!167760) b_and!183367)))

(declare-fun m!2729155 () Bool)

(assert (=> d!680933 m!2729155))

(assert (=> b!2301820 m!2728907))

(assert (=> b!2301820 m!2728907))

(declare-fun m!2729157 () Bool)

(assert (=> b!2301820 m!2729157))

(declare-fun m!2729159 () Bool)

(assert (=> b!2301821 m!2729159))

(assert (=> b!2301459 d!680933))

(declare-fun b!2301825 () Bool)

(declare-fun e!1475051 () Bool)

(declare-fun e!1475050 () Bool)

(assert (=> b!2301825 (= e!1475051 e!1475050)))

(declare-fun res!984142 () Bool)

(assert (=> b!2301825 (=> (not res!984142) (not e!1475050))))

(assert (=> b!2301825 (= res!984142 (not ((_ is Nil!27396) input!1722)))))

(declare-fun b!2301828 () Bool)

(declare-fun e!1475052 () Bool)

(assert (=> b!2301828 (= e!1475052 (>= (size!21606 input!1722) (size!21606 otherP!12)))))

(declare-fun b!2301827 () Bool)

(assert (=> b!2301827 (= e!1475050 (isPrefix!2381 (tail!3325 otherP!12) (tail!3325 input!1722)))))

(declare-fun d!680943 () Bool)

(assert (=> d!680943 e!1475052))

(declare-fun res!984140 () Bool)

(assert (=> d!680943 (=> res!984140 e!1475052)))

(declare-fun lt!853797 () Bool)

(assert (=> d!680943 (= res!984140 (not lt!853797))))

(assert (=> d!680943 (= lt!853797 e!1475051)))

(declare-fun res!984143 () Bool)

(assert (=> d!680943 (=> res!984143 e!1475051)))

(assert (=> d!680943 (= res!984143 ((_ is Nil!27396) otherP!12))))

(assert (=> d!680943 (= (isPrefix!2381 otherP!12 input!1722) lt!853797)))

(declare-fun b!2301826 () Bool)

(declare-fun res!984141 () Bool)

(assert (=> b!2301826 (=> (not res!984141) (not e!1475050))))

(assert (=> b!2301826 (= res!984141 (= (head!5036 otherP!12) (head!5036 input!1722)))))

(assert (= (and d!680943 (not res!984143)) b!2301825))

(assert (= (and b!2301825 res!984142) b!2301826))

(assert (= (and b!2301826 res!984141) b!2301827))

(assert (= (and d!680943 (not res!984140)) b!2301828))

(assert (=> b!2301828 m!2729025))

(assert (=> b!2301828 m!2728781))

(declare-fun m!2729165 () Bool)

(assert (=> b!2301827 m!2729165))

(assert (=> b!2301827 m!2729119))

(assert (=> b!2301827 m!2729165))

(assert (=> b!2301827 m!2729119))

(declare-fun m!2729167 () Bool)

(assert (=> b!2301827 m!2729167))

(declare-fun m!2729169 () Bool)

(assert (=> b!2301826 m!2729169))

(declare-fun m!2729171 () Bool)

(assert (=> b!2301826 m!2729171))

(assert (=> b!2301470 d!680943))

(declare-fun d!680945 () Bool)

(declare-fun lt!853800 () Bool)

(declare-fun content!3691 (List!27491) (InoxSet Rule!8582))

(assert (=> d!680945 (= lt!853800 (select (content!3691 rules!1750) r!2363))))

(declare-fun e!1475072 () Bool)

(assert (=> d!680945 (= lt!853800 e!1475072)))

(declare-fun res!984148 () Bool)

(assert (=> d!680945 (=> (not res!984148) (not e!1475072))))

(assert (=> d!680945 (= res!984148 ((_ is Cons!27397) rules!1750))))

(assert (=> d!680945 (= (contains!4777 rules!1750 r!2363) lt!853800)))

(declare-fun b!2301848 () Bool)

(declare-fun e!1475071 () Bool)

(assert (=> b!2301848 (= e!1475072 e!1475071)))

(declare-fun res!984149 () Bool)

(assert (=> b!2301848 (=> res!984149 e!1475071)))

(assert (=> b!2301848 (= res!984149 (= (h!32798 rules!1750) r!2363))))

(declare-fun b!2301849 () Bool)

(assert (=> b!2301849 (= e!1475071 (contains!4777 (t!205869 rules!1750) r!2363))))

(assert (= (and d!680945 res!984148) b!2301848))

(assert (= (and b!2301848 (not res!984149)) b!2301849))

(declare-fun m!2729177 () Bool)

(assert (=> d!680945 m!2729177))

(declare-fun m!2729179 () Bool)

(assert (=> d!680945 m!2729179))

(declare-fun m!2729181 () Bool)

(assert (=> b!2301849 m!2729181))

(assert (=> b!2301461 d!680945))

(declare-fun d!680947 () Bool)

(declare-fun list!10789 (Conc!8931) List!27492)

(assert (=> d!680947 (= (list!10785 (_1!16149 lt!853681)) (list!10789 (c!364892 (_1!16149 lt!853681))))))

(declare-fun bs!457725 () Bool)

(assert (= bs!457725 d!680947))

(declare-fun m!2729183 () Bool)

(assert (=> bs!457725 m!2729183))

(assert (=> b!2301472 d!680947))

(declare-fun d!680949 () Bool)

(assert (=> d!680949 (= (list!10784 (_2!16149 lt!853681)) (list!10788 (c!364890 (_2!16149 lt!853681))))))

(declare-fun bs!457726 () Bool)

(assert (= bs!457726 d!680949))

(declare-fun m!2729185 () Bool)

(assert (=> bs!457726 m!2729185))

(assert (=> b!2301472 d!680949))

(declare-fun b!2301904 () Bool)

(declare-fun e!1475107 () Bool)

(declare-fun lt!853803 () tuple2!27278)

(assert (=> b!2301904 (= e!1475107 (= (_2!16149 lt!853803) (seqFromList!3095 input!1722)))))

(declare-fun b!2301905 () Bool)

(declare-fun e!1475109 () Bool)

(declare-fun isEmpty!15646 (BalanceConc!17590) Bool)

(assert (=> b!2301905 (= e!1475109 (not (isEmpty!15646 (_1!16149 lt!853803))))))

(declare-fun b!2301906 () Bool)

(assert (=> b!2301906 (= e!1475107 e!1475109)))

(declare-fun res!984158 () Bool)

(assert (=> b!2301906 (= res!984158 (< (size!21605 (_2!16149 lt!853803)) (size!21605 (seqFromList!3095 input!1722))))))

(assert (=> b!2301906 (=> (not res!984158) (not e!1475109))))

(declare-fun b!2301907 () Bool)

(declare-fun res!984157 () Bool)

(declare-fun e!1475108 () Bool)

(assert (=> b!2301907 (=> (not res!984157) (not e!1475108))))

(declare-fun lexList!1128 (LexerInterface!3988 List!27491 List!27490) tuple2!27280)

(assert (=> b!2301907 (= res!984157 (= (list!10785 (_1!16149 lt!853803)) (_1!16150 (lexList!1128 thiss!16613 rules!1750 (list!10784 (seqFromList!3095 input!1722))))))))

(declare-fun b!2301908 () Bool)

(assert (=> b!2301908 (= e!1475108 (= (list!10784 (_2!16149 lt!853803)) (_2!16150 (lexList!1128 thiss!16613 rules!1750 (list!10784 (seqFromList!3095 input!1722))))))))

(declare-fun d!680951 () Bool)

(assert (=> d!680951 e!1475108))

(declare-fun res!984156 () Bool)

(assert (=> d!680951 (=> (not res!984156) (not e!1475108))))

(assert (=> d!680951 (= res!984156 e!1475107)))

(declare-fun c!364962 () Bool)

(declare-fun size!21610 (BalanceConc!17590) Int)

(assert (=> d!680951 (= c!364962 (> (size!21610 (_1!16149 lt!853803)) 0))))

(declare-fun lexTailRecV2!803 (LexerInterface!3988 List!27491 BalanceConc!17588 BalanceConc!17588 BalanceConc!17588 BalanceConc!17590) tuple2!27278)

(assert (=> d!680951 (= lt!853803 (lexTailRecV2!803 thiss!16613 rules!1750 (seqFromList!3095 input!1722) (BalanceConc!17589 Empty!8930) (seqFromList!3095 input!1722) (BalanceConc!17591 Empty!8931)))))

(assert (=> d!680951 (= (lex!1827 thiss!16613 rules!1750 (seqFromList!3095 input!1722)) lt!853803)))

(assert (= (and d!680951 c!364962) b!2301906))

(assert (= (and d!680951 (not c!364962)) b!2301904))

(assert (= (and b!2301906 res!984158) b!2301905))

(assert (= (and d!680951 res!984156) b!2301907))

(assert (= (and b!2301907 res!984157) b!2301908))

(declare-fun m!2729195 () Bool)

(assert (=> b!2301906 m!2729195))

(assert (=> b!2301906 m!2728741))

(declare-fun m!2729197 () Bool)

(assert (=> b!2301906 m!2729197))

(declare-fun m!2729199 () Bool)

(assert (=> d!680951 m!2729199))

(assert (=> d!680951 m!2728741))

(assert (=> d!680951 m!2728741))

(declare-fun m!2729201 () Bool)

(assert (=> d!680951 m!2729201))

(declare-fun m!2729203 () Bool)

(assert (=> b!2301908 m!2729203))

(assert (=> b!2301908 m!2728741))

(declare-fun m!2729205 () Bool)

(assert (=> b!2301908 m!2729205))

(assert (=> b!2301908 m!2729205))

(declare-fun m!2729207 () Bool)

(assert (=> b!2301908 m!2729207))

(declare-fun m!2729209 () Bool)

(assert (=> b!2301907 m!2729209))

(assert (=> b!2301907 m!2728741))

(assert (=> b!2301907 m!2729205))

(assert (=> b!2301907 m!2729205))

(assert (=> b!2301907 m!2729207))

(declare-fun m!2729211 () Bool)

(assert (=> b!2301905 m!2729211))

(assert (=> b!2301472 d!680951))

(declare-fun d!680953 () Bool)

(declare-fun fromListB!1394 (List!27490) BalanceConc!17588)

(assert (=> d!680953 (= (seqFromList!3095 input!1722) (fromListB!1394 input!1722))))

(declare-fun bs!457727 () Bool)

(assert (= bs!457727 d!680953))

(declare-fun m!2729213 () Bool)

(assert (=> bs!457727 m!2729213))

(assert (=> b!2301472 d!680953))

(declare-fun d!680955 () Bool)

(declare-fun res!984163 () Bool)

(declare-fun e!1475112 () Bool)

(assert (=> d!680955 (=> (not res!984163) (not e!1475112))))

(assert (=> d!680955 (= res!984163 (validRegex!2544 (regex!4391 r!2363)))))

(assert (=> d!680955 (= (ruleValid!1481 thiss!16613 r!2363) e!1475112)))

(declare-fun b!2301913 () Bool)

(declare-fun res!984164 () Bool)

(assert (=> b!2301913 (=> (not res!984164) (not e!1475112))))

(assert (=> b!2301913 (= res!984164 (not (nullable!1882 (regex!4391 r!2363))))))

(declare-fun b!2301914 () Bool)

(assert (=> b!2301914 (= e!1475112 (not (= (tag!4881 r!2363) (String!29870 ""))))))

(assert (= (and d!680955 res!984163) b!2301913))

(assert (= (and b!2301913 res!984164) b!2301914))

(assert (=> d!680955 m!2728867))

(assert (=> b!2301913 m!2728863))

(assert (=> b!2301471 d!680955))

(declare-fun d!680957 () Bool)

(assert (=> d!680957 (ruleValid!1481 thiss!16613 r!2363)))

(declare-fun lt!853806 () Unit!40300)

(declare-fun choose!13439 (LexerInterface!3988 Rule!8582 List!27491) Unit!40300)

(assert (=> d!680957 (= lt!853806 (choose!13439 thiss!16613 r!2363 rules!1750))))

(assert (=> d!680957 (contains!4777 rules!1750 r!2363)))

(assert (=> d!680957 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!886 thiss!16613 r!2363 rules!1750) lt!853806)))

(declare-fun bs!457728 () Bool)

(assert (= bs!457728 d!680957))

(assert (=> bs!457728 m!2728733))

(declare-fun m!2729215 () Bool)

(assert (=> bs!457728 m!2729215))

(assert (=> bs!457728 m!2728797))

(assert (=> b!2301471 d!680957))

(declare-fun b!2301924 () Bool)

(declare-fun e!1475118 () Int)

(declare-fun e!1475119 () Int)

(assert (=> b!2301924 (= e!1475118 e!1475119)))

(declare-fun c!364967 () Bool)

(assert (=> b!2301924 (= c!364967 (and ((_ is Cons!27397) rules!1750) (not (= (h!32798 rules!1750) otherR!12))))))

(declare-fun d!680959 () Bool)

(declare-fun lt!853809 () Int)

(assert (=> d!680959 (>= lt!853809 0)))

(assert (=> d!680959 (= lt!853809 e!1475118)))

(declare-fun c!364968 () Bool)

(assert (=> d!680959 (= c!364968 (and ((_ is Cons!27397) rules!1750) (= (h!32798 rules!1750) otherR!12)))))

(assert (=> d!680959 (contains!4777 rules!1750 otherR!12)))

(assert (=> d!680959 (= (getIndex!404 rules!1750 otherR!12) lt!853809)))

(declare-fun b!2301926 () Bool)

(assert (=> b!2301926 (= e!1475119 (- 1))))

(declare-fun b!2301925 () Bool)

(assert (=> b!2301925 (= e!1475119 (+ 1 (getIndex!404 (t!205869 rules!1750) otherR!12)))))

(declare-fun b!2301923 () Bool)

(assert (=> b!2301923 (= e!1475118 0)))

(assert (= (and d!680959 c!364968) b!2301923))

(assert (= (and d!680959 (not c!364968)) b!2301924))

(assert (= (and b!2301924 c!364967) b!2301925))

(assert (= (and b!2301924 (not c!364967)) b!2301926))

(assert (=> d!680959 m!2728747))

(declare-fun m!2729217 () Bool)

(assert (=> b!2301925 m!2729217))

(assert (=> b!2301482 d!680959))

(declare-fun b!2301928 () Bool)

(declare-fun e!1475120 () Int)

(declare-fun e!1475121 () Int)

(assert (=> b!2301928 (= e!1475120 e!1475121)))

(declare-fun c!364969 () Bool)

(assert (=> b!2301928 (= c!364969 (and ((_ is Cons!27397) rules!1750) (not (= (h!32798 rules!1750) r!2363))))))

(declare-fun d!680961 () Bool)

(declare-fun lt!853810 () Int)

(assert (=> d!680961 (>= lt!853810 0)))

(assert (=> d!680961 (= lt!853810 e!1475120)))

(declare-fun c!364970 () Bool)

(assert (=> d!680961 (= c!364970 (and ((_ is Cons!27397) rules!1750) (= (h!32798 rules!1750) r!2363)))))

(assert (=> d!680961 (contains!4777 rules!1750 r!2363)))

(assert (=> d!680961 (= (getIndex!404 rules!1750 r!2363) lt!853810)))

(declare-fun b!2301930 () Bool)

(assert (=> b!2301930 (= e!1475121 (- 1))))

(declare-fun b!2301929 () Bool)

(assert (=> b!2301929 (= e!1475121 (+ 1 (getIndex!404 (t!205869 rules!1750) r!2363)))))

(declare-fun b!2301927 () Bool)

(assert (=> b!2301927 (= e!1475120 0)))

(assert (= (and d!680961 c!364970) b!2301927))

(assert (= (and d!680961 (not c!364970)) b!2301928))

(assert (= (and b!2301928 c!364969) b!2301929))

(assert (= (and b!2301928 (not c!364969)) b!2301930))

(assert (=> d!680961 m!2728797))

(declare-fun m!2729219 () Bool)

(assert (=> b!2301929 m!2729219))

(assert (=> b!2301482 d!680961))

(declare-fun d!680963 () Bool)

(declare-fun res!984165 () Bool)

(declare-fun e!1475122 () Bool)

(assert (=> d!680963 (=> (not res!984165) (not e!1475122))))

(assert (=> d!680963 (= res!984165 (validRegex!2544 (regex!4391 otherR!12)))))

(assert (=> d!680963 (= (ruleValid!1481 thiss!16613 otherR!12) e!1475122)))

(declare-fun b!2301931 () Bool)

(declare-fun res!984166 () Bool)

(assert (=> b!2301931 (=> (not res!984166) (not e!1475122))))

(assert (=> b!2301931 (= res!984166 (not (nullable!1882 (regex!4391 otherR!12))))))

(declare-fun b!2301932 () Bool)

(assert (=> b!2301932 (= e!1475122 (not (= (tag!4881 otherR!12) (String!29870 ""))))))

(assert (= (and d!680963 res!984165) b!2301931))

(assert (= (and b!2301931 res!984166) b!2301932))

(declare-fun m!2729221 () Bool)

(assert (=> d!680963 m!2729221))

(declare-fun m!2729223 () Bool)

(assert (=> b!2301931 m!2729223))

(assert (=> b!2301482 d!680963))

(declare-fun d!680965 () Bool)

(assert (=> d!680965 (ruleValid!1481 thiss!16613 otherR!12)))

(declare-fun lt!853811 () Unit!40300)

(assert (=> d!680965 (= lt!853811 (choose!13439 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!680965 (contains!4777 rules!1750 otherR!12)))

(assert (=> d!680965 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!886 thiss!16613 otherR!12 rules!1750) lt!853811)))

(declare-fun bs!457729 () Bool)

(assert (= bs!457729 d!680965))

(assert (=> bs!457729 m!2728793))

(declare-fun m!2729225 () Bool)

(assert (=> bs!457729 m!2729225))

(assert (=> bs!457729 m!2728747))

(assert (=> b!2301482 d!680965))

(declare-fun d!680967 () Bool)

(declare-fun lt!853812 () Bool)

(assert (=> d!680967 (= lt!853812 (select (content!3691 rules!1750) otherR!12))))

(declare-fun e!1475124 () Bool)

(assert (=> d!680967 (= lt!853812 e!1475124)))

(declare-fun res!984167 () Bool)

(assert (=> d!680967 (=> (not res!984167) (not e!1475124))))

(assert (=> d!680967 (= res!984167 ((_ is Cons!27397) rules!1750))))

(assert (=> d!680967 (= (contains!4777 rules!1750 otherR!12) lt!853812)))

(declare-fun b!2301933 () Bool)

(declare-fun e!1475123 () Bool)

(assert (=> b!2301933 (= e!1475124 e!1475123)))

(declare-fun res!984168 () Bool)

(assert (=> b!2301933 (=> res!984168 e!1475123)))

(assert (=> b!2301933 (= res!984168 (= (h!32798 rules!1750) otherR!12))))

(declare-fun b!2301934 () Bool)

(assert (=> b!2301934 (= e!1475123 (contains!4777 (t!205869 rules!1750) otherR!12))))

(assert (= (and d!680967 res!984167) b!2301933))

(assert (= (and b!2301933 (not res!984168)) b!2301934))

(assert (=> d!680967 m!2729177))

(declare-fun m!2729227 () Bool)

(assert (=> d!680967 m!2729227))

(declare-fun m!2729229 () Bool)

(assert (=> b!2301934 m!2729229))

(assert (=> b!2301484 d!680967))

(declare-fun d!680969 () Bool)

(assert (=> d!680969 (= (inv!37024 (tag!4881 (h!32798 rules!1750))) (= (mod (str.len (value!138962 (tag!4881 (h!32798 rules!1750)))) 2) 0))))

(assert (=> b!2301483 d!680969))

(declare-fun d!680971 () Bool)

(declare-fun res!984169 () Bool)

(declare-fun e!1475125 () Bool)

(assert (=> d!680971 (=> (not res!984169) (not e!1475125))))

(assert (=> d!680971 (= res!984169 (semiInverseModEq!1784 (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toValue!6201 (transformation!4391 (h!32798 rules!1750)))))))

(assert (=> d!680971 (= (inv!37027 (transformation!4391 (h!32798 rules!1750))) e!1475125)))

(declare-fun b!2301935 () Bool)

(assert (=> b!2301935 (= e!1475125 (equivClasses!1703 (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toValue!6201 (transformation!4391 (h!32798 rules!1750)))))))

(assert (= (and d!680971 res!984169) b!2301935))

(declare-fun m!2729231 () Bool)

(assert (=> d!680971 m!2729231))

(declare-fun m!2729233 () Bool)

(assert (=> b!2301935 m!2729233))

(assert (=> b!2301483 d!680971))

(declare-fun b!2301946 () Bool)

(declare-fun e!1475128 () Bool)

(assert (=> b!2301946 (= e!1475128 tp_is_empty!10699)))

(declare-fun b!2301949 () Bool)

(declare-fun tp!730207 () Bool)

(declare-fun tp!730208 () Bool)

(assert (=> b!2301949 (= e!1475128 (and tp!730207 tp!730208))))

(declare-fun b!2301948 () Bool)

(declare-fun tp!730211 () Bool)

(assert (=> b!2301948 (= e!1475128 tp!730211)))

(declare-fun b!2301947 () Bool)

(declare-fun tp!730210 () Bool)

(declare-fun tp!730209 () Bool)

(assert (=> b!2301947 (= e!1475128 (and tp!730210 tp!730209))))

(assert (=> b!2301474 (= tp!730108 e!1475128)))

(assert (= (and b!2301474 ((_ is ElementMatch!6739) (regex!4391 otherR!12))) b!2301946))

(assert (= (and b!2301474 ((_ is Concat!11293) (regex!4391 otherR!12))) b!2301947))

(assert (= (and b!2301474 ((_ is Star!6739) (regex!4391 otherR!12))) b!2301948))

(assert (= (and b!2301474 ((_ is Union!6739) (regex!4391 otherR!12))) b!2301949))

(declare-fun b!2301954 () Bool)

(declare-fun e!1475131 () Bool)

(declare-fun tp!730214 () Bool)

(assert (=> b!2301954 (= e!1475131 (and tp_is_empty!10699 tp!730214))))

(assert (=> b!2301476 (= tp!730120 e!1475131)))

(assert (= (and b!2301476 ((_ is Cons!27396) (originalCharacters!5161 (h!32799 tokens!456)))) b!2301954))

(declare-fun b!2301955 () Bool)

(declare-fun e!1475132 () Bool)

(declare-fun tp!730215 () Bool)

(assert (=> b!2301955 (= e!1475132 (and tp_is_empty!10699 tp!730215))))

(assert (=> b!2301486 (= tp!730109 e!1475132)))

(assert (= (and b!2301486 ((_ is Cons!27396) (t!205868 input!1722))) b!2301955))

(declare-fun b!2301956 () Bool)

(declare-fun e!1475133 () Bool)

(declare-fun tp!730216 () Bool)

(assert (=> b!2301956 (= e!1475133 (and tp_is_empty!10699 tp!730216))))

(assert (=> b!2301456 (= tp!730110 e!1475133)))

(assert (= (and b!2301456 ((_ is Cons!27396) (t!205868 otherP!12))) b!2301956))

(declare-fun b!2301957 () Bool)

(declare-fun e!1475134 () Bool)

(assert (=> b!2301957 (= e!1475134 tp_is_empty!10699)))

(declare-fun b!2301960 () Bool)

(declare-fun tp!730217 () Bool)

(declare-fun tp!730218 () Bool)

(assert (=> b!2301960 (= e!1475134 (and tp!730217 tp!730218))))

(declare-fun b!2301959 () Bool)

(declare-fun tp!730221 () Bool)

(assert (=> b!2301959 (= e!1475134 tp!730221)))

(declare-fun b!2301958 () Bool)

(declare-fun tp!730220 () Bool)

(declare-fun tp!730219 () Bool)

(assert (=> b!2301958 (= e!1475134 (and tp!730220 tp!730219))))

(assert (=> b!2301466 (= tp!730113 e!1475134)))

(assert (= (and b!2301466 ((_ is ElementMatch!6739) (regex!4391 r!2363))) b!2301957))

(assert (= (and b!2301466 ((_ is Concat!11293) (regex!4391 r!2363))) b!2301958))

(assert (= (and b!2301466 ((_ is Star!6739) (regex!4391 r!2363))) b!2301959))

(assert (= (and b!2301466 ((_ is Union!6739) (regex!4391 r!2363))) b!2301960))

(declare-fun b!2301961 () Bool)

(declare-fun e!1475135 () Bool)

(assert (=> b!2301961 (= e!1475135 tp_is_empty!10699)))

(declare-fun b!2301964 () Bool)

(declare-fun tp!730222 () Bool)

(declare-fun tp!730223 () Bool)

(assert (=> b!2301964 (= e!1475135 (and tp!730222 tp!730223))))

(declare-fun b!2301963 () Bool)

(declare-fun tp!730226 () Bool)

(assert (=> b!2301963 (= e!1475135 tp!730226)))

(declare-fun b!2301962 () Bool)

(declare-fun tp!730225 () Bool)

(declare-fun tp!730224 () Bool)

(assert (=> b!2301962 (= e!1475135 (and tp!730225 tp!730224))))

(assert (=> b!2301468 (= tp!730117 e!1475135)))

(assert (= (and b!2301468 ((_ is ElementMatch!6739) (regex!4391 (rule!6737 (h!32799 tokens!456))))) b!2301961))

(assert (= (and b!2301468 ((_ is Concat!11293) (regex!4391 (rule!6737 (h!32799 tokens!456))))) b!2301962))

(assert (= (and b!2301468 ((_ is Star!6739) (regex!4391 (rule!6737 (h!32799 tokens!456))))) b!2301963))

(assert (= (and b!2301468 ((_ is Union!6739) (regex!4391 (rule!6737 (h!32799 tokens!456))))) b!2301964))

(declare-fun b!2301975 () Bool)

(declare-fun b_free!69477 () Bool)

(declare-fun b_next!70181 () Bool)

(assert (=> b!2301975 (= b_free!69477 (not b_next!70181))))

(declare-fun tp!730237 () Bool)

(declare-fun b_and!183377 () Bool)

(assert (=> b!2301975 (= tp!730237 b_and!183377)))

(declare-fun b_free!69479 () Bool)

(declare-fun b_next!70183 () Bool)

(assert (=> b!2301975 (= b_free!69479 (not b_next!70183))))

(declare-fun t!205912 () Bool)

(declare-fun tb!137639 () Bool)

(assert (=> (and b!2301975 (= (toChars!6060 (transformation!4391 (h!32798 (t!205869 rules!1750)))) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205912) tb!137639))

(declare-fun result!167792 () Bool)

(assert (= result!167792 result!167744))

(assert (=> d!680829 t!205912))

(declare-fun t!205914 () Bool)

(declare-fun tb!137641 () Bool)

(assert (=> (and b!2301975 (= (toChars!6060 (transformation!4391 (h!32798 (t!205869 rules!1750)))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205914) tb!137641))

(declare-fun result!167794 () Bool)

(assert (= result!167794 result!167754))

(assert (=> d!680849 t!205914))

(assert (=> b!2301820 t!205914))

(declare-fun tp!730238 () Bool)

(declare-fun b_and!183379 () Bool)

(assert (=> b!2301975 (= tp!730238 (and (=> t!205912 result!167792) (=> t!205914 result!167794) b_and!183379))))

(declare-fun e!1475146 () Bool)

(assert (=> b!2301975 (= e!1475146 (and tp!730237 tp!730238))))

(declare-fun e!1475144 () Bool)

(declare-fun b!2301974 () Bool)

(declare-fun tp!730236 () Bool)

(assert (=> b!2301974 (= e!1475144 (and tp!730236 (inv!37024 (tag!4881 (h!32798 (t!205869 rules!1750)))) (inv!37027 (transformation!4391 (h!32798 (t!205869 rules!1750)))) e!1475146))))

(declare-fun b!2301973 () Bool)

(declare-fun e!1475147 () Bool)

(declare-fun tp!730235 () Bool)

(assert (=> b!2301973 (= e!1475147 (and e!1475144 tp!730235))))

(assert (=> b!2301467 (= tp!730124 e!1475147)))

(assert (= b!2301974 b!2301975))

(assert (= b!2301973 b!2301974))

(assert (= (and b!2301467 ((_ is Cons!27397) (t!205869 rules!1750))) b!2301973))

(declare-fun m!2729235 () Bool)

(assert (=> b!2301974 m!2729235))

(declare-fun m!2729237 () Bool)

(assert (=> b!2301974 m!2729237))

(declare-fun b!2301989 () Bool)

(declare-fun b_free!69481 () Bool)

(declare-fun b_next!70185 () Bool)

(assert (=> b!2301989 (= b_free!69481 (not b_next!70185))))

(declare-fun tp!730252 () Bool)

(declare-fun b_and!183381 () Bool)

(assert (=> b!2301989 (= tp!730252 b_and!183381)))

(declare-fun b_free!69483 () Bool)

(declare-fun b_next!70187 () Bool)

(assert (=> b!2301989 (= b_free!69483 (not b_next!70187))))

(declare-fun t!205916 () Bool)

(declare-fun tb!137643 () Bool)

(assert (=> (and b!2301989 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 (t!205870 tokens!456))))) (toChars!6060 (transformation!4391 (rule!6737 (head!5034 tokens!456))))) t!205916) tb!137643))

(declare-fun result!167798 () Bool)

(assert (= result!167798 result!167744))

(assert (=> d!680829 t!205916))

(declare-fun t!205918 () Bool)

(declare-fun tb!137645 () Bool)

(assert (=> (and b!2301989 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 (t!205870 tokens!456))))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456))))) t!205918) tb!137645))

(declare-fun result!167800 () Bool)

(assert (= result!167800 result!167754))

(assert (=> d!680849 t!205918))

(assert (=> b!2301820 t!205918))

(declare-fun tp!730251 () Bool)

(declare-fun b_and!183383 () Bool)

(assert (=> b!2301989 (= tp!730251 (and (=> t!205916 result!167798) (=> t!205918 result!167800) b_and!183383))))

(declare-fun e!1475164 () Bool)

(declare-fun b!2301988 () Bool)

(declare-fun tp!730250 () Bool)

(declare-fun e!1475163 () Bool)

(assert (=> b!2301988 (= e!1475164 (and tp!730250 (inv!37024 (tag!4881 (rule!6737 (h!32799 (t!205870 tokens!456))))) (inv!37027 (transformation!4391 (rule!6737 (h!32799 (t!205870 tokens!456))))) e!1475163))))

(declare-fun e!1475165 () Bool)

(declare-fun tp!730253 () Bool)

(declare-fun b!2301986 () Bool)

(declare-fun e!1475162 () Bool)

(assert (=> b!2301986 (= e!1475162 (and (inv!37028 (h!32799 (t!205870 tokens!456))) e!1475165 tp!730253))))

(assert (=> b!2301459 (= tp!730123 e!1475162)))

(declare-fun tp!730249 () Bool)

(declare-fun b!2301987 () Bool)

(assert (=> b!2301987 (= e!1475165 (and (inv!21 (value!138963 (h!32799 (t!205870 tokens!456)))) e!1475164 tp!730249))))

(assert (=> b!2301989 (= e!1475163 (and tp!730252 tp!730251))))

(assert (= b!2301988 b!2301989))

(assert (= b!2301987 b!2301988))

(assert (= b!2301986 b!2301987))

(assert (= (and b!2301459 ((_ is Cons!27398) (t!205870 tokens!456))) b!2301986))

(declare-fun m!2729239 () Bool)

(assert (=> b!2301988 m!2729239))

(declare-fun m!2729241 () Bool)

(assert (=> b!2301988 m!2729241))

(declare-fun m!2729243 () Bool)

(assert (=> b!2301986 m!2729243))

(declare-fun m!2729245 () Bool)

(assert (=> b!2301987 m!2729245))

(declare-fun b!2301990 () Bool)

(declare-fun e!1475166 () Bool)

(assert (=> b!2301990 (= e!1475166 tp_is_empty!10699)))

(declare-fun b!2301993 () Bool)

(declare-fun tp!730254 () Bool)

(declare-fun tp!730255 () Bool)

(assert (=> b!2301993 (= e!1475166 (and tp!730254 tp!730255))))

(declare-fun b!2301992 () Bool)

(declare-fun tp!730258 () Bool)

(assert (=> b!2301992 (= e!1475166 tp!730258)))

(declare-fun b!2301991 () Bool)

(declare-fun tp!730257 () Bool)

(declare-fun tp!730256 () Bool)

(assert (=> b!2301991 (= e!1475166 (and tp!730257 tp!730256))))

(assert (=> b!2301483 (= tp!730118 e!1475166)))

(assert (= (and b!2301483 ((_ is ElementMatch!6739) (regex!4391 (h!32798 rules!1750)))) b!2301990))

(assert (= (and b!2301483 ((_ is Concat!11293) (regex!4391 (h!32798 rules!1750)))) b!2301991))

(assert (= (and b!2301483 ((_ is Star!6739) (regex!4391 (h!32798 rules!1750)))) b!2301992))

(assert (= (and b!2301483 ((_ is Union!6739) (regex!4391 (h!32798 rules!1750)))) b!2301993))

(declare-fun b!2301994 () Bool)

(declare-fun e!1475167 () Bool)

(declare-fun tp!730259 () Bool)

(assert (=> b!2301994 (= e!1475167 (and tp_is_empty!10699 tp!730259))))

(assert (=> b!2301462 (= tp!730121 e!1475167)))

(assert (= (and b!2301462 ((_ is Cons!27396) (t!205868 suffix!886))) b!2301994))

(declare-fun b_lambda!73309 () Bool)

(assert (= b_lambda!73297 (or (and b!2301485 b_free!69467 (= (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301464 b_free!69455 (= (toChars!6060 (transformation!4391 r!2363)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301477 b_free!69463) (and b!2301975 b_free!69479 (= (toChars!6060 (transformation!4391 (h!32798 (t!205869 rules!1750)))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301469 b_free!69459 (= (toChars!6060 (transformation!4391 otherR!12)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301989 b_free!69483 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 (t!205870 tokens!456))))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) b_lambda!73309)))

(declare-fun b_lambda!73311 () Bool)

(assert (= b_lambda!73303 (or (and b!2301485 b_free!69467 (= (toChars!6060 (transformation!4391 (h!32798 rules!1750))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301464 b_free!69455 (= (toChars!6060 (transformation!4391 r!2363)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301477 b_free!69463) (and b!2301975 b_free!69479 (= (toChars!6060 (transformation!4391 (h!32798 (t!205869 rules!1750)))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301469 b_free!69459 (= (toChars!6060 (transformation!4391 otherR!12)) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) (and b!2301989 b_free!69483 (= (toChars!6060 (transformation!4391 (rule!6737 (h!32799 (t!205870 tokens!456))))) (toChars!6060 (transformation!4391 (rule!6737 (h!32799 tokens!456)))))) b_lambda!73311)))

(check-sat (not b!2301906) (not b!2301908) (not b!2301579) (not b!2301730) (not d!680903) (not d!680933) (not b!2301849) tp_is_empty!10699 (not b!2301828) (not b!2301929) (not b!2301955) (not b!2301778) (not b!2301994) (not b!2301568) (not d!680963) (not b!2301956) (not b_next!70181) (not d!680839) (not d!680927) (not tb!137615) (not b!2301960) (not b!2301948) (not b_next!70161) (not d!680847) (not b!2301689) (not b!2301566) (not b_next!70167) (not b!2301684) (not b!2301685) (not b!2301907) (not b!2301767) (not b!2301561) (not d!680965) (not d!680917) (not b!2301592) (not d!680957) (not d!680971) (not d!680953) (not b!2301690) (not b!2301935) (not b!2301603) (not b!2301934) (not b!2301600) (not d!680961) (not b_lambda!73295) b_and!183383 (not b!2301602) (not b_next!70165) (not b!2301688) (not b!2301931) (not b!2301988) (not b!2301954) (not d!680931) (not b!2301986) (not b!2301576) b_and!183313 (not b!2301913) (not d!680827) (not b_lambda!73309) (not b!2301820) (not b!2301692) (not b!2301992) (not d!680955) (not d!680835) b_and!183381 b_and!183317 (not d!680959) (not d!680945) (not b!2301949) (not tb!137607) b_and!183309 (not b_next!70157) (not b!2301801) (not d!680967) (not b_next!70171) (not b!2301958) (not d!680849) (not b!2301925) (not b!2301993) (not d!680921) (not b!2301964) (not b_next!70163) (not d!680901) (not b!2301963) (not b!2301769) b_and!183377 (not bm!137054) (not b_next!70169) (not d!680929) b_and!183305 (not b_next!70185) (not d!680829) (not b!2301594) (not b!2301959) (not d!680951) (not d!680851) (not d!680801) (not b!2301731) (not b!2301991) (not bm!137048) b_and!183365 (not b_lambda!73311) b_and!183367 (not b!2301821) (not b!2301905) (not d!680947) (not d!680855) (not b!2301827) (not b!2301562) (not b!2301962) (not b!2301590) (not b!2301729) b_and!183361 (not b_next!70187) (not b!2301973) (not b!2301558) (not b!2301760) (not b!2301564) (not b_next!70183) b_and!183379 b_and!183363 (not b!2301761) (not b!2301686) (not b!2301687) (not b_next!70159) (not b!2301974) (not b!2301826) (not b!2301987) (not d!680949) (not b!2301947))
(check-sat (not b_next!70181) (not b_next!70161) (not b_next!70167) b_and!183383 (not b_next!70165) b_and!183313 (not b_next!70163) b_and!183377 b_and!183361 (not b_next!70187) (not b_next!70159) b_and!183381 b_and!183317 b_and!183309 (not b_next!70157) (not b_next!70171) (not b_next!70169) b_and!183305 (not b_next!70185) b_and!183365 b_and!183367 (not b_next!70183) b_and!183379 b_and!183363)
