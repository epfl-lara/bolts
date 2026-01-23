; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222892 () Bool)

(assert start!222892)

(declare-fun b!2276772 () Bool)

(declare-fun b_free!67853 () Bool)

(declare-fun b_next!68557 () Bool)

(assert (=> b!2276772 (= b_free!67853 (not b_next!68557))))

(declare-fun tp!721300 () Bool)

(declare-fun b_and!179609 () Bool)

(assert (=> b!2276772 (= tp!721300 b_and!179609)))

(declare-fun b_free!67855 () Bool)

(declare-fun b_next!68559 () Bool)

(assert (=> b!2276772 (= b_free!67855 (not b_next!68559))))

(declare-fun tp!721304 () Bool)

(declare-fun b_and!179611 () Bool)

(assert (=> b!2276772 (= tp!721304 b_and!179611)))

(declare-fun b!2276773 () Bool)

(declare-fun b_free!67857 () Bool)

(declare-fun b_next!68561 () Bool)

(assert (=> b!2276773 (= b_free!67857 (not b_next!68561))))

(declare-fun tp!721315 () Bool)

(declare-fun b_and!179613 () Bool)

(assert (=> b!2276773 (= tp!721315 b_and!179613)))

(declare-fun b_free!67859 () Bool)

(declare-fun b_next!68563 () Bool)

(assert (=> b!2276773 (= b_free!67859 (not b_next!68563))))

(declare-fun tp!721312 () Bool)

(declare-fun b_and!179615 () Bool)

(assert (=> b!2276773 (= tp!721312 b_and!179615)))

(declare-fun b!2276797 () Bool)

(declare-fun b_free!67861 () Bool)

(declare-fun b_next!68565 () Bool)

(assert (=> b!2276797 (= b_free!67861 (not b_next!68565))))

(declare-fun tp!721316 () Bool)

(declare-fun b_and!179617 () Bool)

(assert (=> b!2276797 (= tp!721316 b_and!179617)))

(declare-fun b_free!67863 () Bool)

(declare-fun b_next!68567 () Bool)

(assert (=> b!2276797 (= b_free!67863 (not b_next!68567))))

(declare-fun tp!721309 () Bool)

(declare-fun b_and!179619 () Bool)

(assert (=> b!2276797 (= tp!721309 b_and!179619)))

(declare-fun b!2276798 () Bool)

(declare-fun b_free!67865 () Bool)

(declare-fun b_next!68569 () Bool)

(assert (=> b!2276798 (= b_free!67865 (not b_next!68569))))

(declare-fun tp!721302 () Bool)

(declare-fun b_and!179621 () Bool)

(assert (=> b!2276798 (= tp!721302 b_and!179621)))

(declare-fun b_free!67867 () Bool)

(declare-fun b_next!68571 () Bool)

(assert (=> b!2276798 (= b_free!67867 (not b_next!68571))))

(declare-fun tp!721311 () Bool)

(declare-fun b_and!179623 () Bool)

(assert (=> b!2276798 (= tp!721311 b_and!179623)))

(declare-fun b!2276770 () Bool)

(declare-fun e!1458297 () Bool)

(declare-fun tp_is_empty!10555 () Bool)

(declare-fun tp!721308 () Bool)

(assert (=> b!2276770 (= e!1458297 (and tp_is_empty!10555 tp!721308))))

(declare-fun e!1458289 () Bool)

(declare-fun e!1458295 () Bool)

(declare-datatypes ((List!27161 0))(
  ( (Nil!27067) (Cons!27067 (h!32468 (_ BitVec 16)) (t!203155 List!27161)) )
))
(declare-datatypes ((TokenValue!4481 0))(
  ( (FloatLiteralValue!8962 (text!31812 List!27161)) (TokenValueExt!4480 (__x!18022 Int)) (Broken!22405 (value!136885 List!27161)) (Object!4574) (End!4481) (Def!4481) (Underscore!4481) (Match!4481) (Else!4481) (Error!4481) (Case!4481) (If!4481) (Extends!4481) (Abstract!4481) (Class!4481) (Val!4481) (DelimiterValue!8962 (del!4541 List!27161)) (KeywordValue!4487 (value!136886 List!27161)) (CommentValue!8962 (value!136887 List!27161)) (WhitespaceValue!8962 (value!136888 List!27161)) (IndentationValue!4481 (value!136889 List!27161)) (String!29508) (Int32!4481) (Broken!22406 (value!136890 List!27161)) (Boolean!4482) (Unit!40007) (OperatorValue!4484 (op!4541 List!27161)) (IdentifierValue!8962 (value!136891 List!27161)) (IdentifierValue!8963 (value!136892 List!27161)) (WhitespaceValue!8963 (value!136893 List!27161)) (True!8962) (False!8962) (Broken!22407 (value!136894 List!27161)) (Broken!22408 (value!136895 List!27161)) (True!8963) (RightBrace!4481) (RightBracket!4481) (Colon!4481) (Null!4481) (Comma!4481) (LeftBracket!4481) (False!8963) (LeftBrace!4481) (ImaginaryLiteralValue!4481 (text!31813 List!27161)) (StringLiteralValue!13443 (value!136896 List!27161)) (EOFValue!4481 (value!136897 List!27161)) (IdentValue!4481 (value!136898 List!27161)) (DelimiterValue!8963 (value!136899 List!27161)) (DedentValue!4481 (value!136900 List!27161)) (NewLineValue!4481 (value!136901 List!27161)) (IntegerValue!13443 (value!136902 (_ BitVec 32)) (text!31814 List!27161)) (IntegerValue!13444 (value!136903 Int) (text!31815 List!27161)) (Times!4481) (Or!4481) (Equal!4481) (Minus!4481) (Broken!22409 (value!136904 List!27161)) (And!4481) (Div!4481) (LessEqual!4481) (Mod!4481) (Concat!11148) (Not!4481) (Plus!4481) (SpaceValue!4481 (value!136905 List!27161)) (IntegerValue!13445 (value!136906 Int) (text!31816 List!27161)) (StringLiteralValue!13444 (text!31817 List!27161)) (FloatLiteralValue!8963 (text!31818 List!27161)) (BytesLiteralValue!4481 (value!136907 List!27161)) (CommentValue!8963 (value!136908 List!27161)) (StringLiteralValue!13445 (value!136909 List!27161)) (ErrorTokenValue!4481 (msg!4542 List!27161)) )
))
(declare-datatypes ((C!13480 0))(
  ( (C!13481 (val!7788 Int)) )
))
(declare-datatypes ((List!27162 0))(
  ( (Nil!27068) (Cons!27068 (h!32469 C!13480) (t!203156 List!27162)) )
))
(declare-datatypes ((IArray!17577 0))(
  ( (IArray!17578 (innerList!8846 List!27162)) )
))
(declare-datatypes ((Conc!8786 0))(
  ( (Node!8786 (left!20538 Conc!8786) (right!20868 Conc!8786) (csize!17802 Int) (cheight!8997 Int)) (Leaf!12931 (xs!11728 IArray!17577) (csize!17803 Int)) (Empty!8786) )
))
(declare-datatypes ((BalanceConc!17300 0))(
  ( (BalanceConc!17301 (c!361418 Conc!8786)) )
))
(declare-datatypes ((String!29509 0))(
  ( (String!29510 (value!136910 String)) )
))
(declare-datatypes ((Regex!6667 0))(
  ( (ElementMatch!6667 (c!361419 C!13480)) (Concat!11149 (regOne!13846 Regex!6667) (regTwo!13846 Regex!6667)) (EmptyExpr!6667) (Star!6667 (reg!6996 Regex!6667)) (EmptyLang!6667) (Union!6667 (regOne!13847 Regex!6667) (regTwo!13847 Regex!6667)) )
))
(declare-datatypes ((TokenValueInjection!8502 0))(
  ( (TokenValueInjection!8503 (toValue!6097 Int) (toChars!5956 Int)) )
))
(declare-datatypes ((Rule!8438 0))(
  ( (Rule!8439 (regex!4319 Regex!6667) (tag!4809 String!29509) (isSeparator!4319 Bool) (transformation!4319 TokenValueInjection!8502)) )
))
(declare-datatypes ((Token!8116 0))(
  ( (Token!8117 (value!136911 TokenValue!4481) (rule!6643 Rule!8438) (size!21272 Int) (originalCharacters!5089 List!27162)) )
))
(declare-datatypes ((List!27163 0))(
  ( (Nil!27069) (Cons!27069 (h!32470 Token!8116) (t!203157 List!27163)) )
))
(declare-fun tokens!456 () List!27163)

(declare-fun b!2276771 () Bool)

(declare-fun tp!721301 () Bool)

(declare-fun inv!36644 (String!29509) Bool)

(declare-fun inv!36647 (TokenValueInjection!8502) Bool)

(assert (=> b!2276771 (= e!1458289 (and tp!721301 (inv!36644 (tag!4809 (rule!6643 (h!32470 tokens!456)))) (inv!36647 (transformation!4319 (rule!6643 (h!32470 tokens!456)))) e!1458295))))

(declare-fun e!1458303 () Bool)

(assert (=> b!2276772 (= e!1458303 (and tp!721300 tp!721304))))

(declare-fun e!1458284 () Bool)

(assert (=> b!2276773 (= e!1458284 (and tp!721315 tp!721312))))

(declare-fun b!2276774 () Bool)

(declare-fun e!1458301 () Bool)

(declare-fun e!1458306 () Bool)

(assert (=> b!2276774 (= e!1458301 e!1458306)))

(declare-fun res!973041 () Bool)

(assert (=> b!2276774 (=> res!973041 e!1458306)))

(declare-fun r!2363 () Rule!8438)

(declare-fun otherR!12 () Rule!8438)

(declare-datatypes ((List!27164 0))(
  ( (Nil!27070) (Cons!27070 (h!32471 Rule!8438) (t!203158 List!27164)) )
))
(declare-fun rules!1750 () List!27164)

(declare-fun getIndex!332 (List!27164 Rule!8438) Int)

(assert (=> b!2276774 (= res!973041 (<= (getIndex!332 rules!1750 r!2363) (getIndex!332 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3916 0))(
  ( (LexerInterfaceExt!3913 (__x!18023 Int)) (Lexer!3914) )
))
(declare-fun thiss!16613 () LexerInterface!3916)

(declare-fun ruleValid!1409 (LexerInterface!3916 Rule!8438) Bool)

(assert (=> b!2276774 (ruleValid!1409 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40008 0))(
  ( (Unit!40009) )
))
(declare-fun lt!845377 () Unit!40008)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!814 (LexerInterface!3916 Rule!8438 List!27164) Unit!40008)

(assert (=> b!2276774 (= lt!845377 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!814 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2276775 () Bool)

(declare-fun res!973046 () Bool)

(declare-fun e!1458298 () Bool)

(assert (=> b!2276775 (=> (not res!973046) (not e!1458298))))

(declare-fun isEmpty!15355 (List!27164) Bool)

(assert (=> b!2276775 (= res!973046 (not (isEmpty!15355 rules!1750)))))

(declare-fun b!2276776 () Bool)

(declare-fun e!1458287 () Bool)

(declare-fun e!1458302 () Bool)

(assert (=> b!2276776 (= e!1458287 e!1458302)))

(declare-fun res!973038 () Bool)

(assert (=> b!2276776 (=> (not res!973038) (not e!1458302))))

(declare-fun e!1458309 () Bool)

(assert (=> b!2276776 (= res!973038 e!1458309)))

(declare-fun res!973048 () Bool)

(assert (=> b!2276776 (=> res!973048 e!1458309)))

(declare-fun lt!845381 () Bool)

(assert (=> b!2276776 (= res!973048 lt!845381)))

(declare-fun isEmpty!15356 (List!27163) Bool)

(assert (=> b!2276776 (= lt!845381 (isEmpty!15356 tokens!456))))

(declare-fun e!1458300 () Bool)

(declare-fun b!2276778 () Bool)

(declare-fun tp!721310 () Bool)

(declare-fun e!1458285 () Bool)

(assert (=> b!2276778 (= e!1458285 (and tp!721310 (inv!36644 (tag!4809 r!2363)) (inv!36647 (transformation!4319 r!2363)) e!1458300))))

(declare-fun e!1458294 () Bool)

(declare-fun tp!721317 () Bool)

(declare-fun e!1458292 () Bool)

(declare-fun b!2276779 () Bool)

(declare-fun inv!36648 (Token!8116) Bool)

(assert (=> b!2276779 (= e!1458292 (and (inv!36648 (h!32470 tokens!456)) e!1458294 tp!721317))))

(declare-fun b!2276780 () Bool)

(declare-fun otherP!12 () List!27162)

(declare-fun size!21273 (BalanceConc!17300) Int)

(declare-fun charsOf!2707 (Token!8116) BalanceConc!17300)

(declare-fun head!4922 (List!27163) Token!8116)

(declare-fun size!21274 (List!27162) Int)

(assert (=> b!2276780 (= e!1458309 (<= (size!21273 (charsOf!2707 (head!4922 tokens!456))) (size!21274 otherP!12)))))

(declare-fun b!2276781 () Bool)

(declare-fun res!973040 () Bool)

(assert (=> b!2276781 (=> (not res!973040) (not e!1458298))))

(declare-fun rulesInvariant!3418 (LexerInterface!3916 List!27164) Bool)

(assert (=> b!2276781 (= res!973040 (rulesInvariant!3418 thiss!16613 rules!1750))))

(declare-fun b!2276782 () Bool)

(declare-fun e!1458308 () Bool)

(assert (=> b!2276782 (= e!1458308 (= (rule!6643 (head!4922 tokens!456)) r!2363))))

(declare-fun b!2276783 () Bool)

(declare-fun e!1458293 () Bool)

(declare-fun tp!721303 () Bool)

(assert (=> b!2276783 (= e!1458293 (and tp!721303 (inv!36644 (tag!4809 otherR!12)) (inv!36647 (transformation!4319 otherR!12)) e!1458303))))

(declare-fun b!2276784 () Bool)

(declare-fun e!1458282 () Bool)

(assert (=> b!2276784 (= e!1458282 true)))

(declare-fun lt!845382 () Bool)

(declare-fun lt!845374 () List!27162)

(declare-fun input!1722 () List!27162)

(declare-fun isPrefix!2309 (List!27162 List!27162) Bool)

(assert (=> b!2276784 (= lt!845382 (isPrefix!2309 lt!845374 input!1722))))

(declare-fun lt!845375 () List!27162)

(declare-fun getSuffix!1100 (List!27162 List!27162) List!27162)

(assert (=> b!2276784 (= lt!845375 (getSuffix!1100 input!1722 lt!845374))))

(declare-datatypes ((tuple2!26778 0))(
  ( (tuple2!26779 (_1!15899 Token!8116) (_2!15899 List!27162)) )
))
(declare-fun lt!845379 () tuple2!26778)

(declare-fun ++!6607 (List!27162 List!27162) List!27162)

(assert (=> b!2276784 (isPrefix!2309 lt!845374 (++!6607 lt!845374 (_2!15899 lt!845379)))))

(declare-fun lt!845378 () Unit!40008)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1514 (List!27162 List!27162) Unit!40008)

(assert (=> b!2276784 (= lt!845378 (lemmaConcatTwoListThenFirstIsPrefix!1514 lt!845374 (_2!15899 lt!845379)))))

(declare-fun list!10528 (BalanceConc!17300) List!27162)

(assert (=> b!2276784 (= lt!845374 (list!10528 (charsOf!2707 (h!32470 tokens!456))))))

(declare-fun b!2276785 () Bool)

(declare-fun res!973049 () Bool)

(assert (=> b!2276785 (=> res!973049 e!1458306)))

(get-info :version)

(assert (=> b!2276785 (= res!973049 ((_ is Nil!27069) tokens!456))))

(declare-fun b!2276786 () Bool)

(declare-fun e!1458299 () Bool)

(declare-fun tp!721306 () Bool)

(assert (=> b!2276786 (= e!1458299 (and tp_is_empty!10555 tp!721306))))

(declare-fun b!2276787 () Bool)

(declare-fun res!973051 () Bool)

(assert (=> b!2276787 (=> (not res!973051) (not e!1458298))))

(declare-fun contains!4689 (List!27164 Rule!8438) Bool)

(assert (=> b!2276787 (= res!973051 (contains!4689 rules!1750 r!2363))))

(declare-fun b!2276788 () Bool)

(declare-fun res!973052 () Bool)

(assert (=> b!2276788 (=> (not res!973052) (not e!1458302))))

(assert (=> b!2276788 (= res!973052 (not (= r!2363 otherR!12)))))

(declare-fun b!2276789 () Bool)

(assert (=> b!2276789 (= e!1458306 e!1458282)))

(declare-fun res!973044 () Bool)

(assert (=> b!2276789 (=> res!973044 e!1458282)))

(assert (=> b!2276789 (= res!973044 (not (= (h!32470 tokens!456) (_1!15899 lt!845379))))))

(declare-datatypes ((Option!5303 0))(
  ( (None!5302) (Some!5302 (v!30358 tuple2!26778)) )
))
(declare-fun get!8158 (Option!5303) tuple2!26778)

(declare-fun maxPrefix!2180 (LexerInterface!3916 List!27164 List!27162) Option!5303)

(assert (=> b!2276789 (= lt!845379 (get!8158 (maxPrefix!2180 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2276790 () Bool)

(assert (=> b!2276790 (= e!1458298 e!1458287)))

(declare-fun res!973045 () Bool)

(assert (=> b!2276790 (=> (not res!973045) (not e!1458287))))

(declare-datatypes ((IArray!17579 0))(
  ( (IArray!17580 (innerList!8847 List!27163)) )
))
(declare-datatypes ((Conc!8787 0))(
  ( (Node!8787 (left!20539 Conc!8787) (right!20869 Conc!8787) (csize!17804 Int) (cheight!8998 Int)) (Leaf!12932 (xs!11729 IArray!17579) (csize!17805 Int)) (Empty!8787) )
))
(declare-datatypes ((BalanceConc!17302 0))(
  ( (BalanceConc!17303 (c!361420 Conc!8787)) )
))
(declare-datatypes ((tuple2!26780 0))(
  ( (tuple2!26781 (_1!15900 BalanceConc!17302) (_2!15900 BalanceConc!17300)) )
))
(declare-fun lt!845380 () tuple2!26780)

(declare-fun suffix!886 () List!27162)

(declare-datatypes ((tuple2!26782 0))(
  ( (tuple2!26783 (_1!15901 List!27163) (_2!15901 List!27162)) )
))
(declare-fun list!10529 (BalanceConc!17302) List!27163)

(assert (=> b!2276790 (= res!973045 (= (tuple2!26783 (list!10529 (_1!15900 lt!845380)) (list!10528 (_2!15900 lt!845380))) (tuple2!26783 tokens!456 suffix!886)))))

(declare-fun lex!1755 (LexerInterface!3916 List!27164 BalanceConc!17300) tuple2!26780)

(declare-fun seqFromList!3023 (List!27162) BalanceConc!17300)

(assert (=> b!2276790 (= lt!845380 (lex!1755 thiss!16613 rules!1750 (seqFromList!3023 input!1722)))))

(declare-fun b!2276791 () Bool)

(declare-fun res!973050 () Bool)

(assert (=> b!2276791 (=> (not res!973050) (not e!1458302))))

(assert (=> b!2276791 (= res!973050 (isPrefix!2309 otherP!12 input!1722))))

(declare-fun b!2276792 () Bool)

(assert (=> b!2276792 (= e!1458302 (not e!1458301))))

(declare-fun res!973042 () Bool)

(assert (=> b!2276792 (=> res!973042 e!1458301)))

(declare-fun e!1458291 () Bool)

(assert (=> b!2276792 (= res!973042 e!1458291)))

(declare-fun res!973054 () Bool)

(assert (=> b!2276792 (=> (not res!973054) (not e!1458291))))

(assert (=> b!2276792 (= res!973054 (not lt!845381))))

(assert (=> b!2276792 (ruleValid!1409 thiss!16613 r!2363)))

(declare-fun lt!845376 () Unit!40008)

(assert (=> b!2276792 (= lt!845376 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!814 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2276793 () Bool)

(declare-fun e!1458296 () Bool)

(declare-fun tp!721314 () Bool)

(assert (=> b!2276793 (= e!1458296 (and tp_is_empty!10555 tp!721314))))

(declare-fun b!2276794 () Bool)

(declare-fun matchR!2924 (Regex!6667 List!27162) Bool)

(assert (=> b!2276794 (= e!1458291 (not (matchR!2924 (regex!4319 r!2363) (list!10528 (charsOf!2707 (head!4922 tokens!456))))))))

(declare-fun b!2276795 () Bool)

(declare-fun e!1458304 () Bool)

(declare-fun e!1458288 () Bool)

(declare-fun tp!721305 () Bool)

(assert (=> b!2276795 (= e!1458304 (and e!1458288 tp!721305))))

(declare-fun b!2276777 () Bool)

(declare-fun res!973043 () Bool)

(assert (=> b!2276777 (=> (not res!973043) (not e!1458302))))

(assert (=> b!2276777 (= res!973043 e!1458308)))

(declare-fun res!973047 () Bool)

(assert (=> b!2276777 (=> res!973047 e!1458308)))

(assert (=> b!2276777 (= res!973047 lt!845381)))

(declare-fun res!973053 () Bool)

(assert (=> start!222892 (=> (not res!973053) (not e!1458298))))

(assert (=> start!222892 (= res!973053 ((_ is Lexer!3914) thiss!16613))))

(assert (=> start!222892 e!1458298))

(assert (=> start!222892 true))

(assert (=> start!222892 e!1458299))

(assert (=> start!222892 e!1458293))

(assert (=> start!222892 e!1458297))

(assert (=> start!222892 e!1458296))

(assert (=> start!222892 e!1458304))

(assert (=> start!222892 e!1458285))

(assert (=> start!222892 e!1458292))

(declare-fun tp!721307 () Bool)

(declare-fun b!2276796 () Bool)

(assert (=> b!2276796 (= e!1458288 (and tp!721307 (inv!36644 (tag!4809 (h!32471 rules!1750))) (inv!36647 (transformation!4319 (h!32471 rules!1750))) e!1458284))))

(assert (=> b!2276797 (= e!1458300 (and tp!721316 tp!721309))))

(assert (=> b!2276798 (= e!1458295 (and tp!721302 tp!721311))))

(declare-fun b!2276799 () Bool)

(declare-fun res!973039 () Bool)

(assert (=> b!2276799 (=> (not res!973039) (not e!1458298))))

(assert (=> b!2276799 (= res!973039 (contains!4689 rules!1750 otherR!12))))

(declare-fun tp!721313 () Bool)

(declare-fun b!2276800 () Bool)

(declare-fun inv!21 (TokenValue!4481) Bool)

(assert (=> b!2276800 (= e!1458294 (and (inv!21 (value!136911 (h!32470 tokens!456))) e!1458289 tp!721313))))

(assert (= (and start!222892 res!973053) b!2276775))

(assert (= (and b!2276775 res!973046) b!2276781))

(assert (= (and b!2276781 res!973040) b!2276787))

(assert (= (and b!2276787 res!973051) b!2276799))

(assert (= (and b!2276799 res!973039) b!2276790))

(assert (= (and b!2276790 res!973045) b!2276776))

(assert (= (and b!2276776 (not res!973048)) b!2276780))

(assert (= (and b!2276776 res!973038) b!2276777))

(assert (= (and b!2276777 (not res!973047)) b!2276782))

(assert (= (and b!2276777 res!973043) b!2276791))

(assert (= (and b!2276791 res!973050) b!2276788))

(assert (= (and b!2276788 res!973052) b!2276792))

(assert (= (and b!2276792 res!973054) b!2276794))

(assert (= (and b!2276792 (not res!973042)) b!2276774))

(assert (= (and b!2276774 (not res!973041)) b!2276785))

(assert (= (and b!2276785 (not res!973049)) b!2276789))

(assert (= (and b!2276789 (not res!973044)) b!2276784))

(assert (= (and start!222892 ((_ is Cons!27068) input!1722)) b!2276786))

(assert (= b!2276783 b!2276772))

(assert (= start!222892 b!2276783))

(assert (= (and start!222892 ((_ is Cons!27068) suffix!886)) b!2276770))

(assert (= (and start!222892 ((_ is Cons!27068) otherP!12)) b!2276793))

(assert (= b!2276796 b!2276773))

(assert (= b!2276795 b!2276796))

(assert (= (and start!222892 ((_ is Cons!27070) rules!1750)) b!2276795))

(assert (= b!2276778 b!2276797))

(assert (= start!222892 b!2276778))

(assert (= b!2276771 b!2276798))

(assert (= b!2276800 b!2276771))

(assert (= b!2276779 b!2276800))

(assert (= (and start!222892 ((_ is Cons!27069) tokens!456)) b!2276779))

(declare-fun m!2705045 () Bool)

(assert (=> b!2276782 m!2705045))

(declare-fun m!2705047 () Bool)

(assert (=> b!2276783 m!2705047))

(declare-fun m!2705049 () Bool)

(assert (=> b!2276783 m!2705049))

(declare-fun m!2705051 () Bool)

(assert (=> b!2276791 m!2705051))

(declare-fun m!2705053 () Bool)

(assert (=> b!2276778 m!2705053))

(declare-fun m!2705055 () Bool)

(assert (=> b!2276778 m!2705055))

(declare-fun m!2705057 () Bool)

(assert (=> b!2276799 m!2705057))

(declare-fun m!2705059 () Bool)

(assert (=> b!2276771 m!2705059))

(declare-fun m!2705061 () Bool)

(assert (=> b!2276771 m!2705061))

(assert (=> b!2276780 m!2705045))

(assert (=> b!2276780 m!2705045))

(declare-fun m!2705063 () Bool)

(assert (=> b!2276780 m!2705063))

(assert (=> b!2276780 m!2705063))

(declare-fun m!2705065 () Bool)

(assert (=> b!2276780 m!2705065))

(declare-fun m!2705067 () Bool)

(assert (=> b!2276780 m!2705067))

(declare-fun m!2705069 () Bool)

(assert (=> b!2276790 m!2705069))

(declare-fun m!2705071 () Bool)

(assert (=> b!2276790 m!2705071))

(declare-fun m!2705073 () Bool)

(assert (=> b!2276790 m!2705073))

(assert (=> b!2276790 m!2705073))

(declare-fun m!2705075 () Bool)

(assert (=> b!2276790 m!2705075))

(declare-fun m!2705077 () Bool)

(assert (=> b!2276789 m!2705077))

(assert (=> b!2276789 m!2705077))

(declare-fun m!2705079 () Bool)

(assert (=> b!2276789 m!2705079))

(declare-fun m!2705081 () Bool)

(assert (=> b!2276796 m!2705081))

(declare-fun m!2705083 () Bool)

(assert (=> b!2276796 m!2705083))

(declare-fun m!2705085 () Bool)

(assert (=> b!2276776 m!2705085))

(declare-fun m!2705087 () Bool)

(assert (=> b!2276787 m!2705087))

(declare-fun m!2705089 () Bool)

(assert (=> b!2276781 m!2705089))

(declare-fun m!2705091 () Bool)

(assert (=> b!2276800 m!2705091))

(assert (=> b!2276794 m!2705045))

(assert (=> b!2276794 m!2705045))

(assert (=> b!2276794 m!2705063))

(assert (=> b!2276794 m!2705063))

(declare-fun m!2705093 () Bool)

(assert (=> b!2276794 m!2705093))

(assert (=> b!2276794 m!2705093))

(declare-fun m!2705095 () Bool)

(assert (=> b!2276794 m!2705095))

(declare-fun m!2705097 () Bool)

(assert (=> b!2276774 m!2705097))

(declare-fun m!2705099 () Bool)

(assert (=> b!2276774 m!2705099))

(declare-fun m!2705101 () Bool)

(assert (=> b!2276774 m!2705101))

(declare-fun m!2705103 () Bool)

(assert (=> b!2276774 m!2705103))

(declare-fun m!2705105 () Bool)

(assert (=> b!2276775 m!2705105))

(declare-fun m!2705107 () Bool)

(assert (=> b!2276779 m!2705107))

(declare-fun m!2705109 () Bool)

(assert (=> b!2276792 m!2705109))

(declare-fun m!2705111 () Bool)

(assert (=> b!2276792 m!2705111))

(declare-fun m!2705113 () Bool)

(assert (=> b!2276784 m!2705113))

(declare-fun m!2705115 () Bool)

(assert (=> b!2276784 m!2705115))

(assert (=> b!2276784 m!2705113))

(declare-fun m!2705117 () Bool)

(assert (=> b!2276784 m!2705117))

(declare-fun m!2705119 () Bool)

(assert (=> b!2276784 m!2705119))

(assert (=> b!2276784 m!2705117))

(declare-fun m!2705121 () Bool)

(assert (=> b!2276784 m!2705121))

(declare-fun m!2705123 () Bool)

(assert (=> b!2276784 m!2705123))

(declare-fun m!2705125 () Bool)

(assert (=> b!2276784 m!2705125))

(check-sat (not b_next!68563) (not b!2276784) b_and!179623 (not b!2276782) (not b!2276786) (not b!2276779) (not b_next!68557) (not b!2276783) (not b_next!68567) b_and!179619 b_and!179615 (not b!2276796) (not b!2276800) (not b!2276793) (not b!2276789) (not b_next!68561) (not b_next!68569) b_and!179617 (not b_next!68571) (not b!2276778) (not b!2276799) (not b!2276794) (not b!2276790) (not b!2276780) (not b!2276791) tp_is_empty!10555 b_and!179609 (not b!2276787) (not b!2276771) b_and!179621 (not b!2276774) (not b!2276795) (not b!2276770) b_and!179613 (not b_next!68565) (not b!2276781) (not b!2276775) (not b_next!68559) (not b!2276792) (not b!2276776) b_and!179611)
(check-sat (not b_next!68563) b_and!179623 b_and!179609 (not b_next!68557) b_and!179621 (not b_next!68567) b_and!179619 b_and!179615 (not b_next!68559) b_and!179611 (not b_next!68561) (not b_next!68569) b_and!179617 (not b_next!68571) b_and!179613 (not b_next!68565))
