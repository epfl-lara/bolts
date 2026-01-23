; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402774 () Bool)

(assert start!402774)

(declare-fun b!4214472 () Bool)

(declare-fun b_free!123531 () Bool)

(declare-fun b_next!124235 () Bool)

(assert (=> b!4214472 (= b_free!123531 (not b_next!124235))))

(declare-fun tp!1289029 () Bool)

(declare-fun b_and!331901 () Bool)

(assert (=> b!4214472 (= tp!1289029 b_and!331901)))

(declare-fun b_free!123533 () Bool)

(declare-fun b_next!124237 () Bool)

(assert (=> b!4214472 (= b_free!123533 (not b_next!124237))))

(declare-fun tp!1289027 () Bool)

(declare-fun b_and!331903 () Bool)

(assert (=> b!4214472 (= tp!1289027 b_and!331903)))

(declare-fun b!4214456 () Bool)

(declare-fun b_free!123535 () Bool)

(declare-fun b_next!124239 () Bool)

(assert (=> b!4214456 (= b_free!123535 (not b_next!124239))))

(declare-fun tp!1289033 () Bool)

(declare-fun b_and!331905 () Bool)

(assert (=> b!4214456 (= tp!1289033 b_and!331905)))

(declare-fun b_free!123537 () Bool)

(declare-fun b_next!124241 () Bool)

(assert (=> b!4214456 (= b_free!123537 (not b_next!124241))))

(declare-fun tp!1289025 () Bool)

(declare-fun b_and!331907 () Bool)

(assert (=> b!4214456 (= tp!1289025 b_and!331907)))

(declare-fun b!4214459 () Bool)

(declare-fun b_free!123539 () Bool)

(declare-fun b_next!124243 () Bool)

(assert (=> b!4214459 (= b_free!123539 (not b_next!124243))))

(declare-fun tp!1289026 () Bool)

(declare-fun b_and!331909 () Bool)

(assert (=> b!4214459 (= tp!1289026 b_and!331909)))

(declare-fun b_free!123541 () Bool)

(declare-fun b_next!124245 () Bool)

(assert (=> b!4214459 (= b_free!123541 (not b_next!124245))))

(declare-fun tp!1289040 () Bool)

(declare-fun b_and!331911 () Bool)

(assert (=> b!4214459 (= tp!1289040 b_and!331911)))

(declare-fun b!4214446 () Bool)

(declare-fun b_free!123543 () Bool)

(declare-fun b_next!124247 () Bool)

(assert (=> b!4214446 (= b_free!123543 (not b_next!124247))))

(declare-fun tp!1289031 () Bool)

(declare-fun b_and!331913 () Bool)

(assert (=> b!4214446 (= tp!1289031 b_and!331913)))

(declare-fun b_free!123545 () Bool)

(declare-fun b_next!124249 () Bool)

(assert (=> b!4214446 (= b_free!123545 (not b_next!124249))))

(declare-fun tp!1289038 () Bool)

(declare-fun b_and!331915 () Bool)

(assert (=> b!4214446 (= tp!1289038 b_and!331915)))

(declare-fun b!4214439 () Bool)

(declare-fun res!1731642 () Bool)

(declare-fun e!2616372 () Bool)

(assert (=> b!4214439 (=> (not res!1731642) (not e!2616372))))

(declare-datatypes ((C!25532 0))(
  ( (C!25533 (val!14928 Int)) )
))
(declare-datatypes ((List!46475 0))(
  ( (Nil!46351) (Cons!46351 (h!51771 C!25532) (t!348254 List!46475)) )
))
(declare-fun p!3001 () List!46475)

(declare-fun input!3517 () List!46475)

(declare-fun isPrefix!4623 (List!46475 List!46475) Bool)

(assert (=> b!4214439 (= res!1731642 (isPrefix!4623 p!3001 input!3517))))

(declare-fun b!4214440 () Bool)

(declare-fun res!1731647 () Bool)

(assert (=> b!4214440 (=> (not res!1731647) (not e!2616372))))

(declare-fun suffix!1557 () List!46475)

(declare-fun ++!11838 (List!46475 List!46475) List!46475)

(assert (=> b!4214440 (= res!1731647 (= (++!11838 p!3001 suffix!1557) input!3517))))

(declare-fun b!4214441 () Bool)

(declare-fun e!2616347 () Bool)

(declare-fun tp_is_empty!22305 () Bool)

(declare-fun tp!1289030 () Bool)

(assert (=> b!4214441 (= e!2616347 (and tp_is_empty!22305 tp!1289030))))

(declare-fun b!4214442 () Bool)

(declare-fun e!2616351 () Bool)

(declare-fun tp!1289037 () Bool)

(assert (=> b!4214442 (= e!2616351 (and tp_is_empty!22305 tp!1289037))))

(declare-fun b!4214443 () Bool)

(declare-fun e!2616346 () Bool)

(declare-fun e!2616369 () Bool)

(declare-fun tp!1289032 () Bool)

(assert (=> b!4214443 (= e!2616346 (and e!2616369 tp!1289032))))

(declare-fun b!4214444 () Bool)

(declare-datatypes ((Unit!65482 0))(
  ( (Unit!65483) )
))
(declare-fun e!2616360 () Unit!65482)

(declare-fun Unit!65484 () Unit!65482)

(assert (=> b!4214444 (= e!2616360 Unit!65484)))

(declare-fun b!4214445 () Bool)

(declare-fun e!2616348 () Bool)

(declare-fun tp!1289035 () Bool)

(assert (=> b!4214445 (= e!2616348 (and tp_is_empty!22305 tp!1289035))))

(declare-fun e!2616352 () Bool)

(assert (=> b!4214446 (= e!2616352 (and tp!1289031 tp!1289038))))

(declare-datatypes ((List!46476 0))(
  ( (Nil!46352) (Cons!46352 (h!51772 (_ BitVec 16)) (t!348255 List!46476)) )
))
(declare-datatypes ((TokenValue!7994 0))(
  ( (FloatLiteralValue!15988 (text!56403 List!46476)) (TokenValueExt!7993 (__x!28211 Int)) (Broken!39970 (value!241777 List!46476)) (Object!8117) (End!7994) (Def!7994) (Underscore!7994) (Match!7994) (Else!7994) (Error!7994) (Case!7994) (If!7994) (Extends!7994) (Abstract!7994) (Class!7994) (Val!7994) (DelimiterValue!15988 (del!8054 List!46476)) (KeywordValue!8000 (value!241778 List!46476)) (CommentValue!15988 (value!241779 List!46476)) (WhitespaceValue!15988 (value!241780 List!46476)) (IndentationValue!7994 (value!241781 List!46476)) (String!53839) (Int32!7994) (Broken!39971 (value!241782 List!46476)) (Boolean!7995) (Unit!65485) (OperatorValue!7997 (op!8054 List!46476)) (IdentifierValue!15988 (value!241783 List!46476)) (IdentifierValue!15989 (value!241784 List!46476)) (WhitespaceValue!15989 (value!241785 List!46476)) (True!15988) (False!15988) (Broken!39972 (value!241786 List!46476)) (Broken!39973 (value!241787 List!46476)) (True!15989) (RightBrace!7994) (RightBracket!7994) (Colon!7994) (Null!7994) (Comma!7994) (LeftBracket!7994) (False!15989) (LeftBrace!7994) (ImaginaryLiteralValue!7994 (text!56404 List!46476)) (StringLiteralValue!23982 (value!241788 List!46476)) (EOFValue!7994 (value!241789 List!46476)) (IdentValue!7994 (value!241790 List!46476)) (DelimiterValue!15989 (value!241791 List!46476)) (DedentValue!7994 (value!241792 List!46476)) (NewLineValue!7994 (value!241793 List!46476)) (IntegerValue!23982 (value!241794 (_ BitVec 32)) (text!56405 List!46476)) (IntegerValue!23983 (value!241795 Int) (text!56406 List!46476)) (Times!7994) (Or!7994) (Equal!7994) (Minus!7994) (Broken!39974 (value!241796 List!46476)) (And!7994) (Div!7994) (LessEqual!7994) (Mod!7994) (Concat!20663) (Not!7994) (Plus!7994) (SpaceValue!7994 (value!241797 List!46476)) (IntegerValue!23984 (value!241798 Int) (text!56407 List!46476)) (StringLiteralValue!23983 (text!56408 List!46476)) (FloatLiteralValue!15989 (text!56409 List!46476)) (BytesLiteralValue!7994 (value!241799 List!46476)) (CommentValue!15989 (value!241800 List!46476)) (StringLiteralValue!23984 (value!241801 List!46476)) (ErrorTokenValue!7994 (msg!8055 List!46476)) )
))
(declare-datatypes ((IArray!27955 0))(
  ( (IArray!27956 (innerList!14035 List!46475)) )
))
(declare-datatypes ((Regex!12669 0))(
  ( (ElementMatch!12669 (c!717640 C!25532)) (Concat!20664 (regOne!25850 Regex!12669) (regTwo!25850 Regex!12669)) (EmptyExpr!12669) (Star!12669 (reg!12998 Regex!12669)) (EmptyLang!12669) (Union!12669 (regOne!25851 Regex!12669) (regTwo!25851 Regex!12669)) )
))
(declare-datatypes ((Conc!13975 0))(
  ( (Node!13975 (left!34496 Conc!13975) (right!34826 Conc!13975) (csize!28180 Int) (cheight!14186 Int)) (Leaf!21601 (xs!17281 IArray!27955) (csize!28181 Int)) (Empty!13975) )
))
(declare-datatypes ((BalanceConc!27544 0))(
  ( (BalanceConc!27545 (c!717641 Conc!13975)) )
))
(declare-datatypes ((String!53840 0))(
  ( (String!53841 (value!241802 String)) )
))
(declare-datatypes ((TokenValueInjection!15416 0))(
  ( (TokenValueInjection!15417 (toValue!10484 Int) (toChars!10343 Int)) )
))
(declare-datatypes ((Rule!15328 0))(
  ( (Rule!15329 (regex!7764 Regex!12669) (tag!8628 String!53840) (isSeparator!7764 Bool) (transformation!7764 TokenValueInjection!15416)) )
))
(declare-datatypes ((Token!14230 0))(
  ( (Token!14231 (value!241803 TokenValue!7994) (rule!10886 Rule!15328) (size!34041 Int) (originalCharacters!8146 List!46475)) )
))
(declare-fun tBis!41 () Token!14230)

(declare-fun tp!1289023 () Bool)

(declare-fun e!2616365 () Bool)

(declare-fun e!2616371 () Bool)

(declare-fun b!4214447 () Bool)

(declare-fun inv!60981 (String!53840) Bool)

(declare-fun inv!60984 (TokenValueInjection!15416) Bool)

(assert (=> b!4214447 (= e!2616371 (and tp!1289023 (inv!60981 (tag!8628 (rule!10886 tBis!41))) (inv!60984 (transformation!7764 (rule!10886 tBis!41))) e!2616365))))

(declare-fun b!4214448 () Bool)

(declare-fun res!1731640 () Bool)

(assert (=> b!4214448 (=> (not res!1731640) (not e!2616372))))

(declare-datatypes ((LexerInterface!7359 0))(
  ( (LexerInterfaceExt!7356 (__x!28212 Int)) (Lexer!7357) )
))
(declare-fun thiss!26544 () LexerInterface!7359)

(declare-datatypes ((List!46477 0))(
  ( (Nil!46353) (Cons!46353 (h!51773 Rule!15328) (t!348256 List!46477)) )
))
(declare-fun rules!3967 () List!46477)

(declare-fun rulesInvariant!6570 (LexerInterface!7359 List!46477) Bool)

(assert (=> b!4214448 (= res!1731640 (rulesInvariant!6570 thiss!26544 rules!3967))))

(declare-fun b!4214449 () Bool)

(declare-fun res!1731635 () Bool)

(declare-fun e!2616356 () Bool)

(assert (=> b!4214449 (=> res!1731635 e!2616356)))

(declare-datatypes ((tuple2!44086 0))(
  ( (tuple2!44087 (_1!25177 Token!14230) (_2!25177 List!46475)) )
))
(declare-datatypes ((Option!9952 0))(
  ( (None!9951) (Some!9951 (v!40829 tuple2!44086)) )
))
(declare-fun lt!1499942 () Option!9952)

(declare-fun maxPrefixOneRule!3354 (LexerInterface!7359 Rule!15328 List!46475) Option!9952)

(assert (=> b!4214449 (= res!1731635 (not (= (maxPrefixOneRule!3354 thiss!26544 (h!51773 rules!3967) input!3517) lt!1499942)))))

(declare-fun b!4214450 () Bool)

(declare-fun res!1731638 () Bool)

(assert (=> b!4214450 (=> res!1731638 e!2616356)))

(declare-fun rBis!178 () Rule!15328)

(assert (=> b!4214450 (= res!1731638 (not (= (rule!10886 tBis!41) rBis!178)))))

(declare-fun b!4214451 () Bool)

(declare-fun Unit!65486 () Unit!65482)

(assert (=> b!4214451 (= e!2616360 Unit!65486)))

(declare-fun lt!1499938 () Unit!65482)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!622 (LexerInterface!7359 Rule!15328 List!46477 List!46475) Unit!65482)

(assert (=> b!4214451 (= lt!1499938 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!622 thiss!26544 rBis!178 (t!348256 rules!3967) input!3517))))

(assert (=> b!4214451 false))

(declare-fun res!1731634 () Bool)

(assert (=> start!402774 (=> (not res!1731634) (not e!2616372))))

(get-info :version)

(assert (=> start!402774 (= res!1731634 ((_ is Lexer!7357) thiss!26544))))

(assert (=> start!402774 e!2616372))

(declare-fun e!2616355 () Bool)

(declare-fun inv!60985 (Token!14230) Bool)

(assert (=> start!402774 (and (inv!60985 tBis!41) e!2616355)))

(assert (=> start!402774 true))

(declare-fun e!2616354 () Bool)

(assert (=> start!402774 e!2616354))

(assert (=> start!402774 e!2616347))

(assert (=> start!402774 e!2616346))

(assert (=> start!402774 e!2616348))

(declare-fun t!8364 () Token!14230)

(declare-fun e!2616363 () Bool)

(assert (=> start!402774 (and (inv!60985 t!8364) e!2616363)))

(declare-fun e!2616361 () Bool)

(assert (=> start!402774 e!2616361))

(declare-fun e!2616362 () Bool)

(assert (=> start!402774 e!2616362))

(assert (=> start!402774 e!2616351))

(declare-fun b!4214452 () Bool)

(declare-fun res!1731636 () Bool)

(assert (=> b!4214452 (=> (not res!1731636) (not e!2616372))))

(declare-fun isEmpty!27454 (List!46477) Bool)

(assert (=> b!4214452 (= res!1731636 (not (isEmpty!27454 rules!3967)))))

(declare-fun b!4214453 () Bool)

(declare-fun res!1731644 () Bool)

(assert (=> b!4214453 (=> (not res!1731644) (not e!2616372))))

(declare-fun pBis!121 () List!46475)

(assert (=> b!4214453 (= res!1731644 (isPrefix!4623 pBis!121 input!3517))))

(declare-fun b!4214454 () Bool)

(declare-fun e!2616368 () Bool)

(assert (=> b!4214454 (= e!2616372 e!2616368)))

(declare-fun res!1731637 () Bool)

(assert (=> b!4214454 (=> (not res!1731637) (not e!2616368))))

(declare-fun maxPrefix!4399 (LexerInterface!7359 List!46477 List!46475) Option!9952)

(assert (=> b!4214454 (= res!1731637 (= (maxPrefix!4399 thiss!26544 rules!3967 input!3517) lt!1499942))))

(assert (=> b!4214454 (= lt!1499942 (Some!9951 (tuple2!44087 t!8364 suffix!1557)))))

(declare-fun e!2616349 () Bool)

(declare-fun tp!1289034 () Bool)

(declare-fun e!2616358 () Bool)

(declare-fun b!4214455 () Bool)

(assert (=> b!4214455 (= e!2616349 (and tp!1289034 (inv!60981 (tag!8628 (rule!10886 t!8364))) (inv!60984 (transformation!7764 (rule!10886 t!8364))) e!2616358))))

(declare-fun e!2616353 () Bool)

(assert (=> b!4214456 (= e!2616353 (and tp!1289033 tp!1289025))))

(declare-fun b!4214457 () Bool)

(declare-fun res!1731643 () Bool)

(assert (=> b!4214457 (=> res!1731643 e!2616356)))

(declare-fun suffixBis!41 () List!46475)

(assert (=> b!4214457 (= res!1731643 (not (= (++!11838 pBis!121 suffixBis!41) input!3517)))))

(declare-fun tp!1289036 () Bool)

(declare-fun b!4214458 () Bool)

(declare-fun inv!21 (TokenValue!7994) Bool)

(assert (=> b!4214458 (= e!2616355 (and (inv!21 (value!241803 tBis!41)) e!2616371 tp!1289036))))

(assert (=> b!4214459 (= e!2616365 (and tp!1289026 tp!1289040))))

(declare-fun b!4214460 () Bool)

(declare-fun tp!1289021 () Bool)

(assert (=> b!4214460 (= e!2616363 (and (inv!21 (value!241803 t!8364)) e!2616349 tp!1289021))))

(declare-fun b!4214461 () Bool)

(assert (=> b!4214461 (= e!2616368 (not e!2616356))))

(declare-fun res!1731641 () Bool)

(assert (=> b!4214461 (=> res!1731641 e!2616356)))

(assert (=> b!4214461 (= res!1731641 (not (= (maxPrefixOneRule!3354 thiss!26544 rBis!178 input!3517) (Some!9951 (tuple2!44087 tBis!41 suffixBis!41)))))))

(assert (=> b!4214461 (isPrefix!4623 input!3517 input!3517)))

(declare-fun lt!1499944 () Unit!65482)

(declare-fun lemmaIsPrefixRefl!3040 (List!46475 List!46475) Unit!65482)

(assert (=> b!4214461 (= lt!1499944 (lemmaIsPrefixRefl!3040 input!3517 input!3517))))

(declare-fun b!4214462 () Bool)

(declare-fun res!1731639 () Bool)

(assert (=> b!4214462 (=> res!1731639 e!2616356)))

(declare-fun list!16765 (BalanceConc!27544) List!46475)

(declare-fun charsOf!5187 (Token!14230) BalanceConc!27544)

(assert (=> b!4214462 (= res!1731639 (not (= (list!16765 (charsOf!5187 tBis!41)) pBis!121)))))

(declare-fun b!4214463 () Bool)

(declare-fun tp!1289039 () Bool)

(assert (=> b!4214463 (= e!2616362 (and tp_is_empty!22305 tp!1289039))))

(declare-fun b!4214464 () Bool)

(declare-fun e!2616370 () Bool)

(declare-fun lt!1499936 () List!46475)

(assert (=> b!4214464 (= e!2616370 (isPrefix!4623 lt!1499936 input!3517))))

(declare-fun b!4214465 () Bool)

(declare-fun res!1731632 () Bool)

(assert (=> b!4214465 (=> (not res!1731632) (not e!2616372))))

(declare-fun contains!9585 (List!46477 Rule!15328) Bool)

(assert (=> b!4214465 (= res!1731632 (contains!9585 rules!3967 rBis!178))))

(declare-fun b!4214466 () Bool)

(declare-fun tp!1289024 () Bool)

(assert (=> b!4214466 (= e!2616361 (and tp_is_empty!22305 tp!1289024))))

(declare-fun b!4214467 () Bool)

(declare-fun res!1731633 () Bool)

(assert (=> b!4214467 (=> (not res!1731633) (not e!2616368))))

(declare-fun ruleValid!3476 (LexerInterface!7359 Rule!15328) Bool)

(assert (=> b!4214467 (= res!1731633 (ruleValid!3476 thiss!26544 rBis!178))))

(declare-fun b!4214468 () Bool)

(assert (=> b!4214468 (= e!2616356 e!2616370)))

(declare-fun res!1731645 () Bool)

(assert (=> b!4214468 (=> res!1731645 e!2616370)))

(declare-fun lt!1499943 () List!46475)

(assert (=> b!4214468 (= res!1731645 (not (= lt!1499943 input!3517)))))

(assert (=> b!4214468 (rulesInvariant!6570 thiss!26544 (t!348256 rules!3967))))

(declare-fun lt!1499940 () Unit!65482)

(declare-fun lemmaInvariantOnRulesThenOnTail!854 (LexerInterface!7359 Rule!15328 List!46477) Unit!65482)

(assert (=> b!4214468 (= lt!1499940 (lemmaInvariantOnRulesThenOnTail!854 thiss!26544 (h!51773 rules!3967) (t!348256 rules!3967)))))

(assert (=> b!4214468 (isPrefix!4623 lt!1499936 lt!1499943)))

(declare-fun lt!1499941 () tuple2!44086)

(assert (=> b!4214468 (= lt!1499943 (++!11838 lt!1499936 (_2!25177 lt!1499941)))))

(declare-fun lt!1499939 () Unit!65482)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3078 (List!46475 List!46475) Unit!65482)

(assert (=> b!4214468 (= lt!1499939 (lemmaConcatTwoListThenFirstIsPrefix!3078 lt!1499936 (_2!25177 lt!1499941)))))

(assert (=> b!4214468 (= lt!1499936 (list!16765 (charsOf!5187 (_1!25177 lt!1499941))))))

(declare-fun lt!1499935 () Option!9952)

(declare-fun get!15080 (Option!9952) tuple2!44086)

(assert (=> b!4214468 (= lt!1499941 (get!15080 lt!1499935))))

(declare-fun lt!1499937 () Unit!65482)

(assert (=> b!4214468 (= lt!1499937 e!2616360)))

(declare-fun c!717639 () Bool)

(declare-fun isEmpty!27455 (Option!9952) Bool)

(assert (=> b!4214468 (= c!717639 (isEmpty!27455 lt!1499935))))

(assert (=> b!4214468 (= lt!1499935 (maxPrefix!4399 thiss!26544 (t!348256 rules!3967) input!3517))))

(declare-fun tp!1289028 () Bool)

(declare-fun b!4214469 () Bool)

(assert (=> b!4214469 (= e!2616369 (and tp!1289028 (inv!60981 (tag!8628 (h!51773 rules!3967))) (inv!60984 (transformation!7764 (h!51773 rules!3967))) e!2616352))))

(declare-fun tp!1289022 () Bool)

(declare-fun b!4214470 () Bool)

(assert (=> b!4214470 (= e!2616354 (and tp!1289022 (inv!60981 (tag!8628 rBis!178)) (inv!60984 (transformation!7764 rBis!178)) e!2616353))))

(declare-fun b!4214471 () Bool)

(declare-fun res!1731646 () Bool)

(assert (=> b!4214471 (=> res!1731646 e!2616356)))

(assert (=> b!4214471 (= res!1731646 (or (and ((_ is Cons!46353) rules!3967) ((_ is Nil!46353) (t!348256 rules!3967))) (not ((_ is Cons!46353) rules!3967)) (= (h!51773 rules!3967) rBis!178)))))

(assert (=> b!4214472 (= e!2616358 (and tp!1289029 tp!1289027))))

(assert (= (and start!402774 res!1731634) b!4214440))

(assert (= (and b!4214440 res!1731647) b!4214439))

(assert (= (and b!4214439 res!1731642) b!4214453))

(assert (= (and b!4214453 res!1731644) b!4214452))

(assert (= (and b!4214452 res!1731636) b!4214448))

(assert (= (and b!4214448 res!1731640) b!4214465))

(assert (= (and b!4214465 res!1731632) b!4214454))

(assert (= (and b!4214454 res!1731637) b!4214467))

(assert (= (and b!4214467 res!1731633) b!4214461))

(assert (= (and b!4214461 (not res!1731641)) b!4214450))

(assert (= (and b!4214450 (not res!1731638)) b!4214462))

(assert (= (and b!4214462 (not res!1731639)) b!4214457))

(assert (= (and b!4214457 (not res!1731643)) b!4214471))

(assert (= (and b!4214471 (not res!1731646)) b!4214449))

(assert (= (and b!4214449 (not res!1731635)) b!4214468))

(assert (= (and b!4214468 c!717639) b!4214451))

(assert (= (and b!4214468 (not c!717639)) b!4214444))

(assert (= (and b!4214468 (not res!1731645)) b!4214464))

(assert (= b!4214447 b!4214459))

(assert (= b!4214458 b!4214447))

(assert (= start!402774 b!4214458))

(assert (= b!4214470 b!4214456))

(assert (= start!402774 b!4214470))

(assert (= (and start!402774 ((_ is Cons!46351) p!3001)) b!4214441))

(assert (= b!4214469 b!4214446))

(assert (= b!4214443 b!4214469))

(assert (= (and start!402774 ((_ is Cons!46353) rules!3967)) b!4214443))

(assert (= (and start!402774 ((_ is Cons!46351) input!3517)) b!4214445))

(assert (= b!4214455 b!4214472))

(assert (= b!4214460 b!4214455))

(assert (= start!402774 b!4214460))

(assert (= (and start!402774 ((_ is Cons!46351) pBis!121)) b!4214466))

(assert (= (and start!402774 ((_ is Cons!46351) suffix!1557)) b!4214463))

(assert (= (and start!402774 ((_ is Cons!46351) suffixBis!41)) b!4214442))

(declare-fun m!4802333 () Bool)

(assert (=> b!4214449 m!4802333))

(declare-fun m!4802335 () Bool)

(assert (=> b!4214454 m!4802335))

(declare-fun m!4802337 () Bool)

(assert (=> b!4214448 m!4802337))

(declare-fun m!4802339 () Bool)

(assert (=> b!4214451 m!4802339))

(declare-fun m!4802341 () Bool)

(assert (=> start!402774 m!4802341))

(declare-fun m!4802343 () Bool)

(assert (=> start!402774 m!4802343))

(declare-fun m!4802345 () Bool)

(assert (=> b!4214439 m!4802345))

(declare-fun m!4802347 () Bool)

(assert (=> b!4214469 m!4802347))

(declare-fun m!4802349 () Bool)

(assert (=> b!4214469 m!4802349))

(declare-fun m!4802351 () Bool)

(assert (=> b!4214455 m!4802351))

(declare-fun m!4802353 () Bool)

(assert (=> b!4214455 m!4802353))

(declare-fun m!4802355 () Bool)

(assert (=> b!4214447 m!4802355))

(declare-fun m!4802357 () Bool)

(assert (=> b!4214447 m!4802357))

(declare-fun m!4802359 () Bool)

(assert (=> b!4214460 m!4802359))

(declare-fun m!4802361 () Bool)

(assert (=> b!4214465 m!4802361))

(declare-fun m!4802363 () Bool)

(assert (=> b!4214440 m!4802363))

(declare-fun m!4802365 () Bool)

(assert (=> b!4214461 m!4802365))

(declare-fun m!4802367 () Bool)

(assert (=> b!4214461 m!4802367))

(declare-fun m!4802369 () Bool)

(assert (=> b!4214461 m!4802369))

(declare-fun m!4802371 () Bool)

(assert (=> b!4214452 m!4802371))

(declare-fun m!4802373 () Bool)

(assert (=> b!4214462 m!4802373))

(assert (=> b!4214462 m!4802373))

(declare-fun m!4802375 () Bool)

(assert (=> b!4214462 m!4802375))

(declare-fun m!4802377 () Bool)

(assert (=> b!4214464 m!4802377))

(declare-fun m!4802379 () Bool)

(assert (=> b!4214467 m!4802379))

(declare-fun m!4802381 () Bool)

(assert (=> b!4214457 m!4802381))

(declare-fun m!4802383 () Bool)

(assert (=> b!4214458 m!4802383))

(declare-fun m!4802385 () Bool)

(assert (=> b!4214468 m!4802385))

(declare-fun m!4802387 () Bool)

(assert (=> b!4214468 m!4802387))

(declare-fun m!4802389 () Bool)

(assert (=> b!4214468 m!4802389))

(declare-fun m!4802391 () Bool)

(assert (=> b!4214468 m!4802391))

(declare-fun m!4802393 () Bool)

(assert (=> b!4214468 m!4802393))

(declare-fun m!4802395 () Bool)

(assert (=> b!4214468 m!4802395))

(declare-fun m!4802397 () Bool)

(assert (=> b!4214468 m!4802397))

(declare-fun m!4802399 () Bool)

(assert (=> b!4214468 m!4802399))

(declare-fun m!4802401 () Bool)

(assert (=> b!4214468 m!4802401))

(assert (=> b!4214468 m!4802401))

(declare-fun m!4802403 () Bool)

(assert (=> b!4214468 m!4802403))

(declare-fun m!4802405 () Bool)

(assert (=> b!4214470 m!4802405))

(declare-fun m!4802407 () Bool)

(assert (=> b!4214470 m!4802407))

(declare-fun m!4802409 () Bool)

(assert (=> b!4214453 m!4802409))

(check-sat (not b!4214457) (not b!4214440) (not b!4214453) b_and!331913 b_and!331909 (not b!4214443) (not b!4214448) (not b!4214466) (not b!4214469) (not b!4214460) (not b_next!124241) (not b_next!124245) (not b!4214449) (not b_next!124243) (not b!4214445) (not b!4214454) (not b_next!124239) b_and!331915 b_and!331901 (not b!4214451) (not b!4214470) b_and!331903 (not start!402774) b_and!331905 (not b_next!124249) (not b!4214465) (not b!4214458) tp_is_empty!22305 (not b!4214468) (not b_next!124235) (not b!4214455) b_and!331907 (not b!4214461) (not b!4214467) b_and!331911 (not b_next!124247) (not b!4214464) (not b!4214442) (not b_next!124237) (not b!4214452) (not b!4214439) (not b!4214441) (not b!4214447) (not b!4214463) (not b!4214462))
(check-sat (not b_next!124241) (not b_next!124239) b_and!331913 b_and!331909 (not b_next!124249) (not b_next!124235) b_and!331907 (not b_next!124237) (not b_next!124245) (not b_next!124243) b_and!331915 b_and!331901 b_and!331903 b_and!331905 b_and!331911 (not b_next!124247))
