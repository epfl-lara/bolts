; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124618 () Bool)

(assert start!124618)

(declare-fun b!1376941 () Bool)

(declare-fun b_free!33347 () Bool)

(declare-fun b_next!34051 () Bool)

(assert (=> b!1376941 (= b_free!33347 (not b_next!34051))))

(declare-fun tp!394705 () Bool)

(declare-fun b_and!92227 () Bool)

(assert (=> b!1376941 (= tp!394705 b_and!92227)))

(declare-fun b_free!33349 () Bool)

(declare-fun b_next!34053 () Bool)

(assert (=> b!1376941 (= b_free!33349 (not b_next!34053))))

(declare-fun tp!394701 () Bool)

(declare-fun b_and!92229 () Bool)

(assert (=> b!1376941 (= tp!394701 b_and!92229)))

(declare-fun b!1376953 () Bool)

(declare-fun b_free!33351 () Bool)

(declare-fun b_next!34055 () Bool)

(assert (=> b!1376953 (= b_free!33351 (not b_next!34055))))

(declare-fun tp!394702 () Bool)

(declare-fun b_and!92231 () Bool)

(assert (=> b!1376953 (= tp!394702 b_and!92231)))

(declare-fun b_free!33353 () Bool)

(declare-fun b_next!34057 () Bool)

(assert (=> b!1376953 (= b_free!33353 (not b_next!34057))))

(declare-fun tp!394699 () Bool)

(declare-fun b_and!92233 () Bool)

(assert (=> b!1376953 (= tp!394699 b_and!92233)))

(declare-fun b!1376939 () Bool)

(declare-fun b_free!33355 () Bool)

(declare-fun b_next!34059 () Bool)

(assert (=> b!1376939 (= b_free!33355 (not b_next!34059))))

(declare-fun tp!394698 () Bool)

(declare-fun b_and!92235 () Bool)

(assert (=> b!1376939 (= tp!394698 b_and!92235)))

(declare-fun b_free!33357 () Bool)

(declare-fun b_next!34061 () Bool)

(assert (=> b!1376939 (= b_free!33357 (not b_next!34061))))

(declare-fun tp!394697 () Bool)

(declare-fun b_and!92237 () Bool)

(assert (=> b!1376939 (= tp!394697 b_and!92237)))

(declare-fun b!1376964 () Bool)

(assert (=> b!1376964 true))

(assert (=> b!1376964 true))

(declare-fun b!1376929 () Bool)

(assert (=> b!1376929 true))

(declare-fun b!1376931 () Bool)

(assert (=> b!1376931 true))

(declare-fun bs!336328 () Bool)

(declare-fun b!1376973 () Bool)

(assert (= bs!336328 (and b!1376973 b!1376931)))

(declare-fun lambda!58731 () Int)

(declare-fun lambda!58730 () Int)

(assert (=> bs!336328 (not (= lambda!58731 lambda!58730))))

(assert (=> b!1376973 true))

(declare-fun b!1376927 () Bool)

(declare-fun res!620620 () Bool)

(declare-fun e!879900 () Bool)

(assert (=> b!1376927 (=> res!620620 e!879900)))

(declare-datatypes ((List!14002 0))(
  ( (Nil!13936) (Cons!13936 (h!19337 (_ BitVec 16)) (t!121815 List!14002)) )
))
(declare-datatypes ((TokenValue!2503 0))(
  ( (FloatLiteralValue!5006 (text!17966 List!14002)) (TokenValueExt!2502 (__x!8835 Int)) (Broken!12515 (value!78377 List!14002)) (Object!2568) (End!2503) (Def!2503) (Underscore!2503) (Match!2503) (Else!2503) (Error!2503) (Case!2503) (If!2503) (Extends!2503) (Abstract!2503) (Class!2503) (Val!2503) (DelimiterValue!5006 (del!2563 List!14002)) (KeywordValue!2509 (value!78378 List!14002)) (CommentValue!5006 (value!78379 List!14002)) (WhitespaceValue!5006 (value!78380 List!14002)) (IndentationValue!2503 (value!78381 List!14002)) (String!16750) (Int32!2503) (Broken!12516 (value!78382 List!14002)) (Boolean!2504) (Unit!20186) (OperatorValue!2506 (op!2563 List!14002)) (IdentifierValue!5006 (value!78383 List!14002)) (IdentifierValue!5007 (value!78384 List!14002)) (WhitespaceValue!5007 (value!78385 List!14002)) (True!5006) (False!5006) (Broken!12517 (value!78386 List!14002)) (Broken!12518 (value!78387 List!14002)) (True!5007) (RightBrace!2503) (RightBracket!2503) (Colon!2503) (Null!2503) (Comma!2503) (LeftBracket!2503) (False!5007) (LeftBrace!2503) (ImaginaryLiteralValue!2503 (text!17967 List!14002)) (StringLiteralValue!7509 (value!78388 List!14002)) (EOFValue!2503 (value!78389 List!14002)) (IdentValue!2503 (value!78390 List!14002)) (DelimiterValue!5007 (value!78391 List!14002)) (DedentValue!2503 (value!78392 List!14002)) (NewLineValue!2503 (value!78393 List!14002)) (IntegerValue!7509 (value!78394 (_ BitVec 32)) (text!17968 List!14002)) (IntegerValue!7510 (value!78395 Int) (text!17969 List!14002)) (Times!2503) (Or!2503) (Equal!2503) (Minus!2503) (Broken!12519 (value!78396 List!14002)) (And!2503) (Div!2503) (LessEqual!2503) (Mod!2503) (Concat!6230) (Not!2503) (Plus!2503) (SpaceValue!2503 (value!78397 List!14002)) (IntegerValue!7511 (value!78398 Int) (text!17970 List!14002)) (StringLiteralValue!7510 (text!17971 List!14002)) (FloatLiteralValue!5007 (text!17972 List!14002)) (BytesLiteralValue!2503 (value!78399 List!14002)) (CommentValue!5007 (value!78400 List!14002)) (StringLiteralValue!7511 (value!78401 List!14002)) (ErrorTokenValue!2503 (msg!2564 List!14002)) )
))
(declare-datatypes ((String!16751 0))(
  ( (String!16752 (value!78402 String)) )
))
(declare-datatypes ((C!7744 0))(
  ( (C!7745 (val!4432 Int)) )
))
(declare-datatypes ((List!14003 0))(
  ( (Nil!13937) (Cons!13937 (h!19338 C!7744) (t!121816 List!14003)) )
))
(declare-datatypes ((IArray!9181 0))(
  ( (IArray!9182 (innerList!4648 List!14003)) )
))
(declare-datatypes ((Conc!4588 0))(
  ( (Node!4588 (left!11920 Conc!4588) (right!12250 Conc!4588) (csize!9406 Int) (cheight!4799 Int)) (Leaf!6991 (xs!7315 IArray!9181) (csize!9407 Int)) (Empty!4588) )
))
(declare-datatypes ((BalanceConc!9116 0))(
  ( (BalanceConc!9117 (c!226682 Conc!4588)) )
))
(declare-datatypes ((Regex!3727 0))(
  ( (ElementMatch!3727 (c!226683 C!7744)) (Concat!6231 (regOne!7966 Regex!3727) (regTwo!7966 Regex!3727)) (EmptyExpr!3727) (Star!3727 (reg!4056 Regex!3727)) (EmptyLang!3727) (Union!3727 (regOne!7967 Regex!3727) (regTwo!7967 Regex!3727)) )
))
(declare-datatypes ((TokenValueInjection!4666 0))(
  ( (TokenValueInjection!4667 (toValue!3688 Int) (toChars!3547 Int)) )
))
(declare-datatypes ((Rule!4626 0))(
  ( (Rule!4627 (regex!2413 Regex!3727) (tag!2675 String!16751) (isSeparator!2413 Bool) (transformation!2413 TokenValueInjection!4666)) )
))
(declare-datatypes ((Token!4488 0))(
  ( (Token!4489 (value!78403 TokenValue!2503) (rule!4172 Rule!4626) (size!11435 Int) (originalCharacters!3275 List!14003)) )
))
(declare-datatypes ((List!14004 0))(
  ( (Nil!13938) (Cons!13938 (h!19339 Token!4488) (t!121817 List!14004)) )
))
(declare-datatypes ((IArray!9183 0))(
  ( (IArray!9184 (innerList!4649 List!14004)) )
))
(declare-datatypes ((Conc!4589 0))(
  ( (Node!4589 (left!11921 Conc!4589) (right!12251 Conc!4589) (csize!9408 Int) (cheight!4800 Int)) (Leaf!6992 (xs!7316 IArray!9183) (csize!9409 Int)) (Empty!4589) )
))
(declare-datatypes ((BalanceConc!9118 0))(
  ( (BalanceConc!9119 (c!226684 Conc!4589)) )
))
(declare-datatypes ((tuple2!13550 0))(
  ( (tuple2!13551 (_1!7661 BalanceConc!9118) (_2!7661 BalanceConc!9116)) )
))
(declare-fun lt!457680 () tuple2!13550)

(declare-fun isEmpty!8414 (BalanceConc!9116) Bool)

(assert (=> b!1376927 (= res!620620 (not (isEmpty!8414 (_2!7661 lt!457680))))))

(declare-fun b!1376928 () Bool)

(declare-fun res!620627 () Bool)

(declare-fun e!879906 () Bool)

(assert (=> b!1376928 (=> res!620627 e!879906)))

(declare-fun lt!457676 () List!14003)

(declare-fun lt!457696 () C!7744)

(declare-fun contains!2627 (List!14003 C!7744) Bool)

(assert (=> b!1376928 (= res!620627 (not (contains!2627 lt!457676 lt!457696)))))

(declare-fun e!879912 () Bool)

(assert (=> b!1376929 (= e!879906 e!879912)))

(declare-fun res!620632 () Bool)

(assert (=> b!1376929 (=> res!620632 e!879912)))

(declare-fun lambda!58728 () Int)

(declare-datatypes ((List!14005 0))(
  ( (Nil!13939) (Cons!13939 (h!19340 Rule!4626) (t!121818 List!14005)) )
))
(declare-fun rules!2550 () List!14005)

(declare-fun lambda!58729 () Int)

(declare-datatypes ((List!14006 0))(
  ( (Nil!13940) (Cons!13940 (h!19341 Regex!3727) (t!121819 List!14006)) )
))
(declare-fun exists!484 (List!14006 Int) Bool)

(declare-fun map!3080 (List!14005 Int) List!14006)

(assert (=> b!1376929 (= res!620632 (not (exists!484 (map!3080 rules!2550 lambda!58728) lambda!58729)))))

(declare-fun lt!457697 () List!14006)

(assert (=> b!1376929 (exists!484 lt!457697 lambda!58729)))

(declare-datatypes ((Unit!20187 0))(
  ( (Unit!20188) )
))
(declare-fun lt!457679 () Unit!20187)

(declare-fun lt!457686 () List!14003)

(declare-fun lt!457685 () Regex!3727)

(declare-fun matchRGenUnionSpec!144 (Regex!3727 List!14006 List!14003) Unit!20187)

(assert (=> b!1376929 (= lt!457679 (matchRGenUnionSpec!144 lt!457685 lt!457697 lt!457686))))

(assert (=> b!1376929 (= lt!457697 (map!3080 rules!2550 lambda!58728))))

(declare-fun b!1376930 () Bool)

(declare-fun e!879887 () Bool)

(declare-fun e!879890 () Bool)

(assert (=> b!1376930 (= e!879887 e!879890)))

(declare-fun res!620612 () Bool)

(assert (=> b!1376930 (=> res!620612 e!879890)))

(declare-fun lt!457677 () Bool)

(assert (=> b!1376930 (= res!620612 lt!457677)))

(declare-fun lt!457700 () Unit!20187)

(declare-fun e!879883 () Unit!20187)

(assert (=> b!1376930 (= lt!457700 e!879883)))

(declare-fun c!226680 () Bool)

(assert (=> b!1376930 (= c!226680 lt!457677)))

(declare-fun t1!34 () Token!4488)

(declare-fun lt!457688 () C!7744)

(declare-fun usedCharacters!232 (Regex!3727) List!14003)

(assert (=> b!1376930 (= lt!457677 (not (contains!2627 (usedCharacters!232 (regex!2413 (rule!4172 t1!34))) lt!457688)))))

(declare-fun e!879884 () Bool)

(declare-fun e!879902 () Bool)

(assert (=> b!1376931 (= e!879884 e!879902)))

(declare-fun res!620610 () Bool)

(assert (=> b!1376931 (=> res!620610 e!879902)))

(declare-fun exists!485 (List!14005 Int) Bool)

(assert (=> b!1376931 (= res!620610 (not (exists!485 rules!2550 lambda!58730)))))

(assert (=> b!1376931 (exists!485 rules!2550 lambda!58730)))

(declare-fun lt!457703 () Regex!3727)

(declare-fun lt!457694 () Unit!20187)

(declare-fun lemmaMapContains!132 (List!14005 Int Regex!3727) Unit!20187)

(assert (=> b!1376931 (= lt!457694 (lemmaMapContains!132 rules!2550 lambda!58728 lt!457703))))

(declare-fun b!1376932 () Bool)

(declare-fun e!879908 () Bool)

(declare-fun e!879907 () Bool)

(assert (=> b!1376932 (= e!879908 e!879907)))

(declare-fun res!620638 () Bool)

(assert (=> b!1376932 (=> res!620638 e!879907)))

(declare-fun lt!457690 () Rule!4626)

(assert (=> b!1376932 (= res!620638 (or (not (isSeparator!2413 lt!457690)) (not (isSeparator!2413 (rule!4172 t1!34)))))))

(assert (=> b!1376932 (= (regex!2413 lt!457690) lt!457703)))

(declare-fun b!1376933 () Bool)

(declare-fun res!620623 () Bool)

(declare-fun e!879910 () Bool)

(assert (=> b!1376933 (=> (not res!620623) (not e!879910))))

(declare-fun t2!34 () Token!4488)

(assert (=> b!1376933 (= res!620623 (not (= (isSeparator!2413 (rule!4172 t1!34)) (isSeparator!2413 (rule!4172 t2!34)))))))

(declare-fun b!1376934 () Bool)

(declare-fun res!620621 () Bool)

(assert (=> b!1376934 (=> res!620621 e!879900)))

(declare-datatypes ((LexerInterface!2108 0))(
  ( (LexerInterfaceExt!2105 (__x!8836 Int)) (Lexer!2106) )
))
(declare-fun thiss!19762 () LexerInterface!2108)

(declare-fun lt!457678 () BalanceConc!9116)

(declare-fun lt!457698 () List!14004)

(declare-datatypes ((tuple2!13552 0))(
  ( (tuple2!13553 (_1!7662 List!14004) (_2!7662 List!14003)) )
))
(declare-fun lexList!626 (LexerInterface!2108 List!14005 List!14003) tuple2!13552)

(declare-fun list!5382 (BalanceConc!9116) List!14003)

(assert (=> b!1376934 (= res!620621 (not (= (lexList!626 thiss!19762 rules!2550 (list!5382 lt!457678)) (tuple2!13553 lt!457698 Nil!13937))))))

(declare-fun b!1376935 () Bool)

(declare-fun res!620618 () Bool)

(declare-fun e!879892 () Bool)

(assert (=> b!1376935 (=> res!620618 e!879892)))

(declare-fun lt!457684 () tuple2!13550)

(assert (=> b!1376935 (= res!620618 (not (isEmpty!8414 (_2!7661 lt!457684))))))

(declare-fun b!1376936 () Bool)

(declare-fun res!620635 () Bool)

(assert (=> b!1376936 (=> res!620635 e!879892)))

(declare-fun lt!457693 () List!14003)

(declare-datatypes ((tuple2!13554 0))(
  ( (tuple2!13555 (_1!7663 Token!4488) (_2!7663 List!14003)) )
))
(declare-datatypes ((Option!2680 0))(
  ( (None!2679) (Some!2679 (v!21509 tuple2!13554)) )
))
(declare-fun maxPrefix!1090 (LexerInterface!2108 List!14005 List!14003) Option!2680)

(assert (=> b!1376936 (= res!620635 (not (= (maxPrefix!1090 thiss!19762 rules!2550 lt!457693) (Some!2679 (tuple2!13555 t1!34 Nil!13937)))))))

(declare-fun b!1376937 () Bool)

(declare-fun e!879913 () Bool)

(assert (=> b!1376937 (= e!879910 e!879913)))

(declare-fun res!620614 () Bool)

(assert (=> b!1376937 (=> (not res!620614) (not e!879913))))

(declare-fun lt!457681 () BalanceConc!9116)

(declare-fun size!11436 (BalanceConc!9116) Int)

(assert (=> b!1376937 (= res!620614 (> (size!11436 lt!457681) 0))))

(declare-fun charsOf!1385 (Token!4488) BalanceConc!9116)

(assert (=> b!1376937 (= lt!457681 (charsOf!1385 t2!34))))

(declare-fun b!1376938 () Bool)

(declare-fun res!620619 () Bool)

(declare-fun e!879909 () Bool)

(assert (=> b!1376938 (=> res!620619 e!879909)))

(declare-fun contains!2628 (List!14005 Rule!4626) Bool)

(assert (=> b!1376938 (= res!620619 (not (contains!2628 rules!2550 lt!457690)))))

(declare-fun e!879886 () Bool)

(assert (=> b!1376939 (= e!879886 (and tp!394698 tp!394697))))

(declare-fun b!1376940 () Bool)

(assert (=> b!1376940 (= e!879902 e!879892)))

(declare-fun res!620639 () Bool)

(assert (=> b!1376940 (=> res!620639 e!879892)))

(declare-fun lt!457692 () List!14004)

(declare-fun list!5383 (BalanceConc!9118) List!14004)

(assert (=> b!1376940 (= res!620639 (not (= (list!5383 (_1!7661 lt!457684)) lt!457692)))))

(assert (=> b!1376940 (= lt!457692 (Cons!13938 t1!34 Nil!13938))))

(declare-fun lt!457699 () BalanceConc!9116)

(declare-fun lex!935 (LexerInterface!2108 List!14005 BalanceConc!9116) tuple2!13550)

(assert (=> b!1376940 (= lt!457684 (lex!935 thiss!19762 rules!2550 lt!457699))))

(declare-fun print!874 (LexerInterface!2108 BalanceConc!9118) BalanceConc!9116)

(declare-fun singletonSeq!1048 (Token!4488) BalanceConc!9118)

(assert (=> b!1376940 (= lt!457699 (print!874 thiss!19762 (singletonSeq!1048 t1!34)))))

(declare-fun getWitness!372 (List!14005 Int) Rule!4626)

(assert (=> b!1376940 (= lt!457690 (getWitness!372 rules!2550 lambda!58730))))

(declare-fun e!879893 () Bool)

(assert (=> b!1376941 (= e!879893 (and tp!394705 tp!394701))))

(declare-fun b!1376942 () Bool)

(declare-fun res!620636 () Bool)

(assert (=> b!1376942 (=> (not res!620636) (not e!879910))))

(declare-fun isEmpty!8415 (List!14005) Bool)

(assert (=> b!1376942 (= res!620636 (not (isEmpty!8415 rules!2550)))))

(declare-fun b!1376943 () Bool)

(declare-fun res!620622 () Bool)

(assert (=> b!1376943 (=> res!620622 e!879887)))

(declare-fun lt!457687 () List!14003)

(declare-fun matchR!1720 (Regex!3727 List!14003) Bool)

(assert (=> b!1376943 (= res!620622 (not (matchR!1720 (regex!2413 (rule!4172 t2!34)) lt!457687)))))

(declare-fun b!1376944 () Bool)

(declare-fun res!620640 () Bool)

(assert (=> b!1376944 (=> (not res!620640) (not e!879910))))

(declare-fun rulesProduceIndividualToken!1077 (LexerInterface!2108 List!14005 Token!4488) Bool)

(assert (=> b!1376944 (= res!620640 (rulesProduceIndividualToken!1077 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1376945 () Bool)

(assert (=> b!1376945 (= e!879912 e!879884)))

(declare-fun res!620611 () Bool)

(assert (=> b!1376945 (=> res!620611 e!879884)))

(declare-fun contains!2629 (List!14006 Regex!3727) Bool)

(assert (=> b!1376945 (= res!620611 (not (contains!2629 (map!3080 rules!2550 lambda!58728) lt!457703)))))

(declare-fun getWitness!373 (List!14006 Int) Regex!3727)

(assert (=> b!1376945 (= lt!457703 (getWitness!373 (map!3080 rules!2550 lambda!58728) lambda!58729))))

(declare-fun b!1376946 () Bool)

(declare-fun res!620637 () Bool)

(assert (=> b!1376946 (=> res!620637 e!879906)))

(assert (=> b!1376946 (= res!620637 (not (contains!2627 lt!457686 lt!457696)))))

(declare-fun b!1376947 () Bool)

(declare-fun res!620613 () Bool)

(assert (=> b!1376947 (=> (not res!620613) (not e!879910))))

(assert (=> b!1376947 (= res!620613 (rulesProduceIndividualToken!1077 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1376948 () Bool)

(declare-fun res!620630 () Bool)

(assert (=> b!1376948 (=> res!620630 e!879906)))

(assert (=> b!1376948 (= res!620630 (not (contains!2627 lt!457686 lt!457688)))))

(declare-fun b!1376949 () Bool)

(declare-fun tp!394704 () Bool)

(declare-fun e!879891 () Bool)

(declare-fun inv!18289 (String!16751) Bool)

(declare-fun inv!18292 (TokenValueInjection!4666) Bool)

(assert (=> b!1376949 (= e!879891 (and tp!394704 (inv!18289 (tag!2675 (rule!4172 t1!34))) (inv!18292 (transformation!2413 (rule!4172 t1!34))) e!879886))))

(declare-fun b!1376950 () Bool)

(declare-fun Unit!20189 () Unit!20187)

(assert (=> b!1376950 (= e!879883 Unit!20189)))

(declare-fun lt!457702 () Unit!20187)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!172 (Regex!3727 List!14003 C!7744) Unit!20187)

(declare-fun head!2487 (List!14003) C!7744)

(assert (=> b!1376950 (= lt!457702 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!172 (regex!2413 (rule!4172 t1!34)) lt!457693 (head!2487 lt!457693)))))

(assert (=> b!1376950 false))

(declare-fun b!1376951 () Bool)

(assert (=> b!1376951 (= e!879890 e!879908)))

(declare-fun res!620617 () Bool)

(assert (=> b!1376951 (=> res!620617 e!879908)))

(declare-fun lt!457704 () Bool)

(assert (=> b!1376951 (= res!620617 lt!457704)))

(declare-fun lt!457689 () Unit!20187)

(declare-fun e!879899 () Unit!20187)

(assert (=> b!1376951 (= lt!457689 e!879899)))

(declare-fun c!226681 () Bool)

(assert (=> b!1376951 (= c!226681 lt!457704)))

(assert (=> b!1376951 (= lt!457704 (not (contains!2627 (usedCharacters!232 (regex!2413 (rule!4172 t2!34))) lt!457696)))))

(declare-fun b!1376952 () Bool)

(declare-fun Unit!20190 () Unit!20187)

(assert (=> b!1376952 (= e!879883 Unit!20190)))

(declare-fun e!879903 () Bool)

(assert (=> b!1376953 (= e!879903 (and tp!394702 tp!394699))))

(declare-fun b!1376954 () Bool)

(declare-fun res!620616 () Bool)

(assert (=> b!1376954 (=> (not res!620616) (not e!879913))))

(declare-fun sepAndNonSepRulesDisjointChars!786 (List!14005 List!14005) Bool)

(assert (=> b!1376954 (= res!620616 (sepAndNonSepRulesDisjointChars!786 rules!2550 rules!2550))))

(declare-fun res!620609 () Bool)

(assert (=> start!124618 (=> (not res!620609) (not e!879910))))

(get-info :version)

(assert (=> start!124618 (= res!620609 ((_ is Lexer!2106) thiss!19762))))

(assert (=> start!124618 e!879910))

(assert (=> start!124618 true))

(declare-fun e!879885 () Bool)

(assert (=> start!124618 e!879885))

(declare-fun e!879889 () Bool)

(declare-fun inv!18293 (Token!4488) Bool)

(assert (=> start!124618 (and (inv!18293 t1!34) e!879889)))

(declare-fun e!879894 () Bool)

(assert (=> start!124618 (and (inv!18293 t2!34) e!879894)))

(declare-fun b!1376955 () Bool)

(declare-fun Unit!20191 () Unit!20187)

(assert (=> b!1376955 (= e!879899 Unit!20191)))

(declare-fun lt!457675 () Unit!20187)

(assert (=> b!1376955 (= lt!457675 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!172 (regex!2413 (rule!4172 t2!34)) lt!457687 (head!2487 lt!457687)))))

(assert (=> b!1376955 false))

(declare-fun b!1376956 () Bool)

(declare-fun e!879895 () Bool)

(declare-fun tp!394703 () Bool)

(assert (=> b!1376956 (= e!879885 (and e!879895 tp!394703))))

(declare-fun tp!394708 () Bool)

(declare-fun b!1376957 () Bool)

(declare-fun inv!21 (TokenValue!2503) Bool)

(assert (=> b!1376957 (= e!879889 (and (inv!21 (value!78403 t1!34)) e!879891 tp!394708))))

(declare-fun b!1376958 () Bool)

(declare-fun Unit!20192 () Unit!20187)

(assert (=> b!1376958 (= e!879899 Unit!20192)))

(declare-fun tp!394700 () Bool)

(declare-fun b!1376959 () Bool)

(assert (=> b!1376959 (= e!879895 (and tp!394700 (inv!18289 (tag!2675 (h!19340 rules!2550))) (inv!18292 (transformation!2413 (h!19340 rules!2550))) e!879903))))

(declare-fun b!1376960 () Bool)

(assert (=> b!1376960 (= e!879892 e!879900)))

(declare-fun res!620628 () Bool)

(assert (=> b!1376960 (=> res!620628 e!879900)))

(assert (=> b!1376960 (= res!620628 (not (= (list!5383 (_1!7661 lt!457680)) lt!457698)))))

(assert (=> b!1376960 (= lt!457698 (Cons!13938 t2!34 Nil!13938))))

(assert (=> b!1376960 (= lt!457680 (lex!935 thiss!19762 rules!2550 lt!457678))))

(assert (=> b!1376960 (= lt!457678 (print!874 thiss!19762 (singletonSeq!1048 t2!34)))))

(declare-fun b!1376961 () Bool)

(assert (=> b!1376961 (= e!879900 e!879909)))

(declare-fun res!620641 () Bool)

(assert (=> b!1376961 (=> res!620641 e!879909)))

(assert (=> b!1376961 (= res!620641 (not (= (maxPrefix!1090 thiss!19762 rules!2550 lt!457687) (Some!2679 (tuple2!13555 t2!34 Nil!13937)))))))

(assert (=> b!1376961 (= lt!457687 (list!5382 lt!457681))))

(declare-fun b!1376962 () Bool)

(declare-fun e!879911 () Bool)

(declare-fun e!879888 () Bool)

(assert (=> b!1376962 (= e!879911 e!879888)))

(declare-fun res!620634 () Bool)

(assert (=> b!1376962 (=> res!620634 e!879888)))

(declare-fun ++!3610 (List!14003 List!14003) List!14003)

(declare-fun getSuffix!575 (List!14003 List!14003) List!14003)

(assert (=> b!1376962 (= res!620634 (not (= lt!457686 (++!3610 lt!457676 (getSuffix!575 lt!457686 lt!457676)))))))

(declare-fun lambda!58727 () Int)

(declare-fun pickWitness!182 (Int) List!14003)

(assert (=> b!1376962 (= lt!457686 (pickWitness!182 lambda!58727))))

(declare-fun b!1376963 () Bool)

(assert (=> b!1376963 (= e!879888 e!879906)))

(declare-fun res!620631 () Bool)

(assert (=> b!1376963 (=> res!620631 e!879906)))

(assert (=> b!1376963 (= res!620631 (not (contains!2627 lt!457676 lt!457688)))))

(declare-fun lt!457674 () BalanceConc!9116)

(declare-fun apply!3443 (BalanceConc!9116 Int) C!7744)

(assert (=> b!1376963 (= lt!457688 (apply!3443 lt!457674 0))))

(declare-fun e!879904 () Bool)

(assert (=> b!1376964 (= e!879904 (not e!879911))))

(declare-fun res!620608 () Bool)

(assert (=> b!1376964 (=> res!620608 e!879911)))

(declare-fun Exists!879 (Int) Bool)

(assert (=> b!1376964 (= res!620608 (not (Exists!879 lambda!58727)))))

(assert (=> b!1376964 (Exists!879 lambda!58727)))

(declare-fun lt!457682 () Unit!20187)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!197 (Regex!3727 List!14003) Unit!20187)

(assert (=> b!1376964 (= lt!457682 (lemmaPrefixMatchThenExistsStringThatMatches!197 lt!457685 lt!457676))))

(declare-fun b!1376965 () Bool)

(declare-fun res!620629 () Bool)

(assert (=> b!1376965 (=> (not res!620629) (not e!879913))))

(declare-fun separableTokensPredicate!391 (LexerInterface!2108 Token!4488 Token!4488 List!14005) Bool)

(assert (=> b!1376965 (= res!620629 (not (separableTokensPredicate!391 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1376966 () Bool)

(declare-fun res!620625 () Bool)

(assert (=> b!1376966 (=> res!620625 e!879892)))

(assert (=> b!1376966 (= res!620625 (not (contains!2628 rules!2550 (rule!4172 t1!34))))))

(declare-fun b!1376967 () Bool)

(assert (=> b!1376967 (= e!879907 true)))

(assert (=> b!1376967 (not (contains!2627 (usedCharacters!232 (regex!2413 lt!457690)) lt!457696))))

(declare-fun lt!457683 () Unit!20187)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!120 (LexerInterface!2108 List!14005 List!14005 Rule!4626 Rule!4626 C!7744) Unit!20187)

(assert (=> b!1376967 (= lt!457683 (lemmaSepRuleNotContainsCharContainedInANonSepRule!120 thiss!19762 rules!2550 rules!2550 (rule!4172 t2!34) lt!457690 lt!457696))))

(declare-fun b!1376968 () Bool)

(assert (=> b!1376968 (= e!879913 e!879904)))

(declare-fun res!620633 () Bool)

(assert (=> b!1376968 (=> (not res!620633) (not e!879904))))

(declare-fun prefixMatch!236 (Regex!3727 List!14003) Bool)

(assert (=> b!1376968 (= res!620633 (prefixMatch!236 lt!457685 lt!457676))))

(declare-fun rulesRegex!296 (LexerInterface!2108 List!14005) Regex!3727)

(assert (=> b!1376968 (= lt!457685 (rulesRegex!296 thiss!19762 rules!2550))))

(assert (=> b!1376968 (= lt!457676 (++!3610 lt!457693 (Cons!13937 lt!457696 Nil!13937)))))

(assert (=> b!1376968 (= lt!457696 (apply!3443 lt!457681 0))))

(assert (=> b!1376968 (= lt!457693 (list!5382 lt!457674))))

(assert (=> b!1376968 (= lt!457674 (charsOf!1385 t1!34))))

(declare-fun tp!394707 () Bool)

(declare-fun b!1376969 () Bool)

(declare-fun e!879896 () Bool)

(assert (=> b!1376969 (= e!879894 (and (inv!21 (value!78403 t2!34)) e!879896 tp!394707))))

(declare-fun b!1376970 () Bool)

(declare-fun res!620642 () Bool)

(assert (=> b!1376970 (=> res!620642 e!879906)))

(assert (=> b!1376970 (= res!620642 (not (matchR!1720 lt!457685 lt!457686)))))

(declare-fun b!1376971 () Bool)

(declare-fun res!620624 () Bool)

(assert (=> b!1376971 (=> (not res!620624) (not e!879910))))

(declare-fun rulesInvariant!1978 (LexerInterface!2108 List!14005) Bool)

(assert (=> b!1376971 (= res!620624 (rulesInvariant!1978 thiss!19762 rules!2550))))

(declare-fun b!1376972 () Bool)

(declare-fun res!620643 () Bool)

(assert (=> b!1376972 (=> res!620643 e!879909)))

(assert (=> b!1376972 (= res!620643 (not (contains!2628 rules!2550 (rule!4172 t2!34))))))

(assert (=> b!1376973 (= e!879909 e!879887)))

(declare-fun res!620626 () Bool)

(assert (=> b!1376973 (=> res!620626 e!879887)))

(assert (=> b!1376973 (= res!620626 (not (matchR!1720 (regex!2413 (rule!4172 t1!34)) lt!457693)))))

(declare-fun lt!457695 () Unit!20187)

(declare-fun forallContained!616 (List!14005 Int Rule!4626) Unit!20187)

(assert (=> b!1376973 (= lt!457695 (forallContained!616 rules!2550 lambda!58731 (rule!4172 t2!34)))))

(declare-fun lt!457701 () Unit!20187)

(assert (=> b!1376973 (= lt!457701 (forallContained!616 rules!2550 lambda!58731 (rule!4172 t1!34)))))

(declare-fun lt!457691 () Unit!20187)

(assert (=> b!1376973 (= lt!457691 (forallContained!616 rules!2550 lambda!58731 lt!457690))))

(declare-fun tp!394706 () Bool)

(declare-fun b!1376974 () Bool)

(assert (=> b!1376974 (= e!879896 (and tp!394706 (inv!18289 (tag!2675 (rule!4172 t2!34))) (inv!18292 (transformation!2413 (rule!4172 t2!34))) e!879893))))

(declare-fun b!1376975 () Bool)

(declare-fun res!620615 () Bool)

(assert (=> b!1376975 (=> res!620615 e!879892)))

(assert (=> b!1376975 (= res!620615 (not (= (lexList!626 thiss!19762 rules!2550 (list!5382 lt!457699)) (tuple2!13553 lt!457692 Nil!13937))))))

(assert (= (and start!124618 res!620609) b!1376942))

(assert (= (and b!1376942 res!620636) b!1376971))

(assert (= (and b!1376971 res!620624) b!1376944))

(assert (= (and b!1376944 res!620640) b!1376947))

(assert (= (and b!1376947 res!620613) b!1376933))

(assert (= (and b!1376933 res!620623) b!1376937))

(assert (= (and b!1376937 res!620614) b!1376954))

(assert (= (and b!1376954 res!620616) b!1376965))

(assert (= (and b!1376965 res!620629) b!1376968))

(assert (= (and b!1376968 res!620633) b!1376964))

(assert (= (and b!1376964 (not res!620608)) b!1376962))

(assert (= (and b!1376962 (not res!620634)) b!1376963))

(assert (= (and b!1376963 (not res!620631)) b!1376948))

(assert (= (and b!1376948 (not res!620630)) b!1376928))

(assert (= (and b!1376928 (not res!620627)) b!1376946))

(assert (= (and b!1376946 (not res!620637)) b!1376970))

(assert (= (and b!1376970 (not res!620642)) b!1376929))

(assert (= (and b!1376929 (not res!620632)) b!1376945))

(assert (= (and b!1376945 (not res!620611)) b!1376931))

(assert (= (and b!1376931 (not res!620610)) b!1376940))

(assert (= (and b!1376940 (not res!620639)) b!1376935))

(assert (= (and b!1376935 (not res!620618)) b!1376975))

(assert (= (and b!1376975 (not res!620615)) b!1376936))

(assert (= (and b!1376936 (not res!620635)) b!1376966))

(assert (= (and b!1376966 (not res!620625)) b!1376960))

(assert (= (and b!1376960 (not res!620628)) b!1376927))

(assert (= (and b!1376927 (not res!620620)) b!1376934))

(assert (= (and b!1376934 (not res!620621)) b!1376961))

(assert (= (and b!1376961 (not res!620641)) b!1376972))

(assert (= (and b!1376972 (not res!620643)) b!1376938))

(assert (= (and b!1376938 (not res!620619)) b!1376973))

(assert (= (and b!1376973 (not res!620626)) b!1376943))

(assert (= (and b!1376943 (not res!620622)) b!1376930))

(assert (= (and b!1376930 c!226680) b!1376950))

(assert (= (and b!1376930 (not c!226680)) b!1376952))

(assert (= (and b!1376930 (not res!620612)) b!1376951))

(assert (= (and b!1376951 c!226681) b!1376955))

(assert (= (and b!1376951 (not c!226681)) b!1376958))

(assert (= (and b!1376951 (not res!620617)) b!1376932))

(assert (= (and b!1376932 (not res!620638)) b!1376967))

(assert (= b!1376959 b!1376953))

(assert (= b!1376956 b!1376959))

(assert (= (and start!124618 ((_ is Cons!13939) rules!2550)) b!1376956))

(assert (= b!1376949 b!1376939))

(assert (= b!1376957 b!1376949))

(assert (= start!124618 b!1376957))

(assert (= b!1376974 b!1376941))

(assert (= b!1376969 b!1376974))

(assert (= start!124618 b!1376969))

(declare-fun m!1549507 () Bool)

(assert (=> b!1376974 m!1549507))

(declare-fun m!1549509 () Bool)

(assert (=> b!1376974 m!1549509))

(declare-fun m!1549511 () Bool)

(assert (=> b!1376967 m!1549511))

(assert (=> b!1376967 m!1549511))

(declare-fun m!1549513 () Bool)

(assert (=> b!1376967 m!1549513))

(declare-fun m!1549515 () Bool)

(assert (=> b!1376967 m!1549515))

(declare-fun m!1549517 () Bool)

(assert (=> b!1376934 m!1549517))

(assert (=> b!1376934 m!1549517))

(declare-fun m!1549519 () Bool)

(assert (=> b!1376934 m!1549519))

(declare-fun m!1549521 () Bool)

(assert (=> b!1376962 m!1549521))

(assert (=> b!1376962 m!1549521))

(declare-fun m!1549523 () Bool)

(assert (=> b!1376962 m!1549523))

(declare-fun m!1549525 () Bool)

(assert (=> b!1376962 m!1549525))

(declare-fun m!1549527 () Bool)

(assert (=> b!1376975 m!1549527))

(assert (=> b!1376975 m!1549527))

(declare-fun m!1549529 () Bool)

(assert (=> b!1376975 m!1549529))

(declare-fun m!1549531 () Bool)

(assert (=> b!1376947 m!1549531))

(declare-fun m!1549533 () Bool)

(assert (=> b!1376945 m!1549533))

(assert (=> b!1376945 m!1549533))

(declare-fun m!1549535 () Bool)

(assert (=> b!1376945 m!1549535))

(assert (=> b!1376945 m!1549533))

(assert (=> b!1376945 m!1549533))

(declare-fun m!1549537 () Bool)

(assert (=> b!1376945 m!1549537))

(declare-fun m!1549539 () Bool)

(assert (=> b!1376942 m!1549539))

(declare-fun m!1549541 () Bool)

(assert (=> b!1376973 m!1549541))

(declare-fun m!1549543 () Bool)

(assert (=> b!1376973 m!1549543))

(declare-fun m!1549545 () Bool)

(assert (=> b!1376973 m!1549545))

(declare-fun m!1549547 () Bool)

(assert (=> b!1376973 m!1549547))

(declare-fun m!1549549 () Bool)

(assert (=> b!1376961 m!1549549))

(declare-fun m!1549551 () Bool)

(assert (=> b!1376961 m!1549551))

(declare-fun m!1549553 () Bool)

(assert (=> b!1376951 m!1549553))

(assert (=> b!1376951 m!1549553))

(declare-fun m!1549555 () Bool)

(assert (=> b!1376951 m!1549555))

(declare-fun m!1549557 () Bool)

(assert (=> b!1376931 m!1549557))

(assert (=> b!1376931 m!1549557))

(declare-fun m!1549559 () Bool)

(assert (=> b!1376931 m!1549559))

(declare-fun m!1549561 () Bool)

(assert (=> b!1376966 m!1549561))

(declare-fun m!1549563 () Bool)

(assert (=> b!1376927 m!1549563))

(declare-fun m!1549565 () Bool)

(assert (=> b!1376930 m!1549565))

(assert (=> b!1376930 m!1549565))

(declare-fun m!1549567 () Bool)

(assert (=> b!1376930 m!1549567))

(declare-fun m!1549569 () Bool)

(assert (=> b!1376954 m!1549569))

(declare-fun m!1549571 () Bool)

(assert (=> b!1376968 m!1549571))

(declare-fun m!1549573 () Bool)

(assert (=> b!1376968 m!1549573))

(declare-fun m!1549575 () Bool)

(assert (=> b!1376968 m!1549575))

(declare-fun m!1549577 () Bool)

(assert (=> b!1376968 m!1549577))

(declare-fun m!1549579 () Bool)

(assert (=> b!1376968 m!1549579))

(declare-fun m!1549581 () Bool)

(assert (=> b!1376968 m!1549581))

(declare-fun m!1549583 () Bool)

(assert (=> b!1376943 m!1549583))

(declare-fun m!1549585 () Bool)

(assert (=> b!1376946 m!1549585))

(declare-fun m!1549587 () Bool)

(assert (=> start!124618 m!1549587))

(declare-fun m!1549589 () Bool)

(assert (=> start!124618 m!1549589))

(declare-fun m!1549591 () Bool)

(assert (=> b!1376964 m!1549591))

(assert (=> b!1376964 m!1549591))

(declare-fun m!1549593 () Bool)

(assert (=> b!1376964 m!1549593))

(declare-fun m!1549595 () Bool)

(assert (=> b!1376960 m!1549595))

(declare-fun m!1549597 () Bool)

(assert (=> b!1376960 m!1549597))

(declare-fun m!1549599 () Bool)

(assert (=> b!1376960 m!1549599))

(assert (=> b!1376960 m!1549599))

(declare-fun m!1549601 () Bool)

(assert (=> b!1376960 m!1549601))

(declare-fun m!1549603 () Bool)

(assert (=> b!1376928 m!1549603))

(declare-fun m!1549605 () Bool)

(assert (=> b!1376948 m!1549605))

(declare-fun m!1549607 () Bool)

(assert (=> b!1376955 m!1549607))

(assert (=> b!1376955 m!1549607))

(declare-fun m!1549609 () Bool)

(assert (=> b!1376955 m!1549609))

(declare-fun m!1549611 () Bool)

(assert (=> b!1376938 m!1549611))

(declare-fun m!1549613 () Bool)

(assert (=> b!1376965 m!1549613))

(declare-fun m!1549615 () Bool)

(assert (=> b!1376957 m!1549615))

(declare-fun m!1549617 () Bool)

(assert (=> b!1376935 m!1549617))

(declare-fun m!1549619 () Bool)

(assert (=> b!1376969 m!1549619))

(declare-fun m!1549621 () Bool)

(assert (=> b!1376950 m!1549621))

(assert (=> b!1376950 m!1549621))

(declare-fun m!1549623 () Bool)

(assert (=> b!1376950 m!1549623))

(declare-fun m!1549625 () Bool)

(assert (=> b!1376936 m!1549625))

(declare-fun m!1549627 () Bool)

(assert (=> b!1376944 m!1549627))

(assert (=> b!1376929 m!1549533))

(declare-fun m!1549629 () Bool)

(assert (=> b!1376929 m!1549629))

(assert (=> b!1376929 m!1549533))

(declare-fun m!1549631 () Bool)

(assert (=> b!1376929 m!1549631))

(assert (=> b!1376929 m!1549533))

(declare-fun m!1549633 () Bool)

(assert (=> b!1376929 m!1549633))

(declare-fun m!1549635 () Bool)

(assert (=> b!1376949 m!1549635))

(declare-fun m!1549637 () Bool)

(assert (=> b!1376949 m!1549637))

(declare-fun m!1549639 () Bool)

(assert (=> b!1376959 m!1549639))

(declare-fun m!1549641 () Bool)

(assert (=> b!1376959 m!1549641))

(declare-fun m!1549643 () Bool)

(assert (=> b!1376971 m!1549643))

(declare-fun m!1549645 () Bool)

(assert (=> b!1376937 m!1549645))

(declare-fun m!1549647 () Bool)

(assert (=> b!1376937 m!1549647))

(declare-fun m!1549649 () Bool)

(assert (=> b!1376970 m!1549649))

(declare-fun m!1549651 () Bool)

(assert (=> b!1376940 m!1549651))

(declare-fun m!1549653 () Bool)

(assert (=> b!1376940 m!1549653))

(declare-fun m!1549655 () Bool)

(assert (=> b!1376940 m!1549655))

(assert (=> b!1376940 m!1549653))

(declare-fun m!1549657 () Bool)

(assert (=> b!1376940 m!1549657))

(declare-fun m!1549659 () Bool)

(assert (=> b!1376940 m!1549659))

(declare-fun m!1549661 () Bool)

(assert (=> b!1376963 m!1549661))

(declare-fun m!1549663 () Bool)

(assert (=> b!1376963 m!1549663))

(declare-fun m!1549665 () Bool)

(assert (=> b!1376972 m!1549665))

(check-sat (not b!1376944) (not b!1376931) (not b!1376956) (not b!1376966) (not b!1376970) (not b!1376955) (not b!1376963) b_and!92233 (not b!1376928) (not b!1376975) (not b_next!34055) (not b!1376946) (not b!1376961) (not b!1376974) (not b!1376965) (not b!1376960) (not b_next!34061) b_and!92231 (not b!1376930) (not b!1376962) (not b!1376959) (not b!1376971) (not b!1376929) (not b!1376967) b_and!92235 (not b!1376942) (not b!1376936) (not b!1376927) (not b_next!34059) (not b!1376935) (not b!1376938) b_and!92227 (not b_next!34053) (not start!124618) (not b!1376947) (not b!1376969) (not b_next!34057) b_and!92229 (not b!1376949) (not b!1376951) (not b!1376954) (not b!1376968) (not b!1376957) (not b!1376937) (not b!1376934) (not b!1376972) (not b!1376943) (not b!1376950) b_and!92237 (not b!1376948) (not b!1376945) (not b!1376973) (not b!1376940) (not b!1376964) (not b_next!34051))
(check-sat b_and!92235 (not b_next!34059) b_and!92227 (not b_next!34053) b_and!92233 b_and!92237 (not b_next!34055) (not b_next!34051) (not b_next!34061) b_and!92231 (not b_next!34057) b_and!92229)
