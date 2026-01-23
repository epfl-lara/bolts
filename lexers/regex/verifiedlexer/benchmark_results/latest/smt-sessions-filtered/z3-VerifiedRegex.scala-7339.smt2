; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390302 () Bool)

(assert start!390302)

(declare-fun b!4117394 () Bool)

(declare-fun b_free!116147 () Bool)

(declare-fun b_next!116851 () Bool)

(assert (=> b!4117394 (= b_free!116147 (not b_next!116851))))

(declare-fun tp!1254450 () Bool)

(declare-fun b_and!318229 () Bool)

(assert (=> b!4117394 (= tp!1254450 b_and!318229)))

(declare-fun b_free!116149 () Bool)

(declare-fun b_next!116853 () Bool)

(assert (=> b!4117394 (= b_free!116149 (not b_next!116853))))

(declare-fun tp!1254443 () Bool)

(declare-fun b_and!318231 () Bool)

(assert (=> b!4117394 (= tp!1254443 b_and!318231)))

(declare-fun b!4117384 () Bool)

(declare-fun b_free!116151 () Bool)

(declare-fun b_next!116855 () Bool)

(assert (=> b!4117384 (= b_free!116151 (not b_next!116855))))

(declare-fun tp!1254445 () Bool)

(declare-fun b_and!318233 () Bool)

(assert (=> b!4117384 (= tp!1254445 b_and!318233)))

(declare-fun b_free!116153 () Bool)

(declare-fun b_next!116857 () Bool)

(assert (=> b!4117384 (= b_free!116153 (not b_next!116857))))

(declare-fun tp!1254448 () Bool)

(declare-fun b_and!318235 () Bool)

(assert (=> b!4117384 (= tp!1254448 b_and!318235)))

(declare-fun b!4117397 () Bool)

(declare-fun b_free!116155 () Bool)

(declare-fun b_next!116859 () Bool)

(assert (=> b!4117397 (= b_free!116155 (not b_next!116859))))

(declare-fun tp!1254447 () Bool)

(declare-fun b_and!318237 () Bool)

(assert (=> b!4117397 (= tp!1254447 b_and!318237)))

(declare-fun b_free!116157 () Bool)

(declare-fun b_next!116861 () Bool)

(assert (=> b!4117397 (= b_free!116157 (not b_next!116861))))

(declare-fun tp!1254449 () Bool)

(declare-fun b_and!318239 () Bool)

(assert (=> b!4117397 (= tp!1254449 b_and!318239)))

(declare-datatypes ((List!44591 0))(
  ( (Nil!44467) (Cons!44467 (h!49887 (_ BitVec 16)) (t!340494 List!44591)) )
))
(declare-datatypes ((TokenValue!7480 0))(
  ( (FloatLiteralValue!14960 (text!52805 List!44591)) (TokenValueExt!7479 (__x!27177 Int)) (Broken!37400 (value!227153 List!44591)) (Object!7603) (End!7480) (Def!7480) (Underscore!7480) (Match!7480) (Else!7480) (Error!7480) (Case!7480) (If!7480) (Extends!7480) (Abstract!7480) (Class!7480) (Val!7480) (DelimiterValue!14960 (del!7540 List!44591)) (KeywordValue!7486 (value!227154 List!44591)) (CommentValue!14960 (value!227155 List!44591)) (WhitespaceValue!14960 (value!227156 List!44591)) (IndentationValue!7480 (value!227157 List!44591)) (String!51149) (Int32!7480) (Broken!37401 (value!227158 List!44591)) (Boolean!7481) (Unit!63826) (OperatorValue!7483 (op!7540 List!44591)) (IdentifierValue!14960 (value!227159 List!44591)) (IdentifierValue!14961 (value!227160 List!44591)) (WhitespaceValue!14961 (value!227161 List!44591)) (True!14960) (False!14960) (Broken!37402 (value!227162 List!44591)) (Broken!37403 (value!227163 List!44591)) (True!14961) (RightBrace!7480) (RightBracket!7480) (Colon!7480) (Null!7480) (Comma!7480) (LeftBracket!7480) (False!14961) (LeftBrace!7480) (ImaginaryLiteralValue!7480 (text!52806 List!44591)) (StringLiteralValue!22440 (value!227164 List!44591)) (EOFValue!7480 (value!227165 List!44591)) (IdentValue!7480 (value!227166 List!44591)) (DelimiterValue!14961 (value!227167 List!44591)) (DedentValue!7480 (value!227168 List!44591)) (NewLineValue!7480 (value!227169 List!44591)) (IntegerValue!22440 (value!227170 (_ BitVec 32)) (text!52807 List!44591)) (IntegerValue!22441 (value!227171 Int) (text!52808 List!44591)) (Times!7480) (Or!7480) (Equal!7480) (Minus!7480) (Broken!37404 (value!227172 List!44591)) (And!7480) (Div!7480) (LessEqual!7480) (Mod!7480) (Concat!19635) (Not!7480) (Plus!7480) (SpaceValue!7480 (value!227173 List!44591)) (IntegerValue!22442 (value!227174 Int) (text!52809 List!44591)) (StringLiteralValue!22441 (text!52810 List!44591)) (FloatLiteralValue!14961 (text!52811 List!44591)) (BytesLiteralValue!7480 (value!227175 List!44591)) (CommentValue!14961 (value!227176 List!44591)) (StringLiteralValue!22442 (value!227177 List!44591)) (ErrorTokenValue!7480 (msg!7541 List!44591)) )
))
(declare-datatypes ((C!24496 0))(
  ( (C!24497 (val!14358 Int)) )
))
(declare-datatypes ((List!44592 0))(
  ( (Nil!44468) (Cons!44468 (h!49888 C!24496) (t!340495 List!44592)) )
))
(declare-datatypes ((IArray!26927 0))(
  ( (IArray!26928 (innerList!13521 List!44592)) )
))
(declare-datatypes ((Conc!13461 0))(
  ( (Node!13461 (left!33320 Conc!13461) (right!33650 Conc!13461) (csize!27152 Int) (cheight!13672 Int)) (Leaf!20801 (xs!16767 IArray!26927) (csize!27153 Int)) (Empty!13461) )
))
(declare-datatypes ((BalanceConc!26516 0))(
  ( (BalanceConc!26517 (c!707260 Conc!13461)) )
))
(declare-datatypes ((String!51150 0))(
  ( (String!51151 (value!227178 String)) )
))
(declare-datatypes ((Regex!12155 0))(
  ( (ElementMatch!12155 (c!707261 C!24496)) (Concat!19636 (regOne!24822 Regex!12155) (regTwo!24822 Regex!12155)) (EmptyExpr!12155) (Star!12155 (reg!12484 Regex!12155)) (EmptyLang!12155) (Union!12155 (regOne!24823 Regex!12155) (regTwo!24823 Regex!12155)) )
))
(declare-datatypes ((TokenValueInjection!14388 0))(
  ( (TokenValueInjection!14389 (toValue!9902 Int) (toChars!9761 Int)) )
))
(declare-datatypes ((Rule!14300 0))(
  ( (Rule!14301 (regex!7250 Regex!12155) (tag!8110 String!51150) (isSeparator!7250 Bool) (transformation!7250 TokenValueInjection!14388)) )
))
(declare-fun rBis!149 () Rule!14300)

(declare-fun tp!1254451 () Bool)

(declare-fun e!2554751 () Bool)

(declare-fun e!2554762 () Bool)

(declare-fun b!4117383 () Bool)

(declare-fun inv!59058 (String!51150) Bool)

(declare-fun inv!59060 (TokenValueInjection!14388) Bool)

(assert (=> b!4117383 (= e!2554762 (and tp!1254451 (inv!59058 (tag!8110 rBis!149)) (inv!59060 (transformation!7250 rBis!149)) e!2554751))))

(assert (=> b!4117384 (= e!2554751 (and tp!1254445 tp!1254448))))

(declare-fun b!4117385 () Bool)

(declare-fun res!1681695 () Bool)

(declare-fun e!2554759 () Bool)

(assert (=> b!4117385 (=> (not res!1681695) (not e!2554759))))

(declare-fun p!2912 () List!44592)

(declare-fun input!3238 () List!44592)

(declare-fun isPrefix!4185 (List!44592 List!44592) Bool)

(assert (=> b!4117385 (= res!1681695 (isPrefix!4185 p!2912 input!3238))))

(declare-fun b!4117386 () Bool)

(declare-fun res!1681697 () Bool)

(assert (=> b!4117386 (=> (not res!1681697) (not e!2554759))))

(declare-datatypes ((List!44593 0))(
  ( (Nil!44469) (Cons!44469 (h!49889 Rule!14300) (t!340496 List!44593)) )
))
(declare-fun rules!3756 () List!44593)

(declare-fun isEmpty!26439 (List!44593) Bool)

(assert (=> b!4117386 (= res!1681697 (not (isEmpty!26439 rules!3756)))))

(declare-fun b!4117387 () Bool)

(declare-fun res!1681692 () Bool)

(assert (=> b!4117387 (=> (not res!1681692) (not e!2554759))))

(declare-fun contains!8922 (List!44593 Rule!14300) Bool)

(assert (=> b!4117387 (= res!1681692 (contains!8922 rules!3756 rBis!149))))

(declare-fun e!2554752 () Bool)

(declare-fun b!4117388 () Bool)

(declare-fun e!2554764 () Bool)

(declare-fun tp!1254452 () Bool)

(assert (=> b!4117388 (= e!2554764 (and tp!1254452 (inv!59058 (tag!8110 (h!49889 rules!3756))) (inv!59060 (transformation!7250 (h!49889 rules!3756))) e!2554752))))

(declare-fun res!1681699 () Bool)

(assert (=> start!390302 (=> (not res!1681699) (not e!2554759))))

(declare-datatypes ((LexerInterface!6839 0))(
  ( (LexerInterfaceExt!6836 (__x!27178 Int)) (Lexer!6837) )
))
(declare-fun thiss!25645 () LexerInterface!6839)

(get-info :version)

(assert (=> start!390302 (= res!1681699 ((_ is Lexer!6837) thiss!25645))))

(assert (=> start!390302 e!2554759))

(declare-fun e!2554758 () Bool)

(assert (=> start!390302 e!2554758))

(declare-fun e!2554753 () Bool)

(assert (=> start!390302 e!2554753))

(assert (=> start!390302 true))

(declare-fun e!2554757 () Bool)

(assert (=> start!390302 e!2554757))

(declare-fun e!2554756 () Bool)

(assert (=> start!390302 e!2554756))

(assert (=> start!390302 e!2554762))

(declare-fun e!2554754 () Bool)

(declare-fun b!4117389 () Bool)

(declare-fun tp!1254442 () Bool)

(declare-fun r!4008 () Rule!14300)

(assert (=> b!4117389 (= e!2554757 (and tp!1254442 (inv!59058 (tag!8110 r!4008)) (inv!59060 (transformation!7250 r!4008)) e!2554754))))

(declare-fun b!4117390 () Bool)

(declare-fun res!1681696 () Bool)

(assert (=> b!4117390 (=> (not res!1681696) (not e!2554759))))

(declare-fun isEmpty!26440 (List!44592) Bool)

(assert (=> b!4117390 (= res!1681696 (not (isEmpty!26440 p!2912)))))

(declare-fun b!4117391 () Bool)

(declare-fun e!2554755 () Bool)

(assert (=> b!4117391 (= e!2554755 false)))

(declare-fun lt!1469022 () Int)

(declare-fun getIndex!598 (List!44593 Rule!14300) Int)

(assert (=> b!4117391 (= lt!1469022 (getIndex!598 rules!3756 r!4008))))

(declare-fun lt!1469021 () Int)

(assert (=> b!4117391 (= lt!1469021 (getIndex!598 rules!3756 rBis!149))))

(declare-fun b!4117392 () Bool)

(declare-fun tp_is_empty!21233 () Bool)

(declare-fun tp!1254441 () Bool)

(assert (=> b!4117392 (= e!2554756 (and tp_is_empty!21233 tp!1254441))))

(declare-fun b!4117393 () Bool)

(assert (=> b!4117393 (= e!2554759 e!2554755)))

(declare-fun res!1681693 () Bool)

(assert (=> b!4117393 (=> (not res!1681693) (not e!2554755))))

(declare-fun lt!1469020 () BalanceConc!26516)

(declare-datatypes ((Token!13430 0))(
  ( (Token!13431 (value!227179 TokenValue!7480) (rule!10316 Rule!14300) (size!32909 Int) (originalCharacters!7746 List!44592)) )
))
(declare-datatypes ((tuple2!42958 0))(
  ( (tuple2!42959 (_1!24613 Token!13430) (_2!24613 List!44592)) )
))
(declare-datatypes ((Option!9558 0))(
  ( (None!9557) (Some!9557 (v!40135 tuple2!42958)) )
))
(declare-fun maxPrefix!4031 (LexerInterface!6839 List!44593 List!44592) Option!9558)

(declare-fun apply!10323 (TokenValueInjection!14388 BalanceConc!26516) TokenValue!7480)

(declare-fun size!32910 (List!44592) Int)

(declare-fun getSuffix!2514 (List!44592 List!44592) List!44592)

(assert (=> b!4117393 (= res!1681693 (= (maxPrefix!4031 thiss!25645 rules!3756 input!3238) (Some!9557 (tuple2!42959 (Token!13431 (apply!10323 (transformation!7250 r!4008) lt!1469020) r!4008 (size!32910 p!2912) p!2912) (getSuffix!2514 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63827 0))(
  ( (Unit!63828) )
))
(declare-fun lt!1469019 () Unit!63827)

(declare-fun lemmaSemiInverse!2108 (TokenValueInjection!14388 BalanceConc!26516) Unit!63827)

(assert (=> b!4117393 (= lt!1469019 (lemmaSemiInverse!2108 (transformation!7250 r!4008) lt!1469020))))

(declare-fun seqFromList!5367 (List!44592) BalanceConc!26516)

(assert (=> b!4117393 (= lt!1469020 (seqFromList!5367 p!2912))))

(assert (=> b!4117394 (= e!2554752 (and tp!1254450 tp!1254443))))

(declare-fun b!4117395 () Bool)

(declare-fun tp!1254446 () Bool)

(assert (=> b!4117395 (= e!2554753 (and tp_is_empty!21233 tp!1254446))))

(declare-fun b!4117396 () Bool)

(declare-fun res!1681694 () Bool)

(assert (=> b!4117396 (=> (not res!1681694) (not e!2554759))))

(declare-fun rulesInvariant!6136 (LexerInterface!6839 List!44593) Bool)

(assert (=> b!4117396 (= res!1681694 (rulesInvariant!6136 thiss!25645 rules!3756))))

(assert (=> b!4117397 (= e!2554754 (and tp!1254447 tp!1254449))))

(declare-fun b!4117398 () Bool)

(declare-fun tp!1254444 () Bool)

(assert (=> b!4117398 (= e!2554758 (and e!2554764 tp!1254444))))

(declare-fun b!4117399 () Bool)

(declare-fun res!1681698 () Bool)

(assert (=> b!4117399 (=> (not res!1681698) (not e!2554755))))

(declare-fun matchR!5986 (Regex!12155 List!44592) Bool)

(assert (=> b!4117399 (= res!1681698 (matchR!5986 (regex!7250 r!4008) p!2912))))

(declare-fun b!4117400 () Bool)

(declare-fun res!1681691 () Bool)

(assert (=> b!4117400 (=> (not res!1681691) (not e!2554759))))

(assert (=> b!4117400 (= res!1681691 (contains!8922 rules!3756 r!4008))))

(assert (= (and start!390302 res!1681699) b!4117385))

(assert (= (and b!4117385 res!1681695) b!4117386))

(assert (= (and b!4117386 res!1681697) b!4117396))

(assert (= (and b!4117396 res!1681694) b!4117400))

(assert (= (and b!4117400 res!1681691) b!4117387))

(assert (= (and b!4117387 res!1681692) b!4117390))

(assert (= (and b!4117390 res!1681696) b!4117393))

(assert (= (and b!4117393 res!1681693) b!4117399))

(assert (= (and b!4117399 res!1681698) b!4117391))

(assert (= b!4117388 b!4117394))

(assert (= b!4117398 b!4117388))

(assert (= (and start!390302 ((_ is Cons!44469) rules!3756)) b!4117398))

(assert (= (and start!390302 ((_ is Cons!44468) p!2912)) b!4117395))

(assert (= b!4117389 b!4117397))

(assert (= start!390302 b!4117389))

(assert (= (and start!390302 ((_ is Cons!44468) input!3238)) b!4117392))

(assert (= b!4117383 b!4117384))

(assert (= start!390302 b!4117383))

(declare-fun m!4717019 () Bool)

(assert (=> b!4117399 m!4717019))

(declare-fun m!4717021 () Bool)

(assert (=> b!4117390 m!4717021))

(declare-fun m!4717023 () Bool)

(assert (=> b!4117383 m!4717023))

(declare-fun m!4717025 () Bool)

(assert (=> b!4117383 m!4717025))

(declare-fun m!4717027 () Bool)

(assert (=> b!4117393 m!4717027))

(declare-fun m!4717029 () Bool)

(assert (=> b!4117393 m!4717029))

(declare-fun m!4717031 () Bool)

(assert (=> b!4117393 m!4717031))

(declare-fun m!4717033 () Bool)

(assert (=> b!4117393 m!4717033))

(declare-fun m!4717035 () Bool)

(assert (=> b!4117393 m!4717035))

(declare-fun m!4717037 () Bool)

(assert (=> b!4117393 m!4717037))

(declare-fun m!4717039 () Bool)

(assert (=> b!4117400 m!4717039))

(declare-fun m!4717041 () Bool)

(assert (=> b!4117387 m!4717041))

(declare-fun m!4717043 () Bool)

(assert (=> b!4117388 m!4717043))

(declare-fun m!4717045 () Bool)

(assert (=> b!4117388 m!4717045))

(declare-fun m!4717047 () Bool)

(assert (=> b!4117396 m!4717047))

(declare-fun m!4717049 () Bool)

(assert (=> b!4117391 m!4717049))

(declare-fun m!4717051 () Bool)

(assert (=> b!4117391 m!4717051))

(declare-fun m!4717053 () Bool)

(assert (=> b!4117385 m!4717053))

(declare-fun m!4717055 () Bool)

(assert (=> b!4117386 m!4717055))

(declare-fun m!4717057 () Bool)

(assert (=> b!4117389 m!4717057))

(declare-fun m!4717059 () Bool)

(assert (=> b!4117389 m!4717059))

(check-sat (not b_next!116861) b_and!318231 (not b!4117390) b_and!318235 (not b!4117388) b_and!318239 (not b!4117389) (not b_next!116857) (not b!4117398) (not b!4117400) b_and!318233 (not b!4117396) (not b_next!116851) (not b!4117399) tp_is_empty!21233 (not b!4117393) (not b_next!116859) (not b!4117392) (not b_next!116853) b_and!318237 (not b!4117385) b_and!318229 (not b_next!116855) (not b!4117386) (not b!4117391) (not b!4117383) (not b!4117387) (not b!4117395))
(check-sat (not b_next!116851) (not b_next!116861) b_and!318231 (not b_next!116859) b_and!318235 b_and!318239 (not b_next!116857) b_and!318229 (not b_next!116855) b_and!318233 (not b_next!116853) b_and!318237)
