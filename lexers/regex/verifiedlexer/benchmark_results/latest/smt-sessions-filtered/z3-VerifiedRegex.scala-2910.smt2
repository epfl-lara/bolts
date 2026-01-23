; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170518 () Bool)

(assert start!170518)

(declare-fun b!1733979 () Bool)

(declare-fun b_free!47515 () Bool)

(declare-fun b_next!48219 () Bool)

(assert (=> b!1733979 (= b_free!47515 (not b_next!48219))))

(declare-fun tp!494286 () Bool)

(declare-fun b_and!128179 () Bool)

(assert (=> b!1733979 (= tp!494286 b_and!128179)))

(declare-fun b_free!47517 () Bool)

(declare-fun b_next!48221 () Bool)

(assert (=> b!1733979 (= b_free!47517 (not b_next!48221))))

(declare-fun tp!494291 () Bool)

(declare-fun b_and!128181 () Bool)

(assert (=> b!1733979 (= tp!494291 b_and!128181)))

(declare-fun b!1733970 () Bool)

(declare-fun b_free!47519 () Bool)

(declare-fun b_next!48223 () Bool)

(assert (=> b!1733970 (= b_free!47519 (not b_next!48223))))

(declare-fun tp!494288 () Bool)

(declare-fun b_and!128183 () Bool)

(assert (=> b!1733970 (= tp!494288 b_and!128183)))

(declare-fun b_free!47521 () Bool)

(declare-fun b_next!48225 () Bool)

(assert (=> b!1733970 (= b_free!47521 (not b_next!48225))))

(declare-fun tp!494295 () Bool)

(declare-fun b_and!128185 () Bool)

(assert (=> b!1733970 (= tp!494295 b_and!128185)))

(declare-fun b!1733967 () Bool)

(declare-fun b_free!47523 () Bool)

(declare-fun b_next!48227 () Bool)

(assert (=> b!1733967 (= b_free!47523 (not b_next!48227))))

(declare-fun tp!494289 () Bool)

(declare-fun b_and!128187 () Bool)

(assert (=> b!1733967 (= tp!494289 b_and!128187)))

(declare-fun b_free!47525 () Bool)

(declare-fun b_next!48229 () Bool)

(assert (=> b!1733967 (= b_free!47525 (not b_next!48229))))

(declare-fun tp!494292 () Bool)

(declare-fun b_and!128189 () Bool)

(assert (=> b!1733967 (= tp!494292 b_and!128189)))

(declare-fun b!1734008 () Bool)

(declare-fun e!1109561 () Bool)

(assert (=> b!1734008 (= e!1109561 true)))

(declare-fun b!1734007 () Bool)

(declare-fun e!1109560 () Bool)

(assert (=> b!1734007 (= e!1109560 e!1109561)))

(declare-fun b!1734006 () Bool)

(declare-fun e!1109559 () Bool)

(assert (=> b!1734006 (= e!1109559 e!1109560)))

(declare-fun b!1733991 () Bool)

(assert (=> b!1733991 e!1109559))

(assert (= b!1734007 b!1734008))

(assert (= b!1734006 b!1734007))

(assert (= b!1733991 b!1734006))

(declare-fun order!11781 () Int)

(declare-fun order!11779 () Int)

(declare-fun lambda!69446 () Int)

(declare-datatypes ((List!19097 0))(
  ( (Nil!19027) (Cons!19027 (h!24428 (_ BitVec 16)) (t!161092 List!19097)) )
))
(declare-datatypes ((TokenValue!3471 0))(
  ( (FloatLiteralValue!6942 (text!24742 List!19097)) (TokenValueExt!3470 (__x!12244 Int)) (Broken!17355 (value!106005 List!19097)) (Object!3540) (End!3471) (Def!3471) (Underscore!3471) (Match!3471) (Else!3471) (Error!3471) (Case!3471) (If!3471) (Extends!3471) (Abstract!3471) (Class!3471) (Val!3471) (DelimiterValue!6942 (del!3531 List!19097)) (KeywordValue!3477 (value!106006 List!19097)) (CommentValue!6942 (value!106007 List!19097)) (WhitespaceValue!6942 (value!106008 List!19097)) (IndentationValue!3471 (value!106009 List!19097)) (String!21686) (Int32!3471) (Broken!17356 (value!106010 List!19097)) (Boolean!3472) (Unit!32904) (OperatorValue!3474 (op!3531 List!19097)) (IdentifierValue!6942 (value!106011 List!19097)) (IdentifierValue!6943 (value!106012 List!19097)) (WhitespaceValue!6943 (value!106013 List!19097)) (True!6942) (False!6942) (Broken!17357 (value!106014 List!19097)) (Broken!17358 (value!106015 List!19097)) (True!6943) (RightBrace!3471) (RightBracket!3471) (Colon!3471) (Null!3471) (Comma!3471) (LeftBracket!3471) (False!6943) (LeftBrace!3471) (ImaginaryLiteralValue!3471 (text!24743 List!19097)) (StringLiteralValue!10413 (value!106016 List!19097)) (EOFValue!3471 (value!106017 List!19097)) (IdentValue!3471 (value!106018 List!19097)) (DelimiterValue!6943 (value!106019 List!19097)) (DedentValue!3471 (value!106020 List!19097)) (NewLineValue!3471 (value!106021 List!19097)) (IntegerValue!10413 (value!106022 (_ BitVec 32)) (text!24744 List!19097)) (IntegerValue!10414 (value!106023 Int) (text!24745 List!19097)) (Times!3471) (Or!3471) (Equal!3471) (Minus!3471) (Broken!17359 (value!106024 List!19097)) (And!3471) (Div!3471) (LessEqual!3471) (Mod!3471) (Concat!8180) (Not!3471) (Plus!3471) (SpaceValue!3471 (value!106025 List!19097)) (IntegerValue!10415 (value!106026 Int) (text!24746 List!19097)) (StringLiteralValue!10414 (text!24747 List!19097)) (FloatLiteralValue!6943 (text!24748 List!19097)) (BytesLiteralValue!3471 (value!106027 List!19097)) (CommentValue!6943 (value!106028 List!19097)) (StringLiteralValue!10415 (value!106029 List!19097)) (ErrorTokenValue!3471 (msg!3532 List!19097)) )
))
(declare-datatypes ((String!21687 0))(
  ( (String!21688 (value!106030 String)) )
))
(declare-datatypes ((C!9592 0))(
  ( (C!9593 (val!5392 Int)) )
))
(declare-datatypes ((List!19098 0))(
  ( (Nil!19028) (Cons!19028 (h!24429 C!9592) (t!161093 List!19098)) )
))
(declare-datatypes ((Regex!4709 0))(
  ( (ElementMatch!4709 (c!283116 C!9592)) (Concat!8181 (regOne!9930 Regex!4709) (regTwo!9930 Regex!4709)) (EmptyExpr!4709) (Star!4709 (reg!5038 Regex!4709)) (EmptyLang!4709) (Union!4709 (regOne!9931 Regex!4709) (regTwo!9931 Regex!4709)) )
))
(declare-datatypes ((IArray!12663 0))(
  ( (IArray!12664 (innerList!6389 List!19098)) )
))
(declare-datatypes ((Conc!6329 0))(
  ( (Node!6329 (left!15205 Conc!6329) (right!15535 Conc!6329) (csize!12888 Int) (cheight!6540 Int)) (Leaf!9240 (xs!9205 IArray!12663) (csize!12889 Int)) (Empty!6329) )
))
(declare-datatypes ((BalanceConc!12602 0))(
  ( (BalanceConc!12603 (c!283117 Conc!6329)) )
))
(declare-datatypes ((TokenValueInjection!6602 0))(
  ( (TokenValueInjection!6603 (toValue!4888 Int) (toChars!4747 Int)) )
))
(declare-datatypes ((Rule!6562 0))(
  ( (Rule!6563 (regex!3381 Regex!4709) (tag!3711 String!21687) (isSeparator!3381 Bool) (transformation!3381 TokenValueInjection!6602)) )
))
(declare-datatypes ((Token!6328 0))(
  ( (Token!6329 (value!106031 TokenValue!3471) (rule!5367 Rule!6562) (size!15120 Int) (originalCharacters!4195 List!19098)) )
))
(declare-datatypes ((tuple2!18698 0))(
  ( (tuple2!18699 (_1!10751 Token!6328) (_2!10751 List!19098)) )
))
(declare-fun lt!666161 () tuple2!18698)

(declare-fun dynLambda!8912 (Int Int) Int)

(declare-fun dynLambda!8913 (Int Int) Int)

(assert (=> b!1734008 (< (dynLambda!8912 order!11779 (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) (dynLambda!8913 order!11781 lambda!69446))))

(declare-fun order!11783 () Int)

(declare-fun dynLambda!8914 (Int Int) Int)

(assert (=> b!1734008 (< (dynLambda!8914 order!11783 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) (dynLambda!8913 order!11781 lambda!69446))))

(declare-fun b!1733963 () Bool)

(declare-fun e!1109536 () Bool)

(assert (=> b!1733963 (= e!1109536 true)))

(declare-fun lt!666154 () List!19098)

(declare-fun lt!666188 () List!19098)

(declare-fun ++!5206 (List!19098 List!19098) List!19098)

(assert (=> b!1733963 (= lt!666154 (++!5206 lt!666188 (_2!10751 lt!666161)))))

(declare-fun lt!666150 () List!19098)

(assert (=> b!1733963 (= lt!666150 lt!666188)))

(declare-datatypes ((Unit!32905 0))(
  ( (Unit!32906) )
))
(declare-fun lt!666155 () Unit!32905)

(declare-fun lt!666170 () List!19098)

(declare-fun lemmaIsPrefixSameLengthThenSameList!209 (List!19098 List!19098 List!19098) Unit!32905)

(assert (=> b!1733963 (= lt!666155 (lemmaIsPrefixSameLengthThenSameList!209 lt!666150 lt!666188 lt!666170))))

(declare-fun b!1733964 () Bool)

(declare-fun e!1109538 () Bool)

(declare-fun e!1109539 () Bool)

(assert (=> b!1733964 (= e!1109538 e!1109539)))

(declare-fun res!779037 () Bool)

(assert (=> b!1733964 (=> (not res!779037) (not e!1109539))))

(declare-datatypes ((Option!3786 0))(
  ( (None!3785) (Some!3785 (v!25208 tuple2!18698)) )
))
(declare-fun lt!666183 () Option!3786)

(declare-fun isDefined!3129 (Option!3786) Bool)

(assert (=> b!1733964 (= res!779037 (isDefined!3129 lt!666183))))

(declare-datatypes ((LexerInterface!3010 0))(
  ( (LexerInterfaceExt!3007 (__x!12245 Int)) (Lexer!3008) )
))
(declare-fun thiss!24550 () LexerInterface!3010)

(declare-datatypes ((List!19099 0))(
  ( (Nil!19029) (Cons!19029 (h!24430 Rule!6562) (t!161094 List!19099)) )
))
(declare-fun rules!3447 () List!19099)

(declare-fun maxPrefix!1564 (LexerInterface!3010 List!19099 List!19098) Option!3786)

(assert (=> b!1733964 (= lt!666183 (maxPrefix!1564 thiss!24550 rules!3447 lt!666188))))

(declare-fun lt!666162 () BalanceConc!12602)

(declare-fun list!7694 (BalanceConc!12602) List!19098)

(assert (=> b!1733964 (= lt!666188 (list!7694 lt!666162))))

(declare-fun token!523 () Token!6328)

(declare-fun charsOf!2030 (Token!6328) BalanceConc!12602)

(assert (=> b!1733964 (= lt!666162 (charsOf!2030 token!523))))

(declare-fun b!1733965 () Bool)

(declare-fun e!1109548 () Bool)

(assert (=> b!1733965 (= e!1109539 e!1109548)))

(declare-fun res!779048 () Bool)

(assert (=> b!1733965 (=> (not res!779048) (not e!1109548))))

(declare-fun lt!666175 () tuple2!18698)

(assert (=> b!1733965 (= res!779048 (= (_1!10751 lt!666175) token!523))))

(declare-fun get!5694 (Option!3786) tuple2!18698)

(assert (=> b!1733965 (= lt!666175 (get!5694 lt!666183))))

(declare-fun b!1733966 () Bool)

(declare-fun res!779042 () Bool)

(assert (=> b!1733966 (=> (not res!779042) (not e!1109538))))

(declare-fun rule!422 () Rule!6562)

(declare-fun contains!3403 (List!19099 Rule!6562) Bool)

(assert (=> b!1733966 (= res!779042 (contains!3403 rules!3447 rule!422))))

(declare-fun e!1109530 () Bool)

(assert (=> b!1733967 (= e!1109530 (and tp!494289 tp!494292))))

(declare-fun res!779044 () Bool)

(assert (=> start!170518 (=> (not res!779044) (not e!1109538))))

(get-info :version)

(assert (=> start!170518 (= res!779044 ((_ is Lexer!3008) thiss!24550))))

(assert (=> start!170518 e!1109538))

(declare-fun e!1109545 () Bool)

(assert (=> start!170518 e!1109545))

(declare-fun e!1109550 () Bool)

(assert (=> start!170518 e!1109550))

(assert (=> start!170518 true))

(declare-fun e!1109552 () Bool)

(declare-fun inv!24628 (Token!6328) Bool)

(assert (=> start!170518 (and (inv!24628 token!523) e!1109552)))

(declare-fun e!1109547 () Bool)

(assert (=> start!170518 e!1109547))

(declare-fun b!1733968 () Bool)

(declare-fun res!779035 () Bool)

(declare-fun e!1109526 () Bool)

(assert (=> b!1733968 (=> res!779035 e!1109526)))

(declare-fun suffix!1421 () List!19098)

(declare-fun isEmpty!11973 (List!19098) Bool)

(assert (=> b!1733968 (= res!779035 (isEmpty!11973 suffix!1421))))

(declare-fun b!1733969 () Bool)

(declare-fun e!1109527 () Bool)

(declare-fun e!1109543 () Bool)

(assert (=> b!1733969 (= e!1109527 e!1109543)))

(declare-fun res!779043 () Bool)

(assert (=> b!1733969 (=> res!779043 e!1109543)))

(declare-fun lt!666160 () Bool)

(assert (=> b!1733969 (= res!779043 lt!666160)))

(declare-fun lt!666174 () Unit!32905)

(declare-fun e!1109549 () Unit!32905)

(assert (=> b!1733969 (= lt!666174 e!1109549)))

(declare-fun c!283114 () Bool)

(assert (=> b!1733969 (= c!283114 lt!666160)))

(declare-fun lt!666159 () Int)

(declare-fun lt!666156 () Int)

(assert (=> b!1733969 (= lt!666160 (> lt!666159 lt!666156))))

(declare-fun size!15121 (BalanceConc!12602) Int)

(assert (=> b!1733969 (= lt!666156 (size!15121 lt!666162))))

(declare-fun lt!666176 () Regex!4709)

(declare-fun matchR!2183 (Regex!4709 List!19098) Bool)

(assert (=> b!1733969 (matchR!2183 lt!666176 lt!666188)))

(declare-fun lt!666185 () Unit!32905)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!130 (LexerInterface!3010 List!19099 List!19098 Token!6328 Rule!6562 List!19098) Unit!32905)

(assert (=> b!1733969 (= lt!666185 (lemmaMaxPrefixThenMatchesRulesRegex!130 thiss!24550 rules!3447 lt!666188 token!523 rule!422 Nil!19028))))

(declare-fun e!1109537 () Bool)

(assert (=> b!1733970 (= e!1109537 (and tp!494288 tp!494295))))

(declare-fun b!1733971 () Bool)

(declare-fun res!779049 () Bool)

(assert (=> b!1733971 (=> (not res!779049) (not e!1109538))))

(declare-fun rulesInvariant!2679 (LexerInterface!3010 List!19099) Bool)

(assert (=> b!1733971 (= res!779049 (rulesInvariant!2679 thiss!24550 rules!3447))))

(declare-fun b!1733972 () Bool)

(declare-fun res!779040 () Bool)

(assert (=> b!1733972 (=> (not res!779040) (not e!1109548))))

(assert (=> b!1733972 (= res!779040 (= (rule!5367 token!523) rule!422))))

(declare-fun b!1733973 () Bool)

(declare-fun res!779055 () Bool)

(assert (=> b!1733973 (=> (not res!779055) (not e!1109548))))

(assert (=> b!1733973 (= res!779055 (isEmpty!11973 (_2!10751 lt!666175)))))

(declare-fun b!1733974 () Bool)

(declare-fun e!1109531 () Bool)

(assert (=> b!1733974 (= e!1109531 e!1109527)))

(declare-fun res!779039 () Bool)

(assert (=> b!1733974 (=> res!779039 e!1109527)))

(declare-fun lt!666153 () Option!3786)

(declare-fun lt!666164 () List!19098)

(assert (=> b!1733974 (= res!779039 (or (not (= lt!666164 (_2!10751 lt!666161))) (not (= lt!666153 (Some!3785 (tuple2!18699 (_1!10751 lt!666161) lt!666164))))))))

(assert (=> b!1733974 (= (_2!10751 lt!666161) lt!666164)))

(declare-fun lt!666180 () Unit!32905)

(declare-fun lemmaSamePrefixThenSameSuffix!766 (List!19098 List!19098 List!19098 List!19098 List!19098) Unit!32905)

(assert (=> b!1733974 (= lt!666180 (lemmaSamePrefixThenSameSuffix!766 lt!666150 (_2!10751 lt!666161) lt!666150 lt!666164 lt!666170))))

(declare-fun getSuffix!816 (List!19098 List!19098) List!19098)

(assert (=> b!1733974 (= lt!666164 (getSuffix!816 lt!666170 lt!666150))))

(declare-fun lt!666158 () Int)

(declare-fun lt!666168 () TokenValue!3471)

(assert (=> b!1733974 (= lt!666153 (Some!3785 (tuple2!18699 (Token!6329 lt!666168 (rule!5367 (_1!10751 lt!666161)) lt!666158 lt!666150) (_2!10751 lt!666161))))))

(declare-fun maxPrefixOneRule!940 (LexerInterface!3010 Rule!6562 List!19098) Option!3786)

(assert (=> b!1733974 (= lt!666153 (maxPrefixOneRule!940 thiss!24550 (rule!5367 (_1!10751 lt!666161)) lt!666170))))

(declare-fun size!15122 (List!19098) Int)

(assert (=> b!1733974 (= lt!666158 (size!15122 lt!666150))))

(declare-fun apply!5186 (TokenValueInjection!6602 BalanceConc!12602) TokenValue!3471)

(declare-fun seqFromList!2355 (List!19098) BalanceConc!12602)

(assert (=> b!1733974 (= lt!666168 (apply!5186 (transformation!3381 (rule!5367 (_1!10751 lt!666161))) (seqFromList!2355 lt!666150)))))

(declare-fun lt!666152 () Unit!32905)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!339 (LexerInterface!3010 List!19099 List!19098 List!19098 List!19098 Rule!6562) Unit!32905)

(assert (=> b!1733974 (= lt!666152 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!339 thiss!24550 rules!3447 lt!666150 lt!666170 (_2!10751 lt!666161) (rule!5367 (_1!10751 lt!666161))))))

(declare-fun b!1733975 () Bool)

(declare-fun e!1109532 () Bool)

(declare-fun e!1109534 () Bool)

(assert (=> b!1733975 (= e!1109532 e!1109534)))

(declare-fun res!779051 () Bool)

(assert (=> b!1733975 (=> res!779051 e!1109534)))

(declare-fun lt!666171 () BalanceConc!12602)

(declare-fun dynLambda!8915 (Int TokenValue!3471) BalanceConc!12602)

(declare-fun dynLambda!8916 (Int BalanceConc!12602) TokenValue!3471)

(assert (=> b!1733975 (= res!779051 (not (= (list!7694 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (dynLambda!8916 (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) lt!666171))) lt!666150)))))

(declare-fun lt!666178 () Unit!32905)

(declare-fun lemmaSemiInverse!527 (TokenValueInjection!6602 BalanceConc!12602) Unit!32905)

(assert (=> b!1733975 (= lt!666178 (lemmaSemiInverse!527 (transformation!3381 (rule!5367 (_1!10751 lt!666161))) lt!666171))))

(declare-fun b!1733976 () Bool)

(declare-fun res!779052 () Bool)

(assert (=> b!1733976 (=> (not res!779052) (not e!1109538))))

(declare-fun isEmpty!11974 (List!19099) Bool)

(assert (=> b!1733976 (= res!779052 (not (isEmpty!11974 rules!3447)))))

(declare-fun e!1109541 () Bool)

(declare-fun tp!494287 () Bool)

(declare-fun b!1733977 () Bool)

(declare-fun inv!24623 (String!21687) Bool)

(declare-fun inv!24629 (TokenValueInjection!6602) Bool)

(assert (=> b!1733977 (= e!1109550 (and tp!494287 (inv!24623 (tag!3711 rule!422)) (inv!24629 (transformation!3381 rule!422)) e!1109541))))

(declare-fun b!1733978 () Bool)

(declare-fun e!1109544 () Unit!32905)

(declare-fun Unit!32907 () Unit!32905)

(assert (=> b!1733978 (= e!1109544 Unit!32907)))

(declare-fun lt!666187 () Unit!32905)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!178 (LexerInterface!3010 List!19099 Rule!6562 List!19098 List!19098 List!19098 Rule!6562) Unit!32905)

(assert (=> b!1733978 (= lt!666187 (lemmaMaxPrefixOutputsMaxPrefix!178 thiss!24550 rules!3447 (rule!5367 (_1!10751 lt!666161)) lt!666150 lt!666170 lt!666188 rule!422))))

(assert (=> b!1733978 false))

(assert (=> b!1733979 (= e!1109541 (and tp!494286 tp!494291))))

(declare-fun b!1733980 () Bool)

(declare-fun res!779045 () Bool)

(assert (=> b!1733980 (=> res!779045 e!1109534)))

(assert (=> b!1733980 (= res!779045 (not (= lt!666171 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (value!106031 (_1!10751 lt!666161))))))))

(declare-fun b!1733981 () Bool)

(declare-fun res!779046 () Bool)

(declare-fun e!1109540 () Bool)

(assert (=> b!1733981 (=> res!779046 e!1109540)))

(assert (=> b!1733981 (= res!779046 (not (matchR!2183 (regex!3381 (rule!5367 (_1!10751 lt!666161))) lt!666150)))))

(declare-fun b!1733982 () Bool)

(declare-fun Unit!32908 () Unit!32905)

(assert (=> b!1733982 (= e!1109549 Unit!32908)))

(declare-fun b!1733983 () Bool)

(declare-fun e!1109542 () Bool)

(assert (=> b!1733983 (= e!1109542 e!1109540)))

(declare-fun res!779050 () Bool)

(assert (=> b!1733983 (=> res!779050 e!1109540)))

(declare-fun isPrefix!1622 (List!19098 List!19098) Bool)

(assert (=> b!1733983 (= res!779050 (not (isPrefix!1622 lt!666150 lt!666170)))))

(assert (=> b!1733983 (isPrefix!1622 lt!666150 (++!5206 lt!666150 (_2!10751 lt!666161)))))

(declare-fun lt!666186 () Unit!32905)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1132 (List!19098 List!19098) Unit!32905)

(assert (=> b!1733983 (= lt!666186 (lemmaConcatTwoListThenFirstIsPrefix!1132 lt!666150 (_2!10751 lt!666161)))))

(assert (=> b!1733983 (= lt!666150 (list!7694 lt!666171))))

(assert (=> b!1733983 (= lt!666171 (charsOf!2030 (_1!10751 lt!666161)))))

(declare-fun e!1109535 () Bool)

(assert (=> b!1733983 e!1109535))

(declare-fun res!779041 () Bool)

(assert (=> b!1733983 (=> (not res!779041) (not e!1109535))))

(declare-datatypes ((Option!3787 0))(
  ( (None!3786) (Some!3786 (v!25209 Rule!6562)) )
))
(declare-fun lt!666177 () Option!3787)

(declare-fun isDefined!3130 (Option!3787) Bool)

(assert (=> b!1733983 (= res!779041 (isDefined!3130 lt!666177))))

(declare-fun getRuleFromTag!431 (LexerInterface!3010 List!19099 String!21687) Option!3787)

(assert (=> b!1733983 (= lt!666177 (getRuleFromTag!431 thiss!24550 rules!3447 (tag!3711 (rule!5367 (_1!10751 lt!666161)))))))

(declare-fun lt!666181 () Unit!32905)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!431 (LexerInterface!3010 List!19099 List!19098 Token!6328) Unit!32905)

(assert (=> b!1733983 (= lt!666181 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!431 thiss!24550 rules!3447 lt!666170 (_1!10751 lt!666161)))))

(declare-fun lt!666169 () Option!3786)

(assert (=> b!1733983 (= lt!666161 (get!5694 lt!666169))))

(declare-fun lt!666148 () Unit!32905)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!534 (LexerInterface!3010 List!19099 List!19098 List!19098) Unit!32905)

(assert (=> b!1733983 (= lt!666148 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!534 thiss!24550 rules!3447 lt!666188 suffix!1421))))

(assert (=> b!1733983 (= lt!666169 (maxPrefix!1564 thiss!24550 rules!3447 lt!666170))))

(assert (=> b!1733983 (isPrefix!1622 lt!666188 lt!666170)))

(declare-fun lt!666173 () Unit!32905)

(assert (=> b!1733983 (= lt!666173 (lemmaConcatTwoListThenFirstIsPrefix!1132 lt!666188 suffix!1421))))

(assert (=> b!1733983 (= lt!666170 (++!5206 lt!666188 suffix!1421))))

(declare-fun b!1733984 () Bool)

(assert (=> b!1733984 (= e!1109548 (not e!1109526))))

(declare-fun res!779038 () Bool)

(assert (=> b!1733984 (=> res!779038 e!1109526)))

(assert (=> b!1733984 (= res!779038 (not (matchR!2183 (regex!3381 rule!422) lt!666188)))))

(declare-fun ruleValid!880 (LexerInterface!3010 Rule!6562) Bool)

(assert (=> b!1733984 (ruleValid!880 thiss!24550 rule!422)))

(declare-fun lt!666182 () Unit!32905)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!404 (LexerInterface!3010 Rule!6562 List!19099) Unit!32905)

(assert (=> b!1733984 (= lt!666182 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!404 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1733985 () Bool)

(declare-fun e!1109533 () Bool)

(declare-fun tp!494285 () Bool)

(assert (=> b!1733985 (= e!1109533 (and tp!494285 (inv!24623 (tag!3711 (h!24430 rules!3447))) (inv!24629 (transformation!3381 (h!24430 rules!3447))) e!1109537))))

(declare-fun b!1733986 () Bool)

(declare-fun Unit!32909 () Unit!32905)

(assert (=> b!1733986 (= e!1109544 Unit!32909)))

(declare-fun b!1733987 () Bool)

(assert (=> b!1733987 (= e!1109534 e!1109531)))

(declare-fun res!779036 () Bool)

(assert (=> b!1733987 (=> res!779036 e!1109531)))

(declare-fun lt!666166 () TokenValue!3471)

(assert (=> b!1733987 (= res!779036 (not (= lt!666169 (Some!3785 (tuple2!18699 (Token!6329 lt!666166 (rule!5367 (_1!10751 lt!666161)) lt!666159 lt!666150) (_2!10751 lt!666161))))))))

(assert (=> b!1733987 (= lt!666159 (size!15121 lt!666171))))

(assert (=> b!1733987 (= lt!666166 (apply!5186 (transformation!3381 (rule!5367 (_1!10751 lt!666161))) lt!666171))))

(declare-fun lt!666167 () Unit!32905)

(declare-fun lemmaCharactersSize!453 (Token!6328) Unit!32905)

(assert (=> b!1733987 (= lt!666167 (lemmaCharactersSize!453 (_1!10751 lt!666161)))))

(declare-fun lt!666172 () Unit!32905)

(declare-fun lemmaEqSameImage!306 (TokenValueInjection!6602 BalanceConc!12602 BalanceConc!12602) Unit!32905)

(assert (=> b!1733987 (= lt!666172 (lemmaEqSameImage!306 (transformation!3381 (rule!5367 (_1!10751 lt!666161))) lt!666171 (seqFromList!2355 (originalCharacters!4195 (_1!10751 lt!666161)))))))

(declare-fun b!1733988 () Bool)

(assert (=> b!1733988 (= e!1109526 e!1109542)))

(declare-fun res!779053 () Bool)

(assert (=> b!1733988 (=> res!779053 e!1109542)))

(declare-fun lt!666147 () List!19098)

(declare-fun prefixMatch!594 (Regex!4709 List!19098) Bool)

(assert (=> b!1733988 (= res!779053 (prefixMatch!594 lt!666176 lt!666147))))

(declare-fun head!3954 (List!19098) C!9592)

(assert (=> b!1733988 (= lt!666147 (++!5206 lt!666188 (Cons!19028 (head!3954 suffix!1421) Nil!19028)))))

(declare-fun rulesRegex!739 (LexerInterface!3010 List!19099) Regex!4709)

(assert (=> b!1733988 (= lt!666176 (rulesRegex!739 thiss!24550 rules!3447))))

(declare-fun b!1733989 () Bool)

(declare-fun tp!494290 () Bool)

(assert (=> b!1733989 (= e!1109547 (and e!1109533 tp!494290))))

(declare-fun b!1733990 () Bool)

(declare-fun tp_is_empty!7661 () Bool)

(declare-fun tp!494293 () Bool)

(assert (=> b!1733990 (= e!1109545 (and tp_is_empty!7661 tp!494293))))

(assert (=> b!1733991 (= e!1109540 e!1109532)))

(declare-fun res!779047 () Bool)

(assert (=> b!1733991 (=> res!779047 e!1109532)))

(declare-fun Forall!756 (Int) Bool)

(assert (=> b!1733991 (= res!779047 (not (Forall!756 lambda!69446)))))

(declare-fun lt!666145 () Unit!32905)

(declare-fun lemmaInv!588 (TokenValueInjection!6602) Unit!32905)

(assert (=> b!1733991 (= lt!666145 (lemmaInv!588 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))))))

(declare-fun b!1733992 () Bool)

(declare-fun e!1109524 () Bool)

(declare-fun tp!494296 () Bool)

(declare-fun inv!21 (TokenValue!3471) Bool)

(assert (=> b!1733992 (= e!1109552 (and (inv!21 (value!106031 token!523)) e!1109524 tp!494296))))

(declare-fun b!1733993 () Bool)

(declare-fun Unit!32910 () Unit!32905)

(assert (=> b!1733993 (= e!1109549 Unit!32910)))

(declare-fun lt!666151 () Unit!32905)

(assert (=> b!1733993 (= lt!666151 (lemmaMaxPrefixThenMatchesRulesRegex!130 thiss!24550 rules!3447 lt!666170 (_1!10751 lt!666161) (rule!5367 (_1!10751 lt!666161)) (_2!10751 lt!666161)))))

(assert (=> b!1733993 (matchR!2183 lt!666176 lt!666150)))

(declare-fun lt!666163 () List!19098)

(assert (=> b!1733993 (= lt!666163 (getSuffix!816 lt!666170 lt!666188))))

(declare-fun lt!666184 () Unit!32905)

(assert (=> b!1733993 (= lt!666184 (lemmaSamePrefixThenSameSuffix!766 lt!666188 suffix!1421 lt!666188 lt!666163 lt!666170))))

(assert (=> b!1733993 (= suffix!1421 lt!666163)))

(declare-fun lt!666157 () Unit!32905)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!217 (List!19098 List!19098) Unit!32905)

(assert (=> b!1733993 (= lt!666157 (lemmaAddHeadSuffixToPrefixStillPrefix!217 lt!666188 lt!666170))))

(assert (=> b!1733993 (isPrefix!1622 (++!5206 lt!666188 (Cons!19028 (head!3954 lt!666163) Nil!19028)) lt!666170)))

(declare-fun lt!666179 () Unit!32905)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!97 (List!19098 List!19098 List!19098) Unit!32905)

(assert (=> b!1733993 (= lt!666179 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!97 lt!666150 lt!666147 lt!666170))))

(assert (=> b!1733993 (isPrefix!1622 lt!666147 lt!666150)))

(declare-fun lt!666149 () Unit!32905)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!90 (Regex!4709 List!19098 List!19098) Unit!32905)

(assert (=> b!1733993 (= lt!666149 (lemmaNotPrefixMatchThenCannotMatchLonger!90 lt!666176 lt!666147 lt!666150))))

(assert (=> b!1733993 false))

(declare-fun tp!494294 () Bool)

(declare-fun b!1733994 () Bool)

(assert (=> b!1733994 (= e!1109524 (and tp!494294 (inv!24623 (tag!3711 (rule!5367 token!523))) (inv!24629 (transformation!3381 (rule!5367 token!523))) e!1109530))))

(declare-fun b!1733995 () Bool)

(declare-fun e!1109529 () Bool)

(declare-fun lt!666146 () Rule!6562)

(assert (=> b!1733995 (= e!1109529 (= (rule!5367 (_1!10751 lt!666161)) lt!666146))))

(declare-fun b!1733996 () Bool)

(assert (=> b!1733996 (= e!1109535 e!1109529)))

(declare-fun res!779056 () Bool)

(assert (=> b!1733996 (=> (not res!779056) (not e!1109529))))

(assert (=> b!1733996 (= res!779056 (matchR!2183 (regex!3381 lt!666146) (list!7694 (charsOf!2030 (_1!10751 lt!666161)))))))

(declare-fun get!5695 (Option!3787) Rule!6562)

(assert (=> b!1733996 (= lt!666146 (get!5695 lt!666177))))

(declare-fun b!1733997 () Bool)

(assert (=> b!1733997 (= e!1109543 e!1109536)))

(declare-fun res!779054 () Bool)

(assert (=> b!1733997 (=> res!779054 e!1109536)))

(assert (=> b!1733997 (= res!779054 (not (= lt!666159 lt!666156)))))

(declare-fun lt!666165 () Unit!32905)

(assert (=> b!1733997 (= lt!666165 e!1109544)))

(declare-fun c!283115 () Bool)

(assert (=> b!1733997 (= c!283115 (< lt!666159 lt!666156))))

(assert (= (and start!170518 res!779044) b!1733976))

(assert (= (and b!1733976 res!779052) b!1733971))

(assert (= (and b!1733971 res!779049) b!1733966))

(assert (= (and b!1733966 res!779042) b!1733964))

(assert (= (and b!1733964 res!779037) b!1733965))

(assert (= (and b!1733965 res!779048) b!1733973))

(assert (= (and b!1733973 res!779055) b!1733972))

(assert (= (and b!1733972 res!779040) b!1733984))

(assert (= (and b!1733984 (not res!779038)) b!1733968))

(assert (= (and b!1733968 (not res!779035)) b!1733988))

(assert (= (and b!1733988 (not res!779053)) b!1733983))

(assert (= (and b!1733983 res!779041) b!1733996))

(assert (= (and b!1733996 res!779056) b!1733995))

(assert (= (and b!1733983 (not res!779050)) b!1733981))

(assert (= (and b!1733981 (not res!779046)) b!1733991))

(assert (= (and b!1733991 (not res!779047)) b!1733975))

(assert (= (and b!1733975 (not res!779051)) b!1733980))

(assert (= (and b!1733980 (not res!779045)) b!1733987))

(assert (= (and b!1733987 (not res!779036)) b!1733974))

(assert (= (and b!1733974 (not res!779039)) b!1733969))

(assert (= (and b!1733969 c!283114) b!1733993))

(assert (= (and b!1733969 (not c!283114)) b!1733982))

(assert (= (and b!1733969 (not res!779043)) b!1733997))

(assert (= (and b!1733997 c!283115) b!1733978))

(assert (= (and b!1733997 (not c!283115)) b!1733986))

(assert (= (and b!1733997 (not res!779054)) b!1733963))

(assert (= (and start!170518 ((_ is Cons!19028) suffix!1421)) b!1733990))

(assert (= b!1733977 b!1733979))

(assert (= start!170518 b!1733977))

(assert (= b!1733994 b!1733967))

(assert (= b!1733992 b!1733994))

(assert (= start!170518 b!1733992))

(assert (= b!1733985 b!1733970))

(assert (= b!1733989 b!1733985))

(assert (= (and start!170518 ((_ is Cons!19029) rules!3447)) b!1733989))

(declare-fun b_lambda!55403 () Bool)

(assert (=> (not b_lambda!55403) (not b!1733975)))

(declare-fun tb!103413 () Bool)

(declare-fun t!161075 () Bool)

(assert (=> (and b!1733979 (= (toChars!4747 (transformation!3381 rule!422)) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161075) tb!103413))

(declare-fun b!1734013 () Bool)

(declare-fun e!1109564 () Bool)

(declare-fun tp!494299 () Bool)

(declare-fun inv!24630 (Conc!6329) Bool)

(assert (=> b!1734013 (= e!1109564 (and (inv!24630 (c!283117 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (dynLambda!8916 (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) lt!666171)))) tp!494299))))

(declare-fun result!124352 () Bool)

(declare-fun inv!24631 (BalanceConc!12602) Bool)

(assert (=> tb!103413 (= result!124352 (and (inv!24631 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (dynLambda!8916 (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) lt!666171))) e!1109564))))

(assert (= tb!103413 b!1734013))

(declare-fun m!2143111 () Bool)

(assert (=> b!1734013 m!2143111))

(declare-fun m!2143113 () Bool)

(assert (=> tb!103413 m!2143113))

(assert (=> b!1733975 t!161075))

(declare-fun b_and!128191 () Bool)

(assert (= b_and!128181 (and (=> t!161075 result!124352) b_and!128191)))

(declare-fun tb!103415 () Bool)

(declare-fun t!161077 () Bool)

(assert (=> (and b!1733970 (= (toChars!4747 (transformation!3381 (h!24430 rules!3447))) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161077) tb!103415))

(declare-fun result!124356 () Bool)

(assert (= result!124356 result!124352))

(assert (=> b!1733975 t!161077))

(declare-fun b_and!128193 () Bool)

(assert (= b_and!128185 (and (=> t!161077 result!124356) b_and!128193)))

(declare-fun tb!103417 () Bool)

(declare-fun t!161079 () Bool)

(assert (=> (and b!1733967 (= (toChars!4747 (transformation!3381 (rule!5367 token!523))) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161079) tb!103417))

(declare-fun result!124358 () Bool)

(assert (= result!124358 result!124352))

(assert (=> b!1733975 t!161079))

(declare-fun b_and!128195 () Bool)

(assert (= b_and!128189 (and (=> t!161079 result!124358) b_and!128195)))

(declare-fun b_lambda!55405 () Bool)

(assert (=> (not b_lambda!55405) (not b!1733975)))

(declare-fun t!161081 () Bool)

(declare-fun tb!103419 () Bool)

(assert (=> (and b!1733979 (= (toValue!4888 (transformation!3381 rule!422)) (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161081) tb!103419))

(declare-fun result!124360 () Bool)

(assert (=> tb!103419 (= result!124360 (inv!21 (dynLambda!8916 (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) lt!666171)))))

(declare-fun m!2143115 () Bool)

(assert (=> tb!103419 m!2143115))

(assert (=> b!1733975 t!161081))

(declare-fun b_and!128197 () Bool)

(assert (= b_and!128179 (and (=> t!161081 result!124360) b_and!128197)))

(declare-fun tb!103421 () Bool)

(declare-fun t!161083 () Bool)

(assert (=> (and b!1733970 (= (toValue!4888 (transformation!3381 (h!24430 rules!3447))) (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161083) tb!103421))

(declare-fun result!124364 () Bool)

(assert (= result!124364 result!124360))

(assert (=> b!1733975 t!161083))

(declare-fun b_and!128199 () Bool)

(assert (= b_and!128183 (and (=> t!161083 result!124364) b_and!128199)))

(declare-fun tb!103423 () Bool)

(declare-fun t!161085 () Bool)

(assert (=> (and b!1733967 (= (toValue!4888 (transformation!3381 (rule!5367 token!523))) (toValue!4888 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161085) tb!103423))

(declare-fun result!124366 () Bool)

(assert (= result!124366 result!124360))

(assert (=> b!1733975 t!161085))

(declare-fun b_and!128201 () Bool)

(assert (= b_and!128187 (and (=> t!161085 result!124366) b_and!128201)))

(declare-fun b_lambda!55407 () Bool)

(assert (=> (not b_lambda!55407) (not b!1733980)))

(declare-fun t!161087 () Bool)

(declare-fun tb!103425 () Bool)

(assert (=> (and b!1733979 (= (toChars!4747 (transformation!3381 rule!422)) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161087) tb!103425))

(declare-fun b!1734016 () Bool)

(declare-fun e!1109568 () Bool)

(declare-fun tp!494300 () Bool)

(assert (=> b!1734016 (= e!1109568 (and (inv!24630 (c!283117 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (value!106031 (_1!10751 lt!666161))))) tp!494300))))

(declare-fun result!124368 () Bool)

(assert (=> tb!103425 (= result!124368 (and (inv!24631 (dynLambda!8915 (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161)))) (value!106031 (_1!10751 lt!666161)))) e!1109568))))

(assert (= tb!103425 b!1734016))

(declare-fun m!2143117 () Bool)

(assert (=> b!1734016 m!2143117))

(declare-fun m!2143119 () Bool)

(assert (=> tb!103425 m!2143119))

(assert (=> b!1733980 t!161087))

(declare-fun b_and!128203 () Bool)

(assert (= b_and!128191 (and (=> t!161087 result!124368) b_and!128203)))

(declare-fun tb!103427 () Bool)

(declare-fun t!161089 () Bool)

(assert (=> (and b!1733970 (= (toChars!4747 (transformation!3381 (h!24430 rules!3447))) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161089) tb!103427))

(declare-fun result!124370 () Bool)

(assert (= result!124370 result!124368))

(assert (=> b!1733980 t!161089))

(declare-fun b_and!128205 () Bool)

(assert (= b_and!128193 (and (=> t!161089 result!124370) b_and!128205)))

(declare-fun tb!103429 () Bool)

(declare-fun t!161091 () Bool)

(assert (=> (and b!1733967 (= (toChars!4747 (transformation!3381 (rule!5367 token!523))) (toChars!4747 (transformation!3381 (rule!5367 (_1!10751 lt!666161))))) t!161091) tb!103429))

(declare-fun result!124372 () Bool)

(assert (= result!124372 result!124368))

(assert (=> b!1733980 t!161091))

(declare-fun b_and!128207 () Bool)

(assert (= b_and!128195 (and (=> t!161091 result!124372) b_and!128207)))

(declare-fun m!2143121 () Bool)

(assert (=> b!1733984 m!2143121))

(declare-fun m!2143123 () Bool)

(assert (=> b!1733984 m!2143123))

(declare-fun m!2143125 () Bool)

(assert (=> b!1733984 m!2143125))

(declare-fun m!2143127 () Bool)

(assert (=> b!1733971 m!2143127))

(declare-fun m!2143129 () Bool)

(assert (=> b!1733980 m!2143129))

(declare-fun m!2143131 () Bool)

(assert (=> b!1733964 m!2143131))

(declare-fun m!2143133 () Bool)

(assert (=> b!1733964 m!2143133))

(declare-fun m!2143135 () Bool)

(assert (=> b!1733964 m!2143135))

(declare-fun m!2143137 () Bool)

(assert (=> b!1733964 m!2143137))

(declare-fun m!2143139 () Bool)

(assert (=> b!1733985 m!2143139))

(declare-fun m!2143141 () Bool)

(assert (=> b!1733985 m!2143141))

(declare-fun m!2143143 () Bool)

(assert (=> b!1733978 m!2143143))

(declare-fun m!2143145 () Bool)

(assert (=> b!1733993 m!2143145))

(declare-fun m!2143147 () Bool)

(assert (=> b!1733993 m!2143147))

(declare-fun m!2143149 () Bool)

(assert (=> b!1733993 m!2143149))

(declare-fun m!2143151 () Bool)

(assert (=> b!1733993 m!2143151))

(declare-fun m!2143153 () Bool)

(assert (=> b!1733993 m!2143153))

(declare-fun m!2143155 () Bool)

(assert (=> b!1733993 m!2143155))

(declare-fun m!2143157 () Bool)

(assert (=> b!1733993 m!2143157))

(assert (=> b!1733993 m!2143155))

(declare-fun m!2143159 () Bool)

(assert (=> b!1733993 m!2143159))

(declare-fun m!2143161 () Bool)

(assert (=> b!1733993 m!2143161))

(declare-fun m!2143163 () Bool)

(assert (=> b!1733993 m!2143163))

(declare-fun m!2143165 () Bool)

(assert (=> b!1733993 m!2143165))

(declare-fun m!2143167 () Bool)

(assert (=> b!1733988 m!2143167))

(declare-fun m!2143169 () Bool)

(assert (=> b!1733988 m!2143169))

(declare-fun m!2143171 () Bool)

(assert (=> b!1733988 m!2143171))

(declare-fun m!2143173 () Bool)

(assert (=> b!1733988 m!2143173))

(declare-fun m!2143175 () Bool)

(assert (=> start!170518 m!2143175))

(declare-fun m!2143177 () Bool)

(assert (=> b!1733968 m!2143177))

(declare-fun m!2143179 () Bool)

(assert (=> b!1733977 m!2143179))

(declare-fun m!2143181 () Bool)

(assert (=> b!1733977 m!2143181))

(declare-fun m!2143183 () Bool)

(assert (=> b!1733991 m!2143183))

(declare-fun m!2143185 () Bool)

(assert (=> b!1733991 m!2143185))

(declare-fun m!2143187 () Bool)

(assert (=> b!1733987 m!2143187))

(declare-fun m!2143189 () Bool)

(assert (=> b!1733987 m!2143189))

(declare-fun m!2143191 () Bool)

(assert (=> b!1733987 m!2143191))

(declare-fun m!2143193 () Bool)

(assert (=> b!1733987 m!2143193))

(assert (=> b!1733987 m!2143187))

(declare-fun m!2143195 () Bool)

(assert (=> b!1733987 m!2143195))

(declare-fun m!2143197 () Bool)

(assert (=> b!1733996 m!2143197))

(assert (=> b!1733996 m!2143197))

(declare-fun m!2143199 () Bool)

(assert (=> b!1733996 m!2143199))

(assert (=> b!1733996 m!2143199))

(declare-fun m!2143201 () Bool)

(assert (=> b!1733996 m!2143201))

(declare-fun m!2143203 () Bool)

(assert (=> b!1733996 m!2143203))

(declare-fun m!2143205 () Bool)

(assert (=> b!1733981 m!2143205))

(declare-fun m!2143207 () Bool)

(assert (=> b!1733973 m!2143207))

(declare-fun m!2143209 () Bool)

(assert (=> b!1733983 m!2143209))

(declare-fun m!2143211 () Bool)

(assert (=> b!1733983 m!2143211))

(declare-fun m!2143213 () Bool)

(assert (=> b!1733983 m!2143213))

(declare-fun m!2143215 () Bool)

(assert (=> b!1733983 m!2143215))

(declare-fun m!2143217 () Bool)

(assert (=> b!1733983 m!2143217))

(declare-fun m!2143219 () Bool)

(assert (=> b!1733983 m!2143219))

(declare-fun m!2143221 () Bool)

(assert (=> b!1733983 m!2143221))

(declare-fun m!2143223 () Bool)

(assert (=> b!1733983 m!2143223))

(declare-fun m!2143225 () Bool)

(assert (=> b!1733983 m!2143225))

(declare-fun m!2143227 () Bool)

(assert (=> b!1733983 m!2143227))

(declare-fun m!2143229 () Bool)

(assert (=> b!1733983 m!2143229))

(assert (=> b!1733983 m!2143197))

(declare-fun m!2143231 () Bool)

(assert (=> b!1733983 m!2143231))

(assert (=> b!1733983 m!2143221))

(declare-fun m!2143233 () Bool)

(assert (=> b!1733983 m!2143233))

(declare-fun m!2143235 () Bool)

(assert (=> b!1733983 m!2143235))

(declare-fun m!2143237 () Bool)

(assert (=> b!1733975 m!2143237))

(assert (=> b!1733975 m!2143237))

(declare-fun m!2143239 () Bool)

(assert (=> b!1733975 m!2143239))

(assert (=> b!1733975 m!2143239))

(declare-fun m!2143241 () Bool)

(assert (=> b!1733975 m!2143241))

(declare-fun m!2143243 () Bool)

(assert (=> b!1733975 m!2143243))

(declare-fun m!2143245 () Bool)

(assert (=> b!1733994 m!2143245))

(declare-fun m!2143247 () Bool)

(assert (=> b!1733994 m!2143247))

(declare-fun m!2143249 () Bool)

(assert (=> b!1733974 m!2143249))

(declare-fun m!2143251 () Bool)

(assert (=> b!1733974 m!2143251))

(declare-fun m!2143253 () Bool)

(assert (=> b!1733974 m!2143253))

(declare-fun m!2143255 () Bool)

(assert (=> b!1733974 m!2143255))

(assert (=> b!1733974 m!2143251))

(declare-fun m!2143257 () Bool)

(assert (=> b!1733974 m!2143257))

(declare-fun m!2143259 () Bool)

(assert (=> b!1733974 m!2143259))

(declare-fun m!2143261 () Bool)

(assert (=> b!1733974 m!2143261))

(declare-fun m!2143263 () Bool)

(assert (=> b!1733976 m!2143263))

(declare-fun m!2143265 () Bool)

(assert (=> b!1733966 m!2143265))

(declare-fun m!2143267 () Bool)

(assert (=> b!1733969 m!2143267))

(declare-fun m!2143269 () Bool)

(assert (=> b!1733969 m!2143269))

(declare-fun m!2143271 () Bool)

(assert (=> b!1733969 m!2143271))

(declare-fun m!2143273 () Bool)

(assert (=> b!1733963 m!2143273))

(declare-fun m!2143275 () Bool)

(assert (=> b!1733963 m!2143275))

(declare-fun m!2143277 () Bool)

(assert (=> b!1733965 m!2143277))

(declare-fun m!2143279 () Bool)

(assert (=> b!1733992 m!2143279))

(check-sat (not b!1733989) (not b!1733996) (not b!1733965) (not b_next!48225) (not b!1733993) (not b_next!48227) (not b!1734016) (not b!1733984) (not b!1733973) b_and!128201 (not b!1733969) (not b!1733971) (not b_next!48223) (not b!1733988) (not b!1733975) (not b!1733985) (not b!1733987) b_and!128197 (not b!1733983) (not b!1733968) (not b!1734013) (not b_next!48221) (not b!1733964) b_and!128199 (not b!1733963) (not b!1733977) (not b_next!48219) b_and!128205 (not b!1733992) (not tb!103413) tp_is_empty!7661 (not b_lambda!55405) (not b!1733974) b_and!128207 (not b!1733981) (not b_lambda!55403) (not b!1733976) (not b!1733994) (not b!1733991) (not b!1733990) (not tb!103425) (not b!1733978) (not b_lambda!55407) (not tb!103419) (not start!170518) b_and!128203 (not b!1733966) (not b_next!48229))
(check-sat (not b_next!48223) b_and!128197 (not b_next!48221) (not b_next!48225) b_and!128199 (not b_next!48227) b_and!128207 b_and!128201 (not b_next!48219) b_and!128205 b_and!128203 (not b_next!48229))
