; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334174 () Bool)

(assert start!334174)

(declare-fun b!3597037 () Bool)

(declare-fun b_free!92977 () Bool)

(declare-fun b_next!93681 () Bool)

(assert (=> b!3597037 (= b_free!92977 (not b_next!93681))))

(declare-fun tp!1100655 () Bool)

(declare-fun b_and!260867 () Bool)

(assert (=> b!3597037 (= tp!1100655 b_and!260867)))

(declare-fun b_free!92979 () Bool)

(declare-fun b_next!93683 () Bool)

(assert (=> b!3597037 (= b_free!92979 (not b_next!93683))))

(declare-fun tp!1100651 () Bool)

(declare-fun b_and!260869 () Bool)

(assert (=> b!3597037 (= tp!1100651 b_and!260869)))

(declare-fun b!3597043 () Bool)

(declare-fun b_free!92981 () Bool)

(declare-fun b_next!93685 () Bool)

(assert (=> b!3597043 (= b_free!92981 (not b_next!93685))))

(declare-fun tp!1100652 () Bool)

(declare-fun b_and!260871 () Bool)

(assert (=> b!3597043 (= tp!1100652 b_and!260871)))

(declare-fun b_free!92983 () Bool)

(declare-fun b_next!93687 () Bool)

(assert (=> b!3597043 (= b_free!92983 (not b_next!93687))))

(declare-fun tp!1100643 () Bool)

(declare-fun b_and!260873 () Bool)

(assert (=> b!3597043 (= tp!1100643 b_and!260873)))

(declare-fun b!3597056 () Bool)

(declare-fun b_free!92985 () Bool)

(declare-fun b_next!93689 () Bool)

(assert (=> b!3597056 (= b_free!92985 (not b_next!93689))))

(declare-fun tp!1100653 () Bool)

(declare-fun b_and!260875 () Bool)

(assert (=> b!3597056 (= tp!1100653 b_and!260875)))

(declare-fun b_free!92987 () Bool)

(declare-fun b_next!93691 () Bool)

(assert (=> b!3597056 (= b_free!92987 (not b_next!93691))))

(declare-fun tp!1100649 () Bool)

(declare-fun b_and!260877 () Bool)

(assert (=> b!3597056 (= tp!1100649 b_and!260877)))

(declare-fun b!3597051 () Bool)

(declare-fun b_free!92989 () Bool)

(declare-fun b_next!93693 () Bool)

(assert (=> b!3597051 (= b_free!92989 (not b_next!93693))))

(declare-fun tp!1100642 () Bool)

(declare-fun b_and!260879 () Bool)

(assert (=> b!3597051 (= tp!1100642 b_and!260879)))

(declare-fun b_free!92991 () Bool)

(declare-fun b_next!93695 () Bool)

(assert (=> b!3597051 (= b_free!92991 (not b_next!93695))))

(declare-fun tp!1100656 () Bool)

(declare-fun b_and!260881 () Bool)

(assert (=> b!3597051 (= tp!1100656 b_and!260881)))

(declare-fun b!3597029 () Bool)

(declare-fun res!1453134 () Bool)

(declare-fun e!2225839 () Bool)

(assert (=> b!3597029 (=> res!1453134 e!2225839)))

(declare-datatypes ((List!37955 0))(
  ( (Nil!37831) (Cons!37831 (h!43251 (_ BitVec 16)) (t!291806 List!37955)) )
))
(declare-datatypes ((TokenValue!5826 0))(
  ( (FloatLiteralValue!11652 (text!41227 List!37955)) (TokenValueExt!5825 (__x!23869 Int)) (Broken!29130 (value!179920 List!37955)) (Object!5949) (End!5826) (Def!5826) (Underscore!5826) (Match!5826) (Else!5826) (Error!5826) (Case!5826) (If!5826) (Extends!5826) (Abstract!5826) (Class!5826) (Val!5826) (DelimiterValue!11652 (del!5886 List!37955)) (KeywordValue!5832 (value!179921 List!37955)) (CommentValue!11652 (value!179922 List!37955)) (WhitespaceValue!11652 (value!179923 List!37955)) (IndentationValue!5826 (value!179924 List!37955)) (String!42463) (Int32!5826) (Broken!29131 (value!179925 List!37955)) (Boolean!5827) (Unit!53842) (OperatorValue!5829 (op!5886 List!37955)) (IdentifierValue!11652 (value!179926 List!37955)) (IdentifierValue!11653 (value!179927 List!37955)) (WhitespaceValue!11653 (value!179928 List!37955)) (True!11652) (False!11652) (Broken!29132 (value!179929 List!37955)) (Broken!29133 (value!179930 List!37955)) (True!11653) (RightBrace!5826) (RightBracket!5826) (Colon!5826) (Null!5826) (Comma!5826) (LeftBracket!5826) (False!11653) (LeftBrace!5826) (ImaginaryLiteralValue!5826 (text!41228 List!37955)) (StringLiteralValue!17478 (value!179931 List!37955)) (EOFValue!5826 (value!179932 List!37955)) (IdentValue!5826 (value!179933 List!37955)) (DelimiterValue!11653 (value!179934 List!37955)) (DedentValue!5826 (value!179935 List!37955)) (NewLineValue!5826 (value!179936 List!37955)) (IntegerValue!17478 (value!179937 (_ BitVec 32)) (text!41229 List!37955)) (IntegerValue!17479 (value!179938 Int) (text!41230 List!37955)) (Times!5826) (Or!5826) (Equal!5826) (Minus!5826) (Broken!29134 (value!179939 List!37955)) (And!5826) (Div!5826) (LessEqual!5826) (Mod!5826) (Concat!16181) (Not!5826) (Plus!5826) (SpaceValue!5826 (value!179940 List!37955)) (IntegerValue!17480 (value!179941 Int) (text!41231 List!37955)) (StringLiteralValue!17479 (text!41232 List!37955)) (FloatLiteralValue!11653 (text!41233 List!37955)) (BytesLiteralValue!5826 (value!179942 List!37955)) (CommentValue!11653 (value!179943 List!37955)) (StringLiteralValue!17480 (value!179944 List!37955)) (ErrorTokenValue!5826 (msg!5887 List!37955)) )
))
(declare-datatypes ((C!20896 0))(
  ( (C!20897 (val!12496 Int)) )
))
(declare-datatypes ((Regex!10355 0))(
  ( (ElementMatch!10355 (c!622664 C!20896)) (Concat!16182 (regOne!21222 Regex!10355) (regTwo!21222 Regex!10355)) (EmptyExpr!10355) (Star!10355 (reg!10684 Regex!10355)) (EmptyLang!10355) (Union!10355 (regOne!21223 Regex!10355) (regTwo!21223 Regex!10355)) )
))
(declare-datatypes ((String!42464 0))(
  ( (String!42465 (value!179945 String)) )
))
(declare-datatypes ((List!37956 0))(
  ( (Nil!37832) (Cons!37832 (h!43252 C!20896) (t!291807 List!37956)) )
))
(declare-datatypes ((IArray!23035 0))(
  ( (IArray!23036 (innerList!11575 List!37956)) )
))
(declare-datatypes ((Conc!11515 0))(
  ( (Node!11515 (left!29559 Conc!11515) (right!29889 Conc!11515) (csize!23260 Int) (cheight!11726 Int)) (Leaf!17924 (xs!14717 IArray!23035) (csize!23261 Int)) (Empty!11515) )
))
(declare-datatypes ((BalanceConc!22644 0))(
  ( (BalanceConc!22645 (c!622665 Conc!11515)) )
))
(declare-datatypes ((TokenValueInjection!11080 0))(
  ( (TokenValueInjection!11081 (toValue!7880 Int) (toChars!7739 Int)) )
))
(declare-datatypes ((Rule!10992 0))(
  ( (Rule!10993 (regex!5596 Regex!10355) (tag!6280 String!42464) (isSeparator!5596 Bool) (transformation!5596 TokenValueInjection!11080)) )
))
(declare-datatypes ((Token!10558 0))(
  ( (Token!10559 (value!179946 TokenValue!5826) (rule!8324 Rule!10992) (size!28824 Int) (originalCharacters!6310 List!37956)) )
))
(declare-datatypes ((tuple2!37720 0))(
  ( (tuple2!37721 (_1!21994 Token!10558) (_2!21994 List!37956)) )
))
(declare-fun lt!1235066 () tuple2!37720)

(declare-fun lt!1235071 () List!37956)

(declare-fun matchR!4924 (Regex!10355 List!37956) Bool)

(assert (=> b!3597029 (= res!1453134 (not (matchR!4924 (regex!5596 (rule!8324 (_1!21994 lt!1235066))) lt!1235071)))))

(declare-fun e!2225846 () Bool)

(declare-fun b!3597031 () Bool)

(declare-fun tp!1100647 () Bool)

(declare-fun token!511 () Token!10558)

(declare-fun e!2225840 () Bool)

(declare-fun inv!21 (TokenValue!5826) Bool)

(assert (=> b!3597031 (= e!2225840 (and (inv!21 (value!179946 token!511)) e!2225846 tp!1100647))))

(declare-fun b!3597032 () Bool)

(declare-fun e!2225836 () Bool)

(declare-fun e!2225838 () Bool)

(assert (=> b!3597032 (= e!2225836 e!2225838)))

(declare-fun res!1453122 () Bool)

(assert (=> b!3597032 (=> res!1453122 e!2225838)))

(declare-fun lt!1235067 () List!37956)

(declare-fun lt!1235083 () C!20896)

(declare-fun contains!7255 (List!37956 C!20896) Bool)

(assert (=> b!3597032 (= res!1453122 (contains!7255 lt!1235067 lt!1235083))))

(declare-fun suffix!1395 () List!37956)

(declare-fun head!7532 (List!37956) C!20896)

(assert (=> b!3597032 (= lt!1235083 (head!7532 suffix!1395))))

(declare-fun rule!403 () Rule!10992)

(declare-fun usedCharacters!810 (Regex!10355) List!37956)

(assert (=> b!3597032 (= lt!1235067 (usedCharacters!810 (regex!5596 rule!403)))))

(declare-fun b!3597033 () Bool)

(declare-fun res!1453123 () Bool)

(declare-fun e!2225848 () Bool)

(assert (=> b!3597033 (=> res!1453123 e!2225848)))

(declare-fun validRegex!4733 (Regex!10355) Bool)

(assert (=> b!3597033 (= res!1453123 (not (validRegex!4733 (regex!5596 rule!403))))))

(declare-fun b!3597034 () Bool)

(declare-fun e!2225845 () Bool)

(declare-fun e!2225851 () Bool)

(declare-fun tp!1100648 () Bool)

(assert (=> b!3597034 (= e!2225845 (and e!2225851 tp!1100648))))

(declare-fun b!3597035 () Bool)

(declare-fun res!1453131 () Bool)

(declare-fun e!2225847 () Bool)

(assert (=> b!3597035 (=> (not res!1453131) (not e!2225847))))

(declare-datatypes ((List!37957 0))(
  ( (Nil!37833) (Cons!37833 (h!43253 Rule!10992) (t!291808 List!37957)) )
))
(declare-fun rules!3307 () List!37957)

(declare-fun anOtherTypeRule!33 () Rule!10992)

(declare-fun contains!7256 (List!37957 Rule!10992) Bool)

(assert (=> b!3597035 (= res!1453131 (contains!7256 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2225830 () Bool)

(declare-fun tp!1100644 () Bool)

(declare-fun b!3597036 () Bool)

(declare-fun inv!51180 (String!42464) Bool)

(declare-fun inv!51183 (TokenValueInjection!11080) Bool)

(assert (=> b!3597036 (= e!2225846 (and tp!1100644 (inv!51180 (tag!6280 (rule!8324 token!511))) (inv!51183 (transformation!5596 (rule!8324 token!511))) e!2225830))))

(assert (=> b!3597037 (= e!2225830 (and tp!1100655 tp!1100651))))

(declare-fun b!3597038 () Bool)

(declare-fun e!2225844 () Bool)

(assert (=> b!3597038 (= e!2225844 e!2225848)))

(declare-fun res!1453137 () Bool)

(assert (=> b!3597038 (=> res!1453137 e!2225848)))

(declare-fun lt!1235076 () C!20896)

(assert (=> b!3597038 (= res!1453137 (contains!7255 lt!1235067 lt!1235076))))

(assert (=> b!3597038 (= lt!1235076 (head!7532 lt!1235071))))

(declare-fun b!3597039 () Bool)

(declare-fun e!2225831 () Bool)

(declare-fun lt!1235059 () Rule!10992)

(assert (=> b!3597039 (= e!2225831 (= (rule!8324 (_1!21994 lt!1235066)) lt!1235059))))

(declare-fun tp!1100645 () Bool)

(declare-fun e!2225849 () Bool)

(declare-fun b!3597040 () Bool)

(assert (=> b!3597040 (= e!2225851 (and tp!1100645 (inv!51180 (tag!6280 (h!43253 rules!3307))) (inv!51183 (transformation!5596 (h!43253 rules!3307))) e!2225849))))

(declare-fun b!3597041 () Bool)

(declare-fun res!1453117 () Bool)

(assert (=> b!3597041 (=> res!1453117 e!2225836)))

(declare-fun isEmpty!22310 (List!37956) Bool)

(assert (=> b!3597041 (= res!1453117 (isEmpty!22310 suffix!1395))))

(declare-fun b!3597042 () Bool)

(declare-fun res!1453129 () Bool)

(assert (=> b!3597042 (=> (not res!1453129) (not e!2225847))))

(assert (=> b!3597042 (= res!1453129 (contains!7256 rules!3307 rule!403))))

(declare-fun e!2225837 () Bool)

(assert (=> b!3597043 (= e!2225837 (and tp!1100652 tp!1100643))))

(declare-fun b!3597044 () Bool)

(declare-fun e!2225853 () Bool)

(assert (=> b!3597044 (= e!2225853 (not e!2225836))))

(declare-fun res!1453115 () Bool)

(assert (=> b!3597044 (=> res!1453115 e!2225836)))

(declare-fun lt!1235081 () List!37956)

(assert (=> b!3597044 (= res!1453115 (not (matchR!4924 (regex!5596 rule!403) lt!1235081)))))

(declare-datatypes ((LexerInterface!5185 0))(
  ( (LexerInterfaceExt!5182 (__x!23870 Int)) (Lexer!5183) )
))
(declare-fun thiss!23823 () LexerInterface!5185)

(declare-fun ruleValid!1861 (LexerInterface!5185 Rule!10992) Bool)

(assert (=> b!3597044 (ruleValid!1861 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53843 0))(
  ( (Unit!53844) )
))
(declare-fun lt!1235070 () Unit!53843)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1016 (LexerInterface!5185 Rule!10992 List!37957) Unit!53843)

(assert (=> b!3597044 (= lt!1235070 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1016 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2225842 () Bool)

(declare-fun b!3597045 () Bool)

(declare-fun tp!1100650 () Bool)

(assert (=> b!3597045 (= e!2225842 (and tp!1100650 (inv!51180 (tag!6280 anOtherTypeRule!33)) (inv!51183 (transformation!5596 anOtherTypeRule!33)) e!2225837))))

(declare-fun res!1453128 () Bool)

(assert (=> start!334174 (=> (not res!1453128) (not e!2225847))))

(get-info :version)

(assert (=> start!334174 (= res!1453128 ((_ is Lexer!5183) thiss!23823))))

(assert (=> start!334174 e!2225847))

(assert (=> start!334174 e!2225845))

(declare-fun e!2225854 () Bool)

(assert (=> start!334174 e!2225854))

(assert (=> start!334174 true))

(declare-fun inv!51184 (Token!10558) Bool)

(assert (=> start!334174 (and (inv!51184 token!511) e!2225840)))

(declare-fun e!2225852 () Bool)

(assert (=> start!334174 e!2225852))

(assert (=> start!334174 e!2225842))

(declare-fun b!3597030 () Bool)

(declare-fun e!2225841 () Bool)

(assert (=> b!3597030 (= e!2225839 e!2225841)))

(declare-fun res!1453124 () Bool)

(assert (=> b!3597030 (=> res!1453124 e!2225841)))

(declare-fun lt!1235080 () BalanceConc!22644)

(declare-datatypes ((Option!7822 0))(
  ( (None!7821) (Some!7821 (v!37519 tuple2!37720)) )
))
(declare-fun lt!1235061 () Option!7822)

(declare-fun apply!9102 (TokenValueInjection!11080 BalanceConc!22644) TokenValue!5826)

(declare-fun size!28825 (BalanceConc!22644) Int)

(assert (=> b!3597030 (= res!1453124 (not (= lt!1235061 (Some!7821 (tuple2!37721 (Token!10559 (apply!9102 (transformation!5596 (rule!8324 (_1!21994 lt!1235066))) lt!1235080) (rule!8324 (_1!21994 lt!1235066)) (size!28825 lt!1235080) lt!1235071) (_2!21994 lt!1235066))))))))

(declare-fun lt!1235065 () Unit!53843)

(declare-fun lemmaCharactersSize!649 (Token!10558) Unit!53843)

(assert (=> b!3597030 (= lt!1235065 (lemmaCharactersSize!649 (_1!21994 lt!1235066)))))

(declare-fun lt!1235064 () Unit!53843)

(declare-fun lemmaEqSameImage!787 (TokenValueInjection!11080 BalanceConc!22644 BalanceConc!22644) Unit!53843)

(declare-fun seqFromList!4149 (List!37956) BalanceConc!22644)

(assert (=> b!3597030 (= lt!1235064 (lemmaEqSameImage!787 (transformation!5596 (rule!8324 (_1!21994 lt!1235066))) lt!1235080 (seqFromList!4149 (originalCharacters!6310 (_1!21994 lt!1235066)))))))

(declare-fun lt!1235073 () Unit!53843)

(declare-fun lemmaSemiInverse!1353 (TokenValueInjection!11080 BalanceConc!22644) Unit!53843)

(assert (=> b!3597030 (= lt!1235073 (lemmaSemiInverse!1353 (transformation!5596 (rule!8324 (_1!21994 lt!1235066))) lt!1235080))))

(declare-fun b!3597046 () Bool)

(declare-fun tp_is_empty!17793 () Bool)

(declare-fun tp!1100654 () Bool)

(assert (=> b!3597046 (= e!2225854 (and tp_is_empty!17793 tp!1100654))))

(declare-fun b!3597047 () Bool)

(declare-fun e!2225834 () Bool)

(assert (=> b!3597047 (= e!2225834 e!2225831)))

(declare-fun res!1453135 () Bool)

(assert (=> b!3597047 (=> (not res!1453135) (not e!2225831))))

(declare-fun list!13928 (BalanceConc!22644) List!37956)

(declare-fun charsOf!3610 (Token!10558) BalanceConc!22644)

(assert (=> b!3597047 (= res!1453135 (matchR!4924 (regex!5596 lt!1235059) (list!13928 (charsOf!3610 (_1!21994 lt!1235066)))))))

(declare-datatypes ((Option!7823 0))(
  ( (None!7822) (Some!7822 (v!37520 Rule!10992)) )
))
(declare-fun lt!1235074 () Option!7823)

(declare-fun get!12230 (Option!7823) Rule!10992)

(assert (=> b!3597047 (= lt!1235059 (get!12230 lt!1235074))))

(declare-fun b!3597048 () Bool)

(declare-fun tp!1100646 () Bool)

(declare-fun e!2225835 () Bool)

(assert (=> b!3597048 (= e!2225852 (and tp!1100646 (inv!51180 (tag!6280 rule!403)) (inv!51183 (transformation!5596 rule!403)) e!2225835))))

(declare-fun b!3597049 () Bool)

(assert (=> b!3597049 (= e!2225848 true)))

(declare-fun lt!1235072 () Bool)

(assert (=> b!3597049 (= lt!1235072 (contains!7255 lt!1235081 lt!1235076))))

(declare-fun b!3597050 () Bool)

(declare-fun e!2225828 () Bool)

(assert (=> b!3597050 (= e!2225828 e!2225853)))

(declare-fun res!1453132 () Bool)

(assert (=> b!3597050 (=> (not res!1453132) (not e!2225853))))

(declare-fun lt!1235085 () tuple2!37720)

(assert (=> b!3597050 (= res!1453132 (= (_1!21994 lt!1235085) token!511))))

(declare-fun lt!1235068 () Option!7822)

(declare-fun get!12231 (Option!7822) tuple2!37720)

(assert (=> b!3597050 (= lt!1235085 (get!12231 lt!1235068))))

(assert (=> b!3597051 (= e!2225835 (and tp!1100642 tp!1100656))))

(declare-fun b!3597052 () Bool)

(assert (=> b!3597052 (= e!2225847 e!2225828)))

(declare-fun res!1453125 () Bool)

(assert (=> b!3597052 (=> (not res!1453125) (not e!2225828))))

(declare-fun isDefined!6054 (Option!7822) Bool)

(assert (=> b!3597052 (= res!1453125 (isDefined!6054 lt!1235068))))

(declare-fun maxPrefix!2719 (LexerInterface!5185 List!37957 List!37956) Option!7822)

(assert (=> b!3597052 (= lt!1235068 (maxPrefix!2719 thiss!23823 rules!3307 lt!1235081))))

(assert (=> b!3597052 (= lt!1235081 (list!13928 (charsOf!3610 token!511)))))

(declare-fun b!3597053 () Bool)

(declare-fun res!1453116 () Bool)

(assert (=> b!3597053 (=> (not res!1453116) (not e!2225847))))

(declare-fun isEmpty!22311 (List!37957) Bool)

(assert (=> b!3597053 (= res!1453116 (not (isEmpty!22311 rules!3307)))))

(declare-fun b!3597054 () Bool)

(declare-fun res!1453136 () Bool)

(assert (=> b!3597054 (=> (not res!1453136) (not e!2225853))))

(assert (=> b!3597054 (= res!1453136 (= (rule!8324 token!511) rule!403))))

(declare-fun b!3597055 () Bool)

(declare-fun res!1453133 () Bool)

(assert (=> b!3597055 (=> res!1453133 e!2225838)))

(assert (=> b!3597055 (= res!1453133 (not (contains!7255 (usedCharacters!810 (regex!5596 anOtherTypeRule!33)) lt!1235083)))))

(assert (=> b!3597056 (= e!2225849 (and tp!1100653 tp!1100649))))

(declare-fun b!3597057 () Bool)

(declare-fun res!1453130 () Bool)

(assert (=> b!3597057 (=> (not res!1453130) (not e!2225853))))

(assert (=> b!3597057 (= res!1453130 (isEmpty!22310 (_2!21994 lt!1235085)))))

(declare-fun b!3597058 () Bool)

(declare-fun res!1453118 () Bool)

(assert (=> b!3597058 (=> (not res!1453118) (not e!2225847))))

(assert (=> b!3597058 (= res!1453118 (not (= (isSeparator!5596 anOtherTypeRule!33) (isSeparator!5596 rule!403))))))

(declare-fun b!3597059 () Bool)

(declare-fun res!1453121 () Bool)

(assert (=> b!3597059 (=> (not res!1453121) (not e!2225847))))

(declare-fun rulesInvariant!4582 (LexerInterface!5185 List!37957) Bool)

(assert (=> b!3597059 (= res!1453121 (rulesInvariant!4582 thiss!23823 rules!3307))))

(declare-fun b!3597060 () Bool)

(assert (=> b!3597060 (= e!2225841 e!2225844)))

(declare-fun res!1453119 () Bool)

(assert (=> b!3597060 (=> res!1453119 e!2225844)))

(declare-fun lt!1235060 () Option!7822)

(declare-fun lt!1235069 () List!37956)

(assert (=> b!3597060 (= res!1453119 (or (not (= lt!1235069 (_2!21994 lt!1235066))) (not (= lt!1235060 (Some!7821 (tuple2!37721 (_1!21994 lt!1235066) lt!1235069))))))))

(assert (=> b!3597060 (= (_2!21994 lt!1235066) lt!1235069)))

(declare-fun lt!1235079 () List!37956)

(declare-fun lt!1235078 () Unit!53843)

(declare-fun lemmaSamePrefixThenSameSuffix!1314 (List!37956 List!37956 List!37956 List!37956 List!37956) Unit!53843)

(assert (=> b!3597060 (= lt!1235078 (lemmaSamePrefixThenSameSuffix!1314 lt!1235071 (_2!21994 lt!1235066) lt!1235071 lt!1235069 lt!1235079))))

(declare-fun getSuffix!1534 (List!37956 List!37956) List!37956)

(assert (=> b!3597060 (= lt!1235069 (getSuffix!1534 lt!1235079 lt!1235071))))

(declare-fun lt!1235063 () Int)

(declare-fun lt!1235077 () TokenValue!5826)

(assert (=> b!3597060 (= lt!1235060 (Some!7821 (tuple2!37721 (Token!10559 lt!1235077 (rule!8324 (_1!21994 lt!1235066)) lt!1235063 lt!1235071) (_2!21994 lt!1235066))))))

(declare-fun maxPrefixOneRule!1863 (LexerInterface!5185 Rule!10992 List!37956) Option!7822)

(assert (=> b!3597060 (= lt!1235060 (maxPrefixOneRule!1863 thiss!23823 (rule!8324 (_1!21994 lt!1235066)) lt!1235079))))

(declare-fun size!28826 (List!37956) Int)

(assert (=> b!3597060 (= lt!1235063 (size!28826 lt!1235071))))

(assert (=> b!3597060 (= lt!1235077 (apply!9102 (transformation!5596 (rule!8324 (_1!21994 lt!1235066))) (seqFromList!4149 lt!1235071)))))

(declare-fun lt!1235062 () Unit!53843)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!935 (LexerInterface!5185 List!37957 List!37956 List!37956 List!37956 Rule!10992) Unit!53843)

(assert (=> b!3597060 (= lt!1235062 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!935 thiss!23823 rules!3307 lt!1235071 lt!1235079 (_2!21994 lt!1235066) (rule!8324 (_1!21994 lt!1235066))))))

(declare-fun b!3597061 () Bool)

(declare-fun res!1453127 () Bool)

(assert (=> b!3597061 (=> res!1453127 e!2225838)))

(declare-fun sepAndNonSepRulesDisjointChars!1766 (List!37957 List!37957) Bool)

(assert (=> b!3597061 (= res!1453127 (not (sepAndNonSepRulesDisjointChars!1766 rules!3307 rules!3307)))))

(declare-fun b!3597062 () Bool)

(assert (=> b!3597062 (= e!2225838 e!2225839)))

(declare-fun res!1453126 () Bool)

(assert (=> b!3597062 (=> res!1453126 e!2225839)))

(declare-fun isPrefix!2959 (List!37956 List!37956) Bool)

(assert (=> b!3597062 (= res!1453126 (not (isPrefix!2959 lt!1235071 lt!1235079)))))

(declare-fun ++!9412 (List!37956 List!37956) List!37956)

(assert (=> b!3597062 (isPrefix!2959 lt!1235071 (++!9412 lt!1235071 (_2!21994 lt!1235066)))))

(declare-fun lt!1235084 () Unit!53843)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1880 (List!37956 List!37956) Unit!53843)

(assert (=> b!3597062 (= lt!1235084 (lemmaConcatTwoListThenFirstIsPrefix!1880 lt!1235071 (_2!21994 lt!1235066)))))

(assert (=> b!3597062 (= lt!1235071 (list!13928 lt!1235080))))

(assert (=> b!3597062 (= lt!1235080 (charsOf!3610 (_1!21994 lt!1235066)))))

(assert (=> b!3597062 e!2225834))

(declare-fun res!1453120 () Bool)

(assert (=> b!3597062 (=> (not res!1453120) (not e!2225834))))

(declare-fun isDefined!6055 (Option!7823) Bool)

(assert (=> b!3597062 (= res!1453120 (isDefined!6055 lt!1235074))))

(declare-fun getRuleFromTag!1202 (LexerInterface!5185 List!37957 String!42464) Option!7823)

(assert (=> b!3597062 (= lt!1235074 (getRuleFromTag!1202 thiss!23823 rules!3307 (tag!6280 (rule!8324 (_1!21994 lt!1235066)))))))

(declare-fun lt!1235075 () Unit!53843)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1202 (LexerInterface!5185 List!37957 List!37956 Token!10558) Unit!53843)

(assert (=> b!3597062 (= lt!1235075 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1202 thiss!23823 rules!3307 lt!1235079 (_1!21994 lt!1235066)))))

(assert (=> b!3597062 (= lt!1235066 (get!12231 lt!1235061))))

(declare-fun lt!1235086 () Unit!53843)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!865 (LexerInterface!5185 List!37957 List!37956 List!37956) Unit!53843)

(assert (=> b!3597062 (= lt!1235086 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!865 thiss!23823 rules!3307 lt!1235081 suffix!1395))))

(assert (=> b!3597062 (= lt!1235061 (maxPrefix!2719 thiss!23823 rules!3307 lt!1235079))))

(assert (=> b!3597062 (isPrefix!2959 lt!1235081 lt!1235079)))

(declare-fun lt!1235082 () Unit!53843)

(assert (=> b!3597062 (= lt!1235082 (lemmaConcatTwoListThenFirstIsPrefix!1880 lt!1235081 suffix!1395))))

(assert (=> b!3597062 (= lt!1235079 (++!9412 lt!1235081 suffix!1395))))

(assert (= (and start!334174 res!1453128) b!3597053))

(assert (= (and b!3597053 res!1453116) b!3597059))

(assert (= (and b!3597059 res!1453121) b!3597042))

(assert (= (and b!3597042 res!1453129) b!3597035))

(assert (= (and b!3597035 res!1453131) b!3597058))

(assert (= (and b!3597058 res!1453118) b!3597052))

(assert (= (and b!3597052 res!1453125) b!3597050))

(assert (= (and b!3597050 res!1453132) b!3597057))

(assert (= (and b!3597057 res!1453130) b!3597054))

(assert (= (and b!3597054 res!1453136) b!3597044))

(assert (= (and b!3597044 (not res!1453115)) b!3597041))

(assert (= (and b!3597041 (not res!1453117)) b!3597032))

(assert (= (and b!3597032 (not res!1453122)) b!3597055))

(assert (= (and b!3597055 (not res!1453133)) b!3597061))

(assert (= (and b!3597061 (not res!1453127)) b!3597062))

(assert (= (and b!3597062 res!1453120) b!3597047))

(assert (= (and b!3597047 res!1453135) b!3597039))

(assert (= (and b!3597062 (not res!1453126)) b!3597029))

(assert (= (and b!3597029 (not res!1453134)) b!3597030))

(assert (= (and b!3597030 (not res!1453124)) b!3597060))

(assert (= (and b!3597060 (not res!1453119)) b!3597038))

(assert (= (and b!3597038 (not res!1453137)) b!3597033))

(assert (= (and b!3597033 (not res!1453123)) b!3597049))

(assert (= b!3597040 b!3597056))

(assert (= b!3597034 b!3597040))

(assert (= (and start!334174 ((_ is Cons!37833) rules!3307)) b!3597034))

(assert (= (and start!334174 ((_ is Cons!37832) suffix!1395)) b!3597046))

(assert (= b!3597036 b!3597037))

(assert (= b!3597031 b!3597036))

(assert (= start!334174 b!3597031))

(assert (= b!3597048 b!3597051))

(assert (= start!334174 b!3597048))

(assert (= b!3597045 b!3597043))

(assert (= start!334174 b!3597045))

(declare-fun m!4092237 () Bool)

(assert (=> b!3597061 m!4092237))

(declare-fun m!4092239 () Bool)

(assert (=> b!3597042 m!4092239))

(declare-fun m!4092241 () Bool)

(assert (=> b!3597062 m!4092241))

(declare-fun m!4092243 () Bool)

(assert (=> b!3597062 m!4092243))

(declare-fun m!4092245 () Bool)

(assert (=> b!3597062 m!4092245))

(declare-fun m!4092247 () Bool)

(assert (=> b!3597062 m!4092247))

(declare-fun m!4092249 () Bool)

(assert (=> b!3597062 m!4092249))

(declare-fun m!4092251 () Bool)

(assert (=> b!3597062 m!4092251))

(declare-fun m!4092253 () Bool)

(assert (=> b!3597062 m!4092253))

(declare-fun m!4092255 () Bool)

(assert (=> b!3597062 m!4092255))

(declare-fun m!4092257 () Bool)

(assert (=> b!3597062 m!4092257))

(declare-fun m!4092259 () Bool)

(assert (=> b!3597062 m!4092259))

(declare-fun m!4092261 () Bool)

(assert (=> b!3597062 m!4092261))

(declare-fun m!4092263 () Bool)

(assert (=> b!3597062 m!4092263))

(declare-fun m!4092265 () Bool)

(assert (=> b!3597062 m!4092265))

(declare-fun m!4092267 () Bool)

(assert (=> b!3597062 m!4092267))

(assert (=> b!3597062 m!4092253))

(declare-fun m!4092269 () Bool)

(assert (=> b!3597062 m!4092269))

(declare-fun m!4092271 () Bool)

(assert (=> b!3597036 m!4092271))

(declare-fun m!4092273 () Bool)

(assert (=> b!3597036 m!4092273))

(declare-fun m!4092275 () Bool)

(assert (=> b!3597038 m!4092275))

(declare-fun m!4092277 () Bool)

(assert (=> b!3597038 m!4092277))

(declare-fun m!4092279 () Bool)

(assert (=> b!3597055 m!4092279))

(assert (=> b!3597055 m!4092279))

(declare-fun m!4092281 () Bool)

(assert (=> b!3597055 m!4092281))

(declare-fun m!4092283 () Bool)

(assert (=> b!3597031 m!4092283))

(declare-fun m!4092285 () Bool)

(assert (=> b!3597041 m!4092285))

(declare-fun m!4092287 () Bool)

(assert (=> b!3597048 m!4092287))

(declare-fun m!4092289 () Bool)

(assert (=> b!3597048 m!4092289))

(declare-fun m!4092291 () Bool)

(assert (=> b!3597032 m!4092291))

(declare-fun m!4092293 () Bool)

(assert (=> b!3597032 m!4092293))

(declare-fun m!4092295 () Bool)

(assert (=> b!3597032 m!4092295))

(declare-fun m!4092297 () Bool)

(assert (=> b!3597053 m!4092297))

(declare-fun m!4092299 () Bool)

(assert (=> b!3597035 m!4092299))

(declare-fun m!4092301 () Bool)

(assert (=> b!3597029 m!4092301))

(declare-fun m!4092303 () Bool)

(assert (=> b!3597030 m!4092303))

(declare-fun m!4092305 () Bool)

(assert (=> b!3597030 m!4092305))

(declare-fun m!4092307 () Bool)

(assert (=> b!3597030 m!4092307))

(declare-fun m!4092309 () Bool)

(assert (=> b!3597030 m!4092309))

(assert (=> b!3597030 m!4092307))

(declare-fun m!4092311 () Bool)

(assert (=> b!3597030 m!4092311))

(declare-fun m!4092313 () Bool)

(assert (=> b!3597030 m!4092313))

(declare-fun m!4092315 () Bool)

(assert (=> b!3597060 m!4092315))

(declare-fun m!4092317 () Bool)

(assert (=> b!3597060 m!4092317))

(declare-fun m!4092319 () Bool)

(assert (=> b!3597060 m!4092319))

(declare-fun m!4092321 () Bool)

(assert (=> b!3597060 m!4092321))

(assert (=> b!3597060 m!4092315))

(declare-fun m!4092323 () Bool)

(assert (=> b!3597060 m!4092323))

(declare-fun m!4092325 () Bool)

(assert (=> b!3597060 m!4092325))

(declare-fun m!4092327 () Bool)

(assert (=> b!3597060 m!4092327))

(declare-fun m!4092329 () Bool)

(assert (=> b!3597045 m!4092329))

(declare-fun m!4092331 () Bool)

(assert (=> b!3597045 m!4092331))

(declare-fun m!4092333 () Bool)

(assert (=> b!3597057 m!4092333))

(declare-fun m!4092335 () Bool)

(assert (=> b!3597040 m!4092335))

(declare-fun m!4092337 () Bool)

(assert (=> b!3597040 m!4092337))

(declare-fun m!4092339 () Bool)

(assert (=> b!3597052 m!4092339))

(declare-fun m!4092341 () Bool)

(assert (=> b!3597052 m!4092341))

(declare-fun m!4092343 () Bool)

(assert (=> b!3597052 m!4092343))

(assert (=> b!3597052 m!4092343))

(declare-fun m!4092345 () Bool)

(assert (=> b!3597052 m!4092345))

(declare-fun m!4092347 () Bool)

(assert (=> b!3597033 m!4092347))

(declare-fun m!4092349 () Bool)

(assert (=> b!3597050 m!4092349))

(assert (=> b!3597047 m!4092247))

(assert (=> b!3597047 m!4092247))

(declare-fun m!4092351 () Bool)

(assert (=> b!3597047 m!4092351))

(assert (=> b!3597047 m!4092351))

(declare-fun m!4092353 () Bool)

(assert (=> b!3597047 m!4092353))

(declare-fun m!4092355 () Bool)

(assert (=> b!3597047 m!4092355))

(declare-fun m!4092357 () Bool)

(assert (=> b!3597044 m!4092357))

(declare-fun m!4092359 () Bool)

(assert (=> b!3597044 m!4092359))

(declare-fun m!4092361 () Bool)

(assert (=> b!3597044 m!4092361))

(declare-fun m!4092363 () Bool)

(assert (=> start!334174 m!4092363))

(declare-fun m!4092365 () Bool)

(assert (=> b!3597059 m!4092365))

(declare-fun m!4092367 () Bool)

(assert (=> b!3597049 m!4092367))

(check-sat (not b!3597044) b_and!260881 (not b!3597045) (not b!3597053) (not b_next!93685) (not b!3597059) (not b_next!93693) (not b!3597061) (not b!3597050) (not b!3597049) (not b!3597034) (not b!3597057) tp_is_empty!17793 b_and!260877 (not b_next!93695) (not b!3597038) (not b_next!93691) (not b_next!93683) (not b!3597047) (not b!3597046) (not b!3597029) (not b!3597042) b_and!260873 (not b!3597048) (not b!3597041) (not b!3597062) (not start!334174) b_and!260875 (not b!3597032) (not b!3597055) (not b_next!93681) (not b!3597035) (not b_next!93689) (not b!3597031) (not b!3597036) (not b_next!93687) (not b!3597033) b_and!260879 b_and!260867 (not b!3597052) b_and!260869 (not b!3597040) b_and!260871 (not b!3597030) (not b!3597060))
(check-sat b_and!260881 b_and!260873 (not b_next!93685) b_and!260875 (not b_next!93681) (not b_next!93693) (not b_next!93689) (not b_next!93687) b_and!260879 b_and!260867 b_and!260877 (not b_next!93695) (not b_next!93691) (not b_next!93683) b_and!260869 b_and!260871)
