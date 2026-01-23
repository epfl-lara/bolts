; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22298 () Bool)

(assert start!22298)

(declare-fun b!208288 () Bool)

(declare-fun b_free!8081 () Bool)

(declare-fun b_next!8081 () Bool)

(assert (=> b!208288 (= b_free!8081 (not b_next!8081))))

(declare-fun tp!91148 () Bool)

(declare-fun b_and!15053 () Bool)

(assert (=> b!208288 (= tp!91148 b_and!15053)))

(declare-fun b_free!8083 () Bool)

(declare-fun b_next!8083 () Bool)

(assert (=> b!208288 (= b_free!8083 (not b_next!8083))))

(declare-fun tp!91152 () Bool)

(declare-fun b_and!15055 () Bool)

(assert (=> b!208288 (= tp!91152 b_and!15055)))

(declare-fun b!208305 () Bool)

(declare-fun b_free!8085 () Bool)

(declare-fun b_next!8085 () Bool)

(assert (=> b!208305 (= b_free!8085 (not b_next!8085))))

(declare-fun tp!91150 () Bool)

(declare-fun b_and!15057 () Bool)

(assert (=> b!208305 (= tp!91150 b_and!15057)))

(declare-fun b_free!8087 () Bool)

(declare-fun b_next!8087 () Bool)

(assert (=> b!208305 (= b_free!8087 (not b_next!8087))))

(declare-fun tp!91149 () Bool)

(declare-fun b_and!15059 () Bool)

(assert (=> b!208305 (= tp!91149 b_and!15059)))

(declare-fun b!208287 () Bool)

(declare-fun b_free!8089 () Bool)

(declare-fun b_next!8089 () Bool)

(assert (=> b!208287 (= b_free!8089 (not b_next!8089))))

(declare-fun tp!91143 () Bool)

(declare-fun b_and!15061 () Bool)

(assert (=> b!208287 (= tp!91143 b_and!15061)))

(declare-fun b_free!8091 () Bool)

(declare-fun b_next!8091 () Bool)

(assert (=> b!208287 (= b_free!8091 (not b_next!8091))))

(declare-fun tp!91142 () Bool)

(declare-fun b_and!15063 () Bool)

(assert (=> b!208287 (= tp!91142 b_and!15063)))

(declare-fun bs!21038 () Bool)

(declare-fun b!208314 () Bool)

(declare-fun b!208304 () Bool)

(assert (= bs!21038 (and b!208314 b!208304)))

(declare-fun lambda!6420 () Int)

(declare-fun lambda!6419 () Int)

(assert (=> bs!21038 (not (= lambda!6420 lambda!6419))))

(declare-fun b!208332 () Bool)

(declare-fun e!128457 () Bool)

(assert (=> b!208332 (= e!128457 true)))

(declare-fun b!208331 () Bool)

(declare-fun e!128456 () Bool)

(assert (=> b!208331 (= e!128456 e!128457)))

(declare-fun b!208330 () Bool)

(declare-fun e!128455 () Bool)

(assert (=> b!208330 (= e!128455 e!128456)))

(assert (=> b!208314 e!128455))

(assert (= b!208331 b!208332))

(assert (= b!208330 b!208331))

(declare-datatypes ((List!3341 0))(
  ( (Nil!3331) (Cons!3331 (h!8728 (_ BitVec 16)) (t!31109 List!3341)) )
))
(declare-datatypes ((TokenValue!641 0))(
  ( (FloatLiteralValue!1282 (text!4932 List!3341)) (TokenValueExt!640 (__x!2769 Int)) (Broken!3205 (value!21931 List!3341)) (Object!650) (End!641) (Def!641) (Underscore!641) (Match!641) (Else!641) (Error!641) (Case!641) (If!641) (Extends!641) (Abstract!641) (Class!641) (Val!641) (DelimiterValue!1282 (del!701 List!3341)) (KeywordValue!647 (value!21932 List!3341)) (CommentValue!1282 (value!21933 List!3341)) (WhitespaceValue!1282 (value!21934 List!3341)) (IndentationValue!641 (value!21935 List!3341)) (String!4284) (Int32!641) (Broken!3206 (value!21936 List!3341)) (Boolean!642) (Unit!3445) (OperatorValue!644 (op!701 List!3341)) (IdentifierValue!1282 (value!21937 List!3341)) (IdentifierValue!1283 (value!21938 List!3341)) (WhitespaceValue!1283 (value!21939 List!3341)) (True!1282) (False!1282) (Broken!3207 (value!21940 List!3341)) (Broken!3208 (value!21941 List!3341)) (True!1283) (RightBrace!641) (RightBracket!641) (Colon!641) (Null!641) (Comma!641) (LeftBracket!641) (False!1283) (LeftBrace!641) (ImaginaryLiteralValue!641 (text!4933 List!3341)) (StringLiteralValue!1923 (value!21942 List!3341)) (EOFValue!641 (value!21943 List!3341)) (IdentValue!641 (value!21944 List!3341)) (DelimiterValue!1283 (value!21945 List!3341)) (DedentValue!641 (value!21946 List!3341)) (NewLineValue!641 (value!21947 List!3341)) (IntegerValue!1923 (value!21948 (_ BitVec 32)) (text!4934 List!3341)) (IntegerValue!1924 (value!21949 Int) (text!4935 List!3341)) (Times!641) (Or!641) (Equal!641) (Minus!641) (Broken!3209 (value!21950 List!3341)) (And!641) (Div!641) (LessEqual!641) (Mod!641) (Concat!1484) (Not!641) (Plus!641) (SpaceValue!641 (value!21951 List!3341)) (IntegerValue!1925 (value!21952 Int) (text!4936 List!3341)) (StringLiteralValue!1924 (text!4937 List!3341)) (FloatLiteralValue!1283 (text!4938 List!3341)) (BytesLiteralValue!641 (value!21953 List!3341)) (CommentValue!1283 (value!21954 List!3341)) (StringLiteralValue!1925 (value!21955 List!3341)) (ErrorTokenValue!641 (msg!702 List!3341)) )
))
(declare-datatypes ((C!2608 0))(
  ( (C!2609 (val!1190 Int)) )
))
(declare-datatypes ((List!3342 0))(
  ( (Nil!3332) (Cons!3332 (h!8729 C!2608) (t!31110 List!3342)) )
))
(declare-datatypes ((IArray!2121 0))(
  ( (IArray!2122 (innerList!1118 List!3342)) )
))
(declare-datatypes ((Conc!1060 0))(
  ( (Node!1060 (left!2664 Conc!1060) (right!2994 Conc!1060) (csize!2350 Int) (cheight!1271 Int)) (Leaf!1709 (xs!3655 IArray!2121) (csize!2351 Int)) (Empty!1060) )
))
(declare-datatypes ((BalanceConc!2128 0))(
  ( (BalanceConc!2129 (c!39721 Conc!1060)) )
))
(declare-datatypes ((TokenValueInjection!1054 0))(
  ( (TokenValueInjection!1055 (toValue!1302 Int) (toChars!1161 Int)) )
))
(declare-datatypes ((String!4285 0))(
  ( (String!4286 (value!21956 String)) )
))
(declare-datatypes ((Regex!843 0))(
  ( (ElementMatch!843 (c!39722 C!2608)) (Concat!1485 (regOne!2198 Regex!843) (regTwo!2198 Regex!843)) (EmptyExpr!843) (Star!843 (reg!1172 Regex!843)) (EmptyLang!843) (Union!843 (regOne!2199 Regex!843) (regTwo!2199 Regex!843)) )
))
(declare-datatypes ((Rule!1038 0))(
  ( (Rule!1039 (regex!619 Regex!843) (tag!807 String!4285) (isSeparator!619 Bool) (transformation!619 TokenValueInjection!1054)) )
))
(declare-datatypes ((List!3343 0))(
  ( (Nil!3333) (Cons!3333 (h!8730 Rule!1038) (t!31111 List!3343)) )
))
(declare-fun rules!1920 () List!3343)

(get-info :version)

(assert (= (and b!208314 ((_ is Cons!3333) rules!1920)) b!208330))

(declare-fun order!2213 () Int)

(declare-fun order!2215 () Int)

(declare-fun dynLambda!1485 (Int Int) Int)

(declare-fun dynLambda!1486 (Int Int) Int)

(assert (=> b!208332 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6420))))

(declare-fun order!2217 () Int)

(declare-fun dynLambda!1487 (Int Int) Int)

(assert (=> b!208332 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6420))))

(assert (=> b!208314 true))

(declare-fun b!208274 () Bool)

(declare-fun e!128422 () Bool)

(declare-datatypes ((Token!982 0))(
  ( (Token!983 (value!21957 TokenValue!641) (rule!1146 Rule!1038) (size!2660 Int) (originalCharacters!662 List!3342)) )
))
(declare-fun lt!76348 () Token!982)

(declare-fun lt!76332 () Rule!1038)

(assert (=> b!208274 (= e!128422 (= (rule!1146 lt!76348) lt!76332))))

(declare-fun tp!91147 () Bool)

(declare-datatypes ((List!3344 0))(
  ( (Nil!3334) (Cons!3334 (h!8731 Token!982) (t!31112 List!3344)) )
))
(declare-fun tokens!465 () List!3344)

(declare-fun b!208276 () Bool)

(declare-fun e!128443 () Bool)

(declare-fun e!128448 () Bool)

(declare-fun inv!21 (TokenValue!641) Bool)

(assert (=> b!208276 (= e!128443 (and (inv!21 (value!21957 (h!8731 tokens!465))) e!128448 tp!91147))))

(declare-fun b!208277 () Bool)

(declare-fun res!95822 () Bool)

(declare-fun e!128412 () Bool)

(assert (=> b!208277 (=> (not res!95822) (not e!128412))))

(declare-fun lt!76351 () List!3342)

(declare-fun lt!76339 () List!3342)

(declare-fun list!1240 (BalanceConc!2128) List!3342)

(declare-fun seqFromList!615 (List!3342) BalanceConc!2128)

(assert (=> b!208277 (= res!95822 (= (list!1240 (seqFromList!615 lt!76351)) lt!76339))))

(declare-fun b!208278 () Bool)

(declare-fun res!95836 () Bool)

(declare-fun e!128430 () Bool)

(assert (=> b!208278 (=> (not res!95836) (not e!128430))))

(declare-fun separatorToken!170 () Token!982)

(assert (=> b!208278 (= res!95836 (isSeparator!619 (rule!1146 separatorToken!170)))))

(declare-fun b!208279 () Bool)

(declare-fun e!128420 () Bool)

(declare-datatypes ((IArray!2123 0))(
  ( (IArray!2124 (innerList!1119 List!3344)) )
))
(declare-datatypes ((Conc!1061 0))(
  ( (Node!1061 (left!2665 Conc!1061) (right!2995 Conc!1061) (csize!2352 Int) (cheight!1272 Int)) (Leaf!1710 (xs!3656 IArray!2123) (csize!2353 Int)) (Empty!1061) )
))
(declare-datatypes ((BalanceConc!2130 0))(
  ( (BalanceConc!2131 (c!39723 Conc!1061)) )
))
(declare-datatypes ((tuple2!3502 0))(
  ( (tuple2!3503 (_1!1967 BalanceConc!2130) (_2!1967 BalanceConc!2128)) )
))
(declare-fun lt!76308 () tuple2!3502)

(declare-fun isEmpty!1788 (BalanceConc!2128) Bool)

(assert (=> b!208279 (= e!128420 (isEmpty!1788 (_2!1967 lt!76308)))))

(declare-fun b!208280 () Bool)

(declare-fun res!95807 () Bool)

(declare-fun e!128429 () Bool)

(assert (=> b!208280 (=> (not res!95807) (not e!128429))))

(declare-fun isEmpty!1789 (List!3343) Bool)

(assert (=> b!208280 (= res!95807 (not (isEmpty!1789 rules!1920)))))

(declare-fun b!208281 () Bool)

(declare-fun e!128424 () Bool)

(assert (=> b!208281 (= e!128424 false)))

(declare-fun b!208282 () Bool)

(declare-fun res!95823 () Bool)

(declare-fun e!128427 () Bool)

(assert (=> b!208282 (=> res!95823 e!128427)))

(declare-datatypes ((LexerInterface!505 0))(
  ( (LexerInterfaceExt!502 (__x!2770 Int)) (Lexer!503) )
))
(declare-fun thiss!17480 () LexerInterface!505)

(declare-fun rulesProduceIndividualToken!254 (LexerInterface!505 List!3343 Token!982) Bool)

(assert (=> b!208282 (= res!95823 (not (rulesProduceIndividualToken!254 thiss!17480 rules!1920 (h!8731 tokens!465))))))

(declare-fun b!208283 () Bool)

(declare-fun e!128419 () Bool)

(assert (=> b!208283 (= e!128412 (not e!128419))))

(declare-fun res!95809 () Bool)

(assert (=> b!208283 (=> res!95809 e!128419)))

(declare-fun lt!76320 () List!3342)

(declare-fun lt!76334 () BalanceConc!2128)

(assert (=> b!208283 (= res!95809 (not (= lt!76320 (list!1240 lt!76334))))))

(declare-fun lt!76347 () BalanceConc!2130)

(declare-fun printWithSeparatorTokenWhenNeededRec!188 (LexerInterface!505 List!3343 BalanceConc!2130 Token!982 Int) BalanceConc!2128)

(assert (=> b!208283 (= lt!76334 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76347 separatorToken!170 0))))

(declare-fun seqFromList!616 (List!3344) BalanceConc!2130)

(assert (=> b!208283 (= lt!76347 (seqFromList!616 (t!31112 tokens!465)))))

(declare-fun lt!76333 () List!3342)

(declare-fun lt!76327 () List!3342)

(assert (=> b!208283 (= lt!76333 lt!76327)))

(declare-fun lt!76309 () List!3342)

(declare-fun lt!76312 () List!3342)

(declare-fun ++!816 (List!3342 List!3342) List!3342)

(assert (=> b!208283 (= lt!76327 (++!816 lt!76309 lt!76312))))

(declare-fun lt!76352 () List!3342)

(assert (=> b!208283 (= lt!76333 (++!816 (++!816 lt!76309 lt!76352) lt!76320))))

(declare-datatypes ((Unit!3446 0))(
  ( (Unit!3447) )
))
(declare-fun lt!76350 () Unit!3446)

(declare-fun lemmaConcatAssociativity!314 (List!3342 List!3342 List!3342) Unit!3446)

(assert (=> b!208283 (= lt!76350 (lemmaConcatAssociativity!314 lt!76309 lt!76352 lt!76320))))

(declare-fun charsOf!274 (Token!982) BalanceConc!2128)

(assert (=> b!208283 (= lt!76309 (list!1240 (charsOf!274 (h!8731 tokens!465))))))

(assert (=> b!208283 (= lt!76312 (++!816 lt!76352 lt!76320))))

(declare-fun printWithSeparatorTokenWhenNeededList!198 (LexerInterface!505 List!3343 List!3344 Token!982) List!3342)

(assert (=> b!208283 (= lt!76320 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170))))

(assert (=> b!208283 (= lt!76352 (list!1240 (charsOf!274 separatorToken!170)))))

(declare-fun b!208284 () Bool)

(declare-fun res!95810 () Bool)

(assert (=> b!208284 (=> (not res!95810) (not e!128430))))

(declare-fun sepAndNonSepRulesDisjointChars!208 (List!3343 List!3343) Bool)

(assert (=> b!208284 (= res!95810 (sepAndNonSepRulesDisjointChars!208 rules!1920 rules!1920))))

(declare-fun e!128413 () Bool)

(declare-fun tp!91146 () Bool)

(declare-fun b!208285 () Bool)

(declare-fun inv!4166 (String!4285) Bool)

(declare-fun inv!4169 (TokenValueInjection!1054) Bool)

(assert (=> b!208285 (= e!128448 (and tp!91146 (inv!4166 (tag!807 (rule!1146 (h!8731 tokens!465)))) (inv!4169 (transformation!619 (rule!1146 (h!8731 tokens!465)))) e!128413))))

(declare-fun b!208286 () Bool)

(declare-fun e!128436 () Bool)

(assert (=> b!208286 (= e!128436 e!128427)))

(declare-fun res!95821 () Bool)

(assert (=> b!208286 (=> res!95821 e!128427)))

(declare-fun lt!76306 () List!3342)

(declare-fun lt!76341 () List!3342)

(assert (=> b!208286 (= res!95821 (or (not (= lt!76341 lt!76306)) (not (= lt!76306 lt!76309)) (not (= lt!76341 lt!76309))))))

(declare-fun printList!189 (LexerInterface!505 List!3344) List!3342)

(assert (=> b!208286 (= lt!76306 (printList!189 thiss!17480 (Cons!3334 (h!8731 tokens!465) Nil!3334)))))

(declare-fun lt!76345 () BalanceConc!2128)

(assert (=> b!208286 (= lt!76341 (list!1240 lt!76345))))

(declare-fun lt!76324 () BalanceConc!2130)

(declare-fun printTailRec!199 (LexerInterface!505 BalanceConc!2130 Int BalanceConc!2128) BalanceConc!2128)

(assert (=> b!208286 (= lt!76345 (printTailRec!199 thiss!17480 lt!76324 0 (BalanceConc!2129 Empty!1060)))))

(declare-fun print!236 (LexerInterface!505 BalanceConc!2130) BalanceConc!2128)

(assert (=> b!208286 (= lt!76345 (print!236 thiss!17480 lt!76324))))

(declare-fun singletonSeq!171 (Token!982) BalanceConc!2130)

(assert (=> b!208286 (= lt!76324 (singletonSeq!171 (h!8731 tokens!465)))))

(declare-fun e!128446 () Bool)

(assert (=> b!208287 (= e!128446 (and tp!91143 tp!91142))))

(declare-fun e!128439 () Bool)

(assert (=> b!208288 (= e!128439 (and tp!91148 tp!91152))))

(declare-fun b!208289 () Bool)

(declare-fun e!128442 () Bool)

(declare-fun size!2661 (BalanceConc!2130) Int)

(assert (=> b!208289 (= e!128442 (<= 0 (size!2661 lt!76347)))))

(declare-fun filter!13 (List!3344 Int) List!3344)

(declare-fun list!1241 (BalanceConc!2130) List!3344)

(declare-fun lex!305 (LexerInterface!505 List!3343 BalanceConc!2128) tuple2!3502)

(assert (=> b!208289 (= (filter!13 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))) lambda!6419) (t!31112 tokens!465))))

(declare-fun lt!76326 () Unit!3446)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!4 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> b!208289 (= lt!76326 (theoremInvertabilityFromTokensSepTokenWhenNeeded!4 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!3504 0))(
  ( (tuple2!3505 (_1!1968 Token!982) (_2!1968 List!3342)) )
))
(declare-datatypes ((Option!549 0))(
  ( (None!548) (Some!548 (v!14107 tuple2!3504)) )
))
(declare-fun lt!76316 () Option!549)

(assert (=> b!208289 (= lt!76316 (Some!548 (tuple2!3505 separatorToken!170 lt!76320)))))

(declare-fun lt!76315 () Unit!3446)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!10 (LexerInterface!505 List!3343 Token!982 Rule!1038 List!3342 Rule!1038) Unit!3446)

(assert (=> b!208289 (= lt!76315 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!10 thiss!17480 rules!1920 separatorToken!170 (rule!1146 separatorToken!170) lt!76320 (rule!1146 lt!76348)))))

(declare-fun lt!76356 () Unit!3446)

(declare-fun e!128428 () Unit!3446)

(assert (=> b!208289 (= lt!76356 e!128428)))

(declare-fun c!39719 () Bool)

(declare-fun lt!76311 () C!2608)

(declare-fun contains!564 (List!3342 C!2608) Bool)

(declare-fun usedCharacters!24 (Regex!843) List!3342)

(assert (=> b!208289 (= c!39719 (contains!564 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170))) lt!76311))))

(declare-fun head!733 (List!3342) C!2608)

(assert (=> b!208289 (= lt!76311 (head!733 lt!76320))))

(declare-fun lt!76344 () Unit!3446)

(declare-fun e!128415 () Unit!3446)

(assert (=> b!208289 (= lt!76344 e!128415)))

(declare-fun c!39720 () Bool)

(declare-fun lt!76318 () C!2608)

(assert (=> b!208289 (= c!39720 (not (contains!564 (usedCharacters!24 (regex!619 (rule!1146 lt!76348))) lt!76318)))))

(declare-fun lt!76335 () List!3342)

(assert (=> b!208289 (= lt!76318 (head!733 lt!76335))))

(declare-fun e!128416 () Bool)

(assert (=> b!208289 e!128416))

(declare-fun res!95829 () Bool)

(assert (=> b!208289 (=> (not res!95829) (not e!128416))))

(declare-datatypes ((Option!550 0))(
  ( (None!549) (Some!549 (v!14108 Rule!1038)) )
))
(declare-fun lt!76338 () Option!550)

(declare-fun isDefined!400 (Option!550) Bool)

(assert (=> b!208289 (= res!95829 (isDefined!400 lt!76338))))

(declare-fun getRuleFromTag!60 (LexerInterface!505 List!3343 String!4285) Option!550)

(assert (=> b!208289 (= lt!76338 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 lt!76348))))))

(declare-fun lt!76336 () Unit!3446)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!60 (LexerInterface!505 List!3343 List!3342 Token!982) Unit!3446)

(assert (=> b!208289 (= lt!76336 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!60 thiss!17480 rules!1920 lt!76335 lt!76348))))

(assert (=> b!208289 (= lt!76335 (list!1240 (charsOf!274 lt!76348)))))

(declare-fun lt!76330 () Unit!3446)

(declare-fun forallContained!186 (List!3344 Int Token!982) Unit!3446)

(assert (=> b!208289 (= lt!76330 (forallContained!186 tokens!465 lambda!6420 lt!76348))))

(declare-fun e!128433 () Bool)

(assert (=> b!208289 e!128433))

(declare-fun res!95825 () Bool)

(assert (=> b!208289 (=> (not res!95825) (not e!128433))))

(declare-fun lt!76319 () tuple2!3502)

(assert (=> b!208289 (= res!95825 (= (size!2661 (_1!1967 lt!76319)) 1))))

(declare-fun lt!76313 () BalanceConc!2128)

(assert (=> b!208289 (= lt!76319 (lex!305 thiss!17480 rules!1920 lt!76313))))

(declare-fun lt!76329 () BalanceConc!2130)

(assert (=> b!208289 (= lt!76313 (printTailRec!199 thiss!17480 lt!76329 0 (BalanceConc!2129 Empty!1060)))))

(assert (=> b!208289 (= lt!76313 (print!236 thiss!17480 lt!76329))))

(assert (=> b!208289 (= lt!76329 (singletonSeq!171 lt!76348))))

(declare-fun e!128445 () Bool)

(assert (=> b!208289 e!128445))

(declare-fun res!95818 () Bool)

(assert (=> b!208289 (=> (not res!95818) (not e!128445))))

(declare-fun lt!76328 () Option!550)

(assert (=> b!208289 (= res!95818 (isDefined!400 lt!76328))))

(assert (=> b!208289 (= lt!76328 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 separatorToken!170))))))

(declare-fun lt!76322 () Unit!3446)

(assert (=> b!208289 (= lt!76322 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!60 thiss!17480 rules!1920 lt!76352 separatorToken!170))))

(assert (=> b!208289 e!128420))

(declare-fun res!95826 () Bool)

(assert (=> b!208289 (=> (not res!95826) (not e!128420))))

(assert (=> b!208289 (= res!95826 (= (size!2661 (_1!1967 lt!76308)) 1))))

(declare-fun lt!76337 () BalanceConc!2128)

(assert (=> b!208289 (= lt!76308 (lex!305 thiss!17480 rules!1920 lt!76337))))

(declare-fun lt!76314 () BalanceConc!2130)

(assert (=> b!208289 (= lt!76337 (printTailRec!199 thiss!17480 lt!76314 0 (BalanceConc!2129 Empty!1060)))))

(assert (=> b!208289 (= lt!76337 (print!236 thiss!17480 lt!76314))))

(assert (=> b!208289 (= lt!76314 (singletonSeq!171 separatorToken!170))))

(assert (=> b!208289 (rulesProduceIndividualToken!254 thiss!17480 rules!1920 lt!76348)))

(declare-fun lt!76317 () Unit!3446)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!72 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> b!208289 (= lt!76317 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!72 thiss!17480 rules!1920 tokens!465 lt!76348))))

(declare-fun head!734 (List!3344) Token!982)

(assert (=> b!208289 (= lt!76348 (head!734 (t!31112 tokens!465)))))

(declare-fun lt!76340 () Unit!3446)

(declare-fun e!128423 () Unit!3446)

(assert (=> b!208289 (= lt!76340 e!128423)))

(declare-fun c!39718 () Bool)

(declare-fun isEmpty!1790 (List!3344) Bool)

(assert (=> b!208289 (= c!39718 (isEmpty!1790 (t!31112 tokens!465)))))

(declare-fun maxPrefix!235 (LexerInterface!505 List!3343 List!3342) Option!549)

(assert (=> b!208289 (= lt!76316 (maxPrefix!235 thiss!17480 rules!1920 lt!76312))))

(declare-fun lt!76331 () tuple2!3504)

(assert (=> b!208289 (= lt!76312 (_2!1968 lt!76331))))

(declare-fun lt!76310 () Unit!3446)

(declare-fun lemmaSamePrefixThenSameSuffix!140 (List!3342 List!3342 List!3342 List!3342 List!3342) Unit!3446)

(assert (=> b!208289 (= lt!76310 (lemmaSamePrefixThenSameSuffix!140 lt!76309 lt!76312 lt!76309 (_2!1968 lt!76331) lt!76351))))

(declare-fun get!1012 (Option!549) tuple2!3504)

(assert (=> b!208289 (= lt!76331 (get!1012 (maxPrefix!235 thiss!17480 rules!1920 lt!76351)))))

(declare-fun isPrefix!315 (List!3342 List!3342) Bool)

(assert (=> b!208289 (isPrefix!315 lt!76309 lt!76327)))

(declare-fun lt!76307 () Unit!3446)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!210 (List!3342 List!3342) Unit!3446)

(assert (=> b!208289 (= lt!76307 (lemmaConcatTwoListThenFirstIsPrefix!210 lt!76309 lt!76312))))

(declare-fun e!128421 () Bool)

(assert (=> b!208289 e!128421))

(declare-fun res!95811 () Bool)

(assert (=> b!208289 (=> res!95811 e!128421)))

(assert (=> b!208289 (= res!95811 (isEmpty!1790 tokens!465))))

(declare-fun lt!76349 () Unit!3446)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!80 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> b!208289 (= lt!76349 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!80 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!208290 () Bool)

(assert (=> b!208290 (= e!128429 e!128430)))

(declare-fun res!95834 () Bool)

(assert (=> b!208290 (=> (not res!95834) (not e!128430))))

(declare-fun lt!76353 () BalanceConc!2130)

(declare-fun rulesProduceEachTokenIndividually!297 (LexerInterface!505 List!3343 BalanceConc!2130) Bool)

(assert (=> b!208290 (= res!95834 (rulesProduceEachTokenIndividually!297 thiss!17480 rules!1920 lt!76353))))

(assert (=> b!208290 (= lt!76353 (seqFromList!616 tokens!465))))

(declare-fun b!208291 () Bool)

(declare-fun Unit!3448 () Unit!3446)

(assert (=> b!208291 (= e!128423 Unit!3448)))

(declare-fun b!208292 () Bool)

(declare-fun tp!91141 () Bool)

(declare-fun e!128441 () Bool)

(assert (=> b!208292 (= e!128441 (and tp!91141 (inv!4166 (tag!807 (rule!1146 separatorToken!170))) (inv!4169 (transformation!619 (rule!1146 separatorToken!170))) e!128446))))

(declare-fun b!208293 () Bool)

(declare-fun Unit!3449 () Unit!3446)

(assert (=> b!208293 (= e!128428 Unit!3449)))

(declare-fun res!95831 () Bool)

(assert (=> start!22298 (=> (not res!95831) (not e!128429))))

(assert (=> start!22298 (= res!95831 ((_ is Lexer!503) thiss!17480))))

(assert (=> start!22298 e!128429))

(assert (=> start!22298 true))

(declare-fun e!128431 () Bool)

(assert (=> start!22298 e!128431))

(declare-fun e!128417 () Bool)

(declare-fun inv!4170 (Token!982) Bool)

(assert (=> start!22298 (and (inv!4170 separatorToken!170) e!128417)))

(declare-fun e!128425 () Bool)

(assert (=> start!22298 e!128425))

(declare-fun b!208275 () Bool)

(declare-fun res!95824 () Bool)

(assert (=> b!208275 (=> (not res!95824) (not e!128429))))

(declare-fun rulesInvariant!471 (LexerInterface!505 List!3343) Bool)

(assert (=> b!208275 (= res!95824 (rulesInvariant!471 thiss!17480 rules!1920))))

(declare-fun b!208294 () Bool)

(declare-fun Unit!3450 () Unit!3446)

(assert (=> b!208294 (= e!128415 Unit!3450)))

(declare-fun tp!91151 () Bool)

(declare-fun b!208295 () Bool)

(assert (=> b!208295 (= e!128425 (and (inv!4170 (h!8731 tokens!465)) e!128443 tp!91151))))

(declare-fun b!208296 () Bool)

(assert (=> b!208296 (= e!128416 e!128422)))

(declare-fun res!95819 () Bool)

(assert (=> b!208296 (=> (not res!95819) (not e!128422))))

(declare-fun matchR!181 (Regex!843 List!3342) Bool)

(assert (=> b!208296 (= res!95819 (matchR!181 (regex!619 lt!76332) lt!76335))))

(declare-fun get!1013 (Option!550) Rule!1038)

(assert (=> b!208296 (= lt!76332 (get!1013 lt!76338))))

(declare-fun b!208297 () Bool)

(declare-fun tp!91144 () Bool)

(declare-fun e!128434 () Bool)

(assert (=> b!208297 (= e!128434 (and tp!91144 (inv!4166 (tag!807 (h!8730 rules!1920))) (inv!4169 (transformation!619 (h!8730 rules!1920))) e!128439))))

(declare-fun b!208298 () Bool)

(declare-fun e!128437 () Bool)

(declare-fun lt!76343 () Rule!1038)

(assert (=> b!208298 (= e!128437 (= (rule!1146 separatorToken!170) lt!76343))))

(declare-fun b!208299 () Bool)

(declare-fun res!95806 () Bool)

(assert (=> b!208299 (=> (not res!95806) (not e!128430))))

(assert (=> b!208299 (= res!95806 (rulesProduceIndividualToken!254 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!208300 () Bool)

(declare-fun e!128435 () Bool)

(declare-fun lt!76355 () Option!549)

(assert (=> b!208300 (= e!128435 (= (_1!1968 (get!1012 lt!76355)) (head!734 tokens!465)))))

(declare-fun b!208301 () Bool)

(declare-fun Unit!3451 () Unit!3446)

(assert (=> b!208301 (= e!128428 Unit!3451)))

(declare-fun lt!76323 () Unit!3446)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!12 (LexerInterface!505 List!3343 List!3343 Rule!1038 Rule!1038 C!2608) Unit!3446)

(assert (=> b!208301 (= lt!76323 (lemmaSepRuleNotContainsCharContainedInANonSepRule!12 thiss!17480 rules!1920 rules!1920 (rule!1146 lt!76348) (rule!1146 separatorToken!170) lt!76311))))

(assert (=> b!208301 false))

(declare-fun b!208302 () Bool)

(assert (=> b!208302 (= e!128433 (isEmpty!1788 (_2!1967 lt!76319)))))

(declare-fun b!208303 () Bool)

(assert (=> b!208303 (= e!128421 e!128435)))

(declare-fun res!95820 () Bool)

(assert (=> b!208303 (=> (not res!95820) (not e!128435))))

(declare-fun isDefined!401 (Option!549) Bool)

(assert (=> b!208303 (= res!95820 (isDefined!401 lt!76355))))

(assert (=> b!208303 (= lt!76355 (maxPrefix!235 thiss!17480 rules!1920 lt!76351))))

(declare-fun res!95835 () Bool)

(assert (=> b!208304 (=> (not res!95835) (not e!128430))))

(declare-fun forall!723 (List!3344 Int) Bool)

(assert (=> b!208304 (= res!95835 (forall!723 tokens!465 lambda!6419))))

(assert (=> b!208305 (= e!128413 (and tp!91150 tp!91149))))

(declare-fun b!208306 () Bool)

(declare-fun res!95828 () Bool)

(assert (=> b!208306 (=> (not res!95828) (not e!128420))))

(declare-fun apply!554 (BalanceConc!2130 Int) Token!982)

(assert (=> b!208306 (= res!95828 (= (apply!554 (_1!1967 lt!76308) 0) separatorToken!170))))

(declare-fun b!208307 () Bool)

(declare-fun tp!91153 () Bool)

(assert (=> b!208307 (= e!128417 (and (inv!21 (value!21957 separatorToken!170)) e!128441 tp!91153))))

(declare-fun b!208308 () Bool)

(declare-fun Unit!3452 () Unit!3446)

(assert (=> b!208308 (= e!128423 Unit!3452)))

(assert (=> b!208308 false))

(declare-fun b!208309 () Bool)

(declare-fun res!95812 () Bool)

(assert (=> b!208309 (=> (not res!95812) (not e!128430))))

(assert (=> b!208309 (= res!95812 ((_ is Cons!3334) tokens!465))))

(declare-fun b!208310 () Bool)

(declare-fun e!128414 () Bool)

(assert (=> b!208310 (= e!128414 e!128442)))

(declare-fun res!95813 () Bool)

(assert (=> b!208310 (=> res!95813 e!128442)))

(declare-fun lt!76321 () Bool)

(assert (=> b!208310 (= res!95813 (not lt!76321))))

(declare-fun e!128444 () Bool)

(assert (=> b!208310 e!128444))

(declare-fun res!95814 () Bool)

(assert (=> b!208310 (=> (not res!95814) (not e!128444))))

(declare-fun lt!76354 () tuple2!3504)

(assert (=> b!208310 (= res!95814 (= (_1!1968 lt!76354) (h!8731 tokens!465)))))

(declare-fun lt!76325 () Option!549)

(assert (=> b!208310 (= lt!76354 (get!1012 lt!76325))))

(assert (=> b!208310 (isDefined!401 lt!76325)))

(assert (=> b!208310 (= lt!76325 (maxPrefix!235 thiss!17480 rules!1920 lt!76309))))

(declare-fun b!208311 () Bool)

(assert (=> b!208311 (= e!128444 (matchR!181 (regex!619 (rule!1146 (h!8731 tokens!465))) lt!76309))))

(declare-fun b!208312 () Bool)

(declare-fun tp!91145 () Bool)

(assert (=> b!208312 (= e!128431 (and e!128434 tp!91145))))

(declare-fun e!128440 () Bool)

(declare-fun b!208313 () Bool)

(assert (=> b!208313 (= e!128440 (not (= lt!76351 (++!816 lt!76309 lt!76320))))))

(assert (=> b!208314 (= e!128427 e!128414)))

(declare-fun res!95830 () Bool)

(assert (=> b!208314 (=> res!95830 e!128414)))

(declare-datatypes ((tuple2!3506 0))(
  ( (tuple2!3507 (_1!1969 Token!982) (_2!1969 BalanceConc!2128)) )
))
(declare-datatypes ((Option!551 0))(
  ( (None!550) (Some!550 (v!14109 tuple2!3506)) )
))
(declare-fun isDefined!402 (Option!551) Bool)

(declare-fun maxPrefixZipperSequence!198 (LexerInterface!505 List!3343 BalanceConc!2128) Option!551)

(assert (=> b!208314 (= res!95830 (not (isDefined!402 (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))

(declare-fun lt!76342 () Unit!3446)

(assert (=> b!208314 (= lt!76342 (forallContained!186 tokens!465 lambda!6420 (h!8731 tokens!465)))))

(assert (=> b!208314 (= lt!76309 (originalCharacters!662 (h!8731 tokens!465)))))

(declare-fun b!208315 () Bool)

(assert (=> b!208315 (= e!128419 e!128436)))

(declare-fun res!95808 () Bool)

(assert (=> b!208315 (=> res!95808 e!128436)))

(assert (=> b!208315 (= res!95808 e!128440)))

(declare-fun res!95837 () Bool)

(assert (=> b!208315 (=> (not res!95837) (not e!128440))))

(assert (=> b!208315 (= res!95837 (not lt!76321))))

(assert (=> b!208315 (= lt!76321 (= lt!76351 lt!76327))))

(declare-fun b!208316 () Bool)

(declare-fun res!95815 () Bool)

(assert (=> b!208316 (=> (not res!95815) (not e!128444))))

(declare-fun isEmpty!1791 (List!3342) Bool)

(assert (=> b!208316 (= res!95815 (isEmpty!1791 (_2!1968 lt!76354)))))

(declare-fun b!208317 () Bool)

(declare-fun res!95827 () Bool)

(assert (=> b!208317 (=> (not res!95827) (not e!128433))))

(assert (=> b!208317 (= res!95827 (= (apply!554 (_1!1967 lt!76319) 0) lt!76348))))

(declare-fun b!208318 () Bool)

(declare-fun Unit!3453 () Unit!3446)

(assert (=> b!208318 (= e!128415 Unit!3453)))

(declare-fun lt!76346 () Unit!3446)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!18 (Regex!843 List!3342 C!2608) Unit!3446)

(assert (=> b!208318 (= lt!76346 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!18 (regex!619 (rule!1146 lt!76348)) lt!76335 lt!76318))))

(declare-fun res!95833 () Bool)

(assert (=> b!208318 (= res!95833 (not (matchR!181 (regex!619 (rule!1146 lt!76348)) lt!76335)))))

(assert (=> b!208318 (=> (not res!95833) (not e!128424))))

(assert (=> b!208318 e!128424))

(declare-fun b!208319 () Bool)

(assert (=> b!208319 (= e!128445 e!128437)))

(declare-fun res!95817 () Bool)

(assert (=> b!208319 (=> (not res!95817) (not e!128437))))

(assert (=> b!208319 (= res!95817 (matchR!181 (regex!619 lt!76343) lt!76352))))

(assert (=> b!208319 (= lt!76343 (get!1013 lt!76328))))

(declare-fun b!208320 () Bool)

(assert (=> b!208320 (= e!128430 e!128412)))

(declare-fun res!95816 () Bool)

(assert (=> b!208320 (=> (not res!95816) (not e!128412))))

(assert (=> b!208320 (= res!95816 (= lt!76351 lt!76339))))

(assert (=> b!208320 (= lt!76339 (list!1240 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76353 separatorToken!170 0)))))

(assert (=> b!208320 (= lt!76351 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!208321 () Bool)

(declare-fun res!95832 () Bool)

(assert (=> b!208321 (=> res!95832 e!128427)))

(declare-fun isEmpty!1792 (BalanceConc!2130) Bool)

(assert (=> b!208321 (= res!95832 (isEmpty!1792 (_1!1967 (lex!305 thiss!17480 rules!1920 (seqFromList!615 lt!76309)))))))

(assert (= (and start!22298 res!95831) b!208280))

(assert (= (and b!208280 res!95807) b!208275))

(assert (= (and b!208275 res!95824) b!208290))

(assert (= (and b!208290 res!95834) b!208299))

(assert (= (and b!208299 res!95806) b!208278))

(assert (= (and b!208278 res!95836) b!208304))

(assert (= (and b!208304 res!95835) b!208284))

(assert (= (and b!208284 res!95810) b!208309))

(assert (= (and b!208309 res!95812) b!208320))

(assert (= (and b!208320 res!95816) b!208277))

(assert (= (and b!208277 res!95822) b!208283))

(assert (= (and b!208283 (not res!95809)) b!208315))

(assert (= (and b!208315 res!95837) b!208313))

(assert (= (and b!208315 (not res!95808)) b!208286))

(assert (= (and b!208286 (not res!95821)) b!208282))

(assert (= (and b!208282 (not res!95823)) b!208321))

(assert (= (and b!208321 (not res!95832)) b!208314))

(assert (= (and b!208314 (not res!95830)) b!208310))

(assert (= (and b!208310 res!95814) b!208316))

(assert (= (and b!208316 res!95815) b!208311))

(assert (= (and b!208310 (not res!95813)) b!208289))

(assert (= (and b!208289 (not res!95811)) b!208303))

(assert (= (and b!208303 res!95820) b!208300))

(assert (= (and b!208289 c!39718) b!208308))

(assert (= (and b!208289 (not c!39718)) b!208291))

(assert (= (and b!208289 res!95826) b!208306))

(assert (= (and b!208306 res!95828) b!208279))

(assert (= (and b!208289 res!95818) b!208319))

(assert (= (and b!208319 res!95817) b!208298))

(assert (= (and b!208289 res!95825) b!208317))

(assert (= (and b!208317 res!95827) b!208302))

(assert (= (and b!208289 res!95829) b!208296))

(assert (= (and b!208296 res!95819) b!208274))

(assert (= (and b!208289 c!39720) b!208318))

(assert (= (and b!208289 (not c!39720)) b!208294))

(assert (= (and b!208318 res!95833) b!208281))

(assert (= (and b!208289 c!39719) b!208301))

(assert (= (and b!208289 (not c!39719)) b!208293))

(assert (= b!208297 b!208288))

(assert (= b!208312 b!208297))

(assert (= (and start!22298 ((_ is Cons!3333) rules!1920)) b!208312))

(assert (= b!208292 b!208287))

(assert (= b!208307 b!208292))

(assert (= start!22298 b!208307))

(assert (= b!208285 b!208305))

(assert (= b!208276 b!208285))

(assert (= b!208295 b!208276))

(assert (= (and start!22298 ((_ is Cons!3334) tokens!465)) b!208295))

(declare-fun m!230161 () Bool)

(assert (=> start!22298 m!230161))

(declare-fun m!230163 () Bool)

(assert (=> b!208307 m!230163))

(declare-fun m!230165 () Bool)

(assert (=> b!208282 m!230165))

(declare-fun m!230167 () Bool)

(assert (=> b!208284 m!230167))

(declare-fun m!230169 () Bool)

(assert (=> b!208285 m!230169))

(declare-fun m!230171 () Bool)

(assert (=> b!208285 m!230171))

(declare-fun m!230173 () Bool)

(assert (=> b!208300 m!230173))

(declare-fun m!230175 () Bool)

(assert (=> b!208300 m!230175))

(declare-fun m!230177 () Bool)

(assert (=> b!208313 m!230177))

(declare-fun m!230179 () Bool)

(assert (=> b!208321 m!230179))

(assert (=> b!208321 m!230179))

(declare-fun m!230181 () Bool)

(assert (=> b!208321 m!230181))

(declare-fun m!230183 () Bool)

(assert (=> b!208321 m!230183))

(declare-fun m!230185 () Bool)

(assert (=> b!208289 m!230185))

(declare-fun m!230187 () Bool)

(assert (=> b!208289 m!230187))

(declare-fun m!230189 () Bool)

(assert (=> b!208289 m!230189))

(declare-fun m!230191 () Bool)

(assert (=> b!208289 m!230191))

(declare-fun m!230193 () Bool)

(assert (=> b!208289 m!230193))

(declare-fun m!230195 () Bool)

(assert (=> b!208289 m!230195))

(declare-fun m!230197 () Bool)

(assert (=> b!208289 m!230197))

(declare-fun m!230199 () Bool)

(assert (=> b!208289 m!230199))

(declare-fun m!230201 () Bool)

(assert (=> b!208289 m!230201))

(declare-fun m!230203 () Bool)

(assert (=> b!208289 m!230203))

(declare-fun m!230205 () Bool)

(assert (=> b!208289 m!230205))

(declare-fun m!230207 () Bool)

(assert (=> b!208289 m!230207))

(declare-fun m!230209 () Bool)

(assert (=> b!208289 m!230209))

(declare-fun m!230211 () Bool)

(assert (=> b!208289 m!230211))

(declare-fun m!230213 () Bool)

(assert (=> b!208289 m!230213))

(declare-fun m!230215 () Bool)

(assert (=> b!208289 m!230215))

(declare-fun m!230217 () Bool)

(assert (=> b!208289 m!230217))

(declare-fun m!230219 () Bool)

(assert (=> b!208289 m!230219))

(declare-fun m!230221 () Bool)

(assert (=> b!208289 m!230221))

(declare-fun m!230223 () Bool)

(assert (=> b!208289 m!230223))

(declare-fun m!230225 () Bool)

(assert (=> b!208289 m!230225))

(declare-fun m!230227 () Bool)

(assert (=> b!208289 m!230227))

(declare-fun m!230229 () Bool)

(assert (=> b!208289 m!230229))

(declare-fun m!230231 () Bool)

(assert (=> b!208289 m!230231))

(declare-fun m!230233 () Bool)

(assert (=> b!208289 m!230233))

(declare-fun m!230235 () Bool)

(assert (=> b!208289 m!230235))

(declare-fun m!230237 () Bool)

(assert (=> b!208289 m!230237))

(declare-fun m!230239 () Bool)

(assert (=> b!208289 m!230239))

(declare-fun m!230241 () Bool)

(assert (=> b!208289 m!230241))

(assert (=> b!208289 m!230211))

(declare-fun m!230243 () Bool)

(assert (=> b!208289 m!230243))

(declare-fun m!230245 () Bool)

(assert (=> b!208289 m!230245))

(declare-fun m!230247 () Bool)

(assert (=> b!208289 m!230247))

(assert (=> b!208289 m!230235))

(declare-fun m!230249 () Bool)

(assert (=> b!208289 m!230249))

(declare-fun m!230251 () Bool)

(assert (=> b!208289 m!230251))

(declare-fun m!230253 () Bool)

(assert (=> b!208289 m!230253))

(assert (=> b!208289 m!230215))

(declare-fun m!230255 () Bool)

(assert (=> b!208289 m!230255))

(declare-fun m!230257 () Bool)

(assert (=> b!208289 m!230257))

(declare-fun m!230259 () Bool)

(assert (=> b!208289 m!230259))

(assert (=> b!208289 m!230245))

(declare-fun m!230261 () Bool)

(assert (=> b!208289 m!230261))

(assert (=> b!208289 m!230225))

(declare-fun m!230263 () Bool)

(assert (=> b!208289 m!230263))

(declare-fun m!230265 () Bool)

(assert (=> b!208289 m!230265))

(declare-fun m!230267 () Bool)

(assert (=> b!208289 m!230267))

(declare-fun m!230269 () Bool)

(assert (=> b!208289 m!230269))

(declare-fun m!230271 () Bool)

(assert (=> b!208296 m!230271))

(declare-fun m!230273 () Bool)

(assert (=> b!208296 m!230273))

(declare-fun m!230275 () Bool)

(assert (=> b!208303 m!230275))

(assert (=> b!208303 m!230245))

(declare-fun m!230277 () Bool)

(assert (=> b!208311 m!230277))

(declare-fun m!230279 () Bool)

(assert (=> b!208297 m!230279))

(declare-fun m!230281 () Bool)

(assert (=> b!208297 m!230281))

(declare-fun m!230283 () Bool)

(assert (=> b!208280 m!230283))

(declare-fun m!230285 () Bool)

(assert (=> b!208276 m!230285))

(declare-fun m!230287 () Bool)

(assert (=> b!208318 m!230287))

(declare-fun m!230289 () Bool)

(assert (=> b!208318 m!230289))

(declare-fun m!230291 () Bool)

(assert (=> b!208292 m!230291))

(declare-fun m!230293 () Bool)

(assert (=> b!208292 m!230293))

(declare-fun m!230295 () Bool)

(assert (=> b!208275 m!230295))

(declare-fun m!230297 () Bool)

(assert (=> b!208279 m!230297))

(declare-fun m!230299 () Bool)

(assert (=> b!208306 m!230299))

(declare-fun m!230301 () Bool)

(assert (=> b!208290 m!230301))

(declare-fun m!230303 () Bool)

(assert (=> b!208290 m!230303))

(declare-fun m!230305 () Bool)

(assert (=> b!208316 m!230305))

(declare-fun m!230307 () Bool)

(assert (=> b!208299 m!230307))

(declare-fun m!230309 () Bool)

(assert (=> b!208317 m!230309))

(declare-fun m!230311 () Bool)

(assert (=> b!208295 m!230311))

(declare-fun m!230313 () Bool)

(assert (=> b!208277 m!230313))

(assert (=> b!208277 m!230313))

(declare-fun m!230315 () Bool)

(assert (=> b!208277 m!230315))

(declare-fun m!230317 () Bool)

(assert (=> b!208314 m!230317))

(assert (=> b!208314 m!230317))

(declare-fun m!230319 () Bool)

(assert (=> b!208314 m!230319))

(assert (=> b!208314 m!230319))

(declare-fun m!230321 () Bool)

(assert (=> b!208314 m!230321))

(declare-fun m!230323 () Bool)

(assert (=> b!208314 m!230323))

(declare-fun m!230325 () Bool)

(assert (=> b!208320 m!230325))

(assert (=> b!208320 m!230325))

(declare-fun m!230327 () Bool)

(assert (=> b!208320 m!230327))

(declare-fun m!230329 () Bool)

(assert (=> b!208320 m!230329))

(declare-fun m!230331 () Bool)

(assert (=> b!208310 m!230331))

(declare-fun m!230333 () Bool)

(assert (=> b!208310 m!230333))

(declare-fun m!230335 () Bool)

(assert (=> b!208310 m!230335))

(declare-fun m!230337 () Bool)

(assert (=> b!208301 m!230337))

(declare-fun m!230339 () Bool)

(assert (=> b!208304 m!230339))

(declare-fun m!230341 () Bool)

(assert (=> b!208283 m!230341))

(declare-fun m!230343 () Bool)

(assert (=> b!208283 m!230343))

(declare-fun m!230345 () Bool)

(assert (=> b!208283 m!230345))

(declare-fun m!230347 () Bool)

(assert (=> b!208283 m!230347))

(declare-fun m!230349 () Bool)

(assert (=> b!208283 m!230349))

(declare-fun m!230351 () Bool)

(assert (=> b!208283 m!230351))

(declare-fun m!230353 () Bool)

(assert (=> b!208283 m!230353))

(assert (=> b!208283 m!230351))

(declare-fun m!230355 () Bool)

(assert (=> b!208283 m!230355))

(declare-fun m!230357 () Bool)

(assert (=> b!208283 m!230357))

(declare-fun m!230359 () Bool)

(assert (=> b!208283 m!230359))

(assert (=> b!208283 m!230347))

(declare-fun m!230361 () Bool)

(assert (=> b!208283 m!230361))

(declare-fun m!230363 () Bool)

(assert (=> b!208283 m!230363))

(assert (=> b!208283 m!230355))

(declare-fun m!230365 () Bool)

(assert (=> b!208283 m!230365))

(declare-fun m!230367 () Bool)

(assert (=> b!208286 m!230367))

(declare-fun m!230369 () Bool)

(assert (=> b!208286 m!230369))

(declare-fun m!230371 () Bool)

(assert (=> b!208286 m!230371))

(declare-fun m!230373 () Bool)

(assert (=> b!208286 m!230373))

(declare-fun m!230375 () Bool)

(assert (=> b!208286 m!230375))

(declare-fun m!230377 () Bool)

(assert (=> b!208319 m!230377))

(declare-fun m!230379 () Bool)

(assert (=> b!208319 m!230379))

(declare-fun m!230381 () Bool)

(assert (=> b!208302 m!230381))

(check-sat (not b!208282) b_and!15059 (not b_next!8087) (not b!208295) (not start!22298) (not b_next!8085) (not b!208303) (not b!208283) (not b!208313) (not b!208319) (not b_next!8089) (not b!208285) (not b_next!8081) (not b_next!8091) (not b!208311) (not b!208280) b_and!15063 (not b!208312) (not b!208297) (not b!208304) (not b!208300) (not b!208286) (not b!208299) (not b_next!8083) (not b!208318) (not b!208317) (not b!208316) (not b!208296) b_and!15061 (not b!208302) (not b!208284) b_and!15057 (not b!208307) (not b!208290) (not b!208314) (not b!208275) (not b!208292) (not b!208321) b_and!15053 (not b!208320) (not b!208279) (not b!208330) (not b!208276) b_and!15055 (not b!208310) (not b!208301) (not b!208289) (not b!208277) (not b!208306))
(check-sat (not b_next!8089) b_and!15063 (not b_next!8083) b_and!15061 b_and!15057 b_and!15059 (not b_next!8087) b_and!15053 b_and!15055 (not b_next!8085) (not b_next!8081) (not b_next!8091))
(get-model)

(declare-fun d!54631 () Bool)

(declare-fun isEmpty!1794 (Option!551) Bool)

(assert (=> d!54631 (= (isDefined!402 (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465))))) (not (isEmpty!1794 (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))

(declare-fun bs!21042 () Bool)

(assert (= bs!21042 d!54631))

(assert (=> bs!21042 m!230319))

(declare-fun m!230461 () Bool)

(assert (=> bs!21042 m!230461))

(assert (=> b!208314 d!54631))

(declare-fun b!208513 () Bool)

(declare-fun e!128553 () Bool)

(declare-fun e!128555 () Bool)

(assert (=> b!208513 (= e!128553 e!128555)))

(declare-fun res!95938 () Bool)

(assert (=> b!208513 (=> (not res!95938) (not e!128555))))

(declare-fun lt!76425 () Option!551)

(declare-fun get!1014 (Option!551) tuple2!3506)

(assert (=> b!208513 (= res!95938 (= (_1!1969 (get!1014 lt!76425)) (_1!1968 (get!1012 (maxPrefix!235 thiss!17480 rules!1920 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))))

(declare-fun b!208514 () Bool)

(declare-fun e!128556 () Bool)

(declare-fun e!128557 () Bool)

(assert (=> b!208514 (= e!128556 e!128557)))

(declare-fun res!95936 () Bool)

(assert (=> b!208514 (=> (not res!95936) (not e!128557))))

(declare-fun maxPrefixZipper!72 (LexerInterface!505 List!3343 List!3342) Option!549)

(assert (=> b!208514 (= res!95936 (= (_1!1969 (get!1014 lt!76425)) (_1!1968 (get!1012 (maxPrefixZipper!72 thiss!17480 rules!1920 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))))

(declare-fun b!208515 () Bool)

(declare-fun e!128552 () Option!551)

(declare-fun call!10041 () Option!551)

(assert (=> b!208515 (= e!128552 call!10041)))

(declare-fun b!208516 () Bool)

(assert (=> b!208516 (= e!128555 (= (list!1240 (_2!1969 (get!1014 lt!76425))) (_2!1968 (get!1012 (maxPrefix!235 thiss!17480 rules!1920 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))))

(declare-fun b!208517 () Bool)

(declare-fun lt!76429 () Option!551)

(declare-fun lt!76424 () Option!551)

(assert (=> b!208517 (= e!128552 (ite (and ((_ is None!550) lt!76429) ((_ is None!550) lt!76424)) None!550 (ite ((_ is None!550) lt!76424) lt!76429 (ite ((_ is None!550) lt!76429) lt!76424 (ite (>= (size!2660 (_1!1969 (v!14109 lt!76429))) (size!2660 (_1!1969 (v!14109 lt!76424)))) lt!76429 lt!76424)))))))

(assert (=> b!208517 (= lt!76429 call!10041)))

(assert (=> b!208517 (= lt!76424 (maxPrefixZipperSequence!198 thiss!17480 (t!31111 rules!1920) (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))

(declare-fun bm!10036 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!73 (LexerInterface!505 Rule!1038 BalanceConc!2128) Option!551)

(assert (=> bm!10036 (= call!10041 (maxPrefixOneRuleZipperSequence!73 thiss!17480 (h!8730 rules!1920) (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))

(declare-fun b!208518 () Bool)

(declare-fun e!128554 () Bool)

(assert (=> b!208518 (= e!128554 e!128553)))

(declare-fun res!95935 () Bool)

(assert (=> b!208518 (=> res!95935 e!128553)))

(assert (=> b!208518 (= res!95935 (not (isDefined!402 lt!76425)))))

(declare-fun d!54633 () Bool)

(assert (=> d!54633 e!128554))

(declare-fun res!95939 () Bool)

(assert (=> d!54633 (=> (not res!95939) (not e!128554))))

(assert (=> d!54633 (= res!95939 (= (isDefined!402 lt!76425) (isDefined!401 (maxPrefixZipper!72 thiss!17480 rules!1920 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465))))))))))

(assert (=> d!54633 (= lt!76425 e!128552)))

(declare-fun c!39768 () Bool)

(assert (=> d!54633 (= c!39768 (and ((_ is Cons!3333) rules!1920) ((_ is Nil!3333) (t!31111 rules!1920))))))

(declare-fun lt!76423 () Unit!3446)

(declare-fun lt!76428 () Unit!3446)

(assert (=> d!54633 (= lt!76423 lt!76428)))

(declare-fun lt!76426 () List!3342)

(declare-fun lt!76427 () List!3342)

(assert (=> d!54633 (isPrefix!315 lt!76426 lt!76427)))

(declare-fun lemmaIsPrefixRefl!169 (List!3342 List!3342) Unit!3446)

(assert (=> d!54633 (= lt!76428 (lemmaIsPrefixRefl!169 lt!76426 lt!76427))))

(assert (=> d!54633 (= lt!76427 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))

(assert (=> d!54633 (= lt!76426 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))

(declare-fun rulesValidInductive!158 (LexerInterface!505 List!3343) Bool)

(assert (=> d!54633 (rulesValidInductive!158 thiss!17480 rules!1920)))

(assert (=> d!54633 (= (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))) lt!76425)))

(declare-fun b!208519 () Bool)

(declare-fun res!95940 () Bool)

(assert (=> b!208519 (=> (not res!95940) (not e!128554))))

(assert (=> b!208519 (= res!95940 e!128556)))

(declare-fun res!95937 () Bool)

(assert (=> b!208519 (=> res!95937 e!128556)))

(assert (=> b!208519 (= res!95937 (not (isDefined!402 lt!76425)))))

(declare-fun b!208520 () Bool)

(assert (=> b!208520 (= e!128557 (= (list!1240 (_2!1969 (get!1014 lt!76425))) (_2!1968 (get!1012 (maxPrefixZipper!72 thiss!17480 rules!1920 (list!1240 (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465)))))))))))

(assert (= (and d!54633 c!39768) b!208515))

(assert (= (and d!54633 (not c!39768)) b!208517))

(assert (= (or b!208515 b!208517) bm!10036))

(assert (= (and d!54633 res!95939) b!208519))

(assert (= (and b!208519 (not res!95937)) b!208514))

(assert (= (and b!208514 res!95936) b!208520))

(assert (= (and b!208519 res!95940) b!208518))

(assert (= (and b!208518 (not res!95935)) b!208513))

(assert (= (and b!208513 res!95938) b!208516))

(declare-fun m!230553 () Bool)

(assert (=> b!208513 m!230553))

(assert (=> b!208513 m!230317))

(declare-fun m!230555 () Bool)

(assert (=> b!208513 m!230555))

(assert (=> b!208513 m!230555))

(declare-fun m!230557 () Bool)

(assert (=> b!208513 m!230557))

(assert (=> b!208513 m!230557))

(declare-fun m!230559 () Bool)

(assert (=> b!208513 m!230559))

(declare-fun m!230561 () Bool)

(assert (=> b!208519 m!230561))

(assert (=> b!208514 m!230553))

(assert (=> b!208514 m!230317))

(assert (=> b!208514 m!230555))

(assert (=> b!208514 m!230555))

(declare-fun m!230563 () Bool)

(assert (=> b!208514 m!230563))

(assert (=> b!208514 m!230563))

(declare-fun m!230565 () Bool)

(assert (=> b!208514 m!230565))

(assert (=> b!208517 m!230317))

(declare-fun m!230567 () Bool)

(assert (=> b!208517 m!230567))

(assert (=> b!208518 m!230561))

(assert (=> b!208516 m!230553))

(assert (=> b!208516 m!230557))

(assert (=> b!208516 m!230559))

(declare-fun m!230569 () Bool)

(assert (=> b!208516 m!230569))

(assert (=> b!208516 m!230317))

(assert (=> b!208516 m!230555))

(assert (=> b!208516 m!230555))

(assert (=> b!208516 m!230557))

(assert (=> b!208520 m!230555))

(assert (=> b!208520 m!230563))

(assert (=> b!208520 m!230553))

(assert (=> b!208520 m!230563))

(assert (=> b!208520 m!230565))

(assert (=> b!208520 m!230569))

(assert (=> b!208520 m!230317))

(assert (=> b!208520 m!230555))

(declare-fun m!230571 () Bool)

(assert (=> d!54633 m!230571))

(assert (=> d!54633 m!230555))

(assert (=> d!54633 m!230563))

(assert (=> d!54633 m!230563))

(declare-fun m!230573 () Bool)

(assert (=> d!54633 m!230573))

(assert (=> d!54633 m!230317))

(assert (=> d!54633 m!230555))

(assert (=> d!54633 m!230561))

(declare-fun m!230575 () Bool)

(assert (=> d!54633 m!230575))

(declare-fun m!230577 () Bool)

(assert (=> d!54633 m!230577))

(assert (=> bm!10036 m!230317))

(declare-fun m!230579 () Bool)

(assert (=> bm!10036 m!230579))

(assert (=> b!208314 d!54633))

(declare-fun d!54655 () Bool)

(declare-fun fromListB!227 (List!3342) BalanceConc!2128)

(assert (=> d!54655 (= (seqFromList!615 (originalCharacters!662 (h!8731 tokens!465))) (fromListB!227 (originalCharacters!662 (h!8731 tokens!465))))))

(declare-fun bs!21049 () Bool)

(assert (= bs!21049 d!54655))

(declare-fun m!230581 () Bool)

(assert (=> bs!21049 m!230581))

(assert (=> b!208314 d!54655))

(declare-fun d!54657 () Bool)

(declare-fun dynLambda!1489 (Int Token!982) Bool)

(assert (=> d!54657 (dynLambda!1489 lambda!6420 (h!8731 tokens!465))))

(declare-fun lt!76432 () Unit!3446)

(declare-fun choose!2041 (List!3344 Int Token!982) Unit!3446)

(assert (=> d!54657 (= lt!76432 (choose!2041 tokens!465 lambda!6420 (h!8731 tokens!465)))))

(declare-fun e!128560 () Bool)

(assert (=> d!54657 e!128560))

(declare-fun res!95943 () Bool)

(assert (=> d!54657 (=> (not res!95943) (not e!128560))))

(assert (=> d!54657 (= res!95943 (forall!723 tokens!465 lambda!6420))))

(assert (=> d!54657 (= (forallContained!186 tokens!465 lambda!6420 (h!8731 tokens!465)) lt!76432)))

(declare-fun b!208523 () Bool)

(declare-fun contains!566 (List!3344 Token!982) Bool)

(assert (=> b!208523 (= e!128560 (contains!566 tokens!465 (h!8731 tokens!465)))))

(assert (= (and d!54657 res!95943) b!208523))

(declare-fun b_lambda!5361 () Bool)

(assert (=> (not b_lambda!5361) (not d!54657)))

(declare-fun m!230583 () Bool)

(assert (=> d!54657 m!230583))

(declare-fun m!230585 () Bool)

(assert (=> d!54657 m!230585))

(declare-fun m!230587 () Bool)

(assert (=> d!54657 m!230587))

(declare-fun m!230589 () Bool)

(assert (=> b!208523 m!230589))

(assert (=> b!208314 d!54657))

(declare-fun d!54659 () Bool)

(declare-fun res!95948 () Bool)

(declare-fun e!128563 () Bool)

(assert (=> d!54659 (=> (not res!95948) (not e!128563))))

(assert (=> d!54659 (= res!95948 (not (isEmpty!1791 (originalCharacters!662 separatorToken!170))))))

(assert (=> d!54659 (= (inv!4170 separatorToken!170) e!128563)))

(declare-fun b!208528 () Bool)

(declare-fun res!95949 () Bool)

(assert (=> b!208528 (=> (not res!95949) (not e!128563))))

(declare-fun dynLambda!1490 (Int TokenValue!641) BalanceConc!2128)

(assert (=> b!208528 (= res!95949 (= (originalCharacters!662 separatorToken!170) (list!1240 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (value!21957 separatorToken!170)))))))

(declare-fun b!208529 () Bool)

(declare-fun size!2663 (List!3342) Int)

(assert (=> b!208529 (= e!128563 (= (size!2660 separatorToken!170) (size!2663 (originalCharacters!662 separatorToken!170))))))

(assert (= (and d!54659 res!95948) b!208528))

(assert (= (and b!208528 res!95949) b!208529))

(declare-fun b_lambda!5363 () Bool)

(assert (=> (not b_lambda!5363) (not b!208528)))

(declare-fun t!31122 () Bool)

(declare-fun tb!9555 () Bool)

(assert (=> (and b!208288 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170)))) t!31122) tb!9555))

(declare-fun b!208534 () Bool)

(declare-fun e!128566 () Bool)

(declare-fun tp!91159 () Bool)

(declare-fun inv!4173 (Conc!1060) Bool)

(assert (=> b!208534 (= e!128566 (and (inv!4173 (c!39721 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (value!21957 separatorToken!170)))) tp!91159))))

(declare-fun result!12600 () Bool)

(declare-fun inv!4174 (BalanceConc!2128) Bool)

(assert (=> tb!9555 (= result!12600 (and (inv!4174 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (value!21957 separatorToken!170))) e!128566))))

(assert (= tb!9555 b!208534))

(declare-fun m!230591 () Bool)

(assert (=> b!208534 m!230591))

(declare-fun m!230593 () Bool)

(assert (=> tb!9555 m!230593))

(assert (=> b!208528 t!31122))

(declare-fun b_and!15071 () Bool)

(assert (= b_and!15055 (and (=> t!31122 result!12600) b_and!15071)))

(declare-fun tb!9557 () Bool)

(declare-fun t!31124 () Bool)

(assert (=> (and b!208305 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170)))) t!31124) tb!9557))

(declare-fun result!12604 () Bool)

(assert (= result!12604 result!12600))

(assert (=> b!208528 t!31124))

(declare-fun b_and!15073 () Bool)

(assert (= b_and!15059 (and (=> t!31124 result!12604) b_and!15073)))

(declare-fun t!31126 () Bool)

(declare-fun tb!9559 () Bool)

(assert (=> (and b!208287 (= (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170)))) t!31126) tb!9559))

(declare-fun result!12606 () Bool)

(assert (= result!12606 result!12600))

(assert (=> b!208528 t!31126))

(declare-fun b_and!15075 () Bool)

(assert (= b_and!15063 (and (=> t!31126 result!12606) b_and!15075)))

(declare-fun m!230595 () Bool)

(assert (=> d!54659 m!230595))

(declare-fun m!230597 () Bool)

(assert (=> b!208528 m!230597))

(assert (=> b!208528 m!230597))

(declare-fun m!230599 () Bool)

(assert (=> b!208528 m!230599))

(declare-fun m!230601 () Bool)

(assert (=> b!208529 m!230601))

(assert (=> start!22298 d!54659))

(declare-fun d!54661 () Bool)

(assert (=> d!54661 (= (inv!4166 (tag!807 (rule!1146 separatorToken!170))) (= (mod (str.len (value!21956 (tag!807 (rule!1146 separatorToken!170)))) 2) 0))))

(assert (=> b!208292 d!54661))

(declare-fun d!54663 () Bool)

(declare-fun res!95952 () Bool)

(declare-fun e!128569 () Bool)

(assert (=> d!54663 (=> (not res!95952) (not e!128569))))

(declare-fun semiInverseModEq!211 (Int Int) Bool)

(assert (=> d!54663 (= res!95952 (semiInverseModEq!211 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toValue!1302 (transformation!619 (rule!1146 separatorToken!170)))))))

(assert (=> d!54663 (= (inv!4169 (transformation!619 (rule!1146 separatorToken!170))) e!128569)))

(declare-fun b!208537 () Bool)

(declare-fun equivClasses!194 (Int Int) Bool)

(assert (=> b!208537 (= e!128569 (equivClasses!194 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toValue!1302 (transformation!619 (rule!1146 separatorToken!170)))))))

(assert (= (and d!54663 res!95952) b!208537))

(declare-fun m!230603 () Bool)

(assert (=> d!54663 m!230603))

(declare-fun m!230605 () Bool)

(assert (=> b!208537 m!230605))

(assert (=> b!208292 d!54663))

(declare-fun d!54665 () Bool)

(declare-fun lt!76435 () Token!982)

(declare-fun apply!557 (List!3344 Int) Token!982)

(assert (=> d!54665 (= lt!76435 (apply!557 (list!1241 (_1!1967 lt!76319)) 0))))

(declare-fun apply!558 (Conc!1061 Int) Token!982)

(assert (=> d!54665 (= lt!76435 (apply!558 (c!39723 (_1!1967 lt!76319)) 0))))

(declare-fun e!128572 () Bool)

(assert (=> d!54665 e!128572))

(declare-fun res!95955 () Bool)

(assert (=> d!54665 (=> (not res!95955) (not e!128572))))

(assert (=> d!54665 (= res!95955 (<= 0 0))))

(assert (=> d!54665 (= (apply!554 (_1!1967 lt!76319) 0) lt!76435)))

(declare-fun b!208540 () Bool)

(assert (=> b!208540 (= e!128572 (< 0 (size!2661 (_1!1967 lt!76319))))))

(assert (= (and d!54665 res!95955) b!208540))

(declare-fun m!230607 () Bool)

(assert (=> d!54665 m!230607))

(assert (=> d!54665 m!230607))

(declare-fun m!230609 () Bool)

(assert (=> d!54665 m!230609))

(declare-fun m!230611 () Bool)

(assert (=> d!54665 m!230611))

(assert (=> b!208540 m!230253))

(assert (=> b!208317 d!54665))

(declare-fun d!54667 () Bool)

(declare-fun res!95956 () Bool)

(declare-fun e!128573 () Bool)

(assert (=> d!54667 (=> (not res!95956) (not e!128573))))

(assert (=> d!54667 (= res!95956 (not (isEmpty!1791 (originalCharacters!662 (h!8731 tokens!465)))))))

(assert (=> d!54667 (= (inv!4170 (h!8731 tokens!465)) e!128573)))

(declare-fun b!208541 () Bool)

(declare-fun res!95957 () Bool)

(assert (=> b!208541 (=> (not res!95957) (not e!128573))))

(assert (=> b!208541 (= res!95957 (= (originalCharacters!662 (h!8731 tokens!465)) (list!1240 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (value!21957 (h!8731 tokens!465))))))))

(declare-fun b!208542 () Bool)

(assert (=> b!208542 (= e!128573 (= (size!2660 (h!8731 tokens!465)) (size!2663 (originalCharacters!662 (h!8731 tokens!465)))))))

(assert (= (and d!54667 res!95956) b!208541))

(assert (= (and b!208541 res!95957) b!208542))

(declare-fun b_lambda!5365 () Bool)

(assert (=> (not b_lambda!5365) (not b!208541)))

(declare-fun t!31128 () Bool)

(declare-fun tb!9561 () Bool)

(assert (=> (and b!208288 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465))))) t!31128) tb!9561))

(declare-fun b!208543 () Bool)

(declare-fun e!128574 () Bool)

(declare-fun tp!91160 () Bool)

(assert (=> b!208543 (= e!128574 (and (inv!4173 (c!39721 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (value!21957 (h!8731 tokens!465))))) tp!91160))))

(declare-fun result!12608 () Bool)

(assert (=> tb!9561 (= result!12608 (and (inv!4174 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (value!21957 (h!8731 tokens!465)))) e!128574))))

(assert (= tb!9561 b!208543))

(declare-fun m!230613 () Bool)

(assert (=> b!208543 m!230613))

(declare-fun m!230615 () Bool)

(assert (=> tb!9561 m!230615))

(assert (=> b!208541 t!31128))

(declare-fun b_and!15077 () Bool)

(assert (= b_and!15071 (and (=> t!31128 result!12608) b_and!15077)))

(declare-fun t!31130 () Bool)

(declare-fun tb!9563 () Bool)

(assert (=> (and b!208305 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465))))) t!31130) tb!9563))

(declare-fun result!12610 () Bool)

(assert (= result!12610 result!12608))

(assert (=> b!208541 t!31130))

(declare-fun b_and!15079 () Bool)

(assert (= b_and!15073 (and (=> t!31130 result!12610) b_and!15079)))

(declare-fun tb!9565 () Bool)

(declare-fun t!31132 () Bool)

(assert (=> (and b!208287 (= (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465))))) t!31132) tb!9565))

(declare-fun result!12612 () Bool)

(assert (= result!12612 result!12608))

(assert (=> b!208541 t!31132))

(declare-fun b_and!15081 () Bool)

(assert (= b_and!15075 (and (=> t!31132 result!12612) b_and!15081)))

(declare-fun m!230617 () Bool)

(assert (=> d!54667 m!230617))

(declare-fun m!230619 () Bool)

(assert (=> b!208541 m!230619))

(assert (=> b!208541 m!230619))

(declare-fun m!230621 () Bool)

(assert (=> b!208541 m!230621))

(declare-fun m!230623 () Bool)

(assert (=> b!208542 m!230623))

(assert (=> b!208295 d!54667))

(declare-fun d!54669 () Bool)

(assert (=> d!54669 (= (isEmpty!1791 (_2!1968 lt!76354)) ((_ is Nil!3332) (_2!1968 lt!76354)))))

(assert (=> b!208316 d!54669))

(declare-fun d!54671 () Bool)

(assert (=> d!54671 (= (inv!4166 (tag!807 (h!8730 rules!1920))) (= (mod (str.len (value!21956 (tag!807 (h!8730 rules!1920)))) 2) 0))))

(assert (=> b!208297 d!54671))

(declare-fun d!54673 () Bool)

(declare-fun res!95958 () Bool)

(declare-fun e!128575 () Bool)

(assert (=> d!54673 (=> (not res!95958) (not e!128575))))

(assert (=> d!54673 (= res!95958 (semiInverseModEq!211 (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toValue!1302 (transformation!619 (h!8730 rules!1920)))))))

(assert (=> d!54673 (= (inv!4169 (transformation!619 (h!8730 rules!1920))) e!128575)))

(declare-fun b!208544 () Bool)

(assert (=> b!208544 (= e!128575 (equivClasses!194 (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toValue!1302 (transformation!619 (h!8730 rules!1920)))))))

(assert (= (and d!54673 res!95958) b!208544))

(declare-fun m!230625 () Bool)

(assert (=> d!54673 m!230625))

(declare-fun m!230627 () Bool)

(assert (=> b!208544 m!230627))

(assert (=> b!208297 d!54673))

(declare-fun d!54675 () Bool)

(assert (=> d!54675 (not (matchR!181 (regex!619 (rule!1146 lt!76348)) lt!76335))))

(declare-fun lt!76438 () Unit!3446)

(declare-fun choose!2042 (Regex!843 List!3342 C!2608) Unit!3446)

(assert (=> d!54675 (= lt!76438 (choose!2042 (regex!619 (rule!1146 lt!76348)) lt!76335 lt!76318))))

(declare-fun validRegex!213 (Regex!843) Bool)

(assert (=> d!54675 (validRegex!213 (regex!619 (rule!1146 lt!76348)))))

(assert (=> d!54675 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!18 (regex!619 (rule!1146 lt!76348)) lt!76335 lt!76318) lt!76438)))

(declare-fun bs!21050 () Bool)

(assert (= bs!21050 d!54675))

(assert (=> bs!21050 m!230289))

(declare-fun m!230629 () Bool)

(assert (=> bs!21050 m!230629))

(declare-fun m!230631 () Bool)

(assert (=> bs!21050 m!230631))

(assert (=> b!208318 d!54675))

(declare-fun b!208573 () Bool)

(declare-fun res!95979 () Bool)

(declare-fun e!128596 () Bool)

(assert (=> b!208573 (=> res!95979 e!128596)))

(declare-fun e!128595 () Bool)

(assert (=> b!208573 (= res!95979 e!128595)))

(declare-fun res!95980 () Bool)

(assert (=> b!208573 (=> (not res!95980) (not e!128595))))

(declare-fun lt!76441 () Bool)

(assert (=> b!208573 (= res!95980 lt!76441)))

(declare-fun d!54677 () Bool)

(declare-fun e!128594 () Bool)

(assert (=> d!54677 e!128594))

(declare-fun c!39778 () Bool)

(assert (=> d!54677 (= c!39778 ((_ is EmptyExpr!843) (regex!619 (rule!1146 lt!76348))))))

(declare-fun e!128590 () Bool)

(assert (=> d!54677 (= lt!76441 e!128590)))

(declare-fun c!39777 () Bool)

(assert (=> d!54677 (= c!39777 (isEmpty!1791 lt!76335))))

(assert (=> d!54677 (validRegex!213 (regex!619 (rule!1146 lt!76348)))))

(assert (=> d!54677 (= (matchR!181 (regex!619 (rule!1146 lt!76348)) lt!76335) lt!76441)))

(declare-fun b!208574 () Bool)

(declare-fun call!10044 () Bool)

(assert (=> b!208574 (= e!128594 (= lt!76441 call!10044))))

(declare-fun b!208575 () Bool)

(declare-fun e!128591 () Bool)

(declare-fun e!128592 () Bool)

(assert (=> b!208575 (= e!128591 e!128592)))

(declare-fun res!95975 () Bool)

(assert (=> b!208575 (=> res!95975 e!128592)))

(assert (=> b!208575 (= res!95975 call!10044)))

(declare-fun b!208576 () Bool)

(declare-fun res!95982 () Bool)

(assert (=> b!208576 (=> res!95982 e!128596)))

(assert (=> b!208576 (= res!95982 (not ((_ is ElementMatch!843) (regex!619 (rule!1146 lt!76348)))))))

(declare-fun e!128593 () Bool)

(assert (=> b!208576 (= e!128593 e!128596)))

(declare-fun b!208577 () Bool)

(declare-fun derivativeStep!104 (Regex!843 C!2608) Regex!843)

(declare-fun tail!405 (List!3342) List!3342)

(assert (=> b!208577 (= e!128590 (matchR!181 (derivativeStep!104 (regex!619 (rule!1146 lt!76348)) (head!733 lt!76335)) (tail!405 lt!76335)))))

(declare-fun b!208578 () Bool)

(assert (=> b!208578 (= e!128596 e!128591)))

(declare-fun res!95978 () Bool)

(assert (=> b!208578 (=> (not res!95978) (not e!128591))))

(assert (=> b!208578 (= res!95978 (not lt!76441))))

(declare-fun b!208579 () Bool)

(declare-fun res!95981 () Bool)

(assert (=> b!208579 (=> res!95981 e!128592)))

(assert (=> b!208579 (= res!95981 (not (isEmpty!1791 (tail!405 lt!76335))))))

(declare-fun b!208580 () Bool)

(assert (=> b!208580 (= e!128595 (= (head!733 lt!76335) (c!39722 (regex!619 (rule!1146 lt!76348)))))))

(declare-fun b!208581 () Bool)

(assert (=> b!208581 (= e!128593 (not lt!76441))))

(declare-fun b!208582 () Bool)

(declare-fun res!95976 () Bool)

(assert (=> b!208582 (=> (not res!95976) (not e!128595))))

(assert (=> b!208582 (= res!95976 (not call!10044))))

(declare-fun b!208583 () Bool)

(assert (=> b!208583 (= e!128592 (not (= (head!733 lt!76335) (c!39722 (regex!619 (rule!1146 lt!76348))))))))

(declare-fun b!208584 () Bool)

(declare-fun nullable!138 (Regex!843) Bool)

(assert (=> b!208584 (= e!128590 (nullable!138 (regex!619 (rule!1146 lt!76348))))))

(declare-fun b!208585 () Bool)

(assert (=> b!208585 (= e!128594 e!128593)))

(declare-fun c!39776 () Bool)

(assert (=> b!208585 (= c!39776 ((_ is EmptyLang!843) (regex!619 (rule!1146 lt!76348))))))

(declare-fun bm!10039 () Bool)

(assert (=> bm!10039 (= call!10044 (isEmpty!1791 lt!76335))))

(declare-fun b!208586 () Bool)

(declare-fun res!95977 () Bool)

(assert (=> b!208586 (=> (not res!95977) (not e!128595))))

(assert (=> b!208586 (= res!95977 (isEmpty!1791 (tail!405 lt!76335)))))

(assert (= (and d!54677 c!39777) b!208584))

(assert (= (and d!54677 (not c!39777)) b!208577))

(assert (= (and d!54677 c!39778) b!208574))

(assert (= (and d!54677 (not c!39778)) b!208585))

(assert (= (and b!208585 c!39776) b!208581))

(assert (= (and b!208585 (not c!39776)) b!208576))

(assert (= (and b!208576 (not res!95982)) b!208573))

(assert (= (and b!208573 res!95980) b!208582))

(assert (= (and b!208582 res!95976) b!208586))

(assert (= (and b!208586 res!95977) b!208580))

(assert (= (and b!208573 (not res!95979)) b!208578))

(assert (= (and b!208578 res!95978) b!208575))

(assert (= (and b!208575 (not res!95975)) b!208579))

(assert (= (and b!208579 (not res!95981)) b!208583))

(assert (= (or b!208574 b!208575 b!208582) bm!10039))

(declare-fun m!230633 () Bool)

(assert (=> b!208584 m!230633))

(declare-fun m!230635 () Bool)

(assert (=> b!208586 m!230635))

(assert (=> b!208586 m!230635))

(declare-fun m!230637 () Bool)

(assert (=> b!208586 m!230637))

(assert (=> b!208580 m!230269))

(assert (=> b!208579 m!230635))

(assert (=> b!208579 m!230635))

(assert (=> b!208579 m!230637))

(declare-fun m!230639 () Bool)

(assert (=> bm!10039 m!230639))

(assert (=> b!208577 m!230269))

(assert (=> b!208577 m!230269))

(declare-fun m!230641 () Bool)

(assert (=> b!208577 m!230641))

(assert (=> b!208577 m!230635))

(assert (=> b!208577 m!230641))

(assert (=> b!208577 m!230635))

(declare-fun m!230643 () Bool)

(assert (=> b!208577 m!230643))

(assert (=> b!208583 m!230269))

(assert (=> d!54677 m!230639))

(assert (=> d!54677 m!230631))

(assert (=> b!208318 d!54677))

(declare-fun d!54679 () Bool)

(declare-fun res!95985 () Bool)

(declare-fun e!128599 () Bool)

(assert (=> d!54679 (=> (not res!95985) (not e!128599))))

(declare-fun rulesValid!176 (LexerInterface!505 List!3343) Bool)

(assert (=> d!54679 (= res!95985 (rulesValid!176 thiss!17480 rules!1920))))

(assert (=> d!54679 (= (rulesInvariant!471 thiss!17480 rules!1920) e!128599)))

(declare-fun b!208589 () Bool)

(declare-datatypes ((List!3345 0))(
  ( (Nil!3335) (Cons!3335 (h!8732 String!4285) (t!31199 List!3345)) )
))
(declare-fun noDuplicateTag!176 (LexerInterface!505 List!3343 List!3345) Bool)

(assert (=> b!208589 (= e!128599 (noDuplicateTag!176 thiss!17480 rules!1920 Nil!3335))))

(assert (= (and d!54679 res!95985) b!208589))

(declare-fun m!230645 () Bool)

(assert (=> d!54679 m!230645))

(declare-fun m!230647 () Bool)

(assert (=> b!208589 m!230647))

(assert (=> b!208275 d!54679))

(declare-fun b!208590 () Bool)

(declare-fun res!95990 () Bool)

(declare-fun e!128606 () Bool)

(assert (=> b!208590 (=> res!95990 e!128606)))

(declare-fun e!128605 () Bool)

(assert (=> b!208590 (= res!95990 e!128605)))

(declare-fun res!95991 () Bool)

(assert (=> b!208590 (=> (not res!95991) (not e!128605))))

(declare-fun lt!76442 () Bool)

(assert (=> b!208590 (= res!95991 lt!76442)))

(declare-fun d!54681 () Bool)

(declare-fun e!128604 () Bool)

(assert (=> d!54681 e!128604))

(declare-fun c!39781 () Bool)

(assert (=> d!54681 (= c!39781 ((_ is EmptyExpr!843) (regex!619 lt!76332)))))

(declare-fun e!128600 () Bool)

(assert (=> d!54681 (= lt!76442 e!128600)))

(declare-fun c!39780 () Bool)

(assert (=> d!54681 (= c!39780 (isEmpty!1791 lt!76335))))

(assert (=> d!54681 (validRegex!213 (regex!619 lt!76332))))

(assert (=> d!54681 (= (matchR!181 (regex!619 lt!76332) lt!76335) lt!76442)))

(declare-fun b!208591 () Bool)

(declare-fun call!10045 () Bool)

(assert (=> b!208591 (= e!128604 (= lt!76442 call!10045))))

(declare-fun b!208592 () Bool)

(declare-fun e!128601 () Bool)

(declare-fun e!128602 () Bool)

(assert (=> b!208592 (= e!128601 e!128602)))

(declare-fun res!95986 () Bool)

(assert (=> b!208592 (=> res!95986 e!128602)))

(assert (=> b!208592 (= res!95986 call!10045)))

(declare-fun b!208593 () Bool)

(declare-fun res!95993 () Bool)

(assert (=> b!208593 (=> res!95993 e!128606)))

(assert (=> b!208593 (= res!95993 (not ((_ is ElementMatch!843) (regex!619 lt!76332))))))

(declare-fun e!128603 () Bool)

(assert (=> b!208593 (= e!128603 e!128606)))

(declare-fun b!208594 () Bool)

(assert (=> b!208594 (= e!128600 (matchR!181 (derivativeStep!104 (regex!619 lt!76332) (head!733 lt!76335)) (tail!405 lt!76335)))))

(declare-fun b!208595 () Bool)

(assert (=> b!208595 (= e!128606 e!128601)))

(declare-fun res!95989 () Bool)

(assert (=> b!208595 (=> (not res!95989) (not e!128601))))

(assert (=> b!208595 (= res!95989 (not lt!76442))))

(declare-fun b!208596 () Bool)

(declare-fun res!95992 () Bool)

(assert (=> b!208596 (=> res!95992 e!128602)))

(assert (=> b!208596 (= res!95992 (not (isEmpty!1791 (tail!405 lt!76335))))))

(declare-fun b!208597 () Bool)

(assert (=> b!208597 (= e!128605 (= (head!733 lt!76335) (c!39722 (regex!619 lt!76332))))))

(declare-fun b!208598 () Bool)

(assert (=> b!208598 (= e!128603 (not lt!76442))))

(declare-fun b!208599 () Bool)

(declare-fun res!95987 () Bool)

(assert (=> b!208599 (=> (not res!95987) (not e!128605))))

(assert (=> b!208599 (= res!95987 (not call!10045))))

(declare-fun b!208600 () Bool)

(assert (=> b!208600 (= e!128602 (not (= (head!733 lt!76335) (c!39722 (regex!619 lt!76332)))))))

(declare-fun b!208601 () Bool)

(assert (=> b!208601 (= e!128600 (nullable!138 (regex!619 lt!76332)))))

(declare-fun b!208602 () Bool)

(assert (=> b!208602 (= e!128604 e!128603)))

(declare-fun c!39779 () Bool)

(assert (=> b!208602 (= c!39779 ((_ is EmptyLang!843) (regex!619 lt!76332)))))

(declare-fun bm!10040 () Bool)

(assert (=> bm!10040 (= call!10045 (isEmpty!1791 lt!76335))))

(declare-fun b!208603 () Bool)

(declare-fun res!95988 () Bool)

(assert (=> b!208603 (=> (not res!95988) (not e!128605))))

(assert (=> b!208603 (= res!95988 (isEmpty!1791 (tail!405 lt!76335)))))

(assert (= (and d!54681 c!39780) b!208601))

(assert (= (and d!54681 (not c!39780)) b!208594))

(assert (= (and d!54681 c!39781) b!208591))

(assert (= (and d!54681 (not c!39781)) b!208602))

(assert (= (and b!208602 c!39779) b!208598))

(assert (= (and b!208602 (not c!39779)) b!208593))

(assert (= (and b!208593 (not res!95993)) b!208590))

(assert (= (and b!208590 res!95991) b!208599))

(assert (= (and b!208599 res!95987) b!208603))

(assert (= (and b!208603 res!95988) b!208597))

(assert (= (and b!208590 (not res!95990)) b!208595))

(assert (= (and b!208595 res!95989) b!208592))

(assert (= (and b!208592 (not res!95986)) b!208596))

(assert (= (and b!208596 (not res!95992)) b!208600))

(assert (= (or b!208591 b!208592 b!208599) bm!10040))

(declare-fun m!230649 () Bool)

(assert (=> b!208601 m!230649))

(assert (=> b!208603 m!230635))

(assert (=> b!208603 m!230635))

(assert (=> b!208603 m!230637))

(assert (=> b!208597 m!230269))

(assert (=> b!208596 m!230635))

(assert (=> b!208596 m!230635))

(assert (=> b!208596 m!230637))

(assert (=> bm!10040 m!230639))

(assert (=> b!208594 m!230269))

(assert (=> b!208594 m!230269))

(declare-fun m!230651 () Bool)

(assert (=> b!208594 m!230651))

(assert (=> b!208594 m!230635))

(assert (=> b!208594 m!230651))

(assert (=> b!208594 m!230635))

(declare-fun m!230653 () Bool)

(assert (=> b!208594 m!230653))

(assert (=> b!208600 m!230269))

(assert (=> d!54681 m!230639))

(declare-fun m!230655 () Bool)

(assert (=> d!54681 m!230655))

(assert (=> b!208296 d!54681))

(declare-fun d!54683 () Bool)

(assert (=> d!54683 (= (get!1013 lt!76338) (v!14108 lt!76338))))

(assert (=> b!208296 d!54683))

(declare-fun d!54685 () Bool)

(declare-fun list!1243 (Conc!1060) List!3342)

(assert (=> d!54685 (= (list!1240 (seqFromList!615 lt!76351)) (list!1243 (c!39721 (seqFromList!615 lt!76351))))))

(declare-fun bs!21051 () Bool)

(assert (= bs!21051 d!54685))

(declare-fun m!230657 () Bool)

(assert (=> bs!21051 m!230657))

(assert (=> b!208277 d!54685))

(declare-fun d!54687 () Bool)

(assert (=> d!54687 (= (seqFromList!615 lt!76351) (fromListB!227 lt!76351))))

(declare-fun bs!21052 () Bool)

(assert (= bs!21052 d!54687))

(declare-fun m!230659 () Bool)

(assert (=> bs!21052 m!230659))

(assert (=> b!208277 d!54687))

(declare-fun b!208604 () Bool)

(declare-fun res!95998 () Bool)

(declare-fun e!128613 () Bool)

(assert (=> b!208604 (=> res!95998 e!128613)))

(declare-fun e!128612 () Bool)

(assert (=> b!208604 (= res!95998 e!128612)))

(declare-fun res!95999 () Bool)

(assert (=> b!208604 (=> (not res!95999) (not e!128612))))

(declare-fun lt!76443 () Bool)

(assert (=> b!208604 (= res!95999 lt!76443)))

(declare-fun d!54689 () Bool)

(declare-fun e!128611 () Bool)

(assert (=> d!54689 e!128611))

(declare-fun c!39784 () Bool)

(assert (=> d!54689 (= c!39784 ((_ is EmptyExpr!843) (regex!619 lt!76343)))))

(declare-fun e!128607 () Bool)

(assert (=> d!54689 (= lt!76443 e!128607)))

(declare-fun c!39783 () Bool)

(assert (=> d!54689 (= c!39783 (isEmpty!1791 lt!76352))))

(assert (=> d!54689 (validRegex!213 (regex!619 lt!76343))))

(assert (=> d!54689 (= (matchR!181 (regex!619 lt!76343) lt!76352) lt!76443)))

(declare-fun b!208605 () Bool)

(declare-fun call!10046 () Bool)

(assert (=> b!208605 (= e!128611 (= lt!76443 call!10046))))

(declare-fun b!208606 () Bool)

(declare-fun e!128608 () Bool)

(declare-fun e!128609 () Bool)

(assert (=> b!208606 (= e!128608 e!128609)))

(declare-fun res!95994 () Bool)

(assert (=> b!208606 (=> res!95994 e!128609)))

(assert (=> b!208606 (= res!95994 call!10046)))

(declare-fun b!208607 () Bool)

(declare-fun res!96001 () Bool)

(assert (=> b!208607 (=> res!96001 e!128613)))

(assert (=> b!208607 (= res!96001 (not ((_ is ElementMatch!843) (regex!619 lt!76343))))))

(declare-fun e!128610 () Bool)

(assert (=> b!208607 (= e!128610 e!128613)))

(declare-fun b!208608 () Bool)

(assert (=> b!208608 (= e!128607 (matchR!181 (derivativeStep!104 (regex!619 lt!76343) (head!733 lt!76352)) (tail!405 lt!76352)))))

(declare-fun b!208609 () Bool)

(assert (=> b!208609 (= e!128613 e!128608)))

(declare-fun res!95997 () Bool)

(assert (=> b!208609 (=> (not res!95997) (not e!128608))))

(assert (=> b!208609 (= res!95997 (not lt!76443))))

(declare-fun b!208610 () Bool)

(declare-fun res!96000 () Bool)

(assert (=> b!208610 (=> res!96000 e!128609)))

(assert (=> b!208610 (= res!96000 (not (isEmpty!1791 (tail!405 lt!76352))))))

(declare-fun b!208611 () Bool)

(assert (=> b!208611 (= e!128612 (= (head!733 lt!76352) (c!39722 (regex!619 lt!76343))))))

(declare-fun b!208612 () Bool)

(assert (=> b!208612 (= e!128610 (not lt!76443))))

(declare-fun b!208613 () Bool)

(declare-fun res!95995 () Bool)

(assert (=> b!208613 (=> (not res!95995) (not e!128612))))

(assert (=> b!208613 (= res!95995 (not call!10046))))

(declare-fun b!208614 () Bool)

(assert (=> b!208614 (= e!128609 (not (= (head!733 lt!76352) (c!39722 (regex!619 lt!76343)))))))

(declare-fun b!208615 () Bool)

(assert (=> b!208615 (= e!128607 (nullable!138 (regex!619 lt!76343)))))

(declare-fun b!208616 () Bool)

(assert (=> b!208616 (= e!128611 e!128610)))

(declare-fun c!39782 () Bool)

(assert (=> b!208616 (= c!39782 ((_ is EmptyLang!843) (regex!619 lt!76343)))))

(declare-fun bm!10041 () Bool)

(assert (=> bm!10041 (= call!10046 (isEmpty!1791 lt!76352))))

(declare-fun b!208617 () Bool)

(declare-fun res!95996 () Bool)

(assert (=> b!208617 (=> (not res!95996) (not e!128612))))

(assert (=> b!208617 (= res!95996 (isEmpty!1791 (tail!405 lt!76352)))))

(assert (= (and d!54689 c!39783) b!208615))

(assert (= (and d!54689 (not c!39783)) b!208608))

(assert (= (and d!54689 c!39784) b!208605))

(assert (= (and d!54689 (not c!39784)) b!208616))

(assert (= (and b!208616 c!39782) b!208612))

(assert (= (and b!208616 (not c!39782)) b!208607))

(assert (= (and b!208607 (not res!96001)) b!208604))

(assert (= (and b!208604 res!95999) b!208613))

(assert (= (and b!208613 res!95995) b!208617))

(assert (= (and b!208617 res!95996) b!208611))

(assert (= (and b!208604 (not res!95998)) b!208609))

(assert (= (and b!208609 res!95997) b!208606))

(assert (= (and b!208606 (not res!95994)) b!208610))

(assert (= (and b!208610 (not res!96000)) b!208614))

(assert (= (or b!208605 b!208606 b!208613) bm!10041))

(declare-fun m!230661 () Bool)

(assert (=> b!208615 m!230661))

(declare-fun m!230663 () Bool)

(assert (=> b!208617 m!230663))

(assert (=> b!208617 m!230663))

(declare-fun m!230665 () Bool)

(assert (=> b!208617 m!230665))

(declare-fun m!230667 () Bool)

(assert (=> b!208611 m!230667))

(assert (=> b!208610 m!230663))

(assert (=> b!208610 m!230663))

(assert (=> b!208610 m!230665))

(declare-fun m!230669 () Bool)

(assert (=> bm!10041 m!230669))

(assert (=> b!208608 m!230667))

(assert (=> b!208608 m!230667))

(declare-fun m!230671 () Bool)

(assert (=> b!208608 m!230671))

(assert (=> b!208608 m!230663))

(assert (=> b!208608 m!230671))

(assert (=> b!208608 m!230663))

(declare-fun m!230673 () Bool)

(assert (=> b!208608 m!230673))

(assert (=> b!208614 m!230667))

(assert (=> d!54689 m!230669))

(declare-fun m!230675 () Bool)

(assert (=> d!54689 m!230675))

(assert (=> b!208319 d!54689))

(declare-fun d!54691 () Bool)

(assert (=> d!54691 (= (get!1013 lt!76328) (v!14108 lt!76328))))

(assert (=> b!208319 d!54691))

(declare-fun b!208628 () Bool)

(declare-fun e!128621 () Bool)

(declare-fun e!128622 () Bool)

(assert (=> b!208628 (= e!128621 e!128622)))

(declare-fun c!39789 () Bool)

(assert (=> b!208628 (= c!39789 ((_ is IntegerValue!1924) (value!21957 (h!8731 tokens!465))))))

(declare-fun b!208629 () Bool)

(declare-fun inv!17 (TokenValue!641) Bool)

(assert (=> b!208629 (= e!128622 (inv!17 (value!21957 (h!8731 tokens!465))))))

(declare-fun d!54693 () Bool)

(declare-fun c!39790 () Bool)

(assert (=> d!54693 (= c!39790 ((_ is IntegerValue!1923) (value!21957 (h!8731 tokens!465))))))

(assert (=> d!54693 (= (inv!21 (value!21957 (h!8731 tokens!465))) e!128621)))

(declare-fun b!208630 () Bool)

(declare-fun inv!16 (TokenValue!641) Bool)

(assert (=> b!208630 (= e!128621 (inv!16 (value!21957 (h!8731 tokens!465))))))

(declare-fun b!208631 () Bool)

(declare-fun res!96004 () Bool)

(declare-fun e!128620 () Bool)

(assert (=> b!208631 (=> res!96004 e!128620)))

(assert (=> b!208631 (= res!96004 (not ((_ is IntegerValue!1925) (value!21957 (h!8731 tokens!465)))))))

(assert (=> b!208631 (= e!128622 e!128620)))

(declare-fun b!208632 () Bool)

(declare-fun inv!15 (TokenValue!641) Bool)

(assert (=> b!208632 (= e!128620 (inv!15 (value!21957 (h!8731 tokens!465))))))

(assert (= (and d!54693 c!39790) b!208630))

(assert (= (and d!54693 (not c!39790)) b!208628))

(assert (= (and b!208628 c!39789) b!208629))

(assert (= (and b!208628 (not c!39789)) b!208631))

(assert (= (and b!208631 (not res!96004)) b!208632))

(declare-fun m!230677 () Bool)

(assert (=> b!208629 m!230677))

(declare-fun m!230679 () Bool)

(assert (=> b!208630 m!230679))

(declare-fun m!230681 () Bool)

(assert (=> b!208632 m!230681))

(assert (=> b!208276 d!54693))

(declare-fun lt!76446 () Bool)

(declare-fun d!54695 () Bool)

(assert (=> d!54695 (= lt!76446 (isEmpty!1790 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 (seqFromList!615 lt!76309))))))))

(declare-fun isEmpty!1796 (Conc!1061) Bool)

(assert (=> d!54695 (= lt!76446 (isEmpty!1796 (c!39723 (_1!1967 (lex!305 thiss!17480 rules!1920 (seqFromList!615 lt!76309))))))))

(assert (=> d!54695 (= (isEmpty!1792 (_1!1967 (lex!305 thiss!17480 rules!1920 (seqFromList!615 lt!76309)))) lt!76446)))

(declare-fun bs!21053 () Bool)

(assert (= bs!21053 d!54695))

(declare-fun m!230683 () Bool)

(assert (=> bs!21053 m!230683))

(assert (=> bs!21053 m!230683))

(declare-fun m!230685 () Bool)

(assert (=> bs!21053 m!230685))

(declare-fun m!230687 () Bool)

(assert (=> bs!21053 m!230687))

(assert (=> b!208321 d!54695))

(declare-fun b!208674 () Bool)

(declare-fun e!128651 () Bool)

(declare-fun lt!76492 () tuple2!3502)

(assert (=> b!208674 (= e!128651 (not (isEmpty!1792 (_1!1967 lt!76492))))))

(declare-fun e!128653 () Bool)

(declare-fun b!208675 () Bool)

(declare-datatypes ((tuple2!3508 0))(
  ( (tuple2!3509 (_1!1970 List!3344) (_2!1970 List!3342)) )
))
(declare-fun lexList!144 (LexerInterface!505 List!3343 List!3342) tuple2!3508)

(assert (=> b!208675 (= e!128653 (= (list!1240 (_2!1967 lt!76492)) (_2!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 (seqFromList!615 lt!76309))))))))

(declare-fun b!208676 () Bool)

(declare-fun e!128652 () Bool)

(assert (=> b!208676 (= e!128652 (= (_2!1967 lt!76492) (seqFromList!615 lt!76309)))))

(declare-fun b!208678 () Bool)

(assert (=> b!208678 (= e!128652 e!128651)))

(declare-fun res!96021 () Bool)

(declare-fun size!2664 (BalanceConc!2128) Int)

(assert (=> b!208678 (= res!96021 (< (size!2664 (_2!1967 lt!76492)) (size!2664 (seqFromList!615 lt!76309))))))

(assert (=> b!208678 (=> (not res!96021) (not e!128651))))

(declare-fun b!208677 () Bool)

(declare-fun res!96022 () Bool)

(assert (=> b!208677 (=> (not res!96022) (not e!128653))))

(assert (=> b!208677 (= res!96022 (= (list!1241 (_1!1967 lt!76492)) (_1!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 (seqFromList!615 lt!76309))))))))

(declare-fun d!54697 () Bool)

(assert (=> d!54697 e!128653))

(declare-fun res!96020 () Bool)

(assert (=> d!54697 (=> (not res!96020) (not e!128653))))

(assert (=> d!54697 (= res!96020 e!128652)))

(declare-fun c!39802 () Bool)

(assert (=> d!54697 (= c!39802 (> (size!2661 (_1!1967 lt!76492)) 0))))

(declare-fun lexTailRecV2!131 (LexerInterface!505 List!3343 BalanceConc!2128 BalanceConc!2128 BalanceConc!2128 BalanceConc!2130) tuple2!3502)

(assert (=> d!54697 (= lt!76492 (lexTailRecV2!131 thiss!17480 rules!1920 (seqFromList!615 lt!76309) (BalanceConc!2129 Empty!1060) (seqFromList!615 lt!76309) (BalanceConc!2131 Empty!1061)))))

(assert (=> d!54697 (= (lex!305 thiss!17480 rules!1920 (seqFromList!615 lt!76309)) lt!76492)))

(assert (= (and d!54697 c!39802) b!208678))

(assert (= (and d!54697 (not c!39802)) b!208676))

(assert (= (and b!208678 res!96021) b!208674))

(assert (= (and d!54697 res!96020) b!208677))

(assert (= (and b!208677 res!96022) b!208675))

(declare-fun m!230755 () Bool)

(assert (=> b!208674 m!230755))

(declare-fun m!230757 () Bool)

(assert (=> d!54697 m!230757))

(assert (=> d!54697 m!230179))

(assert (=> d!54697 m!230179))

(declare-fun m!230759 () Bool)

(assert (=> d!54697 m!230759))

(declare-fun m!230761 () Bool)

(assert (=> b!208677 m!230761))

(assert (=> b!208677 m!230179))

(declare-fun m!230763 () Bool)

(assert (=> b!208677 m!230763))

(assert (=> b!208677 m!230763))

(declare-fun m!230765 () Bool)

(assert (=> b!208677 m!230765))

(declare-fun m!230767 () Bool)

(assert (=> b!208675 m!230767))

(assert (=> b!208675 m!230179))

(assert (=> b!208675 m!230763))

(assert (=> b!208675 m!230763))

(assert (=> b!208675 m!230765))

(declare-fun m!230769 () Bool)

(assert (=> b!208678 m!230769))

(assert (=> b!208678 m!230179))

(declare-fun m!230771 () Bool)

(assert (=> b!208678 m!230771))

(assert (=> b!208321 d!54697))

(declare-fun d!54703 () Bool)

(assert (=> d!54703 (= (seqFromList!615 lt!76309) (fromListB!227 lt!76309))))

(declare-fun bs!21061 () Bool)

(assert (= bs!21061 d!54703))

(declare-fun m!230773 () Bool)

(assert (=> bs!21061 m!230773))

(assert (=> b!208321 d!54703))

(declare-fun d!54705 () Bool)

(declare-fun lt!76504 () Bool)

(declare-fun e!128665 () Bool)

(assert (=> d!54705 (= lt!76504 e!128665)))

(declare-fun res!96039 () Bool)

(assert (=> d!54705 (=> (not res!96039) (not e!128665))))

(assert (=> d!54705 (= res!96039 (= (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 separatorToken!170))))) (list!1241 (singletonSeq!171 separatorToken!170))))))

(declare-fun e!128664 () Bool)

(assert (=> d!54705 (= lt!76504 e!128664)))

(declare-fun res!96040 () Bool)

(assert (=> d!54705 (=> (not res!96040) (not e!128664))))

(declare-fun lt!76503 () tuple2!3502)

(assert (=> d!54705 (= res!96040 (= (size!2661 (_1!1967 lt!76503)) 1))))

(assert (=> d!54705 (= lt!76503 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 separatorToken!170))))))

(assert (=> d!54705 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54705 (= (rulesProduceIndividualToken!254 thiss!17480 rules!1920 separatorToken!170) lt!76504)))

(declare-fun b!208694 () Bool)

(declare-fun res!96038 () Bool)

(assert (=> b!208694 (=> (not res!96038) (not e!128664))))

(assert (=> b!208694 (= res!96038 (= (apply!554 (_1!1967 lt!76503) 0) separatorToken!170))))

(declare-fun b!208695 () Bool)

(assert (=> b!208695 (= e!128664 (isEmpty!1788 (_2!1967 lt!76503)))))

(declare-fun b!208696 () Bool)

(assert (=> b!208696 (= e!128665 (isEmpty!1788 (_2!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 separatorToken!170))))))))

(assert (= (and d!54705 res!96040) b!208694))

(assert (= (and b!208694 res!96038) b!208695))

(assert (= (and d!54705 res!96039) b!208696))

(assert (=> d!54705 m!230213))

(declare-fun m!230793 () Bool)

(assert (=> d!54705 m!230793))

(assert (=> d!54705 m!230283))

(assert (=> d!54705 m!230213))

(declare-fun m!230795 () Bool)

(assert (=> d!54705 m!230795))

(assert (=> d!54705 m!230795))

(declare-fun m!230797 () Bool)

(assert (=> d!54705 m!230797))

(declare-fun m!230799 () Bool)

(assert (=> d!54705 m!230799))

(assert (=> d!54705 m!230213))

(declare-fun m!230801 () Bool)

(assert (=> d!54705 m!230801))

(declare-fun m!230803 () Bool)

(assert (=> b!208694 m!230803))

(declare-fun m!230805 () Bool)

(assert (=> b!208695 m!230805))

(assert (=> b!208696 m!230213))

(assert (=> b!208696 m!230213))

(assert (=> b!208696 m!230795))

(assert (=> b!208696 m!230795))

(assert (=> b!208696 m!230797))

(declare-fun m!230807 () Bool)

(assert (=> b!208696 m!230807))

(assert (=> b!208299 d!54705))

(declare-fun d!54711 () Bool)

(assert (=> d!54711 (= (list!1240 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76353 separatorToken!170 0)) (list!1243 (c!39721 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76353 separatorToken!170 0))))))

(declare-fun bs!21063 () Bool)

(assert (= bs!21063 d!54711))

(declare-fun m!230809 () Bool)

(assert (=> bs!21063 m!230809))

(assert (=> b!208320 d!54711))

(declare-fun bs!21065 () Bool)

(declare-fun d!54713 () Bool)

(assert (= bs!21065 (and d!54713 b!208304)))

(declare-fun lambda!6434 () Int)

(assert (=> bs!21065 (= lambda!6434 lambda!6419)))

(declare-fun bs!21066 () Bool)

(assert (= bs!21066 (and d!54713 b!208314)))

(assert (=> bs!21066 (not (= lambda!6434 lambda!6420))))

(declare-fun bs!21067 () Bool)

(declare-fun b!208752 () Bool)

(assert (= bs!21067 (and b!208752 b!208304)))

(declare-fun lambda!6435 () Int)

(assert (=> bs!21067 (not (= lambda!6435 lambda!6419))))

(declare-fun bs!21068 () Bool)

(assert (= bs!21068 (and b!208752 b!208314)))

(assert (=> bs!21068 (= lambda!6435 lambda!6420)))

(declare-fun bs!21069 () Bool)

(assert (= bs!21069 (and b!208752 d!54713)))

(assert (=> bs!21069 (not (= lambda!6435 lambda!6434))))

(declare-fun b!208759 () Bool)

(declare-fun e!128710 () Bool)

(assert (=> b!208759 (= e!128710 true)))

(declare-fun b!208758 () Bool)

(declare-fun e!128709 () Bool)

(assert (=> b!208758 (= e!128709 e!128710)))

(declare-fun b!208757 () Bool)

(declare-fun e!128708 () Bool)

(assert (=> b!208757 (= e!128708 e!128709)))

(assert (=> b!208752 e!128708))

(assert (= b!208758 b!208759))

(assert (= b!208757 b!208758))

(assert (= (and b!208752 ((_ is Cons!3333) rules!1920)) b!208757))

(assert (=> b!208759 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6435))))

(assert (=> b!208759 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6435))))

(assert (=> b!208752 true))

(declare-fun c!39814 () Bool)

(declare-fun c!39817 () Bool)

(declare-fun bm!10070 () Bool)

(declare-fun call!10079 () Token!982)

(declare-fun call!10075 () BalanceConc!2128)

(declare-fun call!10078 () Token!982)

(assert (=> bm!10070 (= call!10075 (charsOf!274 (ite c!39817 call!10079 (ite c!39814 separatorToken!170 call!10078))))))

(declare-fun b!208746 () Bool)

(declare-fun e!128706 () Bool)

(declare-fun lt!76568 () Option!551)

(assert (=> b!208746 (= e!128706 (not (= (_1!1969 (v!14109 lt!76568)) call!10079)))))

(declare-fun b!208747 () Bool)

(declare-fun e!128705 () BalanceConc!2128)

(declare-fun call!10077 () BalanceConc!2128)

(declare-fun lt!76560 () BalanceConc!2128)

(declare-fun ++!818 (BalanceConc!2128 BalanceConc!2128) BalanceConc!2128)

(assert (=> b!208747 (= e!128705 (++!818 call!10077 lt!76560))))

(declare-fun b!208748 () Bool)

(assert (=> b!208748 (= c!39814 e!128706)))

(declare-fun res!96069 () Bool)

(assert (=> b!208748 (=> (not res!96069) (not e!128706))))

(assert (=> b!208748 (= res!96069 ((_ is Some!550) lt!76568))))

(declare-fun e!128702 () BalanceConc!2128)

(assert (=> b!208748 (= e!128702 e!128705)))

(declare-fun bm!10071 () Bool)

(assert (=> bm!10071 (= call!10079 (apply!554 lt!76353 0))))

(declare-fun b!208749 () Bool)

(declare-fun e!128703 () BalanceConc!2128)

(assert (=> b!208749 (= e!128703 (BalanceConc!2129 Empty!1060))))

(declare-fun b!208750 () Bool)

(declare-fun e!128701 () BalanceConc!2128)

(assert (=> b!208750 (= e!128701 (charsOf!274 call!10078))))

(declare-fun bm!10072 () Bool)

(assert (=> bm!10072 (= call!10078 call!10079)))

(declare-fun lt!76569 () BalanceConc!2128)

(declare-fun dropList!120 (BalanceConc!2130 Int) List!3344)

(assert (=> d!54713 (= (list!1240 lt!76569) (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (dropList!120 lt!76353 0) separatorToken!170))))

(assert (=> d!54713 (= lt!76569 e!128703)))

(declare-fun c!39816 () Bool)

(assert (=> d!54713 (= c!39816 (>= 0 (size!2661 lt!76353)))))

(declare-fun lt!76558 () Unit!3446)

(declare-fun lemmaContentSubsetPreservesForall!64 (List!3344 List!3344 Int) Unit!3446)

(assert (=> d!54713 (= lt!76558 (lemmaContentSubsetPreservesForall!64 (list!1241 lt!76353) (dropList!120 lt!76353 0) lambda!6434))))

(declare-fun e!128704 () Bool)

(assert (=> d!54713 e!128704))

(declare-fun res!96068 () Bool)

(assert (=> d!54713 (=> (not res!96068) (not e!128704))))

(assert (=> d!54713 (= res!96068 (>= 0 0))))

(assert (=> d!54713 (= (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76353 separatorToken!170 0) lt!76569)))

(declare-fun b!208751 () Bool)

(assert (=> b!208751 (= e!128705 (BalanceConc!2129 Empty!1060))))

(assert (=> b!208751 (= (print!236 thiss!17480 (singletonSeq!171 call!10078)) (printTailRec!199 thiss!17480 (singletonSeq!171 call!10078) 0 (BalanceConc!2129 Empty!1060)))))

(declare-fun lt!76570 () Unit!3446)

(declare-fun Unit!3458 () Unit!3446)

(assert (=> b!208751 (= lt!76570 Unit!3458)))

(declare-fun call!10076 () BalanceConc!2128)

(declare-fun lt!76561 () Unit!3446)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!68 (LexerInterface!505 List!3343 List!3342 List!3342) Unit!3446)

(assert (=> b!208751 (= lt!76561 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!68 thiss!17480 rules!1920 (list!1240 call!10076) (list!1240 lt!76560)))))

(assert (=> b!208751 false))

(declare-fun lt!76562 () Unit!3446)

(declare-fun Unit!3459 () Unit!3446)

(assert (=> b!208751 (= lt!76562 Unit!3459)))

(assert (=> b!208752 (= e!128703 e!128702)))

(declare-fun lt!76557 () List!3344)

(assert (=> b!208752 (= lt!76557 (list!1241 lt!76353))))

(declare-fun lt!76564 () Unit!3446)

(declare-fun lemmaDropApply!160 (List!3344 Int) Unit!3446)

(assert (=> b!208752 (= lt!76564 (lemmaDropApply!160 lt!76557 0))))

(declare-fun drop!173 (List!3344 Int) List!3344)

(assert (=> b!208752 (= (head!734 (drop!173 lt!76557 0)) (apply!557 lt!76557 0))))

(declare-fun lt!76559 () Unit!3446)

(assert (=> b!208752 (= lt!76559 lt!76564)))

(declare-fun lt!76567 () List!3344)

(assert (=> b!208752 (= lt!76567 (list!1241 lt!76353))))

(declare-fun lt!76563 () Unit!3446)

(declare-fun lemmaDropTail!152 (List!3344 Int) Unit!3446)

(assert (=> b!208752 (= lt!76563 (lemmaDropTail!152 lt!76567 0))))

(declare-fun tail!406 (List!3344) List!3344)

(assert (=> b!208752 (= (tail!406 (drop!173 lt!76567 0)) (drop!173 lt!76567 (+ 0 1)))))

(declare-fun lt!76565 () Unit!3446)

(assert (=> b!208752 (= lt!76565 lt!76563)))

(declare-fun lt!76566 () Unit!3446)

(assert (=> b!208752 (= lt!76566 (forallContained!186 (list!1241 lt!76353) lambda!6435 (apply!554 lt!76353 0)))))

(assert (=> b!208752 (= lt!76560 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76353 separatorToken!170 (+ 0 1)))))

(assert (=> b!208752 (= lt!76568 (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (++!818 (charsOf!274 (apply!554 lt!76353 0)) lt!76560)))))

(declare-fun res!96070 () Bool)

(assert (=> b!208752 (= res!96070 ((_ is Some!550) lt!76568))))

(declare-fun e!128707 () Bool)

(assert (=> b!208752 (=> (not res!96070) (not e!128707))))

(assert (=> b!208752 (= c!39817 e!128707)))

(declare-fun b!208753 () Bool)

(assert (=> b!208753 (= e!128707 (= (_1!1969 (v!14109 lt!76568)) (apply!554 lt!76353 0)))))

(declare-fun b!208754 () Bool)

(assert (=> b!208754 (= e!128704 (<= 0 (size!2661 lt!76353)))))

(declare-fun b!208755 () Bool)

(assert (=> b!208755 (= e!128702 call!10077)))

(declare-fun bm!10073 () Bool)

(declare-fun c!39815 () Bool)

(assert (=> bm!10073 (= c!39815 c!39817)))

(assert (=> bm!10073 (= call!10077 (++!818 e!128701 (ite c!39817 lt!76560 call!10076)))))

(declare-fun b!208756 () Bool)

(assert (=> b!208756 (= e!128701 call!10075)))

(declare-fun bm!10074 () Bool)

(assert (=> bm!10074 (= call!10076 call!10075)))

(assert (= (and d!54713 res!96068) b!208754))

(assert (= (and d!54713 c!39816) b!208749))

(assert (= (and d!54713 (not c!39816)) b!208752))

(assert (= (and b!208752 res!96070) b!208753))

(assert (= (and b!208752 c!39817) b!208755))

(assert (= (and b!208752 (not c!39817)) b!208748))

(assert (= (and b!208748 res!96069) b!208746))

(assert (= (and b!208748 c!39814) b!208747))

(assert (= (and b!208748 (not c!39814)) b!208751))

(assert (= (or b!208747 b!208751) bm!10072))

(assert (= (or b!208747 b!208751) bm!10074))

(assert (= (or b!208755 b!208746 bm!10072) bm!10071))

(assert (= (or b!208755 bm!10074) bm!10070))

(assert (= (or b!208755 b!208747) bm!10073))

(assert (= (and bm!10073 c!39815) b!208756))

(assert (= (and bm!10073 (not c!39815)) b!208750))

(declare-fun m!230847 () Bool)

(assert (=> d!54713 m!230847))

(declare-fun m!230849 () Bool)

(assert (=> d!54713 m!230849))

(declare-fun m!230851 () Bool)

(assert (=> d!54713 m!230851))

(declare-fun m!230853 () Bool)

(assert (=> d!54713 m!230853))

(assert (=> d!54713 m!230853))

(assert (=> d!54713 m!230851))

(declare-fun m!230855 () Bool)

(assert (=> d!54713 m!230855))

(assert (=> d!54713 m!230851))

(declare-fun m!230857 () Bool)

(assert (=> d!54713 m!230857))

(declare-fun m!230859 () Bool)

(assert (=> bm!10071 m!230859))

(declare-fun m!230861 () Bool)

(assert (=> b!208750 m!230861))

(declare-fun m!230863 () Bool)

(assert (=> b!208751 m!230863))

(declare-fun m!230865 () Bool)

(assert (=> b!208751 m!230865))

(declare-fun m!230867 () Bool)

(assert (=> b!208751 m!230867))

(assert (=> b!208751 m!230863))

(declare-fun m!230869 () Bool)

(assert (=> b!208751 m!230869))

(assert (=> b!208751 m!230865))

(assert (=> b!208751 m!230869))

(declare-fun m!230871 () Bool)

(assert (=> b!208751 m!230871))

(assert (=> b!208751 m!230869))

(declare-fun m!230873 () Bool)

(assert (=> b!208751 m!230873))

(declare-fun m!230875 () Bool)

(assert (=> b!208747 m!230875))

(declare-fun m!230877 () Bool)

(assert (=> bm!10073 m!230877))

(declare-fun m!230879 () Bool)

(assert (=> bm!10070 m!230879))

(assert (=> b!208753 m!230859))

(assert (=> b!208752 m!230853))

(assert (=> b!208752 m!230859))

(declare-fun m!230881 () Bool)

(assert (=> b!208752 m!230881))

(declare-fun m!230883 () Bool)

(assert (=> b!208752 m!230883))

(declare-fun m!230885 () Bool)

(assert (=> b!208752 m!230885))

(declare-fun m!230887 () Bool)

(assert (=> b!208752 m!230887))

(declare-fun m!230889 () Bool)

(assert (=> b!208752 m!230889))

(declare-fun m!230891 () Bool)

(assert (=> b!208752 m!230891))

(declare-fun m!230893 () Bool)

(assert (=> b!208752 m!230893))

(declare-fun m!230895 () Bool)

(assert (=> b!208752 m!230895))

(declare-fun m!230897 () Bool)

(assert (=> b!208752 m!230897))

(assert (=> b!208752 m!230859))

(declare-fun m!230899 () Bool)

(assert (=> b!208752 m!230899))

(assert (=> b!208752 m!230891))

(declare-fun m!230901 () Bool)

(assert (=> b!208752 m!230901))

(declare-fun m!230903 () Bool)

(assert (=> b!208752 m!230903))

(declare-fun m!230905 () Bool)

(assert (=> b!208752 m!230905))

(assert (=> b!208752 m!230887))

(assert (=> b!208752 m!230853))

(assert (=> b!208752 m!230859))

(assert (=> b!208752 m!230905))

(assert (=> b!208752 m!230895))

(assert (=> b!208754 m!230847))

(assert (=> b!208320 d!54713))

(declare-fun bs!21084 () Bool)

(declare-fun b!208841 () Bool)

(assert (= bs!21084 (and b!208841 b!208304)))

(declare-fun lambda!6443 () Int)

(assert (=> bs!21084 (not (= lambda!6443 lambda!6419))))

(declare-fun bs!21085 () Bool)

(assert (= bs!21085 (and b!208841 b!208314)))

(assert (=> bs!21085 (= lambda!6443 lambda!6420)))

(declare-fun bs!21086 () Bool)

(assert (= bs!21086 (and b!208841 d!54713)))

(assert (=> bs!21086 (not (= lambda!6443 lambda!6434))))

(declare-fun bs!21087 () Bool)

(assert (= bs!21087 (and b!208841 b!208752)))

(assert (=> bs!21087 (= lambda!6443 lambda!6435)))

(declare-fun b!208849 () Bool)

(declare-fun e!128769 () Bool)

(assert (=> b!208849 (= e!128769 true)))

(declare-fun b!208848 () Bool)

(declare-fun e!128768 () Bool)

(assert (=> b!208848 (= e!128768 e!128769)))

(declare-fun b!208847 () Bool)

(declare-fun e!128767 () Bool)

(assert (=> b!208847 (= e!128767 e!128768)))

(assert (=> b!208841 e!128767))

(assert (= b!208848 b!208849))

(assert (= b!208847 b!208848))

(assert (= (and b!208841 ((_ is Cons!3333) rules!1920)) b!208847))

(assert (=> b!208849 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6443))))

(assert (=> b!208849 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6443))))

(assert (=> b!208841 true))

(declare-fun b!208839 () Bool)

(declare-fun e!128765 () List!3342)

(declare-fun call!10094 () List!3342)

(declare-fun lt!76640 () List!3342)

(assert (=> b!208839 (= e!128765 (++!816 call!10094 lt!76640))))

(declare-fun e!128766 () List!3342)

(declare-fun e!128764 () List!3342)

(assert (=> b!208841 (= e!128766 e!128764)))

(declare-fun lt!76641 () Unit!3446)

(assert (=> b!208841 (= lt!76641 (forallContained!186 tokens!465 lambda!6443 (h!8731 tokens!465)))))

(assert (=> b!208841 (= lt!76640 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170))))

(declare-fun lt!76637 () Option!549)

(assert (=> b!208841 (= lt!76637 (maxPrefix!235 thiss!17480 rules!1920 (++!816 (list!1240 (charsOf!274 (h!8731 tokens!465))) lt!76640)))))

(declare-fun c!39845 () Bool)

(assert (=> b!208841 (= c!39845 (and ((_ is Some!548) lt!76637) (= (_1!1968 (v!14107 lt!76637)) (h!8731 tokens!465))))))

(declare-fun bm!10086 () Bool)

(declare-fun call!10095 () BalanceConc!2128)

(assert (=> bm!10086 (= call!10095 (charsOf!274 (h!8731 tokens!465)))))

(declare-fun b!208842 () Bool)

(assert (=> b!208842 (= e!128764 call!10094)))

(declare-fun bm!10087 () Bool)

(declare-fun call!10093 () BalanceConc!2128)

(assert (=> bm!10087 (= call!10093 call!10095)))

(declare-fun b!208843 () Bool)

(declare-fun c!39844 () Bool)

(assert (=> b!208843 (= c!39844 (and ((_ is Some!548) lt!76637) (not (= (_1!1968 (v!14107 lt!76637)) (h!8731 tokens!465)))))))

(assert (=> b!208843 (= e!128764 e!128765)))

(declare-fun b!208844 () Bool)

(declare-fun e!128763 () BalanceConc!2128)

(assert (=> b!208844 (= e!128763 (charsOf!274 separatorToken!170))))

(declare-fun b!208845 () Bool)

(assert (=> b!208845 (= e!128763 call!10093)))

(declare-fun bm!10088 () Bool)

(declare-fun call!10091 () List!3342)

(declare-fun call!10092 () List!3342)

(assert (=> bm!10088 (= call!10094 (++!816 call!10091 (ite c!39845 lt!76640 call!10092)))))

(declare-fun bm!10089 () Bool)

(assert (=> bm!10089 (= call!10092 (list!1240 e!128763))))

(declare-fun c!39843 () Bool)

(assert (=> bm!10089 (= c!39843 c!39844)))

(declare-fun bm!10090 () Bool)

(assert (=> bm!10090 (= call!10091 (list!1240 (ite c!39845 call!10095 call!10093)))))

(declare-fun b!208846 () Bool)

(assert (=> b!208846 (= e!128766 Nil!3332)))

(declare-fun b!208840 () Bool)

(assert (=> b!208840 (= e!128765 Nil!3332)))

(assert (=> b!208840 (= (print!236 thiss!17480 (singletonSeq!171 (h!8731 tokens!465))) (printTailRec!199 thiss!17480 (singletonSeq!171 (h!8731 tokens!465)) 0 (BalanceConc!2129 Empty!1060)))))

(declare-fun lt!76642 () Unit!3446)

(declare-fun Unit!3460 () Unit!3446)

(assert (=> b!208840 (= lt!76642 Unit!3460)))

(declare-fun lt!76639 () Unit!3446)

(assert (=> b!208840 (= lt!76639 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!68 thiss!17480 rules!1920 call!10092 lt!76640))))

(assert (=> b!208840 false))

(declare-fun lt!76638 () Unit!3446)

(declare-fun Unit!3461 () Unit!3446)

(assert (=> b!208840 (= lt!76638 Unit!3461)))

(declare-fun d!54721 () Bool)

(declare-fun c!39842 () Bool)

(assert (=> d!54721 (= c!39842 ((_ is Cons!3334) tokens!465))))

(assert (=> d!54721 (= (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!128766)))

(assert (= (and d!54721 c!39842) b!208841))

(assert (= (and d!54721 (not c!39842)) b!208846))

(assert (= (and b!208841 c!39845) b!208842))

(assert (= (and b!208841 (not c!39845)) b!208843))

(assert (= (and b!208843 c!39844) b!208839))

(assert (= (and b!208843 (not c!39844)) b!208840))

(assert (= (or b!208839 b!208840) bm!10087))

(assert (= (or b!208839 b!208840) bm!10089))

(assert (= (and bm!10089 c!39843) b!208844))

(assert (= (and bm!10089 (not c!39843)) b!208845))

(assert (= (or b!208842 bm!10087) bm!10086))

(assert (= (or b!208842 b!208839) bm!10090))

(assert (= (or b!208842 b!208839) bm!10088))

(declare-fun m!231035 () Bool)

(assert (=> bm!10090 m!231035))

(assert (=> b!208840 m!230375))

(assert (=> b!208840 m!230375))

(declare-fun m!231037 () Bool)

(assert (=> b!208840 m!231037))

(assert (=> b!208840 m!230375))

(declare-fun m!231039 () Bool)

(assert (=> b!208840 m!231039))

(declare-fun m!231041 () Bool)

(assert (=> b!208840 m!231041))

(assert (=> bm!10086 m!230355))

(declare-fun m!231043 () Bool)

(assert (=> bm!10088 m!231043))

(declare-fun m!231045 () Bool)

(assert (=> b!208841 m!231045))

(declare-fun m!231047 () Bool)

(assert (=> b!208841 m!231047))

(assert (=> b!208841 m!230357))

(assert (=> b!208841 m!231045))

(assert (=> b!208841 m!230355))

(assert (=> b!208841 m!230355))

(assert (=> b!208841 m!230357))

(declare-fun m!231049 () Bool)

(assert (=> b!208841 m!231049))

(assert (=> b!208841 m!230345))

(assert (=> b!208844 m!230351))

(declare-fun m!231051 () Bool)

(assert (=> bm!10089 m!231051))

(declare-fun m!231053 () Bool)

(assert (=> b!208839 m!231053))

(assert (=> b!208320 d!54721))

(declare-fun d!54759 () Bool)

(assert (=> d!54759 (not (contains!564 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170))) lt!76311))))

(declare-fun lt!76645 () Unit!3446)

(declare-fun choose!2049 (LexerInterface!505 List!3343 List!3343 Rule!1038 Rule!1038 C!2608) Unit!3446)

(assert (=> d!54759 (= lt!76645 (choose!2049 thiss!17480 rules!1920 rules!1920 (rule!1146 lt!76348) (rule!1146 separatorToken!170) lt!76311))))

(assert (=> d!54759 (rulesInvariant!471 thiss!17480 rules!1920)))

(assert (=> d!54759 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!12 thiss!17480 rules!1920 rules!1920 (rule!1146 lt!76348) (rule!1146 separatorToken!170) lt!76311) lt!76645)))

(declare-fun bs!21088 () Bool)

(assert (= bs!21088 d!54759))

(assert (=> bs!21088 m!230215))

(assert (=> bs!21088 m!230215))

(assert (=> bs!21088 m!230217))

(declare-fun m!231055 () Bool)

(assert (=> bs!21088 m!231055))

(assert (=> bs!21088 m!230295))

(assert (=> b!208301 d!54759))

(declare-fun d!54761 () Bool)

(declare-fun lt!76648 () Bool)

(assert (=> d!54761 (= lt!76648 (isEmpty!1791 (list!1240 (_2!1967 lt!76308))))))

(declare-fun isEmpty!1798 (Conc!1060) Bool)

(assert (=> d!54761 (= lt!76648 (isEmpty!1798 (c!39721 (_2!1967 lt!76308))))))

(assert (=> d!54761 (= (isEmpty!1788 (_2!1967 lt!76308)) lt!76648)))

(declare-fun bs!21089 () Bool)

(assert (= bs!21089 d!54761))

(declare-fun m!231057 () Bool)

(assert (=> bs!21089 m!231057))

(assert (=> bs!21089 m!231057))

(declare-fun m!231059 () Bool)

(assert (=> bs!21089 m!231059))

(declare-fun m!231061 () Bool)

(assert (=> bs!21089 m!231061))

(assert (=> b!208279 d!54761))

(declare-fun d!54763 () Bool)

(assert (=> d!54763 (= (get!1012 lt!76355) (v!14107 lt!76355))))

(assert (=> b!208300 d!54763))

(declare-fun d!54765 () Bool)

(assert (=> d!54765 (= (head!734 tokens!465) (h!8731 tokens!465))))

(assert (=> b!208300 d!54765))

(declare-fun d!54767 () Bool)

(declare-fun lt!76649 () Bool)

(assert (=> d!54767 (= lt!76649 (isEmpty!1791 (list!1240 (_2!1967 lt!76319))))))

(assert (=> d!54767 (= lt!76649 (isEmpty!1798 (c!39721 (_2!1967 lt!76319))))))

(assert (=> d!54767 (= (isEmpty!1788 (_2!1967 lt!76319)) lt!76649)))

(declare-fun bs!21090 () Bool)

(assert (= bs!21090 d!54767))

(declare-fun m!231063 () Bool)

(assert (=> bs!21090 m!231063))

(assert (=> bs!21090 m!231063))

(declare-fun m!231065 () Bool)

(assert (=> bs!21090 m!231065))

(declare-fun m!231067 () Bool)

(assert (=> bs!21090 m!231067))

(assert (=> b!208302 d!54767))

(declare-fun d!54769 () Bool)

(assert (=> d!54769 (= (isEmpty!1789 rules!1920) ((_ is Nil!3333) rules!1920))))

(assert (=> b!208280 d!54769))

(declare-fun d!54771 () Bool)

(declare-fun lt!76651 () Bool)

(declare-fun e!128771 () Bool)

(assert (=> d!54771 (= lt!76651 e!128771)))

(declare-fun res!96102 () Bool)

(assert (=> d!54771 (=> (not res!96102) (not e!128771))))

(assert (=> d!54771 (= res!96102 (= (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 (h!8731 tokens!465)))))) (list!1241 (singletonSeq!171 (h!8731 tokens!465)))))))

(declare-fun e!128770 () Bool)

(assert (=> d!54771 (= lt!76651 e!128770)))

(declare-fun res!96103 () Bool)

(assert (=> d!54771 (=> (not res!96103) (not e!128770))))

(declare-fun lt!76650 () tuple2!3502)

(assert (=> d!54771 (= res!96103 (= (size!2661 (_1!1967 lt!76650)) 1))))

(assert (=> d!54771 (= lt!76650 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 (h!8731 tokens!465)))))))

(assert (=> d!54771 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54771 (= (rulesProduceIndividualToken!254 thiss!17480 rules!1920 (h!8731 tokens!465)) lt!76651)))

(declare-fun b!208850 () Bool)

(declare-fun res!96101 () Bool)

(assert (=> b!208850 (=> (not res!96101) (not e!128770))))

(assert (=> b!208850 (= res!96101 (= (apply!554 (_1!1967 lt!76650) 0) (h!8731 tokens!465)))))

(declare-fun b!208851 () Bool)

(assert (=> b!208851 (= e!128770 (isEmpty!1788 (_2!1967 lt!76650)))))

(declare-fun b!208852 () Bool)

(assert (=> b!208852 (= e!128771 (isEmpty!1788 (_2!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 (h!8731 tokens!465)))))))))

(assert (= (and d!54771 res!96103) b!208850))

(assert (= (and b!208850 res!96101) b!208851))

(assert (= (and d!54771 res!96102) b!208852))

(assert (=> d!54771 m!230375))

(declare-fun m!231069 () Bool)

(assert (=> d!54771 m!231069))

(assert (=> d!54771 m!230283))

(assert (=> d!54771 m!230375))

(assert (=> d!54771 m!231037))

(assert (=> d!54771 m!231037))

(declare-fun m!231071 () Bool)

(assert (=> d!54771 m!231071))

(declare-fun m!231073 () Bool)

(assert (=> d!54771 m!231073))

(assert (=> d!54771 m!230375))

(declare-fun m!231075 () Bool)

(assert (=> d!54771 m!231075))

(declare-fun m!231077 () Bool)

(assert (=> b!208850 m!231077))

(declare-fun m!231079 () Bool)

(assert (=> b!208851 m!231079))

(assert (=> b!208852 m!230375))

(assert (=> b!208852 m!230375))

(assert (=> b!208852 m!231037))

(assert (=> b!208852 m!231037))

(assert (=> b!208852 m!231071))

(declare-fun m!231081 () Bool)

(assert (=> b!208852 m!231081))

(assert (=> b!208282 d!54771))

(declare-fun d!54773 () Bool)

(declare-fun isEmpty!1799 (Option!549) Bool)

(assert (=> d!54773 (= (isDefined!401 lt!76355) (not (isEmpty!1799 lt!76355)))))

(declare-fun bs!21091 () Bool)

(assert (= bs!21091 d!54773))

(declare-fun m!231083 () Bool)

(assert (=> bs!21091 m!231083))

(assert (=> b!208303 d!54773))

(declare-fun b!208872 () Bool)

(declare-fun e!128779 () Option!549)

(declare-fun lt!76663 () Option!549)

(declare-fun lt!76662 () Option!549)

(assert (=> b!208872 (= e!128779 (ite (and ((_ is None!548) lt!76663) ((_ is None!548) lt!76662)) None!548 (ite ((_ is None!548) lt!76662) lt!76663 (ite ((_ is None!548) lt!76663) lt!76662 (ite (>= (size!2660 (_1!1968 (v!14107 lt!76663))) (size!2660 (_1!1968 (v!14107 lt!76662)))) lt!76663 lt!76662)))))))

(declare-fun call!10098 () Option!549)

(assert (=> b!208872 (= lt!76663 call!10098)))

(assert (=> b!208872 (= lt!76662 (maxPrefix!235 thiss!17480 (t!31111 rules!1920) lt!76351))))

(declare-fun b!208873 () Bool)

(assert (=> b!208873 (= e!128779 call!10098)))

(declare-fun b!208874 () Bool)

(declare-fun res!96118 () Bool)

(declare-fun e!128780 () Bool)

(assert (=> b!208874 (=> (not res!96118) (not e!128780))))

(declare-fun lt!76664 () Option!549)

(assert (=> b!208874 (= res!96118 (matchR!181 (regex!619 (rule!1146 (_1!1968 (get!1012 lt!76664)))) (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76664))))))))

(declare-fun b!208875 () Bool)

(declare-fun e!128778 () Bool)

(assert (=> b!208875 (= e!128778 e!128780)))

(declare-fun res!96121 () Bool)

(assert (=> b!208875 (=> (not res!96121) (not e!128780))))

(assert (=> b!208875 (= res!96121 (isDefined!401 lt!76664))))

(declare-fun b!208876 () Bool)

(declare-fun res!96124 () Bool)

(assert (=> b!208876 (=> (not res!96124) (not e!128780))))

(assert (=> b!208876 (= res!96124 (= (++!816 (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76664)))) (_2!1968 (get!1012 lt!76664))) lt!76351))))

(declare-fun b!208877 () Bool)

(declare-fun contains!568 (List!3343 Rule!1038) Bool)

(assert (=> b!208877 (= e!128780 (contains!568 rules!1920 (rule!1146 (_1!1968 (get!1012 lt!76664)))))))

(declare-fun bm!10093 () Bool)

(declare-fun maxPrefixOneRule!103 (LexerInterface!505 Rule!1038 List!3342) Option!549)

(assert (=> bm!10093 (= call!10098 (maxPrefixOneRule!103 thiss!17480 (h!8730 rules!1920) lt!76351))))

(declare-fun d!54775 () Bool)

(assert (=> d!54775 e!128778))

(declare-fun res!96123 () Bool)

(assert (=> d!54775 (=> res!96123 e!128778)))

(assert (=> d!54775 (= res!96123 (isEmpty!1799 lt!76664))))

(assert (=> d!54775 (= lt!76664 e!128779)))

(declare-fun c!39849 () Bool)

(assert (=> d!54775 (= c!39849 (and ((_ is Cons!3333) rules!1920) ((_ is Nil!3333) (t!31111 rules!1920))))))

(declare-fun lt!76666 () Unit!3446)

(declare-fun lt!76665 () Unit!3446)

(assert (=> d!54775 (= lt!76666 lt!76665)))

(assert (=> d!54775 (isPrefix!315 lt!76351 lt!76351)))

(assert (=> d!54775 (= lt!76665 (lemmaIsPrefixRefl!169 lt!76351 lt!76351))))

(assert (=> d!54775 (rulesValidInductive!158 thiss!17480 rules!1920)))

(assert (=> d!54775 (= (maxPrefix!235 thiss!17480 rules!1920 lt!76351) lt!76664)))

(declare-fun b!208871 () Bool)

(declare-fun res!96119 () Bool)

(assert (=> b!208871 (=> (not res!96119) (not e!128780))))

(assert (=> b!208871 (= res!96119 (< (size!2663 (_2!1968 (get!1012 lt!76664))) (size!2663 lt!76351)))))

(declare-fun b!208878 () Bool)

(declare-fun res!96122 () Bool)

(assert (=> b!208878 (=> (not res!96122) (not e!128780))))

(assert (=> b!208878 (= res!96122 (= (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76664)))) (originalCharacters!662 (_1!1968 (get!1012 lt!76664)))))))

(declare-fun b!208879 () Bool)

(declare-fun res!96120 () Bool)

(assert (=> b!208879 (=> (not res!96120) (not e!128780))))

(declare-fun apply!559 (TokenValueInjection!1054 BalanceConc!2128) TokenValue!641)

(assert (=> b!208879 (= res!96120 (= (value!21957 (_1!1968 (get!1012 lt!76664))) (apply!559 (transformation!619 (rule!1146 (_1!1968 (get!1012 lt!76664)))) (seqFromList!615 (originalCharacters!662 (_1!1968 (get!1012 lt!76664)))))))))

(assert (= (and d!54775 c!39849) b!208873))

(assert (= (and d!54775 (not c!39849)) b!208872))

(assert (= (or b!208873 b!208872) bm!10093))

(assert (= (and d!54775 (not res!96123)) b!208875))

(assert (= (and b!208875 res!96121) b!208878))

(assert (= (and b!208878 res!96122) b!208871))

(assert (= (and b!208871 res!96119) b!208876))

(assert (= (and b!208876 res!96124) b!208879))

(assert (= (and b!208879 res!96120) b!208874))

(assert (= (and b!208874 res!96118) b!208877))

(declare-fun m!231085 () Bool)

(assert (=> b!208874 m!231085))

(declare-fun m!231087 () Bool)

(assert (=> b!208874 m!231087))

(assert (=> b!208874 m!231087))

(declare-fun m!231089 () Bool)

(assert (=> b!208874 m!231089))

(assert (=> b!208874 m!231089))

(declare-fun m!231091 () Bool)

(assert (=> b!208874 m!231091))

(declare-fun m!231093 () Bool)

(assert (=> b!208872 m!231093))

(assert (=> b!208877 m!231085))

(declare-fun m!231095 () Bool)

(assert (=> b!208877 m!231095))

(assert (=> b!208879 m!231085))

(declare-fun m!231097 () Bool)

(assert (=> b!208879 m!231097))

(assert (=> b!208879 m!231097))

(declare-fun m!231099 () Bool)

(assert (=> b!208879 m!231099))

(declare-fun m!231101 () Bool)

(assert (=> bm!10093 m!231101))

(assert (=> b!208876 m!231085))

(assert (=> b!208876 m!231087))

(assert (=> b!208876 m!231087))

(assert (=> b!208876 m!231089))

(assert (=> b!208876 m!231089))

(declare-fun m!231103 () Bool)

(assert (=> b!208876 m!231103))

(assert (=> b!208871 m!231085))

(declare-fun m!231105 () Bool)

(assert (=> b!208871 m!231105))

(declare-fun m!231107 () Bool)

(assert (=> b!208871 m!231107))

(assert (=> b!208878 m!231085))

(assert (=> b!208878 m!231087))

(assert (=> b!208878 m!231087))

(assert (=> b!208878 m!231089))

(declare-fun m!231109 () Bool)

(assert (=> b!208875 m!231109))

(declare-fun m!231111 () Bool)

(assert (=> d!54775 m!231111))

(declare-fun m!231113 () Bool)

(assert (=> d!54775 m!231113))

(declare-fun m!231115 () Bool)

(assert (=> d!54775 m!231115))

(assert (=> d!54775 m!230575))

(assert (=> b!208303 d!54775))

(declare-fun d!54777 () Bool)

(declare-fun fromListB!229 (List!3344) BalanceConc!2130)

(assert (=> d!54777 (= (seqFromList!616 (t!31112 tokens!465)) (fromListB!229 (t!31112 tokens!465)))))

(declare-fun bs!21092 () Bool)

(assert (= bs!21092 d!54777))

(declare-fun m!231117 () Bool)

(assert (=> bs!21092 m!231117))

(assert (=> b!208283 d!54777))

(declare-fun d!54779 () Bool)

(assert (=> d!54779 (= (list!1240 (charsOf!274 separatorToken!170)) (list!1243 (c!39721 (charsOf!274 separatorToken!170))))))

(declare-fun bs!21093 () Bool)

(assert (= bs!21093 d!54779))

(declare-fun m!231119 () Bool)

(assert (=> bs!21093 m!231119))

(assert (=> b!208283 d!54779))

(declare-fun d!54781 () Bool)

(declare-fun e!128786 () Bool)

(assert (=> d!54781 e!128786))

(declare-fun res!96130 () Bool)

(assert (=> d!54781 (=> (not res!96130) (not e!128786))))

(declare-fun lt!76669 () List!3342)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!452 (List!3342) (InoxSet C!2608))

(assert (=> d!54781 (= res!96130 (= (content!452 lt!76669) ((_ map or) (content!452 (++!816 lt!76309 lt!76352)) (content!452 lt!76320))))))

(declare-fun e!128785 () List!3342)

(assert (=> d!54781 (= lt!76669 e!128785)))

(declare-fun c!39852 () Bool)

(assert (=> d!54781 (= c!39852 ((_ is Nil!3332) (++!816 lt!76309 lt!76352)))))

(assert (=> d!54781 (= (++!816 (++!816 lt!76309 lt!76352) lt!76320) lt!76669)))

(declare-fun b!208891 () Bool)

(assert (=> b!208891 (= e!128786 (or (not (= lt!76320 Nil!3332)) (= lt!76669 (++!816 lt!76309 lt!76352))))))

(declare-fun b!208890 () Bool)

(declare-fun res!96129 () Bool)

(assert (=> b!208890 (=> (not res!96129) (not e!128786))))

(assert (=> b!208890 (= res!96129 (= (size!2663 lt!76669) (+ (size!2663 (++!816 lt!76309 lt!76352)) (size!2663 lt!76320))))))

(declare-fun b!208889 () Bool)

(assert (=> b!208889 (= e!128785 (Cons!3332 (h!8729 (++!816 lt!76309 lt!76352)) (++!816 (t!31110 (++!816 lt!76309 lt!76352)) lt!76320)))))

(declare-fun b!208888 () Bool)

(assert (=> b!208888 (= e!128785 lt!76320)))

(assert (= (and d!54781 c!39852) b!208888))

(assert (= (and d!54781 (not c!39852)) b!208889))

(assert (= (and d!54781 res!96130) b!208890))

(assert (= (and b!208890 res!96129) b!208891))

(declare-fun m!231121 () Bool)

(assert (=> d!54781 m!231121))

(assert (=> d!54781 m!230347))

(declare-fun m!231123 () Bool)

(assert (=> d!54781 m!231123))

(declare-fun m!231125 () Bool)

(assert (=> d!54781 m!231125))

(declare-fun m!231127 () Bool)

(assert (=> b!208890 m!231127))

(assert (=> b!208890 m!230347))

(declare-fun m!231129 () Bool)

(assert (=> b!208890 m!231129))

(declare-fun m!231131 () Bool)

(assert (=> b!208890 m!231131))

(declare-fun m!231133 () Bool)

(assert (=> b!208889 m!231133))

(assert (=> b!208283 d!54781))

(declare-fun d!54783 () Bool)

(declare-fun e!128788 () Bool)

(assert (=> d!54783 e!128788))

(declare-fun res!96132 () Bool)

(assert (=> d!54783 (=> (not res!96132) (not e!128788))))

(declare-fun lt!76670 () List!3342)

(assert (=> d!54783 (= res!96132 (= (content!452 lt!76670) ((_ map or) (content!452 lt!76352) (content!452 lt!76320))))))

(declare-fun e!128787 () List!3342)

(assert (=> d!54783 (= lt!76670 e!128787)))

(declare-fun c!39853 () Bool)

(assert (=> d!54783 (= c!39853 ((_ is Nil!3332) lt!76352))))

(assert (=> d!54783 (= (++!816 lt!76352 lt!76320) lt!76670)))

(declare-fun b!208895 () Bool)

(assert (=> b!208895 (= e!128788 (or (not (= lt!76320 Nil!3332)) (= lt!76670 lt!76352)))))

(declare-fun b!208894 () Bool)

(declare-fun res!96131 () Bool)

(assert (=> b!208894 (=> (not res!96131) (not e!128788))))

(assert (=> b!208894 (= res!96131 (= (size!2663 lt!76670) (+ (size!2663 lt!76352) (size!2663 lt!76320))))))

(declare-fun b!208893 () Bool)

(assert (=> b!208893 (= e!128787 (Cons!3332 (h!8729 lt!76352) (++!816 (t!31110 lt!76352) lt!76320)))))

(declare-fun b!208892 () Bool)

(assert (=> b!208892 (= e!128787 lt!76320)))

(assert (= (and d!54783 c!39853) b!208892))

(assert (= (and d!54783 (not c!39853)) b!208893))

(assert (= (and d!54783 res!96132) b!208894))

(assert (= (and b!208894 res!96131) b!208895))

(declare-fun m!231135 () Bool)

(assert (=> d!54783 m!231135))

(declare-fun m!231137 () Bool)

(assert (=> d!54783 m!231137))

(assert (=> d!54783 m!231125))

(declare-fun m!231139 () Bool)

(assert (=> b!208894 m!231139))

(declare-fun m!231141 () Bool)

(assert (=> b!208894 m!231141))

(assert (=> b!208894 m!231131))

(declare-fun m!231143 () Bool)

(assert (=> b!208893 m!231143))

(assert (=> b!208283 d!54783))

(declare-fun bs!21094 () Bool)

(declare-fun b!208898 () Bool)

(assert (= bs!21094 (and b!208898 b!208304)))

(declare-fun lambda!6444 () Int)

(assert (=> bs!21094 (not (= lambda!6444 lambda!6419))))

(declare-fun bs!21095 () Bool)

(assert (= bs!21095 (and b!208898 d!54713)))

(assert (=> bs!21095 (not (= lambda!6444 lambda!6434))))

(declare-fun bs!21096 () Bool)

(assert (= bs!21096 (and b!208898 b!208841)))

(assert (=> bs!21096 (= lambda!6444 lambda!6443)))

(declare-fun bs!21097 () Bool)

(assert (= bs!21097 (and b!208898 b!208314)))

(assert (=> bs!21097 (= lambda!6444 lambda!6420)))

(declare-fun bs!21098 () Bool)

(assert (= bs!21098 (and b!208898 b!208752)))

(assert (=> bs!21098 (= lambda!6444 lambda!6435)))

(declare-fun b!208906 () Bool)

(declare-fun e!128795 () Bool)

(assert (=> b!208906 (= e!128795 true)))

(declare-fun b!208905 () Bool)

(declare-fun e!128794 () Bool)

(assert (=> b!208905 (= e!128794 e!128795)))

(declare-fun b!208904 () Bool)

(declare-fun e!128793 () Bool)

(assert (=> b!208904 (= e!128793 e!128794)))

(assert (=> b!208898 e!128793))

(assert (= b!208905 b!208906))

(assert (= b!208904 b!208905))

(assert (= (and b!208898 ((_ is Cons!3333) rules!1920)) b!208904))

(assert (=> b!208906 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6444))))

(assert (=> b!208906 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6444))))

(assert (=> b!208898 true))

(declare-fun b!208896 () Bool)

(declare-fun e!128791 () List!3342)

(declare-fun call!10102 () List!3342)

(declare-fun lt!76674 () List!3342)

(assert (=> b!208896 (= e!128791 (++!816 call!10102 lt!76674))))

(declare-fun e!128792 () List!3342)

(declare-fun e!128790 () List!3342)

(assert (=> b!208898 (= e!128792 e!128790)))

(declare-fun lt!76675 () Unit!3446)

(assert (=> b!208898 (= lt!76675 (forallContained!186 (t!31112 tokens!465) lambda!6444 (h!8731 (t!31112 tokens!465))))))

(assert (=> b!208898 (= lt!76674 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (t!31112 (t!31112 tokens!465)) separatorToken!170))))

(declare-fun lt!76671 () Option!549)

(assert (=> b!208898 (= lt!76671 (maxPrefix!235 thiss!17480 rules!1920 (++!816 (list!1240 (charsOf!274 (h!8731 (t!31112 tokens!465)))) lt!76674)))))

(declare-fun c!39857 () Bool)

(assert (=> b!208898 (= c!39857 (and ((_ is Some!548) lt!76671) (= (_1!1968 (v!14107 lt!76671)) (h!8731 (t!31112 tokens!465)))))))

(declare-fun bm!10094 () Bool)

(declare-fun call!10103 () BalanceConc!2128)

(assert (=> bm!10094 (= call!10103 (charsOf!274 (h!8731 (t!31112 tokens!465))))))

(declare-fun b!208899 () Bool)

(assert (=> b!208899 (= e!128790 call!10102)))

(declare-fun bm!10095 () Bool)

(declare-fun call!10101 () BalanceConc!2128)

(assert (=> bm!10095 (= call!10101 call!10103)))

(declare-fun b!208900 () Bool)

(declare-fun c!39856 () Bool)

(assert (=> b!208900 (= c!39856 (and ((_ is Some!548) lt!76671) (not (= (_1!1968 (v!14107 lt!76671)) (h!8731 (t!31112 tokens!465))))))))

(assert (=> b!208900 (= e!128790 e!128791)))

(declare-fun b!208901 () Bool)

(declare-fun e!128789 () BalanceConc!2128)

(assert (=> b!208901 (= e!128789 (charsOf!274 separatorToken!170))))

(declare-fun b!208902 () Bool)

(assert (=> b!208902 (= e!128789 call!10101)))

(declare-fun bm!10096 () Bool)

(declare-fun call!10099 () List!3342)

(declare-fun call!10100 () List!3342)

(assert (=> bm!10096 (= call!10102 (++!816 call!10099 (ite c!39857 lt!76674 call!10100)))))

(declare-fun bm!10097 () Bool)

(assert (=> bm!10097 (= call!10100 (list!1240 e!128789))))

(declare-fun c!39855 () Bool)

(assert (=> bm!10097 (= c!39855 c!39856)))

(declare-fun bm!10098 () Bool)

(assert (=> bm!10098 (= call!10099 (list!1240 (ite c!39857 call!10103 call!10101)))))

(declare-fun b!208903 () Bool)

(assert (=> b!208903 (= e!128792 Nil!3332)))

(declare-fun b!208897 () Bool)

(assert (=> b!208897 (= e!128791 Nil!3332)))

(assert (=> b!208897 (= (print!236 thiss!17480 (singletonSeq!171 (h!8731 (t!31112 tokens!465)))) (printTailRec!199 thiss!17480 (singletonSeq!171 (h!8731 (t!31112 tokens!465))) 0 (BalanceConc!2129 Empty!1060)))))

(declare-fun lt!76676 () Unit!3446)

(declare-fun Unit!3462 () Unit!3446)

(assert (=> b!208897 (= lt!76676 Unit!3462)))

(declare-fun lt!76673 () Unit!3446)

(assert (=> b!208897 (= lt!76673 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!68 thiss!17480 rules!1920 call!10100 lt!76674))))

(assert (=> b!208897 false))

(declare-fun lt!76672 () Unit!3446)

(declare-fun Unit!3463 () Unit!3446)

(assert (=> b!208897 (= lt!76672 Unit!3463)))

(declare-fun d!54785 () Bool)

(declare-fun c!39854 () Bool)

(assert (=> d!54785 (= c!39854 ((_ is Cons!3334) (t!31112 tokens!465)))))

(assert (=> d!54785 (= (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170) e!128792)))

(assert (= (and d!54785 c!39854) b!208898))

(assert (= (and d!54785 (not c!39854)) b!208903))

(assert (= (and b!208898 c!39857) b!208899))

(assert (= (and b!208898 (not c!39857)) b!208900))

(assert (= (and b!208900 c!39856) b!208896))

(assert (= (and b!208900 (not c!39856)) b!208897))

(assert (= (or b!208896 b!208897) bm!10095))

(assert (= (or b!208896 b!208897) bm!10097))

(assert (= (and bm!10097 c!39855) b!208901))

(assert (= (and bm!10097 (not c!39855)) b!208902))

(assert (= (or b!208899 bm!10095) bm!10094))

(assert (= (or b!208899 b!208896) bm!10098))

(assert (= (or b!208899 b!208896) bm!10096))

(declare-fun m!231145 () Bool)

(assert (=> bm!10098 m!231145))

(declare-fun m!231147 () Bool)

(assert (=> b!208897 m!231147))

(assert (=> b!208897 m!231147))

(declare-fun m!231149 () Bool)

(assert (=> b!208897 m!231149))

(assert (=> b!208897 m!231147))

(declare-fun m!231151 () Bool)

(assert (=> b!208897 m!231151))

(declare-fun m!231153 () Bool)

(assert (=> b!208897 m!231153))

(declare-fun m!231155 () Bool)

(assert (=> bm!10094 m!231155))

(declare-fun m!231157 () Bool)

(assert (=> bm!10096 m!231157))

(declare-fun m!231159 () Bool)

(assert (=> b!208898 m!231159))

(declare-fun m!231161 () Bool)

(assert (=> b!208898 m!231161))

(declare-fun m!231163 () Bool)

(assert (=> b!208898 m!231163))

(assert (=> b!208898 m!231159))

(assert (=> b!208898 m!231155))

(assert (=> b!208898 m!231155))

(assert (=> b!208898 m!231163))

(declare-fun m!231165 () Bool)

(assert (=> b!208898 m!231165))

(declare-fun m!231167 () Bool)

(assert (=> b!208898 m!231167))

(assert (=> b!208901 m!230351))

(declare-fun m!231169 () Bool)

(assert (=> bm!10097 m!231169))

(declare-fun m!231171 () Bool)

(assert (=> b!208896 m!231171))

(assert (=> b!208283 d!54785))

(declare-fun d!54787 () Bool)

(declare-fun lt!76679 () BalanceConc!2128)

(assert (=> d!54787 (= (list!1240 lt!76679) (originalCharacters!662 separatorToken!170))))

(assert (=> d!54787 (= lt!76679 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (value!21957 separatorToken!170)))))

(assert (=> d!54787 (= (charsOf!274 separatorToken!170) lt!76679)))

(declare-fun b_lambda!5371 () Bool)

(assert (=> (not b_lambda!5371) (not d!54787)))

(assert (=> d!54787 t!31122))

(declare-fun b_and!15089 () Bool)

(assert (= b_and!15077 (and (=> t!31122 result!12600) b_and!15089)))

(assert (=> d!54787 t!31124))

(declare-fun b_and!15091 () Bool)

(assert (= b_and!15079 (and (=> t!31124 result!12604) b_and!15091)))

(assert (=> d!54787 t!31126))

(declare-fun b_and!15093 () Bool)

(assert (= b_and!15081 (and (=> t!31126 result!12606) b_and!15093)))

(declare-fun m!231173 () Bool)

(assert (=> d!54787 m!231173))

(assert (=> d!54787 m!230597))

(assert (=> b!208283 d!54787))

(declare-fun d!54789 () Bool)

(declare-fun e!128797 () Bool)

(assert (=> d!54789 e!128797))

(declare-fun res!96134 () Bool)

(assert (=> d!54789 (=> (not res!96134) (not e!128797))))

(declare-fun lt!76680 () List!3342)

(assert (=> d!54789 (= res!96134 (= (content!452 lt!76680) ((_ map or) (content!452 lt!76309) (content!452 lt!76312))))))

(declare-fun e!128796 () List!3342)

(assert (=> d!54789 (= lt!76680 e!128796)))

(declare-fun c!39858 () Bool)

(assert (=> d!54789 (= c!39858 ((_ is Nil!3332) lt!76309))))

(assert (=> d!54789 (= (++!816 lt!76309 lt!76312) lt!76680)))

(declare-fun b!208910 () Bool)

(assert (=> b!208910 (= e!128797 (or (not (= lt!76312 Nil!3332)) (= lt!76680 lt!76309)))))

(declare-fun b!208909 () Bool)

(declare-fun res!96133 () Bool)

(assert (=> b!208909 (=> (not res!96133) (not e!128797))))

(assert (=> b!208909 (= res!96133 (= (size!2663 lt!76680) (+ (size!2663 lt!76309) (size!2663 lt!76312))))))

(declare-fun b!208908 () Bool)

(assert (=> b!208908 (= e!128796 (Cons!3332 (h!8729 lt!76309) (++!816 (t!31110 lt!76309) lt!76312)))))

(declare-fun b!208907 () Bool)

(assert (=> b!208907 (= e!128796 lt!76312)))

(assert (= (and d!54789 c!39858) b!208907))

(assert (= (and d!54789 (not c!39858)) b!208908))

(assert (= (and d!54789 res!96134) b!208909))

(assert (= (and b!208909 res!96133) b!208910))

(declare-fun m!231175 () Bool)

(assert (=> d!54789 m!231175))

(declare-fun m!231177 () Bool)

(assert (=> d!54789 m!231177))

(declare-fun m!231179 () Bool)

(assert (=> d!54789 m!231179))

(declare-fun m!231181 () Bool)

(assert (=> b!208909 m!231181))

(declare-fun m!231183 () Bool)

(assert (=> b!208909 m!231183))

(declare-fun m!231185 () Bool)

(assert (=> b!208909 m!231185))

(declare-fun m!231187 () Bool)

(assert (=> b!208908 m!231187))

(assert (=> b!208283 d!54789))

(declare-fun d!54791 () Bool)

(assert (=> d!54791 (= (list!1240 (charsOf!274 (h!8731 tokens!465))) (list!1243 (c!39721 (charsOf!274 (h!8731 tokens!465)))))))

(declare-fun bs!21099 () Bool)

(assert (= bs!21099 d!54791))

(declare-fun m!231189 () Bool)

(assert (=> bs!21099 m!231189))

(assert (=> b!208283 d!54791))

(declare-fun d!54793 () Bool)

(declare-fun lt!76681 () BalanceConc!2128)

(assert (=> d!54793 (= (list!1240 lt!76681) (originalCharacters!662 (h!8731 tokens!465)))))

(assert (=> d!54793 (= lt!76681 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (value!21957 (h!8731 tokens!465))))))

(assert (=> d!54793 (= (charsOf!274 (h!8731 tokens!465)) lt!76681)))

(declare-fun b_lambda!5373 () Bool)

(assert (=> (not b_lambda!5373) (not d!54793)))

(assert (=> d!54793 t!31128))

(declare-fun b_and!15095 () Bool)

(assert (= b_and!15089 (and (=> t!31128 result!12608) b_and!15095)))

(assert (=> d!54793 t!31130))

(declare-fun b_and!15097 () Bool)

(assert (= b_and!15091 (and (=> t!31130 result!12610) b_and!15097)))

(assert (=> d!54793 t!31132))

(declare-fun b_and!15099 () Bool)

(assert (= b_and!15093 (and (=> t!31132 result!12612) b_and!15099)))

(declare-fun m!231191 () Bool)

(assert (=> d!54793 m!231191))

(assert (=> d!54793 m!230619))

(assert (=> b!208283 d!54793))

(declare-fun d!54795 () Bool)

(declare-fun e!128799 () Bool)

(assert (=> d!54795 e!128799))

(declare-fun res!96136 () Bool)

(assert (=> d!54795 (=> (not res!96136) (not e!128799))))

(declare-fun lt!76682 () List!3342)

(assert (=> d!54795 (= res!96136 (= (content!452 lt!76682) ((_ map or) (content!452 lt!76309) (content!452 lt!76352))))))

(declare-fun e!128798 () List!3342)

(assert (=> d!54795 (= lt!76682 e!128798)))

(declare-fun c!39859 () Bool)

(assert (=> d!54795 (= c!39859 ((_ is Nil!3332) lt!76309))))

(assert (=> d!54795 (= (++!816 lt!76309 lt!76352) lt!76682)))

(declare-fun b!208914 () Bool)

(assert (=> b!208914 (= e!128799 (or (not (= lt!76352 Nil!3332)) (= lt!76682 lt!76309)))))

(declare-fun b!208913 () Bool)

(declare-fun res!96135 () Bool)

(assert (=> b!208913 (=> (not res!96135) (not e!128799))))

(assert (=> b!208913 (= res!96135 (= (size!2663 lt!76682) (+ (size!2663 lt!76309) (size!2663 lt!76352))))))

(declare-fun b!208912 () Bool)

(assert (=> b!208912 (= e!128798 (Cons!3332 (h!8729 lt!76309) (++!816 (t!31110 lt!76309) lt!76352)))))

(declare-fun b!208911 () Bool)

(assert (=> b!208911 (= e!128798 lt!76352)))

(assert (= (and d!54795 c!39859) b!208911))

(assert (= (and d!54795 (not c!39859)) b!208912))

(assert (= (and d!54795 res!96136) b!208913))

(assert (= (and b!208913 res!96135) b!208914))

(declare-fun m!231193 () Bool)

(assert (=> d!54795 m!231193))

(assert (=> d!54795 m!231177))

(assert (=> d!54795 m!231137))

(declare-fun m!231195 () Bool)

(assert (=> b!208913 m!231195))

(assert (=> b!208913 m!231183))

(assert (=> b!208913 m!231141))

(declare-fun m!231197 () Bool)

(assert (=> b!208912 m!231197))

(assert (=> b!208283 d!54795))

(declare-fun d!54797 () Bool)

(assert (=> d!54797 (= (++!816 (++!816 lt!76309 lt!76352) lt!76320) (++!816 lt!76309 (++!816 lt!76352 lt!76320)))))

(declare-fun lt!76685 () Unit!3446)

(declare-fun choose!2052 (List!3342 List!3342 List!3342) Unit!3446)

(assert (=> d!54797 (= lt!76685 (choose!2052 lt!76309 lt!76352 lt!76320))))

(assert (=> d!54797 (= (lemmaConcatAssociativity!314 lt!76309 lt!76352 lt!76320) lt!76685)))

(declare-fun bs!21100 () Bool)

(assert (= bs!21100 d!54797))

(assert (=> bs!21100 m!230363))

(declare-fun m!231199 () Bool)

(assert (=> bs!21100 m!231199))

(assert (=> bs!21100 m!230347))

(assert (=> bs!21100 m!230349))

(assert (=> bs!21100 m!230363))

(declare-fun m!231201 () Bool)

(assert (=> bs!21100 m!231201))

(assert (=> bs!21100 m!230347))

(assert (=> b!208283 d!54797))

(declare-fun d!54799 () Bool)

(assert (=> d!54799 (= (list!1240 lt!76334) (list!1243 (c!39721 lt!76334)))))

(declare-fun bs!21101 () Bool)

(assert (= bs!21101 d!54799))

(declare-fun m!231203 () Bool)

(assert (=> bs!21101 m!231203))

(assert (=> b!208283 d!54799))

(declare-fun bs!21102 () Bool)

(declare-fun d!54801 () Bool)

(assert (= bs!21102 (and d!54801 b!208304)))

(declare-fun lambda!6445 () Int)

(assert (=> bs!21102 (= lambda!6445 lambda!6419)))

(declare-fun bs!21103 () Bool)

(assert (= bs!21103 (and d!54801 d!54713)))

(assert (=> bs!21103 (= lambda!6445 lambda!6434)))

(declare-fun bs!21104 () Bool)

(assert (= bs!21104 (and d!54801 b!208841)))

(assert (=> bs!21104 (not (= lambda!6445 lambda!6443))))

(declare-fun bs!21105 () Bool)

(assert (= bs!21105 (and d!54801 b!208898)))

(assert (=> bs!21105 (not (= lambda!6445 lambda!6444))))

(declare-fun bs!21106 () Bool)

(assert (= bs!21106 (and d!54801 b!208314)))

(assert (=> bs!21106 (not (= lambda!6445 lambda!6420))))

(declare-fun bs!21107 () Bool)

(assert (= bs!21107 (and d!54801 b!208752)))

(assert (=> bs!21107 (not (= lambda!6445 lambda!6435))))

(declare-fun bs!21108 () Bool)

(declare-fun b!208921 () Bool)

(assert (= bs!21108 (and b!208921 b!208304)))

(declare-fun lambda!6446 () Int)

(assert (=> bs!21108 (not (= lambda!6446 lambda!6419))))

(declare-fun bs!21109 () Bool)

(assert (= bs!21109 (and b!208921 d!54713)))

(assert (=> bs!21109 (not (= lambda!6446 lambda!6434))))

(declare-fun bs!21110 () Bool)

(assert (= bs!21110 (and b!208921 b!208841)))

(assert (=> bs!21110 (= lambda!6446 lambda!6443)))

(declare-fun bs!21111 () Bool)

(assert (= bs!21111 (and b!208921 b!208898)))

(assert (=> bs!21111 (= lambda!6446 lambda!6444)))

(declare-fun bs!21112 () Bool)

(assert (= bs!21112 (and b!208921 b!208314)))

(assert (=> bs!21112 (= lambda!6446 lambda!6420)))

(declare-fun bs!21113 () Bool)

(assert (= bs!21113 (and b!208921 d!54801)))

(assert (=> bs!21113 (not (= lambda!6446 lambda!6445))))

(declare-fun bs!21114 () Bool)

(assert (= bs!21114 (and b!208921 b!208752)))

(assert (=> bs!21114 (= lambda!6446 lambda!6435)))

(declare-fun b!208928 () Bool)

(declare-fun e!128809 () Bool)

(assert (=> b!208928 (= e!128809 true)))

(declare-fun b!208927 () Bool)

(declare-fun e!128808 () Bool)

(assert (=> b!208927 (= e!128808 e!128809)))

(declare-fun b!208926 () Bool)

(declare-fun e!128807 () Bool)

(assert (=> b!208926 (= e!128807 e!128808)))

(assert (=> b!208921 e!128807))

(assert (= b!208927 b!208928))

(assert (= b!208926 b!208927))

(assert (= (and b!208921 ((_ is Cons!3333) rules!1920)) b!208926))

(assert (=> b!208928 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6446))))

(assert (=> b!208928 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6446))))

(assert (=> b!208921 true))

(declare-fun call!10104 () BalanceConc!2128)

(declare-fun call!10108 () Token!982)

(declare-fun c!39863 () Bool)

(declare-fun c!39860 () Bool)

(declare-fun bm!10099 () Bool)

(declare-fun call!10107 () Token!982)

(assert (=> bm!10099 (= call!10104 (charsOf!274 (ite c!39863 call!10108 (ite c!39860 separatorToken!170 call!10107))))))

(declare-fun b!208915 () Bool)

(declare-fun e!128805 () Bool)

(declare-fun lt!76697 () Option!551)

(assert (=> b!208915 (= e!128805 (not (= (_1!1969 (v!14109 lt!76697)) call!10108)))))

(declare-fun b!208916 () Bool)

(declare-fun e!128804 () BalanceConc!2128)

(declare-fun call!10106 () BalanceConc!2128)

(declare-fun lt!76689 () BalanceConc!2128)

(assert (=> b!208916 (= e!128804 (++!818 call!10106 lt!76689))))

(declare-fun b!208917 () Bool)

(assert (=> b!208917 (= c!39860 e!128805)))

(declare-fun res!96138 () Bool)

(assert (=> b!208917 (=> (not res!96138) (not e!128805))))

(assert (=> b!208917 (= res!96138 ((_ is Some!550) lt!76697))))

(declare-fun e!128801 () BalanceConc!2128)

(assert (=> b!208917 (= e!128801 e!128804)))

(declare-fun bm!10100 () Bool)

(assert (=> bm!10100 (= call!10108 (apply!554 lt!76347 0))))

(declare-fun b!208918 () Bool)

(declare-fun e!128802 () BalanceConc!2128)

(assert (=> b!208918 (= e!128802 (BalanceConc!2129 Empty!1060))))

(declare-fun b!208919 () Bool)

(declare-fun e!128800 () BalanceConc!2128)

(assert (=> b!208919 (= e!128800 (charsOf!274 call!10107))))

(declare-fun bm!10101 () Bool)

(assert (=> bm!10101 (= call!10107 call!10108)))

(declare-fun lt!76698 () BalanceConc!2128)

(assert (=> d!54801 (= (list!1240 lt!76698) (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 (dropList!120 lt!76347 0) separatorToken!170))))

(assert (=> d!54801 (= lt!76698 e!128802)))

(declare-fun c!39862 () Bool)

(assert (=> d!54801 (= c!39862 (>= 0 (size!2661 lt!76347)))))

(declare-fun lt!76687 () Unit!3446)

(assert (=> d!54801 (= lt!76687 (lemmaContentSubsetPreservesForall!64 (list!1241 lt!76347) (dropList!120 lt!76347 0) lambda!6445))))

(declare-fun e!128803 () Bool)

(assert (=> d!54801 e!128803))

(declare-fun res!96137 () Bool)

(assert (=> d!54801 (=> (not res!96137) (not e!128803))))

(assert (=> d!54801 (= res!96137 (>= 0 0))))

(assert (=> d!54801 (= (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76347 separatorToken!170 0) lt!76698)))

(declare-fun b!208920 () Bool)

(assert (=> b!208920 (= e!128804 (BalanceConc!2129 Empty!1060))))

(assert (=> b!208920 (= (print!236 thiss!17480 (singletonSeq!171 call!10107)) (printTailRec!199 thiss!17480 (singletonSeq!171 call!10107) 0 (BalanceConc!2129 Empty!1060)))))

(declare-fun lt!76699 () Unit!3446)

(declare-fun Unit!3464 () Unit!3446)

(assert (=> b!208920 (= lt!76699 Unit!3464)))

(declare-fun call!10105 () BalanceConc!2128)

(declare-fun lt!76690 () Unit!3446)

(assert (=> b!208920 (= lt!76690 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!68 thiss!17480 rules!1920 (list!1240 call!10105) (list!1240 lt!76689)))))

(assert (=> b!208920 false))

(declare-fun lt!76691 () Unit!3446)

(declare-fun Unit!3465 () Unit!3446)

(assert (=> b!208920 (= lt!76691 Unit!3465)))

(assert (=> b!208921 (= e!128802 e!128801)))

(declare-fun lt!76686 () List!3344)

(assert (=> b!208921 (= lt!76686 (list!1241 lt!76347))))

(declare-fun lt!76693 () Unit!3446)

(assert (=> b!208921 (= lt!76693 (lemmaDropApply!160 lt!76686 0))))

(assert (=> b!208921 (= (head!734 (drop!173 lt!76686 0)) (apply!557 lt!76686 0))))

(declare-fun lt!76688 () Unit!3446)

(assert (=> b!208921 (= lt!76688 lt!76693)))

(declare-fun lt!76696 () List!3344)

(assert (=> b!208921 (= lt!76696 (list!1241 lt!76347))))

(declare-fun lt!76692 () Unit!3446)

(assert (=> b!208921 (= lt!76692 (lemmaDropTail!152 lt!76696 0))))

(assert (=> b!208921 (= (tail!406 (drop!173 lt!76696 0)) (drop!173 lt!76696 (+ 0 1)))))

(declare-fun lt!76694 () Unit!3446)

(assert (=> b!208921 (= lt!76694 lt!76692)))

(declare-fun lt!76695 () Unit!3446)

(assert (=> b!208921 (= lt!76695 (forallContained!186 (list!1241 lt!76347) lambda!6446 (apply!554 lt!76347 0)))))

(assert (=> b!208921 (= lt!76689 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 lt!76347 separatorToken!170 (+ 0 1)))))

(assert (=> b!208921 (= lt!76697 (maxPrefixZipperSequence!198 thiss!17480 rules!1920 (++!818 (charsOf!274 (apply!554 lt!76347 0)) lt!76689)))))

(declare-fun res!96139 () Bool)

(assert (=> b!208921 (= res!96139 ((_ is Some!550) lt!76697))))

(declare-fun e!128806 () Bool)

(assert (=> b!208921 (=> (not res!96139) (not e!128806))))

(assert (=> b!208921 (= c!39863 e!128806)))

(declare-fun b!208922 () Bool)

(assert (=> b!208922 (= e!128806 (= (_1!1969 (v!14109 lt!76697)) (apply!554 lt!76347 0)))))

(declare-fun b!208923 () Bool)

(assert (=> b!208923 (= e!128803 (<= 0 (size!2661 lt!76347)))))

(declare-fun b!208924 () Bool)

(assert (=> b!208924 (= e!128801 call!10106)))

(declare-fun bm!10102 () Bool)

(declare-fun c!39861 () Bool)

(assert (=> bm!10102 (= c!39861 c!39863)))

(assert (=> bm!10102 (= call!10106 (++!818 e!128800 (ite c!39863 lt!76689 call!10105)))))

(declare-fun b!208925 () Bool)

(assert (=> b!208925 (= e!128800 call!10104)))

(declare-fun bm!10103 () Bool)

(assert (=> bm!10103 (= call!10105 call!10104)))

(assert (= (and d!54801 res!96137) b!208923))

(assert (= (and d!54801 c!39862) b!208918))

(assert (= (and d!54801 (not c!39862)) b!208921))

(assert (= (and b!208921 res!96139) b!208922))

(assert (= (and b!208921 c!39863) b!208924))

(assert (= (and b!208921 (not c!39863)) b!208917))

(assert (= (and b!208917 res!96138) b!208915))

(assert (= (and b!208917 c!39860) b!208916))

(assert (= (and b!208917 (not c!39860)) b!208920))

(assert (= (or b!208916 b!208920) bm!10101))

(assert (= (or b!208916 b!208920) bm!10103))

(assert (= (or b!208924 b!208915 bm!10101) bm!10100))

(assert (= (or b!208924 bm!10103) bm!10099))

(assert (= (or b!208924 b!208916) bm!10102))

(assert (= (and bm!10102 c!39861) b!208925))

(assert (= (and bm!10102 (not c!39861)) b!208919))

(assert (=> d!54801 m!230221))

(declare-fun m!231205 () Bool)

(assert (=> d!54801 m!231205))

(declare-fun m!231207 () Bool)

(assert (=> d!54801 m!231207))

(declare-fun m!231209 () Bool)

(assert (=> d!54801 m!231209))

(assert (=> d!54801 m!231209))

(assert (=> d!54801 m!231207))

(declare-fun m!231211 () Bool)

(assert (=> d!54801 m!231211))

(assert (=> d!54801 m!231207))

(declare-fun m!231213 () Bool)

(assert (=> d!54801 m!231213))

(declare-fun m!231215 () Bool)

(assert (=> bm!10100 m!231215))

(declare-fun m!231217 () Bool)

(assert (=> b!208919 m!231217))

(declare-fun m!231219 () Bool)

(assert (=> b!208920 m!231219))

(declare-fun m!231221 () Bool)

(assert (=> b!208920 m!231221))

(declare-fun m!231223 () Bool)

(assert (=> b!208920 m!231223))

(assert (=> b!208920 m!231219))

(declare-fun m!231225 () Bool)

(assert (=> b!208920 m!231225))

(assert (=> b!208920 m!231221))

(assert (=> b!208920 m!231225))

(declare-fun m!231227 () Bool)

(assert (=> b!208920 m!231227))

(assert (=> b!208920 m!231225))

(declare-fun m!231229 () Bool)

(assert (=> b!208920 m!231229))

(declare-fun m!231231 () Bool)

(assert (=> b!208916 m!231231))

(declare-fun m!231233 () Bool)

(assert (=> bm!10102 m!231233))

(declare-fun m!231235 () Bool)

(assert (=> bm!10099 m!231235))

(assert (=> b!208922 m!231215))

(assert (=> b!208921 m!231209))

(assert (=> b!208921 m!231215))

(declare-fun m!231237 () Bool)

(assert (=> b!208921 m!231237))

(declare-fun m!231239 () Bool)

(assert (=> b!208921 m!231239))

(declare-fun m!231241 () Bool)

(assert (=> b!208921 m!231241))

(declare-fun m!231243 () Bool)

(assert (=> b!208921 m!231243))

(declare-fun m!231245 () Bool)

(assert (=> b!208921 m!231245))

(declare-fun m!231247 () Bool)

(assert (=> b!208921 m!231247))

(declare-fun m!231249 () Bool)

(assert (=> b!208921 m!231249))

(declare-fun m!231251 () Bool)

(assert (=> b!208921 m!231251))

(declare-fun m!231253 () Bool)

(assert (=> b!208921 m!231253))

(assert (=> b!208921 m!231215))

(declare-fun m!231255 () Bool)

(assert (=> b!208921 m!231255))

(assert (=> b!208921 m!231247))

(declare-fun m!231257 () Bool)

(assert (=> b!208921 m!231257))

(declare-fun m!231259 () Bool)

(assert (=> b!208921 m!231259))

(declare-fun m!231261 () Bool)

(assert (=> b!208921 m!231261))

(assert (=> b!208921 m!231243))

(assert (=> b!208921 m!231209))

(assert (=> b!208921 m!231215))

(assert (=> b!208921 m!231261))

(assert (=> b!208921 m!231251))

(assert (=> b!208923 m!230221))

(assert (=> b!208283 d!54801))

(declare-fun d!54803 () Bool)

(declare-fun res!96144 () Bool)

(declare-fun e!128814 () Bool)

(assert (=> d!54803 (=> res!96144 e!128814)))

(assert (=> d!54803 (= res!96144 ((_ is Nil!3334) tokens!465))))

(assert (=> d!54803 (= (forall!723 tokens!465 lambda!6419) e!128814)))

(declare-fun b!208933 () Bool)

(declare-fun e!128815 () Bool)

(assert (=> b!208933 (= e!128814 e!128815)))

(declare-fun res!96145 () Bool)

(assert (=> b!208933 (=> (not res!96145) (not e!128815))))

(assert (=> b!208933 (= res!96145 (dynLambda!1489 lambda!6419 (h!8731 tokens!465)))))

(declare-fun b!208934 () Bool)

(assert (=> b!208934 (= e!128815 (forall!723 (t!31112 tokens!465) lambda!6419))))

(assert (= (and d!54803 (not res!96144)) b!208933))

(assert (= (and b!208933 res!96145) b!208934))

(declare-fun b_lambda!5375 () Bool)

(assert (=> (not b_lambda!5375) (not b!208933)))

(declare-fun m!231273 () Bool)

(assert (=> b!208933 m!231273))

(declare-fun m!231275 () Bool)

(assert (=> b!208934 m!231275))

(assert (=> b!208304 d!54803))

(declare-fun d!54807 () Bool)

(assert (=> d!54807 (= (inv!4166 (tag!807 (rule!1146 (h!8731 tokens!465)))) (= (mod (str.len (value!21956 (tag!807 (rule!1146 (h!8731 tokens!465))))) 2) 0))))

(assert (=> b!208285 d!54807))

(declare-fun d!54809 () Bool)

(declare-fun res!96146 () Bool)

(declare-fun e!128816 () Bool)

(assert (=> d!54809 (=> (not res!96146) (not e!128816))))

(assert (=> d!54809 (= res!96146 (semiInverseModEq!211 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toValue!1302 (transformation!619 (rule!1146 (h!8731 tokens!465))))))))

(assert (=> d!54809 (= (inv!4169 (transformation!619 (rule!1146 (h!8731 tokens!465)))) e!128816)))

(declare-fun b!208935 () Bool)

(assert (=> b!208935 (= e!128816 (equivClasses!194 (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toValue!1302 (transformation!619 (rule!1146 (h!8731 tokens!465))))))))

(assert (= (and d!54809 res!96146) b!208935))

(declare-fun m!231277 () Bool)

(assert (=> d!54809 m!231277))

(declare-fun m!231279 () Bool)

(assert (=> b!208935 m!231279))

(assert (=> b!208285 d!54809))

(declare-fun d!54811 () Bool)

(declare-fun lt!76703 () Token!982)

(assert (=> d!54811 (= lt!76703 (apply!557 (list!1241 (_1!1967 lt!76308)) 0))))

(assert (=> d!54811 (= lt!76703 (apply!558 (c!39723 (_1!1967 lt!76308)) 0))))

(declare-fun e!128817 () Bool)

(assert (=> d!54811 e!128817))

(declare-fun res!96147 () Bool)

(assert (=> d!54811 (=> (not res!96147) (not e!128817))))

(assert (=> d!54811 (= res!96147 (<= 0 0))))

(assert (=> d!54811 (= (apply!554 (_1!1967 lt!76308) 0) lt!76703)))

(declare-fun b!208936 () Bool)

(assert (=> b!208936 (= e!128817 (< 0 (size!2661 (_1!1967 lt!76308))))))

(assert (= (and d!54811 res!96147) b!208936))

(declare-fun m!231281 () Bool)

(assert (=> d!54811 m!231281))

(assert (=> d!54811 m!231281))

(declare-fun m!231283 () Bool)

(assert (=> d!54811 m!231283))

(declare-fun m!231285 () Bool)

(assert (=> d!54811 m!231285))

(assert (=> b!208936 m!230191))

(assert (=> b!208306 d!54811))

(declare-fun d!54813 () Bool)

(declare-fun res!96156 () Bool)

(declare-fun e!128828 () Bool)

(assert (=> d!54813 (=> res!96156 e!128828)))

(assert (=> d!54813 (= res!96156 (not ((_ is Cons!3333) rules!1920)))))

(assert (=> d!54813 (= (sepAndNonSepRulesDisjointChars!208 rules!1920 rules!1920) e!128828)))

(declare-fun b!208953 () Bool)

(declare-fun e!128829 () Bool)

(assert (=> b!208953 (= e!128828 e!128829)))

(declare-fun res!96157 () Bool)

(assert (=> b!208953 (=> (not res!96157) (not e!128829))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!69 (Rule!1038 List!3343) Bool)

(assert (=> b!208953 (= res!96157 (ruleDisjointCharsFromAllFromOtherType!69 (h!8730 rules!1920) rules!1920))))

(declare-fun b!208954 () Bool)

(assert (=> b!208954 (= e!128829 (sepAndNonSepRulesDisjointChars!208 rules!1920 (t!31111 rules!1920)))))

(assert (= (and d!54813 (not res!96156)) b!208953))

(assert (= (and b!208953 res!96157) b!208954))

(declare-fun m!231287 () Bool)

(assert (=> b!208953 m!231287))

(declare-fun m!231289 () Bool)

(assert (=> b!208954 m!231289))

(assert (=> b!208284 d!54813))

(declare-fun d!54815 () Bool)

(assert (=> d!54815 (= (list!1240 lt!76345) (list!1243 (c!39721 lt!76345)))))

(declare-fun bs!21122 () Bool)

(assert (= bs!21122 d!54815))

(declare-fun m!231291 () Bool)

(assert (=> bs!21122 m!231291))

(assert (=> b!208286 d!54815))

(declare-fun d!54817 () Bool)

(declare-fun lt!76709 () BalanceConc!2128)

(assert (=> d!54817 (= (list!1240 lt!76709) (printList!189 thiss!17480 (list!1241 lt!76324)))))

(assert (=> d!54817 (= lt!76709 (printTailRec!199 thiss!17480 lt!76324 0 (BalanceConc!2129 Empty!1060)))))

(assert (=> d!54817 (= (print!236 thiss!17480 lt!76324) lt!76709)))

(declare-fun bs!21123 () Bool)

(assert (= bs!21123 d!54817))

(declare-fun m!231307 () Bool)

(assert (=> bs!21123 m!231307))

(declare-fun m!231309 () Bool)

(assert (=> bs!21123 m!231309))

(assert (=> bs!21123 m!231309))

(declare-fun m!231311 () Bool)

(assert (=> bs!21123 m!231311))

(assert (=> bs!21123 m!230369))

(assert (=> b!208286 d!54817))

(declare-fun d!54821 () Bool)

(declare-fun lt!76727 () BalanceConc!2128)

(declare-fun printListTailRec!88 (LexerInterface!505 List!3344 List!3342) List!3342)

(assert (=> d!54821 (= (list!1240 lt!76727) (printListTailRec!88 thiss!17480 (dropList!120 lt!76324 0) (list!1240 (BalanceConc!2129 Empty!1060))))))

(declare-fun e!128837 () BalanceConc!2128)

(assert (=> d!54821 (= lt!76727 e!128837)))

(declare-fun c!39872 () Bool)

(assert (=> d!54821 (= c!39872 (>= 0 (size!2661 lt!76324)))))

(declare-fun e!128838 () Bool)

(assert (=> d!54821 e!128838))

(declare-fun res!96162 () Bool)

(assert (=> d!54821 (=> (not res!96162) (not e!128838))))

(assert (=> d!54821 (= res!96162 (>= 0 0))))

(assert (=> d!54821 (= (printTailRec!199 thiss!17480 lt!76324 0 (BalanceConc!2129 Empty!1060)) lt!76727)))

(declare-fun b!208967 () Bool)

(assert (=> b!208967 (= e!128838 (<= 0 (size!2661 lt!76324)))))

(declare-fun b!208968 () Bool)

(assert (=> b!208968 (= e!128837 (BalanceConc!2129 Empty!1060))))

(declare-fun b!208969 () Bool)

(assert (=> b!208969 (= e!128837 (printTailRec!199 thiss!17480 lt!76324 (+ 0 1) (++!818 (BalanceConc!2129 Empty!1060) (charsOf!274 (apply!554 lt!76324 0)))))))

(declare-fun lt!76730 () List!3344)

(assert (=> b!208969 (= lt!76730 (list!1241 lt!76324))))

(declare-fun lt!76726 () Unit!3446)

(assert (=> b!208969 (= lt!76726 (lemmaDropApply!160 lt!76730 0))))

(assert (=> b!208969 (= (head!734 (drop!173 lt!76730 0)) (apply!557 lt!76730 0))))

(declare-fun lt!76725 () Unit!3446)

(assert (=> b!208969 (= lt!76725 lt!76726)))

(declare-fun lt!76728 () List!3344)

(assert (=> b!208969 (= lt!76728 (list!1241 lt!76324))))

(declare-fun lt!76729 () Unit!3446)

(assert (=> b!208969 (= lt!76729 (lemmaDropTail!152 lt!76728 0))))

(assert (=> b!208969 (= (tail!406 (drop!173 lt!76728 0)) (drop!173 lt!76728 (+ 0 1)))))

(declare-fun lt!76724 () Unit!3446)

(assert (=> b!208969 (= lt!76724 lt!76729)))

(assert (= (and d!54821 res!96162) b!208967))

(assert (= (and d!54821 c!39872) b!208968))

(assert (= (and d!54821 (not c!39872)) b!208969))

(declare-fun m!231313 () Bool)

(assert (=> d!54821 m!231313))

(declare-fun m!231315 () Bool)

(assert (=> d!54821 m!231315))

(declare-fun m!231317 () Bool)

(assert (=> d!54821 m!231317))

(declare-fun m!231319 () Bool)

(assert (=> d!54821 m!231319))

(declare-fun m!231321 () Bool)

(assert (=> d!54821 m!231321))

(assert (=> d!54821 m!231315))

(assert (=> d!54821 m!231317))

(assert (=> b!208967 m!231321))

(declare-fun m!231323 () Bool)

(assert (=> b!208969 m!231323))

(declare-fun m!231325 () Bool)

(assert (=> b!208969 m!231325))

(declare-fun m!231327 () Bool)

(assert (=> b!208969 m!231327))

(assert (=> b!208969 m!231309))

(declare-fun m!231329 () Bool)

(assert (=> b!208969 m!231329))

(declare-fun m!231331 () Bool)

(assert (=> b!208969 m!231331))

(declare-fun m!231333 () Bool)

(assert (=> b!208969 m!231333))

(declare-fun m!231335 () Bool)

(assert (=> b!208969 m!231335))

(declare-fun m!231337 () Bool)

(assert (=> b!208969 m!231337))

(declare-fun m!231339 () Bool)

(assert (=> b!208969 m!231339))

(assert (=> b!208969 m!231331))

(assert (=> b!208969 m!231323))

(declare-fun m!231341 () Bool)

(assert (=> b!208969 m!231341))

(assert (=> b!208969 m!231335))

(assert (=> b!208969 m!231339))

(declare-fun m!231343 () Bool)

(assert (=> b!208969 m!231343))

(assert (=> b!208969 m!231325))

(declare-fun m!231345 () Bool)

(assert (=> b!208969 m!231345))

(assert (=> b!208286 d!54821))

(declare-fun d!54823 () Bool)

(declare-fun e!128841 () Bool)

(assert (=> d!54823 e!128841))

(declare-fun res!96165 () Bool)

(assert (=> d!54823 (=> (not res!96165) (not e!128841))))

(declare-fun lt!76733 () BalanceConc!2130)

(assert (=> d!54823 (= res!96165 (= (list!1241 lt!76733) (Cons!3334 (h!8731 tokens!465) Nil!3334)))))

(declare-fun singleton!69 (Token!982) BalanceConc!2130)

(assert (=> d!54823 (= lt!76733 (singleton!69 (h!8731 tokens!465)))))

(assert (=> d!54823 (= (singletonSeq!171 (h!8731 tokens!465)) lt!76733)))

(declare-fun b!208972 () Bool)

(declare-fun isBalanced!280 (Conc!1061) Bool)

(assert (=> b!208972 (= e!128841 (isBalanced!280 (c!39723 lt!76733)))))

(assert (= (and d!54823 res!96165) b!208972))

(declare-fun m!231347 () Bool)

(assert (=> d!54823 m!231347))

(declare-fun m!231349 () Bool)

(assert (=> d!54823 m!231349))

(declare-fun m!231351 () Bool)

(assert (=> b!208972 m!231351))

(assert (=> b!208286 d!54823))

(declare-fun d!54825 () Bool)

(declare-fun c!39875 () Bool)

(assert (=> d!54825 (= c!39875 ((_ is Cons!3334) (Cons!3334 (h!8731 tokens!465) Nil!3334)))))

(declare-fun e!128844 () List!3342)

(assert (=> d!54825 (= (printList!189 thiss!17480 (Cons!3334 (h!8731 tokens!465) Nil!3334)) e!128844)))

(declare-fun b!208977 () Bool)

(assert (=> b!208977 (= e!128844 (++!816 (list!1240 (charsOf!274 (h!8731 (Cons!3334 (h!8731 tokens!465) Nil!3334)))) (printList!189 thiss!17480 (t!31112 (Cons!3334 (h!8731 tokens!465) Nil!3334)))))))

(declare-fun b!208978 () Bool)

(assert (=> b!208978 (= e!128844 Nil!3332)))

(assert (= (and d!54825 c!39875) b!208977))

(assert (= (and d!54825 (not c!39875)) b!208978))

(declare-fun m!231353 () Bool)

(assert (=> b!208977 m!231353))

(assert (=> b!208977 m!231353))

(declare-fun m!231355 () Bool)

(assert (=> b!208977 m!231355))

(declare-fun m!231357 () Bool)

(assert (=> b!208977 m!231357))

(assert (=> b!208977 m!231355))

(assert (=> b!208977 m!231357))

(declare-fun m!231359 () Bool)

(assert (=> b!208977 m!231359))

(assert (=> b!208286 d!54825))

(declare-fun b!208979 () Bool)

(declare-fun e!128846 () Bool)

(declare-fun e!128847 () Bool)

(assert (=> b!208979 (= e!128846 e!128847)))

(declare-fun c!39876 () Bool)

(assert (=> b!208979 (= c!39876 ((_ is IntegerValue!1924) (value!21957 separatorToken!170)))))

(declare-fun b!208980 () Bool)

(assert (=> b!208980 (= e!128847 (inv!17 (value!21957 separatorToken!170)))))

(declare-fun d!54827 () Bool)

(declare-fun c!39877 () Bool)

(assert (=> d!54827 (= c!39877 ((_ is IntegerValue!1923) (value!21957 separatorToken!170)))))

(assert (=> d!54827 (= (inv!21 (value!21957 separatorToken!170)) e!128846)))

(declare-fun b!208981 () Bool)

(assert (=> b!208981 (= e!128846 (inv!16 (value!21957 separatorToken!170)))))

(declare-fun b!208982 () Bool)

(declare-fun res!96166 () Bool)

(declare-fun e!128845 () Bool)

(assert (=> b!208982 (=> res!96166 e!128845)))

(assert (=> b!208982 (= res!96166 (not ((_ is IntegerValue!1925) (value!21957 separatorToken!170))))))

(assert (=> b!208982 (= e!128847 e!128845)))

(declare-fun b!208983 () Bool)

(assert (=> b!208983 (= e!128845 (inv!15 (value!21957 separatorToken!170)))))

(assert (= (and d!54827 c!39877) b!208981))

(assert (= (and d!54827 (not c!39877)) b!208979))

(assert (= (and b!208979 c!39876) b!208980))

(assert (= (and b!208979 (not c!39876)) b!208982))

(assert (= (and b!208982 (not res!96166)) b!208983))

(declare-fun m!231361 () Bool)

(assert (=> b!208980 m!231361))

(declare-fun m!231363 () Bool)

(assert (=> b!208981 m!231363))

(declare-fun m!231365 () Bool)

(assert (=> b!208983 m!231365))

(assert (=> b!208307 d!54827))

(declare-fun d!54829 () Bool)

(declare-fun list!1245 (Conc!1061) List!3344)

(assert (=> d!54829 (= (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))) (list!1245 (c!39723 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334)))))))

(declare-fun bs!21124 () Bool)

(assert (= bs!21124 d!54829))

(declare-fun m!231367 () Bool)

(assert (=> bs!21124 m!231367))

(assert (=> b!208289 d!54829))

(declare-fun b!208984 () Bool)

(declare-fun e!128848 () Bool)

(declare-fun lt!76734 () tuple2!3502)

(assert (=> b!208984 (= e!128848 (not (isEmpty!1792 (_1!1967 lt!76734))))))

(declare-fun b!208985 () Bool)

(declare-fun e!128850 () Bool)

(assert (=> b!208985 (= e!128850 (= (list!1240 (_2!1967 lt!76734)) (_2!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76313)))))))

(declare-fun b!208986 () Bool)

(declare-fun e!128849 () Bool)

(assert (=> b!208986 (= e!128849 (= (_2!1967 lt!76734) lt!76313))))

(declare-fun b!208988 () Bool)

(assert (=> b!208988 (= e!128849 e!128848)))

(declare-fun res!96168 () Bool)

(assert (=> b!208988 (= res!96168 (< (size!2664 (_2!1967 lt!76734)) (size!2664 lt!76313)))))

(assert (=> b!208988 (=> (not res!96168) (not e!128848))))

(declare-fun b!208987 () Bool)

(declare-fun res!96169 () Bool)

(assert (=> b!208987 (=> (not res!96169) (not e!128850))))

(assert (=> b!208987 (= res!96169 (= (list!1241 (_1!1967 lt!76734)) (_1!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76313)))))))

(declare-fun d!54831 () Bool)

(assert (=> d!54831 e!128850))

(declare-fun res!96167 () Bool)

(assert (=> d!54831 (=> (not res!96167) (not e!128850))))

(assert (=> d!54831 (= res!96167 e!128849)))

(declare-fun c!39878 () Bool)

(assert (=> d!54831 (= c!39878 (> (size!2661 (_1!1967 lt!76734)) 0))))

(assert (=> d!54831 (= lt!76734 (lexTailRecV2!131 thiss!17480 rules!1920 lt!76313 (BalanceConc!2129 Empty!1060) lt!76313 (BalanceConc!2131 Empty!1061)))))

(assert (=> d!54831 (= (lex!305 thiss!17480 rules!1920 lt!76313) lt!76734)))

(assert (= (and d!54831 c!39878) b!208988))

(assert (= (and d!54831 (not c!39878)) b!208986))

(assert (= (and b!208988 res!96168) b!208984))

(assert (= (and d!54831 res!96167) b!208987))

(assert (= (and b!208987 res!96169) b!208985))

(declare-fun m!231369 () Bool)

(assert (=> b!208984 m!231369))

(declare-fun m!231371 () Bool)

(assert (=> d!54831 m!231371))

(declare-fun m!231373 () Bool)

(assert (=> d!54831 m!231373))

(declare-fun m!231375 () Bool)

(assert (=> b!208987 m!231375))

(declare-fun m!231377 () Bool)

(assert (=> b!208987 m!231377))

(assert (=> b!208987 m!231377))

(declare-fun m!231379 () Bool)

(assert (=> b!208987 m!231379))

(declare-fun m!231381 () Bool)

(assert (=> b!208985 m!231381))

(assert (=> b!208985 m!231377))

(assert (=> b!208985 m!231377))

(assert (=> b!208985 m!231379))

(declare-fun m!231383 () Bool)

(assert (=> b!208988 m!231383))

(declare-fun m!231385 () Bool)

(assert (=> b!208988 m!231385))

(assert (=> b!208289 d!54831))

(declare-fun d!54833 () Bool)

(assert (=> d!54833 (= (isEmpty!1790 (t!31112 tokens!465)) ((_ is Nil!3334) (t!31112 tokens!465)))))

(assert (=> b!208289 d!54833))

(declare-fun d!54835 () Bool)

(declare-fun lt!76737 () Int)

(declare-fun size!2668 (List!3344) Int)

(assert (=> d!54835 (= lt!76737 (size!2668 (list!1241 (_1!1967 lt!76319))))))

(declare-fun size!2669 (Conc!1061) Int)

(assert (=> d!54835 (= lt!76737 (size!2669 (c!39723 (_1!1967 lt!76319))))))

(assert (=> d!54835 (= (size!2661 (_1!1967 lt!76319)) lt!76737)))

(declare-fun bs!21125 () Bool)

(assert (= bs!21125 d!54835))

(assert (=> bs!21125 m!230607))

(assert (=> bs!21125 m!230607))

(declare-fun m!231387 () Bool)

(assert (=> bs!21125 m!231387))

(declare-fun m!231389 () Bool)

(assert (=> bs!21125 m!231389))

(assert (=> b!208289 d!54835))

(declare-fun d!54837 () Bool)

(assert (=> d!54837 (= (list!1240 (charsOf!274 lt!76348)) (list!1243 (c!39721 (charsOf!274 lt!76348))))))

(declare-fun bs!21126 () Bool)

(assert (= bs!21126 d!54837))

(declare-fun m!231391 () Bool)

(assert (=> bs!21126 m!231391))

(assert (=> b!208289 d!54837))

(declare-fun d!54839 () Bool)

(declare-fun lt!76740 () Bool)

(assert (=> d!54839 (= lt!76740 (select (content!452 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170)))) lt!76311))))

(declare-fun e!128855 () Bool)

(assert (=> d!54839 (= lt!76740 e!128855)))

(declare-fun res!96174 () Bool)

(assert (=> d!54839 (=> (not res!96174) (not e!128855))))

(assert (=> d!54839 (= res!96174 ((_ is Cons!3332) (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170)))))))

(assert (=> d!54839 (= (contains!564 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170))) lt!76311) lt!76740)))

(declare-fun b!208993 () Bool)

(declare-fun e!128856 () Bool)

(assert (=> b!208993 (= e!128855 e!128856)))

(declare-fun res!96175 () Bool)

(assert (=> b!208993 (=> res!96175 e!128856)))

(assert (=> b!208993 (= res!96175 (= (h!8729 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170)))) lt!76311))))

(declare-fun b!208994 () Bool)

(assert (=> b!208994 (= e!128856 (contains!564 (t!31110 (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170)))) lt!76311))))

(assert (= (and d!54839 res!96174) b!208993))

(assert (= (and b!208993 (not res!96175)) b!208994))

(assert (=> d!54839 m!230215))

(declare-fun m!231393 () Bool)

(assert (=> d!54839 m!231393))

(declare-fun m!231395 () Bool)

(assert (=> d!54839 m!231395))

(declare-fun m!231397 () Bool)

(assert (=> b!208994 m!231397))

(assert (=> b!208289 d!54839))

(declare-fun d!54841 () Bool)

(declare-fun lt!76741 () Int)

(assert (=> d!54841 (= lt!76741 (size!2668 (list!1241 lt!76347)))))

(assert (=> d!54841 (= lt!76741 (size!2669 (c!39723 lt!76347)))))

(assert (=> d!54841 (= (size!2661 lt!76347) lt!76741)))

(declare-fun bs!21127 () Bool)

(assert (= bs!21127 d!54841))

(assert (=> bs!21127 m!231209))

(assert (=> bs!21127 m!231209))

(declare-fun m!231399 () Bool)

(assert (=> bs!21127 m!231399))

(declare-fun m!231401 () Bool)

(assert (=> bs!21127 m!231401))

(assert (=> b!208289 d!54841))

(declare-fun d!54843 () Bool)

(assert (=> d!54843 (= lt!76312 (_2!1968 lt!76331))))

(declare-fun lt!76744 () Unit!3446)

(declare-fun choose!2054 (List!3342 List!3342 List!3342 List!3342 List!3342) Unit!3446)

(assert (=> d!54843 (= lt!76744 (choose!2054 lt!76309 lt!76312 lt!76309 (_2!1968 lt!76331) lt!76351))))

(assert (=> d!54843 (isPrefix!315 lt!76309 lt!76351)))

(assert (=> d!54843 (= (lemmaSamePrefixThenSameSuffix!140 lt!76309 lt!76312 lt!76309 (_2!1968 lt!76331) lt!76351) lt!76744)))

(declare-fun bs!21128 () Bool)

(assert (= bs!21128 d!54843))

(declare-fun m!231403 () Bool)

(assert (=> bs!21128 m!231403))

(declare-fun m!231405 () Bool)

(assert (=> bs!21128 m!231405))

(assert (=> b!208289 d!54843))

(declare-fun d!54845 () Bool)

(declare-fun isEmpty!1801 (Option!550) Bool)

(assert (=> d!54845 (= (isDefined!400 lt!76338) (not (isEmpty!1801 lt!76338)))))

(declare-fun bs!21129 () Bool)

(assert (= bs!21129 d!54845))

(declare-fun m!231407 () Bool)

(assert (=> bs!21129 m!231407))

(assert (=> b!208289 d!54845))

(declare-fun b!209007 () Bool)

(declare-fun lt!76751 () Unit!3446)

(declare-fun lt!76753 () Unit!3446)

(assert (=> b!209007 (= lt!76751 lt!76753)))

(assert (=> b!209007 (rulesInvariant!471 thiss!17480 (t!31111 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!12 (LexerInterface!505 Rule!1038 List!3343) Unit!3446)

(assert (=> b!209007 (= lt!76753 (lemmaInvariantOnRulesThenOnTail!12 thiss!17480 (h!8730 rules!1920) (t!31111 rules!1920)))))

(declare-fun e!128867 () Option!550)

(assert (=> b!209007 (= e!128867 (getRuleFromTag!60 thiss!17480 (t!31111 rules!1920) (tag!807 (rule!1146 separatorToken!170))))))

(declare-fun b!209008 () Bool)

(assert (=> b!209008 (= e!128867 None!549)))

(declare-fun d!54847 () Bool)

(declare-fun e!128868 () Bool)

(assert (=> d!54847 e!128868))

(declare-fun res!96180 () Bool)

(assert (=> d!54847 (=> res!96180 e!128868)))

(declare-fun lt!76752 () Option!550)

(assert (=> d!54847 (= res!96180 (isEmpty!1801 lt!76752))))

(declare-fun e!128865 () Option!550)

(assert (=> d!54847 (= lt!76752 e!128865)))

(declare-fun c!39884 () Bool)

(assert (=> d!54847 (= c!39884 (and ((_ is Cons!3333) rules!1920) (= (tag!807 (h!8730 rules!1920)) (tag!807 (rule!1146 separatorToken!170)))))))

(assert (=> d!54847 (rulesInvariant!471 thiss!17480 rules!1920)))

(assert (=> d!54847 (= (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 separatorToken!170))) lt!76752)))

(declare-fun b!209009 () Bool)

(declare-fun e!128866 () Bool)

(assert (=> b!209009 (= e!128868 e!128866)))

(declare-fun res!96181 () Bool)

(assert (=> b!209009 (=> (not res!96181) (not e!128866))))

(assert (=> b!209009 (= res!96181 (contains!568 rules!1920 (get!1013 lt!76752)))))

(declare-fun b!209010 () Bool)

(assert (=> b!209010 (= e!128865 (Some!549 (h!8730 rules!1920)))))

(declare-fun b!209011 () Bool)

(assert (=> b!209011 (= e!128865 e!128867)))

(declare-fun c!39883 () Bool)

(assert (=> b!209011 (= c!39883 (and ((_ is Cons!3333) rules!1920) (not (= (tag!807 (h!8730 rules!1920)) (tag!807 (rule!1146 separatorToken!170))))))))

(declare-fun b!209012 () Bool)

(assert (=> b!209012 (= e!128866 (= (tag!807 (get!1013 lt!76752)) (tag!807 (rule!1146 separatorToken!170))))))

(assert (= (and d!54847 c!39884) b!209010))

(assert (= (and d!54847 (not c!39884)) b!209011))

(assert (= (and b!209011 c!39883) b!209007))

(assert (= (and b!209011 (not c!39883)) b!209008))

(assert (= (and d!54847 (not res!96180)) b!209009))

(assert (= (and b!209009 res!96181) b!209012))

(declare-fun m!231409 () Bool)

(assert (=> b!209007 m!231409))

(declare-fun m!231411 () Bool)

(assert (=> b!209007 m!231411))

(declare-fun m!231413 () Bool)

(assert (=> b!209007 m!231413))

(declare-fun m!231415 () Bool)

(assert (=> d!54847 m!231415))

(assert (=> d!54847 m!230295))

(declare-fun m!231417 () Bool)

(assert (=> b!209009 m!231417))

(assert (=> b!209009 m!231417))

(declare-fun m!231419 () Bool)

(assert (=> b!209009 m!231419))

(assert (=> b!209012 m!231417))

(assert (=> b!208289 d!54847))

(declare-fun d!54849 () Bool)

(declare-fun lt!76754 () Int)

(assert (=> d!54849 (= lt!76754 (size!2668 (list!1241 (_1!1967 lt!76308))))))

(assert (=> d!54849 (= lt!76754 (size!2669 (c!39723 (_1!1967 lt!76308))))))

(assert (=> d!54849 (= (size!2661 (_1!1967 lt!76308)) lt!76754)))

(declare-fun bs!21130 () Bool)

(assert (= bs!21130 d!54849))

(assert (=> bs!21130 m!231281))

(assert (=> bs!21130 m!231281))

(declare-fun m!231421 () Bool)

(assert (=> bs!21130 m!231421))

(declare-fun m!231423 () Bool)

(assert (=> bs!21130 m!231423))

(assert (=> b!208289 d!54849))

(declare-fun d!54851 () Bool)

(assert (=> d!54851 (isPrefix!315 lt!76309 (++!816 lt!76309 lt!76312))))

(declare-fun lt!76757 () Unit!3446)

(declare-fun choose!2055 (List!3342 List!3342) Unit!3446)

(assert (=> d!54851 (= lt!76757 (choose!2055 lt!76309 lt!76312))))

(assert (=> d!54851 (= (lemmaConcatTwoListThenFirstIsPrefix!210 lt!76309 lt!76312) lt!76757)))

(declare-fun bs!21131 () Bool)

(assert (= bs!21131 d!54851))

(assert (=> bs!21131 m!230341))

(assert (=> bs!21131 m!230341))

(declare-fun m!231425 () Bool)

(assert (=> bs!21131 m!231425))

(declare-fun m!231427 () Bool)

(assert (=> bs!21131 m!231427))

(assert (=> b!208289 d!54851))

(declare-fun bm!10115 () Bool)

(declare-fun call!10123 () List!3342)

(declare-fun c!39899 () Bool)

(assert (=> bm!10115 (= call!10123 (usedCharacters!24 (ite c!39899 (regOne!2199 (regex!619 (rule!1146 separatorToken!170))) (regOne!2198 (regex!619 (rule!1146 separatorToken!170))))))))

(declare-fun bm!10116 () Bool)

(declare-fun call!10122 () List!3342)

(declare-fun call!10120 () List!3342)

(assert (=> bm!10116 (= call!10122 call!10120)))

(declare-fun b!209044 () Bool)

(declare-fun e!128889 () List!3342)

(declare-fun e!128887 () List!3342)

(assert (=> b!209044 (= e!128889 e!128887)))

(declare-fun c!39896 () Bool)

(assert (=> b!209044 (= c!39896 ((_ is ElementMatch!843) (regex!619 (rule!1146 separatorToken!170))))))

(declare-fun bm!10117 () Bool)

(declare-fun call!10121 () List!3342)

(assert (=> bm!10117 (= call!10121 (++!816 call!10123 call!10122))))

(declare-fun b!209046 () Bool)

(declare-fun e!128886 () List!3342)

(assert (=> b!209046 (= e!128886 call!10121)))

(declare-fun b!209047 () Bool)

(assert (=> b!209047 (= e!128887 (Cons!3332 (c!39722 (regex!619 (rule!1146 separatorToken!170))) Nil!3332))))

(declare-fun b!209048 () Bool)

(declare-fun e!128888 () List!3342)

(assert (=> b!209048 (= e!128888 call!10120)))

(declare-fun b!209049 () Bool)

(assert (=> b!209049 (= e!128886 call!10121)))

(declare-fun b!209050 () Bool)

(assert (=> b!209050 (= e!128888 e!128886)))

(assert (=> b!209050 (= c!39899 ((_ is Union!843) (regex!619 (rule!1146 separatorToken!170))))))

(declare-fun d!54853 () Bool)

(declare-fun c!39897 () Bool)

(assert (=> d!54853 (= c!39897 (or ((_ is EmptyExpr!843) (regex!619 (rule!1146 separatorToken!170))) ((_ is EmptyLang!843) (regex!619 (rule!1146 separatorToken!170)))))))

(assert (=> d!54853 (= (usedCharacters!24 (regex!619 (rule!1146 separatorToken!170))) e!128889)))

(declare-fun b!209045 () Bool)

(declare-fun c!39898 () Bool)

(assert (=> b!209045 (= c!39898 ((_ is Star!843) (regex!619 (rule!1146 separatorToken!170))))))

(assert (=> b!209045 (= e!128887 e!128888)))

(declare-fun bm!10118 () Bool)

(assert (=> bm!10118 (= call!10120 (usedCharacters!24 (ite c!39898 (reg!1172 (regex!619 (rule!1146 separatorToken!170))) (ite c!39899 (regTwo!2199 (regex!619 (rule!1146 separatorToken!170))) (regTwo!2198 (regex!619 (rule!1146 separatorToken!170)))))))))

(declare-fun b!209051 () Bool)

(assert (=> b!209051 (= e!128889 Nil!3332)))

(assert (= (and d!54853 c!39897) b!209051))

(assert (= (and d!54853 (not c!39897)) b!209044))

(assert (= (and b!209044 c!39896) b!209047))

(assert (= (and b!209044 (not c!39896)) b!209045))

(assert (= (and b!209045 c!39898) b!209048))

(assert (= (and b!209045 (not c!39898)) b!209050))

(assert (= (and b!209050 c!39899) b!209046))

(assert (= (and b!209050 (not c!39899)) b!209049))

(assert (= (or b!209046 b!209049) bm!10115))

(assert (= (or b!209046 b!209049) bm!10116))

(assert (= (or b!209046 b!209049) bm!10117))

(assert (= (or b!209048 bm!10116) bm!10118))

(declare-fun m!231453 () Bool)

(assert (=> bm!10115 m!231453))

(declare-fun m!231455 () Bool)

(assert (=> bm!10117 m!231455))

(declare-fun m!231457 () Bool)

(assert (=> bm!10118 m!231457))

(assert (=> b!208289 d!54853))

(declare-fun d!54859 () Bool)

(assert (=> d!54859 (= (head!733 lt!76320) (h!8729 lt!76320))))

(assert (=> b!208289 d!54859))

(declare-fun d!54865 () Bool)

(declare-fun e!128892 () Bool)

(assert (=> d!54865 e!128892))

(declare-fun res!96193 () Bool)

(assert (=> d!54865 (=> (not res!96193) (not e!128892))))

(declare-fun lt!76763 () BalanceConc!2130)

(assert (=> d!54865 (= res!96193 (= (list!1241 lt!76763) (Cons!3334 lt!76348 Nil!3334)))))

(assert (=> d!54865 (= lt!76763 (singleton!69 lt!76348))))

(assert (=> d!54865 (= (singletonSeq!171 lt!76348) lt!76763)))

(declare-fun b!209054 () Bool)

(assert (=> b!209054 (= e!128892 (isBalanced!280 (c!39723 lt!76763)))))

(assert (= (and d!54865 res!96193) b!209054))

(declare-fun m!231465 () Bool)

(assert (=> d!54865 m!231465))

(declare-fun m!231467 () Bool)

(assert (=> d!54865 m!231467))

(declare-fun m!231469 () Bool)

(assert (=> b!209054 m!231469))

(assert (=> b!208289 d!54865))

(declare-fun b!209056 () Bool)

(declare-fun e!128894 () Option!549)

(declare-fun lt!76765 () Option!549)

(declare-fun lt!76764 () Option!549)

(assert (=> b!209056 (= e!128894 (ite (and ((_ is None!548) lt!76765) ((_ is None!548) lt!76764)) None!548 (ite ((_ is None!548) lt!76764) lt!76765 (ite ((_ is None!548) lt!76765) lt!76764 (ite (>= (size!2660 (_1!1968 (v!14107 lt!76765))) (size!2660 (_1!1968 (v!14107 lt!76764)))) lt!76765 lt!76764)))))))

(declare-fun call!10124 () Option!549)

(assert (=> b!209056 (= lt!76765 call!10124)))

(assert (=> b!209056 (= lt!76764 (maxPrefix!235 thiss!17480 (t!31111 rules!1920) lt!76312))))

(declare-fun b!209057 () Bool)

(assert (=> b!209057 (= e!128894 call!10124)))

(declare-fun b!209058 () Bool)

(declare-fun res!96194 () Bool)

(declare-fun e!128895 () Bool)

(assert (=> b!209058 (=> (not res!96194) (not e!128895))))

(declare-fun lt!76766 () Option!549)

(assert (=> b!209058 (= res!96194 (matchR!181 (regex!619 (rule!1146 (_1!1968 (get!1012 lt!76766)))) (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76766))))))))

(declare-fun b!209059 () Bool)

(declare-fun e!128893 () Bool)

(assert (=> b!209059 (= e!128893 e!128895)))

(declare-fun res!96197 () Bool)

(assert (=> b!209059 (=> (not res!96197) (not e!128895))))

(assert (=> b!209059 (= res!96197 (isDefined!401 lt!76766))))

(declare-fun b!209060 () Bool)

(declare-fun res!96200 () Bool)

(assert (=> b!209060 (=> (not res!96200) (not e!128895))))

(assert (=> b!209060 (= res!96200 (= (++!816 (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76766)))) (_2!1968 (get!1012 lt!76766))) lt!76312))))

(declare-fun b!209061 () Bool)

(assert (=> b!209061 (= e!128895 (contains!568 rules!1920 (rule!1146 (_1!1968 (get!1012 lt!76766)))))))

(declare-fun bm!10119 () Bool)

(assert (=> bm!10119 (= call!10124 (maxPrefixOneRule!103 thiss!17480 (h!8730 rules!1920) lt!76312))))

(declare-fun d!54867 () Bool)

(assert (=> d!54867 e!128893))

(declare-fun res!96199 () Bool)

(assert (=> d!54867 (=> res!96199 e!128893)))

(assert (=> d!54867 (= res!96199 (isEmpty!1799 lt!76766))))

(assert (=> d!54867 (= lt!76766 e!128894)))

(declare-fun c!39900 () Bool)

(assert (=> d!54867 (= c!39900 (and ((_ is Cons!3333) rules!1920) ((_ is Nil!3333) (t!31111 rules!1920))))))

(declare-fun lt!76768 () Unit!3446)

(declare-fun lt!76767 () Unit!3446)

(assert (=> d!54867 (= lt!76768 lt!76767)))

(assert (=> d!54867 (isPrefix!315 lt!76312 lt!76312)))

(assert (=> d!54867 (= lt!76767 (lemmaIsPrefixRefl!169 lt!76312 lt!76312))))

(assert (=> d!54867 (rulesValidInductive!158 thiss!17480 rules!1920)))

(assert (=> d!54867 (= (maxPrefix!235 thiss!17480 rules!1920 lt!76312) lt!76766)))

(declare-fun b!209055 () Bool)

(declare-fun res!96195 () Bool)

(assert (=> b!209055 (=> (not res!96195) (not e!128895))))

(assert (=> b!209055 (= res!96195 (< (size!2663 (_2!1968 (get!1012 lt!76766))) (size!2663 lt!76312)))))

(declare-fun b!209062 () Bool)

(declare-fun res!96198 () Bool)

(assert (=> b!209062 (=> (not res!96198) (not e!128895))))

(assert (=> b!209062 (= res!96198 (= (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76766)))) (originalCharacters!662 (_1!1968 (get!1012 lt!76766)))))))

(declare-fun b!209063 () Bool)

(declare-fun res!96196 () Bool)

(assert (=> b!209063 (=> (not res!96196) (not e!128895))))

(assert (=> b!209063 (= res!96196 (= (value!21957 (_1!1968 (get!1012 lt!76766))) (apply!559 (transformation!619 (rule!1146 (_1!1968 (get!1012 lt!76766)))) (seqFromList!615 (originalCharacters!662 (_1!1968 (get!1012 lt!76766)))))))))

(assert (= (and d!54867 c!39900) b!209057))

(assert (= (and d!54867 (not c!39900)) b!209056))

(assert (= (or b!209057 b!209056) bm!10119))

(assert (= (and d!54867 (not res!96199)) b!209059))

(assert (= (and b!209059 res!96197) b!209062))

(assert (= (and b!209062 res!96198) b!209055))

(assert (= (and b!209055 res!96195) b!209060))

(assert (= (and b!209060 res!96200) b!209063))

(assert (= (and b!209063 res!96196) b!209058))

(assert (= (and b!209058 res!96194) b!209061))

(declare-fun m!231471 () Bool)

(assert (=> b!209058 m!231471))

(declare-fun m!231473 () Bool)

(assert (=> b!209058 m!231473))

(assert (=> b!209058 m!231473))

(declare-fun m!231475 () Bool)

(assert (=> b!209058 m!231475))

(assert (=> b!209058 m!231475))

(declare-fun m!231477 () Bool)

(assert (=> b!209058 m!231477))

(declare-fun m!231479 () Bool)

(assert (=> b!209056 m!231479))

(assert (=> b!209061 m!231471))

(declare-fun m!231481 () Bool)

(assert (=> b!209061 m!231481))

(assert (=> b!209063 m!231471))

(declare-fun m!231483 () Bool)

(assert (=> b!209063 m!231483))

(assert (=> b!209063 m!231483))

(declare-fun m!231485 () Bool)

(assert (=> b!209063 m!231485))

(declare-fun m!231487 () Bool)

(assert (=> bm!10119 m!231487))

(assert (=> b!209060 m!231471))

(assert (=> b!209060 m!231473))

(assert (=> b!209060 m!231473))

(assert (=> b!209060 m!231475))

(assert (=> b!209060 m!231475))

(declare-fun m!231489 () Bool)

(assert (=> b!209060 m!231489))

(assert (=> b!209055 m!231471))

(declare-fun m!231491 () Bool)

(assert (=> b!209055 m!231491))

(assert (=> b!209055 m!231185))

(assert (=> b!209062 m!231471))

(assert (=> b!209062 m!231473))

(assert (=> b!209062 m!231473))

(assert (=> b!209062 m!231475))

(declare-fun m!231493 () Bool)

(assert (=> b!209059 m!231493))

(declare-fun m!231495 () Bool)

(assert (=> d!54867 m!231495))

(declare-fun m!231497 () Bool)

(assert (=> d!54867 m!231497))

(declare-fun m!231499 () Bool)

(assert (=> d!54867 m!231499))

(assert (=> d!54867 m!230575))

(assert (=> b!208289 d!54867))

(declare-fun bs!21137 () Bool)

(declare-fun d!54869 () Bool)

(assert (= bs!21137 (and d!54869 b!208921)))

(declare-fun lambda!6452 () Int)

(assert (=> bs!21137 (not (= lambda!6452 lambda!6446))))

(declare-fun bs!21138 () Bool)

(assert (= bs!21138 (and d!54869 b!208304)))

(assert (=> bs!21138 (= lambda!6452 lambda!6419)))

(declare-fun bs!21139 () Bool)

(assert (= bs!21139 (and d!54869 d!54713)))

(assert (=> bs!21139 (= lambda!6452 lambda!6434)))

(declare-fun bs!21140 () Bool)

(assert (= bs!21140 (and d!54869 b!208841)))

(assert (=> bs!21140 (not (= lambda!6452 lambda!6443))))

(declare-fun bs!21141 () Bool)

(assert (= bs!21141 (and d!54869 b!208898)))

(assert (=> bs!21141 (not (= lambda!6452 lambda!6444))))

(declare-fun bs!21142 () Bool)

(assert (= bs!21142 (and d!54869 b!208314)))

(assert (=> bs!21142 (not (= lambda!6452 lambda!6420))))

(declare-fun bs!21143 () Bool)

(assert (= bs!21143 (and d!54869 d!54801)))

(assert (=> bs!21143 (= lambda!6452 lambda!6445)))

(declare-fun bs!21144 () Bool)

(assert (= bs!21144 (and d!54869 b!208752)))

(assert (=> bs!21144 (not (= lambda!6452 lambda!6435))))

(assert (=> d!54869 (= (filter!13 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!188 thiss!17480 rules!1920 (seqFromList!616 (t!31112 tokens!465)) separatorToken!170 0)))) lambda!6452) (t!31112 tokens!465))))

(declare-fun lt!76800 () Unit!3446)

(declare-fun choose!2056 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> d!54869 (= lt!76800 (choose!2056 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170))))

(assert (=> d!54869 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54869 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!4 thiss!17480 rules!1920 (t!31112 tokens!465) separatorToken!170) lt!76800)))

(declare-fun bs!21145 () Bool)

(assert (= bs!21145 d!54869))

(declare-fun m!231635 () Bool)

(assert (=> bs!21145 m!231635))

(declare-fun m!231637 () Bool)

(assert (=> bs!21145 m!231637))

(assert (=> bs!21145 m!230283))

(assert (=> bs!21145 m!230343))

(assert (=> bs!21145 m!231635))

(assert (=> bs!21145 m!230343))

(declare-fun m!231639 () Bool)

(assert (=> bs!21145 m!231639))

(declare-fun m!231641 () Bool)

(assert (=> bs!21145 m!231641))

(assert (=> bs!21145 m!231641))

(declare-fun m!231643 () Bool)

(assert (=> bs!21145 m!231643))

(assert (=> b!208289 d!54869))

(declare-fun d!54907 () Bool)

(declare-fun e!128934 () Bool)

(assert (=> d!54907 e!128934))

(declare-fun res!96230 () Bool)

(assert (=> d!54907 (=> (not res!96230) (not e!128934))))

(declare-fun lt!76801 () BalanceConc!2130)

(assert (=> d!54907 (= res!96230 (= (list!1241 lt!76801) (Cons!3334 separatorToken!170 Nil!3334)))))

(assert (=> d!54907 (= lt!76801 (singleton!69 separatorToken!170))))

(assert (=> d!54907 (= (singletonSeq!171 separatorToken!170) lt!76801)))

(declare-fun b!209126 () Bool)

(assert (=> b!209126 (= e!128934 (isBalanced!280 (c!39723 lt!76801)))))

(assert (= (and d!54907 res!96230) b!209126))

(declare-fun m!231645 () Bool)

(assert (=> d!54907 m!231645))

(declare-fun m!231647 () Bool)

(assert (=> d!54907 m!231647))

(declare-fun m!231649 () Bool)

(assert (=> b!209126 m!231649))

(assert (=> b!208289 d!54907))

(declare-fun d!54909 () Bool)

(declare-fun lt!76805 () BalanceConc!2128)

(assert (=> d!54909 (= (list!1240 lt!76805) (printListTailRec!88 thiss!17480 (dropList!120 lt!76329 0) (list!1240 (BalanceConc!2129 Empty!1060))))))

(declare-fun e!128935 () BalanceConc!2128)

(assert (=> d!54909 (= lt!76805 e!128935)))

(declare-fun c!39917 () Bool)

(assert (=> d!54909 (= c!39917 (>= 0 (size!2661 lt!76329)))))

(declare-fun e!128936 () Bool)

(assert (=> d!54909 e!128936))

(declare-fun res!96231 () Bool)

(assert (=> d!54909 (=> (not res!96231) (not e!128936))))

(assert (=> d!54909 (= res!96231 (>= 0 0))))

(assert (=> d!54909 (= (printTailRec!199 thiss!17480 lt!76329 0 (BalanceConc!2129 Empty!1060)) lt!76805)))

(declare-fun b!209127 () Bool)

(assert (=> b!209127 (= e!128936 (<= 0 (size!2661 lt!76329)))))

(declare-fun b!209128 () Bool)

(assert (=> b!209128 (= e!128935 (BalanceConc!2129 Empty!1060))))

(declare-fun b!209129 () Bool)

(assert (=> b!209129 (= e!128935 (printTailRec!199 thiss!17480 lt!76329 (+ 0 1) (++!818 (BalanceConc!2129 Empty!1060) (charsOf!274 (apply!554 lt!76329 0)))))))

(declare-fun lt!76808 () List!3344)

(assert (=> b!209129 (= lt!76808 (list!1241 lt!76329))))

(declare-fun lt!76804 () Unit!3446)

(assert (=> b!209129 (= lt!76804 (lemmaDropApply!160 lt!76808 0))))

(assert (=> b!209129 (= (head!734 (drop!173 lt!76808 0)) (apply!557 lt!76808 0))))

(declare-fun lt!76803 () Unit!3446)

(assert (=> b!209129 (= lt!76803 lt!76804)))

(declare-fun lt!76806 () List!3344)

(assert (=> b!209129 (= lt!76806 (list!1241 lt!76329))))

(declare-fun lt!76807 () Unit!3446)

(assert (=> b!209129 (= lt!76807 (lemmaDropTail!152 lt!76806 0))))

(assert (=> b!209129 (= (tail!406 (drop!173 lt!76806 0)) (drop!173 lt!76806 (+ 0 1)))))

(declare-fun lt!76802 () Unit!3446)

(assert (=> b!209129 (= lt!76802 lt!76807)))

(assert (= (and d!54909 res!96231) b!209127))

(assert (= (and d!54909 c!39917) b!209128))

(assert (= (and d!54909 (not c!39917)) b!209129))

(declare-fun m!231651 () Bool)

(assert (=> d!54909 m!231651))

(declare-fun m!231653 () Bool)

(assert (=> d!54909 m!231653))

(assert (=> d!54909 m!231317))

(declare-fun m!231655 () Bool)

(assert (=> d!54909 m!231655))

(declare-fun m!231657 () Bool)

(assert (=> d!54909 m!231657))

(assert (=> d!54909 m!231653))

(assert (=> d!54909 m!231317))

(assert (=> b!209127 m!231657))

(declare-fun m!231659 () Bool)

(assert (=> b!209129 m!231659))

(declare-fun m!231661 () Bool)

(assert (=> b!209129 m!231661))

(declare-fun m!231663 () Bool)

(assert (=> b!209129 m!231663))

(declare-fun m!231665 () Bool)

(assert (=> b!209129 m!231665))

(declare-fun m!231667 () Bool)

(assert (=> b!209129 m!231667))

(declare-fun m!231669 () Bool)

(assert (=> b!209129 m!231669))

(declare-fun m!231671 () Bool)

(assert (=> b!209129 m!231671))

(declare-fun m!231673 () Bool)

(assert (=> b!209129 m!231673))

(declare-fun m!231675 () Bool)

(assert (=> b!209129 m!231675))

(declare-fun m!231677 () Bool)

(assert (=> b!209129 m!231677))

(assert (=> b!209129 m!231669))

(assert (=> b!209129 m!231659))

(declare-fun m!231679 () Bool)

(assert (=> b!209129 m!231679))

(assert (=> b!209129 m!231673))

(assert (=> b!209129 m!231677))

(declare-fun m!231681 () Bool)

(assert (=> b!209129 m!231681))

(assert (=> b!209129 m!231661))

(declare-fun m!231683 () Bool)

(assert (=> b!209129 m!231683))

(assert (=> b!208289 d!54909))

(declare-fun d!54911 () Bool)

(declare-fun e!128939 () Bool)

(assert (=> d!54911 e!128939))

(declare-fun res!96236 () Bool)

(assert (=> d!54911 (=> (not res!96236) (not e!128939))))

(assert (=> d!54911 (= res!96236 (isDefined!400 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 lt!76348)))))))

(declare-fun lt!76811 () Unit!3446)

(declare-fun choose!2057 (LexerInterface!505 List!3343 List!3342 Token!982) Unit!3446)

(assert (=> d!54911 (= lt!76811 (choose!2057 thiss!17480 rules!1920 lt!76335 lt!76348))))

(assert (=> d!54911 (rulesInvariant!471 thiss!17480 rules!1920)))

(assert (=> d!54911 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!60 thiss!17480 rules!1920 lt!76335 lt!76348) lt!76811)))

(declare-fun b!209134 () Bool)

(declare-fun res!96237 () Bool)

(assert (=> b!209134 (=> (not res!96237) (not e!128939))))

(assert (=> b!209134 (= res!96237 (matchR!181 (regex!619 (get!1013 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 lt!76348))))) (list!1240 (charsOf!274 lt!76348))))))

(declare-fun b!209135 () Bool)

(assert (=> b!209135 (= e!128939 (= (rule!1146 lt!76348) (get!1013 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 lt!76348))))))))

(assert (= (and d!54911 res!96236) b!209134))

(assert (= (and b!209134 res!96237) b!209135))

(assert (=> d!54911 m!230241))

(assert (=> d!54911 m!230241))

(declare-fun m!231685 () Bool)

(assert (=> d!54911 m!231685))

(declare-fun m!231687 () Bool)

(assert (=> d!54911 m!231687))

(assert (=> d!54911 m!230295))

(assert (=> b!209134 m!230235))

(assert (=> b!209134 m!230237))

(assert (=> b!209134 m!230235))

(assert (=> b!209134 m!230241))

(declare-fun m!231689 () Bool)

(assert (=> b!209134 m!231689))

(assert (=> b!209134 m!230241))

(assert (=> b!209134 m!230237))

(declare-fun m!231691 () Bool)

(assert (=> b!209134 m!231691))

(assert (=> b!209135 m!230241))

(assert (=> b!209135 m!230241))

(assert (=> b!209135 m!231689))

(assert (=> b!208289 d!54911))

(declare-fun d!54913 () Bool)

(assert (=> d!54913 (dynLambda!1489 lambda!6420 lt!76348)))

(declare-fun lt!76812 () Unit!3446)

(assert (=> d!54913 (= lt!76812 (choose!2041 tokens!465 lambda!6420 lt!76348))))

(declare-fun e!128940 () Bool)

(assert (=> d!54913 e!128940))

(declare-fun res!96238 () Bool)

(assert (=> d!54913 (=> (not res!96238) (not e!128940))))

(assert (=> d!54913 (= res!96238 (forall!723 tokens!465 lambda!6420))))

(assert (=> d!54913 (= (forallContained!186 tokens!465 lambda!6420 lt!76348) lt!76812)))

(declare-fun b!209136 () Bool)

(assert (=> b!209136 (= e!128940 (contains!566 tokens!465 lt!76348))))

(assert (= (and d!54913 res!96238) b!209136))

(declare-fun b_lambda!5383 () Bool)

(assert (=> (not b_lambda!5383) (not d!54913)))

(declare-fun m!231693 () Bool)

(assert (=> d!54913 m!231693))

(declare-fun m!231695 () Bool)

(assert (=> d!54913 m!231695))

(assert (=> d!54913 m!230587))

(declare-fun m!231697 () Bool)

(assert (=> b!209136 m!231697))

(assert (=> b!208289 d!54913))

(declare-fun b!209137 () Bool)

(declare-fun lt!76813 () Unit!3446)

(declare-fun lt!76815 () Unit!3446)

(assert (=> b!209137 (= lt!76813 lt!76815)))

(assert (=> b!209137 (rulesInvariant!471 thiss!17480 (t!31111 rules!1920))))

(assert (=> b!209137 (= lt!76815 (lemmaInvariantOnRulesThenOnTail!12 thiss!17480 (h!8730 rules!1920) (t!31111 rules!1920)))))

(declare-fun e!128943 () Option!550)

(assert (=> b!209137 (= e!128943 (getRuleFromTag!60 thiss!17480 (t!31111 rules!1920) (tag!807 (rule!1146 lt!76348))))))

(declare-fun b!209138 () Bool)

(assert (=> b!209138 (= e!128943 None!549)))

(declare-fun d!54915 () Bool)

(declare-fun e!128944 () Bool)

(assert (=> d!54915 e!128944))

(declare-fun res!96239 () Bool)

(assert (=> d!54915 (=> res!96239 e!128944)))

(declare-fun lt!76814 () Option!550)

(assert (=> d!54915 (= res!96239 (isEmpty!1801 lt!76814))))

(declare-fun e!128941 () Option!550)

(assert (=> d!54915 (= lt!76814 e!128941)))

(declare-fun c!39919 () Bool)

(assert (=> d!54915 (= c!39919 (and ((_ is Cons!3333) rules!1920) (= (tag!807 (h!8730 rules!1920)) (tag!807 (rule!1146 lt!76348)))))))

(assert (=> d!54915 (rulesInvariant!471 thiss!17480 rules!1920)))

(assert (=> d!54915 (= (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 lt!76348))) lt!76814)))

(declare-fun b!209139 () Bool)

(declare-fun e!128942 () Bool)

(assert (=> b!209139 (= e!128944 e!128942)))

(declare-fun res!96240 () Bool)

(assert (=> b!209139 (=> (not res!96240) (not e!128942))))

(assert (=> b!209139 (= res!96240 (contains!568 rules!1920 (get!1013 lt!76814)))))

(declare-fun b!209140 () Bool)

(assert (=> b!209140 (= e!128941 (Some!549 (h!8730 rules!1920)))))

(declare-fun b!209141 () Bool)

(assert (=> b!209141 (= e!128941 e!128943)))

(declare-fun c!39918 () Bool)

(assert (=> b!209141 (= c!39918 (and ((_ is Cons!3333) rules!1920) (not (= (tag!807 (h!8730 rules!1920)) (tag!807 (rule!1146 lt!76348))))))))

(declare-fun b!209142 () Bool)

(assert (=> b!209142 (= e!128942 (= (tag!807 (get!1013 lt!76814)) (tag!807 (rule!1146 lt!76348))))))

(assert (= (and d!54915 c!39919) b!209140))

(assert (= (and d!54915 (not c!39919)) b!209141))

(assert (= (and b!209141 c!39918) b!209137))

(assert (= (and b!209141 (not c!39918)) b!209138))

(assert (= (and d!54915 (not res!96239)) b!209139))

(assert (= (and b!209139 res!96240) b!209142))

(assert (=> b!209137 m!231409))

(assert (=> b!209137 m!231411))

(declare-fun m!231699 () Bool)

(assert (=> b!209137 m!231699))

(declare-fun m!231701 () Bool)

(assert (=> d!54915 m!231701))

(assert (=> d!54915 m!230295))

(declare-fun m!231703 () Bool)

(assert (=> b!209139 m!231703))

(assert (=> b!209139 m!231703))

(declare-fun m!231705 () Bool)

(assert (=> b!209139 m!231705))

(assert (=> b!209142 m!231703))

(assert (=> b!208289 d!54915))

(declare-fun bm!10132 () Bool)

(declare-fun call!10140 () List!3342)

(declare-fun c!39923 () Bool)

(assert (=> bm!10132 (= call!10140 (usedCharacters!24 (ite c!39923 (regOne!2199 (regex!619 (rule!1146 lt!76348))) (regOne!2198 (regex!619 (rule!1146 lt!76348))))))))

(declare-fun bm!10133 () Bool)

(declare-fun call!10139 () List!3342)

(declare-fun call!10137 () List!3342)

(assert (=> bm!10133 (= call!10139 call!10137)))

(declare-fun b!209143 () Bool)

(declare-fun e!128948 () List!3342)

(declare-fun e!128946 () List!3342)

(assert (=> b!209143 (= e!128948 e!128946)))

(declare-fun c!39920 () Bool)

(assert (=> b!209143 (= c!39920 ((_ is ElementMatch!843) (regex!619 (rule!1146 lt!76348))))))

(declare-fun bm!10134 () Bool)

(declare-fun call!10138 () List!3342)

(assert (=> bm!10134 (= call!10138 (++!816 call!10140 call!10139))))

(declare-fun b!209145 () Bool)

(declare-fun e!128945 () List!3342)

(assert (=> b!209145 (= e!128945 call!10138)))

(declare-fun b!209146 () Bool)

(assert (=> b!209146 (= e!128946 (Cons!3332 (c!39722 (regex!619 (rule!1146 lt!76348))) Nil!3332))))

(declare-fun b!209147 () Bool)

(declare-fun e!128947 () List!3342)

(assert (=> b!209147 (= e!128947 call!10137)))

(declare-fun b!209148 () Bool)

(assert (=> b!209148 (= e!128945 call!10138)))

(declare-fun b!209149 () Bool)

(assert (=> b!209149 (= e!128947 e!128945)))

(assert (=> b!209149 (= c!39923 ((_ is Union!843) (regex!619 (rule!1146 lt!76348))))))

(declare-fun d!54917 () Bool)

(declare-fun c!39921 () Bool)

(assert (=> d!54917 (= c!39921 (or ((_ is EmptyExpr!843) (regex!619 (rule!1146 lt!76348))) ((_ is EmptyLang!843) (regex!619 (rule!1146 lt!76348)))))))

(assert (=> d!54917 (= (usedCharacters!24 (regex!619 (rule!1146 lt!76348))) e!128948)))

(declare-fun b!209144 () Bool)

(declare-fun c!39922 () Bool)

(assert (=> b!209144 (= c!39922 ((_ is Star!843) (regex!619 (rule!1146 lt!76348))))))

(assert (=> b!209144 (= e!128946 e!128947)))

(declare-fun bm!10135 () Bool)

(assert (=> bm!10135 (= call!10137 (usedCharacters!24 (ite c!39922 (reg!1172 (regex!619 (rule!1146 lt!76348))) (ite c!39923 (regTwo!2199 (regex!619 (rule!1146 lt!76348))) (regTwo!2198 (regex!619 (rule!1146 lt!76348)))))))))

(declare-fun b!209150 () Bool)

(assert (=> b!209150 (= e!128948 Nil!3332)))

(assert (= (and d!54917 c!39921) b!209150))

(assert (= (and d!54917 (not c!39921)) b!209143))

(assert (= (and b!209143 c!39920) b!209146))

(assert (= (and b!209143 (not c!39920)) b!209144))

(assert (= (and b!209144 c!39922) b!209147))

(assert (= (and b!209144 (not c!39922)) b!209149))

(assert (= (and b!209149 c!39923) b!209145))

(assert (= (and b!209149 (not c!39923)) b!209148))

(assert (= (or b!209145 b!209148) bm!10132))

(assert (= (or b!209145 b!209148) bm!10133))

(assert (= (or b!209145 b!209148) bm!10134))

(assert (= (or b!209147 bm!10133) bm!10135))

(declare-fun m!231707 () Bool)

(assert (=> bm!10132 m!231707))

(declare-fun m!231709 () Bool)

(assert (=> bm!10134 m!231709))

(declare-fun m!231711 () Bool)

(assert (=> bm!10135 m!231711))

(assert (=> b!208289 d!54917))

(declare-fun d!54919 () Bool)

(assert (=> d!54919 (= (isDefined!400 lt!76328) (not (isEmpty!1801 lt!76328)))))

(declare-fun bs!21146 () Bool)

(assert (= bs!21146 d!54919))

(declare-fun m!231713 () Bool)

(assert (=> bs!21146 m!231713))

(assert (=> b!208289 d!54919))

(declare-fun d!54921 () Bool)

(declare-fun lt!76816 () BalanceConc!2128)

(assert (=> d!54921 (= (list!1240 lt!76816) (originalCharacters!662 lt!76348))))

(assert (=> d!54921 (= lt!76816 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 lt!76348))) (value!21957 lt!76348)))))

(assert (=> d!54921 (= (charsOf!274 lt!76348) lt!76816)))

(declare-fun b_lambda!5385 () Bool)

(assert (=> (not b_lambda!5385) (not d!54921)))

(declare-fun tb!9579 () Bool)

(declare-fun t!31164 () Bool)

(assert (=> (and b!208288 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 lt!76348)))) t!31164) tb!9579))

(declare-fun b!209151 () Bool)

(declare-fun e!128949 () Bool)

(declare-fun tp!91163 () Bool)

(assert (=> b!209151 (= e!128949 (and (inv!4173 (c!39721 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 lt!76348))) (value!21957 lt!76348)))) tp!91163))))

(declare-fun result!12626 () Bool)

(assert (=> tb!9579 (= result!12626 (and (inv!4174 (dynLambda!1490 (toChars!1161 (transformation!619 (rule!1146 lt!76348))) (value!21957 lt!76348))) e!128949))))

(assert (= tb!9579 b!209151))

(declare-fun m!231715 () Bool)

(assert (=> b!209151 m!231715))

(declare-fun m!231717 () Bool)

(assert (=> tb!9579 m!231717))

(assert (=> d!54921 t!31164))

(declare-fun b_and!15107 () Bool)

(assert (= b_and!15095 (and (=> t!31164 result!12626) b_and!15107)))

(declare-fun tb!9581 () Bool)

(declare-fun t!31166 () Bool)

(assert (=> (and b!208305 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toChars!1161 (transformation!619 (rule!1146 lt!76348)))) t!31166) tb!9581))

(declare-fun result!12628 () Bool)

(assert (= result!12628 result!12626))

(assert (=> d!54921 t!31166))

(declare-fun b_and!15109 () Bool)

(assert (= b_and!15097 (and (=> t!31166 result!12628) b_and!15109)))

(declare-fun tb!9583 () Bool)

(declare-fun t!31168 () Bool)

(assert (=> (and b!208287 (= (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toChars!1161 (transformation!619 (rule!1146 lt!76348)))) t!31168) tb!9583))

(declare-fun result!12630 () Bool)

(assert (= result!12630 result!12626))

(assert (=> d!54921 t!31168))

(declare-fun b_and!15111 () Bool)

(assert (= b_and!15099 (and (=> t!31168 result!12630) b_and!15111)))

(declare-fun m!231719 () Bool)

(assert (=> d!54921 m!231719))

(declare-fun m!231721 () Bool)

(assert (=> d!54921 m!231721))

(assert (=> b!208289 d!54921))

(declare-fun d!54923 () Bool)

(declare-fun lt!76817 () BalanceConc!2128)

(assert (=> d!54923 (= (list!1240 lt!76817) (printList!189 thiss!17480 (list!1241 lt!76314)))))

(assert (=> d!54923 (= lt!76817 (printTailRec!199 thiss!17480 lt!76314 0 (BalanceConc!2129 Empty!1060)))))

(assert (=> d!54923 (= (print!236 thiss!17480 lt!76314) lt!76817)))

(declare-fun bs!21147 () Bool)

(assert (= bs!21147 d!54923))

(declare-fun m!231723 () Bool)

(assert (=> bs!21147 m!231723))

(declare-fun m!231725 () Bool)

(assert (=> bs!21147 m!231725))

(assert (=> bs!21147 m!231725))

(declare-fun m!231727 () Bool)

(assert (=> bs!21147 m!231727))

(assert (=> bs!21147 m!230257))

(assert (=> b!208289 d!54923))

(declare-fun b!209152 () Bool)

(declare-fun e!128950 () Bool)

(declare-fun lt!76818 () tuple2!3502)

(assert (=> b!209152 (= e!128950 (not (isEmpty!1792 (_1!1967 lt!76818))))))

(declare-fun e!128952 () Bool)

(declare-fun b!209153 () Bool)

(assert (=> b!209153 (= e!128952 (= (list!1240 (_2!1967 lt!76818)) (_2!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76337)))))))

(declare-fun b!209154 () Bool)

(declare-fun e!128951 () Bool)

(assert (=> b!209154 (= e!128951 (= (_2!1967 lt!76818) lt!76337))))

(declare-fun b!209156 () Bool)

(assert (=> b!209156 (= e!128951 e!128950)))

(declare-fun res!96242 () Bool)

(assert (=> b!209156 (= res!96242 (< (size!2664 (_2!1967 lt!76818)) (size!2664 lt!76337)))))

(assert (=> b!209156 (=> (not res!96242) (not e!128950))))

(declare-fun b!209155 () Bool)

(declare-fun res!96243 () Bool)

(assert (=> b!209155 (=> (not res!96243) (not e!128952))))

(assert (=> b!209155 (= res!96243 (= (list!1241 (_1!1967 lt!76818)) (_1!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76337)))))))

(declare-fun d!54925 () Bool)

(assert (=> d!54925 e!128952))

(declare-fun res!96241 () Bool)

(assert (=> d!54925 (=> (not res!96241) (not e!128952))))

(assert (=> d!54925 (= res!96241 e!128951)))

(declare-fun c!39924 () Bool)

(assert (=> d!54925 (= c!39924 (> (size!2661 (_1!1967 lt!76818)) 0))))

(assert (=> d!54925 (= lt!76818 (lexTailRecV2!131 thiss!17480 rules!1920 lt!76337 (BalanceConc!2129 Empty!1060) lt!76337 (BalanceConc!2131 Empty!1061)))))

(assert (=> d!54925 (= (lex!305 thiss!17480 rules!1920 lt!76337) lt!76818)))

(assert (= (and d!54925 c!39924) b!209156))

(assert (= (and d!54925 (not c!39924)) b!209154))

(assert (= (and b!209156 res!96242) b!209152))

(assert (= (and d!54925 res!96241) b!209155))

(assert (= (and b!209155 res!96243) b!209153))

(declare-fun m!231729 () Bool)

(assert (=> b!209152 m!231729))

(declare-fun m!231731 () Bool)

(assert (=> d!54925 m!231731))

(declare-fun m!231733 () Bool)

(assert (=> d!54925 m!231733))

(declare-fun m!231735 () Bool)

(assert (=> b!209155 m!231735))

(declare-fun m!231737 () Bool)

(assert (=> b!209155 m!231737))

(assert (=> b!209155 m!231737))

(declare-fun m!231739 () Bool)

(assert (=> b!209155 m!231739))

(declare-fun m!231741 () Bool)

(assert (=> b!209153 m!231741))

(assert (=> b!209153 m!231737))

(assert (=> b!209153 m!231737))

(assert (=> b!209153 m!231739))

(declare-fun m!231743 () Bool)

(assert (=> b!209156 m!231743))

(declare-fun m!231745 () Bool)

(assert (=> b!209156 m!231745))

(assert (=> b!208289 d!54925))

(declare-fun b!209157 () Bool)

(declare-fun e!128953 () Bool)

(declare-fun lt!76819 () tuple2!3502)

(assert (=> b!209157 (= e!128953 (not (isEmpty!1792 (_1!1967 lt!76819))))))

(declare-fun e!128955 () Bool)

(declare-fun b!209158 () Bool)

(assert (=> b!209158 (= e!128955 (= (list!1240 (_2!1967 lt!76819)) (_2!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76334)))))))

(declare-fun b!209159 () Bool)

(declare-fun e!128954 () Bool)

(assert (=> b!209159 (= e!128954 (= (_2!1967 lt!76819) lt!76334))))

(declare-fun b!209161 () Bool)

(assert (=> b!209161 (= e!128954 e!128953)))

(declare-fun res!96245 () Bool)

(assert (=> b!209161 (= res!96245 (< (size!2664 (_2!1967 lt!76819)) (size!2664 lt!76334)))))

(assert (=> b!209161 (=> (not res!96245) (not e!128953))))

(declare-fun b!209160 () Bool)

(declare-fun res!96246 () Bool)

(assert (=> b!209160 (=> (not res!96246) (not e!128955))))

(assert (=> b!209160 (= res!96246 (= (list!1241 (_1!1967 lt!76819)) (_1!1970 (lexList!144 thiss!17480 rules!1920 (list!1240 lt!76334)))))))

(declare-fun d!54927 () Bool)

(assert (=> d!54927 e!128955))

(declare-fun res!96244 () Bool)

(assert (=> d!54927 (=> (not res!96244) (not e!128955))))

(assert (=> d!54927 (= res!96244 e!128954)))

(declare-fun c!39925 () Bool)

(assert (=> d!54927 (= c!39925 (> (size!2661 (_1!1967 lt!76819)) 0))))

(assert (=> d!54927 (= lt!76819 (lexTailRecV2!131 thiss!17480 rules!1920 lt!76334 (BalanceConc!2129 Empty!1060) lt!76334 (BalanceConc!2131 Empty!1061)))))

(assert (=> d!54927 (= (lex!305 thiss!17480 rules!1920 lt!76334) lt!76819)))

(assert (= (and d!54927 c!39925) b!209161))

(assert (= (and d!54927 (not c!39925)) b!209159))

(assert (= (and b!209161 res!96245) b!209157))

(assert (= (and d!54927 res!96244) b!209160))

(assert (= (and b!209160 res!96246) b!209158))

(declare-fun m!231747 () Bool)

(assert (=> b!209157 m!231747))

(declare-fun m!231749 () Bool)

(assert (=> d!54927 m!231749))

(declare-fun m!231751 () Bool)

(assert (=> d!54927 m!231751))

(declare-fun m!231753 () Bool)

(assert (=> b!209160 m!231753))

(assert (=> b!209160 m!230361))

(assert (=> b!209160 m!230361))

(declare-fun m!231755 () Bool)

(assert (=> b!209160 m!231755))

(declare-fun m!231757 () Bool)

(assert (=> b!209158 m!231757))

(assert (=> b!209158 m!230361))

(assert (=> b!209158 m!230361))

(assert (=> b!209158 m!231755))

(declare-fun m!231759 () Bool)

(assert (=> b!209161 m!231759))

(declare-fun m!231761 () Bool)

(assert (=> b!209161 m!231761))

(assert (=> b!208289 d!54927))

(declare-fun d!54929 () Bool)

(declare-fun lt!76820 () BalanceConc!2128)

(assert (=> d!54929 (= (list!1240 lt!76820) (printList!189 thiss!17480 (list!1241 lt!76329)))))

(assert (=> d!54929 (= lt!76820 (printTailRec!199 thiss!17480 lt!76329 0 (BalanceConc!2129 Empty!1060)))))

(assert (=> d!54929 (= (print!236 thiss!17480 lt!76329) lt!76820)))

(declare-fun bs!21148 () Bool)

(assert (= bs!21148 d!54929))

(declare-fun m!231763 () Bool)

(assert (=> bs!21148 m!231763))

(assert (=> bs!21148 m!231665))

(assert (=> bs!21148 m!231665))

(declare-fun m!231765 () Bool)

(assert (=> bs!21148 m!231765))

(assert (=> bs!21148 m!230193))

(assert (=> b!208289 d!54929))

(declare-fun d!54931 () Bool)

(declare-fun lt!76821 () Bool)

(assert (=> d!54931 (= lt!76821 (select (content!452 (usedCharacters!24 (regex!619 (rule!1146 lt!76348)))) lt!76318))))

(declare-fun e!128956 () Bool)

(assert (=> d!54931 (= lt!76821 e!128956)))

(declare-fun res!96247 () Bool)

(assert (=> d!54931 (=> (not res!96247) (not e!128956))))

(assert (=> d!54931 (= res!96247 ((_ is Cons!3332) (usedCharacters!24 (regex!619 (rule!1146 lt!76348)))))))

(assert (=> d!54931 (= (contains!564 (usedCharacters!24 (regex!619 (rule!1146 lt!76348))) lt!76318) lt!76821)))

(declare-fun b!209162 () Bool)

(declare-fun e!128957 () Bool)

(assert (=> b!209162 (= e!128956 e!128957)))

(declare-fun res!96248 () Bool)

(assert (=> b!209162 (=> res!96248 e!128957)))

(assert (=> b!209162 (= res!96248 (= (h!8729 (usedCharacters!24 (regex!619 (rule!1146 lt!76348)))) lt!76318))))

(declare-fun b!209163 () Bool)

(assert (=> b!209163 (= e!128957 (contains!564 (t!31110 (usedCharacters!24 (regex!619 (rule!1146 lt!76348)))) lt!76318))))

(assert (= (and d!54931 res!96247) b!209162))

(assert (= (and b!209162 (not res!96248)) b!209163))

(assert (=> d!54931 m!230211))

(declare-fun m!231767 () Bool)

(assert (=> d!54931 m!231767))

(declare-fun m!231769 () Bool)

(assert (=> d!54931 m!231769))

(declare-fun m!231771 () Bool)

(assert (=> b!209163 m!231771))

(assert (=> b!208289 d!54931))

(declare-fun d!54933 () Bool)

(assert (=> d!54933 (= (isEmpty!1790 tokens!465) ((_ is Nil!3334) tokens!465))))

(assert (=> b!208289 d!54933))

(declare-fun d!54935 () Bool)

(assert (=> d!54935 (= (head!733 lt!76335) (h!8729 lt!76335))))

(assert (=> b!208289 d!54935))

(declare-fun d!54937 () Bool)

(declare-fun lt!76823 () Bool)

(declare-fun e!128959 () Bool)

(assert (=> d!54937 (= lt!76823 e!128959)))

(declare-fun res!96250 () Bool)

(assert (=> d!54937 (=> (not res!96250) (not e!128959))))

(assert (=> d!54937 (= res!96250 (= (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 lt!76348))))) (list!1241 (singletonSeq!171 lt!76348))))))

(declare-fun e!128958 () Bool)

(assert (=> d!54937 (= lt!76823 e!128958)))

(declare-fun res!96251 () Bool)

(assert (=> d!54937 (=> (not res!96251) (not e!128958))))

(declare-fun lt!76822 () tuple2!3502)

(assert (=> d!54937 (= res!96251 (= (size!2661 (_1!1967 lt!76822)) 1))))

(assert (=> d!54937 (= lt!76822 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 lt!76348))))))

(assert (=> d!54937 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54937 (= (rulesProduceIndividualToken!254 thiss!17480 rules!1920 lt!76348) lt!76823)))

(declare-fun b!209164 () Bool)

(declare-fun res!96249 () Bool)

(assert (=> b!209164 (=> (not res!96249) (not e!128958))))

(assert (=> b!209164 (= res!96249 (= (apply!554 (_1!1967 lt!76822) 0) lt!76348))))

(declare-fun b!209165 () Bool)

(assert (=> b!209165 (= e!128958 (isEmpty!1788 (_2!1967 lt!76822)))))

(declare-fun b!209166 () Bool)

(assert (=> b!209166 (= e!128959 (isEmpty!1788 (_2!1967 (lex!305 thiss!17480 rules!1920 (print!236 thiss!17480 (singletonSeq!171 lt!76348))))))))

(assert (= (and d!54937 res!96251) b!209164))

(assert (= (and b!209164 res!96249) b!209165))

(assert (= (and d!54937 res!96250) b!209166))

(assert (=> d!54937 m!230223))

(declare-fun m!231773 () Bool)

(assert (=> d!54937 m!231773))

(assert (=> d!54937 m!230283))

(assert (=> d!54937 m!230223))

(declare-fun m!231775 () Bool)

(assert (=> d!54937 m!231775))

(assert (=> d!54937 m!231775))

(declare-fun m!231777 () Bool)

(assert (=> d!54937 m!231777))

(declare-fun m!231779 () Bool)

(assert (=> d!54937 m!231779))

(assert (=> d!54937 m!230223))

(declare-fun m!231781 () Bool)

(assert (=> d!54937 m!231781))

(declare-fun m!231783 () Bool)

(assert (=> b!209164 m!231783))

(declare-fun m!231785 () Bool)

(assert (=> b!209165 m!231785))

(assert (=> b!209166 m!230223))

(assert (=> b!209166 m!230223))

(assert (=> b!209166 m!231775))

(assert (=> b!209166 m!231775))

(assert (=> b!209166 m!231777))

(declare-fun m!231787 () Bool)

(assert (=> b!209166 m!231787))

(assert (=> b!208289 d!54937))

(declare-fun b!209175 () Bool)

(declare-fun e!128966 () Bool)

(declare-fun e!128968 () Bool)

(assert (=> b!209175 (= e!128966 e!128968)))

(declare-fun res!96263 () Bool)

(assert (=> b!209175 (=> (not res!96263) (not e!128968))))

(assert (=> b!209175 (= res!96263 (not ((_ is Nil!3332) lt!76327)))))

(declare-fun b!209177 () Bool)

(assert (=> b!209177 (= e!128968 (isPrefix!315 (tail!405 lt!76309) (tail!405 lt!76327)))))

(declare-fun b!209176 () Bool)

(declare-fun res!96260 () Bool)

(assert (=> b!209176 (=> (not res!96260) (not e!128968))))

(assert (=> b!209176 (= res!96260 (= (head!733 lt!76309) (head!733 lt!76327)))))

(declare-fun d!54939 () Bool)

(declare-fun e!128967 () Bool)

(assert (=> d!54939 e!128967))

(declare-fun res!96261 () Bool)

(assert (=> d!54939 (=> res!96261 e!128967)))

(declare-fun lt!76826 () Bool)

(assert (=> d!54939 (= res!96261 (not lt!76826))))

(assert (=> d!54939 (= lt!76826 e!128966)))

(declare-fun res!96262 () Bool)

(assert (=> d!54939 (=> res!96262 e!128966)))

(assert (=> d!54939 (= res!96262 ((_ is Nil!3332) lt!76309))))

(assert (=> d!54939 (= (isPrefix!315 lt!76309 lt!76327) lt!76826)))

(declare-fun b!209178 () Bool)

(assert (=> b!209178 (= e!128967 (>= (size!2663 lt!76327) (size!2663 lt!76309)))))

(assert (= (and d!54939 (not res!96262)) b!209175))

(assert (= (and b!209175 res!96263) b!209176))

(assert (= (and b!209176 res!96260) b!209177))

(assert (= (and d!54939 (not res!96261)) b!209178))

(declare-fun m!231789 () Bool)

(assert (=> b!209177 m!231789))

(declare-fun m!231791 () Bool)

(assert (=> b!209177 m!231791))

(assert (=> b!209177 m!231789))

(assert (=> b!209177 m!231791))

(declare-fun m!231793 () Bool)

(assert (=> b!209177 m!231793))

(declare-fun m!231795 () Bool)

(assert (=> b!209176 m!231795))

(declare-fun m!231797 () Bool)

(assert (=> b!209176 m!231797))

(declare-fun m!231799 () Bool)

(assert (=> b!209178 m!231799))

(assert (=> b!209178 m!231183))

(assert (=> b!208289 d!54939))

(declare-fun d!54941 () Bool)

(assert (=> d!54941 (= (maxPrefix!235 thiss!17480 rules!1920 (++!816 (list!1240 (charsOf!274 separatorToken!170)) lt!76320)) (Some!548 (tuple2!3505 separatorToken!170 lt!76320)))))

(declare-fun lt!76842 () Unit!3446)

(declare-fun choose!2058 (LexerInterface!505 List!3343 Token!982 Rule!1038 List!3342 Rule!1038) Unit!3446)

(assert (=> d!54941 (= lt!76842 (choose!2058 thiss!17480 rules!1920 separatorToken!170 (rule!1146 separatorToken!170) lt!76320 (rule!1146 lt!76348)))))

(assert (=> d!54941 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54941 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!10 thiss!17480 rules!1920 separatorToken!170 (rule!1146 separatorToken!170) lt!76320 (rule!1146 lt!76348)) lt!76842)))

(declare-fun bs!21151 () Bool)

(assert (= bs!21151 d!54941))

(assert (=> bs!21151 m!230353))

(declare-fun m!231863 () Bool)

(assert (=> bs!21151 m!231863))

(assert (=> bs!21151 m!230351))

(assert (=> bs!21151 m!230283))

(declare-fun m!231869 () Bool)

(assert (=> bs!21151 m!231869))

(assert (=> bs!21151 m!230351))

(assert (=> bs!21151 m!230353))

(assert (=> bs!21151 m!231863))

(declare-fun m!231878 () Bool)

(assert (=> bs!21151 m!231878))

(assert (=> b!208289 d!54941))

(declare-fun d!54955 () Bool)

(assert (=> d!54955 (rulesProduceIndividualToken!254 thiss!17480 rules!1920 lt!76348)))

(declare-fun lt!76850 () Unit!3446)

(declare-fun choose!2059 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> d!54955 (= lt!76850 (choose!2059 thiss!17480 rules!1920 tokens!465 lt!76348))))

(assert (=> d!54955 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54955 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!72 thiss!17480 rules!1920 tokens!465 lt!76348) lt!76850)))

(declare-fun bs!21152 () Bool)

(assert (= bs!21152 d!54955))

(assert (=> bs!21152 m!230261))

(declare-fun m!231913 () Bool)

(assert (=> bs!21152 m!231913))

(assert (=> bs!21152 m!230283))

(assert (=> b!208289 d!54955))

(declare-fun d!54961 () Bool)

(assert (=> d!54961 (= (head!734 (t!31112 tokens!465)) (h!8731 (t!31112 tokens!465)))))

(assert (=> b!208289 d!54961))

(declare-fun d!54963 () Bool)

(declare-fun e!129093 () Bool)

(assert (=> d!54963 e!129093))

(declare-fun res!96342 () Bool)

(assert (=> d!54963 (=> res!96342 e!129093)))

(assert (=> d!54963 (= res!96342 (isEmpty!1790 tokens!465))))

(declare-fun lt!76897 () Unit!3446)

(declare-fun choose!2060 (LexerInterface!505 List!3343 List!3344 Token!982) Unit!3446)

(assert (=> d!54963 (= lt!76897 (choose!2060 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!54963 (not (isEmpty!1789 rules!1920))))

(assert (=> d!54963 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!80 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!76897)))

(declare-fun b!209359 () Bool)

(declare-fun e!129092 () Bool)

(assert (=> b!209359 (= e!129093 e!129092)))

(declare-fun res!96343 () Bool)

(assert (=> b!209359 (=> (not res!96343) (not e!129092))))

(assert (=> b!209359 (= res!96343 (isDefined!401 (maxPrefix!235 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!209360 () Bool)

(assert (=> b!209360 (= e!129092 (= (_1!1968 (get!1012 (maxPrefix!235 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!198 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!734 tokens!465)))))

(assert (= (and d!54963 (not res!96342)) b!209359))

(assert (= (and b!209359 res!96343) b!209360))

(assert (=> d!54963 m!230203))

(declare-fun m!232159 () Bool)

(assert (=> d!54963 m!232159))

(assert (=> d!54963 m!230283))

(assert (=> b!209359 m!230329))

(assert (=> b!209359 m!230329))

(declare-fun m!232161 () Bool)

(assert (=> b!209359 m!232161))

(assert (=> b!209359 m!232161))

(declare-fun m!232163 () Bool)

(assert (=> b!209359 m!232163))

(assert (=> b!209360 m!230329))

(assert (=> b!209360 m!230329))

(assert (=> b!209360 m!232161))

(assert (=> b!209360 m!232161))

(declare-fun m!232165 () Bool)

(assert (=> b!209360 m!232165))

(assert (=> b!209360 m!230175))

(assert (=> b!208289 d!54963))

(declare-fun d!55035 () Bool)

(declare-fun e!129101 () Bool)

(assert (=> d!55035 e!129101))

(declare-fun res!96348 () Bool)

(assert (=> d!55035 (=> (not res!96348) (not e!129101))))

(declare-fun lt!76900 () List!3344)

(assert (=> d!55035 (= res!96348 (<= (size!2668 lt!76900) (size!2668 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))))))))

(declare-fun e!129102 () List!3344)

(assert (=> d!55035 (= lt!76900 e!129102)))

(declare-fun c!39950 () Bool)

(assert (=> d!55035 (= c!39950 ((_ is Nil!3334) (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334)))))))

(assert (=> d!55035 (= (filter!13 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))) lambda!6419) lt!76900)))

(declare-fun b!209373 () Bool)

(declare-fun e!129100 () List!3344)

(assert (=> b!209373 (= e!129102 e!129100)))

(declare-fun c!39951 () Bool)

(assert (=> b!209373 (= c!39951 (dynLambda!1489 lambda!6419 (h!8731 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))))))))

(declare-fun b!209374 () Bool)

(assert (=> b!209374 (= e!129101 (forall!723 lt!76900 lambda!6419))))

(declare-fun b!209375 () Bool)

(declare-fun res!96349 () Bool)

(assert (=> b!209375 (=> (not res!96349) (not e!129101))))

(declare-fun content!453 (List!3344) (InoxSet Token!982))

(assert (=> b!209375 (= res!96349 (= ((_ map implies) (content!453 lt!76900) (content!453 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))))) ((as const (InoxSet Token!982)) true)))))

(declare-fun bm!10155 () Bool)

(declare-fun call!10160 () List!3344)

(assert (=> bm!10155 (= call!10160 (filter!13 (t!31112 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334)))) lambda!6419))))

(declare-fun b!209376 () Bool)

(assert (=> b!209376 (= e!129100 call!10160)))

(declare-fun b!209377 () Bool)

(assert (=> b!209377 (= e!129100 (Cons!3334 (h!8731 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334)))) call!10160))))

(declare-fun b!209378 () Bool)

(assert (=> b!209378 (= e!129102 Nil!3334)))

(assert (= (and d!55035 c!39950) b!209378))

(assert (= (and d!55035 (not c!39950)) b!209373))

(assert (= (and b!209373 c!39951) b!209377))

(assert (= (and b!209373 (not c!39951)) b!209376))

(assert (= (or b!209377 b!209376) bm!10155))

(assert (= (and d!55035 res!96348) b!209375))

(assert (= (and b!209375 res!96349) b!209374))

(declare-fun b_lambda!5409 () Bool)

(assert (=> (not b_lambda!5409) (not b!209373)))

(declare-fun m!232167 () Bool)

(assert (=> bm!10155 m!232167))

(declare-fun m!232169 () Bool)

(assert (=> b!209374 m!232169))

(declare-fun m!232171 () Bool)

(assert (=> b!209373 m!232171))

(declare-fun m!232173 () Bool)

(assert (=> b!209375 m!232173))

(assert (=> b!209375 m!230225))

(declare-fun m!232175 () Bool)

(assert (=> b!209375 m!232175))

(declare-fun m!232177 () Bool)

(assert (=> d!55035 m!232177))

(assert (=> d!55035 m!230225))

(declare-fun m!232179 () Bool)

(assert (=> d!55035 m!232179))

(assert (=> b!208289 d!55035))

(declare-fun d!55037 () Bool)

(assert (=> d!55037 (= (get!1012 (maxPrefix!235 thiss!17480 rules!1920 lt!76351)) (v!14107 (maxPrefix!235 thiss!17480 rules!1920 lt!76351)))))

(assert (=> b!208289 d!55037))

(declare-fun d!55039 () Bool)

(declare-fun lt!76904 () BalanceConc!2128)

(assert (=> d!55039 (= (list!1240 lt!76904) (printListTailRec!88 thiss!17480 (dropList!120 lt!76314 0) (list!1240 (BalanceConc!2129 Empty!1060))))))

(declare-fun e!129103 () BalanceConc!2128)

(assert (=> d!55039 (= lt!76904 e!129103)))

(declare-fun c!39952 () Bool)

(assert (=> d!55039 (= c!39952 (>= 0 (size!2661 lt!76314)))))

(declare-fun e!129104 () Bool)

(assert (=> d!55039 e!129104))

(declare-fun res!96350 () Bool)

(assert (=> d!55039 (=> (not res!96350) (not e!129104))))

(assert (=> d!55039 (= res!96350 (>= 0 0))))

(assert (=> d!55039 (= (printTailRec!199 thiss!17480 lt!76314 0 (BalanceConc!2129 Empty!1060)) lt!76904)))

(declare-fun b!209379 () Bool)

(assert (=> b!209379 (= e!129104 (<= 0 (size!2661 lt!76314)))))

(declare-fun b!209380 () Bool)

(assert (=> b!209380 (= e!129103 (BalanceConc!2129 Empty!1060))))

(declare-fun b!209381 () Bool)

(assert (=> b!209381 (= e!129103 (printTailRec!199 thiss!17480 lt!76314 (+ 0 1) (++!818 (BalanceConc!2129 Empty!1060) (charsOf!274 (apply!554 lt!76314 0)))))))

(declare-fun lt!76907 () List!3344)

(assert (=> b!209381 (= lt!76907 (list!1241 lt!76314))))

(declare-fun lt!76903 () Unit!3446)

(assert (=> b!209381 (= lt!76903 (lemmaDropApply!160 lt!76907 0))))

(assert (=> b!209381 (= (head!734 (drop!173 lt!76907 0)) (apply!557 lt!76907 0))))

(declare-fun lt!76902 () Unit!3446)

(assert (=> b!209381 (= lt!76902 lt!76903)))

(declare-fun lt!76905 () List!3344)

(assert (=> b!209381 (= lt!76905 (list!1241 lt!76314))))

(declare-fun lt!76906 () Unit!3446)

(assert (=> b!209381 (= lt!76906 (lemmaDropTail!152 lt!76905 0))))

(assert (=> b!209381 (= (tail!406 (drop!173 lt!76905 0)) (drop!173 lt!76905 (+ 0 1)))))

(declare-fun lt!76901 () Unit!3446)

(assert (=> b!209381 (= lt!76901 lt!76906)))

(assert (= (and d!55039 res!96350) b!209379))

(assert (= (and d!55039 c!39952) b!209380))

(assert (= (and d!55039 (not c!39952)) b!209381))

(declare-fun m!232181 () Bool)

(assert (=> d!55039 m!232181))

(declare-fun m!232183 () Bool)

(assert (=> d!55039 m!232183))

(assert (=> d!55039 m!231317))

(declare-fun m!232185 () Bool)

(assert (=> d!55039 m!232185))

(declare-fun m!232187 () Bool)

(assert (=> d!55039 m!232187))

(assert (=> d!55039 m!232183))

(assert (=> d!55039 m!231317))

(assert (=> b!209379 m!232187))

(declare-fun m!232189 () Bool)

(assert (=> b!209381 m!232189))

(declare-fun m!232191 () Bool)

(assert (=> b!209381 m!232191))

(declare-fun m!232193 () Bool)

(assert (=> b!209381 m!232193))

(assert (=> b!209381 m!231725))

(declare-fun m!232195 () Bool)

(assert (=> b!209381 m!232195))

(declare-fun m!232197 () Bool)

(assert (=> b!209381 m!232197))

(declare-fun m!232199 () Bool)

(assert (=> b!209381 m!232199))

(declare-fun m!232201 () Bool)

(assert (=> b!209381 m!232201))

(declare-fun m!232203 () Bool)

(assert (=> b!209381 m!232203))

(declare-fun m!232205 () Bool)

(assert (=> b!209381 m!232205))

(assert (=> b!209381 m!232197))

(assert (=> b!209381 m!232189))

(declare-fun m!232207 () Bool)

(assert (=> b!209381 m!232207))

(assert (=> b!209381 m!232201))

(assert (=> b!209381 m!232205))

(declare-fun m!232209 () Bool)

(assert (=> b!209381 m!232209))

(assert (=> b!209381 m!232191))

(declare-fun m!232211 () Bool)

(assert (=> b!209381 m!232211))

(assert (=> b!208289 d!55039))

(declare-fun d!55041 () Bool)

(declare-fun e!129105 () Bool)

(assert (=> d!55041 e!129105))

(declare-fun res!96351 () Bool)

(assert (=> d!55041 (=> (not res!96351) (not e!129105))))

(assert (=> d!55041 (= res!96351 (isDefined!400 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 separatorToken!170)))))))

(declare-fun lt!76908 () Unit!3446)

(assert (=> d!55041 (= lt!76908 (choose!2057 thiss!17480 rules!1920 lt!76352 separatorToken!170))))

(assert (=> d!55041 (rulesInvariant!471 thiss!17480 rules!1920)))

(assert (=> d!55041 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!60 thiss!17480 rules!1920 lt!76352 separatorToken!170) lt!76908)))

(declare-fun b!209382 () Bool)

(declare-fun res!96352 () Bool)

(assert (=> b!209382 (=> (not res!96352) (not e!129105))))

(assert (=> b!209382 (= res!96352 (matchR!181 (regex!619 (get!1013 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 separatorToken!170))))) (list!1240 (charsOf!274 separatorToken!170))))))

(declare-fun b!209383 () Bool)

(assert (=> b!209383 (= e!129105 (= (rule!1146 separatorToken!170) (get!1013 (getRuleFromTag!60 thiss!17480 rules!1920 (tag!807 (rule!1146 separatorToken!170))))))))

(assert (= (and d!55041 res!96351) b!209382))

(assert (= (and b!209382 res!96352) b!209383))

(assert (=> d!55041 m!230263))

(assert (=> d!55041 m!230263))

(declare-fun m!232213 () Bool)

(assert (=> d!55041 m!232213))

(declare-fun m!232215 () Bool)

(assert (=> d!55041 m!232215))

(assert (=> d!55041 m!230295))

(assert (=> b!209382 m!230351))

(assert (=> b!209382 m!230353))

(assert (=> b!209382 m!230351))

(assert (=> b!209382 m!230263))

(declare-fun m!232217 () Bool)

(assert (=> b!209382 m!232217))

(assert (=> b!209382 m!230263))

(assert (=> b!209382 m!230353))

(declare-fun m!232219 () Bool)

(assert (=> b!209382 m!232219))

(assert (=> b!209383 m!230263))

(assert (=> b!209383 m!230263))

(assert (=> b!209383 m!232217))

(assert (=> b!208289 d!55041))

(assert (=> b!208289 d!54775))

(declare-fun d!55043 () Bool)

(assert (=> d!55043 (= (get!1012 lt!76325) (v!14107 lt!76325))))

(assert (=> b!208310 d!55043))

(declare-fun d!55045 () Bool)

(assert (=> d!55045 (= (isDefined!401 lt!76325) (not (isEmpty!1799 lt!76325)))))

(declare-fun bs!21190 () Bool)

(assert (= bs!21190 d!55045))

(declare-fun m!232221 () Bool)

(assert (=> bs!21190 m!232221))

(assert (=> b!208310 d!55045))

(declare-fun b!209385 () Bool)

(declare-fun e!129107 () Option!549)

(declare-fun lt!76910 () Option!549)

(declare-fun lt!76909 () Option!549)

(assert (=> b!209385 (= e!129107 (ite (and ((_ is None!548) lt!76910) ((_ is None!548) lt!76909)) None!548 (ite ((_ is None!548) lt!76909) lt!76910 (ite ((_ is None!548) lt!76910) lt!76909 (ite (>= (size!2660 (_1!1968 (v!14107 lt!76910))) (size!2660 (_1!1968 (v!14107 lt!76909)))) lt!76910 lt!76909)))))))

(declare-fun call!10161 () Option!549)

(assert (=> b!209385 (= lt!76910 call!10161)))

(assert (=> b!209385 (= lt!76909 (maxPrefix!235 thiss!17480 (t!31111 rules!1920) lt!76309))))

(declare-fun b!209386 () Bool)

(assert (=> b!209386 (= e!129107 call!10161)))

(declare-fun b!209387 () Bool)

(declare-fun res!96353 () Bool)

(declare-fun e!129108 () Bool)

(assert (=> b!209387 (=> (not res!96353) (not e!129108))))

(declare-fun lt!76911 () Option!549)

(assert (=> b!209387 (= res!96353 (matchR!181 (regex!619 (rule!1146 (_1!1968 (get!1012 lt!76911)))) (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76911))))))))

(declare-fun b!209388 () Bool)

(declare-fun e!129106 () Bool)

(assert (=> b!209388 (= e!129106 e!129108)))

(declare-fun res!96356 () Bool)

(assert (=> b!209388 (=> (not res!96356) (not e!129108))))

(assert (=> b!209388 (= res!96356 (isDefined!401 lt!76911))))

(declare-fun b!209389 () Bool)

(declare-fun res!96359 () Bool)

(assert (=> b!209389 (=> (not res!96359) (not e!129108))))

(assert (=> b!209389 (= res!96359 (= (++!816 (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76911)))) (_2!1968 (get!1012 lt!76911))) lt!76309))))

(declare-fun b!209390 () Bool)

(assert (=> b!209390 (= e!129108 (contains!568 rules!1920 (rule!1146 (_1!1968 (get!1012 lt!76911)))))))

(declare-fun bm!10156 () Bool)

(assert (=> bm!10156 (= call!10161 (maxPrefixOneRule!103 thiss!17480 (h!8730 rules!1920) lt!76309))))

(declare-fun d!55047 () Bool)

(assert (=> d!55047 e!129106))

(declare-fun res!96358 () Bool)

(assert (=> d!55047 (=> res!96358 e!129106)))

(assert (=> d!55047 (= res!96358 (isEmpty!1799 lt!76911))))

(assert (=> d!55047 (= lt!76911 e!129107)))

(declare-fun c!39953 () Bool)

(assert (=> d!55047 (= c!39953 (and ((_ is Cons!3333) rules!1920) ((_ is Nil!3333) (t!31111 rules!1920))))))

(declare-fun lt!76913 () Unit!3446)

(declare-fun lt!76912 () Unit!3446)

(assert (=> d!55047 (= lt!76913 lt!76912)))

(assert (=> d!55047 (isPrefix!315 lt!76309 lt!76309)))

(assert (=> d!55047 (= lt!76912 (lemmaIsPrefixRefl!169 lt!76309 lt!76309))))

(assert (=> d!55047 (rulesValidInductive!158 thiss!17480 rules!1920)))

(assert (=> d!55047 (= (maxPrefix!235 thiss!17480 rules!1920 lt!76309) lt!76911)))

(declare-fun b!209384 () Bool)

(declare-fun res!96354 () Bool)

(assert (=> b!209384 (=> (not res!96354) (not e!129108))))

(assert (=> b!209384 (= res!96354 (< (size!2663 (_2!1968 (get!1012 lt!76911))) (size!2663 lt!76309)))))

(declare-fun b!209391 () Bool)

(declare-fun res!96357 () Bool)

(assert (=> b!209391 (=> (not res!96357) (not e!129108))))

(assert (=> b!209391 (= res!96357 (= (list!1240 (charsOf!274 (_1!1968 (get!1012 lt!76911)))) (originalCharacters!662 (_1!1968 (get!1012 lt!76911)))))))

(declare-fun b!209392 () Bool)

(declare-fun res!96355 () Bool)

(assert (=> b!209392 (=> (not res!96355) (not e!129108))))

(assert (=> b!209392 (= res!96355 (= (value!21957 (_1!1968 (get!1012 lt!76911))) (apply!559 (transformation!619 (rule!1146 (_1!1968 (get!1012 lt!76911)))) (seqFromList!615 (originalCharacters!662 (_1!1968 (get!1012 lt!76911)))))))))

(assert (= (and d!55047 c!39953) b!209386))

(assert (= (and d!55047 (not c!39953)) b!209385))

(assert (= (or b!209386 b!209385) bm!10156))

(assert (= (and d!55047 (not res!96358)) b!209388))

(assert (= (and b!209388 res!96356) b!209391))

(assert (= (and b!209391 res!96357) b!209384))

(assert (= (and b!209384 res!96354) b!209389))

(assert (= (and b!209389 res!96359) b!209392))

(assert (= (and b!209392 res!96355) b!209387))

(assert (= (and b!209387 res!96353) b!209390))

(declare-fun m!232223 () Bool)

(assert (=> b!209387 m!232223))

(declare-fun m!232225 () Bool)

(assert (=> b!209387 m!232225))

(assert (=> b!209387 m!232225))

(declare-fun m!232227 () Bool)

(assert (=> b!209387 m!232227))

(assert (=> b!209387 m!232227))

(declare-fun m!232229 () Bool)

(assert (=> b!209387 m!232229))

(declare-fun m!232231 () Bool)

(assert (=> b!209385 m!232231))

(assert (=> b!209390 m!232223))

(declare-fun m!232233 () Bool)

(assert (=> b!209390 m!232233))

(assert (=> b!209392 m!232223))

(declare-fun m!232235 () Bool)

(assert (=> b!209392 m!232235))

(assert (=> b!209392 m!232235))

(declare-fun m!232237 () Bool)

(assert (=> b!209392 m!232237))

(declare-fun m!232239 () Bool)

(assert (=> bm!10156 m!232239))

(assert (=> b!209389 m!232223))

(assert (=> b!209389 m!232225))

(assert (=> b!209389 m!232225))

(assert (=> b!209389 m!232227))

(assert (=> b!209389 m!232227))

(declare-fun m!232241 () Bool)

(assert (=> b!209389 m!232241))

(assert (=> b!209384 m!232223))

(declare-fun m!232243 () Bool)

(assert (=> b!209384 m!232243))

(assert (=> b!209384 m!231183))

(assert (=> b!209391 m!232223))

(assert (=> b!209391 m!232225))

(assert (=> b!209391 m!232225))

(assert (=> b!209391 m!232227))

(declare-fun m!232245 () Bool)

(assert (=> b!209388 m!232245))

(declare-fun m!232247 () Bool)

(assert (=> d!55047 m!232247))

(declare-fun m!232249 () Bool)

(assert (=> d!55047 m!232249))

(declare-fun m!232251 () Bool)

(assert (=> d!55047 m!232251))

(assert (=> d!55047 m!230575))

(assert (=> b!208310 d!55047))

(declare-fun bs!21191 () Bool)

(declare-fun d!55049 () Bool)

(assert (= bs!21191 (and d!55049 b!208921)))

(declare-fun lambda!6460 () Int)

(assert (=> bs!21191 (= lambda!6460 lambda!6446)))

(declare-fun bs!21192 () Bool)

(assert (= bs!21192 (and d!55049 b!208304)))

(assert (=> bs!21192 (not (= lambda!6460 lambda!6419))))

(declare-fun bs!21193 () Bool)

(assert (= bs!21193 (and d!55049 d!54713)))

(assert (=> bs!21193 (not (= lambda!6460 lambda!6434))))

(declare-fun bs!21194 () Bool)

(assert (= bs!21194 (and d!55049 b!208841)))

(assert (=> bs!21194 (= lambda!6460 lambda!6443)))

(declare-fun bs!21195 () Bool)

(assert (= bs!21195 (and d!55049 b!208898)))

(assert (=> bs!21195 (= lambda!6460 lambda!6444)))

(declare-fun bs!21196 () Bool)

(assert (= bs!21196 (and d!55049 b!208314)))

(assert (=> bs!21196 (= lambda!6460 lambda!6420)))

(declare-fun bs!21197 () Bool)

(assert (= bs!21197 (and d!55049 b!208752)))

(assert (=> bs!21197 (= lambda!6460 lambda!6435)))

(declare-fun bs!21198 () Bool)

(assert (= bs!21198 (and d!55049 d!54801)))

(assert (=> bs!21198 (not (= lambda!6460 lambda!6445))))

(declare-fun bs!21199 () Bool)

(assert (= bs!21199 (and d!55049 d!54869)))

(assert (=> bs!21199 (not (= lambda!6460 lambda!6452))))

(declare-fun b!209398 () Bool)

(declare-fun e!129114 () Bool)

(assert (=> b!209398 (= e!129114 true)))

(declare-fun b!209397 () Bool)

(declare-fun e!129113 () Bool)

(assert (=> b!209397 (= e!129113 e!129114)))

(declare-fun b!209396 () Bool)

(declare-fun e!129112 () Bool)

(assert (=> b!209396 (= e!129112 e!129113)))

(assert (=> d!55049 e!129112))

(assert (= b!209397 b!209398))

(assert (= b!209396 b!209397))

(assert (= (and d!55049 ((_ is Cons!3333) rules!1920)) b!209396))

(assert (=> b!209398 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6460))))

(assert (=> b!209398 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 rules!1920)))) (dynLambda!1486 order!2215 lambda!6460))))

(assert (=> d!55049 true))

(declare-fun e!129111 () Bool)

(assert (=> d!55049 e!129111))

(declare-fun res!96362 () Bool)

(assert (=> d!55049 (=> (not res!96362) (not e!129111))))

(declare-fun lt!76916 () Bool)

(assert (=> d!55049 (= res!96362 (= lt!76916 (forall!723 (list!1241 lt!76353) lambda!6460)))))

(declare-fun forall!725 (BalanceConc!2130 Int) Bool)

(assert (=> d!55049 (= lt!76916 (forall!725 lt!76353 lambda!6460))))

(assert (=> d!55049 (not (isEmpty!1789 rules!1920))))

(assert (=> d!55049 (= (rulesProduceEachTokenIndividually!297 thiss!17480 rules!1920 lt!76353) lt!76916)))

(declare-fun b!209395 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!165 (LexerInterface!505 List!3343 List!3344) Bool)

(assert (=> b!209395 (= e!129111 (= lt!76916 (rulesProduceEachTokenIndividuallyList!165 thiss!17480 rules!1920 (list!1241 lt!76353))))))

(assert (= (and d!55049 res!96362) b!209395))

(assert (=> d!55049 m!230853))

(assert (=> d!55049 m!230853))

(declare-fun m!232253 () Bool)

(assert (=> d!55049 m!232253))

(declare-fun m!232255 () Bool)

(assert (=> d!55049 m!232255))

(assert (=> d!55049 m!230283))

(assert (=> b!209395 m!230853))

(assert (=> b!209395 m!230853))

(declare-fun m!232257 () Bool)

(assert (=> b!209395 m!232257))

(assert (=> b!208290 d!55049))

(declare-fun d!55051 () Bool)

(assert (=> d!55051 (= (seqFromList!616 tokens!465) (fromListB!229 tokens!465))))

(declare-fun bs!21200 () Bool)

(assert (= bs!21200 d!55051))

(declare-fun m!232259 () Bool)

(assert (=> bs!21200 m!232259))

(assert (=> b!208290 d!55051))

(declare-fun b!209399 () Bool)

(declare-fun res!96367 () Bool)

(declare-fun e!129121 () Bool)

(assert (=> b!209399 (=> res!96367 e!129121)))

(declare-fun e!129120 () Bool)

(assert (=> b!209399 (= res!96367 e!129120)))

(declare-fun res!96368 () Bool)

(assert (=> b!209399 (=> (not res!96368) (not e!129120))))

(declare-fun lt!76917 () Bool)

(assert (=> b!209399 (= res!96368 lt!76917)))

(declare-fun d!55053 () Bool)

(declare-fun e!129119 () Bool)

(assert (=> d!55053 e!129119))

(declare-fun c!39956 () Bool)

(assert (=> d!55053 (= c!39956 ((_ is EmptyExpr!843) (regex!619 (rule!1146 (h!8731 tokens!465)))))))

(declare-fun e!129115 () Bool)

(assert (=> d!55053 (= lt!76917 e!129115)))

(declare-fun c!39955 () Bool)

(assert (=> d!55053 (= c!39955 (isEmpty!1791 lt!76309))))

(assert (=> d!55053 (validRegex!213 (regex!619 (rule!1146 (h!8731 tokens!465))))))

(assert (=> d!55053 (= (matchR!181 (regex!619 (rule!1146 (h!8731 tokens!465))) lt!76309) lt!76917)))

(declare-fun b!209400 () Bool)

(declare-fun call!10162 () Bool)

(assert (=> b!209400 (= e!129119 (= lt!76917 call!10162))))

(declare-fun b!209401 () Bool)

(declare-fun e!129116 () Bool)

(declare-fun e!129117 () Bool)

(assert (=> b!209401 (= e!129116 e!129117)))

(declare-fun res!96363 () Bool)

(assert (=> b!209401 (=> res!96363 e!129117)))

(assert (=> b!209401 (= res!96363 call!10162)))

(declare-fun b!209402 () Bool)

(declare-fun res!96370 () Bool)

(assert (=> b!209402 (=> res!96370 e!129121)))

(assert (=> b!209402 (= res!96370 (not ((_ is ElementMatch!843) (regex!619 (rule!1146 (h!8731 tokens!465))))))))

(declare-fun e!129118 () Bool)

(assert (=> b!209402 (= e!129118 e!129121)))

(declare-fun b!209403 () Bool)

(assert (=> b!209403 (= e!129115 (matchR!181 (derivativeStep!104 (regex!619 (rule!1146 (h!8731 tokens!465))) (head!733 lt!76309)) (tail!405 lt!76309)))))

(declare-fun b!209404 () Bool)

(assert (=> b!209404 (= e!129121 e!129116)))

(declare-fun res!96366 () Bool)

(assert (=> b!209404 (=> (not res!96366) (not e!129116))))

(assert (=> b!209404 (= res!96366 (not lt!76917))))

(declare-fun b!209405 () Bool)

(declare-fun res!96369 () Bool)

(assert (=> b!209405 (=> res!96369 e!129117)))

(assert (=> b!209405 (= res!96369 (not (isEmpty!1791 (tail!405 lt!76309))))))

(declare-fun b!209406 () Bool)

(assert (=> b!209406 (= e!129120 (= (head!733 lt!76309) (c!39722 (regex!619 (rule!1146 (h!8731 tokens!465))))))))

(declare-fun b!209407 () Bool)

(assert (=> b!209407 (= e!129118 (not lt!76917))))

(declare-fun b!209408 () Bool)

(declare-fun res!96364 () Bool)

(assert (=> b!209408 (=> (not res!96364) (not e!129120))))

(assert (=> b!209408 (= res!96364 (not call!10162))))

(declare-fun b!209409 () Bool)

(assert (=> b!209409 (= e!129117 (not (= (head!733 lt!76309) (c!39722 (regex!619 (rule!1146 (h!8731 tokens!465)))))))))

(declare-fun b!209410 () Bool)

(assert (=> b!209410 (= e!129115 (nullable!138 (regex!619 (rule!1146 (h!8731 tokens!465)))))))

(declare-fun b!209411 () Bool)

(assert (=> b!209411 (= e!129119 e!129118)))

(declare-fun c!39954 () Bool)

(assert (=> b!209411 (= c!39954 ((_ is EmptyLang!843) (regex!619 (rule!1146 (h!8731 tokens!465)))))))

(declare-fun bm!10157 () Bool)

(assert (=> bm!10157 (= call!10162 (isEmpty!1791 lt!76309))))

(declare-fun b!209412 () Bool)

(declare-fun res!96365 () Bool)

(assert (=> b!209412 (=> (not res!96365) (not e!129120))))

(assert (=> b!209412 (= res!96365 (isEmpty!1791 (tail!405 lt!76309)))))

(assert (= (and d!55053 c!39955) b!209410))

(assert (= (and d!55053 (not c!39955)) b!209403))

(assert (= (and d!55053 c!39956) b!209400))

(assert (= (and d!55053 (not c!39956)) b!209411))

(assert (= (and b!209411 c!39954) b!209407))

(assert (= (and b!209411 (not c!39954)) b!209402))

(assert (= (and b!209402 (not res!96370)) b!209399))

(assert (= (and b!209399 res!96368) b!209408))

(assert (= (and b!209408 res!96364) b!209412))

(assert (= (and b!209412 res!96365) b!209406))

(assert (= (and b!209399 (not res!96367)) b!209404))

(assert (= (and b!209404 res!96366) b!209401))

(assert (= (and b!209401 (not res!96363)) b!209405))

(assert (= (and b!209405 (not res!96369)) b!209409))

(assert (= (or b!209400 b!209401 b!209408) bm!10157))

(declare-fun m!232261 () Bool)

(assert (=> b!209410 m!232261))

(assert (=> b!209412 m!231789))

(assert (=> b!209412 m!231789))

(declare-fun m!232263 () Bool)

(assert (=> b!209412 m!232263))

(assert (=> b!209406 m!231795))

(assert (=> b!209405 m!231789))

(assert (=> b!209405 m!231789))

(assert (=> b!209405 m!232263))

(declare-fun m!232265 () Bool)

(assert (=> bm!10157 m!232265))

(assert (=> b!209403 m!231795))

(assert (=> b!209403 m!231795))

(declare-fun m!232267 () Bool)

(assert (=> b!209403 m!232267))

(assert (=> b!209403 m!231789))

(assert (=> b!209403 m!232267))

(assert (=> b!209403 m!231789))

(declare-fun m!232269 () Bool)

(assert (=> b!209403 m!232269))

(assert (=> b!209409 m!231795))

(assert (=> d!55053 m!232265))

(declare-fun m!232271 () Bool)

(assert (=> d!55053 m!232271))

(assert (=> b!208311 d!55053))

(declare-fun d!55055 () Bool)

(declare-fun e!129123 () Bool)

(assert (=> d!55055 e!129123))

(declare-fun res!96372 () Bool)

(assert (=> d!55055 (=> (not res!96372) (not e!129123))))

(declare-fun lt!76918 () List!3342)

(assert (=> d!55055 (= res!96372 (= (content!452 lt!76918) ((_ map or) (content!452 lt!76309) (content!452 lt!76320))))))

(declare-fun e!129122 () List!3342)

(assert (=> d!55055 (= lt!76918 e!129122)))

(declare-fun c!39957 () Bool)

(assert (=> d!55055 (= c!39957 ((_ is Nil!3332) lt!76309))))

(assert (=> d!55055 (= (++!816 lt!76309 lt!76320) lt!76918)))

(declare-fun b!209416 () Bool)

(assert (=> b!209416 (= e!129123 (or (not (= lt!76320 Nil!3332)) (= lt!76918 lt!76309)))))

(declare-fun b!209415 () Bool)

(declare-fun res!96371 () Bool)

(assert (=> b!209415 (=> (not res!96371) (not e!129123))))

(assert (=> b!209415 (= res!96371 (= (size!2663 lt!76918) (+ (size!2663 lt!76309) (size!2663 lt!76320))))))

(declare-fun b!209414 () Bool)

(assert (=> b!209414 (= e!129122 (Cons!3332 (h!8729 lt!76309) (++!816 (t!31110 lt!76309) lt!76320)))))

(declare-fun b!209413 () Bool)

(assert (=> b!209413 (= e!129122 lt!76320)))

(assert (= (and d!55055 c!39957) b!209413))

(assert (= (and d!55055 (not c!39957)) b!209414))

(assert (= (and d!55055 res!96372) b!209415))

(assert (= (and b!209415 res!96371) b!209416))

(declare-fun m!232273 () Bool)

(assert (=> d!55055 m!232273))

(assert (=> d!55055 m!231177))

(assert (=> d!55055 m!231125))

(declare-fun m!232275 () Bool)

(assert (=> b!209415 m!232275))

(assert (=> b!209415 m!231183))

(assert (=> b!209415 m!231131))

(declare-fun m!232277 () Bool)

(assert (=> b!209414 m!232277))

(assert (=> b!208313 d!55055))

(declare-fun b!209429 () Bool)

(declare-fun e!129126 () Bool)

(declare-fun tp!91234 () Bool)

(assert (=> b!209429 (= e!129126 tp!91234)))

(assert (=> b!208292 (= tp!91141 e!129126)))

(declare-fun b!209428 () Bool)

(declare-fun tp!91231 () Bool)

(declare-fun tp!91233 () Bool)

(assert (=> b!209428 (= e!129126 (and tp!91231 tp!91233))))

(declare-fun b!209430 () Bool)

(declare-fun tp!91232 () Bool)

(declare-fun tp!91230 () Bool)

(assert (=> b!209430 (= e!129126 (and tp!91232 tp!91230))))

(declare-fun b!209427 () Bool)

(declare-fun tp_is_empty!1719 () Bool)

(assert (=> b!209427 (= e!129126 tp_is_empty!1719)))

(assert (= (and b!208292 ((_ is ElementMatch!843) (regex!619 (rule!1146 separatorToken!170)))) b!209427))

(assert (= (and b!208292 ((_ is Concat!1485) (regex!619 (rule!1146 separatorToken!170)))) b!209428))

(assert (= (and b!208292 ((_ is Star!843) (regex!619 (rule!1146 separatorToken!170)))) b!209429))

(assert (= (and b!208292 ((_ is Union!843) (regex!619 (rule!1146 separatorToken!170)))) b!209430))

(declare-fun b!209433 () Bool)

(declare-fun e!129127 () Bool)

(declare-fun tp!91239 () Bool)

(assert (=> b!209433 (= e!129127 tp!91239)))

(assert (=> b!208285 (= tp!91146 e!129127)))

(declare-fun b!209432 () Bool)

(declare-fun tp!91236 () Bool)

(declare-fun tp!91238 () Bool)

(assert (=> b!209432 (= e!129127 (and tp!91236 tp!91238))))

(declare-fun b!209434 () Bool)

(declare-fun tp!91237 () Bool)

(declare-fun tp!91235 () Bool)

(assert (=> b!209434 (= e!129127 (and tp!91237 tp!91235))))

(declare-fun b!209431 () Bool)

(assert (=> b!209431 (= e!129127 tp_is_empty!1719)))

(assert (= (and b!208285 ((_ is ElementMatch!843) (regex!619 (rule!1146 (h!8731 tokens!465))))) b!209431))

(assert (= (and b!208285 ((_ is Concat!1485) (regex!619 (rule!1146 (h!8731 tokens!465))))) b!209432))

(assert (= (and b!208285 ((_ is Star!843) (regex!619 (rule!1146 (h!8731 tokens!465))))) b!209433))

(assert (= (and b!208285 ((_ is Union!843) (regex!619 (rule!1146 (h!8731 tokens!465))))) b!209434))

(declare-fun b!209448 () Bool)

(declare-fun b_free!8101 () Bool)

(declare-fun b_next!8101 () Bool)

(assert (=> b!209448 (= b_free!8101 (not b_next!8101))))

(declare-fun tp!91252 () Bool)

(declare-fun b_and!15133 () Bool)

(assert (=> b!209448 (= tp!91252 b_and!15133)))

(declare-fun b_free!8103 () Bool)

(declare-fun b_next!8103 () Bool)

(assert (=> b!209448 (= b_free!8103 (not b_next!8103))))

(declare-fun t!31188 () Bool)

(declare-fun tb!9597 () Bool)

(assert (=> (and b!209448 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170)))) t!31188) tb!9597))

(declare-fun result!12656 () Bool)

(assert (= result!12656 result!12600))

(assert (=> d!54787 t!31188))

(declare-fun t!31190 () Bool)

(declare-fun tb!9599 () Bool)

(assert (=> (and b!209448 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465))))) t!31190) tb!9599))

(declare-fun result!12658 () Bool)

(assert (= result!12658 result!12608))

(assert (=> d!54793 t!31190))

(assert (=> b!208528 t!31188))

(assert (=> b!208541 t!31190))

(declare-fun t!31192 () Bool)

(declare-fun tb!9601 () Bool)

(assert (=> (and b!209448 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 lt!76348)))) t!31192) tb!9601))

(declare-fun result!12660 () Bool)

(assert (= result!12660 result!12626))

(assert (=> d!54921 t!31192))

(declare-fun tp!91253 () Bool)

(declare-fun b_and!15135 () Bool)

(assert (=> b!209448 (= tp!91253 (and (=> t!31188 result!12656) (=> t!31190 result!12658) (=> t!31192 result!12660) b_and!15135))))

(declare-fun b!209447 () Bool)

(declare-fun tp!91254 () Bool)

(declare-fun e!129142 () Bool)

(declare-fun e!129145 () Bool)

(assert (=> b!209447 (= e!129145 (and tp!91254 (inv!4166 (tag!807 (rule!1146 (h!8731 (t!31112 tokens!465))))) (inv!4169 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) e!129142))))

(declare-fun b!209445 () Bool)

(declare-fun tp!91251 () Bool)

(declare-fun e!129140 () Bool)

(declare-fun e!129144 () Bool)

(assert (=> b!209445 (= e!129140 (and (inv!4170 (h!8731 (t!31112 tokens!465))) e!129144 tp!91251))))

(declare-fun tp!91250 () Bool)

(declare-fun b!209446 () Bool)

(assert (=> b!209446 (= e!129144 (and (inv!21 (value!21957 (h!8731 (t!31112 tokens!465)))) e!129145 tp!91250))))

(assert (=> b!208295 (= tp!91151 e!129140)))

(assert (=> b!209448 (= e!129142 (and tp!91252 tp!91253))))

(assert (= b!209447 b!209448))

(assert (= b!209446 b!209447))

(assert (= b!209445 b!209446))

(assert (= (and b!208295 ((_ is Cons!3334) (t!31112 tokens!465))) b!209445))

(declare-fun m!232279 () Bool)

(assert (=> b!209447 m!232279))

(declare-fun m!232281 () Bool)

(assert (=> b!209447 m!232281))

(declare-fun m!232283 () Bool)

(assert (=> b!209445 m!232283))

(declare-fun m!232285 () Bool)

(assert (=> b!209446 m!232285))

(declare-fun b!209451 () Bool)

(declare-fun e!129146 () Bool)

(declare-fun tp!91259 () Bool)

(assert (=> b!209451 (= e!129146 tp!91259)))

(assert (=> b!208297 (= tp!91144 e!129146)))

(declare-fun b!209450 () Bool)

(declare-fun tp!91256 () Bool)

(declare-fun tp!91258 () Bool)

(assert (=> b!209450 (= e!129146 (and tp!91256 tp!91258))))

(declare-fun b!209452 () Bool)

(declare-fun tp!91257 () Bool)

(declare-fun tp!91255 () Bool)

(assert (=> b!209452 (= e!129146 (and tp!91257 tp!91255))))

(declare-fun b!209449 () Bool)

(assert (=> b!209449 (= e!129146 tp_is_empty!1719)))

(assert (= (and b!208297 ((_ is ElementMatch!843) (regex!619 (h!8730 rules!1920)))) b!209449))

(assert (= (and b!208297 ((_ is Concat!1485) (regex!619 (h!8730 rules!1920)))) b!209450))

(assert (= (and b!208297 ((_ is Star!843) (regex!619 (h!8730 rules!1920)))) b!209451))

(assert (= (and b!208297 ((_ is Union!843) (regex!619 (h!8730 rules!1920)))) b!209452))

(declare-fun b!209457 () Bool)

(declare-fun e!129149 () Bool)

(declare-fun tp!91262 () Bool)

(assert (=> b!209457 (= e!129149 (and tp_is_empty!1719 tp!91262))))

(assert (=> b!208307 (= tp!91153 e!129149)))

(assert (= (and b!208307 ((_ is Cons!3332) (originalCharacters!662 separatorToken!170))) b!209457))

(declare-fun b!209458 () Bool)

(declare-fun e!129150 () Bool)

(declare-fun tp!91263 () Bool)

(assert (=> b!209458 (= e!129150 (and tp_is_empty!1719 tp!91263))))

(assert (=> b!208276 (= tp!91147 e!129150)))

(assert (= (and b!208276 ((_ is Cons!3332) (originalCharacters!662 (h!8731 tokens!465)))) b!209458))

(declare-fun b!209461 () Bool)

(declare-fun e!129153 () Bool)

(assert (=> b!209461 (= e!129153 true)))

(declare-fun b!209460 () Bool)

(declare-fun e!129152 () Bool)

(assert (=> b!209460 (= e!129152 e!129153)))

(declare-fun b!209459 () Bool)

(declare-fun e!129151 () Bool)

(assert (=> b!209459 (= e!129151 e!129152)))

(assert (=> b!208330 e!129151))

(assert (= b!209460 b!209461))

(assert (= b!209459 b!209460))

(assert (= (and b!208330 ((_ is Cons!3333) (t!31111 rules!1920))) b!209459))

(assert (=> b!209461 (< (dynLambda!1485 order!2213 (toValue!1302 (transformation!619 (h!8730 (t!31111 rules!1920))))) (dynLambda!1486 order!2215 lambda!6420))))

(assert (=> b!209461 (< (dynLambda!1487 order!2217 (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920))))) (dynLambda!1486 order!2215 lambda!6420))))

(declare-fun b!209472 () Bool)

(declare-fun b_free!8105 () Bool)

(declare-fun b_next!8105 () Bool)

(assert (=> b!209472 (= b_free!8105 (not b_next!8105))))

(declare-fun tp!91273 () Bool)

(declare-fun b_and!15137 () Bool)

(assert (=> b!209472 (= tp!91273 b_and!15137)))

(declare-fun b_free!8107 () Bool)

(declare-fun b_next!8107 () Bool)

(assert (=> b!209472 (= b_free!8107 (not b_next!8107))))

(declare-fun tb!9603 () Bool)

(declare-fun t!31194 () Bool)

(assert (=> (and b!209472 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170)))) t!31194) tb!9603))

(declare-fun result!12666 () Bool)

(assert (= result!12666 result!12600))

(assert (=> d!54787 t!31194))

(declare-fun tb!9605 () Bool)

(declare-fun t!31196 () Bool)

(assert (=> (and b!209472 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465))))) t!31196) tb!9605))

(declare-fun result!12668 () Bool)

(assert (= result!12668 result!12608))

(assert (=> d!54793 t!31196))

(assert (=> b!208528 t!31194))

(assert (=> b!208541 t!31196))

(declare-fun tb!9607 () Bool)

(declare-fun t!31198 () Bool)

(assert (=> (and b!209472 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 lt!76348)))) t!31198) tb!9607))

(declare-fun result!12670 () Bool)

(assert (= result!12670 result!12626))

(assert (=> d!54921 t!31198))

(declare-fun tp!91274 () Bool)

(declare-fun b_and!15139 () Bool)

(assert (=> b!209472 (= tp!91274 (and (=> t!31196 result!12668) (=> t!31198 result!12670) (=> t!31194 result!12666) b_and!15139))))

(declare-fun e!129163 () Bool)

(assert (=> b!209472 (= e!129163 (and tp!91273 tp!91274))))

(declare-fun e!129162 () Bool)

(declare-fun tp!91275 () Bool)

(declare-fun b!209471 () Bool)

(assert (=> b!209471 (= e!129162 (and tp!91275 (inv!4166 (tag!807 (h!8730 (t!31111 rules!1920)))) (inv!4169 (transformation!619 (h!8730 (t!31111 rules!1920)))) e!129163))))

(declare-fun b!209470 () Bool)

(declare-fun e!129164 () Bool)

(declare-fun tp!91272 () Bool)

(assert (=> b!209470 (= e!129164 (and e!129162 tp!91272))))

(assert (=> b!208312 (= tp!91145 e!129164)))

(assert (= b!209471 b!209472))

(assert (= b!209470 b!209471))

(assert (= (and b!208312 ((_ is Cons!3333) (t!31111 rules!1920))) b!209470))

(declare-fun m!232287 () Bool)

(assert (=> b!209471 m!232287))

(declare-fun m!232289 () Bool)

(assert (=> b!209471 m!232289))

(declare-fun b_lambda!5411 () Bool)

(assert (= b_lambda!5409 (or b!208304 b_lambda!5411)))

(declare-fun bs!21201 () Bool)

(declare-fun d!55057 () Bool)

(assert (= bs!21201 (and d!55057 b!208304)))

(assert (=> bs!21201 (= (dynLambda!1489 lambda!6419 (h!8731 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))))) (not (isSeparator!619 (rule!1146 (h!8731 (list!1241 (_1!1967 (lex!305 thiss!17480 rules!1920 lt!76334))))))))))

(assert (=> b!209373 d!55057))

(declare-fun b_lambda!5413 () Bool)

(assert (= b_lambda!5375 (or b!208304 b_lambda!5413)))

(declare-fun bs!21202 () Bool)

(declare-fun d!55059 () Bool)

(assert (= bs!21202 (and d!55059 b!208304)))

(assert (=> bs!21202 (= (dynLambda!1489 lambda!6419 (h!8731 tokens!465)) (not (isSeparator!619 (rule!1146 (h!8731 tokens!465)))))))

(assert (=> b!208933 d!55059))

(declare-fun b_lambda!5415 () Bool)

(assert (= b_lambda!5363 (or (and b!209448 b_free!8103 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!208287 b_free!8091) (and b!208288 b_free!8083 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!208305 b_free!8087 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!209472 b_free!8107 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) b_lambda!5415)))

(declare-fun b_lambda!5417 () Bool)

(assert (= b_lambda!5373 (or (and b!209472 b_free!8107 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208287 b_free!8091 (= (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208288 b_free!8083 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208305 b_free!8087) (and b!209448 b_free!8103 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) b_lambda!5417)))

(declare-fun b_lambda!5419 () Bool)

(assert (= b_lambda!5383 (or b!208314 b_lambda!5419)))

(declare-fun bs!21203 () Bool)

(declare-fun d!55061 () Bool)

(assert (= bs!21203 (and d!55061 b!208314)))

(assert (=> bs!21203 (= (dynLambda!1489 lambda!6420 lt!76348) (rulesProduceIndividualToken!254 thiss!17480 rules!1920 lt!76348))))

(assert (=> bs!21203 m!230261))

(assert (=> d!54913 d!55061))

(declare-fun b_lambda!5421 () Bool)

(assert (= b_lambda!5371 (or (and b!209448 b_free!8103 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!208287 b_free!8091) (and b!208288 b_free!8083 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!208305 b_free!8087 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) (and b!209472 b_free!8107 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))))) b_lambda!5421)))

(declare-fun b_lambda!5423 () Bool)

(assert (= b_lambda!5365 (or (and b!209472 b_free!8107 (= (toChars!1161 (transformation!619 (h!8730 (t!31111 rules!1920)))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208287 b_free!8091 (= (toChars!1161 (transformation!619 (rule!1146 separatorToken!170))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208288 b_free!8083 (= (toChars!1161 (transformation!619 (h!8730 rules!1920))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) (and b!208305 b_free!8087) (and b!209448 b_free!8103 (= (toChars!1161 (transformation!619 (rule!1146 (h!8731 (t!31112 tokens!465))))) (toChars!1161 (transformation!619 (rule!1146 (h!8731 tokens!465)))))) b_lambda!5423)))

(declare-fun b_lambda!5425 () Bool)

(assert (= b_lambda!5361 (or b!208314 b_lambda!5425)))

(declare-fun bs!21204 () Bool)

(declare-fun d!55063 () Bool)

(assert (= bs!21204 (and d!55063 b!208314)))

(assert (=> bs!21204 (= (dynLambda!1489 lambda!6420 (h!8731 tokens!465)) (rulesProduceIndividualToken!254 thiss!17480 rules!1920 (h!8731 tokens!465)))))

(assert (=> bs!21204 m!230165))

(assert (=> d!54657 d!55063))

(check-sat (not b!208520) (not b!208898) (not b!209389) (not d!54955) (not bm!10118) (not b!208935) (not b!208912) (not b!208850) (not b!209450) (not d!54865) (not d!54703) (not b!208984) (not d!54759) (not b!209429) (not b!208518) (not b_lambda!5415) (not b_next!8089) (not b!209391) (not d!54835) (not d!54909) (not b!208757) b_and!15133 (not b!208985) (not b!208901) (not d!54839) (not b!208528) (not b_next!8105) (not b!208893) b_and!15109 (not d!54681) (not b!208519) (not d!54915) (not d!54687) (not d!54799) (not b!208913) (not b!208603) (not b!209056) (not b_next!8081) (not b!209061) (not b!208977) (not tb!9555) (not b_next!8091) (not d!54923) (not b_lambda!5423) (not d!54921) (not b!209062) (not b!209127) (not b!209137) (not b!208987) (not b!209428) (not b!209434) (not b!208934) (not d!54761) (not b!209129) (not d!54631) (not b!208896) (not b!208969) (not b!208611) (not bm!10093) (not d!54695) b_and!15137 (not bm!10040) (not d!54705) (not b!208874) (not b!209470) (not d!54919) (not bm!10100) (not b_lambda!5421) (not d!55051) (not b!209060) (not bm!10157) (not b!209406) (not b!208922) (not d!54911) (not bm!10156) (not b!209161) (not b!209385) (not b!209395) (not b!208954) (not b!209135) (not bm!10089) (not b!208696) (not d!54841) (not d!54809) (not b_next!8083) (not b!208596) (not bm!10096) (not b!209136) (not bm!10155) (not b!208577) (not b!208909) (not b!208876) (not b!209158) (not d!54845) (not b!208534) (not b!208594) (not b!208879) (not b!209157) (not b!209126) (not b!208678) (not b!209387) (not b!209384) (not d!54793) (not b!208919) (not b!209054) (not d!54773) (not b!208540) (not tb!9561) (not b!209447) (not b!208980) (not b!209446) (not b!209055) (not b!208600) (not b!208921) (not d!54817) (not bm!10119) (not b!209134) (not b!209410) (not d!55053) (not b!209430) (not b!208752) (not bm!10039) (not b!208841) (not d!54787) (not d!54673) (not d!55055) (not d!54713) (not d!54697) (not b!208544) (not bs!21204) (not b!208972) (not b!208908) (not d!54869) (not b!209155) (not b!209166) (not d!54927) (not b!209396) (not b!208601) (not b!209412) (not b!208543) (not b!208542) (not d!54657) (not b_next!8103) (not b!208517) b_and!15061 (not b!209409) (not b!208852) (not bm!10073) (not b!209457) (not d!54677) (not b!208747) (not d!54811) (not b!209160) (not bm!10134) (not d!55035) (not b!208877) (not b!208584) (not bm!10135) (not b!208988) (not b!209360) (not d!54779) b_and!15057 (not b!209176) (not d!55049) (not b!208871) (not b!208916) (not b!209139) (not d!55045) (not b!209452) (not d!55039) (not b!208751) (not d!54849) (not b!208614) (not b!208597) (not b!208675) (not b!208847) (not b!208586) (not d!54795) (not d!54789) (not d!54663) (not b!208541) (not d!54867) (not b!208753) (not d!54837) (not b!208967) (not b!209451) (not b_lambda!5425) (not b!208608) (not d!54929) (not d!54667) b_and!15111 (not d!55041) (not b!209151) (not bm!10117) (not b!209445) b_and!15135 (not b!208674) (not d!54711) (not b!208580) (not b!208894) (not b!208904) (not b!208529) (not d!54801) (not b!208839) (not b!209007) (not b!208920) (not d!54823) (not b_lambda!5411) (not d!54679) (not bm!10132) (not b!208589) (not b!209178) (not b!209009) (not b!208617) (not d!54685) (not bm!10090) (not d!54797) (not b!208983) (not b!208851) (not b!208516) (not d!54925) (not d!54655) (not bm!10115) (not bm!10071) tp_is_empty!1719 (not d!54937) (not d!54829) (not b!208923) (not d!54851) (not d!54931) (not b!208615) (not b!209432) (not b!209388) (not b!209381) (not b!209164) (not b!208514) (not b_next!8087) (not d!54913) (not d!55047) (not b!209471) (not d!54907) (not b_lambda!5385) (not b!208953) b_and!15053 (not b!209375) (not b!209177) (not b!208872) (not b!209390) (not b_next!8107) (not bs!21203) (not b!208878) b_and!15139 (not b!209153) (not b!209156) (not d!54963) (not d!54847) (not b!208890) (not d!54815) (not b!208936) (not bm!10041) (not bm!10086) (not d!54633) (not b!208897) (not b!208632) (not b!208981) (not d!54675) (not b!209163) (not bm!10097) (not d!54771) (not b!208629) (not b!208840) (not b!209403) b_and!15107 (not b!208875) (not d!54831) (not bm!10094) (not b!208844) (not b!208750) (not b_lambda!5417) (not b_lambda!5419) (not b!209059) (not b!208513) (not b!208889) (not b!209359) (not bm!10102) (not b!208926) (not b!209012) (not bm!10098) (not b!209382) (not b!208537) (not d!54821) (not b_next!8101) (not d!54791) (not b!208579) (not b!209415) (not d!54781) (not b!208677) (not b!209058) (not d!54775) (not d!54777) (not b!209433) (not b!208694) (not d!54665) (not b!208695) (not bm!10099) (not d!54659) (not b!209374) (not b_next!8085) (not b!209165) (not b!209459) (not d!54941) (not b!209063) (not b_lambda!5413) (not b!208994) (not d!54783) (not b!209142) (not bm!10088) (not b!208523) (not d!54767) (not b!209392) (not d!54689) (not b!209458) (not b!208583) (not b!209414) (not tb!9579) (not b!208630) (not b!209152) (not b!209379) (not b!209383) (not b!208754) (not b!208610) (not bm!10070) (not b!209405) (not d!54843) (not bm!10036))
(check-sat (not b_next!8089) b_and!15137 (not b_next!8083) b_and!15057 b_and!15111 b_and!15135 (not b_next!8087) b_and!15053 b_and!15107 (not b_next!8101) (not b_next!8085) b_and!15133 (not b_next!8105) b_and!15109 (not b_next!8081) (not b_next!8091) (not b_next!8103) b_and!15061 (not b_next!8107) b_and!15139)
