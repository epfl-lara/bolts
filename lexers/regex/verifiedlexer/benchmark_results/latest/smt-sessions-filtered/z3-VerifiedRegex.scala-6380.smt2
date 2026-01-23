; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331986 () Bool)

(assert start!331986)

(declare-fun b!3580897 () Bool)

(declare-fun b_free!91945 () Bool)

(declare-fun b_next!92649 () Bool)

(assert (=> b!3580897 (= b_free!91945 (not b_next!92649))))

(declare-fun tp!1096136 () Bool)

(declare-fun b_and!258311 () Bool)

(assert (=> b!3580897 (= tp!1096136 b_and!258311)))

(declare-fun b_free!91947 () Bool)

(declare-fun b_next!92651 () Bool)

(assert (=> b!3580897 (= b_free!91947 (not b_next!92651))))

(declare-fun tp!1096130 () Bool)

(declare-fun b_and!258313 () Bool)

(assert (=> b!3580897 (= tp!1096130 b_and!258313)))

(declare-fun b!3580885 () Bool)

(declare-fun b_free!91949 () Bool)

(declare-fun b_next!92653 () Bool)

(assert (=> b!3580885 (= b_free!91949 (not b_next!92653))))

(declare-fun tp!1096133 () Bool)

(declare-fun b_and!258315 () Bool)

(assert (=> b!3580885 (= tp!1096133 b_and!258315)))

(declare-fun b_free!91951 () Bool)

(declare-fun b_next!92655 () Bool)

(assert (=> b!3580885 (= b_free!91951 (not b_next!92655))))

(declare-fun tp!1096125 () Bool)

(declare-fun b_and!258317 () Bool)

(assert (=> b!3580885 (= tp!1096125 b_and!258317)))

(declare-fun b!3580884 () Bool)

(declare-fun b_free!91953 () Bool)

(declare-fun b_next!92657 () Bool)

(assert (=> b!3580884 (= b_free!91953 (not b_next!92657))))

(declare-fun tp!1096128 () Bool)

(declare-fun b_and!258319 () Bool)

(assert (=> b!3580884 (= tp!1096128 b_and!258319)))

(declare-fun b_free!91955 () Bool)

(declare-fun b_next!92659 () Bool)

(assert (=> b!3580884 (= b_free!91955 (not b_next!92659))))

(declare-fun tp!1096127 () Bool)

(declare-fun b_and!258321 () Bool)

(assert (=> b!3580884 (= tp!1096127 b_and!258321)))

(declare-fun b!3580894 () Bool)

(declare-fun b_free!91957 () Bool)

(declare-fun b_next!92661 () Bool)

(assert (=> b!3580894 (= b_free!91957 (not b_next!92661))))

(declare-fun tp!1096138 () Bool)

(declare-fun b_and!258323 () Bool)

(assert (=> b!3580894 (= tp!1096138 b_and!258323)))

(declare-fun b_free!91959 () Bool)

(declare-fun b_next!92663 () Bool)

(assert (=> b!3580894 (= b_free!91959 (not b_next!92663))))

(declare-fun tp!1096131 () Bool)

(declare-fun b_and!258325 () Bool)

(assert (=> b!3580894 (= tp!1096131 b_and!258325)))

(declare-fun b!3580883 () Bool)

(declare-fun e!2215554 () Bool)

(declare-fun e!2215556 () Bool)

(declare-fun tp!1096135 () Bool)

(assert (=> b!3580883 (= e!2215554 (and e!2215556 tp!1096135))))

(declare-fun res!1444736 () Bool)

(declare-fun e!2215551 () Bool)

(assert (=> start!331986 (=> (not res!1444736) (not e!2215551))))

(declare-datatypes ((LexerInterface!5129 0))(
  ( (LexerInterfaceExt!5126 (__x!23757 Int)) (Lexer!5127) )
))
(declare-fun thiss!23823 () LexerInterface!5129)

(get-info :version)

(assert (=> start!331986 (= res!1444736 ((_ is Lexer!5127) thiss!23823))))

(assert (=> start!331986 e!2215551))

(assert (=> start!331986 e!2215554))

(assert (=> start!331986 true))

(declare-datatypes ((List!37737 0))(
  ( (Nil!37613) (Cons!37613 (h!43033 (_ BitVec 16)) (t!290286 List!37737)) )
))
(declare-datatypes ((TokenValue!5770 0))(
  ( (FloatLiteralValue!11540 (text!40835 List!37737)) (TokenValueExt!5769 (__x!23758 Int)) (Broken!28850 (value!178324 List!37737)) (Object!5893) (End!5770) (Def!5770) (Underscore!5770) (Match!5770) (Else!5770) (Error!5770) (Case!5770) (If!5770) (Extends!5770) (Abstract!5770) (Class!5770) (Val!5770) (DelimiterValue!11540 (del!5830 List!37737)) (KeywordValue!5776 (value!178325 List!37737)) (CommentValue!11540 (value!178326 List!37737)) (WhitespaceValue!11540 (value!178327 List!37737)) (IndentationValue!5770 (value!178328 List!37737)) (String!42183) (Int32!5770) (Broken!28851 (value!178329 List!37737)) (Boolean!5771) (Unit!53620) (OperatorValue!5773 (op!5830 List!37737)) (IdentifierValue!11540 (value!178330 List!37737)) (IdentifierValue!11541 (value!178331 List!37737)) (WhitespaceValue!11541 (value!178332 List!37737)) (True!11540) (False!11540) (Broken!28852 (value!178333 List!37737)) (Broken!28853 (value!178334 List!37737)) (True!11541) (RightBrace!5770) (RightBracket!5770) (Colon!5770) (Null!5770) (Comma!5770) (LeftBracket!5770) (False!11541) (LeftBrace!5770) (ImaginaryLiteralValue!5770 (text!40836 List!37737)) (StringLiteralValue!17310 (value!178335 List!37737)) (EOFValue!5770 (value!178336 List!37737)) (IdentValue!5770 (value!178337 List!37737)) (DelimiterValue!11541 (value!178338 List!37737)) (DedentValue!5770 (value!178339 List!37737)) (NewLineValue!5770 (value!178340 List!37737)) (IntegerValue!17310 (value!178341 (_ BitVec 32)) (text!40837 List!37737)) (IntegerValue!17311 (value!178342 Int) (text!40838 List!37737)) (Times!5770) (Or!5770) (Equal!5770) (Minus!5770) (Broken!28854 (value!178343 List!37737)) (And!5770) (Div!5770) (LessEqual!5770) (Mod!5770) (Concat!16069) (Not!5770) (Plus!5770) (SpaceValue!5770 (value!178344 List!37737)) (IntegerValue!17312 (value!178345 Int) (text!40839 List!37737)) (StringLiteralValue!17311 (text!40840 List!37737)) (FloatLiteralValue!11541 (text!40841 List!37737)) (BytesLiteralValue!5770 (value!178346 List!37737)) (CommentValue!11541 (value!178347 List!37737)) (StringLiteralValue!17312 (value!178348 List!37737)) (ErrorTokenValue!5770 (msg!5831 List!37737)) )
))
(declare-datatypes ((String!42184 0))(
  ( (String!42185 (value!178349 String)) )
))
(declare-datatypes ((C!20784 0))(
  ( (C!20785 (val!12440 Int)) )
))
(declare-datatypes ((Regex!10299 0))(
  ( (ElementMatch!10299 (c!620477 C!20784)) (Concat!16070 (regOne!21110 Regex!10299) (regTwo!21110 Regex!10299)) (EmptyExpr!10299) (Star!10299 (reg!10628 Regex!10299)) (EmptyLang!10299) (Union!10299 (regOne!21111 Regex!10299) (regTwo!21111 Regex!10299)) )
))
(declare-datatypes ((List!37738 0))(
  ( (Nil!37614) (Cons!37614 (h!43034 C!20784) (t!290287 List!37738)) )
))
(declare-datatypes ((IArray!22881 0))(
  ( (IArray!22882 (innerList!11498 List!37738)) )
))
(declare-datatypes ((Conc!11438 0))(
  ( (Node!11438 (left!29414 Conc!11438) (right!29744 Conc!11438) (csize!23106 Int) (cheight!11649 Int)) (Leaf!17819 (xs!14640 IArray!22881) (csize!23107 Int)) (Empty!11438) )
))
(declare-datatypes ((BalanceConc!22490 0))(
  ( (BalanceConc!22491 (c!620478 Conc!11438)) )
))
(declare-datatypes ((TokenValueInjection!10968 0))(
  ( (TokenValueInjection!10969 (toValue!7816 Int) (toChars!7675 Int)) )
))
(declare-datatypes ((Rule!10880 0))(
  ( (Rule!10881 (regex!5540 Regex!10299) (tag!6206 String!42184) (isSeparator!5540 Bool) (transformation!5540 TokenValueInjection!10968)) )
))
(declare-datatypes ((Token!10446 0))(
  ( (Token!10447 (value!178350 TokenValue!5770) (rule!8252 Rule!10880) (size!28674 Int) (originalCharacters!6254 List!37738)) )
))
(declare-fun token!511 () Token!10446)

(declare-fun e!2215561 () Bool)

(declare-fun inv!50915 (Token!10446) Bool)

(assert (=> start!331986 (and (inv!50915 token!511) e!2215561)))

(declare-fun e!2215560 () Bool)

(assert (=> start!331986 e!2215560))

(declare-fun e!2215558 () Bool)

(assert (=> start!331986 e!2215558))

(declare-fun e!2215553 () Bool)

(assert (=> b!3580884 (= e!2215553 (and tp!1096128 tp!1096127))))

(declare-fun e!2215567 () Bool)

(assert (=> b!3580885 (= e!2215567 (and tp!1096133 tp!1096125))))

(declare-fun b!3580886 () Bool)

(declare-fun res!1444731 () Bool)

(assert (=> b!3580886 (=> (not res!1444731) (not e!2215551))))

(declare-fun anOtherTypeRule!33 () Rule!10880)

(declare-fun rule!403 () Rule!10880)

(assert (=> b!3580886 (= res!1444731 (not (= (isSeparator!5540 anOtherTypeRule!33) (isSeparator!5540 rule!403))))))

(declare-fun b!3580887 () Bool)

(declare-fun res!1444735 () Bool)

(assert (=> b!3580887 (=> (not res!1444735) (not e!2215551))))

(declare-datatypes ((List!37739 0))(
  ( (Nil!37615) (Cons!37615 (h!43035 Rule!10880) (t!290288 List!37739)) )
))
(declare-fun rules!3307 () List!37739)

(declare-fun rulesInvariant!4526 (LexerInterface!5129 List!37739) Bool)

(assert (=> b!3580887 (= res!1444735 (rulesInvariant!4526 thiss!23823 rules!3307))))

(declare-fun b!3580888 () Bool)

(declare-fun res!1444728 () Bool)

(declare-fun e!2215562 () Bool)

(assert (=> b!3580888 (=> (not res!1444728) (not e!2215562))))

(assert (=> b!3580888 (= res!1444728 (= (rule!8252 token!511) rule!403))))

(declare-fun b!3580889 () Bool)

(declare-fun e!2215565 () Bool)

(declare-fun tp!1096137 () Bool)

(declare-fun inv!50912 (String!42184) Bool)

(declare-fun inv!50916 (TokenValueInjection!10968) Bool)

(assert (=> b!3580889 (= e!2215560 (and tp!1096137 (inv!50912 (tag!6206 rule!403)) (inv!50916 (transformation!5540 rule!403)) e!2215565))))

(declare-fun b!3580890 () Bool)

(declare-fun tp!1096134 () Bool)

(declare-fun e!2215563 () Bool)

(assert (=> b!3580890 (= e!2215558 (and tp!1096134 (inv!50912 (tag!6206 anOtherTypeRule!33)) (inv!50916 (transformation!5540 anOtherTypeRule!33)) e!2215563))))

(declare-fun b!3580891 () Bool)

(declare-fun res!1444729 () Bool)

(assert (=> b!3580891 (=> (not res!1444729) (not e!2215551))))

(declare-fun isEmpty!22142 (List!37739) Bool)

(assert (=> b!3580891 (= res!1444729 (not (isEmpty!22142 rules!3307)))))

(declare-fun tp!1096126 () Bool)

(declare-fun b!3580892 () Bool)

(declare-fun e!2215559 () Bool)

(assert (=> b!3580892 (= e!2215559 (and tp!1096126 (inv!50912 (tag!6206 (rule!8252 token!511))) (inv!50916 (transformation!5540 (rule!8252 token!511))) e!2215567))))

(declare-fun b!3580893 () Bool)

(assert (=> b!3580893 (= e!2215562 false)))

(declare-fun lt!1228548 () Bool)

(declare-fun rulesValidInductive!1923 (LexerInterface!5129 List!37739) Bool)

(assert (=> b!3580893 (= lt!1228548 (rulesValidInductive!1923 thiss!23823 rules!3307))))

(assert (=> b!3580894 (= e!2215565 (and tp!1096138 tp!1096131))))

(declare-fun b!3580895 () Bool)

(declare-fun e!2215557 () Bool)

(assert (=> b!3580895 (= e!2215551 e!2215557)))

(declare-fun res!1444727 () Bool)

(assert (=> b!3580895 (=> (not res!1444727) (not e!2215557))))

(declare-datatypes ((tuple2!37522 0))(
  ( (tuple2!37523 (_1!21895 Token!10446) (_2!21895 List!37738)) )
))
(declare-datatypes ((Option!7728 0))(
  ( (None!7727) (Some!7727 (v!37369 tuple2!37522)) )
))
(declare-fun lt!1228550 () Option!7728)

(declare-fun isDefined!5962 (Option!7728) Bool)

(assert (=> b!3580895 (= res!1444727 (isDefined!5962 lt!1228550))))

(declare-fun maxPrefix!2663 (LexerInterface!5129 List!37739 List!37738) Option!7728)

(declare-fun list!13814 (BalanceConc!22490) List!37738)

(declare-fun charsOf!3554 (Token!10446) BalanceConc!22490)

(assert (=> b!3580895 (= lt!1228550 (maxPrefix!2663 thiss!23823 rules!3307 (list!13814 (charsOf!3554 token!511))))))

(declare-fun b!3580896 () Bool)

(declare-fun tp!1096132 () Bool)

(assert (=> b!3580896 (= e!2215556 (and tp!1096132 (inv!50912 (tag!6206 (h!43035 rules!3307))) (inv!50916 (transformation!5540 (h!43035 rules!3307))) e!2215553))))

(assert (=> b!3580897 (= e!2215563 (and tp!1096136 tp!1096130))))

(declare-fun b!3580898 () Bool)

(declare-fun res!1444732 () Bool)

(assert (=> b!3580898 (=> (not res!1444732) (not e!2215551))))

(declare-fun contains!7144 (List!37739 Rule!10880) Bool)

(assert (=> b!3580898 (= res!1444732 (contains!7144 rules!3307 rule!403))))

(declare-fun b!3580899 () Bool)

(declare-fun tp!1096129 () Bool)

(declare-fun inv!21 (TokenValue!5770) Bool)

(assert (=> b!3580899 (= e!2215561 (and (inv!21 (value!178350 token!511)) e!2215559 tp!1096129))))

(declare-fun b!3580900 () Bool)

(declare-fun res!1444734 () Bool)

(assert (=> b!3580900 (=> (not res!1444734) (not e!2215551))))

(assert (=> b!3580900 (= res!1444734 (contains!7144 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3580901 () Bool)

(declare-fun res!1444730 () Bool)

(assert (=> b!3580901 (=> (not res!1444730) (not e!2215562))))

(declare-fun lt!1228549 () tuple2!37522)

(declare-fun isEmpty!22143 (List!37738) Bool)

(assert (=> b!3580901 (= res!1444730 (isEmpty!22143 (_2!21895 lt!1228549)))))

(declare-fun b!3580902 () Bool)

(assert (=> b!3580902 (= e!2215557 e!2215562)))

(declare-fun res!1444733 () Bool)

(assert (=> b!3580902 (=> (not res!1444733) (not e!2215562))))

(assert (=> b!3580902 (= res!1444733 (= (_1!21895 lt!1228549) token!511))))

(declare-fun get!12110 (Option!7728) tuple2!37522)

(assert (=> b!3580902 (= lt!1228549 (get!12110 lt!1228550))))

(assert (= (and start!331986 res!1444736) b!3580891))

(assert (= (and b!3580891 res!1444729) b!3580887))

(assert (= (and b!3580887 res!1444735) b!3580898))

(assert (= (and b!3580898 res!1444732) b!3580900))

(assert (= (and b!3580900 res!1444734) b!3580886))

(assert (= (and b!3580886 res!1444731) b!3580895))

(assert (= (and b!3580895 res!1444727) b!3580902))

(assert (= (and b!3580902 res!1444733) b!3580901))

(assert (= (and b!3580901 res!1444730) b!3580888))

(assert (= (and b!3580888 res!1444728) b!3580893))

(assert (= b!3580896 b!3580884))

(assert (= b!3580883 b!3580896))

(assert (= (and start!331986 ((_ is Cons!37615) rules!3307)) b!3580883))

(assert (= b!3580892 b!3580885))

(assert (= b!3580899 b!3580892))

(assert (= start!331986 b!3580899))

(assert (= b!3580889 b!3580894))

(assert (= start!331986 b!3580889))

(assert (= b!3580890 b!3580897))

(assert (= start!331986 b!3580890))

(declare-fun m!4074707 () Bool)

(assert (=> b!3580887 m!4074707))

(declare-fun m!4074709 () Bool)

(assert (=> b!3580889 m!4074709))

(declare-fun m!4074711 () Bool)

(assert (=> b!3580889 m!4074711))

(declare-fun m!4074713 () Bool)

(assert (=> start!331986 m!4074713))

(declare-fun m!4074715 () Bool)

(assert (=> b!3580899 m!4074715))

(declare-fun m!4074717 () Bool)

(assert (=> b!3580900 m!4074717))

(declare-fun m!4074719 () Bool)

(assert (=> b!3580896 m!4074719))

(declare-fun m!4074721 () Bool)

(assert (=> b!3580896 m!4074721))

(declare-fun m!4074723 () Bool)

(assert (=> b!3580891 m!4074723))

(declare-fun m!4074725 () Bool)

(assert (=> b!3580902 m!4074725))

(declare-fun m!4074727 () Bool)

(assert (=> b!3580893 m!4074727))

(declare-fun m!4074729 () Bool)

(assert (=> b!3580898 m!4074729))

(declare-fun m!4074731 () Bool)

(assert (=> b!3580892 m!4074731))

(declare-fun m!4074733 () Bool)

(assert (=> b!3580892 m!4074733))

(declare-fun m!4074735 () Bool)

(assert (=> b!3580901 m!4074735))

(declare-fun m!4074737 () Bool)

(assert (=> b!3580890 m!4074737))

(declare-fun m!4074739 () Bool)

(assert (=> b!3580890 m!4074739))

(declare-fun m!4074741 () Bool)

(assert (=> b!3580895 m!4074741))

(declare-fun m!4074743 () Bool)

(assert (=> b!3580895 m!4074743))

(assert (=> b!3580895 m!4074743))

(declare-fun m!4074745 () Bool)

(assert (=> b!3580895 m!4074745))

(assert (=> b!3580895 m!4074745))

(declare-fun m!4074747 () Bool)

(assert (=> b!3580895 m!4074747))

(check-sat b_and!258315 (not b_next!92649) (not b_next!92651) (not b!3580887) (not b!3580902) (not b!3580896) (not b!3580895) (not b!3580900) (not b_next!92659) (not b!3580891) (not b!3580892) b_and!258323 b_and!258317 (not b_next!92657) (not start!331986) (not b!3580901) (not b_next!92655) b_and!258313 (not b_next!92663) (not b!3580893) b_and!258311 (not b!3580889) b_and!258325 (not b_next!92653) b_and!258321 (not b!3580883) (not b!3580899) (not b!3580898) (not b!3580890) (not b_next!92661) b_and!258319)
(check-sat b_and!258315 (not b_next!92649) (not b_next!92651) b_and!258311 (not b_next!92659) b_and!258321 b_and!258323 b_and!258317 (not b_next!92657) (not b_next!92655) b_and!258313 (not b_next!92663) b_and!258325 (not b_next!92653) (not b_next!92661) b_and!258319)
