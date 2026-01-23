; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32926 () Bool)

(assert start!32926)

(declare-fun b!306155 () Bool)

(declare-fun b_free!10953 () Bool)

(declare-fun b_next!10953 () Bool)

(assert (=> b!306155 (= b_free!10953 (not b_next!10953))))

(declare-fun tp!108687 () Bool)

(declare-fun b_and!25853 () Bool)

(assert (=> b!306155 (= tp!108687 b_and!25853)))

(declare-fun b_free!10955 () Bool)

(declare-fun b_next!10955 () Bool)

(assert (=> b!306155 (= b_free!10955 (not b_next!10955))))

(declare-fun tp!108685 () Bool)

(declare-fun b_and!25855 () Bool)

(assert (=> b!306155 (= tp!108685 b_and!25855)))

(declare-fun b!306182 () Bool)

(declare-fun b_free!10957 () Bool)

(declare-fun b_next!10957 () Bool)

(assert (=> b!306182 (= b_free!10957 (not b_next!10957))))

(declare-fun tp!108689 () Bool)

(declare-fun b_and!25857 () Bool)

(assert (=> b!306182 (= tp!108689 b_and!25857)))

(declare-fun b_free!10959 () Bool)

(declare-fun b_next!10959 () Bool)

(assert (=> b!306182 (= b_free!10959 (not b_next!10959))))

(declare-fun tp!108688 () Bool)

(declare-fun b_and!25859 () Bool)

(assert (=> b!306182 (= tp!108688 b_and!25859)))

(declare-fun b!306183 () Bool)

(declare-fun b_free!10961 () Bool)

(declare-fun b_next!10961 () Bool)

(assert (=> b!306183 (= b_free!10961 (not b_next!10961))))

(declare-fun tp!108681 () Bool)

(declare-fun b_and!25861 () Bool)

(assert (=> b!306183 (= tp!108681 b_and!25861)))

(declare-fun b_free!10963 () Bool)

(declare-fun b_next!10963 () Bool)

(assert (=> b!306183 (= b_free!10963 (not b_next!10963))))

(declare-fun tp!108683 () Bool)

(declare-fun b_and!25863 () Bool)

(assert (=> b!306183 (= tp!108683 b_and!25863)))

(declare-fun bs!35390 () Bool)

(declare-fun b!306162 () Bool)

(declare-fun b!306150 () Bool)

(assert (= bs!35390 (and b!306162 b!306150)))

(declare-fun lambda!10434 () Int)

(declare-fun lambda!10433 () Int)

(assert (=> bs!35390 (not (= lambda!10434 lambda!10433))))

(declare-fun b!306194 () Bool)

(declare-fun e!190360 () Bool)

(assert (=> b!306194 (= e!190360 true)))

(declare-fun b!306193 () Bool)

(declare-fun e!190359 () Bool)

(assert (=> b!306193 (= e!190359 e!190360)))

(declare-fun b!306192 () Bool)

(declare-fun e!190358 () Bool)

(assert (=> b!306192 (= e!190358 e!190359)))

(assert (=> b!306162 e!190358))

(assert (= b!306193 b!306194))

(assert (= b!306192 b!306193))

(declare-datatypes ((List!4052 0))(
  ( (Nil!4042) (Cons!4042 (h!9439 (_ BitVec 16)) (t!43212 List!4052)) )
))
(declare-datatypes ((TokenValue!799 0))(
  ( (FloatLiteralValue!1598 (text!6038 List!4052)) (TokenValueExt!798 (__x!3085 Int)) (Broken!3995 (value!26434 List!4052)) (Object!808) (End!799) (Def!799) (Underscore!799) (Match!799) (Else!799) (Error!799) (Case!799) (If!799) (Extends!799) (Abstract!799) (Class!799) (Val!799) (DelimiterValue!1598 (del!859 List!4052)) (KeywordValue!805 (value!26435 List!4052)) (CommentValue!1598 (value!26436 List!4052)) (WhitespaceValue!1598 (value!26437 List!4052)) (IndentationValue!799 (value!26438 List!4052)) (String!5074) (Int32!799) (Broken!3996 (value!26439 List!4052)) (Boolean!800) (Unit!5655) (OperatorValue!802 (op!859 List!4052)) (IdentifierValue!1598 (value!26440 List!4052)) (IdentifierValue!1599 (value!26441 List!4052)) (WhitespaceValue!1599 (value!26442 List!4052)) (True!1598) (False!1598) (Broken!3997 (value!26443 List!4052)) (Broken!3998 (value!26444 List!4052)) (True!1599) (RightBrace!799) (RightBracket!799) (Colon!799) (Null!799) (Comma!799) (LeftBracket!799) (False!1599) (LeftBrace!799) (ImaginaryLiteralValue!799 (text!6039 List!4052)) (StringLiteralValue!2397 (value!26445 List!4052)) (EOFValue!799 (value!26446 List!4052)) (IdentValue!799 (value!26447 List!4052)) (DelimiterValue!1599 (value!26448 List!4052)) (DedentValue!799 (value!26449 List!4052)) (NewLineValue!799 (value!26450 List!4052)) (IntegerValue!2397 (value!26451 (_ BitVec 32)) (text!6040 List!4052)) (IntegerValue!2398 (value!26452 Int) (text!6041 List!4052)) (Times!799) (Or!799) (Equal!799) (Minus!799) (Broken!3999 (value!26453 List!4052)) (And!799) (Div!799) (LessEqual!799) (Mod!799) (Concat!1800) (Not!799) (Plus!799) (SpaceValue!799 (value!26454 List!4052)) (IntegerValue!2399 (value!26455 Int) (text!6042 List!4052)) (StringLiteralValue!2398 (text!6043 List!4052)) (FloatLiteralValue!1599 (text!6044 List!4052)) (BytesLiteralValue!799 (value!26456 List!4052)) (CommentValue!1599 (value!26457 List!4052)) (StringLiteralValue!2399 (value!26458 List!4052)) (ErrorTokenValue!799 (msg!860 List!4052)) )
))
(declare-datatypes ((C!2924 0))(
  ( (C!2925 (val!1348 Int)) )
))
(declare-datatypes ((List!4053 0))(
  ( (Nil!4043) (Cons!4043 (h!9440 C!2924) (t!43213 List!4053)) )
))
(declare-datatypes ((IArray!2753 0))(
  ( (IArray!2754 (innerList!1434 List!4053)) )
))
(declare-datatypes ((Conc!1376 0))(
  ( (Node!1376 (left!3359 Conc!1376) (right!3689 Conc!1376) (csize!2982 Int) (cheight!1587 Int)) (Leaf!2104 (xs!3979 IArray!2753) (csize!2983 Int)) (Empty!1376) )
))
(declare-datatypes ((BalanceConc!2760 0))(
  ( (BalanceConc!2761 (c!58102 Conc!1376)) )
))
(declare-datatypes ((TokenValueInjection!1370 0))(
  ( (TokenValueInjection!1371 (toValue!1536 Int) (toChars!1395 Int)) )
))
(declare-datatypes ((String!5075 0))(
  ( (String!5076 (value!26459 String)) )
))
(declare-datatypes ((Regex!1001 0))(
  ( (ElementMatch!1001 (c!58103 C!2924)) (Concat!1801 (regOne!2514 Regex!1001) (regTwo!2514 Regex!1001)) (EmptyExpr!1001) (Star!1001 (reg!1330 Regex!1001)) (EmptyLang!1001) (Union!1001 (regOne!2515 Regex!1001) (regTwo!2515 Regex!1001)) )
))
(declare-datatypes ((Rule!1354 0))(
  ( (Rule!1355 (regex!777 Regex!1001) (tag!995 String!5075) (isSeparator!777 Bool) (transformation!777 TokenValueInjection!1370)) )
))
(declare-datatypes ((List!4054 0))(
  ( (Nil!4044) (Cons!4044 (h!9441 Rule!1354) (t!43214 List!4054)) )
))
(declare-fun rules!1920 () List!4054)

(get-info :version)

(assert (= (and b!306162 ((_ is Cons!4044) rules!1920)) b!306192))

(declare-fun order!3275 () Int)

(declare-fun order!3273 () Int)

(declare-fun dynLambda!2203 (Int Int) Int)

(declare-fun dynLambda!2204 (Int Int) Int)

(assert (=> b!306194 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10434))))

(declare-fun order!3277 () Int)

(declare-fun dynLambda!2205 (Int Int) Int)

(assert (=> b!306194 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10434))))

(assert (=> b!306162 true))

(declare-fun b!306148 () Bool)

(declare-fun e!190335 () Bool)

(declare-fun e!190336 () Bool)

(assert (=> b!306148 (= e!190335 (not e!190336))))

(declare-fun res!139127 () Bool)

(assert (=> b!306148 (=> res!139127 e!190336)))

(declare-datatypes ((Token!1298 0))(
  ( (Token!1299 (value!26460 TokenValue!799) (rule!1390 Rule!1354) (size!3233 Int) (originalCharacters!820 List!4053)) )
))
(declare-fun separatorToken!170 () Token!1298)

(declare-fun lt!130458 () List!4053)

(declare-datatypes ((List!4055 0))(
  ( (Nil!4045) (Cons!4045 (h!9442 Token!1298) (t!43215 List!4055)) )
))
(declare-fun tokens!465 () List!4055)

(declare-datatypes ((LexerInterface!663 0))(
  ( (LexerInterfaceExt!660 (__x!3086 Int)) (Lexer!661) )
))
(declare-fun thiss!17480 () LexerInterface!663)

(declare-fun list!1705 (BalanceConc!2760) List!4053)

(declare-datatypes ((IArray!2755 0))(
  ( (IArray!2756 (innerList!1435 List!4055)) )
))
(declare-datatypes ((Conc!1377 0))(
  ( (Node!1377 (left!3360 Conc!1377) (right!3690 Conc!1377) (csize!2984 Int) (cheight!1588 Int)) (Leaf!2105 (xs!3980 IArray!2755) (csize!2985 Int)) (Empty!1377) )
))
(declare-datatypes ((BalanceConc!2762 0))(
  ( (BalanceConc!2763 (c!58104 Conc!1377)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!336 (LexerInterface!663 List!4054 BalanceConc!2762 Token!1298 Int) BalanceConc!2760)

(declare-fun seqFromList!919 (List!4055) BalanceConc!2762)

(assert (=> b!306148 (= res!139127 (not (= lt!130458 (list!1705 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 (seqFromList!919 (t!43215 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!130464 () List!4053)

(declare-fun lt!130453 () List!4053)

(assert (=> b!306148 (= lt!130464 lt!130453)))

(declare-fun lt!130460 () List!4053)

(declare-fun lt!130463 () List!4053)

(declare-fun ++!1096 (List!4053 List!4053) List!4053)

(assert (=> b!306148 (= lt!130453 (++!1096 lt!130460 lt!130463))))

(declare-fun lt!130451 () List!4053)

(assert (=> b!306148 (= lt!130464 (++!1096 lt!130451 lt!130458))))

(declare-fun lt!130448 () List!4053)

(assert (=> b!306148 (= lt!130451 (++!1096 lt!130460 lt!130448))))

(declare-datatypes ((Unit!5656 0))(
  ( (Unit!5657) )
))
(declare-fun lt!130441 () Unit!5656)

(declare-fun lemmaConcatAssociativity!484 (List!4053 List!4053 List!4053) Unit!5656)

(assert (=> b!306148 (= lt!130441 (lemmaConcatAssociativity!484 lt!130460 lt!130448 lt!130458))))

(declare-fun charsOf!420 (Token!1298) BalanceConc!2760)

(assert (=> b!306148 (= lt!130460 (list!1705 (charsOf!420 (h!9442 tokens!465))))))

(assert (=> b!306148 (= lt!130463 (++!1096 lt!130448 lt!130458))))

(declare-fun printWithSeparatorTokenWhenNeededList!344 (LexerInterface!663 List!4054 List!4055 Token!1298) List!4053)

(assert (=> b!306148 (= lt!130458 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (t!43215 tokens!465) separatorToken!170))))

(assert (=> b!306148 (= lt!130448 (list!1705 (charsOf!420 separatorToken!170)))))

(declare-fun res!139148 () Bool)

(declare-fun e!190334 () Bool)

(assert (=> start!32926 (=> (not res!139148) (not e!190334))))

(assert (=> start!32926 (= res!139148 ((_ is Lexer!661) thiss!17480))))

(assert (=> start!32926 e!190334))

(assert (=> start!32926 true))

(declare-fun e!190325 () Bool)

(assert (=> start!32926 e!190325))

(declare-fun e!190324 () Bool)

(declare-fun inv!4997 (Token!1298) Bool)

(assert (=> start!32926 (and (inv!4997 separatorToken!170) e!190324)))

(declare-fun e!190350 () Bool)

(assert (=> start!32926 e!190350))

(declare-fun tp!108690 () Bool)

(declare-fun e!190345 () Bool)

(declare-fun b!306149 () Bool)

(declare-fun inv!21 (TokenValue!799) Bool)

(assert (=> b!306149 (= e!190324 (and (inv!21 (value!26460 separatorToken!170)) e!190345 tp!108690))))

(declare-fun res!139137 () Bool)

(declare-fun e!190337 () Bool)

(assert (=> b!306150 (=> (not res!139137) (not e!190337))))

(declare-fun forall!1066 (List!4055 Int) Bool)

(assert (=> b!306150 (= res!139137 (forall!1066 tokens!465 lambda!10433))))

(declare-fun b!306151 () Bool)

(declare-fun res!139132 () Bool)

(declare-fun e!190331 () Bool)

(assert (=> b!306151 (=> (not res!139132) (not e!190331))))

(declare-datatypes ((tuple2!4662 0))(
  ( (tuple2!4663 (_1!2547 Token!1298) (_2!2547 List!4053)) )
))
(declare-fun lt!130461 () tuple2!4662)

(declare-fun isEmpty!2751 (List!4053) Bool)

(assert (=> b!306151 (= res!139132 (isEmpty!2751 (_2!2547 lt!130461)))))

(declare-fun b!306152 () Bool)

(declare-fun e!190327 () Bool)

(declare-fun tp!108684 () Bool)

(declare-fun e!190328 () Bool)

(assert (=> b!306152 (= e!190327 (and (inv!21 (value!26460 (h!9442 tokens!465))) e!190328 tp!108684))))

(declare-fun b!306153 () Bool)

(declare-fun res!139142 () Bool)

(assert (=> b!306153 (=> (not res!139142) (not e!190335))))

(declare-fun lt!130452 () List!4053)

(declare-fun lt!130443 () List!4053)

(declare-fun seqFromList!920 (List!4053) BalanceConc!2760)

(assert (=> b!306153 (= res!139142 (= (list!1705 (seqFromList!920 lt!130452)) lt!130443))))

(declare-fun b!306154 () Bool)

(assert (=> b!306154 (= e!190337 e!190335)))

(declare-fun res!139140 () Bool)

(assert (=> b!306154 (=> (not res!139140) (not e!190335))))

(assert (=> b!306154 (= res!139140 (= lt!130452 lt!130443))))

(declare-fun lt!130457 () BalanceConc!2762)

(assert (=> b!306154 (= lt!130443 (list!1705 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 lt!130457 separatorToken!170 0)))))

(assert (=> b!306154 (= lt!130452 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!190342 () Bool)

(assert (=> b!306155 (= e!190342 (and tp!108687 tp!108685))))

(declare-fun b!306156 () Bool)

(declare-fun res!139138 () Bool)

(declare-fun e!190326 () Bool)

(assert (=> b!306156 (=> res!139138 e!190326)))

(declare-fun rulesProduceIndividualToken!412 (LexerInterface!663 List!4054 Token!1298) Bool)

(assert (=> b!306156 (= res!139138 (not (rulesProduceIndividualToken!412 thiss!17480 rules!1920 (h!9442 tokens!465))))))

(declare-fun tp!108691 () Bool)

(declare-fun b!306157 () Bool)

(declare-fun inv!4994 (String!5075) Bool)

(declare-fun inv!4998 (TokenValueInjection!1370) Bool)

(assert (=> b!306157 (= e!190345 (and tp!108691 (inv!4994 (tag!995 (rule!1390 separatorToken!170))) (inv!4998 (transformation!777 (rule!1390 separatorToken!170))) e!190342))))

(declare-fun b!306158 () Bool)

(declare-fun res!139143 () Bool)

(assert (=> b!306158 (=> (not res!139143) (not e!190337))))

(assert (=> b!306158 (= res!139143 (rulesProduceIndividualToken!412 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!190351 () Bool)

(declare-fun tp!108693 () Bool)

(declare-fun b!306159 () Bool)

(declare-fun e!190332 () Bool)

(assert (=> b!306159 (= e!190351 (and tp!108693 (inv!4994 (tag!995 (h!9441 rules!1920))) (inv!4998 (transformation!777 (h!9441 rules!1920))) e!190332))))

(declare-fun b!306160 () Bool)

(declare-fun e!190347 () Bool)

(assert (=> b!306160 (= e!190336 e!190347)))

(declare-fun res!139141 () Bool)

(assert (=> b!306160 (=> res!139141 e!190347)))

(declare-fun e!190341 () Bool)

(assert (=> b!306160 (= res!139141 e!190341)))

(declare-fun res!139135 () Bool)

(assert (=> b!306160 (=> (not res!139135) (not e!190341))))

(declare-fun lt!130454 () Bool)

(assert (=> b!306160 (= res!139135 (not lt!130454))))

(assert (=> b!306160 (= lt!130454 (= lt!130452 lt!130453))))

(declare-fun tp!108692 () Bool)

(declare-fun b!306161 () Bool)

(declare-fun e!190340 () Bool)

(assert (=> b!306161 (= e!190328 (and tp!108692 (inv!4994 (tag!995 (rule!1390 (h!9442 tokens!465)))) (inv!4998 (transformation!777 (rule!1390 (h!9442 tokens!465)))) e!190340))))

(declare-fun e!190333 () Bool)

(assert (=> b!306162 (= e!190326 e!190333)))

(declare-fun res!139126 () Bool)

(assert (=> b!306162 (=> res!139126 e!190333)))

(declare-datatypes ((tuple2!4664 0))(
  ( (tuple2!4665 (_1!2548 Token!1298) (_2!2548 BalanceConc!2760)) )
))
(declare-datatypes ((Option!920 0))(
  ( (None!919) (Some!919 (v!14918 tuple2!4664)) )
))
(declare-fun isDefined!759 (Option!920) Bool)

(declare-fun maxPrefixZipperSequence!342 (LexerInterface!663 List!4054 BalanceConc!2760) Option!920)

(assert (=> b!306162 (= res!139126 (not (isDefined!759 (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))

(declare-fun lt!130456 () Unit!5656)

(declare-fun forallContained!330 (List!4055 Int Token!1298) Unit!5656)

(assert (=> b!306162 (= lt!130456 (forallContained!330 tokens!465 lambda!10434 (h!9442 tokens!465)))))

(assert (=> b!306162 (= lt!130460 (originalCharacters!820 (h!9442 tokens!465)))))

(declare-fun b!306163 () Bool)

(declare-fun e!190349 () Bool)

(assert (=> b!306163 (= e!190349 (or (not (= lt!130452 lt!130460)) (not (= lt!130452 lt!130451))))))

(declare-fun tp!108682 () Bool)

(declare-fun b!306164 () Bool)

(assert (=> b!306164 (= e!190350 (and (inv!4997 (h!9442 tokens!465)) e!190327 tp!108682))))

(declare-fun b!306165 () Bool)

(assert (=> b!306165 (= e!190334 e!190337)))

(declare-fun res!139124 () Bool)

(assert (=> b!306165 (=> (not res!139124) (not e!190337))))

(declare-fun rulesProduceEachTokenIndividually!455 (LexerInterface!663 List!4054 BalanceConc!2762) Bool)

(assert (=> b!306165 (= res!139124 (rulesProduceEachTokenIndividually!455 thiss!17480 rules!1920 lt!130457))))

(assert (=> b!306165 (= lt!130457 (seqFromList!919 tokens!465))))

(declare-fun b!306166 () Bool)

(declare-fun res!139147 () Bool)

(assert (=> b!306166 (=> res!139147 e!190349)))

(declare-fun lt!130459 () List!4055)

(assert (=> b!306166 (= res!139147 (not (= tokens!465 lt!130459)))))

(declare-fun b!306167 () Bool)

(declare-fun res!139133 () Bool)

(assert (=> b!306167 (=> (not res!139133) (not e!190337))))

(assert (=> b!306167 (= res!139133 ((_ is Cons!4045) tokens!465))))

(declare-fun b!306168 () Bool)

(declare-fun res!139145 () Bool)

(assert (=> b!306168 (=> (not res!139145) (not e!190334))))

(declare-fun isEmpty!2752 (List!4054) Bool)

(assert (=> b!306168 (= res!139145 (not (isEmpty!2752 rules!1920)))))

(declare-fun b!306169 () Bool)

(declare-fun res!139139 () Bool)

(assert (=> b!306169 (=> res!139139 e!190349)))

(assert (=> b!306169 (= res!139139 (not (isEmpty!2751 lt!130458)))))

(declare-fun b!306170 () Bool)

(assert (=> b!306170 (= e!190347 e!190326)))

(declare-fun res!139128 () Bool)

(assert (=> b!306170 (=> res!139128 e!190326)))

(declare-fun lt!130449 () List!4053)

(declare-fun lt!130465 () List!4053)

(assert (=> b!306170 (= res!139128 (or (not (= lt!130449 lt!130465)) (not (= lt!130465 lt!130460)) (not (= lt!130449 lt!130460))))))

(declare-fun printList!337 (LexerInterface!663 List!4055) List!4053)

(assert (=> b!306170 (= lt!130465 (printList!337 thiss!17480 lt!130459))))

(declare-fun lt!130455 () BalanceConc!2760)

(assert (=> b!306170 (= lt!130449 (list!1705 lt!130455))))

(assert (=> b!306170 (= lt!130459 (Cons!4045 (h!9442 tokens!465) Nil!4045))))

(declare-fun lt!130444 () BalanceConc!2762)

(declare-fun printTailRec!349 (LexerInterface!663 BalanceConc!2762 Int BalanceConc!2760) BalanceConc!2760)

(assert (=> b!306170 (= lt!130455 (printTailRec!349 thiss!17480 lt!130444 0 (BalanceConc!2761 Empty!1376)))))

(declare-fun print!388 (LexerInterface!663 BalanceConc!2762) BalanceConc!2760)

(assert (=> b!306170 (= lt!130455 (print!388 thiss!17480 lt!130444))))

(declare-fun singletonSeq!323 (Token!1298) BalanceConc!2762)

(assert (=> b!306170 (= lt!130444 (singletonSeq!323 (h!9442 tokens!465)))))

(declare-fun b!306171 () Bool)

(declare-fun res!139134 () Bool)

(assert (=> b!306171 (=> (not res!139134) (not e!190334))))

(declare-fun rulesInvariant!629 (LexerInterface!663 List!4054) Bool)

(assert (=> b!306171 (= res!139134 (rulesInvariant!629 thiss!17480 rules!1920))))

(declare-fun b!306172 () Bool)

(declare-fun e!190346 () Bool)

(assert (=> b!306172 (= e!190333 e!190346)))

(declare-fun res!139136 () Bool)

(assert (=> b!306172 (=> res!139136 e!190346)))

(assert (=> b!306172 (= res!139136 (not lt!130454))))

(assert (=> b!306172 e!190331))

(declare-fun res!139125 () Bool)

(assert (=> b!306172 (=> (not res!139125) (not e!190331))))

(assert (=> b!306172 (= res!139125 (= (_1!2547 lt!130461) (h!9442 tokens!465)))))

(declare-datatypes ((Option!921 0))(
  ( (None!920) (Some!920 (v!14919 tuple2!4662)) )
))
(declare-fun lt!130450 () Option!921)

(declare-fun get!1380 (Option!921) tuple2!4662)

(assert (=> b!306172 (= lt!130461 (get!1380 lt!130450))))

(declare-fun isDefined!760 (Option!921) Bool)

(assert (=> b!306172 (isDefined!760 lt!130450)))

(declare-fun maxPrefix!379 (LexerInterface!663 List!4054 List!4053) Option!921)

(assert (=> b!306172 (= lt!130450 (maxPrefix!379 thiss!17480 rules!1920 lt!130460))))

(declare-fun b!306173 () Bool)

(declare-fun e!190338 () Bool)

(declare-fun lt!130445 () Option!921)

(declare-fun head!960 (List!4055) Token!1298)

(assert (=> b!306173 (= e!190338 (= (_1!2547 (get!1380 lt!130445)) (head!960 tokens!465)))))

(declare-fun b!306174 () Bool)

(declare-fun res!139149 () Bool)

(assert (=> b!306174 (=> (not res!139149) (not e!190337))))

(assert (=> b!306174 (= res!139149 (isSeparator!777 (rule!1390 separatorToken!170)))))

(declare-fun b!306175 () Bool)

(declare-fun res!139129 () Bool)

(assert (=> b!306175 (=> res!139129 e!190326)))

(declare-fun isEmpty!2753 (BalanceConc!2762) Bool)

(declare-datatypes ((tuple2!4666 0))(
  ( (tuple2!4667 (_1!2549 BalanceConc!2762) (_2!2549 BalanceConc!2760)) )
))
(declare-fun lex!455 (LexerInterface!663 List!4054 BalanceConc!2760) tuple2!4666)

(assert (=> b!306175 (= res!139129 (isEmpty!2753 (_1!2549 (lex!455 thiss!17480 rules!1920 (seqFromList!920 lt!130460)))))))

(declare-fun b!306176 () Bool)

(declare-fun tp!108686 () Bool)

(assert (=> b!306176 (= e!190325 (and e!190351 tp!108686))))

(declare-fun b!306177 () Bool)

(declare-fun e!190330 () Bool)

(assert (=> b!306177 (= e!190330 e!190338)))

(declare-fun res!139130 () Bool)

(assert (=> b!306177 (=> (not res!139130) (not e!190338))))

(assert (=> b!306177 (= res!139130 (isDefined!760 lt!130445))))

(assert (=> b!306177 (= lt!130445 (maxPrefix!379 thiss!17480 rules!1920 lt!130452))))

(declare-fun b!306178 () Bool)

(declare-fun matchR!319 (Regex!1001 List!4053) Bool)

(assert (=> b!306178 (= e!190331 (matchR!319 (regex!777 (rule!1390 (h!9442 tokens!465))) lt!130460))))

(declare-fun b!306179 () Bool)

(declare-fun res!139131 () Bool)

(assert (=> b!306179 (=> (not res!139131) (not e!190337))))

(declare-fun sepAndNonSepRulesDisjointChars!366 (List!4054 List!4054) Bool)

(assert (=> b!306179 (= res!139131 (sepAndNonSepRulesDisjointChars!366 rules!1920 rules!1920))))

(declare-fun b!306180 () Bool)

(assert (=> b!306180 (= e!190341 (not (= lt!130452 (++!1096 lt!130460 lt!130458))))))

(declare-fun b!306181 () Bool)

(assert (=> b!306181 (= e!190346 e!190349)))

(declare-fun res!139146 () Bool)

(assert (=> b!306181 (=> res!139146 e!190349)))

(declare-fun isEmpty!2754 (List!4055) Bool)

(assert (=> b!306181 (= res!139146 (not (isEmpty!2754 (t!43215 tokens!465))))))

(declare-fun lt!130442 () Option!921)

(assert (=> b!306181 (= lt!130442 (maxPrefix!379 thiss!17480 rules!1920 lt!130463))))

(declare-fun lt!130462 () tuple2!4662)

(assert (=> b!306181 (= lt!130463 (_2!2547 lt!130462))))

(declare-fun lt!130447 () Unit!5656)

(declare-fun lemmaSamePrefixThenSameSuffix!222 (List!4053 List!4053 List!4053 List!4053 List!4053) Unit!5656)

(assert (=> b!306181 (= lt!130447 (lemmaSamePrefixThenSameSuffix!222 lt!130460 lt!130463 lt!130460 (_2!2547 lt!130462) lt!130452))))

(assert (=> b!306181 (= lt!130462 (get!1380 (maxPrefix!379 thiss!17480 rules!1920 lt!130452)))))

(declare-fun isPrefix!437 (List!4053 List!4053) Bool)

(assert (=> b!306181 (isPrefix!437 lt!130460 lt!130453)))

(declare-fun lt!130466 () Unit!5656)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!328 (List!4053 List!4053) Unit!5656)

(assert (=> b!306181 (= lt!130466 (lemmaConcatTwoListThenFirstIsPrefix!328 lt!130460 lt!130463))))

(assert (=> b!306181 e!190330))

(declare-fun res!139144 () Bool)

(assert (=> b!306181 (=> res!139144 e!190330)))

(assert (=> b!306181 (= res!139144 (isEmpty!2754 tokens!465))))

(declare-fun lt!130446 () Unit!5656)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!184 (LexerInterface!663 List!4054 List!4055 Token!1298) Unit!5656)

(assert (=> b!306181 (= lt!130446 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!184 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!306182 (= e!190340 (and tp!108689 tp!108688))))

(assert (=> b!306183 (= e!190332 (and tp!108681 tp!108683))))

(assert (= (and start!32926 res!139148) b!306168))

(assert (= (and b!306168 res!139145) b!306171))

(assert (= (and b!306171 res!139134) b!306165))

(assert (= (and b!306165 res!139124) b!306158))

(assert (= (and b!306158 res!139143) b!306174))

(assert (= (and b!306174 res!139149) b!306150))

(assert (= (and b!306150 res!139137) b!306179))

(assert (= (and b!306179 res!139131) b!306167))

(assert (= (and b!306167 res!139133) b!306154))

(assert (= (and b!306154 res!139140) b!306153))

(assert (= (and b!306153 res!139142) b!306148))

(assert (= (and b!306148 (not res!139127)) b!306160))

(assert (= (and b!306160 res!139135) b!306180))

(assert (= (and b!306160 (not res!139141)) b!306170))

(assert (= (and b!306170 (not res!139128)) b!306156))

(assert (= (and b!306156 (not res!139138)) b!306175))

(assert (= (and b!306175 (not res!139129)) b!306162))

(assert (= (and b!306162 (not res!139126)) b!306172))

(assert (= (and b!306172 res!139125) b!306151))

(assert (= (and b!306151 res!139132) b!306178))

(assert (= (and b!306172 (not res!139136)) b!306181))

(assert (= (and b!306181 (not res!139144)) b!306177))

(assert (= (and b!306177 res!139130) b!306173))

(assert (= (and b!306181 (not res!139146)) b!306166))

(assert (= (and b!306166 (not res!139147)) b!306169))

(assert (= (and b!306169 (not res!139139)) b!306163))

(assert (= b!306159 b!306183))

(assert (= b!306176 b!306159))

(assert (= (and start!32926 ((_ is Cons!4044) rules!1920)) b!306176))

(assert (= b!306157 b!306155))

(assert (= b!306149 b!306157))

(assert (= start!32926 b!306149))

(assert (= b!306161 b!306182))

(assert (= b!306152 b!306161))

(assert (= b!306164 b!306152))

(assert (= (and start!32926 ((_ is Cons!4045) tokens!465)) b!306164))

(declare-fun m!408461 () Bool)

(assert (=> b!306148 m!408461))

(declare-fun m!408463 () Bool)

(assert (=> b!306148 m!408463))

(declare-fun m!408465 () Bool)

(assert (=> b!306148 m!408465))

(declare-fun m!408467 () Bool)

(assert (=> b!306148 m!408467))

(declare-fun m!408469 () Bool)

(assert (=> b!306148 m!408469))

(assert (=> b!306148 m!408465))

(assert (=> b!306148 m!408461))

(declare-fun m!408471 () Bool)

(assert (=> b!306148 m!408471))

(declare-fun m!408473 () Bool)

(assert (=> b!306148 m!408473))

(declare-fun m!408475 () Bool)

(assert (=> b!306148 m!408475))

(declare-fun m!408477 () Bool)

(assert (=> b!306148 m!408477))

(declare-fun m!408479 () Bool)

(assert (=> b!306148 m!408479))

(assert (=> b!306148 m!408471))

(declare-fun m!408481 () Bool)

(assert (=> b!306148 m!408481))

(declare-fun m!408483 () Bool)

(assert (=> b!306148 m!408483))

(assert (=> b!306148 m!408477))

(declare-fun m!408485 () Bool)

(assert (=> b!306148 m!408485))

(declare-fun m!408487 () Bool)

(assert (=> b!306165 m!408487))

(declare-fun m!408489 () Bool)

(assert (=> b!306165 m!408489))

(declare-fun m!408491 () Bool)

(assert (=> b!306162 m!408491))

(assert (=> b!306162 m!408491))

(declare-fun m!408493 () Bool)

(assert (=> b!306162 m!408493))

(assert (=> b!306162 m!408493))

(declare-fun m!408495 () Bool)

(assert (=> b!306162 m!408495))

(declare-fun m!408497 () Bool)

(assert (=> b!306162 m!408497))

(declare-fun m!408499 () Bool)

(assert (=> b!306164 m!408499))

(declare-fun m!408501 () Bool)

(assert (=> b!306157 m!408501))

(declare-fun m!408503 () Bool)

(assert (=> b!306157 m!408503))

(declare-fun m!408505 () Bool)

(assert (=> b!306158 m!408505))

(declare-fun m!408507 () Bool)

(assert (=> b!306151 m!408507))

(declare-fun m!408509 () Bool)

(assert (=> b!306150 m!408509))

(declare-fun m!408511 () Bool)

(assert (=> b!306156 m!408511))

(declare-fun m!408513 () Bool)

(assert (=> b!306170 m!408513))

(declare-fun m!408515 () Bool)

(assert (=> b!306170 m!408515))

(declare-fun m!408517 () Bool)

(assert (=> b!306170 m!408517))

(declare-fun m!408519 () Bool)

(assert (=> b!306170 m!408519))

(declare-fun m!408521 () Bool)

(assert (=> b!306170 m!408521))

(declare-fun m!408523 () Bool)

(assert (=> b!306177 m!408523))

(declare-fun m!408525 () Bool)

(assert (=> b!306177 m!408525))

(declare-fun m!408527 () Bool)

(assert (=> b!306159 m!408527))

(declare-fun m!408529 () Bool)

(assert (=> b!306159 m!408529))

(declare-fun m!408531 () Bool)

(assert (=> b!306168 m!408531))

(declare-fun m!408533 () Bool)

(assert (=> b!306173 m!408533))

(declare-fun m!408535 () Bool)

(assert (=> b!306173 m!408535))

(declare-fun m!408537 () Bool)

(assert (=> b!306152 m!408537))

(declare-fun m!408539 () Bool)

(assert (=> b!306149 m!408539))

(declare-fun m!408541 () Bool)

(assert (=> b!306180 m!408541))

(declare-fun m!408543 () Bool)

(assert (=> b!306154 m!408543))

(assert (=> b!306154 m!408543))

(declare-fun m!408545 () Bool)

(assert (=> b!306154 m!408545))

(declare-fun m!408547 () Bool)

(assert (=> b!306154 m!408547))

(declare-fun m!408549 () Bool)

(assert (=> b!306171 m!408549))

(declare-fun m!408551 () Bool)

(assert (=> start!32926 m!408551))

(declare-fun m!408553 () Bool)

(assert (=> b!306178 m!408553))

(declare-fun m!408555 () Bool)

(assert (=> b!306181 m!408555))

(declare-fun m!408557 () Bool)

(assert (=> b!306181 m!408557))

(declare-fun m!408559 () Bool)

(assert (=> b!306181 m!408559))

(declare-fun m!408561 () Bool)

(assert (=> b!306181 m!408561))

(declare-fun m!408563 () Bool)

(assert (=> b!306181 m!408563))

(assert (=> b!306181 m!408525))

(declare-fun m!408565 () Bool)

(assert (=> b!306181 m!408565))

(declare-fun m!408567 () Bool)

(assert (=> b!306181 m!408567))

(declare-fun m!408569 () Bool)

(assert (=> b!306181 m!408569))

(assert (=> b!306181 m!408525))

(declare-fun m!408571 () Bool)

(assert (=> b!306172 m!408571))

(declare-fun m!408573 () Bool)

(assert (=> b!306172 m!408573))

(declare-fun m!408575 () Bool)

(assert (=> b!306172 m!408575))

(declare-fun m!408577 () Bool)

(assert (=> b!306153 m!408577))

(assert (=> b!306153 m!408577))

(declare-fun m!408579 () Bool)

(assert (=> b!306153 m!408579))

(declare-fun m!408581 () Bool)

(assert (=> b!306175 m!408581))

(assert (=> b!306175 m!408581))

(declare-fun m!408583 () Bool)

(assert (=> b!306175 m!408583))

(declare-fun m!408585 () Bool)

(assert (=> b!306175 m!408585))

(declare-fun m!408587 () Bool)

(assert (=> b!306179 m!408587))

(declare-fun m!408589 () Bool)

(assert (=> b!306161 m!408589))

(declare-fun m!408591 () Bool)

(assert (=> b!306161 m!408591))

(declare-fun m!408593 () Bool)

(assert (=> b!306169 m!408593))

(check-sat (not b!306179) b_and!25861 (not b_next!10963) (not b!306153) b_and!25857 (not b_next!10957) (not b!306151) b_and!25859 (not b!306165) (not b!306159) (not b!306173) (not b!306175) (not b!306149) (not b!306157) b_and!25863 (not b!306170) (not b!306180) (not b_next!10959) (not b!306158) (not b!306148) (not b!306150) (not b!306162) (not b!306164) (not b!306156) (not b!306177) (not b!306169) (not b!306172) (not b!306178) (not b!306192) (not b!306154) (not b_next!10953) (not b!306171) (not b!306152) b_and!25855 (not b_next!10961) (not b!306181) (not b_next!10955) (not start!32926) (not b!306176) (not b!306168) b_and!25853 (not b!306161))
(check-sat b_and!25863 b_and!25861 (not b_next!10963) (not b_next!10959) b_and!25857 (not b_next!10957) b_and!25859 (not b_next!10953) (not b_next!10955) b_and!25853 b_and!25855 (not b_next!10961))
(get-model)

(declare-fun d!93612 () Bool)

(assert (=> d!93612 (= (isEmpty!2751 lt!130458) ((_ is Nil!4043) lt!130458))))

(assert (=> b!306169 d!93612))

(declare-fun d!93614 () Bool)

(assert (=> d!93614 (= (isEmpty!2752 rules!1920) ((_ is Nil!4044) rules!1920))))

(assert (=> b!306168 d!93614))

(declare-fun bs!35392 () Bool)

(declare-fun d!93616 () Bool)

(assert (= bs!35392 (and d!93616 b!306150)))

(declare-fun lambda!10439 () Int)

(assert (=> bs!35392 (not (= lambda!10439 lambda!10433))))

(declare-fun bs!35393 () Bool)

(assert (= bs!35393 (and d!93616 b!306162)))

(assert (=> bs!35393 (= lambda!10439 lambda!10434)))

(declare-fun b!306268 () Bool)

(declare-fun e!190399 () Bool)

(assert (=> b!306268 (= e!190399 true)))

(declare-fun b!306267 () Bool)

(declare-fun e!190398 () Bool)

(assert (=> b!306267 (= e!190398 e!190399)))

(declare-fun b!306266 () Bool)

(declare-fun e!190397 () Bool)

(assert (=> b!306266 (= e!190397 e!190398)))

(assert (=> d!93616 e!190397))

(assert (= b!306267 b!306268))

(assert (= b!306266 b!306267))

(assert (= (and d!93616 ((_ is Cons!4044) rules!1920)) b!306266))

(assert (=> b!306268 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10439))))

(assert (=> b!306268 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10439))))

(assert (=> d!93616 true))

(declare-fun e!190396 () Bool)

(assert (=> d!93616 e!190396))

(declare-fun res!139208 () Bool)

(assert (=> d!93616 (=> (not res!139208) (not e!190396))))

(declare-fun lt!130495 () Bool)

(declare-fun list!1706 (BalanceConc!2762) List!4055)

(assert (=> d!93616 (= res!139208 (= lt!130495 (forall!1066 (list!1706 lt!130457) lambda!10439)))))

(declare-fun forall!1067 (BalanceConc!2762 Int) Bool)

(assert (=> d!93616 (= lt!130495 (forall!1067 lt!130457 lambda!10439))))

(assert (=> d!93616 (not (isEmpty!2752 rules!1920))))

(assert (=> d!93616 (= (rulesProduceEachTokenIndividually!455 thiss!17480 rules!1920 lt!130457) lt!130495)))

(declare-fun b!306265 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!264 (LexerInterface!663 List!4054 List!4055) Bool)

(assert (=> b!306265 (= e!190396 (= lt!130495 (rulesProduceEachTokenIndividuallyList!264 thiss!17480 rules!1920 (list!1706 lt!130457))))))

(assert (= (and d!93616 res!139208) b!306265))

(declare-fun m!408689 () Bool)

(assert (=> d!93616 m!408689))

(assert (=> d!93616 m!408689))

(declare-fun m!408691 () Bool)

(assert (=> d!93616 m!408691))

(declare-fun m!408693 () Bool)

(assert (=> d!93616 m!408693))

(assert (=> d!93616 m!408531))

(assert (=> b!306265 m!408689))

(assert (=> b!306265 m!408689))

(declare-fun m!408695 () Bool)

(assert (=> b!306265 m!408695))

(assert (=> b!306165 d!93616))

(declare-fun d!93638 () Bool)

(declare-fun fromListB!380 (List!4055) BalanceConc!2762)

(assert (=> d!93638 (= (seqFromList!919 tokens!465) (fromListB!380 tokens!465))))

(declare-fun bs!35394 () Bool)

(assert (= bs!35394 d!93638))

(declare-fun m!408697 () Bool)

(assert (=> bs!35394 m!408697))

(assert (=> b!306165 d!93638))

(declare-fun d!93640 () Bool)

(declare-fun res!139217 () Bool)

(declare-fun e!190406 () Bool)

(assert (=> d!93640 (=> (not res!139217) (not e!190406))))

(assert (=> d!93640 (= res!139217 (not (isEmpty!2751 (originalCharacters!820 (h!9442 tokens!465)))))))

(assert (=> d!93640 (= (inv!4997 (h!9442 tokens!465)) e!190406)))

(declare-fun b!306277 () Bool)

(declare-fun res!139218 () Bool)

(assert (=> b!306277 (=> (not res!139218) (not e!190406))))

(declare-fun dynLambda!2206 (Int TokenValue!799) BalanceConc!2760)

(assert (=> b!306277 (= res!139218 (= (originalCharacters!820 (h!9442 tokens!465)) (list!1705 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (value!26460 (h!9442 tokens!465))))))))

(declare-fun b!306278 () Bool)

(declare-fun size!3235 (List!4053) Int)

(assert (=> b!306278 (= e!190406 (= (size!3233 (h!9442 tokens!465)) (size!3235 (originalCharacters!820 (h!9442 tokens!465)))))))

(assert (= (and d!93640 res!139217) b!306277))

(assert (= (and b!306277 res!139218) b!306278))

(declare-fun b_lambda!10619 () Bool)

(assert (=> (not b_lambda!10619) (not b!306277)))

(declare-fun t!43221 () Bool)

(declare-fun tb!19305 () Bool)

(assert (=> (and b!306155 (= (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465))))) t!43221) tb!19305))

(declare-fun b!306285 () Bool)

(declare-fun e!190411 () Bool)

(declare-fun tp!108696 () Bool)

(declare-fun inv!4999 (Conc!1376) Bool)

(assert (=> b!306285 (= e!190411 (and (inv!4999 (c!58102 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (value!26460 (h!9442 tokens!465))))) tp!108696))))

(declare-fun result!23268 () Bool)

(declare-fun inv!5000 (BalanceConc!2760) Bool)

(assert (=> tb!19305 (= result!23268 (and (inv!5000 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (value!26460 (h!9442 tokens!465)))) e!190411))))

(assert (= tb!19305 b!306285))

(declare-fun m!408699 () Bool)

(assert (=> b!306285 m!408699))

(declare-fun m!408701 () Bool)

(assert (=> tb!19305 m!408701))

(assert (=> b!306277 t!43221))

(declare-fun b_and!25865 () Bool)

(assert (= b_and!25855 (and (=> t!43221 result!23268) b_and!25865)))

(declare-fun t!43223 () Bool)

(declare-fun tb!19307 () Bool)

(assert (=> (and b!306182 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465))))) t!43223) tb!19307))

(declare-fun result!23272 () Bool)

(assert (= result!23272 result!23268))

(assert (=> b!306277 t!43223))

(declare-fun b_and!25867 () Bool)

(assert (= b_and!25859 (and (=> t!43223 result!23272) b_and!25867)))

(declare-fun tb!19309 () Bool)

(declare-fun t!43225 () Bool)

(assert (=> (and b!306183 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465))))) t!43225) tb!19309))

(declare-fun result!23274 () Bool)

(assert (= result!23274 result!23268))

(assert (=> b!306277 t!43225))

(declare-fun b_and!25869 () Bool)

(assert (= b_and!25863 (and (=> t!43225 result!23274) b_and!25869)))

(declare-fun m!408707 () Bool)

(assert (=> d!93640 m!408707))

(declare-fun m!408711 () Bool)

(assert (=> b!306277 m!408711))

(assert (=> b!306277 m!408711))

(declare-fun m!408713 () Bool)

(assert (=> b!306277 m!408713))

(declare-fun m!408715 () Bool)

(assert (=> b!306278 m!408715))

(assert (=> b!306164 d!93640))

(declare-fun d!93642 () Bool)

(assert (=> d!93642 (= (get!1380 lt!130445) (v!14919 lt!130445))))

(assert (=> b!306173 d!93642))

(declare-fun d!93646 () Bool)

(assert (=> d!93646 (= (head!960 tokens!465) (h!9442 tokens!465))))

(assert (=> b!306173 d!93646))

(declare-fun d!93648 () Bool)

(assert (=> d!93648 (= (isEmpty!2751 (_2!2547 lt!130461)) ((_ is Nil!4043) (_2!2547 lt!130461)))))

(assert (=> b!306151 d!93648))

(declare-fun d!93650 () Bool)

(assert (=> d!93650 (= (get!1380 lt!130450) (v!14919 lt!130450))))

(assert (=> b!306172 d!93650))

(declare-fun d!93652 () Bool)

(declare-fun isEmpty!2756 (Option!921) Bool)

(assert (=> d!93652 (= (isDefined!760 lt!130450) (not (isEmpty!2756 lt!130450)))))

(declare-fun bs!35395 () Bool)

(assert (= bs!35395 d!93652))

(declare-fun m!408719 () Bool)

(assert (=> bs!35395 m!408719))

(assert (=> b!306172 d!93652))

(declare-fun b!306304 () Bool)

(declare-fun res!139237 () Bool)

(declare-fun e!190419 () Bool)

(assert (=> b!306304 (=> (not res!139237) (not e!190419))))

(declare-fun lt!130515 () Option!921)

(assert (=> b!306304 (= res!139237 (matchR!319 (regex!777 (rule!1390 (_1!2547 (get!1380 lt!130515)))) (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130515))))))))

(declare-fun b!306305 () Bool)

(declare-fun res!139239 () Bool)

(assert (=> b!306305 (=> (not res!139239) (not e!190419))))

(assert (=> b!306305 (= res!139239 (= (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130515)))) (originalCharacters!820 (_1!2547 (get!1380 lt!130515)))))))

(declare-fun b!306306 () Bool)

(declare-fun contains!799 (List!4054 Rule!1354) Bool)

(assert (=> b!306306 (= e!190419 (contains!799 rules!1920 (rule!1390 (_1!2547 (get!1380 lt!130515)))))))

(declare-fun d!93654 () Bool)

(declare-fun e!190418 () Bool)

(assert (=> d!93654 e!190418))

(declare-fun res!139236 () Bool)

(assert (=> d!93654 (=> res!139236 e!190418)))

(assert (=> d!93654 (= res!139236 (isEmpty!2756 lt!130515))))

(declare-fun e!190420 () Option!921)

(assert (=> d!93654 (= lt!130515 e!190420)))

(declare-fun c!58117 () Bool)

(assert (=> d!93654 (= c!58117 (and ((_ is Cons!4044) rules!1920) ((_ is Nil!4044) (t!43214 rules!1920))))))

(declare-fun lt!130516 () Unit!5656)

(declare-fun lt!130514 () Unit!5656)

(assert (=> d!93654 (= lt!130516 lt!130514)))

(assert (=> d!93654 (isPrefix!437 lt!130460 lt!130460)))

(declare-fun lemmaIsPrefixRefl!237 (List!4053 List!4053) Unit!5656)

(assert (=> d!93654 (= lt!130514 (lemmaIsPrefixRefl!237 lt!130460 lt!130460))))

(declare-fun rulesValidInductive!232 (LexerInterface!663 List!4054) Bool)

(assert (=> d!93654 (rulesValidInductive!232 thiss!17480 rules!1920)))

(assert (=> d!93654 (= (maxPrefix!379 thiss!17480 rules!1920 lt!130460) lt!130515)))

(declare-fun b!306307 () Bool)

(declare-fun res!139240 () Bool)

(assert (=> b!306307 (=> (not res!139240) (not e!190419))))

(declare-fun apply!884 (TokenValueInjection!1370 BalanceConc!2760) TokenValue!799)

(assert (=> b!306307 (= res!139240 (= (value!26460 (_1!2547 (get!1380 lt!130515))) (apply!884 (transformation!777 (rule!1390 (_1!2547 (get!1380 lt!130515)))) (seqFromList!920 (originalCharacters!820 (_1!2547 (get!1380 lt!130515)))))))))

(declare-fun b!306308 () Bool)

(declare-fun lt!130512 () Option!921)

(declare-fun lt!130513 () Option!921)

(assert (=> b!306308 (= e!190420 (ite (and ((_ is None!920) lt!130512) ((_ is None!920) lt!130513)) None!920 (ite ((_ is None!920) lt!130513) lt!130512 (ite ((_ is None!920) lt!130512) lt!130513 (ite (>= (size!3233 (_1!2547 (v!14919 lt!130512))) (size!3233 (_1!2547 (v!14919 lt!130513)))) lt!130512 lt!130513)))))))

(declare-fun call!17733 () Option!921)

(assert (=> b!306308 (= lt!130512 call!17733)))

(assert (=> b!306308 (= lt!130513 (maxPrefix!379 thiss!17480 (t!43214 rules!1920) lt!130460))))

(declare-fun bm!17728 () Bool)

(declare-fun maxPrefixOneRule!171 (LexerInterface!663 Rule!1354 List!4053) Option!921)

(assert (=> bm!17728 (= call!17733 (maxPrefixOneRule!171 thiss!17480 (h!9441 rules!1920) lt!130460))))

(declare-fun b!306309 () Bool)

(declare-fun res!139235 () Bool)

(assert (=> b!306309 (=> (not res!139235) (not e!190419))))

(assert (=> b!306309 (= res!139235 (= (++!1096 (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130515)))) (_2!2547 (get!1380 lt!130515))) lt!130460))))

(declare-fun b!306310 () Bool)

(assert (=> b!306310 (= e!190418 e!190419)))

(declare-fun res!139238 () Bool)

(assert (=> b!306310 (=> (not res!139238) (not e!190419))))

(assert (=> b!306310 (= res!139238 (isDefined!760 lt!130515))))

(declare-fun b!306311 () Bool)

(assert (=> b!306311 (= e!190420 call!17733)))

(declare-fun b!306312 () Bool)

(declare-fun res!139241 () Bool)

(assert (=> b!306312 (=> (not res!139241) (not e!190419))))

(assert (=> b!306312 (= res!139241 (< (size!3235 (_2!2547 (get!1380 lt!130515))) (size!3235 lt!130460)))))

(assert (= (and d!93654 c!58117) b!306311))

(assert (= (and d!93654 (not c!58117)) b!306308))

(assert (= (or b!306311 b!306308) bm!17728))

(assert (= (and d!93654 (not res!139236)) b!306310))

(assert (= (and b!306310 res!139238) b!306305))

(assert (= (and b!306305 res!139239) b!306312))

(assert (= (and b!306312 res!139241) b!306309))

(assert (= (and b!306309 res!139235) b!306307))

(assert (= (and b!306307 res!139240) b!306304))

(assert (= (and b!306304 res!139237) b!306306))

(declare-fun m!408727 () Bool)

(assert (=> b!306307 m!408727))

(declare-fun m!408729 () Bool)

(assert (=> b!306307 m!408729))

(assert (=> b!306307 m!408729))

(declare-fun m!408731 () Bool)

(assert (=> b!306307 m!408731))

(declare-fun m!408733 () Bool)

(assert (=> d!93654 m!408733))

(declare-fun m!408735 () Bool)

(assert (=> d!93654 m!408735))

(declare-fun m!408737 () Bool)

(assert (=> d!93654 m!408737))

(declare-fun m!408739 () Bool)

(assert (=> d!93654 m!408739))

(assert (=> b!306305 m!408727))

(declare-fun m!408741 () Bool)

(assert (=> b!306305 m!408741))

(assert (=> b!306305 m!408741))

(declare-fun m!408743 () Bool)

(assert (=> b!306305 m!408743))

(assert (=> b!306309 m!408727))

(assert (=> b!306309 m!408741))

(assert (=> b!306309 m!408741))

(assert (=> b!306309 m!408743))

(assert (=> b!306309 m!408743))

(declare-fun m!408745 () Bool)

(assert (=> b!306309 m!408745))

(assert (=> b!306312 m!408727))

(declare-fun m!408747 () Bool)

(assert (=> b!306312 m!408747))

(declare-fun m!408749 () Bool)

(assert (=> b!306312 m!408749))

(declare-fun m!408751 () Bool)

(assert (=> bm!17728 m!408751))

(declare-fun m!408753 () Bool)

(assert (=> b!306310 m!408753))

(assert (=> b!306306 m!408727))

(declare-fun m!408755 () Bool)

(assert (=> b!306306 m!408755))

(assert (=> b!306304 m!408727))

(assert (=> b!306304 m!408741))

(assert (=> b!306304 m!408741))

(assert (=> b!306304 m!408743))

(assert (=> b!306304 m!408743))

(declare-fun m!408757 () Bool)

(assert (=> b!306304 m!408757))

(declare-fun m!408759 () Bool)

(assert (=> b!306308 m!408759))

(assert (=> b!306172 d!93654))

(declare-fun d!93662 () Bool)

(declare-fun list!1707 (Conc!1376) List!4053)

(assert (=> d!93662 (= (list!1705 (seqFromList!920 lt!130452)) (list!1707 (c!58102 (seqFromList!920 lt!130452))))))

(declare-fun bs!35398 () Bool)

(assert (= bs!35398 d!93662))

(declare-fun m!408761 () Bool)

(assert (=> bs!35398 m!408761))

(assert (=> b!306153 d!93662))

(declare-fun d!93664 () Bool)

(declare-fun fromListB!381 (List!4053) BalanceConc!2760)

(assert (=> d!93664 (= (seqFromList!920 lt!130452) (fromListB!381 lt!130452))))

(declare-fun bs!35399 () Bool)

(assert (= bs!35399 d!93664))

(declare-fun m!408763 () Bool)

(assert (=> bs!35399 m!408763))

(assert (=> b!306153 d!93664))

(declare-fun b!306323 () Bool)

(declare-fun e!190427 () Bool)

(declare-fun inv!17 (TokenValue!799) Bool)

(assert (=> b!306323 (= e!190427 (inv!17 (value!26460 (h!9442 tokens!465))))))

(declare-fun b!306324 () Bool)

(declare-fun e!190428 () Bool)

(declare-fun inv!15 (TokenValue!799) Bool)

(assert (=> b!306324 (= e!190428 (inv!15 (value!26460 (h!9442 tokens!465))))))

(declare-fun b!306325 () Bool)

(declare-fun e!190429 () Bool)

(assert (=> b!306325 (= e!190429 e!190427)))

(declare-fun c!58123 () Bool)

(assert (=> b!306325 (= c!58123 ((_ is IntegerValue!2398) (value!26460 (h!9442 tokens!465))))))

(declare-fun b!306326 () Bool)

(declare-fun inv!16 (TokenValue!799) Bool)

(assert (=> b!306326 (= e!190429 (inv!16 (value!26460 (h!9442 tokens!465))))))

(declare-fun b!306327 () Bool)

(declare-fun res!139244 () Bool)

(assert (=> b!306327 (=> res!139244 e!190428)))

(assert (=> b!306327 (= res!139244 (not ((_ is IntegerValue!2399) (value!26460 (h!9442 tokens!465)))))))

(assert (=> b!306327 (= e!190427 e!190428)))

(declare-fun d!93666 () Bool)

(declare-fun c!58122 () Bool)

(assert (=> d!93666 (= c!58122 ((_ is IntegerValue!2397) (value!26460 (h!9442 tokens!465))))))

(assert (=> d!93666 (= (inv!21 (value!26460 (h!9442 tokens!465))) e!190429)))

(assert (= (and d!93666 c!58122) b!306326))

(assert (= (and d!93666 (not c!58122)) b!306325))

(assert (= (and b!306325 c!58123) b!306323))

(assert (= (and b!306325 (not c!58123)) b!306327))

(assert (= (and b!306327 (not res!139244)) b!306324))

(declare-fun m!408765 () Bool)

(assert (=> b!306323 m!408765))

(declare-fun m!408767 () Bool)

(assert (=> b!306324 m!408767))

(declare-fun m!408769 () Bool)

(assert (=> b!306326 m!408769))

(assert (=> b!306152 d!93666))

(declare-fun b!306328 () Bool)

(declare-fun e!190430 () Bool)

(assert (=> b!306328 (= e!190430 (inv!17 (value!26460 separatorToken!170)))))

(declare-fun b!306329 () Bool)

(declare-fun e!190431 () Bool)

(assert (=> b!306329 (= e!190431 (inv!15 (value!26460 separatorToken!170)))))

(declare-fun b!306330 () Bool)

(declare-fun e!190432 () Bool)

(assert (=> b!306330 (= e!190432 e!190430)))

(declare-fun c!58125 () Bool)

(assert (=> b!306330 (= c!58125 ((_ is IntegerValue!2398) (value!26460 separatorToken!170)))))

(declare-fun b!306331 () Bool)

(assert (=> b!306331 (= e!190432 (inv!16 (value!26460 separatorToken!170)))))

(declare-fun b!306332 () Bool)

(declare-fun res!139245 () Bool)

(assert (=> b!306332 (=> res!139245 e!190431)))

(assert (=> b!306332 (= res!139245 (not ((_ is IntegerValue!2399) (value!26460 separatorToken!170))))))

(assert (=> b!306332 (= e!190430 e!190431)))

(declare-fun d!93668 () Bool)

(declare-fun c!58124 () Bool)

(assert (=> d!93668 (= c!58124 ((_ is IntegerValue!2397) (value!26460 separatorToken!170)))))

(assert (=> d!93668 (= (inv!21 (value!26460 separatorToken!170)) e!190432)))

(assert (= (and d!93668 c!58124) b!306331))

(assert (= (and d!93668 (not c!58124)) b!306330))

(assert (= (and b!306330 c!58125) b!306328))

(assert (= (and b!306330 (not c!58125)) b!306332))

(assert (= (and b!306332 (not res!139245)) b!306329))

(declare-fun m!408771 () Bool)

(assert (=> b!306328 m!408771))

(declare-fun m!408773 () Bool)

(assert (=> b!306329 m!408773))

(declare-fun m!408775 () Bool)

(assert (=> b!306331 m!408775))

(assert (=> b!306149 d!93668))

(declare-fun d!93670 () Bool)

(declare-fun lt!130552 () BalanceConc!2760)

(declare-fun printListTailRec!159 (LexerInterface!663 List!4055 List!4053) List!4053)

(declare-fun dropList!193 (BalanceConc!2762 Int) List!4055)

(assert (=> d!93670 (= (list!1705 lt!130552) (printListTailRec!159 thiss!17480 (dropList!193 lt!130444 0) (list!1705 (BalanceConc!2761 Empty!1376))))))

(declare-fun e!190455 () BalanceConc!2760)

(assert (=> d!93670 (= lt!130552 e!190455)))

(declare-fun c!58131 () Bool)

(declare-fun size!3236 (BalanceConc!2762) Int)

(assert (=> d!93670 (= c!58131 (>= 0 (size!3236 lt!130444)))))

(declare-fun e!190456 () Bool)

(assert (=> d!93670 e!190456))

(declare-fun res!139266 () Bool)

(assert (=> d!93670 (=> (not res!139266) (not e!190456))))

(assert (=> d!93670 (= res!139266 (>= 0 0))))

(assert (=> d!93670 (= (printTailRec!349 thiss!17480 lt!130444 0 (BalanceConc!2761 Empty!1376)) lt!130552)))

(declare-fun b!306363 () Bool)

(assert (=> b!306363 (= e!190456 (<= 0 (size!3236 lt!130444)))))

(declare-fun b!306364 () Bool)

(assert (=> b!306364 (= e!190455 (BalanceConc!2761 Empty!1376))))

(declare-fun b!306365 () Bool)

(declare-fun ++!1097 (BalanceConc!2760 BalanceConc!2760) BalanceConc!2760)

(declare-fun apply!885 (BalanceConc!2762 Int) Token!1298)

(assert (=> b!306365 (= e!190455 (printTailRec!349 thiss!17480 lt!130444 (+ 0 1) (++!1097 (BalanceConc!2761 Empty!1376) (charsOf!420 (apply!885 lt!130444 0)))))))

(declare-fun lt!130558 () List!4055)

(assert (=> b!306365 (= lt!130558 (list!1706 lt!130444))))

(declare-fun lt!130557 () Unit!5656)

(declare-fun lemmaDropApply!233 (List!4055 Int) Unit!5656)

(assert (=> b!306365 (= lt!130557 (lemmaDropApply!233 lt!130558 0))))

(declare-fun drop!248 (List!4055 Int) List!4055)

(declare-fun apply!886 (List!4055 Int) Token!1298)

(assert (=> b!306365 (= (head!960 (drop!248 lt!130558 0)) (apply!886 lt!130558 0))))

(declare-fun lt!130555 () Unit!5656)

(assert (=> b!306365 (= lt!130555 lt!130557)))

(declare-fun lt!130553 () List!4055)

(assert (=> b!306365 (= lt!130553 (list!1706 lt!130444))))

(declare-fun lt!130556 () Unit!5656)

(declare-fun lemmaDropTail!225 (List!4055 Int) Unit!5656)

(assert (=> b!306365 (= lt!130556 (lemmaDropTail!225 lt!130553 0))))

(declare-fun tail!536 (List!4055) List!4055)

(assert (=> b!306365 (= (tail!536 (drop!248 lt!130553 0)) (drop!248 lt!130553 (+ 0 1)))))

(declare-fun lt!130554 () Unit!5656)

(assert (=> b!306365 (= lt!130554 lt!130556)))

(assert (= (and d!93670 res!139266) b!306363))

(assert (= (and d!93670 c!58131) b!306364))

(assert (= (and d!93670 (not c!58131)) b!306365))

(declare-fun m!408803 () Bool)

(assert (=> d!93670 m!408803))

(declare-fun m!408805 () Bool)

(assert (=> d!93670 m!408805))

(declare-fun m!408807 () Bool)

(assert (=> d!93670 m!408807))

(assert (=> d!93670 m!408803))

(assert (=> d!93670 m!408805))

(declare-fun m!408811 () Bool)

(assert (=> d!93670 m!408811))

(declare-fun m!408813 () Bool)

(assert (=> d!93670 m!408813))

(assert (=> b!306363 m!408813))

(declare-fun m!408815 () Bool)

(assert (=> b!306365 m!408815))

(declare-fun m!408817 () Bool)

(assert (=> b!306365 m!408817))

(declare-fun m!408819 () Bool)

(assert (=> b!306365 m!408819))

(declare-fun m!408821 () Bool)

(assert (=> b!306365 m!408821))

(declare-fun m!408823 () Bool)

(assert (=> b!306365 m!408823))

(assert (=> b!306365 m!408821))

(declare-fun m!408825 () Bool)

(assert (=> b!306365 m!408825))

(declare-fun m!408827 () Bool)

(assert (=> b!306365 m!408827))

(assert (=> b!306365 m!408823))

(assert (=> b!306365 m!408825))

(declare-fun m!408829 () Bool)

(assert (=> b!306365 m!408829))

(declare-fun m!408831 () Bool)

(assert (=> b!306365 m!408831))

(declare-fun m!408833 () Bool)

(assert (=> b!306365 m!408833))

(assert (=> b!306365 m!408831))

(declare-fun m!408835 () Bool)

(assert (=> b!306365 m!408835))

(declare-fun m!408837 () Bool)

(assert (=> b!306365 m!408837))

(assert (=> b!306365 m!408817))

(declare-fun m!408839 () Bool)

(assert (=> b!306365 m!408839))

(assert (=> b!306170 d!93670))

(declare-fun d!93676 () Bool)

(declare-fun c!58134 () Bool)

(assert (=> d!93676 (= c!58134 ((_ is Cons!4045) lt!130459))))

(declare-fun e!190462 () List!4053)

(assert (=> d!93676 (= (printList!337 thiss!17480 lt!130459) e!190462)))

(declare-fun b!306373 () Bool)

(assert (=> b!306373 (= e!190462 (++!1096 (list!1705 (charsOf!420 (h!9442 lt!130459))) (printList!337 thiss!17480 (t!43215 lt!130459))))))

(declare-fun b!306374 () Bool)

(assert (=> b!306374 (= e!190462 Nil!4043)))

(assert (= (and d!93676 c!58134) b!306373))

(assert (= (and d!93676 (not c!58134)) b!306374))

(declare-fun m!408849 () Bool)

(assert (=> b!306373 m!408849))

(assert (=> b!306373 m!408849))

(declare-fun m!408851 () Bool)

(assert (=> b!306373 m!408851))

(declare-fun m!408853 () Bool)

(assert (=> b!306373 m!408853))

(assert (=> b!306373 m!408851))

(assert (=> b!306373 m!408853))

(declare-fun m!408855 () Bool)

(assert (=> b!306373 m!408855))

(assert (=> b!306170 d!93676))

(declare-fun d!93682 () Bool)

(assert (=> d!93682 (= (list!1705 lt!130455) (list!1707 (c!58102 lt!130455)))))

(declare-fun bs!35401 () Bool)

(assert (= bs!35401 d!93682))

(declare-fun m!408857 () Bool)

(assert (=> bs!35401 m!408857))

(assert (=> b!306170 d!93682))

(declare-fun d!93684 () Bool)

(declare-fun e!190467 () Bool)

(assert (=> d!93684 e!190467))

(declare-fun res!139274 () Bool)

(assert (=> d!93684 (=> (not res!139274) (not e!190467))))

(declare-fun lt!130564 () BalanceConc!2762)

(assert (=> d!93684 (= res!139274 (= (list!1706 lt!130564) (Cons!4045 (h!9442 tokens!465) Nil!4045)))))

(declare-fun singleton!143 (Token!1298) BalanceConc!2762)

(assert (=> d!93684 (= lt!130564 (singleton!143 (h!9442 tokens!465)))))

(assert (=> d!93684 (= (singletonSeq!323 (h!9442 tokens!465)) lt!130564)))

(declare-fun b!306379 () Bool)

(declare-fun isBalanced!392 (Conc!1377) Bool)

(assert (=> b!306379 (= e!190467 (isBalanced!392 (c!58104 lt!130564)))))

(assert (= (and d!93684 res!139274) b!306379))

(declare-fun m!408859 () Bool)

(assert (=> d!93684 m!408859))

(declare-fun m!408861 () Bool)

(assert (=> d!93684 m!408861))

(declare-fun m!408863 () Bool)

(assert (=> b!306379 m!408863))

(assert (=> b!306170 d!93684))

(declare-fun d!93690 () Bool)

(declare-fun lt!130567 () BalanceConc!2760)

(assert (=> d!93690 (= (list!1705 lt!130567) (printList!337 thiss!17480 (list!1706 lt!130444)))))

(assert (=> d!93690 (= lt!130567 (printTailRec!349 thiss!17480 lt!130444 0 (BalanceConc!2761 Empty!1376)))))

(assert (=> d!93690 (= (print!388 thiss!17480 lt!130444) lt!130567)))

(declare-fun bs!35402 () Bool)

(assert (= bs!35402 d!93690))

(declare-fun m!408875 () Bool)

(assert (=> bs!35402 m!408875))

(assert (=> bs!35402 m!408819))

(assert (=> bs!35402 m!408819))

(declare-fun m!408877 () Bool)

(assert (=> bs!35402 m!408877))

(assert (=> bs!35402 m!408521))

(assert (=> b!306170 d!93690))

(declare-fun d!93696 () Bool)

(assert (=> d!93696 (= (seqFromList!919 (t!43215 tokens!465)) (fromListB!380 (t!43215 tokens!465)))))

(declare-fun bs!35403 () Bool)

(assert (= bs!35403 d!93696))

(declare-fun m!408879 () Bool)

(assert (=> bs!35403 m!408879))

(assert (=> b!306148 d!93696))

(declare-fun d!93698 () Bool)

(assert (=> d!93698 (= (list!1705 (charsOf!420 separatorToken!170)) (list!1707 (c!58102 (charsOf!420 separatorToken!170))))))

(declare-fun bs!35404 () Bool)

(assert (= bs!35404 d!93698))

(declare-fun m!408881 () Bool)

(assert (=> bs!35404 m!408881))

(assert (=> b!306148 d!93698))

(declare-fun bs!35408 () Bool)

(declare-fun b!306426 () Bool)

(assert (= bs!35408 (and b!306426 b!306150)))

(declare-fun lambda!10442 () Int)

(assert (=> bs!35408 (not (= lambda!10442 lambda!10433))))

(declare-fun bs!35409 () Bool)

(assert (= bs!35409 (and b!306426 b!306162)))

(assert (=> bs!35409 (= lambda!10442 lambda!10434)))

(declare-fun bs!35410 () Bool)

(assert (= bs!35410 (and b!306426 d!93616)))

(assert (=> bs!35410 (= lambda!10442 lambda!10439)))

(declare-fun b!306432 () Bool)

(declare-fun e!190498 () Bool)

(assert (=> b!306432 (= e!190498 true)))

(declare-fun b!306431 () Bool)

(declare-fun e!190497 () Bool)

(assert (=> b!306431 (= e!190497 e!190498)))

(declare-fun b!306430 () Bool)

(declare-fun e!190496 () Bool)

(assert (=> b!306430 (= e!190496 e!190497)))

(assert (=> b!306426 e!190496))

(assert (= b!306431 b!306432))

(assert (= b!306430 b!306431))

(assert (= (and b!306426 ((_ is Cons!4044) rules!1920)) b!306430))

(assert (=> b!306432 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10442))))

(assert (=> b!306432 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10442))))

(assert (=> b!306426 true))

(declare-fun d!93700 () Bool)

(declare-fun c!58145 () Bool)

(assert (=> d!93700 (= c!58145 ((_ is Cons!4045) (t!43215 tokens!465)))))

(declare-fun e!190493 () List!4053)

(assert (=> d!93700 (= (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (t!43215 tokens!465) separatorToken!170) e!190493)))

(declare-fun b!306422 () Bool)

(declare-fun e!190494 () BalanceConc!2760)

(declare-fun call!17751 () BalanceConc!2760)

(assert (=> b!306422 (= e!190494 call!17751)))

(declare-fun bm!17742 () Bool)

(declare-fun call!17748 () List!4053)

(assert (=> bm!17742 (= call!17748 (list!1705 e!190494))))

(declare-fun c!58147 () Bool)

(declare-fun c!58148 () Bool)

(assert (=> bm!17742 (= c!58147 c!58148)))

(declare-fun call!17747 () BalanceConc!2760)

(declare-fun bm!17743 () Bool)

(declare-fun c!58146 () Bool)

(declare-fun call!17750 () List!4053)

(assert (=> bm!17743 (= call!17750 (list!1705 (ite c!58146 call!17747 call!17751)))))

(declare-fun b!306423 () Bool)

(assert (=> b!306423 (= e!190493 Nil!4043)))

(declare-fun bm!17744 () Bool)

(assert (=> bm!17744 (= call!17747 (charsOf!420 (h!9442 (t!43215 tokens!465))))))

(declare-fun b!306424 () Bool)

(declare-fun e!190495 () List!4053)

(assert (=> b!306424 (= e!190495 Nil!4043)))

(assert (=> b!306424 (= (print!388 thiss!17480 (singletonSeq!323 (h!9442 (t!43215 tokens!465)))) (printTailRec!349 thiss!17480 (singletonSeq!323 (h!9442 (t!43215 tokens!465))) 0 (BalanceConc!2761 Empty!1376)))))

(declare-fun lt!130592 () Unit!5656)

(declare-fun Unit!5658 () Unit!5656)

(assert (=> b!306424 (= lt!130592 Unit!5658)))

(declare-fun lt!130589 () List!4053)

(declare-fun lt!130593 () Unit!5656)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!141 (LexerInterface!663 List!4054 List!4053 List!4053) Unit!5656)

(assert (=> b!306424 (= lt!130593 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!141 thiss!17480 rules!1920 call!17748 lt!130589))))

(assert (=> b!306424 false))

(declare-fun lt!130590 () Unit!5656)

(declare-fun Unit!5659 () Unit!5656)

(assert (=> b!306424 (= lt!130590 Unit!5659)))

(declare-fun b!306425 () Bool)

(assert (=> b!306425 (= e!190494 (charsOf!420 separatorToken!170))))

(declare-fun e!190492 () List!4053)

(assert (=> b!306426 (= e!190493 e!190492)))

(declare-fun lt!130594 () Unit!5656)

(assert (=> b!306426 (= lt!130594 (forallContained!330 (t!43215 tokens!465) lambda!10442 (h!9442 (t!43215 tokens!465))))))

(assert (=> b!306426 (= lt!130589 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (t!43215 (t!43215 tokens!465)) separatorToken!170))))

(declare-fun lt!130591 () Option!921)

(assert (=> b!306426 (= lt!130591 (maxPrefix!379 thiss!17480 rules!1920 (++!1096 (list!1705 (charsOf!420 (h!9442 (t!43215 tokens!465)))) lt!130589)))))

(assert (=> b!306426 (= c!58146 (and ((_ is Some!920) lt!130591) (= (_1!2547 (v!14919 lt!130591)) (h!9442 (t!43215 tokens!465)))))))

(declare-fun b!306427 () Bool)

(declare-fun call!17749 () List!4053)

(assert (=> b!306427 (= e!190492 call!17749)))

(declare-fun b!306428 () Bool)

(assert (=> b!306428 (= c!58148 (and ((_ is Some!920) lt!130591) (not (= (_1!2547 (v!14919 lt!130591)) (h!9442 (t!43215 tokens!465))))))))

(assert (=> b!306428 (= e!190492 e!190495)))

(declare-fun bm!17745 () Bool)

(assert (=> bm!17745 (= call!17751 call!17747)))

(declare-fun bm!17746 () Bool)

(assert (=> bm!17746 (= call!17749 (++!1096 call!17750 (ite c!58146 lt!130589 call!17748)))))

(declare-fun b!306429 () Bool)

(assert (=> b!306429 (= e!190495 (++!1096 call!17749 lt!130589))))

(assert (= (and d!93700 c!58145) b!306426))

(assert (= (and d!93700 (not c!58145)) b!306423))

(assert (= (and b!306426 c!58146) b!306427))

(assert (= (and b!306426 (not c!58146)) b!306428))

(assert (= (and b!306428 c!58148) b!306429))

(assert (= (and b!306428 (not c!58148)) b!306424))

(assert (= (or b!306429 b!306424) bm!17745))

(assert (= (or b!306429 b!306424) bm!17742))

(assert (= (and bm!17742 c!58147) b!306425))

(assert (= (and bm!17742 (not c!58147)) b!306422))

(assert (= (or b!306427 bm!17745) bm!17744))

(assert (= (or b!306427 b!306429) bm!17743))

(assert (= (or b!306427 b!306429) bm!17746))

(declare-fun m!408921 () Bool)

(assert (=> bm!17746 m!408921))

(declare-fun m!408923 () Bool)

(assert (=> bm!17743 m!408923))

(declare-fun m!408925 () Bool)

(assert (=> b!306424 m!408925))

(assert (=> b!306424 m!408925))

(declare-fun m!408927 () Bool)

(assert (=> b!306424 m!408927))

(assert (=> b!306424 m!408925))

(declare-fun m!408929 () Bool)

(assert (=> b!306424 m!408929))

(declare-fun m!408931 () Bool)

(assert (=> b!306424 m!408931))

(declare-fun m!408933 () Bool)

(assert (=> bm!17744 m!408933))

(assert (=> b!306425 m!408465))

(declare-fun m!408935 () Bool)

(assert (=> b!306429 m!408935))

(declare-fun m!408937 () Bool)

(assert (=> b!306426 m!408937))

(declare-fun m!408939 () Bool)

(assert (=> b!306426 m!408939))

(declare-fun m!408941 () Bool)

(assert (=> b!306426 m!408941))

(declare-fun m!408943 () Bool)

(assert (=> b!306426 m!408943))

(assert (=> b!306426 m!408941))

(declare-fun m!408945 () Bool)

(assert (=> b!306426 m!408945))

(assert (=> b!306426 m!408933))

(assert (=> b!306426 m!408933))

(assert (=> b!306426 m!408939))

(declare-fun m!408947 () Bool)

(assert (=> bm!17742 m!408947))

(assert (=> b!306148 d!93700))

(declare-fun bs!35415 () Bool)

(declare-fun d!93712 () Bool)

(assert (= bs!35415 (and d!93712 b!306150)))

(declare-fun lambda!10447 () Int)

(assert (=> bs!35415 (= lambda!10447 lambda!10433)))

(declare-fun bs!35416 () Bool)

(assert (= bs!35416 (and d!93712 b!306162)))

(assert (=> bs!35416 (not (= lambda!10447 lambda!10434))))

(declare-fun bs!35417 () Bool)

(assert (= bs!35417 (and d!93712 d!93616)))

(assert (=> bs!35417 (not (= lambda!10447 lambda!10439))))

(declare-fun bs!35418 () Bool)

(assert (= bs!35418 (and d!93712 b!306426)))

(assert (=> bs!35418 (not (= lambda!10447 lambda!10442))))

(declare-fun bs!35419 () Bool)

(declare-fun b!306492 () Bool)

(assert (= bs!35419 (and b!306492 b!306426)))

(declare-fun lambda!10448 () Int)

(assert (=> bs!35419 (= lambda!10448 lambda!10442)))

(declare-fun bs!35420 () Bool)

(assert (= bs!35420 (and b!306492 b!306150)))

(assert (=> bs!35420 (not (= lambda!10448 lambda!10433))))

(declare-fun bs!35421 () Bool)

(assert (= bs!35421 (and b!306492 d!93712)))

(assert (=> bs!35421 (not (= lambda!10448 lambda!10447))))

(declare-fun bs!35422 () Bool)

(assert (= bs!35422 (and b!306492 b!306162)))

(assert (=> bs!35422 (= lambda!10448 lambda!10434)))

(declare-fun bs!35423 () Bool)

(assert (= bs!35423 (and b!306492 d!93616)))

(assert (=> bs!35423 (= lambda!10448 lambda!10439)))

(declare-fun b!306503 () Bool)

(declare-fun e!190542 () Bool)

(assert (=> b!306503 (= e!190542 true)))

(declare-fun b!306502 () Bool)

(declare-fun e!190541 () Bool)

(assert (=> b!306502 (= e!190541 e!190542)))

(declare-fun b!306501 () Bool)

(declare-fun e!190540 () Bool)

(assert (=> b!306501 (= e!190540 e!190541)))

(assert (=> b!306492 e!190540))

(assert (= b!306502 b!306503))

(assert (= b!306501 b!306502))

(assert (= (and b!306492 ((_ is Cons!4044) rules!1920)) b!306501))

(assert (=> b!306503 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10448))))

(assert (=> b!306503 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10448))))

(assert (=> b!306492 true))

(declare-fun b!306490 () Bool)

(declare-fun e!190536 () BalanceConc!2760)

(declare-fun call!17764 () BalanceConc!2760)

(assert (=> b!306490 (= e!190536 call!17764)))

(declare-fun lt!130634 () BalanceConc!2760)

(assert (=> d!93712 (= (list!1705 lt!130634) (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (dropList!193 (seqFromList!919 (t!43215 tokens!465)) 0) separatorToken!170))))

(declare-fun e!190534 () BalanceConc!2760)

(assert (=> d!93712 (= lt!130634 e!190534)))

(declare-fun c!58164 () Bool)

(assert (=> d!93712 (= c!58164 (>= 0 (size!3236 (seqFromList!919 (t!43215 tokens!465)))))))

(declare-fun lt!130644 () Unit!5656)

(declare-fun lemmaContentSubsetPreservesForall!137 (List!4055 List!4055 Int) Unit!5656)

(assert (=> d!93712 (= lt!130644 (lemmaContentSubsetPreservesForall!137 (list!1706 (seqFromList!919 (t!43215 tokens!465))) (dropList!193 (seqFromList!919 (t!43215 tokens!465)) 0) lambda!10447))))

(declare-fun e!190535 () Bool)

(assert (=> d!93712 e!190535))

(declare-fun res!139320 () Bool)

(assert (=> d!93712 (=> (not res!139320) (not e!190535))))

(assert (=> d!93712 (= res!139320 (>= 0 0))))

(assert (=> d!93712 (= (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 (seqFromList!919 (t!43215 tokens!465)) separatorToken!170 0) lt!130634)))

(declare-fun b!306491 () Bool)

(assert (=> b!306491 (= e!190534 (BalanceConc!2761 Empty!1376))))

(assert (=> b!306492 (= e!190534 e!190536)))

(declare-fun lt!130639 () List!4055)

(assert (=> b!306492 (= lt!130639 (list!1706 (seqFromList!919 (t!43215 tokens!465))))))

(declare-fun lt!130641 () Unit!5656)

(assert (=> b!306492 (= lt!130641 (lemmaDropApply!233 lt!130639 0))))

(assert (=> b!306492 (= (head!960 (drop!248 lt!130639 0)) (apply!886 lt!130639 0))))

(declare-fun lt!130633 () Unit!5656)

(assert (=> b!306492 (= lt!130633 lt!130641)))

(declare-fun lt!130638 () List!4055)

(assert (=> b!306492 (= lt!130638 (list!1706 (seqFromList!919 (t!43215 tokens!465))))))

(declare-fun lt!130643 () Unit!5656)

(assert (=> b!306492 (= lt!130643 (lemmaDropTail!225 lt!130638 0))))

(assert (=> b!306492 (= (tail!536 (drop!248 lt!130638 0)) (drop!248 lt!130638 (+ 0 1)))))

(declare-fun lt!130636 () Unit!5656)

(assert (=> b!306492 (= lt!130636 lt!130643)))

(declare-fun lt!130645 () Unit!5656)

(assert (=> b!306492 (= lt!130645 (forallContained!330 (list!1706 (seqFromList!919 (t!43215 tokens!465))) lambda!10448 (apply!885 (seqFromList!919 (t!43215 tokens!465)) 0)))))

(declare-fun lt!130635 () BalanceConc!2760)

(assert (=> b!306492 (= lt!130635 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 (seqFromList!919 (t!43215 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!130637 () Option!920)

(assert (=> b!306492 (= lt!130637 (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (++!1097 (charsOf!420 (apply!885 (seqFromList!919 (t!43215 tokens!465)) 0)) lt!130635)))))

(declare-fun res!139321 () Bool)

(assert (=> b!306492 (= res!139321 ((_ is Some!919) lt!130637))))

(declare-fun e!190537 () Bool)

(assert (=> b!306492 (=> (not res!139321) (not e!190537))))

(declare-fun c!58167 () Bool)

(assert (=> b!306492 (= c!58167 e!190537)))

(declare-fun bm!17757 () Bool)

(declare-fun call!17763 () BalanceConc!2760)

(declare-fun call!17762 () BalanceConc!2760)

(assert (=> bm!17757 (= call!17763 call!17762)))

(declare-fun bm!17758 () Bool)

(declare-fun c!58165 () Bool)

(assert (=> bm!17758 (= c!58165 c!58167)))

(declare-fun e!190533 () BalanceConc!2760)

(assert (=> bm!17758 (= call!17764 (++!1097 e!190533 (ite c!58167 lt!130635 call!17763)))))

(declare-fun b!306493 () Bool)

(declare-fun e!190539 () Bool)

(declare-fun call!17765 () Token!1298)

(assert (=> b!306493 (= e!190539 (not (= (_1!2548 (v!14918 lt!130637)) call!17765)))))

(declare-fun b!306494 () Bool)

(assert (=> b!306494 (= e!190533 call!17762)))

(declare-fun bm!17759 () Bool)

(assert (=> bm!17759 (= call!17765 (apply!885 (seqFromList!919 (t!43215 tokens!465)) 0))))

(declare-fun bm!17760 () Bool)

(declare-fun call!17766 () Token!1298)

(assert (=> bm!17760 (= call!17766 call!17765)))

(declare-fun b!306495 () Bool)

(declare-fun c!58166 () Bool)

(assert (=> b!306495 (= c!58166 e!190539)))

(declare-fun res!139319 () Bool)

(assert (=> b!306495 (=> (not res!139319) (not e!190539))))

(assert (=> b!306495 (= res!139319 ((_ is Some!919) lt!130637))))

(declare-fun e!190538 () BalanceConc!2760)

(assert (=> b!306495 (= e!190536 e!190538)))

(declare-fun bm!17761 () Bool)

(assert (=> bm!17761 (= call!17762 (charsOf!420 (ite c!58167 call!17765 (ite c!58166 separatorToken!170 call!17766))))))

(declare-fun b!306496 () Bool)

(assert (=> b!306496 (= e!190538 (BalanceConc!2761 Empty!1376))))

(assert (=> b!306496 (= (print!388 thiss!17480 (singletonSeq!323 call!17766)) (printTailRec!349 thiss!17480 (singletonSeq!323 call!17766) 0 (BalanceConc!2761 Empty!1376)))))

(declare-fun lt!130632 () Unit!5656)

(declare-fun Unit!5660 () Unit!5656)

(assert (=> b!306496 (= lt!130632 Unit!5660)))

(declare-fun lt!130642 () Unit!5656)

(assert (=> b!306496 (= lt!130642 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!141 thiss!17480 rules!1920 (list!1705 call!17763) (list!1705 lt!130635)))))

(assert (=> b!306496 false))

(declare-fun lt!130640 () Unit!5656)

(declare-fun Unit!5661 () Unit!5656)

(assert (=> b!306496 (= lt!130640 Unit!5661)))

(declare-fun b!306497 () Bool)

(assert (=> b!306497 (= e!190537 (= (_1!2548 (v!14918 lt!130637)) (apply!885 (seqFromList!919 (t!43215 tokens!465)) 0)))))

(declare-fun b!306498 () Bool)

(assert (=> b!306498 (= e!190533 (charsOf!420 call!17766))))

(declare-fun b!306499 () Bool)

(assert (=> b!306499 (= e!190538 (++!1097 call!17764 lt!130635))))

(declare-fun b!306500 () Bool)

(assert (=> b!306500 (= e!190535 (<= 0 (size!3236 (seqFromList!919 (t!43215 tokens!465)))))))

(assert (= (and d!93712 res!139320) b!306500))

(assert (= (and d!93712 c!58164) b!306491))

(assert (= (and d!93712 (not c!58164)) b!306492))

(assert (= (and b!306492 res!139321) b!306497))

(assert (= (and b!306492 c!58167) b!306490))

(assert (= (and b!306492 (not c!58167)) b!306495))

(assert (= (and b!306495 res!139319) b!306493))

(assert (= (and b!306495 c!58166) b!306499))

(assert (= (and b!306495 (not c!58166)) b!306496))

(assert (= (or b!306499 b!306496) bm!17760))

(assert (= (or b!306499 b!306496) bm!17757))

(assert (= (or b!306490 b!306493 bm!17760) bm!17759))

(assert (= (or b!306490 bm!17757) bm!17761))

(assert (= (or b!306490 b!306499) bm!17758))

(assert (= (and bm!17758 c!58165) b!306494))

(assert (= (and bm!17758 (not c!58165)) b!306498))

(declare-fun m!409021 () Bool)

(assert (=> d!93712 m!409021))

(declare-fun m!409023 () Bool)

(assert (=> d!93712 m!409023))

(declare-fun m!409025 () Bool)

(assert (=> d!93712 m!409025))

(declare-fun m!409027 () Bool)

(assert (=> d!93712 m!409027))

(assert (=> d!93712 m!408461))

(declare-fun m!409029 () Bool)

(assert (=> d!93712 m!409029))

(assert (=> d!93712 m!408461))

(assert (=> d!93712 m!409023))

(assert (=> d!93712 m!409025))

(declare-fun m!409031 () Bool)

(assert (=> d!93712 m!409031))

(assert (=> d!93712 m!408461))

(assert (=> d!93712 m!409025))

(assert (=> b!306500 m!408461))

(assert (=> b!306500 m!409029))

(assert (=> bm!17759 m!408461))

(declare-fun m!409033 () Bool)

(assert (=> bm!17759 m!409033))

(declare-fun m!409035 () Bool)

(assert (=> b!306492 m!409035))

(declare-fun m!409037 () Bool)

(assert (=> b!306492 m!409037))

(assert (=> b!306492 m!408461))

(assert (=> b!306492 m!409033))

(declare-fun m!409039 () Bool)

(assert (=> b!306492 m!409039))

(assert (=> b!306492 m!408461))

(assert (=> b!306492 m!409023))

(assert (=> b!306492 m!408461))

(declare-fun m!409041 () Bool)

(assert (=> b!306492 m!409041))

(declare-fun m!409043 () Bool)

(assert (=> b!306492 m!409043))

(declare-fun m!409045 () Bool)

(assert (=> b!306492 m!409045))

(declare-fun m!409047 () Bool)

(assert (=> b!306492 m!409047))

(assert (=> b!306492 m!409039))

(declare-fun m!409049 () Bool)

(assert (=> b!306492 m!409049))

(declare-fun m!409051 () Bool)

(assert (=> b!306492 m!409051))

(assert (=> b!306492 m!409023))

(assert (=> b!306492 m!409033))

(declare-fun m!409053 () Bool)

(assert (=> b!306492 m!409053))

(assert (=> b!306492 m!409035))

(declare-fun m!409055 () Bool)

(assert (=> b!306492 m!409055))

(declare-fun m!409057 () Bool)

(assert (=> b!306492 m!409057))

(assert (=> b!306492 m!409033))

(declare-fun m!409059 () Bool)

(assert (=> b!306492 m!409059))

(assert (=> b!306492 m!409059))

(assert (=> b!306492 m!409045))

(declare-fun m!409061 () Bool)

(assert (=> bm!17758 m!409061))

(declare-fun m!409063 () Bool)

(assert (=> b!306498 m!409063))

(declare-fun m!409065 () Bool)

(assert (=> b!306499 m!409065))

(declare-fun m!409067 () Bool)

(assert (=> bm!17761 m!409067))

(declare-fun m!409069 () Bool)

(assert (=> b!306496 m!409069))

(declare-fun m!409071 () Bool)

(assert (=> b!306496 m!409071))

(assert (=> b!306496 m!409069))

(assert (=> b!306496 m!409069))

(declare-fun m!409073 () Bool)

(assert (=> b!306496 m!409073))

(declare-fun m!409075 () Bool)

(assert (=> b!306496 m!409075))

(declare-fun m!409077 () Bool)

(assert (=> b!306496 m!409077))

(declare-fun m!409079 () Bool)

(assert (=> b!306496 m!409079))

(assert (=> b!306496 m!409075))

(assert (=> b!306496 m!409077))

(assert (=> b!306497 m!408461))

(assert (=> b!306497 m!409033))

(assert (=> b!306148 d!93712))

(declare-fun d!93736 () Bool)

(declare-fun lt!130648 () BalanceConc!2760)

(assert (=> d!93736 (= (list!1705 lt!130648) (originalCharacters!820 separatorToken!170))))

(assert (=> d!93736 (= lt!130648 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (value!26460 separatorToken!170)))))

(assert (=> d!93736 (= (charsOf!420 separatorToken!170) lt!130648)))

(declare-fun b_lambda!10625 () Bool)

(assert (=> (not b_lambda!10625) (not d!93736)))

(declare-fun t!43241 () Bool)

(declare-fun tb!19317 () Bool)

(assert (=> (and b!306155 (= (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170)))) t!43241) tb!19317))

(declare-fun b!306504 () Bool)

(declare-fun e!190543 () Bool)

(declare-fun tp!108700 () Bool)

(assert (=> b!306504 (= e!190543 (and (inv!4999 (c!58102 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (value!26460 separatorToken!170)))) tp!108700))))

(declare-fun result!23284 () Bool)

(assert (=> tb!19317 (= result!23284 (and (inv!5000 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (value!26460 separatorToken!170))) e!190543))))

(assert (= tb!19317 b!306504))

(declare-fun m!409081 () Bool)

(assert (=> b!306504 m!409081))

(declare-fun m!409083 () Bool)

(assert (=> tb!19317 m!409083))

(assert (=> d!93736 t!43241))

(declare-fun b_and!25877 () Bool)

(assert (= b_and!25865 (and (=> t!43241 result!23284) b_and!25877)))

(declare-fun t!43243 () Bool)

(declare-fun tb!19319 () Bool)

(assert (=> (and b!306182 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170)))) t!43243) tb!19319))

(declare-fun result!23286 () Bool)

(assert (= result!23286 result!23284))

(assert (=> d!93736 t!43243))

(declare-fun b_and!25879 () Bool)

(assert (= b_and!25867 (and (=> t!43243 result!23286) b_and!25879)))

(declare-fun t!43245 () Bool)

(declare-fun tb!19321 () Bool)

(assert (=> (and b!306183 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170)))) t!43245) tb!19321))

(declare-fun result!23288 () Bool)

(assert (= result!23288 result!23284))

(assert (=> d!93736 t!43245))

(declare-fun b_and!25881 () Bool)

(assert (= b_and!25869 (and (=> t!43245 result!23288) b_and!25881)))

(declare-fun m!409085 () Bool)

(assert (=> d!93736 m!409085))

(declare-fun m!409087 () Bool)

(assert (=> d!93736 m!409087))

(assert (=> b!306148 d!93736))

(declare-fun d!93738 () Bool)

(assert (=> d!93738 (= (++!1096 (++!1096 lt!130460 lt!130448) lt!130458) (++!1096 lt!130460 (++!1096 lt!130448 lt!130458)))))

(declare-fun lt!130651 () Unit!5656)

(declare-fun choose!2684 (List!4053 List!4053 List!4053) Unit!5656)

(assert (=> d!93738 (= lt!130651 (choose!2684 lt!130460 lt!130448 lt!130458))))

(assert (=> d!93738 (= (lemmaConcatAssociativity!484 lt!130460 lt!130448 lt!130458) lt!130651)))

(declare-fun bs!35424 () Bool)

(assert (= bs!35424 d!93738))

(declare-fun m!409089 () Bool)

(assert (=> bs!35424 m!409089))

(assert (=> bs!35424 m!408469))

(declare-fun m!409091 () Bool)

(assert (=> bs!35424 m!409091))

(assert (=> bs!35424 m!408483))

(declare-fun m!409093 () Bool)

(assert (=> bs!35424 m!409093))

(assert (=> bs!35424 m!408469))

(assert (=> bs!35424 m!408483))

(assert (=> b!306148 d!93738))

(declare-fun b!306513 () Bool)

(declare-fun e!190548 () List!4053)

(assert (=> b!306513 (= e!190548 lt!130458)))

(declare-fun lt!130654 () List!4053)

(declare-fun e!190549 () Bool)

(declare-fun b!306516 () Bool)

(assert (=> b!306516 (= e!190549 (or (not (= lt!130458 Nil!4043)) (= lt!130654 lt!130448)))))

(declare-fun b!306514 () Bool)

(assert (=> b!306514 (= e!190548 (Cons!4043 (h!9440 lt!130448) (++!1096 (t!43213 lt!130448) lt!130458)))))

(declare-fun d!93740 () Bool)

(assert (=> d!93740 e!190549))

(declare-fun res!139327 () Bool)

(assert (=> d!93740 (=> (not res!139327) (not e!190549))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!604 (List!4053) (InoxSet C!2924))

(assert (=> d!93740 (= res!139327 (= (content!604 lt!130654) ((_ map or) (content!604 lt!130448) (content!604 lt!130458))))))

(assert (=> d!93740 (= lt!130654 e!190548)))

(declare-fun c!58170 () Bool)

(assert (=> d!93740 (= c!58170 ((_ is Nil!4043) lt!130448))))

(assert (=> d!93740 (= (++!1096 lt!130448 lt!130458) lt!130654)))

(declare-fun b!306515 () Bool)

(declare-fun res!139326 () Bool)

(assert (=> b!306515 (=> (not res!139326) (not e!190549))))

(assert (=> b!306515 (= res!139326 (= (size!3235 lt!130654) (+ (size!3235 lt!130448) (size!3235 lt!130458))))))

(assert (= (and d!93740 c!58170) b!306513))

(assert (= (and d!93740 (not c!58170)) b!306514))

(assert (= (and d!93740 res!139327) b!306515))

(assert (= (and b!306515 res!139326) b!306516))

(declare-fun m!409095 () Bool)

(assert (=> b!306514 m!409095))

(declare-fun m!409097 () Bool)

(assert (=> d!93740 m!409097))

(declare-fun m!409099 () Bool)

(assert (=> d!93740 m!409099))

(declare-fun m!409101 () Bool)

(assert (=> d!93740 m!409101))

(declare-fun m!409103 () Bool)

(assert (=> b!306515 m!409103))

(declare-fun m!409105 () Bool)

(assert (=> b!306515 m!409105))

(declare-fun m!409107 () Bool)

(assert (=> b!306515 m!409107))

(assert (=> b!306148 d!93740))

(declare-fun d!93742 () Bool)

(assert (=> d!93742 (= (list!1705 (charsOf!420 (h!9442 tokens!465))) (list!1707 (c!58102 (charsOf!420 (h!9442 tokens!465)))))))

(declare-fun bs!35425 () Bool)

(assert (= bs!35425 d!93742))

(declare-fun m!409109 () Bool)

(assert (=> bs!35425 m!409109))

(assert (=> b!306148 d!93742))

(declare-fun d!93744 () Bool)

(declare-fun lt!130655 () BalanceConc!2760)

(assert (=> d!93744 (= (list!1705 lt!130655) (originalCharacters!820 (h!9442 tokens!465)))))

(assert (=> d!93744 (= lt!130655 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (value!26460 (h!9442 tokens!465))))))

(assert (=> d!93744 (= (charsOf!420 (h!9442 tokens!465)) lt!130655)))

(declare-fun b_lambda!10627 () Bool)

(assert (=> (not b_lambda!10627) (not d!93744)))

(assert (=> d!93744 t!43221))

(declare-fun b_and!25883 () Bool)

(assert (= b_and!25877 (and (=> t!43221 result!23268) b_and!25883)))

(assert (=> d!93744 t!43223))

(declare-fun b_and!25885 () Bool)

(assert (= b_and!25879 (and (=> t!43223 result!23272) b_and!25885)))

(assert (=> d!93744 t!43225))

(declare-fun b_and!25887 () Bool)

(assert (= b_and!25881 (and (=> t!43225 result!23274) b_and!25887)))

(declare-fun m!409111 () Bool)

(assert (=> d!93744 m!409111))

(assert (=> d!93744 m!408711))

(assert (=> b!306148 d!93744))

(declare-fun b!306517 () Bool)

(declare-fun e!190550 () List!4053)

(assert (=> b!306517 (= e!190550 lt!130463)))

(declare-fun lt!130656 () List!4053)

(declare-fun e!190551 () Bool)

(declare-fun b!306520 () Bool)

(assert (=> b!306520 (= e!190551 (or (not (= lt!130463 Nil!4043)) (= lt!130656 lt!130460)))))

(declare-fun b!306518 () Bool)

(assert (=> b!306518 (= e!190550 (Cons!4043 (h!9440 lt!130460) (++!1096 (t!43213 lt!130460) lt!130463)))))

(declare-fun d!93746 () Bool)

(assert (=> d!93746 e!190551))

(declare-fun res!139329 () Bool)

(assert (=> d!93746 (=> (not res!139329) (not e!190551))))

(assert (=> d!93746 (= res!139329 (= (content!604 lt!130656) ((_ map or) (content!604 lt!130460) (content!604 lt!130463))))))

(assert (=> d!93746 (= lt!130656 e!190550)))

(declare-fun c!58171 () Bool)

(assert (=> d!93746 (= c!58171 ((_ is Nil!4043) lt!130460))))

(assert (=> d!93746 (= (++!1096 lt!130460 lt!130463) lt!130656)))

(declare-fun b!306519 () Bool)

(declare-fun res!139328 () Bool)

(assert (=> b!306519 (=> (not res!139328) (not e!190551))))

(assert (=> b!306519 (= res!139328 (= (size!3235 lt!130656) (+ (size!3235 lt!130460) (size!3235 lt!130463))))))

(assert (= (and d!93746 c!58171) b!306517))

(assert (= (and d!93746 (not c!58171)) b!306518))

(assert (= (and d!93746 res!139329) b!306519))

(assert (= (and b!306519 res!139328) b!306520))

(declare-fun m!409113 () Bool)

(assert (=> b!306518 m!409113))

(declare-fun m!409115 () Bool)

(assert (=> d!93746 m!409115))

(declare-fun m!409117 () Bool)

(assert (=> d!93746 m!409117))

(declare-fun m!409119 () Bool)

(assert (=> d!93746 m!409119))

(declare-fun m!409121 () Bool)

(assert (=> b!306519 m!409121))

(assert (=> b!306519 m!408749))

(declare-fun m!409123 () Bool)

(assert (=> b!306519 m!409123))

(assert (=> b!306148 d!93746))

(declare-fun d!93748 () Bool)

(assert (=> d!93748 (= (list!1705 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 (seqFromList!919 (t!43215 tokens!465)) separatorToken!170 0)) (list!1707 (c!58102 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 (seqFromList!919 (t!43215 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!35426 () Bool)

(assert (= bs!35426 d!93748))

(declare-fun m!409125 () Bool)

(assert (=> bs!35426 m!409125))

(assert (=> b!306148 d!93748))

(declare-fun b!306521 () Bool)

(declare-fun e!190552 () List!4053)

(assert (=> b!306521 (= e!190552 lt!130458)))

(declare-fun e!190553 () Bool)

(declare-fun b!306524 () Bool)

(declare-fun lt!130657 () List!4053)

(assert (=> b!306524 (= e!190553 (or (not (= lt!130458 Nil!4043)) (= lt!130657 lt!130451)))))

(declare-fun b!306522 () Bool)

(assert (=> b!306522 (= e!190552 (Cons!4043 (h!9440 lt!130451) (++!1096 (t!43213 lt!130451) lt!130458)))))

(declare-fun d!93750 () Bool)

(assert (=> d!93750 e!190553))

(declare-fun res!139331 () Bool)

(assert (=> d!93750 (=> (not res!139331) (not e!190553))))

(assert (=> d!93750 (= res!139331 (= (content!604 lt!130657) ((_ map or) (content!604 lt!130451) (content!604 lt!130458))))))

(assert (=> d!93750 (= lt!130657 e!190552)))

(declare-fun c!58172 () Bool)

(assert (=> d!93750 (= c!58172 ((_ is Nil!4043) lt!130451))))

(assert (=> d!93750 (= (++!1096 lt!130451 lt!130458) lt!130657)))

(declare-fun b!306523 () Bool)

(declare-fun res!139330 () Bool)

(assert (=> b!306523 (=> (not res!139330) (not e!190553))))

(assert (=> b!306523 (= res!139330 (= (size!3235 lt!130657) (+ (size!3235 lt!130451) (size!3235 lt!130458))))))

(assert (= (and d!93750 c!58172) b!306521))

(assert (= (and d!93750 (not c!58172)) b!306522))

(assert (= (and d!93750 res!139331) b!306523))

(assert (= (and b!306523 res!139330) b!306524))

(declare-fun m!409127 () Bool)

(assert (=> b!306522 m!409127))

(declare-fun m!409129 () Bool)

(assert (=> d!93750 m!409129))

(declare-fun m!409131 () Bool)

(assert (=> d!93750 m!409131))

(assert (=> d!93750 m!409101))

(declare-fun m!409133 () Bool)

(assert (=> b!306523 m!409133))

(declare-fun m!409135 () Bool)

(assert (=> b!306523 m!409135))

(assert (=> b!306523 m!409107))

(assert (=> b!306148 d!93750))

(declare-fun b!306525 () Bool)

(declare-fun e!190554 () List!4053)

(assert (=> b!306525 (= e!190554 lt!130448)))

(declare-fun lt!130658 () List!4053)

(declare-fun e!190555 () Bool)

(declare-fun b!306528 () Bool)

(assert (=> b!306528 (= e!190555 (or (not (= lt!130448 Nil!4043)) (= lt!130658 lt!130460)))))

(declare-fun b!306526 () Bool)

(assert (=> b!306526 (= e!190554 (Cons!4043 (h!9440 lt!130460) (++!1096 (t!43213 lt!130460) lt!130448)))))

(declare-fun d!93752 () Bool)

(assert (=> d!93752 e!190555))

(declare-fun res!139333 () Bool)

(assert (=> d!93752 (=> (not res!139333) (not e!190555))))

(assert (=> d!93752 (= res!139333 (= (content!604 lt!130658) ((_ map or) (content!604 lt!130460) (content!604 lt!130448))))))

(assert (=> d!93752 (= lt!130658 e!190554)))

(declare-fun c!58173 () Bool)

(assert (=> d!93752 (= c!58173 ((_ is Nil!4043) lt!130460))))

(assert (=> d!93752 (= (++!1096 lt!130460 lt!130448) lt!130658)))

(declare-fun b!306527 () Bool)

(declare-fun res!139332 () Bool)

(assert (=> b!306527 (=> (not res!139332) (not e!190555))))

(assert (=> b!306527 (= res!139332 (= (size!3235 lt!130658) (+ (size!3235 lt!130460) (size!3235 lt!130448))))))

(assert (= (and d!93752 c!58173) b!306525))

(assert (= (and d!93752 (not c!58173)) b!306526))

(assert (= (and d!93752 res!139333) b!306527))

(assert (= (and b!306527 res!139332) b!306528))

(declare-fun m!409137 () Bool)

(assert (=> b!306526 m!409137))

(declare-fun m!409139 () Bool)

(assert (=> d!93752 m!409139))

(assert (=> d!93752 m!409117))

(assert (=> d!93752 m!409099))

(declare-fun m!409141 () Bool)

(assert (=> b!306527 m!409141))

(assert (=> b!306527 m!408749))

(assert (=> b!306527 m!409105))

(assert (=> b!306148 d!93752))

(declare-fun d!93754 () Bool)

(declare-fun res!139338 () Bool)

(declare-fun e!190560 () Bool)

(assert (=> d!93754 (=> res!139338 e!190560)))

(assert (=> d!93754 (= res!139338 ((_ is Nil!4045) tokens!465))))

(assert (=> d!93754 (= (forall!1066 tokens!465 lambda!10433) e!190560)))

(declare-fun b!306533 () Bool)

(declare-fun e!190561 () Bool)

(assert (=> b!306533 (= e!190560 e!190561)))

(declare-fun res!139339 () Bool)

(assert (=> b!306533 (=> (not res!139339) (not e!190561))))

(declare-fun dynLambda!2209 (Int Token!1298) Bool)

(assert (=> b!306533 (= res!139339 (dynLambda!2209 lambda!10433 (h!9442 tokens!465)))))

(declare-fun b!306534 () Bool)

(assert (=> b!306534 (= e!190561 (forall!1066 (t!43215 tokens!465) lambda!10433))))

(assert (= (and d!93754 (not res!139338)) b!306533))

(assert (= (and b!306533 res!139339) b!306534))

(declare-fun b_lambda!10629 () Bool)

(assert (=> (not b_lambda!10629) (not b!306533)))

(declare-fun m!409143 () Bool)

(assert (=> b!306533 m!409143))

(declare-fun m!409145 () Bool)

(assert (=> b!306534 m!409145))

(assert (=> b!306150 d!93754))

(declare-fun d!93756 () Bool)

(declare-fun res!139342 () Bool)

(declare-fun e!190564 () Bool)

(assert (=> d!93756 (=> (not res!139342) (not e!190564))))

(declare-fun rulesValid!256 (LexerInterface!663 List!4054) Bool)

(assert (=> d!93756 (= res!139342 (rulesValid!256 thiss!17480 rules!1920))))

(assert (=> d!93756 (= (rulesInvariant!629 thiss!17480 rules!1920) e!190564)))

(declare-fun b!306537 () Bool)

(declare-datatypes ((List!4057 0))(
  ( (Nil!4047) (Cons!4047 (h!9444 String!5075) (t!43281 List!4057)) )
))
(declare-fun noDuplicateTag!256 (LexerInterface!663 List!4054 List!4057) Bool)

(assert (=> b!306537 (= e!190564 (noDuplicateTag!256 thiss!17480 rules!1920 Nil!4047))))

(assert (= (and d!93756 res!139342) b!306537))

(declare-fun m!409147 () Bool)

(assert (=> d!93756 m!409147))

(declare-fun m!409149 () Bool)

(assert (=> b!306537 m!409149))

(assert (=> b!306171 d!93756))

(declare-fun d!93758 () Bool)

(assert (=> d!93758 (= (inv!4994 (tag!995 (rule!1390 separatorToken!170))) (= (mod (str.len (value!26459 (tag!995 (rule!1390 separatorToken!170)))) 2) 0))))

(assert (=> b!306157 d!93758))

(declare-fun d!93760 () Bool)

(declare-fun res!139345 () Bool)

(declare-fun e!190567 () Bool)

(assert (=> d!93760 (=> (not res!139345) (not e!190567))))

(declare-fun semiInverseModEq!291 (Int Int) Bool)

(assert (=> d!93760 (= res!139345 (semiInverseModEq!291 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toValue!1536 (transformation!777 (rule!1390 separatorToken!170)))))))

(assert (=> d!93760 (= (inv!4998 (transformation!777 (rule!1390 separatorToken!170))) e!190567)))

(declare-fun b!306542 () Bool)

(declare-fun equivClasses!274 (Int Int) Bool)

(assert (=> b!306542 (= e!190567 (equivClasses!274 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toValue!1536 (transformation!777 (rule!1390 separatorToken!170)))))))

(assert (= (and d!93760 res!139345) b!306542))

(declare-fun m!409151 () Bool)

(assert (=> d!93760 m!409151))

(declare-fun m!409153 () Bool)

(assert (=> b!306542 m!409153))

(assert (=> b!306157 d!93760))

(declare-fun b!306593 () Bool)

(declare-fun res!139369 () Bool)

(declare-fun e!190595 () Bool)

(assert (=> b!306593 (=> res!139369 e!190595)))

(declare-fun e!190596 () Bool)

(assert (=> b!306593 (= res!139369 e!190596)))

(declare-fun res!139363 () Bool)

(assert (=> b!306593 (=> (not res!139363) (not e!190596))))

(declare-fun lt!130679 () Bool)

(assert (=> b!306593 (= res!139363 lt!130679)))

(declare-fun b!306594 () Bool)

(declare-fun res!139362 () Bool)

(assert (=> b!306594 (=> (not res!139362) (not e!190596))))

(declare-fun call!17784 () Bool)

(assert (=> b!306594 (= res!139362 (not call!17784))))

(declare-fun b!306595 () Bool)

(declare-fun head!962 (List!4053) C!2924)

(assert (=> b!306595 (= e!190596 (= (head!962 lt!130460) (c!58103 (regex!777 (rule!1390 (h!9442 tokens!465))))))))

(declare-fun b!306596 () Bool)

(declare-fun e!190594 () Bool)

(declare-fun e!190600 () Bool)

(assert (=> b!306596 (= e!190594 e!190600)))

(declare-fun res!139368 () Bool)

(assert (=> b!306596 (=> res!139368 e!190600)))

(assert (=> b!306596 (= res!139368 call!17784)))

(declare-fun b!306598 () Bool)

(declare-fun e!190598 () Bool)

(assert (=> b!306598 (= e!190598 (= lt!130679 call!17784))))

(declare-fun b!306599 () Bool)

(assert (=> b!306599 (= e!190600 (not (= (head!962 lt!130460) (c!58103 (regex!777 (rule!1390 (h!9442 tokens!465)))))))))

(declare-fun b!306600 () Bool)

(declare-fun e!190599 () Bool)

(assert (=> b!306600 (= e!190598 e!190599)))

(declare-fun c!58194 () Bool)

(assert (=> b!306600 (= c!58194 ((_ is EmptyLang!1001) (regex!777 (rule!1390 (h!9442 tokens!465)))))))

(declare-fun b!306601 () Bool)

(declare-fun res!139365 () Bool)

(assert (=> b!306601 (=> res!139365 e!190600)))

(declare-fun tail!537 (List!4053) List!4053)

(assert (=> b!306601 (= res!139365 (not (isEmpty!2751 (tail!537 lt!130460))))))

(declare-fun b!306602 () Bool)

(declare-fun e!190597 () Bool)

(declare-fun derivativeStep!159 (Regex!1001 C!2924) Regex!1001)

(assert (=> b!306602 (= e!190597 (matchR!319 (derivativeStep!159 (regex!777 (rule!1390 (h!9442 tokens!465))) (head!962 lt!130460)) (tail!537 lt!130460)))))

(declare-fun b!306603 () Bool)

(assert (=> b!306603 (= e!190599 (not lt!130679))))

(declare-fun b!306604 () Bool)

(declare-fun res!139366 () Bool)

(assert (=> b!306604 (=> (not res!139366) (not e!190596))))

(assert (=> b!306604 (= res!139366 (isEmpty!2751 (tail!537 lt!130460)))))

(declare-fun b!306605 () Bool)

(declare-fun res!139364 () Bool)

(assert (=> b!306605 (=> res!139364 e!190595)))

(assert (=> b!306605 (= res!139364 (not ((_ is ElementMatch!1001) (regex!777 (rule!1390 (h!9442 tokens!465))))))))

(assert (=> b!306605 (= e!190599 e!190595)))

(declare-fun b!306606 () Bool)

(declare-fun nullable!193 (Regex!1001) Bool)

(assert (=> b!306606 (= e!190597 (nullable!193 (regex!777 (rule!1390 (h!9442 tokens!465)))))))

(declare-fun bm!17779 () Bool)

(assert (=> bm!17779 (= call!17784 (isEmpty!2751 lt!130460))))

(declare-fun b!306597 () Bool)

(assert (=> b!306597 (= e!190595 e!190594)))

(declare-fun res!139367 () Bool)

(assert (=> b!306597 (=> (not res!139367) (not e!190594))))

(assert (=> b!306597 (= res!139367 (not lt!130679))))

(declare-fun d!93762 () Bool)

(assert (=> d!93762 e!190598))

(declare-fun c!58192 () Bool)

(assert (=> d!93762 (= c!58192 ((_ is EmptyExpr!1001) (regex!777 (rule!1390 (h!9442 tokens!465)))))))

(assert (=> d!93762 (= lt!130679 e!190597)))

(declare-fun c!58193 () Bool)

(assert (=> d!93762 (= c!58193 (isEmpty!2751 lt!130460))))

(declare-fun validRegex!268 (Regex!1001) Bool)

(assert (=> d!93762 (validRegex!268 (regex!777 (rule!1390 (h!9442 tokens!465))))))

(assert (=> d!93762 (= (matchR!319 (regex!777 (rule!1390 (h!9442 tokens!465))) lt!130460) lt!130679)))

(assert (= (and d!93762 c!58193) b!306606))

(assert (= (and d!93762 (not c!58193)) b!306602))

(assert (= (and d!93762 c!58192) b!306598))

(assert (= (and d!93762 (not c!58192)) b!306600))

(assert (= (and b!306600 c!58194) b!306603))

(assert (= (and b!306600 (not c!58194)) b!306605))

(assert (= (and b!306605 (not res!139364)) b!306593))

(assert (= (and b!306593 res!139363) b!306594))

(assert (= (and b!306594 res!139362) b!306604))

(assert (= (and b!306604 res!139366) b!306595))

(assert (= (and b!306593 (not res!139369)) b!306597))

(assert (= (and b!306597 res!139367) b!306596))

(assert (= (and b!306596 (not res!139368)) b!306601))

(assert (= (and b!306601 (not res!139365)) b!306599))

(assert (= (or b!306598 b!306594 b!306596) bm!17779))

(declare-fun m!409155 () Bool)

(assert (=> b!306602 m!409155))

(assert (=> b!306602 m!409155))

(declare-fun m!409157 () Bool)

(assert (=> b!306602 m!409157))

(declare-fun m!409159 () Bool)

(assert (=> b!306602 m!409159))

(assert (=> b!306602 m!409157))

(assert (=> b!306602 m!409159))

(declare-fun m!409161 () Bool)

(assert (=> b!306602 m!409161))

(declare-fun m!409163 () Bool)

(assert (=> bm!17779 m!409163))

(assert (=> b!306601 m!409159))

(assert (=> b!306601 m!409159))

(declare-fun m!409165 () Bool)

(assert (=> b!306601 m!409165))

(assert (=> b!306599 m!409155))

(assert (=> d!93762 m!409163))

(declare-fun m!409167 () Bool)

(assert (=> d!93762 m!409167))

(declare-fun m!409169 () Bool)

(assert (=> b!306606 m!409169))

(assert (=> b!306595 m!409155))

(assert (=> b!306604 m!409159))

(assert (=> b!306604 m!409159))

(assert (=> b!306604 m!409165))

(assert (=> b!306178 d!93762))

(declare-fun d!93764 () Bool)

(declare-fun lt!130685 () Bool)

(declare-fun e!190609 () Bool)

(assert (=> d!93764 (= lt!130685 e!190609)))

(declare-fun res!139378 () Bool)

(assert (=> d!93764 (=> (not res!139378) (not e!190609))))

(assert (=> d!93764 (= res!139378 (= (list!1706 (_1!2549 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 (h!9442 tokens!465)))))) (list!1706 (singletonSeq!323 (h!9442 tokens!465)))))))

(declare-fun e!190608 () Bool)

(assert (=> d!93764 (= lt!130685 e!190608)))

(declare-fun res!139376 () Bool)

(assert (=> d!93764 (=> (not res!139376) (not e!190608))))

(declare-fun lt!130684 () tuple2!4666)

(assert (=> d!93764 (= res!139376 (= (size!3236 (_1!2549 lt!130684)) 1))))

(assert (=> d!93764 (= lt!130684 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 (h!9442 tokens!465)))))))

(assert (=> d!93764 (not (isEmpty!2752 rules!1920))))

(assert (=> d!93764 (= (rulesProduceIndividualToken!412 thiss!17480 rules!1920 (h!9442 tokens!465)) lt!130685)))

(declare-fun b!306616 () Bool)

(declare-fun res!139377 () Bool)

(assert (=> b!306616 (=> (not res!139377) (not e!190608))))

(assert (=> b!306616 (= res!139377 (= (apply!885 (_1!2549 lt!130684) 0) (h!9442 tokens!465)))))

(declare-fun b!306617 () Bool)

(declare-fun isEmpty!2760 (BalanceConc!2760) Bool)

(assert (=> b!306617 (= e!190608 (isEmpty!2760 (_2!2549 lt!130684)))))

(declare-fun b!306618 () Bool)

(assert (=> b!306618 (= e!190609 (isEmpty!2760 (_2!2549 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 (h!9442 tokens!465)))))))))

(assert (= (and d!93764 res!139376) b!306616))

(assert (= (and b!306616 res!139377) b!306617))

(assert (= (and d!93764 res!139378) b!306618))

(assert (=> d!93764 m!408531))

(declare-fun m!409199 () Bool)

(assert (=> d!93764 m!409199))

(assert (=> d!93764 m!408519))

(declare-fun m!409201 () Bool)

(assert (=> d!93764 m!409201))

(assert (=> d!93764 m!408519))

(declare-fun m!409203 () Bool)

(assert (=> d!93764 m!409203))

(assert (=> d!93764 m!408519))

(declare-fun m!409205 () Bool)

(assert (=> d!93764 m!409205))

(assert (=> d!93764 m!409201))

(declare-fun m!409207 () Bool)

(assert (=> d!93764 m!409207))

(declare-fun m!409209 () Bool)

(assert (=> b!306616 m!409209))

(declare-fun m!409211 () Bool)

(assert (=> b!306617 m!409211))

(assert (=> b!306618 m!408519))

(assert (=> b!306618 m!408519))

(assert (=> b!306618 m!409201))

(assert (=> b!306618 m!409201))

(assert (=> b!306618 m!409207))

(declare-fun m!409213 () Bool)

(assert (=> b!306618 m!409213))

(assert (=> b!306156 d!93764))

(declare-fun d!93768 () Bool)

(declare-fun lt!130687 () Bool)

(declare-fun e!190611 () Bool)

(assert (=> d!93768 (= lt!130687 e!190611)))

(declare-fun res!139381 () Bool)

(assert (=> d!93768 (=> (not res!139381) (not e!190611))))

(assert (=> d!93768 (= res!139381 (= (list!1706 (_1!2549 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 separatorToken!170))))) (list!1706 (singletonSeq!323 separatorToken!170))))))

(declare-fun e!190610 () Bool)

(assert (=> d!93768 (= lt!130687 e!190610)))

(declare-fun res!139379 () Bool)

(assert (=> d!93768 (=> (not res!139379) (not e!190610))))

(declare-fun lt!130686 () tuple2!4666)

(assert (=> d!93768 (= res!139379 (= (size!3236 (_1!2549 lt!130686)) 1))))

(assert (=> d!93768 (= lt!130686 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 separatorToken!170))))))

(assert (=> d!93768 (not (isEmpty!2752 rules!1920))))

(assert (=> d!93768 (= (rulesProduceIndividualToken!412 thiss!17480 rules!1920 separatorToken!170) lt!130687)))

(declare-fun b!306619 () Bool)

(declare-fun res!139380 () Bool)

(assert (=> b!306619 (=> (not res!139380) (not e!190610))))

(assert (=> b!306619 (= res!139380 (= (apply!885 (_1!2549 lt!130686) 0) separatorToken!170))))

(declare-fun b!306620 () Bool)

(assert (=> b!306620 (= e!190610 (isEmpty!2760 (_2!2549 lt!130686)))))

(declare-fun b!306621 () Bool)

(assert (=> b!306621 (= e!190611 (isEmpty!2760 (_2!2549 (lex!455 thiss!17480 rules!1920 (print!388 thiss!17480 (singletonSeq!323 separatorToken!170))))))))

(assert (= (and d!93768 res!139379) b!306619))

(assert (= (and b!306619 res!139380) b!306620))

(assert (= (and d!93768 res!139381) b!306621))

(assert (=> d!93768 m!408531))

(declare-fun m!409215 () Bool)

(assert (=> d!93768 m!409215))

(declare-fun m!409217 () Bool)

(assert (=> d!93768 m!409217))

(declare-fun m!409219 () Bool)

(assert (=> d!93768 m!409219))

(assert (=> d!93768 m!409217))

(declare-fun m!409221 () Bool)

(assert (=> d!93768 m!409221))

(assert (=> d!93768 m!409217))

(declare-fun m!409223 () Bool)

(assert (=> d!93768 m!409223))

(assert (=> d!93768 m!409219))

(declare-fun m!409225 () Bool)

(assert (=> d!93768 m!409225))

(declare-fun m!409227 () Bool)

(assert (=> b!306619 m!409227))

(declare-fun m!409229 () Bool)

(assert (=> b!306620 m!409229))

(assert (=> b!306621 m!409217))

(assert (=> b!306621 m!409217))

(assert (=> b!306621 m!409219))

(assert (=> b!306621 m!409219))

(assert (=> b!306621 m!409225))

(declare-fun m!409231 () Bool)

(assert (=> b!306621 m!409231))

(assert (=> b!306158 d!93768))

(declare-fun d!93770 () Bool)

(declare-fun res!139386 () Bool)

(declare-fun e!190616 () Bool)

(assert (=> d!93770 (=> res!139386 e!190616)))

(assert (=> d!93770 (= res!139386 (not ((_ is Cons!4044) rules!1920)))))

(assert (=> d!93770 (= (sepAndNonSepRulesDisjointChars!366 rules!1920 rules!1920) e!190616)))

(declare-fun b!306626 () Bool)

(declare-fun e!190617 () Bool)

(assert (=> b!306626 (= e!190616 e!190617)))

(declare-fun res!139387 () Bool)

(assert (=> b!306626 (=> (not res!139387) (not e!190617))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!148 (Rule!1354 List!4054) Bool)

(assert (=> b!306626 (= res!139387 (ruleDisjointCharsFromAllFromOtherType!148 (h!9441 rules!1920) rules!1920))))

(declare-fun b!306627 () Bool)

(assert (=> b!306627 (= e!190617 (sepAndNonSepRulesDisjointChars!366 rules!1920 (t!43214 rules!1920)))))

(assert (= (and d!93770 (not res!139386)) b!306626))

(assert (= (and b!306626 res!139387) b!306627))

(declare-fun m!409233 () Bool)

(assert (=> b!306626 m!409233))

(declare-fun m!409235 () Bool)

(assert (=> b!306627 m!409235))

(assert (=> b!306179 d!93770))

(declare-fun d!93772 () Bool)

(assert (=> d!93772 (= (list!1705 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 lt!130457 separatorToken!170 0)) (list!1707 (c!58102 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 lt!130457 separatorToken!170 0))))))

(declare-fun bs!35429 () Bool)

(assert (= bs!35429 d!93772))

(declare-fun m!409237 () Bool)

(assert (=> bs!35429 m!409237))

(assert (=> b!306154 d!93772))

(declare-fun bs!35430 () Bool)

(declare-fun d!93774 () Bool)

(assert (= bs!35430 (and d!93774 b!306426)))

(declare-fun lambda!10452 () Int)

(assert (=> bs!35430 (not (= lambda!10452 lambda!10442))))

(declare-fun bs!35431 () Bool)

(assert (= bs!35431 (and d!93774 b!306150)))

(assert (=> bs!35431 (= lambda!10452 lambda!10433)))

(declare-fun bs!35432 () Bool)

(assert (= bs!35432 (and d!93774 d!93712)))

(assert (=> bs!35432 (= lambda!10452 lambda!10447)))

(declare-fun bs!35433 () Bool)

(assert (= bs!35433 (and d!93774 b!306162)))

(assert (=> bs!35433 (not (= lambda!10452 lambda!10434))))

(declare-fun bs!35434 () Bool)

(assert (= bs!35434 (and d!93774 d!93616)))

(assert (=> bs!35434 (not (= lambda!10452 lambda!10439))))

(declare-fun bs!35435 () Bool)

(assert (= bs!35435 (and d!93774 b!306492)))

(assert (=> bs!35435 (not (= lambda!10452 lambda!10448))))

(declare-fun bs!35436 () Bool)

(declare-fun b!306630 () Bool)

(assert (= bs!35436 (and b!306630 b!306426)))

(declare-fun lambda!10453 () Int)

(assert (=> bs!35436 (= lambda!10453 lambda!10442)))

(declare-fun bs!35437 () Bool)

(assert (= bs!35437 (and b!306630 b!306150)))

(assert (=> bs!35437 (not (= lambda!10453 lambda!10433))))

(declare-fun bs!35438 () Bool)

(assert (= bs!35438 (and b!306630 d!93712)))

(assert (=> bs!35438 (not (= lambda!10453 lambda!10447))))

(declare-fun bs!35439 () Bool)

(assert (= bs!35439 (and b!306630 d!93774)))

(assert (=> bs!35439 (not (= lambda!10453 lambda!10452))))

(declare-fun bs!35440 () Bool)

(assert (= bs!35440 (and b!306630 b!306162)))

(assert (=> bs!35440 (= lambda!10453 lambda!10434)))

(declare-fun bs!35441 () Bool)

(assert (= bs!35441 (and b!306630 d!93616)))

(assert (=> bs!35441 (= lambda!10453 lambda!10439)))

(declare-fun bs!35442 () Bool)

(assert (= bs!35442 (and b!306630 b!306492)))

(assert (=> bs!35442 (= lambda!10453 lambda!10448)))

(declare-fun b!306641 () Bool)

(declare-fun e!190627 () Bool)

(assert (=> b!306641 (= e!190627 true)))

(declare-fun b!306640 () Bool)

(declare-fun e!190626 () Bool)

(assert (=> b!306640 (= e!190626 e!190627)))

(declare-fun b!306639 () Bool)

(declare-fun e!190625 () Bool)

(assert (=> b!306639 (= e!190625 e!190626)))

(assert (=> b!306630 e!190625))

(assert (= b!306640 b!306641))

(assert (= b!306639 b!306640))

(assert (= (and b!306630 ((_ is Cons!4044) rules!1920)) b!306639))

(assert (=> b!306641 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10453))))

(assert (=> b!306641 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10453))))

(assert (=> b!306630 true))

(declare-fun b!306628 () Bool)

(declare-fun e!190621 () BalanceConc!2760)

(declare-fun call!17787 () BalanceConc!2760)

(assert (=> b!306628 (= e!190621 call!17787)))

(declare-fun lt!130690 () BalanceConc!2760)

(assert (=> d!93774 (= (list!1705 lt!130690) (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (dropList!193 lt!130457 0) separatorToken!170))))

(declare-fun e!190619 () BalanceConc!2760)

(assert (=> d!93774 (= lt!130690 e!190619)))

(declare-fun c!58195 () Bool)

(assert (=> d!93774 (= c!58195 (>= 0 (size!3236 lt!130457)))))

(declare-fun lt!130700 () Unit!5656)

(assert (=> d!93774 (= lt!130700 (lemmaContentSubsetPreservesForall!137 (list!1706 lt!130457) (dropList!193 lt!130457 0) lambda!10452))))

(declare-fun e!190620 () Bool)

(assert (=> d!93774 e!190620))

(declare-fun res!139389 () Bool)

(assert (=> d!93774 (=> (not res!139389) (not e!190620))))

(assert (=> d!93774 (= res!139389 (>= 0 0))))

(assert (=> d!93774 (= (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 lt!130457 separatorToken!170 0) lt!130690)))

(declare-fun b!306629 () Bool)

(assert (=> b!306629 (= e!190619 (BalanceConc!2761 Empty!1376))))

(assert (=> b!306630 (= e!190619 e!190621)))

(declare-fun lt!130695 () List!4055)

(assert (=> b!306630 (= lt!130695 (list!1706 lt!130457))))

(declare-fun lt!130697 () Unit!5656)

(assert (=> b!306630 (= lt!130697 (lemmaDropApply!233 lt!130695 0))))

(assert (=> b!306630 (= (head!960 (drop!248 lt!130695 0)) (apply!886 lt!130695 0))))

(declare-fun lt!130689 () Unit!5656)

(assert (=> b!306630 (= lt!130689 lt!130697)))

(declare-fun lt!130694 () List!4055)

(assert (=> b!306630 (= lt!130694 (list!1706 lt!130457))))

(declare-fun lt!130699 () Unit!5656)

(assert (=> b!306630 (= lt!130699 (lemmaDropTail!225 lt!130694 0))))

(assert (=> b!306630 (= (tail!536 (drop!248 lt!130694 0)) (drop!248 lt!130694 (+ 0 1)))))

(declare-fun lt!130692 () Unit!5656)

(assert (=> b!306630 (= lt!130692 lt!130699)))

(declare-fun lt!130701 () Unit!5656)

(assert (=> b!306630 (= lt!130701 (forallContained!330 (list!1706 lt!130457) lambda!10453 (apply!885 lt!130457 0)))))

(declare-fun lt!130691 () BalanceConc!2760)

(assert (=> b!306630 (= lt!130691 (printWithSeparatorTokenWhenNeededRec!336 thiss!17480 rules!1920 lt!130457 separatorToken!170 (+ 0 1)))))

(declare-fun lt!130693 () Option!920)

(assert (=> b!306630 (= lt!130693 (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (++!1097 (charsOf!420 (apply!885 lt!130457 0)) lt!130691)))))

(declare-fun res!139390 () Bool)

(assert (=> b!306630 (= res!139390 ((_ is Some!919) lt!130693))))

(declare-fun e!190622 () Bool)

(assert (=> b!306630 (=> (not res!139390) (not e!190622))))

(declare-fun c!58198 () Bool)

(assert (=> b!306630 (= c!58198 e!190622)))

(declare-fun bm!17780 () Bool)

(declare-fun call!17786 () BalanceConc!2760)

(declare-fun call!17785 () BalanceConc!2760)

(assert (=> bm!17780 (= call!17786 call!17785)))

(declare-fun bm!17781 () Bool)

(declare-fun c!58196 () Bool)

(assert (=> bm!17781 (= c!58196 c!58198)))

(declare-fun e!190618 () BalanceConc!2760)

(assert (=> bm!17781 (= call!17787 (++!1097 e!190618 (ite c!58198 lt!130691 call!17786)))))

(declare-fun b!306631 () Bool)

(declare-fun e!190624 () Bool)

(declare-fun call!17788 () Token!1298)

(assert (=> b!306631 (= e!190624 (not (= (_1!2548 (v!14918 lt!130693)) call!17788)))))

(declare-fun b!306632 () Bool)

(assert (=> b!306632 (= e!190618 call!17785)))

(declare-fun bm!17782 () Bool)

(assert (=> bm!17782 (= call!17788 (apply!885 lt!130457 0))))

(declare-fun bm!17783 () Bool)

(declare-fun call!17789 () Token!1298)

(assert (=> bm!17783 (= call!17789 call!17788)))

(declare-fun b!306633 () Bool)

(declare-fun c!58197 () Bool)

(assert (=> b!306633 (= c!58197 e!190624)))

(declare-fun res!139388 () Bool)

(assert (=> b!306633 (=> (not res!139388) (not e!190624))))

(assert (=> b!306633 (= res!139388 ((_ is Some!919) lt!130693))))

(declare-fun e!190623 () BalanceConc!2760)

(assert (=> b!306633 (= e!190621 e!190623)))

(declare-fun bm!17784 () Bool)

(assert (=> bm!17784 (= call!17785 (charsOf!420 (ite c!58198 call!17788 (ite c!58197 separatorToken!170 call!17789))))))

(declare-fun b!306634 () Bool)

(assert (=> b!306634 (= e!190623 (BalanceConc!2761 Empty!1376))))

(assert (=> b!306634 (= (print!388 thiss!17480 (singletonSeq!323 call!17789)) (printTailRec!349 thiss!17480 (singletonSeq!323 call!17789) 0 (BalanceConc!2761 Empty!1376)))))

(declare-fun lt!130688 () Unit!5656)

(declare-fun Unit!5664 () Unit!5656)

(assert (=> b!306634 (= lt!130688 Unit!5664)))

(declare-fun lt!130698 () Unit!5656)

(assert (=> b!306634 (= lt!130698 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!141 thiss!17480 rules!1920 (list!1705 call!17786) (list!1705 lt!130691)))))

(assert (=> b!306634 false))

(declare-fun lt!130696 () Unit!5656)

(declare-fun Unit!5665 () Unit!5656)

(assert (=> b!306634 (= lt!130696 Unit!5665)))

(declare-fun b!306635 () Bool)

(assert (=> b!306635 (= e!190622 (= (_1!2548 (v!14918 lt!130693)) (apply!885 lt!130457 0)))))

(declare-fun b!306636 () Bool)

(assert (=> b!306636 (= e!190618 (charsOf!420 call!17789))))

(declare-fun b!306637 () Bool)

(assert (=> b!306637 (= e!190623 (++!1097 call!17787 lt!130691))))

(declare-fun b!306638 () Bool)

(assert (=> b!306638 (= e!190620 (<= 0 (size!3236 lt!130457)))))

(assert (= (and d!93774 res!139389) b!306638))

(assert (= (and d!93774 c!58195) b!306629))

(assert (= (and d!93774 (not c!58195)) b!306630))

(assert (= (and b!306630 res!139390) b!306635))

(assert (= (and b!306630 c!58198) b!306628))

(assert (= (and b!306630 (not c!58198)) b!306633))

(assert (= (and b!306633 res!139388) b!306631))

(assert (= (and b!306633 c!58197) b!306637))

(assert (= (and b!306633 (not c!58197)) b!306634))

(assert (= (or b!306637 b!306634) bm!17783))

(assert (= (or b!306637 b!306634) bm!17780))

(assert (= (or b!306628 b!306631 bm!17783) bm!17782))

(assert (= (or b!306628 bm!17780) bm!17784))

(assert (= (or b!306628 b!306637) bm!17781))

(assert (= (and bm!17781 c!58196) b!306632))

(assert (= (and bm!17781 (not c!58196)) b!306636))

(declare-fun m!409239 () Bool)

(assert (=> d!93774 m!409239))

(assert (=> d!93774 m!408689))

(declare-fun m!409241 () Bool)

(assert (=> d!93774 m!409241))

(declare-fun m!409243 () Bool)

(assert (=> d!93774 m!409243))

(declare-fun m!409245 () Bool)

(assert (=> d!93774 m!409245))

(assert (=> d!93774 m!408689))

(assert (=> d!93774 m!409241))

(declare-fun m!409247 () Bool)

(assert (=> d!93774 m!409247))

(assert (=> d!93774 m!409241))

(assert (=> b!306638 m!409245))

(declare-fun m!409249 () Bool)

(assert (=> bm!17782 m!409249))

(declare-fun m!409251 () Bool)

(assert (=> b!306630 m!409251))

(declare-fun m!409253 () Bool)

(assert (=> b!306630 m!409253))

(assert (=> b!306630 m!409249))

(declare-fun m!409255 () Bool)

(assert (=> b!306630 m!409255))

(assert (=> b!306630 m!408689))

(declare-fun m!409257 () Bool)

(assert (=> b!306630 m!409257))

(declare-fun m!409259 () Bool)

(assert (=> b!306630 m!409259))

(declare-fun m!409261 () Bool)

(assert (=> b!306630 m!409261))

(declare-fun m!409263 () Bool)

(assert (=> b!306630 m!409263))

(assert (=> b!306630 m!409255))

(declare-fun m!409265 () Bool)

(assert (=> b!306630 m!409265))

(declare-fun m!409267 () Bool)

(assert (=> b!306630 m!409267))

(assert (=> b!306630 m!408689))

(assert (=> b!306630 m!409249))

(declare-fun m!409269 () Bool)

(assert (=> b!306630 m!409269))

(assert (=> b!306630 m!409251))

(declare-fun m!409271 () Bool)

(assert (=> b!306630 m!409271))

(declare-fun m!409273 () Bool)

(assert (=> b!306630 m!409273))

(assert (=> b!306630 m!409249))

(declare-fun m!409275 () Bool)

(assert (=> b!306630 m!409275))

(assert (=> b!306630 m!409275))

(assert (=> b!306630 m!409261))

(declare-fun m!409277 () Bool)

(assert (=> bm!17781 m!409277))

(declare-fun m!409279 () Bool)

(assert (=> b!306636 m!409279))

(declare-fun m!409281 () Bool)

(assert (=> b!306637 m!409281))

(declare-fun m!409283 () Bool)

(assert (=> bm!17784 m!409283))

(declare-fun m!409285 () Bool)

(assert (=> b!306634 m!409285))

(declare-fun m!409287 () Bool)

(assert (=> b!306634 m!409287))

(assert (=> b!306634 m!409285))

(assert (=> b!306634 m!409285))

(declare-fun m!409289 () Bool)

(assert (=> b!306634 m!409289))

(declare-fun m!409291 () Bool)

(assert (=> b!306634 m!409291))

(declare-fun m!409293 () Bool)

(assert (=> b!306634 m!409293))

(declare-fun m!409295 () Bool)

(assert (=> b!306634 m!409295))

(assert (=> b!306634 m!409291))

(assert (=> b!306634 m!409293))

(assert (=> b!306635 m!409249))

(assert (=> b!306154 d!93774))

(declare-fun bs!35443 () Bool)

(declare-fun b!306646 () Bool)

(assert (= bs!35443 (and b!306646 b!306426)))

(declare-fun lambda!10454 () Int)

(assert (=> bs!35443 (= lambda!10454 lambda!10442)))

(declare-fun bs!35444 () Bool)

(assert (= bs!35444 (and b!306646 b!306150)))

(assert (=> bs!35444 (not (= lambda!10454 lambda!10433))))

(declare-fun bs!35445 () Bool)

(assert (= bs!35445 (and b!306646 d!93712)))

(assert (=> bs!35445 (not (= lambda!10454 lambda!10447))))

(declare-fun bs!35446 () Bool)

(assert (= bs!35446 (and b!306646 d!93774)))

(assert (=> bs!35446 (not (= lambda!10454 lambda!10452))))

(declare-fun bs!35447 () Bool)

(assert (= bs!35447 (and b!306646 b!306630)))

(assert (=> bs!35447 (= lambda!10454 lambda!10453)))

(declare-fun bs!35448 () Bool)

(assert (= bs!35448 (and b!306646 b!306162)))

(assert (=> bs!35448 (= lambda!10454 lambda!10434)))

(declare-fun bs!35449 () Bool)

(assert (= bs!35449 (and b!306646 d!93616)))

(assert (=> bs!35449 (= lambda!10454 lambda!10439)))

(declare-fun bs!35450 () Bool)

(assert (= bs!35450 (and b!306646 b!306492)))

(assert (=> bs!35450 (= lambda!10454 lambda!10448)))

(declare-fun b!306652 () Bool)

(declare-fun e!190634 () Bool)

(assert (=> b!306652 (= e!190634 true)))

(declare-fun b!306651 () Bool)

(declare-fun e!190633 () Bool)

(assert (=> b!306651 (= e!190633 e!190634)))

(declare-fun b!306650 () Bool)

(declare-fun e!190632 () Bool)

(assert (=> b!306650 (= e!190632 e!190633)))

(assert (=> b!306646 e!190632))

(assert (= b!306651 b!306652))

(assert (= b!306650 b!306651))

(assert (= (and b!306646 ((_ is Cons!4044) rules!1920)) b!306650))

(assert (=> b!306652 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10454))))

(assert (=> b!306652 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 rules!1920)))) (dynLambda!2204 order!3275 lambda!10454))))

(assert (=> b!306646 true))

(declare-fun d!93776 () Bool)

(declare-fun c!58199 () Bool)

(assert (=> d!93776 (= c!58199 ((_ is Cons!4045) tokens!465))))

(declare-fun e!190629 () List!4053)

(assert (=> d!93776 (= (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!190629)))

(declare-fun b!306642 () Bool)

(declare-fun e!190630 () BalanceConc!2760)

(declare-fun call!17794 () BalanceConc!2760)

(assert (=> b!306642 (= e!190630 call!17794)))

(declare-fun bm!17785 () Bool)

(declare-fun call!17791 () List!4053)

(assert (=> bm!17785 (= call!17791 (list!1705 e!190630))))

(declare-fun c!58201 () Bool)

(declare-fun c!58202 () Bool)

(assert (=> bm!17785 (= c!58201 c!58202)))

(declare-fun call!17790 () BalanceConc!2760)

(declare-fun c!58200 () Bool)

(declare-fun call!17793 () List!4053)

(declare-fun bm!17786 () Bool)

(assert (=> bm!17786 (= call!17793 (list!1705 (ite c!58200 call!17790 call!17794)))))

(declare-fun b!306643 () Bool)

(assert (=> b!306643 (= e!190629 Nil!4043)))

(declare-fun bm!17787 () Bool)

(assert (=> bm!17787 (= call!17790 (charsOf!420 (h!9442 tokens!465)))))

(declare-fun b!306644 () Bool)

(declare-fun e!190631 () List!4053)

(assert (=> b!306644 (= e!190631 Nil!4043)))

(assert (=> b!306644 (= (print!388 thiss!17480 (singletonSeq!323 (h!9442 tokens!465))) (printTailRec!349 thiss!17480 (singletonSeq!323 (h!9442 tokens!465)) 0 (BalanceConc!2761 Empty!1376)))))

(declare-fun lt!130705 () Unit!5656)

(declare-fun Unit!5668 () Unit!5656)

(assert (=> b!306644 (= lt!130705 Unit!5668)))

(declare-fun lt!130702 () List!4053)

(declare-fun lt!130706 () Unit!5656)

(assert (=> b!306644 (= lt!130706 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!141 thiss!17480 rules!1920 call!17791 lt!130702))))

(assert (=> b!306644 false))

(declare-fun lt!130703 () Unit!5656)

(declare-fun Unit!5669 () Unit!5656)

(assert (=> b!306644 (= lt!130703 Unit!5669)))

(declare-fun b!306645 () Bool)

(assert (=> b!306645 (= e!190630 (charsOf!420 separatorToken!170))))

(declare-fun e!190628 () List!4053)

(assert (=> b!306646 (= e!190629 e!190628)))

(declare-fun lt!130707 () Unit!5656)

(assert (=> b!306646 (= lt!130707 (forallContained!330 tokens!465 lambda!10454 (h!9442 tokens!465)))))

(assert (=> b!306646 (= lt!130702 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 (t!43215 tokens!465) separatorToken!170))))

(declare-fun lt!130704 () Option!921)

(assert (=> b!306646 (= lt!130704 (maxPrefix!379 thiss!17480 rules!1920 (++!1096 (list!1705 (charsOf!420 (h!9442 tokens!465))) lt!130702)))))

(assert (=> b!306646 (= c!58200 (and ((_ is Some!920) lt!130704) (= (_1!2547 (v!14919 lt!130704)) (h!9442 tokens!465))))))

(declare-fun b!306647 () Bool)

(declare-fun call!17792 () List!4053)

(assert (=> b!306647 (= e!190628 call!17792)))

(declare-fun b!306648 () Bool)

(assert (=> b!306648 (= c!58202 (and ((_ is Some!920) lt!130704) (not (= (_1!2547 (v!14919 lt!130704)) (h!9442 tokens!465)))))))

(assert (=> b!306648 (= e!190628 e!190631)))

(declare-fun bm!17788 () Bool)

(assert (=> bm!17788 (= call!17794 call!17790)))

(declare-fun bm!17789 () Bool)

(assert (=> bm!17789 (= call!17792 (++!1096 call!17793 (ite c!58200 lt!130702 call!17791)))))

(declare-fun b!306649 () Bool)

(assert (=> b!306649 (= e!190631 (++!1096 call!17792 lt!130702))))

(assert (= (and d!93776 c!58199) b!306646))

(assert (= (and d!93776 (not c!58199)) b!306643))

(assert (= (and b!306646 c!58200) b!306647))

(assert (= (and b!306646 (not c!58200)) b!306648))

(assert (= (and b!306648 c!58202) b!306649))

(assert (= (and b!306648 (not c!58202)) b!306644))

(assert (= (or b!306649 b!306644) bm!17788))

(assert (= (or b!306649 b!306644) bm!17785))

(assert (= (and bm!17785 c!58201) b!306645))

(assert (= (and bm!17785 (not c!58201)) b!306642))

(assert (= (or b!306647 bm!17788) bm!17787))

(assert (= (or b!306647 b!306649) bm!17786))

(assert (= (or b!306647 b!306649) bm!17789))

(declare-fun m!409297 () Bool)

(assert (=> bm!17789 m!409297))

(declare-fun m!409299 () Bool)

(assert (=> bm!17786 m!409299))

(assert (=> b!306644 m!408519))

(assert (=> b!306644 m!408519))

(assert (=> b!306644 m!409201))

(assert (=> b!306644 m!408519))

(declare-fun m!409301 () Bool)

(assert (=> b!306644 m!409301))

(declare-fun m!409303 () Bool)

(assert (=> b!306644 m!409303))

(assert (=> bm!17787 m!408477))

(assert (=> b!306645 m!408465))

(declare-fun m!409305 () Bool)

(assert (=> b!306649 m!409305))

(assert (=> b!306646 m!408463))

(assert (=> b!306646 m!408479))

(declare-fun m!409307 () Bool)

(assert (=> b!306646 m!409307))

(declare-fun m!409309 () Bool)

(assert (=> b!306646 m!409309))

(assert (=> b!306646 m!409307))

(declare-fun m!409311 () Bool)

(assert (=> b!306646 m!409311))

(assert (=> b!306646 m!408477))

(assert (=> b!306646 m!408477))

(assert (=> b!306646 m!408479))

(declare-fun m!409313 () Bool)

(assert (=> bm!17785 m!409313))

(assert (=> b!306154 d!93776))

(declare-fun d!93778 () Bool)

(declare-fun lt!130710 () Bool)

(assert (=> d!93778 (= lt!130710 (isEmpty!2754 (list!1706 (_1!2549 (lex!455 thiss!17480 rules!1920 (seqFromList!920 lt!130460))))))))

(declare-fun isEmpty!2761 (Conc!1377) Bool)

(assert (=> d!93778 (= lt!130710 (isEmpty!2761 (c!58104 (_1!2549 (lex!455 thiss!17480 rules!1920 (seqFromList!920 lt!130460))))))))

(assert (=> d!93778 (= (isEmpty!2753 (_1!2549 (lex!455 thiss!17480 rules!1920 (seqFromList!920 lt!130460)))) lt!130710)))

(declare-fun bs!35451 () Bool)

(assert (= bs!35451 d!93778))

(declare-fun m!409315 () Bool)

(assert (=> bs!35451 m!409315))

(assert (=> bs!35451 m!409315))

(declare-fun m!409317 () Bool)

(assert (=> bs!35451 m!409317))

(declare-fun m!409319 () Bool)

(assert (=> bs!35451 m!409319))

(assert (=> b!306175 d!93778))

(declare-fun b!306764 () Bool)

(declare-fun e!190704 () Bool)

(declare-fun lt!130767 () tuple2!4666)

(assert (=> b!306764 (= e!190704 (not (isEmpty!2753 (_1!2549 lt!130767))))))

(declare-fun b!306765 () Bool)

(declare-fun res!139450 () Bool)

(declare-fun e!190706 () Bool)

(assert (=> b!306765 (=> (not res!139450) (not e!190706))))

(declare-datatypes ((tuple2!4670 0))(
  ( (tuple2!4671 (_1!2551 List!4055) (_2!2551 List!4053)) )
))
(declare-fun lexList!239 (LexerInterface!663 List!4054 List!4053) tuple2!4670)

(assert (=> b!306765 (= res!139450 (= (list!1706 (_1!2549 lt!130767)) (_1!2551 (lexList!239 thiss!17480 rules!1920 (list!1705 (seqFromList!920 lt!130460))))))))

(declare-fun d!93780 () Bool)

(assert (=> d!93780 e!190706))

(declare-fun res!139448 () Bool)

(assert (=> d!93780 (=> (not res!139448) (not e!190706))))

(declare-fun e!190705 () Bool)

(assert (=> d!93780 (= res!139448 e!190705)))

(declare-fun c!58228 () Bool)

(assert (=> d!93780 (= c!58228 (> (size!3236 (_1!2549 lt!130767)) 0))))

(declare-fun lexTailRecV2!206 (LexerInterface!663 List!4054 BalanceConc!2760 BalanceConc!2760 BalanceConc!2760 BalanceConc!2762) tuple2!4666)

(assert (=> d!93780 (= lt!130767 (lexTailRecV2!206 thiss!17480 rules!1920 (seqFromList!920 lt!130460) (BalanceConc!2761 Empty!1376) (seqFromList!920 lt!130460) (BalanceConc!2763 Empty!1377)))))

(assert (=> d!93780 (= (lex!455 thiss!17480 rules!1920 (seqFromList!920 lt!130460)) lt!130767)))

(declare-fun b!306766 () Bool)

(assert (=> b!306766 (= e!190706 (= (list!1705 (_2!2549 lt!130767)) (_2!2551 (lexList!239 thiss!17480 rules!1920 (list!1705 (seqFromList!920 lt!130460))))))))

(declare-fun b!306767 () Bool)

(assert (=> b!306767 (= e!190705 (= (_2!2549 lt!130767) (seqFromList!920 lt!130460)))))

(declare-fun b!306768 () Bool)

(assert (=> b!306768 (= e!190705 e!190704)))

(declare-fun res!139449 () Bool)

(declare-fun size!3239 (BalanceConc!2760) Int)

(assert (=> b!306768 (= res!139449 (< (size!3239 (_2!2549 lt!130767)) (size!3239 (seqFromList!920 lt!130460))))))

(assert (=> b!306768 (=> (not res!139449) (not e!190704))))

(assert (= (and d!93780 c!58228) b!306768))

(assert (= (and d!93780 (not c!58228)) b!306767))

(assert (= (and b!306768 res!139449) b!306764))

(assert (= (and d!93780 res!139448) b!306765))

(assert (= (and b!306765 res!139450) b!306766))

(declare-fun m!409443 () Bool)

(assert (=> b!306766 m!409443))

(assert (=> b!306766 m!408581))

(declare-fun m!409445 () Bool)

(assert (=> b!306766 m!409445))

(assert (=> b!306766 m!409445))

(declare-fun m!409447 () Bool)

(assert (=> b!306766 m!409447))

(declare-fun m!409449 () Bool)

(assert (=> b!306765 m!409449))

(assert (=> b!306765 m!408581))

(assert (=> b!306765 m!409445))

(assert (=> b!306765 m!409445))

(assert (=> b!306765 m!409447))

(declare-fun m!409451 () Bool)

(assert (=> b!306768 m!409451))

(assert (=> b!306768 m!408581))

(declare-fun m!409453 () Bool)

(assert (=> b!306768 m!409453))

(declare-fun m!409455 () Bool)

(assert (=> b!306764 m!409455))

(declare-fun m!409457 () Bool)

(assert (=> d!93780 m!409457))

(assert (=> d!93780 m!408581))

(assert (=> d!93780 m!408581))

(declare-fun m!409459 () Bool)

(assert (=> d!93780 m!409459))

(assert (=> b!306175 d!93780))

(declare-fun d!93806 () Bool)

(assert (=> d!93806 (= (seqFromList!920 lt!130460) (fromListB!381 lt!130460))))

(declare-fun bs!35462 () Bool)

(assert (= bs!35462 d!93806))

(declare-fun m!409461 () Bool)

(assert (=> bs!35462 m!409461))

(assert (=> b!306175 d!93806))

(declare-fun d!93808 () Bool)

(assert (=> d!93808 (= (isDefined!760 lt!130445) (not (isEmpty!2756 lt!130445)))))

(declare-fun bs!35463 () Bool)

(assert (= bs!35463 d!93808))

(declare-fun m!409463 () Bool)

(assert (=> bs!35463 m!409463))

(assert (=> b!306177 d!93808))

(declare-fun b!306769 () Bool)

(declare-fun res!139453 () Bool)

(declare-fun e!190708 () Bool)

(assert (=> b!306769 (=> (not res!139453) (not e!190708))))

(declare-fun lt!130771 () Option!921)

(assert (=> b!306769 (= res!139453 (matchR!319 (regex!777 (rule!1390 (_1!2547 (get!1380 lt!130771)))) (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130771))))))))

(declare-fun b!306770 () Bool)

(declare-fun res!139455 () Bool)

(assert (=> b!306770 (=> (not res!139455) (not e!190708))))

(assert (=> b!306770 (= res!139455 (= (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130771)))) (originalCharacters!820 (_1!2547 (get!1380 lt!130771)))))))

(declare-fun b!306771 () Bool)

(assert (=> b!306771 (= e!190708 (contains!799 rules!1920 (rule!1390 (_1!2547 (get!1380 lt!130771)))))))

(declare-fun d!93810 () Bool)

(declare-fun e!190707 () Bool)

(assert (=> d!93810 e!190707))

(declare-fun res!139452 () Bool)

(assert (=> d!93810 (=> res!139452 e!190707)))

(assert (=> d!93810 (= res!139452 (isEmpty!2756 lt!130771))))

(declare-fun e!190709 () Option!921)

(assert (=> d!93810 (= lt!130771 e!190709)))

(declare-fun c!58229 () Bool)

(assert (=> d!93810 (= c!58229 (and ((_ is Cons!4044) rules!1920) ((_ is Nil!4044) (t!43214 rules!1920))))))

(declare-fun lt!130772 () Unit!5656)

(declare-fun lt!130770 () Unit!5656)

(assert (=> d!93810 (= lt!130772 lt!130770)))

(assert (=> d!93810 (isPrefix!437 lt!130452 lt!130452)))

(assert (=> d!93810 (= lt!130770 (lemmaIsPrefixRefl!237 lt!130452 lt!130452))))

(assert (=> d!93810 (rulesValidInductive!232 thiss!17480 rules!1920)))

(assert (=> d!93810 (= (maxPrefix!379 thiss!17480 rules!1920 lt!130452) lt!130771)))

(declare-fun b!306772 () Bool)

(declare-fun res!139456 () Bool)

(assert (=> b!306772 (=> (not res!139456) (not e!190708))))

(assert (=> b!306772 (= res!139456 (= (value!26460 (_1!2547 (get!1380 lt!130771))) (apply!884 (transformation!777 (rule!1390 (_1!2547 (get!1380 lt!130771)))) (seqFromList!920 (originalCharacters!820 (_1!2547 (get!1380 lt!130771)))))))))

(declare-fun b!306773 () Bool)

(declare-fun lt!130768 () Option!921)

(declare-fun lt!130769 () Option!921)

(assert (=> b!306773 (= e!190709 (ite (and ((_ is None!920) lt!130768) ((_ is None!920) lt!130769)) None!920 (ite ((_ is None!920) lt!130769) lt!130768 (ite ((_ is None!920) lt!130768) lt!130769 (ite (>= (size!3233 (_1!2547 (v!14919 lt!130768))) (size!3233 (_1!2547 (v!14919 lt!130769)))) lt!130768 lt!130769)))))))

(declare-fun call!17813 () Option!921)

(assert (=> b!306773 (= lt!130768 call!17813)))

(assert (=> b!306773 (= lt!130769 (maxPrefix!379 thiss!17480 (t!43214 rules!1920) lt!130452))))

(declare-fun bm!17808 () Bool)

(assert (=> bm!17808 (= call!17813 (maxPrefixOneRule!171 thiss!17480 (h!9441 rules!1920) lt!130452))))

(declare-fun b!306774 () Bool)

(declare-fun res!139451 () Bool)

(assert (=> b!306774 (=> (not res!139451) (not e!190708))))

(assert (=> b!306774 (= res!139451 (= (++!1096 (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130771)))) (_2!2547 (get!1380 lt!130771))) lt!130452))))

(declare-fun b!306775 () Bool)

(assert (=> b!306775 (= e!190707 e!190708)))

(declare-fun res!139454 () Bool)

(assert (=> b!306775 (=> (not res!139454) (not e!190708))))

(assert (=> b!306775 (= res!139454 (isDefined!760 lt!130771))))

(declare-fun b!306776 () Bool)

(assert (=> b!306776 (= e!190709 call!17813)))

(declare-fun b!306777 () Bool)

(declare-fun res!139457 () Bool)

(assert (=> b!306777 (=> (not res!139457) (not e!190708))))

(assert (=> b!306777 (= res!139457 (< (size!3235 (_2!2547 (get!1380 lt!130771))) (size!3235 lt!130452)))))

(assert (= (and d!93810 c!58229) b!306776))

(assert (= (and d!93810 (not c!58229)) b!306773))

(assert (= (or b!306776 b!306773) bm!17808))

(assert (= (and d!93810 (not res!139452)) b!306775))

(assert (= (and b!306775 res!139454) b!306770))

(assert (= (and b!306770 res!139455) b!306777))

(assert (= (and b!306777 res!139457) b!306774))

(assert (= (and b!306774 res!139451) b!306772))

(assert (= (and b!306772 res!139456) b!306769))

(assert (= (and b!306769 res!139453) b!306771))

(declare-fun m!409465 () Bool)

(assert (=> b!306772 m!409465))

(declare-fun m!409467 () Bool)

(assert (=> b!306772 m!409467))

(assert (=> b!306772 m!409467))

(declare-fun m!409469 () Bool)

(assert (=> b!306772 m!409469))

(declare-fun m!409471 () Bool)

(assert (=> d!93810 m!409471))

(declare-fun m!409473 () Bool)

(assert (=> d!93810 m!409473))

(declare-fun m!409475 () Bool)

(assert (=> d!93810 m!409475))

(assert (=> d!93810 m!408739))

(assert (=> b!306770 m!409465))

(declare-fun m!409477 () Bool)

(assert (=> b!306770 m!409477))

(assert (=> b!306770 m!409477))

(declare-fun m!409479 () Bool)

(assert (=> b!306770 m!409479))

(assert (=> b!306774 m!409465))

(assert (=> b!306774 m!409477))

(assert (=> b!306774 m!409477))

(assert (=> b!306774 m!409479))

(assert (=> b!306774 m!409479))

(declare-fun m!409481 () Bool)

(assert (=> b!306774 m!409481))

(assert (=> b!306777 m!409465))

(declare-fun m!409483 () Bool)

(assert (=> b!306777 m!409483))

(declare-fun m!409485 () Bool)

(assert (=> b!306777 m!409485))

(declare-fun m!409487 () Bool)

(assert (=> bm!17808 m!409487))

(declare-fun m!409489 () Bool)

(assert (=> b!306775 m!409489))

(assert (=> b!306771 m!409465))

(declare-fun m!409491 () Bool)

(assert (=> b!306771 m!409491))

(assert (=> b!306769 m!409465))

(assert (=> b!306769 m!409477))

(assert (=> b!306769 m!409477))

(assert (=> b!306769 m!409479))

(assert (=> b!306769 m!409479))

(declare-fun m!409493 () Bool)

(assert (=> b!306769 m!409493))

(declare-fun m!409495 () Bool)

(assert (=> b!306773 m!409495))

(assert (=> b!306177 d!93810))

(declare-fun d!93812 () Bool)

(declare-fun res!139458 () Bool)

(declare-fun e!190710 () Bool)

(assert (=> d!93812 (=> (not res!139458) (not e!190710))))

(assert (=> d!93812 (= res!139458 (not (isEmpty!2751 (originalCharacters!820 separatorToken!170))))))

(assert (=> d!93812 (= (inv!4997 separatorToken!170) e!190710)))

(declare-fun b!306778 () Bool)

(declare-fun res!139459 () Bool)

(assert (=> b!306778 (=> (not res!139459) (not e!190710))))

(assert (=> b!306778 (= res!139459 (= (originalCharacters!820 separatorToken!170) (list!1705 (dynLambda!2206 (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (value!26460 separatorToken!170)))))))

(declare-fun b!306779 () Bool)

(assert (=> b!306779 (= e!190710 (= (size!3233 separatorToken!170) (size!3235 (originalCharacters!820 separatorToken!170))))))

(assert (= (and d!93812 res!139458) b!306778))

(assert (= (and b!306778 res!139459) b!306779))

(declare-fun b_lambda!10639 () Bool)

(assert (=> (not b_lambda!10639) (not b!306778)))

(assert (=> b!306778 t!43241))

(declare-fun b_and!25907 () Bool)

(assert (= b_and!25883 (and (=> t!43241 result!23284) b_and!25907)))

(assert (=> b!306778 t!43243))

(declare-fun b_and!25909 () Bool)

(assert (= b_and!25885 (and (=> t!43243 result!23286) b_and!25909)))

(assert (=> b!306778 t!43245))

(declare-fun b_and!25911 () Bool)

(assert (= b_and!25887 (and (=> t!43245 result!23288) b_and!25911)))

(declare-fun m!409497 () Bool)

(assert (=> d!93812 m!409497))

(assert (=> b!306778 m!409087))

(assert (=> b!306778 m!409087))

(declare-fun m!409499 () Bool)

(assert (=> b!306778 m!409499))

(declare-fun m!409501 () Bool)

(assert (=> b!306779 m!409501))

(assert (=> start!32926 d!93812))

(declare-fun d!93814 () Bool)

(declare-fun isEmpty!2762 (Option!920) Bool)

(assert (=> d!93814 (= (isDefined!759 (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465))))) (not (isEmpty!2762 (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))

(declare-fun bs!35464 () Bool)

(assert (= bs!35464 d!93814))

(assert (=> bs!35464 m!408493))

(declare-fun m!409503 () Bool)

(assert (=> bs!35464 m!409503))

(assert (=> b!306162 d!93814))

(declare-fun d!93816 () Bool)

(declare-fun e!190728 () Bool)

(assert (=> d!93816 e!190728))

(declare-fun res!139473 () Bool)

(assert (=> d!93816 (=> (not res!139473) (not e!190728))))

(declare-fun lt!130792 () Option!920)

(declare-fun maxPrefixZipper!141 (LexerInterface!663 List!4054 List!4053) Option!921)

(assert (=> d!93816 (= res!139473 (= (isDefined!759 lt!130792) (isDefined!760 (maxPrefixZipper!141 thiss!17480 rules!1920 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465))))))))))

(declare-fun e!190725 () Option!920)

(assert (=> d!93816 (= lt!130792 e!190725)))

(declare-fun c!58232 () Bool)

(assert (=> d!93816 (= c!58232 (and ((_ is Cons!4044) rules!1920) ((_ is Nil!4044) (t!43214 rules!1920))))))

(declare-fun lt!130793 () Unit!5656)

(declare-fun lt!130790 () Unit!5656)

(assert (=> d!93816 (= lt!130793 lt!130790)))

(declare-fun lt!130788 () List!4053)

(declare-fun lt!130787 () List!4053)

(assert (=> d!93816 (isPrefix!437 lt!130788 lt!130787)))

(assert (=> d!93816 (= lt!130790 (lemmaIsPrefixRefl!237 lt!130788 lt!130787))))

(assert (=> d!93816 (= lt!130787 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))

(assert (=> d!93816 (= lt!130788 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))

(assert (=> d!93816 (rulesValidInductive!232 thiss!17480 rules!1920)))

(assert (=> d!93816 (= (maxPrefixZipperSequence!342 thiss!17480 rules!1920 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))) lt!130792)))

(declare-fun b!306796 () Bool)

(declare-fun res!139472 () Bool)

(assert (=> b!306796 (=> (not res!139472) (not e!190728))))

(declare-fun e!190724 () Bool)

(assert (=> b!306796 (= res!139472 e!190724)))

(declare-fun res!139474 () Bool)

(assert (=> b!306796 (=> res!139474 e!190724)))

(assert (=> b!306796 (= res!139474 (not (isDefined!759 lt!130792)))))

(declare-fun b!306797 () Bool)

(declare-fun e!190726 () Bool)

(assert (=> b!306797 (= e!190728 e!190726)))

(declare-fun res!139476 () Bool)

(assert (=> b!306797 (=> res!139476 e!190726)))

(assert (=> b!306797 (= res!139476 (not (isDefined!759 lt!130792)))))

(declare-fun b!306798 () Bool)

(declare-fun e!190723 () Bool)

(assert (=> b!306798 (= e!190726 e!190723)))

(declare-fun res!139475 () Bool)

(assert (=> b!306798 (=> (not res!139475) (not e!190723))))

(declare-fun get!1382 (Option!920) tuple2!4664)

(assert (=> b!306798 (= res!139475 (= (_1!2548 (get!1382 lt!130792)) (_1!2547 (get!1380 (maxPrefix!379 thiss!17480 rules!1920 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))))

(declare-fun b!306799 () Bool)

(assert (=> b!306799 (= e!190723 (= (list!1705 (_2!2548 (get!1382 lt!130792))) (_2!2547 (get!1380 (maxPrefix!379 thiss!17480 rules!1920 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))))

(declare-fun b!306800 () Bool)

(declare-fun lt!130791 () Option!920)

(declare-fun lt!130789 () Option!920)

(assert (=> b!306800 (= e!190725 (ite (and ((_ is None!919) lt!130791) ((_ is None!919) lt!130789)) None!919 (ite ((_ is None!919) lt!130789) lt!130791 (ite ((_ is None!919) lt!130791) lt!130789 (ite (>= (size!3233 (_1!2548 (v!14918 lt!130791))) (size!3233 (_1!2548 (v!14918 lt!130789)))) lt!130791 lt!130789)))))))

(declare-fun call!17816 () Option!920)

(assert (=> b!306800 (= lt!130791 call!17816)))

(assert (=> b!306800 (= lt!130789 (maxPrefixZipperSequence!342 thiss!17480 (t!43214 rules!1920) (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))

(declare-fun bm!17811 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!142 (LexerInterface!663 Rule!1354 BalanceConc!2760) Option!920)

(assert (=> bm!17811 (= call!17816 (maxPrefixOneRuleZipperSequence!142 thiss!17480 (h!9441 rules!1920) (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))

(declare-fun b!306801 () Bool)

(declare-fun e!190727 () Bool)

(assert (=> b!306801 (= e!190724 e!190727)))

(declare-fun res!139477 () Bool)

(assert (=> b!306801 (=> (not res!139477) (not e!190727))))

(assert (=> b!306801 (= res!139477 (= (_1!2548 (get!1382 lt!130792)) (_1!2547 (get!1380 (maxPrefixZipper!141 thiss!17480 rules!1920 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))))

(declare-fun b!306802 () Bool)

(assert (=> b!306802 (= e!190727 (= (list!1705 (_2!2548 (get!1382 lt!130792))) (_2!2547 (get!1380 (maxPrefixZipper!141 thiss!17480 rules!1920 (list!1705 (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465)))))))))))

(declare-fun b!306803 () Bool)

(assert (=> b!306803 (= e!190725 call!17816)))

(assert (= (and d!93816 c!58232) b!306803))

(assert (= (and d!93816 (not c!58232)) b!306800))

(assert (= (or b!306803 b!306800) bm!17811))

(assert (= (and d!93816 res!139473) b!306796))

(assert (= (and b!306796 (not res!139474)) b!306801))

(assert (= (and b!306801 res!139477) b!306802))

(assert (= (and b!306796 res!139472) b!306797))

(assert (= (and b!306797 (not res!139476)) b!306798))

(assert (= (and b!306798 res!139475) b!306799))

(assert (=> b!306800 m!408491))

(declare-fun m!409505 () Bool)

(assert (=> b!306800 m!409505))

(declare-fun m!409507 () Bool)

(assert (=> b!306798 m!409507))

(assert (=> b!306798 m!408491))

(declare-fun m!409509 () Bool)

(assert (=> b!306798 m!409509))

(assert (=> b!306798 m!409509))

(declare-fun m!409511 () Bool)

(assert (=> b!306798 m!409511))

(assert (=> b!306798 m!409511))

(declare-fun m!409513 () Bool)

(assert (=> b!306798 m!409513))

(assert (=> b!306802 m!409509))

(declare-fun m!409515 () Bool)

(assert (=> b!306802 m!409515))

(declare-fun m!409517 () Bool)

(assert (=> b!306802 m!409517))

(assert (=> b!306802 m!408491))

(assert (=> b!306802 m!409509))

(assert (=> b!306802 m!409507))

(assert (=> b!306802 m!409515))

(declare-fun m!409519 () Bool)

(assert (=> b!306802 m!409519))

(declare-fun m!409521 () Bool)

(assert (=> b!306797 m!409521))

(assert (=> b!306796 m!409521))

(assert (=> b!306799 m!409509))

(assert (=> b!306799 m!409511))

(assert (=> b!306799 m!409517))

(assert (=> b!306799 m!408491))

(assert (=> b!306799 m!409509))

(assert (=> b!306799 m!409507))

(assert (=> b!306799 m!409511))

(assert (=> b!306799 m!409513))

(assert (=> bm!17811 m!408491))

(declare-fun m!409523 () Bool)

(assert (=> bm!17811 m!409523))

(assert (=> b!306801 m!409507))

(assert (=> b!306801 m!408491))

(assert (=> b!306801 m!409509))

(assert (=> b!306801 m!409509))

(assert (=> b!306801 m!409515))

(assert (=> b!306801 m!409515))

(assert (=> b!306801 m!409519))

(assert (=> d!93816 m!409509))

(assert (=> d!93816 m!409515))

(declare-fun m!409525 () Bool)

(assert (=> d!93816 m!409525))

(assert (=> d!93816 m!408491))

(assert (=> d!93816 m!409509))

(assert (=> d!93816 m!409521))

(assert (=> d!93816 m!408739))

(assert (=> d!93816 m!409515))

(declare-fun m!409527 () Bool)

(assert (=> d!93816 m!409527))

(declare-fun m!409529 () Bool)

(assert (=> d!93816 m!409529))

(assert (=> b!306162 d!93816))

(declare-fun d!93818 () Bool)

(assert (=> d!93818 (= (seqFromList!920 (originalCharacters!820 (h!9442 tokens!465))) (fromListB!381 (originalCharacters!820 (h!9442 tokens!465))))))

(declare-fun bs!35465 () Bool)

(assert (= bs!35465 d!93818))

(declare-fun m!409531 () Bool)

(assert (=> bs!35465 m!409531))

(assert (=> b!306162 d!93818))

(declare-fun d!93820 () Bool)

(assert (=> d!93820 (dynLambda!2209 lambda!10434 (h!9442 tokens!465))))

(declare-fun lt!130796 () Unit!5656)

(declare-fun choose!2686 (List!4055 Int Token!1298) Unit!5656)

(assert (=> d!93820 (= lt!130796 (choose!2686 tokens!465 lambda!10434 (h!9442 tokens!465)))))

(declare-fun e!190731 () Bool)

(assert (=> d!93820 e!190731))

(declare-fun res!139480 () Bool)

(assert (=> d!93820 (=> (not res!139480) (not e!190731))))

(assert (=> d!93820 (= res!139480 (forall!1066 tokens!465 lambda!10434))))

(assert (=> d!93820 (= (forallContained!330 tokens!465 lambda!10434 (h!9442 tokens!465)) lt!130796)))

(declare-fun b!306806 () Bool)

(declare-fun contains!801 (List!4055 Token!1298) Bool)

(assert (=> b!306806 (= e!190731 (contains!801 tokens!465 (h!9442 tokens!465)))))

(assert (= (and d!93820 res!139480) b!306806))

(declare-fun b_lambda!10641 () Bool)

(assert (=> (not b_lambda!10641) (not d!93820)))

(declare-fun m!409533 () Bool)

(assert (=> d!93820 m!409533))

(declare-fun m!409535 () Bool)

(assert (=> d!93820 m!409535))

(declare-fun m!409537 () Bool)

(assert (=> d!93820 m!409537))

(declare-fun m!409539 () Bool)

(assert (=> b!306806 m!409539))

(assert (=> b!306162 d!93820))

(assert (=> b!306181 d!93810))

(declare-fun d!93822 () Bool)

(assert (=> d!93822 (= (isEmpty!2754 (t!43215 tokens!465)) ((_ is Nil!4045) (t!43215 tokens!465)))))

(assert (=> b!306181 d!93822))

(declare-fun d!93824 () Bool)

(assert (=> d!93824 (= (isEmpty!2754 tokens!465) ((_ is Nil!4045) tokens!465))))

(assert (=> b!306181 d!93824))

(declare-fun d!93826 () Bool)

(assert (=> d!93826 (= lt!130463 (_2!2547 lt!130462))))

(declare-fun lt!130799 () Unit!5656)

(declare-fun choose!2687 (List!4053 List!4053 List!4053 List!4053 List!4053) Unit!5656)

(assert (=> d!93826 (= lt!130799 (choose!2687 lt!130460 lt!130463 lt!130460 (_2!2547 lt!130462) lt!130452))))

(assert (=> d!93826 (isPrefix!437 lt!130460 lt!130452)))

(assert (=> d!93826 (= (lemmaSamePrefixThenSameSuffix!222 lt!130460 lt!130463 lt!130460 (_2!2547 lt!130462) lt!130452) lt!130799)))

(declare-fun bs!35466 () Bool)

(assert (= bs!35466 d!93826))

(declare-fun m!409541 () Bool)

(assert (=> bs!35466 m!409541))

(declare-fun m!409543 () Bool)

(assert (=> bs!35466 m!409543))

(assert (=> b!306181 d!93826))

(declare-fun b!306807 () Bool)

(declare-fun res!139483 () Bool)

(declare-fun e!190733 () Bool)

(assert (=> b!306807 (=> (not res!139483) (not e!190733))))

(declare-fun lt!130805 () Option!921)

(assert (=> b!306807 (= res!139483 (matchR!319 (regex!777 (rule!1390 (_1!2547 (get!1380 lt!130805)))) (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130805))))))))

(declare-fun b!306808 () Bool)

(declare-fun res!139485 () Bool)

(assert (=> b!306808 (=> (not res!139485) (not e!190733))))

(assert (=> b!306808 (= res!139485 (= (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130805)))) (originalCharacters!820 (_1!2547 (get!1380 lt!130805)))))))

(declare-fun b!306809 () Bool)

(assert (=> b!306809 (= e!190733 (contains!799 rules!1920 (rule!1390 (_1!2547 (get!1380 lt!130805)))))))

(declare-fun d!93828 () Bool)

(declare-fun e!190732 () Bool)

(assert (=> d!93828 e!190732))

(declare-fun res!139482 () Bool)

(assert (=> d!93828 (=> res!139482 e!190732)))

(assert (=> d!93828 (= res!139482 (isEmpty!2756 lt!130805))))

(declare-fun e!190734 () Option!921)

(assert (=> d!93828 (= lt!130805 e!190734)))

(declare-fun c!58233 () Bool)

(assert (=> d!93828 (= c!58233 (and ((_ is Cons!4044) rules!1920) ((_ is Nil!4044) (t!43214 rules!1920))))))

(declare-fun lt!130806 () Unit!5656)

(declare-fun lt!130804 () Unit!5656)

(assert (=> d!93828 (= lt!130806 lt!130804)))

(assert (=> d!93828 (isPrefix!437 lt!130463 lt!130463)))

(assert (=> d!93828 (= lt!130804 (lemmaIsPrefixRefl!237 lt!130463 lt!130463))))

(assert (=> d!93828 (rulesValidInductive!232 thiss!17480 rules!1920)))

(assert (=> d!93828 (= (maxPrefix!379 thiss!17480 rules!1920 lt!130463) lt!130805)))

(declare-fun b!306810 () Bool)

(declare-fun res!139486 () Bool)

(assert (=> b!306810 (=> (not res!139486) (not e!190733))))

(assert (=> b!306810 (= res!139486 (= (value!26460 (_1!2547 (get!1380 lt!130805))) (apply!884 (transformation!777 (rule!1390 (_1!2547 (get!1380 lt!130805)))) (seqFromList!920 (originalCharacters!820 (_1!2547 (get!1380 lt!130805)))))))))

(declare-fun b!306811 () Bool)

(declare-fun lt!130802 () Option!921)

(declare-fun lt!130803 () Option!921)

(assert (=> b!306811 (= e!190734 (ite (and ((_ is None!920) lt!130802) ((_ is None!920) lt!130803)) None!920 (ite ((_ is None!920) lt!130803) lt!130802 (ite ((_ is None!920) lt!130802) lt!130803 (ite (>= (size!3233 (_1!2547 (v!14919 lt!130802))) (size!3233 (_1!2547 (v!14919 lt!130803)))) lt!130802 lt!130803)))))))

(declare-fun call!17817 () Option!921)

(assert (=> b!306811 (= lt!130802 call!17817)))

(assert (=> b!306811 (= lt!130803 (maxPrefix!379 thiss!17480 (t!43214 rules!1920) lt!130463))))

(declare-fun bm!17812 () Bool)

(assert (=> bm!17812 (= call!17817 (maxPrefixOneRule!171 thiss!17480 (h!9441 rules!1920) lt!130463))))

(declare-fun b!306812 () Bool)

(declare-fun res!139481 () Bool)

(assert (=> b!306812 (=> (not res!139481) (not e!190733))))

(assert (=> b!306812 (= res!139481 (= (++!1096 (list!1705 (charsOf!420 (_1!2547 (get!1380 lt!130805)))) (_2!2547 (get!1380 lt!130805))) lt!130463))))

(declare-fun b!306813 () Bool)

(assert (=> b!306813 (= e!190732 e!190733)))

(declare-fun res!139484 () Bool)

(assert (=> b!306813 (=> (not res!139484) (not e!190733))))

(assert (=> b!306813 (= res!139484 (isDefined!760 lt!130805))))

(declare-fun b!306814 () Bool)

(assert (=> b!306814 (= e!190734 call!17817)))

(declare-fun b!306815 () Bool)

(declare-fun res!139487 () Bool)

(assert (=> b!306815 (=> (not res!139487) (not e!190733))))

(assert (=> b!306815 (= res!139487 (< (size!3235 (_2!2547 (get!1380 lt!130805))) (size!3235 lt!130463)))))

(assert (= (and d!93828 c!58233) b!306814))

(assert (= (and d!93828 (not c!58233)) b!306811))

(assert (= (or b!306814 b!306811) bm!17812))

(assert (= (and d!93828 (not res!139482)) b!306813))

(assert (= (and b!306813 res!139484) b!306808))

(assert (= (and b!306808 res!139485) b!306815))

(assert (= (and b!306815 res!139487) b!306812))

(assert (= (and b!306812 res!139481) b!306810))

(assert (= (and b!306810 res!139486) b!306807))

(assert (= (and b!306807 res!139483) b!306809))

(declare-fun m!409545 () Bool)

(assert (=> b!306810 m!409545))

(declare-fun m!409547 () Bool)

(assert (=> b!306810 m!409547))

(assert (=> b!306810 m!409547))

(declare-fun m!409549 () Bool)

(assert (=> b!306810 m!409549))

(declare-fun m!409551 () Bool)

(assert (=> d!93828 m!409551))

(declare-fun m!409553 () Bool)

(assert (=> d!93828 m!409553))

(declare-fun m!409555 () Bool)

(assert (=> d!93828 m!409555))

(assert (=> d!93828 m!408739))

(assert (=> b!306808 m!409545))

(declare-fun m!409557 () Bool)

(assert (=> b!306808 m!409557))

(assert (=> b!306808 m!409557))

(declare-fun m!409559 () Bool)

(assert (=> b!306808 m!409559))

(assert (=> b!306812 m!409545))

(assert (=> b!306812 m!409557))

(assert (=> b!306812 m!409557))

(assert (=> b!306812 m!409559))

(assert (=> b!306812 m!409559))

(declare-fun m!409561 () Bool)

(assert (=> b!306812 m!409561))

(assert (=> b!306815 m!409545))

(declare-fun m!409563 () Bool)

(assert (=> b!306815 m!409563))

(assert (=> b!306815 m!409123))

(declare-fun m!409565 () Bool)

(assert (=> bm!17812 m!409565))

(declare-fun m!409567 () Bool)

(assert (=> b!306813 m!409567))

(assert (=> b!306809 m!409545))

(declare-fun m!409569 () Bool)

(assert (=> b!306809 m!409569))

(assert (=> b!306807 m!409545))

(assert (=> b!306807 m!409557))

(assert (=> b!306807 m!409557))

(assert (=> b!306807 m!409559))

(assert (=> b!306807 m!409559))

(declare-fun m!409571 () Bool)

(assert (=> b!306807 m!409571))

(declare-fun m!409573 () Bool)

(assert (=> b!306811 m!409573))

(assert (=> b!306181 d!93828))

(declare-fun d!93830 () Bool)

(declare-fun e!190823 () Bool)

(assert (=> d!93830 e!190823))

(declare-fun res!139514 () Bool)

(assert (=> d!93830 (=> res!139514 e!190823)))

(assert (=> d!93830 (= res!139514 (isEmpty!2754 tokens!465))))

(declare-fun lt!130863 () Unit!5656)

(declare-fun choose!2688 (LexerInterface!663 List!4054 List!4055 Token!1298) Unit!5656)

(assert (=> d!93830 (= lt!130863 (choose!2688 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!93830 (not (isEmpty!2752 rules!1920))))

(assert (=> d!93830 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!184 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!130863)))

(declare-fun b!306939 () Bool)

(declare-fun e!190822 () Bool)

(assert (=> b!306939 (= e!190823 e!190822)))

(declare-fun res!139515 () Bool)

(assert (=> b!306939 (=> (not res!139515) (not e!190822))))

(assert (=> b!306939 (= res!139515 (isDefined!760 (maxPrefix!379 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!306940 () Bool)

(assert (=> b!306940 (= e!190822 (= (_1!2547 (get!1380 (maxPrefix!379 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!344 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!960 tokens!465)))))

(assert (= (and d!93830 (not res!139514)) b!306939))

(assert (= (and b!306939 res!139515) b!306940))

(assert (=> d!93830 m!408555))

(declare-fun m!409773 () Bool)

(assert (=> d!93830 m!409773))

(assert (=> d!93830 m!408531))

(assert (=> b!306939 m!408547))

(assert (=> b!306939 m!408547))

(declare-fun m!409775 () Bool)

(assert (=> b!306939 m!409775))

(assert (=> b!306939 m!409775))

(declare-fun m!409777 () Bool)

(assert (=> b!306939 m!409777))

(assert (=> b!306940 m!408547))

(assert (=> b!306940 m!408547))

(assert (=> b!306940 m!409775))

(assert (=> b!306940 m!409775))

(declare-fun m!409779 () Bool)

(assert (=> b!306940 m!409779))

(assert (=> b!306940 m!408535))

(assert (=> b!306181 d!93830))

(declare-fun d!93868 () Bool)

(assert (=> d!93868 (= (get!1380 (maxPrefix!379 thiss!17480 rules!1920 lt!130452)) (v!14919 (maxPrefix!379 thiss!17480 rules!1920 lt!130452)))))

(assert (=> b!306181 d!93868))

(declare-fun d!93870 () Bool)

(declare-fun e!190831 () Bool)

(assert (=> d!93870 e!190831))

(declare-fun res!139524 () Bool)

(assert (=> d!93870 (=> res!139524 e!190831)))

(declare-fun lt!130866 () Bool)

(assert (=> d!93870 (= res!139524 (not lt!130866))))

(declare-fun e!190830 () Bool)

(assert (=> d!93870 (= lt!130866 e!190830)))

(declare-fun res!139526 () Bool)

(assert (=> d!93870 (=> res!139526 e!190830)))

(assert (=> d!93870 (= res!139526 ((_ is Nil!4043) lt!130460))))

(assert (=> d!93870 (= (isPrefix!437 lt!130460 lt!130453) lt!130866)))

(declare-fun b!306951 () Bool)

(declare-fun e!190832 () Bool)

(assert (=> b!306951 (= e!190832 (isPrefix!437 (tail!537 lt!130460) (tail!537 lt!130453)))))

(declare-fun b!306950 () Bool)

(declare-fun res!139527 () Bool)

(assert (=> b!306950 (=> (not res!139527) (not e!190832))))

(assert (=> b!306950 (= res!139527 (= (head!962 lt!130460) (head!962 lt!130453)))))

(declare-fun b!306949 () Bool)

(assert (=> b!306949 (= e!190830 e!190832)))

(declare-fun res!139525 () Bool)

(assert (=> b!306949 (=> (not res!139525) (not e!190832))))

(assert (=> b!306949 (= res!139525 (not ((_ is Nil!4043) lt!130453)))))

(declare-fun b!306952 () Bool)

(assert (=> b!306952 (= e!190831 (>= (size!3235 lt!130453) (size!3235 lt!130460)))))

(assert (= (and d!93870 (not res!139526)) b!306949))

(assert (= (and b!306949 res!139525) b!306950))

(assert (= (and b!306950 res!139527) b!306951))

(assert (= (and d!93870 (not res!139524)) b!306952))

(assert (=> b!306951 m!409159))

(declare-fun m!409781 () Bool)

(assert (=> b!306951 m!409781))

(assert (=> b!306951 m!409159))

(assert (=> b!306951 m!409781))

(declare-fun m!409783 () Bool)

(assert (=> b!306951 m!409783))

(assert (=> b!306950 m!409155))

(declare-fun m!409785 () Bool)

(assert (=> b!306950 m!409785))

(declare-fun m!409787 () Bool)

(assert (=> b!306952 m!409787))

(assert (=> b!306952 m!408749))

(assert (=> b!306181 d!93870))

(declare-fun d!93872 () Bool)

(assert (=> d!93872 (isPrefix!437 lt!130460 (++!1096 lt!130460 lt!130463))))

(declare-fun lt!130869 () Unit!5656)

(declare-fun choose!2689 (List!4053 List!4053) Unit!5656)

(assert (=> d!93872 (= lt!130869 (choose!2689 lt!130460 lt!130463))))

(assert (=> d!93872 (= (lemmaConcatTwoListThenFirstIsPrefix!328 lt!130460 lt!130463) lt!130869)))

(declare-fun bs!35500 () Bool)

(assert (= bs!35500 d!93872))

(assert (=> bs!35500 m!408473))

(assert (=> bs!35500 m!408473))

(declare-fun m!409789 () Bool)

(assert (=> bs!35500 m!409789))

(declare-fun m!409791 () Bool)

(assert (=> bs!35500 m!409791))

(assert (=> b!306181 d!93872))

(declare-fun d!93874 () Bool)

(assert (=> d!93874 (= (inv!4994 (tag!995 (h!9441 rules!1920))) (= (mod (str.len (value!26459 (tag!995 (h!9441 rules!1920)))) 2) 0))))

(assert (=> b!306159 d!93874))

(declare-fun d!93876 () Bool)

(declare-fun res!139528 () Bool)

(declare-fun e!190833 () Bool)

(assert (=> d!93876 (=> (not res!139528) (not e!190833))))

(assert (=> d!93876 (= res!139528 (semiInverseModEq!291 (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toValue!1536 (transformation!777 (h!9441 rules!1920)))))))

(assert (=> d!93876 (= (inv!4998 (transformation!777 (h!9441 rules!1920))) e!190833)))

(declare-fun b!306953 () Bool)

(assert (=> b!306953 (= e!190833 (equivClasses!274 (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toValue!1536 (transformation!777 (h!9441 rules!1920)))))))

(assert (= (and d!93876 res!139528) b!306953))

(declare-fun m!409793 () Bool)

(assert (=> d!93876 m!409793))

(declare-fun m!409795 () Bool)

(assert (=> b!306953 m!409795))

(assert (=> b!306159 d!93876))

(declare-fun b!306954 () Bool)

(declare-fun e!190834 () List!4053)

(assert (=> b!306954 (= e!190834 lt!130458)))

(declare-fun lt!130870 () List!4053)

(declare-fun b!306957 () Bool)

(declare-fun e!190835 () Bool)

(assert (=> b!306957 (= e!190835 (or (not (= lt!130458 Nil!4043)) (= lt!130870 lt!130460)))))

(declare-fun b!306955 () Bool)

(assert (=> b!306955 (= e!190834 (Cons!4043 (h!9440 lt!130460) (++!1096 (t!43213 lt!130460) lt!130458)))))

(declare-fun d!93878 () Bool)

(assert (=> d!93878 e!190835))

(declare-fun res!139530 () Bool)

(assert (=> d!93878 (=> (not res!139530) (not e!190835))))

(assert (=> d!93878 (= res!139530 (= (content!604 lt!130870) ((_ map or) (content!604 lt!130460) (content!604 lt!130458))))))

(assert (=> d!93878 (= lt!130870 e!190834)))

(declare-fun c!58250 () Bool)

(assert (=> d!93878 (= c!58250 ((_ is Nil!4043) lt!130460))))

(assert (=> d!93878 (= (++!1096 lt!130460 lt!130458) lt!130870)))

(declare-fun b!306956 () Bool)

(declare-fun res!139529 () Bool)

(assert (=> b!306956 (=> (not res!139529) (not e!190835))))

(assert (=> b!306956 (= res!139529 (= (size!3235 lt!130870) (+ (size!3235 lt!130460) (size!3235 lt!130458))))))

(assert (= (and d!93878 c!58250) b!306954))

(assert (= (and d!93878 (not c!58250)) b!306955))

(assert (= (and d!93878 res!139530) b!306956))

(assert (= (and b!306956 res!139529) b!306957))

(declare-fun m!409797 () Bool)

(assert (=> b!306955 m!409797))

(declare-fun m!409799 () Bool)

(assert (=> d!93878 m!409799))

(assert (=> d!93878 m!409117))

(assert (=> d!93878 m!409101))

(declare-fun m!409801 () Bool)

(assert (=> b!306956 m!409801))

(assert (=> b!306956 m!408749))

(assert (=> b!306956 m!409107))

(assert (=> b!306180 d!93878))

(declare-fun d!93880 () Bool)

(assert (=> d!93880 (= (inv!4994 (tag!995 (rule!1390 (h!9442 tokens!465)))) (= (mod (str.len (value!26459 (tag!995 (rule!1390 (h!9442 tokens!465))))) 2) 0))))

(assert (=> b!306161 d!93880))

(declare-fun d!93882 () Bool)

(declare-fun res!139531 () Bool)

(declare-fun e!190836 () Bool)

(assert (=> d!93882 (=> (not res!139531) (not e!190836))))

(assert (=> d!93882 (= res!139531 (semiInverseModEq!291 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toValue!1536 (transformation!777 (rule!1390 (h!9442 tokens!465))))))))

(assert (=> d!93882 (= (inv!4998 (transformation!777 (rule!1390 (h!9442 tokens!465)))) e!190836)))

(declare-fun b!306958 () Bool)

(assert (=> b!306958 (= e!190836 (equivClasses!274 (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toValue!1536 (transformation!777 (rule!1390 (h!9442 tokens!465))))))))

(assert (= (and d!93882 res!139531) b!306958))

(declare-fun m!409803 () Bool)

(assert (=> d!93882 m!409803))

(declare-fun m!409805 () Bool)

(assert (=> b!306958 m!409805))

(assert (=> b!306161 d!93882))

(declare-fun b!306970 () Bool)

(declare-fun e!190839 () Bool)

(declare-fun tp!108770 () Bool)

(declare-fun tp!108769 () Bool)

(assert (=> b!306970 (= e!190839 (and tp!108770 tp!108769))))

(declare-fun b!306972 () Bool)

(declare-fun tp!108772 () Bool)

(declare-fun tp!108771 () Bool)

(assert (=> b!306972 (= e!190839 (and tp!108772 tp!108771))))

(declare-fun b!306971 () Bool)

(declare-fun tp!108768 () Bool)

(assert (=> b!306971 (= e!190839 tp!108768)))

(declare-fun b!306969 () Bool)

(declare-fun tp_is_empty!1879 () Bool)

(assert (=> b!306969 (= e!190839 tp_is_empty!1879)))

(assert (=> b!306157 (= tp!108691 e!190839)))

(assert (= (and b!306157 ((_ is ElementMatch!1001) (regex!777 (rule!1390 separatorToken!170)))) b!306969))

(assert (= (and b!306157 ((_ is Concat!1801) (regex!777 (rule!1390 separatorToken!170)))) b!306970))

(assert (= (and b!306157 ((_ is Star!1001) (regex!777 (rule!1390 separatorToken!170)))) b!306971))

(assert (= (and b!306157 ((_ is Union!1001) (regex!777 (rule!1390 separatorToken!170)))) b!306972))

(declare-fun b!306986 () Bool)

(declare-fun b_free!10973 () Bool)

(declare-fun b_next!10973 () Bool)

(assert (=> b!306986 (= b_free!10973 (not b_next!10973))))

(declare-fun tp!108783 () Bool)

(declare-fun b_and!25921 () Bool)

(assert (=> b!306986 (= tp!108783 b_and!25921)))

(declare-fun b_free!10975 () Bool)

(declare-fun b_next!10975 () Bool)

(assert (=> b!306986 (= b_free!10975 (not b_next!10975))))

(declare-fun t!43274 () Bool)

(declare-fun tb!19337 () Bool)

(assert (=> (and b!306986 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465))))) t!43274) tb!19337))

(declare-fun result!23316 () Bool)

(assert (= result!23316 result!23268))

(assert (=> b!306277 t!43274))

(declare-fun t!43276 () Bool)

(declare-fun tb!19339 () Bool)

(assert (=> (and b!306986 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170)))) t!43276) tb!19339))

(declare-fun result!23318 () Bool)

(assert (= result!23318 result!23284))

(assert (=> d!93736 t!43276))

(assert (=> d!93744 t!43274))

(assert (=> b!306778 t!43276))

(declare-fun b_and!25923 () Bool)

(declare-fun tp!108785 () Bool)

(assert (=> b!306986 (= tp!108785 (and (=> t!43274 result!23316) (=> t!43276 result!23318) b_and!25923))))

(declare-fun e!190854 () Bool)

(declare-fun b!306984 () Bool)

(declare-fun tp!108787 () Bool)

(declare-fun e!190853 () Bool)

(assert (=> b!306984 (= e!190853 (and (inv!21 (value!26460 (h!9442 (t!43215 tokens!465)))) e!190854 tp!108787))))

(declare-fun e!190857 () Bool)

(assert (=> b!306986 (= e!190857 (and tp!108783 tp!108785))))

(declare-fun b!306983 () Bool)

(declare-fun tp!108786 () Bool)

(declare-fun e!190852 () Bool)

(assert (=> b!306983 (= e!190852 (and (inv!4997 (h!9442 (t!43215 tokens!465))) e!190853 tp!108786))))

(assert (=> b!306164 (= tp!108682 e!190852)))

(declare-fun b!306985 () Bool)

(declare-fun tp!108784 () Bool)

(assert (=> b!306985 (= e!190854 (and tp!108784 (inv!4994 (tag!995 (rule!1390 (h!9442 (t!43215 tokens!465))))) (inv!4998 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) e!190857))))

(assert (= b!306985 b!306986))

(assert (= b!306984 b!306985))

(assert (= b!306983 b!306984))

(assert (= (and b!306164 ((_ is Cons!4045) (t!43215 tokens!465))) b!306983))

(declare-fun m!409807 () Bool)

(assert (=> b!306984 m!409807))

(declare-fun m!409809 () Bool)

(assert (=> b!306983 m!409809))

(declare-fun m!409811 () Bool)

(assert (=> b!306985 m!409811))

(declare-fun m!409813 () Bool)

(assert (=> b!306985 m!409813))

(declare-fun b!306997 () Bool)

(declare-fun b_free!10977 () Bool)

(declare-fun b_next!10977 () Bool)

(assert (=> b!306997 (= b_free!10977 (not b_next!10977))))

(declare-fun tp!108798 () Bool)

(declare-fun b_and!25925 () Bool)

(assert (=> b!306997 (= tp!108798 b_and!25925)))

(declare-fun b_free!10979 () Bool)

(declare-fun b_next!10979 () Bool)

(assert (=> b!306997 (= b_free!10979 (not b_next!10979))))

(declare-fun t!43278 () Bool)

(declare-fun tb!19341 () Bool)

(assert (=> (and b!306997 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465))))) t!43278) tb!19341))

(declare-fun result!23322 () Bool)

(assert (= result!23322 result!23268))

(assert (=> b!306277 t!43278))

(declare-fun tb!19343 () Bool)

(declare-fun t!43280 () Bool)

(assert (=> (and b!306997 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170)))) t!43280) tb!19343))

(declare-fun result!23324 () Bool)

(assert (= result!23324 result!23284))

(assert (=> d!93736 t!43280))

(assert (=> d!93744 t!43278))

(assert (=> b!306778 t!43280))

(declare-fun tp!108799 () Bool)

(declare-fun b_and!25927 () Bool)

(assert (=> b!306997 (= tp!108799 (and (=> t!43278 result!23322) (=> t!43280 result!23324) b_and!25927))))

(declare-fun e!190869 () Bool)

(assert (=> b!306997 (= e!190869 (and tp!108798 tp!108799))))

(declare-fun tp!108796 () Bool)

(declare-fun b!306996 () Bool)

(declare-fun e!190866 () Bool)

(assert (=> b!306996 (= e!190866 (and tp!108796 (inv!4994 (tag!995 (h!9441 (t!43214 rules!1920)))) (inv!4998 (transformation!777 (h!9441 (t!43214 rules!1920)))) e!190869))))

(declare-fun b!306995 () Bool)

(declare-fun e!190868 () Bool)

(declare-fun tp!108797 () Bool)

(assert (=> b!306995 (= e!190868 (and e!190866 tp!108797))))

(assert (=> b!306176 (= tp!108686 e!190868)))

(assert (= b!306996 b!306997))

(assert (= b!306995 b!306996))

(assert (= (and b!306176 ((_ is Cons!4044) (t!43214 rules!1920))) b!306995))

(declare-fun m!409815 () Bool)

(assert (=> b!306996 m!409815))

(declare-fun m!409817 () Bool)

(assert (=> b!306996 m!409817))

(declare-fun b!307000 () Bool)

(declare-fun e!190872 () Bool)

(assert (=> b!307000 (= e!190872 true)))

(declare-fun b!306999 () Bool)

(declare-fun e!190871 () Bool)

(assert (=> b!306999 (= e!190871 e!190872)))

(declare-fun b!306998 () Bool)

(declare-fun e!190870 () Bool)

(assert (=> b!306998 (= e!190870 e!190871)))

(assert (=> b!306192 e!190870))

(assert (= b!306999 b!307000))

(assert (= b!306998 b!306999))

(assert (= (and b!306192 ((_ is Cons!4044) (t!43214 rules!1920))) b!306998))

(assert (=> b!307000 (< (dynLambda!2203 order!3273 (toValue!1536 (transformation!777 (h!9441 (t!43214 rules!1920))))) (dynLambda!2204 order!3275 lambda!10434))))

(assert (=> b!307000 (< (dynLambda!2205 order!3277 (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920))))) (dynLambda!2204 order!3275 lambda!10434))))

(declare-fun b!307005 () Bool)

(declare-fun e!190875 () Bool)

(declare-fun tp!108802 () Bool)

(assert (=> b!307005 (= e!190875 (and tp_is_empty!1879 tp!108802))))

(assert (=> b!306152 (= tp!108684 e!190875)))

(assert (= (and b!306152 ((_ is Cons!4043) (originalCharacters!820 (h!9442 tokens!465)))) b!307005))

(declare-fun b!307006 () Bool)

(declare-fun e!190876 () Bool)

(declare-fun tp!108803 () Bool)

(assert (=> b!307006 (= e!190876 (and tp_is_empty!1879 tp!108803))))

(assert (=> b!306149 (= tp!108690 e!190876)))

(assert (= (and b!306149 ((_ is Cons!4043) (originalCharacters!820 separatorToken!170))) b!307006))

(declare-fun b!307008 () Bool)

(declare-fun e!190877 () Bool)

(declare-fun tp!108806 () Bool)

(declare-fun tp!108805 () Bool)

(assert (=> b!307008 (= e!190877 (and tp!108806 tp!108805))))

(declare-fun b!307010 () Bool)

(declare-fun tp!108808 () Bool)

(declare-fun tp!108807 () Bool)

(assert (=> b!307010 (= e!190877 (and tp!108808 tp!108807))))

(declare-fun b!307009 () Bool)

(declare-fun tp!108804 () Bool)

(assert (=> b!307009 (= e!190877 tp!108804)))

(declare-fun b!307007 () Bool)

(assert (=> b!307007 (= e!190877 tp_is_empty!1879)))

(assert (=> b!306159 (= tp!108693 e!190877)))

(assert (= (and b!306159 ((_ is ElementMatch!1001) (regex!777 (h!9441 rules!1920)))) b!307007))

(assert (= (and b!306159 ((_ is Concat!1801) (regex!777 (h!9441 rules!1920)))) b!307008))

(assert (= (and b!306159 ((_ is Star!1001) (regex!777 (h!9441 rules!1920)))) b!307009))

(assert (= (and b!306159 ((_ is Union!1001) (regex!777 (h!9441 rules!1920)))) b!307010))

(declare-fun b!307012 () Bool)

(declare-fun e!190878 () Bool)

(declare-fun tp!108811 () Bool)

(declare-fun tp!108810 () Bool)

(assert (=> b!307012 (= e!190878 (and tp!108811 tp!108810))))

(declare-fun b!307014 () Bool)

(declare-fun tp!108813 () Bool)

(declare-fun tp!108812 () Bool)

(assert (=> b!307014 (= e!190878 (and tp!108813 tp!108812))))

(declare-fun b!307013 () Bool)

(declare-fun tp!108809 () Bool)

(assert (=> b!307013 (= e!190878 tp!108809)))

(declare-fun b!307011 () Bool)

(assert (=> b!307011 (= e!190878 tp_is_empty!1879)))

(assert (=> b!306161 (= tp!108692 e!190878)))

(assert (= (and b!306161 ((_ is ElementMatch!1001) (regex!777 (rule!1390 (h!9442 tokens!465))))) b!307011))

(assert (= (and b!306161 ((_ is Concat!1801) (regex!777 (rule!1390 (h!9442 tokens!465))))) b!307012))

(assert (= (and b!306161 ((_ is Star!1001) (regex!777 (rule!1390 (h!9442 tokens!465))))) b!307013))

(assert (= (and b!306161 ((_ is Union!1001) (regex!777 (rule!1390 (h!9442 tokens!465))))) b!307014))

(declare-fun b_lambda!10655 () Bool)

(assert (= b_lambda!10629 (or b!306150 b_lambda!10655)))

(declare-fun bs!35501 () Bool)

(declare-fun d!93884 () Bool)

(assert (= bs!35501 (and d!93884 b!306150)))

(assert (=> bs!35501 (= (dynLambda!2209 lambda!10433 (h!9442 tokens!465)) (not (isSeparator!777 (rule!1390 (h!9442 tokens!465)))))))

(assert (=> b!306533 d!93884))

(declare-fun b_lambda!10657 () Bool)

(assert (= b_lambda!10641 (or b!306162 b_lambda!10657)))

(declare-fun bs!35502 () Bool)

(declare-fun d!93886 () Bool)

(assert (= bs!35502 (and d!93886 b!306162)))

(assert (=> bs!35502 (= (dynLambda!2209 lambda!10434 (h!9442 tokens!465)) (rulesProduceIndividualToken!412 thiss!17480 rules!1920 (h!9442 tokens!465)))))

(assert (=> bs!35502 m!408511))

(assert (=> d!93820 d!93886))

(declare-fun b_lambda!10659 () Bool)

(assert (= b_lambda!10619 (or (and b!306183 b_free!10963 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306986 b_free!10975 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306155 b_free!10955 (= (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306182 b_free!10959) (and b!306997 b_free!10979 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) b_lambda!10659)))

(declare-fun b_lambda!10661 () Bool)

(assert (= b_lambda!10627 (or (and b!306183 b_free!10963 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306986 b_free!10975 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306155 b_free!10955 (= (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) (and b!306182 b_free!10959) (and b!306997 b_free!10979 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))))) b_lambda!10661)))

(declare-fun b_lambda!10663 () Bool)

(assert (= b_lambda!10625 (or (and b!306183 b_free!10963 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306986 b_free!10975 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306182 b_free!10959 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306155 b_free!10955) (and b!306997 b_free!10979 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) b_lambda!10663)))

(declare-fun b_lambda!10665 () Bool)

(assert (= b_lambda!10639 (or (and b!306183 b_free!10963 (= (toChars!1395 (transformation!777 (h!9441 rules!1920))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306986 b_free!10975 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 (t!43215 tokens!465))))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306182 b_free!10959 (= (toChars!1395 (transformation!777 (rule!1390 (h!9442 tokens!465)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) (and b!306155 b_free!10955) (and b!306997 b_free!10979 (= (toChars!1395 (transformation!777 (h!9441 (t!43214 rules!1920)))) (toChars!1395 (transformation!777 (rule!1390 separatorToken!170))))) b_lambda!10665)))

(check-sat (not d!93812) (not b_lambda!10659) (not d!93878) (not d!93806) (not d!93756) (not d!93780) (not d!93736) (not b!307009) (not bm!17785) (not bm!17758) (not b!306504) (not b!306634) b_and!25909 (not bm!17779) (not b!306278) (not b!306308) (not b!306499) (not b!306492) (not b!306815) (not b!306329) (not b!306984) (not b!306616) (not d!93742) (not b!306602) (not b!306523) (not d!93744) (not d!93662) (not d!93772) (not b!306774) (not b!306515) (not b!306985) (not d!93670) (not b!306501) (not b!306952) (not b!306595) (not d!93778) (not b!306972) (not b!306810) (not b!306639) (not d!93652) (not b!306328) (not b!306796) (not b!306646) (not b!306266) (not bm!17728) (not b!306812) (not d!93684) (not bm!17784) (not b!306621) b_and!25861 tp_is_empty!1879 (not d!93682) (not b!306769) (not b!306806) (not b_next!10979) (not b_next!10963) (not b!307010) (not b_lambda!10657) (not d!93774) (not b!306951) (not b!306498) (not d!93872) (not b!306617) (not bm!17808) (not b!306813) (not b!306808) (not b!306430) (not b_next!10959) (not b!306527) (not b!306265) (not b!306620) (not d!93830) (not b!306312) (not d!93818) (not b!306324) (not b!307013) (not b!307014) (not d!93814) (not b!306424) (not bs!35502) (not b!306765) (not bm!17761) (not b!306326) (not d!93748) (not b!306996) (not bm!17787) (not b!306802) (not b!306285) (not d!93712) (not b!306309) (not d!93764) (not b!306773) (not b!306807) b_and!25925 (not b_next!10977) (not b!306971) (not b!306649) (not bm!17759) (not b!306306) b_and!25911 (not b!306630) (not tb!19317) (not b!306775) b_and!25857 b_and!25921 (not d!93750) (not bm!17746) (not d!93816) (not bm!17789) (not d!93698) (not b!306766) (not d!93640) (not b_lambda!10663) (not d!93828) (not b!306304) (not d!93826) (not d!93808) (not b!306537) (not d!93762) (not b!306514) (not b!306604) (not bm!17786) b_and!25923 (not b!306618) (not b!306365) (not d!93664) (not b!306970) (not b!306956) (not b!306379) (not b!306606) (not d!93760) (not b!306601) (not b!306323) (not d!93738) (not b_next!10957) (not b!306534) (not b!306799) (not b!306995) (not b!306542) (not b!306777) (not b!307005) (not b!306599) (not b!306955) (not b_next!10975) (not b!306636) (not b!306645) (not bm!17782) (not b!306635) (not b!306363) (not b!306627) (not d!93820) (not d!93616) (not d!93882) (not b!306426) (not b!306801) (not b!306500) (not b!306811) (not b!306770) (not b_next!10953) (not b!306809) (not b!306797) (not b!306768) (not b!306644) (not bm!17744) (not b!306650) (not bm!17743) (not b!306771) (not tb!19305) (not b!306496) (not b!306429) (not b!306764) (not b!306307) (not b!306522) (not b!306983) (not b!306310) (not b!306373) b_and!25907 (not b_next!10961) (not d!93638) (not b!306497) (not d!93876) (not b_lambda!10655) (not b!306958) (not b!307008) (not b!307012) (not d!93740) (not b!306800) (not b!306778) (not b!306518) (not b!306939) (not b!306798) (not b!306277) (not bm!17781) (not b!306953) (not b_next!10973) (not b!306526) (not b!306772) (not b_next!10955) (not d!93690) (not b!306638) (not d!93654) (not b!306998) (not d!93768) (not d!93810) (not b_lambda!10665) (not b!306637) b_and!25927 (not b!306779) (not bm!17811) (not b!306626) (not b!306331) (not b!306425) (not d!93752) b_and!25853 (not b!306519) (not b!307006) (not bm!17742) (not bm!17812) (not b!306940) (not d!93696) (not b!306619) (not b!306950) (not b!306305) (not d!93746) (not b_lambda!10661))
(check-sat b_and!25909 b_and!25861 (not b_next!10959) b_and!25923 (not b_next!10957) (not b_next!10975) (not b_next!10953) b_and!25927 b_and!25853 (not b_next!10979) (not b_next!10963) b_and!25925 (not b_next!10977) b_and!25911 b_and!25857 b_and!25921 b_and!25907 (not b_next!10961) (not b_next!10973) (not b_next!10955))
