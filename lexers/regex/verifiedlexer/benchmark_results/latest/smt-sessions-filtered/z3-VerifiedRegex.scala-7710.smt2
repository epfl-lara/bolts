; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405234 () Bool)

(assert start!405234)

(declare-fun b!4235063 () Bool)

(declare-fun b_free!125047 () Bool)

(declare-fun b_next!125751 () Bool)

(assert (=> b!4235063 (= b_free!125047 (not b_next!125751))))

(declare-fun tp!1296820 () Bool)

(declare-fun b_and!334397 () Bool)

(assert (=> b!4235063 (= tp!1296820 b_and!334397)))

(declare-fun b_free!125049 () Bool)

(declare-fun b_next!125753 () Bool)

(assert (=> b!4235063 (= b_free!125049 (not b_next!125753))))

(declare-fun tp!1296811 () Bool)

(declare-fun b_and!334399 () Bool)

(assert (=> b!4235063 (= tp!1296811 b_and!334399)))

(declare-fun b!4235050 () Bool)

(declare-fun b_free!125051 () Bool)

(declare-fun b_next!125755 () Bool)

(assert (=> b!4235050 (= b_free!125051 (not b_next!125755))))

(declare-fun tp!1296812 () Bool)

(declare-fun b_and!334401 () Bool)

(assert (=> b!4235050 (= tp!1296812 b_and!334401)))

(declare-fun b_free!125053 () Bool)

(declare-fun b_next!125757 () Bool)

(assert (=> b!4235050 (= b_free!125053 (not b_next!125757))))

(declare-fun tp!1296819 () Bool)

(declare-fun b_and!334403 () Bool)

(assert (=> b!4235050 (= tp!1296819 b_and!334403)))

(declare-fun b!4235060 () Bool)

(declare-fun b_free!125055 () Bool)

(declare-fun b_next!125759 () Bool)

(assert (=> b!4235060 (= b_free!125055 (not b_next!125759))))

(declare-fun tp!1296816 () Bool)

(declare-fun b_and!334405 () Bool)

(assert (=> b!4235060 (= tp!1296816 b_and!334405)))

(declare-fun b_free!125057 () Bool)

(declare-fun b_next!125761 () Bool)

(assert (=> b!4235060 (= b_free!125057 (not b_next!125761))))

(declare-fun tp!1296810 () Bool)

(declare-fun b_and!334407 () Bool)

(assert (=> b!4235060 (= tp!1296810 b_and!334407)))

(declare-fun res!1741890 () Bool)

(declare-fun e!2629662 () Bool)

(assert (=> start!405234 (=> (not res!1741890) (not e!2629662))))

(declare-datatypes ((LexerInterface!7499 0))(
  ( (LexerInterfaceExt!7496 (__x!28491 Int)) (Lexer!7497) )
))
(declare-fun thiss!21540 () LexerInterface!7499)

(get-info :version)

(assert (=> start!405234 (= res!1741890 ((_ is Lexer!7497) thiss!21540))))

(assert (=> start!405234 e!2629662))

(assert (=> start!405234 true))

(declare-fun e!2629648 () Bool)

(assert (=> start!405234 e!2629648))

(declare-fun e!2629649 () Bool)

(assert (=> start!405234 e!2629649))

(declare-fun e!2629650 () Bool)

(assert (=> start!405234 e!2629650))

(declare-fun e!2629653 () Bool)

(assert (=> start!405234 e!2629653))

(declare-fun e!2629655 () Bool)

(assert (=> start!405234 e!2629655))

(declare-fun e!2629666 () Bool)

(assert (=> start!405234 e!2629666))

(declare-fun e!2629654 () Bool)

(assert (=> b!4235050 (= e!2629654 (and tp!1296812 tp!1296819))))

(declare-fun b!4235051 () Bool)

(declare-fun e!2629657 () Bool)

(declare-datatypes ((List!46908 0))(
  ( (Nil!46784) (Cons!46784 (h!52204 (_ BitVec 16)) (t!349611 List!46908)) )
))
(declare-datatypes ((TokenValue!8134 0))(
  ( (FloatLiteralValue!16268 (text!57383 List!46908)) (TokenValueExt!8133 (__x!28492 Int)) (Broken!40670 (value!245774 List!46908)) (Object!8257) (End!8134) (Def!8134) (Underscore!8134) (Match!8134) (Else!8134) (Error!8134) (Case!8134) (If!8134) (Extends!8134) (Abstract!8134) (Class!8134) (Val!8134) (DelimiterValue!16268 (del!8194 List!46908)) (KeywordValue!8140 (value!245775 List!46908)) (CommentValue!16268 (value!245776 List!46908)) (WhitespaceValue!16268 (value!245777 List!46908)) (IndentationValue!8134 (value!245778 List!46908)) (String!54599) (Int32!8134) (Broken!40671 (value!245779 List!46908)) (Boolean!8135) (Unit!65918) (OperatorValue!8137 (op!8194 List!46908)) (IdentifierValue!16268 (value!245780 List!46908)) (IdentifierValue!16269 (value!245781 List!46908)) (WhitespaceValue!16269 (value!245782 List!46908)) (True!16268) (False!16268) (Broken!40672 (value!245783 List!46908)) (Broken!40673 (value!245784 List!46908)) (True!16269) (RightBrace!8134) (RightBracket!8134) (Colon!8134) (Null!8134) (Comma!8134) (LeftBracket!8134) (False!16269) (LeftBrace!8134) (ImaginaryLiteralValue!8134 (text!57384 List!46908)) (StringLiteralValue!24402 (value!245785 List!46908)) (EOFValue!8134 (value!245786 List!46908)) (IdentValue!8134 (value!245787 List!46908)) (DelimiterValue!16269 (value!245788 List!46908)) (DedentValue!8134 (value!245789 List!46908)) (NewLineValue!8134 (value!245790 List!46908)) (IntegerValue!24402 (value!245791 (_ BitVec 32)) (text!57385 List!46908)) (IntegerValue!24403 (value!245792 Int) (text!57386 List!46908)) (Times!8134) (Or!8134) (Equal!8134) (Minus!8134) (Broken!40674 (value!245793 List!46908)) (And!8134) (Div!8134) (LessEqual!8134) (Mod!8134) (Concat!20943) (Not!8134) (Plus!8134) (SpaceValue!8134 (value!245794 List!46908)) (IntegerValue!24404 (value!245795 Int) (text!57387 List!46908)) (StringLiteralValue!24403 (text!57388 List!46908)) (FloatLiteralValue!16269 (text!57389 List!46908)) (BytesLiteralValue!8134 (value!245796 List!46908)) (CommentValue!16269 (value!245797 List!46908)) (StringLiteralValue!24404 (value!245798 List!46908)) (ErrorTokenValue!8134 (msg!8195 List!46908)) )
))
(declare-datatypes ((C!25816 0))(
  ( (C!25817 (val!15098 Int)) )
))
(declare-datatypes ((Regex!12809 0))(
  ( (ElementMatch!12809 (c!719874 C!25816)) (Concat!20944 (regOne!26130 Regex!12809) (regTwo!26130 Regex!12809)) (EmptyExpr!12809) (Star!12809 (reg!13138 Regex!12809)) (EmptyLang!12809) (Union!12809 (regOne!26131 Regex!12809) (regTwo!26131 Regex!12809)) )
))
(declare-datatypes ((String!54600 0))(
  ( (String!54601 (value!245799 String)) )
))
(declare-datatypes ((List!46909 0))(
  ( (Nil!46785) (Cons!46785 (h!52205 C!25816) (t!349612 List!46909)) )
))
(declare-datatypes ((IArray!28235 0))(
  ( (IArray!28236 (innerList!14175 List!46909)) )
))
(declare-datatypes ((Conc!14115 0))(
  ( (Node!14115 (left!34797 Conc!14115) (right!35127 Conc!14115) (csize!28460 Int) (cheight!14326 Int)) (Leaf!21826 (xs!17421 IArray!28235) (csize!28461 Int)) (Empty!14115) )
))
(declare-datatypes ((BalanceConc!27824 0))(
  ( (BalanceConc!27825 (c!719875 Conc!14115)) )
))
(declare-datatypes ((TokenValueInjection!15696 0))(
  ( (TokenValueInjection!15697 (toValue!10644 Int) (toChars!10503 Int)) )
))
(declare-datatypes ((Rule!15608 0))(
  ( (Rule!15609 (regex!7904 Regex!12809) (tag!8768 String!54600) (isSeparator!7904 Bool) (transformation!7904 TokenValueInjection!15696)) )
))
(declare-datatypes ((Token!14434 0))(
  ( (Token!14435 (value!245800 TokenValue!8134) (rule!11028 Rule!15608) (size!34276 Int) (originalCharacters!8248 List!46909)) )
))
(declare-datatypes ((List!46910 0))(
  ( (Nil!46786) (Cons!46786 (h!52206 Token!14434) (t!349613 List!46910)) )
))
(declare-fun addTokens!17 () List!46910)

(declare-fun e!2629668 () Bool)

(declare-fun tp!1296817 () Bool)

(declare-fun inv!21 (TokenValue!8134) Bool)

(assert (=> b!4235051 (= e!2629668 (and (inv!21 (value!245800 (h!52206 addTokens!17))) e!2629657 tp!1296817))))

(declare-fun e!2629665 () Bool)

(declare-fun tp!1296818 () Bool)

(declare-fun b!4235052 () Bool)

(declare-fun e!2629659 () Bool)

(declare-fun tokens!581 () List!46910)

(assert (=> b!4235052 (= e!2629665 (and (inv!21 (value!245800 (h!52206 tokens!581))) e!2629659 tp!1296818))))

(declare-fun b!4235053 () Bool)

(declare-fun res!1741889 () Bool)

(assert (=> b!4235053 (=> (not res!1741889) (not e!2629662))))

(declare-fun longerInput!51 () List!46909)

(declare-fun isEmpty!27639 (List!46909) Bool)

(assert (=> b!4235053 (= res!1741889 (not (isEmpty!27639 longerInput!51)))))

(declare-fun b!4235054 () Bool)

(declare-fun res!1741892 () Bool)

(declare-fun e!2629651 () Bool)

(assert (=> b!4235054 (=> (not res!1741892) (not e!2629651))))

(declare-fun isEmpty!27640 (List!46910) Bool)

(assert (=> b!4235054 (= res!1741892 (isEmpty!27640 addTokens!17))))

(declare-fun b!4235055 () Bool)

(declare-fun e!2629664 () Bool)

(declare-fun tp!1296814 () Bool)

(declare-fun inv!61506 (String!54600) Bool)

(declare-fun inv!61509 (TokenValueInjection!15696) Bool)

(assert (=> b!4235055 (= e!2629657 (and tp!1296814 (inv!61506 (tag!8768 (rule!11028 (h!52206 addTokens!17)))) (inv!61509 (transformation!7904 (rule!11028 (h!52206 addTokens!17)))) e!2629664))))

(declare-fun b!4235056 () Bool)

(declare-fun e!2629652 () Bool)

(declare-fun tp!1296813 () Bool)

(assert (=> b!4235056 (= e!2629648 (and e!2629652 tp!1296813))))

(declare-fun b!4235057 () Bool)

(declare-fun tp_is_empty!22609 () Bool)

(declare-fun tp!1296821 () Bool)

(assert (=> b!4235057 (= e!2629653 (and tp_is_empty!22609 tp!1296821))))

(declare-fun tp!1296826 () Bool)

(declare-fun b!4235058 () Bool)

(declare-fun inv!61510 (Token!14434) Bool)

(assert (=> b!4235058 (= e!2629655 (and (inv!61510 (h!52206 tokens!581)) e!2629665 tp!1296826))))

(declare-fun b!4235059 () Bool)

(declare-fun tp!1296823 () Bool)

(assert (=> b!4235059 (= e!2629666 (and tp_is_empty!22609 tp!1296823))))

(assert (=> b!4235060 (= e!2629664 (and tp!1296816 tp!1296810))))

(declare-fun b!4235061 () Bool)

(declare-fun res!1741886 () Bool)

(assert (=> b!4235061 (=> (not res!1741886) (not e!2629662))))

(declare-fun shorterInput!51 () List!46909)

(declare-fun size!34277 (List!46909) Int)

(assert (=> b!4235061 (= res!1741886 (> (size!34277 longerInput!51) (size!34277 shorterInput!51)))))

(declare-fun b!4235062 () Bool)

(declare-fun res!1741887 () Bool)

(assert (=> b!4235062 (=> (not res!1741887) (not e!2629662))))

(declare-datatypes ((List!46911 0))(
  ( (Nil!46787) (Cons!46787 (h!52207 Rule!15608) (t!349614 List!46911)) )
))
(declare-fun rules!2932 () List!46911)

(declare-fun rulesInvariant!6610 (LexerInterface!7499 List!46911) Bool)

(assert (=> b!4235062 (= res!1741887 (rulesInvariant!6610 thiss!21540 rules!2932))))

(declare-fun e!2629658 () Bool)

(assert (=> b!4235063 (= e!2629658 (and tp!1296820 tp!1296811))))

(declare-fun b!4235064 () Bool)

(declare-fun res!1741891 () Bool)

(assert (=> b!4235064 (=> (not res!1741891) (not e!2629662))))

(declare-fun isEmpty!27641 (List!46911) Bool)

(assert (=> b!4235064 (= res!1741891 (not (isEmpty!27641 rules!2932)))))

(declare-fun b!4235065 () Bool)

(assert (=> b!4235065 (= e!2629651 (not true))))

(declare-datatypes ((tuple2!44376 0))(
  ( (tuple2!44377 (_1!25322 List!46910) (_2!25322 List!46909)) )
))
(declare-fun lt!1505703 () tuple2!44376)

(declare-fun lexList!2005 (LexerInterface!7499 List!46911 List!46909) tuple2!44376)

(assert (=> b!4235065 (not (= (lexList!2005 thiss!21540 rules!2932 shorterInput!51) lt!1505703))))

(declare-datatypes ((Unit!65919 0))(
  ( (Unit!65920) )
))
(declare-fun lt!1505704 () Unit!65919)

(declare-fun suffix!1262 () List!46909)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!170 (LexerInterface!7499 List!46911 List!46909 List!46909 List!46910 List!46909) Unit!65919)

(assert (=> b!4235065 (= lt!1505704 (lemmaLexWithSmallerInputCannotProduceSameResults!170 thiss!21540 rules!2932 longerInput!51 shorterInput!51 tokens!581 suffix!1262))))

(declare-fun b!4235066 () Bool)

(declare-fun tp!1296824 () Bool)

(assert (=> b!4235066 (= e!2629650 (and tp_is_empty!22609 tp!1296824))))

(declare-fun b!4235067 () Bool)

(declare-fun tp!1296822 () Bool)

(assert (=> b!4235067 (= e!2629652 (and tp!1296822 (inv!61506 (tag!8768 (h!52207 rules!2932))) (inv!61509 (transformation!7904 (h!52207 rules!2932))) e!2629654))))

(declare-fun tp!1296815 () Bool)

(declare-fun b!4235068 () Bool)

(assert (=> b!4235068 (= e!2629649 (and (inv!61510 (h!52206 addTokens!17)) e!2629668 tp!1296815))))

(declare-fun tp!1296825 () Bool)

(declare-fun b!4235069 () Bool)

(assert (=> b!4235069 (= e!2629659 (and tp!1296825 (inv!61506 (tag!8768 (rule!11028 (h!52206 tokens!581)))) (inv!61509 (transformation!7904 (rule!11028 (h!52206 tokens!581)))) e!2629658))))

(declare-fun b!4235070 () Bool)

(assert (=> b!4235070 (= e!2629662 e!2629651)))

(declare-fun res!1741888 () Bool)

(assert (=> b!4235070 (=> (not res!1741888) (not e!2629651))))

(assert (=> b!4235070 (= res!1741888 (= (lexList!2005 thiss!21540 rules!2932 longerInput!51) lt!1505703))))

(assert (=> b!4235070 (= lt!1505703 (tuple2!44377 tokens!581 suffix!1262))))

(assert (= (and start!405234 res!1741890) b!4235064))

(assert (= (and b!4235064 res!1741891) b!4235062))

(assert (= (and b!4235062 res!1741887) b!4235053))

(assert (= (and b!4235053 res!1741889) b!4235061))

(assert (= (and b!4235061 res!1741886) b!4235070))

(assert (= (and b!4235070 res!1741888) b!4235054))

(assert (= (and b!4235054 res!1741892) b!4235065))

(assert (= b!4235067 b!4235050))

(assert (= b!4235056 b!4235067))

(assert (= (and start!405234 ((_ is Cons!46787) rules!2932)) b!4235056))

(assert (= b!4235055 b!4235060))

(assert (= b!4235051 b!4235055))

(assert (= b!4235068 b!4235051))

(assert (= (and start!405234 ((_ is Cons!46786) addTokens!17)) b!4235068))

(assert (= (and start!405234 ((_ is Cons!46785) shorterInput!51)) b!4235066))

(assert (= (and start!405234 ((_ is Cons!46785) suffix!1262)) b!4235057))

(assert (= b!4235069 b!4235063))

(assert (= b!4235052 b!4235069))

(assert (= b!4235058 b!4235052))

(assert (= (and start!405234 ((_ is Cons!46786) tokens!581)) b!4235058))

(assert (= (and start!405234 ((_ is Cons!46785) longerInput!51)) b!4235059))

(declare-fun m!4820941 () Bool)

(assert (=> b!4235064 m!4820941))

(declare-fun m!4820943 () Bool)

(assert (=> b!4235067 m!4820943))

(declare-fun m!4820945 () Bool)

(assert (=> b!4235067 m!4820945))

(declare-fun m!4820947 () Bool)

(assert (=> b!4235053 m!4820947))

(declare-fun m!4820949 () Bool)

(assert (=> b!4235051 m!4820949))

(declare-fun m!4820951 () Bool)

(assert (=> b!4235069 m!4820951))

(declare-fun m!4820953 () Bool)

(assert (=> b!4235069 m!4820953))

(declare-fun m!4820955 () Bool)

(assert (=> b!4235061 m!4820955))

(declare-fun m!4820957 () Bool)

(assert (=> b!4235061 m!4820957))

(declare-fun m!4820959 () Bool)

(assert (=> b!4235055 m!4820959))

(declare-fun m!4820961 () Bool)

(assert (=> b!4235055 m!4820961))

(declare-fun m!4820963 () Bool)

(assert (=> b!4235052 m!4820963))

(declare-fun m!4820965 () Bool)

(assert (=> b!4235065 m!4820965))

(declare-fun m!4820967 () Bool)

(assert (=> b!4235065 m!4820967))

(declare-fun m!4820969 () Bool)

(assert (=> b!4235070 m!4820969))

(declare-fun m!4820971 () Bool)

(assert (=> b!4235058 m!4820971))

(declare-fun m!4820973 () Bool)

(assert (=> b!4235068 m!4820973))

(declare-fun m!4820975 () Bool)

(assert (=> b!4235054 m!4820975))

(declare-fun m!4820977 () Bool)

(assert (=> b!4235062 m!4820977))

(check-sat (not b!4235069) (not b!4235056) (not b_next!125755) (not b!4235066) (not b!4235061) b_and!334405 (not b!4235054) (not b!4235070) b_and!334407 (not b!4235057) (not b_next!125751) (not b!4235051) b_and!334397 (not b!4235068) (not b!4235053) (not b!4235064) b_and!334403 (not b!4235058) (not b!4235059) (not b_next!125759) (not b!4235052) (not b!4235062) (not b_next!125753) (not b!4235065) b_and!334401 (not b!4235067) (not b!4235055) (not b_next!125757) (not b_next!125761) b_and!334399 tp_is_empty!22609)
(check-sat (not b_next!125755) (not b_next!125751) b_and!334405 b_and!334397 b_and!334403 b_and!334407 (not b_next!125759) (not b_next!125753) b_and!334401 b_and!334399 (not b_next!125757) (not b_next!125761))
