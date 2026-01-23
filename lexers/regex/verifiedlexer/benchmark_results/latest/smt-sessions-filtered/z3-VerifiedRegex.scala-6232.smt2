; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302634 () Bool)

(assert start!302634)

(declare-fun b!3222329 () Bool)

(declare-fun b_free!85737 () Bool)

(declare-fun b_next!86441 () Bool)

(assert (=> b!3222329 (= b_free!85737 (not b_next!86441))))

(declare-fun tp!1015119 () Bool)

(declare-fun b_and!215439 () Bool)

(assert (=> b!3222329 (= tp!1015119 b_and!215439)))

(declare-fun b_free!85739 () Bool)

(declare-fun b_next!86443 () Bool)

(assert (=> b!3222329 (= b_free!85739 (not b_next!86443))))

(declare-fun tp!1015128 () Bool)

(declare-fun b_and!215441 () Bool)

(assert (=> b!3222329 (= tp!1015128 b_and!215441)))

(declare-fun b!3222368 () Bool)

(declare-fun b_free!85741 () Bool)

(declare-fun b_next!86445 () Bool)

(assert (=> b!3222368 (= b_free!85741 (not b_next!86445))))

(declare-fun tp!1015127 () Bool)

(declare-fun b_and!215443 () Bool)

(assert (=> b!3222368 (= tp!1015127 b_and!215443)))

(declare-fun b_free!85743 () Bool)

(declare-fun b_next!86447 () Bool)

(assert (=> b!3222368 (= b_free!85743 (not b_next!86447))))

(declare-fun tp!1015118 () Bool)

(declare-fun b_and!215445 () Bool)

(assert (=> b!3222368 (= tp!1015118 b_and!215445)))

(declare-fun b!3222334 () Bool)

(declare-fun b_free!85745 () Bool)

(declare-fun b_next!86449 () Bool)

(assert (=> b!3222334 (= b_free!85745 (not b_next!86449))))

(declare-fun tp!1015122 () Bool)

(declare-fun b_and!215447 () Bool)

(assert (=> b!3222334 (= tp!1015122 b_and!215447)))

(declare-fun b_free!85747 () Bool)

(declare-fun b_next!86451 () Bool)

(assert (=> b!3222334 (= b_free!85747 (not b_next!86451))))

(declare-fun tp!1015129 () Bool)

(declare-fun b_and!215449 () Bool)

(assert (=> b!3222334 (= tp!1015129 b_and!215449)))

(declare-fun bs!542623 () Bool)

(declare-fun b!3222357 () Bool)

(declare-fun b!3222337 () Bool)

(assert (= bs!542623 (and b!3222357 b!3222337)))

(declare-fun lambda!117867 () Int)

(declare-fun lambda!117866 () Int)

(assert (=> bs!542623 (not (= lambda!117867 lambda!117866))))

(declare-fun b!3222380 () Bool)

(declare-fun e!2009426 () Bool)

(assert (=> b!3222380 (= e!2009426 true)))

(declare-fun b!3222379 () Bool)

(declare-fun e!2009425 () Bool)

(assert (=> b!3222379 (= e!2009425 e!2009426)))

(declare-fun b!3222378 () Bool)

(declare-fun e!2009424 () Bool)

(assert (=> b!3222378 (= e!2009424 e!2009425)))

(assert (=> b!3222357 e!2009424))

(assert (= b!3222379 b!3222380))

(assert (= b!3222378 b!3222379))

(declare-datatypes ((C!20192 0))(
  ( (C!20193 (val!12144 Int)) )
))
(declare-datatypes ((Regex!10003 0))(
  ( (ElementMatch!10003 (c!541752 C!20192)) (Concat!15477 (regOne!20518 Regex!10003) (regTwo!20518 Regex!10003)) (EmptyExpr!10003) (Star!10003 (reg!10332 Regex!10003)) (EmptyLang!10003) (Union!10003 (regOne!20519 Regex!10003) (regTwo!20519 Regex!10003)) )
))
(declare-datatypes ((List!36386 0))(
  ( (Nil!36262) (Cons!36262 (h!41682 (_ BitVec 16)) (t!240583 List!36386)) )
))
(declare-datatypes ((TokenValue!5474 0))(
  ( (FloatLiteralValue!10948 (text!38763 List!36386)) (TokenValueExt!5473 (__x!23165 Int)) (Broken!27370 (value!169888 List!36386)) (Object!5597) (End!5474) (Def!5474) (Underscore!5474) (Match!5474) (Else!5474) (Error!5474) (Case!5474) (If!5474) (Extends!5474) (Abstract!5474) (Class!5474) (Val!5474) (DelimiterValue!10948 (del!5534 List!36386)) (KeywordValue!5480 (value!169889 List!36386)) (CommentValue!10948 (value!169890 List!36386)) (WhitespaceValue!10948 (value!169891 List!36386)) (IndentationValue!5474 (value!169892 List!36386)) (String!40703) (Int32!5474) (Broken!27371 (value!169893 List!36386)) (Boolean!5475) (Unit!50843) (OperatorValue!5477 (op!5534 List!36386)) (IdentifierValue!10948 (value!169894 List!36386)) (IdentifierValue!10949 (value!169895 List!36386)) (WhitespaceValue!10949 (value!169896 List!36386)) (True!10948) (False!10948) (Broken!27372 (value!169897 List!36386)) (Broken!27373 (value!169898 List!36386)) (True!10949) (RightBrace!5474) (RightBracket!5474) (Colon!5474) (Null!5474) (Comma!5474) (LeftBracket!5474) (False!10949) (LeftBrace!5474) (ImaginaryLiteralValue!5474 (text!38764 List!36386)) (StringLiteralValue!16422 (value!169899 List!36386)) (EOFValue!5474 (value!169900 List!36386)) (IdentValue!5474 (value!169901 List!36386)) (DelimiterValue!10949 (value!169902 List!36386)) (DedentValue!5474 (value!169903 List!36386)) (NewLineValue!5474 (value!169904 List!36386)) (IntegerValue!16422 (value!169905 (_ BitVec 32)) (text!38765 List!36386)) (IntegerValue!16423 (value!169906 Int) (text!38766 List!36386)) (Times!5474) (Or!5474) (Equal!5474) (Minus!5474) (Broken!27374 (value!169907 List!36386)) (And!5474) (Div!5474) (LessEqual!5474) (Mod!5474) (Concat!15478) (Not!5474) (Plus!5474) (SpaceValue!5474 (value!169908 List!36386)) (IntegerValue!16424 (value!169909 Int) (text!38767 List!36386)) (StringLiteralValue!16423 (text!38768 List!36386)) (FloatLiteralValue!10949 (text!38769 List!36386)) (BytesLiteralValue!5474 (value!169910 List!36386)) (CommentValue!10949 (value!169911 List!36386)) (StringLiteralValue!16424 (value!169912 List!36386)) (ErrorTokenValue!5474 (msg!5535 List!36386)) )
))
(declare-datatypes ((List!36387 0))(
  ( (Nil!36263) (Cons!36263 (h!41683 C!20192) (t!240584 List!36387)) )
))
(declare-datatypes ((IArray!21731 0))(
  ( (IArray!21732 (innerList!10923 List!36387)) )
))
(declare-datatypes ((Conc!10863 0))(
  ( (Node!10863 (left!28223 Conc!10863) (right!28553 Conc!10863) (csize!21956 Int) (cheight!11074 Int)) (Leaf!17096 (xs!13981 IArray!21731) (csize!21957 Int)) (Empty!10863) )
))
(declare-datatypes ((BalanceConc!21340 0))(
  ( (BalanceConc!21341 (c!541753 Conc!10863)) )
))
(declare-datatypes ((String!40704 0))(
  ( (String!40705 (value!169913 String)) )
))
(declare-datatypes ((TokenValueInjection!10376 0))(
  ( (TokenValueInjection!10377 (toValue!7340 Int) (toChars!7199 Int)) )
))
(declare-datatypes ((Rule!10288 0))(
  ( (Rule!10289 (regex!5244 Regex!10003) (tag!5776 String!40704) (isSeparator!5244 Bool) (transformation!5244 TokenValueInjection!10376)) )
))
(declare-datatypes ((List!36388 0))(
  ( (Nil!36264) (Cons!36264 (h!41684 Rule!10288) (t!240585 List!36388)) )
))
(declare-fun rules!2135 () List!36388)

(get-info :version)

(assert (= (and b!3222357 ((_ is Cons!36264) rules!2135)) b!3222378))

(declare-fun order!18619 () Int)

(declare-fun order!18617 () Int)

(declare-fun dynLambda!14697 (Int Int) Int)

(declare-fun dynLambda!14698 (Int Int) Int)

(assert (=> b!3222380 (< (dynLambda!14697 order!18617 (toValue!7340 (transformation!5244 (h!41684 rules!2135)))) (dynLambda!14698 order!18619 lambda!117867))))

(declare-fun order!18621 () Int)

(declare-fun dynLambda!14699 (Int Int) Int)

(assert (=> b!3222380 (< (dynLambda!14699 order!18621 (toChars!7199 (transformation!5244 (h!41684 rules!2135)))) (dynLambda!14698 order!18619 lambda!117867))))

(assert (=> b!3222357 true))

(declare-fun b!3222327 () Bool)

(declare-fun e!2009383 () Bool)

(declare-fun e!2009391 () Bool)

(declare-fun tp!1015125 () Bool)

(assert (=> b!3222327 (= e!2009383 (and e!2009391 tp!1015125))))

(declare-fun b!3222328 () Bool)

(declare-fun e!2009388 () Bool)

(declare-fun e!2009417 () Bool)

(assert (=> b!3222328 (= e!2009388 e!2009417)))

(declare-fun res!1312144 () Bool)

(assert (=> b!3222328 (=> res!1312144 e!2009417)))

(declare-fun lt!1092420 () List!36387)

(declare-fun lt!1092428 () List!36387)

(assert (=> b!3222328 (= res!1312144 (not (= lt!1092420 lt!1092428)))))

(declare-fun lt!1092423 () List!36387)

(declare-fun lt!1092412 () List!36387)

(declare-fun lt!1092397 () List!36387)

(declare-fun ++!8718 (List!36387 List!36387) List!36387)

(assert (=> b!3222328 (= lt!1092428 (++!8718 (++!8718 lt!1092397 lt!1092412) lt!1092423))))

(declare-fun e!2009401 () Bool)

(assert (=> b!3222329 (= e!2009401 (and tp!1015119 tp!1015128))))

(declare-fun b!3222330 () Bool)

(declare-fun e!2009400 () Bool)

(declare-datatypes ((Token!9854 0))(
  ( (Token!9855 (value!169914 TokenValue!5474) (rule!7702 Rule!10288) (size!27343 Int) (originalCharacters!5958 List!36387)) )
))
(declare-datatypes ((List!36389 0))(
  ( (Nil!36265) (Cons!36265 (h!41685 Token!9854) (t!240586 List!36389)) )
))
(declare-datatypes ((IArray!21733 0))(
  ( (IArray!21734 (innerList!10924 List!36389)) )
))
(declare-datatypes ((Conc!10864 0))(
  ( (Node!10864 (left!28224 Conc!10864) (right!28554 Conc!10864) (csize!21958 Int) (cheight!11075 Int)) (Leaf!17097 (xs!13982 IArray!21733) (csize!21959 Int)) (Empty!10864) )
))
(declare-datatypes ((BalanceConc!21342 0))(
  ( (BalanceConc!21343 (c!541754 Conc!10864)) )
))
(declare-datatypes ((tuple2!35690 0))(
  ( (tuple2!35691 (_1!20979 BalanceConc!21342) (_2!20979 BalanceConc!21340)) )
))
(declare-fun lt!1092395 () tuple2!35690)

(declare-fun isEmpty!20359 (BalanceConc!21340) Bool)

(assert (=> b!3222330 (= e!2009400 (not (isEmpty!20359 (_2!20979 lt!1092395))))))

(declare-fun b!3222331 () Bool)

(declare-fun e!2009409 () Bool)

(declare-fun e!2009415 () Bool)

(assert (=> b!3222331 (= e!2009409 e!2009415)))

(declare-fun res!1312143 () Bool)

(assert (=> b!3222331 (=> res!1312143 e!2009415)))

(declare-fun tokens!494 () List!36389)

(assert (=> b!3222331 (= res!1312143 (or (isSeparator!5244 (rule!7702 (h!41685 tokens!494))) (isSeparator!5244 (rule!7702 (h!41685 (t!240586 tokens!494))))))))

(declare-datatypes ((Unit!50844 0))(
  ( (Unit!50845) )
))
(declare-fun lt!1092389 () Unit!50844)

(declare-fun forallContained!1215 (List!36389 Int Token!9854) Unit!50844)

(assert (=> b!3222331 (= lt!1092389 (forallContained!1215 tokens!494 lambda!117866 (h!41685 (t!240586 tokens!494))))))

(declare-fun lt!1092415 () Unit!50844)

(assert (=> b!3222331 (= lt!1092415 (forallContained!1215 tokens!494 lambda!117866 (h!41685 tokens!494)))))

(declare-fun b!3222332 () Bool)

(declare-fun res!1312149 () Bool)

(declare-fun e!2009393 () Bool)

(assert (=> b!3222332 (=> (not res!1312149) (not e!2009393))))

(assert (=> b!3222332 (= res!1312149 (and (not ((_ is Nil!36265) tokens!494)) (not ((_ is Nil!36265) (t!240586 tokens!494)))))))

(declare-fun b!3222333 () Bool)

(declare-fun res!1312130 () Bool)

(assert (=> b!3222333 (=> (not res!1312130) (not e!2009393))))

(declare-fun sepAndNonSepRulesDisjointChars!1438 (List!36388 List!36388) Bool)

(assert (=> b!3222333 (= res!1312130 (sepAndNonSepRulesDisjointChars!1438 rules!2135 rules!2135))))

(declare-fun e!2009408 () Bool)

(assert (=> b!3222334 (= e!2009408 (and tp!1015122 tp!1015129))))

(declare-fun b!3222335 () Bool)

(declare-fun res!1312145 () Bool)

(declare-fun e!2009405 () Bool)

(assert (=> b!3222335 (=> res!1312145 e!2009405)))

(declare-datatypes ((LexerInterface!4833 0))(
  ( (LexerInterfaceExt!4830 (__x!23166 Int)) (Lexer!4831) )
))
(declare-fun thiss!18206 () LexerInterface!4833)

(declare-fun rulesProduceIndividualToken!2325 (LexerInterface!4833 List!36388 Token!9854) Bool)

(assert (=> b!3222335 (= res!1312145 (not (rulesProduceIndividualToken!2325 thiss!18206 rules!2135 (h!41685 tokens!494))))))

(declare-fun tp!1015124 () Bool)

(declare-fun e!2009392 () Bool)

(declare-fun b!3222336 () Bool)

(declare-fun e!2009390 () Bool)

(declare-fun inv!49131 (String!40704) Bool)

(declare-fun inv!49134 (TokenValueInjection!10376) Bool)

(assert (=> b!3222336 (= e!2009392 (and tp!1015124 (inv!49131 (tag!5776 (rule!7702 (h!41685 tokens!494)))) (inv!49134 (transformation!5244 (rule!7702 (h!41685 tokens!494)))) e!2009390))))

(declare-fun res!1312141 () Bool)

(assert (=> b!3222337 (=> (not res!1312141) (not e!2009393))))

(declare-fun forall!7426 (List!36389 Int) Bool)

(assert (=> b!3222337 (= res!1312141 (forall!7426 tokens!494 lambda!117866))))

(declare-fun b!3222338 () Bool)

(declare-fun e!2009395 () Bool)

(declare-fun e!2009403 () Bool)

(assert (=> b!3222338 (= e!2009395 e!2009403)))

(declare-fun res!1312150 () Bool)

(assert (=> b!3222338 (=> (not res!1312150) (not e!2009403))))

(declare-fun lt!1092422 () Rule!10288)

(declare-fun matchR!4637 (Regex!10003 List!36387) Bool)

(assert (=> b!3222338 (= res!1312150 (matchR!4637 (regex!5244 lt!1092422) lt!1092412))))

(declare-datatypes ((Option!7193 0))(
  ( (None!7192) (Some!7192 (v!35772 Rule!10288)) )
))
(declare-fun lt!1092388 () Option!7193)

(declare-fun get!11557 (Option!7193) Rule!10288)

(assert (=> b!3222338 (= lt!1092422 (get!11557 lt!1092388))))

(declare-fun b!3222339 () Bool)

(declare-fun e!2009413 () Unit!50844)

(declare-fun Unit!50846 () Unit!50844)

(assert (=> b!3222339 (= e!2009413 Unit!50846)))

(declare-fun b!3222340 () Bool)

(declare-fun e!2009384 () Bool)

(declare-fun e!2009404 () Bool)

(assert (=> b!3222340 (= e!2009384 e!2009404)))

(declare-fun res!1312127 () Bool)

(assert (=> b!3222340 (=> (not res!1312127) (not e!2009404))))

(declare-fun lt!1092399 () Rule!10288)

(assert (=> b!3222340 (= res!1312127 (matchR!4637 (regex!5244 lt!1092399) lt!1092397))))

(declare-fun lt!1092408 () Option!7193)

(assert (=> b!3222340 (= lt!1092399 (get!11557 lt!1092408))))

(declare-fun b!3222341 () Bool)

(declare-fun Unit!50847 () Unit!50844)

(assert (=> b!3222341 (= e!2009413 Unit!50847)))

(declare-fun lt!1092406 () C!20192)

(declare-fun lt!1092425 () Unit!50844)

(declare-fun separatorToken!241 () Token!9854)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!408 (Regex!10003 List!36387 C!20192) Unit!50844)

(assert (=> b!3222341 (= lt!1092425 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!408 (regex!5244 (rule!7702 separatorToken!241)) lt!1092412 lt!1092406))))

(declare-fun res!1312138 () Bool)

(assert (=> b!3222341 (= res!1312138 (not (matchR!4637 (regex!5244 (rule!7702 separatorToken!241)) lt!1092412)))))

(declare-fun e!2009412 () Bool)

(assert (=> b!3222341 (=> (not res!1312138) (not e!2009412))))

(assert (=> b!3222341 e!2009412))

(declare-fun b!3222342 () Bool)

(assert (=> b!3222342 (= e!2009403 (= (rule!7702 separatorToken!241) lt!1092422))))

(declare-fun b!3222343 () Bool)

(declare-fun tp!1015130 () Bool)

(assert (=> b!3222343 (= e!2009391 (and tp!1015130 (inv!49131 (tag!5776 (h!41684 rules!2135))) (inv!49134 (transformation!5244 (h!41684 rules!2135))) e!2009401))))

(declare-fun b!3222344 () Bool)

(assert (=> b!3222344 (= e!2009405 e!2009409)))

(declare-fun res!1312134 () Bool)

(assert (=> b!3222344 (=> res!1312134 e!2009409)))

(declare-fun lt!1092398 () BalanceConc!21340)

(declare-fun isEmpty!20360 (BalanceConc!21342) Bool)

(declare-fun lex!2163 (LexerInterface!4833 List!36388 BalanceConc!21340) tuple2!35690)

(assert (=> b!3222344 (= res!1312134 (isEmpty!20360 (_1!20979 (lex!2163 thiss!18206 rules!2135 lt!1092398))))))

(declare-fun seqFromList!3559 (List!36387) BalanceConc!21340)

(assert (=> b!3222344 (= lt!1092398 (seqFromList!3559 lt!1092397))))

(declare-fun b!3222345 () Bool)

(declare-fun e!2009387 () Bool)

(declare-fun lt!1092417 () tuple2!35690)

(assert (=> b!3222345 (= e!2009387 (isEmpty!20359 (_2!20979 lt!1092417)))))

(declare-fun b!3222346 () Bool)

(assert (=> b!3222346 (= e!2009404 (= (rule!7702 (h!41685 tokens!494)) lt!1092399))))

(declare-fun e!2009410 () Bool)

(declare-fun b!3222347 () Bool)

(declare-fun tp!1015121 () Bool)

(assert (=> b!3222347 (= e!2009410 (and tp!1015121 (inv!49131 (tag!5776 (rule!7702 separatorToken!241))) (inv!49134 (transformation!5244 (rule!7702 separatorToken!241))) e!2009408))))

(declare-fun b!3222348 () Bool)

(declare-fun e!2009398 () Bool)

(assert (=> b!3222348 (= e!2009398 e!2009405)))

(declare-fun res!1312131 () Bool)

(assert (=> b!3222348 (=> res!1312131 e!2009405)))

(declare-fun lt!1092396 () List!36387)

(declare-fun lt!1092404 () List!36387)

(assert (=> b!3222348 (= res!1312131 (or (not (= lt!1092404 lt!1092397)) (not (= lt!1092396 lt!1092397))))))

(declare-fun list!12912 (BalanceConc!21340) List!36387)

(declare-fun charsOf!3260 (Token!9854) BalanceConc!21340)

(assert (=> b!3222348 (= lt!1092397 (list!12912 (charsOf!3260 (h!41685 tokens!494))))))

(declare-fun b!3222349 () Bool)

(assert (=> b!3222349 (= e!2009393 (not e!2009398))))

(declare-fun res!1312125 () Bool)

(assert (=> b!3222349 (=> res!1312125 e!2009398)))

(assert (=> b!3222349 (= res!1312125 (not (= lt!1092396 lt!1092404)))))

(declare-fun printList!1383 (LexerInterface!4833 List!36389) List!36387)

(assert (=> b!3222349 (= lt!1092404 (printList!1383 thiss!18206 (Cons!36265 (h!41685 tokens!494) Nil!36265)))))

(declare-fun lt!1092400 () BalanceConc!21340)

(assert (=> b!3222349 (= lt!1092396 (list!12912 lt!1092400))))

(declare-fun lt!1092410 () BalanceConc!21342)

(declare-fun printTailRec!1330 (LexerInterface!4833 BalanceConc!21342 Int BalanceConc!21340) BalanceConc!21340)

(assert (=> b!3222349 (= lt!1092400 (printTailRec!1330 thiss!18206 lt!1092410 0 (BalanceConc!21341 Empty!10863)))))

(declare-fun print!1898 (LexerInterface!4833 BalanceConc!21342) BalanceConc!21340)

(assert (=> b!3222349 (= lt!1092400 (print!1898 thiss!18206 lt!1092410))))

(declare-fun singletonSeq!2340 (Token!9854) BalanceConc!21342)

(assert (=> b!3222349 (= lt!1092410 (singletonSeq!2340 (h!41685 tokens!494)))))

(declare-fun b!3222350 () Bool)

(declare-fun e!2009416 () Bool)

(declare-fun lt!1092437 () Rule!10288)

(assert (=> b!3222350 (= e!2009416 (= (rule!7702 (h!41685 (t!240586 tokens!494))) lt!1092437))))

(declare-fun b!3222351 () Bool)

(declare-fun e!2009396 () Unit!50844)

(declare-fun Unit!50848 () Unit!50844)

(assert (=> b!3222351 (= e!2009396 Unit!50848)))

(declare-fun lt!1092414 () List!36387)

(declare-fun lt!1092429 () C!20192)

(declare-fun lt!1092418 () Unit!50844)

(assert (=> b!3222351 (= lt!1092418 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!408 (regex!5244 (rule!7702 (h!41685 (t!240586 tokens!494)))) lt!1092414 lt!1092429))))

(declare-fun res!1312129 () Bool)

(assert (=> b!3222351 (= res!1312129 (not (matchR!4637 (regex!5244 (rule!7702 (h!41685 (t!240586 tokens!494)))) lt!1092414)))))

(declare-fun e!2009399 () Bool)

(assert (=> b!3222351 (=> (not res!1312129) (not e!2009399))))

(assert (=> b!3222351 e!2009399))

(declare-fun b!3222352 () Bool)

(declare-fun res!1312128 () Bool)

(assert (=> b!3222352 (=> (not res!1312128) (not e!2009393))))

(declare-fun rulesInvariant!4230 (LexerInterface!4833 List!36388) Bool)

(assert (=> b!3222352 (= res!1312128 (rulesInvariant!4230 thiss!18206 rules!2135))))

(declare-fun b!3222353 () Bool)

(declare-fun res!1312146 () Bool)

(assert (=> b!3222353 (=> (not res!1312146) (not e!2009387))))

(declare-fun apply!8255 (BalanceConc!21342 Int) Token!9854)

(assert (=> b!3222353 (= res!1312146 (= (apply!8255 (_1!20979 lt!1092417) 0) separatorToken!241))))

(declare-fun b!3222354 () Bool)

(assert (=> b!3222354 (= e!2009412 false)))

(declare-fun b!3222355 () Bool)

(declare-fun Unit!50849 () Unit!50844)

(assert (=> b!3222355 (= e!2009396 Unit!50849)))

(declare-fun b!3222356 () Bool)

(declare-fun res!1312152 () Bool)

(assert (=> b!3222356 (=> (not res!1312152) (not e!2009393))))

(assert (=> b!3222356 (= res!1312152 (rulesProduceIndividualToken!2325 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2009394 () Bool)

(assert (=> b!3222357 (= e!2009394 true)))

(declare-fun lt!1092402 () List!36389)

(declare-fun lt!1092391 () List!36389)

(declare-fun filter!512 (List!36389 Int) List!36389)

(assert (=> b!3222357 (= lt!1092402 (filter!512 lt!1092391 lambda!117866))))

(assert (=> b!3222357 (= (filter!512 lt!1092391 lambda!117866) (t!240586 tokens!494))))

(declare-fun list!12913 (BalanceConc!21342) List!36389)

(declare-fun printWithSeparatorToken!62 (LexerInterface!4833 BalanceConc!21342 Token!9854) BalanceConc!21340)

(declare-fun seqFromList!3560 (List!36389) BalanceConc!21342)

(assert (=> b!3222357 (= lt!1092391 (list!12913 (_1!20979 (lex!2163 thiss!18206 rules!2135 (printWithSeparatorToken!62 thiss!18206 (seqFromList!3560 (t!240586 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1092401 () Unit!50844)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!4 (LexerInterface!4833 List!36388 List!36389 Token!9854) Unit!50844)

(assert (=> b!3222357 (= lt!1092401 (theoremInvertFromTokensSepTokenBetweenEach!4 thiss!18206 rules!2135 (t!240586 tokens!494) separatorToken!241))))

(declare-fun lt!1092431 () List!36387)

(declare-datatypes ((tuple2!35692 0))(
  ( (tuple2!35693 (_1!20980 Token!9854) (_2!20980 List!36387)) )
))
(declare-datatypes ((Option!7194 0))(
  ( (None!7193) (Some!7193 (v!35773 tuple2!35692)) )
))
(declare-fun maxPrefix!2475 (LexerInterface!4833 List!36388 List!36387) Option!7194)

(assert (=> b!3222357 (= (maxPrefix!2475 thiss!18206 rules!2135 lt!1092431) (Some!7193 (tuple2!35693 separatorToken!241 lt!1092423)))))

(declare-fun lt!1092436 () Unit!50844)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!168 (LexerInterface!4833 List!36388 Token!9854 Rule!10288 List!36387 Rule!10288) Unit!50844)

(assert (=> b!3222357 (= lt!1092436 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!168 thiss!18206 rules!2135 separatorToken!241 (rule!7702 separatorToken!241) lt!1092423 (rule!7702 (h!41685 (t!240586 tokens!494)))))))

(declare-fun lt!1092405 () List!36387)

(declare-fun contains!6503 (List!36387 C!20192) Bool)

(assert (=> b!3222357 (not (contains!6503 lt!1092405 lt!1092429))))

(declare-fun lt!1092392 () Unit!50844)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!152 (LexerInterface!4833 List!36388 List!36388 Rule!10288 Rule!10288 C!20192) Unit!50844)

(assert (=> b!3222357 (= lt!1092392 (lemmaSepRuleNotContainsCharContainedInANonSepRule!152 thiss!18206 rules!2135 rules!2135 (rule!7702 (h!41685 (t!240586 tokens!494))) (rule!7702 separatorToken!241) lt!1092429))))

(declare-fun lt!1092432 () Unit!50844)

(assert (=> b!3222357 (= lt!1092432 e!2009396)))

(declare-fun c!541750 () Bool)

(declare-fun usedCharacters!560 (Regex!10003) List!36387)

(assert (=> b!3222357 (= c!541750 (not (contains!6503 (usedCharacters!560 (regex!5244 (rule!7702 (h!41685 (t!240586 tokens!494))))) lt!1092429)))))

(declare-fun head!7069 (List!36387) C!20192)

(assert (=> b!3222357 (= lt!1092429 (head!7069 lt!1092414))))

(declare-fun maxPrefixOneRule!1612 (LexerInterface!4833 Rule!10288 List!36387) Option!7194)

(declare-fun apply!8256 (TokenValueInjection!10376 BalanceConc!21340) TokenValue!5474)

(declare-fun size!27344 (List!36387) Int)

(assert (=> b!3222357 (= (maxPrefixOneRule!1612 thiss!18206 (rule!7702 (h!41685 (t!240586 tokens!494))) lt!1092414) (Some!7193 (tuple2!35693 (Token!9855 (apply!8256 (transformation!5244 (rule!7702 (h!41685 (t!240586 tokens!494)))) (seqFromList!3559 lt!1092414)) (rule!7702 (h!41685 (t!240586 tokens!494))) (size!27344 lt!1092414) lt!1092414) Nil!36263)))))

(declare-fun lt!1092407 () Unit!50844)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!725 (LexerInterface!4833 List!36388 List!36387 List!36387 List!36387 Rule!10288) Unit!50844)

(assert (=> b!3222357 (= lt!1092407 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!725 thiss!18206 rules!2135 lt!1092414 lt!1092414 Nil!36263 (rule!7702 (h!41685 (t!240586 tokens!494)))))))

(declare-fun e!2009385 () Bool)

(assert (=> b!3222357 e!2009385))

(declare-fun res!1312151 () Bool)

(assert (=> b!3222357 (=> (not res!1312151) (not e!2009385))))

(declare-fun lt!1092438 () Option!7193)

(declare-fun isDefined!5582 (Option!7193) Bool)

(assert (=> b!3222357 (= res!1312151 (isDefined!5582 lt!1092438))))

(declare-fun getRuleFromTag!949 (LexerInterface!4833 List!36388 String!40704) Option!7193)

(assert (=> b!3222357 (= lt!1092438 (getRuleFromTag!949 thiss!18206 rules!2135 (tag!5776 (rule!7702 (h!41685 (t!240586 tokens!494))))))))

(declare-fun lt!1092393 () Unit!50844)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!949 (LexerInterface!4833 List!36388 List!36387 Token!9854) Unit!50844)

(assert (=> b!3222357 (= lt!1092393 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!949 thiss!18206 rules!2135 lt!1092414 (h!41685 (t!240586 tokens!494))))))

(declare-fun lt!1092427 () Bool)

(assert (=> b!3222357 lt!1092427))

(declare-fun lt!1092426 () Unit!50844)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!872 (LexerInterface!4833 List!36388 List!36389 Token!9854) Unit!50844)

(assert (=> b!3222357 (= lt!1092426 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!872 thiss!18206 rules!2135 tokens!494 (h!41685 (t!240586 tokens!494))))))

(declare-fun lt!1092413 () List!36387)

(assert (=> b!3222357 (= (maxPrefix!2475 thiss!18206 rules!2135 lt!1092413) (Some!7193 (tuple2!35693 (h!41685 tokens!494) lt!1092431)))))

(declare-fun lt!1092433 () Unit!50844)

(assert (=> b!3222357 (= lt!1092433 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!168 thiss!18206 rules!2135 (h!41685 tokens!494) (rule!7702 (h!41685 tokens!494)) lt!1092431 (rule!7702 separatorToken!241)))))

(assert (=> b!3222357 (not (contains!6503 (usedCharacters!560 (regex!5244 (rule!7702 (h!41685 tokens!494)))) lt!1092406))))

(declare-fun lt!1092416 () Unit!50844)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!168 (LexerInterface!4833 List!36388 List!36388 Rule!10288 Rule!10288 C!20192) Unit!50844)

(assert (=> b!3222357 (= lt!1092416 (lemmaNonSepRuleNotContainsCharContainedInASepRule!168 thiss!18206 rules!2135 rules!2135 (rule!7702 (h!41685 tokens!494)) (rule!7702 separatorToken!241) lt!1092406))))

(declare-fun lt!1092390 () Unit!50844)

(assert (=> b!3222357 (= lt!1092390 (forallContained!1215 tokens!494 lambda!117867 (h!41685 (t!240586 tokens!494))))))

(declare-fun lt!1092434 () Bool)

(assert (=> b!3222357 (= lt!1092427 (not lt!1092434))))

(assert (=> b!3222357 (= lt!1092427 (rulesProduceIndividualToken!2325 thiss!18206 rules!2135 (h!41685 (t!240586 tokens!494))))))

(assert (=> b!3222357 (= lt!1092434 e!2009400)))

(declare-fun res!1312126 () Bool)

(assert (=> b!3222357 (=> res!1312126 e!2009400)))

(declare-fun size!27345 (BalanceConc!21342) Int)

(assert (=> b!3222357 (= res!1312126 (not (= (size!27345 (_1!20979 lt!1092395)) 1)))))

(declare-fun lt!1092409 () BalanceConc!21340)

(assert (=> b!3222357 (= lt!1092395 (lex!2163 thiss!18206 rules!2135 lt!1092409))))

(declare-fun lt!1092430 () BalanceConc!21342)

(assert (=> b!3222357 (= lt!1092409 (printTailRec!1330 thiss!18206 lt!1092430 0 (BalanceConc!21341 Empty!10863)))))

(assert (=> b!3222357 (= lt!1092409 (print!1898 thiss!18206 lt!1092430))))

(assert (=> b!3222357 (= lt!1092430 (singletonSeq!2340 (h!41685 (t!240586 tokens!494))))))

(assert (=> b!3222357 e!2009387))

(declare-fun res!1312132 () Bool)

(assert (=> b!3222357 (=> (not res!1312132) (not e!2009387))))

(assert (=> b!3222357 (= res!1312132 (= (size!27345 (_1!20979 lt!1092417)) 1))))

(declare-fun lt!1092403 () BalanceConc!21340)

(assert (=> b!3222357 (= lt!1092417 (lex!2163 thiss!18206 rules!2135 lt!1092403))))

(declare-fun lt!1092419 () BalanceConc!21342)

(assert (=> b!3222357 (= lt!1092403 (printTailRec!1330 thiss!18206 lt!1092419 0 (BalanceConc!21341 Empty!10863)))))

(assert (=> b!3222357 (= lt!1092403 (print!1898 thiss!18206 lt!1092419))))

(assert (=> b!3222357 (= lt!1092419 (singletonSeq!2340 separatorToken!241))))

(declare-fun lt!1092387 () Unit!50844)

(assert (=> b!3222357 (= lt!1092387 e!2009413)))

(declare-fun c!541751 () Bool)

(assert (=> b!3222357 (= c!541751 (not (contains!6503 lt!1092405 lt!1092406)))))

(assert (=> b!3222357 (= lt!1092406 (head!7069 lt!1092412))))

(assert (=> b!3222357 (= lt!1092405 (usedCharacters!560 (regex!5244 (rule!7702 separatorToken!241))))))

(assert (=> b!3222357 e!2009395))

(declare-fun res!1312133 () Bool)

(assert (=> b!3222357 (=> (not res!1312133) (not e!2009395))))

(assert (=> b!3222357 (= res!1312133 (isDefined!5582 lt!1092388))))

(assert (=> b!3222357 (= lt!1092388 (getRuleFromTag!949 thiss!18206 rules!2135 (tag!5776 (rule!7702 separatorToken!241))))))

(declare-fun lt!1092421 () Unit!50844)

(assert (=> b!3222357 (= lt!1092421 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!949 thiss!18206 rules!2135 lt!1092412 separatorToken!241))))

(assert (=> b!3222357 (= (maxPrefixOneRule!1612 thiss!18206 (rule!7702 (h!41685 tokens!494)) lt!1092397) (Some!7193 (tuple2!35693 (Token!9855 (apply!8256 (transformation!5244 (rule!7702 (h!41685 tokens!494))) lt!1092398) (rule!7702 (h!41685 tokens!494)) (size!27344 lt!1092397) lt!1092397) Nil!36263)))))

(declare-fun lt!1092424 () Unit!50844)

(assert (=> b!3222357 (= lt!1092424 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!725 thiss!18206 rules!2135 lt!1092397 lt!1092397 Nil!36263 (rule!7702 (h!41685 tokens!494))))))

(assert (=> b!3222357 e!2009384))

(declare-fun res!1312124 () Bool)

(assert (=> b!3222357 (=> (not res!1312124) (not e!2009384))))

(assert (=> b!3222357 (= res!1312124 (isDefined!5582 lt!1092408))))

(assert (=> b!3222357 (= lt!1092408 (getRuleFromTag!949 thiss!18206 rules!2135 (tag!5776 (rule!7702 (h!41685 tokens!494)))))))

(declare-fun lt!1092394 () Unit!50844)

(assert (=> b!3222357 (= lt!1092394 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!949 thiss!18206 rules!2135 lt!1092397 (h!41685 tokens!494)))))

(declare-fun lt!1092435 () Unit!50844)

(assert (=> b!3222357 (= lt!1092435 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!872 thiss!18206 rules!2135 tokens!494 (h!41685 tokens!494)))))

(declare-fun e!2009386 () Bool)

(declare-fun tp!1015126 () Bool)

(declare-fun b!3222358 () Bool)

(declare-fun e!2009407 () Bool)

(declare-fun inv!49135 (Token!9854) Bool)

(assert (=> b!3222358 (= e!2009407 (and (inv!49135 (h!41685 tokens!494)) e!2009386 tp!1015126))))

(declare-fun b!3222359 () Bool)

(declare-fun e!2009406 () Bool)

(declare-fun tp!1015123 () Bool)

(declare-fun inv!21 (TokenValue!5474) Bool)

(assert (=> b!3222359 (= e!2009406 (and (inv!21 (value!169914 separatorToken!241)) e!2009410 tp!1015123))))

(declare-fun b!3222360 () Bool)

(assert (=> b!3222360 (= e!2009415 e!2009388)))

(declare-fun res!1312140 () Bool)

(assert (=> b!3222360 (=> res!1312140 e!2009388)))

(declare-fun printWithSeparatorTokenList!178 (LexerInterface!4833 List!36389 Token!9854) List!36387)

(assert (=> b!3222360 (= res!1312140 (not (= lt!1092423 (++!8718 (++!8718 lt!1092414 lt!1092412) (printWithSeparatorTokenList!178 thiss!18206 (t!240586 (t!240586 tokens!494)) separatorToken!241)))))))

(assert (=> b!3222360 (= lt!1092414 (list!12912 (charsOf!3260 (h!41685 (t!240586 tokens!494)))))))

(assert (=> b!3222360 (= lt!1092431 (++!8718 lt!1092412 lt!1092423))))

(assert (=> b!3222360 (= lt!1092412 (list!12912 (charsOf!3260 separatorToken!241)))))

(assert (=> b!3222360 (= lt!1092423 (printWithSeparatorTokenList!178 thiss!18206 (t!240586 tokens!494) separatorToken!241))))

(assert (=> b!3222360 (= lt!1092420 (printWithSeparatorTokenList!178 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3222361 () Bool)

(assert (=> b!3222361 (= e!2009385 e!2009416)))

(declare-fun res!1312137 () Bool)

(assert (=> b!3222361 (=> (not res!1312137) (not e!2009416))))

(assert (=> b!3222361 (= res!1312137 (matchR!4637 (regex!5244 lt!1092437) lt!1092414))))

(assert (=> b!3222361 (= lt!1092437 (get!11557 lt!1092438))))

(declare-fun b!3222362 () Bool)

(declare-fun tp!1015120 () Bool)

(assert (=> b!3222362 (= e!2009386 (and (inv!21 (value!169914 (h!41685 tokens!494))) e!2009392 tp!1015120))))

(declare-fun res!1312148 () Bool)

(assert (=> start!302634 (=> (not res!1312148) (not e!2009393))))

(assert (=> start!302634 (= res!1312148 ((_ is Lexer!4831) thiss!18206))))

(assert (=> start!302634 e!2009393))

(assert (=> start!302634 true))

(assert (=> start!302634 e!2009383))

(assert (=> start!302634 e!2009407))

(assert (=> start!302634 (and (inv!49135 separatorToken!241) e!2009406)))

(declare-fun b!3222363 () Bool)

(declare-fun res!1312135 () Bool)

(assert (=> b!3222363 (=> (not res!1312135) (not e!2009393))))

(assert (=> b!3222363 (= res!1312135 (isSeparator!5244 (rule!7702 separatorToken!241)))))

(declare-fun b!3222364 () Bool)

(declare-fun res!1312136 () Bool)

(assert (=> b!3222364 (=> (not res!1312136) (not e!2009393))))

(declare-fun rulesProduceEachTokenIndividually!1284 (LexerInterface!4833 List!36388 BalanceConc!21342) Bool)

(assert (=> b!3222364 (= res!1312136 (rulesProduceEachTokenIndividually!1284 thiss!18206 rules!2135 (seqFromList!3560 tokens!494)))))

(declare-fun b!3222365 () Bool)

(declare-fun res!1312139 () Bool)

(assert (=> b!3222365 (=> (not res!1312139) (not e!2009393))))

(declare-fun isEmpty!20361 (List!36388) Bool)

(assert (=> b!3222365 (= res!1312139 (not (isEmpty!20361 rules!2135)))))

(declare-fun b!3222366 () Bool)

(assert (=> b!3222366 (= e!2009417 e!2009394)))

(declare-fun res!1312142 () Bool)

(assert (=> b!3222366 (=> res!1312142 e!2009394)))

(assert (=> b!3222366 (= res!1312142 (not (= lt!1092420 lt!1092413)))))

(assert (=> b!3222366 (= lt!1092428 lt!1092413)))

(assert (=> b!3222366 (= lt!1092413 (++!8718 lt!1092397 lt!1092431))))

(declare-fun lt!1092411 () Unit!50844)

(declare-fun lemmaConcatAssociativity!1772 (List!36387 List!36387 List!36387) Unit!50844)

(assert (=> b!3222366 (= lt!1092411 (lemmaConcatAssociativity!1772 lt!1092397 lt!1092412 lt!1092423))))

(declare-fun b!3222367 () Bool)

(declare-fun res!1312147 () Bool)

(assert (=> b!3222367 (=> res!1312147 e!2009400)))

(assert (=> b!3222367 (= res!1312147 (not (= (apply!8255 (_1!20979 lt!1092395) 0) (h!41685 (t!240586 tokens!494)))))))

(assert (=> b!3222368 (= e!2009390 (and tp!1015127 tp!1015118))))

(declare-fun b!3222369 () Bool)

(assert (=> b!3222369 (= e!2009399 false)))

(assert (= (and start!302634 res!1312148) b!3222365))

(assert (= (and b!3222365 res!1312139) b!3222352))

(assert (= (and b!3222352 res!1312128) b!3222364))

(assert (= (and b!3222364 res!1312136) b!3222356))

(assert (= (and b!3222356 res!1312152) b!3222363))

(assert (= (and b!3222363 res!1312135) b!3222337))

(assert (= (and b!3222337 res!1312141) b!3222333))

(assert (= (and b!3222333 res!1312130) b!3222332))

(assert (= (and b!3222332 res!1312149) b!3222349))

(assert (= (and b!3222349 (not res!1312125)) b!3222348))

(assert (= (and b!3222348 (not res!1312131)) b!3222335))

(assert (= (and b!3222335 (not res!1312145)) b!3222344))

(assert (= (and b!3222344 (not res!1312134)) b!3222331))

(assert (= (and b!3222331 (not res!1312143)) b!3222360))

(assert (= (and b!3222360 (not res!1312140)) b!3222328))

(assert (= (and b!3222328 (not res!1312144)) b!3222366))

(assert (= (and b!3222366 (not res!1312142)) b!3222357))

(assert (= (and b!3222357 res!1312124) b!3222340))

(assert (= (and b!3222340 res!1312127) b!3222346))

(assert (= (and b!3222357 res!1312133) b!3222338))

(assert (= (and b!3222338 res!1312150) b!3222342))

(assert (= (and b!3222357 c!541751) b!3222341))

(assert (= (and b!3222357 (not c!541751)) b!3222339))

(assert (= (and b!3222341 res!1312138) b!3222354))

(assert (= (and b!3222357 res!1312132) b!3222353))

(assert (= (and b!3222353 res!1312146) b!3222345))

(assert (= (and b!3222357 (not res!1312126)) b!3222367))

(assert (= (and b!3222367 (not res!1312147)) b!3222330))

(assert (= (and b!3222357 res!1312151) b!3222361))

(assert (= (and b!3222361 res!1312137) b!3222350))

(assert (= (and b!3222357 c!541750) b!3222351))

(assert (= (and b!3222357 (not c!541750)) b!3222355))

(assert (= (and b!3222351 res!1312129) b!3222369))

(assert (= b!3222343 b!3222329))

(assert (= b!3222327 b!3222343))

(assert (= (and start!302634 ((_ is Cons!36264) rules!2135)) b!3222327))

(assert (= b!3222336 b!3222368))

(assert (= b!3222362 b!3222336))

(assert (= b!3222358 b!3222362))

(assert (= (and start!302634 ((_ is Cons!36265) tokens!494)) b!3222358))

(assert (= b!3222347 b!3222334))

(assert (= b!3222359 b!3222347))

(assert (= start!302634 b!3222359))

(declare-fun m!3499645 () Bool)

(assert (=> b!3222361 m!3499645))

(declare-fun m!3499647 () Bool)

(assert (=> b!3222361 m!3499647))

(declare-fun m!3499649 () Bool)

(assert (=> b!3222337 m!3499649))

(declare-fun m!3499651 () Bool)

(assert (=> start!302634 m!3499651))

(declare-fun m!3499653 () Bool)

(assert (=> b!3222345 m!3499653))

(declare-fun m!3499655 () Bool)

(assert (=> b!3222352 m!3499655))

(declare-fun m!3499657 () Bool)

(assert (=> b!3222333 m!3499657))

(declare-fun m!3499659 () Bool)

(assert (=> b!3222364 m!3499659))

(assert (=> b!3222364 m!3499659))

(declare-fun m!3499661 () Bool)

(assert (=> b!3222364 m!3499661))

(declare-fun m!3499663 () Bool)

(assert (=> b!3222358 m!3499663))

(declare-fun m!3499665 () Bool)

(assert (=> b!3222344 m!3499665))

(declare-fun m!3499667 () Bool)

(assert (=> b!3222344 m!3499667))

(declare-fun m!3499669 () Bool)

(assert (=> b!3222344 m!3499669))

(declare-fun m!3499671 () Bool)

(assert (=> b!3222362 m!3499671))

(declare-fun m!3499673 () Bool)

(assert (=> b!3222365 m!3499673))

(declare-fun m!3499675 () Bool)

(assert (=> b!3222335 m!3499675))

(declare-fun m!3499677 () Bool)

(assert (=> b!3222336 m!3499677))

(declare-fun m!3499679 () Bool)

(assert (=> b!3222336 m!3499679))

(declare-fun m!3499681 () Bool)

(assert (=> b!3222328 m!3499681))

(assert (=> b!3222328 m!3499681))

(declare-fun m!3499683 () Bool)

(assert (=> b!3222328 m!3499683))

(declare-fun m!3499685 () Bool)

(assert (=> b!3222366 m!3499685))

(declare-fun m!3499687 () Bool)

(assert (=> b!3222366 m!3499687))

(declare-fun m!3499689 () Bool)

(assert (=> b!3222347 m!3499689))

(declare-fun m!3499691 () Bool)

(assert (=> b!3222347 m!3499691))

(declare-fun m!3499693 () Bool)

(assert (=> b!3222359 m!3499693))

(declare-fun m!3499695 () Bool)

(assert (=> b!3222349 m!3499695))

(declare-fun m!3499697 () Bool)

(assert (=> b!3222349 m!3499697))

(declare-fun m!3499699 () Bool)

(assert (=> b!3222349 m!3499699))

(declare-fun m!3499701 () Bool)

(assert (=> b!3222349 m!3499701))

(declare-fun m!3499703 () Bool)

(assert (=> b!3222349 m!3499703))

(declare-fun m!3499705 () Bool)

(assert (=> b!3222348 m!3499705))

(assert (=> b!3222348 m!3499705))

(declare-fun m!3499707 () Bool)

(assert (=> b!3222348 m!3499707))

(declare-fun m!3499709 () Bool)

(assert (=> b!3222351 m!3499709))

(declare-fun m!3499711 () Bool)

(assert (=> b!3222351 m!3499711))

(declare-fun m!3499713 () Bool)

(assert (=> b!3222331 m!3499713))

(declare-fun m!3499715 () Bool)

(assert (=> b!3222331 m!3499715))

(declare-fun m!3499717 () Bool)

(assert (=> b!3222367 m!3499717))

(declare-fun m!3499719 () Bool)

(assert (=> b!3222343 m!3499719))

(declare-fun m!3499721 () Bool)

(assert (=> b!3222343 m!3499721))

(declare-fun m!3499723 () Bool)

(assert (=> b!3222360 m!3499723))

(declare-fun m!3499725 () Bool)

(assert (=> b!3222360 m!3499725))

(declare-fun m!3499727 () Bool)

(assert (=> b!3222360 m!3499727))

(declare-fun m!3499729 () Bool)

(assert (=> b!3222360 m!3499729))

(assert (=> b!3222360 m!3499723))

(declare-fun m!3499731 () Bool)

(assert (=> b!3222360 m!3499731))

(declare-fun m!3499733 () Bool)

(assert (=> b!3222360 m!3499733))

(declare-fun m!3499735 () Bool)

(assert (=> b!3222360 m!3499735))

(assert (=> b!3222360 m!3499725))

(declare-fun m!3499737 () Bool)

(assert (=> b!3222360 m!3499737))

(declare-fun m!3499739 () Bool)

(assert (=> b!3222360 m!3499739))

(assert (=> b!3222360 m!3499733))

(assert (=> b!3222360 m!3499735))

(declare-fun m!3499741 () Bool)

(assert (=> b!3222360 m!3499741))

(declare-fun m!3499743 () Bool)

(assert (=> b!3222353 m!3499743))

(declare-fun m!3499745 () Bool)

(assert (=> b!3222356 m!3499745))

(declare-fun m!3499747 () Bool)

(assert (=> b!3222338 m!3499747))

(declare-fun m!3499749 () Bool)

(assert (=> b!3222338 m!3499749))

(declare-fun m!3499751 () Bool)

(assert (=> b!3222330 m!3499751))

(declare-fun m!3499753 () Bool)

(assert (=> b!3222341 m!3499753))

(declare-fun m!3499755 () Bool)

(assert (=> b!3222341 m!3499755))

(declare-fun m!3499757 () Bool)

(assert (=> b!3222357 m!3499757))

(declare-fun m!3499759 () Bool)

(assert (=> b!3222357 m!3499759))

(declare-fun m!3499761 () Bool)

(assert (=> b!3222357 m!3499761))

(declare-fun m!3499763 () Bool)

(assert (=> b!3222357 m!3499763))

(declare-fun m!3499765 () Bool)

(assert (=> b!3222357 m!3499765))

(declare-fun m!3499767 () Bool)

(assert (=> b!3222357 m!3499767))

(declare-fun m!3499769 () Bool)

(assert (=> b!3222357 m!3499769))

(declare-fun m!3499771 () Bool)

(assert (=> b!3222357 m!3499771))

(declare-fun m!3499773 () Bool)

(assert (=> b!3222357 m!3499773))

(declare-fun m!3499775 () Bool)

(assert (=> b!3222357 m!3499775))

(declare-fun m!3499777 () Bool)

(assert (=> b!3222357 m!3499777))

(declare-fun m!3499779 () Bool)

(assert (=> b!3222357 m!3499779))

(declare-fun m!3499781 () Bool)

(assert (=> b!3222357 m!3499781))

(declare-fun m!3499783 () Bool)

(assert (=> b!3222357 m!3499783))

(assert (=> b!3222357 m!3499777))

(declare-fun m!3499785 () Bool)

(assert (=> b!3222357 m!3499785))

(declare-fun m!3499787 () Bool)

(assert (=> b!3222357 m!3499787))

(declare-fun m!3499789 () Bool)

(assert (=> b!3222357 m!3499789))

(declare-fun m!3499791 () Bool)

(assert (=> b!3222357 m!3499791))

(assert (=> b!3222357 m!3499765))

(declare-fun m!3499793 () Bool)

(assert (=> b!3222357 m!3499793))

(declare-fun m!3499795 () Bool)

(assert (=> b!3222357 m!3499795))

(declare-fun m!3499797 () Bool)

(assert (=> b!3222357 m!3499797))

(declare-fun m!3499799 () Bool)

(assert (=> b!3222357 m!3499799))

(declare-fun m!3499801 () Bool)

(assert (=> b!3222357 m!3499801))

(declare-fun m!3499803 () Bool)

(assert (=> b!3222357 m!3499803))

(declare-fun m!3499805 () Bool)

(assert (=> b!3222357 m!3499805))

(declare-fun m!3499807 () Bool)

(assert (=> b!3222357 m!3499807))

(declare-fun m!3499809 () Bool)

(assert (=> b!3222357 m!3499809))

(declare-fun m!3499811 () Bool)

(assert (=> b!3222357 m!3499811))

(declare-fun m!3499813 () Bool)

(assert (=> b!3222357 m!3499813))

(declare-fun m!3499815 () Bool)

(assert (=> b!3222357 m!3499815))

(declare-fun m!3499817 () Bool)

(assert (=> b!3222357 m!3499817))

(declare-fun m!3499819 () Bool)

(assert (=> b!3222357 m!3499819))

(assert (=> b!3222357 m!3499767))

(declare-fun m!3499821 () Bool)

(assert (=> b!3222357 m!3499821))

(declare-fun m!3499823 () Bool)

(assert (=> b!3222357 m!3499823))

(declare-fun m!3499825 () Bool)

(assert (=> b!3222357 m!3499825))

(assert (=> b!3222357 m!3499811))

(declare-fun m!3499827 () Bool)

(assert (=> b!3222357 m!3499827))

(declare-fun m!3499829 () Bool)

(assert (=> b!3222357 m!3499829))

(declare-fun m!3499831 () Bool)

(assert (=> b!3222357 m!3499831))

(declare-fun m!3499833 () Bool)

(assert (=> b!3222357 m!3499833))

(declare-fun m!3499835 () Bool)

(assert (=> b!3222357 m!3499835))

(declare-fun m!3499837 () Bool)

(assert (=> b!3222357 m!3499837))

(declare-fun m!3499839 () Bool)

(assert (=> b!3222357 m!3499839))

(declare-fun m!3499841 () Bool)

(assert (=> b!3222357 m!3499841))

(declare-fun m!3499843 () Bool)

(assert (=> b!3222357 m!3499843))

(declare-fun m!3499845 () Bool)

(assert (=> b!3222357 m!3499845))

(declare-fun m!3499847 () Bool)

(assert (=> b!3222357 m!3499847))

(declare-fun m!3499849 () Bool)

(assert (=> b!3222357 m!3499849))

(declare-fun m!3499851 () Bool)

(assert (=> b!3222357 m!3499851))

(declare-fun m!3499853 () Bool)

(assert (=> b!3222357 m!3499853))

(declare-fun m!3499855 () Bool)

(assert (=> b!3222357 m!3499855))

(declare-fun m!3499857 () Bool)

(assert (=> b!3222357 m!3499857))

(declare-fun m!3499859 () Bool)

(assert (=> b!3222357 m!3499859))

(assert (=> b!3222357 m!3499805))

(assert (=> b!3222357 m!3499855))

(declare-fun m!3499861 () Bool)

(assert (=> b!3222357 m!3499861))

(declare-fun m!3499863 () Bool)

(assert (=> b!3222340 m!3499863))

(declare-fun m!3499865 () Bool)

(assert (=> b!3222340 m!3499865))

(check-sat (not b_next!86447) (not b!3222361) (not b_next!86441) (not start!302634) (not b!3222335) (not b!3222336) (not b!3222378) (not b!3222341) (not b!3222337) (not b!3222352) (not b!3222344) (not b!3222333) b_and!215439 b_and!215445 (not b!3222356) (not b!3222360) b_and!215449 (not b!3222365) (not b!3222367) (not b!3222351) (not b_next!86451) b_and!215443 b_and!215441 (not b!3222353) (not b!3222340) (not b_next!86449) (not b!3222345) (not b_next!86443) (not b!3222330) (not b!3222357) b_and!215447 (not b!3222364) (not b!3222328) (not b!3222343) (not b!3222358) (not b!3222347) (not b_next!86445) (not b!3222348) (not b!3222327) (not b!3222349) (not b!3222362) (not b!3222338) (not b!3222359) (not b!3222331) (not b!3222366))
(check-sat (not b_next!86447) (not b_next!86441) b_and!215449 (not b_next!86451) (not b_next!86449) (not b_next!86445) b_and!215439 b_and!215445 b_and!215443 b_and!215441 (not b_next!86443) b_and!215447)
