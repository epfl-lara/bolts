; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402682 () Bool)

(assert start!402682)

(declare-fun b!4213426 () Bool)

(declare-fun b_free!123427 () Bool)

(declare-fun b_next!124131 () Bool)

(assert (=> b!4213426 (= b_free!123427 (not b_next!124131))))

(declare-fun tp!1288557 () Bool)

(declare-fun b_and!331733 () Bool)

(assert (=> b!4213426 (= tp!1288557 b_and!331733)))

(declare-fun b_free!123429 () Bool)

(declare-fun b_next!124133 () Bool)

(assert (=> b!4213426 (= b_free!123429 (not b_next!124133))))

(declare-fun tp!1288566 () Bool)

(declare-fun b_and!331735 () Bool)

(assert (=> b!4213426 (= tp!1288566 b_and!331735)))

(declare-fun b!4213399 () Bool)

(declare-fun b_free!123431 () Bool)

(declare-fun b_next!124135 () Bool)

(assert (=> b!4213399 (= b_free!123431 (not b_next!124135))))

(declare-fun tp!1288562 () Bool)

(declare-fun b_and!331737 () Bool)

(assert (=> b!4213399 (= tp!1288562 b_and!331737)))

(declare-fun b_free!123433 () Bool)

(declare-fun b_next!124137 () Bool)

(assert (=> b!4213399 (= b_free!123433 (not b_next!124137))))

(declare-fun tp!1288559 () Bool)

(declare-fun b_and!331739 () Bool)

(assert (=> b!4213399 (= tp!1288559 b_and!331739)))

(declare-fun b!4213423 () Bool)

(declare-fun b_free!123435 () Bool)

(declare-fun b_next!124139 () Bool)

(assert (=> b!4213423 (= b_free!123435 (not b_next!124139))))

(declare-fun tp!1288553 () Bool)

(declare-fun b_and!331741 () Bool)

(assert (=> b!4213423 (= tp!1288553 b_and!331741)))

(declare-fun b_free!123437 () Bool)

(declare-fun b_next!124141 () Bool)

(assert (=> b!4213423 (= b_free!123437 (not b_next!124141))))

(declare-fun tp!1288551 () Bool)

(declare-fun b_and!331743 () Bool)

(assert (=> b!4213423 (= tp!1288551 b_and!331743)))

(declare-fun b!4213424 () Bool)

(declare-fun b_free!123439 () Bool)

(declare-fun b_next!124143 () Bool)

(assert (=> b!4213424 (= b_free!123439 (not b_next!124143))))

(declare-fun tp!1288554 () Bool)

(declare-fun b_and!331745 () Bool)

(assert (=> b!4213424 (= tp!1288554 b_and!331745)))

(declare-fun b_free!123441 () Bool)

(declare-fun b_next!124145 () Bool)

(assert (=> b!4213424 (= b_free!123441 (not b_next!124145))))

(declare-fun tp!1288567 () Bool)

(declare-fun b_and!331747 () Bool)

(assert (=> b!4213424 (= tp!1288567 b_and!331747)))

(declare-fun b!4213398 () Bool)

(declare-fun res!1731106 () Bool)

(declare-fun e!2615646 () Bool)

(assert (=> b!4213398 (=> (not res!1731106) (not e!2615646))))

(declare-datatypes ((LexerInterface!7353 0))(
  ( (LexerInterfaceExt!7350 (__x!28199 Int)) (Lexer!7351) )
))
(declare-fun thiss!26544 () LexerInterface!7353)

(declare-datatypes ((List!46455 0))(
  ( (Nil!46331) (Cons!46331 (h!51751 (_ BitVec 16)) (t!348174 List!46455)) )
))
(declare-datatypes ((TokenValue!7988 0))(
  ( (FloatLiteralValue!15976 (text!56361 List!46455)) (TokenValueExt!7987 (__x!28200 Int)) (Broken!39940 (value!241606 List!46455)) (Object!8111) (End!7988) (Def!7988) (Underscore!7988) (Match!7988) (Else!7988) (Error!7988) (Case!7988) (If!7988) (Extends!7988) (Abstract!7988) (Class!7988) (Val!7988) (DelimiterValue!15976 (del!8048 List!46455)) (KeywordValue!7994 (value!241607 List!46455)) (CommentValue!15976 (value!241608 List!46455)) (WhitespaceValue!15976 (value!241609 List!46455)) (IndentationValue!7988 (value!241610 List!46455)) (String!53809) (Int32!7988) (Broken!39941 (value!241611 List!46455)) (Boolean!7989) (Unit!65452) (OperatorValue!7991 (op!8048 List!46455)) (IdentifierValue!15976 (value!241612 List!46455)) (IdentifierValue!15977 (value!241613 List!46455)) (WhitespaceValue!15977 (value!241614 List!46455)) (True!15976) (False!15976) (Broken!39942 (value!241615 List!46455)) (Broken!39943 (value!241616 List!46455)) (True!15977) (RightBrace!7988) (RightBracket!7988) (Colon!7988) (Null!7988) (Comma!7988) (LeftBracket!7988) (False!15977) (LeftBrace!7988) (ImaginaryLiteralValue!7988 (text!56362 List!46455)) (StringLiteralValue!23964 (value!241617 List!46455)) (EOFValue!7988 (value!241618 List!46455)) (IdentValue!7988 (value!241619 List!46455)) (DelimiterValue!15977 (value!241620 List!46455)) (DedentValue!7988 (value!241621 List!46455)) (NewLineValue!7988 (value!241622 List!46455)) (IntegerValue!23964 (value!241623 (_ BitVec 32)) (text!56363 List!46455)) (IntegerValue!23965 (value!241624 Int) (text!56364 List!46455)) (Times!7988) (Or!7988) (Equal!7988) (Minus!7988) (Broken!39944 (value!241625 List!46455)) (And!7988) (Div!7988) (LessEqual!7988) (Mod!7988) (Concat!20651) (Not!7988) (Plus!7988) (SpaceValue!7988 (value!241626 List!46455)) (IntegerValue!23966 (value!241627 Int) (text!56365 List!46455)) (StringLiteralValue!23965 (text!56366 List!46455)) (FloatLiteralValue!15977 (text!56367 List!46455)) (BytesLiteralValue!7988 (value!241628 List!46455)) (CommentValue!15977 (value!241629 List!46455)) (StringLiteralValue!23966 (value!241630 List!46455)) (ErrorTokenValue!7988 (msg!8049 List!46455)) )
))
(declare-datatypes ((C!25520 0))(
  ( (C!25521 (val!14922 Int)) )
))
(declare-datatypes ((List!46456 0))(
  ( (Nil!46332) (Cons!46332 (h!51752 C!25520) (t!348175 List!46456)) )
))
(declare-datatypes ((IArray!27943 0))(
  ( (IArray!27944 (innerList!14029 List!46456)) )
))
(declare-datatypes ((Regex!12663 0))(
  ( (ElementMatch!12663 (c!717562 C!25520)) (Concat!20652 (regOne!25838 Regex!12663) (regTwo!25838 Regex!12663)) (EmptyExpr!12663) (Star!12663 (reg!12992 Regex!12663)) (EmptyLang!12663) (Union!12663 (regOne!25839 Regex!12663) (regTwo!25839 Regex!12663)) )
))
(declare-datatypes ((String!53810 0))(
  ( (String!53811 (value!241631 String)) )
))
(declare-datatypes ((Conc!13969 0))(
  ( (Node!13969 (left!34487 Conc!13969) (right!34817 Conc!13969) (csize!28168 Int) (cheight!14180 Int)) (Leaf!21592 (xs!17275 IArray!27943) (csize!28169 Int)) (Empty!13969) )
))
(declare-datatypes ((BalanceConc!27532 0))(
  ( (BalanceConc!27533 (c!717563 Conc!13969)) )
))
(declare-datatypes ((TokenValueInjection!15404 0))(
  ( (TokenValueInjection!15405 (toValue!10478 Int) (toChars!10337 Int)) )
))
(declare-datatypes ((Rule!15316 0))(
  ( (Rule!15317 (regex!7758 Regex!12663) (tag!8622 String!53810) (isSeparator!7758 Bool) (transformation!7758 TokenValueInjection!15404)) )
))
(declare-datatypes ((List!46457 0))(
  ( (Nil!46333) (Cons!46333 (h!51753 Rule!15316) (t!348176 List!46457)) )
))
(declare-fun rules!3967 () List!46457)

(declare-fun rulesInvariant!6564 (LexerInterface!7353 List!46457) Bool)

(assert (=> b!4213398 (= res!1731106 (rulesInvariant!6564 thiss!26544 rules!3967))))

(declare-fun e!2615629 () Bool)

(assert (=> b!4213399 (= e!2615629 (and tp!1288562 tp!1288559))))

(declare-fun b!4213400 () Bool)

(declare-fun e!2615652 () Bool)

(declare-fun tp_is_empty!22293 () Bool)

(declare-fun tp!1288560 () Bool)

(assert (=> b!4213400 (= e!2615652 (and tp_is_empty!22293 tp!1288560))))

(declare-fun b!4213401 () Bool)

(declare-fun e!2615645 () Bool)

(declare-fun tp!1288563 () Bool)

(assert (=> b!4213401 (= e!2615645 (and tp_is_empty!22293 tp!1288563))))

(declare-fun b!4213403 () Bool)

(declare-datatypes ((Unit!65453 0))(
  ( (Unit!65454) )
))
(declare-fun e!2615636 () Unit!65453)

(declare-fun Unit!65455 () Unit!65453)

(assert (=> b!4213403 (= e!2615636 Unit!65455)))

(declare-fun rBis!178 () Rule!15316)

(declare-fun input!3517 () List!46456)

(declare-fun lt!1499627 () Unit!65453)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!616 (LexerInterface!7353 Rule!15316 List!46457 List!46456) Unit!65453)

(assert (=> b!4213403 (= lt!1499627 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!616 thiss!26544 rBis!178 (t!348176 rules!3967) input!3517))))

(assert (=> b!4213403 false))

(declare-fun b!4213404 () Bool)

(declare-fun res!1731095 () Bool)

(assert (=> b!4213404 (=> (not res!1731095) (not e!2615646))))

(declare-fun contains!9579 (List!46457 Rule!15316) Bool)

(assert (=> b!4213404 (= res!1731095 (contains!9579 rules!3967 rBis!178))))

(declare-datatypes ((Token!14218 0))(
  ( (Token!14219 (value!241632 TokenValue!7988) (rule!10878 Rule!15316) (size!34031 Int) (originalCharacters!8140 List!46456)) )
))
(declare-fun tBis!41 () Token!14218)

(declare-fun b!4213405 () Bool)

(declare-fun e!2615631 () Bool)

(declare-fun e!2615627 () Bool)

(declare-fun tp!1288555 () Bool)

(declare-fun inv!60956 (String!53810) Bool)

(declare-fun inv!60959 (TokenValueInjection!15404) Bool)

(assert (=> b!4213405 (= e!2615627 (and tp!1288555 (inv!60956 (tag!8622 (rule!10878 tBis!41))) (inv!60959 (transformation!7758 (rule!10878 tBis!41))) e!2615631))))

(declare-fun b!4213406 () Bool)

(declare-fun e!2615637 () Bool)

(declare-fun tp!1288568 () Bool)

(assert (=> b!4213406 (= e!2615637 (and tp_is_empty!22293 tp!1288568))))

(declare-fun b!4213407 () Bool)

(declare-fun Unit!65456 () Unit!65453)

(assert (=> b!4213407 (= e!2615636 Unit!65456)))

(declare-fun b!4213408 () Bool)

(declare-fun e!2615644 () Bool)

(declare-fun tp!1288565 () Bool)

(assert (=> b!4213408 (= e!2615644 (and tp_is_empty!22293 tp!1288565))))

(declare-fun b!4213409 () Bool)

(declare-fun e!2615647 () Bool)

(declare-fun e!2615638 () Bool)

(assert (=> b!4213409 (= e!2615647 (not e!2615638))))

(declare-fun res!1731107 () Bool)

(assert (=> b!4213409 (=> res!1731107 e!2615638)))

(declare-fun suffixBis!41 () List!46456)

(declare-datatypes ((tuple2!44070 0))(
  ( (tuple2!44071 (_1!25169 Token!14218) (_2!25169 List!46456)) )
))
(declare-datatypes ((Option!9946 0))(
  ( (None!9945) (Some!9945 (v!40821 tuple2!44070)) )
))
(declare-fun maxPrefixOneRule!3348 (LexerInterface!7353 Rule!15316 List!46456) Option!9946)

(assert (=> b!4213409 (= res!1731107 (not (= (maxPrefixOneRule!3348 thiss!26544 rBis!178 input!3517) (Some!9945 (tuple2!44071 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4617 (List!46456 List!46456) Bool)

(assert (=> b!4213409 (isPrefix!4617 input!3517 input!3517)))

(declare-fun lt!1499630 () Unit!65453)

(declare-fun lemmaIsPrefixRefl!3034 (List!46456 List!46456) Unit!65453)

(assert (=> b!4213409 (= lt!1499630 (lemmaIsPrefixRefl!3034 input!3517 input!3517))))

(declare-fun e!2615640 () Bool)

(declare-fun tp!1288564 () Bool)

(declare-fun e!2615633 () Bool)

(declare-fun b!4213410 () Bool)

(assert (=> b!4213410 (= e!2615640 (and tp!1288564 (inv!60956 (tag!8622 rBis!178)) (inv!60959 (transformation!7758 rBis!178)) e!2615633))))

(declare-fun b!4213411 () Bool)

(declare-fun res!1731098 () Bool)

(assert (=> b!4213411 (=> res!1731098 e!2615638)))

(declare-fun pBis!121 () List!46456)

(declare-fun ++!11832 (List!46456 List!46456) List!46456)

(assert (=> b!4213411 (= res!1731098 (not (= (++!11832 pBis!121 suffixBis!41) input!3517)))))

(declare-fun tp!1288556 () Bool)

(declare-fun b!4213412 () Bool)

(declare-fun e!2615641 () Bool)

(assert (=> b!4213412 (= e!2615641 (and tp!1288556 (inv!60956 (tag!8622 (h!51753 rules!3967))) (inv!60959 (transformation!7758 (h!51753 rules!3967))) e!2615629))))

(declare-fun b!4213413 () Bool)

(declare-fun res!1731103 () Bool)

(assert (=> b!4213413 (=> res!1731103 e!2615638)))

(get-info :version)

(assert (=> b!4213413 (= res!1731103 (or (and ((_ is Cons!46333) rules!3967) ((_ is Nil!46333) (t!348176 rules!3967))) (not ((_ is Cons!46333) rules!3967)) (= (h!51753 rules!3967) rBis!178)))))

(declare-fun b!4213414 () Bool)

(declare-fun res!1731109 () Bool)

(assert (=> b!4213414 (=> res!1731109 e!2615638)))

(assert (=> b!4213414 (= res!1731109 (not (= (rule!10878 tBis!41) rBis!178)))))

(declare-fun b!4213415 () Bool)

(assert (=> b!4213415 (= e!2615638 (rulesInvariant!6564 thiss!26544 (Cons!46333 (h!51753 rules!3967) (t!348176 rules!3967))))))

(declare-fun lt!1499625 () List!46456)

(declare-fun lt!1499624 () tuple2!44070)

(assert (=> b!4213415 (isPrefix!4617 lt!1499625 (++!11832 lt!1499625 (_2!25169 lt!1499624)))))

(declare-fun lt!1499629 () Unit!65453)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3072 (List!46456 List!46456) Unit!65453)

(assert (=> b!4213415 (= lt!1499629 (lemmaConcatTwoListThenFirstIsPrefix!3072 lt!1499625 (_2!25169 lt!1499624)))))

(declare-fun list!16757 (BalanceConc!27532) List!46456)

(declare-fun charsOf!5181 (Token!14218) BalanceConc!27532)

(assert (=> b!4213415 (= lt!1499625 (list!16757 (charsOf!5181 (_1!25169 lt!1499624))))))

(declare-fun lt!1499626 () Option!9946)

(declare-fun get!15071 (Option!9946) tuple2!44070)

(assert (=> b!4213415 (= lt!1499624 (get!15071 lt!1499626))))

(declare-fun lt!1499623 () Unit!65453)

(assert (=> b!4213415 (= lt!1499623 e!2615636)))

(declare-fun c!717561 () Bool)

(declare-fun isEmpty!27440 (Option!9946) Bool)

(assert (=> b!4213415 (= c!717561 (isEmpty!27440 lt!1499626))))

(declare-fun maxPrefix!4393 (LexerInterface!7353 List!46457 List!46456) Option!9946)

(assert (=> b!4213415 (= lt!1499626 (maxPrefix!4393 thiss!26544 (t!348176 rules!3967) input!3517))))

(declare-fun b!4213416 () Bool)

(declare-fun res!1731108 () Bool)

(assert (=> b!4213416 (=> res!1731108 e!2615638)))

(declare-fun lt!1499628 () Option!9946)

(assert (=> b!4213416 (= res!1731108 (not (= (maxPrefixOneRule!3348 thiss!26544 (h!51753 rules!3967) input!3517) lt!1499628)))))

(declare-fun b!4213417 () Bool)

(declare-fun e!2615642 () Bool)

(declare-fun tp!1288552 () Bool)

(assert (=> b!4213417 (= e!2615642 (and tp_is_empty!22293 tp!1288552))))

(declare-fun b!4213418 () Bool)

(declare-fun res!1731104 () Bool)

(assert (=> b!4213418 (=> (not res!1731104) (not e!2615646))))

(assert (=> b!4213418 (= res!1731104 (isPrefix!4617 pBis!121 input!3517))))

(declare-fun b!4213419 () Bool)

(declare-fun res!1731099 () Bool)

(assert (=> b!4213419 (=> (not res!1731099) (not e!2615646))))

(declare-fun p!3001 () List!46456)

(assert (=> b!4213419 (= res!1731099 (isPrefix!4617 p!3001 input!3517))))

(declare-fun e!2615651 () Bool)

(declare-fun e!2615635 () Bool)

(declare-fun t!8364 () Token!14218)

(declare-fun b!4213420 () Bool)

(declare-fun tp!1288561 () Bool)

(assert (=> b!4213420 (= e!2615651 (and tp!1288561 (inv!60956 (tag!8622 (rule!10878 t!8364))) (inv!60959 (transformation!7758 (rule!10878 t!8364))) e!2615635))))

(declare-fun b!4213421 () Bool)

(declare-fun e!2615648 () Bool)

(declare-fun tp!1288549 () Bool)

(assert (=> b!4213421 (= e!2615648 (and e!2615641 tp!1288549))))

(declare-fun b!4213422 () Bool)

(assert (=> b!4213422 (= e!2615646 e!2615647)))

(declare-fun res!1731105 () Bool)

(assert (=> b!4213422 (=> (not res!1731105) (not e!2615647))))

(assert (=> b!4213422 (= res!1731105 (= (maxPrefix!4393 thiss!26544 rules!3967 input!3517) lt!1499628))))

(declare-fun suffix!1557 () List!46456)

(assert (=> b!4213422 (= lt!1499628 (Some!9945 (tuple2!44071 t!8364 suffix!1557)))))

(assert (=> b!4213423 (= e!2615635 (and tp!1288553 tp!1288551))))

(assert (=> b!4213424 (= e!2615633 (and tp!1288554 tp!1288567))))

(declare-fun b!4213425 () Bool)

(declare-fun res!1731096 () Bool)

(assert (=> b!4213425 (=> (not res!1731096) (not e!2615646))))

(assert (=> b!4213425 (= res!1731096 (= (++!11832 p!3001 suffix!1557) input!3517))))

(assert (=> b!4213426 (= e!2615631 (and tp!1288557 tp!1288566))))

(declare-fun b!4213427 () Bool)

(declare-fun res!1731101 () Bool)

(assert (=> b!4213427 (=> (not res!1731101) (not e!2615646))))

(declare-fun isEmpty!27441 (List!46457) Bool)

(assert (=> b!4213427 (= res!1731101 (not (isEmpty!27441 rules!3967)))))

(declare-fun b!4213428 () Bool)

(declare-fun e!2615649 () Bool)

(declare-fun tp!1288558 () Bool)

(declare-fun inv!21 (TokenValue!7988) Bool)

(assert (=> b!4213428 (= e!2615649 (and (inv!21 (value!241632 tBis!41)) e!2615627 tp!1288558))))

(declare-fun b!4213429 () Bool)

(declare-fun res!1731100 () Bool)

(assert (=> b!4213429 (=> res!1731100 e!2615638)))

(assert (=> b!4213429 (= res!1731100 (not (= (list!16757 (charsOf!5181 tBis!41)) pBis!121)))))

(declare-fun e!2615630 () Bool)

(declare-fun tp!1288550 () Bool)

(declare-fun b!4213430 () Bool)

(assert (=> b!4213430 (= e!2615630 (and (inv!21 (value!241632 t!8364)) e!2615651 tp!1288550))))

(declare-fun res!1731097 () Bool)

(assert (=> start!402682 (=> (not res!1731097) (not e!2615646))))

(assert (=> start!402682 (= res!1731097 ((_ is Lexer!7351) thiss!26544))))

(assert (=> start!402682 e!2615646))

(declare-fun inv!60960 (Token!14218) Bool)

(assert (=> start!402682 (and (inv!60960 tBis!41) e!2615649)))

(assert (=> start!402682 true))

(assert (=> start!402682 e!2615640))

(assert (=> start!402682 e!2615645))

(assert (=> start!402682 e!2615648))

(assert (=> start!402682 e!2615652))

(assert (=> start!402682 (and (inv!60960 t!8364) e!2615630)))

(assert (=> start!402682 e!2615637))

(assert (=> start!402682 e!2615644))

(assert (=> start!402682 e!2615642))

(declare-fun b!4213402 () Bool)

(declare-fun res!1731102 () Bool)

(assert (=> b!4213402 (=> (not res!1731102) (not e!2615647))))

(declare-fun ruleValid!3470 (LexerInterface!7353 Rule!15316) Bool)

(assert (=> b!4213402 (= res!1731102 (ruleValid!3470 thiss!26544 rBis!178))))

(assert (= (and start!402682 res!1731097) b!4213425))

(assert (= (and b!4213425 res!1731096) b!4213419))

(assert (= (and b!4213419 res!1731099) b!4213418))

(assert (= (and b!4213418 res!1731104) b!4213427))

(assert (= (and b!4213427 res!1731101) b!4213398))

(assert (= (and b!4213398 res!1731106) b!4213404))

(assert (= (and b!4213404 res!1731095) b!4213422))

(assert (= (and b!4213422 res!1731105) b!4213402))

(assert (= (and b!4213402 res!1731102) b!4213409))

(assert (= (and b!4213409 (not res!1731107)) b!4213414))

(assert (= (and b!4213414 (not res!1731109)) b!4213429))

(assert (= (and b!4213429 (not res!1731100)) b!4213411))

(assert (= (and b!4213411 (not res!1731098)) b!4213413))

(assert (= (and b!4213413 (not res!1731103)) b!4213416))

(assert (= (and b!4213416 (not res!1731108)) b!4213415))

(assert (= (and b!4213415 c!717561) b!4213403))

(assert (= (and b!4213415 (not c!717561)) b!4213407))

(assert (= b!4213405 b!4213426))

(assert (= b!4213428 b!4213405))

(assert (= start!402682 b!4213428))

(assert (= b!4213410 b!4213424))

(assert (= start!402682 b!4213410))

(assert (= (and start!402682 ((_ is Cons!46332) p!3001)) b!4213401))

(assert (= b!4213412 b!4213399))

(assert (= b!4213421 b!4213412))

(assert (= (and start!402682 ((_ is Cons!46333) rules!3967)) b!4213421))

(assert (= (and start!402682 ((_ is Cons!46332) input!3517)) b!4213400))

(assert (= b!4213420 b!4213423))

(assert (= b!4213430 b!4213420))

(assert (= start!402682 b!4213430))

(assert (= (and start!402682 ((_ is Cons!46332) pBis!121)) b!4213406))

(assert (= (and start!402682 ((_ is Cons!46332) suffix!1557)) b!4213408))

(assert (= (and start!402682 ((_ is Cons!46332) suffixBis!41)) b!4213417))

(declare-fun m!4801249 () Bool)

(assert (=> b!4213430 m!4801249))

(declare-fun m!4801251 () Bool)

(assert (=> b!4213411 m!4801251))

(declare-fun m!4801253 () Bool)

(assert (=> b!4213422 m!4801253))

(declare-fun m!4801255 () Bool)

(assert (=> b!4213420 m!4801255))

(declare-fun m!4801257 () Bool)

(assert (=> b!4213420 m!4801257))

(declare-fun m!4801259 () Bool)

(assert (=> b!4213405 m!4801259))

(declare-fun m!4801261 () Bool)

(assert (=> b!4213405 m!4801261))

(declare-fun m!4801263 () Bool)

(assert (=> b!4213412 m!4801263))

(declare-fun m!4801265 () Bool)

(assert (=> b!4213412 m!4801265))

(declare-fun m!4801267 () Bool)

(assert (=> b!4213416 m!4801267))

(declare-fun m!4801269 () Bool)

(assert (=> b!4213418 m!4801269))

(declare-fun m!4801271 () Bool)

(assert (=> b!4213415 m!4801271))

(declare-fun m!4801273 () Bool)

(assert (=> b!4213415 m!4801273))

(declare-fun m!4801275 () Bool)

(assert (=> b!4213415 m!4801275))

(declare-fun m!4801277 () Bool)

(assert (=> b!4213415 m!4801277))

(declare-fun m!4801279 () Bool)

(assert (=> b!4213415 m!4801279))

(declare-fun m!4801281 () Bool)

(assert (=> b!4213415 m!4801281))

(assert (=> b!4213415 m!4801277))

(declare-fun m!4801283 () Bool)

(assert (=> b!4213415 m!4801283))

(declare-fun m!4801285 () Bool)

(assert (=> b!4213415 m!4801285))

(assert (=> b!4213415 m!4801285))

(declare-fun m!4801287 () Bool)

(assert (=> b!4213415 m!4801287))

(declare-fun m!4801289 () Bool)

(assert (=> b!4213403 m!4801289))

(declare-fun m!4801291 () Bool)

(assert (=> b!4213402 m!4801291))

(declare-fun m!4801293 () Bool)

(assert (=> start!402682 m!4801293))

(declare-fun m!4801295 () Bool)

(assert (=> start!402682 m!4801295))

(declare-fun m!4801297 () Bool)

(assert (=> b!4213425 m!4801297))

(declare-fun m!4801299 () Bool)

(assert (=> b!4213429 m!4801299))

(assert (=> b!4213429 m!4801299))

(declare-fun m!4801301 () Bool)

(assert (=> b!4213429 m!4801301))

(declare-fun m!4801303 () Bool)

(assert (=> b!4213398 m!4801303))

(declare-fun m!4801305 () Bool)

(assert (=> b!4213428 m!4801305))

(declare-fun m!4801307 () Bool)

(assert (=> b!4213404 m!4801307))

(declare-fun m!4801309 () Bool)

(assert (=> b!4213410 m!4801309))

(declare-fun m!4801311 () Bool)

(assert (=> b!4213410 m!4801311))

(declare-fun m!4801313 () Bool)

(assert (=> b!4213409 m!4801313))

(declare-fun m!4801315 () Bool)

(assert (=> b!4213409 m!4801315))

(declare-fun m!4801317 () Bool)

(assert (=> b!4213409 m!4801317))

(declare-fun m!4801319 () Bool)

(assert (=> b!4213419 m!4801319))

(declare-fun m!4801321 () Bool)

(assert (=> b!4213427 m!4801321))

(check-sat (not b!4213427) (not b!4213422) (not b_next!124137) (not b!4213405) b_and!331745 (not b!4213408) (not b_next!124143) b_and!331737 (not b_next!124135) b_and!331735 (not b!4213421) (not b!4213430) (not b_next!124139) (not b!4213400) b_and!331741 (not start!402682) (not b!4213419) (not b!4213429) (not b!4213415) (not b!4213404) (not b!4213428) (not b!4213417) (not b_next!124145) b_and!331743 tp_is_empty!22293 b_and!331747 (not b!4213403) (not b!4213410) (not b!4213418) (not b!4213402) (not b!4213420) b_and!331739 (not b!4213406) (not b!4213398) (not b!4213409) (not b_next!124141) (not b!4213425) (not b!4213401) (not b!4213411) (not b!4213416) (not b!4213412) b_and!331733 (not b_next!124131) (not b_next!124133))
(check-sat b_and!331741 (not b_next!124137) b_and!331747 b_and!331745 (not b_next!124143) b_and!331737 (not b_next!124135) b_and!331739 b_and!331735 (not b_next!124141) (not b_next!124139) (not b_next!124145) b_and!331743 b_and!331733 (not b_next!124131) (not b_next!124133))
