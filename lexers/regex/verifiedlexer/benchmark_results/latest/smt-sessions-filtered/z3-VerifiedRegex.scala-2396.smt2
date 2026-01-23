; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123206 () Bool)

(assert start!123206)

(declare-fun b!1367219 () Bool)

(declare-fun b_free!33147 () Bool)

(declare-fun b_next!33851 () Bool)

(assert (=> b!1367219 (= b_free!33147 (not b_next!33851))))

(declare-fun tp!393289 () Bool)

(declare-fun b_and!91643 () Bool)

(assert (=> b!1367219 (= tp!393289 b_and!91643)))

(declare-fun b_free!33149 () Bool)

(declare-fun b_next!33853 () Bool)

(assert (=> b!1367219 (= b_free!33149 (not b_next!33853))))

(declare-fun tp!393292 () Bool)

(declare-fun b_and!91645 () Bool)

(assert (=> b!1367219 (= tp!393292 b_and!91645)))

(declare-fun b!1367242 () Bool)

(declare-fun b_free!33151 () Bool)

(declare-fun b_next!33855 () Bool)

(assert (=> b!1367242 (= b_free!33151 (not b_next!33855))))

(declare-fun tp!393294 () Bool)

(declare-fun b_and!91647 () Bool)

(assert (=> b!1367242 (= tp!393294 b_and!91647)))

(declare-fun b_free!33153 () Bool)

(declare-fun b_next!33857 () Bool)

(assert (=> b!1367242 (= b_free!33153 (not b_next!33857))))

(declare-fun tp!393290 () Bool)

(declare-fun b_and!91649 () Bool)

(assert (=> b!1367242 (= tp!393290 b_and!91649)))

(declare-fun b!1367212 () Bool)

(declare-fun b_free!33155 () Bool)

(declare-fun b_next!33859 () Bool)

(assert (=> b!1367212 (= b_free!33155 (not b_next!33859))))

(declare-fun tp!393287 () Bool)

(declare-fun b_and!91651 () Bool)

(assert (=> b!1367212 (= tp!393287 b_and!91651)))

(declare-fun b_free!33157 () Bool)

(declare-fun b_next!33861 () Bool)

(assert (=> b!1367212 (= b_free!33157 (not b_next!33861))))

(declare-fun tp!393291 () Bool)

(declare-fun b_and!91653 () Bool)

(assert (=> b!1367212 (= tp!393291 b_and!91653)))

(declare-fun b!1367227 () Bool)

(assert (=> b!1367227 true))

(assert (=> b!1367227 true))

(declare-fun b!1367244 () Bool)

(assert (=> b!1367244 true))

(declare-fun b!1367240 () Bool)

(assert (=> b!1367240 true))

(declare-fun e!874214 () Bool)

(assert (=> b!1367212 (= e!874214 (and tp!393287 tp!393291))))

(declare-fun b!1367213 () Bool)

(declare-fun e!874204 () Bool)

(declare-fun e!874215 () Bool)

(assert (=> b!1367213 (= e!874204 e!874215)))

(declare-fun res!615771 () Bool)

(assert (=> b!1367213 (=> res!615771 e!874215)))

(declare-datatypes ((C!7720 0))(
  ( (C!7721 (val!4420 Int)) )
))
(declare-datatypes ((List!13928 0))(
  ( (Nil!13862) (Cons!13862 (h!19263 C!7720) (t!121279 List!13928)) )
))
(declare-fun lt!453466 () List!13928)

(declare-fun lt!453454 () C!7720)

(declare-fun contains!2585 (List!13928 C!7720) Bool)

(assert (=> b!1367213 (= res!615771 (not (contains!2585 lt!453466 lt!453454)))))

(declare-datatypes ((IArray!9133 0))(
  ( (IArray!9134 (innerList!4624 List!13928)) )
))
(declare-datatypes ((Conc!4564 0))(
  ( (Node!4564 (left!11866 Conc!4564) (right!12196 Conc!4564) (csize!9358 Int) (cheight!4775 Int)) (Leaf!6961 (xs!7291 IArray!9133) (csize!9359 Int)) (Empty!4564) )
))
(declare-datatypes ((BalanceConc!9068 0))(
  ( (BalanceConc!9069 (c!224866 Conc!4564)) )
))
(declare-fun lt!453464 () BalanceConc!9068)

(declare-fun apply!3381 (BalanceConc!9068 Int) C!7720)

(assert (=> b!1367213 (= lt!453454 (apply!3381 lt!453464 0))))

(declare-fun b!1367214 () Bool)

(declare-fun res!615776 () Bool)

(declare-fun e!874197 () Bool)

(assert (=> b!1367214 (=> (not res!615776) (not e!874197))))

(declare-datatypes ((List!13929 0))(
  ( (Nil!13863) (Cons!13863 (h!19264 (_ BitVec 16)) (t!121280 List!13929)) )
))
(declare-datatypes ((TokenValue!2491 0))(
  ( (FloatLiteralValue!4982 (text!17882 List!13929)) (TokenValueExt!2490 (__x!8811 Int)) (Broken!12455 (value!78035 List!13929)) (Object!2556) (End!2491) (Def!2491) (Underscore!2491) (Match!2491) (Else!2491) (Error!2491) (Case!2491) (If!2491) (Extends!2491) (Abstract!2491) (Class!2491) (Val!2491) (DelimiterValue!4982 (del!2551 List!13929)) (KeywordValue!2497 (value!78036 List!13929)) (CommentValue!4982 (value!78037 List!13929)) (WhitespaceValue!4982 (value!78038 List!13929)) (IndentationValue!2491 (value!78039 List!13929)) (String!16690) (Int32!2491) (Broken!12456 (value!78040 List!13929)) (Boolean!2492) (Unit!20070) (OperatorValue!2494 (op!2551 List!13929)) (IdentifierValue!4982 (value!78041 List!13929)) (IdentifierValue!4983 (value!78042 List!13929)) (WhitespaceValue!4983 (value!78043 List!13929)) (True!4982) (False!4982) (Broken!12457 (value!78044 List!13929)) (Broken!12458 (value!78045 List!13929)) (True!4983) (RightBrace!2491) (RightBracket!2491) (Colon!2491) (Null!2491) (Comma!2491) (LeftBracket!2491) (False!4983) (LeftBrace!2491) (ImaginaryLiteralValue!2491 (text!17883 List!13929)) (StringLiteralValue!7473 (value!78046 List!13929)) (EOFValue!2491 (value!78047 List!13929)) (IdentValue!2491 (value!78048 List!13929)) (DelimiterValue!4983 (value!78049 List!13929)) (DedentValue!2491 (value!78050 List!13929)) (NewLineValue!2491 (value!78051 List!13929)) (IntegerValue!7473 (value!78052 (_ BitVec 32)) (text!17884 List!13929)) (IntegerValue!7474 (value!78053 Int) (text!17885 List!13929)) (Times!2491) (Or!2491) (Equal!2491) (Minus!2491) (Broken!12459 (value!78054 List!13929)) (And!2491) (Div!2491) (LessEqual!2491) (Mod!2491) (Concat!6206) (Not!2491) (Plus!2491) (SpaceValue!2491 (value!78055 List!13929)) (IntegerValue!7475 (value!78056 Int) (text!17886 List!13929)) (StringLiteralValue!7474 (text!17887 List!13929)) (FloatLiteralValue!4983 (text!17888 List!13929)) (BytesLiteralValue!2491 (value!78057 List!13929)) (CommentValue!4983 (value!78058 List!13929)) (StringLiteralValue!7475 (value!78059 List!13929)) (ErrorTokenValue!2491 (msg!2552 List!13929)) )
))
(declare-datatypes ((String!16691 0))(
  ( (String!16692 (value!78060 String)) )
))
(declare-datatypes ((Regex!3715 0))(
  ( (ElementMatch!3715 (c!224867 C!7720)) (Concat!6207 (regOne!7942 Regex!3715) (regTwo!7942 Regex!3715)) (EmptyExpr!3715) (Star!3715 (reg!4044 Regex!3715)) (EmptyLang!3715) (Union!3715 (regOne!7943 Regex!3715) (regTwo!7943 Regex!3715)) )
))
(declare-datatypes ((TokenValueInjection!4642 0))(
  ( (TokenValueInjection!4643 (toValue!3664 Int) (toChars!3523 Int)) )
))
(declare-datatypes ((Rule!4602 0))(
  ( (Rule!4603 (regex!2401 Regex!3715) (tag!2663 String!16691) (isSeparator!2401 Bool) (transformation!2401 TokenValueInjection!4642)) )
))
(declare-datatypes ((Token!4464 0))(
  ( (Token!4465 (value!78061 TokenValue!2491) (rule!4154 Rule!4602) (size!11357 Int) (originalCharacters!3263 List!13928)) )
))
(declare-fun t1!34 () Token!4464)

(declare-datatypes ((LexerInterface!2096 0))(
  ( (LexerInterfaceExt!2093 (__x!8812 Int)) (Lexer!2094) )
))
(declare-fun thiss!19762 () LexerInterface!2096)

(declare-fun t2!34 () Token!4464)

(declare-datatypes ((List!13930 0))(
  ( (Nil!13864) (Cons!13864 (h!19265 Rule!4602) (t!121281 List!13930)) )
))
(declare-fun rules!2550 () List!13930)

(declare-fun separableTokensPredicate!379 (LexerInterface!2096 Token!4464 Token!4464 List!13930) Bool)

(assert (=> b!1367214 (= res!615776 (not (separableTokensPredicate!379 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1367215 () Bool)

(declare-fun res!615789 () Bool)

(assert (=> b!1367215 (=> res!615789 e!874215)))

(declare-fun lt!453465 () List!13928)

(declare-fun lt!453470 () C!7720)

(assert (=> b!1367215 (= res!615789 (not (contains!2585 lt!453465 lt!453470)))))

(declare-fun e!874208 () Bool)

(declare-fun tp!393295 () Bool)

(declare-fun b!1367216 () Bool)

(declare-fun e!874211 () Bool)

(declare-fun inv!21 (TokenValue!2491) Bool)

(assert (=> b!1367216 (= e!874211 (and (inv!21 (value!78061 t2!34)) e!874208 tp!393295))))

(declare-fun b!1367217 () Bool)

(declare-fun res!615781 () Bool)

(assert (=> b!1367217 (=> res!615781 e!874215)))

(assert (=> b!1367217 (= res!615781 (not (contains!2585 lt!453466 lt!453470)))))

(declare-fun b!1367218 () Bool)

(declare-fun res!615788 () Bool)

(declare-fun e!874212 () Bool)

(assert (=> b!1367218 (=> res!615788 e!874212)))

(declare-datatypes ((List!13931 0))(
  ( (Nil!13865) (Cons!13865 (h!19266 Token!4464) (t!121282 List!13931)) )
))
(declare-fun lt!453459 () List!13931)

(declare-fun lt!453461 () BalanceConc!9068)

(declare-datatypes ((tuple2!13454 0))(
  ( (tuple2!13455 (_1!7613 List!13931) (_2!7613 List!13928)) )
))
(declare-fun lexList!614 (LexerInterface!2096 List!13930 List!13928) tuple2!13454)

(declare-fun list!5330 (BalanceConc!9068) List!13928)

(assert (=> b!1367218 (= res!615788 (not (= (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453461)) (tuple2!13455 lt!453459 Nil!13862))))))

(declare-fun tp!393288 () Bool)

(declare-fun e!874199 () Bool)

(declare-fun b!1367220 () Bool)

(declare-fun e!874210 () Bool)

(declare-fun inv!18213 (String!16691) Bool)

(declare-fun inv!18216 (TokenValueInjection!4642) Bool)

(assert (=> b!1367220 (= e!874210 (and tp!393288 (inv!18213 (tag!2663 (rule!4154 t1!34))) (inv!18216 (transformation!2401 (rule!4154 t1!34))) e!874199))))

(declare-fun b!1367221 () Bool)

(declare-fun res!615768 () Bool)

(assert (=> b!1367221 (=> res!615768 e!874212)))

(declare-datatypes ((IArray!9135 0))(
  ( (IArray!9136 (innerList!4625 List!13931)) )
))
(declare-datatypes ((Conc!4565 0))(
  ( (Node!4565 (left!11867 Conc!4565) (right!12197 Conc!4565) (csize!9360 Int) (cheight!4776 Int)) (Leaf!6962 (xs!7292 IArray!9135) (csize!9361 Int)) (Empty!4565) )
))
(declare-datatypes ((BalanceConc!9070 0))(
  ( (BalanceConc!9071 (c!224868 Conc!4565)) )
))
(declare-datatypes ((tuple2!13456 0))(
  ( (tuple2!13457 (_1!7614 BalanceConc!9070) (_2!7614 BalanceConc!9068)) )
))
(declare-fun lt!453453 () tuple2!13456)

(declare-fun isEmpty!8338 (BalanceConc!9068) Bool)

(assert (=> b!1367221 (= res!615768 (not (isEmpty!8338 (_2!7614 lt!453453))))))

(declare-fun b!1367222 () Bool)

(declare-fun res!615779 () Bool)

(assert (=> b!1367222 (=> res!615779 e!874212)))

(declare-fun lt!453456 () BalanceConc!9068)

(declare-datatypes ((tuple2!13458 0))(
  ( (tuple2!13459 (_1!7615 Token!4464) (_2!7615 List!13928)) )
))
(declare-datatypes ((Option!2662 0))(
  ( (None!2661) (Some!2661 (v!21444 tuple2!13458)) )
))
(declare-fun maxPrefix!1078 (LexerInterface!2096 List!13930 List!13928) Option!2662)

(assert (=> b!1367222 (= res!615779 (not (= (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453456)) (Some!2661 (tuple2!13459 t2!34 Nil!13862)))))))

(declare-fun b!1367223 () Bool)

(declare-fun res!615778 () Bool)

(declare-fun e!874216 () Bool)

(assert (=> b!1367223 (=> (not res!615778) (not e!874216))))

(declare-fun rulesInvariant!1966 (LexerInterface!2096 List!13930) Bool)

(assert (=> b!1367223 (= res!615778 (rulesInvariant!1966 thiss!19762 rules!2550))))

(declare-fun b!1367224 () Bool)

(declare-fun e!874198 () Bool)

(assert (=> b!1367224 (= e!874198 e!874212)))

(declare-fun res!615775 () Bool)

(assert (=> b!1367224 (=> res!615775 e!874212)))

(declare-fun list!5331 (BalanceConc!9070) List!13931)

(assert (=> b!1367224 (= res!615775 (not (= (list!5331 (_1!7614 lt!453453)) lt!453459)))))

(assert (=> b!1367224 (= lt!453459 (Cons!13865 t2!34 Nil!13865))))

(declare-fun lex!923 (LexerInterface!2096 List!13930 BalanceConc!9068) tuple2!13456)

(assert (=> b!1367224 (= lt!453453 (lex!923 thiss!19762 rules!2550 lt!453461))))

(declare-fun print!862 (LexerInterface!2096 BalanceConc!9070) BalanceConc!9068)

(declare-fun singletonSeq!1028 (Token!4464) BalanceConc!9070)

(assert (=> b!1367224 (= lt!453461 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))

(declare-fun b!1367225 () Bool)

(declare-fun contains!2586 (List!13930 Rule!4602) Bool)

(assert (=> b!1367225 (= e!874212 (contains!2586 rules!2550 (rule!4154 t2!34)))))

(declare-fun b!1367226 () Bool)

(declare-fun res!615794 () Bool)

(assert (=> b!1367226 (=> res!615794 e!874215)))

(declare-fun lt!453462 () Regex!3715)

(declare-fun matchR!1708 (Regex!3715 List!13928) Bool)

(assert (=> b!1367226 (= res!615794 (not (matchR!1708 lt!453462 lt!453465)))))

(declare-fun e!874196 () Bool)

(declare-fun e!874213 () Bool)

(assert (=> b!1367227 (= e!874196 (not e!874213))))

(declare-fun res!615793 () Bool)

(assert (=> b!1367227 (=> res!615793 e!874213)))

(declare-fun lambda!57882 () Int)

(declare-fun Exists!867 (Int) Bool)

(assert (=> b!1367227 (= res!615793 (not (Exists!867 lambda!57882)))))

(assert (=> b!1367227 (Exists!867 lambda!57882)))

(declare-datatypes ((Unit!20071 0))(
  ( (Unit!20072) )
))
(declare-fun lt!453472 () Unit!20071)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!185 (Regex!3715 List!13928) Unit!20071)

(assert (=> b!1367227 (= lt!453472 (lemmaPrefixMatchThenExistsStringThatMatches!185 lt!453462 lt!453466))))

(declare-fun b!1367228 () Bool)

(declare-fun res!615784 () Bool)

(assert (=> b!1367228 (=> res!615784 e!874198)))

(declare-fun lt!453468 () List!13931)

(declare-fun lt!453460 () BalanceConc!9068)

(assert (=> b!1367228 (= res!615784 (not (= (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453460)) (tuple2!13455 lt!453468 Nil!13862))))))

(declare-fun b!1367229 () Bool)

(declare-fun res!615783 () Bool)

(assert (=> b!1367229 (=> (not res!615783) (not e!874216))))

(assert (=> b!1367229 (= res!615783 (not (= (isSeparator!2401 (rule!4154 t1!34)) (isSeparator!2401 (rule!4154 t2!34)))))))

(declare-fun b!1367230 () Bool)

(declare-fun res!615773 () Bool)

(assert (=> b!1367230 (=> (not res!615773) (not e!874216))))

(declare-fun rulesProduceIndividualToken!1065 (LexerInterface!2096 List!13930 Token!4464) Bool)

(assert (=> b!1367230 (= res!615773 (rulesProduceIndividualToken!1065 thiss!19762 rules!2550 t1!34))))

(declare-fun e!874207 () Bool)

(declare-fun tp!393298 () Bool)

(declare-fun e!874217 () Bool)

(declare-fun b!1367231 () Bool)

(assert (=> b!1367231 (= e!874217 (and tp!393298 (inv!18213 (tag!2663 (h!19265 rules!2550))) (inv!18216 (transformation!2401 (h!19265 rules!2550))) e!874207))))

(declare-fun b!1367232 () Bool)

(assert (=> b!1367232 (= e!874216 e!874197)))

(declare-fun res!615782 () Bool)

(assert (=> b!1367232 (=> (not res!615782) (not e!874197))))

(declare-fun size!11358 (BalanceConc!9068) Int)

(assert (=> b!1367232 (= res!615782 (> (size!11358 lt!453456) 0))))

(declare-fun charsOf!1373 (Token!4464) BalanceConc!9068)

(assert (=> b!1367232 (= lt!453456 (charsOf!1373 t2!34))))

(declare-fun b!1367233 () Bool)

(assert (=> b!1367233 (= e!874197 e!874196)))

(declare-fun res!615769 () Bool)

(assert (=> b!1367233 (=> (not res!615769) (not e!874196))))

(declare-fun prefixMatch!224 (Regex!3715 List!13928) Bool)

(assert (=> b!1367233 (= res!615769 (prefixMatch!224 lt!453462 lt!453466))))

(declare-fun rulesRegex!284 (LexerInterface!2096 List!13930) Regex!3715)

(assert (=> b!1367233 (= lt!453462 (rulesRegex!284 thiss!19762 rules!2550))))

(declare-fun lt!453458 () List!13928)

(declare-fun ++!3578 (List!13928 List!13928) List!13928)

(assert (=> b!1367233 (= lt!453466 (++!3578 lt!453458 (Cons!13862 lt!453470 Nil!13862)))))

(assert (=> b!1367233 (= lt!453470 (apply!3381 lt!453456 0))))

(assert (=> b!1367233 (= lt!453458 (list!5330 lt!453464))))

(assert (=> b!1367233 (= lt!453464 (charsOf!1373 t1!34))))

(declare-fun e!874206 () Bool)

(declare-fun b!1367234 () Bool)

(declare-fun tp!393297 () Bool)

(assert (=> b!1367234 (= e!874206 (and (inv!21 (value!78061 t1!34)) e!874210 tp!393297))))

(declare-fun b!1367235 () Bool)

(declare-fun tp!393296 () Bool)

(assert (=> b!1367235 (= e!874208 (and tp!393296 (inv!18213 (tag!2663 (rule!4154 t2!34))) (inv!18216 (transformation!2401 (rule!4154 t2!34))) e!874214))))

(declare-fun b!1367236 () Bool)

(declare-fun res!615786 () Bool)

(assert (=> b!1367236 (=> res!615786 e!874198)))

(assert (=> b!1367236 (= res!615786 (not (contains!2586 rules!2550 (rule!4154 t1!34))))))

(declare-fun b!1367237 () Bool)

(assert (=> b!1367237 (= e!874213 e!874204)))

(declare-fun res!615766 () Bool)

(assert (=> b!1367237 (=> res!615766 e!874204)))

(declare-fun getSuffix!563 (List!13928 List!13928) List!13928)

(assert (=> b!1367237 (= res!615766 (not (= lt!453465 (++!3578 lt!453466 (getSuffix!563 lt!453465 lt!453466)))))))

(declare-fun pickWitness!170 (Int) List!13928)

(assert (=> b!1367237 (= lt!453465 (pickWitness!170 lambda!57882))))

(declare-fun b!1367238 () Bool)

(declare-fun res!615787 () Bool)

(assert (=> b!1367238 (=> (not res!615787) (not e!874216))))

(declare-fun isEmpty!8339 (List!13930) Bool)

(assert (=> b!1367238 (= res!615787 (not (isEmpty!8339 rules!2550)))))

(declare-fun b!1367239 () Bool)

(declare-fun e!874218 () Bool)

(declare-fun tp!393293 () Bool)

(assert (=> b!1367239 (= e!874218 (and e!874217 tp!393293))))

(declare-fun e!874219 () Bool)

(declare-fun e!874205 () Bool)

(assert (=> b!1367240 (= e!874219 e!874205)))

(declare-fun res!615780 () Bool)

(assert (=> b!1367240 (=> res!615780 e!874205)))

(declare-fun lambda!57885 () Int)

(declare-fun exists!460 (List!13930 Int) Bool)

(assert (=> b!1367240 (= res!615780 (not (exists!460 rules!2550 lambda!57885)))))

(assert (=> b!1367240 (exists!460 rules!2550 lambda!57885)))

(declare-fun lt!453467 () Unit!20071)

(declare-fun lambda!57883 () Int)

(declare-fun lt!453455 () Regex!3715)

(declare-fun lemmaMapContains!120 (List!13930 Int Regex!3715) Unit!20071)

(assert (=> b!1367240 (= lt!453467 (lemmaMapContains!120 rules!2550 lambda!57883 lt!453455))))

(declare-fun b!1367241 () Bool)

(assert (=> b!1367241 (= e!874205 e!874198)))

(declare-fun res!615774 () Bool)

(assert (=> b!1367241 (=> res!615774 e!874198)))

(declare-fun lt!453471 () tuple2!13456)

(assert (=> b!1367241 (= res!615774 (not (= (list!5331 (_1!7614 lt!453471)) lt!453468)))))

(assert (=> b!1367241 (= lt!453468 (Cons!13865 t1!34 Nil!13865))))

(assert (=> b!1367241 (= lt!453471 (lex!923 thiss!19762 rules!2550 lt!453460))))

(assert (=> b!1367241 (= lt!453460 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))

(declare-fun lt!453469 () Rule!4602)

(declare-fun getWitness!348 (List!13930 Int) Rule!4602)

(assert (=> b!1367241 (= lt!453469 (getWitness!348 rules!2550 lambda!57885))))

(assert (=> b!1367242 (= e!874199 (and tp!393294 tp!393290))))

(declare-fun b!1367243 () Bool)

(declare-fun res!615790 () Bool)

(assert (=> b!1367243 (=> (not res!615790) (not e!874216))))

(assert (=> b!1367243 (= res!615790 (rulesProduceIndividualToken!1065 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1367219 (= e!874207 (and tp!393289 tp!393292))))

(declare-fun res!615767 () Bool)

(assert (=> start!123206 (=> (not res!615767) (not e!874216))))

(get-info :version)

(assert (=> start!123206 (= res!615767 ((_ is Lexer!2094) thiss!19762))))

(assert (=> start!123206 e!874216))

(assert (=> start!123206 true))

(assert (=> start!123206 e!874218))

(declare-fun inv!18217 (Token!4464) Bool)

(assert (=> start!123206 (and (inv!18217 t1!34) e!874206)))

(assert (=> start!123206 (and (inv!18217 t2!34) e!874211)))

(declare-fun e!874203 () Bool)

(assert (=> b!1367244 (= e!874215 e!874203)))

(declare-fun res!615777 () Bool)

(assert (=> b!1367244 (=> res!615777 e!874203)))

(declare-fun lambda!57884 () Int)

(declare-datatypes ((List!13932 0))(
  ( (Nil!13866) (Cons!13866 (h!19267 Regex!3715) (t!121283 List!13932)) )
))
(declare-fun exists!461 (List!13932 Int) Bool)

(declare-fun map!3062 (List!13930 Int) List!13932)

(assert (=> b!1367244 (= res!615777 (not (exists!461 (map!3062 rules!2550 lambda!57883) lambda!57884)))))

(declare-fun lt!453463 () List!13932)

(assert (=> b!1367244 (exists!461 lt!453463 lambda!57884)))

(declare-fun lt!453457 () Unit!20071)

(declare-fun matchRGenUnionSpec!132 (Regex!3715 List!13932 List!13928) Unit!20071)

(assert (=> b!1367244 (= lt!453457 (matchRGenUnionSpec!132 lt!453462 lt!453463 lt!453465))))

(assert (=> b!1367244 (= lt!453463 (map!3062 rules!2550 lambda!57883))))

(declare-fun b!1367245 () Bool)

(declare-fun res!615791 () Bool)

(assert (=> b!1367245 (=> (not res!615791) (not e!874197))))

(declare-fun sepAndNonSepRulesDisjointChars!774 (List!13930 List!13930) Bool)

(assert (=> b!1367245 (= res!615791 (sepAndNonSepRulesDisjointChars!774 rules!2550 rules!2550))))

(declare-fun b!1367246 () Bool)

(declare-fun res!615770 () Bool)

(assert (=> b!1367246 (=> res!615770 e!874198)))

(assert (=> b!1367246 (= res!615770 (not (isEmpty!8338 (_2!7614 lt!453471))))))

(declare-fun b!1367247 () Bool)

(declare-fun res!615772 () Bool)

(assert (=> b!1367247 (=> res!615772 e!874215)))

(assert (=> b!1367247 (= res!615772 (not (contains!2585 lt!453465 lt!453454)))))

(declare-fun b!1367248 () Bool)

(assert (=> b!1367248 (= e!874203 e!874219)))

(declare-fun res!615785 () Bool)

(assert (=> b!1367248 (=> res!615785 e!874219)))

(declare-fun contains!2587 (List!13932 Regex!3715) Bool)

(assert (=> b!1367248 (= res!615785 (not (contains!2587 (map!3062 rules!2550 lambda!57883) lt!453455)))))

(declare-fun getWitness!349 (List!13932 Int) Regex!3715)

(assert (=> b!1367248 (= lt!453455 (getWitness!349 (map!3062 rules!2550 lambda!57883) lambda!57884))))

(declare-fun b!1367249 () Bool)

(declare-fun res!615792 () Bool)

(assert (=> b!1367249 (=> res!615792 e!874198)))

(assert (=> b!1367249 (= res!615792 (not (= (maxPrefix!1078 thiss!19762 rules!2550 lt!453458) (Some!2661 (tuple2!13459 t1!34 Nil!13862)))))))

(assert (= (and start!123206 res!615767) b!1367238))

(assert (= (and b!1367238 res!615787) b!1367223))

(assert (= (and b!1367223 res!615778) b!1367230))

(assert (= (and b!1367230 res!615773) b!1367243))

(assert (= (and b!1367243 res!615790) b!1367229))

(assert (= (and b!1367229 res!615783) b!1367232))

(assert (= (and b!1367232 res!615782) b!1367245))

(assert (= (and b!1367245 res!615791) b!1367214))

(assert (= (and b!1367214 res!615776) b!1367233))

(assert (= (and b!1367233 res!615769) b!1367227))

(assert (= (and b!1367227 (not res!615793)) b!1367237))

(assert (= (and b!1367237 (not res!615766)) b!1367213))

(assert (= (and b!1367213 (not res!615771)) b!1367247))

(assert (= (and b!1367247 (not res!615772)) b!1367217))

(assert (= (and b!1367217 (not res!615781)) b!1367215))

(assert (= (and b!1367215 (not res!615789)) b!1367226))

(assert (= (and b!1367226 (not res!615794)) b!1367244))

(assert (= (and b!1367244 (not res!615777)) b!1367248))

(assert (= (and b!1367248 (not res!615785)) b!1367240))

(assert (= (and b!1367240 (not res!615780)) b!1367241))

(assert (= (and b!1367241 (not res!615774)) b!1367246))

(assert (= (and b!1367246 (not res!615770)) b!1367228))

(assert (= (and b!1367228 (not res!615784)) b!1367249))

(assert (= (and b!1367249 (not res!615792)) b!1367236))

(assert (= (and b!1367236 (not res!615786)) b!1367224))

(assert (= (and b!1367224 (not res!615775)) b!1367221))

(assert (= (and b!1367221 (not res!615768)) b!1367218))

(assert (= (and b!1367218 (not res!615788)) b!1367222))

(assert (= (and b!1367222 (not res!615779)) b!1367225))

(assert (= b!1367231 b!1367219))

(assert (= b!1367239 b!1367231))

(assert (= (and start!123206 ((_ is Cons!13864) rules!2550)) b!1367239))

(assert (= b!1367220 b!1367242))

(assert (= b!1367234 b!1367220))

(assert (= start!123206 b!1367234))

(assert (= b!1367235 b!1367212))

(assert (= b!1367216 b!1367235))

(assert (= start!123206 b!1367216))

(declare-fun m!1535781 () Bool)

(assert (=> b!1367214 m!1535781))

(declare-fun m!1535783 () Bool)

(assert (=> b!1367228 m!1535783))

(assert (=> b!1367228 m!1535783))

(declare-fun m!1535785 () Bool)

(assert (=> b!1367228 m!1535785))

(declare-fun m!1535787 () Bool)

(assert (=> b!1367247 m!1535787))

(declare-fun m!1535789 () Bool)

(assert (=> b!1367243 m!1535789))

(declare-fun m!1535791 () Bool)

(assert (=> b!1367240 m!1535791))

(assert (=> b!1367240 m!1535791))

(declare-fun m!1535793 () Bool)

(assert (=> b!1367240 m!1535793))

(declare-fun m!1535795 () Bool)

(assert (=> b!1367218 m!1535795))

(assert (=> b!1367218 m!1535795))

(declare-fun m!1535797 () Bool)

(assert (=> b!1367218 m!1535797))

(declare-fun m!1535799 () Bool)

(assert (=> b!1367221 m!1535799))

(declare-fun m!1535801 () Bool)

(assert (=> b!1367226 m!1535801))

(declare-fun m!1535803 () Bool)

(assert (=> b!1367225 m!1535803))

(declare-fun m!1535805 () Bool)

(assert (=> b!1367236 m!1535805))

(declare-fun m!1535807 () Bool)

(assert (=> b!1367227 m!1535807))

(assert (=> b!1367227 m!1535807))

(declare-fun m!1535809 () Bool)

(assert (=> b!1367227 m!1535809))

(declare-fun m!1535811 () Bool)

(assert (=> b!1367244 m!1535811))

(declare-fun m!1535813 () Bool)

(assert (=> b!1367244 m!1535813))

(declare-fun m!1535815 () Bool)

(assert (=> b!1367244 m!1535815))

(assert (=> b!1367244 m!1535811))

(declare-fun m!1535817 () Bool)

(assert (=> b!1367244 m!1535817))

(assert (=> b!1367244 m!1535811))

(declare-fun m!1535819 () Bool)

(assert (=> b!1367231 m!1535819))

(declare-fun m!1535821 () Bool)

(assert (=> b!1367231 m!1535821))

(declare-fun m!1535823 () Bool)

(assert (=> b!1367224 m!1535823))

(declare-fun m!1535825 () Bool)

(assert (=> b!1367224 m!1535825))

(declare-fun m!1535827 () Bool)

(assert (=> b!1367224 m!1535827))

(assert (=> b!1367224 m!1535827))

(declare-fun m!1535829 () Bool)

(assert (=> b!1367224 m!1535829))

(declare-fun m!1535831 () Bool)

(assert (=> b!1367249 m!1535831))

(declare-fun m!1535833 () Bool)

(assert (=> b!1367241 m!1535833))

(declare-fun m!1535835 () Bool)

(assert (=> b!1367241 m!1535835))

(declare-fun m!1535837 () Bool)

(assert (=> b!1367241 m!1535837))

(declare-fun m!1535839 () Bool)

(assert (=> b!1367241 m!1535839))

(assert (=> b!1367241 m!1535835))

(declare-fun m!1535841 () Bool)

(assert (=> b!1367241 m!1535841))

(declare-fun m!1535843 () Bool)

(assert (=> b!1367234 m!1535843))

(declare-fun m!1535845 () Bool)

(assert (=> b!1367238 m!1535845))

(declare-fun m!1535847 () Bool)

(assert (=> start!123206 m!1535847))

(declare-fun m!1535849 () Bool)

(assert (=> start!123206 m!1535849))

(declare-fun m!1535851 () Bool)

(assert (=> b!1367223 m!1535851))

(declare-fun m!1535853 () Bool)

(assert (=> b!1367237 m!1535853))

(assert (=> b!1367237 m!1535853))

(declare-fun m!1535855 () Bool)

(assert (=> b!1367237 m!1535855))

(declare-fun m!1535857 () Bool)

(assert (=> b!1367237 m!1535857))

(declare-fun m!1535859 () Bool)

(assert (=> b!1367216 m!1535859))

(declare-fun m!1535861 () Bool)

(assert (=> b!1367217 m!1535861))

(declare-fun m!1535863 () Bool)

(assert (=> b!1367235 m!1535863))

(declare-fun m!1535865 () Bool)

(assert (=> b!1367235 m!1535865))

(declare-fun m!1535867 () Bool)

(assert (=> b!1367230 m!1535867))

(assert (=> b!1367248 m!1535811))

(assert (=> b!1367248 m!1535811))

(declare-fun m!1535869 () Bool)

(assert (=> b!1367248 m!1535869))

(assert (=> b!1367248 m!1535811))

(assert (=> b!1367248 m!1535811))

(declare-fun m!1535871 () Bool)

(assert (=> b!1367248 m!1535871))

(declare-fun m!1535873 () Bool)

(assert (=> b!1367245 m!1535873))

(declare-fun m!1535875 () Bool)

(assert (=> b!1367222 m!1535875))

(assert (=> b!1367222 m!1535875))

(declare-fun m!1535877 () Bool)

(assert (=> b!1367222 m!1535877))

(declare-fun m!1535879 () Bool)

(assert (=> b!1367213 m!1535879))

(declare-fun m!1535881 () Bool)

(assert (=> b!1367213 m!1535881))

(declare-fun m!1535883 () Bool)

(assert (=> b!1367220 m!1535883))

(declare-fun m!1535885 () Bool)

(assert (=> b!1367220 m!1535885))

(declare-fun m!1535887 () Bool)

(assert (=> b!1367246 m!1535887))

(declare-fun m!1535889 () Bool)

(assert (=> b!1367233 m!1535889))

(declare-fun m!1535891 () Bool)

(assert (=> b!1367233 m!1535891))

(declare-fun m!1535893 () Bool)

(assert (=> b!1367233 m!1535893))

(declare-fun m!1535895 () Bool)

(assert (=> b!1367233 m!1535895))

(declare-fun m!1535897 () Bool)

(assert (=> b!1367233 m!1535897))

(declare-fun m!1535899 () Bool)

(assert (=> b!1367233 m!1535899))

(declare-fun m!1535901 () Bool)

(assert (=> b!1367232 m!1535901))

(declare-fun m!1535903 () Bool)

(assert (=> b!1367232 m!1535903))

(declare-fun m!1535905 () Bool)

(assert (=> b!1367215 m!1535905))

(check-sat (not b!1367214) (not b_next!33851) b_and!91649 (not b!1367239) (not b!1367223) (not b!1367241) (not b!1367220) (not b!1367222) (not b!1367236) (not b!1367247) (not b!1367228) (not b!1367217) (not b!1367234) (not b_next!33857) (not b_next!33861) (not b!1367235) (not b!1367230) (not b!1367237) (not b!1367215) (not b!1367246) b_and!91651 (not b!1367249) b_and!91643 (not b!1367225) (not b!1367248) (not b!1367232) (not b!1367227) (not b!1367221) (not b!1367224) b_and!91647 (not start!123206) (not b!1367226) (not b!1367240) b_and!91653 (not b!1367245) (not b_next!33855) (not b!1367231) (not b!1367213) (not b!1367238) (not b!1367216) (not b!1367244) (not b!1367233) (not b!1367243) (not b!1367218) (not b_next!33853) b_and!91645 (not b_next!33859))
(check-sat (not b_next!33857) (not b_next!33861) b_and!91651 (not b_next!33851) b_and!91643 b_and!91649 b_and!91647 b_and!91653 (not b_next!33855) (not b_next!33853) b_and!91645 (not b_next!33859))
(get-model)

(declare-fun d!389463 () Bool)

(assert (=> d!389463 (= (inv!18213 (tag!2663 (h!19265 rules!2550))) (= (mod (str.len (value!78060 (tag!2663 (h!19265 rules!2550)))) 2) 0))))

(assert (=> b!1367231 d!389463))

(declare-fun d!389465 () Bool)

(declare-fun res!615814 () Bool)

(declare-fun e!874236 () Bool)

(assert (=> d!389465 (=> (not res!615814) (not e!874236))))

(declare-fun semiInverseModEq!923 (Int Int) Bool)

(assert (=> d!389465 (= res!615814 (semiInverseModEq!923 (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (h!19265 rules!2550)))))))

(assert (=> d!389465 (= (inv!18216 (transformation!2401 (h!19265 rules!2550))) e!874236)))

(declare-fun b!1367283 () Bool)

(declare-fun equivClasses!882 (Int Int) Bool)

(assert (=> b!1367283 (= e!874236 (equivClasses!882 (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (h!19265 rules!2550)))))))

(assert (= (and d!389465 res!615814) b!1367283))

(declare-fun m!1535913 () Bool)

(assert (=> d!389465 m!1535913))

(declare-fun m!1535915 () Bool)

(assert (=> b!1367283 m!1535915))

(assert (=> b!1367231 d!389465))

(declare-fun d!389469 () Bool)

(declare-fun lt!453478 () Int)

(declare-fun size!11363 (List!13928) Int)

(assert (=> d!389469 (= lt!453478 (size!11363 (list!5330 lt!453456)))))

(declare-fun size!11364 (Conc!4564) Int)

(assert (=> d!389469 (= lt!453478 (size!11364 (c!224866 lt!453456)))))

(assert (=> d!389469 (= (size!11358 lt!453456) lt!453478)))

(declare-fun bs!335178 () Bool)

(assert (= bs!335178 d!389469))

(assert (=> bs!335178 m!1535875))

(assert (=> bs!335178 m!1535875))

(declare-fun m!1535933 () Bool)

(assert (=> bs!335178 m!1535933))

(declare-fun m!1535935 () Bool)

(assert (=> bs!335178 m!1535935))

(assert (=> b!1367232 d!389469))

(declare-fun d!389475 () Bool)

(declare-fun lt!453484 () BalanceConc!9068)

(assert (=> d!389475 (= (list!5330 lt!453484) (originalCharacters!3263 t2!34))))

(declare-fun dynLambda!6263 (Int TokenValue!2491) BalanceConc!9068)

(assert (=> d!389475 (= lt!453484 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))

(assert (=> d!389475 (= (charsOf!1373 t2!34) lt!453484)))

(declare-fun b_lambda!41617 () Bool)

(assert (=> (not b_lambda!41617) (not d!389475)))

(declare-fun tb!72055 () Bool)

(declare-fun t!121291 () Bool)

(assert (=> (and b!1367219 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) t!121291) tb!72055))

(declare-fun b!1367303 () Bool)

(declare-fun e!874247 () Bool)

(declare-fun tp!393304 () Bool)

(declare-fun inv!18220 (Conc!4564) Bool)

(assert (=> b!1367303 (= e!874247 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))) tp!393304))))

(declare-fun result!87486 () Bool)

(declare-fun inv!18221 (BalanceConc!9068) Bool)

(assert (=> tb!72055 (= result!87486 (and (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))) e!874247))))

(assert (= tb!72055 b!1367303))

(declare-fun m!1535957 () Bool)

(assert (=> b!1367303 m!1535957))

(declare-fun m!1535959 () Bool)

(assert (=> tb!72055 m!1535959))

(assert (=> d!389475 t!121291))

(declare-fun b_and!91661 () Bool)

(assert (= b_and!91645 (and (=> t!121291 result!87486) b_and!91661)))

(declare-fun t!121293 () Bool)

(declare-fun tb!72057 () Bool)

(assert (=> (and b!1367242 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) t!121293) tb!72057))

(declare-fun result!87490 () Bool)

(assert (= result!87490 result!87486))

(assert (=> d!389475 t!121293))

(declare-fun b_and!91663 () Bool)

(assert (= b_and!91649 (and (=> t!121293 result!87490) b_and!91663)))

(declare-fun t!121295 () Bool)

(declare-fun tb!72059 () Bool)

(assert (=> (and b!1367212 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) t!121295) tb!72059))

(declare-fun result!87492 () Bool)

(assert (= result!87492 result!87486))

(assert (=> d!389475 t!121295))

(declare-fun b_and!91665 () Bool)

(assert (= b_and!91653 (and (=> t!121295 result!87492) b_and!91665)))

(declare-fun m!1535961 () Bool)

(assert (=> d!389475 m!1535961))

(declare-fun m!1535963 () Bool)

(assert (=> d!389475 m!1535963))

(assert (=> b!1367232 d!389475))

(declare-fun d!389481 () Bool)

(declare-fun list!5333 (Conc!4564) List!13928)

(assert (=> d!389481 (= (list!5330 lt!453464) (list!5333 (c!224866 lt!453464)))))

(declare-fun bs!335179 () Bool)

(assert (= bs!335179 d!389481))

(declare-fun m!1535969 () Bool)

(assert (=> bs!335179 m!1535969))

(assert (=> b!1367233 d!389481))

(declare-fun d!389485 () Bool)

(declare-fun lt!453499 () C!7720)

(declare-fun apply!3384 (List!13928 Int) C!7720)

(assert (=> d!389485 (= lt!453499 (apply!3384 (list!5330 lt!453456) 0))))

(declare-fun apply!3385 (Conc!4564 Int) C!7720)

(assert (=> d!389485 (= lt!453499 (apply!3385 (c!224866 lt!453456) 0))))

(declare-fun e!874262 () Bool)

(assert (=> d!389485 e!874262))

(declare-fun res!615828 () Bool)

(assert (=> d!389485 (=> (not res!615828) (not e!874262))))

(assert (=> d!389485 (= res!615828 (<= 0 0))))

(assert (=> d!389485 (= (apply!3381 lt!453456 0) lt!453499)))

(declare-fun b!1367321 () Bool)

(assert (=> b!1367321 (= e!874262 (< 0 (size!11358 lt!453456)))))

(assert (= (and d!389485 res!615828) b!1367321))

(assert (=> d!389485 m!1535875))

(assert (=> d!389485 m!1535875))

(declare-fun m!1535993 () Bool)

(assert (=> d!389485 m!1535993))

(declare-fun m!1535995 () Bool)

(assert (=> d!389485 m!1535995))

(assert (=> b!1367321 m!1535901))

(assert (=> b!1367233 d!389485))

(declare-fun d!389493 () Bool)

(declare-fun c!224896 () Bool)

(declare-fun isEmpty!8341 (List!13928) Bool)

(assert (=> d!389493 (= c!224896 (isEmpty!8341 lt!453466))))

(declare-fun e!874282 () Bool)

(assert (=> d!389493 (= (prefixMatch!224 lt!453462 lt!453466) e!874282)))

(declare-fun b!1367354 () Bool)

(declare-fun lostCause!329 (Regex!3715) Bool)

(assert (=> b!1367354 (= e!874282 (not (lostCause!329 lt!453462)))))

(declare-fun b!1367355 () Bool)

(declare-fun derivativeStep!953 (Regex!3715 C!7720) Regex!3715)

(declare-fun head!2454 (List!13928) C!7720)

(declare-fun tail!1974 (List!13928) List!13928)

(assert (=> b!1367355 (= e!874282 (prefixMatch!224 (derivativeStep!953 lt!453462 (head!2454 lt!453466)) (tail!1974 lt!453466)))))

(assert (= (and d!389493 c!224896) b!1367354))

(assert (= (and d!389493 (not c!224896)) b!1367355))

(declare-fun m!1536029 () Bool)

(assert (=> d!389493 m!1536029))

(declare-fun m!1536031 () Bool)

(assert (=> b!1367354 m!1536031))

(declare-fun m!1536033 () Bool)

(assert (=> b!1367355 m!1536033))

(assert (=> b!1367355 m!1536033))

(declare-fun m!1536035 () Bool)

(assert (=> b!1367355 m!1536035))

(declare-fun m!1536037 () Bool)

(assert (=> b!1367355 m!1536037))

(assert (=> b!1367355 m!1536035))

(assert (=> b!1367355 m!1536037))

(declare-fun m!1536039 () Bool)

(assert (=> b!1367355 m!1536039))

(assert (=> b!1367233 d!389493))

(declare-fun d!389501 () Bool)

(declare-fun lt!453510 () BalanceConc!9068)

(assert (=> d!389501 (= (list!5330 lt!453510) (originalCharacters!3263 t1!34))))

(assert (=> d!389501 (= lt!453510 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))

(assert (=> d!389501 (= (charsOf!1373 t1!34) lt!453510)))

(declare-fun b_lambda!41625 () Bool)

(assert (=> (not b_lambda!41625) (not d!389501)))

(declare-fun tb!72061 () Bool)

(declare-fun t!121297 () Bool)

(assert (=> (and b!1367219 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) t!121297) tb!72061))

(declare-fun b!1367356 () Bool)

(declare-fun e!874283 () Bool)

(declare-fun tp!393305 () Bool)

(assert (=> b!1367356 (= e!874283 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))) tp!393305))))

(declare-fun result!87494 () Bool)

(assert (=> tb!72061 (= result!87494 (and (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))) e!874283))))

(assert (= tb!72061 b!1367356))

(declare-fun m!1536045 () Bool)

(assert (=> b!1367356 m!1536045))

(declare-fun m!1536047 () Bool)

(assert (=> tb!72061 m!1536047))

(assert (=> d!389501 t!121297))

(declare-fun b_and!91667 () Bool)

(assert (= b_and!91661 (and (=> t!121297 result!87494) b_and!91667)))

(declare-fun t!121299 () Bool)

(declare-fun tb!72063 () Bool)

(assert (=> (and b!1367242 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) t!121299) tb!72063))

(declare-fun result!87496 () Bool)

(assert (= result!87496 result!87494))

(assert (=> d!389501 t!121299))

(declare-fun b_and!91669 () Bool)

(assert (= b_and!91663 (and (=> t!121299 result!87496) b_and!91669)))

(declare-fun tb!72065 () Bool)

(declare-fun t!121301 () Bool)

(assert (=> (and b!1367212 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) t!121301) tb!72065))

(declare-fun result!87498 () Bool)

(assert (= result!87498 result!87494))

(assert (=> d!389501 t!121301))

(declare-fun b_and!91671 () Bool)

(assert (= b_and!91665 (and (=> t!121301 result!87498) b_and!91671)))

(declare-fun m!1536049 () Bool)

(assert (=> d!389501 m!1536049))

(declare-fun m!1536051 () Bool)

(assert (=> d!389501 m!1536051))

(assert (=> b!1367233 d!389501))

(declare-fun b!1367366 () Bool)

(declare-fun e!874289 () List!13928)

(assert (=> b!1367366 (= e!874289 (Cons!13862 (h!19263 lt!453458) (++!3578 (t!121279 lt!453458) (Cons!13862 lt!453470 Nil!13862))))))

(declare-fun e!874288 () Bool)

(declare-fun b!1367368 () Bool)

(declare-fun lt!453516 () List!13928)

(assert (=> b!1367368 (= e!874288 (or (not (= (Cons!13862 lt!453470 Nil!13862) Nil!13862)) (= lt!453516 lt!453458)))))

(declare-fun b!1367365 () Bool)

(assert (=> b!1367365 (= e!874289 (Cons!13862 lt!453470 Nil!13862))))

(declare-fun b!1367367 () Bool)

(declare-fun res!615841 () Bool)

(assert (=> b!1367367 (=> (not res!615841) (not e!874288))))

(assert (=> b!1367367 (= res!615841 (= (size!11363 lt!453516) (+ (size!11363 lt!453458) (size!11363 (Cons!13862 lt!453470 Nil!13862)))))))

(declare-fun d!389505 () Bool)

(assert (=> d!389505 e!874288))

(declare-fun res!615842 () Bool)

(assert (=> d!389505 (=> (not res!615842) (not e!874288))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2019 (List!13928) (InoxSet C!7720))

(assert (=> d!389505 (= res!615842 (= (content!2019 lt!453516) ((_ map or) (content!2019 lt!453458) (content!2019 (Cons!13862 lt!453470 Nil!13862)))))))

(assert (=> d!389505 (= lt!453516 e!874289)))

(declare-fun c!224899 () Bool)

(assert (=> d!389505 (= c!224899 ((_ is Nil!13862) lt!453458))))

(assert (=> d!389505 (= (++!3578 lt!453458 (Cons!13862 lt!453470 Nil!13862)) lt!453516)))

(assert (= (and d!389505 c!224899) b!1367365))

(assert (= (and d!389505 (not c!224899)) b!1367366))

(assert (= (and d!389505 res!615842) b!1367367))

(assert (= (and b!1367367 res!615841) b!1367368))

(declare-fun m!1536053 () Bool)

(assert (=> b!1367366 m!1536053))

(declare-fun m!1536055 () Bool)

(assert (=> b!1367367 m!1536055))

(declare-fun m!1536057 () Bool)

(assert (=> b!1367367 m!1536057))

(declare-fun m!1536059 () Bool)

(assert (=> b!1367367 m!1536059))

(declare-fun m!1536061 () Bool)

(assert (=> d!389505 m!1536061))

(declare-fun m!1536063 () Bool)

(assert (=> d!389505 m!1536063))

(declare-fun m!1536065 () Bool)

(assert (=> d!389505 m!1536065))

(assert (=> b!1367233 d!389505))

(declare-fun bs!335184 () Bool)

(declare-fun d!389507 () Bool)

(assert (= bs!335184 (and d!389507 b!1367244)))

(declare-fun lambda!57891 () Int)

(assert (=> bs!335184 (= lambda!57891 lambda!57883)))

(declare-fun lt!453521 () Unit!20071)

(declare-fun lemma!123 (List!13930 LexerInterface!2096 List!13930) Unit!20071)

(assert (=> d!389507 (= lt!453521 (lemma!123 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!131 (List!13932) Regex!3715)

(assert (=> d!389507 (= (rulesRegex!284 thiss!19762 rules!2550) (generalisedUnion!131 (map!3062 rules!2550 lambda!57891)))))

(declare-fun bs!335186 () Bool)

(assert (= bs!335186 d!389507))

(declare-fun m!1536079 () Bool)

(assert (=> bs!335186 m!1536079))

(declare-fun m!1536081 () Bool)

(assert (=> bs!335186 m!1536081))

(assert (=> bs!335186 m!1536081))

(declare-fun m!1536083 () Bool)

(assert (=> bs!335186 m!1536083))

(assert (=> b!1367233 d!389507))

(declare-fun d!389513 () Bool)

(declare-fun lt!453552 () Bool)

(declare-fun e!874336 () Bool)

(assert (=> d!389513 (= lt!453552 e!874336)))

(declare-fun res!615892 () Bool)

(assert (=> d!389513 (=> (not res!615892) (not e!874336))))

(assert (=> d!389513 (= res!615892 (= (list!5331 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))))) (list!5331 (singletonSeq!1028 t1!34))))))

(declare-fun e!874337 () Bool)

(assert (=> d!389513 (= lt!453552 e!874337)))

(declare-fun res!615891 () Bool)

(assert (=> d!389513 (=> (not res!615891) (not e!874337))))

(declare-fun lt!453551 () tuple2!13456)

(declare-fun size!11366 (BalanceConc!9070) Int)

(assert (=> d!389513 (= res!615891 (= (size!11366 (_1!7614 lt!453551)) 1))))

(assert (=> d!389513 (= lt!453551 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))))))

(assert (=> d!389513 (not (isEmpty!8339 rules!2550))))

(assert (=> d!389513 (= (rulesProduceIndividualToken!1065 thiss!19762 rules!2550 t1!34) lt!453552)))

(declare-fun b!1367429 () Bool)

(declare-fun res!615890 () Bool)

(assert (=> b!1367429 (=> (not res!615890) (not e!874337))))

(declare-fun apply!3386 (BalanceConc!9070 Int) Token!4464)

(assert (=> b!1367429 (= res!615890 (= (apply!3386 (_1!7614 lt!453551) 0) t1!34))))

(declare-fun b!1367430 () Bool)

(assert (=> b!1367430 (= e!874337 (isEmpty!8338 (_2!7614 lt!453551)))))

(declare-fun b!1367431 () Bool)

(assert (=> b!1367431 (= e!874336 (isEmpty!8338 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))))))))

(assert (= (and d!389513 res!615891) b!1367429))

(assert (= (and b!1367429 res!615890) b!1367430))

(assert (= (and d!389513 res!615892) b!1367431))

(assert (=> d!389513 m!1535841))

(declare-fun m!1536151 () Bool)

(assert (=> d!389513 m!1536151))

(assert (=> d!389513 m!1535835))

(assert (=> d!389513 m!1535835))

(declare-fun m!1536153 () Bool)

(assert (=> d!389513 m!1536153))

(assert (=> d!389513 m!1535835))

(assert (=> d!389513 m!1535841))

(declare-fun m!1536155 () Bool)

(assert (=> d!389513 m!1536155))

(declare-fun m!1536157 () Bool)

(assert (=> d!389513 m!1536157))

(assert (=> d!389513 m!1535845))

(declare-fun m!1536159 () Bool)

(assert (=> b!1367429 m!1536159))

(declare-fun m!1536161 () Bool)

(assert (=> b!1367430 m!1536161))

(assert (=> b!1367431 m!1535835))

(assert (=> b!1367431 m!1535835))

(assert (=> b!1367431 m!1535841))

(assert (=> b!1367431 m!1535841))

(assert (=> b!1367431 m!1536151))

(declare-fun m!1536163 () Bool)

(assert (=> b!1367431 m!1536163))

(assert (=> b!1367230 d!389513))

(declare-fun d!389539 () Bool)

(declare-fun lt!453557 () Bool)

(assert (=> d!389539 (= lt!453557 (select (content!2019 lt!453465) lt!453470))))

(declare-fun e!874344 () Bool)

(assert (=> d!389539 (= lt!453557 e!874344)))

(declare-fun res!615900 () Bool)

(assert (=> d!389539 (=> (not res!615900) (not e!874344))))

(assert (=> d!389539 (= res!615900 ((_ is Cons!13862) lt!453465))))

(assert (=> d!389539 (= (contains!2585 lt!453465 lt!453470) lt!453557)))

(declare-fun b!1367439 () Bool)

(declare-fun e!874345 () Bool)

(assert (=> b!1367439 (= e!874344 e!874345)))

(declare-fun res!615901 () Bool)

(assert (=> b!1367439 (=> res!615901 e!874345)))

(assert (=> b!1367439 (= res!615901 (= (h!19263 lt!453465) lt!453470))))

(declare-fun b!1367440 () Bool)

(assert (=> b!1367440 (= e!874345 (contains!2585 (t!121279 lt!453465) lt!453470))))

(assert (= (and d!389539 res!615900) b!1367439))

(assert (= (and b!1367439 (not res!615901)) b!1367440))

(declare-fun m!1536179 () Bool)

(assert (=> d!389539 m!1536179))

(declare-fun m!1536181 () Bool)

(assert (=> d!389539 m!1536181))

(declare-fun m!1536183 () Bool)

(assert (=> b!1367440 m!1536183))

(assert (=> b!1367215 d!389539))

(declare-fun b!1367457 () Bool)

(declare-fun res!615910 () Bool)

(declare-fun e!874357 () Bool)

(assert (=> b!1367457 (=> res!615910 e!874357)))

(assert (=> b!1367457 (= res!615910 (not ((_ is IntegerValue!7475) (value!78061 t2!34))))))

(declare-fun e!874359 () Bool)

(assert (=> b!1367457 (= e!874359 e!874357)))

(declare-fun b!1367458 () Bool)

(declare-fun inv!15 (TokenValue!2491) Bool)

(assert (=> b!1367458 (= e!874357 (inv!15 (value!78061 t2!34)))))

(declare-fun b!1367459 () Bool)

(declare-fun inv!17 (TokenValue!2491) Bool)

(assert (=> b!1367459 (= e!874359 (inv!17 (value!78061 t2!34)))))

(declare-fun d!389545 () Bool)

(declare-fun c!224910 () Bool)

(assert (=> d!389545 (= c!224910 ((_ is IntegerValue!7473) (value!78061 t2!34)))))

(declare-fun e!874358 () Bool)

(assert (=> d!389545 (= (inv!21 (value!78061 t2!34)) e!874358)))

(declare-fun b!1367460 () Bool)

(declare-fun inv!16 (TokenValue!2491) Bool)

(assert (=> b!1367460 (= e!874358 (inv!16 (value!78061 t2!34)))))

(declare-fun b!1367461 () Bool)

(assert (=> b!1367461 (= e!874358 e!874359)))

(declare-fun c!224911 () Bool)

(assert (=> b!1367461 (= c!224911 ((_ is IntegerValue!7474) (value!78061 t2!34)))))

(assert (= (and d!389545 c!224910) b!1367460))

(assert (= (and d!389545 (not c!224910)) b!1367461))

(assert (= (and b!1367461 c!224911) b!1367459))

(assert (= (and b!1367461 (not c!224911)) b!1367457))

(assert (= (and b!1367457 (not res!615910)) b!1367458))

(declare-fun m!1536203 () Bool)

(assert (=> b!1367458 m!1536203))

(declare-fun m!1536205 () Bool)

(assert (=> b!1367459 m!1536205))

(declare-fun m!1536207 () Bool)

(assert (=> b!1367460 m!1536207))

(assert (=> b!1367216 d!389545))

(declare-fun b!1367463 () Bool)

(declare-fun e!874361 () List!13928)

(assert (=> b!1367463 (= e!874361 (Cons!13862 (h!19263 lt!453466) (++!3578 (t!121279 lt!453466) (getSuffix!563 lt!453465 lt!453466))))))

(declare-fun b!1367465 () Bool)

(declare-fun lt!453560 () List!13928)

(declare-fun e!874360 () Bool)

(assert (=> b!1367465 (= e!874360 (or (not (= (getSuffix!563 lt!453465 lt!453466) Nil!13862)) (= lt!453560 lt!453466)))))

(declare-fun b!1367462 () Bool)

(assert (=> b!1367462 (= e!874361 (getSuffix!563 lt!453465 lt!453466))))

(declare-fun b!1367464 () Bool)

(declare-fun res!615911 () Bool)

(assert (=> b!1367464 (=> (not res!615911) (not e!874360))))

(assert (=> b!1367464 (= res!615911 (= (size!11363 lt!453560) (+ (size!11363 lt!453466) (size!11363 (getSuffix!563 lt!453465 lt!453466)))))))

(declare-fun d!389551 () Bool)

(assert (=> d!389551 e!874360))

(declare-fun res!615912 () Bool)

(assert (=> d!389551 (=> (not res!615912) (not e!874360))))

(assert (=> d!389551 (= res!615912 (= (content!2019 lt!453560) ((_ map or) (content!2019 lt!453466) (content!2019 (getSuffix!563 lt!453465 lt!453466)))))))

(assert (=> d!389551 (= lt!453560 e!874361)))

(declare-fun c!224912 () Bool)

(assert (=> d!389551 (= c!224912 ((_ is Nil!13862) lt!453466))))

(assert (=> d!389551 (= (++!3578 lt!453466 (getSuffix!563 lt!453465 lt!453466)) lt!453560)))

(assert (= (and d!389551 c!224912) b!1367462))

(assert (= (and d!389551 (not c!224912)) b!1367463))

(assert (= (and d!389551 res!615912) b!1367464))

(assert (= (and b!1367464 res!615911) b!1367465))

(assert (=> b!1367463 m!1535853))

(declare-fun m!1536209 () Bool)

(assert (=> b!1367463 m!1536209))

(declare-fun m!1536211 () Bool)

(assert (=> b!1367464 m!1536211))

(declare-fun m!1536213 () Bool)

(assert (=> b!1367464 m!1536213))

(assert (=> b!1367464 m!1535853))

(declare-fun m!1536215 () Bool)

(assert (=> b!1367464 m!1536215))

(declare-fun m!1536217 () Bool)

(assert (=> d!389551 m!1536217))

(declare-fun m!1536219 () Bool)

(assert (=> d!389551 m!1536219))

(assert (=> d!389551 m!1535853))

(declare-fun m!1536221 () Bool)

(assert (=> d!389551 m!1536221))

(assert (=> b!1367237 d!389551))

(declare-fun d!389553 () Bool)

(declare-fun lt!453563 () List!13928)

(assert (=> d!389553 (= (++!3578 lt!453466 lt!453563) lt!453465)))

(declare-fun e!874364 () List!13928)

(assert (=> d!389553 (= lt!453563 e!874364)))

(declare-fun c!224915 () Bool)

(assert (=> d!389553 (= c!224915 ((_ is Cons!13862) lt!453466))))

(assert (=> d!389553 (>= (size!11363 lt!453465) (size!11363 lt!453466))))

(assert (=> d!389553 (= (getSuffix!563 lt!453465 lt!453466) lt!453563)))

(declare-fun b!1367470 () Bool)

(assert (=> b!1367470 (= e!874364 (getSuffix!563 (tail!1974 lt!453465) (t!121279 lt!453466)))))

(declare-fun b!1367471 () Bool)

(assert (=> b!1367471 (= e!874364 lt!453465)))

(assert (= (and d!389553 c!224915) b!1367470))

(assert (= (and d!389553 (not c!224915)) b!1367471))

(declare-fun m!1536223 () Bool)

(assert (=> d!389553 m!1536223))

(declare-fun m!1536225 () Bool)

(assert (=> d!389553 m!1536225))

(assert (=> d!389553 m!1536213))

(declare-fun m!1536227 () Bool)

(assert (=> b!1367470 m!1536227))

(assert (=> b!1367470 m!1536227))

(declare-fun m!1536229 () Bool)

(assert (=> b!1367470 m!1536229))

(assert (=> b!1367237 d!389553))

(declare-fun d!389555 () Bool)

(declare-fun lt!453568 () List!13928)

(declare-fun dynLambda!6264 (Int List!13928) Bool)

(assert (=> d!389555 (dynLambda!6264 lambda!57882 lt!453568)))

(declare-fun choose!8411 (Int) List!13928)

(assert (=> d!389555 (= lt!453568 (choose!8411 lambda!57882))))

(assert (=> d!389555 (Exists!867 lambda!57882)))

(assert (=> d!389555 (= (pickWitness!170 lambda!57882) lt!453568)))

(declare-fun b_lambda!41635 () Bool)

(assert (=> (not b_lambda!41635) (not d!389555)))

(declare-fun bs!335191 () Bool)

(assert (= bs!335191 d!389555))

(declare-fun m!1536231 () Bool)

(assert (=> bs!335191 m!1536231))

(declare-fun m!1536233 () Bool)

(assert (=> bs!335191 m!1536233))

(assert (=> bs!335191 m!1535807))

(assert (=> b!1367237 d!389555))

(declare-fun d!389557 () Bool)

(assert (=> d!389557 (= (isEmpty!8339 rules!2550) ((_ is Nil!13864) rules!2550))))

(assert (=> b!1367238 d!389557))

(declare-fun d!389559 () Bool)

(declare-fun lt!453569 () Bool)

(assert (=> d!389559 (= lt!453569 (select (content!2019 lt!453466) lt!453470))))

(declare-fun e!874379 () Bool)

(assert (=> d!389559 (= lt!453569 e!874379)))

(declare-fun res!615929 () Bool)

(assert (=> d!389559 (=> (not res!615929) (not e!874379))))

(assert (=> d!389559 (= res!615929 ((_ is Cons!13862) lt!453466))))

(assert (=> d!389559 (= (contains!2585 lt!453466 lt!453470) lt!453569)))

(declare-fun b!1367500 () Bool)

(declare-fun e!874380 () Bool)

(assert (=> b!1367500 (= e!874379 e!874380)))

(declare-fun res!615930 () Bool)

(assert (=> b!1367500 (=> res!615930 e!874380)))

(assert (=> b!1367500 (= res!615930 (= (h!19263 lt!453466) lt!453470))))

(declare-fun b!1367501 () Bool)

(assert (=> b!1367501 (= e!874380 (contains!2585 (t!121279 lt!453466) lt!453470))))

(assert (= (and d!389559 res!615929) b!1367500))

(assert (= (and b!1367500 (not res!615930)) b!1367501))

(assert (=> d!389559 m!1536219))

(declare-fun m!1536235 () Bool)

(assert (=> d!389559 m!1536235))

(declare-fun m!1536237 () Bool)

(assert (=> b!1367501 m!1536237))

(assert (=> b!1367217 d!389559))

(declare-fun b!1367502 () Bool)

(declare-fun res!615931 () Bool)

(declare-fun e!874381 () Bool)

(assert (=> b!1367502 (=> res!615931 e!874381)))

(assert (=> b!1367502 (= res!615931 (not ((_ is IntegerValue!7475) (value!78061 t1!34))))))

(declare-fun e!874383 () Bool)

(assert (=> b!1367502 (= e!874383 e!874381)))

(declare-fun b!1367503 () Bool)

(assert (=> b!1367503 (= e!874381 (inv!15 (value!78061 t1!34)))))

(declare-fun b!1367504 () Bool)

(assert (=> b!1367504 (= e!874383 (inv!17 (value!78061 t1!34)))))

(declare-fun d!389561 () Bool)

(declare-fun c!224922 () Bool)

(assert (=> d!389561 (= c!224922 ((_ is IntegerValue!7473) (value!78061 t1!34)))))

(declare-fun e!874382 () Bool)

(assert (=> d!389561 (= (inv!21 (value!78061 t1!34)) e!874382)))

(declare-fun b!1367505 () Bool)

(assert (=> b!1367505 (= e!874382 (inv!16 (value!78061 t1!34)))))

(declare-fun b!1367506 () Bool)

(assert (=> b!1367506 (= e!874382 e!874383)))

(declare-fun c!224923 () Bool)

(assert (=> b!1367506 (= c!224923 ((_ is IntegerValue!7474) (value!78061 t1!34)))))

(assert (= (and d!389561 c!224922) b!1367505))

(assert (= (and d!389561 (not c!224922)) b!1367506))

(assert (= (and b!1367506 c!224923) b!1367504))

(assert (= (and b!1367506 (not c!224923)) b!1367502))

(assert (= (and b!1367502 (not res!615931)) b!1367503))

(declare-fun m!1536239 () Bool)

(assert (=> b!1367503 m!1536239))

(declare-fun m!1536241 () Bool)

(assert (=> b!1367504 m!1536241))

(declare-fun m!1536243 () Bool)

(assert (=> b!1367505 m!1536243))

(assert (=> b!1367234 d!389561))

(declare-fun d!389563 () Bool)

(declare-fun lt!453570 () Bool)

(assert (=> d!389563 (= lt!453570 (select (content!2019 lt!453466) lt!453454))))

(declare-fun e!874384 () Bool)

(assert (=> d!389563 (= lt!453570 e!874384)))

(declare-fun res!615932 () Bool)

(assert (=> d!389563 (=> (not res!615932) (not e!874384))))

(assert (=> d!389563 (= res!615932 ((_ is Cons!13862) lt!453466))))

(assert (=> d!389563 (= (contains!2585 lt!453466 lt!453454) lt!453570)))

(declare-fun b!1367507 () Bool)

(declare-fun e!874385 () Bool)

(assert (=> b!1367507 (= e!874384 e!874385)))

(declare-fun res!615933 () Bool)

(assert (=> b!1367507 (=> res!615933 e!874385)))

(assert (=> b!1367507 (= res!615933 (= (h!19263 lt!453466) lt!453454))))

(declare-fun b!1367508 () Bool)

(assert (=> b!1367508 (= e!874385 (contains!2585 (t!121279 lt!453466) lt!453454))))

(assert (= (and d!389563 res!615932) b!1367507))

(assert (= (and b!1367507 (not res!615933)) b!1367508))

(assert (=> d!389563 m!1536219))

(declare-fun m!1536245 () Bool)

(assert (=> d!389563 m!1536245))

(declare-fun m!1536247 () Bool)

(assert (=> b!1367508 m!1536247))

(assert (=> b!1367213 d!389563))

(declare-fun d!389565 () Bool)

(declare-fun lt!453571 () C!7720)

(assert (=> d!389565 (= lt!453571 (apply!3384 (list!5330 lt!453464) 0))))

(assert (=> d!389565 (= lt!453571 (apply!3385 (c!224866 lt!453464) 0))))

(declare-fun e!874386 () Bool)

(assert (=> d!389565 e!874386))

(declare-fun res!615934 () Bool)

(assert (=> d!389565 (=> (not res!615934) (not e!874386))))

(assert (=> d!389565 (= res!615934 (<= 0 0))))

(assert (=> d!389565 (= (apply!3381 lt!453464 0) lt!453571)))

(declare-fun b!1367509 () Bool)

(assert (=> b!1367509 (= e!874386 (< 0 (size!11358 lt!453464)))))

(assert (= (and d!389565 res!615934) b!1367509))

(assert (=> d!389565 m!1535895))

(assert (=> d!389565 m!1535895))

(declare-fun m!1536249 () Bool)

(assert (=> d!389565 m!1536249))

(declare-fun m!1536251 () Bool)

(assert (=> d!389565 m!1536251))

(declare-fun m!1536253 () Bool)

(assert (=> b!1367509 m!1536253))

(assert (=> b!1367213 d!389565))

(declare-fun d!389567 () Bool)

(declare-fun prefixMatchZipperSequence!252 (Regex!3715 BalanceConc!9068) Bool)

(declare-fun ++!3580 (BalanceConc!9068 BalanceConc!9068) BalanceConc!9068)

(declare-fun singletonSeq!1030 (C!7720) BalanceConc!9068)

(assert (=> d!389567 (= (separableTokensPredicate!379 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!252 (rulesRegex!284 thiss!19762 rules!2550) (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))))))

(declare-fun bs!335192 () Bool)

(assert (= bs!335192 d!389567))

(assert (=> bs!335192 m!1535897))

(declare-fun m!1536267 () Bool)

(assert (=> bs!335192 m!1536267))

(declare-fun m!1536269 () Bool)

(assert (=> bs!335192 m!1536269))

(assert (=> bs!335192 m!1535903))

(declare-fun m!1536271 () Bool)

(assert (=> bs!335192 m!1536271))

(assert (=> bs!335192 m!1535903))

(assert (=> bs!335192 m!1535891))

(declare-fun m!1536273 () Bool)

(assert (=> bs!335192 m!1536273))

(assert (=> bs!335192 m!1536267))

(assert (=> bs!335192 m!1535891))

(assert (=> bs!335192 m!1535897))

(assert (=> bs!335192 m!1536271))

(assert (=> bs!335192 m!1536273))

(assert (=> b!1367214 d!389567))

(declare-fun d!389571 () Bool)

(assert (=> d!389571 (= (inv!18213 (tag!2663 (rule!4154 t2!34))) (= (mod (str.len (value!78060 (tag!2663 (rule!4154 t2!34)))) 2) 0))))

(assert (=> b!1367235 d!389571))

(declare-fun d!389573 () Bool)

(declare-fun res!615943 () Bool)

(declare-fun e!874394 () Bool)

(assert (=> d!389573 (=> (not res!615943) (not e!874394))))

(assert (=> d!389573 (= res!615943 (semiInverseModEq!923 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t2!34)))))))

(assert (=> d!389573 (= (inv!18216 (transformation!2401 (rule!4154 t2!34))) e!874394)))

(declare-fun b!1367524 () Bool)

(assert (=> b!1367524 (= e!874394 (equivClasses!882 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t2!34)))))))

(assert (= (and d!389573 res!615943) b!1367524))

(declare-fun m!1536275 () Bool)

(assert (=> d!389573 m!1536275))

(declare-fun m!1536277 () Bool)

(assert (=> b!1367524 m!1536277))

(assert (=> b!1367235 d!389573))

(declare-fun d!389575 () Bool)

(declare-fun lt!453575 () Bool)

(declare-fun content!2020 (List!13930) (InoxSet Rule!4602))

(assert (=> d!389575 (= lt!453575 (select (content!2020 rules!2550) (rule!4154 t1!34)))))

(declare-fun e!874400 () Bool)

(assert (=> d!389575 (= lt!453575 e!874400)))

(declare-fun res!615948 () Bool)

(assert (=> d!389575 (=> (not res!615948) (not e!874400))))

(assert (=> d!389575 (= res!615948 ((_ is Cons!13864) rules!2550))))

(assert (=> d!389575 (= (contains!2586 rules!2550 (rule!4154 t1!34)) lt!453575)))

(declare-fun b!1367529 () Bool)

(declare-fun e!874399 () Bool)

(assert (=> b!1367529 (= e!874400 e!874399)))

(declare-fun res!615949 () Bool)

(assert (=> b!1367529 (=> res!615949 e!874399)))

(assert (=> b!1367529 (= res!615949 (= (h!19265 rules!2550) (rule!4154 t1!34)))))

(declare-fun b!1367530 () Bool)

(assert (=> b!1367530 (= e!874399 (contains!2586 (t!121281 rules!2550) (rule!4154 t1!34)))))

(assert (= (and d!389575 res!615948) b!1367529))

(assert (= (and b!1367529 (not res!615949)) b!1367530))

(declare-fun m!1536279 () Bool)

(assert (=> d!389575 m!1536279))

(declare-fun m!1536281 () Bool)

(assert (=> d!389575 m!1536281))

(declare-fun m!1536283 () Bool)

(assert (=> b!1367530 m!1536283))

(assert (=> b!1367236 d!389575))

(declare-fun d!389577 () Bool)

(declare-fun lt!453578 () Bool)

(assert (=> d!389577 (= lt!453578 (isEmpty!8341 (list!5330 (_2!7614 lt!453453))))))

(declare-fun isEmpty!8344 (Conc!4564) Bool)

(assert (=> d!389577 (= lt!453578 (isEmpty!8344 (c!224866 (_2!7614 lt!453453))))))

(assert (=> d!389577 (= (isEmpty!8338 (_2!7614 lt!453453)) lt!453578)))

(declare-fun bs!335193 () Bool)

(assert (= bs!335193 d!389577))

(declare-fun m!1536285 () Bool)

(assert (=> bs!335193 m!1536285))

(assert (=> bs!335193 m!1536285))

(declare-fun m!1536287 () Bool)

(assert (=> bs!335193 m!1536287))

(declare-fun m!1536289 () Bool)

(assert (=> bs!335193 m!1536289))

(assert (=> b!1367221 d!389577))

(declare-fun b!1367593 () Bool)

(declare-fun res!615996 () Bool)

(declare-fun e!874427 () Bool)

(assert (=> b!1367593 (=> (not res!615996) (not e!874427))))

(declare-fun lt!453614 () Option!2662)

(declare-fun get!4341 (Option!2662) tuple2!13458)

(assert (=> b!1367593 (= res!615996 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!453614)))))))

(declare-fun d!389579 () Bool)

(declare-fun e!874429 () Bool)

(assert (=> d!389579 e!874429))

(declare-fun res!615997 () Bool)

(assert (=> d!389579 (=> res!615997 e!874429)))

(declare-fun isEmpty!8345 (Option!2662) Bool)

(assert (=> d!389579 (= res!615997 (isEmpty!8345 lt!453614))))

(declare-fun e!874428 () Option!2662)

(assert (=> d!389579 (= lt!453614 e!874428)))

(declare-fun c!224934 () Bool)

(assert (=> d!389579 (= c!224934 (and ((_ is Cons!13864) rules!2550) ((_ is Nil!13864) (t!121281 rules!2550))))))

(declare-fun lt!453612 () Unit!20071)

(declare-fun lt!453616 () Unit!20071)

(assert (=> d!389579 (= lt!453612 lt!453616)))

(declare-fun isPrefix!1125 (List!13928 List!13928) Bool)

(assert (=> d!389579 (isPrefix!1125 (list!5330 lt!453456) (list!5330 lt!453456))))

(declare-fun lemmaIsPrefixRefl!787 (List!13928 List!13928) Unit!20071)

(assert (=> d!389579 (= lt!453616 (lemmaIsPrefixRefl!787 (list!5330 lt!453456) (list!5330 lt!453456)))))

(declare-fun rulesValidInductive!766 (LexerInterface!2096 List!13930) Bool)

(assert (=> d!389579 (rulesValidInductive!766 thiss!19762 rules!2550)))

(assert (=> d!389579 (= (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453456)) lt!453614)))

(declare-fun bm!91957 () Bool)

(declare-fun call!91962 () Option!2662)

(declare-fun maxPrefixOneRule!613 (LexerInterface!2096 Rule!4602 List!13928) Option!2662)

(assert (=> bm!91957 (= call!91962 (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) (list!5330 lt!453456)))))

(declare-fun b!1367594 () Bool)

(declare-fun res!615994 () Bool)

(assert (=> b!1367594 (=> (not res!615994) (not e!874427))))

(declare-fun apply!3389 (TokenValueInjection!4642 BalanceConc!9068) TokenValue!2491)

(declare-fun seqFromList!1631 (List!13928) BalanceConc!9068)

(assert (=> b!1367594 (= res!615994 (= (value!78061 (_1!7615 (get!4341 lt!453614))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun b!1367595 () Bool)

(assert (=> b!1367595 (= e!874428 call!91962)))

(declare-fun b!1367596 () Bool)

(assert (=> b!1367596 (= e!874429 e!874427)))

(declare-fun res!615999 () Bool)

(assert (=> b!1367596 (=> (not res!615999) (not e!874427))))

(declare-fun isDefined!2215 (Option!2662) Bool)

(assert (=> b!1367596 (= res!615999 (isDefined!2215 lt!453614))))

(declare-fun b!1367597 () Bool)

(declare-fun res!615998 () Bool)

(assert (=> b!1367597 (=> (not res!615998) (not e!874427))))

(assert (=> b!1367597 (= res!615998 (< (size!11363 (_2!7615 (get!4341 lt!453614))) (size!11363 (list!5330 lt!453456))))))

(declare-fun b!1367598 () Bool)

(declare-fun res!616000 () Bool)

(assert (=> b!1367598 (=> (not res!616000) (not e!874427))))

(assert (=> b!1367598 (= res!616000 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun b!1367599 () Bool)

(declare-fun lt!453615 () Option!2662)

(declare-fun lt!453613 () Option!2662)

(assert (=> b!1367599 (= e!874428 (ite (and ((_ is None!2661) lt!453615) ((_ is None!2661) lt!453613)) None!2661 (ite ((_ is None!2661) lt!453613) lt!453615 (ite ((_ is None!2661) lt!453615) lt!453613 (ite (>= (size!11357 (_1!7615 (v!21444 lt!453615))) (size!11357 (_1!7615 (v!21444 lt!453613)))) lt!453615 lt!453613)))))))

(assert (=> b!1367599 (= lt!453615 call!91962)))

(assert (=> b!1367599 (= lt!453613 (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) (list!5330 lt!453456)))))

(declare-fun b!1367600 () Bool)

(declare-fun res!615995 () Bool)

(assert (=> b!1367600 (=> (not res!615995) (not e!874427))))

(assert (=> b!1367600 (= res!615995 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))) (_2!7615 (get!4341 lt!453614))) (list!5330 lt!453456)))))

(declare-fun b!1367601 () Bool)

(assert (=> b!1367601 (= e!874427 (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!453614)))))))

(assert (= (and d!389579 c!224934) b!1367595))

(assert (= (and d!389579 (not c!224934)) b!1367599))

(assert (= (or b!1367595 b!1367599) bm!91957))

(assert (= (and d!389579 (not res!615997)) b!1367596))

(assert (= (and b!1367596 res!615999) b!1367593))

(assert (= (and b!1367593 res!615996) b!1367597))

(assert (= (and b!1367597 res!615998) b!1367600))

(assert (= (and b!1367600 res!615995) b!1367594))

(assert (= (and b!1367594 res!615994) b!1367598))

(assert (= (and b!1367598 res!616000) b!1367601))

(declare-fun m!1536365 () Bool)

(assert (=> b!1367597 m!1536365))

(declare-fun m!1536367 () Bool)

(assert (=> b!1367597 m!1536367))

(assert (=> b!1367597 m!1535875))

(assert (=> b!1367597 m!1535933))

(assert (=> b!1367600 m!1536365))

(declare-fun m!1536369 () Bool)

(assert (=> b!1367600 m!1536369))

(assert (=> b!1367600 m!1536369))

(declare-fun m!1536371 () Bool)

(assert (=> b!1367600 m!1536371))

(assert (=> b!1367600 m!1536371))

(declare-fun m!1536373 () Bool)

(assert (=> b!1367600 m!1536373))

(assert (=> bm!91957 m!1535875))

(declare-fun m!1536375 () Bool)

(assert (=> bm!91957 m!1536375))

(assert (=> b!1367593 m!1536365))

(assert (=> b!1367593 m!1536369))

(assert (=> b!1367593 m!1536369))

(assert (=> b!1367593 m!1536371))

(assert (=> b!1367594 m!1536365))

(declare-fun m!1536377 () Bool)

(assert (=> b!1367594 m!1536377))

(assert (=> b!1367594 m!1536377))

(declare-fun m!1536379 () Bool)

(assert (=> b!1367594 m!1536379))

(assert (=> b!1367599 m!1535875))

(declare-fun m!1536381 () Bool)

(assert (=> b!1367599 m!1536381))

(declare-fun m!1536383 () Bool)

(assert (=> d!389579 m!1536383))

(assert (=> d!389579 m!1535875))

(assert (=> d!389579 m!1535875))

(declare-fun m!1536385 () Bool)

(assert (=> d!389579 m!1536385))

(assert (=> d!389579 m!1535875))

(assert (=> d!389579 m!1535875))

(declare-fun m!1536387 () Bool)

(assert (=> d!389579 m!1536387))

(declare-fun m!1536389 () Bool)

(assert (=> d!389579 m!1536389))

(assert (=> b!1367601 m!1536365))

(declare-fun m!1536391 () Bool)

(assert (=> b!1367601 m!1536391))

(assert (=> b!1367598 m!1536365))

(assert (=> b!1367598 m!1536369))

(assert (=> b!1367598 m!1536369))

(assert (=> b!1367598 m!1536371))

(assert (=> b!1367598 m!1536371))

(declare-fun m!1536393 () Bool)

(assert (=> b!1367598 m!1536393))

(declare-fun m!1536395 () Bool)

(assert (=> b!1367596 m!1536395))

(assert (=> b!1367222 d!389579))

(declare-fun d!389609 () Bool)

(assert (=> d!389609 (= (list!5330 lt!453456) (list!5333 (c!224866 lt!453456)))))

(declare-fun bs!335206 () Bool)

(assert (= bs!335206 d!389609))

(declare-fun m!1536397 () Bool)

(assert (=> bs!335206 m!1536397))

(assert (=> b!1367222 d!389609))

(declare-fun d!389611 () Bool)

(declare-fun lt!453621 () Bool)

(declare-fun e!874430 () Bool)

(assert (=> d!389611 (= lt!453621 e!874430)))

(declare-fun res!616003 () Bool)

(assert (=> d!389611 (=> (not res!616003) (not e!874430))))

(assert (=> d!389611 (= res!616003 (= (list!5331 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))))) (list!5331 (singletonSeq!1028 t2!34))))))

(declare-fun e!874431 () Bool)

(assert (=> d!389611 (= lt!453621 e!874431)))

(declare-fun res!616002 () Bool)

(assert (=> d!389611 (=> (not res!616002) (not e!874431))))

(declare-fun lt!453620 () tuple2!13456)

(assert (=> d!389611 (= res!616002 (= (size!11366 (_1!7614 lt!453620)) 1))))

(assert (=> d!389611 (= lt!453620 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))))))

(assert (=> d!389611 (not (isEmpty!8339 rules!2550))))

(assert (=> d!389611 (= (rulesProduceIndividualToken!1065 thiss!19762 rules!2550 t2!34) lt!453621)))

(declare-fun b!1367606 () Bool)

(declare-fun res!616001 () Bool)

(assert (=> b!1367606 (=> (not res!616001) (not e!874431))))

(assert (=> b!1367606 (= res!616001 (= (apply!3386 (_1!7614 lt!453620) 0) t2!34))))

(declare-fun b!1367607 () Bool)

(assert (=> b!1367607 (= e!874431 (isEmpty!8338 (_2!7614 lt!453620)))))

(declare-fun b!1367608 () Bool)

(assert (=> b!1367608 (= e!874430 (isEmpty!8338 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))))))))

(assert (= (and d!389611 res!616002) b!1367606))

(assert (= (and b!1367606 res!616001) b!1367607))

(assert (= (and d!389611 res!616003) b!1367608))

(assert (=> d!389611 m!1535829))

(declare-fun m!1536403 () Bool)

(assert (=> d!389611 m!1536403))

(assert (=> d!389611 m!1535827))

(assert (=> d!389611 m!1535827))

(declare-fun m!1536405 () Bool)

(assert (=> d!389611 m!1536405))

(assert (=> d!389611 m!1535827))

(assert (=> d!389611 m!1535829))

(declare-fun m!1536407 () Bool)

(assert (=> d!389611 m!1536407))

(declare-fun m!1536409 () Bool)

(assert (=> d!389611 m!1536409))

(assert (=> d!389611 m!1535845))

(declare-fun m!1536411 () Bool)

(assert (=> b!1367606 m!1536411))

(declare-fun m!1536413 () Bool)

(assert (=> b!1367607 m!1536413))

(assert (=> b!1367608 m!1535827))

(assert (=> b!1367608 m!1535827))

(assert (=> b!1367608 m!1535829))

(assert (=> b!1367608 m!1535829))

(assert (=> b!1367608 m!1536403))

(declare-fun m!1536415 () Bool)

(assert (=> b!1367608 m!1536415))

(assert (=> b!1367243 d!389611))

(declare-fun d!389615 () Bool)

(declare-fun lt!453629 () List!13932)

(declare-fun size!11368 (List!13932) Int)

(declare-fun size!11369 (List!13930) Int)

(assert (=> d!389615 (= (size!11368 lt!453629) (size!11369 rules!2550))))

(declare-fun e!874437 () List!13932)

(assert (=> d!389615 (= lt!453629 e!874437)))

(declare-fun c!224938 () Bool)

(assert (=> d!389615 (= c!224938 ((_ is Nil!13864) rules!2550))))

(assert (=> d!389615 (= (map!3062 rules!2550 lambda!57883) lt!453629)))

(declare-fun b!1367622 () Bool)

(assert (=> b!1367622 (= e!874437 Nil!13866)))

(declare-fun b!1367623 () Bool)

(declare-fun $colon$colon!197 (List!13932 Regex!3715) List!13932)

(declare-fun dynLambda!6266 (Int Rule!4602) Regex!3715)

(assert (=> b!1367623 (= e!874437 ($colon$colon!197 (map!3062 (t!121281 rules!2550) lambda!57883) (dynLambda!6266 lambda!57883 (h!19265 rules!2550))))))

(assert (= (and d!389615 c!224938) b!1367622))

(assert (= (and d!389615 (not c!224938)) b!1367623))

(declare-fun b_lambda!41637 () Bool)

(assert (=> (not b_lambda!41637) (not b!1367623)))

(declare-fun m!1536449 () Bool)

(assert (=> d!389615 m!1536449))

(declare-fun m!1536451 () Bool)

(assert (=> d!389615 m!1536451))

(declare-fun m!1536453 () Bool)

(assert (=> b!1367623 m!1536453))

(declare-fun m!1536455 () Bool)

(assert (=> b!1367623 m!1536455))

(assert (=> b!1367623 m!1536453))

(assert (=> b!1367623 m!1536455))

(declare-fun m!1536457 () Bool)

(assert (=> b!1367623 m!1536457))

(assert (=> b!1367244 d!389615))

(declare-fun bs!335212 () Bool)

(declare-fun d!389621 () Bool)

(assert (= bs!335212 (and d!389621 b!1367244)))

(declare-fun lambda!57913 () Int)

(assert (=> bs!335212 (not (= lambda!57913 lambda!57884))))

(assert (=> d!389621 true))

(declare-fun order!8429 () Int)

(declare-fun dynLambda!6267 (Int Int) Int)

(assert (=> d!389621 (< (dynLambda!6267 order!8429 lambda!57884) (dynLambda!6267 order!8429 lambda!57913))))

(declare-fun forall!3388 (List!13932 Int) Bool)

(assert (=> d!389621 (= (exists!461 (map!3062 rules!2550 lambda!57883) lambda!57884) (not (forall!3388 (map!3062 rules!2550 lambda!57883) lambda!57913)))))

(declare-fun bs!335213 () Bool)

(assert (= bs!335213 d!389621))

(assert (=> bs!335213 m!1535811))

(declare-fun m!1536461 () Bool)

(assert (=> bs!335213 m!1536461))

(assert (=> b!1367244 d!389621))

(declare-fun bs!335214 () Bool)

(declare-fun d!389625 () Bool)

(assert (= bs!335214 (and d!389625 b!1367244)))

(declare-fun lambda!57918 () Int)

(assert (=> bs!335214 (not (= lambda!57918 lambda!57884))))

(declare-fun bs!335215 () Bool)

(assert (= bs!335215 (and d!389625 d!389621)))

(assert (=> bs!335215 (not (= lambda!57918 lambda!57913))))

(declare-fun lambda!57919 () Int)

(assert (=> bs!335214 (= lambda!57919 lambda!57884)))

(assert (=> bs!335215 (not (= lambda!57919 lambda!57913))))

(declare-fun bs!335216 () Bool)

(assert (= bs!335216 d!389625))

(assert (=> bs!335216 (not (= lambda!57919 lambda!57918))))

(assert (=> d!389625 true))

(assert (=> d!389625 (= (matchR!1708 lt!453462 lt!453465) (exists!461 lt!453463 lambda!57919))))

(declare-fun lt!453632 () Unit!20071)

(declare-fun choose!8413 (Regex!3715 List!13932 List!13928) Unit!20071)

(assert (=> d!389625 (= lt!453632 (choose!8413 lt!453462 lt!453463 lt!453465))))

(assert (=> d!389625 (forall!3388 lt!453463 lambda!57918)))

(assert (=> d!389625 (= (matchRGenUnionSpec!132 lt!453462 lt!453463 lt!453465) lt!453632)))

(assert (=> bs!335216 m!1535801))

(declare-fun m!1536463 () Bool)

(assert (=> bs!335216 m!1536463))

(declare-fun m!1536465 () Bool)

(assert (=> bs!335216 m!1536465))

(declare-fun m!1536467 () Bool)

(assert (=> bs!335216 m!1536467))

(assert (=> b!1367244 d!389625))

(declare-fun bs!335217 () Bool)

(declare-fun d!389627 () Bool)

(assert (= bs!335217 (and d!389627 b!1367244)))

(declare-fun lambda!57920 () Int)

(assert (=> bs!335217 (not (= lambda!57920 lambda!57884))))

(declare-fun bs!335218 () Bool)

(assert (= bs!335218 (and d!389627 d!389621)))

(assert (=> bs!335218 (= lambda!57920 lambda!57913)))

(declare-fun bs!335219 () Bool)

(assert (= bs!335219 (and d!389627 d!389625)))

(assert (=> bs!335219 (not (= lambda!57920 lambda!57918))))

(assert (=> bs!335219 (not (= lambda!57920 lambda!57919))))

(assert (=> d!389627 true))

(assert (=> d!389627 (< (dynLambda!6267 order!8429 lambda!57884) (dynLambda!6267 order!8429 lambda!57920))))

(assert (=> d!389627 (= (exists!461 lt!453463 lambda!57884) (not (forall!3388 lt!453463 lambda!57920)))))

(declare-fun bs!335220 () Bool)

(assert (= bs!335220 d!389627))

(declare-fun m!1536469 () Bool)

(assert (=> bs!335220 m!1536469))

(assert (=> b!1367244 d!389627))

(declare-fun b!1367659 () Bool)

(declare-fun e!874463 () Bool)

(declare-fun e!874462 () Bool)

(assert (=> b!1367659 (= e!874463 e!874462)))

(declare-fun res!616024 () Bool)

(declare-fun lt!453652 () tuple2!13454)

(assert (=> b!1367659 (= res!616024 (< (size!11363 (_2!7613 lt!453652)) (size!11363 (list!5330 lt!453461))))))

(assert (=> b!1367659 (=> (not res!616024) (not e!874462))))

(declare-fun b!1367660 () Bool)

(assert (=> b!1367660 (= e!874463 (= (_2!7613 lt!453652) (list!5330 lt!453461)))))

(declare-fun b!1367661 () Bool)

(declare-fun e!874461 () tuple2!13454)

(assert (=> b!1367661 (= e!874461 (tuple2!13455 Nil!13865 (list!5330 lt!453461)))))

(declare-fun b!1367662 () Bool)

(declare-fun isEmpty!8347 (List!13931) Bool)

(assert (=> b!1367662 (= e!874462 (not (isEmpty!8347 (_1!7613 lt!453652))))))

(declare-fun d!389629 () Bool)

(assert (=> d!389629 e!874463))

(declare-fun c!224949 () Bool)

(declare-fun size!11370 (List!13931) Int)

(assert (=> d!389629 (= c!224949 (> (size!11370 (_1!7613 lt!453652)) 0))))

(assert (=> d!389629 (= lt!453652 e!874461)))

(declare-fun c!224950 () Bool)

(declare-fun lt!453651 () Option!2662)

(assert (=> d!389629 (= c!224950 ((_ is Some!2661) lt!453651))))

(assert (=> d!389629 (= lt!453651 (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453461)))))

(assert (=> d!389629 (= (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453461)) lt!453652)))

(declare-fun b!1367663 () Bool)

(declare-fun lt!453653 () tuple2!13454)

(assert (=> b!1367663 (= e!874461 (tuple2!13455 (Cons!13865 (_1!7615 (v!21444 lt!453651)) (_1!7613 lt!453653)) (_2!7613 lt!453653)))))

(assert (=> b!1367663 (= lt!453653 (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453651))))))

(assert (= (and d!389629 c!224950) b!1367663))

(assert (= (and d!389629 (not c!224950)) b!1367661))

(assert (= (and d!389629 c!224949) b!1367659))

(assert (= (and d!389629 (not c!224949)) b!1367660))

(assert (= (and b!1367659 res!616024) b!1367662))

(declare-fun m!1536493 () Bool)

(assert (=> b!1367659 m!1536493))

(assert (=> b!1367659 m!1535795))

(declare-fun m!1536495 () Bool)

(assert (=> b!1367659 m!1536495))

(declare-fun m!1536497 () Bool)

(assert (=> b!1367662 m!1536497))

(declare-fun m!1536499 () Bool)

(assert (=> d!389629 m!1536499))

(assert (=> d!389629 m!1535795))

(declare-fun m!1536501 () Bool)

(assert (=> d!389629 m!1536501))

(declare-fun m!1536503 () Bool)

(assert (=> b!1367663 m!1536503))

(assert (=> b!1367218 d!389629))

(declare-fun d!389637 () Bool)

(assert (=> d!389637 (= (list!5330 lt!453461) (list!5333 (c!224866 lt!453461)))))

(declare-fun bs!335222 () Bool)

(assert (= bs!335222 d!389637))

(declare-fun m!1536505 () Bool)

(assert (=> bs!335222 m!1536505))

(assert (=> b!1367218 d!389637))

(declare-fun bs!335223 () Bool)

(declare-fun d!389639 () Bool)

(assert (= bs!335223 (and d!389639 b!1367240)))

(declare-fun lambda!57923 () Int)

(assert (=> bs!335223 (not (= lambda!57923 lambda!57885))))

(assert (=> d!389639 true))

(declare-fun order!8431 () Int)

(declare-fun dynLambda!6270 (Int Int) Int)

(assert (=> d!389639 (< (dynLambda!6270 order!8431 lambda!57885) (dynLambda!6270 order!8431 lambda!57923))))

(declare-fun forall!3390 (List!13930 Int) Bool)

(assert (=> d!389639 (= (exists!460 rules!2550 lambda!57885) (not (forall!3390 rules!2550 lambda!57923)))))

(declare-fun bs!335224 () Bool)

(assert (= bs!335224 d!389639))

(declare-fun m!1536507 () Bool)

(assert (=> bs!335224 m!1536507))

(assert (=> b!1367240 d!389639))

(declare-fun bs!335225 () Bool)

(declare-fun d!389641 () Bool)

(assert (= bs!335225 (and d!389641 b!1367240)))

(declare-fun lambda!57926 () Int)

(assert (=> bs!335225 (not (= lambda!57926 lambda!57885))))

(declare-fun bs!335226 () Bool)

(assert (= bs!335226 (and d!389641 d!389639)))

(assert (=> bs!335226 (not (= lambda!57926 lambda!57923))))

(assert (=> d!389641 true))

(assert (=> d!389641 true))

(declare-fun order!8433 () Int)

(declare-fun dynLambda!6271 (Int Int) Int)

(assert (=> d!389641 (< (dynLambda!6271 order!8433 lambda!57883) (dynLambda!6270 order!8431 lambda!57926))))

(assert (=> d!389641 (exists!460 rules!2550 lambda!57926)))

(declare-fun lt!453656 () Unit!20071)

(declare-fun choose!8415 (List!13930 Int Regex!3715) Unit!20071)

(assert (=> d!389641 (= lt!453656 (choose!8415 rules!2550 lambda!57883 lt!453455))))

(assert (=> d!389641 (contains!2587 (map!3062 rules!2550 lambda!57883) lt!453455)))

(assert (=> d!389641 (= (lemmaMapContains!120 rules!2550 lambda!57883 lt!453455) lt!453656)))

(declare-fun bs!335227 () Bool)

(assert (= bs!335227 d!389641))

(declare-fun m!1536509 () Bool)

(assert (=> bs!335227 m!1536509))

(declare-fun m!1536511 () Bool)

(assert (=> bs!335227 m!1536511))

(assert (=> bs!335227 m!1535811))

(assert (=> bs!335227 m!1535811))

(assert (=> bs!335227 m!1535869))

(assert (=> b!1367240 d!389641))

(declare-fun d!389643 () Bool)

(assert (=> d!389643 (= (inv!18213 (tag!2663 (rule!4154 t1!34))) (= (mod (str.len (value!78060 (tag!2663 (rule!4154 t1!34)))) 2) 0))))

(assert (=> b!1367220 d!389643))

(declare-fun d!389645 () Bool)

(declare-fun res!616025 () Bool)

(declare-fun e!874464 () Bool)

(assert (=> d!389645 (=> (not res!616025) (not e!874464))))

(assert (=> d!389645 (= res!616025 (semiInverseModEq!923 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))))))

(assert (=> d!389645 (= (inv!18216 (transformation!2401 (rule!4154 t1!34))) e!874464)))

(declare-fun b!1367670 () Bool)

(assert (=> b!1367670 (= e!874464 (equivClasses!882 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))))))

(assert (= (and d!389645 res!616025) b!1367670))

(declare-fun m!1536513 () Bool)

(assert (=> d!389645 m!1536513))

(declare-fun m!1536515 () Bool)

(assert (=> b!1367670 m!1536515))

(assert (=> b!1367220 d!389645))

(declare-fun d!389647 () Bool)

(declare-fun list!5334 (Conc!4565) List!13931)

(assert (=> d!389647 (= (list!5331 (_1!7614 lt!453471)) (list!5334 (c!224868 (_1!7614 lt!453471))))))

(declare-fun bs!335228 () Bool)

(assert (= bs!335228 d!389647))

(declare-fun m!1536517 () Bool)

(assert (=> bs!335228 m!1536517))

(assert (=> b!1367241 d!389647))

(declare-fun b!1367753 () Bool)

(declare-fun e!874515 () Bool)

(declare-fun lt!453671 () tuple2!13456)

(declare-fun isEmpty!8348 (BalanceConc!9070) Bool)

(assert (=> b!1367753 (= e!874515 (not (isEmpty!8348 (_1!7614 lt!453671))))))

(declare-fun b!1367754 () Bool)

(declare-fun e!874516 () Bool)

(assert (=> b!1367754 (= e!874516 (= (_2!7614 lt!453671) lt!453460))))

(declare-fun b!1367755 () Bool)

(declare-fun res!616054 () Bool)

(declare-fun e!874517 () Bool)

(assert (=> b!1367755 (=> (not res!616054) (not e!874517))))

(assert (=> b!1367755 (= res!616054 (= (list!5331 (_1!7614 lt!453671)) (_1!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453460)))))))

(declare-fun d!389649 () Bool)

(assert (=> d!389649 e!874517))

(declare-fun res!616055 () Bool)

(assert (=> d!389649 (=> (not res!616055) (not e!874517))))

(assert (=> d!389649 (= res!616055 e!874516)))

(declare-fun c!224959 () Bool)

(assert (=> d!389649 (= c!224959 (> (size!11366 (_1!7614 lt!453671)) 0))))

(declare-fun lexTailRecV2!408 (LexerInterface!2096 List!13930 BalanceConc!9068 BalanceConc!9068 BalanceConc!9068 BalanceConc!9070) tuple2!13456)

(assert (=> d!389649 (= lt!453671 (lexTailRecV2!408 thiss!19762 rules!2550 lt!453460 (BalanceConc!9069 Empty!4564) lt!453460 (BalanceConc!9071 Empty!4565)))))

(assert (=> d!389649 (= (lex!923 thiss!19762 rules!2550 lt!453460) lt!453671)))

(declare-fun b!1367756 () Bool)

(assert (=> b!1367756 (= e!874516 e!874515)))

(declare-fun res!616053 () Bool)

(assert (=> b!1367756 (= res!616053 (< (size!11358 (_2!7614 lt!453671)) (size!11358 lt!453460)))))

(assert (=> b!1367756 (=> (not res!616053) (not e!874515))))

(declare-fun b!1367757 () Bool)

(assert (=> b!1367757 (= e!874517 (= (list!5330 (_2!7614 lt!453671)) (_2!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453460)))))))

(assert (= (and d!389649 c!224959) b!1367756))

(assert (= (and d!389649 (not c!224959)) b!1367754))

(assert (= (and b!1367756 res!616053) b!1367753))

(assert (= (and d!389649 res!616055) b!1367755))

(assert (= (and b!1367755 res!616054) b!1367757))

(declare-fun m!1536605 () Bool)

(assert (=> b!1367755 m!1536605))

(assert (=> b!1367755 m!1535783))

(assert (=> b!1367755 m!1535783))

(assert (=> b!1367755 m!1535785))

(declare-fun m!1536607 () Bool)

(assert (=> b!1367757 m!1536607))

(assert (=> b!1367757 m!1535783))

(assert (=> b!1367757 m!1535783))

(assert (=> b!1367757 m!1535785))

(declare-fun m!1536609 () Bool)

(assert (=> d!389649 m!1536609))

(declare-fun m!1536611 () Bool)

(assert (=> d!389649 m!1536611))

(declare-fun m!1536613 () Bool)

(assert (=> b!1367756 m!1536613))

(declare-fun m!1536615 () Bool)

(assert (=> b!1367756 m!1536615))

(declare-fun m!1536617 () Bool)

(assert (=> b!1367753 m!1536617))

(assert (=> b!1367241 d!389649))

(declare-fun d!389681 () Bool)

(declare-fun e!874520 () Bool)

(assert (=> d!389681 e!874520))

(declare-fun res!616058 () Bool)

(assert (=> d!389681 (=> (not res!616058) (not e!874520))))

(declare-fun lt!453674 () BalanceConc!9070)

(assert (=> d!389681 (= res!616058 (= (list!5331 lt!453674) (Cons!13865 t1!34 Nil!13865)))))

(declare-fun singleton!445 (Token!4464) BalanceConc!9070)

(assert (=> d!389681 (= lt!453674 (singleton!445 t1!34))))

(assert (=> d!389681 (= (singletonSeq!1028 t1!34) lt!453674)))

(declare-fun b!1367760 () Bool)

(declare-fun isBalanced!1339 (Conc!4565) Bool)

(assert (=> b!1367760 (= e!874520 (isBalanced!1339 (c!224868 lt!453674)))))

(assert (= (and d!389681 res!616058) b!1367760))

(declare-fun m!1536619 () Bool)

(assert (=> d!389681 m!1536619))

(declare-fun m!1536621 () Bool)

(assert (=> d!389681 m!1536621))

(declare-fun m!1536623 () Bool)

(assert (=> b!1367760 m!1536623))

(assert (=> b!1367241 d!389681))

(declare-fun d!389683 () Bool)

(declare-fun lt!453677 () BalanceConc!9068)

(declare-fun printList!604 (LexerInterface!2096 List!13931) List!13928)

(assert (=> d!389683 (= (list!5330 lt!453677) (printList!604 thiss!19762 (list!5331 (singletonSeq!1028 t1!34))))))

(declare-fun printTailRec!586 (LexerInterface!2096 BalanceConc!9070 Int BalanceConc!9068) BalanceConc!9068)

(assert (=> d!389683 (= lt!453677 (printTailRec!586 thiss!19762 (singletonSeq!1028 t1!34) 0 (BalanceConc!9069 Empty!4564)))))

(assert (=> d!389683 (= (print!862 thiss!19762 (singletonSeq!1028 t1!34)) lt!453677)))

(declare-fun bs!335239 () Bool)

(assert (= bs!335239 d!389683))

(declare-fun m!1536625 () Bool)

(assert (=> bs!335239 m!1536625))

(assert (=> bs!335239 m!1535835))

(assert (=> bs!335239 m!1536153))

(assert (=> bs!335239 m!1536153))

(declare-fun m!1536627 () Bool)

(assert (=> bs!335239 m!1536627))

(assert (=> bs!335239 m!1535835))

(declare-fun m!1536629 () Bool)

(assert (=> bs!335239 m!1536629))

(assert (=> b!1367241 d!389683))

(declare-fun b!1367773 () Bool)

(declare-fun e!874530 () Rule!4602)

(assert (=> b!1367773 (= e!874530 (h!19265 rules!2550))))

(declare-fun b!1367774 () Bool)

(declare-fun e!874531 () Bool)

(declare-fun dynLambda!6273 (Int Rule!4602) Bool)

(assert (=> b!1367774 (= e!874531 (dynLambda!6273 lambda!57885 (h!19265 rules!2550)))))

(declare-fun d!389685 () Bool)

(declare-fun e!874532 () Bool)

(assert (=> d!389685 e!874532))

(declare-fun res!616063 () Bool)

(assert (=> d!389685 (=> (not res!616063) (not e!874532))))

(declare-fun lt!453682 () Rule!4602)

(assert (=> d!389685 (= res!616063 (dynLambda!6273 lambda!57885 lt!453682))))

(assert (=> d!389685 (= lt!453682 e!874530)))

(declare-fun c!224964 () Bool)

(assert (=> d!389685 (= c!224964 e!874531)))

(declare-fun res!616064 () Bool)

(assert (=> d!389685 (=> (not res!616064) (not e!874531))))

(assert (=> d!389685 (= res!616064 ((_ is Cons!13864) rules!2550))))

(assert (=> d!389685 (exists!460 rules!2550 lambda!57885)))

(assert (=> d!389685 (= (getWitness!348 rules!2550 lambda!57885) lt!453682)))

(declare-fun b!1367775 () Bool)

(declare-fun e!874529 () Rule!4602)

(assert (=> b!1367775 (= e!874530 e!874529)))

(declare-fun c!224965 () Bool)

(assert (=> b!1367775 (= c!224965 ((_ is Cons!13864) rules!2550))))

(declare-fun b!1367776 () Bool)

(assert (=> b!1367776 (= e!874532 (contains!2586 rules!2550 lt!453682))))

(declare-fun b!1367777 () Bool)

(declare-fun lt!453683 () Unit!20071)

(declare-fun Unit!20075 () Unit!20071)

(assert (=> b!1367777 (= lt!453683 Unit!20075)))

(assert (=> b!1367777 false))

(declare-fun head!2456 (List!13930) Rule!4602)

(assert (=> b!1367777 (= e!874529 (head!2456 rules!2550))))

(declare-fun b!1367778 () Bool)

(assert (=> b!1367778 (= e!874529 (getWitness!348 (t!121281 rules!2550) lambda!57885))))

(assert (= (and d!389685 res!616064) b!1367774))

(assert (= (and d!389685 c!224964) b!1367773))

(assert (= (and d!389685 (not c!224964)) b!1367775))

(assert (= (and b!1367775 c!224965) b!1367778))

(assert (= (and b!1367775 (not c!224965)) b!1367777))

(assert (= (and d!389685 res!616063) b!1367776))

(declare-fun b_lambda!41663 () Bool)

(assert (=> (not b_lambda!41663) (not b!1367774)))

(declare-fun b_lambda!41665 () Bool)

(assert (=> (not b_lambda!41665) (not d!389685)))

(declare-fun m!1536631 () Bool)

(assert (=> b!1367774 m!1536631))

(declare-fun m!1536633 () Bool)

(assert (=> b!1367778 m!1536633))

(declare-fun m!1536635 () Bool)

(assert (=> d!389685 m!1536635))

(assert (=> d!389685 m!1535791))

(declare-fun m!1536637 () Bool)

(assert (=> b!1367777 m!1536637))

(declare-fun m!1536639 () Bool)

(assert (=> b!1367776 m!1536639))

(assert (=> b!1367241 d!389685))

(declare-fun b!1367807 () Bool)

(declare-fun e!874548 () Bool)

(declare-fun e!874550 () Bool)

(assert (=> b!1367807 (= e!874548 e!874550)))

(declare-fun res!616087 () Bool)

(assert (=> b!1367807 (=> res!616087 e!874550)))

(declare-fun call!91966 () Bool)

(assert (=> b!1367807 (= res!616087 call!91966)))

(declare-fun d!389687 () Bool)

(declare-fun e!874552 () Bool)

(assert (=> d!389687 e!874552))

(declare-fun c!224972 () Bool)

(assert (=> d!389687 (= c!224972 ((_ is EmptyExpr!3715) lt!453462))))

(declare-fun lt!453686 () Bool)

(declare-fun e!874553 () Bool)

(assert (=> d!389687 (= lt!453686 e!874553)))

(declare-fun c!224973 () Bool)

(assert (=> d!389687 (= c!224973 (isEmpty!8341 lt!453465))))

(declare-fun validRegex!1615 (Regex!3715) Bool)

(assert (=> d!389687 (validRegex!1615 lt!453462)))

(assert (=> d!389687 (= (matchR!1708 lt!453462 lt!453465) lt!453686)))

(declare-fun b!1367808 () Bool)

(assert (=> b!1367808 (= e!874552 (= lt!453686 call!91966))))

(declare-fun b!1367809 () Bool)

(assert (=> b!1367809 (= e!874553 (matchR!1708 (derivativeStep!953 lt!453462 (head!2454 lt!453465)) (tail!1974 lt!453465)))))

(declare-fun b!1367810 () Bool)

(declare-fun e!874549 () Bool)

(assert (=> b!1367810 (= e!874549 (not lt!453686))))

(declare-fun b!1367811 () Bool)

(assert (=> b!1367811 (= e!874552 e!874549)))

(declare-fun c!224974 () Bool)

(assert (=> b!1367811 (= c!224974 ((_ is EmptyLang!3715) lt!453462))))

(declare-fun b!1367812 () Bool)

(declare-fun res!616081 () Bool)

(declare-fun e!874547 () Bool)

(assert (=> b!1367812 (=> res!616081 e!874547)))

(assert (=> b!1367812 (= res!616081 (not ((_ is ElementMatch!3715) lt!453462)))))

(assert (=> b!1367812 (= e!874549 e!874547)))

(declare-fun b!1367813 () Bool)

(assert (=> b!1367813 (= e!874550 (not (= (head!2454 lt!453465) (c!224867 lt!453462))))))

(declare-fun b!1367814 () Bool)

(assert (=> b!1367814 (= e!874547 e!874548)))

(declare-fun res!616082 () Bool)

(assert (=> b!1367814 (=> (not res!616082) (not e!874548))))

(assert (=> b!1367814 (= res!616082 (not lt!453686))))

(declare-fun b!1367815 () Bool)

(declare-fun e!874551 () Bool)

(assert (=> b!1367815 (= e!874551 (= (head!2454 lt!453465) (c!224867 lt!453462)))))

(declare-fun b!1367816 () Bool)

(declare-fun res!616084 () Bool)

(assert (=> b!1367816 (=> (not res!616084) (not e!874551))))

(assert (=> b!1367816 (= res!616084 (not call!91966))))

(declare-fun bm!91961 () Bool)

(assert (=> bm!91961 (= call!91966 (isEmpty!8341 lt!453465))))

(declare-fun b!1367817 () Bool)

(declare-fun res!616083 () Bool)

(assert (=> b!1367817 (=> res!616083 e!874547)))

(assert (=> b!1367817 (= res!616083 e!874551)))

(declare-fun res!616085 () Bool)

(assert (=> b!1367817 (=> (not res!616085) (not e!874551))))

(assert (=> b!1367817 (= res!616085 lt!453686)))

(declare-fun b!1367818 () Bool)

(declare-fun res!616086 () Bool)

(assert (=> b!1367818 (=> (not res!616086) (not e!874551))))

(assert (=> b!1367818 (= res!616086 (isEmpty!8341 (tail!1974 lt!453465)))))

(declare-fun b!1367819 () Bool)

(declare-fun res!616088 () Bool)

(assert (=> b!1367819 (=> res!616088 e!874550)))

(assert (=> b!1367819 (= res!616088 (not (isEmpty!8341 (tail!1974 lt!453465))))))

(declare-fun b!1367820 () Bool)

(declare-fun nullable!1195 (Regex!3715) Bool)

(assert (=> b!1367820 (= e!874553 (nullable!1195 lt!453462))))

(assert (= (and d!389687 c!224973) b!1367820))

(assert (= (and d!389687 (not c!224973)) b!1367809))

(assert (= (and d!389687 c!224972) b!1367808))

(assert (= (and d!389687 (not c!224972)) b!1367811))

(assert (= (and b!1367811 c!224974) b!1367810))

(assert (= (and b!1367811 (not c!224974)) b!1367812))

(assert (= (and b!1367812 (not res!616081)) b!1367817))

(assert (= (and b!1367817 res!616085) b!1367816))

(assert (= (and b!1367816 res!616084) b!1367818))

(assert (= (and b!1367818 res!616086) b!1367815))

(assert (= (and b!1367817 (not res!616083)) b!1367814))

(assert (= (and b!1367814 res!616082) b!1367807))

(assert (= (and b!1367807 (not res!616087)) b!1367819))

(assert (= (and b!1367819 (not res!616088)) b!1367813))

(assert (= (or b!1367808 b!1367807 b!1367816) bm!91961))

(declare-fun m!1536641 () Bool)

(assert (=> d!389687 m!1536641))

(declare-fun m!1536643 () Bool)

(assert (=> d!389687 m!1536643))

(assert (=> b!1367819 m!1536227))

(assert (=> b!1367819 m!1536227))

(declare-fun m!1536645 () Bool)

(assert (=> b!1367819 m!1536645))

(declare-fun m!1536647 () Bool)

(assert (=> b!1367820 m!1536647))

(declare-fun m!1536649 () Bool)

(assert (=> b!1367813 m!1536649))

(assert (=> bm!91961 m!1536641))

(assert (=> b!1367818 m!1536227))

(assert (=> b!1367818 m!1536227))

(assert (=> b!1367818 m!1536645))

(assert (=> b!1367815 m!1536649))

(assert (=> b!1367809 m!1536649))

(assert (=> b!1367809 m!1536649))

(declare-fun m!1536651 () Bool)

(assert (=> b!1367809 m!1536651))

(assert (=> b!1367809 m!1536227))

(assert (=> b!1367809 m!1536651))

(assert (=> b!1367809 m!1536227))

(declare-fun m!1536653 () Bool)

(assert (=> b!1367809 m!1536653))

(assert (=> b!1367226 d!389687))

(declare-fun d!389689 () Bool)

(declare-fun lt!453687 () Bool)

(assert (=> d!389689 (= lt!453687 (select (content!2019 lt!453465) lt!453454))))

(declare-fun e!874554 () Bool)

(assert (=> d!389689 (= lt!453687 e!874554)))

(declare-fun res!616089 () Bool)

(assert (=> d!389689 (=> (not res!616089) (not e!874554))))

(assert (=> d!389689 (= res!616089 ((_ is Cons!13862) lt!453465))))

(assert (=> d!389689 (= (contains!2585 lt!453465 lt!453454) lt!453687)))

(declare-fun b!1367821 () Bool)

(declare-fun e!874555 () Bool)

(assert (=> b!1367821 (= e!874554 e!874555)))

(declare-fun res!616090 () Bool)

(assert (=> b!1367821 (=> res!616090 e!874555)))

(assert (=> b!1367821 (= res!616090 (= (h!19263 lt!453465) lt!453454))))

(declare-fun b!1367822 () Bool)

(assert (=> b!1367822 (= e!874555 (contains!2585 (t!121279 lt!453465) lt!453454))))

(assert (= (and d!389689 res!616089) b!1367821))

(assert (= (and b!1367821 (not res!616090)) b!1367822))

(assert (=> d!389689 m!1536179))

(declare-fun m!1536655 () Bool)

(assert (=> d!389689 m!1536655))

(declare-fun m!1536657 () Bool)

(assert (=> b!1367822 m!1536657))

(assert (=> b!1367247 d!389689))

(declare-fun lt!453690 () Bool)

(declare-fun d!389691 () Bool)

(declare-fun content!2021 (List!13932) (InoxSet Regex!3715))

(assert (=> d!389691 (= lt!453690 (select (content!2021 (map!3062 rules!2550 lambda!57883)) lt!453455))))

(declare-fun e!874561 () Bool)

(assert (=> d!389691 (= lt!453690 e!874561)))

(declare-fun res!616096 () Bool)

(assert (=> d!389691 (=> (not res!616096) (not e!874561))))

(assert (=> d!389691 (= res!616096 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57883)))))

(assert (=> d!389691 (= (contains!2587 (map!3062 rules!2550 lambda!57883) lt!453455) lt!453690)))

(declare-fun b!1367827 () Bool)

(declare-fun e!874560 () Bool)

(assert (=> b!1367827 (= e!874561 e!874560)))

(declare-fun res!616095 () Bool)

(assert (=> b!1367827 (=> res!616095 e!874560)))

(assert (=> b!1367827 (= res!616095 (= (h!19267 (map!3062 rules!2550 lambda!57883)) lt!453455))))

(declare-fun b!1367828 () Bool)

(assert (=> b!1367828 (= e!874560 (contains!2587 (t!121283 (map!3062 rules!2550 lambda!57883)) lt!453455))))

(assert (= (and d!389691 res!616096) b!1367827))

(assert (= (and b!1367827 (not res!616095)) b!1367828))

(assert (=> d!389691 m!1535811))

(declare-fun m!1536659 () Bool)

(assert (=> d!389691 m!1536659))

(declare-fun m!1536661 () Bool)

(assert (=> d!389691 m!1536661))

(declare-fun m!1536663 () Bool)

(assert (=> b!1367828 m!1536663))

(assert (=> b!1367248 d!389691))

(assert (=> b!1367248 d!389615))

(declare-fun e!874570 () Bool)

(declare-fun b!1367841 () Bool)

(declare-fun dynLambda!6274 (Int Regex!3715) Bool)

(assert (=> b!1367841 (= e!874570 (dynLambda!6274 lambda!57884 (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun e!874573 () Regex!3715)

(declare-fun b!1367842 () Bool)

(assert (=> b!1367842 (= e!874573 (getWitness!349 (t!121283 (map!3062 rules!2550 lambda!57883)) lambda!57884))))

(declare-fun b!1367843 () Bool)

(declare-fun e!874571 () Regex!3715)

(assert (=> b!1367843 (= e!874571 (h!19267 (map!3062 rules!2550 lambda!57883)))))

(declare-fun b!1367844 () Bool)

(declare-fun lt!453696 () Regex!3715)

(declare-fun e!874572 () Bool)

(assert (=> b!1367844 (= e!874572 (contains!2587 (map!3062 rules!2550 lambda!57883) lt!453696))))

(declare-fun b!1367846 () Bool)

(declare-fun lt!453695 () Unit!20071)

(declare-fun Unit!20076 () Unit!20071)

(assert (=> b!1367846 (= lt!453695 Unit!20076)))

(assert (=> b!1367846 false))

(declare-fun head!2457 (List!13932) Regex!3715)

(assert (=> b!1367846 (= e!874573 (head!2457 (map!3062 rules!2550 lambda!57883)))))

(declare-fun d!389693 () Bool)

(assert (=> d!389693 e!874572))

(declare-fun res!616101 () Bool)

(assert (=> d!389693 (=> (not res!616101) (not e!874572))))

(assert (=> d!389693 (= res!616101 (dynLambda!6274 lambda!57884 lt!453696))))

(assert (=> d!389693 (= lt!453696 e!874571)))

(declare-fun c!224979 () Bool)

(assert (=> d!389693 (= c!224979 e!874570)))

(declare-fun res!616102 () Bool)

(assert (=> d!389693 (=> (not res!616102) (not e!874570))))

(assert (=> d!389693 (= res!616102 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57883)))))

(assert (=> d!389693 (exists!461 (map!3062 rules!2550 lambda!57883) lambda!57884)))

(assert (=> d!389693 (= (getWitness!349 (map!3062 rules!2550 lambda!57883) lambda!57884) lt!453696)))

(declare-fun b!1367845 () Bool)

(assert (=> b!1367845 (= e!874571 e!874573)))

(declare-fun c!224980 () Bool)

(assert (=> b!1367845 (= c!224980 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57883)))))

(assert (= (and d!389693 res!616102) b!1367841))

(assert (= (and d!389693 c!224979) b!1367843))

(assert (= (and d!389693 (not c!224979)) b!1367845))

(assert (= (and b!1367845 c!224980) b!1367842))

(assert (= (and b!1367845 (not c!224980)) b!1367846))

(assert (= (and d!389693 res!616101) b!1367844))

(declare-fun b_lambda!41667 () Bool)

(assert (=> (not b_lambda!41667) (not b!1367841)))

(declare-fun b_lambda!41669 () Bool)

(assert (=> (not b_lambda!41669) (not d!389693)))

(assert (=> b!1367846 m!1535811))

(declare-fun m!1536665 () Bool)

(assert (=> b!1367846 m!1536665))

(declare-fun m!1536667 () Bool)

(assert (=> b!1367842 m!1536667))

(declare-fun m!1536669 () Bool)

(assert (=> b!1367841 m!1536669))

(declare-fun m!1536671 () Bool)

(assert (=> d!389693 m!1536671))

(assert (=> d!389693 m!1535811))

(assert (=> d!389693 m!1535813))

(assert (=> b!1367844 m!1535811))

(declare-fun m!1536673 () Bool)

(assert (=> b!1367844 m!1536673))

(assert (=> b!1367248 d!389693))

(declare-fun d!389695 () Bool)

(declare-fun choose!8416 (Int) Bool)

(assert (=> d!389695 (= (Exists!867 lambda!57882) (choose!8416 lambda!57882))))

(declare-fun bs!335240 () Bool)

(assert (= bs!335240 d!389695))

(declare-fun m!1536675 () Bool)

(assert (=> bs!335240 m!1536675))

(assert (=> b!1367227 d!389695))

(declare-fun bs!335241 () Bool)

(declare-fun d!389697 () Bool)

(assert (= bs!335241 (and d!389697 b!1367227)))

(declare-fun lambda!57929 () Int)

(assert (=> bs!335241 (= lambda!57929 lambda!57882)))

(assert (=> d!389697 true))

(assert (=> d!389697 true))

(assert (=> d!389697 (Exists!867 lambda!57929)))

(declare-fun lt!453699 () Unit!20071)

(declare-fun choose!8417 (Regex!3715 List!13928) Unit!20071)

(assert (=> d!389697 (= lt!453699 (choose!8417 lt!453462 lt!453466))))

(assert (=> d!389697 (validRegex!1615 lt!453462)))

(assert (=> d!389697 (= (lemmaPrefixMatchThenExistsStringThatMatches!185 lt!453462 lt!453466) lt!453699)))

(declare-fun bs!335242 () Bool)

(assert (= bs!335242 d!389697))

(declare-fun m!1536677 () Bool)

(assert (=> bs!335242 m!1536677))

(declare-fun m!1536679 () Bool)

(assert (=> bs!335242 m!1536679))

(assert (=> bs!335242 m!1536643))

(assert (=> b!1367227 d!389697))

(declare-fun b!1367849 () Bool)

(declare-fun e!874578 () Bool)

(declare-fun e!874577 () Bool)

(assert (=> b!1367849 (= e!874578 e!874577)))

(declare-fun res!616105 () Bool)

(declare-fun lt!453701 () tuple2!13454)

(assert (=> b!1367849 (= res!616105 (< (size!11363 (_2!7613 lt!453701)) (size!11363 (list!5330 lt!453460))))))

(assert (=> b!1367849 (=> (not res!616105) (not e!874577))))

(declare-fun b!1367850 () Bool)

(assert (=> b!1367850 (= e!874578 (= (_2!7613 lt!453701) (list!5330 lt!453460)))))

(declare-fun b!1367851 () Bool)

(declare-fun e!874576 () tuple2!13454)

(assert (=> b!1367851 (= e!874576 (tuple2!13455 Nil!13865 (list!5330 lt!453460)))))

(declare-fun b!1367852 () Bool)

(assert (=> b!1367852 (= e!874577 (not (isEmpty!8347 (_1!7613 lt!453701))))))

(declare-fun d!389699 () Bool)

(assert (=> d!389699 e!874578))

(declare-fun c!224981 () Bool)

(assert (=> d!389699 (= c!224981 (> (size!11370 (_1!7613 lt!453701)) 0))))

(assert (=> d!389699 (= lt!453701 e!874576)))

(declare-fun c!224982 () Bool)

(declare-fun lt!453700 () Option!2662)

(assert (=> d!389699 (= c!224982 ((_ is Some!2661) lt!453700))))

(assert (=> d!389699 (= lt!453700 (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453460)))))

(assert (=> d!389699 (= (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453460)) lt!453701)))

(declare-fun b!1367853 () Bool)

(declare-fun lt!453702 () tuple2!13454)

(assert (=> b!1367853 (= e!874576 (tuple2!13455 (Cons!13865 (_1!7615 (v!21444 lt!453700)) (_1!7613 lt!453702)) (_2!7613 lt!453702)))))

(assert (=> b!1367853 (= lt!453702 (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453700))))))

(assert (= (and d!389699 c!224982) b!1367853))

(assert (= (and d!389699 (not c!224982)) b!1367851))

(assert (= (and d!389699 c!224981) b!1367849))

(assert (= (and d!389699 (not c!224981)) b!1367850))

(assert (= (and b!1367849 res!616105) b!1367852))

(declare-fun m!1536681 () Bool)

(assert (=> b!1367849 m!1536681))

(assert (=> b!1367849 m!1535783))

(declare-fun m!1536683 () Bool)

(assert (=> b!1367849 m!1536683))

(declare-fun m!1536685 () Bool)

(assert (=> b!1367852 m!1536685))

(declare-fun m!1536687 () Bool)

(assert (=> d!389699 m!1536687))

(assert (=> d!389699 m!1535783))

(declare-fun m!1536689 () Bool)

(assert (=> d!389699 m!1536689))

(declare-fun m!1536691 () Bool)

(assert (=> b!1367853 m!1536691))

(assert (=> b!1367228 d!389699))

(declare-fun d!389701 () Bool)

(assert (=> d!389701 (= (list!5330 lt!453460) (list!5333 (c!224866 lt!453460)))))

(declare-fun bs!335243 () Bool)

(assert (= bs!335243 d!389701))

(declare-fun m!1536693 () Bool)

(assert (=> bs!335243 m!1536693))

(assert (=> b!1367228 d!389701))

(declare-fun b!1367854 () Bool)

(declare-fun res!616108 () Bool)

(declare-fun e!874579 () Bool)

(assert (=> b!1367854 (=> (not res!616108) (not e!874579))))

(declare-fun lt!453705 () Option!2662)

(assert (=> b!1367854 (= res!616108 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!453705)))))))

(declare-fun d!389703 () Bool)

(declare-fun e!874581 () Bool)

(assert (=> d!389703 e!874581))

(declare-fun res!616109 () Bool)

(assert (=> d!389703 (=> res!616109 e!874581)))

(assert (=> d!389703 (= res!616109 (isEmpty!8345 lt!453705))))

(declare-fun e!874580 () Option!2662)

(assert (=> d!389703 (= lt!453705 e!874580)))

(declare-fun c!224983 () Bool)

(assert (=> d!389703 (= c!224983 (and ((_ is Cons!13864) rules!2550) ((_ is Nil!13864) (t!121281 rules!2550))))))

(declare-fun lt!453703 () Unit!20071)

(declare-fun lt!453707 () Unit!20071)

(assert (=> d!389703 (= lt!453703 lt!453707)))

(assert (=> d!389703 (isPrefix!1125 lt!453458 lt!453458)))

(assert (=> d!389703 (= lt!453707 (lemmaIsPrefixRefl!787 lt!453458 lt!453458))))

(assert (=> d!389703 (rulesValidInductive!766 thiss!19762 rules!2550)))

(assert (=> d!389703 (= (maxPrefix!1078 thiss!19762 rules!2550 lt!453458) lt!453705)))

(declare-fun bm!91962 () Bool)

(declare-fun call!91967 () Option!2662)

(assert (=> bm!91962 (= call!91967 (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) lt!453458))))

(declare-fun b!1367855 () Bool)

(declare-fun res!616106 () Bool)

(assert (=> b!1367855 (=> (not res!616106) (not e!874579))))

(assert (=> b!1367855 (= res!616106 (= (value!78061 (_1!7615 (get!4341 lt!453705))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun b!1367856 () Bool)

(assert (=> b!1367856 (= e!874580 call!91967)))

(declare-fun b!1367857 () Bool)

(assert (=> b!1367857 (= e!874581 e!874579)))

(declare-fun res!616111 () Bool)

(assert (=> b!1367857 (=> (not res!616111) (not e!874579))))

(assert (=> b!1367857 (= res!616111 (isDefined!2215 lt!453705))))

(declare-fun b!1367858 () Bool)

(declare-fun res!616110 () Bool)

(assert (=> b!1367858 (=> (not res!616110) (not e!874579))))

(assert (=> b!1367858 (= res!616110 (< (size!11363 (_2!7615 (get!4341 lt!453705))) (size!11363 lt!453458)))))

(declare-fun b!1367859 () Bool)

(declare-fun res!616112 () Bool)

(assert (=> b!1367859 (=> (not res!616112) (not e!874579))))

(assert (=> b!1367859 (= res!616112 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun b!1367860 () Bool)

(declare-fun lt!453706 () Option!2662)

(declare-fun lt!453704 () Option!2662)

(assert (=> b!1367860 (= e!874580 (ite (and ((_ is None!2661) lt!453706) ((_ is None!2661) lt!453704)) None!2661 (ite ((_ is None!2661) lt!453704) lt!453706 (ite ((_ is None!2661) lt!453706) lt!453704 (ite (>= (size!11357 (_1!7615 (v!21444 lt!453706))) (size!11357 (_1!7615 (v!21444 lt!453704)))) lt!453706 lt!453704)))))))

(assert (=> b!1367860 (= lt!453706 call!91967)))

(assert (=> b!1367860 (= lt!453704 (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) lt!453458))))

(declare-fun b!1367861 () Bool)

(declare-fun res!616107 () Bool)

(assert (=> b!1367861 (=> (not res!616107) (not e!874579))))

(assert (=> b!1367861 (= res!616107 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))) (_2!7615 (get!4341 lt!453705))) lt!453458))))

(declare-fun b!1367862 () Bool)

(assert (=> b!1367862 (= e!874579 (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!453705)))))))

(assert (= (and d!389703 c!224983) b!1367856))

(assert (= (and d!389703 (not c!224983)) b!1367860))

(assert (= (or b!1367856 b!1367860) bm!91962))

(assert (= (and d!389703 (not res!616109)) b!1367857))

(assert (= (and b!1367857 res!616111) b!1367854))

(assert (= (and b!1367854 res!616108) b!1367858))

(assert (= (and b!1367858 res!616110) b!1367861))

(assert (= (and b!1367861 res!616107) b!1367855))

(assert (= (and b!1367855 res!616106) b!1367859))

(assert (= (and b!1367859 res!616112) b!1367862))

(declare-fun m!1536695 () Bool)

(assert (=> b!1367858 m!1536695))

(declare-fun m!1536697 () Bool)

(assert (=> b!1367858 m!1536697))

(assert (=> b!1367858 m!1536057))

(assert (=> b!1367861 m!1536695))

(declare-fun m!1536699 () Bool)

(assert (=> b!1367861 m!1536699))

(assert (=> b!1367861 m!1536699))

(declare-fun m!1536701 () Bool)

(assert (=> b!1367861 m!1536701))

(assert (=> b!1367861 m!1536701))

(declare-fun m!1536703 () Bool)

(assert (=> b!1367861 m!1536703))

(declare-fun m!1536705 () Bool)

(assert (=> bm!91962 m!1536705))

(assert (=> b!1367854 m!1536695))

(assert (=> b!1367854 m!1536699))

(assert (=> b!1367854 m!1536699))

(assert (=> b!1367854 m!1536701))

(assert (=> b!1367855 m!1536695))

(declare-fun m!1536707 () Bool)

(assert (=> b!1367855 m!1536707))

(assert (=> b!1367855 m!1536707))

(declare-fun m!1536709 () Bool)

(assert (=> b!1367855 m!1536709))

(declare-fun m!1536711 () Bool)

(assert (=> b!1367860 m!1536711))

(declare-fun m!1536713 () Bool)

(assert (=> d!389703 m!1536713))

(declare-fun m!1536715 () Bool)

(assert (=> d!389703 m!1536715))

(declare-fun m!1536717 () Bool)

(assert (=> d!389703 m!1536717))

(assert (=> d!389703 m!1536389))

(assert (=> b!1367862 m!1536695))

(declare-fun m!1536719 () Bool)

(assert (=> b!1367862 m!1536719))

(assert (=> b!1367859 m!1536695))

(assert (=> b!1367859 m!1536699))

(assert (=> b!1367859 m!1536699))

(assert (=> b!1367859 m!1536701))

(assert (=> b!1367859 m!1536701))

(declare-fun m!1536721 () Bool)

(assert (=> b!1367859 m!1536721))

(declare-fun m!1536723 () Bool)

(assert (=> b!1367857 m!1536723))

(assert (=> b!1367249 d!389703))

(declare-fun d!389705 () Bool)

(declare-fun res!616115 () Bool)

(declare-fun e!874584 () Bool)

(assert (=> d!389705 (=> (not res!616115) (not e!874584))))

(declare-fun rulesValid!893 (LexerInterface!2096 List!13930) Bool)

(assert (=> d!389705 (= res!616115 (rulesValid!893 thiss!19762 rules!2550))))

(assert (=> d!389705 (= (rulesInvariant!1966 thiss!19762 rules!2550) e!874584)))

(declare-fun b!1367865 () Bool)

(declare-datatypes ((List!13934 0))(
  ( (Nil!13868) (Cons!13868 (h!19269 String!16691) (t!121321 List!13934)) )
))
(declare-fun noDuplicateTag!893 (LexerInterface!2096 List!13930 List!13934) Bool)

(assert (=> b!1367865 (= e!874584 (noDuplicateTag!893 thiss!19762 rules!2550 Nil!13868))))

(assert (= (and d!389705 res!616115) b!1367865))

(declare-fun m!1536725 () Bool)

(assert (=> d!389705 m!1536725))

(declare-fun m!1536727 () Bool)

(assert (=> b!1367865 m!1536727))

(assert (=> b!1367223 d!389705))

(declare-fun d!389707 () Bool)

(assert (=> d!389707 (= (list!5331 (_1!7614 lt!453453)) (list!5334 (c!224868 (_1!7614 lt!453453))))))

(declare-fun bs!335244 () Bool)

(assert (= bs!335244 d!389707))

(declare-fun m!1536729 () Bool)

(assert (=> bs!335244 m!1536729))

(assert (=> b!1367224 d!389707))

(declare-fun b!1367866 () Bool)

(declare-fun e!874585 () Bool)

(declare-fun lt!453708 () tuple2!13456)

(assert (=> b!1367866 (= e!874585 (not (isEmpty!8348 (_1!7614 lt!453708))))))

(declare-fun b!1367867 () Bool)

(declare-fun e!874586 () Bool)

(assert (=> b!1367867 (= e!874586 (= (_2!7614 lt!453708) lt!453461))))

(declare-fun b!1367868 () Bool)

(declare-fun res!616117 () Bool)

(declare-fun e!874587 () Bool)

(assert (=> b!1367868 (=> (not res!616117) (not e!874587))))

(assert (=> b!1367868 (= res!616117 (= (list!5331 (_1!7614 lt!453708)) (_1!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453461)))))))

(declare-fun d!389709 () Bool)

(assert (=> d!389709 e!874587))

(declare-fun res!616118 () Bool)

(assert (=> d!389709 (=> (not res!616118) (not e!874587))))

(assert (=> d!389709 (= res!616118 e!874586)))

(declare-fun c!224984 () Bool)

(assert (=> d!389709 (= c!224984 (> (size!11366 (_1!7614 lt!453708)) 0))))

(assert (=> d!389709 (= lt!453708 (lexTailRecV2!408 thiss!19762 rules!2550 lt!453461 (BalanceConc!9069 Empty!4564) lt!453461 (BalanceConc!9071 Empty!4565)))))

(assert (=> d!389709 (= (lex!923 thiss!19762 rules!2550 lt!453461) lt!453708)))

(declare-fun b!1367869 () Bool)

(assert (=> b!1367869 (= e!874586 e!874585)))

(declare-fun res!616116 () Bool)

(assert (=> b!1367869 (= res!616116 (< (size!11358 (_2!7614 lt!453708)) (size!11358 lt!453461)))))

(assert (=> b!1367869 (=> (not res!616116) (not e!874585))))

(declare-fun b!1367870 () Bool)

(assert (=> b!1367870 (= e!874587 (= (list!5330 (_2!7614 lt!453708)) (_2!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 lt!453461)))))))

(assert (= (and d!389709 c!224984) b!1367869))

(assert (= (and d!389709 (not c!224984)) b!1367867))

(assert (= (and b!1367869 res!616116) b!1367866))

(assert (= (and d!389709 res!616118) b!1367868))

(assert (= (and b!1367868 res!616117) b!1367870))

(declare-fun m!1536731 () Bool)

(assert (=> b!1367868 m!1536731))

(assert (=> b!1367868 m!1535795))

(assert (=> b!1367868 m!1535795))

(assert (=> b!1367868 m!1535797))

(declare-fun m!1536733 () Bool)

(assert (=> b!1367870 m!1536733))

(assert (=> b!1367870 m!1535795))

(assert (=> b!1367870 m!1535795))

(assert (=> b!1367870 m!1535797))

(declare-fun m!1536735 () Bool)

(assert (=> d!389709 m!1536735))

(declare-fun m!1536737 () Bool)

(assert (=> d!389709 m!1536737))

(declare-fun m!1536739 () Bool)

(assert (=> b!1367869 m!1536739))

(declare-fun m!1536741 () Bool)

(assert (=> b!1367869 m!1536741))

(declare-fun m!1536743 () Bool)

(assert (=> b!1367866 m!1536743))

(assert (=> b!1367224 d!389709))

(declare-fun d!389711 () Bool)

(declare-fun lt!453709 () BalanceConc!9068)

(assert (=> d!389711 (= (list!5330 lt!453709) (printList!604 thiss!19762 (list!5331 (singletonSeq!1028 t2!34))))))

(assert (=> d!389711 (= lt!453709 (printTailRec!586 thiss!19762 (singletonSeq!1028 t2!34) 0 (BalanceConc!9069 Empty!4564)))))

(assert (=> d!389711 (= (print!862 thiss!19762 (singletonSeq!1028 t2!34)) lt!453709)))

(declare-fun bs!335245 () Bool)

(assert (= bs!335245 d!389711))

(declare-fun m!1536745 () Bool)

(assert (=> bs!335245 m!1536745))

(assert (=> bs!335245 m!1535827))

(assert (=> bs!335245 m!1536405))

(assert (=> bs!335245 m!1536405))

(declare-fun m!1536747 () Bool)

(assert (=> bs!335245 m!1536747))

(assert (=> bs!335245 m!1535827))

(declare-fun m!1536749 () Bool)

(assert (=> bs!335245 m!1536749))

(assert (=> b!1367224 d!389711))

(declare-fun d!389713 () Bool)

(declare-fun e!874588 () Bool)

(assert (=> d!389713 e!874588))

(declare-fun res!616119 () Bool)

(assert (=> d!389713 (=> (not res!616119) (not e!874588))))

(declare-fun lt!453710 () BalanceConc!9070)

(assert (=> d!389713 (= res!616119 (= (list!5331 lt!453710) (Cons!13865 t2!34 Nil!13865)))))

(assert (=> d!389713 (= lt!453710 (singleton!445 t2!34))))

(assert (=> d!389713 (= (singletonSeq!1028 t2!34) lt!453710)))

(declare-fun b!1367871 () Bool)

(assert (=> b!1367871 (= e!874588 (isBalanced!1339 (c!224868 lt!453710)))))

(assert (= (and d!389713 res!616119) b!1367871))

(declare-fun m!1536751 () Bool)

(assert (=> d!389713 m!1536751))

(declare-fun m!1536753 () Bool)

(assert (=> d!389713 m!1536753))

(declare-fun m!1536755 () Bool)

(assert (=> b!1367871 m!1536755))

(assert (=> b!1367224 d!389713))

(declare-fun d!389715 () Bool)

(declare-fun res!616124 () Bool)

(declare-fun e!874593 () Bool)

(assert (=> d!389715 (=> res!616124 e!874593)))

(assert (=> d!389715 (= res!616124 (not ((_ is Cons!13864) rules!2550)))))

(assert (=> d!389715 (= (sepAndNonSepRulesDisjointChars!774 rules!2550 rules!2550) e!874593)))

(declare-fun b!1367876 () Bool)

(declare-fun e!874594 () Bool)

(assert (=> b!1367876 (= e!874593 e!874594)))

(declare-fun res!616125 () Bool)

(assert (=> b!1367876 (=> (not res!616125) (not e!874594))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!366 (Rule!4602 List!13930) Bool)

(assert (=> b!1367876 (= res!616125 (ruleDisjointCharsFromAllFromOtherType!366 (h!19265 rules!2550) rules!2550))))

(declare-fun b!1367877 () Bool)

(assert (=> b!1367877 (= e!874594 (sepAndNonSepRulesDisjointChars!774 rules!2550 (t!121281 rules!2550)))))

(assert (= (and d!389715 (not res!616124)) b!1367876))

(assert (= (and b!1367876 res!616125) b!1367877))

(declare-fun m!1536757 () Bool)

(assert (=> b!1367876 m!1536757))

(declare-fun m!1536759 () Bool)

(assert (=> b!1367877 m!1536759))

(assert (=> b!1367245 d!389715))

(declare-fun d!389717 () Bool)

(declare-fun lt!453711 () Bool)

(assert (=> d!389717 (= lt!453711 (isEmpty!8341 (list!5330 (_2!7614 lt!453471))))))

(assert (=> d!389717 (= lt!453711 (isEmpty!8344 (c!224866 (_2!7614 lt!453471))))))

(assert (=> d!389717 (= (isEmpty!8338 (_2!7614 lt!453471)) lt!453711)))

(declare-fun bs!335246 () Bool)

(assert (= bs!335246 d!389717))

(declare-fun m!1536761 () Bool)

(assert (=> bs!335246 m!1536761))

(assert (=> bs!335246 m!1536761))

(declare-fun m!1536763 () Bool)

(assert (=> bs!335246 m!1536763))

(declare-fun m!1536765 () Bool)

(assert (=> bs!335246 m!1536765))

(assert (=> b!1367246 d!389717))

(declare-fun d!389719 () Bool)

(declare-fun res!616130 () Bool)

(declare-fun e!874597 () Bool)

(assert (=> d!389719 (=> (not res!616130) (not e!874597))))

(assert (=> d!389719 (= res!616130 (not (isEmpty!8341 (originalCharacters!3263 t1!34))))))

(assert (=> d!389719 (= (inv!18217 t1!34) e!874597)))

(declare-fun b!1367882 () Bool)

(declare-fun res!616131 () Bool)

(assert (=> b!1367882 (=> (not res!616131) (not e!874597))))

(assert (=> b!1367882 (= res!616131 (= (originalCharacters!3263 t1!34) (list!5330 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(declare-fun b!1367883 () Bool)

(assert (=> b!1367883 (= e!874597 (= (size!11357 t1!34) (size!11363 (originalCharacters!3263 t1!34))))))

(assert (= (and d!389719 res!616130) b!1367882))

(assert (= (and b!1367882 res!616131) b!1367883))

(declare-fun b_lambda!41671 () Bool)

(assert (=> (not b_lambda!41671) (not b!1367882)))

(assert (=> b!1367882 t!121297))

(declare-fun b_and!91695 () Bool)

(assert (= b_and!91667 (and (=> t!121297 result!87494) b_and!91695)))

(assert (=> b!1367882 t!121299))

(declare-fun b_and!91697 () Bool)

(assert (= b_and!91669 (and (=> t!121299 result!87496) b_and!91697)))

(assert (=> b!1367882 t!121301))

(declare-fun b_and!91699 () Bool)

(assert (= b_and!91671 (and (=> t!121301 result!87498) b_and!91699)))

(declare-fun m!1536767 () Bool)

(assert (=> d!389719 m!1536767))

(assert (=> b!1367882 m!1536051))

(assert (=> b!1367882 m!1536051))

(declare-fun m!1536769 () Bool)

(assert (=> b!1367882 m!1536769))

(declare-fun m!1536771 () Bool)

(assert (=> b!1367883 m!1536771))

(assert (=> start!123206 d!389719))

(declare-fun d!389721 () Bool)

(declare-fun res!616132 () Bool)

(declare-fun e!874598 () Bool)

(assert (=> d!389721 (=> (not res!616132) (not e!874598))))

(assert (=> d!389721 (= res!616132 (not (isEmpty!8341 (originalCharacters!3263 t2!34))))))

(assert (=> d!389721 (= (inv!18217 t2!34) e!874598)))

(declare-fun b!1367884 () Bool)

(declare-fun res!616133 () Bool)

(assert (=> b!1367884 (=> (not res!616133) (not e!874598))))

(assert (=> b!1367884 (= res!616133 (= (originalCharacters!3263 t2!34) (list!5330 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(declare-fun b!1367885 () Bool)

(assert (=> b!1367885 (= e!874598 (= (size!11357 t2!34) (size!11363 (originalCharacters!3263 t2!34))))))

(assert (= (and d!389721 res!616132) b!1367884))

(assert (= (and b!1367884 res!616133) b!1367885))

(declare-fun b_lambda!41673 () Bool)

(assert (=> (not b_lambda!41673) (not b!1367884)))

(assert (=> b!1367884 t!121291))

(declare-fun b_and!91701 () Bool)

(assert (= b_and!91695 (and (=> t!121291 result!87486) b_and!91701)))

(assert (=> b!1367884 t!121293))

(declare-fun b_and!91703 () Bool)

(assert (= b_and!91697 (and (=> t!121293 result!87490) b_and!91703)))

(assert (=> b!1367884 t!121295))

(declare-fun b_and!91705 () Bool)

(assert (= b_and!91699 (and (=> t!121295 result!87492) b_and!91705)))

(declare-fun m!1536773 () Bool)

(assert (=> d!389721 m!1536773))

(assert (=> b!1367884 m!1535963))

(assert (=> b!1367884 m!1535963))

(declare-fun m!1536775 () Bool)

(assert (=> b!1367884 m!1536775))

(declare-fun m!1536777 () Bool)

(assert (=> b!1367885 m!1536777))

(assert (=> start!123206 d!389721))

(declare-fun d!389723 () Bool)

(declare-fun lt!453712 () Bool)

(assert (=> d!389723 (= lt!453712 (select (content!2020 rules!2550) (rule!4154 t2!34)))))

(declare-fun e!874600 () Bool)

(assert (=> d!389723 (= lt!453712 e!874600)))

(declare-fun res!616134 () Bool)

(assert (=> d!389723 (=> (not res!616134) (not e!874600))))

(assert (=> d!389723 (= res!616134 ((_ is Cons!13864) rules!2550))))

(assert (=> d!389723 (= (contains!2586 rules!2550 (rule!4154 t2!34)) lt!453712)))

(declare-fun b!1367886 () Bool)

(declare-fun e!874599 () Bool)

(assert (=> b!1367886 (= e!874600 e!874599)))

(declare-fun res!616135 () Bool)

(assert (=> b!1367886 (=> res!616135 e!874599)))

(assert (=> b!1367886 (= res!616135 (= (h!19265 rules!2550) (rule!4154 t2!34)))))

(declare-fun b!1367887 () Bool)

(assert (=> b!1367887 (= e!874599 (contains!2586 (t!121281 rules!2550) (rule!4154 t2!34)))))

(assert (= (and d!389723 res!616134) b!1367886))

(assert (= (and b!1367886 (not res!616135)) b!1367887))

(assert (=> d!389723 m!1536279))

(declare-fun m!1536779 () Bool)

(assert (=> d!389723 m!1536779))

(declare-fun m!1536781 () Bool)

(assert (=> b!1367887 m!1536781))

(assert (=> b!1367225 d!389723))

(declare-fun b!1367901 () Bool)

(declare-fun e!874603 () Bool)

(declare-fun tp!393359 () Bool)

(declare-fun tp!393360 () Bool)

(assert (=> b!1367901 (= e!874603 (and tp!393359 tp!393360))))

(declare-fun b!1367898 () Bool)

(declare-fun tp_is_empty!6739 () Bool)

(assert (=> b!1367898 (= e!874603 tp_is_empty!6739)))

(declare-fun b!1367899 () Bool)

(declare-fun tp!393362 () Bool)

(declare-fun tp!393361 () Bool)

(assert (=> b!1367899 (= e!874603 (and tp!393362 tp!393361))))

(assert (=> b!1367231 (= tp!393298 e!874603)))

(declare-fun b!1367900 () Bool)

(declare-fun tp!393358 () Bool)

(assert (=> b!1367900 (= e!874603 tp!393358)))

(assert (= (and b!1367231 ((_ is ElementMatch!3715) (regex!2401 (h!19265 rules!2550)))) b!1367898))

(assert (= (and b!1367231 ((_ is Concat!6207) (regex!2401 (h!19265 rules!2550)))) b!1367899))

(assert (= (and b!1367231 ((_ is Star!3715) (regex!2401 (h!19265 rules!2550)))) b!1367900))

(assert (= (and b!1367231 ((_ is Union!3715) (regex!2401 (h!19265 rules!2550)))) b!1367901))

(declare-fun b!1367906 () Bool)

(declare-fun e!874606 () Bool)

(declare-fun tp!393365 () Bool)

(assert (=> b!1367906 (= e!874606 (and tp_is_empty!6739 tp!393365))))

(assert (=> b!1367216 (= tp!393295 e!874606)))

(assert (= (and b!1367216 ((_ is Cons!13862) (originalCharacters!3263 t2!34))) b!1367906))

(declare-fun b!1367907 () Bool)

(declare-fun e!874607 () Bool)

(declare-fun tp!393366 () Bool)

(assert (=> b!1367907 (= e!874607 (and tp_is_empty!6739 tp!393366))))

(assert (=> b!1367234 (= tp!393297 e!874607)))

(assert (= (and b!1367234 ((_ is Cons!13862) (originalCharacters!3263 t1!34))) b!1367907))

(declare-fun b!1367918 () Bool)

(declare-fun b_free!33163 () Bool)

(declare-fun b_next!33867 () Bool)

(assert (=> b!1367918 (= b_free!33163 (not b_next!33867))))

(declare-fun tp!393378 () Bool)

(declare-fun b_and!91707 () Bool)

(assert (=> b!1367918 (= tp!393378 b_and!91707)))

(declare-fun b_free!33165 () Bool)

(declare-fun b_next!33869 () Bool)

(assert (=> b!1367918 (= b_free!33165 (not b_next!33869))))

(declare-fun t!121317 () Bool)

(declare-fun tb!72077 () Bool)

(assert (=> (and b!1367918 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) t!121317) tb!72077))

(declare-fun result!87522 () Bool)

(assert (= result!87522 result!87486))

(assert (=> d!389475 t!121317))

(declare-fun tb!72079 () Bool)

(declare-fun t!121319 () Bool)

(assert (=> (and b!1367918 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) t!121319) tb!72079))

(declare-fun result!87524 () Bool)

(assert (= result!87524 result!87494))

(assert (=> d!389501 t!121319))

(assert (=> b!1367882 t!121319))

(assert (=> b!1367884 t!121317))

(declare-fun tp!393375 () Bool)

(declare-fun b_and!91709 () Bool)

(assert (=> b!1367918 (= tp!393375 (and (=> t!121317 result!87522) (=> t!121319 result!87524) b_and!91709))))

(declare-fun e!874616 () Bool)

(assert (=> b!1367918 (= e!874616 (and tp!393378 tp!393375))))

(declare-fun tp!393377 () Bool)

(declare-fun b!1367917 () Bool)

(declare-fun e!874617 () Bool)

(assert (=> b!1367917 (= e!874617 (and tp!393377 (inv!18213 (tag!2663 (h!19265 (t!121281 rules!2550)))) (inv!18216 (transformation!2401 (h!19265 (t!121281 rules!2550)))) e!874616))))

(declare-fun b!1367916 () Bool)

(declare-fun e!874618 () Bool)

(declare-fun tp!393376 () Bool)

(assert (=> b!1367916 (= e!874618 (and e!874617 tp!393376))))

(assert (=> b!1367239 (= tp!393293 e!874618)))

(assert (= b!1367917 b!1367918))

(assert (= b!1367916 b!1367917))

(assert (= (and b!1367239 ((_ is Cons!13864) (t!121281 rules!2550))) b!1367916))

(declare-fun m!1536783 () Bool)

(assert (=> b!1367917 m!1536783))

(declare-fun m!1536785 () Bool)

(assert (=> b!1367917 m!1536785))

(declare-fun b!1367922 () Bool)

(declare-fun e!874620 () Bool)

(declare-fun tp!393380 () Bool)

(declare-fun tp!393381 () Bool)

(assert (=> b!1367922 (= e!874620 (and tp!393380 tp!393381))))

(declare-fun b!1367919 () Bool)

(assert (=> b!1367919 (= e!874620 tp_is_empty!6739)))

(declare-fun b!1367920 () Bool)

(declare-fun tp!393383 () Bool)

(declare-fun tp!393382 () Bool)

(assert (=> b!1367920 (= e!874620 (and tp!393383 tp!393382))))

(assert (=> b!1367235 (= tp!393296 e!874620)))

(declare-fun b!1367921 () Bool)

(declare-fun tp!393379 () Bool)

(assert (=> b!1367921 (= e!874620 tp!393379)))

(assert (= (and b!1367235 ((_ is ElementMatch!3715) (regex!2401 (rule!4154 t2!34)))) b!1367919))

(assert (= (and b!1367235 ((_ is Concat!6207) (regex!2401 (rule!4154 t2!34)))) b!1367920))

(assert (= (and b!1367235 ((_ is Star!3715) (regex!2401 (rule!4154 t2!34)))) b!1367921))

(assert (= (and b!1367235 ((_ is Union!3715) (regex!2401 (rule!4154 t2!34)))) b!1367922))

(declare-fun b!1367926 () Bool)

(declare-fun e!874621 () Bool)

(declare-fun tp!393385 () Bool)

(declare-fun tp!393386 () Bool)

(assert (=> b!1367926 (= e!874621 (and tp!393385 tp!393386))))

(declare-fun b!1367923 () Bool)

(assert (=> b!1367923 (= e!874621 tp_is_empty!6739)))

(declare-fun b!1367924 () Bool)

(declare-fun tp!393388 () Bool)

(declare-fun tp!393387 () Bool)

(assert (=> b!1367924 (= e!874621 (and tp!393388 tp!393387))))

(assert (=> b!1367220 (= tp!393288 e!874621)))

(declare-fun b!1367925 () Bool)

(declare-fun tp!393384 () Bool)

(assert (=> b!1367925 (= e!874621 tp!393384)))

(assert (= (and b!1367220 ((_ is ElementMatch!3715) (regex!2401 (rule!4154 t1!34)))) b!1367923))

(assert (= (and b!1367220 ((_ is Concat!6207) (regex!2401 (rule!4154 t1!34)))) b!1367924))

(assert (= (and b!1367220 ((_ is Star!3715) (regex!2401 (rule!4154 t1!34)))) b!1367925))

(assert (= (and b!1367220 ((_ is Union!3715) (regex!2401 (rule!4154 t1!34)))) b!1367926))

(declare-fun b_lambda!41675 () Bool)

(assert (= b_lambda!41671 (or (and b!1367219 b_free!33149 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) (and b!1367242 b_free!33153) (and b!1367212 b_free!33157 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) (and b!1367918 b_free!33165 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) b_lambda!41675)))

(declare-fun b_lambda!41677 () Bool)

(assert (= b_lambda!41665 (or b!1367240 b_lambda!41677)))

(declare-fun bs!335247 () Bool)

(declare-fun d!389725 () Bool)

(assert (= bs!335247 (and d!389725 b!1367240)))

(assert (=> bs!335247 (= (dynLambda!6273 lambda!57885 lt!453682) (= (regex!2401 lt!453682) lt!453455))))

(assert (=> d!389685 d!389725))

(declare-fun b_lambda!41679 () Bool)

(assert (= b_lambda!41635 (or b!1367227 b_lambda!41679)))

(declare-fun bs!335248 () Bool)

(declare-fun d!389727 () Bool)

(assert (= bs!335248 (and d!389727 b!1367227)))

(declare-fun res!616136 () Bool)

(declare-fun e!874622 () Bool)

(assert (=> bs!335248 (=> (not res!616136) (not e!874622))))

(assert (=> bs!335248 (= res!616136 (matchR!1708 lt!453462 lt!453568))))

(assert (=> bs!335248 (= (dynLambda!6264 lambda!57882 lt!453568) e!874622)))

(declare-fun b!1367927 () Bool)

(assert (=> b!1367927 (= e!874622 (isPrefix!1125 lt!453466 lt!453568))))

(assert (= (and bs!335248 res!616136) b!1367927))

(declare-fun m!1536787 () Bool)

(assert (=> bs!335248 m!1536787))

(declare-fun m!1536789 () Bool)

(assert (=> b!1367927 m!1536789))

(assert (=> d!389555 d!389727))

(declare-fun b_lambda!41681 () Bool)

(assert (= b_lambda!41637 (or b!1367244 b_lambda!41681)))

(declare-fun bs!335249 () Bool)

(declare-fun d!389729 () Bool)

(assert (= bs!335249 (and d!389729 b!1367244)))

(assert (=> bs!335249 (= (dynLambda!6266 lambda!57883 (h!19265 rules!2550)) (regex!2401 (h!19265 rules!2550)))))

(assert (=> b!1367623 d!389729))

(declare-fun b_lambda!41683 () Bool)

(assert (= b_lambda!41617 (or (and b!1367219 b_free!33149 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) (and b!1367242 b_free!33153 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) (and b!1367212 b_free!33157) (and b!1367918 b_free!33165 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) b_lambda!41683)))

(declare-fun b_lambda!41685 () Bool)

(assert (= b_lambda!41673 (or (and b!1367219 b_free!33149 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) (and b!1367242 b_free!33153 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) (and b!1367212 b_free!33157) (and b!1367918 b_free!33165 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t2!34))))) b_lambda!41685)))

(declare-fun b_lambda!41687 () Bool)

(assert (= b_lambda!41669 (or b!1367244 b_lambda!41687)))

(declare-fun bs!335250 () Bool)

(declare-fun d!389731 () Bool)

(assert (= bs!335250 (and d!389731 b!1367244)))

(declare-fun res!616137 () Bool)

(declare-fun e!874623 () Bool)

(assert (=> bs!335250 (=> (not res!616137) (not e!874623))))

(assert (=> bs!335250 (= res!616137 (validRegex!1615 lt!453696))))

(assert (=> bs!335250 (= (dynLambda!6274 lambda!57884 lt!453696) e!874623)))

(declare-fun b!1367928 () Bool)

(assert (=> b!1367928 (= e!874623 (matchR!1708 lt!453696 lt!453465))))

(assert (= (and bs!335250 res!616137) b!1367928))

(declare-fun m!1536791 () Bool)

(assert (=> bs!335250 m!1536791))

(declare-fun m!1536793 () Bool)

(assert (=> b!1367928 m!1536793))

(assert (=> d!389693 d!389731))

(declare-fun b_lambda!41689 () Bool)

(assert (= b_lambda!41625 (or (and b!1367219 b_free!33149 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) (and b!1367242 b_free!33153) (and b!1367212 b_free!33157 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) (and b!1367918 b_free!33165 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 t1!34))))) b_lambda!41689)))

(declare-fun b_lambda!41691 () Bool)

(assert (= b_lambda!41663 (or b!1367240 b_lambda!41691)))

(declare-fun bs!335251 () Bool)

(declare-fun d!389733 () Bool)

(assert (= bs!335251 (and d!389733 b!1367240)))

(assert (=> bs!335251 (= (dynLambda!6273 lambda!57885 (h!19265 rules!2550)) (= (regex!2401 (h!19265 rules!2550)) lt!453455))))

(assert (=> b!1367774 d!389733))

(declare-fun b_lambda!41693 () Bool)

(assert (= b_lambda!41667 (or b!1367244 b_lambda!41693)))

(declare-fun bs!335252 () Bool)

(declare-fun d!389735 () Bool)

(assert (= bs!335252 (and d!389735 b!1367244)))

(declare-fun res!616138 () Bool)

(declare-fun e!874624 () Bool)

(assert (=> bs!335252 (=> (not res!616138) (not e!874624))))

(assert (=> bs!335252 (= res!616138 (validRegex!1615 (h!19267 (map!3062 rules!2550 lambda!57883))))))

(assert (=> bs!335252 (= (dynLambda!6274 lambda!57884 (h!19267 (map!3062 rules!2550 lambda!57883))) e!874624)))

(declare-fun b!1367929 () Bool)

(assert (=> b!1367929 (= e!874624 (matchR!1708 (h!19267 (map!3062 rules!2550 lambda!57883)) lt!453465))))

(assert (= (and bs!335252 res!616138) b!1367929))

(declare-fun m!1536795 () Bool)

(assert (=> bs!335252 m!1536795))

(declare-fun m!1536797 () Bool)

(assert (=> b!1367929 m!1536797))

(assert (=> b!1367841 d!389735))

(check-sat (not d!389507) (not b!1367460) (not b_next!33855) (not b!1367760) (not d!389641) (not b!1367819) (not b_lambda!41677) (not b_lambda!41681) (not b!1367623) (not d!389707) (not b!1367470) (not b_next!33867) (not b!1367663) (not d!389501) (not b_lambda!41679) (not b!1367509) (not b_next!33857) b_and!91701 (not b!1367429) (not b!1367858) (not b!1367757) (not b_next!33861) (not d!389705) (not d!389637) (not b!1367885) (not b!1367820) (not d!389475) (not b!1367501) b_and!91651 (not d!389559) (not d!389711) (not b!1367852) (not d!389625) (not b!1367822) (not b!1367599) (not b!1367844) (not d!389689) (not d!389573) (not b!1367504) b_and!91705 (not b!1367927) (not b_next!33851) (not d!389611) (not b!1367524) (not b!1367859) (not b!1367860) (not b!1367598) (not b!1367900) (not d!389563) (not b!1367530) (not b_next!33869) (not b!1367928) (not b!1367303) (not d!389469) (not b!1367882) (not b!1367870) b_and!91643 (not b!1367846) (not b!1367809) (not b!1367430) (not d!389629) (not b!1367813) (not bs!335252) (not d!389505) (not bs!335250) (not b!1367901) (not b!1367906) (not b_lambda!41685) (not b!1367907) (not b!1367597) (not b!1367662) (not b!1367755) (not b!1367865) (not d!389719) (not b!1367594) (not d!389481) (not d!389553) (not b!1367505) (not b!1367828) (not b!1367608) (not b_lambda!41691) (not b!1367917) (not d!389693) (not b!1367883) (not d!389577) (not d!389493) (not d!389713) (not d!389717) (not b!1367877) (not b!1367463) (not b_lambda!41683) (not d!389703) (not b!1367876) (not b!1367899) (not bm!91957) (not d!389539) (not b!1367776) (not b!1367926) (not d!389639) (not b!1367916) (not d!389681) b_and!91703 (not b!1367600) (not b!1367440) (not d!389627) (not b!1367884) (not d!389721) (not b!1367354) b_and!91647 (not b!1367866) b_and!91707 (not b!1367366) (not b_lambda!41687) (not b!1367458) (not b!1367607) (not d!389567) (not b!1367887) (not b!1367464) (not b!1367849) (not d!389699) (not d!389697) (not b!1367925) (not b_lambda!41693) (not b!1367862) (not b!1367777) (not b!1367503) (not b!1367283) (not b!1367601) (not b_lambda!41675) (not b!1367670) (not b!1367356) (not d!389485) (not d!389621) (not d!389579) (not bm!91962) (not d!389555) (not b!1367508) (not d!389465) (not b!1367871) (not b!1367861) (not b!1367920) (not b!1367355) (not b!1367857) (not d!389701) (not b!1367818) (not b_lambda!41689) b_and!91709 (not d!389647) (not b!1367459) (not b!1367596) (not d!389615) (not d!389649) tp_is_empty!6739 (not d!389513) (not d!389575) (not b!1367815) (not b!1367753) (not d!389695) (not b!1367842) (not b!1367593) (not d!389685) (not b!1367929) (not d!389709) (not b!1367921) (not b!1367869) (not b!1367606) (not d!389687) (not d!389609) (not b!1367922) (not b!1367855) (not b!1367854) (not bm!91961) (not b!1367321) (not d!389565) (not b!1367367) (not d!389723) (not d!389645) (not tb!72061) (not b!1367756) (not b!1367431) (not b!1367924) (not d!389691) (not b_next!33853) (not d!389551) (not b!1367853) (not b!1367778) (not b!1367868) (not b_next!33859) (not tb!72055) (not bs!335248) (not d!389683) (not b!1367659))
(check-sat (not b_next!33861) b_and!91651 (not b_next!33869) b_and!91643 b_and!91703 (not b_next!33855) b_and!91709 (not b_next!33867) (not b_next!33857) b_and!91701 b_and!91705 (not b_next!33851) b_and!91647 b_and!91707 (not b_next!33853) (not b_next!33859))
(get-model)

(assert (=> d!389625 d!389687))

(declare-fun bs!335284 () Bool)

(declare-fun d!389873 () Bool)

(assert (= bs!335284 (and d!389873 d!389621)))

(declare-fun lambda!57941 () Int)

(assert (=> bs!335284 (= (= lambda!57919 lambda!57884) (= lambda!57941 lambda!57913))))

(declare-fun bs!335285 () Bool)

(assert (= bs!335285 (and d!389873 d!389625)))

(assert (=> bs!335285 (not (= lambda!57941 lambda!57919))))

(declare-fun bs!335286 () Bool)

(assert (= bs!335286 (and d!389873 b!1367244)))

(assert (=> bs!335286 (not (= lambda!57941 lambda!57884))))

(assert (=> bs!335285 (not (= lambda!57941 lambda!57918))))

(declare-fun bs!335287 () Bool)

(assert (= bs!335287 (and d!389873 d!389627)))

(assert (=> bs!335287 (= (= lambda!57919 lambda!57884) (= lambda!57941 lambda!57920))))

(assert (=> d!389873 true))

(assert (=> d!389873 (< (dynLambda!6267 order!8429 lambda!57919) (dynLambda!6267 order!8429 lambda!57941))))

(assert (=> d!389873 (= (exists!461 lt!453463 lambda!57919) (not (forall!3388 lt!453463 lambda!57941)))))

(declare-fun bs!335288 () Bool)

(assert (= bs!335288 d!389873))

(declare-fun m!1537153 () Bool)

(assert (=> bs!335288 m!1537153))

(assert (=> d!389625 d!389873))

(declare-fun bs!335289 () Bool)

(declare-fun d!389875 () Bool)

(assert (= bs!335289 (and d!389875 d!389621)))

(declare-fun lambda!57944 () Int)

(assert (=> bs!335289 (not (= lambda!57944 lambda!57913))))

(declare-fun bs!335290 () Bool)

(assert (= bs!335290 (and d!389875 d!389625)))

(assert (=> bs!335290 (= lambda!57944 lambda!57919)))

(declare-fun bs!335291 () Bool)

(assert (= bs!335291 (and d!389875 b!1367244)))

(assert (=> bs!335291 (= lambda!57944 lambda!57884)))

(assert (=> bs!335290 (not (= lambda!57944 lambda!57918))))

(declare-fun bs!335292 () Bool)

(assert (= bs!335292 (and d!389875 d!389627)))

(assert (=> bs!335292 (not (= lambda!57944 lambda!57920))))

(declare-fun bs!335293 () Bool)

(assert (= bs!335293 (and d!389875 d!389873)))

(assert (=> bs!335293 (not (= lambda!57944 lambda!57941))))

(assert (=> d!389875 true))

(assert (=> d!389875 (= (matchR!1708 lt!453462 lt!453465) (exists!461 lt!453463 lambda!57944))))

(assert (=> d!389875 true))

(declare-fun _$85!146 () Unit!20071)

(assert (=> d!389875 (= (choose!8413 lt!453462 lt!453463 lt!453465) _$85!146)))

(declare-fun bs!335294 () Bool)

(assert (= bs!335294 d!389875))

(assert (=> bs!335294 m!1535801))

(declare-fun m!1537155 () Bool)

(assert (=> bs!335294 m!1537155))

(assert (=> d!389625 d!389875))

(declare-fun d!389877 () Bool)

(declare-fun res!616249 () Bool)

(declare-fun e!874738 () Bool)

(assert (=> d!389877 (=> res!616249 e!874738)))

(assert (=> d!389877 (= res!616249 ((_ is Nil!13866) lt!453463))))

(assert (=> d!389877 (= (forall!3388 lt!453463 lambda!57918) e!874738)))

(declare-fun b!1368136 () Bool)

(declare-fun e!874739 () Bool)

(assert (=> b!1368136 (= e!874738 e!874739)))

(declare-fun res!616250 () Bool)

(assert (=> b!1368136 (=> (not res!616250) (not e!874739))))

(assert (=> b!1368136 (= res!616250 (dynLambda!6274 lambda!57918 (h!19267 lt!453463)))))

(declare-fun b!1368137 () Bool)

(assert (=> b!1368137 (= e!874739 (forall!3388 (t!121283 lt!453463) lambda!57918))))

(assert (= (and d!389877 (not res!616249)) b!1368136))

(assert (= (and b!1368136 res!616250) b!1368137))

(declare-fun b_lambda!41703 () Bool)

(assert (=> (not b_lambda!41703) (not b!1368136)))

(declare-fun m!1537157 () Bool)

(assert (=> b!1368136 m!1537157))

(declare-fun m!1537159 () Bool)

(assert (=> b!1368137 m!1537159))

(assert (=> d!389625 d!389877))

(declare-fun b!1368147 () Bool)

(declare-fun res!616262 () Bool)

(declare-fun e!874742 () Bool)

(assert (=> b!1368147 (=> (not res!616262) (not e!874742))))

(declare-fun height!661 (Conc!4564) Int)

(declare-fun ++!3581 (Conc!4564 Conc!4564) Conc!4564)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1368147 (= res!616262 (<= (height!661 (++!3581 (c!224866 (charsOf!1373 t1!34)) (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))) (+ (max!0 (height!661 (c!224866 (charsOf!1373 t1!34))) (height!661 (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))) 1)))))

(declare-fun d!389879 () Bool)

(assert (=> d!389879 e!874742))

(declare-fun res!616259 () Bool)

(assert (=> d!389879 (=> (not res!616259) (not e!874742))))

(declare-fun appendAssocInst!278 (Conc!4564 Conc!4564) Bool)

(assert (=> d!389879 (= res!616259 (appendAssocInst!278 (c!224866 (charsOf!1373 t1!34)) (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0)))))))

(declare-fun lt!453788 () BalanceConc!9068)

(assert (=> d!389879 (= lt!453788 (BalanceConc!9069 (++!3581 (c!224866 (charsOf!1373 t1!34)) (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))))))

(assert (=> d!389879 (= (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))) lt!453788)))

(declare-fun b!1368148 () Bool)

(declare-fun res!616260 () Bool)

(assert (=> b!1368148 (=> (not res!616260) (not e!874742))))

(assert (=> b!1368148 (= res!616260 (>= (height!661 (++!3581 (c!224866 (charsOf!1373 t1!34)) (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))) (max!0 (height!661 (c!224866 (charsOf!1373 t1!34))) (height!661 (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0)))))))))

(declare-fun b!1368149 () Bool)

(assert (=> b!1368149 (= e!874742 (= (list!5330 lt!453788) (++!3578 (list!5330 (charsOf!1373 t1!34)) (list!5330 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))))))

(declare-fun b!1368146 () Bool)

(declare-fun res!616261 () Bool)

(assert (=> b!1368146 (=> (not res!616261) (not e!874742))))

(declare-fun isBalanced!1341 (Conc!4564) Bool)

(assert (=> b!1368146 (= res!616261 (isBalanced!1341 (++!3581 (c!224866 (charsOf!1373 t1!34)) (c!224866 (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))))))

(assert (= (and d!389879 res!616259) b!1368146))

(assert (= (and b!1368146 res!616261) b!1368147))

(assert (= (and b!1368147 res!616262) b!1368148))

(assert (= (and b!1368148 res!616260) b!1368149))

(declare-fun m!1537161 () Bool)

(assert (=> b!1368146 m!1537161))

(assert (=> b!1368146 m!1537161))

(declare-fun m!1537163 () Bool)

(assert (=> b!1368146 m!1537163))

(assert (=> b!1368148 m!1537161))

(declare-fun m!1537165 () Bool)

(assert (=> b!1368148 m!1537165))

(assert (=> b!1368148 m!1537161))

(declare-fun m!1537167 () Bool)

(assert (=> b!1368148 m!1537167))

(declare-fun m!1537169 () Bool)

(assert (=> b!1368148 m!1537169))

(assert (=> b!1368148 m!1537165))

(assert (=> b!1368148 m!1537169))

(declare-fun m!1537171 () Bool)

(assert (=> b!1368148 m!1537171))

(assert (=> b!1368147 m!1537161))

(assert (=> b!1368147 m!1537165))

(assert (=> b!1368147 m!1537161))

(assert (=> b!1368147 m!1537167))

(assert (=> b!1368147 m!1537169))

(assert (=> b!1368147 m!1537165))

(assert (=> b!1368147 m!1537169))

(assert (=> b!1368147 m!1537171))

(declare-fun m!1537173 () Bool)

(assert (=> d!389879 m!1537173))

(assert (=> d!389879 m!1537161))

(declare-fun m!1537175 () Bool)

(assert (=> b!1368149 m!1537175))

(assert (=> b!1368149 m!1535891))

(declare-fun m!1537177 () Bool)

(assert (=> b!1368149 m!1537177))

(assert (=> b!1368149 m!1536273))

(declare-fun m!1537179 () Bool)

(assert (=> b!1368149 m!1537179))

(assert (=> b!1368149 m!1537177))

(assert (=> b!1368149 m!1537179))

(declare-fun m!1537181 () Bool)

(assert (=> b!1368149 m!1537181))

(assert (=> d!389567 d!389879))

(declare-fun lt!453815 () Bool)

(declare-fun d!389881 () Bool)

(assert (=> d!389881 (= lt!453815 (prefixMatch!224 (rulesRegex!284 thiss!19762 rules!2550) (list!5330 (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))))))))

(declare-datatypes ((Context!1200 0))(
  ( (Context!1201 (exprs!1100 List!13932)) )
))
(declare-fun prefixMatchZipperSequence!253 ((InoxSet Context!1200) BalanceConc!9068 Int) Bool)

(declare-fun focus!91 (Regex!3715) (InoxSet Context!1200))

(assert (=> d!389881 (= lt!453815 (prefixMatchZipperSequence!253 (focus!91 (rulesRegex!284 thiss!19762 rules!2550)) (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))) 0))))

(declare-fun lt!453818 () Unit!20071)

(declare-fun lt!453814 () Unit!20071)

(assert (=> d!389881 (= lt!453818 lt!453814)))

(declare-fun lt!453816 () (InoxSet Context!1200))

(declare-fun lt!453811 () List!13928)

(declare-fun prefixMatchZipper!71 ((InoxSet Context!1200) List!13928) Bool)

(assert (=> d!389881 (= (prefixMatch!224 (rulesRegex!284 thiss!19762 rules!2550) lt!453811) (prefixMatchZipper!71 lt!453816 lt!453811))))

(declare-datatypes ((List!13935 0))(
  ( (Nil!13869) (Cons!13869 (h!19270 Context!1200) (t!121428 List!13935)) )
))
(declare-fun lt!453817 () List!13935)

(declare-fun prefixMatchZipperRegexEquiv!71 ((InoxSet Context!1200) List!13935 Regex!3715 List!13928) Unit!20071)

(assert (=> d!389881 (= lt!453814 (prefixMatchZipperRegexEquiv!71 lt!453816 lt!453817 (rulesRegex!284 thiss!19762 rules!2550) lt!453811))))

(assert (=> d!389881 (= lt!453811 (list!5330 (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0)))))))

(declare-fun toList!755 ((InoxSet Context!1200)) List!13935)

(assert (=> d!389881 (= lt!453817 (toList!755 (focus!91 (rulesRegex!284 thiss!19762 rules!2550))))))

(assert (=> d!389881 (= lt!453816 (focus!91 (rulesRegex!284 thiss!19762 rules!2550)))))

(declare-fun lt!453810 () Unit!20071)

(declare-fun lt!453809 () Unit!20071)

(assert (=> d!389881 (= lt!453810 lt!453809)))

(declare-fun lt!453813 () (InoxSet Context!1200))

(declare-fun lt!453812 () Int)

(declare-fun dropList!403 (BalanceConc!9068 Int) List!13928)

(assert (=> d!389881 (= (prefixMatchZipper!71 lt!453813 (dropList!403 (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))) lt!453812)) (prefixMatchZipperSequence!253 lt!453813 (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))) lt!453812))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!71 ((InoxSet Context!1200) BalanceConc!9068 Int) Unit!20071)

(assert (=> d!389881 (= lt!453809 (lemmaprefixMatchZipperSequenceEquivalent!71 lt!453813 (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0))) lt!453812))))

(assert (=> d!389881 (= lt!453812 0)))

(assert (=> d!389881 (= lt!453813 (focus!91 (rulesRegex!284 thiss!19762 rules!2550)))))

(assert (=> d!389881 (validRegex!1615 (rulesRegex!284 thiss!19762 rules!2550))))

(assert (=> d!389881 (= (prefixMatchZipperSequence!252 (rulesRegex!284 thiss!19762 rules!2550) (++!3580 (charsOf!1373 t1!34) (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0)))) lt!453815)))

(declare-fun bs!335295 () Bool)

(assert (= bs!335295 d!389881))

(declare-fun m!1537183 () Bool)

(assert (=> bs!335295 m!1537183))

(declare-fun m!1537185 () Bool)

(assert (=> bs!335295 m!1537185))

(declare-fun m!1537187 () Bool)

(assert (=> bs!335295 m!1537187))

(assert (=> bs!335295 m!1535897))

(declare-fun m!1537189 () Bool)

(assert (=> bs!335295 m!1537189))

(declare-fun m!1537191 () Bool)

(assert (=> bs!335295 m!1537191))

(assert (=> bs!335295 m!1535897))

(declare-fun m!1537193 () Bool)

(assert (=> bs!335295 m!1537193))

(assert (=> bs!335295 m!1536267))

(declare-fun m!1537195 () Bool)

(assert (=> bs!335295 m!1537195))

(assert (=> bs!335295 m!1536267))

(assert (=> bs!335295 m!1537189))

(assert (=> bs!335295 m!1535897))

(assert (=> bs!335295 m!1537183))

(assert (=> bs!335295 m!1535897))

(declare-fun m!1537197 () Bool)

(assert (=> bs!335295 m!1537197))

(assert (=> bs!335295 m!1535897))

(declare-fun m!1537199 () Bool)

(assert (=> bs!335295 m!1537199))

(assert (=> bs!335295 m!1536267))

(declare-fun m!1537201 () Bool)

(assert (=> bs!335295 m!1537201))

(declare-fun m!1537203 () Bool)

(assert (=> bs!335295 m!1537203))

(declare-fun m!1537205 () Bool)

(assert (=> bs!335295 m!1537205))

(assert (=> bs!335295 m!1537183))

(assert (=> bs!335295 m!1536267))

(declare-fun m!1537207 () Bool)

(assert (=> bs!335295 m!1537207))

(assert (=> bs!335295 m!1536267))

(assert (=> bs!335295 m!1537203))

(assert (=> d!389567 d!389881))

(declare-fun d!389883 () Bool)

(declare-fun e!874745 () Bool)

(assert (=> d!389883 e!874745))

(declare-fun res!616265 () Bool)

(assert (=> d!389883 (=> (not res!616265) (not e!874745))))

(declare-fun lt!453821 () BalanceConc!9068)

(assert (=> d!389883 (= res!616265 (= (list!5330 lt!453821) (Cons!13862 (apply!3381 (charsOf!1373 t2!34) 0) Nil!13862)))))

(declare-fun singleton!447 (C!7720) BalanceConc!9068)

(assert (=> d!389883 (= lt!453821 (singleton!447 (apply!3381 (charsOf!1373 t2!34) 0)))))

(assert (=> d!389883 (= (singletonSeq!1030 (apply!3381 (charsOf!1373 t2!34) 0)) lt!453821)))

(declare-fun b!1368152 () Bool)

(assert (=> b!1368152 (= e!874745 (isBalanced!1341 (c!224866 lt!453821)))))

(assert (= (and d!389883 res!616265) b!1368152))

(declare-fun m!1537209 () Bool)

(assert (=> d!389883 m!1537209))

(assert (=> d!389883 m!1536271))

(declare-fun m!1537211 () Bool)

(assert (=> d!389883 m!1537211))

(declare-fun m!1537213 () Bool)

(assert (=> b!1368152 m!1537213))

(assert (=> d!389567 d!389883))

(assert (=> d!389567 d!389507))

(declare-fun d!389885 () Bool)

(declare-fun lt!453822 () C!7720)

(assert (=> d!389885 (= lt!453822 (apply!3384 (list!5330 (charsOf!1373 t2!34)) 0))))

(assert (=> d!389885 (= lt!453822 (apply!3385 (c!224866 (charsOf!1373 t2!34)) 0))))

(declare-fun e!874746 () Bool)

(assert (=> d!389885 e!874746))

(declare-fun res!616266 () Bool)

(assert (=> d!389885 (=> (not res!616266) (not e!874746))))

(assert (=> d!389885 (= res!616266 (<= 0 0))))

(assert (=> d!389885 (= (apply!3381 (charsOf!1373 t2!34) 0) lt!453822)))

(declare-fun b!1368153 () Bool)

(assert (=> b!1368153 (= e!874746 (< 0 (size!11358 (charsOf!1373 t2!34))))))

(assert (= (and d!389885 res!616266) b!1368153))

(assert (=> d!389885 m!1535903))

(declare-fun m!1537215 () Bool)

(assert (=> d!389885 m!1537215))

(assert (=> d!389885 m!1537215))

(declare-fun m!1537217 () Bool)

(assert (=> d!389885 m!1537217))

(declare-fun m!1537219 () Bool)

(assert (=> d!389885 m!1537219))

(assert (=> b!1368153 m!1535903))

(declare-fun m!1537221 () Bool)

(assert (=> b!1368153 m!1537221))

(assert (=> d!389567 d!389885))

(assert (=> d!389567 d!389501))

(assert (=> d!389567 d!389475))

(declare-fun d!389887 () Bool)

(assert (=> d!389887 (= (isDefined!2215 lt!453614) (not (isEmpty!8345 lt!453614)))))

(declare-fun bs!335296 () Bool)

(assert (= bs!335296 d!389887))

(assert (=> bs!335296 m!1536383))

(assert (=> b!1367596 d!389887))

(declare-fun d!389889 () Bool)

(declare-fun c!225037 () Bool)

(assert (=> d!389889 (= c!225037 ((_ is Node!4564) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(declare-fun e!874751 () Bool)

(assert (=> d!389889 (= (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))) e!874751)))

(declare-fun b!1368160 () Bool)

(declare-fun inv!18222 (Conc!4564) Bool)

(assert (=> b!1368160 (= e!874751 (inv!18222 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(declare-fun b!1368161 () Bool)

(declare-fun e!874752 () Bool)

(assert (=> b!1368161 (= e!874751 e!874752)))

(declare-fun res!616269 () Bool)

(assert (=> b!1368161 (= res!616269 (not ((_ is Leaf!6961) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))))))

(assert (=> b!1368161 (=> res!616269 e!874752)))

(declare-fun b!1368162 () Bool)

(declare-fun inv!18223 (Conc!4564) Bool)

(assert (=> b!1368162 (= e!874752 (inv!18223 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(assert (= (and d!389889 c!225037) b!1368160))

(assert (= (and d!389889 (not c!225037)) b!1368161))

(assert (= (and b!1368161 (not res!616269)) b!1368162))

(declare-fun m!1537223 () Bool)

(assert (=> b!1368160 m!1537223))

(declare-fun m!1537225 () Bool)

(assert (=> b!1368162 m!1537225))

(assert (=> b!1367303 d!389889))

(declare-fun d!389891 () Bool)

(declare-fun res!616272 () List!13928)

(assert (=> d!389891 (dynLambda!6264 lambda!57882 res!616272)))

(declare-fun e!874755 () Bool)

(assert (=> d!389891 e!874755))

(assert (=> d!389891 (= (choose!8411 lambda!57882) res!616272)))

(declare-fun b!1368165 () Bool)

(declare-fun tp!393395 () Bool)

(assert (=> b!1368165 (= e!874755 (and tp_is_empty!6739 tp!393395))))

(assert (= (and d!389891 ((_ is Cons!13862) res!616272)) b!1368165))

(declare-fun b_lambda!41705 () Bool)

(assert (=> (not b_lambda!41705) (not d!389891)))

(declare-fun m!1537227 () Bool)

(assert (=> d!389891 m!1537227))

(assert (=> d!389555 d!389891))

(assert (=> d!389555 d!389695))

(declare-fun b!1368166 () Bool)

(declare-fun e!874757 () Rule!4602)

(assert (=> b!1368166 (= e!874757 (h!19265 (t!121281 rules!2550)))))

(declare-fun b!1368167 () Bool)

(declare-fun e!874758 () Bool)

(assert (=> b!1368167 (= e!874758 (dynLambda!6273 lambda!57885 (h!19265 (t!121281 rules!2550))))))

(declare-fun d!389893 () Bool)

(declare-fun e!874759 () Bool)

(assert (=> d!389893 e!874759))

(declare-fun res!616273 () Bool)

(assert (=> d!389893 (=> (not res!616273) (not e!874759))))

(declare-fun lt!453823 () Rule!4602)

(assert (=> d!389893 (= res!616273 (dynLambda!6273 lambda!57885 lt!453823))))

(assert (=> d!389893 (= lt!453823 e!874757)))

(declare-fun c!225038 () Bool)

(assert (=> d!389893 (= c!225038 e!874758)))

(declare-fun res!616274 () Bool)

(assert (=> d!389893 (=> (not res!616274) (not e!874758))))

(assert (=> d!389893 (= res!616274 ((_ is Cons!13864) (t!121281 rules!2550)))))

(assert (=> d!389893 (exists!460 (t!121281 rules!2550) lambda!57885)))

(assert (=> d!389893 (= (getWitness!348 (t!121281 rules!2550) lambda!57885) lt!453823)))

(declare-fun b!1368168 () Bool)

(declare-fun e!874756 () Rule!4602)

(assert (=> b!1368168 (= e!874757 e!874756)))

(declare-fun c!225039 () Bool)

(assert (=> b!1368168 (= c!225039 ((_ is Cons!13864) (t!121281 rules!2550)))))

(declare-fun b!1368169 () Bool)

(assert (=> b!1368169 (= e!874759 (contains!2586 (t!121281 rules!2550) lt!453823))))

(declare-fun b!1368170 () Bool)

(declare-fun lt!453824 () Unit!20071)

(declare-fun Unit!20077 () Unit!20071)

(assert (=> b!1368170 (= lt!453824 Unit!20077)))

(assert (=> b!1368170 false))

(assert (=> b!1368170 (= e!874756 (head!2456 (t!121281 rules!2550)))))

(declare-fun b!1368171 () Bool)

(assert (=> b!1368171 (= e!874756 (getWitness!348 (t!121281 (t!121281 rules!2550)) lambda!57885))))

(assert (= (and d!389893 res!616274) b!1368167))

(assert (= (and d!389893 c!225038) b!1368166))

(assert (= (and d!389893 (not c!225038)) b!1368168))

(assert (= (and b!1368168 c!225039) b!1368171))

(assert (= (and b!1368168 (not c!225039)) b!1368170))

(assert (= (and d!389893 res!616273) b!1368169))

(declare-fun b_lambda!41707 () Bool)

(assert (=> (not b_lambda!41707) (not b!1368167)))

(declare-fun b_lambda!41709 () Bool)

(assert (=> (not b_lambda!41709) (not d!389893)))

(declare-fun m!1537229 () Bool)

(assert (=> b!1368167 m!1537229))

(declare-fun m!1537231 () Bool)

(assert (=> b!1368171 m!1537231))

(declare-fun m!1537233 () Bool)

(assert (=> d!389893 m!1537233))

(declare-fun m!1537235 () Bool)

(assert (=> d!389893 m!1537235))

(declare-fun m!1537237 () Bool)

(assert (=> b!1368170 m!1537237))

(declare-fun m!1537239 () Bool)

(assert (=> b!1368169 m!1537239))

(assert (=> b!1367778 d!389893))

(declare-fun b!1368172 () Bool)

(declare-fun res!616277 () Bool)

(declare-fun e!874760 () Bool)

(assert (=> b!1368172 (=> (not res!616277) (not e!874760))))

(declare-fun lt!453827 () Option!2662)

(assert (=> b!1368172 (= res!616277 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453827)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!453827)))))))

(declare-fun d!389895 () Bool)

(declare-fun e!874762 () Bool)

(assert (=> d!389895 e!874762))

(declare-fun res!616278 () Bool)

(assert (=> d!389895 (=> res!616278 e!874762)))

(assert (=> d!389895 (= res!616278 (isEmpty!8345 lt!453827))))

(declare-fun e!874761 () Option!2662)

(assert (=> d!389895 (= lt!453827 e!874761)))

(declare-fun c!225040 () Bool)

(assert (=> d!389895 (= c!225040 (and ((_ is Cons!13864) (t!121281 rules!2550)) ((_ is Nil!13864) (t!121281 (t!121281 rules!2550)))))))

(declare-fun lt!453825 () Unit!20071)

(declare-fun lt!453829 () Unit!20071)

(assert (=> d!389895 (= lt!453825 lt!453829)))

(assert (=> d!389895 (isPrefix!1125 lt!453458 lt!453458)))

(assert (=> d!389895 (= lt!453829 (lemmaIsPrefixRefl!787 lt!453458 lt!453458))))

(assert (=> d!389895 (rulesValidInductive!766 thiss!19762 (t!121281 rules!2550))))

(assert (=> d!389895 (= (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) lt!453458) lt!453827)))

(declare-fun call!91981 () Option!2662)

(declare-fun bm!91976 () Bool)

(assert (=> bm!91976 (= call!91981 (maxPrefixOneRule!613 thiss!19762 (h!19265 (t!121281 rules!2550)) lt!453458))))

(declare-fun b!1368173 () Bool)

(declare-fun res!616275 () Bool)

(assert (=> b!1368173 (=> (not res!616275) (not e!874760))))

(assert (=> b!1368173 (= res!616275 (= (value!78061 (_1!7615 (get!4341 lt!453827))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453827)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453827)))))))))

(declare-fun b!1368174 () Bool)

(assert (=> b!1368174 (= e!874761 call!91981)))

(declare-fun b!1368175 () Bool)

(assert (=> b!1368175 (= e!874762 e!874760)))

(declare-fun res!616280 () Bool)

(assert (=> b!1368175 (=> (not res!616280) (not e!874760))))

(assert (=> b!1368175 (= res!616280 (isDefined!2215 lt!453827))))

(declare-fun b!1368176 () Bool)

(declare-fun res!616279 () Bool)

(assert (=> b!1368176 (=> (not res!616279) (not e!874760))))

(assert (=> b!1368176 (= res!616279 (< (size!11363 (_2!7615 (get!4341 lt!453827))) (size!11363 lt!453458)))))

(declare-fun b!1368177 () Bool)

(declare-fun res!616281 () Bool)

(assert (=> b!1368177 (=> (not res!616281) (not e!874760))))

(assert (=> b!1368177 (= res!616281 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453827)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453827))))))))

(declare-fun b!1368178 () Bool)

(declare-fun lt!453828 () Option!2662)

(declare-fun lt!453826 () Option!2662)

(assert (=> b!1368178 (= e!874761 (ite (and ((_ is None!2661) lt!453828) ((_ is None!2661) lt!453826)) None!2661 (ite ((_ is None!2661) lt!453826) lt!453828 (ite ((_ is None!2661) lt!453828) lt!453826 (ite (>= (size!11357 (_1!7615 (v!21444 lt!453828))) (size!11357 (_1!7615 (v!21444 lt!453826)))) lt!453828 lt!453826)))))))

(assert (=> b!1368178 (= lt!453828 call!91981)))

(assert (=> b!1368178 (= lt!453826 (maxPrefix!1078 thiss!19762 (t!121281 (t!121281 rules!2550)) lt!453458))))

(declare-fun b!1368179 () Bool)

(declare-fun res!616276 () Bool)

(assert (=> b!1368179 (=> (not res!616276) (not e!874760))))

(assert (=> b!1368179 (= res!616276 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453827)))) (_2!7615 (get!4341 lt!453827))) lt!453458))))

(declare-fun b!1368180 () Bool)

(assert (=> b!1368180 (= e!874760 (contains!2586 (t!121281 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453827)))))))

(assert (= (and d!389895 c!225040) b!1368174))

(assert (= (and d!389895 (not c!225040)) b!1368178))

(assert (= (or b!1368174 b!1368178) bm!91976))

(assert (= (and d!389895 (not res!616278)) b!1368175))

(assert (= (and b!1368175 res!616280) b!1368172))

(assert (= (and b!1368172 res!616277) b!1368176))

(assert (= (and b!1368176 res!616279) b!1368179))

(assert (= (and b!1368179 res!616276) b!1368173))

(assert (= (and b!1368173 res!616275) b!1368177))

(assert (= (and b!1368177 res!616281) b!1368180))

(declare-fun m!1537241 () Bool)

(assert (=> b!1368176 m!1537241))

(declare-fun m!1537243 () Bool)

(assert (=> b!1368176 m!1537243))

(assert (=> b!1368176 m!1536057))

(assert (=> b!1368179 m!1537241))

(declare-fun m!1537245 () Bool)

(assert (=> b!1368179 m!1537245))

(assert (=> b!1368179 m!1537245))

(declare-fun m!1537247 () Bool)

(assert (=> b!1368179 m!1537247))

(assert (=> b!1368179 m!1537247))

(declare-fun m!1537249 () Bool)

(assert (=> b!1368179 m!1537249))

(declare-fun m!1537251 () Bool)

(assert (=> bm!91976 m!1537251))

(assert (=> b!1368172 m!1537241))

(assert (=> b!1368172 m!1537245))

(assert (=> b!1368172 m!1537245))

(assert (=> b!1368172 m!1537247))

(assert (=> b!1368173 m!1537241))

(declare-fun m!1537253 () Bool)

(assert (=> b!1368173 m!1537253))

(assert (=> b!1368173 m!1537253))

(declare-fun m!1537255 () Bool)

(assert (=> b!1368173 m!1537255))

(declare-fun m!1537257 () Bool)

(assert (=> b!1368178 m!1537257))

(declare-fun m!1537259 () Bool)

(assert (=> d!389895 m!1537259))

(assert (=> d!389895 m!1536715))

(assert (=> d!389895 m!1536717))

(declare-fun m!1537261 () Bool)

(assert (=> d!389895 m!1537261))

(assert (=> b!1368180 m!1537241))

(declare-fun m!1537263 () Bool)

(assert (=> b!1368180 m!1537263))

(assert (=> b!1368177 m!1537241))

(assert (=> b!1368177 m!1537245))

(assert (=> b!1368177 m!1537245))

(assert (=> b!1368177 m!1537247))

(assert (=> b!1368177 m!1537247))

(declare-fun m!1537265 () Bool)

(assert (=> b!1368177 m!1537265))

(declare-fun m!1537267 () Bool)

(assert (=> b!1368175 m!1537267))

(assert (=> b!1367860 d!389895))

(declare-fun d!389897 () Bool)

(assert (=> d!389897 (= (isEmpty!8341 lt!453465) ((_ is Nil!13862) lt!453465))))

(assert (=> bm!91961 d!389897))

(declare-fun d!389899 () Bool)

(declare-fun lt!453830 () Bool)

(assert (=> d!389899 (= lt!453830 (select (content!2020 (t!121281 rules!2550)) (rule!4154 t2!34)))))

(declare-fun e!874764 () Bool)

(assert (=> d!389899 (= lt!453830 e!874764)))

(declare-fun res!616282 () Bool)

(assert (=> d!389899 (=> (not res!616282) (not e!874764))))

(assert (=> d!389899 (= res!616282 ((_ is Cons!13864) (t!121281 rules!2550)))))

(assert (=> d!389899 (= (contains!2586 (t!121281 rules!2550) (rule!4154 t2!34)) lt!453830)))

(declare-fun b!1368181 () Bool)

(declare-fun e!874763 () Bool)

(assert (=> b!1368181 (= e!874764 e!874763)))

(declare-fun res!616283 () Bool)

(assert (=> b!1368181 (=> res!616283 e!874763)))

(assert (=> b!1368181 (= res!616283 (= (h!19265 (t!121281 rules!2550)) (rule!4154 t2!34)))))

(declare-fun b!1368182 () Bool)

(assert (=> b!1368182 (= e!874763 (contains!2586 (t!121281 (t!121281 rules!2550)) (rule!4154 t2!34)))))

(assert (= (and d!389899 res!616282) b!1368181))

(assert (= (and b!1368181 (not res!616283)) b!1368182))

(declare-fun m!1537269 () Bool)

(assert (=> d!389899 m!1537269))

(declare-fun m!1537271 () Bool)

(assert (=> d!389899 m!1537271))

(declare-fun m!1537273 () Bool)

(assert (=> b!1368182 m!1537273))

(assert (=> b!1367887 d!389899))

(declare-fun d!389901 () Bool)

(assert (=> d!389901 (= (isEmpty!8341 lt!453466) ((_ is Nil!13862) lt!453466))))

(assert (=> d!389493 d!389901))

(declare-fun d!389903 () Bool)

(declare-fun nullableFct!279 (Regex!3715) Bool)

(assert (=> d!389903 (= (nullable!1195 lt!453462) (nullableFct!279 lt!453462))))

(declare-fun bs!335297 () Bool)

(assert (= bs!335297 d!389903))

(declare-fun m!1537275 () Bool)

(assert (=> bs!335297 m!1537275))

(assert (=> b!1367820 d!389903))

(declare-fun d!389905 () Bool)

(declare-fun lt!453833 () Int)

(assert (=> d!389905 (>= lt!453833 0)))

(declare-fun e!874767 () Int)

(assert (=> d!389905 (= lt!453833 e!874767)))

(declare-fun c!225043 () Bool)

(assert (=> d!389905 (= c!225043 ((_ is Nil!13862) (_2!7613 lt!453652)))))

(assert (=> d!389905 (= (size!11363 (_2!7613 lt!453652)) lt!453833)))

(declare-fun b!1368187 () Bool)

(assert (=> b!1368187 (= e!874767 0)))

(declare-fun b!1368188 () Bool)

(assert (=> b!1368188 (= e!874767 (+ 1 (size!11363 (t!121279 (_2!7613 lt!453652)))))))

(assert (= (and d!389905 c!225043) b!1368187))

(assert (= (and d!389905 (not c!225043)) b!1368188))

(declare-fun m!1537277 () Bool)

(assert (=> b!1368188 m!1537277))

(assert (=> b!1367659 d!389905))

(declare-fun d!389907 () Bool)

(declare-fun lt!453834 () Int)

(assert (=> d!389907 (>= lt!453834 0)))

(declare-fun e!874768 () Int)

(assert (=> d!389907 (= lt!453834 e!874768)))

(declare-fun c!225044 () Bool)

(assert (=> d!389907 (= c!225044 ((_ is Nil!13862) (list!5330 lt!453461)))))

(assert (=> d!389907 (= (size!11363 (list!5330 lt!453461)) lt!453834)))

(declare-fun b!1368189 () Bool)

(assert (=> b!1368189 (= e!874768 0)))

(declare-fun b!1368190 () Bool)

(assert (=> b!1368190 (= e!874768 (+ 1 (size!11363 (t!121279 (list!5330 lt!453461)))))))

(assert (= (and d!389907 c!225044) b!1368189))

(assert (= (and d!389907 (not c!225044)) b!1368190))

(declare-fun m!1537279 () Bool)

(assert (=> b!1368190 m!1537279))

(assert (=> b!1367659 d!389907))

(declare-fun d!389909 () Bool)

(assert (=> d!389909 (= (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))) (isBalanced!1341 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(declare-fun bs!335298 () Bool)

(assert (= bs!335298 d!389909))

(declare-fun m!1537281 () Bool)

(assert (=> bs!335298 m!1537281))

(assert (=> tb!72055 d!389909))

(declare-fun b!1368192 () Bool)

(declare-fun e!874770 () List!13928)

(assert (=> b!1368192 (= e!874770 (Cons!13862 (h!19263 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (++!3578 (t!121279 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (_2!7615 (get!4341 lt!453614)))))))

(declare-fun b!1368194 () Bool)

(declare-fun e!874769 () Bool)

(declare-fun lt!453835 () List!13928)

(assert (=> b!1368194 (= e!874769 (or (not (= (_2!7615 (get!4341 lt!453614)) Nil!13862)) (= lt!453835 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun b!1368191 () Bool)

(assert (=> b!1368191 (= e!874770 (_2!7615 (get!4341 lt!453614)))))

(declare-fun b!1368193 () Bool)

(declare-fun res!616284 () Bool)

(assert (=> b!1368193 (=> (not res!616284) (not e!874769))))

(assert (=> b!1368193 (= res!616284 (= (size!11363 lt!453835) (+ (size!11363 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (size!11363 (_2!7615 (get!4341 lt!453614))))))))

(declare-fun d!389911 () Bool)

(assert (=> d!389911 e!874769))

(declare-fun res!616285 () Bool)

(assert (=> d!389911 (=> (not res!616285) (not e!874769))))

(assert (=> d!389911 (= res!616285 (= (content!2019 lt!453835) ((_ map or) (content!2019 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (content!2019 (_2!7615 (get!4341 lt!453614))))))))

(assert (=> d!389911 (= lt!453835 e!874770)))

(declare-fun c!225045 () Bool)

(assert (=> d!389911 (= c!225045 ((_ is Nil!13862) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))

(assert (=> d!389911 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))) (_2!7615 (get!4341 lt!453614))) lt!453835)))

(assert (= (and d!389911 c!225045) b!1368191))

(assert (= (and d!389911 (not c!225045)) b!1368192))

(assert (= (and d!389911 res!616285) b!1368193))

(assert (= (and b!1368193 res!616284) b!1368194))

(declare-fun m!1537283 () Bool)

(assert (=> b!1368192 m!1537283))

(declare-fun m!1537285 () Bool)

(assert (=> b!1368193 m!1537285))

(assert (=> b!1368193 m!1536371))

(declare-fun m!1537287 () Bool)

(assert (=> b!1368193 m!1537287))

(assert (=> b!1368193 m!1536367))

(declare-fun m!1537289 () Bool)

(assert (=> d!389911 m!1537289))

(assert (=> d!389911 m!1536371))

(declare-fun m!1537291 () Bool)

(assert (=> d!389911 m!1537291))

(declare-fun m!1537293 () Bool)

(assert (=> d!389911 m!1537293))

(assert (=> b!1367600 d!389911))

(declare-fun d!389913 () Bool)

(assert (=> d!389913 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))) (list!5333 (c!224866 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun bs!335299 () Bool)

(assert (= bs!335299 d!389913))

(declare-fun m!1537295 () Bool)

(assert (=> bs!335299 m!1537295))

(assert (=> b!1367600 d!389913))

(declare-fun d!389915 () Bool)

(declare-fun lt!453836 () BalanceConc!9068)

(assert (=> d!389915 (= (list!5330 lt!453836) (originalCharacters!3263 (_1!7615 (get!4341 lt!453614))))))

(assert (=> d!389915 (= lt!453836 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))) (value!78061 (_1!7615 (get!4341 lt!453614)))))))

(assert (=> d!389915 (= (charsOf!1373 (_1!7615 (get!4341 lt!453614))) lt!453836)))

(declare-fun b_lambda!41711 () Bool)

(assert (=> (not b_lambda!41711) (not d!389915)))

(declare-fun tb!72105 () Bool)

(declare-fun t!121352 () Bool)

(assert (=> (and b!1367219 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121352) tb!72105))

(declare-fun b!1368195 () Bool)

(declare-fun e!874771 () Bool)

(declare-fun tp!393396 () Bool)

(assert (=> b!1368195 (= e!874771 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))) (value!78061 (_1!7615 (get!4341 lt!453614)))))) tp!393396))))

(declare-fun result!87552 () Bool)

(assert (=> tb!72105 (= result!87552 (and (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))) (value!78061 (_1!7615 (get!4341 lt!453614))))) e!874771))))

(assert (= tb!72105 b!1368195))

(declare-fun m!1537297 () Bool)

(assert (=> b!1368195 m!1537297))

(declare-fun m!1537299 () Bool)

(assert (=> tb!72105 m!1537299))

(assert (=> d!389915 t!121352))

(declare-fun b_and!91735 () Bool)

(assert (= b_and!91701 (and (=> t!121352 result!87552) b_and!91735)))

(declare-fun tb!72107 () Bool)

(declare-fun t!121354 () Bool)

(assert (=> (and b!1367242 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121354) tb!72107))

(declare-fun result!87554 () Bool)

(assert (= result!87554 result!87552))

(assert (=> d!389915 t!121354))

(declare-fun b_and!91737 () Bool)

(assert (= b_and!91703 (and (=> t!121354 result!87554) b_and!91737)))

(declare-fun tb!72109 () Bool)

(declare-fun t!121356 () Bool)

(assert (=> (and b!1367212 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121356) tb!72109))

(declare-fun result!87556 () Bool)

(assert (= result!87556 result!87552))

(assert (=> d!389915 t!121356))

(declare-fun b_and!91739 () Bool)

(assert (= b_and!91705 (and (=> t!121356 result!87556) b_and!91739)))

(declare-fun tb!72111 () Bool)

(declare-fun t!121358 () Bool)

(assert (=> (and b!1367918 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121358) tb!72111))

(declare-fun result!87558 () Bool)

(assert (= result!87558 result!87552))

(assert (=> d!389915 t!121358))

(declare-fun b_and!91741 () Bool)

(assert (= b_and!91709 (and (=> t!121358 result!87558) b_and!91741)))

(declare-fun m!1537301 () Bool)

(assert (=> d!389915 m!1537301))

(declare-fun m!1537303 () Bool)

(assert (=> d!389915 m!1537303))

(assert (=> b!1367600 d!389915))

(declare-fun d!389917 () Bool)

(assert (=> d!389917 (= (get!4341 lt!453614) (v!21444 lt!453614))))

(assert (=> b!1367600 d!389917))

(declare-fun d!389919 () Bool)

(declare-fun lt!453839 () Bool)

(assert (=> d!389919 (= lt!453839 (isEmpty!8347 (list!5331 (_1!7614 lt!453708))))))

(declare-fun isEmpty!8351 (Conc!4565) Bool)

(assert (=> d!389919 (= lt!453839 (isEmpty!8351 (c!224868 (_1!7614 lt!453708))))))

(assert (=> d!389919 (= (isEmpty!8348 (_1!7614 lt!453708)) lt!453839)))

(declare-fun bs!335300 () Bool)

(assert (= bs!335300 d!389919))

(assert (=> bs!335300 m!1536731))

(assert (=> bs!335300 m!1536731))

(declare-fun m!1537305 () Bool)

(assert (=> bs!335300 m!1537305))

(declare-fun m!1537307 () Bool)

(assert (=> bs!335300 m!1537307))

(assert (=> b!1367866 d!389919))

(declare-fun d!389921 () Bool)

(declare-fun charsToInt!0 (List!13929) (_ BitVec 32))

(assert (=> d!389921 (= (inv!16 (value!78061 t1!34)) (= (charsToInt!0 (text!17884 (value!78061 t1!34))) (value!78052 (value!78061 t1!34))))))

(declare-fun bs!335301 () Bool)

(assert (= bs!335301 d!389921))

(declare-fun m!1537309 () Bool)

(assert (=> bs!335301 m!1537309))

(assert (=> b!1367505 d!389921))

(declare-fun d!389923 () Bool)

(assert (=> d!389923 (= (inv!16 (value!78061 t2!34)) (= (charsToInt!0 (text!17884 (value!78061 t2!34))) (value!78052 (value!78061 t2!34))))))

(declare-fun bs!335302 () Bool)

(assert (= bs!335302 d!389923))

(declare-fun m!1537311 () Bool)

(assert (=> bs!335302 m!1537311))

(assert (=> b!1367460 d!389923))

(declare-fun d!389925 () Bool)

(assert (=> d!389925 true))

(declare-fun order!8443 () Int)

(declare-fun order!8445 () Int)

(declare-fun lambda!57947 () Int)

(declare-fun dynLambda!6280 (Int Int) Int)

(declare-fun dynLambda!6281 (Int Int) Int)

(assert (=> d!389925 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (dynLambda!6281 order!8445 lambda!57947))))

(declare-fun Forall2!439 (Int) Bool)

(assert (=> d!389925 (= (equivClasses!882 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (Forall2!439 lambda!57947))))

(declare-fun bs!335303 () Bool)

(assert (= bs!335303 d!389925))

(declare-fun m!1537313 () Bool)

(assert (=> bs!335303 m!1537313))

(assert (=> b!1367670 d!389925))

(declare-fun d!389927 () Bool)

(assert (=> d!389927 (= (list!5330 (_2!7614 lt!453708)) (list!5333 (c!224866 (_2!7614 lt!453708))))))

(declare-fun bs!335304 () Bool)

(assert (= bs!335304 d!389927))

(declare-fun m!1537315 () Bool)

(assert (=> bs!335304 m!1537315))

(assert (=> b!1367870 d!389927))

(assert (=> b!1367870 d!389629))

(assert (=> b!1367870 d!389637))

(declare-fun d!389929 () Bool)

(declare-fun c!225048 () Bool)

(assert (=> d!389929 (= c!225048 ((_ is Nil!13862) lt!453560))))

(declare-fun e!874776 () (InoxSet C!7720))

(assert (=> d!389929 (= (content!2019 lt!453560) e!874776)))

(declare-fun b!1368204 () Bool)

(assert (=> b!1368204 (= e!874776 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1368205 () Bool)

(assert (=> b!1368205 (= e!874776 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 lt!453560) true) (content!2019 (t!121279 lt!453560))))))

(assert (= (and d!389929 c!225048) b!1368204))

(assert (= (and d!389929 (not c!225048)) b!1368205))

(declare-fun m!1537317 () Bool)

(assert (=> b!1368205 m!1537317))

(declare-fun m!1537319 () Bool)

(assert (=> b!1368205 m!1537319))

(assert (=> d!389551 d!389929))

(declare-fun d!389931 () Bool)

(declare-fun c!225049 () Bool)

(assert (=> d!389931 (= c!225049 ((_ is Nil!13862) lt!453466))))

(declare-fun e!874777 () (InoxSet C!7720))

(assert (=> d!389931 (= (content!2019 lt!453466) e!874777)))

(declare-fun b!1368206 () Bool)

(assert (=> b!1368206 (= e!874777 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1368207 () Bool)

(assert (=> b!1368207 (= e!874777 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 lt!453466) true) (content!2019 (t!121279 lt!453466))))))

(assert (= (and d!389931 c!225049) b!1368206))

(assert (= (and d!389931 (not c!225049)) b!1368207))

(declare-fun m!1537321 () Bool)

(assert (=> b!1368207 m!1537321))

(declare-fun m!1537323 () Bool)

(assert (=> b!1368207 m!1537323))

(assert (=> d!389551 d!389931))

(declare-fun d!389933 () Bool)

(declare-fun c!225050 () Bool)

(assert (=> d!389933 (= c!225050 ((_ is Nil!13862) (getSuffix!563 lt!453465 lt!453466)))))

(declare-fun e!874778 () (InoxSet C!7720))

(assert (=> d!389933 (= (content!2019 (getSuffix!563 lt!453465 lt!453466)) e!874778)))

(declare-fun b!1368208 () Bool)

(assert (=> b!1368208 (= e!874778 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1368209 () Bool)

(assert (=> b!1368209 (= e!874778 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 (getSuffix!563 lt!453465 lt!453466)) true) (content!2019 (t!121279 (getSuffix!563 lt!453465 lt!453466)))))))

(assert (= (and d!389933 c!225050) b!1368208))

(assert (= (and d!389933 (not c!225050)) b!1368209))

(declare-fun m!1537325 () Bool)

(assert (=> b!1368209 m!1537325))

(declare-fun m!1537327 () Bool)

(assert (=> b!1368209 m!1537327))

(assert (=> d!389551 d!389933))

(declare-fun bs!335305 () Bool)

(declare-fun d!389935 () Bool)

(assert (= bs!335305 (and d!389935 d!389925)))

(declare-fun lambda!57948 () Int)

(assert (=> bs!335305 (= (= (toValue!3664 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (= lambda!57948 lambda!57947))))

(assert (=> d!389935 true))

(assert (=> d!389935 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (rule!4154 t2!34)))) (dynLambda!6281 order!8445 lambda!57948))))

(assert (=> d!389935 (= (equivClasses!882 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t2!34)))) (Forall2!439 lambda!57948))))

(declare-fun bs!335306 () Bool)

(assert (= bs!335306 d!389935))

(declare-fun m!1537329 () Bool)

(assert (=> bs!335306 m!1537329))

(assert (=> b!1367524 d!389935))

(declare-fun d!389937 () Bool)

(declare-fun lt!453840 () Bool)

(assert (=> d!389937 (= lt!453840 (select (content!2019 (t!121279 lt!453466)) lt!453470))))

(declare-fun e!874779 () Bool)

(assert (=> d!389937 (= lt!453840 e!874779)))

(declare-fun res!616288 () Bool)

(assert (=> d!389937 (=> (not res!616288) (not e!874779))))

(assert (=> d!389937 (= res!616288 ((_ is Cons!13862) (t!121279 lt!453466)))))

(assert (=> d!389937 (= (contains!2585 (t!121279 lt!453466) lt!453470) lt!453840)))

(declare-fun b!1368210 () Bool)

(declare-fun e!874780 () Bool)

(assert (=> b!1368210 (= e!874779 e!874780)))

(declare-fun res!616289 () Bool)

(assert (=> b!1368210 (=> res!616289 e!874780)))

(assert (=> b!1368210 (= res!616289 (= (h!19263 (t!121279 lt!453466)) lt!453470))))

(declare-fun b!1368211 () Bool)

(assert (=> b!1368211 (= e!874780 (contains!2585 (t!121279 (t!121279 lt!453466)) lt!453470))))

(assert (= (and d!389937 res!616288) b!1368210))

(assert (= (and b!1368210 (not res!616289)) b!1368211))

(assert (=> d!389937 m!1537323))

(declare-fun m!1537331 () Bool)

(assert (=> d!389937 m!1537331))

(declare-fun m!1537333 () Bool)

(assert (=> b!1368211 m!1537333))

(assert (=> b!1367501 d!389937))

(declare-fun d!389939 () Bool)

(declare-fun lt!453843 () C!7720)

(assert (=> d!389939 (contains!2585 (list!5330 lt!453464) lt!453843)))

(declare-fun e!874785 () C!7720)

(assert (=> d!389939 (= lt!453843 e!874785)))

(declare-fun c!225053 () Bool)

(assert (=> d!389939 (= c!225053 (= 0 0))))

(declare-fun e!874786 () Bool)

(assert (=> d!389939 e!874786))

(declare-fun res!616292 () Bool)

(assert (=> d!389939 (=> (not res!616292) (not e!874786))))

(assert (=> d!389939 (= res!616292 (<= 0 0))))

(assert (=> d!389939 (= (apply!3384 (list!5330 lt!453464) 0) lt!453843)))

(declare-fun b!1368218 () Bool)

(assert (=> b!1368218 (= e!874786 (< 0 (size!11363 (list!5330 lt!453464))))))

(declare-fun b!1368219 () Bool)

(assert (=> b!1368219 (= e!874785 (head!2454 (list!5330 lt!453464)))))

(declare-fun b!1368220 () Bool)

(assert (=> b!1368220 (= e!874785 (apply!3384 (tail!1974 (list!5330 lt!453464)) (- 0 1)))))

(assert (= (and d!389939 res!616292) b!1368218))

(assert (= (and d!389939 c!225053) b!1368219))

(assert (= (and d!389939 (not c!225053)) b!1368220))

(assert (=> d!389939 m!1535895))

(declare-fun m!1537335 () Bool)

(assert (=> d!389939 m!1537335))

(assert (=> b!1368218 m!1535895))

(declare-fun m!1537337 () Bool)

(assert (=> b!1368218 m!1537337))

(assert (=> b!1368219 m!1535895))

(declare-fun m!1537339 () Bool)

(assert (=> b!1368219 m!1537339))

(assert (=> b!1368220 m!1535895))

(declare-fun m!1537341 () Bool)

(assert (=> b!1368220 m!1537341))

(assert (=> b!1368220 m!1537341))

(declare-fun m!1537343 () Bool)

(assert (=> b!1368220 m!1537343))

(assert (=> d!389565 d!389939))

(assert (=> d!389565 d!389481))

(declare-fun b!1368235 () Bool)

(declare-fun e!874796 () C!7720)

(declare-fun e!874797 () C!7720)

(assert (=> b!1368235 (= e!874796 e!874797)))

(declare-fun lt!453848 () Bool)

(declare-fun appendIndex!166 (List!13928 List!13928 Int) Bool)

(assert (=> b!1368235 (= lt!453848 (appendIndex!166 (list!5333 (left!11866 (c!224866 lt!453464))) (list!5333 (right!12196 (c!224866 lt!453464))) 0))))

(declare-fun c!225061 () Bool)

(assert (=> b!1368235 (= c!225061 (< 0 (size!11364 (left!11866 (c!224866 lt!453464)))))))

(declare-fun b!1368236 () Bool)

(declare-fun e!874795 () Int)

(assert (=> b!1368236 (= e!874795 0)))

(declare-fun b!1368237 () Bool)

(declare-fun apply!3392 (IArray!9133 Int) C!7720)

(assert (=> b!1368237 (= e!874796 (apply!3392 (xs!7291 (c!224866 lt!453464)) 0))))

(declare-fun d!389941 () Bool)

(declare-fun lt!453849 () C!7720)

(assert (=> d!389941 (= lt!453849 (apply!3384 (list!5333 (c!224866 lt!453464)) 0))))

(assert (=> d!389941 (= lt!453849 e!874796)))

(declare-fun c!225062 () Bool)

(assert (=> d!389941 (= c!225062 ((_ is Leaf!6961) (c!224866 lt!453464)))))

(declare-fun e!874798 () Bool)

(assert (=> d!389941 e!874798))

(declare-fun res!616295 () Bool)

(assert (=> d!389941 (=> (not res!616295) (not e!874798))))

(assert (=> d!389941 (= res!616295 (<= 0 0))))

(assert (=> d!389941 (= (apply!3385 (c!224866 lt!453464) 0) lt!453849)))

(declare-fun bm!91979 () Bool)

(declare-fun c!225060 () Bool)

(assert (=> bm!91979 (= c!225060 c!225061)))

(declare-fun call!91984 () C!7720)

(assert (=> bm!91979 (= call!91984 (apply!3385 (ite c!225061 (left!11866 (c!224866 lt!453464)) (right!12196 (c!224866 lt!453464))) e!874795))))

(declare-fun b!1368238 () Bool)

(assert (=> b!1368238 (= e!874797 call!91984)))

(declare-fun b!1368239 () Bool)

(assert (=> b!1368239 (= e!874797 call!91984)))

(declare-fun b!1368240 () Bool)

(assert (=> b!1368240 (= e!874795 (- 0 (size!11364 (left!11866 (c!224866 lt!453464)))))))

(declare-fun b!1368241 () Bool)

(assert (=> b!1368241 (= e!874798 (< 0 (size!11364 (c!224866 lt!453464))))))

(assert (= (and d!389941 res!616295) b!1368241))

(assert (= (and d!389941 c!225062) b!1368237))

(assert (= (and d!389941 (not c!225062)) b!1368235))

(assert (= (and b!1368235 c!225061) b!1368239))

(assert (= (and b!1368235 (not c!225061)) b!1368238))

(assert (= (or b!1368239 b!1368238) bm!91979))

(assert (= (and bm!91979 c!225060) b!1368236))

(assert (= (and bm!91979 (not c!225060)) b!1368240))

(declare-fun m!1537345 () Bool)

(assert (=> b!1368235 m!1537345))

(declare-fun m!1537347 () Bool)

(assert (=> b!1368235 m!1537347))

(assert (=> b!1368235 m!1537345))

(assert (=> b!1368235 m!1537347))

(declare-fun m!1537349 () Bool)

(assert (=> b!1368235 m!1537349))

(declare-fun m!1537351 () Bool)

(assert (=> b!1368235 m!1537351))

(declare-fun m!1537353 () Bool)

(assert (=> bm!91979 m!1537353))

(assert (=> b!1368240 m!1537351))

(declare-fun m!1537355 () Bool)

(assert (=> b!1368241 m!1537355))

(assert (=> d!389941 m!1535969))

(assert (=> d!389941 m!1535969))

(declare-fun m!1537357 () Bool)

(assert (=> d!389941 m!1537357))

(declare-fun m!1537359 () Bool)

(assert (=> b!1368237 m!1537359))

(assert (=> d!389565 d!389941))

(declare-fun d!389943 () Bool)

(declare-fun lt!453860 () Int)

(assert (=> d!389943 (= lt!453860 (size!11363 (list!5330 (_2!7614 lt!453671))))))

(assert (=> d!389943 (= lt!453860 (size!11364 (c!224866 (_2!7614 lt!453671))))))

(assert (=> d!389943 (= (size!11358 (_2!7614 lt!453671)) lt!453860)))

(declare-fun bs!335307 () Bool)

(assert (= bs!335307 d!389943))

(assert (=> bs!335307 m!1536607))

(assert (=> bs!335307 m!1536607))

(declare-fun m!1537361 () Bool)

(assert (=> bs!335307 m!1537361))

(declare-fun m!1537363 () Bool)

(assert (=> bs!335307 m!1537363))

(assert (=> b!1367756 d!389943))

(declare-fun d!389945 () Bool)

(declare-fun lt!453861 () Int)

(assert (=> d!389945 (= lt!453861 (size!11363 (list!5330 lt!453460)))))

(assert (=> d!389945 (= lt!453861 (size!11364 (c!224866 lt!453460)))))

(assert (=> d!389945 (= (size!11358 lt!453460) lt!453861)))

(declare-fun bs!335308 () Bool)

(assert (= bs!335308 d!389945))

(assert (=> bs!335308 m!1535783))

(assert (=> bs!335308 m!1535783))

(assert (=> bs!335308 m!1536683))

(declare-fun m!1537365 () Bool)

(assert (=> bs!335308 m!1537365))

(assert (=> b!1367756 d!389945))

(declare-fun d!389947 () Bool)

(declare-fun res!616296 () Bool)

(declare-fun e!874799 () Bool)

(assert (=> d!389947 (=> res!616296 e!874799)))

(assert (=> d!389947 (= res!616296 ((_ is Nil!13866) (map!3062 rules!2550 lambda!57883)))))

(assert (=> d!389947 (= (forall!3388 (map!3062 rules!2550 lambda!57883) lambda!57913) e!874799)))

(declare-fun b!1368242 () Bool)

(declare-fun e!874800 () Bool)

(assert (=> b!1368242 (= e!874799 e!874800)))

(declare-fun res!616297 () Bool)

(assert (=> b!1368242 (=> (not res!616297) (not e!874800))))

(assert (=> b!1368242 (= res!616297 (dynLambda!6274 lambda!57913 (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun b!1368243 () Bool)

(assert (=> b!1368243 (= e!874800 (forall!3388 (t!121283 (map!3062 rules!2550 lambda!57883)) lambda!57913))))

(assert (= (and d!389947 (not res!616296)) b!1368242))

(assert (= (and b!1368242 res!616297) b!1368243))

(declare-fun b_lambda!41713 () Bool)

(assert (=> (not b_lambda!41713) (not b!1368242)))

(declare-fun m!1537367 () Bool)

(assert (=> b!1368242 m!1537367))

(declare-fun m!1537369 () Bool)

(assert (=> b!1368243 m!1537369))

(assert (=> d!389621 d!389947))

(declare-fun d!389949 () Bool)

(assert (=> d!389949 (= (list!5331 lt!453710) (list!5334 (c!224868 lt!453710)))))

(declare-fun bs!335309 () Bool)

(assert (= bs!335309 d!389949))

(declare-fun m!1537371 () Bool)

(assert (=> bs!335309 m!1537371))

(assert (=> d!389713 d!389949))

(declare-fun d!389951 () Bool)

(declare-fun e!874809 () Bool)

(assert (=> d!389951 e!874809))

(declare-fun res!616300 () Bool)

(assert (=> d!389951 (=> (not res!616300) (not e!874809))))

(declare-fun lt!453922 () BalanceConc!9070)

(assert (=> d!389951 (= res!616300 (= (list!5331 lt!453922) (Cons!13865 t2!34 Nil!13865)))))

(declare-fun choose!8420 (Token!4464) BalanceConc!9070)

(assert (=> d!389951 (= lt!453922 (choose!8420 t2!34))))

(assert (=> d!389951 (= (singleton!445 t2!34) lt!453922)))

(declare-fun b!1368258 () Bool)

(assert (=> b!1368258 (= e!874809 (isBalanced!1339 (c!224868 lt!453922)))))

(assert (= (and d!389951 res!616300) b!1368258))

(declare-fun m!1537373 () Bool)

(assert (=> d!389951 m!1537373))

(declare-fun m!1537375 () Bool)

(assert (=> d!389951 m!1537375))

(declare-fun m!1537377 () Bool)

(assert (=> b!1368258 m!1537377))

(assert (=> d!389713 d!389951))

(declare-fun d!389953 () Bool)

(declare-fun lt!453923 () Int)

(assert (=> d!389953 (= lt!453923 (size!11363 (list!5330 lt!453464)))))

(assert (=> d!389953 (= lt!453923 (size!11364 (c!224866 lt!453464)))))

(assert (=> d!389953 (= (size!11358 lt!453464) lt!453923)))

(declare-fun bs!335310 () Bool)

(assert (= bs!335310 d!389953))

(assert (=> bs!335310 m!1535895))

(assert (=> bs!335310 m!1535895))

(assert (=> bs!335310 m!1537337))

(assert (=> bs!335310 m!1537355))

(assert (=> b!1367509 d!389953))

(declare-fun bs!335311 () Bool)

(declare-fun d!389955 () Bool)

(assert (= bs!335311 (and d!389955 b!1367240)))

(declare-fun lambda!57951 () Int)

(assert (=> bs!335311 (not (= lambda!57951 lambda!57885))))

(declare-fun bs!335312 () Bool)

(assert (= bs!335312 (and d!389955 d!389639)))

(assert (=> bs!335312 (not (= lambda!57951 lambda!57923))))

(declare-fun bs!335313 () Bool)

(assert (= bs!335313 (and d!389955 d!389641)))

(assert (=> bs!335313 (not (= lambda!57951 lambda!57926))))

(assert (=> d!389955 true))

(declare-fun lt!453926 () Bool)

(assert (=> d!389955 (= lt!453926 (rulesValidInductive!766 thiss!19762 rules!2550))))

(assert (=> d!389955 (= lt!453926 (forall!3390 rules!2550 lambda!57951))))

(assert (=> d!389955 (= (rulesValid!893 thiss!19762 rules!2550) lt!453926)))

(declare-fun bs!335314 () Bool)

(assert (= bs!335314 d!389955))

(assert (=> bs!335314 m!1536389))

(declare-fun m!1537379 () Bool)

(assert (=> bs!335314 m!1537379))

(assert (=> d!389705 d!389955))

(declare-fun b!1368264 () Bool)

(declare-fun e!874813 () List!13928)

(assert (=> b!1368264 (= e!874813 (Cons!13862 (h!19263 lt!453466) (++!3578 (t!121279 lt!453466) lt!453563)))))

(declare-fun lt!453927 () List!13928)

(declare-fun b!1368266 () Bool)

(declare-fun e!874812 () Bool)

(assert (=> b!1368266 (= e!874812 (or (not (= lt!453563 Nil!13862)) (= lt!453927 lt!453466)))))

(declare-fun b!1368263 () Bool)

(assert (=> b!1368263 (= e!874813 lt!453563)))

(declare-fun b!1368265 () Bool)

(declare-fun res!616303 () Bool)

(assert (=> b!1368265 (=> (not res!616303) (not e!874812))))

(assert (=> b!1368265 (= res!616303 (= (size!11363 lt!453927) (+ (size!11363 lt!453466) (size!11363 lt!453563))))))

(declare-fun d!389957 () Bool)

(assert (=> d!389957 e!874812))

(declare-fun res!616304 () Bool)

(assert (=> d!389957 (=> (not res!616304) (not e!874812))))

(assert (=> d!389957 (= res!616304 (= (content!2019 lt!453927) ((_ map or) (content!2019 lt!453466) (content!2019 lt!453563))))))

(assert (=> d!389957 (= lt!453927 e!874813)))

(declare-fun c!225069 () Bool)

(assert (=> d!389957 (= c!225069 ((_ is Nil!13862) lt!453466))))

(assert (=> d!389957 (= (++!3578 lt!453466 lt!453563) lt!453927)))

(assert (= (and d!389957 c!225069) b!1368263))

(assert (= (and d!389957 (not c!225069)) b!1368264))

(assert (= (and d!389957 res!616304) b!1368265))

(assert (= (and b!1368265 res!616303) b!1368266))

(declare-fun m!1537381 () Bool)

(assert (=> b!1368264 m!1537381))

(declare-fun m!1537383 () Bool)

(assert (=> b!1368265 m!1537383))

(assert (=> b!1368265 m!1536213))

(declare-fun m!1537385 () Bool)

(assert (=> b!1368265 m!1537385))

(declare-fun m!1537387 () Bool)

(assert (=> d!389957 m!1537387))

(assert (=> d!389957 m!1536219))

(declare-fun m!1537389 () Bool)

(assert (=> d!389957 m!1537389))

(assert (=> d!389553 d!389957))

(declare-fun d!389959 () Bool)

(declare-fun lt!453928 () Int)

(assert (=> d!389959 (>= lt!453928 0)))

(declare-fun e!874814 () Int)

(assert (=> d!389959 (= lt!453928 e!874814)))

(declare-fun c!225070 () Bool)

(assert (=> d!389959 (= c!225070 ((_ is Nil!13862) lt!453465))))

(assert (=> d!389959 (= (size!11363 lt!453465) lt!453928)))

(declare-fun b!1368267 () Bool)

(assert (=> b!1368267 (= e!874814 0)))

(declare-fun b!1368268 () Bool)

(assert (=> b!1368268 (= e!874814 (+ 1 (size!11363 (t!121279 lt!453465))))))

(assert (= (and d!389959 c!225070) b!1368267))

(assert (= (and d!389959 (not c!225070)) b!1368268))

(declare-fun m!1537391 () Bool)

(assert (=> b!1368268 m!1537391))

(assert (=> d!389553 d!389959))

(declare-fun d!389961 () Bool)

(declare-fun lt!453929 () Int)

(assert (=> d!389961 (>= lt!453929 0)))

(declare-fun e!874815 () Int)

(assert (=> d!389961 (= lt!453929 e!874815)))

(declare-fun c!225071 () Bool)

(assert (=> d!389961 (= c!225071 ((_ is Nil!13862) lt!453466))))

(assert (=> d!389961 (= (size!11363 lt!453466) lt!453929)))

(declare-fun b!1368269 () Bool)

(assert (=> b!1368269 (= e!874815 0)))

(declare-fun b!1368270 () Bool)

(assert (=> b!1368270 (= e!874815 (+ 1 (size!11363 (t!121279 lt!453466))))))

(assert (= (and d!389961 c!225071) b!1368269))

(assert (= (and d!389961 (not c!225071)) b!1368270))

(declare-fun m!1537393 () Bool)

(assert (=> b!1368270 m!1537393))

(assert (=> d!389553 d!389961))

(declare-fun d!389963 () Bool)

(assert (=> d!389963 (= (isEmpty!8341 (list!5330 (_2!7614 lt!453471))) ((_ is Nil!13862) (list!5330 (_2!7614 lt!453471))))))

(assert (=> d!389717 d!389963))

(declare-fun d!389965 () Bool)

(assert (=> d!389965 (= (list!5330 (_2!7614 lt!453471)) (list!5333 (c!224866 (_2!7614 lt!453471))))))

(declare-fun bs!335315 () Bool)

(assert (= bs!335315 d!389965))

(declare-fun m!1537395 () Bool)

(assert (=> bs!335315 m!1537395))

(assert (=> d!389717 d!389965))

(declare-fun d!389967 () Bool)

(declare-fun lt!453932 () Bool)

(assert (=> d!389967 (= lt!453932 (isEmpty!8341 (list!5333 (c!224866 (_2!7614 lt!453471)))))))

(assert (=> d!389967 (= lt!453932 (= (size!11364 (c!224866 (_2!7614 lt!453471))) 0))))

(assert (=> d!389967 (= (isEmpty!8344 (c!224866 (_2!7614 lt!453471))) lt!453932)))

(declare-fun bs!335316 () Bool)

(assert (= bs!335316 d!389967))

(assert (=> bs!335316 m!1537395))

(assert (=> bs!335316 m!1537395))

(declare-fun m!1537397 () Bool)

(assert (=> bs!335316 m!1537397))

(declare-fun m!1537399 () Bool)

(assert (=> bs!335316 m!1537399))

(assert (=> d!389717 d!389967))

(declare-fun d!389969 () Bool)

(declare-fun lt!453933 () Int)

(assert (=> d!389969 (>= lt!453933 0)))

(declare-fun e!874816 () Int)

(assert (=> d!389969 (= lt!453933 e!874816)))

(declare-fun c!225072 () Bool)

(assert (=> d!389969 (= c!225072 ((_ is Nil!13862) lt!453560))))

(assert (=> d!389969 (= (size!11363 lt!453560) lt!453933)))

(declare-fun b!1368271 () Bool)

(assert (=> b!1368271 (= e!874816 0)))

(declare-fun b!1368272 () Bool)

(assert (=> b!1368272 (= e!874816 (+ 1 (size!11363 (t!121279 lt!453560))))))

(assert (= (and d!389969 c!225072) b!1368271))

(assert (= (and d!389969 (not c!225072)) b!1368272))

(declare-fun m!1537401 () Bool)

(assert (=> b!1368272 m!1537401))

(assert (=> b!1367464 d!389969))

(assert (=> b!1367464 d!389961))

(declare-fun d!389971 () Bool)

(declare-fun lt!453934 () Int)

(assert (=> d!389971 (>= lt!453934 0)))

(declare-fun e!874817 () Int)

(assert (=> d!389971 (= lt!453934 e!874817)))

(declare-fun c!225073 () Bool)

(assert (=> d!389971 (= c!225073 ((_ is Nil!13862) (getSuffix!563 lt!453465 lt!453466)))))

(assert (=> d!389971 (= (size!11363 (getSuffix!563 lt!453465 lt!453466)) lt!453934)))

(declare-fun b!1368273 () Bool)

(assert (=> b!1368273 (= e!874817 0)))

(declare-fun b!1368274 () Bool)

(assert (=> b!1368274 (= e!874817 (+ 1 (size!11363 (t!121279 (getSuffix!563 lt!453465 lt!453466)))))))

(assert (= (and d!389971 c!225073) b!1368273))

(assert (= (and d!389971 (not c!225073)) b!1368274))

(declare-fun m!1537403 () Bool)

(assert (=> b!1368274 m!1537403))

(assert (=> b!1367464 d!389971))

(declare-fun b!1368275 () Bool)

(declare-fun e!874819 () Bool)

(declare-fun e!874821 () Bool)

(assert (=> b!1368275 (= e!874819 e!874821)))

(declare-fun res!616311 () Bool)

(assert (=> b!1368275 (=> res!616311 e!874821)))

(declare-fun call!91985 () Bool)

(assert (=> b!1368275 (= res!616311 call!91985)))

(declare-fun d!389973 () Bool)

(declare-fun e!874823 () Bool)

(assert (=> d!389973 e!874823))

(declare-fun c!225074 () Bool)

(assert (=> d!389973 (= c!225074 ((_ is EmptyExpr!3715) (derivativeStep!953 lt!453462 (head!2454 lt!453465))))))

(declare-fun lt!453935 () Bool)

(declare-fun e!874824 () Bool)

(assert (=> d!389973 (= lt!453935 e!874824)))

(declare-fun c!225075 () Bool)

(assert (=> d!389973 (= c!225075 (isEmpty!8341 (tail!1974 lt!453465)))))

(assert (=> d!389973 (validRegex!1615 (derivativeStep!953 lt!453462 (head!2454 lt!453465)))))

(assert (=> d!389973 (= (matchR!1708 (derivativeStep!953 lt!453462 (head!2454 lt!453465)) (tail!1974 lt!453465)) lt!453935)))

(declare-fun b!1368276 () Bool)

(assert (=> b!1368276 (= e!874823 (= lt!453935 call!91985))))

(declare-fun b!1368277 () Bool)

(assert (=> b!1368277 (= e!874824 (matchR!1708 (derivativeStep!953 (derivativeStep!953 lt!453462 (head!2454 lt!453465)) (head!2454 (tail!1974 lt!453465))) (tail!1974 (tail!1974 lt!453465))))))

(declare-fun b!1368278 () Bool)

(declare-fun e!874820 () Bool)

(assert (=> b!1368278 (= e!874820 (not lt!453935))))

(declare-fun b!1368279 () Bool)

(assert (=> b!1368279 (= e!874823 e!874820)))

(declare-fun c!225076 () Bool)

(assert (=> b!1368279 (= c!225076 ((_ is EmptyLang!3715) (derivativeStep!953 lt!453462 (head!2454 lt!453465))))))

(declare-fun b!1368280 () Bool)

(declare-fun res!616305 () Bool)

(declare-fun e!874818 () Bool)

(assert (=> b!1368280 (=> res!616305 e!874818)))

(assert (=> b!1368280 (= res!616305 (not ((_ is ElementMatch!3715) (derivativeStep!953 lt!453462 (head!2454 lt!453465)))))))

(assert (=> b!1368280 (= e!874820 e!874818)))

(declare-fun b!1368281 () Bool)

(assert (=> b!1368281 (= e!874821 (not (= (head!2454 (tail!1974 lt!453465)) (c!224867 (derivativeStep!953 lt!453462 (head!2454 lt!453465))))))))

(declare-fun b!1368282 () Bool)

(assert (=> b!1368282 (= e!874818 e!874819)))

(declare-fun res!616306 () Bool)

(assert (=> b!1368282 (=> (not res!616306) (not e!874819))))

(assert (=> b!1368282 (= res!616306 (not lt!453935))))

(declare-fun b!1368283 () Bool)

(declare-fun e!874822 () Bool)

(assert (=> b!1368283 (= e!874822 (= (head!2454 (tail!1974 lt!453465)) (c!224867 (derivativeStep!953 lt!453462 (head!2454 lt!453465)))))))

(declare-fun b!1368284 () Bool)

(declare-fun res!616308 () Bool)

(assert (=> b!1368284 (=> (not res!616308) (not e!874822))))

(assert (=> b!1368284 (= res!616308 (not call!91985))))

(declare-fun bm!91980 () Bool)

(assert (=> bm!91980 (= call!91985 (isEmpty!8341 (tail!1974 lt!453465)))))

(declare-fun b!1368285 () Bool)

(declare-fun res!616307 () Bool)

(assert (=> b!1368285 (=> res!616307 e!874818)))

(assert (=> b!1368285 (= res!616307 e!874822)))

(declare-fun res!616309 () Bool)

(assert (=> b!1368285 (=> (not res!616309) (not e!874822))))

(assert (=> b!1368285 (= res!616309 lt!453935)))

(declare-fun b!1368286 () Bool)

(declare-fun res!616310 () Bool)

(assert (=> b!1368286 (=> (not res!616310) (not e!874822))))

(assert (=> b!1368286 (= res!616310 (isEmpty!8341 (tail!1974 (tail!1974 lt!453465))))))

(declare-fun b!1368287 () Bool)

(declare-fun res!616312 () Bool)

(assert (=> b!1368287 (=> res!616312 e!874821)))

(assert (=> b!1368287 (= res!616312 (not (isEmpty!8341 (tail!1974 (tail!1974 lt!453465)))))))

(declare-fun b!1368288 () Bool)

(assert (=> b!1368288 (= e!874824 (nullable!1195 (derivativeStep!953 lt!453462 (head!2454 lt!453465))))))

(assert (= (and d!389973 c!225075) b!1368288))

(assert (= (and d!389973 (not c!225075)) b!1368277))

(assert (= (and d!389973 c!225074) b!1368276))

(assert (= (and d!389973 (not c!225074)) b!1368279))

(assert (= (and b!1368279 c!225076) b!1368278))

(assert (= (and b!1368279 (not c!225076)) b!1368280))

(assert (= (and b!1368280 (not res!616305)) b!1368285))

(assert (= (and b!1368285 res!616309) b!1368284))

(assert (= (and b!1368284 res!616308) b!1368286))

(assert (= (and b!1368286 res!616310) b!1368283))

(assert (= (and b!1368285 (not res!616307)) b!1368282))

(assert (= (and b!1368282 res!616306) b!1368275))

(assert (= (and b!1368275 (not res!616311)) b!1368287))

(assert (= (and b!1368287 (not res!616312)) b!1368281))

(assert (= (or b!1368276 b!1368275 b!1368284) bm!91980))

(assert (=> d!389973 m!1536227))

(assert (=> d!389973 m!1536645))

(assert (=> d!389973 m!1536651))

(declare-fun m!1537405 () Bool)

(assert (=> d!389973 m!1537405))

(assert (=> b!1368287 m!1536227))

(declare-fun m!1537407 () Bool)

(assert (=> b!1368287 m!1537407))

(assert (=> b!1368287 m!1537407))

(declare-fun m!1537409 () Bool)

(assert (=> b!1368287 m!1537409))

(assert (=> b!1368288 m!1536651))

(declare-fun m!1537411 () Bool)

(assert (=> b!1368288 m!1537411))

(assert (=> b!1368281 m!1536227))

(declare-fun m!1537413 () Bool)

(assert (=> b!1368281 m!1537413))

(assert (=> bm!91980 m!1536227))

(assert (=> bm!91980 m!1536645))

(assert (=> b!1368286 m!1536227))

(assert (=> b!1368286 m!1537407))

(assert (=> b!1368286 m!1537407))

(assert (=> b!1368286 m!1537409))

(assert (=> b!1368283 m!1536227))

(assert (=> b!1368283 m!1537413))

(assert (=> b!1368277 m!1536227))

(assert (=> b!1368277 m!1537413))

(assert (=> b!1368277 m!1536651))

(assert (=> b!1368277 m!1537413))

(declare-fun m!1537415 () Bool)

(assert (=> b!1368277 m!1537415))

(assert (=> b!1368277 m!1536227))

(assert (=> b!1368277 m!1537407))

(assert (=> b!1368277 m!1537415))

(assert (=> b!1368277 m!1537407))

(declare-fun m!1537417 () Bool)

(assert (=> b!1368277 m!1537417))

(assert (=> b!1367809 d!389973))

(declare-fun d!389975 () Bool)

(declare-fun lt!453972 () Regex!3715)

(assert (=> d!389975 (validRegex!1615 lt!453972)))

(declare-fun e!874843 () Regex!3715)

(assert (=> d!389975 (= lt!453972 e!874843)))

(declare-fun c!225093 () Bool)

(assert (=> d!389975 (= c!225093 (or ((_ is EmptyExpr!3715) lt!453462) ((_ is EmptyLang!3715) lt!453462)))))

(assert (=> d!389975 (validRegex!1615 lt!453462)))

(assert (=> d!389975 (= (derivativeStep!953 lt!453462 (head!2454 lt!453465)) lt!453972)))

(declare-fun b!1368322 () Bool)

(declare-fun e!874845 () Regex!3715)

(declare-fun call!91994 () Regex!3715)

(assert (=> b!1368322 (= e!874845 (Union!3715 (Concat!6207 call!91994 (regTwo!7942 lt!453462)) EmptyLang!3715))))

(declare-fun b!1368323 () Bool)

(declare-fun c!225097 () Bool)

(assert (=> b!1368323 (= c!225097 ((_ is Union!3715) lt!453462))))

(declare-fun e!874842 () Regex!3715)

(declare-fun e!874844 () Regex!3715)

(assert (=> b!1368323 (= e!874842 e!874844)))

(declare-fun b!1368324 () Bool)

(declare-fun e!874846 () Regex!3715)

(declare-fun call!91995 () Regex!3715)

(assert (=> b!1368324 (= e!874846 (Concat!6207 call!91995 lt!453462))))

(declare-fun b!1368325 () Bool)

(declare-fun call!91996 () Regex!3715)

(declare-fun call!91997 () Regex!3715)

(assert (=> b!1368325 (= e!874844 (Union!3715 call!91996 call!91997))))

(declare-fun bm!91989 () Bool)

(assert (=> bm!91989 (= call!91996 (derivativeStep!953 (ite c!225097 (regOne!7943 lt!453462) (regOne!7942 lt!453462)) (head!2454 lt!453465)))))

(declare-fun b!1368326 () Bool)

(declare-fun c!225095 () Bool)

(assert (=> b!1368326 (= c!225095 (nullable!1195 (regOne!7942 lt!453462)))))

(assert (=> b!1368326 (= e!874846 e!874845)))

(declare-fun b!1368327 () Bool)

(assert (=> b!1368327 (= e!874844 e!874846)))

(declare-fun c!225094 () Bool)

(assert (=> b!1368327 (= c!225094 ((_ is Star!3715) lt!453462))))

(declare-fun bm!91990 () Bool)

(assert (=> bm!91990 (= call!91997 (derivativeStep!953 (ite c!225097 (regTwo!7943 lt!453462) (ite c!225094 (reg!4044 lt!453462) (ite c!225095 (regTwo!7942 lt!453462) (regOne!7942 lt!453462)))) (head!2454 lt!453465)))))

(declare-fun b!1368328 () Bool)

(assert (=> b!1368328 (= e!874842 (ite (= (head!2454 lt!453465) (c!224867 lt!453462)) EmptyExpr!3715 EmptyLang!3715))))

(declare-fun bm!91991 () Bool)

(assert (=> bm!91991 (= call!91994 call!91995)))

(declare-fun b!1368329 () Bool)

(assert (=> b!1368329 (= e!874843 EmptyLang!3715)))

(declare-fun bm!91992 () Bool)

(assert (=> bm!91992 (= call!91995 call!91997)))

(declare-fun b!1368330 () Bool)

(assert (=> b!1368330 (= e!874843 e!874842)))

(declare-fun c!225096 () Bool)

(assert (=> b!1368330 (= c!225096 ((_ is ElementMatch!3715) lt!453462))))

(declare-fun b!1368331 () Bool)

(assert (=> b!1368331 (= e!874845 (Union!3715 (Concat!6207 call!91996 (regTwo!7942 lt!453462)) call!91994))))

(assert (= (and d!389975 c!225093) b!1368329))

(assert (= (and d!389975 (not c!225093)) b!1368330))

(assert (= (and b!1368330 c!225096) b!1368328))

(assert (= (and b!1368330 (not c!225096)) b!1368323))

(assert (= (and b!1368323 c!225097) b!1368325))

(assert (= (and b!1368323 (not c!225097)) b!1368327))

(assert (= (and b!1368327 c!225094) b!1368324))

(assert (= (and b!1368327 (not c!225094)) b!1368326))

(assert (= (and b!1368326 c!225095) b!1368331))

(assert (= (and b!1368326 (not c!225095)) b!1368322))

(assert (= (or b!1368331 b!1368322) bm!91991))

(assert (= (or b!1368324 bm!91991) bm!91992))

(assert (= (or b!1368325 b!1368331) bm!91989))

(assert (= (or b!1368325 bm!91992) bm!91990))

(declare-fun m!1537521 () Bool)

(assert (=> d!389975 m!1537521))

(assert (=> d!389975 m!1536643))

(assert (=> bm!91989 m!1536649))

(declare-fun m!1537523 () Bool)

(assert (=> bm!91989 m!1537523))

(declare-fun m!1537525 () Bool)

(assert (=> b!1368326 m!1537525))

(assert (=> bm!91990 m!1536649))

(declare-fun m!1537527 () Bool)

(assert (=> bm!91990 m!1537527))

(assert (=> b!1367809 d!389975))

(declare-fun d!389985 () Bool)

(assert (=> d!389985 (= (head!2454 lt!453465) (h!19263 lt!453465))))

(assert (=> b!1367809 d!389985))

(declare-fun d!389987 () Bool)

(assert (=> d!389987 (= (tail!1974 lt!453465) (t!121279 lt!453465))))

(assert (=> b!1367809 d!389987))

(assert (=> b!1367813 d!389985))

(declare-fun d!389989 () Bool)

(assert (=> d!389989 (= (isEmpty!8345 lt!453705) (not ((_ is Some!2661) lt!453705)))))

(assert (=> d!389703 d!389989))

(declare-fun b!1368343 () Bool)

(declare-fun e!874853 () Bool)

(assert (=> b!1368343 (= e!874853 (>= (size!11363 lt!453458) (size!11363 lt!453458)))))

(declare-fun b!1368340 () Bool)

(declare-fun e!874854 () Bool)

(declare-fun e!874855 () Bool)

(assert (=> b!1368340 (= e!874854 e!874855)))

(declare-fun res!616325 () Bool)

(assert (=> b!1368340 (=> (not res!616325) (not e!874855))))

(assert (=> b!1368340 (= res!616325 (not ((_ is Nil!13862) lt!453458)))))

(declare-fun b!1368342 () Bool)

(assert (=> b!1368342 (= e!874855 (isPrefix!1125 (tail!1974 lt!453458) (tail!1974 lt!453458)))))

(declare-fun d!389991 () Bool)

(assert (=> d!389991 e!874853))

(declare-fun res!616324 () Bool)

(assert (=> d!389991 (=> res!616324 e!874853)))

(declare-fun lt!453975 () Bool)

(assert (=> d!389991 (= res!616324 (not lt!453975))))

(assert (=> d!389991 (= lt!453975 e!874854)))

(declare-fun res!616323 () Bool)

(assert (=> d!389991 (=> res!616323 e!874854)))

(assert (=> d!389991 (= res!616323 ((_ is Nil!13862) lt!453458))))

(assert (=> d!389991 (= (isPrefix!1125 lt!453458 lt!453458) lt!453975)))

(declare-fun b!1368341 () Bool)

(declare-fun res!616322 () Bool)

(assert (=> b!1368341 (=> (not res!616322) (not e!874855))))

(assert (=> b!1368341 (= res!616322 (= (head!2454 lt!453458) (head!2454 lt!453458)))))

(assert (= (and d!389991 (not res!616323)) b!1368340))

(assert (= (and b!1368340 res!616325) b!1368341))

(assert (= (and b!1368341 res!616322) b!1368342))

(assert (= (and d!389991 (not res!616324)) b!1368343))

(assert (=> b!1368343 m!1536057))

(assert (=> b!1368343 m!1536057))

(declare-fun m!1537529 () Bool)

(assert (=> b!1368342 m!1537529))

(assert (=> b!1368342 m!1537529))

(assert (=> b!1368342 m!1537529))

(assert (=> b!1368342 m!1537529))

(declare-fun m!1537531 () Bool)

(assert (=> b!1368342 m!1537531))

(declare-fun m!1537533 () Bool)

(assert (=> b!1368341 m!1537533))

(assert (=> b!1368341 m!1537533))

(assert (=> d!389703 d!389991))

(declare-fun d!389993 () Bool)

(assert (=> d!389993 (isPrefix!1125 lt!453458 lt!453458)))

(declare-fun lt!453978 () Unit!20071)

(declare-fun choose!8421 (List!13928 List!13928) Unit!20071)

(assert (=> d!389993 (= lt!453978 (choose!8421 lt!453458 lt!453458))))

(assert (=> d!389993 (= (lemmaIsPrefixRefl!787 lt!453458 lt!453458) lt!453978)))

(declare-fun bs!335319 () Bool)

(assert (= bs!335319 d!389993))

(assert (=> bs!335319 m!1536715))

(declare-fun m!1537535 () Bool)

(assert (=> bs!335319 m!1537535))

(assert (=> d!389703 d!389993))

(declare-fun bs!335320 () Bool)

(declare-fun d!389995 () Bool)

(assert (= bs!335320 (and d!389995 b!1367240)))

(declare-fun lambda!57954 () Int)

(assert (=> bs!335320 (not (= lambda!57954 lambda!57885))))

(declare-fun bs!335321 () Bool)

(assert (= bs!335321 (and d!389995 d!389639)))

(assert (=> bs!335321 (not (= lambda!57954 lambda!57923))))

(declare-fun bs!335322 () Bool)

(assert (= bs!335322 (and d!389995 d!389641)))

(assert (=> bs!335322 (not (= lambda!57954 lambda!57926))))

(declare-fun bs!335323 () Bool)

(assert (= bs!335323 (and d!389995 d!389955)))

(assert (=> bs!335323 (= lambda!57954 lambda!57951)))

(assert (=> d!389995 true))

(declare-fun lt!453981 () Bool)

(assert (=> d!389995 (= lt!453981 (forall!3390 rules!2550 lambda!57954))))

(declare-fun e!874860 () Bool)

(assert (=> d!389995 (= lt!453981 e!874860)))

(declare-fun res!616331 () Bool)

(assert (=> d!389995 (=> res!616331 e!874860)))

(assert (=> d!389995 (= res!616331 (not ((_ is Cons!13864) rules!2550)))))

(assert (=> d!389995 (= (rulesValidInductive!766 thiss!19762 rules!2550) lt!453981)))

(declare-fun b!1368348 () Bool)

(declare-fun e!874861 () Bool)

(assert (=> b!1368348 (= e!874860 e!874861)))

(declare-fun res!616330 () Bool)

(assert (=> b!1368348 (=> (not res!616330) (not e!874861))))

(declare-fun ruleValid!590 (LexerInterface!2096 Rule!4602) Bool)

(assert (=> b!1368348 (= res!616330 (ruleValid!590 thiss!19762 (h!19265 rules!2550)))))

(declare-fun b!1368349 () Bool)

(assert (=> b!1368349 (= e!874861 (rulesValidInductive!766 thiss!19762 (t!121281 rules!2550)))))

(assert (= (and d!389995 (not res!616331)) b!1368348))

(assert (= (and b!1368348 res!616330) b!1368349))

(declare-fun m!1537537 () Bool)

(assert (=> d!389995 m!1537537))

(declare-fun m!1537539 () Bool)

(assert (=> b!1368348 m!1537539))

(assert (=> b!1368349 m!1537261))

(assert (=> d!389703 d!389995))

(assert (=> d!389563 d!389931))

(declare-fun b!1368368 () Bool)

(declare-fun res!616351 () Bool)

(declare-fun e!874871 () Bool)

(assert (=> b!1368368 (=> (not res!616351) (not e!874871))))

(assert (=> b!1368368 (= res!616351 (isBalanced!1339 (right!12197 (c!224868 lt!453710))))))

(declare-fun b!1368369 () Bool)

(declare-fun res!616350 () Bool)

(assert (=> b!1368369 (=> (not res!616350) (not e!874871))))

(declare-fun height!663 (Conc!4565) Int)

(assert (=> b!1368369 (= res!616350 (<= (- (height!663 (left!11867 (c!224868 lt!453710))) (height!663 (right!12197 (c!224868 lt!453710)))) 1))))

(declare-fun b!1368370 () Bool)

(declare-fun res!616349 () Bool)

(assert (=> b!1368370 (=> (not res!616349) (not e!874871))))

(assert (=> b!1368370 (= res!616349 (isBalanced!1339 (left!11867 (c!224868 lt!453710))))))

(declare-fun b!1368371 () Bool)

(declare-fun res!616346 () Bool)

(assert (=> b!1368371 (=> (not res!616346) (not e!874871))))

(assert (=> b!1368371 (= res!616346 (not (isEmpty!8351 (left!11867 (c!224868 lt!453710)))))))

(declare-fun b!1368372 () Bool)

(declare-fun e!874870 () Bool)

(assert (=> b!1368372 (= e!874870 e!874871)))

(declare-fun res!616348 () Bool)

(assert (=> b!1368372 (=> (not res!616348) (not e!874871))))

(assert (=> b!1368372 (= res!616348 (<= (- 1) (- (height!663 (left!11867 (c!224868 lt!453710))) (height!663 (right!12197 (c!224868 lt!453710))))))))

(declare-fun b!1368373 () Bool)

(assert (=> b!1368373 (= e!874871 (not (isEmpty!8351 (right!12197 (c!224868 lt!453710)))))))

(declare-fun d!389997 () Bool)

(declare-fun res!616347 () Bool)

(assert (=> d!389997 (=> res!616347 e!874870)))

(assert (=> d!389997 (= res!616347 (not ((_ is Node!4565) (c!224868 lt!453710))))))

(assert (=> d!389997 (= (isBalanced!1339 (c!224868 lt!453710)) e!874870)))

(assert (= (and d!389997 (not res!616347)) b!1368372))

(assert (= (and b!1368372 res!616348) b!1368369))

(assert (= (and b!1368369 res!616350) b!1368370))

(assert (= (and b!1368370 res!616349) b!1368368))

(assert (= (and b!1368368 res!616351) b!1368371))

(assert (= (and b!1368371 res!616346) b!1368373))

(declare-fun m!1537541 () Bool)

(assert (=> b!1368368 m!1537541))

(declare-fun m!1537543 () Bool)

(assert (=> b!1368372 m!1537543))

(declare-fun m!1537545 () Bool)

(assert (=> b!1368372 m!1537545))

(declare-fun m!1537547 () Bool)

(assert (=> b!1368373 m!1537547))

(assert (=> b!1368369 m!1537543))

(assert (=> b!1368369 m!1537545))

(declare-fun m!1537549 () Bool)

(assert (=> b!1368371 m!1537549))

(declare-fun m!1537551 () Bool)

(assert (=> b!1368370 m!1537551))

(assert (=> b!1367871 d!389997))

(assert (=> b!1367593 d!389913))

(assert (=> b!1367593 d!389915))

(assert (=> b!1367593 d!389917))

(declare-fun d!389999 () Bool)

(declare-fun c!225101 () Bool)

(assert (=> d!389999 (= c!225101 ((_ is Nil!13862) lt!453465))))

(declare-fun e!874874 () (InoxSet C!7720))

(assert (=> d!389999 (= (content!2019 lt!453465) e!874874)))

(declare-fun b!1368377 () Bool)

(assert (=> b!1368377 (= e!874874 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1368378 () Bool)

(assert (=> b!1368378 (= e!874874 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 lt!453465) true) (content!2019 (t!121279 lt!453465))))))

(assert (= (and d!389999 c!225101) b!1368377))

(assert (= (and d!389999 (not c!225101)) b!1368378))

(declare-fun m!1537553 () Bool)

(assert (=> b!1368378 m!1537553))

(declare-fun m!1537555 () Bool)

(assert (=> b!1368378 m!1537555))

(assert (=> d!389689 d!389999))

(declare-fun d!390001 () Bool)

(declare-fun c!225102 () Bool)

(assert (=> d!390001 (= c!225102 (isEmpty!8341 (tail!1974 lt!453466)))))

(declare-fun e!874875 () Bool)

(assert (=> d!390001 (= (prefixMatch!224 (derivativeStep!953 lt!453462 (head!2454 lt!453466)) (tail!1974 lt!453466)) e!874875)))

(declare-fun b!1368379 () Bool)

(assert (=> b!1368379 (= e!874875 (not (lostCause!329 (derivativeStep!953 lt!453462 (head!2454 lt!453466)))))))

(declare-fun b!1368380 () Bool)

(assert (=> b!1368380 (= e!874875 (prefixMatch!224 (derivativeStep!953 (derivativeStep!953 lt!453462 (head!2454 lt!453466)) (head!2454 (tail!1974 lt!453466))) (tail!1974 (tail!1974 lt!453466))))))

(assert (= (and d!390001 c!225102) b!1368379))

(assert (= (and d!390001 (not c!225102)) b!1368380))

(assert (=> d!390001 m!1536037))

(declare-fun m!1537571 () Bool)

(assert (=> d!390001 m!1537571))

(assert (=> b!1368379 m!1536035))

(declare-fun m!1537575 () Bool)

(assert (=> b!1368379 m!1537575))

(assert (=> b!1368380 m!1536037))

(declare-fun m!1537577 () Bool)

(assert (=> b!1368380 m!1537577))

(assert (=> b!1368380 m!1536035))

(assert (=> b!1368380 m!1537577))

(declare-fun m!1537581 () Bool)

(assert (=> b!1368380 m!1537581))

(assert (=> b!1368380 m!1536037))

(declare-fun m!1537585 () Bool)

(assert (=> b!1368380 m!1537585))

(assert (=> b!1368380 m!1537581))

(assert (=> b!1368380 m!1537585))

(declare-fun m!1537591 () Bool)

(assert (=> b!1368380 m!1537591))

(assert (=> b!1367355 d!390001))

(declare-fun d!390003 () Bool)

(declare-fun lt!454003 () Regex!3715)

(assert (=> d!390003 (validRegex!1615 lt!454003)))

(declare-fun e!874877 () Regex!3715)

(assert (=> d!390003 (= lt!454003 e!874877)))

(declare-fun c!225103 () Bool)

(assert (=> d!390003 (= c!225103 (or ((_ is EmptyExpr!3715) lt!453462) ((_ is EmptyLang!3715) lt!453462)))))

(assert (=> d!390003 (validRegex!1615 lt!453462)))

(assert (=> d!390003 (= (derivativeStep!953 lt!453462 (head!2454 lt!453466)) lt!454003)))

(declare-fun b!1368381 () Bool)

(declare-fun e!874879 () Regex!3715)

(declare-fun call!91998 () Regex!3715)

(assert (=> b!1368381 (= e!874879 (Union!3715 (Concat!6207 call!91998 (regTwo!7942 lt!453462)) EmptyLang!3715))))

(declare-fun b!1368382 () Bool)

(declare-fun c!225107 () Bool)

(assert (=> b!1368382 (= c!225107 ((_ is Union!3715) lt!453462))))

(declare-fun e!874876 () Regex!3715)

(declare-fun e!874878 () Regex!3715)

(assert (=> b!1368382 (= e!874876 e!874878)))

(declare-fun b!1368383 () Bool)

(declare-fun e!874880 () Regex!3715)

(declare-fun call!91999 () Regex!3715)

(assert (=> b!1368383 (= e!874880 (Concat!6207 call!91999 lt!453462))))

(declare-fun b!1368384 () Bool)

(declare-fun call!92000 () Regex!3715)

(declare-fun call!92001 () Regex!3715)

(assert (=> b!1368384 (= e!874878 (Union!3715 call!92000 call!92001))))

(declare-fun bm!91993 () Bool)

(assert (=> bm!91993 (= call!92000 (derivativeStep!953 (ite c!225107 (regOne!7943 lt!453462) (regOne!7942 lt!453462)) (head!2454 lt!453466)))))

(declare-fun b!1368385 () Bool)

(declare-fun c!225105 () Bool)

(assert (=> b!1368385 (= c!225105 (nullable!1195 (regOne!7942 lt!453462)))))

(assert (=> b!1368385 (= e!874880 e!874879)))

(declare-fun b!1368386 () Bool)

(assert (=> b!1368386 (= e!874878 e!874880)))

(declare-fun c!225104 () Bool)

(assert (=> b!1368386 (= c!225104 ((_ is Star!3715) lt!453462))))

(declare-fun bm!91994 () Bool)

(assert (=> bm!91994 (= call!92001 (derivativeStep!953 (ite c!225107 (regTwo!7943 lt!453462) (ite c!225104 (reg!4044 lt!453462) (ite c!225105 (regTwo!7942 lt!453462) (regOne!7942 lt!453462)))) (head!2454 lt!453466)))))

(declare-fun b!1368387 () Bool)

(assert (=> b!1368387 (= e!874876 (ite (= (head!2454 lt!453466) (c!224867 lt!453462)) EmptyExpr!3715 EmptyLang!3715))))

(declare-fun bm!91995 () Bool)

(assert (=> bm!91995 (= call!91998 call!91999)))

(declare-fun b!1368388 () Bool)

(assert (=> b!1368388 (= e!874877 EmptyLang!3715)))

(declare-fun bm!91996 () Bool)

(assert (=> bm!91996 (= call!91999 call!92001)))

(declare-fun b!1368389 () Bool)

(assert (=> b!1368389 (= e!874877 e!874876)))

(declare-fun c!225106 () Bool)

(assert (=> b!1368389 (= c!225106 ((_ is ElementMatch!3715) lt!453462))))

(declare-fun b!1368390 () Bool)

(assert (=> b!1368390 (= e!874879 (Union!3715 (Concat!6207 call!92000 (regTwo!7942 lt!453462)) call!91998))))

(assert (= (and d!390003 c!225103) b!1368388))

(assert (= (and d!390003 (not c!225103)) b!1368389))

(assert (= (and b!1368389 c!225106) b!1368387))

(assert (= (and b!1368389 (not c!225106)) b!1368382))

(assert (= (and b!1368382 c!225107) b!1368384))

(assert (= (and b!1368382 (not c!225107)) b!1368386))

(assert (= (and b!1368386 c!225104) b!1368383))

(assert (= (and b!1368386 (not c!225104)) b!1368385))

(assert (= (and b!1368385 c!225105) b!1368390))

(assert (= (and b!1368385 (not c!225105)) b!1368381))

(assert (= (or b!1368390 b!1368381) bm!91995))

(assert (= (or b!1368383 bm!91995) bm!91996))

(assert (= (or b!1368384 b!1368390) bm!91993))

(assert (= (or b!1368384 bm!91996) bm!91994))

(declare-fun m!1537601 () Bool)

(assert (=> d!390003 m!1537601))

(assert (=> d!390003 m!1536643))

(assert (=> bm!91993 m!1536033))

(declare-fun m!1537603 () Bool)

(assert (=> bm!91993 m!1537603))

(assert (=> b!1368385 m!1537525))

(assert (=> bm!91994 m!1536033))

(declare-fun m!1537607 () Bool)

(assert (=> bm!91994 m!1537607))

(assert (=> b!1367355 d!390003))

(declare-fun d!390009 () Bool)

(assert (=> d!390009 (= (head!2454 lt!453466) (h!19263 lt!453466))))

(assert (=> b!1367355 d!390009))

(declare-fun d!390011 () Bool)

(assert (=> d!390011 (= (tail!1974 lt!453466) (t!121279 lt!453466))))

(assert (=> b!1367355 d!390011))

(declare-fun b!1368391 () Bool)

(declare-fun e!874882 () Bool)

(declare-fun e!874884 () Bool)

(assert (=> b!1368391 (= e!874882 e!874884)))

(declare-fun res!616359 () Bool)

(assert (=> b!1368391 (=> res!616359 e!874884)))

(declare-fun call!92002 () Bool)

(assert (=> b!1368391 (= res!616359 call!92002)))

(declare-fun d!390013 () Bool)

(declare-fun e!874886 () Bool)

(assert (=> d!390013 e!874886))

(declare-fun c!225108 () Bool)

(assert (=> d!390013 (= c!225108 ((_ is EmptyExpr!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun lt!454004 () Bool)

(declare-fun e!874887 () Bool)

(assert (=> d!390013 (= lt!454004 e!874887)))

(declare-fun c!225109 () Bool)

(assert (=> d!390013 (= c!225109 (isEmpty!8341 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))

(assert (=> d!390013 (validRegex!1615 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))))

(assert (=> d!390013 (= (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) lt!454004)))

(declare-fun b!1368392 () Bool)

(assert (=> b!1368392 (= e!874886 (= lt!454004 call!92002))))

(declare-fun b!1368393 () Bool)

(assert (=> b!1368393 (= e!874887 (matchR!1708 (derivativeStep!953 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))) (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))))) (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun b!1368394 () Bool)

(declare-fun e!874883 () Bool)

(assert (=> b!1368394 (= e!874883 (not lt!454004))))

(declare-fun b!1368395 () Bool)

(assert (=> b!1368395 (= e!874886 e!874883)))

(declare-fun c!225110 () Bool)

(assert (=> b!1368395 (= c!225110 ((_ is EmptyLang!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun b!1368396 () Bool)

(declare-fun res!616353 () Bool)

(declare-fun e!874881 () Bool)

(assert (=> b!1368396 (=> res!616353 e!874881)))

(assert (=> b!1368396 (= res!616353 (not ((_ is ElementMatch!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))))))

(assert (=> b!1368396 (= e!874883 e!874881)))

(declare-fun b!1368397 () Bool)

(assert (=> b!1368397 (= e!874884 (not (= (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (c!224867 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))))))))

(declare-fun b!1368398 () Bool)

(assert (=> b!1368398 (= e!874881 e!874882)))

(declare-fun res!616354 () Bool)

(assert (=> b!1368398 (=> (not res!616354) (not e!874882))))

(assert (=> b!1368398 (= res!616354 (not lt!454004))))

(declare-fun b!1368399 () Bool)

(declare-fun e!874885 () Bool)

(assert (=> b!1368399 (= e!874885 (= (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (c!224867 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun b!1368400 () Bool)

(declare-fun res!616356 () Bool)

(assert (=> b!1368400 (=> (not res!616356) (not e!874885))))

(assert (=> b!1368400 (= res!616356 (not call!92002))))

(declare-fun bm!91997 () Bool)

(assert (=> bm!91997 (= call!92002 (isEmpty!8341 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun b!1368401 () Bool)

(declare-fun res!616355 () Bool)

(assert (=> b!1368401 (=> res!616355 e!874881)))

(assert (=> b!1368401 (= res!616355 e!874885)))

(declare-fun res!616357 () Bool)

(assert (=> b!1368401 (=> (not res!616357) (not e!874885))))

(assert (=> b!1368401 (= res!616357 lt!454004)))

(declare-fun b!1368402 () Bool)

(declare-fun res!616358 () Bool)

(assert (=> b!1368402 (=> (not res!616358) (not e!874885))))

(assert (=> b!1368402 (= res!616358 (isEmpty!8341 (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun b!1368403 () Bool)

(declare-fun res!616360 () Bool)

(assert (=> b!1368403 (=> res!616360 e!874884)))

(assert (=> b!1368403 (= res!616360 (not (isEmpty!8341 (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))))

(declare-fun b!1368404 () Bool)

(assert (=> b!1368404 (= e!874887 (nullable!1195 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))))))

(assert (= (and d!390013 c!225109) b!1368404))

(assert (= (and d!390013 (not c!225109)) b!1368393))

(assert (= (and d!390013 c!225108) b!1368392))

(assert (= (and d!390013 (not c!225108)) b!1368395))

(assert (= (and b!1368395 c!225110) b!1368394))

(assert (= (and b!1368395 (not c!225110)) b!1368396))

(assert (= (and b!1368396 (not res!616353)) b!1368401))

(assert (= (and b!1368401 res!616357) b!1368400))

(assert (= (and b!1368400 res!616356) b!1368402))

(assert (= (and b!1368402 res!616358) b!1368399))

(assert (= (and b!1368401 (not res!616355)) b!1368398))

(assert (= (and b!1368398 res!616354) b!1368391))

(assert (= (and b!1368391 (not res!616359)) b!1368403))

(assert (= (and b!1368403 (not res!616360)) b!1368397))

(assert (= (or b!1368392 b!1368391 b!1368400) bm!91997))

(assert (=> d!390013 m!1536701))

(declare-fun m!1537609 () Bool)

(assert (=> d!390013 m!1537609))

(declare-fun m!1537611 () Bool)

(assert (=> d!390013 m!1537611))

(assert (=> b!1368403 m!1536701))

(declare-fun m!1537613 () Bool)

(assert (=> b!1368403 m!1537613))

(assert (=> b!1368403 m!1537613))

(declare-fun m!1537615 () Bool)

(assert (=> b!1368403 m!1537615))

(declare-fun m!1537617 () Bool)

(assert (=> b!1368404 m!1537617))

(assert (=> b!1368397 m!1536701))

(declare-fun m!1537619 () Bool)

(assert (=> b!1368397 m!1537619))

(assert (=> bm!91997 m!1536701))

(assert (=> bm!91997 m!1537609))

(assert (=> b!1368402 m!1536701))

(assert (=> b!1368402 m!1537613))

(assert (=> b!1368402 m!1537613))

(assert (=> b!1368402 m!1537615))

(assert (=> b!1368399 m!1536701))

(assert (=> b!1368399 m!1537619))

(assert (=> b!1368393 m!1536701))

(assert (=> b!1368393 m!1537619))

(assert (=> b!1368393 m!1537619))

(declare-fun m!1537621 () Bool)

(assert (=> b!1368393 m!1537621))

(assert (=> b!1368393 m!1536701))

(assert (=> b!1368393 m!1537613))

(assert (=> b!1368393 m!1537621))

(assert (=> b!1368393 m!1537613))

(declare-fun m!1537623 () Bool)

(assert (=> b!1368393 m!1537623))

(assert (=> b!1367859 d!390013))

(declare-fun d!390015 () Bool)

(assert (=> d!390015 (= (get!4341 lt!453705) (v!21444 lt!453705))))

(assert (=> b!1367859 d!390015))

(declare-fun d!390017 () Bool)

(assert (=> d!390017 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))) (list!5333 (c!224866 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun bs!335329 () Bool)

(assert (= bs!335329 d!390017))

(declare-fun m!1537625 () Bool)

(assert (=> bs!335329 m!1537625))

(assert (=> b!1367859 d!390017))

(declare-fun d!390019 () Bool)

(declare-fun lt!454005 () BalanceConc!9068)

(assert (=> d!390019 (= (list!5330 lt!454005) (originalCharacters!3263 (_1!7615 (get!4341 lt!453705))))))

(assert (=> d!390019 (= lt!454005 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))) (value!78061 (_1!7615 (get!4341 lt!453705)))))))

(assert (=> d!390019 (= (charsOf!1373 (_1!7615 (get!4341 lt!453705))) lt!454005)))

(declare-fun b_lambda!41715 () Bool)

(assert (=> (not b_lambda!41715) (not d!390019)))

(declare-fun t!121364 () Bool)

(declare-fun tb!72113 () Bool)

(assert (=> (and b!1367219 (= (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121364) tb!72113))

(declare-fun b!1368407 () Bool)

(declare-fun e!874890 () Bool)

(declare-fun tp!393397 () Bool)

(assert (=> b!1368407 (= e!874890 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))) (value!78061 (_1!7615 (get!4341 lt!453705)))))) tp!393397))))

(declare-fun result!87560 () Bool)

(assert (=> tb!72113 (= result!87560 (and (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))) (value!78061 (_1!7615 (get!4341 lt!453705))))) e!874890))))

(assert (= tb!72113 b!1368407))

(declare-fun m!1537627 () Bool)

(assert (=> b!1368407 m!1537627))

(declare-fun m!1537629 () Bool)

(assert (=> tb!72113 m!1537629))

(assert (=> d!390019 t!121364))

(declare-fun b_and!91743 () Bool)

(assert (= b_and!91735 (and (=> t!121364 result!87560) b_and!91743)))

(declare-fun t!121366 () Bool)

(declare-fun tb!72115 () Bool)

(assert (=> (and b!1367242 (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121366) tb!72115))

(declare-fun result!87562 () Bool)

(assert (= result!87562 result!87560))

(assert (=> d!390019 t!121366))

(declare-fun b_and!91745 () Bool)

(assert (= b_and!91737 (and (=> t!121366 result!87562) b_and!91745)))

(declare-fun tb!72117 () Bool)

(declare-fun t!121368 () Bool)

(assert (=> (and b!1367212 (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121368) tb!72117))

(declare-fun result!87564 () Bool)

(assert (= result!87564 result!87560))

(assert (=> d!390019 t!121368))

(declare-fun b_and!91747 () Bool)

(assert (= b_and!91739 (and (=> t!121368 result!87564) b_and!91747)))

(declare-fun tb!72119 () Bool)

(declare-fun t!121370 () Bool)

(assert (=> (and b!1367918 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121370) tb!72119))

(declare-fun result!87566 () Bool)

(assert (= result!87566 result!87560))

(assert (=> d!390019 t!121370))

(declare-fun b_and!91749 () Bool)

(assert (= b_and!91741 (and (=> t!121370 result!87566) b_and!91749)))

(declare-fun m!1537631 () Bool)

(assert (=> d!390019 m!1537631))

(declare-fun m!1537633 () Bool)

(assert (=> d!390019 m!1537633))

(assert (=> b!1367859 d!390019))

(declare-fun b!1368408 () Bool)

(declare-fun res!616368 () Bool)

(declare-fun e!874892 () Bool)

(assert (=> b!1368408 (=> (not res!616368) (not e!874892))))

(assert (=> b!1368408 (= res!616368 (isBalanced!1339 (right!12197 (c!224868 lt!453674))))))

(declare-fun b!1368409 () Bool)

(declare-fun res!616367 () Bool)

(assert (=> b!1368409 (=> (not res!616367) (not e!874892))))

(assert (=> b!1368409 (= res!616367 (<= (- (height!663 (left!11867 (c!224868 lt!453674))) (height!663 (right!12197 (c!224868 lt!453674)))) 1))))

(declare-fun b!1368410 () Bool)

(declare-fun res!616366 () Bool)

(assert (=> b!1368410 (=> (not res!616366) (not e!874892))))

(assert (=> b!1368410 (= res!616366 (isBalanced!1339 (left!11867 (c!224868 lt!453674))))))

(declare-fun b!1368411 () Bool)

(declare-fun res!616363 () Bool)

(assert (=> b!1368411 (=> (not res!616363) (not e!874892))))

(assert (=> b!1368411 (= res!616363 (not (isEmpty!8351 (left!11867 (c!224868 lt!453674)))))))

(declare-fun b!1368412 () Bool)

(declare-fun e!874891 () Bool)

(assert (=> b!1368412 (= e!874891 e!874892)))

(declare-fun res!616365 () Bool)

(assert (=> b!1368412 (=> (not res!616365) (not e!874892))))

(assert (=> b!1368412 (= res!616365 (<= (- 1) (- (height!663 (left!11867 (c!224868 lt!453674))) (height!663 (right!12197 (c!224868 lt!453674))))))))

(declare-fun b!1368413 () Bool)

(assert (=> b!1368413 (= e!874892 (not (isEmpty!8351 (right!12197 (c!224868 lt!453674)))))))

(declare-fun d!390021 () Bool)

(declare-fun res!616364 () Bool)

(assert (=> d!390021 (=> res!616364 e!874891)))

(assert (=> d!390021 (= res!616364 (not ((_ is Node!4565) (c!224868 lt!453674))))))

(assert (=> d!390021 (= (isBalanced!1339 (c!224868 lt!453674)) e!874891)))

(assert (= (and d!390021 (not res!616364)) b!1368412))

(assert (= (and b!1368412 res!616365) b!1368409))

(assert (= (and b!1368409 res!616367) b!1368410))

(assert (= (and b!1368410 res!616366) b!1368408))

(assert (= (and b!1368408 res!616368) b!1368411))

(assert (= (and b!1368411 res!616363) b!1368413))

(declare-fun m!1537635 () Bool)

(assert (=> b!1368408 m!1537635))

(declare-fun m!1537637 () Bool)

(assert (=> b!1368412 m!1537637))

(declare-fun m!1537639 () Bool)

(assert (=> b!1368412 m!1537639))

(declare-fun m!1537641 () Bool)

(assert (=> b!1368413 m!1537641))

(assert (=> b!1368409 m!1537637))

(assert (=> b!1368409 m!1537639))

(declare-fun m!1537643 () Bool)

(assert (=> b!1368411 m!1537643))

(declare-fun m!1537645 () Bool)

(assert (=> b!1368410 m!1537645))

(assert (=> b!1367760 d!390021))

(declare-fun d!390023 () Bool)

(declare-fun lt!454006 () Bool)

(assert (=> d!390023 (= lt!454006 (select (content!2019 (t!121279 lt!453466)) lt!453454))))

(declare-fun e!874893 () Bool)

(assert (=> d!390023 (= lt!454006 e!874893)))

(declare-fun res!616369 () Bool)

(assert (=> d!390023 (=> (not res!616369) (not e!874893))))

(assert (=> d!390023 (= res!616369 ((_ is Cons!13862) (t!121279 lt!453466)))))

(assert (=> d!390023 (= (contains!2585 (t!121279 lt!453466) lt!453454) lt!454006)))

(declare-fun b!1368414 () Bool)

(declare-fun e!874894 () Bool)

(assert (=> b!1368414 (= e!874893 e!874894)))

(declare-fun res!616370 () Bool)

(assert (=> b!1368414 (=> res!616370 e!874894)))

(assert (=> b!1368414 (= res!616370 (= (h!19263 (t!121279 lt!453466)) lt!453454))))

(declare-fun b!1368415 () Bool)

(assert (=> b!1368415 (= e!874894 (contains!2585 (t!121279 (t!121279 lt!453466)) lt!453454))))

(assert (= (and d!390023 res!616369) b!1368414))

(assert (= (and b!1368414 (not res!616370)) b!1368415))

(assert (=> d!390023 m!1537323))

(declare-fun m!1537649 () Bool)

(assert (=> d!390023 m!1537649))

(declare-fun m!1537651 () Bool)

(assert (=> b!1368415 m!1537651))

(assert (=> b!1367508 d!390023))

(declare-fun b!1368416 () Bool)

(declare-fun res!616373 () Bool)

(declare-fun e!874895 () Bool)

(assert (=> b!1368416 (=> (not res!616373) (not e!874895))))

(declare-fun lt!454009 () Option!2662)

(assert (=> b!1368416 (= res!616373 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454009)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!454009)))))))

(declare-fun d!390027 () Bool)

(declare-fun e!874897 () Bool)

(assert (=> d!390027 e!874897))

(declare-fun res!616374 () Bool)

(assert (=> d!390027 (=> res!616374 e!874897)))

(assert (=> d!390027 (= res!616374 (isEmpty!8345 lt!454009))))

(declare-fun e!874896 () Option!2662)

(assert (=> d!390027 (= lt!454009 e!874896)))

(declare-fun c!225111 () Bool)

(assert (=> d!390027 (= c!225111 (and ((_ is Cons!13864) (t!121281 rules!2550)) ((_ is Nil!13864) (t!121281 (t!121281 rules!2550)))))))

(declare-fun lt!454007 () Unit!20071)

(declare-fun lt!454011 () Unit!20071)

(assert (=> d!390027 (= lt!454007 lt!454011)))

(assert (=> d!390027 (isPrefix!1125 (list!5330 lt!453456) (list!5330 lt!453456))))

(assert (=> d!390027 (= lt!454011 (lemmaIsPrefixRefl!787 (list!5330 lt!453456) (list!5330 lt!453456)))))

(assert (=> d!390027 (rulesValidInductive!766 thiss!19762 (t!121281 rules!2550))))

(assert (=> d!390027 (= (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) (list!5330 lt!453456)) lt!454009)))

(declare-fun call!92003 () Option!2662)

(declare-fun bm!91998 () Bool)

(assert (=> bm!91998 (= call!92003 (maxPrefixOneRule!613 thiss!19762 (h!19265 (t!121281 rules!2550)) (list!5330 lt!453456)))))

(declare-fun b!1368417 () Bool)

(declare-fun res!616371 () Bool)

(assert (=> b!1368417 (=> (not res!616371) (not e!874895))))

(assert (=> b!1368417 (= res!616371 (= (value!78061 (_1!7615 (get!4341 lt!454009))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!454009)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!454009)))))))))

(declare-fun b!1368418 () Bool)

(assert (=> b!1368418 (= e!874896 call!92003)))

(declare-fun b!1368419 () Bool)

(assert (=> b!1368419 (= e!874897 e!874895)))

(declare-fun res!616376 () Bool)

(assert (=> b!1368419 (=> (not res!616376) (not e!874895))))

(assert (=> b!1368419 (= res!616376 (isDefined!2215 lt!454009))))

(declare-fun b!1368420 () Bool)

(declare-fun res!616375 () Bool)

(assert (=> b!1368420 (=> (not res!616375) (not e!874895))))

(assert (=> b!1368420 (= res!616375 (< (size!11363 (_2!7615 (get!4341 lt!454009))) (size!11363 (list!5330 lt!453456))))))

(declare-fun b!1368421 () Bool)

(declare-fun res!616377 () Bool)

(assert (=> b!1368421 (=> (not res!616377) (not e!874895))))

(assert (=> b!1368421 (= res!616377 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!454009)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454009))))))))

(declare-fun b!1368422 () Bool)

(declare-fun lt!454010 () Option!2662)

(declare-fun lt!454008 () Option!2662)

(assert (=> b!1368422 (= e!874896 (ite (and ((_ is None!2661) lt!454010) ((_ is None!2661) lt!454008)) None!2661 (ite ((_ is None!2661) lt!454008) lt!454010 (ite ((_ is None!2661) lt!454010) lt!454008 (ite (>= (size!11357 (_1!7615 (v!21444 lt!454010))) (size!11357 (_1!7615 (v!21444 lt!454008)))) lt!454010 lt!454008)))))))

(assert (=> b!1368422 (= lt!454010 call!92003)))

(assert (=> b!1368422 (= lt!454008 (maxPrefix!1078 thiss!19762 (t!121281 (t!121281 rules!2550)) (list!5330 lt!453456)))))

(declare-fun b!1368423 () Bool)

(declare-fun res!616372 () Bool)

(assert (=> b!1368423 (=> (not res!616372) (not e!874895))))

(assert (=> b!1368423 (= res!616372 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454009)))) (_2!7615 (get!4341 lt!454009))) (list!5330 lt!453456)))))

(declare-fun b!1368424 () Bool)

(assert (=> b!1368424 (= e!874895 (contains!2586 (t!121281 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!454009)))))))

(assert (= (and d!390027 c!225111) b!1368418))

(assert (= (and d!390027 (not c!225111)) b!1368422))

(assert (= (or b!1368418 b!1368422) bm!91998))

(assert (= (and d!390027 (not res!616374)) b!1368419))

(assert (= (and b!1368419 res!616376) b!1368416))

(assert (= (and b!1368416 res!616373) b!1368420))

(assert (= (and b!1368420 res!616375) b!1368423))

(assert (= (and b!1368423 res!616372) b!1368417))

(assert (= (and b!1368417 res!616371) b!1368421))

(assert (= (and b!1368421 res!616377) b!1368424))

(declare-fun m!1537653 () Bool)

(assert (=> b!1368420 m!1537653))

(declare-fun m!1537655 () Bool)

(assert (=> b!1368420 m!1537655))

(assert (=> b!1368420 m!1535875))

(assert (=> b!1368420 m!1535933))

(assert (=> b!1368423 m!1537653))

(declare-fun m!1537657 () Bool)

(assert (=> b!1368423 m!1537657))

(assert (=> b!1368423 m!1537657))

(declare-fun m!1537659 () Bool)

(assert (=> b!1368423 m!1537659))

(assert (=> b!1368423 m!1537659))

(declare-fun m!1537661 () Bool)

(assert (=> b!1368423 m!1537661))

(assert (=> bm!91998 m!1535875))

(declare-fun m!1537663 () Bool)

(assert (=> bm!91998 m!1537663))

(assert (=> b!1368416 m!1537653))

(assert (=> b!1368416 m!1537657))

(assert (=> b!1368416 m!1537657))

(assert (=> b!1368416 m!1537659))

(assert (=> b!1368417 m!1537653))

(declare-fun m!1537665 () Bool)

(assert (=> b!1368417 m!1537665))

(assert (=> b!1368417 m!1537665))

(declare-fun m!1537667 () Bool)

(assert (=> b!1368417 m!1537667))

(assert (=> b!1368422 m!1535875))

(declare-fun m!1537669 () Bool)

(assert (=> b!1368422 m!1537669))

(declare-fun m!1537671 () Bool)

(assert (=> d!390027 m!1537671))

(assert (=> d!390027 m!1535875))

(assert (=> d!390027 m!1535875))

(assert (=> d!390027 m!1536385))

(assert (=> d!390027 m!1535875))

(assert (=> d!390027 m!1535875))

(assert (=> d!390027 m!1536387))

(assert (=> d!390027 m!1537261))

(assert (=> b!1368424 m!1537653))

(declare-fun m!1537677 () Bool)

(assert (=> b!1368424 m!1537677))

(assert (=> b!1368421 m!1537653))

(assert (=> b!1368421 m!1537657))

(assert (=> b!1368421 m!1537657))

(assert (=> b!1368421 m!1537659))

(assert (=> b!1368421 m!1537659))

(declare-fun m!1537679 () Bool)

(assert (=> b!1368421 m!1537679))

(declare-fun m!1537681 () Bool)

(assert (=> b!1368419 m!1537681))

(assert (=> b!1367599 d!390027))

(declare-fun b!1368433 () Bool)

(declare-fun e!874905 () Bool)

(declare-fun lt!454013 () tuple2!13456)

(assert (=> b!1368433 (= e!874905 (not (isEmpty!8348 (_1!7614 lt!454013))))))

(declare-fun e!874906 () Bool)

(declare-fun b!1368434 () Bool)

(assert (=> b!1368434 (= e!874906 (= (_2!7614 lt!454013) (print!862 thiss!19762 (singletonSeq!1028 t1!34))))))

(declare-fun b!1368435 () Bool)

(declare-fun res!616385 () Bool)

(declare-fun e!874907 () Bool)

(assert (=> b!1368435 (=> (not res!616385) (not e!874907))))

(assert (=> b!1368435 (= res!616385 (= (list!5331 (_1!7614 lt!454013)) (_1!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))))

(declare-fun d!390031 () Bool)

(assert (=> d!390031 e!874907))

(declare-fun res!616386 () Bool)

(assert (=> d!390031 (=> (not res!616386) (not e!874907))))

(assert (=> d!390031 (= res!616386 e!874906)))

(declare-fun c!225113 () Bool)

(assert (=> d!390031 (= c!225113 (> (size!11366 (_1!7614 lt!454013)) 0))))

(assert (=> d!390031 (= lt!454013 (lexTailRecV2!408 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34)) (BalanceConc!9069 Empty!4564) (print!862 thiss!19762 (singletonSeq!1028 t1!34)) (BalanceConc!9071 Empty!4565)))))

(assert (=> d!390031 (= (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))) lt!454013)))

(declare-fun b!1368436 () Bool)

(assert (=> b!1368436 (= e!874906 e!874905)))

(declare-fun res!616384 () Bool)

(assert (=> b!1368436 (= res!616384 (< (size!11358 (_2!7614 lt!454013)) (size!11358 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))

(assert (=> b!1368436 (=> (not res!616384) (not e!874905))))

(declare-fun b!1368437 () Bool)

(assert (=> b!1368437 (= e!874907 (= (list!5330 (_2!7614 lt!454013)) (_2!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))))

(assert (= (and d!390031 c!225113) b!1368436))

(assert (= (and d!390031 (not c!225113)) b!1368434))

(assert (= (and b!1368436 res!616384) b!1368433))

(assert (= (and d!390031 res!616386) b!1368435))

(assert (= (and b!1368435 res!616385) b!1368437))

(declare-fun m!1537685 () Bool)

(assert (=> b!1368435 m!1537685))

(assert (=> b!1368435 m!1535841))

(declare-fun m!1537687 () Bool)

(assert (=> b!1368435 m!1537687))

(assert (=> b!1368435 m!1537687))

(declare-fun m!1537689 () Bool)

(assert (=> b!1368435 m!1537689))

(declare-fun m!1537691 () Bool)

(assert (=> b!1368437 m!1537691))

(assert (=> b!1368437 m!1535841))

(assert (=> b!1368437 m!1537687))

(assert (=> b!1368437 m!1537687))

(assert (=> b!1368437 m!1537689))

(declare-fun m!1537693 () Bool)

(assert (=> d!390031 m!1537693))

(assert (=> d!390031 m!1535841))

(assert (=> d!390031 m!1535841))

(declare-fun m!1537695 () Bool)

(assert (=> d!390031 m!1537695))

(declare-fun m!1537697 () Bool)

(assert (=> b!1368436 m!1537697))

(assert (=> b!1368436 m!1535841))

(declare-fun m!1537699 () Bool)

(assert (=> b!1368436 m!1537699))

(declare-fun m!1537701 () Bool)

(assert (=> b!1368433 m!1537701))

(assert (=> d!389513 d!390031))

(assert (=> d!389513 d!389683))

(assert (=> d!389513 d!389681))

(declare-fun d!390035 () Bool)

(assert (=> d!390035 (= (list!5331 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))))) (list!5334 (c!224868 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))))

(declare-fun bs!335336 () Bool)

(assert (= bs!335336 d!390035))

(declare-fun m!1537703 () Bool)

(assert (=> bs!335336 m!1537703))

(assert (=> d!389513 d!390035))

(declare-fun d!390037 () Bool)

(assert (=> d!390037 (= (list!5331 (singletonSeq!1028 t1!34)) (list!5334 (c!224868 (singletonSeq!1028 t1!34))))))

(declare-fun bs!335337 () Bool)

(assert (= bs!335337 d!390037))

(declare-fun m!1537705 () Bool)

(assert (=> bs!335337 m!1537705))

(assert (=> d!389513 d!390037))

(assert (=> d!389513 d!389557))

(declare-fun d!390039 () Bool)

(declare-fun lt!454016 () Int)

(assert (=> d!390039 (= lt!454016 (size!11370 (list!5331 (_1!7614 lt!453551))))))

(declare-fun size!11372 (Conc!4565) Int)

(assert (=> d!390039 (= lt!454016 (size!11372 (c!224868 (_1!7614 lt!453551))))))

(assert (=> d!390039 (= (size!11366 (_1!7614 lt!453551)) lt!454016)))

(declare-fun bs!335338 () Bool)

(assert (= bs!335338 d!390039))

(declare-fun m!1537715 () Bool)

(assert (=> bs!335338 m!1537715))

(assert (=> bs!335338 m!1537715))

(declare-fun m!1537717 () Bool)

(assert (=> bs!335338 m!1537717))

(declare-fun m!1537719 () Bool)

(assert (=> bs!335338 m!1537719))

(assert (=> d!389513 d!390039))

(declare-fun d!390043 () Bool)

(assert (=> d!390043 (= (list!5330 lt!453709) (list!5333 (c!224866 lt!453709)))))

(declare-fun bs!335339 () Bool)

(assert (= bs!335339 d!390043))

(declare-fun m!1537721 () Bool)

(assert (=> bs!335339 m!1537721))

(assert (=> d!389711 d!390043))

(declare-fun d!390045 () Bool)

(declare-fun c!225122 () Bool)

(assert (=> d!390045 (= c!225122 ((_ is Cons!13865) (list!5331 (singletonSeq!1028 t2!34))))))

(declare-fun e!874919 () List!13928)

(assert (=> d!390045 (= (printList!604 thiss!19762 (list!5331 (singletonSeq!1028 t2!34))) e!874919)))

(declare-fun b!1368458 () Bool)

(assert (=> b!1368458 (= e!874919 (++!3578 (list!5330 (charsOf!1373 (h!19266 (list!5331 (singletonSeq!1028 t2!34))))) (printList!604 thiss!19762 (t!121282 (list!5331 (singletonSeq!1028 t2!34))))))))

(declare-fun b!1368459 () Bool)

(assert (=> b!1368459 (= e!874919 Nil!13862)))

(assert (= (and d!390045 c!225122) b!1368458))

(assert (= (and d!390045 (not c!225122)) b!1368459))

(declare-fun m!1537729 () Bool)

(assert (=> b!1368458 m!1537729))

(assert (=> b!1368458 m!1537729))

(declare-fun m!1537733 () Bool)

(assert (=> b!1368458 m!1537733))

(declare-fun m!1537735 () Bool)

(assert (=> b!1368458 m!1537735))

(assert (=> b!1368458 m!1537733))

(assert (=> b!1368458 m!1537735))

(declare-fun m!1537737 () Bool)

(assert (=> b!1368458 m!1537737))

(assert (=> d!389711 d!390045))

(declare-fun d!390053 () Bool)

(assert (=> d!390053 (= (list!5331 (singletonSeq!1028 t2!34)) (list!5334 (c!224868 (singletonSeq!1028 t2!34))))))

(declare-fun bs!335341 () Bool)

(assert (= bs!335341 d!390053))

(declare-fun m!1537739 () Bool)

(assert (=> bs!335341 m!1537739))

(assert (=> d!389711 d!390053))

(declare-fun d!390055 () Bool)

(declare-fun lt!454045 () BalanceConc!9068)

(declare-fun printListTailRec!249 (LexerInterface!2096 List!13931 List!13928) List!13928)

(declare-fun dropList!406 (BalanceConc!9070 Int) List!13931)

(assert (=> d!390055 (= (list!5330 lt!454045) (printListTailRec!249 thiss!19762 (dropList!406 (singletonSeq!1028 t2!34) 0) (list!5330 (BalanceConc!9069 Empty!4564))))))

(declare-fun e!874941 () BalanceConc!9068)

(assert (=> d!390055 (= lt!454045 e!874941)))

(declare-fun c!225131 () Bool)

(assert (=> d!390055 (= c!225131 (>= 0 (size!11366 (singletonSeq!1028 t2!34))))))

(declare-fun e!874940 () Bool)

(assert (=> d!390055 e!874940))

(declare-fun res!616419 () Bool)

(assert (=> d!390055 (=> (not res!616419) (not e!874940))))

(assert (=> d!390055 (= res!616419 (>= 0 0))))

(assert (=> d!390055 (= (printTailRec!586 thiss!19762 (singletonSeq!1028 t2!34) 0 (BalanceConc!9069 Empty!4564)) lt!454045)))

(declare-fun b!1368500 () Bool)

(assert (=> b!1368500 (= e!874940 (<= 0 (size!11366 (singletonSeq!1028 t2!34))))))

(declare-fun b!1368501 () Bool)

(assert (=> b!1368501 (= e!874941 (BalanceConc!9069 Empty!4564))))

(declare-fun b!1368502 () Bool)

(assert (=> b!1368502 (= e!874941 (printTailRec!586 thiss!19762 (singletonSeq!1028 t2!34) (+ 0 1) (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (apply!3386 (singletonSeq!1028 t2!34) 0)))))))

(declare-fun lt!454044 () List!13931)

(assert (=> b!1368502 (= lt!454044 (list!5331 (singletonSeq!1028 t2!34)))))

(declare-fun lt!454048 () Unit!20071)

(declare-fun lemmaDropApply!440 (List!13931 Int) Unit!20071)

(assert (=> b!1368502 (= lt!454048 (lemmaDropApply!440 lt!454044 0))))

(declare-fun head!2459 (List!13931) Token!4464)

(declare-fun drop!685 (List!13931 Int) List!13931)

(declare-fun apply!3393 (List!13931 Int) Token!4464)

(assert (=> b!1368502 (= (head!2459 (drop!685 lt!454044 0)) (apply!3393 lt!454044 0))))

(declare-fun lt!454042 () Unit!20071)

(assert (=> b!1368502 (= lt!454042 lt!454048)))

(declare-fun lt!454046 () List!13931)

(assert (=> b!1368502 (= lt!454046 (list!5331 (singletonSeq!1028 t2!34)))))

(declare-fun lt!454043 () Unit!20071)

(declare-fun lemmaDropTail!420 (List!13931 Int) Unit!20071)

(assert (=> b!1368502 (= lt!454043 (lemmaDropTail!420 lt!454046 0))))

(declare-fun tail!1976 (List!13931) List!13931)

(assert (=> b!1368502 (= (tail!1976 (drop!685 lt!454046 0)) (drop!685 lt!454046 (+ 0 1)))))

(declare-fun lt!454047 () Unit!20071)

(assert (=> b!1368502 (= lt!454047 lt!454043)))

(assert (= (and d!390055 res!616419) b!1368500))

(assert (= (and d!390055 c!225131) b!1368501))

(assert (= (and d!390055 (not c!225131)) b!1368502))

(declare-fun m!1537785 () Bool)

(assert (=> d!390055 m!1537785))

(assert (=> d!390055 m!1535827))

(declare-fun m!1537787 () Bool)

(assert (=> d!390055 m!1537787))

(declare-fun m!1537789 () Bool)

(assert (=> d!390055 m!1537789))

(assert (=> d!390055 m!1535827))

(declare-fun m!1537791 () Bool)

(assert (=> d!390055 m!1537791))

(assert (=> d!390055 m!1537787))

(assert (=> d!390055 m!1537789))

(declare-fun m!1537793 () Bool)

(assert (=> d!390055 m!1537793))

(assert (=> b!1368500 m!1535827))

(assert (=> b!1368500 m!1537791))

(declare-fun m!1537795 () Bool)

(assert (=> b!1368502 m!1537795))

(declare-fun m!1537797 () Bool)

(assert (=> b!1368502 m!1537797))

(assert (=> b!1368502 m!1537797))

(declare-fun m!1537799 () Bool)

(assert (=> b!1368502 m!1537799))

(declare-fun m!1537801 () Bool)

(assert (=> b!1368502 m!1537801))

(declare-fun m!1537803 () Bool)

(assert (=> b!1368502 m!1537803))

(assert (=> b!1368502 m!1535827))

(declare-fun m!1537805 () Bool)

(assert (=> b!1368502 m!1537805))

(declare-fun m!1537807 () Bool)

(assert (=> b!1368502 m!1537807))

(declare-fun m!1537809 () Bool)

(assert (=> b!1368502 m!1537809))

(declare-fun m!1537811 () Bool)

(assert (=> b!1368502 m!1537811))

(assert (=> b!1368502 m!1537801))

(assert (=> b!1368502 m!1535827))

(assert (=> b!1368502 m!1536405))

(assert (=> b!1368502 m!1537811))

(assert (=> b!1368502 m!1537805))

(assert (=> b!1368502 m!1535827))

(assert (=> b!1368502 m!1537809))

(declare-fun m!1537813 () Bool)

(assert (=> b!1368502 m!1537813))

(declare-fun m!1537815 () Bool)

(assert (=> b!1368502 m!1537815))

(declare-fun m!1537817 () Bool)

(assert (=> b!1368502 m!1537817))

(assert (=> d!389711 d!390055))

(declare-fun d!390065 () Bool)

(assert (=> d!390065 (= (head!2456 rules!2550) (h!19265 rules!2550))))

(assert (=> b!1367777 d!390065))

(assert (=> d!389539 d!389999))

(declare-fun d!390067 () Bool)

(assert (=> d!390067 (= (isEmpty!8341 (tail!1974 lt!453465)) ((_ is Nil!13862) (tail!1974 lt!453465)))))

(assert (=> b!1367819 d!390067))

(assert (=> b!1367819 d!389987))

(declare-fun d!390069 () Bool)

(assert (=> d!390069 (= (isEmpty!8347 (_1!7613 lt!453652)) ((_ is Nil!13865) (_1!7613 lt!453652)))))

(assert (=> b!1367662 d!390069))

(declare-fun d!390071 () Bool)

(declare-fun charsToBigInt!1 (List!13929) Int)

(assert (=> d!390071 (= (inv!17 (value!78061 t1!34)) (= (charsToBigInt!1 (text!17885 (value!78061 t1!34))) (value!78053 (value!78061 t1!34))))))

(declare-fun bs!335348 () Bool)

(assert (= bs!335348 d!390071))

(declare-fun m!1537819 () Bool)

(assert (=> bs!335348 m!1537819))

(assert (=> b!1367504 d!390071))

(declare-fun bs!335349 () Bool)

(declare-fun d!390073 () Bool)

(assert (= bs!335349 (and d!390073 d!389925)))

(declare-fun lambda!57962 () Int)

(assert (=> bs!335349 (= (= (toValue!3664 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (= lambda!57962 lambda!57947))))

(declare-fun bs!335350 () Bool)

(assert (= bs!335350 (and d!390073 d!389935)))

(assert (=> bs!335350 (= (= (toValue!3664 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (rule!4154 t2!34)))) (= lambda!57962 lambda!57948))))

(assert (=> d!390073 true))

(assert (=> d!390073 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (h!19265 rules!2550)))) (dynLambda!6281 order!8445 lambda!57962))))

(assert (=> d!390073 (= (equivClasses!882 (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (h!19265 rules!2550)))) (Forall2!439 lambda!57962))))

(declare-fun bs!335351 () Bool)

(assert (= bs!335351 d!390073))

(declare-fun m!1537821 () Bool)

(assert (=> bs!335351 m!1537821))

(assert (=> b!1367283 d!390073))

(declare-fun d!390075 () Bool)

(declare-fun res!616420 () Bool)

(declare-fun e!874942 () Bool)

(assert (=> d!390075 (=> res!616420 e!874942)))

(assert (=> d!390075 (= res!616420 (not ((_ is Cons!13864) (t!121281 rules!2550))))))

(assert (=> d!390075 (= (sepAndNonSepRulesDisjointChars!774 rules!2550 (t!121281 rules!2550)) e!874942)))

(declare-fun b!1368503 () Bool)

(declare-fun e!874943 () Bool)

(assert (=> b!1368503 (= e!874942 e!874943)))

(declare-fun res!616421 () Bool)

(assert (=> b!1368503 (=> (not res!616421) (not e!874943))))

(assert (=> b!1368503 (= res!616421 (ruleDisjointCharsFromAllFromOtherType!366 (h!19265 (t!121281 rules!2550)) rules!2550))))

(declare-fun b!1368504 () Bool)

(assert (=> b!1368504 (= e!874943 (sepAndNonSepRulesDisjointChars!774 rules!2550 (t!121281 (t!121281 rules!2550))))))

(assert (= (and d!390075 (not res!616420)) b!1368503))

(assert (= (and b!1368503 res!616421) b!1368504))

(declare-fun m!1537823 () Bool)

(assert (=> b!1368503 m!1537823))

(declare-fun m!1537825 () Bool)

(assert (=> b!1368504 m!1537825))

(assert (=> b!1367877 d!390075))

(declare-fun d!390077 () Bool)

(assert (=> d!390077 (= (inv!17 (value!78061 t2!34)) (= (charsToBigInt!1 (text!17885 (value!78061 t2!34))) (value!78053 (value!78061 t2!34))))))

(declare-fun bs!335352 () Bool)

(assert (= bs!335352 d!390077))

(declare-fun m!1537827 () Bool)

(assert (=> bs!335352 m!1537827))

(assert (=> b!1367459 d!390077))

(declare-fun d!390079 () Bool)

(assert (=> d!390079 (= (list!5330 lt!453677) (list!5333 (c!224866 lt!453677)))))

(declare-fun bs!335353 () Bool)

(assert (= bs!335353 d!390079))

(declare-fun m!1537829 () Bool)

(assert (=> bs!335353 m!1537829))

(assert (=> d!389683 d!390079))

(declare-fun d!390081 () Bool)

(declare-fun c!225132 () Bool)

(assert (=> d!390081 (= c!225132 ((_ is Cons!13865) (list!5331 (singletonSeq!1028 t1!34))))))

(declare-fun e!874944 () List!13928)

(assert (=> d!390081 (= (printList!604 thiss!19762 (list!5331 (singletonSeq!1028 t1!34))) e!874944)))

(declare-fun b!1368505 () Bool)

(assert (=> b!1368505 (= e!874944 (++!3578 (list!5330 (charsOf!1373 (h!19266 (list!5331 (singletonSeq!1028 t1!34))))) (printList!604 thiss!19762 (t!121282 (list!5331 (singletonSeq!1028 t1!34))))))))

(declare-fun b!1368506 () Bool)

(assert (=> b!1368506 (= e!874944 Nil!13862)))

(assert (= (and d!390081 c!225132) b!1368505))

(assert (= (and d!390081 (not c!225132)) b!1368506))

(declare-fun m!1537831 () Bool)

(assert (=> b!1368505 m!1537831))

(assert (=> b!1368505 m!1537831))

(declare-fun m!1537833 () Bool)

(assert (=> b!1368505 m!1537833))

(declare-fun m!1537835 () Bool)

(assert (=> b!1368505 m!1537835))

(assert (=> b!1368505 m!1537833))

(assert (=> b!1368505 m!1537835))

(declare-fun m!1537837 () Bool)

(assert (=> b!1368505 m!1537837))

(assert (=> d!389683 d!390081))

(assert (=> d!389683 d!390037))

(declare-fun d!390083 () Bool)

(declare-fun lt!454052 () BalanceConc!9068)

(assert (=> d!390083 (= (list!5330 lt!454052) (printListTailRec!249 thiss!19762 (dropList!406 (singletonSeq!1028 t1!34) 0) (list!5330 (BalanceConc!9069 Empty!4564))))))

(declare-fun e!874946 () BalanceConc!9068)

(assert (=> d!390083 (= lt!454052 e!874946)))

(declare-fun c!225133 () Bool)

(assert (=> d!390083 (= c!225133 (>= 0 (size!11366 (singletonSeq!1028 t1!34))))))

(declare-fun e!874945 () Bool)

(assert (=> d!390083 e!874945))

(declare-fun res!616422 () Bool)

(assert (=> d!390083 (=> (not res!616422) (not e!874945))))

(assert (=> d!390083 (= res!616422 (>= 0 0))))

(assert (=> d!390083 (= (printTailRec!586 thiss!19762 (singletonSeq!1028 t1!34) 0 (BalanceConc!9069 Empty!4564)) lt!454052)))

(declare-fun b!1368507 () Bool)

(assert (=> b!1368507 (= e!874945 (<= 0 (size!11366 (singletonSeq!1028 t1!34))))))

(declare-fun b!1368508 () Bool)

(assert (=> b!1368508 (= e!874946 (BalanceConc!9069 Empty!4564))))

(declare-fun b!1368509 () Bool)

(assert (=> b!1368509 (= e!874946 (printTailRec!586 thiss!19762 (singletonSeq!1028 t1!34) (+ 0 1) (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (apply!3386 (singletonSeq!1028 t1!34) 0)))))))

(declare-fun lt!454051 () List!13931)

(assert (=> b!1368509 (= lt!454051 (list!5331 (singletonSeq!1028 t1!34)))))

(declare-fun lt!454055 () Unit!20071)

(assert (=> b!1368509 (= lt!454055 (lemmaDropApply!440 lt!454051 0))))

(assert (=> b!1368509 (= (head!2459 (drop!685 lt!454051 0)) (apply!3393 lt!454051 0))))

(declare-fun lt!454049 () Unit!20071)

(assert (=> b!1368509 (= lt!454049 lt!454055)))

(declare-fun lt!454053 () List!13931)

(assert (=> b!1368509 (= lt!454053 (list!5331 (singletonSeq!1028 t1!34)))))

(declare-fun lt!454050 () Unit!20071)

(assert (=> b!1368509 (= lt!454050 (lemmaDropTail!420 lt!454053 0))))

(assert (=> b!1368509 (= (tail!1976 (drop!685 lt!454053 0)) (drop!685 lt!454053 (+ 0 1)))))

(declare-fun lt!454054 () Unit!20071)

(assert (=> b!1368509 (= lt!454054 lt!454050)))

(assert (= (and d!390083 res!616422) b!1368507))

(assert (= (and d!390083 c!225133) b!1368508))

(assert (= (and d!390083 (not c!225133)) b!1368509))

(declare-fun m!1537839 () Bool)

(assert (=> d!390083 m!1537839))

(assert (=> d!390083 m!1535835))

(declare-fun m!1537841 () Bool)

(assert (=> d!390083 m!1537841))

(assert (=> d!390083 m!1537789))

(assert (=> d!390083 m!1535835))

(declare-fun m!1537843 () Bool)

(assert (=> d!390083 m!1537843))

(assert (=> d!390083 m!1537841))

(assert (=> d!390083 m!1537789))

(declare-fun m!1537845 () Bool)

(assert (=> d!390083 m!1537845))

(assert (=> b!1368507 m!1535835))

(assert (=> b!1368507 m!1537843))

(declare-fun m!1537847 () Bool)

(assert (=> b!1368509 m!1537847))

(declare-fun m!1537849 () Bool)

(assert (=> b!1368509 m!1537849))

(assert (=> b!1368509 m!1537849))

(declare-fun m!1537851 () Bool)

(assert (=> b!1368509 m!1537851))

(declare-fun m!1537853 () Bool)

(assert (=> b!1368509 m!1537853))

(declare-fun m!1537855 () Bool)

(assert (=> b!1368509 m!1537855))

(assert (=> b!1368509 m!1535835))

(declare-fun m!1537857 () Bool)

(assert (=> b!1368509 m!1537857))

(declare-fun m!1537859 () Bool)

(assert (=> b!1368509 m!1537859))

(declare-fun m!1537861 () Bool)

(assert (=> b!1368509 m!1537861))

(declare-fun m!1537863 () Bool)

(assert (=> b!1368509 m!1537863))

(assert (=> b!1368509 m!1537853))

(assert (=> b!1368509 m!1535835))

(assert (=> b!1368509 m!1536153))

(assert (=> b!1368509 m!1537863))

(assert (=> b!1368509 m!1537857))

(assert (=> b!1368509 m!1535835))

(assert (=> b!1368509 m!1537861))

(declare-fun m!1537865 () Bool)

(assert (=> b!1368509 m!1537865))

(declare-fun m!1537867 () Bool)

(assert (=> b!1368509 m!1537867))

(declare-fun m!1537869 () Bool)

(assert (=> b!1368509 m!1537869))

(assert (=> d!389683 d!390083))

(declare-fun d!390085 () Bool)

(declare-fun lt!454056 () Int)

(assert (=> d!390085 (= lt!454056 (size!11363 (list!5330 (_2!7614 lt!453708))))))

(assert (=> d!390085 (= lt!454056 (size!11364 (c!224866 (_2!7614 lt!453708))))))

(assert (=> d!390085 (= (size!11358 (_2!7614 lt!453708)) lt!454056)))

(declare-fun bs!335354 () Bool)

(assert (= bs!335354 d!390085))

(assert (=> bs!335354 m!1536733))

(assert (=> bs!335354 m!1536733))

(declare-fun m!1537871 () Bool)

(assert (=> bs!335354 m!1537871))

(declare-fun m!1537873 () Bool)

(assert (=> bs!335354 m!1537873))

(assert (=> b!1367869 d!390085))

(declare-fun d!390087 () Bool)

(declare-fun lt!454057 () Int)

(assert (=> d!390087 (= lt!454057 (size!11363 (list!5330 lt!453461)))))

(assert (=> d!390087 (= lt!454057 (size!11364 (c!224866 lt!453461)))))

(assert (=> d!390087 (= (size!11358 lt!453461) lt!454057)))

(declare-fun bs!335355 () Bool)

(assert (= bs!335355 d!390087))

(assert (=> bs!335355 m!1535795))

(assert (=> bs!335355 m!1535795))

(assert (=> bs!335355 m!1536495))

(declare-fun m!1537875 () Bool)

(assert (=> bs!335355 m!1537875))

(assert (=> b!1367869 d!390087))

(declare-fun d!390089 () Bool)

(declare-fun c!225138 () Bool)

(assert (=> d!390089 (= c!225138 ((_ is Empty!4564) (c!224866 lt!453456)))))

(declare-fun e!874951 () List!13928)

(assert (=> d!390089 (= (list!5333 (c!224866 lt!453456)) e!874951)))

(declare-fun b!1368520 () Bool)

(declare-fun e!874952 () List!13928)

(declare-fun list!5337 (IArray!9133) List!13928)

(assert (=> b!1368520 (= e!874952 (list!5337 (xs!7291 (c!224866 lt!453456))))))

(declare-fun b!1368519 () Bool)

(assert (=> b!1368519 (= e!874951 e!874952)))

(declare-fun c!225139 () Bool)

(assert (=> b!1368519 (= c!225139 ((_ is Leaf!6961) (c!224866 lt!453456)))))

(declare-fun b!1368521 () Bool)

(assert (=> b!1368521 (= e!874952 (++!3578 (list!5333 (left!11866 (c!224866 lt!453456))) (list!5333 (right!12196 (c!224866 lt!453456)))))))

(declare-fun b!1368518 () Bool)

(assert (=> b!1368518 (= e!874951 Nil!13862)))

(assert (= (and d!390089 c!225138) b!1368518))

(assert (= (and d!390089 (not c!225138)) b!1368519))

(assert (= (and b!1368519 c!225139) b!1368520))

(assert (= (and b!1368519 (not c!225139)) b!1368521))

(declare-fun m!1537877 () Bool)

(assert (=> b!1368520 m!1537877))

(declare-fun m!1537879 () Bool)

(assert (=> b!1368521 m!1537879))

(declare-fun m!1537881 () Bool)

(assert (=> b!1368521 m!1537881))

(assert (=> b!1368521 m!1537879))

(assert (=> b!1368521 m!1537881))

(declare-fun m!1537883 () Bool)

(assert (=> b!1368521 m!1537883))

(assert (=> d!389609 d!390089))

(declare-fun d!390091 () Bool)

(declare-fun lt!454058 () Bool)

(assert (=> d!390091 (= lt!454058 (isEmpty!8341 (list!5330 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))))

(assert (=> d!390091 (= lt!454058 (isEmpty!8344 (c!224866 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34)))))))))

(assert (=> d!390091 (= (isEmpty!8338 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t1!34))))) lt!454058)))

(declare-fun bs!335356 () Bool)

(assert (= bs!335356 d!390091))

(declare-fun m!1537885 () Bool)

(assert (=> bs!335356 m!1537885))

(assert (=> bs!335356 m!1537885))

(declare-fun m!1537887 () Bool)

(assert (=> bs!335356 m!1537887))

(declare-fun m!1537889 () Bool)

(assert (=> bs!335356 m!1537889))

(assert (=> b!1367431 d!390091))

(assert (=> b!1367431 d!390031))

(assert (=> b!1367431 d!389683))

(assert (=> b!1367431 d!389681))

(declare-fun d!390093 () Bool)

(assert (=> d!390093 (= (list!5331 (_1!7614 lt!453671)) (list!5334 (c!224868 (_1!7614 lt!453671))))))

(declare-fun bs!335357 () Bool)

(assert (= bs!335357 d!390093))

(declare-fun m!1537891 () Bool)

(assert (=> bs!335357 m!1537891))

(assert (=> b!1367755 d!390093))

(assert (=> b!1367755 d!389699))

(assert (=> b!1367755 d!389701))

(declare-fun b!1368522 () Bool)

(declare-fun e!874955 () Bool)

(declare-fun e!874954 () Bool)

(assert (=> b!1368522 (= e!874955 e!874954)))

(declare-fun res!616423 () Bool)

(declare-fun lt!454060 () tuple2!13454)

(assert (=> b!1368522 (= res!616423 (< (size!11363 (_2!7613 lt!454060)) (size!11363 (_2!7615 (v!21444 lt!453651)))))))

(assert (=> b!1368522 (=> (not res!616423) (not e!874954))))

(declare-fun b!1368523 () Bool)

(assert (=> b!1368523 (= e!874955 (= (_2!7613 lt!454060) (_2!7615 (v!21444 lt!453651))))))

(declare-fun b!1368524 () Bool)

(declare-fun e!874953 () tuple2!13454)

(assert (=> b!1368524 (= e!874953 (tuple2!13455 Nil!13865 (_2!7615 (v!21444 lt!453651))))))

(declare-fun b!1368525 () Bool)

(assert (=> b!1368525 (= e!874954 (not (isEmpty!8347 (_1!7613 lt!454060))))))

(declare-fun d!390095 () Bool)

(assert (=> d!390095 e!874955))

(declare-fun c!225140 () Bool)

(assert (=> d!390095 (= c!225140 (> (size!11370 (_1!7613 lt!454060)) 0))))

(assert (=> d!390095 (= lt!454060 e!874953)))

(declare-fun c!225141 () Bool)

(declare-fun lt!454059 () Option!2662)

(assert (=> d!390095 (= c!225141 ((_ is Some!2661) lt!454059))))

(assert (=> d!390095 (= lt!454059 (maxPrefix!1078 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453651))))))

(assert (=> d!390095 (= (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453651))) lt!454060)))

(declare-fun b!1368526 () Bool)

(declare-fun lt!454061 () tuple2!13454)

(assert (=> b!1368526 (= e!874953 (tuple2!13455 (Cons!13865 (_1!7615 (v!21444 lt!454059)) (_1!7613 lt!454061)) (_2!7613 lt!454061)))))

(assert (=> b!1368526 (= lt!454061 (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!454059))))))

(assert (= (and d!390095 c!225141) b!1368526))

(assert (= (and d!390095 (not c!225141)) b!1368524))

(assert (= (and d!390095 c!225140) b!1368522))

(assert (= (and d!390095 (not c!225140)) b!1368523))

(assert (= (and b!1368522 res!616423) b!1368525))

(declare-fun m!1537893 () Bool)

(assert (=> b!1368522 m!1537893))

(declare-fun m!1537895 () Bool)

(assert (=> b!1368522 m!1537895))

(declare-fun m!1537897 () Bool)

(assert (=> b!1368525 m!1537897))

(declare-fun m!1537899 () Bool)

(assert (=> d!390095 m!1537899))

(declare-fun m!1537901 () Bool)

(assert (=> d!390095 m!1537901))

(declare-fun m!1537903 () Bool)

(assert (=> b!1368526 m!1537903))

(assert (=> b!1367663 d!390095))

(declare-fun d!390097 () Bool)

(declare-fun c!225142 () Bool)

(assert (=> d!390097 (= c!225142 ((_ is Empty!4564) (c!224866 lt!453460)))))

(declare-fun e!874956 () List!13928)

(assert (=> d!390097 (= (list!5333 (c!224866 lt!453460)) e!874956)))

(declare-fun b!1368529 () Bool)

(declare-fun e!874957 () List!13928)

(assert (=> b!1368529 (= e!874957 (list!5337 (xs!7291 (c!224866 lt!453460))))))

(declare-fun b!1368528 () Bool)

(assert (=> b!1368528 (= e!874956 e!874957)))

(declare-fun c!225143 () Bool)

(assert (=> b!1368528 (= c!225143 ((_ is Leaf!6961) (c!224866 lt!453460)))))

(declare-fun b!1368530 () Bool)

(assert (=> b!1368530 (= e!874957 (++!3578 (list!5333 (left!11866 (c!224866 lt!453460))) (list!5333 (right!12196 (c!224866 lt!453460)))))))

(declare-fun b!1368527 () Bool)

(assert (=> b!1368527 (= e!874956 Nil!13862)))

(assert (= (and d!390097 c!225142) b!1368527))

(assert (= (and d!390097 (not c!225142)) b!1368528))

(assert (= (and b!1368528 c!225143) b!1368529))

(assert (= (and b!1368528 (not c!225143)) b!1368530))

(declare-fun m!1537905 () Bool)

(assert (=> b!1368529 m!1537905))

(declare-fun m!1537907 () Bool)

(assert (=> b!1368530 m!1537907))

(declare-fun m!1537909 () Bool)

(assert (=> b!1368530 m!1537909))

(assert (=> b!1368530 m!1537907))

(assert (=> b!1368530 m!1537909))

(declare-fun m!1537911 () Bool)

(assert (=> b!1368530 m!1537911))

(assert (=> d!389701 d!390097))

(assert (=> d!389685 d!389639))

(declare-fun d!390099 () Bool)

(declare-fun c!225146 () Bool)

(assert (=> d!390099 (= c!225146 ((_ is Nil!13866) (map!3062 rules!2550 lambda!57883)))))

(declare-fun e!874960 () (InoxSet Regex!3715))

(assert (=> d!390099 (= (content!2021 (map!3062 rules!2550 lambda!57883)) e!874960)))

(declare-fun b!1368535 () Bool)

(assert (=> b!1368535 (= e!874960 ((as const (Array Regex!3715 Bool)) false))))

(declare-fun b!1368536 () Bool)

(assert (=> b!1368536 (= e!874960 ((_ map or) (store ((as const (Array Regex!3715 Bool)) false) (h!19267 (map!3062 rules!2550 lambda!57883)) true) (content!2021 (t!121283 (map!3062 rules!2550 lambda!57883)))))))

(assert (= (and d!390099 c!225146) b!1368535))

(assert (= (and d!390099 (not c!225146)) b!1368536))

(declare-fun m!1537913 () Bool)

(assert (=> b!1368536 m!1537913))

(declare-fun m!1537915 () Bool)

(assert (=> b!1368536 m!1537915))

(assert (=> d!389691 d!390099))

(declare-fun d!390101 () Bool)

(declare-fun lt!454062 () Int)

(assert (=> d!390101 (= lt!454062 (size!11370 (list!5331 (_1!7614 lt!453708))))))

(assert (=> d!390101 (= lt!454062 (size!11372 (c!224868 (_1!7614 lt!453708))))))

(assert (=> d!390101 (= (size!11366 (_1!7614 lt!453708)) lt!454062)))

(declare-fun bs!335358 () Bool)

(assert (= bs!335358 d!390101))

(assert (=> bs!335358 m!1536731))

(assert (=> bs!335358 m!1536731))

(declare-fun m!1537917 () Bool)

(assert (=> bs!335358 m!1537917))

(declare-fun m!1537919 () Bool)

(assert (=> bs!335358 m!1537919))

(assert (=> d!389709 d!390101))

(declare-fun lt!454326 () tuple2!13456)

(declare-fun b!1368948 () Bool)

(declare-datatypes ((tuple2!13464 0))(
  ( (tuple2!13465 (_1!7618 Token!4464) (_2!7618 BalanceConc!9068)) )
))
(declare-datatypes ((Option!2664 0))(
  ( (None!2663) (Some!2663 (v!21459 tuple2!13464)) )
))
(declare-fun lt!454318 () Option!2664)

(declare-fun lexRec!279 (LexerInterface!2096 List!13930 BalanceConc!9068) tuple2!13456)

(assert (=> b!1368948 (= lt!454326 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454318))))))

(declare-fun e!875211 () tuple2!13456)

(declare-fun prepend!368 (BalanceConc!9070 Token!4464) BalanceConc!9070)

(assert (=> b!1368948 (= e!875211 (tuple2!13457 (prepend!368 (_1!7614 lt!454326) (_1!7618 (v!21459 lt!454318))) (_2!7614 lt!454326)))))

(declare-fun b!1368949 () Bool)

(declare-fun e!875207 () tuple2!13456)

(declare-fun lt!454320 () BalanceConc!9068)

(assert (=> b!1368949 (= e!875207 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!454320))))

(declare-fun d!390103 () Bool)

(declare-fun e!875210 () Bool)

(assert (=> d!390103 e!875210))

(declare-fun res!616594 () Bool)

(assert (=> d!390103 (=> (not res!616594) (not e!875210))))

(declare-fun lt!454305 () tuple2!13456)

(assert (=> d!390103 (= res!616594 (= (list!5331 (_1!7614 lt!454305)) (list!5331 (_1!7614 (lexRec!279 thiss!19762 rules!2550 lt!453461)))))))

(declare-fun e!875212 () tuple2!13456)

(assert (=> d!390103 (= lt!454305 e!875212)))

(declare-fun c!225269 () Bool)

(declare-fun lt!454297 () Option!2664)

(assert (=> d!390103 (= c!225269 ((_ is Some!2663) lt!454297))))

(declare-fun maxPrefixZipperSequenceV2!224 (LexerInterface!2096 List!13930 BalanceConc!9068 BalanceConc!9068) Option!2664)

(assert (=> d!390103 (= lt!454297 (maxPrefixZipperSequenceV2!224 thiss!19762 rules!2550 lt!453461 lt!453461))))

(declare-fun lt!454327 () Unit!20071)

(declare-fun lt!454309 () Unit!20071)

(assert (=> d!390103 (= lt!454327 lt!454309)))

(declare-fun lt!454302 () List!13928)

(declare-fun lt!454306 () List!13928)

(declare-fun isSuffix!257 (List!13928 List!13928) Bool)

(assert (=> d!390103 (isSuffix!257 lt!454302 (++!3578 lt!454306 lt!454302))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!235 (List!13928 List!13928) Unit!20071)

(assert (=> d!390103 (= lt!454309 (lemmaConcatTwoListThenFSndIsSuffix!235 lt!454306 lt!454302))))

(assert (=> d!390103 (= lt!454302 (list!5330 lt!453461))))

(assert (=> d!390103 (= lt!454306 (list!5330 (BalanceConc!9069 Empty!4564)))))

(assert (=> d!390103 (= (lexTailRecV2!408 thiss!19762 rules!2550 lt!453461 (BalanceConc!9069 Empty!4564) lt!453461 (BalanceConc!9071 Empty!4565)) lt!454305)))

(declare-fun b!1368950 () Bool)

(assert (=> b!1368950 (= e!875212 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!453461))))

(declare-fun b!1368951 () Bool)

(assert (=> b!1368951 (= e!875210 (= (list!5330 (_2!7614 lt!454305)) (list!5330 (_2!7614 (lexRec!279 thiss!19762 rules!2550 lt!453461)))))))

(declare-fun b!1368952 () Bool)

(declare-fun lt!454301 () BalanceConc!9068)

(declare-fun append!404 (BalanceConc!9070 Token!4464) BalanceConc!9070)

(assert (=> b!1368952 (= e!875212 (lexTailRecV2!408 thiss!19762 rules!2550 lt!453461 lt!454301 (_2!7618 (v!21459 lt!454297)) (append!404 (BalanceConc!9071 Empty!4565) (_1!7618 (v!21459 lt!454297)))))))

(declare-fun lt!454304 () tuple2!13456)

(assert (=> b!1368952 (= lt!454304 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454297))))))

(declare-fun lt!454293 () List!13928)

(assert (=> b!1368952 (= lt!454293 (list!5330 (BalanceConc!9069 Empty!4564)))))

(declare-fun lt!454323 () List!13928)

(assert (=> b!1368952 (= lt!454323 (list!5330 (charsOf!1373 (_1!7618 (v!21459 lt!454297)))))))

(declare-fun lt!454303 () List!13928)

(assert (=> b!1368952 (= lt!454303 (list!5330 (_2!7618 (v!21459 lt!454297))))))

(declare-fun lt!454324 () Unit!20071)

(declare-fun lemmaConcatAssociativity!857 (List!13928 List!13928 List!13928) Unit!20071)

(assert (=> b!1368952 (= lt!454324 (lemmaConcatAssociativity!857 lt!454293 lt!454323 lt!454303))))

(assert (=> b!1368952 (= (++!3578 (++!3578 lt!454293 lt!454323) lt!454303) (++!3578 lt!454293 (++!3578 lt!454323 lt!454303)))))

(declare-fun lt!454316 () Unit!20071)

(assert (=> b!1368952 (= lt!454316 lt!454324)))

(declare-fun maxPrefixZipperSequence!552 (LexerInterface!2096 List!13930 BalanceConc!9068) Option!2664)

(assert (=> b!1368952 (= lt!454318 (maxPrefixZipperSequence!552 thiss!19762 rules!2550 lt!453461))))

(declare-fun c!225268 () Bool)

(assert (=> b!1368952 (= c!225268 ((_ is Some!2663) lt!454318))))

(assert (=> b!1368952 (= (lexRec!279 thiss!19762 rules!2550 lt!453461) e!875211)))

(declare-fun lt!454312 () Unit!20071)

(declare-fun Unit!20083 () Unit!20071)

(assert (=> b!1368952 (= lt!454312 Unit!20083)))

(declare-fun lt!454311 () List!13931)

(assert (=> b!1368952 (= lt!454311 (list!5331 (BalanceConc!9071 Empty!4565)))))

(declare-fun lt!454315 () List!13931)

(assert (=> b!1368952 (= lt!454315 (Cons!13865 (_1!7618 (v!21459 lt!454297)) Nil!13865))))

(declare-fun lt!454294 () List!13931)

(assert (=> b!1368952 (= lt!454294 (list!5331 (_1!7614 lt!454304)))))

(declare-fun lt!454298 () Unit!20071)

(declare-fun lemmaConcatAssociativity!858 (List!13931 List!13931 List!13931) Unit!20071)

(assert (=> b!1368952 (= lt!454298 (lemmaConcatAssociativity!858 lt!454311 lt!454315 lt!454294))))

(declare-fun ++!3584 (List!13931 List!13931) List!13931)

(assert (=> b!1368952 (= (++!3584 (++!3584 lt!454311 lt!454315) lt!454294) (++!3584 lt!454311 (++!3584 lt!454315 lt!454294)))))

(declare-fun lt!454313 () Unit!20071)

(assert (=> b!1368952 (= lt!454313 lt!454298)))

(declare-fun lt!454299 () List!13928)

(assert (=> b!1368952 (= lt!454299 (++!3578 (list!5330 (BalanceConc!9069 Empty!4564)) (list!5330 (charsOf!1373 (_1!7618 (v!21459 lt!454297))))))))

(declare-fun lt!454307 () List!13928)

(assert (=> b!1368952 (= lt!454307 (list!5330 (_2!7618 (v!21459 lt!454297))))))

(declare-fun lt!454322 () List!13931)

(assert (=> b!1368952 (= lt!454322 (list!5331 (append!404 (BalanceConc!9071 Empty!4565) (_1!7618 (v!21459 lt!454297)))))))

(declare-fun lt!454308 () Unit!20071)

(declare-fun lemmaLexThenLexPrefix!194 (LexerInterface!2096 List!13930 List!13928 List!13928 List!13931 List!13931 List!13928) Unit!20071)

(assert (=> b!1368952 (= lt!454308 (lemmaLexThenLexPrefix!194 thiss!19762 rules!2550 lt!454299 lt!454307 lt!454322 (list!5331 (_1!7614 lt!454304)) (list!5330 (_2!7614 lt!454304))))))

(assert (=> b!1368952 (= (lexList!614 thiss!19762 rules!2550 lt!454299) (tuple2!13455 lt!454322 Nil!13862))))

(declare-fun lt!454325 () Unit!20071)

(assert (=> b!1368952 (= lt!454325 lt!454308)))

(assert (=> b!1368952 (= lt!454320 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454297)))))))

(declare-fun lt!454314 () Option!2664)

(assert (=> b!1368952 (= lt!454314 (maxPrefixZipperSequence!552 thiss!19762 rules!2550 lt!454320))))

(declare-fun c!225266 () Bool)

(assert (=> b!1368952 (= c!225266 ((_ is Some!2663) lt!454314))))

(assert (=> b!1368952 (= (lexRec!279 thiss!19762 rules!2550 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454297))))) e!875207)))

(declare-fun lt!454319 () Unit!20071)

(declare-fun Unit!20084 () Unit!20071)

(assert (=> b!1368952 (= lt!454319 Unit!20084)))

(assert (=> b!1368952 (= lt!454301 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454297)))))))

(declare-fun lt!454321 () List!13928)

(assert (=> b!1368952 (= lt!454321 (list!5330 lt!454301))))

(declare-fun lt!454310 () List!13928)

(assert (=> b!1368952 (= lt!454310 (list!5330 (_2!7618 (v!21459 lt!454297))))))

(declare-fun lt!454295 () Unit!20071)

(assert (=> b!1368952 (= lt!454295 (lemmaConcatTwoListThenFSndIsSuffix!235 lt!454321 lt!454310))))

(assert (=> b!1368952 (isSuffix!257 lt!454310 (++!3578 lt!454321 lt!454310))))

(declare-fun lt!454317 () Unit!20071)

(assert (=> b!1368952 (= lt!454317 lt!454295)))

(declare-fun lt!454300 () tuple2!13456)

(declare-fun b!1368953 () Bool)

(assert (=> b!1368953 (= lt!454300 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454314))))))

(assert (=> b!1368953 (= e!875207 (tuple2!13457 (prepend!368 (_1!7614 lt!454300) (_1!7618 (v!21459 lt!454314))) (_2!7614 lt!454300)))))

(declare-fun b!1368954 () Bool)

(assert (=> b!1368954 (= e!875211 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!453461))))

(assert (= (and d!390103 c!225269) b!1368952))

(assert (= (and d!390103 (not c!225269)) b!1368950))

(assert (= (and b!1368952 c!225268) b!1368948))

(assert (= (and b!1368952 (not c!225268)) b!1368954))

(assert (= (and b!1368952 c!225266) b!1368953))

(assert (= (and b!1368952 (not c!225266)) b!1368949))

(assert (= (and d!390103 res!616594) b!1368951))

(assert (=> d!390103 m!1535795))

(assert (=> d!390103 m!1537789))

(declare-fun m!1538635 () Bool)

(assert (=> d!390103 m!1538635))

(declare-fun m!1538637 () Bool)

(assert (=> d!390103 m!1538637))

(declare-fun m!1538639 () Bool)

(assert (=> d!390103 m!1538639))

(declare-fun m!1538647 () Bool)

(assert (=> d!390103 m!1538647))

(declare-fun m!1538649 () Bool)

(assert (=> d!390103 m!1538649))

(declare-fun m!1538653 () Bool)

(assert (=> d!390103 m!1538653))

(declare-fun m!1538655 () Bool)

(assert (=> d!390103 m!1538655))

(assert (=> d!390103 m!1538639))

(declare-fun m!1538657 () Bool)

(assert (=> b!1368952 m!1538657))

(declare-fun m!1538659 () Bool)

(assert (=> b!1368952 m!1538659))

(declare-fun m!1538661 () Bool)

(assert (=> b!1368952 m!1538661))

(declare-fun m!1538663 () Bool)

(assert (=> b!1368952 m!1538663))

(declare-fun m!1538665 () Bool)

(assert (=> b!1368952 m!1538665))

(declare-fun m!1538667 () Bool)

(assert (=> b!1368952 m!1538667))

(declare-fun m!1538669 () Bool)

(assert (=> b!1368952 m!1538669))

(declare-fun m!1538671 () Bool)

(assert (=> b!1368952 m!1538671))

(declare-fun m!1538673 () Bool)

(assert (=> b!1368952 m!1538673))

(assert (=> b!1368952 m!1538665))

(declare-fun m!1538677 () Bool)

(assert (=> b!1368952 m!1538677))

(declare-fun m!1538679 () Bool)

(assert (=> b!1368952 m!1538679))

(assert (=> b!1368952 m!1538665))

(declare-fun m!1538685 () Bool)

(assert (=> b!1368952 m!1538685))

(declare-fun m!1538689 () Bool)

(assert (=> b!1368952 m!1538689))

(assert (=> b!1368952 m!1538689))

(declare-fun m!1538691 () Bool)

(assert (=> b!1368952 m!1538691))

(declare-fun m!1538693 () Bool)

(assert (=> b!1368952 m!1538693))

(declare-fun m!1538695 () Bool)

(assert (=> b!1368952 m!1538695))

(declare-fun m!1538697 () Bool)

(assert (=> b!1368952 m!1538697))

(declare-fun m!1538699 () Bool)

(assert (=> b!1368952 m!1538699))

(declare-fun m!1538701 () Bool)

(assert (=> b!1368952 m!1538701))

(assert (=> b!1368952 m!1537789))

(declare-fun m!1538703 () Bool)

(assert (=> b!1368952 m!1538703))

(declare-fun m!1538705 () Bool)

(assert (=> b!1368952 m!1538705))

(assert (=> b!1368952 m!1538701))

(declare-fun m!1538707 () Bool)

(assert (=> b!1368952 m!1538707))

(assert (=> b!1368952 m!1538693))

(assert (=> b!1368952 m!1538667))

(declare-fun m!1538709 () Bool)

(assert (=> b!1368952 m!1538709))

(declare-fun m!1538711 () Bool)

(assert (=> b!1368952 m!1538711))

(assert (=> b!1368952 m!1538649))

(declare-fun m!1538713 () Bool)

(assert (=> b!1368952 m!1538713))

(assert (=> b!1368952 m!1538657))

(declare-fun m!1538715 () Bool)

(assert (=> b!1368952 m!1538715))

(assert (=> b!1368952 m!1538671))

(declare-fun m!1538717 () Bool)

(assert (=> b!1368952 m!1538717))

(assert (=> b!1368952 m!1538671))

(assert (=> b!1368952 m!1538661))

(declare-fun m!1538719 () Bool)

(assert (=> b!1368952 m!1538719))

(assert (=> b!1368952 m!1538709))

(assert (=> b!1368952 m!1537789))

(assert (=> b!1368952 m!1538673))

(declare-fun m!1538727 () Bool)

(assert (=> b!1368952 m!1538727))

(declare-fun m!1538731 () Bool)

(assert (=> b!1368952 m!1538731))

(assert (=> b!1368952 m!1538699))

(declare-fun m!1538735 () Bool)

(assert (=> b!1368952 m!1538735))

(declare-fun m!1538739 () Bool)

(assert (=> b!1368953 m!1538739))

(declare-fun m!1538743 () Bool)

(assert (=> b!1368953 m!1538743))

(declare-fun m!1538745 () Bool)

(assert (=> b!1368951 m!1538745))

(assert (=> b!1368951 m!1538649))

(declare-fun m!1538747 () Bool)

(assert (=> b!1368951 m!1538747))

(declare-fun m!1538749 () Bool)

(assert (=> b!1368948 m!1538749))

(declare-fun m!1538751 () Bool)

(assert (=> b!1368948 m!1538751))

(assert (=> d!389709 d!390103))

(declare-fun b!1368978 () Bool)

(declare-fun e!875228 () List!13928)

(assert (=> b!1368978 (= e!875228 (Cons!13862 (h!19263 (t!121279 lt!453466)) (++!3578 (t!121279 (t!121279 lt!453466)) (getSuffix!563 lt!453465 lt!453466))))))

(declare-fun lt!454336 () List!13928)

(declare-fun e!875227 () Bool)

(declare-fun b!1368980 () Bool)

(assert (=> b!1368980 (= e!875227 (or (not (= (getSuffix!563 lt!453465 lt!453466) Nil!13862)) (= lt!454336 (t!121279 lt!453466))))))

(declare-fun b!1368977 () Bool)

(assert (=> b!1368977 (= e!875228 (getSuffix!563 lt!453465 lt!453466))))

(declare-fun b!1368979 () Bool)

(declare-fun res!616601 () Bool)

(assert (=> b!1368979 (=> (not res!616601) (not e!875227))))

(assert (=> b!1368979 (= res!616601 (= (size!11363 lt!454336) (+ (size!11363 (t!121279 lt!453466)) (size!11363 (getSuffix!563 lt!453465 lt!453466)))))))

(declare-fun d!390345 () Bool)

(assert (=> d!390345 e!875227))

(declare-fun res!616602 () Bool)

(assert (=> d!390345 (=> (not res!616602) (not e!875227))))

(assert (=> d!390345 (= res!616602 (= (content!2019 lt!454336) ((_ map or) (content!2019 (t!121279 lt!453466)) (content!2019 (getSuffix!563 lt!453465 lt!453466)))))))

(assert (=> d!390345 (= lt!454336 e!875228)))

(declare-fun c!225278 () Bool)

(assert (=> d!390345 (= c!225278 ((_ is Nil!13862) (t!121279 lt!453466)))))

(assert (=> d!390345 (= (++!3578 (t!121279 lt!453466) (getSuffix!563 lt!453465 lt!453466)) lt!454336)))

(assert (= (and d!390345 c!225278) b!1368977))

(assert (= (and d!390345 (not c!225278)) b!1368978))

(assert (= (and d!390345 res!616602) b!1368979))

(assert (= (and b!1368979 res!616601) b!1368980))

(assert (=> b!1368978 m!1535853))

(declare-fun m!1538753 () Bool)

(assert (=> b!1368978 m!1538753))

(declare-fun m!1538755 () Bool)

(assert (=> b!1368979 m!1538755))

(assert (=> b!1368979 m!1537393))

(assert (=> b!1368979 m!1535853))

(assert (=> b!1368979 m!1536215))

(declare-fun m!1538757 () Bool)

(assert (=> d!390345 m!1538757))

(assert (=> d!390345 m!1537323))

(assert (=> d!390345 m!1535853))

(assert (=> d!390345 m!1536221))

(assert (=> b!1367463 d!390345))

(declare-fun d!390347 () Bool)

(declare-fun lt!454337 () Bool)

(assert (=> d!390347 (= lt!454337 (isEmpty!8341 (list!5330 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))))

(assert (=> d!390347 (= lt!454337 (isEmpty!8344 (c!224866 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))))

(assert (=> d!390347 (= (isEmpty!8338 (_2!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))))) lt!454337)))

(declare-fun bs!335418 () Bool)

(assert (= bs!335418 d!390347))

(declare-fun m!1538759 () Bool)

(assert (=> bs!335418 m!1538759))

(assert (=> bs!335418 m!1538759))

(declare-fun m!1538761 () Bool)

(assert (=> bs!335418 m!1538761))

(declare-fun m!1538763 () Bool)

(assert (=> bs!335418 m!1538763))

(assert (=> b!1367608 d!390347))

(declare-fun b!1368981 () Bool)

(declare-fun e!875229 () Bool)

(declare-fun lt!454340 () tuple2!13456)

(assert (=> b!1368981 (= e!875229 (not (isEmpty!8348 (_1!7614 lt!454340))))))

(declare-fun b!1368982 () Bool)

(declare-fun e!875230 () Bool)

(assert (=> b!1368982 (= e!875230 (= (_2!7614 lt!454340) (print!862 thiss!19762 (singletonSeq!1028 t2!34))))))

(declare-fun b!1368983 () Bool)

(declare-fun res!616604 () Bool)

(declare-fun e!875231 () Bool)

(assert (=> b!1368983 (=> (not res!616604) (not e!875231))))

(assert (=> b!1368983 (= res!616604 (= (list!5331 (_1!7614 lt!454340)) (_1!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))))

(declare-fun d!390349 () Bool)

(assert (=> d!390349 e!875231))

(declare-fun res!616605 () Bool)

(assert (=> d!390349 (=> (not res!616605) (not e!875231))))

(assert (=> d!390349 (= res!616605 e!875230)))

(declare-fun c!225279 () Bool)

(assert (=> d!390349 (= c!225279 (> (size!11366 (_1!7614 lt!454340)) 0))))

(assert (=> d!390349 (= lt!454340 (lexTailRecV2!408 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34)) (BalanceConc!9069 Empty!4564) (print!862 thiss!19762 (singletonSeq!1028 t2!34)) (BalanceConc!9071 Empty!4565)))))

(assert (=> d!390349 (= (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))) lt!454340)))

(declare-fun b!1368984 () Bool)

(assert (=> b!1368984 (= e!875230 e!875229)))

(declare-fun res!616603 () Bool)

(assert (=> b!1368984 (= res!616603 (< (size!11358 (_2!7614 lt!454340)) (size!11358 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))

(assert (=> b!1368984 (=> (not res!616603) (not e!875229))))

(declare-fun b!1368985 () Bool)

(assert (=> b!1368985 (= e!875231 (= (list!5330 (_2!7614 lt!454340)) (_2!7613 (lexList!614 thiss!19762 rules!2550 (list!5330 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))))

(assert (= (and d!390349 c!225279) b!1368984))

(assert (= (and d!390349 (not c!225279)) b!1368982))

(assert (= (and b!1368984 res!616603) b!1368981))

(assert (= (and d!390349 res!616605) b!1368983))

(assert (= (and b!1368983 res!616604) b!1368985))

(declare-fun m!1538765 () Bool)

(assert (=> b!1368983 m!1538765))

(assert (=> b!1368983 m!1535829))

(declare-fun m!1538767 () Bool)

(assert (=> b!1368983 m!1538767))

(assert (=> b!1368983 m!1538767))

(declare-fun m!1538769 () Bool)

(assert (=> b!1368983 m!1538769))

(declare-fun m!1538771 () Bool)

(assert (=> b!1368985 m!1538771))

(assert (=> b!1368985 m!1535829))

(assert (=> b!1368985 m!1538767))

(assert (=> b!1368985 m!1538767))

(assert (=> b!1368985 m!1538769))

(declare-fun m!1538773 () Bool)

(assert (=> d!390349 m!1538773))

(assert (=> d!390349 m!1535829))

(assert (=> d!390349 m!1535829))

(declare-fun m!1538775 () Bool)

(assert (=> d!390349 m!1538775))

(declare-fun m!1538777 () Bool)

(assert (=> b!1368984 m!1538777))

(assert (=> b!1368984 m!1535829))

(declare-fun m!1538779 () Bool)

(assert (=> b!1368984 m!1538779))

(declare-fun m!1538781 () Bool)

(assert (=> b!1368981 m!1538781))

(assert (=> b!1367608 d!390349))

(assert (=> b!1367608 d!389711))

(assert (=> b!1367608 d!389713))

(declare-fun d!390351 () Bool)

(declare-fun lt!454342 () C!7720)

(assert (=> d!390351 (contains!2585 (list!5330 lt!453456) lt!454342)))

(declare-fun e!875232 () C!7720)

(assert (=> d!390351 (= lt!454342 e!875232)))

(declare-fun c!225280 () Bool)

(assert (=> d!390351 (= c!225280 (= 0 0))))

(declare-fun e!875233 () Bool)

(assert (=> d!390351 e!875233))

(declare-fun res!616606 () Bool)

(assert (=> d!390351 (=> (not res!616606) (not e!875233))))

(assert (=> d!390351 (= res!616606 (<= 0 0))))

(assert (=> d!390351 (= (apply!3384 (list!5330 lt!453456) 0) lt!454342)))

(declare-fun b!1368986 () Bool)

(assert (=> b!1368986 (= e!875233 (< 0 (size!11363 (list!5330 lt!453456))))))

(declare-fun b!1368987 () Bool)

(assert (=> b!1368987 (= e!875232 (head!2454 (list!5330 lt!453456)))))

(declare-fun b!1368988 () Bool)

(assert (=> b!1368988 (= e!875232 (apply!3384 (tail!1974 (list!5330 lt!453456)) (- 0 1)))))

(assert (= (and d!390351 res!616606) b!1368986))

(assert (= (and d!390351 c!225280) b!1368987))

(assert (= (and d!390351 (not c!225280)) b!1368988))

(assert (=> d!390351 m!1535875))

(declare-fun m!1538783 () Bool)

(assert (=> d!390351 m!1538783))

(assert (=> b!1368986 m!1535875))

(assert (=> b!1368986 m!1535933))

(assert (=> b!1368987 m!1535875))

(declare-fun m!1538785 () Bool)

(assert (=> b!1368987 m!1538785))

(assert (=> b!1368988 m!1535875))

(declare-fun m!1538787 () Bool)

(assert (=> b!1368988 m!1538787))

(assert (=> b!1368988 m!1538787))

(declare-fun m!1538789 () Bool)

(assert (=> b!1368988 m!1538789))

(assert (=> d!389485 d!390351))

(assert (=> d!389485 d!389609))

(declare-fun b!1368989 () Bool)

(declare-fun e!875235 () C!7720)

(declare-fun e!875236 () C!7720)

(assert (=> b!1368989 (= e!875235 e!875236)))

(declare-fun lt!454343 () Bool)

(assert (=> b!1368989 (= lt!454343 (appendIndex!166 (list!5333 (left!11866 (c!224866 lt!453456))) (list!5333 (right!12196 (c!224866 lt!453456))) 0))))

(declare-fun c!225282 () Bool)

(assert (=> b!1368989 (= c!225282 (< 0 (size!11364 (left!11866 (c!224866 lt!453456)))))))

(declare-fun b!1368990 () Bool)

(declare-fun e!875234 () Int)

(assert (=> b!1368990 (= e!875234 0)))

(declare-fun b!1368991 () Bool)

(assert (=> b!1368991 (= e!875235 (apply!3392 (xs!7291 (c!224866 lt!453456)) 0))))

(declare-fun d!390353 () Bool)

(declare-fun lt!454344 () C!7720)

(assert (=> d!390353 (= lt!454344 (apply!3384 (list!5333 (c!224866 lt!453456)) 0))))

(assert (=> d!390353 (= lt!454344 e!875235)))

(declare-fun c!225283 () Bool)

(assert (=> d!390353 (= c!225283 ((_ is Leaf!6961) (c!224866 lt!453456)))))

(declare-fun e!875237 () Bool)

(assert (=> d!390353 e!875237))

(declare-fun res!616607 () Bool)

(assert (=> d!390353 (=> (not res!616607) (not e!875237))))

(assert (=> d!390353 (= res!616607 (<= 0 0))))

(assert (=> d!390353 (= (apply!3385 (c!224866 lt!453456) 0) lt!454344)))

(declare-fun bm!92034 () Bool)

(declare-fun c!225281 () Bool)

(assert (=> bm!92034 (= c!225281 c!225282)))

(declare-fun call!92039 () C!7720)

(assert (=> bm!92034 (= call!92039 (apply!3385 (ite c!225282 (left!11866 (c!224866 lt!453456)) (right!12196 (c!224866 lt!453456))) e!875234))))

(declare-fun b!1368992 () Bool)

(assert (=> b!1368992 (= e!875236 call!92039)))

(declare-fun b!1368993 () Bool)

(assert (=> b!1368993 (= e!875236 call!92039)))

(declare-fun b!1368994 () Bool)

(assert (=> b!1368994 (= e!875234 (- 0 (size!11364 (left!11866 (c!224866 lt!453456)))))))

(declare-fun b!1368995 () Bool)

(assert (=> b!1368995 (= e!875237 (< 0 (size!11364 (c!224866 lt!453456))))))

(assert (= (and d!390353 res!616607) b!1368995))

(assert (= (and d!390353 c!225283) b!1368991))

(assert (= (and d!390353 (not c!225283)) b!1368989))

(assert (= (and b!1368989 c!225282) b!1368993))

(assert (= (and b!1368989 (not c!225282)) b!1368992))

(assert (= (or b!1368993 b!1368992) bm!92034))

(assert (= (and bm!92034 c!225281) b!1368990))

(assert (= (and bm!92034 (not c!225281)) b!1368994))

(assert (=> b!1368989 m!1537879))

(assert (=> b!1368989 m!1537881))

(assert (=> b!1368989 m!1537879))

(assert (=> b!1368989 m!1537881))

(declare-fun m!1538793 () Bool)

(assert (=> b!1368989 m!1538793))

(declare-fun m!1538795 () Bool)

(assert (=> b!1368989 m!1538795))

(declare-fun m!1538797 () Bool)

(assert (=> bm!92034 m!1538797))

(assert (=> b!1368994 m!1538795))

(assert (=> b!1368995 m!1535935))

(assert (=> d!390353 m!1536397))

(assert (=> d!390353 m!1536397))

(declare-fun m!1538799 () Bool)

(assert (=> d!390353 m!1538799))

(declare-fun m!1538801 () Bool)

(assert (=> b!1368991 m!1538801))

(assert (=> d!389485 d!390353))

(declare-fun e!875238 () Bool)

(declare-fun b!1368996 () Bool)

(assert (=> b!1368996 (= e!875238 (dynLambda!6274 lambda!57884 (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883)))))))

(declare-fun b!1368997 () Bool)

(declare-fun e!875241 () Regex!3715)

(assert (=> b!1368997 (= e!875241 (getWitness!349 (t!121283 (t!121283 (map!3062 rules!2550 lambda!57883))) lambda!57884))))

(declare-fun b!1368998 () Bool)

(declare-fun e!875239 () Regex!3715)

(assert (=> b!1368998 (= e!875239 (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883))))))

(declare-fun b!1368999 () Bool)

(declare-fun e!875240 () Bool)

(declare-fun lt!454346 () Regex!3715)

(assert (=> b!1368999 (= e!875240 (contains!2587 (t!121283 (map!3062 rules!2550 lambda!57883)) lt!454346))))

(declare-fun b!1369001 () Bool)

(declare-fun lt!454345 () Unit!20071)

(declare-fun Unit!20087 () Unit!20071)

(assert (=> b!1369001 (= lt!454345 Unit!20087)))

(assert (=> b!1369001 false))

(assert (=> b!1369001 (= e!875241 (head!2457 (t!121283 (map!3062 rules!2550 lambda!57883))))))

(declare-fun d!390359 () Bool)

(assert (=> d!390359 e!875240))

(declare-fun res!616608 () Bool)

(assert (=> d!390359 (=> (not res!616608) (not e!875240))))

(assert (=> d!390359 (= res!616608 (dynLambda!6274 lambda!57884 lt!454346))))

(assert (=> d!390359 (= lt!454346 e!875239)))

(declare-fun c!225284 () Bool)

(assert (=> d!390359 (= c!225284 e!875238)))

(declare-fun res!616609 () Bool)

(assert (=> d!390359 (=> (not res!616609) (not e!875238))))

(assert (=> d!390359 (= res!616609 ((_ is Cons!13866) (t!121283 (map!3062 rules!2550 lambda!57883))))))

(assert (=> d!390359 (exists!461 (t!121283 (map!3062 rules!2550 lambda!57883)) lambda!57884)))

(assert (=> d!390359 (= (getWitness!349 (t!121283 (map!3062 rules!2550 lambda!57883)) lambda!57884) lt!454346)))

(declare-fun b!1369000 () Bool)

(assert (=> b!1369000 (= e!875239 e!875241)))

(declare-fun c!225285 () Bool)

(assert (=> b!1369000 (= c!225285 ((_ is Cons!13866) (t!121283 (map!3062 rules!2550 lambda!57883))))))

(assert (= (and d!390359 res!616609) b!1368996))

(assert (= (and d!390359 c!225284) b!1368998))

(assert (= (and d!390359 (not c!225284)) b!1369000))

(assert (= (and b!1369000 c!225285) b!1368997))

(assert (= (and b!1369000 (not c!225285)) b!1369001))

(assert (= (and d!390359 res!616608) b!1368999))

(declare-fun b_lambda!41739 () Bool)

(assert (=> (not b_lambda!41739) (not b!1368996)))

(declare-fun b_lambda!41741 () Bool)

(assert (=> (not b_lambda!41741) (not d!390359)))

(declare-fun m!1538803 () Bool)

(assert (=> b!1369001 m!1538803))

(declare-fun m!1538805 () Bool)

(assert (=> b!1368997 m!1538805))

(declare-fun m!1538807 () Bool)

(assert (=> b!1368996 m!1538807))

(declare-fun m!1538809 () Bool)

(assert (=> d!390359 m!1538809))

(declare-fun m!1538811 () Bool)

(assert (=> d!390359 m!1538811))

(declare-fun m!1538813 () Bool)

(assert (=> b!1368999 m!1538813))

(assert (=> b!1367842 d!390359))

(declare-fun d!390363 () Bool)

(assert (=> d!390363 (= (head!2457 (map!3062 rules!2550 lambda!57883)) (h!19267 (map!3062 rules!2550 lambda!57883)))))

(assert (=> b!1367846 d!390363))

(declare-fun d!390365 () Bool)

(assert (=> d!390365 (= (isEmpty!8345 lt!453614) (not ((_ is Some!2661) lt!453614)))))

(assert (=> d!389579 d!390365))

(declare-fun b!1369011 () Bool)

(declare-fun e!875244 () Bool)

(assert (=> b!1369011 (= e!875244 (>= (size!11363 (list!5330 lt!453456)) (size!11363 (list!5330 lt!453456))))))

(declare-fun b!1369008 () Bool)

(declare-fun e!875245 () Bool)

(declare-fun e!875246 () Bool)

(assert (=> b!1369008 (= e!875245 e!875246)))

(declare-fun res!616616 () Bool)

(assert (=> b!1369008 (=> (not res!616616) (not e!875246))))

(assert (=> b!1369008 (= res!616616 (not ((_ is Nil!13862) (list!5330 lt!453456))))))

(declare-fun b!1369010 () Bool)

(assert (=> b!1369010 (= e!875246 (isPrefix!1125 (tail!1974 (list!5330 lt!453456)) (tail!1974 (list!5330 lt!453456))))))

(declare-fun d!390367 () Bool)

(assert (=> d!390367 e!875244))

(declare-fun res!616615 () Bool)

(assert (=> d!390367 (=> res!616615 e!875244)))

(declare-fun lt!454347 () Bool)

(assert (=> d!390367 (= res!616615 (not lt!454347))))

(assert (=> d!390367 (= lt!454347 e!875245)))

(declare-fun res!616614 () Bool)

(assert (=> d!390367 (=> res!616614 e!875245)))

(assert (=> d!390367 (= res!616614 ((_ is Nil!13862) (list!5330 lt!453456)))))

(assert (=> d!390367 (= (isPrefix!1125 (list!5330 lt!453456) (list!5330 lt!453456)) lt!454347)))

(declare-fun b!1369009 () Bool)

(declare-fun res!616613 () Bool)

(assert (=> b!1369009 (=> (not res!616613) (not e!875246))))

(assert (=> b!1369009 (= res!616613 (= (head!2454 (list!5330 lt!453456)) (head!2454 (list!5330 lt!453456))))))

(assert (= (and d!390367 (not res!616614)) b!1369008))

(assert (= (and b!1369008 res!616616) b!1369009))

(assert (= (and b!1369009 res!616613) b!1369010))

(assert (= (and d!390367 (not res!616615)) b!1369011))

(assert (=> b!1369011 m!1535875))

(assert (=> b!1369011 m!1535933))

(assert (=> b!1369011 m!1535875))

(assert (=> b!1369011 m!1535933))

(assert (=> b!1369010 m!1535875))

(assert (=> b!1369010 m!1538787))

(assert (=> b!1369010 m!1535875))

(assert (=> b!1369010 m!1538787))

(assert (=> b!1369010 m!1538787))

(assert (=> b!1369010 m!1538787))

(declare-fun m!1538819 () Bool)

(assert (=> b!1369010 m!1538819))

(assert (=> b!1369009 m!1535875))

(assert (=> b!1369009 m!1538785))

(assert (=> b!1369009 m!1535875))

(assert (=> b!1369009 m!1538785))

(assert (=> d!389579 d!390367))

(declare-fun d!390369 () Bool)

(assert (=> d!390369 (isPrefix!1125 (list!5330 lt!453456) (list!5330 lt!453456))))

(declare-fun lt!454348 () Unit!20071)

(assert (=> d!390369 (= lt!454348 (choose!8421 (list!5330 lt!453456) (list!5330 lt!453456)))))

(assert (=> d!390369 (= (lemmaIsPrefixRefl!787 (list!5330 lt!453456) (list!5330 lt!453456)) lt!454348)))

(declare-fun bs!335426 () Bool)

(assert (= bs!335426 d!390369))

(assert (=> bs!335426 m!1535875))

(assert (=> bs!335426 m!1535875))

(assert (=> bs!335426 m!1536385))

(assert (=> bs!335426 m!1535875))

(assert (=> bs!335426 m!1535875))

(declare-fun m!1538821 () Bool)

(assert (=> bs!335426 m!1538821))

(assert (=> d!389579 d!390369))

(assert (=> d!389579 d!389995))

(assert (=> d!389687 d!389897))

(declare-fun b!1369111 () Bool)

(declare-fun res!616631 () Bool)

(declare-fun e!875297 () Bool)

(assert (=> b!1369111 (=> (not res!616631) (not e!875297))))

(declare-fun call!92046 () Bool)

(assert (=> b!1369111 (= res!616631 call!92046)))

(declare-fun e!875294 () Bool)

(assert (=> b!1369111 (= e!875294 e!875297)))

(declare-fun bm!92041 () Bool)

(declare-fun call!92048 () Bool)

(declare-fun call!92047 () Bool)

(assert (=> bm!92041 (= call!92048 call!92047)))

(declare-fun b!1369112 () Bool)

(declare-fun e!875291 () Bool)

(declare-fun e!875292 () Bool)

(assert (=> b!1369112 (= e!875291 e!875292)))

(declare-fun c!225292 () Bool)

(assert (=> b!1369112 (= c!225292 ((_ is Star!3715) lt!453462))))

(declare-fun b!1369113 () Bool)

(declare-fun e!875296 () Bool)

(declare-fun e!875293 () Bool)

(assert (=> b!1369113 (= e!875296 e!875293)))

(declare-fun res!616628 () Bool)

(assert (=> b!1369113 (=> (not res!616628) (not e!875293))))

(assert (=> b!1369113 (= res!616628 call!92046)))

(declare-fun bm!92043 () Bool)

(declare-fun c!225293 () Bool)

(assert (=> bm!92043 (= call!92046 (validRegex!1615 (ite c!225293 (regOne!7943 lt!453462) (regOne!7942 lt!453462))))))

(declare-fun b!1369114 () Bool)

(declare-fun e!875295 () Bool)

(assert (=> b!1369114 (= e!875292 e!875295)))

(declare-fun res!616629 () Bool)

(assert (=> b!1369114 (= res!616629 (not (nullable!1195 (reg!4044 lt!453462))))))

(assert (=> b!1369114 (=> (not res!616629) (not e!875295))))

(declare-fun b!1369115 () Bool)

(assert (=> b!1369115 (= e!875295 call!92047)))

(declare-fun b!1369116 () Bool)

(assert (=> b!1369116 (= e!875292 e!875294)))

(assert (=> b!1369116 (= c!225293 ((_ is Union!3715) lt!453462))))

(declare-fun b!1369117 () Bool)

(declare-fun res!616630 () Bool)

(assert (=> b!1369117 (=> res!616630 e!875296)))

(assert (=> b!1369117 (= res!616630 (not ((_ is Concat!6207) lt!453462)))))

(assert (=> b!1369117 (= e!875294 e!875296)))

(declare-fun bm!92042 () Bool)

(assert (=> bm!92042 (= call!92047 (validRegex!1615 (ite c!225292 (reg!4044 lt!453462) (ite c!225293 (regTwo!7943 lt!453462) (regTwo!7942 lt!453462)))))))

(declare-fun d!390371 () Bool)

(declare-fun res!616627 () Bool)

(assert (=> d!390371 (=> res!616627 e!875291)))

(assert (=> d!390371 (= res!616627 ((_ is ElementMatch!3715) lt!453462))))

(assert (=> d!390371 (= (validRegex!1615 lt!453462) e!875291)))

(declare-fun b!1369118 () Bool)

(assert (=> b!1369118 (= e!875293 call!92048)))

(declare-fun b!1369119 () Bool)

(assert (=> b!1369119 (= e!875297 call!92048)))

(assert (= (and d!390371 (not res!616627)) b!1369112))

(assert (= (and b!1369112 c!225292) b!1369114))

(assert (= (and b!1369112 (not c!225292)) b!1369116))

(assert (= (and b!1369114 res!616629) b!1369115))

(assert (= (and b!1369116 c!225293) b!1369111))

(assert (= (and b!1369116 (not c!225293)) b!1369117))

(assert (= (and b!1369111 res!616631) b!1369119))

(assert (= (and b!1369117 (not res!616630)) b!1369113))

(assert (= (and b!1369113 res!616628) b!1369118))

(assert (= (or b!1369111 b!1369113) bm!92043))

(assert (= (or b!1369119 b!1369118) bm!92041))

(assert (= (or b!1369115 bm!92041) bm!92042))

(declare-fun m!1538841 () Bool)

(assert (=> bm!92043 m!1538841))

(declare-fun m!1538847 () Bool)

(assert (=> b!1369114 m!1538847))

(declare-fun m!1538849 () Bool)

(assert (=> bm!92042 m!1538849))

(assert (=> d!389687 d!390371))

(assert (=> b!1367855 d!390015))

(declare-fun d!390387 () Bool)

(declare-fun dynLambda!6282 (Int BalanceConc!9068) TokenValue!2491)

(assert (=> d!390387 (= (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705))))) (dynLambda!6282 (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705))))))))

(declare-fun b_lambda!41771 () Bool)

(assert (=> (not b_lambda!41771) (not d!390387)))

(declare-fun t!121398 () Bool)

(declare-fun tb!72141 () Bool)

(assert (=> (and b!1367219 (= (toValue!3664 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121398) tb!72141))

(declare-fun result!87590 () Bool)

(assert (=> tb!72141 (= result!87590 (inv!21 (dynLambda!6282 (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705))))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun m!1538861 () Bool)

(assert (=> tb!72141 m!1538861))

(assert (=> d!390387 t!121398))

(declare-fun b_and!91763 () Bool)

(assert (= b_and!91643 (and (=> t!121398 result!87590) b_and!91763)))

(declare-fun tb!72143 () Bool)

(declare-fun t!121400 () Bool)

(assert (=> (and b!1367242 (= (toValue!3664 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121400) tb!72143))

(declare-fun result!87594 () Bool)

(assert (= result!87594 result!87590))

(assert (=> d!390387 t!121400))

(declare-fun b_and!91765 () Bool)

(assert (= b_and!91647 (and (=> t!121400 result!87594) b_and!91765)))

(declare-fun tb!72145 () Bool)

(declare-fun t!121402 () Bool)

(assert (=> (and b!1367212 (= (toValue!3664 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121402) tb!72145))

(declare-fun result!87596 () Bool)

(assert (= result!87596 result!87590))

(assert (=> d!390387 t!121402))

(declare-fun b_and!91767 () Bool)

(assert (= b_and!91651 (and (=> t!121402 result!87596) b_and!91767)))

(declare-fun tb!72147 () Bool)

(declare-fun t!121404 () Bool)

(assert (=> (and b!1367918 (= (toValue!3664 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121404) tb!72147))

(declare-fun result!87598 () Bool)

(assert (= result!87598 result!87590))

(assert (=> d!390387 t!121404))

(declare-fun b_and!91769 () Bool)

(assert (= b_and!91707 (and (=> t!121404 result!87598) b_and!91769)))

(assert (=> d!390387 m!1536707))

(declare-fun m!1538863 () Bool)

(assert (=> d!390387 m!1538863))

(assert (=> b!1367855 d!390387))

(declare-fun d!390397 () Bool)

(declare-fun fromListB!718 (List!13928) BalanceConc!9068)

(assert (=> d!390397 (= (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705)))) (fromListB!718 (originalCharacters!3263 (_1!7615 (get!4341 lt!453705)))))))

(declare-fun bs!335438 () Bool)

(assert (= bs!335438 d!390397))

(declare-fun m!1538865 () Bool)

(assert (=> bs!335438 m!1538865))

(assert (=> b!1367855 d!390397))

(declare-fun b!1369125 () Bool)

(declare-fun e!875306 () Bool)

(declare-fun e!875305 () Bool)

(assert (=> b!1369125 (= e!875306 e!875305)))

(declare-fun res!616635 () Bool)

(declare-fun lt!454350 () tuple2!13454)

(assert (=> b!1369125 (= res!616635 (< (size!11363 (_2!7613 lt!454350)) (size!11363 (_2!7615 (v!21444 lt!453700)))))))

(assert (=> b!1369125 (=> (not res!616635) (not e!875305))))

(declare-fun b!1369126 () Bool)

(assert (=> b!1369126 (= e!875306 (= (_2!7613 lt!454350) (_2!7615 (v!21444 lt!453700))))))

(declare-fun b!1369127 () Bool)

(declare-fun e!875304 () tuple2!13454)

(assert (=> b!1369127 (= e!875304 (tuple2!13455 Nil!13865 (_2!7615 (v!21444 lt!453700))))))

(declare-fun b!1369128 () Bool)

(assert (=> b!1369128 (= e!875305 (not (isEmpty!8347 (_1!7613 lt!454350))))))

(declare-fun d!390399 () Bool)

(assert (=> d!390399 e!875306))

(declare-fun c!225294 () Bool)

(assert (=> d!390399 (= c!225294 (> (size!11370 (_1!7613 lt!454350)) 0))))

(assert (=> d!390399 (= lt!454350 e!875304)))

(declare-fun c!225295 () Bool)

(declare-fun lt!454349 () Option!2662)

(assert (=> d!390399 (= c!225295 ((_ is Some!2661) lt!454349))))

(assert (=> d!390399 (= lt!454349 (maxPrefix!1078 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453700))))))

(assert (=> d!390399 (= (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!453700))) lt!454350)))

(declare-fun b!1369129 () Bool)

(declare-fun lt!454351 () tuple2!13454)

(assert (=> b!1369129 (= e!875304 (tuple2!13455 (Cons!13865 (_1!7615 (v!21444 lt!454349)) (_1!7613 lt!454351)) (_2!7613 lt!454351)))))

(assert (=> b!1369129 (= lt!454351 (lexList!614 thiss!19762 rules!2550 (_2!7615 (v!21444 lt!454349))))))

(assert (= (and d!390399 c!225295) b!1369129))

(assert (= (and d!390399 (not c!225295)) b!1369127))

(assert (= (and d!390399 c!225294) b!1369125))

(assert (= (and d!390399 (not c!225294)) b!1369126))

(assert (= (and b!1369125 res!616635) b!1369128))

(declare-fun m!1538867 () Bool)

(assert (=> b!1369125 m!1538867))

(declare-fun m!1538869 () Bool)

(assert (=> b!1369125 m!1538869))

(declare-fun m!1538871 () Bool)

(assert (=> b!1369128 m!1538871))

(declare-fun m!1538873 () Bool)

(assert (=> d!390399 m!1538873))

(declare-fun m!1538875 () Bool)

(assert (=> d!390399 m!1538875))

(declare-fun m!1538877 () Bool)

(assert (=> b!1369129 m!1538877))

(assert (=> b!1367853 d!390399))

(declare-fun d!390401 () Bool)

(declare-fun c!225296 () Bool)

(assert (=> d!390401 (= c!225296 ((_ is Node!4564) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(declare-fun e!875307 () Bool)

(assert (=> d!390401 (= (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))) e!875307)))

(declare-fun b!1369130 () Bool)

(assert (=> b!1369130 (= e!875307 (inv!18222 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(declare-fun b!1369131 () Bool)

(declare-fun e!875308 () Bool)

(assert (=> b!1369131 (= e!875307 e!875308)))

(declare-fun res!616636 () Bool)

(assert (=> b!1369131 (= res!616636 (not ((_ is Leaf!6961) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))))))

(assert (=> b!1369131 (=> res!616636 e!875308)))

(declare-fun b!1369132 () Bool)

(assert (=> b!1369132 (= e!875308 (inv!18223 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(assert (= (and d!390401 c!225296) b!1369130))

(assert (= (and d!390401 (not c!225296)) b!1369131))

(assert (= (and b!1369131 (not res!616636)) b!1369132))

(declare-fun m!1538879 () Bool)

(assert (=> b!1369130 m!1538879))

(declare-fun m!1538881 () Bool)

(assert (=> b!1369132 m!1538881))

(assert (=> b!1367356 d!390401))

(declare-fun d!390403 () Bool)

(assert (=> d!390403 (= (Exists!867 lambda!57929) (choose!8416 lambda!57929))))

(declare-fun bs!335439 () Bool)

(assert (= bs!335439 d!390403))

(declare-fun m!1538883 () Bool)

(assert (=> bs!335439 m!1538883))

(assert (=> d!389697 d!390403))

(declare-fun bs!335440 () Bool)

(declare-fun d!390405 () Bool)

(assert (= bs!335440 (and d!390405 b!1367227)))

(declare-fun lambda!57983 () Int)

(assert (=> bs!335440 (= lambda!57983 lambda!57882)))

(declare-fun bs!335441 () Bool)

(assert (= bs!335441 (and d!390405 d!389697)))

(assert (=> bs!335441 (= lambda!57983 lambda!57929)))

(assert (=> d!390405 true))

(assert (=> d!390405 true))

(assert (=> d!390405 (Exists!867 lambda!57983)))

(assert (=> d!390405 true))

(declare-fun _$103!131 () Unit!20071)

(assert (=> d!390405 (= (choose!8417 lt!453462 lt!453466) _$103!131)))

(declare-fun bs!335442 () Bool)

(assert (= bs!335442 d!390405))

(declare-fun m!1538885 () Bool)

(assert (=> bs!335442 m!1538885))

(assert (=> d!389697 d!390405))

(assert (=> d!389697 d!390371))

(declare-fun d!390407 () Bool)

(declare-fun lt!454352 () Int)

(assert (=> d!390407 (>= lt!454352 0)))

(declare-fun e!875311 () Int)

(assert (=> d!390407 (= lt!454352 e!875311)))

(declare-fun c!225297 () Bool)

(assert (=> d!390407 (= c!225297 ((_ is Nil!13862) (originalCharacters!3263 t1!34)))))

(assert (=> d!390407 (= (size!11363 (originalCharacters!3263 t1!34)) lt!454352)))

(declare-fun b!1369135 () Bool)

(assert (=> b!1369135 (= e!875311 0)))

(declare-fun b!1369136 () Bool)

(assert (=> b!1369136 (= e!875311 (+ 1 (size!11363 (t!121279 (originalCharacters!3263 t1!34)))))))

(assert (= (and d!390407 c!225297) b!1369135))

(assert (= (and d!390407 (not c!225297)) b!1369136))

(declare-fun m!1538887 () Bool)

(assert (=> b!1369136 m!1538887))

(assert (=> b!1367883 d!390407))

(declare-fun d!390409 () Bool)

(declare-fun lt!454353 () Int)

(assert (=> d!390409 (>= lt!454353 0)))

(declare-fun e!875312 () Int)

(assert (=> d!390409 (= lt!454353 e!875312)))

(declare-fun c!225298 () Bool)

(assert (=> d!390409 (= c!225298 ((_ is Nil!13862) (originalCharacters!3263 t2!34)))))

(assert (=> d!390409 (= (size!11363 (originalCharacters!3263 t2!34)) lt!454353)))

(declare-fun b!1369137 () Bool)

(assert (=> b!1369137 (= e!875312 0)))

(declare-fun b!1369138 () Bool)

(assert (=> b!1369138 (= e!875312 (+ 1 (size!11363 (t!121279 (originalCharacters!3263 t2!34)))))))

(assert (= (and d!390409 c!225298) b!1369137))

(assert (= (and d!390409 (not c!225298)) b!1369138))

(declare-fun m!1538889 () Bool)

(assert (=> b!1369138 m!1538889))

(assert (=> b!1367885 d!390409))

(declare-fun d!390411 () Bool)

(declare-fun lt!454354 () Int)

(assert (=> d!390411 (>= lt!454354 0)))

(declare-fun e!875313 () Int)

(assert (=> d!390411 (= lt!454354 e!875313)))

(declare-fun c!225299 () Bool)

(assert (=> d!390411 (= c!225299 ((_ is Nil!13862) (_2!7615 (get!4341 lt!453705))))))

(assert (=> d!390411 (= (size!11363 (_2!7615 (get!4341 lt!453705))) lt!454354)))

(declare-fun b!1369139 () Bool)

(assert (=> b!1369139 (= e!875313 0)))

(declare-fun b!1369140 () Bool)

(assert (=> b!1369140 (= e!875313 (+ 1 (size!11363 (t!121279 (_2!7615 (get!4341 lt!453705))))))))

(assert (= (and d!390411 c!225299) b!1369139))

(assert (= (and d!390411 (not c!225299)) b!1369140))

(declare-fun m!1538891 () Bool)

(assert (=> b!1369140 m!1538891))

(assert (=> b!1367858 d!390411))

(assert (=> b!1367858 d!390015))

(declare-fun d!390413 () Bool)

(declare-fun lt!454355 () Int)

(assert (=> d!390413 (>= lt!454355 0)))

(declare-fun e!875314 () Int)

(assert (=> d!390413 (= lt!454355 e!875314)))

(declare-fun c!225300 () Bool)

(assert (=> d!390413 (= c!225300 ((_ is Nil!13862) lt!453458))))

(assert (=> d!390413 (= (size!11363 lt!453458) lt!454355)))

(declare-fun b!1369141 () Bool)

(assert (=> b!1369141 (= e!875314 0)))

(declare-fun b!1369142 () Bool)

(assert (=> b!1369142 (= e!875314 (+ 1 (size!11363 (t!121279 lt!453458))))))

(assert (= (and d!390413 c!225300) b!1369141))

(assert (= (and d!390413 (not c!225300)) b!1369142))

(declare-fun m!1538893 () Bool)

(assert (=> b!1369142 m!1538893))

(assert (=> b!1367858 d!390413))

(assert (=> b!1367815 d!389985))

(assert (=> d!389559 d!389931))

(declare-fun bs!335443 () Bool)

(declare-fun d!390415 () Bool)

(assert (= bs!335443 (and d!390415 b!1367244)))

(declare-fun lambda!57988 () Int)

(assert (=> bs!335443 (= lambda!57988 lambda!57883)))

(declare-fun bs!335444 () Bool)

(assert (= bs!335444 (and d!390415 d!389507)))

(assert (=> bs!335444 (= lambda!57988 lambda!57891)))

(declare-fun bs!335445 () Bool)

(assert (= bs!335445 (and d!390415 d!389621)))

(declare-fun lambda!57989 () Int)

(assert (=> bs!335445 (not (= lambda!57989 lambda!57913))))

(declare-fun bs!335446 () Bool)

(assert (= bs!335446 (and d!390415 d!389625)))

(assert (=> bs!335446 (not (= lambda!57989 lambda!57919))))

(assert (=> bs!335443 (not (= lambda!57989 lambda!57884))))

(assert (=> bs!335446 (= lambda!57989 lambda!57918)))

(declare-fun bs!335447 () Bool)

(assert (= bs!335447 (and d!390415 d!389875)))

(assert (=> bs!335447 (not (= lambda!57989 lambda!57944))))

(declare-fun bs!335448 () Bool)

(assert (= bs!335448 (and d!390415 d!389627)))

(assert (=> bs!335448 (not (= lambda!57989 lambda!57920))))

(declare-fun bs!335449 () Bool)

(assert (= bs!335449 (and d!390415 d!389873)))

(assert (=> bs!335449 (not (= lambda!57989 lambda!57941))))

(assert (=> d!390415 (forall!3388 (map!3062 rules!2550 lambda!57988) lambda!57989)))

(declare-fun lt!454360 () Unit!20071)

(declare-fun e!875317 () Unit!20071)

(assert (=> d!390415 (= lt!454360 e!875317)))

(declare-fun c!225303 () Bool)

(assert (=> d!390415 (= c!225303 ((_ is Nil!13864) rules!2550))))

(assert (=> d!390415 (rulesValidInductive!766 thiss!19762 rules!2550)))

(assert (=> d!390415 (= (lemma!123 rules!2550 thiss!19762 rules!2550) lt!454360)))

(declare-fun b!1369147 () Bool)

(declare-fun Unit!20088 () Unit!20071)

(assert (=> b!1369147 (= e!875317 Unit!20088)))

(declare-fun b!1369148 () Bool)

(declare-fun Unit!20089 () Unit!20071)

(assert (=> b!1369148 (= e!875317 Unit!20089)))

(declare-fun lt!454361 () Unit!20071)

(assert (=> b!1369148 (= lt!454361 (lemma!123 rules!2550 thiss!19762 (t!121281 rules!2550)))))

(assert (= (and d!390415 c!225303) b!1369147))

(assert (= (and d!390415 (not c!225303)) b!1369148))

(declare-fun m!1538895 () Bool)

(assert (=> d!390415 m!1538895))

(assert (=> d!390415 m!1538895))

(declare-fun m!1538897 () Bool)

(assert (=> d!390415 m!1538897))

(assert (=> d!390415 m!1536389))

(declare-fun m!1538899 () Bool)

(assert (=> b!1369148 m!1538899))

(assert (=> d!389507 d!390415))

(declare-fun bs!335450 () Bool)

(declare-fun d!390417 () Bool)

(assert (= bs!335450 (and d!390417 d!390415)))

(declare-fun lambda!57992 () Int)

(assert (=> bs!335450 (= lambda!57992 lambda!57989)))

(declare-fun bs!335451 () Bool)

(assert (= bs!335451 (and d!390417 d!389621)))

(assert (=> bs!335451 (not (= lambda!57992 lambda!57913))))

(declare-fun bs!335452 () Bool)

(assert (= bs!335452 (and d!390417 d!389625)))

(assert (=> bs!335452 (not (= lambda!57992 lambda!57919))))

(declare-fun bs!335453 () Bool)

(assert (= bs!335453 (and d!390417 b!1367244)))

(assert (=> bs!335453 (not (= lambda!57992 lambda!57884))))

(assert (=> bs!335452 (= lambda!57992 lambda!57918)))

(declare-fun bs!335454 () Bool)

(assert (= bs!335454 (and d!390417 d!389875)))

(assert (=> bs!335454 (not (= lambda!57992 lambda!57944))))

(declare-fun bs!335455 () Bool)

(assert (= bs!335455 (and d!390417 d!389627)))

(assert (=> bs!335455 (not (= lambda!57992 lambda!57920))))

(declare-fun bs!335456 () Bool)

(assert (= bs!335456 (and d!390417 d!389873)))

(assert (=> bs!335456 (not (= lambda!57992 lambda!57941))))

(declare-fun b!1369169 () Bool)

(declare-fun e!875332 () Regex!3715)

(assert (=> b!1369169 (= e!875332 (Union!3715 (h!19267 (map!3062 rules!2550 lambda!57891)) (generalisedUnion!131 (t!121283 (map!3062 rules!2550 lambda!57891)))))))

(declare-fun b!1369170 () Bool)

(assert (=> b!1369170 (= e!875332 EmptyLang!3715)))

(declare-fun b!1369172 () Bool)

(declare-fun e!875333 () Bool)

(declare-fun lt!454364 () Regex!3715)

(declare-fun isUnion!43 (Regex!3715) Bool)

(assert (=> b!1369172 (= e!875333 (isUnion!43 lt!454364))))

(declare-fun b!1369173 () Bool)

(assert (=> b!1369173 (= e!875333 (= lt!454364 (head!2457 (map!3062 rules!2550 lambda!57891))))))

(declare-fun b!1369174 () Bool)

(declare-fun e!875334 () Bool)

(declare-fun isEmpty!8353 (List!13932) Bool)

(assert (=> b!1369174 (= e!875334 (isEmpty!8353 (t!121283 (map!3062 rules!2550 lambda!57891))))))

(declare-fun b!1369175 () Bool)

(declare-fun e!875331 () Regex!3715)

(assert (=> b!1369175 (= e!875331 (h!19267 (map!3062 rules!2550 lambda!57891)))))

(declare-fun b!1369176 () Bool)

(declare-fun e!875335 () Bool)

(assert (=> b!1369176 (= e!875335 e!875333)))

(declare-fun c!225312 () Bool)

(declare-fun tail!1978 (List!13932) List!13932)

(assert (=> b!1369176 (= c!225312 (isEmpty!8353 (tail!1978 (map!3062 rules!2550 lambda!57891))))))

(declare-fun b!1369177 () Bool)

(declare-fun e!875330 () Bool)

(assert (=> b!1369177 (= e!875330 e!875335)))

(declare-fun c!225313 () Bool)

(assert (=> b!1369177 (= c!225313 (isEmpty!8353 (map!3062 rules!2550 lambda!57891)))))

(declare-fun b!1369178 () Bool)

(assert (=> b!1369178 (= e!875331 e!875332)))

(declare-fun c!225314 () Bool)

(assert (=> b!1369178 (= c!225314 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57891)))))

(declare-fun b!1369171 () Bool)

(declare-fun isEmptyLang!43 (Regex!3715) Bool)

(assert (=> b!1369171 (= e!875335 (isEmptyLang!43 lt!454364))))

(assert (=> d!390417 e!875330))

(declare-fun res!616643 () Bool)

(assert (=> d!390417 (=> (not res!616643) (not e!875330))))

(assert (=> d!390417 (= res!616643 (validRegex!1615 lt!454364))))

(assert (=> d!390417 (= lt!454364 e!875331)))

(declare-fun c!225315 () Bool)

(assert (=> d!390417 (= c!225315 e!875334)))

(declare-fun res!616644 () Bool)

(assert (=> d!390417 (=> (not res!616644) (not e!875334))))

(assert (=> d!390417 (= res!616644 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57891)))))

(assert (=> d!390417 (forall!3388 (map!3062 rules!2550 lambda!57891) lambda!57992)))

(assert (=> d!390417 (= (generalisedUnion!131 (map!3062 rules!2550 lambda!57891)) lt!454364)))

(assert (= (and d!390417 res!616644) b!1369174))

(assert (= (and d!390417 c!225315) b!1369175))

(assert (= (and d!390417 (not c!225315)) b!1369178))

(assert (= (and b!1369178 c!225314) b!1369169))

(assert (= (and b!1369178 (not c!225314)) b!1369170))

(assert (= (and d!390417 res!616643) b!1369177))

(assert (= (and b!1369177 c!225313) b!1369171))

(assert (= (and b!1369177 (not c!225313)) b!1369176))

(assert (= (and b!1369176 c!225312) b!1369173))

(assert (= (and b!1369176 (not c!225312)) b!1369172))

(declare-fun m!1538901 () Bool)

(assert (=> b!1369174 m!1538901))

(declare-fun m!1538903 () Bool)

(assert (=> b!1369169 m!1538903))

(assert (=> b!1369173 m!1536081))

(declare-fun m!1538905 () Bool)

(assert (=> b!1369173 m!1538905))

(declare-fun m!1538907 () Bool)

(assert (=> d!390417 m!1538907))

(assert (=> d!390417 m!1536081))

(declare-fun m!1538909 () Bool)

(assert (=> d!390417 m!1538909))

(assert (=> b!1369177 m!1536081))

(declare-fun m!1538911 () Bool)

(assert (=> b!1369177 m!1538911))

(assert (=> b!1369176 m!1536081))

(declare-fun m!1538913 () Bool)

(assert (=> b!1369176 m!1538913))

(assert (=> b!1369176 m!1538913))

(declare-fun m!1538915 () Bool)

(assert (=> b!1369176 m!1538915))

(declare-fun m!1538917 () Bool)

(assert (=> b!1369171 m!1538917))

(declare-fun m!1538919 () Bool)

(assert (=> b!1369172 m!1538919))

(assert (=> d!389507 d!390417))

(declare-fun d!390419 () Bool)

(declare-fun lt!454365 () List!13932)

(assert (=> d!390419 (= (size!11368 lt!454365) (size!11369 rules!2550))))

(declare-fun e!875336 () List!13932)

(assert (=> d!390419 (= lt!454365 e!875336)))

(declare-fun c!225316 () Bool)

(assert (=> d!390419 (= c!225316 ((_ is Nil!13864) rules!2550))))

(assert (=> d!390419 (= (map!3062 rules!2550 lambda!57891) lt!454365)))

(declare-fun b!1369179 () Bool)

(assert (=> b!1369179 (= e!875336 Nil!13866)))

(declare-fun b!1369180 () Bool)

(assert (=> b!1369180 (= e!875336 ($colon$colon!197 (map!3062 (t!121281 rules!2550) lambda!57891) (dynLambda!6266 lambda!57891 (h!19265 rules!2550))))))

(assert (= (and d!390419 c!225316) b!1369179))

(assert (= (and d!390419 (not c!225316)) b!1369180))

(declare-fun b_lambda!41773 () Bool)

(assert (=> (not b_lambda!41773) (not b!1369180)))

(declare-fun m!1538921 () Bool)

(assert (=> d!390419 m!1538921))

(assert (=> d!390419 m!1536451))

(declare-fun m!1538923 () Bool)

(assert (=> b!1369180 m!1538923))

(declare-fun m!1538925 () Bool)

(assert (=> b!1369180 m!1538925))

(assert (=> b!1369180 m!1538923))

(assert (=> b!1369180 m!1538925))

(declare-fun m!1538927 () Bool)

(assert (=> b!1369180 m!1538927))

(assert (=> d!389507 d!390419))

(declare-fun d!390421 () Bool)

(declare-fun lt!454366 () Bool)

(assert (=> d!390421 (= lt!454366 (select (content!2020 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453705)))))))

(declare-fun e!875338 () Bool)

(assert (=> d!390421 (= lt!454366 e!875338)))

(declare-fun res!616645 () Bool)

(assert (=> d!390421 (=> (not res!616645) (not e!875338))))

(assert (=> d!390421 (= res!616645 ((_ is Cons!13864) rules!2550))))

(assert (=> d!390421 (= (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!453705)))) lt!454366)))

(declare-fun b!1369181 () Bool)

(declare-fun e!875337 () Bool)

(assert (=> b!1369181 (= e!875338 e!875337)))

(declare-fun res!616646 () Bool)

(assert (=> b!1369181 (=> res!616646 e!875337)))

(assert (=> b!1369181 (= res!616646 (= (h!19265 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453705)))))))

(declare-fun b!1369182 () Bool)

(assert (=> b!1369182 (= e!875337 (contains!2586 (t!121281 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453705)))))))

(assert (= (and d!390421 res!616645) b!1369181))

(assert (= (and b!1369181 (not res!616646)) b!1369182))

(assert (=> d!390421 m!1536279))

(declare-fun m!1538929 () Bool)

(assert (=> d!390421 m!1538929))

(declare-fun m!1538931 () Bool)

(assert (=> b!1369182 m!1538931))

(assert (=> b!1367862 d!390421))

(assert (=> b!1367862 d!390015))

(assert (=> b!1367818 d!390067))

(assert (=> b!1367818 d!389987))

(declare-fun b!1369183 () Bool)

(declare-fun e!875340 () Bool)

(declare-fun e!875342 () Bool)

(assert (=> b!1369183 (= e!875340 e!875342)))

(declare-fun res!616653 () Bool)

(assert (=> b!1369183 (=> res!616653 e!875342)))

(declare-fun call!92049 () Bool)

(assert (=> b!1369183 (= res!616653 call!92049)))

(declare-fun d!390423 () Bool)

(declare-fun e!875344 () Bool)

(assert (=> d!390423 e!875344))

(declare-fun c!225317 () Bool)

(assert (=> d!390423 (= c!225317 ((_ is EmptyExpr!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun lt!454367 () Bool)

(declare-fun e!875345 () Bool)

(assert (=> d!390423 (= lt!454367 e!875345)))

(declare-fun c!225318 () Bool)

(assert (=> d!390423 (= c!225318 (isEmpty!8341 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))

(assert (=> d!390423 (validRegex!1615 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))))

(assert (=> d!390423 (= (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) lt!454367)))

(declare-fun b!1369184 () Bool)

(assert (=> b!1369184 (= e!875344 (= lt!454367 call!92049))))

(declare-fun b!1369185 () Bool)

(assert (=> b!1369185 (= e!875345 (matchR!1708 (derivativeStep!953 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))) (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))))) (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun b!1369186 () Bool)

(declare-fun e!875341 () Bool)

(assert (=> b!1369186 (= e!875341 (not lt!454367))))

(declare-fun b!1369187 () Bool)

(assert (=> b!1369187 (= e!875344 e!875341)))

(declare-fun c!225319 () Bool)

(assert (=> b!1369187 (= c!225319 ((_ is EmptyLang!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun b!1369188 () Bool)

(declare-fun res!616647 () Bool)

(declare-fun e!875339 () Bool)

(assert (=> b!1369188 (=> res!616647 e!875339)))

(assert (=> b!1369188 (= res!616647 (not ((_ is ElementMatch!3715) (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))))))

(assert (=> b!1369188 (= e!875341 e!875339)))

(declare-fun b!1369189 () Bool)

(assert (=> b!1369189 (= e!875342 (not (= (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (c!224867 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))))))))

(declare-fun b!1369190 () Bool)

(assert (=> b!1369190 (= e!875339 e!875340)))

(declare-fun res!616648 () Bool)

(assert (=> b!1369190 (=> (not res!616648) (not e!875340))))

(assert (=> b!1369190 (= res!616648 (not lt!454367))))

(declare-fun b!1369191 () Bool)

(declare-fun e!875343 () Bool)

(assert (=> b!1369191 (= e!875343 (= (head!2454 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))) (c!224867 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun b!1369192 () Bool)

(declare-fun res!616650 () Bool)

(assert (=> b!1369192 (=> (not res!616650) (not e!875343))))

(assert (=> b!1369192 (= res!616650 (not call!92049))))

(declare-fun bm!92044 () Bool)

(assert (=> bm!92044 (= call!92049 (isEmpty!8341 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun b!1369193 () Bool)

(declare-fun res!616649 () Bool)

(assert (=> b!1369193 (=> res!616649 e!875339)))

(assert (=> b!1369193 (= res!616649 e!875343)))

(declare-fun res!616651 () Bool)

(assert (=> b!1369193 (=> (not res!616651) (not e!875343))))

(assert (=> b!1369193 (= res!616651 lt!454367)))

(declare-fun b!1369194 () Bool)

(declare-fun res!616652 () Bool)

(assert (=> b!1369194 (=> (not res!616652) (not e!875343))))

(assert (=> b!1369194 (= res!616652 (isEmpty!8341 (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun b!1369195 () Bool)

(declare-fun res!616654 () Bool)

(assert (=> b!1369195 (=> res!616654 e!875342)))

(assert (=> b!1369195 (= res!616654 (not (isEmpty!8341 (tail!1974 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453614))))))))))

(declare-fun b!1369196 () Bool)

(assert (=> b!1369196 (= e!875345 (nullable!1195 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))))))

(assert (= (and d!390423 c!225318) b!1369196))

(assert (= (and d!390423 (not c!225318)) b!1369185))

(assert (= (and d!390423 c!225317) b!1369184))

(assert (= (and d!390423 (not c!225317)) b!1369187))

(assert (= (and b!1369187 c!225319) b!1369186))

(assert (= (and b!1369187 (not c!225319)) b!1369188))

(assert (= (and b!1369188 (not res!616647)) b!1369193))

(assert (= (and b!1369193 res!616651) b!1369192))

(assert (= (and b!1369192 res!616650) b!1369194))

(assert (= (and b!1369194 res!616652) b!1369191))

(assert (= (and b!1369193 (not res!616649)) b!1369190))

(assert (= (and b!1369190 res!616648) b!1369183))

(assert (= (and b!1369183 (not res!616653)) b!1369195))

(assert (= (and b!1369195 (not res!616654)) b!1369189))

(assert (= (or b!1369184 b!1369183 b!1369192) bm!92044))

(assert (=> d!390423 m!1536371))

(declare-fun m!1538933 () Bool)

(assert (=> d!390423 m!1538933))

(declare-fun m!1538935 () Bool)

(assert (=> d!390423 m!1538935))

(assert (=> b!1369195 m!1536371))

(declare-fun m!1538937 () Bool)

(assert (=> b!1369195 m!1538937))

(assert (=> b!1369195 m!1538937))

(declare-fun m!1538939 () Bool)

(assert (=> b!1369195 m!1538939))

(declare-fun m!1538941 () Bool)

(assert (=> b!1369196 m!1538941))

(assert (=> b!1369189 m!1536371))

(declare-fun m!1538943 () Bool)

(assert (=> b!1369189 m!1538943))

(assert (=> bm!92044 m!1536371))

(assert (=> bm!92044 m!1538933))

(assert (=> b!1369194 m!1536371))

(assert (=> b!1369194 m!1538937))

(assert (=> b!1369194 m!1538937))

(assert (=> b!1369194 m!1538939))

(assert (=> b!1369191 m!1536371))

(assert (=> b!1369191 m!1538943))

(assert (=> b!1369185 m!1536371))

(assert (=> b!1369185 m!1538943))

(assert (=> b!1369185 m!1538943))

(declare-fun m!1538945 () Bool)

(assert (=> b!1369185 m!1538945))

(assert (=> b!1369185 m!1536371))

(assert (=> b!1369185 m!1538937))

(assert (=> b!1369185 m!1538945))

(assert (=> b!1369185 m!1538937))

(declare-fun m!1538947 () Bool)

(assert (=> b!1369185 m!1538947))

(assert (=> b!1367598 d!390423))

(assert (=> b!1367598 d!389917))

(assert (=> b!1367598 d!389913))

(assert (=> b!1367598 d!389915))

(declare-fun d!390425 () Bool)

(declare-fun lt!454368 () Bool)

(assert (=> d!390425 (= lt!454368 (select (content!2020 rules!2550) lt!453682))))

(declare-fun e!875347 () Bool)

(assert (=> d!390425 (= lt!454368 e!875347)))

(declare-fun res!616655 () Bool)

(assert (=> d!390425 (=> (not res!616655) (not e!875347))))

(assert (=> d!390425 (= res!616655 ((_ is Cons!13864) rules!2550))))

(assert (=> d!390425 (= (contains!2586 rules!2550 lt!453682) lt!454368)))

(declare-fun b!1369197 () Bool)

(declare-fun e!875346 () Bool)

(assert (=> b!1369197 (= e!875347 e!875346)))

(declare-fun res!616656 () Bool)

(assert (=> b!1369197 (=> res!616656 e!875346)))

(assert (=> b!1369197 (= res!616656 (= (h!19265 rules!2550) lt!453682))))

(declare-fun b!1369198 () Bool)

(assert (=> b!1369198 (= e!875346 (contains!2586 (t!121281 rules!2550) lt!453682))))

(assert (= (and d!390425 res!616655) b!1369197))

(assert (= (and b!1369197 (not res!616656)) b!1369198))

(assert (=> d!390425 m!1536279))

(declare-fun m!1538949 () Bool)

(assert (=> d!390425 m!1538949))

(declare-fun m!1538951 () Bool)

(assert (=> b!1369198 m!1538951))

(assert (=> b!1367776 d!390425))

(declare-fun d!390427 () Bool)

(assert (=> d!390427 (= (isEmpty!8341 (originalCharacters!3263 t1!34)) ((_ is Nil!13862) (originalCharacters!3263 t1!34)))))

(assert (=> d!389719 d!390427))

(declare-fun d!390429 () Bool)

(declare-fun lt!454369 () Int)

(assert (=> d!390429 (= lt!454369 (size!11370 (list!5331 (_1!7614 lt!453620))))))

(assert (=> d!390429 (= lt!454369 (size!11372 (c!224868 (_1!7614 lt!453620))))))

(assert (=> d!390429 (= (size!11366 (_1!7614 lt!453620)) lt!454369)))

(declare-fun bs!335457 () Bool)

(assert (= bs!335457 d!390429))

(declare-fun m!1538953 () Bool)

(assert (=> bs!335457 m!1538953))

(assert (=> bs!335457 m!1538953))

(declare-fun m!1538955 () Bool)

(assert (=> bs!335457 m!1538955))

(declare-fun m!1538957 () Bool)

(assert (=> bs!335457 m!1538957))

(assert (=> d!389611 d!390429))

(declare-fun d!390431 () Bool)

(assert (=> d!390431 (= (list!5331 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34))))) (list!5334 (c!224868 (_1!7614 (lex!923 thiss!19762 rules!2550 (print!862 thiss!19762 (singletonSeq!1028 t2!34)))))))))

(declare-fun bs!335458 () Bool)

(assert (= bs!335458 d!390431))

(declare-fun m!1538959 () Bool)

(assert (=> bs!335458 m!1538959))

(assert (=> d!389611 d!390431))

(assert (=> d!389611 d!389711))

(assert (=> d!389611 d!389713))

(assert (=> d!389611 d!389557))

(assert (=> d!389611 d!390349))

(assert (=> d!389611 d!390053))

(declare-fun d!390433 () Bool)

(declare-fun lostCauseFct!132 (Regex!3715) Bool)

(assert (=> d!390433 (= (lostCause!329 lt!453462) (lostCauseFct!132 lt!453462))))

(declare-fun bs!335459 () Bool)

(assert (= bs!335459 d!390433))

(declare-fun m!1538961 () Bool)

(assert (=> bs!335459 m!1538961))

(assert (=> b!1367354 d!390433))

(declare-fun b!1369207 () Bool)

(declare-fun e!875356 () Bool)

(declare-fun e!875355 () Bool)

(assert (=> b!1369207 (= e!875356 e!875355)))

(declare-fun res!616662 () Bool)

(assert (=> b!1369207 (= res!616662 (not ((_ is Cons!13864) rules!2550)))))

(assert (=> b!1369207 (=> res!616662 e!875355)))

(declare-fun b!1369208 () Bool)

(declare-fun e!875354 () Bool)

(assert (=> b!1369208 (= e!875356 e!875354)))

(declare-fun res!616661 () Bool)

(declare-fun rulesUseDisjointChars!180 (Rule!4602 Rule!4602) Bool)

(assert (=> b!1369208 (= res!616661 (rulesUseDisjointChars!180 (h!19265 rules!2550) (h!19265 rules!2550)))))

(assert (=> b!1369208 (=> (not res!616661) (not e!875354))))

(declare-fun bm!92047 () Bool)

(declare-fun call!92052 () Bool)

(assert (=> bm!92047 (= call!92052 (ruleDisjointCharsFromAllFromOtherType!366 (h!19265 rules!2550) (t!121281 rules!2550)))))

(declare-fun b!1369209 () Bool)

(assert (=> b!1369209 (= e!875354 call!92052)))

(declare-fun d!390435 () Bool)

(declare-fun c!225322 () Bool)

(assert (=> d!390435 (= c!225322 (and ((_ is Cons!13864) rules!2550) (not (= (isSeparator!2401 (h!19265 rules!2550)) (isSeparator!2401 (h!19265 rules!2550))))))))

(assert (=> d!390435 (= (ruleDisjointCharsFromAllFromOtherType!366 (h!19265 rules!2550) rules!2550) e!875356)))

(declare-fun b!1369210 () Bool)

(assert (=> b!1369210 (= e!875355 call!92052)))

(assert (= (and d!390435 c!225322) b!1369208))

(assert (= (and d!390435 (not c!225322)) b!1369207))

(assert (= (and b!1369208 res!616661) b!1369209))

(assert (= (and b!1369207 (not res!616662)) b!1369210))

(assert (= (or b!1369209 b!1369210) bm!92047))

(declare-fun m!1538963 () Bool)

(assert (=> b!1369208 m!1538963))

(declare-fun m!1538965 () Bool)

(assert (=> bm!92047 m!1538965))

(assert (=> b!1367876 d!390435))

(declare-fun d!390437 () Bool)

(declare-fun charsToBigInt!0 (List!13929 Int) Int)

(assert (=> d!390437 (= (inv!15 (value!78061 t2!34)) (= (charsToBigInt!0 (text!17886 (value!78061 t2!34)) 0) (value!78056 (value!78061 t2!34))))))

(declare-fun bs!335460 () Bool)

(assert (= bs!335460 d!390437))

(declare-fun m!1538967 () Bool)

(assert (=> bs!335460 m!1538967))

(assert (=> b!1367458 d!390437))

(declare-fun b!1369211 () Bool)

(declare-fun e!875358 () Bool)

(declare-fun e!875360 () Bool)

(assert (=> b!1369211 (= e!875358 e!875360)))

(declare-fun res!616669 () Bool)

(assert (=> b!1369211 (=> res!616669 e!875360)))

(declare-fun call!92053 () Bool)

(assert (=> b!1369211 (= res!616669 call!92053)))

(declare-fun d!390439 () Bool)

(declare-fun e!875362 () Bool)

(assert (=> d!390439 e!875362))

(declare-fun c!225323 () Bool)

(assert (=> d!390439 (= c!225323 ((_ is EmptyExpr!3715) lt!453462))))

(declare-fun lt!454370 () Bool)

(declare-fun e!875363 () Bool)

(assert (=> d!390439 (= lt!454370 e!875363)))

(declare-fun c!225324 () Bool)

(assert (=> d!390439 (= c!225324 (isEmpty!8341 lt!453568))))

(assert (=> d!390439 (validRegex!1615 lt!453462)))

(assert (=> d!390439 (= (matchR!1708 lt!453462 lt!453568) lt!454370)))

(declare-fun b!1369212 () Bool)

(assert (=> b!1369212 (= e!875362 (= lt!454370 call!92053))))

(declare-fun b!1369213 () Bool)

(assert (=> b!1369213 (= e!875363 (matchR!1708 (derivativeStep!953 lt!453462 (head!2454 lt!453568)) (tail!1974 lt!453568)))))

(declare-fun b!1369214 () Bool)

(declare-fun e!875359 () Bool)

(assert (=> b!1369214 (= e!875359 (not lt!454370))))

(declare-fun b!1369215 () Bool)

(assert (=> b!1369215 (= e!875362 e!875359)))

(declare-fun c!225325 () Bool)

(assert (=> b!1369215 (= c!225325 ((_ is EmptyLang!3715) lt!453462))))

(declare-fun b!1369216 () Bool)

(declare-fun res!616663 () Bool)

(declare-fun e!875357 () Bool)

(assert (=> b!1369216 (=> res!616663 e!875357)))

(assert (=> b!1369216 (= res!616663 (not ((_ is ElementMatch!3715) lt!453462)))))

(assert (=> b!1369216 (= e!875359 e!875357)))

(declare-fun b!1369217 () Bool)

(assert (=> b!1369217 (= e!875360 (not (= (head!2454 lt!453568) (c!224867 lt!453462))))))

(declare-fun b!1369218 () Bool)

(assert (=> b!1369218 (= e!875357 e!875358)))

(declare-fun res!616664 () Bool)

(assert (=> b!1369218 (=> (not res!616664) (not e!875358))))

(assert (=> b!1369218 (= res!616664 (not lt!454370))))

(declare-fun b!1369219 () Bool)

(declare-fun e!875361 () Bool)

(assert (=> b!1369219 (= e!875361 (= (head!2454 lt!453568) (c!224867 lt!453462)))))

(declare-fun b!1369220 () Bool)

(declare-fun res!616666 () Bool)

(assert (=> b!1369220 (=> (not res!616666) (not e!875361))))

(assert (=> b!1369220 (= res!616666 (not call!92053))))

(declare-fun bm!92048 () Bool)

(assert (=> bm!92048 (= call!92053 (isEmpty!8341 lt!453568))))

(declare-fun b!1369221 () Bool)

(declare-fun res!616665 () Bool)

(assert (=> b!1369221 (=> res!616665 e!875357)))

(assert (=> b!1369221 (= res!616665 e!875361)))

(declare-fun res!616667 () Bool)

(assert (=> b!1369221 (=> (not res!616667) (not e!875361))))

(assert (=> b!1369221 (= res!616667 lt!454370)))

(declare-fun b!1369222 () Bool)

(declare-fun res!616668 () Bool)

(assert (=> b!1369222 (=> (not res!616668) (not e!875361))))

(assert (=> b!1369222 (= res!616668 (isEmpty!8341 (tail!1974 lt!453568)))))

(declare-fun b!1369223 () Bool)

(declare-fun res!616670 () Bool)

(assert (=> b!1369223 (=> res!616670 e!875360)))

(assert (=> b!1369223 (= res!616670 (not (isEmpty!8341 (tail!1974 lt!453568))))))

(declare-fun b!1369224 () Bool)

(assert (=> b!1369224 (= e!875363 (nullable!1195 lt!453462))))

(assert (= (and d!390439 c!225324) b!1369224))

(assert (= (and d!390439 (not c!225324)) b!1369213))

(assert (= (and d!390439 c!225323) b!1369212))

(assert (= (and d!390439 (not c!225323)) b!1369215))

(assert (= (and b!1369215 c!225325) b!1369214))

(assert (= (and b!1369215 (not c!225325)) b!1369216))

(assert (= (and b!1369216 (not res!616663)) b!1369221))

(assert (= (and b!1369221 res!616667) b!1369220))

(assert (= (and b!1369220 res!616666) b!1369222))

(assert (= (and b!1369222 res!616668) b!1369219))

(assert (= (and b!1369221 (not res!616665)) b!1369218))

(assert (= (and b!1369218 res!616664) b!1369211))

(assert (= (and b!1369211 (not res!616669)) b!1369223))

(assert (= (and b!1369223 (not res!616670)) b!1369217))

(assert (= (or b!1369212 b!1369211 b!1369220) bm!92048))

(declare-fun m!1538969 () Bool)

(assert (=> d!390439 m!1538969))

(assert (=> d!390439 m!1536643))

(declare-fun m!1538971 () Bool)

(assert (=> b!1369223 m!1538971))

(assert (=> b!1369223 m!1538971))

(declare-fun m!1538973 () Bool)

(assert (=> b!1369223 m!1538973))

(assert (=> b!1369224 m!1536647))

(declare-fun m!1538975 () Bool)

(assert (=> b!1369217 m!1538975))

(assert (=> bm!92048 m!1538969))

(assert (=> b!1369222 m!1538971))

(assert (=> b!1369222 m!1538971))

(assert (=> b!1369222 m!1538973))

(assert (=> b!1369219 m!1538975))

(assert (=> b!1369213 m!1538975))

(assert (=> b!1369213 m!1538975))

(declare-fun m!1538977 () Bool)

(assert (=> b!1369213 m!1538977))

(assert (=> b!1369213 m!1538971))

(assert (=> b!1369213 m!1538977))

(assert (=> b!1369213 m!1538971))

(declare-fun m!1538979 () Bool)

(assert (=> b!1369213 m!1538979))

(assert (=> bs!335248 d!390439))

(declare-fun d!390441 () Bool)

(assert (=> d!390441 (= (list!5330 lt!453510) (list!5333 (c!224866 lt!453510)))))

(declare-fun bs!335461 () Bool)

(assert (= bs!335461 d!390441))

(declare-fun m!1538981 () Bool)

(assert (=> bs!335461 m!1538981))

(assert (=> d!389501 d!390441))

(declare-fun d!390443 () Bool)

(declare-fun lt!454371 () List!13928)

(assert (=> d!390443 (= (++!3578 (t!121279 lt!453466) lt!454371) (tail!1974 lt!453465))))

(declare-fun e!875364 () List!13928)

(assert (=> d!390443 (= lt!454371 e!875364)))

(declare-fun c!225326 () Bool)

(assert (=> d!390443 (= c!225326 ((_ is Cons!13862) (t!121279 lt!453466)))))

(assert (=> d!390443 (>= (size!11363 (tail!1974 lt!453465)) (size!11363 (t!121279 lt!453466)))))

(assert (=> d!390443 (= (getSuffix!563 (tail!1974 lt!453465) (t!121279 lt!453466)) lt!454371)))

(declare-fun b!1369225 () Bool)

(assert (=> b!1369225 (= e!875364 (getSuffix!563 (tail!1974 (tail!1974 lt!453465)) (t!121279 (t!121279 lt!453466))))))

(declare-fun b!1369226 () Bool)

(assert (=> b!1369226 (= e!875364 (tail!1974 lt!453465))))

(assert (= (and d!390443 c!225326) b!1369225))

(assert (= (and d!390443 (not c!225326)) b!1369226))

(declare-fun m!1538983 () Bool)

(assert (=> d!390443 m!1538983))

(assert (=> d!390443 m!1536227))

(declare-fun m!1538985 () Bool)

(assert (=> d!390443 m!1538985))

(assert (=> d!390443 m!1537393))

(assert (=> b!1369225 m!1536227))

(assert (=> b!1369225 m!1537407))

(assert (=> b!1369225 m!1537407))

(declare-fun m!1538987 () Bool)

(assert (=> b!1369225 m!1538987))

(assert (=> b!1367470 d!390443))

(assert (=> b!1367470 d!389987))

(declare-fun d!390445 () Bool)

(declare-fun lt!454374 () Token!4464)

(assert (=> d!390445 (= lt!454374 (apply!3393 (list!5331 (_1!7614 lt!453551)) 0))))

(declare-fun apply!3395 (Conc!4565 Int) Token!4464)

(assert (=> d!390445 (= lt!454374 (apply!3395 (c!224868 (_1!7614 lt!453551)) 0))))

(declare-fun e!875367 () Bool)

(assert (=> d!390445 e!875367))

(declare-fun res!616673 () Bool)

(assert (=> d!390445 (=> (not res!616673) (not e!875367))))

(assert (=> d!390445 (= res!616673 (<= 0 0))))

(assert (=> d!390445 (= (apply!3386 (_1!7614 lt!453551) 0) lt!454374)))

(declare-fun b!1369229 () Bool)

(assert (=> b!1369229 (= e!875367 (< 0 (size!11366 (_1!7614 lt!453551))))))

(assert (= (and d!390445 res!616673) b!1369229))

(assert (=> d!390445 m!1537715))

(assert (=> d!390445 m!1537715))

(declare-fun m!1538989 () Bool)

(assert (=> d!390445 m!1538989))

(declare-fun m!1538991 () Bool)

(assert (=> d!390445 m!1538991))

(assert (=> b!1369229 m!1536155))

(assert (=> b!1367429 d!390445))

(declare-fun d!390447 () Bool)

(declare-fun res!616678 () Bool)

(declare-fun e!875372 () Bool)

(assert (=> d!390447 (=> res!616678 e!875372)))

(assert (=> d!390447 (= res!616678 ((_ is Nil!13864) rules!2550))))

(assert (=> d!390447 (= (forall!3390 rules!2550 lambda!57923) e!875372)))

(declare-fun b!1369234 () Bool)

(declare-fun e!875373 () Bool)

(assert (=> b!1369234 (= e!875372 e!875373)))

(declare-fun res!616679 () Bool)

(assert (=> b!1369234 (=> (not res!616679) (not e!875373))))

(assert (=> b!1369234 (= res!616679 (dynLambda!6273 lambda!57923 (h!19265 rules!2550)))))

(declare-fun b!1369235 () Bool)

(assert (=> b!1369235 (= e!875373 (forall!3390 (t!121281 rules!2550) lambda!57923))))

(assert (= (and d!390447 (not res!616678)) b!1369234))

(assert (= (and b!1369234 res!616679) b!1369235))

(declare-fun b_lambda!41775 () Bool)

(assert (=> (not b_lambda!41775) (not b!1369234)))

(declare-fun m!1538993 () Bool)

(assert (=> b!1369234 m!1538993))

(declare-fun m!1538995 () Bool)

(assert (=> b!1369235 m!1538995))

(assert (=> d!389639 d!390447))

(declare-fun d!390449 () Bool)

(declare-fun lt!454375 () Bool)

(assert (=> d!390449 (= lt!454375 (select (content!2019 (t!121279 lt!453465)) lt!453454))))

(declare-fun e!875374 () Bool)

(assert (=> d!390449 (= lt!454375 e!875374)))

(declare-fun res!616680 () Bool)

(assert (=> d!390449 (=> (not res!616680) (not e!875374))))

(assert (=> d!390449 (= res!616680 ((_ is Cons!13862) (t!121279 lt!453465)))))

(assert (=> d!390449 (= (contains!2585 (t!121279 lt!453465) lt!453454) lt!454375)))

(declare-fun b!1369236 () Bool)

(declare-fun e!875375 () Bool)

(assert (=> b!1369236 (= e!875374 e!875375)))

(declare-fun res!616681 () Bool)

(assert (=> b!1369236 (=> res!616681 e!875375)))

(assert (=> b!1369236 (= res!616681 (= (h!19263 (t!121279 lt!453465)) lt!453454))))

(declare-fun b!1369237 () Bool)

(assert (=> b!1369237 (= e!875375 (contains!2585 (t!121279 (t!121279 lt!453465)) lt!453454))))

(assert (= (and d!390449 res!616680) b!1369236))

(assert (= (and b!1369236 (not res!616681)) b!1369237))

(assert (=> d!390449 m!1537555))

(declare-fun m!1538997 () Bool)

(assert (=> d!390449 m!1538997))

(declare-fun m!1538999 () Bool)

(assert (=> b!1369237 m!1538999))

(assert (=> b!1367822 d!390449))

(declare-fun d!390451 () Bool)

(declare-fun lt!454376 () Int)

(assert (=> d!390451 (>= lt!454376 0)))

(declare-fun e!875376 () Int)

(assert (=> d!390451 (= lt!454376 e!875376)))

(declare-fun c!225327 () Bool)

(assert (=> d!390451 (= c!225327 ((_ is Nil!13862) lt!453516))))

(assert (=> d!390451 (= (size!11363 lt!453516) lt!454376)))

(declare-fun b!1369238 () Bool)

(assert (=> b!1369238 (= e!875376 0)))

(declare-fun b!1369239 () Bool)

(assert (=> b!1369239 (= e!875376 (+ 1 (size!11363 (t!121279 lt!453516))))))

(assert (= (and d!390451 c!225327) b!1369238))

(assert (= (and d!390451 (not c!225327)) b!1369239))

(declare-fun m!1539001 () Bool)

(assert (=> b!1369239 m!1539001))

(assert (=> b!1367367 d!390451))

(assert (=> b!1367367 d!390413))

(declare-fun d!390453 () Bool)

(declare-fun lt!454377 () Int)

(assert (=> d!390453 (>= lt!454377 0)))

(declare-fun e!875377 () Int)

(assert (=> d!390453 (= lt!454377 e!875377)))

(declare-fun c!225328 () Bool)

(assert (=> d!390453 (= c!225328 ((_ is Nil!13862) (Cons!13862 lt!453470 Nil!13862)))))

(assert (=> d!390453 (= (size!11363 (Cons!13862 lt!453470 Nil!13862)) lt!454377)))

(declare-fun b!1369240 () Bool)

(assert (=> b!1369240 (= e!875377 0)))

(declare-fun b!1369241 () Bool)

(assert (=> b!1369241 (= e!875377 (+ 1 (size!11363 (t!121279 (Cons!13862 lt!453470 Nil!13862)))))))

(assert (= (and d!390453 c!225328) b!1369240))

(assert (= (and d!390453 (not c!225328)) b!1369241))

(declare-fun m!1539003 () Bool)

(assert (=> b!1369241 m!1539003))

(assert (=> b!1367367 d!390453))

(declare-fun d!390455 () Bool)

(assert (=> d!390455 (= (list!5331 (_1!7614 lt!453708)) (list!5334 (c!224868 (_1!7614 lt!453708))))))

(declare-fun bs!335462 () Bool)

(assert (= bs!335462 d!390455))

(declare-fun m!1539005 () Bool)

(assert (=> bs!335462 m!1539005))

(assert (=> b!1367868 d!390455))

(assert (=> b!1367868 d!389629))

(assert (=> b!1367868 d!389637))

(declare-fun d!390457 () Bool)

(assert (=> d!390457 (= (inv!15 (value!78061 t1!34)) (= (charsToBigInt!0 (text!17886 (value!78061 t1!34)) 0) (value!78056 (value!78061 t1!34))))))

(declare-fun bs!335463 () Bool)

(assert (= bs!335463 d!390457))

(declare-fun m!1539007 () Bool)

(assert (=> bs!335463 m!1539007))

(assert (=> b!1367503 d!390457))

(declare-fun d!390459 () Bool)

(declare-fun lt!454378 () Bool)

(assert (=> d!390459 (= lt!454378 (isEmpty!8347 (list!5331 (_1!7614 lt!453671))))))

(assert (=> d!390459 (= lt!454378 (isEmpty!8351 (c!224868 (_1!7614 lt!453671))))))

(assert (=> d!390459 (= (isEmpty!8348 (_1!7614 lt!453671)) lt!454378)))

(declare-fun bs!335464 () Bool)

(assert (= bs!335464 d!390459))

(assert (=> bs!335464 m!1536605))

(assert (=> bs!335464 m!1536605))

(declare-fun m!1539009 () Bool)

(assert (=> bs!335464 m!1539009))

(declare-fun m!1539011 () Bool)

(assert (=> bs!335464 m!1539011))

(assert (=> b!1367753 d!390459))

(declare-fun d!390461 () Bool)

(declare-fun lt!454379 () Bool)

(assert (=> d!390461 (= lt!454379 (isEmpty!8341 (list!5330 (_2!7614 lt!453551))))))

(assert (=> d!390461 (= lt!454379 (isEmpty!8344 (c!224866 (_2!7614 lt!453551))))))

(assert (=> d!390461 (= (isEmpty!8338 (_2!7614 lt!453551)) lt!454379)))

(declare-fun bs!335465 () Bool)

(assert (= bs!335465 d!390461))

(declare-fun m!1539013 () Bool)

(assert (=> bs!335465 m!1539013))

(assert (=> bs!335465 m!1539013))

(declare-fun m!1539015 () Bool)

(assert (=> bs!335465 m!1539015))

(declare-fun m!1539017 () Bool)

(assert (=> bs!335465 m!1539017))

(assert (=> b!1367430 d!390461))

(declare-fun b!1369242 () Bool)

(declare-fun res!616686 () Bool)

(declare-fun e!875384 () Bool)

(assert (=> b!1369242 (=> (not res!616686) (not e!875384))))

(declare-fun call!92054 () Bool)

(assert (=> b!1369242 (= res!616686 call!92054)))

(declare-fun e!875381 () Bool)

(assert (=> b!1369242 (= e!875381 e!875384)))

(declare-fun bm!92049 () Bool)

(declare-fun call!92056 () Bool)

(declare-fun call!92055 () Bool)

(assert (=> bm!92049 (= call!92056 call!92055)))

(declare-fun b!1369243 () Bool)

(declare-fun e!875378 () Bool)

(declare-fun e!875379 () Bool)

(assert (=> b!1369243 (= e!875378 e!875379)))

(declare-fun c!225329 () Bool)

(assert (=> b!1369243 (= c!225329 ((_ is Star!3715) (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun b!1369244 () Bool)

(declare-fun e!875383 () Bool)

(declare-fun e!875380 () Bool)

(assert (=> b!1369244 (= e!875383 e!875380)))

(declare-fun res!616683 () Bool)

(assert (=> b!1369244 (=> (not res!616683) (not e!875380))))

(assert (=> b!1369244 (= res!616683 call!92054)))

(declare-fun bm!92051 () Bool)

(declare-fun c!225330 () Bool)

(assert (=> bm!92051 (= call!92054 (validRegex!1615 (ite c!225330 (regOne!7943 (h!19267 (map!3062 rules!2550 lambda!57883))) (regOne!7942 (h!19267 (map!3062 rules!2550 lambda!57883))))))))

(declare-fun b!1369245 () Bool)

(declare-fun e!875382 () Bool)

(assert (=> b!1369245 (= e!875379 e!875382)))

(declare-fun res!616684 () Bool)

(assert (=> b!1369245 (= res!616684 (not (nullable!1195 (reg!4044 (h!19267 (map!3062 rules!2550 lambda!57883))))))))

(assert (=> b!1369245 (=> (not res!616684) (not e!875382))))

(declare-fun b!1369246 () Bool)

(assert (=> b!1369246 (= e!875382 call!92055)))

(declare-fun b!1369247 () Bool)

(assert (=> b!1369247 (= e!875379 e!875381)))

(assert (=> b!1369247 (= c!225330 ((_ is Union!3715) (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun b!1369248 () Bool)

(declare-fun res!616685 () Bool)

(assert (=> b!1369248 (=> res!616685 e!875383)))

(assert (=> b!1369248 (= res!616685 (not ((_ is Concat!6207) (h!19267 (map!3062 rules!2550 lambda!57883)))))))

(assert (=> b!1369248 (= e!875381 e!875383)))

(declare-fun bm!92050 () Bool)

(assert (=> bm!92050 (= call!92055 (validRegex!1615 (ite c!225329 (reg!4044 (h!19267 (map!3062 rules!2550 lambda!57883))) (ite c!225330 (regTwo!7943 (h!19267 (map!3062 rules!2550 lambda!57883))) (regTwo!7942 (h!19267 (map!3062 rules!2550 lambda!57883)))))))))

(declare-fun d!390463 () Bool)

(declare-fun res!616682 () Bool)

(assert (=> d!390463 (=> res!616682 e!875378)))

(assert (=> d!390463 (= res!616682 ((_ is ElementMatch!3715) (h!19267 (map!3062 rules!2550 lambda!57883))))))

(assert (=> d!390463 (= (validRegex!1615 (h!19267 (map!3062 rules!2550 lambda!57883))) e!875378)))

(declare-fun b!1369249 () Bool)

(assert (=> b!1369249 (= e!875380 call!92056)))

(declare-fun b!1369250 () Bool)

(assert (=> b!1369250 (= e!875384 call!92056)))

(assert (= (and d!390463 (not res!616682)) b!1369243))

(assert (= (and b!1369243 c!225329) b!1369245))

(assert (= (and b!1369243 (not c!225329)) b!1369247))

(assert (= (and b!1369245 res!616684) b!1369246))

(assert (= (and b!1369247 c!225330) b!1369242))

(assert (= (and b!1369247 (not c!225330)) b!1369248))

(assert (= (and b!1369242 res!616686) b!1369250))

(assert (= (and b!1369248 (not res!616685)) b!1369244))

(assert (= (and b!1369244 res!616683) b!1369249))

(assert (= (or b!1369242 b!1369244) bm!92051))

(assert (= (or b!1369250 b!1369249) bm!92049))

(assert (= (or b!1369246 bm!92049) bm!92050))

(declare-fun m!1539019 () Bool)

(assert (=> bm!92051 m!1539019))

(declare-fun m!1539021 () Bool)

(assert (=> b!1369245 m!1539021))

(declare-fun m!1539023 () Bool)

(assert (=> bm!92050 m!1539023))

(assert (=> bs!335252 d!390463))

(declare-fun d!390465 () Bool)

(declare-fun lt!454380 () Bool)

(assert (=> d!390465 (= lt!454380 (isEmpty!8341 (list!5330 (_2!7614 lt!453620))))))

(assert (=> d!390465 (= lt!454380 (isEmpty!8344 (c!224866 (_2!7614 lt!453620))))))

(assert (=> d!390465 (= (isEmpty!8338 (_2!7614 lt!453620)) lt!454380)))

(declare-fun bs!335466 () Bool)

(assert (= bs!335466 d!390465))

(declare-fun m!1539025 () Bool)

(assert (=> bs!335466 m!1539025))

(assert (=> bs!335466 m!1539025))

(declare-fun m!1539027 () Bool)

(assert (=> bs!335466 m!1539027))

(declare-fun m!1539029 () Bool)

(assert (=> bs!335466 m!1539029))

(assert (=> b!1367607 d!390465))

(declare-fun d!390467 () Bool)

(assert (=> d!390467 true))

(assert (=> d!390467 true))

(declare-fun res!616689 () Bool)

(assert (=> d!390467 (= (choose!8416 lambda!57882) res!616689)))

(assert (=> d!389695 d!390467))

(declare-fun d!390469 () Bool)

(declare-fun c!225331 () Bool)

(assert (=> d!390469 (= c!225331 ((_ is Empty!4564) (c!224866 lt!453464)))))

(declare-fun e!875385 () List!13928)

(assert (=> d!390469 (= (list!5333 (c!224866 lt!453464)) e!875385)))

(declare-fun b!1369253 () Bool)

(declare-fun e!875386 () List!13928)

(assert (=> b!1369253 (= e!875386 (list!5337 (xs!7291 (c!224866 lt!453464))))))

(declare-fun b!1369252 () Bool)

(assert (=> b!1369252 (= e!875385 e!875386)))

(declare-fun c!225332 () Bool)

(assert (=> b!1369252 (= c!225332 ((_ is Leaf!6961) (c!224866 lt!453464)))))

(declare-fun b!1369254 () Bool)

(assert (=> b!1369254 (= e!875386 (++!3578 (list!5333 (left!11866 (c!224866 lt!453464))) (list!5333 (right!12196 (c!224866 lt!453464)))))))

(declare-fun b!1369251 () Bool)

(assert (=> b!1369251 (= e!875385 Nil!13862)))

(assert (= (and d!390469 c!225331) b!1369251))

(assert (= (and d!390469 (not c!225331)) b!1369252))

(assert (= (and b!1369252 c!225332) b!1369253))

(assert (= (and b!1369252 (not c!225332)) b!1369254))

(declare-fun m!1539031 () Bool)

(assert (=> b!1369253 m!1539031))

(assert (=> b!1369254 m!1537345))

(assert (=> b!1369254 m!1537347))

(assert (=> b!1369254 m!1537345))

(assert (=> b!1369254 m!1537347))

(declare-fun m!1539033 () Bool)

(assert (=> b!1369254 m!1539033))

(assert (=> d!389481 d!390469))

(declare-fun d!390471 () Bool)

(assert (=> d!390471 true))

(declare-fun order!8449 () Int)

(declare-fun lambda!57995 () Int)

(declare-fun order!8447 () Int)

(declare-fun dynLambda!6283 (Int Int) Int)

(declare-fun dynLambda!6284 (Int Int) Int)

(assert (=> d!390471 (< (dynLambda!6283 order!8447 (toChars!3523 (transformation!2401 (h!19265 rules!2550)))) (dynLambda!6284 order!8449 lambda!57995))))

(assert (=> d!390471 true))

(assert (=> d!390471 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (h!19265 rules!2550)))) (dynLambda!6284 order!8449 lambda!57995))))

(declare-fun Forall!537 (Int) Bool)

(assert (=> d!390471 (= (semiInverseModEq!923 (toChars!3523 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (h!19265 rules!2550)))) (Forall!537 lambda!57995))))

(declare-fun bs!335467 () Bool)

(assert (= bs!335467 d!390471))

(declare-fun m!1539035 () Bool)

(assert (=> bs!335467 m!1539035))

(assert (=> d!389465 d!390471))

(declare-fun b!1369270 () Bool)

(declare-fun e!875392 () List!13931)

(assert (=> b!1369270 (= e!875392 (++!3584 (list!5334 (left!11867 (c!224868 (_1!7614 lt!453453)))) (list!5334 (right!12197 (c!224868 (_1!7614 lt!453453))))))))

(declare-fun b!1369267 () Bool)

(declare-fun e!875391 () List!13931)

(assert (=> b!1369267 (= e!875391 Nil!13865)))

(declare-fun b!1369269 () Bool)

(declare-fun list!5339 (IArray!9135) List!13931)

(assert (=> b!1369269 (= e!875392 (list!5339 (xs!7292 (c!224868 (_1!7614 lt!453453)))))))

(declare-fun d!390473 () Bool)

(declare-fun c!225337 () Bool)

(assert (=> d!390473 (= c!225337 ((_ is Empty!4565) (c!224868 (_1!7614 lt!453453))))))

(assert (=> d!390473 (= (list!5334 (c!224868 (_1!7614 lt!453453))) e!875391)))

(declare-fun b!1369268 () Bool)

(assert (=> b!1369268 (= e!875391 e!875392)))

(declare-fun c!225338 () Bool)

(assert (=> b!1369268 (= c!225338 ((_ is Leaf!6962) (c!224868 (_1!7614 lt!453453))))))

(assert (= (and d!390473 c!225337) b!1369267))

(assert (= (and d!390473 (not c!225337)) b!1369268))

(assert (= (and b!1369268 c!225338) b!1369269))

(assert (= (and b!1369268 (not c!225338)) b!1369270))

(declare-fun m!1539037 () Bool)

(assert (=> b!1369270 m!1539037))

(declare-fun m!1539039 () Bool)

(assert (=> b!1369270 m!1539039))

(assert (=> b!1369270 m!1539037))

(assert (=> b!1369270 m!1539039))

(declare-fun m!1539041 () Bool)

(assert (=> b!1369270 m!1539041))

(declare-fun m!1539043 () Bool)

(assert (=> b!1369269 m!1539043))

(assert (=> d!389707 d!390473))

(declare-fun bs!335468 () Bool)

(declare-fun d!390475 () Bool)

(assert (= bs!335468 (and d!390475 d!389641)))

(declare-fun lambda!57996 () Int)

(assert (=> bs!335468 (not (= lambda!57996 lambda!57926))))

(declare-fun bs!335469 () Bool)

(assert (= bs!335469 (and d!390475 b!1367240)))

(assert (=> bs!335469 (not (= lambda!57996 lambda!57885))))

(declare-fun bs!335470 () Bool)

(assert (= bs!335470 (and d!390475 d!389995)))

(assert (=> bs!335470 (not (= lambda!57996 lambda!57954))))

(declare-fun bs!335471 () Bool)

(assert (= bs!335471 (and d!390475 d!389639)))

(assert (=> bs!335471 (= (= lambda!57926 lambda!57885) (= lambda!57996 lambda!57923))))

(declare-fun bs!335472 () Bool)

(assert (= bs!335472 (and d!390475 d!389955)))

(assert (=> bs!335472 (not (= lambda!57996 lambda!57951))))

(assert (=> d!390475 true))

(assert (=> d!390475 (< (dynLambda!6270 order!8431 lambda!57926) (dynLambda!6270 order!8431 lambda!57996))))

(assert (=> d!390475 (= (exists!460 rules!2550 lambda!57926) (not (forall!3390 rules!2550 lambda!57996)))))

(declare-fun bs!335473 () Bool)

(assert (= bs!335473 d!390475))

(declare-fun m!1539045 () Bool)

(assert (=> bs!335473 m!1539045))

(assert (=> d!389641 d!390475))

(declare-fun bs!335474 () Bool)

(declare-fun d!390477 () Bool)

(assert (= bs!335474 (and d!390477 d!389641)))

(declare-fun lambda!57999 () Int)

(assert (=> bs!335474 (= lambda!57999 lambda!57926)))

(declare-fun bs!335475 () Bool)

(assert (= bs!335475 (and d!390477 b!1367240)))

(assert (=> bs!335475 (not (= lambda!57999 lambda!57885))))

(declare-fun bs!335476 () Bool)

(assert (= bs!335476 (and d!390477 d!389995)))

(assert (=> bs!335476 (not (= lambda!57999 lambda!57954))))

(declare-fun bs!335477 () Bool)

(assert (= bs!335477 (and d!390477 d!389639)))

(assert (=> bs!335477 (not (= lambda!57999 lambda!57923))))

(declare-fun bs!335478 () Bool)

(assert (= bs!335478 (and d!390477 d!389955)))

(assert (=> bs!335478 (not (= lambda!57999 lambda!57951))))

(declare-fun bs!335479 () Bool)

(assert (= bs!335479 (and d!390477 d!390475)))

(assert (=> bs!335479 (not (= lambda!57999 lambda!57996))))

(assert (=> d!390477 true))

(assert (=> d!390477 true))

(assert (=> d!390477 (< (dynLambda!6271 order!8433 lambda!57883) (dynLambda!6270 order!8431 lambda!57999))))

(assert (=> d!390477 (exists!460 rules!2550 lambda!57999)))

(assert (=> d!390477 true))

(declare-fun _$24!106 () Unit!20071)

(assert (=> d!390477 (= (choose!8415 rules!2550 lambda!57883 lt!453455) _$24!106)))

(declare-fun bs!335480 () Bool)

(assert (= bs!335480 d!390477))

(declare-fun m!1539047 () Bool)

(assert (=> bs!335480 m!1539047))

(assert (=> d!389641 d!390477))

(assert (=> d!389641 d!389691))

(assert (=> d!389641 d!389615))

(declare-fun d!390479 () Bool)

(declare-fun lt!454381 () Int)

(assert (=> d!390479 (>= lt!454381 0)))

(declare-fun e!875393 () Int)

(assert (=> d!390479 (= lt!454381 e!875393)))

(declare-fun c!225339 () Bool)

(assert (=> d!390479 (= c!225339 ((_ is Nil!13862) (list!5330 lt!453456)))))

(assert (=> d!390479 (= (size!11363 (list!5330 lt!453456)) lt!454381)))

(declare-fun b!1369273 () Bool)

(assert (=> b!1369273 (= e!875393 0)))

(declare-fun b!1369274 () Bool)

(assert (=> b!1369274 (= e!875393 (+ 1 (size!11363 (t!121279 (list!5330 lt!453456)))))))

(assert (= (and d!390479 c!225339) b!1369273))

(assert (= (and d!390479 (not c!225339)) b!1369274))

(declare-fun m!1539049 () Bool)

(assert (=> b!1369274 m!1539049))

(assert (=> d!389469 d!390479))

(assert (=> d!389469 d!389609))

(declare-fun d!390481 () Bool)

(declare-fun lt!454384 () Int)

(assert (=> d!390481 (= lt!454384 (size!11363 (list!5333 (c!224866 lt!453456))))))

(assert (=> d!390481 (= lt!454384 (ite ((_ is Empty!4564) (c!224866 lt!453456)) 0 (ite ((_ is Leaf!6961) (c!224866 lt!453456)) (csize!9359 (c!224866 lt!453456)) (csize!9358 (c!224866 lt!453456)))))))

(assert (=> d!390481 (= (size!11364 (c!224866 lt!453456)) lt!454384)))

(declare-fun bs!335481 () Bool)

(assert (= bs!335481 d!390481))

(assert (=> bs!335481 m!1536397))

(assert (=> bs!335481 m!1536397))

(declare-fun m!1539051 () Bool)

(assert (=> bs!335481 m!1539051))

(assert (=> d!389469 d!390481))

(declare-fun d!390483 () Bool)

(declare-fun c!225340 () Bool)

(assert (=> d!390483 (= c!225340 ((_ is Nil!13862) lt!453516))))

(declare-fun e!875394 () (InoxSet C!7720))

(assert (=> d!390483 (= (content!2019 lt!453516) e!875394)))

(declare-fun b!1369275 () Bool)

(assert (=> b!1369275 (= e!875394 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1369276 () Bool)

(assert (=> b!1369276 (= e!875394 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 lt!453516) true) (content!2019 (t!121279 lt!453516))))))

(assert (= (and d!390483 c!225340) b!1369275))

(assert (= (and d!390483 (not c!225340)) b!1369276))

(declare-fun m!1539053 () Bool)

(assert (=> b!1369276 m!1539053))

(declare-fun m!1539055 () Bool)

(assert (=> b!1369276 m!1539055))

(assert (=> d!389505 d!390483))

(declare-fun d!390485 () Bool)

(declare-fun c!225341 () Bool)

(assert (=> d!390485 (= c!225341 ((_ is Nil!13862) lt!453458))))

(declare-fun e!875395 () (InoxSet C!7720))

(assert (=> d!390485 (= (content!2019 lt!453458) e!875395)))

(declare-fun b!1369277 () Bool)

(assert (=> b!1369277 (= e!875395 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1369278 () Bool)

(assert (=> b!1369278 (= e!875395 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 lt!453458) true) (content!2019 (t!121279 lt!453458))))))

(assert (= (and d!390485 c!225341) b!1369277))

(assert (= (and d!390485 (not c!225341)) b!1369278))

(declare-fun m!1539057 () Bool)

(assert (=> b!1369278 m!1539057))

(declare-fun m!1539059 () Bool)

(assert (=> b!1369278 m!1539059))

(assert (=> d!389505 d!390485))

(declare-fun d!390487 () Bool)

(declare-fun c!225342 () Bool)

(assert (=> d!390487 (= c!225342 ((_ is Nil!13862) (Cons!13862 lt!453470 Nil!13862)))))

(declare-fun e!875396 () (InoxSet C!7720))

(assert (=> d!390487 (= (content!2019 (Cons!13862 lt!453470 Nil!13862)) e!875396)))

(declare-fun b!1369279 () Bool)

(assert (=> b!1369279 (= e!875396 ((as const (Array C!7720 Bool)) false))))

(declare-fun b!1369280 () Bool)

(assert (=> b!1369280 (= e!875396 ((_ map or) (store ((as const (Array C!7720 Bool)) false) (h!19263 (Cons!13862 lt!453470 Nil!13862)) true) (content!2019 (t!121279 (Cons!13862 lt!453470 Nil!13862)))))))

(assert (= (and d!390487 c!225342) b!1369279))

(assert (= (and d!390487 (not c!225342)) b!1369280))

(declare-fun m!1539061 () Bool)

(assert (=> b!1369280 m!1539061))

(declare-fun m!1539063 () Bool)

(assert (=> b!1369280 m!1539063))

(assert (=> d!389505 d!390487))

(declare-fun d!390489 () Bool)

(assert (=> d!390489 (= ($colon$colon!197 (map!3062 (t!121281 rules!2550) lambda!57883) (dynLambda!6266 lambda!57883 (h!19265 rules!2550))) (Cons!13866 (dynLambda!6266 lambda!57883 (h!19265 rules!2550)) (map!3062 (t!121281 rules!2550) lambda!57883)))))

(assert (=> b!1367623 d!390489))

(declare-fun d!390491 () Bool)

(declare-fun lt!454385 () List!13932)

(assert (=> d!390491 (= (size!11368 lt!454385) (size!11369 (t!121281 rules!2550)))))

(declare-fun e!875397 () List!13932)

(assert (=> d!390491 (= lt!454385 e!875397)))

(declare-fun c!225343 () Bool)

(assert (=> d!390491 (= c!225343 ((_ is Nil!13864) (t!121281 rules!2550)))))

(assert (=> d!390491 (= (map!3062 (t!121281 rules!2550) lambda!57883) lt!454385)))

(declare-fun b!1369281 () Bool)

(assert (=> b!1369281 (= e!875397 Nil!13866)))

(declare-fun b!1369282 () Bool)

(assert (=> b!1369282 (= e!875397 ($colon$colon!197 (map!3062 (t!121281 (t!121281 rules!2550)) lambda!57883) (dynLambda!6266 lambda!57883 (h!19265 (t!121281 rules!2550)))))))

(assert (= (and d!390491 c!225343) b!1369281))

(assert (= (and d!390491 (not c!225343)) b!1369282))

(declare-fun b_lambda!41777 () Bool)

(assert (=> (not b_lambda!41777) (not b!1369282)))

(declare-fun m!1539065 () Bool)

(assert (=> d!390491 m!1539065))

(declare-fun m!1539067 () Bool)

(assert (=> d!390491 m!1539067))

(declare-fun m!1539069 () Bool)

(assert (=> b!1369282 m!1539069))

(declare-fun m!1539071 () Bool)

(assert (=> b!1369282 m!1539071))

(assert (=> b!1369282 m!1539069))

(assert (=> b!1369282 m!1539071))

(declare-fun m!1539073 () Bool)

(assert (=> b!1369282 m!1539073))

(assert (=> b!1367623 d!390491))

(declare-fun d!390493 () Bool)

(assert (=> d!390493 (= (inv!18213 (tag!2663 (h!19265 (t!121281 rules!2550)))) (= (mod (str.len (value!78060 (tag!2663 (h!19265 (t!121281 rules!2550))))) 2) 0))))

(assert (=> b!1367917 d!390493))

(declare-fun d!390495 () Bool)

(declare-fun res!616690 () Bool)

(declare-fun e!875398 () Bool)

(assert (=> d!390495 (=> (not res!616690) (not e!875398))))

(assert (=> d!390495 (= res!616690 (semiInverseModEq!923 (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toValue!3664 (transformation!2401 (h!19265 (t!121281 rules!2550))))))))

(assert (=> d!390495 (= (inv!18216 (transformation!2401 (h!19265 (t!121281 rules!2550)))) e!875398)))

(declare-fun b!1369283 () Bool)

(assert (=> b!1369283 (= e!875398 (equivClasses!882 (toChars!3523 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toValue!3664 (transformation!2401 (h!19265 (t!121281 rules!2550))))))))

(assert (= (and d!390495 res!616690) b!1369283))

(declare-fun m!1539075 () Bool)

(assert (=> d!390495 m!1539075))

(declare-fun m!1539077 () Bool)

(assert (=> b!1369283 m!1539077))

(assert (=> b!1367917 d!390495))

(declare-fun d!390497 () Bool)

(declare-fun lt!454386 () Bool)

(assert (=> d!390497 (= lt!454386 (select (content!2019 (t!121279 lt!453465)) lt!453470))))

(declare-fun e!875399 () Bool)

(assert (=> d!390497 (= lt!454386 e!875399)))

(declare-fun res!616691 () Bool)

(assert (=> d!390497 (=> (not res!616691) (not e!875399))))

(assert (=> d!390497 (= res!616691 ((_ is Cons!13862) (t!121279 lt!453465)))))

(assert (=> d!390497 (= (contains!2585 (t!121279 lt!453465) lt!453470) lt!454386)))

(declare-fun b!1369284 () Bool)

(declare-fun e!875400 () Bool)

(assert (=> b!1369284 (= e!875399 e!875400)))

(declare-fun res!616692 () Bool)

(assert (=> b!1369284 (=> res!616692 e!875400)))

(assert (=> b!1369284 (= res!616692 (= (h!19263 (t!121279 lt!453465)) lt!453470))))

(declare-fun b!1369285 () Bool)

(assert (=> b!1369285 (= e!875400 (contains!2585 (t!121279 (t!121279 lt!453465)) lt!453470))))

(assert (= (and d!390497 res!616691) b!1369284))

(assert (= (and b!1369284 (not res!616692)) b!1369285))

(assert (=> d!390497 m!1537555))

(declare-fun m!1539079 () Bool)

(assert (=> d!390497 m!1539079))

(declare-fun m!1539081 () Bool)

(assert (=> b!1369285 m!1539081))

(assert (=> b!1367440 d!390497))

(declare-fun b!1369305 () Bool)

(declare-fun res!616707 () Bool)

(declare-fun e!875411 () Bool)

(assert (=> b!1369305 (=> (not res!616707) (not e!875411))))

(declare-fun lt!454401 () Option!2662)

(assert (=> b!1369305 (= res!616707 (= (value!78061 (_1!7615 (get!4341 lt!454401))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!454401)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!454401)))))))))

(declare-fun b!1369306 () Bool)

(declare-fun res!616709 () Bool)

(assert (=> b!1369306 (=> (not res!616709) (not e!875411))))

(assert (=> b!1369306 (= res!616709 (= (rule!4154 (_1!7615 (get!4341 lt!454401))) (h!19265 rules!2550)))))

(declare-fun b!1369307 () Bool)

(declare-fun res!616712 () Bool)

(assert (=> b!1369307 (=> (not res!616712) (not e!875411))))

(assert (=> b!1369307 (= res!616712 (< (size!11363 (_2!7615 (get!4341 lt!454401))) (size!11363 lt!453458)))))

(declare-fun b!1369308 () Bool)

(assert (=> b!1369308 (= e!875411 (= (size!11357 (_1!7615 (get!4341 lt!454401))) (size!11363 (originalCharacters!3263 (_1!7615 (get!4341 lt!454401))))))))

(declare-fun b!1369309 () Bool)

(declare-fun res!616711 () Bool)

(assert (=> b!1369309 (=> (not res!616711) (not e!875411))))

(assert (=> b!1369309 (= res!616711 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454401)))) (_2!7615 (get!4341 lt!454401))) lt!453458))))

(declare-fun b!1369310 () Bool)

(declare-fun e!875410 () Option!2662)

(declare-datatypes ((tuple2!13466 0))(
  ( (tuple2!13467 (_1!7619 List!13928) (_2!7619 List!13928)) )
))
(declare-fun lt!454400 () tuple2!13466)

(assert (=> b!1369310 (= e!875410 (Some!2661 (tuple2!13459 (Token!4465 (apply!3389 (transformation!2401 (h!19265 rules!2550)) (seqFromList!1631 (_1!7619 lt!454400))) (h!19265 rules!2550) (size!11358 (seqFromList!1631 (_1!7619 lt!454400))) (_1!7619 lt!454400)) (_2!7619 lt!454400))))))

(declare-fun lt!454398 () Unit!20071)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!264 (Regex!3715 List!13928) Unit!20071)

(assert (=> b!1369310 (= lt!454398 (longestMatchIsAcceptedByMatchOrIsEmpty!264 (regex!2401 (h!19265 rules!2550)) lt!453458))))

(declare-fun res!616710 () Bool)

(declare-fun findLongestMatchInner!280 (Regex!3715 List!13928 Int List!13928 List!13928 Int) tuple2!13466)

(assert (=> b!1369310 (= res!616710 (isEmpty!8341 (_1!7619 (findLongestMatchInner!280 (regex!2401 (h!19265 rules!2550)) Nil!13862 (size!11363 Nil!13862) lt!453458 lt!453458 (size!11363 lt!453458)))))))

(declare-fun e!875409 () Bool)

(assert (=> b!1369310 (=> res!616710 e!875409)))

(assert (=> b!1369310 e!875409))

(declare-fun lt!454397 () Unit!20071)

(assert (=> b!1369310 (= lt!454397 lt!454398)))

(declare-fun lt!454399 () Unit!20071)

(declare-fun lemmaSemiInverse!334 (TokenValueInjection!4642 BalanceConc!9068) Unit!20071)

(assert (=> b!1369310 (= lt!454399 (lemmaSemiInverse!334 (transformation!2401 (h!19265 rules!2550)) (seqFromList!1631 (_1!7619 lt!454400))))))

(declare-fun d!390499 () Bool)

(declare-fun e!875412 () Bool)

(assert (=> d!390499 e!875412))

(declare-fun res!616713 () Bool)

(assert (=> d!390499 (=> res!616713 e!875412)))

(assert (=> d!390499 (= res!616713 (isEmpty!8345 lt!454401))))

(assert (=> d!390499 (= lt!454401 e!875410)))

(declare-fun c!225346 () Bool)

(assert (=> d!390499 (= c!225346 (isEmpty!8341 (_1!7619 lt!454400)))))

(declare-fun findLongestMatch!236 (Regex!3715 List!13928) tuple2!13466)

(assert (=> d!390499 (= lt!454400 (findLongestMatch!236 (regex!2401 (h!19265 rules!2550)) lt!453458))))

(assert (=> d!390499 (ruleValid!590 thiss!19762 (h!19265 rules!2550))))

(assert (=> d!390499 (= (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) lt!453458) lt!454401)))

(declare-fun b!1369304 () Bool)

(assert (=> b!1369304 (= e!875409 (matchR!1708 (regex!2401 (h!19265 rules!2550)) (_1!7619 (findLongestMatchInner!280 (regex!2401 (h!19265 rules!2550)) Nil!13862 (size!11363 Nil!13862) lt!453458 lt!453458 (size!11363 lt!453458)))))))

(declare-fun b!1369311 () Bool)

(assert (=> b!1369311 (= e!875410 None!2661)))

(declare-fun b!1369312 () Bool)

(assert (=> b!1369312 (= e!875412 e!875411)))

(declare-fun res!616708 () Bool)

(assert (=> b!1369312 (=> (not res!616708) (not e!875411))))

(assert (=> b!1369312 (= res!616708 (matchR!1708 (regex!2401 (h!19265 rules!2550)) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454401))))))))

(assert (= (and d!390499 c!225346) b!1369311))

(assert (= (and d!390499 (not c!225346)) b!1369310))

(assert (= (and b!1369310 (not res!616710)) b!1369304))

(assert (= (and d!390499 (not res!616713)) b!1369312))

(assert (= (and b!1369312 res!616708) b!1369309))

(assert (= (and b!1369309 res!616711) b!1369307))

(assert (= (and b!1369307 res!616712) b!1369306))

(assert (= (and b!1369306 res!616709) b!1369305))

(assert (= (and b!1369305 res!616707) b!1369308))

(declare-fun m!1539083 () Bool)

(assert (=> b!1369304 m!1539083))

(assert (=> b!1369304 m!1536057))

(assert (=> b!1369304 m!1539083))

(assert (=> b!1369304 m!1536057))

(declare-fun m!1539085 () Bool)

(assert (=> b!1369304 m!1539085))

(declare-fun m!1539087 () Bool)

(assert (=> b!1369304 m!1539087))

(declare-fun m!1539089 () Bool)

(assert (=> b!1369310 m!1539089))

(declare-fun m!1539091 () Bool)

(assert (=> b!1369310 m!1539091))

(declare-fun m!1539093 () Bool)

(assert (=> b!1369310 m!1539093))

(assert (=> b!1369310 m!1539083))

(assert (=> b!1369310 m!1536057))

(assert (=> b!1369310 m!1539083))

(assert (=> b!1369310 m!1536057))

(assert (=> b!1369310 m!1539085))

(assert (=> b!1369310 m!1539091))

(declare-fun m!1539095 () Bool)

(assert (=> b!1369310 m!1539095))

(assert (=> b!1369310 m!1539091))

(assert (=> b!1369310 m!1539091))

(declare-fun m!1539097 () Bool)

(assert (=> b!1369310 m!1539097))

(declare-fun m!1539099 () Bool)

(assert (=> b!1369310 m!1539099))

(declare-fun m!1539101 () Bool)

(assert (=> b!1369307 m!1539101))

(declare-fun m!1539103 () Bool)

(assert (=> b!1369307 m!1539103))

(assert (=> b!1369307 m!1536057))

(assert (=> b!1369309 m!1539101))

(declare-fun m!1539105 () Bool)

(assert (=> b!1369309 m!1539105))

(assert (=> b!1369309 m!1539105))

(declare-fun m!1539107 () Bool)

(assert (=> b!1369309 m!1539107))

(assert (=> b!1369309 m!1539107))

(declare-fun m!1539109 () Bool)

(assert (=> b!1369309 m!1539109))

(assert (=> b!1369312 m!1539101))

(assert (=> b!1369312 m!1539105))

(assert (=> b!1369312 m!1539105))

(assert (=> b!1369312 m!1539107))

(assert (=> b!1369312 m!1539107))

(declare-fun m!1539111 () Bool)

(assert (=> b!1369312 m!1539111))

(assert (=> b!1369305 m!1539101))

(declare-fun m!1539113 () Bool)

(assert (=> b!1369305 m!1539113))

(assert (=> b!1369305 m!1539113))

(declare-fun m!1539115 () Bool)

(assert (=> b!1369305 m!1539115))

(assert (=> b!1369306 m!1539101))

(assert (=> b!1369308 m!1539101))

(declare-fun m!1539117 () Bool)

(assert (=> b!1369308 m!1539117))

(declare-fun m!1539119 () Bool)

(assert (=> d!390499 m!1539119))

(declare-fun m!1539121 () Bool)

(assert (=> d!390499 m!1539121))

(declare-fun m!1539123 () Bool)

(assert (=> d!390499 m!1539123))

(assert (=> d!390499 m!1537539))

(assert (=> bm!91962 d!390499))

(declare-fun d!390501 () Bool)

(declare-fun res!616714 () Bool)

(declare-fun e!875413 () Bool)

(assert (=> d!390501 (=> res!616714 e!875413)))

(assert (=> d!390501 (= res!616714 ((_ is Nil!13866) lt!453463))))

(assert (=> d!390501 (= (forall!3388 lt!453463 lambda!57920) e!875413)))

(declare-fun b!1369313 () Bool)

(declare-fun e!875414 () Bool)

(assert (=> b!1369313 (= e!875413 e!875414)))

(declare-fun res!616715 () Bool)

(assert (=> b!1369313 (=> (not res!616715) (not e!875414))))

(assert (=> b!1369313 (= res!616715 (dynLambda!6274 lambda!57920 (h!19267 lt!453463)))))

(declare-fun b!1369314 () Bool)

(assert (=> b!1369314 (= e!875414 (forall!3388 (t!121283 lt!453463) lambda!57920))))

(assert (= (and d!390501 (not res!616714)) b!1369313))

(assert (= (and b!1369313 res!616715) b!1369314))

(declare-fun b_lambda!41779 () Bool)

(assert (=> (not b_lambda!41779) (not b!1369313)))

(declare-fun m!1539125 () Bool)

(assert (=> b!1369313 m!1539125))

(declare-fun m!1539127 () Bool)

(assert (=> b!1369314 m!1539127))

(assert (=> d!389627 d!390501))

(declare-fun b!1369315 () Bool)

(declare-fun res!616720 () Bool)

(declare-fun e!875421 () Bool)

(assert (=> b!1369315 (=> (not res!616720) (not e!875421))))

(declare-fun call!92057 () Bool)

(assert (=> b!1369315 (= res!616720 call!92057)))

(declare-fun e!875418 () Bool)

(assert (=> b!1369315 (= e!875418 e!875421)))

(declare-fun bm!92052 () Bool)

(declare-fun call!92059 () Bool)

(declare-fun call!92058 () Bool)

(assert (=> bm!92052 (= call!92059 call!92058)))

(declare-fun b!1369316 () Bool)

(declare-fun e!875415 () Bool)

(declare-fun e!875416 () Bool)

(assert (=> b!1369316 (= e!875415 e!875416)))

(declare-fun c!225347 () Bool)

(assert (=> b!1369316 (= c!225347 ((_ is Star!3715) lt!453696))))

(declare-fun b!1369317 () Bool)

(declare-fun e!875420 () Bool)

(declare-fun e!875417 () Bool)

(assert (=> b!1369317 (= e!875420 e!875417)))

(declare-fun res!616717 () Bool)

(assert (=> b!1369317 (=> (not res!616717) (not e!875417))))

(assert (=> b!1369317 (= res!616717 call!92057)))

(declare-fun bm!92054 () Bool)

(declare-fun c!225348 () Bool)

(assert (=> bm!92054 (= call!92057 (validRegex!1615 (ite c!225348 (regOne!7943 lt!453696) (regOne!7942 lt!453696))))))

(declare-fun b!1369318 () Bool)

(declare-fun e!875419 () Bool)

(assert (=> b!1369318 (= e!875416 e!875419)))

(declare-fun res!616718 () Bool)

(assert (=> b!1369318 (= res!616718 (not (nullable!1195 (reg!4044 lt!453696))))))

(assert (=> b!1369318 (=> (not res!616718) (not e!875419))))

(declare-fun b!1369319 () Bool)

(assert (=> b!1369319 (= e!875419 call!92058)))

(declare-fun b!1369320 () Bool)

(assert (=> b!1369320 (= e!875416 e!875418)))

(assert (=> b!1369320 (= c!225348 ((_ is Union!3715) lt!453696))))

(declare-fun b!1369321 () Bool)

(declare-fun res!616719 () Bool)

(assert (=> b!1369321 (=> res!616719 e!875420)))

(assert (=> b!1369321 (= res!616719 (not ((_ is Concat!6207) lt!453696)))))

(assert (=> b!1369321 (= e!875418 e!875420)))

(declare-fun bm!92053 () Bool)

(assert (=> bm!92053 (= call!92058 (validRegex!1615 (ite c!225347 (reg!4044 lt!453696) (ite c!225348 (regTwo!7943 lt!453696) (regTwo!7942 lt!453696)))))))

(declare-fun d!390503 () Bool)

(declare-fun res!616716 () Bool)

(assert (=> d!390503 (=> res!616716 e!875415)))

(assert (=> d!390503 (= res!616716 ((_ is ElementMatch!3715) lt!453696))))

(assert (=> d!390503 (= (validRegex!1615 lt!453696) e!875415)))

(declare-fun b!1369322 () Bool)

(assert (=> b!1369322 (= e!875417 call!92059)))

(declare-fun b!1369323 () Bool)

(assert (=> b!1369323 (= e!875421 call!92059)))

(assert (= (and d!390503 (not res!616716)) b!1369316))

(assert (= (and b!1369316 c!225347) b!1369318))

(assert (= (and b!1369316 (not c!225347)) b!1369320))

(assert (= (and b!1369318 res!616718) b!1369319))

(assert (= (and b!1369320 c!225348) b!1369315))

(assert (= (and b!1369320 (not c!225348)) b!1369321))

(assert (= (and b!1369315 res!616720) b!1369323))

(assert (= (and b!1369321 (not res!616719)) b!1369317))

(assert (= (and b!1369317 res!616717) b!1369322))

(assert (= (or b!1369315 b!1369317) bm!92054))

(assert (= (or b!1369323 b!1369322) bm!92052))

(assert (= (or b!1369319 bm!92052) bm!92053))

(declare-fun m!1539129 () Bool)

(assert (=> bm!92054 m!1539129))

(declare-fun m!1539131 () Bool)

(assert (=> b!1369318 m!1539131))

(declare-fun m!1539133 () Bool)

(assert (=> bm!92053 m!1539133))

(assert (=> bs!335250 d!390503))

(assert (=> b!1367594 d!389917))

(declare-fun d!390505 () Bool)

(assert (=> d!390505 (= (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614))))) (dynLambda!6282 (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614))))))))

(declare-fun b_lambda!41781 () Bool)

(assert (=> (not b_lambda!41781) (not d!390505)))

(declare-fun t!121409 () Bool)

(declare-fun tb!72149 () Bool)

(assert (=> (and b!1367219 (= (toValue!3664 (transformation!2401 (h!19265 rules!2550))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121409) tb!72149))

(declare-fun result!87600 () Bool)

(assert (=> tb!72149 (= result!87600 (inv!21 (dynLambda!6282 (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614))))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614)))))))))

(declare-fun m!1539135 () Bool)

(assert (=> tb!72149 m!1539135))

(assert (=> d!390505 t!121409))

(declare-fun b_and!91771 () Bool)

(assert (= b_and!91763 (and (=> t!121409 result!87600) b_and!91771)))

(declare-fun t!121411 () Bool)

(declare-fun tb!72151 () Bool)

(assert (=> (and b!1367242 (= (toValue!3664 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121411) tb!72151))

(declare-fun result!87602 () Bool)

(assert (= result!87602 result!87600))

(assert (=> d!390505 t!121411))

(declare-fun b_and!91773 () Bool)

(assert (= b_and!91765 (and (=> t!121411 result!87602) b_and!91773)))

(declare-fun t!121413 () Bool)

(declare-fun tb!72153 () Bool)

(assert (=> (and b!1367212 (= (toValue!3664 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121413) tb!72153))

(declare-fun result!87604 () Bool)

(assert (= result!87604 result!87600))

(assert (=> d!390505 t!121413))

(declare-fun b_and!91775 () Bool)

(assert (= b_and!91767 (and (=> t!121413 result!87604) b_and!91775)))

(declare-fun t!121415 () Bool)

(declare-fun tb!72155 () Bool)

(assert (=> (and b!1367918 (= (toValue!3664 (transformation!2401 (h!19265 (t!121281 rules!2550)))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121415) tb!72155))

(declare-fun result!87606 () Bool)

(assert (= result!87606 result!87600))

(assert (=> d!390505 t!121415))

(declare-fun b_and!91777 () Bool)

(assert (= b_and!91769 (and (=> t!121415 result!87606) b_and!91777)))

(assert (=> d!390505 m!1536377))

(declare-fun m!1539137 () Bool)

(assert (=> d!390505 m!1539137))

(assert (=> b!1367594 d!390505))

(declare-fun d!390507 () Bool)

(assert (=> d!390507 (= (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614)))) (fromListB!718 (originalCharacters!3263 (_1!7615 (get!4341 lt!453614)))))))

(declare-fun bs!335482 () Bool)

(assert (= bs!335482 d!390507))

(declare-fun m!1539139 () Bool)

(assert (=> bs!335482 m!1539139))

(assert (=> b!1367594 d!390507))

(declare-fun d!390509 () Bool)

(declare-fun lt!454402 () Int)

(assert (=> d!390509 (>= lt!454402 0)))

(declare-fun e!875423 () Int)

(assert (=> d!390509 (= lt!454402 e!875423)))

(declare-fun c!225349 () Bool)

(assert (=> d!390509 (= c!225349 ((_ is Nil!13862) (_2!7613 lt!453701)))))

(assert (=> d!390509 (= (size!11363 (_2!7613 lt!453701)) lt!454402)))

(declare-fun b!1369324 () Bool)

(assert (=> b!1369324 (= e!875423 0)))

(declare-fun b!1369325 () Bool)

(assert (=> b!1369325 (= e!875423 (+ 1 (size!11363 (t!121279 (_2!7613 lt!453701)))))))

(assert (= (and d!390509 c!225349) b!1369324))

(assert (= (and d!390509 (not c!225349)) b!1369325))

(declare-fun m!1539141 () Bool)

(assert (=> b!1369325 m!1539141))

(assert (=> b!1367849 d!390509))

(declare-fun d!390511 () Bool)

(declare-fun lt!454403 () Int)

(assert (=> d!390511 (>= lt!454403 0)))

(declare-fun e!875424 () Int)

(assert (=> d!390511 (= lt!454403 e!875424)))

(declare-fun c!225350 () Bool)

(assert (=> d!390511 (= c!225350 ((_ is Nil!13862) (list!5330 lt!453460)))))

(assert (=> d!390511 (= (size!11363 (list!5330 lt!453460)) lt!454403)))

(declare-fun b!1369326 () Bool)

(assert (=> b!1369326 (= e!875424 0)))

(declare-fun b!1369327 () Bool)

(assert (=> b!1369327 (= e!875424 (+ 1 (size!11363 (t!121279 (list!5330 lt!453460)))))))

(assert (= (and d!390511 c!225350) b!1369326))

(assert (= (and d!390511 (not c!225350)) b!1369327))

(declare-fun m!1539143 () Bool)

(assert (=> b!1369327 m!1539143))

(assert (=> b!1367849 d!390511))

(assert (=> b!1367321 d!389469))

(declare-fun d!390513 () Bool)

(declare-fun lt!454404 () Int)

(assert (=> d!390513 (= lt!454404 (size!11370 (list!5331 (_1!7614 lt!453671))))))

(assert (=> d!390513 (= lt!454404 (size!11372 (c!224868 (_1!7614 lt!453671))))))

(assert (=> d!390513 (= (size!11366 (_1!7614 lt!453671)) lt!454404)))

(declare-fun bs!335483 () Bool)

(assert (= bs!335483 d!390513))

(assert (=> bs!335483 m!1536605))

(assert (=> bs!335483 m!1536605))

(declare-fun m!1539145 () Bool)

(assert (=> bs!335483 m!1539145))

(declare-fun m!1539147 () Bool)

(assert (=> bs!335483 m!1539147))

(assert (=> d!389649 d!390513))

(declare-fun b!1369328 () Bool)

(declare-fun lt!454437 () tuple2!13456)

(declare-fun lt!454429 () Option!2664)

(assert (=> b!1369328 (= lt!454437 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454429))))))

(declare-fun e!875427 () tuple2!13456)

(assert (=> b!1369328 (= e!875427 (tuple2!13457 (prepend!368 (_1!7614 lt!454437) (_1!7618 (v!21459 lt!454429))) (_2!7614 lt!454437)))))

(declare-fun b!1369329 () Bool)

(declare-fun e!875425 () tuple2!13456)

(declare-fun lt!454431 () BalanceConc!9068)

(assert (=> b!1369329 (= e!875425 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!454431))))

(declare-fun d!390515 () Bool)

(declare-fun e!875426 () Bool)

(assert (=> d!390515 e!875426))

(declare-fun res!616721 () Bool)

(assert (=> d!390515 (=> (not res!616721) (not e!875426))))

(declare-fun lt!454416 () tuple2!13456)

(assert (=> d!390515 (= res!616721 (= (list!5331 (_1!7614 lt!454416)) (list!5331 (_1!7614 (lexRec!279 thiss!19762 rules!2550 lt!453460)))))))

(declare-fun e!875428 () tuple2!13456)

(assert (=> d!390515 (= lt!454416 e!875428)))

(declare-fun c!225353 () Bool)

(declare-fun lt!454408 () Option!2664)

(assert (=> d!390515 (= c!225353 ((_ is Some!2663) lt!454408))))

(assert (=> d!390515 (= lt!454408 (maxPrefixZipperSequenceV2!224 thiss!19762 rules!2550 lt!453460 lt!453460))))

(declare-fun lt!454438 () Unit!20071)

(declare-fun lt!454420 () Unit!20071)

(assert (=> d!390515 (= lt!454438 lt!454420)))

(declare-fun lt!454413 () List!13928)

(declare-fun lt!454417 () List!13928)

(assert (=> d!390515 (isSuffix!257 lt!454413 (++!3578 lt!454417 lt!454413))))

(assert (=> d!390515 (= lt!454420 (lemmaConcatTwoListThenFSndIsSuffix!235 lt!454417 lt!454413))))

(assert (=> d!390515 (= lt!454413 (list!5330 lt!453460))))

(assert (=> d!390515 (= lt!454417 (list!5330 (BalanceConc!9069 Empty!4564)))))

(assert (=> d!390515 (= (lexTailRecV2!408 thiss!19762 rules!2550 lt!453460 (BalanceConc!9069 Empty!4564) lt!453460 (BalanceConc!9071 Empty!4565)) lt!454416)))

(declare-fun b!1369330 () Bool)

(assert (=> b!1369330 (= e!875428 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!453460))))

(declare-fun b!1369331 () Bool)

(assert (=> b!1369331 (= e!875426 (= (list!5330 (_2!7614 lt!454416)) (list!5330 (_2!7614 (lexRec!279 thiss!19762 rules!2550 lt!453460)))))))

(declare-fun b!1369332 () Bool)

(declare-fun lt!454412 () BalanceConc!9068)

(assert (=> b!1369332 (= e!875428 (lexTailRecV2!408 thiss!19762 rules!2550 lt!453460 lt!454412 (_2!7618 (v!21459 lt!454408)) (append!404 (BalanceConc!9071 Empty!4565) (_1!7618 (v!21459 lt!454408)))))))

(declare-fun lt!454415 () tuple2!13456)

(assert (=> b!1369332 (= lt!454415 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454408))))))

(declare-fun lt!454405 () List!13928)

(assert (=> b!1369332 (= lt!454405 (list!5330 (BalanceConc!9069 Empty!4564)))))

(declare-fun lt!454434 () List!13928)

(assert (=> b!1369332 (= lt!454434 (list!5330 (charsOf!1373 (_1!7618 (v!21459 lt!454408)))))))

(declare-fun lt!454414 () List!13928)

(assert (=> b!1369332 (= lt!454414 (list!5330 (_2!7618 (v!21459 lt!454408))))))

(declare-fun lt!454435 () Unit!20071)

(assert (=> b!1369332 (= lt!454435 (lemmaConcatAssociativity!857 lt!454405 lt!454434 lt!454414))))

(assert (=> b!1369332 (= (++!3578 (++!3578 lt!454405 lt!454434) lt!454414) (++!3578 lt!454405 (++!3578 lt!454434 lt!454414)))))

(declare-fun lt!454427 () Unit!20071)

(assert (=> b!1369332 (= lt!454427 lt!454435)))

(assert (=> b!1369332 (= lt!454429 (maxPrefixZipperSequence!552 thiss!19762 rules!2550 lt!453460))))

(declare-fun c!225352 () Bool)

(assert (=> b!1369332 (= c!225352 ((_ is Some!2663) lt!454429))))

(assert (=> b!1369332 (= (lexRec!279 thiss!19762 rules!2550 lt!453460) e!875427)))

(declare-fun lt!454423 () Unit!20071)

(declare-fun Unit!20091 () Unit!20071)

(assert (=> b!1369332 (= lt!454423 Unit!20091)))

(declare-fun lt!454422 () List!13931)

(assert (=> b!1369332 (= lt!454422 (list!5331 (BalanceConc!9071 Empty!4565)))))

(declare-fun lt!454426 () List!13931)

(assert (=> b!1369332 (= lt!454426 (Cons!13865 (_1!7618 (v!21459 lt!454408)) Nil!13865))))

(declare-fun lt!454406 () List!13931)

(assert (=> b!1369332 (= lt!454406 (list!5331 (_1!7614 lt!454415)))))

(declare-fun lt!454409 () Unit!20071)

(assert (=> b!1369332 (= lt!454409 (lemmaConcatAssociativity!858 lt!454422 lt!454426 lt!454406))))

(assert (=> b!1369332 (= (++!3584 (++!3584 lt!454422 lt!454426) lt!454406) (++!3584 lt!454422 (++!3584 lt!454426 lt!454406)))))

(declare-fun lt!454424 () Unit!20071)

(assert (=> b!1369332 (= lt!454424 lt!454409)))

(declare-fun lt!454410 () List!13928)

(assert (=> b!1369332 (= lt!454410 (++!3578 (list!5330 (BalanceConc!9069 Empty!4564)) (list!5330 (charsOf!1373 (_1!7618 (v!21459 lt!454408))))))))

(declare-fun lt!454418 () List!13928)

(assert (=> b!1369332 (= lt!454418 (list!5330 (_2!7618 (v!21459 lt!454408))))))

(declare-fun lt!454433 () List!13931)

(assert (=> b!1369332 (= lt!454433 (list!5331 (append!404 (BalanceConc!9071 Empty!4565) (_1!7618 (v!21459 lt!454408)))))))

(declare-fun lt!454419 () Unit!20071)

(assert (=> b!1369332 (= lt!454419 (lemmaLexThenLexPrefix!194 thiss!19762 rules!2550 lt!454410 lt!454418 lt!454433 (list!5331 (_1!7614 lt!454415)) (list!5330 (_2!7614 lt!454415))))))

(assert (=> b!1369332 (= (lexList!614 thiss!19762 rules!2550 lt!454410) (tuple2!13455 lt!454433 Nil!13862))))

(declare-fun lt!454436 () Unit!20071)

(assert (=> b!1369332 (= lt!454436 lt!454419)))

(assert (=> b!1369332 (= lt!454431 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454408)))))))

(declare-fun lt!454425 () Option!2664)

(assert (=> b!1369332 (= lt!454425 (maxPrefixZipperSequence!552 thiss!19762 rules!2550 lt!454431))))

(declare-fun c!225351 () Bool)

(assert (=> b!1369332 (= c!225351 ((_ is Some!2663) lt!454425))))

(assert (=> b!1369332 (= (lexRec!279 thiss!19762 rules!2550 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454408))))) e!875425)))

(declare-fun lt!454430 () Unit!20071)

(declare-fun Unit!20092 () Unit!20071)

(assert (=> b!1369332 (= lt!454430 Unit!20092)))

(assert (=> b!1369332 (= lt!454412 (++!3580 (BalanceConc!9069 Empty!4564) (charsOf!1373 (_1!7618 (v!21459 lt!454408)))))))

(declare-fun lt!454432 () List!13928)

(assert (=> b!1369332 (= lt!454432 (list!5330 lt!454412))))

(declare-fun lt!454421 () List!13928)

(assert (=> b!1369332 (= lt!454421 (list!5330 (_2!7618 (v!21459 lt!454408))))))

(declare-fun lt!454407 () Unit!20071)

(assert (=> b!1369332 (= lt!454407 (lemmaConcatTwoListThenFSndIsSuffix!235 lt!454432 lt!454421))))

(assert (=> b!1369332 (isSuffix!257 lt!454421 (++!3578 lt!454432 lt!454421))))

(declare-fun lt!454428 () Unit!20071)

(assert (=> b!1369332 (= lt!454428 lt!454407)))

(declare-fun b!1369333 () Bool)

(declare-fun lt!454411 () tuple2!13456)

(assert (=> b!1369333 (= lt!454411 (lexRec!279 thiss!19762 rules!2550 (_2!7618 (v!21459 lt!454425))))))

(assert (=> b!1369333 (= e!875425 (tuple2!13457 (prepend!368 (_1!7614 lt!454411) (_1!7618 (v!21459 lt!454425))) (_2!7614 lt!454411)))))

(declare-fun b!1369334 () Bool)

(assert (=> b!1369334 (= e!875427 (tuple2!13457 (BalanceConc!9071 Empty!4565) lt!453460))))

(assert (= (and d!390515 c!225353) b!1369332))

(assert (= (and d!390515 (not c!225353)) b!1369330))

(assert (= (and b!1369332 c!225352) b!1369328))

(assert (= (and b!1369332 (not c!225352)) b!1369334))

(assert (= (and b!1369332 c!225351) b!1369333))

(assert (= (and b!1369332 (not c!225351)) b!1369329))

(assert (= (and d!390515 res!616721) b!1369331))

(assert (=> d!390515 m!1535783))

(assert (=> d!390515 m!1537789))

(declare-fun m!1539149 () Bool)

(assert (=> d!390515 m!1539149))

(declare-fun m!1539151 () Bool)

(assert (=> d!390515 m!1539151))

(declare-fun m!1539153 () Bool)

(assert (=> d!390515 m!1539153))

(declare-fun m!1539155 () Bool)

(assert (=> d!390515 m!1539155))

(declare-fun m!1539157 () Bool)

(assert (=> d!390515 m!1539157))

(declare-fun m!1539159 () Bool)

(assert (=> d!390515 m!1539159))

(declare-fun m!1539161 () Bool)

(assert (=> d!390515 m!1539161))

(assert (=> d!390515 m!1539153))

(declare-fun m!1539163 () Bool)

(assert (=> b!1369332 m!1539163))

(declare-fun m!1539165 () Bool)

(assert (=> b!1369332 m!1539165))

(declare-fun m!1539167 () Bool)

(assert (=> b!1369332 m!1539167))

(declare-fun m!1539169 () Bool)

(assert (=> b!1369332 m!1539169))

(declare-fun m!1539171 () Bool)

(assert (=> b!1369332 m!1539171))

(declare-fun m!1539173 () Bool)

(assert (=> b!1369332 m!1539173))

(declare-fun m!1539175 () Bool)

(assert (=> b!1369332 m!1539175))

(declare-fun m!1539177 () Bool)

(assert (=> b!1369332 m!1539177))

(declare-fun m!1539179 () Bool)

(assert (=> b!1369332 m!1539179))

(assert (=> b!1369332 m!1539171))

(declare-fun m!1539181 () Bool)

(assert (=> b!1369332 m!1539181))

(declare-fun m!1539183 () Bool)

(assert (=> b!1369332 m!1539183))

(assert (=> b!1369332 m!1539171))

(declare-fun m!1539185 () Bool)

(assert (=> b!1369332 m!1539185))

(declare-fun m!1539187 () Bool)

(assert (=> b!1369332 m!1539187))

(assert (=> b!1369332 m!1539187))

(declare-fun m!1539189 () Bool)

(assert (=> b!1369332 m!1539189))

(declare-fun m!1539191 () Bool)

(assert (=> b!1369332 m!1539191))

(declare-fun m!1539193 () Bool)

(assert (=> b!1369332 m!1539193))

(assert (=> b!1369332 m!1538697))

(declare-fun m!1539195 () Bool)

(assert (=> b!1369332 m!1539195))

(declare-fun m!1539197 () Bool)

(assert (=> b!1369332 m!1539197))

(assert (=> b!1369332 m!1537789))

(declare-fun m!1539199 () Bool)

(assert (=> b!1369332 m!1539199))

(declare-fun m!1539201 () Bool)

(assert (=> b!1369332 m!1539201))

(assert (=> b!1369332 m!1539197))

(declare-fun m!1539203 () Bool)

(assert (=> b!1369332 m!1539203))

(assert (=> b!1369332 m!1539191))

(assert (=> b!1369332 m!1539173))

(declare-fun m!1539205 () Bool)

(assert (=> b!1369332 m!1539205))

(declare-fun m!1539207 () Bool)

(assert (=> b!1369332 m!1539207))

(assert (=> b!1369332 m!1539157))

(declare-fun m!1539209 () Bool)

(assert (=> b!1369332 m!1539209))

(assert (=> b!1369332 m!1539163))

(declare-fun m!1539211 () Bool)

(assert (=> b!1369332 m!1539211))

(assert (=> b!1369332 m!1539177))

(declare-fun m!1539213 () Bool)

(assert (=> b!1369332 m!1539213))

(assert (=> b!1369332 m!1539177))

(assert (=> b!1369332 m!1539167))

(declare-fun m!1539215 () Bool)

(assert (=> b!1369332 m!1539215))

(assert (=> b!1369332 m!1539205))

(assert (=> b!1369332 m!1537789))

(assert (=> b!1369332 m!1539179))

(declare-fun m!1539217 () Bool)

(assert (=> b!1369332 m!1539217))

(declare-fun m!1539219 () Bool)

(assert (=> b!1369332 m!1539219))

(assert (=> b!1369332 m!1539195))

(declare-fun m!1539221 () Bool)

(assert (=> b!1369332 m!1539221))

(declare-fun m!1539223 () Bool)

(assert (=> b!1369333 m!1539223))

(declare-fun m!1539225 () Bool)

(assert (=> b!1369333 m!1539225))

(declare-fun m!1539227 () Bool)

(assert (=> b!1369331 m!1539227))

(assert (=> b!1369331 m!1539157))

(declare-fun m!1539229 () Bool)

(assert (=> b!1369331 m!1539229))

(declare-fun m!1539231 () Bool)

(assert (=> b!1369328 m!1539231))

(declare-fun m!1539233 () Bool)

(assert (=> b!1369328 m!1539233))

(assert (=> d!389649 d!390515))

(declare-fun d!390517 () Bool)

(assert (=> d!390517 (= (list!5330 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))) (list!5333 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(declare-fun bs!335484 () Bool)

(assert (= bs!335484 d!390517))

(declare-fun m!1539235 () Bool)

(assert (=> bs!335484 m!1539235))

(assert (=> b!1367882 d!390517))

(declare-fun b!1369335 () Bool)

(declare-fun e!875430 () Bool)

(declare-fun e!875432 () Bool)

(assert (=> b!1369335 (= e!875430 e!875432)))

(declare-fun res!616728 () Bool)

(assert (=> b!1369335 (=> res!616728 e!875432)))

(declare-fun call!92060 () Bool)

(assert (=> b!1369335 (= res!616728 call!92060)))

(declare-fun d!390519 () Bool)

(declare-fun e!875434 () Bool)

(assert (=> d!390519 e!875434))

(declare-fun c!225354 () Bool)

(assert (=> d!390519 (= c!225354 ((_ is EmptyExpr!3715) lt!453696))))

(declare-fun lt!454439 () Bool)

(declare-fun e!875435 () Bool)

(assert (=> d!390519 (= lt!454439 e!875435)))

(declare-fun c!225355 () Bool)

(assert (=> d!390519 (= c!225355 (isEmpty!8341 lt!453465))))

(assert (=> d!390519 (validRegex!1615 lt!453696)))

(assert (=> d!390519 (= (matchR!1708 lt!453696 lt!453465) lt!454439)))

(declare-fun b!1369336 () Bool)

(assert (=> b!1369336 (= e!875434 (= lt!454439 call!92060))))

(declare-fun b!1369337 () Bool)

(assert (=> b!1369337 (= e!875435 (matchR!1708 (derivativeStep!953 lt!453696 (head!2454 lt!453465)) (tail!1974 lt!453465)))))

(declare-fun b!1369338 () Bool)

(declare-fun e!875431 () Bool)

(assert (=> b!1369338 (= e!875431 (not lt!454439))))

(declare-fun b!1369339 () Bool)

(assert (=> b!1369339 (= e!875434 e!875431)))

(declare-fun c!225356 () Bool)

(assert (=> b!1369339 (= c!225356 ((_ is EmptyLang!3715) lt!453696))))

(declare-fun b!1369340 () Bool)

(declare-fun res!616722 () Bool)

(declare-fun e!875429 () Bool)

(assert (=> b!1369340 (=> res!616722 e!875429)))

(assert (=> b!1369340 (= res!616722 (not ((_ is ElementMatch!3715) lt!453696)))))

(assert (=> b!1369340 (= e!875431 e!875429)))

(declare-fun b!1369341 () Bool)

(assert (=> b!1369341 (= e!875432 (not (= (head!2454 lt!453465) (c!224867 lt!453696))))))

(declare-fun b!1369342 () Bool)

(assert (=> b!1369342 (= e!875429 e!875430)))

(declare-fun res!616723 () Bool)

(assert (=> b!1369342 (=> (not res!616723) (not e!875430))))

(assert (=> b!1369342 (= res!616723 (not lt!454439))))

(declare-fun b!1369343 () Bool)

(declare-fun e!875433 () Bool)

(assert (=> b!1369343 (= e!875433 (= (head!2454 lt!453465) (c!224867 lt!453696)))))

(declare-fun b!1369344 () Bool)

(declare-fun res!616725 () Bool)

(assert (=> b!1369344 (=> (not res!616725) (not e!875433))))

(assert (=> b!1369344 (= res!616725 (not call!92060))))

(declare-fun bm!92055 () Bool)

(assert (=> bm!92055 (= call!92060 (isEmpty!8341 lt!453465))))

(declare-fun b!1369345 () Bool)

(declare-fun res!616724 () Bool)

(assert (=> b!1369345 (=> res!616724 e!875429)))

(assert (=> b!1369345 (= res!616724 e!875433)))

(declare-fun res!616726 () Bool)

(assert (=> b!1369345 (=> (not res!616726) (not e!875433))))

(assert (=> b!1369345 (= res!616726 lt!454439)))

(declare-fun b!1369346 () Bool)

(declare-fun res!616727 () Bool)

(assert (=> b!1369346 (=> (not res!616727) (not e!875433))))

(assert (=> b!1369346 (= res!616727 (isEmpty!8341 (tail!1974 lt!453465)))))

(declare-fun b!1369347 () Bool)

(declare-fun res!616729 () Bool)

(assert (=> b!1369347 (=> res!616729 e!875432)))

(assert (=> b!1369347 (= res!616729 (not (isEmpty!8341 (tail!1974 lt!453465))))))

(declare-fun b!1369348 () Bool)

(assert (=> b!1369348 (= e!875435 (nullable!1195 lt!453696))))

(assert (= (and d!390519 c!225355) b!1369348))

(assert (= (and d!390519 (not c!225355)) b!1369337))

(assert (= (and d!390519 c!225354) b!1369336))

(assert (= (and d!390519 (not c!225354)) b!1369339))

(assert (= (and b!1369339 c!225356) b!1369338))

(assert (= (and b!1369339 (not c!225356)) b!1369340))

(assert (= (and b!1369340 (not res!616722)) b!1369345))

(assert (= (and b!1369345 res!616726) b!1369344))

(assert (= (and b!1369344 res!616725) b!1369346))

(assert (= (and b!1369346 res!616727) b!1369343))

(assert (= (and b!1369345 (not res!616724)) b!1369342))

(assert (= (and b!1369342 res!616723) b!1369335))

(assert (= (and b!1369335 (not res!616728)) b!1369347))

(assert (= (and b!1369347 (not res!616729)) b!1369341))

(assert (= (or b!1369336 b!1369335 b!1369344) bm!92055))

(assert (=> d!390519 m!1536641))

(assert (=> d!390519 m!1536791))

(assert (=> b!1369347 m!1536227))

(assert (=> b!1369347 m!1536227))

(assert (=> b!1369347 m!1536645))

(declare-fun m!1539237 () Bool)

(assert (=> b!1369348 m!1539237))

(assert (=> b!1369341 m!1536649))

(assert (=> bm!92055 m!1536641))

(assert (=> b!1369346 m!1536227))

(assert (=> b!1369346 m!1536227))

(assert (=> b!1369346 m!1536645))

(assert (=> b!1369343 m!1536649))

(assert (=> b!1369337 m!1536649))

(assert (=> b!1369337 m!1536649))

(declare-fun m!1539239 () Bool)

(assert (=> b!1369337 m!1539239))

(assert (=> b!1369337 m!1536227))

(assert (=> b!1369337 m!1539239))

(assert (=> b!1369337 m!1536227))

(declare-fun m!1539241 () Bool)

(assert (=> b!1369337 m!1539241))

(assert (=> b!1367928 d!390519))

(declare-fun d!390521 () Bool)

(assert (=> d!390521 (= (isDefined!2215 lt!453705) (not (isEmpty!8345 lt!453705)))))

(declare-fun bs!335485 () Bool)

(assert (= bs!335485 d!390521))

(assert (=> bs!335485 m!1536713))

(assert (=> b!1367857 d!390521))

(declare-fun d!390523 () Bool)

(assert (=> d!390523 (= (list!5330 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))) (list!5333 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))))))

(declare-fun bs!335486 () Bool)

(assert (= bs!335486 d!390523))

(declare-fun m!1539243 () Bool)

(assert (=> bs!335486 m!1539243))

(assert (=> b!1367884 d!390523))

(declare-fun d!390525 () Bool)

(assert (=> d!390525 (= (isEmpty!8347 (_1!7613 lt!453701)) ((_ is Nil!13865) (_1!7613 lt!453701)))))

(assert (=> b!1367852 d!390525))

(declare-fun d!390527 () Bool)

(assert (=> d!390527 (= (isEmpty!8341 (list!5330 (_2!7614 lt!453453))) ((_ is Nil!13862) (list!5330 (_2!7614 lt!453453))))))

(assert (=> d!389577 d!390527))

(declare-fun d!390529 () Bool)

(assert (=> d!390529 (= (list!5330 (_2!7614 lt!453453)) (list!5333 (c!224866 (_2!7614 lt!453453))))))

(declare-fun bs!335487 () Bool)

(assert (= bs!335487 d!390529))

(declare-fun m!1539245 () Bool)

(assert (=> bs!335487 m!1539245))

(assert (=> d!389577 d!390529))

(declare-fun d!390531 () Bool)

(declare-fun lt!454440 () Bool)

(assert (=> d!390531 (= lt!454440 (isEmpty!8341 (list!5333 (c!224866 (_2!7614 lt!453453)))))))

(assert (=> d!390531 (= lt!454440 (= (size!11364 (c!224866 (_2!7614 lt!453453))) 0))))

(assert (=> d!390531 (= (isEmpty!8344 (c!224866 (_2!7614 lt!453453))) lt!454440)))

(declare-fun bs!335488 () Bool)

(assert (= bs!335488 d!390531))

(assert (=> bs!335488 m!1539245))

(assert (=> bs!335488 m!1539245))

(declare-fun m!1539247 () Bool)

(assert (=> bs!335488 m!1539247))

(declare-fun m!1539249 () Bool)

(assert (=> bs!335488 m!1539249))

(assert (=> d!389577 d!390531))

(declare-fun d!390533 () Bool)

(declare-fun lt!454443 () Int)

(assert (=> d!390533 (>= lt!454443 0)))

(declare-fun e!875438 () Int)

(assert (=> d!390533 (= lt!454443 e!875438)))

(declare-fun c!225359 () Bool)

(assert (=> d!390533 (= c!225359 ((_ is Nil!13866) lt!453629))))

(assert (=> d!390533 (= (size!11368 lt!453629) lt!454443)))

(declare-fun b!1369353 () Bool)

(assert (=> b!1369353 (= e!875438 0)))

(declare-fun b!1369354 () Bool)

(assert (=> b!1369354 (= e!875438 (+ 1 (size!11368 (t!121283 lt!453629))))))

(assert (= (and d!390533 c!225359) b!1369353))

(assert (= (and d!390533 (not c!225359)) b!1369354))

(declare-fun m!1539251 () Bool)

(assert (=> b!1369354 m!1539251))

(assert (=> d!389615 d!390533))

(declare-fun d!390535 () Bool)

(declare-fun lt!454446 () Int)

(assert (=> d!390535 (>= lt!454446 0)))

(declare-fun e!875441 () Int)

(assert (=> d!390535 (= lt!454446 e!875441)))

(declare-fun c!225362 () Bool)

(assert (=> d!390535 (= c!225362 ((_ is Nil!13864) rules!2550))))

(assert (=> d!390535 (= (size!11369 rules!2550) lt!454446)))

(declare-fun b!1369359 () Bool)

(assert (=> b!1369359 (= e!875441 0)))

(declare-fun b!1369360 () Bool)

(assert (=> b!1369360 (= e!875441 (+ 1 (size!11369 (t!121281 rules!2550))))))

(assert (= (and d!390535 c!225362) b!1369359))

(assert (= (and d!390535 (not c!225362)) b!1369360))

(assert (=> b!1369360 m!1539067))

(assert (=> d!389615 d!390535))

(declare-fun b!1369362 () Bool)

(declare-fun e!875443 () List!13928)

(assert (=> b!1369362 (= e!875443 (Cons!13862 (h!19263 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (++!3578 (t!121279 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (_2!7615 (get!4341 lt!453705)))))))

(declare-fun b!1369364 () Bool)

(declare-fun e!875442 () Bool)

(declare-fun lt!454447 () List!13928)

(assert (=> b!1369364 (= e!875442 (or (not (= (_2!7615 (get!4341 lt!453705)) Nil!13862)) (= lt!454447 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))))))))

(declare-fun b!1369361 () Bool)

(assert (=> b!1369361 (= e!875443 (_2!7615 (get!4341 lt!453705)))))

(declare-fun b!1369363 () Bool)

(declare-fun res!616730 () Bool)

(assert (=> b!1369363 (=> (not res!616730) (not e!875442))))

(assert (=> b!1369363 (= res!616730 (= (size!11363 lt!454447) (+ (size!11363 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (size!11363 (_2!7615 (get!4341 lt!453705))))))))

(declare-fun d!390537 () Bool)

(assert (=> d!390537 e!875442))

(declare-fun res!616731 () Bool)

(assert (=> d!390537 (=> (not res!616731) (not e!875442))))

(assert (=> d!390537 (= res!616731 (= (content!2019 lt!454447) ((_ map or) (content!2019 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))) (content!2019 (_2!7615 (get!4341 lt!453705))))))))

(assert (=> d!390537 (= lt!454447 e!875443)))

(declare-fun c!225363 () Bool)

(assert (=> d!390537 (= c!225363 ((_ is Nil!13862) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705))))))))

(assert (=> d!390537 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!453705)))) (_2!7615 (get!4341 lt!453705))) lt!454447)))

(assert (= (and d!390537 c!225363) b!1369361))

(assert (= (and d!390537 (not c!225363)) b!1369362))

(assert (= (and d!390537 res!616731) b!1369363))

(assert (= (and b!1369363 res!616730) b!1369364))

(declare-fun m!1539253 () Bool)

(assert (=> b!1369362 m!1539253))

(declare-fun m!1539255 () Bool)

(assert (=> b!1369363 m!1539255))

(assert (=> b!1369363 m!1536701))

(declare-fun m!1539257 () Bool)

(assert (=> b!1369363 m!1539257))

(assert (=> b!1369363 m!1536697))

(declare-fun m!1539259 () Bool)

(assert (=> d!390537 m!1539259))

(assert (=> d!390537 m!1536701))

(declare-fun m!1539261 () Bool)

(assert (=> d!390537 m!1539261))

(declare-fun m!1539263 () Bool)

(assert (=> d!390537 m!1539263))

(assert (=> b!1367861 d!390537))

(assert (=> b!1367861 d!390017))

(assert (=> b!1367861 d!390019))

(assert (=> b!1367861 d!390015))

(declare-fun d!390539 () Bool)

(declare-fun c!225364 () Bool)

(assert (=> d!390539 (= c!225364 ((_ is Empty!4564) (c!224866 lt!453461)))))

(declare-fun e!875444 () List!13928)

(assert (=> d!390539 (= (list!5333 (c!224866 lt!453461)) e!875444)))

(declare-fun b!1369367 () Bool)

(declare-fun e!875445 () List!13928)

(assert (=> b!1369367 (= e!875445 (list!5337 (xs!7291 (c!224866 lt!453461))))))

(declare-fun b!1369366 () Bool)

(assert (=> b!1369366 (= e!875444 e!875445)))

(declare-fun c!225365 () Bool)

(assert (=> b!1369366 (= c!225365 ((_ is Leaf!6961) (c!224866 lt!453461)))))

(declare-fun b!1369368 () Bool)

(assert (=> b!1369368 (= e!875445 (++!3578 (list!5333 (left!11866 (c!224866 lt!453461))) (list!5333 (right!12196 (c!224866 lt!453461)))))))

(declare-fun b!1369365 () Bool)

(assert (=> b!1369365 (= e!875444 Nil!13862)))

(assert (= (and d!390539 c!225364) b!1369365))

(assert (= (and d!390539 (not c!225364)) b!1369366))

(assert (= (and b!1369366 c!225365) b!1369367))

(assert (= (and b!1369366 (not c!225365)) b!1369368))

(declare-fun m!1539265 () Bool)

(assert (=> b!1369367 m!1539265))

(declare-fun m!1539267 () Bool)

(assert (=> b!1369368 m!1539267))

(declare-fun m!1539269 () Bool)

(assert (=> b!1369368 m!1539269))

(assert (=> b!1369368 m!1539267))

(assert (=> b!1369368 m!1539269))

(declare-fun m!1539271 () Bool)

(assert (=> b!1369368 m!1539271))

(assert (=> d!389637 d!390539))

(declare-fun d!390541 () Bool)

(declare-fun lt!454448 () Int)

(assert (=> d!390541 (>= lt!454448 0)))

(declare-fun e!875446 () Int)

(assert (=> d!390541 (= lt!454448 e!875446)))

(declare-fun c!225366 () Bool)

(assert (=> d!390541 (= c!225366 ((_ is Nil!13862) (_2!7615 (get!4341 lt!453614))))))

(assert (=> d!390541 (= (size!11363 (_2!7615 (get!4341 lt!453614))) lt!454448)))

(declare-fun b!1369369 () Bool)

(assert (=> b!1369369 (= e!875446 0)))

(declare-fun b!1369370 () Bool)

(assert (=> b!1369370 (= e!875446 (+ 1 (size!11363 (t!121279 (_2!7615 (get!4341 lt!453614))))))))

(assert (= (and d!390541 c!225366) b!1369369))

(assert (= (and d!390541 (not c!225366)) b!1369370))

(declare-fun m!1539273 () Bool)

(assert (=> b!1369370 m!1539273))

(assert (=> b!1367597 d!390541))

(assert (=> b!1367597 d!389917))

(assert (=> b!1367597 d!390479))

(declare-fun b!1369372 () Bool)

(declare-fun e!875448 () List!13928)

(assert (=> b!1369372 (= e!875448 (Cons!13862 (h!19263 (t!121279 lt!453458)) (++!3578 (t!121279 (t!121279 lt!453458)) (Cons!13862 lt!453470 Nil!13862))))))

(declare-fun b!1369374 () Bool)

(declare-fun lt!454449 () List!13928)

(declare-fun e!875447 () Bool)

(assert (=> b!1369374 (= e!875447 (or (not (= (Cons!13862 lt!453470 Nil!13862) Nil!13862)) (= lt!454449 (t!121279 lt!453458))))))

(declare-fun b!1369371 () Bool)

(assert (=> b!1369371 (= e!875448 (Cons!13862 lt!453470 Nil!13862))))

(declare-fun b!1369373 () Bool)

(declare-fun res!616732 () Bool)

(assert (=> b!1369373 (=> (not res!616732) (not e!875447))))

(assert (=> b!1369373 (= res!616732 (= (size!11363 lt!454449) (+ (size!11363 (t!121279 lt!453458)) (size!11363 (Cons!13862 lt!453470 Nil!13862)))))))

(declare-fun d!390543 () Bool)

(assert (=> d!390543 e!875447))

(declare-fun res!616733 () Bool)

(assert (=> d!390543 (=> (not res!616733) (not e!875447))))

(assert (=> d!390543 (= res!616733 (= (content!2019 lt!454449) ((_ map or) (content!2019 (t!121279 lt!453458)) (content!2019 (Cons!13862 lt!453470 Nil!13862)))))))

(assert (=> d!390543 (= lt!454449 e!875448)))

(declare-fun c!225367 () Bool)

(assert (=> d!390543 (= c!225367 ((_ is Nil!13862) (t!121279 lt!453458)))))

(assert (=> d!390543 (= (++!3578 (t!121279 lt!453458) (Cons!13862 lt!453470 Nil!13862)) lt!454449)))

(assert (= (and d!390543 c!225367) b!1369371))

(assert (= (and d!390543 (not c!225367)) b!1369372))

(assert (= (and d!390543 res!616733) b!1369373))

(assert (= (and b!1369373 res!616732) b!1369374))

(declare-fun m!1539275 () Bool)

(assert (=> b!1369372 m!1539275))

(declare-fun m!1539277 () Bool)

(assert (=> b!1369373 m!1539277))

(assert (=> b!1369373 m!1538893))

(assert (=> b!1369373 m!1536059))

(declare-fun m!1539279 () Bool)

(assert (=> d!390543 m!1539279))

(assert (=> d!390543 m!1539059))

(assert (=> d!390543 m!1536065))

(assert (=> b!1367366 d!390543))

(assert (=> d!389693 d!389621))

(declare-fun d!390545 () Bool)

(declare-fun lt!454450 () Bool)

(assert (=> d!390545 (= lt!454450 (select (content!2020 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453614)))))))

(declare-fun e!875450 () Bool)

(assert (=> d!390545 (= lt!454450 e!875450)))

(declare-fun res!616734 () Bool)

(assert (=> d!390545 (=> (not res!616734) (not e!875450))))

(assert (=> d!390545 (= res!616734 ((_ is Cons!13864) rules!2550))))

(assert (=> d!390545 (= (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!453614)))) lt!454450)))

(declare-fun b!1369375 () Bool)

(declare-fun e!875449 () Bool)

(assert (=> b!1369375 (= e!875450 e!875449)))

(declare-fun res!616735 () Bool)

(assert (=> b!1369375 (=> res!616735 e!875449)))

(assert (=> b!1369375 (= res!616735 (= (h!19265 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453614)))))))

(declare-fun b!1369376 () Bool)

(assert (=> b!1369376 (= e!875449 (contains!2586 (t!121281 rules!2550) (rule!4154 (_1!7615 (get!4341 lt!453614)))))))

(assert (= (and d!390545 res!616734) b!1369375))

(assert (= (and b!1369375 (not res!616735)) b!1369376))

(assert (=> d!390545 m!1536279))

(declare-fun m!1539281 () Bool)

(assert (=> d!390545 m!1539281))

(declare-fun m!1539283 () Bool)

(assert (=> b!1369376 m!1539283))

(assert (=> b!1367601 d!390545))

(assert (=> b!1367601 d!389917))

(declare-fun bs!335489 () Bool)

(declare-fun d!390547 () Bool)

(assert (= bs!335489 (and d!390547 d!390471)))

(declare-fun lambda!58000 () Int)

(assert (=> bs!335489 (= (and (= (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toChars!3523 (transformation!2401 (h!19265 rules!2550)))) (= (toValue!3664 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (h!19265 rules!2550))))) (= lambda!58000 lambda!57995))))

(assert (=> d!390547 true))

(assert (=> d!390547 (< (dynLambda!6283 order!8447 (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) (dynLambda!6284 order!8449 lambda!58000))))

(assert (=> d!390547 true))

(assert (=> d!390547 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (dynLambda!6284 order!8449 lambda!58000))))

(assert (=> d!390547 (= (semiInverseModEq!923 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34)))) (Forall!537 lambda!58000))))

(declare-fun bs!335490 () Bool)

(assert (= bs!335490 d!390547))

(declare-fun m!1539285 () Bool)

(assert (=> bs!335490 m!1539285))

(assert (=> d!389645 d!390547))

(declare-fun d!390549 () Bool)

(assert (=> d!390549 (= (list!5331 lt!453674) (list!5334 (c!224868 lt!453674)))))

(declare-fun bs!335491 () Bool)

(assert (= bs!335491 d!390549))

(declare-fun m!1539287 () Bool)

(assert (=> bs!335491 m!1539287))

(assert (=> d!389681 d!390549))

(declare-fun d!390551 () Bool)

(declare-fun e!875451 () Bool)

(assert (=> d!390551 e!875451))

(declare-fun res!616736 () Bool)

(assert (=> d!390551 (=> (not res!616736) (not e!875451))))

(declare-fun lt!454451 () BalanceConc!9070)

(assert (=> d!390551 (= res!616736 (= (list!5331 lt!454451) (Cons!13865 t1!34 Nil!13865)))))

(assert (=> d!390551 (= lt!454451 (choose!8420 t1!34))))

(assert (=> d!390551 (= (singleton!445 t1!34) lt!454451)))

(declare-fun b!1369377 () Bool)

(assert (=> b!1369377 (= e!875451 (isBalanced!1339 (c!224868 lt!454451)))))

(assert (= (and d!390551 res!616736) b!1369377))

(declare-fun m!1539289 () Bool)

(assert (=> d!390551 m!1539289))

(declare-fun m!1539291 () Bool)

(assert (=> d!390551 m!1539291))

(declare-fun m!1539293 () Bool)

(assert (=> b!1369377 m!1539293))

(assert (=> d!389681 d!390551))

(declare-fun d!390553 () Bool)

(declare-fun res!616741 () Bool)

(declare-fun e!875456 () Bool)

(assert (=> d!390553 (=> res!616741 e!875456)))

(assert (=> d!390553 (= res!616741 ((_ is Nil!13864) rules!2550))))

(assert (=> d!390553 (= (noDuplicateTag!893 thiss!19762 rules!2550 Nil!13868) e!875456)))

(declare-fun b!1369382 () Bool)

(declare-fun e!875457 () Bool)

(assert (=> b!1369382 (= e!875456 e!875457)))

(declare-fun res!616742 () Bool)

(assert (=> b!1369382 (=> (not res!616742) (not e!875457))))

(declare-fun contains!2589 (List!13934 String!16691) Bool)

(assert (=> b!1369382 (= res!616742 (not (contains!2589 Nil!13868 (tag!2663 (h!19265 rules!2550)))))))

(declare-fun b!1369383 () Bool)

(assert (=> b!1369383 (= e!875457 (noDuplicateTag!893 thiss!19762 (t!121281 rules!2550) (Cons!13868 (tag!2663 (h!19265 rules!2550)) Nil!13868)))))

(assert (= (and d!390553 (not res!616741)) b!1369382))

(assert (= (and b!1369382 res!616742) b!1369383))

(declare-fun m!1539295 () Bool)

(assert (=> b!1369382 m!1539295))

(declare-fun m!1539297 () Bool)

(assert (=> b!1369383 m!1539297))

(assert (=> b!1367865 d!390553))

(declare-fun d!390555 () Bool)

(declare-fun lt!454454 () Int)

(assert (=> d!390555 (>= lt!454454 0)))

(declare-fun e!875460 () Int)

(assert (=> d!390555 (= lt!454454 e!875460)))

(declare-fun c!225370 () Bool)

(assert (=> d!390555 (= c!225370 ((_ is Nil!13865) (_1!7613 lt!453652)))))

(assert (=> d!390555 (= (size!11370 (_1!7613 lt!453652)) lt!454454)))

(declare-fun b!1369388 () Bool)

(assert (=> b!1369388 (= e!875460 0)))

(declare-fun b!1369389 () Bool)

(assert (=> b!1369389 (= e!875460 (+ 1 (size!11370 (t!121282 (_1!7613 lt!453652)))))))

(assert (= (and d!390555 c!225370) b!1369388))

(assert (= (and d!390555 (not c!225370)) b!1369389))

(declare-fun m!1539299 () Bool)

(assert (=> b!1369389 m!1539299))

(assert (=> d!389629 d!390555))

(declare-fun b!1369390 () Bool)

(declare-fun res!616745 () Bool)

(declare-fun e!875461 () Bool)

(assert (=> b!1369390 (=> (not res!616745) (not e!875461))))

(declare-fun lt!454457 () Option!2662)

(assert (=> b!1369390 (= res!616745 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454457)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!454457)))))))

(declare-fun d!390557 () Bool)

(declare-fun e!875463 () Bool)

(assert (=> d!390557 e!875463))

(declare-fun res!616746 () Bool)

(assert (=> d!390557 (=> res!616746 e!875463)))

(assert (=> d!390557 (= res!616746 (isEmpty!8345 lt!454457))))

(declare-fun e!875462 () Option!2662)

(assert (=> d!390557 (= lt!454457 e!875462)))

(declare-fun c!225371 () Bool)

(assert (=> d!390557 (= c!225371 (and ((_ is Cons!13864) rules!2550) ((_ is Nil!13864) (t!121281 rules!2550))))))

(declare-fun lt!454455 () Unit!20071)

(declare-fun lt!454459 () Unit!20071)

(assert (=> d!390557 (= lt!454455 lt!454459)))

(assert (=> d!390557 (isPrefix!1125 (list!5330 lt!453461) (list!5330 lt!453461))))

(assert (=> d!390557 (= lt!454459 (lemmaIsPrefixRefl!787 (list!5330 lt!453461) (list!5330 lt!453461)))))

(assert (=> d!390557 (rulesValidInductive!766 thiss!19762 rules!2550)))

(assert (=> d!390557 (= (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453461)) lt!454457)))

(declare-fun call!92061 () Option!2662)

(declare-fun bm!92056 () Bool)

(assert (=> bm!92056 (= call!92061 (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) (list!5330 lt!453461)))))

(declare-fun b!1369391 () Bool)

(declare-fun res!616743 () Bool)

(assert (=> b!1369391 (=> (not res!616743) (not e!875461))))

(assert (=> b!1369391 (= res!616743 (= (value!78061 (_1!7615 (get!4341 lt!454457))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!454457)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!454457)))))))))

(declare-fun b!1369392 () Bool)

(assert (=> b!1369392 (= e!875462 call!92061)))

(declare-fun b!1369393 () Bool)

(assert (=> b!1369393 (= e!875463 e!875461)))

(declare-fun res!616748 () Bool)

(assert (=> b!1369393 (=> (not res!616748) (not e!875461))))

(assert (=> b!1369393 (= res!616748 (isDefined!2215 lt!454457))))

(declare-fun b!1369394 () Bool)

(declare-fun res!616747 () Bool)

(assert (=> b!1369394 (=> (not res!616747) (not e!875461))))

(assert (=> b!1369394 (= res!616747 (< (size!11363 (_2!7615 (get!4341 lt!454457))) (size!11363 (list!5330 lt!453461))))))

(declare-fun b!1369395 () Bool)

(declare-fun res!616749 () Bool)

(assert (=> b!1369395 (=> (not res!616749) (not e!875461))))

(assert (=> b!1369395 (= res!616749 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!454457)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454457))))))))

(declare-fun b!1369396 () Bool)

(declare-fun lt!454458 () Option!2662)

(declare-fun lt!454456 () Option!2662)

(assert (=> b!1369396 (= e!875462 (ite (and ((_ is None!2661) lt!454458) ((_ is None!2661) lt!454456)) None!2661 (ite ((_ is None!2661) lt!454456) lt!454458 (ite ((_ is None!2661) lt!454458) lt!454456 (ite (>= (size!11357 (_1!7615 (v!21444 lt!454458))) (size!11357 (_1!7615 (v!21444 lt!454456)))) lt!454458 lt!454456)))))))

(assert (=> b!1369396 (= lt!454458 call!92061)))

(assert (=> b!1369396 (= lt!454456 (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) (list!5330 lt!453461)))))

(declare-fun b!1369397 () Bool)

(declare-fun res!616744 () Bool)

(assert (=> b!1369397 (=> (not res!616744) (not e!875461))))

(assert (=> b!1369397 (= res!616744 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454457)))) (_2!7615 (get!4341 lt!454457))) (list!5330 lt!453461)))))

(declare-fun b!1369398 () Bool)

(assert (=> b!1369398 (= e!875461 (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!454457)))))))

(assert (= (and d!390557 c!225371) b!1369392))

(assert (= (and d!390557 (not c!225371)) b!1369396))

(assert (= (or b!1369392 b!1369396) bm!92056))

(assert (= (and d!390557 (not res!616746)) b!1369393))

(assert (= (and b!1369393 res!616748) b!1369390))

(assert (= (and b!1369390 res!616745) b!1369394))

(assert (= (and b!1369394 res!616747) b!1369397))

(assert (= (and b!1369397 res!616744) b!1369391))

(assert (= (and b!1369391 res!616743) b!1369395))

(assert (= (and b!1369395 res!616749) b!1369398))

(declare-fun m!1539301 () Bool)

(assert (=> b!1369394 m!1539301))

(declare-fun m!1539303 () Bool)

(assert (=> b!1369394 m!1539303))

(assert (=> b!1369394 m!1535795))

(assert (=> b!1369394 m!1536495))

(assert (=> b!1369397 m!1539301))

(declare-fun m!1539305 () Bool)

(assert (=> b!1369397 m!1539305))

(assert (=> b!1369397 m!1539305))

(declare-fun m!1539307 () Bool)

(assert (=> b!1369397 m!1539307))

(assert (=> b!1369397 m!1539307))

(declare-fun m!1539309 () Bool)

(assert (=> b!1369397 m!1539309))

(assert (=> bm!92056 m!1535795))

(declare-fun m!1539311 () Bool)

(assert (=> bm!92056 m!1539311))

(assert (=> b!1369390 m!1539301))

(assert (=> b!1369390 m!1539305))

(assert (=> b!1369390 m!1539305))

(assert (=> b!1369390 m!1539307))

(assert (=> b!1369391 m!1539301))

(declare-fun m!1539313 () Bool)

(assert (=> b!1369391 m!1539313))

(assert (=> b!1369391 m!1539313))

(declare-fun m!1539315 () Bool)

(assert (=> b!1369391 m!1539315))

(assert (=> b!1369396 m!1535795))

(declare-fun m!1539317 () Bool)

(assert (=> b!1369396 m!1539317))

(declare-fun m!1539319 () Bool)

(assert (=> d!390557 m!1539319))

(assert (=> d!390557 m!1535795))

(assert (=> d!390557 m!1535795))

(declare-fun m!1539321 () Bool)

(assert (=> d!390557 m!1539321))

(assert (=> d!390557 m!1535795))

(assert (=> d!390557 m!1535795))

(declare-fun m!1539323 () Bool)

(assert (=> d!390557 m!1539323))

(assert (=> d!390557 m!1536389))

(assert (=> b!1369398 m!1539301))

(declare-fun m!1539325 () Bool)

(assert (=> b!1369398 m!1539325))

(assert (=> b!1369395 m!1539301))

(assert (=> b!1369395 m!1539305))

(assert (=> b!1369395 m!1539305))

(assert (=> b!1369395 m!1539307))

(assert (=> b!1369395 m!1539307))

(declare-fun m!1539327 () Bool)

(assert (=> b!1369395 m!1539327))

(declare-fun m!1539329 () Bool)

(assert (=> b!1369393 m!1539329))

(assert (=> d!389629 d!390557))

(declare-fun bs!335492 () Bool)

(declare-fun d!390559 () Bool)

(assert (= bs!335492 (and d!390559 d!390471)))

(declare-fun lambda!58001 () Int)

(assert (=> bs!335492 (= (and (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (h!19265 rules!2550)))) (= (toValue!3664 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (h!19265 rules!2550))))) (= lambda!58001 lambda!57995))))

(declare-fun bs!335493 () Bool)

(assert (= bs!335493 (and d!390559 d!390547)))

(assert (=> bs!335493 (= (and (= (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) (= (toValue!3664 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t1!34))))) (= lambda!58001 lambda!58000))))

(assert (=> d!390559 true))

(assert (=> d!390559 (< (dynLambda!6283 order!8447 (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) (dynLambda!6284 order!8449 lambda!58001))))

(assert (=> d!390559 true))

(assert (=> d!390559 (< (dynLambda!6280 order!8443 (toValue!3664 (transformation!2401 (rule!4154 t2!34)))) (dynLambda!6284 order!8449 lambda!58001))))

(assert (=> d!390559 (= (semiInverseModEq!923 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (toValue!3664 (transformation!2401 (rule!4154 t2!34)))) (Forall!537 lambda!58001))))

(declare-fun bs!335494 () Bool)

(assert (= bs!335494 d!390559))

(declare-fun m!1539331 () Bool)

(assert (=> bs!335494 m!1539331))

(assert (=> d!389573 d!390559))

(declare-fun b!1369402 () Bool)

(declare-fun e!875464 () Bool)

(assert (=> b!1369402 (= e!875464 (>= (size!11363 lt!453568) (size!11363 lt!453466)))))

(declare-fun b!1369399 () Bool)

(declare-fun e!875465 () Bool)

(declare-fun e!875466 () Bool)

(assert (=> b!1369399 (= e!875465 e!875466)))

(declare-fun res!616753 () Bool)

(assert (=> b!1369399 (=> (not res!616753) (not e!875466))))

(assert (=> b!1369399 (= res!616753 (not ((_ is Nil!13862) lt!453568)))))

(declare-fun b!1369401 () Bool)

(assert (=> b!1369401 (= e!875466 (isPrefix!1125 (tail!1974 lt!453466) (tail!1974 lt!453568)))))

(declare-fun d!390561 () Bool)

(assert (=> d!390561 e!875464))

(declare-fun res!616752 () Bool)

(assert (=> d!390561 (=> res!616752 e!875464)))

(declare-fun lt!454460 () Bool)

(assert (=> d!390561 (= res!616752 (not lt!454460))))

(assert (=> d!390561 (= lt!454460 e!875465)))

(declare-fun res!616751 () Bool)

(assert (=> d!390561 (=> res!616751 e!875465)))

(assert (=> d!390561 (= res!616751 ((_ is Nil!13862) lt!453466))))

(assert (=> d!390561 (= (isPrefix!1125 lt!453466 lt!453568) lt!454460)))

(declare-fun b!1369400 () Bool)

(declare-fun res!616750 () Bool)

(assert (=> b!1369400 (=> (not res!616750) (not e!875466))))

(assert (=> b!1369400 (= res!616750 (= (head!2454 lt!453466) (head!2454 lt!453568)))))

(assert (= (and d!390561 (not res!616751)) b!1369399))

(assert (= (and b!1369399 res!616753) b!1369400))

(assert (= (and b!1369400 res!616750) b!1369401))

(assert (= (and d!390561 (not res!616752)) b!1369402))

(declare-fun m!1539333 () Bool)

(assert (=> b!1369402 m!1539333))

(assert (=> b!1369402 m!1536213))

(assert (=> b!1369401 m!1536037))

(assert (=> b!1369401 m!1538971))

(assert (=> b!1369401 m!1536037))

(assert (=> b!1369401 m!1538971))

(declare-fun m!1539335 () Bool)

(assert (=> b!1369401 m!1539335))

(assert (=> b!1369400 m!1536033))

(assert (=> b!1369400 m!1538975))

(assert (=> b!1367927 d!390561))

(declare-fun d!390563 () Bool)

(declare-fun lt!454461 () Int)

(assert (=> d!390563 (>= lt!454461 0)))

(declare-fun e!875467 () Int)

(assert (=> d!390563 (= lt!454461 e!875467)))

(declare-fun c!225372 () Bool)

(assert (=> d!390563 (= c!225372 ((_ is Nil!13865) (_1!7613 lt!453701)))))

(assert (=> d!390563 (= (size!11370 (_1!7613 lt!453701)) lt!454461)))

(declare-fun b!1369403 () Bool)

(assert (=> b!1369403 (= e!875467 0)))

(declare-fun b!1369404 () Bool)

(assert (=> b!1369404 (= e!875467 (+ 1 (size!11370 (t!121282 (_1!7613 lt!453701)))))))

(assert (= (and d!390563 c!225372) b!1369403))

(assert (= (and d!390563 (not c!225372)) b!1369404))

(declare-fun m!1539337 () Bool)

(assert (=> b!1369404 m!1539337))

(assert (=> d!389699 d!390563))

(declare-fun b!1369405 () Bool)

(declare-fun res!616756 () Bool)

(declare-fun e!875468 () Bool)

(assert (=> b!1369405 (=> (not res!616756) (not e!875468))))

(declare-fun lt!454464 () Option!2662)

(assert (=> b!1369405 (= res!616756 (= (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454464)))) (originalCharacters!3263 (_1!7615 (get!4341 lt!454464)))))))

(declare-fun d!390565 () Bool)

(declare-fun e!875470 () Bool)

(assert (=> d!390565 e!875470))

(declare-fun res!616757 () Bool)

(assert (=> d!390565 (=> res!616757 e!875470)))

(assert (=> d!390565 (= res!616757 (isEmpty!8345 lt!454464))))

(declare-fun e!875469 () Option!2662)

(assert (=> d!390565 (= lt!454464 e!875469)))

(declare-fun c!225373 () Bool)

(assert (=> d!390565 (= c!225373 (and ((_ is Cons!13864) rules!2550) ((_ is Nil!13864) (t!121281 rules!2550))))))

(declare-fun lt!454462 () Unit!20071)

(declare-fun lt!454466 () Unit!20071)

(assert (=> d!390565 (= lt!454462 lt!454466)))

(assert (=> d!390565 (isPrefix!1125 (list!5330 lt!453460) (list!5330 lt!453460))))

(assert (=> d!390565 (= lt!454466 (lemmaIsPrefixRefl!787 (list!5330 lt!453460) (list!5330 lt!453460)))))

(assert (=> d!390565 (rulesValidInductive!766 thiss!19762 rules!2550)))

(assert (=> d!390565 (= (maxPrefix!1078 thiss!19762 rules!2550 (list!5330 lt!453460)) lt!454464)))

(declare-fun call!92062 () Option!2662)

(declare-fun bm!92057 () Bool)

(assert (=> bm!92057 (= call!92062 (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) (list!5330 lt!453460)))))

(declare-fun b!1369406 () Bool)

(declare-fun res!616754 () Bool)

(assert (=> b!1369406 (=> (not res!616754) (not e!875468))))

(assert (=> b!1369406 (= res!616754 (= (value!78061 (_1!7615 (get!4341 lt!454464))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!454464)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!454464)))))))))

(declare-fun b!1369407 () Bool)

(assert (=> b!1369407 (= e!875469 call!92062)))

(declare-fun b!1369408 () Bool)

(assert (=> b!1369408 (= e!875470 e!875468)))

(declare-fun res!616759 () Bool)

(assert (=> b!1369408 (=> (not res!616759) (not e!875468))))

(assert (=> b!1369408 (= res!616759 (isDefined!2215 lt!454464))))

(declare-fun b!1369409 () Bool)

(declare-fun res!616758 () Bool)

(assert (=> b!1369409 (=> (not res!616758) (not e!875468))))

(assert (=> b!1369409 (= res!616758 (< (size!11363 (_2!7615 (get!4341 lt!454464))) (size!11363 (list!5330 lt!453460))))))

(declare-fun b!1369410 () Bool)

(declare-fun res!616760 () Bool)

(assert (=> b!1369410 (=> (not res!616760) (not e!875468))))

(assert (=> b!1369410 (= res!616760 (matchR!1708 (regex!2401 (rule!4154 (_1!7615 (get!4341 lt!454464)))) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454464))))))))

(declare-fun b!1369411 () Bool)

(declare-fun lt!454465 () Option!2662)

(declare-fun lt!454463 () Option!2662)

(assert (=> b!1369411 (= e!875469 (ite (and ((_ is None!2661) lt!454465) ((_ is None!2661) lt!454463)) None!2661 (ite ((_ is None!2661) lt!454463) lt!454465 (ite ((_ is None!2661) lt!454465) lt!454463 (ite (>= (size!11357 (_1!7615 (v!21444 lt!454465))) (size!11357 (_1!7615 (v!21444 lt!454463)))) lt!454465 lt!454463)))))))

(assert (=> b!1369411 (= lt!454465 call!92062)))

(assert (=> b!1369411 (= lt!454463 (maxPrefix!1078 thiss!19762 (t!121281 rules!2550) (list!5330 lt!453460)))))

(declare-fun b!1369412 () Bool)

(declare-fun res!616755 () Bool)

(assert (=> b!1369412 (=> (not res!616755) (not e!875468))))

(assert (=> b!1369412 (= res!616755 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454464)))) (_2!7615 (get!4341 lt!454464))) (list!5330 lt!453460)))))

(declare-fun b!1369413 () Bool)

(assert (=> b!1369413 (= e!875468 (contains!2586 rules!2550 (rule!4154 (_1!7615 (get!4341 lt!454464)))))))

(assert (= (and d!390565 c!225373) b!1369407))

(assert (= (and d!390565 (not c!225373)) b!1369411))

(assert (= (or b!1369407 b!1369411) bm!92057))

(assert (= (and d!390565 (not res!616757)) b!1369408))

(assert (= (and b!1369408 res!616759) b!1369405))

(assert (= (and b!1369405 res!616756) b!1369409))

(assert (= (and b!1369409 res!616758) b!1369412))

(assert (= (and b!1369412 res!616755) b!1369406))

(assert (= (and b!1369406 res!616754) b!1369410))

(assert (= (and b!1369410 res!616760) b!1369413))

(declare-fun m!1539339 () Bool)

(assert (=> b!1369409 m!1539339))

(declare-fun m!1539341 () Bool)

(assert (=> b!1369409 m!1539341))

(assert (=> b!1369409 m!1535783))

(assert (=> b!1369409 m!1536683))

(assert (=> b!1369412 m!1539339))

(declare-fun m!1539343 () Bool)

(assert (=> b!1369412 m!1539343))

(assert (=> b!1369412 m!1539343))

(declare-fun m!1539345 () Bool)

(assert (=> b!1369412 m!1539345))

(assert (=> b!1369412 m!1539345))

(declare-fun m!1539347 () Bool)

(assert (=> b!1369412 m!1539347))

(assert (=> bm!92057 m!1535783))

(declare-fun m!1539349 () Bool)

(assert (=> bm!92057 m!1539349))

(assert (=> b!1369405 m!1539339))

(assert (=> b!1369405 m!1539343))

(assert (=> b!1369405 m!1539343))

(assert (=> b!1369405 m!1539345))

(assert (=> b!1369406 m!1539339))

(declare-fun m!1539351 () Bool)

(assert (=> b!1369406 m!1539351))

(assert (=> b!1369406 m!1539351))

(declare-fun m!1539353 () Bool)

(assert (=> b!1369406 m!1539353))

(assert (=> b!1369411 m!1535783))

(declare-fun m!1539355 () Bool)

(assert (=> b!1369411 m!1539355))

(declare-fun m!1539357 () Bool)

(assert (=> d!390565 m!1539357))

(assert (=> d!390565 m!1535783))

(assert (=> d!390565 m!1535783))

(declare-fun m!1539359 () Bool)

(assert (=> d!390565 m!1539359))

(assert (=> d!390565 m!1535783))

(assert (=> d!390565 m!1535783))

(declare-fun m!1539361 () Bool)

(assert (=> d!390565 m!1539361))

(assert (=> d!390565 m!1536389))

(assert (=> b!1369413 m!1539339))

(declare-fun m!1539363 () Bool)

(assert (=> b!1369413 m!1539363))

(assert (=> b!1369410 m!1539339))

(assert (=> b!1369410 m!1539343))

(assert (=> b!1369410 m!1539343))

(assert (=> b!1369410 m!1539345))

(assert (=> b!1369410 m!1539345))

(declare-fun m!1539365 () Bool)

(assert (=> b!1369410 m!1539365))

(declare-fun m!1539367 () Bool)

(assert (=> b!1369408 m!1539367))

(assert (=> d!389699 d!390565))

(declare-fun d!390567 () Bool)

(assert (=> d!390567 (= (list!5330 lt!453484) (list!5333 (c!224866 lt!453484)))))

(declare-fun bs!335495 () Bool)

(assert (= bs!335495 d!390567))

(declare-fun m!1539369 () Bool)

(assert (=> bs!335495 m!1539369))

(assert (=> d!389475 d!390567))

(declare-fun d!390569 () Bool)

(assert (=> d!390569 (= (list!5330 (_2!7614 lt!453671)) (list!5333 (c!224866 (_2!7614 lt!453671))))))

(declare-fun bs!335496 () Bool)

(assert (= bs!335496 d!390569))

(declare-fun m!1539371 () Bool)

(assert (=> bs!335496 m!1539371))

(assert (=> b!1367757 d!390569))

(assert (=> b!1367757 d!389699))

(assert (=> b!1367757 d!389701))

(declare-fun b!1369414 () Bool)

(declare-fun e!875472 () Bool)

(declare-fun e!875474 () Bool)

(assert (=> b!1369414 (= e!875472 e!875474)))

(declare-fun res!616767 () Bool)

(assert (=> b!1369414 (=> res!616767 e!875474)))

(declare-fun call!92063 () Bool)

(assert (=> b!1369414 (= res!616767 call!92063)))

(declare-fun d!390571 () Bool)

(declare-fun e!875476 () Bool)

(assert (=> d!390571 e!875476))

(declare-fun c!225374 () Bool)

(assert (=> d!390571 (= c!225374 ((_ is EmptyExpr!3715) (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun lt!454467 () Bool)

(declare-fun e!875477 () Bool)

(assert (=> d!390571 (= lt!454467 e!875477)))

(declare-fun c!225375 () Bool)

(assert (=> d!390571 (= c!225375 (isEmpty!8341 lt!453465))))

(assert (=> d!390571 (validRegex!1615 (h!19267 (map!3062 rules!2550 lambda!57883)))))

(assert (=> d!390571 (= (matchR!1708 (h!19267 (map!3062 rules!2550 lambda!57883)) lt!453465) lt!454467)))

(declare-fun b!1369415 () Bool)

(assert (=> b!1369415 (= e!875476 (= lt!454467 call!92063))))

(declare-fun b!1369416 () Bool)

(assert (=> b!1369416 (= e!875477 (matchR!1708 (derivativeStep!953 (h!19267 (map!3062 rules!2550 lambda!57883)) (head!2454 lt!453465)) (tail!1974 lt!453465)))))

(declare-fun b!1369417 () Bool)

(declare-fun e!875473 () Bool)

(assert (=> b!1369417 (= e!875473 (not lt!454467))))

(declare-fun b!1369418 () Bool)

(assert (=> b!1369418 (= e!875476 e!875473)))

(declare-fun c!225376 () Bool)

(assert (=> b!1369418 (= c!225376 ((_ is EmptyLang!3715) (h!19267 (map!3062 rules!2550 lambda!57883))))))

(declare-fun b!1369419 () Bool)

(declare-fun res!616761 () Bool)

(declare-fun e!875471 () Bool)

(assert (=> b!1369419 (=> res!616761 e!875471)))

(assert (=> b!1369419 (= res!616761 (not ((_ is ElementMatch!3715) (h!19267 (map!3062 rules!2550 lambda!57883)))))))

(assert (=> b!1369419 (= e!875473 e!875471)))

(declare-fun b!1369420 () Bool)

(assert (=> b!1369420 (= e!875474 (not (= (head!2454 lt!453465) (c!224867 (h!19267 (map!3062 rules!2550 lambda!57883))))))))

(declare-fun b!1369421 () Bool)

(assert (=> b!1369421 (= e!875471 e!875472)))

(declare-fun res!616762 () Bool)

(assert (=> b!1369421 (=> (not res!616762) (not e!875472))))

(assert (=> b!1369421 (= res!616762 (not lt!454467))))

(declare-fun e!875475 () Bool)

(declare-fun b!1369422 () Bool)

(assert (=> b!1369422 (= e!875475 (= (head!2454 lt!453465) (c!224867 (h!19267 (map!3062 rules!2550 lambda!57883)))))))

(declare-fun b!1369423 () Bool)

(declare-fun res!616764 () Bool)

(assert (=> b!1369423 (=> (not res!616764) (not e!875475))))

(assert (=> b!1369423 (= res!616764 (not call!92063))))

(declare-fun bm!92058 () Bool)

(assert (=> bm!92058 (= call!92063 (isEmpty!8341 lt!453465))))

(declare-fun b!1369424 () Bool)

(declare-fun res!616763 () Bool)

(assert (=> b!1369424 (=> res!616763 e!875471)))

(assert (=> b!1369424 (= res!616763 e!875475)))

(declare-fun res!616765 () Bool)

(assert (=> b!1369424 (=> (not res!616765) (not e!875475))))

(assert (=> b!1369424 (= res!616765 lt!454467)))

(declare-fun b!1369425 () Bool)

(declare-fun res!616766 () Bool)

(assert (=> b!1369425 (=> (not res!616766) (not e!875475))))

(assert (=> b!1369425 (= res!616766 (isEmpty!8341 (tail!1974 lt!453465)))))

(declare-fun b!1369426 () Bool)

(declare-fun res!616768 () Bool)

(assert (=> b!1369426 (=> res!616768 e!875474)))

(assert (=> b!1369426 (= res!616768 (not (isEmpty!8341 (tail!1974 lt!453465))))))

(declare-fun b!1369427 () Bool)

(assert (=> b!1369427 (= e!875477 (nullable!1195 (h!19267 (map!3062 rules!2550 lambda!57883))))))

(assert (= (and d!390571 c!225375) b!1369427))

(assert (= (and d!390571 (not c!225375)) b!1369416))

(assert (= (and d!390571 c!225374) b!1369415))

(assert (= (and d!390571 (not c!225374)) b!1369418))

(assert (= (and b!1369418 c!225376) b!1369417))

(assert (= (and b!1369418 (not c!225376)) b!1369419))

(assert (= (and b!1369419 (not res!616761)) b!1369424))

(assert (= (and b!1369424 res!616765) b!1369423))

(assert (= (and b!1369423 res!616764) b!1369425))

(assert (= (and b!1369425 res!616766) b!1369422))

(assert (= (and b!1369424 (not res!616763)) b!1369421))

(assert (= (and b!1369421 res!616762) b!1369414))

(assert (= (and b!1369414 (not res!616767)) b!1369426))

(assert (= (and b!1369426 (not res!616768)) b!1369420))

(assert (= (or b!1369415 b!1369414 b!1369423) bm!92058))

(assert (=> d!390571 m!1536641))

(assert (=> d!390571 m!1536795))

(assert (=> b!1369426 m!1536227))

(assert (=> b!1369426 m!1536227))

(assert (=> b!1369426 m!1536645))

(declare-fun m!1539373 () Bool)

(assert (=> b!1369427 m!1539373))

(assert (=> b!1369420 m!1536649))

(assert (=> bm!92058 m!1536641))

(assert (=> b!1369425 m!1536227))

(assert (=> b!1369425 m!1536227))

(assert (=> b!1369425 m!1536645))

(assert (=> b!1369422 m!1536649))

(assert (=> b!1369416 m!1536649))

(assert (=> b!1369416 m!1536649))

(declare-fun m!1539375 () Bool)

(assert (=> b!1369416 m!1539375))

(assert (=> b!1369416 m!1536227))

(assert (=> b!1369416 m!1539375))

(assert (=> b!1369416 m!1536227))

(declare-fun m!1539377 () Bool)

(assert (=> b!1369416 m!1539377))

(assert (=> b!1367929 d!390571))

(declare-fun b!1369431 () Bool)

(declare-fun e!875479 () List!13931)

(assert (=> b!1369431 (= e!875479 (++!3584 (list!5334 (left!11867 (c!224868 (_1!7614 lt!453471)))) (list!5334 (right!12197 (c!224868 (_1!7614 lt!453471))))))))

(declare-fun b!1369428 () Bool)

(declare-fun e!875478 () List!13931)

(assert (=> b!1369428 (= e!875478 Nil!13865)))

(declare-fun b!1369430 () Bool)

(assert (=> b!1369430 (= e!875479 (list!5339 (xs!7292 (c!224868 (_1!7614 lt!453471)))))))

(declare-fun d!390573 () Bool)

(declare-fun c!225377 () Bool)

(assert (=> d!390573 (= c!225377 ((_ is Empty!4565) (c!224868 (_1!7614 lt!453471))))))

(assert (=> d!390573 (= (list!5334 (c!224868 (_1!7614 lt!453471))) e!875478)))

(declare-fun b!1369429 () Bool)

(assert (=> b!1369429 (= e!875478 e!875479)))

(declare-fun c!225378 () Bool)

(assert (=> b!1369429 (= c!225378 ((_ is Leaf!6962) (c!224868 (_1!7614 lt!453471))))))

(assert (= (and d!390573 c!225377) b!1369428))

(assert (= (and d!390573 (not c!225377)) b!1369429))

(assert (= (and b!1369429 c!225378) b!1369430))

(assert (= (and b!1369429 (not c!225378)) b!1369431))

(declare-fun m!1539379 () Bool)

(assert (=> b!1369431 m!1539379))

(declare-fun m!1539381 () Bool)

(assert (=> b!1369431 m!1539381))

(assert (=> b!1369431 m!1539379))

(assert (=> b!1369431 m!1539381))

(declare-fun m!1539383 () Bool)

(assert (=> b!1369431 m!1539383))

(declare-fun m!1539385 () Bool)

(assert (=> b!1369430 m!1539385))

(assert (=> d!389647 d!390573))

(declare-fun d!390575 () Bool)

(declare-fun lt!454468 () Token!4464)

(assert (=> d!390575 (= lt!454468 (apply!3393 (list!5331 (_1!7614 lt!453620)) 0))))

(assert (=> d!390575 (= lt!454468 (apply!3395 (c!224868 (_1!7614 lt!453620)) 0))))

(declare-fun e!875480 () Bool)

(assert (=> d!390575 e!875480))

(declare-fun res!616769 () Bool)

(assert (=> d!390575 (=> (not res!616769) (not e!875480))))

(assert (=> d!390575 (= res!616769 (<= 0 0))))

(assert (=> d!390575 (= (apply!3386 (_1!7614 lt!453620) 0) lt!454468)))

(declare-fun b!1369432 () Bool)

(assert (=> b!1369432 (= e!875480 (< 0 (size!11366 (_1!7614 lt!453620))))))

(assert (= (and d!390575 res!616769) b!1369432))

(assert (=> d!390575 m!1538953))

(assert (=> d!390575 m!1538953))

(declare-fun m!1539387 () Bool)

(assert (=> d!390575 m!1539387))

(declare-fun m!1539389 () Bool)

(assert (=> d!390575 m!1539389))

(assert (=> b!1369432 m!1536407))

(assert (=> b!1367606 d!390575))

(declare-fun d!390577 () Bool)

(declare-fun c!225381 () Bool)

(assert (=> d!390577 (= c!225381 ((_ is Nil!13864) rules!2550))))

(declare-fun e!875483 () (InoxSet Rule!4602))

(assert (=> d!390577 (= (content!2020 rules!2550) e!875483)))

(declare-fun b!1369437 () Bool)

(assert (=> b!1369437 (= e!875483 ((as const (Array Rule!4602 Bool)) false))))

(declare-fun b!1369438 () Bool)

(assert (=> b!1369438 (= e!875483 ((_ map or) (store ((as const (Array Rule!4602 Bool)) false) (h!19265 rules!2550) true) (content!2020 (t!121281 rules!2550))))))

(assert (= (and d!390577 c!225381) b!1369437))

(assert (= (and d!390577 (not c!225381)) b!1369438))

(declare-fun m!1539391 () Bool)

(assert (=> b!1369438 m!1539391))

(assert (=> b!1369438 m!1537269))

(assert (=> d!389575 d!390577))

(declare-fun d!390579 () Bool)

(declare-fun lt!454469 () Bool)

(assert (=> d!390579 (= lt!454469 (select (content!2020 (t!121281 rules!2550)) (rule!4154 t1!34)))))

(declare-fun e!875485 () Bool)

(assert (=> d!390579 (= lt!454469 e!875485)))

(declare-fun res!616770 () Bool)

(assert (=> d!390579 (=> (not res!616770) (not e!875485))))

(assert (=> d!390579 (= res!616770 ((_ is Cons!13864) (t!121281 rules!2550)))))

(assert (=> d!390579 (= (contains!2586 (t!121281 rules!2550) (rule!4154 t1!34)) lt!454469)))

(declare-fun b!1369439 () Bool)

(declare-fun e!875484 () Bool)

(assert (=> b!1369439 (= e!875485 e!875484)))

(declare-fun res!616771 () Bool)

(assert (=> b!1369439 (=> res!616771 e!875484)))

(assert (=> b!1369439 (= res!616771 (= (h!19265 (t!121281 rules!2550)) (rule!4154 t1!34)))))

(declare-fun b!1369440 () Bool)

(assert (=> b!1369440 (= e!875484 (contains!2586 (t!121281 (t!121281 rules!2550)) (rule!4154 t1!34)))))

(assert (= (and d!390579 res!616770) b!1369439))

(assert (= (and b!1369439 (not res!616771)) b!1369440))

(assert (=> d!390579 m!1537269))

(declare-fun m!1539393 () Bool)

(assert (=> d!390579 m!1539393))

(declare-fun m!1539395 () Bool)

(assert (=> b!1369440 m!1539395))

(assert (=> b!1367530 d!390579))

(declare-fun d!390581 () Bool)

(assert (=> d!390581 (= (inv!18221 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))) (isBalanced!1341 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))))))

(declare-fun bs!335497 () Bool)

(assert (= bs!335497 d!390581))

(declare-fun m!1539397 () Bool)

(assert (=> bs!335497 m!1539397))

(assert (=> tb!72061 d!390581))

(assert (=> b!1367854 d!390017))

(assert (=> b!1367854 d!390019))

(assert (=> b!1367854 d!390015))

(declare-fun d!390583 () Bool)

(assert (=> d!390583 (= (isEmpty!8341 (originalCharacters!3263 t2!34)) ((_ is Nil!13862) (originalCharacters!3263 t2!34)))))

(assert (=> d!389721 d!390583))

(assert (=> d!389723 d!390577))

(declare-fun d!390585 () Bool)

(declare-fun lt!454470 () Bool)

(assert (=> d!390585 (= lt!454470 (select (content!2021 (t!121283 (map!3062 rules!2550 lambda!57883))) lt!453455))))

(declare-fun e!875487 () Bool)

(assert (=> d!390585 (= lt!454470 e!875487)))

(declare-fun res!616773 () Bool)

(assert (=> d!390585 (=> (not res!616773) (not e!875487))))

(assert (=> d!390585 (= res!616773 ((_ is Cons!13866) (t!121283 (map!3062 rules!2550 lambda!57883))))))

(assert (=> d!390585 (= (contains!2587 (t!121283 (map!3062 rules!2550 lambda!57883)) lt!453455) lt!454470)))

(declare-fun b!1369441 () Bool)

(declare-fun e!875486 () Bool)

(assert (=> b!1369441 (= e!875487 e!875486)))

(declare-fun res!616772 () Bool)

(assert (=> b!1369441 (=> res!616772 e!875486)))

(assert (=> b!1369441 (= res!616772 (= (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883))) lt!453455))))

(declare-fun b!1369442 () Bool)

(assert (=> b!1369442 (= e!875486 (contains!2587 (t!121283 (t!121283 (map!3062 rules!2550 lambda!57883))) lt!453455))))

(assert (= (and d!390585 res!616773) b!1369441))

(assert (= (and b!1369441 (not res!616772)) b!1369442))

(assert (=> d!390585 m!1537915))

(declare-fun m!1539399 () Bool)

(assert (=> d!390585 m!1539399))

(declare-fun m!1539401 () Bool)

(assert (=> b!1369442 m!1539401))

(assert (=> b!1367828 d!390585))

(declare-fun b!1369444 () Bool)

(declare-fun res!616774 () Bool)

(declare-fun e!875490 () Bool)

(assert (=> b!1369444 (=> (not res!616774) (not e!875490))))

(declare-fun lt!454475 () Option!2662)

(assert (=> b!1369444 (= res!616774 (= (value!78061 (_1!7615 (get!4341 lt!454475))) (apply!3389 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!454475)))) (seqFromList!1631 (originalCharacters!3263 (_1!7615 (get!4341 lt!454475)))))))))

(declare-fun b!1369445 () Bool)

(declare-fun res!616776 () Bool)

(assert (=> b!1369445 (=> (not res!616776) (not e!875490))))

(assert (=> b!1369445 (= res!616776 (= (rule!4154 (_1!7615 (get!4341 lt!454475))) (h!19265 rules!2550)))))

(declare-fun b!1369446 () Bool)

(declare-fun res!616779 () Bool)

(assert (=> b!1369446 (=> (not res!616779) (not e!875490))))

(assert (=> b!1369446 (= res!616779 (< (size!11363 (_2!7615 (get!4341 lt!454475))) (size!11363 (list!5330 lt!453456))))))

(declare-fun b!1369447 () Bool)

(assert (=> b!1369447 (= e!875490 (= (size!11357 (_1!7615 (get!4341 lt!454475))) (size!11363 (originalCharacters!3263 (_1!7615 (get!4341 lt!454475))))))))

(declare-fun b!1369448 () Bool)

(declare-fun res!616778 () Bool)

(assert (=> b!1369448 (=> (not res!616778) (not e!875490))))

(assert (=> b!1369448 (= res!616778 (= (++!3578 (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454475)))) (_2!7615 (get!4341 lt!454475))) (list!5330 lt!453456)))))

(declare-fun b!1369449 () Bool)

(declare-fun e!875489 () Option!2662)

(declare-fun lt!454474 () tuple2!13466)

(assert (=> b!1369449 (= e!875489 (Some!2661 (tuple2!13459 (Token!4465 (apply!3389 (transformation!2401 (h!19265 rules!2550)) (seqFromList!1631 (_1!7619 lt!454474))) (h!19265 rules!2550) (size!11358 (seqFromList!1631 (_1!7619 lt!454474))) (_1!7619 lt!454474)) (_2!7619 lt!454474))))))

(declare-fun lt!454472 () Unit!20071)

(assert (=> b!1369449 (= lt!454472 (longestMatchIsAcceptedByMatchOrIsEmpty!264 (regex!2401 (h!19265 rules!2550)) (list!5330 lt!453456)))))

(declare-fun res!616777 () Bool)

(assert (=> b!1369449 (= res!616777 (isEmpty!8341 (_1!7619 (findLongestMatchInner!280 (regex!2401 (h!19265 rules!2550)) Nil!13862 (size!11363 Nil!13862) (list!5330 lt!453456) (list!5330 lt!453456) (size!11363 (list!5330 lt!453456))))))))

(declare-fun e!875488 () Bool)

(assert (=> b!1369449 (=> res!616777 e!875488)))

(assert (=> b!1369449 e!875488))

(declare-fun lt!454471 () Unit!20071)

(assert (=> b!1369449 (= lt!454471 lt!454472)))

(declare-fun lt!454473 () Unit!20071)

(assert (=> b!1369449 (= lt!454473 (lemmaSemiInverse!334 (transformation!2401 (h!19265 rules!2550)) (seqFromList!1631 (_1!7619 lt!454474))))))

(declare-fun d!390587 () Bool)

(declare-fun e!875491 () Bool)

(assert (=> d!390587 e!875491))

(declare-fun res!616780 () Bool)

(assert (=> d!390587 (=> res!616780 e!875491)))

(assert (=> d!390587 (= res!616780 (isEmpty!8345 lt!454475))))

(assert (=> d!390587 (= lt!454475 e!875489)))

(declare-fun c!225382 () Bool)

(assert (=> d!390587 (= c!225382 (isEmpty!8341 (_1!7619 lt!454474)))))

(assert (=> d!390587 (= lt!454474 (findLongestMatch!236 (regex!2401 (h!19265 rules!2550)) (list!5330 lt!453456)))))

(assert (=> d!390587 (ruleValid!590 thiss!19762 (h!19265 rules!2550))))

(assert (=> d!390587 (= (maxPrefixOneRule!613 thiss!19762 (h!19265 rules!2550) (list!5330 lt!453456)) lt!454475)))

(declare-fun b!1369443 () Bool)

(assert (=> b!1369443 (= e!875488 (matchR!1708 (regex!2401 (h!19265 rules!2550)) (_1!7619 (findLongestMatchInner!280 (regex!2401 (h!19265 rules!2550)) Nil!13862 (size!11363 Nil!13862) (list!5330 lt!453456) (list!5330 lt!453456) (size!11363 (list!5330 lt!453456))))))))

(declare-fun b!1369450 () Bool)

(assert (=> b!1369450 (= e!875489 None!2661)))

(declare-fun b!1369451 () Bool)

(assert (=> b!1369451 (= e!875491 e!875490)))

(declare-fun res!616775 () Bool)

(assert (=> b!1369451 (=> (not res!616775) (not e!875490))))

(assert (=> b!1369451 (= res!616775 (matchR!1708 (regex!2401 (h!19265 rules!2550)) (list!5330 (charsOf!1373 (_1!7615 (get!4341 lt!454475))))))))

(assert (= (and d!390587 c!225382) b!1369450))

(assert (= (and d!390587 (not c!225382)) b!1369449))

(assert (= (and b!1369449 (not res!616777)) b!1369443))

(assert (= (and d!390587 (not res!616780)) b!1369451))

(assert (= (and b!1369451 res!616775) b!1369448))

(assert (= (and b!1369448 res!616778) b!1369446))

(assert (= (and b!1369446 res!616779) b!1369445))

(assert (= (and b!1369445 res!616776) b!1369444))

(assert (= (and b!1369444 res!616774) b!1369447))

(assert (=> b!1369443 m!1539083))

(assert (=> b!1369443 m!1535875))

(assert (=> b!1369443 m!1535933))

(assert (=> b!1369443 m!1539083))

(assert (=> b!1369443 m!1535875))

(assert (=> b!1369443 m!1535875))

(assert (=> b!1369443 m!1535933))

(declare-fun m!1539403 () Bool)

(assert (=> b!1369443 m!1539403))

(declare-fun m!1539405 () Bool)

(assert (=> b!1369443 m!1539405))

(assert (=> b!1369449 m!1535875))

(declare-fun m!1539407 () Bool)

(assert (=> b!1369449 m!1539407))

(declare-fun m!1539409 () Bool)

(assert (=> b!1369449 m!1539409))

(declare-fun m!1539411 () Bool)

(assert (=> b!1369449 m!1539411))

(assert (=> b!1369449 m!1539083))

(assert (=> b!1369449 m!1535875))

(assert (=> b!1369449 m!1535933))

(assert (=> b!1369449 m!1539083))

(assert (=> b!1369449 m!1535875))

(assert (=> b!1369449 m!1535875))

(assert (=> b!1369449 m!1535933))

(assert (=> b!1369449 m!1539403))

(assert (=> b!1369449 m!1539409))

(declare-fun m!1539413 () Bool)

(assert (=> b!1369449 m!1539413))

(assert (=> b!1369449 m!1539409))

(assert (=> b!1369449 m!1539409))

(declare-fun m!1539415 () Bool)

(assert (=> b!1369449 m!1539415))

(declare-fun m!1539417 () Bool)

(assert (=> b!1369449 m!1539417))

(declare-fun m!1539419 () Bool)

(assert (=> b!1369446 m!1539419))

(declare-fun m!1539421 () Bool)

(assert (=> b!1369446 m!1539421))

(assert (=> b!1369446 m!1535875))

(assert (=> b!1369446 m!1535933))

(assert (=> b!1369448 m!1539419))

(declare-fun m!1539423 () Bool)

(assert (=> b!1369448 m!1539423))

(assert (=> b!1369448 m!1539423))

(declare-fun m!1539425 () Bool)

(assert (=> b!1369448 m!1539425))

(assert (=> b!1369448 m!1539425))

(declare-fun m!1539427 () Bool)

(assert (=> b!1369448 m!1539427))

(assert (=> b!1369451 m!1539419))

(assert (=> b!1369451 m!1539423))

(assert (=> b!1369451 m!1539423))

(assert (=> b!1369451 m!1539425))

(assert (=> b!1369451 m!1539425))

(declare-fun m!1539429 () Bool)

(assert (=> b!1369451 m!1539429))

(assert (=> b!1369444 m!1539419))

(declare-fun m!1539431 () Bool)

(assert (=> b!1369444 m!1539431))

(assert (=> b!1369444 m!1539431))

(declare-fun m!1539433 () Bool)

(assert (=> b!1369444 m!1539433))

(assert (=> b!1369445 m!1539419))

(assert (=> b!1369447 m!1539419))

(declare-fun m!1539435 () Bool)

(assert (=> b!1369447 m!1539435))

(declare-fun m!1539437 () Bool)

(assert (=> d!390587 m!1539437))

(declare-fun m!1539439 () Bool)

(assert (=> d!390587 m!1539439))

(assert (=> d!390587 m!1535875))

(declare-fun m!1539441 () Bool)

(assert (=> d!390587 m!1539441))

(assert (=> d!390587 m!1537539))

(assert (=> bm!91957 d!390587))

(declare-fun d!390589 () Bool)

(declare-fun lt!454476 () Bool)

(assert (=> d!390589 (= lt!454476 (select (content!2021 (map!3062 rules!2550 lambda!57883)) lt!453696))))

(declare-fun e!875493 () Bool)

(assert (=> d!390589 (= lt!454476 e!875493)))

(declare-fun res!616782 () Bool)

(assert (=> d!390589 (=> (not res!616782) (not e!875493))))

(assert (=> d!390589 (= res!616782 ((_ is Cons!13866) (map!3062 rules!2550 lambda!57883)))))

(assert (=> d!390589 (= (contains!2587 (map!3062 rules!2550 lambda!57883) lt!453696) lt!454476)))

(declare-fun b!1369452 () Bool)

(declare-fun e!875492 () Bool)

(assert (=> b!1369452 (= e!875493 e!875492)))

(declare-fun res!616781 () Bool)

(assert (=> b!1369452 (=> res!616781 e!875492)))

(assert (=> b!1369452 (= res!616781 (= (h!19267 (map!3062 rules!2550 lambda!57883)) lt!453696))))

(declare-fun b!1369453 () Bool)

(assert (=> b!1369453 (= e!875492 (contains!2587 (t!121283 (map!3062 rules!2550 lambda!57883)) lt!453696))))

(assert (= (and d!390589 res!616782) b!1369452))

(assert (= (and b!1369452 (not res!616781)) b!1369453))

(assert (=> d!390589 m!1535811))

(assert (=> d!390589 m!1536659))

(declare-fun m!1539443 () Bool)

(assert (=> d!390589 m!1539443))

(declare-fun m!1539445 () Bool)

(assert (=> b!1369453 m!1539445))

(assert (=> b!1367844 d!390589))

(declare-fun b!1369457 () Bool)

(declare-fun e!875494 () Bool)

(declare-fun tp!393498 () Bool)

(declare-fun tp!393499 () Bool)

(assert (=> b!1369457 (= e!875494 (and tp!393498 tp!393499))))

(declare-fun b!1369454 () Bool)

(assert (=> b!1369454 (= e!875494 tp_is_empty!6739)))

(declare-fun b!1369455 () Bool)

(declare-fun tp!393501 () Bool)

(declare-fun tp!393500 () Bool)

(assert (=> b!1369455 (= e!875494 (and tp!393501 tp!393500))))

(assert (=> b!1367925 (= tp!393384 e!875494)))

(declare-fun b!1369456 () Bool)

(declare-fun tp!393497 () Bool)

(assert (=> b!1369456 (= e!875494 tp!393497)))

(assert (= (and b!1367925 ((_ is ElementMatch!3715) (reg!4044 (regex!2401 (rule!4154 t1!34))))) b!1369454))

(assert (= (and b!1367925 ((_ is Concat!6207) (reg!4044 (regex!2401 (rule!4154 t1!34))))) b!1369455))

(assert (= (and b!1367925 ((_ is Star!3715) (reg!4044 (regex!2401 (rule!4154 t1!34))))) b!1369456))

(assert (= (and b!1367925 ((_ is Union!3715) (reg!4044 (regex!2401 (rule!4154 t1!34))))) b!1369457))

(declare-fun e!875500 () Bool)

(declare-fun tp!393508 () Bool)

(declare-fun b!1369466 () Bool)

(declare-fun tp!393510 () Bool)

(assert (=> b!1369466 (= e!875500 (and (inv!18220 (left!11866 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))) tp!393508 (inv!18220 (right!12196 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))) tp!393510))))

(declare-fun b!1369468 () Bool)

(declare-fun e!875499 () Bool)

(declare-fun tp!393509 () Bool)

(assert (=> b!1369468 (= e!875499 tp!393509)))

(declare-fun b!1369467 () Bool)

(declare-fun inv!18227 (IArray!9133) Bool)

(assert (=> b!1369467 (= e!875500 (and (inv!18227 (xs!7291 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))) e!875499))))

(assert (=> b!1367356 (= tp!393305 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34)))) e!875500))))

(assert (= (and b!1367356 ((_ is Node!4564) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))) b!1369466))

(assert (= b!1369467 b!1369468))

(assert (= (and b!1367356 ((_ is Leaf!6961) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t1!34))) (value!78061 t1!34))))) b!1369467))

(declare-fun m!1539447 () Bool)

(assert (=> b!1369466 m!1539447))

(declare-fun m!1539449 () Bool)

(assert (=> b!1369466 m!1539449))

(declare-fun m!1539451 () Bool)

(assert (=> b!1369467 m!1539451))

(assert (=> b!1367356 m!1536045))

(declare-fun b!1369472 () Bool)

(declare-fun e!875501 () Bool)

(declare-fun tp!393512 () Bool)

(declare-fun tp!393513 () Bool)

(assert (=> b!1369472 (= e!875501 (and tp!393512 tp!393513))))

(declare-fun b!1369469 () Bool)

(assert (=> b!1369469 (= e!875501 tp_is_empty!6739)))

(declare-fun b!1369470 () Bool)

(declare-fun tp!393515 () Bool)

(declare-fun tp!393514 () Bool)

(assert (=> b!1369470 (= e!875501 (and tp!393515 tp!393514))))

(assert (=> b!1367921 (= tp!393379 e!875501)))

(declare-fun b!1369471 () Bool)

(declare-fun tp!393511 () Bool)

(assert (=> b!1369471 (= e!875501 tp!393511)))

(assert (= (and b!1367921 ((_ is ElementMatch!3715) (reg!4044 (regex!2401 (rule!4154 t2!34))))) b!1369469))

(assert (= (and b!1367921 ((_ is Concat!6207) (reg!4044 (regex!2401 (rule!4154 t2!34))))) b!1369470))

(assert (= (and b!1367921 ((_ is Star!3715) (reg!4044 (regex!2401 (rule!4154 t2!34))))) b!1369471))

(assert (= (and b!1367921 ((_ is Union!3715) (reg!4044 (regex!2401 (rule!4154 t2!34))))) b!1369472))

(declare-fun b!1369476 () Bool)

(declare-fun e!875502 () Bool)

(declare-fun tp!393517 () Bool)

(declare-fun tp!393518 () Bool)

(assert (=> b!1369476 (= e!875502 (and tp!393517 tp!393518))))

(declare-fun b!1369473 () Bool)

(assert (=> b!1369473 (= e!875502 tp_is_empty!6739)))

(declare-fun b!1369474 () Bool)

(declare-fun tp!393520 () Bool)

(declare-fun tp!393519 () Bool)

(assert (=> b!1369474 (= e!875502 (and tp!393520 tp!393519))))

(assert (=> b!1367899 (= tp!393362 e!875502)))

(declare-fun b!1369475 () Bool)

(declare-fun tp!393516 () Bool)

(assert (=> b!1369475 (= e!875502 tp!393516)))

(assert (= (and b!1367899 ((_ is ElementMatch!3715) (regOne!7942 (regex!2401 (h!19265 rules!2550))))) b!1369473))

(assert (= (and b!1367899 ((_ is Concat!6207) (regOne!7942 (regex!2401 (h!19265 rules!2550))))) b!1369474))

(assert (= (and b!1367899 ((_ is Star!3715) (regOne!7942 (regex!2401 (h!19265 rules!2550))))) b!1369475))

(assert (= (and b!1367899 ((_ is Union!3715) (regOne!7942 (regex!2401 (h!19265 rules!2550))))) b!1369476))

(declare-fun b!1369480 () Bool)

(declare-fun e!875503 () Bool)

(declare-fun tp!393522 () Bool)

(declare-fun tp!393523 () Bool)

(assert (=> b!1369480 (= e!875503 (and tp!393522 tp!393523))))

(declare-fun b!1369477 () Bool)

(assert (=> b!1369477 (= e!875503 tp_is_empty!6739)))

(declare-fun b!1369478 () Bool)

(declare-fun tp!393525 () Bool)

(declare-fun tp!393524 () Bool)

(assert (=> b!1369478 (= e!875503 (and tp!393525 tp!393524))))

(assert (=> b!1367899 (= tp!393361 e!875503)))

(declare-fun b!1369479 () Bool)

(declare-fun tp!393521 () Bool)

(assert (=> b!1369479 (= e!875503 tp!393521)))

(assert (= (and b!1367899 ((_ is ElementMatch!3715) (regTwo!7942 (regex!2401 (h!19265 rules!2550))))) b!1369477))

(assert (= (and b!1367899 ((_ is Concat!6207) (regTwo!7942 (regex!2401 (h!19265 rules!2550))))) b!1369478))

(assert (= (and b!1367899 ((_ is Star!3715) (regTwo!7942 (regex!2401 (h!19265 rules!2550))))) b!1369479))

(assert (= (and b!1367899 ((_ is Union!3715) (regTwo!7942 (regex!2401 (h!19265 rules!2550))))) b!1369480))

(declare-fun b!1369484 () Bool)

(declare-fun e!875504 () Bool)

(declare-fun tp!393527 () Bool)

(declare-fun tp!393528 () Bool)

(assert (=> b!1369484 (= e!875504 (and tp!393527 tp!393528))))

(declare-fun b!1369481 () Bool)

(assert (=> b!1369481 (= e!875504 tp_is_empty!6739)))

(declare-fun b!1369482 () Bool)

(declare-fun tp!393530 () Bool)

(declare-fun tp!393529 () Bool)

(assert (=> b!1369482 (= e!875504 (and tp!393530 tp!393529))))

(assert (=> b!1367926 (= tp!393385 e!875504)))

(declare-fun b!1369483 () Bool)

(declare-fun tp!393526 () Bool)

(assert (=> b!1369483 (= e!875504 tp!393526)))

(assert (= (and b!1367926 ((_ is ElementMatch!3715) (regOne!7943 (regex!2401 (rule!4154 t1!34))))) b!1369481))

(assert (= (and b!1367926 ((_ is Concat!6207) (regOne!7943 (regex!2401 (rule!4154 t1!34))))) b!1369482))

(assert (= (and b!1367926 ((_ is Star!3715) (regOne!7943 (regex!2401 (rule!4154 t1!34))))) b!1369483))

(assert (= (and b!1367926 ((_ is Union!3715) (regOne!7943 (regex!2401 (rule!4154 t1!34))))) b!1369484))

(declare-fun b!1369488 () Bool)

(declare-fun e!875505 () Bool)

(declare-fun tp!393532 () Bool)

(declare-fun tp!393533 () Bool)

(assert (=> b!1369488 (= e!875505 (and tp!393532 tp!393533))))

(declare-fun b!1369485 () Bool)

(assert (=> b!1369485 (= e!875505 tp_is_empty!6739)))

(declare-fun b!1369486 () Bool)

(declare-fun tp!393535 () Bool)

(declare-fun tp!393534 () Bool)

(assert (=> b!1369486 (= e!875505 (and tp!393535 tp!393534))))

(assert (=> b!1367926 (= tp!393386 e!875505)))

(declare-fun b!1369487 () Bool)

(declare-fun tp!393531 () Bool)

(assert (=> b!1369487 (= e!875505 tp!393531)))

(assert (= (and b!1367926 ((_ is ElementMatch!3715) (regTwo!7943 (regex!2401 (rule!4154 t1!34))))) b!1369485))

(assert (= (and b!1367926 ((_ is Concat!6207) (regTwo!7943 (regex!2401 (rule!4154 t1!34))))) b!1369486))

(assert (= (and b!1367926 ((_ is Star!3715) (regTwo!7943 (regex!2401 (rule!4154 t1!34))))) b!1369487))

(assert (= (and b!1367926 ((_ is Union!3715) (regTwo!7943 (regex!2401 (rule!4154 t1!34))))) b!1369488))

(declare-fun b!1369492 () Bool)

(declare-fun e!875506 () Bool)

(declare-fun tp!393537 () Bool)

(declare-fun tp!393538 () Bool)

(assert (=> b!1369492 (= e!875506 (and tp!393537 tp!393538))))

(declare-fun b!1369489 () Bool)

(assert (=> b!1369489 (= e!875506 tp_is_empty!6739)))

(declare-fun b!1369490 () Bool)

(declare-fun tp!393540 () Bool)

(declare-fun tp!393539 () Bool)

(assert (=> b!1369490 (= e!875506 (and tp!393540 tp!393539))))

(assert (=> b!1367924 (= tp!393388 e!875506)))

(declare-fun b!1369491 () Bool)

(declare-fun tp!393536 () Bool)

(assert (=> b!1369491 (= e!875506 tp!393536)))

(assert (= (and b!1367924 ((_ is ElementMatch!3715) (regOne!7942 (regex!2401 (rule!4154 t1!34))))) b!1369489))

(assert (= (and b!1367924 ((_ is Concat!6207) (regOne!7942 (regex!2401 (rule!4154 t1!34))))) b!1369490))

(assert (= (and b!1367924 ((_ is Star!3715) (regOne!7942 (regex!2401 (rule!4154 t1!34))))) b!1369491))

(assert (= (and b!1367924 ((_ is Union!3715) (regOne!7942 (regex!2401 (rule!4154 t1!34))))) b!1369492))

(declare-fun b!1369496 () Bool)

(declare-fun e!875507 () Bool)

(declare-fun tp!393542 () Bool)

(declare-fun tp!393543 () Bool)

(assert (=> b!1369496 (= e!875507 (and tp!393542 tp!393543))))

(declare-fun b!1369493 () Bool)

(assert (=> b!1369493 (= e!875507 tp_is_empty!6739)))

(declare-fun b!1369494 () Bool)

(declare-fun tp!393545 () Bool)

(declare-fun tp!393544 () Bool)

(assert (=> b!1369494 (= e!875507 (and tp!393545 tp!393544))))

(assert (=> b!1367924 (= tp!393387 e!875507)))

(declare-fun b!1369495 () Bool)

(declare-fun tp!393541 () Bool)

(assert (=> b!1369495 (= e!875507 tp!393541)))

(assert (= (and b!1367924 ((_ is ElementMatch!3715) (regTwo!7942 (regex!2401 (rule!4154 t1!34))))) b!1369493))

(assert (= (and b!1367924 ((_ is Concat!6207) (regTwo!7942 (regex!2401 (rule!4154 t1!34))))) b!1369494))

(assert (= (and b!1367924 ((_ is Star!3715) (regTwo!7942 (regex!2401 (rule!4154 t1!34))))) b!1369495))

(assert (= (and b!1367924 ((_ is Union!3715) (regTwo!7942 (regex!2401 (rule!4154 t1!34))))) b!1369496))

(declare-fun e!875509 () Bool)

(declare-fun tp!393546 () Bool)

(declare-fun b!1369497 () Bool)

(declare-fun tp!393548 () Bool)

(assert (=> b!1369497 (= e!875509 (and (inv!18220 (left!11866 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))) tp!393546 (inv!18220 (right!12196 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))) tp!393548))))

(declare-fun b!1369499 () Bool)

(declare-fun e!875508 () Bool)

(declare-fun tp!393547 () Bool)

(assert (=> b!1369499 (= e!875508 tp!393547)))

(declare-fun b!1369498 () Bool)

(assert (=> b!1369498 (= e!875509 (and (inv!18227 (xs!7291 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))) e!875508))))

(assert (=> b!1367303 (= tp!393304 (and (inv!18220 (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34)))) e!875509))))

(assert (= (and b!1367303 ((_ is Node!4564) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))) b!1369497))

(assert (= b!1369498 b!1369499))

(assert (= (and b!1367303 ((_ is Leaf!6961) (c!224866 (dynLambda!6263 (toChars!3523 (transformation!2401 (rule!4154 t2!34))) (value!78061 t2!34))))) b!1369498))

(declare-fun m!1539453 () Bool)

(assert (=> b!1369497 m!1539453))

(declare-fun m!1539455 () Bool)

(assert (=> b!1369497 m!1539455))

(declare-fun m!1539457 () Bool)

(assert (=> b!1369498 m!1539457))

(assert (=> b!1367303 m!1535957))

(declare-fun b!1369500 () Bool)

(declare-fun e!875510 () Bool)

(declare-fun tp!393549 () Bool)

(assert (=> b!1369500 (= e!875510 (and tp_is_empty!6739 tp!393549))))

(assert (=> b!1367907 (= tp!393366 e!875510)))

(assert (= (and b!1367907 ((_ is Cons!13862) (t!121279 (originalCharacters!3263 t1!34)))) b!1369500))

(declare-fun b!1369504 () Bool)

(declare-fun e!875511 () Bool)

(declare-fun tp!393551 () Bool)

(declare-fun tp!393552 () Bool)

(assert (=> b!1369504 (= e!875511 (and tp!393551 tp!393552))))

(declare-fun b!1369501 () Bool)

(assert (=> b!1369501 (= e!875511 tp_is_empty!6739)))

(declare-fun b!1369502 () Bool)

(declare-fun tp!393554 () Bool)

(declare-fun tp!393553 () Bool)

(assert (=> b!1369502 (= e!875511 (and tp!393554 tp!393553))))

(assert (=> b!1367920 (= tp!393383 e!875511)))

(declare-fun b!1369503 () Bool)

(declare-fun tp!393550 () Bool)

(assert (=> b!1369503 (= e!875511 tp!393550)))

(assert (= (and b!1367920 ((_ is ElementMatch!3715) (regOne!7942 (regex!2401 (rule!4154 t2!34))))) b!1369501))

(assert (= (and b!1367920 ((_ is Concat!6207) (regOne!7942 (regex!2401 (rule!4154 t2!34))))) b!1369502))

(assert (= (and b!1367920 ((_ is Star!3715) (regOne!7942 (regex!2401 (rule!4154 t2!34))))) b!1369503))

(assert (= (and b!1367920 ((_ is Union!3715) (regOne!7942 (regex!2401 (rule!4154 t2!34))))) b!1369504))

(declare-fun b!1369508 () Bool)

(declare-fun e!875512 () Bool)

(declare-fun tp!393556 () Bool)

(declare-fun tp!393557 () Bool)

(assert (=> b!1369508 (= e!875512 (and tp!393556 tp!393557))))

(declare-fun b!1369505 () Bool)

(assert (=> b!1369505 (= e!875512 tp_is_empty!6739)))

(declare-fun b!1369506 () Bool)

(declare-fun tp!393559 () Bool)

(declare-fun tp!393558 () Bool)

(assert (=> b!1369506 (= e!875512 (and tp!393559 tp!393558))))

(assert (=> b!1367920 (= tp!393382 e!875512)))

(declare-fun b!1369507 () Bool)

(declare-fun tp!393555 () Bool)

(assert (=> b!1369507 (= e!875512 tp!393555)))

(assert (= (and b!1367920 ((_ is ElementMatch!3715) (regTwo!7942 (regex!2401 (rule!4154 t2!34))))) b!1369505))

(assert (= (and b!1367920 ((_ is Concat!6207) (regTwo!7942 (regex!2401 (rule!4154 t2!34))))) b!1369506))

(assert (= (and b!1367920 ((_ is Star!3715) (regTwo!7942 (regex!2401 (rule!4154 t2!34))))) b!1369507))

(assert (= (and b!1367920 ((_ is Union!3715) (regTwo!7942 (regex!2401 (rule!4154 t2!34))))) b!1369508))

(declare-fun b!1369512 () Bool)

(declare-fun e!875513 () Bool)

(declare-fun tp!393561 () Bool)

(declare-fun tp!393562 () Bool)

(assert (=> b!1369512 (= e!875513 (and tp!393561 tp!393562))))

(declare-fun b!1369509 () Bool)

(assert (=> b!1369509 (= e!875513 tp_is_empty!6739)))

(declare-fun b!1369510 () Bool)

(declare-fun tp!393564 () Bool)

(declare-fun tp!393563 () Bool)

(assert (=> b!1369510 (= e!875513 (and tp!393564 tp!393563))))

(assert (=> b!1367901 (= tp!393359 e!875513)))

(declare-fun b!1369511 () Bool)

(declare-fun tp!393560 () Bool)

(assert (=> b!1369511 (= e!875513 tp!393560)))

(assert (= (and b!1367901 ((_ is ElementMatch!3715) (regOne!7943 (regex!2401 (h!19265 rules!2550))))) b!1369509))

(assert (= (and b!1367901 ((_ is Concat!6207) (regOne!7943 (regex!2401 (h!19265 rules!2550))))) b!1369510))

(assert (= (and b!1367901 ((_ is Star!3715) (regOne!7943 (regex!2401 (h!19265 rules!2550))))) b!1369511))

(assert (= (and b!1367901 ((_ is Union!3715) (regOne!7943 (regex!2401 (h!19265 rules!2550))))) b!1369512))

(declare-fun b!1369516 () Bool)

(declare-fun e!875514 () Bool)

(declare-fun tp!393566 () Bool)

(declare-fun tp!393567 () Bool)

(assert (=> b!1369516 (= e!875514 (and tp!393566 tp!393567))))

(declare-fun b!1369513 () Bool)

(assert (=> b!1369513 (= e!875514 tp_is_empty!6739)))

(declare-fun b!1369514 () Bool)

(declare-fun tp!393569 () Bool)

(declare-fun tp!393568 () Bool)

(assert (=> b!1369514 (= e!875514 (and tp!393569 tp!393568))))

(assert (=> b!1367901 (= tp!393360 e!875514)))

(declare-fun b!1369515 () Bool)

(declare-fun tp!393565 () Bool)

(assert (=> b!1369515 (= e!875514 tp!393565)))

(assert (= (and b!1367901 ((_ is ElementMatch!3715) (regTwo!7943 (regex!2401 (h!19265 rules!2550))))) b!1369513))

(assert (= (and b!1367901 ((_ is Concat!6207) (regTwo!7943 (regex!2401 (h!19265 rules!2550))))) b!1369514))

(assert (= (and b!1367901 ((_ is Star!3715) (regTwo!7943 (regex!2401 (h!19265 rules!2550))))) b!1369515))

(assert (= (and b!1367901 ((_ is Union!3715) (regTwo!7943 (regex!2401 (h!19265 rules!2550))))) b!1369516))

(declare-fun b!1369520 () Bool)

(declare-fun e!875515 () Bool)

(declare-fun tp!393571 () Bool)

(declare-fun tp!393572 () Bool)

(assert (=> b!1369520 (= e!875515 (and tp!393571 tp!393572))))

(declare-fun b!1369517 () Bool)

(assert (=> b!1369517 (= e!875515 tp_is_empty!6739)))

(declare-fun b!1369518 () Bool)

(declare-fun tp!393574 () Bool)

(declare-fun tp!393573 () Bool)

(assert (=> b!1369518 (= e!875515 (and tp!393574 tp!393573))))

(assert (=> b!1367900 (= tp!393358 e!875515)))

(declare-fun b!1369519 () Bool)

(declare-fun tp!393570 () Bool)

(assert (=> b!1369519 (= e!875515 tp!393570)))

(assert (= (and b!1367900 ((_ is ElementMatch!3715) (reg!4044 (regex!2401 (h!19265 rules!2550))))) b!1369517))

(assert (= (and b!1367900 ((_ is Concat!6207) (reg!4044 (regex!2401 (h!19265 rules!2550))))) b!1369518))

(assert (= (and b!1367900 ((_ is Star!3715) (reg!4044 (regex!2401 (h!19265 rules!2550))))) b!1369519))

(assert (= (and b!1367900 ((_ is Union!3715) (reg!4044 (regex!2401 (h!19265 rules!2550))))) b!1369520))

(declare-fun b!1369524 () Bool)

(declare-fun e!875516 () Bool)

(declare-fun tp!393576 () Bool)

(declare-fun tp!393577 () Bool)

(assert (=> b!1369524 (= e!875516 (and tp!393576 tp!393577))))

(declare-fun b!1369521 () Bool)

(assert (=> b!1369521 (= e!875516 tp_is_empty!6739)))

(declare-fun b!1369522 () Bool)

(declare-fun tp!393579 () Bool)

(declare-fun tp!393578 () Bool)

(assert (=> b!1369522 (= e!875516 (and tp!393579 tp!393578))))

(assert (=> b!1367922 (= tp!393380 e!875516)))

(declare-fun b!1369523 () Bool)

(declare-fun tp!393575 () Bool)

(assert (=> b!1369523 (= e!875516 tp!393575)))

(assert (= (and b!1367922 ((_ is ElementMatch!3715) (regOne!7943 (regex!2401 (rule!4154 t2!34))))) b!1369521))

(assert (= (and b!1367922 ((_ is Concat!6207) (regOne!7943 (regex!2401 (rule!4154 t2!34))))) b!1369522))

(assert (= (and b!1367922 ((_ is Star!3715) (regOne!7943 (regex!2401 (rule!4154 t2!34))))) b!1369523))

(assert (= (and b!1367922 ((_ is Union!3715) (regOne!7943 (regex!2401 (rule!4154 t2!34))))) b!1369524))

(declare-fun b!1369528 () Bool)

(declare-fun e!875517 () Bool)

(declare-fun tp!393581 () Bool)

(declare-fun tp!393582 () Bool)

(assert (=> b!1369528 (= e!875517 (and tp!393581 tp!393582))))

(declare-fun b!1369525 () Bool)

(assert (=> b!1369525 (= e!875517 tp_is_empty!6739)))

(declare-fun b!1369526 () Bool)

(declare-fun tp!393584 () Bool)

(declare-fun tp!393583 () Bool)

(assert (=> b!1369526 (= e!875517 (and tp!393584 tp!393583))))

(assert (=> b!1367922 (= tp!393381 e!875517)))

(declare-fun b!1369527 () Bool)

(declare-fun tp!393580 () Bool)

(assert (=> b!1369527 (= e!875517 tp!393580)))

(assert (= (and b!1367922 ((_ is ElementMatch!3715) (regTwo!7943 (regex!2401 (rule!4154 t2!34))))) b!1369525))

(assert (= (and b!1367922 ((_ is Concat!6207) (regTwo!7943 (regex!2401 (rule!4154 t2!34))))) b!1369526))

(assert (= (and b!1367922 ((_ is Star!3715) (regTwo!7943 (regex!2401 (rule!4154 t2!34))))) b!1369527))

(assert (= (and b!1367922 ((_ is Union!3715) (regTwo!7943 (regex!2401 (rule!4154 t2!34))))) b!1369528))

(declare-fun b!1369532 () Bool)

(declare-fun e!875518 () Bool)

(declare-fun tp!393586 () Bool)

(declare-fun tp!393587 () Bool)

(assert (=> b!1369532 (= e!875518 (and tp!393586 tp!393587))))

(declare-fun b!1369529 () Bool)

(assert (=> b!1369529 (= e!875518 tp_is_empty!6739)))

(declare-fun b!1369530 () Bool)

(declare-fun tp!393589 () Bool)

(declare-fun tp!393588 () Bool)

(assert (=> b!1369530 (= e!875518 (and tp!393589 tp!393588))))

(assert (=> b!1367917 (= tp!393377 e!875518)))

(declare-fun b!1369531 () Bool)

(declare-fun tp!393585 () Bool)

(assert (=> b!1369531 (= e!875518 tp!393585)))

(assert (= (and b!1367917 ((_ is ElementMatch!3715) (regex!2401 (h!19265 (t!121281 rules!2550))))) b!1369529))

(assert (= (and b!1367917 ((_ is Concat!6207) (regex!2401 (h!19265 (t!121281 rules!2550))))) b!1369530))

(assert (= (and b!1367917 ((_ is Star!3715) (regex!2401 (h!19265 (t!121281 rules!2550))))) b!1369531))

(assert (= (and b!1367917 ((_ is Union!3715) (regex!2401 (h!19265 (t!121281 rules!2550))))) b!1369532))

(declare-fun b!1369535 () Bool)

(declare-fun b_free!33171 () Bool)

(declare-fun b_next!33875 () Bool)

(assert (=> b!1369535 (= b_free!33171 (not b_next!33875))))

(declare-fun tb!72157 () Bool)

(declare-fun t!121417 () Bool)

(assert (=> (and b!1369535 (= (toValue!3664 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121417) tb!72157))

(declare-fun result!87610 () Bool)

(assert (= result!87610 result!87590))

(assert (=> d!390387 t!121417))

(declare-fun tb!72159 () Bool)

(declare-fun t!121419 () Bool)

(assert (=> (and b!1369535 (= (toValue!3664 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toValue!3664 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121419) tb!72159))

(declare-fun result!87612 () Bool)

(assert (= result!87612 result!87600))

(assert (=> d!390505 t!121419))

(declare-fun tp!393593 () Bool)

(declare-fun b_and!91779 () Bool)

(assert (=> b!1369535 (= tp!393593 (and (=> t!121417 result!87610) (=> t!121419 result!87612) b_and!91779))))

(declare-fun b_free!33173 () Bool)

(declare-fun b_next!33877 () Bool)

(assert (=> b!1369535 (= b_free!33173 (not b_next!33877))))

(declare-fun tb!72161 () Bool)

(declare-fun t!121421 () Bool)

(assert (=> (and b!1369535 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453614)))))) t!121421) tb!72161))

(declare-fun result!87614 () Bool)

(assert (= result!87614 result!87552))

(assert (=> d!389915 t!121421))

(declare-fun t!121423 () Bool)

(declare-fun tb!72163 () Bool)

(assert (=> (and b!1369535 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toChars!3523 (transformation!2401 (rule!4154 t1!34)))) t!121423) tb!72163))

(declare-fun result!87616 () Bool)

(assert (= result!87616 result!87494))

(assert (=> d!389501 t!121423))

(declare-fun t!121425 () Bool)

(declare-fun tb!72165 () Bool)

(assert (=> (and b!1369535 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toChars!3523 (transformation!2401 (rule!4154 t2!34)))) t!121425) tb!72165))

(declare-fun result!87618 () Bool)

(assert (= result!87618 result!87486))

(assert (=> d!389475 t!121425))

(assert (=> b!1367884 t!121425))

(assert (=> b!1367882 t!121423))

(declare-fun t!121427 () Bool)

(declare-fun tb!72167 () Bool)

(assert (=> (and b!1369535 (= (toChars!3523 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) (toChars!3523 (transformation!2401 (rule!4154 (_1!7615 (get!4341 lt!453705)))))) t!121427) tb!72167))

(declare-fun result!87620 () Bool)

(assert (= result!87620 result!87560))

(assert (=> d!390019 t!121427))

(declare-fun tp!393590 () Bool)

(declare-fun b_and!91781 () Bool)

(assert (=> b!1369535 (= tp!393590 (and (=> t!121423 result!87616) (=> t!121427 result!87620) (=> t!121425 result!87618) (=> t!121421 result!87614) b_and!91781))))

(declare-fun e!875519 () Bool)

(assert (=> b!1369535 (= e!875519 (and tp!393593 tp!393590))))

(declare-fun e!875520 () Bool)

(declare-fun b!1369534 () Bool)

(declare-fun tp!393592 () Bool)

(assert (=> b!1369534 (= e!875520 (and tp!393592 (inv!18213 (tag!2663 (h!19265 (t!121281 (t!121281 rules!2550))))) (inv!18216 (transformation!2401 (h!19265 (t!121281 (t!121281 rules!2550))))) e!875519))))

(declare-fun b!1369533 () Bool)

(declare-fun e!875521 () Bool)

(declare-fun tp!393591 () Bool)

(assert (=> b!1369533 (= e!875521 (and e!875520 tp!393591))))

(assert (=> b!1367916 (= tp!393376 e!875521)))

(assert (= b!1369534 b!1369535))

(assert (= b!1369533 b!1369534))

(assert (= (and b!1367916 ((_ is Cons!13864) (t!121281 (t!121281 rules!2550)))) b!1369533))

(declare-fun m!1539459 () Bool)

(assert (=> b!1369534 m!1539459))

(declare-fun m!1539461 () Bool)

(assert (=> b!1369534 m!1539461))

(declare-fun b!1369536 () Bool)

(declare-fun e!875523 () Bool)

(declare-fun tp!393594 () Bool)

(assert (=> b!1369536 (= e!875523 (and tp_is_empty!6739 tp!393594))))

(assert (=> b!1367906 (= tp!393365 e!875523)))

(assert (= (and b!1367906 ((_ is Cons!13862) (t!121279 (originalCharacters!3263 t2!34)))) b!1369536))

(declare-fun b_lambda!41783 () Bool)

(assert (= b_lambda!41773 (or d!389507 b_lambda!41783)))

(declare-fun bs!335498 () Bool)

(declare-fun d!390591 () Bool)

(assert (= bs!335498 (and d!390591 d!389507)))

(assert (=> bs!335498 (= (dynLambda!6266 lambda!57891 (h!19265 rules!2550)) (regex!2401 (h!19265 rules!2550)))))

(assert (=> b!1369180 d!390591))

(declare-fun b_lambda!41785 () Bool)

(assert (= b_lambda!41775 (or d!389639 b_lambda!41785)))

(declare-fun bs!335499 () Bool)

(declare-fun d!390593 () Bool)

(assert (= bs!335499 (and d!390593 d!389639)))

(assert (=> bs!335499 (= (dynLambda!6273 lambda!57923 (h!19265 rules!2550)) (not (dynLambda!6273 lambda!57885 (h!19265 rules!2550))))))

(declare-fun b_lambda!41805 () Bool)

(assert (=> (not b_lambda!41805) (not bs!335499)))

(assert (=> bs!335499 m!1536631))

(assert (=> b!1369234 d!390593))

(declare-fun b_lambda!41787 () Bool)

(assert (= b_lambda!41705 (or b!1367227 b_lambda!41787)))

(declare-fun bs!335500 () Bool)

(declare-fun d!390595 () Bool)

(assert (= bs!335500 (and d!390595 b!1367227)))

(declare-fun res!616783 () Bool)

(declare-fun e!875524 () Bool)

(assert (=> bs!335500 (=> (not res!616783) (not e!875524))))

(assert (=> bs!335500 (= res!616783 (matchR!1708 lt!453462 res!616272))))

(assert (=> bs!335500 (= (dynLambda!6264 lambda!57882 res!616272) e!875524)))

(declare-fun b!1369537 () Bool)

(assert (=> b!1369537 (= e!875524 (isPrefix!1125 lt!453466 res!616272))))

(assert (= (and bs!335500 res!616783) b!1369537))

(declare-fun m!1539463 () Bool)

(assert (=> bs!335500 m!1539463))

(declare-fun m!1539465 () Bool)

(assert (=> b!1369537 m!1539465))

(assert (=> d!389891 d!390595))

(declare-fun b_lambda!41789 () Bool)

(assert (= b_lambda!41713 (or d!389621 b_lambda!41789)))

(declare-fun bs!335501 () Bool)

(declare-fun d!390597 () Bool)

(assert (= bs!335501 (and d!390597 d!389621)))

(assert (=> bs!335501 (= (dynLambda!6274 lambda!57913 (h!19267 (map!3062 rules!2550 lambda!57883))) (not (dynLambda!6274 lambda!57884 (h!19267 (map!3062 rules!2550 lambda!57883)))))))

(declare-fun b_lambda!41807 () Bool)

(assert (=> (not b_lambda!41807) (not bs!335501)))

(assert (=> bs!335501 m!1536669))

(assert (=> b!1368242 d!390597))

(declare-fun b_lambda!41791 () Bool)

(assert (= b_lambda!41777 (or b!1367244 b_lambda!41791)))

(declare-fun bs!335502 () Bool)

(declare-fun d!390599 () Bool)

(assert (= bs!335502 (and d!390599 b!1367244)))

(assert (=> bs!335502 (= (dynLambda!6266 lambda!57883 (h!19265 (t!121281 rules!2550))) (regex!2401 (h!19265 (t!121281 rules!2550))))))

(assert (=> b!1369282 d!390599))

(declare-fun b_lambda!41793 () Bool)

(assert (= b_lambda!41707 (or b!1367240 b_lambda!41793)))

(declare-fun bs!335503 () Bool)

(declare-fun d!390601 () Bool)

(assert (= bs!335503 (and d!390601 b!1367240)))

(assert (=> bs!335503 (= (dynLambda!6273 lambda!57885 (h!19265 (t!121281 rules!2550))) (= (regex!2401 (h!19265 (t!121281 rules!2550))) lt!453455))))

(assert (=> b!1368167 d!390601))

(declare-fun b_lambda!41795 () Bool)

(assert (= b_lambda!41739 (or b!1367244 b_lambda!41795)))

(declare-fun bs!335504 () Bool)

(declare-fun d!390603 () Bool)

(assert (= bs!335504 (and d!390603 b!1367244)))

(declare-fun res!616784 () Bool)

(declare-fun e!875525 () Bool)

(assert (=> bs!335504 (=> (not res!616784) (not e!875525))))

(assert (=> bs!335504 (= res!616784 (validRegex!1615 (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883)))))))

(assert (=> bs!335504 (= (dynLambda!6274 lambda!57884 (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883)))) e!875525)))

(declare-fun b!1369538 () Bool)

(assert (=> b!1369538 (= e!875525 (matchR!1708 (h!19267 (t!121283 (map!3062 rules!2550 lambda!57883))) lt!453465))))

(assert (= (and bs!335504 res!616784) b!1369538))

(declare-fun m!1539467 () Bool)

(assert (=> bs!335504 m!1539467))

(declare-fun m!1539469 () Bool)

(assert (=> b!1369538 m!1539469))

(assert (=> b!1368996 d!390603))

(declare-fun b_lambda!41797 () Bool)

(assert (= b_lambda!41741 (or b!1367244 b_lambda!41797)))

(declare-fun bs!335505 () Bool)

(declare-fun d!390605 () Bool)

(assert (= bs!335505 (and d!390605 b!1367244)))

(declare-fun res!616785 () Bool)

(declare-fun e!875526 () Bool)

(assert (=> bs!335505 (=> (not res!616785) (not e!875526))))

(assert (=> bs!335505 (= res!616785 (validRegex!1615 lt!454346))))

(assert (=> bs!335505 (= (dynLambda!6274 lambda!57884 lt!454346) e!875526)))

(declare-fun b!1369539 () Bool)

(assert (=> b!1369539 (= e!875526 (matchR!1708 lt!454346 lt!453465))))

(assert (= (and bs!335505 res!616785) b!1369539))

(declare-fun m!1539471 () Bool)

(assert (=> bs!335505 m!1539471))

(declare-fun m!1539473 () Bool)

(assert (=> b!1369539 m!1539473))

(assert (=> d!390359 d!390605))

(declare-fun b_lambda!41799 () Bool)

(assert (= b_lambda!41779 (or d!389627 b_lambda!41799)))

(declare-fun bs!335506 () Bool)

(declare-fun d!390607 () Bool)

(assert (= bs!335506 (and d!390607 d!389627)))

(assert (=> bs!335506 (= (dynLambda!6274 lambda!57920 (h!19267 lt!453463)) (not (dynLambda!6274 lambda!57884 (h!19267 lt!453463))))))

(declare-fun b_lambda!41809 () Bool)

(assert (=> (not b_lambda!41809) (not bs!335506)))

(declare-fun m!1539475 () Bool)

(assert (=> bs!335506 m!1539475))

(assert (=> b!1369313 d!390607))

(declare-fun b_lambda!41801 () Bool)

(assert (= b_lambda!41709 (or b!1367240 b_lambda!41801)))

(declare-fun bs!335507 () Bool)

(declare-fun d!390609 () Bool)

(assert (= bs!335507 (and d!390609 b!1367240)))

(assert (=> bs!335507 (= (dynLambda!6273 lambda!57885 lt!453823) (= (regex!2401 lt!453823) lt!453455))))

(assert (=> d!389893 d!390609))

(declare-fun b_lambda!41803 () Bool)

(assert (= b_lambda!41703 (or d!389625 b_lambda!41803)))

(declare-fun bs!335508 () Bool)

(declare-fun d!390611 () Bool)

(assert (= bs!335508 (and d!390611 d!389625)))

(assert (=> bs!335508 (= (dynLambda!6274 lambda!57918 (h!19267 lt!453463)) (validRegex!1615 (h!19267 lt!453463)))))

(declare-fun m!1539477 () Bool)

(assert (=> bs!335508 m!1539477))

(assert (=> b!1368136 d!390611))

(check-sat (not d!390491) (not b!1368981) (not b!1368370) (not b!1369508) (not b!1368526) (not b!1368177) (not b!1369536) (not b_lambda!41677) (not d!390039) (not b!1369337) (not b_next!33877) (not b_lambda!41681) (not d!389883) (not d!390079) (not d!390571) (not b!1368419) (not d!390587) (not d!390431) b_and!91743 (not b!1368536) (not b_lambda!41797) (not d!389943) (not d!390415) (not b!1369276) (not b!1368148) (not b!1369412) (not b!1369534) (not tb!72113) (not b!1369409) (not b!1369132) (not b_lambda!41679) (not b!1369471) (not d!390545) (not d!389975) (not b!1368380) (not b!1369382) (not b_next!33857) (not b!1368220) (not d!390499) (not b_lambda!41799) (not b_next!33867) (not b!1369404) (not b!1369370) (not d!389895) (not b!1368951) (not d!390567) (not b!1368373) (not b!1368423) (not bs!335508) (not b!1369502) (not b!1368403) (not b_next!33861) (not b!1368241) (not d!389935) (not d!390103) (not d!390477) (not d!390581) (not b!1369451) (not tb!72141) (not d!390403) (not b!1369491) (not b!1369347) (not b!1369346) (not b!1369496) (not d!389955) (not b!1369480) (not b!1369310) (not b!1368176) (not b!1368979) (not d!390497) (not d!390359) (not b!1368170) (not b!1369341) (not d!390351) (not b!1368424) (not b!1368171) (not b!1369389) (not d!389915) (not b!1369223) (not b!1368503) (not b!1369482) (not b!1369533) (not b!1369306) (not b!1369241) (not b!1368520) (not b!1369172) (not b!1368399) (not b!1369402) (not b!1368283) (not b!1368412) (not b!1369488) (not b!1368504) (not b!1369182) (not b!1368195) (not b!1369431) (not b!1369304) (not b!1369523) (not b!1368435) (not b!1368417) (not d!389941) (not b!1369484) (not b!1369254) (not b!1368985) (not b!1369396) (not b!1369010) (not d!390397) (not b!1368952) (not d!390449) (not d!390013) (not b!1368165) (not b!1369217) (not tb!72105) (not b!1369245) (not b!1368529) (not b!1369405) (not b!1369531) (not b_next!33851) (not d!390347) (not b!1368277) (not b!1368218) (not d!389873) (not d!390037) (not d!390405) (not b!1369354) (not d!390419) (not b!1369376) (not b!1368997) (not b!1369327) (not d!390345) (not b!1369318) (not b!1369456) (not d!390421) (not d!390589) (not b!1369011) (not b!1368160) (not b!1369138) (not bm!91979) (not b!1369269) (not b!1369397) (not b!1368436) (not b!1369377) (not b!1369309) (not b!1369148) (not b!1369408) (not b!1369519) (not d!390043) (not d!389949) (not b_lambda!41807) (not b!1369506) (not b_next!33869) (not b!1369328) (not b!1368237) (not b!1369343) (not b!1367303) (not b!1368999) (not b_next!33875) (not d!390543) (not d!390559) (not b!1369331) (not b!1369235) (not b!1369516) (not d!390465) (not b!1368264) (not b!1369125) (not b!1368397) b_and!91749 (not d!390551) (not b!1369511) (not b!1368407) (not bm!91994) (not bm!92056) (not b!1368258) (not b!1369457) (not d!390475) (not d!390443) (not d!390027) (not b!1369400) (not d!390001) (not b_lambda!41771) (not d!390445) (not b!1368219) (not b!1369196) (not b!1368379) (not bm!92043) (not d!389925) (not b!1368173) (not d!389957) (not d!389909) (not b!1368172) (not b_lambda!41685) (not d!390085) (not b_lambda!41809) (not d!390517) (not b!1369239) (not b_lambda!41715) (not b!1368995) (not d!389937) (not b!1369539) (not b!1368205) (not b!1368162) (not b!1369522) (not b!1369483) (not d!389887) (not b!1369453) (not b!1369494) (not bm!92055) (not b!1369398) (not b!1368270) (not d!389953) (not b!1369537) (not b!1369391) (not d!390053) (not b!1369468) (not bm!92058) (not d!390531) (not b!1368349) (not b!1368393) (not b!1369333) (not b!1369169) (not b!1369001) (not b!1369401) (not b!1369430) (not d!389923) (not b!1368287) (not b!1368372) (not bm!92044) (not b!1368192) (not d!390439) (not b!1369518) (not d!390461) (not b!1369348) (not b!1369510) (not b_lambda!41691) (not b!1369532) (not b!1368286) b_and!91771 (not d!389973) (not d!390519) (not b!1369455) (not d!390569) (not b!1369173) (not b!1369497) (not b!1368421) (not d!389921) (not bm!92042) (not b!1369422) (not b!1368243) (not d!389913) (not d!390521) (not b!1369176) (not b!1369009) (not b!1369478) (not b!1369425) (not b!1369538) b_and!91745 (not b!1369395) (not b!1369492) (not d!390537) (not d!389967) (not b!1369285) (not d!390471) (not b!1369445) (not b!1369449) (not b!1369499) b_and!91747 (not b!1368987) (not bm!91989) (not b!1368180) (not b!1368983) b_and!91775 (not b!1369308) (not b!1369498) (not b_lambda!41805) (not d!390091) (not b!1369270) (not b!1369416) (not b_lambda!41801) (not d!390455) (not b!1368207) (not b!1369432) (not b_lambda!41795) (not b!1368409) (not d!390055) (not b!1369495) (not b!1368433) (not d!390003) (not b!1368211) (not b!1368509) (not b!1369280) (not b!1369314) (not bm!92047) (not b!1369312) (not d!390023) (not b!1368368) (not d!389939) (not b_lambda!41683) (not b!1369225) (not b!1368991) (not b!1369500) (not b!1368522) (not bm!92034) (not bm!92054) (not d!389945) (not bm!91993) (not d!390565) (not b!1369180) (not tb!72149) (not b!1368458) (not b!1368404) (not b!1369362) (not b!1368326) (not b!1368193) (not d!390437) (not bs!335505) (not b!1369208) (not d!390369) (not b!1369114) (not b!1369406) (not b!1369530) (not d!390495) (not bm!92053) (not b!1368410) (not d!390507) (not b!1369237) (not b!1368182) (not b!1369443) (not b!1368500) (not bm!91980) (not b!1369219) (not d!389885) (not b!1369476) (not d!390547) (not b!1369171) (not b!1369393) (not b_lambda!41687) (not b!1369278) (not b!1368408) (not d!390429) (not d!390585) (not b!1368147) (not b!1369191) (not b!1368411) (not b!1368153) (not b!1368281) (not bs!335504) (not b!1368415) (not b!1369213) (not b!1369507) (not b_lambda!41711) (not d!390031) (not b!1369442) (not b!1369503) (not b!1369195) (not b_lambda!41785) (not b!1369520) (not d!389881) (not b!1369470) (not b_lambda!41787) (not d!390423) (not b!1369410) (not b!1368272) (not d!390095) (not b!1368420) (not bm!92050) (not b!1368948) (not b!1369274) (not b!1368343) (not b!1368179) (not b!1369524) (not b!1369512) (not d!390093) (not b!1368989) (not d!389875) (not b!1369528) (not b!1369224) (not d!389893) (not bm!91997) (not b!1369253) (not b!1369128) (not d!390077) (not bs!335500) (not b!1368505) (not b!1368288) (not b_lambda!41693) (not b_lambda!41793) (not b!1368137) (not d!390073) (not b!1369527) (not d!389951) (not b!1368984) (not b!1367356) (not d!390523) (not b!1369467) (not b_lambda!41675) (not b!1369305) (not d!390083) (not b!1369479) (not b!1368169) (not b_lambda!41781) (not b!1369444) (not d!389927) (not b!1368146) (not d!390515) (not d!390513) (not d!390549) (not b!1369411) (not b!1369140) (not d!389903) (not b!1369486) (not d!390481) (not b!1368437) (not b!1368265) (not bm!91998) (not b!1368385) (not b!1369504) (not b_next!33855) (not b!1368416) (not b!1368175) (not b!1369142) (not d!390575) (not b!1369514) (not bm!92048) (not d!390019) (not b!1369383) (not b_lambda!41689) (not b!1368402) (not b!1369372) (not b!1369130) (not b!1369189) (not b!1369129) (not b!1369420) (not b!1368240) (not b!1369136) (not b!1369472) (not b_lambda!41791) tp_is_empty!6739 b_and!91779 (not d!390459) (not b!1369474) (not d!390035) (not b!1369283) (not b!1369515) (not bm!92057) (not b!1368994) (not b!1369466) (not b!1369229) b_and!91781 (not d!390417) (not b!1369174) b_and!91777 (not b!1368268) (not b!1369222) (not d!390349) (not b!1369185) (not b!1368369) (not d!389911) (not d!390101) (not b!1369390) (not d!390441) (not b!1369368) (not d!389993) (not b!1368502) (not b!1368988) (not b!1369282) (not b_lambda!41803) (not b!1368953) (not b!1369394) (not b!1368422) (not b!1369367) (not b!1369440) (not d!390071) (not d!390017) (not b!1369177) (not b!1368342) (not b!1368341) (not b!1368348) (not d!390353) (not d!390557) (not b!1369332) (not bm!91990) (not b!1369325) (not b!1368188) (not b!1369526) (not d!389879) (not d!390579) (not b!1369475) (not b!1369438) (not d!390457) (not b!1368235) (not d!389899) (not d!389965) (not b!1369307) (not b!1369490) (not b_lambda!41783) (not b!1369198) (not b!1369413) (not bm!92051) b_and!91773 (not b!1369360) (not b!1368521) (not b!1369427) (not b!1369447) (not b!1369426) (not b!1368525) (not b!1368152) (not b!1368178) (not b!1368209) (not b!1368371) (not d!390087) (not b!1369373) (not b!1369363) (not d!389995) (not b!1368149) (not d!390399) (not b!1369194) (not b!1369448) (not b!1368978) (not bm!91976) (not b!1368507) (not d!389919) (not d!390433) (not d!390529) (not b!1369446) (not d!390425) (not b_lambda!41789) (not b!1368378) (not b!1368530) (not b!1368190) (not b_next!33859) (not b!1368413) (not b!1368986) (not b!1368274) (not b_next!33853) (not b!1369487))
(check-sat (not b_next!33861) (not b_next!33851) b_and!91749 b_and!91771 b_and!91745 (not b_next!33855) b_and!91779 b_and!91773 b_and!91743 (not b_next!33877) (not b_next!33867) (not b_next!33857) (not b_next!33869) (not b_next!33875) b_and!91747 b_and!91775 b_and!91781 b_and!91777 (not b_next!33853) (not b_next!33859))
