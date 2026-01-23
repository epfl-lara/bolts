; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398366 () Bool)

(assert start!398366)

(declare-fun b!4178491 () Bool)

(declare-fun b_free!121359 () Bool)

(declare-fun b_next!122063 () Bool)

(assert (=> b!4178491 (= b_free!121359 (not b_next!122063))))

(declare-fun tp!1277005 () Bool)

(declare-fun b_and!326685 () Bool)

(assert (=> b!4178491 (= tp!1277005 b_and!326685)))

(declare-fun b_free!121361 () Bool)

(declare-fun b_next!122065 () Bool)

(assert (=> b!4178491 (= b_free!121361 (not b_next!122065))))

(declare-fun tp!1277007 () Bool)

(declare-fun b_and!326687 () Bool)

(assert (=> b!4178491 (= tp!1277007 b_and!326687)))

(declare-fun b!4178493 () Bool)

(declare-fun b_free!121363 () Bool)

(declare-fun b_next!122067 () Bool)

(assert (=> b!4178493 (= b_free!121363 (not b_next!122067))))

(declare-fun tp!1277002 () Bool)

(declare-fun b_and!326689 () Bool)

(assert (=> b!4178493 (= tp!1277002 b_and!326689)))

(declare-fun b_free!121365 () Bool)

(declare-fun b_next!122069 () Bool)

(assert (=> b!4178493 (= b_free!121365 (not b_next!122069))))

(declare-fun tp!1277004 () Bool)

(declare-fun b_and!326691 () Bool)

(assert (=> b!4178493 (= tp!1277004 b_and!326691)))

(declare-fun b!4178496 () Bool)

(declare-fun b_free!121367 () Bool)

(declare-fun b_next!122071 () Bool)

(assert (=> b!4178496 (= b_free!121367 (not b_next!122071))))

(declare-fun tp!1277008 () Bool)

(declare-fun b_and!326693 () Bool)

(assert (=> b!4178496 (= tp!1277008 b_and!326693)))

(declare-fun b_free!121369 () Bool)

(declare-fun b_next!122073 () Bool)

(assert (=> b!4178496 (= b_free!121369 (not b_next!122073))))

(declare-fun tp!1277012 () Bool)

(declare-fun b_and!326695 () Bool)

(assert (=> b!4178496 (= tp!1277012 b_and!326695)))

(declare-fun b!4178472 () Bool)

(declare-fun e!2594149 () Bool)

(declare-fun e!2594133 () Bool)

(assert (=> b!4178472 (= e!2594149 e!2594133)))

(declare-fun res!1713270 () Bool)

(assert (=> b!4178472 (=> res!1713270 e!2594133)))

(declare-fun lt!1488254 () Int)

(declare-fun lt!1488253 () Int)

(assert (=> b!4178472 (= res!1713270 (<= lt!1488254 lt!1488253))))

(declare-datatypes ((C!25256 0))(
  ( (C!25257 (val!14790 Int)) )
))
(declare-datatypes ((List!45991 0))(
  ( (Nil!45867) (Cons!45867 (h!51287 C!25256) (t!344848 List!45991)) )
))
(declare-fun pBis!107 () List!45991)

(declare-fun size!33682 (List!45991) Int)

(assert (=> b!4178472 (= lt!1488254 (size!33682 pBis!107))))

(declare-fun b!4178473 () Bool)

(declare-fun res!1713277 () Bool)

(declare-fun e!2594152 () Bool)

(assert (=> b!4178473 (=> (not res!1713277) (not e!2594152))))

(declare-datatypes ((List!45992 0))(
  ( (Nil!45868) (Cons!45868 (h!51288 (_ BitVec 16)) (t!344849 List!45992)) )
))
(declare-datatypes ((TokenValue!7858 0))(
  ( (FloatLiteralValue!15716 (text!55451 List!45992)) (TokenValueExt!7857 (__x!27937 Int)) (Broken!39290 (value!237904 List!45992)) (Object!7981) (End!7858) (Def!7858) (Underscore!7858) (Match!7858) (Else!7858) (Error!7858) (Case!7858) (If!7858) (Extends!7858) (Abstract!7858) (Class!7858) (Val!7858) (DelimiterValue!15716 (del!7918 List!45992)) (KeywordValue!7864 (value!237905 List!45992)) (CommentValue!15716 (value!237906 List!45992)) (WhitespaceValue!15716 (value!237907 List!45992)) (IndentationValue!7858 (value!237908 List!45992)) (String!53155) (Int32!7858) (Broken!39291 (value!237909 List!45992)) (Boolean!7859) (Unit!64950) (OperatorValue!7861 (op!7918 List!45992)) (IdentifierValue!15716 (value!237910 List!45992)) (IdentifierValue!15717 (value!237911 List!45992)) (WhitespaceValue!15717 (value!237912 List!45992)) (True!15716) (False!15716) (Broken!39292 (value!237913 List!45992)) (Broken!39293 (value!237914 List!45992)) (True!15717) (RightBrace!7858) (RightBracket!7858) (Colon!7858) (Null!7858) (Comma!7858) (LeftBracket!7858) (False!15717) (LeftBrace!7858) (ImaginaryLiteralValue!7858 (text!55452 List!45992)) (StringLiteralValue!23574 (value!237915 List!45992)) (EOFValue!7858 (value!237916 List!45992)) (IdentValue!7858 (value!237917 List!45992)) (DelimiterValue!15717 (value!237918 List!45992)) (DedentValue!7858 (value!237919 List!45992)) (NewLineValue!7858 (value!237920 List!45992)) (IntegerValue!23574 (value!237921 (_ BitVec 32)) (text!55453 List!45992)) (IntegerValue!23575 (value!237922 Int) (text!55454 List!45992)) (Times!7858) (Or!7858) (Equal!7858) (Minus!7858) (Broken!39294 (value!237923 List!45992)) (And!7858) (Div!7858) (LessEqual!7858) (Mod!7858) (Concat!20391) (Not!7858) (Plus!7858) (SpaceValue!7858 (value!237924 List!45992)) (IntegerValue!23576 (value!237925 Int) (text!55455 List!45992)) (StringLiteralValue!23575 (text!55456 List!45992)) (FloatLiteralValue!15717 (text!55457 List!45992)) (BytesLiteralValue!7858 (value!237926 List!45992)) (CommentValue!15717 (value!237927 List!45992)) (StringLiteralValue!23576 (value!237928 List!45992)) (ErrorTokenValue!7858 (msg!7919 List!45992)) )
))
(declare-datatypes ((IArray!27683 0))(
  ( (IArray!27684 (innerList!13899 List!45991)) )
))
(declare-datatypes ((Conc!13839 0))(
  ( (Node!13839 (left!34167 Conc!13839) (right!34497 Conc!13839) (csize!27908 Int) (cheight!14050 Int)) (Leaf!21396 (xs!17145 IArray!27683) (csize!27909 Int)) (Empty!13839) )
))
(declare-datatypes ((BalanceConc!27272 0))(
  ( (BalanceConc!27273 (c!713618 Conc!13839)) )
))
(declare-datatypes ((Regex!12533 0))(
  ( (ElementMatch!12533 (c!713619 C!25256)) (Concat!20392 (regOne!25578 Regex!12533) (regTwo!25578 Regex!12533)) (EmptyExpr!12533) (Star!12533 (reg!12862 Regex!12533)) (EmptyLang!12533) (Union!12533 (regOne!25579 Regex!12533) (regTwo!25579 Regex!12533)) )
))
(declare-datatypes ((String!53156 0))(
  ( (String!53157 (value!237929 String)) )
))
(declare-datatypes ((TokenValueInjection!15144 0))(
  ( (TokenValueInjection!15145 (toValue!10312 Int) (toChars!10171 Int)) )
))
(declare-datatypes ((Rule!15056 0))(
  ( (Rule!15057 (regex!7628 Regex!12533) (tag!8492 String!53156) (isSeparator!7628 Bool) (transformation!7628 TokenValueInjection!15144)) )
))
(declare-datatypes ((List!45993 0))(
  ( (Nil!45869) (Cons!45869 (h!51289 Rule!15056) (t!344850 List!45993)) )
))
(declare-fun rules!3843 () List!45993)

(declare-fun isEmpty!27138 (List!45993) Bool)

(assert (=> b!4178473 (= res!1713277 (not (isEmpty!27138 rules!3843)))))

(declare-fun b!4178474 () Bool)

(declare-fun res!1713272 () Bool)

(assert (=> b!4178474 (=> res!1713272 e!2594133)))

(declare-datatypes ((LexerInterface!7221 0))(
  ( (LexerInterfaceExt!7218 (__x!27938 Int)) (Lexer!7219) )
))
(declare-fun thiss!25986 () LexerInterface!7221)

(declare-fun rBis!167 () Rule!15056)

(declare-fun ruleValid!3346 (LexerInterface!7221 Rule!15056) Bool)

(assert (=> b!4178474 (= res!1713272 (not (ruleValid!3346 thiss!25986 rBis!167)))))

(declare-fun b!4178475 () Bool)

(assert (=> b!4178475 (= e!2594152 (not e!2594149))))

(declare-fun res!1713278 () Bool)

(assert (=> b!4178475 (=> res!1713278 e!2594149)))

(declare-fun input!3342 () List!45991)

(declare-fun r!4142 () Rule!15056)

(declare-datatypes ((Token!13970 0))(
  ( (Token!13971 (value!237930 TokenValue!7858) (rule!10686 Rule!15056) (size!33683 Int) (originalCharacters!8016 List!45991)) )
))
(declare-datatypes ((tuple2!43690 0))(
  ( (tuple2!43691 (_1!24979 Token!13970) (_2!24979 List!45991)) )
))
(declare-datatypes ((Option!9824 0))(
  ( (None!9823) (Some!9823 (v!40627 tuple2!43690)) )
))
(declare-fun lt!1488261 () Option!9824)

(declare-fun maxPrefixOneRule!3232 (LexerInterface!7221 Rule!15056 List!45991) Option!9824)

(assert (=> b!4178475 (= res!1713278 (not (= (maxPrefixOneRule!3232 thiss!25986 r!4142 input!3342) lt!1488261)))))

(declare-fun p!2959 () List!45991)

(declare-fun lt!1488259 () TokenValue!7858)

(declare-fun getSuffix!2780 (List!45991 List!45991) List!45991)

(assert (=> b!4178475 (= lt!1488261 (Some!9823 (tuple2!43691 (Token!13971 lt!1488259 r!4142 lt!1488253 p!2959) (getSuffix!2780 input!3342 p!2959))))))

(assert (=> b!4178475 (= lt!1488253 (size!33682 p!2959))))

(declare-fun lt!1488249 () BalanceConc!27272)

(declare-fun apply!10593 (TokenValueInjection!15144 BalanceConc!27272) TokenValue!7858)

(assert (=> b!4178475 (= lt!1488259 (apply!10593 (transformation!7628 r!4142) lt!1488249))))

(declare-fun isPrefix!4485 (List!45991 List!45991) Bool)

(assert (=> b!4178475 (isPrefix!4485 input!3342 input!3342)))

(declare-datatypes ((Unit!64951 0))(
  ( (Unit!64952) )
))
(declare-fun lt!1488257 () Unit!64951)

(declare-fun lemmaIsPrefixRefl!2914 (List!45991 List!45991) Unit!64951)

(assert (=> b!4178475 (= lt!1488257 (lemmaIsPrefixRefl!2914 input!3342 input!3342))))

(declare-fun lt!1488252 () Unit!64951)

(declare-fun lemmaSemiInverse!2394 (TokenValueInjection!15144 BalanceConc!27272) Unit!64951)

(assert (=> b!4178475 (= lt!1488252 (lemmaSemiInverse!2394 (transformation!7628 r!4142) lt!1488249))))

(declare-fun seqFromList!5653 (List!45991) BalanceConc!27272)

(assert (=> b!4178475 (= lt!1488249 (seqFromList!5653 p!2959))))

(declare-fun b!4178476 () Bool)

(declare-fun e!2594142 () Bool)

(declare-fun e!2594140 () Bool)

(assert (=> b!4178476 (= e!2594142 e!2594140)))

(declare-fun res!1713268 () Bool)

(assert (=> b!4178476 (=> res!1713268 e!2594140)))

(declare-fun lt!1488260 () Int)

(assert (=> b!4178476 (= res!1713268 (< lt!1488260 lt!1488254))))

(declare-fun lt!1488264 () BalanceConc!27272)

(declare-fun size!33684 (BalanceConc!27272) Int)

(assert (=> b!4178476 (= lt!1488260 (size!33684 lt!1488264))))

(declare-fun b!4178478 () Bool)

(declare-fun res!1713274 () Bool)

(assert (=> b!4178478 (=> (not res!1713274) (not e!2594152))))

(assert (=> b!4178478 (= res!1713274 (ruleValid!3346 thiss!25986 r!4142))))

(declare-fun b!4178479 () Bool)

(declare-fun e!2594135 () Unit!64951)

(declare-fun Unit!64953 () Unit!64951)

(assert (=> b!4178479 (= e!2594135 Unit!64953)))

(declare-fun lt!1488262 () Unit!64951)

(declare-fun lt!1488250 () List!45991)

(declare-fun lemmaIsPrefixSameLengthThenSameList!993 (List!45991 List!45991 List!45991) Unit!64951)

(assert (=> b!4178479 (= lt!1488262 (lemmaIsPrefixSameLengthThenSameList!993 pBis!107 lt!1488250 input!3342))))

(assert (=> b!4178479 false))

(declare-fun b!4178480 () Bool)

(declare-fun res!1713265 () Bool)

(assert (=> b!4178480 (=> res!1713265 e!2594133)))

(declare-fun maxPrefix!4273 (LexerInterface!7221 List!45993 List!45991) Option!9824)

(assert (=> b!4178480 (= res!1713265 (not (= (maxPrefix!4273 thiss!25986 rules!3843 input!3342) lt!1488261)))))

(declare-fun b!4178481 () Bool)

(declare-fun res!1713267 () Bool)

(assert (=> b!4178481 (=> (not res!1713267) (not e!2594152))))

(declare-fun contains!9431 (List!45993 Rule!15056) Bool)

(assert (=> b!4178481 (= res!1713267 (contains!9431 rules!3843 r!4142))))

(declare-fun b!4178482 () Bool)

(declare-fun e!2594145 () Bool)

(assert (=> b!4178482 (= e!2594133 e!2594145)))

(declare-fun res!1713275 () Bool)

(assert (=> b!4178482 (=> res!1713275 e!2594145)))

(declare-fun lt!1488251 () Option!9824)

(declare-fun isEmpty!27139 (Option!9824) Bool)

(assert (=> b!4178482 (= res!1713275 (isEmpty!27139 lt!1488251))))

(assert (=> b!4178482 (= lt!1488251 (maxPrefixOneRule!3232 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1488248 () Unit!64951)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2360 (LexerInterface!7221 Rule!15056 List!45993) Unit!64951)

(assert (=> b!4178482 (= lt!1488248 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2360 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4178482 (<= lt!1488254 (size!33682 input!3342))))

(declare-fun lt!1488255 () Unit!64951)

(declare-fun lemmaIsPrefixThenSmallerEqSize!517 (List!45991 List!45991) Unit!64951)

(assert (=> b!4178482 (= lt!1488255 (lemmaIsPrefixThenSmallerEqSize!517 pBis!107 input!3342))))

(declare-fun b!4178483 () Bool)

(declare-fun Unit!64954 () Unit!64951)

(assert (=> b!4178483 (= e!2594135 Unit!64954)))

(declare-fun tp!1277011 () Bool)

(declare-fun e!2594141 () Bool)

(declare-fun b!4178484 () Bool)

(declare-fun e!2594150 () Bool)

(declare-fun inv!60387 (String!53156) Bool)

(declare-fun inv!60389 (TokenValueInjection!15144) Bool)

(assert (=> b!4178484 (= e!2594150 (and tp!1277011 (inv!60387 (tag!8492 (h!51289 rules!3843))) (inv!60389 (transformation!7628 (h!51289 rules!3843))) e!2594141))))

(declare-fun b!4178485 () Bool)

(declare-fun res!1713276 () Bool)

(assert (=> b!4178485 (=> (not res!1713276) (not e!2594152))))

(declare-fun matchR!6272 (Regex!12533 List!45991) Bool)

(assert (=> b!4178485 (= res!1713276 (matchR!6272 (regex!7628 r!4142) p!2959))))

(declare-fun b!4178486 () Bool)

(declare-fun res!1713273 () Bool)

(assert (=> b!4178486 (=> (not res!1713273) (not e!2594152))))

(assert (=> b!4178486 (= res!1713273 (isPrefix!4485 p!2959 input!3342))))

(declare-fun b!4178487 () Bool)

(assert (=> b!4178487 (= e!2594140 (< lt!1488254 lt!1488260))))

(declare-fun lt!1488256 () Unit!64951)

(assert (=> b!4178487 (= lt!1488256 e!2594135)))

(declare-fun c!713617 () Bool)

(assert (=> b!4178487 (= c!713617 (= lt!1488254 (size!33682 lt!1488250)))))

(declare-fun e!2594143 () Bool)

(declare-fun tp!1277009 () Bool)

(declare-fun e!2594139 () Bool)

(declare-fun b!4178488 () Bool)

(assert (=> b!4178488 (= e!2594139 (and tp!1277009 (inv!60387 (tag!8492 r!4142)) (inv!60389 (transformation!7628 r!4142)) e!2594143))))

(declare-fun e!2594151 () Bool)

(declare-fun e!2594148 () Bool)

(declare-fun b!4178489 () Bool)

(declare-fun tp!1277006 () Bool)

(assert (=> b!4178489 (= e!2594151 (and tp!1277006 (inv!60387 (tag!8492 rBis!167)) (inv!60389 (transformation!7628 rBis!167)) e!2594148))))

(declare-fun b!4178490 () Bool)

(declare-fun res!1713264 () Bool)

(assert (=> b!4178490 (=> (not res!1713264) (not e!2594152))))

(assert (=> b!4178490 (= res!1713264 (isPrefix!4485 pBis!107 input!3342))))

(assert (=> b!4178491 (= e!2594148 (and tp!1277005 tp!1277007))))

(declare-fun b!4178477 () Bool)

(declare-fun e!2594146 () Bool)

(declare-fun tp_is_empty!22029 () Bool)

(declare-fun tp!1277003 () Bool)

(assert (=> b!4178477 (= e!2594146 (and tp_is_empty!22029 tp!1277003))))

(declare-fun res!1713269 () Bool)

(assert (=> start!398366 (=> (not res!1713269) (not e!2594152))))

(get-info :version)

(assert (=> start!398366 (= res!1713269 ((_ is Lexer!7219) thiss!25986))))

(assert (=> start!398366 e!2594152))

(assert (=> start!398366 true))

(assert (=> start!398366 e!2594151))

(assert (=> start!398366 e!2594139))

(declare-fun e!2594144 () Bool)

(assert (=> start!398366 e!2594144))

(declare-fun e!2594134 () Bool)

(assert (=> start!398366 e!2594134))

(assert (=> start!398366 e!2594146))

(declare-fun e!2594147 () Bool)

(assert (=> start!398366 e!2594147))

(declare-fun b!4178492 () Bool)

(declare-fun res!1713263 () Bool)

(assert (=> b!4178492 (=> (not res!1713263) (not e!2594152))))

(declare-fun validRegex!5650 (Regex!12533) Bool)

(assert (=> b!4178492 (= res!1713263 (validRegex!5650 (regex!7628 r!4142)))))

(assert (=> b!4178493 (= e!2594143 (and tp!1277002 tp!1277004))))

(declare-fun b!4178494 () Bool)

(declare-fun res!1713262 () Bool)

(assert (=> b!4178494 (=> (not res!1713262) (not e!2594152))))

(assert (=> b!4178494 (= res!1713262 (contains!9431 rules!3843 rBis!167))))

(declare-fun b!4178495 () Bool)

(declare-fun tp!1277001 () Bool)

(assert (=> b!4178495 (= e!2594144 (and e!2594150 tp!1277001))))

(assert (=> b!4178496 (= e!2594141 (and tp!1277008 tp!1277012))))

(declare-fun b!4178497 () Bool)

(declare-fun tp!1277000 () Bool)

(assert (=> b!4178497 (= e!2594134 (and tp_is_empty!22029 tp!1277000))))

(declare-fun b!4178498 () Bool)

(declare-fun tp!1277010 () Bool)

(assert (=> b!4178498 (= e!2594147 (and tp_is_empty!22029 tp!1277010))))

(declare-fun b!4178499 () Bool)

(declare-fun res!1713266 () Bool)

(assert (=> b!4178499 (=> (not res!1713266) (not e!2594152))))

(declare-fun rulesInvariant!6434 (LexerInterface!7221 List!45993) Bool)

(assert (=> b!4178499 (= res!1713266 (rulesInvariant!6434 thiss!25986 rules!3843))))

(declare-fun b!4178500 () Bool)

(assert (=> b!4178500 (= e!2594145 e!2594142)))

(declare-fun res!1713271 () Bool)

(assert (=> b!4178500 (=> res!1713271 e!2594142)))

(assert (=> b!4178500 (= res!1713271 (= lt!1488250 pBis!107))))

(declare-fun lt!1488263 () tuple2!43690)

(declare-fun ++!11706 (List!45991 List!45991) List!45991)

(assert (=> b!4178500 (isPrefix!4485 lt!1488250 (++!11706 lt!1488250 (_2!24979 lt!1488263)))))

(declare-fun lt!1488258 () Unit!64951)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2992 (List!45991 List!45991) Unit!64951)

(assert (=> b!4178500 (= lt!1488258 (lemmaConcatTwoListThenFirstIsPrefix!2992 lt!1488250 (_2!24979 lt!1488263)))))

(declare-fun list!16567 (BalanceConc!27272) List!45991)

(assert (=> b!4178500 (= lt!1488250 (list!16567 lt!1488264))))

(declare-fun charsOf!5069 (Token!13970) BalanceConc!27272)

(assert (=> b!4178500 (= lt!1488264 (charsOf!5069 (_1!24979 lt!1488263)))))

(declare-fun get!14907 (Option!9824) tuple2!43690)

(assert (=> b!4178500 (= lt!1488263 (get!14907 lt!1488251))))

(assert (= (and start!398366 res!1713269) b!4178486))

(assert (= (and b!4178486 res!1713273) b!4178490))

(assert (= (and b!4178490 res!1713264) b!4178473))

(assert (= (and b!4178473 res!1713277) b!4178499))

(assert (= (and b!4178499 res!1713266) b!4178481))

(assert (= (and b!4178481 res!1713267) b!4178494))

(assert (= (and b!4178494 res!1713262) b!4178492))

(assert (= (and b!4178492 res!1713263) b!4178485))

(assert (= (and b!4178485 res!1713276) b!4178478))

(assert (= (and b!4178478 res!1713274) b!4178475))

(assert (= (and b!4178475 (not res!1713278)) b!4178472))

(assert (= (and b!4178472 (not res!1713270)) b!4178474))

(assert (= (and b!4178474 (not res!1713272)) b!4178480))

(assert (= (and b!4178480 (not res!1713265)) b!4178482))

(assert (= (and b!4178482 (not res!1713275)) b!4178500))

(assert (= (and b!4178500 (not res!1713271)) b!4178476))

(assert (= (and b!4178476 (not res!1713268)) b!4178487))

(assert (= (and b!4178487 c!713617) b!4178479))

(assert (= (and b!4178487 (not c!713617)) b!4178483))

(assert (= b!4178489 b!4178491))

(assert (= start!398366 b!4178489))

(assert (= b!4178488 b!4178493))

(assert (= start!398366 b!4178488))

(assert (= b!4178484 b!4178496))

(assert (= b!4178495 b!4178484))

(assert (= (and start!398366 ((_ is Cons!45869) rules!3843)) b!4178495))

(assert (= (and start!398366 ((_ is Cons!45867) input!3342)) b!4178497))

(assert (= (and start!398366 ((_ is Cons!45867) pBis!107)) b!4178477))

(assert (= (and start!398366 ((_ is Cons!45867) p!2959)) b!4178498))

(declare-fun m!4768023 () Bool)

(assert (=> b!4178475 m!4768023))

(declare-fun m!4768025 () Bool)

(assert (=> b!4178475 m!4768025))

(declare-fun m!4768027 () Bool)

(assert (=> b!4178475 m!4768027))

(declare-fun m!4768029 () Bool)

(assert (=> b!4178475 m!4768029))

(declare-fun m!4768031 () Bool)

(assert (=> b!4178475 m!4768031))

(declare-fun m!4768033 () Bool)

(assert (=> b!4178475 m!4768033))

(declare-fun m!4768035 () Bool)

(assert (=> b!4178475 m!4768035))

(declare-fun m!4768037 () Bool)

(assert (=> b!4178475 m!4768037))

(declare-fun m!4768039 () Bool)

(assert (=> b!4178490 m!4768039))

(declare-fun m!4768041 () Bool)

(assert (=> b!4178492 m!4768041))

(declare-fun m!4768043 () Bool)

(assert (=> b!4178499 m!4768043))

(declare-fun m!4768045 () Bool)

(assert (=> b!4178480 m!4768045))

(declare-fun m!4768047 () Bool)

(assert (=> b!4178485 m!4768047))

(declare-fun m!4768049 () Bool)

(assert (=> b!4178494 m!4768049))

(declare-fun m!4768051 () Bool)

(assert (=> b!4178488 m!4768051))

(declare-fun m!4768053 () Bool)

(assert (=> b!4178488 m!4768053))

(declare-fun m!4768055 () Bool)

(assert (=> b!4178481 m!4768055))

(declare-fun m!4768057 () Bool)

(assert (=> b!4178479 m!4768057))

(declare-fun m!4768059 () Bool)

(assert (=> b!4178474 m!4768059))

(declare-fun m!4768061 () Bool)

(assert (=> b!4178473 m!4768061))

(declare-fun m!4768063 () Bool)

(assert (=> b!4178472 m!4768063))

(declare-fun m!4768065 () Bool)

(assert (=> b!4178482 m!4768065))

(declare-fun m!4768067 () Bool)

(assert (=> b!4178482 m!4768067))

(declare-fun m!4768069 () Bool)

(assert (=> b!4178482 m!4768069))

(declare-fun m!4768071 () Bool)

(assert (=> b!4178482 m!4768071))

(declare-fun m!4768073 () Bool)

(assert (=> b!4178482 m!4768073))

(declare-fun m!4768075 () Bool)

(assert (=> b!4178486 m!4768075))

(declare-fun m!4768077 () Bool)

(assert (=> b!4178487 m!4768077))

(declare-fun m!4768079 () Bool)

(assert (=> b!4178476 m!4768079))

(declare-fun m!4768081 () Bool)

(assert (=> b!4178478 m!4768081))

(declare-fun m!4768083 () Bool)

(assert (=> b!4178500 m!4768083))

(declare-fun m!4768085 () Bool)

(assert (=> b!4178500 m!4768085))

(declare-fun m!4768087 () Bool)

(assert (=> b!4178500 m!4768087))

(declare-fun m!4768089 () Bool)

(assert (=> b!4178500 m!4768089))

(assert (=> b!4178500 m!4768083))

(declare-fun m!4768091 () Bool)

(assert (=> b!4178500 m!4768091))

(declare-fun m!4768093 () Bool)

(assert (=> b!4178500 m!4768093))

(declare-fun m!4768095 () Bool)

(assert (=> b!4178489 m!4768095))

(declare-fun m!4768097 () Bool)

(assert (=> b!4178489 m!4768097))

(declare-fun m!4768099 () Bool)

(assert (=> b!4178484 m!4768099))

(declare-fun m!4768101 () Bool)

(assert (=> b!4178484 m!4768101))

(check-sat (not b!4178497) (not b!4178495) (not b!4178477) (not b!4178472) (not b_next!122067) (not b_next!122065) (not b!4178481) (not b!4178492) (not b!4178494) (not b!4178487) (not b!4178473) (not b!4178489) (not b!4178490) (not b!4178488) (not b!4178482) (not b_next!122063) (not b!4178476) (not b!4178486) b_and!326687 (not b!4178480) tp_is_empty!22029 b_and!326691 b_and!326685 (not b!4178475) (not b_next!122069) (not b!4178499) (not b!4178479) b_and!326695 (not b!4178478) (not b!4178498) (not b!4178484) (not b_next!122073) (not b!4178500) b_and!326689 (not b!4178474) b_and!326693 (not b!4178485) (not b_next!122071))
(check-sat b_and!326687 (not b_next!122067) (not b_next!122065) b_and!326691 b_and!326695 (not b_next!122073) (not b_next!122063) (not b_next!122071) b_and!326685 (not b_next!122069) b_and!326689 b_and!326693)
(get-model)

(declare-fun d!1233233 () Bool)

(declare-fun lt!1488267 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7122 (List!45993) (InoxSet Rule!15056))

(assert (=> d!1233233 (= lt!1488267 (select (content!7122 rules!3843) r!4142))))

(declare-fun e!2594158 () Bool)

(assert (=> d!1233233 (= lt!1488267 e!2594158)))

(declare-fun res!1713293 () Bool)

(assert (=> d!1233233 (=> (not res!1713293) (not e!2594158))))

(assert (=> d!1233233 (= res!1713293 ((_ is Cons!45869) rules!3843))))

(assert (=> d!1233233 (= (contains!9431 rules!3843 r!4142) lt!1488267)))

(declare-fun b!4178505 () Bool)

(declare-fun e!2594157 () Bool)

(assert (=> b!4178505 (= e!2594158 e!2594157)))

(declare-fun res!1713294 () Bool)

(assert (=> b!4178505 (=> res!1713294 e!2594157)))

(assert (=> b!4178505 (= res!1713294 (= (h!51289 rules!3843) r!4142))))

(declare-fun b!4178506 () Bool)

(assert (=> b!4178506 (= e!2594157 (contains!9431 (t!344850 rules!3843) r!4142))))

(assert (= (and d!1233233 res!1713293) b!4178505))

(assert (= (and b!4178505 (not res!1713294)) b!4178506))

(declare-fun m!4768103 () Bool)

(assert (=> d!1233233 m!4768103))

(declare-fun m!4768105 () Bool)

(assert (=> d!1233233 m!4768105))

(declare-fun m!4768107 () Bool)

(assert (=> b!4178506 m!4768107))

(assert (=> b!4178481 d!1233233))

(declare-fun bm!291496 () Bool)

(declare-fun call!291502 () Bool)

(declare-fun call!291503 () Bool)

(assert (=> bm!291496 (= call!291502 call!291503)))

(declare-fun b!4178529 () Bool)

(declare-fun e!2594179 () Bool)

(declare-fun call!291501 () Bool)

(assert (=> b!4178529 (= e!2594179 call!291501)))

(declare-fun b!4178530 () Bool)

(declare-fun e!2594181 () Bool)

(declare-fun e!2594178 () Bool)

(assert (=> b!4178530 (= e!2594181 e!2594178)))

(declare-fun c!713627 () Bool)

(assert (=> b!4178530 (= c!713627 ((_ is Union!12533) (regex!7628 r!4142)))))

(declare-fun b!4178531 () Bool)

(declare-fun e!2594176 () Bool)

(assert (=> b!4178531 (= e!2594176 e!2594181)))

(declare-fun c!713626 () Bool)

(assert (=> b!4178531 (= c!713626 ((_ is Star!12533) (regex!7628 r!4142)))))

(declare-fun d!1233235 () Bool)

(declare-fun res!1713305 () Bool)

(assert (=> d!1233235 (=> res!1713305 e!2594176)))

(assert (=> d!1233235 (= res!1713305 ((_ is ElementMatch!12533) (regex!7628 r!4142)))))

(assert (=> d!1233235 (= (validRegex!5650 (regex!7628 r!4142)) e!2594176)))

(declare-fun bm!291497 () Bool)

(assert (=> bm!291497 (= call!291501 (validRegex!5650 (ite c!713627 (regTwo!25579 (regex!7628 r!4142)) (regTwo!25578 (regex!7628 r!4142)))))))

(declare-fun b!4178532 () Bool)

(declare-fun res!1713306 () Bool)

(declare-fun e!2594175 () Bool)

(assert (=> b!4178532 (=> (not res!1713306) (not e!2594175))))

(assert (=> b!4178532 (= res!1713306 call!291502)))

(assert (=> b!4178532 (= e!2594178 e!2594175)))

(declare-fun b!4178533 () Bool)

(assert (=> b!4178533 (= e!2594175 call!291501)))

(declare-fun b!4178534 () Bool)

(declare-fun e!2594180 () Bool)

(assert (=> b!4178534 (= e!2594180 e!2594179)))

(declare-fun res!1713309 () Bool)

(assert (=> b!4178534 (=> (not res!1713309) (not e!2594179))))

(assert (=> b!4178534 (= res!1713309 call!291502)))

(declare-fun b!4178535 () Bool)

(declare-fun e!2594177 () Bool)

(assert (=> b!4178535 (= e!2594181 e!2594177)))

(declare-fun res!1713308 () Bool)

(declare-fun nullable!4391 (Regex!12533) Bool)

(assert (=> b!4178535 (= res!1713308 (not (nullable!4391 (reg!12862 (regex!7628 r!4142)))))))

(assert (=> b!4178535 (=> (not res!1713308) (not e!2594177))))

(declare-fun b!4178536 () Bool)

(assert (=> b!4178536 (= e!2594177 call!291503)))

(declare-fun bm!291498 () Bool)

(assert (=> bm!291498 (= call!291503 (validRegex!5650 (ite c!713626 (reg!12862 (regex!7628 r!4142)) (ite c!713627 (regOne!25579 (regex!7628 r!4142)) (regOne!25578 (regex!7628 r!4142))))))))

(declare-fun b!4178537 () Bool)

(declare-fun res!1713307 () Bool)

(assert (=> b!4178537 (=> res!1713307 e!2594180)))

(assert (=> b!4178537 (= res!1713307 (not ((_ is Concat!20392) (regex!7628 r!4142))))))

(assert (=> b!4178537 (= e!2594178 e!2594180)))

(assert (= (and d!1233235 (not res!1713305)) b!4178531))

(assert (= (and b!4178531 c!713626) b!4178535))

(assert (= (and b!4178531 (not c!713626)) b!4178530))

(assert (= (and b!4178535 res!1713308) b!4178536))

(assert (= (and b!4178530 c!713627) b!4178532))

(assert (= (and b!4178530 (not c!713627)) b!4178537))

(assert (= (and b!4178532 res!1713306) b!4178533))

(assert (= (and b!4178537 (not res!1713307)) b!4178534))

(assert (= (and b!4178534 res!1713309) b!4178529))

(assert (= (or b!4178533 b!4178529) bm!291497))

(assert (= (or b!4178532 b!4178534) bm!291496))

(assert (= (or b!4178536 bm!291496) bm!291498))

(declare-fun m!4768109 () Bool)

(assert (=> bm!291497 m!4768109))

(declare-fun m!4768111 () Bool)

(assert (=> b!4178535 m!4768111))

(declare-fun m!4768113 () Bool)

(assert (=> bm!291498 m!4768113))

(assert (=> b!4178492 d!1233235))

(declare-fun d!1233239 () Bool)

(declare-fun lt!1488272 () Int)

(assert (=> d!1233239 (>= lt!1488272 0)))

(declare-fun e!2594196 () Int)

(assert (=> d!1233239 (= lt!1488272 e!2594196)))

(declare-fun c!713634 () Bool)

(assert (=> d!1233239 (= c!713634 ((_ is Nil!45867) pBis!107))))

(assert (=> d!1233239 (= (size!33682 pBis!107) lt!1488272)))

(declare-fun b!4178566 () Bool)

(assert (=> b!4178566 (= e!2594196 0)))

(declare-fun b!4178567 () Bool)

(assert (=> b!4178567 (= e!2594196 (+ 1 (size!33682 (t!344848 pBis!107))))))

(assert (= (and d!1233239 c!713634) b!4178566))

(assert (= (and d!1233239 (not c!713634)) b!4178567))

(declare-fun m!4768115 () Bool)

(assert (=> b!4178567 m!4768115))

(assert (=> b!4178472 d!1233239))

(declare-fun d!1233241 () Bool)

(assert (=> d!1233241 (ruleValid!3346 thiss!25986 rBis!167)))

(declare-fun lt!1488276 () Unit!64951)

(declare-fun choose!25573 (LexerInterface!7221 Rule!15056 List!45993) Unit!64951)

(assert (=> d!1233241 (= lt!1488276 (choose!25573 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1233241 (contains!9431 rules!3843 rBis!167)))

(assert (=> d!1233241 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2360 thiss!25986 rBis!167 rules!3843) lt!1488276)))

(declare-fun bs!596196 () Bool)

(assert (= bs!596196 d!1233241))

(assert (=> bs!596196 m!4768059))

(declare-fun m!4768121 () Bool)

(assert (=> bs!596196 m!4768121))

(assert (=> bs!596196 m!4768049))

(assert (=> b!4178482 d!1233241))

(declare-fun b!4178642 () Bool)

(declare-fun e!2594239 () Bool)

(declare-datatypes ((tuple2!43694 0))(
  ( (tuple2!43695 (_1!24981 List!45991) (_2!24981 List!45991)) )
))
(declare-fun findLongestMatchInner!1583 (Regex!12533 List!45991 Int List!45991 List!45991 Int) tuple2!43694)

(assert (=> b!4178642 (= e!2594239 (matchR!6272 (regex!7628 rBis!167) (_1!24981 (findLongestMatchInner!1583 (regex!7628 rBis!167) Nil!45867 (size!33682 Nil!45867) input!3342 input!3342 (size!33682 input!3342)))))))

(declare-fun d!1233243 () Bool)

(declare-fun e!2594236 () Bool)

(assert (=> d!1233243 e!2594236))

(declare-fun res!1713380 () Bool)

(assert (=> d!1233243 (=> res!1713380 e!2594236)))

(declare-fun lt!1488318 () Option!9824)

(assert (=> d!1233243 (= res!1713380 (isEmpty!27139 lt!1488318))))

(declare-fun e!2594237 () Option!9824)

(assert (=> d!1233243 (= lt!1488318 e!2594237)))

(declare-fun c!713646 () Bool)

(declare-fun lt!1488316 () tuple2!43694)

(declare-fun isEmpty!27141 (List!45991) Bool)

(assert (=> d!1233243 (= c!713646 (isEmpty!27141 (_1!24981 lt!1488316)))))

(declare-fun findLongestMatch!1496 (Regex!12533 List!45991) tuple2!43694)

(assert (=> d!1233243 (= lt!1488316 (findLongestMatch!1496 (regex!7628 rBis!167) input!3342))))

(assert (=> d!1233243 (ruleValid!3346 thiss!25986 rBis!167)))

(assert (=> d!1233243 (= (maxPrefixOneRule!3232 thiss!25986 rBis!167 input!3342) lt!1488318)))

(declare-fun b!4178643 () Bool)

(declare-fun res!1713383 () Bool)

(declare-fun e!2594238 () Bool)

(assert (=> b!4178643 (=> (not res!1713383) (not e!2594238))))

(assert (=> b!4178643 (= res!1713383 (< (size!33682 (_2!24979 (get!14907 lt!1488318))) (size!33682 input!3342)))))

(declare-fun b!4178644 () Bool)

(declare-fun res!1713378 () Bool)

(assert (=> b!4178644 (=> (not res!1713378) (not e!2594238))))

(assert (=> b!4178644 (= res!1713378 (= (++!11706 (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488318)))) (_2!24979 (get!14907 lt!1488318))) input!3342))))

(declare-fun b!4178645 () Bool)

(declare-fun res!1713381 () Bool)

(assert (=> b!4178645 (=> (not res!1713381) (not e!2594238))))

(assert (=> b!4178645 (= res!1713381 (= (rule!10686 (_1!24979 (get!14907 lt!1488318))) rBis!167))))

(declare-fun b!4178646 () Bool)

(assert (=> b!4178646 (= e!2594237 None!9823)))

(declare-fun b!4178647 () Bool)

(declare-fun res!1713379 () Bool)

(assert (=> b!4178647 (=> (not res!1713379) (not e!2594238))))

(assert (=> b!4178647 (= res!1713379 (= (value!237930 (_1!24979 (get!14907 lt!1488318))) (apply!10593 (transformation!7628 (rule!10686 (_1!24979 (get!14907 lt!1488318)))) (seqFromList!5653 (originalCharacters!8016 (_1!24979 (get!14907 lt!1488318)))))))))

(declare-fun b!4178648 () Bool)

(assert (=> b!4178648 (= e!2594237 (Some!9823 (tuple2!43691 (Token!13971 (apply!10593 (transformation!7628 rBis!167) (seqFromList!5653 (_1!24981 lt!1488316))) rBis!167 (size!33684 (seqFromList!5653 (_1!24981 lt!1488316))) (_1!24981 lt!1488316)) (_2!24981 lt!1488316))))))

(declare-fun lt!1488314 () Unit!64951)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1556 (Regex!12533 List!45991) Unit!64951)

(assert (=> b!4178648 (= lt!1488314 (longestMatchIsAcceptedByMatchOrIsEmpty!1556 (regex!7628 rBis!167) input!3342))))

(declare-fun res!1713382 () Bool)

(assert (=> b!4178648 (= res!1713382 (isEmpty!27141 (_1!24981 (findLongestMatchInner!1583 (regex!7628 rBis!167) Nil!45867 (size!33682 Nil!45867) input!3342 input!3342 (size!33682 input!3342)))))))

(assert (=> b!4178648 (=> res!1713382 e!2594239)))

(assert (=> b!4178648 e!2594239))

(declare-fun lt!1488315 () Unit!64951)

(assert (=> b!4178648 (= lt!1488315 lt!1488314)))

(declare-fun lt!1488317 () Unit!64951)

(assert (=> b!4178648 (= lt!1488317 (lemmaSemiInverse!2394 (transformation!7628 rBis!167) (seqFromList!5653 (_1!24981 lt!1488316))))))

(declare-fun b!4178649 () Bool)

(assert (=> b!4178649 (= e!2594238 (= (size!33683 (_1!24979 (get!14907 lt!1488318))) (size!33682 (originalCharacters!8016 (_1!24979 (get!14907 lt!1488318))))))))

(declare-fun b!4178650 () Bool)

(assert (=> b!4178650 (= e!2594236 e!2594238)))

(declare-fun res!1713384 () Bool)

(assert (=> b!4178650 (=> (not res!1713384) (not e!2594238))))

(assert (=> b!4178650 (= res!1713384 (matchR!6272 (regex!7628 rBis!167) (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488318))))))))

(assert (= (and d!1233243 c!713646) b!4178646))

(assert (= (and d!1233243 (not c!713646)) b!4178648))

(assert (= (and b!4178648 (not res!1713382)) b!4178642))

(assert (= (and d!1233243 (not res!1713380)) b!4178650))

(assert (= (and b!4178650 res!1713384) b!4178644))

(assert (= (and b!4178644 res!1713378) b!4178643))

(assert (= (and b!4178643 res!1713383) b!4178645))

(assert (= (and b!4178645 res!1713381) b!4178647))

(assert (= (and b!4178647 res!1713379) b!4178649))

(declare-fun m!4768191 () Bool)

(assert (=> b!4178647 m!4768191))

(declare-fun m!4768193 () Bool)

(assert (=> b!4178647 m!4768193))

(assert (=> b!4178647 m!4768193))

(declare-fun m!4768195 () Bool)

(assert (=> b!4178647 m!4768195))

(assert (=> b!4178643 m!4768191))

(declare-fun m!4768197 () Bool)

(assert (=> b!4178643 m!4768197))

(assert (=> b!4178643 m!4768067))

(assert (=> b!4178649 m!4768191))

(declare-fun m!4768199 () Bool)

(assert (=> b!4178649 m!4768199))

(assert (=> b!4178650 m!4768191))

(declare-fun m!4768201 () Bool)

(assert (=> b!4178650 m!4768201))

(assert (=> b!4178650 m!4768201))

(declare-fun m!4768203 () Bool)

(assert (=> b!4178650 m!4768203))

(assert (=> b!4178650 m!4768203))

(declare-fun m!4768205 () Bool)

(assert (=> b!4178650 m!4768205))

(declare-fun m!4768207 () Bool)

(assert (=> b!4178648 m!4768207))

(declare-fun m!4768209 () Bool)

(assert (=> b!4178648 m!4768209))

(assert (=> b!4178648 m!4768207))

(declare-fun m!4768211 () Bool)

(assert (=> b!4178648 m!4768211))

(assert (=> b!4178648 m!4768067))

(declare-fun m!4768213 () Bool)

(assert (=> b!4178648 m!4768213))

(assert (=> b!4178648 m!4768207))

(declare-fun m!4768215 () Bool)

(assert (=> b!4178648 m!4768215))

(assert (=> b!4178648 m!4768067))

(declare-fun m!4768217 () Bool)

(assert (=> b!4178648 m!4768217))

(assert (=> b!4178648 m!4768215))

(assert (=> b!4178648 m!4768207))

(declare-fun m!4768219 () Bool)

(assert (=> b!4178648 m!4768219))

(declare-fun m!4768221 () Bool)

(assert (=> b!4178648 m!4768221))

(assert (=> b!4178644 m!4768191))

(assert (=> b!4178644 m!4768201))

(assert (=> b!4178644 m!4768201))

(assert (=> b!4178644 m!4768203))

(assert (=> b!4178644 m!4768203))

(declare-fun m!4768223 () Bool)

(assert (=> b!4178644 m!4768223))

(assert (=> b!4178642 m!4768215))

(assert (=> b!4178642 m!4768067))

(assert (=> b!4178642 m!4768215))

(assert (=> b!4178642 m!4768067))

(assert (=> b!4178642 m!4768217))

(declare-fun m!4768225 () Bool)

(assert (=> b!4178642 m!4768225))

(assert (=> b!4178645 m!4768191))

(declare-fun m!4768227 () Bool)

(assert (=> d!1233243 m!4768227))

(declare-fun m!4768229 () Bool)

(assert (=> d!1233243 m!4768229))

(declare-fun m!4768231 () Bool)

(assert (=> d!1233243 m!4768231))

(assert (=> d!1233243 m!4768059))

(assert (=> b!4178482 d!1233243))

(declare-fun d!1233263 () Bool)

(assert (=> d!1233263 (= (isEmpty!27139 lt!1488251) (not ((_ is Some!9823) lt!1488251)))))

(assert (=> b!4178482 d!1233263))

(declare-fun d!1233265 () Bool)

(assert (=> d!1233265 (<= (size!33682 pBis!107) (size!33682 input!3342))))

(declare-fun lt!1488336 () Unit!64951)

(declare-fun choose!25575 (List!45991 List!45991) Unit!64951)

(assert (=> d!1233265 (= lt!1488336 (choose!25575 pBis!107 input!3342))))

(assert (=> d!1233265 (isPrefix!4485 pBis!107 input!3342)))

(assert (=> d!1233265 (= (lemmaIsPrefixThenSmallerEqSize!517 pBis!107 input!3342) lt!1488336)))

(declare-fun bs!596199 () Bool)

(assert (= bs!596199 d!1233265))

(assert (=> bs!596199 m!4768063))

(assert (=> bs!596199 m!4768067))

(declare-fun m!4768255 () Bool)

(assert (=> bs!596199 m!4768255))

(assert (=> bs!596199 m!4768039))

(assert (=> b!4178482 d!1233265))

(declare-fun d!1233267 () Bool)

(declare-fun lt!1488337 () Int)

(assert (=> d!1233267 (>= lt!1488337 0)))

(declare-fun e!2594249 () Int)

(assert (=> d!1233267 (= lt!1488337 e!2594249)))

(declare-fun c!713650 () Bool)

(assert (=> d!1233267 (= c!713650 ((_ is Nil!45867) input!3342))))

(assert (=> d!1233267 (= (size!33682 input!3342) lt!1488337)))

(declare-fun b!4178678 () Bool)

(assert (=> b!4178678 (= e!2594249 0)))

(declare-fun b!4178679 () Bool)

(assert (=> b!4178679 (= e!2594249 (+ 1 (size!33682 (t!344848 input!3342))))))

(assert (= (and d!1233267 c!713650) b!4178678))

(assert (= (and d!1233267 (not c!713650)) b!4178679))

(declare-fun m!4768263 () Bool)

(assert (=> b!4178679 m!4768263))

(assert (=> b!4178482 d!1233267))

(declare-fun d!1233271 () Bool)

(assert (=> d!1233271 (= (isEmpty!27138 rules!3843) ((_ is Nil!45869) rules!3843))))

(assert (=> b!4178473 d!1233271))

(declare-fun d!1233273 () Bool)

(assert (=> d!1233273 (= (inv!60387 (tag!8492 (h!51289 rules!3843))) (= (mod (str.len (value!237929 (tag!8492 (h!51289 rules!3843)))) 2) 0))))

(assert (=> b!4178484 d!1233273))

(declare-fun d!1233275 () Bool)

(declare-fun res!1713426 () Bool)

(declare-fun e!2594264 () Bool)

(assert (=> d!1233275 (=> (not res!1713426) (not e!2594264))))

(declare-fun semiInverseModEq!3300 (Int Int) Bool)

(assert (=> d!1233275 (= res!1713426 (semiInverseModEq!3300 (toChars!10171 (transformation!7628 (h!51289 rules!3843))) (toValue!10312 (transformation!7628 (h!51289 rules!3843)))))))

(assert (=> d!1233275 (= (inv!60389 (transformation!7628 (h!51289 rules!3843))) e!2594264)))

(declare-fun b!4178700 () Bool)

(declare-fun equivClasses!3199 (Int Int) Bool)

(assert (=> b!4178700 (= e!2594264 (equivClasses!3199 (toChars!10171 (transformation!7628 (h!51289 rules!3843))) (toValue!10312 (transformation!7628 (h!51289 rules!3843)))))))

(assert (= (and d!1233275 res!1713426) b!4178700))

(declare-fun m!4768281 () Bool)

(assert (=> d!1233275 m!4768281))

(declare-fun m!4768283 () Bool)

(assert (=> b!4178700 m!4768283))

(assert (=> b!4178484 d!1233275))

(declare-fun d!1233281 () Bool)

(declare-fun lt!1488341 () Bool)

(assert (=> d!1233281 (= lt!1488341 (select (content!7122 rules!3843) rBis!167))))

(declare-fun e!2594266 () Bool)

(assert (=> d!1233281 (= lt!1488341 e!2594266)))

(declare-fun res!1713427 () Bool)

(assert (=> d!1233281 (=> (not res!1713427) (not e!2594266))))

(assert (=> d!1233281 (= res!1713427 ((_ is Cons!45869) rules!3843))))

(assert (=> d!1233281 (= (contains!9431 rules!3843 rBis!167) lt!1488341)))

(declare-fun b!4178701 () Bool)

(declare-fun e!2594265 () Bool)

(assert (=> b!4178701 (= e!2594266 e!2594265)))

(declare-fun res!1713428 () Bool)

(assert (=> b!4178701 (=> res!1713428 e!2594265)))

(assert (=> b!4178701 (= res!1713428 (= (h!51289 rules!3843) rBis!167))))

(declare-fun b!4178702 () Bool)

(assert (=> b!4178702 (= e!2594265 (contains!9431 (t!344850 rules!3843) rBis!167))))

(assert (= (and d!1233281 res!1713427) b!4178701))

(assert (= (and b!4178701 (not res!1713428)) b!4178702))

(assert (=> d!1233281 m!4768103))

(declare-fun m!4768287 () Bool)

(assert (=> d!1233281 m!4768287))

(declare-fun m!4768289 () Bool)

(assert (=> b!4178702 m!4768289))

(assert (=> b!4178494 d!1233281))

(declare-fun b!4178755 () Bool)

(declare-fun e!2594296 () Bool)

(assert (=> b!4178755 (= e!2594296 (nullable!4391 (regex!7628 r!4142)))))

(declare-fun b!4178756 () Bool)

(declare-fun e!2594300 () Bool)

(declare-fun lt!1488355 () Bool)

(assert (=> b!4178756 (= e!2594300 (not lt!1488355))))

(declare-fun b!4178757 () Bool)

(declare-fun res!1713462 () Bool)

(declare-fun e!2594298 () Bool)

(assert (=> b!4178757 (=> res!1713462 e!2594298)))

(declare-fun e!2594301 () Bool)

(assert (=> b!4178757 (= res!1713462 e!2594301)))

(declare-fun res!1713458 () Bool)

(assert (=> b!4178757 (=> (not res!1713458) (not e!2594301))))

(assert (=> b!4178757 (= res!1713458 lt!1488355)))

(declare-fun d!1233287 () Bool)

(declare-fun e!2594297 () Bool)

(assert (=> d!1233287 e!2594297))

(declare-fun c!713661 () Bool)

(assert (=> d!1233287 (= c!713661 ((_ is EmptyExpr!12533) (regex!7628 r!4142)))))

(assert (=> d!1233287 (= lt!1488355 e!2594296)))

(declare-fun c!713663 () Bool)

(assert (=> d!1233287 (= c!713663 (isEmpty!27141 p!2959))))

(assert (=> d!1233287 (validRegex!5650 (regex!7628 r!4142))))

(assert (=> d!1233287 (= (matchR!6272 (regex!7628 r!4142) p!2959) lt!1488355)))

(declare-fun b!4178758 () Bool)

(declare-fun e!2594299 () Bool)

(assert (=> b!4178758 (= e!2594298 e!2594299)))

(declare-fun res!1713463 () Bool)

(assert (=> b!4178758 (=> (not res!1713463) (not e!2594299))))

(assert (=> b!4178758 (= res!1713463 (not lt!1488355))))

(declare-fun b!4178759 () Bool)

(declare-fun res!1713456 () Bool)

(assert (=> b!4178759 (=> (not res!1713456) (not e!2594301))))

(declare-fun call!291512 () Bool)

(assert (=> b!4178759 (= res!1713456 (not call!291512))))

(declare-fun bm!291507 () Bool)

(assert (=> bm!291507 (= call!291512 (isEmpty!27141 p!2959))))

(declare-fun b!4178760 () Bool)

(declare-fun e!2594295 () Bool)

(declare-fun head!8868 (List!45991) C!25256)

(assert (=> b!4178760 (= e!2594295 (not (= (head!8868 p!2959) (c!713619 (regex!7628 r!4142)))))))

(declare-fun b!4178761 () Bool)

(declare-fun res!1713461 () Bool)

(assert (=> b!4178761 (=> res!1713461 e!2594298)))

(assert (=> b!4178761 (= res!1713461 (not ((_ is ElementMatch!12533) (regex!7628 r!4142))))))

(assert (=> b!4178761 (= e!2594300 e!2594298)))

(declare-fun b!4178762 () Bool)

(assert (=> b!4178762 (= e!2594301 (= (head!8868 p!2959) (c!713619 (regex!7628 r!4142))))))

(declare-fun b!4178763 () Bool)

(declare-fun derivativeStep!3781 (Regex!12533 C!25256) Regex!12533)

(declare-fun tail!6715 (List!45991) List!45991)

(assert (=> b!4178763 (= e!2594296 (matchR!6272 (derivativeStep!3781 (regex!7628 r!4142) (head!8868 p!2959)) (tail!6715 p!2959)))))

(declare-fun b!4178764 () Bool)

(assert (=> b!4178764 (= e!2594297 e!2594300)))

(declare-fun c!713662 () Bool)

(assert (=> b!4178764 (= c!713662 ((_ is EmptyLang!12533) (regex!7628 r!4142)))))

(declare-fun b!4178765 () Bool)

(assert (=> b!4178765 (= e!2594299 e!2594295)))

(declare-fun res!1713460 () Bool)

(assert (=> b!4178765 (=> res!1713460 e!2594295)))

(assert (=> b!4178765 (= res!1713460 call!291512)))

(declare-fun b!4178766 () Bool)

(declare-fun res!1713457 () Bool)

(assert (=> b!4178766 (=> (not res!1713457) (not e!2594301))))

(assert (=> b!4178766 (= res!1713457 (isEmpty!27141 (tail!6715 p!2959)))))

(declare-fun b!4178767 () Bool)

(assert (=> b!4178767 (= e!2594297 (= lt!1488355 call!291512))))

(declare-fun b!4178768 () Bool)

(declare-fun res!1713459 () Bool)

(assert (=> b!4178768 (=> res!1713459 e!2594295)))

(assert (=> b!4178768 (= res!1713459 (not (isEmpty!27141 (tail!6715 p!2959))))))

(assert (= (and d!1233287 c!713663) b!4178755))

(assert (= (and d!1233287 (not c!713663)) b!4178763))

(assert (= (and d!1233287 c!713661) b!4178767))

(assert (= (and d!1233287 (not c!713661)) b!4178764))

(assert (= (and b!4178764 c!713662) b!4178756))

(assert (= (and b!4178764 (not c!713662)) b!4178761))

(assert (= (and b!4178761 (not res!1713461)) b!4178757))

(assert (= (and b!4178757 res!1713458) b!4178759))

(assert (= (and b!4178759 res!1713456) b!4178766))

(assert (= (and b!4178766 res!1713457) b!4178762))

(assert (= (and b!4178757 (not res!1713462)) b!4178758))

(assert (= (and b!4178758 res!1713463) b!4178765))

(assert (= (and b!4178765 (not res!1713460)) b!4178768))

(assert (= (and b!4178768 (not res!1713459)) b!4178760))

(assert (= (or b!4178767 b!4178759 b!4178765) bm!291507))

(declare-fun m!4768323 () Bool)

(assert (=> b!4178760 m!4768323))

(declare-fun m!4768325 () Bool)

(assert (=> b!4178755 m!4768325))

(declare-fun m!4768327 () Bool)

(assert (=> bm!291507 m!4768327))

(declare-fun m!4768329 () Bool)

(assert (=> b!4178766 m!4768329))

(assert (=> b!4178766 m!4768329))

(declare-fun m!4768331 () Bool)

(assert (=> b!4178766 m!4768331))

(assert (=> b!4178768 m!4768329))

(assert (=> b!4178768 m!4768329))

(assert (=> b!4178768 m!4768331))

(assert (=> b!4178762 m!4768323))

(assert (=> d!1233287 m!4768327))

(assert (=> d!1233287 m!4768041))

(assert (=> b!4178763 m!4768323))

(assert (=> b!4178763 m!4768323))

(declare-fun m!4768333 () Bool)

(assert (=> b!4178763 m!4768333))

(assert (=> b!4178763 m!4768329))

(assert (=> b!4178763 m!4768333))

(assert (=> b!4178763 m!4768329))

(declare-fun m!4768335 () Bool)

(assert (=> b!4178763 m!4768335))

(assert (=> b!4178485 d!1233287))

(declare-fun d!1233305 () Bool)

(declare-fun res!1713471 () Bool)

(declare-fun e!2594307 () Bool)

(assert (=> d!1233305 (=> (not res!1713471) (not e!2594307))))

(assert (=> d!1233305 (= res!1713471 (validRegex!5650 (regex!7628 rBis!167)))))

(assert (=> d!1233305 (= (ruleValid!3346 thiss!25986 rBis!167) e!2594307)))

(declare-fun b!4178776 () Bool)

(declare-fun res!1713472 () Bool)

(assert (=> b!4178776 (=> (not res!1713472) (not e!2594307))))

(assert (=> b!4178776 (= res!1713472 (not (nullable!4391 (regex!7628 rBis!167))))))

(declare-fun b!4178777 () Bool)

(assert (=> b!4178777 (= e!2594307 (not (= (tag!8492 rBis!167) (String!53157 ""))))))

(assert (= (and d!1233305 res!1713471) b!4178776))

(assert (= (and b!4178776 res!1713472) b!4178777))

(declare-fun m!4768341 () Bool)

(assert (=> d!1233305 m!4768341))

(declare-fun m!4768343 () Bool)

(assert (=> b!4178776 m!4768343))

(assert (=> b!4178474 d!1233305))

(declare-fun d!1233309 () Bool)

(declare-fun lt!1488363 () Int)

(assert (=> d!1233309 (= lt!1488363 (size!33682 (list!16567 lt!1488264)))))

(declare-fun size!33686 (Conc!13839) Int)

(assert (=> d!1233309 (= lt!1488363 (size!33686 (c!713618 lt!1488264)))))

(assert (=> d!1233309 (= (size!33684 lt!1488264) lt!1488363)))

(declare-fun bs!596203 () Bool)

(assert (= bs!596203 d!1233309))

(assert (=> bs!596203 m!4768093))

(assert (=> bs!596203 m!4768093))

(declare-fun m!4768351 () Bool)

(assert (=> bs!596203 m!4768351))

(declare-fun m!4768353 () Bool)

(assert (=> bs!596203 m!4768353))

(assert (=> b!4178476 d!1233309))

(declare-fun d!1233317 () Bool)

(declare-fun dynLambda!19659 (Int BalanceConc!27272) TokenValue!7858)

(assert (=> d!1233317 (= (apply!10593 (transformation!7628 r!4142) lt!1488249) (dynLambda!19659 (toValue!10312 (transformation!7628 r!4142)) lt!1488249))))

(declare-fun b_lambda!122713 () Bool)

(assert (=> (not b_lambda!122713) (not d!1233317)))

(declare-fun t!344858 () Bool)

(declare-fun tb!250081 () Bool)

(assert (=> (and b!4178491 (= (toValue!10312 (transformation!7628 rBis!167)) (toValue!10312 (transformation!7628 r!4142))) t!344858) tb!250081))

(declare-fun result!304716 () Bool)

(declare-fun inv!21 (TokenValue!7858) Bool)

(assert (=> tb!250081 (= result!304716 (inv!21 (dynLambda!19659 (toValue!10312 (transformation!7628 r!4142)) lt!1488249)))))

(declare-fun m!4768369 () Bool)

(assert (=> tb!250081 m!4768369))

(assert (=> d!1233317 t!344858))

(declare-fun b_and!326703 () Bool)

(assert (= b_and!326685 (and (=> t!344858 result!304716) b_and!326703)))

(declare-fun t!344860 () Bool)

(declare-fun tb!250083 () Bool)

(assert (=> (and b!4178493 (= (toValue!10312 (transformation!7628 r!4142)) (toValue!10312 (transformation!7628 r!4142))) t!344860) tb!250083))

(declare-fun result!304720 () Bool)

(assert (= result!304720 result!304716))

(assert (=> d!1233317 t!344860))

(declare-fun b_and!326705 () Bool)

(assert (= b_and!326689 (and (=> t!344860 result!304720) b_and!326705)))

(declare-fun t!344862 () Bool)

(declare-fun tb!250085 () Bool)

(assert (=> (and b!4178496 (= (toValue!10312 (transformation!7628 (h!51289 rules!3843))) (toValue!10312 (transformation!7628 r!4142))) t!344862) tb!250085))

(declare-fun result!304722 () Bool)

(assert (= result!304722 result!304716))

(assert (=> d!1233317 t!344862))

(declare-fun b_and!326707 () Bool)

(assert (= b_and!326693 (and (=> t!344862 result!304722) b_and!326707)))

(declare-fun m!4768371 () Bool)

(assert (=> d!1233317 m!4768371))

(assert (=> b!4178475 d!1233317))

(declare-fun d!1233325 () Bool)

(declare-fun lt!1488369 () List!45991)

(assert (=> d!1233325 (= (++!11706 p!2959 lt!1488369) input!3342)))

(declare-fun e!2594334 () List!45991)

(assert (=> d!1233325 (= lt!1488369 e!2594334)))

(declare-fun c!713670 () Bool)

(assert (=> d!1233325 (= c!713670 ((_ is Cons!45867) p!2959))))

(assert (=> d!1233325 (>= (size!33682 input!3342) (size!33682 p!2959))))

(assert (=> d!1233325 (= (getSuffix!2780 input!3342 p!2959) lt!1488369)))

(declare-fun b!4178811 () Bool)

(assert (=> b!4178811 (= e!2594334 (getSuffix!2780 (tail!6715 input!3342) (t!344848 p!2959)))))

(declare-fun b!4178812 () Bool)

(assert (=> b!4178812 (= e!2594334 input!3342)))

(assert (= (and d!1233325 c!713670) b!4178811))

(assert (= (and d!1233325 (not c!713670)) b!4178812))

(declare-fun m!4768375 () Bool)

(assert (=> d!1233325 m!4768375))

(assert (=> d!1233325 m!4768067))

(assert (=> d!1233325 m!4768037))

(declare-fun m!4768377 () Bool)

(assert (=> b!4178811 m!4768377))

(assert (=> b!4178811 m!4768377))

(declare-fun m!4768379 () Bool)

(assert (=> b!4178811 m!4768379))

(assert (=> b!4178475 d!1233325))

(declare-fun b!4178833 () Bool)

(declare-fun res!1713508 () Bool)

(declare-fun e!2594351 () Bool)

(assert (=> b!4178833 (=> (not res!1713508) (not e!2594351))))

(assert (=> b!4178833 (= res!1713508 (= (head!8868 input!3342) (head!8868 input!3342)))))

(declare-fun b!4178832 () Bool)

(declare-fun e!2594349 () Bool)

(assert (=> b!4178832 (= e!2594349 e!2594351)))

(declare-fun res!1713506 () Bool)

(assert (=> b!4178832 (=> (not res!1713506) (not e!2594351))))

(assert (=> b!4178832 (= res!1713506 (not ((_ is Nil!45867) input!3342)))))

(declare-fun b!4178835 () Bool)

(declare-fun e!2594350 () Bool)

(assert (=> b!4178835 (= e!2594350 (>= (size!33682 input!3342) (size!33682 input!3342)))))

(declare-fun d!1233329 () Bool)

(assert (=> d!1233329 e!2594350))

(declare-fun res!1713507 () Bool)

(assert (=> d!1233329 (=> res!1713507 e!2594350)))

(declare-fun lt!1488373 () Bool)

(assert (=> d!1233329 (= res!1713507 (not lt!1488373))))

(assert (=> d!1233329 (= lt!1488373 e!2594349)))

(declare-fun res!1713505 () Bool)

(assert (=> d!1233329 (=> res!1713505 e!2594349)))

(assert (=> d!1233329 (= res!1713505 ((_ is Nil!45867) input!3342))))

(assert (=> d!1233329 (= (isPrefix!4485 input!3342 input!3342) lt!1488373)))

(declare-fun b!4178834 () Bool)

(assert (=> b!4178834 (= e!2594351 (isPrefix!4485 (tail!6715 input!3342) (tail!6715 input!3342)))))

(assert (= (and d!1233329 (not res!1713505)) b!4178832))

(assert (= (and b!4178832 res!1713506) b!4178833))

(assert (= (and b!4178833 res!1713508) b!4178834))

(assert (= (and d!1233329 (not res!1713507)) b!4178835))

(declare-fun m!4768389 () Bool)

(assert (=> b!4178833 m!4768389))

(assert (=> b!4178833 m!4768389))

(assert (=> b!4178835 m!4768067))

(assert (=> b!4178835 m!4768067))

(assert (=> b!4178834 m!4768377))

(assert (=> b!4178834 m!4768377))

(assert (=> b!4178834 m!4768377))

(assert (=> b!4178834 m!4768377))

(declare-fun m!4768391 () Bool)

(assert (=> b!4178834 m!4768391))

(assert (=> b!4178475 d!1233329))

(declare-fun d!1233335 () Bool)

(assert (=> d!1233335 (isPrefix!4485 input!3342 input!3342)))

(declare-fun lt!1488378 () Unit!64951)

(declare-fun choose!25577 (List!45991 List!45991) Unit!64951)

(assert (=> d!1233335 (= lt!1488378 (choose!25577 input!3342 input!3342))))

(assert (=> d!1233335 (= (lemmaIsPrefixRefl!2914 input!3342 input!3342) lt!1488378)))

(declare-fun bs!596205 () Bool)

(assert (= bs!596205 d!1233335))

(assert (=> bs!596205 m!4768025))

(declare-fun m!4768393 () Bool)

(assert (=> bs!596205 m!4768393))

(assert (=> b!4178475 d!1233335))

(declare-fun b!4178840 () Bool)

(declare-fun e!2594357 () Bool)

(assert (=> b!4178840 (= e!2594357 (matchR!6272 (regex!7628 r!4142) (_1!24981 (findLongestMatchInner!1583 (regex!7628 r!4142) Nil!45867 (size!33682 Nil!45867) input!3342 input!3342 (size!33682 input!3342)))))))

(declare-fun d!1233337 () Bool)

(declare-fun e!2594354 () Bool)

(assert (=> d!1233337 e!2594354))

(declare-fun res!1713511 () Bool)

(assert (=> d!1233337 (=> res!1713511 e!2594354)))

(declare-fun lt!1488383 () Option!9824)

(assert (=> d!1233337 (= res!1713511 (isEmpty!27139 lt!1488383))))

(declare-fun e!2594355 () Option!9824)

(assert (=> d!1233337 (= lt!1488383 e!2594355)))

(declare-fun c!713676 () Bool)

(declare-fun lt!1488381 () tuple2!43694)

(assert (=> d!1233337 (= c!713676 (isEmpty!27141 (_1!24981 lt!1488381)))))

(assert (=> d!1233337 (= lt!1488381 (findLongestMatch!1496 (regex!7628 r!4142) input!3342))))

(assert (=> d!1233337 (ruleValid!3346 thiss!25986 r!4142)))

(assert (=> d!1233337 (= (maxPrefixOneRule!3232 thiss!25986 r!4142 input!3342) lt!1488383)))

(declare-fun b!4178841 () Bool)

(declare-fun res!1713514 () Bool)

(declare-fun e!2594356 () Bool)

(assert (=> b!4178841 (=> (not res!1713514) (not e!2594356))))

(assert (=> b!4178841 (= res!1713514 (< (size!33682 (_2!24979 (get!14907 lt!1488383))) (size!33682 input!3342)))))

(declare-fun b!4178842 () Bool)

(declare-fun res!1713509 () Bool)

(assert (=> b!4178842 (=> (not res!1713509) (not e!2594356))))

(assert (=> b!4178842 (= res!1713509 (= (++!11706 (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488383)))) (_2!24979 (get!14907 lt!1488383))) input!3342))))

(declare-fun b!4178843 () Bool)

(declare-fun res!1713512 () Bool)

(assert (=> b!4178843 (=> (not res!1713512) (not e!2594356))))

(assert (=> b!4178843 (= res!1713512 (= (rule!10686 (_1!24979 (get!14907 lt!1488383))) r!4142))))

(declare-fun b!4178844 () Bool)

(assert (=> b!4178844 (= e!2594355 None!9823)))

(declare-fun b!4178845 () Bool)

(declare-fun res!1713510 () Bool)

(assert (=> b!4178845 (=> (not res!1713510) (not e!2594356))))

(assert (=> b!4178845 (= res!1713510 (= (value!237930 (_1!24979 (get!14907 lt!1488383))) (apply!10593 (transformation!7628 (rule!10686 (_1!24979 (get!14907 lt!1488383)))) (seqFromList!5653 (originalCharacters!8016 (_1!24979 (get!14907 lt!1488383)))))))))

(declare-fun b!4178846 () Bool)

(assert (=> b!4178846 (= e!2594355 (Some!9823 (tuple2!43691 (Token!13971 (apply!10593 (transformation!7628 r!4142) (seqFromList!5653 (_1!24981 lt!1488381))) r!4142 (size!33684 (seqFromList!5653 (_1!24981 lt!1488381))) (_1!24981 lt!1488381)) (_2!24981 lt!1488381))))))

(declare-fun lt!1488379 () Unit!64951)

(assert (=> b!4178846 (= lt!1488379 (longestMatchIsAcceptedByMatchOrIsEmpty!1556 (regex!7628 r!4142) input!3342))))

(declare-fun res!1713513 () Bool)

(assert (=> b!4178846 (= res!1713513 (isEmpty!27141 (_1!24981 (findLongestMatchInner!1583 (regex!7628 r!4142) Nil!45867 (size!33682 Nil!45867) input!3342 input!3342 (size!33682 input!3342)))))))

(assert (=> b!4178846 (=> res!1713513 e!2594357)))

(assert (=> b!4178846 e!2594357))

(declare-fun lt!1488380 () Unit!64951)

(assert (=> b!4178846 (= lt!1488380 lt!1488379)))

(declare-fun lt!1488382 () Unit!64951)

(assert (=> b!4178846 (= lt!1488382 (lemmaSemiInverse!2394 (transformation!7628 r!4142) (seqFromList!5653 (_1!24981 lt!1488381))))))

(declare-fun b!4178847 () Bool)

(assert (=> b!4178847 (= e!2594356 (= (size!33683 (_1!24979 (get!14907 lt!1488383))) (size!33682 (originalCharacters!8016 (_1!24979 (get!14907 lt!1488383))))))))

(declare-fun b!4178848 () Bool)

(assert (=> b!4178848 (= e!2594354 e!2594356)))

(declare-fun res!1713515 () Bool)

(assert (=> b!4178848 (=> (not res!1713515) (not e!2594356))))

(assert (=> b!4178848 (= res!1713515 (matchR!6272 (regex!7628 r!4142) (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488383))))))))

(assert (= (and d!1233337 c!713676) b!4178844))

(assert (= (and d!1233337 (not c!713676)) b!4178846))

(assert (= (and b!4178846 (not res!1713513)) b!4178840))

(assert (= (and d!1233337 (not res!1713511)) b!4178848))

(assert (= (and b!4178848 res!1713515) b!4178842))

(assert (= (and b!4178842 res!1713509) b!4178841))

(assert (= (and b!4178841 res!1713514) b!4178843))

(assert (= (and b!4178843 res!1713512) b!4178845))

(assert (= (and b!4178845 res!1713510) b!4178847))

(declare-fun m!4768401 () Bool)

(assert (=> b!4178845 m!4768401))

(declare-fun m!4768403 () Bool)

(assert (=> b!4178845 m!4768403))

(assert (=> b!4178845 m!4768403))

(declare-fun m!4768405 () Bool)

(assert (=> b!4178845 m!4768405))

(assert (=> b!4178841 m!4768401))

(declare-fun m!4768407 () Bool)

(assert (=> b!4178841 m!4768407))

(assert (=> b!4178841 m!4768067))

(assert (=> b!4178847 m!4768401))

(declare-fun m!4768409 () Bool)

(assert (=> b!4178847 m!4768409))

(assert (=> b!4178848 m!4768401))

(declare-fun m!4768411 () Bool)

(assert (=> b!4178848 m!4768411))

(assert (=> b!4178848 m!4768411))

(declare-fun m!4768413 () Bool)

(assert (=> b!4178848 m!4768413))

(assert (=> b!4178848 m!4768413))

(declare-fun m!4768415 () Bool)

(assert (=> b!4178848 m!4768415))

(declare-fun m!4768417 () Bool)

(assert (=> b!4178846 m!4768417))

(declare-fun m!4768419 () Bool)

(assert (=> b!4178846 m!4768419))

(assert (=> b!4178846 m!4768417))

(declare-fun m!4768421 () Bool)

(assert (=> b!4178846 m!4768421))

(assert (=> b!4178846 m!4768067))

(declare-fun m!4768423 () Bool)

(assert (=> b!4178846 m!4768423))

(assert (=> b!4178846 m!4768417))

(assert (=> b!4178846 m!4768215))

(assert (=> b!4178846 m!4768067))

(declare-fun m!4768425 () Bool)

(assert (=> b!4178846 m!4768425))

(assert (=> b!4178846 m!4768215))

(assert (=> b!4178846 m!4768417))

(declare-fun m!4768427 () Bool)

(assert (=> b!4178846 m!4768427))

(declare-fun m!4768429 () Bool)

(assert (=> b!4178846 m!4768429))

(assert (=> b!4178842 m!4768401))

(assert (=> b!4178842 m!4768411))

(assert (=> b!4178842 m!4768411))

(assert (=> b!4178842 m!4768413))

(assert (=> b!4178842 m!4768413))

(declare-fun m!4768431 () Bool)

(assert (=> b!4178842 m!4768431))

(assert (=> b!4178840 m!4768215))

(assert (=> b!4178840 m!4768067))

(assert (=> b!4178840 m!4768215))

(assert (=> b!4178840 m!4768067))

(assert (=> b!4178840 m!4768425))

(declare-fun m!4768433 () Bool)

(assert (=> b!4178840 m!4768433))

(assert (=> b!4178843 m!4768401))

(declare-fun m!4768435 () Bool)

(assert (=> d!1233337 m!4768435))

(declare-fun m!4768437 () Bool)

(assert (=> d!1233337 m!4768437))

(declare-fun m!4768439 () Bool)

(assert (=> d!1233337 m!4768439))

(assert (=> d!1233337 m!4768081))

(assert (=> b!4178475 d!1233337))

(declare-fun d!1233343 () Bool)

(declare-fun lt!1488386 () Int)

(assert (=> d!1233343 (>= lt!1488386 0)))

(declare-fun e!2594362 () Int)

(assert (=> d!1233343 (= lt!1488386 e!2594362)))

(declare-fun c!713678 () Bool)

(assert (=> d!1233343 (= c!713678 ((_ is Nil!45867) p!2959))))

(assert (=> d!1233343 (= (size!33682 p!2959) lt!1488386)))

(declare-fun b!4178855 () Bool)

(assert (=> b!4178855 (= e!2594362 0)))

(declare-fun b!4178856 () Bool)

(assert (=> b!4178856 (= e!2594362 (+ 1 (size!33682 (t!344848 p!2959))))))

(assert (= (and d!1233343 c!713678) b!4178855))

(assert (= (and d!1233343 (not c!713678)) b!4178856))

(declare-fun m!4768441 () Bool)

(assert (=> b!4178856 m!4768441))

(assert (=> b!4178475 d!1233343))

(declare-fun b!4178920 () Bool)

(declare-fun e!2594399 () Bool)

(assert (=> b!4178920 (= e!2594399 true)))

(declare-fun d!1233345 () Bool)

(assert (=> d!1233345 e!2594399))

(assert (= d!1233345 b!4178920))

(declare-fun order!24181 () Int)

(declare-fun order!24183 () Int)

(declare-fun lambda!129307 () Int)

(declare-fun dynLambda!19661 (Int Int) Int)

(declare-fun dynLambda!19662 (Int Int) Int)

(assert (=> b!4178920 (< (dynLambda!19661 order!24181 (toValue!10312 (transformation!7628 r!4142))) (dynLambda!19662 order!24183 lambda!129307))))

(declare-fun order!24185 () Int)

(declare-fun dynLambda!19663 (Int Int) Int)

(assert (=> b!4178920 (< (dynLambda!19663 order!24185 (toChars!10171 (transformation!7628 r!4142))) (dynLambda!19662 order!24183 lambda!129307))))

(declare-fun dynLambda!19664 (Int TokenValue!7858) BalanceConc!27272)

(assert (=> d!1233345 (= (list!16567 (dynLambda!19664 (toChars!10171 (transformation!7628 r!4142)) (dynLambda!19659 (toValue!10312 (transformation!7628 r!4142)) lt!1488249))) (list!16567 lt!1488249))))

(declare-fun lt!1488401 () Unit!64951)

(declare-fun ForallOf!1033 (Int BalanceConc!27272) Unit!64951)

(assert (=> d!1233345 (= lt!1488401 (ForallOf!1033 lambda!129307 lt!1488249))))

(assert (=> d!1233345 (= (lemmaSemiInverse!2394 (transformation!7628 r!4142) lt!1488249) lt!1488401)))

(declare-fun b_lambda!122727 () Bool)

(assert (=> (not b_lambda!122727) (not d!1233345)))

(declare-fun tb!250105 () Bool)

(declare-fun t!344882 () Bool)

(assert (=> (and b!4178491 (= (toChars!10171 (transformation!7628 rBis!167)) (toChars!10171 (transformation!7628 r!4142))) t!344882) tb!250105))

(declare-fun b!4178925 () Bool)

(declare-fun tp!1277061 () Bool)

(declare-fun e!2594402 () Bool)

(declare-fun inv!60392 (Conc!13839) Bool)

(assert (=> b!4178925 (= e!2594402 (and (inv!60392 (c!713618 (dynLambda!19664 (toChars!10171 (transformation!7628 r!4142)) (dynLambda!19659 (toValue!10312 (transformation!7628 r!4142)) lt!1488249)))) tp!1277061))))

(declare-fun result!304750 () Bool)

(declare-fun inv!60393 (BalanceConc!27272) Bool)

(assert (=> tb!250105 (= result!304750 (and (inv!60393 (dynLambda!19664 (toChars!10171 (transformation!7628 r!4142)) (dynLambda!19659 (toValue!10312 (transformation!7628 r!4142)) lt!1488249))) e!2594402))))

(assert (= tb!250105 b!4178925))

(declare-fun m!4768509 () Bool)

(assert (=> b!4178925 m!4768509))

(declare-fun m!4768511 () Bool)

(assert (=> tb!250105 m!4768511))

(assert (=> d!1233345 t!344882))

(declare-fun b_and!326731 () Bool)

(assert (= b_and!326687 (and (=> t!344882 result!304750) b_and!326731)))

(declare-fun t!344884 () Bool)

(declare-fun tb!250107 () Bool)

(assert (=> (and b!4178493 (= (toChars!10171 (transformation!7628 r!4142)) (toChars!10171 (transformation!7628 r!4142))) t!344884) tb!250107))

(declare-fun result!304754 () Bool)

(assert (= result!304754 result!304750))

(assert (=> d!1233345 t!344884))

(declare-fun b_and!326733 () Bool)

(assert (= b_and!326691 (and (=> t!344884 result!304754) b_and!326733)))

(declare-fun tb!250109 () Bool)

(declare-fun t!344886 () Bool)

(assert (=> (and b!4178496 (= (toChars!10171 (transformation!7628 (h!51289 rules!3843))) (toChars!10171 (transformation!7628 r!4142))) t!344886) tb!250109))

(declare-fun result!304756 () Bool)

(assert (= result!304756 result!304750))

(assert (=> d!1233345 t!344886))

(declare-fun b_and!326735 () Bool)

(assert (= b_and!326695 (and (=> t!344886 result!304756) b_and!326735)))

(declare-fun b_lambda!122729 () Bool)

(assert (=> (not b_lambda!122729) (not d!1233345)))

(assert (=> d!1233345 t!344858))

(declare-fun b_and!326737 () Bool)

(assert (= b_and!326703 (and (=> t!344858 result!304716) b_and!326737)))

(assert (=> d!1233345 t!344860))

(declare-fun b_and!326739 () Bool)

(assert (= b_and!326705 (and (=> t!344860 result!304720) b_and!326739)))

(assert (=> d!1233345 t!344862))

(declare-fun b_and!326741 () Bool)

(assert (= b_and!326707 (and (=> t!344862 result!304722) b_and!326741)))

(declare-fun m!4768513 () Bool)

(assert (=> d!1233345 m!4768513))

(declare-fun m!4768515 () Bool)

(assert (=> d!1233345 m!4768515))

(declare-fun m!4768517 () Bool)

(assert (=> d!1233345 m!4768517))

(declare-fun m!4768519 () Bool)

(assert (=> d!1233345 m!4768519))

(assert (=> d!1233345 m!4768371))

(assert (=> d!1233345 m!4768513))

(assert (=> d!1233345 m!4768371))

(assert (=> b!4178475 d!1233345))

(declare-fun d!1233357 () Bool)

(declare-fun fromListB!2583 (List!45991) BalanceConc!27272)

(assert (=> d!1233357 (= (seqFromList!5653 p!2959) (fromListB!2583 p!2959))))

(declare-fun bs!596208 () Bool)

(assert (= bs!596208 d!1233357))

(declare-fun m!4768521 () Bool)

(assert (=> bs!596208 m!4768521))

(assert (=> b!4178475 d!1233357))

(declare-fun b!4178927 () Bool)

(declare-fun res!1713530 () Bool)

(declare-fun e!2594405 () Bool)

(assert (=> b!4178927 (=> (not res!1713530) (not e!2594405))))

(assert (=> b!4178927 (= res!1713530 (= (head!8868 p!2959) (head!8868 input!3342)))))

(declare-fun b!4178926 () Bool)

(declare-fun e!2594403 () Bool)

(assert (=> b!4178926 (= e!2594403 e!2594405)))

(declare-fun res!1713528 () Bool)

(assert (=> b!4178926 (=> (not res!1713528) (not e!2594405))))

(assert (=> b!4178926 (= res!1713528 (not ((_ is Nil!45867) input!3342)))))

(declare-fun b!4178929 () Bool)

(declare-fun e!2594404 () Bool)

(assert (=> b!4178929 (= e!2594404 (>= (size!33682 input!3342) (size!33682 p!2959)))))

(declare-fun d!1233359 () Bool)

(assert (=> d!1233359 e!2594404))

(declare-fun res!1713529 () Bool)

(assert (=> d!1233359 (=> res!1713529 e!2594404)))

(declare-fun lt!1488402 () Bool)

(assert (=> d!1233359 (= res!1713529 (not lt!1488402))))

(assert (=> d!1233359 (= lt!1488402 e!2594403)))

(declare-fun res!1713527 () Bool)

(assert (=> d!1233359 (=> res!1713527 e!2594403)))

(assert (=> d!1233359 (= res!1713527 ((_ is Nil!45867) p!2959))))

(assert (=> d!1233359 (= (isPrefix!4485 p!2959 input!3342) lt!1488402)))

(declare-fun b!4178928 () Bool)

(assert (=> b!4178928 (= e!2594405 (isPrefix!4485 (tail!6715 p!2959) (tail!6715 input!3342)))))

(assert (= (and d!1233359 (not res!1713527)) b!4178926))

(assert (= (and b!4178926 res!1713528) b!4178927))

(assert (= (and b!4178927 res!1713530) b!4178928))

(assert (= (and d!1233359 (not res!1713529)) b!4178929))

(assert (=> b!4178927 m!4768323))

(assert (=> b!4178927 m!4768389))

(assert (=> b!4178929 m!4768067))

(assert (=> b!4178929 m!4768037))

(assert (=> b!4178928 m!4768329))

(assert (=> b!4178928 m!4768377))

(assert (=> b!4178928 m!4768329))

(assert (=> b!4178928 m!4768377))

(declare-fun m!4768523 () Bool)

(assert (=> b!4178928 m!4768523))

(assert (=> b!4178486 d!1233359))

(declare-fun d!1233361 () Bool)

(assert (=> d!1233361 (= (inv!60387 (tag!8492 r!4142)) (= (mod (str.len (value!237929 (tag!8492 r!4142))) 2) 0))))

(assert (=> b!4178488 d!1233361))

(declare-fun d!1233363 () Bool)

(declare-fun res!1713531 () Bool)

(declare-fun e!2594406 () Bool)

(assert (=> d!1233363 (=> (not res!1713531) (not e!2594406))))

(assert (=> d!1233363 (= res!1713531 (semiInverseModEq!3300 (toChars!10171 (transformation!7628 r!4142)) (toValue!10312 (transformation!7628 r!4142))))))

(assert (=> d!1233363 (= (inv!60389 (transformation!7628 r!4142)) e!2594406)))

(declare-fun b!4178930 () Bool)

(assert (=> b!4178930 (= e!2594406 (equivClasses!3199 (toChars!10171 (transformation!7628 r!4142)) (toValue!10312 (transformation!7628 r!4142))))))

(assert (= (and d!1233363 res!1713531) b!4178930))

(declare-fun m!4768525 () Bool)

(assert (=> d!1233363 m!4768525))

(declare-fun m!4768527 () Bool)

(assert (=> b!4178930 m!4768527))

(assert (=> b!4178488 d!1233363))

(declare-fun d!1233365 () Bool)

(declare-fun lt!1488403 () Int)

(assert (=> d!1233365 (>= lt!1488403 0)))

(declare-fun e!2594407 () Int)

(assert (=> d!1233365 (= lt!1488403 e!2594407)))

(declare-fun c!713683 () Bool)

(assert (=> d!1233365 (= c!713683 ((_ is Nil!45867) lt!1488250))))

(assert (=> d!1233365 (= (size!33682 lt!1488250) lt!1488403)))

(declare-fun b!4178931 () Bool)

(assert (=> b!4178931 (= e!2594407 0)))

(declare-fun b!4178932 () Bool)

(assert (=> b!4178932 (= e!2594407 (+ 1 (size!33682 (t!344848 lt!1488250))))))

(assert (= (and d!1233365 c!713683) b!4178931))

(assert (= (and d!1233365 (not c!713683)) b!4178932))

(declare-fun m!4768529 () Bool)

(assert (=> b!4178932 m!4768529))

(assert (=> b!4178487 d!1233365))

(declare-fun d!1233367 () Bool)

(assert (=> d!1233367 (= (inv!60387 (tag!8492 rBis!167)) (= (mod (str.len (value!237929 (tag!8492 rBis!167))) 2) 0))))

(assert (=> b!4178489 d!1233367))

(declare-fun d!1233369 () Bool)

(declare-fun res!1713532 () Bool)

(declare-fun e!2594408 () Bool)

(assert (=> d!1233369 (=> (not res!1713532) (not e!2594408))))

(assert (=> d!1233369 (= res!1713532 (semiInverseModEq!3300 (toChars!10171 (transformation!7628 rBis!167)) (toValue!10312 (transformation!7628 rBis!167))))))

(assert (=> d!1233369 (= (inv!60389 (transformation!7628 rBis!167)) e!2594408)))

(declare-fun b!4178933 () Bool)

(assert (=> b!4178933 (= e!2594408 (equivClasses!3199 (toChars!10171 (transformation!7628 rBis!167)) (toValue!10312 (transformation!7628 rBis!167))))))

(assert (= (and d!1233369 res!1713532) b!4178933))

(declare-fun m!4768531 () Bool)

(assert (=> d!1233369 m!4768531))

(declare-fun m!4768533 () Bool)

(assert (=> b!4178933 m!4768533))

(assert (=> b!4178489 d!1233369))

(declare-fun b!4178943 () Bool)

(declare-fun e!2594413 () List!45991)

(assert (=> b!4178943 (= e!2594413 (Cons!45867 (h!51287 lt!1488250) (++!11706 (t!344848 lt!1488250) (_2!24979 lt!1488263))))))

(declare-fun d!1233371 () Bool)

(declare-fun e!2594414 () Bool)

(assert (=> d!1233371 e!2594414))

(declare-fun res!1713537 () Bool)

(assert (=> d!1233371 (=> (not res!1713537) (not e!2594414))))

(declare-fun lt!1488406 () List!45991)

(declare-fun content!7124 (List!45991) (InoxSet C!25256))

(assert (=> d!1233371 (= res!1713537 (= (content!7124 lt!1488406) ((_ map or) (content!7124 lt!1488250) (content!7124 (_2!24979 lt!1488263)))))))

(assert (=> d!1233371 (= lt!1488406 e!2594413)))

(declare-fun c!713686 () Bool)

(assert (=> d!1233371 (= c!713686 ((_ is Nil!45867) lt!1488250))))

(assert (=> d!1233371 (= (++!11706 lt!1488250 (_2!24979 lt!1488263)) lt!1488406)))

(declare-fun b!4178945 () Bool)

(assert (=> b!4178945 (= e!2594414 (or (not (= (_2!24979 lt!1488263) Nil!45867)) (= lt!1488406 lt!1488250)))))

(declare-fun b!4178942 () Bool)

(assert (=> b!4178942 (= e!2594413 (_2!24979 lt!1488263))))

(declare-fun b!4178944 () Bool)

(declare-fun res!1713538 () Bool)

(assert (=> b!4178944 (=> (not res!1713538) (not e!2594414))))

(assert (=> b!4178944 (= res!1713538 (= (size!33682 lt!1488406) (+ (size!33682 lt!1488250) (size!33682 (_2!24979 lt!1488263)))))))

(assert (= (and d!1233371 c!713686) b!4178942))

(assert (= (and d!1233371 (not c!713686)) b!4178943))

(assert (= (and d!1233371 res!1713537) b!4178944))

(assert (= (and b!4178944 res!1713538) b!4178945))

(declare-fun m!4768535 () Bool)

(assert (=> b!4178943 m!4768535))

(declare-fun m!4768537 () Bool)

(assert (=> d!1233371 m!4768537))

(declare-fun m!4768539 () Bool)

(assert (=> d!1233371 m!4768539))

(declare-fun m!4768541 () Bool)

(assert (=> d!1233371 m!4768541))

(declare-fun m!4768543 () Bool)

(assert (=> b!4178944 m!4768543))

(assert (=> b!4178944 m!4768077))

(declare-fun m!4768545 () Bool)

(assert (=> b!4178944 m!4768545))

(assert (=> b!4178500 d!1233371))

(declare-fun d!1233373 () Bool)

(declare-fun lt!1488409 () BalanceConc!27272)

(assert (=> d!1233373 (= (list!16567 lt!1488409) (originalCharacters!8016 (_1!24979 lt!1488263)))))

(assert (=> d!1233373 (= lt!1488409 (dynLambda!19664 (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263)))) (value!237930 (_1!24979 lt!1488263))))))

(assert (=> d!1233373 (= (charsOf!5069 (_1!24979 lt!1488263)) lt!1488409)))

(declare-fun b_lambda!122731 () Bool)

(assert (=> (not b_lambda!122731) (not d!1233373)))

(declare-fun t!344888 () Bool)

(declare-fun tb!250111 () Bool)

(assert (=> (and b!4178491 (= (toChars!10171 (transformation!7628 rBis!167)) (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263))))) t!344888) tb!250111))

(declare-fun b!4178946 () Bool)

(declare-fun e!2594415 () Bool)

(declare-fun tp!1277062 () Bool)

(assert (=> b!4178946 (= e!2594415 (and (inv!60392 (c!713618 (dynLambda!19664 (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263)))) (value!237930 (_1!24979 lt!1488263))))) tp!1277062))))

(declare-fun result!304758 () Bool)

(assert (=> tb!250111 (= result!304758 (and (inv!60393 (dynLambda!19664 (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263)))) (value!237930 (_1!24979 lt!1488263)))) e!2594415))))

(assert (= tb!250111 b!4178946))

(declare-fun m!4768547 () Bool)

(assert (=> b!4178946 m!4768547))

(declare-fun m!4768549 () Bool)

(assert (=> tb!250111 m!4768549))

(assert (=> d!1233373 t!344888))

(declare-fun b_and!326743 () Bool)

(assert (= b_and!326731 (and (=> t!344888 result!304758) b_and!326743)))

(declare-fun tb!250113 () Bool)

(declare-fun t!344890 () Bool)

(assert (=> (and b!4178493 (= (toChars!10171 (transformation!7628 r!4142)) (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263))))) t!344890) tb!250113))

(declare-fun result!304760 () Bool)

(assert (= result!304760 result!304758))

(assert (=> d!1233373 t!344890))

(declare-fun b_and!326745 () Bool)

(assert (= b_and!326733 (and (=> t!344890 result!304760) b_and!326745)))

(declare-fun tb!250115 () Bool)

(declare-fun t!344892 () Bool)

(assert (=> (and b!4178496 (= (toChars!10171 (transformation!7628 (h!51289 rules!3843))) (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263))))) t!344892) tb!250115))

(declare-fun result!304762 () Bool)

(assert (= result!304762 result!304758))

(assert (=> d!1233373 t!344892))

(declare-fun b_and!326747 () Bool)

(assert (= b_and!326735 (and (=> t!344892 result!304762) b_and!326747)))

(declare-fun m!4768551 () Bool)

(assert (=> d!1233373 m!4768551))

(declare-fun m!4768553 () Bool)

(assert (=> d!1233373 m!4768553))

(assert (=> b!4178500 d!1233373))

(declare-fun b!4178948 () Bool)

(declare-fun res!1713542 () Bool)

(declare-fun e!2594418 () Bool)

(assert (=> b!4178948 (=> (not res!1713542) (not e!2594418))))

(assert (=> b!4178948 (= res!1713542 (= (head!8868 lt!1488250) (head!8868 (++!11706 lt!1488250 (_2!24979 lt!1488263)))))))

(declare-fun b!4178947 () Bool)

(declare-fun e!2594416 () Bool)

(assert (=> b!4178947 (= e!2594416 e!2594418)))

(declare-fun res!1713540 () Bool)

(assert (=> b!4178947 (=> (not res!1713540) (not e!2594418))))

(assert (=> b!4178947 (= res!1713540 (not ((_ is Nil!45867) (++!11706 lt!1488250 (_2!24979 lt!1488263)))))))

(declare-fun b!4178950 () Bool)

(declare-fun e!2594417 () Bool)

(assert (=> b!4178950 (= e!2594417 (>= (size!33682 (++!11706 lt!1488250 (_2!24979 lt!1488263))) (size!33682 lt!1488250)))))

(declare-fun d!1233375 () Bool)

(assert (=> d!1233375 e!2594417))

(declare-fun res!1713541 () Bool)

(assert (=> d!1233375 (=> res!1713541 e!2594417)))

(declare-fun lt!1488410 () Bool)

(assert (=> d!1233375 (= res!1713541 (not lt!1488410))))

(assert (=> d!1233375 (= lt!1488410 e!2594416)))

(declare-fun res!1713539 () Bool)

(assert (=> d!1233375 (=> res!1713539 e!2594416)))

(assert (=> d!1233375 (= res!1713539 ((_ is Nil!45867) lt!1488250))))

(assert (=> d!1233375 (= (isPrefix!4485 lt!1488250 (++!11706 lt!1488250 (_2!24979 lt!1488263))) lt!1488410)))

(declare-fun b!4178949 () Bool)

(assert (=> b!4178949 (= e!2594418 (isPrefix!4485 (tail!6715 lt!1488250) (tail!6715 (++!11706 lt!1488250 (_2!24979 lt!1488263)))))))

(assert (= (and d!1233375 (not res!1713539)) b!4178947))

(assert (= (and b!4178947 res!1713540) b!4178948))

(assert (= (and b!4178948 res!1713542) b!4178949))

(assert (= (and d!1233375 (not res!1713541)) b!4178950))

(declare-fun m!4768555 () Bool)

(assert (=> b!4178948 m!4768555))

(assert (=> b!4178948 m!4768083))

(declare-fun m!4768557 () Bool)

(assert (=> b!4178948 m!4768557))

(assert (=> b!4178950 m!4768083))

(declare-fun m!4768559 () Bool)

(assert (=> b!4178950 m!4768559))

(assert (=> b!4178950 m!4768077))

(declare-fun m!4768561 () Bool)

(assert (=> b!4178949 m!4768561))

(assert (=> b!4178949 m!4768083))

(declare-fun m!4768563 () Bool)

(assert (=> b!4178949 m!4768563))

(assert (=> b!4178949 m!4768561))

(assert (=> b!4178949 m!4768563))

(declare-fun m!4768565 () Bool)

(assert (=> b!4178949 m!4768565))

(assert (=> b!4178500 d!1233375))

(declare-fun d!1233377 () Bool)

(assert (=> d!1233377 (= (get!14907 lt!1488251) (v!40627 lt!1488251))))

(assert (=> b!4178500 d!1233377))

(declare-fun d!1233379 () Bool)

(declare-fun list!16569 (Conc!13839) List!45991)

(assert (=> d!1233379 (= (list!16567 lt!1488264) (list!16569 (c!713618 lt!1488264)))))

(declare-fun bs!596209 () Bool)

(assert (= bs!596209 d!1233379))

(declare-fun m!4768567 () Bool)

(assert (=> bs!596209 m!4768567))

(assert (=> b!4178500 d!1233379))

(declare-fun d!1233381 () Bool)

(assert (=> d!1233381 (isPrefix!4485 lt!1488250 (++!11706 lt!1488250 (_2!24979 lt!1488263)))))

(declare-fun lt!1488413 () Unit!64951)

(declare-fun choose!25579 (List!45991 List!45991) Unit!64951)

(assert (=> d!1233381 (= lt!1488413 (choose!25579 lt!1488250 (_2!24979 lt!1488263)))))

(assert (=> d!1233381 (= (lemmaConcatTwoListThenFirstIsPrefix!2992 lt!1488250 (_2!24979 lt!1488263)) lt!1488413)))

(declare-fun bs!596210 () Bool)

(assert (= bs!596210 d!1233381))

(assert (=> bs!596210 m!4768083))

(assert (=> bs!596210 m!4768083))

(assert (=> bs!596210 m!4768085))

(declare-fun m!4768569 () Bool)

(assert (=> bs!596210 m!4768569))

(assert (=> b!4178500 d!1233381))

(declare-fun d!1233383 () Bool)

(declare-fun res!1713545 () Bool)

(declare-fun e!2594421 () Bool)

(assert (=> d!1233383 (=> (not res!1713545) (not e!2594421))))

(declare-fun rulesValid!2968 (LexerInterface!7221 List!45993) Bool)

(assert (=> d!1233383 (= res!1713545 (rulesValid!2968 thiss!25986 rules!3843))))

(assert (=> d!1233383 (= (rulesInvariant!6434 thiss!25986 rules!3843) e!2594421)))

(declare-fun b!4178953 () Bool)

(declare-datatypes ((List!45995 0))(
  ( (Nil!45871) (Cons!45871 (h!51291 String!53156) (t!344900 List!45995)) )
))
(declare-fun noDuplicateTag!3129 (LexerInterface!7221 List!45993 List!45995) Bool)

(assert (=> b!4178953 (= e!2594421 (noDuplicateTag!3129 thiss!25986 rules!3843 Nil!45871))))

(assert (= (and d!1233383 res!1713545) b!4178953))

(declare-fun m!4768571 () Bool)

(assert (=> d!1233383 m!4768571))

(declare-fun m!4768573 () Bool)

(assert (=> b!4178953 m!4768573))

(assert (=> b!4178499 d!1233383))

(declare-fun d!1233385 () Bool)

(declare-fun res!1713546 () Bool)

(declare-fun e!2594422 () Bool)

(assert (=> d!1233385 (=> (not res!1713546) (not e!2594422))))

(assert (=> d!1233385 (= res!1713546 (validRegex!5650 (regex!7628 r!4142)))))

(assert (=> d!1233385 (= (ruleValid!3346 thiss!25986 r!4142) e!2594422)))

(declare-fun b!4178954 () Bool)

(declare-fun res!1713547 () Bool)

(assert (=> b!4178954 (=> (not res!1713547) (not e!2594422))))

(assert (=> b!4178954 (= res!1713547 (not (nullable!4391 (regex!7628 r!4142))))))

(declare-fun b!4178955 () Bool)

(assert (=> b!4178955 (= e!2594422 (not (= (tag!8492 r!4142) (String!53157 ""))))))

(assert (= (and d!1233385 res!1713546) b!4178954))

(assert (= (and b!4178954 res!1713547) b!4178955))

(assert (=> d!1233385 m!4768041))

(assert (=> b!4178954 m!4768325))

(assert (=> b!4178478 d!1233385))

(declare-fun b!4178974 () Bool)

(declare-fun res!1713566 () Bool)

(declare-fun e!2594431 () Bool)

(assert (=> b!4178974 (=> (not res!1713566) (not e!2594431))))

(declare-fun lt!1488424 () Option!9824)

(assert (=> b!4178974 (= res!1713566 (= (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488424)))) (originalCharacters!8016 (_1!24979 (get!14907 lt!1488424)))))))

(declare-fun b!4178975 () Bool)

(declare-fun e!2594430 () Option!9824)

(declare-fun call!291524 () Option!9824)

(assert (=> b!4178975 (= e!2594430 call!291524)))

(declare-fun b!4178976 () Bool)

(declare-fun res!1713564 () Bool)

(assert (=> b!4178976 (=> (not res!1713564) (not e!2594431))))

(assert (=> b!4178976 (= res!1713564 (< (size!33682 (_2!24979 (get!14907 lt!1488424))) (size!33682 input!3342)))))

(declare-fun d!1233387 () Bool)

(declare-fun e!2594429 () Bool)

(assert (=> d!1233387 e!2594429))

(declare-fun res!1713563 () Bool)

(assert (=> d!1233387 (=> res!1713563 e!2594429)))

(assert (=> d!1233387 (= res!1713563 (isEmpty!27139 lt!1488424))))

(assert (=> d!1233387 (= lt!1488424 e!2594430)))

(declare-fun c!713689 () Bool)

(assert (=> d!1233387 (= c!713689 (and ((_ is Cons!45869) rules!3843) ((_ is Nil!45869) (t!344850 rules!3843))))))

(declare-fun lt!1488427 () Unit!64951)

(declare-fun lt!1488426 () Unit!64951)

(assert (=> d!1233387 (= lt!1488427 lt!1488426)))

(assert (=> d!1233387 (isPrefix!4485 input!3342 input!3342)))

(assert (=> d!1233387 (= lt!1488426 (lemmaIsPrefixRefl!2914 input!3342 input!3342))))

(declare-fun rulesValidInductive!2806 (LexerInterface!7221 List!45993) Bool)

(assert (=> d!1233387 (rulesValidInductive!2806 thiss!25986 rules!3843)))

(assert (=> d!1233387 (= (maxPrefix!4273 thiss!25986 rules!3843 input!3342) lt!1488424)))

(declare-fun b!4178977 () Bool)

(declare-fun res!1713565 () Bool)

(assert (=> b!4178977 (=> (not res!1713565) (not e!2594431))))

(assert (=> b!4178977 (= res!1713565 (= (++!11706 (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488424)))) (_2!24979 (get!14907 lt!1488424))) input!3342))))

(declare-fun b!4178978 () Bool)

(declare-fun res!1713568 () Bool)

(assert (=> b!4178978 (=> (not res!1713568) (not e!2594431))))

(assert (=> b!4178978 (= res!1713568 (= (value!237930 (_1!24979 (get!14907 lt!1488424))) (apply!10593 (transformation!7628 (rule!10686 (_1!24979 (get!14907 lt!1488424)))) (seqFromList!5653 (originalCharacters!8016 (_1!24979 (get!14907 lt!1488424)))))))))

(declare-fun bm!291519 () Bool)

(assert (=> bm!291519 (= call!291524 (maxPrefixOneRule!3232 thiss!25986 (h!51289 rules!3843) input!3342))))

(declare-fun b!4178979 () Bool)

(declare-fun res!1713562 () Bool)

(assert (=> b!4178979 (=> (not res!1713562) (not e!2594431))))

(assert (=> b!4178979 (= res!1713562 (matchR!6272 (regex!7628 (rule!10686 (_1!24979 (get!14907 lt!1488424)))) (list!16567 (charsOf!5069 (_1!24979 (get!14907 lt!1488424))))))))

(declare-fun b!4178980 () Bool)

(declare-fun lt!1488428 () Option!9824)

(declare-fun lt!1488425 () Option!9824)

(assert (=> b!4178980 (= e!2594430 (ite (and ((_ is None!9823) lt!1488428) ((_ is None!9823) lt!1488425)) None!9823 (ite ((_ is None!9823) lt!1488425) lt!1488428 (ite ((_ is None!9823) lt!1488428) lt!1488425 (ite (>= (size!33683 (_1!24979 (v!40627 lt!1488428))) (size!33683 (_1!24979 (v!40627 lt!1488425)))) lt!1488428 lt!1488425)))))))

(assert (=> b!4178980 (= lt!1488428 call!291524)))

(assert (=> b!4178980 (= lt!1488425 (maxPrefix!4273 thiss!25986 (t!344850 rules!3843) input!3342))))

(declare-fun b!4178981 () Bool)

(assert (=> b!4178981 (= e!2594431 (contains!9431 rules!3843 (rule!10686 (_1!24979 (get!14907 lt!1488424)))))))

(declare-fun b!4178982 () Bool)

(assert (=> b!4178982 (= e!2594429 e!2594431)))

(declare-fun res!1713567 () Bool)

(assert (=> b!4178982 (=> (not res!1713567) (not e!2594431))))

(declare-fun isDefined!7326 (Option!9824) Bool)

(assert (=> b!4178982 (= res!1713567 (isDefined!7326 lt!1488424))))

(assert (= (and d!1233387 c!713689) b!4178975))

(assert (= (and d!1233387 (not c!713689)) b!4178980))

(assert (= (or b!4178975 b!4178980) bm!291519))

(assert (= (and d!1233387 (not res!1713563)) b!4178982))

(assert (= (and b!4178982 res!1713567) b!4178974))

(assert (= (and b!4178974 res!1713566) b!4178976))

(assert (= (and b!4178976 res!1713564) b!4178977))

(assert (= (and b!4178977 res!1713565) b!4178978))

(assert (= (and b!4178978 res!1713568) b!4178979))

(assert (= (and b!4178979 res!1713562) b!4178981))

(declare-fun m!4768575 () Bool)

(assert (=> d!1233387 m!4768575))

(assert (=> d!1233387 m!4768025))

(assert (=> d!1233387 m!4768031))

(declare-fun m!4768577 () Bool)

(assert (=> d!1233387 m!4768577))

(declare-fun m!4768579 () Bool)

(assert (=> bm!291519 m!4768579))

(declare-fun m!4768581 () Bool)

(assert (=> b!4178974 m!4768581))

(declare-fun m!4768583 () Bool)

(assert (=> b!4178974 m!4768583))

(assert (=> b!4178974 m!4768583))

(declare-fun m!4768585 () Bool)

(assert (=> b!4178974 m!4768585))

(assert (=> b!4178981 m!4768581))

(declare-fun m!4768587 () Bool)

(assert (=> b!4178981 m!4768587))

(assert (=> b!4178978 m!4768581))

(declare-fun m!4768589 () Bool)

(assert (=> b!4178978 m!4768589))

(assert (=> b!4178978 m!4768589))

(declare-fun m!4768591 () Bool)

(assert (=> b!4178978 m!4768591))

(assert (=> b!4178979 m!4768581))

(assert (=> b!4178979 m!4768583))

(assert (=> b!4178979 m!4768583))

(assert (=> b!4178979 m!4768585))

(assert (=> b!4178979 m!4768585))

(declare-fun m!4768593 () Bool)

(assert (=> b!4178979 m!4768593))

(assert (=> b!4178976 m!4768581))

(declare-fun m!4768595 () Bool)

(assert (=> b!4178976 m!4768595))

(assert (=> b!4178976 m!4768067))

(declare-fun m!4768597 () Bool)

(assert (=> b!4178980 m!4768597))

(declare-fun m!4768599 () Bool)

(assert (=> b!4178982 m!4768599))

(assert (=> b!4178977 m!4768581))

(assert (=> b!4178977 m!4768583))

(assert (=> b!4178977 m!4768583))

(assert (=> b!4178977 m!4768585))

(assert (=> b!4178977 m!4768585))

(declare-fun m!4768601 () Bool)

(assert (=> b!4178977 m!4768601))

(assert (=> b!4178480 d!1233387))

(declare-fun d!1233389 () Bool)

(assert (=> d!1233389 (= pBis!107 lt!1488250)))

(declare-fun lt!1488431 () Unit!64951)

(declare-fun choose!25580 (List!45991 List!45991 List!45991) Unit!64951)

(assert (=> d!1233389 (= lt!1488431 (choose!25580 pBis!107 lt!1488250 input!3342))))

(assert (=> d!1233389 (isPrefix!4485 pBis!107 input!3342)))

(assert (=> d!1233389 (= (lemmaIsPrefixSameLengthThenSameList!993 pBis!107 lt!1488250 input!3342) lt!1488431)))

(declare-fun bs!596211 () Bool)

(assert (= bs!596211 d!1233389))

(declare-fun m!4768603 () Bool)

(assert (=> bs!596211 m!4768603))

(assert (=> bs!596211 m!4768039))

(assert (=> b!4178479 d!1233389))

(declare-fun b!4178984 () Bool)

(declare-fun res!1713572 () Bool)

(declare-fun e!2594434 () Bool)

(assert (=> b!4178984 (=> (not res!1713572) (not e!2594434))))

(assert (=> b!4178984 (= res!1713572 (= (head!8868 pBis!107) (head!8868 input!3342)))))

(declare-fun b!4178983 () Bool)

(declare-fun e!2594432 () Bool)

(assert (=> b!4178983 (= e!2594432 e!2594434)))

(declare-fun res!1713570 () Bool)

(assert (=> b!4178983 (=> (not res!1713570) (not e!2594434))))

(assert (=> b!4178983 (= res!1713570 (not ((_ is Nil!45867) input!3342)))))

(declare-fun b!4178986 () Bool)

(declare-fun e!2594433 () Bool)

(assert (=> b!4178986 (= e!2594433 (>= (size!33682 input!3342) (size!33682 pBis!107)))))

(declare-fun d!1233391 () Bool)

(assert (=> d!1233391 e!2594433))

(declare-fun res!1713571 () Bool)

(assert (=> d!1233391 (=> res!1713571 e!2594433)))

(declare-fun lt!1488432 () Bool)

(assert (=> d!1233391 (= res!1713571 (not lt!1488432))))

(assert (=> d!1233391 (= lt!1488432 e!2594432)))

(declare-fun res!1713569 () Bool)

(assert (=> d!1233391 (=> res!1713569 e!2594432)))

(assert (=> d!1233391 (= res!1713569 ((_ is Nil!45867) pBis!107))))

(assert (=> d!1233391 (= (isPrefix!4485 pBis!107 input!3342) lt!1488432)))

(declare-fun b!4178985 () Bool)

(assert (=> b!4178985 (= e!2594434 (isPrefix!4485 (tail!6715 pBis!107) (tail!6715 input!3342)))))

(assert (= (and d!1233391 (not res!1713569)) b!4178983))

(assert (= (and b!4178983 res!1713570) b!4178984))

(assert (= (and b!4178984 res!1713572) b!4178985))

(assert (= (and d!1233391 (not res!1713571)) b!4178986))

(declare-fun m!4768605 () Bool)

(assert (=> b!4178984 m!4768605))

(assert (=> b!4178984 m!4768389))

(assert (=> b!4178986 m!4768067))

(assert (=> b!4178986 m!4768063))

(declare-fun m!4768607 () Bool)

(assert (=> b!4178985 m!4768607))

(assert (=> b!4178985 m!4768377))

(assert (=> b!4178985 m!4768607))

(assert (=> b!4178985 m!4768377))

(declare-fun m!4768609 () Bool)

(assert (=> b!4178985 m!4768609))

(assert (=> b!4178490 d!1233391))

(declare-fun b!4178991 () Bool)

(declare-fun e!2594437 () Bool)

(declare-fun tp!1277065 () Bool)

(assert (=> b!4178991 (= e!2594437 (and tp_is_empty!22029 tp!1277065))))

(assert (=> b!4178497 (= tp!1277000 e!2594437)))

(assert (= (and b!4178497 ((_ is Cons!45867) (t!344848 input!3342))) b!4178991))

(declare-fun b!4178992 () Bool)

(declare-fun e!2594438 () Bool)

(declare-fun tp!1277066 () Bool)

(assert (=> b!4178992 (= e!2594438 (and tp_is_empty!22029 tp!1277066))))

(assert (=> b!4178477 (= tp!1277003 e!2594438)))

(assert (= (and b!4178477 ((_ is Cons!45867) (t!344848 pBis!107))) b!4178992))

(declare-fun b!4179003 () Bool)

(declare-fun e!2594441 () Bool)

(assert (=> b!4179003 (= e!2594441 tp_is_empty!22029)))

(declare-fun b!4179006 () Bool)

(declare-fun tp!1277077 () Bool)

(declare-fun tp!1277080 () Bool)

(assert (=> b!4179006 (= e!2594441 (and tp!1277077 tp!1277080))))

(assert (=> b!4178488 (= tp!1277009 e!2594441)))

(declare-fun b!4179005 () Bool)

(declare-fun tp!1277081 () Bool)

(assert (=> b!4179005 (= e!2594441 tp!1277081)))

(declare-fun b!4179004 () Bool)

(declare-fun tp!1277078 () Bool)

(declare-fun tp!1277079 () Bool)

(assert (=> b!4179004 (= e!2594441 (and tp!1277078 tp!1277079))))

(assert (= (and b!4178488 ((_ is ElementMatch!12533) (regex!7628 r!4142))) b!4179003))

(assert (= (and b!4178488 ((_ is Concat!20392) (regex!7628 r!4142))) b!4179004))

(assert (= (and b!4178488 ((_ is Star!12533) (regex!7628 r!4142))) b!4179005))

(assert (= (and b!4178488 ((_ is Union!12533) (regex!7628 r!4142))) b!4179006))

(declare-fun b!4179007 () Bool)

(declare-fun e!2594442 () Bool)

(declare-fun tp!1277082 () Bool)

(assert (=> b!4179007 (= e!2594442 (and tp_is_empty!22029 tp!1277082))))

(assert (=> b!4178498 (= tp!1277010 e!2594442)))

(assert (= (and b!4178498 ((_ is Cons!45867) (t!344848 p!2959))) b!4179007))

(declare-fun b!4179008 () Bool)

(declare-fun e!2594443 () Bool)

(assert (=> b!4179008 (= e!2594443 tp_is_empty!22029)))

(declare-fun b!4179011 () Bool)

(declare-fun tp!1277083 () Bool)

(declare-fun tp!1277086 () Bool)

(assert (=> b!4179011 (= e!2594443 (and tp!1277083 tp!1277086))))

(assert (=> b!4178489 (= tp!1277006 e!2594443)))

(declare-fun b!4179010 () Bool)

(declare-fun tp!1277087 () Bool)

(assert (=> b!4179010 (= e!2594443 tp!1277087)))

(declare-fun b!4179009 () Bool)

(declare-fun tp!1277084 () Bool)

(declare-fun tp!1277085 () Bool)

(assert (=> b!4179009 (= e!2594443 (and tp!1277084 tp!1277085))))

(assert (= (and b!4178489 ((_ is ElementMatch!12533) (regex!7628 rBis!167))) b!4179008))

(assert (= (and b!4178489 ((_ is Concat!20392) (regex!7628 rBis!167))) b!4179009))

(assert (= (and b!4178489 ((_ is Star!12533) (regex!7628 rBis!167))) b!4179010))

(assert (= (and b!4178489 ((_ is Union!12533) (regex!7628 rBis!167))) b!4179011))

(declare-fun b!4179012 () Bool)

(declare-fun e!2594444 () Bool)

(assert (=> b!4179012 (= e!2594444 tp_is_empty!22029)))

(declare-fun b!4179015 () Bool)

(declare-fun tp!1277088 () Bool)

(declare-fun tp!1277091 () Bool)

(assert (=> b!4179015 (= e!2594444 (and tp!1277088 tp!1277091))))

(assert (=> b!4178484 (= tp!1277011 e!2594444)))

(declare-fun b!4179014 () Bool)

(declare-fun tp!1277092 () Bool)

(assert (=> b!4179014 (= e!2594444 tp!1277092)))

(declare-fun b!4179013 () Bool)

(declare-fun tp!1277089 () Bool)

(declare-fun tp!1277090 () Bool)

(assert (=> b!4179013 (= e!2594444 (and tp!1277089 tp!1277090))))

(assert (= (and b!4178484 ((_ is ElementMatch!12533) (regex!7628 (h!51289 rules!3843)))) b!4179012))

(assert (= (and b!4178484 ((_ is Concat!20392) (regex!7628 (h!51289 rules!3843)))) b!4179013))

(assert (= (and b!4178484 ((_ is Star!12533) (regex!7628 (h!51289 rules!3843)))) b!4179014))

(assert (= (and b!4178484 ((_ is Union!12533) (regex!7628 (h!51289 rules!3843)))) b!4179015))

(declare-fun b!4179026 () Bool)

(declare-fun b_free!121375 () Bool)

(declare-fun b_next!122079 () Bool)

(assert (=> b!4179026 (= b_free!121375 (not b_next!122079))))

(declare-fun tb!250117 () Bool)

(declare-fun t!344894 () Bool)

(assert (=> (and b!4179026 (= (toValue!10312 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toValue!10312 (transformation!7628 r!4142))) t!344894) tb!250117))

(declare-fun result!304770 () Bool)

(assert (= result!304770 result!304716))

(assert (=> d!1233317 t!344894))

(assert (=> d!1233345 t!344894))

(declare-fun b_and!326749 () Bool)

(declare-fun tp!1277102 () Bool)

(assert (=> b!4179026 (= tp!1277102 (and (=> t!344894 result!304770) b_and!326749))))

(declare-fun b_free!121377 () Bool)

(declare-fun b_next!122081 () Bool)

(assert (=> b!4179026 (= b_free!121377 (not b_next!122081))))

(declare-fun t!344896 () Bool)

(declare-fun tb!250119 () Bool)

(assert (=> (and b!4179026 (= (toChars!10171 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toChars!10171 (transformation!7628 r!4142))) t!344896) tb!250119))

(declare-fun result!304772 () Bool)

(assert (= result!304772 result!304750))

(assert (=> d!1233345 t!344896))

(declare-fun t!344898 () Bool)

(declare-fun tb!250121 () Bool)

(assert (=> (and b!4179026 (= (toChars!10171 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toChars!10171 (transformation!7628 (rule!10686 (_1!24979 lt!1488263))))) t!344898) tb!250121))

(declare-fun result!304774 () Bool)

(assert (= result!304774 result!304758))

(assert (=> d!1233373 t!344898))

(declare-fun b_and!326751 () Bool)

(declare-fun tp!1277101 () Bool)

(assert (=> b!4179026 (= tp!1277101 (and (=> t!344896 result!304772) (=> t!344898 result!304774) b_and!326751))))

(declare-fun e!2594456 () Bool)

(assert (=> b!4179026 (= e!2594456 (and tp!1277102 tp!1277101))))

(declare-fun e!2594454 () Bool)

(declare-fun tp!1277104 () Bool)

(declare-fun b!4179025 () Bool)

(assert (=> b!4179025 (= e!2594454 (and tp!1277104 (inv!60387 (tag!8492 (h!51289 (t!344850 rules!3843)))) (inv!60389 (transformation!7628 (h!51289 (t!344850 rules!3843)))) e!2594456))))

(declare-fun b!4179024 () Bool)

(declare-fun e!2594453 () Bool)

(declare-fun tp!1277103 () Bool)

(assert (=> b!4179024 (= e!2594453 (and e!2594454 tp!1277103))))

(assert (=> b!4178495 (= tp!1277001 e!2594453)))

(assert (= b!4179025 b!4179026))

(assert (= b!4179024 b!4179025))

(assert (= (and b!4178495 ((_ is Cons!45869) (t!344850 rules!3843))) b!4179024))

(declare-fun m!4768611 () Bool)

(assert (=> b!4179025 m!4768611))

(declare-fun m!4768613 () Bool)

(assert (=> b!4179025 m!4768613))

(declare-fun b_lambda!122733 () Bool)

(assert (= b_lambda!122729 (or (and b!4178491 b_free!121359 (= (toValue!10312 (transformation!7628 rBis!167)) (toValue!10312 (transformation!7628 r!4142)))) (and b!4178493 b_free!121363) (and b!4178496 b_free!121367 (= (toValue!10312 (transformation!7628 (h!51289 rules!3843))) (toValue!10312 (transformation!7628 r!4142)))) (and b!4179026 b_free!121375 (= (toValue!10312 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toValue!10312 (transformation!7628 r!4142)))) b_lambda!122733)))

(declare-fun b_lambda!122735 () Bool)

(assert (= b_lambda!122713 (or (and b!4178491 b_free!121359 (= (toValue!10312 (transformation!7628 rBis!167)) (toValue!10312 (transformation!7628 r!4142)))) (and b!4178493 b_free!121363) (and b!4178496 b_free!121367 (= (toValue!10312 (transformation!7628 (h!51289 rules!3843))) (toValue!10312 (transformation!7628 r!4142)))) (and b!4179026 b_free!121375 (= (toValue!10312 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toValue!10312 (transformation!7628 r!4142)))) b_lambda!122735)))

(declare-fun b_lambda!122737 () Bool)

(assert (= b_lambda!122727 (or (and b!4178491 b_free!121361 (= (toChars!10171 (transformation!7628 rBis!167)) (toChars!10171 (transformation!7628 r!4142)))) (and b!4178493 b_free!121365) (and b!4178496 b_free!121369 (= (toChars!10171 (transformation!7628 (h!51289 rules!3843))) (toChars!10171 (transformation!7628 r!4142)))) (and b!4179026 b_free!121377 (= (toChars!10171 (transformation!7628 (h!51289 (t!344850 rules!3843)))) (toChars!10171 (transformation!7628 r!4142)))) b_lambda!122737)))

(check-sat (not b!4178840) (not b!4178992) (not b!4178700) (not b!4179006) (not b!4178843) (not b!4178760) (not b!4178932) (not b!4178979) (not d!1233287) (not d!1233385) (not b!4178856) (not b_next!122079) (not d!1233345) (not b!4179005) (not b!4178645) (not d!1233363) (not d!1233357) (not d!1233379) (not b!4179004) (not d!1233373) (not d!1233325) (not b!4178848) (not b!4178933) (not b!4179024) (not b!4179015) b_and!326747 (not b_next!122067) (not b!4178755) (not b!4178833) (not d!1233369) (not d!1233309) (not b!4178977) (not d!1233371) (not b_next!122065) (not b!4178647) b_and!326737 (not b!4179025) (not b!4178980) (not b_next!122081) (not b!4178991) (not b!4178930) (not b!4178702) tp_is_empty!22029 (not b!4178954) (not bm!291497) (not b_lambda!122735) (not b!4178978) (not d!1233389) b_and!326749 (not b!4178948) (not b!4178567) (not b!4178953) (not d!1233381) (not b!4179010) (not b!4178982) (not b!4178650) (not b!4178842) (not b!4178986) (not b!4178976) b_and!326751 (not b!4178925) (not b!4178846) (not d!1233241) (not b!4178985) b_and!326743 (not b!4178949) (not b!4178648) (not d!1233335) (not b!4178506) (not d!1233387) (not b!4179007) (not d!1233337) (not b_next!122069) (not tb!250105) (not tb!250081) (not b!4178929) (not b!4178841) (not b_lambda!122731) (not b!4178984) (not bm!291498) (not b!4179011) (not d!1233233) (not b!4178768) b_and!326745 (not b!4178981) (not b!4178643) (not b!4178776) (not d!1233281) (not b!4178649) (not b!4178535) (not b!4178928) (not b!4178835) (not bm!291519) (not b!4178845) (not b_lambda!122737) (not tb!250111) (not b!4178847) (not b!4178950) (not b!4179009) (not b!4178762) (not b!4178946) (not b!4178766) (not b!4178763) (not b_next!122073) (not b!4178943) b_and!326739 (not b!4178642) (not b!4179013) (not b_lambda!122733) (not d!1233243) (not d!1233305) (not b!4178944) (not d!1233275) (not b!4179014) (not bm!291507) (not b_next!122063) (not b!4178927) (not d!1233265) (not b!4178974) (not b_next!122071) b_and!326741 (not b!4178811) (not b!4178644) (not b!4178679) (not b!4178834) (not d!1233383))
(check-sat (not b_next!122079) b_and!326747 (not b_next!122067) b_and!326749 (not b_next!122069) b_and!326745 (not b_next!122063) (not b_next!122065) b_and!326737 (not b_next!122081) b_and!326751 b_and!326743 (not b_next!122073) b_and!326739 b_and!326741 (not b_next!122071))
