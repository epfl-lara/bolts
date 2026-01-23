; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138022 () Bool)

(assert start!138022)

(declare-fun b!1473384 () Bool)

(declare-fun b_free!37479 () Bool)

(declare-fun b_next!38183 () Bool)

(assert (=> b!1473384 (= b_free!37479 (not b_next!38183))))

(declare-fun tp!416511 () Bool)

(declare-fun b_and!101333 () Bool)

(assert (=> b!1473384 (= tp!416511 b_and!101333)))

(declare-fun b_free!37481 () Bool)

(declare-fun b_next!38185 () Bool)

(assert (=> b!1473384 (= b_free!37481 (not b_next!38185))))

(declare-fun tp!416513 () Bool)

(declare-fun b_and!101335 () Bool)

(assert (=> b!1473384 (= tp!416513 b_and!101335)))

(declare-fun b!1473371 () Bool)

(declare-fun b_free!37483 () Bool)

(declare-fun b_next!38187 () Bool)

(assert (=> b!1473371 (= b_free!37483 (not b_next!38187))))

(declare-fun tp!416514 () Bool)

(declare-fun b_and!101337 () Bool)

(assert (=> b!1473371 (= tp!416514 b_and!101337)))

(declare-fun b_free!37485 () Bool)

(declare-fun b_next!38189 () Bool)

(assert (=> b!1473371 (= b_free!37485 (not b_next!38189))))

(declare-fun tp!416501 () Bool)

(declare-fun b_and!101339 () Bool)

(assert (=> b!1473371 (= tp!416501 b_and!101339)))

(declare-fun b!1473391 () Bool)

(declare-fun b_free!37487 () Bool)

(declare-fun b_next!38191 () Bool)

(assert (=> b!1473391 (= b_free!37487 (not b_next!38191))))

(declare-fun tp!416506 () Bool)

(declare-fun b_and!101341 () Bool)

(assert (=> b!1473391 (= tp!416506 b_and!101341)))

(declare-fun b_free!37489 () Bool)

(declare-fun b_next!38193 () Bool)

(assert (=> b!1473391 (= b_free!37489 (not b_next!38193))))

(declare-fun tp!416502 () Bool)

(declare-fun b_and!101343 () Bool)

(assert (=> b!1473391 (= tp!416502 b_and!101343)))

(declare-fun b!1473367 () Bool)

(declare-fun res!665968 () Bool)

(declare-fun e!941155 () Bool)

(assert (=> b!1473367 (=> (not res!665968) (not e!941155))))

(declare-datatypes ((List!15564 0))(
  ( (Nil!15498) (Cons!15498 (h!20899 (_ BitVec 16)) (t!136009 List!15564)) )
))
(declare-datatypes ((C!8324 0))(
  ( (C!8325 (val!4732 Int)) )
))
(declare-datatypes ((List!15565 0))(
  ( (Nil!15499) (Cons!15499 (h!20900 C!8324) (t!136010 List!15565)) )
))
(declare-datatypes ((Regex!4073 0))(
  ( (ElementMatch!4073 (c!242387 C!8324)) (Concat!6922 (regOne!8658 Regex!4073) (regTwo!8658 Regex!4073)) (EmptyExpr!4073) (Star!4073 (reg!4402 Regex!4073)) (EmptyLang!4073) (Union!4073 (regOne!8659 Regex!4073) (regTwo!8659 Regex!4073)) )
))
(declare-datatypes ((TokenValue!2849 0))(
  ( (FloatLiteralValue!5698 (text!20388 List!15564)) (TokenValueExt!2848 (__x!9488 Int)) (Broken!14245 (value!88253 List!15564)) (Object!2914) (End!2849) (Def!2849) (Underscore!2849) (Match!2849) (Else!2849) (Error!2849) (Case!2849) (If!2849) (Extends!2849) (Abstract!2849) (Class!2849) (Val!2849) (DelimiterValue!5698 (del!2909 List!15564)) (KeywordValue!2855 (value!88254 List!15564)) (CommentValue!5698 (value!88255 List!15564)) (WhitespaceValue!5698 (value!88256 List!15564)) (IndentationValue!2849 (value!88257 List!15564)) (String!18500) (Int32!2849) (Broken!14246 (value!88258 List!15564)) (Boolean!2850) (Unit!25202) (OperatorValue!2852 (op!2909 List!15564)) (IdentifierValue!5698 (value!88259 List!15564)) (IdentifierValue!5699 (value!88260 List!15564)) (WhitespaceValue!5699 (value!88261 List!15564)) (True!5698) (False!5698) (Broken!14247 (value!88262 List!15564)) (Broken!14248 (value!88263 List!15564)) (True!5699) (RightBrace!2849) (RightBracket!2849) (Colon!2849) (Null!2849) (Comma!2849) (LeftBracket!2849) (False!5699) (LeftBrace!2849) (ImaginaryLiteralValue!2849 (text!20389 List!15564)) (StringLiteralValue!8547 (value!88264 List!15564)) (EOFValue!2849 (value!88265 List!15564)) (IdentValue!2849 (value!88266 List!15564)) (DelimiterValue!5699 (value!88267 List!15564)) (DedentValue!2849 (value!88268 List!15564)) (NewLineValue!2849 (value!88269 List!15564)) (IntegerValue!8547 (value!88270 (_ BitVec 32)) (text!20390 List!15564)) (IntegerValue!8548 (value!88271 Int) (text!20391 List!15564)) (Times!2849) (Or!2849) (Equal!2849) (Minus!2849) (Broken!14249 (value!88272 List!15564)) (And!2849) (Div!2849) (LessEqual!2849) (Mod!2849) (Concat!6923) (Not!2849) (Plus!2849) (SpaceValue!2849 (value!88273 List!15564)) (IntegerValue!8549 (value!88274 Int) (text!20392 List!15564)) (StringLiteralValue!8548 (text!20393 List!15564)) (FloatLiteralValue!5699 (text!20394 List!15564)) (BytesLiteralValue!2849 (value!88275 List!15564)) (CommentValue!5699 (value!88276 List!15564)) (StringLiteralValue!8549 (value!88277 List!15564)) (ErrorTokenValue!2849 (msg!2910 List!15564)) )
))
(declare-datatypes ((IArray!10573 0))(
  ( (IArray!10574 (innerList!5344 List!15565)) )
))
(declare-datatypes ((Conc!5284 0))(
  ( (Node!5284 (left!13098 Conc!5284) (right!13428 Conc!5284) (csize!10798 Int) (cheight!5495 Int)) (Leaf!7865 (xs!8039 IArray!10573) (csize!10799 Int)) (Empty!5284) )
))
(declare-datatypes ((BalanceConc!10508 0))(
  ( (BalanceConc!10509 (c!242388 Conc!5284)) )
))
(declare-datatypes ((TokenValueInjection!5358 0))(
  ( (TokenValueInjection!5359 (toValue!4086 Int) (toChars!3945 Int)) )
))
(declare-datatypes ((String!18501 0))(
  ( (String!18502 (value!88278 String)) )
))
(declare-datatypes ((Rule!5318 0))(
  ( (Rule!5319 (regex!2759 Regex!4073) (tag!3023 String!18501) (isSeparator!2759 Bool) (transformation!2759 TokenValueInjection!5358)) )
))
(declare-datatypes ((List!15566 0))(
  ( (Nil!15500) (Cons!15500 (h!20901 Rule!5318) (t!136011 List!15566)) )
))
(declare-fun rules!4290 () List!15566)

(declare-datatypes ((Token!5180 0))(
  ( (Token!5181 (value!88279 TokenValue!2849) (rule!4536 Rule!5318) (size!12571 Int) (originalCharacters!3621 List!15565)) )
))
(declare-datatypes ((List!15567 0))(
  ( (Nil!15501) (Cons!15501 (h!20902 Token!5180) (t!136012 List!15567)) )
))
(declare-fun l2!3105 () List!15567)

(declare-datatypes ((LexerInterface!2415 0))(
  ( (LexerInterfaceExt!2412 (__x!9489 Int)) (Lexer!2413) )
))
(declare-fun thiss!27374 () LexerInterface!2415)

(declare-fun rulesProduceEachTokenIndividuallyList!782 (LexerInterface!2415 List!15566 List!15567) Bool)

(assert (=> b!1473367 (= res!665968 (rulesProduceEachTokenIndividuallyList!782 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1473368 () Bool)

(declare-fun e!941168 () Bool)

(declare-fun e!941167 () Bool)

(declare-fun tp!416508 () Bool)

(assert (=> b!1473368 (= e!941168 (and e!941167 tp!416508))))

(declare-fun b!1473369 () Bool)

(declare-fun res!665965 () Bool)

(assert (=> b!1473369 (=> (not res!665965) (not e!941155))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!275 (LexerInterface!2415 List!15567 List!15566) Bool)

(assert (=> b!1473369 (= res!665965 (tokensListTwoByTwoPredicateSeparableList!275 thiss!27374 l2!3105 rules!4290))))

(declare-fun e!941171 () Bool)

(declare-fun lt!512012 () List!15567)

(declare-fun b!1473370 () Bool)

(assert (=> b!1473370 (= e!941171 (tokensListTwoByTwoPredicateSeparableList!275 thiss!27374 lt!512012 rules!4290))))

(declare-fun e!941160 () Bool)

(assert (=> b!1473371 (= e!941160 (and tp!416514 tp!416501))))

(declare-fun b!1473372 () Bool)

(declare-fun res!665963 () Bool)

(assert (=> b!1473372 (=> (not res!665963) (not e!941155))))

(declare-fun isEmpty!9681 (List!15566) Bool)

(assert (=> b!1473372 (= res!665963 (not (isEmpty!9681 rules!4290)))))

(declare-fun tp!416505 () Bool)

(declare-fun e!941164 () Bool)

(declare-fun e!941165 () Bool)

(declare-fun b!1473373 () Bool)

(declare-fun inv!20704 (String!18501) Bool)

(declare-fun inv!20707 (TokenValueInjection!5358) Bool)

(assert (=> b!1473373 (= e!941164 (and tp!416505 (inv!20704 (tag!3023 (rule!4536 (h!20902 l2!3105)))) (inv!20707 (transformation!2759 (rule!4536 (h!20902 l2!3105)))) e!941165))))

(declare-fun e!941170 () Bool)

(declare-fun b!1473374 () Bool)

(declare-fun tp!416504 () Bool)

(declare-fun l1!3136 () List!15567)

(declare-fun e!941157 () Bool)

(assert (=> b!1473374 (= e!941157 (and tp!416504 (inv!20704 (tag!3023 (rule!4536 (h!20902 l1!3136)))) (inv!20707 (transformation!2759 (rule!4536 (h!20902 l1!3136)))) e!941170))))

(declare-fun b!1473375 () Bool)

(declare-fun res!665972 () Bool)

(declare-fun e!941162 () Bool)

(assert (=> b!1473375 (=> res!665972 e!941162)))

(assert (=> b!1473375 (= res!665972 (not (tokensListTwoByTwoPredicateSeparableList!275 thiss!27374 (t!136012 l1!3136) rules!4290)))))

(declare-fun b!1473376 () Bool)

(declare-fun res!665961 () Bool)

(assert (=> b!1473376 (=> (not res!665961) (not e!941155))))

(declare-fun isEmpty!9682 (List!15567) Bool)

(assert (=> b!1473376 (= res!665961 (not (isEmpty!9682 l1!3136)))))

(declare-fun b!1473377 () Bool)

(declare-fun res!665970 () Bool)

(assert (=> b!1473377 (=> res!665970 e!941162)))

(assert (=> b!1473377 (= res!665970 (isEmpty!9682 (t!136012 l1!3136)))))

(declare-fun b!1473378 () Bool)

(declare-fun e!941154 () Bool)

(assert (=> b!1473378 (= e!941154 true)))

(declare-fun ++!4185 (List!15567 List!15567) List!15567)

(assert (=> b!1473378 (rulesProduceEachTokenIndividuallyList!782 thiss!27374 rules!4290 (++!4185 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25203 0))(
  ( (Unit!25204) )
))
(declare-fun lt!512007 () Unit!25203)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!62 (LexerInterface!2415 List!15566 List!15567 List!15567) Unit!25203)

(assert (=> b!1473378 (= lt!512007 (lemmaRulesProduceEachTokenIndividuallyConcat!62 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> b!1473378 e!941171))

(declare-fun res!665964 () Bool)

(assert (=> b!1473378 (=> (not res!665964) (not e!941171))))

(assert (=> b!1473378 (= res!665964 (rulesProduceEachTokenIndividuallyList!782 thiss!27374 rules!4290 lt!512012))))

(assert (=> b!1473378 (= lt!512012 (++!4185 (t!136012 l1!3136) l2!3105))))

(declare-fun lt!512006 () Unit!25203)

(assert (=> b!1473378 (= lt!512006 (lemmaRulesProduceEachTokenIndividuallyConcat!62 thiss!27374 rules!4290 (t!136012 l1!3136) l2!3105))))

(declare-fun lt!512010 () Unit!25203)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!62 (LexerInterface!2415 List!15567 List!15567 List!15566) Unit!25203)

(assert (=> b!1473378 (= lt!512010 (tokensListTwoByTwoPredicateConcatSeparableTokensList!62 thiss!27374 (t!136012 l1!3136) l2!3105 rules!4290))))

(declare-fun res!665967 () Bool)

(assert (=> start!138022 (=> (not res!665967) (not e!941155))))

(get-info :version)

(assert (=> start!138022 (= res!665967 ((_ is Lexer!2413) thiss!27374))))

(assert (=> start!138022 e!941155))

(assert (=> start!138022 true))

(assert (=> start!138022 e!941168))

(declare-fun e!941161 () Bool)

(assert (=> start!138022 e!941161))

(declare-fun e!941169 () Bool)

(assert (=> start!138022 e!941169))

(declare-fun tp!416510 () Bool)

(declare-fun b!1473379 () Bool)

(assert (=> b!1473379 (= e!941167 (and tp!416510 (inv!20704 (tag!3023 (h!20901 rules!4290))) (inv!20707 (transformation!2759 (h!20901 rules!4290))) e!941160))))

(declare-fun b!1473380 () Bool)

(declare-fun tp!416507 () Bool)

(declare-fun e!941156 () Bool)

(declare-fun inv!20708 (Token!5180) Bool)

(assert (=> b!1473380 (= e!941161 (and (inv!20708 (h!20902 l1!3136)) e!941156 tp!416507))))

(declare-fun b!1473381 () Bool)

(declare-fun res!665974 () Bool)

(assert (=> b!1473381 (=> res!665974 e!941162)))

(assert (=> b!1473381 (= res!665974 (not ((_ is Cons!15501) l1!3136)))))

(declare-fun b!1473382 () Bool)

(assert (=> b!1473382 (= e!941155 (not e!941162))))

(declare-fun res!665969 () Bool)

(assert (=> b!1473382 (=> res!665969 e!941162)))

(declare-fun lt!512009 () Token!5180)

(declare-fun lt!512013 () Token!5180)

(declare-fun separableTokensPredicate!558 (LexerInterface!2415 Token!5180 Token!5180 List!15566) Bool)

(assert (=> b!1473382 (= res!665969 (not (separableTokensPredicate!558 thiss!27374 lt!512013 lt!512009 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1274 (LexerInterface!2415 List!15566 Token!5180) Bool)

(assert (=> b!1473382 (rulesProduceIndividualToken!1274 thiss!27374 rules!4290 lt!512009)))

(declare-fun lt!512005 () Unit!25203)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!455 (LexerInterface!2415 List!15566 List!15567 Token!5180) Unit!25203)

(assert (=> b!1473382 (= lt!512005 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!455 thiss!27374 rules!4290 l2!3105 lt!512009))))

(declare-fun head!3053 (List!15567) Token!5180)

(assert (=> b!1473382 (= lt!512009 (head!3053 l2!3105))))

(assert (=> b!1473382 (rulesProduceIndividualToken!1274 thiss!27374 rules!4290 lt!512013)))

(declare-fun lt!512004 () Unit!25203)

(assert (=> b!1473382 (= lt!512004 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!455 thiss!27374 rules!4290 l1!3136 lt!512013))))

(declare-fun last!317 (List!15567) Token!5180)

(assert (=> b!1473382 (= lt!512013 (last!317 l1!3136))))

(declare-fun b!1473383 () Bool)

(declare-fun res!665962 () Bool)

(assert (=> b!1473383 (=> (not res!665962) (not e!941155))))

(assert (=> b!1473383 (= res!665962 (rulesProduceEachTokenIndividuallyList!782 thiss!27374 rules!4290 l1!3136))))

(assert (=> b!1473384 (= e!941165 (and tp!416511 tp!416513))))

(declare-fun b!1473385 () Bool)

(declare-fun res!665966 () Bool)

(assert (=> b!1473385 (=> (not res!665966) (not e!941155))))

(declare-fun rulesInvariant!2204 (LexerInterface!2415 List!15566) Bool)

(assert (=> b!1473385 (= res!665966 (rulesInvariant!2204 thiss!27374 rules!4290))))

(declare-fun b!1473386 () Bool)

(declare-fun res!665973 () Bool)

(assert (=> b!1473386 (=> res!665973 e!941162)))

(assert (=> b!1473386 (= res!665973 (not (rulesProduceEachTokenIndividuallyList!782 thiss!27374 rules!4290 (t!136012 l1!3136))))))

(declare-fun b!1473387 () Bool)

(declare-fun res!665960 () Bool)

(assert (=> b!1473387 (=> (not res!665960) (not e!941155))))

(assert (=> b!1473387 (= res!665960 (not (isEmpty!9682 l2!3105)))))

(declare-fun tp!416509 () Bool)

(declare-fun e!941163 () Bool)

(declare-fun b!1473388 () Bool)

(assert (=> b!1473388 (= e!941169 (and (inv!20708 (h!20902 l2!3105)) e!941163 tp!416509))))

(declare-fun b!1473389 () Bool)

(declare-fun tp!416512 () Bool)

(declare-fun inv!21 (TokenValue!2849) Bool)

(assert (=> b!1473389 (= e!941156 (and (inv!21 (value!88279 (h!20902 l1!3136))) e!941157 tp!416512))))

(declare-fun tp!416503 () Bool)

(declare-fun b!1473390 () Bool)

(assert (=> b!1473390 (= e!941163 (and (inv!21 (value!88279 (h!20902 l2!3105))) e!941164 tp!416503))))

(assert (=> b!1473391 (= e!941170 (and tp!416506 tp!416502))))

(declare-fun b!1473392 () Bool)

(declare-fun res!665975 () Bool)

(assert (=> b!1473392 (=> (not res!665975) (not e!941155))))

(assert (=> b!1473392 (= res!665975 (tokensListTwoByTwoPredicateSeparableList!275 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1473393 () Bool)

(assert (=> b!1473393 (= e!941162 e!941154)))

(declare-fun res!665971 () Bool)

(assert (=> b!1473393 (=> res!665971 e!941154)))

(declare-fun lt!512011 () Token!5180)

(assert (=> b!1473393 (= res!665971 (not (separableTokensPredicate!558 thiss!27374 lt!512011 lt!512009 rules!4290)))))

(assert (=> b!1473393 (rulesProduceIndividualToken!1274 thiss!27374 rules!4290 lt!512011)))

(declare-fun lt!512008 () Unit!25203)

(assert (=> b!1473393 (= lt!512008 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!455 thiss!27374 rules!4290 (t!136012 l1!3136) lt!512011))))

(assert (=> b!1473393 (= lt!512011 (last!317 (t!136012 l1!3136)))))

(assert (= (and start!138022 res!665967) b!1473372))

(assert (= (and b!1473372 res!665963) b!1473385))

(assert (= (and b!1473385 res!665966) b!1473383))

(assert (= (and b!1473383 res!665962) b!1473367))

(assert (= (and b!1473367 res!665968) b!1473392))

(assert (= (and b!1473392 res!665975) b!1473369))

(assert (= (and b!1473369 res!665965) b!1473376))

(assert (= (and b!1473376 res!665961) b!1473387))

(assert (= (and b!1473387 res!665960) b!1473382))

(assert (= (and b!1473382 (not res!665969)) b!1473381))

(assert (= (and b!1473381 (not res!665974)) b!1473377))

(assert (= (and b!1473377 (not res!665970)) b!1473386))

(assert (= (and b!1473386 (not res!665973)) b!1473375))

(assert (= (and b!1473375 (not res!665972)) b!1473393))

(assert (= (and b!1473393 (not res!665971)) b!1473378))

(assert (= (and b!1473378 res!665964) b!1473370))

(assert (= b!1473379 b!1473371))

(assert (= b!1473368 b!1473379))

(assert (= (and start!138022 ((_ is Cons!15500) rules!4290)) b!1473368))

(assert (= b!1473374 b!1473391))

(assert (= b!1473389 b!1473374))

(assert (= b!1473380 b!1473389))

(assert (= (and start!138022 ((_ is Cons!15501) l1!3136)) b!1473380))

(assert (= b!1473373 b!1473384))

(assert (= b!1473390 b!1473373))

(assert (= b!1473388 b!1473390))

(assert (= (and start!138022 ((_ is Cons!15501) l2!3105)) b!1473388))

(declare-fun m!1717353 () Bool)

(assert (=> b!1473383 m!1717353))

(declare-fun m!1717355 () Bool)

(assert (=> b!1473372 m!1717355))

(declare-fun m!1717357 () Bool)

(assert (=> b!1473373 m!1717357))

(declare-fun m!1717359 () Bool)

(assert (=> b!1473373 m!1717359))

(declare-fun m!1717361 () Bool)

(assert (=> b!1473377 m!1717361))

(declare-fun m!1717363 () Bool)

(assert (=> b!1473382 m!1717363))

(declare-fun m!1717365 () Bool)

(assert (=> b!1473382 m!1717365))

(declare-fun m!1717367 () Bool)

(assert (=> b!1473382 m!1717367))

(declare-fun m!1717369 () Bool)

(assert (=> b!1473382 m!1717369))

(declare-fun m!1717371 () Bool)

(assert (=> b!1473382 m!1717371))

(declare-fun m!1717373 () Bool)

(assert (=> b!1473382 m!1717373))

(declare-fun m!1717375 () Bool)

(assert (=> b!1473382 m!1717375))

(declare-fun m!1717377 () Bool)

(assert (=> b!1473376 m!1717377))

(declare-fun m!1717379 () Bool)

(assert (=> b!1473392 m!1717379))

(declare-fun m!1717381 () Bool)

(assert (=> b!1473380 m!1717381))

(declare-fun m!1717383 () Bool)

(assert (=> b!1473367 m!1717383))

(declare-fun m!1717385 () Bool)

(assert (=> b!1473389 m!1717385))

(declare-fun m!1717387 () Bool)

(assert (=> b!1473390 m!1717387))

(declare-fun m!1717389 () Bool)

(assert (=> b!1473374 m!1717389))

(declare-fun m!1717391 () Bool)

(assert (=> b!1473374 m!1717391))

(declare-fun m!1717393 () Bool)

(assert (=> b!1473387 m!1717393))

(declare-fun m!1717395 () Bool)

(assert (=> b!1473369 m!1717395))

(declare-fun m!1717397 () Bool)

(assert (=> b!1473393 m!1717397))

(declare-fun m!1717399 () Bool)

(assert (=> b!1473393 m!1717399))

(declare-fun m!1717401 () Bool)

(assert (=> b!1473393 m!1717401))

(declare-fun m!1717403 () Bool)

(assert (=> b!1473393 m!1717403))

(declare-fun m!1717405 () Bool)

(assert (=> b!1473370 m!1717405))

(declare-fun m!1717407 () Bool)

(assert (=> b!1473375 m!1717407))

(declare-fun m!1717409 () Bool)

(assert (=> b!1473386 m!1717409))

(declare-fun m!1717411 () Bool)

(assert (=> b!1473388 m!1717411))

(declare-fun m!1717413 () Bool)

(assert (=> b!1473379 m!1717413))

(declare-fun m!1717415 () Bool)

(assert (=> b!1473379 m!1717415))

(declare-fun m!1717417 () Bool)

(assert (=> b!1473385 m!1717417))

(declare-fun m!1717419 () Bool)

(assert (=> b!1473378 m!1717419))

(declare-fun m!1717421 () Bool)

(assert (=> b!1473378 m!1717421))

(declare-fun m!1717423 () Bool)

(assert (=> b!1473378 m!1717423))

(declare-fun m!1717425 () Bool)

(assert (=> b!1473378 m!1717425))

(declare-fun m!1717427 () Bool)

(assert (=> b!1473378 m!1717427))

(assert (=> b!1473378 m!1717421))

(declare-fun m!1717429 () Bool)

(assert (=> b!1473378 m!1717429))

(declare-fun m!1717431 () Bool)

(assert (=> b!1473378 m!1717431))

(check-sat (not b!1473375) (not b!1473385) (not b!1473378) (not b!1473379) (not b!1473377) (not b!1473388) b_and!101335 (not b_next!38189) (not b!1473390) (not b!1473386) (not b!1473368) (not b_next!38183) (not b!1473372) (not b!1473376) b_and!101337 (not b!1473380) (not b!1473387) (not b_next!38191) (not b!1473369) (not b!1473392) b_and!101341 (not b!1473383) (not b_next!38187) (not b!1473393) (not b!1473367) (not b!1473370) (not b!1473373) (not b_next!38185) (not b!1473382) b_and!101333 b_and!101339 b_and!101343 (not b!1473389) (not b_next!38193) (not b!1473374))
(check-sat (not b_next!38183) b_and!101337 (not b_next!38191) b_and!101341 (not b_next!38187) (not b_next!38185) b_and!101335 b_and!101333 (not b_next!38189) b_and!101339 (not b_next!38193) b_and!101343)
