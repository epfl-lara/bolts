; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396654 () Bool)

(assert start!396654)

(declare-fun b!4162555 () Bool)

(declare-fun b_free!119999 () Bool)

(declare-fun b_next!120703 () Bool)

(assert (=> b!4162555 (= b_free!119999 (not b_next!120703))))

(declare-fun tp!1270786 () Bool)

(declare-fun b_and!324385 () Bool)

(assert (=> b!4162555 (= tp!1270786 b_and!324385)))

(declare-fun b_free!120001 () Bool)

(declare-fun b_next!120705 () Bool)

(assert (=> b!4162555 (= b_free!120001 (not b_next!120705))))

(declare-fun tp!1270791 () Bool)

(declare-fun b_and!324387 () Bool)

(assert (=> b!4162555 (= tp!1270791 b_and!324387)))

(declare-fun b!4162559 () Bool)

(declare-fun b_free!120003 () Bool)

(declare-fun b_next!120707 () Bool)

(assert (=> b!4162559 (= b_free!120003 (not b_next!120707))))

(declare-fun tp!1270784 () Bool)

(declare-fun b_and!324389 () Bool)

(assert (=> b!4162559 (= tp!1270784 b_and!324389)))

(declare-fun b_free!120005 () Bool)

(declare-fun b_next!120709 () Bool)

(assert (=> b!4162559 (= b_free!120005 (not b_next!120709))))

(declare-fun tp!1270785 () Bool)

(declare-fun b_and!324391 () Bool)

(assert (=> b!4162559 (= tp!1270785 b_and!324391)))

(declare-fun b!4162570 () Bool)

(declare-fun b_free!120007 () Bool)

(declare-fun b_next!120711 () Bool)

(assert (=> b!4162570 (= b_free!120007 (not b_next!120711))))

(declare-fun tp!1270788 () Bool)

(declare-fun b_and!324393 () Bool)

(assert (=> b!4162570 (= tp!1270788 b_and!324393)))

(declare-fun b_free!120009 () Bool)

(declare-fun b_next!120713 () Bool)

(assert (=> b!4162570 (= b_free!120009 (not b_next!120713))))

(declare-fun tp!1270783 () Bool)

(declare-fun b_and!324395 () Bool)

(assert (=> b!4162570 (= tp!1270783 b_and!324395)))

(declare-fun e!2583990 () Bool)

(assert (=> b!4162555 (= e!2583990 (and tp!1270786 tp!1270791))))

(declare-fun b!4162556 () Bool)

(declare-fun e!2583992 () Bool)

(assert (=> b!4162556 (= e!2583992 true)))

(declare-fun lt!1483088 () Int)

(declare-datatypes ((C!25056 0))(
  ( (C!25057 (val!14690 Int)) )
))
(declare-datatypes ((List!45661 0))(
  ( (Nil!45537) (Cons!45537 (h!50957 C!25056) (t!343724 List!45661)) )
))
(declare-fun p!2942 () List!45661)

(declare-fun size!33460 (List!45661) Int)

(assert (=> b!4162556 (= lt!1483088 (size!33460 p!2942))))

(declare-fun lt!1483087 () Int)

(declare-fun input!3316 () List!45661)

(assert (=> b!4162556 (= lt!1483087 (size!33460 input!3316))))

(declare-fun isPrefix!4385 (List!45661 List!45661) Bool)

(assert (=> b!4162556 (isPrefix!4385 input!3316 input!3316)))

(declare-datatypes ((Unit!64626 0))(
  ( (Unit!64627) )
))
(declare-fun lt!1483090 () Unit!64626)

(declare-fun lemmaIsPrefixRefl!2824 (List!45661 List!45661) Unit!64626)

(assert (=> b!4162556 (= lt!1483090 (lemmaIsPrefixRefl!2824 input!3316 input!3316))))

(declare-fun lt!1483086 () Unit!64626)

(declare-datatypes ((IArray!27483 0))(
  ( (IArray!27484 (innerList!13799 List!45661)) )
))
(declare-datatypes ((Conc!13739 0))(
  ( (Node!13739 (left!33957 Conc!13739) (right!34287 Conc!13739) (csize!27708 Int) (cheight!13950 Int)) (Leaf!21246 (xs!17045 IArray!27483) (csize!27709 Int)) (Empty!13739) )
))
(declare-datatypes ((List!45662 0))(
  ( (Nil!45538) (Cons!45538 (h!50958 (_ BitVec 16)) (t!343725 List!45662)) )
))
(declare-datatypes ((BalanceConc!27072 0))(
  ( (BalanceConc!27073 (c!712008 Conc!13739)) )
))
(declare-datatypes ((TokenValue!7758 0))(
  ( (FloatLiteralValue!15516 (text!54751 List!45662)) (TokenValueExt!7757 (__x!27737 Int)) (Broken!38790 (value!235071 List!45662)) (Object!7881) (End!7758) (Def!7758) (Underscore!7758) (Match!7758) (Else!7758) (Error!7758) (Case!7758) (If!7758) (Extends!7758) (Abstract!7758) (Class!7758) (Val!7758) (DelimiterValue!15516 (del!7818 List!45662)) (KeywordValue!7764 (value!235072 List!45662)) (CommentValue!15516 (value!235073 List!45662)) (WhitespaceValue!15516 (value!235074 List!45662)) (IndentationValue!7758 (value!235075 List!45662)) (String!52655) (Int32!7758) (Broken!38791 (value!235076 List!45662)) (Boolean!7759) (Unit!64628) (OperatorValue!7761 (op!7818 List!45662)) (IdentifierValue!15516 (value!235077 List!45662)) (IdentifierValue!15517 (value!235078 List!45662)) (WhitespaceValue!15517 (value!235079 List!45662)) (True!15516) (False!15516) (Broken!38792 (value!235080 List!45662)) (Broken!38793 (value!235081 List!45662)) (True!15517) (RightBrace!7758) (RightBracket!7758) (Colon!7758) (Null!7758) (Comma!7758) (LeftBracket!7758) (False!15517) (LeftBrace!7758) (ImaginaryLiteralValue!7758 (text!54752 List!45662)) (StringLiteralValue!23274 (value!235082 List!45662)) (EOFValue!7758 (value!235083 List!45662)) (IdentValue!7758 (value!235084 List!45662)) (DelimiterValue!15517 (value!235085 List!45662)) (DedentValue!7758 (value!235086 List!45662)) (NewLineValue!7758 (value!235087 List!45662)) (IntegerValue!23274 (value!235088 (_ BitVec 32)) (text!54753 List!45662)) (IntegerValue!23275 (value!235089 Int) (text!54754 List!45662)) (Times!7758) (Or!7758) (Equal!7758) (Minus!7758) (Broken!38794 (value!235090 List!45662)) (And!7758) (Div!7758) (LessEqual!7758) (Mod!7758) (Concat!20191) (Not!7758) (Plus!7758) (SpaceValue!7758 (value!235091 List!45662)) (IntegerValue!23276 (value!235092 Int) (text!54755 List!45662)) (StringLiteralValue!23275 (text!54756 List!45662)) (FloatLiteralValue!15517 (text!54757 List!45662)) (BytesLiteralValue!7758 (value!235093 List!45662)) (CommentValue!15517 (value!235094 List!45662)) (StringLiteralValue!23276 (value!235095 List!45662)) (ErrorTokenValue!7758 (msg!7819 List!45662)) )
))
(declare-datatypes ((TokenValueInjection!14944 0))(
  ( (TokenValueInjection!14945 (toValue!10192 Int) (toChars!10051 Int)) )
))
(declare-datatypes ((Regex!12433 0))(
  ( (ElementMatch!12433 (c!712009 C!25056)) (Concat!20192 (regOne!25378 Regex!12433) (regTwo!25378 Regex!12433)) (EmptyExpr!12433) (Star!12433 (reg!12762 Regex!12433)) (EmptyLang!12433) (Union!12433 (regOne!25379 Regex!12433) (regTwo!25379 Regex!12433)) )
))
(declare-datatypes ((String!52656 0))(
  ( (String!52657 (value!235096 String)) )
))
(declare-datatypes ((Rule!14856 0))(
  ( (Rule!14857 (regex!7528 Regex!12433) (tag!8392 String!52656) (isSeparator!7528 Bool) (transformation!7528 TokenValueInjection!14944)) )
))
(declare-fun r!4097 () Rule!14856)

(declare-fun lemmaSemiInverse!2302 (TokenValueInjection!14944 BalanceConc!27072) Unit!64626)

(declare-fun seqFromList!5561 (List!45661) BalanceConc!27072)

(assert (=> b!4162556 (= lt!1483086 (lemmaSemiInverse!2302 (transformation!7528 r!4097) (seqFromList!5561 p!2942)))))

(declare-fun b!4162557 () Bool)

(declare-fun res!1705223 () Bool)

(declare-fun e!2583996 () Bool)

(assert (=> b!4162557 (=> (not res!1705223) (not e!2583996))))

(declare-datatypes ((List!45663 0))(
  ( (Nil!45539) (Cons!45539 (h!50959 Rule!14856) (t!343726 List!45663)) )
))
(declare-fun rules!3820 () List!45663)

(declare-fun isEmpty!26961 (List!45663) Bool)

(assert (=> b!4162557 (= res!1705223 (not (isEmpty!26961 rules!3820)))))

(declare-fun b!4162558 () Bool)

(declare-fun res!1705228 () Bool)

(assert (=> b!4162558 (=> (not res!1705228) (not e!2583996))))

(declare-fun pBis!100 () List!45661)

(assert (=> b!4162558 (= res!1705228 (isPrefix!4385 pBis!100 input!3316))))

(declare-fun e!2583986 () Bool)

(assert (=> b!4162559 (= e!2583986 (and tp!1270784 tp!1270785))))

(declare-fun b!4162560 () Bool)

(declare-fun e!2583991 () Bool)

(declare-fun e!2583994 () Bool)

(declare-fun tp!1270787 () Bool)

(assert (=> b!4162560 (= e!2583991 (and e!2583994 tp!1270787))))

(declare-fun b!4162561 () Bool)

(declare-fun res!1705221 () Bool)

(assert (=> b!4162561 (=> (not res!1705221) (not e!2583996))))

(assert (=> b!4162561 (= res!1705221 (isPrefix!4385 p!2942 input!3316))))

(declare-fun b!4162562 () Bool)

(declare-fun res!1705222 () Bool)

(assert (=> b!4162562 (=> (not res!1705222) (not e!2583996))))

(declare-fun contains!9321 (List!45663 Rule!14856) Bool)

(assert (=> b!4162562 (= res!1705222 (contains!9321 rules!3820 r!4097))))

(declare-fun b!4162563 () Bool)

(declare-fun e!2583985 () Bool)

(declare-fun tp_is_empty!21829 () Bool)

(declare-fun tp!1270782 () Bool)

(assert (=> b!4162563 (= e!2583985 (and tp_is_empty!21829 tp!1270782))))

(declare-fun res!1705225 () Bool)

(assert (=> start!396654 (=> (not res!1705225) (not e!2583996))))

(declare-datatypes ((LexerInterface!7121 0))(
  ( (LexerInterfaceExt!7118 (__x!27738 Int)) (Lexer!7119) )
))
(declare-fun thiss!25889 () LexerInterface!7121)

(get-info :version)

(assert (=> start!396654 (= res!1705225 ((_ is Lexer!7119) thiss!25889))))

(assert (=> start!396654 e!2583996))

(assert (=> start!396654 e!2583985))

(assert (=> start!396654 e!2583991))

(declare-fun e!2583983 () Bool)

(assert (=> start!396654 e!2583983))

(declare-fun e!2583989 () Bool)

(assert (=> start!396654 e!2583989))

(assert (=> start!396654 true))

(declare-fun e!2583982 () Bool)

(assert (=> start!396654 e!2583982))

(declare-fun e!2583984 () Bool)

(assert (=> start!396654 e!2583984))

(declare-fun b!4162564 () Bool)

(assert (=> b!4162564 (= e!2583996 (not e!2583992))))

(declare-fun res!1705226 () Bool)

(assert (=> b!4162564 (=> res!1705226 e!2583992)))

(declare-fun matchR!6178 (Regex!12433 List!45661) Bool)

(assert (=> b!4162564 (= res!1705226 (not (matchR!6178 (regex!7528 r!4097) p!2942)))))

(declare-fun ruleValid!3252 (LexerInterface!7121 Rule!14856) Bool)

(assert (=> b!4162564 (ruleValid!3252 thiss!25889 r!4097)))

(declare-fun lt!1483089 () Unit!64626)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2292 (LexerInterface!7121 Rule!14856 List!45663) Unit!64626)

(assert (=> b!4162564 (= lt!1483089 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2292 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4162565 () Bool)

(declare-fun tp!1270792 () Bool)

(declare-fun rBis!161 () Rule!14856)

(declare-fun inv!60053 (String!52656) Bool)

(declare-fun inv!60055 (TokenValueInjection!14944) Bool)

(assert (=> b!4162565 (= e!2583982 (and tp!1270792 (inv!60053 (tag!8392 rBis!161)) (inv!60055 (transformation!7528 rBis!161)) e!2583986))))

(declare-fun b!4162566 () Bool)

(declare-fun res!1705227 () Bool)

(assert (=> b!4162566 (=> (not res!1705227) (not e!2583996))))

(declare-fun rulesInvariant!6334 (LexerInterface!7121 List!45663) Bool)

(assert (=> b!4162566 (= res!1705227 (rulesInvariant!6334 thiss!25889 rules!3820))))

(declare-fun b!4162567 () Bool)

(declare-fun res!1705224 () Bool)

(assert (=> b!4162567 (=> (not res!1705224) (not e!2583996))))

(assert (=> b!4162567 (= res!1705224 (contains!9321 rules!3820 rBis!161))))

(declare-fun tp!1270794 () Bool)

(declare-fun e!2583995 () Bool)

(declare-fun b!4162568 () Bool)

(assert (=> b!4162568 (= e!2583984 (and tp!1270794 (inv!60053 (tag!8392 r!4097)) (inv!60055 (transformation!7528 r!4097)) e!2583995))))

(declare-fun b!4162569 () Bool)

(declare-fun tp!1270789 () Bool)

(assert (=> b!4162569 (= e!2583994 (and tp!1270789 (inv!60053 (tag!8392 (h!50959 rules!3820))) (inv!60055 (transformation!7528 (h!50959 rules!3820))) e!2583990))))

(assert (=> b!4162570 (= e!2583995 (and tp!1270788 tp!1270783))))

(declare-fun b!4162571 () Bool)

(declare-fun tp!1270793 () Bool)

(assert (=> b!4162571 (= e!2583989 (and tp_is_empty!21829 tp!1270793))))

(declare-fun b!4162572 () Bool)

(declare-fun tp!1270790 () Bool)

(assert (=> b!4162572 (= e!2583983 (and tp_is_empty!21829 tp!1270790))))

(assert (= (and start!396654 res!1705225) b!4162561))

(assert (= (and b!4162561 res!1705221) b!4162558))

(assert (= (and b!4162558 res!1705228) b!4162557))

(assert (= (and b!4162557 res!1705223) b!4162566))

(assert (= (and b!4162566 res!1705227) b!4162562))

(assert (= (and b!4162562 res!1705222) b!4162567))

(assert (= (and b!4162567 res!1705224) b!4162564))

(assert (= (and b!4162564 (not res!1705226)) b!4162556))

(assert (= (and start!396654 ((_ is Cons!45537) pBis!100)) b!4162563))

(assert (= b!4162569 b!4162555))

(assert (= b!4162560 b!4162569))

(assert (= (and start!396654 ((_ is Cons!45539) rules!3820)) b!4162560))

(assert (= (and start!396654 ((_ is Cons!45537) p!2942)) b!4162572))

(assert (= (and start!396654 ((_ is Cons!45537) input!3316)) b!4162571))

(assert (= b!4162565 b!4162559))

(assert (= start!396654 b!4162565))

(assert (= b!4162568 b!4162570))

(assert (= start!396654 b!4162568))

(declare-fun m!4755077 () Bool)

(assert (=> b!4162556 m!4755077))

(declare-fun m!4755079 () Bool)

(assert (=> b!4162556 m!4755079))

(declare-fun m!4755081 () Bool)

(assert (=> b!4162556 m!4755081))

(assert (=> b!4162556 m!4755081))

(declare-fun m!4755083 () Bool)

(assert (=> b!4162556 m!4755083))

(declare-fun m!4755085 () Bool)

(assert (=> b!4162556 m!4755085))

(declare-fun m!4755087 () Bool)

(assert (=> b!4162556 m!4755087))

(declare-fun m!4755089 () Bool)

(assert (=> b!4162569 m!4755089))

(declare-fun m!4755091 () Bool)

(assert (=> b!4162569 m!4755091))

(declare-fun m!4755093 () Bool)

(assert (=> b!4162564 m!4755093))

(declare-fun m!4755095 () Bool)

(assert (=> b!4162564 m!4755095))

(declare-fun m!4755097 () Bool)

(assert (=> b!4162564 m!4755097))

(declare-fun m!4755099 () Bool)

(assert (=> b!4162561 m!4755099))

(declare-fun m!4755101 () Bool)

(assert (=> b!4162562 m!4755101))

(declare-fun m!4755103 () Bool)

(assert (=> b!4162568 m!4755103))

(declare-fun m!4755105 () Bool)

(assert (=> b!4162568 m!4755105))

(declare-fun m!4755107 () Bool)

(assert (=> b!4162566 m!4755107))

(declare-fun m!4755109 () Bool)

(assert (=> b!4162567 m!4755109))

(declare-fun m!4755111 () Bool)

(assert (=> b!4162557 m!4755111))

(declare-fun m!4755113 () Bool)

(assert (=> b!4162558 m!4755113))

(declare-fun m!4755115 () Bool)

(assert (=> b!4162565 m!4755115))

(declare-fun m!4755117 () Bool)

(assert (=> b!4162565 m!4755117))

(check-sat b_and!324391 b_and!324395 (not b_next!120707) (not b_next!120713) (not b!4162565) (not b_next!120703) (not b!4162568) (not b!4162566) (not b!4162562) (not b!4162571) (not b!4162560) (not b!4162567) (not b_next!120705) b_and!324389 tp_is_empty!21829 (not b!4162564) (not b_next!120709) (not b!4162572) (not b!4162563) (not b!4162569) (not b!4162561) (not b!4162558) b_and!324393 b_and!324387 b_and!324385 (not b_next!120711) (not b!4162557) (not b!4162556))
(check-sat (not b_next!120705) b_and!324389 (not b_next!120709) b_and!324391 b_and!324395 (not b_next!120707) (not b_next!120713) (not b_next!120703) b_and!324393 b_and!324387 b_and!324385 (not b_next!120711))
