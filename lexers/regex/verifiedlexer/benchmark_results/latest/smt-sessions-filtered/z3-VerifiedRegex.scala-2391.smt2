; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121414 () Bool)

(assert start!121414)

(declare-fun b!1353360 () Bool)

(declare-fun b_free!32955 () Bool)

(declare-fun b_next!33659 () Bool)

(assert (=> b!1353360 (= b_free!32955 (not b_next!33659))))

(declare-fun tp!390966 () Bool)

(declare-fun b_and!90603 () Bool)

(assert (=> b!1353360 (= tp!390966 b_and!90603)))

(declare-fun b_free!32957 () Bool)

(declare-fun b_next!33661 () Bool)

(assert (=> b!1353360 (= b_free!32957 (not b_next!33661))))

(declare-fun tp!390965 () Bool)

(declare-fun b_and!90605 () Bool)

(assert (=> b!1353360 (= tp!390965 b_and!90605)))

(declare-fun b!1353353 () Bool)

(declare-fun b_free!32959 () Bool)

(declare-fun b_next!33663 () Bool)

(assert (=> b!1353353 (= b_free!32959 (not b_next!33663))))

(declare-fun tp!390972 () Bool)

(declare-fun b_and!90607 () Bool)

(assert (=> b!1353353 (= tp!390972 b_and!90607)))

(declare-fun b_free!32961 () Bool)

(declare-fun b_next!33665 () Bool)

(assert (=> b!1353353 (= b_free!32961 (not b_next!33665))))

(declare-fun tp!390973 () Bool)

(declare-fun b_and!90609 () Bool)

(assert (=> b!1353353 (= tp!390973 b_and!90609)))

(declare-fun b!1353374 () Bool)

(declare-fun b_free!32963 () Bool)

(declare-fun b_next!33667 () Bool)

(assert (=> b!1353374 (= b_free!32963 (not b_next!33667))))

(declare-fun tp!390963 () Bool)

(declare-fun b_and!90611 () Bool)

(assert (=> b!1353374 (= tp!390963 b_and!90611)))

(declare-fun b_free!32965 () Bool)

(declare-fun b_next!33669 () Bool)

(assert (=> b!1353374 (= b_free!32965 (not b_next!33669))))

(declare-fun tp!390974 () Bool)

(declare-fun b_and!90613 () Bool)

(assert (=> b!1353374 (= tp!390974 b_and!90613)))

(declare-fun b!1353359 () Bool)

(assert (=> b!1353359 true))

(assert (=> b!1353359 true))

(declare-fun b!1353366 () Bool)

(assert (=> b!1353366 true))

(declare-fun b!1353381 () Bool)

(assert (=> b!1353381 true))

(declare-fun tp!390970 () Bool)

(declare-fun b!1353351 () Bool)

(declare-fun e!866203 () Bool)

(declare-fun e!866210 () Bool)

(declare-datatypes ((List!13862 0))(
  ( (Nil!13796) (Cons!13796 (h!19197 (_ BitVec 16)) (t!120227 List!13862)) )
))
(declare-datatypes ((TokenValue!2481 0))(
  ( (FloatLiteralValue!4962 (text!17812 List!13862)) (TokenValueExt!2480 (__x!8791 Int)) (Broken!12405 (value!77750 List!13862)) (Object!2546) (End!2481) (Def!2481) (Underscore!2481) (Match!2481) (Else!2481) (Error!2481) (Case!2481) (If!2481) (Extends!2481) (Abstract!2481) (Class!2481) (Val!2481) (DelimiterValue!4962 (del!2541 List!13862)) (KeywordValue!2487 (value!77751 List!13862)) (CommentValue!4962 (value!77752 List!13862)) (WhitespaceValue!4962 (value!77753 List!13862)) (IndentationValue!2481 (value!77754 List!13862)) (String!16640) (Int32!2481) (Broken!12406 (value!77755 List!13862)) (Boolean!2482) (Unit!19940) (OperatorValue!2484 (op!2541 List!13862)) (IdentifierValue!4962 (value!77756 List!13862)) (IdentifierValue!4963 (value!77757 List!13862)) (WhitespaceValue!4963 (value!77758 List!13862)) (True!4962) (False!4962) (Broken!12407 (value!77759 List!13862)) (Broken!12408 (value!77760 List!13862)) (True!4963) (RightBrace!2481) (RightBracket!2481) (Colon!2481) (Null!2481) (Comma!2481) (LeftBracket!2481) (False!4963) (LeftBrace!2481) (ImaginaryLiteralValue!2481 (text!17813 List!13862)) (StringLiteralValue!7443 (value!77761 List!13862)) (EOFValue!2481 (value!77762 List!13862)) (IdentValue!2481 (value!77763 List!13862)) (DelimiterValue!4963 (value!77764 List!13862)) (DedentValue!2481 (value!77765 List!13862)) (NewLineValue!2481 (value!77766 List!13862)) (IntegerValue!7443 (value!77767 (_ BitVec 32)) (text!17814 List!13862)) (IntegerValue!7444 (value!77768 Int) (text!17815 List!13862)) (Times!2481) (Or!2481) (Equal!2481) (Minus!2481) (Broken!12409 (value!77769 List!13862)) (And!2481) (Div!2481) (LessEqual!2481) (Mod!2481) (Concat!6186) (Not!2481) (Plus!2481) (SpaceValue!2481 (value!77770 List!13862)) (IntegerValue!7445 (value!77771 Int) (text!17816 List!13862)) (StringLiteralValue!7444 (text!17817 List!13862)) (FloatLiteralValue!4963 (text!17818 List!13862)) (BytesLiteralValue!2481 (value!77772 List!13862)) (CommentValue!4963 (value!77773 List!13862)) (StringLiteralValue!7445 (value!77774 List!13862)) (ErrorTokenValue!2481 (msg!2542 List!13862)) )
))
(declare-datatypes ((C!7700 0))(
  ( (C!7701 (val!4410 Int)) )
))
(declare-datatypes ((List!13863 0))(
  ( (Nil!13797) (Cons!13797 (h!19198 C!7700) (t!120228 List!13863)) )
))
(declare-datatypes ((IArray!9093 0))(
  ( (IArray!9094 (innerList!4604 List!13863)) )
))
(declare-datatypes ((Conc!4544 0))(
  ( (Node!4544 (left!11821 Conc!4544) (right!12151 Conc!4544) (csize!9318 Int) (cheight!4755 Int)) (Leaf!6936 (xs!7267 IArray!9093) (csize!9319 Int)) (Empty!4544) )
))
(declare-datatypes ((BalanceConc!9028 0))(
  ( (BalanceConc!9029 (c!221992 Conc!4544)) )
))
(declare-datatypes ((Regex!3705 0))(
  ( (ElementMatch!3705 (c!221993 C!7700)) (Concat!6187 (regOne!7922 Regex!3705) (regTwo!7922 Regex!3705)) (EmptyExpr!3705) (Star!3705 (reg!4034 Regex!3705)) (EmptyLang!3705) (Union!3705 (regOne!7923 Regex!3705) (regTwo!7923 Regex!3705)) )
))
(declare-datatypes ((String!16641 0))(
  ( (String!16642 (value!77775 String)) )
))
(declare-datatypes ((TokenValueInjection!4622 0))(
  ( (TokenValueInjection!4623 (toValue!3642 Int) (toChars!3501 Int)) )
))
(declare-datatypes ((Rule!4582 0))(
  ( (Rule!4583 (regex!2391 Regex!3705) (tag!2653 String!16641) (isSeparator!2391 Bool) (transformation!2391 TokenValueInjection!4622)) )
))
(declare-datatypes ((Token!4444 0))(
  ( (Token!4445 (value!77776 TokenValue!2481) (rule!4138 Rule!4582) (size!11269 Int) (originalCharacters!3253 List!13863)) )
))
(declare-fun t2!34 () Token!4444)

(declare-fun inv!21 (TokenValue!2481) Bool)

(assert (=> b!1353351 (= e!866203 (and (inv!21 (value!77776 t2!34)) e!866210 tp!390970))))

(declare-fun e!866199 () Bool)

(assert (=> b!1353353 (= e!866199 (and tp!390972 tp!390973))))

(declare-fun b!1353354 () Bool)

(declare-fun res!609648 () Bool)

(declare-fun e!866209 () Bool)

(assert (=> b!1353354 (=> (not res!609648) (not e!866209))))

(declare-fun t1!34 () Token!4444)

(assert (=> b!1353354 (= res!609648 (not (= (isSeparator!2391 (rule!4138 t1!34)) (isSeparator!2391 (rule!4138 t2!34)))))))

(declare-fun b!1353355 () Bool)

(declare-fun res!609661 () Bool)

(assert (=> b!1353355 (=> (not res!609661) (not e!866209))))

(declare-datatypes ((LexerInterface!2086 0))(
  ( (LexerInterfaceExt!2083 (__x!8792 Int)) (Lexer!2084) )
))
(declare-fun thiss!19762 () LexerInterface!2086)

(declare-datatypes ((List!13864 0))(
  ( (Nil!13798) (Cons!13798 (h!19199 Rule!4582) (t!120229 List!13864)) )
))
(declare-fun rules!2550 () List!13864)

(declare-fun rulesInvariant!1956 (LexerInterface!2086 List!13864) Bool)

(assert (=> b!1353355 (= res!609661 (rulesInvariant!1956 thiss!19762 rules!2550))))

(declare-fun b!1353356 () Bool)

(declare-fun e!866212 () Bool)

(declare-fun e!866213 () Bool)

(assert (=> b!1353356 (= e!866212 e!866213)))

(declare-fun res!609654 () Bool)

(assert (=> b!1353356 (=> res!609654 e!866213)))

(declare-fun lt!447984 () List!13863)

(declare-fun lt!447991 () List!13863)

(declare-fun ++!3546 (List!13863 List!13863) List!13863)

(declare-fun getSuffix!553 (List!13863 List!13863) List!13863)

(assert (=> b!1353356 (= res!609654 (not (= lt!447984 (++!3546 lt!447991 (getSuffix!553 lt!447984 lt!447991)))))))

(declare-fun lambda!57088 () Int)

(declare-fun pickWitness!160 (Int) List!13863)

(assert (=> b!1353356 (= lt!447984 (pickWitness!160 lambda!57088))))

(declare-fun tp!390968 () Bool)

(declare-fun e!866220 () Bool)

(declare-fun b!1353357 () Bool)

(declare-fun inv!18136 (String!16641) Bool)

(declare-fun inv!18139 (TokenValueInjection!4622) Bool)

(assert (=> b!1353357 (= e!866210 (and tp!390968 (inv!18136 (tag!2653 (rule!4138 t2!34))) (inv!18139 (transformation!2391 (rule!4138 t2!34))) e!866220))))

(declare-fun b!1353358 () Bool)

(declare-fun res!609666 () Bool)

(declare-fun e!866205 () Bool)

(assert (=> b!1353358 (=> res!609666 e!866205)))

(declare-fun lt!447994 () List!13863)

(declare-datatypes ((tuple2!13370 0))(
  ( (tuple2!13371 (_1!7571 Token!4444) (_2!7571 List!13863)) )
))
(declare-datatypes ((Option!2644 0))(
  ( (None!2643) (Some!2643 (v!21356 tuple2!13370)) )
))
(declare-fun maxPrefix!1068 (LexerInterface!2086 List!13864 List!13863) Option!2644)

(assert (=> b!1353358 (= res!609666 (not (= (maxPrefix!1068 thiss!19762 rules!2550 lt!447994) (Some!2643 (tuple2!13371 t1!34 Nil!13797)))))))

(declare-fun e!866215 () Bool)

(assert (=> b!1353359 (= e!866215 (not e!866212))))

(declare-fun res!609649 () Bool)

(assert (=> b!1353359 (=> res!609649 e!866212)))

(declare-fun Exists!857 (Int) Bool)

(assert (=> b!1353359 (= res!609649 (not (Exists!857 lambda!57088)))))

(assert (=> b!1353359 (Exists!857 lambda!57088)))

(declare-datatypes ((Unit!19941 0))(
  ( (Unit!19942) )
))
(declare-fun lt!447987 () Unit!19941)

(declare-fun lt!447993 () Regex!3705)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!175 (Regex!3705 List!13863) Unit!19941)

(assert (=> b!1353359 (= lt!447987 (lemmaPrefixMatchThenExistsStringThatMatches!175 lt!447993 lt!447991))))

(assert (=> b!1353360 (= e!866220 (and tp!390966 tp!390965))))

(declare-fun b!1353361 () Bool)

(declare-fun res!609662 () Bool)

(declare-fun e!866218 () Bool)

(assert (=> b!1353361 (=> (not res!609662) (not e!866218))))

(declare-fun sepAndNonSepRulesDisjointChars!764 (List!13864 List!13864) Bool)

(assert (=> b!1353361 (= res!609662 (sepAndNonSepRulesDisjointChars!764 rules!2550 rules!2550))))

(declare-fun b!1353362 () Bool)

(declare-fun res!609668 () Bool)

(declare-fun e!866202 () Bool)

(assert (=> b!1353362 (=> res!609668 e!866202)))

(declare-fun lt!447989 () C!7700)

(declare-fun contains!2547 (List!13863 C!7700) Bool)

(assert (=> b!1353362 (= res!609668 (not (contains!2547 lt!447984 lt!447989)))))

(declare-fun b!1353363 () Bool)

(assert (=> b!1353363 (= e!866218 e!866215)))

(declare-fun res!609651 () Bool)

(assert (=> b!1353363 (=> (not res!609651) (not e!866215))))

(declare-fun prefixMatch!214 (Regex!3705 List!13863) Bool)

(assert (=> b!1353363 (= res!609651 (prefixMatch!214 lt!447993 lt!447991))))

(declare-fun rulesRegex!274 (LexerInterface!2086 List!13864) Regex!3705)

(assert (=> b!1353363 (= lt!447993 (rulesRegex!274 thiss!19762 rules!2550))))

(assert (=> b!1353363 (= lt!447991 (++!3546 lt!447994 (Cons!13797 lt!447989 Nil!13797)))))

(declare-fun lt!447988 () BalanceConc!9028)

(declare-fun apply!3311 (BalanceConc!9028 Int) C!7700)

(assert (=> b!1353363 (= lt!447989 (apply!3311 lt!447988 0))))

(declare-fun lt!447992 () BalanceConc!9028)

(declare-fun list!5278 (BalanceConc!9028) List!13863)

(assert (=> b!1353363 (= lt!447994 (list!5278 lt!447992))))

(declare-fun charsOf!1363 (Token!4444) BalanceConc!9028)

(assert (=> b!1353363 (= lt!447992 (charsOf!1363 t1!34))))

(declare-fun tp!390967 () Bool)

(declare-fun e!866198 () Bool)

(declare-fun b!1353364 () Bool)

(declare-fun e!866200 () Bool)

(assert (=> b!1353364 (= e!866200 (and (inv!21 (value!77776 t1!34)) e!866198 tp!390967))))

(declare-fun b!1353365 () Bool)

(declare-fun e!866208 () Bool)

(declare-fun e!866219 () Bool)

(assert (=> b!1353365 (= e!866208 e!866219)))

(declare-fun res!609665 () Bool)

(assert (=> b!1353365 (=> res!609665 e!866219)))

(declare-fun lambda!57089 () Int)

(declare-fun lt!447982 () Regex!3705)

(declare-datatypes ((List!13865 0))(
  ( (Nil!13799) (Cons!13799 (h!19200 Regex!3705) (t!120230 List!13865)) )
))
(declare-fun contains!2548 (List!13865 Regex!3705) Bool)

(declare-fun map!3047 (List!13864 Int) List!13865)

(assert (=> b!1353365 (= res!609665 (not (contains!2548 (map!3047 rules!2550 lambda!57089) lt!447982)))))

(declare-fun lambda!57090 () Int)

(declare-fun getWitness!328 (List!13865 Int) Regex!3705)

(assert (=> b!1353365 (= lt!447982 (getWitness!328 (map!3047 rules!2550 lambda!57089) lambda!57090))))

(assert (=> b!1353366 (= e!866202 e!866208)))

(declare-fun res!609658 () Bool)

(assert (=> b!1353366 (=> res!609658 e!866208)))

(declare-fun exists!440 (List!13865 Int) Bool)

(assert (=> b!1353366 (= res!609658 (not (exists!440 (map!3047 rules!2550 lambda!57089) lambda!57090)))))

(declare-fun lt!447983 () List!13865)

(assert (=> b!1353366 (exists!440 lt!447983 lambda!57090)))

(declare-fun lt!447998 () Unit!19941)

(declare-fun matchRGenUnionSpec!122 (Regex!3705 List!13865 List!13863) Unit!19941)

(assert (=> b!1353366 (= lt!447998 (matchRGenUnionSpec!122 lt!447993 lt!447983 lt!447984))))

(assert (=> b!1353366 (= lt!447983 (map!3047 rules!2550 lambda!57089))))

(declare-fun b!1353367 () Bool)

(declare-fun tp!390971 () Bool)

(assert (=> b!1353367 (= e!866198 (and tp!390971 (inv!18136 (tag!2653 (rule!4138 t1!34))) (inv!18139 (transformation!2391 (rule!4138 t1!34))) e!866199))))

(declare-fun res!609660 () Bool)

(assert (=> start!121414 (=> (not res!609660) (not e!866209))))

(get-info :version)

(assert (=> start!121414 (= res!609660 ((_ is Lexer!2084) thiss!19762))))

(assert (=> start!121414 e!866209))

(assert (=> start!121414 true))

(declare-fun e!866216 () Bool)

(assert (=> start!121414 e!866216))

(declare-fun inv!18140 (Token!4444) Bool)

(assert (=> start!121414 (and (inv!18140 t1!34) e!866200)))

(assert (=> start!121414 (and (inv!18140 t2!34) e!866203)))

(declare-fun b!1353352 () Bool)

(declare-fun res!609646 () Bool)

(assert (=> b!1353352 (=> res!609646 e!866202)))

(declare-fun matchR!1698 (Regex!3705 List!13863) Bool)

(assert (=> b!1353352 (= res!609646 (not (matchR!1698 lt!447993 lt!447984)))))

(declare-fun e!866201 () Bool)

(declare-fun tp!390969 () Bool)

(declare-fun b!1353368 () Bool)

(declare-fun e!866214 () Bool)

(assert (=> b!1353368 (= e!866214 (and tp!390969 (inv!18136 (tag!2653 (h!19199 rules!2550))) (inv!18139 (transformation!2391 (h!19199 rules!2550))) e!866201))))

(declare-fun b!1353369 () Bool)

(declare-fun res!609656 () Bool)

(assert (=> b!1353369 (=> res!609656 e!866202)))

(assert (=> b!1353369 (= res!609656 (not (contains!2547 lt!447991 lt!447989)))))

(declare-fun b!1353370 () Bool)

(declare-fun e!866207 () Bool)

(assert (=> b!1353370 (= e!866207 e!866205)))

(declare-fun res!609652 () Bool)

(assert (=> b!1353370 (=> res!609652 e!866205)))

(declare-datatypes ((List!13866 0))(
  ( (Nil!13800) (Cons!13800 (h!19201 Token!4444) (t!120231 List!13866)) )
))
(declare-datatypes ((IArray!9095 0))(
  ( (IArray!9096 (innerList!4605 List!13866)) )
))
(declare-datatypes ((Conc!4545 0))(
  ( (Node!4545 (left!11822 Conc!4545) (right!12152 Conc!4545) (csize!9320 Int) (cheight!4756 Int)) (Leaf!6937 (xs!7268 IArray!9095) (csize!9321 Int)) (Empty!4545) )
))
(declare-datatypes ((BalanceConc!9030 0))(
  ( (BalanceConc!9031 (c!221994 Conc!4545)) )
))
(declare-datatypes ((tuple2!13372 0))(
  ( (tuple2!13373 (_1!7572 BalanceConc!9030) (_2!7572 BalanceConc!9028)) )
))
(declare-fun lt!447996 () tuple2!13372)

(declare-fun lt!447985 () List!13866)

(declare-fun list!5279 (BalanceConc!9030) List!13866)

(assert (=> b!1353370 (= res!609652 (not (= (list!5279 (_1!7572 lt!447996)) lt!447985)))))

(assert (=> b!1353370 (= lt!447985 (Cons!13800 t1!34 Nil!13800))))

(declare-fun lt!447986 () BalanceConc!9028)

(declare-fun lex!913 (LexerInterface!2086 List!13864 BalanceConc!9028) tuple2!13372)

(assert (=> b!1353370 (= lt!447996 (lex!913 thiss!19762 rules!2550 lt!447986))))

(declare-fun print!852 (LexerInterface!2086 BalanceConc!9030) BalanceConc!9028)

(declare-fun singletonSeq!1008 (Token!4444) BalanceConc!9030)

(assert (=> b!1353370 (= lt!447986 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))

(declare-fun lt!447997 () Rule!4582)

(declare-fun lambda!57091 () Int)

(declare-fun getWitness!329 (List!13864 Int) Rule!4582)

(assert (=> b!1353370 (= lt!447997 (getWitness!329 rules!2550 lambda!57091))))

(declare-fun b!1353371 () Bool)

(declare-fun res!609667 () Bool)

(assert (=> b!1353371 (=> (not res!609667) (not e!866209))))

(declare-fun isEmpty!8254 (List!13864) Bool)

(assert (=> b!1353371 (= res!609667 (not (isEmpty!8254 rules!2550)))))

(declare-fun b!1353372 () Bool)

(declare-fun tp!390964 () Bool)

(assert (=> b!1353372 (= e!866216 (and e!866214 tp!390964))))

(declare-fun b!1353373 () Bool)

(declare-fun contains!2549 (List!13864 Rule!4582) Bool)

(assert (=> b!1353373 (= e!866205 (contains!2549 rules!2550 (rule!4138 t1!34)))))

(assert (=> b!1353374 (= e!866201 (and tp!390963 tp!390974))))

(declare-fun b!1353375 () Bool)

(declare-fun res!609650 () Bool)

(assert (=> b!1353375 (=> (not res!609650) (not e!866209))))

(declare-fun rulesProduceIndividualToken!1055 (LexerInterface!2086 List!13864 Token!4444) Bool)

(assert (=> b!1353375 (= res!609650 (rulesProduceIndividualToken!1055 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1353376 () Bool)

(declare-fun res!609655 () Bool)

(assert (=> b!1353376 (=> res!609655 e!866202)))

(declare-fun lt!447995 () C!7700)

(assert (=> b!1353376 (= res!609655 (not (contains!2547 lt!447984 lt!447995)))))

(declare-fun b!1353377 () Bool)

(declare-fun res!609657 () Bool)

(assert (=> b!1353377 (=> res!609657 e!866205)))

(declare-datatypes ((tuple2!13374 0))(
  ( (tuple2!13375 (_1!7573 List!13866) (_2!7573 List!13863)) )
))
(declare-fun lexList!604 (LexerInterface!2086 List!13864 List!13863) tuple2!13374)

(assert (=> b!1353377 (= res!609657 (not (= (lexList!604 thiss!19762 rules!2550 (list!5278 lt!447986)) (tuple2!13375 lt!447985 Nil!13797))))))

(declare-fun b!1353378 () Bool)

(assert (=> b!1353378 (= e!866213 e!866202)))

(declare-fun res!609663 () Bool)

(assert (=> b!1353378 (=> res!609663 e!866202)))

(assert (=> b!1353378 (= res!609663 (not (contains!2547 lt!447991 lt!447995)))))

(assert (=> b!1353378 (= lt!447995 (apply!3311 lt!447992 0))))

(declare-fun b!1353379 () Bool)

(declare-fun res!609653 () Bool)

(assert (=> b!1353379 (=> (not res!609653) (not e!866209))))

(assert (=> b!1353379 (= res!609653 (rulesProduceIndividualToken!1055 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1353380 () Bool)

(declare-fun res!609664 () Bool)

(assert (=> b!1353380 (=> res!609664 e!866205)))

(declare-fun isEmpty!8255 (BalanceConc!9028) Bool)

(assert (=> b!1353380 (= res!609664 (not (isEmpty!8255 (_2!7572 lt!447996))))))

(assert (=> b!1353381 (= e!866219 e!866207)))

(declare-fun res!609645 () Bool)

(assert (=> b!1353381 (=> res!609645 e!866207)))

(declare-fun exists!441 (List!13864 Int) Bool)

(assert (=> b!1353381 (= res!609645 (not (exists!441 rules!2550 lambda!57091)))))

(assert (=> b!1353381 (exists!441 rules!2550 lambda!57091)))

(declare-fun lt!447990 () Unit!19941)

(declare-fun lemmaMapContains!110 (List!13864 Int Regex!3705) Unit!19941)

(assert (=> b!1353381 (= lt!447990 (lemmaMapContains!110 rules!2550 lambda!57089 lt!447982))))

(declare-fun b!1353382 () Bool)

(assert (=> b!1353382 (= e!866209 e!866218)))

(declare-fun res!609647 () Bool)

(assert (=> b!1353382 (=> (not res!609647) (not e!866218))))

(declare-fun size!11270 (BalanceConc!9028) Int)

(assert (=> b!1353382 (= res!609647 (> (size!11270 lt!447988) 0))))

(assert (=> b!1353382 (= lt!447988 (charsOf!1363 t2!34))))

(declare-fun b!1353383 () Bool)

(declare-fun res!609659 () Bool)

(assert (=> b!1353383 (=> (not res!609659) (not e!866218))))

(declare-fun separableTokensPredicate!369 (LexerInterface!2086 Token!4444 Token!4444 List!13864) Bool)

(assert (=> b!1353383 (= res!609659 (not (separableTokensPredicate!369 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (= (and start!121414 res!609660) b!1353371))

(assert (= (and b!1353371 res!609667) b!1353355))

(assert (= (and b!1353355 res!609661) b!1353375))

(assert (= (and b!1353375 res!609650) b!1353379))

(assert (= (and b!1353379 res!609653) b!1353354))

(assert (= (and b!1353354 res!609648) b!1353382))

(assert (= (and b!1353382 res!609647) b!1353361))

(assert (= (and b!1353361 res!609662) b!1353383))

(assert (= (and b!1353383 res!609659) b!1353363))

(assert (= (and b!1353363 res!609651) b!1353359))

(assert (= (and b!1353359 (not res!609649)) b!1353356))

(assert (= (and b!1353356 (not res!609654)) b!1353378))

(assert (= (and b!1353378 (not res!609663)) b!1353376))

(assert (= (and b!1353376 (not res!609655)) b!1353369))

(assert (= (and b!1353369 (not res!609656)) b!1353362))

(assert (= (and b!1353362 (not res!609668)) b!1353352))

(assert (= (and b!1353352 (not res!609646)) b!1353366))

(assert (= (and b!1353366 (not res!609658)) b!1353365))

(assert (= (and b!1353365 (not res!609665)) b!1353381))

(assert (= (and b!1353381 (not res!609645)) b!1353370))

(assert (= (and b!1353370 (not res!609652)) b!1353380))

(assert (= (and b!1353380 (not res!609664)) b!1353377))

(assert (= (and b!1353377 (not res!609657)) b!1353358))

(assert (= (and b!1353358 (not res!609666)) b!1353373))

(assert (= b!1353368 b!1353374))

(assert (= b!1353372 b!1353368))

(assert (= (and start!121414 ((_ is Cons!13798) rules!2550)) b!1353372))

(assert (= b!1353367 b!1353353))

(assert (= b!1353364 b!1353367))

(assert (= start!121414 b!1353364))

(assert (= b!1353357 b!1353360))

(assert (= b!1353351 b!1353357))

(assert (= start!121414 b!1353351))

(declare-fun m!1515129 () Bool)

(assert (=> b!1353369 m!1515129))

(declare-fun m!1515131 () Bool)

(assert (=> b!1353356 m!1515131))

(assert (=> b!1353356 m!1515131))

(declare-fun m!1515133 () Bool)

(assert (=> b!1353356 m!1515133))

(declare-fun m!1515135 () Bool)

(assert (=> b!1353356 m!1515135))

(declare-fun m!1515137 () Bool)

(assert (=> b!1353363 m!1515137))

(declare-fun m!1515139 () Bool)

(assert (=> b!1353363 m!1515139))

(declare-fun m!1515141 () Bool)

(assert (=> b!1353363 m!1515141))

(declare-fun m!1515143 () Bool)

(assert (=> b!1353363 m!1515143))

(declare-fun m!1515145 () Bool)

(assert (=> b!1353363 m!1515145))

(declare-fun m!1515147 () Bool)

(assert (=> b!1353363 m!1515147))

(declare-fun m!1515149 () Bool)

(assert (=> b!1353351 m!1515149))

(declare-fun m!1515151 () Bool)

(assert (=> start!121414 m!1515151))

(declare-fun m!1515153 () Bool)

(assert (=> start!121414 m!1515153))

(declare-fun m!1515155 () Bool)

(assert (=> b!1353371 m!1515155))

(declare-fun m!1515157 () Bool)

(assert (=> b!1353362 m!1515157))

(declare-fun m!1515159 () Bool)

(assert (=> b!1353357 m!1515159))

(declare-fun m!1515161 () Bool)

(assert (=> b!1353357 m!1515161))

(declare-fun m!1515163 () Bool)

(assert (=> b!1353370 m!1515163))

(declare-fun m!1515165 () Bool)

(assert (=> b!1353370 m!1515165))

(declare-fun m!1515167 () Bool)

(assert (=> b!1353370 m!1515167))

(assert (=> b!1353370 m!1515165))

(declare-fun m!1515169 () Bool)

(assert (=> b!1353370 m!1515169))

(declare-fun m!1515171 () Bool)

(assert (=> b!1353370 m!1515171))

(declare-fun m!1515173 () Bool)

(assert (=> b!1353376 m!1515173))

(declare-fun m!1515175 () Bool)

(assert (=> b!1353361 m!1515175))

(declare-fun m!1515177 () Bool)

(assert (=> b!1353377 m!1515177))

(assert (=> b!1353377 m!1515177))

(declare-fun m!1515179 () Bool)

(assert (=> b!1353377 m!1515179))

(declare-fun m!1515181 () Bool)

(assert (=> b!1353364 m!1515181))

(declare-fun m!1515183 () Bool)

(assert (=> b!1353359 m!1515183))

(assert (=> b!1353359 m!1515183))

(declare-fun m!1515185 () Bool)

(assert (=> b!1353359 m!1515185))

(declare-fun m!1515187 () Bool)

(assert (=> b!1353383 m!1515187))

(declare-fun m!1515189 () Bool)

(assert (=> b!1353367 m!1515189))

(declare-fun m!1515191 () Bool)

(assert (=> b!1353367 m!1515191))

(declare-fun m!1515193 () Bool)

(assert (=> b!1353355 m!1515193))

(declare-fun m!1515195 () Bool)

(assert (=> b!1353373 m!1515195))

(declare-fun m!1515197 () Bool)

(assert (=> b!1353381 m!1515197))

(assert (=> b!1353381 m!1515197))

(declare-fun m!1515199 () Bool)

(assert (=> b!1353381 m!1515199))

(declare-fun m!1515201 () Bool)

(assert (=> b!1353379 m!1515201))

(declare-fun m!1515203 () Bool)

(assert (=> b!1353352 m!1515203))

(declare-fun m!1515205 () Bool)

(assert (=> b!1353382 m!1515205))

(declare-fun m!1515207 () Bool)

(assert (=> b!1353382 m!1515207))

(declare-fun m!1515209 () Bool)

(assert (=> b!1353380 m!1515209))

(declare-fun m!1515211 () Bool)

(assert (=> b!1353378 m!1515211))

(declare-fun m!1515213 () Bool)

(assert (=> b!1353378 m!1515213))

(declare-fun m!1515215 () Bool)

(assert (=> b!1353366 m!1515215))

(declare-fun m!1515217 () Bool)

(assert (=> b!1353366 m!1515217))

(assert (=> b!1353366 m!1515215))

(declare-fun m!1515219 () Bool)

(assert (=> b!1353366 m!1515219))

(assert (=> b!1353366 m!1515215))

(declare-fun m!1515221 () Bool)

(assert (=> b!1353366 m!1515221))

(declare-fun m!1515223 () Bool)

(assert (=> b!1353358 m!1515223))

(assert (=> b!1353365 m!1515215))

(assert (=> b!1353365 m!1515215))

(declare-fun m!1515225 () Bool)

(assert (=> b!1353365 m!1515225))

(assert (=> b!1353365 m!1515215))

(assert (=> b!1353365 m!1515215))

(declare-fun m!1515227 () Bool)

(assert (=> b!1353365 m!1515227))

(declare-fun m!1515229 () Bool)

(assert (=> b!1353368 m!1515229))

(declare-fun m!1515231 () Bool)

(assert (=> b!1353368 m!1515231))

(declare-fun m!1515233 () Bool)

(assert (=> b!1353375 m!1515233))

(check-sat (not b!1353377) (not b!1353383) (not b!1353369) b_and!90613 (not b!1353359) (not b!1353361) (not b!1353355) (not b!1353366) (not b!1353351) (not b!1353378) (not b!1353375) (not b_next!33661) (not b_next!33659) b_and!90603 (not b!1353381) b_and!90605 (not b!1353382) (not b!1353364) (not b!1353363) b_and!90611 (not b_next!33669) (not b!1353362) b_and!90607 (not b!1353368) (not start!121414) (not b!1353352) (not b!1353380) (not b!1353370) (not b!1353356) (not b!1353373) (not b_next!33663) (not b_next!33667) (not b!1353372) (not b!1353357) (not b!1353379) (not b!1353371) (not b!1353365) (not b!1353367) (not b_next!33665) b_and!90609 (not b!1353376) (not b!1353358))
(check-sat b_and!90613 b_and!90607 (not b_next!33661) (not b_next!33659) b_and!90603 b_and!90605 b_and!90611 (not b_next!33669) (not b_next!33663) (not b_next!33667) (not b_next!33665) b_and!90609)
(get-model)

(declare-fun d!383176 () Bool)

(declare-fun lt!448028 () Int)

(declare-fun size!11276 (List!13863) Int)

(assert (=> d!383176 (= lt!448028 (size!11276 (list!5278 lt!447988)))))

(declare-fun size!11277 (Conc!4544) Int)

(assert (=> d!383176 (= lt!448028 (size!11277 (c!221992 lt!447988)))))

(assert (=> d!383176 (= (size!11270 lt!447988) lt!448028)))

(declare-fun bs!333582 () Bool)

(assert (= bs!333582 d!383176))

(declare-fun m!1515301 () Bool)

(assert (=> bs!333582 m!1515301))

(assert (=> bs!333582 m!1515301))

(declare-fun m!1515303 () Bool)

(assert (=> bs!333582 m!1515303))

(declare-fun m!1515305 () Bool)

(assert (=> bs!333582 m!1515305))

(assert (=> b!1353382 d!383176))

(declare-fun d!383178 () Bool)

(declare-fun lt!448031 () BalanceConc!9028)

(assert (=> d!383178 (= (list!5278 lt!448031) (originalCharacters!3253 t2!34))))

(declare-fun dynLambda!6153 (Int TokenValue!2481) BalanceConc!9028)

(assert (=> d!383178 (= lt!448031 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))

(assert (=> d!383178 (= (charsOf!1363 t2!34) lt!448031)))

(declare-fun b_lambda!40565 () Bool)

(assert (=> (not b_lambda!40565) (not d!383178)))

(declare-fun t!120233 () Bool)

(declare-fun tb!71153 () Bool)

(assert (=> (and b!1353360 (= (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) t!120233) tb!71153))

(declare-fun b!1353442 () Bool)

(declare-fun e!866246 () Bool)

(declare-fun tp!390977 () Bool)

(declare-fun inv!18143 (Conc!4544) Bool)

(assert (=> b!1353442 (= e!866246 (and (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))) tp!390977))))

(declare-fun result!86478 () Bool)

(declare-fun inv!18144 (BalanceConc!9028) Bool)

(assert (=> tb!71153 (= result!86478 (and (inv!18144 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))) e!866246))))

(assert (= tb!71153 b!1353442))

(declare-fun m!1515315 () Bool)

(assert (=> b!1353442 m!1515315))

(declare-fun m!1515317 () Bool)

(assert (=> tb!71153 m!1515317))

(assert (=> d!383178 t!120233))

(declare-fun b_and!90615 () Bool)

(assert (= b_and!90605 (and (=> t!120233 result!86478) b_and!90615)))

(declare-fun t!120235 () Bool)

(declare-fun tb!71155 () Bool)

(assert (=> (and b!1353353 (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) t!120235) tb!71155))

(declare-fun result!86482 () Bool)

(assert (= result!86482 result!86478))

(assert (=> d!383178 t!120235))

(declare-fun b_and!90617 () Bool)

(assert (= b_and!90609 (and (=> t!120235 result!86482) b_and!90617)))

(declare-fun tb!71157 () Bool)

(declare-fun t!120237 () Bool)

(assert (=> (and b!1353374 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) t!120237) tb!71157))

(declare-fun result!86484 () Bool)

(assert (= result!86484 result!86478))

(assert (=> d!383178 t!120237))

(declare-fun b_and!90619 () Bool)

(assert (= b_and!90613 (and (=> t!120237 result!86484) b_and!90619)))

(declare-fun m!1515319 () Bool)

(assert (=> d!383178 m!1515319))

(declare-fun m!1515323 () Bool)

(assert (=> d!383178 m!1515323))

(assert (=> b!1353382 d!383178))

(declare-fun d!383184 () Bool)

(declare-fun res!609717 () Bool)

(declare-fun e!866255 () Bool)

(assert (=> d!383184 (=> res!609717 e!866255)))

(assert (=> d!383184 (= res!609717 (not ((_ is Cons!13798) rules!2550)))))

(assert (=> d!383184 (= (sepAndNonSepRulesDisjointChars!764 rules!2550 rules!2550) e!866255)))

(declare-fun b!1353451 () Bool)

(declare-fun e!866256 () Bool)

(assert (=> b!1353451 (= e!866255 e!866256)))

(declare-fun res!609718 () Bool)

(assert (=> b!1353451 (=> (not res!609718) (not e!866256))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!356 (Rule!4582 List!13864) Bool)

(assert (=> b!1353451 (= res!609718 (ruleDisjointCharsFromAllFromOtherType!356 (h!19199 rules!2550) rules!2550))))

(declare-fun b!1353452 () Bool)

(assert (=> b!1353452 (= e!866256 (sepAndNonSepRulesDisjointChars!764 rules!2550 (t!120229 rules!2550)))))

(assert (= (and d!383184 (not res!609717)) b!1353451))

(assert (= (and b!1353451 res!609718) b!1353452))

(declare-fun m!1515343 () Bool)

(assert (=> b!1353451 m!1515343))

(declare-fun m!1515345 () Bool)

(assert (=> b!1353452 m!1515345))

(assert (=> b!1353361 d!383184))

(declare-fun d!383192 () Bool)

(declare-fun choose!8323 (Int) Bool)

(assert (=> d!383192 (= (Exists!857 lambda!57088) (choose!8323 lambda!57088))))

(declare-fun bs!333588 () Bool)

(assert (= bs!333588 d!383192))

(declare-fun m!1515347 () Bool)

(assert (=> bs!333588 m!1515347))

(assert (=> b!1353359 d!383192))

(declare-fun bs!333595 () Bool)

(declare-fun d!383194 () Bool)

(assert (= bs!333595 (and d!383194 b!1353359)))

(declare-fun lambda!57113 () Int)

(assert (=> bs!333595 (= lambda!57113 lambda!57088)))

(assert (=> d!383194 true))

(assert (=> d!383194 true))

(assert (=> d!383194 (Exists!857 lambda!57113)))

(declare-fun lt!448050 () Unit!19941)

(declare-fun choose!8324 (Regex!3705 List!13863) Unit!19941)

(assert (=> d!383194 (= lt!448050 (choose!8324 lt!447993 lt!447991))))

(declare-fun validRegex!1605 (Regex!3705) Bool)

(assert (=> d!383194 (validRegex!1605 lt!447993)))

(assert (=> d!383194 (= (lemmaPrefixMatchThenExistsStringThatMatches!175 lt!447993 lt!447991) lt!448050)))

(declare-fun bs!333596 () Bool)

(assert (= bs!333596 d!383194))

(declare-fun m!1515369 () Bool)

(assert (=> bs!333596 m!1515369))

(declare-fun m!1515371 () Bool)

(assert (=> bs!333596 m!1515371))

(declare-fun m!1515373 () Bool)

(assert (=> bs!333596 m!1515373))

(assert (=> b!1353359 d!383194))

(declare-fun bs!333597 () Bool)

(declare-fun d!383204 () Bool)

(assert (= bs!333597 (and d!383204 b!1353381)))

(declare-fun lambda!57116 () Int)

(assert (=> bs!333597 (not (= lambda!57116 lambda!57091))))

(assert (=> d!383204 true))

(declare-fun order!8317 () Int)

(declare-fun dynLambda!6154 (Int Int) Int)

(assert (=> d!383204 (< (dynLambda!6154 order!8317 lambda!57091) (dynLambda!6154 order!8317 lambda!57116))))

(declare-fun forall!3367 (List!13864 Int) Bool)

(assert (=> d!383204 (= (exists!441 rules!2550 lambda!57091) (not (forall!3367 rules!2550 lambda!57116)))))

(declare-fun bs!333598 () Bool)

(assert (= bs!333598 d!383204))

(declare-fun m!1515375 () Bool)

(assert (=> bs!333598 m!1515375))

(assert (=> b!1353381 d!383204))

(declare-fun bs!333599 () Bool)

(declare-fun d!383206 () Bool)

(assert (= bs!333599 (and d!383206 b!1353381)))

(declare-fun lambda!57119 () Int)

(assert (=> bs!333599 (not (= lambda!57119 lambda!57091))))

(declare-fun bs!333600 () Bool)

(assert (= bs!333600 (and d!383206 d!383204)))

(assert (=> bs!333600 (not (= lambda!57119 lambda!57116))))

(assert (=> d!383206 true))

(assert (=> d!383206 true))

(declare-fun order!8319 () Int)

(declare-fun dynLambda!6155 (Int Int) Int)

(assert (=> d!383206 (< (dynLambda!6155 order!8319 lambda!57089) (dynLambda!6154 order!8317 lambda!57119))))

(assert (=> d!383206 (exists!441 rules!2550 lambda!57119)))

(declare-fun lt!448053 () Unit!19941)

(declare-fun choose!8325 (List!13864 Int Regex!3705) Unit!19941)

(assert (=> d!383206 (= lt!448053 (choose!8325 rules!2550 lambda!57089 lt!447982))))

(assert (=> d!383206 (contains!2548 (map!3047 rules!2550 lambda!57089) lt!447982)))

(assert (=> d!383206 (= (lemmaMapContains!110 rules!2550 lambda!57089 lt!447982) lt!448053)))

(declare-fun bs!333601 () Bool)

(assert (= bs!333601 d!383206))

(declare-fun m!1515377 () Bool)

(assert (=> bs!333601 m!1515377))

(declare-fun m!1515379 () Bool)

(assert (=> bs!333601 m!1515379))

(assert (=> bs!333601 m!1515215))

(assert (=> bs!333601 m!1515215))

(assert (=> bs!333601 m!1515225))

(assert (=> b!1353381 d!383206))

(declare-fun d!383208 () Bool)

(declare-fun lt!448094 () Bool)

(declare-fun e!866357 () Bool)

(assert (=> d!383208 (= lt!448094 e!866357)))

(declare-fun res!609812 () Bool)

(assert (=> d!383208 (=> (not res!609812) (not e!866357))))

(assert (=> d!383208 (= res!609812 (= (list!5279 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))))) (list!5279 (singletonSeq!1008 t2!34))))))

(declare-fun e!866356 () Bool)

(assert (=> d!383208 (= lt!448094 e!866356)))

(declare-fun res!609810 () Bool)

(assert (=> d!383208 (=> (not res!609810) (not e!866356))))

(declare-fun lt!448093 () tuple2!13372)

(declare-fun size!11278 (BalanceConc!9030) Int)

(assert (=> d!383208 (= res!609810 (= (size!11278 (_1!7572 lt!448093)) 1))))

(assert (=> d!383208 (= lt!448093 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))))))

(assert (=> d!383208 (not (isEmpty!8254 rules!2550))))

(assert (=> d!383208 (= (rulesProduceIndividualToken!1055 thiss!19762 rules!2550 t2!34) lt!448094)))

(declare-fun b!1353620 () Bool)

(declare-fun res!609811 () Bool)

(assert (=> b!1353620 (=> (not res!609811) (not e!866356))))

(declare-fun apply!3316 (BalanceConc!9030 Int) Token!4444)

(assert (=> b!1353620 (= res!609811 (= (apply!3316 (_1!7572 lt!448093) 0) t2!34))))

(declare-fun b!1353621 () Bool)

(assert (=> b!1353621 (= e!866356 (isEmpty!8255 (_2!7572 lt!448093)))))

(declare-fun b!1353622 () Bool)

(assert (=> b!1353622 (= e!866357 (isEmpty!8255 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))))))))

(assert (= (and d!383208 res!609810) b!1353620))

(assert (= (and b!1353620 res!609811) b!1353621))

(assert (= (and d!383208 res!609812) b!1353622))

(declare-fun m!1515523 () Bool)

(assert (=> d!383208 m!1515523))

(assert (=> d!383208 m!1515155))

(declare-fun m!1515525 () Bool)

(assert (=> d!383208 m!1515525))

(declare-fun m!1515527 () Bool)

(assert (=> d!383208 m!1515527))

(assert (=> d!383208 m!1515525))

(assert (=> d!383208 m!1515525))

(declare-fun m!1515529 () Bool)

(assert (=> d!383208 m!1515529))

(assert (=> d!383208 m!1515529))

(declare-fun m!1515531 () Bool)

(assert (=> d!383208 m!1515531))

(declare-fun m!1515533 () Bool)

(assert (=> d!383208 m!1515533))

(declare-fun m!1515535 () Bool)

(assert (=> b!1353620 m!1515535))

(declare-fun m!1515537 () Bool)

(assert (=> b!1353621 m!1515537))

(assert (=> b!1353622 m!1515525))

(assert (=> b!1353622 m!1515525))

(assert (=> b!1353622 m!1515529))

(assert (=> b!1353622 m!1515529))

(assert (=> b!1353622 m!1515531))

(declare-fun m!1515539 () Bool)

(assert (=> b!1353622 m!1515539))

(assert (=> b!1353379 d!383208))

(declare-fun d!383254 () Bool)

(declare-fun e!866386 () Bool)

(assert (=> d!383254 e!866386))

(declare-fun res!609845 () Bool)

(assert (=> d!383254 (=> res!609845 e!866386)))

(declare-fun lt!448124 () Option!2644)

(declare-fun isEmpty!8260 (Option!2644) Bool)

(assert (=> d!383254 (= res!609845 (isEmpty!8260 lt!448124))))

(declare-fun e!866388 () Option!2644)

(assert (=> d!383254 (= lt!448124 e!866388)))

(declare-fun c!222042 () Bool)

(assert (=> d!383254 (= c!222042 (and ((_ is Cons!13798) rules!2550) ((_ is Nil!13798) (t!120229 rules!2550))))))

(declare-fun lt!448122 () Unit!19941)

(declare-fun lt!448126 () Unit!19941)

(assert (=> d!383254 (= lt!448122 lt!448126)))

(declare-fun isPrefix!1115 (List!13863 List!13863) Bool)

(assert (=> d!383254 (isPrefix!1115 lt!447994 lt!447994)))

(declare-fun lemmaIsPrefixRefl!777 (List!13863 List!13863) Unit!19941)

(assert (=> d!383254 (= lt!448126 (lemmaIsPrefixRefl!777 lt!447994 lt!447994))))

(declare-fun rulesValidInductive!756 (LexerInterface!2086 List!13864) Bool)

(assert (=> d!383254 (rulesValidInductive!756 thiss!19762 rules!2550)))

(assert (=> d!383254 (= (maxPrefix!1068 thiss!19762 rules!2550 lt!447994) lt!448124)))

(declare-fun b!1353674 () Bool)

(declare-fun e!866387 () Bool)

(assert (=> b!1353674 (= e!866386 e!866387)))

(declare-fun res!609844 () Bool)

(assert (=> b!1353674 (=> (not res!609844) (not e!866387))))

(declare-fun isDefined!2203 (Option!2644) Bool)

(assert (=> b!1353674 (= res!609844 (isDefined!2203 lt!448124))))

(declare-fun b!1353675 () Bool)

(declare-fun call!91144 () Option!2644)

(assert (=> b!1353675 (= e!866388 call!91144)))

(declare-fun b!1353676 () Bool)

(declare-fun res!609842 () Bool)

(assert (=> b!1353676 (=> (not res!609842) (not e!866387))))

(declare-fun get!4324 (Option!2644) tuple2!13370)

(assert (=> b!1353676 (= res!609842 (matchR!1698 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun b!1353677 () Bool)

(declare-fun res!609841 () Bool)

(assert (=> b!1353677 (=> (not res!609841) (not e!866387))))

(assert (=> b!1353677 (= res!609841 (= (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))) (originalCharacters!3253 (_1!7571 (get!4324 lt!448124)))))))

(declare-fun b!1353678 () Bool)

(declare-fun res!609843 () Bool)

(assert (=> b!1353678 (=> (not res!609843) (not e!866387))))

(assert (=> b!1353678 (= res!609843 (= (++!3546 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))) (_2!7571 (get!4324 lt!448124))) lt!447994))))

(declare-fun b!1353679 () Bool)

(declare-fun res!609846 () Bool)

(assert (=> b!1353679 (=> (not res!609846) (not e!866387))))

(declare-fun apply!3317 (TokenValueInjection!4622 BalanceConc!9028) TokenValue!2481)

(declare-fun seqFromList!1621 (List!13863) BalanceConc!9028)

(assert (=> b!1353679 (= res!609846 (= (value!77776 (_1!7571 (get!4324 lt!448124))) (apply!3317 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun b!1353680 () Bool)

(declare-fun res!609840 () Bool)

(assert (=> b!1353680 (=> (not res!609840) (not e!866387))))

(assert (=> b!1353680 (= res!609840 (< (size!11276 (_2!7571 (get!4324 lt!448124))) (size!11276 lt!447994)))))

(declare-fun bm!91139 () Bool)

(declare-fun maxPrefixOneRule!603 (LexerInterface!2086 Rule!4582 List!13863) Option!2644)

(assert (=> bm!91139 (= call!91144 (maxPrefixOneRule!603 thiss!19762 (h!19199 rules!2550) lt!447994))))

(declare-fun b!1353681 () Bool)

(declare-fun lt!448123 () Option!2644)

(declare-fun lt!448125 () Option!2644)

(assert (=> b!1353681 (= e!866388 (ite (and ((_ is None!2643) lt!448123) ((_ is None!2643) lt!448125)) None!2643 (ite ((_ is None!2643) lt!448125) lt!448123 (ite ((_ is None!2643) lt!448123) lt!448125 (ite (>= (size!11269 (_1!7571 (v!21356 lt!448123))) (size!11269 (_1!7571 (v!21356 lt!448125)))) lt!448123 lt!448125)))))))

(assert (=> b!1353681 (= lt!448123 call!91144)))

(assert (=> b!1353681 (= lt!448125 (maxPrefix!1068 thiss!19762 (t!120229 rules!2550) lt!447994))))

(declare-fun b!1353682 () Bool)

(assert (=> b!1353682 (= e!866387 (contains!2549 rules!2550 (rule!4138 (_1!7571 (get!4324 lt!448124)))))))

(assert (= (and d!383254 c!222042) b!1353675))

(assert (= (and d!383254 (not c!222042)) b!1353681))

(assert (= (or b!1353675 b!1353681) bm!91139))

(assert (= (and d!383254 (not res!609845)) b!1353674))

(assert (= (and b!1353674 res!609844) b!1353677))

(assert (= (and b!1353677 res!609841) b!1353680))

(assert (= (and b!1353680 res!609840) b!1353678))

(assert (= (and b!1353678 res!609843) b!1353679))

(assert (= (and b!1353679 res!609846) b!1353676))

(assert (= (and b!1353676 res!609842) b!1353682))

(declare-fun m!1515607 () Bool)

(assert (=> b!1353677 m!1515607))

(declare-fun m!1515609 () Bool)

(assert (=> b!1353677 m!1515609))

(assert (=> b!1353677 m!1515609))

(declare-fun m!1515611 () Bool)

(assert (=> b!1353677 m!1515611))

(declare-fun m!1515613 () Bool)

(assert (=> b!1353674 m!1515613))

(assert (=> b!1353678 m!1515607))

(assert (=> b!1353678 m!1515609))

(assert (=> b!1353678 m!1515609))

(assert (=> b!1353678 m!1515611))

(assert (=> b!1353678 m!1515611))

(declare-fun m!1515615 () Bool)

(assert (=> b!1353678 m!1515615))

(assert (=> b!1353679 m!1515607))

(declare-fun m!1515617 () Bool)

(assert (=> b!1353679 m!1515617))

(assert (=> b!1353679 m!1515617))

(declare-fun m!1515619 () Bool)

(assert (=> b!1353679 m!1515619))

(assert (=> b!1353676 m!1515607))

(assert (=> b!1353676 m!1515609))

(assert (=> b!1353676 m!1515609))

(assert (=> b!1353676 m!1515611))

(assert (=> b!1353676 m!1515611))

(declare-fun m!1515627 () Bool)

(assert (=> b!1353676 m!1515627))

(declare-fun m!1515629 () Bool)

(assert (=> bm!91139 m!1515629))

(assert (=> b!1353680 m!1515607))

(declare-fun m!1515631 () Bool)

(assert (=> b!1353680 m!1515631))

(declare-fun m!1515633 () Bool)

(assert (=> b!1353680 m!1515633))

(declare-fun m!1515635 () Bool)

(assert (=> b!1353681 m!1515635))

(declare-fun m!1515637 () Bool)

(assert (=> d!383254 m!1515637))

(declare-fun m!1515639 () Bool)

(assert (=> d!383254 m!1515639))

(declare-fun m!1515641 () Bool)

(assert (=> d!383254 m!1515641))

(declare-fun m!1515643 () Bool)

(assert (=> d!383254 m!1515643))

(assert (=> b!1353682 m!1515607))

(declare-fun m!1515645 () Bool)

(assert (=> b!1353682 m!1515645))

(assert (=> b!1353358 d!383254))

(declare-fun d!383282 () Bool)

(declare-fun res!609854 () Bool)

(declare-fun e!866394 () Bool)

(assert (=> d!383282 (=> (not res!609854) (not e!866394))))

(declare-fun isEmpty!8261 (List!13863) Bool)

(assert (=> d!383282 (= res!609854 (not (isEmpty!8261 (originalCharacters!3253 t1!34))))))

(assert (=> d!383282 (= (inv!18140 t1!34) e!866394)))

(declare-fun b!1353690 () Bool)

(declare-fun res!609855 () Bool)

(assert (=> b!1353690 (=> (not res!609855) (not e!866394))))

(assert (=> b!1353690 (= res!609855 (= (originalCharacters!3253 t1!34) (list!5278 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(declare-fun b!1353691 () Bool)

(assert (=> b!1353691 (= e!866394 (= (size!11269 t1!34) (size!11276 (originalCharacters!3253 t1!34))))))

(assert (= (and d!383282 res!609854) b!1353690))

(assert (= (and b!1353690 res!609855) b!1353691))

(declare-fun b_lambda!40581 () Bool)

(assert (=> (not b_lambda!40581) (not b!1353690)))

(declare-fun t!120254 () Bool)

(declare-fun tb!71171 () Bool)

(assert (=> (and b!1353360 (= (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) t!120254) tb!71171))

(declare-fun b!1353698 () Bool)

(declare-fun e!866399 () Bool)

(declare-fun tp!390982 () Bool)

(assert (=> b!1353698 (= e!866399 (and (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))) tp!390982))))

(declare-fun result!86500 () Bool)

(assert (=> tb!71171 (= result!86500 (and (inv!18144 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))) e!866399))))

(assert (= tb!71171 b!1353698))

(declare-fun m!1515647 () Bool)

(assert (=> b!1353698 m!1515647))

(declare-fun m!1515649 () Bool)

(assert (=> tb!71171 m!1515649))

(assert (=> b!1353690 t!120254))

(declare-fun b_and!90645 () Bool)

(assert (= b_and!90615 (and (=> t!120254 result!86500) b_and!90645)))

(declare-fun t!120256 () Bool)

(declare-fun tb!71173 () Bool)

(assert (=> (and b!1353353 (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) t!120256) tb!71173))

(declare-fun result!86502 () Bool)

(assert (= result!86502 result!86500))

(assert (=> b!1353690 t!120256))

(declare-fun b_and!90647 () Bool)

(assert (= b_and!90617 (and (=> t!120256 result!86502) b_and!90647)))

(declare-fun tb!71175 () Bool)

(declare-fun t!120258 () Bool)

(assert (=> (and b!1353374 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) t!120258) tb!71175))

(declare-fun result!86504 () Bool)

(assert (= result!86504 result!86500))

(assert (=> b!1353690 t!120258))

(declare-fun b_and!90649 () Bool)

(assert (= b_and!90619 (and (=> t!120258 result!86504) b_and!90649)))

(declare-fun m!1515651 () Bool)

(assert (=> d!383282 m!1515651))

(declare-fun m!1515653 () Bool)

(assert (=> b!1353690 m!1515653))

(assert (=> b!1353690 m!1515653))

(declare-fun m!1515655 () Bool)

(assert (=> b!1353690 m!1515655))

(declare-fun m!1515657 () Bool)

(assert (=> b!1353691 m!1515657))

(assert (=> start!121414 d!383282))

(declare-fun d!383284 () Bool)

(declare-fun res!609860 () Bool)

(declare-fun e!866404 () Bool)

(assert (=> d!383284 (=> (not res!609860) (not e!866404))))

(assert (=> d!383284 (= res!609860 (not (isEmpty!8261 (originalCharacters!3253 t2!34))))))

(assert (=> d!383284 (= (inv!18140 t2!34) e!866404)))

(declare-fun b!1353705 () Bool)

(declare-fun res!609861 () Bool)

(assert (=> b!1353705 (=> (not res!609861) (not e!866404))))

(assert (=> b!1353705 (= res!609861 (= (originalCharacters!3253 t2!34) (list!5278 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(declare-fun b!1353706 () Bool)

(assert (=> b!1353706 (= e!866404 (= (size!11269 t2!34) (size!11276 (originalCharacters!3253 t2!34))))))

(assert (= (and d!383284 res!609860) b!1353705))

(assert (= (and b!1353705 res!609861) b!1353706))

(declare-fun b_lambda!40583 () Bool)

(assert (=> (not b_lambda!40583) (not b!1353705)))

(assert (=> b!1353705 t!120233))

(declare-fun b_and!90651 () Bool)

(assert (= b_and!90645 (and (=> t!120233 result!86478) b_and!90651)))

(assert (=> b!1353705 t!120235))

(declare-fun b_and!90653 () Bool)

(assert (= b_and!90647 (and (=> t!120235 result!86482) b_and!90653)))

(assert (=> b!1353705 t!120237))

(declare-fun b_and!90655 () Bool)

(assert (= b_and!90649 (and (=> t!120237 result!86484) b_and!90655)))

(declare-fun m!1515659 () Bool)

(assert (=> d!383284 m!1515659))

(assert (=> b!1353705 m!1515323))

(assert (=> b!1353705 m!1515323))

(declare-fun m!1515661 () Bool)

(assert (=> b!1353705 m!1515661))

(declare-fun m!1515663 () Bool)

(assert (=> b!1353706 m!1515663))

(assert (=> start!121414 d!383284))

(declare-fun d!383286 () Bool)

(declare-fun lt!448138 () Bool)

(assert (=> d!383286 (= lt!448138 (isEmpty!8261 (list!5278 (_2!7572 lt!447996))))))

(declare-fun isEmpty!8262 (Conc!4544) Bool)

(assert (=> d!383286 (= lt!448138 (isEmpty!8262 (c!221992 (_2!7572 lt!447996))))))

(assert (=> d!383286 (= (isEmpty!8255 (_2!7572 lt!447996)) lt!448138)))

(declare-fun bs!333609 () Bool)

(assert (= bs!333609 d!383286))

(declare-fun m!1515673 () Bool)

(assert (=> bs!333609 m!1515673))

(assert (=> bs!333609 m!1515673))

(declare-fun m!1515677 () Bool)

(assert (=> bs!333609 m!1515677))

(declare-fun m!1515679 () Bool)

(assert (=> bs!333609 m!1515679))

(assert (=> b!1353380 d!383286))

(declare-fun d!383290 () Bool)

(declare-fun lt!448141 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1983 (List!13863) (InoxSet C!7700))

(assert (=> d!383290 (= lt!448141 (select (content!1983 lt!447991) lt!447995))))

(declare-fun e!866413 () Bool)

(assert (=> d!383290 (= lt!448141 e!866413)))

(declare-fun res!609869 () Bool)

(assert (=> d!383290 (=> (not res!609869) (not e!866413))))

(assert (=> d!383290 (= res!609869 ((_ is Cons!13797) lt!447991))))

(assert (=> d!383290 (= (contains!2547 lt!447991 lt!447995) lt!448141)))

(declare-fun b!1353717 () Bool)

(declare-fun e!866414 () Bool)

(assert (=> b!1353717 (= e!866413 e!866414)))

(declare-fun res!609868 () Bool)

(assert (=> b!1353717 (=> res!609868 e!866414)))

(assert (=> b!1353717 (= res!609868 (= (h!19198 lt!447991) lt!447995))))

(declare-fun b!1353718 () Bool)

(assert (=> b!1353718 (= e!866414 (contains!2547 (t!120228 lt!447991) lt!447995))))

(assert (= (and d!383290 res!609869) b!1353717))

(assert (= (and b!1353717 (not res!609868)) b!1353718))

(declare-fun m!1515681 () Bool)

(assert (=> d!383290 m!1515681))

(declare-fun m!1515683 () Bool)

(assert (=> d!383290 m!1515683))

(declare-fun m!1515685 () Bool)

(assert (=> b!1353718 m!1515685))

(assert (=> b!1353378 d!383290))

(declare-fun d!383292 () Bool)

(declare-fun lt!448144 () C!7700)

(declare-fun apply!3318 (List!13863 Int) C!7700)

(assert (=> d!383292 (= lt!448144 (apply!3318 (list!5278 lt!447992) 0))))

(declare-fun apply!3319 (Conc!4544 Int) C!7700)

(assert (=> d!383292 (= lt!448144 (apply!3319 (c!221992 lt!447992) 0))))

(declare-fun e!866417 () Bool)

(assert (=> d!383292 e!866417))

(declare-fun res!609872 () Bool)

(assert (=> d!383292 (=> (not res!609872) (not e!866417))))

(assert (=> d!383292 (= res!609872 (<= 0 0))))

(assert (=> d!383292 (= (apply!3311 lt!447992 0) lt!448144)))

(declare-fun b!1353721 () Bool)

(assert (=> b!1353721 (= e!866417 (< 0 (size!11270 lt!447992)))))

(assert (= (and d!383292 res!609872) b!1353721))

(assert (=> d!383292 m!1515143))

(assert (=> d!383292 m!1515143))

(declare-fun m!1515687 () Bool)

(assert (=> d!383292 m!1515687))

(declare-fun m!1515689 () Bool)

(assert (=> d!383292 m!1515689))

(declare-fun m!1515691 () Bool)

(assert (=> b!1353721 m!1515691))

(assert (=> b!1353378 d!383292))

(declare-fun d!383294 () Bool)

(assert (=> d!383294 (= (inv!18136 (tag!2653 (rule!4138 t2!34))) (= (mod (str.len (value!77775 (tag!2653 (rule!4138 t2!34)))) 2) 0))))

(assert (=> b!1353357 d!383294))

(declare-fun d!383296 () Bool)

(declare-fun res!609875 () Bool)

(declare-fun e!866420 () Bool)

(assert (=> d!383296 (=> (not res!609875) (not e!866420))))

(declare-fun semiInverseModEq!914 (Int Int) Bool)

(assert (=> d!383296 (= res!609875 (semiInverseModEq!914 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34)))))))

(assert (=> d!383296 (= (inv!18139 (transformation!2391 (rule!4138 t2!34))) e!866420)))

(declare-fun b!1353724 () Bool)

(declare-fun equivClasses!873 (Int Int) Bool)

(assert (=> b!1353724 (= e!866420 (equivClasses!873 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34)))))))

(assert (= (and d!383296 res!609875) b!1353724))

(declare-fun m!1515693 () Bool)

(assert (=> d!383296 m!1515693))

(declare-fun m!1515695 () Bool)

(assert (=> b!1353724 m!1515695))

(assert (=> b!1353357 d!383296))

(declare-fun d!383298 () Bool)

(declare-fun res!609878 () Bool)

(declare-fun e!866423 () Bool)

(assert (=> d!383298 (=> (not res!609878) (not e!866423))))

(declare-fun rulesValid!883 (LexerInterface!2086 List!13864) Bool)

(assert (=> d!383298 (= res!609878 (rulesValid!883 thiss!19762 rules!2550))))

(assert (=> d!383298 (= (rulesInvariant!1956 thiss!19762 rules!2550) e!866423)))

(declare-fun b!1353727 () Bool)

(declare-datatypes ((List!13868 0))(
  ( (Nil!13802) (Cons!13802 (h!19203 String!16641) (t!120269 List!13868)) )
))
(declare-fun noDuplicateTag!883 (LexerInterface!2086 List!13864 List!13868) Bool)

(assert (=> b!1353727 (= e!866423 (noDuplicateTag!883 thiss!19762 rules!2550 Nil!13802))))

(assert (= (and d!383298 res!609878) b!1353727))

(declare-fun m!1515697 () Bool)

(assert (=> d!383298 m!1515697))

(declare-fun m!1515699 () Bool)

(assert (=> b!1353727 m!1515699))

(assert (=> b!1353355 d!383298))

(declare-fun b!1353738 () Bool)

(declare-fun e!866430 () Bool)

(declare-fun lt!448153 () tuple2!13374)

(assert (=> b!1353738 (= e!866430 (= (_2!7573 lt!448153) (list!5278 lt!447986)))))

(declare-fun b!1353739 () Bool)

(declare-fun e!866431 () tuple2!13374)

(assert (=> b!1353739 (= e!866431 (tuple2!13375 Nil!13800 (list!5278 lt!447986)))))

(declare-fun b!1353740 () Bool)

(declare-fun e!866432 () Bool)

(declare-fun isEmpty!8263 (List!13866) Bool)

(assert (=> b!1353740 (= e!866432 (not (isEmpty!8263 (_1!7573 lt!448153))))))

(declare-fun d!383300 () Bool)

(assert (=> d!383300 e!866430))

(declare-fun c!222054 () Bool)

(declare-fun size!11280 (List!13866) Int)

(assert (=> d!383300 (= c!222054 (> (size!11280 (_1!7573 lt!448153)) 0))))

(assert (=> d!383300 (= lt!448153 e!866431)))

(declare-fun c!222053 () Bool)

(declare-fun lt!448151 () Option!2644)

(assert (=> d!383300 (= c!222053 ((_ is Some!2643) lt!448151))))

(assert (=> d!383300 (= lt!448151 (maxPrefix!1068 thiss!19762 rules!2550 (list!5278 lt!447986)))))

(assert (=> d!383300 (= (lexList!604 thiss!19762 rules!2550 (list!5278 lt!447986)) lt!448153)))

(declare-fun b!1353741 () Bool)

(declare-fun lt!448152 () tuple2!13374)

(assert (=> b!1353741 (= e!866431 (tuple2!13375 (Cons!13800 (_1!7571 (v!21356 lt!448151)) (_1!7573 lt!448152)) (_2!7573 lt!448152)))))

(assert (=> b!1353741 (= lt!448152 (lexList!604 thiss!19762 rules!2550 (_2!7571 (v!21356 lt!448151))))))

(declare-fun b!1353742 () Bool)

(assert (=> b!1353742 (= e!866430 e!866432)))

(declare-fun res!609881 () Bool)

(assert (=> b!1353742 (= res!609881 (< (size!11276 (_2!7573 lt!448153)) (size!11276 (list!5278 lt!447986))))))

(assert (=> b!1353742 (=> (not res!609881) (not e!866432))))

(assert (= (and d!383300 c!222053) b!1353741))

(assert (= (and d!383300 (not c!222053)) b!1353739))

(assert (= (and d!383300 c!222054) b!1353742))

(assert (= (and d!383300 (not c!222054)) b!1353738))

(assert (= (and b!1353742 res!609881) b!1353740))

(declare-fun m!1515701 () Bool)

(assert (=> b!1353740 m!1515701))

(declare-fun m!1515703 () Bool)

(assert (=> d!383300 m!1515703))

(assert (=> d!383300 m!1515177))

(declare-fun m!1515705 () Bool)

(assert (=> d!383300 m!1515705))

(declare-fun m!1515707 () Bool)

(assert (=> b!1353741 m!1515707))

(declare-fun m!1515709 () Bool)

(assert (=> b!1353742 m!1515709))

(assert (=> b!1353742 m!1515177))

(declare-fun m!1515711 () Bool)

(assert (=> b!1353742 m!1515711))

(assert (=> b!1353377 d!383300))

(declare-fun d!383302 () Bool)

(declare-fun list!5282 (Conc!4544) List!13863)

(assert (=> d!383302 (= (list!5278 lt!447986) (list!5282 (c!221992 lt!447986)))))

(declare-fun bs!333610 () Bool)

(assert (= bs!333610 d!383302))

(declare-fun m!1515713 () Bool)

(assert (=> bs!333610 m!1515713))

(assert (=> b!1353377 d!383302))

(declare-fun e!866438 () Bool)

(declare-fun b!1353754 () Bool)

(declare-fun lt!448156 () List!13863)

(assert (=> b!1353754 (= e!866438 (or (not (= (getSuffix!553 lt!447984 lt!447991) Nil!13797)) (= lt!448156 lt!447991)))))

(declare-fun b!1353752 () Bool)

(declare-fun e!866437 () List!13863)

(assert (=> b!1353752 (= e!866437 (Cons!13797 (h!19198 lt!447991) (++!3546 (t!120228 lt!447991) (getSuffix!553 lt!447984 lt!447991))))))

(declare-fun b!1353751 () Bool)

(assert (=> b!1353751 (= e!866437 (getSuffix!553 lt!447984 lt!447991))))

(declare-fun d!383304 () Bool)

(assert (=> d!383304 e!866438))

(declare-fun res!609887 () Bool)

(assert (=> d!383304 (=> (not res!609887) (not e!866438))))

(assert (=> d!383304 (= res!609887 (= (content!1983 lt!448156) ((_ map or) (content!1983 lt!447991) (content!1983 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (=> d!383304 (= lt!448156 e!866437)))

(declare-fun c!222057 () Bool)

(assert (=> d!383304 (= c!222057 ((_ is Nil!13797) lt!447991))))

(assert (=> d!383304 (= (++!3546 lt!447991 (getSuffix!553 lt!447984 lt!447991)) lt!448156)))

(declare-fun b!1353753 () Bool)

(declare-fun res!609886 () Bool)

(assert (=> b!1353753 (=> (not res!609886) (not e!866438))))

(assert (=> b!1353753 (= res!609886 (= (size!11276 lt!448156) (+ (size!11276 lt!447991) (size!11276 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (= (and d!383304 c!222057) b!1353751))

(assert (= (and d!383304 (not c!222057)) b!1353752))

(assert (= (and d!383304 res!609887) b!1353753))

(assert (= (and b!1353753 res!609886) b!1353754))

(assert (=> b!1353752 m!1515131))

(declare-fun m!1515715 () Bool)

(assert (=> b!1353752 m!1515715))

(declare-fun m!1515717 () Bool)

(assert (=> d!383304 m!1515717))

(assert (=> d!383304 m!1515681))

(assert (=> d!383304 m!1515131))

(declare-fun m!1515719 () Bool)

(assert (=> d!383304 m!1515719))

(declare-fun m!1515721 () Bool)

(assert (=> b!1353753 m!1515721))

(declare-fun m!1515723 () Bool)

(assert (=> b!1353753 m!1515723))

(assert (=> b!1353753 m!1515131))

(declare-fun m!1515725 () Bool)

(assert (=> b!1353753 m!1515725))

(assert (=> b!1353356 d!383304))

(declare-fun d!383306 () Bool)

(declare-fun lt!448159 () List!13863)

(assert (=> d!383306 (= (++!3546 lt!447991 lt!448159) lt!447984)))

(declare-fun e!866441 () List!13863)

(assert (=> d!383306 (= lt!448159 e!866441)))

(declare-fun c!222060 () Bool)

(assert (=> d!383306 (= c!222060 ((_ is Cons!13797) lt!447991))))

(assert (=> d!383306 (>= (size!11276 lt!447984) (size!11276 lt!447991))))

(assert (=> d!383306 (= (getSuffix!553 lt!447984 lt!447991) lt!448159)))

(declare-fun b!1353759 () Bool)

(declare-fun tail!1952 (List!13863) List!13863)

(assert (=> b!1353759 (= e!866441 (getSuffix!553 (tail!1952 lt!447984) (t!120228 lt!447991)))))

(declare-fun b!1353760 () Bool)

(assert (=> b!1353760 (= e!866441 lt!447984)))

(assert (= (and d!383306 c!222060) b!1353759))

(assert (= (and d!383306 (not c!222060)) b!1353760))

(declare-fun m!1515727 () Bool)

(assert (=> d!383306 m!1515727))

(declare-fun m!1515729 () Bool)

(assert (=> d!383306 m!1515729))

(assert (=> d!383306 m!1515723))

(declare-fun m!1515731 () Bool)

(assert (=> b!1353759 m!1515731))

(assert (=> b!1353759 m!1515731))

(declare-fun m!1515733 () Bool)

(assert (=> b!1353759 m!1515733))

(assert (=> b!1353356 d!383306))

(declare-fun d!383308 () Bool)

(declare-fun lt!448162 () List!13863)

(declare-fun dynLambda!6158 (Int List!13863) Bool)

(assert (=> d!383308 (dynLambda!6158 lambda!57088 lt!448162)))

(declare-fun choose!8326 (Int) List!13863)

(assert (=> d!383308 (= lt!448162 (choose!8326 lambda!57088))))

(assert (=> d!383308 (Exists!857 lambda!57088)))

(assert (=> d!383308 (= (pickWitness!160 lambda!57088) lt!448162)))

(declare-fun b_lambda!40589 () Bool)

(assert (=> (not b_lambda!40589) (not d!383308)))

(declare-fun bs!333611 () Bool)

(assert (= bs!333611 d!383308))

(declare-fun m!1515735 () Bool)

(assert (=> bs!333611 m!1515735))

(declare-fun m!1515737 () Bool)

(assert (=> bs!333611 m!1515737))

(assert (=> bs!333611 m!1515183))

(assert (=> b!1353356 d!383308))

(declare-fun d!383310 () Bool)

(declare-fun lt!448164 () Bool)

(declare-fun e!866443 () Bool)

(assert (=> d!383310 (= lt!448164 e!866443)))

(declare-fun res!609890 () Bool)

(assert (=> d!383310 (=> (not res!609890) (not e!866443))))

(assert (=> d!383310 (= res!609890 (= (list!5279 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))))) (list!5279 (singletonSeq!1008 t1!34))))))

(declare-fun e!866442 () Bool)

(assert (=> d!383310 (= lt!448164 e!866442)))

(declare-fun res!609888 () Bool)

(assert (=> d!383310 (=> (not res!609888) (not e!866442))))

(declare-fun lt!448163 () tuple2!13372)

(assert (=> d!383310 (= res!609888 (= (size!11278 (_1!7572 lt!448163)) 1))))

(assert (=> d!383310 (= lt!448163 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))))))

(assert (=> d!383310 (not (isEmpty!8254 rules!2550))))

(assert (=> d!383310 (= (rulesProduceIndividualToken!1055 thiss!19762 rules!2550 t1!34) lt!448164)))

(declare-fun b!1353761 () Bool)

(declare-fun res!609889 () Bool)

(assert (=> b!1353761 (=> (not res!609889) (not e!866442))))

(assert (=> b!1353761 (= res!609889 (= (apply!3316 (_1!7572 lt!448163) 0) t1!34))))

(declare-fun b!1353762 () Bool)

(assert (=> b!1353762 (= e!866442 (isEmpty!8255 (_2!7572 lt!448163)))))

(declare-fun b!1353763 () Bool)

(assert (=> b!1353763 (= e!866443 (isEmpty!8255 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))))))))

(assert (= (and d!383310 res!609888) b!1353761))

(assert (= (and b!1353761 res!609889) b!1353762))

(assert (= (and d!383310 res!609890) b!1353763))

(declare-fun m!1515739 () Bool)

(assert (=> d!383310 m!1515739))

(assert (=> d!383310 m!1515155))

(assert (=> d!383310 m!1515165))

(declare-fun m!1515741 () Bool)

(assert (=> d!383310 m!1515741))

(assert (=> d!383310 m!1515165))

(assert (=> d!383310 m!1515165))

(assert (=> d!383310 m!1515167))

(assert (=> d!383310 m!1515167))

(declare-fun m!1515743 () Bool)

(assert (=> d!383310 m!1515743))

(declare-fun m!1515745 () Bool)

(assert (=> d!383310 m!1515745))

(declare-fun m!1515747 () Bool)

(assert (=> b!1353761 m!1515747))

(declare-fun m!1515749 () Bool)

(assert (=> b!1353762 m!1515749))

(assert (=> b!1353763 m!1515165))

(assert (=> b!1353763 m!1515165))

(assert (=> b!1353763 m!1515167))

(assert (=> b!1353763 m!1515167))

(assert (=> b!1353763 m!1515743))

(declare-fun m!1515751 () Bool)

(assert (=> b!1353763 m!1515751))

(assert (=> b!1353375 d!383310))

(declare-fun d!383312 () Bool)

(declare-fun lt!448165 () Bool)

(assert (=> d!383312 (= lt!448165 (select (content!1983 lt!447984) lt!447995))))

(declare-fun e!866444 () Bool)

(assert (=> d!383312 (= lt!448165 e!866444)))

(declare-fun res!609892 () Bool)

(assert (=> d!383312 (=> (not res!609892) (not e!866444))))

(assert (=> d!383312 (= res!609892 ((_ is Cons!13797) lt!447984))))

(assert (=> d!383312 (= (contains!2547 lt!447984 lt!447995) lt!448165)))

(declare-fun b!1353764 () Bool)

(declare-fun e!866445 () Bool)

(assert (=> b!1353764 (= e!866444 e!866445)))

(declare-fun res!609891 () Bool)

(assert (=> b!1353764 (=> res!609891 e!866445)))

(assert (=> b!1353764 (= res!609891 (= (h!19198 lt!447984) lt!447995))))

(declare-fun b!1353765 () Bool)

(assert (=> b!1353765 (= e!866445 (contains!2547 (t!120228 lt!447984) lt!447995))))

(assert (= (and d!383312 res!609892) b!1353764))

(assert (= (and b!1353764 (not res!609891)) b!1353765))

(declare-fun m!1515753 () Bool)

(assert (=> d!383312 m!1515753))

(declare-fun m!1515755 () Bool)

(assert (=> d!383312 m!1515755))

(declare-fun m!1515757 () Bool)

(assert (=> b!1353765 m!1515757))

(assert (=> b!1353376 d!383312))

(declare-fun b!1353776 () Bool)

(declare-fun e!866452 () Bool)

(declare-fun inv!16 (TokenValue!2481) Bool)

(assert (=> b!1353776 (= e!866452 (inv!16 (value!77776 t2!34)))))

(declare-fun b!1353777 () Bool)

(declare-fun e!866454 () Bool)

(assert (=> b!1353777 (= e!866452 e!866454)))

(declare-fun c!222066 () Bool)

(assert (=> b!1353777 (= c!222066 ((_ is IntegerValue!7444) (value!77776 t2!34)))))

(declare-fun b!1353778 () Bool)

(declare-fun res!609895 () Bool)

(declare-fun e!866453 () Bool)

(assert (=> b!1353778 (=> res!609895 e!866453)))

(assert (=> b!1353778 (= res!609895 (not ((_ is IntegerValue!7445) (value!77776 t2!34))))))

(assert (=> b!1353778 (= e!866454 e!866453)))

(declare-fun d!383314 () Bool)

(declare-fun c!222065 () Bool)

(assert (=> d!383314 (= c!222065 ((_ is IntegerValue!7443) (value!77776 t2!34)))))

(assert (=> d!383314 (= (inv!21 (value!77776 t2!34)) e!866452)))

(declare-fun b!1353779 () Bool)

(declare-fun inv!17 (TokenValue!2481) Bool)

(assert (=> b!1353779 (= e!866454 (inv!17 (value!77776 t2!34)))))

(declare-fun b!1353780 () Bool)

(declare-fun inv!15 (TokenValue!2481) Bool)

(assert (=> b!1353780 (= e!866453 (inv!15 (value!77776 t2!34)))))

(assert (= (and d!383314 c!222065) b!1353776))

(assert (= (and d!383314 (not c!222065)) b!1353777))

(assert (= (and b!1353777 c!222066) b!1353779))

(assert (= (and b!1353777 (not c!222066)) b!1353778))

(assert (= (and b!1353778 (not res!609895)) b!1353780))

(declare-fun m!1515759 () Bool)

(assert (=> b!1353776 m!1515759))

(declare-fun m!1515761 () Bool)

(assert (=> b!1353779 m!1515761))

(declare-fun m!1515763 () Bool)

(assert (=> b!1353780 m!1515763))

(assert (=> b!1353351 d!383314))

(declare-fun d!383316 () Bool)

(declare-fun lt!448168 () Bool)

(declare-fun content!1984 (List!13864) (InoxSet Rule!4582))

(assert (=> d!383316 (= lt!448168 (select (content!1984 rules!2550) (rule!4138 t1!34)))))

(declare-fun e!866459 () Bool)

(assert (=> d!383316 (= lt!448168 e!866459)))

(declare-fun res!609901 () Bool)

(assert (=> d!383316 (=> (not res!609901) (not e!866459))))

(assert (=> d!383316 (= res!609901 ((_ is Cons!13798) rules!2550))))

(assert (=> d!383316 (= (contains!2549 rules!2550 (rule!4138 t1!34)) lt!448168)))

(declare-fun b!1353785 () Bool)

(declare-fun e!866460 () Bool)

(assert (=> b!1353785 (= e!866459 e!866460)))

(declare-fun res!609900 () Bool)

(assert (=> b!1353785 (=> res!609900 e!866460)))

(assert (=> b!1353785 (= res!609900 (= (h!19199 rules!2550) (rule!4138 t1!34)))))

(declare-fun b!1353786 () Bool)

(assert (=> b!1353786 (= e!866460 (contains!2549 (t!120229 rules!2550) (rule!4138 t1!34)))))

(assert (= (and d!383316 res!609901) b!1353785))

(assert (= (and b!1353785 (not res!609900)) b!1353786))

(declare-fun m!1515765 () Bool)

(assert (=> d!383316 m!1515765))

(declare-fun m!1515767 () Bool)

(assert (=> d!383316 m!1515767))

(declare-fun m!1515769 () Bool)

(assert (=> b!1353786 m!1515769))

(assert (=> b!1353373 d!383316))

(declare-fun b!1353821 () Bool)

(declare-fun res!609929 () Bool)

(declare-fun e!866486 () Bool)

(assert (=> b!1353821 (=> res!609929 e!866486)))

(assert (=> b!1353821 (= res!609929 (not (isEmpty!8261 (tail!1952 lt!447984))))))

(declare-fun b!1353822 () Bool)

(declare-fun e!866485 () Bool)

(declare-fun nullable!1185 (Regex!3705) Bool)

(assert (=> b!1353822 (= e!866485 (nullable!1185 lt!447993))))

(declare-fun b!1353823 () Bool)

(declare-fun head!2419 (List!13863) C!7700)

(assert (=> b!1353823 (= e!866486 (not (= (head!2419 lt!447984) (c!221993 lt!447993))))))

(declare-fun b!1353824 () Bool)

(declare-fun e!866481 () Bool)

(assert (=> b!1353824 (= e!866481 (= (head!2419 lt!447984) (c!221993 lt!447993)))))

(declare-fun b!1353825 () Bool)

(declare-fun e!866482 () Bool)

(declare-fun e!866484 () Bool)

(assert (=> b!1353825 (= e!866482 e!866484)))

(declare-fun res!609925 () Bool)

(assert (=> b!1353825 (=> (not res!609925) (not e!866484))))

(declare-fun lt!448173 () Bool)

(assert (=> b!1353825 (= res!609925 (not lt!448173))))

(declare-fun b!1353826 () Bool)

(declare-fun e!866487 () Bool)

(declare-fun e!866483 () Bool)

(assert (=> b!1353826 (= e!866487 e!866483)))

(declare-fun c!222076 () Bool)

(assert (=> b!1353826 (= c!222076 ((_ is EmptyLang!3705) lt!447993))))

(declare-fun b!1353827 () Bool)

(declare-fun res!609926 () Bool)

(assert (=> b!1353827 (=> res!609926 e!866482)))

(assert (=> b!1353827 (= res!609926 e!866481)))

(declare-fun res!609927 () Bool)

(assert (=> b!1353827 (=> (not res!609927) (not e!866481))))

(assert (=> b!1353827 (= res!609927 lt!448173)))

(declare-fun b!1353828 () Bool)

(declare-fun res!609923 () Bool)

(assert (=> b!1353828 (=> (not res!609923) (not e!866481))))

(assert (=> b!1353828 (= res!609923 (isEmpty!8261 (tail!1952 lt!447984)))))

(declare-fun b!1353829 () Bool)

(declare-fun res!609922 () Bool)

(assert (=> b!1353829 (=> (not res!609922) (not e!866481))))

(declare-fun call!91147 () Bool)

(assert (=> b!1353829 (= res!609922 (not call!91147))))

(declare-fun d!383318 () Bool)

(assert (=> d!383318 e!866487))

(declare-fun c!222075 () Bool)

(assert (=> d!383318 (= c!222075 ((_ is EmptyExpr!3705) lt!447993))))

(assert (=> d!383318 (= lt!448173 e!866485)))

(declare-fun c!222077 () Bool)

(assert (=> d!383318 (= c!222077 (isEmpty!8261 lt!447984))))

(assert (=> d!383318 (validRegex!1605 lt!447993)))

(assert (=> d!383318 (= (matchR!1698 lt!447993 lt!447984) lt!448173)))

(declare-fun b!1353830 () Bool)

(assert (=> b!1353830 (= e!866483 (not lt!448173))))

(declare-fun bm!91142 () Bool)

(assert (=> bm!91142 (= call!91147 (isEmpty!8261 lt!447984))))

(declare-fun b!1353831 () Bool)

(declare-fun res!609928 () Bool)

(assert (=> b!1353831 (=> res!609928 e!866482)))

(assert (=> b!1353831 (= res!609928 (not ((_ is ElementMatch!3705) lt!447993)))))

(assert (=> b!1353831 (= e!866483 e!866482)))

(declare-fun b!1353832 () Bool)

(assert (=> b!1353832 (= e!866487 (= lt!448173 call!91147))))

(declare-fun b!1353833 () Bool)

(declare-fun derivativeStep!943 (Regex!3705 C!7700) Regex!3705)

(assert (=> b!1353833 (= e!866485 (matchR!1698 (derivativeStep!943 lt!447993 (head!2419 lt!447984)) (tail!1952 lt!447984)))))

(declare-fun b!1353834 () Bool)

(assert (=> b!1353834 (= e!866484 e!866486)))

(declare-fun res!609924 () Bool)

(assert (=> b!1353834 (=> res!609924 e!866486)))

(assert (=> b!1353834 (= res!609924 call!91147)))

(assert (= (and d!383318 c!222077) b!1353822))

(assert (= (and d!383318 (not c!222077)) b!1353833))

(assert (= (and d!383318 c!222075) b!1353832))

(assert (= (and d!383318 (not c!222075)) b!1353826))

(assert (= (and b!1353826 c!222076) b!1353830))

(assert (= (and b!1353826 (not c!222076)) b!1353831))

(assert (= (and b!1353831 (not res!609928)) b!1353827))

(assert (= (and b!1353827 res!609927) b!1353829))

(assert (= (and b!1353829 res!609922) b!1353828))

(assert (= (and b!1353828 res!609923) b!1353824))

(assert (= (and b!1353827 (not res!609926)) b!1353825))

(assert (= (and b!1353825 res!609925) b!1353834))

(assert (= (and b!1353834 (not res!609924)) b!1353821))

(assert (= (and b!1353821 (not res!609929)) b!1353823))

(assert (= (or b!1353832 b!1353829 b!1353834) bm!91142))

(assert (=> b!1353821 m!1515731))

(assert (=> b!1353821 m!1515731))

(declare-fun m!1515771 () Bool)

(assert (=> b!1353821 m!1515771))

(declare-fun m!1515773 () Bool)

(assert (=> b!1353833 m!1515773))

(assert (=> b!1353833 m!1515773))

(declare-fun m!1515775 () Bool)

(assert (=> b!1353833 m!1515775))

(assert (=> b!1353833 m!1515731))

(assert (=> b!1353833 m!1515775))

(assert (=> b!1353833 m!1515731))

(declare-fun m!1515777 () Bool)

(assert (=> b!1353833 m!1515777))

(declare-fun m!1515779 () Bool)

(assert (=> d!383318 m!1515779))

(assert (=> d!383318 m!1515373))

(assert (=> b!1353823 m!1515773))

(assert (=> b!1353828 m!1515731))

(assert (=> b!1353828 m!1515731))

(assert (=> b!1353828 m!1515771))

(assert (=> b!1353824 m!1515773))

(assert (=> bm!91142 m!1515779))

(declare-fun m!1515781 () Bool)

(assert (=> b!1353822 m!1515781))

(assert (=> b!1353352 d!383318))

(declare-fun d!383320 () Bool)

(assert (=> d!383320 (= (isEmpty!8254 rules!2550) ((_ is Nil!13798) rules!2550))))

(assert (=> b!1353371 d!383320))

(declare-fun d!383322 () Bool)

(declare-fun lt!448177 () BalanceConc!9028)

(declare-fun printList!594 (LexerInterface!2086 List!13866) List!13863)

(assert (=> d!383322 (= (list!5278 lt!448177) (printList!594 thiss!19762 (list!5279 (singletonSeq!1008 t1!34))))))

(declare-fun printTailRec!576 (LexerInterface!2086 BalanceConc!9030 Int BalanceConc!9028) BalanceConc!9028)

(assert (=> d!383322 (= lt!448177 (printTailRec!576 thiss!19762 (singletonSeq!1008 t1!34) 0 (BalanceConc!9029 Empty!4544)))))

(assert (=> d!383322 (= (print!852 thiss!19762 (singletonSeq!1008 t1!34)) lt!448177)))

(declare-fun bs!333618 () Bool)

(assert (= bs!333618 d!383322))

(declare-fun m!1515813 () Bool)

(assert (=> bs!333618 m!1515813))

(assert (=> bs!333618 m!1515165))

(assert (=> bs!333618 m!1515741))

(assert (=> bs!333618 m!1515741))

(declare-fun m!1515815 () Bool)

(assert (=> bs!333618 m!1515815))

(assert (=> bs!333618 m!1515165))

(declare-fun m!1515817 () Bool)

(assert (=> bs!333618 m!1515817))

(assert (=> b!1353370 d!383322))

(declare-fun d!383336 () Bool)

(declare-fun e!866517 () Bool)

(assert (=> d!383336 e!866517))

(declare-fun res!609940 () Bool)

(assert (=> d!383336 (=> (not res!609940) (not e!866517))))

(declare-fun lt!448180 () BalanceConc!9030)

(assert (=> d!383336 (= res!609940 (= (list!5279 lt!448180) (Cons!13800 t1!34 Nil!13800)))))

(declare-fun singleton!430 (Token!4444) BalanceConc!9030)

(assert (=> d!383336 (= lt!448180 (singleton!430 t1!34))))

(assert (=> d!383336 (= (singletonSeq!1008 t1!34) lt!448180)))

(declare-fun b!1353888 () Bool)

(declare-fun isBalanced!1324 (Conc!4545) Bool)

(assert (=> b!1353888 (= e!866517 (isBalanced!1324 (c!221994 lt!448180)))))

(assert (= (and d!383336 res!609940) b!1353888))

(declare-fun m!1515819 () Bool)

(assert (=> d!383336 m!1515819))

(declare-fun m!1515821 () Bool)

(assert (=> d!383336 m!1515821))

(declare-fun m!1515823 () Bool)

(assert (=> b!1353888 m!1515823))

(assert (=> b!1353370 d!383336))

(declare-fun b!1353901 () Bool)

(declare-fun e!866529 () Rule!4582)

(assert (=> b!1353901 (= e!866529 (h!19199 rules!2550))))

(declare-fun b!1353902 () Bool)

(declare-fun e!866527 () Rule!4582)

(assert (=> b!1353902 (= e!866527 (getWitness!329 (t!120229 rules!2550) lambda!57091))))

(declare-fun b!1353903 () Bool)

(declare-fun e!866528 () Bool)

(declare-fun lt!448186 () Rule!4582)

(assert (=> b!1353903 (= e!866528 (contains!2549 rules!2550 lt!448186))))

(declare-fun b!1353905 () Bool)

(declare-fun e!866526 () Bool)

(declare-fun dynLambda!6159 (Int Rule!4582) Bool)

(assert (=> b!1353905 (= e!866526 (dynLambda!6159 lambda!57091 (h!19199 rules!2550)))))

(declare-fun b!1353906 () Bool)

(declare-fun lt!448185 () Unit!19941)

(declare-fun Unit!19945 () Unit!19941)

(assert (=> b!1353906 (= lt!448185 Unit!19945)))

(assert (=> b!1353906 false))

(declare-fun head!2420 (List!13864) Rule!4582)

(assert (=> b!1353906 (= e!866527 (head!2420 rules!2550))))

(declare-fun b!1353904 () Bool)

(assert (=> b!1353904 (= e!866529 e!866527)))

(declare-fun c!222084 () Bool)

(assert (=> b!1353904 (= c!222084 ((_ is Cons!13798) rules!2550))))

(declare-fun d!383338 () Bool)

(assert (=> d!383338 e!866528))

(declare-fun res!609946 () Bool)

(assert (=> d!383338 (=> (not res!609946) (not e!866528))))

(assert (=> d!383338 (= res!609946 (dynLambda!6159 lambda!57091 lt!448186))))

(assert (=> d!383338 (= lt!448186 e!866529)))

(declare-fun c!222083 () Bool)

(assert (=> d!383338 (= c!222083 e!866526)))

(declare-fun res!609945 () Bool)

(assert (=> d!383338 (=> (not res!609945) (not e!866526))))

(assert (=> d!383338 (= res!609945 ((_ is Cons!13798) rules!2550))))

(assert (=> d!383338 (exists!441 rules!2550 lambda!57091)))

(assert (=> d!383338 (= (getWitness!329 rules!2550 lambda!57091) lt!448186)))

(assert (= (and d!383338 res!609945) b!1353905))

(assert (= (and d!383338 c!222083) b!1353901))

(assert (= (and d!383338 (not c!222083)) b!1353904))

(assert (= (and b!1353904 c!222084) b!1353902))

(assert (= (and b!1353904 (not c!222084)) b!1353906))

(assert (= (and d!383338 res!609946) b!1353903))

(declare-fun b_lambda!40611 () Bool)

(assert (=> (not b_lambda!40611) (not b!1353905)))

(declare-fun b_lambda!40613 () Bool)

(assert (=> (not b_lambda!40613) (not d!383338)))

(declare-fun m!1515825 () Bool)

(assert (=> d!383338 m!1515825))

(assert (=> d!383338 m!1515197))

(declare-fun m!1515827 () Bool)

(assert (=> b!1353903 m!1515827))

(declare-fun m!1515829 () Bool)

(assert (=> b!1353906 m!1515829))

(declare-fun m!1515831 () Bool)

(assert (=> b!1353905 m!1515831))

(declare-fun m!1515833 () Bool)

(assert (=> b!1353902 m!1515833))

(assert (=> b!1353370 d!383338))

(declare-fun e!866536 () Bool)

(declare-fun lt!448189 () tuple2!13372)

(declare-fun b!1353917 () Bool)

(assert (=> b!1353917 (= e!866536 (= (list!5278 (_2!7572 lt!448189)) (_2!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 lt!447986)))))))

(declare-fun b!1353918 () Bool)

(declare-fun e!866538 () Bool)

(declare-fun e!866537 () Bool)

(assert (=> b!1353918 (= e!866538 e!866537)))

(declare-fun res!609954 () Bool)

(assert (=> b!1353918 (= res!609954 (< (size!11270 (_2!7572 lt!448189)) (size!11270 lt!447986)))))

(assert (=> b!1353918 (=> (not res!609954) (not e!866537))))

(declare-fun b!1353919 () Bool)

(assert (=> b!1353919 (= e!866538 (= (_2!7572 lt!448189) lt!447986))))

(declare-fun b!1353920 () Bool)

(declare-fun res!609953 () Bool)

(assert (=> b!1353920 (=> (not res!609953) (not e!866536))))

(assert (=> b!1353920 (= res!609953 (= (list!5279 (_1!7572 lt!448189)) (_1!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 lt!447986)))))))

(declare-fun b!1353921 () Bool)

(declare-fun isEmpty!8265 (BalanceConc!9030) Bool)

(assert (=> b!1353921 (= e!866537 (not (isEmpty!8265 (_1!7572 lt!448189))))))

(declare-fun d!383340 () Bool)

(assert (=> d!383340 e!866536))

(declare-fun res!609955 () Bool)

(assert (=> d!383340 (=> (not res!609955) (not e!866536))))

(assert (=> d!383340 (= res!609955 e!866538)))

(declare-fun c!222087 () Bool)

(assert (=> d!383340 (= c!222087 (> (size!11278 (_1!7572 lt!448189)) 0))))

(declare-fun lexTailRecV2!399 (LexerInterface!2086 List!13864 BalanceConc!9028 BalanceConc!9028 BalanceConc!9028 BalanceConc!9030) tuple2!13372)

(assert (=> d!383340 (= lt!448189 (lexTailRecV2!399 thiss!19762 rules!2550 lt!447986 (BalanceConc!9029 Empty!4544) lt!447986 (BalanceConc!9031 Empty!4545)))))

(assert (=> d!383340 (= (lex!913 thiss!19762 rules!2550 lt!447986) lt!448189)))

(assert (= (and d!383340 c!222087) b!1353918))

(assert (= (and d!383340 (not c!222087)) b!1353919))

(assert (= (and b!1353918 res!609954) b!1353921))

(assert (= (and d!383340 res!609955) b!1353920))

(assert (= (and b!1353920 res!609953) b!1353917))

(declare-fun m!1515835 () Bool)

(assert (=> d!383340 m!1515835))

(declare-fun m!1515837 () Bool)

(assert (=> d!383340 m!1515837))

(declare-fun m!1515839 () Bool)

(assert (=> b!1353921 m!1515839))

(declare-fun m!1515841 () Bool)

(assert (=> b!1353917 m!1515841))

(assert (=> b!1353917 m!1515177))

(assert (=> b!1353917 m!1515177))

(assert (=> b!1353917 m!1515179))

(declare-fun m!1515843 () Bool)

(assert (=> b!1353920 m!1515843))

(assert (=> b!1353920 m!1515177))

(assert (=> b!1353920 m!1515177))

(assert (=> b!1353920 m!1515179))

(declare-fun m!1515845 () Bool)

(assert (=> b!1353918 m!1515845))

(declare-fun m!1515847 () Bool)

(assert (=> b!1353918 m!1515847))

(assert (=> b!1353370 d!383340))

(declare-fun d!383342 () Bool)

(declare-fun list!5283 (Conc!4545) List!13866)

(assert (=> d!383342 (= (list!5279 (_1!7572 lt!447996)) (list!5283 (c!221994 (_1!7572 lt!447996))))))

(declare-fun bs!333619 () Bool)

(assert (= bs!333619 d!383342))

(declare-fun m!1515849 () Bool)

(assert (=> bs!333619 m!1515849))

(assert (=> b!1353370 d!383342))

(declare-fun d!383344 () Bool)

(declare-fun lt!448190 () Bool)

(assert (=> d!383344 (= lt!448190 (select (content!1983 lt!447991) lt!447989))))

(declare-fun e!866539 () Bool)

(assert (=> d!383344 (= lt!448190 e!866539)))

(declare-fun res!609957 () Bool)

(assert (=> d!383344 (=> (not res!609957) (not e!866539))))

(assert (=> d!383344 (= res!609957 ((_ is Cons!13797) lt!447991))))

(assert (=> d!383344 (= (contains!2547 lt!447991 lt!447989) lt!448190)))

(declare-fun b!1353922 () Bool)

(declare-fun e!866540 () Bool)

(assert (=> b!1353922 (= e!866539 e!866540)))

(declare-fun res!609956 () Bool)

(assert (=> b!1353922 (=> res!609956 e!866540)))

(assert (=> b!1353922 (= res!609956 (= (h!19198 lt!447991) lt!447989))))

(declare-fun b!1353923 () Bool)

(assert (=> b!1353923 (= e!866540 (contains!2547 (t!120228 lt!447991) lt!447989))))

(assert (= (and d!383344 res!609957) b!1353922))

(assert (= (and b!1353922 (not res!609956)) b!1353923))

(assert (=> d!383344 m!1515681))

(declare-fun m!1515851 () Bool)

(assert (=> d!383344 m!1515851))

(declare-fun m!1515853 () Bool)

(assert (=> b!1353923 m!1515853))

(assert (=> b!1353369 d!383344))

(declare-fun d!383346 () Bool)

(assert (=> d!383346 (= (inv!18136 (tag!2653 (rule!4138 t1!34))) (= (mod (str.len (value!77775 (tag!2653 (rule!4138 t1!34)))) 2) 0))))

(assert (=> b!1353367 d!383346))

(declare-fun d!383348 () Bool)

(declare-fun res!609958 () Bool)

(declare-fun e!866541 () Bool)

(assert (=> d!383348 (=> (not res!609958) (not e!866541))))

(assert (=> d!383348 (= res!609958 (semiInverseModEq!914 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t1!34)))))))

(assert (=> d!383348 (= (inv!18139 (transformation!2391 (rule!4138 t1!34))) e!866541)))

(declare-fun b!1353924 () Bool)

(assert (=> b!1353924 (= e!866541 (equivClasses!873 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t1!34)))))))

(assert (= (and d!383348 res!609958) b!1353924))

(declare-fun m!1515855 () Bool)

(assert (=> d!383348 m!1515855))

(declare-fun m!1515857 () Bool)

(assert (=> b!1353924 m!1515857))

(assert (=> b!1353367 d!383348))

(declare-fun d!383350 () Bool)

(assert (=> d!383350 (= (inv!18136 (tag!2653 (h!19199 rules!2550))) (= (mod (str.len (value!77775 (tag!2653 (h!19199 rules!2550)))) 2) 0))))

(assert (=> b!1353368 d!383350))

(declare-fun d!383352 () Bool)

(declare-fun res!609959 () Bool)

(declare-fun e!866542 () Bool)

(assert (=> d!383352 (=> (not res!609959) (not e!866542))))

(assert (=> d!383352 (= res!609959 (semiInverseModEq!914 (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))))))

(assert (=> d!383352 (= (inv!18139 (transformation!2391 (h!19199 rules!2550))) e!866542)))

(declare-fun b!1353925 () Bool)

(assert (=> b!1353925 (= e!866542 (equivClasses!873 (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))))))

(assert (= (and d!383352 res!609959) b!1353925))

(declare-fun m!1515859 () Bool)

(assert (=> d!383352 m!1515859))

(declare-fun m!1515861 () Bool)

(assert (=> b!1353925 m!1515861))

(assert (=> b!1353368 d!383352))

(declare-fun bs!333620 () Bool)

(declare-fun d!383354 () Bool)

(assert (= bs!333620 (and d!383354 b!1353366)))

(declare-fun lambda!57125 () Int)

(assert (=> bs!333620 (not (= lambda!57125 lambda!57090))))

(assert (=> d!383354 true))

(declare-fun order!8321 () Int)

(declare-fun dynLambda!6160 (Int Int) Int)

(assert (=> d!383354 (< (dynLambda!6160 order!8321 lambda!57090) (dynLambda!6160 order!8321 lambda!57125))))

(declare-fun forall!3368 (List!13865 Int) Bool)

(assert (=> d!383354 (= (exists!440 (map!3047 rules!2550 lambda!57089) lambda!57090) (not (forall!3368 (map!3047 rules!2550 lambda!57089) lambda!57125)))))

(declare-fun bs!333621 () Bool)

(assert (= bs!333621 d!383354))

(assert (=> bs!333621 m!1515215))

(declare-fun m!1515863 () Bool)

(assert (=> bs!333621 m!1515863))

(assert (=> b!1353366 d!383354))

(declare-fun bs!333622 () Bool)

(declare-fun d!383356 () Bool)

(assert (= bs!333622 (and d!383356 b!1353366)))

(declare-fun lambda!57130 () Int)

(assert (=> bs!333622 (not (= lambda!57130 lambda!57090))))

(declare-fun bs!333623 () Bool)

(assert (= bs!333623 (and d!383356 d!383354)))

(assert (=> bs!333623 (not (= lambda!57130 lambda!57125))))

(declare-fun lambda!57131 () Int)

(assert (=> bs!333622 (= lambda!57131 lambda!57090)))

(assert (=> bs!333623 (not (= lambda!57131 lambda!57125))))

(declare-fun bs!333624 () Bool)

(assert (= bs!333624 d!383356))

(assert (=> bs!333624 (not (= lambda!57131 lambda!57130))))

(assert (=> d!383356 true))

(assert (=> d!383356 (= (matchR!1698 lt!447993 lt!447984) (exists!440 lt!447983 lambda!57131))))

(declare-fun lt!448193 () Unit!19941)

(declare-fun choose!8327 (Regex!3705 List!13865 List!13863) Unit!19941)

(assert (=> d!383356 (= lt!448193 (choose!8327 lt!447993 lt!447983 lt!447984))))

(assert (=> d!383356 (forall!3368 lt!447983 lambda!57130)))

(assert (=> d!383356 (= (matchRGenUnionSpec!122 lt!447993 lt!447983 lt!447984) lt!448193)))

(assert (=> bs!333624 m!1515203))

(declare-fun m!1515865 () Bool)

(assert (=> bs!333624 m!1515865))

(declare-fun m!1515867 () Bool)

(assert (=> bs!333624 m!1515867))

(declare-fun m!1515869 () Bool)

(assert (=> bs!333624 m!1515869))

(assert (=> b!1353366 d!383356))

(declare-fun bs!333625 () Bool)

(declare-fun d!383358 () Bool)

(assert (= bs!333625 (and d!383358 b!1353366)))

(declare-fun lambda!57132 () Int)

(assert (=> bs!333625 (not (= lambda!57132 lambda!57090))))

(declare-fun bs!333626 () Bool)

(assert (= bs!333626 (and d!383358 d!383354)))

(assert (=> bs!333626 (= lambda!57132 lambda!57125)))

(declare-fun bs!333627 () Bool)

(assert (= bs!333627 (and d!383358 d!383356)))

(assert (=> bs!333627 (not (= lambda!57132 lambda!57130))))

(assert (=> bs!333627 (not (= lambda!57132 lambda!57131))))

(assert (=> d!383358 true))

(assert (=> d!383358 (< (dynLambda!6160 order!8321 lambda!57090) (dynLambda!6160 order!8321 lambda!57132))))

(assert (=> d!383358 (= (exists!440 lt!447983 lambda!57090) (not (forall!3368 lt!447983 lambda!57132)))))

(declare-fun bs!333628 () Bool)

(assert (= bs!333628 d!383358))

(declare-fun m!1515871 () Bool)

(assert (=> bs!333628 m!1515871))

(assert (=> b!1353366 d!383358))

(declare-fun d!383360 () Bool)

(declare-fun lt!448196 () List!13865)

(declare-fun size!11281 (List!13865) Int)

(declare-fun size!11282 (List!13864) Int)

(assert (=> d!383360 (= (size!11281 lt!448196) (size!11282 rules!2550))))

(declare-fun e!866547 () List!13865)

(assert (=> d!383360 (= lt!448196 e!866547)))

(declare-fun c!222090 () Bool)

(assert (=> d!383360 (= c!222090 ((_ is Nil!13798) rules!2550))))

(assert (=> d!383360 (= (map!3047 rules!2550 lambda!57089) lt!448196)))

(declare-fun b!1353934 () Bool)

(assert (=> b!1353934 (= e!866547 Nil!13799)))

(declare-fun b!1353935 () Bool)

(declare-fun $colon$colon!187 (List!13865 Regex!3705) List!13865)

(declare-fun dynLambda!6161 (Int Rule!4582) Regex!3705)

(assert (=> b!1353935 (= e!866547 ($colon$colon!187 (map!3047 (t!120229 rules!2550) lambda!57089) (dynLambda!6161 lambda!57089 (h!19199 rules!2550))))))

(assert (= (and d!383360 c!222090) b!1353934))

(assert (= (and d!383360 (not c!222090)) b!1353935))

(declare-fun b_lambda!40615 () Bool)

(assert (=> (not b_lambda!40615) (not b!1353935)))

(declare-fun m!1515873 () Bool)

(assert (=> d!383360 m!1515873))

(declare-fun m!1515875 () Bool)

(assert (=> d!383360 m!1515875))

(declare-fun m!1515877 () Bool)

(assert (=> b!1353935 m!1515877))

(declare-fun m!1515879 () Bool)

(assert (=> b!1353935 m!1515879))

(assert (=> b!1353935 m!1515877))

(assert (=> b!1353935 m!1515879))

(declare-fun m!1515881 () Bool)

(assert (=> b!1353935 m!1515881))

(assert (=> b!1353366 d!383360))

(declare-fun d!383362 () Bool)

(declare-fun lt!448199 () Bool)

(declare-fun content!1985 (List!13865) (InoxSet Regex!3705))

(assert (=> d!383362 (= lt!448199 (select (content!1985 (map!3047 rules!2550 lambda!57089)) lt!447982))))

(declare-fun e!866553 () Bool)

(assert (=> d!383362 (= lt!448199 e!866553)))

(declare-fun res!609966 () Bool)

(assert (=> d!383362 (=> (not res!609966) (not e!866553))))

(assert (=> d!383362 (= res!609966 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57089)))))

(assert (=> d!383362 (= (contains!2548 (map!3047 rules!2550 lambda!57089) lt!447982) lt!448199)))

(declare-fun b!1353940 () Bool)

(declare-fun e!866552 () Bool)

(assert (=> b!1353940 (= e!866553 e!866552)))

(declare-fun res!609967 () Bool)

(assert (=> b!1353940 (=> res!609967 e!866552)))

(assert (=> b!1353940 (= res!609967 (= (h!19200 (map!3047 rules!2550 lambda!57089)) lt!447982))))

(declare-fun b!1353941 () Bool)

(assert (=> b!1353941 (= e!866552 (contains!2548 (t!120230 (map!3047 rules!2550 lambda!57089)) lt!447982))))

(assert (= (and d!383362 res!609966) b!1353940))

(assert (= (and b!1353940 (not res!609967)) b!1353941))

(assert (=> d!383362 m!1515215))

(declare-fun m!1515883 () Bool)

(assert (=> d!383362 m!1515883))

(declare-fun m!1515885 () Bool)

(assert (=> d!383362 m!1515885))

(declare-fun m!1515887 () Bool)

(assert (=> b!1353941 m!1515887))

(assert (=> b!1353365 d!383362))

(assert (=> b!1353365 d!383360))

(declare-fun b!1353954 () Bool)

(declare-fun e!866565 () Bool)

(declare-fun dynLambda!6162 (Int Regex!3705) Bool)

(assert (=> b!1353954 (= e!866565 (dynLambda!6162 lambda!57090 (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun e!866562 () Bool)

(declare-fun b!1353955 () Bool)

(declare-fun lt!448204 () Regex!3705)

(assert (=> b!1353955 (= e!866562 (contains!2548 (map!3047 rules!2550 lambda!57089) lt!448204))))

(declare-fun b!1353956 () Bool)

(declare-fun e!866564 () Regex!3705)

(assert (=> b!1353956 (= e!866564 (h!19200 (map!3047 rules!2550 lambda!57089)))))

(declare-fun b!1353957 () Bool)

(declare-fun e!866563 () Regex!3705)

(assert (=> b!1353957 (= e!866563 (getWitness!328 (t!120230 (map!3047 rules!2550 lambda!57089)) lambda!57090))))

(declare-fun b!1353958 () Bool)

(assert (=> b!1353958 (= e!866564 e!866563)))

(declare-fun c!222096 () Bool)

(assert (=> b!1353958 (= c!222096 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57089)))))

(declare-fun d!383364 () Bool)

(assert (=> d!383364 e!866562))

(declare-fun res!609972 () Bool)

(assert (=> d!383364 (=> (not res!609972) (not e!866562))))

(assert (=> d!383364 (= res!609972 (dynLambda!6162 lambda!57090 lt!448204))))

(assert (=> d!383364 (= lt!448204 e!866564)))

(declare-fun c!222095 () Bool)

(assert (=> d!383364 (= c!222095 e!866565)))

(declare-fun res!609973 () Bool)

(assert (=> d!383364 (=> (not res!609973) (not e!866565))))

(assert (=> d!383364 (= res!609973 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57089)))))

(assert (=> d!383364 (exists!440 (map!3047 rules!2550 lambda!57089) lambda!57090)))

(assert (=> d!383364 (= (getWitness!328 (map!3047 rules!2550 lambda!57089) lambda!57090) lt!448204)))

(declare-fun b!1353959 () Bool)

(declare-fun lt!448205 () Unit!19941)

(declare-fun Unit!19946 () Unit!19941)

(assert (=> b!1353959 (= lt!448205 Unit!19946)))

(assert (=> b!1353959 false))

(declare-fun head!2421 (List!13865) Regex!3705)

(assert (=> b!1353959 (= e!866563 (head!2421 (map!3047 rules!2550 lambda!57089)))))

(assert (= (and d!383364 res!609973) b!1353954))

(assert (= (and d!383364 c!222095) b!1353956))

(assert (= (and d!383364 (not c!222095)) b!1353958))

(assert (= (and b!1353958 c!222096) b!1353957))

(assert (= (and b!1353958 (not c!222096)) b!1353959))

(assert (= (and d!383364 res!609972) b!1353955))

(declare-fun b_lambda!40617 () Bool)

(assert (=> (not b_lambda!40617) (not b!1353954)))

(declare-fun b_lambda!40619 () Bool)

(assert (=> (not b_lambda!40619) (not d!383364)))

(declare-fun m!1515889 () Bool)

(assert (=> b!1353957 m!1515889))

(declare-fun m!1515891 () Bool)

(assert (=> b!1353954 m!1515891))

(assert (=> b!1353959 m!1515215))

(declare-fun m!1515893 () Bool)

(assert (=> b!1353959 m!1515893))

(assert (=> b!1353955 m!1515215))

(declare-fun m!1515895 () Bool)

(assert (=> b!1353955 m!1515895))

(declare-fun m!1515897 () Bool)

(assert (=> d!383364 m!1515897))

(assert (=> d!383364 m!1515215))

(assert (=> d!383364 m!1515217))

(assert (=> b!1353365 d!383364))

(declare-fun e!866567 () Bool)

(declare-fun b!1353963 () Bool)

(declare-fun lt!448206 () List!13863)

(assert (=> b!1353963 (= e!866567 (or (not (= (Cons!13797 lt!447989 Nil!13797) Nil!13797)) (= lt!448206 lt!447994)))))

(declare-fun b!1353961 () Bool)

(declare-fun e!866566 () List!13863)

(assert (=> b!1353961 (= e!866566 (Cons!13797 (h!19198 lt!447994) (++!3546 (t!120228 lt!447994) (Cons!13797 lt!447989 Nil!13797))))))

(declare-fun b!1353960 () Bool)

(assert (=> b!1353960 (= e!866566 (Cons!13797 lt!447989 Nil!13797))))

(declare-fun d!383366 () Bool)

(assert (=> d!383366 e!866567))

(declare-fun res!609975 () Bool)

(assert (=> d!383366 (=> (not res!609975) (not e!866567))))

(assert (=> d!383366 (= res!609975 (= (content!1983 lt!448206) ((_ map or) (content!1983 lt!447994) (content!1983 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (=> d!383366 (= lt!448206 e!866566)))

(declare-fun c!222097 () Bool)

(assert (=> d!383366 (= c!222097 ((_ is Nil!13797) lt!447994))))

(assert (=> d!383366 (= (++!3546 lt!447994 (Cons!13797 lt!447989 Nil!13797)) lt!448206)))

(declare-fun b!1353962 () Bool)

(declare-fun res!609974 () Bool)

(assert (=> b!1353962 (=> (not res!609974) (not e!866567))))

(assert (=> b!1353962 (= res!609974 (= (size!11276 lt!448206) (+ (size!11276 lt!447994) (size!11276 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (= (and d!383366 c!222097) b!1353960))

(assert (= (and d!383366 (not c!222097)) b!1353961))

(assert (= (and d!383366 res!609975) b!1353962))

(assert (= (and b!1353962 res!609974) b!1353963))

(declare-fun m!1515899 () Bool)

(assert (=> b!1353961 m!1515899))

(declare-fun m!1515901 () Bool)

(assert (=> d!383366 m!1515901))

(declare-fun m!1515903 () Bool)

(assert (=> d!383366 m!1515903))

(declare-fun m!1515905 () Bool)

(assert (=> d!383366 m!1515905))

(declare-fun m!1515907 () Bool)

(assert (=> b!1353962 m!1515907))

(assert (=> b!1353962 m!1515633))

(declare-fun m!1515909 () Bool)

(assert (=> b!1353962 m!1515909))

(assert (=> b!1353363 d!383366))

(declare-fun d!383368 () Bool)

(declare-fun lt!448207 () BalanceConc!9028)

(assert (=> d!383368 (= (list!5278 lt!448207) (originalCharacters!3253 t1!34))))

(assert (=> d!383368 (= lt!448207 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))

(assert (=> d!383368 (= (charsOf!1363 t1!34) lt!448207)))

(declare-fun b_lambda!40621 () Bool)

(assert (=> (not b_lambda!40621) (not d!383368)))

(assert (=> d!383368 t!120254))

(declare-fun b_and!90661 () Bool)

(assert (= b_and!90651 (and (=> t!120254 result!86500) b_and!90661)))

(assert (=> d!383368 t!120256))

(declare-fun b_and!90663 () Bool)

(assert (= b_and!90653 (and (=> t!120256 result!86502) b_and!90663)))

(assert (=> d!383368 t!120258))

(declare-fun b_and!90665 () Bool)

(assert (= b_and!90655 (and (=> t!120258 result!86504) b_and!90665)))

(declare-fun m!1515911 () Bool)

(assert (=> d!383368 m!1515911))

(assert (=> d!383368 m!1515653))

(assert (=> b!1353363 d!383368))

(declare-fun d!383370 () Bool)

(assert (=> d!383370 (= (list!5278 lt!447992) (list!5282 (c!221992 lt!447992)))))

(declare-fun bs!333629 () Bool)

(assert (= bs!333629 d!383370))

(declare-fun m!1515913 () Bool)

(assert (=> bs!333629 m!1515913))

(assert (=> b!1353363 d!383370))

(declare-fun d!383372 () Bool)

(declare-fun lt!448208 () C!7700)

(assert (=> d!383372 (= lt!448208 (apply!3318 (list!5278 lt!447988) 0))))

(assert (=> d!383372 (= lt!448208 (apply!3319 (c!221992 lt!447988) 0))))

(declare-fun e!866568 () Bool)

(assert (=> d!383372 e!866568))

(declare-fun res!609976 () Bool)

(assert (=> d!383372 (=> (not res!609976) (not e!866568))))

(assert (=> d!383372 (= res!609976 (<= 0 0))))

(assert (=> d!383372 (= (apply!3311 lt!447988 0) lt!448208)))

(declare-fun b!1353964 () Bool)

(assert (=> b!1353964 (= e!866568 (< 0 (size!11270 lt!447988)))))

(assert (= (and d!383372 res!609976) b!1353964))

(assert (=> d!383372 m!1515301))

(assert (=> d!383372 m!1515301))

(declare-fun m!1515915 () Bool)

(assert (=> d!383372 m!1515915))

(declare-fun m!1515917 () Bool)

(assert (=> d!383372 m!1515917))

(assert (=> b!1353964 m!1515205))

(assert (=> b!1353363 d!383372))

(declare-fun bs!333630 () Bool)

(declare-fun d!383374 () Bool)

(assert (= bs!333630 (and d!383374 b!1353366)))

(declare-fun lambda!57135 () Int)

(assert (=> bs!333630 (= lambda!57135 lambda!57089)))

(declare-fun lt!448211 () Unit!19941)

(declare-fun lemma!113 (List!13864 LexerInterface!2086 List!13864) Unit!19941)

(assert (=> d!383374 (= lt!448211 (lemma!113 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!121 (List!13865) Regex!3705)

(assert (=> d!383374 (= (rulesRegex!274 thiss!19762 rules!2550) (generalisedUnion!121 (map!3047 rules!2550 lambda!57135)))))

(declare-fun bs!333631 () Bool)

(assert (= bs!333631 d!383374))

(declare-fun m!1515919 () Bool)

(assert (=> bs!333631 m!1515919))

(declare-fun m!1515921 () Bool)

(assert (=> bs!333631 m!1515921))

(assert (=> bs!333631 m!1515921))

(declare-fun m!1515923 () Bool)

(assert (=> bs!333631 m!1515923))

(assert (=> b!1353363 d!383374))

(declare-fun d!383376 () Bool)

(declare-fun c!222100 () Bool)

(assert (=> d!383376 (= c!222100 (isEmpty!8261 lt!447991))))

(declare-fun e!866571 () Bool)

(assert (=> d!383376 (= (prefixMatch!214 lt!447993 lt!447991) e!866571)))

(declare-fun b!1353969 () Bool)

(declare-fun lostCause!319 (Regex!3705) Bool)

(assert (=> b!1353969 (= e!866571 (not (lostCause!319 lt!447993)))))

(declare-fun b!1353970 () Bool)

(assert (=> b!1353970 (= e!866571 (prefixMatch!214 (derivativeStep!943 lt!447993 (head!2419 lt!447991)) (tail!1952 lt!447991)))))

(assert (= (and d!383376 c!222100) b!1353969))

(assert (= (and d!383376 (not c!222100)) b!1353970))

(declare-fun m!1515925 () Bool)

(assert (=> d!383376 m!1515925))

(declare-fun m!1515927 () Bool)

(assert (=> b!1353969 m!1515927))

(declare-fun m!1515929 () Bool)

(assert (=> b!1353970 m!1515929))

(assert (=> b!1353970 m!1515929))

(declare-fun m!1515931 () Bool)

(assert (=> b!1353970 m!1515931))

(declare-fun m!1515933 () Bool)

(assert (=> b!1353970 m!1515933))

(assert (=> b!1353970 m!1515931))

(assert (=> b!1353970 m!1515933))

(declare-fun m!1515935 () Bool)

(assert (=> b!1353970 m!1515935))

(assert (=> b!1353363 d!383376))

(declare-fun b!1353971 () Bool)

(declare-fun e!866572 () Bool)

(assert (=> b!1353971 (= e!866572 (inv!16 (value!77776 t1!34)))))

(declare-fun b!1353972 () Bool)

(declare-fun e!866574 () Bool)

(assert (=> b!1353972 (= e!866572 e!866574)))

(declare-fun c!222102 () Bool)

(assert (=> b!1353972 (= c!222102 ((_ is IntegerValue!7444) (value!77776 t1!34)))))

(declare-fun b!1353973 () Bool)

(declare-fun res!609977 () Bool)

(declare-fun e!866573 () Bool)

(assert (=> b!1353973 (=> res!609977 e!866573)))

(assert (=> b!1353973 (= res!609977 (not ((_ is IntegerValue!7445) (value!77776 t1!34))))))

(assert (=> b!1353973 (= e!866574 e!866573)))

(declare-fun d!383378 () Bool)

(declare-fun c!222101 () Bool)

(assert (=> d!383378 (= c!222101 ((_ is IntegerValue!7443) (value!77776 t1!34)))))

(assert (=> d!383378 (= (inv!21 (value!77776 t1!34)) e!866572)))

(declare-fun b!1353974 () Bool)

(assert (=> b!1353974 (= e!866574 (inv!17 (value!77776 t1!34)))))

(declare-fun b!1353975 () Bool)

(assert (=> b!1353975 (= e!866573 (inv!15 (value!77776 t1!34)))))

(assert (= (and d!383378 c!222101) b!1353971))

(assert (= (and d!383378 (not c!222101)) b!1353972))

(assert (= (and b!1353972 c!222102) b!1353974))

(assert (= (and b!1353972 (not c!222102)) b!1353973))

(assert (= (and b!1353973 (not res!609977)) b!1353975))

(declare-fun m!1515937 () Bool)

(assert (=> b!1353971 m!1515937))

(declare-fun m!1515939 () Bool)

(assert (=> b!1353974 m!1515939))

(declare-fun m!1515941 () Bool)

(assert (=> b!1353975 m!1515941))

(assert (=> b!1353364 d!383378))

(declare-fun d!383380 () Bool)

(declare-fun prefixMatchZipperSequence!236 (Regex!3705 BalanceConc!9028) Bool)

(declare-fun ++!3548 (BalanceConc!9028 BalanceConc!9028) BalanceConc!9028)

(declare-fun singletonSeq!1010 (C!7700) BalanceConc!9028)

(assert (=> d!383380 (= (separableTokensPredicate!369 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!236 (rulesRegex!274 thiss!19762 rules!2550) (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))))))

(declare-fun bs!333632 () Bool)

(assert (= bs!333632 d!383380))

(assert (=> bs!333632 m!1515137))

(declare-fun m!1515943 () Bool)

(assert (=> bs!333632 m!1515943))

(declare-fun m!1515945 () Bool)

(assert (=> bs!333632 m!1515945))

(assert (=> bs!333632 m!1515145))

(assert (=> bs!333632 m!1515945))

(declare-fun m!1515947 () Bool)

(assert (=> bs!333632 m!1515947))

(declare-fun m!1515949 () Bool)

(assert (=> bs!333632 m!1515949))

(assert (=> bs!333632 m!1515943))

(assert (=> bs!333632 m!1515145))

(assert (=> bs!333632 m!1515137))

(assert (=> bs!333632 m!1515207))

(assert (=> bs!333632 m!1515207))

(assert (=> bs!333632 m!1515949))

(assert (=> b!1353383 d!383380))

(declare-fun d!383382 () Bool)

(declare-fun lt!448212 () Bool)

(assert (=> d!383382 (= lt!448212 (select (content!1983 lt!447984) lt!447989))))

(declare-fun e!866575 () Bool)

(assert (=> d!383382 (= lt!448212 e!866575)))

(declare-fun res!609979 () Bool)

(assert (=> d!383382 (=> (not res!609979) (not e!866575))))

(assert (=> d!383382 (= res!609979 ((_ is Cons!13797) lt!447984))))

(assert (=> d!383382 (= (contains!2547 lt!447984 lt!447989) lt!448212)))

(declare-fun b!1353976 () Bool)

(declare-fun e!866576 () Bool)

(assert (=> b!1353976 (= e!866575 e!866576)))

(declare-fun res!609978 () Bool)

(assert (=> b!1353976 (=> res!609978 e!866576)))

(assert (=> b!1353976 (= res!609978 (= (h!19198 lt!447984) lt!447989))))

(declare-fun b!1353977 () Bool)

(assert (=> b!1353977 (= e!866576 (contains!2547 (t!120228 lt!447984) lt!447989))))

(assert (= (and d!383382 res!609979) b!1353976))

(assert (= (and b!1353976 (not res!609978)) b!1353977))

(assert (=> d!383382 m!1515753))

(declare-fun m!1515951 () Bool)

(assert (=> d!383382 m!1515951))

(declare-fun m!1515953 () Bool)

(assert (=> b!1353977 m!1515953))

(assert (=> b!1353362 d!383382))

(declare-fun b!1353988 () Bool)

(declare-fun b_free!32971 () Bool)

(declare-fun b_next!33675 () Bool)

(assert (=> b!1353988 (= b_free!32971 (not b_next!33675))))

(declare-fun tp!391033 () Bool)

(declare-fun b_and!90667 () Bool)

(assert (=> b!1353988 (= tp!391033 b_and!90667)))

(declare-fun b_free!32973 () Bool)

(declare-fun b_next!33677 () Bool)

(assert (=> b!1353988 (= b_free!32973 (not b_next!33677))))

(declare-fun tb!71181 () Bool)

(declare-fun t!120265 () Bool)

(assert (=> (and b!1353988 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) t!120265) tb!71181))

(declare-fun result!86518 () Bool)

(assert (= result!86518 result!86478))

(assert (=> d!383178 t!120265))

(declare-fun tb!71183 () Bool)

(declare-fun t!120267 () Bool)

(assert (=> (and b!1353988 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) t!120267) tb!71183))

(declare-fun result!86520 () Bool)

(assert (= result!86520 result!86500))

(assert (=> b!1353690 t!120267))

(assert (=> b!1353705 t!120265))

(assert (=> d!383368 t!120267))

(declare-fun tp!391032 () Bool)

(declare-fun b_and!90669 () Bool)

(assert (=> b!1353988 (= tp!391032 (and (=> t!120265 result!86518) (=> t!120267 result!86520) b_and!90669))))

(declare-fun e!866585 () Bool)

(assert (=> b!1353988 (= e!866585 (and tp!391033 tp!391032))))

(declare-fun tp!391034 () Bool)

(declare-fun b!1353987 () Bool)

(declare-fun e!866588 () Bool)

(assert (=> b!1353987 (= e!866588 (and tp!391034 (inv!18136 (tag!2653 (h!19199 (t!120229 rules!2550)))) (inv!18139 (transformation!2391 (h!19199 (t!120229 rules!2550)))) e!866585))))

(declare-fun b!1353986 () Bool)

(declare-fun e!866586 () Bool)

(declare-fun tp!391035 () Bool)

(assert (=> b!1353986 (= e!866586 (and e!866588 tp!391035))))

(assert (=> b!1353372 (= tp!390964 e!866586)))

(assert (= b!1353987 b!1353988))

(assert (= b!1353986 b!1353987))

(assert (= (and b!1353372 ((_ is Cons!13798) (t!120229 rules!2550))) b!1353986))

(declare-fun m!1515955 () Bool)

(assert (=> b!1353987 m!1515955))

(declare-fun m!1515957 () Bool)

(assert (=> b!1353987 m!1515957))

(declare-fun b!1353993 () Bool)

(declare-fun e!866591 () Bool)

(declare-fun tp_is_empty!6719 () Bool)

(declare-fun tp!391038 () Bool)

(assert (=> b!1353993 (= e!866591 (and tp_is_empty!6719 tp!391038))))

(assert (=> b!1353364 (= tp!390967 e!866591)))

(assert (= (and b!1353364 ((_ is Cons!13797) (originalCharacters!3253 t1!34))) b!1353993))

(declare-fun b!1353994 () Bool)

(declare-fun e!866592 () Bool)

(declare-fun tp!391039 () Bool)

(assert (=> b!1353994 (= e!866592 (and tp_is_empty!6719 tp!391039))))

(assert (=> b!1353351 (= tp!390970 e!866592)))

(assert (= (and b!1353351 ((_ is Cons!13797) (originalCharacters!3253 t2!34))) b!1353994))

(declare-fun e!866595 () Bool)

(assert (=> b!1353367 (= tp!390971 e!866595)))

(declare-fun b!1354006 () Bool)

(declare-fun tp!391054 () Bool)

(declare-fun tp!391052 () Bool)

(assert (=> b!1354006 (= e!866595 (and tp!391054 tp!391052))))

(declare-fun b!1354005 () Bool)

(assert (=> b!1354005 (= e!866595 tp_is_empty!6719)))

(declare-fun b!1354008 () Bool)

(declare-fun tp!391050 () Bool)

(declare-fun tp!391051 () Bool)

(assert (=> b!1354008 (= e!866595 (and tp!391050 tp!391051))))

(declare-fun b!1354007 () Bool)

(declare-fun tp!391053 () Bool)

(assert (=> b!1354007 (= e!866595 tp!391053)))

(assert (= (and b!1353367 ((_ is ElementMatch!3705) (regex!2391 (rule!4138 t1!34)))) b!1354005))

(assert (= (and b!1353367 ((_ is Concat!6187) (regex!2391 (rule!4138 t1!34)))) b!1354006))

(assert (= (and b!1353367 ((_ is Star!3705) (regex!2391 (rule!4138 t1!34)))) b!1354007))

(assert (= (and b!1353367 ((_ is Union!3705) (regex!2391 (rule!4138 t1!34)))) b!1354008))

(declare-fun e!866596 () Bool)

(assert (=> b!1353357 (= tp!390968 e!866596)))

(declare-fun b!1354010 () Bool)

(declare-fun tp!391059 () Bool)

(declare-fun tp!391057 () Bool)

(assert (=> b!1354010 (= e!866596 (and tp!391059 tp!391057))))

(declare-fun b!1354009 () Bool)

(assert (=> b!1354009 (= e!866596 tp_is_empty!6719)))

(declare-fun b!1354012 () Bool)

(declare-fun tp!391055 () Bool)

(declare-fun tp!391056 () Bool)

(assert (=> b!1354012 (= e!866596 (and tp!391055 tp!391056))))

(declare-fun b!1354011 () Bool)

(declare-fun tp!391058 () Bool)

(assert (=> b!1354011 (= e!866596 tp!391058)))

(assert (= (and b!1353357 ((_ is ElementMatch!3705) (regex!2391 (rule!4138 t2!34)))) b!1354009))

(assert (= (and b!1353357 ((_ is Concat!6187) (regex!2391 (rule!4138 t2!34)))) b!1354010))

(assert (= (and b!1353357 ((_ is Star!3705) (regex!2391 (rule!4138 t2!34)))) b!1354011))

(assert (= (and b!1353357 ((_ is Union!3705) (regex!2391 (rule!4138 t2!34)))) b!1354012))

(declare-fun e!866597 () Bool)

(assert (=> b!1353368 (= tp!390969 e!866597)))

(declare-fun b!1354014 () Bool)

(declare-fun tp!391064 () Bool)

(declare-fun tp!391062 () Bool)

(assert (=> b!1354014 (= e!866597 (and tp!391064 tp!391062))))

(declare-fun b!1354013 () Bool)

(assert (=> b!1354013 (= e!866597 tp_is_empty!6719)))

(declare-fun b!1354016 () Bool)

(declare-fun tp!391060 () Bool)

(declare-fun tp!391061 () Bool)

(assert (=> b!1354016 (= e!866597 (and tp!391060 tp!391061))))

(declare-fun b!1354015 () Bool)

(declare-fun tp!391063 () Bool)

(assert (=> b!1354015 (= e!866597 tp!391063)))

(assert (= (and b!1353368 ((_ is ElementMatch!3705) (regex!2391 (h!19199 rules!2550)))) b!1354013))

(assert (= (and b!1353368 ((_ is Concat!6187) (regex!2391 (h!19199 rules!2550)))) b!1354014))

(assert (= (and b!1353368 ((_ is Star!3705) (regex!2391 (h!19199 rules!2550)))) b!1354015))

(assert (= (and b!1353368 ((_ is Union!3705) (regex!2391 (h!19199 rules!2550)))) b!1354016))

(declare-fun b_lambda!40623 () Bool)

(assert (= b_lambda!40565 (or (and b!1353360 b_free!32957) (and b!1353353 b_free!32961 (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) (and b!1353374 b_free!32965 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) (and b!1353988 b_free!32973 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) b_lambda!40623)))

(declare-fun b_lambda!40625 () Bool)

(assert (= b_lambda!40613 (or b!1353381 b_lambda!40625)))

(declare-fun bs!333633 () Bool)

(declare-fun d!383384 () Bool)

(assert (= bs!333633 (and d!383384 b!1353381)))

(assert (=> bs!333633 (= (dynLambda!6159 lambda!57091 lt!448186) (= (regex!2391 lt!448186) lt!447982))))

(assert (=> d!383338 d!383384))

(declare-fun b_lambda!40627 () Bool)

(assert (= b_lambda!40611 (or b!1353381 b_lambda!40627)))

(declare-fun bs!333634 () Bool)

(declare-fun d!383386 () Bool)

(assert (= bs!333634 (and d!383386 b!1353381)))

(assert (=> bs!333634 (= (dynLambda!6159 lambda!57091 (h!19199 rules!2550)) (= (regex!2391 (h!19199 rules!2550)) lt!447982))))

(assert (=> b!1353905 d!383386))

(declare-fun b_lambda!40629 () Bool)

(assert (= b_lambda!40583 (or (and b!1353360 b_free!32957) (and b!1353353 b_free!32961 (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) (and b!1353374 b_free!32965 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) (and b!1353988 b_free!32973 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t2!34))))) b_lambda!40629)))

(declare-fun b_lambda!40631 () Bool)

(assert (= b_lambda!40589 (or b!1353359 b_lambda!40631)))

(declare-fun bs!333635 () Bool)

(declare-fun d!383388 () Bool)

(assert (= bs!333635 (and d!383388 b!1353359)))

(declare-fun res!609980 () Bool)

(declare-fun e!866598 () Bool)

(assert (=> bs!333635 (=> (not res!609980) (not e!866598))))

(assert (=> bs!333635 (= res!609980 (matchR!1698 lt!447993 lt!448162))))

(assert (=> bs!333635 (= (dynLambda!6158 lambda!57088 lt!448162) e!866598)))

(declare-fun b!1354017 () Bool)

(assert (=> b!1354017 (= e!866598 (isPrefix!1115 lt!447991 lt!448162))))

(assert (= (and bs!333635 res!609980) b!1354017))

(declare-fun m!1515959 () Bool)

(assert (=> bs!333635 m!1515959))

(declare-fun m!1515961 () Bool)

(assert (=> b!1354017 m!1515961))

(assert (=> d!383308 d!383388))

(declare-fun b_lambda!40633 () Bool)

(assert (= b_lambda!40617 (or b!1353366 b_lambda!40633)))

(declare-fun bs!333636 () Bool)

(declare-fun d!383390 () Bool)

(assert (= bs!333636 (and d!383390 b!1353366)))

(declare-fun res!609981 () Bool)

(declare-fun e!866599 () Bool)

(assert (=> bs!333636 (=> (not res!609981) (not e!866599))))

(assert (=> bs!333636 (= res!609981 (validRegex!1605 (h!19200 (map!3047 rules!2550 lambda!57089))))))

(assert (=> bs!333636 (= (dynLambda!6162 lambda!57090 (h!19200 (map!3047 rules!2550 lambda!57089))) e!866599)))

(declare-fun b!1354018 () Bool)

(assert (=> b!1354018 (= e!866599 (matchR!1698 (h!19200 (map!3047 rules!2550 lambda!57089)) lt!447984))))

(assert (= (and bs!333636 res!609981) b!1354018))

(declare-fun m!1515963 () Bool)

(assert (=> bs!333636 m!1515963))

(declare-fun m!1515965 () Bool)

(assert (=> b!1354018 m!1515965))

(assert (=> b!1353954 d!383390))

(declare-fun b_lambda!40635 () Bool)

(assert (= b_lambda!40581 (or (and b!1353360 b_free!32957 (= (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) (and b!1353353 b_free!32961) (and b!1353374 b_free!32965 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) (and b!1353988 b_free!32973 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) b_lambda!40635)))

(declare-fun b_lambda!40637 () Bool)

(assert (= b_lambda!40621 (or (and b!1353360 b_free!32957 (= (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) (and b!1353353 b_free!32961) (and b!1353374 b_free!32965 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) (and b!1353988 b_free!32973 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 t1!34))))) b_lambda!40637)))

(declare-fun b_lambda!40639 () Bool)

(assert (= b_lambda!40615 (or b!1353366 b_lambda!40639)))

(declare-fun bs!333637 () Bool)

(declare-fun d!383392 () Bool)

(assert (= bs!333637 (and d!383392 b!1353366)))

(assert (=> bs!333637 (= (dynLambda!6161 lambda!57089 (h!19199 rules!2550)) (regex!2391 (h!19199 rules!2550)))))

(assert (=> b!1353935 d!383392))

(declare-fun b_lambda!40641 () Bool)

(assert (= b_lambda!40619 (or b!1353366 b_lambda!40641)))

(declare-fun bs!333638 () Bool)

(declare-fun d!383394 () Bool)

(assert (= bs!333638 (and d!383394 b!1353366)))

(declare-fun res!609982 () Bool)

(declare-fun e!866600 () Bool)

(assert (=> bs!333638 (=> (not res!609982) (not e!866600))))

(assert (=> bs!333638 (= res!609982 (validRegex!1605 lt!448204))))

(assert (=> bs!333638 (= (dynLambda!6162 lambda!57090 lt!448204) e!866600)))

(declare-fun b!1354019 () Bool)

(assert (=> b!1354019 (= e!866600 (matchR!1698 lt!448204 lt!447984))))

(assert (= (and bs!333638 res!609982) b!1354019))

(declare-fun m!1515967 () Bool)

(assert (=> bs!333638 m!1515967))

(declare-fun m!1515969 () Bool)

(assert (=> b!1354019 m!1515969))

(assert (=> d!383364 d!383394))

(check-sat (not b!1354017) b_and!90603 (not b!1353761) (not d!383290) (not b_lambda!40635) (not b_next!33659) (not b!1353452) (not b!1353620) (not b!1353691) (not d!383300) (not b!1354012) (not b!1353698) (not b!1353786) (not b!1353969) (not b!1353921) (not b!1353753) (not d!383178) (not b!1354006) (not b!1353706) (not b!1354018) (not d!383344) (not b!1353724) (not d!383204) (not b!1353680) (not d!383194) (not d!383176) b_and!90611 (not b_next!33669) (not b!1353925) (not b!1353705) (not d!383318) (not d!383348) (not d!383308) (not b!1353682) (not d!383302) (not b!1353451) (not b!1353721) (not b_lambda!40627) (not b!1353763) (not d!383382) (not b_next!33677) (not d!383298) (not b!1353994) (not d!383284) b_and!90607 (not d!383372) (not d!383310) (not d!383342) (not d!383336) (not d!383340) (not b!1353742) (not d!383360) (not bs!333638) (not b!1353975) (not b!1354019) (not b!1353941) (not b!1353833) (not b!1353741) (not d!383296) (not b!1353828) (not d!383362) (not d!383354) (not d!383376) (not b!1353959) (not b!1353679) (not d!383364) (not d!383356) (not d!383208) (not b!1353924) (not b!1353977) (not b!1353824) (not d!383338) (not b!1353971) (not bs!333635) (not b!1353903) (not d!383206) b_and!90669 (not bs!333636) (not b!1354014) (not d!383286) (not b_lambda!40641) (not b!1353923) (not b!1353776) (not d!383322) (not b!1353822) (not b!1353676) (not b!1353902) (not b_next!33667) (not b!1354015) (not b!1353678) (not b_next!33663) b_and!90661 (not b!1353920) (not b!1353918) (not b!1353970) (not d!383380) (not bm!91139) (not b!1353961) (not d!383366) (not b_lambda!40629) (not b!1353752) (not d!383370) (not b!1353779) (not d!383292) b_and!90665 (not b!1353674) (not b!1353993) (not b_lambda!40639) (not b_lambda!40631) (not b_next!33675) (not b!1353759) (not b!1353823) (not b!1353740) (not d!383306) (not d!383374) (not b!1353681) (not b!1353917) (not b!1353964) (not b!1353727) (not b_lambda!40633) (not b!1353690) (not b!1353677) (not b!1354008) (not b!1353821) (not b!1353987) (not b!1353962) (not b!1353622) (not b!1354016) (not b!1353762) (not tb!71153) (not b!1354007) (not b!1353621) (not b!1353986) b_and!90667 (not b_next!33665) b_and!90663 (not b_lambda!40637) (not b!1353780) (not b!1353955) (not d!383316) (not b_lambda!40625) (not b!1353718) (not b!1353957) (not b_lambda!40623) (not d!383192) (not bm!91142) (not d!383368) (not tb!71171) (not b!1353935) tp_is_empty!6719 (not d!383352) (not b!1353442) (not b_next!33661) (not d!383254) (not b!1353765) (not d!383312) (not b!1354010) (not d!383358) (not b!1353888) (not d!383282) (not b!1354011) (not d!383304) (not b!1353906) (not b!1353974))
(check-sat (not b_next!33677) b_and!90607 b_and!90669 b_and!90661 b_and!90663 (not b_next!33661) (not b_next!33659) b_and!90603 b_and!90611 (not b_next!33669) (not b_next!33663) (not b_next!33667) b_and!90665 (not b_next!33675) b_and!90667 (not b_next!33665))
(get-model)

(declare-fun d!383522 () Bool)

(declare-fun c!222200 () Bool)

(assert (=> d!383522 (= c!222200 ((_ is Node!4544) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(declare-fun e!866776 () Bool)

(assert (=> d!383522 (= (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))) e!866776)))

(declare-fun b!1354324 () Bool)

(declare-fun inv!18145 (Conc!4544) Bool)

(assert (=> b!1354324 (= e!866776 (inv!18145 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(declare-fun b!1354325 () Bool)

(declare-fun e!866777 () Bool)

(assert (=> b!1354325 (= e!866776 e!866777)))

(declare-fun res!610096 () Bool)

(assert (=> b!1354325 (= res!610096 (not ((_ is Leaf!6936) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))))))

(assert (=> b!1354325 (=> res!610096 e!866777)))

(declare-fun b!1354326 () Bool)

(declare-fun inv!18146 (Conc!4544) Bool)

(assert (=> b!1354326 (= e!866777 (inv!18146 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(assert (= (and d!383522 c!222200) b!1354324))

(assert (= (and d!383522 (not c!222200)) b!1354325))

(assert (= (and b!1354325 (not res!610096)) b!1354326))

(declare-fun m!1516371 () Bool)

(assert (=> b!1354324 m!1516371))

(declare-fun m!1516377 () Bool)

(assert (=> b!1354326 m!1516377))

(assert (=> b!1353698 d!383522))

(declare-fun d!383530 () Bool)

(declare-fun charsToInt!0 (List!13862) (_ BitVec 32))

(assert (=> d!383530 (= (inv!16 (value!77776 t2!34)) (= (charsToInt!0 (text!17814 (value!77776 t2!34))) (value!77767 (value!77776 t2!34))))))

(declare-fun bs!333681 () Bool)

(assert (= bs!333681 d!383530))

(declare-fun m!1516387 () Bool)

(assert (=> bs!333681 m!1516387))

(assert (=> b!1353776 d!383530))

(declare-fun lt!448384 () BalanceConc!9028)

(declare-fun e!866793 () Bool)

(declare-fun b!1354359 () Bool)

(assert (=> b!1354359 (= e!866793 (= (list!5278 lt!448384) (++!3546 (list!5278 (charsOf!1363 t1!34)) (list!5278 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))))))

(declare-fun b!1354356 () Bool)

(declare-fun res!610112 () Bool)

(assert (=> b!1354356 (=> (not res!610112) (not e!866793))))

(declare-fun isBalanced!1326 (Conc!4544) Bool)

(declare-fun ++!3550 (Conc!4544 Conc!4544) Conc!4544)

(assert (=> b!1354356 (= res!610112 (isBalanced!1326 (++!3550 (c!221992 (charsOf!1363 t1!34)) (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))))))

(declare-fun b!1354358 () Bool)

(declare-fun res!610115 () Bool)

(assert (=> b!1354358 (=> (not res!610115) (not e!866793))))

(declare-fun height!648 (Conc!4544) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1354358 (= res!610115 (>= (height!648 (++!3550 (c!221992 (charsOf!1363 t1!34)) (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))) (max!0 (height!648 (c!221992 (charsOf!1363 t1!34))) (height!648 (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0)))))))))

(declare-fun b!1354357 () Bool)

(declare-fun res!610113 () Bool)

(assert (=> b!1354357 (=> (not res!610113) (not e!866793))))

(assert (=> b!1354357 (= res!610113 (<= (height!648 (++!3550 (c!221992 (charsOf!1363 t1!34)) (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))) (+ (max!0 (height!648 (c!221992 (charsOf!1363 t1!34))) (height!648 (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))) 1)))))

(declare-fun d!383538 () Bool)

(assert (=> d!383538 e!866793))

(declare-fun res!610114 () Bool)

(assert (=> d!383538 (=> (not res!610114) (not e!866793))))

(declare-fun appendAssocInst!272 (Conc!4544 Conc!4544) Bool)

(assert (=> d!383538 (= res!610114 (appendAssocInst!272 (c!221992 (charsOf!1363 t1!34)) (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0)))))))

(assert (=> d!383538 (= lt!448384 (BalanceConc!9029 (++!3550 (c!221992 (charsOf!1363 t1!34)) (c!221992 (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))))))

(assert (=> d!383538 (= (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))) lt!448384)))

(assert (= (and d!383538 res!610114) b!1354356))

(assert (= (and b!1354356 res!610112) b!1354357))

(assert (= (and b!1354357 res!610113) b!1354358))

(assert (= (and b!1354358 res!610115) b!1354359))

(declare-fun m!1516399 () Bool)

(assert (=> d!383538 m!1516399))

(declare-fun m!1516401 () Bool)

(assert (=> d!383538 m!1516401))

(assert (=> b!1354358 m!1516401))

(declare-fun m!1516403 () Bool)

(assert (=> b!1354358 m!1516403))

(declare-fun m!1516405 () Bool)

(assert (=> b!1354358 m!1516405))

(declare-fun m!1516407 () Bool)

(assert (=> b!1354358 m!1516407))

(declare-fun m!1516409 () Bool)

(assert (=> b!1354358 m!1516409))

(assert (=> b!1354358 m!1516407))

(assert (=> b!1354358 m!1516405))

(assert (=> b!1354358 m!1516401))

(declare-fun m!1516411 () Bool)

(assert (=> b!1354359 m!1516411))

(assert (=> b!1354359 m!1515137))

(declare-fun m!1516413 () Bool)

(assert (=> b!1354359 m!1516413))

(assert (=> b!1354359 m!1515943))

(declare-fun m!1516417 () Bool)

(assert (=> b!1354359 m!1516417))

(assert (=> b!1354359 m!1516413))

(assert (=> b!1354359 m!1516417))

(declare-fun m!1516423 () Bool)

(assert (=> b!1354359 m!1516423))

(assert (=> b!1354357 m!1516401))

(assert (=> b!1354357 m!1516403))

(assert (=> b!1354357 m!1516405))

(assert (=> b!1354357 m!1516407))

(assert (=> b!1354357 m!1516409))

(assert (=> b!1354357 m!1516407))

(assert (=> b!1354357 m!1516405))

(assert (=> b!1354357 m!1516401))

(assert (=> b!1354356 m!1516401))

(assert (=> b!1354356 m!1516401))

(declare-fun m!1516427 () Bool)

(assert (=> b!1354356 m!1516427))

(assert (=> d!383380 d!383538))

(declare-fun d!383550 () Bool)

(declare-fun lt!448423 () Bool)

(assert (=> d!383550 (= lt!448423 (prefixMatch!214 (rulesRegex!274 thiss!19762 rules!2550) (list!5278 (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))))))))

(declare-datatypes ((Context!1188 0))(
  ( (Context!1189 (exprs!1094 List!13865)) )
))
(declare-fun prefixMatchZipperSequence!237 ((InoxSet Context!1188) BalanceConc!9028 Int) Bool)

(declare-fun focus!85 (Regex!3705) (InoxSet Context!1188))

(assert (=> d!383550 (= lt!448423 (prefixMatchZipperSequence!237 (focus!85 (rulesRegex!274 thiss!19762 rules!2550)) (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))) 0))))

(declare-fun lt!448416 () Unit!19941)

(declare-fun lt!448415 () Unit!19941)

(assert (=> d!383550 (= lt!448416 lt!448415)))

(declare-fun lt!448418 () List!13863)

(declare-fun lt!448417 () (InoxSet Context!1188))

(declare-fun prefixMatchZipper!65 ((InoxSet Context!1188) List!13863) Bool)

(assert (=> d!383550 (= (prefixMatch!214 (rulesRegex!274 thiss!19762 rules!2550) lt!448418) (prefixMatchZipper!65 lt!448417 lt!448418))))

(declare-datatypes ((List!13869 0))(
  ( (Nil!13803) (Cons!13803 (h!19204 Context!1188) (t!120336 List!13869)) )
))
(declare-fun lt!448420 () List!13869)

(declare-fun prefixMatchZipperRegexEquiv!65 ((InoxSet Context!1188) List!13869 Regex!3705 List!13863) Unit!19941)

(assert (=> d!383550 (= lt!448415 (prefixMatchZipperRegexEquiv!65 lt!448417 lt!448420 (rulesRegex!274 thiss!19762 rules!2550) lt!448418))))

(assert (=> d!383550 (= lt!448418 (list!5278 (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0)))))))

(declare-fun toList!749 ((InoxSet Context!1188)) List!13869)

(assert (=> d!383550 (= lt!448420 (toList!749 (focus!85 (rulesRegex!274 thiss!19762 rules!2550))))))

(assert (=> d!383550 (= lt!448417 (focus!85 (rulesRegex!274 thiss!19762 rules!2550)))))

(declare-fun lt!448422 () Unit!19941)

(declare-fun lt!448421 () Unit!19941)

(assert (=> d!383550 (= lt!448422 lt!448421)))

(declare-fun lt!448424 () (InoxSet Context!1188))

(declare-fun lt!448419 () Int)

(declare-fun dropList!391 (BalanceConc!9028 Int) List!13863)

(assert (=> d!383550 (= (prefixMatchZipper!65 lt!448424 (dropList!391 (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))) lt!448419)) (prefixMatchZipperSequence!237 lt!448424 (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))) lt!448419))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!65 ((InoxSet Context!1188) BalanceConc!9028 Int) Unit!19941)

(assert (=> d!383550 (= lt!448421 (lemmaprefixMatchZipperSequenceEquivalent!65 lt!448424 (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0))) lt!448419))))

(assert (=> d!383550 (= lt!448419 0)))

(assert (=> d!383550 (= lt!448424 (focus!85 (rulesRegex!274 thiss!19762 rules!2550)))))

(assert (=> d!383550 (validRegex!1605 (rulesRegex!274 thiss!19762 rules!2550))))

(assert (=> d!383550 (= (prefixMatchZipperSequence!236 (rulesRegex!274 thiss!19762 rules!2550) (++!3548 (charsOf!1363 t1!34) (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0)))) lt!448423)))

(declare-fun bs!333690 () Bool)

(assert (= bs!333690 d!383550))

(assert (=> bs!333690 m!1515945))

(declare-fun m!1516457 () Bool)

(assert (=> bs!333690 m!1516457))

(declare-fun m!1516459 () Bool)

(assert (=> bs!333690 m!1516459))

(assert (=> bs!333690 m!1515945))

(declare-fun m!1516461 () Bool)

(assert (=> bs!333690 m!1516461))

(assert (=> bs!333690 m!1515145))

(assert (=> bs!333690 m!1516459))

(assert (=> bs!333690 m!1515145))

(declare-fun m!1516463 () Bool)

(assert (=> bs!333690 m!1516463))

(assert (=> bs!333690 m!1515145))

(declare-fun m!1516465 () Bool)

(assert (=> bs!333690 m!1516465))

(assert (=> bs!333690 m!1515945))

(declare-fun m!1516467 () Bool)

(assert (=> bs!333690 m!1516467))

(declare-fun m!1516469 () Bool)

(assert (=> bs!333690 m!1516469))

(assert (=> bs!333690 m!1516459))

(declare-fun m!1516471 () Bool)

(assert (=> bs!333690 m!1516471))

(assert (=> bs!333690 m!1515945))

(declare-fun m!1516473 () Bool)

(assert (=> bs!333690 m!1516473))

(assert (=> bs!333690 m!1515945))

(declare-fun m!1516475 () Bool)

(assert (=> bs!333690 m!1516475))

(assert (=> bs!333690 m!1516467))

(declare-fun m!1516477 () Bool)

(assert (=> bs!333690 m!1516477))

(assert (=> bs!333690 m!1515145))

(assert (=> bs!333690 m!1516457))

(declare-fun m!1516479 () Bool)

(assert (=> bs!333690 m!1516479))

(assert (=> bs!333690 m!1515145))

(declare-fun m!1516481 () Bool)

(assert (=> bs!333690 m!1516481))

(assert (=> d!383380 d!383550))

(declare-fun d!383570 () Bool)

(declare-fun e!866811 () Bool)

(assert (=> d!383570 e!866811))

(declare-fun res!610129 () Bool)

(assert (=> d!383570 (=> (not res!610129) (not e!866811))))

(declare-fun lt!448427 () BalanceConc!9028)

(assert (=> d!383570 (= res!610129 (= (list!5278 lt!448427) (Cons!13797 (apply!3311 (charsOf!1363 t2!34) 0) Nil!13797)))))

(declare-fun singleton!431 (C!7700) BalanceConc!9028)

(assert (=> d!383570 (= lt!448427 (singleton!431 (apply!3311 (charsOf!1363 t2!34) 0)))))

(assert (=> d!383570 (= (singletonSeq!1010 (apply!3311 (charsOf!1363 t2!34) 0)) lt!448427)))

(declare-fun b!1354388 () Bool)

(assert (=> b!1354388 (= e!866811 (isBalanced!1326 (c!221992 lt!448427)))))

(assert (= (and d!383570 res!610129) b!1354388))

(declare-fun m!1516483 () Bool)

(assert (=> d!383570 m!1516483))

(assert (=> d!383570 m!1515949))

(declare-fun m!1516485 () Bool)

(assert (=> d!383570 m!1516485))

(declare-fun m!1516487 () Bool)

(assert (=> b!1354388 m!1516487))

(assert (=> d!383380 d!383570))

(assert (=> d!383380 d!383374))

(declare-fun d!383572 () Bool)

(declare-fun lt!448428 () C!7700)

(assert (=> d!383572 (= lt!448428 (apply!3318 (list!5278 (charsOf!1363 t2!34)) 0))))

(assert (=> d!383572 (= lt!448428 (apply!3319 (c!221992 (charsOf!1363 t2!34)) 0))))

(declare-fun e!866812 () Bool)

(assert (=> d!383572 e!866812))

(declare-fun res!610130 () Bool)

(assert (=> d!383572 (=> (not res!610130) (not e!866812))))

(assert (=> d!383572 (= res!610130 (<= 0 0))))

(assert (=> d!383572 (= (apply!3311 (charsOf!1363 t2!34) 0) lt!448428)))

(declare-fun b!1354389 () Bool)

(assert (=> b!1354389 (= e!866812 (< 0 (size!11270 (charsOf!1363 t2!34))))))

(assert (= (and d!383572 res!610130) b!1354389))

(assert (=> d!383572 m!1515207))

(declare-fun m!1516489 () Bool)

(assert (=> d!383572 m!1516489))

(assert (=> d!383572 m!1516489))

(declare-fun m!1516491 () Bool)

(assert (=> d!383572 m!1516491))

(declare-fun m!1516493 () Bool)

(assert (=> d!383572 m!1516493))

(assert (=> b!1354389 m!1515207))

(declare-fun m!1516495 () Bool)

(assert (=> b!1354389 m!1516495))

(assert (=> d!383380 d!383572))

(assert (=> d!383380 d!383368))

(assert (=> d!383380 d!383178))

(declare-fun d!383574 () Bool)

(assert (=> d!383574 (= ($colon$colon!187 (map!3047 (t!120229 rules!2550) lambda!57089) (dynLambda!6161 lambda!57089 (h!19199 rules!2550))) (Cons!13799 (dynLambda!6161 lambda!57089 (h!19199 rules!2550)) (map!3047 (t!120229 rules!2550) lambda!57089)))))

(assert (=> b!1353935 d!383574))

(declare-fun d!383576 () Bool)

(declare-fun lt!448429 () List!13865)

(assert (=> d!383576 (= (size!11281 lt!448429) (size!11282 (t!120229 rules!2550)))))

(declare-fun e!866813 () List!13865)

(assert (=> d!383576 (= lt!448429 e!866813)))

(declare-fun c!222217 () Bool)

(assert (=> d!383576 (= c!222217 ((_ is Nil!13798) (t!120229 rules!2550)))))

(assert (=> d!383576 (= (map!3047 (t!120229 rules!2550) lambda!57089) lt!448429)))

(declare-fun b!1354390 () Bool)

(assert (=> b!1354390 (= e!866813 Nil!13799)))

(declare-fun b!1354391 () Bool)

(assert (=> b!1354391 (= e!866813 ($colon$colon!187 (map!3047 (t!120229 (t!120229 rules!2550)) lambda!57089) (dynLambda!6161 lambda!57089 (h!19199 (t!120229 rules!2550)))))))

(assert (= (and d!383576 c!222217) b!1354390))

(assert (= (and d!383576 (not c!222217)) b!1354391))

(declare-fun b_lambda!40653 () Bool)

(assert (=> (not b_lambda!40653) (not b!1354391)))

(declare-fun m!1516497 () Bool)

(assert (=> d!383576 m!1516497))

(declare-fun m!1516499 () Bool)

(assert (=> d!383576 m!1516499))

(declare-fun m!1516501 () Bool)

(assert (=> b!1354391 m!1516501))

(declare-fun m!1516503 () Bool)

(assert (=> b!1354391 m!1516503))

(assert (=> b!1354391 m!1516501))

(assert (=> b!1354391 m!1516503))

(declare-fun m!1516505 () Bool)

(assert (=> b!1354391 m!1516505))

(assert (=> b!1353935 d!383576))

(declare-fun d!383578 () Bool)

(declare-fun lt!448432 () Int)

(assert (=> d!383578 (>= lt!448432 0)))

(declare-fun e!866816 () Int)

(assert (=> d!383578 (= lt!448432 e!866816)))

(declare-fun c!222220 () Bool)

(assert (=> d!383578 (= c!222220 ((_ is Nil!13797) (list!5278 lt!447988)))))

(assert (=> d!383578 (= (size!11276 (list!5278 lt!447988)) lt!448432)))

(declare-fun b!1354396 () Bool)

(assert (=> b!1354396 (= e!866816 0)))

(declare-fun b!1354397 () Bool)

(assert (=> b!1354397 (= e!866816 (+ 1 (size!11276 (t!120228 (list!5278 lt!447988)))))))

(assert (= (and d!383578 c!222220) b!1354396))

(assert (= (and d!383578 (not c!222220)) b!1354397))

(declare-fun m!1516507 () Bool)

(assert (=> b!1354397 m!1516507))

(assert (=> d!383176 d!383578))

(declare-fun d!383580 () Bool)

(assert (=> d!383580 (= (list!5278 lt!447988) (list!5282 (c!221992 lt!447988)))))

(declare-fun bs!333691 () Bool)

(assert (= bs!333691 d!383580))

(declare-fun m!1516509 () Bool)

(assert (=> bs!333691 m!1516509))

(assert (=> d!383176 d!383580))

(declare-fun d!383582 () Bool)

(declare-fun lt!448435 () Int)

(assert (=> d!383582 (= lt!448435 (size!11276 (list!5282 (c!221992 lt!447988))))))

(assert (=> d!383582 (= lt!448435 (ite ((_ is Empty!4544) (c!221992 lt!447988)) 0 (ite ((_ is Leaf!6936) (c!221992 lt!447988)) (csize!9319 (c!221992 lt!447988)) (csize!9318 (c!221992 lt!447988)))))))

(assert (=> d!383582 (= (size!11277 (c!221992 lt!447988)) lt!448435)))

(declare-fun bs!333692 () Bool)

(assert (= bs!333692 d!383582))

(assert (=> bs!333692 m!1516509))

(assert (=> bs!333692 m!1516509))

(declare-fun m!1516511 () Bool)

(assert (=> bs!333692 m!1516511))

(assert (=> d!383176 d!383582))

(declare-fun d!383584 () Bool)

(declare-fun res!610133 () List!13863)

(assert (=> d!383584 (dynLambda!6158 lambda!57088 res!610133)))

(declare-fun e!866819 () Bool)

(assert (=> d!383584 e!866819))

(assert (=> d!383584 (= (choose!8326 lambda!57088) res!610133)))

(declare-fun b!1354400 () Bool)

(declare-fun tp!391068 () Bool)

(assert (=> b!1354400 (= e!866819 (and tp_is_empty!6719 tp!391068))))

(assert (= (and d!383584 ((_ is Cons!13797) res!610133)) b!1354400))

(declare-fun b_lambda!40655 () Bool)

(assert (=> (not b_lambda!40655) (not d!383584)))

(declare-fun m!1516513 () Bool)

(assert (=> d!383584 m!1516513))

(assert (=> d!383308 d!383584))

(assert (=> d!383308 d!383192))

(declare-fun d!383586 () Bool)

(declare-fun e!866820 () Bool)

(assert (=> d!383586 e!866820))

(declare-fun res!610139 () Bool)

(assert (=> d!383586 (=> res!610139 e!866820)))

(declare-fun lt!448438 () Option!2644)

(assert (=> d!383586 (= res!610139 (isEmpty!8260 lt!448438))))

(declare-fun e!866822 () Option!2644)

(assert (=> d!383586 (= lt!448438 e!866822)))

(declare-fun c!222221 () Bool)

(assert (=> d!383586 (= c!222221 (and ((_ is Cons!13798) (t!120229 rules!2550)) ((_ is Nil!13798) (t!120229 (t!120229 rules!2550)))))))

(declare-fun lt!448436 () Unit!19941)

(declare-fun lt!448440 () Unit!19941)

(assert (=> d!383586 (= lt!448436 lt!448440)))

(assert (=> d!383586 (isPrefix!1115 lt!447994 lt!447994)))

(assert (=> d!383586 (= lt!448440 (lemmaIsPrefixRefl!777 lt!447994 lt!447994))))

(assert (=> d!383586 (rulesValidInductive!756 thiss!19762 (t!120229 rules!2550))))

(assert (=> d!383586 (= (maxPrefix!1068 thiss!19762 (t!120229 rules!2550) lt!447994) lt!448438)))

(declare-fun b!1354401 () Bool)

(declare-fun e!866821 () Bool)

(assert (=> b!1354401 (= e!866820 e!866821)))

(declare-fun res!610138 () Bool)

(assert (=> b!1354401 (=> (not res!610138) (not e!866821))))

(assert (=> b!1354401 (= res!610138 (isDefined!2203 lt!448438))))

(declare-fun b!1354402 () Bool)

(declare-fun call!91181 () Option!2644)

(assert (=> b!1354402 (= e!866822 call!91181)))

(declare-fun b!1354403 () Bool)

(declare-fun res!610136 () Bool)

(assert (=> b!1354403 (=> (not res!610136) (not e!866821))))

(assert (=> b!1354403 (= res!610136 (matchR!1698 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448438)))) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448438))))))))

(declare-fun b!1354404 () Bool)

(declare-fun res!610135 () Bool)

(assert (=> b!1354404 (=> (not res!610135) (not e!866821))))

(assert (=> b!1354404 (= res!610135 (= (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448438)))) (originalCharacters!3253 (_1!7571 (get!4324 lt!448438)))))))

(declare-fun b!1354405 () Bool)

(declare-fun res!610137 () Bool)

(assert (=> b!1354405 (=> (not res!610137) (not e!866821))))

(assert (=> b!1354405 (= res!610137 (= (++!3546 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448438)))) (_2!7571 (get!4324 lt!448438))) lt!447994))))

(declare-fun b!1354406 () Bool)

(declare-fun res!610140 () Bool)

(assert (=> b!1354406 (=> (not res!610140) (not e!866821))))

(assert (=> b!1354406 (= res!610140 (= (value!77776 (_1!7571 (get!4324 lt!448438))) (apply!3317 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448438)))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448438)))))))))

(declare-fun b!1354407 () Bool)

(declare-fun res!610134 () Bool)

(assert (=> b!1354407 (=> (not res!610134) (not e!866821))))

(assert (=> b!1354407 (= res!610134 (< (size!11276 (_2!7571 (get!4324 lt!448438))) (size!11276 lt!447994)))))

(declare-fun bm!91176 () Bool)

(assert (=> bm!91176 (= call!91181 (maxPrefixOneRule!603 thiss!19762 (h!19199 (t!120229 rules!2550)) lt!447994))))

(declare-fun b!1354408 () Bool)

(declare-fun lt!448437 () Option!2644)

(declare-fun lt!448439 () Option!2644)

(assert (=> b!1354408 (= e!866822 (ite (and ((_ is None!2643) lt!448437) ((_ is None!2643) lt!448439)) None!2643 (ite ((_ is None!2643) lt!448439) lt!448437 (ite ((_ is None!2643) lt!448437) lt!448439 (ite (>= (size!11269 (_1!7571 (v!21356 lt!448437))) (size!11269 (_1!7571 (v!21356 lt!448439)))) lt!448437 lt!448439)))))))

(assert (=> b!1354408 (= lt!448437 call!91181)))

(assert (=> b!1354408 (= lt!448439 (maxPrefix!1068 thiss!19762 (t!120229 (t!120229 rules!2550)) lt!447994))))

(declare-fun b!1354409 () Bool)

(assert (=> b!1354409 (= e!866821 (contains!2549 (t!120229 rules!2550) (rule!4138 (_1!7571 (get!4324 lt!448438)))))))

(assert (= (and d!383586 c!222221) b!1354402))

(assert (= (and d!383586 (not c!222221)) b!1354408))

(assert (= (or b!1354402 b!1354408) bm!91176))

(assert (= (and d!383586 (not res!610139)) b!1354401))

(assert (= (and b!1354401 res!610138) b!1354404))

(assert (= (and b!1354404 res!610135) b!1354407))

(assert (= (and b!1354407 res!610134) b!1354405))

(assert (= (and b!1354405 res!610137) b!1354406))

(assert (= (and b!1354406 res!610140) b!1354403))

(assert (= (and b!1354403 res!610136) b!1354409))

(declare-fun m!1516515 () Bool)

(assert (=> b!1354404 m!1516515))

(declare-fun m!1516517 () Bool)

(assert (=> b!1354404 m!1516517))

(assert (=> b!1354404 m!1516517))

(declare-fun m!1516519 () Bool)

(assert (=> b!1354404 m!1516519))

(declare-fun m!1516521 () Bool)

(assert (=> b!1354401 m!1516521))

(assert (=> b!1354405 m!1516515))

(assert (=> b!1354405 m!1516517))

(assert (=> b!1354405 m!1516517))

(assert (=> b!1354405 m!1516519))

(assert (=> b!1354405 m!1516519))

(declare-fun m!1516523 () Bool)

(assert (=> b!1354405 m!1516523))

(assert (=> b!1354406 m!1516515))

(declare-fun m!1516525 () Bool)

(assert (=> b!1354406 m!1516525))

(assert (=> b!1354406 m!1516525))

(declare-fun m!1516527 () Bool)

(assert (=> b!1354406 m!1516527))

(assert (=> b!1354403 m!1516515))

(assert (=> b!1354403 m!1516517))

(assert (=> b!1354403 m!1516517))

(assert (=> b!1354403 m!1516519))

(assert (=> b!1354403 m!1516519))

(declare-fun m!1516529 () Bool)

(assert (=> b!1354403 m!1516529))

(declare-fun m!1516531 () Bool)

(assert (=> bm!91176 m!1516531))

(assert (=> b!1354407 m!1516515))

(declare-fun m!1516533 () Bool)

(assert (=> b!1354407 m!1516533))

(assert (=> b!1354407 m!1515633))

(declare-fun m!1516535 () Bool)

(assert (=> b!1354408 m!1516535))

(declare-fun m!1516537 () Bool)

(assert (=> d!383586 m!1516537))

(assert (=> d!383586 m!1515639))

(assert (=> d!383586 m!1515641))

(declare-fun m!1516539 () Bool)

(assert (=> d!383586 m!1516539))

(assert (=> b!1354409 m!1516515))

(declare-fun m!1516541 () Bool)

(assert (=> b!1354409 m!1516541))

(assert (=> b!1353681 d!383586))

(declare-fun b!1354437 () Bool)

(declare-fun res!610163 () Bool)

(declare-fun e!866839 () Bool)

(assert (=> b!1354437 (=> (not res!610163) (not e!866839))))

(assert (=> b!1354437 (= res!610163 (= (head!2419 lt!447991) (head!2419 lt!448162)))))

(declare-fun b!1354436 () Bool)

(declare-fun e!866837 () Bool)

(assert (=> b!1354436 (= e!866837 e!866839)))

(declare-fun res!610166 () Bool)

(assert (=> b!1354436 (=> (not res!610166) (not e!866839))))

(assert (=> b!1354436 (= res!610166 (not ((_ is Nil!13797) lt!448162)))))

(declare-fun d!383588 () Bool)

(declare-fun e!866838 () Bool)

(assert (=> d!383588 e!866838))

(declare-fun res!610164 () Bool)

(assert (=> d!383588 (=> res!610164 e!866838)))

(declare-fun lt!448453 () Bool)

(assert (=> d!383588 (= res!610164 (not lt!448453))))

(assert (=> d!383588 (= lt!448453 e!866837)))

(declare-fun res!610165 () Bool)

(assert (=> d!383588 (=> res!610165 e!866837)))

(assert (=> d!383588 (= res!610165 ((_ is Nil!13797) lt!447991))))

(assert (=> d!383588 (= (isPrefix!1115 lt!447991 lt!448162) lt!448453)))

(declare-fun b!1354439 () Bool)

(assert (=> b!1354439 (= e!866838 (>= (size!11276 lt!448162) (size!11276 lt!447991)))))

(declare-fun b!1354438 () Bool)

(assert (=> b!1354438 (= e!866839 (isPrefix!1115 (tail!1952 lt!447991) (tail!1952 lt!448162)))))

(assert (= (and d!383588 (not res!610165)) b!1354436))

(assert (= (and b!1354436 res!610166) b!1354437))

(assert (= (and b!1354437 res!610163) b!1354438))

(assert (= (and d!383588 (not res!610164)) b!1354439))

(assert (=> b!1354437 m!1515929))

(declare-fun m!1516543 () Bool)

(assert (=> b!1354437 m!1516543))

(declare-fun m!1516545 () Bool)

(assert (=> b!1354439 m!1516545))

(assert (=> b!1354439 m!1515723))

(assert (=> b!1354438 m!1515933))

(declare-fun m!1516547 () Bool)

(assert (=> b!1354438 m!1516547))

(assert (=> b!1354438 m!1515933))

(assert (=> b!1354438 m!1516547))

(declare-fun m!1516549 () Bool)

(assert (=> b!1354438 m!1516549))

(assert (=> b!1354017 d!383588))

(declare-fun b!1354443 () Bool)

(declare-fun e!866841 () Bool)

(declare-fun lt!448454 () List!13863)

(assert (=> b!1354443 (= e!866841 (or (not (= (_2!7571 (get!4324 lt!448124)) Nil!13797)) (= lt!448454 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun b!1354441 () Bool)

(declare-fun e!866840 () List!13863)

(assert (=> b!1354441 (= e!866840 (Cons!13797 (h!19198 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (++!3546 (t!120228 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (_2!7571 (get!4324 lt!448124)))))))

(declare-fun b!1354440 () Bool)

(assert (=> b!1354440 (= e!866840 (_2!7571 (get!4324 lt!448124)))))

(declare-fun d!383590 () Bool)

(assert (=> d!383590 e!866841))

(declare-fun res!610168 () Bool)

(assert (=> d!383590 (=> (not res!610168) (not e!866841))))

(assert (=> d!383590 (= res!610168 (= (content!1983 lt!448454) ((_ map or) (content!1983 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (content!1983 (_2!7571 (get!4324 lt!448124))))))))

(assert (=> d!383590 (= lt!448454 e!866840)))

(declare-fun c!222224 () Bool)

(assert (=> d!383590 (= c!222224 ((_ is Nil!13797) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))

(assert (=> d!383590 (= (++!3546 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))) (_2!7571 (get!4324 lt!448124))) lt!448454)))

(declare-fun b!1354442 () Bool)

(declare-fun res!610167 () Bool)

(assert (=> b!1354442 (=> (not res!610167) (not e!866841))))

(assert (=> b!1354442 (= res!610167 (= (size!11276 lt!448454) (+ (size!11276 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (size!11276 (_2!7571 (get!4324 lt!448124))))))))

(assert (= (and d!383590 c!222224) b!1354440))

(assert (= (and d!383590 (not c!222224)) b!1354441))

(assert (= (and d!383590 res!610168) b!1354442))

(assert (= (and b!1354442 res!610167) b!1354443))

(declare-fun m!1516551 () Bool)

(assert (=> b!1354441 m!1516551))

(declare-fun m!1516553 () Bool)

(assert (=> d!383590 m!1516553))

(assert (=> d!383590 m!1515611))

(declare-fun m!1516555 () Bool)

(assert (=> d!383590 m!1516555))

(declare-fun m!1516557 () Bool)

(assert (=> d!383590 m!1516557))

(declare-fun m!1516559 () Bool)

(assert (=> b!1354442 m!1516559))

(assert (=> b!1354442 m!1515611))

(declare-fun m!1516561 () Bool)

(assert (=> b!1354442 m!1516561))

(assert (=> b!1354442 m!1515631))

(assert (=> b!1353678 d!383590))

(declare-fun d!383592 () Bool)

(assert (=> d!383592 (= (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))) (list!5282 (c!221992 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun bs!333693 () Bool)

(assert (= bs!333693 d!383592))

(declare-fun m!1516563 () Bool)

(assert (=> bs!333693 m!1516563))

(assert (=> b!1353678 d!383592))

(declare-fun d!383594 () Bool)

(declare-fun lt!448455 () BalanceConc!9028)

(assert (=> d!383594 (= (list!5278 lt!448455) (originalCharacters!3253 (_1!7571 (get!4324 lt!448124))))))

(assert (=> d!383594 (= lt!448455 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))) (value!77776 (_1!7571 (get!4324 lt!448124)))))))

(assert (=> d!383594 (= (charsOf!1363 (_1!7571 (get!4324 lt!448124))) lt!448455)))

(declare-fun b_lambda!40657 () Bool)

(assert (=> (not b_lambda!40657) (not d!383594)))

(declare-fun tb!71193 () Bool)

(declare-fun t!120282 () Bool)

(assert (=> (and b!1353360 (= (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120282) tb!71193))

(declare-fun b!1354444 () Bool)

(declare-fun e!866842 () Bool)

(declare-fun tp!391069 () Bool)

(assert (=> b!1354444 (= e!866842 (and (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))) (value!77776 (_1!7571 (get!4324 lt!448124)))))) tp!391069))))

(declare-fun result!86534 () Bool)

(assert (=> tb!71193 (= result!86534 (and (inv!18144 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))) (value!77776 (_1!7571 (get!4324 lt!448124))))) e!866842))))

(assert (= tb!71193 b!1354444))

(declare-fun m!1516565 () Bool)

(assert (=> b!1354444 m!1516565))

(declare-fun m!1516567 () Bool)

(assert (=> tb!71193 m!1516567))

(assert (=> d!383594 t!120282))

(declare-fun b_and!90679 () Bool)

(assert (= b_and!90661 (and (=> t!120282 result!86534) b_and!90679)))

(declare-fun t!120284 () Bool)

(declare-fun tb!71195 () Bool)

(assert (=> (and b!1353353 (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120284) tb!71195))

(declare-fun result!86536 () Bool)

(assert (= result!86536 result!86534))

(assert (=> d!383594 t!120284))

(declare-fun b_and!90681 () Bool)

(assert (= b_and!90663 (and (=> t!120284 result!86536) b_and!90681)))

(declare-fun tb!71197 () Bool)

(declare-fun t!120286 () Bool)

(assert (=> (and b!1353374 (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120286) tb!71197))

(declare-fun result!86538 () Bool)

(assert (= result!86538 result!86534))

(assert (=> d!383594 t!120286))

(declare-fun b_and!90683 () Bool)

(assert (= b_and!90665 (and (=> t!120286 result!86538) b_and!90683)))

(declare-fun t!120288 () Bool)

(declare-fun tb!71199 () Bool)

(assert (=> (and b!1353988 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120288) tb!71199))

(declare-fun result!86540 () Bool)

(assert (= result!86540 result!86534))

(assert (=> d!383594 t!120288))

(declare-fun b_and!90685 () Bool)

(assert (= b_and!90669 (and (=> t!120288 result!86540) b_and!90685)))

(declare-fun m!1516569 () Bool)

(assert (=> d!383594 m!1516569))

(declare-fun m!1516571 () Bool)

(assert (=> d!383594 m!1516571))

(assert (=> b!1353678 d!383594))

(declare-fun d!383596 () Bool)

(assert (=> d!383596 (= (get!4324 lt!448124) (v!21356 lt!448124))))

(assert (=> b!1353678 d!383596))

(declare-fun b!1354462 () Bool)

(declare-fun e!866854 () Bool)

(declare-fun call!91184 () Bool)

(assert (=> b!1354462 (= e!866854 call!91184)))

(declare-fun b!1354463 () Bool)

(declare-fun e!866855 () Bool)

(assert (=> b!1354463 (= e!866855 call!91184)))

(declare-fun d!383598 () Bool)

(declare-fun c!222228 () Bool)

(assert (=> d!383598 (= c!222228 (and ((_ is Cons!13798) rules!2550) (not (= (isSeparator!2391 (h!19199 rules!2550)) (isSeparator!2391 (h!19199 rules!2550))))))))

(declare-fun e!866853 () Bool)

(assert (=> d!383598 (= (ruleDisjointCharsFromAllFromOtherType!356 (h!19199 rules!2550) rules!2550) e!866853)))

(declare-fun bm!91179 () Bool)

(assert (=> bm!91179 (= call!91184 (ruleDisjointCharsFromAllFromOtherType!356 (h!19199 rules!2550) (t!120229 rules!2550)))))

(declare-fun b!1354464 () Bool)

(assert (=> b!1354464 (= e!866853 e!866855)))

(declare-fun res!610181 () Bool)

(declare-fun rulesUseDisjointChars!174 (Rule!4582 Rule!4582) Bool)

(assert (=> b!1354464 (= res!610181 (rulesUseDisjointChars!174 (h!19199 rules!2550) (h!19199 rules!2550)))))

(assert (=> b!1354464 (=> (not res!610181) (not e!866855))))

(declare-fun b!1354465 () Bool)

(assert (=> b!1354465 (= e!866853 e!866854)))

(declare-fun res!610180 () Bool)

(assert (=> b!1354465 (= res!610180 (not ((_ is Cons!13798) rules!2550)))))

(assert (=> b!1354465 (=> res!610180 e!866854)))

(assert (= (and d!383598 c!222228) b!1354464))

(assert (= (and d!383598 (not c!222228)) b!1354465))

(assert (= (and b!1354464 res!610181) b!1354463))

(assert (= (and b!1354465 (not res!610180)) b!1354462))

(assert (= (or b!1354463 b!1354462) bm!91179))

(declare-fun m!1516603 () Bool)

(assert (=> bm!91179 m!1516603))

(declare-fun m!1516607 () Bool)

(assert (=> b!1354464 m!1516607))

(assert (=> b!1353451 d!383598))

(declare-fun d!383600 () Bool)

(assert (=> d!383600 (= (list!5279 (_1!7572 lt!448189)) (list!5283 (c!221994 (_1!7572 lt!448189))))))

(declare-fun bs!333694 () Bool)

(assert (= bs!333694 d!383600))

(declare-fun m!1516613 () Bool)

(assert (=> bs!333694 m!1516613))

(assert (=> b!1353920 d!383600))

(assert (=> b!1353920 d!383300))

(assert (=> b!1353920 d!383302))

(declare-fun d!383602 () Bool)

(declare-fun charsToBigInt!0 (List!13862 Int) Int)

(assert (=> d!383602 (= (inv!15 (value!77776 t1!34)) (= (charsToBigInt!0 (text!17816 (value!77776 t1!34)) 0) (value!77771 (value!77776 t1!34))))))

(declare-fun bs!333695 () Bool)

(assert (= bs!333695 d!383602))

(declare-fun m!1516635 () Bool)

(assert (=> bs!333695 m!1516635))

(assert (=> b!1353975 d!383602))

(declare-fun d!383614 () Bool)

(assert (=> d!383614 true))

(assert (=> d!383614 true))

(declare-fun res!610190 () Bool)

(assert (=> d!383614 (= (choose!8323 lambda!57088) res!610190)))

(assert (=> d!383192 d!383614))

(assert (=> d!383338 d!383204))

(declare-fun d!383624 () Bool)

(declare-fun c!222233 () Bool)

(assert (=> d!383624 (= c!222233 (isEmpty!8261 (tail!1952 lt!447991)))))

(declare-fun e!866864 () Bool)

(assert (=> d!383624 (= (prefixMatch!214 (derivativeStep!943 lt!447993 (head!2419 lt!447991)) (tail!1952 lt!447991)) e!866864)))

(declare-fun b!1354480 () Bool)

(assert (=> b!1354480 (= e!866864 (not (lostCause!319 (derivativeStep!943 lt!447993 (head!2419 lt!447991)))))))

(declare-fun b!1354481 () Bool)

(assert (=> b!1354481 (= e!866864 (prefixMatch!214 (derivativeStep!943 (derivativeStep!943 lt!447993 (head!2419 lt!447991)) (head!2419 (tail!1952 lt!447991))) (tail!1952 (tail!1952 lt!447991))))))

(assert (= (and d!383624 c!222233) b!1354480))

(assert (= (and d!383624 (not c!222233)) b!1354481))

(assert (=> d!383624 m!1515933))

(declare-fun m!1516655 () Bool)

(assert (=> d!383624 m!1516655))

(assert (=> b!1354480 m!1515931))

(declare-fun m!1516657 () Bool)

(assert (=> b!1354480 m!1516657))

(assert (=> b!1354481 m!1515933))

(declare-fun m!1516659 () Bool)

(assert (=> b!1354481 m!1516659))

(assert (=> b!1354481 m!1515931))

(assert (=> b!1354481 m!1516659))

(declare-fun m!1516661 () Bool)

(assert (=> b!1354481 m!1516661))

(assert (=> b!1354481 m!1515933))

(declare-fun m!1516663 () Bool)

(assert (=> b!1354481 m!1516663))

(assert (=> b!1354481 m!1516661))

(assert (=> b!1354481 m!1516663))

(declare-fun m!1516669 () Bool)

(assert (=> b!1354481 m!1516669))

(assert (=> b!1353970 d!383624))

(declare-fun b!1354511 () Bool)

(declare-fun c!222251 () Bool)

(assert (=> b!1354511 (= c!222251 (nullable!1185 (regOne!7922 lt!447993)))))

(declare-fun e!866882 () Regex!3705)

(declare-fun e!866881 () Regex!3705)

(assert (=> b!1354511 (= e!866882 e!866881)))

(declare-fun b!1354512 () Bool)

(declare-fun call!91193 () Regex!3705)

(assert (=> b!1354512 (= e!866882 (Concat!6187 call!91193 lt!447993))))

(declare-fun bm!91188 () Bool)

(declare-fun call!91196 () Regex!3705)

(declare-fun call!91195 () Regex!3705)

(assert (=> bm!91188 (= call!91196 call!91195)))

(declare-fun bm!91189 () Bool)

(declare-fun call!91194 () Regex!3705)

(assert (=> bm!91189 (= call!91193 call!91194)))

(declare-fun b!1354513 () Bool)

(declare-fun e!866883 () Regex!3705)

(assert (=> b!1354513 (= e!866883 (Union!3705 call!91194 call!91195))))

(declare-fun d!383626 () Bool)

(declare-fun lt!448473 () Regex!3705)

(assert (=> d!383626 (validRegex!1605 lt!448473)))

(declare-fun e!866884 () Regex!3705)

(assert (=> d!383626 (= lt!448473 e!866884)))

(declare-fun c!222250 () Bool)

(assert (=> d!383626 (= c!222250 (or ((_ is EmptyExpr!3705) lt!447993) ((_ is EmptyLang!3705) lt!447993)))))

(assert (=> d!383626 (validRegex!1605 lt!447993)))

(assert (=> d!383626 (= (derivativeStep!943 lt!447993 (head!2419 lt!447991)) lt!448473)))

(declare-fun b!1354514 () Bool)

(assert (=> b!1354514 (= e!866884 EmptyLang!3705)))

(declare-fun c!222248 () Bool)

(declare-fun bm!91190 () Bool)

(declare-fun c!222249 () Bool)

(assert (=> bm!91190 (= call!91194 (derivativeStep!943 (ite c!222248 (regOne!7923 lt!447993) (ite c!222249 (reg!4034 lt!447993) (regOne!7922 lt!447993))) (head!2419 lt!447991)))))

(declare-fun b!1354515 () Bool)

(assert (=> b!1354515 (= e!866881 (Union!3705 (Concat!6187 call!91196 (regTwo!7922 lt!447993)) EmptyLang!3705))))

(declare-fun b!1354516 () Bool)

(assert (=> b!1354516 (= e!866881 (Union!3705 (Concat!6187 call!91193 (regTwo!7922 lt!447993)) call!91196))))

(declare-fun b!1354517 () Bool)

(declare-fun e!866885 () Regex!3705)

(assert (=> b!1354517 (= e!866884 e!866885)))

(declare-fun c!222247 () Bool)

(assert (=> b!1354517 (= c!222247 ((_ is ElementMatch!3705) lt!447993))))

(declare-fun b!1354518 () Bool)

(assert (=> b!1354518 (= e!866883 e!866882)))

(assert (=> b!1354518 (= c!222249 ((_ is Star!3705) lt!447993))))

(declare-fun bm!91191 () Bool)

(assert (=> bm!91191 (= call!91195 (derivativeStep!943 (ite c!222248 (regTwo!7923 lt!447993) (ite c!222251 (regTwo!7922 lt!447993) (regOne!7922 lt!447993))) (head!2419 lt!447991)))))

(declare-fun b!1354519 () Bool)

(assert (=> b!1354519 (= c!222248 ((_ is Union!3705) lt!447993))))

(assert (=> b!1354519 (= e!866885 e!866883)))

(declare-fun b!1354520 () Bool)

(assert (=> b!1354520 (= e!866885 (ite (= (head!2419 lt!447991) (c!221993 lt!447993)) EmptyExpr!3705 EmptyLang!3705))))

(assert (= (and d!383626 c!222250) b!1354514))

(assert (= (and d!383626 (not c!222250)) b!1354517))

(assert (= (and b!1354517 c!222247) b!1354520))

(assert (= (and b!1354517 (not c!222247)) b!1354519))

(assert (= (and b!1354519 c!222248) b!1354513))

(assert (= (and b!1354519 (not c!222248)) b!1354518))

(assert (= (and b!1354518 c!222249) b!1354512))

(assert (= (and b!1354518 (not c!222249)) b!1354511))

(assert (= (and b!1354511 c!222251) b!1354516))

(assert (= (and b!1354511 (not c!222251)) b!1354515))

(assert (= (or b!1354516 b!1354515) bm!91188))

(assert (= (or b!1354512 b!1354516) bm!91189))

(assert (= (or b!1354513 bm!91189) bm!91190))

(assert (= (or b!1354513 bm!91188) bm!91191))

(declare-fun m!1516697 () Bool)

(assert (=> b!1354511 m!1516697))

(declare-fun m!1516699 () Bool)

(assert (=> d!383626 m!1516699))

(assert (=> d!383626 m!1515373))

(assert (=> bm!91190 m!1515929))

(declare-fun m!1516701 () Bool)

(assert (=> bm!91190 m!1516701))

(assert (=> bm!91191 m!1515929))

(declare-fun m!1516703 () Bool)

(assert (=> bm!91191 m!1516703))

(assert (=> b!1353970 d!383626))

(declare-fun d!383636 () Bool)

(assert (=> d!383636 (= (head!2419 lt!447991) (h!19198 lt!447991))))

(assert (=> b!1353970 d!383636))

(declare-fun d!383638 () Bool)

(assert (=> d!383638 (= (tail!1952 lt!447991) (t!120228 lt!447991))))

(assert (=> b!1353970 d!383638))

(declare-fun d!383640 () Bool)

(assert (=> d!383640 (= (inv!16 (value!77776 t1!34)) (= (charsToInt!0 (text!17814 (value!77776 t1!34))) (value!77767 (value!77776 t1!34))))))

(declare-fun bs!333701 () Bool)

(assert (= bs!333701 d!383640))

(declare-fun m!1516705 () Bool)

(assert (=> bs!333701 m!1516705))

(assert (=> b!1353971 d!383640))

(declare-fun b!1354538 () Bool)

(declare-fun e!866895 () Bool)

(declare-fun lt!448478 () List!13863)

(assert (=> b!1354538 (= e!866895 (or (not (= lt!448159 Nil!13797)) (= lt!448478 lt!447991)))))

(declare-fun b!1354536 () Bool)

(declare-fun e!866894 () List!13863)

(assert (=> b!1354536 (= e!866894 (Cons!13797 (h!19198 lt!447991) (++!3546 (t!120228 lt!447991) lt!448159)))))

(declare-fun b!1354535 () Bool)

(assert (=> b!1354535 (= e!866894 lt!448159)))

(declare-fun d!383642 () Bool)

(assert (=> d!383642 e!866895))

(declare-fun res!610197 () Bool)

(assert (=> d!383642 (=> (not res!610197) (not e!866895))))

(assert (=> d!383642 (= res!610197 (= (content!1983 lt!448478) ((_ map or) (content!1983 lt!447991) (content!1983 lt!448159))))))

(assert (=> d!383642 (= lt!448478 e!866894)))

(declare-fun c!222258 () Bool)

(assert (=> d!383642 (= c!222258 ((_ is Nil!13797) lt!447991))))

(assert (=> d!383642 (= (++!3546 lt!447991 lt!448159) lt!448478)))

(declare-fun b!1354537 () Bool)

(declare-fun res!610196 () Bool)

(assert (=> b!1354537 (=> (not res!610196) (not e!866895))))

(assert (=> b!1354537 (= res!610196 (= (size!11276 lt!448478) (+ (size!11276 lt!447991) (size!11276 lt!448159))))))

(assert (= (and d!383642 c!222258) b!1354535))

(assert (= (and d!383642 (not c!222258)) b!1354536))

(assert (= (and d!383642 res!610197) b!1354537))

(assert (= (and b!1354537 res!610196) b!1354538))

(declare-fun m!1516707 () Bool)

(assert (=> b!1354536 m!1516707))

(declare-fun m!1516709 () Bool)

(assert (=> d!383642 m!1516709))

(assert (=> d!383642 m!1515681))

(declare-fun m!1516711 () Bool)

(assert (=> d!383642 m!1516711))

(declare-fun m!1516713 () Bool)

(assert (=> b!1354537 m!1516713))

(assert (=> b!1354537 m!1515723))

(declare-fun m!1516715 () Bool)

(assert (=> b!1354537 m!1516715))

(assert (=> d!383306 d!383642))

(declare-fun d!383644 () Bool)

(declare-fun lt!448479 () Int)

(assert (=> d!383644 (>= lt!448479 0)))

(declare-fun e!866896 () Int)

(assert (=> d!383644 (= lt!448479 e!866896)))

(declare-fun c!222259 () Bool)

(assert (=> d!383644 (= c!222259 ((_ is Nil!13797) lt!447984))))

(assert (=> d!383644 (= (size!11276 lt!447984) lt!448479)))

(declare-fun b!1354539 () Bool)

(assert (=> b!1354539 (= e!866896 0)))

(declare-fun b!1354540 () Bool)

(assert (=> b!1354540 (= e!866896 (+ 1 (size!11276 (t!120228 lt!447984))))))

(assert (= (and d!383644 c!222259) b!1354539))

(assert (= (and d!383644 (not c!222259)) b!1354540))

(declare-fun m!1516717 () Bool)

(assert (=> b!1354540 m!1516717))

(assert (=> d!383306 d!383644))

(declare-fun d!383646 () Bool)

(declare-fun lt!448480 () Int)

(assert (=> d!383646 (>= lt!448480 0)))

(declare-fun e!866897 () Int)

(assert (=> d!383646 (= lt!448480 e!866897)))

(declare-fun c!222260 () Bool)

(assert (=> d!383646 (= c!222260 ((_ is Nil!13797) lt!447991))))

(assert (=> d!383646 (= (size!11276 lt!447991) lt!448480)))

(declare-fun b!1354541 () Bool)

(assert (=> b!1354541 (= e!866897 0)))

(declare-fun b!1354542 () Bool)

(assert (=> b!1354542 (= e!866897 (+ 1 (size!11276 (t!120228 lt!447991))))))

(assert (= (and d!383646 c!222260) b!1354541))

(assert (= (and d!383646 (not c!222260)) b!1354542))

(declare-fun m!1516719 () Bool)

(assert (=> b!1354542 m!1516719))

(assert (=> d!383306 d!383646))

(declare-fun d!383648 () Bool)

(assert (=> d!383648 (= (isDefined!2203 lt!448124) (not (isEmpty!8260 lt!448124)))))

(declare-fun bs!333702 () Bool)

(assert (= bs!333702 d!383648))

(assert (=> bs!333702 m!1515637))

(assert (=> b!1353674 d!383648))

(declare-fun b!1354559 () Bool)

(declare-fun e!866906 () List!13866)

(declare-fun e!866907 () List!13866)

(assert (=> b!1354559 (= e!866906 e!866907)))

(declare-fun c!222269 () Bool)

(assert (=> b!1354559 (= c!222269 ((_ is Leaf!6937) (c!221994 (_1!7572 lt!447996))))))

(declare-fun b!1354560 () Bool)

(declare-fun list!5284 (IArray!9095) List!13866)

(assert (=> b!1354560 (= e!866907 (list!5284 (xs!7268 (c!221994 (_1!7572 lt!447996)))))))

(declare-fun b!1354558 () Bool)

(assert (=> b!1354558 (= e!866906 Nil!13800)))

(declare-fun d!383650 () Bool)

(declare-fun c!222268 () Bool)

(assert (=> d!383650 (= c!222268 ((_ is Empty!4545) (c!221994 (_1!7572 lt!447996))))))

(assert (=> d!383650 (= (list!5283 (c!221994 (_1!7572 lt!447996))) e!866906)))

(declare-fun b!1354561 () Bool)

(declare-fun ++!3551 (List!13866 List!13866) List!13866)

(assert (=> b!1354561 (= e!866907 (++!3551 (list!5283 (left!11822 (c!221994 (_1!7572 lt!447996)))) (list!5283 (right!12152 (c!221994 (_1!7572 lt!447996))))))))

(assert (= (and d!383650 c!222268) b!1354558))

(assert (= (and d!383650 (not c!222268)) b!1354559))

(assert (= (and b!1354559 c!222269) b!1354560))

(assert (= (and b!1354559 (not c!222269)) b!1354561))

(declare-fun m!1516735 () Bool)

(assert (=> b!1354560 m!1516735))

(declare-fun m!1516737 () Bool)

(assert (=> b!1354561 m!1516737))

(declare-fun m!1516739 () Bool)

(assert (=> b!1354561 m!1516739))

(assert (=> b!1354561 m!1516737))

(assert (=> b!1354561 m!1516739))

(declare-fun m!1516741 () Bool)

(assert (=> b!1354561 m!1516741))

(assert (=> d!383342 d!383650))

(declare-fun d!383654 () Bool)

(assert (=> d!383654 (= (list!5278 lt!448207) (list!5282 (c!221992 lt!448207)))))

(declare-fun bs!333709 () Bool)

(assert (= bs!333709 d!383654))

(declare-fun m!1516743 () Bool)

(assert (=> bs!333709 m!1516743))

(assert (=> d!383368 d!383654))

(declare-fun e!866911 () Bool)

(declare-fun b!1354562 () Bool)

(assert (=> b!1354562 (= e!866911 (dynLambda!6162 lambda!57090 (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089)))))))

(declare-fun e!866908 () Bool)

(declare-fun lt!448483 () Regex!3705)

(declare-fun b!1354563 () Bool)

(assert (=> b!1354563 (= e!866908 (contains!2548 (t!120230 (map!3047 rules!2550 lambda!57089)) lt!448483))))

(declare-fun b!1354564 () Bool)

(declare-fun e!866910 () Regex!3705)

(assert (=> b!1354564 (= e!866910 (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1354565 () Bool)

(declare-fun e!866909 () Regex!3705)

(assert (=> b!1354565 (= e!866909 (getWitness!328 (t!120230 (t!120230 (map!3047 rules!2550 lambda!57089))) lambda!57090))))

(declare-fun b!1354566 () Bool)

(assert (=> b!1354566 (= e!866910 e!866909)))

(declare-fun c!222271 () Bool)

(assert (=> b!1354566 (= c!222271 ((_ is Cons!13799) (t!120230 (map!3047 rules!2550 lambda!57089))))))

(declare-fun d!383656 () Bool)

(assert (=> d!383656 e!866908))

(declare-fun res!610199 () Bool)

(assert (=> d!383656 (=> (not res!610199) (not e!866908))))

(assert (=> d!383656 (= res!610199 (dynLambda!6162 lambda!57090 lt!448483))))

(assert (=> d!383656 (= lt!448483 e!866910)))

(declare-fun c!222270 () Bool)

(assert (=> d!383656 (= c!222270 e!866911)))

(declare-fun res!610200 () Bool)

(assert (=> d!383656 (=> (not res!610200) (not e!866911))))

(assert (=> d!383656 (= res!610200 ((_ is Cons!13799) (t!120230 (map!3047 rules!2550 lambda!57089))))))

(assert (=> d!383656 (exists!440 (t!120230 (map!3047 rules!2550 lambda!57089)) lambda!57090)))

(assert (=> d!383656 (= (getWitness!328 (t!120230 (map!3047 rules!2550 lambda!57089)) lambda!57090) lt!448483)))

(declare-fun b!1354567 () Bool)

(declare-fun lt!448484 () Unit!19941)

(declare-fun Unit!19952 () Unit!19941)

(assert (=> b!1354567 (= lt!448484 Unit!19952)))

(assert (=> b!1354567 false))

(assert (=> b!1354567 (= e!866909 (head!2421 (t!120230 (map!3047 rules!2550 lambda!57089))))))

(assert (= (and d!383656 res!610200) b!1354562))

(assert (= (and d!383656 c!222270) b!1354564))

(assert (= (and d!383656 (not c!222270)) b!1354566))

(assert (= (and b!1354566 c!222271) b!1354565))

(assert (= (and b!1354566 (not c!222271)) b!1354567))

(assert (= (and d!383656 res!610199) b!1354563))

(declare-fun b_lambda!40659 () Bool)

(assert (=> (not b_lambda!40659) (not b!1354562)))

(declare-fun b_lambda!40661 () Bool)

(assert (=> (not b_lambda!40661) (not d!383656)))

(declare-fun m!1516747 () Bool)

(assert (=> b!1354565 m!1516747))

(declare-fun m!1516749 () Bool)

(assert (=> b!1354562 m!1516749))

(declare-fun m!1516751 () Bool)

(assert (=> b!1354567 m!1516751))

(declare-fun m!1516753 () Bool)

(assert (=> b!1354563 m!1516753))

(declare-fun m!1516755 () Bool)

(assert (=> d!383656 m!1516755))

(declare-fun m!1516757 () Bool)

(assert (=> d!383656 m!1516757))

(assert (=> b!1353957 d!383656))

(declare-fun b!1354568 () Bool)

(declare-fun e!866912 () Bool)

(declare-fun lt!448487 () tuple2!13374)

(assert (=> b!1354568 (= e!866912 (= (_2!7573 lt!448487) (_2!7571 (v!21356 lt!448151))))))

(declare-fun b!1354569 () Bool)

(declare-fun e!866913 () tuple2!13374)

(assert (=> b!1354569 (= e!866913 (tuple2!13375 Nil!13800 (_2!7571 (v!21356 lt!448151))))))

(declare-fun b!1354570 () Bool)

(declare-fun e!866914 () Bool)

(assert (=> b!1354570 (= e!866914 (not (isEmpty!8263 (_1!7573 lt!448487))))))

(declare-fun d!383660 () Bool)

(assert (=> d!383660 e!866912))

(declare-fun c!222273 () Bool)

(assert (=> d!383660 (= c!222273 (> (size!11280 (_1!7573 lt!448487)) 0))))

(assert (=> d!383660 (= lt!448487 e!866913)))

(declare-fun c!222272 () Bool)

(declare-fun lt!448485 () Option!2644)

(assert (=> d!383660 (= c!222272 ((_ is Some!2643) lt!448485))))

(assert (=> d!383660 (= lt!448485 (maxPrefix!1068 thiss!19762 rules!2550 (_2!7571 (v!21356 lt!448151))))))

(assert (=> d!383660 (= (lexList!604 thiss!19762 rules!2550 (_2!7571 (v!21356 lt!448151))) lt!448487)))

(declare-fun b!1354571 () Bool)

(declare-fun lt!448486 () tuple2!13374)

(assert (=> b!1354571 (= e!866913 (tuple2!13375 (Cons!13800 (_1!7571 (v!21356 lt!448485)) (_1!7573 lt!448486)) (_2!7573 lt!448486)))))

(assert (=> b!1354571 (= lt!448486 (lexList!604 thiss!19762 rules!2550 (_2!7571 (v!21356 lt!448485))))))

(declare-fun b!1354572 () Bool)

(assert (=> b!1354572 (= e!866912 e!866914)))

(declare-fun res!610201 () Bool)

(assert (=> b!1354572 (= res!610201 (< (size!11276 (_2!7573 lt!448487)) (size!11276 (_2!7571 (v!21356 lt!448151)))))))

(assert (=> b!1354572 (=> (not res!610201) (not e!866914))))

(assert (= (and d!383660 c!222272) b!1354571))

(assert (= (and d!383660 (not c!222272)) b!1354569))

(assert (= (and d!383660 c!222273) b!1354572))

(assert (= (and d!383660 (not c!222273)) b!1354568))

(assert (= (and b!1354572 res!610201) b!1354570))

(declare-fun m!1516759 () Bool)

(assert (=> b!1354570 m!1516759))

(declare-fun m!1516761 () Bool)

(assert (=> d!383660 m!1516761))

(declare-fun m!1516763 () Bool)

(assert (=> d!383660 m!1516763))

(declare-fun m!1516765 () Bool)

(assert (=> b!1354571 m!1516765))

(declare-fun m!1516767 () Bool)

(assert (=> b!1354572 m!1516767))

(declare-fun m!1516769 () Bool)

(assert (=> b!1354572 m!1516769))

(assert (=> b!1353741 d!383660))

(declare-fun d!383662 () Bool)

(assert (=> d!383662 (= (inv!18136 (tag!2653 (h!19199 (t!120229 rules!2550)))) (= (mod (str.len (value!77775 (tag!2653 (h!19199 (t!120229 rules!2550))))) 2) 0))))

(assert (=> b!1353987 d!383662))

(declare-fun d!383664 () Bool)

(declare-fun res!610202 () Bool)

(declare-fun e!866915 () Bool)

(assert (=> d!383664 (=> (not res!610202) (not e!866915))))

(assert (=> d!383664 (= res!610202 (semiInverseModEq!914 (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toValue!3642 (transformation!2391 (h!19199 (t!120229 rules!2550))))))))

(assert (=> d!383664 (= (inv!18139 (transformation!2391 (h!19199 (t!120229 rules!2550)))) e!866915)))

(declare-fun b!1354573 () Bool)

(assert (=> b!1354573 (= e!866915 (equivClasses!873 (toChars!3501 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toValue!3642 (transformation!2391 (h!19199 (t!120229 rules!2550))))))))

(assert (= (and d!383664 res!610202) b!1354573))

(declare-fun m!1516771 () Bool)

(assert (=> d!383664 m!1516771))

(declare-fun m!1516773 () Bool)

(assert (=> b!1354573 m!1516773))

(assert (=> b!1353987 d!383664))

(declare-fun d!383666 () Bool)

(declare-fun lt!448488 () Bool)

(assert (=> d!383666 (= lt!448488 (select (content!1983 (t!120228 lt!447984)) lt!447989))))

(declare-fun e!866916 () Bool)

(assert (=> d!383666 (= lt!448488 e!866916)))

(declare-fun res!610204 () Bool)

(assert (=> d!383666 (=> (not res!610204) (not e!866916))))

(assert (=> d!383666 (= res!610204 ((_ is Cons!13797) (t!120228 lt!447984)))))

(assert (=> d!383666 (= (contains!2547 (t!120228 lt!447984) lt!447989) lt!448488)))

(declare-fun b!1354574 () Bool)

(declare-fun e!866917 () Bool)

(assert (=> b!1354574 (= e!866916 e!866917)))

(declare-fun res!610203 () Bool)

(assert (=> b!1354574 (=> res!610203 e!866917)))

(assert (=> b!1354574 (= res!610203 (= (h!19198 (t!120228 lt!447984)) lt!447989))))

(declare-fun b!1354575 () Bool)

(assert (=> b!1354575 (= e!866917 (contains!2547 (t!120228 (t!120228 lt!447984)) lt!447989))))

(assert (= (and d!383666 res!610204) b!1354574))

(assert (= (and b!1354574 (not res!610203)) b!1354575))

(declare-fun m!1516775 () Bool)

(assert (=> d!383666 m!1516775))

(declare-fun m!1516777 () Bool)

(assert (=> d!383666 m!1516777))

(declare-fun m!1516779 () Bool)

(assert (=> b!1354575 m!1516779))

(assert (=> b!1353977 d!383666))

(declare-fun d!383668 () Bool)

(assert (=> d!383668 (= (Exists!857 lambda!57113) (choose!8323 lambda!57113))))

(declare-fun bs!333711 () Bool)

(assert (= bs!333711 d!383668))

(declare-fun m!1516781 () Bool)

(assert (=> bs!333711 m!1516781))

(assert (=> d!383194 d!383668))

(declare-fun bs!333720 () Bool)

(declare-fun d!383670 () Bool)

(assert (= bs!333720 (and d!383670 b!1353359)))

(declare-fun lambda!57169 () Int)

(assert (=> bs!333720 (= lambda!57169 lambda!57088)))

(declare-fun bs!333721 () Bool)

(assert (= bs!333721 (and d!383670 d!383194)))

(assert (=> bs!333721 (= lambda!57169 lambda!57113)))

(assert (=> d!383670 true))

(assert (=> d!383670 true))

(assert (=> d!383670 (Exists!857 lambda!57169)))

(assert (=> d!383670 true))

(declare-fun _$103!113 () Unit!19941)

(assert (=> d!383670 (= (choose!8324 lt!447993 lt!447991) _$103!113)))

(declare-fun bs!333722 () Bool)

(assert (= bs!333722 d!383670))

(declare-fun m!1516785 () Bool)

(assert (=> bs!333722 m!1516785))

(assert (=> d!383194 d!383670))

(declare-fun b!1354632 () Bool)

(declare-fun e!866960 () Bool)

(declare-fun e!866964 () Bool)

(assert (=> b!1354632 (= e!866960 e!866964)))

(declare-fun res!610239 () Bool)

(assert (=> b!1354632 (=> (not res!610239) (not e!866964))))

(declare-fun call!91207 () Bool)

(assert (=> b!1354632 (= res!610239 call!91207)))

(declare-fun b!1354633 () Bool)

(declare-fun res!610243 () Bool)

(assert (=> b!1354633 (=> res!610243 e!866960)))

(assert (=> b!1354633 (= res!610243 (not ((_ is Concat!6187) lt!447993)))))

(declare-fun e!866958 () Bool)

(assert (=> b!1354633 (= e!866958 e!866960)))

(declare-fun bm!91202 () Bool)

(declare-fun c!222286 () Bool)

(assert (=> bm!91202 (= call!91207 (validRegex!1605 (ite c!222286 (regOne!7923 lt!447993) (regOne!7922 lt!447993))))))

(declare-fun b!1354634 () Bool)

(declare-fun res!610241 () Bool)

(declare-fun e!866963 () Bool)

(assert (=> b!1354634 (=> (not res!610241) (not e!866963))))

(assert (=> b!1354634 (= res!610241 call!91207)))

(assert (=> b!1354634 (= e!866958 e!866963)))

(declare-fun c!222285 () Bool)

(declare-fun call!91208 () Bool)

(declare-fun bm!91203 () Bool)

(assert (=> bm!91203 (= call!91208 (validRegex!1605 (ite c!222285 (reg!4034 lt!447993) (ite c!222286 (regTwo!7923 lt!447993) (regTwo!7922 lt!447993)))))))

(declare-fun d!383674 () Bool)

(declare-fun res!610240 () Bool)

(declare-fun e!866961 () Bool)

(assert (=> d!383674 (=> res!610240 e!866961)))

(assert (=> d!383674 (= res!610240 ((_ is ElementMatch!3705) lt!447993))))

(assert (=> d!383674 (= (validRegex!1605 lt!447993) e!866961)))

(declare-fun b!1354635 () Bool)

(declare-fun e!866962 () Bool)

(assert (=> b!1354635 (= e!866961 e!866962)))

(assert (=> b!1354635 (= c!222285 ((_ is Star!3705) lt!447993))))

(declare-fun b!1354636 () Bool)

(declare-fun call!91209 () Bool)

(assert (=> b!1354636 (= e!866964 call!91209)))

(declare-fun bm!91204 () Bool)

(assert (=> bm!91204 (= call!91209 call!91208)))

(declare-fun b!1354637 () Bool)

(assert (=> b!1354637 (= e!866963 call!91209)))

(declare-fun b!1354638 () Bool)

(declare-fun e!866959 () Bool)

(assert (=> b!1354638 (= e!866959 call!91208)))

(declare-fun b!1354639 () Bool)

(assert (=> b!1354639 (= e!866962 e!866958)))

(assert (=> b!1354639 (= c!222286 ((_ is Union!3705) lt!447993))))

(declare-fun b!1354640 () Bool)

(assert (=> b!1354640 (= e!866962 e!866959)))

(declare-fun res!610242 () Bool)

(assert (=> b!1354640 (= res!610242 (not (nullable!1185 (reg!4034 lt!447993))))))

(assert (=> b!1354640 (=> (not res!610242) (not e!866959))))

(assert (= (and d!383674 (not res!610240)) b!1354635))

(assert (= (and b!1354635 c!222285) b!1354640))

(assert (= (and b!1354635 (not c!222285)) b!1354639))

(assert (= (and b!1354640 res!610242) b!1354638))

(assert (= (and b!1354639 c!222286) b!1354634))

(assert (= (and b!1354639 (not c!222286)) b!1354633))

(assert (= (and b!1354634 res!610241) b!1354637))

(assert (= (and b!1354633 (not res!610243)) b!1354632))

(assert (= (and b!1354632 res!610239) b!1354636))

(assert (= (or b!1354634 b!1354632) bm!91202))

(assert (= (or b!1354637 b!1354636) bm!91204))

(assert (= (or b!1354638 bm!91204) bm!91203))

(declare-fun m!1516839 () Bool)

(assert (=> bm!91202 m!1516839))

(declare-fun m!1516841 () Bool)

(assert (=> bm!91203 m!1516841))

(declare-fun m!1516843 () Bool)

(assert (=> b!1354640 m!1516843))

(assert (=> d!383194 d!383674))

(declare-fun d!383700 () Bool)

(declare-fun lt!448496 () Int)

(assert (=> d!383700 (>= lt!448496 0)))

(declare-fun e!866968 () Int)

(assert (=> d!383700 (= lt!448496 e!866968)))

(declare-fun c!222290 () Bool)

(assert (=> d!383700 (= c!222290 ((_ is Nil!13800) (_1!7573 lt!448153)))))

(assert (=> d!383700 (= (size!11280 (_1!7573 lt!448153)) lt!448496)))

(declare-fun b!1354647 () Bool)

(assert (=> b!1354647 (= e!866968 0)))

(declare-fun b!1354648 () Bool)

(assert (=> b!1354648 (= e!866968 (+ 1 (size!11280 (t!120231 (_1!7573 lt!448153)))))))

(assert (= (and d!383700 c!222290) b!1354647))

(assert (= (and d!383700 (not c!222290)) b!1354648))

(declare-fun m!1516853 () Bool)

(assert (=> b!1354648 m!1516853))

(assert (=> d!383300 d!383700))

(declare-fun d!383704 () Bool)

(declare-fun e!866969 () Bool)

(assert (=> d!383704 e!866969))

(declare-fun res!610249 () Bool)

(assert (=> d!383704 (=> res!610249 e!866969)))

(declare-fun lt!448499 () Option!2644)

(assert (=> d!383704 (= res!610249 (isEmpty!8260 lt!448499))))

(declare-fun e!866971 () Option!2644)

(assert (=> d!383704 (= lt!448499 e!866971)))

(declare-fun c!222291 () Bool)

(assert (=> d!383704 (= c!222291 (and ((_ is Cons!13798) rules!2550) ((_ is Nil!13798) (t!120229 rules!2550))))))

(declare-fun lt!448497 () Unit!19941)

(declare-fun lt!448501 () Unit!19941)

(assert (=> d!383704 (= lt!448497 lt!448501)))

(assert (=> d!383704 (isPrefix!1115 (list!5278 lt!447986) (list!5278 lt!447986))))

(assert (=> d!383704 (= lt!448501 (lemmaIsPrefixRefl!777 (list!5278 lt!447986) (list!5278 lt!447986)))))

(assert (=> d!383704 (rulesValidInductive!756 thiss!19762 rules!2550)))

(assert (=> d!383704 (= (maxPrefix!1068 thiss!19762 rules!2550 (list!5278 lt!447986)) lt!448499)))

(declare-fun b!1354649 () Bool)

(declare-fun e!866970 () Bool)

(assert (=> b!1354649 (= e!866969 e!866970)))

(declare-fun res!610248 () Bool)

(assert (=> b!1354649 (=> (not res!610248) (not e!866970))))

(assert (=> b!1354649 (= res!610248 (isDefined!2203 lt!448499))))

(declare-fun b!1354650 () Bool)

(declare-fun call!91210 () Option!2644)

(assert (=> b!1354650 (= e!866971 call!91210)))

(declare-fun b!1354651 () Bool)

(declare-fun res!610246 () Bool)

(assert (=> b!1354651 (=> (not res!610246) (not e!866970))))

(assert (=> b!1354651 (= res!610246 (matchR!1698 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448499)))) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448499))))))))

(declare-fun b!1354652 () Bool)

(declare-fun res!610245 () Bool)

(assert (=> b!1354652 (=> (not res!610245) (not e!866970))))

(assert (=> b!1354652 (= res!610245 (= (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448499)))) (originalCharacters!3253 (_1!7571 (get!4324 lt!448499)))))))

(declare-fun b!1354653 () Bool)

(declare-fun res!610247 () Bool)

(assert (=> b!1354653 (=> (not res!610247) (not e!866970))))

(assert (=> b!1354653 (= res!610247 (= (++!3546 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448499)))) (_2!7571 (get!4324 lt!448499))) (list!5278 lt!447986)))))

(declare-fun b!1354654 () Bool)

(declare-fun res!610250 () Bool)

(assert (=> b!1354654 (=> (not res!610250) (not e!866970))))

(assert (=> b!1354654 (= res!610250 (= (value!77776 (_1!7571 (get!4324 lt!448499))) (apply!3317 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448499)))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448499)))))))))

(declare-fun b!1354655 () Bool)

(declare-fun res!610244 () Bool)

(assert (=> b!1354655 (=> (not res!610244) (not e!866970))))

(assert (=> b!1354655 (= res!610244 (< (size!11276 (_2!7571 (get!4324 lt!448499))) (size!11276 (list!5278 lt!447986))))))

(declare-fun bm!91205 () Bool)

(assert (=> bm!91205 (= call!91210 (maxPrefixOneRule!603 thiss!19762 (h!19199 rules!2550) (list!5278 lt!447986)))))

(declare-fun b!1354656 () Bool)

(declare-fun lt!448498 () Option!2644)

(declare-fun lt!448500 () Option!2644)

(assert (=> b!1354656 (= e!866971 (ite (and ((_ is None!2643) lt!448498) ((_ is None!2643) lt!448500)) None!2643 (ite ((_ is None!2643) lt!448500) lt!448498 (ite ((_ is None!2643) lt!448498) lt!448500 (ite (>= (size!11269 (_1!7571 (v!21356 lt!448498))) (size!11269 (_1!7571 (v!21356 lt!448500)))) lt!448498 lt!448500)))))))

(assert (=> b!1354656 (= lt!448498 call!91210)))

(assert (=> b!1354656 (= lt!448500 (maxPrefix!1068 thiss!19762 (t!120229 rules!2550) (list!5278 lt!447986)))))

(declare-fun b!1354657 () Bool)

(assert (=> b!1354657 (= e!866970 (contains!2549 rules!2550 (rule!4138 (_1!7571 (get!4324 lt!448499)))))))

(assert (= (and d!383704 c!222291) b!1354650))

(assert (= (and d!383704 (not c!222291)) b!1354656))

(assert (= (or b!1354650 b!1354656) bm!91205))

(assert (= (and d!383704 (not res!610249)) b!1354649))

(assert (= (and b!1354649 res!610248) b!1354652))

(assert (= (and b!1354652 res!610245) b!1354655))

(assert (= (and b!1354655 res!610244) b!1354653))

(assert (= (and b!1354653 res!610247) b!1354654))

(assert (= (and b!1354654 res!610250) b!1354651))

(assert (= (and b!1354651 res!610246) b!1354657))

(declare-fun m!1516855 () Bool)

(assert (=> b!1354652 m!1516855))

(declare-fun m!1516857 () Bool)

(assert (=> b!1354652 m!1516857))

(assert (=> b!1354652 m!1516857))

(declare-fun m!1516859 () Bool)

(assert (=> b!1354652 m!1516859))

(declare-fun m!1516861 () Bool)

(assert (=> b!1354649 m!1516861))

(assert (=> b!1354653 m!1516855))

(assert (=> b!1354653 m!1516857))

(assert (=> b!1354653 m!1516857))

(assert (=> b!1354653 m!1516859))

(assert (=> b!1354653 m!1516859))

(declare-fun m!1516863 () Bool)

(assert (=> b!1354653 m!1516863))

(assert (=> b!1354654 m!1516855))

(declare-fun m!1516865 () Bool)

(assert (=> b!1354654 m!1516865))

(assert (=> b!1354654 m!1516865))

(declare-fun m!1516867 () Bool)

(assert (=> b!1354654 m!1516867))

(assert (=> b!1354651 m!1516855))

(assert (=> b!1354651 m!1516857))

(assert (=> b!1354651 m!1516857))

(assert (=> b!1354651 m!1516859))

(assert (=> b!1354651 m!1516859))

(declare-fun m!1516869 () Bool)

(assert (=> b!1354651 m!1516869))

(assert (=> bm!91205 m!1515177))

(declare-fun m!1516871 () Bool)

(assert (=> bm!91205 m!1516871))

(assert (=> b!1354655 m!1516855))

(declare-fun m!1516873 () Bool)

(assert (=> b!1354655 m!1516873))

(assert (=> b!1354655 m!1515177))

(assert (=> b!1354655 m!1515711))

(assert (=> b!1354656 m!1515177))

(declare-fun m!1516875 () Bool)

(assert (=> b!1354656 m!1516875))

(declare-fun m!1516877 () Bool)

(assert (=> d!383704 m!1516877))

(assert (=> d!383704 m!1515177))

(assert (=> d!383704 m!1515177))

(declare-fun m!1516879 () Bool)

(assert (=> d!383704 m!1516879))

(assert (=> d!383704 m!1515177))

(assert (=> d!383704 m!1515177))

(declare-fun m!1516881 () Bool)

(assert (=> d!383704 m!1516881))

(assert (=> d!383704 m!1515643))

(assert (=> b!1354657 m!1516855))

(declare-fun m!1516883 () Bool)

(assert (=> b!1354657 m!1516883))

(assert (=> d!383300 d!383704))

(declare-fun b!1354670 () Bool)

(declare-fun res!610267 () Bool)

(declare-fun e!866977 () Bool)

(assert (=> b!1354670 (=> (not res!610267) (not e!866977))))

(assert (=> b!1354670 (= res!610267 (isBalanced!1324 (left!11822 (c!221994 lt!448180))))))

(declare-fun b!1354671 () Bool)

(declare-fun res!610265 () Bool)

(assert (=> b!1354671 (=> (not res!610265) (not e!866977))))

(declare-fun isEmpty!8268 (Conc!4545) Bool)

(assert (=> b!1354671 (= res!610265 (not (isEmpty!8268 (left!11822 (c!221994 lt!448180)))))))

(declare-fun b!1354672 () Bool)

(assert (=> b!1354672 (= e!866977 (not (isEmpty!8268 (right!12152 (c!221994 lt!448180)))))))

(declare-fun d!383706 () Bool)

(declare-fun res!610266 () Bool)

(declare-fun e!866976 () Bool)

(assert (=> d!383706 (=> res!610266 e!866976)))

(assert (=> d!383706 (= res!610266 (not ((_ is Node!4545) (c!221994 lt!448180))))))

(assert (=> d!383706 (= (isBalanced!1324 (c!221994 lt!448180)) e!866976)))

(declare-fun b!1354673 () Bool)

(declare-fun res!610263 () Bool)

(assert (=> b!1354673 (=> (not res!610263) (not e!866977))))

(assert (=> b!1354673 (= res!610263 (isBalanced!1324 (right!12152 (c!221994 lt!448180))))))

(declare-fun b!1354674 () Bool)

(assert (=> b!1354674 (= e!866976 e!866977)))

(declare-fun res!610264 () Bool)

(assert (=> b!1354674 (=> (not res!610264) (not e!866977))))

(declare-fun height!649 (Conc!4545) Int)

(assert (=> b!1354674 (= res!610264 (<= (- 1) (- (height!649 (left!11822 (c!221994 lt!448180))) (height!649 (right!12152 (c!221994 lt!448180))))))))

(declare-fun b!1354675 () Bool)

(declare-fun res!610268 () Bool)

(assert (=> b!1354675 (=> (not res!610268) (not e!866977))))

(assert (=> b!1354675 (= res!610268 (<= (- (height!649 (left!11822 (c!221994 lt!448180))) (height!649 (right!12152 (c!221994 lt!448180)))) 1))))

(assert (= (and d!383706 (not res!610266)) b!1354674))

(assert (= (and b!1354674 res!610264) b!1354675))

(assert (= (and b!1354675 res!610268) b!1354670))

(assert (= (and b!1354670 res!610267) b!1354673))

(assert (= (and b!1354673 res!610263) b!1354671))

(assert (= (and b!1354671 res!610265) b!1354672))

(declare-fun m!1516885 () Bool)

(assert (=> b!1354673 m!1516885))

(declare-fun m!1516887 () Bool)

(assert (=> b!1354675 m!1516887))

(declare-fun m!1516889 () Bool)

(assert (=> b!1354675 m!1516889))

(declare-fun m!1516891 () Bool)

(assert (=> b!1354672 m!1516891))

(declare-fun m!1516893 () Bool)

(assert (=> b!1354670 m!1516893))

(assert (=> b!1354674 m!1516887))

(assert (=> b!1354674 m!1516889))

(declare-fun m!1516895 () Bool)

(assert (=> b!1354671 m!1516895))

(assert (=> b!1353888 d!383706))

(declare-fun d!383708 () Bool)

(assert (=> d!383708 true))

(declare-fun order!8331 () Int)

(declare-fun order!8333 () Int)

(declare-fun lambda!57172 () Int)

(declare-fun dynLambda!6167 (Int Int) Int)

(declare-fun dynLambda!6168 (Int Int) Int)

(assert (=> d!383708 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (dynLambda!6168 order!8333 lambda!57172))))

(declare-fun Forall2!433 (Int) Bool)

(assert (=> d!383708 (= (equivClasses!873 (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (Forall2!433 lambda!57172))))

(declare-fun bs!333728 () Bool)

(assert (= bs!333728 d!383708))

(declare-fun m!1516897 () Bool)

(assert (=> bs!333728 m!1516897))

(assert (=> b!1353925 d!383708))

(declare-fun d!383710 () Bool)

(assert (=> d!383710 (= (isEmpty!8261 (tail!1952 lt!447984)) ((_ is Nil!13797) (tail!1952 lt!447984)))))

(assert (=> b!1353821 d!383710))

(declare-fun d!383712 () Bool)

(assert (=> d!383712 (= (tail!1952 lt!447984) (t!120228 lt!447984))))

(assert (=> b!1353821 d!383712))

(declare-fun b!1354697 () Bool)

(declare-fun e!866989 () List!13863)

(assert (=> b!1354697 (= e!866989 (++!3546 (list!5282 (left!11821 (c!221992 lt!447992))) (list!5282 (right!12151 (c!221992 lt!447992)))))))

(declare-fun b!1354696 () Bool)

(declare-fun list!5285 (IArray!9093) List!13863)

(assert (=> b!1354696 (= e!866989 (list!5285 (xs!7267 (c!221992 lt!447992))))))

(declare-fun d!383714 () Bool)

(declare-fun c!222298 () Bool)

(assert (=> d!383714 (= c!222298 ((_ is Empty!4544) (c!221992 lt!447992)))))

(declare-fun e!866988 () List!13863)

(assert (=> d!383714 (= (list!5282 (c!221992 lt!447992)) e!866988)))

(declare-fun b!1354695 () Bool)

(assert (=> b!1354695 (= e!866988 e!866989)))

(declare-fun c!222299 () Bool)

(assert (=> b!1354695 (= c!222299 ((_ is Leaf!6936) (c!221992 lt!447992)))))

(declare-fun b!1354694 () Bool)

(assert (=> b!1354694 (= e!866988 Nil!13797)))

(assert (= (and d!383714 c!222298) b!1354694))

(assert (= (and d!383714 (not c!222298)) b!1354695))

(assert (= (and b!1354695 c!222299) b!1354696))

(assert (= (and b!1354695 (not c!222299)) b!1354697))

(declare-fun m!1516899 () Bool)

(assert (=> b!1354697 m!1516899))

(declare-fun m!1516901 () Bool)

(assert (=> b!1354697 m!1516901))

(assert (=> b!1354697 m!1516899))

(assert (=> b!1354697 m!1516901))

(declare-fun m!1516903 () Bool)

(assert (=> b!1354697 m!1516903))

(declare-fun m!1516905 () Bool)

(assert (=> b!1354696 m!1516905))

(assert (=> d!383370 d!383714))

(assert (=> d!383364 d!383354))

(declare-fun d!383716 () Bool)

(declare-fun lt!448525 () Int)

(assert (=> d!383716 (= lt!448525 (size!11280 (list!5279 (_1!7572 lt!448189))))))

(declare-fun size!11284 (Conc!4545) Int)

(assert (=> d!383716 (= lt!448525 (size!11284 (c!221994 (_1!7572 lt!448189))))))

(assert (=> d!383716 (= (size!11278 (_1!7572 lt!448189)) lt!448525)))

(declare-fun bs!333729 () Bool)

(assert (= bs!333729 d!383716))

(assert (=> bs!333729 m!1515843))

(assert (=> bs!333729 m!1515843))

(declare-fun m!1516941 () Bool)

(assert (=> bs!333729 m!1516941))

(declare-fun m!1516945 () Bool)

(assert (=> bs!333729 m!1516945))

(assert (=> d!383340 d!383716))

(declare-fun lt!448679 () BalanceConc!9028)

(declare-datatypes ((tuple2!13380 0))(
  ( (tuple2!13381 (_1!7576 Token!4444) (_2!7576 BalanceConc!9028)) )
))
(declare-datatypes ((Option!2646 0))(
  ( (None!2645) (Some!2645 (v!21371 tuple2!13380)) )
))
(declare-fun lt!448693 () Option!2646)

(declare-fun b!1354960 () Bool)

(declare-fun e!867135 () tuple2!13372)

(declare-fun append!396 (BalanceConc!9030 Token!4444) BalanceConc!9030)

(assert (=> b!1354960 (= e!867135 (lexTailRecV2!399 thiss!19762 rules!2550 lt!447986 lt!448679 (_2!7576 (v!21371 lt!448693)) (append!396 (BalanceConc!9031 Empty!4545) (_1!7576 (v!21371 lt!448693)))))))

(declare-fun lt!448669 () tuple2!13372)

(declare-fun lexRec!273 (LexerInterface!2086 List!13864 BalanceConc!9028) tuple2!13372)

(assert (=> b!1354960 (= lt!448669 (lexRec!273 thiss!19762 rules!2550 (_2!7576 (v!21371 lt!448693))))))

(declare-fun lt!448697 () List!13863)

(assert (=> b!1354960 (= lt!448697 (list!5278 (BalanceConc!9029 Empty!4544)))))

(declare-fun lt!448684 () List!13863)

(assert (=> b!1354960 (= lt!448684 (list!5278 (charsOf!1363 (_1!7576 (v!21371 lt!448693)))))))

(declare-fun lt!448687 () List!13863)

(assert (=> b!1354960 (= lt!448687 (list!5278 (_2!7576 (v!21371 lt!448693))))))

(declare-fun lt!448668 () Unit!19941)

(declare-fun lemmaConcatAssociativity!845 (List!13863 List!13863 List!13863) Unit!19941)

(assert (=> b!1354960 (= lt!448668 (lemmaConcatAssociativity!845 lt!448697 lt!448684 lt!448687))))

(assert (=> b!1354960 (= (++!3546 (++!3546 lt!448697 lt!448684) lt!448687) (++!3546 lt!448697 (++!3546 lt!448684 lt!448687)))))

(declare-fun lt!448689 () Unit!19941)

(assert (=> b!1354960 (= lt!448689 lt!448668)))

(declare-fun lt!448666 () Option!2646)

(declare-fun maxPrefixZipperSequence!546 (LexerInterface!2086 List!13864 BalanceConc!9028) Option!2646)

(assert (=> b!1354960 (= lt!448666 (maxPrefixZipperSequence!546 thiss!19762 rules!2550 lt!447986))))

(declare-fun c!222345 () Bool)

(assert (=> b!1354960 (= c!222345 ((_ is Some!2645) lt!448666))))

(declare-fun e!867133 () tuple2!13372)

(assert (=> b!1354960 (= (lexRec!273 thiss!19762 rules!2550 lt!447986) e!867133)))

(declare-fun lt!448674 () Unit!19941)

(declare-fun Unit!19953 () Unit!19941)

(assert (=> b!1354960 (= lt!448674 Unit!19953)))

(declare-fun lt!448667 () List!13866)

(assert (=> b!1354960 (= lt!448667 (list!5279 (BalanceConc!9031 Empty!4545)))))

(declare-fun lt!448696 () List!13866)

(assert (=> b!1354960 (= lt!448696 (Cons!13800 (_1!7576 (v!21371 lt!448693)) Nil!13800))))

(declare-fun lt!448691 () List!13866)

(assert (=> b!1354960 (= lt!448691 (list!5279 (_1!7572 lt!448669)))))

(declare-fun lt!448671 () Unit!19941)

(declare-fun lemmaConcatAssociativity!846 (List!13866 List!13866 List!13866) Unit!19941)

(assert (=> b!1354960 (= lt!448671 (lemmaConcatAssociativity!846 lt!448667 lt!448696 lt!448691))))

(assert (=> b!1354960 (= (++!3551 (++!3551 lt!448667 lt!448696) lt!448691) (++!3551 lt!448667 (++!3551 lt!448696 lt!448691)))))

(declare-fun lt!448686 () Unit!19941)

(assert (=> b!1354960 (= lt!448686 lt!448671)))

(declare-fun lt!448673 () List!13863)

(assert (=> b!1354960 (= lt!448673 (++!3546 (list!5278 (BalanceConc!9029 Empty!4544)) (list!5278 (charsOf!1363 (_1!7576 (v!21371 lt!448693))))))))

(declare-fun lt!448681 () List!13863)

(assert (=> b!1354960 (= lt!448681 (list!5278 (_2!7576 (v!21371 lt!448693))))))

(declare-fun lt!448683 () List!13866)

(assert (=> b!1354960 (= lt!448683 (list!5279 (append!396 (BalanceConc!9031 Empty!4545) (_1!7576 (v!21371 lt!448693)))))))

(declare-fun lt!448699 () Unit!19941)

(declare-fun lemmaLexThenLexPrefix!188 (LexerInterface!2086 List!13864 List!13863 List!13863 List!13866 List!13866 List!13863) Unit!19941)

(assert (=> b!1354960 (= lt!448699 (lemmaLexThenLexPrefix!188 thiss!19762 rules!2550 lt!448673 lt!448681 lt!448683 (list!5279 (_1!7572 lt!448669)) (list!5278 (_2!7572 lt!448669))))))

(assert (=> b!1354960 (= (lexList!604 thiss!19762 rules!2550 lt!448673) (tuple2!13375 lt!448683 Nil!13797))))

(declare-fun lt!448675 () Unit!19941)

(assert (=> b!1354960 (= lt!448675 lt!448699)))

(declare-fun lt!448694 () BalanceConc!9028)

(assert (=> b!1354960 (= lt!448694 (++!3548 (BalanceConc!9029 Empty!4544) (charsOf!1363 (_1!7576 (v!21371 lt!448693)))))))

(declare-fun lt!448680 () Option!2646)

(assert (=> b!1354960 (= lt!448680 (maxPrefixZipperSequence!546 thiss!19762 rules!2550 lt!448694))))

(declare-fun c!222344 () Bool)

(assert (=> b!1354960 (= c!222344 ((_ is Some!2645) lt!448680))))

(declare-fun e!867136 () tuple2!13372)

(assert (=> b!1354960 (= (lexRec!273 thiss!19762 rules!2550 (++!3548 (BalanceConc!9029 Empty!4544) (charsOf!1363 (_1!7576 (v!21371 lt!448693))))) e!867136)))

(declare-fun lt!448688 () Unit!19941)

(declare-fun Unit!19954 () Unit!19941)

(assert (=> b!1354960 (= lt!448688 Unit!19954)))

(assert (=> b!1354960 (= lt!448679 (++!3548 (BalanceConc!9029 Empty!4544) (charsOf!1363 (_1!7576 (v!21371 lt!448693)))))))

(declare-fun lt!448672 () List!13863)

(assert (=> b!1354960 (= lt!448672 (list!5278 lt!448679))))

(declare-fun lt!448678 () List!13863)

(assert (=> b!1354960 (= lt!448678 (list!5278 (_2!7576 (v!21371 lt!448693))))))

(declare-fun lt!448692 () Unit!19941)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!229 (List!13863 List!13863) Unit!19941)

(assert (=> b!1354960 (= lt!448692 (lemmaConcatTwoListThenFSndIsSuffix!229 lt!448672 lt!448678))))

(declare-fun isSuffix!251 (List!13863 List!13863) Bool)

(assert (=> b!1354960 (isSuffix!251 lt!448678 (++!3546 lt!448672 lt!448678))))

(declare-fun lt!448677 () Unit!19941)

(assert (=> b!1354960 (= lt!448677 lt!448692)))

(declare-fun b!1354961 () Bool)

(declare-fun lt!448685 () tuple2!13372)

(assert (=> b!1354961 (= lt!448685 (lexRec!273 thiss!19762 rules!2550 (_2!7576 (v!21371 lt!448666))))))

(declare-fun prepend!360 (BalanceConc!9030 Token!4444) BalanceConc!9030)

(assert (=> b!1354961 (= e!867133 (tuple2!13373 (prepend!360 (_1!7572 lt!448685) (_1!7576 (v!21371 lt!448666))) (_2!7572 lt!448685)))))

(declare-fun b!1354962 () Bool)

(assert (=> b!1354962 (= e!867133 (tuple2!13373 (BalanceConc!9031 Empty!4545) lt!447986))))

(declare-fun b!1354964 () Bool)

(declare-fun lt!448676 () tuple2!13372)

(assert (=> b!1354964 (= lt!448676 (lexRec!273 thiss!19762 rules!2550 (_2!7576 (v!21371 lt!448680))))))

(assert (=> b!1354964 (= e!867136 (tuple2!13373 (prepend!360 (_1!7572 lt!448676) (_1!7576 (v!21371 lt!448680))) (_2!7572 lt!448676)))))

(declare-fun b!1354965 () Bool)

(assert (=> b!1354965 (= e!867136 (tuple2!13373 (BalanceConc!9031 Empty!4545) lt!448694))))

(declare-fun lt!448670 () tuple2!13372)

(declare-fun b!1354966 () Bool)

(declare-fun e!867134 () Bool)

(assert (=> b!1354966 (= e!867134 (= (list!5278 (_2!7572 lt!448670)) (list!5278 (_2!7572 (lexRec!273 thiss!19762 rules!2550 lt!447986)))))))

(declare-fun b!1354963 () Bool)

(assert (=> b!1354963 (= e!867135 (tuple2!13373 (BalanceConc!9031 Empty!4545) lt!447986))))

(declare-fun d!383720 () Bool)

(assert (=> d!383720 e!867134))

(declare-fun res!610368 () Bool)

(assert (=> d!383720 (=> (not res!610368) (not e!867134))))

(assert (=> d!383720 (= res!610368 (= (list!5279 (_1!7572 lt!448670)) (list!5279 (_1!7572 (lexRec!273 thiss!19762 rules!2550 lt!447986)))))))

(assert (=> d!383720 (= lt!448670 e!867135)))

(declare-fun c!222346 () Bool)

(assert (=> d!383720 (= c!222346 ((_ is Some!2645) lt!448693))))

(declare-fun maxPrefixZipperSequenceV2!218 (LexerInterface!2086 List!13864 BalanceConc!9028 BalanceConc!9028) Option!2646)

(assert (=> d!383720 (= lt!448693 (maxPrefixZipperSequenceV2!218 thiss!19762 rules!2550 lt!447986 lt!447986))))

(declare-fun lt!448698 () Unit!19941)

(declare-fun lt!448695 () Unit!19941)

(assert (=> d!383720 (= lt!448698 lt!448695)))

(declare-fun lt!448682 () List!13863)

(declare-fun lt!448690 () List!13863)

(assert (=> d!383720 (isSuffix!251 lt!448682 (++!3546 lt!448690 lt!448682))))

(assert (=> d!383720 (= lt!448695 (lemmaConcatTwoListThenFSndIsSuffix!229 lt!448690 lt!448682))))

(assert (=> d!383720 (= lt!448682 (list!5278 lt!447986))))

(assert (=> d!383720 (= lt!448690 (list!5278 (BalanceConc!9029 Empty!4544)))))

(assert (=> d!383720 (= (lexTailRecV2!399 thiss!19762 rules!2550 lt!447986 (BalanceConc!9029 Empty!4544) lt!447986 (BalanceConc!9031 Empty!4545)) lt!448670)))

(assert (= (and d!383720 c!222346) b!1354960))

(assert (= (and d!383720 (not c!222346)) b!1354963))

(assert (= (and b!1354960 c!222345) b!1354961))

(assert (= (and b!1354960 (not c!222345)) b!1354962))

(assert (= (and b!1354960 c!222344) b!1354964))

(assert (= (and b!1354960 (not c!222344)) b!1354965))

(assert (= (and d!383720 res!610368) b!1354966))

(declare-fun m!1517261 () Bool)

(assert (=> b!1354960 m!1517261))

(declare-fun m!1517263 () Bool)

(assert (=> b!1354960 m!1517263))

(declare-fun m!1517265 () Bool)

(assert (=> b!1354960 m!1517265))

(declare-fun m!1517267 () Bool)

(assert (=> b!1354960 m!1517267))

(declare-fun m!1517269 () Bool)

(assert (=> b!1354960 m!1517269))

(declare-fun m!1517271 () Bool)

(assert (=> b!1354960 m!1517271))

(declare-fun m!1517273 () Bool)

(assert (=> b!1354960 m!1517273))

(declare-fun m!1517275 () Bool)

(assert (=> b!1354960 m!1517275))

(declare-fun m!1517277 () Bool)

(assert (=> b!1354960 m!1517277))

(declare-fun m!1517279 () Bool)

(assert (=> b!1354960 m!1517279))

(declare-fun m!1517281 () Bool)

(assert (=> b!1354960 m!1517281))

(assert (=> b!1354960 m!1517271))

(declare-fun m!1517283 () Bool)

(assert (=> b!1354960 m!1517283))

(declare-fun m!1517285 () Bool)

(assert (=> b!1354960 m!1517285))

(declare-fun m!1517287 () Bool)

(assert (=> b!1354960 m!1517287))

(declare-fun m!1517289 () Bool)

(assert (=> b!1354960 m!1517289))

(assert (=> b!1354960 m!1517267))

(declare-fun m!1517291 () Bool)

(assert (=> b!1354960 m!1517291))

(assert (=> b!1354960 m!1517275))

(declare-fun m!1517293 () Bool)

(assert (=> b!1354960 m!1517293))

(assert (=> b!1354960 m!1517279))

(declare-fun m!1517295 () Bool)

(assert (=> b!1354960 m!1517295))

(declare-fun m!1517297 () Bool)

(assert (=> b!1354960 m!1517297))

(assert (=> b!1354960 m!1517269))

(declare-fun m!1517299 () Bool)

(assert (=> b!1354960 m!1517299))

(assert (=> b!1354960 m!1517293))

(assert (=> b!1354960 m!1517281))

(declare-fun m!1517301 () Bool)

(assert (=> b!1354960 m!1517301))

(declare-fun m!1517303 () Bool)

(assert (=> b!1354960 m!1517303))

(assert (=> b!1354960 m!1517279))

(assert (=> b!1354960 m!1517295))

(declare-fun m!1517305 () Bool)

(assert (=> b!1354960 m!1517305))

(assert (=> b!1354960 m!1517275))

(declare-fun m!1517307 () Bool)

(assert (=> b!1354960 m!1517307))

(declare-fun m!1517309 () Bool)

(assert (=> b!1354960 m!1517309))

(assert (=> b!1354960 m!1517261))

(declare-fun m!1517311 () Bool)

(assert (=> b!1354960 m!1517311))

(declare-fun m!1517313 () Bool)

(assert (=> b!1354960 m!1517313))

(declare-fun m!1517315 () Bool)

(assert (=> b!1354960 m!1517315))

(declare-fun m!1517317 () Bool)

(assert (=> b!1354960 m!1517317))

(declare-fun m!1517319 () Bool)

(assert (=> b!1354960 m!1517319))

(assert (=> b!1354960 m!1517315))

(assert (=> b!1354960 m!1517289))

(assert (=> b!1354960 m!1517265))

(declare-fun m!1517321 () Bool)

(assert (=> b!1354960 m!1517321))

(declare-fun m!1517323 () Bool)

(assert (=> b!1354960 m!1517323))

(declare-fun m!1517325 () Bool)

(assert (=> b!1354960 m!1517325))

(declare-fun m!1517327 () Bool)

(assert (=> d!383720 m!1517327))

(declare-fun m!1517329 () Bool)

(assert (=> d!383720 m!1517329))

(declare-fun m!1517331 () Bool)

(assert (=> d!383720 m!1517331))

(declare-fun m!1517333 () Bool)

(assert (=> d!383720 m!1517333))

(declare-fun m!1517335 () Bool)

(assert (=> d!383720 m!1517335))

(assert (=> d!383720 m!1517293))

(assert (=> d!383720 m!1517329))

(assert (=> d!383720 m!1515177))

(declare-fun m!1517337 () Bool)

(assert (=> d!383720 m!1517337))

(assert (=> d!383720 m!1517303))

(declare-fun m!1517339 () Bool)

(assert (=> b!1354964 m!1517339))

(declare-fun m!1517341 () Bool)

(assert (=> b!1354964 m!1517341))

(declare-fun m!1517343 () Bool)

(assert (=> b!1354961 m!1517343))

(declare-fun m!1517345 () Bool)

(assert (=> b!1354961 m!1517345))

(declare-fun m!1517347 () Bool)

(assert (=> b!1354966 m!1517347))

(assert (=> b!1354966 m!1517303))

(declare-fun m!1517349 () Bool)

(assert (=> b!1354966 m!1517349))

(assert (=> d!383340 d!383720))

(declare-fun d!383858 () Bool)

(declare-fun lt!448702 () Int)

(assert (=> d!383858 (>= lt!448702 0)))

(declare-fun e!867139 () Int)

(assert (=> d!383858 (= lt!448702 e!867139)))

(declare-fun c!222349 () Bool)

(assert (=> d!383858 (= c!222349 ((_ is Nil!13799) lt!448196))))

(assert (=> d!383858 (= (size!11281 lt!448196) lt!448702)))

(declare-fun b!1354971 () Bool)

(assert (=> b!1354971 (= e!867139 0)))

(declare-fun b!1354972 () Bool)

(assert (=> b!1354972 (= e!867139 (+ 1 (size!11281 (t!120230 lt!448196))))))

(assert (= (and d!383858 c!222349) b!1354971))

(assert (= (and d!383858 (not c!222349)) b!1354972))

(declare-fun m!1517351 () Bool)

(assert (=> b!1354972 m!1517351))

(assert (=> d!383360 d!383858))

(declare-fun d!383860 () Bool)

(declare-fun lt!448705 () Int)

(assert (=> d!383860 (>= lt!448705 0)))

(declare-fun e!867142 () Int)

(assert (=> d!383860 (= lt!448705 e!867142)))

(declare-fun c!222352 () Bool)

(assert (=> d!383860 (= c!222352 ((_ is Nil!13798) rules!2550))))

(assert (=> d!383860 (= (size!11282 rules!2550) lt!448705)))

(declare-fun b!1354977 () Bool)

(assert (=> b!1354977 (= e!867142 0)))

(declare-fun b!1354978 () Bool)

(assert (=> b!1354978 (= e!867142 (+ 1 (size!11282 (t!120229 rules!2550))))))

(assert (= (and d!383860 c!222352) b!1354977))

(assert (= (and d!383860 (not c!222352)) b!1354978))

(assert (=> b!1354978 m!1516499))

(assert (=> d!383360 d!383860))

(declare-fun d!383862 () Bool)

(declare-fun lt!448706 () Bool)

(assert (=> d!383862 (= lt!448706 (select (content!1984 rules!2550) (rule!4138 (_1!7571 (get!4324 lt!448124)))))))

(declare-fun e!867143 () Bool)

(assert (=> d!383862 (= lt!448706 e!867143)))

(declare-fun res!610370 () Bool)

(assert (=> d!383862 (=> (not res!610370) (not e!867143))))

(assert (=> d!383862 (= res!610370 ((_ is Cons!13798) rules!2550))))

(assert (=> d!383862 (= (contains!2549 rules!2550 (rule!4138 (_1!7571 (get!4324 lt!448124)))) lt!448706)))

(declare-fun b!1354979 () Bool)

(declare-fun e!867144 () Bool)

(assert (=> b!1354979 (= e!867143 e!867144)))

(declare-fun res!610369 () Bool)

(assert (=> b!1354979 (=> res!610369 e!867144)))

(assert (=> b!1354979 (= res!610369 (= (h!19199 rules!2550) (rule!4138 (_1!7571 (get!4324 lt!448124)))))))

(declare-fun b!1354980 () Bool)

(assert (=> b!1354980 (= e!867144 (contains!2549 (t!120229 rules!2550) (rule!4138 (_1!7571 (get!4324 lt!448124)))))))

(assert (= (and d!383862 res!610370) b!1354979))

(assert (= (and b!1354979 (not res!610369)) b!1354980))

(assert (=> d!383862 m!1515765))

(declare-fun m!1517353 () Bool)

(assert (=> d!383862 m!1517353))

(declare-fun m!1517355 () Bool)

(assert (=> b!1354980 m!1517355))

(assert (=> b!1353682 d!383862))

(assert (=> b!1353682 d!383596))

(declare-fun bs!333771 () Bool)

(declare-fun d!383864 () Bool)

(assert (= bs!333771 (and d!383864 d!383708)))

(declare-fun lambda!57178 () Int)

(assert (=> bs!333771 (= (= (toValue!3642 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (= lambda!57178 lambda!57172))))

(assert (=> d!383864 true))

(assert (=> d!383864 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (rule!4138 t2!34)))) (dynLambda!6168 order!8333 lambda!57178))))

(assert (=> d!383864 (= (equivClasses!873 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34)))) (Forall2!433 lambda!57178))))

(declare-fun bs!333772 () Bool)

(assert (= bs!333772 d!383864))

(declare-fun m!1517357 () Bool)

(assert (=> bs!333772 m!1517357))

(assert (=> b!1353724 d!383864))

(declare-fun d!383866 () Bool)

(declare-fun res!610371 () Bool)

(declare-fun e!867145 () Bool)

(assert (=> d!383866 (=> res!610371 e!867145)))

(assert (=> d!383866 (= res!610371 (not ((_ is Cons!13798) (t!120229 rules!2550))))))

(assert (=> d!383866 (= (sepAndNonSepRulesDisjointChars!764 rules!2550 (t!120229 rules!2550)) e!867145)))

(declare-fun b!1354981 () Bool)

(declare-fun e!867146 () Bool)

(assert (=> b!1354981 (= e!867145 e!867146)))

(declare-fun res!610372 () Bool)

(assert (=> b!1354981 (=> (not res!610372) (not e!867146))))

(assert (=> b!1354981 (= res!610372 (ruleDisjointCharsFromAllFromOtherType!356 (h!19199 (t!120229 rules!2550)) rules!2550))))

(declare-fun b!1354982 () Bool)

(assert (=> b!1354982 (= e!867146 (sepAndNonSepRulesDisjointChars!764 rules!2550 (t!120229 (t!120229 rules!2550))))))

(assert (= (and d!383866 (not res!610371)) b!1354981))

(assert (= (and b!1354981 res!610372) b!1354982))

(declare-fun m!1517359 () Bool)

(assert (=> b!1354981 m!1517359))

(declare-fun m!1517361 () Bool)

(assert (=> b!1354982 m!1517361))

(assert (=> b!1353452 d!383866))

(declare-fun d!383868 () Bool)

(declare-fun lt!448707 () Int)

(assert (=> d!383868 (= lt!448707 (size!11276 (list!5278 lt!447992)))))

(assert (=> d!383868 (= lt!448707 (size!11277 (c!221992 lt!447992)))))

(assert (=> d!383868 (= (size!11270 lt!447992) lt!448707)))

(declare-fun bs!333773 () Bool)

(assert (= bs!333773 d!383868))

(assert (=> bs!333773 m!1515143))

(assert (=> bs!333773 m!1515143))

(declare-fun m!1517363 () Bool)

(assert (=> bs!333773 m!1517363))

(declare-fun m!1517365 () Bool)

(assert (=> bs!333773 m!1517365))

(assert (=> b!1353721 d!383868))

(assert (=> b!1353679 d!383596))

(declare-fun d!383870 () Bool)

(declare-fun dynLambda!6169 (Int BalanceConc!9028) TokenValue!2481)

(assert (=> d!383870 (= (apply!3317 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124))))) (dynLambda!6169 (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun b_lambda!40707 () Bool)

(assert (=> (not b_lambda!40707) (not d!383870)))

(declare-fun tb!71217 () Bool)

(declare-fun t!120318 () Bool)

(assert (=> (and b!1353360 (= (toValue!3642 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120318) tb!71217))

(declare-fun result!86562 () Bool)

(assert (=> tb!71217 (= result!86562 (inv!21 (dynLambda!6169 (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun m!1517367 () Bool)

(assert (=> tb!71217 m!1517367))

(assert (=> d!383870 t!120318))

(declare-fun b_and!90699 () Bool)

(assert (= b_and!90603 (and (=> t!120318 result!86562) b_and!90699)))

(declare-fun tb!71219 () Bool)

(declare-fun t!120320 () Bool)

(assert (=> (and b!1353353 (= (toValue!3642 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120320) tb!71219))

(declare-fun result!86566 () Bool)

(assert (= result!86566 result!86562))

(assert (=> d!383870 t!120320))

(declare-fun b_and!90701 () Bool)

(assert (= b_and!90607 (and (=> t!120320 result!86566) b_and!90701)))

(declare-fun tb!71221 () Bool)

(declare-fun t!120322 () Bool)

(assert (=> (and b!1353374 (= (toValue!3642 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120322) tb!71221))

(declare-fun result!86568 () Bool)

(assert (= result!86568 result!86562))

(assert (=> d!383870 t!120322))

(declare-fun b_and!90703 () Bool)

(assert (= b_and!90611 (and (=> t!120322 result!86568) b_and!90703)))

(declare-fun tb!71223 () Bool)

(declare-fun t!120324 () Bool)

(assert (=> (and b!1353988 (= (toValue!3642 (transformation!2391 (h!19199 (t!120229 rules!2550)))) (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120324) tb!71223))

(declare-fun result!86570 () Bool)

(assert (= result!86570 result!86562))

(assert (=> d!383870 t!120324))

(declare-fun b_and!90705 () Bool)

(assert (= b_and!90667 (and (=> t!120324 result!86570) b_and!90705)))

(assert (=> d!383870 m!1515617))

(declare-fun m!1517369 () Bool)

(assert (=> d!383870 m!1517369))

(assert (=> b!1353679 d!383870))

(declare-fun d!383872 () Bool)

(declare-fun fromListB!711 (List!13863) BalanceConc!9028)

(assert (=> d!383872 (= (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124)))) (fromListB!711 (originalCharacters!3253 (_1!7571 (get!4324 lt!448124)))))))

(declare-fun bs!333774 () Bool)

(assert (= bs!333774 d!383872))

(declare-fun m!1517371 () Bool)

(assert (=> bs!333774 m!1517371))

(assert (=> b!1353679 d!383872))

(declare-fun d!383874 () Bool)

(assert (=> d!383874 (= (isEmpty!8261 (originalCharacters!3253 t1!34)) ((_ is Nil!13797) (originalCharacters!3253 t1!34)))))

(assert (=> d!383282 d!383874))

(declare-fun d!383876 () Bool)

(assert (=> d!383876 (= (isEmpty!8261 lt!447991) ((_ is Nil!13797) lt!447991))))

(assert (=> d!383376 d!383876))

(declare-fun b!1354988 () Bool)

(declare-fun lt!448708 () List!13863)

(declare-fun e!867151 () Bool)

(assert (=> b!1354988 (= e!867151 (or (not (= (getSuffix!553 lt!447984 lt!447991) Nil!13797)) (= lt!448708 (t!120228 lt!447991))))))

(declare-fun b!1354986 () Bool)

(declare-fun e!867150 () List!13863)

(assert (=> b!1354986 (= e!867150 (Cons!13797 (h!19198 (t!120228 lt!447991)) (++!3546 (t!120228 (t!120228 lt!447991)) (getSuffix!553 lt!447984 lt!447991))))))

(declare-fun b!1354985 () Bool)

(assert (=> b!1354985 (= e!867150 (getSuffix!553 lt!447984 lt!447991))))

(declare-fun d!383878 () Bool)

(assert (=> d!383878 e!867151))

(declare-fun res!610374 () Bool)

(assert (=> d!383878 (=> (not res!610374) (not e!867151))))

(assert (=> d!383878 (= res!610374 (= (content!1983 lt!448708) ((_ map or) (content!1983 (t!120228 lt!447991)) (content!1983 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (=> d!383878 (= lt!448708 e!867150)))

(declare-fun c!222353 () Bool)

(assert (=> d!383878 (= c!222353 ((_ is Nil!13797) (t!120228 lt!447991)))))

(assert (=> d!383878 (= (++!3546 (t!120228 lt!447991) (getSuffix!553 lt!447984 lt!447991)) lt!448708)))

(declare-fun b!1354987 () Bool)

(declare-fun res!610373 () Bool)

(assert (=> b!1354987 (=> (not res!610373) (not e!867151))))

(assert (=> b!1354987 (= res!610373 (= (size!11276 lt!448708) (+ (size!11276 (t!120228 lt!447991)) (size!11276 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (= (and d!383878 c!222353) b!1354985))

(assert (= (and d!383878 (not c!222353)) b!1354986))

(assert (= (and d!383878 res!610374) b!1354987))

(assert (= (and b!1354987 res!610373) b!1354988))

(assert (=> b!1354986 m!1515131))

(declare-fun m!1517373 () Bool)

(assert (=> b!1354986 m!1517373))

(declare-fun m!1517375 () Bool)

(assert (=> d!383878 m!1517375))

(declare-fun m!1517377 () Bool)

(assert (=> d!383878 m!1517377))

(assert (=> d!383878 m!1515131))

(assert (=> d!383878 m!1515719))

(declare-fun m!1517379 () Bool)

(assert (=> b!1354987 m!1517379))

(assert (=> b!1354987 m!1516719))

(assert (=> b!1354987 m!1515131))

(assert (=> b!1354987 m!1515725))

(assert (=> b!1353752 d!383878))

(declare-fun d!383880 () Bool)

(declare-fun c!222356 () Bool)

(assert (=> d!383880 (= c!222356 ((_ is Nil!13797) lt!447991))))

(declare-fun e!867154 () (InoxSet C!7700))

(assert (=> d!383880 (= (content!1983 lt!447991) e!867154)))

(declare-fun b!1354993 () Bool)

(assert (=> b!1354993 (= e!867154 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1354994 () Bool)

(assert (=> b!1354994 (= e!867154 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 lt!447991) true) (content!1983 (t!120228 lt!447991))))))

(assert (= (and d!383880 c!222356) b!1354993))

(assert (= (and d!383880 (not c!222356)) b!1354994))

(declare-fun m!1517381 () Bool)

(assert (=> b!1354994 m!1517381))

(assert (=> b!1354994 m!1517377))

(assert (=> d!383344 d!383880))

(declare-fun b!1354995 () Bool)

(declare-fun res!610382 () Bool)

(declare-fun e!867160 () Bool)

(assert (=> b!1354995 (=> res!610382 e!867160)))

(assert (=> b!1354995 (= res!610382 (not (isEmpty!8261 (tail!1952 (tail!1952 lt!447984)))))))

(declare-fun b!1354996 () Bool)

(declare-fun e!867159 () Bool)

(assert (=> b!1354996 (= e!867159 (nullable!1185 (derivativeStep!943 lt!447993 (head!2419 lt!447984))))))

(declare-fun b!1354997 () Bool)

(assert (=> b!1354997 (= e!867160 (not (= (head!2419 (tail!1952 lt!447984)) (c!221993 (derivativeStep!943 lt!447993 (head!2419 lt!447984))))))))

(declare-fun b!1354998 () Bool)

(declare-fun e!867155 () Bool)

(assert (=> b!1354998 (= e!867155 (= (head!2419 (tail!1952 lt!447984)) (c!221993 (derivativeStep!943 lt!447993 (head!2419 lt!447984)))))))

(declare-fun b!1354999 () Bool)

(declare-fun e!867156 () Bool)

(declare-fun e!867158 () Bool)

(assert (=> b!1354999 (= e!867156 e!867158)))

(declare-fun res!610378 () Bool)

(assert (=> b!1354999 (=> (not res!610378) (not e!867158))))

(declare-fun lt!448709 () Bool)

(assert (=> b!1354999 (= res!610378 (not lt!448709))))

(declare-fun b!1355000 () Bool)

(declare-fun e!867161 () Bool)

(declare-fun e!867157 () Bool)

(assert (=> b!1355000 (= e!867161 e!867157)))

(declare-fun c!222358 () Bool)

(assert (=> b!1355000 (= c!222358 ((_ is EmptyLang!3705) (derivativeStep!943 lt!447993 (head!2419 lt!447984))))))

(declare-fun b!1355001 () Bool)

(declare-fun res!610379 () Bool)

(assert (=> b!1355001 (=> res!610379 e!867156)))

(assert (=> b!1355001 (= res!610379 e!867155)))

(declare-fun res!610380 () Bool)

(assert (=> b!1355001 (=> (not res!610380) (not e!867155))))

(assert (=> b!1355001 (= res!610380 lt!448709)))

(declare-fun b!1355002 () Bool)

(declare-fun res!610376 () Bool)

(assert (=> b!1355002 (=> (not res!610376) (not e!867155))))

(assert (=> b!1355002 (= res!610376 (isEmpty!8261 (tail!1952 (tail!1952 lt!447984))))))

(declare-fun b!1355003 () Bool)

(declare-fun res!610375 () Bool)

(assert (=> b!1355003 (=> (not res!610375) (not e!867155))))

(declare-fun call!91219 () Bool)

(assert (=> b!1355003 (= res!610375 (not call!91219))))

(declare-fun d!383882 () Bool)

(assert (=> d!383882 e!867161))

(declare-fun c!222357 () Bool)

(assert (=> d!383882 (= c!222357 ((_ is EmptyExpr!3705) (derivativeStep!943 lt!447993 (head!2419 lt!447984))))))

(assert (=> d!383882 (= lt!448709 e!867159)))

(declare-fun c!222359 () Bool)

(assert (=> d!383882 (= c!222359 (isEmpty!8261 (tail!1952 lt!447984)))))

(assert (=> d!383882 (validRegex!1605 (derivativeStep!943 lt!447993 (head!2419 lt!447984)))))

(assert (=> d!383882 (= (matchR!1698 (derivativeStep!943 lt!447993 (head!2419 lt!447984)) (tail!1952 lt!447984)) lt!448709)))

(declare-fun b!1355004 () Bool)

(assert (=> b!1355004 (= e!867157 (not lt!448709))))

(declare-fun bm!91214 () Bool)

(assert (=> bm!91214 (= call!91219 (isEmpty!8261 (tail!1952 lt!447984)))))

(declare-fun b!1355005 () Bool)

(declare-fun res!610381 () Bool)

(assert (=> b!1355005 (=> res!610381 e!867156)))

(assert (=> b!1355005 (= res!610381 (not ((_ is ElementMatch!3705) (derivativeStep!943 lt!447993 (head!2419 lt!447984)))))))

(assert (=> b!1355005 (= e!867157 e!867156)))

(declare-fun b!1355006 () Bool)

(assert (=> b!1355006 (= e!867161 (= lt!448709 call!91219))))

(declare-fun b!1355007 () Bool)

(assert (=> b!1355007 (= e!867159 (matchR!1698 (derivativeStep!943 (derivativeStep!943 lt!447993 (head!2419 lt!447984)) (head!2419 (tail!1952 lt!447984))) (tail!1952 (tail!1952 lt!447984))))))

(declare-fun b!1355008 () Bool)

(assert (=> b!1355008 (= e!867158 e!867160)))

(declare-fun res!610377 () Bool)

(assert (=> b!1355008 (=> res!610377 e!867160)))

(assert (=> b!1355008 (= res!610377 call!91219)))

(assert (= (and d!383882 c!222359) b!1354996))

(assert (= (and d!383882 (not c!222359)) b!1355007))

(assert (= (and d!383882 c!222357) b!1355006))

(assert (= (and d!383882 (not c!222357)) b!1355000))

(assert (= (and b!1355000 c!222358) b!1355004))

(assert (= (and b!1355000 (not c!222358)) b!1355005))

(assert (= (and b!1355005 (not res!610381)) b!1355001))

(assert (= (and b!1355001 res!610380) b!1355003))

(assert (= (and b!1355003 res!610375) b!1355002))

(assert (= (and b!1355002 res!610376) b!1354998))

(assert (= (and b!1355001 (not res!610379)) b!1354999))

(assert (= (and b!1354999 res!610378) b!1355008))

(assert (= (and b!1355008 (not res!610377)) b!1354995))

(assert (= (and b!1354995 (not res!610382)) b!1354997))

(assert (= (or b!1355006 b!1355003 b!1355008) bm!91214))

(assert (=> b!1354995 m!1515731))

(declare-fun m!1517383 () Bool)

(assert (=> b!1354995 m!1517383))

(assert (=> b!1354995 m!1517383))

(declare-fun m!1517385 () Bool)

(assert (=> b!1354995 m!1517385))

(assert (=> b!1355007 m!1515731))

(declare-fun m!1517387 () Bool)

(assert (=> b!1355007 m!1517387))

(assert (=> b!1355007 m!1515775))

(assert (=> b!1355007 m!1517387))

(declare-fun m!1517389 () Bool)

(assert (=> b!1355007 m!1517389))

(assert (=> b!1355007 m!1515731))

(assert (=> b!1355007 m!1517383))

(assert (=> b!1355007 m!1517389))

(assert (=> b!1355007 m!1517383))

(declare-fun m!1517391 () Bool)

(assert (=> b!1355007 m!1517391))

(assert (=> d!383882 m!1515731))

(assert (=> d!383882 m!1515771))

(assert (=> d!383882 m!1515775))

(declare-fun m!1517393 () Bool)

(assert (=> d!383882 m!1517393))

(assert (=> b!1354997 m!1515731))

(assert (=> b!1354997 m!1517387))

(assert (=> b!1355002 m!1515731))

(assert (=> b!1355002 m!1517383))

(assert (=> b!1355002 m!1517383))

(assert (=> b!1355002 m!1517385))

(assert (=> b!1354998 m!1515731))

(assert (=> b!1354998 m!1517387))

(assert (=> bm!91214 m!1515731))

(assert (=> bm!91214 m!1515771))

(assert (=> b!1354996 m!1515775))

(declare-fun m!1517395 () Bool)

(assert (=> b!1354996 m!1517395))

(assert (=> b!1353833 d!383882))

(declare-fun b!1355009 () Bool)

(declare-fun c!222364 () Bool)

(assert (=> b!1355009 (= c!222364 (nullable!1185 (regOne!7922 lt!447993)))))

(declare-fun e!867163 () Regex!3705)

(declare-fun e!867162 () Regex!3705)

(assert (=> b!1355009 (= e!867163 e!867162)))

(declare-fun b!1355010 () Bool)

(declare-fun call!91220 () Regex!3705)

(assert (=> b!1355010 (= e!867163 (Concat!6187 call!91220 lt!447993))))

(declare-fun bm!91215 () Bool)

(declare-fun call!91223 () Regex!3705)

(declare-fun call!91222 () Regex!3705)

(assert (=> bm!91215 (= call!91223 call!91222)))

(declare-fun bm!91216 () Bool)

(declare-fun call!91221 () Regex!3705)

(assert (=> bm!91216 (= call!91220 call!91221)))

(declare-fun b!1355011 () Bool)

(declare-fun e!867164 () Regex!3705)

(assert (=> b!1355011 (= e!867164 (Union!3705 call!91221 call!91222))))

(declare-fun d!383884 () Bool)

(declare-fun lt!448710 () Regex!3705)

(assert (=> d!383884 (validRegex!1605 lt!448710)))

(declare-fun e!867165 () Regex!3705)

(assert (=> d!383884 (= lt!448710 e!867165)))

(declare-fun c!222363 () Bool)

(assert (=> d!383884 (= c!222363 (or ((_ is EmptyExpr!3705) lt!447993) ((_ is EmptyLang!3705) lt!447993)))))

(assert (=> d!383884 (validRegex!1605 lt!447993)))

(assert (=> d!383884 (= (derivativeStep!943 lt!447993 (head!2419 lt!447984)) lt!448710)))

(declare-fun b!1355012 () Bool)

(assert (=> b!1355012 (= e!867165 EmptyLang!3705)))

(declare-fun c!222362 () Bool)

(declare-fun bm!91217 () Bool)

(declare-fun c!222361 () Bool)

(assert (=> bm!91217 (= call!91221 (derivativeStep!943 (ite c!222361 (regOne!7923 lt!447993) (ite c!222362 (reg!4034 lt!447993) (regOne!7922 lt!447993))) (head!2419 lt!447984)))))

(declare-fun b!1355013 () Bool)

(assert (=> b!1355013 (= e!867162 (Union!3705 (Concat!6187 call!91223 (regTwo!7922 lt!447993)) EmptyLang!3705))))

(declare-fun b!1355014 () Bool)

(assert (=> b!1355014 (= e!867162 (Union!3705 (Concat!6187 call!91220 (regTwo!7922 lt!447993)) call!91223))))

(declare-fun b!1355015 () Bool)

(declare-fun e!867166 () Regex!3705)

(assert (=> b!1355015 (= e!867165 e!867166)))

(declare-fun c!222360 () Bool)

(assert (=> b!1355015 (= c!222360 ((_ is ElementMatch!3705) lt!447993))))

(declare-fun b!1355016 () Bool)

(assert (=> b!1355016 (= e!867164 e!867163)))

(assert (=> b!1355016 (= c!222362 ((_ is Star!3705) lt!447993))))

(declare-fun bm!91218 () Bool)

(assert (=> bm!91218 (= call!91222 (derivativeStep!943 (ite c!222361 (regTwo!7923 lt!447993) (ite c!222364 (regTwo!7922 lt!447993) (regOne!7922 lt!447993))) (head!2419 lt!447984)))))

(declare-fun b!1355017 () Bool)

(assert (=> b!1355017 (= c!222361 ((_ is Union!3705) lt!447993))))

(assert (=> b!1355017 (= e!867166 e!867164)))

(declare-fun b!1355018 () Bool)

(assert (=> b!1355018 (= e!867166 (ite (= (head!2419 lt!447984) (c!221993 lt!447993)) EmptyExpr!3705 EmptyLang!3705))))

(assert (= (and d!383884 c!222363) b!1355012))

(assert (= (and d!383884 (not c!222363)) b!1355015))

(assert (= (and b!1355015 c!222360) b!1355018))

(assert (= (and b!1355015 (not c!222360)) b!1355017))

(assert (= (and b!1355017 c!222361) b!1355011))

(assert (= (and b!1355017 (not c!222361)) b!1355016))

(assert (= (and b!1355016 c!222362) b!1355010))

(assert (= (and b!1355016 (not c!222362)) b!1355009))

(assert (= (and b!1355009 c!222364) b!1355014))

(assert (= (and b!1355009 (not c!222364)) b!1355013))

(assert (= (or b!1355014 b!1355013) bm!91215))

(assert (= (or b!1355010 b!1355014) bm!91216))

(assert (= (or b!1355011 bm!91216) bm!91217))

(assert (= (or b!1355011 bm!91215) bm!91218))

(assert (=> b!1355009 m!1516697))

(declare-fun m!1517397 () Bool)

(assert (=> d!383884 m!1517397))

(assert (=> d!383884 m!1515373))

(assert (=> bm!91217 m!1515773))

(declare-fun m!1517399 () Bool)

(assert (=> bm!91217 m!1517399))

(assert (=> bm!91218 m!1515773))

(declare-fun m!1517401 () Bool)

(assert (=> bm!91218 m!1517401))

(assert (=> b!1353833 d!383884))

(declare-fun d!383886 () Bool)

(assert (=> d!383886 (= (head!2419 lt!447984) (h!19198 lt!447984))))

(assert (=> b!1353833 d!383886))

(assert (=> b!1353833 d!383712))

(declare-fun d!383888 () Bool)

(declare-fun lt!448713 () Bool)

(assert (=> d!383888 (= lt!448713 (isEmpty!8263 (list!5279 (_1!7572 lt!448189))))))

(assert (=> d!383888 (= lt!448713 (isEmpty!8268 (c!221994 (_1!7572 lt!448189))))))

(assert (=> d!383888 (= (isEmpty!8265 (_1!7572 lt!448189)) lt!448713)))

(declare-fun bs!333775 () Bool)

(assert (= bs!333775 d!383888))

(assert (=> bs!333775 m!1515843))

(assert (=> bs!333775 m!1515843))

(declare-fun m!1517403 () Bool)

(assert (=> bs!333775 m!1517403))

(declare-fun m!1517405 () Bool)

(assert (=> bs!333775 m!1517405))

(assert (=> b!1353921 d!383888))

(declare-fun e!867168 () Bool)

(declare-fun lt!448714 () List!13863)

(declare-fun b!1355022 () Bool)

(assert (=> b!1355022 (= e!867168 (or (not (= (Cons!13797 lt!447989 Nil!13797) Nil!13797)) (= lt!448714 (t!120228 lt!447994))))))

(declare-fun b!1355020 () Bool)

(declare-fun e!867167 () List!13863)

(assert (=> b!1355020 (= e!867167 (Cons!13797 (h!19198 (t!120228 lt!447994)) (++!3546 (t!120228 (t!120228 lt!447994)) (Cons!13797 lt!447989 Nil!13797))))))

(declare-fun b!1355019 () Bool)

(assert (=> b!1355019 (= e!867167 (Cons!13797 lt!447989 Nil!13797))))

(declare-fun d!383890 () Bool)

(assert (=> d!383890 e!867168))

(declare-fun res!610384 () Bool)

(assert (=> d!383890 (=> (not res!610384) (not e!867168))))

(assert (=> d!383890 (= res!610384 (= (content!1983 lt!448714) ((_ map or) (content!1983 (t!120228 lt!447994)) (content!1983 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (=> d!383890 (= lt!448714 e!867167)))

(declare-fun c!222365 () Bool)

(assert (=> d!383890 (= c!222365 ((_ is Nil!13797) (t!120228 lt!447994)))))

(assert (=> d!383890 (= (++!3546 (t!120228 lt!447994) (Cons!13797 lt!447989 Nil!13797)) lt!448714)))

(declare-fun b!1355021 () Bool)

(declare-fun res!610383 () Bool)

(assert (=> b!1355021 (=> (not res!610383) (not e!867168))))

(assert (=> b!1355021 (= res!610383 (= (size!11276 lt!448714) (+ (size!11276 (t!120228 lt!447994)) (size!11276 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (= (and d!383890 c!222365) b!1355019))

(assert (= (and d!383890 (not c!222365)) b!1355020))

(assert (= (and d!383890 res!610384) b!1355021))

(assert (= (and b!1355021 res!610383) b!1355022))

(declare-fun m!1517407 () Bool)

(assert (=> b!1355020 m!1517407))

(declare-fun m!1517409 () Bool)

(assert (=> d!383890 m!1517409))

(declare-fun m!1517411 () Bool)

(assert (=> d!383890 m!1517411))

(assert (=> d!383890 m!1515905))

(declare-fun m!1517413 () Bool)

(assert (=> b!1355021 m!1517413))

(declare-fun m!1517415 () Bool)

(assert (=> b!1355021 m!1517415))

(assert (=> b!1355021 m!1515909))

(assert (=> b!1353961 d!383890))

(declare-fun lt!448715 () Bool)

(declare-fun d!383892 () Bool)

(assert (=> d!383892 (= lt!448715 (select (content!1985 (t!120230 (map!3047 rules!2550 lambda!57089))) lt!447982))))

(declare-fun e!867170 () Bool)

(assert (=> d!383892 (= lt!448715 e!867170)))

(declare-fun res!610385 () Bool)

(assert (=> d!383892 (=> (not res!610385) (not e!867170))))

(assert (=> d!383892 (= res!610385 ((_ is Cons!13799) (t!120230 (map!3047 rules!2550 lambda!57089))))))

(assert (=> d!383892 (= (contains!2548 (t!120230 (map!3047 rules!2550 lambda!57089)) lt!447982) lt!448715)))

(declare-fun b!1355023 () Bool)

(declare-fun e!867169 () Bool)

(assert (=> b!1355023 (= e!867170 e!867169)))

(declare-fun res!610386 () Bool)

(assert (=> b!1355023 (=> res!610386 e!867169)))

(assert (=> b!1355023 (= res!610386 (= (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089))) lt!447982))))

(declare-fun b!1355024 () Bool)

(assert (=> b!1355024 (= e!867169 (contains!2548 (t!120230 (t!120230 (map!3047 rules!2550 lambda!57089))) lt!447982))))

(assert (= (and d!383892 res!610385) b!1355023))

(assert (= (and b!1355023 (not res!610386)) b!1355024))

(declare-fun m!1517417 () Bool)

(assert (=> d!383892 m!1517417))

(declare-fun m!1517419 () Bool)

(assert (=> d!383892 m!1517419))

(declare-fun m!1517421 () Bool)

(assert (=> b!1355024 m!1517421))

(assert (=> b!1353941 d!383892))

(declare-fun d!383894 () Bool)

(assert (=> d!383894 (= (inv!18144 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))) (isBalanced!1326 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(declare-fun bs!333776 () Bool)

(assert (= bs!333776 d!383894))

(declare-fun m!1517423 () Bool)

(assert (=> bs!333776 m!1517423))

(assert (=> tb!71171 d!383894))

(declare-fun d!383896 () Bool)

(assert (=> d!383896 (= (list!5278 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))) (list!5282 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))))))

(declare-fun bs!333777 () Bool)

(assert (= bs!333777 d!383896))

(declare-fun m!1517425 () Bool)

(assert (=> bs!333777 m!1517425))

(assert (=> b!1353690 d!383896))

(declare-fun d!383898 () Bool)

(declare-fun c!222368 () Bool)

(assert (=> d!383898 (= c!222368 ((_ is Nil!13799) (map!3047 rules!2550 lambda!57089)))))

(declare-fun e!867173 () (InoxSet Regex!3705))

(assert (=> d!383898 (= (content!1985 (map!3047 rules!2550 lambda!57089)) e!867173)))

(declare-fun b!1355029 () Bool)

(assert (=> b!1355029 (= e!867173 ((as const (Array Regex!3705 Bool)) false))))

(declare-fun b!1355030 () Bool)

(assert (=> b!1355030 (= e!867173 ((_ map or) (store ((as const (Array Regex!3705 Bool)) false) (h!19200 (map!3047 rules!2550 lambda!57089)) true) (content!1985 (t!120230 (map!3047 rules!2550 lambda!57089)))))))

(assert (= (and d!383898 c!222368) b!1355029))

(assert (= (and d!383898 (not c!222368)) b!1355030))

(declare-fun m!1517427 () Bool)

(assert (=> b!1355030 m!1517427))

(assert (=> b!1355030 m!1517417))

(assert (=> d!383362 d!383898))

(declare-fun b!1355031 () Bool)

(declare-fun res!610394 () Bool)

(declare-fun e!867179 () Bool)

(assert (=> b!1355031 (=> res!610394 e!867179)))

(assert (=> b!1355031 (= res!610394 (not (isEmpty!8261 (tail!1952 lt!448162))))))

(declare-fun b!1355032 () Bool)

(declare-fun e!867178 () Bool)

(assert (=> b!1355032 (= e!867178 (nullable!1185 lt!447993))))

(declare-fun b!1355033 () Bool)

(assert (=> b!1355033 (= e!867179 (not (= (head!2419 lt!448162) (c!221993 lt!447993))))))

(declare-fun b!1355034 () Bool)

(declare-fun e!867174 () Bool)

(assert (=> b!1355034 (= e!867174 (= (head!2419 lt!448162) (c!221993 lt!447993)))))

(declare-fun b!1355035 () Bool)

(declare-fun e!867175 () Bool)

(declare-fun e!867177 () Bool)

(assert (=> b!1355035 (= e!867175 e!867177)))

(declare-fun res!610390 () Bool)

(assert (=> b!1355035 (=> (not res!610390) (not e!867177))))

(declare-fun lt!448716 () Bool)

(assert (=> b!1355035 (= res!610390 (not lt!448716))))

(declare-fun b!1355036 () Bool)

(declare-fun e!867180 () Bool)

(declare-fun e!867176 () Bool)

(assert (=> b!1355036 (= e!867180 e!867176)))

(declare-fun c!222370 () Bool)

(assert (=> b!1355036 (= c!222370 ((_ is EmptyLang!3705) lt!447993))))

(declare-fun b!1355037 () Bool)

(declare-fun res!610391 () Bool)

(assert (=> b!1355037 (=> res!610391 e!867175)))

(assert (=> b!1355037 (= res!610391 e!867174)))

(declare-fun res!610392 () Bool)

(assert (=> b!1355037 (=> (not res!610392) (not e!867174))))

(assert (=> b!1355037 (= res!610392 lt!448716)))

(declare-fun b!1355038 () Bool)

(declare-fun res!610388 () Bool)

(assert (=> b!1355038 (=> (not res!610388) (not e!867174))))

(assert (=> b!1355038 (= res!610388 (isEmpty!8261 (tail!1952 lt!448162)))))

(declare-fun b!1355039 () Bool)

(declare-fun res!610387 () Bool)

(assert (=> b!1355039 (=> (not res!610387) (not e!867174))))

(declare-fun call!91224 () Bool)

(assert (=> b!1355039 (= res!610387 (not call!91224))))

(declare-fun d!383900 () Bool)

(assert (=> d!383900 e!867180))

(declare-fun c!222369 () Bool)

(assert (=> d!383900 (= c!222369 ((_ is EmptyExpr!3705) lt!447993))))

(assert (=> d!383900 (= lt!448716 e!867178)))

(declare-fun c!222371 () Bool)

(assert (=> d!383900 (= c!222371 (isEmpty!8261 lt!448162))))

(assert (=> d!383900 (validRegex!1605 lt!447993)))

(assert (=> d!383900 (= (matchR!1698 lt!447993 lt!448162) lt!448716)))

(declare-fun b!1355040 () Bool)

(assert (=> b!1355040 (= e!867176 (not lt!448716))))

(declare-fun bm!91219 () Bool)

(assert (=> bm!91219 (= call!91224 (isEmpty!8261 lt!448162))))

(declare-fun b!1355041 () Bool)

(declare-fun res!610393 () Bool)

(assert (=> b!1355041 (=> res!610393 e!867175)))

(assert (=> b!1355041 (= res!610393 (not ((_ is ElementMatch!3705) lt!447993)))))

(assert (=> b!1355041 (= e!867176 e!867175)))

(declare-fun b!1355042 () Bool)

(assert (=> b!1355042 (= e!867180 (= lt!448716 call!91224))))

(declare-fun b!1355043 () Bool)

(assert (=> b!1355043 (= e!867178 (matchR!1698 (derivativeStep!943 lt!447993 (head!2419 lt!448162)) (tail!1952 lt!448162)))))

(declare-fun b!1355044 () Bool)

(assert (=> b!1355044 (= e!867177 e!867179)))

(declare-fun res!610389 () Bool)

(assert (=> b!1355044 (=> res!610389 e!867179)))

(assert (=> b!1355044 (= res!610389 call!91224)))

(assert (= (and d!383900 c!222371) b!1355032))

(assert (= (and d!383900 (not c!222371)) b!1355043))

(assert (= (and d!383900 c!222369) b!1355042))

(assert (= (and d!383900 (not c!222369)) b!1355036))

(assert (= (and b!1355036 c!222370) b!1355040))

(assert (= (and b!1355036 (not c!222370)) b!1355041))

(assert (= (and b!1355041 (not res!610393)) b!1355037))

(assert (= (and b!1355037 res!610392) b!1355039))

(assert (= (and b!1355039 res!610387) b!1355038))

(assert (= (and b!1355038 res!610388) b!1355034))

(assert (= (and b!1355037 (not res!610391)) b!1355035))

(assert (= (and b!1355035 res!610390) b!1355044))

(assert (= (and b!1355044 (not res!610389)) b!1355031))

(assert (= (and b!1355031 (not res!610394)) b!1355033))

(assert (= (or b!1355042 b!1355039 b!1355044) bm!91219))

(assert (=> b!1355031 m!1516547))

(assert (=> b!1355031 m!1516547))

(declare-fun m!1517429 () Bool)

(assert (=> b!1355031 m!1517429))

(assert (=> b!1355043 m!1516543))

(assert (=> b!1355043 m!1516543))

(declare-fun m!1517431 () Bool)

(assert (=> b!1355043 m!1517431))

(assert (=> b!1355043 m!1516547))

(assert (=> b!1355043 m!1517431))

(assert (=> b!1355043 m!1516547))

(declare-fun m!1517433 () Bool)

(assert (=> b!1355043 m!1517433))

(declare-fun m!1517435 () Bool)

(assert (=> d!383900 m!1517435))

(assert (=> d!383900 m!1515373))

(assert (=> b!1355033 m!1516543))

(assert (=> b!1355038 m!1516547))

(assert (=> b!1355038 m!1516547))

(assert (=> b!1355038 m!1517429))

(assert (=> b!1355034 m!1516543))

(assert (=> bm!91219 m!1517435))

(assert (=> b!1355032 m!1515781))

(assert (=> bs!333635 d!383900))

(declare-fun d!383902 () Bool)

(assert (=> d!383902 true))

(declare-fun order!8337 () Int)

(declare-fun order!8335 () Int)

(declare-fun lambda!57181 () Int)

(declare-fun dynLambda!6170 (Int Int) Int)

(declare-fun dynLambda!6171 (Int Int) Int)

(assert (=> d!383902 (< (dynLambda!6170 order!8335 (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) (dynLambda!6171 order!8337 lambda!57181))))

(assert (=> d!383902 true))

(assert (=> d!383902 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (rule!4138 t2!34)))) (dynLambda!6171 order!8337 lambda!57181))))

(declare-fun Forall!531 (Int) Bool)

(assert (=> d!383902 (= (semiInverseModEq!914 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34)))) (Forall!531 lambda!57181))))

(declare-fun bs!333778 () Bool)

(assert (= bs!333778 d!383902))

(declare-fun m!1517437 () Bool)

(assert (=> bs!333778 m!1517437))

(assert (=> d!383296 d!383902))

(declare-fun d!383904 () Bool)

(assert (=> d!383904 (= (list!5278 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))) (list!5282 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(declare-fun bs!333779 () Bool)

(assert (= bs!333779 d!383904))

(declare-fun m!1517439 () Bool)

(assert (=> bs!333779 m!1517439))

(assert (=> b!1353705 d!383904))

(assert (=> b!1353964 d!383176))

(declare-fun d!383906 () Bool)

(assert (=> d!383906 (= (list!5278 (_2!7572 lt!448189)) (list!5282 (c!221992 (_2!7572 lt!448189))))))

(declare-fun bs!333780 () Bool)

(assert (= bs!333780 d!383906))

(declare-fun m!1517441 () Bool)

(assert (=> bs!333780 m!1517441))

(assert (=> b!1353917 d!383906))

(assert (=> b!1353917 d!383300))

(assert (=> b!1353917 d!383302))

(declare-fun d!383908 () Bool)

(assert (=> d!383908 (= (isEmpty!8260 lt!448124) (not ((_ is Some!2643) lt!448124)))))

(assert (=> d!383254 d!383908))

(declare-fun b!1355050 () Bool)

(declare-fun res!610395 () Bool)

(declare-fun e!867183 () Bool)

(assert (=> b!1355050 (=> (not res!610395) (not e!867183))))

(assert (=> b!1355050 (= res!610395 (= (head!2419 lt!447994) (head!2419 lt!447994)))))

(declare-fun b!1355049 () Bool)

(declare-fun e!867181 () Bool)

(assert (=> b!1355049 (= e!867181 e!867183)))

(declare-fun res!610398 () Bool)

(assert (=> b!1355049 (=> (not res!610398) (not e!867183))))

(assert (=> b!1355049 (= res!610398 (not ((_ is Nil!13797) lt!447994)))))

(declare-fun d!383910 () Bool)

(declare-fun e!867182 () Bool)

(assert (=> d!383910 e!867182))

(declare-fun res!610396 () Bool)

(assert (=> d!383910 (=> res!610396 e!867182)))

(declare-fun lt!448717 () Bool)

(assert (=> d!383910 (= res!610396 (not lt!448717))))

(assert (=> d!383910 (= lt!448717 e!867181)))

(declare-fun res!610397 () Bool)

(assert (=> d!383910 (=> res!610397 e!867181)))

(assert (=> d!383910 (= res!610397 ((_ is Nil!13797) lt!447994))))

(assert (=> d!383910 (= (isPrefix!1115 lt!447994 lt!447994) lt!448717)))

(declare-fun b!1355052 () Bool)

(assert (=> b!1355052 (= e!867182 (>= (size!11276 lt!447994) (size!11276 lt!447994)))))

(declare-fun b!1355051 () Bool)

(assert (=> b!1355051 (= e!867183 (isPrefix!1115 (tail!1952 lt!447994) (tail!1952 lt!447994)))))

(assert (= (and d!383910 (not res!610397)) b!1355049))

(assert (= (and b!1355049 res!610398) b!1355050))

(assert (= (and b!1355050 res!610395) b!1355051))

(assert (= (and d!383910 (not res!610396)) b!1355052))

(declare-fun m!1517443 () Bool)

(assert (=> b!1355050 m!1517443))

(assert (=> b!1355050 m!1517443))

(assert (=> b!1355052 m!1515633))

(assert (=> b!1355052 m!1515633))

(declare-fun m!1517445 () Bool)

(assert (=> b!1355051 m!1517445))

(assert (=> b!1355051 m!1517445))

(assert (=> b!1355051 m!1517445))

(assert (=> b!1355051 m!1517445))

(declare-fun m!1517447 () Bool)

(assert (=> b!1355051 m!1517447))

(assert (=> d!383254 d!383910))

(declare-fun d!383912 () Bool)

(assert (=> d!383912 (isPrefix!1115 lt!447994 lt!447994)))

(declare-fun lt!448720 () Unit!19941)

(declare-fun choose!8329 (List!13863 List!13863) Unit!19941)

(assert (=> d!383912 (= lt!448720 (choose!8329 lt!447994 lt!447994))))

(assert (=> d!383912 (= (lemmaIsPrefixRefl!777 lt!447994 lt!447994) lt!448720)))

(declare-fun bs!333781 () Bool)

(assert (= bs!333781 d!383912))

(assert (=> bs!333781 m!1515639))

(declare-fun m!1517449 () Bool)

(assert (=> bs!333781 m!1517449))

(assert (=> d!383254 d!383912))

(declare-fun bs!333782 () Bool)

(declare-fun d!383914 () Bool)

(assert (= bs!333782 (and d!383914 b!1353381)))

(declare-fun lambda!57184 () Int)

(assert (=> bs!333782 (not (= lambda!57184 lambda!57091))))

(declare-fun bs!333783 () Bool)

(assert (= bs!333783 (and d!383914 d!383204)))

(assert (=> bs!333783 (not (= lambda!57184 lambda!57116))))

(declare-fun bs!333784 () Bool)

(assert (= bs!333784 (and d!383914 d!383206)))

(assert (=> bs!333784 (not (= lambda!57184 lambda!57119))))

(assert (=> d!383914 true))

(declare-fun lt!448723 () Bool)

(assert (=> d!383914 (= lt!448723 (forall!3367 rules!2550 lambda!57184))))

(declare-fun e!867188 () Bool)

(assert (=> d!383914 (= lt!448723 e!867188)))

(declare-fun res!610403 () Bool)

(assert (=> d!383914 (=> res!610403 e!867188)))

(assert (=> d!383914 (= res!610403 (not ((_ is Cons!13798) rules!2550)))))

(assert (=> d!383914 (= (rulesValidInductive!756 thiss!19762 rules!2550) lt!448723)))

(declare-fun b!1355057 () Bool)

(declare-fun e!867189 () Bool)

(assert (=> b!1355057 (= e!867188 e!867189)))

(declare-fun res!610404 () Bool)

(assert (=> b!1355057 (=> (not res!610404) (not e!867189))))

(declare-fun ruleValid!584 (LexerInterface!2086 Rule!4582) Bool)

(assert (=> b!1355057 (= res!610404 (ruleValid!584 thiss!19762 (h!19199 rules!2550)))))

(declare-fun b!1355058 () Bool)

(assert (=> b!1355058 (= e!867189 (rulesValidInductive!756 thiss!19762 (t!120229 rules!2550)))))

(assert (= (and d!383914 (not res!610403)) b!1355057))

(assert (= (and b!1355057 res!610404) b!1355058))

(declare-fun m!1517451 () Bool)

(assert (=> d!383914 m!1517451))

(declare-fun m!1517453 () Bool)

(assert (=> b!1355057 m!1517453))

(assert (=> b!1355058 m!1516539))

(assert (=> d!383254 d!383914))

(declare-fun d!383916 () Bool)

(declare-fun lt!448724 () List!13863)

(assert (=> d!383916 (= (++!3546 (t!120228 lt!447991) lt!448724) (tail!1952 lt!447984))))

(declare-fun e!867190 () List!13863)

(assert (=> d!383916 (= lt!448724 e!867190)))

(declare-fun c!222372 () Bool)

(assert (=> d!383916 (= c!222372 ((_ is Cons!13797) (t!120228 lt!447991)))))

(assert (=> d!383916 (>= (size!11276 (tail!1952 lt!447984)) (size!11276 (t!120228 lt!447991)))))

(assert (=> d!383916 (= (getSuffix!553 (tail!1952 lt!447984) (t!120228 lt!447991)) lt!448724)))

(declare-fun b!1355061 () Bool)

(assert (=> b!1355061 (= e!867190 (getSuffix!553 (tail!1952 (tail!1952 lt!447984)) (t!120228 (t!120228 lt!447991))))))

(declare-fun b!1355062 () Bool)

(assert (=> b!1355062 (= e!867190 (tail!1952 lt!447984))))

(assert (= (and d!383916 c!222372) b!1355061))

(assert (= (and d!383916 (not c!222372)) b!1355062))

(declare-fun m!1517455 () Bool)

(assert (=> d!383916 m!1517455))

(assert (=> d!383916 m!1515731))

(declare-fun m!1517457 () Bool)

(assert (=> d!383916 m!1517457))

(assert (=> d!383916 m!1516719))

(assert (=> b!1355061 m!1515731))

(assert (=> b!1355061 m!1517383))

(assert (=> b!1355061 m!1517383))

(declare-fun m!1517459 () Bool)

(assert (=> b!1355061 m!1517459))

(assert (=> b!1353759 d!383916))

(assert (=> b!1353759 d!383712))

(declare-fun d!383918 () Bool)

(assert (=> d!383918 (= (isEmpty!8261 (list!5278 (_2!7572 lt!447996))) ((_ is Nil!13797) (list!5278 (_2!7572 lt!447996))))))

(assert (=> d!383286 d!383918))

(declare-fun d!383920 () Bool)

(assert (=> d!383920 (= (list!5278 (_2!7572 lt!447996)) (list!5282 (c!221992 (_2!7572 lt!447996))))))

(declare-fun bs!333785 () Bool)

(assert (= bs!333785 d!383920))

(declare-fun m!1517461 () Bool)

(assert (=> bs!333785 m!1517461))

(assert (=> d!383286 d!383920))

(declare-fun d!383922 () Bool)

(declare-fun lt!448727 () Bool)

(assert (=> d!383922 (= lt!448727 (isEmpty!8261 (list!5282 (c!221992 (_2!7572 lt!447996)))))))

(assert (=> d!383922 (= lt!448727 (= (size!11277 (c!221992 (_2!7572 lt!447996))) 0))))

(assert (=> d!383922 (= (isEmpty!8262 (c!221992 (_2!7572 lt!447996))) lt!448727)))

(declare-fun bs!333786 () Bool)

(assert (= bs!333786 d!383922))

(assert (=> bs!333786 m!1517461))

(assert (=> bs!333786 m!1517461))

(declare-fun m!1517463 () Bool)

(assert (=> bs!333786 m!1517463))

(declare-fun m!1517465 () Bool)

(assert (=> bs!333786 m!1517465))

(assert (=> d!383286 d!383922))

(declare-fun d!383924 () Bool)

(assert (=> d!383924 (= (isEmpty!8261 (originalCharacters!3253 t2!34)) ((_ is Nil!13797) (originalCharacters!3253 t2!34)))))

(assert (=> d!383284 d!383924))

(declare-fun d!383926 () Bool)

(declare-fun lt!448730 () C!7700)

(assert (=> d!383926 (contains!2547 (list!5278 lt!447988) lt!448730)))

(declare-fun e!867196 () C!7700)

(assert (=> d!383926 (= lt!448730 e!867196)))

(declare-fun c!222375 () Bool)

(assert (=> d!383926 (= c!222375 (= 0 0))))

(declare-fun e!867195 () Bool)

(assert (=> d!383926 e!867195))

(declare-fun res!610407 () Bool)

(assert (=> d!383926 (=> (not res!610407) (not e!867195))))

(assert (=> d!383926 (= res!610407 (<= 0 0))))

(assert (=> d!383926 (= (apply!3318 (list!5278 lt!447988) 0) lt!448730)))

(declare-fun b!1355069 () Bool)

(assert (=> b!1355069 (= e!867195 (< 0 (size!11276 (list!5278 lt!447988))))))

(declare-fun b!1355070 () Bool)

(assert (=> b!1355070 (= e!867196 (head!2419 (list!5278 lt!447988)))))

(declare-fun b!1355071 () Bool)

(assert (=> b!1355071 (= e!867196 (apply!3318 (tail!1952 (list!5278 lt!447988)) (- 0 1)))))

(assert (= (and d!383926 res!610407) b!1355069))

(assert (= (and d!383926 c!222375) b!1355070))

(assert (= (and d!383926 (not c!222375)) b!1355071))

(assert (=> d!383926 m!1515301))

(declare-fun m!1517467 () Bool)

(assert (=> d!383926 m!1517467))

(assert (=> b!1355069 m!1515301))

(assert (=> b!1355069 m!1515303))

(assert (=> b!1355070 m!1515301))

(declare-fun m!1517469 () Bool)

(assert (=> b!1355070 m!1517469))

(assert (=> b!1355071 m!1515301))

(declare-fun m!1517471 () Bool)

(assert (=> b!1355071 m!1517471))

(assert (=> b!1355071 m!1517471))

(declare-fun m!1517473 () Bool)

(assert (=> b!1355071 m!1517473))

(assert (=> d!383372 d!383926))

(assert (=> d!383372 d!383580))

(declare-fun b!1355086 () Bool)

(declare-fun e!867207 () C!7700)

(declare-fun apply!3323 (IArray!9093 Int) C!7700)

(assert (=> b!1355086 (= e!867207 (apply!3323 (xs!7267 (c!221992 lt!447988)) 0))))

(declare-fun b!1355087 () Bool)

(declare-fun e!867206 () Bool)

(assert (=> b!1355087 (= e!867206 (< 0 (size!11277 (c!221992 lt!447988))))))

(declare-fun b!1355088 () Bool)

(declare-fun e!867205 () C!7700)

(declare-fun call!91227 () C!7700)

(assert (=> b!1355088 (= e!867205 call!91227)))

(declare-fun b!1355089 () Bool)

(assert (=> b!1355089 (= e!867205 call!91227)))

(declare-fun bm!91222 () Bool)

(declare-fun c!222384 () Bool)

(declare-fun c!222382 () Bool)

(assert (=> bm!91222 (= c!222384 c!222382)))

(declare-fun e!867208 () Int)

(assert (=> bm!91222 (= call!91227 (apply!3319 (ite c!222382 (left!11821 (c!221992 lt!447988)) (right!12151 (c!221992 lt!447988))) e!867208))))

(declare-fun b!1355090 () Bool)

(assert (=> b!1355090 (= e!867207 e!867205)))

(declare-fun lt!448735 () Bool)

(declare-fun appendIndex!159 (List!13863 List!13863 Int) Bool)

(assert (=> b!1355090 (= lt!448735 (appendIndex!159 (list!5282 (left!11821 (c!221992 lt!447988))) (list!5282 (right!12151 (c!221992 lt!447988))) 0))))

(assert (=> b!1355090 (= c!222382 (< 0 (size!11277 (left!11821 (c!221992 lt!447988)))))))

(declare-fun b!1355091 () Bool)

(assert (=> b!1355091 (= e!867208 (- 0 (size!11277 (left!11821 (c!221992 lt!447988)))))))

(declare-fun d!383928 () Bool)

(declare-fun lt!448736 () C!7700)

(assert (=> d!383928 (= lt!448736 (apply!3318 (list!5282 (c!221992 lt!447988)) 0))))

(assert (=> d!383928 (= lt!448736 e!867207)))

(declare-fun c!222383 () Bool)

(assert (=> d!383928 (= c!222383 ((_ is Leaf!6936) (c!221992 lt!447988)))))

(assert (=> d!383928 e!867206))

(declare-fun res!610410 () Bool)

(assert (=> d!383928 (=> (not res!610410) (not e!867206))))

(assert (=> d!383928 (= res!610410 (<= 0 0))))

(assert (=> d!383928 (= (apply!3319 (c!221992 lt!447988) 0) lt!448736)))

(declare-fun b!1355092 () Bool)

(assert (=> b!1355092 (= e!867208 0)))

(assert (= (and d!383928 res!610410) b!1355087))

(assert (= (and d!383928 c!222383) b!1355086))

(assert (= (and d!383928 (not c!222383)) b!1355090))

(assert (= (and b!1355090 c!222382) b!1355089))

(assert (= (and b!1355090 (not c!222382)) b!1355088))

(assert (= (or b!1355089 b!1355088) bm!91222))

(assert (= (and bm!91222 c!222384) b!1355092))

(assert (= (and bm!91222 (not c!222384)) b!1355091))

(declare-fun m!1517475 () Bool)

(assert (=> b!1355086 m!1517475))

(assert (=> d!383928 m!1516509))

(assert (=> d!383928 m!1516509))

(declare-fun m!1517477 () Bool)

(assert (=> d!383928 m!1517477))

(declare-fun m!1517479 () Bool)

(assert (=> bm!91222 m!1517479))

(declare-fun m!1517481 () Bool)

(assert (=> b!1355090 m!1517481))

(declare-fun m!1517483 () Bool)

(assert (=> b!1355090 m!1517483))

(assert (=> b!1355090 m!1517481))

(assert (=> b!1355090 m!1517483))

(declare-fun m!1517485 () Bool)

(assert (=> b!1355090 m!1517485))

(declare-fun m!1517487 () Bool)

(assert (=> b!1355090 m!1517487))

(assert (=> b!1355087 m!1515305))

(assert (=> b!1355091 m!1517487))

(assert (=> d!383372 d!383928))

(declare-fun d!383930 () Bool)

(declare-fun c!222385 () Bool)

(assert (=> d!383930 (= c!222385 ((_ is Nil!13797) lt!448206))))

(declare-fun e!867209 () (InoxSet C!7700))

(assert (=> d!383930 (= (content!1983 lt!448206) e!867209)))

(declare-fun b!1355093 () Bool)

(assert (=> b!1355093 (= e!867209 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355094 () Bool)

(assert (=> b!1355094 (= e!867209 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 lt!448206) true) (content!1983 (t!120228 lt!448206))))))

(assert (= (and d!383930 c!222385) b!1355093))

(assert (= (and d!383930 (not c!222385)) b!1355094))

(declare-fun m!1517489 () Bool)

(assert (=> b!1355094 m!1517489))

(declare-fun m!1517491 () Bool)

(assert (=> b!1355094 m!1517491))

(assert (=> d!383366 d!383930))

(declare-fun d!383932 () Bool)

(declare-fun c!222386 () Bool)

(assert (=> d!383932 (= c!222386 ((_ is Nil!13797) lt!447994))))

(declare-fun e!867210 () (InoxSet C!7700))

(assert (=> d!383932 (= (content!1983 lt!447994) e!867210)))

(declare-fun b!1355095 () Bool)

(assert (=> b!1355095 (= e!867210 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355096 () Bool)

(assert (=> b!1355096 (= e!867210 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 lt!447994) true) (content!1983 (t!120228 lt!447994))))))

(assert (= (and d!383932 c!222386) b!1355095))

(assert (= (and d!383932 (not c!222386)) b!1355096))

(declare-fun m!1517493 () Bool)

(assert (=> b!1355096 m!1517493))

(assert (=> b!1355096 m!1517411))

(assert (=> d!383366 d!383932))

(declare-fun d!383934 () Bool)

(declare-fun c!222387 () Bool)

(assert (=> d!383934 (= c!222387 ((_ is Nil!13797) (Cons!13797 lt!447989 Nil!13797)))))

(declare-fun e!867211 () (InoxSet C!7700))

(assert (=> d!383934 (= (content!1983 (Cons!13797 lt!447989 Nil!13797)) e!867211)))

(declare-fun b!1355097 () Bool)

(assert (=> b!1355097 (= e!867211 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355098 () Bool)

(assert (=> b!1355098 (= e!867211 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 (Cons!13797 lt!447989 Nil!13797)) true) (content!1983 (t!120228 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (= (and d!383934 c!222387) b!1355097))

(assert (= (and d!383934 (not c!222387)) b!1355098))

(declare-fun m!1517495 () Bool)

(assert (=> b!1355098 m!1517495))

(declare-fun m!1517497 () Bool)

(assert (=> b!1355098 m!1517497))

(assert (=> d!383366 d!383934))

(declare-fun d!383936 () Bool)

(declare-fun lt!448737 () Int)

(assert (=> d!383936 (>= lt!448737 0)))

(declare-fun e!867212 () Int)

(assert (=> d!383936 (= lt!448737 e!867212)))

(declare-fun c!222388 () Bool)

(assert (=> d!383936 (= c!222388 ((_ is Nil!13797) (_2!7573 lt!448153)))))

(assert (=> d!383936 (= (size!11276 (_2!7573 lt!448153)) lt!448737)))

(declare-fun b!1355099 () Bool)

(assert (=> b!1355099 (= e!867212 0)))

(declare-fun b!1355100 () Bool)

(assert (=> b!1355100 (= e!867212 (+ 1 (size!11276 (t!120228 (_2!7573 lt!448153)))))))

(assert (= (and d!383936 c!222388) b!1355099))

(assert (= (and d!383936 (not c!222388)) b!1355100))

(declare-fun m!1517499 () Bool)

(assert (=> b!1355100 m!1517499))

(assert (=> b!1353742 d!383936))

(declare-fun d!383938 () Bool)

(declare-fun lt!448738 () Int)

(assert (=> d!383938 (>= lt!448738 0)))

(declare-fun e!867213 () Int)

(assert (=> d!383938 (= lt!448738 e!867213)))

(declare-fun c!222389 () Bool)

(assert (=> d!383938 (= c!222389 ((_ is Nil!13797) (list!5278 lt!447986)))))

(assert (=> d!383938 (= (size!11276 (list!5278 lt!447986)) lt!448738)))

(declare-fun b!1355101 () Bool)

(assert (=> b!1355101 (= e!867213 0)))

(declare-fun b!1355102 () Bool)

(assert (=> b!1355102 (= e!867213 (+ 1 (size!11276 (t!120228 (list!5278 lt!447986)))))))

(assert (= (and d!383938 c!222389) b!1355101))

(assert (= (and d!383938 (not c!222389)) b!1355102))

(declare-fun m!1517501 () Bool)

(assert (=> b!1355102 m!1517501))

(assert (=> b!1353742 d!383938))

(declare-fun d!383940 () Bool)

(assert (=> d!383940 (= (inv!18144 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))) (isBalanced!1326 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(declare-fun bs!333787 () Bool)

(assert (= bs!333787 d!383940))

(declare-fun m!1517503 () Bool)

(assert (=> bs!333787 m!1517503))

(assert (=> tb!71153 d!383940))

(declare-fun d!383942 () Bool)

(assert (=> d!383942 (= (head!2420 rules!2550) (h!19199 rules!2550))))

(assert (=> b!1353906 d!383942))

(declare-fun d!383944 () Bool)

(declare-fun lt!448739 () Bool)

(assert (=> d!383944 (= lt!448739 (select (content!1983 (t!120228 lt!447984)) lt!447995))))

(declare-fun e!867214 () Bool)

(assert (=> d!383944 (= lt!448739 e!867214)))

(declare-fun res!610412 () Bool)

(assert (=> d!383944 (=> (not res!610412) (not e!867214))))

(assert (=> d!383944 (= res!610412 ((_ is Cons!13797) (t!120228 lt!447984)))))

(assert (=> d!383944 (= (contains!2547 (t!120228 lt!447984) lt!447995) lt!448739)))

(declare-fun b!1355103 () Bool)

(declare-fun e!867215 () Bool)

(assert (=> b!1355103 (= e!867214 e!867215)))

(declare-fun res!610411 () Bool)

(assert (=> b!1355103 (=> res!610411 e!867215)))

(assert (=> b!1355103 (= res!610411 (= (h!19198 (t!120228 lt!447984)) lt!447995))))

(declare-fun b!1355104 () Bool)

(assert (=> b!1355104 (= e!867215 (contains!2547 (t!120228 (t!120228 lt!447984)) lt!447995))))

(assert (= (and d!383944 res!610412) b!1355103))

(assert (= (and b!1355103 (not res!610411)) b!1355104))

(assert (=> d!383944 m!1516775))

(declare-fun m!1517505 () Bool)

(assert (=> d!383944 m!1517505))

(declare-fun m!1517507 () Bool)

(assert (=> b!1355104 m!1517507))

(assert (=> b!1353765 d!383944))

(declare-fun b!1355105 () Bool)

(declare-fun res!610420 () Bool)

(declare-fun e!867221 () Bool)

(assert (=> b!1355105 (=> res!610420 e!867221)))

(assert (=> b!1355105 (= res!610420 (not (isEmpty!8261 (tail!1952 lt!447984))))))

(declare-fun b!1355106 () Bool)

(declare-fun e!867220 () Bool)

(assert (=> b!1355106 (= e!867220 (nullable!1185 (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1355107 () Bool)

(assert (=> b!1355107 (= e!867221 (not (= (head!2419 lt!447984) (c!221993 (h!19200 (map!3047 rules!2550 lambda!57089))))))))

(declare-fun e!867216 () Bool)

(declare-fun b!1355108 () Bool)

(assert (=> b!1355108 (= e!867216 (= (head!2419 lt!447984) (c!221993 (h!19200 (map!3047 rules!2550 lambda!57089)))))))

(declare-fun b!1355109 () Bool)

(declare-fun e!867217 () Bool)

(declare-fun e!867219 () Bool)

(assert (=> b!1355109 (= e!867217 e!867219)))

(declare-fun res!610416 () Bool)

(assert (=> b!1355109 (=> (not res!610416) (not e!867219))))

(declare-fun lt!448740 () Bool)

(assert (=> b!1355109 (= res!610416 (not lt!448740))))

(declare-fun b!1355110 () Bool)

(declare-fun e!867222 () Bool)

(declare-fun e!867218 () Bool)

(assert (=> b!1355110 (= e!867222 e!867218)))

(declare-fun c!222391 () Bool)

(assert (=> b!1355110 (= c!222391 ((_ is EmptyLang!3705) (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1355111 () Bool)

(declare-fun res!610417 () Bool)

(assert (=> b!1355111 (=> res!610417 e!867217)))

(assert (=> b!1355111 (= res!610417 e!867216)))

(declare-fun res!610418 () Bool)

(assert (=> b!1355111 (=> (not res!610418) (not e!867216))))

(assert (=> b!1355111 (= res!610418 lt!448740)))

(declare-fun b!1355112 () Bool)

(declare-fun res!610414 () Bool)

(assert (=> b!1355112 (=> (not res!610414) (not e!867216))))

(assert (=> b!1355112 (= res!610414 (isEmpty!8261 (tail!1952 lt!447984)))))

(declare-fun b!1355113 () Bool)

(declare-fun res!610413 () Bool)

(assert (=> b!1355113 (=> (not res!610413) (not e!867216))))

(declare-fun call!91228 () Bool)

(assert (=> b!1355113 (= res!610413 (not call!91228))))

(declare-fun d!383946 () Bool)

(assert (=> d!383946 e!867222))

(declare-fun c!222390 () Bool)

(assert (=> d!383946 (= c!222390 ((_ is EmptyExpr!3705) (h!19200 (map!3047 rules!2550 lambda!57089))))))

(assert (=> d!383946 (= lt!448740 e!867220)))

(declare-fun c!222392 () Bool)

(assert (=> d!383946 (= c!222392 (isEmpty!8261 lt!447984))))

(assert (=> d!383946 (validRegex!1605 (h!19200 (map!3047 rules!2550 lambda!57089)))))

(assert (=> d!383946 (= (matchR!1698 (h!19200 (map!3047 rules!2550 lambda!57089)) lt!447984) lt!448740)))

(declare-fun b!1355114 () Bool)

(assert (=> b!1355114 (= e!867218 (not lt!448740))))

(declare-fun bm!91223 () Bool)

(assert (=> bm!91223 (= call!91228 (isEmpty!8261 lt!447984))))

(declare-fun b!1355115 () Bool)

(declare-fun res!610419 () Bool)

(assert (=> b!1355115 (=> res!610419 e!867217)))

(assert (=> b!1355115 (= res!610419 (not ((_ is ElementMatch!3705) (h!19200 (map!3047 rules!2550 lambda!57089)))))))

(assert (=> b!1355115 (= e!867218 e!867217)))

(declare-fun b!1355116 () Bool)

(assert (=> b!1355116 (= e!867222 (= lt!448740 call!91228))))

(declare-fun b!1355117 () Bool)

(assert (=> b!1355117 (= e!867220 (matchR!1698 (derivativeStep!943 (h!19200 (map!3047 rules!2550 lambda!57089)) (head!2419 lt!447984)) (tail!1952 lt!447984)))))

(declare-fun b!1355118 () Bool)

(assert (=> b!1355118 (= e!867219 e!867221)))

(declare-fun res!610415 () Bool)

(assert (=> b!1355118 (=> res!610415 e!867221)))

(assert (=> b!1355118 (= res!610415 call!91228)))

(assert (= (and d!383946 c!222392) b!1355106))

(assert (= (and d!383946 (not c!222392)) b!1355117))

(assert (= (and d!383946 c!222390) b!1355116))

(assert (= (and d!383946 (not c!222390)) b!1355110))

(assert (= (and b!1355110 c!222391) b!1355114))

(assert (= (and b!1355110 (not c!222391)) b!1355115))

(assert (= (and b!1355115 (not res!610419)) b!1355111))

(assert (= (and b!1355111 res!610418) b!1355113))

(assert (= (and b!1355113 res!610413) b!1355112))

(assert (= (and b!1355112 res!610414) b!1355108))

(assert (= (and b!1355111 (not res!610417)) b!1355109))

(assert (= (and b!1355109 res!610416) b!1355118))

(assert (= (and b!1355118 (not res!610415)) b!1355105))

(assert (= (and b!1355105 (not res!610420)) b!1355107))

(assert (= (or b!1355116 b!1355113 b!1355118) bm!91223))

(assert (=> b!1355105 m!1515731))

(assert (=> b!1355105 m!1515731))

(assert (=> b!1355105 m!1515771))

(assert (=> b!1355117 m!1515773))

(assert (=> b!1355117 m!1515773))

(declare-fun m!1517509 () Bool)

(assert (=> b!1355117 m!1517509))

(assert (=> b!1355117 m!1515731))

(assert (=> b!1355117 m!1517509))

(assert (=> b!1355117 m!1515731))

(declare-fun m!1517511 () Bool)

(assert (=> b!1355117 m!1517511))

(assert (=> d!383946 m!1515779))

(assert (=> d!383946 m!1515963))

(assert (=> b!1355107 m!1515773))

(assert (=> b!1355112 m!1515731))

(assert (=> b!1355112 m!1515731))

(assert (=> b!1355112 m!1515771))

(assert (=> b!1355108 m!1515773))

(assert (=> bm!91223 m!1515779))

(declare-fun m!1517513 () Bool)

(assert (=> b!1355106 m!1517513))

(assert (=> b!1354018 d!383946))

(declare-fun d!383948 () Bool)

(declare-fun lt!448741 () C!7700)

(assert (=> d!383948 (contains!2547 (list!5278 lt!447992) lt!448741)))

(declare-fun e!867224 () C!7700)

(assert (=> d!383948 (= lt!448741 e!867224)))

(declare-fun c!222393 () Bool)

(assert (=> d!383948 (= c!222393 (= 0 0))))

(declare-fun e!867223 () Bool)

(assert (=> d!383948 e!867223))

(declare-fun res!610421 () Bool)

(assert (=> d!383948 (=> (not res!610421) (not e!867223))))

(assert (=> d!383948 (= res!610421 (<= 0 0))))

(assert (=> d!383948 (= (apply!3318 (list!5278 lt!447992) 0) lt!448741)))

(declare-fun b!1355119 () Bool)

(assert (=> b!1355119 (= e!867223 (< 0 (size!11276 (list!5278 lt!447992))))))

(declare-fun b!1355120 () Bool)

(assert (=> b!1355120 (= e!867224 (head!2419 (list!5278 lt!447992)))))

(declare-fun b!1355121 () Bool)

(assert (=> b!1355121 (= e!867224 (apply!3318 (tail!1952 (list!5278 lt!447992)) (- 0 1)))))

(assert (= (and d!383948 res!610421) b!1355119))

(assert (= (and d!383948 c!222393) b!1355120))

(assert (= (and d!383948 (not c!222393)) b!1355121))

(assert (=> d!383948 m!1515143))

(declare-fun m!1517515 () Bool)

(assert (=> d!383948 m!1517515))

(assert (=> b!1355119 m!1515143))

(assert (=> b!1355119 m!1517363))

(assert (=> b!1355120 m!1515143))

(declare-fun m!1517517 () Bool)

(assert (=> b!1355120 m!1517517))

(assert (=> b!1355121 m!1515143))

(declare-fun m!1517519 () Bool)

(assert (=> b!1355121 m!1517519))

(assert (=> b!1355121 m!1517519))

(declare-fun m!1517521 () Bool)

(assert (=> b!1355121 m!1517521))

(assert (=> d!383292 d!383948))

(assert (=> d!383292 d!383370))

(declare-fun b!1355122 () Bool)

(declare-fun e!867227 () C!7700)

(assert (=> b!1355122 (= e!867227 (apply!3323 (xs!7267 (c!221992 lt!447992)) 0))))

(declare-fun b!1355123 () Bool)

(declare-fun e!867226 () Bool)

(assert (=> b!1355123 (= e!867226 (< 0 (size!11277 (c!221992 lt!447992))))))

(declare-fun b!1355124 () Bool)

(declare-fun e!867225 () C!7700)

(declare-fun call!91229 () C!7700)

(assert (=> b!1355124 (= e!867225 call!91229)))

(declare-fun b!1355125 () Bool)

(assert (=> b!1355125 (= e!867225 call!91229)))

(declare-fun bm!91224 () Bool)

(declare-fun c!222396 () Bool)

(declare-fun c!222394 () Bool)

(assert (=> bm!91224 (= c!222396 c!222394)))

(declare-fun e!867228 () Int)

(assert (=> bm!91224 (= call!91229 (apply!3319 (ite c!222394 (left!11821 (c!221992 lt!447992)) (right!12151 (c!221992 lt!447992))) e!867228))))

(declare-fun b!1355126 () Bool)

(assert (=> b!1355126 (= e!867227 e!867225)))

(declare-fun lt!448742 () Bool)

(assert (=> b!1355126 (= lt!448742 (appendIndex!159 (list!5282 (left!11821 (c!221992 lt!447992))) (list!5282 (right!12151 (c!221992 lt!447992))) 0))))

(assert (=> b!1355126 (= c!222394 (< 0 (size!11277 (left!11821 (c!221992 lt!447992)))))))

(declare-fun b!1355127 () Bool)

(assert (=> b!1355127 (= e!867228 (- 0 (size!11277 (left!11821 (c!221992 lt!447992)))))))

(declare-fun d!383950 () Bool)

(declare-fun lt!448743 () C!7700)

(assert (=> d!383950 (= lt!448743 (apply!3318 (list!5282 (c!221992 lt!447992)) 0))))

(assert (=> d!383950 (= lt!448743 e!867227)))

(declare-fun c!222395 () Bool)

(assert (=> d!383950 (= c!222395 ((_ is Leaf!6936) (c!221992 lt!447992)))))

(assert (=> d!383950 e!867226))

(declare-fun res!610422 () Bool)

(assert (=> d!383950 (=> (not res!610422) (not e!867226))))

(assert (=> d!383950 (= res!610422 (<= 0 0))))

(assert (=> d!383950 (= (apply!3319 (c!221992 lt!447992) 0) lt!448743)))

(declare-fun b!1355128 () Bool)

(assert (=> b!1355128 (= e!867228 0)))

(assert (= (and d!383950 res!610422) b!1355123))

(assert (= (and d!383950 c!222395) b!1355122))

(assert (= (and d!383950 (not c!222395)) b!1355126))

(assert (= (and b!1355126 c!222394) b!1355125))

(assert (= (and b!1355126 (not c!222394)) b!1355124))

(assert (= (or b!1355125 b!1355124) bm!91224))

(assert (= (and bm!91224 c!222396) b!1355128))

(assert (= (and bm!91224 (not c!222396)) b!1355127))

(declare-fun m!1517523 () Bool)

(assert (=> b!1355122 m!1517523))

(assert (=> d!383950 m!1515913))

(assert (=> d!383950 m!1515913))

(declare-fun m!1517525 () Bool)

(assert (=> d!383950 m!1517525))

(declare-fun m!1517527 () Bool)

(assert (=> bm!91224 m!1517527))

(assert (=> b!1355126 m!1516899))

(assert (=> b!1355126 m!1516901))

(assert (=> b!1355126 m!1516899))

(assert (=> b!1355126 m!1516901))

(declare-fun m!1517529 () Bool)

(assert (=> b!1355126 m!1517529))

(declare-fun m!1517531 () Bool)

(assert (=> b!1355126 m!1517531))

(assert (=> b!1355123 m!1517365))

(assert (=> b!1355127 m!1517531))

(assert (=> d!383292 d!383950))

(declare-fun d!383952 () Bool)

(declare-fun lt!448746 () Token!4444)

(declare-fun apply!3324 (List!13866 Int) Token!4444)

(assert (=> d!383952 (= lt!448746 (apply!3324 (list!5279 (_1!7572 lt!448163)) 0))))

(declare-fun apply!3325 (Conc!4545 Int) Token!4444)

(assert (=> d!383952 (= lt!448746 (apply!3325 (c!221994 (_1!7572 lt!448163)) 0))))

(declare-fun e!867231 () Bool)

(assert (=> d!383952 e!867231))

(declare-fun res!610425 () Bool)

(assert (=> d!383952 (=> (not res!610425) (not e!867231))))

(assert (=> d!383952 (= res!610425 (<= 0 0))))

(assert (=> d!383952 (= (apply!3316 (_1!7572 lt!448163) 0) lt!448746)))

(declare-fun b!1355131 () Bool)

(assert (=> b!1355131 (= e!867231 (< 0 (size!11278 (_1!7572 lt!448163))))))

(assert (= (and d!383952 res!610425) b!1355131))

(declare-fun m!1517533 () Bool)

(assert (=> d!383952 m!1517533))

(assert (=> d!383952 m!1517533))

(declare-fun m!1517535 () Bool)

(assert (=> d!383952 m!1517535))

(declare-fun m!1517537 () Bool)

(assert (=> d!383952 m!1517537))

(assert (=> b!1355131 m!1515745))

(assert (=> b!1353761 d!383952))

(declare-fun d!383954 () Bool)

(declare-fun lt!448747 () Token!4444)

(assert (=> d!383954 (= lt!448747 (apply!3324 (list!5279 (_1!7572 lt!448093)) 0))))

(assert (=> d!383954 (= lt!448747 (apply!3325 (c!221994 (_1!7572 lt!448093)) 0))))

(declare-fun e!867232 () Bool)

(assert (=> d!383954 e!867232))

(declare-fun res!610426 () Bool)

(assert (=> d!383954 (=> (not res!610426) (not e!867232))))

(assert (=> d!383954 (= res!610426 (<= 0 0))))

(assert (=> d!383954 (= (apply!3316 (_1!7572 lt!448093) 0) lt!448747)))

(declare-fun b!1355132 () Bool)

(assert (=> b!1355132 (= e!867232 (< 0 (size!11278 (_1!7572 lt!448093))))))

(assert (= (and d!383954 res!610426) b!1355132))

(declare-fun m!1517539 () Bool)

(assert (=> d!383954 m!1517539))

(assert (=> d!383954 m!1517539))

(declare-fun m!1517541 () Bool)

(assert (=> d!383954 m!1517541))

(declare-fun m!1517543 () Bool)

(assert (=> d!383954 m!1517543))

(assert (=> b!1355132 m!1515533))

(assert (=> b!1353620 d!383954))

(declare-fun d!383956 () Bool)

(declare-fun nullableFct!273 (Regex!3705) Bool)

(assert (=> d!383956 (= (nullable!1185 lt!447993) (nullableFct!273 lt!447993))))

(declare-fun bs!333788 () Bool)

(assert (= bs!333788 d!383956))

(declare-fun m!1517545 () Bool)

(assert (=> bs!333788 m!1517545))

(assert (=> b!1353822 d!383956))

(declare-fun bs!333789 () Bool)

(declare-fun d!383958 () Bool)

(assert (= bs!333789 (and d!383958 d!383902)))

(declare-fun lambda!57185 () Int)

(assert (=> bs!333789 (= (and (= (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) (= (toValue!3642 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (rule!4138 t2!34))))) (= lambda!57185 lambda!57181))))

(assert (=> d!383958 true))

(assert (=> d!383958 (< (dynLambda!6170 order!8335 (toChars!3501 (transformation!2391 (h!19199 rules!2550)))) (dynLambda!6171 order!8337 lambda!57185))))

(assert (=> d!383958 true))

(assert (=> d!383958 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (dynLambda!6171 order!8337 lambda!57185))))

(assert (=> d!383958 (= (semiInverseModEq!914 (toChars!3501 (transformation!2391 (h!19199 rules!2550))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (Forall!531 lambda!57185))))

(declare-fun bs!333790 () Bool)

(assert (= bs!333790 d!383958))

(declare-fun m!1517547 () Bool)

(assert (=> bs!333790 m!1517547))

(assert (=> d!383352 d!383958))

(declare-fun d!383960 () Bool)

(declare-fun lt!448748 () Int)

(assert (=> d!383960 (>= lt!448748 0)))

(declare-fun e!867233 () Int)

(assert (=> d!383960 (= lt!448748 e!867233)))

(declare-fun c!222397 () Bool)

(assert (=> d!383960 (= c!222397 ((_ is Nil!13797) lt!448156))))

(assert (=> d!383960 (= (size!11276 lt!448156) lt!448748)))

(declare-fun b!1355133 () Bool)

(assert (=> b!1355133 (= e!867233 0)))

(declare-fun b!1355134 () Bool)

(assert (=> b!1355134 (= e!867233 (+ 1 (size!11276 (t!120228 lt!448156))))))

(assert (= (and d!383960 c!222397) b!1355133))

(assert (= (and d!383960 (not c!222397)) b!1355134))

(declare-fun m!1517549 () Bool)

(assert (=> b!1355134 m!1517549))

(assert (=> b!1353753 d!383960))

(assert (=> b!1353753 d!383646))

(declare-fun d!383962 () Bool)

(declare-fun lt!448749 () Int)

(assert (=> d!383962 (>= lt!448749 0)))

(declare-fun e!867234 () Int)

(assert (=> d!383962 (= lt!448749 e!867234)))

(declare-fun c!222398 () Bool)

(assert (=> d!383962 (= c!222398 ((_ is Nil!13797) (getSuffix!553 lt!447984 lt!447991)))))

(assert (=> d!383962 (= (size!11276 (getSuffix!553 lt!447984 lt!447991)) lt!448749)))

(declare-fun b!1355135 () Bool)

(assert (=> b!1355135 (= e!867234 0)))

(declare-fun b!1355136 () Bool)

(assert (=> b!1355136 (= e!867234 (+ 1 (size!11276 (t!120228 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (= (and d!383962 c!222398) b!1355135))

(assert (= (and d!383962 (not c!222398)) b!1355136))

(declare-fun m!1517551 () Bool)

(assert (=> b!1355136 m!1517551))

(assert (=> b!1353753 d!383962))

(declare-fun b!1355137 () Bool)

(declare-fun e!867238 () Rule!4582)

(assert (=> b!1355137 (= e!867238 (h!19199 (t!120229 rules!2550)))))

(declare-fun b!1355138 () Bool)

(declare-fun e!867236 () Rule!4582)

(assert (=> b!1355138 (= e!867236 (getWitness!329 (t!120229 (t!120229 rules!2550)) lambda!57091))))

(declare-fun b!1355139 () Bool)

(declare-fun e!867237 () Bool)

(declare-fun lt!448751 () Rule!4582)

(assert (=> b!1355139 (= e!867237 (contains!2549 (t!120229 rules!2550) lt!448751))))

(declare-fun b!1355141 () Bool)

(declare-fun e!867235 () Bool)

(assert (=> b!1355141 (= e!867235 (dynLambda!6159 lambda!57091 (h!19199 (t!120229 rules!2550))))))

(declare-fun b!1355142 () Bool)

(declare-fun lt!448750 () Unit!19941)

(declare-fun Unit!19955 () Unit!19941)

(assert (=> b!1355142 (= lt!448750 Unit!19955)))

(assert (=> b!1355142 false))

(assert (=> b!1355142 (= e!867236 (head!2420 (t!120229 rules!2550)))))

(declare-fun b!1355140 () Bool)

(assert (=> b!1355140 (= e!867238 e!867236)))

(declare-fun c!222400 () Bool)

(assert (=> b!1355140 (= c!222400 ((_ is Cons!13798) (t!120229 rules!2550)))))

(declare-fun d!383964 () Bool)

(assert (=> d!383964 e!867237))

(declare-fun res!610428 () Bool)

(assert (=> d!383964 (=> (not res!610428) (not e!867237))))

(assert (=> d!383964 (= res!610428 (dynLambda!6159 lambda!57091 lt!448751))))

(assert (=> d!383964 (= lt!448751 e!867238)))

(declare-fun c!222399 () Bool)

(assert (=> d!383964 (= c!222399 e!867235)))

(declare-fun res!610427 () Bool)

(assert (=> d!383964 (=> (not res!610427) (not e!867235))))

(assert (=> d!383964 (= res!610427 ((_ is Cons!13798) (t!120229 rules!2550)))))

(assert (=> d!383964 (exists!441 (t!120229 rules!2550) lambda!57091)))

(assert (=> d!383964 (= (getWitness!329 (t!120229 rules!2550) lambda!57091) lt!448751)))

(assert (= (and d!383964 res!610427) b!1355141))

(assert (= (and d!383964 c!222399) b!1355137))

(assert (= (and d!383964 (not c!222399)) b!1355140))

(assert (= (and b!1355140 c!222400) b!1355138))

(assert (= (and b!1355140 (not c!222400)) b!1355142))

(assert (= (and d!383964 res!610428) b!1355139))

(declare-fun b_lambda!40709 () Bool)

(assert (=> (not b_lambda!40709) (not b!1355141)))

(declare-fun b_lambda!40711 () Bool)

(assert (=> (not b_lambda!40711) (not d!383964)))

(declare-fun m!1517553 () Bool)

(assert (=> d!383964 m!1517553))

(declare-fun m!1517555 () Bool)

(assert (=> d!383964 m!1517555))

(declare-fun m!1517557 () Bool)

(assert (=> b!1355139 m!1517557))

(declare-fun m!1517559 () Bool)

(assert (=> b!1355142 m!1517559))

(declare-fun m!1517561 () Bool)

(assert (=> b!1355141 m!1517561))

(declare-fun m!1517563 () Bool)

(assert (=> b!1355138 m!1517563))

(assert (=> b!1353902 d!383964))

(declare-fun d!383966 () Bool)

(declare-fun c!222401 () Bool)

(assert (=> d!383966 (= c!222401 ((_ is Nil!13797) lt!447984))))

(declare-fun e!867239 () (InoxSet C!7700))

(assert (=> d!383966 (= (content!1983 lt!447984) e!867239)))

(declare-fun b!1355143 () Bool)

(assert (=> b!1355143 (= e!867239 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355144 () Bool)

(assert (=> b!1355144 (= e!867239 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 lt!447984) true) (content!1983 (t!120228 lt!447984))))))

(assert (= (and d!383966 c!222401) b!1355143))

(assert (= (and d!383966 (not c!222401)) b!1355144))

(declare-fun m!1517565 () Bool)

(assert (=> b!1355144 m!1517565))

(assert (=> b!1355144 m!1516775))

(assert (=> d!383382 d!383966))

(declare-fun d!383968 () Bool)

(declare-fun lt!448752 () Int)

(assert (=> d!383968 (>= lt!448752 0)))

(declare-fun e!867240 () Int)

(assert (=> d!383968 (= lt!448752 e!867240)))

(declare-fun c!222402 () Bool)

(assert (=> d!383968 (= c!222402 ((_ is Nil!13797) (_2!7571 (get!4324 lt!448124))))))

(assert (=> d!383968 (= (size!11276 (_2!7571 (get!4324 lt!448124))) lt!448752)))

(declare-fun b!1355145 () Bool)

(assert (=> b!1355145 (= e!867240 0)))

(declare-fun b!1355146 () Bool)

(assert (=> b!1355146 (= e!867240 (+ 1 (size!11276 (t!120228 (_2!7571 (get!4324 lt!448124))))))))

(assert (= (and d!383968 c!222402) b!1355145))

(assert (= (and d!383968 (not c!222402)) b!1355146))

(declare-fun m!1517567 () Bool)

(assert (=> b!1355146 m!1517567))

(assert (=> b!1353680 d!383968))

(assert (=> b!1353680 d!383596))

(declare-fun d!383970 () Bool)

(declare-fun lt!448753 () Int)

(assert (=> d!383970 (>= lt!448753 0)))

(declare-fun e!867241 () Int)

(assert (=> d!383970 (= lt!448753 e!867241)))

(declare-fun c!222403 () Bool)

(assert (=> d!383970 (= c!222403 ((_ is Nil!13797) lt!447994))))

(assert (=> d!383970 (= (size!11276 lt!447994) lt!448753)))

(declare-fun b!1355147 () Bool)

(assert (=> b!1355147 (= e!867241 0)))

(declare-fun b!1355148 () Bool)

(assert (=> b!1355148 (= e!867241 (+ 1 (size!11276 (t!120228 lt!447994))))))

(assert (= (and d!383970 c!222403) b!1355147))

(assert (= (and d!383970 (not c!222403)) b!1355148))

(assert (=> b!1355148 m!1517415))

(assert (=> b!1353680 d!383970))

(declare-fun b!1355149 () Bool)

(declare-fun res!610436 () Bool)

(declare-fun e!867247 () Bool)

(assert (=> b!1355149 (=> res!610436 e!867247)))

(assert (=> b!1355149 (= res!610436 (not (isEmpty!8261 (tail!1952 lt!447984))))))

(declare-fun b!1355150 () Bool)

(declare-fun e!867246 () Bool)

(assert (=> b!1355150 (= e!867246 (nullable!1185 lt!448204))))

(declare-fun b!1355151 () Bool)

(assert (=> b!1355151 (= e!867247 (not (= (head!2419 lt!447984) (c!221993 lt!448204))))))

(declare-fun b!1355152 () Bool)

(declare-fun e!867242 () Bool)

(assert (=> b!1355152 (= e!867242 (= (head!2419 lt!447984) (c!221993 lt!448204)))))

(declare-fun b!1355153 () Bool)

(declare-fun e!867243 () Bool)

(declare-fun e!867245 () Bool)

(assert (=> b!1355153 (= e!867243 e!867245)))

(declare-fun res!610432 () Bool)

(assert (=> b!1355153 (=> (not res!610432) (not e!867245))))

(declare-fun lt!448754 () Bool)

(assert (=> b!1355153 (= res!610432 (not lt!448754))))

(declare-fun b!1355154 () Bool)

(declare-fun e!867248 () Bool)

(declare-fun e!867244 () Bool)

(assert (=> b!1355154 (= e!867248 e!867244)))

(declare-fun c!222405 () Bool)

(assert (=> b!1355154 (= c!222405 ((_ is EmptyLang!3705) lt!448204))))

(declare-fun b!1355155 () Bool)

(declare-fun res!610433 () Bool)

(assert (=> b!1355155 (=> res!610433 e!867243)))

(assert (=> b!1355155 (= res!610433 e!867242)))

(declare-fun res!610434 () Bool)

(assert (=> b!1355155 (=> (not res!610434) (not e!867242))))

(assert (=> b!1355155 (= res!610434 lt!448754)))

(declare-fun b!1355156 () Bool)

(declare-fun res!610430 () Bool)

(assert (=> b!1355156 (=> (not res!610430) (not e!867242))))

(assert (=> b!1355156 (= res!610430 (isEmpty!8261 (tail!1952 lt!447984)))))

(declare-fun b!1355157 () Bool)

(declare-fun res!610429 () Bool)

(assert (=> b!1355157 (=> (not res!610429) (not e!867242))))

(declare-fun call!91230 () Bool)

(assert (=> b!1355157 (= res!610429 (not call!91230))))

(declare-fun d!383972 () Bool)

(assert (=> d!383972 e!867248))

(declare-fun c!222404 () Bool)

(assert (=> d!383972 (= c!222404 ((_ is EmptyExpr!3705) lt!448204))))

(assert (=> d!383972 (= lt!448754 e!867246)))

(declare-fun c!222406 () Bool)

(assert (=> d!383972 (= c!222406 (isEmpty!8261 lt!447984))))

(assert (=> d!383972 (validRegex!1605 lt!448204)))

(assert (=> d!383972 (= (matchR!1698 lt!448204 lt!447984) lt!448754)))

(declare-fun b!1355158 () Bool)

(assert (=> b!1355158 (= e!867244 (not lt!448754))))

(declare-fun bm!91225 () Bool)

(assert (=> bm!91225 (= call!91230 (isEmpty!8261 lt!447984))))

(declare-fun b!1355159 () Bool)

(declare-fun res!610435 () Bool)

(assert (=> b!1355159 (=> res!610435 e!867243)))

(assert (=> b!1355159 (= res!610435 (not ((_ is ElementMatch!3705) lt!448204)))))

(assert (=> b!1355159 (= e!867244 e!867243)))

(declare-fun b!1355160 () Bool)

(assert (=> b!1355160 (= e!867248 (= lt!448754 call!91230))))

(declare-fun b!1355161 () Bool)

(assert (=> b!1355161 (= e!867246 (matchR!1698 (derivativeStep!943 lt!448204 (head!2419 lt!447984)) (tail!1952 lt!447984)))))

(declare-fun b!1355162 () Bool)

(assert (=> b!1355162 (= e!867245 e!867247)))

(declare-fun res!610431 () Bool)

(assert (=> b!1355162 (=> res!610431 e!867247)))

(assert (=> b!1355162 (= res!610431 call!91230)))

(assert (= (and d!383972 c!222406) b!1355150))

(assert (= (and d!383972 (not c!222406)) b!1355161))

(assert (= (and d!383972 c!222404) b!1355160))

(assert (= (and d!383972 (not c!222404)) b!1355154))

(assert (= (and b!1355154 c!222405) b!1355158))

(assert (= (and b!1355154 (not c!222405)) b!1355159))

(assert (= (and b!1355159 (not res!610435)) b!1355155))

(assert (= (and b!1355155 res!610434) b!1355157))

(assert (= (and b!1355157 res!610429) b!1355156))

(assert (= (and b!1355156 res!610430) b!1355152))

(assert (= (and b!1355155 (not res!610433)) b!1355153))

(assert (= (and b!1355153 res!610432) b!1355162))

(assert (= (and b!1355162 (not res!610431)) b!1355149))

(assert (= (and b!1355149 (not res!610436)) b!1355151))

(assert (= (or b!1355160 b!1355157 b!1355162) bm!91225))

(assert (=> b!1355149 m!1515731))

(assert (=> b!1355149 m!1515731))

(assert (=> b!1355149 m!1515771))

(assert (=> b!1355161 m!1515773))

(assert (=> b!1355161 m!1515773))

(declare-fun m!1517569 () Bool)

(assert (=> b!1355161 m!1517569))

(assert (=> b!1355161 m!1515731))

(assert (=> b!1355161 m!1517569))

(assert (=> b!1355161 m!1515731))

(declare-fun m!1517571 () Bool)

(assert (=> b!1355161 m!1517571))

(assert (=> d!383972 m!1515779))

(assert (=> d!383972 m!1515967))

(assert (=> b!1355151 m!1515773))

(assert (=> b!1355156 m!1515731))

(assert (=> b!1355156 m!1515731))

(assert (=> b!1355156 m!1515771))

(assert (=> b!1355152 m!1515773))

(assert (=> bm!91225 m!1515779))

(declare-fun m!1517573 () Bool)

(assert (=> b!1355150 m!1517573))

(assert (=> b!1354019 d!383972))

(declare-fun d!383974 () Bool)

(assert (=> d!383974 (= (list!5278 lt!448177) (list!5282 (c!221992 lt!448177)))))

(declare-fun bs!333791 () Bool)

(assert (= bs!333791 d!383974))

(declare-fun m!1517575 () Bool)

(assert (=> bs!333791 m!1517575))

(assert (=> d!383322 d!383974))

(declare-fun d!383976 () Bool)

(declare-fun c!222409 () Bool)

(assert (=> d!383976 (= c!222409 ((_ is Cons!13800) (list!5279 (singletonSeq!1008 t1!34))))))

(declare-fun e!867251 () List!13863)

(assert (=> d!383976 (= (printList!594 thiss!19762 (list!5279 (singletonSeq!1008 t1!34))) e!867251)))

(declare-fun b!1355167 () Bool)

(assert (=> b!1355167 (= e!867251 (++!3546 (list!5278 (charsOf!1363 (h!19201 (list!5279 (singletonSeq!1008 t1!34))))) (printList!594 thiss!19762 (t!120231 (list!5279 (singletonSeq!1008 t1!34))))))))

(declare-fun b!1355168 () Bool)

(assert (=> b!1355168 (= e!867251 Nil!13797)))

(assert (= (and d!383976 c!222409) b!1355167))

(assert (= (and d!383976 (not c!222409)) b!1355168))

(declare-fun m!1517577 () Bool)

(assert (=> b!1355167 m!1517577))

(assert (=> b!1355167 m!1517577))

(declare-fun m!1517579 () Bool)

(assert (=> b!1355167 m!1517579))

(declare-fun m!1517581 () Bool)

(assert (=> b!1355167 m!1517581))

(assert (=> b!1355167 m!1517579))

(assert (=> b!1355167 m!1517581))

(declare-fun m!1517583 () Bool)

(assert (=> b!1355167 m!1517583))

(assert (=> d!383322 d!383976))

(declare-fun d!383978 () Bool)

(assert (=> d!383978 (= (list!5279 (singletonSeq!1008 t1!34)) (list!5283 (c!221994 (singletonSeq!1008 t1!34))))))

(declare-fun bs!333792 () Bool)

(assert (= bs!333792 d!383978))

(declare-fun m!1517585 () Bool)

(assert (=> bs!333792 m!1517585))

(assert (=> d!383322 d!383978))

(declare-fun d!383980 () Bool)

(declare-fun lt!448771 () BalanceConc!9028)

(declare-fun printListTailRec!243 (LexerInterface!2086 List!13866 List!13863) List!13863)

(declare-fun dropList!394 (BalanceConc!9030 Int) List!13866)

(assert (=> d!383980 (= (list!5278 lt!448771) (printListTailRec!243 thiss!19762 (dropList!394 (singletonSeq!1008 t1!34) 0) (list!5278 (BalanceConc!9029 Empty!4544))))))

(declare-fun e!867257 () BalanceConc!9028)

(assert (=> d!383980 (= lt!448771 e!867257)))

(declare-fun c!222412 () Bool)

(assert (=> d!383980 (= c!222412 (>= 0 (size!11278 (singletonSeq!1008 t1!34))))))

(declare-fun e!867256 () Bool)

(assert (=> d!383980 e!867256))

(declare-fun res!610439 () Bool)

(assert (=> d!383980 (=> (not res!610439) (not e!867256))))

(assert (=> d!383980 (= res!610439 (>= 0 0))))

(assert (=> d!383980 (= (printTailRec!576 thiss!19762 (singletonSeq!1008 t1!34) 0 (BalanceConc!9029 Empty!4544)) lt!448771)))

(declare-fun b!1355175 () Bool)

(assert (=> b!1355175 (= e!867256 (<= 0 (size!11278 (singletonSeq!1008 t1!34))))))

(declare-fun b!1355176 () Bool)

(assert (=> b!1355176 (= e!867257 (BalanceConc!9029 Empty!4544))))

(declare-fun b!1355177 () Bool)

(assert (=> b!1355177 (= e!867257 (printTailRec!576 thiss!19762 (singletonSeq!1008 t1!34) (+ 0 1) (++!3548 (BalanceConc!9029 Empty!4544) (charsOf!1363 (apply!3316 (singletonSeq!1008 t1!34) 0)))))))

(declare-fun lt!448770 () List!13866)

(assert (=> b!1355177 (= lt!448770 (list!5279 (singletonSeq!1008 t1!34)))))

(declare-fun lt!448772 () Unit!19941)

(declare-fun lemmaDropApply!434 (List!13866 Int) Unit!19941)

(assert (=> b!1355177 (= lt!448772 (lemmaDropApply!434 lt!448770 0))))

(declare-fun head!2423 (List!13866) Token!4444)

(declare-fun drop!677 (List!13866 Int) List!13866)

(assert (=> b!1355177 (= (head!2423 (drop!677 lt!448770 0)) (apply!3324 lt!448770 0))))

(declare-fun lt!448775 () Unit!19941)

(assert (=> b!1355177 (= lt!448775 lt!448772)))

(declare-fun lt!448774 () List!13866)

(assert (=> b!1355177 (= lt!448774 (list!5279 (singletonSeq!1008 t1!34)))))

(declare-fun lt!448769 () Unit!19941)

(declare-fun lemmaDropTail!414 (List!13866 Int) Unit!19941)

(assert (=> b!1355177 (= lt!448769 (lemmaDropTail!414 lt!448774 0))))

(declare-fun tail!1955 (List!13866) List!13866)

(assert (=> b!1355177 (= (tail!1955 (drop!677 lt!448774 0)) (drop!677 lt!448774 (+ 0 1)))))

(declare-fun lt!448773 () Unit!19941)

(assert (=> b!1355177 (= lt!448773 lt!448769)))

(assert (= (and d!383980 res!610439) b!1355175))

(assert (= (and d!383980 c!222412) b!1355176))

(assert (= (and d!383980 (not c!222412)) b!1355177))

(assert (=> d!383980 m!1517293))

(declare-fun m!1517587 () Bool)

(assert (=> d!383980 m!1517587))

(assert (=> d!383980 m!1517293))

(declare-fun m!1517589 () Bool)

(assert (=> d!383980 m!1517589))

(assert (=> d!383980 m!1515165))

(declare-fun m!1517591 () Bool)

(assert (=> d!383980 m!1517591))

(assert (=> d!383980 m!1515165))

(assert (=> d!383980 m!1517587))

(declare-fun m!1517593 () Bool)

(assert (=> d!383980 m!1517593))

(assert (=> b!1355175 m!1515165))

(assert (=> b!1355175 m!1517591))

(assert (=> b!1355177 m!1515165))

(declare-fun m!1517595 () Bool)

(assert (=> b!1355177 m!1517595))

(declare-fun m!1517597 () Bool)

(assert (=> b!1355177 m!1517597))

(declare-fun m!1517599 () Bool)

(assert (=> b!1355177 m!1517599))

(declare-fun m!1517601 () Bool)

(assert (=> b!1355177 m!1517601))

(declare-fun m!1517603 () Bool)

(assert (=> b!1355177 m!1517603))

(assert (=> b!1355177 m!1517597))

(declare-fun m!1517605 () Bool)

(assert (=> b!1355177 m!1517605))

(declare-fun m!1517607 () Bool)

(assert (=> b!1355177 m!1517607))

(assert (=> b!1355177 m!1517595))

(declare-fun m!1517609 () Bool)

(assert (=> b!1355177 m!1517609))

(declare-fun m!1517611 () Bool)

(assert (=> b!1355177 m!1517611))

(assert (=> b!1355177 m!1515165))

(declare-fun m!1517613 () Bool)

(assert (=> b!1355177 m!1517613))

(declare-fun m!1517615 () Bool)

(assert (=> b!1355177 m!1517615))

(assert (=> b!1355177 m!1517601))

(assert (=> b!1355177 m!1515165))

(assert (=> b!1355177 m!1515741))

(assert (=> b!1355177 m!1517609))

(assert (=> b!1355177 m!1517613))

(declare-fun m!1517617 () Bool)

(assert (=> b!1355177 m!1517617))

(assert (=> d!383322 d!383980))

(declare-fun b!1355178 () Bool)

(declare-fun res!610447 () Bool)

(declare-fun e!867263 () Bool)

(assert (=> b!1355178 (=> res!610447 e!867263)))

(assert (=> b!1355178 (= res!610447 (not (isEmpty!8261 (tail!1952 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))))

(declare-fun b!1355179 () Bool)

(declare-fun e!867262 () Bool)

(assert (=> b!1355179 (= e!867262 (nullable!1185 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun b!1355180 () Bool)

(assert (=> b!1355180 (= e!867263 (not (= (head!2419 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (c!221993 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))))))))

(declare-fun b!1355181 () Bool)

(declare-fun e!867258 () Bool)

(assert (=> b!1355181 (= e!867258 (= (head!2419 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) (c!221993 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun b!1355182 () Bool)

(declare-fun e!867259 () Bool)

(declare-fun e!867261 () Bool)

(assert (=> b!1355182 (= e!867259 e!867261)))

(declare-fun res!610443 () Bool)

(assert (=> b!1355182 (=> (not res!610443) (not e!867261))))

(declare-fun lt!448776 () Bool)

(assert (=> b!1355182 (= res!610443 (not lt!448776))))

(declare-fun b!1355183 () Bool)

(declare-fun e!867264 () Bool)

(declare-fun e!867260 () Bool)

(assert (=> b!1355183 (= e!867264 e!867260)))

(declare-fun c!222414 () Bool)

(assert (=> b!1355183 (= c!222414 ((_ is EmptyLang!3705) (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun b!1355184 () Bool)

(declare-fun res!610444 () Bool)

(assert (=> b!1355184 (=> res!610444 e!867259)))

(assert (=> b!1355184 (= res!610444 e!867258)))

(declare-fun res!610445 () Bool)

(assert (=> b!1355184 (=> (not res!610445) (not e!867258))))

(assert (=> b!1355184 (= res!610445 lt!448776)))

(declare-fun b!1355185 () Bool)

(declare-fun res!610441 () Bool)

(assert (=> b!1355185 (=> (not res!610441) (not e!867258))))

(assert (=> b!1355185 (= res!610441 (isEmpty!8261 (tail!1952 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun b!1355186 () Bool)

(declare-fun res!610440 () Bool)

(assert (=> b!1355186 (=> (not res!610440) (not e!867258))))

(declare-fun call!91231 () Bool)

(assert (=> b!1355186 (= res!610440 (not call!91231))))

(declare-fun d!383982 () Bool)

(assert (=> d!383982 e!867264))

(declare-fun c!222413 () Bool)

(assert (=> d!383982 (= c!222413 ((_ is EmptyExpr!3705) (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124))))))))

(assert (=> d!383982 (= lt!448776 e!867262)))

(declare-fun c!222415 () Bool)

(assert (=> d!383982 (= c!222415 (isEmpty!8261 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))

(assert (=> d!383982 (validRegex!1605 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))))

(assert (=> d!383982 (= (matchR!1698 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))) lt!448776)))

(declare-fun b!1355187 () Bool)

(assert (=> b!1355187 (= e!867260 (not lt!448776))))

(declare-fun bm!91226 () Bool)

(assert (=> bm!91226 (= call!91231 (isEmpty!8261 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124))))))))

(declare-fun b!1355188 () Bool)

(declare-fun res!610446 () Bool)

(assert (=> b!1355188 (=> res!610446 e!867259)))

(assert (=> b!1355188 (= res!610446 (not ((_ is ElementMatch!3705) (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))))))

(assert (=> b!1355188 (= e!867260 e!867259)))

(declare-fun b!1355189 () Bool)

(assert (=> b!1355189 (= e!867264 (= lt!448776 call!91231))))

(declare-fun b!1355190 () Bool)

(assert (=> b!1355190 (= e!867262 (matchR!1698 (derivativeStep!943 (regex!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))) (head!2419 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))))) (tail!1952 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448124)))))))))

(declare-fun b!1355191 () Bool)

(assert (=> b!1355191 (= e!867261 e!867263)))

(declare-fun res!610442 () Bool)

(assert (=> b!1355191 (=> res!610442 e!867263)))

(assert (=> b!1355191 (= res!610442 call!91231)))

(assert (= (and d!383982 c!222415) b!1355179))

(assert (= (and d!383982 (not c!222415)) b!1355190))

(assert (= (and d!383982 c!222413) b!1355189))

(assert (= (and d!383982 (not c!222413)) b!1355183))

(assert (= (and b!1355183 c!222414) b!1355187))

(assert (= (and b!1355183 (not c!222414)) b!1355188))

(assert (= (and b!1355188 (not res!610446)) b!1355184))

(assert (= (and b!1355184 res!610445) b!1355186))

(assert (= (and b!1355186 res!610440) b!1355185))

(assert (= (and b!1355185 res!610441) b!1355181))

(assert (= (and b!1355184 (not res!610444)) b!1355182))

(assert (= (and b!1355182 res!610443) b!1355191))

(assert (= (and b!1355191 (not res!610442)) b!1355178))

(assert (= (and b!1355178 (not res!610447)) b!1355180))

(assert (= (or b!1355189 b!1355186 b!1355191) bm!91226))

(assert (=> b!1355178 m!1515611))

(declare-fun m!1517619 () Bool)

(assert (=> b!1355178 m!1517619))

(assert (=> b!1355178 m!1517619))

(declare-fun m!1517621 () Bool)

(assert (=> b!1355178 m!1517621))

(assert (=> b!1355190 m!1515611))

(declare-fun m!1517623 () Bool)

(assert (=> b!1355190 m!1517623))

(assert (=> b!1355190 m!1517623))

(declare-fun m!1517625 () Bool)

(assert (=> b!1355190 m!1517625))

(assert (=> b!1355190 m!1515611))

(assert (=> b!1355190 m!1517619))

(assert (=> b!1355190 m!1517625))

(assert (=> b!1355190 m!1517619))

(declare-fun m!1517627 () Bool)

(assert (=> b!1355190 m!1517627))

(assert (=> d!383982 m!1515611))

(declare-fun m!1517629 () Bool)

(assert (=> d!383982 m!1517629))

(declare-fun m!1517631 () Bool)

(assert (=> d!383982 m!1517631))

(assert (=> b!1355180 m!1515611))

(assert (=> b!1355180 m!1517623))

(assert (=> b!1355185 m!1515611))

(assert (=> b!1355185 m!1517619))

(assert (=> b!1355185 m!1517619))

(assert (=> b!1355185 m!1517621))

(assert (=> b!1355181 m!1515611))

(assert (=> b!1355181 m!1517623))

(assert (=> bm!91226 m!1515611))

(assert (=> bm!91226 m!1517629))

(declare-fun m!1517633 () Bool)

(assert (=> b!1355179 m!1517633))

(assert (=> b!1353676 d!383982))

(assert (=> b!1353676 d!383596))

(assert (=> b!1353676 d!383592))

(assert (=> b!1353676 d!383594))

(declare-fun d!383984 () Bool)

(declare-fun lt!448777 () Bool)

(assert (=> d!383984 (= lt!448777 (select (content!1983 (t!120228 lt!447991)) lt!447995))))

(declare-fun e!867265 () Bool)

(assert (=> d!383984 (= lt!448777 e!867265)))

(declare-fun res!610449 () Bool)

(assert (=> d!383984 (=> (not res!610449) (not e!867265))))

(assert (=> d!383984 (= res!610449 ((_ is Cons!13797) (t!120228 lt!447991)))))

(assert (=> d!383984 (= (contains!2547 (t!120228 lt!447991) lt!447995) lt!448777)))

(declare-fun b!1355192 () Bool)

(declare-fun e!867266 () Bool)

(assert (=> b!1355192 (= e!867265 e!867266)))

(declare-fun res!610448 () Bool)

(assert (=> b!1355192 (=> res!610448 e!867266)))

(assert (=> b!1355192 (= res!610448 (= (h!19198 (t!120228 lt!447991)) lt!447995))))

(declare-fun b!1355193 () Bool)

(assert (=> b!1355193 (= e!867266 (contains!2547 (t!120228 (t!120228 lt!447991)) lt!447995))))

(assert (= (and d!383984 res!610449) b!1355192))

(assert (= (and b!1355192 (not res!610448)) b!1355193))

(assert (=> d!383984 m!1517377))

(declare-fun m!1517635 () Bool)

(assert (=> d!383984 m!1517635))

(declare-fun m!1517637 () Bool)

(assert (=> b!1355193 m!1517637))

(assert (=> b!1353718 d!383984))

(declare-fun e!867267 () Bool)

(declare-fun b!1355194 () Bool)

(declare-fun lt!448778 () tuple2!13372)

(assert (=> b!1355194 (= e!867267 (= (list!5278 (_2!7572 lt!448778)) (_2!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))))

(declare-fun b!1355195 () Bool)

(declare-fun e!867269 () Bool)

(declare-fun e!867268 () Bool)

(assert (=> b!1355195 (= e!867269 e!867268)))

(declare-fun res!610451 () Bool)

(assert (=> b!1355195 (= res!610451 (< (size!11270 (_2!7572 lt!448778)) (size!11270 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))

(assert (=> b!1355195 (=> (not res!610451) (not e!867268))))

(declare-fun b!1355196 () Bool)

(assert (=> b!1355196 (= e!867269 (= (_2!7572 lt!448778) (print!852 thiss!19762 (singletonSeq!1008 t1!34))))))

(declare-fun b!1355197 () Bool)

(declare-fun res!610450 () Bool)

(assert (=> b!1355197 (=> (not res!610450) (not e!867267))))

(assert (=> b!1355197 (= res!610450 (= (list!5279 (_1!7572 lt!448778)) (_1!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))))

(declare-fun b!1355198 () Bool)

(assert (=> b!1355198 (= e!867268 (not (isEmpty!8265 (_1!7572 lt!448778))))))

(declare-fun d!383986 () Bool)

(assert (=> d!383986 e!867267))

(declare-fun res!610452 () Bool)

(assert (=> d!383986 (=> (not res!610452) (not e!867267))))

(assert (=> d!383986 (= res!610452 e!867269)))

(declare-fun c!222416 () Bool)

(assert (=> d!383986 (= c!222416 (> (size!11278 (_1!7572 lt!448778)) 0))))

(assert (=> d!383986 (= lt!448778 (lexTailRecV2!399 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34)) (BalanceConc!9029 Empty!4544) (print!852 thiss!19762 (singletonSeq!1008 t1!34)) (BalanceConc!9031 Empty!4545)))))

(assert (=> d!383986 (= (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))) lt!448778)))

(assert (= (and d!383986 c!222416) b!1355195))

(assert (= (and d!383986 (not c!222416)) b!1355196))

(assert (= (and b!1355195 res!610451) b!1355198))

(assert (= (and d!383986 res!610452) b!1355197))

(assert (= (and b!1355197 res!610450) b!1355194))

(declare-fun m!1517639 () Bool)

(assert (=> d!383986 m!1517639))

(assert (=> d!383986 m!1515167))

(assert (=> d!383986 m!1515167))

(declare-fun m!1517641 () Bool)

(assert (=> d!383986 m!1517641))

(declare-fun m!1517643 () Bool)

(assert (=> b!1355198 m!1517643))

(declare-fun m!1517645 () Bool)

(assert (=> b!1355194 m!1517645))

(assert (=> b!1355194 m!1515167))

(declare-fun m!1517647 () Bool)

(assert (=> b!1355194 m!1517647))

(assert (=> b!1355194 m!1517647))

(declare-fun m!1517649 () Bool)

(assert (=> b!1355194 m!1517649))

(declare-fun m!1517651 () Bool)

(assert (=> b!1355197 m!1517651))

(assert (=> b!1355197 m!1515167))

(assert (=> b!1355197 m!1517647))

(assert (=> b!1355197 m!1517647))

(assert (=> b!1355197 m!1517649))

(declare-fun m!1517653 () Bool)

(assert (=> b!1355195 m!1517653))

(assert (=> b!1355195 m!1515167))

(declare-fun m!1517655 () Bool)

(assert (=> b!1355195 m!1517655))

(assert (=> d!383310 d!383986))

(assert (=> d!383310 d!383322))

(assert (=> d!383310 d!383336))

(declare-fun d!383988 () Bool)

(assert (=> d!383988 (= (list!5279 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))))) (list!5283 (c!221994 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))))

(declare-fun bs!333793 () Bool)

(assert (= bs!333793 d!383988))

(declare-fun m!1517657 () Bool)

(assert (=> bs!333793 m!1517657))

(assert (=> d!383310 d!383988))

(declare-fun d!383990 () Bool)

(declare-fun lt!448779 () Int)

(assert (=> d!383990 (= lt!448779 (size!11280 (list!5279 (_1!7572 lt!448163))))))

(assert (=> d!383990 (= lt!448779 (size!11284 (c!221994 (_1!7572 lt!448163))))))

(assert (=> d!383990 (= (size!11278 (_1!7572 lt!448163)) lt!448779)))

(declare-fun bs!333794 () Bool)

(assert (= bs!333794 d!383990))

(assert (=> bs!333794 m!1517533))

(assert (=> bs!333794 m!1517533))

(declare-fun m!1517659 () Bool)

(assert (=> bs!333794 m!1517659))

(declare-fun m!1517661 () Bool)

(assert (=> bs!333794 m!1517661))

(assert (=> d!383310 d!383990))

(assert (=> d!383310 d!383978))

(assert (=> d!383310 d!383320))

(declare-fun d!383992 () Bool)

(declare-fun lt!448780 () Int)

(assert (=> d!383992 (>= lt!448780 0)))

(declare-fun e!867270 () Int)

(assert (=> d!383992 (= lt!448780 e!867270)))

(declare-fun c!222417 () Bool)

(assert (=> d!383992 (= c!222417 ((_ is Nil!13797) lt!448206))))

(assert (=> d!383992 (= (size!11276 lt!448206) lt!448780)))

(declare-fun b!1355199 () Bool)

(assert (=> b!1355199 (= e!867270 0)))

(declare-fun b!1355200 () Bool)

(assert (=> b!1355200 (= e!867270 (+ 1 (size!11276 (t!120228 lt!448206))))))

(assert (= (and d!383992 c!222417) b!1355199))

(assert (= (and d!383992 (not c!222417)) b!1355200))

(declare-fun m!1517663 () Bool)

(assert (=> b!1355200 m!1517663))

(assert (=> b!1353962 d!383992))

(assert (=> b!1353962 d!383970))

(declare-fun d!383994 () Bool)

(declare-fun lt!448781 () Int)

(assert (=> d!383994 (>= lt!448781 0)))

(declare-fun e!867271 () Int)

(assert (=> d!383994 (= lt!448781 e!867271)))

(declare-fun c!222418 () Bool)

(assert (=> d!383994 (= c!222418 ((_ is Nil!13797) (Cons!13797 lt!447989 Nil!13797)))))

(assert (=> d!383994 (= (size!11276 (Cons!13797 lt!447989 Nil!13797)) lt!448781)))

(declare-fun b!1355201 () Bool)

(assert (=> b!1355201 (= e!867271 0)))

(declare-fun b!1355202 () Bool)

(assert (=> b!1355202 (= e!867271 (+ 1 (size!11276 (t!120228 (Cons!13797 lt!447989 Nil!13797)))))))

(assert (= (and d!383994 c!222418) b!1355201))

(assert (= (and d!383994 (not c!222418)) b!1355202))

(declare-fun m!1517665 () Bool)

(assert (=> b!1355202 m!1517665))

(assert (=> b!1353962 d!383994))

(declare-fun bs!333795 () Bool)

(declare-fun d!383996 () Bool)

(assert (= bs!333795 (and d!383996 d!383708)))

(declare-fun lambda!57186 () Int)

(assert (=> bs!333795 (= (= (toValue!3642 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (h!19199 rules!2550)))) (= lambda!57186 lambda!57172))))

(declare-fun bs!333796 () Bool)

(assert (= bs!333796 (and d!383996 d!383864)))

(assert (=> bs!333796 (= (= (toValue!3642 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34)))) (= lambda!57186 lambda!57178))))

(assert (=> d!383996 true))

(assert (=> d!383996 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (rule!4138 t1!34)))) (dynLambda!6168 order!8333 lambda!57186))))

(assert (=> d!383996 (= (equivClasses!873 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t1!34)))) (Forall2!433 lambda!57186))))

(declare-fun bs!333797 () Bool)

(assert (= bs!333797 d!383996))

(declare-fun m!1517667 () Bool)

(assert (=> bs!333797 m!1517667))

(assert (=> b!1353924 d!383996))

(declare-fun d!383998 () Bool)

(declare-fun lt!448782 () Int)

(assert (=> d!383998 (>= lt!448782 0)))

(declare-fun e!867272 () Int)

(assert (=> d!383998 (= lt!448782 e!867272)))

(declare-fun c!222419 () Bool)

(assert (=> d!383998 (= c!222419 ((_ is Nil!13797) (originalCharacters!3253 t2!34)))))

(assert (=> d!383998 (= (size!11276 (originalCharacters!3253 t2!34)) lt!448782)))

(declare-fun b!1355203 () Bool)

(assert (=> b!1355203 (= e!867272 0)))

(declare-fun b!1355204 () Bool)

(assert (=> b!1355204 (= e!867272 (+ 1 (size!11276 (t!120228 (originalCharacters!3253 t2!34)))))))

(assert (= (and d!383998 c!222419) b!1355203))

(assert (= (and d!383998 (not c!222419)) b!1355204))

(declare-fun m!1517669 () Bool)

(assert (=> b!1355204 m!1517669))

(assert (=> b!1353706 d!383998))

(declare-fun d!384000 () Bool)

(declare-fun res!610457 () Bool)

(declare-fun e!867277 () Bool)

(assert (=> d!384000 (=> res!610457 e!867277)))

(assert (=> d!384000 (= res!610457 ((_ is Nil!13798) rules!2550))))

(assert (=> d!384000 (= (forall!3367 rules!2550 lambda!57116) e!867277)))

(declare-fun b!1355209 () Bool)

(declare-fun e!867278 () Bool)

(assert (=> b!1355209 (= e!867277 e!867278)))

(declare-fun res!610458 () Bool)

(assert (=> b!1355209 (=> (not res!610458) (not e!867278))))

(assert (=> b!1355209 (= res!610458 (dynLambda!6159 lambda!57116 (h!19199 rules!2550)))))

(declare-fun b!1355210 () Bool)

(assert (=> b!1355210 (= e!867278 (forall!3367 (t!120229 rules!2550) lambda!57116))))

(assert (= (and d!384000 (not res!610457)) b!1355209))

(assert (= (and b!1355209 res!610458) b!1355210))

(declare-fun b_lambda!40713 () Bool)

(assert (=> (not b_lambda!40713) (not b!1355209)))

(declare-fun m!1517671 () Bool)

(assert (=> b!1355209 m!1517671))

(declare-fun m!1517673 () Bool)

(assert (=> b!1355210 m!1517673))

(assert (=> d!383204 d!384000))

(declare-fun d!384002 () Bool)

(declare-fun lt!448783 () Int)

(assert (=> d!384002 (= lt!448783 (size!11276 (list!5278 (_2!7572 lt!448189))))))

(assert (=> d!384002 (= lt!448783 (size!11277 (c!221992 (_2!7572 lt!448189))))))

(assert (=> d!384002 (= (size!11270 (_2!7572 lt!448189)) lt!448783)))

(declare-fun bs!333798 () Bool)

(assert (= bs!333798 d!384002))

(assert (=> bs!333798 m!1515841))

(assert (=> bs!333798 m!1515841))

(declare-fun m!1517675 () Bool)

(assert (=> bs!333798 m!1517675))

(declare-fun m!1517677 () Bool)

(assert (=> bs!333798 m!1517677))

(assert (=> b!1353918 d!384002))

(declare-fun d!384004 () Bool)

(declare-fun lt!448784 () Int)

(assert (=> d!384004 (= lt!448784 (size!11276 (list!5278 lt!447986)))))

(assert (=> d!384004 (= lt!448784 (size!11277 (c!221992 lt!447986)))))

(assert (=> d!384004 (= (size!11270 lt!447986) lt!448784)))

(declare-fun bs!333799 () Bool)

(assert (= bs!333799 d!384004))

(assert (=> bs!333799 m!1515177))

(assert (=> bs!333799 m!1515177))

(assert (=> bs!333799 m!1515711))

(declare-fun m!1517679 () Bool)

(assert (=> bs!333799 m!1517679))

(assert (=> b!1353918 d!384004))

(declare-fun d!384006 () Bool)

(assert (=> d!384006 (= (head!2421 (map!3047 rules!2550 lambda!57089)) (h!19200 (map!3047 rules!2550 lambda!57089)))))

(assert (=> b!1353959 d!384006))

(declare-fun d!384008 () Bool)

(declare-fun lt!448785 () Int)

(assert (=> d!384008 (>= lt!448785 0)))

(declare-fun e!867279 () Int)

(assert (=> d!384008 (= lt!448785 e!867279)))

(declare-fun c!222420 () Bool)

(assert (=> d!384008 (= c!222420 ((_ is Nil!13797) (originalCharacters!3253 t1!34)))))

(assert (=> d!384008 (= (size!11276 (originalCharacters!3253 t1!34)) lt!448785)))

(declare-fun b!1355211 () Bool)

(assert (=> b!1355211 (= e!867279 0)))

(declare-fun b!1355212 () Bool)

(assert (=> b!1355212 (= e!867279 (+ 1 (size!11276 (t!120228 (originalCharacters!3253 t1!34)))))))

(assert (= (and d!384008 c!222420) b!1355211))

(assert (= (and d!384008 (not c!222420)) b!1355212))

(declare-fun m!1517681 () Bool)

(assert (=> b!1355212 m!1517681))

(assert (=> b!1353691 d!384008))

(declare-fun d!384010 () Bool)

(assert (=> d!384010 (= (list!5278 lt!448031) (list!5282 (c!221992 lt!448031)))))

(declare-fun bs!333800 () Bool)

(assert (= bs!333800 d!384010))

(declare-fun m!1517683 () Bool)

(assert (=> bs!333800 m!1517683))

(assert (=> d!383178 d!384010))

(assert (=> d!383290 d!383880))

(declare-fun d!384012 () Bool)

(declare-fun res!610463 () Bool)

(declare-fun e!867284 () Bool)

(assert (=> d!384012 (=> res!610463 e!867284)))

(assert (=> d!384012 (= res!610463 ((_ is Nil!13799) lt!447983))))

(assert (=> d!384012 (= (forall!3368 lt!447983 lambda!57132) e!867284)))

(declare-fun b!1355217 () Bool)

(declare-fun e!867285 () Bool)

(assert (=> b!1355217 (= e!867284 e!867285)))

(declare-fun res!610464 () Bool)

(assert (=> b!1355217 (=> (not res!610464) (not e!867285))))

(assert (=> b!1355217 (= res!610464 (dynLambda!6162 lambda!57132 (h!19200 lt!447983)))))

(declare-fun b!1355218 () Bool)

(assert (=> b!1355218 (= e!867285 (forall!3368 (t!120230 lt!447983) lambda!57132))))

(assert (= (and d!384012 (not res!610463)) b!1355217))

(assert (= (and b!1355217 res!610464) b!1355218))

(declare-fun b_lambda!40715 () Bool)

(assert (=> (not b_lambda!40715) (not b!1355217)))

(declare-fun m!1517685 () Bool)

(assert (=> b!1355217 m!1517685))

(declare-fun m!1517687 () Bool)

(assert (=> b!1355218 m!1517687))

(assert (=> d!383358 d!384012))

(declare-fun d!384014 () Bool)

(assert (=> d!384014 (= (isEmpty!8261 lt!447984) ((_ is Nil!13797) lt!447984))))

(assert (=> bm!91142 d!384014))

(declare-fun d!384016 () Bool)

(declare-fun res!610465 () Bool)

(declare-fun e!867286 () Bool)

(assert (=> d!384016 (=> res!610465 e!867286)))

(assert (=> d!384016 (= res!610465 ((_ is Nil!13799) (map!3047 rules!2550 lambda!57089)))))

(assert (=> d!384016 (= (forall!3368 (map!3047 rules!2550 lambda!57089) lambda!57125) e!867286)))

(declare-fun b!1355219 () Bool)

(declare-fun e!867287 () Bool)

(assert (=> b!1355219 (= e!867286 e!867287)))

(declare-fun res!610466 () Bool)

(assert (=> b!1355219 (=> (not res!610466) (not e!867287))))

(assert (=> b!1355219 (= res!610466 (dynLambda!6162 lambda!57125 (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1355220 () Bool)

(assert (=> b!1355220 (= e!867287 (forall!3368 (t!120230 (map!3047 rules!2550 lambda!57089)) lambda!57125))))

(assert (= (and d!384016 (not res!610465)) b!1355219))

(assert (= (and b!1355219 res!610466) b!1355220))

(declare-fun b_lambda!40717 () Bool)

(assert (=> (not b_lambda!40717) (not b!1355219)))

(declare-fun m!1517689 () Bool)

(assert (=> b!1355219 m!1517689))

(declare-fun m!1517691 () Bool)

(assert (=> b!1355220 m!1517691))

(assert (=> d!383354 d!384016))

(declare-fun d!384018 () Bool)

(assert (=> d!384018 (= (list!5279 lt!448180) (list!5283 (c!221994 lt!448180)))))

(declare-fun bs!333801 () Bool)

(assert (= bs!333801 d!384018))

(declare-fun m!1517693 () Bool)

(assert (=> bs!333801 m!1517693))

(assert (=> d!383336 d!384018))

(declare-fun d!384020 () Bool)

(declare-fun e!867290 () Bool)

(assert (=> d!384020 e!867290))

(declare-fun res!610469 () Bool)

(assert (=> d!384020 (=> (not res!610469) (not e!867290))))

(declare-fun lt!448788 () BalanceConc!9030)

(assert (=> d!384020 (= res!610469 (= (list!5279 lt!448788) (Cons!13800 t1!34 Nil!13800)))))

(declare-fun choose!8331 (Token!4444) BalanceConc!9030)

(assert (=> d!384020 (= lt!448788 (choose!8331 t1!34))))

(assert (=> d!384020 (= (singleton!430 t1!34) lt!448788)))

(declare-fun b!1355223 () Bool)

(assert (=> b!1355223 (= e!867290 (isBalanced!1324 (c!221994 lt!448788)))))

(assert (= (and d!384020 res!610469) b!1355223))

(declare-fun m!1517695 () Bool)

(assert (=> d!384020 m!1517695))

(declare-fun m!1517697 () Bool)

(assert (=> d!384020 m!1517697))

(declare-fun m!1517699 () Bool)

(assert (=> b!1355223 m!1517699))

(assert (=> d!383336 d!384020))

(declare-fun d!384022 () Bool)

(declare-fun c!222421 () Bool)

(assert (=> d!384022 (= c!222421 ((_ is Nil!13797) lt!448156))))

(declare-fun e!867291 () (InoxSet C!7700))

(assert (=> d!384022 (= (content!1983 lt!448156) e!867291)))

(declare-fun b!1355224 () Bool)

(assert (=> b!1355224 (= e!867291 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355225 () Bool)

(assert (=> b!1355225 (= e!867291 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 lt!448156) true) (content!1983 (t!120228 lt!448156))))))

(assert (= (and d!384022 c!222421) b!1355224))

(assert (= (and d!384022 (not c!222421)) b!1355225))

(declare-fun m!1517701 () Bool)

(assert (=> b!1355225 m!1517701))

(declare-fun m!1517703 () Bool)

(assert (=> b!1355225 m!1517703))

(assert (=> d!383304 d!384022))

(assert (=> d!383304 d!383880))

(declare-fun d!384024 () Bool)

(declare-fun c!222422 () Bool)

(assert (=> d!384024 (= c!222422 ((_ is Nil!13797) (getSuffix!553 lt!447984 lt!447991)))))

(declare-fun e!867292 () (InoxSet C!7700))

(assert (=> d!384024 (= (content!1983 (getSuffix!553 lt!447984 lt!447991)) e!867292)))

(declare-fun b!1355226 () Bool)

(assert (=> b!1355226 (= e!867292 ((as const (Array C!7700 Bool)) false))))

(declare-fun b!1355227 () Bool)

(assert (=> b!1355227 (= e!867292 ((_ map or) (store ((as const (Array C!7700 Bool)) false) (h!19198 (getSuffix!553 lt!447984 lt!447991)) true) (content!1983 (t!120228 (getSuffix!553 lt!447984 lt!447991)))))))

(assert (= (and d!384024 c!222422) b!1355226))

(assert (= (and d!384024 (not c!222422)) b!1355227))

(declare-fun m!1517705 () Bool)

(assert (=> b!1355227 m!1517705))

(declare-fun m!1517707 () Bool)

(assert (=> b!1355227 m!1517707))

(assert (=> d!383304 d!384024))

(declare-fun d!384026 () Bool)

(declare-fun lt!448789 () Bool)

(assert (=> d!384026 (= lt!448789 (select (content!1985 (map!3047 rules!2550 lambda!57089)) lt!448204))))

(declare-fun e!867294 () Bool)

(assert (=> d!384026 (= lt!448789 e!867294)))

(declare-fun res!610470 () Bool)

(assert (=> d!384026 (=> (not res!610470) (not e!867294))))

(assert (=> d!384026 (= res!610470 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57089)))))

(assert (=> d!384026 (= (contains!2548 (map!3047 rules!2550 lambda!57089) lt!448204) lt!448789)))

(declare-fun b!1355228 () Bool)

(declare-fun e!867293 () Bool)

(assert (=> b!1355228 (= e!867294 e!867293)))

(declare-fun res!610471 () Bool)

(assert (=> b!1355228 (=> res!610471 e!867293)))

(assert (=> b!1355228 (= res!610471 (= (h!19200 (map!3047 rules!2550 lambda!57089)) lt!448204))))

(declare-fun b!1355229 () Bool)

(assert (=> b!1355229 (= e!867293 (contains!2548 (t!120230 (map!3047 rules!2550 lambda!57089)) lt!448204))))

(assert (= (and d!384026 res!610470) b!1355228))

(assert (= (and b!1355228 (not res!610471)) b!1355229))

(assert (=> d!384026 m!1515215))

(assert (=> d!384026 m!1515883))

(declare-fun m!1517709 () Bool)

(assert (=> d!384026 m!1517709))

(declare-fun m!1517711 () Bool)

(assert (=> b!1355229 m!1517711))

(assert (=> b!1353955 d!384026))

(declare-fun d!384028 () Bool)

(declare-fun lt!448790 () Bool)

(assert (=> d!384028 (= lt!448790 (isEmpty!8261 (list!5278 (_2!7572 lt!448093))))))

(assert (=> d!384028 (= lt!448790 (isEmpty!8262 (c!221992 (_2!7572 lt!448093))))))

(assert (=> d!384028 (= (isEmpty!8255 (_2!7572 lt!448093)) lt!448790)))

(declare-fun bs!333802 () Bool)

(assert (= bs!333802 d!384028))

(declare-fun m!1517713 () Bool)

(assert (=> bs!333802 m!1517713))

(assert (=> bs!333802 m!1517713))

(declare-fun m!1517715 () Bool)

(assert (=> bs!333802 m!1517715))

(declare-fun m!1517717 () Bool)

(assert (=> bs!333802 m!1517717))

(assert (=> b!1353621 d!384028))

(declare-fun bs!333803 () Bool)

(declare-fun d!384030 () Bool)

(assert (= bs!333803 (and d!384030 b!1353381)))

(declare-fun lambda!57189 () Int)

(assert (=> bs!333803 (not (= lambda!57189 lambda!57091))))

(declare-fun bs!333804 () Bool)

(assert (= bs!333804 (and d!384030 d!383204)))

(assert (=> bs!333804 (not (= lambda!57189 lambda!57116))))

(declare-fun bs!333805 () Bool)

(assert (= bs!333805 (and d!384030 d!383206)))

(assert (=> bs!333805 (not (= lambda!57189 lambda!57119))))

(declare-fun bs!333806 () Bool)

(assert (= bs!333806 (and d!384030 d!383914)))

(assert (=> bs!333806 (= lambda!57189 lambda!57184)))

(assert (=> d!384030 true))

(declare-fun lt!448793 () Bool)

(assert (=> d!384030 (= lt!448793 (rulesValidInductive!756 thiss!19762 rules!2550))))

(assert (=> d!384030 (= lt!448793 (forall!3367 rules!2550 lambda!57189))))

(assert (=> d!384030 (= (rulesValid!883 thiss!19762 rules!2550) lt!448793)))

(declare-fun bs!333807 () Bool)

(assert (= bs!333807 d!384030))

(assert (=> bs!333807 m!1515643))

(declare-fun m!1517719 () Bool)

(assert (=> bs!333807 m!1517719))

(assert (=> d!383298 d!384030))

(declare-fun d!384032 () Bool)

(declare-fun charsToBigInt!1 (List!13862) Int)

(assert (=> d!384032 (= (inv!17 (value!77776 t2!34)) (= (charsToBigInt!1 (text!17815 (value!77776 t2!34))) (value!77768 (value!77776 t2!34))))))

(declare-fun bs!333808 () Bool)

(assert (= bs!333808 d!384032))

(declare-fun m!1517721 () Bool)

(assert (=> bs!333808 m!1517721))

(assert (=> b!1353779 d!384032))

(assert (=> d!383318 d!384014))

(assert (=> d!383318 d!383674))

(declare-fun d!384034 () Bool)

(declare-fun lt!448794 () Bool)

(assert (=> d!384034 (= lt!448794 (select (content!1984 rules!2550) lt!448186))))

(declare-fun e!867295 () Bool)

(assert (=> d!384034 (= lt!448794 e!867295)))

(declare-fun res!610473 () Bool)

(assert (=> d!384034 (=> (not res!610473) (not e!867295))))

(assert (=> d!384034 (= res!610473 ((_ is Cons!13798) rules!2550))))

(assert (=> d!384034 (= (contains!2549 rules!2550 lt!448186) lt!448794)))

(declare-fun b!1355230 () Bool)

(declare-fun e!867296 () Bool)

(assert (=> b!1355230 (= e!867295 e!867296)))

(declare-fun res!610472 () Bool)

(assert (=> b!1355230 (=> res!610472 e!867296)))

(assert (=> b!1355230 (= res!610472 (= (h!19199 rules!2550) lt!448186))))

(declare-fun b!1355231 () Bool)

(assert (=> b!1355231 (= e!867296 (contains!2549 (t!120229 rules!2550) lt!448186))))

(assert (= (and d!384034 res!610473) b!1355230))

(assert (= (and b!1355230 (not res!610472)) b!1355231))

(assert (=> d!384034 m!1515765))

(declare-fun m!1517723 () Bool)

(assert (=> d!384034 m!1517723))

(declare-fun m!1517725 () Bool)

(assert (=> b!1355231 m!1517725))

(assert (=> b!1353903 d!384034))

(declare-fun d!384036 () Bool)

(declare-fun lt!448795 () Bool)

(assert (=> d!384036 (= lt!448795 (isEmpty!8261 (list!5278 (_2!7572 lt!448163))))))

(assert (=> d!384036 (= lt!448795 (isEmpty!8262 (c!221992 (_2!7572 lt!448163))))))

(assert (=> d!384036 (= (isEmpty!8255 (_2!7572 lt!448163)) lt!448795)))

(declare-fun bs!333809 () Bool)

(assert (= bs!333809 d!384036))

(declare-fun m!1517727 () Bool)

(assert (=> bs!333809 m!1517727))

(assert (=> bs!333809 m!1517727))

(declare-fun m!1517729 () Bool)

(assert (=> bs!333809 m!1517729))

(declare-fun m!1517731 () Bool)

(assert (=> bs!333809 m!1517731))

(assert (=> b!1353762 d!384036))

(declare-fun b!1355232 () Bool)

(declare-fun e!867299 () Bool)

(declare-fun e!867303 () Bool)

(assert (=> b!1355232 (= e!867299 e!867303)))

(declare-fun res!610474 () Bool)

(assert (=> b!1355232 (=> (not res!610474) (not e!867303))))

(declare-fun call!91232 () Bool)

(assert (=> b!1355232 (= res!610474 call!91232)))

(declare-fun b!1355233 () Bool)

(declare-fun res!610478 () Bool)

(assert (=> b!1355233 (=> res!610478 e!867299)))

(assert (=> b!1355233 (= res!610478 (not ((_ is Concat!6187) (h!19200 (map!3047 rules!2550 lambda!57089)))))))

(declare-fun e!867297 () Bool)

(assert (=> b!1355233 (= e!867297 e!867299)))

(declare-fun c!222424 () Bool)

(declare-fun bm!91227 () Bool)

(assert (=> bm!91227 (= call!91232 (validRegex!1605 (ite c!222424 (regOne!7923 (h!19200 (map!3047 rules!2550 lambda!57089))) (regOne!7922 (h!19200 (map!3047 rules!2550 lambda!57089))))))))

(declare-fun b!1355234 () Bool)

(declare-fun res!610476 () Bool)

(declare-fun e!867302 () Bool)

(assert (=> b!1355234 (=> (not res!610476) (not e!867302))))

(assert (=> b!1355234 (= res!610476 call!91232)))

(assert (=> b!1355234 (= e!867297 e!867302)))

(declare-fun c!222423 () Bool)

(declare-fun bm!91228 () Bool)

(declare-fun call!91233 () Bool)

(assert (=> bm!91228 (= call!91233 (validRegex!1605 (ite c!222423 (reg!4034 (h!19200 (map!3047 rules!2550 lambda!57089))) (ite c!222424 (regTwo!7923 (h!19200 (map!3047 rules!2550 lambda!57089))) (regTwo!7922 (h!19200 (map!3047 rules!2550 lambda!57089)))))))))

(declare-fun d!384038 () Bool)

(declare-fun res!610475 () Bool)

(declare-fun e!867300 () Bool)

(assert (=> d!384038 (=> res!610475 e!867300)))

(assert (=> d!384038 (= res!610475 ((_ is ElementMatch!3705) (h!19200 (map!3047 rules!2550 lambda!57089))))))

(assert (=> d!384038 (= (validRegex!1605 (h!19200 (map!3047 rules!2550 lambda!57089))) e!867300)))

(declare-fun b!1355235 () Bool)

(declare-fun e!867301 () Bool)

(assert (=> b!1355235 (= e!867300 e!867301)))

(assert (=> b!1355235 (= c!222423 ((_ is Star!3705) (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1355236 () Bool)

(declare-fun call!91234 () Bool)

(assert (=> b!1355236 (= e!867303 call!91234)))

(declare-fun bm!91229 () Bool)

(assert (=> bm!91229 (= call!91234 call!91233)))

(declare-fun b!1355237 () Bool)

(assert (=> b!1355237 (= e!867302 call!91234)))

(declare-fun b!1355238 () Bool)

(declare-fun e!867298 () Bool)

(assert (=> b!1355238 (= e!867298 call!91233)))

(declare-fun b!1355239 () Bool)

(assert (=> b!1355239 (= e!867301 e!867297)))

(assert (=> b!1355239 (= c!222424 ((_ is Union!3705) (h!19200 (map!3047 rules!2550 lambda!57089))))))

(declare-fun b!1355240 () Bool)

(assert (=> b!1355240 (= e!867301 e!867298)))

(declare-fun res!610477 () Bool)

(assert (=> b!1355240 (= res!610477 (not (nullable!1185 (reg!4034 (h!19200 (map!3047 rules!2550 lambda!57089))))))))

(assert (=> b!1355240 (=> (not res!610477) (not e!867298))))

(assert (= (and d!384038 (not res!610475)) b!1355235))

(assert (= (and b!1355235 c!222423) b!1355240))

(assert (= (and b!1355235 (not c!222423)) b!1355239))

(assert (= (and b!1355240 res!610477) b!1355238))

(assert (= (and b!1355239 c!222424) b!1355234))

(assert (= (and b!1355239 (not c!222424)) b!1355233))

(assert (= (and b!1355234 res!610476) b!1355237))

(assert (= (and b!1355233 (not res!610478)) b!1355232))

(assert (= (and b!1355232 res!610474) b!1355236))

(assert (= (or b!1355234 b!1355232) bm!91227))

(assert (= (or b!1355237 b!1355236) bm!91229))

(assert (= (or b!1355238 bm!91229) bm!91228))

(declare-fun m!1517733 () Bool)

(assert (=> bm!91227 m!1517733))

(declare-fun m!1517735 () Bool)

(assert (=> bm!91228 m!1517735))

(declare-fun m!1517737 () Bool)

(assert (=> b!1355240 m!1517737))

(assert (=> bs!333636 d!384038))

(assert (=> b!1353823 d!383886))

(declare-fun b!1355259 () Bool)

(declare-fun res!610496 () Bool)

(declare-fun e!867312 () Bool)

(assert (=> b!1355259 (=> (not res!610496) (not e!867312))))

(declare-fun lt!448807 () Option!2644)

(assert (=> b!1355259 (= res!610496 (= (rule!4138 (_1!7571 (get!4324 lt!448807))) (h!19199 rules!2550)))))

(declare-fun b!1355260 () Bool)

(assert (=> b!1355260 (= e!867312 (= (size!11269 (_1!7571 (get!4324 lt!448807))) (size!11276 (originalCharacters!3253 (_1!7571 (get!4324 lt!448807))))))))

(declare-fun b!1355261 () Bool)

(declare-fun res!610495 () Bool)

(assert (=> b!1355261 (=> (not res!610495) (not e!867312))))

(assert (=> b!1355261 (= res!610495 (= (value!77776 (_1!7571 (get!4324 lt!448807))) (apply!3317 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448807)))) (seqFromList!1621 (originalCharacters!3253 (_1!7571 (get!4324 lt!448807)))))))))

(declare-fun b!1355262 () Bool)

(declare-fun e!867313 () Option!2644)

(declare-datatypes ((tuple2!13382 0))(
  ( (tuple2!13383 (_1!7577 List!13863) (_2!7577 List!13863)) )
))
(declare-fun lt!448808 () tuple2!13382)

(assert (=> b!1355262 (= e!867313 (Some!2643 (tuple2!13371 (Token!4445 (apply!3317 (transformation!2391 (h!19199 rules!2550)) (seqFromList!1621 (_1!7577 lt!448808))) (h!19199 rules!2550) (size!11270 (seqFromList!1621 (_1!7577 lt!448808))) (_1!7577 lt!448808)) (_2!7577 lt!448808))))))

(declare-fun lt!448810 () Unit!19941)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!258 (Regex!3705 List!13863) Unit!19941)

(assert (=> b!1355262 (= lt!448810 (longestMatchIsAcceptedByMatchOrIsEmpty!258 (regex!2391 (h!19199 rules!2550)) lt!447994))))

(declare-fun res!610497 () Bool)

(declare-fun findLongestMatchInner!274 (Regex!3705 List!13863 Int List!13863 List!13863 Int) tuple2!13382)

(assert (=> b!1355262 (= res!610497 (isEmpty!8261 (_1!7577 (findLongestMatchInner!274 (regex!2391 (h!19199 rules!2550)) Nil!13797 (size!11276 Nil!13797) lt!447994 lt!447994 (size!11276 lt!447994)))))))

(declare-fun e!867315 () Bool)

(assert (=> b!1355262 (=> res!610497 e!867315)))

(assert (=> b!1355262 e!867315))

(declare-fun lt!448806 () Unit!19941)

(assert (=> b!1355262 (= lt!448806 lt!448810)))

(declare-fun lt!448809 () Unit!19941)

(declare-fun lemmaSemiInverse!328 (TokenValueInjection!4622 BalanceConc!9028) Unit!19941)

(assert (=> b!1355262 (= lt!448809 (lemmaSemiInverse!328 (transformation!2391 (h!19199 rules!2550)) (seqFromList!1621 (_1!7577 lt!448808))))))

(declare-fun b!1355263 () Bool)

(declare-fun res!610499 () Bool)

(assert (=> b!1355263 (=> (not res!610499) (not e!867312))))

(assert (=> b!1355263 (= res!610499 (< (size!11276 (_2!7571 (get!4324 lt!448807))) (size!11276 lt!447994)))))

(declare-fun b!1355264 () Bool)

(assert (=> b!1355264 (= e!867315 (matchR!1698 (regex!2391 (h!19199 rules!2550)) (_1!7577 (findLongestMatchInner!274 (regex!2391 (h!19199 rules!2550)) Nil!13797 (size!11276 Nil!13797) lt!447994 lt!447994 (size!11276 lt!447994)))))))

(declare-fun b!1355265 () Bool)

(declare-fun e!867314 () Bool)

(assert (=> b!1355265 (= e!867314 e!867312)))

(declare-fun res!610498 () Bool)

(assert (=> b!1355265 (=> (not res!610498) (not e!867312))))

(assert (=> b!1355265 (= res!610498 (matchR!1698 (regex!2391 (h!19199 rules!2550)) (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448807))))))))

(declare-fun b!1355266 () Bool)

(declare-fun res!610494 () Bool)

(assert (=> b!1355266 (=> (not res!610494) (not e!867312))))

(assert (=> b!1355266 (= res!610494 (= (++!3546 (list!5278 (charsOf!1363 (_1!7571 (get!4324 lt!448807)))) (_2!7571 (get!4324 lt!448807))) lt!447994))))

(declare-fun d!384040 () Bool)

(assert (=> d!384040 e!867314))

(declare-fun res!610493 () Bool)

(assert (=> d!384040 (=> res!610493 e!867314)))

(assert (=> d!384040 (= res!610493 (isEmpty!8260 lt!448807))))

(assert (=> d!384040 (= lt!448807 e!867313)))

(declare-fun c!222427 () Bool)

(assert (=> d!384040 (= c!222427 (isEmpty!8261 (_1!7577 lt!448808)))))

(declare-fun findLongestMatch!230 (Regex!3705 List!13863) tuple2!13382)

(assert (=> d!384040 (= lt!448808 (findLongestMatch!230 (regex!2391 (h!19199 rules!2550)) lt!447994))))

(assert (=> d!384040 (ruleValid!584 thiss!19762 (h!19199 rules!2550))))

(assert (=> d!384040 (= (maxPrefixOneRule!603 thiss!19762 (h!19199 rules!2550) lt!447994) lt!448807)))

(declare-fun b!1355267 () Bool)

(assert (=> b!1355267 (= e!867313 None!2643)))

(assert (= (and d!384040 c!222427) b!1355267))

(assert (= (and d!384040 (not c!222427)) b!1355262))

(assert (= (and b!1355262 (not res!610497)) b!1355264))

(assert (= (and d!384040 (not res!610493)) b!1355265))

(assert (= (and b!1355265 res!610498) b!1355266))

(assert (= (and b!1355266 res!610494) b!1355263))

(assert (= (and b!1355263 res!610499) b!1355259))

(assert (= (and b!1355259 res!610496) b!1355261))

(assert (= (and b!1355261 res!610495) b!1355260))

(declare-fun m!1517739 () Bool)

(assert (=> b!1355262 m!1517739))

(declare-fun m!1517741 () Bool)

(assert (=> b!1355262 m!1517741))

(declare-fun m!1517743 () Bool)

(assert (=> b!1355262 m!1517743))

(assert (=> b!1355262 m!1517743))

(assert (=> b!1355262 m!1515633))

(declare-fun m!1517745 () Bool)

(assert (=> b!1355262 m!1517745))

(declare-fun m!1517747 () Bool)

(assert (=> b!1355262 m!1517747))

(assert (=> b!1355262 m!1517739))

(declare-fun m!1517749 () Bool)

(assert (=> b!1355262 m!1517749))

(assert (=> b!1355262 m!1515633))

(assert (=> b!1355262 m!1517739))

(declare-fun m!1517751 () Bool)

(assert (=> b!1355262 m!1517751))

(assert (=> b!1355262 m!1517739))

(declare-fun m!1517753 () Bool)

(assert (=> b!1355262 m!1517753))

(declare-fun m!1517755 () Bool)

(assert (=> b!1355260 m!1517755))

(declare-fun m!1517757 () Bool)

(assert (=> b!1355260 m!1517757))

(assert (=> b!1355263 m!1517755))

(declare-fun m!1517759 () Bool)

(assert (=> b!1355263 m!1517759))

(assert (=> b!1355263 m!1515633))

(declare-fun m!1517761 () Bool)

(assert (=> d!384040 m!1517761))

(declare-fun m!1517763 () Bool)

(assert (=> d!384040 m!1517763))

(declare-fun m!1517765 () Bool)

(assert (=> d!384040 m!1517765))

(assert (=> d!384040 m!1517453))

(assert (=> b!1355266 m!1517755))

(declare-fun m!1517767 () Bool)

(assert (=> b!1355266 m!1517767))

(assert (=> b!1355266 m!1517767))

(declare-fun m!1517769 () Bool)

(assert (=> b!1355266 m!1517769))

(assert (=> b!1355266 m!1517769))

(declare-fun m!1517771 () Bool)

(assert (=> b!1355266 m!1517771))

(assert (=> b!1355265 m!1517755))

(assert (=> b!1355265 m!1517767))

(assert (=> b!1355265 m!1517767))

(assert (=> b!1355265 m!1517769))

(assert (=> b!1355265 m!1517769))

(declare-fun m!1517773 () Bool)

(assert (=> b!1355265 m!1517773))

(assert (=> b!1355259 m!1517755))

(assert (=> b!1355261 m!1517755))

(declare-fun m!1517775 () Bool)

(assert (=> b!1355261 m!1517775))

(assert (=> b!1355261 m!1517775))

(declare-fun m!1517777 () Bool)

(assert (=> b!1355261 m!1517777))

(assert (=> b!1355264 m!1517743))

(assert (=> b!1355264 m!1515633))

(assert (=> b!1355264 m!1517743))

(assert (=> b!1355264 m!1515633))

(assert (=> b!1355264 m!1517745))

(declare-fun m!1517779 () Bool)

(assert (=> b!1355264 m!1517779))

(assert (=> bm!91139 d!384040))

(assert (=> d!383312 d!383966))

(declare-fun b!1355271 () Bool)

(declare-fun e!867317 () List!13863)

(assert (=> b!1355271 (= e!867317 (++!3546 (list!5282 (left!11821 (c!221992 lt!447986))) (list!5282 (right!12151 (c!221992 lt!447986)))))))

(declare-fun b!1355270 () Bool)

(assert (=> b!1355270 (= e!867317 (list!5285 (xs!7267 (c!221992 lt!447986))))))

(declare-fun d!384042 () Bool)

(declare-fun c!222428 () Bool)

(assert (=> d!384042 (= c!222428 ((_ is Empty!4544) (c!221992 lt!447986)))))

(declare-fun e!867316 () List!13863)

(assert (=> d!384042 (= (list!5282 (c!221992 lt!447986)) e!867316)))

(declare-fun b!1355269 () Bool)

(assert (=> b!1355269 (= e!867316 e!867317)))

(declare-fun c!222429 () Bool)

(assert (=> b!1355269 (= c!222429 ((_ is Leaf!6936) (c!221992 lt!447986)))))

(declare-fun b!1355268 () Bool)

(assert (=> b!1355268 (= e!867316 Nil!13797)))

(assert (= (and d!384042 c!222428) b!1355268))

(assert (= (and d!384042 (not c!222428)) b!1355269))

(assert (= (and b!1355269 c!222429) b!1355270))

(assert (= (and b!1355269 (not c!222429)) b!1355271))

(declare-fun m!1517781 () Bool)

(assert (=> b!1355271 m!1517781))

(declare-fun m!1517783 () Bool)

(assert (=> b!1355271 m!1517783))

(assert (=> b!1355271 m!1517781))

(assert (=> b!1355271 m!1517783))

(declare-fun m!1517785 () Bool)

(assert (=> b!1355271 m!1517785))

(declare-fun m!1517787 () Bool)

(assert (=> b!1355270 m!1517787))

(assert (=> d!383302 d!384042))

(declare-fun d!384044 () Bool)

(declare-fun res!610504 () Bool)

(declare-fun e!867322 () Bool)

(assert (=> d!384044 (=> res!610504 e!867322)))

(assert (=> d!384044 (= res!610504 ((_ is Nil!13798) rules!2550))))

(assert (=> d!384044 (= (noDuplicateTag!883 thiss!19762 rules!2550 Nil!13802) e!867322)))

(declare-fun b!1355276 () Bool)

(declare-fun e!867323 () Bool)

(assert (=> b!1355276 (= e!867322 e!867323)))

(declare-fun res!610505 () Bool)

(assert (=> b!1355276 (=> (not res!610505) (not e!867323))))

(declare-fun contains!2551 (List!13868 String!16641) Bool)

(assert (=> b!1355276 (= res!610505 (not (contains!2551 Nil!13802 (tag!2653 (h!19199 rules!2550)))))))

(declare-fun b!1355277 () Bool)

(assert (=> b!1355277 (= e!867323 (noDuplicateTag!883 thiss!19762 (t!120229 rules!2550) (Cons!13802 (tag!2653 (h!19199 rules!2550)) Nil!13802)))))

(assert (= (and d!384044 (not res!610504)) b!1355276))

(assert (= (and b!1355276 res!610505) b!1355277))

(declare-fun m!1517789 () Bool)

(assert (=> b!1355276 m!1517789))

(declare-fun m!1517791 () Bool)

(assert (=> b!1355277 m!1517791))

(assert (=> b!1353727 d!384044))

(declare-fun d!384046 () Bool)

(declare-fun lt!448811 () Bool)

(assert (=> d!384046 (= lt!448811 (select (content!1984 (t!120229 rules!2550)) (rule!4138 t1!34)))))

(declare-fun e!867324 () Bool)

(assert (=> d!384046 (= lt!448811 e!867324)))

(declare-fun res!610507 () Bool)

(assert (=> d!384046 (=> (not res!610507) (not e!867324))))

(assert (=> d!384046 (= res!610507 ((_ is Cons!13798) (t!120229 rules!2550)))))

(assert (=> d!384046 (= (contains!2549 (t!120229 rules!2550) (rule!4138 t1!34)) lt!448811)))

(declare-fun b!1355278 () Bool)

(declare-fun e!867325 () Bool)

(assert (=> b!1355278 (= e!867324 e!867325)))

(declare-fun res!610506 () Bool)

(assert (=> b!1355278 (=> res!610506 e!867325)))

(assert (=> b!1355278 (= res!610506 (= (h!19199 (t!120229 rules!2550)) (rule!4138 t1!34)))))

(declare-fun b!1355279 () Bool)

(assert (=> b!1355279 (= e!867325 (contains!2549 (t!120229 (t!120229 rules!2550)) (rule!4138 t1!34)))))

(assert (= (and d!384046 res!610507) b!1355278))

(assert (= (and b!1355278 (not res!610506)) b!1355279))

(declare-fun m!1517793 () Bool)

(assert (=> d!384046 m!1517793))

(declare-fun m!1517795 () Bool)

(assert (=> d!384046 m!1517795))

(declare-fun m!1517797 () Bool)

(assert (=> b!1355279 m!1517797))

(assert (=> b!1353786 d!384046))

(declare-fun d!384048 () Bool)

(declare-fun c!222432 () Bool)

(assert (=> d!384048 (= c!222432 ((_ is Nil!13798) rules!2550))))

(declare-fun e!867328 () (InoxSet Rule!4582))

(assert (=> d!384048 (= (content!1984 rules!2550) e!867328)))

(declare-fun b!1355284 () Bool)

(assert (=> b!1355284 (= e!867328 ((as const (Array Rule!4582 Bool)) false))))

(declare-fun b!1355285 () Bool)

(assert (=> b!1355285 (= e!867328 ((_ map or) (store ((as const (Array Rule!4582 Bool)) false) (h!19199 rules!2550) true) (content!1984 (t!120229 rules!2550))))))

(assert (= (and d!384048 c!222432) b!1355284))

(assert (= (and d!384048 (not c!222432)) b!1355285))

(declare-fun m!1517799 () Bool)

(assert (=> b!1355285 m!1517799))

(assert (=> b!1355285 m!1517793))

(assert (=> d!383316 d!384048))

(declare-fun d!384050 () Bool)

(assert (=> d!384050 (= (inv!17 (value!77776 t1!34)) (= (charsToBigInt!1 (text!17815 (value!77776 t1!34))) (value!77768 (value!77776 t1!34))))))

(declare-fun bs!333810 () Bool)

(assert (= bs!333810 d!384050))

(declare-fun m!1517801 () Bool)

(assert (=> bs!333810 m!1517801))

(assert (=> b!1353974 d!384050))

(declare-fun bs!333811 () Bool)

(declare-fun d!384052 () Bool)

(assert (= bs!333811 (and d!384052 d!383204)))

(declare-fun lambda!57190 () Int)

(assert (=> bs!333811 (= (= lambda!57119 lambda!57091) (= lambda!57190 lambda!57116))))

(declare-fun bs!333812 () Bool)

(assert (= bs!333812 (and d!384052 d!383206)))

(assert (=> bs!333812 (not (= lambda!57190 lambda!57119))))

(declare-fun bs!333813 () Bool)

(assert (= bs!333813 (and d!384052 d!383914)))

(assert (=> bs!333813 (not (= lambda!57190 lambda!57184))))

(declare-fun bs!333814 () Bool)

(assert (= bs!333814 (and d!384052 d!384030)))

(assert (=> bs!333814 (not (= lambda!57190 lambda!57189))))

(declare-fun bs!333815 () Bool)

(assert (= bs!333815 (and d!384052 b!1353381)))

(assert (=> bs!333815 (not (= lambda!57190 lambda!57091))))

(assert (=> d!384052 true))

(assert (=> d!384052 (< (dynLambda!6154 order!8317 lambda!57119) (dynLambda!6154 order!8317 lambda!57190))))

(assert (=> d!384052 (= (exists!441 rules!2550 lambda!57119) (not (forall!3367 rules!2550 lambda!57190)))))

(declare-fun bs!333816 () Bool)

(assert (= bs!333816 d!384052))

(declare-fun m!1517803 () Bool)

(assert (=> bs!333816 m!1517803))

(assert (=> d!383206 d!384052))

(declare-fun bs!333817 () Bool)

(declare-fun d!384054 () Bool)

(assert (= bs!333817 (and d!384054 d!383204)))

(declare-fun lambda!57193 () Int)

(assert (=> bs!333817 (not (= lambda!57193 lambda!57116))))

(declare-fun bs!333818 () Bool)

(assert (= bs!333818 (and d!384054 d!383206)))

(assert (=> bs!333818 (= lambda!57193 lambda!57119)))

(declare-fun bs!333819 () Bool)

(assert (= bs!333819 (and d!384054 d!384052)))

(assert (=> bs!333819 (not (= lambda!57193 lambda!57190))))

(declare-fun bs!333820 () Bool)

(assert (= bs!333820 (and d!384054 d!383914)))

(assert (=> bs!333820 (not (= lambda!57193 lambda!57184))))

(declare-fun bs!333821 () Bool)

(assert (= bs!333821 (and d!384054 d!384030)))

(assert (=> bs!333821 (not (= lambda!57193 lambda!57189))))

(declare-fun bs!333822 () Bool)

(assert (= bs!333822 (and d!384054 b!1353381)))

(assert (=> bs!333822 (not (= lambda!57193 lambda!57091))))

(assert (=> d!384054 true))

(assert (=> d!384054 true))

(assert (=> d!384054 (< (dynLambda!6155 order!8319 lambda!57089) (dynLambda!6154 order!8317 lambda!57193))))

(assert (=> d!384054 (exists!441 rules!2550 lambda!57193)))

(assert (=> d!384054 true))

(declare-fun _$24!88 () Unit!19941)

(assert (=> d!384054 (= (choose!8325 rules!2550 lambda!57089 lt!447982) _$24!88)))

(declare-fun bs!333823 () Bool)

(assert (= bs!333823 d!384054))

(declare-fun m!1517805 () Bool)

(assert (=> bs!333823 m!1517805))

(assert (=> d!383206 d!384054))

(assert (=> d!383206 d!383362))

(assert (=> d!383206 d!383360))

(assert (=> d!383356 d!383318))

(declare-fun bs!333824 () Bool)

(declare-fun d!384056 () Bool)

(assert (= bs!333824 (and d!384056 d!383354)))

(declare-fun lambda!57194 () Int)

(assert (=> bs!333824 (= (= lambda!57131 lambda!57090) (= lambda!57194 lambda!57125))))

(declare-fun bs!333825 () Bool)

(assert (= bs!333825 (and d!384056 d!383358)))

(assert (=> bs!333825 (= (= lambda!57131 lambda!57090) (= lambda!57194 lambda!57132))))

(declare-fun bs!333826 () Bool)

(assert (= bs!333826 (and d!384056 d!383356)))

(assert (=> bs!333826 (not (= lambda!57194 lambda!57131))))

(assert (=> bs!333826 (not (= lambda!57194 lambda!57130))))

(declare-fun bs!333827 () Bool)

(assert (= bs!333827 (and d!384056 b!1353366)))

(assert (=> bs!333827 (not (= lambda!57194 lambda!57090))))

(assert (=> d!384056 true))

(assert (=> d!384056 (< (dynLambda!6160 order!8321 lambda!57131) (dynLambda!6160 order!8321 lambda!57194))))

(assert (=> d!384056 (= (exists!440 lt!447983 lambda!57131) (not (forall!3368 lt!447983 lambda!57194)))))

(declare-fun bs!333828 () Bool)

(assert (= bs!333828 d!384056))

(declare-fun m!1517807 () Bool)

(assert (=> bs!333828 m!1517807))

(assert (=> d!383356 d!384056))

(declare-fun bs!333829 () Bool)

(declare-fun d!384058 () Bool)

(assert (= bs!333829 (and d!384058 d!383354)))

(declare-fun lambda!57197 () Int)

(assert (=> bs!333829 (not (= lambda!57197 lambda!57125))))

(declare-fun bs!333830 () Bool)

(assert (= bs!333830 (and d!384058 d!384056)))

(assert (=> bs!333830 (not (= lambda!57197 lambda!57194))))

(declare-fun bs!333831 () Bool)

(assert (= bs!333831 (and d!384058 d!383358)))

(assert (=> bs!333831 (not (= lambda!57197 lambda!57132))))

(declare-fun bs!333832 () Bool)

(assert (= bs!333832 (and d!384058 d!383356)))

(assert (=> bs!333832 (= lambda!57197 lambda!57131)))

(assert (=> bs!333832 (not (= lambda!57197 lambda!57130))))

(declare-fun bs!333833 () Bool)

(assert (= bs!333833 (and d!384058 b!1353366)))

(assert (=> bs!333833 (= lambda!57197 lambda!57090)))

(assert (=> d!384058 true))

(assert (=> d!384058 (= (matchR!1698 lt!447993 lt!447984) (exists!440 lt!447983 lambda!57197))))

(assert (=> d!384058 true))

(declare-fun _$85!131 () Unit!19941)

(assert (=> d!384058 (= (choose!8327 lt!447993 lt!447983 lt!447984) _$85!131)))

(declare-fun bs!333834 () Bool)

(assert (= bs!333834 d!384058))

(assert (=> bs!333834 m!1515203))

(declare-fun m!1517809 () Bool)

(assert (=> bs!333834 m!1517809))

(assert (=> d!383356 d!384058))

(declare-fun d!384060 () Bool)

(declare-fun res!610510 () Bool)

(declare-fun e!867331 () Bool)

(assert (=> d!384060 (=> res!610510 e!867331)))

(assert (=> d!384060 (= res!610510 ((_ is Nil!13799) lt!447983))))

(assert (=> d!384060 (= (forall!3368 lt!447983 lambda!57130) e!867331)))

(declare-fun b!1355290 () Bool)

(declare-fun e!867332 () Bool)

(assert (=> b!1355290 (= e!867331 e!867332)))

(declare-fun res!610511 () Bool)

(assert (=> b!1355290 (=> (not res!610511) (not e!867332))))

(assert (=> b!1355290 (= res!610511 (dynLambda!6162 lambda!57130 (h!19200 lt!447983)))))

(declare-fun b!1355291 () Bool)

(assert (=> b!1355291 (= e!867332 (forall!3368 (t!120230 lt!447983) lambda!57130))))

(assert (= (and d!384060 (not res!610510)) b!1355290))

(assert (= (and b!1355290 res!610511) b!1355291))

(declare-fun b_lambda!40719 () Bool)

(assert (=> (not b_lambda!40719) (not b!1355290)))

(declare-fun m!1517811 () Bool)

(assert (=> b!1355290 m!1517811))

(declare-fun m!1517813 () Bool)

(assert (=> b!1355291 m!1517813))

(assert (=> d!383356 d!384060))

(declare-fun b!1355292 () Bool)

(declare-fun e!867335 () Bool)

(declare-fun e!867339 () Bool)

(assert (=> b!1355292 (= e!867335 e!867339)))

(declare-fun res!610512 () Bool)

(assert (=> b!1355292 (=> (not res!610512) (not e!867339))))

(declare-fun call!91235 () Bool)

(assert (=> b!1355292 (= res!610512 call!91235)))

(declare-fun b!1355293 () Bool)

(declare-fun res!610516 () Bool)

(assert (=> b!1355293 (=> res!610516 e!867335)))

(assert (=> b!1355293 (= res!610516 (not ((_ is Concat!6187) lt!448204)))))

(declare-fun e!867333 () Bool)

(assert (=> b!1355293 (= e!867333 e!867335)))

(declare-fun bm!91230 () Bool)

(declare-fun c!222434 () Bool)

(assert (=> bm!91230 (= call!91235 (validRegex!1605 (ite c!222434 (regOne!7923 lt!448204) (regOne!7922 lt!448204))))))

(declare-fun b!1355294 () Bool)

(declare-fun res!610514 () Bool)

(declare-fun e!867338 () Bool)

(assert (=> b!1355294 (=> (not res!610514) (not e!867338))))

(assert (=> b!1355294 (= res!610514 call!91235)))

(assert (=> b!1355294 (= e!867333 e!867338)))

(declare-fun bm!91231 () Bool)

(declare-fun c!222433 () Bool)

(declare-fun call!91236 () Bool)

(assert (=> bm!91231 (= call!91236 (validRegex!1605 (ite c!222433 (reg!4034 lt!448204) (ite c!222434 (regTwo!7923 lt!448204) (regTwo!7922 lt!448204)))))))

(declare-fun d!384062 () Bool)

(declare-fun res!610513 () Bool)

(declare-fun e!867336 () Bool)

(assert (=> d!384062 (=> res!610513 e!867336)))

(assert (=> d!384062 (= res!610513 ((_ is ElementMatch!3705) lt!448204))))

(assert (=> d!384062 (= (validRegex!1605 lt!448204) e!867336)))

(declare-fun b!1355295 () Bool)

(declare-fun e!867337 () Bool)

(assert (=> b!1355295 (= e!867336 e!867337)))

(assert (=> b!1355295 (= c!222433 ((_ is Star!3705) lt!448204))))

(declare-fun b!1355296 () Bool)

(declare-fun call!91237 () Bool)

(assert (=> b!1355296 (= e!867339 call!91237)))

(declare-fun bm!91232 () Bool)

(assert (=> bm!91232 (= call!91237 call!91236)))

(declare-fun b!1355297 () Bool)

(assert (=> b!1355297 (= e!867338 call!91237)))

(declare-fun b!1355298 () Bool)

(declare-fun e!867334 () Bool)

(assert (=> b!1355298 (= e!867334 call!91236)))

(declare-fun b!1355299 () Bool)

(assert (=> b!1355299 (= e!867337 e!867333)))

(assert (=> b!1355299 (= c!222434 ((_ is Union!3705) lt!448204))))

(declare-fun b!1355300 () Bool)

(assert (=> b!1355300 (= e!867337 e!867334)))

(declare-fun res!610515 () Bool)

(assert (=> b!1355300 (= res!610515 (not (nullable!1185 (reg!4034 lt!448204))))))

(assert (=> b!1355300 (=> (not res!610515) (not e!867334))))

(assert (= (and d!384062 (not res!610513)) b!1355295))

(assert (= (and b!1355295 c!222433) b!1355300))

(assert (= (and b!1355295 (not c!222433)) b!1355299))

(assert (= (and b!1355300 res!610515) b!1355298))

(assert (= (and b!1355299 c!222434) b!1355294))

(assert (= (and b!1355299 (not c!222434)) b!1355293))

(assert (= (and b!1355294 res!610514) b!1355297))

(assert (= (and b!1355293 (not res!610516)) b!1355292))

(assert (= (and b!1355292 res!610512) b!1355296))

(assert (= (or b!1355294 b!1355292) bm!91230))

(assert (= (or b!1355297 b!1355296) bm!91232))

(assert (= (or b!1355298 bm!91232) bm!91231))

(declare-fun m!1517815 () Bool)

(assert (=> bm!91230 m!1517815))

(declare-fun m!1517817 () Bool)

(assert (=> bm!91231 m!1517817))

(declare-fun m!1517819 () Bool)

(assert (=> b!1355300 m!1517819))

(assert (=> bs!333638 d!384062))

(assert (=> b!1353677 d!383592))

(assert (=> b!1353677 d!383594))

(assert (=> b!1353677 d!383596))

(declare-fun bs!333835 () Bool)

(declare-fun d!384064 () Bool)

(assert (= bs!333835 (and d!384064 b!1353366)))

(declare-fun lambda!57202 () Int)

(assert (=> bs!333835 (= lambda!57202 lambda!57089)))

(declare-fun bs!333836 () Bool)

(assert (= bs!333836 (and d!384064 d!383374)))

(assert (=> bs!333836 (= lambda!57202 lambda!57135)))

(declare-fun bs!333837 () Bool)

(assert (= bs!333837 (and d!384064 d!383354)))

(declare-fun lambda!57203 () Int)

(assert (=> bs!333837 (not (= lambda!57203 lambda!57125))))

(declare-fun bs!333838 () Bool)

(assert (= bs!333838 (and d!384064 d!384056)))

(assert (=> bs!333838 (not (= lambda!57203 lambda!57194))))

(declare-fun bs!333839 () Bool)

(assert (= bs!333839 (and d!384064 d!384058)))

(assert (=> bs!333839 (not (= lambda!57203 lambda!57197))))

(declare-fun bs!333840 () Bool)

(assert (= bs!333840 (and d!384064 d!383358)))

(assert (=> bs!333840 (not (= lambda!57203 lambda!57132))))

(declare-fun bs!333841 () Bool)

(assert (= bs!333841 (and d!384064 d!383356)))

(assert (=> bs!333841 (not (= lambda!57203 lambda!57131))))

(assert (=> bs!333841 (= lambda!57203 lambda!57130)))

(assert (=> bs!333835 (not (= lambda!57203 lambda!57090))))

(assert (=> d!384064 (forall!3368 (map!3047 rules!2550 lambda!57202) lambda!57203)))

(declare-fun lt!448816 () Unit!19941)

(declare-fun e!867342 () Unit!19941)

(assert (=> d!384064 (= lt!448816 e!867342)))

(declare-fun c!222437 () Bool)

(assert (=> d!384064 (= c!222437 ((_ is Nil!13798) rules!2550))))

(assert (=> d!384064 (rulesValidInductive!756 thiss!19762 rules!2550)))

(assert (=> d!384064 (= (lemma!113 rules!2550 thiss!19762 rules!2550) lt!448816)))

(declare-fun b!1355305 () Bool)

(declare-fun Unit!19957 () Unit!19941)

(assert (=> b!1355305 (= e!867342 Unit!19957)))

(declare-fun b!1355306 () Bool)

(declare-fun Unit!19958 () Unit!19941)

(assert (=> b!1355306 (= e!867342 Unit!19958)))

(declare-fun lt!448817 () Unit!19941)

(assert (=> b!1355306 (= lt!448817 (lemma!113 rules!2550 thiss!19762 (t!120229 rules!2550)))))

(assert (= (and d!384064 c!222437) b!1355305))

(assert (= (and d!384064 (not c!222437)) b!1355306))

(declare-fun m!1517821 () Bool)

(assert (=> d!384064 m!1517821))

(assert (=> d!384064 m!1517821))

(declare-fun m!1517823 () Bool)

(assert (=> d!384064 m!1517823))

(assert (=> d!384064 m!1515643))

(declare-fun m!1517825 () Bool)

(assert (=> b!1355306 m!1517825))

(assert (=> d!383374 d!384064))

(declare-fun bs!333842 () Bool)

(declare-fun d!384066 () Bool)

(assert (= bs!333842 (and d!384066 d!383354)))

(declare-fun lambda!57206 () Int)

(assert (=> bs!333842 (not (= lambda!57206 lambda!57125))))

(declare-fun bs!333843 () Bool)

(assert (= bs!333843 (and d!384066 d!384056)))

(assert (=> bs!333843 (not (= lambda!57206 lambda!57194))))

(declare-fun bs!333844 () Bool)

(assert (= bs!333844 (and d!384066 d!384058)))

(assert (=> bs!333844 (not (= lambda!57206 lambda!57197))))

(declare-fun bs!333845 () Bool)

(assert (= bs!333845 (and d!384066 d!383358)))

(assert (=> bs!333845 (not (= lambda!57206 lambda!57132))))

(declare-fun bs!333846 () Bool)

(assert (= bs!333846 (and d!384066 d!383356)))

(assert (=> bs!333846 (not (= lambda!57206 lambda!57131))))

(declare-fun bs!333847 () Bool)

(assert (= bs!333847 (and d!384066 d!384064)))

(assert (=> bs!333847 (= lambda!57206 lambda!57203)))

(assert (=> bs!333846 (= lambda!57206 lambda!57130)))

(declare-fun bs!333848 () Bool)

(assert (= bs!333848 (and d!384066 b!1353366)))

(assert (=> bs!333848 (not (= lambda!57206 lambda!57090))))

(declare-fun b!1355327 () Bool)

(declare-fun e!867359 () Regex!3705)

(assert (=> b!1355327 (= e!867359 (Union!3705 (h!19200 (map!3047 rules!2550 lambda!57135)) (generalisedUnion!121 (t!120230 (map!3047 rules!2550 lambda!57135)))))))

(declare-fun b!1355328 () Bool)

(assert (=> b!1355328 (= e!867359 EmptyLang!3705)))

(declare-fun e!867360 () Bool)

(assert (=> d!384066 e!867360))

(declare-fun res!610522 () Bool)

(assert (=> d!384066 (=> (not res!610522) (not e!867360))))

(declare-fun lt!448820 () Regex!3705)

(assert (=> d!384066 (= res!610522 (validRegex!1605 lt!448820))))

(declare-fun e!867355 () Regex!3705)

(assert (=> d!384066 (= lt!448820 e!867355)))

(declare-fun c!222448 () Bool)

(declare-fun e!867357 () Bool)

(assert (=> d!384066 (= c!222448 e!867357)))

(declare-fun res!610521 () Bool)

(assert (=> d!384066 (=> (not res!610521) (not e!867357))))

(assert (=> d!384066 (= res!610521 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57135)))))

(assert (=> d!384066 (forall!3368 (map!3047 rules!2550 lambda!57135) lambda!57206)))

(assert (=> d!384066 (= (generalisedUnion!121 (map!3047 rules!2550 lambda!57135)) lt!448820)))

(declare-fun e!867358 () Bool)

(declare-fun b!1355329 () Bool)

(assert (=> b!1355329 (= e!867358 (= lt!448820 (head!2421 (map!3047 rules!2550 lambda!57135))))))

(declare-fun b!1355330 () Bool)

(assert (=> b!1355330 (= e!867355 (h!19200 (map!3047 rules!2550 lambda!57135)))))

(declare-fun b!1355331 () Bool)

(declare-fun e!867356 () Bool)

(assert (=> b!1355331 (= e!867360 e!867356)))

(declare-fun c!222449 () Bool)

(declare-fun isEmpty!8269 (List!13865) Bool)

(assert (=> b!1355331 (= c!222449 (isEmpty!8269 (map!3047 rules!2550 lambda!57135)))))

(declare-fun b!1355332 () Bool)

(declare-fun isEmptyLang!37 (Regex!3705) Bool)

(assert (=> b!1355332 (= e!867356 (isEmptyLang!37 lt!448820))))

(declare-fun b!1355333 () Bool)

(declare-fun isUnion!37 (Regex!3705) Bool)

(assert (=> b!1355333 (= e!867358 (isUnion!37 lt!448820))))

(declare-fun b!1355334 () Bool)

(assert (=> b!1355334 (= e!867355 e!867359)))

(declare-fun c!222446 () Bool)

(assert (=> b!1355334 (= c!222446 ((_ is Cons!13799) (map!3047 rules!2550 lambda!57135)))))

(declare-fun b!1355335 () Bool)

(assert (=> b!1355335 (= e!867356 e!867358)))

(declare-fun c!222447 () Bool)

(declare-fun tail!1956 (List!13865) List!13865)

(assert (=> b!1355335 (= c!222447 (isEmpty!8269 (tail!1956 (map!3047 rules!2550 lambda!57135))))))

(declare-fun b!1355336 () Bool)

(assert (=> b!1355336 (= e!867357 (isEmpty!8269 (t!120230 (map!3047 rules!2550 lambda!57135))))))

(assert (= (and d!384066 res!610521) b!1355336))

(assert (= (and d!384066 c!222448) b!1355330))

(assert (= (and d!384066 (not c!222448)) b!1355334))

(assert (= (and b!1355334 c!222446) b!1355327))

(assert (= (and b!1355334 (not c!222446)) b!1355328))

(assert (= (and d!384066 res!610522) b!1355331))

(assert (= (and b!1355331 c!222449) b!1355332))

(assert (= (and b!1355331 (not c!222449)) b!1355335))

(assert (= (and b!1355335 c!222447) b!1355329))

(assert (= (and b!1355335 (not c!222447)) b!1355333))

(declare-fun m!1517827 () Bool)

(assert (=> b!1355327 m!1517827))

(assert (=> b!1355329 m!1515921))

(declare-fun m!1517829 () Bool)

(assert (=> b!1355329 m!1517829))

(assert (=> b!1355335 m!1515921))

(declare-fun m!1517831 () Bool)

(assert (=> b!1355335 m!1517831))

(assert (=> b!1355335 m!1517831))

(declare-fun m!1517833 () Bool)

(assert (=> b!1355335 m!1517833))

(declare-fun m!1517835 () Bool)

(assert (=> d!384066 m!1517835))

(assert (=> d!384066 m!1515921))

(declare-fun m!1517837 () Bool)

(assert (=> d!384066 m!1517837))

(declare-fun m!1517839 () Bool)

(assert (=> b!1355336 m!1517839))

(declare-fun m!1517841 () Bool)

(assert (=> b!1355333 m!1517841))

(declare-fun m!1517843 () Bool)

(assert (=> b!1355332 m!1517843))

(assert (=> b!1355331 m!1515921))

(declare-fun m!1517845 () Bool)

(assert (=> b!1355331 m!1517845))

(assert (=> d!383374 d!384066))

(declare-fun d!384068 () Bool)

(declare-fun lt!448821 () List!13865)

(assert (=> d!384068 (= (size!11281 lt!448821) (size!11282 rules!2550))))

(declare-fun e!867361 () List!13865)

(assert (=> d!384068 (= lt!448821 e!867361)))

(declare-fun c!222450 () Bool)

(assert (=> d!384068 (= c!222450 ((_ is Nil!13798) rules!2550))))

(assert (=> d!384068 (= (map!3047 rules!2550 lambda!57135) lt!448821)))

(declare-fun b!1355337 () Bool)

(assert (=> b!1355337 (= e!867361 Nil!13799)))

(declare-fun b!1355338 () Bool)

(assert (=> b!1355338 (= e!867361 ($colon$colon!187 (map!3047 (t!120229 rules!2550) lambda!57135) (dynLambda!6161 lambda!57135 (h!19199 rules!2550))))))

(assert (= (and d!384068 c!222450) b!1355337))

(assert (= (and d!384068 (not c!222450)) b!1355338))

(declare-fun b_lambda!40721 () Bool)

(assert (=> (not b_lambda!40721) (not b!1355338)))

(declare-fun m!1517847 () Bool)

(assert (=> d!384068 m!1517847))

(assert (=> d!384068 m!1515875))

(declare-fun m!1517849 () Bool)

(assert (=> b!1355338 m!1517849))

(declare-fun m!1517851 () Bool)

(assert (=> b!1355338 m!1517851))

(assert (=> b!1355338 m!1517849))

(assert (=> b!1355338 m!1517851))

(declare-fun m!1517853 () Bool)

(assert (=> b!1355338 m!1517853))

(assert (=> d!383374 d!384068))

(declare-fun d!384070 () Bool)

(declare-fun lostCauseFct!126 (Regex!3705) Bool)

(assert (=> d!384070 (= (lostCause!319 lt!447993) (lostCauseFct!126 lt!447993))))

(declare-fun bs!333849 () Bool)

(assert (= bs!333849 d!384070))

(declare-fun m!1517855 () Bool)

(assert (=> bs!333849 m!1517855))

(assert (=> b!1353969 d!384070))

(declare-fun bs!333850 () Bool)

(declare-fun d!384072 () Bool)

(assert (= bs!333850 (and d!384072 d!383902)))

(declare-fun lambda!57207 () Int)

(assert (=> bs!333850 (= (and (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) (= (toValue!3642 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t2!34))))) (= lambda!57207 lambda!57181))))

(declare-fun bs!333851 () Bool)

(assert (= bs!333851 (and d!384072 d!383958)))

(assert (=> bs!333851 (= (and (= (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toChars!3501 (transformation!2391 (h!19199 rules!2550)))) (= (toValue!3642 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (h!19199 rules!2550))))) (= lambda!57207 lambda!57185))))

(assert (=> d!384072 true))

(assert (=> d!384072 (< (dynLambda!6170 order!8335 (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) (dynLambda!6171 order!8337 lambda!57207))))

(assert (=> d!384072 true))

(assert (=> d!384072 (< (dynLambda!6167 order!8331 (toValue!3642 (transformation!2391 (rule!4138 t1!34)))) (dynLambda!6171 order!8337 lambda!57207))))

(assert (=> d!384072 (= (semiInverseModEq!914 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (toValue!3642 (transformation!2391 (rule!4138 t1!34)))) (Forall!531 lambda!57207))))

(declare-fun bs!333852 () Bool)

(assert (= bs!333852 d!384072))

(declare-fun m!1517857 () Bool)

(assert (=> bs!333852 m!1517857))

(assert (=> d!383348 d!384072))

(declare-fun d!384074 () Bool)

(assert (=> d!384074 (= (inv!15 (value!77776 t2!34)) (= (charsToBigInt!0 (text!17816 (value!77776 t2!34)) 0) (value!77771 (value!77776 t2!34))))))

(declare-fun bs!333853 () Bool)

(assert (= bs!333853 d!384074))

(declare-fun m!1517859 () Bool)

(assert (=> bs!333853 m!1517859))

(assert (=> b!1353780 d!384074))

(declare-fun d!384076 () Bool)

(declare-fun lt!448822 () Int)

(assert (=> d!384076 (= lt!448822 (size!11280 (list!5279 (_1!7572 lt!448093))))))

(assert (=> d!384076 (= lt!448822 (size!11284 (c!221994 (_1!7572 lt!448093))))))

(assert (=> d!384076 (= (size!11278 (_1!7572 lt!448093)) lt!448822)))

(declare-fun bs!333854 () Bool)

(assert (= bs!333854 d!384076))

(assert (=> bs!333854 m!1517539))

(assert (=> bs!333854 m!1517539))

(declare-fun m!1517861 () Bool)

(assert (=> bs!333854 m!1517861))

(declare-fun m!1517863 () Bool)

(assert (=> bs!333854 m!1517863))

(assert (=> d!383208 d!384076))

(declare-fun d!384078 () Bool)

(assert (=> d!384078 (= (list!5279 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))))) (list!5283 (c!221994 (_1!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))))

(declare-fun bs!333855 () Bool)

(assert (= bs!333855 d!384078))

(declare-fun m!1517865 () Bool)

(assert (=> bs!333855 m!1517865))

(assert (=> d!383208 d!384078))

(declare-fun d!384080 () Bool)

(declare-fun lt!448823 () BalanceConc!9028)

(assert (=> d!384080 (= (list!5278 lt!448823) (printList!594 thiss!19762 (list!5279 (singletonSeq!1008 t2!34))))))

(assert (=> d!384080 (= lt!448823 (printTailRec!576 thiss!19762 (singletonSeq!1008 t2!34) 0 (BalanceConc!9029 Empty!4544)))))

(assert (=> d!384080 (= (print!852 thiss!19762 (singletonSeq!1008 t2!34)) lt!448823)))

(declare-fun bs!333856 () Bool)

(assert (= bs!333856 d!384080))

(declare-fun m!1517867 () Bool)

(assert (=> bs!333856 m!1517867))

(assert (=> bs!333856 m!1515525))

(assert (=> bs!333856 m!1515527))

(assert (=> bs!333856 m!1515527))

(declare-fun m!1517869 () Bool)

(assert (=> bs!333856 m!1517869))

(assert (=> bs!333856 m!1515525))

(declare-fun m!1517871 () Bool)

(assert (=> bs!333856 m!1517871))

(assert (=> d!383208 d!384080))

(declare-fun d!384082 () Bool)

(declare-fun e!867362 () Bool)

(assert (=> d!384082 e!867362))

(declare-fun res!610523 () Bool)

(assert (=> d!384082 (=> (not res!610523) (not e!867362))))

(declare-fun lt!448824 () BalanceConc!9030)

(assert (=> d!384082 (= res!610523 (= (list!5279 lt!448824) (Cons!13800 t2!34 Nil!13800)))))

(assert (=> d!384082 (= lt!448824 (singleton!430 t2!34))))

(assert (=> d!384082 (= (singletonSeq!1008 t2!34) lt!448824)))

(declare-fun b!1355339 () Bool)

(assert (=> b!1355339 (= e!867362 (isBalanced!1324 (c!221994 lt!448824)))))

(assert (= (and d!384082 res!610523) b!1355339))

(declare-fun m!1517873 () Bool)

(assert (=> d!384082 m!1517873))

(declare-fun m!1517875 () Bool)

(assert (=> d!384082 m!1517875))

(declare-fun m!1517877 () Bool)

(assert (=> b!1355339 m!1517877))

(assert (=> d!383208 d!384082))

(assert (=> d!383208 d!383320))

(declare-fun lt!448825 () tuple2!13372)

(declare-fun b!1355340 () Bool)

(declare-fun e!867363 () Bool)

(assert (=> b!1355340 (= e!867363 (= (list!5278 (_2!7572 lt!448825)) (_2!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))))

(declare-fun b!1355341 () Bool)

(declare-fun e!867365 () Bool)

(declare-fun e!867364 () Bool)

(assert (=> b!1355341 (= e!867365 e!867364)))

(declare-fun res!610525 () Bool)

(assert (=> b!1355341 (= res!610525 (< (size!11270 (_2!7572 lt!448825)) (size!11270 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))

(assert (=> b!1355341 (=> (not res!610525) (not e!867364))))

(declare-fun b!1355342 () Bool)

(assert (=> b!1355342 (= e!867365 (= (_2!7572 lt!448825) (print!852 thiss!19762 (singletonSeq!1008 t2!34))))))

(declare-fun b!1355343 () Bool)

(declare-fun res!610524 () Bool)

(assert (=> b!1355343 (=> (not res!610524) (not e!867363))))

(assert (=> b!1355343 (= res!610524 (= (list!5279 (_1!7572 lt!448825)) (_1!7573 (lexList!604 thiss!19762 rules!2550 (list!5278 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))))

(declare-fun b!1355344 () Bool)

(assert (=> b!1355344 (= e!867364 (not (isEmpty!8265 (_1!7572 lt!448825))))))

(declare-fun d!384084 () Bool)

(assert (=> d!384084 e!867363))

(declare-fun res!610526 () Bool)

(assert (=> d!384084 (=> (not res!610526) (not e!867363))))

(assert (=> d!384084 (= res!610526 e!867365)))

(declare-fun c!222451 () Bool)

(assert (=> d!384084 (= c!222451 (> (size!11278 (_1!7572 lt!448825)) 0))))

(assert (=> d!384084 (= lt!448825 (lexTailRecV2!399 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34)) (BalanceConc!9029 Empty!4544) (print!852 thiss!19762 (singletonSeq!1008 t2!34)) (BalanceConc!9031 Empty!4545)))))

(assert (=> d!384084 (= (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))) lt!448825)))

(assert (= (and d!384084 c!222451) b!1355341))

(assert (= (and d!384084 (not c!222451)) b!1355342))

(assert (= (and b!1355341 res!610525) b!1355344))

(assert (= (and d!384084 res!610526) b!1355343))

(assert (= (and b!1355343 res!610524) b!1355340))

(declare-fun m!1517879 () Bool)

(assert (=> d!384084 m!1517879))

(assert (=> d!384084 m!1515529))

(assert (=> d!384084 m!1515529))

(declare-fun m!1517881 () Bool)

(assert (=> d!384084 m!1517881))

(declare-fun m!1517883 () Bool)

(assert (=> b!1355344 m!1517883))

(declare-fun m!1517885 () Bool)

(assert (=> b!1355340 m!1517885))

(assert (=> b!1355340 m!1515529))

(declare-fun m!1517887 () Bool)

(assert (=> b!1355340 m!1517887))

(assert (=> b!1355340 m!1517887))

(declare-fun m!1517889 () Bool)

(assert (=> b!1355340 m!1517889))

(declare-fun m!1517891 () Bool)

(assert (=> b!1355343 m!1517891))

(assert (=> b!1355343 m!1515529))

(assert (=> b!1355343 m!1517887))

(assert (=> b!1355343 m!1517887))

(assert (=> b!1355343 m!1517889))

(declare-fun m!1517893 () Bool)

(assert (=> b!1355341 m!1517893))

(assert (=> b!1355341 m!1515529))

(declare-fun m!1517895 () Bool)

(assert (=> b!1355341 m!1517895))

(assert (=> d!383208 d!384084))

(declare-fun d!384086 () Bool)

(assert (=> d!384086 (= (list!5279 (singletonSeq!1008 t2!34)) (list!5283 (c!221994 (singletonSeq!1008 t2!34))))))

(declare-fun bs!333857 () Bool)

(assert (= bs!333857 d!384086))

(declare-fun m!1517897 () Bool)

(assert (=> bs!333857 m!1517897))

(assert (=> d!383208 d!384086))

(assert (=> b!1353828 d!383710))

(assert (=> b!1353828 d!383712))

(declare-fun d!384088 () Bool)

(declare-fun lt!448826 () Bool)

(assert (=> d!384088 (= lt!448826 (select (content!1983 (t!120228 lt!447991)) lt!447989))))

(declare-fun e!867366 () Bool)

(assert (=> d!384088 (= lt!448826 e!867366)))

(declare-fun res!610528 () Bool)

(assert (=> d!384088 (=> (not res!610528) (not e!867366))))

(assert (=> d!384088 (= res!610528 ((_ is Cons!13797) (t!120228 lt!447991)))))

(assert (=> d!384088 (= (contains!2547 (t!120228 lt!447991) lt!447989) lt!448826)))

(declare-fun b!1355345 () Bool)

(declare-fun e!867367 () Bool)

(assert (=> b!1355345 (= e!867366 e!867367)))

(declare-fun res!610527 () Bool)

(assert (=> b!1355345 (=> res!610527 e!867367)))

(assert (=> b!1355345 (= res!610527 (= (h!19198 (t!120228 lt!447991)) lt!447989))))

(declare-fun b!1355346 () Bool)

(assert (=> b!1355346 (= e!867367 (contains!2547 (t!120228 (t!120228 lt!447991)) lt!447989))))

(assert (= (and d!384088 res!610528) b!1355345))

(assert (= (and b!1355345 (not res!610527)) b!1355346))

(assert (=> d!384088 m!1517377))

(declare-fun m!1517899 () Bool)

(assert (=> d!384088 m!1517899))

(declare-fun m!1517901 () Bool)

(assert (=> b!1355346 m!1517901))

(assert (=> b!1353923 d!384088))

(declare-fun d!384090 () Bool)

(declare-fun lt!448827 () Bool)

(assert (=> d!384090 (= lt!448827 (isEmpty!8261 (list!5278 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))))

(assert (=> d!384090 (= lt!448827 (isEmpty!8262 (c!221992 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34)))))))))

(assert (=> d!384090 (= (isEmpty!8255 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t1!34))))) lt!448827)))

(declare-fun bs!333858 () Bool)

(assert (= bs!333858 d!384090))

(declare-fun m!1517903 () Bool)

(assert (=> bs!333858 m!1517903))

(assert (=> bs!333858 m!1517903))

(declare-fun m!1517905 () Bool)

(assert (=> bs!333858 m!1517905))

(declare-fun m!1517907 () Bool)

(assert (=> bs!333858 m!1517907))

(assert (=> b!1353763 d!384090))

(assert (=> b!1353763 d!383986))

(assert (=> b!1353763 d!383322))

(assert (=> b!1353763 d!383336))

(assert (=> b!1353824 d!383886))

(declare-fun d!384092 () Bool)

(declare-fun c!222452 () Bool)

(assert (=> d!384092 (= c!222452 ((_ is Node!4544) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(declare-fun e!867368 () Bool)

(assert (=> d!384092 (= (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))) e!867368)))

(declare-fun b!1355347 () Bool)

(assert (=> b!1355347 (= e!867368 (inv!18145 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(declare-fun b!1355348 () Bool)

(declare-fun e!867369 () Bool)

(assert (=> b!1355348 (= e!867368 e!867369)))

(declare-fun res!610529 () Bool)

(assert (=> b!1355348 (= res!610529 (not ((_ is Leaf!6936) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))))))

(assert (=> b!1355348 (=> res!610529 e!867369)))

(declare-fun b!1355349 () Bool)

(assert (=> b!1355349 (= e!867369 (inv!18146 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))))))

(assert (= (and d!384092 c!222452) b!1355347))

(assert (= (and d!384092 (not c!222452)) b!1355348))

(assert (= (and b!1355348 (not res!610529)) b!1355349))

(declare-fun m!1517909 () Bool)

(assert (=> b!1355347 m!1517909))

(declare-fun m!1517911 () Bool)

(assert (=> b!1355349 m!1517911))

(assert (=> b!1353442 d!384092))

(declare-fun d!384094 () Bool)

(assert (=> d!384094 (= (isEmpty!8263 (_1!7573 lt!448153)) ((_ is Nil!13800) (_1!7573 lt!448153)))))

(assert (=> b!1353740 d!384094))

(declare-fun d!384096 () Bool)

(declare-fun lt!448828 () Bool)

(assert (=> d!384096 (= lt!448828 (isEmpty!8261 (list!5278 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))))

(assert (=> d!384096 (= lt!448828 (isEmpty!8262 (c!221992 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34)))))))))

(assert (=> d!384096 (= (isEmpty!8255 (_2!7572 (lex!913 thiss!19762 rules!2550 (print!852 thiss!19762 (singletonSeq!1008 t2!34))))) lt!448828)))

(declare-fun bs!333859 () Bool)

(assert (= bs!333859 d!384096))

(declare-fun m!1517913 () Bool)

(assert (=> bs!333859 m!1517913))

(assert (=> bs!333859 m!1517913))

(declare-fun m!1517915 () Bool)

(assert (=> bs!333859 m!1517915))

(declare-fun m!1517917 () Bool)

(assert (=> bs!333859 m!1517917))

(assert (=> b!1353622 d!384096))

(assert (=> b!1353622 d!384084))

(assert (=> b!1353622 d!384080))

(assert (=> b!1353622 d!384082))

(declare-fun tp!391177 () Bool)

(declare-fun e!867375 () Bool)

(declare-fun tp!391179 () Bool)

(declare-fun b!1355358 () Bool)

(assert (=> b!1355358 (= e!867375 (and (inv!18143 (left!11821 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))) tp!391179 (inv!18143 (right!12151 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))) tp!391177))))

(declare-fun b!1355360 () Bool)

(declare-fun e!867374 () Bool)

(declare-fun tp!391178 () Bool)

(assert (=> b!1355360 (= e!867374 tp!391178)))

(declare-fun b!1355359 () Bool)

(declare-fun inv!18150 (IArray!9093) Bool)

(assert (=> b!1355359 (= e!867375 (and (inv!18150 (xs!7267 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))) e!867374))))

(assert (=> b!1353698 (= tp!390982 (and (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34)))) e!867375))))

(assert (= (and b!1353698 ((_ is Node!4544) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))) b!1355358))

(assert (= b!1355359 b!1355360))

(assert (= (and b!1353698 ((_ is Leaf!6936) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t1!34))) (value!77776 t1!34))))) b!1355359))

(declare-fun m!1517919 () Bool)

(assert (=> b!1355358 m!1517919))

(declare-fun m!1517921 () Bool)

(assert (=> b!1355358 m!1517921))

(declare-fun m!1517923 () Bool)

(assert (=> b!1355359 m!1517923))

(assert (=> b!1353698 m!1515647))

(declare-fun b!1355361 () Bool)

(declare-fun e!867376 () Bool)

(declare-fun tp!391180 () Bool)

(assert (=> b!1355361 (= e!867376 (and tp_is_empty!6719 tp!391180))))

(assert (=> b!1353994 (= tp!391039 e!867376)))

(assert (= (and b!1353994 ((_ is Cons!13797) (t!120228 (originalCharacters!3253 t2!34)))) b!1355361))

(declare-fun e!867377 () Bool)

(assert (=> b!1354014 (= tp!391064 e!867377)))

(declare-fun b!1355363 () Bool)

(declare-fun tp!391185 () Bool)

(declare-fun tp!391183 () Bool)

(assert (=> b!1355363 (= e!867377 (and tp!391185 tp!391183))))

(declare-fun b!1355362 () Bool)

(assert (=> b!1355362 (= e!867377 tp_is_empty!6719)))

(declare-fun b!1355365 () Bool)

(declare-fun tp!391181 () Bool)

(declare-fun tp!391182 () Bool)

(assert (=> b!1355365 (= e!867377 (and tp!391181 tp!391182))))

(declare-fun b!1355364 () Bool)

(declare-fun tp!391184 () Bool)

(assert (=> b!1355364 (= e!867377 tp!391184)))

(assert (= (and b!1354014 ((_ is ElementMatch!3705) (regOne!7922 (regex!2391 (h!19199 rules!2550))))) b!1355362))

(assert (= (and b!1354014 ((_ is Concat!6187) (regOne!7922 (regex!2391 (h!19199 rules!2550))))) b!1355363))

(assert (= (and b!1354014 ((_ is Star!3705) (regOne!7922 (regex!2391 (h!19199 rules!2550))))) b!1355364))

(assert (= (and b!1354014 ((_ is Union!3705) (regOne!7922 (regex!2391 (h!19199 rules!2550))))) b!1355365))

(declare-fun e!867378 () Bool)

(assert (=> b!1354014 (= tp!391062 e!867378)))

(declare-fun b!1355367 () Bool)

(declare-fun tp!391190 () Bool)

(declare-fun tp!391188 () Bool)

(assert (=> b!1355367 (= e!867378 (and tp!391190 tp!391188))))

(declare-fun b!1355366 () Bool)

(assert (=> b!1355366 (= e!867378 tp_is_empty!6719)))

(declare-fun b!1355369 () Bool)

(declare-fun tp!391186 () Bool)

(declare-fun tp!391187 () Bool)

(assert (=> b!1355369 (= e!867378 (and tp!391186 tp!391187))))

(declare-fun b!1355368 () Bool)

(declare-fun tp!391189 () Bool)

(assert (=> b!1355368 (= e!867378 tp!391189)))

(assert (= (and b!1354014 ((_ is ElementMatch!3705) (regTwo!7922 (regex!2391 (h!19199 rules!2550))))) b!1355366))

(assert (= (and b!1354014 ((_ is Concat!6187) (regTwo!7922 (regex!2391 (h!19199 rules!2550))))) b!1355367))

(assert (= (and b!1354014 ((_ is Star!3705) (regTwo!7922 (regex!2391 (h!19199 rules!2550))))) b!1355368))

(assert (= (and b!1354014 ((_ is Union!3705) (regTwo!7922 (regex!2391 (h!19199 rules!2550))))) b!1355369))

(declare-fun b!1355370 () Bool)

(declare-fun e!867379 () Bool)

(declare-fun tp!391191 () Bool)

(assert (=> b!1355370 (= e!867379 (and tp_is_empty!6719 tp!391191))))

(assert (=> b!1353993 (= tp!391038 e!867379)))

(assert (= (and b!1353993 ((_ is Cons!13797) (t!120228 (originalCharacters!3253 t1!34)))) b!1355370))

(declare-fun e!867380 () Bool)

(assert (=> b!1354008 (= tp!391050 e!867380)))

(declare-fun b!1355372 () Bool)

(declare-fun tp!391196 () Bool)

(declare-fun tp!391194 () Bool)

(assert (=> b!1355372 (= e!867380 (and tp!391196 tp!391194))))

(declare-fun b!1355371 () Bool)

(assert (=> b!1355371 (= e!867380 tp_is_empty!6719)))

(declare-fun b!1355374 () Bool)

(declare-fun tp!391192 () Bool)

(declare-fun tp!391193 () Bool)

(assert (=> b!1355374 (= e!867380 (and tp!391192 tp!391193))))

(declare-fun b!1355373 () Bool)

(declare-fun tp!391195 () Bool)

(assert (=> b!1355373 (= e!867380 tp!391195)))

(assert (= (and b!1354008 ((_ is ElementMatch!3705) (regOne!7923 (regex!2391 (rule!4138 t1!34))))) b!1355371))

(assert (= (and b!1354008 ((_ is Concat!6187) (regOne!7923 (regex!2391 (rule!4138 t1!34))))) b!1355372))

(assert (= (and b!1354008 ((_ is Star!3705) (regOne!7923 (regex!2391 (rule!4138 t1!34))))) b!1355373))

(assert (= (and b!1354008 ((_ is Union!3705) (regOne!7923 (regex!2391 (rule!4138 t1!34))))) b!1355374))

(declare-fun e!867381 () Bool)

(assert (=> b!1354008 (= tp!391051 e!867381)))

(declare-fun b!1355376 () Bool)

(declare-fun tp!391201 () Bool)

(declare-fun tp!391199 () Bool)

(assert (=> b!1355376 (= e!867381 (and tp!391201 tp!391199))))

(declare-fun b!1355375 () Bool)

(assert (=> b!1355375 (= e!867381 tp_is_empty!6719)))

(declare-fun b!1355378 () Bool)

(declare-fun tp!391197 () Bool)

(declare-fun tp!391198 () Bool)

(assert (=> b!1355378 (= e!867381 (and tp!391197 tp!391198))))

(declare-fun b!1355377 () Bool)

(declare-fun tp!391200 () Bool)

(assert (=> b!1355377 (= e!867381 tp!391200)))

(assert (= (and b!1354008 ((_ is ElementMatch!3705) (regTwo!7923 (regex!2391 (rule!4138 t1!34))))) b!1355375))

(assert (= (and b!1354008 ((_ is Concat!6187) (regTwo!7923 (regex!2391 (rule!4138 t1!34))))) b!1355376))

(assert (= (and b!1354008 ((_ is Star!3705) (regTwo!7923 (regex!2391 (rule!4138 t1!34))))) b!1355377))

(assert (= (and b!1354008 ((_ is Union!3705) (regTwo!7923 (regex!2391 (rule!4138 t1!34))))) b!1355378))

(declare-fun e!867382 () Bool)

(assert (=> b!1353987 (= tp!391034 e!867382)))

(declare-fun b!1355380 () Bool)

(declare-fun tp!391206 () Bool)

(declare-fun tp!391204 () Bool)

(assert (=> b!1355380 (= e!867382 (and tp!391206 tp!391204))))

(declare-fun b!1355379 () Bool)

(assert (=> b!1355379 (= e!867382 tp_is_empty!6719)))

(declare-fun b!1355382 () Bool)

(declare-fun tp!391202 () Bool)

(declare-fun tp!391203 () Bool)

(assert (=> b!1355382 (= e!867382 (and tp!391202 tp!391203))))

(declare-fun b!1355381 () Bool)

(declare-fun tp!391205 () Bool)

(assert (=> b!1355381 (= e!867382 tp!391205)))

(assert (= (and b!1353987 ((_ is ElementMatch!3705) (regex!2391 (h!19199 (t!120229 rules!2550))))) b!1355379))

(assert (= (and b!1353987 ((_ is Concat!6187) (regex!2391 (h!19199 (t!120229 rules!2550))))) b!1355380))

(assert (= (and b!1353987 ((_ is Star!3705) (regex!2391 (h!19199 (t!120229 rules!2550))))) b!1355381))

(assert (= (and b!1353987 ((_ is Union!3705) (regex!2391 (h!19199 (t!120229 rules!2550))))) b!1355382))

(declare-fun e!867383 () Bool)

(assert (=> b!1354010 (= tp!391059 e!867383)))

(declare-fun b!1355384 () Bool)

(declare-fun tp!391211 () Bool)

(declare-fun tp!391209 () Bool)

(assert (=> b!1355384 (= e!867383 (and tp!391211 tp!391209))))

(declare-fun b!1355383 () Bool)

(assert (=> b!1355383 (= e!867383 tp_is_empty!6719)))

(declare-fun b!1355386 () Bool)

(declare-fun tp!391207 () Bool)

(declare-fun tp!391208 () Bool)

(assert (=> b!1355386 (= e!867383 (and tp!391207 tp!391208))))

(declare-fun b!1355385 () Bool)

(declare-fun tp!391210 () Bool)

(assert (=> b!1355385 (= e!867383 tp!391210)))

(assert (= (and b!1354010 ((_ is ElementMatch!3705) (regOne!7922 (regex!2391 (rule!4138 t2!34))))) b!1355383))

(assert (= (and b!1354010 ((_ is Concat!6187) (regOne!7922 (regex!2391 (rule!4138 t2!34))))) b!1355384))

(assert (= (and b!1354010 ((_ is Star!3705) (regOne!7922 (regex!2391 (rule!4138 t2!34))))) b!1355385))

(assert (= (and b!1354010 ((_ is Union!3705) (regOne!7922 (regex!2391 (rule!4138 t2!34))))) b!1355386))

(declare-fun e!867384 () Bool)

(assert (=> b!1354010 (= tp!391057 e!867384)))

(declare-fun b!1355388 () Bool)

(declare-fun tp!391216 () Bool)

(declare-fun tp!391214 () Bool)

(assert (=> b!1355388 (= e!867384 (and tp!391216 tp!391214))))

(declare-fun b!1355387 () Bool)

(assert (=> b!1355387 (= e!867384 tp_is_empty!6719)))

(declare-fun b!1355390 () Bool)

(declare-fun tp!391212 () Bool)

(declare-fun tp!391213 () Bool)

(assert (=> b!1355390 (= e!867384 (and tp!391212 tp!391213))))

(declare-fun b!1355389 () Bool)

(declare-fun tp!391215 () Bool)

(assert (=> b!1355389 (= e!867384 tp!391215)))

(assert (= (and b!1354010 ((_ is ElementMatch!3705) (regTwo!7922 (regex!2391 (rule!4138 t2!34))))) b!1355387))

(assert (= (and b!1354010 ((_ is Concat!6187) (regTwo!7922 (regex!2391 (rule!4138 t2!34))))) b!1355388))

(assert (= (and b!1354010 ((_ is Star!3705) (regTwo!7922 (regex!2391 (rule!4138 t2!34))))) b!1355389))

(assert (= (and b!1354010 ((_ is Union!3705) (regTwo!7922 (regex!2391 (rule!4138 t2!34))))) b!1355390))

(declare-fun e!867385 () Bool)

(assert (=> b!1354006 (= tp!391054 e!867385)))

(declare-fun b!1355392 () Bool)

(declare-fun tp!391221 () Bool)

(declare-fun tp!391219 () Bool)

(assert (=> b!1355392 (= e!867385 (and tp!391221 tp!391219))))

(declare-fun b!1355391 () Bool)

(assert (=> b!1355391 (= e!867385 tp_is_empty!6719)))

(declare-fun b!1355394 () Bool)

(declare-fun tp!391217 () Bool)

(declare-fun tp!391218 () Bool)

(assert (=> b!1355394 (= e!867385 (and tp!391217 tp!391218))))

(declare-fun b!1355393 () Bool)

(declare-fun tp!391220 () Bool)

(assert (=> b!1355393 (= e!867385 tp!391220)))

(assert (= (and b!1354006 ((_ is ElementMatch!3705) (regOne!7922 (regex!2391 (rule!4138 t1!34))))) b!1355391))

(assert (= (and b!1354006 ((_ is Concat!6187) (regOne!7922 (regex!2391 (rule!4138 t1!34))))) b!1355392))

(assert (= (and b!1354006 ((_ is Star!3705) (regOne!7922 (regex!2391 (rule!4138 t1!34))))) b!1355393))

(assert (= (and b!1354006 ((_ is Union!3705) (regOne!7922 (regex!2391 (rule!4138 t1!34))))) b!1355394))

(declare-fun e!867386 () Bool)

(assert (=> b!1354006 (= tp!391052 e!867386)))

(declare-fun b!1355396 () Bool)

(declare-fun tp!391226 () Bool)

(declare-fun tp!391224 () Bool)

(assert (=> b!1355396 (= e!867386 (and tp!391226 tp!391224))))

(declare-fun b!1355395 () Bool)

(assert (=> b!1355395 (= e!867386 tp_is_empty!6719)))

(declare-fun b!1355398 () Bool)

(declare-fun tp!391222 () Bool)

(declare-fun tp!391223 () Bool)

(assert (=> b!1355398 (= e!867386 (and tp!391222 tp!391223))))

(declare-fun b!1355397 () Bool)

(declare-fun tp!391225 () Bool)

(assert (=> b!1355397 (= e!867386 tp!391225)))

(assert (= (and b!1354006 ((_ is ElementMatch!3705) (regTwo!7922 (regex!2391 (rule!4138 t1!34))))) b!1355395))

(assert (= (and b!1354006 ((_ is Concat!6187) (regTwo!7922 (regex!2391 (rule!4138 t1!34))))) b!1355396))

(assert (= (and b!1354006 ((_ is Star!3705) (regTwo!7922 (regex!2391 (rule!4138 t1!34))))) b!1355397))

(assert (= (and b!1354006 ((_ is Union!3705) (regTwo!7922 (regex!2391 (rule!4138 t1!34))))) b!1355398))

(declare-fun e!867387 () Bool)

(assert (=> b!1354015 (= tp!391063 e!867387)))

(declare-fun b!1355400 () Bool)

(declare-fun tp!391231 () Bool)

(declare-fun tp!391229 () Bool)

(assert (=> b!1355400 (= e!867387 (and tp!391231 tp!391229))))

(declare-fun b!1355399 () Bool)

(assert (=> b!1355399 (= e!867387 tp_is_empty!6719)))

(declare-fun b!1355402 () Bool)

(declare-fun tp!391227 () Bool)

(declare-fun tp!391228 () Bool)

(assert (=> b!1355402 (= e!867387 (and tp!391227 tp!391228))))

(declare-fun b!1355401 () Bool)

(declare-fun tp!391230 () Bool)

(assert (=> b!1355401 (= e!867387 tp!391230)))

(assert (= (and b!1354015 ((_ is ElementMatch!3705) (reg!4034 (regex!2391 (h!19199 rules!2550))))) b!1355399))

(assert (= (and b!1354015 ((_ is Concat!6187) (reg!4034 (regex!2391 (h!19199 rules!2550))))) b!1355400))

(assert (= (and b!1354015 ((_ is Star!3705) (reg!4034 (regex!2391 (h!19199 rules!2550))))) b!1355401))

(assert (= (and b!1354015 ((_ is Union!3705) (reg!4034 (regex!2391 (h!19199 rules!2550))))) b!1355402))

(declare-fun e!867388 () Bool)

(assert (=> b!1354016 (= tp!391060 e!867388)))

(declare-fun b!1355404 () Bool)

(declare-fun tp!391236 () Bool)

(declare-fun tp!391234 () Bool)

(assert (=> b!1355404 (= e!867388 (and tp!391236 tp!391234))))

(declare-fun b!1355403 () Bool)

(assert (=> b!1355403 (= e!867388 tp_is_empty!6719)))

(declare-fun b!1355406 () Bool)

(declare-fun tp!391232 () Bool)

(declare-fun tp!391233 () Bool)

(assert (=> b!1355406 (= e!867388 (and tp!391232 tp!391233))))

(declare-fun b!1355405 () Bool)

(declare-fun tp!391235 () Bool)

(assert (=> b!1355405 (= e!867388 tp!391235)))

(assert (= (and b!1354016 ((_ is ElementMatch!3705) (regOne!7923 (regex!2391 (h!19199 rules!2550))))) b!1355403))

(assert (= (and b!1354016 ((_ is Concat!6187) (regOne!7923 (regex!2391 (h!19199 rules!2550))))) b!1355404))

(assert (= (and b!1354016 ((_ is Star!3705) (regOne!7923 (regex!2391 (h!19199 rules!2550))))) b!1355405))

(assert (= (and b!1354016 ((_ is Union!3705) (regOne!7923 (regex!2391 (h!19199 rules!2550))))) b!1355406))

(declare-fun e!867389 () Bool)

(assert (=> b!1354016 (= tp!391061 e!867389)))

(declare-fun b!1355408 () Bool)

(declare-fun tp!391241 () Bool)

(declare-fun tp!391239 () Bool)

(assert (=> b!1355408 (= e!867389 (and tp!391241 tp!391239))))

(declare-fun b!1355407 () Bool)

(assert (=> b!1355407 (= e!867389 tp_is_empty!6719)))

(declare-fun b!1355410 () Bool)

(declare-fun tp!391237 () Bool)

(declare-fun tp!391238 () Bool)

(assert (=> b!1355410 (= e!867389 (and tp!391237 tp!391238))))

(declare-fun b!1355409 () Bool)

(declare-fun tp!391240 () Bool)

(assert (=> b!1355409 (= e!867389 tp!391240)))

(assert (= (and b!1354016 ((_ is ElementMatch!3705) (regTwo!7923 (regex!2391 (h!19199 rules!2550))))) b!1355407))

(assert (= (and b!1354016 ((_ is Concat!6187) (regTwo!7923 (regex!2391 (h!19199 rules!2550))))) b!1355408))

(assert (= (and b!1354016 ((_ is Star!3705) (regTwo!7923 (regex!2391 (h!19199 rules!2550))))) b!1355409))

(assert (= (and b!1354016 ((_ is Union!3705) (regTwo!7923 (regex!2391 (h!19199 rules!2550))))) b!1355410))

(declare-fun tp!391242 () Bool)

(declare-fun b!1355411 () Bool)

(declare-fun tp!391244 () Bool)

(declare-fun e!867391 () Bool)

(assert (=> b!1355411 (= e!867391 (and (inv!18143 (left!11821 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))) tp!391244 (inv!18143 (right!12151 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))) tp!391242))))

(declare-fun b!1355413 () Bool)

(declare-fun e!867390 () Bool)

(declare-fun tp!391243 () Bool)

(assert (=> b!1355413 (= e!867390 tp!391243)))

(declare-fun b!1355412 () Bool)

(assert (=> b!1355412 (= e!867391 (and (inv!18150 (xs!7267 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))) e!867390))))

(assert (=> b!1353442 (= tp!390977 (and (inv!18143 (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34)))) e!867391))))

(assert (= (and b!1353442 ((_ is Node!4544) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))) b!1355411))

(assert (= b!1355412 b!1355413))

(assert (= (and b!1353442 ((_ is Leaf!6936) (c!221992 (dynLambda!6153 (toChars!3501 (transformation!2391 (rule!4138 t2!34))) (value!77776 t2!34))))) b!1355412))

(declare-fun m!1517925 () Bool)

(assert (=> b!1355411 m!1517925))

(declare-fun m!1517927 () Bool)

(assert (=> b!1355411 m!1517927))

(declare-fun m!1517929 () Bool)

(assert (=> b!1355412 m!1517929))

(assert (=> b!1353442 m!1515315))

(declare-fun e!867392 () Bool)

(assert (=> b!1354011 (= tp!391058 e!867392)))

(declare-fun b!1355415 () Bool)

(declare-fun tp!391249 () Bool)

(declare-fun tp!391247 () Bool)

(assert (=> b!1355415 (= e!867392 (and tp!391249 tp!391247))))

(declare-fun b!1355414 () Bool)

(assert (=> b!1355414 (= e!867392 tp_is_empty!6719)))

(declare-fun b!1355417 () Bool)

(declare-fun tp!391245 () Bool)

(declare-fun tp!391246 () Bool)

(assert (=> b!1355417 (= e!867392 (and tp!391245 tp!391246))))

(declare-fun b!1355416 () Bool)

(declare-fun tp!391248 () Bool)

(assert (=> b!1355416 (= e!867392 tp!391248)))

(assert (= (and b!1354011 ((_ is ElementMatch!3705) (reg!4034 (regex!2391 (rule!4138 t2!34))))) b!1355414))

(assert (= (and b!1354011 ((_ is Concat!6187) (reg!4034 (regex!2391 (rule!4138 t2!34))))) b!1355415))

(assert (= (and b!1354011 ((_ is Star!3705) (reg!4034 (regex!2391 (rule!4138 t2!34))))) b!1355416))

(assert (= (and b!1354011 ((_ is Union!3705) (reg!4034 (regex!2391 (rule!4138 t2!34))))) b!1355417))

(declare-fun b!1355420 () Bool)

(declare-fun b_free!32979 () Bool)

(declare-fun b_next!33683 () Bool)

(assert (=> b!1355420 (= b_free!32979 (not b_next!33683))))

(declare-fun t!120329 () Bool)

(declare-fun tb!71225 () Bool)

(assert (=> (and b!1355420 (= (toValue!3642 (transformation!2391 (h!19199 (t!120229 (t!120229 rules!2550))))) (toValue!3642 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120329) tb!71225))

(declare-fun result!86574 () Bool)

(assert (= result!86574 result!86562))

(assert (=> d!383870 t!120329))

(declare-fun tp!391251 () Bool)

(declare-fun b_and!90707 () Bool)

(assert (=> b!1355420 (= tp!391251 (and (=> t!120329 result!86574) b_and!90707))))

(declare-fun b_free!32981 () Bool)

(declare-fun b_next!33685 () Bool)

(assert (=> b!1355420 (= b_free!32981 (not b_next!33685))))

(declare-fun t!120331 () Bool)

(declare-fun tb!71227 () Bool)

(assert (=> (and b!1355420 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 (t!120229 rules!2550))))) (toChars!3501 (transformation!2391 (rule!4138 (_1!7571 (get!4324 lt!448124)))))) t!120331) tb!71227))

(declare-fun result!86576 () Bool)

(assert (= result!86576 result!86534))

(assert (=> d!383594 t!120331))

(declare-fun tb!71229 () Bool)

(declare-fun t!120333 () Bool)

(assert (=> (and b!1355420 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 (t!120229 rules!2550))))) (toChars!3501 (transformation!2391 (rule!4138 t2!34)))) t!120333) tb!71229))

(declare-fun result!86578 () Bool)

(assert (= result!86578 result!86478))

(assert (=> d!383178 t!120333))

(declare-fun t!120335 () Bool)

(declare-fun tb!71231 () Bool)

(assert (=> (and b!1355420 (= (toChars!3501 (transformation!2391 (h!19199 (t!120229 (t!120229 rules!2550))))) (toChars!3501 (transformation!2391 (rule!4138 t1!34)))) t!120335) tb!71231))

(declare-fun result!86580 () Bool)

(assert (= result!86580 result!86500))

(assert (=> b!1353690 t!120335))

(assert (=> b!1353705 t!120333))

(assert (=> d!383368 t!120335))

(declare-fun tp!391250 () Bool)

(declare-fun b_and!90709 () Bool)

(assert (=> b!1355420 (= tp!391250 (and (=> t!120335 result!86580) (=> t!120333 result!86578) (=> t!120331 result!86576) b_and!90709))))

(declare-fun e!867393 () Bool)

(assert (=> b!1355420 (= e!867393 (and tp!391251 tp!391250))))

(declare-fun b!1355419 () Bool)

(declare-fun tp!391252 () Bool)

(declare-fun e!867396 () Bool)

(assert (=> b!1355419 (= e!867396 (and tp!391252 (inv!18136 (tag!2653 (h!19199 (t!120229 (t!120229 rules!2550))))) (inv!18139 (transformation!2391 (h!19199 (t!120229 (t!120229 rules!2550))))) e!867393))))

(declare-fun b!1355418 () Bool)

(declare-fun e!867394 () Bool)

(declare-fun tp!391253 () Bool)

(assert (=> b!1355418 (= e!867394 (and e!867396 tp!391253))))

(assert (=> b!1353986 (= tp!391035 e!867394)))

(assert (= b!1355419 b!1355420))

(assert (= b!1355418 b!1355419))

(assert (= (and b!1353986 ((_ is Cons!13798) (t!120229 (t!120229 rules!2550)))) b!1355418))

(declare-fun m!1517931 () Bool)

(assert (=> b!1355419 m!1517931))

(declare-fun m!1517933 () Bool)

(assert (=> b!1355419 m!1517933))

(declare-fun e!867397 () Bool)

(assert (=> b!1354012 (= tp!391055 e!867397)))

(declare-fun b!1355422 () Bool)

(declare-fun tp!391258 () Bool)

(declare-fun tp!391256 () Bool)

(assert (=> b!1355422 (= e!867397 (and tp!391258 tp!391256))))

(declare-fun b!1355421 () Bool)

(assert (=> b!1355421 (= e!867397 tp_is_empty!6719)))

(declare-fun b!1355424 () Bool)

(declare-fun tp!391254 () Bool)

(declare-fun tp!391255 () Bool)

(assert (=> b!1355424 (= e!867397 (and tp!391254 tp!391255))))

(declare-fun b!1355423 () Bool)

(declare-fun tp!391257 () Bool)

(assert (=> b!1355423 (= e!867397 tp!391257)))

(assert (= (and b!1354012 ((_ is ElementMatch!3705) (regOne!7923 (regex!2391 (rule!4138 t2!34))))) b!1355421))

(assert (= (and b!1354012 ((_ is Concat!6187) (regOne!7923 (regex!2391 (rule!4138 t2!34))))) b!1355422))

(assert (= (and b!1354012 ((_ is Star!3705) (regOne!7923 (regex!2391 (rule!4138 t2!34))))) b!1355423))

(assert (= (and b!1354012 ((_ is Union!3705) (regOne!7923 (regex!2391 (rule!4138 t2!34))))) b!1355424))

(declare-fun e!867398 () Bool)

(assert (=> b!1354012 (= tp!391056 e!867398)))

(declare-fun b!1355426 () Bool)

(declare-fun tp!391263 () Bool)

(declare-fun tp!391261 () Bool)

(assert (=> b!1355426 (= e!867398 (and tp!391263 tp!391261))))

(declare-fun b!1355425 () Bool)

(assert (=> b!1355425 (= e!867398 tp_is_empty!6719)))

(declare-fun b!1355428 () Bool)

(declare-fun tp!391259 () Bool)

(declare-fun tp!391260 () Bool)

(assert (=> b!1355428 (= e!867398 (and tp!391259 tp!391260))))

(declare-fun b!1355427 () Bool)

(declare-fun tp!391262 () Bool)

(assert (=> b!1355427 (= e!867398 tp!391262)))

(assert (= (and b!1354012 ((_ is ElementMatch!3705) (regTwo!7923 (regex!2391 (rule!4138 t2!34))))) b!1355425))

(assert (= (and b!1354012 ((_ is Concat!6187) (regTwo!7923 (regex!2391 (rule!4138 t2!34))))) b!1355426))

(assert (= (and b!1354012 ((_ is Star!3705) (regTwo!7923 (regex!2391 (rule!4138 t2!34))))) b!1355427))

(assert (= (and b!1354012 ((_ is Union!3705) (regTwo!7923 (regex!2391 (rule!4138 t2!34))))) b!1355428))

(declare-fun e!867399 () Bool)

(assert (=> b!1354007 (= tp!391053 e!867399)))

(declare-fun b!1355430 () Bool)

(declare-fun tp!391268 () Bool)

(declare-fun tp!391266 () Bool)

(assert (=> b!1355430 (= e!867399 (and tp!391268 tp!391266))))

(declare-fun b!1355429 () Bool)

(assert (=> b!1355429 (= e!867399 tp_is_empty!6719)))

(declare-fun b!1355432 () Bool)

(declare-fun tp!391264 () Bool)

(declare-fun tp!391265 () Bool)

(assert (=> b!1355432 (= e!867399 (and tp!391264 tp!391265))))

(declare-fun b!1355431 () Bool)

(declare-fun tp!391267 () Bool)

(assert (=> b!1355431 (= e!867399 tp!391267)))

(assert (= (and b!1354007 ((_ is ElementMatch!3705) (reg!4034 (regex!2391 (rule!4138 t1!34))))) b!1355429))

(assert (= (and b!1354007 ((_ is Concat!6187) (reg!4034 (regex!2391 (rule!4138 t1!34))))) b!1355430))

(assert (= (and b!1354007 ((_ is Star!3705) (reg!4034 (regex!2391 (rule!4138 t1!34))))) b!1355431))

(assert (= (and b!1354007 ((_ is Union!3705) (reg!4034 (regex!2391 (rule!4138 t1!34))))) b!1355432))

(declare-fun b_lambda!40723 () Bool)

(assert (= b_lambda!40711 (or b!1353381 b_lambda!40723)))

(declare-fun bs!333860 () Bool)

(declare-fun d!384098 () Bool)

(assert (= bs!333860 (and d!384098 b!1353381)))

(assert (=> bs!333860 (= (dynLambda!6159 lambda!57091 lt!448751) (= (regex!2391 lt!448751) lt!447982))))

(assert (=> d!383964 d!384098))

(declare-fun b_lambda!40725 () Bool)

(assert (= b_lambda!40721 (or d!383374 b_lambda!40725)))

(declare-fun bs!333861 () Bool)

(declare-fun d!384100 () Bool)

(assert (= bs!333861 (and d!384100 d!383374)))

(assert (=> bs!333861 (= (dynLambda!6161 lambda!57135 (h!19199 rules!2550)) (regex!2391 (h!19199 rules!2550)))))

(assert (=> b!1355338 d!384100))

(declare-fun b_lambda!40727 () Bool)

(assert (= b_lambda!40661 (or b!1353366 b_lambda!40727)))

(declare-fun bs!333862 () Bool)

(declare-fun d!384102 () Bool)

(assert (= bs!333862 (and d!384102 b!1353366)))

(declare-fun res!610530 () Bool)

(declare-fun e!867400 () Bool)

(assert (=> bs!333862 (=> (not res!610530) (not e!867400))))

(assert (=> bs!333862 (= res!610530 (validRegex!1605 lt!448483))))

(assert (=> bs!333862 (= (dynLambda!6162 lambda!57090 lt!448483) e!867400)))

(declare-fun b!1355433 () Bool)

(assert (=> b!1355433 (= e!867400 (matchR!1698 lt!448483 lt!447984))))

(assert (= (and bs!333862 res!610530) b!1355433))

(declare-fun m!1517935 () Bool)

(assert (=> bs!333862 m!1517935))

(declare-fun m!1517937 () Bool)

(assert (=> b!1355433 m!1517937))

(assert (=> d!383656 d!384102))

(declare-fun b_lambda!40729 () Bool)

(assert (= b_lambda!40719 (or d!383356 b_lambda!40729)))

(declare-fun bs!333863 () Bool)

(declare-fun d!384104 () Bool)

(assert (= bs!333863 (and d!384104 d!383356)))

(assert (=> bs!333863 (= (dynLambda!6162 lambda!57130 (h!19200 lt!447983)) (validRegex!1605 (h!19200 lt!447983)))))

(declare-fun m!1517939 () Bool)

(assert (=> bs!333863 m!1517939))

(assert (=> b!1355290 d!384104))

(declare-fun b_lambda!40731 () Bool)

(assert (= b_lambda!40713 (or d!383204 b_lambda!40731)))

(declare-fun bs!333864 () Bool)

(declare-fun d!384106 () Bool)

(assert (= bs!333864 (and d!384106 d!383204)))

(assert (=> bs!333864 (= (dynLambda!6159 lambda!57116 (h!19199 rules!2550)) (not (dynLambda!6159 lambda!57091 (h!19199 rules!2550))))))

(declare-fun b_lambda!40745 () Bool)

(assert (=> (not b_lambda!40745) (not bs!333864)))

(assert (=> bs!333864 m!1515831))

(assert (=> b!1355209 d!384106))

(declare-fun b_lambda!40733 () Bool)

(assert (= b_lambda!40659 (or b!1353366 b_lambda!40733)))

(declare-fun bs!333865 () Bool)

(declare-fun d!384108 () Bool)

(assert (= bs!333865 (and d!384108 b!1353366)))

(declare-fun res!610531 () Bool)

(declare-fun e!867401 () Bool)

(assert (=> bs!333865 (=> (not res!610531) (not e!867401))))

(assert (=> bs!333865 (= res!610531 (validRegex!1605 (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089)))))))

(assert (=> bs!333865 (= (dynLambda!6162 lambda!57090 (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089)))) e!867401)))

(declare-fun b!1355434 () Bool)

(assert (=> b!1355434 (= e!867401 (matchR!1698 (h!19200 (t!120230 (map!3047 rules!2550 lambda!57089))) lt!447984))))

(assert (= (and bs!333865 res!610531) b!1355434))

(declare-fun m!1517941 () Bool)

(assert (=> bs!333865 m!1517941))

(declare-fun m!1517943 () Bool)

(assert (=> b!1355434 m!1517943))

(assert (=> b!1354562 d!384108))

(declare-fun b_lambda!40735 () Bool)

(assert (= b_lambda!40653 (or b!1353366 b_lambda!40735)))

(declare-fun bs!333866 () Bool)

(declare-fun d!384110 () Bool)

(assert (= bs!333866 (and d!384110 b!1353366)))

(assert (=> bs!333866 (= (dynLambda!6161 lambda!57089 (h!19199 (t!120229 rules!2550))) (regex!2391 (h!19199 (t!120229 rules!2550))))))

(assert (=> b!1354391 d!384110))

(declare-fun b_lambda!40737 () Bool)

(assert (= b_lambda!40655 (or b!1353359 b_lambda!40737)))

(declare-fun bs!333867 () Bool)

(declare-fun d!384112 () Bool)

(assert (= bs!333867 (and d!384112 b!1353359)))

(declare-fun res!610532 () Bool)

(declare-fun e!867402 () Bool)

(assert (=> bs!333867 (=> (not res!610532) (not e!867402))))

(assert (=> bs!333867 (= res!610532 (matchR!1698 lt!447993 res!610133))))

(assert (=> bs!333867 (= (dynLambda!6158 lambda!57088 res!610133) e!867402)))

(declare-fun b!1355435 () Bool)

(assert (=> b!1355435 (= e!867402 (isPrefix!1115 lt!447991 res!610133))))

(assert (= (and bs!333867 res!610532) b!1355435))

(declare-fun m!1517945 () Bool)

(assert (=> bs!333867 m!1517945))

(declare-fun m!1517947 () Bool)

(assert (=> b!1355435 m!1517947))

(assert (=> d!383584 d!384112))

(declare-fun b_lambda!40739 () Bool)

(assert (= b_lambda!40715 (or d!383358 b_lambda!40739)))

(declare-fun bs!333868 () Bool)

(declare-fun d!384114 () Bool)

(assert (= bs!333868 (and d!384114 d!383358)))

(assert (=> bs!333868 (= (dynLambda!6162 lambda!57132 (h!19200 lt!447983)) (not (dynLambda!6162 lambda!57090 (h!19200 lt!447983))))))

(declare-fun b_lambda!40747 () Bool)

(assert (=> (not b_lambda!40747) (not bs!333868)))

(declare-fun m!1517949 () Bool)

(assert (=> bs!333868 m!1517949))

(assert (=> b!1355217 d!384114))

(declare-fun b_lambda!40741 () Bool)

(assert (= b_lambda!40709 (or b!1353381 b_lambda!40741)))

(declare-fun bs!333869 () Bool)

(declare-fun d!384116 () Bool)

(assert (= bs!333869 (and d!384116 b!1353381)))

(assert (=> bs!333869 (= (dynLambda!6159 lambda!57091 (h!19199 (t!120229 rules!2550))) (= (regex!2391 (h!19199 (t!120229 rules!2550))) lt!447982))))

(assert (=> b!1355141 d!384116))

(declare-fun b_lambda!40743 () Bool)

(assert (= b_lambda!40717 (or d!383354 b_lambda!40743)))

(declare-fun bs!333870 () Bool)

(declare-fun d!384118 () Bool)

(assert (= bs!333870 (and d!384118 d!383354)))

(assert (=> bs!333870 (= (dynLambda!6162 lambda!57125 (h!19200 (map!3047 rules!2550 lambda!57089))) (not (dynLambda!6162 lambda!57090 (h!19200 (map!3047 rules!2550 lambda!57089)))))))

(declare-fun b_lambda!40749 () Bool)

(assert (=> (not b_lambda!40749) (not bs!333870)))

(assert (=> bs!333870 m!1515891))

(assert (=> b!1355219 d!384118))

(check-sat (not b!1354670) (not b!1355180) (not d!383892) (not b!1354960) (not d!383586) (not b!1355427) (not b!1355333) (not d!383648) (not b!1354671) (not b_lambda!40635) (not b_next!33659) (not d!383986) (not d!383660) (not b!1355200) (not b!1355373) (not b!1355195) (not b!1355271) (not b!1355419) (not d!384082) (not d!383580) (not b!1355374) (not d!384030) (not d!384032) (not b!1354537) (not b!1355422) (not b!1353698) (not b!1355138) (not b!1355360) (not b!1355390) (not b!1355396) (not b_lambda!40747) (not b!1355300) (not b!1355071) (not b!1354439) (not d!383716) b_and!90681 (not b!1355335) (not b!1354406) (not b_lambda!40727) (not bs!333865) (not bm!91190) (not b!1355428) (not b!1354567) (not b!1355123) (not b!1355394) (not d!383980) (not b!1354573) (not d!383928) (not b_lambda!40743) (not b_next!33685) (not d!384046) (not b!1354511) (not b!1355020) (not d!383704) b_and!90699 (not b!1355132) (not b_lambda!40741) (not b!1355052) (not b!1355190) (not b!1354655) (not b!1355069) (not b!1355181) (not d!383720) (not d!383920) (not bs!333867) (not d!383626) (not b!1355415) (not b_next!33669) (not d!384050) (not d!384096) (not b!1355434) (not d!384074) (not b!1355405) (not b!1355265) (not b!1354697) (not b!1355404) (not b!1355185) (not d!384054) (not b!1355142) (not b!1355202) (not b!1354675) (not d!383894) (not d!383956) (not b!1355194) (not b!1355204) (not bm!91225) b_and!90701 (not d!383982) (not d!383964) (not b!1354324) (not b!1355150) (not b!1354403) (not d!384052) (not d!383902) (not d!383654) (not b!1354437) (not b!1355009) (not b!1355087) (not b!1355061) (not bs!333863) (not d!383940) (not b!1355378) (not d!383878) (not b!1355161) (not d!383914) (not b_lambda!40627) (not d!383906) (not bm!91214) (not b!1355104) (not b!1355433) (not b!1355368) (not b!1354404) (not bm!91224) (not b!1355227) (not b!1355148) (not d!383864) (not b_next!33677) (not b!1355431) (not bm!91205) (not b!1355218) (not b!1354656) (not d!384072) (not bm!91223) b_and!90679 (not b!1355091) (not b!1354966) (not b!1354359) (not b!1355340) (not b!1354648) (not b!1355343) (not b!1354997) (not b!1355381) (not b!1355417) (not b!1354972) (not b!1355225) (not d!384086) (not b!1355152) (not b!1354964) (not b!1355400) (not d!383990) (not b!1355259) (not d!384036) (not b!1355070) (not bm!91219) (not b!1354540) (not b!1355090) (not b!1354480) (not d!384064) (not b!1355144) (not b!1354409) (not b!1355388) (not b!1355327) (not b!1355410) (not b!1355197) (not b!1355032) (not b!1354980) (not b!1354986) (not b!1355121) (not b!1355332) (not d!384068) (not b!1355058) (not b!1354442) (not d!383888) (not b!1355107) (not d!383884) (not d!383916) (not b!1355276) (not b!1355412) (not b!1355344) (not b!1355126) (not b!1355393) b_and!90685 (not d!384088) (not b_lambda!40729) (not d!384070) (not b!1355363) (not tb!71217) (not b!1355117) (not b!1354653) (not b!1355376) (not b!1354995) (not d!384056) (not b!1354961) (not b!1355106) (not b!1355401) (not b!1355231) (not d!383978) (not d!383972) (not b!1355119) (not b!1355050) (not b!1355266) (not b!1355432) (not bm!91179) (not b!1355346) (not b!1354389) (not b!1354696) (not b!1354571) (not b!1355384) (not d!383602) (not b!1355120) (not d!383912) (not b!1354401) (not b!1354651) (not d!384020) (not d!384034) (not b!1354481) (not b!1354357) (not b!1354388) (not d!383656) (not b!1355372) (not b!1355146) (not b!1355105) (not b!1355364) (not d!384040) (not b!1355385) (not b!1355347) (not b!1355024) (not b!1354326) (not b!1355177) (not b!1355193) (not d!383974) (not b!1355408) (not b!1355423) (not b!1355038) (not bs!333862) (not b!1354994) (not b!1355331) (not b!1355413) (not b_next!33683) (not b!1355341) b_and!90707 (not b!1355424) (not b!1354358) (not b!1355002) (not b!1354996) (not b_lambda!40739) (not d!384084) (not b!1355270) (not bm!91231) (not b!1355033) (not b!1354565) (not d!383922) (not b!1355406) (not b_lambda!40641) (not b!1355377) (not d!383708) (not b!1355260) (not d!383944) (not d!383988) (not d!383530) (not bm!91222) (not b!1355285) (not d!383666) (not b!1355411) (not b!1355358) (not b_next!33663) (not b!1354441) (not b!1354987) (not d!384066) (not d!383570) (not b_next!33667) (not d!383952) (not b!1355175) (not b!1354981) (not d!383642) (not b!1355210) (not b!1354397) (not b!1354464) (not d!383862) (not d!384010) (not b!1355212) (not b!1355336) (not d!383872) (not d!383868) (not tb!71193) (not bm!91176) (not b!1355178) (not b!1355365) (not b!1355279) b_and!90703 (not b!1355021) (not b!1355156) (not d!384058) (not b!1355418) (not d!383958) (not b!1355382) (not bm!91203) (not b!1355262) (not b!1355430) (not b!1355386) (not b!1354560) (not b_lambda!40629) (not b!1355229) (not b!1355134) (not b!1355349) (not bm!91217) (not d!383904) (not b!1355398) (not b!1355306) (not d!383900) (not d!383572) (not b_next!33675) (not d!383926) (not b!1355112) (not b!1355361) (not b_lambda!40639) (not b!1355359) (not d!383984) (not b_lambda!40631) (not b!1355127) (not b_lambda!40737) (not b!1355034) (not bm!91230) (not d!383954) (not b!1354536) (not b!1355220) (not b!1355338) (not d!383640) (not d!384080) (not b!1355339) (not b!1355380) (not b!1355367) (not d!384026) (not b!1355416) (not b!1355031) (not b!1355402) (not b!1355102) (not b!1355179) (not bm!91202) (not b_lambda!40731) (not b!1355167) (not b!1355043) (not b!1354391) (not b!1354438) (not b!1354570) (not b!1355122) (not b!1355426) (not b!1355108) (not b_lambda!40633) (not b!1354572) (not b!1354998) (not d!383946) (not b!1354561) (not b!1354575) (not b!1355397) (not b!1355264) (not b!1355007) (not b!1354672) (not b_lambda!40725) (not b_lambda!40749) (not d!383670) (not b!1355086) (not b!1354978) (not b!1355240) (not b!1355198) (not d!383948) (not bm!91218) (not b_lambda!40745) (not d!383950) (not d!383550) (not d!384018) (not b!1355051) (not b_lambda!40657) (not b!1354674) (not b!1354408) (not b!1354563) (not b!1355151) (not b_lambda!40735) (not b_next!33665) (not bm!91226) (not b!1354654) (not b!1355389) (not b!1354542) (not d!383668) (not b!1355100) (not b!1355392) (not b!1354982) (not b_lambda!40637) (not b!1355263) b_and!90709 (not b!1355261) (not b!1355030) (not b!1354657) (not d!383594) (not b!1355370) (not d!384004) (not d!384002) (not d!383592) (not d!383600) (not b_lambda!40625) (not d!384090) (not b!1354400) (not d!383590) (not d!383882) (not d!384076) (not d!384078) (not d!383664) (not b!1355277) (not b!1355291) (not d!383582) (not b!1355136) (not b_lambda!40623) (not bm!91228) (not b!1354444) (not bm!91227) (not b!1354640) (not d!383890) (not b!1354407) (not d!383996) (not b!1354649) (not bm!91191) (not b!1355057) b_and!90705 (not d!384028) (not b!1355094) (not b!1355369) (not b!1354673) (not b!1355435) (not d!383576) (not b!1354356) (not b_lambda!40707) tp_is_empty!6719 (not b!1355096) (not b!1355149) (not b!1353442) (not b_next!33661) (not b_lambda!40723) (not b!1355409) (not d!383538) b_and!90683 (not b!1355131) (not b!1355223) (not b_lambda!40733) (not b!1354405) (not d!383896) (not d!383624) (not b!1354652) (not b!1355329) (not b!1355098) (not b!1355139))
(check-sat (not b_next!33659) b_and!90681 (not b_next!33669) b_and!90701 (not b_next!33677) b_and!90679 b_and!90685 b_and!90703 (not b_next!33675) (not b_next!33665) b_and!90709 b_and!90705 b_and!90699 (not b_next!33685) (not b_next!33683) b_and!90707 (not b_next!33663) (not b_next!33667) (not b_next!33661) b_and!90683)
