; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17474 () Bool)

(assert start!17474)

(declare-fun b!161870 () Bool)

(declare-fun b_free!6113 () Bool)

(declare-fun b_next!6113 () Bool)

(assert (=> b!161870 (= b_free!6113 (not b_next!6113))))

(declare-fun tp!82051 () Bool)

(declare-fun b_and!10097 () Bool)

(assert (=> b!161870 (= tp!82051 b_and!10097)))

(declare-fun b_free!6115 () Bool)

(declare-fun b_next!6115 () Bool)

(assert (=> b!161870 (= b_free!6115 (not b_next!6115))))

(declare-fun tp!82053 () Bool)

(declare-fun b_and!10099 () Bool)

(assert (=> b!161870 (= tp!82053 b_and!10099)))

(declare-fun b!161875 () Bool)

(declare-fun b_free!6117 () Bool)

(declare-fun b_next!6117 () Bool)

(assert (=> b!161875 (= b_free!6117 (not b_next!6117))))

(declare-fun tp!82052 () Bool)

(declare-fun b_and!10101 () Bool)

(assert (=> b!161875 (= tp!82052 b_and!10101)))

(declare-fun b_free!6119 () Bool)

(declare-fun b_next!6119 () Bool)

(assert (=> b!161875 (= b_free!6119 (not b_next!6119))))

(declare-fun tp!82047 () Bool)

(declare-fun b_and!10103 () Bool)

(assert (=> b!161875 (= tp!82047 b_and!10103)))

(declare-fun b!161860 () Bool)

(declare-fun b_free!6121 () Bool)

(declare-fun b_next!6121 () Bool)

(assert (=> b!161860 (= b_free!6121 (not b_next!6121))))

(declare-fun tp!82049 () Bool)

(declare-fun b_and!10105 () Bool)

(assert (=> b!161860 (= tp!82049 b_and!10105)))

(declare-fun b_free!6123 () Bool)

(declare-fun b_next!6123 () Bool)

(assert (=> b!161860 (= b_free!6123 (not b_next!6123))))

(declare-fun tp!82041 () Bool)

(declare-fun b_and!10107 () Bool)

(assert (=> b!161860 (= tp!82041 b_and!10107)))

(declare-fun b!161853 () Bool)

(declare-fun res!73369 () Bool)

(declare-fun e!97429 () Bool)

(assert (=> b!161853 (=> (not res!73369) (not e!97429))))

(declare-datatypes ((List!2789 0))(
  ( (Nil!2779) (Cons!2779 (h!8176 (_ BitVec 16)) (t!26055 List!2789)) )
))
(declare-datatypes ((TokenValue!513 0))(
  ( (FloatLiteralValue!1026 (text!4036 List!2789)) (TokenValueExt!512 (__x!2513 Int)) (Broken!2565 (value!18283 List!2789)) (Object!522) (End!513) (Def!513) (Underscore!513) (Match!513) (Else!513) (Error!513) (Case!513) (If!513) (Extends!513) (Abstract!513) (Class!513) (Val!513) (DelimiterValue!1026 (del!573 List!2789)) (KeywordValue!519 (value!18284 List!2789)) (CommentValue!1026 (value!18285 List!2789)) (WhitespaceValue!1026 (value!18286 List!2789)) (IndentationValue!513 (value!18287 List!2789)) (String!3644) (Int32!513) (Broken!2566 (value!18288 List!2789)) (Boolean!514) (Unit!2291) (OperatorValue!516 (op!573 List!2789)) (IdentifierValue!1026 (value!18289 List!2789)) (IdentifierValue!1027 (value!18290 List!2789)) (WhitespaceValue!1027 (value!18291 List!2789)) (True!1026) (False!1026) (Broken!2567 (value!18292 List!2789)) (Broken!2568 (value!18293 List!2789)) (True!1027) (RightBrace!513) (RightBracket!513) (Colon!513) (Null!513) (Comma!513) (LeftBracket!513) (False!1027) (LeftBrace!513) (ImaginaryLiteralValue!513 (text!4037 List!2789)) (StringLiteralValue!1539 (value!18294 List!2789)) (EOFValue!513 (value!18295 List!2789)) (IdentValue!513 (value!18296 List!2789)) (DelimiterValue!1027 (value!18297 List!2789)) (DedentValue!513 (value!18298 List!2789)) (NewLineValue!513 (value!18299 List!2789)) (IntegerValue!1539 (value!18300 (_ BitVec 32)) (text!4038 List!2789)) (IntegerValue!1540 (value!18301 Int) (text!4039 List!2789)) (Times!513) (Or!513) (Equal!513) (Minus!513) (Broken!2569 (value!18302 List!2789)) (And!513) (Div!513) (LessEqual!513) (Mod!513) (Concat!1228) (Not!513) (Plus!513) (SpaceValue!513 (value!18303 List!2789)) (IntegerValue!1541 (value!18304 Int) (text!4040 List!2789)) (StringLiteralValue!1540 (text!4041 List!2789)) (FloatLiteralValue!1027 (text!4042 List!2789)) (BytesLiteralValue!513 (value!18305 List!2789)) (CommentValue!1027 (value!18306 List!2789)) (StringLiteralValue!1541 (value!18307 List!2789)) (ErrorTokenValue!513 (msg!574 List!2789)) )
))
(declare-datatypes ((C!2352 0))(
  ( (C!2353 (val!1062 Int)) )
))
(declare-datatypes ((List!2790 0))(
  ( (Nil!2780) (Cons!2780 (h!8177 C!2352) (t!26056 List!2790)) )
))
(declare-datatypes ((IArray!1609 0))(
  ( (IArray!1610 (innerList!862 List!2790)) )
))
(declare-datatypes ((Conc!804 0))(
  ( (Node!804 (left!2096 Conc!804) (right!2426 Conc!804) (csize!1838 Int) (cheight!1015 Int)) (Leaf!1389 (xs!3399 IArray!1609) (csize!1839 Int)) (Empty!804) )
))
(declare-datatypes ((BalanceConc!1616 0))(
  ( (BalanceConc!1617 (c!32383 Conc!804)) )
))
(declare-datatypes ((TokenValueInjection!798 0))(
  ( (TokenValueInjection!799 (toValue!1146 Int) (toChars!1005 Int)) )
))
(declare-datatypes ((Regex!715 0))(
  ( (ElementMatch!715 (c!32384 C!2352)) (Concat!1229 (regOne!1942 Regex!715) (regTwo!1942 Regex!715)) (EmptyExpr!715) (Star!715 (reg!1044 Regex!715)) (EmptyLang!715) (Union!715 (regOne!1943 Regex!715) (regTwo!1943 Regex!715)) )
))
(declare-datatypes ((String!3645 0))(
  ( (String!3646 (value!18308 String)) )
))
(declare-datatypes ((Rule!782 0))(
  ( (Rule!783 (regex!491 Regex!715) (tag!669 String!3645) (isSeparator!491 Bool) (transformation!491 TokenValueInjection!798)) )
))
(declare-datatypes ((Token!726 0))(
  ( (Token!727 (value!18309 TokenValue!513) (rule!998 Rule!782) (size!2337 Int) (originalCharacters!534 List!2790)) )
))
(declare-fun separatorToken!170 () Token!726)

(declare-datatypes ((LexerInterface!377 0))(
  ( (LexerInterfaceExt!374 (__x!2514 Int)) (Lexer!375) )
))
(declare-fun thiss!17480 () LexerInterface!377)

(declare-datatypes ((List!2791 0))(
  ( (Nil!2781) (Cons!2781 (h!8178 Rule!782) (t!26057 List!2791)) )
))
(declare-fun rules!1920 () List!2791)

(declare-fun rulesProduceIndividualToken!126 (LexerInterface!377 List!2791 Token!726) Bool)

(assert (=> b!161853 (= res!73369 (rulesProduceIndividualToken!126 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!161854 () Bool)

(declare-fun res!73371 () Bool)

(assert (=> b!161854 (=> (not res!73371) (not e!97429))))

(assert (=> b!161854 (= res!73371 (isSeparator!491 (rule!998 separatorToken!170)))))

(declare-fun b!161855 () Bool)

(declare-fun e!97446 () Bool)

(assert (=> b!161855 (= e!97429 e!97446)))

(declare-fun res!73373 () Bool)

(assert (=> b!161855 (=> (not res!73373) (not e!97446))))

(declare-fun lt!48989 () List!2790)

(declare-fun lt!48985 () List!2790)

(assert (=> b!161855 (= res!73373 (= lt!48989 lt!48985))))

(declare-datatypes ((List!2792 0))(
  ( (Nil!2782) (Cons!2782 (h!8179 Token!726) (t!26058 List!2792)) )
))
(declare-datatypes ((IArray!1611 0))(
  ( (IArray!1612 (innerList!863 List!2792)) )
))
(declare-datatypes ((Conc!805 0))(
  ( (Node!805 (left!2097 Conc!805) (right!2427 Conc!805) (csize!1840 Int) (cheight!1016 Int)) (Leaf!1390 (xs!3400 IArray!1611) (csize!1841 Int)) (Empty!805) )
))
(declare-datatypes ((BalanceConc!1618 0))(
  ( (BalanceConc!1619 (c!32385 Conc!805)) )
))
(declare-fun lt!48986 () BalanceConc!1618)

(declare-fun list!1001 (BalanceConc!1616) List!2790)

(declare-fun printWithSeparatorTokenWhenNeededRec!60 (LexerInterface!377 List!2791 BalanceConc!1618 Token!726 Int) BalanceConc!1616)

(assert (=> b!161855 (= lt!48985 (list!1001 (printWithSeparatorTokenWhenNeededRec!60 thiss!17480 rules!1920 lt!48986 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2792)

(declare-fun printWithSeparatorTokenWhenNeededList!70 (LexerInterface!377 List!2791 List!2792 Token!726) List!2790)

(assert (=> b!161855 (= lt!48989 (printWithSeparatorTokenWhenNeededList!70 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!161856 () Bool)

(declare-fun e!97434 () Bool)

(declare-fun e!97436 () Bool)

(declare-fun tp!82045 () Bool)

(declare-fun inv!3596 (String!3645) Bool)

(declare-fun inv!3599 (TokenValueInjection!798) Bool)

(assert (=> b!161856 (= e!97436 (and tp!82045 (inv!3596 (tag!669 (rule!998 separatorToken!170))) (inv!3599 (transformation!491 (rule!998 separatorToken!170))) e!97434))))

(declare-fun b!161857 () Bool)

(declare-fun e!97428 () Bool)

(declare-fun e!97438 () Bool)

(declare-fun tp!82043 () Bool)

(assert (=> b!161857 (= e!97428 (and e!97438 tp!82043))))

(declare-fun res!73370 () Bool)

(declare-fun e!97440 () Bool)

(assert (=> start!17474 (=> (not res!73370) (not e!97440))))

(get-info :version)

(assert (=> start!17474 (= res!73370 ((_ is Lexer!375) thiss!17480))))

(assert (=> start!17474 e!97440))

(assert (=> start!17474 true))

(assert (=> start!17474 e!97428))

(declare-fun e!97430 () Bool)

(declare-fun inv!3600 (Token!726) Bool)

(assert (=> start!17474 (and (inv!3600 separatorToken!170) e!97430)))

(declare-fun e!97443 () Bool)

(assert (=> start!17474 e!97443))

(declare-fun e!97431 () Bool)

(declare-fun b!161858 () Bool)

(declare-fun tp!82048 () Bool)

(declare-fun e!97447 () Bool)

(declare-fun inv!21 (TokenValue!513) Bool)

(assert (=> b!161858 (= e!97447 (and (inv!21 (value!18309 (h!8179 tokens!465))) e!97431 tp!82048))))

(declare-fun b!161859 () Bool)

(declare-fun res!73374 () Bool)

(assert (=> b!161859 (=> (not res!73374) (not e!97440))))

(declare-fun rulesInvariant!343 (LexerInterface!377 List!2791) Bool)

(assert (=> b!161859 (= res!73374 (rulesInvariant!343 thiss!17480 rules!1920))))

(declare-fun e!97433 () Bool)

(assert (=> b!161860 (= e!97433 (and tp!82049 tp!82041))))

(declare-fun b!161861 () Bool)

(declare-fun tp!82044 () Bool)

(assert (=> b!161861 (= e!97443 (and (inv!3600 (h!8179 tokens!465)) e!97447 tp!82044))))

(declare-fun tp!82042 () Bool)

(declare-fun e!97442 () Bool)

(declare-fun b!161862 () Bool)

(assert (=> b!161862 (= e!97431 (and tp!82042 (inv!3596 (tag!669 (rule!998 (h!8179 tokens!465)))) (inv!3599 (transformation!491 (rule!998 (h!8179 tokens!465)))) e!97442))))

(declare-fun b!161863 () Bool)

(declare-fun res!73363 () Bool)

(assert (=> b!161863 (=> (not res!73363) (not e!97429))))

(declare-fun lambda!4424 () Int)

(declare-fun forall!517 (List!2792 Int) Bool)

(assert (=> b!161863 (= res!73363 (forall!517 tokens!465 lambda!4424))))

(declare-fun b!161864 () Bool)

(declare-fun e!97435 () Bool)

(assert (=> b!161864 (= e!97435 true)))

(declare-fun lt!48993 () List!2790)

(declare-fun printList!61 (LexerInterface!377 List!2792) List!2790)

(assert (=> b!161864 (= lt!48993 (printList!61 thiss!17480 (Cons!2782 (h!8179 tokens!465) Nil!2782)))))

(declare-fun lt!48984 () List!2790)

(declare-fun lt!48990 () BalanceConc!1616)

(assert (=> b!161864 (= lt!48984 (list!1001 lt!48990))))

(declare-fun lt!48982 () BalanceConc!1618)

(declare-fun printTailRec!71 (LexerInterface!377 BalanceConc!1618 Int BalanceConc!1616) BalanceConc!1616)

(assert (=> b!161864 (= lt!48990 (printTailRec!71 thiss!17480 lt!48982 0 (BalanceConc!1617 Empty!804)))))

(declare-fun print!108 (LexerInterface!377 BalanceConc!1618) BalanceConc!1616)

(assert (=> b!161864 (= lt!48990 (print!108 thiss!17480 lt!48982))))

(declare-fun singletonSeq!43 (Token!726) BalanceConc!1618)

(assert (=> b!161864 (= lt!48982 (singletonSeq!43 (h!8179 tokens!465)))))

(declare-fun b!161865 () Bool)

(declare-fun res!73367 () Bool)

(assert (=> b!161865 (=> res!73367 e!97435)))

(declare-fun e!97445 () Bool)

(assert (=> b!161865 (= res!73367 e!97445)))

(declare-fun res!73365 () Bool)

(assert (=> b!161865 (=> (not res!73365) (not e!97445))))

(declare-fun lt!48992 () List!2790)

(assert (=> b!161865 (= res!73365 (not (= lt!48989 lt!48992)))))

(declare-fun b!161866 () Bool)

(assert (=> b!161866 (= e!97440 e!97429)))

(declare-fun res!73364 () Bool)

(assert (=> b!161866 (=> (not res!73364) (not e!97429))))

(declare-fun rulesProduceEachTokenIndividually!169 (LexerInterface!377 List!2791 BalanceConc!1618) Bool)

(assert (=> b!161866 (= res!73364 (rulesProduceEachTokenIndividually!169 thiss!17480 rules!1920 lt!48986))))

(declare-fun seqFromList!359 (List!2792) BalanceConc!1618)

(assert (=> b!161866 (= lt!48986 (seqFromList!359 tokens!465))))

(declare-fun b!161867 () Bool)

(assert (=> b!161867 (= e!97446 (not e!97435))))

(declare-fun res!73376 () Bool)

(assert (=> b!161867 (=> res!73376 e!97435)))

(declare-fun lt!48988 () List!2790)

(assert (=> b!161867 (= res!73376 (not (= lt!48988 (list!1001 (printWithSeparatorTokenWhenNeededRec!60 thiss!17480 rules!1920 (seqFromList!359 (t!26058 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!48983 () List!2790)

(assert (=> b!161867 (= lt!48983 lt!48992)))

(declare-fun lt!48987 () List!2790)

(declare-fun lt!48994 () List!2790)

(declare-fun ++!620 (List!2790 List!2790) List!2790)

(assert (=> b!161867 (= lt!48992 (++!620 lt!48987 lt!48994))))

(declare-fun lt!48981 () List!2790)

(assert (=> b!161867 (= lt!48983 (++!620 (++!620 lt!48987 lt!48981) lt!48988))))

(declare-datatypes ((Unit!2292 0))(
  ( (Unit!2293) )
))
(declare-fun lt!48991 () Unit!2292)

(declare-fun lemmaConcatAssociativity!172 (List!2790 List!2790 List!2790) Unit!2292)

(assert (=> b!161867 (= lt!48991 (lemmaConcatAssociativity!172 lt!48987 lt!48981 lt!48988))))

(declare-fun charsOf!146 (Token!726) BalanceConc!1616)

(assert (=> b!161867 (= lt!48987 (list!1001 (charsOf!146 (h!8179 tokens!465))))))

(assert (=> b!161867 (= lt!48994 (++!620 lt!48981 lt!48988))))

(assert (=> b!161867 (= lt!48988 (printWithSeparatorTokenWhenNeededList!70 thiss!17480 rules!1920 (t!26058 tokens!465) separatorToken!170))))

(assert (=> b!161867 (= lt!48981 (list!1001 (charsOf!146 separatorToken!170)))))

(declare-fun b!161868 () Bool)

(declare-fun res!73368 () Bool)

(assert (=> b!161868 (=> (not res!73368) (not e!97446))))

(declare-fun seqFromList!360 (List!2790) BalanceConc!1616)

(assert (=> b!161868 (= res!73368 (= (list!1001 (seqFromList!360 lt!48989)) lt!48985))))

(declare-fun b!161869 () Bool)

(declare-fun res!73375 () Bool)

(assert (=> b!161869 (=> (not res!73375) (not e!97429))))

(declare-fun sepAndNonSepRulesDisjointChars!80 (List!2791 List!2791) Bool)

(assert (=> b!161869 (= res!73375 (sepAndNonSepRulesDisjointChars!80 rules!1920 rules!1920))))

(assert (=> b!161870 (= e!97442 (and tp!82051 tp!82053))))

(declare-fun b!161871 () Bool)

(declare-fun res!73366 () Bool)

(assert (=> b!161871 (=> (not res!73366) (not e!97429))))

(assert (=> b!161871 (= res!73366 ((_ is Cons!2782) tokens!465))))

(declare-fun b!161872 () Bool)

(declare-fun res!73372 () Bool)

(assert (=> b!161872 (=> (not res!73372) (not e!97440))))

(declare-fun isEmpty!1126 (List!2791) Bool)

(assert (=> b!161872 (= res!73372 (not (isEmpty!1126 rules!1920)))))

(declare-fun b!161873 () Bool)

(declare-fun tp!82046 () Bool)

(assert (=> b!161873 (= e!97438 (and tp!82046 (inv!3596 (tag!669 (h!8178 rules!1920))) (inv!3599 (transformation!491 (h!8178 rules!1920))) e!97433))))

(declare-fun b!161874 () Bool)

(assert (=> b!161874 (= e!97445 (not (= lt!48989 (++!620 lt!48987 lt!48988))))))

(assert (=> b!161875 (= e!97434 (and tp!82052 tp!82047))))

(declare-fun b!161876 () Bool)

(declare-fun tp!82050 () Bool)

(assert (=> b!161876 (= e!97430 (and (inv!21 (value!18309 separatorToken!170)) e!97436 tp!82050))))

(assert (= (and start!17474 res!73370) b!161872))

(assert (= (and b!161872 res!73372) b!161859))

(assert (= (and b!161859 res!73374) b!161866))

(assert (= (and b!161866 res!73364) b!161853))

(assert (= (and b!161853 res!73369) b!161854))

(assert (= (and b!161854 res!73371) b!161863))

(assert (= (and b!161863 res!73363) b!161869))

(assert (= (and b!161869 res!73375) b!161871))

(assert (= (and b!161871 res!73366) b!161855))

(assert (= (and b!161855 res!73373) b!161868))

(assert (= (and b!161868 res!73368) b!161867))

(assert (= (and b!161867 (not res!73376)) b!161865))

(assert (= (and b!161865 res!73365) b!161874))

(assert (= (and b!161865 (not res!73367)) b!161864))

(assert (= b!161873 b!161860))

(assert (= b!161857 b!161873))

(assert (= (and start!17474 ((_ is Cons!2781) rules!1920)) b!161857))

(assert (= b!161856 b!161875))

(assert (= b!161876 b!161856))

(assert (= start!17474 b!161876))

(assert (= b!161862 b!161870))

(assert (= b!161858 b!161862))

(assert (= b!161861 b!161858))

(assert (= (and start!17474 ((_ is Cons!2782) tokens!465)) b!161861))

(declare-fun m!151721 () Bool)

(assert (=> b!161874 m!151721))

(declare-fun m!151723 () Bool)

(assert (=> start!17474 m!151723))

(declare-fun m!151725 () Bool)

(assert (=> b!161873 m!151725))

(declare-fun m!151727 () Bool)

(assert (=> b!161873 m!151727))

(declare-fun m!151729 () Bool)

(assert (=> b!161869 m!151729))

(declare-fun m!151731 () Bool)

(assert (=> b!161859 m!151731))

(declare-fun m!151733 () Bool)

(assert (=> b!161867 m!151733))

(declare-fun m!151735 () Bool)

(assert (=> b!161867 m!151735))

(declare-fun m!151737 () Bool)

(assert (=> b!161867 m!151737))

(declare-fun m!151739 () Bool)

(assert (=> b!161867 m!151739))

(assert (=> b!161867 m!151737))

(declare-fun m!151741 () Bool)

(assert (=> b!161867 m!151741))

(declare-fun m!151743 () Bool)

(assert (=> b!161867 m!151743))

(declare-fun m!151745 () Bool)

(assert (=> b!161867 m!151745))

(assert (=> b!161867 m!151743))

(assert (=> b!161867 m!151733))

(declare-fun m!151747 () Bool)

(assert (=> b!161867 m!151747))

(declare-fun m!151749 () Bool)

(assert (=> b!161867 m!151749))

(declare-fun m!151751 () Bool)

(assert (=> b!161867 m!151751))

(declare-fun m!151753 () Bool)

(assert (=> b!161867 m!151753))

(assert (=> b!161867 m!151749))

(declare-fun m!151755 () Bool)

(assert (=> b!161867 m!151755))

(assert (=> b!161867 m!151747))

(declare-fun m!151757 () Bool)

(assert (=> b!161867 m!151757))

(declare-fun m!151759 () Bool)

(assert (=> b!161858 m!151759))

(declare-fun m!151761 () Bool)

(assert (=> b!161853 m!151761))

(declare-fun m!151763 () Bool)

(assert (=> b!161868 m!151763))

(assert (=> b!161868 m!151763))

(declare-fun m!151765 () Bool)

(assert (=> b!161868 m!151765))

(declare-fun m!151767 () Bool)

(assert (=> b!161862 m!151767))

(declare-fun m!151769 () Bool)

(assert (=> b!161862 m!151769))

(declare-fun m!151771 () Bool)

(assert (=> b!161864 m!151771))

(declare-fun m!151773 () Bool)

(assert (=> b!161864 m!151773))

(declare-fun m!151775 () Bool)

(assert (=> b!161864 m!151775))

(declare-fun m!151777 () Bool)

(assert (=> b!161864 m!151777))

(declare-fun m!151779 () Bool)

(assert (=> b!161864 m!151779))

(declare-fun m!151781 () Bool)

(assert (=> b!161872 m!151781))

(declare-fun m!151783 () Bool)

(assert (=> b!161856 m!151783))

(declare-fun m!151785 () Bool)

(assert (=> b!161856 m!151785))

(declare-fun m!151787 () Bool)

(assert (=> b!161855 m!151787))

(assert (=> b!161855 m!151787))

(declare-fun m!151789 () Bool)

(assert (=> b!161855 m!151789))

(declare-fun m!151791 () Bool)

(assert (=> b!161855 m!151791))

(declare-fun m!151793 () Bool)

(assert (=> b!161876 m!151793))

(declare-fun m!151795 () Bool)

(assert (=> b!161866 m!151795))

(declare-fun m!151797 () Bool)

(assert (=> b!161866 m!151797))

(declare-fun m!151799 () Bool)

(assert (=> b!161861 m!151799))

(declare-fun m!151801 () Bool)

(assert (=> b!161863 m!151801))

(check-sat b_and!10107 (not b!161855) (not b!161853) (not b_next!6115) (not b!161861) (not b!161858) (not b_next!6113) (not b_next!6121) (not b!161859) (not b!161857) b_and!10101 (not start!17474) (not b!161864) (not b!161856) b_and!10097 b_and!10099 (not b!161873) (not b!161863) (not b!161866) (not b_next!6119) (not b!161867) (not b!161872) (not b_next!6117) (not b!161862) (not b!161874) (not b!161876) b_and!10105 b_and!10103 (not b!161869) (not b!161868) (not b_next!6123))
(check-sat b_and!10107 (not b_next!6115) (not b_next!6119) (not b_next!6113) (not b_next!6117) (not b_next!6121) b_and!10101 b_and!10105 b_and!10103 (not b_next!6123) b_and!10097 b_and!10099)
