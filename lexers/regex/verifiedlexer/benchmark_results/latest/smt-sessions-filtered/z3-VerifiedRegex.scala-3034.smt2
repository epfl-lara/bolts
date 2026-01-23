; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181270 () Bool)

(assert start!181270)

(declare-fun b!1827883 () Bool)

(declare-fun b_free!51015 () Bool)

(declare-fun b_next!51719 () Bool)

(assert (=> b!1827883 (= b_free!51015 (not b_next!51719))))

(declare-fun tp!517052 () Bool)

(declare-fun b_and!142077 () Bool)

(assert (=> b!1827883 (= tp!517052 b_and!142077)))

(declare-fun b_free!51017 () Bool)

(declare-fun b_next!51721 () Bool)

(assert (=> b!1827883 (= b_free!51017 (not b_next!51721))))

(declare-fun tp!517048 () Bool)

(declare-fun b_and!142079 () Bool)

(assert (=> b!1827883 (= tp!517048 b_and!142079)))

(declare-fun b!1827881 () Bool)

(declare-fun b_free!51019 () Bool)

(declare-fun b_next!51723 () Bool)

(assert (=> b!1827881 (= b_free!51019 (not b_next!51723))))

(declare-fun tp!517046 () Bool)

(declare-fun b_and!142081 () Bool)

(assert (=> b!1827881 (= tp!517046 b_and!142081)))

(declare-fun b_free!51021 () Bool)

(declare-fun b_next!51725 () Bool)

(assert (=> b!1827881 (= b_free!51021 (not b_next!51725))))

(declare-fun tp!517044 () Bool)

(declare-fun b_and!142083 () Bool)

(assert (=> b!1827881 (= tp!517044 b_and!142083)))

(declare-fun b!1827884 () Bool)

(declare-fun b_free!51023 () Bool)

(declare-fun b_next!51727 () Bool)

(assert (=> b!1827884 (= b_free!51023 (not b_next!51727))))

(declare-fun tp!517051 () Bool)

(declare-fun b_and!142085 () Bool)

(assert (=> b!1827884 (= tp!517051 b_and!142085)))

(declare-fun b_free!51025 () Bool)

(declare-fun b_next!51729 () Bool)

(assert (=> b!1827884 (= b_free!51025 (not b_next!51729))))

(declare-fun tp!517053 () Bool)

(declare-fun b_and!142087 () Bool)

(assert (=> b!1827884 (= tp!517053 b_and!142087)))

(declare-fun b!1827869 () Bool)

(declare-fun e!1168380 () Bool)

(declare-fun tp_is_empty!8149 () Bool)

(declare-fun tp!517047 () Bool)

(assert (=> b!1827869 (= e!1168380 (and tp_is_empty!8149 tp!517047))))

(declare-fun b!1827870 () Bool)

(declare-fun e!1168390 () Bool)

(declare-datatypes ((List!20160 0))(
  ( (Nil!20090) (Cons!20090 (h!25491 (_ BitVec 16)) (t!170391 List!20160)) )
))
(declare-datatypes ((TokenValue!3719 0))(
  ( (FloatLiteralValue!7438 (text!26478 List!20160)) (TokenValueExt!3718 (__x!12740 Int)) (Broken!18595 (value!113067 List!20160)) (Object!3788) (End!3719) (Def!3719) (Underscore!3719) (Match!3719) (Else!3719) (Error!3719) (Case!3719) (If!3719) (Extends!3719) (Abstract!3719) (Class!3719) (Val!3719) (DelimiterValue!7438 (del!3779 List!20160)) (KeywordValue!3725 (value!113068 List!20160)) (CommentValue!7438 (value!113069 List!20160)) (WhitespaceValue!7438 (value!113070 List!20160)) (IndentationValue!3719 (value!113071 List!20160)) (String!22926) (Int32!3719) (Broken!18596 (value!113072 List!20160)) (Boolean!3720) (Unit!34760) (OperatorValue!3722 (op!3779 List!20160)) (IdentifierValue!7438 (value!113073 List!20160)) (IdentifierValue!7439 (value!113074 List!20160)) (WhitespaceValue!7439 (value!113075 List!20160)) (True!7438) (False!7438) (Broken!18597 (value!113076 List!20160)) (Broken!18598 (value!113077 List!20160)) (True!7439) (RightBrace!3719) (RightBracket!3719) (Colon!3719) (Null!3719) (Comma!3719) (LeftBracket!3719) (False!7439) (LeftBrace!3719) (ImaginaryLiteralValue!3719 (text!26479 List!20160)) (StringLiteralValue!11157 (value!113078 List!20160)) (EOFValue!3719 (value!113079 List!20160)) (IdentValue!3719 (value!113080 List!20160)) (DelimiterValue!7439 (value!113081 List!20160)) (DedentValue!3719 (value!113082 List!20160)) (NewLineValue!3719 (value!113083 List!20160)) (IntegerValue!11157 (value!113084 (_ BitVec 32)) (text!26480 List!20160)) (IntegerValue!11158 (value!113085 Int) (text!26481 List!20160)) (Times!3719) (Or!3719) (Equal!3719) (Minus!3719) (Broken!18599 (value!113086 List!20160)) (And!3719) (Div!3719) (LessEqual!3719) (Mod!3719) (Concat!8676) (Not!3719) (Plus!3719) (SpaceValue!3719 (value!113087 List!20160)) (IntegerValue!11159 (value!113088 Int) (text!26482 List!20160)) (StringLiteralValue!11158 (text!26483 List!20160)) (FloatLiteralValue!7439 (text!26484 List!20160)) (BytesLiteralValue!3719 (value!113089 List!20160)) (CommentValue!7439 (value!113090 List!20160)) (StringLiteralValue!11159 (value!113091 List!20160)) (ErrorTokenValue!3719 (msg!3780 List!20160)) )
))
(declare-datatypes ((String!22927 0))(
  ( (String!22928 (value!113092 String)) )
))
(declare-datatypes ((C!10088 0))(
  ( (C!10089 (val!5640 Int)) )
))
(declare-datatypes ((List!20161 0))(
  ( (Nil!20091) (Cons!20091 (h!25492 C!10088) (t!170392 List!20161)) )
))
(declare-datatypes ((IArray!13327 0))(
  ( (IArray!13328 (innerList!6721 List!20161)) )
))
(declare-datatypes ((Conc!6661 0))(
  ( (Node!6661 (left!16069 Conc!6661) (right!16399 Conc!6661) (csize!13552 Int) (cheight!6872 Int)) (Leaf!9696 (xs!9537 IArray!13327) (csize!13553 Int)) (Empty!6661) )
))
(declare-datatypes ((BalanceConc!13266 0))(
  ( (BalanceConc!13267 (c!298106 Conc!6661)) )
))
(declare-datatypes ((TokenValueInjection!7098 0))(
  ( (TokenValueInjection!7099 (toValue!5168 Int) (toChars!5027 Int)) )
))
(declare-datatypes ((Regex!4957 0))(
  ( (ElementMatch!4957 (c!298107 C!10088)) (Concat!8677 (regOne!10426 Regex!4957) (regTwo!10426 Regex!4957)) (EmptyExpr!4957) (Star!4957 (reg!5286 Regex!4957)) (EmptyLang!4957) (Union!4957 (regOne!10427 Regex!4957) (regTwo!10427 Regex!4957)) )
))
(declare-datatypes ((Rule!7058 0))(
  ( (Rule!7059 (regex!3629 Regex!4957) (tag!4043 String!22927) (isSeparator!3629 Bool) (transformation!3629 TokenValueInjection!7098)) )
))
(declare-fun rule!559 () Rule!7058)

(declare-fun e!1168393 () Bool)

(declare-fun tp!517049 () Bool)

(declare-fun inv!26140 (String!22927) Bool)

(declare-fun inv!26143 (TokenValueInjection!7098) Bool)

(assert (=> b!1827870 (= e!1168393 (and tp!517049 (inv!26140 (tag!4043 rule!559)) (inv!26143 (transformation!3629 rule!559)) e!1168390))))

(declare-fun e!1168382 () Bool)

(declare-datatypes ((List!20162 0))(
  ( (Nil!20092) (Cons!20092 (h!25493 Rule!7058) (t!170393 List!20162)) )
))
(declare-fun rules!4538 () List!20162)

(declare-fun b!1827871 () Bool)

(declare-fun tp!517054 () Bool)

(declare-fun e!1168389 () Bool)

(assert (=> b!1827871 (= e!1168389 (and tp!517054 (inv!26140 (tag!4043 (h!25493 rules!4538))) (inv!26143 (transformation!3629 (h!25493 rules!4538))) e!1168382))))

(declare-fun b!1827872 () Bool)

(declare-fun res!822059 () Bool)

(declare-fun e!1168378 () Bool)

(assert (=> b!1827872 (=> res!822059 e!1168378)))

(declare-fun lt!709978 () List!20161)

(declare-fun isEmpty!12686 (List!20161) Bool)

(assert (=> b!1827872 (= res!822059 (isEmpty!12686 lt!709978))))

(declare-fun b!1827873 () Bool)

(declare-fun e!1168388 () Bool)

(declare-fun e!1168377 () Bool)

(assert (=> b!1827873 (= e!1168388 e!1168377)))

(declare-fun res!822064 () Bool)

(assert (=> b!1827873 (=> (not res!822064) (not e!1168377))))

(declare-fun suffix!1667 () List!20161)

(declare-fun input!3612 () List!20161)

(declare-fun ++!5453 (List!20161 List!20161) List!20161)

(assert (=> b!1827873 (= res!822064 (= input!3612 (++!5453 lt!709978 suffix!1667)))))

(declare-datatypes ((Token!6812 0))(
  ( (Token!6813 (value!113093 TokenValue!3719) (rule!5789 Rule!7058) (size!15931 Int) (originalCharacters!4437 List!20161)) )
))
(declare-fun token!556 () Token!6812)

(declare-fun list!8163 (BalanceConc!13266) List!20161)

(declare-fun charsOf!2272 (Token!6812) BalanceConc!13266)

(assert (=> b!1827873 (= lt!709978 (list!8163 (charsOf!2272 token!556)))))

(declare-fun b!1827874 () Bool)

(assert (=> b!1827874 (= e!1168377 (not e!1168378))))

(declare-fun res!822060 () Bool)

(assert (=> b!1827874 (=> res!822060 e!1168378)))

(declare-fun matchR!2420 (Regex!4957 List!20161) Bool)

(assert (=> b!1827874 (= res!822060 (not (matchR!2420 (regex!3629 rule!559) lt!709978)))))

(declare-datatypes ((LexerInterface!3258 0))(
  ( (LexerInterfaceExt!3255 (__x!12741 Int)) (Lexer!3256) )
))
(declare-fun thiss!28068 () LexerInterface!3258)

(declare-fun ruleValid!1119 (LexerInterface!3258 Rule!7058) Bool)

(assert (=> b!1827874 (ruleValid!1119 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34761 0))(
  ( (Unit!34762) )
))
(declare-fun lt!709976 () Unit!34761)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!638 (LexerInterface!3258 Rule!7058 List!20162) Unit!34761)

(assert (=> b!1827874 (= lt!709976 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!638 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1827875 () Bool)

(declare-fun res!822066 () Bool)

(declare-fun e!1168381 () Bool)

(assert (=> b!1827875 (=> (not res!822066) (not e!1168381))))

(declare-fun rulesInvariant!2927 (LexerInterface!3258 List!20162) Bool)

(assert (=> b!1827875 (= res!822066 (rulesInvariant!2927 thiss!28068 rules!4538))))

(declare-fun res!822061 () Bool)

(assert (=> start!181270 (=> (not res!822061) (not e!1168381))))

(get-info :version)

(assert (=> start!181270 (= res!822061 ((_ is Lexer!3256) thiss!28068))))

(assert (=> start!181270 e!1168381))

(declare-fun e!1168394 () Bool)

(assert (=> start!181270 e!1168394))

(assert (=> start!181270 true))

(declare-fun e!1168392 () Bool)

(assert (=> start!181270 e!1168392))

(declare-fun e!1168386 () Bool)

(declare-fun inv!26144 (Token!6812) Bool)

(assert (=> start!181270 (and (inv!26144 token!556) e!1168386)))

(assert (=> start!181270 e!1168393))

(assert (=> start!181270 e!1168380))

(declare-fun lt!709979 () BalanceConc!13266)

(declare-datatypes ((tuple2!19566 0))(
  ( (tuple2!19567 (_1!11185 Token!6812) (_2!11185 List!20161)) )
))
(declare-datatypes ((Option!4209 0))(
  ( (None!4208) (Some!4208 (v!25773 tuple2!19566)) )
))
(declare-fun lt!709977 () Option!4209)

(declare-fun b!1827876 () Bool)

(declare-fun apply!5417 (TokenValueInjection!7098 BalanceConc!13266) TokenValue!3719)

(declare-fun size!15932 (List!20161) Int)

(assert (=> b!1827876 (= e!1168378 (= lt!709977 (Some!4208 (tuple2!19567 (Token!6813 (apply!5417 (transformation!3629 rule!559) lt!709979) rule!559 (size!15932 lt!709978) lt!709978) suffix!1667))))))

(declare-fun lt!709980 () Unit!34761)

(declare-fun lemmaSemiInverse!725 (TokenValueInjection!7098 BalanceConc!13266) Unit!34761)

(assert (=> b!1827876 (= lt!709980 (lemmaSemiInverse!725 (transformation!3629 rule!559) lt!709979))))

(declare-fun seqFromList!2586 (List!20161) BalanceConc!13266)

(assert (=> b!1827876 (= lt!709979 (seqFromList!2586 lt!709978))))

(declare-fun b!1827877 () Bool)

(declare-fun tp!517042 () Bool)

(assert (=> b!1827877 (= e!1168394 (and tp_is_empty!8149 tp!517042))))

(declare-fun b!1827878 () Bool)

(declare-fun tp!517050 () Bool)

(assert (=> b!1827878 (= e!1168392 (and e!1168389 tp!517050))))

(declare-fun b!1827879 () Bool)

(assert (=> b!1827879 (= e!1168381 e!1168388)))

(declare-fun res!822063 () Bool)

(assert (=> b!1827879 (=> (not res!822063) (not e!1168388))))

(assert (=> b!1827879 (= res!822063 (and (= lt!709977 (Some!4208 (tuple2!19567 token!556 suffix!1667))) (= (rule!5789 token!556) rule!559)))))

(declare-fun maxPrefix!1806 (LexerInterface!3258 List!20162 List!20161) Option!4209)

(assert (=> b!1827879 (= lt!709977 (maxPrefix!1806 thiss!28068 rules!4538 input!3612))))

(declare-fun e!1168391 () Bool)

(declare-fun tp!517043 () Bool)

(declare-fun b!1827880 () Bool)

(declare-fun inv!21 (TokenValue!3719) Bool)

(assert (=> b!1827880 (= e!1168386 (and (inv!21 (value!113093 token!556)) e!1168391 tp!517043))))

(declare-fun e!1168379 () Bool)

(assert (=> b!1827881 (= e!1168379 (and tp!517046 tp!517044))))

(declare-fun b!1827882 () Bool)

(declare-fun res!822065 () Bool)

(assert (=> b!1827882 (=> (not res!822065) (not e!1168381))))

(declare-fun isEmpty!12687 (List!20162) Bool)

(assert (=> b!1827882 (= res!822065 (not (isEmpty!12687 rules!4538)))))

(assert (=> b!1827883 (= e!1168382 (and tp!517052 tp!517048))))

(assert (=> b!1827884 (= e!1168390 (and tp!517051 tp!517053))))

(declare-fun b!1827885 () Bool)

(declare-fun res!822062 () Bool)

(assert (=> b!1827885 (=> (not res!822062) (not e!1168381))))

(declare-fun contains!3695 (List!20162 Rule!7058) Bool)

(assert (=> b!1827885 (= res!822062 (contains!3695 rules!4538 rule!559))))

(declare-fun tp!517045 () Bool)

(declare-fun b!1827886 () Bool)

(assert (=> b!1827886 (= e!1168391 (and tp!517045 (inv!26140 (tag!4043 (rule!5789 token!556))) (inv!26143 (transformation!3629 (rule!5789 token!556))) e!1168379))))

(assert (= (and start!181270 res!822061) b!1827882))

(assert (= (and b!1827882 res!822065) b!1827875))

(assert (= (and b!1827875 res!822066) b!1827885))

(assert (= (and b!1827885 res!822062) b!1827879))

(assert (= (and b!1827879 res!822063) b!1827873))

(assert (= (and b!1827873 res!822064) b!1827874))

(assert (= (and b!1827874 (not res!822060)) b!1827872))

(assert (= (and b!1827872 (not res!822059)) b!1827876))

(assert (= (and start!181270 ((_ is Cons!20091) suffix!1667)) b!1827877))

(assert (= b!1827871 b!1827883))

(assert (= b!1827878 b!1827871))

(assert (= (and start!181270 ((_ is Cons!20092) rules!4538)) b!1827878))

(assert (= b!1827886 b!1827881))

(assert (= b!1827880 b!1827886))

(assert (= start!181270 b!1827880))

(assert (= b!1827870 b!1827884))

(assert (= start!181270 b!1827870))

(assert (= (and start!181270 ((_ is Cons!20091) input!3612)) b!1827869))

(declare-fun m!2255863 () Bool)

(assert (=> b!1827870 m!2255863))

(declare-fun m!2255865 () Bool)

(assert (=> b!1827870 m!2255865))

(declare-fun m!2255867 () Bool)

(assert (=> b!1827879 m!2255867))

(declare-fun m!2255869 () Bool)

(assert (=> b!1827876 m!2255869))

(declare-fun m!2255871 () Bool)

(assert (=> b!1827876 m!2255871))

(declare-fun m!2255873 () Bool)

(assert (=> b!1827876 m!2255873))

(declare-fun m!2255875 () Bool)

(assert (=> b!1827876 m!2255875))

(declare-fun m!2255877 () Bool)

(assert (=> b!1827874 m!2255877))

(declare-fun m!2255879 () Bool)

(assert (=> b!1827874 m!2255879))

(declare-fun m!2255881 () Bool)

(assert (=> b!1827874 m!2255881))

(declare-fun m!2255883 () Bool)

(assert (=> b!1827875 m!2255883))

(declare-fun m!2255885 () Bool)

(assert (=> b!1827871 m!2255885))

(declare-fun m!2255887 () Bool)

(assert (=> b!1827871 m!2255887))

(declare-fun m!2255889 () Bool)

(assert (=> b!1827873 m!2255889))

(declare-fun m!2255891 () Bool)

(assert (=> b!1827873 m!2255891))

(assert (=> b!1827873 m!2255891))

(declare-fun m!2255893 () Bool)

(assert (=> b!1827873 m!2255893))

(declare-fun m!2255895 () Bool)

(assert (=> b!1827885 m!2255895))

(declare-fun m!2255897 () Bool)

(assert (=> b!1827882 m!2255897))

(declare-fun m!2255899 () Bool)

(assert (=> b!1827886 m!2255899))

(declare-fun m!2255901 () Bool)

(assert (=> b!1827886 m!2255901))

(declare-fun m!2255903 () Bool)

(assert (=> start!181270 m!2255903))

(declare-fun m!2255905 () Bool)

(assert (=> b!1827872 m!2255905))

(declare-fun m!2255907 () Bool)

(assert (=> b!1827880 m!2255907))

(check-sat (not b!1827882) (not b!1827872) (not b_next!51721) (not b!1827880) b_and!142087 (not b!1827879) (not b_next!51725) (not b!1827886) (not b!1827876) (not b_next!51719) (not b!1827885) (not b!1827870) (not b!1827873) b_and!142077 b_and!142079 (not b_next!51723) (not b!1827878) b_and!142085 (not b!1827869) (not b!1827875) (not b!1827877) (not start!181270) tp_is_empty!8149 (not b!1827874) b_and!142083 (not b!1827871) b_and!142081 (not b_next!51727) (not b_next!51729))
(check-sat b_and!142085 (not b_next!51721) b_and!142087 (not b_next!51725) b_and!142083 (not b_next!51719) b_and!142081 b_and!142077 b_and!142079 (not b_next!51723) (not b_next!51727) (not b_next!51729))
(get-model)

(declare-fun b!1827976 () Bool)

(declare-fun res!822132 () Bool)

(declare-fun e!1168440 () Bool)

(assert (=> b!1827976 (=> (not res!822132) (not e!1168440))))

(declare-fun lt!710006 () Option!4209)

(declare-fun get!6207 (Option!4209) tuple2!19566)

(assert (=> b!1827976 (= res!822132 (= (value!113093 (_1!11185 (get!6207 lt!710006))) (apply!5417 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun b!1827977 () Bool)

(assert (=> b!1827977 (= e!1168440 (contains!3695 rules!4538 (rule!5789 (_1!11185 (get!6207 lt!710006)))))))

(declare-fun d!558999 () Bool)

(declare-fun e!1168442 () Bool)

(assert (=> d!558999 e!1168442))

(declare-fun res!822127 () Bool)

(assert (=> d!558999 (=> res!822127 e!1168442)))

(declare-fun isEmpty!12689 (Option!4209) Bool)

(assert (=> d!558999 (= res!822127 (isEmpty!12689 lt!710006))))

(declare-fun e!1168441 () Option!4209)

(assert (=> d!558999 (= lt!710006 e!1168441)))

(declare-fun c!298122 () Bool)

(assert (=> d!558999 (= c!298122 (and ((_ is Cons!20092) rules!4538) ((_ is Nil!20092) (t!170393 rules!4538))))))

(declare-fun lt!710007 () Unit!34761)

(declare-fun lt!710003 () Unit!34761)

(assert (=> d!558999 (= lt!710007 lt!710003)))

(declare-fun isPrefix!1831 (List!20161 List!20161) Bool)

(assert (=> d!558999 (isPrefix!1831 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1208 (List!20161 List!20161) Unit!34761)

(assert (=> d!558999 (= lt!710003 (lemmaIsPrefixRefl!1208 input!3612 input!3612))))

(declare-fun rulesValidInductive!1250 (LexerInterface!3258 List!20162) Bool)

(assert (=> d!558999 (rulesValidInductive!1250 thiss!28068 rules!4538)))

(assert (=> d!558999 (= (maxPrefix!1806 thiss!28068 rules!4538 input!3612) lt!710006)))

(declare-fun b!1827978 () Bool)

(declare-fun lt!710005 () Option!4209)

(declare-fun lt!710004 () Option!4209)

(assert (=> b!1827978 (= e!1168441 (ite (and ((_ is None!4208) lt!710005) ((_ is None!4208) lt!710004)) None!4208 (ite ((_ is None!4208) lt!710004) lt!710005 (ite ((_ is None!4208) lt!710005) lt!710004 (ite (>= (size!15931 (_1!11185 (v!25773 lt!710005))) (size!15931 (_1!11185 (v!25773 lt!710004)))) lt!710005 lt!710004)))))))

(declare-fun call!114568 () Option!4209)

(assert (=> b!1827978 (= lt!710005 call!114568)))

(assert (=> b!1827978 (= lt!710004 (maxPrefix!1806 thiss!28068 (t!170393 rules!4538) input!3612))))

(declare-fun b!1827979 () Bool)

(declare-fun res!822130 () Bool)

(assert (=> b!1827979 (=> (not res!822130) (not e!1168440))))

(assert (=> b!1827979 (= res!822130 (matchR!2420 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))) (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun bm!114563 () Bool)

(declare-fun maxPrefixOneRule!1167 (LexerInterface!3258 Rule!7058 List!20161) Option!4209)

(assert (=> bm!114563 (= call!114568 (maxPrefixOneRule!1167 thiss!28068 (h!25493 rules!4538) input!3612))))

(declare-fun b!1827980 () Bool)

(declare-fun res!822129 () Bool)

(assert (=> b!1827980 (=> (not res!822129) (not e!1168440))))

(assert (=> b!1827980 (= res!822129 (= (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))) (originalCharacters!4437 (_1!11185 (get!6207 lt!710006)))))))

(declare-fun b!1827981 () Bool)

(declare-fun res!822128 () Bool)

(assert (=> b!1827981 (=> (not res!822128) (not e!1168440))))

(assert (=> b!1827981 (= res!822128 (= (++!5453 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))) (_2!11185 (get!6207 lt!710006))) input!3612))))

(declare-fun b!1827982 () Bool)

(declare-fun res!822133 () Bool)

(assert (=> b!1827982 (=> (not res!822133) (not e!1168440))))

(assert (=> b!1827982 (= res!822133 (< (size!15932 (_2!11185 (get!6207 lt!710006))) (size!15932 input!3612)))))

(declare-fun b!1827983 () Bool)

(assert (=> b!1827983 (= e!1168441 call!114568)))

(declare-fun b!1827984 () Bool)

(assert (=> b!1827984 (= e!1168442 e!1168440)))

(declare-fun res!822131 () Bool)

(assert (=> b!1827984 (=> (not res!822131) (not e!1168440))))

(declare-fun isDefined!3518 (Option!4209) Bool)

(assert (=> b!1827984 (= res!822131 (isDefined!3518 lt!710006))))

(assert (= (and d!558999 c!298122) b!1827983))

(assert (= (and d!558999 (not c!298122)) b!1827978))

(assert (= (or b!1827983 b!1827978) bm!114563))

(assert (= (and d!558999 (not res!822127)) b!1827984))

(assert (= (and b!1827984 res!822131) b!1827980))

(assert (= (and b!1827980 res!822129) b!1827982))

(assert (= (and b!1827982 res!822133) b!1827981))

(assert (= (and b!1827981 res!822128) b!1827976))

(assert (= (and b!1827976 res!822132) b!1827979))

(assert (= (and b!1827979 res!822130) b!1827977))

(declare-fun m!2255955 () Bool)

(assert (=> b!1827980 m!2255955))

(declare-fun m!2255957 () Bool)

(assert (=> b!1827980 m!2255957))

(assert (=> b!1827980 m!2255957))

(declare-fun m!2255959 () Bool)

(assert (=> b!1827980 m!2255959))

(assert (=> b!1827982 m!2255955))

(declare-fun m!2255961 () Bool)

(assert (=> b!1827982 m!2255961))

(declare-fun m!2255963 () Bool)

(assert (=> b!1827982 m!2255963))

(assert (=> b!1827979 m!2255955))

(assert (=> b!1827979 m!2255957))

(assert (=> b!1827979 m!2255957))

(assert (=> b!1827979 m!2255959))

(assert (=> b!1827979 m!2255959))

(declare-fun m!2255965 () Bool)

(assert (=> b!1827979 m!2255965))

(declare-fun m!2255967 () Bool)

(assert (=> b!1827984 m!2255967))

(declare-fun m!2255969 () Bool)

(assert (=> d!558999 m!2255969))

(declare-fun m!2255971 () Bool)

(assert (=> d!558999 m!2255971))

(declare-fun m!2255973 () Bool)

(assert (=> d!558999 m!2255973))

(declare-fun m!2255975 () Bool)

(assert (=> d!558999 m!2255975))

(declare-fun m!2255977 () Bool)

(assert (=> bm!114563 m!2255977))

(assert (=> b!1827981 m!2255955))

(assert (=> b!1827981 m!2255957))

(assert (=> b!1827981 m!2255957))

(assert (=> b!1827981 m!2255959))

(assert (=> b!1827981 m!2255959))

(declare-fun m!2255979 () Bool)

(assert (=> b!1827981 m!2255979))

(assert (=> b!1827976 m!2255955))

(declare-fun m!2255981 () Bool)

(assert (=> b!1827976 m!2255981))

(assert (=> b!1827976 m!2255981))

(declare-fun m!2255983 () Bool)

(assert (=> b!1827976 m!2255983))

(assert (=> b!1827977 m!2255955))

(declare-fun m!2255985 () Bool)

(assert (=> b!1827977 m!2255985))

(declare-fun m!2255987 () Bool)

(assert (=> b!1827978 m!2255987))

(assert (=> b!1827879 d!558999))

(declare-fun d!559019 () Bool)

(declare-fun res!822152 () Bool)

(declare-fun e!1168451 () Bool)

(assert (=> d!559019 (=> (not res!822152) (not e!1168451))))

(assert (=> d!559019 (= res!822152 (not (isEmpty!12686 (originalCharacters!4437 token!556))))))

(assert (=> d!559019 (= (inv!26144 token!556) e!1168451)))

(declare-fun b!1828007 () Bool)

(declare-fun res!822153 () Bool)

(assert (=> b!1828007 (=> (not res!822153) (not e!1168451))))

(declare-fun dynLambda!9983 (Int TokenValue!3719) BalanceConc!13266)

(assert (=> b!1828007 (= res!822153 (= (originalCharacters!4437 token!556) (list!8163 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(declare-fun b!1828008 () Bool)

(assert (=> b!1828008 (= e!1168451 (= (size!15931 token!556) (size!15932 (originalCharacters!4437 token!556))))))

(assert (= (and d!559019 res!822152) b!1828007))

(assert (= (and b!1828007 res!822153) b!1828008))

(declare-fun b_lambda!60387 () Bool)

(assert (=> (not b_lambda!60387) (not b!1828007)))

(declare-fun tb!111627 () Bool)

(declare-fun t!170401 () Bool)

(assert (=> (and b!1827883 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) t!170401) tb!111627))

(declare-fun b!1828013 () Bool)

(declare-fun e!1168454 () Bool)

(declare-fun tp!517060 () Bool)

(declare-fun inv!26147 (Conc!6661) Bool)

(assert (=> b!1828013 (= e!1168454 (and (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))) tp!517060))))

(declare-fun result!134240 () Bool)

(declare-fun inv!26148 (BalanceConc!13266) Bool)

(assert (=> tb!111627 (= result!134240 (and (inv!26148 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))) e!1168454))))

(assert (= tb!111627 b!1828013))

(declare-fun m!2255989 () Bool)

(assert (=> b!1828013 m!2255989))

(declare-fun m!2255991 () Bool)

(assert (=> tb!111627 m!2255991))

(assert (=> b!1828007 t!170401))

(declare-fun b_and!142095 () Bool)

(assert (= b_and!142079 (and (=> t!170401 result!134240) b_and!142095)))

(declare-fun t!170403 () Bool)

(declare-fun tb!111629 () Bool)

(assert (=> (and b!1827881 (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) t!170403) tb!111629))

(declare-fun result!134244 () Bool)

(assert (= result!134244 result!134240))

(assert (=> b!1828007 t!170403))

(declare-fun b_and!142097 () Bool)

(assert (= b_and!142083 (and (=> t!170403 result!134244) b_and!142097)))

(declare-fun tb!111631 () Bool)

(declare-fun t!170405 () Bool)

(assert (=> (and b!1827884 (= (toChars!5027 (transformation!3629 rule!559)) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) t!170405) tb!111631))

(declare-fun result!134246 () Bool)

(assert (= result!134246 result!134240))

(assert (=> b!1828007 t!170405))

(declare-fun b_and!142099 () Bool)

(assert (= b_and!142087 (and (=> t!170405 result!134246) b_and!142099)))

(declare-fun m!2255993 () Bool)

(assert (=> d!559019 m!2255993))

(declare-fun m!2255995 () Bool)

(assert (=> b!1828007 m!2255995))

(assert (=> b!1828007 m!2255995))

(declare-fun m!2255997 () Bool)

(assert (=> b!1828007 m!2255997))

(declare-fun m!2255999 () Bool)

(assert (=> b!1828008 m!2255999))

(assert (=> start!181270 d!559019))

(declare-fun d!559021 () Bool)

(declare-fun res!822167 () Bool)

(declare-fun e!1168464 () Bool)

(assert (=> d!559021 (=> (not res!822167) (not e!1168464))))

(declare-fun rulesValid!1382 (LexerInterface!3258 List!20162) Bool)

(assert (=> d!559021 (= res!822167 (rulesValid!1382 thiss!28068 rules!4538))))

(assert (=> d!559021 (= (rulesInvariant!2927 thiss!28068 rules!4538) e!1168464)))

(declare-fun b!1828029 () Bool)

(declare-datatypes ((List!20164 0))(
  ( (Nil!20094) (Cons!20094 (h!25495 String!22927) (t!170443 List!20164)) )
))
(declare-fun noDuplicateTag!1380 (LexerInterface!3258 List!20162 List!20164) Bool)

(assert (=> b!1828029 (= e!1168464 (noDuplicateTag!1380 thiss!28068 rules!4538 Nil!20094))))

(assert (= (and d!559021 res!822167) b!1828029))

(declare-fun m!2256035 () Bool)

(assert (=> d!559021 m!2256035))

(declare-fun m!2256037 () Bool)

(assert (=> b!1828029 m!2256037))

(assert (=> b!1827875 d!559021))

(declare-fun d!559027 () Bool)

(declare-fun e!1168493 () Bool)

(assert (=> d!559027 e!1168493))

(declare-fun c!298138 () Bool)

(assert (=> d!559027 (= c!298138 ((_ is EmptyExpr!4957) (regex!3629 rule!559)))))

(declare-fun lt!710033 () Bool)

(declare-fun e!1168488 () Bool)

(assert (=> d!559027 (= lt!710033 e!1168488)))

(declare-fun c!298137 () Bool)

(assert (=> d!559027 (= c!298137 (isEmpty!12686 lt!709978))))

(declare-fun validRegex!2019 (Regex!4957) Bool)

(assert (=> d!559027 (validRegex!2019 (regex!3629 rule!559))))

(assert (=> d!559027 (= (matchR!2420 (regex!3629 rule!559) lt!709978) lt!710033)))

(declare-fun b!1828068 () Bool)

(declare-fun e!1168491 () Bool)

(declare-fun e!1168487 () Bool)

(assert (=> b!1828068 (= e!1168491 e!1168487)))

(declare-fun res!822186 () Bool)

(assert (=> b!1828068 (=> res!822186 e!1168487)))

(declare-fun call!114574 () Bool)

(assert (=> b!1828068 (= res!822186 call!114574)))

(declare-fun b!1828069 () Bool)

(assert (=> b!1828069 (= e!1168493 (= lt!710033 call!114574))))

(declare-fun b!1828070 () Bool)

(declare-fun res!822189 () Bool)

(declare-fun e!1168489 () Bool)

(assert (=> b!1828070 (=> (not res!822189) (not e!1168489))))

(declare-fun tail!2727 (List!20161) List!20161)

(assert (=> b!1828070 (= res!822189 (isEmpty!12686 (tail!2727 lt!709978)))))

(declare-fun b!1828071 () Bool)

(declare-fun e!1168490 () Bool)

(assert (=> b!1828071 (= e!1168493 e!1168490)))

(declare-fun c!298136 () Bool)

(assert (=> b!1828071 (= c!298136 ((_ is EmptyLang!4957) (regex!3629 rule!559)))))

(declare-fun b!1828072 () Bool)

(declare-fun derivativeStep!1303 (Regex!4957 C!10088) Regex!4957)

(declare-fun head!4268 (List!20161) C!10088)

(assert (=> b!1828072 (= e!1168488 (matchR!2420 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)) (tail!2727 lt!709978)))))

(declare-fun b!1828073 () Bool)

(declare-fun nullable!1539 (Regex!4957) Bool)

(assert (=> b!1828073 (= e!1168488 (nullable!1539 (regex!3629 rule!559)))))

(declare-fun b!1828074 () Bool)

(assert (=> b!1828074 (= e!1168489 (= (head!4268 lt!709978) (c!298107 (regex!3629 rule!559))))))

(declare-fun b!1828075 () Bool)

(declare-fun res!822193 () Bool)

(declare-fun e!1168492 () Bool)

(assert (=> b!1828075 (=> res!822193 e!1168492)))

(assert (=> b!1828075 (= res!822193 e!1168489)))

(declare-fun res!822187 () Bool)

(assert (=> b!1828075 (=> (not res!822187) (not e!1168489))))

(assert (=> b!1828075 (= res!822187 lt!710033)))

(declare-fun b!1828076 () Bool)

(declare-fun res!822191 () Bool)

(assert (=> b!1828076 (=> res!822191 e!1168492)))

(assert (=> b!1828076 (= res!822191 (not ((_ is ElementMatch!4957) (regex!3629 rule!559))))))

(assert (=> b!1828076 (= e!1168490 e!1168492)))

(declare-fun bm!114569 () Bool)

(assert (=> bm!114569 (= call!114574 (isEmpty!12686 lt!709978))))

(declare-fun b!1828077 () Bool)

(declare-fun res!822190 () Bool)

(assert (=> b!1828077 (=> res!822190 e!1168487)))

(assert (=> b!1828077 (= res!822190 (not (isEmpty!12686 (tail!2727 lt!709978))))))

(declare-fun b!1828078 () Bool)

(assert (=> b!1828078 (= e!1168490 (not lt!710033))))

(declare-fun b!1828079 () Bool)

(assert (=> b!1828079 (= e!1168492 e!1168491)))

(declare-fun res!822192 () Bool)

(assert (=> b!1828079 (=> (not res!822192) (not e!1168491))))

(assert (=> b!1828079 (= res!822192 (not lt!710033))))

(declare-fun b!1828080 () Bool)

(assert (=> b!1828080 (= e!1168487 (not (= (head!4268 lt!709978) (c!298107 (regex!3629 rule!559)))))))

(declare-fun b!1828081 () Bool)

(declare-fun res!822188 () Bool)

(assert (=> b!1828081 (=> (not res!822188) (not e!1168489))))

(assert (=> b!1828081 (= res!822188 (not call!114574))))

(assert (= (and d!559027 c!298137) b!1828073))

(assert (= (and d!559027 (not c!298137)) b!1828072))

(assert (= (and d!559027 c!298138) b!1828069))

(assert (= (and d!559027 (not c!298138)) b!1828071))

(assert (= (and b!1828071 c!298136) b!1828078))

(assert (= (and b!1828071 (not c!298136)) b!1828076))

(assert (= (and b!1828076 (not res!822191)) b!1828075))

(assert (= (and b!1828075 res!822187) b!1828081))

(assert (= (and b!1828081 res!822188) b!1828070))

(assert (= (and b!1828070 res!822189) b!1828074))

(assert (= (and b!1828075 (not res!822193)) b!1828079))

(assert (= (and b!1828079 res!822192) b!1828068))

(assert (= (and b!1828068 (not res!822186)) b!1828077))

(assert (= (and b!1828077 (not res!822190)) b!1828080))

(assert (= (or b!1828069 b!1828068 b!1828081) bm!114569))

(declare-fun m!2256051 () Bool)

(assert (=> b!1828080 m!2256051))

(assert (=> d!559027 m!2255905))

(declare-fun m!2256053 () Bool)

(assert (=> d!559027 m!2256053))

(declare-fun m!2256055 () Bool)

(assert (=> b!1828070 m!2256055))

(assert (=> b!1828070 m!2256055))

(declare-fun m!2256057 () Bool)

(assert (=> b!1828070 m!2256057))

(assert (=> b!1828077 m!2256055))

(assert (=> b!1828077 m!2256055))

(assert (=> b!1828077 m!2256057))

(declare-fun m!2256059 () Bool)

(assert (=> b!1828073 m!2256059))

(assert (=> b!1828074 m!2256051))

(assert (=> bm!114569 m!2255905))

(assert (=> b!1828072 m!2256051))

(assert (=> b!1828072 m!2256051))

(declare-fun m!2256061 () Bool)

(assert (=> b!1828072 m!2256061))

(assert (=> b!1828072 m!2256055))

(assert (=> b!1828072 m!2256061))

(assert (=> b!1828072 m!2256055))

(declare-fun m!2256063 () Bool)

(assert (=> b!1828072 m!2256063))

(assert (=> b!1827874 d!559027))

(declare-fun d!559037 () Bool)

(declare-fun res!822198 () Bool)

(declare-fun e!1168496 () Bool)

(assert (=> d!559037 (=> (not res!822198) (not e!1168496))))

(assert (=> d!559037 (= res!822198 (validRegex!2019 (regex!3629 rule!559)))))

(assert (=> d!559037 (= (ruleValid!1119 thiss!28068 rule!559) e!1168496)))

(declare-fun b!1828086 () Bool)

(declare-fun res!822199 () Bool)

(assert (=> b!1828086 (=> (not res!822199) (not e!1168496))))

(assert (=> b!1828086 (= res!822199 (not (nullable!1539 (regex!3629 rule!559))))))

(declare-fun b!1828087 () Bool)

(assert (=> b!1828087 (= e!1168496 (not (= (tag!4043 rule!559) (String!22928 ""))))))

(assert (= (and d!559037 res!822198) b!1828086))

(assert (= (and b!1828086 res!822199) b!1828087))

(assert (=> d!559037 m!2256053))

(assert (=> b!1828086 m!2256059))

(assert (=> b!1827874 d!559037))

(declare-fun d!559039 () Bool)

(assert (=> d!559039 (ruleValid!1119 thiss!28068 rule!559)))

(declare-fun lt!710036 () Unit!34761)

(declare-fun choose!11516 (LexerInterface!3258 Rule!7058 List!20162) Unit!34761)

(assert (=> d!559039 (= lt!710036 (choose!11516 thiss!28068 rule!559 rules!4538))))

(assert (=> d!559039 (contains!3695 rules!4538 rule!559)))

(assert (=> d!559039 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!638 thiss!28068 rule!559 rules!4538) lt!710036)))

(declare-fun bs!407654 () Bool)

(assert (= bs!407654 d!559039))

(assert (=> bs!407654 m!2255879))

(declare-fun m!2256065 () Bool)

(assert (=> bs!407654 m!2256065))

(assert (=> bs!407654 m!2255895))

(assert (=> b!1827874 d!559039))

(declare-fun d!559041 () Bool)

(declare-fun lt!710039 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2970 (List!20162) (InoxSet Rule!7058))

(assert (=> d!559041 (= lt!710039 (select (content!2970 rules!4538) rule!559))))

(declare-fun e!1168502 () Bool)

(assert (=> d!559041 (= lt!710039 e!1168502)))

(declare-fun res!822204 () Bool)

(assert (=> d!559041 (=> (not res!822204) (not e!1168502))))

(assert (=> d!559041 (= res!822204 ((_ is Cons!20092) rules!4538))))

(assert (=> d!559041 (= (contains!3695 rules!4538 rule!559) lt!710039)))

(declare-fun b!1828092 () Bool)

(declare-fun e!1168501 () Bool)

(assert (=> b!1828092 (= e!1168502 e!1168501)))

(declare-fun res!822205 () Bool)

(assert (=> b!1828092 (=> res!822205 e!1168501)))

(assert (=> b!1828092 (= res!822205 (= (h!25493 rules!4538) rule!559))))

(declare-fun b!1828093 () Bool)

(assert (=> b!1828093 (= e!1168501 (contains!3695 (t!170393 rules!4538) rule!559))))

(assert (= (and d!559041 res!822204) b!1828092))

(assert (= (and b!1828092 (not res!822205)) b!1828093))

(declare-fun m!2256067 () Bool)

(assert (=> d!559041 m!2256067))

(declare-fun m!2256069 () Bool)

(assert (=> d!559041 m!2256069))

(declare-fun m!2256071 () Bool)

(assert (=> b!1828093 m!2256071))

(assert (=> b!1827885 d!559041))

(declare-fun d!559043 () Bool)

(declare-fun dynLambda!9984 (Int BalanceConc!13266) TokenValue!3719)

(assert (=> d!559043 (= (apply!5417 (transformation!3629 rule!559) lt!709979) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))

(declare-fun b_lambda!60391 () Bool)

(assert (=> (not b_lambda!60391) (not d!559043)))

(declare-fun t!170413 () Bool)

(declare-fun tb!111639 () Bool)

(assert (=> (and b!1827883 (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 rule!559))) t!170413) tb!111639))

(declare-fun result!134256 () Bool)

(assert (=> tb!111639 (= result!134256 (inv!21 (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(declare-fun m!2256073 () Bool)

(assert (=> tb!111639 m!2256073))

(assert (=> d!559043 t!170413))

(declare-fun b_and!142107 () Bool)

(assert (= b_and!142077 (and (=> t!170413 result!134256) b_and!142107)))

(declare-fun t!170415 () Bool)

(declare-fun tb!111641 () Bool)

(assert (=> (and b!1827881 (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 rule!559))) t!170415) tb!111641))

(declare-fun result!134260 () Bool)

(assert (= result!134260 result!134256))

(assert (=> d!559043 t!170415))

(declare-fun b_and!142109 () Bool)

(assert (= b_and!142081 (and (=> t!170415 result!134260) b_and!142109)))

(declare-fun t!170417 () Bool)

(declare-fun tb!111643 () Bool)

(assert (=> (and b!1827884 (= (toValue!5168 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 rule!559))) t!170417) tb!111643))

(declare-fun result!134262 () Bool)

(assert (= result!134262 result!134256))

(assert (=> d!559043 t!170417))

(declare-fun b_and!142111 () Bool)

(assert (= b_and!142085 (and (=> t!170417 result!134262) b_and!142111)))

(declare-fun m!2256075 () Bool)

(assert (=> d!559043 m!2256075))

(assert (=> b!1827876 d!559043))

(declare-fun d!559045 () Bool)

(declare-fun lt!710042 () Int)

(assert (=> d!559045 (>= lt!710042 0)))

(declare-fun e!1168508 () Int)

(assert (=> d!559045 (= lt!710042 e!1168508)))

(declare-fun c!298141 () Bool)

(assert (=> d!559045 (= c!298141 ((_ is Nil!20091) lt!709978))))

(assert (=> d!559045 (= (size!15932 lt!709978) lt!710042)))

(declare-fun b!1828100 () Bool)

(assert (=> b!1828100 (= e!1168508 0)))

(declare-fun b!1828101 () Bool)

(assert (=> b!1828101 (= e!1168508 (+ 1 (size!15932 (t!170392 lt!709978))))))

(assert (= (and d!559045 c!298141) b!1828100))

(assert (= (and d!559045 (not c!298141)) b!1828101))

(declare-fun m!2256077 () Bool)

(assert (=> b!1828101 m!2256077))

(assert (=> b!1827876 d!559045))

(declare-fun b!1828175 () Bool)

(declare-fun e!1168551 () Bool)

(assert (=> b!1828175 (= e!1168551 true)))

(declare-fun d!559047 () Bool)

(assert (=> d!559047 e!1168551))

(assert (= d!559047 b!1828175))

(declare-fun order!13013 () Int)

(declare-fun order!13011 () Int)

(declare-fun lambda!71740 () Int)

(declare-fun dynLambda!9985 (Int Int) Int)

(declare-fun dynLambda!9986 (Int Int) Int)

(assert (=> b!1828175 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 rule!559))) (dynLambda!9986 order!13013 lambda!71740))))

(declare-fun order!13015 () Int)

(declare-fun dynLambda!9987 (Int Int) Int)

(assert (=> b!1828175 (< (dynLambda!9987 order!13015 (toChars!5027 (transformation!3629 rule!559))) (dynLambda!9986 order!13013 lambda!71740))))

(assert (=> d!559047 (= (list!8163 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))) (list!8163 lt!709979))))

(declare-fun lt!710046 () Unit!34761)

(declare-fun ForallOf!363 (Int BalanceConc!13266) Unit!34761)

(assert (=> d!559047 (= lt!710046 (ForallOf!363 lambda!71740 lt!709979))))

(assert (=> d!559047 (= (lemmaSemiInverse!725 (transformation!3629 rule!559) lt!709979) lt!710046)))

(declare-fun b_lambda!60409 () Bool)

(assert (=> (not b_lambda!60409) (not d!559047)))

(declare-fun tb!111657 () Bool)

(declare-fun t!170432 () Bool)

(assert (=> (and b!1827883 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 rule!559))) t!170432) tb!111657))

(declare-fun tp!517104 () Bool)

(declare-fun e!1168552 () Bool)

(declare-fun b!1828176 () Bool)

(assert (=> b!1828176 (= e!1168552 (and (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))) tp!517104))))

(declare-fun result!134282 () Bool)

(assert (=> tb!111657 (= result!134282 (and (inv!26148 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))) e!1168552))))

(assert (= tb!111657 b!1828176))

(declare-fun m!2256117 () Bool)

(assert (=> b!1828176 m!2256117))

(declare-fun m!2256119 () Bool)

(assert (=> tb!111657 m!2256119))

(assert (=> d!559047 t!170432))

(declare-fun b_and!142135 () Bool)

(assert (= b_and!142095 (and (=> t!170432 result!134282) b_and!142135)))

(declare-fun tb!111659 () Bool)

(declare-fun t!170434 () Bool)

(assert (=> (and b!1827881 (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 rule!559))) t!170434) tb!111659))

(declare-fun result!134284 () Bool)

(assert (= result!134284 result!134282))

(assert (=> d!559047 t!170434))

(declare-fun b_and!142137 () Bool)

(assert (= b_and!142097 (and (=> t!170434 result!134284) b_and!142137)))

(declare-fun t!170436 () Bool)

(declare-fun tb!111661 () Bool)

(assert (=> (and b!1827884 (= (toChars!5027 (transformation!3629 rule!559)) (toChars!5027 (transformation!3629 rule!559))) t!170436) tb!111661))

(declare-fun result!134286 () Bool)

(assert (= result!134286 result!134282))

(assert (=> d!559047 t!170436))

(declare-fun b_and!142139 () Bool)

(assert (= b_and!142099 (and (=> t!170436 result!134286) b_and!142139)))

(declare-fun b_lambda!60411 () Bool)

(assert (=> (not b_lambda!60411) (not d!559047)))

(assert (=> d!559047 t!170413))

(declare-fun b_and!142141 () Bool)

(assert (= b_and!142107 (and (=> t!170413 result!134256) b_and!142141)))

(assert (=> d!559047 t!170415))

(declare-fun b_and!142143 () Bool)

(assert (= b_and!142109 (and (=> t!170415 result!134260) b_and!142143)))

(assert (=> d!559047 t!170417))

(declare-fun b_and!142145 () Bool)

(assert (= b_and!142111 (and (=> t!170417 result!134262) b_and!142145)))

(assert (=> d!559047 m!2256075))

(declare-fun m!2256121 () Bool)

(assert (=> d!559047 m!2256121))

(declare-fun m!2256123 () Bool)

(assert (=> d!559047 m!2256123))

(assert (=> d!559047 m!2256075))

(declare-fun m!2256125 () Bool)

(assert (=> d!559047 m!2256125))

(assert (=> d!559047 m!2256121))

(declare-fun m!2256127 () Bool)

(assert (=> d!559047 m!2256127))

(assert (=> b!1827876 d!559047))

(declare-fun d!559063 () Bool)

(declare-fun fromListB!1182 (List!20161) BalanceConc!13266)

(assert (=> d!559063 (= (seqFromList!2586 lt!709978) (fromListB!1182 lt!709978))))

(declare-fun bs!407656 () Bool)

(assert (= bs!407656 d!559063))

(declare-fun m!2256129 () Bool)

(assert (=> bs!407656 m!2256129))

(assert (=> b!1827876 d!559063))

(declare-fun d!559065 () Bool)

(assert (=> d!559065 (= (inv!26140 (tag!4043 (rule!5789 token!556))) (= (mod (str.len (value!113092 (tag!4043 (rule!5789 token!556)))) 2) 0))))

(assert (=> b!1827886 d!559065))

(declare-fun d!559067 () Bool)

(declare-fun res!822219 () Bool)

(declare-fun e!1168555 () Bool)

(assert (=> d!559067 (=> (not res!822219) (not e!1168555))))

(declare-fun semiInverseModEq!1456 (Int Int) Bool)

(assert (=> d!559067 (= res!822219 (semiInverseModEq!1456 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (rule!5789 token!556)))))))

(assert (=> d!559067 (= (inv!26143 (transformation!3629 (rule!5789 token!556))) e!1168555)))

(declare-fun b!1828179 () Bool)

(declare-fun equivClasses!1397 (Int Int) Bool)

(assert (=> b!1828179 (= e!1168555 (equivClasses!1397 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (rule!5789 token!556)))))))

(assert (= (and d!559067 res!822219) b!1828179))

(declare-fun m!2256131 () Bool)

(assert (=> d!559067 m!2256131))

(declare-fun m!2256133 () Bool)

(assert (=> b!1828179 m!2256133))

(assert (=> b!1827886 d!559067))

(declare-fun d!559069 () Bool)

(assert (=> d!559069 (= (isEmpty!12686 lt!709978) ((_ is Nil!20091) lt!709978))))

(assert (=> b!1827872 d!559069))

(declare-fun d!559071 () Bool)

(assert (=> d!559071 (= (isEmpty!12687 rules!4538) ((_ is Nil!20092) rules!4538))))

(assert (=> b!1827882 d!559071))

(declare-fun b!1828188 () Bool)

(declare-fun e!1168561 () List!20161)

(assert (=> b!1828188 (= e!1168561 suffix!1667)))

(declare-fun b!1828189 () Bool)

(assert (=> b!1828189 (= e!1168561 (Cons!20091 (h!25492 lt!709978) (++!5453 (t!170392 lt!709978) suffix!1667)))))

(declare-fun e!1168560 () Bool)

(declare-fun lt!710049 () List!20161)

(declare-fun b!1828191 () Bool)

(assert (=> b!1828191 (= e!1168560 (or (not (= suffix!1667 Nil!20091)) (= lt!710049 lt!709978)))))

(declare-fun b!1828190 () Bool)

(declare-fun res!822225 () Bool)

(assert (=> b!1828190 (=> (not res!822225) (not e!1168560))))

(assert (=> b!1828190 (= res!822225 (= (size!15932 lt!710049) (+ (size!15932 lt!709978) (size!15932 suffix!1667))))))

(declare-fun d!559073 () Bool)

(assert (=> d!559073 e!1168560))

(declare-fun res!822224 () Bool)

(assert (=> d!559073 (=> (not res!822224) (not e!1168560))))

(declare-fun content!2971 (List!20161) (InoxSet C!10088))

(assert (=> d!559073 (= res!822224 (= (content!2971 lt!710049) ((_ map or) (content!2971 lt!709978) (content!2971 suffix!1667))))))

(assert (=> d!559073 (= lt!710049 e!1168561)))

(declare-fun c!298151 () Bool)

(assert (=> d!559073 (= c!298151 ((_ is Nil!20091) lt!709978))))

(assert (=> d!559073 (= (++!5453 lt!709978 suffix!1667) lt!710049)))

(assert (= (and d!559073 c!298151) b!1828188))

(assert (= (and d!559073 (not c!298151)) b!1828189))

(assert (= (and d!559073 res!822224) b!1828190))

(assert (= (and b!1828190 res!822225) b!1828191))

(declare-fun m!2256135 () Bool)

(assert (=> b!1828189 m!2256135))

(declare-fun m!2256137 () Bool)

(assert (=> b!1828190 m!2256137))

(assert (=> b!1828190 m!2255871))

(declare-fun m!2256139 () Bool)

(assert (=> b!1828190 m!2256139))

(declare-fun m!2256141 () Bool)

(assert (=> d!559073 m!2256141))

(declare-fun m!2256143 () Bool)

(assert (=> d!559073 m!2256143))

(declare-fun m!2256145 () Bool)

(assert (=> d!559073 m!2256145))

(assert (=> b!1827873 d!559073))

(declare-fun d!559075 () Bool)

(declare-fun list!8165 (Conc!6661) List!20161)

(assert (=> d!559075 (= (list!8163 (charsOf!2272 token!556)) (list!8165 (c!298106 (charsOf!2272 token!556))))))

(declare-fun bs!407657 () Bool)

(assert (= bs!407657 d!559075))

(declare-fun m!2256147 () Bool)

(assert (=> bs!407657 m!2256147))

(assert (=> b!1827873 d!559075))

(declare-fun d!559077 () Bool)

(declare-fun lt!710052 () BalanceConc!13266)

(assert (=> d!559077 (= (list!8163 lt!710052) (originalCharacters!4437 token!556))))

(assert (=> d!559077 (= lt!710052 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))

(assert (=> d!559077 (= (charsOf!2272 token!556) lt!710052)))

(declare-fun b_lambda!60413 () Bool)

(assert (=> (not b_lambda!60413) (not d!559077)))

(assert (=> d!559077 t!170401))

(declare-fun b_and!142147 () Bool)

(assert (= b_and!142135 (and (=> t!170401 result!134240) b_and!142147)))

(assert (=> d!559077 t!170403))

(declare-fun b_and!142149 () Bool)

(assert (= b_and!142137 (and (=> t!170403 result!134244) b_and!142149)))

(assert (=> d!559077 t!170405))

(declare-fun b_and!142151 () Bool)

(assert (= b_and!142139 (and (=> t!170405 result!134246) b_and!142151)))

(declare-fun m!2256149 () Bool)

(assert (=> d!559077 m!2256149))

(assert (=> d!559077 m!2255995))

(assert (=> b!1827873 d!559077))

(declare-fun b!1828202 () Bool)

(declare-fun res!822228 () Bool)

(declare-fun e!1168568 () Bool)

(assert (=> b!1828202 (=> res!822228 e!1168568)))

(assert (=> b!1828202 (= res!822228 (not ((_ is IntegerValue!11159) (value!113093 token!556))))))

(declare-fun e!1168569 () Bool)

(assert (=> b!1828202 (= e!1168569 e!1168568)))

(declare-fun b!1828203 () Bool)

(declare-fun e!1168570 () Bool)

(declare-fun inv!16 (TokenValue!3719) Bool)

(assert (=> b!1828203 (= e!1168570 (inv!16 (value!113093 token!556)))))

(declare-fun b!1828204 () Bool)

(assert (=> b!1828204 (= e!1168570 e!1168569)))

(declare-fun c!298156 () Bool)

(assert (=> b!1828204 (= c!298156 ((_ is IntegerValue!11158) (value!113093 token!556)))))

(declare-fun b!1828205 () Bool)

(declare-fun inv!17 (TokenValue!3719) Bool)

(assert (=> b!1828205 (= e!1168569 (inv!17 (value!113093 token!556)))))

(declare-fun b!1828206 () Bool)

(declare-fun inv!15 (TokenValue!3719) Bool)

(assert (=> b!1828206 (= e!1168568 (inv!15 (value!113093 token!556)))))

(declare-fun d!559079 () Bool)

(declare-fun c!298157 () Bool)

(assert (=> d!559079 (= c!298157 ((_ is IntegerValue!11157) (value!113093 token!556)))))

(assert (=> d!559079 (= (inv!21 (value!113093 token!556)) e!1168570)))

(assert (= (and d!559079 c!298157) b!1828203))

(assert (= (and d!559079 (not c!298157)) b!1828204))

(assert (= (and b!1828204 c!298156) b!1828205))

(assert (= (and b!1828204 (not c!298156)) b!1828202))

(assert (= (and b!1828202 (not res!822228)) b!1828206))

(declare-fun m!2256151 () Bool)

(assert (=> b!1828203 m!2256151))

(declare-fun m!2256153 () Bool)

(assert (=> b!1828205 m!2256153))

(declare-fun m!2256155 () Bool)

(assert (=> b!1828206 m!2256155))

(assert (=> b!1827880 d!559079))

(declare-fun d!559081 () Bool)

(assert (=> d!559081 (= (inv!26140 (tag!4043 (h!25493 rules!4538))) (= (mod (str.len (value!113092 (tag!4043 (h!25493 rules!4538)))) 2) 0))))

(assert (=> b!1827871 d!559081))

(declare-fun d!559083 () Bool)

(declare-fun res!822229 () Bool)

(declare-fun e!1168571 () Bool)

(assert (=> d!559083 (=> (not res!822229) (not e!1168571))))

(assert (=> d!559083 (= res!822229 (semiInverseModEq!1456 (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))))))

(assert (=> d!559083 (= (inv!26143 (transformation!3629 (h!25493 rules!4538))) e!1168571)))

(declare-fun b!1828207 () Bool)

(assert (=> b!1828207 (= e!1168571 (equivClasses!1397 (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))))))

(assert (= (and d!559083 res!822229) b!1828207))

(declare-fun m!2256157 () Bool)

(assert (=> d!559083 m!2256157))

(declare-fun m!2256159 () Bool)

(assert (=> b!1828207 m!2256159))

(assert (=> b!1827871 d!559083))

(declare-fun d!559085 () Bool)

(assert (=> d!559085 (= (inv!26140 (tag!4043 rule!559)) (= (mod (str.len (value!113092 (tag!4043 rule!559))) 2) 0))))

(assert (=> b!1827870 d!559085))

(declare-fun d!559087 () Bool)

(declare-fun res!822230 () Bool)

(declare-fun e!1168572 () Bool)

(assert (=> d!559087 (=> (not res!822230) (not e!1168572))))

(assert (=> d!559087 (= res!822230 (semiInverseModEq!1456 (toChars!5027 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 rule!559))))))

(assert (=> d!559087 (= (inv!26143 (transformation!3629 rule!559)) e!1168572)))

(declare-fun b!1828208 () Bool)

(assert (=> b!1828208 (= e!1168572 (equivClasses!1397 (toChars!5027 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 rule!559))))))

(assert (= (and d!559087 res!822230) b!1828208))

(declare-fun m!2256161 () Bool)

(assert (=> d!559087 m!2256161))

(declare-fun m!2256163 () Bool)

(assert (=> b!1828208 m!2256163))

(assert (=> b!1827870 d!559087))

(declare-fun b!1828213 () Bool)

(declare-fun e!1168575 () Bool)

(declare-fun tp!517107 () Bool)

(assert (=> b!1828213 (= e!1168575 (and tp_is_empty!8149 tp!517107))))

(assert (=> b!1827877 (= tp!517042 e!1168575)))

(assert (= (and b!1827877 ((_ is Cons!20091) (t!170392 suffix!1667))) b!1828213))

(declare-fun b!1828224 () Bool)

(declare-fun b_free!51031 () Bool)

(declare-fun b_next!51735 () Bool)

(assert (=> b!1828224 (= b_free!51031 (not b_next!51735))))

(declare-fun t!170438 () Bool)

(declare-fun tb!111663 () Bool)

(assert (=> (and b!1828224 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 rule!559))) t!170438) tb!111663))

(declare-fun result!134292 () Bool)

(assert (= result!134292 result!134256))

(assert (=> d!559043 t!170438))

(assert (=> d!559047 t!170438))

(declare-fun b_and!142153 () Bool)

(declare-fun tp!517119 () Bool)

(assert (=> b!1828224 (= tp!517119 (and (=> t!170438 result!134292) b_and!142153))))

(declare-fun b_free!51033 () Bool)

(declare-fun b_next!51737 () Bool)

(assert (=> b!1828224 (= b_free!51033 (not b_next!51737))))

(declare-fun tb!111665 () Bool)

(declare-fun t!170440 () Bool)

(assert (=> (and b!1828224 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) t!170440) tb!111665))

(declare-fun result!134294 () Bool)

(assert (= result!134294 result!134240))

(assert (=> b!1828007 t!170440))

(declare-fun tb!111667 () Bool)

(declare-fun t!170442 () Bool)

(assert (=> (and b!1828224 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 rule!559))) t!170442) tb!111667))

(declare-fun result!134296 () Bool)

(assert (= result!134296 result!134282))

(assert (=> d!559047 t!170442))

(assert (=> d!559077 t!170440))

(declare-fun b_and!142155 () Bool)

(declare-fun tp!517117 () Bool)

(assert (=> b!1828224 (= tp!517117 (and (=> t!170440 result!134294) (=> t!170442 result!134296) b_and!142155))))

(declare-fun e!1168585 () Bool)

(assert (=> b!1828224 (= e!1168585 (and tp!517119 tp!517117))))

(declare-fun tp!517118 () Bool)

(declare-fun e!1168587 () Bool)

(declare-fun b!1828223 () Bool)

(assert (=> b!1828223 (= e!1168587 (and tp!517118 (inv!26140 (tag!4043 (h!25493 (t!170393 rules!4538)))) (inv!26143 (transformation!3629 (h!25493 (t!170393 rules!4538)))) e!1168585))))

(declare-fun b!1828222 () Bool)

(declare-fun e!1168584 () Bool)

(declare-fun tp!517116 () Bool)

(assert (=> b!1828222 (= e!1168584 (and e!1168587 tp!517116))))

(assert (=> b!1827878 (= tp!517050 e!1168584)))

(assert (= b!1828223 b!1828224))

(assert (= b!1828222 b!1828223))

(assert (= (and b!1827878 ((_ is Cons!20092) (t!170393 rules!4538))) b!1828222))

(declare-fun m!2256165 () Bool)

(assert (=> b!1828223 m!2256165))

(declare-fun m!2256167 () Bool)

(assert (=> b!1828223 m!2256167))

(declare-fun b!1828225 () Bool)

(declare-fun e!1168588 () Bool)

(declare-fun tp!517120 () Bool)

(assert (=> b!1828225 (= e!1168588 (and tp_is_empty!8149 tp!517120))))

(assert (=> b!1827880 (= tp!517043 e!1168588)))

(assert (= (and b!1827880 ((_ is Cons!20091) (originalCharacters!4437 token!556))) b!1828225))

(declare-fun b!1828226 () Bool)

(declare-fun e!1168589 () Bool)

(declare-fun tp!517121 () Bool)

(assert (=> b!1828226 (= e!1168589 (and tp_is_empty!8149 tp!517121))))

(assert (=> b!1827869 (= tp!517047 e!1168589)))

(assert (= (and b!1827869 ((_ is Cons!20091) (t!170392 input!3612))) b!1828226))

(declare-fun b!1828238 () Bool)

(declare-fun e!1168592 () Bool)

(declare-fun tp!517136 () Bool)

(declare-fun tp!517134 () Bool)

(assert (=> b!1828238 (= e!1168592 (and tp!517136 tp!517134))))

(declare-fun b!1828240 () Bool)

(declare-fun tp!517135 () Bool)

(declare-fun tp!517133 () Bool)

(assert (=> b!1828240 (= e!1168592 (and tp!517135 tp!517133))))

(declare-fun b!1828239 () Bool)

(declare-fun tp!517132 () Bool)

(assert (=> b!1828239 (= e!1168592 tp!517132)))

(assert (=> b!1827871 (= tp!517054 e!1168592)))

(declare-fun b!1828237 () Bool)

(assert (=> b!1828237 (= e!1168592 tp_is_empty!8149)))

(assert (= (and b!1827871 ((_ is ElementMatch!4957) (regex!3629 (h!25493 rules!4538)))) b!1828237))

(assert (= (and b!1827871 ((_ is Concat!8677) (regex!3629 (h!25493 rules!4538)))) b!1828238))

(assert (= (and b!1827871 ((_ is Star!4957) (regex!3629 (h!25493 rules!4538)))) b!1828239))

(assert (= (and b!1827871 ((_ is Union!4957) (regex!3629 (h!25493 rules!4538)))) b!1828240))

(declare-fun b!1828242 () Bool)

(declare-fun e!1168593 () Bool)

(declare-fun tp!517141 () Bool)

(declare-fun tp!517139 () Bool)

(assert (=> b!1828242 (= e!1168593 (and tp!517141 tp!517139))))

(declare-fun b!1828244 () Bool)

(declare-fun tp!517140 () Bool)

(declare-fun tp!517138 () Bool)

(assert (=> b!1828244 (= e!1168593 (and tp!517140 tp!517138))))

(declare-fun b!1828243 () Bool)

(declare-fun tp!517137 () Bool)

(assert (=> b!1828243 (= e!1168593 tp!517137)))

(assert (=> b!1827886 (= tp!517045 e!1168593)))

(declare-fun b!1828241 () Bool)

(assert (=> b!1828241 (= e!1168593 tp_is_empty!8149)))

(assert (= (and b!1827886 ((_ is ElementMatch!4957) (regex!3629 (rule!5789 token!556)))) b!1828241))

(assert (= (and b!1827886 ((_ is Concat!8677) (regex!3629 (rule!5789 token!556)))) b!1828242))

(assert (= (and b!1827886 ((_ is Star!4957) (regex!3629 (rule!5789 token!556)))) b!1828243))

(assert (= (and b!1827886 ((_ is Union!4957) (regex!3629 (rule!5789 token!556)))) b!1828244))

(declare-fun b!1828246 () Bool)

(declare-fun e!1168594 () Bool)

(declare-fun tp!517146 () Bool)

(declare-fun tp!517144 () Bool)

(assert (=> b!1828246 (= e!1168594 (and tp!517146 tp!517144))))

(declare-fun b!1828248 () Bool)

(declare-fun tp!517145 () Bool)

(declare-fun tp!517143 () Bool)

(assert (=> b!1828248 (= e!1168594 (and tp!517145 tp!517143))))

(declare-fun b!1828247 () Bool)

(declare-fun tp!517142 () Bool)

(assert (=> b!1828247 (= e!1168594 tp!517142)))

(assert (=> b!1827870 (= tp!517049 e!1168594)))

(declare-fun b!1828245 () Bool)

(assert (=> b!1828245 (= e!1168594 tp_is_empty!8149)))

(assert (= (and b!1827870 ((_ is ElementMatch!4957) (regex!3629 rule!559))) b!1828245))

(assert (= (and b!1827870 ((_ is Concat!8677) (regex!3629 rule!559))) b!1828246))

(assert (= (and b!1827870 ((_ is Star!4957) (regex!3629 rule!559))) b!1828247))

(assert (= (and b!1827870 ((_ is Union!4957) (regex!3629 rule!559))) b!1828248))

(declare-fun b_lambda!60415 () Bool)

(assert (= b_lambda!60391 (or (and b!1827883 b_free!51015 (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 rule!559)))) (and b!1827881 b_free!51019 (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 rule!559)))) (and b!1827884 b_free!51023) (and b!1828224 b_free!51031 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 rule!559)))) b_lambda!60415)))

(declare-fun b_lambda!60417 () Bool)

(assert (= b_lambda!60387 (or (and b!1827883 b_free!51017 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) (and b!1827881 b_free!51021) (and b!1827884 b_free!51025 (= (toChars!5027 (transformation!3629 rule!559)) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) (and b!1828224 b_free!51033 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) b_lambda!60417)))

(declare-fun b_lambda!60419 () Bool)

(assert (= b_lambda!60413 (or (and b!1827883 b_free!51017 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) (and b!1827881 b_free!51021) (and b!1827884 b_free!51025 (= (toChars!5027 (transformation!3629 rule!559)) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) (and b!1828224 b_free!51033 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 (rule!5789 token!556))))) b_lambda!60419)))

(declare-fun b_lambda!60421 () Bool)

(assert (= b_lambda!60409 (or (and b!1827883 b_free!51017 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 rule!559)))) (and b!1827881 b_free!51021 (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 rule!559)))) (and b!1827884 b_free!51025) (and b!1828224 b_free!51033 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 rule!559)))) b_lambda!60421)))

(declare-fun b_lambda!60423 () Bool)

(assert (= b_lambda!60411 (or (and b!1827883 b_free!51015 (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 rule!559)))) (and b!1827881 b_free!51019 (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 rule!559)))) (and b!1827884 b_free!51023) (and b!1828224 b_free!51031 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 rule!559)))) b_lambda!60423)))

(check-sat (not d!559019) b_and!142153 (not b!1828070) tp_is_empty!8149 (not b_lambda!60415) (not bm!114569) (not b!1828086) (not b!1828222) (not tb!111639) (not b!1828007) (not b!1827978) (not d!559047) b_and!142149 b_and!142143 (not b_next!51723) (not tb!111657) (not b!1827984) (not b!1828243) (not b!1828077) (not b!1828206) (not b!1828072) (not b!1827979) (not b!1828013) (not b!1828246) b_and!142155 (not b!1827977) (not b!1828247) (not b!1828179) (not b_next!51721) (not b_lambda!60421) (not b!1828240) (not b!1828225) (not b!1828213) b_and!142141 (not b!1828008) (not b!1828176) (not b_next!51737) (not b!1828101) (not b!1828208) (not d!559077) (not b_next!51725) (not b!1828093) (not b!1828203) (not d!559037) (not b_lambda!60417) (not b_lambda!60419) (not b!1828238) (not b!1828223) (not b!1828080) (not b!1827981) (not b!1828074) (not b!1827982) b_and!142151 (not d!559067) (not d!559039) (not d!559073) (not b!1828189) (not b!1828190) (not b_next!51719) (not d!559021) (not b!1828073) (not d!559041) (not b!1828244) (not b!1827980) (not d!559063) b_and!142147 (not b_next!51735) (not b_next!51727) (not b!1828205) (not b_next!51729) (not b!1828207) (not d!559083) (not d!558999) (not b_lambda!60423) (not bm!114563) (not d!559027) (not b!1828239) b_and!142145 (not b!1828029) (not b!1828248) (not tb!111627) (not b!1827976) (not b!1828242) (not b!1828226) (not d!559075) (not d!559087))
(check-sat b_and!142153 b_and!142155 (not b_next!51721) b_and!142141 (not b_next!51737) (not b_next!51725) b_and!142151 (not b_next!51719) b_and!142147 b_and!142145 b_and!142149 b_and!142143 (not b_next!51723) (not b_next!51735) (not b_next!51727) (not b_next!51729))
(get-model)

(declare-fun d!559103 () Bool)

(assert (=> d!559103 (= (list!8163 lt!710052) (list!8165 (c!298106 lt!710052)))))

(declare-fun bs!407660 () Bool)

(assert (= bs!407660 d!559103))

(declare-fun m!2256189 () Bool)

(assert (=> bs!407660 m!2256189))

(assert (=> d!559077 d!559103))

(declare-fun d!559105 () Bool)

(assert (=> d!559105 (= (isEmpty!12689 lt!710006) (not ((_ is Some!4208) lt!710006)))))

(assert (=> d!558999 d!559105))

(declare-fun b!1828282 () Bool)

(declare-fun e!1168616 () Bool)

(assert (=> b!1828282 (= e!1168616 (>= (size!15932 input!3612) (size!15932 input!3612)))))

(declare-fun d!559107 () Bool)

(assert (=> d!559107 e!1168616))

(declare-fun res!822247 () Bool)

(assert (=> d!559107 (=> res!822247 e!1168616)))

(declare-fun lt!710058 () Bool)

(assert (=> d!559107 (= res!822247 (not lt!710058))))

(declare-fun e!1168614 () Bool)

(assert (=> d!559107 (= lt!710058 e!1168614)))

(declare-fun res!822249 () Bool)

(assert (=> d!559107 (=> res!822249 e!1168614)))

(assert (=> d!559107 (= res!822249 ((_ is Nil!20091) input!3612))))

(assert (=> d!559107 (= (isPrefix!1831 input!3612 input!3612) lt!710058)))

(declare-fun b!1828280 () Bool)

(declare-fun res!822248 () Bool)

(declare-fun e!1168615 () Bool)

(assert (=> b!1828280 (=> (not res!822248) (not e!1168615))))

(assert (=> b!1828280 (= res!822248 (= (head!4268 input!3612) (head!4268 input!3612)))))

(declare-fun b!1828279 () Bool)

(assert (=> b!1828279 (= e!1168614 e!1168615)))

(declare-fun res!822250 () Bool)

(assert (=> b!1828279 (=> (not res!822250) (not e!1168615))))

(assert (=> b!1828279 (= res!822250 (not ((_ is Nil!20091) input!3612)))))

(declare-fun b!1828281 () Bool)

(assert (=> b!1828281 (= e!1168615 (isPrefix!1831 (tail!2727 input!3612) (tail!2727 input!3612)))))

(assert (= (and d!559107 (not res!822249)) b!1828279))

(assert (= (and b!1828279 res!822250) b!1828280))

(assert (= (and b!1828280 res!822248) b!1828281))

(assert (= (and d!559107 (not res!822247)) b!1828282))

(assert (=> b!1828282 m!2255963))

(assert (=> b!1828282 m!2255963))

(declare-fun m!2256195 () Bool)

(assert (=> b!1828280 m!2256195))

(assert (=> b!1828280 m!2256195))

(declare-fun m!2256197 () Bool)

(assert (=> b!1828281 m!2256197))

(assert (=> b!1828281 m!2256197))

(assert (=> b!1828281 m!2256197))

(assert (=> b!1828281 m!2256197))

(declare-fun m!2256199 () Bool)

(assert (=> b!1828281 m!2256199))

(assert (=> d!558999 d!559107))

(declare-fun d!559113 () Bool)

(assert (=> d!559113 (isPrefix!1831 input!3612 input!3612)))

(declare-fun lt!710061 () Unit!34761)

(declare-fun choose!11517 (List!20161 List!20161) Unit!34761)

(assert (=> d!559113 (= lt!710061 (choose!11517 input!3612 input!3612))))

(assert (=> d!559113 (= (lemmaIsPrefixRefl!1208 input!3612 input!3612) lt!710061)))

(declare-fun bs!407663 () Bool)

(assert (= bs!407663 d!559113))

(assert (=> bs!407663 m!2255971))

(declare-fun m!2256201 () Bool)

(assert (=> bs!407663 m!2256201))

(assert (=> d!558999 d!559113))

(declare-fun d!559115 () Bool)

(assert (=> d!559115 true))

(declare-fun lt!710064 () Bool)

(declare-fun lambda!71749 () Int)

(declare-fun forall!4324 (List!20162 Int) Bool)

(assert (=> d!559115 (= lt!710064 (forall!4324 rules!4538 lambda!71749))))

(declare-fun e!1168635 () Bool)

(assert (=> d!559115 (= lt!710064 e!1168635)))

(declare-fun res!822265 () Bool)

(assert (=> d!559115 (=> res!822265 e!1168635)))

(assert (=> d!559115 (= res!822265 (not ((_ is Cons!20092) rules!4538)))))

(assert (=> d!559115 (= (rulesValidInductive!1250 thiss!28068 rules!4538) lt!710064)))

(declare-fun b!1828305 () Bool)

(declare-fun e!1168636 () Bool)

(assert (=> b!1828305 (= e!1168635 e!1168636)))

(declare-fun res!822266 () Bool)

(assert (=> b!1828305 (=> (not res!822266) (not e!1168636))))

(assert (=> b!1828305 (= res!822266 (ruleValid!1119 thiss!28068 (h!25493 rules!4538)))))

(declare-fun b!1828306 () Bool)

(assert (=> b!1828306 (= e!1168636 (rulesValidInductive!1250 thiss!28068 (t!170393 rules!4538)))))

(assert (= (and d!559115 (not res!822265)) b!1828305))

(assert (= (and b!1828305 res!822266) b!1828306))

(declare-fun m!2256203 () Bool)

(assert (=> d!559115 m!2256203))

(declare-fun m!2256205 () Bool)

(assert (=> b!1828305 m!2256205))

(declare-fun m!2256207 () Bool)

(assert (=> b!1828306 m!2256207))

(assert (=> d!558999 d!559115))

(declare-fun d!559117 () Bool)

(assert (=> d!559117 (= (list!8163 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))) (list!8165 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(declare-fun bs!407664 () Bool)

(assert (= bs!407664 d!559117))

(declare-fun m!2256209 () Bool)

(assert (=> bs!407664 m!2256209))

(assert (=> b!1828007 d!559117))

(declare-fun d!559119 () Bool)

(declare-fun lt!710065 () Int)

(assert (=> d!559119 (>= lt!710065 0)))

(declare-fun e!1168637 () Int)

(assert (=> d!559119 (= lt!710065 e!1168637)))

(declare-fun c!298167 () Bool)

(assert (=> d!559119 (= c!298167 ((_ is Nil!20091) lt!710049))))

(assert (=> d!559119 (= (size!15932 lt!710049) lt!710065)))

(declare-fun b!1828309 () Bool)

(assert (=> b!1828309 (= e!1168637 0)))

(declare-fun b!1828310 () Bool)

(assert (=> b!1828310 (= e!1168637 (+ 1 (size!15932 (t!170392 lt!710049))))))

(assert (= (and d!559119 c!298167) b!1828309))

(assert (= (and d!559119 (not c!298167)) b!1828310))

(declare-fun m!2256211 () Bool)

(assert (=> b!1828310 m!2256211))

(assert (=> b!1828190 d!559119))

(assert (=> b!1828190 d!559045))

(declare-fun d!559121 () Bool)

(declare-fun lt!710066 () Int)

(assert (=> d!559121 (>= lt!710066 0)))

(declare-fun e!1168638 () Int)

(assert (=> d!559121 (= lt!710066 e!1168638)))

(declare-fun c!298168 () Bool)

(assert (=> d!559121 (= c!298168 ((_ is Nil!20091) suffix!1667))))

(assert (=> d!559121 (= (size!15932 suffix!1667) lt!710066)))

(declare-fun b!1828311 () Bool)

(assert (=> b!1828311 (= e!1168638 0)))

(declare-fun b!1828312 () Bool)

(assert (=> b!1828312 (= e!1168638 (+ 1 (size!15932 (t!170392 suffix!1667))))))

(assert (= (and d!559121 c!298168) b!1828311))

(assert (= (and d!559121 (not c!298168)) b!1828312))

(declare-fun m!2256213 () Bool)

(assert (=> b!1828312 m!2256213))

(assert (=> b!1828190 d!559121))

(declare-fun d!559123 () Bool)

(assert (=> d!559123 true))

(declare-fun order!13019 () Int)

(declare-fun lambda!71752 () Int)

(declare-fun dynLambda!9989 (Int Int) Int)

(assert (=> d!559123 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (dynLambda!9989 order!13019 lambda!71752))))

(declare-fun Forall2!571 (Int) Bool)

(assert (=> d!559123 (= (equivClasses!1397 (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (Forall2!571 lambda!71752))))

(declare-fun bs!407665 () Bool)

(assert (= bs!407665 d!559123))

(declare-fun m!2256221 () Bool)

(assert (=> bs!407665 m!2256221))

(assert (=> b!1828207 d!559123))

(declare-fun d!559127 () Bool)

(declare-fun lt!710067 () Bool)

(assert (=> d!559127 (= lt!710067 (select (content!2970 rules!4538) (rule!5789 (_1!11185 (get!6207 lt!710006)))))))

(declare-fun e!1168649 () Bool)

(assert (=> d!559127 (= lt!710067 e!1168649)))

(declare-fun res!822274 () Bool)

(assert (=> d!559127 (=> (not res!822274) (not e!1168649))))

(assert (=> d!559127 (= res!822274 ((_ is Cons!20092) rules!4538))))

(assert (=> d!559127 (= (contains!3695 rules!4538 (rule!5789 (_1!11185 (get!6207 lt!710006)))) lt!710067)))

(declare-fun b!1828326 () Bool)

(declare-fun e!1168648 () Bool)

(assert (=> b!1828326 (= e!1168649 e!1168648)))

(declare-fun res!822275 () Bool)

(assert (=> b!1828326 (=> res!822275 e!1168648)))

(assert (=> b!1828326 (= res!822275 (= (h!25493 rules!4538) (rule!5789 (_1!11185 (get!6207 lt!710006)))))))

(declare-fun b!1828327 () Bool)

(assert (=> b!1828327 (= e!1168648 (contains!3695 (t!170393 rules!4538) (rule!5789 (_1!11185 (get!6207 lt!710006)))))))

(assert (= (and d!559127 res!822274) b!1828326))

(assert (= (and b!1828326 (not res!822275)) b!1828327))

(assert (=> d!559127 m!2256067))

(declare-fun m!2256223 () Bool)

(assert (=> d!559127 m!2256223))

(declare-fun m!2256225 () Bool)

(assert (=> b!1828327 m!2256225))

(assert (=> b!1827977 d!559127))

(declare-fun d!559129 () Bool)

(assert (=> d!559129 (= (get!6207 lt!710006) (v!25773 lt!710006))))

(assert (=> b!1827977 d!559129))

(declare-fun d!559131 () Bool)

(declare-fun c!298173 () Bool)

(assert (=> d!559131 (= c!298173 ((_ is Nil!20092) rules!4538))))

(declare-fun e!1168652 () (InoxSet Rule!7058))

(assert (=> d!559131 (= (content!2970 rules!4538) e!1168652)))

(declare-fun b!1828332 () Bool)

(assert (=> b!1828332 (= e!1168652 ((as const (Array Rule!7058 Bool)) false))))

(declare-fun b!1828333 () Bool)

(assert (=> b!1828333 (= e!1168652 ((_ map or) (store ((as const (Array Rule!7058 Bool)) false) (h!25493 rules!4538) true) (content!2970 (t!170393 rules!4538))))))

(assert (= (and d!559131 c!298173) b!1828332))

(assert (= (and d!559131 (not c!298173)) b!1828333))

(declare-fun m!2256229 () Bool)

(assert (=> b!1828333 m!2256229))

(declare-fun m!2256231 () Bool)

(assert (=> b!1828333 m!2256231))

(assert (=> d!559041 d!559131))

(declare-fun d!559135 () Bool)

(declare-fun isBalanced!2065 (Conc!6661) Bool)

(assert (=> d!559135 (= (inv!26148 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))) (isBalanced!2065 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))))

(declare-fun bs!407669 () Bool)

(assert (= bs!407669 d!559135))

(declare-fun m!2256235 () Bool)

(assert (=> bs!407669 m!2256235))

(assert (=> tb!111657 d!559135))

(declare-fun d!559139 () Bool)

(assert (=> d!559139 (= (isEmpty!12686 (originalCharacters!4437 token!556)) ((_ is Nil!20091) (originalCharacters!4437 token!556)))))

(assert (=> d!559019 d!559139))

(declare-fun d!559141 () Bool)

(declare-fun e!1168659 () Bool)

(assert (=> d!559141 e!1168659))

(declare-fun c!298176 () Bool)

(assert (=> d!559141 (= c!298176 ((_ is EmptyExpr!4957) (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun lt!710068 () Bool)

(declare-fun e!1168654 () Bool)

(assert (=> d!559141 (= lt!710068 e!1168654)))

(declare-fun c!298175 () Bool)

(assert (=> d!559141 (= c!298175 (isEmpty!12686 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))

(assert (=> d!559141 (validRegex!2019 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))))

(assert (=> d!559141 (= (matchR!2420 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))) (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) lt!710068)))

(declare-fun b!1828334 () Bool)

(declare-fun e!1168657 () Bool)

(declare-fun e!1168653 () Bool)

(assert (=> b!1828334 (= e!1168657 e!1168653)))

(declare-fun res!822276 () Bool)

(assert (=> b!1828334 (=> res!822276 e!1168653)))

(declare-fun call!114584 () Bool)

(assert (=> b!1828334 (= res!822276 call!114584)))

(declare-fun b!1828335 () Bool)

(assert (=> b!1828335 (= e!1168659 (= lt!710068 call!114584))))

(declare-fun b!1828336 () Bool)

(declare-fun res!822279 () Bool)

(declare-fun e!1168655 () Bool)

(assert (=> b!1828336 (=> (not res!822279) (not e!1168655))))

(assert (=> b!1828336 (= res!822279 (isEmpty!12686 (tail!2727 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun b!1828337 () Bool)

(declare-fun e!1168656 () Bool)

(assert (=> b!1828337 (= e!1168659 e!1168656)))

(declare-fun c!298174 () Bool)

(assert (=> b!1828337 (= c!298174 ((_ is EmptyLang!4957) (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun b!1828338 () Bool)

(assert (=> b!1828338 (= e!1168654 (matchR!2420 (derivativeStep!1303 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))) (head!4268 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))))) (tail!2727 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun b!1828339 () Bool)

(assert (=> b!1828339 (= e!1168654 (nullable!1539 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun b!1828340 () Bool)

(assert (=> b!1828340 (= e!1168655 (= (head!4268 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (c!298107 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun b!1828341 () Bool)

(declare-fun res!822283 () Bool)

(declare-fun e!1168658 () Bool)

(assert (=> b!1828341 (=> res!822283 e!1168658)))

(assert (=> b!1828341 (= res!822283 e!1168655)))

(declare-fun res!822277 () Bool)

(assert (=> b!1828341 (=> (not res!822277) (not e!1168655))))

(assert (=> b!1828341 (= res!822277 lt!710068)))

(declare-fun b!1828342 () Bool)

(declare-fun res!822281 () Bool)

(assert (=> b!1828342 (=> res!822281 e!1168658)))

(assert (=> b!1828342 (= res!822281 (not ((_ is ElementMatch!4957) (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))))))

(assert (=> b!1828342 (= e!1168656 e!1168658)))

(declare-fun bm!114579 () Bool)

(assert (=> bm!114579 (= call!114584 (isEmpty!12686 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun b!1828343 () Bool)

(declare-fun res!822280 () Bool)

(assert (=> b!1828343 (=> res!822280 e!1168653)))

(assert (=> b!1828343 (= res!822280 (not (isEmpty!12686 (tail!2727 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))))

(declare-fun b!1828344 () Bool)

(assert (=> b!1828344 (= e!1168656 (not lt!710068))))

(declare-fun b!1828345 () Bool)

(assert (=> b!1828345 (= e!1168658 e!1168657)))

(declare-fun res!822282 () Bool)

(assert (=> b!1828345 (=> (not res!822282) (not e!1168657))))

(assert (=> b!1828345 (= res!822282 (not lt!710068))))

(declare-fun b!1828346 () Bool)

(assert (=> b!1828346 (= e!1168653 (not (= (head!4268 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (c!298107 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))))))))

(declare-fun b!1828347 () Bool)

(declare-fun res!822278 () Bool)

(assert (=> b!1828347 (=> (not res!822278) (not e!1168655))))

(assert (=> b!1828347 (= res!822278 (not call!114584))))

(assert (= (and d!559141 c!298175) b!1828339))

(assert (= (and d!559141 (not c!298175)) b!1828338))

(assert (= (and d!559141 c!298176) b!1828335))

(assert (= (and d!559141 (not c!298176)) b!1828337))

(assert (= (and b!1828337 c!298174) b!1828344))

(assert (= (and b!1828337 (not c!298174)) b!1828342))

(assert (= (and b!1828342 (not res!822281)) b!1828341))

(assert (= (and b!1828341 res!822277) b!1828347))

(assert (= (and b!1828347 res!822278) b!1828336))

(assert (= (and b!1828336 res!822279) b!1828340))

(assert (= (and b!1828341 (not res!822283)) b!1828345))

(assert (= (and b!1828345 res!822282) b!1828334))

(assert (= (and b!1828334 (not res!822276)) b!1828343))

(assert (= (and b!1828343 (not res!822280)) b!1828346))

(assert (= (or b!1828335 b!1828334 b!1828347) bm!114579))

(assert (=> b!1828346 m!2255959))

(declare-fun m!2256237 () Bool)

(assert (=> b!1828346 m!2256237))

(assert (=> d!559141 m!2255959))

(declare-fun m!2256239 () Bool)

(assert (=> d!559141 m!2256239))

(declare-fun m!2256241 () Bool)

(assert (=> d!559141 m!2256241))

(assert (=> b!1828336 m!2255959))

(declare-fun m!2256243 () Bool)

(assert (=> b!1828336 m!2256243))

(assert (=> b!1828336 m!2256243))

(declare-fun m!2256245 () Bool)

(assert (=> b!1828336 m!2256245))

(assert (=> b!1828343 m!2255959))

(assert (=> b!1828343 m!2256243))

(assert (=> b!1828343 m!2256243))

(assert (=> b!1828343 m!2256245))

(declare-fun m!2256247 () Bool)

(assert (=> b!1828339 m!2256247))

(assert (=> b!1828340 m!2255959))

(assert (=> b!1828340 m!2256237))

(assert (=> bm!114579 m!2255959))

(assert (=> bm!114579 m!2256239))

(assert (=> b!1828338 m!2255959))

(assert (=> b!1828338 m!2256237))

(assert (=> b!1828338 m!2256237))

(declare-fun m!2256249 () Bool)

(assert (=> b!1828338 m!2256249))

(assert (=> b!1828338 m!2255959))

(assert (=> b!1828338 m!2256243))

(assert (=> b!1828338 m!2256249))

(assert (=> b!1828338 m!2256243))

(declare-fun m!2256251 () Bool)

(assert (=> b!1828338 m!2256251))

(assert (=> b!1827979 d!559141))

(assert (=> b!1827979 d!559129))

(declare-fun d!559143 () Bool)

(assert (=> d!559143 (= (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))) (list!8165 (c!298106 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun bs!407670 () Bool)

(assert (= bs!407670 d!559143))

(declare-fun m!2256253 () Bool)

(assert (=> bs!407670 m!2256253))

(assert (=> b!1827979 d!559143))

(declare-fun d!559145 () Bool)

(declare-fun lt!710069 () BalanceConc!13266)

(assert (=> d!559145 (= (list!8163 lt!710069) (originalCharacters!4437 (_1!11185 (get!6207 lt!710006))))))

(assert (=> d!559145 (= lt!710069 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))) (value!113093 (_1!11185 (get!6207 lt!710006)))))))

(assert (=> d!559145 (= (charsOf!2272 (_1!11185 (get!6207 lt!710006))) lt!710069)))

(declare-fun b_lambda!60425 () Bool)

(assert (=> (not b_lambda!60425) (not d!559145)))

(declare-fun t!170445 () Bool)

(declare-fun tb!111669 () Bool)

(assert (=> (and b!1827883 (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170445) tb!111669))

(declare-fun b!1828348 () Bool)

(declare-fun e!1168660 () Bool)

(declare-fun tp!517147 () Bool)

(assert (=> b!1828348 (= e!1168660 (and (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))) (value!113093 (_1!11185 (get!6207 lt!710006)))))) tp!517147))))

(declare-fun result!134300 () Bool)

(assert (=> tb!111669 (= result!134300 (and (inv!26148 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))) (value!113093 (_1!11185 (get!6207 lt!710006))))) e!1168660))))

(assert (= tb!111669 b!1828348))

(declare-fun m!2256255 () Bool)

(assert (=> b!1828348 m!2256255))

(declare-fun m!2256257 () Bool)

(assert (=> tb!111669 m!2256257))

(assert (=> d!559145 t!170445))

(declare-fun b_and!142157 () Bool)

(assert (= b_and!142147 (and (=> t!170445 result!134300) b_and!142157)))

(declare-fun t!170447 () Bool)

(declare-fun tb!111671 () Bool)

(assert (=> (and b!1827881 (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170447) tb!111671))

(declare-fun result!134302 () Bool)

(assert (= result!134302 result!134300))

(assert (=> d!559145 t!170447))

(declare-fun b_and!142159 () Bool)

(assert (= b_and!142149 (and (=> t!170447 result!134302) b_and!142159)))

(declare-fun t!170449 () Bool)

(declare-fun tb!111673 () Bool)

(assert (=> (and b!1827884 (= (toChars!5027 (transformation!3629 rule!559)) (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170449) tb!111673))

(declare-fun result!134304 () Bool)

(assert (= result!134304 result!134300))

(assert (=> d!559145 t!170449))

(declare-fun b_and!142161 () Bool)

(assert (= b_and!142151 (and (=> t!170449 result!134304) b_and!142161)))

(declare-fun tb!111675 () Bool)

(declare-fun t!170451 () Bool)

(assert (=> (and b!1828224 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170451) tb!111675))

(declare-fun result!134306 () Bool)

(assert (= result!134306 result!134300))

(assert (=> d!559145 t!170451))

(declare-fun b_and!142163 () Bool)

(assert (= b_and!142155 (and (=> t!170451 result!134306) b_and!142163)))

(declare-fun m!2256259 () Bool)

(assert (=> d!559145 m!2256259))

(declare-fun m!2256261 () Bool)

(assert (=> d!559145 m!2256261))

(assert (=> b!1827979 d!559145))

(declare-fun d!559147 () Bool)

(declare-fun res!822288 () Bool)

(declare-fun e!1168665 () Bool)

(assert (=> d!559147 (=> res!822288 e!1168665)))

(assert (=> d!559147 (= res!822288 ((_ is Nil!20092) rules!4538))))

(assert (=> d!559147 (= (noDuplicateTag!1380 thiss!28068 rules!4538 Nil!20094) e!1168665)))

(declare-fun b!1828357 () Bool)

(declare-fun e!1168666 () Bool)

(assert (=> b!1828357 (= e!1168665 e!1168666)))

(declare-fun res!822289 () Bool)

(assert (=> b!1828357 (=> (not res!822289) (not e!1168666))))

(declare-fun contains!3697 (List!20164 String!22927) Bool)

(assert (=> b!1828357 (= res!822289 (not (contains!3697 Nil!20094 (tag!4043 (h!25493 rules!4538)))))))

(declare-fun b!1828358 () Bool)

(assert (=> b!1828358 (= e!1168666 (noDuplicateTag!1380 thiss!28068 (t!170393 rules!4538) (Cons!20094 (tag!4043 (h!25493 rules!4538)) Nil!20094)))))

(assert (= (and d!559147 (not res!822288)) b!1828357))

(assert (= (and b!1828357 res!822289) b!1828358))

(declare-fun m!2256265 () Bool)

(assert (=> b!1828357 m!2256265))

(declare-fun m!2256267 () Bool)

(assert (=> b!1828358 m!2256267))

(assert (=> b!1828029 d!559147))

(declare-fun d!559153 () Bool)

(declare-fun lt!710070 () Bool)

(assert (=> d!559153 (= lt!710070 (select (content!2970 (t!170393 rules!4538)) rule!559))))

(declare-fun e!1168668 () Bool)

(assert (=> d!559153 (= lt!710070 e!1168668)))

(declare-fun res!822290 () Bool)

(assert (=> d!559153 (=> (not res!822290) (not e!1168668))))

(assert (=> d!559153 (= res!822290 ((_ is Cons!20092) (t!170393 rules!4538)))))

(assert (=> d!559153 (= (contains!3695 (t!170393 rules!4538) rule!559) lt!710070)))

(declare-fun b!1828359 () Bool)

(declare-fun e!1168667 () Bool)

(assert (=> b!1828359 (= e!1168668 e!1168667)))

(declare-fun res!822291 () Bool)

(assert (=> b!1828359 (=> res!822291 e!1168667)))

(assert (=> b!1828359 (= res!822291 (= (h!25493 (t!170393 rules!4538)) rule!559))))

(declare-fun b!1828360 () Bool)

(assert (=> b!1828360 (= e!1168667 (contains!3695 (t!170393 (t!170393 rules!4538)) rule!559))))

(assert (= (and d!559153 res!822290) b!1828359))

(assert (= (and b!1828359 (not res!822291)) b!1828360))

(assert (=> d!559153 m!2256231))

(declare-fun m!2256269 () Bool)

(assert (=> d!559153 m!2256269))

(declare-fun m!2256271 () Bool)

(assert (=> b!1828360 m!2256271))

(assert (=> b!1828093 d!559153))

(declare-fun bs!407673 () Bool)

(declare-fun d!559155 () Bool)

(assert (= bs!407673 (and d!559155 d!559115)))

(declare-fun lambda!71759 () Int)

(assert (=> bs!407673 (= lambda!71759 lambda!71749)))

(assert (=> d!559155 true))

(declare-fun lt!710073 () Bool)

(assert (=> d!559155 (= lt!710073 (rulesValidInductive!1250 thiss!28068 rules!4538))))

(assert (=> d!559155 (= lt!710073 (forall!4324 rules!4538 lambda!71759))))

(assert (=> d!559155 (= (rulesValid!1382 thiss!28068 rules!4538) lt!710073)))

(declare-fun bs!407674 () Bool)

(assert (= bs!407674 d!559155))

(assert (=> bs!407674 m!2255975))

(declare-fun m!2256273 () Bool)

(assert (=> bs!407674 m!2256273))

(assert (=> d!559021 d!559155))

(declare-fun d!559157 () Bool)

(declare-fun lt!710074 () Int)

(assert (=> d!559157 (>= lt!710074 0)))

(declare-fun e!1168673 () Int)

(assert (=> d!559157 (= lt!710074 e!1168673)))

(declare-fun c!298181 () Bool)

(assert (=> d!559157 (= c!298181 ((_ is Nil!20091) (_2!11185 (get!6207 lt!710006))))))

(assert (=> d!559157 (= (size!15932 (_2!11185 (get!6207 lt!710006))) lt!710074)))

(declare-fun b!1828369 () Bool)

(assert (=> b!1828369 (= e!1168673 0)))

(declare-fun b!1828370 () Bool)

(assert (=> b!1828370 (= e!1168673 (+ 1 (size!15932 (t!170392 (_2!11185 (get!6207 lt!710006))))))))

(assert (= (and d!559157 c!298181) b!1828369))

(assert (= (and d!559157 (not c!298181)) b!1828370))

(declare-fun m!2256275 () Bool)

(assert (=> b!1828370 m!2256275))

(assert (=> b!1827982 d!559157))

(assert (=> b!1827982 d!559129))

(declare-fun d!559159 () Bool)

(declare-fun lt!710075 () Int)

(assert (=> d!559159 (>= lt!710075 0)))

(declare-fun e!1168674 () Int)

(assert (=> d!559159 (= lt!710075 e!1168674)))

(declare-fun c!298182 () Bool)

(assert (=> d!559159 (= c!298182 ((_ is Nil!20091) input!3612))))

(assert (=> d!559159 (= (size!15932 input!3612) lt!710075)))

(declare-fun b!1828371 () Bool)

(assert (=> b!1828371 (= e!1168674 0)))

(declare-fun b!1828372 () Bool)

(assert (=> b!1828372 (= e!1168674 (+ 1 (size!15932 (t!170392 input!3612))))))

(assert (= (and d!559159 c!298182) b!1828371))

(assert (= (and d!559159 (not c!298182)) b!1828372))

(declare-fun m!2256277 () Bool)

(assert (=> b!1828372 m!2256277))

(assert (=> b!1827982 d!559159))

(declare-fun d!559161 () Bool)

(declare-fun charsToBigInt!1 (List!20160) Int)

(assert (=> d!559161 (= (inv!17 (value!113093 token!556)) (= (charsToBigInt!1 (text!26481 (value!113093 token!556))) (value!113085 (value!113093 token!556))))))

(declare-fun bs!407675 () Bool)

(assert (= bs!407675 d!559161))

(declare-fun m!2256279 () Bool)

(assert (=> bs!407675 m!2256279))

(assert (=> b!1828205 d!559161))

(declare-fun d!559163 () Bool)

(declare-fun nullableFct!341 (Regex!4957) Bool)

(assert (=> d!559163 (= (nullable!1539 (regex!3629 rule!559)) (nullableFct!341 (regex!3629 rule!559)))))

(declare-fun bs!407676 () Bool)

(assert (= bs!407676 d!559163))

(declare-fun m!2256289 () Bool)

(assert (=> bs!407676 m!2256289))

(assert (=> b!1828073 d!559163))

(assert (=> b!1827980 d!559143))

(assert (=> b!1827980 d!559145))

(assert (=> b!1827980 d!559129))

(declare-fun d!559167 () Bool)

(declare-fun charsToInt!0 (List!20160) (_ BitVec 32))

(assert (=> d!559167 (= (inv!16 (value!113093 token!556)) (= (charsToInt!0 (text!26480 (value!113093 token!556))) (value!113084 (value!113093 token!556))))))

(declare-fun bs!407677 () Bool)

(assert (= bs!407677 d!559167))

(declare-fun m!2256291 () Bool)

(assert (=> bs!407677 m!2256291))

(assert (=> b!1828203 d!559167))

(assert (=> bm!114569 d!559069))

(declare-fun d!559169 () Bool)

(declare-fun lt!710076 () Int)

(assert (=> d!559169 (>= lt!710076 0)))

(declare-fun e!1168677 () Int)

(assert (=> d!559169 (= lt!710076 e!1168677)))

(declare-fun c!298185 () Bool)

(assert (=> d!559169 (= c!298185 ((_ is Nil!20091) (t!170392 lt!709978)))))

(assert (=> d!559169 (= (size!15932 (t!170392 lt!709978)) lt!710076)))

(declare-fun b!1828377 () Bool)

(assert (=> b!1828377 (= e!1168677 0)))

(declare-fun b!1828378 () Bool)

(assert (=> b!1828378 (= e!1168677 (+ 1 (size!15932 (t!170392 (t!170392 lt!709978)))))))

(assert (= (and d!559169 c!298185) b!1828377))

(assert (= (and d!559169 (not c!298185)) b!1828378))

(declare-fun m!2256293 () Bool)

(assert (=> b!1828378 m!2256293))

(assert (=> b!1828101 d!559169))

(declare-fun bs!407678 () Bool)

(declare-fun d!559171 () Bool)

(assert (= bs!407678 (and d!559171 d!559047)))

(declare-fun lambda!71762 () Int)

(assert (=> bs!407678 (= lambda!71762 lambda!71740)))

(assert (=> d!559171 true))

(assert (=> d!559171 (< (dynLambda!9987 order!13015 (toChars!5027 (transformation!3629 rule!559))) (dynLambda!9986 order!13013 lambda!71762))))

(assert (=> d!559171 true))

(assert (=> d!559171 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 rule!559))) (dynLambda!9986 order!13013 lambda!71762))))

(declare-fun Forall!932 (Int) Bool)

(assert (=> d!559171 (= (semiInverseModEq!1456 (toChars!5027 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 rule!559))) (Forall!932 lambda!71762))))

(declare-fun bs!407679 () Bool)

(assert (= bs!407679 d!559171))

(declare-fun m!2256295 () Bool)

(assert (=> bs!407679 m!2256295))

(assert (=> d!559087 d!559171))

(declare-fun d!559173 () Bool)

(assert (=> d!559173 (= (isDefined!3518 lt!710006) (not (isEmpty!12689 lt!710006)))))

(declare-fun bs!407680 () Bool)

(assert (= bs!407680 d!559173))

(assert (=> bs!407680 m!2255969))

(assert (=> b!1827984 d!559173))

(declare-fun bs!407681 () Bool)

(declare-fun d!559175 () Bool)

(assert (= bs!407681 (and d!559175 d!559123)))

(declare-fun lambda!71763 () Int)

(assert (=> bs!407681 (= (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (= lambda!71763 lambda!71752))))

(assert (=> d!559175 true))

(assert (=> d!559175 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 (rule!5789 token!556)))) (dynLambda!9989 order!13019 lambda!71763))))

(assert (=> d!559175 (= (equivClasses!1397 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (rule!5789 token!556)))) (Forall2!571 lambda!71763))))

(declare-fun bs!407682 () Bool)

(assert (= bs!407682 d!559175))

(declare-fun m!2256297 () Bool)

(assert (=> bs!407682 m!2256297))

(assert (=> b!1828179 d!559175))

(declare-fun c!298192 () Bool)

(declare-fun bm!114586 () Bool)

(declare-fun call!114592 () Bool)

(declare-fun c!298191 () Bool)

(assert (=> bm!114586 (= call!114592 (validRegex!2019 (ite c!298191 (reg!5286 (regex!3629 rule!559)) (ite c!298192 (regTwo!10427 (regex!3629 rule!559)) (regTwo!10426 (regex!3629 rule!559))))))))

(declare-fun b!1828404 () Bool)

(declare-fun e!1168699 () Bool)

(declare-fun e!1168696 () Bool)

(assert (=> b!1828404 (= e!1168699 e!1168696)))

(assert (=> b!1828404 (= c!298192 ((_ is Union!4957) (regex!3629 rule!559)))))

(declare-fun b!1828405 () Bool)

(declare-fun e!1168701 () Bool)

(declare-fun call!114591 () Bool)

(assert (=> b!1828405 (= e!1168701 call!114591)))

(declare-fun b!1828406 () Bool)

(declare-fun e!1168700 () Bool)

(assert (=> b!1828406 (= e!1168700 call!114592)))

(declare-fun b!1828407 () Bool)

(declare-fun res!822308 () Bool)

(declare-fun e!1168697 () Bool)

(assert (=> b!1828407 (=> (not res!822308) (not e!1168697))))

(declare-fun call!114593 () Bool)

(assert (=> b!1828407 (= res!822308 call!114593)))

(assert (=> b!1828407 (= e!1168696 e!1168697)))

(declare-fun bm!114587 () Bool)

(assert (=> bm!114587 (= call!114593 (validRegex!2019 (ite c!298192 (regOne!10427 (regex!3629 rule!559)) (regOne!10426 (regex!3629 rule!559)))))))

(declare-fun b!1828408 () Bool)

(assert (=> b!1828408 (= e!1168697 call!114591)))

(declare-fun d!559177 () Bool)

(declare-fun res!822306 () Bool)

(declare-fun e!1168698 () Bool)

(assert (=> d!559177 (=> res!822306 e!1168698)))

(assert (=> d!559177 (= res!822306 ((_ is ElementMatch!4957) (regex!3629 rule!559)))))

(assert (=> d!559177 (= (validRegex!2019 (regex!3629 rule!559)) e!1168698)))

(declare-fun b!1828409 () Bool)

(declare-fun res!822307 () Bool)

(declare-fun e!1168695 () Bool)

(assert (=> b!1828409 (=> res!822307 e!1168695)))

(assert (=> b!1828409 (= res!822307 (not ((_ is Concat!8677) (regex!3629 rule!559))))))

(assert (=> b!1828409 (= e!1168696 e!1168695)))

(declare-fun b!1828410 () Bool)

(assert (=> b!1828410 (= e!1168698 e!1168699)))

(assert (=> b!1828410 (= c!298191 ((_ is Star!4957) (regex!3629 rule!559)))))

(declare-fun b!1828411 () Bool)

(assert (=> b!1828411 (= e!1168699 e!1168700)))

(declare-fun res!822309 () Bool)

(assert (=> b!1828411 (= res!822309 (not (nullable!1539 (reg!5286 (regex!3629 rule!559)))))))

(assert (=> b!1828411 (=> (not res!822309) (not e!1168700))))

(declare-fun bm!114588 () Bool)

(assert (=> bm!114588 (= call!114591 call!114592)))

(declare-fun b!1828412 () Bool)

(assert (=> b!1828412 (= e!1168695 e!1168701)))

(declare-fun res!822305 () Bool)

(assert (=> b!1828412 (=> (not res!822305) (not e!1168701))))

(assert (=> b!1828412 (= res!822305 call!114593)))

(assert (= (and d!559177 (not res!822306)) b!1828410))

(assert (= (and b!1828410 c!298191) b!1828411))

(assert (= (and b!1828410 (not c!298191)) b!1828404))

(assert (= (and b!1828411 res!822309) b!1828406))

(assert (= (and b!1828404 c!298192) b!1828407))

(assert (= (and b!1828404 (not c!298192)) b!1828409))

(assert (= (and b!1828407 res!822308) b!1828408))

(assert (= (and b!1828409 (not res!822307)) b!1828412))

(assert (= (and b!1828412 res!822305) b!1828405))

(assert (= (or b!1828408 b!1828405) bm!114588))

(assert (= (or b!1828407 b!1828412) bm!114587))

(assert (= (or b!1828406 bm!114588) bm!114586))

(declare-fun m!2256307 () Bool)

(assert (=> bm!114586 m!2256307))

(declare-fun m!2256309 () Bool)

(assert (=> bm!114587 m!2256309))

(declare-fun m!2256311 () Bool)

(assert (=> b!1828411 m!2256311))

(assert (=> d!559037 d!559177))

(assert (=> d!559039 d!559037))

(declare-fun d!559185 () Bool)

(assert (=> d!559185 (ruleValid!1119 thiss!28068 rule!559)))

(assert (=> d!559185 true))

(declare-fun _$65!980 () Unit!34761)

(assert (=> d!559185 (= (choose!11516 thiss!28068 rule!559 rules!4538) _$65!980)))

(declare-fun bs!407684 () Bool)

(assert (= bs!407684 d!559185))

(assert (=> bs!407684 m!2255879))

(assert (=> d!559039 d!559185))

(assert (=> d!559039 d!559041))

(declare-fun d!559187 () Bool)

(declare-fun c!298195 () Bool)

(assert (=> d!559187 (= c!298195 ((_ is Node!6661) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(declare-fun e!1168715 () Bool)

(assert (=> d!559187 (= (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))) e!1168715)))

(declare-fun b!1828431 () Bool)

(declare-fun inv!26149 (Conc!6661) Bool)

(assert (=> b!1828431 (= e!1168715 (inv!26149 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(declare-fun b!1828432 () Bool)

(declare-fun e!1168716 () Bool)

(assert (=> b!1828432 (= e!1168715 e!1168716)))

(declare-fun res!822324 () Bool)

(assert (=> b!1828432 (= res!822324 (not ((_ is Leaf!9696) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))))))

(assert (=> b!1828432 (=> res!822324 e!1168716)))

(declare-fun b!1828433 () Bool)

(declare-fun inv!26150 (Conc!6661) Bool)

(assert (=> b!1828433 (= e!1168716 (inv!26150 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(assert (= (and d!559187 c!298195) b!1828431))

(assert (= (and d!559187 (not c!298195)) b!1828432))

(assert (= (and b!1828432 (not res!822324)) b!1828433))

(declare-fun m!2256321 () Bool)

(assert (=> b!1828431 m!2256321))

(declare-fun m!2256323 () Bool)

(assert (=> b!1828433 m!2256323))

(assert (=> b!1828013 d!559187))

(declare-fun d!559193 () Bool)

(assert (=> d!559193 (= (list!8163 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))) (list!8165 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))))

(declare-fun bs!407686 () Bool)

(assert (= bs!407686 d!559193))

(declare-fun m!2256325 () Bool)

(assert (=> bs!407686 m!2256325))

(assert (=> d!559047 d!559193))

(declare-fun d!559195 () Bool)

(assert (=> d!559195 (= (list!8163 lt!709979) (list!8165 (c!298106 lt!709979)))))

(declare-fun bs!407687 () Bool)

(assert (= bs!407687 d!559195))

(declare-fun m!2256327 () Bool)

(assert (=> bs!407687 m!2256327))

(assert (=> d!559047 d!559195))

(declare-fun d!559197 () Bool)

(declare-fun dynLambda!9990 (Int BalanceConc!13266) Bool)

(assert (=> d!559197 (dynLambda!9990 lambda!71740 lt!709979)))

(declare-fun lt!710090 () Unit!34761)

(declare-fun choose!11519 (Int BalanceConc!13266) Unit!34761)

(assert (=> d!559197 (= lt!710090 (choose!11519 lambda!71740 lt!709979))))

(assert (=> d!559197 (Forall!932 lambda!71740)))

(assert (=> d!559197 (= (ForallOf!363 lambda!71740 lt!709979) lt!710090)))

(declare-fun b_lambda!60427 () Bool)

(assert (=> (not b_lambda!60427) (not d!559197)))

(declare-fun bs!407688 () Bool)

(assert (= bs!407688 d!559197))

(declare-fun m!2256329 () Bool)

(assert (=> bs!407688 m!2256329))

(declare-fun m!2256331 () Bool)

(assert (=> bs!407688 m!2256331))

(declare-fun m!2256333 () Bool)

(assert (=> bs!407688 m!2256333))

(assert (=> d!559047 d!559197))

(declare-fun bs!407690 () Bool)

(declare-fun d!559199 () Bool)

(assert (= bs!407690 (and d!559199 d!559047)))

(declare-fun lambda!71767 () Int)

(assert (=> bs!407690 (= (and (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 rule!559))) (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 rule!559)))) (= lambda!71767 lambda!71740))))

(declare-fun bs!407691 () Bool)

(assert (= bs!407691 (and d!559199 d!559171)))

(assert (=> bs!407691 (= (and (= (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toChars!5027 (transformation!3629 rule!559))) (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 rule!559)))) (= lambda!71767 lambda!71762))))

(assert (=> d!559199 true))

(assert (=> d!559199 (< (dynLambda!9987 order!13015 (toChars!5027 (transformation!3629 (rule!5789 token!556)))) (dynLambda!9986 order!13013 lambda!71767))))

(assert (=> d!559199 true))

(assert (=> d!559199 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 (rule!5789 token!556)))) (dynLambda!9986 order!13013 lambda!71767))))

(assert (=> d!559199 (= (semiInverseModEq!1456 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (rule!5789 token!556)))) (Forall!932 lambda!71767))))

(declare-fun bs!407692 () Bool)

(assert (= bs!407692 d!559199))

(declare-fun m!2256341 () Bool)

(assert (=> bs!407692 m!2256341))

(assert (=> d!559067 d!559199))

(declare-fun bs!407693 () Bool)

(declare-fun d!559203 () Bool)

(assert (= bs!407693 (and d!559203 d!559047)))

(declare-fun lambda!71768 () Int)

(assert (=> bs!407693 (= (and (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 rule!559))) (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 rule!559)))) (= lambda!71768 lambda!71740))))

(declare-fun bs!407694 () Bool)

(assert (= bs!407694 (and d!559203 d!559171)))

(assert (=> bs!407694 (= (and (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 rule!559))) (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 rule!559)))) (= lambda!71768 lambda!71762))))

(declare-fun bs!407695 () Bool)

(assert (= bs!407695 (and d!559203 d!559199)))

(assert (=> bs!407695 (= (and (= (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (rule!5789 token!556))))) (= lambda!71768 lambda!71767))))

(assert (=> d!559203 true))

(assert (=> d!559203 (< (dynLambda!9987 order!13015 (toChars!5027 (transformation!3629 (h!25493 rules!4538)))) (dynLambda!9986 order!13013 lambda!71768))))

(assert (=> d!559203 true))

(assert (=> d!559203 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (dynLambda!9986 order!13013 lambda!71768))))

(assert (=> d!559203 (= (semiInverseModEq!1456 (toChars!5027 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (Forall!932 lambda!71768))))

(declare-fun bs!407696 () Bool)

(assert (= bs!407696 d!559203))

(declare-fun m!2256347 () Bool)

(assert (=> bs!407696 m!2256347))

(assert (=> d!559083 d!559203))

(declare-fun b!1828448 () Bool)

(declare-fun e!1168728 () List!20161)

(assert (=> b!1828448 (= e!1168728 suffix!1667)))

(declare-fun b!1828449 () Bool)

(assert (=> b!1828449 (= e!1168728 (Cons!20091 (h!25492 (t!170392 lt!709978)) (++!5453 (t!170392 (t!170392 lt!709978)) suffix!1667)))))

(declare-fun b!1828451 () Bool)

(declare-fun e!1168727 () Bool)

(declare-fun lt!710095 () List!20161)

(assert (=> b!1828451 (= e!1168727 (or (not (= suffix!1667 Nil!20091)) (= lt!710095 (t!170392 lt!709978))))))

(declare-fun b!1828450 () Bool)

(declare-fun res!822334 () Bool)

(assert (=> b!1828450 (=> (not res!822334) (not e!1168727))))

(assert (=> b!1828450 (= res!822334 (= (size!15932 lt!710095) (+ (size!15932 (t!170392 lt!709978)) (size!15932 suffix!1667))))))

(declare-fun d!559211 () Bool)

(assert (=> d!559211 e!1168727))

(declare-fun res!822333 () Bool)

(assert (=> d!559211 (=> (not res!822333) (not e!1168727))))

(assert (=> d!559211 (= res!822333 (= (content!2971 lt!710095) ((_ map or) (content!2971 (t!170392 lt!709978)) (content!2971 suffix!1667))))))

(assert (=> d!559211 (= lt!710095 e!1168728)))

(declare-fun c!298199 () Bool)

(assert (=> d!559211 (= c!298199 ((_ is Nil!20091) (t!170392 lt!709978)))))

(assert (=> d!559211 (= (++!5453 (t!170392 lt!709978) suffix!1667) lt!710095)))

(assert (= (and d!559211 c!298199) b!1828448))

(assert (= (and d!559211 (not c!298199)) b!1828449))

(assert (= (and d!559211 res!822333) b!1828450))

(assert (= (and b!1828450 res!822334) b!1828451))

(declare-fun m!2256349 () Bool)

(assert (=> b!1828449 m!2256349))

(declare-fun m!2256351 () Bool)

(assert (=> b!1828450 m!2256351))

(assert (=> b!1828450 m!2256077))

(assert (=> b!1828450 m!2256139))

(declare-fun m!2256355 () Bool)

(assert (=> d!559211 m!2256355))

(declare-fun m!2256359 () Bool)

(assert (=> d!559211 m!2256359))

(assert (=> d!559211 m!2256145))

(assert (=> b!1828189 d!559211))

(declare-fun d!559213 () Bool)

(declare-fun lt!710096 () Int)

(assert (=> d!559213 (>= lt!710096 0)))

(declare-fun e!1168729 () Int)

(assert (=> d!559213 (= lt!710096 e!1168729)))

(declare-fun c!298200 () Bool)

(assert (=> d!559213 (= c!298200 ((_ is Nil!20091) (originalCharacters!4437 token!556)))))

(assert (=> d!559213 (= (size!15932 (originalCharacters!4437 token!556)) lt!710096)))

(declare-fun b!1828452 () Bool)

(assert (=> b!1828452 (= e!1168729 0)))

(declare-fun b!1828453 () Bool)

(assert (=> b!1828453 (= e!1168729 (+ 1 (size!15932 (t!170392 (originalCharacters!4437 token!556)))))))

(assert (= (and d!559213 c!298200) b!1828452))

(assert (= (and d!559213 (not c!298200)) b!1828453))

(declare-fun m!2256369 () Bool)

(assert (=> b!1828453 m!2256369))

(assert (=> b!1828008 d!559213))

(declare-fun d!559217 () Bool)

(assert (=> d!559217 (= (head!4268 lt!709978) (h!25492 lt!709978))))

(assert (=> b!1828080 d!559217))

(declare-fun b!1828454 () Bool)

(declare-fun res!822340 () Bool)

(declare-fun e!1168730 () Bool)

(assert (=> b!1828454 (=> (not res!822340) (not e!1168730))))

(declare-fun lt!710101 () Option!4209)

(assert (=> b!1828454 (= res!822340 (= (value!113093 (_1!11185 (get!6207 lt!710101))) (apply!5417 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710101)))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710101)))))))))

(declare-fun b!1828455 () Bool)

(assert (=> b!1828455 (= e!1168730 (contains!3695 (t!170393 rules!4538) (rule!5789 (_1!11185 (get!6207 lt!710101)))))))

(declare-fun d!559221 () Bool)

(declare-fun e!1168732 () Bool)

(assert (=> d!559221 e!1168732))

(declare-fun res!822335 () Bool)

(assert (=> d!559221 (=> res!822335 e!1168732)))

(assert (=> d!559221 (= res!822335 (isEmpty!12689 lt!710101))))

(declare-fun e!1168731 () Option!4209)

(assert (=> d!559221 (= lt!710101 e!1168731)))

(declare-fun c!298201 () Bool)

(assert (=> d!559221 (= c!298201 (and ((_ is Cons!20092) (t!170393 rules!4538)) ((_ is Nil!20092) (t!170393 (t!170393 rules!4538)))))))

(declare-fun lt!710102 () Unit!34761)

(declare-fun lt!710098 () Unit!34761)

(assert (=> d!559221 (= lt!710102 lt!710098)))

(assert (=> d!559221 (isPrefix!1831 input!3612 input!3612)))

(assert (=> d!559221 (= lt!710098 (lemmaIsPrefixRefl!1208 input!3612 input!3612))))

(assert (=> d!559221 (rulesValidInductive!1250 thiss!28068 (t!170393 rules!4538))))

(assert (=> d!559221 (= (maxPrefix!1806 thiss!28068 (t!170393 rules!4538) input!3612) lt!710101)))

(declare-fun b!1828456 () Bool)

(declare-fun lt!710100 () Option!4209)

(declare-fun lt!710099 () Option!4209)

(assert (=> b!1828456 (= e!1168731 (ite (and ((_ is None!4208) lt!710100) ((_ is None!4208) lt!710099)) None!4208 (ite ((_ is None!4208) lt!710099) lt!710100 (ite ((_ is None!4208) lt!710100) lt!710099 (ite (>= (size!15931 (_1!11185 (v!25773 lt!710100))) (size!15931 (_1!11185 (v!25773 lt!710099)))) lt!710100 lt!710099)))))))

(declare-fun call!114594 () Option!4209)

(assert (=> b!1828456 (= lt!710100 call!114594)))

(assert (=> b!1828456 (= lt!710099 (maxPrefix!1806 thiss!28068 (t!170393 (t!170393 rules!4538)) input!3612))))

(declare-fun b!1828457 () Bool)

(declare-fun res!822338 () Bool)

(assert (=> b!1828457 (=> (not res!822338) (not e!1168730))))

(assert (=> b!1828457 (= res!822338 (matchR!2420 (regex!3629 (rule!5789 (_1!11185 (get!6207 lt!710101)))) (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710101))))))))

(declare-fun bm!114589 () Bool)

(assert (=> bm!114589 (= call!114594 (maxPrefixOneRule!1167 thiss!28068 (h!25493 (t!170393 rules!4538)) input!3612))))

(declare-fun b!1828458 () Bool)

(declare-fun res!822337 () Bool)

(assert (=> b!1828458 (=> (not res!822337) (not e!1168730))))

(assert (=> b!1828458 (= res!822337 (= (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710101)))) (originalCharacters!4437 (_1!11185 (get!6207 lt!710101)))))))

(declare-fun b!1828459 () Bool)

(declare-fun res!822336 () Bool)

(assert (=> b!1828459 (=> (not res!822336) (not e!1168730))))

(assert (=> b!1828459 (= res!822336 (= (++!5453 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710101)))) (_2!11185 (get!6207 lt!710101))) input!3612))))

(declare-fun b!1828460 () Bool)

(declare-fun res!822341 () Bool)

(assert (=> b!1828460 (=> (not res!822341) (not e!1168730))))

(assert (=> b!1828460 (= res!822341 (< (size!15932 (_2!11185 (get!6207 lt!710101))) (size!15932 input!3612)))))

(declare-fun b!1828461 () Bool)

(assert (=> b!1828461 (= e!1168731 call!114594)))

(declare-fun b!1828462 () Bool)

(assert (=> b!1828462 (= e!1168732 e!1168730)))

(declare-fun res!822339 () Bool)

(assert (=> b!1828462 (=> (not res!822339) (not e!1168730))))

(assert (=> b!1828462 (= res!822339 (isDefined!3518 lt!710101))))

(assert (= (and d!559221 c!298201) b!1828461))

(assert (= (and d!559221 (not c!298201)) b!1828456))

(assert (= (or b!1828461 b!1828456) bm!114589))

(assert (= (and d!559221 (not res!822335)) b!1828462))

(assert (= (and b!1828462 res!822339) b!1828458))

(assert (= (and b!1828458 res!822337) b!1828460))

(assert (= (and b!1828460 res!822341) b!1828459))

(assert (= (and b!1828459 res!822336) b!1828454))

(assert (= (and b!1828454 res!822340) b!1828457))

(assert (= (and b!1828457 res!822338) b!1828455))

(declare-fun m!2256387 () Bool)

(assert (=> b!1828458 m!2256387))

(declare-fun m!2256389 () Bool)

(assert (=> b!1828458 m!2256389))

(assert (=> b!1828458 m!2256389))

(declare-fun m!2256391 () Bool)

(assert (=> b!1828458 m!2256391))

(assert (=> b!1828460 m!2256387))

(declare-fun m!2256395 () Bool)

(assert (=> b!1828460 m!2256395))

(assert (=> b!1828460 m!2255963))

(assert (=> b!1828457 m!2256387))

(assert (=> b!1828457 m!2256389))

(assert (=> b!1828457 m!2256389))

(assert (=> b!1828457 m!2256391))

(assert (=> b!1828457 m!2256391))

(declare-fun m!2256397 () Bool)

(assert (=> b!1828457 m!2256397))

(declare-fun m!2256399 () Bool)

(assert (=> b!1828462 m!2256399))

(declare-fun m!2256401 () Bool)

(assert (=> d!559221 m!2256401))

(assert (=> d!559221 m!2255971))

(assert (=> d!559221 m!2255973))

(assert (=> d!559221 m!2256207))

(declare-fun m!2256403 () Bool)

(assert (=> bm!114589 m!2256403))

(assert (=> b!1828459 m!2256387))

(assert (=> b!1828459 m!2256389))

(assert (=> b!1828459 m!2256389))

(assert (=> b!1828459 m!2256391))

(assert (=> b!1828459 m!2256391))

(declare-fun m!2256405 () Bool)

(assert (=> b!1828459 m!2256405))

(assert (=> b!1828454 m!2256387))

(declare-fun m!2256407 () Bool)

(assert (=> b!1828454 m!2256407))

(assert (=> b!1828454 m!2256407))

(declare-fun m!2256409 () Bool)

(assert (=> b!1828454 m!2256409))

(assert (=> b!1828455 m!2256387))

(declare-fun m!2256411 () Bool)

(assert (=> b!1828455 m!2256411))

(declare-fun m!2256413 () Bool)

(assert (=> b!1828456 m!2256413))

(assert (=> b!1827978 d!559221))

(declare-fun b!1828479 () Bool)

(declare-fun res!822351 () Bool)

(declare-fun e!1168741 () Bool)

(assert (=> b!1828479 (=> res!822351 e!1168741)))

(assert (=> b!1828479 (= res!822351 (not ((_ is IntegerValue!11159) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))))

(declare-fun e!1168742 () Bool)

(assert (=> b!1828479 (= e!1168742 e!1168741)))

(declare-fun b!1828480 () Bool)

(declare-fun e!1168743 () Bool)

(assert (=> b!1828480 (= e!1168743 (inv!16 (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(declare-fun b!1828481 () Bool)

(assert (=> b!1828481 (= e!1168743 e!1168742)))

(declare-fun c!298205 () Bool)

(assert (=> b!1828481 (= c!298205 ((_ is IntegerValue!11158) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(declare-fun b!1828482 () Bool)

(assert (=> b!1828482 (= e!1168742 (inv!17 (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(declare-fun b!1828483 () Bool)

(assert (=> b!1828483 (= e!1168741 (inv!15 (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(declare-fun d!559233 () Bool)

(declare-fun c!298206 () Bool)

(assert (=> d!559233 (= c!298206 ((_ is IntegerValue!11157) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))

(assert (=> d!559233 (= (inv!21 (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)) e!1168743)))

(assert (= (and d!559233 c!298206) b!1828480))

(assert (= (and d!559233 (not c!298206)) b!1828481))

(assert (= (and b!1828481 c!298205) b!1828482))

(assert (= (and b!1828481 (not c!298205)) b!1828479))

(assert (= (and b!1828479 (not res!822351)) b!1828483))

(declare-fun m!2256415 () Bool)

(assert (=> b!1828480 m!2256415))

(declare-fun m!2256417 () Bool)

(assert (=> b!1828482 m!2256417))

(declare-fun m!2256419 () Bool)

(assert (=> b!1828483 m!2256419))

(assert (=> tb!111639 d!559233))

(assert (=> b!1827976 d!559129))

(declare-fun d!559235 () Bool)

(assert (=> d!559235 (= (apply!5417 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006))))) (dynLambda!9984 (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006))))))))

(declare-fun b_lambda!60431 () Bool)

(assert (=> (not b_lambda!60431) (not d!559235)))

(declare-fun tb!111685 () Bool)

(declare-fun t!170462 () Bool)

(assert (=> (and b!1827883 (= (toValue!5168 (transformation!3629 (h!25493 rules!4538))) (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170462) tb!111685))

(declare-fun result!134316 () Bool)

(assert (=> tb!111685 (= result!134316 (inv!21 (dynLambda!9984 (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006))))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun m!2256427 () Bool)

(assert (=> tb!111685 m!2256427))

(assert (=> d!559235 t!170462))

(declare-fun b_and!142173 () Bool)

(assert (= b_and!142141 (and (=> t!170462 result!134316) b_and!142173)))

(declare-fun t!170464 () Bool)

(declare-fun tb!111687 () Bool)

(assert (=> (and b!1827881 (= (toValue!5168 (transformation!3629 (rule!5789 token!556))) (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170464) tb!111687))

(declare-fun result!134318 () Bool)

(assert (= result!134318 result!134316))

(assert (=> d!559235 t!170464))

(declare-fun b_and!142175 () Bool)

(assert (= b_and!142143 (and (=> t!170464 result!134318) b_and!142175)))

(declare-fun tb!111689 () Bool)

(declare-fun t!170466 () Bool)

(assert (=> (and b!1827884 (= (toValue!5168 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170466) tb!111689))

(declare-fun result!134320 () Bool)

(assert (= result!134320 result!134316))

(assert (=> d!559235 t!170466))

(declare-fun b_and!142177 () Bool)

(assert (= b_and!142145 (and (=> t!170466 result!134320) b_and!142177)))

(declare-fun tb!111691 () Bool)

(declare-fun t!170468 () Bool)

(assert (=> (and b!1828224 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170468) tb!111691))

(declare-fun result!134322 () Bool)

(assert (= result!134322 result!134316))

(assert (=> d!559235 t!170468))

(declare-fun b_and!142179 () Bool)

(assert (= b_and!142153 (and (=> t!170468 result!134322) b_and!142179)))

(assert (=> d!559235 m!2255981))

(declare-fun m!2256445 () Bool)

(assert (=> d!559235 m!2256445))

(assert (=> b!1827976 d!559235))

(declare-fun d!559237 () Bool)

(assert (=> d!559237 (= (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006)))) (fromListB!1182 (originalCharacters!4437 (_1!11185 (get!6207 lt!710006)))))))

(declare-fun bs!407698 () Bool)

(assert (= bs!407698 d!559237))

(declare-fun m!2256449 () Bool)

(assert (=> bs!407698 m!2256449))

(assert (=> b!1827976 d!559237))

(declare-fun d!559239 () Bool)

(assert (=> d!559239 (= (inv!26148 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))) (isBalanced!2065 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))))))

(declare-fun bs!407699 () Bool)

(assert (= bs!407699 d!559239))

(declare-fun m!2256453 () Bool)

(assert (=> bs!407699 m!2256453))

(assert (=> tb!111627 d!559239))

(declare-fun d!559241 () Bool)

(declare-fun e!1168755 () Bool)

(assert (=> d!559241 e!1168755))

(declare-fun c!298210 () Bool)

(assert (=> d!559241 (= c!298210 ((_ is EmptyExpr!4957) (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978))))))

(declare-fun lt!710111 () Bool)

(declare-fun e!1168746 () Bool)

(assert (=> d!559241 (= lt!710111 e!1168746)))

(declare-fun c!298208 () Bool)

(assert (=> d!559241 (= c!298208 (isEmpty!12686 (tail!2727 lt!709978)))))

(assert (=> d!559241 (validRegex!2019 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)))))

(assert (=> d!559241 (= (matchR!2420 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)) (tail!2727 lt!709978)) lt!710111)))

(declare-fun b!1828484 () Bool)

(declare-fun e!1168751 () Bool)

(declare-fun e!1168745 () Bool)

(assert (=> b!1828484 (= e!1168751 e!1168745)))

(declare-fun res!822352 () Bool)

(assert (=> b!1828484 (=> res!822352 e!1168745)))

(declare-fun call!114596 () Bool)

(assert (=> b!1828484 (= res!822352 call!114596)))

(declare-fun b!1828485 () Bool)

(assert (=> b!1828485 (= e!1168755 (= lt!710111 call!114596))))

(declare-fun b!1828486 () Bool)

(declare-fun res!822357 () Bool)

(declare-fun e!1168747 () Bool)

(assert (=> b!1828486 (=> (not res!822357) (not e!1168747))))

(assert (=> b!1828486 (= res!822357 (isEmpty!12686 (tail!2727 (tail!2727 lt!709978))))))

(declare-fun b!1828487 () Bool)

(declare-fun e!1168748 () Bool)

(assert (=> b!1828487 (= e!1168755 e!1168748)))

(declare-fun c!298207 () Bool)

(assert (=> b!1828487 (= c!298207 ((_ is EmptyLang!4957) (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978))))))

(declare-fun b!1828488 () Bool)

(assert (=> b!1828488 (= e!1168746 (matchR!2420 (derivativeStep!1303 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)) (head!4268 (tail!2727 lt!709978))) (tail!2727 (tail!2727 lt!709978))))))

(declare-fun b!1828489 () Bool)

(assert (=> b!1828489 (= e!1168746 (nullable!1539 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978))))))

(declare-fun b!1828490 () Bool)

(assert (=> b!1828490 (= e!1168747 (= (head!4268 (tail!2727 lt!709978)) (c!298107 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)))))))

(declare-fun b!1828491 () Bool)

(declare-fun res!822364 () Bool)

(declare-fun e!1168752 () Bool)

(assert (=> b!1828491 (=> res!822364 e!1168752)))

(assert (=> b!1828491 (= res!822364 e!1168747)))

(declare-fun res!822353 () Bool)

(assert (=> b!1828491 (=> (not res!822353) (not e!1168747))))

(assert (=> b!1828491 (= res!822353 lt!710111)))

(declare-fun b!1828493 () Bool)

(declare-fun res!822360 () Bool)

(assert (=> b!1828493 (=> res!822360 e!1168752)))

(assert (=> b!1828493 (= res!822360 (not ((_ is ElementMatch!4957) (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)))))))

(assert (=> b!1828493 (= e!1168748 e!1168752)))

(declare-fun bm!114591 () Bool)

(assert (=> bm!114591 (= call!114596 (isEmpty!12686 (tail!2727 lt!709978)))))

(declare-fun b!1828496 () Bool)

(declare-fun res!822359 () Bool)

(assert (=> b!1828496 (=> res!822359 e!1168745)))

(assert (=> b!1828496 (= res!822359 (not (isEmpty!12686 (tail!2727 (tail!2727 lt!709978)))))))

(declare-fun b!1828498 () Bool)

(assert (=> b!1828498 (= e!1168748 (not lt!710111))))

(declare-fun b!1828500 () Bool)

(assert (=> b!1828500 (= e!1168752 e!1168751)))

(declare-fun res!822362 () Bool)

(assert (=> b!1828500 (=> (not res!822362) (not e!1168751))))

(assert (=> b!1828500 (= res!822362 (not lt!710111))))

(declare-fun b!1828502 () Bool)

(assert (=> b!1828502 (= e!1168745 (not (= (head!4268 (tail!2727 lt!709978)) (c!298107 (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978))))))))

(declare-fun b!1828504 () Bool)

(declare-fun res!822355 () Bool)

(assert (=> b!1828504 (=> (not res!822355) (not e!1168747))))

(assert (=> b!1828504 (= res!822355 (not call!114596))))

(assert (= (and d!559241 c!298208) b!1828489))

(assert (= (and d!559241 (not c!298208)) b!1828488))

(assert (= (and d!559241 c!298210) b!1828485))

(assert (= (and d!559241 (not c!298210)) b!1828487))

(assert (= (and b!1828487 c!298207) b!1828498))

(assert (= (and b!1828487 (not c!298207)) b!1828493))

(assert (= (and b!1828493 (not res!822360)) b!1828491))

(assert (= (and b!1828491 res!822353) b!1828504))

(assert (= (and b!1828504 res!822355) b!1828486))

(assert (= (and b!1828486 res!822357) b!1828490))

(assert (= (and b!1828491 (not res!822364)) b!1828500))

(assert (= (and b!1828500 res!822362) b!1828484))

(assert (= (and b!1828484 (not res!822352)) b!1828496))

(assert (= (and b!1828496 (not res!822359)) b!1828502))

(assert (= (or b!1828485 b!1828484 b!1828504) bm!114591))

(assert (=> b!1828502 m!2256055))

(declare-fun m!2256455 () Bool)

(assert (=> b!1828502 m!2256455))

(assert (=> d!559241 m!2256055))

(assert (=> d!559241 m!2256057))

(assert (=> d!559241 m!2256061))

(declare-fun m!2256459 () Bool)

(assert (=> d!559241 m!2256459))

(assert (=> b!1828486 m!2256055))

(declare-fun m!2256463 () Bool)

(assert (=> b!1828486 m!2256463))

(assert (=> b!1828486 m!2256463))

(declare-fun m!2256467 () Bool)

(assert (=> b!1828486 m!2256467))

(assert (=> b!1828496 m!2256055))

(assert (=> b!1828496 m!2256463))

(assert (=> b!1828496 m!2256463))

(assert (=> b!1828496 m!2256467))

(assert (=> b!1828489 m!2256061))

(declare-fun m!2256471 () Bool)

(assert (=> b!1828489 m!2256471))

(assert (=> b!1828490 m!2256055))

(assert (=> b!1828490 m!2256455))

(assert (=> bm!114591 m!2256055))

(assert (=> bm!114591 m!2256057))

(assert (=> b!1828488 m!2256055))

(assert (=> b!1828488 m!2256455))

(assert (=> b!1828488 m!2256061))

(assert (=> b!1828488 m!2256455))

(declare-fun m!2256475 () Bool)

(assert (=> b!1828488 m!2256475))

(assert (=> b!1828488 m!2256055))

(assert (=> b!1828488 m!2256463))

(assert (=> b!1828488 m!2256475))

(assert (=> b!1828488 m!2256463))

(declare-fun m!2256479 () Bool)

(assert (=> b!1828488 m!2256479))

(assert (=> b!1828072 d!559241))

(declare-fun b!1828562 () Bool)

(declare-fun e!1168784 () Regex!4957)

(assert (=> b!1828562 (= e!1168784 (ite (= (head!4268 lt!709978) (c!298107 (regex!3629 rule!559))) EmptyExpr!4957 EmptyLang!4957))))

(declare-fun b!1828563 () Bool)

(declare-fun e!1168787 () Regex!4957)

(assert (=> b!1828563 (= e!1168787 e!1168784)))

(declare-fun c!298242 () Bool)

(assert (=> b!1828563 (= c!298242 ((_ is ElementMatch!4957) (regex!3629 rule!559)))))

(declare-fun b!1828564 () Bool)

(declare-fun e!1168786 () Regex!4957)

(declare-fun call!114619 () Regex!4957)

(assert (=> b!1828564 (= e!1168786 (Union!4957 (Concat!8677 call!114619 (regTwo!10426 (regex!3629 rule!559))) EmptyLang!4957))))

(declare-fun b!1828565 () Bool)

(declare-fun e!1168788 () Regex!4957)

(declare-fun call!114621 () Regex!4957)

(assert (=> b!1828565 (= e!1168788 (Concat!8677 call!114621 (regex!3629 rule!559)))))

(declare-fun d!559245 () Bool)

(declare-fun lt!710118 () Regex!4957)

(assert (=> d!559245 (validRegex!2019 lt!710118)))

(assert (=> d!559245 (= lt!710118 e!1168787)))

(declare-fun c!298238 () Bool)

(assert (=> d!559245 (= c!298238 (or ((_ is EmptyExpr!4957) (regex!3629 rule!559)) ((_ is EmptyLang!4957) (regex!3629 rule!559))))))

(assert (=> d!559245 (validRegex!2019 (regex!3629 rule!559))))

(assert (=> d!559245 (= (derivativeStep!1303 (regex!3629 rule!559) (head!4268 lt!709978)) lt!710118)))

(declare-fun b!1828566 () Bool)

(declare-fun e!1168785 () Regex!4957)

(declare-fun call!114620 () Regex!4957)

(declare-fun call!114618 () Regex!4957)

(assert (=> b!1828566 (= e!1168785 (Union!4957 call!114620 call!114618))))

(declare-fun bm!114613 () Bool)

(assert (=> bm!114613 (= call!114621 call!114618)))

(declare-fun b!1828567 () Bool)

(assert (=> b!1828567 (= e!1168787 EmptyLang!4957)))

(declare-fun bm!114614 () Bool)

(assert (=> bm!114614 (= call!114619 call!114621)))

(declare-fun b!1828568 () Bool)

(declare-fun c!298240 () Bool)

(assert (=> b!1828568 (= c!298240 ((_ is Union!4957) (regex!3629 rule!559)))))

(assert (=> b!1828568 (= e!1168784 e!1168785)))

(declare-fun b!1828569 () Bool)

(declare-fun c!298241 () Bool)

(assert (=> b!1828569 (= c!298241 (nullable!1539 (regOne!10426 (regex!3629 rule!559))))))

(assert (=> b!1828569 (= e!1168788 e!1168786)))

(declare-fun bm!114615 () Bool)

(assert (=> bm!114615 (= call!114620 (derivativeStep!1303 (ite c!298240 (regOne!10427 (regex!3629 rule!559)) (regTwo!10426 (regex!3629 rule!559))) (head!4268 lt!709978)))))

(declare-fun b!1828570 () Bool)

(assert (=> b!1828570 (= e!1168785 e!1168788)))

(declare-fun c!298239 () Bool)

(assert (=> b!1828570 (= c!298239 ((_ is Star!4957) (regex!3629 rule!559)))))

(declare-fun b!1828571 () Bool)

(assert (=> b!1828571 (= e!1168786 (Union!4957 (Concat!8677 call!114619 (regTwo!10426 (regex!3629 rule!559))) call!114620))))

(declare-fun bm!114616 () Bool)

(assert (=> bm!114616 (= call!114618 (derivativeStep!1303 (ite c!298240 (regTwo!10427 (regex!3629 rule!559)) (ite c!298239 (reg!5286 (regex!3629 rule!559)) (regOne!10426 (regex!3629 rule!559)))) (head!4268 lt!709978)))))

(assert (= (and d!559245 c!298238) b!1828567))

(assert (= (and d!559245 (not c!298238)) b!1828563))

(assert (= (and b!1828563 c!298242) b!1828562))

(assert (= (and b!1828563 (not c!298242)) b!1828568))

(assert (= (and b!1828568 c!298240) b!1828566))

(assert (= (and b!1828568 (not c!298240)) b!1828570))

(assert (= (and b!1828570 c!298239) b!1828565))

(assert (= (and b!1828570 (not c!298239)) b!1828569))

(assert (= (and b!1828569 c!298241) b!1828571))

(assert (= (and b!1828569 (not c!298241)) b!1828564))

(assert (= (or b!1828571 b!1828564) bm!114614))

(assert (= (or b!1828565 bm!114614) bm!114613))

(assert (= (or b!1828566 bm!114613) bm!114616))

(assert (= (or b!1828566 b!1828571) bm!114615))

(declare-fun m!2256491 () Bool)

(assert (=> d!559245 m!2256491))

(assert (=> d!559245 m!2256053))

(declare-fun m!2256493 () Bool)

(assert (=> b!1828569 m!2256493))

(assert (=> bm!114615 m!2256051))

(declare-fun m!2256495 () Bool)

(assert (=> bm!114615 m!2256495))

(assert (=> bm!114616 m!2256051))

(declare-fun m!2256497 () Bool)

(assert (=> bm!114616 m!2256497))

(assert (=> b!1828072 d!559245))

(assert (=> b!1828072 d!559217))

(declare-fun d!559251 () Bool)

(assert (=> d!559251 (= (tail!2727 lt!709978) (t!170392 lt!709978))))

(assert (=> b!1828072 d!559251))

(declare-fun d!559255 () Bool)

(declare-fun c!298243 () Bool)

(assert (=> d!559255 (= c!298243 ((_ is Node!6661) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))))

(declare-fun e!1168789 () Bool)

(assert (=> d!559255 (= (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))) e!1168789)))

(declare-fun b!1828572 () Bool)

(assert (=> b!1828572 (= e!1168789 (inv!26149 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))))

(declare-fun b!1828573 () Bool)

(declare-fun e!1168790 () Bool)

(assert (=> b!1828573 (= e!1168789 e!1168790)))

(declare-fun res!822368 () Bool)

(assert (=> b!1828573 (= res!822368 (not ((_ is Leaf!9696) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))))))

(assert (=> b!1828573 (=> res!822368 e!1168790)))

(declare-fun b!1828574 () Bool)

(assert (=> b!1828574 (= e!1168790 (inv!26150 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))))))

(assert (= (and d!559255 c!298243) b!1828572))

(assert (= (and d!559255 (not c!298243)) b!1828573))

(assert (= (and b!1828573 (not res!822368)) b!1828574))

(declare-fun m!2256499 () Bool)

(assert (=> b!1828572 m!2256499))

(declare-fun m!2256501 () Bool)

(assert (=> b!1828574 m!2256501))

(assert (=> b!1828176 d!559255))

(assert (=> b!1828086 d!559163))

(assert (=> b!1828074 d!559217))

(declare-fun d!559257 () Bool)

(declare-fun charsToBigInt!0 (List!20160 Int) Int)

(assert (=> d!559257 (= (inv!15 (value!113093 token!556)) (= (charsToBigInt!0 (text!26482 (value!113093 token!556)) 0) (value!113088 (value!113093 token!556))))))

(declare-fun bs!407700 () Bool)

(assert (= bs!407700 d!559257))

(declare-fun m!2256503 () Bool)

(assert (=> bs!407700 m!2256503))

(assert (=> b!1828206 d!559257))

(declare-fun b!1828625 () Bool)

(declare-fun e!1168816 () Option!4209)

(declare-datatypes ((tuple2!19570 0))(
  ( (tuple2!19571 (_1!11187 List!20161) (_2!11187 List!20161)) )
))
(declare-fun lt!710140 () tuple2!19570)

(declare-fun size!15934 (BalanceConc!13266) Int)

(assert (=> b!1828625 (= e!1168816 (Some!4208 (tuple2!19567 (Token!6813 (apply!5417 (transformation!3629 (h!25493 rules!4538)) (seqFromList!2586 (_1!11187 lt!710140))) (h!25493 rules!4538) (size!15934 (seqFromList!2586 (_1!11187 lt!710140))) (_1!11187 lt!710140)) (_2!11187 lt!710140))))))

(declare-fun lt!710143 () Unit!34761)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!495 (Regex!4957 List!20161) Unit!34761)

(assert (=> b!1828625 (= lt!710143 (longestMatchIsAcceptedByMatchOrIsEmpty!495 (regex!3629 (h!25493 rules!4538)) input!3612))))

(declare-fun res!822404 () Bool)

(declare-fun findLongestMatchInner!511 (Regex!4957 List!20161 Int List!20161 List!20161 Int) tuple2!19570)

(assert (=> b!1828625 (= res!822404 (isEmpty!12686 (_1!11187 (findLongestMatchInner!511 (regex!3629 (h!25493 rules!4538)) Nil!20091 (size!15932 Nil!20091) input!3612 input!3612 (size!15932 input!3612)))))))

(declare-fun e!1168817 () Bool)

(assert (=> b!1828625 (=> res!822404 e!1168817)))

(assert (=> b!1828625 e!1168817))

(declare-fun lt!710144 () Unit!34761)

(assert (=> b!1828625 (= lt!710144 lt!710143)))

(declare-fun lt!710142 () Unit!34761)

(assert (=> b!1828625 (= lt!710142 (lemmaSemiInverse!725 (transformation!3629 (h!25493 rules!4538)) (seqFromList!2586 (_1!11187 lt!710140))))))

(declare-fun b!1828626 () Bool)

(declare-fun res!822405 () Bool)

(declare-fun e!1168818 () Bool)

(assert (=> b!1828626 (=> (not res!822405) (not e!1168818))))

(declare-fun lt!710141 () Option!4209)

(assert (=> b!1828626 (= res!822405 (= (value!113093 (_1!11185 (get!6207 lt!710141))) (apply!5417 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710141)))) (seqFromList!2586 (originalCharacters!4437 (_1!11185 (get!6207 lt!710141)))))))))

(declare-fun b!1828627 () Bool)

(assert (=> b!1828627 (= e!1168816 None!4208)))

(declare-fun d!559259 () Bool)

(declare-fun e!1168819 () Bool)

(assert (=> d!559259 e!1168819))

(declare-fun res!822407 () Bool)

(assert (=> d!559259 (=> res!822407 e!1168819)))

(assert (=> d!559259 (= res!822407 (isEmpty!12689 lt!710141))))

(assert (=> d!559259 (= lt!710141 e!1168816)))

(declare-fun c!298253 () Bool)

(assert (=> d!559259 (= c!298253 (isEmpty!12686 (_1!11187 lt!710140)))))

(declare-fun findLongestMatch!438 (Regex!4957 List!20161) tuple2!19570)

(assert (=> d!559259 (= lt!710140 (findLongestMatch!438 (regex!3629 (h!25493 rules!4538)) input!3612))))

(assert (=> d!559259 (ruleValid!1119 thiss!28068 (h!25493 rules!4538))))

(assert (=> d!559259 (= (maxPrefixOneRule!1167 thiss!28068 (h!25493 rules!4538) input!3612) lt!710141)))

(declare-fun b!1828628 () Bool)

(assert (=> b!1828628 (= e!1168818 (= (size!15931 (_1!11185 (get!6207 lt!710141))) (size!15932 (originalCharacters!4437 (_1!11185 (get!6207 lt!710141))))))))

(declare-fun b!1828629 () Bool)

(declare-fun res!822402 () Bool)

(assert (=> b!1828629 (=> (not res!822402) (not e!1168818))))

(assert (=> b!1828629 (= res!822402 (= (++!5453 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710141)))) (_2!11185 (get!6207 lt!710141))) input!3612))))

(declare-fun b!1828630 () Bool)

(declare-fun res!822401 () Bool)

(assert (=> b!1828630 (=> (not res!822401) (not e!1168818))))

(assert (=> b!1828630 (= res!822401 (= (rule!5789 (_1!11185 (get!6207 lt!710141))) (h!25493 rules!4538)))))

(declare-fun b!1828631 () Bool)

(assert (=> b!1828631 (= e!1168817 (matchR!2420 (regex!3629 (h!25493 rules!4538)) (_1!11187 (findLongestMatchInner!511 (regex!3629 (h!25493 rules!4538)) Nil!20091 (size!15932 Nil!20091) input!3612 input!3612 (size!15932 input!3612)))))))

(declare-fun b!1828632 () Bool)

(declare-fun res!822406 () Bool)

(assert (=> b!1828632 (=> (not res!822406) (not e!1168818))))

(assert (=> b!1828632 (= res!822406 (< (size!15932 (_2!11185 (get!6207 lt!710141))) (size!15932 input!3612)))))

(declare-fun b!1828633 () Bool)

(assert (=> b!1828633 (= e!1168819 e!1168818)))

(declare-fun res!822403 () Bool)

(assert (=> b!1828633 (=> (not res!822403) (not e!1168818))))

(assert (=> b!1828633 (= res!822403 (matchR!2420 (regex!3629 (h!25493 rules!4538)) (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710141))))))))

(assert (= (and d!559259 c!298253) b!1828627))

(assert (= (and d!559259 (not c!298253)) b!1828625))

(assert (= (and b!1828625 (not res!822404)) b!1828631))

(assert (= (and d!559259 (not res!822407)) b!1828633))

(assert (= (and b!1828633 res!822403) b!1828629))

(assert (= (and b!1828629 res!822402) b!1828632))

(assert (= (and b!1828632 res!822406) b!1828630))

(assert (= (and b!1828630 res!822401) b!1828626))

(assert (= (and b!1828626 res!822405) b!1828628))

(declare-fun m!2256523 () Bool)

(assert (=> b!1828630 m!2256523))

(declare-fun m!2256525 () Bool)

(assert (=> b!1828631 m!2256525))

(assert (=> b!1828631 m!2255963))

(assert (=> b!1828631 m!2256525))

(assert (=> b!1828631 m!2255963))

(declare-fun m!2256527 () Bool)

(assert (=> b!1828631 m!2256527))

(declare-fun m!2256529 () Bool)

(assert (=> b!1828631 m!2256529))

(assert (=> b!1828628 m!2256523))

(declare-fun m!2256531 () Bool)

(assert (=> b!1828628 m!2256531))

(assert (=> b!1828626 m!2256523))

(declare-fun m!2256533 () Bool)

(assert (=> b!1828626 m!2256533))

(assert (=> b!1828626 m!2256533))

(declare-fun m!2256535 () Bool)

(assert (=> b!1828626 m!2256535))

(assert (=> b!1828632 m!2256523))

(declare-fun m!2256537 () Bool)

(assert (=> b!1828632 m!2256537))

(assert (=> b!1828632 m!2255963))

(assert (=> b!1828633 m!2256523))

(declare-fun m!2256539 () Bool)

(assert (=> b!1828633 m!2256539))

(assert (=> b!1828633 m!2256539))

(declare-fun m!2256541 () Bool)

(assert (=> b!1828633 m!2256541))

(assert (=> b!1828633 m!2256541))

(declare-fun m!2256543 () Bool)

(assert (=> b!1828633 m!2256543))

(assert (=> b!1828629 m!2256523))

(assert (=> b!1828629 m!2256539))

(assert (=> b!1828629 m!2256539))

(assert (=> b!1828629 m!2256541))

(assert (=> b!1828629 m!2256541))

(declare-fun m!2256545 () Bool)

(assert (=> b!1828629 m!2256545))

(declare-fun m!2256547 () Bool)

(assert (=> d!559259 m!2256547))

(declare-fun m!2256549 () Bool)

(assert (=> d!559259 m!2256549))

(declare-fun m!2256551 () Bool)

(assert (=> d!559259 m!2256551))

(assert (=> d!559259 m!2256205))

(declare-fun m!2256553 () Bool)

(assert (=> b!1828625 m!2256553))

(declare-fun m!2256555 () Bool)

(assert (=> b!1828625 m!2256555))

(assert (=> b!1828625 m!2256525))

(declare-fun m!2256557 () Bool)

(assert (=> b!1828625 m!2256557))

(assert (=> b!1828625 m!2256525))

(assert (=> b!1828625 m!2255963))

(assert (=> b!1828625 m!2256527))

(assert (=> b!1828625 m!2256553))

(declare-fun m!2256559 () Bool)

(assert (=> b!1828625 m!2256559))

(assert (=> b!1828625 m!2256553))

(declare-fun m!2256561 () Bool)

(assert (=> b!1828625 m!2256561))

(assert (=> b!1828625 m!2256553))

(declare-fun m!2256563 () Bool)

(assert (=> b!1828625 m!2256563))

(assert (=> b!1828625 m!2255963))

(assert (=> bm!114563 d!559259))

(declare-fun d!559277 () Bool)

(declare-fun c!298257 () Bool)

(assert (=> d!559277 (= c!298257 ((_ is Nil!20091) lt!710049))))

(declare-fun e!1168826 () (InoxSet C!10088))

(assert (=> d!559277 (= (content!2971 lt!710049) e!1168826)))

(declare-fun b!1828641 () Bool)

(assert (=> b!1828641 (= e!1168826 ((as const (Array C!10088 Bool)) false))))

(declare-fun b!1828643 () Bool)

(assert (=> b!1828643 (= e!1168826 ((_ map or) (store ((as const (Array C!10088 Bool)) false) (h!25492 lt!710049) true) (content!2971 (t!170392 lt!710049))))))

(assert (= (and d!559277 c!298257) b!1828641))

(assert (= (and d!559277 (not c!298257)) b!1828643))

(declare-fun m!2256565 () Bool)

(assert (=> b!1828643 m!2256565))

(declare-fun m!2256567 () Bool)

(assert (=> b!1828643 m!2256567))

(assert (=> d!559073 d!559277))

(declare-fun d!559279 () Bool)

(declare-fun c!298258 () Bool)

(assert (=> d!559279 (= c!298258 ((_ is Nil!20091) lt!709978))))

(declare-fun e!1168827 () (InoxSet C!10088))

(assert (=> d!559279 (= (content!2971 lt!709978) e!1168827)))

(declare-fun b!1828649 () Bool)

(assert (=> b!1828649 (= e!1168827 ((as const (Array C!10088 Bool)) false))))

(declare-fun b!1828650 () Bool)

(assert (=> b!1828650 (= e!1168827 ((_ map or) (store ((as const (Array C!10088 Bool)) false) (h!25492 lt!709978) true) (content!2971 (t!170392 lt!709978))))))

(assert (= (and d!559279 c!298258) b!1828649))

(assert (= (and d!559279 (not c!298258)) b!1828650))

(declare-fun m!2256569 () Bool)

(assert (=> b!1828650 m!2256569))

(assert (=> b!1828650 m!2256359))

(assert (=> d!559073 d!559279))

(declare-fun d!559281 () Bool)

(declare-fun c!298259 () Bool)

(assert (=> d!559281 (= c!298259 ((_ is Nil!20091) suffix!1667))))

(declare-fun e!1168828 () (InoxSet C!10088))

(assert (=> d!559281 (= (content!2971 suffix!1667) e!1168828)))

(declare-fun b!1828651 () Bool)

(assert (=> b!1828651 (= e!1168828 ((as const (Array C!10088 Bool)) false))))

(declare-fun b!1828652 () Bool)

(assert (=> b!1828652 (= e!1168828 ((_ map or) (store ((as const (Array C!10088 Bool)) false) (h!25492 suffix!1667) true) (content!2971 (t!170392 suffix!1667))))))

(assert (= (and d!559281 c!298259) b!1828651))

(assert (= (and d!559281 (not c!298259)) b!1828652))

(declare-fun m!2256571 () Bool)

(assert (=> b!1828652 m!2256571))

(declare-fun m!2256573 () Bool)

(assert (=> b!1828652 m!2256573))

(assert (=> d!559073 d!559281))

(declare-fun d!559283 () Bool)

(assert (=> d!559283 (= (isEmpty!12686 (tail!2727 lt!709978)) ((_ is Nil!20091) (tail!2727 lt!709978)))))

(assert (=> b!1828070 d!559283))

(assert (=> b!1828070 d!559251))

(declare-fun d!559285 () Bool)

(declare-fun e!1168832 () Bool)

(assert (=> d!559285 e!1168832))

(declare-fun res!822417 () Bool)

(assert (=> d!559285 (=> (not res!822417) (not e!1168832))))

(declare-fun lt!710153 () BalanceConc!13266)

(assert (=> d!559285 (= res!822417 (= (list!8163 lt!710153) lt!709978))))

(declare-fun fromList!452 (List!20161) Conc!6661)

(assert (=> d!559285 (= lt!710153 (BalanceConc!13267 (fromList!452 lt!709978)))))

(assert (=> d!559285 (= (fromListB!1182 lt!709978) lt!710153)))

(declare-fun b!1828657 () Bool)

(assert (=> b!1828657 (= e!1168832 (isBalanced!2065 (fromList!452 lt!709978)))))

(assert (= (and d!559285 res!822417) b!1828657))

(declare-fun m!2256621 () Bool)

(assert (=> d!559285 m!2256621))

(declare-fun m!2256623 () Bool)

(assert (=> d!559285 m!2256623))

(assert (=> b!1828657 m!2256623))

(assert (=> b!1828657 m!2256623))

(declare-fun m!2256625 () Bool)

(assert (=> b!1828657 m!2256625))

(assert (=> d!559063 d!559285))

(declare-fun d!559293 () Bool)

(assert (=> d!559293 (= (inv!26140 (tag!4043 (h!25493 (t!170393 rules!4538)))) (= (mod (str.len (value!113092 (tag!4043 (h!25493 (t!170393 rules!4538))))) 2) 0))))

(assert (=> b!1828223 d!559293))

(declare-fun d!559297 () Bool)

(declare-fun res!822418 () Bool)

(declare-fun e!1168833 () Bool)

(assert (=> d!559297 (=> (not res!822418) (not e!1168833))))

(assert (=> d!559297 (= res!822418 (semiInverseModEq!1456 (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538))))))))

(assert (=> d!559297 (= (inv!26143 (transformation!3629 (h!25493 (t!170393 rules!4538)))) e!1168833)))

(declare-fun b!1828658 () Bool)

(assert (=> b!1828658 (= e!1168833 (equivClasses!1397 (toChars!5027 (transformation!3629 (h!25493 (t!170393 rules!4538)))) (toValue!5168 (transformation!3629 (h!25493 (t!170393 rules!4538))))))))

(assert (= (and d!559297 res!822418) b!1828658))

(declare-fun m!2256629 () Bool)

(assert (=> d!559297 m!2256629))

(declare-fun m!2256631 () Bool)

(assert (=> b!1828658 m!2256631))

(assert (=> b!1828223 d!559297))

(declare-fun b!1828659 () Bool)

(declare-fun e!1168835 () List!20161)

(assert (=> b!1828659 (= e!1168835 (_2!11185 (get!6207 lt!710006)))))

(declare-fun b!1828660 () Bool)

(assert (=> b!1828660 (= e!1168835 (Cons!20091 (h!25492 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (++!5453 (t!170392 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (_2!11185 (get!6207 lt!710006)))))))

(declare-fun b!1828662 () Bool)

(declare-fun e!1168834 () Bool)

(declare-fun lt!710154 () List!20161)

(assert (=> b!1828662 (= e!1168834 (or (not (= (_2!11185 (get!6207 lt!710006)) Nil!20091)) (= lt!710154 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))))))))

(declare-fun b!1828661 () Bool)

(declare-fun res!822420 () Bool)

(assert (=> b!1828661 (=> (not res!822420) (not e!1168834))))

(assert (=> b!1828661 (= res!822420 (= (size!15932 lt!710154) (+ (size!15932 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (size!15932 (_2!11185 (get!6207 lt!710006))))))))

(declare-fun d!559299 () Bool)

(assert (=> d!559299 e!1168834))

(declare-fun res!822419 () Bool)

(assert (=> d!559299 (=> (not res!822419) (not e!1168834))))

(assert (=> d!559299 (= res!822419 (= (content!2971 lt!710154) ((_ map or) (content!2971 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))) (content!2971 (_2!11185 (get!6207 lt!710006))))))))

(assert (=> d!559299 (= lt!710154 e!1168835)))

(declare-fun c!298262 () Bool)

(assert (=> d!559299 (= c!298262 ((_ is Nil!20091) (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006))))))))

(assert (=> d!559299 (= (++!5453 (list!8163 (charsOf!2272 (_1!11185 (get!6207 lt!710006)))) (_2!11185 (get!6207 lt!710006))) lt!710154)))

(assert (= (and d!559299 c!298262) b!1828659))

(assert (= (and d!559299 (not c!298262)) b!1828660))

(assert (= (and d!559299 res!822419) b!1828661))

(assert (= (and b!1828661 res!822420) b!1828662))

(declare-fun m!2256633 () Bool)

(assert (=> b!1828660 m!2256633))

(declare-fun m!2256635 () Bool)

(assert (=> b!1828661 m!2256635))

(assert (=> b!1828661 m!2255959))

(declare-fun m!2256637 () Bool)

(assert (=> b!1828661 m!2256637))

(assert (=> b!1828661 m!2255961))

(declare-fun m!2256639 () Bool)

(assert (=> d!559299 m!2256639))

(assert (=> d!559299 m!2255959))

(declare-fun m!2256641 () Bool)

(assert (=> d!559299 m!2256641))

(declare-fun m!2256643 () Bool)

(assert (=> d!559299 m!2256643))

(assert (=> b!1827981 d!559299))

(assert (=> b!1827981 d!559143))

(assert (=> b!1827981 d!559145))

(assert (=> b!1827981 d!559129))

(assert (=> d!559027 d!559069))

(assert (=> d!559027 d!559177))

(declare-fun bs!407712 () Bool)

(declare-fun d!559301 () Bool)

(assert (= bs!407712 (and d!559301 d!559123)))

(declare-fun lambda!71771 () Int)

(assert (=> bs!407712 (= (= (toValue!5168 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 (h!25493 rules!4538)))) (= lambda!71771 lambda!71752))))

(declare-fun bs!407714 () Bool)

(assert (= bs!407714 (and d!559301 d!559175)))

(assert (=> bs!407714 (= (= (toValue!5168 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 (rule!5789 token!556)))) (= lambda!71771 lambda!71763))))

(assert (=> d!559301 true))

(assert (=> d!559301 (< (dynLambda!9985 order!13011 (toValue!5168 (transformation!3629 rule!559))) (dynLambda!9989 order!13019 lambda!71771))))

(assert (=> d!559301 (= (equivClasses!1397 (toChars!5027 (transformation!3629 rule!559)) (toValue!5168 (transformation!3629 rule!559))) (Forall2!571 lambda!71771))))

(declare-fun bs!407715 () Bool)

(assert (= bs!407715 d!559301))

(declare-fun m!2256651 () Bool)

(assert (=> bs!407715 m!2256651))

(assert (=> b!1828208 d!559301))

(assert (=> b!1828077 d!559283))

(assert (=> b!1828077 d!559251))

(declare-fun b!1828688 () Bool)

(declare-fun e!1168848 () List!20161)

(assert (=> b!1828688 (= e!1168848 (++!5453 (list!8165 (left!16069 (c!298106 (charsOf!2272 token!556)))) (list!8165 (right!16399 (c!298106 (charsOf!2272 token!556))))))))

(declare-fun b!1828686 () Bool)

(declare-fun e!1168847 () List!20161)

(assert (=> b!1828686 (= e!1168847 e!1168848)))

(declare-fun c!298271 () Bool)

(assert (=> b!1828686 (= c!298271 ((_ is Leaf!9696) (c!298106 (charsOf!2272 token!556))))))

(declare-fun d!559305 () Bool)

(declare-fun c!298270 () Bool)

(assert (=> d!559305 (= c!298270 ((_ is Empty!6661) (c!298106 (charsOf!2272 token!556))))))

(assert (=> d!559305 (= (list!8165 (c!298106 (charsOf!2272 token!556))) e!1168847)))

(declare-fun b!1828685 () Bool)

(assert (=> b!1828685 (= e!1168847 Nil!20091)))

(declare-fun b!1828687 () Bool)

(declare-fun list!8167 (IArray!13327) List!20161)

(assert (=> b!1828687 (= e!1168848 (list!8167 (xs!9537 (c!298106 (charsOf!2272 token!556)))))))

(assert (= (and d!559305 c!298270) b!1828685))

(assert (= (and d!559305 (not c!298270)) b!1828686))

(assert (= (and b!1828686 c!298271) b!1828687))

(assert (= (and b!1828686 (not c!298271)) b!1828688))

(declare-fun m!2256671 () Bool)

(assert (=> b!1828688 m!2256671))

(declare-fun m!2256673 () Bool)

(assert (=> b!1828688 m!2256673))

(assert (=> b!1828688 m!2256671))

(assert (=> b!1828688 m!2256673))

(declare-fun m!2256675 () Bool)

(assert (=> b!1828688 m!2256675))

(declare-fun m!2256677 () Bool)

(assert (=> b!1828687 m!2256677))

(assert (=> d!559075 d!559305))

(declare-fun b!1828690 () Bool)

(declare-fun e!1168849 () Bool)

(declare-fun tp!517153 () Bool)

(declare-fun tp!517151 () Bool)

(assert (=> b!1828690 (= e!1168849 (and tp!517153 tp!517151))))

(declare-fun b!1828692 () Bool)

(declare-fun tp!517152 () Bool)

(declare-fun tp!517150 () Bool)

(assert (=> b!1828692 (= e!1168849 (and tp!517152 tp!517150))))

(declare-fun b!1828691 () Bool)

(declare-fun tp!517149 () Bool)

(assert (=> b!1828691 (= e!1168849 tp!517149)))

(assert (=> b!1828239 (= tp!517132 e!1168849)))

(declare-fun b!1828689 () Bool)

(assert (=> b!1828689 (= e!1168849 tp_is_empty!8149)))

(assert (= (and b!1828239 ((_ is ElementMatch!4957) (reg!5286 (regex!3629 (h!25493 rules!4538))))) b!1828689))

(assert (= (and b!1828239 ((_ is Concat!8677) (reg!5286 (regex!3629 (h!25493 rules!4538))))) b!1828690))

(assert (= (and b!1828239 ((_ is Star!4957) (reg!5286 (regex!3629 (h!25493 rules!4538))))) b!1828691))

(assert (= (and b!1828239 ((_ is Union!4957) (reg!5286 (regex!3629 (h!25493 rules!4538))))) b!1828692))

(declare-fun tp!517160 () Bool)

(declare-fun tp!517161 () Bool)

(declare-fun e!1168855 () Bool)

(declare-fun b!1828702 () Bool)

(assert (=> b!1828702 (= e!1168855 (and (inv!26147 (left!16069 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))) tp!517160 (inv!26147 (right!16399 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))) tp!517161))))

(declare-fun b!1828704 () Bool)

(declare-fun e!1168856 () Bool)

(declare-fun tp!517162 () Bool)

(assert (=> b!1828704 (= e!1168856 tp!517162)))

(declare-fun b!1828703 () Bool)

(declare-fun inv!26153 (IArray!13327) Bool)

(assert (=> b!1828703 (= e!1168855 (and (inv!26153 (xs!9537 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))) e!1168856))))

(assert (=> b!1828013 (= tp!517060 (and (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556)))) e!1168855))))

(assert (= (and b!1828013 ((_ is Node!6661) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))) b!1828702))

(assert (= b!1828703 b!1828704))

(assert (= (and b!1828013 ((_ is Leaf!9696) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 (rule!5789 token!556))) (value!113093 token!556))))) b!1828703))

(declare-fun m!2256687 () Bool)

(assert (=> b!1828702 m!2256687))

(declare-fun m!2256689 () Bool)

(assert (=> b!1828702 m!2256689))

(declare-fun m!2256691 () Bool)

(assert (=> b!1828703 m!2256691))

(assert (=> b!1828013 m!2255989))

(declare-fun b!1828710 () Bool)

(declare-fun e!1168859 () Bool)

(declare-fun tp!517167 () Bool)

(declare-fun tp!517165 () Bool)

(assert (=> b!1828710 (= e!1168859 (and tp!517167 tp!517165))))

(declare-fun b!1828712 () Bool)

(declare-fun tp!517166 () Bool)

(declare-fun tp!517164 () Bool)

(assert (=> b!1828712 (= e!1168859 (and tp!517166 tp!517164))))

(declare-fun b!1828711 () Bool)

(declare-fun tp!517163 () Bool)

(assert (=> b!1828711 (= e!1168859 tp!517163)))

(assert (=> b!1828244 (= tp!517140 e!1168859)))

(declare-fun b!1828709 () Bool)

(assert (=> b!1828709 (= e!1168859 tp_is_empty!8149)))

(assert (= (and b!1828244 ((_ is ElementMatch!4957) (regOne!10427 (regex!3629 (rule!5789 token!556))))) b!1828709))

(assert (= (and b!1828244 ((_ is Concat!8677) (regOne!10427 (regex!3629 (rule!5789 token!556))))) b!1828710))

(assert (= (and b!1828244 ((_ is Star!4957) (regOne!10427 (regex!3629 (rule!5789 token!556))))) b!1828711))

(assert (= (and b!1828244 ((_ is Union!4957) (regOne!10427 (regex!3629 (rule!5789 token!556))))) b!1828712))

(declare-fun b!1828714 () Bool)

(declare-fun e!1168860 () Bool)

(declare-fun tp!517172 () Bool)

(declare-fun tp!517170 () Bool)

(assert (=> b!1828714 (= e!1168860 (and tp!517172 tp!517170))))

(declare-fun b!1828716 () Bool)

(declare-fun tp!517171 () Bool)

(declare-fun tp!517169 () Bool)

(assert (=> b!1828716 (= e!1168860 (and tp!517171 tp!517169))))

(declare-fun b!1828715 () Bool)

(declare-fun tp!517168 () Bool)

(assert (=> b!1828715 (= e!1168860 tp!517168)))

(assert (=> b!1828244 (= tp!517138 e!1168860)))

(declare-fun b!1828713 () Bool)

(assert (=> b!1828713 (= e!1168860 tp_is_empty!8149)))

(assert (= (and b!1828244 ((_ is ElementMatch!4957) (regTwo!10427 (regex!3629 (rule!5789 token!556))))) b!1828713))

(assert (= (and b!1828244 ((_ is Concat!8677) (regTwo!10427 (regex!3629 (rule!5789 token!556))))) b!1828714))

(assert (= (and b!1828244 ((_ is Star!4957) (regTwo!10427 (regex!3629 (rule!5789 token!556))))) b!1828715))

(assert (= (and b!1828244 ((_ is Union!4957) (regTwo!10427 (regex!3629 (rule!5789 token!556))))) b!1828716))

(declare-fun tp!517174 () Bool)

(declare-fun e!1168864 () Bool)

(declare-fun tp!517173 () Bool)

(declare-fun b!1828722 () Bool)

(assert (=> b!1828722 (= e!1168864 (and (inv!26147 (left!16069 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))) tp!517173 (inv!26147 (right!16399 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))) tp!517174))))

(declare-fun b!1828724 () Bool)

(declare-fun e!1168865 () Bool)

(declare-fun tp!517175 () Bool)

(assert (=> b!1828724 (= e!1168865 tp!517175)))

(declare-fun b!1828723 () Bool)

(assert (=> b!1828723 (= e!1168864 (and (inv!26153 (xs!9537 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))) e!1168865))))

(assert (=> b!1828176 (= tp!517104 (and (inv!26147 (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979)))) e!1168864))))

(assert (= (and b!1828176 ((_ is Node!6661) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))) b!1828722))

(assert (= b!1828723 b!1828724))

(assert (= (and b!1828176 ((_ is Leaf!9696) (c!298106 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))))) b!1828723))

(declare-fun m!2256705 () Bool)

(assert (=> b!1828722 m!2256705))

(declare-fun m!2256707 () Bool)

(assert (=> b!1828722 m!2256707))

(declare-fun m!2256709 () Bool)

(assert (=> b!1828723 m!2256709))

(assert (=> b!1828176 m!2256117))

(declare-fun b!1828726 () Bool)

(declare-fun e!1168866 () Bool)

(declare-fun tp!517180 () Bool)

(declare-fun tp!517178 () Bool)

(assert (=> b!1828726 (= e!1168866 (and tp!517180 tp!517178))))

(declare-fun b!1828728 () Bool)

(declare-fun tp!517179 () Bool)

(declare-fun tp!517177 () Bool)

(assert (=> b!1828728 (= e!1168866 (and tp!517179 tp!517177))))

(declare-fun b!1828727 () Bool)

(declare-fun tp!517176 () Bool)

(assert (=> b!1828727 (= e!1168866 tp!517176)))

(assert (=> b!1828240 (= tp!517135 e!1168866)))

(declare-fun b!1828725 () Bool)

(assert (=> b!1828725 (= e!1168866 tp_is_empty!8149)))

(assert (= (and b!1828240 ((_ is ElementMatch!4957) (regOne!10427 (regex!3629 (h!25493 rules!4538))))) b!1828725))

(assert (= (and b!1828240 ((_ is Concat!8677) (regOne!10427 (regex!3629 (h!25493 rules!4538))))) b!1828726))

(assert (= (and b!1828240 ((_ is Star!4957) (regOne!10427 (regex!3629 (h!25493 rules!4538))))) b!1828727))

(assert (= (and b!1828240 ((_ is Union!4957) (regOne!10427 (regex!3629 (h!25493 rules!4538))))) b!1828728))

(declare-fun b!1828730 () Bool)

(declare-fun e!1168867 () Bool)

(declare-fun tp!517185 () Bool)

(declare-fun tp!517183 () Bool)

(assert (=> b!1828730 (= e!1168867 (and tp!517185 tp!517183))))

(declare-fun b!1828732 () Bool)

(declare-fun tp!517184 () Bool)

(declare-fun tp!517182 () Bool)

(assert (=> b!1828732 (= e!1168867 (and tp!517184 tp!517182))))

(declare-fun b!1828731 () Bool)

(declare-fun tp!517181 () Bool)

(assert (=> b!1828731 (= e!1168867 tp!517181)))

(assert (=> b!1828240 (= tp!517133 e!1168867)))

(declare-fun b!1828729 () Bool)

(assert (=> b!1828729 (= e!1168867 tp_is_empty!8149)))

(assert (= (and b!1828240 ((_ is ElementMatch!4957) (regTwo!10427 (regex!3629 (h!25493 rules!4538))))) b!1828729))

(assert (= (and b!1828240 ((_ is Concat!8677) (regTwo!10427 (regex!3629 (h!25493 rules!4538))))) b!1828730))

(assert (= (and b!1828240 ((_ is Star!4957) (regTwo!10427 (regex!3629 (h!25493 rules!4538))))) b!1828731))

(assert (= (and b!1828240 ((_ is Union!4957) (regTwo!10427 (regex!3629 (h!25493 rules!4538))))) b!1828732))

(declare-fun b!1828734 () Bool)

(declare-fun e!1168868 () Bool)

(declare-fun tp!517190 () Bool)

(declare-fun tp!517188 () Bool)

(assert (=> b!1828734 (= e!1168868 (and tp!517190 tp!517188))))

(declare-fun b!1828736 () Bool)

(declare-fun tp!517189 () Bool)

(declare-fun tp!517187 () Bool)

(assert (=> b!1828736 (= e!1168868 (and tp!517189 tp!517187))))

(declare-fun b!1828735 () Bool)

(declare-fun tp!517186 () Bool)

(assert (=> b!1828735 (= e!1168868 tp!517186)))

(assert (=> b!1828246 (= tp!517146 e!1168868)))

(declare-fun b!1828733 () Bool)

(assert (=> b!1828733 (= e!1168868 tp_is_empty!8149)))

(assert (= (and b!1828246 ((_ is ElementMatch!4957) (regOne!10426 (regex!3629 rule!559)))) b!1828733))

(assert (= (and b!1828246 ((_ is Concat!8677) (regOne!10426 (regex!3629 rule!559)))) b!1828734))

(assert (= (and b!1828246 ((_ is Star!4957) (regOne!10426 (regex!3629 rule!559)))) b!1828735))

(assert (= (and b!1828246 ((_ is Union!4957) (regOne!10426 (regex!3629 rule!559)))) b!1828736))

(declare-fun b!1828738 () Bool)

(declare-fun e!1168869 () Bool)

(declare-fun tp!517195 () Bool)

(declare-fun tp!517193 () Bool)

(assert (=> b!1828738 (= e!1168869 (and tp!517195 tp!517193))))

(declare-fun b!1828740 () Bool)

(declare-fun tp!517194 () Bool)

(declare-fun tp!517192 () Bool)

(assert (=> b!1828740 (= e!1168869 (and tp!517194 tp!517192))))

(declare-fun b!1828739 () Bool)

(declare-fun tp!517191 () Bool)

(assert (=> b!1828739 (= e!1168869 tp!517191)))

(assert (=> b!1828246 (= tp!517144 e!1168869)))

(declare-fun b!1828737 () Bool)

(assert (=> b!1828737 (= e!1168869 tp_is_empty!8149)))

(assert (= (and b!1828246 ((_ is ElementMatch!4957) (regTwo!10426 (regex!3629 rule!559)))) b!1828737))

(assert (= (and b!1828246 ((_ is Concat!8677) (regTwo!10426 (regex!3629 rule!559)))) b!1828738))

(assert (= (and b!1828246 ((_ is Star!4957) (regTwo!10426 (regex!3629 rule!559)))) b!1828739))

(assert (= (and b!1828246 ((_ is Union!4957) (regTwo!10426 (regex!3629 rule!559)))) b!1828740))

(declare-fun b!1828743 () Bool)

(declare-fun b_free!51035 () Bool)

(declare-fun b_next!51739 () Bool)

(assert (=> b!1828743 (= b_free!51035 (not b_next!51739))))

(declare-fun t!170475 () Bool)

(declare-fun tb!111699 () Bool)

(assert (=> (and b!1828743 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) (toValue!5168 (transformation!3629 rule!559))) t!170475) tb!111699))

(declare-fun result!134332 () Bool)

(assert (= result!134332 result!134256))

(assert (=> d!559043 t!170475))

(assert (=> d!559047 t!170475))

(declare-fun t!170481 () Bool)

(declare-fun tb!111703 () Bool)

(assert (=> (and b!1828743 (= (toValue!5168 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) (toValue!5168 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170481) tb!111703))

(declare-fun result!134336 () Bool)

(assert (= result!134336 result!134316))

(assert (=> d!559235 t!170481))

(declare-fun b_and!142183 () Bool)

(declare-fun tp!517199 () Bool)

(assert (=> b!1828743 (= tp!517199 (and (=> t!170475 result!134332) (=> t!170481 result!134336) b_and!142183))))

(declare-fun b_free!51037 () Bool)

(declare-fun b_next!51741 () Bool)

(assert (=> b!1828743 (= b_free!51037 (not b_next!51741))))

(declare-fun tb!111705 () Bool)

(declare-fun t!170483 () Bool)

(assert (=> (and b!1828743 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) (toChars!5027 (transformation!3629 (rule!5789 token!556)))) t!170483) tb!111705))

(declare-fun result!134338 () Bool)

(assert (= result!134338 result!134240))

(assert (=> b!1828007 t!170483))

(declare-fun tb!111707 () Bool)

(declare-fun t!170485 () Bool)

(assert (=> (and b!1828743 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) (toChars!5027 (transformation!3629 rule!559))) t!170485) tb!111707))

(declare-fun result!134340 () Bool)

(assert (= result!134340 result!134282))

(assert (=> d!559047 t!170485))

(assert (=> d!559077 t!170483))

(declare-fun tb!111709 () Bool)

(declare-fun t!170487 () Bool)

(assert (=> (and b!1828743 (= (toChars!5027 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) (toChars!5027 (transformation!3629 (rule!5789 (_1!11185 (get!6207 lt!710006)))))) t!170487) tb!111709))

(declare-fun result!134342 () Bool)

(assert (= result!134342 result!134300))

(assert (=> d!559145 t!170487))

(declare-fun tp!517197 () Bool)

(declare-fun b_and!142191 () Bool)

(assert (=> b!1828743 (= tp!517197 (and (=> t!170483 result!134338) (=> t!170485 result!134340) (=> t!170487 result!134342) b_and!142191))))

(declare-fun e!1168872 () Bool)

(assert (=> b!1828743 (= e!1168872 (and tp!517199 tp!517197))))

(declare-fun e!1168874 () Bool)

(declare-fun tp!517198 () Bool)

(declare-fun b!1828742 () Bool)

(assert (=> b!1828742 (= e!1168874 (and tp!517198 (inv!26140 (tag!4043 (h!25493 (t!170393 (t!170393 rules!4538))))) (inv!26143 (transformation!3629 (h!25493 (t!170393 (t!170393 rules!4538))))) e!1168872))))

(declare-fun b!1828741 () Bool)

(declare-fun e!1168871 () Bool)

(declare-fun tp!517196 () Bool)

(assert (=> b!1828741 (= e!1168871 (and e!1168874 tp!517196))))

(assert (=> b!1828222 (= tp!517116 e!1168871)))

(assert (= b!1828742 b!1828743))

(assert (= b!1828741 b!1828742))

(assert (= (and b!1828222 ((_ is Cons!20092) (t!170393 (t!170393 rules!4538)))) b!1828741))

(declare-fun m!2256723 () Bool)

(assert (=> b!1828742 m!2256723))

(declare-fun m!2256725 () Bool)

(assert (=> b!1828742 m!2256725))

(declare-fun b!1828747 () Bool)

(declare-fun e!1168877 () Bool)

(declare-fun tp!517204 () Bool)

(declare-fun tp!517202 () Bool)

(assert (=> b!1828747 (= e!1168877 (and tp!517204 tp!517202))))

(declare-fun b!1828749 () Bool)

(declare-fun tp!517203 () Bool)

(declare-fun tp!517201 () Bool)

(assert (=> b!1828749 (= e!1168877 (and tp!517203 tp!517201))))

(declare-fun b!1828748 () Bool)

(declare-fun tp!517200 () Bool)

(assert (=> b!1828748 (= e!1168877 tp!517200)))

(assert (=> b!1828242 (= tp!517141 e!1168877)))

(declare-fun b!1828746 () Bool)

(assert (=> b!1828746 (= e!1168877 tp_is_empty!8149)))

(assert (= (and b!1828242 ((_ is ElementMatch!4957) (regOne!10426 (regex!3629 (rule!5789 token!556))))) b!1828746))

(assert (= (and b!1828242 ((_ is Concat!8677) (regOne!10426 (regex!3629 (rule!5789 token!556))))) b!1828747))

(assert (= (and b!1828242 ((_ is Star!4957) (regOne!10426 (regex!3629 (rule!5789 token!556))))) b!1828748))

(assert (= (and b!1828242 ((_ is Union!4957) (regOne!10426 (regex!3629 (rule!5789 token!556))))) b!1828749))

(declare-fun b!1828751 () Bool)

(declare-fun e!1168878 () Bool)

(declare-fun tp!517209 () Bool)

(declare-fun tp!517207 () Bool)

(assert (=> b!1828751 (= e!1168878 (and tp!517209 tp!517207))))

(declare-fun b!1828753 () Bool)

(declare-fun tp!517208 () Bool)

(declare-fun tp!517206 () Bool)

(assert (=> b!1828753 (= e!1168878 (and tp!517208 tp!517206))))

(declare-fun b!1828752 () Bool)

(declare-fun tp!517205 () Bool)

(assert (=> b!1828752 (= e!1168878 tp!517205)))

(assert (=> b!1828242 (= tp!517139 e!1168878)))

(declare-fun b!1828750 () Bool)

(assert (=> b!1828750 (= e!1168878 tp_is_empty!8149)))

(assert (= (and b!1828242 ((_ is ElementMatch!4957) (regTwo!10426 (regex!3629 (rule!5789 token!556))))) b!1828750))

(assert (= (and b!1828242 ((_ is Concat!8677) (regTwo!10426 (regex!3629 (rule!5789 token!556))))) b!1828751))

(assert (= (and b!1828242 ((_ is Star!4957) (regTwo!10426 (regex!3629 (rule!5789 token!556))))) b!1828752))

(assert (= (and b!1828242 ((_ is Union!4957) (regTwo!10426 (regex!3629 (rule!5789 token!556))))) b!1828753))

(declare-fun b!1828755 () Bool)

(declare-fun e!1168879 () Bool)

(declare-fun tp!517214 () Bool)

(declare-fun tp!517212 () Bool)

(assert (=> b!1828755 (= e!1168879 (and tp!517214 tp!517212))))

(declare-fun b!1828757 () Bool)

(declare-fun tp!517213 () Bool)

(declare-fun tp!517211 () Bool)

(assert (=> b!1828757 (= e!1168879 (and tp!517213 tp!517211))))

(declare-fun b!1828756 () Bool)

(declare-fun tp!517210 () Bool)

(assert (=> b!1828756 (= e!1168879 tp!517210)))

(assert (=> b!1828247 (= tp!517142 e!1168879)))

(declare-fun b!1828754 () Bool)

(assert (=> b!1828754 (= e!1168879 tp_is_empty!8149)))

(assert (= (and b!1828247 ((_ is ElementMatch!4957) (reg!5286 (regex!3629 rule!559)))) b!1828754))

(assert (= (and b!1828247 ((_ is Concat!8677) (reg!5286 (regex!3629 rule!559)))) b!1828755))

(assert (= (and b!1828247 ((_ is Star!4957) (reg!5286 (regex!3629 rule!559)))) b!1828756))

(assert (= (and b!1828247 ((_ is Union!4957) (reg!5286 (regex!3629 rule!559)))) b!1828757))

(declare-fun b!1828763 () Bool)

(declare-fun e!1168882 () Bool)

(declare-fun tp!517219 () Bool)

(declare-fun tp!517217 () Bool)

(assert (=> b!1828763 (= e!1168882 (and tp!517219 tp!517217))))

(declare-fun b!1828765 () Bool)

(declare-fun tp!517218 () Bool)

(declare-fun tp!517216 () Bool)

(assert (=> b!1828765 (= e!1168882 (and tp!517218 tp!517216))))

(declare-fun b!1828764 () Bool)

(declare-fun tp!517215 () Bool)

(assert (=> b!1828764 (= e!1168882 tp!517215)))

(assert (=> b!1828223 (= tp!517118 e!1168882)))

(declare-fun b!1828762 () Bool)

(assert (=> b!1828762 (= e!1168882 tp_is_empty!8149)))

(assert (= (and b!1828223 ((_ is ElementMatch!4957) (regex!3629 (h!25493 (t!170393 rules!4538))))) b!1828762))

(assert (= (and b!1828223 ((_ is Concat!8677) (regex!3629 (h!25493 (t!170393 rules!4538))))) b!1828763))

(assert (= (and b!1828223 ((_ is Star!4957) (regex!3629 (h!25493 (t!170393 rules!4538))))) b!1828764))

(assert (= (and b!1828223 ((_ is Union!4957) (regex!3629 (h!25493 (t!170393 rules!4538))))) b!1828765))

(declare-fun b!1828767 () Bool)

(declare-fun e!1168883 () Bool)

(declare-fun tp!517224 () Bool)

(declare-fun tp!517222 () Bool)

(assert (=> b!1828767 (= e!1168883 (and tp!517224 tp!517222))))

(declare-fun b!1828769 () Bool)

(declare-fun tp!517223 () Bool)

(declare-fun tp!517221 () Bool)

(assert (=> b!1828769 (= e!1168883 (and tp!517223 tp!517221))))

(declare-fun b!1828768 () Bool)

(declare-fun tp!517220 () Bool)

(assert (=> b!1828768 (= e!1168883 tp!517220)))

(assert (=> b!1828238 (= tp!517136 e!1168883)))

(declare-fun b!1828766 () Bool)

(assert (=> b!1828766 (= e!1168883 tp_is_empty!8149)))

(assert (= (and b!1828238 ((_ is ElementMatch!4957) (regOne!10426 (regex!3629 (h!25493 rules!4538))))) b!1828766))

(assert (= (and b!1828238 ((_ is Concat!8677) (regOne!10426 (regex!3629 (h!25493 rules!4538))))) b!1828767))

(assert (= (and b!1828238 ((_ is Star!4957) (regOne!10426 (regex!3629 (h!25493 rules!4538))))) b!1828768))

(assert (= (and b!1828238 ((_ is Union!4957) (regOne!10426 (regex!3629 (h!25493 rules!4538))))) b!1828769))

(declare-fun b!1828771 () Bool)

(declare-fun e!1168884 () Bool)

(declare-fun tp!517229 () Bool)

(declare-fun tp!517227 () Bool)

(assert (=> b!1828771 (= e!1168884 (and tp!517229 tp!517227))))

(declare-fun b!1828773 () Bool)

(declare-fun tp!517228 () Bool)

(declare-fun tp!517226 () Bool)

(assert (=> b!1828773 (= e!1168884 (and tp!517228 tp!517226))))

(declare-fun b!1828772 () Bool)

(declare-fun tp!517225 () Bool)

(assert (=> b!1828772 (= e!1168884 tp!517225)))

(assert (=> b!1828238 (= tp!517134 e!1168884)))

(declare-fun b!1828770 () Bool)

(assert (=> b!1828770 (= e!1168884 tp_is_empty!8149)))

(assert (= (and b!1828238 ((_ is ElementMatch!4957) (regTwo!10426 (regex!3629 (h!25493 rules!4538))))) b!1828770))

(assert (= (and b!1828238 ((_ is Concat!8677) (regTwo!10426 (regex!3629 (h!25493 rules!4538))))) b!1828771))

(assert (= (and b!1828238 ((_ is Star!4957) (regTwo!10426 (regex!3629 (h!25493 rules!4538))))) b!1828772))

(assert (= (and b!1828238 ((_ is Union!4957) (regTwo!10426 (regex!3629 (h!25493 rules!4538))))) b!1828773))

(declare-fun b!1828775 () Bool)

(declare-fun e!1168885 () Bool)

(declare-fun tp!517234 () Bool)

(declare-fun tp!517232 () Bool)

(assert (=> b!1828775 (= e!1168885 (and tp!517234 tp!517232))))

(declare-fun b!1828777 () Bool)

(declare-fun tp!517233 () Bool)

(declare-fun tp!517231 () Bool)

(assert (=> b!1828777 (= e!1168885 (and tp!517233 tp!517231))))

(declare-fun b!1828776 () Bool)

(declare-fun tp!517230 () Bool)

(assert (=> b!1828776 (= e!1168885 tp!517230)))

(assert (=> b!1828243 (= tp!517137 e!1168885)))

(declare-fun b!1828774 () Bool)

(assert (=> b!1828774 (= e!1168885 tp_is_empty!8149)))

(assert (= (and b!1828243 ((_ is ElementMatch!4957) (reg!5286 (regex!3629 (rule!5789 token!556))))) b!1828774))

(assert (= (and b!1828243 ((_ is Concat!8677) (reg!5286 (regex!3629 (rule!5789 token!556))))) b!1828775))

(assert (= (and b!1828243 ((_ is Star!4957) (reg!5286 (regex!3629 (rule!5789 token!556))))) b!1828776))

(assert (= (and b!1828243 ((_ is Union!4957) (reg!5286 (regex!3629 (rule!5789 token!556))))) b!1828777))

(declare-fun b!1828779 () Bool)

(declare-fun e!1168886 () Bool)

(declare-fun tp!517239 () Bool)

(declare-fun tp!517237 () Bool)

(assert (=> b!1828779 (= e!1168886 (and tp!517239 tp!517237))))

(declare-fun b!1828781 () Bool)

(declare-fun tp!517238 () Bool)

(declare-fun tp!517236 () Bool)

(assert (=> b!1828781 (= e!1168886 (and tp!517238 tp!517236))))

(declare-fun b!1828780 () Bool)

(declare-fun tp!517235 () Bool)

(assert (=> b!1828780 (= e!1168886 tp!517235)))

(assert (=> b!1828248 (= tp!517145 e!1168886)))

(declare-fun b!1828778 () Bool)

(assert (=> b!1828778 (= e!1168886 tp_is_empty!8149)))

(assert (= (and b!1828248 ((_ is ElementMatch!4957) (regOne!10427 (regex!3629 rule!559)))) b!1828778))

(assert (= (and b!1828248 ((_ is Concat!8677) (regOne!10427 (regex!3629 rule!559)))) b!1828779))

(assert (= (and b!1828248 ((_ is Star!4957) (regOne!10427 (regex!3629 rule!559)))) b!1828780))

(assert (= (and b!1828248 ((_ is Union!4957) (regOne!10427 (regex!3629 rule!559)))) b!1828781))

(declare-fun b!1828785 () Bool)

(declare-fun e!1168888 () Bool)

(declare-fun tp!517244 () Bool)

(declare-fun tp!517242 () Bool)

(assert (=> b!1828785 (= e!1168888 (and tp!517244 tp!517242))))

(declare-fun b!1828787 () Bool)

(declare-fun tp!517243 () Bool)

(declare-fun tp!517241 () Bool)

(assert (=> b!1828787 (= e!1168888 (and tp!517243 tp!517241))))

(declare-fun b!1828786 () Bool)

(declare-fun tp!517240 () Bool)

(assert (=> b!1828786 (= e!1168888 tp!517240)))

(assert (=> b!1828248 (= tp!517143 e!1168888)))

(declare-fun b!1828784 () Bool)

(assert (=> b!1828784 (= e!1168888 tp_is_empty!8149)))

(assert (= (and b!1828248 ((_ is ElementMatch!4957) (regTwo!10427 (regex!3629 rule!559)))) b!1828784))

(assert (= (and b!1828248 ((_ is Concat!8677) (regTwo!10427 (regex!3629 rule!559)))) b!1828785))

(assert (= (and b!1828248 ((_ is Star!4957) (regTwo!10427 (regex!3629 rule!559)))) b!1828786))

(assert (= (and b!1828248 ((_ is Union!4957) (regTwo!10427 (regex!3629 rule!559)))) b!1828787))

(declare-fun b!1828788 () Bool)

(declare-fun e!1168889 () Bool)

(declare-fun tp!517245 () Bool)

(assert (=> b!1828788 (= e!1168889 (and tp_is_empty!8149 tp!517245))))

(assert (=> b!1828226 (= tp!517121 e!1168889)))

(assert (= (and b!1828226 ((_ is Cons!20091) (t!170392 (t!170392 input!3612)))) b!1828788))

(declare-fun b!1828789 () Bool)

(declare-fun e!1168890 () Bool)

(declare-fun tp!517246 () Bool)

(assert (=> b!1828789 (= e!1168890 (and tp_is_empty!8149 tp!517246))))

(assert (=> b!1828213 (= tp!517107 e!1168890)))

(assert (= (and b!1828213 ((_ is Cons!20091) (t!170392 (t!170392 suffix!1667)))) b!1828789))

(declare-fun b!1828790 () Bool)

(declare-fun e!1168891 () Bool)

(declare-fun tp!517247 () Bool)

(assert (=> b!1828790 (= e!1168891 (and tp_is_empty!8149 tp!517247))))

(assert (=> b!1828225 (= tp!517120 e!1168891)))

(assert (= (and b!1828225 ((_ is Cons!20091) (t!170392 (originalCharacters!4437 token!556)))) b!1828790))

(declare-fun b_lambda!60437 () Bool)

(assert (= b_lambda!60427 (or d!559047 b_lambda!60437)))

(declare-fun bs!407723 () Bool)

(declare-fun d!559333 () Bool)

(assert (= bs!407723 (and d!559333 d!559047)))

(assert (=> bs!407723 (= (dynLambda!9990 lambda!71740 lt!709979) (= (list!8163 (dynLambda!9983 (toChars!5027 (transformation!3629 rule!559)) (dynLambda!9984 (toValue!5168 (transformation!3629 rule!559)) lt!709979))) (list!8163 lt!709979)))))

(declare-fun b_lambda!60439 () Bool)

(assert (=> (not b_lambda!60439) (not bs!407723)))

(assert (=> bs!407723 t!170432))

(declare-fun b_and!142193 () Bool)

(assert (= b_and!142157 (and (=> t!170432 result!134282) b_and!142193)))

(assert (=> bs!407723 t!170436))

(declare-fun b_and!142195 () Bool)

(assert (= b_and!142161 (and (=> t!170436 result!134286) b_and!142195)))

(assert (=> bs!407723 t!170485))

(declare-fun b_and!142197 () Bool)

(assert (= b_and!142191 (and (=> t!170485 result!134340) b_and!142197)))

(assert (=> bs!407723 t!170434))

(declare-fun b_and!142199 () Bool)

(assert (= b_and!142159 (and (=> t!170434 result!134284) b_and!142199)))

(assert (=> bs!407723 t!170442))

(declare-fun b_and!142201 () Bool)

(assert (= b_and!142163 (and (=> t!170442 result!134296) b_and!142201)))

(declare-fun b_lambda!60441 () Bool)

(assert (=> (not b_lambda!60441) (not bs!407723)))

(assert (=> bs!407723 t!170475))

(declare-fun b_and!142203 () Bool)

(assert (= b_and!142183 (and (=> t!170475 result!134332) b_and!142203)))

(assert (=> bs!407723 t!170415))

(declare-fun b_and!142205 () Bool)

(assert (= b_and!142175 (and (=> t!170415 result!134260) b_and!142205)))

(assert (=> bs!407723 t!170438))

(declare-fun b_and!142207 () Bool)

(assert (= b_and!142179 (and (=> t!170438 result!134292) b_and!142207)))

(assert (=> bs!407723 t!170417))

(declare-fun b_and!142209 () Bool)

(assert (= b_and!142177 (and (=> t!170417 result!134262) b_and!142209)))

(assert (=> bs!407723 t!170413))

(declare-fun b_and!142211 () Bool)

(assert (= b_and!142173 (and (=> t!170413 result!134256) b_and!142211)))

(assert (=> bs!407723 m!2256075))

(assert (=> bs!407723 m!2256121))

(assert (=> bs!407723 m!2256121))

(assert (=> bs!407723 m!2256127))

(assert (=> bs!407723 m!2256125))

(assert (=> bs!407723 m!2256075))

(assert (=> d!559197 d!559333))

(check-sat (not b!1828453) (not b!1828734) (not b_lambda!60439) (not b!1828730) (not b!1828767) (not b!1828753) (not b_next!51723) (not d!559185) (not d!559259) (not d!559221) (not b!1828310) (not bm!114615) (not b!1828652) (not d!559193) (not b!1828748) (not b!1828633) (not b!1828338) (not tb!111685) (not b!1828630) (not d!559123) (not b!1828716) (not b!1828764) (not b!1828013) (not b!1828776) (not d!559171) (not b!1828790) (not b!1828658) (not b!1828723) (not b!1828691) (not d!559113) (not b!1828496) (not d!559163) (not b_next!51721) (not b!1828780) (not b_lambda!60421) b_and!142209 (not b!1828433) (not b!1828692) (not b!1828660) (not b!1828370) (not b!1828710) b_and!142205 (not d!559127) (not d!559241) (not b!1828715) (not b!1828372) (not bm!114591) (not b!1828712) (not b!1828460) (not b!1828454) (not b!1828643) (not b!1828772) b_and!142211 (not b!1828483) (not bs!407723) (not b!1828755) (not bm!114616) (not b!1828650) (not d!559117) (not b!1828769) (not d!559299) (not b!1828768) (not b_next!51741) (not b_lambda!60431) (not b!1828625) (not b!1828690) (not b!1828462) (not b!1828489) (not b!1828176) (not b!1828482) (not b!1828747) (not b!1828704) (not d!559245) (not b_lambda!60441) (not b!1828486) b_and!142199 (not bm!114589) (not d!559103) (not b_next!51737) b_and!142193 (not b!1828787) (not b_lambda!60425) (not bm!114579) (not b!1828771) (not b!1828788) (not b!1828358) (not b!1828327) (not b!1828455) (not d!559175) (not b_next!51725) (not b!1828457) (not bm!114587) (not b!1828714) (not b!1828740) tp_is_empty!8149 (not b!1828456) (not b!1828333) (not b_lambda!60417) (not b_lambda!60419) (not b!1828773) (not b!1828281) (not b!1828336) (not d!559197) (not b!1828786) (not b!1828346) (not b!1828775) (not d!559173) (not bm!114586) (not b!1828741) (not b!1828450) (not b!1828726) (not b_next!51719) (not b!1828657) (not d!559237) (not d!559115) (not b!1828626) (not b!1828703) (not b!1828628) (not b!1828490) (not d!559239) (not b_lambda!60415) (not d!559141) (not b!1828339) (not b!1828449) (not d!559135) (not b!1828661) (not d!559195) (not b!1828722) (not b!1828431) (not b!1828340) (not b!1828569) (not d!559155) b_and!142201 (not b!1828752) (not d!559301) (not d!559257) (not b_next!51735) (not b!1828751) (not b_next!51727) (not tb!111669) (not b!1828306) (not d!559153) (not b!1828480) (not b_next!51729) (not b!1828727) (not d!559145) (not d!559203) (not b!1828280) (not b!1828348) (not d!559161) (not b!1828360) (not b!1828459) b_and!142197 (not b_lambda!60423) (not b!1828781) (not b!1828777) (not b!1828789) (not d!559199) (not b!1828711) (not b!1828305) (not b!1828735) (not b!1828572) b_and!142195 b_and!142203 (not b!1828739) (not b!1828687) b_and!142207 (not b!1828632) (not b!1828357) (not b!1828731) (not b!1828702) (not b!1828343) (not b!1828502) (not d!559285) (not b!1828312) (not b!1828282) (not b!1828742) (not b!1828749) (not b!1828411) (not b!1828688) (not b!1828458) (not b!1828756) (not d!559143) (not b!1828757) (not b!1828574) (not b!1828631) (not d!559167) (not d!559211) (not b!1828378) (not b_lambda!60437) (not b!1828763) (not b!1828728) (not b!1828736) (not b!1828738) (not b!1828765) (not b_next!51739) (not b!1828488) (not b!1828732) (not b!1828724) (not b!1828629) (not d!559297) (not b!1828785) (not b!1828779))
(check-sat (not b_next!51723) (not b_next!51721) b_and!142211 (not b_next!51741) b_and!142199 (not b_next!51725) (not b_next!51719) b_and!142201 b_and!142197 b_and!142195 (not b_next!51739) b_and!142209 b_and!142205 (not b_next!51737) b_and!142193 (not b_next!51735) (not b_next!51727) (not b_next!51729) b_and!142203 b_and!142207)
