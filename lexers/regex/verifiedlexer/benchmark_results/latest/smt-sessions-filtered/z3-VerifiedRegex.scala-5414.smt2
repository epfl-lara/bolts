; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275420 () Bool)

(assert start!275420)

(declare-fun b!2833456 () Bool)

(declare-fun b_free!81581 () Bool)

(declare-fun b_next!82285 () Bool)

(assert (=> b!2833456 (= b_free!81581 (not b_next!82285))))

(declare-fun tp!905862 () Bool)

(declare-fun b_and!207347 () Bool)

(assert (=> b!2833456 (= tp!905862 b_and!207347)))

(declare-fun b_free!81583 () Bool)

(declare-fun b_next!82287 () Bool)

(assert (=> b!2833456 (= b_free!81583 (not b_next!82287))))

(declare-fun tp!905858 () Bool)

(declare-fun b_and!207349 () Bool)

(assert (=> b!2833456 (= tp!905858 b_and!207349)))

(declare-fun b!2833463 () Bool)

(declare-fun b_free!81585 () Bool)

(declare-fun b_next!82289 () Bool)

(assert (=> b!2833463 (= b_free!81585 (not b_next!82289))))

(declare-fun tp!905865 () Bool)

(declare-fun b_and!207351 () Bool)

(assert (=> b!2833463 (= tp!905865 b_and!207351)))

(declare-fun b_free!81587 () Bool)

(declare-fun b_next!82291 () Bool)

(assert (=> b!2833463 (= b_free!81587 (not b_next!82291))))

(declare-fun tp!905859 () Bool)

(declare-fun b_and!207353 () Bool)

(assert (=> b!2833463 (= tp!905859 b_and!207353)))

(declare-fun e!1794119 () Bool)

(assert (=> b!2833456 (= e!1794119 (and tp!905862 tp!905858))))

(declare-fun b!2833457 () Bool)

(declare-fun e!1794128 () Bool)

(assert (=> b!2833457 (= e!1794128 false)))

(declare-datatypes ((LexerInterface!4604 0))(
  ( (LexerInterfaceExt!4601 (__x!22226 Int)) (Lexer!4602) )
))
(declare-fun thiss!11007 () LexerInterface!4604)

(declare-datatypes ((List!33555 0))(
  ( (Nil!33431) (Cons!33431 (h!38851 (_ BitVec 16)) (t!231652 List!33555)) )
))
(declare-datatypes ((TokenValue!5244 0))(
  ( (FloatLiteralValue!10488 (text!37153 List!33555)) (TokenValueExt!5243 (__x!22227 Int)) (Broken!26220 (value!161242 List!33555)) (Object!5367) (End!5244) (Def!5244) (Underscore!5244) (Match!5244) (Else!5244) (Error!5244) (Case!5244) (If!5244) (Extends!5244) (Abstract!5244) (Class!5244) (Val!5244) (DelimiterValue!10488 (del!5304 List!33555)) (KeywordValue!5250 (value!161243 List!33555)) (CommentValue!10488 (value!161244 List!33555)) (WhitespaceValue!10488 (value!161245 List!33555)) (IndentationValue!5244 (value!161246 List!33555)) (String!36741) (Int32!5244) (Broken!26221 (value!161247 List!33555)) (Boolean!5245) (Unit!47392) (OperatorValue!5247 (op!5304 List!33555)) (IdentifierValue!10488 (value!161248 List!33555)) (IdentifierValue!10489 (value!161249 List!33555)) (WhitespaceValue!10489 (value!161250 List!33555)) (True!10488) (False!10488) (Broken!26222 (value!161251 List!33555)) (Broken!26223 (value!161252 List!33555)) (True!10489) (RightBrace!5244) (RightBracket!5244) (Colon!5244) (Null!5244) (Comma!5244) (LeftBracket!5244) (False!10489) (LeftBrace!5244) (ImaginaryLiteralValue!5244 (text!37154 List!33555)) (StringLiteralValue!15732 (value!161253 List!33555)) (EOFValue!5244 (value!161254 List!33555)) (IdentValue!5244 (value!161255 List!33555)) (DelimiterValue!10489 (value!161256 List!33555)) (DedentValue!5244 (value!161257 List!33555)) (NewLineValue!5244 (value!161258 List!33555)) (IntegerValue!15732 (value!161259 (_ BitVec 32)) (text!37155 List!33555)) (IntegerValue!15733 (value!161260 Int) (text!37156 List!33555)) (Times!5244) (Or!5244) (Equal!5244) (Minus!5244) (Broken!26224 (value!161261 List!33555)) (And!5244) (Div!5244) (LessEqual!5244) (Mod!5244) (Concat!13649) (Not!5244) (Plus!5244) (SpaceValue!5244 (value!161262 List!33555)) (IntegerValue!15734 (value!161263 Int) (text!37157 List!33555)) (StringLiteralValue!15733 (text!37158 List!33555)) (FloatLiteralValue!10489 (text!37159 List!33555)) (BytesLiteralValue!5244 (value!161264 List!33555)) (CommentValue!10489 (value!161265 List!33555)) (StringLiteralValue!15734 (value!161266 List!33555)) (ErrorTokenValue!5244 (msg!5305 List!33555)) )
))
(declare-datatypes ((C!16992 0))(
  ( (C!16993 (val!10508 Int)) )
))
(declare-datatypes ((List!33556 0))(
  ( (Nil!33432) (Cons!33432 (h!38852 C!16992) (t!231653 List!33556)) )
))
(declare-datatypes ((IArray!20771 0))(
  ( (IArray!20772 (innerList!10443 List!33556)) )
))
(declare-datatypes ((Conc!10383 0))(
  ( (Node!10383 (left!25225 Conc!10383) (right!25555 Conc!10383) (csize!20996 Int) (cheight!10594 Int)) (Leaf!15798 (xs!13495 IArray!20771) (csize!20997 Int)) (Empty!10383) )
))
(declare-datatypes ((String!36742 0))(
  ( (String!36743 (value!161267 String)) )
))
(declare-datatypes ((Regex!8405 0))(
  ( (ElementMatch!8405 (c!458055 C!16992)) (Concat!13650 (regOne!17322 Regex!8405) (regTwo!17322 Regex!8405)) (EmptyExpr!8405) (Star!8405 (reg!8734 Regex!8405)) (EmptyLang!8405) (Union!8405 (regOne!17323 Regex!8405) (regTwo!17323 Regex!8405)) )
))
(declare-datatypes ((BalanceConc!20404 0))(
  ( (BalanceConc!20405 (c!458056 Conc!10383)) )
))
(declare-datatypes ((TokenValueInjection!9916 0))(
  ( (TokenValueInjection!9917 (toValue!7048 Int) (toChars!6907 Int)) )
))
(declare-datatypes ((Rule!9828 0))(
  ( (Rule!9829 (regex!5014 Regex!8405) (tag!5518 String!36742) (isSeparator!5014 Bool) (transformation!5014 TokenValueInjection!9916)) )
))
(declare-datatypes ((Token!9430 0))(
  ( (Token!9431 (value!161268 TokenValue!5244) (rule!7442 Rule!9828) (size!26015 Int) (originalCharacters!5746 List!33556)) )
))
(declare-datatypes ((List!33557 0))(
  ( (Nil!33433) (Cons!33433 (h!38853 Token!9430) (t!231654 List!33557)) )
))
(declare-fun l!4019 () List!33557)

(declare-fun lt!1010621 () Bool)

(declare-datatypes ((List!33558 0))(
  ( (Nil!33434) (Cons!33434 (h!38854 Rule!9828) (t!231655 List!33558)) )
))
(declare-fun rules!1047 () List!33558)

(declare-datatypes ((IArray!20773 0))(
  ( (IArray!20774 (innerList!10444 List!33557)) )
))
(declare-datatypes ((Conc!10384 0))(
  ( (Node!10384 (left!25226 Conc!10384) (right!25556 Conc!10384) (csize!20998 Int) (cheight!10595 Int)) (Leaf!15799 (xs!13496 IArray!20773) (csize!20999 Int)) (Empty!10384) )
))
(declare-datatypes ((BalanceConc!20406 0))(
  ( (BalanceConc!20407 (c!458057 Conc!10384)) )
))
(declare-fun rulesProduceEachTokenIndividually!1120 (LexerInterface!4604 List!33558 BalanceConc!20406) Bool)

(declare-fun seqFromList!3260 (List!33557) BalanceConc!20406)

(assert (=> b!2833457 (= lt!1010621 (rulesProduceEachTokenIndividually!1120 thiss!11007 rules!1047 (seqFromList!3260 l!4019)))))

(declare-fun e!1794120 () Bool)

(declare-fun tp!905863 () Bool)

(declare-fun e!1794121 () Bool)

(declare-fun b!2833458 () Bool)

(declare-fun inv!21 (TokenValue!5244) Bool)

(assert (=> b!2833458 (= e!1794121 (and (inv!21 (value!161268 (h!38853 l!4019))) e!1794120 tp!905863))))

(declare-fun tp!905860 () Bool)

(declare-fun e!1794124 () Bool)

(declare-fun b!2833459 () Bool)

(declare-fun inv!45389 (String!36742) Bool)

(declare-fun inv!45392 (TokenValueInjection!9916) Bool)

(assert (=> b!2833459 (= e!1794120 (and tp!905860 (inv!45389 (tag!5518 (rule!7442 (h!38853 l!4019)))) (inv!45392 (transformation!5014 (rule!7442 (h!38853 l!4019)))) e!1794124))))

(declare-fun b!2833460 () Bool)

(declare-fun res!1179403 () Bool)

(assert (=> b!2833460 (=> (not res!1179403) (not e!1794128))))

(declare-fun rulesProduceEachTokenIndividuallyList!1647 (LexerInterface!4604 List!33558 List!33557) Bool)

(assert (=> b!2833460 (= res!1179403 (rulesProduceEachTokenIndividuallyList!1647 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2833461 () Bool)

(declare-fun e!1794126 () Bool)

(declare-fun e!1794127 () Bool)

(declare-fun tp!905861 () Bool)

(assert (=> b!2833461 (= e!1794126 (and e!1794127 tp!905861))))

(declare-fun b!2833462 () Bool)

(declare-fun res!1179406 () Bool)

(assert (=> b!2833462 (=> (not res!1179406) (not e!1794128))))

(declare-fun isEmpty!18433 (List!33558) Bool)

(assert (=> b!2833462 (= res!1179406 (not (isEmpty!18433 rules!1047)))))

(declare-fun res!1179404 () Bool)

(assert (=> start!275420 (=> (not res!1179404) (not e!1794128))))

(get-info :version)

(assert (=> start!275420 (= res!1179404 ((_ is Lexer!4602) thiss!11007))))

(assert (=> start!275420 e!1794128))

(assert (=> start!275420 true))

(assert (=> start!275420 e!1794126))

(declare-fun e!1794123 () Bool)

(assert (=> start!275420 e!1794123))

(assert (=> b!2833463 (= e!1794124 (and tp!905865 tp!905859))))

(declare-fun b!2833464 () Bool)

(declare-fun res!1179405 () Bool)

(assert (=> b!2833464 (=> (not res!1179405) (not e!1794128))))

(declare-fun rulesInvariant!4020 (LexerInterface!4604 List!33558) Bool)

(assert (=> b!2833464 (= res!1179405 (rulesInvariant!4020 thiss!11007 rules!1047))))

(declare-fun b!2833465 () Bool)

(declare-fun tp!905866 () Bool)

(declare-fun inv!45393 (Token!9430) Bool)

(assert (=> b!2833465 (= e!1794123 (and (inv!45393 (h!38853 l!4019)) e!1794121 tp!905866))))

(declare-fun tp!905864 () Bool)

(declare-fun b!2833466 () Bool)

(assert (=> b!2833466 (= e!1794127 (and tp!905864 (inv!45389 (tag!5518 (h!38854 rules!1047))) (inv!45392 (transformation!5014 (h!38854 rules!1047))) e!1794119))))

(assert (= (and start!275420 res!1179404) b!2833462))

(assert (= (and b!2833462 res!1179406) b!2833464))

(assert (= (and b!2833464 res!1179405) b!2833460))

(assert (= (and b!2833460 res!1179403) b!2833457))

(assert (= b!2833466 b!2833456))

(assert (= b!2833461 b!2833466))

(assert (= (and start!275420 ((_ is Cons!33434) rules!1047)) b!2833461))

(assert (= b!2833459 b!2833463))

(assert (= b!2833458 b!2833459))

(assert (= b!2833465 b!2833458))

(assert (= (and start!275420 ((_ is Cons!33433) l!4019)) b!2833465))

(declare-fun m!3263177 () Bool)

(assert (=> b!2833459 m!3263177))

(declare-fun m!3263179 () Bool)

(assert (=> b!2833459 m!3263179))

(declare-fun m!3263181 () Bool)

(assert (=> b!2833465 m!3263181))

(declare-fun m!3263183 () Bool)

(assert (=> b!2833458 m!3263183))

(declare-fun m!3263185 () Bool)

(assert (=> b!2833460 m!3263185))

(declare-fun m!3263187 () Bool)

(assert (=> b!2833466 m!3263187))

(declare-fun m!3263189 () Bool)

(assert (=> b!2833466 m!3263189))

(declare-fun m!3263191 () Bool)

(assert (=> b!2833457 m!3263191))

(assert (=> b!2833457 m!3263191))

(declare-fun m!3263193 () Bool)

(assert (=> b!2833457 m!3263193))

(declare-fun m!3263195 () Bool)

(assert (=> b!2833462 m!3263195))

(declare-fun m!3263197 () Bool)

(assert (=> b!2833464 m!3263197))

(check-sat (not b!2833464) (not b_next!82285) (not b!2833459) (not b!2833462) b_and!207351 b_and!207349 (not b!2833465) (not b_next!82287) b_and!207353 (not b_next!82291) b_and!207347 (not b!2833457) (not b!2833460) (not b_next!82289) (not b!2833466) (not b!2833461) (not b!2833458))
(check-sat (not b_next!82285) b_and!207351 b_and!207349 (not b_next!82289) (not b_next!82287) b_and!207353 (not b_next!82291) b_and!207347)
