; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511520 () Bool)

(assert start!511520)

(declare-fun b!4887131 () Bool)

(declare-fun b_free!131315 () Bool)

(declare-fun b_next!132105 () Bool)

(assert (=> b!4887131 (= b_free!131315 (not b_next!132105))))

(declare-fun tp!1375380 () Bool)

(declare-fun b_and!344147 () Bool)

(assert (=> b!4887131 (= tp!1375380 b_and!344147)))

(declare-fun b_free!131317 () Bool)

(declare-fun b_next!132107 () Bool)

(assert (=> b!4887131 (= b_free!131317 (not b_next!132107))))

(declare-fun tp!1375382 () Bool)

(declare-fun b_and!344149 () Bool)

(assert (=> b!4887131 (= tp!1375382 b_and!344149)))

(declare-fun b!4887124 () Bool)

(declare-fun res!2086987 () Bool)

(declare-fun e!3055014 () Bool)

(assert (=> b!4887124 (=> (not res!2086987) (not e!3055014))))

(declare-datatypes ((C!26636 0))(
  ( (C!26637 (val!22652 Int)) )
))
(declare-datatypes ((List!56437 0))(
  ( (Nil!56313) (Cons!56313 (h!62761 C!26636) (t!365083 List!56437)) )
))
(declare-datatypes ((IArray!29485 0))(
  ( (IArray!29486 (innerList!14800 List!56437)) )
))
(declare-datatypes ((Conc!14712 0))(
  ( (Node!14712 (left!40902 Conc!14712) (right!41232 Conc!14712) (csize!29654 Int) (cheight!14923 Int)) (Leaf!24501 (xs!18028 IArray!29485) (csize!29655 Int)) (Empty!14712) )
))
(declare-datatypes ((BalanceConc!28854 0))(
  ( (BalanceConc!28855 (c!830793 Conc!14712)) )
))
(declare-datatypes ((List!56438 0))(
  ( (Nil!56314) (Cons!56314 (h!62762 (_ BitVec 16)) (t!365084 List!56438)) )
))
(declare-datatypes ((TokenValue!8454 0))(
  ( (FloatLiteralValue!16908 (text!59623 List!56438)) (TokenValueExt!8453 (__x!34201 Int)) (Broken!42270 (value!261230 List!56438)) (Object!8577) (End!8454) (Def!8454) (Underscore!8454) (Match!8454) (Else!8454) (Error!8454) (Case!8454) (If!8454) (Extends!8454) (Abstract!8454) (Class!8454) (Val!8454) (DelimiterValue!16908 (del!8514 List!56438)) (KeywordValue!8460 (value!261231 List!56438)) (CommentValue!16908 (value!261232 List!56438)) (WhitespaceValue!16908 (value!261233 List!56438)) (IndentationValue!8454 (value!261234 List!56438)) (String!63711) (Int32!8454) (Broken!42271 (value!261235 List!56438)) (Boolean!8455) (Unit!146303) (OperatorValue!8457 (op!8514 List!56438)) (IdentifierValue!16908 (value!261236 List!56438)) (IdentifierValue!16909 (value!261237 List!56438)) (WhitespaceValue!16909 (value!261238 List!56438)) (True!16908) (False!16908) (Broken!42272 (value!261239 List!56438)) (Broken!42273 (value!261240 List!56438)) (True!16909) (RightBrace!8454) (RightBracket!8454) (Colon!8454) (Null!8454) (Comma!8454) (LeftBracket!8454) (False!16909) (LeftBrace!8454) (ImaginaryLiteralValue!8454 (text!59624 List!56438)) (StringLiteralValue!25362 (value!261241 List!56438)) (EOFValue!8454 (value!261242 List!56438)) (IdentValue!8454 (value!261243 List!56438)) (DelimiterValue!16909 (value!261244 List!56438)) (DedentValue!8454 (value!261245 List!56438)) (NewLineValue!8454 (value!261246 List!56438)) (IntegerValue!25362 (value!261247 (_ BitVec 32)) (text!59625 List!56438)) (IntegerValue!25363 (value!261248 Int) (text!59626 List!56438)) (Times!8454) (Or!8454) (Equal!8454) (Minus!8454) (Broken!42274 (value!261249 List!56438)) (And!8454) (Div!8454) (LessEqual!8454) (Mod!8454) (Concat!21673) (Not!8454) (Plus!8454) (SpaceValue!8454 (value!261250 List!56438)) (IntegerValue!25364 (value!261251 Int) (text!59627 List!56438)) (StringLiteralValue!25363 (text!59628 List!56438)) (FloatLiteralValue!16909 (text!59629 List!56438)) (BytesLiteralValue!8454 (value!261252 List!56438)) (CommentValue!16909 (value!261253 List!56438)) (StringLiteralValue!25364 (value!261254 List!56438)) (ErrorTokenValue!8454 (msg!8515 List!56438)) )
))
(declare-datatypes ((Regex!13219 0))(
  ( (ElementMatch!13219 (c!830794 C!26636)) (Concat!21674 (regOne!26950 Regex!13219) (regTwo!26950 Regex!13219)) (EmptyExpr!13219) (Star!13219 (reg!13548 Regex!13219)) (EmptyLang!13219) (Union!13219 (regOne!26951 Regex!13219) (regTwo!26951 Regex!13219)) )
))
(declare-datatypes ((String!63712 0))(
  ( (String!63713 (value!261255 String)) )
))
(declare-datatypes ((TokenValueInjection!16216 0))(
  ( (TokenValueInjection!16217 (toValue!11031 Int) (toChars!10890 Int)) )
))
(declare-datatypes ((Rule!16088 0))(
  ( (Rule!16089 (regex!8144 Regex!13219) (tag!9008 String!63712) (isSeparator!8144 Bool) (transformation!8144 TokenValueInjection!16216)) )
))
(declare-datatypes ((List!56439 0))(
  ( (Nil!56315) (Cons!56315 (h!62763 Rule!16088) (t!365085 List!56439)) )
))
(declare-fun rulesArg!165 () List!56439)

(declare-fun isEmpty!30186 (List!56439) Bool)

(assert (=> b!4887124 (= res!2086987 (not (isEmpty!30186 rulesArg!165)))))

(declare-fun b!4887125 () Bool)

(declare-fun e!3055010 () Bool)

(declare-fun e!3055013 () Bool)

(assert (=> b!4887125 (= e!3055010 e!3055013)))

(declare-fun res!2086985 () Bool)

(assert (=> b!4887125 (=> res!2086985 e!3055013)))

(declare-datatypes ((Token!14856 0))(
  ( (Token!14857 (value!261256 TokenValue!8454) (rule!11318 Rule!16088) (size!37084 Int) (originalCharacters!8459 List!56437)) )
))
(declare-datatypes ((tuple2!60308 0))(
  ( (tuple2!60309 (_1!33457 Token!14856) (_2!33457 BalanceConc!28854)) )
))
(declare-datatypes ((Option!13971 0))(
  ( (None!13970) (Some!13970 (v!49920 tuple2!60308)) )
))
(declare-fun lt!2002794 () Option!13971)

(declare-fun lt!2002798 () Option!13971)

(get-info :version)

(assert (=> b!4887125 (= res!2086985 (or (and ((_ is None!13970) lt!2002794) ((_ is None!13970) lt!2002798)) ((_ is None!13970) lt!2002798) ((_ is None!13970) lt!2002794) (>= (size!37084 (_1!33457 (v!49920 lt!2002794))) (size!37084 (_1!33457 (v!49920 lt!2002798))))))))

(declare-datatypes ((LexerInterface!7736 0))(
  ( (LexerInterfaceExt!7733 (__x!34202 Int)) (Lexer!7734) )
))
(declare-fun thiss!14805 () LexerInterface!7736)

(declare-fun input!1236 () BalanceConc!28854)

(declare-fun maxPrefixZipperSequence!1305 (LexerInterface!7736 List!56439 BalanceConc!28854) Option!13971)

(assert (=> b!4887125 (= lt!2002798 (maxPrefixZipperSequence!1305 thiss!14805 (t!365085 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!670 (LexerInterface!7736 Rule!16088 BalanceConc!28854) Option!13971)

(assert (=> b!4887125 (= lt!2002794 (maxPrefixOneRuleZipperSequence!670 thiss!14805 (h!62763 rulesArg!165) input!1236))))

(declare-fun b!4887126 () Bool)

(declare-fun e!3055011 () Bool)

(assert (=> b!4887126 (= e!3055013 e!3055011)))

(declare-fun res!2086988 () Bool)

(assert (=> b!4887126 (=> res!2086988 e!3055011)))

(declare-fun lt!2002793 () Bool)

(declare-fun lt!2002797 () Bool)

(assert (=> b!4887126 (= res!2086988 (or (not (= lt!2002793 lt!2002797)) (not lt!2002793)))))

(declare-datatypes ((tuple2!60310 0))(
  ( (tuple2!60311 (_1!33458 Token!14856) (_2!33458 List!56437)) )
))
(declare-datatypes ((Option!13972 0))(
  ( (None!13971) (Some!13971 (v!49921 tuple2!60310)) )
))
(declare-fun lt!2002795 () Option!13972)

(declare-fun isDefined!10986 (Option!13972) Bool)

(assert (=> b!4887126 (= lt!2002797 (isDefined!10986 lt!2002795))))

(declare-fun isDefined!10987 (Option!13971) Bool)

(assert (=> b!4887126 (= lt!2002793 (isDefined!10987 lt!2002798))))

(declare-fun lt!2002796 () List!56437)

(declare-fun maxPrefixZipper!647 (LexerInterface!7736 List!56439 List!56437) Option!13972)

(assert (=> b!4887126 (= lt!2002795 (maxPrefixZipper!647 thiss!14805 rulesArg!165 lt!2002796))))

(declare-fun b!4887128 () Bool)

(assert (=> b!4887128 (= e!3055011 lt!2002797)))

(declare-fun b!4887129 () Bool)

(declare-fun e!3055012 () Bool)

(declare-fun tp!1375379 () Bool)

(declare-fun inv!72502 (Conc!14712) Bool)

(assert (=> b!4887129 (= e!3055012 (and (inv!72502 (c!830793 input!1236)) tp!1375379))))

(declare-fun b!4887130 () Bool)

(declare-fun res!2086986 () Bool)

(assert (=> b!4887130 (=> res!2086986 e!3055011)))

(declare-fun get!19415 (Option!13971) tuple2!60308)

(declare-fun get!19416 (Option!13972) tuple2!60310)

(assert (=> b!4887130 (= res!2086986 (not (= (_1!33457 (get!19415 lt!2002798)) (_1!33458 (get!19416 lt!2002795)))))))

(declare-fun b!4887127 () Bool)

(assert (=> b!4887127 (= e!3055014 (not e!3055010))))

(declare-fun res!2086990 () Bool)

(assert (=> b!4887127 (=> res!2086990 e!3055010)))

(assert (=> b!4887127 (= res!2086990 (or (and ((_ is Cons!56315) rulesArg!165) ((_ is Nil!56315) (t!365085 rulesArg!165))) (not ((_ is Cons!56315) rulesArg!165))))))

(declare-fun isPrefix!4866 (List!56437 List!56437) Bool)

(assert (=> b!4887127 (isPrefix!4866 lt!2002796 lt!2002796)))

(declare-datatypes ((Unit!146304 0))(
  ( (Unit!146305) )
))
(declare-fun lt!2002792 () Unit!146304)

(declare-fun lemmaIsPrefixRefl!3263 (List!56437 List!56437) Unit!146304)

(assert (=> b!4887127 (= lt!2002792 (lemmaIsPrefixRefl!3263 lt!2002796 lt!2002796))))

(declare-fun list!17681 (BalanceConc!28854) List!56437)

(assert (=> b!4887127 (= lt!2002796 (list!17681 input!1236))))

(declare-fun res!2086989 () Bool)

(assert (=> start!511520 (=> (not res!2086989) (not e!3055014))))

(assert (=> start!511520 (= res!2086989 ((_ is Lexer!7734) thiss!14805))))

(assert (=> start!511520 e!3055014))

(assert (=> start!511520 true))

(declare-fun e!3055016 () Bool)

(assert (=> start!511520 e!3055016))

(declare-fun inv!72503 (BalanceConc!28854) Bool)

(assert (=> start!511520 (and (inv!72503 input!1236) e!3055012)))

(declare-fun e!3055015 () Bool)

(assert (=> b!4887131 (= e!3055015 (and tp!1375380 tp!1375382))))

(declare-fun e!3055018 () Bool)

(declare-fun tp!1375383 () Bool)

(declare-fun b!4887132 () Bool)

(declare-fun inv!72498 (String!63712) Bool)

(declare-fun inv!72504 (TokenValueInjection!16216) Bool)

(assert (=> b!4887132 (= e!3055018 (and tp!1375383 (inv!72498 (tag!9008 (h!62763 rulesArg!165))) (inv!72504 (transformation!8144 (h!62763 rulesArg!165))) e!3055015))))

(declare-fun b!4887133 () Bool)

(declare-fun res!2086991 () Bool)

(assert (=> b!4887133 (=> (not res!2086991) (not e!3055014))))

(declare-fun rulesValidInductive!3123 (LexerInterface!7736 List!56439) Bool)

(assert (=> b!4887133 (= res!2086991 (rulesValidInductive!3123 thiss!14805 rulesArg!165))))

(declare-fun b!4887134 () Bool)

(declare-fun tp!1375381 () Bool)

(assert (=> b!4887134 (= e!3055016 (and e!3055018 tp!1375381))))

(assert (= (and start!511520 res!2086989) b!4887133))

(assert (= (and b!4887133 res!2086991) b!4887124))

(assert (= (and b!4887124 res!2086987) b!4887127))

(assert (= (and b!4887127 (not res!2086990)) b!4887125))

(assert (= (and b!4887125 (not res!2086985)) b!4887126))

(assert (= (and b!4887126 (not res!2086988)) b!4887130))

(assert (= (and b!4887130 (not res!2086986)) b!4887128))

(assert (= b!4887132 b!4887131))

(assert (= b!4887134 b!4887132))

(assert (= (and start!511520 ((_ is Cons!56315) rulesArg!165)) b!4887134))

(assert (= start!511520 b!4887129))

(declare-fun m!5890876 () Bool)

(assert (=> b!4887126 m!5890876))

(declare-fun m!5890878 () Bool)

(assert (=> b!4887126 m!5890878))

(declare-fun m!5890880 () Bool)

(assert (=> b!4887126 m!5890880))

(declare-fun m!5890882 () Bool)

(assert (=> b!4887124 m!5890882))

(declare-fun m!5890884 () Bool)

(assert (=> start!511520 m!5890884))

(declare-fun m!5890886 () Bool)

(assert (=> b!4887127 m!5890886))

(declare-fun m!5890888 () Bool)

(assert (=> b!4887127 m!5890888))

(declare-fun m!5890890 () Bool)

(assert (=> b!4887127 m!5890890))

(declare-fun m!5890892 () Bool)

(assert (=> b!4887133 m!5890892))

(declare-fun m!5890894 () Bool)

(assert (=> b!4887129 m!5890894))

(declare-fun m!5890896 () Bool)

(assert (=> b!4887132 m!5890896))

(declare-fun m!5890898 () Bool)

(assert (=> b!4887132 m!5890898))

(declare-fun m!5890900 () Bool)

(assert (=> b!4887130 m!5890900))

(declare-fun m!5890902 () Bool)

(assert (=> b!4887130 m!5890902))

(declare-fun m!5890904 () Bool)

(assert (=> b!4887125 m!5890904))

(declare-fun m!5890906 () Bool)

(assert (=> b!4887125 m!5890906))

(check-sat (not b!4887133) (not b!4887129) (not b_next!132105) (not b!4887126) (not b!4887127) b_and!344149 (not b!4887132) (not start!511520) (not b!4887134) (not b!4887125) (not b_next!132107) (not b!4887124) (not b!4887130) b_and!344147)
(check-sat b_and!344149 b_and!344147 (not b_next!132105) (not b_next!132107))
