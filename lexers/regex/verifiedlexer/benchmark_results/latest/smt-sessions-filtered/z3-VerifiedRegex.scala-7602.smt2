; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401482 () Bool)

(assert start!401482)

(declare-fun b!4202376 () Bool)

(declare-fun b_free!122675 () Bool)

(declare-fun b_next!123379 () Bool)

(assert (=> b!4202376 (= b_free!122675 (not b_next!123379))))

(declare-fun tp!1284147 () Bool)

(declare-fun b_and!329917 () Bool)

(assert (=> b!4202376 (= tp!1284147 b_and!329917)))

(declare-fun b_free!122677 () Bool)

(declare-fun b_next!123381 () Bool)

(assert (=> b!4202376 (= b_free!122677 (not b_next!123381))))

(declare-fun tp!1284151 () Bool)

(declare-fun b_and!329919 () Bool)

(assert (=> b!4202376 (= tp!1284151 b_and!329919)))

(declare-fun b!4202390 () Bool)

(declare-fun b_free!122679 () Bool)

(declare-fun b_next!123383 () Bool)

(assert (=> b!4202390 (= b_free!122679 (not b_next!123383))))

(declare-fun tp!1284152 () Bool)

(declare-fun b_and!329921 () Bool)

(assert (=> b!4202390 (= tp!1284152 b_and!329921)))

(declare-fun b_free!122681 () Bool)

(declare-fun b_next!123385 () Bool)

(assert (=> b!4202390 (= b_free!122681 (not b_next!123385))))

(declare-fun tp!1284162 () Bool)

(declare-fun b_and!329923 () Bool)

(assert (=> b!4202390 (= tp!1284162 b_and!329923)))

(declare-fun b!4202378 () Bool)

(declare-fun b_free!122683 () Bool)

(declare-fun b_next!123387 () Bool)

(assert (=> b!4202378 (= b_free!122683 (not b_next!123387))))

(declare-fun tp!1284157 () Bool)

(declare-fun b_and!329925 () Bool)

(assert (=> b!4202378 (= tp!1284157 b_and!329925)))

(declare-fun b_free!122685 () Bool)

(declare-fun b_next!123389 () Bool)

(assert (=> b!4202378 (= b_free!122685 (not b_next!123389))))

(declare-fun tp!1284154 () Bool)

(declare-fun b_and!329927 () Bool)

(assert (=> b!4202378 (= tp!1284154 b_and!329927)))

(declare-fun b!4202392 () Bool)

(declare-fun b_free!122687 () Bool)

(declare-fun b_next!123391 () Bool)

(assert (=> b!4202392 (= b_free!122687 (not b_next!123391))))

(declare-fun tp!1284150 () Bool)

(declare-fun b_and!329929 () Bool)

(assert (=> b!4202392 (= tp!1284150 b_and!329929)))

(declare-fun b_free!122689 () Bool)

(declare-fun b_next!123393 () Bool)

(assert (=> b!4202392 (= b_free!122689 (not b_next!123393))))

(declare-fun tp!1284163 () Bool)

(declare-fun b_and!329931 () Bool)

(assert (=> b!4202392 (= tp!1284163 b_and!329931)))

(declare-fun b!4202363 () Bool)

(declare-fun res!1725801 () Bool)

(declare-fun e!2608662 () Bool)

(assert (=> b!4202363 (=> (not res!1725801) (not e!2608662))))

(declare-datatypes ((C!25440 0))(
  ( (C!25441 (val!14882 Int)) )
))
(declare-datatypes ((List!46313 0))(
  ( (Nil!46189) (Cons!46189 (h!51609 C!25440) (t!347012 List!46313)) )
))
(declare-fun p!3001 () List!46313)

(declare-fun input!3517 () List!46313)

(declare-fun isPrefix!4577 (List!46313 List!46313) Bool)

(assert (=> b!4202363 (= res!1725801 (isPrefix!4577 p!3001 input!3517))))

(declare-fun b!4202364 () Bool)

(declare-fun res!1725802 () Bool)

(assert (=> b!4202364 (=> (not res!1725802) (not e!2608662))))

(declare-fun pBis!121 () List!46313)

(assert (=> b!4202364 (= res!1725802 (isPrefix!4577 pBis!121 input!3517))))

(declare-fun b!4202365 () Bool)

(declare-datatypes ((List!46314 0))(
  ( (Nil!46190) (Cons!46190 (h!51610 (_ BitVec 16)) (t!347013 List!46314)) )
))
(declare-datatypes ((TokenValue!7948 0))(
  ( (FloatLiteralValue!15896 (text!56081 List!46314)) (TokenValueExt!7947 (__x!28119 Int)) (Broken!39740 (value!240466 List!46314)) (Object!8071) (End!7948) (Def!7948) (Underscore!7948) (Match!7948) (Else!7948) (Error!7948) (Case!7948) (If!7948) (Extends!7948) (Abstract!7948) (Class!7948) (Val!7948) (DelimiterValue!15896 (del!8008 List!46314)) (KeywordValue!7954 (value!240467 List!46314)) (CommentValue!15896 (value!240468 List!46314)) (WhitespaceValue!15896 (value!240469 List!46314)) (IndentationValue!7948 (value!240470 List!46314)) (String!53609) (Int32!7948) (Broken!39741 (value!240471 List!46314)) (Boolean!7949) (Unit!65282) (OperatorValue!7951 (op!8008 List!46314)) (IdentifierValue!15896 (value!240472 List!46314)) (IdentifierValue!15897 (value!240473 List!46314)) (WhitespaceValue!15897 (value!240474 List!46314)) (True!15896) (False!15896) (Broken!39742 (value!240475 List!46314)) (Broken!39743 (value!240476 List!46314)) (True!15897) (RightBrace!7948) (RightBracket!7948) (Colon!7948) (Null!7948) (Comma!7948) (LeftBracket!7948) (False!15897) (LeftBrace!7948) (ImaginaryLiteralValue!7948 (text!56082 List!46314)) (StringLiteralValue!23844 (value!240477 List!46314)) (EOFValue!7948 (value!240478 List!46314)) (IdentValue!7948 (value!240479 List!46314)) (DelimiterValue!15897 (value!240480 List!46314)) (DedentValue!7948 (value!240481 List!46314)) (NewLineValue!7948 (value!240482 List!46314)) (IntegerValue!23844 (value!240483 (_ BitVec 32)) (text!56083 List!46314)) (IntegerValue!23845 (value!240484 Int) (text!56084 List!46314)) (Times!7948) (Or!7948) (Equal!7948) (Minus!7948) (Broken!39744 (value!240485 List!46314)) (And!7948) (Div!7948) (LessEqual!7948) (Mod!7948) (Concat!20571) (Not!7948) (Plus!7948) (SpaceValue!7948 (value!240486 List!46314)) (IntegerValue!23846 (value!240487 Int) (text!56085 List!46314)) (StringLiteralValue!23845 (text!56086 List!46314)) (FloatLiteralValue!15897 (text!56087 List!46314)) (BytesLiteralValue!7948 (value!240488 List!46314)) (CommentValue!15897 (value!240489 List!46314)) (StringLiteralValue!23846 (value!240490 List!46314)) (ErrorTokenValue!7948 (msg!8009 List!46314)) )
))
(declare-datatypes ((IArray!27863 0))(
  ( (IArray!27864 (innerList!13989 List!46313)) )
))
(declare-datatypes ((Regex!12623 0))(
  ( (ElementMatch!12623 (c!716438 C!25440)) (Concat!20572 (regOne!25758 Regex!12623) (regTwo!25758 Regex!12623)) (EmptyExpr!12623) (Star!12623 (reg!12952 Regex!12623)) (EmptyLang!12623) (Union!12623 (regOne!25759 Regex!12623) (regTwo!25759 Regex!12623)) )
))
(declare-datatypes ((String!53610 0))(
  ( (String!53611 (value!240491 String)) )
))
(declare-datatypes ((Conc!13929 0))(
  ( (Node!13929 (left!34403 Conc!13929) (right!34733 Conc!13929) (csize!28088 Int) (cheight!14140 Int)) (Leaf!21532 (xs!17235 IArray!27863) (csize!28089 Int)) (Empty!13929) )
))
(declare-datatypes ((BalanceConc!27452 0))(
  ( (BalanceConc!27453 (c!716439 Conc!13929)) )
))
(declare-datatypes ((TokenValueInjection!15324 0))(
  ( (TokenValueInjection!15325 (toValue!10426 Int) (toChars!10285 Int)) )
))
(declare-datatypes ((Rule!15236 0))(
  ( (Rule!15237 (regex!7718 Regex!12623) (tag!8582 String!53610) (isSeparator!7718 Bool) (transformation!7718 TokenValueInjection!15324)) )
))
(declare-datatypes ((List!46315 0))(
  ( (Nil!46191) (Cons!46191 (h!51611 Rule!15236) (t!347014 List!46315)) )
))
(declare-fun rules!3967 () List!46315)

(declare-fun e!2608667 () Bool)

(declare-fun e!2608665 () Bool)

(declare-fun tp!1284159 () Bool)

(declare-fun inv!60754 (String!53610) Bool)

(declare-fun inv!60757 (TokenValueInjection!15324) Bool)

(assert (=> b!4202365 (= e!2608665 (and tp!1284159 (inv!60754 (tag!8582 (h!51611 rules!3967))) (inv!60757 (transformation!7718 (h!51611 rules!3967))) e!2608667))))

(declare-fun tp!1284158 () Bool)

(declare-fun e!2608670 () Bool)

(declare-fun b!4202366 () Bool)

(declare-datatypes ((Token!14138 0))(
  ( (Token!14139 (value!240492 TokenValue!7948) (rule!10816 Rule!15236) (size!33939 Int) (originalCharacters!8100 List!46313)) )
))
(declare-fun tBis!41 () Token!14138)

(declare-fun e!2608666 () Bool)

(assert (=> b!4202366 (= e!2608670 (and tp!1284158 (inv!60754 (tag!8582 (rule!10816 tBis!41))) (inv!60757 (transformation!7718 (rule!10816 tBis!41))) e!2608666))))

(declare-fun b!4202367 () Bool)

(declare-fun e!2608664 () Bool)

(declare-fun tp_is_empty!22213 () Bool)

(declare-fun tp!1284153 () Bool)

(assert (=> b!4202367 (= e!2608664 (and tp_is_empty!22213 tp!1284153))))

(declare-fun b!4202368 () Bool)

(declare-fun res!1725797 () Bool)

(declare-fun e!2608668 () Bool)

(assert (=> b!4202368 (=> res!1725797 e!2608668)))

(declare-fun suffixBis!41 () List!46313)

(declare-fun ++!11792 (List!46313 List!46313) List!46313)

(assert (=> b!4202368 (= res!1725797 (not (= (++!11792 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4202369 () Bool)

(declare-fun res!1725806 () Bool)

(assert (=> b!4202369 (=> (not res!1725806) (not e!2608662))))

(declare-datatypes ((LexerInterface!7313 0))(
  ( (LexerInterfaceExt!7310 (__x!28120 Int)) (Lexer!7311) )
))
(declare-fun thiss!26544 () LexerInterface!7313)

(declare-fun rulesInvariant!6524 (LexerInterface!7313 List!46315) Bool)

(assert (=> b!4202369 (= res!1725806 (rulesInvariant!6524 thiss!26544 rules!3967))))

(declare-fun b!4202370 () Bool)

(assert (=> b!4202370 (= e!2608668 true)))

(declare-datatypes ((tuple2!43946 0))(
  ( (tuple2!43947 (_1!25107 Token!14138) (_2!25107 List!46313)) )
))
(declare-datatypes ((Option!9906 0))(
  ( (None!9905) (Some!9905 (v!40759 tuple2!43946)) )
))
(declare-fun lt!1496765 () Option!9906)

(declare-fun maxPrefixOneRule!3308 (LexerInterface!7313 Rule!15236 List!46313) Option!9906)

(assert (=> b!4202370 (= lt!1496765 (maxPrefixOneRule!3308 thiss!26544 (h!51611 rules!3967) input!3517))))

(declare-fun e!2608651 () Bool)

(declare-fun rBis!178 () Rule!15236)

(declare-fun tp!1284161 () Bool)

(declare-fun e!2608657 () Bool)

(declare-fun b!4202371 () Bool)

(assert (=> b!4202371 (= e!2608651 (and tp!1284161 (inv!60754 (tag!8582 rBis!178)) (inv!60757 (transformation!7718 rBis!178)) e!2608657))))

(declare-fun b!4202372 () Bool)

(declare-fun res!1725809 () Bool)

(assert (=> b!4202372 (=> (not res!1725809) (not e!2608662))))

(declare-fun t!8364 () Token!14138)

(declare-fun suffix!1557 () List!46313)

(declare-fun maxPrefix!4353 (LexerInterface!7313 List!46315 List!46313) Option!9906)

(assert (=> b!4202372 (= res!1725809 (= (maxPrefix!4353 thiss!26544 rules!3967 input!3517) (Some!9905 (tuple2!43947 t!8364 suffix!1557))))))

(declare-fun res!1725803 () Bool)

(assert (=> start!401482 (=> (not res!1725803) (not e!2608662))))

(get-info :version)

(assert (=> start!401482 (= res!1725803 ((_ is Lexer!7311) thiss!26544))))

(assert (=> start!401482 e!2608662))

(declare-fun e!2608660 () Bool)

(declare-fun inv!60758 (Token!14138) Bool)

(assert (=> start!401482 (and (inv!60758 tBis!41) e!2608660)))

(assert (=> start!401482 true))

(assert (=> start!401482 e!2608651))

(declare-fun e!2608655 () Bool)

(assert (=> start!401482 e!2608655))

(declare-fun e!2608652 () Bool)

(assert (=> start!401482 e!2608652))

(declare-fun e!2608672 () Bool)

(assert (=> start!401482 e!2608672))

(declare-fun e!2608663 () Bool)

(assert (=> start!401482 (and (inv!60758 t!8364) e!2608663)))

(assert (=> start!401482 e!2608664))

(declare-fun e!2608656 () Bool)

(assert (=> start!401482 e!2608656))

(declare-fun e!2608649 () Bool)

(assert (=> start!401482 e!2608649))

(declare-fun b!4202373 () Bool)

(declare-fun tp!1284165 () Bool)

(assert (=> b!4202373 (= e!2608656 (and tp_is_empty!22213 tp!1284165))))

(declare-fun e!2608669 () Bool)

(declare-fun b!4202374 () Bool)

(declare-fun tp!1284160 () Bool)

(declare-fun inv!21 (TokenValue!7948) Bool)

(assert (=> b!4202374 (= e!2608663 (and (inv!21 (value!240492 t!8364)) e!2608669 tp!1284160))))

(declare-fun b!4202375 () Bool)

(declare-fun tp!1284166 () Bool)

(assert (=> b!4202375 (= e!2608652 (and e!2608665 tp!1284166))))

(declare-fun e!2608659 () Bool)

(assert (=> b!4202376 (= e!2608659 (and tp!1284147 tp!1284151))))

(declare-fun b!4202377 () Bool)

(declare-fun res!1725796 () Bool)

(assert (=> b!4202377 (=> res!1725796 e!2608668)))

(declare-fun list!16689 (BalanceConc!27452) List!46313)

(declare-fun charsOf!5141 (Token!14138) BalanceConc!27452)

(assert (=> b!4202377 (= res!1725796 (not (= (list!16689 (charsOf!5141 tBis!41)) pBis!121)))))

(assert (=> b!4202378 (= e!2608667 (and tp!1284157 tp!1284154))))

(declare-fun b!4202379 () Bool)

(assert (=> b!4202379 (= e!2608662 (not e!2608668))))

(declare-fun res!1725808 () Bool)

(assert (=> b!4202379 (=> res!1725808 e!2608668)))

(assert (=> b!4202379 (= res!1725808 (not (= (maxPrefixOneRule!3308 thiss!26544 rBis!178 input!3517) (Some!9905 (tuple2!43947 tBis!41 suffixBis!41)))))))

(assert (=> b!4202379 (isPrefix!4577 input!3517 input!3517)))

(declare-datatypes ((Unit!65283 0))(
  ( (Unit!65284) )
))
(declare-fun lt!1496766 () Unit!65283)

(declare-fun lemmaIsPrefixRefl!2994 (List!46313 List!46313) Unit!65283)

(assert (=> b!4202379 (= lt!1496766 (lemmaIsPrefixRefl!2994 input!3517 input!3517))))

(declare-fun b!4202380 () Bool)

(declare-fun res!1725800 () Bool)

(assert (=> b!4202380 (=> (not res!1725800) (not e!2608662))))

(declare-fun contains!9533 (List!46315 Rule!15236) Bool)

(assert (=> b!4202380 (= res!1725800 (contains!9533 rules!3967 rBis!178))))

(declare-fun b!4202381 () Bool)

(declare-fun res!1725798 () Bool)

(assert (=> b!4202381 (=> (not res!1725798) (not e!2608662))))

(declare-fun isEmpty!27347 (List!46315) Bool)

(assert (=> b!4202381 (= res!1725798 (not (isEmpty!27347 rules!3967)))))

(declare-fun b!4202382 () Bool)

(declare-fun res!1725804 () Bool)

(assert (=> b!4202382 (=> res!1725804 e!2608668)))

(assert (=> b!4202382 (= res!1725804 (or (and ((_ is Cons!46191) rules!3967) ((_ is Nil!46191) (t!347014 rules!3967))) (not ((_ is Cons!46191) rules!3967)) (= (h!51611 rules!3967) rBis!178)))))

(declare-fun b!4202383 () Bool)

(declare-fun tp!1284156 () Bool)

(assert (=> b!4202383 (= e!2608655 (and tp_is_empty!22213 tp!1284156))))

(declare-fun b!4202384 () Bool)

(declare-fun res!1725799 () Bool)

(assert (=> b!4202384 (=> (not res!1725799) (not e!2608662))))

(declare-fun ruleValid!3430 (LexerInterface!7313 Rule!15236) Bool)

(assert (=> b!4202384 (= res!1725799 (ruleValid!3430 thiss!26544 rBis!178))))

(declare-fun b!4202385 () Bool)

(declare-fun res!1725807 () Bool)

(assert (=> b!4202385 (=> (not res!1725807) (not e!2608662))))

(assert (=> b!4202385 (= res!1725807 (= (++!11792 p!3001 suffix!1557) input!3517))))

(declare-fun b!4202386 () Bool)

(declare-fun tp!1284155 () Bool)

(assert (=> b!4202386 (= e!2608669 (and tp!1284155 (inv!60754 (tag!8582 (rule!10816 t!8364))) (inv!60757 (transformation!7718 (rule!10816 t!8364))) e!2608659))))

(declare-fun b!4202387 () Bool)

(declare-fun tp!1284164 () Bool)

(assert (=> b!4202387 (= e!2608649 (and tp_is_empty!22213 tp!1284164))))

(declare-fun b!4202388 () Bool)

(declare-fun res!1725805 () Bool)

(assert (=> b!4202388 (=> res!1725805 e!2608668)))

(assert (=> b!4202388 (= res!1725805 (not (= (rule!10816 tBis!41) rBis!178)))))

(declare-fun tp!1284148 () Bool)

(declare-fun b!4202389 () Bool)

(assert (=> b!4202389 (= e!2608660 (and (inv!21 (value!240492 tBis!41)) e!2608670 tp!1284148))))

(assert (=> b!4202390 (= e!2608666 (and tp!1284152 tp!1284162))))

(declare-fun b!4202391 () Bool)

(declare-fun tp!1284149 () Bool)

(assert (=> b!4202391 (= e!2608672 (and tp_is_empty!22213 tp!1284149))))

(assert (=> b!4202392 (= e!2608657 (and tp!1284150 tp!1284163))))

(assert (= (and start!401482 res!1725803) b!4202385))

(assert (= (and b!4202385 res!1725807) b!4202363))

(assert (= (and b!4202363 res!1725801) b!4202364))

(assert (= (and b!4202364 res!1725802) b!4202381))

(assert (= (and b!4202381 res!1725798) b!4202369))

(assert (= (and b!4202369 res!1725806) b!4202380))

(assert (= (and b!4202380 res!1725800) b!4202372))

(assert (= (and b!4202372 res!1725809) b!4202384))

(assert (= (and b!4202384 res!1725799) b!4202379))

(assert (= (and b!4202379 (not res!1725808)) b!4202388))

(assert (= (and b!4202388 (not res!1725805)) b!4202377))

(assert (= (and b!4202377 (not res!1725796)) b!4202368))

(assert (= (and b!4202368 (not res!1725797)) b!4202382))

(assert (= (and b!4202382 (not res!1725804)) b!4202370))

(assert (= b!4202366 b!4202390))

(assert (= b!4202389 b!4202366))

(assert (= start!401482 b!4202389))

(assert (= b!4202371 b!4202392))

(assert (= start!401482 b!4202371))

(assert (= (and start!401482 ((_ is Cons!46189) p!3001)) b!4202383))

(assert (= b!4202365 b!4202378))

(assert (= b!4202375 b!4202365))

(assert (= (and start!401482 ((_ is Cons!46191) rules!3967)) b!4202375))

(assert (= (and start!401482 ((_ is Cons!46189) input!3517)) b!4202391))

(assert (= b!4202386 b!4202376))

(assert (= b!4202374 b!4202386))

(assert (= start!401482 b!4202374))

(assert (= (and start!401482 ((_ is Cons!46189) pBis!121)) b!4202367))

(assert (= (and start!401482 ((_ is Cons!46189) suffix!1557)) b!4202373))

(assert (= (and start!401482 ((_ is Cons!46189) suffixBis!41)) b!4202387))

(declare-fun m!4790521 () Bool)

(assert (=> b!4202371 m!4790521))

(declare-fun m!4790523 () Bool)

(assert (=> b!4202371 m!4790523))

(declare-fun m!4790525 () Bool)

(assert (=> b!4202370 m!4790525))

(declare-fun m!4790527 () Bool)

(assert (=> b!4202380 m!4790527))

(declare-fun m!4790529 () Bool)

(assert (=> b!4202389 m!4790529))

(declare-fun m!4790531 () Bool)

(assert (=> b!4202368 m!4790531))

(declare-fun m!4790533 () Bool)

(assert (=> b!4202372 m!4790533))

(declare-fun m!4790535 () Bool)

(assert (=> start!401482 m!4790535))

(declare-fun m!4790537 () Bool)

(assert (=> start!401482 m!4790537))

(declare-fun m!4790539 () Bool)

(assert (=> b!4202364 m!4790539))

(declare-fun m!4790541 () Bool)

(assert (=> b!4202366 m!4790541))

(declare-fun m!4790543 () Bool)

(assert (=> b!4202366 m!4790543))

(declare-fun m!4790545 () Bool)

(assert (=> b!4202386 m!4790545))

(declare-fun m!4790547 () Bool)

(assert (=> b!4202386 m!4790547))

(declare-fun m!4790549 () Bool)

(assert (=> b!4202369 m!4790549))

(declare-fun m!4790551 () Bool)

(assert (=> b!4202379 m!4790551))

(declare-fun m!4790553 () Bool)

(assert (=> b!4202379 m!4790553))

(declare-fun m!4790555 () Bool)

(assert (=> b!4202379 m!4790555))

(declare-fun m!4790557 () Bool)

(assert (=> b!4202374 m!4790557))

(declare-fun m!4790559 () Bool)

(assert (=> b!4202377 m!4790559))

(assert (=> b!4202377 m!4790559))

(declare-fun m!4790561 () Bool)

(assert (=> b!4202377 m!4790561))

(declare-fun m!4790563 () Bool)

(assert (=> b!4202384 m!4790563))

(declare-fun m!4790565 () Bool)

(assert (=> b!4202363 m!4790565))

(declare-fun m!4790567 () Bool)

(assert (=> b!4202381 m!4790567))

(declare-fun m!4790569 () Bool)

(assert (=> b!4202365 m!4790569))

(declare-fun m!4790571 () Bool)

(assert (=> b!4202365 m!4790571))

(declare-fun m!4790573 () Bool)

(assert (=> b!4202385 m!4790573))

(check-sat b_and!329923 (not b!4202364) (not b!4202368) b_and!329931 (not b_next!123393) (not b!4202381) (not b!4202380) (not b!4202374) (not start!401482) (not b!4202371) (not b!4202386) (not b!4202375) (not b!4202365) (not b!4202373) (not b!4202377) (not b!4202389) (not b!4202369) b_and!329921 tp_is_empty!22213 (not b!4202379) (not b_next!123379) (not b!4202387) (not b_next!123389) b_and!329927 b_and!329917 (not b!4202385) (not b_next!123387) (not b!4202383) (not b!4202363) (not b_next!123391) (not b!4202367) b_and!329925 (not b!4202384) (not b_next!123383) (not b!4202372) (not b!4202370) (not b!4202366) (not b_next!123381) b_and!329929 (not b_next!123385) b_and!329919 (not b!4202391))
(check-sat b_and!329923 b_and!329921 (not b_next!123379) b_and!329931 (not b_next!123393) (not b_next!123389) b_and!329927 b_and!329917 (not b_next!123387) (not b_next!123383) (not b_next!123391) b_and!329925 (not b_next!123381) b_and!329929 (not b_next!123385) b_and!329919)
