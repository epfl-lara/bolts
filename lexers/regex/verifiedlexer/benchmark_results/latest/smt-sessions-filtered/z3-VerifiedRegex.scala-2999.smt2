; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179434 () Bool)

(assert start!179434)

(declare-fun b!1814919 () Bool)

(declare-fun b_free!50047 () Bool)

(declare-fun b_next!50751 () Bool)

(assert (=> b!1814919 (= b_free!50047 (not b_next!50751))))

(declare-fun tp!512525 () Bool)

(declare-fun b_and!140367 () Bool)

(assert (=> b!1814919 (= tp!512525 b_and!140367)))

(declare-fun b_free!50049 () Bool)

(declare-fun b_next!50753 () Bool)

(assert (=> b!1814919 (= b_free!50049 (not b_next!50753))))

(declare-fun tp!512529 () Bool)

(declare-fun b_and!140369 () Bool)

(assert (=> b!1814919 (= tp!512529 b_and!140369)))

(declare-fun b!1814925 () Bool)

(declare-fun b_free!50051 () Bool)

(declare-fun b_next!50755 () Bool)

(assert (=> b!1814925 (= b_free!50051 (not b_next!50755))))

(declare-fun tp!512522 () Bool)

(declare-fun b_and!140371 () Bool)

(assert (=> b!1814925 (= tp!512522 b_and!140371)))

(declare-fun b_free!50053 () Bool)

(declare-fun b_next!50757 () Bool)

(assert (=> b!1814925 (= b_free!50053 (not b_next!50757))))

(declare-fun tp!512521 () Bool)

(declare-fun b_and!140373 () Bool)

(assert (=> b!1814925 (= tp!512521 b_and!140373)))

(declare-fun b!1814926 () Bool)

(declare-fun b_free!50055 () Bool)

(declare-fun b_next!50759 () Bool)

(assert (=> b!1814926 (= b_free!50055 (not b_next!50759))))

(declare-fun tp!512524 () Bool)

(declare-fun b_and!140375 () Bool)

(assert (=> b!1814926 (= tp!512524 b_and!140375)))

(declare-fun b_free!50057 () Bool)

(declare-fun b_next!50761 () Bool)

(assert (=> b!1814926 (= b_free!50057 (not b_next!50761))))

(declare-fun tp!512528 () Bool)

(declare-fun b_and!140377 () Bool)

(assert (=> b!1814926 (= tp!512528 b_and!140377)))

(declare-fun b!1814946 () Bool)

(declare-fun e!1159581 () Bool)

(assert (=> b!1814946 (= e!1159581 true)))

(declare-fun b!1814945 () Bool)

(declare-fun e!1159580 () Bool)

(assert (=> b!1814945 (= e!1159580 e!1159581)))

(declare-fun b!1814944 () Bool)

(declare-fun e!1159579 () Bool)

(assert (=> b!1814944 (= e!1159579 e!1159580)))

(declare-fun b!1814897 () Bool)

(assert (=> b!1814897 e!1159579))

(assert (= b!1814945 b!1814946))

(assert (= b!1814944 b!1814945))

(assert (= b!1814897 b!1814944))

(declare-fun order!12951 () Int)

(declare-fun lambda!71054 () Int)

(declare-fun order!12953 () Int)

(declare-datatypes ((List!19875 0))(
  ( (Nil!19805) (Cons!19805 (h!25206 (_ BitVec 16)) (t!169484 List!19875)) )
))
(declare-datatypes ((TokenValue!3649 0))(
  ( (FloatLiteralValue!7298 (text!25988 List!19875)) (TokenValueExt!3648 (__x!12600 Int)) (Broken!18245 (value!111078 List!19875)) (Object!3718) (End!3649) (Def!3649) (Underscore!3649) (Match!3649) (Else!3649) (Error!3649) (Case!3649) (If!3649) (Extends!3649) (Abstract!3649) (Class!3649) (Val!3649) (DelimiterValue!7298 (del!3709 List!19875)) (KeywordValue!3655 (value!111079 List!19875)) (CommentValue!7298 (value!111080 List!19875)) (WhitespaceValue!7298 (value!111081 List!19875)) (IndentationValue!3649 (value!111082 List!19875)) (String!22576) (Int32!3649) (Broken!18246 (value!111083 List!19875)) (Boolean!3650) (Unit!34498) (OperatorValue!3652 (op!3709 List!19875)) (IdentifierValue!7298 (value!111084 List!19875)) (IdentifierValue!7299 (value!111085 List!19875)) (WhitespaceValue!7299 (value!111086 List!19875)) (True!7298) (False!7298) (Broken!18247 (value!111087 List!19875)) (Broken!18248 (value!111088 List!19875)) (True!7299) (RightBrace!3649) (RightBracket!3649) (Colon!3649) (Null!3649) (Comma!3649) (LeftBracket!3649) (False!7299) (LeftBrace!3649) (ImaginaryLiteralValue!3649 (text!25989 List!19875)) (StringLiteralValue!10947 (value!111089 List!19875)) (EOFValue!3649 (value!111090 List!19875)) (IdentValue!3649 (value!111091 List!19875)) (DelimiterValue!7299 (value!111092 List!19875)) (DedentValue!3649 (value!111093 List!19875)) (NewLineValue!3649 (value!111094 List!19875)) (IntegerValue!10947 (value!111095 (_ BitVec 32)) (text!25990 List!19875)) (IntegerValue!10948 (value!111096 Int) (text!25991 List!19875)) (Times!3649) (Or!3649) (Equal!3649) (Minus!3649) (Broken!18249 (value!111097 List!19875)) (And!3649) (Div!3649) (LessEqual!3649) (Mod!3649) (Concat!8536) (Not!3649) (Plus!3649) (SpaceValue!3649 (value!111098 List!19875)) (IntegerValue!10949 (value!111099 Int) (text!25992 List!19875)) (StringLiteralValue!10948 (text!25993 List!19875)) (FloatLiteralValue!7299 (text!25994 List!19875)) (BytesLiteralValue!3649 (value!111100 List!19875)) (CommentValue!7299 (value!111101 List!19875)) (StringLiteralValue!10949 (value!111102 List!19875)) (ErrorTokenValue!3649 (msg!3710 List!19875)) )
))
(declare-datatypes ((C!9948 0))(
  ( (C!9949 (val!5570 Int)) )
))
(declare-datatypes ((List!19876 0))(
  ( (Nil!19806) (Cons!19806 (h!25207 C!9948) (t!169485 List!19876)) )
))
(declare-datatypes ((Regex!4887 0))(
  ( (ElementMatch!4887 (c!296434 C!9948)) (Concat!8537 (regOne!10286 Regex!4887) (regTwo!10286 Regex!4887)) (EmptyExpr!4887) (Star!4887 (reg!5216 Regex!4887)) (EmptyLang!4887) (Union!4887 (regOne!10287 Regex!4887) (regTwo!10287 Regex!4887)) )
))
(declare-datatypes ((String!22577 0))(
  ( (String!22578 (value!111103 String)) )
))
(declare-datatypes ((IArray!13183 0))(
  ( (IArray!13184 (innerList!6649 List!19876)) )
))
(declare-datatypes ((Conc!6589 0))(
  ( (Node!6589 (left!15898 Conc!6589) (right!16228 Conc!6589) (csize!13408 Int) (cheight!6800 Int)) (Leaf!9589 (xs!9465 IArray!13183) (csize!13409 Int)) (Empty!6589) )
))
(declare-datatypes ((BalanceConc!13122 0))(
  ( (BalanceConc!13123 (c!296435 Conc!6589)) )
))
(declare-datatypes ((TokenValueInjection!6958 0))(
  ( (TokenValueInjection!6959 (toValue!5090 Int) (toChars!4949 Int)) )
))
(declare-datatypes ((Rule!6918 0))(
  ( (Rule!6919 (regex!3559 Regex!4887) (tag!3971 String!22577) (isSeparator!3559 Bool) (transformation!3559 TokenValueInjection!6958)) )
))
(declare-datatypes ((Token!6684 0))(
  ( (Token!6685 (value!111104 TokenValue!3649) (rule!5669 Rule!6918) (size!15748 Int) (originalCharacters!4373 List!19876)) )
))
(declare-datatypes ((tuple2!19382 0))(
  ( (tuple2!19383 (_1!11093 Token!6684) (_2!11093 List!19876)) )
))
(declare-fun lt!705567 () tuple2!19382)

(declare-fun dynLambda!9875 (Int Int) Int)

(declare-fun dynLambda!9876 (Int Int) Int)

(assert (=> b!1814946 (< (dynLambda!9875 order!12951 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9876 order!12953 lambda!71054))))

(declare-fun order!12955 () Int)

(declare-fun dynLambda!9877 (Int Int) Int)

(assert (=> b!1814946 (< (dynLambda!9877 order!12955 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9876 order!12953 lambda!71054))))

(declare-fun b!1814891 () Bool)

(assert (=> b!1814891 false))

(declare-fun token!523 () Token!6684)

(declare-datatypes ((Unit!34499 0))(
  ( (Unit!34500) )
))
(declare-fun lt!705524 () Unit!34499)

(declare-datatypes ((List!19877 0))(
  ( (Nil!19807) (Cons!19807 (h!25208 Rule!6918) (t!169486 List!19877)) )
))
(declare-fun rules!3447 () List!19877)

(declare-fun lemmaSameIndexThenSameElement!116 (List!19877 Rule!6918 Rule!6918) Unit!34499)

(assert (=> b!1814891 (= lt!705524 (lemmaSameIndexThenSameElement!116 rules!3447 (rule!5669 (_1!11093 lt!705567)) (rule!5669 token!523)))))

(declare-fun e!1159542 () Unit!34499)

(declare-fun Unit!34501 () Unit!34499)

(assert (=> b!1814891 (= e!1159542 Unit!34501)))

(declare-fun b!1814892 () Bool)

(declare-fun e!1159568 () Unit!34499)

(declare-fun Unit!34502 () Unit!34499)

(assert (=> b!1814892 (= e!1159568 Unit!34502)))

(declare-fun b!1814893 () Bool)

(declare-fun e!1159550 () Unit!34499)

(declare-fun Unit!34503 () Unit!34499)

(assert (=> b!1814893 (= e!1159550 Unit!34503)))

(declare-fun lt!705526 () Unit!34499)

(declare-fun lt!705554 () List!19876)

(declare-fun rule!422 () Rule!6918)

(declare-datatypes ((LexerInterface!3188 0))(
  ( (LexerInterfaceExt!3185 (__x!12601 Int)) (Lexer!3186) )
))
(declare-fun thiss!24550 () LexerInterface!3188)

(declare-fun lt!705565 () List!19876)

(declare-fun lt!705523 () List!19876)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!268 (LexerInterface!3188 List!19877 Rule!6918 List!19876 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> b!1814893 (= lt!705526 (lemmaMaxPrefixOutputsMaxPrefix!268 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 lt!705523 rule!422))))

(assert (=> b!1814893 false))

(declare-fun b!1814894 () Bool)

(declare-fun res!815993 () Bool)

(declare-fun e!1159565 () Bool)

(assert (=> b!1814894 (=> (not res!815993) (not e!1159565))))

(declare-fun isEmpty!12534 (List!19877) Bool)

(assert (=> b!1814894 (= res!815993 (not (isEmpty!12534 rules!3447)))))

(declare-fun b!1814895 () Bool)

(declare-fun e!1159572 () Bool)

(declare-fun e!1159538 () Bool)

(assert (=> b!1814895 (= e!1159572 e!1159538)))

(declare-fun res!815983 () Bool)

(assert (=> b!1814895 (=> res!815983 e!1159538)))

(declare-fun lt!705518 () Regex!4887)

(declare-fun lt!705521 () List!19876)

(declare-fun prefixMatch!770 (Regex!4887 List!19876) Bool)

(assert (=> b!1814895 (= res!815983 (prefixMatch!770 lt!705518 lt!705521))))

(declare-fun suffix!1421 () List!19876)

(declare-fun ++!5389 (List!19876 List!19876) List!19876)

(declare-fun head!4224 (List!19876) C!9948)

(assert (=> b!1814895 (= lt!705521 (++!5389 lt!705523 (Cons!19806 (head!4224 suffix!1421) Nil!19806)))))

(declare-fun rulesRegex!915 (LexerInterface!3188 List!19877) Regex!4887)

(assert (=> b!1814895 (= lt!705518 (rulesRegex!915 thiss!24550 rules!3447))))

(declare-fun e!1159559 () Bool)

(declare-fun b!1814896 () Bool)

(declare-fun e!1159564 () Bool)

(declare-fun tp!512530 () Bool)

(declare-fun inv!25825 (String!22577) Bool)

(declare-fun inv!25830 (TokenValueInjection!6958) Bool)

(assert (=> b!1814896 (= e!1159559 (and tp!512530 (inv!25825 (tag!3971 (h!25208 rules!3447))) (inv!25830 (transformation!3559 (h!25208 rules!3447))) e!1159564))))

(declare-fun e!1159569 () Bool)

(declare-fun e!1159554 () Bool)

(assert (=> b!1814897 (= e!1159569 e!1159554)))

(declare-fun res!816000 () Bool)

(assert (=> b!1814897 (=> res!816000 e!1159554)))

(declare-fun Forall!926 (Int) Bool)

(assert (=> b!1814897 (= res!816000 (not (Forall!926 lambda!71054)))))

(declare-fun lt!705530 () Unit!34499)

(declare-fun lemmaInv!758 (TokenValueInjection!6958) Unit!34499)

(assert (=> b!1814897 (= lt!705530 (lemmaInv!758 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1814898 () Bool)

(declare-fun e!1159540 () Unit!34499)

(declare-fun Unit!34504 () Unit!34499)

(assert (=> b!1814898 (= e!1159540 Unit!34504)))

(declare-fun b!1814899 () Bool)

(declare-fun e!1159563 () Bool)

(assert (=> b!1814899 (= e!1159565 e!1159563)))

(declare-fun res!815996 () Bool)

(assert (=> b!1814899 (=> (not res!815996) (not e!1159563))))

(declare-datatypes ((Option!4144 0))(
  ( (None!4143) (Some!4143 (v!25664 tuple2!19382)) )
))
(declare-fun lt!705566 () Option!4144)

(declare-fun isDefined!3485 (Option!4144) Bool)

(assert (=> b!1814899 (= res!815996 (isDefined!3485 lt!705566))))

(declare-fun maxPrefix!1742 (LexerInterface!3188 List!19877 List!19876) Option!4144)

(assert (=> b!1814899 (= lt!705566 (maxPrefix!1742 thiss!24550 rules!3447 lt!705523))))

(declare-fun lt!705517 () BalanceConc!13122)

(declare-fun list!8063 (BalanceConc!13122) List!19876)

(assert (=> b!1814899 (= lt!705523 (list!8063 lt!705517))))

(declare-fun charsOf!2208 (Token!6684) BalanceConc!13122)

(assert (=> b!1814899 (= lt!705517 (charsOf!2208 token!523))))

(declare-fun b!1814900 () Bool)

(declare-fun Unit!34505 () Unit!34499)

(assert (=> b!1814900 (= e!1159550 Unit!34505)))

(declare-fun b!1814901 () Bool)

(declare-fun e!1159545 () Bool)

(assert (=> b!1814901 e!1159545))

(declare-fun res!815979 () Bool)

(assert (=> b!1814901 (=> (not res!815979) (not e!1159545))))

(declare-fun matchR!2360 (Regex!4887 List!19876) Bool)

(assert (=> b!1814901 (= res!815979 (not (matchR!2360 (regex!3559 (rule!5669 token!523)) lt!705565)))))

(declare-fun lt!705520 () Unit!34499)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!180 (LexerInterface!3188 List!19877 Rule!6918 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> b!1814901 (= lt!705520 (lemmaMaxPrefNoSmallerRuleMatches!180 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 (rule!5669 token!523)))))

(declare-fun e!1159566 () Unit!34499)

(declare-fun Unit!34506 () Unit!34499)

(assert (=> b!1814901 (= e!1159566 Unit!34506)))

(declare-fun b!1814902 () Bool)

(declare-fun e!1159558 () Unit!34499)

(declare-fun Unit!34507 () Unit!34499)

(assert (=> b!1814902 (= e!1159558 Unit!34507)))

(declare-fun b!1814903 () Bool)

(declare-fun e!1159546 () Bool)

(declare-fun e!1159549 () Bool)

(assert (=> b!1814903 (= e!1159546 e!1159549)))

(declare-fun res!815994 () Bool)

(assert (=> b!1814903 (=> res!815994 e!1159549)))

(declare-fun lt!705564 () Bool)

(assert (=> b!1814903 (= res!815994 lt!705564)))

(declare-fun lt!705551 () Unit!34499)

(assert (=> b!1814903 (= lt!705551 e!1159540)))

(declare-fun c!296428 () Bool)

(assert (=> b!1814903 (= c!296428 lt!705564)))

(declare-fun lt!705570 () Int)

(declare-fun lt!705568 () Int)

(assert (=> b!1814903 (= lt!705564 (> lt!705570 lt!705568))))

(declare-fun size!15749 (BalanceConc!13122) Int)

(assert (=> b!1814903 (= lt!705568 (size!15749 lt!705517))))

(assert (=> b!1814903 (matchR!2360 lt!705518 lt!705523)))

(declare-fun lt!705545 () Unit!34499)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!266 (LexerInterface!3188 List!19877 List!19876 Token!6684 Rule!6918 List!19876) Unit!34499)

(assert (=> b!1814903 (= lt!705545 (lemmaMaxPrefixThenMatchesRulesRegex!266 thiss!24550 rules!3447 lt!705523 token!523 rule!422 Nil!19806))))

(declare-fun res!815989 () Bool)

(assert (=> start!179434 (=> (not res!815989) (not e!1159565))))

(get-info :version)

(assert (=> start!179434 (= res!815989 ((_ is Lexer!3186) thiss!24550))))

(assert (=> start!179434 e!1159565))

(declare-fun e!1159560 () Bool)

(assert (=> start!179434 e!1159560))

(declare-fun e!1159552 () Bool)

(assert (=> start!179434 e!1159552))

(assert (=> start!179434 true))

(declare-fun e!1159548 () Bool)

(declare-fun inv!25831 (Token!6684) Bool)

(assert (=> start!179434 (and (inv!25831 token!523) e!1159548)))

(declare-fun e!1159541 () Bool)

(assert (=> start!179434 e!1159541))

(declare-fun b!1814904 () Bool)

(declare-fun e!1159556 () Bool)

(assert (=> b!1814904 (= e!1159556 (not e!1159572))))

(declare-fun res!815982 () Bool)

(assert (=> b!1814904 (=> res!815982 e!1159572)))

(assert (=> b!1814904 (= res!815982 (not (matchR!2360 (regex!3559 rule!422) lt!705523)))))

(declare-fun ruleValid!1057 (LexerInterface!3188 Rule!6918) Bool)

(assert (=> b!1814904 (ruleValid!1057 thiss!24550 rule!422)))

(declare-fun lt!705555 () Unit!34499)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!580 (LexerInterface!3188 Rule!6918 List!19877) Unit!34499)

(assert (=> b!1814904 (= lt!705555 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!580 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1159561 () Bool)

(declare-fun tp!512519 () Bool)

(declare-fun b!1814905 () Bool)

(declare-fun inv!21 (TokenValue!3649) Bool)

(assert (=> b!1814905 (= e!1159548 (and (inv!21 (value!111104 token!523)) e!1159561 tp!512519))))

(declare-fun e!1159543 () Bool)

(declare-fun b!1814906 () Bool)

(declare-fun tp!512520 () Bool)

(assert (=> b!1814906 (= e!1159552 (and tp!512520 (inv!25825 (tag!3971 rule!422)) (inv!25830 (transformation!3559 rule!422)) e!1159543))))

(declare-fun b!1814907 () Bool)

(declare-fun res!815981 () Bool)

(declare-fun e!1159562 () Bool)

(assert (=> b!1814907 (=> res!815981 e!1159562)))

(declare-fun lt!705556 () BalanceConc!13122)

(declare-fun dynLambda!9878 (Int TokenValue!3649) BalanceConc!13122)

(assert (=> b!1814907 (= res!815981 (not (= lt!705556 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))))

(declare-fun b!1814908 () Bool)

(declare-fun e!1159571 () Bool)

(assert (=> b!1814908 (= e!1159549 e!1159571)))

(declare-fun res!815992 () Bool)

(assert (=> b!1814908 (=> res!815992 e!1159571)))

(assert (=> b!1814908 (= res!815992 (not (= lt!705570 lt!705568)))))

(declare-fun lt!705543 () Unit!34499)

(assert (=> b!1814908 (= lt!705543 e!1159550)))

(declare-fun c!296433 () Bool)

(assert (=> b!1814908 (= c!296433 (< lt!705570 lt!705568))))

(declare-fun b!1814909 () Bool)

(declare-fun res!816002 () Bool)

(assert (=> b!1814909 (=> (not res!816002) (not e!1159565))))

(declare-fun contains!3593 (List!19877 Rule!6918) Bool)

(assert (=> b!1814909 (= res!816002 (contains!3593 rules!3447 rule!422))))

(declare-fun b!1814910 () Bool)

(declare-fun Unit!34508 () Unit!34499)

(assert (=> b!1814910 (= e!1159566 Unit!34508)))

(declare-fun b!1814911 () Bool)

(declare-fun e!1159567 () Bool)

(assert (=> b!1814911 (= e!1159562 e!1159567)))

(declare-fun res!815984 () Bool)

(assert (=> b!1814911 (=> res!815984 e!1159567)))

(declare-fun lt!705544 () Option!4144)

(declare-fun lt!705557 () TokenValue!3649)

(assert (=> b!1814911 (= res!815984 (not (= lt!705544 (Some!4143 (tuple2!19383 (Token!6685 lt!705557 (rule!5669 (_1!11093 lt!705567)) lt!705570 lt!705565) (_2!11093 lt!705567))))))))

(assert (=> b!1814911 (= lt!705570 (size!15749 lt!705556))))

(declare-fun apply!5359 (TokenValueInjection!6958 BalanceConc!13122) TokenValue!3649)

(assert (=> b!1814911 (= lt!705557 (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556))))

(declare-fun lt!705541 () Unit!34499)

(declare-fun lemmaCharactersSize!617 (Token!6684) Unit!34499)

(assert (=> b!1814911 (= lt!705541 (lemmaCharactersSize!617 (_1!11093 lt!705567)))))

(declare-fun lt!705534 () Unit!34499)

(declare-fun lemmaEqSameImage!470 (TokenValueInjection!6958 BalanceConc!13122 BalanceConc!13122) Unit!34499)

(declare-fun seqFromList!2528 (List!19876) BalanceConc!13122)

(assert (=> b!1814911 (= lt!705534 (lemmaEqSameImage!470 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556 (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567)))))))

(declare-fun b!1814912 () Bool)

(declare-fun e!1159555 () Bool)

(assert (=> b!1814912 e!1159555))

(declare-fun res!815999 () Bool)

(assert (=> b!1814912 (=> (not res!815999) (not e!1159555))))

(assert (=> b!1814912 (= res!815999 (not (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705523)))))

(declare-fun lt!705537 () Unit!34499)

(assert (=> b!1814912 (= lt!705537 (lemmaMaxPrefNoSmallerRuleMatches!180 thiss!24550 rules!3447 (rule!5669 token!523) lt!705523 lt!705523 (rule!5669 (_1!11093 lt!705567))))))

(declare-fun Unit!34509 () Unit!34499)

(assert (=> b!1814912 (= e!1159568 Unit!34509)))

(declare-fun b!1814913 () Bool)

(declare-fun e!1159553 () Bool)

(declare-fun lt!705525 () Rule!6918)

(assert (=> b!1814913 (= e!1159553 (= (rule!5669 (_1!11093 lt!705567)) lt!705525))))

(declare-fun b!1814914 () Bool)

(assert (=> b!1814914 (= e!1159538 e!1159569)))

(declare-fun res!815998 () Bool)

(assert (=> b!1814914 (=> res!815998 e!1159569)))

(declare-fun isPrefix!1799 (List!19876 List!19876) Bool)

(assert (=> b!1814914 (= res!815998 (not (isPrefix!1799 lt!705565 lt!705554)))))

(assert (=> b!1814914 (isPrefix!1799 lt!705565 (++!5389 lt!705565 (_2!11093 lt!705567)))))

(declare-fun lt!705561 () Unit!34499)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1308 (List!19876 List!19876) Unit!34499)

(assert (=> b!1814914 (= lt!705561 (lemmaConcatTwoListThenFirstIsPrefix!1308 lt!705565 (_2!11093 lt!705567)))))

(assert (=> b!1814914 (= lt!705565 (list!8063 lt!705556))))

(assert (=> b!1814914 (= lt!705556 (charsOf!2208 (_1!11093 lt!705567)))))

(declare-fun e!1159547 () Bool)

(assert (=> b!1814914 e!1159547))

(declare-fun res!815990 () Bool)

(assert (=> b!1814914 (=> (not res!815990) (not e!1159547))))

(declare-datatypes ((Option!4145 0))(
  ( (None!4144) (Some!4144 (v!25665 Rule!6918)) )
))
(declare-fun lt!705529 () Option!4145)

(declare-fun isDefined!3486 (Option!4145) Bool)

(assert (=> b!1814914 (= res!815990 (isDefined!3486 lt!705529))))

(declare-fun getRuleFromTag!607 (LexerInterface!3188 List!19877 String!22577) Option!4145)

(assert (=> b!1814914 (= lt!705529 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun lt!705550 () Unit!34499)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!607 (LexerInterface!3188 List!19877 List!19876 Token!6684) Unit!34499)

(assert (=> b!1814914 (= lt!705550 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!607 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567)))))

(declare-fun get!6139 (Option!4144) tuple2!19382)

(assert (=> b!1814914 (= lt!705567 (get!6139 lt!705544))))

(declare-fun lt!705562 () Unit!34499)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!710 (LexerInterface!3188 List!19877 List!19876 List!19876) Unit!34499)

(assert (=> b!1814914 (= lt!705562 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!710 thiss!24550 rules!3447 lt!705523 suffix!1421))))

(assert (=> b!1814914 (= lt!705544 (maxPrefix!1742 thiss!24550 rules!3447 lt!705554))))

(assert (=> b!1814914 (isPrefix!1799 lt!705523 lt!705554)))

(declare-fun lt!705548 () Unit!34499)

(assert (=> b!1814914 (= lt!705548 (lemmaConcatTwoListThenFirstIsPrefix!1308 lt!705523 suffix!1421))))

(assert (=> b!1814914 (= lt!705554 (++!5389 lt!705523 suffix!1421))))

(declare-fun b!1814915 () Bool)

(declare-fun res!815985 () Bool)

(assert (=> b!1814915 (=> (not res!815985) (not e!1159556))))

(assert (=> b!1814915 (= res!815985 (= (rule!5669 token!523) rule!422))))

(declare-fun b!1814916 () Bool)

(declare-fun e!1159557 () Bool)

(declare-fun tp!512523 () Bool)

(assert (=> b!1814916 (= e!1159561 (and tp!512523 (inv!25825 (tag!3971 (rule!5669 token!523))) (inv!25830 (transformation!3559 (rule!5669 token!523))) e!1159557))))

(declare-fun b!1814917 () Bool)

(assert (=> b!1814917 (= e!1159567 e!1159546)))

(declare-fun res!815997 () Bool)

(assert (=> b!1814917 (=> res!815997 e!1159546)))

(declare-fun lt!705535 () List!19876)

(declare-fun lt!705546 () Option!4144)

(assert (=> b!1814917 (= res!815997 (or (not (= lt!705535 (_2!11093 lt!705567))) (not (= lt!705546 (Some!4143 (tuple2!19383 (_1!11093 lt!705567) lt!705535))))))))

(assert (=> b!1814917 (= (_2!11093 lt!705567) lt!705535)))

(declare-fun lt!705532 () Unit!34499)

(declare-fun lemmaSamePrefixThenSameSuffix!910 (List!19876 List!19876 List!19876 List!19876 List!19876) Unit!34499)

(assert (=> b!1814917 (= lt!705532 (lemmaSamePrefixThenSameSuffix!910 lt!705565 (_2!11093 lt!705567) lt!705565 lt!705535 lt!705554))))

(declare-fun getSuffix!966 (List!19876 List!19876) List!19876)

(assert (=> b!1814917 (= lt!705535 (getSuffix!966 lt!705554 lt!705565))))

(declare-fun lt!705531 () TokenValue!3649)

(declare-fun lt!705549 () Int)

(assert (=> b!1814917 (= lt!705546 (Some!4143 (tuple2!19383 (Token!6685 lt!705531 (rule!5669 (_1!11093 lt!705567)) lt!705549 lt!705565) (_2!11093 lt!705567))))))

(declare-fun maxPrefixOneRule!1111 (LexerInterface!3188 Rule!6918 List!19876) Option!4144)

(assert (=> b!1814917 (= lt!705546 (maxPrefixOneRule!1111 thiss!24550 (rule!5669 (_1!11093 lt!705567)) lt!705554))))

(declare-fun size!15750 (List!19876) Int)

(assert (=> b!1814917 (= lt!705549 (size!15750 lt!705565))))

(assert (=> b!1814917 (= lt!705531 (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) (seqFromList!2528 lt!705565)))))

(declare-fun lt!705542 () Unit!34499)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!489 (LexerInterface!3188 List!19877 List!19876 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> b!1814917 (= lt!705542 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!489 thiss!24550 rules!3447 lt!705565 lt!705554 (_2!11093 lt!705567) (rule!5669 (_1!11093 lt!705567))))))

(declare-fun b!1814918 () Bool)

(declare-fun Unit!34510 () Unit!34499)

(assert (=> b!1814918 (= e!1159558 Unit!34510)))

(declare-fun lt!705528 () Int)

(declare-fun getIndex!224 (List!19877 Rule!6918) Int)

(assert (=> b!1814918 (= lt!705528 (getIndex!224 rules!3447 (rule!5669 token!523)))))

(declare-fun lt!705547 () Int)

(assert (=> b!1814918 (= lt!705547 (getIndex!224 rules!3447 (rule!5669 (_1!11093 lt!705567))))))

(declare-fun c!296430 () Bool)

(assert (=> b!1814918 (= c!296430 (< lt!705528 lt!705547))))

(declare-fun lt!705559 () Unit!34499)

(assert (=> b!1814918 (= lt!705559 e!1159566)))

(declare-fun c!296429 () Bool)

(assert (=> b!1814918 (= c!296429 (< lt!705547 lt!705528))))

(declare-fun lt!705552 () Unit!34499)

(assert (=> b!1814918 (= lt!705552 e!1159568)))

(declare-fun c!296432 () Bool)

(assert (=> b!1814918 (= c!296432 (= lt!705547 lt!705528))))

(declare-fun lt!705527 () Unit!34499)

(assert (=> b!1814918 (= lt!705527 e!1159542)))

(assert (=> b!1814918 false))

(assert (=> b!1814919 (= e!1159543 (and tp!512525 tp!512529))))

(declare-fun b!1814920 () Bool)

(declare-fun res!815986 () Bool)

(assert (=> b!1814920 (=> res!815986 e!1159569)))

(assert (=> b!1814920 (= res!815986 (not (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705565)))))

(declare-fun b!1814921 () Bool)

(declare-fun res!815980 () Bool)

(assert (=> b!1814921 (=> res!815980 e!1159572)))

(declare-fun isEmpty!12535 (List!19876) Bool)

(assert (=> b!1814921 (= res!815980 (isEmpty!12535 suffix!1421))))

(declare-fun b!1814922 () Bool)

(assert (=> b!1814922 (= e!1159555 false)))

(declare-fun b!1814923 () Bool)

(assert (=> b!1814923 (= e!1159563 e!1159556)))

(declare-fun res!815995 () Bool)

(assert (=> b!1814923 (=> (not res!815995) (not e!1159556))))

(declare-fun lt!705558 () tuple2!19382)

(assert (=> b!1814923 (= res!815995 (= (_1!11093 lt!705558) token!523))))

(assert (=> b!1814923 (= lt!705558 (get!6139 lt!705566))))

(declare-fun b!1814924 () Bool)

(declare-fun Unit!34511 () Unit!34499)

(assert (=> b!1814924 (= e!1159542 Unit!34511)))

(assert (=> b!1814925 (= e!1159557 (and tp!512522 tp!512521))))

(assert (=> b!1814926 (= e!1159564 (and tp!512524 tp!512528))))

(declare-fun b!1814927 () Bool)

(declare-fun tp_is_empty!8017 () Bool)

(declare-fun tp!512527 () Bool)

(assert (=> b!1814927 (= e!1159560 (and tp_is_empty!8017 tp!512527))))

(declare-fun b!1814928 () Bool)

(assert (=> b!1814928 (= e!1159547 e!1159553)))

(declare-fun res!815991 () Bool)

(assert (=> b!1814928 (=> (not res!815991) (not e!1159553))))

(assert (=> b!1814928 (= res!815991 (matchR!2360 (regex!3559 lt!705525) (list!8063 (charsOf!2208 (_1!11093 lt!705567)))))))

(declare-fun get!6140 (Option!4145) Rule!6918)

(assert (=> b!1814928 (= lt!705525 (get!6140 lt!705529))))

(declare-fun b!1814929 () Bool)

(assert (=> b!1814929 (= e!1159554 e!1159562)))

(declare-fun res!816001 () Bool)

(assert (=> b!1814929 (=> res!816001 e!1159562)))

(declare-fun dynLambda!9879 (Int BalanceConc!13122) TokenValue!3649)

(assert (=> b!1814929 (= res!816001 (not (= (list!8063 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))) lt!705565)))))

(declare-fun lt!705522 () Unit!34499)

(declare-fun lemmaSemiInverse!697 (TokenValueInjection!6958 BalanceConc!13122) Unit!34499)

(assert (=> b!1814929 (= lt!705522 (lemmaSemiInverse!697 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556))))

(declare-fun b!1814930 () Bool)

(declare-fun lt!705553 () Bool)

(assert (=> b!1814930 (= e!1159571 (or lt!705553 (not (= token!523 (_1!11093 lt!705567))) (= lt!705544 (Some!4143 (tuple2!19383 token!523 suffix!1421)))))))

(declare-fun lt!705563 () Unit!34499)

(assert (=> b!1814930 (= lt!705563 e!1159558)))

(declare-fun c!296431 () Bool)

(assert (=> b!1814930 (= c!296431 lt!705553)))

(assert (=> b!1814930 (= lt!705553 (not (= (rule!5669 (_1!11093 lt!705567)) (rule!5669 token!523))))))

(assert (=> b!1814930 (= suffix!1421 (_2!11093 lt!705567))))

(declare-fun lt!705569 () Unit!34499)

(assert (=> b!1814930 (= lt!705569 (lemmaSamePrefixThenSameSuffix!910 lt!705523 suffix!1421 lt!705523 (_2!11093 lt!705567) lt!705554))))

(assert (=> b!1814930 (= lt!705565 lt!705523)))

(declare-fun lt!705539 () Unit!34499)

(declare-fun lemmaIsPrefixSameLengthThenSameList!295 (List!19876 List!19876 List!19876) Unit!34499)

(assert (=> b!1814930 (= lt!705539 (lemmaIsPrefixSameLengthThenSameList!295 lt!705565 lt!705523 lt!705554))))

(declare-fun b!1814931 () Bool)

(declare-fun Unit!34512 () Unit!34499)

(assert (=> b!1814931 (= e!1159540 Unit!34512)))

(declare-fun lt!705519 () Unit!34499)

(assert (=> b!1814931 (= lt!705519 (lemmaMaxPrefixThenMatchesRulesRegex!266 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567) (rule!5669 (_1!11093 lt!705567)) (_2!11093 lt!705567)))))

(assert (=> b!1814931 (matchR!2360 lt!705518 lt!705565)))

(declare-fun lt!705540 () List!19876)

(assert (=> b!1814931 (= lt!705540 (getSuffix!966 lt!705554 lt!705523))))

(declare-fun lt!705533 () Unit!34499)

(assert (=> b!1814931 (= lt!705533 (lemmaSamePrefixThenSameSuffix!910 lt!705523 suffix!1421 lt!705523 lt!705540 lt!705554))))

(assert (=> b!1814931 (= suffix!1421 lt!705540)))

(declare-fun lt!705536 () Unit!34499)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!335 (List!19876 List!19876) Unit!34499)

(assert (=> b!1814931 (= lt!705536 (lemmaAddHeadSuffixToPrefixStillPrefix!335 lt!705523 lt!705554))))

(assert (=> b!1814931 (isPrefix!1799 (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806)) lt!705554)))

(declare-fun lt!705538 () Unit!34499)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!207 (List!19876 List!19876 List!19876) Unit!34499)

(assert (=> b!1814931 (= lt!705538 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!207 lt!705565 lt!705521 lt!705554))))

(assert (=> b!1814931 (isPrefix!1799 lt!705521 lt!705565)))

(declare-fun lt!705560 () Unit!34499)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!198 (Regex!4887 List!19876 List!19876) Unit!34499)

(assert (=> b!1814931 (= lt!705560 (lemmaNotPrefixMatchThenCannotMatchLonger!198 lt!705518 lt!705521 lt!705565))))

(assert (=> b!1814931 false))

(declare-fun b!1814932 () Bool)

(assert (=> b!1814932 (= e!1159545 false)))

(declare-fun b!1814933 () Bool)

(declare-fun res!815988 () Bool)

(assert (=> b!1814933 (=> (not res!815988) (not e!1159565))))

(declare-fun rulesInvariant!2857 (LexerInterface!3188 List!19877) Bool)

(assert (=> b!1814933 (= res!815988 (rulesInvariant!2857 thiss!24550 rules!3447))))

(declare-fun b!1814934 () Bool)

(declare-fun tp!512526 () Bool)

(assert (=> b!1814934 (= e!1159541 (and e!1159559 tp!512526))))

(declare-fun b!1814935 () Bool)

(declare-fun res!815987 () Bool)

(assert (=> b!1814935 (=> (not res!815987) (not e!1159556))))

(assert (=> b!1814935 (= res!815987 (isEmpty!12535 (_2!11093 lt!705558)))))

(assert (= (and start!179434 res!815989) b!1814894))

(assert (= (and b!1814894 res!815993) b!1814933))

(assert (= (and b!1814933 res!815988) b!1814909))

(assert (= (and b!1814909 res!816002) b!1814899))

(assert (= (and b!1814899 res!815996) b!1814923))

(assert (= (and b!1814923 res!815995) b!1814935))

(assert (= (and b!1814935 res!815987) b!1814915))

(assert (= (and b!1814915 res!815985) b!1814904))

(assert (= (and b!1814904 (not res!815982)) b!1814921))

(assert (= (and b!1814921 (not res!815980)) b!1814895))

(assert (= (and b!1814895 (not res!815983)) b!1814914))

(assert (= (and b!1814914 res!815990) b!1814928))

(assert (= (and b!1814928 res!815991) b!1814913))

(assert (= (and b!1814914 (not res!815998)) b!1814920))

(assert (= (and b!1814920 (not res!815986)) b!1814897))

(assert (= (and b!1814897 (not res!816000)) b!1814929))

(assert (= (and b!1814929 (not res!816001)) b!1814907))

(assert (= (and b!1814907 (not res!815981)) b!1814911))

(assert (= (and b!1814911 (not res!815984)) b!1814917))

(assert (= (and b!1814917 (not res!815997)) b!1814903))

(assert (= (and b!1814903 c!296428) b!1814931))

(assert (= (and b!1814903 (not c!296428)) b!1814898))

(assert (= (and b!1814903 (not res!815994)) b!1814908))

(assert (= (and b!1814908 c!296433) b!1814893))

(assert (= (and b!1814908 (not c!296433)) b!1814900))

(assert (= (and b!1814908 (not res!815992)) b!1814930))

(assert (= (and b!1814930 c!296431) b!1814918))

(assert (= (and b!1814930 (not c!296431)) b!1814902))

(assert (= (and b!1814918 c!296430) b!1814901))

(assert (= (and b!1814918 (not c!296430)) b!1814910))

(assert (= (and b!1814901 res!815979) b!1814932))

(assert (= (and b!1814918 c!296429) b!1814912))

(assert (= (and b!1814918 (not c!296429)) b!1814892))

(assert (= (and b!1814912 res!815999) b!1814922))

(assert (= (and b!1814918 c!296432) b!1814891))

(assert (= (and b!1814918 (not c!296432)) b!1814924))

(assert (= (and start!179434 ((_ is Cons!19806) suffix!1421)) b!1814927))

(assert (= b!1814906 b!1814919))

(assert (= start!179434 b!1814906))

(assert (= b!1814916 b!1814925))

(assert (= b!1814905 b!1814916))

(assert (= start!179434 b!1814905))

(assert (= b!1814896 b!1814926))

(assert (= b!1814934 b!1814896))

(assert (= (and start!179434 ((_ is Cons!19807) rules!3447)) b!1814934))

(declare-fun b_lambda!59867 () Bool)

(assert (=> (not b_lambda!59867) (not b!1814907)))

(declare-fun tb!110983 () Bool)

(declare-fun t!169467 () Bool)

(assert (=> (and b!1814919 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169467) tb!110983))

(declare-fun b!1814951 () Bool)

(declare-fun e!1159584 () Bool)

(declare-fun tp!512533 () Bool)

(declare-fun inv!25832 (Conc!6589) Bool)

(assert (=> b!1814951 (= e!1159584 (and (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))) tp!512533))))

(declare-fun result!133274 () Bool)

(declare-fun inv!25833 (BalanceConc!13122) Bool)

(assert (=> tb!110983 (= result!133274 (and (inv!25833 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))) e!1159584))))

(assert (= tb!110983 b!1814951))

(declare-fun m!2244437 () Bool)

(assert (=> b!1814951 m!2244437))

(declare-fun m!2244439 () Bool)

(assert (=> tb!110983 m!2244439))

(assert (=> b!1814907 t!169467))

(declare-fun b_and!140379 () Bool)

(assert (= b_and!140369 (and (=> t!169467 result!133274) b_and!140379)))

(declare-fun t!169469 () Bool)

(declare-fun tb!110985 () Bool)

(assert (=> (and b!1814925 (= (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169469) tb!110985))

(declare-fun result!133278 () Bool)

(assert (= result!133278 result!133274))

(assert (=> b!1814907 t!169469))

(declare-fun b_and!140381 () Bool)

(assert (= b_and!140373 (and (=> t!169469 result!133278) b_and!140381)))

(declare-fun t!169471 () Bool)

(declare-fun tb!110987 () Bool)

(assert (=> (and b!1814926 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169471) tb!110987))

(declare-fun result!133280 () Bool)

(assert (= result!133280 result!133274))

(assert (=> b!1814907 t!169471))

(declare-fun b_and!140383 () Bool)

(assert (= b_and!140377 (and (=> t!169471 result!133280) b_and!140383)))

(declare-fun b_lambda!59869 () Bool)

(assert (=> (not b_lambda!59869) (not b!1814929)))

(declare-fun tb!110989 () Bool)

(declare-fun t!169473 () Bool)

(assert (=> (and b!1814919 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169473) tb!110989))

(declare-fun b!1814952 () Bool)

(declare-fun e!1159585 () Bool)

(declare-fun tp!512534 () Bool)

(assert (=> b!1814952 (= e!1159585 (and (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))) tp!512534))))

(declare-fun result!133282 () Bool)

(assert (=> tb!110989 (= result!133282 (and (inv!25833 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))) e!1159585))))

(assert (= tb!110989 b!1814952))

(declare-fun m!2244441 () Bool)

(assert (=> b!1814952 m!2244441))

(declare-fun m!2244443 () Bool)

(assert (=> tb!110989 m!2244443))

(assert (=> b!1814929 t!169473))

(declare-fun b_and!140385 () Bool)

(assert (= b_and!140379 (and (=> t!169473 result!133282) b_and!140385)))

(declare-fun t!169475 () Bool)

(declare-fun tb!110991 () Bool)

(assert (=> (and b!1814925 (= (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169475) tb!110991))

(declare-fun result!133284 () Bool)

(assert (= result!133284 result!133282))

(assert (=> b!1814929 t!169475))

(declare-fun b_and!140387 () Bool)

(assert (= b_and!140381 (and (=> t!169475 result!133284) b_and!140387)))

(declare-fun t!169477 () Bool)

(declare-fun tb!110993 () Bool)

(assert (=> (and b!1814926 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169477) tb!110993))

(declare-fun result!133286 () Bool)

(assert (= result!133286 result!133282))

(assert (=> b!1814929 t!169477))

(declare-fun b_and!140389 () Bool)

(assert (= b_and!140383 (and (=> t!169477 result!133286) b_and!140389)))

(declare-fun b_lambda!59871 () Bool)

(assert (=> (not b_lambda!59871) (not b!1814929)))

(declare-fun t!169479 () Bool)

(declare-fun tb!110995 () Bool)

(assert (=> (and b!1814919 (= (toValue!5090 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169479) tb!110995))

(declare-fun result!133288 () Bool)

(assert (=> tb!110995 (= result!133288 (inv!21 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(declare-fun m!2244445 () Bool)

(assert (=> tb!110995 m!2244445))

(assert (=> b!1814929 t!169479))

(declare-fun b_and!140391 () Bool)

(assert (= b_and!140367 (and (=> t!169479 result!133288) b_and!140391)))

(declare-fun tb!110997 () Bool)

(declare-fun t!169481 () Bool)

(assert (=> (and b!1814925 (= (toValue!5090 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169481) tb!110997))

(declare-fun result!133292 () Bool)

(assert (= result!133292 result!133288))

(assert (=> b!1814929 t!169481))

(declare-fun b_and!140393 () Bool)

(assert (= b_and!140371 (and (=> t!169481 result!133292) b_and!140393)))

(declare-fun t!169483 () Bool)

(declare-fun tb!110999 () Bool)

(assert (=> (and b!1814926 (= (toValue!5090 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169483) tb!110999))

(declare-fun result!133294 () Bool)

(assert (= result!133294 result!133288))

(assert (=> b!1814929 t!169483))

(declare-fun b_and!140395 () Bool)

(assert (= b_and!140375 (and (=> t!169483 result!133294) b_and!140395)))

(declare-fun m!2244447 () Bool)

(assert (=> b!1814928 m!2244447))

(assert (=> b!1814928 m!2244447))

(declare-fun m!2244449 () Bool)

(assert (=> b!1814928 m!2244449))

(assert (=> b!1814928 m!2244449))

(declare-fun m!2244451 () Bool)

(assert (=> b!1814928 m!2244451))

(declare-fun m!2244453 () Bool)

(assert (=> b!1814928 m!2244453))

(declare-fun m!2244455 () Bool)

(assert (=> b!1814896 m!2244455))

(declare-fun m!2244457 () Bool)

(assert (=> b!1814896 m!2244457))

(declare-fun m!2244459 () Bool)

(assert (=> start!179434 m!2244459))

(declare-fun m!2244461 () Bool)

(assert (=> b!1814916 m!2244461))

(declare-fun m!2244463 () Bool)

(assert (=> b!1814916 m!2244463))

(declare-fun m!2244465 () Bool)

(assert (=> b!1814933 m!2244465))

(declare-fun m!2244467 () Bool)

(assert (=> b!1814895 m!2244467))

(declare-fun m!2244469 () Bool)

(assert (=> b!1814895 m!2244469))

(declare-fun m!2244471 () Bool)

(assert (=> b!1814895 m!2244471))

(declare-fun m!2244473 () Bool)

(assert (=> b!1814895 m!2244473))

(declare-fun m!2244475 () Bool)

(assert (=> b!1814911 m!2244475))

(assert (=> b!1814911 m!2244475))

(declare-fun m!2244477 () Bool)

(assert (=> b!1814911 m!2244477))

(declare-fun m!2244479 () Bool)

(assert (=> b!1814911 m!2244479))

(declare-fun m!2244481 () Bool)

(assert (=> b!1814911 m!2244481))

(declare-fun m!2244483 () Bool)

(assert (=> b!1814911 m!2244483))

(declare-fun m!2244485 () Bool)

(assert (=> b!1814905 m!2244485))

(declare-fun m!2244487 () Bool)

(assert (=> b!1814904 m!2244487))

(declare-fun m!2244489 () Bool)

(assert (=> b!1814904 m!2244489))

(declare-fun m!2244491 () Bool)

(assert (=> b!1814904 m!2244491))

(declare-fun m!2244493 () Bool)

(assert (=> b!1814909 m!2244493))

(declare-fun m!2244495 () Bool)

(assert (=> b!1814921 m!2244495))

(declare-fun m!2244497 () Bool)

(assert (=> b!1814912 m!2244497))

(declare-fun m!2244499 () Bool)

(assert (=> b!1814912 m!2244499))

(declare-fun m!2244501 () Bool)

(assert (=> b!1814906 m!2244501))

(declare-fun m!2244503 () Bool)

(assert (=> b!1814906 m!2244503))

(declare-fun m!2244505 () Bool)

(assert (=> b!1814899 m!2244505))

(declare-fun m!2244507 () Bool)

(assert (=> b!1814899 m!2244507))

(declare-fun m!2244509 () Bool)

(assert (=> b!1814899 m!2244509))

(declare-fun m!2244511 () Bool)

(assert (=> b!1814899 m!2244511))

(declare-fun m!2244513 () Bool)

(assert (=> b!1814894 m!2244513))

(declare-fun m!2244515 () Bool)

(assert (=> b!1814935 m!2244515))

(declare-fun m!2244517 () Bool)

(assert (=> b!1814918 m!2244517))

(declare-fun m!2244519 () Bool)

(assert (=> b!1814918 m!2244519))

(declare-fun m!2244521 () Bool)

(assert (=> b!1814929 m!2244521))

(assert (=> b!1814929 m!2244521))

(declare-fun m!2244523 () Bool)

(assert (=> b!1814929 m!2244523))

(assert (=> b!1814929 m!2244523))

(declare-fun m!2244525 () Bool)

(assert (=> b!1814929 m!2244525))

(declare-fun m!2244527 () Bool)

(assert (=> b!1814929 m!2244527))

(declare-fun m!2244529 () Bool)

(assert (=> b!1814931 m!2244529))

(declare-fun m!2244531 () Bool)

(assert (=> b!1814931 m!2244531))

(declare-fun m!2244533 () Bool)

(assert (=> b!1814931 m!2244533))

(declare-fun m!2244535 () Bool)

(assert (=> b!1814931 m!2244535))

(declare-fun m!2244537 () Bool)

(assert (=> b!1814931 m!2244537))

(declare-fun m!2244539 () Bool)

(assert (=> b!1814931 m!2244539))

(declare-fun m!2244541 () Bool)

(assert (=> b!1814931 m!2244541))

(declare-fun m!2244543 () Bool)

(assert (=> b!1814931 m!2244543))

(declare-fun m!2244545 () Bool)

(assert (=> b!1814931 m!2244545))

(declare-fun m!2244547 () Bool)

(assert (=> b!1814931 m!2244547))

(assert (=> b!1814931 m!2244543))

(declare-fun m!2244549 () Bool)

(assert (=> b!1814931 m!2244549))

(declare-fun m!2244551 () Bool)

(assert (=> b!1814897 m!2244551))

(declare-fun m!2244553 () Bool)

(assert (=> b!1814897 m!2244553))

(declare-fun m!2244555 () Bool)

(assert (=> b!1814891 m!2244555))

(declare-fun m!2244557 () Bool)

(assert (=> b!1814914 m!2244557))

(assert (=> b!1814914 m!2244447))

(declare-fun m!2244559 () Bool)

(assert (=> b!1814914 m!2244559))

(declare-fun m!2244561 () Bool)

(assert (=> b!1814914 m!2244561))

(declare-fun m!2244563 () Bool)

(assert (=> b!1814914 m!2244563))

(declare-fun m!2244565 () Bool)

(assert (=> b!1814914 m!2244565))

(assert (=> b!1814914 m!2244557))

(declare-fun m!2244567 () Bool)

(assert (=> b!1814914 m!2244567))

(declare-fun m!2244569 () Bool)

(assert (=> b!1814914 m!2244569))

(declare-fun m!2244571 () Bool)

(assert (=> b!1814914 m!2244571))

(declare-fun m!2244573 () Bool)

(assert (=> b!1814914 m!2244573))

(declare-fun m!2244575 () Bool)

(assert (=> b!1814914 m!2244575))

(declare-fun m!2244577 () Bool)

(assert (=> b!1814914 m!2244577))

(declare-fun m!2244579 () Bool)

(assert (=> b!1814914 m!2244579))

(declare-fun m!2244581 () Bool)

(assert (=> b!1814914 m!2244581))

(declare-fun m!2244583 () Bool)

(assert (=> b!1814914 m!2244583))

(declare-fun m!2244585 () Bool)

(assert (=> b!1814920 m!2244585))

(declare-fun m!2244587 () Bool)

(assert (=> b!1814917 m!2244587))

(declare-fun m!2244589 () Bool)

(assert (=> b!1814917 m!2244589))

(declare-fun m!2244591 () Bool)

(assert (=> b!1814917 m!2244591))

(declare-fun m!2244593 () Bool)

(assert (=> b!1814917 m!2244593))

(declare-fun m!2244595 () Bool)

(assert (=> b!1814917 m!2244595))

(assert (=> b!1814917 m!2244595))

(declare-fun m!2244597 () Bool)

(assert (=> b!1814917 m!2244597))

(declare-fun m!2244599 () Bool)

(assert (=> b!1814917 m!2244599))

(declare-fun m!2244601 () Bool)

(assert (=> b!1814901 m!2244601))

(declare-fun m!2244603 () Bool)

(assert (=> b!1814901 m!2244603))

(declare-fun m!2244605 () Bool)

(assert (=> b!1814930 m!2244605))

(declare-fun m!2244607 () Bool)

(assert (=> b!1814930 m!2244607))

(declare-fun m!2244609 () Bool)

(assert (=> b!1814903 m!2244609))

(declare-fun m!2244611 () Bool)

(assert (=> b!1814903 m!2244611))

(declare-fun m!2244613 () Bool)

(assert (=> b!1814903 m!2244613))

(declare-fun m!2244615 () Bool)

(assert (=> b!1814907 m!2244615))

(declare-fun m!2244617 () Bool)

(assert (=> b!1814923 m!2244617))

(declare-fun m!2244619 () Bool)

(assert (=> b!1814893 m!2244619))

(check-sat b_and!140387 (not b!1814903) (not b!1814916) b_and!140393 b_and!140385 (not b!1814921) (not b!1814912) (not b_next!50759) (not b!1814933) (not b!1814905) (not b!1814927) (not b_lambda!59867) (not b!1814896) (not tb!110983) (not b!1814952) tp_is_empty!8017 (not b_next!50751) (not b!1814934) (not b!1814909) (not b!1814897) (not tb!110995) (not b!1814923) (not b_lambda!59871) (not b!1814951) (not b!1814928) (not b_next!50757) (not b!1814918) b_and!140389 b_and!140395 (not b_lambda!59869) (not b!1814920) (not b_next!50755) (not b!1814931) b_and!140391 (not b_next!50753) (not b!1814901) (not b!1814906) (not b!1814894) (not b!1814935) (not b!1814911) (not b!1814893) (not start!179434) (not b!1814899) (not b!1814930) (not b!1814917) (not b!1814891) (not b!1814914) (not b!1814929) (not b!1814895) (not tb!110989) (not b_next!50761) (not b!1814904))
(check-sat (not b_next!50751) b_and!140387 (not b_next!50757) b_and!140393 b_and!140385 (not b_next!50759) (not b_next!50755) (not b_next!50761) b_and!140389 b_and!140395 b_and!140391 (not b_next!50753))
(get-model)

(declare-fun d!556628 () Bool)

(declare-fun lt!705612 () Int)

(assert (=> d!556628 (>= lt!705612 0)))

(declare-fun e!1159643 () Int)

(assert (=> d!556628 (= lt!705612 e!1159643)))

(declare-fun c!296456 () Bool)

(assert (=> d!556628 (= c!296456 ((_ is Nil!19806) lt!705565))))

(assert (=> d!556628 (= (size!15750 lt!705565) lt!705612)))

(declare-fun b!1815055 () Bool)

(assert (=> b!1815055 (= e!1159643 0)))

(declare-fun b!1815056 () Bool)

(assert (=> b!1815056 (= e!1159643 (+ 1 (size!15750 (t!169485 lt!705565))))))

(assert (= (and d!556628 c!296456) b!1815055))

(assert (= (and d!556628 (not c!296456)) b!1815056))

(declare-fun m!2244725 () Bool)

(assert (=> b!1815056 m!2244725))

(assert (=> b!1814917 d!556628))

(declare-fun d!556630 () Bool)

(declare-fun lt!705615 () List!19876)

(assert (=> d!556630 (= (++!5389 lt!705565 lt!705615) lt!705554)))

(declare-fun e!1159646 () List!19876)

(assert (=> d!556630 (= lt!705615 e!1159646)))

(declare-fun c!296459 () Bool)

(assert (=> d!556630 (= c!296459 ((_ is Cons!19806) lt!705565))))

(assert (=> d!556630 (>= (size!15750 lt!705554) (size!15750 lt!705565))))

(assert (=> d!556630 (= (getSuffix!966 lt!705554 lt!705565) lt!705615)))

(declare-fun b!1815061 () Bool)

(declare-fun tail!2685 (List!19876) List!19876)

(assert (=> b!1815061 (= e!1159646 (getSuffix!966 (tail!2685 lt!705554) (t!169485 lt!705565)))))

(declare-fun b!1815062 () Bool)

(assert (=> b!1815062 (= e!1159646 lt!705554)))

(assert (= (and d!556630 c!296459) b!1815061))

(assert (= (and d!556630 (not c!296459)) b!1815062))

(declare-fun m!2244727 () Bool)

(assert (=> d!556630 m!2244727))

(declare-fun m!2244729 () Bool)

(assert (=> d!556630 m!2244729))

(assert (=> d!556630 m!2244589))

(declare-fun m!2244731 () Bool)

(assert (=> b!1815061 m!2244731))

(assert (=> b!1815061 m!2244731))

(declare-fun m!2244733 () Bool)

(assert (=> b!1815061 m!2244733))

(assert (=> b!1814917 d!556630))

(declare-fun d!556632 () Bool)

(assert (=> d!556632 (= (_2!11093 lt!705567) lt!705535)))

(declare-fun lt!705618 () Unit!34499)

(declare-fun choose!11427 (List!19876 List!19876 List!19876 List!19876 List!19876) Unit!34499)

(assert (=> d!556632 (= lt!705618 (choose!11427 lt!705565 (_2!11093 lt!705567) lt!705565 lt!705535 lt!705554))))

(assert (=> d!556632 (isPrefix!1799 lt!705565 lt!705554)))

(assert (=> d!556632 (= (lemmaSamePrefixThenSameSuffix!910 lt!705565 (_2!11093 lt!705567) lt!705565 lt!705535 lt!705554) lt!705618)))

(declare-fun bs!407127 () Bool)

(assert (= bs!407127 d!556632))

(declare-fun m!2244735 () Bool)

(assert (=> bs!407127 m!2244735))

(assert (=> bs!407127 m!2244565))

(assert (=> b!1814917 d!556632))

(declare-fun d!556634 () Bool)

(assert (=> d!556634 (= (maxPrefixOneRule!1111 thiss!24550 (rule!5669 (_1!11093 lt!705567)) lt!705554) (Some!4143 (tuple2!19383 (Token!6685 (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) (seqFromList!2528 lt!705565)) (rule!5669 (_1!11093 lt!705567)) (size!15750 lt!705565) lt!705565) (_2!11093 lt!705567))))))

(declare-fun lt!705621 () Unit!34499)

(declare-fun choose!11428 (LexerInterface!3188 List!19877 List!19876 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> d!556634 (= lt!705621 (choose!11428 thiss!24550 rules!3447 lt!705565 lt!705554 (_2!11093 lt!705567) (rule!5669 (_1!11093 lt!705567))))))

(assert (=> d!556634 (not (isEmpty!12534 rules!3447))))

(assert (=> d!556634 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!489 thiss!24550 rules!3447 lt!705565 lt!705554 (_2!11093 lt!705567) (rule!5669 (_1!11093 lt!705567))) lt!705621)))

(declare-fun bs!407128 () Bool)

(assert (= bs!407128 d!556634))

(assert (=> bs!407128 m!2244599))

(assert (=> bs!407128 m!2244589))

(assert (=> bs!407128 m!2244595))

(assert (=> bs!407128 m!2244597))

(assert (=> bs!407128 m!2244595))

(declare-fun m!2244737 () Bool)

(assert (=> bs!407128 m!2244737))

(assert (=> bs!407128 m!2244513))

(assert (=> b!1814917 d!556634))

(declare-fun d!556636 () Bool)

(assert (=> d!556636 (= (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) (seqFromList!2528 lt!705565)) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (seqFromList!2528 lt!705565)))))

(declare-fun b_lambda!59875 () Bool)

(assert (=> (not b_lambda!59875) (not d!556636)))

(declare-fun t!169494 () Bool)

(declare-fun tb!111007 () Bool)

(assert (=> (and b!1814919 (= (toValue!5090 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169494) tb!111007))

(declare-fun result!133302 () Bool)

(assert (=> tb!111007 (= result!133302 (inv!21 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (seqFromList!2528 lt!705565))))))

(declare-fun m!2244739 () Bool)

(assert (=> tb!111007 m!2244739))

(assert (=> d!556636 t!169494))

(declare-fun b_and!140403 () Bool)

(assert (= b_and!140391 (and (=> t!169494 result!133302) b_and!140403)))

(declare-fun t!169496 () Bool)

(declare-fun tb!111009 () Bool)

(assert (=> (and b!1814925 (= (toValue!5090 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169496) tb!111009))

(declare-fun result!133304 () Bool)

(assert (= result!133304 result!133302))

(assert (=> d!556636 t!169496))

(declare-fun b_and!140405 () Bool)

(assert (= b_and!140393 (and (=> t!169496 result!133304) b_and!140405)))

(declare-fun t!169498 () Bool)

(declare-fun tb!111011 () Bool)

(assert (=> (and b!1814926 (= (toValue!5090 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169498) tb!111011))

(declare-fun result!133306 () Bool)

(assert (= result!133306 result!133302))

(assert (=> d!556636 t!169498))

(declare-fun b_and!140407 () Bool)

(assert (= b_and!140395 (and (=> t!169498 result!133306) b_and!140407)))

(assert (=> d!556636 m!2244595))

(declare-fun m!2244741 () Bool)

(assert (=> d!556636 m!2244741))

(assert (=> b!1814917 d!556636))

(declare-fun b!1815101 () Bool)

(declare-fun res!816094 () Bool)

(declare-fun e!1159668 () Bool)

(assert (=> b!1815101 (=> (not res!816094) (not e!1159668))))

(declare-fun lt!705691 () Option!4144)

(assert (=> b!1815101 (= res!816094 (= (++!5389 (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705691)))) (_2!11093 (get!6139 lt!705691))) lt!705554))))

(declare-fun b!1815102 () Bool)

(declare-fun e!1159669 () Option!4144)

(assert (=> b!1815102 (= e!1159669 None!4143)))

(declare-fun b!1815103 () Bool)

(declare-fun res!816092 () Bool)

(assert (=> b!1815103 (=> (not res!816092) (not e!1159668))))

(assert (=> b!1815103 (= res!816092 (= (value!111104 (_1!11093 (get!6139 lt!705691))) (apply!5359 (transformation!3559 (rule!5669 (_1!11093 (get!6139 lt!705691)))) (seqFromList!2528 (originalCharacters!4373 (_1!11093 (get!6139 lt!705691)))))))))

(declare-fun b!1815104 () Bool)

(declare-fun e!1159670 () Bool)

(declare-datatypes ((tuple2!19388 0))(
  ( (tuple2!19389 (_1!11096 List!19876) (_2!11096 List!19876)) )
))
(declare-fun findLongestMatchInner!485 (Regex!4887 List!19876 Int List!19876 List!19876 Int) tuple2!19388)

(assert (=> b!1815104 (= e!1159670 (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) (_1!11096 (findLongestMatchInner!485 (regex!3559 (rule!5669 (_1!11093 lt!705567))) Nil!19806 (size!15750 Nil!19806) lt!705554 lt!705554 (size!15750 lt!705554)))))))

(declare-fun b!1815105 () Bool)

(declare-fun res!816091 () Bool)

(assert (=> b!1815105 (=> (not res!816091) (not e!1159668))))

(assert (=> b!1815105 (= res!816091 (= (rule!5669 (_1!11093 (get!6139 lt!705691))) (rule!5669 (_1!11093 lt!705567))))))

(declare-fun b!1815106 () Bool)

(declare-fun res!816097 () Bool)

(assert (=> b!1815106 (=> (not res!816097) (not e!1159668))))

(assert (=> b!1815106 (= res!816097 (< (size!15750 (_2!11093 (get!6139 lt!705691))) (size!15750 lt!705554)))))

(declare-fun b!1815107 () Bool)

(declare-fun lt!705692 () tuple2!19388)

(assert (=> b!1815107 (= e!1159669 (Some!4143 (tuple2!19383 (Token!6685 (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) (seqFromList!2528 (_1!11096 lt!705692))) (rule!5669 (_1!11093 lt!705567)) (size!15749 (seqFromList!2528 (_1!11096 lt!705692))) (_1!11096 lt!705692)) (_2!11096 lt!705692))))))

(declare-fun lt!705688 () Unit!34499)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!469 (Regex!4887 List!19876) Unit!34499)

(assert (=> b!1815107 (= lt!705688 (longestMatchIsAcceptedByMatchOrIsEmpty!469 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705554))))

(declare-fun res!816093 () Bool)

(assert (=> b!1815107 (= res!816093 (isEmpty!12535 (_1!11096 (findLongestMatchInner!485 (regex!3559 (rule!5669 (_1!11093 lt!705567))) Nil!19806 (size!15750 Nil!19806) lt!705554 lt!705554 (size!15750 lt!705554)))))))

(assert (=> b!1815107 (=> res!816093 e!1159670)))

(assert (=> b!1815107 e!1159670))

(declare-fun lt!705690 () Unit!34499)

(assert (=> b!1815107 (= lt!705690 lt!705688)))

(declare-fun lt!705689 () Unit!34499)

(assert (=> b!1815107 (= lt!705689 (lemmaSemiInverse!697 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) (seqFromList!2528 (_1!11096 lt!705692))))))

(declare-fun b!1815108 () Bool)

(declare-fun e!1159671 () Bool)

(assert (=> b!1815108 (= e!1159671 e!1159668)))

(declare-fun res!816096 () Bool)

(assert (=> b!1815108 (=> (not res!816096) (not e!1159668))))

(assert (=> b!1815108 (= res!816096 (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705691))))))))

(declare-fun d!556638 () Bool)

(assert (=> d!556638 e!1159671))

(declare-fun res!816095 () Bool)

(assert (=> d!556638 (=> res!816095 e!1159671)))

(declare-fun isEmpty!12538 (Option!4144) Bool)

(assert (=> d!556638 (= res!816095 (isEmpty!12538 lt!705691))))

(assert (=> d!556638 (= lt!705691 e!1159669)))

(declare-fun c!296465 () Bool)

(assert (=> d!556638 (= c!296465 (isEmpty!12535 (_1!11096 lt!705692)))))

(declare-fun findLongestMatch!412 (Regex!4887 List!19876) tuple2!19388)

(assert (=> d!556638 (= lt!705692 (findLongestMatch!412 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705554))))

(assert (=> d!556638 (ruleValid!1057 thiss!24550 (rule!5669 (_1!11093 lt!705567)))))

(assert (=> d!556638 (= (maxPrefixOneRule!1111 thiss!24550 (rule!5669 (_1!11093 lt!705567)) lt!705554) lt!705691)))

(declare-fun b!1815109 () Bool)

(assert (=> b!1815109 (= e!1159668 (= (size!15748 (_1!11093 (get!6139 lt!705691))) (size!15750 (originalCharacters!4373 (_1!11093 (get!6139 lt!705691))))))))

(assert (= (and d!556638 c!296465) b!1815102))

(assert (= (and d!556638 (not c!296465)) b!1815107))

(assert (= (and b!1815107 (not res!816093)) b!1815104))

(assert (= (and d!556638 (not res!816095)) b!1815108))

(assert (= (and b!1815108 res!816096) b!1815101))

(assert (= (and b!1815101 res!816094) b!1815106))

(assert (= (and b!1815106 res!816097) b!1815105))

(assert (= (and b!1815105 res!816091) b!1815103))

(assert (= (and b!1815103 res!816092) b!1815109))

(declare-fun m!2244807 () Bool)

(assert (=> b!1815104 m!2244807))

(assert (=> b!1815104 m!2244729))

(assert (=> b!1815104 m!2244807))

(assert (=> b!1815104 m!2244729))

(declare-fun m!2244809 () Bool)

(assert (=> b!1815104 m!2244809))

(declare-fun m!2244811 () Bool)

(assert (=> b!1815104 m!2244811))

(declare-fun m!2244813 () Bool)

(assert (=> b!1815103 m!2244813))

(declare-fun m!2244815 () Bool)

(assert (=> b!1815103 m!2244815))

(assert (=> b!1815103 m!2244815))

(declare-fun m!2244817 () Bool)

(assert (=> b!1815103 m!2244817))

(assert (=> b!1815106 m!2244813))

(declare-fun m!2244819 () Bool)

(assert (=> b!1815106 m!2244819))

(assert (=> b!1815106 m!2244729))

(assert (=> b!1815101 m!2244813))

(declare-fun m!2244821 () Bool)

(assert (=> b!1815101 m!2244821))

(assert (=> b!1815101 m!2244821))

(declare-fun m!2244823 () Bool)

(assert (=> b!1815101 m!2244823))

(assert (=> b!1815101 m!2244823))

(declare-fun m!2244825 () Bool)

(assert (=> b!1815101 m!2244825))

(assert (=> b!1815108 m!2244813))

(assert (=> b!1815108 m!2244821))

(assert (=> b!1815108 m!2244821))

(assert (=> b!1815108 m!2244823))

(assert (=> b!1815108 m!2244823))

(declare-fun m!2244827 () Bool)

(assert (=> b!1815108 m!2244827))

(assert (=> b!1815109 m!2244813))

(declare-fun m!2244829 () Bool)

(assert (=> b!1815109 m!2244829))

(assert (=> b!1815107 m!2244807))

(assert (=> b!1815107 m!2244807))

(assert (=> b!1815107 m!2244729))

(assert (=> b!1815107 m!2244809))

(declare-fun m!2244831 () Bool)

(assert (=> b!1815107 m!2244831))

(declare-fun m!2244833 () Bool)

(assert (=> b!1815107 m!2244833))

(declare-fun m!2244835 () Bool)

(assert (=> b!1815107 m!2244835))

(declare-fun m!2244837 () Bool)

(assert (=> b!1815107 m!2244837))

(assert (=> b!1815107 m!2244833))

(declare-fun m!2244839 () Bool)

(assert (=> b!1815107 m!2244839))

(assert (=> b!1815107 m!2244729))

(assert (=> b!1815107 m!2244833))

(declare-fun m!2244841 () Bool)

(assert (=> b!1815107 m!2244841))

(assert (=> b!1815107 m!2244833))

(assert (=> b!1815105 m!2244813))

(declare-fun m!2244843 () Bool)

(assert (=> d!556638 m!2244843))

(declare-fun m!2244845 () Bool)

(assert (=> d!556638 m!2244845))

(declare-fun m!2244847 () Bool)

(assert (=> d!556638 m!2244847))

(declare-fun m!2244849 () Bool)

(assert (=> d!556638 m!2244849))

(assert (=> b!1814917 d!556638))

(declare-fun d!556648 () Bool)

(declare-fun fromListB!1156 (List!19876) BalanceConc!13122)

(assert (=> d!556648 (= (seqFromList!2528 lt!705565) (fromListB!1156 lt!705565))))

(declare-fun bs!407129 () Bool)

(assert (= bs!407129 d!556648))

(declare-fun m!2244863 () Bool)

(assert (=> bs!407129 m!2244863))

(assert (=> b!1814917 d!556648))

(declare-fun d!556652 () Bool)

(assert (=> d!556652 (= (inv!25825 (tag!3971 (rule!5669 token!523))) (= (mod (str.len (value!111103 (tag!3971 (rule!5669 token!523)))) 2) 0))))

(assert (=> b!1814916 d!556652))

(declare-fun d!556656 () Bool)

(declare-fun res!816108 () Bool)

(declare-fun e!1159682 () Bool)

(assert (=> d!556656 (=> (not res!816108) (not e!1159682))))

(declare-fun semiInverseModEq!1422 (Int Int) Bool)

(assert (=> d!556656 (= res!816108 (semiInverseModEq!1422 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 token!523)))))))

(assert (=> d!556656 (= (inv!25830 (transformation!3559 (rule!5669 token!523))) e!1159682)))

(declare-fun b!1815128 () Bool)

(declare-fun equivClasses!1363 (Int Int) Bool)

(assert (=> b!1815128 (= e!1159682 (equivClasses!1363 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 token!523)))))))

(assert (= (and d!556656 res!816108) b!1815128))

(declare-fun m!2244881 () Bool)

(assert (=> d!556656 m!2244881))

(declare-fun m!2244883 () Bool)

(assert (=> b!1815128 m!2244883))

(assert (=> b!1814916 d!556656))

(declare-fun d!556660 () Bool)

(declare-fun c!296472 () Bool)

(assert (=> d!556660 (= c!296472 (isEmpty!12535 lt!705521))))

(declare-fun e!1159685 () Bool)

(assert (=> d!556660 (= (prefixMatch!770 lt!705518 lt!705521) e!1159685)))

(declare-fun b!1815133 () Bool)

(declare-fun lostCause!616 (Regex!4887) Bool)

(assert (=> b!1815133 (= e!1159685 (not (lostCause!616 lt!705518)))))

(declare-fun b!1815134 () Bool)

(declare-fun derivativeStep!1276 (Regex!4887 C!9948) Regex!4887)

(assert (=> b!1815134 (= e!1159685 (prefixMatch!770 (derivativeStep!1276 lt!705518 (head!4224 lt!705521)) (tail!2685 lt!705521)))))

(assert (= (and d!556660 c!296472) b!1815133))

(assert (= (and d!556660 (not c!296472)) b!1815134))

(declare-fun m!2244885 () Bool)

(assert (=> d!556660 m!2244885))

(declare-fun m!2244887 () Bool)

(assert (=> b!1815133 m!2244887))

(declare-fun m!2244889 () Bool)

(assert (=> b!1815134 m!2244889))

(assert (=> b!1815134 m!2244889))

(declare-fun m!2244891 () Bool)

(assert (=> b!1815134 m!2244891))

(declare-fun m!2244893 () Bool)

(assert (=> b!1815134 m!2244893))

(assert (=> b!1815134 m!2244891))

(assert (=> b!1815134 m!2244893))

(declare-fun m!2244895 () Bool)

(assert (=> b!1815134 m!2244895))

(assert (=> b!1814895 d!556660))

(declare-fun lt!705702 () List!19876)

(declare-fun b!1815146 () Bool)

(declare-fun e!1159690 () Bool)

(assert (=> b!1815146 (= e!1159690 (or (not (= (Cons!19806 (head!4224 suffix!1421) Nil!19806) Nil!19806)) (= lt!705702 lt!705523)))))

(declare-fun b!1815144 () Bool)

(declare-fun e!1159691 () List!19876)

(assert (=> b!1815144 (= e!1159691 (Cons!19806 (h!25207 lt!705523) (++!5389 (t!169485 lt!705523) (Cons!19806 (head!4224 suffix!1421) Nil!19806))))))

(declare-fun d!556662 () Bool)

(assert (=> d!556662 e!1159690))

(declare-fun res!816114 () Bool)

(assert (=> d!556662 (=> (not res!816114) (not e!1159690))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2893 (List!19876) (InoxSet C!9948))

(assert (=> d!556662 (= res!816114 (= (content!2893 lt!705702) ((_ map or) (content!2893 lt!705523) (content!2893 (Cons!19806 (head!4224 suffix!1421) Nil!19806)))))))

(assert (=> d!556662 (= lt!705702 e!1159691)))

(declare-fun c!296475 () Bool)

(assert (=> d!556662 (= c!296475 ((_ is Nil!19806) lt!705523))))

(assert (=> d!556662 (= (++!5389 lt!705523 (Cons!19806 (head!4224 suffix!1421) Nil!19806)) lt!705702)))

(declare-fun b!1815145 () Bool)

(declare-fun res!816113 () Bool)

(assert (=> b!1815145 (=> (not res!816113) (not e!1159690))))

(assert (=> b!1815145 (= res!816113 (= (size!15750 lt!705702) (+ (size!15750 lt!705523) (size!15750 (Cons!19806 (head!4224 suffix!1421) Nil!19806)))))))

(declare-fun b!1815143 () Bool)

(assert (=> b!1815143 (= e!1159691 (Cons!19806 (head!4224 suffix!1421) Nil!19806))))

(assert (= (and d!556662 c!296475) b!1815143))

(assert (= (and d!556662 (not c!296475)) b!1815144))

(assert (= (and d!556662 res!816114) b!1815145))

(assert (= (and b!1815145 res!816113) b!1815146))

(declare-fun m!2244897 () Bool)

(assert (=> b!1815144 m!2244897))

(declare-fun m!2244899 () Bool)

(assert (=> d!556662 m!2244899))

(declare-fun m!2244901 () Bool)

(assert (=> d!556662 m!2244901))

(declare-fun m!2244903 () Bool)

(assert (=> d!556662 m!2244903))

(declare-fun m!2244905 () Bool)

(assert (=> b!1815145 m!2244905))

(declare-fun m!2244907 () Bool)

(assert (=> b!1815145 m!2244907))

(declare-fun m!2244909 () Bool)

(assert (=> b!1815145 m!2244909))

(assert (=> b!1814895 d!556662))

(declare-fun d!556664 () Bool)

(assert (=> d!556664 (= (head!4224 suffix!1421) (h!25207 suffix!1421))))

(assert (=> b!1814895 d!556664))

(declare-fun d!556666 () Bool)

(declare-fun lt!705705 () Unit!34499)

(declare-fun lemma!429 (List!19877 LexerInterface!3188 List!19877) Unit!34499)

(assert (=> d!556666 (= lt!705705 (lemma!429 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!71057 () Int)

(declare-datatypes ((List!19880 0))(
  ( (Nil!19810) (Cons!19810 (h!25211 Regex!4887) (t!169549 List!19880)) )
))
(declare-fun generalisedUnion!437 (List!19880) Regex!4887)

(declare-fun map!4088 (List!19877 Int) List!19880)

(assert (=> d!556666 (= (rulesRegex!915 thiss!24550 rules!3447) (generalisedUnion!437 (map!4088 rules!3447 lambda!71057)))))

(declare-fun bs!407131 () Bool)

(assert (= bs!407131 d!556666))

(declare-fun m!2244911 () Bool)

(assert (=> bs!407131 m!2244911))

(declare-fun m!2244913 () Bool)

(assert (=> bs!407131 m!2244913))

(assert (=> bs!407131 m!2244913))

(declare-fun m!2244915 () Bool)

(assert (=> bs!407131 m!2244915))

(assert (=> b!1814895 d!556666))

(declare-fun b!1815158 () Bool)

(declare-fun e!1159698 () Int)

(assert (=> b!1815158 (= e!1159698 (- 1))))

(declare-fun b!1815157 () Bool)

(assert (=> b!1815157 (= e!1159698 (+ 1 (getIndex!224 (t!169486 rules!3447) (rule!5669 token!523))))))

(declare-fun b!1815155 () Bool)

(declare-fun e!1159697 () Int)

(assert (=> b!1815155 (= e!1159697 0)))

(declare-fun b!1815156 () Bool)

(assert (=> b!1815156 (= e!1159697 e!1159698)))

(declare-fun c!296480 () Bool)

(assert (=> b!1815156 (= c!296480 (and ((_ is Cons!19807) rules!3447) (not (= (h!25208 rules!3447) (rule!5669 token!523)))))))

(declare-fun d!556668 () Bool)

(declare-fun lt!705708 () Int)

(assert (=> d!556668 (>= lt!705708 0)))

(assert (=> d!556668 (= lt!705708 e!1159697)))

(declare-fun c!296481 () Bool)

(assert (=> d!556668 (= c!296481 (and ((_ is Cons!19807) rules!3447) (= (h!25208 rules!3447) (rule!5669 token!523))))))

(assert (=> d!556668 (contains!3593 rules!3447 (rule!5669 token!523))))

(assert (=> d!556668 (= (getIndex!224 rules!3447 (rule!5669 token!523)) lt!705708)))

(assert (= (and d!556668 c!296481) b!1815155))

(assert (= (and d!556668 (not c!296481)) b!1815156))

(assert (= (and b!1815156 c!296480) b!1815157))

(assert (= (and b!1815156 (not c!296480)) b!1815158))

(declare-fun m!2244917 () Bool)

(assert (=> b!1815157 m!2244917))

(declare-fun m!2244919 () Bool)

(assert (=> d!556668 m!2244919))

(assert (=> b!1814918 d!556668))

(declare-fun b!1815162 () Bool)

(declare-fun e!1159700 () Int)

(assert (=> b!1815162 (= e!1159700 (- 1))))

(declare-fun b!1815161 () Bool)

(assert (=> b!1815161 (= e!1159700 (+ 1 (getIndex!224 (t!169486 rules!3447) (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815159 () Bool)

(declare-fun e!1159699 () Int)

(assert (=> b!1815159 (= e!1159699 0)))

(declare-fun b!1815160 () Bool)

(assert (=> b!1815160 (= e!1159699 e!1159700)))

(declare-fun c!296482 () Bool)

(assert (=> b!1815160 (= c!296482 (and ((_ is Cons!19807) rules!3447) (not (= (h!25208 rules!3447) (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun d!556670 () Bool)

(declare-fun lt!705709 () Int)

(assert (=> d!556670 (>= lt!705709 0)))

(assert (=> d!556670 (= lt!705709 e!1159699)))

(declare-fun c!296483 () Bool)

(assert (=> d!556670 (= c!296483 (and ((_ is Cons!19807) rules!3447) (= (h!25208 rules!3447) (rule!5669 (_1!11093 lt!705567)))))))

(assert (=> d!556670 (contains!3593 rules!3447 (rule!5669 (_1!11093 lt!705567)))))

(assert (=> d!556670 (= (getIndex!224 rules!3447 (rule!5669 (_1!11093 lt!705567))) lt!705709)))

(assert (= (and d!556670 c!296483) b!1815159))

(assert (= (and d!556670 (not c!296483)) b!1815160))

(assert (= (and b!1815160 c!296482) b!1815161))

(assert (= (and b!1815160 (not c!296482)) b!1815162))

(declare-fun m!2244921 () Bool)

(assert (=> b!1815161 m!2244921))

(declare-fun m!2244923 () Bool)

(assert (=> d!556670 m!2244923))

(assert (=> b!1814918 d!556670))

(declare-fun d!556672 () Bool)

(declare-fun choose!11430 (Int) Bool)

(assert (=> d!556672 (= (Forall!926 lambda!71054) (choose!11430 lambda!71054))))

(declare-fun bs!407132 () Bool)

(assert (= bs!407132 d!556672))

(declare-fun m!2244925 () Bool)

(assert (=> bs!407132 m!2244925))

(assert (=> b!1814897 d!556672))

(declare-fun d!556674 () Bool)

(declare-fun e!1159703 () Bool)

(assert (=> d!556674 e!1159703))

(declare-fun res!816117 () Bool)

(assert (=> d!556674 (=> (not res!816117) (not e!1159703))))

(assert (=> d!556674 (= res!816117 (semiInverseModEq!1422 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun Unit!34516 () Unit!34499)

(assert (=> d!556674 (= (lemmaInv!758 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) Unit!34516)))

(declare-fun b!1815165 () Bool)

(assert (=> b!1815165 (= e!1159703 (equivClasses!1363 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))))))

(assert (= (and d!556674 res!816117) b!1815165))

(declare-fun m!2244927 () Bool)

(assert (=> d!556674 m!2244927))

(declare-fun m!2244929 () Bool)

(assert (=> b!1815165 m!2244929))

(assert (=> b!1814897 d!556674))

(declare-fun d!556676 () Bool)

(assert (=> d!556676 (= (inv!25825 (tag!3971 (h!25208 rules!3447))) (= (mod (str.len (value!111103 (tag!3971 (h!25208 rules!3447)))) 2) 0))))

(assert (=> b!1814896 d!556676))

(declare-fun d!556678 () Bool)

(declare-fun res!816118 () Bool)

(declare-fun e!1159704 () Bool)

(assert (=> d!556678 (=> (not res!816118) (not e!1159704))))

(assert (=> d!556678 (= res!816118 (semiInverseModEq!1422 (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (h!25208 rules!3447)))))))

(assert (=> d!556678 (= (inv!25830 (transformation!3559 (h!25208 rules!3447))) e!1159704)))

(declare-fun b!1815166 () Bool)

(assert (=> b!1815166 (= e!1159704 (equivClasses!1363 (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (h!25208 rules!3447)))))))

(assert (= (and d!556678 res!816118) b!1815166))

(declare-fun m!2244931 () Bool)

(assert (=> d!556678 m!2244931))

(declare-fun m!2244933 () Bool)

(assert (=> b!1815166 m!2244933))

(assert (=> b!1814896 d!556678))

(declare-fun d!556680 () Bool)

(assert (=> d!556680 (isPrefix!1799 lt!705565 (++!5389 lt!705565 (_2!11093 lt!705567)))))

(declare-fun lt!705722 () Unit!34499)

(declare-fun choose!11431 (List!19876 List!19876) Unit!34499)

(assert (=> d!556680 (= lt!705722 (choose!11431 lt!705565 (_2!11093 lt!705567)))))

(assert (=> d!556680 (= (lemmaConcatTwoListThenFirstIsPrefix!1308 lt!705565 (_2!11093 lt!705567)) lt!705722)))

(declare-fun bs!407133 () Bool)

(assert (= bs!407133 d!556680))

(assert (=> bs!407133 m!2244557))

(assert (=> bs!407133 m!2244557))

(assert (=> bs!407133 m!2244567))

(declare-fun m!2244935 () Bool)

(assert (=> bs!407133 m!2244935))

(assert (=> b!1814914 d!556680))

(declare-fun d!556682 () Bool)

(declare-fun e!1159716 () Bool)

(assert (=> d!556682 e!1159716))

(declare-fun res!816144 () Bool)

(assert (=> d!556682 (=> (not res!816144) (not e!1159716))))

(assert (=> d!556682 (= res!816144 (isDefined!3486 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun lt!705730 () Unit!34499)

(declare-fun choose!11432 (LexerInterface!3188 List!19877 List!19876 Token!6684) Unit!34499)

(assert (=> d!556682 (= lt!705730 (choose!11432 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567)))))

(assert (=> d!556682 (rulesInvariant!2857 thiss!24550 rules!3447)))

(assert (=> d!556682 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!607 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567)) lt!705730)))

(declare-fun b!1815198 () Bool)

(declare-fun res!816145 () Bool)

(assert (=> b!1815198 (=> (not res!816145) (not e!1159716))))

(assert (=> b!1815198 (= res!816145 (matchR!2360 (regex!3559 (get!6140 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 (_1!11093 lt!705567)))))) (list!8063 (charsOf!2208 (_1!11093 lt!705567)))))))

(declare-fun b!1815199 () Bool)

(assert (=> b!1815199 (= e!1159716 (= (rule!5669 (_1!11093 lt!705567)) (get!6140 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 (_1!11093 lt!705567)))))))))

(assert (= (and d!556682 res!816144) b!1815198))

(assert (= (and b!1815198 res!816145) b!1815199))

(assert (=> d!556682 m!2244563))

(assert (=> d!556682 m!2244563))

(declare-fun m!2244969 () Bool)

(assert (=> d!556682 m!2244969))

(declare-fun m!2244971 () Bool)

(assert (=> d!556682 m!2244971))

(assert (=> d!556682 m!2244465))

(assert (=> b!1815198 m!2244563))

(assert (=> b!1815198 m!2244447))

(assert (=> b!1815198 m!2244563))

(declare-fun m!2244973 () Bool)

(assert (=> b!1815198 m!2244973))

(assert (=> b!1815198 m!2244449))

(declare-fun m!2244975 () Bool)

(assert (=> b!1815198 m!2244975))

(assert (=> b!1815198 m!2244447))

(assert (=> b!1815198 m!2244449))

(assert (=> b!1815199 m!2244563))

(assert (=> b!1815199 m!2244563))

(assert (=> b!1815199 m!2244973))

(assert (=> b!1814914 d!556682))

(declare-fun b!1815209 () Bool)

(declare-fun res!816156 () Bool)

(declare-fun e!1159724 () Bool)

(assert (=> b!1815209 (=> (not res!816156) (not e!1159724))))

(assert (=> b!1815209 (= res!816156 (= (head!4224 lt!705565) (head!4224 (++!5389 lt!705565 (_2!11093 lt!705567)))))))

(declare-fun d!556686 () Bool)

(declare-fun e!1159723 () Bool)

(assert (=> d!556686 e!1159723))

(declare-fun res!816154 () Bool)

(assert (=> d!556686 (=> res!816154 e!1159723)))

(declare-fun lt!705733 () Bool)

(assert (=> d!556686 (= res!816154 (not lt!705733))))

(declare-fun e!1159725 () Bool)

(assert (=> d!556686 (= lt!705733 e!1159725)))

(declare-fun res!816157 () Bool)

(assert (=> d!556686 (=> res!816157 e!1159725)))

(assert (=> d!556686 (= res!816157 ((_ is Nil!19806) lt!705565))))

(assert (=> d!556686 (= (isPrefix!1799 lt!705565 (++!5389 lt!705565 (_2!11093 lt!705567))) lt!705733)))

(declare-fun b!1815210 () Bool)

(assert (=> b!1815210 (= e!1159724 (isPrefix!1799 (tail!2685 lt!705565) (tail!2685 (++!5389 lt!705565 (_2!11093 lt!705567)))))))

(declare-fun b!1815211 () Bool)

(assert (=> b!1815211 (= e!1159723 (>= (size!15750 (++!5389 lt!705565 (_2!11093 lt!705567))) (size!15750 lt!705565)))))

(declare-fun b!1815208 () Bool)

(assert (=> b!1815208 (= e!1159725 e!1159724)))

(declare-fun res!816155 () Bool)

(assert (=> b!1815208 (=> (not res!816155) (not e!1159724))))

(assert (=> b!1815208 (= res!816155 (not ((_ is Nil!19806) (++!5389 lt!705565 (_2!11093 lt!705567)))))))

(assert (= (and d!556686 (not res!816157)) b!1815208))

(assert (= (and b!1815208 res!816155) b!1815209))

(assert (= (and b!1815209 res!816156) b!1815210))

(assert (= (and d!556686 (not res!816154)) b!1815211))

(declare-fun m!2244977 () Bool)

(assert (=> b!1815209 m!2244977))

(assert (=> b!1815209 m!2244557))

(declare-fun m!2244979 () Bool)

(assert (=> b!1815209 m!2244979))

(declare-fun m!2244981 () Bool)

(assert (=> b!1815210 m!2244981))

(assert (=> b!1815210 m!2244557))

(declare-fun m!2244983 () Bool)

(assert (=> b!1815210 m!2244983))

(assert (=> b!1815210 m!2244981))

(assert (=> b!1815210 m!2244983))

(declare-fun m!2244985 () Bool)

(assert (=> b!1815210 m!2244985))

(assert (=> b!1815211 m!2244557))

(declare-fun m!2244987 () Bool)

(assert (=> b!1815211 m!2244987))

(assert (=> b!1815211 m!2244589))

(assert (=> b!1814914 d!556686))

(declare-fun b!1815213 () Bool)

(declare-fun res!816160 () Bool)

(declare-fun e!1159727 () Bool)

(assert (=> b!1815213 (=> (not res!816160) (not e!1159727))))

(assert (=> b!1815213 (= res!816160 (= (head!4224 lt!705565) (head!4224 lt!705554)))))

(declare-fun d!556688 () Bool)

(declare-fun e!1159726 () Bool)

(assert (=> d!556688 e!1159726))

(declare-fun res!816158 () Bool)

(assert (=> d!556688 (=> res!816158 e!1159726)))

(declare-fun lt!705734 () Bool)

(assert (=> d!556688 (= res!816158 (not lt!705734))))

(declare-fun e!1159728 () Bool)

(assert (=> d!556688 (= lt!705734 e!1159728)))

(declare-fun res!816161 () Bool)

(assert (=> d!556688 (=> res!816161 e!1159728)))

(assert (=> d!556688 (= res!816161 ((_ is Nil!19806) lt!705565))))

(assert (=> d!556688 (= (isPrefix!1799 lt!705565 lt!705554) lt!705734)))

(declare-fun b!1815214 () Bool)

(assert (=> b!1815214 (= e!1159727 (isPrefix!1799 (tail!2685 lt!705565) (tail!2685 lt!705554)))))

(declare-fun b!1815215 () Bool)

(assert (=> b!1815215 (= e!1159726 (>= (size!15750 lt!705554) (size!15750 lt!705565)))))

(declare-fun b!1815212 () Bool)

(assert (=> b!1815212 (= e!1159728 e!1159727)))

(declare-fun res!816159 () Bool)

(assert (=> b!1815212 (=> (not res!816159) (not e!1159727))))

(assert (=> b!1815212 (= res!816159 (not ((_ is Nil!19806) lt!705554)))))

(assert (= (and d!556688 (not res!816161)) b!1815212))

(assert (= (and b!1815212 res!816159) b!1815213))

(assert (= (and b!1815213 res!816160) b!1815214))

(assert (= (and d!556688 (not res!816158)) b!1815215))

(assert (=> b!1815213 m!2244977))

(declare-fun m!2244989 () Bool)

(assert (=> b!1815213 m!2244989))

(assert (=> b!1815214 m!2244981))

(assert (=> b!1815214 m!2244731))

(assert (=> b!1815214 m!2244981))

(assert (=> b!1815214 m!2244731))

(declare-fun m!2244991 () Bool)

(assert (=> b!1815214 m!2244991))

(assert (=> b!1815215 m!2244729))

(assert (=> b!1815215 m!2244589))

(assert (=> b!1814914 d!556688))

(declare-fun d!556690 () Bool)

(declare-fun list!8066 (Conc!6589) List!19876)

(assert (=> d!556690 (= (list!8063 lt!705556) (list!8066 (c!296435 lt!705556)))))

(declare-fun bs!407134 () Bool)

(assert (= bs!407134 d!556690))

(declare-fun m!2244993 () Bool)

(assert (=> bs!407134 m!2244993))

(assert (=> b!1814914 d!556690))

(declare-fun d!556692 () Bool)

(assert (=> d!556692 (= (get!6139 lt!705544) (v!25664 lt!705544))))

(assert (=> b!1814914 d!556692))

(declare-fun b!1815227 () Bool)

(declare-fun res!816166 () Bool)

(declare-fun e!1159736 () Bool)

(assert (=> b!1815227 (=> (not res!816166) (not e!1159736))))

(assert (=> b!1815227 (= res!816166 (= (head!4224 lt!705523) (head!4224 lt!705554)))))

(declare-fun d!556694 () Bool)

(declare-fun e!1159735 () Bool)

(assert (=> d!556694 e!1159735))

(declare-fun res!816164 () Bool)

(assert (=> d!556694 (=> res!816164 e!1159735)))

(declare-fun lt!705741 () Bool)

(assert (=> d!556694 (= res!816164 (not lt!705741))))

(declare-fun e!1159737 () Bool)

(assert (=> d!556694 (= lt!705741 e!1159737)))

(declare-fun res!816167 () Bool)

(assert (=> d!556694 (=> res!816167 e!1159737)))

(assert (=> d!556694 (= res!816167 ((_ is Nil!19806) lt!705523))))

(assert (=> d!556694 (= (isPrefix!1799 lt!705523 lt!705554) lt!705741)))

(declare-fun b!1815228 () Bool)

(assert (=> b!1815228 (= e!1159736 (isPrefix!1799 (tail!2685 lt!705523) (tail!2685 lt!705554)))))

(declare-fun b!1815229 () Bool)

(assert (=> b!1815229 (= e!1159735 (>= (size!15750 lt!705554) (size!15750 lt!705523)))))

(declare-fun b!1815226 () Bool)

(assert (=> b!1815226 (= e!1159737 e!1159736)))

(declare-fun res!816165 () Bool)

(assert (=> b!1815226 (=> (not res!816165) (not e!1159736))))

(assert (=> b!1815226 (= res!816165 (not ((_ is Nil!19806) lt!705554)))))

(assert (= (and d!556694 (not res!816167)) b!1815226))

(assert (= (and b!1815226 res!816165) b!1815227))

(assert (= (and b!1815227 res!816166) b!1815228))

(assert (= (and d!556694 (not res!816164)) b!1815229))

(declare-fun m!2244995 () Bool)

(assert (=> b!1815227 m!2244995))

(assert (=> b!1815227 m!2244989))

(declare-fun m!2244997 () Bool)

(assert (=> b!1815228 m!2244997))

(assert (=> b!1815228 m!2244731))

(assert (=> b!1815228 m!2244997))

(assert (=> b!1815228 m!2244731))

(declare-fun m!2244999 () Bool)

(assert (=> b!1815228 m!2244999))

(assert (=> b!1815229 m!2244729))

(assert (=> b!1815229 m!2244907))

(assert (=> b!1814914 d!556694))

(declare-fun lt!705742 () List!19876)

(declare-fun b!1815235 () Bool)

(declare-fun e!1159740 () Bool)

(assert (=> b!1815235 (= e!1159740 (or (not (= (_2!11093 lt!705567) Nil!19806)) (= lt!705742 lt!705565)))))

(declare-fun b!1815233 () Bool)

(declare-fun e!1159741 () List!19876)

(assert (=> b!1815233 (= e!1159741 (Cons!19806 (h!25207 lt!705565) (++!5389 (t!169485 lt!705565) (_2!11093 lt!705567))))))

(declare-fun d!556696 () Bool)

(assert (=> d!556696 e!1159740))

(declare-fun res!816171 () Bool)

(assert (=> d!556696 (=> (not res!816171) (not e!1159740))))

(assert (=> d!556696 (= res!816171 (= (content!2893 lt!705742) ((_ map or) (content!2893 lt!705565) (content!2893 (_2!11093 lt!705567)))))))

(assert (=> d!556696 (= lt!705742 e!1159741)))

(declare-fun c!296491 () Bool)

(assert (=> d!556696 (= c!296491 ((_ is Nil!19806) lt!705565))))

(assert (=> d!556696 (= (++!5389 lt!705565 (_2!11093 lt!705567)) lt!705742)))

(declare-fun b!1815234 () Bool)

(declare-fun res!816170 () Bool)

(assert (=> b!1815234 (=> (not res!816170) (not e!1159740))))

(assert (=> b!1815234 (= res!816170 (= (size!15750 lt!705742) (+ (size!15750 lt!705565) (size!15750 (_2!11093 lt!705567)))))))

(declare-fun b!1815232 () Bool)

(assert (=> b!1815232 (= e!1159741 (_2!11093 lt!705567))))

(assert (= (and d!556696 c!296491) b!1815232))

(assert (= (and d!556696 (not c!296491)) b!1815233))

(assert (= (and d!556696 res!816171) b!1815234))

(assert (= (and b!1815234 res!816170) b!1815235))

(declare-fun m!2245001 () Bool)

(assert (=> b!1815233 m!2245001))

(declare-fun m!2245003 () Bool)

(assert (=> d!556696 m!2245003))

(declare-fun m!2245005 () Bool)

(assert (=> d!556696 m!2245005))

(declare-fun m!2245007 () Bool)

(assert (=> d!556696 m!2245007))

(declare-fun m!2245009 () Bool)

(assert (=> b!1815234 m!2245009))

(assert (=> b!1815234 m!2244589))

(declare-fun m!2245011 () Bool)

(assert (=> b!1815234 m!2245011))

(assert (=> b!1814914 d!556696))

(declare-fun d!556698 () Bool)

(declare-fun lt!705748 () BalanceConc!13122)

(assert (=> d!556698 (= (list!8063 lt!705748) (originalCharacters!4373 (_1!11093 lt!705567)))))

(assert (=> d!556698 (= lt!705748 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))

(assert (=> d!556698 (= (charsOf!2208 (_1!11093 lt!705567)) lt!705748)))

(declare-fun b_lambda!59879 () Bool)

(assert (=> (not b_lambda!59879) (not d!556698)))

(assert (=> d!556698 t!169467))

(declare-fun b_and!140415 () Bool)

(assert (= b_and!140385 (and (=> t!169467 result!133274) b_and!140415)))

(assert (=> d!556698 t!169469))

(declare-fun b_and!140417 () Bool)

(assert (= b_and!140387 (and (=> t!169469 result!133278) b_and!140417)))

(assert (=> d!556698 t!169471))

(declare-fun b_and!140419 () Bool)

(assert (= b_and!140389 (and (=> t!169471 result!133280) b_and!140419)))

(declare-fun m!2245025 () Bool)

(assert (=> d!556698 m!2245025))

(assert (=> d!556698 m!2244615))

(assert (=> b!1814914 d!556698))

(declare-fun b!1815245 () Bool)

(declare-fun e!1159746 () Bool)

(declare-fun lt!705750 () List!19876)

(assert (=> b!1815245 (= e!1159746 (or (not (= suffix!1421 Nil!19806)) (= lt!705750 lt!705523)))))

(declare-fun b!1815243 () Bool)

(declare-fun e!1159747 () List!19876)

(assert (=> b!1815243 (= e!1159747 (Cons!19806 (h!25207 lt!705523) (++!5389 (t!169485 lt!705523) suffix!1421)))))

(declare-fun d!556702 () Bool)

(assert (=> d!556702 e!1159746))

(declare-fun res!816175 () Bool)

(assert (=> d!556702 (=> (not res!816175) (not e!1159746))))

(assert (=> d!556702 (= res!816175 (= (content!2893 lt!705750) ((_ map or) (content!2893 lt!705523) (content!2893 suffix!1421))))))

(assert (=> d!556702 (= lt!705750 e!1159747)))

(declare-fun c!296494 () Bool)

(assert (=> d!556702 (= c!296494 ((_ is Nil!19806) lt!705523))))

(assert (=> d!556702 (= (++!5389 lt!705523 suffix!1421) lt!705750)))

(declare-fun b!1815244 () Bool)

(declare-fun res!816174 () Bool)

(assert (=> b!1815244 (=> (not res!816174) (not e!1159746))))

(assert (=> b!1815244 (= res!816174 (= (size!15750 lt!705750) (+ (size!15750 lt!705523) (size!15750 suffix!1421))))))

(declare-fun b!1815242 () Bool)

(assert (=> b!1815242 (= e!1159747 suffix!1421)))

(assert (= (and d!556702 c!296494) b!1815242))

(assert (= (and d!556702 (not c!296494)) b!1815243))

(assert (= (and d!556702 res!816175) b!1815244))

(assert (= (and b!1815244 res!816174) b!1815245))

(declare-fun m!2245029 () Bool)

(assert (=> b!1815243 m!2245029))

(declare-fun m!2245031 () Bool)

(assert (=> d!556702 m!2245031))

(assert (=> d!556702 m!2244901))

(declare-fun m!2245033 () Bool)

(assert (=> d!556702 m!2245033))

(declare-fun m!2245035 () Bool)

(assert (=> b!1815244 m!2245035))

(assert (=> b!1815244 m!2244907))

(declare-fun m!2245037 () Bool)

(assert (=> b!1815244 m!2245037))

(assert (=> b!1814914 d!556702))

(declare-fun d!556706 () Bool)

(declare-fun isEmpty!12539 (Option!4145) Bool)

(assert (=> d!556706 (= (isDefined!3486 lt!705529) (not (isEmpty!12539 lt!705529)))))

(declare-fun bs!407136 () Bool)

(assert (= bs!407136 d!556706))

(declare-fun m!2245039 () Bool)

(assert (=> bs!407136 m!2245039))

(assert (=> b!1814914 d!556706))

(declare-fun d!556708 () Bool)

(assert (=> d!556708 (isDefined!3485 (maxPrefix!1742 thiss!24550 rules!3447 (++!5389 lt!705523 suffix!1421)))))

(declare-fun lt!705853 () Unit!34499)

(declare-fun e!1159885 () Unit!34499)

(assert (=> d!556708 (= lt!705853 e!1159885)))

(declare-fun c!296543 () Bool)

(assert (=> d!556708 (= c!296543 (isEmpty!12538 (maxPrefix!1742 thiss!24550 rules!3447 (++!5389 lt!705523 suffix!1421))))))

(declare-fun lt!705858 () Unit!34499)

(declare-fun lt!705864 () Unit!34499)

(assert (=> d!556708 (= lt!705858 lt!705864)))

(declare-fun e!1159883 () Bool)

(assert (=> d!556708 e!1159883))

(declare-fun res!816290 () Bool)

(assert (=> d!556708 (=> (not res!816290) (not e!1159883))))

(declare-fun lt!705850 () Token!6684)

(assert (=> d!556708 (= res!816290 (isDefined!3486 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 lt!705850)))))))

(assert (=> d!556708 (= lt!705864 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!607 thiss!24550 rules!3447 lt!705523 lt!705850))))

(declare-fun lt!705859 () Unit!34499)

(declare-fun lt!705862 () Unit!34499)

(assert (=> d!556708 (= lt!705859 lt!705862)))

(declare-fun lt!705861 () List!19876)

(assert (=> d!556708 (isPrefix!1799 lt!705861 (++!5389 lt!705523 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!357 (List!19876 List!19876 List!19876) Unit!34499)

(assert (=> d!556708 (= lt!705862 (lemmaPrefixStaysPrefixWhenAddingToSuffix!357 lt!705861 lt!705523 suffix!1421))))

(assert (=> d!556708 (= lt!705861 (list!8063 (charsOf!2208 lt!705850)))))

(declare-fun lt!705855 () Unit!34499)

(declare-fun lt!705852 () Unit!34499)

(assert (=> d!556708 (= lt!705855 lt!705852)))

(declare-fun lt!705856 () List!19876)

(declare-fun lt!705866 () List!19876)

(assert (=> d!556708 (isPrefix!1799 lt!705856 (++!5389 lt!705856 lt!705866))))

(assert (=> d!556708 (= lt!705852 (lemmaConcatTwoListThenFirstIsPrefix!1308 lt!705856 lt!705866))))

(assert (=> d!556708 (= lt!705866 (_2!11093 (get!6139 (maxPrefix!1742 thiss!24550 rules!3447 lt!705523))))))

(assert (=> d!556708 (= lt!705856 (list!8063 (charsOf!2208 lt!705850)))))

(declare-datatypes ((List!19881 0))(
  ( (Nil!19811) (Cons!19811 (h!25212 Token!6684) (t!169550 List!19881)) )
))
(declare-fun head!4226 (List!19881) Token!6684)

(declare-datatypes ((IArray!13187 0))(
  ( (IArray!13188 (innerList!6651 List!19881)) )
))
(declare-datatypes ((Conc!6591 0))(
  ( (Node!6591 (left!15900 Conc!6591) (right!16230 Conc!6591) (csize!13412 Int) (cheight!6802 Int)) (Leaf!9591 (xs!9467 IArray!13187) (csize!13413 Int)) (Empty!6591) )
))
(declare-datatypes ((BalanceConc!13126 0))(
  ( (BalanceConc!13127 (c!296597 Conc!6591)) )
))
(declare-fun list!8067 (BalanceConc!13126) List!19881)

(declare-datatypes ((tuple2!19390 0))(
  ( (tuple2!19391 (_1!11097 BalanceConc!13126) (_2!11097 BalanceConc!13122)) )
))
(declare-fun lex!1496 (LexerInterface!3188 List!19877 BalanceConc!13122) tuple2!19390)

(assert (=> d!556708 (= lt!705850 (head!4226 (list!8067 (_1!11097 (lex!1496 thiss!24550 rules!3447 (seqFromList!2528 lt!705523))))))))

(assert (=> d!556708 (not (isEmpty!12534 rules!3447))))

(assert (=> d!556708 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!710 thiss!24550 rules!3447 lt!705523 suffix!1421) lt!705853)))

(declare-fun b!1815496 () Bool)

(assert (=> b!1815496 (= e!1159883 (= (rule!5669 lt!705850) (get!6140 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 lt!705850))))))))

(declare-fun b!1815497 () Bool)

(declare-fun Unit!34517 () Unit!34499)

(assert (=> b!1815497 (= e!1159885 Unit!34517)))

(declare-fun lt!705860 () List!19876)

(assert (=> b!1815497 (= lt!705860 (++!5389 lt!705523 suffix!1421))))

(declare-fun lt!705857 () Unit!34499)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!365 (LexerInterface!3188 Rule!6918 List!19877 List!19876) Unit!34499)

(assert (=> b!1815497 (= lt!705857 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!365 thiss!24550 (rule!5669 lt!705850) rules!3447 lt!705860))))

(assert (=> b!1815497 (isEmpty!12538 (maxPrefixOneRule!1111 thiss!24550 (rule!5669 lt!705850) lt!705860))))

(declare-fun lt!705851 () Unit!34499)

(assert (=> b!1815497 (= lt!705851 lt!705857)))

(declare-fun lt!705863 () List!19876)

(assert (=> b!1815497 (= lt!705863 (list!8063 (charsOf!2208 lt!705850)))))

(declare-fun lt!705854 () Unit!34499)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!361 (LexerInterface!3188 Rule!6918 List!19876 List!19876) Unit!34499)

(assert (=> b!1815497 (= lt!705854 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!361 thiss!24550 (rule!5669 lt!705850) lt!705863 (++!5389 lt!705523 suffix!1421)))))

(assert (=> b!1815497 (not (matchR!2360 (regex!3559 (rule!5669 lt!705850)) lt!705863))))

(declare-fun lt!705865 () Unit!34499)

(assert (=> b!1815497 (= lt!705865 lt!705854)))

(assert (=> b!1815497 false))

(declare-fun b!1815498 () Bool)

(declare-fun Unit!34518 () Unit!34499)

(assert (=> b!1815498 (= e!1159885 Unit!34518)))

(declare-fun b!1815495 () Bool)

(declare-fun res!816289 () Bool)

(assert (=> b!1815495 (=> (not res!816289) (not e!1159883))))

(assert (=> b!1815495 (= res!816289 (matchR!2360 (regex!3559 (get!6140 (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 lt!705850))))) (list!8063 (charsOf!2208 lt!705850))))))

(assert (= (and d!556708 res!816290) b!1815495))

(assert (= (and b!1815495 res!816289) b!1815496))

(assert (= (and d!556708 c!296543) b!1815497))

(assert (= (and d!556708 (not c!296543)) b!1815498))

(assert (=> d!556708 m!2244507))

(declare-fun m!2245321 () Bool)

(assert (=> d!556708 m!2245321))

(declare-fun m!2245323 () Bool)

(assert (=> d!556708 m!2245323))

(declare-fun m!2245325 () Bool)

(assert (=> d!556708 m!2245325))

(assert (=> d!556708 m!2244507))

(declare-fun m!2245327 () Bool)

(assert (=> d!556708 m!2245327))

(assert (=> d!556708 m!2244573))

(assert (=> d!556708 m!2245323))

(declare-fun m!2245329 () Bool)

(assert (=> d!556708 m!2245329))

(assert (=> d!556708 m!2244573))

(declare-fun m!2245331 () Bool)

(assert (=> d!556708 m!2245331))

(assert (=> d!556708 m!2245323))

(declare-fun m!2245333 () Bool)

(assert (=> d!556708 m!2245333))

(declare-fun m!2245335 () Bool)

(assert (=> d!556708 m!2245335))

(assert (=> d!556708 m!2244513))

(declare-fun m!2245337 () Bool)

(assert (=> d!556708 m!2245337))

(assert (=> d!556708 m!2245335))

(declare-fun m!2245339 () Bool)

(assert (=> d!556708 m!2245339))

(assert (=> d!556708 m!2245327))

(declare-fun m!2245341 () Bool)

(assert (=> d!556708 m!2245341))

(assert (=> d!556708 m!2245329))

(declare-fun m!2245343 () Bool)

(assert (=> d!556708 m!2245343))

(declare-fun m!2245345 () Bool)

(assert (=> d!556708 m!2245345))

(declare-fun m!2245347 () Bool)

(assert (=> d!556708 m!2245347))

(assert (=> d!556708 m!2244573))

(declare-fun m!2245349 () Bool)

(assert (=> d!556708 m!2245349))

(declare-fun m!2245351 () Bool)

(assert (=> d!556708 m!2245351))

(declare-fun m!2245353 () Bool)

(assert (=> d!556708 m!2245353))

(assert (=> d!556708 m!2245351))

(assert (=> d!556708 m!2245347))

(declare-fun m!2245355 () Bool)

(assert (=> d!556708 m!2245355))

(assert (=> b!1815496 m!2245329))

(assert (=> b!1815496 m!2245329))

(declare-fun m!2245357 () Bool)

(assert (=> b!1815496 m!2245357))

(declare-fun m!2245359 () Bool)

(assert (=> b!1815497 m!2245359))

(assert (=> b!1815497 m!2245335))

(declare-fun m!2245361 () Bool)

(assert (=> b!1815497 m!2245361))

(declare-fun m!2245363 () Bool)

(assert (=> b!1815497 m!2245363))

(assert (=> b!1815497 m!2245359))

(declare-fun m!2245365 () Bool)

(assert (=> b!1815497 m!2245365))

(assert (=> b!1815497 m!2244573))

(declare-fun m!2245367 () Bool)

(assert (=> b!1815497 m!2245367))

(assert (=> b!1815497 m!2245335))

(assert (=> b!1815497 m!2245339))

(assert (=> b!1815497 m!2244573))

(assert (=> b!1815495 m!2245335))

(assert (=> b!1815495 m!2245339))

(declare-fun m!2245369 () Bool)

(assert (=> b!1815495 m!2245369))

(assert (=> b!1815495 m!2245335))

(assert (=> b!1815495 m!2245339))

(assert (=> b!1815495 m!2245329))

(assert (=> b!1815495 m!2245329))

(assert (=> b!1815495 m!2245357))

(assert (=> b!1814914 d!556708))

(declare-fun b!1815533 () Bool)

(declare-fun e!1159913 () Bool)

(declare-fun e!1159914 () Bool)

(assert (=> b!1815533 (= e!1159913 e!1159914)))

(declare-fun res!816295 () Bool)

(assert (=> b!1815533 (=> (not res!816295) (not e!1159914))))

(declare-fun lt!705874 () Option!4145)

(assert (=> b!1815533 (= res!816295 (contains!3593 rules!3447 (get!6140 lt!705874)))))

(declare-fun b!1815534 () Bool)

(declare-fun e!1159912 () Option!4145)

(declare-fun e!1159915 () Option!4145)

(assert (=> b!1815534 (= e!1159912 e!1159915)))

(declare-fun c!296549 () Bool)

(assert (=> b!1815534 (= c!296549 (and ((_ is Cons!19807) rules!3447) (not (= (tag!3971 (h!25208 rules!3447)) (tag!3971 (rule!5669 (_1!11093 lt!705567)))))))))

(declare-fun b!1815535 () Bool)

(assert (=> b!1815535 (= e!1159912 (Some!4144 (h!25208 rules!3447)))))

(declare-fun d!556834 () Bool)

(assert (=> d!556834 e!1159913))

(declare-fun res!816296 () Bool)

(assert (=> d!556834 (=> res!816296 e!1159913)))

(assert (=> d!556834 (= res!816296 (isEmpty!12539 lt!705874))))

(assert (=> d!556834 (= lt!705874 e!1159912)))

(declare-fun c!296548 () Bool)

(assert (=> d!556834 (= c!296548 (and ((_ is Cons!19807) rules!3447) (= (tag!3971 (h!25208 rules!3447)) (tag!3971 (rule!5669 (_1!11093 lt!705567))))))))

(assert (=> d!556834 (rulesInvariant!2857 thiss!24550 rules!3447)))

(assert (=> d!556834 (= (getRuleFromTag!607 thiss!24550 rules!3447 (tag!3971 (rule!5669 (_1!11093 lt!705567)))) lt!705874)))

(declare-fun b!1815536 () Bool)

(assert (=> b!1815536 (= e!1159915 None!4144)))

(declare-fun b!1815537 () Bool)

(declare-fun lt!705875 () Unit!34499)

(declare-fun lt!705873 () Unit!34499)

(assert (=> b!1815537 (= lt!705875 lt!705873)))

(assert (=> b!1815537 (rulesInvariant!2857 thiss!24550 (t!169486 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!236 (LexerInterface!3188 Rule!6918 List!19877) Unit!34499)

(assert (=> b!1815537 (= lt!705873 (lemmaInvariantOnRulesThenOnTail!236 thiss!24550 (h!25208 rules!3447) (t!169486 rules!3447)))))

(assert (=> b!1815537 (= e!1159915 (getRuleFromTag!607 thiss!24550 (t!169486 rules!3447) (tag!3971 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815538 () Bool)

(assert (=> b!1815538 (= e!1159914 (= (tag!3971 (get!6140 lt!705874)) (tag!3971 (rule!5669 (_1!11093 lt!705567)))))))

(assert (= (and d!556834 c!296548) b!1815535))

(assert (= (and d!556834 (not c!296548)) b!1815534))

(assert (= (and b!1815534 c!296549) b!1815537))

(assert (= (and b!1815534 (not c!296549)) b!1815536))

(assert (= (and d!556834 (not res!816296)) b!1815533))

(assert (= (and b!1815533 res!816295) b!1815538))

(declare-fun m!2245381 () Bool)

(assert (=> b!1815533 m!2245381))

(assert (=> b!1815533 m!2245381))

(declare-fun m!2245383 () Bool)

(assert (=> b!1815533 m!2245383))

(declare-fun m!2245385 () Bool)

(assert (=> d!556834 m!2245385))

(assert (=> d!556834 m!2244465))

(declare-fun m!2245387 () Bool)

(assert (=> b!1815537 m!2245387))

(declare-fun m!2245389 () Bool)

(assert (=> b!1815537 m!2245389))

(declare-fun m!2245391 () Bool)

(assert (=> b!1815537 m!2245391))

(assert (=> b!1815538 m!2245381))

(assert (=> b!1814914 d!556834))

(declare-fun d!556836 () Bool)

(assert (=> d!556836 (isPrefix!1799 lt!705523 (++!5389 lt!705523 suffix!1421))))

(declare-fun lt!705876 () Unit!34499)

(assert (=> d!556836 (= lt!705876 (choose!11431 lt!705523 suffix!1421))))

(assert (=> d!556836 (= (lemmaConcatTwoListThenFirstIsPrefix!1308 lt!705523 suffix!1421) lt!705876)))

(declare-fun bs!407161 () Bool)

(assert (= bs!407161 d!556836))

(assert (=> bs!407161 m!2244573))

(assert (=> bs!407161 m!2244573))

(declare-fun m!2245393 () Bool)

(assert (=> bs!407161 m!2245393))

(declare-fun m!2245395 () Bool)

(assert (=> bs!407161 m!2245395))

(assert (=> b!1814914 d!556836))

(declare-fun b!1815557 () Bool)

(declare-fun res!816314 () Bool)

(declare-fun e!1159924 () Bool)

(assert (=> b!1815557 (=> (not res!816314) (not e!1159924))))

(declare-fun lt!705887 () Option!4144)

(assert (=> b!1815557 (= res!816314 (= (value!111104 (_1!11093 (get!6139 lt!705887))) (apply!5359 (transformation!3559 (rule!5669 (_1!11093 (get!6139 lt!705887)))) (seqFromList!2528 (originalCharacters!4373 (_1!11093 (get!6139 lt!705887)))))))))

(declare-fun b!1815558 () Bool)

(declare-fun res!816316 () Bool)

(assert (=> b!1815558 (=> (not res!816316) (not e!1159924))))

(assert (=> b!1815558 (= res!816316 (matchR!2360 (regex!3559 (rule!5669 (_1!11093 (get!6139 lt!705887)))) (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705887))))))))

(declare-fun b!1815559 () Bool)

(declare-fun e!1159923 () Bool)

(assert (=> b!1815559 (= e!1159923 e!1159924)))

(declare-fun res!816311 () Bool)

(assert (=> b!1815559 (=> (not res!816311) (not e!1159924))))

(assert (=> b!1815559 (= res!816311 (isDefined!3485 lt!705887))))

(declare-fun b!1815560 () Bool)

(declare-fun res!816312 () Bool)

(assert (=> b!1815560 (=> (not res!816312) (not e!1159924))))

(assert (=> b!1815560 (= res!816312 (< (size!15750 (_2!11093 (get!6139 lt!705887))) (size!15750 lt!705554)))))

(declare-fun b!1815561 () Bool)

(declare-fun e!1159922 () Option!4144)

(declare-fun call!114182 () Option!4144)

(assert (=> b!1815561 (= e!1159922 call!114182)))

(declare-fun b!1815562 () Bool)

(declare-fun res!816315 () Bool)

(assert (=> b!1815562 (=> (not res!816315) (not e!1159924))))

(assert (=> b!1815562 (= res!816315 (= (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705887)))) (originalCharacters!4373 (_1!11093 (get!6139 lt!705887)))))))

(declare-fun b!1815563 () Bool)

(assert (=> b!1815563 (= e!1159924 (contains!3593 rules!3447 (rule!5669 (_1!11093 (get!6139 lt!705887)))))))

(declare-fun b!1815564 () Bool)

(declare-fun res!816317 () Bool)

(assert (=> b!1815564 (=> (not res!816317) (not e!1159924))))

(assert (=> b!1815564 (= res!816317 (= (++!5389 (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705887)))) (_2!11093 (get!6139 lt!705887))) lt!705554))))

(declare-fun b!1815565 () Bool)

(declare-fun lt!705890 () Option!4144)

(declare-fun lt!705888 () Option!4144)

(assert (=> b!1815565 (= e!1159922 (ite (and ((_ is None!4143) lt!705890) ((_ is None!4143) lt!705888)) None!4143 (ite ((_ is None!4143) lt!705888) lt!705890 (ite ((_ is None!4143) lt!705890) lt!705888 (ite (>= (size!15748 (_1!11093 (v!25664 lt!705890))) (size!15748 (_1!11093 (v!25664 lt!705888)))) lt!705890 lt!705888)))))))

(assert (=> b!1815565 (= lt!705890 call!114182)))

(assert (=> b!1815565 (= lt!705888 (maxPrefix!1742 thiss!24550 (t!169486 rules!3447) lt!705554))))

(declare-fun bm!114177 () Bool)

(assert (=> bm!114177 (= call!114182 (maxPrefixOneRule!1111 thiss!24550 (h!25208 rules!3447) lt!705554))))

(declare-fun d!556838 () Bool)

(assert (=> d!556838 e!1159923))

(declare-fun res!816313 () Bool)

(assert (=> d!556838 (=> res!816313 e!1159923)))

(assert (=> d!556838 (= res!816313 (isEmpty!12538 lt!705887))))

(assert (=> d!556838 (= lt!705887 e!1159922)))

(declare-fun c!296552 () Bool)

(assert (=> d!556838 (= c!296552 (and ((_ is Cons!19807) rules!3447) ((_ is Nil!19807) (t!169486 rules!3447))))))

(declare-fun lt!705889 () Unit!34499)

(declare-fun lt!705891 () Unit!34499)

(assert (=> d!556838 (= lt!705889 lt!705891)))

(assert (=> d!556838 (isPrefix!1799 lt!705554 lt!705554)))

(declare-fun lemmaIsPrefixRefl!1176 (List!19876 List!19876) Unit!34499)

(assert (=> d!556838 (= lt!705891 (lemmaIsPrefixRefl!1176 lt!705554 lt!705554))))

(declare-fun rulesValidInductive!1212 (LexerInterface!3188 List!19877) Bool)

(assert (=> d!556838 (rulesValidInductive!1212 thiss!24550 rules!3447)))

(assert (=> d!556838 (= (maxPrefix!1742 thiss!24550 rules!3447 lt!705554) lt!705887)))

(assert (= (and d!556838 c!296552) b!1815561))

(assert (= (and d!556838 (not c!296552)) b!1815565))

(assert (= (or b!1815561 b!1815565) bm!114177))

(assert (= (and d!556838 (not res!816313)) b!1815559))

(assert (= (and b!1815559 res!816311) b!1815562))

(assert (= (and b!1815562 res!816315) b!1815560))

(assert (= (and b!1815560 res!816312) b!1815564))

(assert (= (and b!1815564 res!816317) b!1815557))

(assert (= (and b!1815557 res!816314) b!1815558))

(assert (= (and b!1815558 res!816316) b!1815563))

(declare-fun m!2245397 () Bool)

(assert (=> b!1815560 m!2245397))

(declare-fun m!2245399 () Bool)

(assert (=> b!1815560 m!2245399))

(assert (=> b!1815560 m!2244729))

(declare-fun m!2245401 () Bool)

(assert (=> bm!114177 m!2245401))

(assert (=> b!1815558 m!2245397))

(declare-fun m!2245403 () Bool)

(assert (=> b!1815558 m!2245403))

(assert (=> b!1815558 m!2245403))

(declare-fun m!2245405 () Bool)

(assert (=> b!1815558 m!2245405))

(assert (=> b!1815558 m!2245405))

(declare-fun m!2245407 () Bool)

(assert (=> b!1815558 m!2245407))

(declare-fun m!2245409 () Bool)

(assert (=> b!1815565 m!2245409))

(assert (=> b!1815563 m!2245397))

(declare-fun m!2245411 () Bool)

(assert (=> b!1815563 m!2245411))

(declare-fun m!2245413 () Bool)

(assert (=> b!1815559 m!2245413))

(declare-fun m!2245415 () Bool)

(assert (=> d!556838 m!2245415))

(declare-fun m!2245417 () Bool)

(assert (=> d!556838 m!2245417))

(declare-fun m!2245419 () Bool)

(assert (=> d!556838 m!2245419))

(declare-fun m!2245421 () Bool)

(assert (=> d!556838 m!2245421))

(assert (=> b!1815562 m!2245397))

(assert (=> b!1815562 m!2245403))

(assert (=> b!1815562 m!2245403))

(assert (=> b!1815562 m!2245405))

(assert (=> b!1815557 m!2245397))

(declare-fun m!2245423 () Bool)

(assert (=> b!1815557 m!2245423))

(assert (=> b!1815557 m!2245423))

(declare-fun m!2245425 () Bool)

(assert (=> b!1815557 m!2245425))

(assert (=> b!1815564 m!2245397))

(assert (=> b!1815564 m!2245403))

(assert (=> b!1815564 m!2245403))

(assert (=> b!1815564 m!2245405))

(assert (=> b!1815564 m!2245405))

(declare-fun m!2245427 () Bool)

(assert (=> b!1815564 m!2245427))

(assert (=> b!1814914 d!556838))

(declare-fun d!556840 () Bool)

(assert (=> d!556840 (not (matchR!2360 (regex!3559 rule!422) lt!705523))))

(declare-fun lt!705894 () Unit!34499)

(declare-fun choose!11439 (LexerInterface!3188 List!19877 Rule!6918 List!19876 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> d!556840 (= lt!705894 (choose!11439 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 lt!705523 rule!422))))

(assert (=> d!556840 (isPrefix!1799 lt!705565 lt!705554)))

(assert (=> d!556840 (= (lemmaMaxPrefixOutputsMaxPrefix!268 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 lt!705523 rule!422) lt!705894)))

(declare-fun bs!407162 () Bool)

(assert (= bs!407162 d!556840))

(assert (=> bs!407162 m!2244487))

(declare-fun m!2245429 () Bool)

(assert (=> bs!407162 m!2245429))

(assert (=> bs!407162 m!2244565))

(assert (=> b!1814893 d!556840))

(declare-fun d!556842 () Bool)

(assert (=> d!556842 (= (isEmpty!12535 (_2!11093 lt!705558)) ((_ is Nil!19806) (_2!11093 lt!705558)))))

(assert (=> b!1814935 d!556842))

(declare-fun d!556844 () Bool)

(declare-fun isBalanced!2062 (Conc!6589) Bool)

(assert (=> d!556844 (= (inv!25833 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))) (isBalanced!2062 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))))

(declare-fun bs!407163 () Bool)

(assert (= bs!407163 d!556844))

(declare-fun m!2245431 () Bool)

(assert (=> bs!407163 m!2245431))

(assert (=> tb!110989 d!556844))

(declare-fun d!556846 () Bool)

(assert (=> d!556846 (= (isEmpty!12534 rules!3447) ((_ is Nil!19807) rules!3447))))

(assert (=> b!1814894 d!556846))

(declare-fun d!556848 () Bool)

(assert (=> d!556848 (= (inv!25833 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))) (isBalanced!2062 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))))

(declare-fun bs!407164 () Bool)

(assert (= bs!407164 d!556848))

(declare-fun m!2245433 () Bool)

(assert (=> bs!407164 m!2245433))

(assert (=> tb!110983 d!556848))

(declare-fun d!556850 () Bool)

(declare-fun res!816320 () Bool)

(declare-fun e!1159927 () Bool)

(assert (=> d!556850 (=> (not res!816320) (not e!1159927))))

(declare-fun rulesValid!1347 (LexerInterface!3188 List!19877) Bool)

(assert (=> d!556850 (= res!816320 (rulesValid!1347 thiss!24550 rules!3447))))

(assert (=> d!556850 (= (rulesInvariant!2857 thiss!24550 rules!3447) e!1159927)))

(declare-fun b!1815568 () Bool)

(declare-datatypes ((List!19882 0))(
  ( (Nil!19812) (Cons!19812 (h!25213 String!22577) (t!169551 List!19882)) )
))
(declare-fun noDuplicateTag!1347 (LexerInterface!3188 List!19877 List!19882) Bool)

(assert (=> b!1815568 (= e!1159927 (noDuplicateTag!1347 thiss!24550 rules!3447 Nil!19812))))

(assert (= (and d!556850 res!816320) b!1815568))

(declare-fun m!2245435 () Bool)

(assert (=> d!556850 m!2245435))

(declare-fun m!2245437 () Bool)

(assert (=> b!1815568 m!2245437))

(assert (=> b!1814933 d!556850))

(declare-fun d!556852 () Bool)

(assert (=> d!556852 (= (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567))) (fromListB!1156 (originalCharacters!4373 (_1!11093 lt!705567))))))

(declare-fun bs!407165 () Bool)

(assert (= bs!407165 d!556852))

(declare-fun m!2245439 () Bool)

(assert (=> bs!407165 m!2245439))

(assert (=> b!1814911 d!556852))

(declare-fun d!556854 () Bool)

(assert (=> d!556854 (= (apply!5359 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))

(declare-fun b_lambda!59905 () Bool)

(assert (=> (not b_lambda!59905) (not d!556854)))

(assert (=> d!556854 t!169479))

(declare-fun b_and!140467 () Bool)

(assert (= b_and!140403 (and (=> t!169479 result!133288) b_and!140467)))

(assert (=> d!556854 t!169481))

(declare-fun b_and!140469 () Bool)

(assert (= b_and!140405 (and (=> t!169481 result!133292) b_and!140469)))

(assert (=> d!556854 t!169483))

(declare-fun b_and!140471 () Bool)

(assert (= b_and!140407 (and (=> t!169483 result!133294) b_and!140471)))

(assert (=> d!556854 m!2244521))

(assert (=> b!1814911 d!556854))

(declare-fun b!1815575 () Bool)

(declare-fun e!1159932 () Bool)

(assert (=> b!1815575 (= e!1159932 true)))

(declare-fun d!556856 () Bool)

(assert (=> d!556856 e!1159932))

(assert (= d!556856 b!1815575))

(declare-fun lambda!71069 () Int)

(declare-fun order!12959 () Int)

(declare-fun dynLambda!9881 (Int Int) Int)

(assert (=> b!1815575 (< (dynLambda!9875 order!12951 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9881 order!12959 lambda!71069))))

(assert (=> b!1815575 (< (dynLambda!9877 order!12955 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9881 order!12959 lambda!71069))))

(assert (=> d!556856 (= (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567)))))))

(declare-fun lt!705897 () Unit!34499)

(declare-fun Forall2of!167 (Int BalanceConc!13122 BalanceConc!13122) Unit!34499)

(assert (=> d!556856 (= lt!705897 (Forall2of!167 lambda!71069 lt!705556 (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567)))))))

(assert (=> d!556856 (= (list!8063 lt!705556) (list!8063 (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567)))))))

(assert (=> d!556856 (= (lemmaEqSameImage!470 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556 (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567)))) lt!705897)))

(declare-fun b_lambda!59907 () Bool)

(assert (=> (not b_lambda!59907) (not d!556856)))

(assert (=> d!556856 t!169479))

(declare-fun b_and!140473 () Bool)

(assert (= b_and!140467 (and (=> t!169479 result!133288) b_and!140473)))

(assert (=> d!556856 t!169481))

(declare-fun b_and!140475 () Bool)

(assert (= b_and!140469 (and (=> t!169481 result!133292) b_and!140475)))

(assert (=> d!556856 t!169483))

(declare-fun b_and!140477 () Bool)

(assert (= b_and!140471 (and (=> t!169483 result!133294) b_and!140477)))

(declare-fun b_lambda!59909 () Bool)

(assert (=> (not b_lambda!59909) (not d!556856)))

(declare-fun t!169524 () Bool)

(declare-fun tb!111037 () Bool)

(assert (=> (and b!1814919 (= (toValue!5090 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169524) tb!111037))

(declare-fun result!133340 () Bool)

(assert (=> tb!111037 (= result!133340 (inv!21 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (seqFromList!2528 (originalCharacters!4373 (_1!11093 lt!705567))))))))

(declare-fun m!2245441 () Bool)

(assert (=> tb!111037 m!2245441))

(assert (=> d!556856 t!169524))

(declare-fun b_and!140479 () Bool)

(assert (= b_and!140473 (and (=> t!169524 result!133340) b_and!140479)))

(declare-fun t!169526 () Bool)

(declare-fun tb!111039 () Bool)

(assert (=> (and b!1814925 (= (toValue!5090 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169526) tb!111039))

(declare-fun result!133342 () Bool)

(assert (= result!133342 result!133340))

(assert (=> d!556856 t!169526))

(declare-fun b_and!140481 () Bool)

(assert (= b_and!140475 (and (=> t!169526 result!133342) b_and!140481)))

(declare-fun tb!111041 () Bool)

(declare-fun t!169528 () Bool)

(assert (=> (and b!1814926 (= (toValue!5090 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169528) tb!111041))

(declare-fun result!133344 () Bool)

(assert (= result!133344 result!133340))

(assert (=> d!556856 t!169528))

(declare-fun b_and!140483 () Bool)

(assert (= b_and!140477 (and (=> t!169528 result!133344) b_and!140483)))

(assert (=> d!556856 m!2244561))

(assert (=> d!556856 m!2244475))

(declare-fun m!2245443 () Bool)

(assert (=> d!556856 m!2245443))

(assert (=> d!556856 m!2244475))

(declare-fun m!2245445 () Bool)

(assert (=> d!556856 m!2245445))

(assert (=> d!556856 m!2244475))

(declare-fun m!2245447 () Bool)

(assert (=> d!556856 m!2245447))

(assert (=> d!556856 m!2244521))

(assert (=> b!1814911 d!556856))

(declare-fun d!556858 () Bool)

(assert (=> d!556858 (= (size!15748 (_1!11093 lt!705567)) (size!15750 (originalCharacters!4373 (_1!11093 lt!705567))))))

(declare-fun Unit!34519 () Unit!34499)

(assert (=> d!556858 (= (lemmaCharactersSize!617 (_1!11093 lt!705567)) Unit!34519)))

(declare-fun bs!407166 () Bool)

(assert (= bs!407166 d!556858))

(declare-fun m!2245449 () Bool)

(assert (=> bs!407166 m!2245449))

(assert (=> b!1814911 d!556858))

(declare-fun d!556860 () Bool)

(declare-fun lt!705900 () Int)

(assert (=> d!556860 (= lt!705900 (size!15750 (list!8063 lt!705556)))))

(declare-fun size!15752 (Conc!6589) Int)

(assert (=> d!556860 (= lt!705900 (size!15752 (c!296435 lt!705556)))))

(assert (=> d!556860 (= (size!15749 lt!705556) lt!705900)))

(declare-fun bs!407167 () Bool)

(assert (= bs!407167 d!556860))

(assert (=> bs!407167 m!2244561))

(assert (=> bs!407167 m!2244561))

(declare-fun m!2245451 () Bool)

(assert (=> bs!407167 m!2245451))

(declare-fun m!2245453 () Bool)

(assert (=> bs!407167 m!2245453))

(assert (=> b!1814911 d!556860))

(declare-fun d!556862 () Bool)

(declare-fun e!1159948 () Bool)

(assert (=> d!556862 e!1159948))

(declare-fun c!296559 () Bool)

(assert (=> d!556862 (= c!296559 ((_ is EmptyExpr!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun lt!705903 () Bool)

(declare-fun e!1159954 () Bool)

(assert (=> d!556862 (= lt!705903 e!1159954)))

(declare-fun c!296561 () Bool)

(assert (=> d!556862 (= c!296561 (isEmpty!12535 lt!705523))))

(declare-fun validRegex!1981 (Regex!4887) Bool)

(assert (=> d!556862 (validRegex!1981 (regex!3559 (rule!5669 (_1!11093 lt!705567))))))

(assert (=> d!556862 (= (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705523) lt!705903)))

(declare-fun b!1815604 () Bool)

(declare-fun res!816339 () Bool)

(declare-fun e!1159949 () Bool)

(assert (=> b!1815604 (=> res!816339 e!1159949)))

(assert (=> b!1815604 (= res!816339 (not ((_ is ElementMatch!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun e!1159953 () Bool)

(assert (=> b!1815604 (= e!1159953 e!1159949)))

(declare-fun b!1815605 () Bool)

(declare-fun e!1159950 () Bool)

(assert (=> b!1815605 (= e!1159950 (not (= (head!4224 lt!705523) (c!296434 (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))))

(declare-fun b!1815606 () Bool)

(assert (=> b!1815606 (= e!1159954 (matchR!2360 (derivativeStep!1276 (regex!3559 (rule!5669 (_1!11093 lt!705567))) (head!4224 lt!705523)) (tail!2685 lt!705523)))))

(declare-fun b!1815607 () Bool)

(declare-fun res!816345 () Bool)

(declare-fun e!1159952 () Bool)

(assert (=> b!1815607 (=> (not res!816345) (not e!1159952))))

(declare-fun call!114185 () Bool)

(assert (=> b!1815607 (= res!816345 (not call!114185))))

(declare-fun b!1815608 () Bool)

(declare-fun e!1159951 () Bool)

(assert (=> b!1815608 (= e!1159951 e!1159950)))

(declare-fun res!816346 () Bool)

(assert (=> b!1815608 (=> res!816346 e!1159950)))

(assert (=> b!1815608 (= res!816346 call!114185)))

(declare-fun b!1815609 () Bool)

(assert (=> b!1815609 (= e!1159953 (not lt!705903))))

(declare-fun b!1815610 () Bool)

(declare-fun nullable!1507 (Regex!4887) Bool)

(assert (=> b!1815610 (= e!1159954 (nullable!1507 (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815611 () Bool)

(assert (=> b!1815611 (= e!1159952 (= (head!4224 lt!705523) (c!296434 (regex!3559 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun b!1815612 () Bool)

(assert (=> b!1815612 (= e!1159948 e!1159953)))

(declare-fun c!296560 () Bool)

(assert (=> b!1815612 (= c!296560 ((_ is EmptyLang!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815613 () Bool)

(declare-fun res!816344 () Bool)

(assert (=> b!1815613 (=> res!816344 e!1159949)))

(assert (=> b!1815613 (= res!816344 e!1159952)))

(declare-fun res!816343 () Bool)

(assert (=> b!1815613 (=> (not res!816343) (not e!1159952))))

(assert (=> b!1815613 (= res!816343 lt!705903)))

(declare-fun bm!114180 () Bool)

(assert (=> bm!114180 (= call!114185 (isEmpty!12535 lt!705523))))

(declare-fun b!1815614 () Bool)

(assert (=> b!1815614 (= e!1159949 e!1159951)))

(declare-fun res!816341 () Bool)

(assert (=> b!1815614 (=> (not res!816341) (not e!1159951))))

(assert (=> b!1815614 (= res!816341 (not lt!705903))))

(declare-fun b!1815615 () Bool)

(declare-fun res!816342 () Bool)

(assert (=> b!1815615 (=> (not res!816342) (not e!1159952))))

(assert (=> b!1815615 (= res!816342 (isEmpty!12535 (tail!2685 lt!705523)))))

(declare-fun b!1815616 () Bool)

(assert (=> b!1815616 (= e!1159948 (= lt!705903 call!114185))))

(declare-fun b!1815617 () Bool)

(declare-fun res!816340 () Bool)

(assert (=> b!1815617 (=> res!816340 e!1159950)))

(assert (=> b!1815617 (= res!816340 (not (isEmpty!12535 (tail!2685 lt!705523))))))

(assert (= (and d!556862 c!296561) b!1815610))

(assert (= (and d!556862 (not c!296561)) b!1815606))

(assert (= (and d!556862 c!296559) b!1815616))

(assert (= (and d!556862 (not c!296559)) b!1815612))

(assert (= (and b!1815612 c!296560) b!1815609))

(assert (= (and b!1815612 (not c!296560)) b!1815604))

(assert (= (and b!1815604 (not res!816339)) b!1815613))

(assert (= (and b!1815613 res!816343) b!1815607))

(assert (= (and b!1815607 res!816345) b!1815615))

(assert (= (and b!1815615 res!816342) b!1815611))

(assert (= (and b!1815613 (not res!816344)) b!1815614))

(assert (= (and b!1815614 res!816341) b!1815608))

(assert (= (and b!1815608 (not res!816346)) b!1815617))

(assert (= (and b!1815617 (not res!816340)) b!1815605))

(assert (= (or b!1815616 b!1815607 b!1815608) bm!114180))

(assert (=> b!1815611 m!2244995))

(assert (=> b!1815605 m!2244995))

(assert (=> b!1815617 m!2244997))

(assert (=> b!1815617 m!2244997))

(declare-fun m!2245455 () Bool)

(assert (=> b!1815617 m!2245455))

(declare-fun m!2245457 () Bool)

(assert (=> d!556862 m!2245457))

(declare-fun m!2245459 () Bool)

(assert (=> d!556862 m!2245459))

(assert (=> bm!114180 m!2245457))

(declare-fun m!2245461 () Bool)

(assert (=> b!1815610 m!2245461))

(assert (=> b!1815615 m!2244997))

(assert (=> b!1815615 m!2244997))

(assert (=> b!1815615 m!2245455))

(assert (=> b!1815606 m!2244995))

(assert (=> b!1815606 m!2244995))

(declare-fun m!2245463 () Bool)

(assert (=> b!1815606 m!2245463))

(assert (=> b!1815606 m!2244997))

(assert (=> b!1815606 m!2245463))

(assert (=> b!1815606 m!2244997))

(declare-fun m!2245465 () Bool)

(assert (=> b!1815606 m!2245465))

(assert (=> b!1814912 d!556862))

(declare-fun d!556864 () Bool)

(assert (=> d!556864 (not (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705523))))

(declare-fun lt!705906 () Unit!34499)

(declare-fun choose!11440 (LexerInterface!3188 List!19877 Rule!6918 List!19876 List!19876 Rule!6918) Unit!34499)

(assert (=> d!556864 (= lt!705906 (choose!11440 thiss!24550 rules!3447 (rule!5669 token!523) lt!705523 lt!705523 (rule!5669 (_1!11093 lt!705567))))))

(assert (=> d!556864 (isPrefix!1799 lt!705523 lt!705523)))

(assert (=> d!556864 (= (lemmaMaxPrefNoSmallerRuleMatches!180 thiss!24550 rules!3447 (rule!5669 token!523) lt!705523 lt!705523 (rule!5669 (_1!11093 lt!705567))) lt!705906)))

(declare-fun bs!407168 () Bool)

(assert (= bs!407168 d!556864))

(assert (=> bs!407168 m!2244497))

(declare-fun m!2245467 () Bool)

(assert (=> bs!407168 m!2245467))

(declare-fun m!2245469 () Bool)

(assert (=> bs!407168 m!2245469))

(assert (=> b!1814912 d!556864))

(declare-fun d!556866 () Bool)

(assert (=> d!556866 (= (rule!5669 (_1!11093 lt!705567)) (rule!5669 token!523))))

(declare-fun lt!705909 () Unit!34499)

(declare-fun choose!11441 (List!19877 Rule!6918 Rule!6918) Unit!34499)

(assert (=> d!556866 (= lt!705909 (choose!11441 rules!3447 (rule!5669 (_1!11093 lt!705567)) (rule!5669 token!523)))))

(assert (=> d!556866 (contains!3593 rules!3447 (rule!5669 (_1!11093 lt!705567)))))

(assert (=> d!556866 (= (lemmaSameIndexThenSameElement!116 rules!3447 (rule!5669 (_1!11093 lt!705567)) (rule!5669 token!523)) lt!705909)))

(declare-fun bs!407169 () Bool)

(assert (= bs!407169 d!556866))

(declare-fun m!2245471 () Bool)

(assert (=> bs!407169 m!2245471))

(assert (=> bs!407169 m!2244923))

(assert (=> b!1814891 d!556866))

(declare-fun d!556868 () Bool)

(assert (=> d!556868 (= suffix!1421 (_2!11093 lt!705567))))

(declare-fun lt!705910 () Unit!34499)

(assert (=> d!556868 (= lt!705910 (choose!11427 lt!705523 suffix!1421 lt!705523 (_2!11093 lt!705567) lt!705554))))

(assert (=> d!556868 (isPrefix!1799 lt!705523 lt!705554)))

(assert (=> d!556868 (= (lemmaSamePrefixThenSameSuffix!910 lt!705523 suffix!1421 lt!705523 (_2!11093 lt!705567) lt!705554) lt!705910)))

(declare-fun bs!407170 () Bool)

(assert (= bs!407170 d!556868))

(declare-fun m!2245473 () Bool)

(assert (=> bs!407170 m!2245473))

(assert (=> bs!407170 m!2244571))

(assert (=> b!1814930 d!556868))

(declare-fun d!556870 () Bool)

(assert (=> d!556870 (= lt!705565 lt!705523)))

(declare-fun lt!705913 () Unit!34499)

(declare-fun choose!11442 (List!19876 List!19876 List!19876) Unit!34499)

(assert (=> d!556870 (= lt!705913 (choose!11442 lt!705565 lt!705523 lt!705554))))

(assert (=> d!556870 (isPrefix!1799 lt!705565 lt!705554)))

(assert (=> d!556870 (= (lemmaIsPrefixSameLengthThenSameList!295 lt!705565 lt!705523 lt!705554) lt!705913)))

(declare-fun bs!407171 () Bool)

(assert (= bs!407171 d!556870))

(declare-fun m!2245475 () Bool)

(assert (=> bs!407171 m!2245475))

(assert (=> bs!407171 m!2244565))

(assert (=> b!1814930 d!556870))

(declare-fun d!556872 () Bool)

(declare-fun lt!705916 () Bool)

(declare-fun content!2895 (List!19877) (InoxSet Rule!6918))

(assert (=> d!556872 (= lt!705916 (select (content!2895 rules!3447) rule!422))))

(declare-fun e!1159960 () Bool)

(assert (=> d!556872 (= lt!705916 e!1159960)))

(declare-fun res!816351 () Bool)

(assert (=> d!556872 (=> (not res!816351) (not e!1159960))))

(assert (=> d!556872 (= res!816351 ((_ is Cons!19807) rules!3447))))

(assert (=> d!556872 (= (contains!3593 rules!3447 rule!422) lt!705916)))

(declare-fun b!1815622 () Bool)

(declare-fun e!1159959 () Bool)

(assert (=> b!1815622 (= e!1159960 e!1159959)))

(declare-fun res!816352 () Bool)

(assert (=> b!1815622 (=> res!816352 e!1159959)))

(assert (=> b!1815622 (= res!816352 (= (h!25208 rules!3447) rule!422))))

(declare-fun b!1815623 () Bool)

(assert (=> b!1815623 (= e!1159959 (contains!3593 (t!169486 rules!3447) rule!422))))

(assert (= (and d!556872 res!816351) b!1815622))

(assert (= (and b!1815622 (not res!816352)) b!1815623))

(declare-fun m!2245477 () Bool)

(assert (=> d!556872 m!2245477))

(declare-fun m!2245479 () Bool)

(assert (=> d!556872 m!2245479))

(declare-fun m!2245481 () Bool)

(assert (=> b!1815623 m!2245481))

(assert (=> b!1814909 d!556872))

(declare-fun e!1159961 () Bool)

(declare-fun lt!705917 () List!19876)

(declare-fun b!1815627 () Bool)

(assert (=> b!1815627 (= e!1159961 (or (not (= (Cons!19806 (head!4224 lt!705540) Nil!19806) Nil!19806)) (= lt!705917 lt!705523)))))

(declare-fun b!1815625 () Bool)

(declare-fun e!1159962 () List!19876)

(assert (=> b!1815625 (= e!1159962 (Cons!19806 (h!25207 lt!705523) (++!5389 (t!169485 lt!705523) (Cons!19806 (head!4224 lt!705540) Nil!19806))))))

(declare-fun d!556874 () Bool)

(assert (=> d!556874 e!1159961))

(declare-fun res!816354 () Bool)

(assert (=> d!556874 (=> (not res!816354) (not e!1159961))))

(assert (=> d!556874 (= res!816354 (= (content!2893 lt!705917) ((_ map or) (content!2893 lt!705523) (content!2893 (Cons!19806 (head!4224 lt!705540) Nil!19806)))))))

(assert (=> d!556874 (= lt!705917 e!1159962)))

(declare-fun c!296562 () Bool)

(assert (=> d!556874 (= c!296562 ((_ is Nil!19806) lt!705523))))

(assert (=> d!556874 (= (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806)) lt!705917)))

(declare-fun b!1815626 () Bool)

(declare-fun res!816353 () Bool)

(assert (=> b!1815626 (=> (not res!816353) (not e!1159961))))

(assert (=> b!1815626 (= res!816353 (= (size!15750 lt!705917) (+ (size!15750 lt!705523) (size!15750 (Cons!19806 (head!4224 lt!705540) Nil!19806)))))))

(declare-fun b!1815624 () Bool)

(assert (=> b!1815624 (= e!1159962 (Cons!19806 (head!4224 lt!705540) Nil!19806))))

(assert (= (and d!556874 c!296562) b!1815624))

(assert (= (and d!556874 (not c!296562)) b!1815625))

(assert (= (and d!556874 res!816354) b!1815626))

(assert (= (and b!1815626 res!816353) b!1815627))

(declare-fun m!2245483 () Bool)

(assert (=> b!1815625 m!2245483))

(declare-fun m!2245485 () Bool)

(assert (=> d!556874 m!2245485))

(assert (=> d!556874 m!2244901))

(declare-fun m!2245487 () Bool)

(assert (=> d!556874 m!2245487))

(declare-fun m!2245489 () Bool)

(assert (=> b!1815626 m!2245489))

(assert (=> b!1815626 m!2244907))

(declare-fun m!2245491 () Bool)

(assert (=> b!1815626 m!2245491))

(assert (=> b!1814931 d!556874))

(declare-fun b!1815629 () Bool)

(declare-fun res!816357 () Bool)

(declare-fun e!1159964 () Bool)

(assert (=> b!1815629 (=> (not res!816357) (not e!1159964))))

(assert (=> b!1815629 (= res!816357 (= (head!4224 lt!705521) (head!4224 lt!705565)))))

(declare-fun d!556876 () Bool)

(declare-fun e!1159963 () Bool)

(assert (=> d!556876 e!1159963))

(declare-fun res!816355 () Bool)

(assert (=> d!556876 (=> res!816355 e!1159963)))

(declare-fun lt!705918 () Bool)

(assert (=> d!556876 (= res!816355 (not lt!705918))))

(declare-fun e!1159965 () Bool)

(assert (=> d!556876 (= lt!705918 e!1159965)))

(declare-fun res!816358 () Bool)

(assert (=> d!556876 (=> res!816358 e!1159965)))

(assert (=> d!556876 (= res!816358 ((_ is Nil!19806) lt!705521))))

(assert (=> d!556876 (= (isPrefix!1799 lt!705521 lt!705565) lt!705918)))

(declare-fun b!1815630 () Bool)

(assert (=> b!1815630 (= e!1159964 (isPrefix!1799 (tail!2685 lt!705521) (tail!2685 lt!705565)))))

(declare-fun b!1815631 () Bool)

(assert (=> b!1815631 (= e!1159963 (>= (size!15750 lt!705565) (size!15750 lt!705521)))))

(declare-fun b!1815628 () Bool)

(assert (=> b!1815628 (= e!1159965 e!1159964)))

(declare-fun res!816356 () Bool)

(assert (=> b!1815628 (=> (not res!816356) (not e!1159964))))

(assert (=> b!1815628 (= res!816356 (not ((_ is Nil!19806) lt!705565)))))

(assert (= (and d!556876 (not res!816358)) b!1815628))

(assert (= (and b!1815628 res!816356) b!1815629))

(assert (= (and b!1815629 res!816357) b!1815630))

(assert (= (and d!556876 (not res!816355)) b!1815631))

(assert (=> b!1815629 m!2244889))

(assert (=> b!1815629 m!2244977))

(assert (=> b!1815630 m!2244893))

(assert (=> b!1815630 m!2244981))

(assert (=> b!1815630 m!2244893))

(assert (=> b!1815630 m!2244981))

(declare-fun m!2245493 () Bool)

(assert (=> b!1815630 m!2245493))

(assert (=> b!1815631 m!2244589))

(declare-fun m!2245495 () Bool)

(assert (=> b!1815631 m!2245495))

(assert (=> b!1814931 d!556876))

(declare-fun d!556878 () Bool)

(assert (=> d!556878 (= suffix!1421 lt!705540)))

(declare-fun lt!705919 () Unit!34499)

(assert (=> d!556878 (= lt!705919 (choose!11427 lt!705523 suffix!1421 lt!705523 lt!705540 lt!705554))))

(assert (=> d!556878 (isPrefix!1799 lt!705523 lt!705554)))

(assert (=> d!556878 (= (lemmaSamePrefixThenSameSuffix!910 lt!705523 suffix!1421 lt!705523 lt!705540 lt!705554) lt!705919)))

(declare-fun bs!407172 () Bool)

(assert (= bs!407172 d!556878))

(declare-fun m!2245497 () Bool)

(assert (=> bs!407172 m!2245497))

(assert (=> bs!407172 m!2244571))

(assert (=> b!1814931 d!556878))

(declare-fun d!556880 () Bool)

(assert (=> d!556880 (isPrefix!1799 (++!5389 lt!705523 (Cons!19806 (head!4224 (getSuffix!966 lt!705554 lt!705523)) Nil!19806)) lt!705554)))

(declare-fun lt!705922 () Unit!34499)

(declare-fun choose!11444 (List!19876 List!19876) Unit!34499)

(assert (=> d!556880 (= lt!705922 (choose!11444 lt!705523 lt!705554))))

(assert (=> d!556880 (isPrefix!1799 lt!705523 lt!705554)))

(assert (=> d!556880 (= (lemmaAddHeadSuffixToPrefixStillPrefix!335 lt!705523 lt!705554) lt!705922)))

(declare-fun bs!407173 () Bool)

(assert (= bs!407173 d!556880))

(assert (=> bs!407173 m!2244541))

(declare-fun m!2245499 () Bool)

(assert (=> bs!407173 m!2245499))

(declare-fun m!2245501 () Bool)

(assert (=> bs!407173 m!2245501))

(assert (=> bs!407173 m!2244541))

(declare-fun m!2245503 () Bool)

(assert (=> bs!407173 m!2245503))

(assert (=> bs!407173 m!2244571))

(assert (=> bs!407173 m!2245501))

(declare-fun m!2245505 () Bool)

(assert (=> bs!407173 m!2245505))

(assert (=> b!1814931 d!556880))

(declare-fun d!556882 () Bool)

(assert (=> d!556882 (not (matchR!2360 lt!705518 lt!705565))))

(declare-fun lt!705925 () Unit!34499)

(declare-fun choose!11445 (Regex!4887 List!19876 List!19876) Unit!34499)

(assert (=> d!556882 (= lt!705925 (choose!11445 lt!705518 lt!705521 lt!705565))))

(assert (=> d!556882 (validRegex!1981 lt!705518)))

(assert (=> d!556882 (= (lemmaNotPrefixMatchThenCannotMatchLonger!198 lt!705518 lt!705521 lt!705565) lt!705925)))

(declare-fun bs!407174 () Bool)

(assert (= bs!407174 d!556882))

(assert (=> bs!407174 m!2244529))

(declare-fun m!2245507 () Bool)

(assert (=> bs!407174 m!2245507))

(declare-fun m!2245509 () Bool)

(assert (=> bs!407174 m!2245509))

(assert (=> b!1814931 d!556882))

(declare-fun d!556884 () Bool)

(assert (=> d!556884 (= (head!4224 lt!705540) (h!25207 lt!705540))))

(assert (=> b!1814931 d!556884))

(declare-fun d!556886 () Bool)

(declare-fun e!1159966 () Bool)

(assert (=> d!556886 e!1159966))

(declare-fun c!296564 () Bool)

(assert (=> d!556886 (= c!296564 ((_ is EmptyExpr!4887) lt!705518))))

(declare-fun lt!705926 () Bool)

(declare-fun e!1159972 () Bool)

(assert (=> d!556886 (= lt!705926 e!1159972)))

(declare-fun c!296566 () Bool)

(assert (=> d!556886 (= c!296566 (isEmpty!12535 lt!705565))))

(assert (=> d!556886 (validRegex!1981 lt!705518)))

(assert (=> d!556886 (= (matchR!2360 lt!705518 lt!705565) lt!705926)))

(declare-fun b!1815632 () Bool)

(declare-fun res!816359 () Bool)

(declare-fun e!1159967 () Bool)

(assert (=> b!1815632 (=> res!816359 e!1159967)))

(assert (=> b!1815632 (= res!816359 (not ((_ is ElementMatch!4887) lt!705518)))))

(declare-fun e!1159971 () Bool)

(assert (=> b!1815632 (= e!1159971 e!1159967)))

(declare-fun b!1815633 () Bool)

(declare-fun e!1159968 () Bool)

(assert (=> b!1815633 (= e!1159968 (not (= (head!4224 lt!705565) (c!296434 lt!705518))))))

(declare-fun b!1815634 () Bool)

(assert (=> b!1815634 (= e!1159972 (matchR!2360 (derivativeStep!1276 lt!705518 (head!4224 lt!705565)) (tail!2685 lt!705565)))))

(declare-fun b!1815635 () Bool)

(declare-fun res!816365 () Bool)

(declare-fun e!1159970 () Bool)

(assert (=> b!1815635 (=> (not res!816365) (not e!1159970))))

(declare-fun call!114186 () Bool)

(assert (=> b!1815635 (= res!816365 (not call!114186))))

(declare-fun b!1815636 () Bool)

(declare-fun e!1159969 () Bool)

(assert (=> b!1815636 (= e!1159969 e!1159968)))

(declare-fun res!816366 () Bool)

(assert (=> b!1815636 (=> res!816366 e!1159968)))

(assert (=> b!1815636 (= res!816366 call!114186)))

(declare-fun b!1815637 () Bool)

(assert (=> b!1815637 (= e!1159971 (not lt!705926))))

(declare-fun b!1815638 () Bool)

(assert (=> b!1815638 (= e!1159972 (nullable!1507 lt!705518))))

(declare-fun b!1815639 () Bool)

(assert (=> b!1815639 (= e!1159970 (= (head!4224 lt!705565) (c!296434 lt!705518)))))

(declare-fun b!1815640 () Bool)

(assert (=> b!1815640 (= e!1159966 e!1159971)))

(declare-fun c!296565 () Bool)

(assert (=> b!1815640 (= c!296565 ((_ is EmptyLang!4887) lt!705518))))

(declare-fun b!1815641 () Bool)

(declare-fun res!816364 () Bool)

(assert (=> b!1815641 (=> res!816364 e!1159967)))

(assert (=> b!1815641 (= res!816364 e!1159970)))

(declare-fun res!816363 () Bool)

(assert (=> b!1815641 (=> (not res!816363) (not e!1159970))))

(assert (=> b!1815641 (= res!816363 lt!705926)))

(declare-fun bm!114181 () Bool)

(assert (=> bm!114181 (= call!114186 (isEmpty!12535 lt!705565))))

(declare-fun b!1815642 () Bool)

(assert (=> b!1815642 (= e!1159967 e!1159969)))

(declare-fun res!816361 () Bool)

(assert (=> b!1815642 (=> (not res!816361) (not e!1159969))))

(assert (=> b!1815642 (= res!816361 (not lt!705926))))

(declare-fun b!1815643 () Bool)

(declare-fun res!816362 () Bool)

(assert (=> b!1815643 (=> (not res!816362) (not e!1159970))))

(assert (=> b!1815643 (= res!816362 (isEmpty!12535 (tail!2685 lt!705565)))))

(declare-fun b!1815644 () Bool)

(assert (=> b!1815644 (= e!1159966 (= lt!705926 call!114186))))

(declare-fun b!1815645 () Bool)

(declare-fun res!816360 () Bool)

(assert (=> b!1815645 (=> res!816360 e!1159968)))

(assert (=> b!1815645 (= res!816360 (not (isEmpty!12535 (tail!2685 lt!705565))))))

(assert (= (and d!556886 c!296566) b!1815638))

(assert (= (and d!556886 (not c!296566)) b!1815634))

(assert (= (and d!556886 c!296564) b!1815644))

(assert (= (and d!556886 (not c!296564)) b!1815640))

(assert (= (and b!1815640 c!296565) b!1815637))

(assert (= (and b!1815640 (not c!296565)) b!1815632))

(assert (= (and b!1815632 (not res!816359)) b!1815641))

(assert (= (and b!1815641 res!816363) b!1815635))

(assert (= (and b!1815635 res!816365) b!1815643))

(assert (= (and b!1815643 res!816362) b!1815639))

(assert (= (and b!1815641 (not res!816364)) b!1815642))

(assert (= (and b!1815642 res!816361) b!1815636))

(assert (= (and b!1815636 (not res!816366)) b!1815645))

(assert (= (and b!1815645 (not res!816360)) b!1815633))

(assert (= (or b!1815644 b!1815635 b!1815636) bm!114181))

(assert (=> b!1815639 m!2244977))

(assert (=> b!1815633 m!2244977))

(assert (=> b!1815645 m!2244981))

(assert (=> b!1815645 m!2244981))

(declare-fun m!2245511 () Bool)

(assert (=> b!1815645 m!2245511))

(declare-fun m!2245513 () Bool)

(assert (=> d!556886 m!2245513))

(assert (=> d!556886 m!2245509))

(assert (=> bm!114181 m!2245513))

(declare-fun m!2245515 () Bool)

(assert (=> b!1815638 m!2245515))

(assert (=> b!1815643 m!2244981))

(assert (=> b!1815643 m!2244981))

(assert (=> b!1815643 m!2245511))

(assert (=> b!1815634 m!2244977))

(assert (=> b!1815634 m!2244977))

(declare-fun m!2245517 () Bool)

(assert (=> b!1815634 m!2245517))

(assert (=> b!1815634 m!2244981))

(assert (=> b!1815634 m!2245517))

(assert (=> b!1815634 m!2244981))

(declare-fun m!2245519 () Bool)

(assert (=> b!1815634 m!2245519))

(assert (=> b!1814931 d!556886))

(declare-fun d!556888 () Bool)

(assert (=> d!556888 (isPrefix!1799 lt!705521 lt!705565)))

(declare-fun lt!705929 () Unit!34499)

(declare-fun choose!11446 (List!19876 List!19876 List!19876) Unit!34499)

(assert (=> d!556888 (= lt!705929 (choose!11446 lt!705565 lt!705521 lt!705554))))

(assert (=> d!556888 (isPrefix!1799 lt!705565 lt!705554)))

(assert (=> d!556888 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!207 lt!705565 lt!705521 lt!705554) lt!705929)))

(declare-fun bs!407175 () Bool)

(assert (= bs!407175 d!556888))

(assert (=> bs!407175 m!2244531))

(declare-fun m!2245521 () Bool)

(assert (=> bs!407175 m!2245521))

(assert (=> bs!407175 m!2244565))

(assert (=> b!1814931 d!556888))

(declare-fun b!1815647 () Bool)

(declare-fun res!816369 () Bool)

(declare-fun e!1159974 () Bool)

(assert (=> b!1815647 (=> (not res!816369) (not e!1159974))))

(assert (=> b!1815647 (= res!816369 (= (head!4224 (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806))) (head!4224 lt!705554)))))

(declare-fun d!556890 () Bool)

(declare-fun e!1159973 () Bool)

(assert (=> d!556890 e!1159973))

(declare-fun res!816367 () Bool)

(assert (=> d!556890 (=> res!816367 e!1159973)))

(declare-fun lt!705930 () Bool)

(assert (=> d!556890 (= res!816367 (not lt!705930))))

(declare-fun e!1159975 () Bool)

(assert (=> d!556890 (= lt!705930 e!1159975)))

(declare-fun res!816370 () Bool)

(assert (=> d!556890 (=> res!816370 e!1159975)))

(assert (=> d!556890 (= res!816370 ((_ is Nil!19806) (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806))))))

(assert (=> d!556890 (= (isPrefix!1799 (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806)) lt!705554) lt!705930)))

(declare-fun b!1815648 () Bool)

(assert (=> b!1815648 (= e!1159974 (isPrefix!1799 (tail!2685 (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806))) (tail!2685 lt!705554)))))

(declare-fun b!1815649 () Bool)

(assert (=> b!1815649 (= e!1159973 (>= (size!15750 lt!705554) (size!15750 (++!5389 lt!705523 (Cons!19806 (head!4224 lt!705540) Nil!19806)))))))

(declare-fun b!1815646 () Bool)

(assert (=> b!1815646 (= e!1159975 e!1159974)))

(declare-fun res!816368 () Bool)

(assert (=> b!1815646 (=> (not res!816368) (not e!1159974))))

(assert (=> b!1815646 (= res!816368 (not ((_ is Nil!19806) lt!705554)))))

(assert (= (and d!556890 (not res!816370)) b!1815646))

(assert (= (and b!1815646 res!816368) b!1815647))

(assert (= (and b!1815647 res!816369) b!1815648))

(assert (= (and d!556890 (not res!816367)) b!1815649))

(assert (=> b!1815647 m!2244543))

(declare-fun m!2245523 () Bool)

(assert (=> b!1815647 m!2245523))

(assert (=> b!1815647 m!2244989))

(assert (=> b!1815648 m!2244543))

(declare-fun m!2245525 () Bool)

(assert (=> b!1815648 m!2245525))

(assert (=> b!1815648 m!2244731))

(assert (=> b!1815648 m!2245525))

(assert (=> b!1815648 m!2244731))

(declare-fun m!2245527 () Bool)

(assert (=> b!1815648 m!2245527))

(assert (=> b!1815649 m!2244729))

(assert (=> b!1815649 m!2244543))

(declare-fun m!2245529 () Bool)

(assert (=> b!1815649 m!2245529))

(assert (=> b!1814931 d!556890))

(declare-fun d!556892 () Bool)

(declare-fun lt!705931 () List!19876)

(assert (=> d!556892 (= (++!5389 lt!705523 lt!705931) lt!705554)))

(declare-fun e!1159976 () List!19876)

(assert (=> d!556892 (= lt!705931 e!1159976)))

(declare-fun c!296567 () Bool)

(assert (=> d!556892 (= c!296567 ((_ is Cons!19806) lt!705523))))

(assert (=> d!556892 (>= (size!15750 lt!705554) (size!15750 lt!705523))))

(assert (=> d!556892 (= (getSuffix!966 lt!705554 lt!705523) lt!705931)))

(declare-fun b!1815650 () Bool)

(assert (=> b!1815650 (= e!1159976 (getSuffix!966 (tail!2685 lt!705554) (t!169485 lt!705523)))))

(declare-fun b!1815651 () Bool)

(assert (=> b!1815651 (= e!1159976 lt!705554)))

(assert (= (and d!556892 c!296567) b!1815650))

(assert (= (and d!556892 (not c!296567)) b!1815651))

(declare-fun m!2245531 () Bool)

(assert (=> d!556892 m!2245531))

(assert (=> d!556892 m!2244729))

(assert (=> d!556892 m!2244907))

(assert (=> b!1815650 m!2244731))

(assert (=> b!1815650 m!2244731))

(declare-fun m!2245533 () Bool)

(assert (=> b!1815650 m!2245533))

(assert (=> b!1814931 d!556892))

(declare-fun d!556894 () Bool)

(assert (=> d!556894 (matchR!2360 (rulesRegex!915 thiss!24550 rules!3447) (list!8063 (charsOf!2208 (_1!11093 lt!705567))))))

(declare-fun lt!705934 () Unit!34499)

(declare-fun choose!11447 (LexerInterface!3188 List!19877 List!19876 Token!6684 Rule!6918 List!19876) Unit!34499)

(assert (=> d!556894 (= lt!705934 (choose!11447 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567) (rule!5669 (_1!11093 lt!705567)) (_2!11093 lt!705567)))))

(assert (=> d!556894 (not (isEmpty!12534 rules!3447))))

(assert (=> d!556894 (= (lemmaMaxPrefixThenMatchesRulesRegex!266 thiss!24550 rules!3447 lt!705554 (_1!11093 lt!705567) (rule!5669 (_1!11093 lt!705567)) (_2!11093 lt!705567)) lt!705934)))

(declare-fun bs!407176 () Bool)

(assert (= bs!407176 d!556894))

(assert (=> bs!407176 m!2244513))

(assert (=> bs!407176 m!2244473))

(assert (=> bs!407176 m!2244449))

(declare-fun m!2245535 () Bool)

(assert (=> bs!407176 m!2245535))

(assert (=> bs!407176 m!2244447))

(assert (=> bs!407176 m!2244449))

(assert (=> bs!407176 m!2244447))

(declare-fun m!2245537 () Bool)

(assert (=> bs!407176 m!2245537))

(assert (=> bs!407176 m!2244473))

(assert (=> b!1814931 d!556894))

(declare-fun d!556896 () Bool)

(assert (=> d!556896 (= (inv!25825 (tag!3971 rule!422)) (= (mod (str.len (value!111103 (tag!3971 rule!422))) 2) 0))))

(assert (=> b!1814906 d!556896))

(declare-fun d!556898 () Bool)

(declare-fun res!816371 () Bool)

(declare-fun e!1159977 () Bool)

(assert (=> d!556898 (=> (not res!816371) (not e!1159977))))

(assert (=> d!556898 (= res!816371 (semiInverseModEq!1422 (toChars!4949 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 rule!422))))))

(assert (=> d!556898 (= (inv!25830 (transformation!3559 rule!422)) e!1159977)))

(declare-fun b!1815652 () Bool)

(assert (=> b!1815652 (= e!1159977 (equivClasses!1363 (toChars!4949 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 rule!422))))))

(assert (= (and d!556898 res!816371) b!1815652))

(declare-fun m!2245539 () Bool)

(assert (=> d!556898 m!2245539))

(declare-fun m!2245541 () Bool)

(assert (=> b!1815652 m!2245541))

(assert (=> b!1814906 d!556898))

(declare-fun d!556900 () Bool)

(declare-fun res!816376 () Bool)

(declare-fun e!1159980 () Bool)

(assert (=> d!556900 (=> (not res!816376) (not e!1159980))))

(assert (=> d!556900 (= res!816376 (not (isEmpty!12535 (originalCharacters!4373 token!523))))))

(assert (=> d!556900 (= (inv!25831 token!523) e!1159980)))

(declare-fun b!1815657 () Bool)

(declare-fun res!816377 () Bool)

(assert (=> b!1815657 (=> (not res!816377) (not e!1159980))))

(assert (=> b!1815657 (= res!816377 (= (originalCharacters!4373 token!523) (list!8063 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (value!111104 token!523)))))))

(declare-fun b!1815658 () Bool)

(assert (=> b!1815658 (= e!1159980 (= (size!15748 token!523) (size!15750 (originalCharacters!4373 token!523))))))

(assert (= (and d!556900 res!816376) b!1815657))

(assert (= (and b!1815657 res!816377) b!1815658))

(declare-fun b_lambda!59911 () Bool)

(assert (=> (not b_lambda!59911) (not b!1815657)))

(declare-fun tb!111043 () Bool)

(declare-fun t!169531 () Bool)

(assert (=> (and b!1814919 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 token!523)))) t!169531) tb!111043))

(declare-fun b!1815659 () Bool)

(declare-fun e!1159981 () Bool)

(declare-fun tp!512589 () Bool)

(assert (=> b!1815659 (= e!1159981 (and (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (value!111104 token!523)))) tp!512589))))

(declare-fun result!133346 () Bool)

(assert (=> tb!111043 (= result!133346 (and (inv!25833 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (value!111104 token!523))) e!1159981))))

(assert (= tb!111043 b!1815659))

(declare-fun m!2245543 () Bool)

(assert (=> b!1815659 m!2245543))

(declare-fun m!2245545 () Bool)

(assert (=> tb!111043 m!2245545))

(assert (=> b!1815657 t!169531))

(declare-fun b_and!140485 () Bool)

(assert (= b_and!140415 (and (=> t!169531 result!133346) b_and!140485)))

(declare-fun t!169533 () Bool)

(declare-fun tb!111045 () Bool)

(assert (=> (and b!1814925 (= (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toChars!4949 (transformation!3559 (rule!5669 token!523)))) t!169533) tb!111045))

(declare-fun result!133348 () Bool)

(assert (= result!133348 result!133346))

(assert (=> b!1815657 t!169533))

(declare-fun b_and!140487 () Bool)

(assert (= b_and!140417 (and (=> t!169533 result!133348) b_and!140487)))

(declare-fun t!169535 () Bool)

(declare-fun tb!111047 () Bool)

(assert (=> (and b!1814926 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 token!523)))) t!169535) tb!111047))

(declare-fun result!133350 () Bool)

(assert (= result!133350 result!133346))

(assert (=> b!1815657 t!169535))

(declare-fun b_and!140489 () Bool)

(assert (= b_and!140419 (and (=> t!169535 result!133350) b_and!140489)))

(declare-fun m!2245547 () Bool)

(assert (=> d!556900 m!2245547))

(declare-fun m!2245549 () Bool)

(assert (=> b!1815657 m!2245549))

(assert (=> b!1815657 m!2245549))

(declare-fun m!2245551 () Bool)

(assert (=> b!1815657 m!2245551))

(declare-fun m!2245553 () Bool)

(assert (=> b!1815658 m!2245553))

(assert (=> start!179434 d!556900))

(declare-fun d!556902 () Bool)

(assert (=> d!556902 (= (list!8063 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))) (list!8066 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))))

(declare-fun bs!407177 () Bool)

(assert (= bs!407177 d!556902))

(declare-fun m!2245555 () Bool)

(assert (=> bs!407177 m!2245555))

(assert (=> b!1814929 d!556902))

(declare-fun bs!407178 () Bool)

(declare-fun d!556904 () Bool)

(assert (= bs!407178 (and d!556904 b!1814897)))

(declare-fun lambda!71072 () Int)

(assert (=> bs!407178 (= lambda!71072 lambda!71054)))

(declare-fun b!1815664 () Bool)

(declare-fun e!1159984 () Bool)

(assert (=> b!1815664 (= e!1159984 true)))

(assert (=> d!556904 e!1159984))

(assert (= d!556904 b!1815664))

(assert (=> b!1815664 (< (dynLambda!9875 order!12951 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9876 order!12953 lambda!71072))))

(assert (=> b!1815664 (< (dynLambda!9877 order!12955 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) (dynLambda!9876 order!12953 lambda!71072))))

(assert (=> d!556904 (= (list!8063 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))) (list!8063 lt!705556))))

(declare-fun lt!705937 () Unit!34499)

(declare-fun ForallOf!359 (Int BalanceConc!13122) Unit!34499)

(assert (=> d!556904 (= lt!705937 (ForallOf!359 lambda!71072 lt!705556))))

(assert (=> d!556904 (= (lemmaSemiInverse!697 (transformation!3559 (rule!5669 (_1!11093 lt!705567))) lt!705556) lt!705937)))

(declare-fun b_lambda!59913 () Bool)

(assert (=> (not b_lambda!59913) (not d!556904)))

(assert (=> d!556904 t!169473))

(declare-fun b_and!140491 () Bool)

(assert (= b_and!140485 (and (=> t!169473 result!133282) b_and!140491)))

(assert (=> d!556904 t!169475))

(declare-fun b_and!140493 () Bool)

(assert (= b_and!140487 (and (=> t!169475 result!133284) b_and!140493)))

(assert (=> d!556904 t!169477))

(declare-fun b_and!140495 () Bool)

(assert (= b_and!140489 (and (=> t!169477 result!133286) b_and!140495)))

(declare-fun b_lambda!59915 () Bool)

(assert (=> (not b_lambda!59915) (not d!556904)))

(assert (=> d!556904 t!169479))

(declare-fun b_and!140497 () Bool)

(assert (= b_and!140479 (and (=> t!169479 result!133288) b_and!140497)))

(assert (=> d!556904 t!169481))

(declare-fun b_and!140499 () Bool)

(assert (= b_and!140481 (and (=> t!169481 result!133292) b_and!140499)))

(assert (=> d!556904 t!169483))

(declare-fun b_and!140501 () Bool)

(assert (= b_and!140483 (and (=> t!169483 result!133294) b_and!140501)))

(assert (=> d!556904 m!2244521))

(assert (=> d!556904 m!2244523))

(declare-fun m!2245557 () Bool)

(assert (=> d!556904 m!2245557))

(assert (=> d!556904 m!2244561))

(assert (=> d!556904 m!2244521))

(assert (=> d!556904 m!2244523))

(assert (=> d!556904 m!2244525))

(assert (=> b!1814929 d!556904))

(declare-fun d!556906 () Bool)

(declare-fun e!1159985 () Bool)

(assert (=> d!556906 e!1159985))

(declare-fun c!296569 () Bool)

(assert (=> d!556906 (= c!296569 ((_ is EmptyExpr!4887) (regex!3559 lt!705525)))))

(declare-fun lt!705938 () Bool)

(declare-fun e!1159991 () Bool)

(assert (=> d!556906 (= lt!705938 e!1159991)))

(declare-fun c!296571 () Bool)

(assert (=> d!556906 (= c!296571 (isEmpty!12535 (list!8063 (charsOf!2208 (_1!11093 lt!705567)))))))

(assert (=> d!556906 (validRegex!1981 (regex!3559 lt!705525))))

(assert (=> d!556906 (= (matchR!2360 (regex!3559 lt!705525) (list!8063 (charsOf!2208 (_1!11093 lt!705567)))) lt!705938)))

(declare-fun b!1815665 () Bool)

(declare-fun res!816378 () Bool)

(declare-fun e!1159986 () Bool)

(assert (=> b!1815665 (=> res!816378 e!1159986)))

(assert (=> b!1815665 (= res!816378 (not ((_ is ElementMatch!4887) (regex!3559 lt!705525))))))

(declare-fun e!1159990 () Bool)

(assert (=> b!1815665 (= e!1159990 e!1159986)))

(declare-fun b!1815666 () Bool)

(declare-fun e!1159987 () Bool)

(assert (=> b!1815666 (= e!1159987 (not (= (head!4224 (list!8063 (charsOf!2208 (_1!11093 lt!705567)))) (c!296434 (regex!3559 lt!705525)))))))

(declare-fun b!1815667 () Bool)

(assert (=> b!1815667 (= e!1159991 (matchR!2360 (derivativeStep!1276 (regex!3559 lt!705525) (head!4224 (list!8063 (charsOf!2208 (_1!11093 lt!705567))))) (tail!2685 (list!8063 (charsOf!2208 (_1!11093 lt!705567))))))))

(declare-fun b!1815668 () Bool)

(declare-fun res!816384 () Bool)

(declare-fun e!1159989 () Bool)

(assert (=> b!1815668 (=> (not res!816384) (not e!1159989))))

(declare-fun call!114187 () Bool)

(assert (=> b!1815668 (= res!816384 (not call!114187))))

(declare-fun b!1815669 () Bool)

(declare-fun e!1159988 () Bool)

(assert (=> b!1815669 (= e!1159988 e!1159987)))

(declare-fun res!816385 () Bool)

(assert (=> b!1815669 (=> res!816385 e!1159987)))

(assert (=> b!1815669 (= res!816385 call!114187)))

(declare-fun b!1815670 () Bool)

(assert (=> b!1815670 (= e!1159990 (not lt!705938))))

(declare-fun b!1815671 () Bool)

(assert (=> b!1815671 (= e!1159991 (nullable!1507 (regex!3559 lt!705525)))))

(declare-fun b!1815672 () Bool)

(assert (=> b!1815672 (= e!1159989 (= (head!4224 (list!8063 (charsOf!2208 (_1!11093 lt!705567)))) (c!296434 (regex!3559 lt!705525))))))

(declare-fun b!1815673 () Bool)

(assert (=> b!1815673 (= e!1159985 e!1159990)))

(declare-fun c!296570 () Bool)

(assert (=> b!1815673 (= c!296570 ((_ is EmptyLang!4887) (regex!3559 lt!705525)))))

(declare-fun b!1815674 () Bool)

(declare-fun res!816383 () Bool)

(assert (=> b!1815674 (=> res!816383 e!1159986)))

(assert (=> b!1815674 (= res!816383 e!1159989)))

(declare-fun res!816382 () Bool)

(assert (=> b!1815674 (=> (not res!816382) (not e!1159989))))

(assert (=> b!1815674 (= res!816382 lt!705938)))

(declare-fun bm!114182 () Bool)

(assert (=> bm!114182 (= call!114187 (isEmpty!12535 (list!8063 (charsOf!2208 (_1!11093 lt!705567)))))))

(declare-fun b!1815675 () Bool)

(assert (=> b!1815675 (= e!1159986 e!1159988)))

(declare-fun res!816380 () Bool)

(assert (=> b!1815675 (=> (not res!816380) (not e!1159988))))

(assert (=> b!1815675 (= res!816380 (not lt!705938))))

(declare-fun b!1815676 () Bool)

(declare-fun res!816381 () Bool)

(assert (=> b!1815676 (=> (not res!816381) (not e!1159989))))

(assert (=> b!1815676 (= res!816381 (isEmpty!12535 (tail!2685 (list!8063 (charsOf!2208 (_1!11093 lt!705567))))))))

(declare-fun b!1815677 () Bool)

(assert (=> b!1815677 (= e!1159985 (= lt!705938 call!114187))))

(declare-fun b!1815678 () Bool)

(declare-fun res!816379 () Bool)

(assert (=> b!1815678 (=> res!816379 e!1159987)))

(assert (=> b!1815678 (= res!816379 (not (isEmpty!12535 (tail!2685 (list!8063 (charsOf!2208 (_1!11093 lt!705567)))))))))

(assert (= (and d!556906 c!296571) b!1815671))

(assert (= (and d!556906 (not c!296571)) b!1815667))

(assert (= (and d!556906 c!296569) b!1815677))

(assert (= (and d!556906 (not c!296569)) b!1815673))

(assert (= (and b!1815673 c!296570) b!1815670))

(assert (= (and b!1815673 (not c!296570)) b!1815665))

(assert (= (and b!1815665 (not res!816378)) b!1815674))

(assert (= (and b!1815674 res!816382) b!1815668))

(assert (= (and b!1815668 res!816384) b!1815676))

(assert (= (and b!1815676 res!816381) b!1815672))

(assert (= (and b!1815674 (not res!816383)) b!1815675))

(assert (= (and b!1815675 res!816380) b!1815669))

(assert (= (and b!1815669 (not res!816385)) b!1815678))

(assert (= (and b!1815678 (not res!816379)) b!1815666))

(assert (= (or b!1815677 b!1815668 b!1815669) bm!114182))

(assert (=> b!1815672 m!2244449))

(declare-fun m!2245559 () Bool)

(assert (=> b!1815672 m!2245559))

(assert (=> b!1815666 m!2244449))

(assert (=> b!1815666 m!2245559))

(assert (=> b!1815678 m!2244449))

(declare-fun m!2245561 () Bool)

(assert (=> b!1815678 m!2245561))

(assert (=> b!1815678 m!2245561))

(declare-fun m!2245563 () Bool)

(assert (=> b!1815678 m!2245563))

(assert (=> d!556906 m!2244449))

(declare-fun m!2245565 () Bool)

(assert (=> d!556906 m!2245565))

(declare-fun m!2245567 () Bool)

(assert (=> d!556906 m!2245567))

(assert (=> bm!114182 m!2244449))

(assert (=> bm!114182 m!2245565))

(declare-fun m!2245569 () Bool)

(assert (=> b!1815671 m!2245569))

(assert (=> b!1815676 m!2244449))

(assert (=> b!1815676 m!2245561))

(assert (=> b!1815676 m!2245561))

(assert (=> b!1815676 m!2245563))

(assert (=> b!1815667 m!2244449))

(assert (=> b!1815667 m!2245559))

(assert (=> b!1815667 m!2245559))

(declare-fun m!2245571 () Bool)

(assert (=> b!1815667 m!2245571))

(assert (=> b!1815667 m!2244449))

(assert (=> b!1815667 m!2245561))

(assert (=> b!1815667 m!2245571))

(assert (=> b!1815667 m!2245561))

(declare-fun m!2245573 () Bool)

(assert (=> b!1815667 m!2245573))

(assert (=> b!1814928 d!556906))

(declare-fun d!556908 () Bool)

(assert (=> d!556908 (= (list!8063 (charsOf!2208 (_1!11093 lt!705567))) (list!8066 (c!296435 (charsOf!2208 (_1!11093 lt!705567)))))))

(declare-fun bs!407179 () Bool)

(assert (= bs!407179 d!556908))

(declare-fun m!2245575 () Bool)

(assert (=> bs!407179 m!2245575))

(assert (=> b!1814928 d!556908))

(assert (=> b!1814928 d!556698))

(declare-fun d!556910 () Bool)

(assert (=> d!556910 (= (get!6140 lt!705529) (v!25665 lt!705529))))

(assert (=> b!1814928 d!556910))

(declare-fun d!556912 () Bool)

(declare-fun c!296574 () Bool)

(assert (=> d!556912 (= c!296574 ((_ is Node!6589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))))

(declare-fun e!1159996 () Bool)

(assert (=> d!556912 (= (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))) e!1159996)))

(declare-fun b!1815685 () Bool)

(declare-fun inv!25836 (Conc!6589) Bool)

(assert (=> b!1815685 (= e!1159996 (inv!25836 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))))

(declare-fun b!1815686 () Bool)

(declare-fun e!1159997 () Bool)

(assert (=> b!1815686 (= e!1159996 e!1159997)))

(declare-fun res!816388 () Bool)

(assert (=> b!1815686 (= res!816388 (not ((_ is Leaf!9589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))))))

(assert (=> b!1815686 (=> res!816388 e!1159997)))

(declare-fun b!1815687 () Bool)

(declare-fun inv!25837 (Conc!6589) Bool)

(assert (=> b!1815687 (= e!1159997 (inv!25837 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))))))

(assert (= (and d!556912 c!296574) b!1815685))

(assert (= (and d!556912 (not c!296574)) b!1815686))

(assert (= (and b!1815686 (not res!816388)) b!1815687))

(declare-fun m!2245577 () Bool)

(assert (=> b!1815685 m!2245577))

(declare-fun m!2245579 () Bool)

(assert (=> b!1815687 m!2245579))

(assert (=> b!1814951 d!556912))

(declare-fun d!556914 () Bool)

(declare-fun lt!705939 () Int)

(assert (=> d!556914 (= lt!705939 (size!15750 (list!8063 lt!705517)))))

(assert (=> d!556914 (= lt!705939 (size!15752 (c!296435 lt!705517)))))

(assert (=> d!556914 (= (size!15749 lt!705517) lt!705939)))

(declare-fun bs!407180 () Bool)

(assert (= bs!407180 d!556914))

(assert (=> bs!407180 m!2244509))

(assert (=> bs!407180 m!2244509))

(declare-fun m!2245581 () Bool)

(assert (=> bs!407180 m!2245581))

(declare-fun m!2245583 () Bool)

(assert (=> bs!407180 m!2245583))

(assert (=> b!1814903 d!556914))

(declare-fun d!556916 () Bool)

(declare-fun e!1159998 () Bool)

(assert (=> d!556916 e!1159998))

(declare-fun c!296575 () Bool)

(assert (=> d!556916 (= c!296575 ((_ is EmptyExpr!4887) lt!705518))))

(declare-fun lt!705940 () Bool)

(declare-fun e!1160004 () Bool)

(assert (=> d!556916 (= lt!705940 e!1160004)))

(declare-fun c!296577 () Bool)

(assert (=> d!556916 (= c!296577 (isEmpty!12535 lt!705523))))

(assert (=> d!556916 (validRegex!1981 lt!705518)))

(assert (=> d!556916 (= (matchR!2360 lt!705518 lt!705523) lt!705940)))

(declare-fun b!1815688 () Bool)

(declare-fun res!816389 () Bool)

(declare-fun e!1159999 () Bool)

(assert (=> b!1815688 (=> res!816389 e!1159999)))

(assert (=> b!1815688 (= res!816389 (not ((_ is ElementMatch!4887) lt!705518)))))

(declare-fun e!1160003 () Bool)

(assert (=> b!1815688 (= e!1160003 e!1159999)))

(declare-fun b!1815689 () Bool)

(declare-fun e!1160000 () Bool)

(assert (=> b!1815689 (= e!1160000 (not (= (head!4224 lt!705523) (c!296434 lt!705518))))))

(declare-fun b!1815690 () Bool)

(assert (=> b!1815690 (= e!1160004 (matchR!2360 (derivativeStep!1276 lt!705518 (head!4224 lt!705523)) (tail!2685 lt!705523)))))

(declare-fun b!1815691 () Bool)

(declare-fun res!816395 () Bool)

(declare-fun e!1160002 () Bool)

(assert (=> b!1815691 (=> (not res!816395) (not e!1160002))))

(declare-fun call!114188 () Bool)

(assert (=> b!1815691 (= res!816395 (not call!114188))))

(declare-fun b!1815692 () Bool)

(declare-fun e!1160001 () Bool)

(assert (=> b!1815692 (= e!1160001 e!1160000)))

(declare-fun res!816396 () Bool)

(assert (=> b!1815692 (=> res!816396 e!1160000)))

(assert (=> b!1815692 (= res!816396 call!114188)))

(declare-fun b!1815693 () Bool)

(assert (=> b!1815693 (= e!1160003 (not lt!705940))))

(declare-fun b!1815694 () Bool)

(assert (=> b!1815694 (= e!1160004 (nullable!1507 lt!705518))))

(declare-fun b!1815695 () Bool)

(assert (=> b!1815695 (= e!1160002 (= (head!4224 lt!705523) (c!296434 lt!705518)))))

(declare-fun b!1815696 () Bool)

(assert (=> b!1815696 (= e!1159998 e!1160003)))

(declare-fun c!296576 () Bool)

(assert (=> b!1815696 (= c!296576 ((_ is EmptyLang!4887) lt!705518))))

(declare-fun b!1815697 () Bool)

(declare-fun res!816394 () Bool)

(assert (=> b!1815697 (=> res!816394 e!1159999)))

(assert (=> b!1815697 (= res!816394 e!1160002)))

(declare-fun res!816393 () Bool)

(assert (=> b!1815697 (=> (not res!816393) (not e!1160002))))

(assert (=> b!1815697 (= res!816393 lt!705940)))

(declare-fun bm!114183 () Bool)

(assert (=> bm!114183 (= call!114188 (isEmpty!12535 lt!705523))))

(declare-fun b!1815698 () Bool)

(assert (=> b!1815698 (= e!1159999 e!1160001)))

(declare-fun res!816391 () Bool)

(assert (=> b!1815698 (=> (not res!816391) (not e!1160001))))

(assert (=> b!1815698 (= res!816391 (not lt!705940))))

(declare-fun b!1815699 () Bool)

(declare-fun res!816392 () Bool)

(assert (=> b!1815699 (=> (not res!816392) (not e!1160002))))

(assert (=> b!1815699 (= res!816392 (isEmpty!12535 (tail!2685 lt!705523)))))

(declare-fun b!1815700 () Bool)

(assert (=> b!1815700 (= e!1159998 (= lt!705940 call!114188))))

(declare-fun b!1815701 () Bool)

(declare-fun res!816390 () Bool)

(assert (=> b!1815701 (=> res!816390 e!1160000)))

(assert (=> b!1815701 (= res!816390 (not (isEmpty!12535 (tail!2685 lt!705523))))))

(assert (= (and d!556916 c!296577) b!1815694))

(assert (= (and d!556916 (not c!296577)) b!1815690))

(assert (= (and d!556916 c!296575) b!1815700))

(assert (= (and d!556916 (not c!296575)) b!1815696))

(assert (= (and b!1815696 c!296576) b!1815693))

(assert (= (and b!1815696 (not c!296576)) b!1815688))

(assert (= (and b!1815688 (not res!816389)) b!1815697))

(assert (= (and b!1815697 res!816393) b!1815691))

(assert (= (and b!1815691 res!816395) b!1815699))

(assert (= (and b!1815699 res!816392) b!1815695))

(assert (= (and b!1815697 (not res!816394)) b!1815698))

(assert (= (and b!1815698 res!816391) b!1815692))

(assert (= (and b!1815692 (not res!816396)) b!1815701))

(assert (= (and b!1815701 (not res!816390)) b!1815689))

(assert (= (or b!1815700 b!1815691 b!1815692) bm!114183))

(assert (=> b!1815695 m!2244995))

(assert (=> b!1815689 m!2244995))

(assert (=> b!1815701 m!2244997))

(assert (=> b!1815701 m!2244997))

(assert (=> b!1815701 m!2245455))

(assert (=> d!556916 m!2245457))

(assert (=> d!556916 m!2245509))

(assert (=> bm!114183 m!2245457))

(assert (=> b!1815694 m!2245515))

(assert (=> b!1815699 m!2244997))

(assert (=> b!1815699 m!2244997))

(assert (=> b!1815699 m!2245455))

(assert (=> b!1815690 m!2244995))

(assert (=> b!1815690 m!2244995))

(declare-fun m!2245585 () Bool)

(assert (=> b!1815690 m!2245585))

(assert (=> b!1815690 m!2244997))

(assert (=> b!1815690 m!2245585))

(assert (=> b!1815690 m!2244997))

(declare-fun m!2245587 () Bool)

(assert (=> b!1815690 m!2245587))

(assert (=> b!1814903 d!556916))

(declare-fun d!556918 () Bool)

(assert (=> d!556918 (matchR!2360 (rulesRegex!915 thiss!24550 rules!3447) (list!8063 (charsOf!2208 token!523)))))

(declare-fun lt!705941 () Unit!34499)

(assert (=> d!556918 (= lt!705941 (choose!11447 thiss!24550 rules!3447 lt!705523 token!523 rule!422 Nil!19806))))

(assert (=> d!556918 (not (isEmpty!12534 rules!3447))))

(assert (=> d!556918 (= (lemmaMaxPrefixThenMatchesRulesRegex!266 thiss!24550 rules!3447 lt!705523 token!523 rule!422 Nil!19806) lt!705941)))

(declare-fun bs!407181 () Bool)

(assert (= bs!407181 d!556918))

(assert (=> bs!407181 m!2244513))

(assert (=> bs!407181 m!2244473))

(declare-fun m!2245589 () Bool)

(assert (=> bs!407181 m!2245589))

(declare-fun m!2245591 () Bool)

(assert (=> bs!407181 m!2245591))

(assert (=> bs!407181 m!2244511))

(assert (=> bs!407181 m!2245589))

(assert (=> bs!407181 m!2244511))

(declare-fun m!2245593 () Bool)

(assert (=> bs!407181 m!2245593))

(assert (=> bs!407181 m!2244473))

(assert (=> b!1814903 d!556918))

(declare-fun b!1815712 () Bool)

(declare-fun e!1160012 () Bool)

(declare-fun e!1160011 () Bool)

(assert (=> b!1815712 (= e!1160012 e!1160011)))

(declare-fun c!296582 () Bool)

(assert (=> b!1815712 (= c!296582 ((_ is IntegerValue!10948) (value!111104 token!523)))))

(declare-fun b!1815713 () Bool)

(declare-fun inv!17 (TokenValue!3649) Bool)

(assert (=> b!1815713 (= e!1160011 (inv!17 (value!111104 token!523)))))

(declare-fun b!1815715 () Bool)

(declare-fun e!1160013 () Bool)

(declare-fun inv!15 (TokenValue!3649) Bool)

(assert (=> b!1815715 (= e!1160013 (inv!15 (value!111104 token!523)))))

(declare-fun b!1815716 () Bool)

(declare-fun inv!16 (TokenValue!3649) Bool)

(assert (=> b!1815716 (= e!1160012 (inv!16 (value!111104 token!523)))))

(declare-fun b!1815714 () Bool)

(declare-fun res!816399 () Bool)

(assert (=> b!1815714 (=> res!816399 e!1160013)))

(assert (=> b!1815714 (= res!816399 (not ((_ is IntegerValue!10949) (value!111104 token!523))))))

(assert (=> b!1815714 (= e!1160011 e!1160013)))

(declare-fun d!556920 () Bool)

(declare-fun c!296583 () Bool)

(assert (=> d!556920 (= c!296583 ((_ is IntegerValue!10947) (value!111104 token!523)))))

(assert (=> d!556920 (= (inv!21 (value!111104 token!523)) e!1160012)))

(assert (= (and d!556920 c!296583) b!1815716))

(assert (= (and d!556920 (not c!296583)) b!1815712))

(assert (= (and b!1815712 c!296582) b!1815713))

(assert (= (and b!1815712 (not c!296582)) b!1815714))

(assert (= (and b!1815714 (not res!816399)) b!1815715))

(declare-fun m!2245595 () Bool)

(assert (=> b!1815713 m!2245595))

(declare-fun m!2245597 () Bool)

(assert (=> b!1815715 m!2245597))

(declare-fun m!2245599 () Bool)

(assert (=> b!1815716 m!2245599))

(assert (=> b!1814905 d!556920))

(declare-fun d!556922 () Bool)

(declare-fun e!1160014 () Bool)

(assert (=> d!556922 e!1160014))

(declare-fun c!296584 () Bool)

(assert (=> d!556922 (= c!296584 ((_ is EmptyExpr!4887) (regex!3559 rule!422)))))

(declare-fun lt!705942 () Bool)

(declare-fun e!1160020 () Bool)

(assert (=> d!556922 (= lt!705942 e!1160020)))

(declare-fun c!296586 () Bool)

(assert (=> d!556922 (= c!296586 (isEmpty!12535 lt!705523))))

(assert (=> d!556922 (validRegex!1981 (regex!3559 rule!422))))

(assert (=> d!556922 (= (matchR!2360 (regex!3559 rule!422) lt!705523) lt!705942)))

(declare-fun b!1815717 () Bool)

(declare-fun res!816400 () Bool)

(declare-fun e!1160015 () Bool)

(assert (=> b!1815717 (=> res!816400 e!1160015)))

(assert (=> b!1815717 (= res!816400 (not ((_ is ElementMatch!4887) (regex!3559 rule!422))))))

(declare-fun e!1160019 () Bool)

(assert (=> b!1815717 (= e!1160019 e!1160015)))

(declare-fun b!1815718 () Bool)

(declare-fun e!1160016 () Bool)

(assert (=> b!1815718 (= e!1160016 (not (= (head!4224 lt!705523) (c!296434 (regex!3559 rule!422)))))))

(declare-fun b!1815719 () Bool)

(assert (=> b!1815719 (= e!1160020 (matchR!2360 (derivativeStep!1276 (regex!3559 rule!422) (head!4224 lt!705523)) (tail!2685 lt!705523)))))

(declare-fun b!1815720 () Bool)

(declare-fun res!816406 () Bool)

(declare-fun e!1160018 () Bool)

(assert (=> b!1815720 (=> (not res!816406) (not e!1160018))))

(declare-fun call!114189 () Bool)

(assert (=> b!1815720 (= res!816406 (not call!114189))))

(declare-fun b!1815721 () Bool)

(declare-fun e!1160017 () Bool)

(assert (=> b!1815721 (= e!1160017 e!1160016)))

(declare-fun res!816407 () Bool)

(assert (=> b!1815721 (=> res!816407 e!1160016)))

(assert (=> b!1815721 (= res!816407 call!114189)))

(declare-fun b!1815722 () Bool)

(assert (=> b!1815722 (= e!1160019 (not lt!705942))))

(declare-fun b!1815723 () Bool)

(assert (=> b!1815723 (= e!1160020 (nullable!1507 (regex!3559 rule!422)))))

(declare-fun b!1815724 () Bool)

(assert (=> b!1815724 (= e!1160018 (= (head!4224 lt!705523) (c!296434 (regex!3559 rule!422))))))

(declare-fun b!1815725 () Bool)

(assert (=> b!1815725 (= e!1160014 e!1160019)))

(declare-fun c!296585 () Bool)

(assert (=> b!1815725 (= c!296585 ((_ is EmptyLang!4887) (regex!3559 rule!422)))))

(declare-fun b!1815726 () Bool)

(declare-fun res!816405 () Bool)

(assert (=> b!1815726 (=> res!816405 e!1160015)))

(assert (=> b!1815726 (= res!816405 e!1160018)))

(declare-fun res!816404 () Bool)

(assert (=> b!1815726 (=> (not res!816404) (not e!1160018))))

(assert (=> b!1815726 (= res!816404 lt!705942)))

(declare-fun bm!114184 () Bool)

(assert (=> bm!114184 (= call!114189 (isEmpty!12535 lt!705523))))

(declare-fun b!1815727 () Bool)

(assert (=> b!1815727 (= e!1160015 e!1160017)))

(declare-fun res!816402 () Bool)

(assert (=> b!1815727 (=> (not res!816402) (not e!1160017))))

(assert (=> b!1815727 (= res!816402 (not lt!705942))))

(declare-fun b!1815728 () Bool)

(declare-fun res!816403 () Bool)

(assert (=> b!1815728 (=> (not res!816403) (not e!1160018))))

(assert (=> b!1815728 (= res!816403 (isEmpty!12535 (tail!2685 lt!705523)))))

(declare-fun b!1815729 () Bool)

(assert (=> b!1815729 (= e!1160014 (= lt!705942 call!114189))))

(declare-fun b!1815730 () Bool)

(declare-fun res!816401 () Bool)

(assert (=> b!1815730 (=> res!816401 e!1160016)))

(assert (=> b!1815730 (= res!816401 (not (isEmpty!12535 (tail!2685 lt!705523))))))

(assert (= (and d!556922 c!296586) b!1815723))

(assert (= (and d!556922 (not c!296586)) b!1815719))

(assert (= (and d!556922 c!296584) b!1815729))

(assert (= (and d!556922 (not c!296584)) b!1815725))

(assert (= (and b!1815725 c!296585) b!1815722))

(assert (= (and b!1815725 (not c!296585)) b!1815717))

(assert (= (and b!1815717 (not res!816400)) b!1815726))

(assert (= (and b!1815726 res!816404) b!1815720))

(assert (= (and b!1815720 res!816406) b!1815728))

(assert (= (and b!1815728 res!816403) b!1815724))

(assert (= (and b!1815726 (not res!816405)) b!1815727))

(assert (= (and b!1815727 res!816402) b!1815721))

(assert (= (and b!1815721 (not res!816407)) b!1815730))

(assert (= (and b!1815730 (not res!816401)) b!1815718))

(assert (= (or b!1815729 b!1815720 b!1815721) bm!114184))

(assert (=> b!1815724 m!2244995))

(assert (=> b!1815718 m!2244995))

(assert (=> b!1815730 m!2244997))

(assert (=> b!1815730 m!2244997))

(assert (=> b!1815730 m!2245455))

(assert (=> d!556922 m!2245457))

(declare-fun m!2245601 () Bool)

(assert (=> d!556922 m!2245601))

(assert (=> bm!114184 m!2245457))

(declare-fun m!2245603 () Bool)

(assert (=> b!1815723 m!2245603))

(assert (=> b!1815728 m!2244997))

(assert (=> b!1815728 m!2244997))

(assert (=> b!1815728 m!2245455))

(assert (=> b!1815719 m!2244995))

(assert (=> b!1815719 m!2244995))

(declare-fun m!2245605 () Bool)

(assert (=> b!1815719 m!2245605))

(assert (=> b!1815719 m!2244997))

(assert (=> b!1815719 m!2245605))

(assert (=> b!1815719 m!2244997))

(declare-fun m!2245607 () Bool)

(assert (=> b!1815719 m!2245607))

(assert (=> b!1814904 d!556922))

(declare-fun d!556924 () Bool)

(declare-fun res!816412 () Bool)

(declare-fun e!1160023 () Bool)

(assert (=> d!556924 (=> (not res!816412) (not e!1160023))))

(assert (=> d!556924 (= res!816412 (validRegex!1981 (regex!3559 rule!422)))))

(assert (=> d!556924 (= (ruleValid!1057 thiss!24550 rule!422) e!1160023)))

(declare-fun b!1815735 () Bool)

(declare-fun res!816413 () Bool)

(assert (=> b!1815735 (=> (not res!816413) (not e!1160023))))

(assert (=> b!1815735 (= res!816413 (not (nullable!1507 (regex!3559 rule!422))))))

(declare-fun b!1815736 () Bool)

(assert (=> b!1815736 (= e!1160023 (not (= (tag!3971 rule!422) (String!22578 ""))))))

(assert (= (and d!556924 res!816412) b!1815735))

(assert (= (and b!1815735 res!816413) b!1815736))

(assert (=> d!556924 m!2245601))

(assert (=> b!1815735 m!2245603))

(assert (=> b!1814904 d!556924))

(declare-fun d!556926 () Bool)

(assert (=> d!556926 (ruleValid!1057 thiss!24550 rule!422)))

(declare-fun lt!705945 () Unit!34499)

(declare-fun choose!11449 (LexerInterface!3188 Rule!6918 List!19877) Unit!34499)

(assert (=> d!556926 (= lt!705945 (choose!11449 thiss!24550 rule!422 rules!3447))))

(assert (=> d!556926 (contains!3593 rules!3447 rule!422)))

(assert (=> d!556926 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!580 thiss!24550 rule!422 rules!3447) lt!705945)))

(declare-fun bs!407182 () Bool)

(assert (= bs!407182 d!556926))

(assert (=> bs!407182 m!2244489))

(declare-fun m!2245609 () Bool)

(assert (=> bs!407182 m!2245609))

(assert (=> bs!407182 m!2244493))

(assert (=> b!1814904 d!556926))

(declare-fun b!1815737 () Bool)

(declare-fun e!1160025 () Bool)

(declare-fun e!1160024 () Bool)

(assert (=> b!1815737 (= e!1160025 e!1160024)))

(declare-fun c!296587 () Bool)

(assert (=> b!1815737 (= c!296587 ((_ is IntegerValue!10948) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(declare-fun b!1815738 () Bool)

(assert (=> b!1815738 (= e!1160024 (inv!17 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(declare-fun b!1815740 () Bool)

(declare-fun e!1160026 () Bool)

(assert (=> b!1815740 (= e!1160026 (inv!15 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(declare-fun b!1815741 () Bool)

(assert (=> b!1815741 (= e!1160025 (inv!16 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(declare-fun b!1815739 () Bool)

(declare-fun res!816414 () Bool)

(assert (=> b!1815739 (=> res!816414 e!1160026)))

(assert (=> b!1815739 (= res!816414 (not ((_ is IntegerValue!10949) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))))

(assert (=> b!1815739 (= e!1160024 e!1160026)))

(declare-fun d!556928 () Bool)

(declare-fun c!296588 () Bool)

(assert (=> d!556928 (= c!296588 ((_ is IntegerValue!10947) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))

(assert (=> d!556928 (= (inv!21 (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)) e!1160025)))

(assert (= (and d!556928 c!296588) b!1815741))

(assert (= (and d!556928 (not c!296588)) b!1815737))

(assert (= (and b!1815737 c!296587) b!1815738))

(assert (= (and b!1815737 (not c!296587)) b!1815739))

(assert (= (and b!1815739 (not res!816414)) b!1815740))

(declare-fun m!2245611 () Bool)

(assert (=> b!1815738 m!2245611))

(declare-fun m!2245613 () Bool)

(assert (=> b!1815740 m!2245613))

(declare-fun m!2245615 () Bool)

(assert (=> b!1815741 m!2245615))

(assert (=> tb!110995 d!556928))

(declare-fun d!556930 () Bool)

(declare-fun e!1160027 () Bool)

(assert (=> d!556930 e!1160027))

(declare-fun c!296589 () Bool)

(assert (=> d!556930 (= c!296589 ((_ is EmptyExpr!4887) (regex!3559 (rule!5669 token!523))))))

(declare-fun lt!705946 () Bool)

(declare-fun e!1160033 () Bool)

(assert (=> d!556930 (= lt!705946 e!1160033)))

(declare-fun c!296591 () Bool)

(assert (=> d!556930 (= c!296591 (isEmpty!12535 lt!705565))))

(assert (=> d!556930 (validRegex!1981 (regex!3559 (rule!5669 token!523)))))

(assert (=> d!556930 (= (matchR!2360 (regex!3559 (rule!5669 token!523)) lt!705565) lt!705946)))

(declare-fun b!1815742 () Bool)

(declare-fun res!816415 () Bool)

(declare-fun e!1160028 () Bool)

(assert (=> b!1815742 (=> res!816415 e!1160028)))

(assert (=> b!1815742 (= res!816415 (not ((_ is ElementMatch!4887) (regex!3559 (rule!5669 token!523)))))))

(declare-fun e!1160032 () Bool)

(assert (=> b!1815742 (= e!1160032 e!1160028)))

(declare-fun b!1815743 () Bool)

(declare-fun e!1160029 () Bool)

(assert (=> b!1815743 (= e!1160029 (not (= (head!4224 lt!705565) (c!296434 (regex!3559 (rule!5669 token!523))))))))

(declare-fun b!1815744 () Bool)

(assert (=> b!1815744 (= e!1160033 (matchR!2360 (derivativeStep!1276 (regex!3559 (rule!5669 token!523)) (head!4224 lt!705565)) (tail!2685 lt!705565)))))

(declare-fun b!1815745 () Bool)

(declare-fun res!816421 () Bool)

(declare-fun e!1160031 () Bool)

(assert (=> b!1815745 (=> (not res!816421) (not e!1160031))))

(declare-fun call!114190 () Bool)

(assert (=> b!1815745 (= res!816421 (not call!114190))))

(declare-fun b!1815746 () Bool)

(declare-fun e!1160030 () Bool)

(assert (=> b!1815746 (= e!1160030 e!1160029)))

(declare-fun res!816422 () Bool)

(assert (=> b!1815746 (=> res!816422 e!1160029)))

(assert (=> b!1815746 (= res!816422 call!114190)))

(declare-fun b!1815747 () Bool)

(assert (=> b!1815747 (= e!1160032 (not lt!705946))))

(declare-fun b!1815748 () Bool)

(assert (=> b!1815748 (= e!1160033 (nullable!1507 (regex!3559 (rule!5669 token!523))))))

(declare-fun b!1815749 () Bool)

(assert (=> b!1815749 (= e!1160031 (= (head!4224 lt!705565) (c!296434 (regex!3559 (rule!5669 token!523)))))))

(declare-fun b!1815750 () Bool)

(assert (=> b!1815750 (= e!1160027 e!1160032)))

(declare-fun c!296590 () Bool)

(assert (=> b!1815750 (= c!296590 ((_ is EmptyLang!4887) (regex!3559 (rule!5669 token!523))))))

(declare-fun b!1815751 () Bool)

(declare-fun res!816420 () Bool)

(assert (=> b!1815751 (=> res!816420 e!1160028)))

(assert (=> b!1815751 (= res!816420 e!1160031)))

(declare-fun res!816419 () Bool)

(assert (=> b!1815751 (=> (not res!816419) (not e!1160031))))

(assert (=> b!1815751 (= res!816419 lt!705946)))

(declare-fun bm!114185 () Bool)

(assert (=> bm!114185 (= call!114190 (isEmpty!12535 lt!705565))))

(declare-fun b!1815752 () Bool)

(assert (=> b!1815752 (= e!1160028 e!1160030)))

(declare-fun res!816417 () Bool)

(assert (=> b!1815752 (=> (not res!816417) (not e!1160030))))

(assert (=> b!1815752 (= res!816417 (not lt!705946))))

(declare-fun b!1815753 () Bool)

(declare-fun res!816418 () Bool)

(assert (=> b!1815753 (=> (not res!816418) (not e!1160031))))

(assert (=> b!1815753 (= res!816418 (isEmpty!12535 (tail!2685 lt!705565)))))

(declare-fun b!1815754 () Bool)

(assert (=> b!1815754 (= e!1160027 (= lt!705946 call!114190))))

(declare-fun b!1815755 () Bool)

(declare-fun res!816416 () Bool)

(assert (=> b!1815755 (=> res!816416 e!1160029)))

(assert (=> b!1815755 (= res!816416 (not (isEmpty!12535 (tail!2685 lt!705565))))))

(assert (= (and d!556930 c!296591) b!1815748))

(assert (= (and d!556930 (not c!296591)) b!1815744))

(assert (= (and d!556930 c!296589) b!1815754))

(assert (= (and d!556930 (not c!296589)) b!1815750))

(assert (= (and b!1815750 c!296590) b!1815747))

(assert (= (and b!1815750 (not c!296590)) b!1815742))

(assert (= (and b!1815742 (not res!816415)) b!1815751))

(assert (= (and b!1815751 res!816419) b!1815745))

(assert (= (and b!1815745 res!816421) b!1815753))

(assert (= (and b!1815753 res!816418) b!1815749))

(assert (= (and b!1815751 (not res!816420)) b!1815752))

(assert (= (and b!1815752 res!816417) b!1815746))

(assert (= (and b!1815746 (not res!816422)) b!1815755))

(assert (= (and b!1815755 (not res!816416)) b!1815743))

(assert (= (or b!1815754 b!1815745 b!1815746) bm!114185))

(assert (=> b!1815749 m!2244977))

(assert (=> b!1815743 m!2244977))

(assert (=> b!1815755 m!2244981))

(assert (=> b!1815755 m!2244981))

(assert (=> b!1815755 m!2245511))

(assert (=> d!556930 m!2245513))

(declare-fun m!2245617 () Bool)

(assert (=> d!556930 m!2245617))

(assert (=> bm!114185 m!2245513))

(declare-fun m!2245619 () Bool)

(assert (=> b!1815748 m!2245619))

(assert (=> b!1815753 m!2244981))

(assert (=> b!1815753 m!2244981))

(assert (=> b!1815753 m!2245511))

(assert (=> b!1815744 m!2244977))

(assert (=> b!1815744 m!2244977))

(declare-fun m!2245621 () Bool)

(assert (=> b!1815744 m!2245621))

(assert (=> b!1815744 m!2244981))

(assert (=> b!1815744 m!2245621))

(assert (=> b!1815744 m!2244981))

(declare-fun m!2245623 () Bool)

(assert (=> b!1815744 m!2245623))

(assert (=> b!1814901 d!556930))

(declare-fun d!556932 () Bool)

(assert (=> d!556932 (not (matchR!2360 (regex!3559 (rule!5669 token!523)) lt!705565))))

(declare-fun lt!705947 () Unit!34499)

(assert (=> d!556932 (= lt!705947 (choose!11440 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 (rule!5669 token!523)))))

(assert (=> d!556932 (isPrefix!1799 lt!705565 lt!705554)))

(assert (=> d!556932 (= (lemmaMaxPrefNoSmallerRuleMatches!180 thiss!24550 rules!3447 (rule!5669 (_1!11093 lt!705567)) lt!705565 lt!705554 (rule!5669 token!523)) lt!705947)))

(declare-fun bs!407183 () Bool)

(assert (= bs!407183 d!556932))

(assert (=> bs!407183 m!2244601))

(declare-fun m!2245625 () Bool)

(assert (=> bs!407183 m!2245625))

(assert (=> bs!407183 m!2244565))

(assert (=> b!1814901 d!556932))

(declare-fun d!556934 () Bool)

(assert (=> d!556934 (= (get!6139 lt!705566) (v!25664 lt!705566))))

(assert (=> b!1814923 d!556934))

(declare-fun d!556936 () Bool)

(declare-fun c!296592 () Bool)

(assert (=> d!556936 (= c!296592 ((_ is Node!6589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))))

(declare-fun e!1160034 () Bool)

(assert (=> d!556936 (= (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))) e!1160034)))

(declare-fun b!1815756 () Bool)

(assert (=> b!1815756 (= e!1160034 (inv!25836 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))))

(declare-fun b!1815757 () Bool)

(declare-fun e!1160035 () Bool)

(assert (=> b!1815757 (= e!1160034 e!1160035)))

(declare-fun res!816423 () Bool)

(assert (=> b!1815757 (= res!816423 (not ((_ is Leaf!9589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))))))

(assert (=> b!1815757 (=> res!816423 e!1160035)))

(declare-fun b!1815758 () Bool)

(assert (=> b!1815758 (= e!1160035 (inv!25837 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))))))

(assert (= (and d!556936 c!296592) b!1815756))

(assert (= (and d!556936 (not c!296592)) b!1815757))

(assert (= (and b!1815757 (not res!816423)) b!1815758))

(declare-fun m!2245627 () Bool)

(assert (=> b!1815756 m!2245627))

(declare-fun m!2245629 () Bool)

(assert (=> b!1815758 m!2245629))

(assert (=> b!1814952 d!556936))

(declare-fun d!556938 () Bool)

(assert (=> d!556938 (= (isEmpty!12535 suffix!1421) ((_ is Nil!19806) suffix!1421))))

(assert (=> b!1814921 d!556938))

(declare-fun d!556940 () Bool)

(declare-fun e!1160036 () Bool)

(assert (=> d!556940 e!1160036))

(declare-fun c!296593 () Bool)

(assert (=> d!556940 (= c!296593 ((_ is EmptyExpr!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun lt!705948 () Bool)

(declare-fun e!1160042 () Bool)

(assert (=> d!556940 (= lt!705948 e!1160042)))

(declare-fun c!296595 () Bool)

(assert (=> d!556940 (= c!296595 (isEmpty!12535 lt!705565))))

(assert (=> d!556940 (validRegex!1981 (regex!3559 (rule!5669 (_1!11093 lt!705567))))))

(assert (=> d!556940 (= (matchR!2360 (regex!3559 (rule!5669 (_1!11093 lt!705567))) lt!705565) lt!705948)))

(declare-fun b!1815759 () Bool)

(declare-fun res!816424 () Bool)

(declare-fun e!1160037 () Bool)

(assert (=> b!1815759 (=> res!816424 e!1160037)))

(assert (=> b!1815759 (= res!816424 (not ((_ is ElementMatch!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun e!1160041 () Bool)

(assert (=> b!1815759 (= e!1160041 e!1160037)))

(declare-fun b!1815760 () Bool)

(declare-fun e!1160038 () Bool)

(assert (=> b!1815760 (= e!1160038 (not (= (head!4224 lt!705565) (c!296434 (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))))

(declare-fun b!1815761 () Bool)

(assert (=> b!1815761 (= e!1160042 (matchR!2360 (derivativeStep!1276 (regex!3559 (rule!5669 (_1!11093 lt!705567))) (head!4224 lt!705565)) (tail!2685 lt!705565)))))

(declare-fun b!1815762 () Bool)

(declare-fun res!816430 () Bool)

(declare-fun e!1160040 () Bool)

(assert (=> b!1815762 (=> (not res!816430) (not e!1160040))))

(declare-fun call!114191 () Bool)

(assert (=> b!1815762 (= res!816430 (not call!114191))))

(declare-fun b!1815763 () Bool)

(declare-fun e!1160039 () Bool)

(assert (=> b!1815763 (= e!1160039 e!1160038)))

(declare-fun res!816431 () Bool)

(assert (=> b!1815763 (=> res!816431 e!1160038)))

(assert (=> b!1815763 (= res!816431 call!114191)))

(declare-fun b!1815764 () Bool)

(assert (=> b!1815764 (= e!1160041 (not lt!705948))))

(declare-fun b!1815765 () Bool)

(assert (=> b!1815765 (= e!1160042 (nullable!1507 (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815766 () Bool)

(assert (=> b!1815766 (= e!1160040 (= (head!4224 lt!705565) (c!296434 (regex!3559 (rule!5669 (_1!11093 lt!705567))))))))

(declare-fun b!1815767 () Bool)

(assert (=> b!1815767 (= e!1160036 e!1160041)))

(declare-fun c!296594 () Bool)

(assert (=> b!1815767 (= c!296594 ((_ is EmptyLang!4887) (regex!3559 (rule!5669 (_1!11093 lt!705567)))))))

(declare-fun b!1815768 () Bool)

(declare-fun res!816429 () Bool)

(assert (=> b!1815768 (=> res!816429 e!1160037)))

(assert (=> b!1815768 (= res!816429 e!1160040)))

(declare-fun res!816428 () Bool)

(assert (=> b!1815768 (=> (not res!816428) (not e!1160040))))

(assert (=> b!1815768 (= res!816428 lt!705948)))

(declare-fun bm!114186 () Bool)

(assert (=> bm!114186 (= call!114191 (isEmpty!12535 lt!705565))))

(declare-fun b!1815769 () Bool)

(assert (=> b!1815769 (= e!1160037 e!1160039)))

(declare-fun res!816426 () Bool)

(assert (=> b!1815769 (=> (not res!816426) (not e!1160039))))

(assert (=> b!1815769 (= res!816426 (not lt!705948))))

(declare-fun b!1815770 () Bool)

(declare-fun res!816427 () Bool)

(assert (=> b!1815770 (=> (not res!816427) (not e!1160040))))

(assert (=> b!1815770 (= res!816427 (isEmpty!12535 (tail!2685 lt!705565)))))

(declare-fun b!1815771 () Bool)

(assert (=> b!1815771 (= e!1160036 (= lt!705948 call!114191))))

(declare-fun b!1815772 () Bool)

(declare-fun res!816425 () Bool)

(assert (=> b!1815772 (=> res!816425 e!1160038)))

(assert (=> b!1815772 (= res!816425 (not (isEmpty!12535 (tail!2685 lt!705565))))))

(assert (= (and d!556940 c!296595) b!1815765))

(assert (= (and d!556940 (not c!296595)) b!1815761))

(assert (= (and d!556940 c!296593) b!1815771))

(assert (= (and d!556940 (not c!296593)) b!1815767))

(assert (= (and b!1815767 c!296594) b!1815764))

(assert (= (and b!1815767 (not c!296594)) b!1815759))

(assert (= (and b!1815759 (not res!816424)) b!1815768))

(assert (= (and b!1815768 res!816428) b!1815762))

(assert (= (and b!1815762 res!816430) b!1815770))

(assert (= (and b!1815770 res!816427) b!1815766))

(assert (= (and b!1815768 (not res!816429)) b!1815769))

(assert (= (and b!1815769 res!816426) b!1815763))

(assert (= (and b!1815763 (not res!816431)) b!1815772))

(assert (= (and b!1815772 (not res!816425)) b!1815760))

(assert (= (or b!1815771 b!1815762 b!1815763) bm!114186))

(assert (=> b!1815766 m!2244977))

(assert (=> b!1815760 m!2244977))

(assert (=> b!1815772 m!2244981))

(assert (=> b!1815772 m!2244981))

(assert (=> b!1815772 m!2245511))

(assert (=> d!556940 m!2245513))

(assert (=> d!556940 m!2245459))

(assert (=> bm!114186 m!2245513))

(assert (=> b!1815765 m!2245461))

(assert (=> b!1815770 m!2244981))

(assert (=> b!1815770 m!2244981))

(assert (=> b!1815770 m!2245511))

(assert (=> b!1815761 m!2244977))

(assert (=> b!1815761 m!2244977))

(declare-fun m!2245631 () Bool)

(assert (=> b!1815761 m!2245631))

(assert (=> b!1815761 m!2244981))

(assert (=> b!1815761 m!2245631))

(assert (=> b!1815761 m!2244981))

(declare-fun m!2245633 () Bool)

(assert (=> b!1815761 m!2245633))

(assert (=> b!1814920 d!556940))

(declare-fun d!556942 () Bool)

(assert (=> d!556942 (= (isDefined!3485 lt!705566) (not (isEmpty!12538 lt!705566)))))

(declare-fun bs!407184 () Bool)

(assert (= bs!407184 d!556942))

(declare-fun m!2245635 () Bool)

(assert (=> bs!407184 m!2245635))

(assert (=> b!1814899 d!556942))

(declare-fun b!1815773 () Bool)

(declare-fun res!816435 () Bool)

(declare-fun e!1160045 () Bool)

(assert (=> b!1815773 (=> (not res!816435) (not e!1160045))))

(declare-fun lt!705949 () Option!4144)

(assert (=> b!1815773 (= res!816435 (= (value!111104 (_1!11093 (get!6139 lt!705949))) (apply!5359 (transformation!3559 (rule!5669 (_1!11093 (get!6139 lt!705949)))) (seqFromList!2528 (originalCharacters!4373 (_1!11093 (get!6139 lt!705949)))))))))

(declare-fun b!1815774 () Bool)

(declare-fun res!816437 () Bool)

(assert (=> b!1815774 (=> (not res!816437) (not e!1160045))))

(assert (=> b!1815774 (= res!816437 (matchR!2360 (regex!3559 (rule!5669 (_1!11093 (get!6139 lt!705949)))) (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705949))))))))

(declare-fun b!1815775 () Bool)

(declare-fun e!1160044 () Bool)

(assert (=> b!1815775 (= e!1160044 e!1160045)))

(declare-fun res!816432 () Bool)

(assert (=> b!1815775 (=> (not res!816432) (not e!1160045))))

(assert (=> b!1815775 (= res!816432 (isDefined!3485 lt!705949))))

(declare-fun b!1815776 () Bool)

(declare-fun res!816433 () Bool)

(assert (=> b!1815776 (=> (not res!816433) (not e!1160045))))

(assert (=> b!1815776 (= res!816433 (< (size!15750 (_2!11093 (get!6139 lt!705949))) (size!15750 lt!705523)))))

(declare-fun b!1815777 () Bool)

(declare-fun e!1160043 () Option!4144)

(declare-fun call!114192 () Option!4144)

(assert (=> b!1815777 (= e!1160043 call!114192)))

(declare-fun b!1815778 () Bool)

(declare-fun res!816436 () Bool)

(assert (=> b!1815778 (=> (not res!816436) (not e!1160045))))

(assert (=> b!1815778 (= res!816436 (= (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705949)))) (originalCharacters!4373 (_1!11093 (get!6139 lt!705949)))))))

(declare-fun b!1815779 () Bool)

(assert (=> b!1815779 (= e!1160045 (contains!3593 rules!3447 (rule!5669 (_1!11093 (get!6139 lt!705949)))))))

(declare-fun b!1815780 () Bool)

(declare-fun res!816438 () Bool)

(assert (=> b!1815780 (=> (not res!816438) (not e!1160045))))

(assert (=> b!1815780 (= res!816438 (= (++!5389 (list!8063 (charsOf!2208 (_1!11093 (get!6139 lt!705949)))) (_2!11093 (get!6139 lt!705949))) lt!705523))))

(declare-fun b!1815781 () Bool)

(declare-fun lt!705952 () Option!4144)

(declare-fun lt!705950 () Option!4144)

(assert (=> b!1815781 (= e!1160043 (ite (and ((_ is None!4143) lt!705952) ((_ is None!4143) lt!705950)) None!4143 (ite ((_ is None!4143) lt!705950) lt!705952 (ite ((_ is None!4143) lt!705952) lt!705950 (ite (>= (size!15748 (_1!11093 (v!25664 lt!705952))) (size!15748 (_1!11093 (v!25664 lt!705950)))) lt!705952 lt!705950)))))))

(assert (=> b!1815781 (= lt!705952 call!114192)))

(assert (=> b!1815781 (= lt!705950 (maxPrefix!1742 thiss!24550 (t!169486 rules!3447) lt!705523))))

(declare-fun bm!114187 () Bool)

(assert (=> bm!114187 (= call!114192 (maxPrefixOneRule!1111 thiss!24550 (h!25208 rules!3447) lt!705523))))

(declare-fun d!556944 () Bool)

(assert (=> d!556944 e!1160044))

(declare-fun res!816434 () Bool)

(assert (=> d!556944 (=> res!816434 e!1160044)))

(assert (=> d!556944 (= res!816434 (isEmpty!12538 lt!705949))))

(assert (=> d!556944 (= lt!705949 e!1160043)))

(declare-fun c!296596 () Bool)

(assert (=> d!556944 (= c!296596 (and ((_ is Cons!19807) rules!3447) ((_ is Nil!19807) (t!169486 rules!3447))))))

(declare-fun lt!705951 () Unit!34499)

(declare-fun lt!705953 () Unit!34499)

(assert (=> d!556944 (= lt!705951 lt!705953)))

(assert (=> d!556944 (isPrefix!1799 lt!705523 lt!705523)))

(assert (=> d!556944 (= lt!705953 (lemmaIsPrefixRefl!1176 lt!705523 lt!705523))))

(assert (=> d!556944 (rulesValidInductive!1212 thiss!24550 rules!3447)))

(assert (=> d!556944 (= (maxPrefix!1742 thiss!24550 rules!3447 lt!705523) lt!705949)))

(assert (= (and d!556944 c!296596) b!1815777))

(assert (= (and d!556944 (not c!296596)) b!1815781))

(assert (= (or b!1815777 b!1815781) bm!114187))

(assert (= (and d!556944 (not res!816434)) b!1815775))

(assert (= (and b!1815775 res!816432) b!1815778))

(assert (= (and b!1815778 res!816436) b!1815776))

(assert (= (and b!1815776 res!816433) b!1815780))

(assert (= (and b!1815780 res!816438) b!1815773))

(assert (= (and b!1815773 res!816435) b!1815774))

(assert (= (and b!1815774 res!816437) b!1815779))

(declare-fun m!2245637 () Bool)

(assert (=> b!1815776 m!2245637))

(declare-fun m!2245639 () Bool)

(assert (=> b!1815776 m!2245639))

(assert (=> b!1815776 m!2244907))

(declare-fun m!2245641 () Bool)

(assert (=> bm!114187 m!2245641))

(assert (=> b!1815774 m!2245637))

(declare-fun m!2245643 () Bool)

(assert (=> b!1815774 m!2245643))

(assert (=> b!1815774 m!2245643))

(declare-fun m!2245645 () Bool)

(assert (=> b!1815774 m!2245645))

(assert (=> b!1815774 m!2245645))

(declare-fun m!2245647 () Bool)

(assert (=> b!1815774 m!2245647))

(declare-fun m!2245649 () Bool)

(assert (=> b!1815781 m!2245649))

(assert (=> b!1815779 m!2245637))

(declare-fun m!2245651 () Bool)

(assert (=> b!1815779 m!2245651))

(declare-fun m!2245653 () Bool)

(assert (=> b!1815775 m!2245653))

(declare-fun m!2245655 () Bool)

(assert (=> d!556944 m!2245655))

(assert (=> d!556944 m!2245469))

(declare-fun m!2245657 () Bool)

(assert (=> d!556944 m!2245657))

(assert (=> d!556944 m!2245421))

(assert (=> b!1815778 m!2245637))

(assert (=> b!1815778 m!2245643))

(assert (=> b!1815778 m!2245643))

(assert (=> b!1815778 m!2245645))

(assert (=> b!1815773 m!2245637))

(declare-fun m!2245659 () Bool)

(assert (=> b!1815773 m!2245659))

(assert (=> b!1815773 m!2245659))

(declare-fun m!2245661 () Bool)

(assert (=> b!1815773 m!2245661))

(assert (=> b!1815780 m!2245637))

(assert (=> b!1815780 m!2245643))

(assert (=> b!1815780 m!2245643))

(assert (=> b!1815780 m!2245645))

(assert (=> b!1815780 m!2245645))

(declare-fun m!2245663 () Bool)

(assert (=> b!1815780 m!2245663))

(assert (=> b!1814899 d!556944))

(declare-fun d!556946 () Bool)

(assert (=> d!556946 (= (list!8063 lt!705517) (list!8066 (c!296435 lt!705517)))))

(declare-fun bs!407185 () Bool)

(assert (= bs!407185 d!556946))

(declare-fun m!2245665 () Bool)

(assert (=> bs!407185 m!2245665))

(assert (=> b!1814899 d!556946))

(declare-fun d!556948 () Bool)

(declare-fun lt!705954 () BalanceConc!13122)

(assert (=> d!556948 (= (list!8063 lt!705954) (originalCharacters!4373 token!523))))

(assert (=> d!556948 (= lt!705954 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 token!523))) (value!111104 token!523)))))

(assert (=> d!556948 (= (charsOf!2208 token!523) lt!705954)))

(declare-fun b_lambda!59917 () Bool)

(assert (=> (not b_lambda!59917) (not d!556948)))

(assert (=> d!556948 t!169531))

(declare-fun b_and!140503 () Bool)

(assert (= b_and!140491 (and (=> t!169531 result!133346) b_and!140503)))

(assert (=> d!556948 t!169533))

(declare-fun b_and!140505 () Bool)

(assert (= b_and!140493 (and (=> t!169533 result!133348) b_and!140505)))

(assert (=> d!556948 t!169535))

(declare-fun b_and!140507 () Bool)

(assert (= b_and!140495 (and (=> t!169535 result!133350) b_and!140507)))

(declare-fun m!2245667 () Bool)

(assert (=> d!556948 m!2245667))

(assert (=> d!556948 m!2245549))

(assert (=> b!1814899 d!556948))

(declare-fun e!1160048 () Bool)

(assert (=> b!1814906 (= tp!512520 e!1160048)))

(declare-fun b!1815792 () Bool)

(assert (=> b!1815792 (= e!1160048 tp_is_empty!8017)))

(declare-fun b!1815795 () Bool)

(declare-fun tp!512601 () Bool)

(declare-fun tp!512604 () Bool)

(assert (=> b!1815795 (= e!1160048 (and tp!512601 tp!512604))))

(declare-fun b!1815794 () Bool)

(declare-fun tp!512600 () Bool)

(assert (=> b!1815794 (= e!1160048 tp!512600)))

(declare-fun b!1815793 () Bool)

(declare-fun tp!512603 () Bool)

(declare-fun tp!512602 () Bool)

(assert (=> b!1815793 (= e!1160048 (and tp!512603 tp!512602))))

(assert (= (and b!1814906 ((_ is ElementMatch!4887) (regex!3559 rule!422))) b!1815792))

(assert (= (and b!1814906 ((_ is Concat!8537) (regex!3559 rule!422))) b!1815793))

(assert (= (and b!1814906 ((_ is Star!4887) (regex!3559 rule!422))) b!1815794))

(assert (= (and b!1814906 ((_ is Union!4887) (regex!3559 rule!422))) b!1815795))

(declare-fun e!1160049 () Bool)

(assert (=> b!1814916 (= tp!512523 e!1160049)))

(declare-fun b!1815796 () Bool)

(assert (=> b!1815796 (= e!1160049 tp_is_empty!8017)))

(declare-fun b!1815799 () Bool)

(declare-fun tp!512606 () Bool)

(declare-fun tp!512609 () Bool)

(assert (=> b!1815799 (= e!1160049 (and tp!512606 tp!512609))))

(declare-fun b!1815798 () Bool)

(declare-fun tp!512605 () Bool)

(assert (=> b!1815798 (= e!1160049 tp!512605)))

(declare-fun b!1815797 () Bool)

(declare-fun tp!512608 () Bool)

(declare-fun tp!512607 () Bool)

(assert (=> b!1815797 (= e!1160049 (and tp!512608 tp!512607))))

(assert (= (and b!1814916 ((_ is ElementMatch!4887) (regex!3559 (rule!5669 token!523)))) b!1815796))

(assert (= (and b!1814916 ((_ is Concat!8537) (regex!3559 (rule!5669 token!523)))) b!1815797))

(assert (= (and b!1814916 ((_ is Star!4887) (regex!3559 (rule!5669 token!523)))) b!1815798))

(assert (= (and b!1814916 ((_ is Union!4887) (regex!3559 (rule!5669 token!523)))) b!1815799))

(declare-fun b!1815804 () Bool)

(declare-fun e!1160052 () Bool)

(declare-fun tp!512612 () Bool)

(assert (=> b!1815804 (= e!1160052 (and tp_is_empty!8017 tp!512612))))

(assert (=> b!1814927 (= tp!512527 e!1160052)))

(assert (= (and b!1814927 ((_ is Cons!19806) (t!169485 suffix!1421))) b!1815804))

(declare-fun b!1815815 () Bool)

(declare-fun b_free!50063 () Bool)

(declare-fun b_next!50767 () Bool)

(assert (=> b!1815815 (= b_free!50063 (not b_next!50767))))

(declare-fun tb!111049 () Bool)

(declare-fun t!169537 () Bool)

(assert (=> (and b!1815815 (= (toValue!5090 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169537) tb!111049))

(declare-fun result!133358 () Bool)

(assert (= result!133358 result!133288))

(assert (=> d!556854 t!169537))

(assert (=> d!556856 t!169537))

(declare-fun t!169539 () Bool)

(declare-fun tb!111051 () Bool)

(assert (=> (and b!1815815 (= (toValue!5090 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169539) tb!111051))

(declare-fun result!133360 () Bool)

(assert (= result!133360 result!133302))

(assert (=> d!556636 t!169539))

(assert (=> d!556904 t!169537))

(assert (=> b!1814929 t!169537))

(declare-fun t!169541 () Bool)

(declare-fun tb!111053 () Bool)

(assert (=> (and b!1815815 (= (toValue!5090 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169541) tb!111053))

(declare-fun result!133362 () Bool)

(assert (= result!133362 result!133340))

(assert (=> d!556856 t!169541))

(declare-fun tp!512624 () Bool)

(declare-fun b_and!140509 () Bool)

(assert (=> b!1815815 (= tp!512624 (and (=> t!169537 result!133358) (=> t!169541 result!133362) (=> t!169539 result!133360) b_and!140509))))

(declare-fun b_free!50065 () Bool)

(declare-fun b_next!50769 () Bool)

(assert (=> b!1815815 (= b_free!50065 (not b_next!50769))))

(declare-fun t!169543 () Bool)

(declare-fun tb!111055 () Bool)

(assert (=> (and b!1815815 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169543) tb!111055))

(declare-fun result!133364 () Bool)

(assert (= result!133364 result!133274))

(assert (=> d!556698 t!169543))

(assert (=> b!1814907 t!169543))

(declare-fun tb!111057 () Bool)

(declare-fun t!169545 () Bool)

(assert (=> (and b!1815815 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567))))) t!169545) tb!111057))

(declare-fun result!133366 () Bool)

(assert (= result!133366 result!133282))

(assert (=> d!556904 t!169545))

(declare-fun t!169547 () Bool)

(declare-fun tb!111059 () Bool)

(assert (=> (and b!1815815 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 token!523)))) t!169547) tb!111059))

(declare-fun result!133368 () Bool)

(assert (= result!133368 result!133346))

(assert (=> b!1815657 t!169547))

(assert (=> b!1814929 t!169545))

(assert (=> d!556948 t!169547))

(declare-fun tp!512623 () Bool)

(declare-fun b_and!140511 () Bool)

(assert (=> b!1815815 (= tp!512623 (and (=> t!169545 result!133366) (=> t!169543 result!133364) (=> t!169547 result!133368) b_and!140511))))

(declare-fun e!1160063 () Bool)

(assert (=> b!1815815 (= e!1160063 (and tp!512624 tp!512623))))

(declare-fun b!1815814 () Bool)

(declare-fun tp!512621 () Bool)

(declare-fun e!1160062 () Bool)

(assert (=> b!1815814 (= e!1160062 (and tp!512621 (inv!25825 (tag!3971 (h!25208 (t!169486 rules!3447)))) (inv!25830 (transformation!3559 (h!25208 (t!169486 rules!3447)))) e!1160063))))

(declare-fun b!1815813 () Bool)

(declare-fun e!1160064 () Bool)

(declare-fun tp!512622 () Bool)

(assert (=> b!1815813 (= e!1160064 (and e!1160062 tp!512622))))

(assert (=> b!1814934 (= tp!512526 e!1160064)))

(assert (= b!1815814 b!1815815))

(assert (= b!1815813 b!1815814))

(assert (= (and b!1814934 ((_ is Cons!19807) (t!169486 rules!3447))) b!1815813))

(declare-fun m!2245669 () Bool)

(assert (=> b!1815814 m!2245669))

(declare-fun m!2245671 () Bool)

(assert (=> b!1815814 m!2245671))

(declare-fun e!1160065 () Bool)

(assert (=> b!1814896 (= tp!512530 e!1160065)))

(declare-fun b!1815816 () Bool)

(assert (=> b!1815816 (= e!1160065 tp_is_empty!8017)))

(declare-fun b!1815819 () Bool)

(declare-fun tp!512626 () Bool)

(declare-fun tp!512629 () Bool)

(assert (=> b!1815819 (= e!1160065 (and tp!512626 tp!512629))))

(declare-fun b!1815818 () Bool)

(declare-fun tp!512625 () Bool)

(assert (=> b!1815818 (= e!1160065 tp!512625)))

(declare-fun b!1815817 () Bool)

(declare-fun tp!512628 () Bool)

(declare-fun tp!512627 () Bool)

(assert (=> b!1815817 (= e!1160065 (and tp!512628 tp!512627))))

(assert (= (and b!1814896 ((_ is ElementMatch!4887) (regex!3559 (h!25208 rules!3447)))) b!1815816))

(assert (= (and b!1814896 ((_ is Concat!8537) (regex!3559 (h!25208 rules!3447)))) b!1815817))

(assert (= (and b!1814896 ((_ is Star!4887) (regex!3559 (h!25208 rules!3447)))) b!1815818))

(assert (= (and b!1814896 ((_ is Union!4887) (regex!3559 (h!25208 rules!3447)))) b!1815819))

(declare-fun b!1815828 () Bool)

(declare-fun tp!512636 () Bool)

(declare-fun tp!512638 () Bool)

(declare-fun e!1160071 () Bool)

(assert (=> b!1815828 (= e!1160071 (and (inv!25832 (left!15898 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))) tp!512636 (inv!25832 (right!16228 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))) tp!512638))))

(declare-fun b!1815830 () Bool)

(declare-fun e!1160070 () Bool)

(declare-fun tp!512637 () Bool)

(assert (=> b!1815830 (= e!1160070 tp!512637)))

(declare-fun b!1815829 () Bool)

(declare-fun inv!25839 (IArray!13183) Bool)

(assert (=> b!1815829 (= e!1160071 (and (inv!25839 (xs!9465 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))) e!1160070))))

(assert (=> b!1814951 (= tp!512533 (and (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567))))) e!1160071))))

(assert (= (and b!1814951 ((_ is Node!6589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))) b!1815828))

(assert (= b!1815829 b!1815830))

(assert (= (and b!1814951 ((_ is Leaf!9589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (value!111104 (_1!11093 lt!705567)))))) b!1815829))

(declare-fun m!2245673 () Bool)

(assert (=> b!1815828 m!2245673))

(declare-fun m!2245675 () Bool)

(assert (=> b!1815828 m!2245675))

(declare-fun m!2245677 () Bool)

(assert (=> b!1815829 m!2245677))

(assert (=> b!1814951 m!2244437))

(declare-fun tp!512639 () Bool)

(declare-fun e!1160073 () Bool)

(declare-fun tp!512641 () Bool)

(declare-fun b!1815831 () Bool)

(assert (=> b!1815831 (= e!1160073 (and (inv!25832 (left!15898 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))) tp!512639 (inv!25832 (right!16228 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))) tp!512641))))

(declare-fun b!1815833 () Bool)

(declare-fun e!1160072 () Bool)

(declare-fun tp!512640 () Bool)

(assert (=> b!1815833 (= e!1160072 tp!512640)))

(declare-fun b!1815832 () Bool)

(assert (=> b!1815832 (= e!1160073 (and (inv!25839 (xs!9465 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))) e!1160072))))

(assert (=> b!1814952 (= tp!512534 (and (inv!25832 (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556)))) e!1160073))))

(assert (= (and b!1814952 ((_ is Node!6589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))) b!1815831))

(assert (= b!1815832 b!1815833))

(assert (= (and b!1814952 ((_ is Leaf!9589) (c!296435 (dynLambda!9878 (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) (dynLambda!9879 (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))) lt!705556))))) b!1815832))

(declare-fun m!2245679 () Bool)

(assert (=> b!1815831 m!2245679))

(declare-fun m!2245681 () Bool)

(assert (=> b!1815831 m!2245681))

(declare-fun m!2245683 () Bool)

(assert (=> b!1815832 m!2245683))

(assert (=> b!1814952 m!2244441))

(declare-fun b!1815834 () Bool)

(declare-fun e!1160074 () Bool)

(declare-fun tp!512642 () Bool)

(assert (=> b!1815834 (= e!1160074 (and tp_is_empty!8017 tp!512642))))

(assert (=> b!1814905 (= tp!512519 e!1160074)))

(assert (= (and b!1814905 ((_ is Cons!19806) (originalCharacters!4373 token!523))) b!1815834))

(declare-fun b_lambda!59919 () Bool)

(assert (= b_lambda!59911 (or (and b!1814919 b_free!50049 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) (and b!1814925 b_free!50053) (and b!1814926 b_free!50057 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) (and b!1815815 b_free!50065 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) b_lambda!59919)))

(declare-fun b_lambda!59921 () Bool)

(assert (= b_lambda!59869 (or (and b!1814919 b_free!50049 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814925 b_free!50053 (= (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814926 b_free!50057 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1815815 b_free!50065 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) b_lambda!59921)))

(declare-fun b_lambda!59923 () Bool)

(assert (= b_lambda!59871 (or (and b!1814919 b_free!50047 (= (toValue!5090 (transformation!3559 rule!422)) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814925 b_free!50051 (= (toValue!5090 (transformation!3559 (rule!5669 token!523))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814926 b_free!50055 (= (toValue!5090 (transformation!3559 (h!25208 rules!3447))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1815815 b_free!50063 (= (toValue!5090 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toValue!5090 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) b_lambda!59923)))

(declare-fun b_lambda!59925 () Bool)

(assert (= b_lambda!59867 (or (and b!1814919 b_free!50049 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814925 b_free!50053 (= (toChars!4949 (transformation!3559 (rule!5669 token!523))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1814926 b_free!50057 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) (and b!1815815 b_free!50065 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 (_1!11093 lt!705567)))))) b_lambda!59925)))

(declare-fun b_lambda!59927 () Bool)

(assert (= b_lambda!59917 (or (and b!1814919 b_free!50049 (= (toChars!4949 (transformation!3559 rule!422)) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) (and b!1814925 b_free!50053) (and b!1814926 b_free!50057 (= (toChars!4949 (transformation!3559 (h!25208 rules!3447))) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) (and b!1815815 b_free!50065 (= (toChars!4949 (transformation!3559 (h!25208 (t!169486 rules!3447)))) (toChars!4949 (transformation!3559 (rule!5669 token!523))))) b_lambda!59927)))

(check-sat (not b!1815774) (not d!556668) (not b!1815639) (not b!1815157) (not b!1815625) b_and!140501 (not b!1815780) (not b_lambda!59879) (not d!556844) (not b!1815495) (not d!556708) (not d!556852) (not b!1815760) (not b!1815161) (not d!556880) (not bm!114183) (not b!1815713) (not b!1814952) tp_is_empty!8017 (not b!1815829) (not b!1815626) (not b!1815799) (not d!556922) (not d!556638) (not d!556702) (not b_next!50751) (not b_lambda!59927) (not b!1815666) (not d!556914) (not b!1815244) (not d!556834) (not b!1815793) (not d!556926) (not b!1815749) b_and!140497 (not b!1815165) (not d!556862) (not b!1815819) (not b!1815832) (not d!556858) (not d!556860) (not b!1815765) (not b!1815813) (not d!556930) (not b!1815778) (not d!556868) (not bm!114182) (not b!1815537) (not b!1815795) (not d!556666) (not b_lambda!59913) (not b!1815166) (not b!1815744) (not b!1815818) (not b!1815611) (not b!1815145) (not b_lambda!59909) (not d!556836) (not d!556932) (not b!1815685) (not b!1815105) (not d!556656) (not b!1815650) (not b!1815211) (not bm!114184) (not b!1815766) (not b!1815667) (not b!1815678) (not tb!111043) (not b!1814951) (not b!1815233) (not b_lambda!59925) (not b!1815804) (not b!1815743) (not b!1815631) (not b!1815770) (not bm!114186) (not d!556878) (not d!556848) (not b_lambda!59907) (not d!556706) (not b!1815659) (not b!1815643) (not d!556840) (not b!1815694) (not d!556634) (not b_next!50769) (not b_next!50757) (not b!1815652) (not d!556856) (not b!1815648) (not b!1815227) (not b!1815559) (not b!1815103) (not b!1815565) b_and!140499 (not b!1815689) (not tb!111007) (not d!556946) (not b!1815133) (not d!556838) (not d!556632) (not d!556888) (not d!556924) (not b!1815630) (not b!1815109) b_and!140505 (not b!1815794) (not tb!111037) (not b!1815730) (not b!1815128) (not bm!114185) (not b!1815563) (not b!1815687) (not b!1815633) (not d!556670) (not b!1815634) (not b_lambda!59905) (not b!1815718) (not b!1815728) (not b!1815615) (not d!556942) (not d!556892) (not d!556690) (not b!1815753) (not b!1815638) (not b!1815814) (not d!556940) (not b!1815723) (not b!1815817) (not d!556916) (not b!1815104) (not b!1815797) (not b!1815741) (not b!1815243) (not b!1815716) (not b_next!50759) (not b!1815560) (not d!556872) (not d!556678) (not b!1815134) (not b!1815828) (not b!1815144) (not b_next!50767) (not d!556908) (not b!1815781) (not b!1815229) (not b!1815210) (not b!1815209) (not b_next!50755) (not d!556948) (not b!1815719) (not b!1815497) (not b_lambda!59921) (not b!1815538) (not b!1815568) (not d!556874) (not b!1815234) (not b!1815562) (not b!1815658) (not bm!114180) (not b!1815215) (not b_next!50753) (not b!1815758) (not b!1815779) (not b!1815676) (not b!1815701) (not b!1815629) (not d!556648) (not b!1815671) (not b!1815738) (not d!556674) (not d!556850) (not b!1815761) (not b!1815657) (not b!1815755) (not b!1815606) (not b!1815198) (not b!1815740) (not b!1815772) b_and!140509 (not b!1815756) (not d!556864) (not d!556682) (not b!1815496) (not d!556866) (not b!1815735) (not b!1815831) (not b!1815775) (not d!556904) (not d!556662) (not d!556696) (not d!556672) (not b!1815214) (not b!1815798) (not b!1815213) (not d!556906) (not b!1815564) b_and!140503 (not b!1815558) (not b!1815101) (not b!1815672) (not b_lambda!59919) (not d!556894) (not b_lambda!59923) (not d!556900) (not b!1815699) (not b!1815610) (not bm!114187) (not b!1815833) (not d!556680) (not b!1815690) (not b_lambda!59915) (not b!1815715) (not b!1815533) (not bm!114177) (not b!1815773) (not d!556944) (not d!556698) (not b!1815647) (not d!556902) (not b!1815557) (not bm!114181) (not b!1815724) (not b!1815061) (not b!1815228) (not d!556630) (not b!1815645) (not b!1815056) (not b!1815834) (not b!1815776) (not b!1815748) (not b!1815106) (not d!556898) (not b_next!50761) (not b!1815830) b_and!140511 (not d!556660) (not b_lambda!59875) (not b!1815108) (not d!556870) (not b!1815617) (not b!1815199) (not b!1815605) (not b!1815649) (not b!1815695) (not b!1815107) (not d!556886) (not d!556882) (not d!556918) b_and!140507 (not b!1815623))
(check-sat b_and!140501 (not b_next!50751) b_and!140497 b_and!140499 b_and!140505 (not b_next!50755) (not b_next!50753) b_and!140509 b_and!140503 b_and!140507 (not b_next!50769) (not b_next!50757) (not b_next!50759) (not b_next!50767) (not b_next!50761) b_and!140511)
