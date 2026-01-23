; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513636 () Bool)

(assert start!513636)

(declare-fun b!4902818 () Bool)

(declare-fun b_free!131859 () Bool)

(declare-fun b_next!132649 () Bool)

(assert (=> b!4902818 (= b_free!131859 (not b_next!132649))))

(declare-fun tp!1379510 () Bool)

(declare-fun b_and!346251 () Bool)

(assert (=> b!4902818 (= tp!1379510 b_and!346251)))

(declare-fun b_free!131861 () Bool)

(declare-fun b_next!132651 () Bool)

(assert (=> b!4902818 (= b_free!131861 (not b_next!132651))))

(declare-fun tp!1379509 () Bool)

(declare-fun b_and!346253 () Bool)

(assert (=> b!4902818 (= tp!1379509 b_and!346253)))

(declare-fun b!4902835 () Bool)

(declare-fun e!3064874 () Bool)

(assert (=> b!4902835 (= e!3064874 true)))

(declare-fun b!4902834 () Bool)

(declare-fun e!3064873 () Bool)

(assert (=> b!4902834 (= e!3064873 e!3064874)))

(declare-fun b!4902814 () Bool)

(assert (=> b!4902814 e!3064873))

(assert (= b!4902834 b!4902835))

(assert (= b!4902814 b!4902834))

(declare-fun order!25681 () Int)

(declare-fun lambda!244388 () Int)

(declare-fun order!25683 () Int)

(declare-datatypes ((C!26792 0))(
  ( (C!26793 (val!22730 Int)) )
))
(declare-datatypes ((Regex!13297 0))(
  ( (ElementMatch!13297 (c!833217 C!26792)) (Concat!21829 (regOne!27106 Regex!13297) (regTwo!27106 Regex!13297)) (EmptyExpr!13297) (Star!13297 (reg!13626 Regex!13297)) (EmptyLang!13297) (Union!13297 (regOne!27107 Regex!13297) (regTwo!27107 Regex!13297)) )
))
(declare-datatypes ((String!64101 0))(
  ( (String!64102 (value!263437 String)) )
))
(declare-datatypes ((List!56642 0))(
  ( (Nil!56518) (Cons!56518 (h!62966 (_ BitVec 16)) (t!366734 List!56642)) )
))
(declare-datatypes ((TokenValue!8532 0))(
  ( (FloatLiteralValue!17064 (text!60169 List!56642)) (TokenValueExt!8531 (__x!34357 Int)) (Broken!42660 (value!263438 List!56642)) (Object!8655) (End!8532) (Def!8532) (Underscore!8532) (Match!8532) (Else!8532) (Error!8532) (Case!8532) (If!8532) (Extends!8532) (Abstract!8532) (Class!8532) (Val!8532) (DelimiterValue!17064 (del!8592 List!56642)) (KeywordValue!8538 (value!263439 List!56642)) (CommentValue!17064 (value!263440 List!56642)) (WhitespaceValue!17064 (value!263441 List!56642)) (IndentationValue!8532 (value!263442 List!56642)) (String!64103) (Int32!8532) (Broken!42661 (value!263443 List!56642)) (Boolean!8533) (Unit!146634) (OperatorValue!8535 (op!8592 List!56642)) (IdentifierValue!17064 (value!263444 List!56642)) (IdentifierValue!17065 (value!263445 List!56642)) (WhitespaceValue!17065 (value!263446 List!56642)) (True!17064) (False!17064) (Broken!42662 (value!263447 List!56642)) (Broken!42663 (value!263448 List!56642)) (True!17065) (RightBrace!8532) (RightBracket!8532) (Colon!8532) (Null!8532) (Comma!8532) (LeftBracket!8532) (False!17065) (LeftBrace!8532) (ImaginaryLiteralValue!8532 (text!60170 List!56642)) (StringLiteralValue!25596 (value!263449 List!56642)) (EOFValue!8532 (value!263450 List!56642)) (IdentValue!8532 (value!263451 List!56642)) (DelimiterValue!17065 (value!263452 List!56642)) (DedentValue!8532 (value!263453 List!56642)) (NewLineValue!8532 (value!263454 List!56642)) (IntegerValue!25596 (value!263455 (_ BitVec 32)) (text!60171 List!56642)) (IntegerValue!25597 (value!263456 Int) (text!60172 List!56642)) (Times!8532) (Or!8532) (Equal!8532) (Minus!8532) (Broken!42664 (value!263457 List!56642)) (And!8532) (Div!8532) (LessEqual!8532) (Mod!8532) (Concat!21830) (Not!8532) (Plus!8532) (SpaceValue!8532 (value!263458 List!56642)) (IntegerValue!25598 (value!263459 Int) (text!60173 List!56642)) (StringLiteralValue!25597 (text!60174 List!56642)) (FloatLiteralValue!17065 (text!60175 List!56642)) (BytesLiteralValue!8532 (value!263460 List!56642)) (CommentValue!17065 (value!263461 List!56642)) (StringLiteralValue!25598 (value!263462 List!56642)) (ErrorTokenValue!8532 (msg!8593 List!56642)) )
))
(declare-datatypes ((List!56643 0))(
  ( (Nil!56519) (Cons!56519 (h!62967 C!26792) (t!366735 List!56643)) )
))
(declare-datatypes ((IArray!29641 0))(
  ( (IArray!29642 (innerList!14878 List!56643)) )
))
(declare-datatypes ((Conc!14790 0))(
  ( (Node!14790 (left!41123 Conc!14790) (right!41453 Conc!14790) (csize!29810 Int) (cheight!15001 Int)) (Leaf!24618 (xs!18106 IArray!29641) (csize!29811 Int)) (Empty!14790) )
))
(declare-datatypes ((BalanceConc!29010 0))(
  ( (BalanceConc!29011 (c!833218 Conc!14790)) )
))
(declare-datatypes ((TokenValueInjection!16372 0))(
  ( (TokenValueInjection!16373 (toValue!11133 Int) (toChars!10992 Int)) )
))
(declare-datatypes ((Rule!16244 0))(
  ( (Rule!16245 (regex!8222 Regex!13297) (tag!9086 String!64101) (isSeparator!8222 Bool) (transformation!8222 TokenValueInjection!16372)) )
))
(declare-fun rule!164 () Rule!16244)

(declare-fun dynLambda!22774 (Int Int) Int)

(declare-fun dynLambda!22775 (Int Int) Int)

(assert (=> b!4902835 (< (dynLambda!22774 order!25681 (toValue!11133 (transformation!8222 rule!164))) (dynLambda!22775 order!25683 lambda!244388))))

(declare-fun order!25685 () Int)

(declare-fun dynLambda!22776 (Int Int) Int)

(assert (=> b!4902835 (< (dynLambda!22776 order!25685 (toChars!10992 (transformation!8222 rule!164))) (dynLambda!22775 order!25683 lambda!244388))))

(declare-fun res!2094322 () Bool)

(declare-fun e!3064858 () Bool)

(assert (=> b!4902814 (=> res!2094322 e!3064858)))

(declare-fun Forall!1719 (Int) Bool)

(assert (=> b!4902814 (= res!2094322 (not (Forall!1719 lambda!244388)))))

(declare-fun b!4902815 () Bool)

(declare-fun e!3064865 () Bool)

(declare-fun e!3064861 () Bool)

(assert (=> b!4902815 (= e!3064865 e!3064861)))

(declare-fun res!2094323 () Bool)

(assert (=> b!4902815 (=> res!2094323 e!3064861)))

(declare-datatypes ((Token!14980 0))(
  ( (Token!14981 (value!263463 TokenValue!8532) (rule!11422 Rule!16244) (size!37246 Int) (originalCharacters!8521 List!56643)) )
))
(declare-datatypes ((tuple2!60724 0))(
  ( (tuple2!60725 (_1!33665 Token!14980) (_2!33665 List!56643)) )
))
(declare-fun lt!2010911 () tuple2!60724)

(declare-fun lt!2010913 () List!56643)

(declare-fun lt!2010910 () Int)

(declare-fun lt!2010906 () Token!14980)

(declare-fun lt!2010915 () TokenValue!8532)

(assert (=> b!4902815 (= res!2094323 (or (not (= (value!263463 (_1!33665 lt!2010911)) lt!2010915)) (not (= (rule!11422 (_1!33665 lt!2010911)) rule!164)) (not (= (size!37246 (_1!33665 lt!2010911)) lt!2010910)) (not (= (originalCharacters!8521 (_1!33665 lt!2010911)) lt!2010913)) (not (= lt!2010906 (_1!33665 lt!2010911)))))))

(declare-datatypes ((Option!14089 0))(
  ( (None!14088) (Some!14088 (v!50050 tuple2!60724)) )
))
(declare-fun lt!2010907 () Option!14089)

(declare-fun get!19540 (Option!14089) tuple2!60724)

(assert (=> b!4902815 (= lt!2010911 (get!19540 lt!2010907))))

(declare-fun b!4902816 () Bool)

(declare-fun e!3064860 () Bool)

(declare-fun input!1509 () BalanceConc!29010)

(declare-fun tp!1379508 () Bool)

(declare-fun inv!72930 (Conc!14790) Bool)

(assert (=> b!4902816 (= e!3064860 (and (inv!72930 (c!833218 input!1509)) tp!1379508))))

(declare-fun b!4902817 () Bool)

(declare-fun e!3064866 () Bool)

(declare-datatypes ((tuple2!60726 0))(
  ( (tuple2!60727 (_1!33666 List!56643) (_2!33666 List!56643)) )
))
(declare-fun lt!2010914 () tuple2!60726)

(declare-fun matchR!6564 (Regex!13297 List!56643) Bool)

(assert (=> b!4902817 (= e!3064866 (matchR!6564 (regex!8222 rule!164) (_1!33666 lt!2010914)))))

(declare-fun e!3064868 () Bool)

(assert (=> b!4902818 (= e!3064868 (and tp!1379510 tp!1379509))))

(declare-fun res!2094318 () Bool)

(declare-fun e!3064864 () Bool)

(assert (=> start!513636 (=> (not res!2094318) (not e!3064864))))

(declare-datatypes ((LexerInterface!7814 0))(
  ( (LexerInterfaceExt!7811 (__x!34358 Int)) (Lexer!7812) )
))
(declare-fun thiss!15943 () LexerInterface!7814)

(get-info :version)

(assert (=> start!513636 (= res!2094318 ((_ is Lexer!7812) thiss!15943))))

(assert (=> start!513636 e!3064864))

(assert (=> start!513636 true))

(declare-fun e!3064867 () Bool)

(assert (=> start!513636 e!3064867))

(declare-fun inv!72931 (BalanceConc!29010) Bool)

(assert (=> start!513636 (and (inv!72931 input!1509) e!3064860)))

(declare-fun b!4902819 () Bool)

(declare-fun res!2094317 () Bool)

(declare-fun e!3064859 () Bool)

(assert (=> b!4902819 (=> res!2094317 e!3064859)))

(declare-fun lt!2010912 () BalanceConc!29010)

(declare-fun list!17792 (BalanceConc!29010) List!56643)

(assert (=> b!4902819 (= res!2094317 (not (= (list!17792 lt!2010912) lt!2010913)))))

(declare-fun b!4902820 () Bool)

(declare-fun res!2094320 () Bool)

(assert (=> b!4902820 (=> res!2094320 e!3064861)))

(declare-datatypes ((tuple2!60728 0))(
  ( (tuple2!60729 (_1!33667 Token!14980) (_2!33667 BalanceConc!29010)) )
))
(declare-datatypes ((Option!14090 0))(
  ( (None!14089) (Some!14089 (v!50051 tuple2!60728)) )
))
(declare-fun lt!2010908 () Option!14090)

(declare-fun get!19541 (Option!14090) tuple2!60728)

(assert (=> b!4902820 (= res!2094320 (not (= (_1!33667 (get!19541 lt!2010908)) (_1!33665 lt!2010911))))))

(declare-fun b!4902821 () Bool)

(declare-fun e!3064862 () Bool)

(assert (=> b!4902821 (= e!3064862 (not e!3064858))))

(declare-fun res!2094319 () Bool)

(assert (=> b!4902821 (=> res!2094319 e!3064858)))

(declare-fun semiInverseModEq!3623 (Int Int) Bool)

(assert (=> b!4902821 (= res!2094319 (not (semiInverseModEq!3623 (toChars!10992 (transformation!8222 rule!164)) (toValue!11133 (transformation!8222 rule!164)))))))

(declare-datatypes ((Unit!146635 0))(
  ( (Unit!146636) )
))
(declare-fun lt!2010919 () Unit!146635)

(declare-fun lemmaInv!1268 (TokenValueInjection!16372) Unit!146635)

(assert (=> b!4902821 (= lt!2010919 (lemmaInv!1268 (transformation!8222 rule!164)))))

(assert (=> b!4902821 e!3064866))

(declare-fun res!2094321 () Bool)

(assert (=> b!4902821 (=> res!2094321 e!3064866)))

(declare-fun isEmpty!30379 (List!56643) Bool)

(assert (=> b!4902821 (= res!2094321 (isEmpty!30379 (_1!33666 lt!2010914)))))

(declare-fun lt!2010920 () List!56643)

(declare-fun findLongestMatchInner!1785 (Regex!13297 List!56643 Int List!56643 List!56643 Int) tuple2!60726)

(declare-fun size!37247 (List!56643) Int)

(assert (=> b!4902821 (= lt!2010914 (findLongestMatchInner!1785 (regex!8222 rule!164) Nil!56519 (size!37247 Nil!56519) lt!2010920 lt!2010920 (size!37247 lt!2010920)))))

(declare-fun lt!2010922 () Unit!146635)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1748 (Regex!13297 List!56643) Unit!146635)

(assert (=> b!4902821 (= lt!2010922 (longestMatchIsAcceptedByMatchOrIsEmpty!1748 (regex!8222 rule!164) lt!2010920))))

(assert (=> b!4902821 (= lt!2010920 (list!17792 input!1509))))

(declare-fun b!4902822 () Bool)

(declare-fun lt!2010918 () Bool)

(assert (=> b!4902822 (= e!3064861 lt!2010918)))

(declare-fun b!4902823 () Bool)

(assert (=> b!4902823 (= e!3064858 e!3064859)))

(declare-fun res!2094315 () Bool)

(assert (=> b!4902823 (=> res!2094315 e!3064859)))

(declare-fun lt!2010921 () Bool)

(assert (=> b!4902823 (= res!2094315 (or (not (= lt!2010921 lt!2010918)) (not lt!2010921)))))

(declare-fun isDefined!11098 (Option!14089) Bool)

(assert (=> b!4902823 (= lt!2010918 (isDefined!11098 lt!2010907))))

(declare-fun isDefined!11099 (Option!14090) Bool)

(assert (=> b!4902823 (= lt!2010921 (isDefined!11099 lt!2010908))))

(declare-fun maxPrefixOneRule!3563 (LexerInterface!7814 Rule!16244 List!56643) Option!14089)

(assert (=> b!4902823 (= lt!2010907 (maxPrefixOneRule!3563 thiss!15943 rule!164 lt!2010920))))

(declare-datatypes ((tuple2!60730 0))(
  ( (tuple2!60731 (_1!33668 BalanceConc!29010) (_2!33668 BalanceConc!29010)) )
))
(declare-fun lt!2010909 () tuple2!60730)

(assert (=> b!4902823 (= lt!2010908 (Some!14089 (tuple2!60729 lt!2010906 (_2!33668 lt!2010909))))))

(assert (=> b!4902823 (= lt!2010906 (Token!14981 lt!2010915 rule!164 lt!2010910 lt!2010913))))

(declare-fun size!37248 (BalanceConc!29010) Int)

(assert (=> b!4902823 (= lt!2010910 (size!37248 (_1!33668 lt!2010909)))))

(declare-fun apply!13570 (TokenValueInjection!16372 BalanceConc!29010) TokenValue!8532)

(assert (=> b!4902823 (= lt!2010915 (apply!13570 (transformation!8222 rule!164) (_1!33668 lt!2010909)))))

(declare-fun lt!2010917 () Unit!146635)

(declare-fun ForallOf!1163 (Int BalanceConc!29010) Unit!146635)

(assert (=> b!4902823 (= lt!2010917 (ForallOf!1163 lambda!244388 lt!2010912))))

(declare-fun seqFromList!5968 (List!56643) BalanceConc!29010)

(assert (=> b!4902823 (= lt!2010912 (seqFromList!5968 lt!2010913))))

(assert (=> b!4902823 (= lt!2010913 (list!17792 (_1!33668 lt!2010909)))))

(declare-fun lt!2010923 () Unit!146635)

(assert (=> b!4902823 (= lt!2010923 (ForallOf!1163 lambda!244388 (_1!33668 lt!2010909)))))

(declare-fun b!4902824 () Bool)

(assert (=> b!4902824 (= e!3064859 e!3064865)))

(declare-fun res!2094324 () Bool)

(assert (=> b!4902824 (=> res!2094324 e!3064865)))

(assert (=> b!4902824 (= res!2094324 (not (= (apply!13570 (transformation!8222 rule!164) lt!2010912) lt!2010915)))))

(declare-fun lt!2010916 () Unit!146635)

(declare-fun lemmaEqSameImage!1114 (TokenValueInjection!16372 BalanceConc!29010 BalanceConc!29010) Unit!146635)

(assert (=> b!4902824 (= lt!2010916 (lemmaEqSameImage!1114 (transformation!8222 rule!164) (_1!33668 lt!2010909) lt!2010912))))

(declare-fun b!4902825 () Bool)

(declare-fun res!2094314 () Bool)

(assert (=> b!4902825 (=> (not res!2094314) (not e!3064864))))

(declare-fun ruleValid!3719 (LexerInterface!7814 Rule!16244) Bool)

(assert (=> b!4902825 (= res!2094314 (ruleValid!3719 thiss!15943 rule!164))))

(declare-fun b!4902826 () Bool)

(declare-fun tp!1379511 () Bool)

(declare-fun inv!72926 (String!64101) Bool)

(declare-fun inv!72932 (TokenValueInjection!16372) Bool)

(assert (=> b!4902826 (= e!3064867 (and tp!1379511 (inv!72926 (tag!9086 rule!164)) (inv!72932 (transformation!8222 rule!164)) e!3064868))))

(declare-fun b!4902827 () Bool)

(assert (=> b!4902827 (= e!3064864 e!3064862)))

(declare-fun res!2094316 () Bool)

(assert (=> b!4902827 (=> (not res!2094316) (not e!3064862))))

(declare-fun isEmpty!30380 (BalanceConc!29010) Bool)

(assert (=> b!4902827 (= res!2094316 (not (isEmpty!30380 (_1!33668 lt!2010909))))))

(declare-fun findLongestMatchWithZipperSequence!310 (Regex!13297 BalanceConc!29010) tuple2!60730)

(assert (=> b!4902827 (= lt!2010909 (findLongestMatchWithZipperSequence!310 (regex!8222 rule!164) input!1509))))

(assert (= (and start!513636 res!2094318) b!4902825))

(assert (= (and b!4902825 res!2094314) b!4902827))

(assert (= (and b!4902827 res!2094316) b!4902821))

(assert (= (and b!4902821 (not res!2094321)) b!4902817))

(assert (= (and b!4902821 (not res!2094319)) b!4902814))

(assert (= (and b!4902814 (not res!2094322)) b!4902823))

(assert (= (and b!4902823 (not res!2094315)) b!4902819))

(assert (= (and b!4902819 (not res!2094317)) b!4902824))

(assert (= (and b!4902824 (not res!2094324)) b!4902815))

(assert (= (and b!4902815 (not res!2094323)) b!4902820))

(assert (= (and b!4902820 (not res!2094320)) b!4902822))

(assert (= b!4902826 b!4902818))

(assert (= start!513636 b!4902826))

(assert (= start!513636 b!4902816))

(declare-fun m!5911716 () Bool)

(assert (=> b!4902825 m!5911716))

(declare-fun m!5911718 () Bool)

(assert (=> b!4902826 m!5911718))

(declare-fun m!5911720 () Bool)

(assert (=> b!4902826 m!5911720))

(declare-fun m!5911722 () Bool)

(assert (=> b!4902819 m!5911722))

(declare-fun m!5911724 () Bool)

(assert (=> b!4902817 m!5911724))

(declare-fun m!5911726 () Bool)

(assert (=> b!4902814 m!5911726))

(declare-fun m!5911728 () Bool)

(assert (=> b!4902816 m!5911728))

(declare-fun m!5911730 () Bool)

(assert (=> b!4902823 m!5911730))

(declare-fun m!5911732 () Bool)

(assert (=> b!4902823 m!5911732))

(declare-fun m!5911734 () Bool)

(assert (=> b!4902823 m!5911734))

(declare-fun m!5911736 () Bool)

(assert (=> b!4902823 m!5911736))

(declare-fun m!5911738 () Bool)

(assert (=> b!4902823 m!5911738))

(declare-fun m!5911740 () Bool)

(assert (=> b!4902823 m!5911740))

(declare-fun m!5911742 () Bool)

(assert (=> b!4902823 m!5911742))

(declare-fun m!5911744 () Bool)

(assert (=> b!4902823 m!5911744))

(declare-fun m!5911746 () Bool)

(assert (=> b!4902823 m!5911746))

(declare-fun m!5911748 () Bool)

(assert (=> b!4902815 m!5911748))

(declare-fun m!5911750 () Bool)

(assert (=> b!4902827 m!5911750))

(declare-fun m!5911752 () Bool)

(assert (=> b!4902827 m!5911752))

(declare-fun m!5911754 () Bool)

(assert (=> b!4902820 m!5911754))

(declare-fun m!5911756 () Bool)

(assert (=> b!4902824 m!5911756))

(declare-fun m!5911758 () Bool)

(assert (=> b!4902824 m!5911758))

(declare-fun m!5911760 () Bool)

(assert (=> start!513636 m!5911760))

(declare-fun m!5911762 () Bool)

(assert (=> b!4902821 m!5911762))

(declare-fun m!5911764 () Bool)

(assert (=> b!4902821 m!5911764))

(declare-fun m!5911766 () Bool)

(assert (=> b!4902821 m!5911766))

(declare-fun m!5911768 () Bool)

(assert (=> b!4902821 m!5911768))

(declare-fun m!5911770 () Bool)

(assert (=> b!4902821 m!5911770))

(assert (=> b!4902821 m!5911764))

(assert (=> b!4902821 m!5911768))

(declare-fun m!5911772 () Bool)

(assert (=> b!4902821 m!5911772))

(declare-fun m!5911774 () Bool)

(assert (=> b!4902821 m!5911774))

(declare-fun m!5911776 () Bool)

(assert (=> b!4902821 m!5911776))

(check-sat (not b!4902814) (not b_next!132651) b_and!346253 (not b!4902823) (not b!4902815) (not b!4902821) (not b!4902826) (not b!4902827) (not b!4902817) b_and!346251 (not b!4902825) (not b!4902820) (not b!4902816) (not b!4902819) (not b_next!132649) (not b!4902824) (not start!513636))
(check-sat b_and!346253 b_and!346251 (not b_next!132651) (not b_next!132649))
