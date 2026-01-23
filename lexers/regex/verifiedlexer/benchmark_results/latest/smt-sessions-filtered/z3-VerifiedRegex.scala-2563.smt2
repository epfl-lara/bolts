; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137506 () Bool)

(assert start!137506)

(declare-fun res!664438 () Bool)

(declare-fun e!937843 () Bool)

(assert (=> start!137506 (=> (not res!664438) (not e!937843))))

(declare-datatypes ((List!15416 0))(
  ( (Nil!15350) (Cons!15350 (h!20751 (_ BitVec 16)) (t!135335 List!15416)) )
))
(declare-datatypes ((TokenValue!2815 0))(
  ( (FloatLiteralValue!5630 (text!20150 List!15416)) (TokenValueExt!2814 (__x!9420 Int)) (Broken!14075 (value!87284 List!15416)) (Object!2880) (End!2815) (Def!2815) (Underscore!2815) (Match!2815) (Else!2815) (Error!2815) (Case!2815) (If!2815) (Extends!2815) (Abstract!2815) (Class!2815) (Val!2815) (DelimiterValue!5630 (del!2875 List!15416)) (KeywordValue!2821 (value!87285 List!15416)) (CommentValue!5630 (value!87286 List!15416)) (WhitespaceValue!5630 (value!87287 List!15416)) (IndentationValue!2815 (value!87288 List!15416)) (String!18330) (Int32!2815) (Broken!14076 (value!87289 List!15416)) (Boolean!2816) (Unit!25086) (OperatorValue!2818 (op!2875 List!15416)) (IdentifierValue!5630 (value!87290 List!15416)) (IdentifierValue!5631 (value!87291 List!15416)) (WhitespaceValue!5631 (value!87292 List!15416)) (True!5630) (False!5630) (Broken!14077 (value!87293 List!15416)) (Broken!14078 (value!87294 List!15416)) (True!5631) (RightBrace!2815) (RightBracket!2815) (Colon!2815) (Null!2815) (Comma!2815) (LeftBracket!2815) (False!5631) (LeftBrace!2815) (ImaginaryLiteralValue!2815 (text!20151 List!15416)) (StringLiteralValue!8445 (value!87295 List!15416)) (EOFValue!2815 (value!87296 List!15416)) (IdentValue!2815 (value!87297 List!15416)) (DelimiterValue!5631 (value!87298 List!15416)) (DedentValue!2815 (value!87299 List!15416)) (NewLineValue!2815 (value!87300 List!15416)) (IntegerValue!8445 (value!87301 (_ BitVec 32)) (text!20152 List!15416)) (IntegerValue!8446 (value!87302 Int) (text!20153 List!15416)) (Times!2815) (Or!2815) (Equal!2815) (Minus!2815) (Broken!14079 (value!87303 List!15416)) (And!2815) (Div!2815) (LessEqual!2815) (Mod!2815) (Concat!6854) (Not!2815) (Plus!2815) (SpaceValue!2815 (value!87304 List!15416)) (IntegerValue!8447 (value!87305 Int) (text!20154 List!15416)) (StringLiteralValue!8446 (text!20155 List!15416)) (FloatLiteralValue!5631 (text!20156 List!15416)) (BytesLiteralValue!2815 (value!87306 List!15416)) (CommentValue!5631 (value!87307 List!15416)) (StringLiteralValue!8447 (value!87308 List!15416)) (ErrorTokenValue!2815 (msg!2876 List!15416)) )
))
(declare-datatypes ((C!8256 0))(
  ( (C!8257 (val!4698 Int)) )
))
(declare-datatypes ((Regex!4039 0))(
  ( (ElementMatch!4039 (c!242134 C!8256)) (Concat!6855 (regOne!8590 Regex!4039) (regTwo!8590 Regex!4039)) (EmptyExpr!4039) (Star!4039 (reg!4368 Regex!4039)) (EmptyLang!4039) (Union!4039 (regOne!8591 Regex!4039) (regTwo!8591 Regex!4039)) )
))
(declare-datatypes ((String!18331 0))(
  ( (String!18332 (value!87309 String)) )
))
(declare-datatypes ((List!15417 0))(
  ( (Nil!15351) (Cons!15351 (h!20752 C!8256) (t!135336 List!15417)) )
))
(declare-datatypes ((IArray!10473 0))(
  ( (IArray!10474 (innerList!5294 List!15417)) )
))
(declare-datatypes ((Conc!5234 0))(
  ( (Node!5234 (left!13003 Conc!5234) (right!13333 Conc!5234) (csize!10698 Int) (cheight!5445 Int)) (Leaf!7798 (xs!7989 IArray!10473) (csize!10699 Int)) (Empty!5234) )
))
(declare-datatypes ((BalanceConc!10408 0))(
  ( (BalanceConc!10409 (c!242135 Conc!5234)) )
))
(declare-datatypes ((TokenValueInjection!5290 0))(
  ( (TokenValueInjection!5291 (toValue!4044 Int) (toChars!3903 Int)) )
))
(declare-datatypes ((Rule!5250 0))(
  ( (Rule!5251 (regex!2725 Regex!4039) (tag!2989 String!18331) (isSeparator!2725 Bool) (transformation!2725 TokenValueInjection!5290)) )
))
(declare-datatypes ((Token!5112 0))(
  ( (Token!5113 (value!87310 TokenValue!2815) (rule!4502 Rule!5250) (size!12508 Int) (originalCharacters!3587 List!15417)) )
))
(declare-datatypes ((List!15418 0))(
  ( (Nil!15352) (Cons!15352 (h!20753 Token!5112) (t!135337 List!15418)) )
))
(declare-datatypes ((IArray!10475 0))(
  ( (IArray!10476 (innerList!5295 List!15418)) )
))
(declare-datatypes ((Conc!5235 0))(
  ( (Node!5235 (left!13004 Conc!5235) (right!13334 Conc!5235) (csize!10700 Int) (cheight!5446 Int)) (Leaf!7799 (xs!7990 IArray!10475) (csize!10701 Int)) (Empty!5235) )
))
(declare-datatypes ((BalanceConc!10410 0))(
  ( (BalanceConc!10411 (c!242136 Conc!5235)) )
))
(declare-datatypes ((List!15419 0))(
  ( (Nil!15353) (Cons!15353 (h!20754 Rule!5250) (t!135338 List!15419)) )
))
(declare-datatypes ((PrintableTokens!1148 0))(
  ( (PrintableTokens!1149 (rules!11766 List!15419) (tokens!2134 BalanceConc!10410)) )
))
(declare-fun thiss!9992 () PrintableTokens!1148)

(declare-datatypes ((LexerInterface!2381 0))(
  ( (LexerInterfaceExt!2378 (__x!9421 Int)) (Lexer!2379) )
))
(declare-fun rulesInvariant!2170 (LexerInterface!2381 List!15419) Bool)

(assert (=> start!137506 (= res!664438 (rulesInvariant!2170 Lexer!2379 (rules!11766 thiss!9992)))))

(assert (=> start!137506 e!937843))

(declare-fun e!937842 () Bool)

(declare-fun inv!20537 (PrintableTokens!1148) Bool)

(assert (=> start!137506 (and (inv!20537 thiss!9992) e!937842)))

(declare-fun b!1469084 () Bool)

(declare-fun isEmpty!9612 (List!15419) Bool)

(assert (=> b!1469084 (= e!937843 (isEmpty!9612 (rules!11766 thiss!9992)))))

(declare-fun b!1469086 () Bool)

(declare-fun e!937844 () Bool)

(declare-fun tp!414035 () Bool)

(declare-fun inv!20538 (Conc!5235) Bool)

(assert (=> b!1469086 (= e!937844 (and (inv!20538 (c!242136 (tokens!2134 thiss!9992))) tp!414035))))

(declare-fun b!1469085 () Bool)

(declare-fun tp!414036 () Bool)

(declare-fun inv!20539 (BalanceConc!10410) Bool)

(assert (=> b!1469085 (= e!937842 (and tp!414036 (inv!20539 (tokens!2134 thiss!9992)) e!937844))))

(assert (= (and start!137506 res!664438) b!1469084))

(assert (= b!1469085 b!1469086))

(assert (= start!137506 b!1469085))

(declare-fun m!1713659 () Bool)

(assert (=> start!137506 m!1713659))

(declare-fun m!1713661 () Bool)

(assert (=> start!137506 m!1713661))

(declare-fun m!1713663 () Bool)

(assert (=> b!1469084 m!1713663))

(declare-fun m!1713665 () Bool)

(assert (=> b!1469086 m!1713665))

(declare-fun m!1713667 () Bool)

(assert (=> b!1469085 m!1713667))

(check-sat (not b!1469084) (not b!1469085) (not start!137506) (not b!1469086))
(check-sat)
(get-model)

(declare-fun d!430922 () Bool)

(get-info :version)

(assert (=> d!430922 (= (isEmpty!9612 (rules!11766 thiss!9992)) ((_ is Nil!15353) (rules!11766 thiss!9992)))))

(assert (=> b!1469084 d!430922))

(declare-fun d!430924 () Bool)

(declare-fun isBalanced!1564 (Conc!5235) Bool)

(assert (=> d!430924 (= (inv!20539 (tokens!2134 thiss!9992)) (isBalanced!1564 (c!242136 (tokens!2134 thiss!9992))))))

(declare-fun bs!344938 () Bool)

(assert (= bs!344938 d!430924))

(declare-fun m!1713669 () Bool)

(assert (=> bs!344938 m!1713669))

(assert (=> b!1469085 d!430924))

(declare-fun d!430926 () Bool)

(declare-fun res!664444 () Bool)

(declare-fun e!937850 () Bool)

(assert (=> d!430926 (=> (not res!664444) (not e!937850))))

(declare-fun rulesValid!993 (LexerInterface!2381 List!15419) Bool)

(assert (=> d!430926 (= res!664444 (rulesValid!993 Lexer!2379 (rules!11766 thiss!9992)))))

(assert (=> d!430926 (= (rulesInvariant!2170 Lexer!2379 (rules!11766 thiss!9992)) e!937850)))

(declare-fun b!1469092 () Bool)

(declare-datatypes ((List!15420 0))(
  ( (Nil!15354) (Cons!15354 (h!20755 String!18331) (t!135339 List!15420)) )
))
(declare-fun noDuplicateTag!993 (LexerInterface!2381 List!15419 List!15420) Bool)

(assert (=> b!1469092 (= e!937850 (noDuplicateTag!993 Lexer!2379 (rules!11766 thiss!9992) Nil!15354))))

(assert (= (and d!430926 res!664444) b!1469092))

(declare-fun m!1713675 () Bool)

(assert (=> d!430926 m!1713675))

(declare-fun m!1713677 () Bool)

(assert (=> b!1469092 m!1713677))

(assert (=> start!137506 d!430926))

(declare-fun d!430930 () Bool)

(declare-fun res!664451 () Bool)

(declare-fun e!937853 () Bool)

(assert (=> d!430930 (=> (not res!664451) (not e!937853))))

(assert (=> d!430930 (= res!664451 (not (isEmpty!9612 (rules!11766 thiss!9992))))))

(assert (=> d!430930 (= (inv!20537 thiss!9992) e!937853)))

(declare-fun b!1469099 () Bool)

(declare-fun res!664452 () Bool)

(assert (=> b!1469099 (=> (not res!664452) (not e!937853))))

(assert (=> b!1469099 (= res!664452 (rulesInvariant!2170 Lexer!2379 (rules!11766 thiss!9992)))))

(declare-fun b!1469100 () Bool)

(declare-fun res!664453 () Bool)

(assert (=> b!1469100 (=> (not res!664453) (not e!937853))))

(declare-fun rulesProduceEachTokenIndividually!884 (LexerInterface!2381 List!15419 BalanceConc!10410) Bool)

(assert (=> b!1469100 (= res!664453 (rulesProduceEachTokenIndividually!884 Lexer!2379 (rules!11766 thiss!9992) (tokens!2134 thiss!9992)))))

(declare-fun b!1469101 () Bool)

(declare-fun separableTokens!268 (LexerInterface!2381 BalanceConc!10410 List!15419) Bool)

(assert (=> b!1469101 (= e!937853 (separableTokens!268 Lexer!2379 (tokens!2134 thiss!9992) (rules!11766 thiss!9992)))))

(assert (= (and d!430930 res!664451) b!1469099))

(assert (= (and b!1469099 res!664452) b!1469100))

(assert (= (and b!1469100 res!664453) b!1469101))

(assert (=> d!430930 m!1713663))

(assert (=> b!1469099 m!1713659))

(declare-fun m!1713679 () Bool)

(assert (=> b!1469100 m!1713679))

(declare-fun m!1713681 () Bool)

(assert (=> b!1469101 m!1713681))

(assert (=> start!137506 d!430930))

(declare-fun d!430932 () Bool)

(declare-fun c!242139 () Bool)

(assert (=> d!430932 (= c!242139 ((_ is Node!5235) (c!242136 (tokens!2134 thiss!9992))))))

(declare-fun e!937858 () Bool)

(assert (=> d!430932 (= (inv!20538 (c!242136 (tokens!2134 thiss!9992))) e!937858)))

(declare-fun b!1469108 () Bool)

(declare-fun inv!20540 (Conc!5235) Bool)

(assert (=> b!1469108 (= e!937858 (inv!20540 (c!242136 (tokens!2134 thiss!9992))))))

(declare-fun b!1469109 () Bool)

(declare-fun e!937859 () Bool)

(assert (=> b!1469109 (= e!937858 e!937859)))

(declare-fun res!664456 () Bool)

(assert (=> b!1469109 (= res!664456 (not ((_ is Leaf!7799) (c!242136 (tokens!2134 thiss!9992)))))))

(assert (=> b!1469109 (=> res!664456 e!937859)))

(declare-fun b!1469110 () Bool)

(declare-fun inv!20541 (Conc!5235) Bool)

(assert (=> b!1469110 (= e!937859 (inv!20541 (c!242136 (tokens!2134 thiss!9992))))))

(assert (= (and d!430932 c!242139) b!1469108))

(assert (= (and d!430932 (not c!242139)) b!1469109))

(assert (= (and b!1469109 (not res!664456)) b!1469110))

(declare-fun m!1713683 () Bool)

(assert (=> b!1469108 m!1713683))

(declare-fun m!1713685 () Bool)

(assert (=> b!1469110 m!1713685))

(assert (=> b!1469086 d!430932))

(declare-fun b!1469121 () Bool)

(declare-fun b_free!36975 () Bool)

(declare-fun b_next!37679 () Bool)

(assert (=> b!1469121 (= b_free!36975 (not b_next!37679))))

(declare-fun tp!414047 () Bool)

(declare-fun b_and!100577 () Bool)

(assert (=> b!1469121 (= tp!414047 b_and!100577)))

(declare-fun b_free!36977 () Bool)

(declare-fun b_next!37681 () Bool)

(assert (=> b!1469121 (= b_free!36977 (not b_next!37681))))

(declare-fun tp!414045 () Bool)

(declare-fun b_and!100579 () Bool)

(assert (=> b!1469121 (= tp!414045 b_and!100579)))

(declare-fun e!937869 () Bool)

(assert (=> b!1469121 (= e!937869 (and tp!414047 tp!414045))))

(declare-fun e!937871 () Bool)

(declare-fun b!1469120 () Bool)

(declare-fun tp!414046 () Bool)

(declare-fun inv!20533 (String!18331) Bool)

(declare-fun inv!20542 (TokenValueInjection!5290) Bool)

(assert (=> b!1469120 (= e!937871 (and tp!414046 (inv!20533 (tag!2989 (h!20754 (rules!11766 thiss!9992)))) (inv!20542 (transformation!2725 (h!20754 (rules!11766 thiss!9992)))) e!937869))))

(declare-fun b!1469119 () Bool)

(declare-fun e!937868 () Bool)

(declare-fun tp!414048 () Bool)

(assert (=> b!1469119 (= e!937868 (and e!937871 tp!414048))))

(assert (=> b!1469085 (= tp!414036 e!937868)))

(assert (= b!1469120 b!1469121))

(assert (= b!1469119 b!1469120))

(assert (= (and b!1469085 ((_ is Cons!15353) (rules!11766 thiss!9992))) b!1469119))

(declare-fun m!1713687 () Bool)

(assert (=> b!1469120 m!1713687))

(declare-fun m!1713689 () Bool)

(assert (=> b!1469120 m!1713689))

(declare-fun tp!414057 () Bool)

(declare-fun tp!414056 () Bool)

(declare-fun b!1469130 () Bool)

(declare-fun e!937876 () Bool)

(assert (=> b!1469130 (= e!937876 (and (inv!20538 (left!13004 (c!242136 (tokens!2134 thiss!9992)))) tp!414056 (inv!20538 (right!13334 (c!242136 (tokens!2134 thiss!9992)))) tp!414057))))

(declare-fun b!1469132 () Bool)

(declare-fun e!937877 () Bool)

(declare-fun tp!414055 () Bool)

(assert (=> b!1469132 (= e!937877 tp!414055)))

(declare-fun b!1469131 () Bool)

(declare-fun inv!20543 (IArray!10475) Bool)

(assert (=> b!1469131 (= e!937876 (and (inv!20543 (xs!7990 (c!242136 (tokens!2134 thiss!9992)))) e!937877))))

(assert (=> b!1469086 (= tp!414035 (and (inv!20538 (c!242136 (tokens!2134 thiss!9992))) e!937876))))

(assert (= (and b!1469086 ((_ is Node!5235) (c!242136 (tokens!2134 thiss!9992)))) b!1469130))

(assert (= b!1469131 b!1469132))

(assert (= (and b!1469086 ((_ is Leaf!7799) (c!242136 (tokens!2134 thiss!9992)))) b!1469131))

(declare-fun m!1713691 () Bool)

(assert (=> b!1469130 m!1713691))

(declare-fun m!1713693 () Bool)

(assert (=> b!1469130 m!1713693))

(declare-fun m!1713695 () Bool)

(assert (=> b!1469131 m!1713695))

(assert (=> b!1469086 m!1713665))

(check-sat (not b!1469131) b_and!100577 (not b!1469132) (not b!1469119) (not b!1469086) (not d!430924) (not d!430930) (not b!1469130) (not b_next!37679) (not d!430926) (not b_next!37681) b_and!100579 (not b!1469110) (not b!1469100) (not b!1469101) (not b!1469108) (not b!1469120) (not b!1469099) (not b!1469092))
(check-sat b_and!100577 b_and!100579 (not b_next!37679) (not b_next!37681))
