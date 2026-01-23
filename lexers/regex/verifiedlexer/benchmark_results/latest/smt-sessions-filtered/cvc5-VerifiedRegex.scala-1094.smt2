; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!56354 () Bool)

(assert start!56354)

(declare-fun b!596453 () Bool)

(declare-fun b_free!16877 () Bool)

(declare-fun b_next!16893 () Bool)

(assert (=> b!596453 (= b_free!16877 (not b_next!16893))))

(declare-fun tp!185958 () Bool)

(declare-fun b_and!58859 () Bool)

(assert (=> b!596453 (= tp!185958 b_and!58859)))

(declare-fun b_free!16879 () Bool)

(declare-fun b_next!16895 () Bool)

(assert (=> b!596453 (= b_free!16879 (not b_next!16895))))

(declare-fun tp!185956 () Bool)

(declare-fun b_and!58861 () Bool)

(assert (=> b!596453 (= tp!185956 b_and!58861)))

(declare-fun b!596451 () Bool)

(declare-fun b_free!16881 () Bool)

(declare-fun b_next!16897 () Bool)

(assert (=> b!596451 (= b_free!16881 (not b_next!16897))))

(declare-fun tp!185957 () Bool)

(declare-fun b_and!58863 () Bool)

(assert (=> b!596451 (= tp!185957 b_and!58863)))

(declare-fun b_free!16883 () Bool)

(declare-fun b_next!16899 () Bool)

(assert (=> b!596451 (= b_free!16883 (not b_next!16899))))

(declare-fun tp!185959 () Bool)

(declare-fun b_and!58865 () Bool)

(assert (=> b!596451 (= tp!185959 b_and!58865)))

(declare-fun b!596443 () Bool)

(declare-datatypes ((Unit!10797 0))(
  ( (Unit!10798) )
))
(declare-fun e!361030 () Unit!10797)

(declare-fun Unit!10799 () Unit!10797)

(assert (=> b!596443 (= e!361030 Unit!10799)))

(declare-datatypes ((C!3938 0))(
  ( (C!3939 (val!2195 Int)) )
))
(declare-datatypes ((Regex!1508 0))(
  ( (ElementMatch!1508 (c!110961 C!3938)) (Concat!2706 (regOne!3528 Regex!1508) (regTwo!3528 Regex!1508)) (EmptyExpr!1508) (Star!1508 (reg!1837 Regex!1508)) (EmptyLang!1508) (Union!1508 (regOne!3529 Regex!1508) (regTwo!3529 Regex!1508)) )
))
(declare-datatypes ((String!7735 0))(
  ( (String!7736 (value!38301 String)) )
))
(declare-datatypes ((List!5945 0))(
  ( (Nil!5935) (Cons!5935 (h!11336 (_ BitVec 16)) (t!79478 List!5945)) )
))
(declare-datatypes ((TokenValue!1198 0))(
  ( (FloatLiteralValue!2396 (text!8831 List!5945)) (TokenValueExt!1197 (__x!4294 Int)) (Broken!5990 (value!38302 List!5945)) (Object!1207) (End!1198) (Def!1198) (Underscore!1198) (Match!1198) (Else!1198) (Error!1198) (Case!1198) (If!1198) (Extends!1198) (Abstract!1198) (Class!1198) (Val!1198) (DelimiterValue!2396 (del!1258 List!5945)) (KeywordValue!1204 (value!38303 List!5945)) (CommentValue!2396 (value!38304 List!5945)) (WhitespaceValue!2396 (value!38305 List!5945)) (IndentationValue!1198 (value!38306 List!5945)) (String!7737) (Int32!1198) (Broken!5991 (value!38307 List!5945)) (Boolean!1199) (Unit!10800) (OperatorValue!1201 (op!1258 List!5945)) (IdentifierValue!2396 (value!38308 List!5945)) (IdentifierValue!2397 (value!38309 List!5945)) (WhitespaceValue!2397 (value!38310 List!5945)) (True!2396) (False!2396) (Broken!5992 (value!38311 List!5945)) (Broken!5993 (value!38312 List!5945)) (True!2397) (RightBrace!1198) (RightBracket!1198) (Colon!1198) (Null!1198) (Comma!1198) (LeftBracket!1198) (False!2397) (LeftBrace!1198) (ImaginaryLiteralValue!1198 (text!8832 List!5945)) (StringLiteralValue!3594 (value!38313 List!5945)) (EOFValue!1198 (value!38314 List!5945)) (IdentValue!1198 (value!38315 List!5945)) (DelimiterValue!2397 (value!38316 List!5945)) (DedentValue!1198 (value!38317 List!5945)) (NewLineValue!1198 (value!38318 List!5945)) (IntegerValue!3594 (value!38319 (_ BitVec 32)) (text!8833 List!5945)) (IntegerValue!3595 (value!38320 Int) (text!8834 List!5945)) (Times!1198) (Or!1198) (Equal!1198) (Minus!1198) (Broken!5994 (value!38321 List!5945)) (And!1198) (Div!1198) (LessEqual!1198) (Mod!1198) (Concat!2707) (Not!1198) (Plus!1198) (SpaceValue!1198 (value!38322 List!5945)) (IntegerValue!3596 (value!38323 Int) (text!8835 List!5945)) (StringLiteralValue!3595 (text!8836 List!5945)) (FloatLiteralValue!2397 (text!8837 List!5945)) (BytesLiteralValue!1198 (value!38324 List!5945)) (CommentValue!2397 (value!38325 List!5945)) (StringLiteralValue!3596 (value!38326 List!5945)) (ErrorTokenValue!1198 (msg!1259 List!5945)) )
))
(declare-datatypes ((List!5946 0))(
  ( (Nil!5936) (Cons!5936 (h!11337 C!3938) (t!79479 List!5946)) )
))
(declare-datatypes ((IArray!3783 0))(
  ( (IArray!3784 (innerList!1949 List!5946)) )
))
(declare-datatypes ((Conc!1891 0))(
  ( (Node!1891 (left!4791 Conc!1891) (right!5121 Conc!1891) (csize!4012 Int) (cheight!2102 Int)) (Leaf!2986 (xs!4528 IArray!3783) (csize!4013 Int)) (Empty!1891) )
))
(declare-datatypes ((BalanceConc!3790 0))(
  ( (BalanceConc!3791 (c!110962 Conc!1891)) )
))
(declare-datatypes ((TokenValueInjection!2164 0))(
  ( (TokenValueInjection!2165 (toValue!2065 Int) (toChars!1924 Int)) )
))
(declare-datatypes ((Rule!2148 0))(
  ( (Rule!2149 (regex!1174 Regex!1508) (tag!1436 String!7735) (isSeparator!1174 Bool) (transformation!1174 TokenValueInjection!2164)) )
))
(declare-datatypes ((List!5947 0))(
  ( (Nil!5937) (Cons!5937 (h!11338 Rule!2148) (t!79480 List!5947)) )
))
(declare-fun rules!3103 () List!5947)

(declare-fun b!596444 () Bool)

(declare-fun tp!185955 () Bool)

(declare-fun e!361040 () Bool)

(declare-fun e!361026 () Bool)

(declare-fun inv!7522 (String!7735) Bool)

(declare-fun inv!7525 (TokenValueInjection!2164) Bool)

(assert (=> b!596444 (= e!361040 (and tp!185955 (inv!7522 (tag!1436 (h!11338 rules!3103))) (inv!7525 (transformation!1174 (h!11338 rules!3103))) e!361026))))

(declare-fun b!596445 () Bool)

(declare-fun e!361041 () Bool)

(declare-fun e!361036 () Bool)

(assert (=> b!596445 (= e!361041 e!361036)))

(declare-fun res!257547 () Bool)

(assert (=> b!596445 (=> (not res!257547) (not e!361036))))

(declare-datatypes ((Token!2084 0))(
  ( (Token!2085 (value!38327 TokenValue!1198) (rule!1944 Rule!2148) (size!4682 Int) (originalCharacters!1213 List!5946)) )
))
(declare-datatypes ((tuple2!6842 0))(
  ( (tuple2!6843 (_1!3685 Token!2084) (_2!3685 List!5946)) )
))
(declare-datatypes ((Option!1525 0))(
  ( (None!1524) (Some!1524 (v!16411 tuple2!6842)) )
))
(declare-fun lt!253404 () Option!1525)

(declare-fun isDefined!1336 (Option!1525) Bool)

(assert (=> b!596445 (= res!257547 (isDefined!1336 lt!253404))))

(declare-datatypes ((LexerInterface!1060 0))(
  ( (LexerInterfaceExt!1057 (__x!4295 Int)) (Lexer!1058) )
))
(declare-fun thiss!22590 () LexerInterface!1060)

(declare-fun lt!253408 () List!5946)

(declare-fun maxPrefix!758 (LexerInterface!1060 List!5947 List!5946) Option!1525)

(assert (=> b!596445 (= lt!253404 (maxPrefix!758 thiss!22590 rules!3103 lt!253408))))

(declare-fun input!2705 () List!5946)

(declare-fun suffix!1342 () List!5946)

(declare-fun ++!1662 (List!5946 List!5946) List!5946)

(assert (=> b!596445 (= lt!253408 (++!1662 input!2705 suffix!1342))))

(declare-fun e!361028 () Bool)

(declare-fun token!491 () Token!2084)

(declare-fun b!596446 () Bool)

(declare-fun e!361045 () Bool)

(declare-fun tp!185953 () Bool)

(assert (=> b!596446 (= e!361045 (and tp!185953 (inv!7522 (tag!1436 (rule!1944 token!491))) (inv!7525 (transformation!1174 (rule!1944 token!491))) e!361028))))

(declare-fun b!596447 () Bool)

(declare-fun Unit!10801 () Unit!10797)

(assert (=> b!596447 (= e!361030 Unit!10801)))

(assert (=> b!596447 false))

(declare-fun b!596448 () Bool)

(declare-fun res!257554 () Bool)

(declare-fun e!361033 () Bool)

(assert (=> b!596448 (=> (not res!257554) (not e!361033))))

(declare-fun isEmpty!4285 (List!5947) Bool)

(assert (=> b!596448 (= res!257554 (not (isEmpty!4285 rules!3103)))))

(declare-fun b!596449 () Bool)

(declare-fun e!361035 () Bool)

(declare-fun lt!253399 () Int)

(assert (=> b!596449 (= e!361035 (= (size!4682 token!491) lt!253399))))

(declare-fun res!257552 () Bool)

(assert (=> start!56354 (=> (not res!257552) (not e!361033))))

(assert (=> start!56354 (= res!257552 (is-Lexer!1058 thiss!22590))))

(assert (=> start!56354 e!361033))

(declare-fun e!361031 () Bool)

(assert (=> start!56354 e!361031))

(declare-fun e!361044 () Bool)

(assert (=> start!56354 e!361044))

(declare-fun e!361034 () Bool)

(declare-fun inv!7526 (Token!2084) Bool)

(assert (=> start!56354 (and (inv!7526 token!491) e!361034)))

(assert (=> start!56354 true))

(declare-fun e!361032 () Bool)

(assert (=> start!56354 e!361032))

(declare-fun b!596442 () Bool)

(declare-fun lt!253403 () List!5946)

(declare-fun lt!253414 () TokenValue!1198)

(declare-fun lt!253409 () List!5946)

(declare-fun lt!253417 () Int)

(declare-fun e!361042 () Bool)

(declare-fun lt!253420 () Option!1525)

(assert (=> b!596442 (= e!361042 (and (= (size!4682 (_1!3685 (v!16411 lt!253420))) lt!253417) (= (originalCharacters!1213 (_1!3685 (v!16411 lt!253420))) lt!253403) (= (v!16411 lt!253420) (tuple2!6843 (Token!2085 lt!253414 (rule!1944 (_1!3685 (v!16411 lt!253420))) lt!253417 lt!253403) lt!253409))))))

(declare-fun b!596450 () Bool)

(declare-fun tp!185960 () Bool)

(declare-fun inv!21 (TokenValue!1198) Bool)

(assert (=> b!596450 (= e!361034 (and (inv!21 (value!38327 token!491)) e!361045 tp!185960))))

(assert (=> b!596451 (= e!361026 (and tp!185957 tp!185959))))

(declare-fun b!596452 () Bool)

(declare-fun e!361027 () Bool)

(assert (=> b!596452 (= e!361036 e!361027)))

(declare-fun res!257559 () Bool)

(assert (=> b!596452 (=> (not res!257559) (not e!361027))))

(declare-fun lt!253406 () tuple2!6842)

(assert (=> b!596452 (= res!257559 (and (= (_1!3685 lt!253406) token!491) (= (_2!3685 lt!253406) suffix!1342)))))

(declare-fun get!2276 (Option!1525) tuple2!6842)

(assert (=> b!596452 (= lt!253406 (get!2276 lt!253404))))

(assert (=> b!596453 (= e!361028 (and tp!185958 tp!185956))))

(declare-fun b!596454 () Bool)

(declare-fun res!257545 () Bool)

(assert (=> b!596454 (=> (not res!257545) (not e!361035))))

(declare-fun lt!253402 () List!5946)

(declare-fun apply!1427 (TokenValueInjection!2164 BalanceConc!3790) TokenValue!1198)

(declare-fun seqFromList!1350 (List!5946) BalanceConc!3790)

(assert (=> b!596454 (= res!257545 (= (value!38327 token!491) (apply!1427 (transformation!1174 (rule!1944 token!491)) (seqFromList!1350 lt!253402))))))

(declare-fun b!596455 () Bool)

(declare-fun tp_is_empty!3371 () Bool)

(declare-fun tp!185952 () Bool)

(assert (=> b!596455 (= e!361031 (and tp_is_empty!3371 tp!185952))))

(declare-fun b!596456 () Bool)

(declare-fun tp!185954 () Bool)

(assert (=> b!596456 (= e!361044 (and e!361040 tp!185954))))

(declare-fun b!596457 () Bool)

(declare-fun e!361046 () Bool)

(assert (=> b!596457 (= e!361027 e!361046)))

(declare-fun res!257549 () Bool)

(assert (=> b!596457 (=> (not res!257549) (not e!361046))))

(assert (=> b!596457 (= res!257549 (is-Some!1524 lt!253420))))

(assert (=> b!596457 (= lt!253420 (maxPrefix!758 thiss!22590 rules!3103 input!2705))))

(declare-fun b!596458 () Bool)

(assert (=> b!596458 (= e!361033 e!361041)))

(declare-fun res!257558 () Bool)

(assert (=> b!596458 (=> (not res!257558) (not e!361041))))

(assert (=> b!596458 (= res!257558 (= lt!253402 input!2705))))

(declare-fun list!2487 (BalanceConc!3790) List!5946)

(declare-fun charsOf!803 (Token!2084) BalanceConc!3790)

(assert (=> b!596458 (= lt!253402 (list!2487 (charsOf!803 token!491)))))

(declare-fun b!596459 () Bool)

(declare-fun e!361043 () Bool)

(declare-fun e!361037 () Bool)

(assert (=> b!596459 (= e!361043 (not e!361037))))

(declare-fun res!257557 () Bool)

(assert (=> b!596459 (=> res!257557 e!361037)))

(declare-fun lt!253411 () List!5946)

(declare-fun isPrefix!802 (List!5946 List!5946) Bool)

(assert (=> b!596459 (= res!257557 (not (isPrefix!802 input!2705 lt!253411)))))

(assert (=> b!596459 (isPrefix!802 lt!253402 lt!253411)))

(declare-fun lt!253422 () Unit!10797)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!647 (List!5946 List!5946) Unit!10797)

(assert (=> b!596459 (= lt!253422 (lemmaConcatTwoListThenFirstIsPrefix!647 lt!253402 suffix!1342))))

(assert (=> b!596459 (isPrefix!802 input!2705 lt!253408)))

(declare-fun lt!253418 () Unit!10797)

(assert (=> b!596459 (= lt!253418 (lemmaConcatTwoListThenFirstIsPrefix!647 input!2705 suffix!1342))))

(assert (=> b!596459 e!361042))

(declare-fun res!257546 () Bool)

(assert (=> b!596459 (=> (not res!257546) (not e!361042))))

(assert (=> b!596459 (= res!257546 (= (value!38327 (_1!3685 (v!16411 lt!253420))) lt!253414))))

(assert (=> b!596459 (= lt!253414 (apply!1427 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))) (seqFromList!1350 lt!253403)))))

(declare-fun lt!253401 () Unit!10797)

(declare-fun lemmaInv!282 (TokenValueInjection!2164) Unit!10797)

(assert (=> b!596459 (= lt!253401 (lemmaInv!282 (transformation!1174 (rule!1944 token!491))))))

(declare-fun lt!253397 () Unit!10797)

(assert (=> b!596459 (= lt!253397 (lemmaInv!282 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))))))

(declare-fun ruleValid!372 (LexerInterface!1060 Rule!2148) Bool)

(assert (=> b!596459 (ruleValid!372 thiss!22590 (rule!1944 token!491))))

(declare-fun lt!253415 () Unit!10797)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!219 (LexerInterface!1060 Rule!2148 List!5947) Unit!10797)

(assert (=> b!596459 (= lt!253415 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!219 thiss!22590 (rule!1944 token!491) rules!3103))))

(assert (=> b!596459 (ruleValid!372 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420))))))

(declare-fun lt!253421 () Unit!10797)

(assert (=> b!596459 (= lt!253421 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!219 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420))) rules!3103))))

(assert (=> b!596459 (isPrefix!802 input!2705 input!2705)))

(declare-fun lt!253405 () Unit!10797)

(declare-fun lemmaIsPrefixRefl!538 (List!5946 List!5946) Unit!10797)

(assert (=> b!596459 (= lt!253405 (lemmaIsPrefixRefl!538 input!2705 input!2705))))

(assert (=> b!596459 (= (_2!3685 (v!16411 lt!253420)) lt!253409)))

(declare-fun lt!253410 () Unit!10797)

(declare-fun lemmaSamePrefixThenSameSuffix!515 (List!5946 List!5946 List!5946 List!5946 List!5946) Unit!10797)

(assert (=> b!596459 (= lt!253410 (lemmaSamePrefixThenSameSuffix!515 lt!253403 (_2!3685 (v!16411 lt!253420)) lt!253403 lt!253409 input!2705))))

(declare-fun getSuffix!319 (List!5946 List!5946) List!5946)

(assert (=> b!596459 (= lt!253409 (getSuffix!319 input!2705 lt!253403))))

(assert (=> b!596459 (isPrefix!802 lt!253403 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))))))

(declare-fun lt!253412 () Unit!10797)

(assert (=> b!596459 (= lt!253412 (lemmaConcatTwoListThenFirstIsPrefix!647 lt!253403 (_2!3685 (v!16411 lt!253420))))))

(declare-fun lt!253416 () Unit!10797)

(declare-fun lemmaCharactersSize!233 (Token!2084) Unit!10797)

(assert (=> b!596459 (= lt!253416 (lemmaCharactersSize!233 token!491))))

(declare-fun lt!253419 () Unit!10797)

(assert (=> b!596459 (= lt!253419 (lemmaCharactersSize!233 (_1!3685 (v!16411 lt!253420))))))

(declare-fun lt!253398 () Unit!10797)

(assert (=> b!596459 (= lt!253398 e!361030)))

(declare-fun c!110960 () Bool)

(assert (=> b!596459 (= c!110960 (> lt!253417 lt!253399))))

(declare-fun size!4683 (List!5946) Int)

(assert (=> b!596459 (= lt!253399 (size!4683 lt!253402))))

(assert (=> b!596459 (= lt!253417 (size!4683 lt!253403))))

(assert (=> b!596459 (= lt!253403 (list!2487 (charsOf!803 (_1!3685 (v!16411 lt!253420)))))))

(assert (=> b!596459 (= lt!253420 (Some!1524 (v!16411 lt!253420)))))

(declare-fun lt!253413 () Unit!10797)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!247 (List!5946 List!5946 List!5946 List!5946) Unit!10797)

(assert (=> b!596459 (= lt!253413 (lemmaConcatSameAndSameSizesThenSameLists!247 lt!253402 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!596460 () Bool)

(declare-fun res!257548 () Bool)

(assert (=> b!596460 (=> (not res!257548) (not e!361042))))

(assert (=> b!596460 (= res!257548 (= (size!4682 (_1!3685 (v!16411 lt!253420))) (size!4683 (originalCharacters!1213 (_1!3685 (v!16411 lt!253420))))))))

(declare-fun b!596461 () Bool)

(assert (=> b!596461 (= e!361037 (= (originalCharacters!1213 token!491) lt!253402))))

(assert (=> b!596461 e!361035))

(declare-fun res!257555 () Bool)

(assert (=> b!596461 (=> (not res!257555) (not e!361035))))

(declare-fun lt!253407 () List!5946)

(assert (=> b!596461 (= res!257555 (= suffix!1342 lt!253407))))

(declare-fun lt!253400 () Unit!10797)

(assert (=> b!596461 (= lt!253400 (lemmaSamePrefixThenSameSuffix!515 lt!253402 suffix!1342 lt!253402 lt!253407 lt!253408))))

(assert (=> b!596461 (= lt!253407 (getSuffix!319 lt!253408 lt!253402))))

(declare-fun b!596462 () Bool)

(assert (=> b!596462 (= e!361046 e!361043)))

(declare-fun res!257556 () Bool)

(assert (=> b!596462 (=> (not res!257556) (not e!361043))))

(assert (=> b!596462 (= res!257556 (= lt!253411 lt!253408))))

(assert (=> b!596462 (= lt!253411 (++!1662 lt!253402 suffix!1342))))

(declare-fun b!596463 () Bool)

(declare-fun tp!185951 () Bool)

(assert (=> b!596463 (= e!361032 (and tp_is_empty!3371 tp!185951))))

(declare-fun b!596464 () Bool)

(declare-fun res!257551 () Bool)

(assert (=> b!596464 (=> (not res!257551) (not e!361033))))

(declare-fun rulesInvariant!1023 (LexerInterface!1060 List!5947) Bool)

(assert (=> b!596464 (= res!257551 (rulesInvariant!1023 thiss!22590 rules!3103))))

(declare-fun b!596465 () Bool)

(declare-fun res!257550 () Bool)

(assert (=> b!596465 (=> (not res!257550) (not e!361035))))

(assert (=> b!596465 (= res!257550 (= (size!4682 token!491) (size!4683 (originalCharacters!1213 token!491))))))

(declare-fun b!596466 () Bool)

(declare-fun res!257553 () Bool)

(assert (=> b!596466 (=> (not res!257553) (not e!361033))))

(declare-fun isEmpty!4286 (List!5946) Bool)

(assert (=> b!596466 (= res!257553 (not (isEmpty!4286 input!2705)))))

(assert (= (and start!56354 res!257552) b!596448))

(assert (= (and b!596448 res!257554) b!596464))

(assert (= (and b!596464 res!257551) b!596466))

(assert (= (and b!596466 res!257553) b!596458))

(assert (= (and b!596458 res!257558) b!596445))

(assert (= (and b!596445 res!257547) b!596452))

(assert (= (and b!596452 res!257559) b!596457))

(assert (= (and b!596457 res!257549) b!596462))

(assert (= (and b!596462 res!257556) b!596459))

(assert (= (and b!596459 c!110960) b!596447))

(assert (= (and b!596459 (not c!110960)) b!596443))

(assert (= (and b!596459 res!257546) b!596460))

(assert (= (and b!596460 res!257548) b!596442))

(assert (= (and b!596459 (not res!257557)) b!596461))

(assert (= (and b!596461 res!257555) b!596454))

(assert (= (and b!596454 res!257545) b!596465))

(assert (= (and b!596465 res!257550) b!596449))

(assert (= (and start!56354 (is-Cons!5936 suffix!1342)) b!596455))

(assert (= b!596444 b!596451))

(assert (= b!596456 b!596444))

(assert (= (and start!56354 (is-Cons!5937 rules!3103)) b!596456))

(assert (= b!596446 b!596453))

(assert (= b!596450 b!596446))

(assert (= start!56354 b!596450))

(assert (= (and start!56354 (is-Cons!5936 input!2705)) b!596463))

(declare-fun m!859297 () Bool)

(assert (=> b!596466 m!859297))

(declare-fun m!859299 () Bool)

(assert (=> b!596464 m!859299))

(declare-fun m!859301 () Bool)

(assert (=> b!596459 m!859301))

(declare-fun m!859303 () Bool)

(assert (=> b!596459 m!859303))

(declare-fun m!859305 () Bool)

(assert (=> b!596459 m!859305))

(declare-fun m!859307 () Bool)

(assert (=> b!596459 m!859307))

(declare-fun m!859309 () Bool)

(assert (=> b!596459 m!859309))

(declare-fun m!859311 () Bool)

(assert (=> b!596459 m!859311))

(declare-fun m!859313 () Bool)

(assert (=> b!596459 m!859313))

(declare-fun m!859315 () Bool)

(assert (=> b!596459 m!859315))

(declare-fun m!859317 () Bool)

(assert (=> b!596459 m!859317))

(declare-fun m!859319 () Bool)

(assert (=> b!596459 m!859319))

(declare-fun m!859321 () Bool)

(assert (=> b!596459 m!859321))

(declare-fun m!859323 () Bool)

(assert (=> b!596459 m!859323))

(declare-fun m!859325 () Bool)

(assert (=> b!596459 m!859325))

(declare-fun m!859327 () Bool)

(assert (=> b!596459 m!859327))

(declare-fun m!859329 () Bool)

(assert (=> b!596459 m!859329))

(declare-fun m!859331 () Bool)

(assert (=> b!596459 m!859331))

(declare-fun m!859333 () Bool)

(assert (=> b!596459 m!859333))

(declare-fun m!859335 () Bool)

(assert (=> b!596459 m!859335))

(assert (=> b!596459 m!859317))

(declare-fun m!859337 () Bool)

(assert (=> b!596459 m!859337))

(declare-fun m!859339 () Bool)

(assert (=> b!596459 m!859339))

(assert (=> b!596459 m!859305))

(declare-fun m!859341 () Bool)

(assert (=> b!596459 m!859341))

(declare-fun m!859343 () Bool)

(assert (=> b!596459 m!859343))

(assert (=> b!596459 m!859301))

(declare-fun m!859345 () Bool)

(assert (=> b!596459 m!859345))

(declare-fun m!859347 () Bool)

(assert (=> b!596459 m!859347))

(declare-fun m!859349 () Bool)

(assert (=> b!596459 m!859349))

(declare-fun m!859351 () Bool)

(assert (=> b!596459 m!859351))

(declare-fun m!859353 () Bool)

(assert (=> b!596459 m!859353))

(declare-fun m!859355 () Bool)

(assert (=> b!596446 m!859355))

(declare-fun m!859357 () Bool)

(assert (=> b!596446 m!859357))

(declare-fun m!859359 () Bool)

(assert (=> b!596452 m!859359))

(declare-fun m!859361 () Bool)

(assert (=> b!596462 m!859361))

(declare-fun m!859363 () Bool)

(assert (=> b!596444 m!859363))

(declare-fun m!859365 () Bool)

(assert (=> b!596444 m!859365))

(declare-fun m!859367 () Bool)

(assert (=> b!596450 m!859367))

(declare-fun m!859369 () Bool)

(assert (=> b!596461 m!859369))

(declare-fun m!859371 () Bool)

(assert (=> b!596461 m!859371))

(declare-fun m!859373 () Bool)

(assert (=> start!56354 m!859373))

(declare-fun m!859375 () Bool)

(assert (=> b!596457 m!859375))

(declare-fun m!859377 () Bool)

(assert (=> b!596460 m!859377))

(declare-fun m!859379 () Bool)

(assert (=> b!596465 m!859379))

(declare-fun m!859381 () Bool)

(assert (=> b!596454 m!859381))

(assert (=> b!596454 m!859381))

(declare-fun m!859383 () Bool)

(assert (=> b!596454 m!859383))

(declare-fun m!859385 () Bool)

(assert (=> b!596448 m!859385))

(declare-fun m!859387 () Bool)

(assert (=> b!596445 m!859387))

(declare-fun m!859389 () Bool)

(assert (=> b!596445 m!859389))

(declare-fun m!859391 () Bool)

(assert (=> b!596445 m!859391))

(declare-fun m!859393 () Bool)

(assert (=> b!596458 m!859393))

(assert (=> b!596458 m!859393))

(declare-fun m!859395 () Bool)

(assert (=> b!596458 m!859395))

(push 1)

(assert b_and!58865)

(assert (not b!596466))

(assert tp_is_empty!3371)

(assert (not b!596448))

(assert (not b_next!16893))

(assert (not b!596463))

(assert (not b!596461))

(assert (not b_next!16897))

(assert (not b!596456))

(assert (not b!596465))

(assert (not b_next!16899))

(assert (not b!596445))

(assert (not b_next!16895))

(assert (not b!596462))

(assert (not b!596464))

(assert b_and!58859)

(assert (not b!596444))

(assert b_and!58863)

(assert (not b!596460))

(assert (not b!596450))

(assert (not b!596459))

(assert (not b!596452))

(assert b_and!58861)

(assert (not b!596455))

(assert (not b!596454))

(assert (not start!56354))

(assert (not b!596457))

(assert (not b!596458))

(assert (not b!596446))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58863)

(assert b_and!58865)

(assert (not b_next!16893))

(assert (not b_next!16897))

(assert (not b_next!16899))

(assert b_and!58861)

(assert (not b_next!16895))

(assert b_and!58859)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!596552 () Bool)

(declare-fun e!361118 () Bool)

(declare-fun e!361116 () Bool)

(assert (=> b!596552 (= e!361118 e!361116)))

(declare-fun c!110974 () Bool)

(assert (=> b!596552 (= c!110974 (is-IntegerValue!3595 (value!38327 token!491)))))

(declare-fun d!209743 () Bool)

(declare-fun c!110973 () Bool)

(assert (=> d!209743 (= c!110973 (is-IntegerValue!3594 (value!38327 token!491)))))

(assert (=> d!209743 (= (inv!21 (value!38327 token!491)) e!361118)))

(declare-fun b!596553 () Bool)

(declare-fun res!257614 () Bool)

(declare-fun e!361117 () Bool)

(assert (=> b!596553 (=> res!257614 e!361117)))

(assert (=> b!596553 (= res!257614 (not (is-IntegerValue!3596 (value!38327 token!491))))))

(assert (=> b!596553 (= e!361116 e!361117)))

(declare-fun b!596554 () Bool)

(declare-fun inv!15 (TokenValue!1198) Bool)

(assert (=> b!596554 (= e!361117 (inv!15 (value!38327 token!491)))))

(declare-fun b!596555 () Bool)

(declare-fun inv!17 (TokenValue!1198) Bool)

(assert (=> b!596555 (= e!361116 (inv!17 (value!38327 token!491)))))

(declare-fun b!596556 () Bool)

(declare-fun inv!16 (TokenValue!1198) Bool)

(assert (=> b!596556 (= e!361118 (inv!16 (value!38327 token!491)))))

(assert (= (and d!209743 c!110973) b!596556))

(assert (= (and d!209743 (not c!110973)) b!596552))

(assert (= (and b!596552 c!110974) b!596555))

(assert (= (and b!596552 (not c!110974)) b!596553))

(assert (= (and b!596553 (not res!257614)) b!596554))

(declare-fun m!859497 () Bool)

(assert (=> b!596554 m!859497))

(declare-fun m!859499 () Bool)

(assert (=> b!596555 m!859499))

(declare-fun m!859501 () Bool)

(assert (=> b!596556 m!859501))

(assert (=> b!596450 d!209743))

(declare-fun d!209745 () Bool)

(assert (=> d!209745 (= suffix!1342 lt!253407)))

(declare-fun lt!253503 () Unit!10797)

(declare-fun choose!4337 (List!5946 List!5946 List!5946 List!5946 List!5946) Unit!10797)

(assert (=> d!209745 (= lt!253503 (choose!4337 lt!253402 suffix!1342 lt!253402 lt!253407 lt!253408))))

(assert (=> d!209745 (isPrefix!802 lt!253402 lt!253408)))

(assert (=> d!209745 (= (lemmaSamePrefixThenSameSuffix!515 lt!253402 suffix!1342 lt!253402 lt!253407 lt!253408) lt!253503)))

(declare-fun bs!70650 () Bool)

(assert (= bs!70650 d!209745))

(declare-fun m!859503 () Bool)

(assert (=> bs!70650 m!859503))

(declare-fun m!859505 () Bool)

(assert (=> bs!70650 m!859505))

(assert (=> b!596461 d!209745))

(declare-fun d!209747 () Bool)

(declare-fun lt!253506 () List!5946)

(assert (=> d!209747 (= (++!1662 lt!253402 lt!253506) lt!253408)))

(declare-fun e!361121 () List!5946)

(assert (=> d!209747 (= lt!253506 e!361121)))

(declare-fun c!110977 () Bool)

(assert (=> d!209747 (= c!110977 (is-Cons!5936 lt!253402))))

(assert (=> d!209747 (>= (size!4683 lt!253408) (size!4683 lt!253402))))

(assert (=> d!209747 (= (getSuffix!319 lt!253408 lt!253402) lt!253506)))

(declare-fun b!596561 () Bool)

(declare-fun tail!794 (List!5946) List!5946)

(assert (=> b!596561 (= e!361121 (getSuffix!319 (tail!794 lt!253408) (t!79479 lt!253402)))))

(declare-fun b!596562 () Bool)

(assert (=> b!596562 (= e!361121 lt!253408)))

(assert (= (and d!209747 c!110977) b!596561))

(assert (= (and d!209747 (not c!110977)) b!596562))

(declare-fun m!859507 () Bool)

(assert (=> d!209747 m!859507))

(declare-fun m!859509 () Bool)

(assert (=> d!209747 m!859509))

(assert (=> d!209747 m!859323))

(declare-fun m!859511 () Bool)

(assert (=> b!596561 m!859511))

(assert (=> b!596561 m!859511))

(declare-fun m!859513 () Bool)

(assert (=> b!596561 m!859513))

(assert (=> b!596461 d!209747))

(declare-fun b!596573 () Bool)

(declare-fun res!257620 () Bool)

(declare-fun e!361126 () Bool)

(assert (=> b!596573 (=> (not res!257620) (not e!361126))))

(declare-fun lt!253509 () List!5946)

(assert (=> b!596573 (= res!257620 (= (size!4683 lt!253509) (+ (size!4683 lt!253402) (size!4683 suffix!1342))))))

(declare-fun b!596572 () Bool)

(declare-fun e!361127 () List!5946)

(assert (=> b!596572 (= e!361127 (Cons!5936 (h!11337 lt!253402) (++!1662 (t!79479 lt!253402) suffix!1342)))))

(declare-fun d!209749 () Bool)

(assert (=> d!209749 e!361126))

(declare-fun res!257621 () Bool)

(assert (=> d!209749 (=> (not res!257621) (not e!361126))))

(declare-fun content!1068 (List!5946) (Set C!3938))

(assert (=> d!209749 (= res!257621 (= (content!1068 lt!253509) (set.union (content!1068 lt!253402) (content!1068 suffix!1342))))))

(assert (=> d!209749 (= lt!253509 e!361127)))

(declare-fun c!110980 () Bool)

(assert (=> d!209749 (= c!110980 (is-Nil!5936 lt!253402))))

(assert (=> d!209749 (= (++!1662 lt!253402 suffix!1342) lt!253509)))

(declare-fun b!596571 () Bool)

(assert (=> b!596571 (= e!361127 suffix!1342)))

(declare-fun b!596574 () Bool)

(assert (=> b!596574 (= e!361126 (or (not (= suffix!1342 Nil!5936)) (= lt!253509 lt!253402)))))

(assert (= (and d!209749 c!110980) b!596571))

(assert (= (and d!209749 (not c!110980)) b!596572))

(assert (= (and d!209749 res!257621) b!596573))

(assert (= (and b!596573 res!257620) b!596574))

(declare-fun m!859515 () Bool)

(assert (=> b!596573 m!859515))

(assert (=> b!596573 m!859323))

(declare-fun m!859517 () Bool)

(assert (=> b!596573 m!859517))

(declare-fun m!859519 () Bool)

(assert (=> b!596572 m!859519))

(declare-fun m!859521 () Bool)

(assert (=> d!209749 m!859521))

(declare-fun m!859523 () Bool)

(assert (=> d!209749 m!859523))

(declare-fun m!859525 () Bool)

(assert (=> d!209749 m!859525))

(assert (=> b!596462 d!209749))

(declare-fun d!209751 () Bool)

(assert (=> d!209751 (= (get!2276 lt!253404) (v!16411 lt!253404))))

(assert (=> b!596452 d!209751))

(declare-fun d!209753 () Bool)

(declare-fun res!257624 () Bool)

(declare-fun e!361130 () Bool)

(assert (=> d!209753 (=> (not res!257624) (not e!361130))))

(declare-fun rulesValid!430 (LexerInterface!1060 List!5947) Bool)

(assert (=> d!209753 (= res!257624 (rulesValid!430 thiss!22590 rules!3103))))

(assert (=> d!209753 (= (rulesInvariant!1023 thiss!22590 rules!3103) e!361130)))

(declare-fun b!596577 () Bool)

(declare-datatypes ((List!5951 0))(
  ( (Nil!5941) (Cons!5941 (h!11342 String!7735) (t!79516 List!5951)) )
))
(declare-fun noDuplicateTag!430 (LexerInterface!1060 List!5947 List!5951) Bool)

(assert (=> b!596577 (= e!361130 (noDuplicateTag!430 thiss!22590 rules!3103 Nil!5941))))

(assert (= (and d!209753 res!257624) b!596577))

(declare-fun m!859527 () Bool)

(assert (=> d!209753 m!859527))

(declare-fun m!859529 () Bool)

(assert (=> b!596577 m!859529))

(assert (=> b!596464 d!209753))

(declare-fun d!209755 () Bool)

(declare-fun dynLambda!3441 (Int BalanceConc!3790) TokenValue!1198)

(assert (=> d!209755 (= (apply!1427 (transformation!1174 (rule!1944 token!491)) (seqFromList!1350 lt!253402)) (dynLambda!3441 (toValue!2065 (transformation!1174 (rule!1944 token!491))) (seqFromList!1350 lt!253402)))))

(declare-fun b_lambda!23513 () Bool)

(assert (=> (not b_lambda!23513) (not d!209755)))

(declare-fun t!79485 () Bool)

(declare-fun tb!52071 () Bool)

(assert (=> (and b!596453 (= (toValue!2065 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))) t!79485) tb!52071))

(declare-fun result!58514 () Bool)

(assert (=> tb!52071 (= result!58514 (inv!21 (dynLambda!3441 (toValue!2065 (transformation!1174 (rule!1944 token!491))) (seqFromList!1350 lt!253402))))))

(declare-fun m!859531 () Bool)

(assert (=> tb!52071 m!859531))

(assert (=> d!209755 t!79485))

(declare-fun b_and!58875 () Bool)

(assert (= b_and!58859 (and (=> t!79485 result!58514) b_and!58875)))

(declare-fun t!79487 () Bool)

(declare-fun tb!52073 () Bool)

(assert (=> (and b!596451 (= (toValue!2065 (transformation!1174 (h!11338 rules!3103))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))) t!79487) tb!52073))

(declare-fun result!58518 () Bool)

(assert (= result!58518 result!58514))

(assert (=> d!209755 t!79487))

(declare-fun b_and!58877 () Bool)

(assert (= b_and!58863 (and (=> t!79487 result!58518) b_and!58877)))

(assert (=> d!209755 m!859381))

(declare-fun m!859533 () Bool)

(assert (=> d!209755 m!859533))

(assert (=> b!596454 d!209755))

(declare-fun d!209757 () Bool)

(declare-fun fromListB!593 (List!5946) BalanceConc!3790)

(assert (=> d!209757 (= (seqFromList!1350 lt!253402) (fromListB!593 lt!253402))))

(declare-fun bs!70651 () Bool)

(assert (= bs!70651 d!209757))

(declare-fun m!859535 () Bool)

(assert (=> bs!70651 m!859535))

(assert (=> b!596454 d!209757))

(declare-fun d!209759 () Bool)

(declare-fun lt!253512 () Int)

(assert (=> d!209759 (>= lt!253512 0)))

(declare-fun e!361136 () Int)

(assert (=> d!209759 (= lt!253512 e!361136)))

(declare-fun c!110983 () Bool)

(assert (=> d!209759 (= c!110983 (is-Nil!5936 (originalCharacters!1213 token!491)))))

(assert (=> d!209759 (= (size!4683 (originalCharacters!1213 token!491)) lt!253512)))

(declare-fun b!596584 () Bool)

(assert (=> b!596584 (= e!361136 0)))

(declare-fun b!596585 () Bool)

(assert (=> b!596585 (= e!361136 (+ 1 (size!4683 (t!79479 (originalCharacters!1213 token!491)))))))

(assert (= (and d!209759 c!110983) b!596584))

(assert (= (and d!209759 (not c!110983)) b!596585))

(declare-fun m!859537 () Bool)

(assert (=> b!596585 m!859537))

(assert (=> b!596465 d!209759))

(declare-fun d!209761 () Bool)

(assert (=> d!209761 (= (inv!7522 (tag!1436 (h!11338 rules!3103))) (= (mod (str.len (value!38301 (tag!1436 (h!11338 rules!3103)))) 2) 0))))

(assert (=> b!596444 d!209761))

(declare-fun d!209763 () Bool)

(declare-fun res!257627 () Bool)

(declare-fun e!361139 () Bool)

(assert (=> d!209763 (=> (not res!257627) (not e!361139))))

(declare-fun semiInverseModEq!466 (Int Int) Bool)

(assert (=> d!209763 (= res!257627 (semiInverseModEq!466 (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toValue!2065 (transformation!1174 (h!11338 rules!3103)))))))

(assert (=> d!209763 (= (inv!7525 (transformation!1174 (h!11338 rules!3103))) e!361139)))

(declare-fun b!596588 () Bool)

(declare-fun equivClasses!449 (Int Int) Bool)

(assert (=> b!596588 (= e!361139 (equivClasses!449 (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toValue!2065 (transformation!1174 (h!11338 rules!3103)))))))

(assert (= (and d!209763 res!257627) b!596588))

(declare-fun m!859539 () Bool)

(assert (=> d!209763 m!859539))

(declare-fun m!859541 () Bool)

(assert (=> b!596588 m!859541))

(assert (=> b!596444 d!209763))

(declare-fun d!209767 () Bool)

(assert (=> d!209767 (= (isEmpty!4286 input!2705) (is-Nil!5936 input!2705))))

(assert (=> b!596466 d!209767))

(declare-fun d!209769 () Bool)

(declare-fun isEmpty!4289 (Option!1525) Bool)

(assert (=> d!209769 (= (isDefined!1336 lt!253404) (not (isEmpty!4289 lt!253404)))))

(declare-fun bs!70652 () Bool)

(assert (= bs!70652 d!209769))

(declare-fun m!859543 () Bool)

(assert (=> bs!70652 m!859543))

(assert (=> b!596445 d!209769))

(declare-fun b!596630 () Bool)

(declare-fun res!257664 () Bool)

(declare-fun e!361166 () Bool)

(assert (=> b!596630 (=> (not res!257664) (not e!361166))))

(declare-fun lt!253535 () Option!1525)

(assert (=> b!596630 (= res!257664 (< (size!4683 (_2!3685 (get!2276 lt!253535))) (size!4683 lt!253408)))))

(declare-fun b!596631 () Bool)

(declare-fun res!257660 () Bool)

(assert (=> b!596631 (=> (not res!257660) (not e!361166))))

(assert (=> b!596631 (= res!257660 (= (++!1662 (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253535)))) (_2!3685 (get!2276 lt!253535))) lt!253408))))

(declare-fun d!209771 () Bool)

(declare-fun e!361165 () Bool)

(assert (=> d!209771 e!361165))

(declare-fun res!257662 () Bool)

(assert (=> d!209771 (=> res!257662 e!361165)))

(assert (=> d!209771 (= res!257662 (isEmpty!4289 lt!253535))))

(declare-fun e!361164 () Option!1525)

(assert (=> d!209771 (= lt!253535 e!361164)))

(declare-fun c!110986 () Bool)

(assert (=> d!209771 (= c!110986 (and (is-Cons!5937 rules!3103) (is-Nil!5937 (t!79480 rules!3103))))))

(declare-fun lt!253536 () Unit!10797)

(declare-fun lt!253537 () Unit!10797)

(assert (=> d!209771 (= lt!253536 lt!253537)))

(assert (=> d!209771 (isPrefix!802 lt!253408 lt!253408)))

(assert (=> d!209771 (= lt!253537 (lemmaIsPrefixRefl!538 lt!253408 lt!253408))))

(declare-fun rulesValidInductive!435 (LexerInterface!1060 List!5947) Bool)

(assert (=> d!209771 (rulesValidInductive!435 thiss!22590 rules!3103)))

(assert (=> d!209771 (= (maxPrefix!758 thiss!22590 rules!3103 lt!253408) lt!253535)))

(declare-fun b!596632 () Bool)

(declare-fun contains!1392 (List!5947 Rule!2148) Bool)

(assert (=> b!596632 (= e!361166 (contains!1392 rules!3103 (rule!1944 (_1!3685 (get!2276 lt!253535)))))))

(declare-fun b!596633 () Bool)

(declare-fun call!40416 () Option!1525)

(assert (=> b!596633 (= e!361164 call!40416)))

(declare-fun b!596634 () Bool)

(declare-fun res!257661 () Bool)

(assert (=> b!596634 (=> (not res!257661) (not e!361166))))

(assert (=> b!596634 (= res!257661 (= (value!38327 (_1!3685 (get!2276 lt!253535))) (apply!1427 (transformation!1174 (rule!1944 (_1!3685 (get!2276 lt!253535)))) (seqFromList!1350 (originalCharacters!1213 (_1!3685 (get!2276 lt!253535)))))))))

(declare-fun bm!40411 () Bool)

(declare-fun maxPrefixOneRule!431 (LexerInterface!1060 Rule!2148 List!5946) Option!1525)

(assert (=> bm!40411 (= call!40416 (maxPrefixOneRule!431 thiss!22590 (h!11338 rules!3103) lt!253408))))

(declare-fun b!596635 () Bool)

(declare-fun res!257663 () Bool)

(assert (=> b!596635 (=> (not res!257663) (not e!361166))))

(declare-fun matchR!627 (Regex!1508 List!5946) Bool)

(assert (=> b!596635 (= res!257663 (matchR!627 (regex!1174 (rule!1944 (_1!3685 (get!2276 lt!253535)))) (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253535))))))))

(declare-fun b!596636 () Bool)

(declare-fun res!257658 () Bool)

(assert (=> b!596636 (=> (not res!257658) (not e!361166))))

(assert (=> b!596636 (= res!257658 (= (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253535)))) (originalCharacters!1213 (_1!3685 (get!2276 lt!253535)))))))

(declare-fun b!596637 () Bool)

(declare-fun lt!253533 () Option!1525)

(declare-fun lt!253534 () Option!1525)

(assert (=> b!596637 (= e!361164 (ite (and (is-None!1524 lt!253533) (is-None!1524 lt!253534)) None!1524 (ite (is-None!1524 lt!253534) lt!253533 (ite (is-None!1524 lt!253533) lt!253534 (ite (>= (size!4682 (_1!3685 (v!16411 lt!253533))) (size!4682 (_1!3685 (v!16411 lt!253534)))) lt!253533 lt!253534)))))))

(assert (=> b!596637 (= lt!253533 call!40416)))

(assert (=> b!596637 (= lt!253534 (maxPrefix!758 thiss!22590 (t!79480 rules!3103) lt!253408))))

(declare-fun b!596638 () Bool)

(assert (=> b!596638 (= e!361165 e!361166)))

(declare-fun res!257659 () Bool)

(assert (=> b!596638 (=> (not res!257659) (not e!361166))))

(assert (=> b!596638 (= res!257659 (isDefined!1336 lt!253535))))

(assert (= (and d!209771 c!110986) b!596633))

(assert (= (and d!209771 (not c!110986)) b!596637))

(assert (= (or b!596633 b!596637) bm!40411))

(assert (= (and d!209771 (not res!257662)) b!596638))

(assert (= (and b!596638 res!257659) b!596636))

(assert (= (and b!596636 res!257658) b!596630))

(assert (= (and b!596630 res!257664) b!596631))

(assert (= (and b!596631 res!257660) b!596634))

(assert (= (and b!596634 res!257661) b!596635))

(assert (= (and b!596635 res!257663) b!596632))

(declare-fun m!859587 () Bool)

(assert (=> d!209771 m!859587))

(declare-fun m!859589 () Bool)

(assert (=> d!209771 m!859589))

(declare-fun m!859591 () Bool)

(assert (=> d!209771 m!859591))

(declare-fun m!859593 () Bool)

(assert (=> d!209771 m!859593))

(declare-fun m!859595 () Bool)

(assert (=> bm!40411 m!859595))

(declare-fun m!859597 () Bool)

(assert (=> b!596635 m!859597))

(declare-fun m!859599 () Bool)

(assert (=> b!596635 m!859599))

(assert (=> b!596635 m!859599))

(declare-fun m!859601 () Bool)

(assert (=> b!596635 m!859601))

(assert (=> b!596635 m!859601))

(declare-fun m!859603 () Bool)

(assert (=> b!596635 m!859603))

(assert (=> b!596636 m!859597))

(assert (=> b!596636 m!859599))

(assert (=> b!596636 m!859599))

(assert (=> b!596636 m!859601))

(assert (=> b!596634 m!859597))

(declare-fun m!859605 () Bool)

(assert (=> b!596634 m!859605))

(assert (=> b!596634 m!859605))

(declare-fun m!859607 () Bool)

(assert (=> b!596634 m!859607))

(declare-fun m!859609 () Bool)

(assert (=> b!596637 m!859609))

(declare-fun m!859611 () Bool)

(assert (=> b!596638 m!859611))

(assert (=> b!596631 m!859597))

(assert (=> b!596631 m!859599))

(assert (=> b!596631 m!859599))

(assert (=> b!596631 m!859601))

(assert (=> b!596631 m!859601))

(declare-fun m!859613 () Bool)

(assert (=> b!596631 m!859613))

(assert (=> b!596630 m!859597))

(declare-fun m!859615 () Bool)

(assert (=> b!596630 m!859615))

(assert (=> b!596630 m!859509))

(assert (=> b!596632 m!859597))

(declare-fun m!859617 () Bool)

(assert (=> b!596632 m!859617))

(assert (=> b!596445 d!209771))

(declare-fun b!596641 () Bool)

(declare-fun res!257665 () Bool)

(declare-fun e!361167 () Bool)

(assert (=> b!596641 (=> (not res!257665) (not e!361167))))

(declare-fun lt!253540 () List!5946)

(assert (=> b!596641 (= res!257665 (= (size!4683 lt!253540) (+ (size!4683 input!2705) (size!4683 suffix!1342))))))

(declare-fun b!596640 () Bool)

(declare-fun e!361168 () List!5946)

(assert (=> b!596640 (= e!361168 (Cons!5936 (h!11337 input!2705) (++!1662 (t!79479 input!2705) suffix!1342)))))

(declare-fun d!209783 () Bool)

(assert (=> d!209783 e!361167))

(declare-fun res!257666 () Bool)

(assert (=> d!209783 (=> (not res!257666) (not e!361167))))

(assert (=> d!209783 (= res!257666 (= (content!1068 lt!253540) (set.union (content!1068 input!2705) (content!1068 suffix!1342))))))

(assert (=> d!209783 (= lt!253540 e!361168)))

(declare-fun c!110987 () Bool)

(assert (=> d!209783 (= c!110987 (is-Nil!5936 input!2705))))

(assert (=> d!209783 (= (++!1662 input!2705 suffix!1342) lt!253540)))

(declare-fun b!596639 () Bool)

(assert (=> b!596639 (= e!361168 suffix!1342)))

(declare-fun b!596642 () Bool)

(assert (=> b!596642 (= e!361167 (or (not (= suffix!1342 Nil!5936)) (= lt!253540 input!2705)))))

(assert (= (and d!209783 c!110987) b!596639))

(assert (= (and d!209783 (not c!110987)) b!596640))

(assert (= (and d!209783 res!257666) b!596641))

(assert (= (and b!596641 res!257665) b!596642))

(declare-fun m!859619 () Bool)

(assert (=> b!596641 m!859619))

(declare-fun m!859621 () Bool)

(assert (=> b!596641 m!859621))

(assert (=> b!596641 m!859517))

(declare-fun m!859623 () Bool)

(assert (=> b!596640 m!859623))

(declare-fun m!859625 () Bool)

(assert (=> d!209783 m!859625))

(declare-fun m!859627 () Bool)

(assert (=> d!209783 m!859627))

(assert (=> d!209783 m!859525))

(assert (=> b!596445 d!209783))

(declare-fun d!209785 () Bool)

(assert (=> d!209785 (= (inv!7522 (tag!1436 (rule!1944 token!491))) (= (mod (str.len (value!38301 (tag!1436 (rule!1944 token!491)))) 2) 0))))

(assert (=> b!596446 d!209785))

(declare-fun d!209787 () Bool)

(declare-fun res!257667 () Bool)

(declare-fun e!361169 () Bool)

(assert (=> d!209787 (=> (not res!257667) (not e!361169))))

(assert (=> d!209787 (= res!257667 (semiInverseModEq!466 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))))))

(assert (=> d!209787 (= (inv!7525 (transformation!1174 (rule!1944 token!491))) e!361169)))

(declare-fun b!596643 () Bool)

(assert (=> b!596643 (= e!361169 (equivClasses!449 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))))))

(assert (= (and d!209787 res!257667) b!596643))

(declare-fun m!859633 () Bool)

(assert (=> d!209787 m!859633))

(declare-fun m!859635 () Bool)

(assert (=> b!596643 m!859635))

(assert (=> b!596446 d!209787))

(declare-fun b!596644 () Bool)

(declare-fun res!257674 () Bool)

(declare-fun e!361172 () Bool)

(assert (=> b!596644 (=> (not res!257674) (not e!361172))))

(declare-fun lt!253544 () Option!1525)

(assert (=> b!596644 (= res!257674 (< (size!4683 (_2!3685 (get!2276 lt!253544))) (size!4683 input!2705)))))

(declare-fun b!596645 () Bool)

(declare-fun res!257670 () Bool)

(assert (=> b!596645 (=> (not res!257670) (not e!361172))))

(assert (=> b!596645 (= res!257670 (= (++!1662 (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253544)))) (_2!3685 (get!2276 lt!253544))) input!2705))))

(declare-fun d!209791 () Bool)

(declare-fun e!361171 () Bool)

(assert (=> d!209791 e!361171))

(declare-fun res!257672 () Bool)

(assert (=> d!209791 (=> res!257672 e!361171)))

(assert (=> d!209791 (= res!257672 (isEmpty!4289 lt!253544))))

(declare-fun e!361170 () Option!1525)

(assert (=> d!209791 (= lt!253544 e!361170)))

(declare-fun c!110988 () Bool)

(assert (=> d!209791 (= c!110988 (and (is-Cons!5937 rules!3103) (is-Nil!5937 (t!79480 rules!3103))))))

(declare-fun lt!253545 () Unit!10797)

(declare-fun lt!253546 () Unit!10797)

(assert (=> d!209791 (= lt!253545 lt!253546)))

(assert (=> d!209791 (isPrefix!802 input!2705 input!2705)))

(assert (=> d!209791 (= lt!253546 (lemmaIsPrefixRefl!538 input!2705 input!2705))))

(assert (=> d!209791 (rulesValidInductive!435 thiss!22590 rules!3103)))

(assert (=> d!209791 (= (maxPrefix!758 thiss!22590 rules!3103 input!2705) lt!253544)))

(declare-fun b!596646 () Bool)

(assert (=> b!596646 (= e!361172 (contains!1392 rules!3103 (rule!1944 (_1!3685 (get!2276 lt!253544)))))))

(declare-fun b!596647 () Bool)

(declare-fun call!40417 () Option!1525)

(assert (=> b!596647 (= e!361170 call!40417)))

(declare-fun b!596648 () Bool)

(declare-fun res!257671 () Bool)

(assert (=> b!596648 (=> (not res!257671) (not e!361172))))

(assert (=> b!596648 (= res!257671 (= (value!38327 (_1!3685 (get!2276 lt!253544))) (apply!1427 (transformation!1174 (rule!1944 (_1!3685 (get!2276 lt!253544)))) (seqFromList!1350 (originalCharacters!1213 (_1!3685 (get!2276 lt!253544)))))))))

(declare-fun bm!40412 () Bool)

(assert (=> bm!40412 (= call!40417 (maxPrefixOneRule!431 thiss!22590 (h!11338 rules!3103) input!2705))))

(declare-fun b!596649 () Bool)

(declare-fun res!257673 () Bool)

(assert (=> b!596649 (=> (not res!257673) (not e!361172))))

(assert (=> b!596649 (= res!257673 (matchR!627 (regex!1174 (rule!1944 (_1!3685 (get!2276 lt!253544)))) (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253544))))))))

(declare-fun b!596650 () Bool)

(declare-fun res!257668 () Bool)

(assert (=> b!596650 (=> (not res!257668) (not e!361172))))

(assert (=> b!596650 (= res!257668 (= (list!2487 (charsOf!803 (_1!3685 (get!2276 lt!253544)))) (originalCharacters!1213 (_1!3685 (get!2276 lt!253544)))))))

(declare-fun b!596651 () Bool)

(declare-fun lt!253542 () Option!1525)

(declare-fun lt!253543 () Option!1525)

(assert (=> b!596651 (= e!361170 (ite (and (is-None!1524 lt!253542) (is-None!1524 lt!253543)) None!1524 (ite (is-None!1524 lt!253543) lt!253542 (ite (is-None!1524 lt!253542) lt!253543 (ite (>= (size!4682 (_1!3685 (v!16411 lt!253542))) (size!4682 (_1!3685 (v!16411 lt!253543)))) lt!253542 lt!253543)))))))

(assert (=> b!596651 (= lt!253542 call!40417)))

(assert (=> b!596651 (= lt!253543 (maxPrefix!758 thiss!22590 (t!79480 rules!3103) input!2705))))

(declare-fun b!596652 () Bool)

(assert (=> b!596652 (= e!361171 e!361172)))

(declare-fun res!257669 () Bool)

(assert (=> b!596652 (=> (not res!257669) (not e!361172))))

(assert (=> b!596652 (= res!257669 (isDefined!1336 lt!253544))))

(assert (= (and d!209791 c!110988) b!596647))

(assert (= (and d!209791 (not c!110988)) b!596651))

(assert (= (or b!596647 b!596651) bm!40412))

(assert (= (and d!209791 (not res!257672)) b!596652))

(assert (= (and b!596652 res!257669) b!596650))

(assert (= (and b!596650 res!257668) b!596644))

(assert (= (and b!596644 res!257674) b!596645))

(assert (= (and b!596645 res!257670) b!596648))

(assert (= (and b!596648 res!257671) b!596649))

(assert (= (and b!596649 res!257673) b!596646))

(declare-fun m!859637 () Bool)

(assert (=> d!209791 m!859637))

(assert (=> d!209791 m!859331))

(assert (=> d!209791 m!859325))

(assert (=> d!209791 m!859593))

(declare-fun m!859639 () Bool)

(assert (=> bm!40412 m!859639))

(declare-fun m!859641 () Bool)

(assert (=> b!596649 m!859641))

(declare-fun m!859643 () Bool)

(assert (=> b!596649 m!859643))

(assert (=> b!596649 m!859643))

(declare-fun m!859645 () Bool)

(assert (=> b!596649 m!859645))

(assert (=> b!596649 m!859645))

(declare-fun m!859647 () Bool)

(assert (=> b!596649 m!859647))

(assert (=> b!596650 m!859641))

(assert (=> b!596650 m!859643))

(assert (=> b!596650 m!859643))

(assert (=> b!596650 m!859645))

(assert (=> b!596648 m!859641))

(declare-fun m!859649 () Bool)

(assert (=> b!596648 m!859649))

(assert (=> b!596648 m!859649))

(declare-fun m!859651 () Bool)

(assert (=> b!596648 m!859651))

(declare-fun m!859653 () Bool)

(assert (=> b!596651 m!859653))

(declare-fun m!859655 () Bool)

(assert (=> b!596652 m!859655))

(assert (=> b!596645 m!859641))

(assert (=> b!596645 m!859643))

(assert (=> b!596645 m!859643))

(assert (=> b!596645 m!859645))

(assert (=> b!596645 m!859645))

(declare-fun m!859657 () Bool)

(assert (=> b!596645 m!859657))

(assert (=> b!596644 m!859641))

(declare-fun m!859659 () Bool)

(assert (=> b!596644 m!859659))

(assert (=> b!596644 m!859621))

(assert (=> b!596646 m!859641))

(declare-fun m!859661 () Bool)

(assert (=> b!596646 m!859661))

(assert (=> b!596457 d!209791))

(declare-fun d!209793 () Bool)

(declare-fun res!257685 () Bool)

(declare-fun e!361178 () Bool)

(assert (=> d!209793 (=> (not res!257685) (not e!361178))))

(assert (=> d!209793 (= res!257685 (not (isEmpty!4286 (originalCharacters!1213 token!491))))))

(assert (=> d!209793 (= (inv!7526 token!491) e!361178)))

(declare-fun b!596663 () Bool)

(declare-fun res!257686 () Bool)

(assert (=> b!596663 (=> (not res!257686) (not e!361178))))

(declare-fun dynLambda!3442 (Int TokenValue!1198) BalanceConc!3790)

(assert (=> b!596663 (= res!257686 (= (originalCharacters!1213 token!491) (list!2487 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (value!38327 token!491)))))))

(declare-fun b!596664 () Bool)

(assert (=> b!596664 (= e!361178 (= (size!4682 token!491) (size!4683 (originalCharacters!1213 token!491))))))

(assert (= (and d!209793 res!257685) b!596663))

(assert (= (and b!596663 res!257686) b!596664))

(declare-fun b_lambda!23519 () Bool)

(assert (=> (not b_lambda!23519) (not b!596663)))

(declare-fun t!79497 () Bool)

(declare-fun tb!52083 () Bool)

(assert (=> (and b!596453 (= (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toChars!1924 (transformation!1174 (rule!1944 token!491)))) t!79497) tb!52083))

(declare-fun b!596669 () Bool)

(declare-fun e!361181 () Bool)

(declare-fun tp!185996 () Bool)

(declare-fun inv!7529 (Conc!1891) Bool)

(assert (=> b!596669 (= e!361181 (and (inv!7529 (c!110962 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (value!38327 token!491)))) tp!185996))))

(declare-fun result!58532 () Bool)

(declare-fun inv!7530 (BalanceConc!3790) Bool)

(assert (=> tb!52083 (= result!58532 (and (inv!7530 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (value!38327 token!491))) e!361181))))

(assert (= tb!52083 b!596669))

(declare-fun m!859667 () Bool)

(assert (=> b!596669 m!859667))

(declare-fun m!859669 () Bool)

(assert (=> tb!52083 m!859669))

(assert (=> b!596663 t!79497))

(declare-fun b_and!58887 () Bool)

(assert (= b_and!58861 (and (=> t!79497 result!58532) b_and!58887)))

(declare-fun tb!52085 () Bool)

(declare-fun t!79499 () Bool)

(assert (=> (and b!596451 (= (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toChars!1924 (transformation!1174 (rule!1944 token!491)))) t!79499) tb!52085))

(declare-fun result!58536 () Bool)

(assert (= result!58536 result!58532))

(assert (=> b!596663 t!79499))

(declare-fun b_and!58889 () Bool)

(assert (= b_and!58865 (and (=> t!79499 result!58536) b_and!58889)))

(declare-fun m!859671 () Bool)

(assert (=> d!209793 m!859671))

(declare-fun m!859673 () Bool)

(assert (=> b!596663 m!859673))

(assert (=> b!596663 m!859673))

(declare-fun m!859675 () Bool)

(assert (=> b!596663 m!859675))

(assert (=> b!596664 m!859379))

(assert (=> start!56354 d!209793))

(declare-fun d!209797 () Bool)

(declare-fun list!2489 (Conc!1891) List!5946)

(assert (=> d!209797 (= (list!2487 (charsOf!803 token!491)) (list!2489 (c!110962 (charsOf!803 token!491))))))

(declare-fun bs!70656 () Bool)

(assert (= bs!70656 d!209797))

(declare-fun m!859679 () Bool)

(assert (=> bs!70656 m!859679))

(assert (=> b!596458 d!209797))

(declare-fun d!209801 () Bool)

(declare-fun lt!253549 () BalanceConc!3790)

(assert (=> d!209801 (= (list!2487 lt!253549) (originalCharacters!1213 token!491))))

(assert (=> d!209801 (= lt!253549 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (value!38327 token!491)))))

(assert (=> d!209801 (= (charsOf!803 token!491) lt!253549)))

(declare-fun b_lambda!23521 () Bool)

(assert (=> (not b_lambda!23521) (not d!209801)))

(assert (=> d!209801 t!79497))

(declare-fun b_and!58891 () Bool)

(assert (= b_and!58887 (and (=> t!79497 result!58532) b_and!58891)))

(assert (=> d!209801 t!79499))

(declare-fun b_and!58893 () Bool)

(assert (= b_and!58889 (and (=> t!79499 result!58536) b_and!58893)))

(declare-fun m!859685 () Bool)

(assert (=> d!209801 m!859685))

(assert (=> d!209801 m!859673))

(assert (=> b!596458 d!209801))

(declare-fun d!209805 () Bool)

(assert (=> d!209805 (= (isEmpty!4285 rules!3103) (is-Nil!5937 rules!3103))))

(assert (=> b!596448 d!209805))

(declare-fun d!209807 () Bool)

(declare-fun lt!253550 () Int)

(assert (=> d!209807 (>= lt!253550 0)))

(declare-fun e!361183 () Int)

(assert (=> d!209807 (= lt!253550 e!361183)))

(declare-fun c!110989 () Bool)

(assert (=> d!209807 (= c!110989 (is-Nil!5936 lt!253402))))

(assert (=> d!209807 (= (size!4683 lt!253402) lt!253550)))

(declare-fun b!596672 () Bool)

(assert (=> b!596672 (= e!361183 0)))

(declare-fun b!596673 () Bool)

(assert (=> b!596673 (= e!361183 (+ 1 (size!4683 (t!79479 lt!253402))))))

(assert (= (and d!209807 c!110989) b!596672))

(assert (= (and d!209807 (not c!110989)) b!596673))

(declare-fun m!859687 () Bool)

(assert (=> b!596673 m!859687))

(assert (=> b!596459 d!209807))

(declare-fun d!209809 () Bool)

(assert (=> d!209809 (= (size!4682 (_1!3685 (v!16411 lt!253420))) (size!4683 (originalCharacters!1213 (_1!3685 (v!16411 lt!253420)))))))

(declare-fun Unit!10807 () Unit!10797)

(assert (=> d!209809 (= (lemmaCharactersSize!233 (_1!3685 (v!16411 lt!253420))) Unit!10807)))

(declare-fun bs!70657 () Bool)

(assert (= bs!70657 d!209809))

(assert (=> bs!70657 m!859377))

(assert (=> b!596459 d!209809))

(declare-fun b!596676 () Bool)

(declare-fun res!257689 () Bool)

(declare-fun e!361184 () Bool)

(assert (=> b!596676 (=> (not res!257689) (not e!361184))))

(declare-fun lt!253551 () List!5946)

(assert (=> b!596676 (= res!257689 (= (size!4683 lt!253551) (+ (size!4683 lt!253403) (size!4683 (_2!3685 (v!16411 lt!253420))))))))

(declare-fun b!596675 () Bool)

(declare-fun e!361185 () List!5946)

(assert (=> b!596675 (= e!361185 (Cons!5936 (h!11337 lt!253403) (++!1662 (t!79479 lt!253403) (_2!3685 (v!16411 lt!253420)))))))

(declare-fun d!209811 () Bool)

(assert (=> d!209811 e!361184))

(declare-fun res!257690 () Bool)

(assert (=> d!209811 (=> (not res!257690) (not e!361184))))

(assert (=> d!209811 (= res!257690 (= (content!1068 lt!253551) (set.union (content!1068 lt!253403) (content!1068 (_2!3685 (v!16411 lt!253420))))))))

(assert (=> d!209811 (= lt!253551 e!361185)))

(declare-fun c!110990 () Bool)

(assert (=> d!209811 (= c!110990 (is-Nil!5936 lt!253403))))

(assert (=> d!209811 (= (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))) lt!253551)))

(declare-fun b!596674 () Bool)

(assert (=> b!596674 (= e!361185 (_2!3685 (v!16411 lt!253420)))))

(declare-fun b!596677 () Bool)

(assert (=> b!596677 (= e!361184 (or (not (= (_2!3685 (v!16411 lt!253420)) Nil!5936)) (= lt!253551 lt!253403)))))

(assert (= (and d!209811 c!110990) b!596674))

(assert (= (and d!209811 (not c!110990)) b!596675))

(assert (= (and d!209811 res!257690) b!596676))

(assert (= (and b!596676 res!257689) b!596677))

(declare-fun m!859689 () Bool)

(assert (=> b!596676 m!859689))

(assert (=> b!596676 m!859321))

(declare-fun m!859691 () Bool)

(assert (=> b!596676 m!859691))

(declare-fun m!859693 () Bool)

(assert (=> b!596675 m!859693))

(declare-fun m!859695 () Bool)

(assert (=> d!209811 m!859695))

(declare-fun m!859697 () Bool)

(assert (=> d!209811 m!859697))

(declare-fun m!859699 () Bool)

(assert (=> d!209811 m!859699))

(assert (=> b!596459 d!209811))

(declare-fun d!209813 () Bool)

(declare-fun res!257695 () Bool)

(declare-fun e!361190 () Bool)

(assert (=> d!209813 (=> (not res!257695) (not e!361190))))

(declare-fun validRegex!519 (Regex!1508) Bool)

(assert (=> d!209813 (= res!257695 (validRegex!519 (regex!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))))))

(assert (=> d!209813 (= (ruleValid!372 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420)))) e!361190)))

(declare-fun b!596686 () Bool)

(declare-fun res!257696 () Bool)

(assert (=> b!596686 (=> (not res!257696) (not e!361190))))

(declare-fun nullable!424 (Regex!1508) Bool)

(assert (=> b!596686 (= res!257696 (not (nullable!424 (regex!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))))))

(declare-fun b!596687 () Bool)

(assert (=> b!596687 (= e!361190 (not (= (tag!1436 (rule!1944 (_1!3685 (v!16411 lt!253420)))) (String!7736 ""))))))

(assert (= (and d!209813 res!257695) b!596686))

(assert (= (and b!596686 res!257696) b!596687))

(declare-fun m!859701 () Bool)

(assert (=> d!209813 m!859701))

(declare-fun m!859703 () Bool)

(assert (=> b!596686 m!859703))

(assert (=> b!596459 d!209813))

(declare-fun d!209815 () Bool)

(assert (=> d!209815 (= (seqFromList!1350 lt!253403) (fromListB!593 lt!253403))))

(declare-fun bs!70658 () Bool)

(assert (= bs!70658 d!209815))

(declare-fun m!859705 () Bool)

(assert (=> bs!70658 m!859705))

(assert (=> b!596459 d!209815))

(declare-fun d!209817 () Bool)

(assert (=> d!209817 (= (_2!3685 (v!16411 lt!253420)) lt!253409)))

(declare-fun lt!253555 () Unit!10797)

(assert (=> d!209817 (= lt!253555 (choose!4337 lt!253403 (_2!3685 (v!16411 lt!253420)) lt!253403 lt!253409 input!2705))))

(assert (=> d!209817 (isPrefix!802 lt!253403 input!2705)))

(assert (=> d!209817 (= (lemmaSamePrefixThenSameSuffix!515 lt!253403 (_2!3685 (v!16411 lt!253420)) lt!253403 lt!253409 input!2705) lt!253555)))

(declare-fun bs!70659 () Bool)

(assert (= bs!70659 d!209817))

(declare-fun m!859707 () Bool)

(assert (=> bs!70659 m!859707))

(declare-fun m!859709 () Bool)

(assert (=> bs!70659 m!859709))

(assert (=> b!596459 d!209817))

(declare-fun d!209819 () Bool)

(assert (=> d!209819 (and (= lt!253402 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!253558 () Unit!10797)

(declare-fun choose!4338 (List!5946 List!5946 List!5946 List!5946) Unit!10797)

(assert (=> d!209819 (= lt!253558 (choose!4338 lt!253402 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!209819 (= (++!1662 lt!253402 suffix!1342) (++!1662 input!2705 suffix!1342))))

(assert (=> d!209819 (= (lemmaConcatSameAndSameSizesThenSameLists!247 lt!253402 suffix!1342 input!2705 suffix!1342) lt!253558)))

(declare-fun bs!70660 () Bool)

(assert (= bs!70660 d!209819))

(declare-fun m!859715 () Bool)

(assert (=> bs!70660 m!859715))

(assert (=> bs!70660 m!859361))

(assert (=> bs!70660 m!859391))

(assert (=> b!596459 d!209819))

(declare-fun d!209823 () Bool)

(assert (=> d!209823 (isPrefix!802 lt!253403 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))))))

(declare-fun lt!253563 () Unit!10797)

(declare-fun choose!4339 (List!5946 List!5946) Unit!10797)

(assert (=> d!209823 (= lt!253563 (choose!4339 lt!253403 (_2!3685 (v!16411 lt!253420))))))

(assert (=> d!209823 (= (lemmaConcatTwoListThenFirstIsPrefix!647 lt!253403 (_2!3685 (v!16411 lt!253420))) lt!253563)))

(declare-fun bs!70661 () Bool)

(assert (= bs!70661 d!209823))

(assert (=> bs!70661 m!859305))

(assert (=> bs!70661 m!859305))

(assert (=> bs!70661 m!859307))

(declare-fun m!859717 () Bool)

(assert (=> bs!70661 m!859717))

(assert (=> b!596459 d!209823))

(declare-fun b!596708 () Bool)

(declare-fun e!361203 () Bool)

(assert (=> b!596708 (= e!361203 (isPrefix!802 (tail!794 input!2705) (tail!794 lt!253408)))))

(declare-fun b!596707 () Bool)

(declare-fun res!257708 () Bool)

(assert (=> b!596707 (=> (not res!257708) (not e!361203))))

(declare-fun head!1265 (List!5946) C!3938)

(assert (=> b!596707 (= res!257708 (= (head!1265 input!2705) (head!1265 lt!253408)))))

(declare-fun b!596709 () Bool)

(declare-fun e!361204 () Bool)

(assert (=> b!596709 (= e!361204 (>= (size!4683 lt!253408) (size!4683 input!2705)))))

(declare-fun d!209825 () Bool)

(assert (=> d!209825 e!361204))

(declare-fun res!257706 () Bool)

(assert (=> d!209825 (=> res!257706 e!361204)))

(declare-fun lt!253568 () Bool)

(assert (=> d!209825 (= res!257706 (not lt!253568))))

(declare-fun e!361202 () Bool)

(assert (=> d!209825 (= lt!253568 e!361202)))

(declare-fun res!257705 () Bool)

(assert (=> d!209825 (=> res!257705 e!361202)))

(assert (=> d!209825 (= res!257705 (is-Nil!5936 input!2705))))

(assert (=> d!209825 (= (isPrefix!802 input!2705 lt!253408) lt!253568)))

(declare-fun b!596706 () Bool)

(assert (=> b!596706 (= e!361202 e!361203)))

(declare-fun res!257707 () Bool)

(assert (=> b!596706 (=> (not res!257707) (not e!361203))))

(assert (=> b!596706 (= res!257707 (not (is-Nil!5936 lt!253408)))))

(assert (= (and d!209825 (not res!257705)) b!596706))

(assert (= (and b!596706 res!257707) b!596707))

(assert (= (and b!596707 res!257708) b!596708))

(assert (= (and d!209825 (not res!257706)) b!596709))

(declare-fun m!859723 () Bool)

(assert (=> b!596708 m!859723))

(assert (=> b!596708 m!859511))

(assert (=> b!596708 m!859723))

(assert (=> b!596708 m!859511))

(declare-fun m!859725 () Bool)

(assert (=> b!596708 m!859725))

(declare-fun m!859727 () Bool)

(assert (=> b!596707 m!859727))

(declare-fun m!859729 () Bool)

(assert (=> b!596707 m!859729))

(assert (=> b!596709 m!859509))

(assert (=> b!596709 m!859621))

(assert (=> b!596459 d!209825))

(declare-fun d!209833 () Bool)

(declare-fun lt!253569 () List!5946)

(assert (=> d!209833 (= (++!1662 lt!253403 lt!253569) input!2705)))

(declare-fun e!361205 () List!5946)

(assert (=> d!209833 (= lt!253569 e!361205)))

(declare-fun c!110998 () Bool)

(assert (=> d!209833 (= c!110998 (is-Cons!5936 lt!253403))))

(assert (=> d!209833 (>= (size!4683 input!2705) (size!4683 lt!253403))))

(assert (=> d!209833 (= (getSuffix!319 input!2705 lt!253403) lt!253569)))

(declare-fun b!596710 () Bool)

(assert (=> b!596710 (= e!361205 (getSuffix!319 (tail!794 input!2705) (t!79479 lt!253403)))))

(declare-fun b!596711 () Bool)

(assert (=> b!596711 (= e!361205 input!2705)))

(assert (= (and d!209833 c!110998) b!596710))

(assert (= (and d!209833 (not c!110998)) b!596711))

(declare-fun m!859731 () Bool)

(assert (=> d!209833 m!859731))

(assert (=> d!209833 m!859621))

(assert (=> d!209833 m!859321))

(assert (=> b!596710 m!859723))

(assert (=> b!596710 m!859723))

(declare-fun m!859733 () Bool)

(assert (=> b!596710 m!859733))

(assert (=> b!596459 d!209833))

(declare-fun d!209835 () Bool)

(declare-fun res!257709 () Bool)

(declare-fun e!361206 () Bool)

(assert (=> d!209835 (=> (not res!257709) (not e!361206))))

(assert (=> d!209835 (= res!257709 (validRegex!519 (regex!1174 (rule!1944 token!491))))))

(assert (=> d!209835 (= (ruleValid!372 thiss!22590 (rule!1944 token!491)) e!361206)))

(declare-fun b!596712 () Bool)

(declare-fun res!257710 () Bool)

(assert (=> b!596712 (=> (not res!257710) (not e!361206))))

(assert (=> b!596712 (= res!257710 (not (nullable!424 (regex!1174 (rule!1944 token!491)))))))

(declare-fun b!596713 () Bool)

(assert (=> b!596713 (= e!361206 (not (= (tag!1436 (rule!1944 token!491)) (String!7736 ""))))))

(assert (= (and d!209835 res!257709) b!596712))

(assert (= (and b!596712 res!257710) b!596713))

(declare-fun m!859735 () Bool)

(assert (=> d!209835 m!859735))

(declare-fun m!859737 () Bool)

(assert (=> b!596712 m!859737))

(assert (=> b!596459 d!209835))

(declare-fun d!209837 () Bool)

(declare-fun lt!253570 () Int)

(assert (=> d!209837 (>= lt!253570 0)))

(declare-fun e!361207 () Int)

(assert (=> d!209837 (= lt!253570 e!361207)))

(declare-fun c!110999 () Bool)

(assert (=> d!209837 (= c!110999 (is-Nil!5936 lt!253403))))

(assert (=> d!209837 (= (size!4683 lt!253403) lt!253570)))

(declare-fun b!596714 () Bool)

(assert (=> b!596714 (= e!361207 0)))

(declare-fun b!596715 () Bool)

(assert (=> b!596715 (= e!361207 (+ 1 (size!4683 (t!79479 lt!253403))))))

(assert (= (and d!209837 c!110999) b!596714))

(assert (= (and d!209837 (not c!110999)) b!596715))

(declare-fun m!859739 () Bool)

(assert (=> b!596715 m!859739))

(assert (=> b!596459 d!209837))

(declare-fun d!209839 () Bool)

(declare-fun e!361213 () Bool)

(assert (=> d!209839 e!361213))

(declare-fun res!257717 () Bool)

(assert (=> d!209839 (=> (not res!257717) (not e!361213))))

(assert (=> d!209839 (= res!257717 (semiInverseModEq!466 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))))))

(declare-fun Unit!10808 () Unit!10797)

(assert (=> d!209839 (= (lemmaInv!282 (transformation!1174 (rule!1944 token!491))) Unit!10808)))

(declare-fun b!596722 () Bool)

(assert (=> b!596722 (= e!361213 (equivClasses!449 (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))))))

(assert (= (and d!209839 res!257717) b!596722))

(assert (=> d!209839 m!859633))

(assert (=> b!596722 m!859635))

(assert (=> b!596459 d!209839))

(declare-fun d!209843 () Bool)

(assert (=> d!209843 (= (size!4682 token!491) (size!4683 (originalCharacters!1213 token!491)))))

(declare-fun Unit!10809 () Unit!10797)

(assert (=> d!209843 (= (lemmaCharactersSize!233 token!491) Unit!10809)))

(declare-fun bs!70664 () Bool)

(assert (= bs!70664 d!209843))

(assert (=> bs!70664 m!859379))

(assert (=> b!596459 d!209843))

(declare-fun b!596725 () Bool)

(declare-fun e!361215 () Bool)

(assert (=> b!596725 (= e!361215 (isPrefix!802 (tail!794 lt!253402) (tail!794 lt!253411)))))

(declare-fun b!596724 () Bool)

(declare-fun res!257721 () Bool)

(assert (=> b!596724 (=> (not res!257721) (not e!361215))))

(assert (=> b!596724 (= res!257721 (= (head!1265 lt!253402) (head!1265 lt!253411)))))

(declare-fun b!596726 () Bool)

(declare-fun e!361216 () Bool)

(assert (=> b!596726 (= e!361216 (>= (size!4683 lt!253411) (size!4683 lt!253402)))))

(declare-fun d!209845 () Bool)

(assert (=> d!209845 e!361216))

(declare-fun res!257719 () Bool)

(assert (=> d!209845 (=> res!257719 e!361216)))

(declare-fun lt!253575 () Bool)

(assert (=> d!209845 (= res!257719 (not lt!253575))))

(declare-fun e!361214 () Bool)

(assert (=> d!209845 (= lt!253575 e!361214)))

(declare-fun res!257718 () Bool)

(assert (=> d!209845 (=> res!257718 e!361214)))

(assert (=> d!209845 (= res!257718 (is-Nil!5936 lt!253402))))

(assert (=> d!209845 (= (isPrefix!802 lt!253402 lt!253411) lt!253575)))

(declare-fun b!596723 () Bool)

(assert (=> b!596723 (= e!361214 e!361215)))

(declare-fun res!257720 () Bool)

(assert (=> b!596723 (=> (not res!257720) (not e!361215))))

(assert (=> b!596723 (= res!257720 (not (is-Nil!5936 lt!253411)))))

(assert (= (and d!209845 (not res!257718)) b!596723))

(assert (= (and b!596723 res!257720) b!596724))

(assert (= (and b!596724 res!257721) b!596725))

(assert (= (and d!209845 (not res!257719)) b!596726))

(declare-fun m!859745 () Bool)

(assert (=> b!596725 m!859745))

(declare-fun m!859747 () Bool)

(assert (=> b!596725 m!859747))

(assert (=> b!596725 m!859745))

(assert (=> b!596725 m!859747))

(declare-fun m!859749 () Bool)

(assert (=> b!596725 m!859749))

(declare-fun m!859751 () Bool)

(assert (=> b!596724 m!859751))

(declare-fun m!859755 () Bool)

(assert (=> b!596724 m!859755))

(declare-fun m!859757 () Bool)

(assert (=> b!596726 m!859757))

(assert (=> b!596726 m!859323))

(assert (=> b!596459 d!209845))

(declare-fun d!209847 () Bool)

(assert (=> d!209847 (= (apply!1427 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))) (seqFromList!1350 lt!253403)) (dynLambda!3441 (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (seqFromList!1350 lt!253403)))))

(declare-fun b_lambda!23523 () Bool)

(assert (=> (not b_lambda!23523) (not d!209847)))

(declare-fun t!79501 () Bool)

(declare-fun tb!52087 () Bool)

(assert (=> (and b!596453 (= (toValue!2065 (transformation!1174 (rule!1944 token!491))) (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79501) tb!52087))

(declare-fun result!58538 () Bool)

(assert (=> tb!52087 (= result!58538 (inv!21 (dynLambda!3441 (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (seqFromList!1350 lt!253403))))))

(declare-fun m!859759 () Bool)

(assert (=> tb!52087 m!859759))

(assert (=> d!209847 t!79501))

(declare-fun b_and!58895 () Bool)

(assert (= b_and!58875 (and (=> t!79501 result!58538) b_and!58895)))

(declare-fun t!79503 () Bool)

(declare-fun tb!52089 () Bool)

(assert (=> (and b!596451 (= (toValue!2065 (transformation!1174 (h!11338 rules!3103))) (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79503) tb!52089))

(declare-fun result!58540 () Bool)

(assert (= result!58540 result!58538))

(assert (=> d!209847 t!79503))

(declare-fun b_and!58897 () Bool)

(assert (= b_and!58877 (and (=> t!79503 result!58540) b_and!58897)))

(assert (=> d!209847 m!859317))

(declare-fun m!859761 () Bool)

(assert (=> d!209847 m!859761))

(assert (=> b!596459 d!209847))

(declare-fun d!209851 () Bool)

(declare-fun e!361218 () Bool)

(assert (=> d!209851 e!361218))

(declare-fun res!257722 () Bool)

(assert (=> d!209851 (=> (not res!257722) (not e!361218))))

(assert (=> d!209851 (= res!257722 (semiInverseModEq!466 (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))))))

(declare-fun Unit!10810 () Unit!10797)

(assert (=> d!209851 (= (lemmaInv!282 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) Unit!10810)))

(declare-fun b!596727 () Bool)

(assert (=> b!596727 (= e!361218 (equivClasses!449 (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))))))

(assert (= (and d!209851 res!257722) b!596727))

(declare-fun m!859763 () Bool)

(assert (=> d!209851 m!859763))

(declare-fun m!859765 () Bool)

(assert (=> b!596727 m!859765))

(assert (=> b!596459 d!209851))

(declare-fun b!596730 () Bool)

(declare-fun e!361220 () Bool)

(assert (=> b!596730 (= e!361220 (isPrefix!802 (tail!794 input!2705) (tail!794 lt!253411)))))

(declare-fun b!596729 () Bool)

(declare-fun res!257726 () Bool)

(assert (=> b!596729 (=> (not res!257726) (not e!361220))))

(assert (=> b!596729 (= res!257726 (= (head!1265 input!2705) (head!1265 lt!253411)))))

(declare-fun b!596731 () Bool)

(declare-fun e!361221 () Bool)

(assert (=> b!596731 (= e!361221 (>= (size!4683 lt!253411) (size!4683 input!2705)))))

(declare-fun d!209853 () Bool)

(assert (=> d!209853 e!361221))

(declare-fun res!257724 () Bool)

(assert (=> d!209853 (=> res!257724 e!361221)))

(declare-fun lt!253576 () Bool)

(assert (=> d!209853 (= res!257724 (not lt!253576))))

(declare-fun e!361219 () Bool)

(assert (=> d!209853 (= lt!253576 e!361219)))

(declare-fun res!257723 () Bool)

(assert (=> d!209853 (=> res!257723 e!361219)))

(assert (=> d!209853 (= res!257723 (is-Nil!5936 input!2705))))

(assert (=> d!209853 (= (isPrefix!802 input!2705 lt!253411) lt!253576)))

(declare-fun b!596728 () Bool)

(assert (=> b!596728 (= e!361219 e!361220)))

(declare-fun res!257725 () Bool)

(assert (=> b!596728 (=> (not res!257725) (not e!361220))))

(assert (=> b!596728 (= res!257725 (not (is-Nil!5936 lt!253411)))))

(assert (= (and d!209853 (not res!257723)) b!596728))

(assert (= (and b!596728 res!257725) b!596729))

(assert (= (and b!596729 res!257726) b!596730))

(assert (= (and d!209853 (not res!257724)) b!596731))

(assert (=> b!596730 m!859723))

(assert (=> b!596730 m!859747))

(assert (=> b!596730 m!859723))

(assert (=> b!596730 m!859747))

(declare-fun m!859767 () Bool)

(assert (=> b!596730 m!859767))

(assert (=> b!596729 m!859727))

(assert (=> b!596729 m!859755))

(assert (=> b!596731 m!859757))

(assert (=> b!596731 m!859621))

(assert (=> b!596459 d!209853))

(declare-fun d!209855 () Bool)

(assert (=> d!209855 (ruleValid!372 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420))))))

(declare-fun lt!253579 () Unit!10797)

(declare-fun choose!4340 (LexerInterface!1060 Rule!2148 List!5947) Unit!10797)

(assert (=> d!209855 (= lt!253579 (choose!4340 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420))) rules!3103))))

(assert (=> d!209855 (contains!1392 rules!3103 (rule!1944 (_1!3685 (v!16411 lt!253420))))))

(assert (=> d!209855 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!219 thiss!22590 (rule!1944 (_1!3685 (v!16411 lt!253420))) rules!3103) lt!253579)))

(declare-fun bs!70665 () Bool)

(assert (= bs!70665 d!209855))

(assert (=> bs!70665 m!859309))

(declare-fun m!859769 () Bool)

(assert (=> bs!70665 m!859769))

(declare-fun m!859771 () Bool)

(assert (=> bs!70665 m!859771))

(assert (=> b!596459 d!209855))

(declare-fun d!209857 () Bool)

(declare-fun lt!253580 () BalanceConc!3790)

(assert (=> d!209857 (= (list!2487 lt!253580) (originalCharacters!1213 (_1!3685 (v!16411 lt!253420))))))

(assert (=> d!209857 (= lt!253580 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (value!38327 (_1!3685 (v!16411 lt!253420)))))))

(assert (=> d!209857 (= (charsOf!803 (_1!3685 (v!16411 lt!253420))) lt!253580)))

(declare-fun b_lambda!23525 () Bool)

(assert (=> (not b_lambda!23525) (not d!209857)))

(declare-fun tb!52091 () Bool)

(declare-fun t!79505 () Bool)

(assert (=> (and b!596453 (= (toChars!1924 (transformation!1174 (rule!1944 token!491))) (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79505) tb!52091))

(declare-fun b!596732 () Bool)

(declare-fun e!361222 () Bool)

(declare-fun tp!185997 () Bool)

(assert (=> b!596732 (= e!361222 (and (inv!7529 (c!110962 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (value!38327 (_1!3685 (v!16411 lt!253420)))))) tp!185997))))

(declare-fun result!58542 () Bool)

(assert (=> tb!52091 (= result!58542 (and (inv!7530 (dynLambda!3442 (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420))))) (value!38327 (_1!3685 (v!16411 lt!253420))))) e!361222))))

(assert (= tb!52091 b!596732))

(declare-fun m!859773 () Bool)

(assert (=> b!596732 m!859773))

(declare-fun m!859775 () Bool)

(assert (=> tb!52091 m!859775))

(assert (=> d!209857 t!79505))

(declare-fun b_and!58899 () Bool)

(assert (= b_and!58891 (and (=> t!79505 result!58542) b_and!58899)))

(declare-fun tb!52093 () Bool)

(declare-fun t!79507 () Bool)

(assert (=> (and b!596451 (= (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79507) tb!52093))

(declare-fun result!58544 () Bool)

(assert (= result!58544 result!58542))

(assert (=> d!209857 t!79507))

(declare-fun b_and!58901 () Bool)

(assert (= b_and!58893 (and (=> t!79507 result!58544) b_and!58901)))

(declare-fun m!859777 () Bool)

(assert (=> d!209857 m!859777))

(declare-fun m!859779 () Bool)

(assert (=> d!209857 m!859779))

(assert (=> b!596459 d!209857))

(declare-fun b!596735 () Bool)

(declare-fun e!361224 () Bool)

(assert (=> b!596735 (= e!361224 (isPrefix!802 (tail!794 input!2705) (tail!794 input!2705)))))

(declare-fun b!596734 () Bool)

(declare-fun res!257730 () Bool)

(assert (=> b!596734 (=> (not res!257730) (not e!361224))))

(assert (=> b!596734 (= res!257730 (= (head!1265 input!2705) (head!1265 input!2705)))))

(declare-fun b!596736 () Bool)

(declare-fun e!361225 () Bool)

(assert (=> b!596736 (= e!361225 (>= (size!4683 input!2705) (size!4683 input!2705)))))

(declare-fun d!209859 () Bool)

(assert (=> d!209859 e!361225))

(declare-fun res!257728 () Bool)

(assert (=> d!209859 (=> res!257728 e!361225)))

(declare-fun lt!253581 () Bool)

(assert (=> d!209859 (= res!257728 (not lt!253581))))

(declare-fun e!361223 () Bool)

(assert (=> d!209859 (= lt!253581 e!361223)))

(declare-fun res!257727 () Bool)

(assert (=> d!209859 (=> res!257727 e!361223)))

(assert (=> d!209859 (= res!257727 (is-Nil!5936 input!2705))))

(assert (=> d!209859 (= (isPrefix!802 input!2705 input!2705) lt!253581)))

(declare-fun b!596733 () Bool)

(assert (=> b!596733 (= e!361223 e!361224)))

(declare-fun res!257729 () Bool)

(assert (=> b!596733 (=> (not res!257729) (not e!361224))))

(assert (=> b!596733 (= res!257729 (not (is-Nil!5936 input!2705)))))

(assert (= (and d!209859 (not res!257727)) b!596733))

(assert (= (and b!596733 res!257729) b!596734))

(assert (= (and b!596734 res!257730) b!596735))

(assert (= (and d!209859 (not res!257728)) b!596736))

(assert (=> b!596735 m!859723))

(assert (=> b!596735 m!859723))

(assert (=> b!596735 m!859723))

(assert (=> b!596735 m!859723))

(declare-fun m!859781 () Bool)

(assert (=> b!596735 m!859781))

(assert (=> b!596734 m!859727))

(assert (=> b!596734 m!859727))

(assert (=> b!596736 m!859621))

(assert (=> b!596736 m!859621))

(assert (=> b!596459 d!209859))

(declare-fun d!209861 () Bool)

(assert (=> d!209861 (ruleValid!372 thiss!22590 (rule!1944 token!491))))

(declare-fun lt!253584 () Unit!10797)

(assert (=> d!209861 (= lt!253584 (choose!4340 thiss!22590 (rule!1944 token!491) rules!3103))))

(assert (=> d!209861 (contains!1392 rules!3103 (rule!1944 token!491))))

(assert (=> d!209861 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!219 thiss!22590 (rule!1944 token!491) rules!3103) lt!253584)))

(declare-fun bs!70666 () Bool)

(assert (= bs!70666 d!209861))

(assert (=> bs!70666 m!859339))

(declare-fun m!859783 () Bool)

(assert (=> bs!70666 m!859783))

(declare-fun m!859785 () Bool)

(assert (=> bs!70666 m!859785))

(assert (=> b!596459 d!209861))

(declare-fun d!209863 () Bool)

(assert (=> d!209863 (isPrefix!802 input!2705 (++!1662 input!2705 suffix!1342))))

(declare-fun lt!253585 () Unit!10797)

(assert (=> d!209863 (= lt!253585 (choose!4339 input!2705 suffix!1342))))

(assert (=> d!209863 (= (lemmaConcatTwoListThenFirstIsPrefix!647 input!2705 suffix!1342) lt!253585)))

(declare-fun bs!70667 () Bool)

(assert (= bs!70667 d!209863))

(assert (=> bs!70667 m!859391))

(assert (=> bs!70667 m!859391))

(declare-fun m!859787 () Bool)

(assert (=> bs!70667 m!859787))

(declare-fun m!859789 () Bool)

(assert (=> bs!70667 m!859789))

(assert (=> b!596459 d!209863))

(declare-fun d!209865 () Bool)

(assert (=> d!209865 (isPrefix!802 lt!253402 (++!1662 lt!253402 suffix!1342))))

(declare-fun lt!253586 () Unit!10797)

(assert (=> d!209865 (= lt!253586 (choose!4339 lt!253402 suffix!1342))))

(assert (=> d!209865 (= (lemmaConcatTwoListThenFirstIsPrefix!647 lt!253402 suffix!1342) lt!253586)))

(declare-fun bs!70668 () Bool)

(assert (= bs!70668 d!209865))

(assert (=> bs!70668 m!859361))

(assert (=> bs!70668 m!859361))

(declare-fun m!859791 () Bool)

(assert (=> bs!70668 m!859791))

(declare-fun m!859793 () Bool)

(assert (=> bs!70668 m!859793))

(assert (=> b!596459 d!209865))

(declare-fun b!596743 () Bool)

(declare-fun e!361229 () Bool)

(assert (=> b!596743 (= e!361229 (isPrefix!802 (tail!794 lt!253403) (tail!794 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))))))))

(declare-fun b!596742 () Bool)

(declare-fun res!257734 () Bool)

(assert (=> b!596742 (=> (not res!257734) (not e!361229))))

(assert (=> b!596742 (= res!257734 (= (head!1265 lt!253403) (head!1265 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))))))))

(declare-fun b!596744 () Bool)

(declare-fun e!361230 () Bool)

(assert (=> b!596744 (= e!361230 (>= (size!4683 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420)))) (size!4683 lt!253403)))))

(declare-fun d!209867 () Bool)

(assert (=> d!209867 e!361230))

(declare-fun res!257732 () Bool)

(assert (=> d!209867 (=> res!257732 e!361230)))

(declare-fun lt!253587 () Bool)

(assert (=> d!209867 (= res!257732 (not lt!253587))))

(declare-fun e!361228 () Bool)

(assert (=> d!209867 (= lt!253587 e!361228)))

(declare-fun res!257731 () Bool)

(assert (=> d!209867 (=> res!257731 e!361228)))

(assert (=> d!209867 (= res!257731 (is-Nil!5936 lt!253403))))

(assert (=> d!209867 (= (isPrefix!802 lt!253403 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420)))) lt!253587)))

(declare-fun b!596741 () Bool)

(assert (=> b!596741 (= e!361228 e!361229)))

(declare-fun res!257733 () Bool)

(assert (=> b!596741 (=> (not res!257733) (not e!361229))))

(assert (=> b!596741 (= res!257733 (not (is-Nil!5936 (++!1662 lt!253403 (_2!3685 (v!16411 lt!253420))))))))

(assert (= (and d!209867 (not res!257731)) b!596741))

(assert (= (and b!596741 res!257733) b!596742))

(assert (= (and b!596742 res!257734) b!596743))

(assert (= (and d!209867 (not res!257732)) b!596744))

(declare-fun m!859795 () Bool)

(assert (=> b!596743 m!859795))

(assert (=> b!596743 m!859305))

(declare-fun m!859797 () Bool)

(assert (=> b!596743 m!859797))

(assert (=> b!596743 m!859795))

(assert (=> b!596743 m!859797))

(declare-fun m!859799 () Bool)

(assert (=> b!596743 m!859799))

(declare-fun m!859801 () Bool)

(assert (=> b!596742 m!859801))

(assert (=> b!596742 m!859305))

(declare-fun m!859803 () Bool)

(assert (=> b!596742 m!859803))

(assert (=> b!596744 m!859305))

(declare-fun m!859805 () Bool)

(assert (=> b!596744 m!859805))

(assert (=> b!596744 m!859321))

(assert (=> b!596459 d!209867))

(declare-fun d!209869 () Bool)

(assert (=> d!209869 (isPrefix!802 input!2705 input!2705)))

(declare-fun lt!253590 () Unit!10797)

(declare-fun choose!4343 (List!5946 List!5946) Unit!10797)

(assert (=> d!209869 (= lt!253590 (choose!4343 input!2705 input!2705))))

(assert (=> d!209869 (= (lemmaIsPrefixRefl!538 input!2705 input!2705) lt!253590)))

(declare-fun bs!70669 () Bool)

(assert (= bs!70669 d!209869))

(assert (=> bs!70669 m!859331))

(declare-fun m!859807 () Bool)

(assert (=> bs!70669 m!859807))

(assert (=> b!596459 d!209869))

(declare-fun d!209871 () Bool)

(assert (=> d!209871 (= (list!2487 (charsOf!803 (_1!3685 (v!16411 lt!253420)))) (list!2489 (c!110962 (charsOf!803 (_1!3685 (v!16411 lt!253420))))))))

(declare-fun bs!70670 () Bool)

(assert (= bs!70670 d!209871))

(declare-fun m!859809 () Bool)

(assert (=> bs!70670 m!859809))

(assert (=> b!596459 d!209871))

(declare-fun d!209873 () Bool)

(declare-fun lt!253591 () Int)

(assert (=> d!209873 (>= lt!253591 0)))

(declare-fun e!361233 () Int)

(assert (=> d!209873 (= lt!253591 e!361233)))

(declare-fun c!111002 () Bool)

(assert (=> d!209873 (= c!111002 (is-Nil!5936 (originalCharacters!1213 (_1!3685 (v!16411 lt!253420)))))))

(assert (=> d!209873 (= (size!4683 (originalCharacters!1213 (_1!3685 (v!16411 lt!253420)))) lt!253591)))

(declare-fun b!596749 () Bool)

(assert (=> b!596749 (= e!361233 0)))

(declare-fun b!596750 () Bool)

(assert (=> b!596750 (= e!361233 (+ 1 (size!4683 (t!79479 (originalCharacters!1213 (_1!3685 (v!16411 lt!253420)))))))))

(assert (= (and d!209873 c!111002) b!596749))

(assert (= (and d!209873 (not c!111002)) b!596750))

(declare-fun m!859811 () Bool)

(assert (=> b!596750 m!859811))

(assert (=> b!596460 d!209873))

(declare-fun b!596755 () Bool)

(declare-fun e!361236 () Bool)

(declare-fun tp!186000 () Bool)

(assert (=> b!596755 (= e!361236 (and tp_is_empty!3371 tp!186000))))

(assert (=> b!596455 (= tp!185952 e!361236)))

(assert (= (and b!596455 (is-Cons!5936 (t!79479 suffix!1342))) b!596755))

(declare-fun b!596756 () Bool)

(declare-fun e!361237 () Bool)

(declare-fun tp!186001 () Bool)

(assert (=> b!596756 (= e!361237 (and tp_is_empty!3371 tp!186001))))

(assert (=> b!596450 (= tp!185960 e!361237)))

(assert (= (and b!596450 (is-Cons!5936 (originalCharacters!1213 token!491))) b!596756))

(declare-fun b!596771 () Bool)

(declare-fun b_free!16893 () Bool)

(declare-fun b_next!16909 () Bool)

(assert (=> b!596771 (= b_free!16893 (not b_next!16909))))

(declare-fun t!79509 () Bool)

(declare-fun tb!52095 () Bool)

(assert (=> (and b!596771 (= (toValue!2065 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toValue!2065 (transformation!1174 (rule!1944 token!491)))) t!79509) tb!52095))

(declare-fun result!58550 () Bool)

(assert (= result!58550 result!58514))

(assert (=> d!209755 t!79509))

(declare-fun t!79511 () Bool)

(declare-fun tb!52097 () Bool)

(assert (=> (and b!596771 (= (toValue!2065 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toValue!2065 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79511) tb!52097))

(declare-fun result!58552 () Bool)

(assert (= result!58552 result!58538))

(assert (=> d!209847 t!79511))

(declare-fun tp!186012 () Bool)

(declare-fun b_and!58903 () Bool)

(assert (=> b!596771 (= tp!186012 (and (=> t!79509 result!58550) (=> t!79511 result!58552) b_and!58903))))

(declare-fun b_free!16895 () Bool)

(declare-fun b_next!16911 () Bool)

(assert (=> b!596771 (= b_free!16895 (not b_next!16911))))

(declare-fun tb!52099 () Bool)

(declare-fun t!79513 () Bool)

(assert (=> (and b!596771 (= (toChars!1924 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toChars!1924 (transformation!1174 (rule!1944 token!491)))) t!79513) tb!52099))

(declare-fun result!58554 () Bool)

(assert (= result!58554 result!58532))

(assert (=> b!596663 t!79513))

(assert (=> d!209801 t!79513))

(declare-fun t!79515 () Bool)

(declare-fun tb!52101 () Bool)

(assert (=> (and b!596771 (= (toChars!1924 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toChars!1924 (transformation!1174 (rule!1944 (_1!3685 (v!16411 lt!253420)))))) t!79515) tb!52101))

(declare-fun result!58556 () Bool)

(assert (= result!58556 result!58542))

(assert (=> d!209857 t!79515))

(declare-fun tp!186010 () Bool)

(declare-fun b_and!58905 () Bool)

(assert (=> b!596771 (= tp!186010 (and (=> t!79513 result!58554) (=> t!79515 result!58556) b_and!58905))))

(declare-fun e!361251 () Bool)

(assert (=> b!596771 (= e!361251 (and tp!186012 tp!186010))))

(declare-fun tp!186013 () Bool)

(declare-fun e!361248 () Bool)

(declare-fun b!596770 () Bool)

(assert (=> b!596770 (= e!361248 (and tp!186013 (inv!7522 (tag!1436 (h!11338 (t!79480 rules!3103)))) (inv!7525 (transformation!1174 (h!11338 (t!79480 rules!3103)))) e!361251))))

(declare-fun b!596769 () Bool)

(declare-fun e!361249 () Bool)

(declare-fun tp!186011 () Bool)

(assert (=> b!596769 (= e!361249 (and e!361248 tp!186011))))

(assert (=> b!596456 (= tp!185954 e!361249)))

(assert (= b!596770 b!596771))

(assert (= b!596769 b!596770))

(assert (= (and b!596456 (is-Cons!5937 (t!79480 rules!3103))) b!596769))

(declare-fun m!859825 () Bool)

(assert (=> b!596770 m!859825))

(declare-fun m!859827 () Bool)

(assert (=> b!596770 m!859827))

(declare-fun b!596786 () Bool)

(declare-fun e!361257 () Bool)

(assert (=> b!596786 (= e!361257 tp_is_empty!3371)))

(declare-fun b!596788 () Bool)

(declare-fun tp!186027 () Bool)

(assert (=> b!596788 (= e!361257 tp!186027)))

(declare-fun b!596789 () Bool)

(declare-fun tp!186024 () Bool)

(declare-fun tp!186028 () Bool)

(assert (=> b!596789 (= e!361257 (and tp!186024 tp!186028))))

(declare-fun b!596787 () Bool)

(declare-fun tp!186026 () Bool)

(declare-fun tp!186025 () Bool)

(assert (=> b!596787 (= e!361257 (and tp!186026 tp!186025))))

(assert (=> b!596446 (= tp!185953 e!361257)))

(assert (= (and b!596446 (is-ElementMatch!1508 (regex!1174 (rule!1944 token!491)))) b!596786))

(assert (= (and b!596446 (is-Concat!2706 (regex!1174 (rule!1944 token!491)))) b!596787))

(assert (= (and b!596446 (is-Star!1508 (regex!1174 (rule!1944 token!491)))) b!596788))

(assert (= (and b!596446 (is-Union!1508 (regex!1174 (rule!1944 token!491)))) b!596789))

(declare-fun b!596790 () Bool)

(declare-fun e!361258 () Bool)

(declare-fun tp!186029 () Bool)

(assert (=> b!596790 (= e!361258 (and tp_is_empty!3371 tp!186029))))

(assert (=> b!596463 (= tp!185951 e!361258)))

(assert (= (and b!596463 (is-Cons!5936 (t!79479 input!2705))) b!596790))

(declare-fun b!596791 () Bool)

(declare-fun e!361259 () Bool)

(assert (=> b!596791 (= e!361259 tp_is_empty!3371)))

(declare-fun b!596793 () Bool)

(declare-fun tp!186033 () Bool)

(assert (=> b!596793 (= e!361259 tp!186033)))

(declare-fun b!596794 () Bool)

(declare-fun tp!186030 () Bool)

(declare-fun tp!186034 () Bool)

(assert (=> b!596794 (= e!361259 (and tp!186030 tp!186034))))

(declare-fun b!596792 () Bool)

(declare-fun tp!186032 () Bool)

(declare-fun tp!186031 () Bool)

(assert (=> b!596792 (= e!361259 (and tp!186032 tp!186031))))

(assert (=> b!596444 (= tp!185955 e!361259)))

(assert (= (and b!596444 (is-ElementMatch!1508 (regex!1174 (h!11338 rules!3103)))) b!596791))

(assert (= (and b!596444 (is-Concat!2706 (regex!1174 (h!11338 rules!3103)))) b!596792))

(assert (= (and b!596444 (is-Star!1508 (regex!1174 (h!11338 rules!3103)))) b!596793))

(assert (= (and b!596444 (is-Union!1508 (regex!1174 (h!11338 rules!3103)))) b!596794))

(declare-fun b_lambda!23527 () Bool)

(assert (= b_lambda!23519 (or (and b!596453 b_free!16879) (and b!596451 b_free!16883 (= (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toChars!1924 (transformation!1174 (rule!1944 token!491))))) (and b!596771 b_free!16895 (= (toChars!1924 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toChars!1924 (transformation!1174 (rule!1944 token!491))))) b_lambda!23527)))

(declare-fun b_lambda!23529 () Bool)

(assert (= b_lambda!23521 (or (and b!596453 b_free!16879) (and b!596451 b_free!16883 (= (toChars!1924 (transformation!1174 (h!11338 rules!3103))) (toChars!1924 (transformation!1174 (rule!1944 token!491))))) (and b!596771 b_free!16895 (= (toChars!1924 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toChars!1924 (transformation!1174 (rule!1944 token!491))))) b_lambda!23529)))

(declare-fun b_lambda!23531 () Bool)

(assert (= b_lambda!23513 (or (and b!596453 b_free!16877) (and b!596451 b_free!16881 (= (toValue!2065 (transformation!1174 (h!11338 rules!3103))) (toValue!2065 (transformation!1174 (rule!1944 token!491))))) (and b!596771 b_free!16893 (= (toValue!2065 (transformation!1174 (h!11338 (t!79480 rules!3103)))) (toValue!2065 (transformation!1174 (rule!1944 token!491))))) b_lambda!23531)))

(push 1)

(assert (not bm!40412))

(assert (not d!209811))

(assert (not b!596727))

(assert (not b!596645))

(assert (not b!596731))

(assert (not d!209791))

(assert (not b!596736))

(assert (not b!596585))

(assert (not b!596554))

(assert (not b!596556))

(assert (not d!209769))

(assert (not d!209771))

(assert (not b_next!16911))

(assert b_and!58901)

(assert (not b!596636))

(assert (not d!209787))

(assert (not b!596573))

(assert (not d!209823))

(assert (not b_lambda!23527))

(assert (not d!209809))

(assert (not b!596788))

(assert (not b!596769))

(assert b_and!58895)

(assert (not b!596755))

(assert (not b!596643))

(assert (not b!596708))

(assert b_and!58897)

(assert (not b!596572))

(assert (not b!596635))

(assert (not b!596710))

(assert (not b!596669))

(assert (not d!209745))

(assert (not b!596649))

(assert tp_is_empty!3371)

(assert (not b!596638))

(assert (not b!596555))

(assert (not b!596743))

(assert (not b!596676))

(assert (not d!209749))

(assert (not b_lambda!23523))

(assert b_and!58899)

(assert (not b!596630))

(assert (not bm!40411))

(assert (not b_next!16893))

(assert (not d!209857))

(assert (not d!209801))

(assert (not tb!52083))

(assert (not d!209863))

(assert (not b!596673))

(assert (not b!596675))

(assert (not tb!52071))

(assert (not b!596634))

(assert b_and!58905)

(assert (not b!596652))

(assert (not d!209833))

(assert (not d!209797))

(assert (not b!596770))

(assert (not b!596735))

(assert (not b!596715))

(assert (not b_next!16897))

(assert (not d!209839))

(assert (not d!209817))

(assert (not d!209861))

(assert (not d!209747))

(assert (not b!596641))

(assert (not d!209855))

(assert (not b!596742))

(assert (not d!209871))

(assert (not b!596726))

(assert (not b!596792))

(assert (not d!209865))

(assert (not b_next!16899))

(assert (not d!209819))

(assert (not d!209753))

(assert (not b!596724))

(assert (not b!596644))

(assert (not b!596750))

(assert (not b!596651))

(assert (not b!596789))

(assert (not b!596646))

(assert (not b!596729))

(assert (not b!596632))

(assert (not b!596709))

(assert (not b!596640))

(assert b_and!58903)

(assert (not d!209815))

(assert (not d!209813))

(assert (not b!596712))

(assert (not b!596756))

(assert (not b!596730))

(assert (not b!596686))

(assert (not d!209763))

(assert (not b!596650))

(assert (not d!209793))

(assert (not b!596793))

(assert (not d!209869))

(assert (not b_lambda!23529))

(assert (not b!596561))

(assert (not b!596725))

(assert (not b!596794))

(assert (not b_next!16895))

(assert (not d!209757))

(assert (not b!596631))

(assert (not b_lambda!23525))

(assert (not b!596588))

(assert (not b!596734))

(assert (not b!596707))

(assert (not b!596663))

(assert (not b!596732))

(assert (not d!209851))

(assert (not b!596722))

(assert (not b!596664))

(assert (not d!209835))

(assert (not b!596790))

(assert (not b!596787))

(assert (not b!596744))

(assert (not b!596637))

(assert (not b_lambda!23531))

(assert (not b!596648))

(assert (not b!596577))

(assert (not d!209783))

(assert (not tb!52087))

(assert (not tb!52091))

(assert (not d!209843))

(assert (not b_next!16909))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58895)

(assert b_and!58897)

(assert b_and!58899)

(assert (not b_next!16893))

(assert b_and!58905)

(assert (not b_next!16897))

(assert (not b_next!16899))

(assert b_and!58903)

(assert (not b_next!16895))

(assert (not b_next!16909))

(assert (not b_next!16911))

(assert b_and!58901)

(check-sat)

(pop 1)

