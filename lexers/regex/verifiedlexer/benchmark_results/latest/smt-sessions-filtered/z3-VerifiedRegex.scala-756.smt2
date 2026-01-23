; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41462 () Bool)

(assert start!41462)

(declare-fun b!439557 () Bool)

(declare-fun b_free!12273 () Bool)

(declare-fun b_next!12273 () Bool)

(assert (=> b!439557 (= b_free!12273 (not b_next!12273))))

(declare-fun tp!124271 () Bool)

(declare-fun b_and!47337 () Bool)

(assert (=> b!439557 (= tp!124271 b_and!47337)))

(declare-fun b_free!12275 () Bool)

(declare-fun b_next!12275 () Bool)

(assert (=> b!439557 (= b_free!12275 (not b_next!12275))))

(declare-fun tp!124268 () Bool)

(declare-fun b_and!47339 () Bool)

(assert (=> b!439557 (= tp!124268 b_and!47339)))

(declare-fun b!439575 () Bool)

(declare-fun b_free!12277 () Bool)

(declare-fun b_next!12277 () Bool)

(assert (=> b!439575 (= b_free!12277 (not b_next!12277))))

(declare-fun tp!124265 () Bool)

(declare-fun b_and!47341 () Bool)

(assert (=> b!439575 (= tp!124265 b_and!47341)))

(declare-fun b_free!12279 () Bool)

(declare-fun b_next!12279 () Bool)

(assert (=> b!439575 (= b_free!12279 (not b_next!12279))))

(declare-fun tp!124274 () Bool)

(declare-fun b_and!47343 () Bool)

(assert (=> b!439575 (= tp!124274 b_and!47343)))

(declare-fun b!439565 () Bool)

(declare-fun b_free!12281 () Bool)

(declare-fun b_next!12281 () Bool)

(assert (=> b!439565 (= b_free!12281 (not b_next!12281))))

(declare-fun tp!124263 () Bool)

(declare-fun b_and!47345 () Bool)

(assert (=> b!439565 (= tp!124263 b_and!47345)))

(declare-fun b_free!12283 () Bool)

(declare-fun b_next!12283 () Bool)

(assert (=> b!439565 (= b_free!12283 (not b_next!12283))))

(declare-fun tp!124270 () Bool)

(declare-fun b_and!47347 () Bool)

(assert (=> b!439565 (= tp!124270 b_and!47347)))

(declare-fun bs!54240 () Bool)

(declare-fun b!439548 () Bool)

(declare-fun b!439554 () Bool)

(assert (= bs!54240 (and b!439548 b!439554)))

(declare-fun lambda!12762 () Int)

(declare-fun lambda!12761 () Int)

(assert (=> bs!54240 (not (= lambda!12762 lambda!12761))))

(declare-fun b!439604 () Bool)

(declare-fun e!268586 () Bool)

(assert (=> b!439604 (= e!268586 true)))

(declare-fun b!439603 () Bool)

(declare-fun e!268585 () Bool)

(assert (=> b!439603 (= e!268585 e!268586)))

(declare-fun b!439602 () Bool)

(declare-fun e!268584 () Bool)

(assert (=> b!439602 (= e!268584 e!268585)))

(assert (=> b!439548 e!268584))

(assert (= b!439603 b!439604))

(assert (= b!439602 b!439603))

(declare-datatypes ((List!4324 0))(
  ( (Nil!4314) (Cons!4314 (h!9711 (_ BitVec 16)) (t!69440 List!4324)) )
))
(declare-datatypes ((TokenValue!857 0))(
  ( (FloatLiteralValue!1714 (text!6444 List!4324)) (TokenValueExt!856 (__x!3201 Int)) (Broken!4285 (value!28087 List!4324)) (Object!866) (End!857) (Def!857) (Underscore!857) (Match!857) (Else!857) (Error!857) (Case!857) (If!857) (Extends!857) (Abstract!857) (Class!857) (Val!857) (DelimiterValue!1714 (del!917 List!4324)) (KeywordValue!863 (value!28088 List!4324)) (CommentValue!1714 (value!28089 List!4324)) (WhitespaceValue!1714 (value!28090 List!4324)) (IndentationValue!857 (value!28091 List!4324)) (String!5364) (Int32!857) (Broken!4286 (value!28092 List!4324)) (Boolean!858) (Unit!7622) (OperatorValue!860 (op!917 List!4324)) (IdentifierValue!1714 (value!28093 List!4324)) (IdentifierValue!1715 (value!28094 List!4324)) (WhitespaceValue!1715 (value!28095 List!4324)) (True!1714) (False!1714) (Broken!4287 (value!28096 List!4324)) (Broken!4288 (value!28097 List!4324)) (True!1715) (RightBrace!857) (RightBracket!857) (Colon!857) (Null!857) (Comma!857) (LeftBracket!857) (False!1715) (LeftBrace!857) (ImaginaryLiteralValue!857 (text!6445 List!4324)) (StringLiteralValue!2571 (value!28098 List!4324)) (EOFValue!857 (value!28099 List!4324)) (IdentValue!857 (value!28100 List!4324)) (DelimiterValue!1715 (value!28101 List!4324)) (DedentValue!857 (value!28102 List!4324)) (NewLineValue!857 (value!28103 List!4324)) (IntegerValue!2571 (value!28104 (_ BitVec 32)) (text!6446 List!4324)) (IntegerValue!2572 (value!28105 Int) (text!6447 List!4324)) (Times!857) (Or!857) (Equal!857) (Minus!857) (Broken!4289 (value!28106 List!4324)) (And!857) (Div!857) (LessEqual!857) (Mod!857) (Concat!1916) (Not!857) (Plus!857) (SpaceValue!857 (value!28107 List!4324)) (IntegerValue!2573 (value!28108 Int) (text!6448 List!4324)) (StringLiteralValue!2572 (text!6449 List!4324)) (FloatLiteralValue!1715 (text!6450 List!4324)) (BytesLiteralValue!857 (value!28109 List!4324)) (CommentValue!1715 (value!28110 List!4324)) (StringLiteralValue!2573 (value!28111 List!4324)) (ErrorTokenValue!857 (msg!918 List!4324)) )
))
(declare-datatypes ((C!3040 0))(
  ( (C!3041 (val!1406 Int)) )
))
(declare-datatypes ((List!4325 0))(
  ( (Nil!4315) (Cons!4315 (h!9712 C!3040) (t!69441 List!4325)) )
))
(declare-datatypes ((IArray!2985 0))(
  ( (IArray!2986 (innerList!1550 List!4325)) )
))
(declare-datatypes ((Conc!1492 0))(
  ( (Node!1492 (left!3620 Conc!1492) (right!3950 Conc!1492) (csize!3214 Int) (cheight!1703 Int)) (Leaf!2249 (xs!4123 IArray!2985) (csize!3215 Int)) (Empty!1492) )
))
(declare-datatypes ((BalanceConc!2992 0))(
  ( (BalanceConc!2993 (c!88968 Conc!1492)) )
))
(declare-datatypes ((TokenValueInjection!1486 0))(
  ( (TokenValueInjection!1487 (toValue!1642 Int) (toChars!1501 Int)) )
))
(declare-datatypes ((String!5365 0))(
  ( (String!5366 (value!28112 String)) )
))
(declare-datatypes ((Regex!1059 0))(
  ( (ElementMatch!1059 (c!88969 C!3040)) (Concat!1917 (regOne!2630 Regex!1059) (regTwo!2630 Regex!1059)) (EmptyExpr!1059) (Star!1059 (reg!1388 Regex!1059)) (EmptyLang!1059) (Union!1059 (regOne!2631 Regex!1059) (regTwo!2631 Regex!1059)) )
))
(declare-datatypes ((Rule!1470 0))(
  ( (Rule!1471 (regex!835 Regex!1059) (tag!1087 String!5365) (isSeparator!835 Bool) (transformation!835 TokenValueInjection!1486)) )
))
(declare-datatypes ((List!4326 0))(
  ( (Nil!4316) (Cons!4316 (h!9713 Rule!1470) (t!69442 List!4326)) )
))
(declare-fun rules!1920 () List!4326)

(get-info :version)

(assert (= (and b!439548 ((_ is Cons!4316) rules!1920)) b!439602))

(declare-fun order!3747 () Int)

(declare-fun order!3745 () Int)

(declare-fun dynLambda!2570 (Int Int) Int)

(declare-fun dynLambda!2571 (Int Int) Int)

(assert (=> b!439604 (< (dynLambda!2570 order!3745 (toValue!1642 (transformation!835 (h!9713 rules!1920)))) (dynLambda!2571 order!3747 lambda!12762))))

(declare-fun order!3749 () Int)

(declare-fun dynLambda!2572 (Int Int) Int)

(assert (=> b!439604 (< (dynLambda!2572 order!3749 (toChars!1501 (transformation!835 (h!9713 rules!1920)))) (dynLambda!2571 order!3747 lambda!12762))))

(assert (=> b!439548 true))

(declare-fun b!439538 () Bool)

(declare-datatypes ((Unit!7623 0))(
  ( (Unit!7624) )
))
(declare-fun e!268559 () Unit!7623)

(declare-fun Unit!7625 () Unit!7623)

(assert (=> b!439538 (= e!268559 Unit!7625)))

(declare-fun b!439539 () Bool)

(declare-fun e!268577 () Unit!7623)

(declare-fun Unit!7626 () Unit!7623)

(assert (=> b!439539 (= e!268577 Unit!7626)))

(declare-fun b!439541 () Bool)

(declare-fun e!268567 () Unit!7623)

(declare-fun Unit!7627 () Unit!7623)

(assert (=> b!439541 (= e!268567 Unit!7627)))

(declare-fun lt!193536 () C!3040)

(declare-fun lt!193553 () Unit!7623)

(declare-fun lt!193527 () List!4325)

(declare-datatypes ((Token!1414 0))(
  ( (Token!1415 (value!28113 TokenValue!857) (rule!1510 Rule!1470) (size!3538 Int) (originalCharacters!878 List!4325)) )
))
(declare-fun lt!193516 () Token!1414)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!114 (Regex!1059 List!4325 C!3040) Unit!7623)

(assert (=> b!439541 (= lt!193553 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!114 (regex!835 (rule!1510 lt!193516)) lt!193527 lt!193536))))

(declare-fun res!194971 () Bool)

(declare-fun matchR!377 (Regex!1059 List!4325) Bool)

(assert (=> b!439541 (= res!194971 (not (matchR!377 (regex!835 (rule!1510 lt!193516)) lt!193527)))))

(declare-fun e!268543 () Bool)

(assert (=> b!439541 (=> (not res!194971) (not e!268543))))

(assert (=> b!439541 e!268543))

(declare-fun b!439542 () Bool)

(declare-fun e!268548 () Bool)

(declare-fun e!268565 () Bool)

(assert (=> b!439542 (= e!268548 e!268565)))

(declare-fun res!194958 () Bool)

(assert (=> b!439542 (=> res!194958 e!268565)))

(declare-datatypes ((tuple2!5186 0))(
  ( (tuple2!5187 (_1!2809 Token!1414) (_2!2809 List!4325)) )
))
(declare-datatypes ((Option!1087 0))(
  ( (None!1086) (Some!1086 (v!15361 tuple2!5186)) )
))
(declare-fun lt!193525 () Option!1087)

(declare-fun isDefined!926 (Option!1087) Bool)

(assert (=> b!439542 (= res!194958 (not (isDefined!926 lt!193525)))))

(declare-fun lt!193531 () List!4325)

(declare-datatypes ((LexerInterface!721 0))(
  ( (LexerInterfaceExt!718 (__x!3202 Int)) (Lexer!719) )
))
(declare-fun thiss!17480 () LexerInterface!721)

(declare-fun maxPrefix!437 (LexerInterface!721 List!4326 List!4325) Option!1087)

(assert (=> b!439542 (= lt!193525 (maxPrefix!437 thiss!17480 rules!1920 lt!193531))))

(declare-fun b!439543 () Bool)

(declare-fun Unit!7628 () Unit!7623)

(assert (=> b!439543 (= e!268577 Unit!7628)))

(assert (=> b!439543 false))

(declare-fun e!268542 () Bool)

(declare-fun e!268566 () Bool)

(declare-fun separatorToken!170 () Token!1414)

(declare-fun tp!124267 () Bool)

(declare-fun b!439544 () Bool)

(declare-fun inv!5377 (String!5365) Bool)

(declare-fun inv!5380 (TokenValueInjection!1486) Bool)

(assert (=> b!439544 (= e!268566 (and tp!124267 (inv!5377 (tag!1087 (rule!1510 separatorToken!170))) (inv!5380 (transformation!835 (rule!1510 separatorToken!170))) e!268542))))

(declare-fun b!439545 () Bool)

(declare-fun e!268569 () Bool)

(declare-datatypes ((List!4327 0))(
  ( (Nil!4317) (Cons!4317 (h!9714 Token!1414) (t!69443 List!4327)) )
))
(declare-fun tokens!465 () List!4327)

(declare-fun lt!193518 () List!4325)

(assert (=> b!439545 (= e!268569 (matchR!377 (regex!835 (rule!1510 (h!9714 tokens!465))) lt!193518))))

(declare-fun b!439546 () Bool)

(declare-fun res!194984 () Bool)

(declare-fun e!268553 () Bool)

(assert (=> b!439546 (=> (not res!194984) (not e!268553))))

(declare-fun lt!193548 () List!4325)

(declare-fun lt!193504 () List!4325)

(declare-fun list!1905 (BalanceConc!2992) List!4325)

(declare-fun seqFromList!1035 (List!4325) BalanceConc!2992)

(assert (=> b!439546 (= res!194984 (= (list!1905 (seqFromList!1035 lt!193548)) lt!193504))))

(declare-fun b!439547 () Bool)

(declare-fun e!268538 () Bool)

(declare-datatypes ((IArray!2987 0))(
  ( (IArray!2988 (innerList!1551 List!4327)) )
))
(declare-datatypes ((Conc!1493 0))(
  ( (Node!1493 (left!3621 Conc!1493) (right!3951 Conc!1493) (csize!3216 Int) (cheight!1704 Int)) (Leaf!2250 (xs!4124 IArray!2987) (csize!3217 Int)) (Empty!1493) )
))
(declare-datatypes ((BalanceConc!2994 0))(
  ( (BalanceConc!2995 (c!88970 Conc!1493)) )
))
(declare-datatypes ((tuple2!5188 0))(
  ( (tuple2!5189 (_1!2810 BalanceConc!2994) (_2!2810 BalanceConc!2992)) )
))
(declare-fun lt!193547 () tuple2!5188)

(declare-fun isEmpty!3229 (BalanceConc!2992) Bool)

(assert (=> b!439547 (= e!268538 (isEmpty!3229 (_2!2810 lt!193547)))))

(declare-fun e!268574 () Bool)

(declare-fun e!268555 () Bool)

(assert (=> b!439548 (= e!268574 e!268555)))

(declare-fun res!194963 () Bool)

(assert (=> b!439548 (=> res!194963 e!268555)))

(declare-datatypes ((tuple2!5190 0))(
  ( (tuple2!5191 (_1!2811 Token!1414) (_2!2811 BalanceConc!2992)) )
))
(declare-datatypes ((Option!1088 0))(
  ( (None!1087) (Some!1087 (v!15362 tuple2!5190)) )
))
(declare-fun isDefined!927 (Option!1088) Bool)

(declare-fun maxPrefixZipperSequence!400 (LexerInterface!721 List!4326 BalanceConc!2992) Option!1088)

(assert (=> b!439548 (= res!194963 (not (isDefined!927 (maxPrefixZipperSequence!400 thiss!17480 rules!1920 (seqFromList!1035 (originalCharacters!878 (h!9714 tokens!465)))))))))

(declare-fun lt!193513 () Unit!7623)

(declare-fun forallContained!388 (List!4327 Int Token!1414) Unit!7623)

(assert (=> b!439548 (= lt!193513 (forallContained!388 tokens!465 lambda!12762 (h!9714 tokens!465)))))

(assert (=> b!439548 (= lt!193518 (originalCharacters!878 (h!9714 tokens!465)))))

(declare-fun b!439549 () Bool)

(declare-fun e!268550 () Bool)

(declare-fun lt!193509 () Option!1087)

(declare-fun get!1557 (Option!1087) tuple2!5186)

(declare-fun head!1071 (List!4327) Token!1414)

(assert (=> b!439549 (= e!268550 (= (_1!2809 (get!1557 lt!193509)) (head!1071 tokens!465)))))

(declare-fun b!439550 () Bool)

(declare-fun e!268564 () Bool)

(declare-fun lt!193535 () List!4325)

(declare-fun ++!1242 (List!4325 List!4325) List!4325)

(assert (=> b!439550 (= e!268564 (not (= lt!193548 (++!1242 lt!193518 lt!193535))))))

(declare-fun b!439551 () Bool)

(declare-fun res!194991 () Bool)

(declare-fun e!268562 () Bool)

(assert (=> b!439551 (=> (not res!194991) (not e!268562))))

(declare-fun lt!193517 () tuple2!5188)

(declare-fun apply!1078 (BalanceConc!2994 Int) Token!1414)

(assert (=> b!439551 (= res!194991 (= (apply!1078 (_1!2810 lt!193517) 0) lt!193516))))

(declare-fun b!439552 () Bool)

(declare-fun e!268560 () Bool)

(declare-fun e!268561 () Bool)

(declare-fun tp!124275 () Bool)

(assert (=> b!439552 (= e!268560 (and e!268561 tp!124275))))

(declare-fun b!439553 () Bool)

(declare-fun e!268547 () Bool)

(declare-fun lt!193541 () Bool)

(assert (=> b!439553 (= e!268547 (not lt!193541))))

(declare-fun res!194968 () Bool)

(declare-fun e!268563 () Bool)

(assert (=> b!439554 (=> (not res!194968) (not e!268563))))

(declare-fun forall!1238 (List!4327 Int) Bool)

(assert (=> b!439554 (= res!194968 (forall!1238 tokens!465 lambda!12761))))

(declare-fun b!439555 () Bool)

(declare-fun e!268568 () Bool)

(assert (=> b!439555 (= e!268555 e!268568)))

(declare-fun res!194975 () Bool)

(assert (=> b!439555 (=> res!194975 e!268568)))

(declare-fun lt!193528 () Bool)

(assert (=> b!439555 (= res!194975 (not lt!193528))))

(assert (=> b!439555 e!268569))

(declare-fun res!194979 () Bool)

(assert (=> b!439555 (=> (not res!194979) (not e!268569))))

(declare-fun lt!193530 () tuple2!5186)

(assert (=> b!439555 (= res!194979 (= (_1!2809 lt!193530) (h!9714 tokens!465)))))

(declare-fun lt!193551 () Option!1087)

(assert (=> b!439555 (= lt!193530 (get!1557 lt!193551))))

(assert (=> b!439555 (isDefined!926 lt!193551)))

(assert (=> b!439555 (= lt!193551 (maxPrefix!437 thiss!17480 rules!1920 lt!193518))))

(declare-fun b!439556 () Bool)

(assert (=> b!439556 (= e!268562 (isEmpty!3229 (_2!2810 lt!193517)))))

(declare-fun e!268557 () Bool)

(assert (=> b!439557 (= e!268557 (and tp!124271 tp!124268))))

(declare-fun b!439558 () Bool)

(declare-fun e!268546 () Bool)

(declare-fun e!268554 () Bool)

(assert (=> b!439558 (= e!268546 e!268554)))

(declare-fun res!194983 () Bool)

(assert (=> b!439558 (=> (not res!194983) (not e!268554))))

(declare-fun lt!193538 () Rule!1470)

(assert (=> b!439558 (= res!194983 (matchR!377 (regex!835 lt!193538) lt!193531))))

(declare-datatypes ((Option!1089 0))(
  ( (None!1088) (Some!1088 (v!15363 Rule!1470)) )
))
(declare-fun lt!193539 () Option!1089)

(declare-fun get!1558 (Option!1089) Rule!1470)

(assert (=> b!439558 (= lt!193538 (get!1558 lt!193539))))

(declare-fun b!439559 () Bool)

(declare-fun e!268571 () Bool)

(declare-fun e!268540 () Bool)

(assert (=> b!439559 (= e!268571 e!268540)))

(declare-fun res!194966 () Bool)

(assert (=> b!439559 (=> res!194966 e!268540)))

(assert (=> b!439559 (= res!194966 e!268564)))

(declare-fun res!194965 () Bool)

(assert (=> b!439559 (=> (not res!194965) (not e!268564))))

(assert (=> b!439559 (= res!194965 (not lt!193528))))

(declare-fun lt!193543 () List!4325)

(assert (=> b!439559 (= lt!193528 (= lt!193548 lt!193543))))

(declare-fun b!439560 () Bool)

(declare-fun res!194956 () Bool)

(assert (=> b!439560 (=> (not res!194956) (not e!268563))))

(declare-fun rulesProduceIndividualToken!470 (LexerInterface!721 List!4326 Token!1414) Bool)

(assert (=> b!439560 (= res!194956 (rulesProduceIndividualToken!470 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!124266 () Bool)

(declare-fun e!268539 () Bool)

(declare-fun e!268576 () Bool)

(declare-fun b!439561 () Bool)

(declare-fun inv!5381 (Token!1414) Bool)

(assert (=> b!439561 (= e!268539 (and (inv!5381 (h!9714 tokens!465)) e!268576 tp!124266))))

(declare-fun tp!124272 () Bool)

(declare-fun b!439562 () Bool)

(declare-fun e!268549 () Bool)

(assert (=> b!439562 (= e!268549 (and tp!124272 (inv!5377 (tag!1087 (rule!1510 (h!9714 tokens!465)))) (inv!5380 (transformation!835 (rule!1510 (h!9714 tokens!465)))) e!268557))))

(declare-fun b!439540 () Bool)

(declare-fun tp!124273 () Bool)

(declare-fun inv!21 (TokenValue!857) Bool)

(assert (=> b!439540 (= e!268576 (and (inv!21 (value!28113 (h!9714 tokens!465))) e!268549 tp!124273))))

(declare-fun res!194972 () Bool)

(declare-fun e!268541 () Bool)

(assert (=> start!41462 (=> (not res!194972) (not e!268541))))

(assert (=> start!41462 (= res!194972 ((_ is Lexer!719) thiss!17480))))

(assert (=> start!41462 e!268541))

(assert (=> start!41462 true))

(assert (=> start!41462 e!268560))

(declare-fun e!268556 () Bool)

(assert (=> start!41462 (and (inv!5381 separatorToken!170) e!268556)))

(assert (=> start!41462 e!268539))

(declare-fun b!439563 () Bool)

(declare-fun res!194987 () Bool)

(declare-fun e!268551 () Bool)

(assert (=> b!439563 (=> res!194987 e!268551)))

(declare-fun lt!193505 () tuple2!5186)

(declare-fun isEmpty!3230 (List!4325) Bool)

(assert (=> b!439563 (= res!194987 (not (isEmpty!3230 (_2!2809 lt!193505))))))

(declare-fun b!439564 () Bool)

(declare-fun res!194985 () Bool)

(assert (=> b!439564 (=> (not res!194985) (not e!268563))))

(assert (=> b!439564 (= res!194985 ((_ is Cons!4317) tokens!465))))

(assert (=> b!439565 (= e!268542 (and tp!124263 tp!124270))))

(declare-fun b!439566 () Bool)

(assert (=> b!439566 (= e!268551 e!268547)))

(declare-fun res!194962 () Bool)

(assert (=> b!439566 (=> res!194962 e!268547)))

(assert (=> b!439566 (= res!194962 (not (matchR!377 (regex!835 (rule!1510 separatorToken!170)) lt!193531)))))

(declare-fun ruleValid!128 (LexerInterface!721 Rule!1470) Bool)

(assert (=> b!439566 (ruleValid!128 thiss!17480 (rule!1510 separatorToken!170))))

(declare-fun lt!193534 () Unit!7623)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!8 (LexerInterface!721 Rule!1470 List!4326) Unit!7623)

(assert (=> b!439566 (= lt!193534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!8 thiss!17480 (rule!1510 separatorToken!170) rules!1920))))

(declare-fun tp!124269 () Bool)

(declare-fun b!439567 () Bool)

(assert (=> b!439567 (= e!268556 (and (inv!21 (value!28113 separatorToken!170)) e!268566 tp!124269))))

(declare-fun b!439568 () Bool)

(assert (=> b!439568 (= e!268541 e!268563)))

(declare-fun res!194992 () Bool)

(assert (=> b!439568 (=> (not res!194992) (not e!268563))))

(declare-fun lt!193520 () BalanceConc!2994)

(declare-fun rulesProduceEachTokenIndividually!513 (LexerInterface!721 List!4326 BalanceConc!2994) Bool)

(assert (=> b!439568 (= res!194992 (rulesProduceEachTokenIndividually!513 thiss!17480 rules!1920 lt!193520))))

(declare-fun seqFromList!1036 (List!4327) BalanceConc!2994)

(assert (=> b!439568 (= lt!193520 (seqFromList!1036 tokens!465))))

(declare-fun b!439569 () Bool)

(assert (=> b!439569 (= e!268543 false)))

(declare-fun b!439570 () Bool)

(assert (=> b!439570 (= e!268554 (= (rule!1510 separatorToken!170) lt!193538))))

(declare-fun b!439571 () Bool)

(declare-fun e!268570 () Bool)

(declare-fun e!268572 () Bool)

(assert (=> b!439571 (= e!268570 e!268572)))

(declare-fun res!194955 () Bool)

(assert (=> b!439571 (=> (not res!194955) (not e!268572))))

(declare-fun lt!193550 () Rule!1470)

(assert (=> b!439571 (= res!194955 (matchR!377 (regex!835 lt!193550) lt!193527))))

(declare-fun lt!193521 () Option!1089)

(assert (=> b!439571 (= lt!193550 (get!1558 lt!193521))))

(declare-fun b!439572 () Bool)

(declare-fun res!194970 () Bool)

(assert (=> b!439572 (=> res!194970 e!268547)))

(assert (=> b!439572 (= res!194970 (isEmpty!3230 lt!193535))))

(declare-fun b!439573 () Bool)

(assert (=> b!439573 (= e!268540 e!268574)))

(declare-fun res!194969 () Bool)

(assert (=> b!439573 (=> res!194969 e!268574)))

(declare-fun lt!193511 () List!4325)

(declare-fun lt!193526 () List!4325)

(assert (=> b!439573 (= res!194969 (or (not (= lt!193526 lt!193511)) (not (= lt!193511 lt!193518)) (not (= lt!193526 lt!193518))))))

(declare-fun printList!395 (LexerInterface!721 List!4327) List!4325)

(assert (=> b!439573 (= lt!193511 (printList!395 thiss!17480 (Cons!4317 (h!9714 tokens!465) Nil!4317)))))

(declare-fun lt!193533 () BalanceConc!2992)

(assert (=> b!439573 (= lt!193526 (list!1905 lt!193533))))

(declare-fun lt!193507 () BalanceConc!2994)

(declare-fun printTailRec!407 (LexerInterface!721 BalanceConc!2994 Int BalanceConc!2992) BalanceConc!2992)

(assert (=> b!439573 (= lt!193533 (printTailRec!407 thiss!17480 lt!193507 0 (BalanceConc!2993 Empty!1492)))))

(declare-fun print!446 (LexerInterface!721 BalanceConc!2994) BalanceConc!2992)

(assert (=> b!439573 (= lt!193533 (print!446 thiss!17480 lt!193507))))

(declare-fun singletonSeq!381 (Token!1414) BalanceConc!2994)

(assert (=> b!439573 (= lt!193507 (singletonSeq!381 (h!9714 tokens!465)))))

(declare-fun b!439574 () Bool)

(declare-fun res!194989 () Bool)

(assert (=> b!439574 (=> (not res!194989) (not e!268541))))

(declare-fun isEmpty!3231 (List!4326) Bool)

(assert (=> b!439574 (= res!194989 (not (isEmpty!3231 rules!1920)))))

(declare-fun e!268575 () Bool)

(assert (=> b!439575 (= e!268575 (and tp!124265 tp!124274))))

(declare-fun b!439576 () Bool)

(assert (=> b!439576 (= e!268568 e!268548)))

(declare-fun res!194961 () Bool)

(assert (=> b!439576 (=> res!194961 e!268548)))

(declare-fun contains!948 (List!4326 Rule!1470) Bool)

(assert (=> b!439576 (= res!194961 (not (contains!948 rules!1920 (rule!1510 separatorToken!170))))))

(declare-fun lt!193552 () Unit!7623)

(assert (=> b!439576 (= lt!193552 e!268559)))

(declare-fun c!88965 () Bool)

(assert (=> b!439576 (= c!88965 lt!193541)))

(declare-fun lt!193512 () C!3040)

(declare-fun contains!949 (List!4325 C!3040) Bool)

(declare-fun usedCharacters!136 (Regex!1059) List!4325)

(assert (=> b!439576 (= lt!193541 (contains!949 (usedCharacters!136 (regex!835 (rule!1510 separatorToken!170))) lt!193512))))

(declare-fun head!1072 (List!4325) C!3040)

(assert (=> b!439576 (= lt!193512 (head!1072 lt!193535))))

(declare-fun lt!193522 () Unit!7623)

(assert (=> b!439576 (= lt!193522 e!268567)))

(declare-fun c!88966 () Bool)

(assert (=> b!439576 (= c!88966 (not (contains!949 (usedCharacters!136 (regex!835 (rule!1510 lt!193516))) lt!193536)))))

(assert (=> b!439576 (= lt!193536 (head!1072 lt!193527))))

(assert (=> b!439576 e!268570))

(declare-fun res!194953 () Bool)

(assert (=> b!439576 (=> (not res!194953) (not e!268570))))

(declare-fun isDefined!928 (Option!1089) Bool)

(assert (=> b!439576 (= res!194953 (isDefined!928 lt!193521))))

(declare-fun getRuleFromTag!194 (LexerInterface!721 List!4326 String!5365) Option!1089)

(assert (=> b!439576 (= lt!193521 (getRuleFromTag!194 thiss!17480 rules!1920 (tag!1087 (rule!1510 lt!193516))))))

(declare-fun lt!193540 () Unit!7623)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!194 (LexerInterface!721 List!4326 List!4325 Token!1414) Unit!7623)

(assert (=> b!439576 (= lt!193540 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!194 thiss!17480 rules!1920 lt!193527 lt!193516))))

(declare-fun charsOf!478 (Token!1414) BalanceConc!2992)

(assert (=> b!439576 (= lt!193527 (list!1905 (charsOf!478 lt!193516)))))

(declare-fun lt!193514 () Unit!7623)

(assert (=> b!439576 (= lt!193514 (forallContained!388 tokens!465 lambda!12762 lt!193516))))

(assert (=> b!439576 e!268562))

(declare-fun res!194957 () Bool)

(assert (=> b!439576 (=> (not res!194957) (not e!268562))))

(declare-fun size!3539 (BalanceConc!2994) Int)

(assert (=> b!439576 (= res!194957 (= (size!3539 (_1!2810 lt!193517)) 1))))

(declare-fun lt!193519 () BalanceConc!2992)

(declare-fun lex!513 (LexerInterface!721 List!4326 BalanceConc!2992) tuple2!5188)

(assert (=> b!439576 (= lt!193517 (lex!513 thiss!17480 rules!1920 lt!193519))))

(declare-fun lt!193544 () BalanceConc!2994)

(assert (=> b!439576 (= lt!193519 (printTailRec!407 thiss!17480 lt!193544 0 (BalanceConc!2993 Empty!1492)))))

(assert (=> b!439576 (= lt!193519 (print!446 thiss!17480 lt!193544))))

(assert (=> b!439576 (= lt!193544 (singletonSeq!381 lt!193516))))

(assert (=> b!439576 e!268546))

(declare-fun res!194977 () Bool)

(assert (=> b!439576 (=> (not res!194977) (not e!268546))))

(assert (=> b!439576 (= res!194977 (isDefined!928 lt!193539))))

(assert (=> b!439576 (= lt!193539 (getRuleFromTag!194 thiss!17480 rules!1920 (tag!1087 (rule!1510 separatorToken!170))))))

(declare-fun lt!193523 () Unit!7623)

(assert (=> b!439576 (= lt!193523 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!194 thiss!17480 rules!1920 lt!193531 separatorToken!170))))

(assert (=> b!439576 e!268538))

(declare-fun res!194990 () Bool)

(assert (=> b!439576 (=> (not res!194990) (not e!268538))))

(assert (=> b!439576 (= res!194990 (= (size!3539 (_1!2810 lt!193547)) 1))))

(declare-fun lt!193537 () BalanceConc!2992)

(assert (=> b!439576 (= lt!193547 (lex!513 thiss!17480 rules!1920 lt!193537))))

(declare-fun lt!193524 () BalanceConc!2994)

(assert (=> b!439576 (= lt!193537 (printTailRec!407 thiss!17480 lt!193524 0 (BalanceConc!2993 Empty!1492)))))

(assert (=> b!439576 (= lt!193537 (print!446 thiss!17480 lt!193524))))

(assert (=> b!439576 (= lt!193524 (singletonSeq!381 separatorToken!170))))

(assert (=> b!439576 (rulesProduceIndividualToken!470 thiss!17480 rules!1920 lt!193516)))

(declare-fun lt!193549 () Unit!7623)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!184 (LexerInterface!721 List!4326 List!4327 Token!1414) Unit!7623)

(assert (=> b!439576 (= lt!193549 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!184 thiss!17480 rules!1920 tokens!465 lt!193516))))

(assert (=> b!439576 (= lt!193516 (head!1071 (t!69443 tokens!465)))))

(declare-fun lt!193542 () Unit!7623)

(assert (=> b!439576 (= lt!193542 e!268577)))

(declare-fun c!88967 () Bool)

(declare-fun isEmpty!3232 (List!4327) Bool)

(assert (=> b!439576 (= c!88967 (isEmpty!3232 (t!69443 tokens!465)))))

(declare-fun lt!193545 () Option!1087)

(declare-fun lt!193506 () List!4325)

(assert (=> b!439576 (= lt!193545 (maxPrefix!437 thiss!17480 rules!1920 lt!193506))))

(declare-fun lt!193515 () tuple2!5186)

(assert (=> b!439576 (= lt!193506 (_2!2809 lt!193515))))

(declare-fun lt!193554 () Unit!7623)

(declare-fun lemmaSamePrefixThenSameSuffix!280 (List!4325 List!4325 List!4325 List!4325 List!4325) Unit!7623)

(assert (=> b!439576 (= lt!193554 (lemmaSamePrefixThenSameSuffix!280 lt!193518 lt!193506 lt!193518 (_2!2809 lt!193515) lt!193548))))

(assert (=> b!439576 (= lt!193515 (get!1557 (maxPrefix!437 thiss!17480 rules!1920 lt!193548)))))

(declare-fun isPrefix!495 (List!4325 List!4325) Bool)

(assert (=> b!439576 (isPrefix!495 lt!193518 lt!193543)))

(declare-fun lt!193529 () Unit!7623)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!386 (List!4325 List!4325) Unit!7623)

(assert (=> b!439576 (= lt!193529 (lemmaConcatTwoListThenFirstIsPrefix!386 lt!193518 lt!193506))))

(declare-fun e!268545 () Bool)

(assert (=> b!439576 e!268545))

(declare-fun res!194988 () Bool)

(assert (=> b!439576 (=> res!194988 e!268545)))

(assert (=> b!439576 (= res!194988 (isEmpty!3232 tokens!465))))

(declare-fun lt!193546 () Unit!7623)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!242 (LexerInterface!721 List!4326 List!4327 Token!1414) Unit!7623)

(assert (=> b!439576 (= lt!193546 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!242 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!439577 () Bool)

(declare-fun res!194954 () Bool)

(assert (=> b!439577 (=> res!194954 e!268548)))

(assert (=> b!439577 (= res!194954 (isSeparator!835 (rule!1510 lt!193516)))))

(declare-fun b!439578 () Bool)

(assert (=> b!439578 (= e!268545 e!268550)))

(declare-fun res!194986 () Bool)

(assert (=> b!439578 (=> (not res!194986) (not e!268550))))

(assert (=> b!439578 (= res!194986 (isDefined!926 lt!193509))))

(assert (=> b!439578 (= lt!193509 (maxPrefix!437 thiss!17480 rules!1920 lt!193548))))

(declare-fun b!439579 () Bool)

(declare-fun tp!124264 () Bool)

(assert (=> b!439579 (= e!268561 (and tp!124264 (inv!5377 (tag!1087 (h!9713 rules!1920))) (inv!5380 (transformation!835 (h!9713 rules!1920))) e!268575))))

(declare-fun b!439580 () Bool)

(declare-fun res!194973 () Bool)

(assert (=> b!439580 (=> (not res!194973) (not e!268563))))

(assert (=> b!439580 (= res!194973 (isSeparator!835 (rule!1510 separatorToken!170)))))

(declare-fun b!439581 () Bool)

(assert (=> b!439581 (= e!268565 e!268551)))

(declare-fun res!194978 () Bool)

(assert (=> b!439581 (=> res!194978 e!268551)))

(assert (=> b!439581 (= res!194978 (not (= (_1!2809 lt!193505) separatorToken!170)))))

(assert (=> b!439581 (= lt!193505 (get!1557 lt!193525))))

(declare-fun b!439582 () Bool)

(assert (=> b!439582 (= e!268563 e!268553)))

(declare-fun res!194982 () Bool)

(assert (=> b!439582 (=> (not res!194982) (not e!268553))))

(assert (=> b!439582 (= res!194982 (= lt!193548 lt!193504))))

(declare-fun printWithSeparatorTokenWhenNeededRec!394 (LexerInterface!721 List!4326 BalanceConc!2994 Token!1414 Int) BalanceConc!2992)

(assert (=> b!439582 (= lt!193504 (list!1905 (printWithSeparatorTokenWhenNeededRec!394 thiss!17480 rules!1920 lt!193520 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!402 (LexerInterface!721 List!4326 List!4327 Token!1414) List!4325)

(assert (=> b!439582 (= lt!193548 (printWithSeparatorTokenWhenNeededList!402 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!439583 () Bool)

(declare-fun res!194981 () Bool)

(assert (=> b!439583 (=> (not res!194981) (not e!268541))))

(declare-fun rulesInvariant!687 (LexerInterface!721 List!4326) Bool)

(assert (=> b!439583 (= res!194981 (rulesInvariant!687 thiss!17480 rules!1920))))

(declare-fun b!439584 () Bool)

(declare-fun res!194974 () Bool)

(assert (=> b!439584 (=> (not res!194974) (not e!268563))))

(declare-fun sepAndNonSepRulesDisjointChars!424 (List!4326 List!4326) Bool)

(assert (=> b!439584 (= res!194974 (sepAndNonSepRulesDisjointChars!424 rules!1920 rules!1920))))

(declare-fun b!439585 () Bool)

(declare-fun res!194964 () Bool)

(assert (=> b!439585 (=> res!194964 e!268548)))

(assert (=> b!439585 (= res!194964 (not (contains!948 rules!1920 (rule!1510 lt!193516))))))

(declare-fun b!439586 () Bool)

(declare-fun Unit!7629 () Unit!7623)

(assert (=> b!439586 (= e!268567 Unit!7629)))

(declare-fun b!439587 () Bool)

(declare-fun Unit!7630 () Unit!7623)

(assert (=> b!439587 (= e!268559 Unit!7630)))

(declare-fun lt!193508 () Unit!7623)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!94 (LexerInterface!721 List!4326 List!4326 Rule!1470 Rule!1470 C!3040) Unit!7623)

(assert (=> b!439587 (= lt!193508 (lemmaSepRuleNotContainsCharContainedInANonSepRule!94 thiss!17480 rules!1920 rules!1920 (rule!1510 lt!193516) (rule!1510 separatorToken!170) lt!193512))))

(assert (=> b!439587 false))

(declare-fun b!439588 () Bool)

(declare-fun res!194967 () Bool)

(assert (=> b!439588 (=> res!194967 e!268574)))

(declare-fun isEmpty!3233 (BalanceConc!2994) Bool)

(assert (=> b!439588 (= res!194967 (isEmpty!3233 (_1!2810 (lex!513 thiss!17480 rules!1920 (seqFromList!1035 lt!193518)))))))

(declare-fun b!439589 () Bool)

(assert (=> b!439589 (= e!268572 (= (rule!1510 lt!193516) lt!193550))))

(declare-fun b!439590 () Bool)

(declare-fun res!194976 () Bool)

(assert (=> b!439590 (=> res!194976 e!268574)))

(assert (=> b!439590 (= res!194976 (not (rulesProduceIndividualToken!470 thiss!17480 rules!1920 (h!9714 tokens!465))))))

(declare-fun b!439591 () Bool)

(declare-fun res!194960 () Bool)

(assert (=> b!439591 (=> (not res!194960) (not e!268569))))

(assert (=> b!439591 (= res!194960 (isEmpty!3230 (_2!2809 lt!193530)))))

(declare-fun b!439592 () Bool)

(declare-fun res!194959 () Bool)

(assert (=> b!439592 (=> (not res!194959) (not e!268538))))

(assert (=> b!439592 (= res!194959 (= (apply!1078 (_1!2810 lt!193547) 0) separatorToken!170))))

(declare-fun b!439593 () Bool)

(assert (=> b!439593 (= e!268553 (not e!268571))))

(declare-fun res!194980 () Bool)

(assert (=> b!439593 (=> res!194980 e!268571)))

(assert (=> b!439593 (= res!194980 (not (= lt!193535 (list!1905 (printWithSeparatorTokenWhenNeededRec!394 thiss!17480 rules!1920 (seqFromList!1036 (t!69443 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!193510 () List!4325)

(assert (=> b!439593 (= lt!193510 lt!193543)))

(assert (=> b!439593 (= lt!193543 (++!1242 lt!193518 lt!193506))))

(assert (=> b!439593 (= lt!193510 (++!1242 (++!1242 lt!193518 lt!193531) lt!193535))))

(declare-fun lt!193532 () Unit!7623)

(declare-fun lemmaConcatAssociativity!566 (List!4325 List!4325 List!4325) Unit!7623)

(assert (=> b!439593 (= lt!193532 (lemmaConcatAssociativity!566 lt!193518 lt!193531 lt!193535))))

(assert (=> b!439593 (= lt!193518 (list!1905 (charsOf!478 (h!9714 tokens!465))))))

(assert (=> b!439593 (= lt!193506 (++!1242 lt!193531 lt!193535))))

(assert (=> b!439593 (= lt!193535 (printWithSeparatorTokenWhenNeededList!402 thiss!17480 rules!1920 (t!69443 tokens!465) separatorToken!170))))

(assert (=> b!439593 (= lt!193531 (list!1905 (charsOf!478 separatorToken!170)))))

(assert (= (and start!41462 res!194972) b!439574))

(assert (= (and b!439574 res!194989) b!439583))

(assert (= (and b!439583 res!194981) b!439568))

(assert (= (and b!439568 res!194992) b!439560))

(assert (= (and b!439560 res!194956) b!439580))

(assert (= (and b!439580 res!194973) b!439554))

(assert (= (and b!439554 res!194968) b!439584))

(assert (= (and b!439584 res!194974) b!439564))

(assert (= (and b!439564 res!194985) b!439582))

(assert (= (and b!439582 res!194982) b!439546))

(assert (= (and b!439546 res!194984) b!439593))

(assert (= (and b!439593 (not res!194980)) b!439559))

(assert (= (and b!439559 res!194965) b!439550))

(assert (= (and b!439559 (not res!194966)) b!439573))

(assert (= (and b!439573 (not res!194969)) b!439590))

(assert (= (and b!439590 (not res!194976)) b!439588))

(assert (= (and b!439588 (not res!194967)) b!439548))

(assert (= (and b!439548 (not res!194963)) b!439555))

(assert (= (and b!439555 res!194979) b!439591))

(assert (= (and b!439591 res!194960) b!439545))

(assert (= (and b!439555 (not res!194975)) b!439576))

(assert (= (and b!439576 (not res!194988)) b!439578))

(assert (= (and b!439578 res!194986) b!439549))

(assert (= (and b!439576 c!88967) b!439543))

(assert (= (and b!439576 (not c!88967)) b!439539))

(assert (= (and b!439576 res!194990) b!439592))

(assert (= (and b!439592 res!194959) b!439547))

(assert (= (and b!439576 res!194977) b!439558))

(assert (= (and b!439558 res!194983) b!439570))

(assert (= (and b!439576 res!194957) b!439551))

(assert (= (and b!439551 res!194991) b!439556))

(assert (= (and b!439576 res!194953) b!439571))

(assert (= (and b!439571 res!194955) b!439589))

(assert (= (and b!439576 c!88966) b!439541))

(assert (= (and b!439576 (not c!88966)) b!439586))

(assert (= (and b!439541 res!194971) b!439569))

(assert (= (and b!439576 c!88965) b!439587))

(assert (= (and b!439576 (not c!88965)) b!439538))

(assert (= (and b!439576 (not res!194961)) b!439585))

(assert (= (and b!439585 (not res!194964)) b!439577))

(assert (= (and b!439577 (not res!194954)) b!439542))

(assert (= (and b!439542 (not res!194958)) b!439581))

(assert (= (and b!439581 (not res!194978)) b!439563))

(assert (= (and b!439563 (not res!194987)) b!439566))

(assert (= (and b!439566 (not res!194962)) b!439572))

(assert (= (and b!439572 (not res!194970)) b!439553))

(assert (= b!439579 b!439575))

(assert (= b!439552 b!439579))

(assert (= (and start!41462 ((_ is Cons!4316) rules!1920)) b!439552))

(assert (= b!439544 b!439565))

(assert (= b!439567 b!439544))

(assert (= start!41462 b!439567))

(assert (= b!439562 b!439557))

(assert (= b!439540 b!439562))

(assert (= b!439561 b!439540))

(assert (= (and start!41462 ((_ is Cons!4317) tokens!465)) b!439561))

(declare-fun m!691717 () Bool)

(assert (=> b!439583 m!691717))

(declare-fun m!691719 () Bool)

(assert (=> b!439592 m!691719))

(declare-fun m!691721 () Bool)

(assert (=> b!439573 m!691721))

(declare-fun m!691723 () Bool)

(assert (=> b!439573 m!691723))

(declare-fun m!691725 () Bool)

(assert (=> b!439573 m!691725))

(declare-fun m!691727 () Bool)

(assert (=> b!439573 m!691727))

(declare-fun m!691729 () Bool)

(assert (=> b!439573 m!691729))

(declare-fun m!691731 () Bool)

(assert (=> b!439590 m!691731))

(declare-fun m!691733 () Bool)

(assert (=> b!439588 m!691733))

(assert (=> b!439588 m!691733))

(declare-fun m!691735 () Bool)

(assert (=> b!439588 m!691735))

(declare-fun m!691737 () Bool)

(assert (=> b!439588 m!691737))

(declare-fun m!691739 () Bool)

(assert (=> b!439593 m!691739))

(declare-fun m!691741 () Bool)

(assert (=> b!439593 m!691741))

(declare-fun m!691743 () Bool)

(assert (=> b!439593 m!691743))

(declare-fun m!691745 () Bool)

(assert (=> b!439593 m!691745))

(declare-fun m!691747 () Bool)

(assert (=> b!439593 m!691747))

(declare-fun m!691749 () Bool)

(assert (=> b!439593 m!691749))

(assert (=> b!439593 m!691747))

(declare-fun m!691751 () Bool)

(assert (=> b!439593 m!691751))

(assert (=> b!439593 m!691739))

(declare-fun m!691753 () Bool)

(assert (=> b!439593 m!691753))

(declare-fun m!691755 () Bool)

(assert (=> b!439593 m!691755))

(declare-fun m!691757 () Bool)

(assert (=> b!439593 m!691757))

(assert (=> b!439593 m!691741))

(declare-fun m!691759 () Bool)

(assert (=> b!439593 m!691759))

(assert (=> b!439593 m!691755))

(declare-fun m!691761 () Bool)

(assert (=> b!439593 m!691761))

(assert (=> b!439593 m!691753))

(declare-fun m!691763 () Bool)

(assert (=> b!439593 m!691763))

(declare-fun m!691765 () Bool)

(assert (=> b!439587 m!691765))

(declare-fun m!691767 () Bool)

(assert (=> b!439548 m!691767))

(assert (=> b!439548 m!691767))

(declare-fun m!691769 () Bool)

(assert (=> b!439548 m!691769))

(assert (=> b!439548 m!691769))

(declare-fun m!691771 () Bool)

(assert (=> b!439548 m!691771))

(declare-fun m!691773 () Bool)

(assert (=> b!439548 m!691773))

(declare-fun m!691775 () Bool)

(assert (=> b!439551 m!691775))

(declare-fun m!691777 () Bool)

(assert (=> b!439571 m!691777))

(declare-fun m!691779 () Bool)

(assert (=> b!439571 m!691779))

(declare-fun m!691781 () Bool)

(assert (=> start!41462 m!691781))

(declare-fun m!691783 () Bool)

(assert (=> b!439554 m!691783))

(declare-fun m!691785 () Bool)

(assert (=> b!439567 m!691785))

(declare-fun m!691787 () Bool)

(assert (=> b!439540 m!691787))

(declare-fun m!691789 () Bool)

(assert (=> b!439560 m!691789))

(declare-fun m!691791 () Bool)

(assert (=> b!439576 m!691791))

(declare-fun m!691793 () Bool)

(assert (=> b!439576 m!691793))

(declare-fun m!691795 () Bool)

(assert (=> b!439576 m!691795))

(declare-fun m!691797 () Bool)

(assert (=> b!439576 m!691797))

(declare-fun m!691799 () Bool)

(assert (=> b!439576 m!691799))

(declare-fun m!691801 () Bool)

(assert (=> b!439576 m!691801))

(declare-fun m!691803 () Bool)

(assert (=> b!439576 m!691803))

(declare-fun m!691805 () Bool)

(assert (=> b!439576 m!691805))

(declare-fun m!691807 () Bool)

(assert (=> b!439576 m!691807))

(declare-fun m!691809 () Bool)

(assert (=> b!439576 m!691809))

(declare-fun m!691811 () Bool)

(assert (=> b!439576 m!691811))

(declare-fun m!691813 () Bool)

(assert (=> b!439576 m!691813))

(declare-fun m!691815 () Bool)

(assert (=> b!439576 m!691815))

(declare-fun m!691817 () Bool)

(assert (=> b!439576 m!691817))

(declare-fun m!691819 () Bool)

(assert (=> b!439576 m!691819))

(declare-fun m!691821 () Bool)

(assert (=> b!439576 m!691821))

(declare-fun m!691823 () Bool)

(assert (=> b!439576 m!691823))

(declare-fun m!691825 () Bool)

(assert (=> b!439576 m!691825))

(declare-fun m!691827 () Bool)

(assert (=> b!439576 m!691827))

(declare-fun m!691829 () Bool)

(assert (=> b!439576 m!691829))

(declare-fun m!691831 () Bool)

(assert (=> b!439576 m!691831))

(declare-fun m!691833 () Bool)

(assert (=> b!439576 m!691833))

(declare-fun m!691835 () Bool)

(assert (=> b!439576 m!691835))

(declare-fun m!691837 () Bool)

(assert (=> b!439576 m!691837))

(assert (=> b!439576 m!691791))

(declare-fun m!691839 () Bool)

(assert (=> b!439576 m!691839))

(declare-fun m!691841 () Bool)

(assert (=> b!439576 m!691841))

(declare-fun m!691843 () Bool)

(assert (=> b!439576 m!691843))

(assert (=> b!439576 m!691841))

(declare-fun m!691845 () Bool)

(assert (=> b!439576 m!691845))

(declare-fun m!691847 () Bool)

(assert (=> b!439576 m!691847))

(declare-fun m!691849 () Bool)

(assert (=> b!439576 m!691849))

(declare-fun m!691851 () Bool)

(assert (=> b!439576 m!691851))

(assert (=> b!439576 m!691829))

(declare-fun m!691853 () Bool)

(assert (=> b!439576 m!691853))

(declare-fun m!691855 () Bool)

(assert (=> b!439576 m!691855))

(declare-fun m!691857 () Bool)

(assert (=> b!439576 m!691857))

(declare-fun m!691859 () Bool)

(assert (=> b!439576 m!691859))

(declare-fun m!691861 () Bool)

(assert (=> b!439576 m!691861))

(declare-fun m!691863 () Bool)

(assert (=> b!439576 m!691863))

(declare-fun m!691865 () Bool)

(assert (=> b!439576 m!691865))

(assert (=> b!439576 m!691799))

(declare-fun m!691867 () Bool)

(assert (=> b!439578 m!691867))

(assert (=> b!439578 m!691841))

(declare-fun m!691869 () Bool)

(assert (=> b!439582 m!691869))

(assert (=> b!439582 m!691869))

(declare-fun m!691871 () Bool)

(assert (=> b!439582 m!691871))

(declare-fun m!691873 () Bool)

(assert (=> b!439582 m!691873))

(declare-fun m!691875 () Bool)

(assert (=> b!439566 m!691875))

(declare-fun m!691877 () Bool)

(assert (=> b!439566 m!691877))

(declare-fun m!691879 () Bool)

(assert (=> b!439566 m!691879))

(declare-fun m!691881 () Bool)

(assert (=> b!439568 m!691881))

(declare-fun m!691883 () Bool)

(assert (=> b!439568 m!691883))

(declare-fun m!691885 () Bool)

(assert (=> b!439574 m!691885))

(declare-fun m!691887 () Bool)

(assert (=> b!439558 m!691887))

(declare-fun m!691889 () Bool)

(assert (=> b!439558 m!691889))

(declare-fun m!691891 () Bool)

(assert (=> b!439585 m!691891))

(declare-fun m!691893 () Bool)

(assert (=> b!439555 m!691893))

(declare-fun m!691895 () Bool)

(assert (=> b!439555 m!691895))

(declare-fun m!691897 () Bool)

(assert (=> b!439555 m!691897))

(declare-fun m!691899 () Bool)

(assert (=> b!439556 m!691899))

(declare-fun m!691901 () Bool)

(assert (=> b!439549 m!691901))

(declare-fun m!691903 () Bool)

(assert (=> b!439549 m!691903))

(declare-fun m!691905 () Bool)

(assert (=> b!439542 m!691905))

(declare-fun m!691907 () Bool)

(assert (=> b!439542 m!691907))

(declare-fun m!691909 () Bool)

(assert (=> b!439584 m!691909))

(declare-fun m!691911 () Bool)

(assert (=> b!439550 m!691911))

(declare-fun m!691913 () Bool)

(assert (=> b!439572 m!691913))

(declare-fun m!691915 () Bool)

(assert (=> b!439541 m!691915))

(declare-fun m!691917 () Bool)

(assert (=> b!439541 m!691917))

(declare-fun m!691919 () Bool)

(assert (=> b!439544 m!691919))

(declare-fun m!691921 () Bool)

(assert (=> b!439544 m!691921))

(declare-fun m!691923 () Bool)

(assert (=> b!439591 m!691923))

(declare-fun m!691925 () Bool)

(assert (=> b!439561 m!691925))

(declare-fun m!691927 () Bool)

(assert (=> b!439546 m!691927))

(assert (=> b!439546 m!691927))

(declare-fun m!691929 () Bool)

(assert (=> b!439546 m!691929))

(declare-fun m!691931 () Bool)

(assert (=> b!439562 m!691931))

(declare-fun m!691933 () Bool)

(assert (=> b!439562 m!691933))

(declare-fun m!691935 () Bool)

(assert (=> b!439579 m!691935))

(declare-fun m!691937 () Bool)

(assert (=> b!439579 m!691937))

(declare-fun m!691939 () Bool)

(assert (=> b!439545 m!691939))

(declare-fun m!691941 () Bool)

(assert (=> b!439581 m!691941))

(declare-fun m!691943 () Bool)

(assert (=> b!439563 m!691943))

(declare-fun m!691945 () Bool)

(assert (=> b!439547 m!691945))

(check-sat (not b!439560) (not b!439556) (not b!439566) (not b!439588) (not b!439541) (not b!439585) (not b!439555) (not b!439584) (not b!439552) (not b!439562) (not b!439592) (not b!439581) (not b!439582) (not b!439576) (not b!439593) (not b!439587) (not b!439545) b_and!47347 (not b!439591) b_and!47341 (not b!439602) (not b!439551) (not b!439572) (not b!439544) (not b!439578) (not b_next!12273) (not b!439573) (not b!439540) b_and!47343 (not b!439563) (not b!439549) (not b_next!12277) (not b!439554) (not b!439574) (not b!439561) (not b_next!12279) (not b!439550) (not b!439568) (not b!439547) (not b!439571) (not b!439579) (not b!439546) b_and!47337 (not b!439558) (not b!439548) (not b!439583) b_and!47345 (not b!439590) (not b_next!12283) (not b_next!12275) (not b!439567) b_and!47339 (not start!41462) (not b!439542) (not b_next!12281))
(check-sat b_and!47347 b_and!47341 (not b_next!12273) b_and!47343 (not b_next!12277) (not b_next!12279) b_and!47337 b_and!47345 b_and!47339 (not b_next!12281) (not b_next!12283) (not b_next!12275))
