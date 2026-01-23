; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347722 () Bool)

(assert start!347722)

(declare-fun b!3693377 () Bool)

(declare-fun b_free!98113 () Bool)

(declare-fun b_next!98817 () Bool)

(assert (=> b!3693377 (= b_free!98113 (not b_next!98817))))

(declare-fun tp!1122478 () Bool)

(declare-fun b_and!275919 () Bool)

(assert (=> b!3693377 (= tp!1122478 b_and!275919)))

(declare-fun b_free!98115 () Bool)

(declare-fun b_next!98819 () Bool)

(assert (=> b!3693377 (= b_free!98115 (not b_next!98819))))

(declare-fun tp!1122472 () Bool)

(declare-fun b_and!275921 () Bool)

(assert (=> b!3693377 (= tp!1122472 b_and!275921)))

(declare-fun b!3693374 () Bool)

(declare-fun b_free!98117 () Bool)

(declare-fun b_next!98821 () Bool)

(assert (=> b!3693374 (= b_free!98117 (not b_next!98821))))

(declare-fun tp!1122479 () Bool)

(declare-fun b_and!275923 () Bool)

(assert (=> b!3693374 (= tp!1122479 b_and!275923)))

(declare-fun b_free!98119 () Bool)

(declare-fun b_next!98823 () Bool)

(assert (=> b!3693374 (= b_free!98119 (not b_next!98823))))

(declare-fun tp!1122474 () Bool)

(declare-fun b_and!275925 () Bool)

(assert (=> b!3693374 (= tp!1122474 b_and!275925)))

(declare-fun b!3693368 () Bool)

(declare-fun e!2287052 () Bool)

(declare-fun e!2287054 () Bool)

(declare-fun tp!1122475 () Bool)

(assert (=> b!3693368 (= e!2287052 (and e!2287054 tp!1122475))))

(declare-fun b!3693369 () Bool)

(declare-fun res!1501586 () Bool)

(declare-fun e!2287058 () Bool)

(assert (=> b!3693369 (=> (not res!1501586) (not e!2287058))))

(declare-datatypes ((List!39279 0))(
  ( (Nil!39155) (Cons!39155 (h!44575 (_ BitVec 16)) (t!301488 List!39279)) )
))
(declare-datatypes ((TokenValue!6156 0))(
  ( (FloatLiteralValue!12312 (text!43537 List!39279)) (TokenValueExt!6155 (__x!24529 Int)) (Broken!30780 (value!189319 List!39279)) (Object!6279) (End!6156) (Def!6156) (Underscore!6156) (Match!6156) (Else!6156) (Error!6156) (Case!6156) (If!6156) (Extends!6156) (Abstract!6156) (Class!6156) (Val!6156) (DelimiterValue!12312 (del!6216 List!39279)) (KeywordValue!6162 (value!189320 List!39279)) (CommentValue!12312 (value!189321 List!39279)) (WhitespaceValue!12312 (value!189322 List!39279)) (IndentationValue!6156 (value!189323 List!39279)) (String!44113) (Int32!6156) (Broken!30781 (value!189324 List!39279)) (Boolean!6157) (Unit!57157) (OperatorValue!6159 (op!6216 List!39279)) (IdentifierValue!12312 (value!189325 List!39279)) (IdentifierValue!12313 (value!189326 List!39279)) (WhitespaceValue!12313 (value!189327 List!39279)) (True!12312) (False!12312) (Broken!30782 (value!189328 List!39279)) (Broken!30783 (value!189329 List!39279)) (True!12313) (RightBrace!6156) (RightBracket!6156) (Colon!6156) (Null!6156) (Comma!6156) (LeftBracket!6156) (False!12313) (LeftBrace!6156) (ImaginaryLiteralValue!6156 (text!43538 List!39279)) (StringLiteralValue!18468 (value!189330 List!39279)) (EOFValue!6156 (value!189331 List!39279)) (IdentValue!6156 (value!189332 List!39279)) (DelimiterValue!12313 (value!189333 List!39279)) (DedentValue!6156 (value!189334 List!39279)) (NewLineValue!6156 (value!189335 List!39279)) (IntegerValue!18468 (value!189336 (_ BitVec 32)) (text!43539 List!39279)) (IntegerValue!18469 (value!189337 Int) (text!43540 List!39279)) (Times!6156) (Or!6156) (Equal!6156) (Minus!6156) (Broken!30784 (value!189338 List!39279)) (And!6156) (Div!6156) (LessEqual!6156) (Mod!6156) (Concat!16841) (Not!6156) (Plus!6156) (SpaceValue!6156 (value!189339 List!39279)) (IntegerValue!18470 (value!189340 Int) (text!43541 List!39279)) (StringLiteralValue!18469 (text!43542 List!39279)) (FloatLiteralValue!12313 (text!43543 List!39279)) (BytesLiteralValue!6156 (value!189341 List!39279)) (CommentValue!12313 (value!189342 List!39279)) (StringLiteralValue!18470 (value!189343 List!39279)) (ErrorTokenValue!6156 (msg!6217 List!39279)) )
))
(declare-datatypes ((C!21556 0))(
  ( (C!21557 (val!12826 Int)) )
))
(declare-datatypes ((Regex!10685 0))(
  ( (ElementMatch!10685 (c!638564 C!21556)) (Concat!16842 (regOne!21882 Regex!10685) (regTwo!21882 Regex!10685)) (EmptyExpr!10685) (Star!10685 (reg!11014 Regex!10685)) (EmptyLang!10685) (Union!10685 (regOne!21883 Regex!10685) (regTwo!21883 Regex!10685)) )
))
(declare-datatypes ((String!44114 0))(
  ( (String!44115 (value!189344 String)) )
))
(declare-datatypes ((List!39280 0))(
  ( (Nil!39156) (Cons!39156 (h!44576 C!21556) (t!301489 List!39280)) )
))
(declare-datatypes ((IArray!24051 0))(
  ( (IArray!24052 (innerList!12083 List!39280)) )
))
(declare-datatypes ((Conc!12023 0))(
  ( (Node!12023 (left!30528 Conc!12023) (right!30858 Conc!12023) (csize!24276 Int) (cheight!12234 Int)) (Leaf!18597 (xs!15225 IArray!24051) (csize!24277 Int)) (Empty!12023) )
))
(declare-datatypes ((BalanceConc!23660 0))(
  ( (BalanceConc!23661 (c!638565 Conc!12023)) )
))
(declare-datatypes ((TokenValueInjection!11740 0))(
  ( (TokenValueInjection!11741 (toValue!8254 Int) (toChars!8113 Int)) )
))
(declare-datatypes ((Rule!11652 0))(
  ( (Rule!11653 (regex!5926 Regex!10685) (tag!6748 String!44114) (isSeparator!5926 Bool) (transformation!5926 TokenValueInjection!11740)) )
))
(declare-datatypes ((List!39281 0))(
  ( (Nil!39157) (Cons!39157 (h!44577 Rule!11652) (t!301490 List!39281)) )
))
(declare-fun rules!3598 () List!39281)

(declare-datatypes ((Token!11206 0))(
  ( (Token!11207 (value!189345 TokenValue!6156) (rule!8776 Rule!11652) (size!29895 Int) (originalCharacters!6634 List!39280)) )
))
(declare-fun token!544 () Token!11206)

(assert (=> b!3693369 (= res!1501586 (= (h!44577 rules!3598) (rule!8776 token!544)))))

(declare-fun b!3693370 () Bool)

(declare-fun e!2287060 () Bool)

(declare-fun tp_is_empty!18445 () Bool)

(declare-fun tp!1122473 () Bool)

(assert (=> b!3693370 (= e!2287060 (and tp_is_empty!18445 tp!1122473))))

(declare-fun b!3693371 () Bool)

(declare-fun res!1501582 () Bool)

(assert (=> b!3693371 (=> (not res!1501582) (not e!2287058))))

(declare-datatypes ((tuple2!39054 0))(
  ( (tuple2!39055 (_1!22661 Token!11206) (_2!22661 List!39280)) )
))
(declare-datatypes ((Option!8438 0))(
  ( (None!8437) (Some!8437 (v!38393 tuple2!39054)) )
))
(declare-fun lt!1292862 () Option!8438)

(declare-fun get!12992 (Option!8438) tuple2!39054)

(assert (=> b!3693371 (= res!1501582 (= (_1!22661 (get!12992 lt!1292862)) token!544))))

(declare-fun e!2287057 () Bool)

(declare-fun tp!1122477 () Bool)

(declare-fun b!3693372 () Bool)

(declare-fun e!2287059 () Bool)

(declare-fun inv!21 (TokenValue!6156) Bool)

(assert (=> b!3693372 (= e!2287059 (and (inv!21 (value!189345 token!544)) e!2287057 tp!1122477))))

(declare-fun b!3693373 () Bool)

(declare-fun res!1501583 () Bool)

(declare-fun e!2287053 () Bool)

(assert (=> b!3693373 (=> (not res!1501583) (not e!2287053))))

(declare-datatypes ((LexerInterface!5515 0))(
  ( (LexerInterfaceExt!5512 (__x!24530 Int)) (Lexer!5513) )
))
(declare-fun thiss!25322 () LexerInterface!5515)

(declare-fun rulesInvariant!4912 (LexerInterface!5515 List!39281) Bool)

(assert (=> b!3693373 (= res!1501583 (rulesInvariant!4912 thiss!25322 rules!3598))))

(declare-fun e!2287055 () Bool)

(assert (=> b!3693374 (= e!2287055 (and tp!1122479 tp!1122474))))

(declare-fun b!3693367 () Bool)

(declare-fun e!2287062 () Bool)

(assert (=> b!3693367 (= e!2287053 e!2287062)))

(declare-fun res!1501584 () Bool)

(assert (=> b!3693367 (=> (not res!1501584) (not e!2287062))))

(declare-fun lt!1292863 () Option!8438)

(declare-fun isDefined!6631 (Option!8438) Bool)

(assert (=> b!3693367 (= res!1501584 (isDefined!6631 lt!1292863))))

(declare-fun input!3172 () List!39280)

(declare-fun maxPrefix!3037 (LexerInterface!5515 List!39281 List!39280) Option!8438)

(assert (=> b!3693367 (= lt!1292863 (maxPrefix!3037 thiss!25322 rules!3598 input!3172))))

(declare-fun res!1501581 () Bool)

(assert (=> start!347722 (=> (not res!1501581) (not e!2287053))))

(get-info :version)

(assert (=> start!347722 (= res!1501581 ((_ is Lexer!5513) thiss!25322))))

(assert (=> start!347722 e!2287053))

(assert (=> start!347722 true))

(assert (=> start!347722 e!2287052))

(declare-fun inv!52626 (Token!11206) Bool)

(assert (=> start!347722 (and (inv!52626 token!544) e!2287059)))

(assert (=> start!347722 e!2287060))

(declare-fun tp!1122476 () Bool)

(declare-fun b!3693375 () Bool)

(declare-fun e!2287061 () Bool)

(declare-fun inv!52623 (String!44114) Bool)

(declare-fun inv!52627 (TokenValueInjection!11740) Bool)

(assert (=> b!3693375 (= e!2287054 (and tp!1122476 (inv!52623 (tag!6748 (h!44577 rules!3598))) (inv!52627 (transformation!5926 (h!44577 rules!3598))) e!2287061))))

(declare-fun b!3693376 () Bool)

(declare-fun res!1501588 () Bool)

(assert (=> b!3693376 (=> (not res!1501588) (not e!2287062))))

(assert (=> b!3693376 (= res!1501588 (= (_1!22661 (get!12992 lt!1292863)) token!544))))

(assert (=> b!3693377 (= e!2287061 (and tp!1122478 tp!1122472))))

(declare-fun b!3693378 () Bool)

(declare-fun res!1501585 () Bool)

(assert (=> b!3693378 (=> (not res!1501585) (not e!2287053))))

(declare-fun isEmpty!23338 (List!39281) Bool)

(assert (=> b!3693378 (= res!1501585 (not (isEmpty!23338 rules!3598)))))

(declare-fun b!3693379 () Bool)

(declare-fun validRegex!4892 (Regex!10685) Bool)

(assert (=> b!3693379 (= e!2287058 (not (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))))

(declare-fun lt!1292864 () List!39280)

(declare-fun list!14633 (BalanceConc!23660) List!39280)

(declare-fun charsOf!3925 (Token!11206) BalanceConc!23660)

(assert (=> b!3693379 (= lt!1292864 (list!14633 (charsOf!3925 token!544)))))

(declare-fun b!3693380 () Bool)

(assert (=> b!3693380 (= e!2287062 e!2287058)))

(declare-fun res!1501580 () Bool)

(assert (=> b!3693380 (=> (not res!1501580) (not e!2287058))))

(assert (=> b!3693380 (= res!1501580 (isDefined!6631 lt!1292862))))

(declare-fun maxPrefixOneRule!2151 (LexerInterface!5515 Rule!11652 List!39280) Option!8438)

(assert (=> b!3693380 (= lt!1292862 (maxPrefixOneRule!2151 thiss!25322 (h!44577 rules!3598) input!3172))))

(declare-fun b!3693381 () Bool)

(declare-fun res!1501587 () Bool)

(assert (=> b!3693381 (=> (not res!1501587) (not e!2287062))))

(assert (=> b!3693381 (= res!1501587 ((_ is Cons!39157) rules!3598))))

(declare-fun tp!1122480 () Bool)

(declare-fun b!3693382 () Bool)

(assert (=> b!3693382 (= e!2287057 (and tp!1122480 (inv!52623 (tag!6748 (rule!8776 token!544))) (inv!52627 (transformation!5926 (rule!8776 token!544))) e!2287055))))

(assert (= (and start!347722 res!1501581) b!3693373))

(assert (= (and b!3693373 res!1501583) b!3693378))

(assert (= (and b!3693378 res!1501585) b!3693367))

(assert (= (and b!3693367 res!1501584) b!3693376))

(assert (= (and b!3693376 res!1501588) b!3693381))

(assert (= (and b!3693381 res!1501587) b!3693380))

(assert (= (and b!3693380 res!1501580) b!3693371))

(assert (= (and b!3693371 res!1501582) b!3693369))

(assert (= (and b!3693369 res!1501586) b!3693379))

(assert (= b!3693375 b!3693377))

(assert (= b!3693368 b!3693375))

(assert (= (and start!347722 ((_ is Cons!39157) rules!3598)) b!3693368))

(assert (= b!3693382 b!3693374))

(assert (= b!3693372 b!3693382))

(assert (= start!347722 b!3693372))

(assert (= (and start!347722 ((_ is Cons!39156) input!3172)) b!3693370))

(declare-fun m!4205503 () Bool)

(assert (=> b!3693379 m!4205503))

(declare-fun m!4205505 () Bool)

(assert (=> b!3693379 m!4205505))

(assert (=> b!3693379 m!4205505))

(declare-fun m!4205507 () Bool)

(assert (=> b!3693379 m!4205507))

(declare-fun m!4205509 () Bool)

(assert (=> b!3693373 m!4205509))

(declare-fun m!4205511 () Bool)

(assert (=> start!347722 m!4205511))

(declare-fun m!4205513 () Bool)

(assert (=> b!3693382 m!4205513))

(declare-fun m!4205515 () Bool)

(assert (=> b!3693382 m!4205515))

(declare-fun m!4205517 () Bool)

(assert (=> b!3693380 m!4205517))

(declare-fun m!4205519 () Bool)

(assert (=> b!3693380 m!4205519))

(declare-fun m!4205521 () Bool)

(assert (=> b!3693375 m!4205521))

(declare-fun m!4205523 () Bool)

(assert (=> b!3693375 m!4205523))

(declare-fun m!4205525 () Bool)

(assert (=> b!3693372 m!4205525))

(declare-fun m!4205527 () Bool)

(assert (=> b!3693371 m!4205527))

(declare-fun m!4205529 () Bool)

(assert (=> b!3693376 m!4205529))

(declare-fun m!4205531 () Bool)

(assert (=> b!3693367 m!4205531))

(declare-fun m!4205533 () Bool)

(assert (=> b!3693367 m!4205533))

(declare-fun m!4205535 () Bool)

(assert (=> b!3693378 m!4205535))

(check-sat (not b!3693379) tp_is_empty!18445 b_and!275923 (not b!3693375) (not b_next!98823) b_and!275921 (not b!3693370) (not b!3693373) (not b!3693372) b_and!275919 (not b_next!98817) (not b!3693378) (not b!3693382) (not b!3693371) (not start!347722) (not b!3693380) b_and!275925 (not b!3693367) (not b_next!98821) (not b!3693376) (not b_next!98819) (not b!3693368))
(check-sat (not b_next!98817) b_and!275923 b_and!275925 (not b_next!98823) b_and!275921 (not b_next!98821) (not b_next!98819) b_and!275919)
(get-model)

(declare-fun d!1083724 () Bool)

(declare-fun c!638576 () Bool)

(assert (=> d!1083724 (= c!638576 ((_ is IntegerValue!18468) (value!189345 token!544)))))

(declare-fun e!2287091 () Bool)

(assert (=> d!1083724 (= (inv!21 (value!189345 token!544)) e!2287091)))

(declare-fun b!3693426 () Bool)

(declare-fun e!2287093 () Bool)

(assert (=> b!3693426 (= e!2287091 e!2287093)))

(declare-fun c!638577 () Bool)

(assert (=> b!3693426 (= c!638577 ((_ is IntegerValue!18469) (value!189345 token!544)))))

(declare-fun b!3693427 () Bool)

(declare-fun res!1501612 () Bool)

(declare-fun e!2287092 () Bool)

(assert (=> b!3693427 (=> res!1501612 e!2287092)))

(assert (=> b!3693427 (= res!1501612 (not ((_ is IntegerValue!18470) (value!189345 token!544))))))

(assert (=> b!3693427 (= e!2287093 e!2287092)))

(declare-fun b!3693428 () Bool)

(declare-fun inv!16 (TokenValue!6156) Bool)

(assert (=> b!3693428 (= e!2287091 (inv!16 (value!189345 token!544)))))

(declare-fun b!3693429 () Bool)

(declare-fun inv!15 (TokenValue!6156) Bool)

(assert (=> b!3693429 (= e!2287092 (inv!15 (value!189345 token!544)))))

(declare-fun b!3693430 () Bool)

(declare-fun inv!17 (TokenValue!6156) Bool)

(assert (=> b!3693430 (= e!2287093 (inv!17 (value!189345 token!544)))))

(assert (= (and d!1083724 c!638576) b!3693428))

(assert (= (and d!1083724 (not c!638576)) b!3693426))

(assert (= (and b!3693426 c!638577) b!3693430))

(assert (= (and b!3693426 (not c!638577)) b!3693427))

(assert (= (and b!3693427 (not res!1501612)) b!3693429))

(declare-fun m!4205569 () Bool)

(assert (=> b!3693428 m!4205569))

(declare-fun m!4205571 () Bool)

(assert (=> b!3693429 m!4205571))

(declare-fun m!4205573 () Bool)

(assert (=> b!3693430 m!4205573))

(assert (=> b!3693372 d!1083724))

(declare-fun d!1083734 () Bool)

(assert (=> d!1083734 (= (get!12992 lt!1292862) (v!38393 lt!1292862))))

(assert (=> b!3693371 d!1083734))

(declare-fun d!1083736 () Bool)

(assert (=> d!1083736 (= (inv!52623 (tag!6748 (rule!8776 token!544))) (= (mod (str.len (value!189344 (tag!6748 (rule!8776 token!544)))) 2) 0))))

(assert (=> b!3693382 d!1083736))

(declare-fun d!1083738 () Bool)

(declare-fun res!1501615 () Bool)

(declare-fun e!2287096 () Bool)

(assert (=> d!1083738 (=> (not res!1501615) (not e!2287096))))

(declare-fun semiInverseModEq!2533 (Int Int) Bool)

(assert (=> d!1083738 (= res!1501615 (semiInverseModEq!2533 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 token!544)))))))

(assert (=> d!1083738 (= (inv!52627 (transformation!5926 (rule!8776 token!544))) e!2287096)))

(declare-fun b!3693433 () Bool)

(declare-fun equivClasses!2432 (Int Int) Bool)

(assert (=> b!3693433 (= e!2287096 (equivClasses!2432 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 token!544)))))))

(assert (= (and d!1083738 res!1501615) b!3693433))

(declare-fun m!4205575 () Bool)

(assert (=> d!1083738 m!4205575))

(declare-fun m!4205577 () Bool)

(assert (=> b!3693433 m!4205577))

(assert (=> b!3693382 d!1083738))

(declare-fun d!1083740 () Bool)

(declare-fun isEmpty!23341 (Option!8438) Bool)

(assert (=> d!1083740 (= (isDefined!6631 lt!1292862) (not (isEmpty!23341 lt!1292862)))))

(declare-fun bs!574191 () Bool)

(assert (= bs!574191 d!1083740))

(declare-fun m!4205579 () Bool)

(assert (=> bs!574191 m!4205579))

(assert (=> b!3693380 d!1083740))

(declare-fun b!3693568 () Bool)

(declare-fun e!2287169 () Bool)

(declare-fun lt!1292912 () Option!8438)

(declare-fun size!29898 (List!39280) Int)

(assert (=> b!3693568 (= e!2287169 (= (size!29895 (_1!22661 (get!12992 lt!1292912))) (size!29898 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912))))))))

(declare-fun b!3693569 () Bool)

(declare-fun res!1501690 () Bool)

(assert (=> b!3693569 (=> (not res!1501690) (not e!2287169))))

(declare-fun ++!9744 (List!39280 List!39280) List!39280)

(assert (=> b!3693569 (= res!1501690 (= (++!9744 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))) (_2!22661 (get!12992 lt!1292912))) input!3172))))

(declare-fun d!1083742 () Bool)

(declare-fun e!2287168 () Bool)

(assert (=> d!1083742 e!2287168))

(declare-fun res!1501692 () Bool)

(assert (=> d!1083742 (=> res!1501692 e!2287168)))

(assert (=> d!1083742 (= res!1501692 (isEmpty!23341 lt!1292912))))

(declare-fun e!2287167 () Option!8438)

(assert (=> d!1083742 (= lt!1292912 e!2287167)))

(declare-fun c!638592 () Bool)

(declare-datatypes ((tuple2!39058 0))(
  ( (tuple2!39059 (_1!22663 List!39280) (_2!22663 List!39280)) )
))
(declare-fun lt!1292910 () tuple2!39058)

(declare-fun isEmpty!23342 (List!39280) Bool)

(assert (=> d!1083742 (= c!638592 (isEmpty!23342 (_1!22663 lt!1292910)))))

(declare-fun findLongestMatch!1024 (Regex!10685 List!39280) tuple2!39058)

(assert (=> d!1083742 (= lt!1292910 (findLongestMatch!1024 (regex!5926 (h!44577 rules!3598)) input!3172))))

(declare-fun ruleValid!2147 (LexerInterface!5515 Rule!11652) Bool)

(assert (=> d!1083742 (ruleValid!2147 thiss!25322 (h!44577 rules!3598))))

(assert (=> d!1083742 (= (maxPrefixOneRule!2151 thiss!25322 (h!44577 rules!3598) input!3172) lt!1292912)))

(declare-fun b!3693570 () Bool)

(assert (=> b!3693570 (= e!2287167 None!8437)))

(declare-fun b!3693571 () Bool)

(declare-fun res!1501693 () Bool)

(assert (=> b!3693571 (=> (not res!1501693) (not e!2287169))))

(assert (=> b!3693571 (= res!1501693 (< (size!29898 (_2!22661 (get!12992 lt!1292912))) (size!29898 input!3172)))))

(declare-fun b!3693572 () Bool)

(declare-fun res!1501688 () Bool)

(assert (=> b!3693572 (=> (not res!1501688) (not e!2287169))))

(declare-fun apply!9384 (TokenValueInjection!11740 BalanceConc!23660) TokenValue!6156)

(declare-fun seqFromList!4463 (List!39280) BalanceConc!23660)

(assert (=> b!3693572 (= res!1501688 (= (value!189345 (_1!22661 (get!12992 lt!1292912))) (apply!9384 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))))))))

(declare-fun b!3693573 () Bool)

(declare-fun size!29899 (BalanceConc!23660) Int)

(assert (=> b!3693573 (= e!2287167 (Some!8437 (tuple2!39055 (Token!11207 (apply!9384 (transformation!5926 (h!44577 rules!3598)) (seqFromList!4463 (_1!22663 lt!1292910))) (h!44577 rules!3598) (size!29899 (seqFromList!4463 (_1!22663 lt!1292910))) (_1!22663 lt!1292910)) (_2!22663 lt!1292910))))))

(declare-datatypes ((Unit!57160 0))(
  ( (Unit!57161) )
))
(declare-fun lt!1292909 () Unit!57160)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1082 (Regex!10685 List!39280) Unit!57160)

(assert (=> b!3693573 (= lt!1292909 (longestMatchIsAcceptedByMatchOrIsEmpty!1082 (regex!5926 (h!44577 rules!3598)) input!3172))))

(declare-fun res!1501687 () Bool)

(declare-fun findLongestMatchInner!1109 (Regex!10685 List!39280 Int List!39280 List!39280 Int) tuple2!39058)

(assert (=> b!3693573 (= res!1501687 (isEmpty!23342 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(declare-fun e!2287170 () Bool)

(assert (=> b!3693573 (=> res!1501687 e!2287170)))

(assert (=> b!3693573 e!2287170))

(declare-fun lt!1292911 () Unit!57160)

(assert (=> b!3693573 (= lt!1292911 lt!1292909)))

(declare-fun lt!1292908 () Unit!57160)

(declare-fun lemmaSemiInverse!1615 (TokenValueInjection!11740 BalanceConc!23660) Unit!57160)

(assert (=> b!3693573 (= lt!1292908 (lemmaSemiInverse!1615 (transformation!5926 (h!44577 rules!3598)) (seqFromList!4463 (_1!22663 lt!1292910))))))

(declare-fun b!3693574 () Bool)

(declare-fun matchR!5228 (Regex!10685 List!39280) Bool)

(assert (=> b!3693574 (= e!2287170 (matchR!5228 (regex!5926 (h!44577 rules!3598)) (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(declare-fun b!3693575 () Bool)

(declare-fun res!1501691 () Bool)

(assert (=> b!3693575 (=> (not res!1501691) (not e!2287169))))

(assert (=> b!3693575 (= res!1501691 (= (rule!8776 (_1!22661 (get!12992 lt!1292912))) (h!44577 rules!3598)))))

(declare-fun b!3693576 () Bool)

(assert (=> b!3693576 (= e!2287168 e!2287169)))

(declare-fun res!1501689 () Bool)

(assert (=> b!3693576 (=> (not res!1501689) (not e!2287169))))

(assert (=> b!3693576 (= res!1501689 (matchR!5228 (regex!5926 (h!44577 rules!3598)) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))

(assert (= (and d!1083742 c!638592) b!3693570))

(assert (= (and d!1083742 (not c!638592)) b!3693573))

(assert (= (and b!3693573 (not res!1501687)) b!3693574))

(assert (= (and d!1083742 (not res!1501692)) b!3693576))

(assert (= (and b!3693576 res!1501689) b!3693569))

(assert (= (and b!3693569 res!1501690) b!3693571))

(assert (= (and b!3693571 res!1501693) b!3693575))

(assert (= (and b!3693575 res!1501691) b!3693572))

(assert (= (and b!3693572 res!1501688) b!3693568))

(declare-fun m!4205673 () Bool)

(assert (=> b!3693572 m!4205673))

(declare-fun m!4205675 () Bool)

(assert (=> b!3693572 m!4205675))

(assert (=> b!3693572 m!4205675))

(declare-fun m!4205677 () Bool)

(assert (=> b!3693572 m!4205677))

(assert (=> b!3693568 m!4205673))

(declare-fun m!4205679 () Bool)

(assert (=> b!3693568 m!4205679))

(declare-fun m!4205681 () Bool)

(assert (=> d!1083742 m!4205681))

(declare-fun m!4205683 () Bool)

(assert (=> d!1083742 m!4205683))

(declare-fun m!4205685 () Bool)

(assert (=> d!1083742 m!4205685))

(declare-fun m!4205687 () Bool)

(assert (=> d!1083742 m!4205687))

(declare-fun m!4205689 () Bool)

(assert (=> b!3693573 m!4205689))

(declare-fun m!4205691 () Bool)

(assert (=> b!3693573 m!4205691))

(declare-fun m!4205693 () Bool)

(assert (=> b!3693573 m!4205693))

(declare-fun m!4205695 () Bool)

(assert (=> b!3693573 m!4205695))

(declare-fun m!4205697 () Bool)

(assert (=> b!3693573 m!4205697))

(assert (=> b!3693573 m!4205695))

(declare-fun m!4205699 () Bool)

(assert (=> b!3693573 m!4205699))

(declare-fun m!4205701 () Bool)

(assert (=> b!3693573 m!4205701))

(assert (=> b!3693573 m!4205695))

(assert (=> b!3693573 m!4205691))

(assert (=> b!3693573 m!4205689))

(assert (=> b!3693573 m!4205695))

(declare-fun m!4205703 () Bool)

(assert (=> b!3693573 m!4205703))

(declare-fun m!4205705 () Bool)

(assert (=> b!3693573 m!4205705))

(assert (=> b!3693574 m!4205689))

(assert (=> b!3693574 m!4205691))

(assert (=> b!3693574 m!4205689))

(assert (=> b!3693574 m!4205691))

(assert (=> b!3693574 m!4205693))

(declare-fun m!4205707 () Bool)

(assert (=> b!3693574 m!4205707))

(assert (=> b!3693576 m!4205673))

(declare-fun m!4205709 () Bool)

(assert (=> b!3693576 m!4205709))

(assert (=> b!3693576 m!4205709))

(declare-fun m!4205711 () Bool)

(assert (=> b!3693576 m!4205711))

(assert (=> b!3693576 m!4205711))

(declare-fun m!4205713 () Bool)

(assert (=> b!3693576 m!4205713))

(assert (=> b!3693569 m!4205673))

(assert (=> b!3693569 m!4205709))

(assert (=> b!3693569 m!4205709))

(assert (=> b!3693569 m!4205711))

(assert (=> b!3693569 m!4205711))

(declare-fun m!4205715 () Bool)

(assert (=> b!3693569 m!4205715))

(assert (=> b!3693571 m!4205673))

(declare-fun m!4205717 () Bool)

(assert (=> b!3693571 m!4205717))

(assert (=> b!3693571 m!4205691))

(assert (=> b!3693575 m!4205673))

(assert (=> b!3693380 d!1083742))

(declare-fun bm!267022 () Bool)

(declare-fun call!267028 () Bool)

(declare-fun c!638597 () Bool)

(assert (=> bm!267022 (= call!267028 (validRegex!4892 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))

(declare-fun b!3693595 () Bool)

(declare-fun e!2287189 () Bool)

(declare-fun call!267027 () Bool)

(assert (=> b!3693595 (= e!2287189 call!267027)))

(declare-fun b!3693596 () Bool)

(declare-fun e!2287188 () Bool)

(declare-fun e!2287186 () Bool)

(assert (=> b!3693596 (= e!2287188 e!2287186)))

(declare-fun res!1501707 () Bool)

(assert (=> b!3693596 (=> (not res!1501707) (not e!2287186))))

(assert (=> b!3693596 (= res!1501707 call!267028)))

(declare-fun bm!267023 () Bool)

(declare-fun call!267029 () Bool)

(assert (=> bm!267023 (= call!267029 call!267027)))

(declare-fun d!1083758 () Bool)

(declare-fun res!1501708 () Bool)

(declare-fun e!2287185 () Bool)

(assert (=> d!1083758 (=> res!1501708 e!2287185)))

(assert (=> d!1083758 (= res!1501708 ((_ is ElementMatch!10685) (regex!5926 (h!44577 rules!3598))))))

(assert (=> d!1083758 (= (validRegex!4892 (regex!5926 (h!44577 rules!3598))) e!2287185)))

(declare-fun c!638598 () Bool)

(declare-fun bm!267024 () Bool)

(assert (=> bm!267024 (= call!267027 (validRegex!4892 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))

(declare-fun b!3693597 () Bool)

(declare-fun e!2287191 () Bool)

(declare-fun e!2287190 () Bool)

(assert (=> b!3693597 (= e!2287191 e!2287190)))

(assert (=> b!3693597 (= c!638597 ((_ is Union!10685) (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3693598 () Bool)

(declare-fun res!1501706 () Bool)

(declare-fun e!2287187 () Bool)

(assert (=> b!3693598 (=> (not res!1501706) (not e!2287187))))

(assert (=> b!3693598 (= res!1501706 call!267028)))

(assert (=> b!3693598 (= e!2287190 e!2287187)))

(declare-fun b!3693599 () Bool)

(assert (=> b!3693599 (= e!2287187 call!267029)))

(declare-fun b!3693600 () Bool)

(assert (=> b!3693600 (= e!2287186 call!267029)))

(declare-fun b!3693601 () Bool)

(declare-fun res!1501705 () Bool)

(assert (=> b!3693601 (=> res!1501705 e!2287188)))

(assert (=> b!3693601 (= res!1501705 (not ((_ is Concat!16842) (regex!5926 (h!44577 rules!3598)))))))

(assert (=> b!3693601 (= e!2287190 e!2287188)))

(declare-fun b!3693602 () Bool)

(assert (=> b!3693602 (= e!2287191 e!2287189)))

(declare-fun res!1501704 () Bool)

(declare-fun nullable!3730 (Regex!10685) Bool)

(assert (=> b!3693602 (= res!1501704 (not (nullable!3730 (reg!11014 (regex!5926 (h!44577 rules!3598))))))))

(assert (=> b!3693602 (=> (not res!1501704) (not e!2287189))))

(declare-fun b!3693603 () Bool)

(assert (=> b!3693603 (= e!2287185 e!2287191)))

(assert (=> b!3693603 (= c!638598 ((_ is Star!10685) (regex!5926 (h!44577 rules!3598))))))

(assert (= (and d!1083758 (not res!1501708)) b!3693603))

(assert (= (and b!3693603 c!638598) b!3693602))

(assert (= (and b!3693603 (not c!638598)) b!3693597))

(assert (= (and b!3693602 res!1501704) b!3693595))

(assert (= (and b!3693597 c!638597) b!3693598))

(assert (= (and b!3693597 (not c!638597)) b!3693601))

(assert (= (and b!3693598 res!1501706) b!3693599))

(assert (= (and b!3693601 (not res!1501705)) b!3693596))

(assert (= (and b!3693596 res!1501707) b!3693600))

(assert (= (or b!3693599 b!3693600) bm!267023))

(assert (= (or b!3693598 b!3693596) bm!267022))

(assert (= (or b!3693595 bm!267023) bm!267024))

(declare-fun m!4205719 () Bool)

(assert (=> bm!267022 m!4205719))

(declare-fun m!4205721 () Bool)

(assert (=> bm!267024 m!4205721))

(declare-fun m!4205723 () Bool)

(assert (=> b!3693602 m!4205723))

(assert (=> b!3693379 d!1083758))

(declare-fun d!1083760 () Bool)

(declare-fun list!14635 (Conc!12023) List!39280)

(assert (=> d!1083760 (= (list!14633 (charsOf!3925 token!544)) (list!14635 (c!638565 (charsOf!3925 token!544))))))

(declare-fun bs!574194 () Bool)

(assert (= bs!574194 d!1083760))

(declare-fun m!4205725 () Bool)

(assert (=> bs!574194 m!4205725))

(assert (=> b!3693379 d!1083760))

(declare-fun d!1083762 () Bool)

(declare-fun lt!1292915 () BalanceConc!23660)

(assert (=> d!1083762 (= (list!14633 lt!1292915) (originalCharacters!6634 token!544))))

(declare-fun dynLambda!17143 (Int TokenValue!6156) BalanceConc!23660)

(assert (=> d!1083762 (= lt!1292915 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))

(assert (=> d!1083762 (= (charsOf!3925 token!544) lt!1292915)))

(declare-fun b_lambda!109555 () Bool)

(assert (=> (not b_lambda!109555) (not d!1083762)))

(declare-fun tb!213935 () Bool)

(declare-fun t!301499 () Bool)

(assert (=> (and b!3693377 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 token!544)))) t!301499) tb!213935))

(declare-fun b!3693608 () Bool)

(declare-fun e!2287194 () Bool)

(declare-fun tp!1122522 () Bool)

(declare-fun inv!52630 (Conc!12023) Bool)

(assert (=> b!3693608 (= e!2287194 (and (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))) tp!1122522))))

(declare-fun result!260544 () Bool)

(declare-fun inv!52631 (BalanceConc!23660) Bool)

(assert (=> tb!213935 (= result!260544 (and (inv!52631 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))) e!2287194))))

(assert (= tb!213935 b!3693608))

(declare-fun m!4205727 () Bool)

(assert (=> b!3693608 m!4205727))

(declare-fun m!4205729 () Bool)

(assert (=> tb!213935 m!4205729))

(assert (=> d!1083762 t!301499))

(declare-fun b_and!275939 () Bool)

(assert (= b_and!275921 (and (=> t!301499 result!260544) b_and!275939)))

(declare-fun t!301501 () Bool)

(declare-fun tb!213937 () Bool)

(assert (=> (and b!3693374 (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (rule!8776 token!544)))) t!301501) tb!213937))

(declare-fun result!260548 () Bool)

(assert (= result!260548 result!260544))

(assert (=> d!1083762 t!301501))

(declare-fun b_and!275941 () Bool)

(assert (= b_and!275925 (and (=> t!301501 result!260548) b_and!275941)))

(declare-fun m!4205731 () Bool)

(assert (=> d!1083762 m!4205731))

(declare-fun m!4205733 () Bool)

(assert (=> d!1083762 m!4205733))

(assert (=> b!3693379 d!1083762))

(declare-fun d!1083764 () Bool)

(declare-fun res!1501713 () Bool)

(declare-fun e!2287197 () Bool)

(assert (=> d!1083764 (=> (not res!1501713) (not e!2287197))))

(assert (=> d!1083764 (= res!1501713 (not (isEmpty!23342 (originalCharacters!6634 token!544))))))

(assert (=> d!1083764 (= (inv!52626 token!544) e!2287197)))

(declare-fun b!3693613 () Bool)

(declare-fun res!1501714 () Bool)

(assert (=> b!3693613 (=> (not res!1501714) (not e!2287197))))

(assert (=> b!3693613 (= res!1501714 (= (originalCharacters!6634 token!544) (list!14633 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(declare-fun b!3693614 () Bool)

(assert (=> b!3693614 (= e!2287197 (= (size!29895 token!544) (size!29898 (originalCharacters!6634 token!544))))))

(assert (= (and d!1083764 res!1501713) b!3693613))

(assert (= (and b!3693613 res!1501714) b!3693614))

(declare-fun b_lambda!109557 () Bool)

(assert (=> (not b_lambda!109557) (not b!3693613)))

(assert (=> b!3693613 t!301499))

(declare-fun b_and!275943 () Bool)

(assert (= b_and!275939 (and (=> t!301499 result!260544) b_and!275943)))

(assert (=> b!3693613 t!301501))

(declare-fun b_and!275945 () Bool)

(assert (= b_and!275941 (and (=> t!301501 result!260548) b_and!275945)))

(declare-fun m!4205735 () Bool)

(assert (=> d!1083764 m!4205735))

(assert (=> b!3693613 m!4205733))

(assert (=> b!3693613 m!4205733))

(declare-fun m!4205737 () Bool)

(assert (=> b!3693613 m!4205737))

(declare-fun m!4205739 () Bool)

(assert (=> b!3693614 m!4205739))

(assert (=> start!347722 d!1083764))

(declare-fun d!1083766 () Bool)

(assert (=> d!1083766 (= (isDefined!6631 lt!1292863) (not (isEmpty!23341 lt!1292863)))))

(declare-fun bs!574195 () Bool)

(assert (= bs!574195 d!1083766))

(declare-fun m!4205741 () Bool)

(assert (=> bs!574195 m!4205741))

(assert (=> b!3693367 d!1083766))

(declare-fun d!1083768 () Bool)

(declare-fun e!2287204 () Bool)

(assert (=> d!1083768 e!2287204))

(declare-fun res!1501729 () Bool)

(assert (=> d!1083768 (=> res!1501729 e!2287204)))

(declare-fun lt!1292930 () Option!8438)

(assert (=> d!1083768 (= res!1501729 (isEmpty!23341 lt!1292930))))

(declare-fun e!2287205 () Option!8438)

(assert (=> d!1083768 (= lt!1292930 e!2287205)))

(declare-fun c!638601 () Bool)

(assert (=> d!1083768 (= c!638601 (and ((_ is Cons!39157) rules!3598) ((_ is Nil!39157) (t!301490 rules!3598))))))

(declare-fun lt!1292929 () Unit!57160)

(declare-fun lt!1292928 () Unit!57160)

(assert (=> d!1083768 (= lt!1292929 lt!1292928)))

(declare-fun isPrefix!3266 (List!39280 List!39280) Bool)

(assert (=> d!1083768 (isPrefix!3266 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2051 (List!39280 List!39280) Unit!57160)

(assert (=> d!1083768 (= lt!1292928 (lemmaIsPrefixRefl!2051 input!3172 input!3172))))

(declare-fun rulesValidInductive!2132 (LexerInterface!5515 List!39281) Bool)

(assert (=> d!1083768 (rulesValidInductive!2132 thiss!25322 rules!3598)))

(assert (=> d!1083768 (= (maxPrefix!3037 thiss!25322 rules!3598 input!3172) lt!1292930)))

(declare-fun b!3693633 () Bool)

(declare-fun res!1501731 () Bool)

(declare-fun e!2287206 () Bool)

(assert (=> b!3693633 (=> (not res!1501731) (not e!2287206))))

(assert (=> b!3693633 (= res!1501731 (= (value!189345 (_1!22661 (get!12992 lt!1292930))) (apply!9384 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun b!3693634 () Bool)

(declare-fun res!1501730 () Bool)

(assert (=> b!3693634 (=> (not res!1501730) (not e!2287206))))

(assert (=> b!3693634 (= res!1501730 (matchR!5228 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun b!3693635 () Bool)

(declare-fun res!1501733 () Bool)

(assert (=> b!3693635 (=> (not res!1501733) (not e!2287206))))

(assert (=> b!3693635 (= res!1501733 (= (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))) (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930)))))))

(declare-fun b!3693636 () Bool)

(declare-fun res!1501735 () Bool)

(assert (=> b!3693636 (=> (not res!1501735) (not e!2287206))))

(assert (=> b!3693636 (= res!1501735 (< (size!29898 (_2!22661 (get!12992 lt!1292930))) (size!29898 input!3172)))))

(declare-fun b!3693637 () Bool)

(declare-fun call!267032 () Option!8438)

(assert (=> b!3693637 (= e!2287205 call!267032)))

(declare-fun b!3693638 () Bool)

(declare-fun lt!1292927 () Option!8438)

(declare-fun lt!1292926 () Option!8438)

(assert (=> b!3693638 (= e!2287205 (ite (and ((_ is None!8437) lt!1292927) ((_ is None!8437) lt!1292926)) None!8437 (ite ((_ is None!8437) lt!1292926) lt!1292927 (ite ((_ is None!8437) lt!1292927) lt!1292926 (ite (>= (size!29895 (_1!22661 (v!38393 lt!1292927))) (size!29895 (_1!22661 (v!38393 lt!1292926)))) lt!1292927 lt!1292926)))))))

(assert (=> b!3693638 (= lt!1292927 call!267032)))

(assert (=> b!3693638 (= lt!1292926 (maxPrefix!3037 thiss!25322 (t!301490 rules!3598) input!3172))))

(declare-fun b!3693639 () Bool)

(declare-fun contains!7816 (List!39281 Rule!11652) Bool)

(assert (=> b!3693639 (= e!2287206 (contains!7816 rules!3598 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))

(declare-fun b!3693640 () Bool)

(declare-fun res!1501734 () Bool)

(assert (=> b!3693640 (=> (not res!1501734) (not e!2287206))))

(assert (=> b!3693640 (= res!1501734 (= (++!9744 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))) (_2!22661 (get!12992 lt!1292930))) input!3172))))

(declare-fun b!3693641 () Bool)

(assert (=> b!3693641 (= e!2287204 e!2287206)))

(declare-fun res!1501732 () Bool)

(assert (=> b!3693641 (=> (not res!1501732) (not e!2287206))))

(assert (=> b!3693641 (= res!1501732 (isDefined!6631 lt!1292930))))

(declare-fun bm!267027 () Bool)

(assert (=> bm!267027 (= call!267032 (maxPrefixOneRule!2151 thiss!25322 (h!44577 rules!3598) input!3172))))

(assert (= (and d!1083768 c!638601) b!3693637))

(assert (= (and d!1083768 (not c!638601)) b!3693638))

(assert (= (or b!3693637 b!3693638) bm!267027))

(assert (= (and d!1083768 (not res!1501729)) b!3693641))

(assert (= (and b!3693641 res!1501732) b!3693635))

(assert (= (and b!3693635 res!1501733) b!3693636))

(assert (= (and b!3693636 res!1501735) b!3693640))

(assert (= (and b!3693640 res!1501734) b!3693633))

(assert (= (and b!3693633 res!1501731) b!3693634))

(assert (= (and b!3693634 res!1501730) b!3693639))

(declare-fun m!4205743 () Bool)

(assert (=> b!3693633 m!4205743))

(declare-fun m!4205745 () Bool)

(assert (=> b!3693633 m!4205745))

(assert (=> b!3693633 m!4205745))

(declare-fun m!4205747 () Bool)

(assert (=> b!3693633 m!4205747))

(declare-fun m!4205749 () Bool)

(assert (=> d!1083768 m!4205749))

(declare-fun m!4205751 () Bool)

(assert (=> d!1083768 m!4205751))

(declare-fun m!4205753 () Bool)

(assert (=> d!1083768 m!4205753))

(declare-fun m!4205755 () Bool)

(assert (=> d!1083768 m!4205755))

(assert (=> b!3693636 m!4205743))

(declare-fun m!4205757 () Bool)

(assert (=> b!3693636 m!4205757))

(assert (=> b!3693636 m!4205691))

(assert (=> b!3693640 m!4205743))

(declare-fun m!4205759 () Bool)

(assert (=> b!3693640 m!4205759))

(assert (=> b!3693640 m!4205759))

(declare-fun m!4205761 () Bool)

(assert (=> b!3693640 m!4205761))

(assert (=> b!3693640 m!4205761))

(declare-fun m!4205763 () Bool)

(assert (=> b!3693640 m!4205763))

(assert (=> b!3693639 m!4205743))

(declare-fun m!4205765 () Bool)

(assert (=> b!3693639 m!4205765))

(declare-fun m!4205767 () Bool)

(assert (=> b!3693641 m!4205767))

(assert (=> bm!267027 m!4205519))

(assert (=> b!3693634 m!4205743))

(assert (=> b!3693634 m!4205759))

(assert (=> b!3693634 m!4205759))

(assert (=> b!3693634 m!4205761))

(assert (=> b!3693634 m!4205761))

(declare-fun m!4205769 () Bool)

(assert (=> b!3693634 m!4205769))

(declare-fun m!4205771 () Bool)

(assert (=> b!3693638 m!4205771))

(assert (=> b!3693635 m!4205743))

(assert (=> b!3693635 m!4205759))

(assert (=> b!3693635 m!4205759))

(assert (=> b!3693635 m!4205761))

(assert (=> b!3693367 d!1083768))

(declare-fun d!1083770 () Bool)

(assert (=> d!1083770 (= (isEmpty!23338 rules!3598) ((_ is Nil!39157) rules!3598))))

(assert (=> b!3693378 d!1083770))

(declare-fun d!1083772 () Bool)

(assert (=> d!1083772 (= (get!12992 lt!1292863) (v!38393 lt!1292863))))

(assert (=> b!3693376 d!1083772))

(declare-fun d!1083774 () Bool)

(assert (=> d!1083774 (= (inv!52623 (tag!6748 (h!44577 rules!3598))) (= (mod (str.len (value!189344 (tag!6748 (h!44577 rules!3598)))) 2) 0))))

(assert (=> b!3693375 d!1083774))

(declare-fun d!1083776 () Bool)

(declare-fun res!1501736 () Bool)

(declare-fun e!2287207 () Bool)

(assert (=> d!1083776 (=> (not res!1501736) (not e!2287207))))

(assert (=> d!1083776 (= res!1501736 (semiInverseModEq!2533 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))))))

(assert (=> d!1083776 (= (inv!52627 (transformation!5926 (h!44577 rules!3598))) e!2287207)))

(declare-fun b!3693642 () Bool)

(assert (=> b!3693642 (= e!2287207 (equivClasses!2432 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))))))

(assert (= (and d!1083776 res!1501736) b!3693642))

(declare-fun m!4205773 () Bool)

(assert (=> d!1083776 m!4205773))

(declare-fun m!4205775 () Bool)

(assert (=> b!3693642 m!4205775))

(assert (=> b!3693375 d!1083776))

(declare-fun d!1083778 () Bool)

(declare-fun res!1501739 () Bool)

(declare-fun e!2287210 () Bool)

(assert (=> d!1083778 (=> (not res!1501739) (not e!2287210))))

(declare-fun rulesValid!2290 (LexerInterface!5515 List!39281) Bool)

(assert (=> d!1083778 (= res!1501739 (rulesValid!2290 thiss!25322 rules!3598))))

(assert (=> d!1083778 (= (rulesInvariant!4912 thiss!25322 rules!3598) e!2287210)))

(declare-fun b!3693645 () Bool)

(declare-datatypes ((List!39283 0))(
  ( (Nil!39159) (Cons!39159 (h!44579 String!44114) (t!301504 List!39283)) )
))
(declare-fun noDuplicateTag!2286 (LexerInterface!5515 List!39281 List!39283) Bool)

(assert (=> b!3693645 (= e!2287210 (noDuplicateTag!2286 thiss!25322 rules!3598 Nil!39159))))

(assert (= (and d!1083778 res!1501739) b!3693645))

(declare-fun m!4205777 () Bool)

(assert (=> d!1083778 m!4205777))

(declare-fun m!4205779 () Bool)

(assert (=> b!3693645 m!4205779))

(assert (=> b!3693373 d!1083778))

(declare-fun b!3693650 () Bool)

(declare-fun e!2287213 () Bool)

(declare-fun tp!1122525 () Bool)

(assert (=> b!3693650 (= e!2287213 (and tp_is_empty!18445 tp!1122525))))

(assert (=> b!3693372 (= tp!1122477 e!2287213)))

(assert (= (and b!3693372 ((_ is Cons!39156) (originalCharacters!6634 token!544))) b!3693650))

(declare-fun b!3693664 () Bool)

(declare-fun e!2287216 () Bool)

(declare-fun tp!1122539 () Bool)

(declare-fun tp!1122540 () Bool)

(assert (=> b!3693664 (= e!2287216 (and tp!1122539 tp!1122540))))

(declare-fun b!3693662 () Bool)

(declare-fun tp!1122536 () Bool)

(declare-fun tp!1122537 () Bool)

(assert (=> b!3693662 (= e!2287216 (and tp!1122536 tp!1122537))))

(declare-fun b!3693663 () Bool)

(declare-fun tp!1122538 () Bool)

(assert (=> b!3693663 (= e!2287216 tp!1122538)))

(declare-fun b!3693661 () Bool)

(assert (=> b!3693661 (= e!2287216 tp_is_empty!18445)))

(assert (=> b!3693382 (= tp!1122480 e!2287216)))

(assert (= (and b!3693382 ((_ is ElementMatch!10685) (regex!5926 (rule!8776 token!544)))) b!3693661))

(assert (= (and b!3693382 ((_ is Concat!16842) (regex!5926 (rule!8776 token!544)))) b!3693662))

(assert (= (and b!3693382 ((_ is Star!10685) (regex!5926 (rule!8776 token!544)))) b!3693663))

(assert (= (and b!3693382 ((_ is Union!10685) (regex!5926 (rule!8776 token!544)))) b!3693664))

(declare-fun b!3693668 () Bool)

(declare-fun e!2287217 () Bool)

(declare-fun tp!1122544 () Bool)

(declare-fun tp!1122545 () Bool)

(assert (=> b!3693668 (= e!2287217 (and tp!1122544 tp!1122545))))

(declare-fun b!3693666 () Bool)

(declare-fun tp!1122541 () Bool)

(declare-fun tp!1122542 () Bool)

(assert (=> b!3693666 (= e!2287217 (and tp!1122541 tp!1122542))))

(declare-fun b!3693667 () Bool)

(declare-fun tp!1122543 () Bool)

(assert (=> b!3693667 (= e!2287217 tp!1122543)))

(declare-fun b!3693665 () Bool)

(assert (=> b!3693665 (= e!2287217 tp_is_empty!18445)))

(assert (=> b!3693375 (= tp!1122476 e!2287217)))

(assert (= (and b!3693375 ((_ is ElementMatch!10685) (regex!5926 (h!44577 rules!3598)))) b!3693665))

(assert (= (and b!3693375 ((_ is Concat!16842) (regex!5926 (h!44577 rules!3598)))) b!3693666))

(assert (= (and b!3693375 ((_ is Star!10685) (regex!5926 (h!44577 rules!3598)))) b!3693667))

(assert (= (and b!3693375 ((_ is Union!10685) (regex!5926 (h!44577 rules!3598)))) b!3693668))

(declare-fun b!3693669 () Bool)

(declare-fun e!2287218 () Bool)

(declare-fun tp!1122546 () Bool)

(assert (=> b!3693669 (= e!2287218 (and tp_is_empty!18445 tp!1122546))))

(assert (=> b!3693370 (= tp!1122473 e!2287218)))

(assert (= (and b!3693370 ((_ is Cons!39156) (t!301489 input!3172))) b!3693669))

(declare-fun b!3693680 () Bool)

(declare-fun b_free!98125 () Bool)

(declare-fun b_next!98829 () Bool)

(assert (=> b!3693680 (= b_free!98125 (not b_next!98829))))

(declare-fun tp!1122557 () Bool)

(declare-fun b_and!275947 () Bool)

(assert (=> b!3693680 (= tp!1122557 b_and!275947)))

(declare-fun b_free!98127 () Bool)

(declare-fun b_next!98831 () Bool)

(assert (=> b!3693680 (= b_free!98127 (not b_next!98831))))

(declare-fun tb!213939 () Bool)

(declare-fun t!301503 () Bool)

(assert (=> (and b!3693680 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (rule!8776 token!544)))) t!301503) tb!213939))

(declare-fun result!260556 () Bool)

(assert (= result!260556 result!260544))

(assert (=> d!1083762 t!301503))

(assert (=> b!3693613 t!301503))

(declare-fun tp!1122555 () Bool)

(declare-fun b_and!275949 () Bool)

(assert (=> b!3693680 (= tp!1122555 (and (=> t!301503 result!260556) b_and!275949))))

(declare-fun e!2287230 () Bool)

(assert (=> b!3693680 (= e!2287230 (and tp!1122557 tp!1122555))))

(declare-fun b!3693679 () Bool)

(declare-fun e!2287227 () Bool)

(declare-fun tp!1122558 () Bool)

(assert (=> b!3693679 (= e!2287227 (and tp!1122558 (inv!52623 (tag!6748 (h!44577 (t!301490 rules!3598)))) (inv!52627 (transformation!5926 (h!44577 (t!301490 rules!3598)))) e!2287230))))

(declare-fun b!3693678 () Bool)

(declare-fun e!2287228 () Bool)

(declare-fun tp!1122556 () Bool)

(assert (=> b!3693678 (= e!2287228 (and e!2287227 tp!1122556))))

(assert (=> b!3693368 (= tp!1122475 e!2287228)))

(assert (= b!3693679 b!3693680))

(assert (= b!3693678 b!3693679))

(assert (= (and b!3693368 ((_ is Cons!39157) (t!301490 rules!3598))) b!3693678))

(declare-fun m!4205781 () Bool)

(assert (=> b!3693679 m!4205781))

(declare-fun m!4205783 () Bool)

(assert (=> b!3693679 m!4205783))

(declare-fun b_lambda!109559 () Bool)

(assert (= b_lambda!109557 (or (and b!3693377 b_free!98115 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 token!544))))) (and b!3693374 b_free!98119) (and b!3693680 b_free!98127 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (rule!8776 token!544))))) b_lambda!109559)))

(declare-fun b_lambda!109561 () Bool)

(assert (= b_lambda!109555 (or (and b!3693377 b_free!98115 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 token!544))))) (and b!3693374 b_free!98119) (and b!3693680 b_free!98127 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (rule!8776 token!544))))) b_lambda!109561)))

(check-sat (not b!3693430) (not b!3693433) (not b!3693569) (not b!3693614) (not b!3693573) (not b!3693429) (not b!3693641) (not d!1083764) b_and!275919 (not b!3693645) (not b!3693636) (not b!3693575) (not b!3693576) (not b_next!98817) (not b!3693678) (not b!3693574) (not d!1083738) (not b!3693663) tp_is_empty!18445 (not b!3693664) b_and!275945 (not b!3693679) (not d!1083778) (not b!3693669) (not d!1083762) (not b_next!98829) (not b!3693666) (not b!3693635) b_and!275943 (not d!1083776) b_and!275923 (not b!3693640) (not b!3693668) (not b!3693572) (not b!3693639) (not d!1083768) (not d!1083766) (not bm!267027) (not b_next!98823) (not b!3693571) (not b_lambda!109559) (not b!3693667) (not tb!213935) (not b!3693608) (not d!1083740) (not b!3693662) (not b_next!98821) (not b_next!98819) (not b_next!98831) (not b!3693428) (not b!3693602) b_and!275947 (not b_lambda!109561) (not bm!267024) (not b!3693650) (not d!1083760) (not b!3693634) (not b!3693638) b_and!275949 (not b!3693613) (not d!1083742) (not bm!267022) (not b!3693568) (not b!3693633) (not b!3693642))
(check-sat (not b_next!98817) b_and!275945 (not b_next!98829) b_and!275943 b_and!275923 (not b_next!98823) (not b_next!98821) b_and!275949 b_and!275919 (not b_next!98819) (not b_next!98831) b_and!275947)
(get-model)

(declare-fun b!3693689 () Bool)

(declare-fun e!2287236 () List!39280)

(assert (=> b!3693689 (= e!2287236 (_2!22661 (get!12992 lt!1292912)))))

(declare-fun b!3693691 () Bool)

(declare-fun res!1501749 () Bool)

(declare-fun e!2287235 () Bool)

(assert (=> b!3693691 (=> (not res!1501749) (not e!2287235))))

(declare-fun lt!1292935 () List!39280)

(assert (=> b!3693691 (= res!1501749 (= (size!29898 lt!1292935) (+ (size!29898 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (size!29898 (_2!22661 (get!12992 lt!1292912))))))))

(declare-fun d!1083782 () Bool)

(assert (=> d!1083782 e!2287235))

(declare-fun res!1501748 () Bool)

(assert (=> d!1083782 (=> (not res!1501748) (not e!2287235))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5674 (List!39280) (InoxSet C!21556))

(assert (=> d!1083782 (= res!1501748 (= (content!5674 lt!1292935) ((_ map or) (content!5674 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (content!5674 (_2!22661 (get!12992 lt!1292912))))))))

(assert (=> d!1083782 (= lt!1292935 e!2287236)))

(declare-fun c!638604 () Bool)

(assert (=> d!1083782 (= c!638604 ((_ is Nil!39156) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))

(assert (=> d!1083782 (= (++!9744 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))) (_2!22661 (get!12992 lt!1292912))) lt!1292935)))

(declare-fun b!3693690 () Bool)

(assert (=> b!3693690 (= e!2287236 (Cons!39156 (h!44576 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (++!9744 (t!301489 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (_2!22661 (get!12992 lt!1292912)))))))

(declare-fun b!3693692 () Bool)

(assert (=> b!3693692 (= e!2287235 (or (not (= (_2!22661 (get!12992 lt!1292912)) Nil!39156)) (= lt!1292935 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))))))))

(assert (= (and d!1083782 c!638604) b!3693689))

(assert (= (and d!1083782 (not c!638604)) b!3693690))

(assert (= (and d!1083782 res!1501748) b!3693691))

(assert (= (and b!3693691 res!1501749) b!3693692))

(declare-fun m!4205785 () Bool)

(assert (=> b!3693691 m!4205785))

(assert (=> b!3693691 m!4205711))

(declare-fun m!4205787 () Bool)

(assert (=> b!3693691 m!4205787))

(assert (=> b!3693691 m!4205717))

(declare-fun m!4205789 () Bool)

(assert (=> d!1083782 m!4205789))

(assert (=> d!1083782 m!4205711))

(declare-fun m!4205791 () Bool)

(assert (=> d!1083782 m!4205791))

(declare-fun m!4205793 () Bool)

(assert (=> d!1083782 m!4205793))

(declare-fun m!4205795 () Bool)

(assert (=> b!3693690 m!4205795))

(assert (=> b!3693569 d!1083782))

(declare-fun d!1083784 () Bool)

(assert (=> d!1083784 (= (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))) (list!14635 (c!638565 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))

(declare-fun bs!574196 () Bool)

(assert (= bs!574196 d!1083784))

(declare-fun m!4205797 () Bool)

(assert (=> bs!574196 m!4205797))

(assert (=> b!3693569 d!1083784))

(declare-fun d!1083786 () Bool)

(declare-fun lt!1292936 () BalanceConc!23660)

(assert (=> d!1083786 (= (list!14633 lt!1292936) (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912))))))

(assert (=> d!1083786 (= lt!1292936 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912))))) (value!189345 (_1!22661 (get!12992 lt!1292912)))))))

(assert (=> d!1083786 (= (charsOf!3925 (_1!22661 (get!12992 lt!1292912))) lt!1292936)))

(declare-fun b_lambda!109563 () Bool)

(assert (=> (not b_lambda!109563) (not d!1083786)))

(declare-fun t!301506 () Bool)

(declare-fun tb!213941 () Bool)

(assert (=> (and b!3693377 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301506) tb!213941))

(declare-fun b!3693693 () Bool)

(declare-fun e!2287237 () Bool)

(declare-fun tp!1122559 () Bool)

(assert (=> b!3693693 (= e!2287237 (and (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912))))) (value!189345 (_1!22661 (get!12992 lt!1292912)))))) tp!1122559))))

(declare-fun result!260558 () Bool)

(assert (=> tb!213941 (= result!260558 (and (inv!52631 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912))))) (value!189345 (_1!22661 (get!12992 lt!1292912))))) e!2287237))))

(assert (= tb!213941 b!3693693))

(declare-fun m!4205799 () Bool)

(assert (=> b!3693693 m!4205799))

(declare-fun m!4205801 () Bool)

(assert (=> tb!213941 m!4205801))

(assert (=> d!1083786 t!301506))

(declare-fun b_and!275951 () Bool)

(assert (= b_and!275943 (and (=> t!301506 result!260558) b_and!275951)))

(declare-fun t!301508 () Bool)

(declare-fun tb!213943 () Bool)

(assert (=> (and b!3693374 (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301508) tb!213943))

(declare-fun result!260560 () Bool)

(assert (= result!260560 result!260558))

(assert (=> d!1083786 t!301508))

(declare-fun b_and!275953 () Bool)

(assert (= b_and!275945 (and (=> t!301508 result!260560) b_and!275953)))

(declare-fun tb!213945 () Bool)

(declare-fun t!301510 () Bool)

(assert (=> (and b!3693680 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301510) tb!213945))

(declare-fun result!260562 () Bool)

(assert (= result!260562 result!260558))

(assert (=> d!1083786 t!301510))

(declare-fun b_and!275955 () Bool)

(assert (= b_and!275949 (and (=> t!301510 result!260562) b_and!275955)))

(declare-fun m!4205803 () Bool)

(assert (=> d!1083786 m!4205803))

(declare-fun m!4205805 () Bool)

(assert (=> d!1083786 m!4205805))

(assert (=> b!3693569 d!1083786))

(declare-fun d!1083788 () Bool)

(assert (=> d!1083788 (= (get!12992 lt!1292912) (v!38393 lt!1292912))))

(assert (=> b!3693569 d!1083788))

(declare-fun d!1083790 () Bool)

(assert (=> d!1083790 true))

(declare-fun order!21669 () Int)

(declare-fun lambda!125007 () Int)

(declare-fun order!21667 () Int)

(declare-fun dynLambda!17144 (Int Int) Int)

(declare-fun dynLambda!17145 (Int Int) Int)

(assert (=> d!1083790 (< (dynLambda!17144 order!21667 (toValue!8254 (transformation!5926 (rule!8776 token!544)))) (dynLambda!17145 order!21669 lambda!125007))))

(declare-fun Forall2!985 (Int) Bool)

(assert (=> d!1083790 (= (equivClasses!2432 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 token!544)))) (Forall2!985 lambda!125007))))

(declare-fun bs!574198 () Bool)

(assert (= bs!574198 d!1083790))

(declare-fun m!4205821 () Bool)

(assert (=> bs!574198 m!4205821))

(assert (=> b!3693433 d!1083790))

(declare-fun bm!267047 () Bool)

(declare-fun c!638626 () Bool)

(declare-fun call!267053 () Bool)

(assert (=> bm!267047 (= call!267053 (validRegex!4892 (ite c!638626 (regOne!21883 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))) (regOne!21882 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))))

(declare-fun b!3693770 () Bool)

(declare-fun e!2287281 () Bool)

(declare-fun call!267052 () Bool)

(assert (=> b!3693770 (= e!2287281 call!267052)))

(declare-fun b!3693771 () Bool)

(declare-fun e!2287280 () Bool)

(declare-fun e!2287278 () Bool)

(assert (=> b!3693771 (= e!2287280 e!2287278)))

(declare-fun res!1501783 () Bool)

(assert (=> b!3693771 (=> (not res!1501783) (not e!2287278))))

(assert (=> b!3693771 (= res!1501783 call!267053)))

(declare-fun bm!267048 () Bool)

(declare-fun call!267054 () Bool)

(assert (=> bm!267048 (= call!267054 call!267052)))

(declare-fun d!1083796 () Bool)

(declare-fun res!1501784 () Bool)

(declare-fun e!2287277 () Bool)

(assert (=> d!1083796 (=> res!1501784 e!2287277)))

(assert (=> d!1083796 (= res!1501784 ((_ is ElementMatch!10685) (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))

(assert (=> d!1083796 (= (validRegex!4892 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))) e!2287277)))

(declare-fun bm!267049 () Bool)

(declare-fun c!638627 () Bool)

(assert (=> bm!267049 (= call!267052 (validRegex!4892 (ite c!638627 (reg!11014 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))) (ite c!638626 (regTwo!21883 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))) (regTwo!21882 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))))))))))

(declare-fun b!3693772 () Bool)

(declare-fun e!2287283 () Bool)

(declare-fun e!2287282 () Bool)

(assert (=> b!3693772 (= e!2287283 e!2287282)))

(assert (=> b!3693772 (= c!638626 ((_ is Union!10685) (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))

(declare-fun b!3693773 () Bool)

(declare-fun res!1501782 () Bool)

(declare-fun e!2287279 () Bool)

(assert (=> b!3693773 (=> (not res!1501782) (not e!2287279))))

(assert (=> b!3693773 (= res!1501782 call!267053)))

(assert (=> b!3693773 (= e!2287282 e!2287279)))

(declare-fun b!3693774 () Bool)

(assert (=> b!3693774 (= e!2287279 call!267054)))

(declare-fun b!3693775 () Bool)

(assert (=> b!3693775 (= e!2287278 call!267054)))

(declare-fun b!3693776 () Bool)

(declare-fun res!1501781 () Bool)

(assert (=> b!3693776 (=> res!1501781 e!2287280)))

(assert (=> b!3693776 (= res!1501781 (not ((_ is Concat!16842) (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))))))))

(assert (=> b!3693776 (= e!2287282 e!2287280)))

(declare-fun b!3693777 () Bool)

(assert (=> b!3693777 (= e!2287283 e!2287281)))

(declare-fun res!1501780 () Bool)

(assert (=> b!3693777 (= res!1501780 (not (nullable!3730 (reg!11014 (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))))

(assert (=> b!3693777 (=> (not res!1501780) (not e!2287281))))

(declare-fun b!3693778 () Bool)

(assert (=> b!3693778 (= e!2287277 e!2287283)))

(assert (=> b!3693778 (= c!638627 ((_ is Star!10685) (ite c!638598 (reg!11014 (regex!5926 (h!44577 rules!3598))) (ite c!638597 (regTwo!21883 (regex!5926 (h!44577 rules!3598))) (regTwo!21882 (regex!5926 (h!44577 rules!3598)))))))))

(assert (= (and d!1083796 (not res!1501784)) b!3693778))

(assert (= (and b!3693778 c!638627) b!3693777))

(assert (= (and b!3693778 (not c!638627)) b!3693772))

(assert (= (and b!3693777 res!1501780) b!3693770))

(assert (= (and b!3693772 c!638626) b!3693773))

(assert (= (and b!3693772 (not c!638626)) b!3693776))

(assert (= (and b!3693773 res!1501782) b!3693774))

(assert (= (and b!3693776 (not res!1501781)) b!3693771))

(assert (= (and b!3693771 res!1501783) b!3693775))

(assert (= (or b!3693774 b!3693775) bm!267048))

(assert (= (or b!3693773 b!3693771) bm!267047))

(assert (= (or b!3693770 bm!267048) bm!267049))

(declare-fun m!4205823 () Bool)

(assert (=> bm!267047 m!4205823))

(declare-fun m!4205825 () Bool)

(assert (=> bm!267049 m!4205825))

(declare-fun m!4205827 () Bool)

(assert (=> b!3693777 m!4205827))

(assert (=> bm!267024 d!1083796))

(declare-fun d!1083798 () Bool)

(assert (=> d!1083798 (= (get!12992 lt!1292930) (v!38393 lt!1292930))))

(assert (=> b!3693633 d!1083798))

(declare-fun d!1083800 () Bool)

(declare-fun dynLambda!17150 (Int BalanceConc!23660) TokenValue!6156)

(assert (=> d!1083800 (= (apply!9384 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930))))) (dynLambda!17150 (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun b_lambda!109565 () Bool)

(assert (=> (not b_lambda!109565) (not d!1083800)))

(declare-fun tb!213947 () Bool)

(declare-fun t!301512 () Bool)

(assert (=> (and b!3693377 (= (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301512) tb!213947))

(declare-fun result!260564 () Bool)

(assert (=> tb!213947 (= result!260564 (inv!21 (dynLambda!17150 (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun m!4205829 () Bool)

(assert (=> tb!213947 m!4205829))

(assert (=> d!1083800 t!301512))

(declare-fun b_and!275957 () Bool)

(assert (= b_and!275919 (and (=> t!301512 result!260564) b_and!275957)))

(declare-fun tb!213949 () Bool)

(declare-fun t!301514 () Bool)

(assert (=> (and b!3693374 (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301514) tb!213949))

(declare-fun result!260568 () Bool)

(assert (= result!260568 result!260564))

(assert (=> d!1083800 t!301514))

(declare-fun b_and!275959 () Bool)

(assert (= b_and!275923 (and (=> t!301514 result!260568) b_and!275959)))

(declare-fun t!301516 () Bool)

(declare-fun tb!213951 () Bool)

(assert (=> (and b!3693680 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301516) tb!213951))

(declare-fun result!260570 () Bool)

(assert (= result!260570 result!260564))

(assert (=> d!1083800 t!301516))

(declare-fun b_and!275961 () Bool)

(assert (= b_and!275947 (and (=> t!301516 result!260570) b_and!275961)))

(assert (=> d!1083800 m!4205745))

(declare-fun m!4205831 () Bool)

(assert (=> d!1083800 m!4205831))

(assert (=> b!3693633 d!1083800))

(declare-fun d!1083802 () Bool)

(declare-fun fromListB!2062 (List!39280) BalanceConc!23660)

(assert (=> d!1083802 (= (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930)))) (fromListB!2062 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930)))))))

(declare-fun bs!574199 () Bool)

(assert (= bs!574199 d!1083802))

(declare-fun m!4205833 () Bool)

(assert (=> bs!574199 m!4205833))

(assert (=> b!3693633 d!1083802))

(assert (=> b!3693568 d!1083788))

(declare-fun d!1083804 () Bool)

(declare-fun lt!1293027 () Int)

(assert (=> d!1083804 (>= lt!1293027 0)))

(declare-fun e!2287297 () Int)

(assert (=> d!1083804 (= lt!1293027 e!2287297)))

(declare-fun c!638636 () Bool)

(assert (=> d!1083804 (= c!638636 ((_ is Nil!39156) (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))))))

(assert (=> d!1083804 (= (size!29898 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))) lt!1293027)))

(declare-fun b!3693799 () Bool)

(assert (=> b!3693799 (= e!2287297 0)))

(declare-fun b!3693800 () Bool)

(assert (=> b!3693800 (= e!2287297 (+ 1 (size!29898 (t!301489 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))))))))

(assert (= (and d!1083804 c!638636) b!3693799))

(assert (= (and d!1083804 (not c!638636)) b!3693800))

(declare-fun m!4205835 () Bool)

(assert (=> b!3693800 m!4205835))

(assert (=> b!3693568 d!1083804))

(declare-fun d!1083806 () Bool)

(declare-fun isBalanced!3519 (Conc!12023) Bool)

(assert (=> d!1083806 (= (inv!52631 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))) (isBalanced!3519 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(declare-fun bs!574200 () Bool)

(assert (= bs!574200 d!1083806))

(declare-fun m!4205849 () Bool)

(assert (=> bs!574200 m!4205849))

(assert (=> tb!213935 d!1083806))

(declare-fun d!1083808 () Bool)

(assert (=> d!1083808 true))

(declare-fun lt!1293032 () Bool)

(assert (=> d!1083808 (= lt!1293032 (rulesValidInductive!2132 thiss!25322 rules!3598))))

(declare-fun lambda!125010 () Int)

(declare-fun forall!8181 (List!39281 Int) Bool)

(assert (=> d!1083808 (= lt!1293032 (forall!8181 rules!3598 lambda!125010))))

(assert (=> d!1083808 (= (rulesValid!2290 thiss!25322 rules!3598) lt!1293032)))

(declare-fun bs!574201 () Bool)

(assert (= bs!574201 d!1083808))

(assert (=> bs!574201 m!4205755))

(declare-fun m!4205887 () Bool)

(assert (=> bs!574201 m!4205887))

(assert (=> d!1083778 d!1083808))

(declare-fun bm!267058 () Bool)

(declare-fun call!267064 () Bool)

(declare-fun c!638640 () Bool)

(assert (=> bm!267058 (= call!267064 (validRegex!4892 (ite c!638640 (regOne!21883 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) (regOne!21882 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))))

(declare-fun b!3693809 () Bool)

(declare-fun e!2287305 () Bool)

(declare-fun call!267063 () Bool)

(assert (=> b!3693809 (= e!2287305 call!267063)))

(declare-fun b!3693810 () Bool)

(declare-fun e!2287304 () Bool)

(declare-fun e!2287302 () Bool)

(assert (=> b!3693810 (= e!2287304 e!2287302)))

(declare-fun res!1501790 () Bool)

(assert (=> b!3693810 (=> (not res!1501790) (not e!2287302))))

(assert (=> b!3693810 (= res!1501790 call!267064)))

(declare-fun bm!267059 () Bool)

(declare-fun call!267065 () Bool)

(assert (=> bm!267059 (= call!267065 call!267063)))

(declare-fun d!1083812 () Bool)

(declare-fun res!1501791 () Bool)

(declare-fun e!2287301 () Bool)

(assert (=> d!1083812 (=> res!1501791 e!2287301)))

(assert (=> d!1083812 (= res!1501791 ((_ is ElementMatch!10685) (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))

(assert (=> d!1083812 (= (validRegex!4892 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) e!2287301)))

(declare-fun bm!267060 () Bool)

(declare-fun c!638641 () Bool)

(assert (=> bm!267060 (= call!267063 (validRegex!4892 (ite c!638641 (reg!11014 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) (ite c!638640 (regTwo!21883 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) (regTwo!21882 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598)))))))))))

(declare-fun b!3693811 () Bool)

(declare-fun e!2287307 () Bool)

(declare-fun e!2287306 () Bool)

(assert (=> b!3693811 (= e!2287307 e!2287306)))

(assert (=> b!3693811 (= c!638640 ((_ is Union!10685) (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))

(declare-fun b!3693812 () Bool)

(declare-fun res!1501789 () Bool)

(declare-fun e!2287303 () Bool)

(assert (=> b!3693812 (=> (not res!1501789) (not e!2287303))))

(assert (=> b!3693812 (= res!1501789 call!267064)))

(assert (=> b!3693812 (= e!2287306 e!2287303)))

(declare-fun b!3693813 () Bool)

(assert (=> b!3693813 (= e!2287303 call!267065)))

(declare-fun b!3693814 () Bool)

(assert (=> b!3693814 (= e!2287302 call!267065)))

(declare-fun b!3693815 () Bool)

(declare-fun res!1501788 () Bool)

(assert (=> b!3693815 (=> res!1501788 e!2287304)))

(assert (=> b!3693815 (= res!1501788 (not ((_ is Concat!16842) (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598)))))))))

(assert (=> b!3693815 (= e!2287306 e!2287304)))

(declare-fun b!3693816 () Bool)

(assert (=> b!3693816 (= e!2287307 e!2287305)))

(declare-fun res!1501787 () Bool)

(assert (=> b!3693816 (= res!1501787 (not (nullable!3730 (reg!11014 (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))))

(assert (=> b!3693816 (=> (not res!1501787) (not e!2287305))))

(declare-fun b!3693817 () Bool)

(assert (=> b!3693817 (= e!2287301 e!2287307)))

(assert (=> b!3693817 (= c!638641 ((_ is Star!10685) (ite c!638597 (regOne!21883 (regex!5926 (h!44577 rules!3598))) (regOne!21882 (regex!5926 (h!44577 rules!3598))))))))

(assert (= (and d!1083812 (not res!1501791)) b!3693817))

(assert (= (and b!3693817 c!638641) b!3693816))

(assert (= (and b!3693817 (not c!638641)) b!3693811))

(assert (= (and b!3693816 res!1501787) b!3693809))

(assert (= (and b!3693811 c!638640) b!3693812))

(assert (= (and b!3693811 (not c!638640)) b!3693815))

(assert (= (and b!3693812 res!1501789) b!3693813))

(assert (= (and b!3693815 (not res!1501788)) b!3693810))

(assert (= (and b!3693810 res!1501790) b!3693814))

(assert (= (or b!3693813 b!3693814) bm!267059))

(assert (= (or b!3693812 b!3693810) bm!267058))

(assert (= (or b!3693809 bm!267059) bm!267060))

(declare-fun m!4205893 () Bool)

(assert (=> bm!267058 m!4205893))

(declare-fun m!4205895 () Bool)

(assert (=> bm!267060 m!4205895))

(declare-fun m!4205897 () Bool)

(assert (=> b!3693816 m!4205897))

(assert (=> bm!267022 d!1083812))

(declare-fun b!3693873 () Bool)

(declare-fun e!2287343 () Bool)

(declare-fun derivativeStep!3273 (Regex!10685 C!21556) Regex!10685)

(declare-fun head!7986 (List!39280) C!21556)

(declare-fun tail!5723 (List!39280) List!39280)

(assert (=> b!3693873 (= e!2287343 (matchR!5228 (derivativeStep!3273 (regex!5926 (h!44577 rules!3598)) (head!7986 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172))))) (tail!5723 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172))))))))

(declare-fun b!3693874 () Bool)

(declare-fun res!1501830 () Bool)

(declare-fun e!2287345 () Bool)

(assert (=> b!3693874 (=> (not res!1501830) (not e!2287345))))

(assert (=> b!3693874 (= res!1501830 (isEmpty!23342 (tail!5723 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172))))))))

(declare-fun b!3693875 () Bool)

(declare-fun e!2287347 () Bool)

(declare-fun lt!1293045 () Bool)

(declare-fun call!267071 () Bool)

(assert (=> b!3693875 (= e!2287347 (= lt!1293045 call!267071))))

(declare-fun bm!267066 () Bool)

(assert (=> bm!267066 (= call!267071 (isEmpty!23342 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(declare-fun b!3693877 () Bool)

(declare-fun res!1501836 () Bool)

(declare-fun e!2287344 () Bool)

(assert (=> b!3693877 (=> res!1501836 e!2287344)))

(assert (=> b!3693877 (= res!1501836 (not ((_ is ElementMatch!10685) (regex!5926 (h!44577 rules!3598)))))))

(declare-fun e!2287348 () Bool)

(assert (=> b!3693877 (= e!2287348 e!2287344)))

(declare-fun b!3693878 () Bool)

(declare-fun res!1501831 () Bool)

(declare-fun e!2287346 () Bool)

(assert (=> b!3693878 (=> res!1501831 e!2287346)))

(assert (=> b!3693878 (= res!1501831 (not (isEmpty!23342 (tail!5723 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))))

(declare-fun b!3693879 () Bool)

(declare-fun e!2287349 () Bool)

(assert (=> b!3693879 (= e!2287349 e!2287346)))

(declare-fun res!1501833 () Bool)

(assert (=> b!3693879 (=> res!1501833 e!2287346)))

(assert (=> b!3693879 (= res!1501833 call!267071)))

(declare-fun b!3693880 () Bool)

(assert (=> b!3693880 (= e!2287345 (= (head!7986 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))) (c!638564 (regex!5926 (h!44577 rules!3598)))))))

(declare-fun b!3693881 () Bool)

(assert (=> b!3693881 (= e!2287344 e!2287349)))

(declare-fun res!1501829 () Bool)

(assert (=> b!3693881 (=> (not res!1501829) (not e!2287349))))

(assert (=> b!3693881 (= res!1501829 (not lt!1293045))))

(declare-fun b!3693882 () Bool)

(declare-fun res!1501835 () Bool)

(assert (=> b!3693882 (=> res!1501835 e!2287344)))

(assert (=> b!3693882 (= res!1501835 e!2287345)))

(declare-fun res!1501834 () Bool)

(assert (=> b!3693882 (=> (not res!1501834) (not e!2287345))))

(assert (=> b!3693882 (= res!1501834 lt!1293045)))

(declare-fun b!3693876 () Bool)

(declare-fun res!1501832 () Bool)

(assert (=> b!3693876 (=> (not res!1501832) (not e!2287345))))

(assert (=> b!3693876 (= res!1501832 (not call!267071))))

(declare-fun d!1083818 () Bool)

(assert (=> d!1083818 e!2287347))

(declare-fun c!638651 () Bool)

(assert (=> d!1083818 (= c!638651 ((_ is EmptyExpr!10685) (regex!5926 (h!44577 rules!3598))))))

(assert (=> d!1083818 (= lt!1293045 e!2287343)))

(declare-fun c!638653 () Bool)

(assert (=> d!1083818 (= c!638653 (isEmpty!23342 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(assert (=> d!1083818 (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))

(assert (=> d!1083818 (= (matchR!5228 (regex!5926 (h!44577 rules!3598)) (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))) lt!1293045)))

(declare-fun b!3693883 () Bool)

(assert (=> b!3693883 (= e!2287346 (not (= (head!7986 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))) (c!638564 (regex!5926 (h!44577 rules!3598))))))))

(declare-fun b!3693884 () Bool)

(assert (=> b!3693884 (= e!2287343 (nullable!3730 (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3693885 () Bool)

(assert (=> b!3693885 (= e!2287347 e!2287348)))

(declare-fun c!638652 () Bool)

(assert (=> b!3693885 (= c!638652 ((_ is EmptyLang!10685) (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3693886 () Bool)

(assert (=> b!3693886 (= e!2287348 (not lt!1293045))))

(assert (= (and d!1083818 c!638653) b!3693884))

(assert (= (and d!1083818 (not c!638653)) b!3693873))

(assert (= (and d!1083818 c!638651) b!3693875))

(assert (= (and d!1083818 (not c!638651)) b!3693885))

(assert (= (and b!3693885 c!638652) b!3693886))

(assert (= (and b!3693885 (not c!638652)) b!3693877))

(assert (= (and b!3693877 (not res!1501836)) b!3693882))

(assert (= (and b!3693882 res!1501834) b!3693876))

(assert (= (and b!3693876 res!1501832) b!3693874))

(assert (= (and b!3693874 res!1501830) b!3693880))

(assert (= (and b!3693882 (not res!1501835)) b!3693881))

(assert (= (and b!3693881 res!1501829) b!3693879))

(assert (= (and b!3693879 (not res!1501833)) b!3693878))

(assert (= (and b!3693878 (not res!1501831)) b!3693883))

(assert (= (or b!3693875 b!3693876 b!3693879) bm!267066))

(declare-fun m!4205913 () Bool)

(assert (=> b!3693884 m!4205913))

(declare-fun m!4205915 () Bool)

(assert (=> b!3693878 m!4205915))

(assert (=> b!3693878 m!4205915))

(declare-fun m!4205917 () Bool)

(assert (=> b!3693878 m!4205917))

(declare-fun m!4205919 () Bool)

(assert (=> b!3693873 m!4205919))

(assert (=> b!3693873 m!4205919))

(declare-fun m!4205921 () Bool)

(assert (=> b!3693873 m!4205921))

(assert (=> b!3693873 m!4205915))

(assert (=> b!3693873 m!4205921))

(assert (=> b!3693873 m!4205915))

(declare-fun m!4205923 () Bool)

(assert (=> b!3693873 m!4205923))

(assert (=> d!1083818 m!4205705))

(assert (=> d!1083818 m!4205503))

(assert (=> bm!267066 m!4205705))

(assert (=> b!3693874 m!4205915))

(assert (=> b!3693874 m!4205915))

(assert (=> b!3693874 m!4205917))

(assert (=> b!3693883 m!4205919))

(assert (=> b!3693880 m!4205919))

(assert (=> b!3693574 d!1083818))

(declare-fun b!3694006 () Bool)

(declare-fun c!638688 () Bool)

(declare-fun call!267093 () Bool)

(assert (=> b!3694006 (= c!638688 call!267093)))

(declare-fun lt!1293160 () Unit!57160)

(declare-fun lt!1293169 () Unit!57160)

(assert (=> b!3694006 (= lt!1293160 lt!1293169)))

(assert (=> b!3694006 (= input!3172 Nil!39156)))

(declare-fun call!267094 () Unit!57160)

(assert (=> b!3694006 (= lt!1293169 call!267094)))

(declare-fun lt!1293174 () Unit!57160)

(declare-fun lt!1293168 () Unit!57160)

(assert (=> b!3694006 (= lt!1293174 lt!1293168)))

(declare-fun call!267092 () Bool)

(assert (=> b!3694006 call!267092))

(declare-fun call!267096 () Unit!57160)

(assert (=> b!3694006 (= lt!1293168 call!267096)))

(declare-fun e!2287420 () tuple2!39058)

(declare-fun e!2287424 () tuple2!39058)

(assert (=> b!3694006 (= e!2287420 e!2287424)))

(declare-fun b!3694007 () Bool)

(declare-fun e!2287423 () tuple2!39058)

(declare-fun e!2287422 () tuple2!39058)

(assert (=> b!3694007 (= e!2287423 e!2287422)))

(declare-fun lt!1293173 () tuple2!39058)

(declare-fun call!267091 () tuple2!39058)

(assert (=> b!3694007 (= lt!1293173 call!267091)))

(declare-fun c!638687 () Bool)

(assert (=> b!3694007 (= c!638687 (isEmpty!23342 (_1!22663 lt!1293173)))))

(declare-fun b!3694008 () Bool)

(declare-fun e!2287427 () tuple2!39058)

(assert (=> b!3694008 (= e!2287427 e!2287420)))

(declare-fun c!638685 () Bool)

(assert (=> b!3694008 (= c!638685 (= (size!29898 Nil!39156) (size!29898 input!3172)))))

(declare-fun bm!267086 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!677 (List!39280 List!39280 List!39280) Unit!57160)

(assert (=> bm!267086 (= call!267094 (lemmaIsPrefixSameLengthThenSameList!677 input!3172 Nil!39156 input!3172))))

(declare-fun b!3694009 () Bool)

(assert (=> b!3694009 (= e!2287422 (tuple2!39059 Nil!39156 input!3172))))

(declare-fun b!3694010 () Bool)

(assert (=> b!3694010 (= e!2287424 (tuple2!39059 Nil!39156 input!3172))))

(declare-fun bm!267087 () Bool)

(assert (=> bm!267087 (= call!267093 (nullable!3730 (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3694011 () Bool)

(declare-fun c!638683 () Bool)

(assert (=> b!3694011 (= c!638683 call!267093)))

(declare-fun lt!1293164 () Unit!57160)

(declare-fun lt!1293180 () Unit!57160)

(assert (=> b!3694011 (= lt!1293164 lt!1293180)))

(declare-fun lt!1293153 () C!21556)

(declare-fun lt!1293163 () List!39280)

(assert (=> b!3694011 (= (++!9744 (++!9744 Nil!39156 (Cons!39156 lt!1293153 Nil!39156)) lt!1293163) input!3172)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1188 (List!39280 C!21556 List!39280 List!39280) Unit!57160)

(assert (=> b!3694011 (= lt!1293180 (lemmaMoveElementToOtherListKeepsConcatEq!1188 Nil!39156 lt!1293153 lt!1293163 input!3172))))

(assert (=> b!3694011 (= lt!1293163 (tail!5723 input!3172))))

(assert (=> b!3694011 (= lt!1293153 (head!7986 input!3172))))

(declare-fun lt!1293177 () Unit!57160)

(declare-fun lt!1293165 () Unit!57160)

(assert (=> b!3694011 (= lt!1293177 lt!1293165)))

(declare-fun getSuffix!1768 (List!39280 List!39280) List!39280)

(assert (=> b!3694011 (isPrefix!3266 (++!9744 Nil!39156 (Cons!39156 (head!7986 (getSuffix!1768 input!3172 Nil!39156)) Nil!39156)) input!3172)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!576 (List!39280 List!39280) Unit!57160)

(assert (=> b!3694011 (= lt!1293165 (lemmaAddHeadSuffixToPrefixStillPrefix!576 Nil!39156 input!3172))))

(declare-fun lt!1293155 () Unit!57160)

(declare-fun lt!1293176 () Unit!57160)

(assert (=> b!3694011 (= lt!1293155 lt!1293176)))

(assert (=> b!3694011 (= lt!1293176 (lemmaAddHeadSuffixToPrefixStillPrefix!576 Nil!39156 input!3172))))

(declare-fun lt!1293166 () List!39280)

(assert (=> b!3694011 (= lt!1293166 (++!9744 Nil!39156 (Cons!39156 (head!7986 input!3172) Nil!39156)))))

(declare-fun lt!1293159 () Unit!57160)

(declare-fun e!2287421 () Unit!57160)

(assert (=> b!3694011 (= lt!1293159 e!2287421)))

(declare-fun c!638686 () Bool)

(assert (=> b!3694011 (= c!638686 (= (size!29898 Nil!39156) (size!29898 input!3172)))))

(declare-fun lt!1293158 () Unit!57160)

(declare-fun lt!1293162 () Unit!57160)

(assert (=> b!3694011 (= lt!1293158 lt!1293162)))

(assert (=> b!3694011 (<= (size!29898 Nil!39156) (size!29898 input!3172))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!384 (List!39280 List!39280) Unit!57160)

(assert (=> b!3694011 (= lt!1293162 (lemmaIsPrefixThenSmallerEqSize!384 Nil!39156 input!3172))))

(assert (=> b!3694011 (= e!2287420 e!2287423)))

(declare-fun b!3694012 () Bool)

(assert (=> b!3694012 (= e!2287422 lt!1293173)))

(declare-fun bm!267088 () Bool)

(assert (=> bm!267088 (= call!267092 (isPrefix!3266 input!3172 input!3172))))

(declare-fun bm!267089 () Bool)

(declare-fun call!267097 () List!39280)

(assert (=> bm!267089 (= call!267097 (tail!5723 input!3172))))

(declare-fun b!3694013 () Bool)

(declare-fun Unit!57165 () Unit!57160)

(assert (=> b!3694013 (= e!2287421 Unit!57165)))

(declare-fun lt!1293161 () Unit!57160)

(assert (=> b!3694013 (= lt!1293161 call!267096)))

(assert (=> b!3694013 call!267092))

(declare-fun lt!1293156 () Unit!57160)

(assert (=> b!3694013 (= lt!1293156 lt!1293161)))

(declare-fun lt!1293171 () Unit!57160)

(assert (=> b!3694013 (= lt!1293171 call!267094)))

(assert (=> b!3694013 (= input!3172 Nil!39156)))

(declare-fun lt!1293170 () Unit!57160)

(assert (=> b!3694013 (= lt!1293170 lt!1293171)))

(assert (=> b!3694013 false))

(declare-fun bm!267085 () Bool)

(declare-fun call!267090 () Regex!10685)

(declare-fun call!267095 () C!21556)

(assert (=> bm!267085 (= call!267090 (derivativeStep!3273 (regex!5926 (h!44577 rules!3598)) call!267095))))

(declare-fun d!1083832 () Bool)

(declare-fun e!2287426 () Bool)

(assert (=> d!1083832 e!2287426))

(declare-fun res!1501885 () Bool)

(assert (=> d!1083832 (=> (not res!1501885) (not e!2287426))))

(declare-fun lt!1293175 () tuple2!39058)

(assert (=> d!1083832 (= res!1501885 (= (++!9744 (_1!22663 lt!1293175) (_2!22663 lt!1293175)) input!3172))))

(assert (=> d!1083832 (= lt!1293175 e!2287427)))

(declare-fun c!638684 () Bool)

(declare-fun lostCause!950 (Regex!10685) Bool)

(assert (=> d!1083832 (= c!638684 (lostCause!950 (regex!5926 (h!44577 rules!3598))))))

(declare-fun lt!1293167 () Unit!57160)

(declare-fun Unit!57166 () Unit!57160)

(assert (=> d!1083832 (= lt!1293167 Unit!57166)))

(assert (=> d!1083832 (= (getSuffix!1768 input!3172 Nil!39156) input!3172)))

(declare-fun lt!1293179 () Unit!57160)

(declare-fun lt!1293178 () Unit!57160)

(assert (=> d!1083832 (= lt!1293179 lt!1293178)))

(declare-fun lt!1293157 () List!39280)

(assert (=> d!1083832 (= input!3172 lt!1293157)))

(declare-fun lemmaSamePrefixThenSameSuffix!1542 (List!39280 List!39280 List!39280 List!39280 List!39280) Unit!57160)

(assert (=> d!1083832 (= lt!1293178 (lemmaSamePrefixThenSameSuffix!1542 Nil!39156 input!3172 Nil!39156 lt!1293157 input!3172))))

(assert (=> d!1083832 (= lt!1293157 (getSuffix!1768 input!3172 Nil!39156))))

(declare-fun lt!1293154 () Unit!57160)

(declare-fun lt!1293172 () Unit!57160)

(assert (=> d!1083832 (= lt!1293154 lt!1293172)))

(assert (=> d!1083832 (isPrefix!3266 Nil!39156 (++!9744 Nil!39156 input!3172))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2178 (List!39280 List!39280) Unit!57160)

(assert (=> d!1083832 (= lt!1293172 (lemmaConcatTwoListThenFirstIsPrefix!2178 Nil!39156 input!3172))))

(assert (=> d!1083832 (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))

(assert (=> d!1083832 (= (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)) lt!1293175)))

(declare-fun bm!267090 () Bool)

(assert (=> bm!267090 (= call!267095 (head!7986 input!3172))))

(declare-fun bm!267091 () Bool)

(assert (=> bm!267091 (= call!267091 (findLongestMatchInner!1109 call!267090 lt!1293166 (+ (size!29898 Nil!39156) 1) call!267097 input!3172 (size!29898 input!3172)))))

(declare-fun bm!267092 () Bool)

(assert (=> bm!267092 (= call!267096 (lemmaIsPrefixRefl!2051 input!3172 input!3172))))

(declare-fun b!3694014 () Bool)

(declare-fun e!2287425 () Bool)

(assert (=> b!3694014 (= e!2287426 e!2287425)))

(declare-fun res!1501884 () Bool)

(assert (=> b!3694014 (=> res!1501884 e!2287425)))

(assert (=> b!3694014 (= res!1501884 (isEmpty!23342 (_1!22663 lt!1293175)))))

(declare-fun b!3694015 () Bool)

(assert (=> b!3694015 (= e!2287427 (tuple2!39059 Nil!39156 input!3172))))

(declare-fun b!3694016 () Bool)

(assert (=> b!3694016 (= e!2287424 (tuple2!39059 Nil!39156 Nil!39156))))

(declare-fun b!3694017 () Bool)

(assert (=> b!3694017 (= e!2287423 call!267091)))

(declare-fun b!3694018 () Bool)

(declare-fun Unit!57167 () Unit!57160)

(assert (=> b!3694018 (= e!2287421 Unit!57167)))

(declare-fun b!3694019 () Bool)

(assert (=> b!3694019 (= e!2287425 (>= (size!29898 (_1!22663 lt!1293175)) (size!29898 Nil!39156)))))

(assert (= (and d!1083832 c!638684) b!3694015))

(assert (= (and d!1083832 (not c!638684)) b!3694008))

(assert (= (and b!3694008 c!638685) b!3694006))

(assert (= (and b!3694008 (not c!638685)) b!3694011))

(assert (= (and b!3694006 c!638688) b!3694016))

(assert (= (and b!3694006 (not c!638688)) b!3694010))

(assert (= (and b!3694011 c!638686) b!3694013))

(assert (= (and b!3694011 (not c!638686)) b!3694018))

(assert (= (and b!3694011 c!638683) b!3694007))

(assert (= (and b!3694011 (not c!638683)) b!3694017))

(assert (= (and b!3694007 c!638687) b!3694009))

(assert (= (and b!3694007 (not c!638687)) b!3694012))

(assert (= (or b!3694007 b!3694017) bm!267089))

(assert (= (or b!3694007 b!3694017) bm!267090))

(assert (= (or b!3694007 b!3694017) bm!267085))

(assert (= (or b!3694007 b!3694017) bm!267091))

(assert (= (or b!3694006 b!3694013) bm!267092))

(assert (= (or b!3694006 b!3694011) bm!267087))

(assert (= (or b!3694006 b!3694013) bm!267086))

(assert (= (or b!3694006 b!3694013) bm!267088))

(assert (= (and d!1083832 res!1501885) b!3694014))

(assert (= (and b!3694014 (not res!1501884)) b!3694019))

(declare-fun m!4206103 () Bool)

(assert (=> b!3694019 m!4206103))

(assert (=> b!3694019 m!4205689))

(declare-fun m!4206105 () Bool)

(assert (=> bm!267086 m!4206105))

(declare-fun m!4206107 () Bool)

(assert (=> bm!267090 m!4206107))

(assert (=> bm!267087 m!4205913))

(declare-fun m!4206109 () Bool)

(assert (=> bm!267085 m!4206109))

(declare-fun m!4206111 () Bool)

(assert (=> d!1083832 m!4206111))

(declare-fun m!4206113 () Bool)

(assert (=> d!1083832 m!4206113))

(declare-fun m!4206115 () Bool)

(assert (=> d!1083832 m!4206115))

(declare-fun m!4206117 () Bool)

(assert (=> d!1083832 m!4206117))

(assert (=> d!1083832 m!4205503))

(declare-fun m!4206119 () Bool)

(assert (=> d!1083832 m!4206119))

(declare-fun m!4206121 () Bool)

(assert (=> d!1083832 m!4206121))

(declare-fun m!4206123 () Bool)

(assert (=> d!1083832 m!4206123))

(assert (=> d!1083832 m!4206113))

(declare-fun m!4206125 () Bool)

(assert (=> bm!267089 m!4206125))

(assert (=> bm!267088 m!4205751))

(assert (=> bm!267092 m!4205753))

(assert (=> bm!267091 m!4205691))

(declare-fun m!4206127 () Bool)

(assert (=> bm!267091 m!4206127))

(declare-fun m!4206129 () Bool)

(assert (=> b!3694014 m!4206129))

(declare-fun m!4206131 () Bool)

(assert (=> b!3694007 m!4206131))

(declare-fun m!4206133 () Bool)

(assert (=> b!3694011 m!4206133))

(declare-fun m!4206135 () Bool)

(assert (=> b!3694011 m!4206135))

(declare-fun m!4206137 () Bool)

(assert (=> b!3694011 m!4206137))

(assert (=> b!3694011 m!4206133))

(declare-fun m!4206139 () Bool)

(assert (=> b!3694011 m!4206139))

(assert (=> b!3694011 m!4206107))

(declare-fun m!4206141 () Bool)

(assert (=> b!3694011 m!4206141))

(assert (=> b!3694011 m!4206117))

(declare-fun m!4206143 () Bool)

(assert (=> b!3694011 m!4206143))

(assert (=> b!3694011 m!4205689))

(declare-fun m!4206145 () Bool)

(assert (=> b!3694011 m!4206145))

(assert (=> b!3694011 m!4205691))

(assert (=> b!3694011 m!4206125))

(assert (=> b!3694011 m!4206135))

(declare-fun m!4206147 () Bool)

(assert (=> b!3694011 m!4206147))

(assert (=> b!3694011 m!4206117))

(declare-fun m!4206149 () Bool)

(assert (=> b!3694011 m!4206149))

(assert (=> b!3693574 d!1083832))

(declare-fun d!1083922 () Bool)

(declare-fun lt!1293182 () Int)

(assert (=> d!1083922 (>= lt!1293182 0)))

(declare-fun e!2287429 () Int)

(assert (=> d!1083922 (= lt!1293182 e!2287429)))

(declare-fun c!638690 () Bool)

(assert (=> d!1083922 (= c!638690 ((_ is Nil!39156) Nil!39156))))

(assert (=> d!1083922 (= (size!29898 Nil!39156) lt!1293182)))

(declare-fun b!3694022 () Bool)

(assert (=> b!3694022 (= e!2287429 0)))

(declare-fun b!3694023 () Bool)

(assert (=> b!3694023 (= e!2287429 (+ 1 (size!29898 (t!301489 Nil!39156))))))

(assert (= (and d!1083922 c!638690) b!3694022))

(assert (= (and d!1083922 (not c!638690)) b!3694023))

(declare-fun m!4206151 () Bool)

(assert (=> b!3694023 m!4206151))

(assert (=> b!3693574 d!1083922))

(declare-fun d!1083924 () Bool)

(declare-fun lt!1293183 () Int)

(assert (=> d!1083924 (>= lt!1293183 0)))

(declare-fun e!2287432 () Int)

(assert (=> d!1083924 (= lt!1293183 e!2287432)))

(declare-fun c!638693 () Bool)

(assert (=> d!1083924 (= c!638693 ((_ is Nil!39156) input!3172))))

(assert (=> d!1083924 (= (size!29898 input!3172) lt!1293183)))

(declare-fun b!3694028 () Bool)

(assert (=> b!3694028 (= e!2287432 0)))

(declare-fun b!3694029 () Bool)

(assert (=> b!3694029 (= e!2287432 (+ 1 (size!29898 (t!301489 input!3172))))))

(assert (= (and d!1083924 c!638693) b!3694028))

(assert (= (and d!1083924 (not c!638693)) b!3694029))

(declare-fun m!4206153 () Bool)

(assert (=> b!3694029 m!4206153))

(assert (=> b!3693574 d!1083924))

(assert (=> b!3693575 d!1083788))

(declare-fun d!1083926 () Bool)

(declare-fun e!2287435 () Bool)

(assert (=> d!1083926 e!2287435))

(declare-fun res!1501888 () Bool)

(assert (=> d!1083926 (=> res!1501888 e!2287435)))

(declare-fun lt!1293188 () Option!8438)

(assert (=> d!1083926 (= res!1501888 (isEmpty!23341 lt!1293188))))

(declare-fun e!2287436 () Option!8438)

(assert (=> d!1083926 (= lt!1293188 e!2287436)))

(declare-fun c!638694 () Bool)

(assert (=> d!1083926 (= c!638694 (and ((_ is Cons!39157) (t!301490 rules!3598)) ((_ is Nil!39157) (t!301490 (t!301490 rules!3598)))))))

(declare-fun lt!1293187 () Unit!57160)

(declare-fun lt!1293186 () Unit!57160)

(assert (=> d!1083926 (= lt!1293187 lt!1293186)))

(assert (=> d!1083926 (isPrefix!3266 input!3172 input!3172)))

(assert (=> d!1083926 (= lt!1293186 (lemmaIsPrefixRefl!2051 input!3172 input!3172))))

(assert (=> d!1083926 (rulesValidInductive!2132 thiss!25322 (t!301490 rules!3598))))

(assert (=> d!1083926 (= (maxPrefix!3037 thiss!25322 (t!301490 rules!3598) input!3172) lt!1293188)))

(declare-fun b!3694032 () Bool)

(declare-fun res!1501890 () Bool)

(declare-fun e!2287437 () Bool)

(assert (=> b!3694032 (=> (not res!1501890) (not e!2287437))))

(assert (=> b!3694032 (= res!1501890 (= (value!189345 (_1!22661 (get!12992 lt!1293188))) (apply!9384 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1293188)))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1293188)))))))))

(declare-fun b!3694033 () Bool)

(declare-fun res!1501889 () Bool)

(assert (=> b!3694033 (=> (not res!1501889) (not e!2287437))))

(assert (=> b!3694033 (= res!1501889 (matchR!5228 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1293188)))) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1293188))))))))

(declare-fun b!3694034 () Bool)

(declare-fun res!1501892 () Bool)

(assert (=> b!3694034 (=> (not res!1501892) (not e!2287437))))

(assert (=> b!3694034 (= res!1501892 (= (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1293188)))) (originalCharacters!6634 (_1!22661 (get!12992 lt!1293188)))))))

(declare-fun b!3694035 () Bool)

(declare-fun res!1501894 () Bool)

(assert (=> b!3694035 (=> (not res!1501894) (not e!2287437))))

(assert (=> b!3694035 (= res!1501894 (< (size!29898 (_2!22661 (get!12992 lt!1293188))) (size!29898 input!3172)))))

(declare-fun b!3694036 () Bool)

(declare-fun call!267098 () Option!8438)

(assert (=> b!3694036 (= e!2287436 call!267098)))

(declare-fun b!3694037 () Bool)

(declare-fun lt!1293185 () Option!8438)

(declare-fun lt!1293184 () Option!8438)

(assert (=> b!3694037 (= e!2287436 (ite (and ((_ is None!8437) lt!1293185) ((_ is None!8437) lt!1293184)) None!8437 (ite ((_ is None!8437) lt!1293184) lt!1293185 (ite ((_ is None!8437) lt!1293185) lt!1293184 (ite (>= (size!29895 (_1!22661 (v!38393 lt!1293185))) (size!29895 (_1!22661 (v!38393 lt!1293184)))) lt!1293185 lt!1293184)))))))

(assert (=> b!3694037 (= lt!1293185 call!267098)))

(assert (=> b!3694037 (= lt!1293184 (maxPrefix!3037 thiss!25322 (t!301490 (t!301490 rules!3598)) input!3172))))

(declare-fun b!3694038 () Bool)

(assert (=> b!3694038 (= e!2287437 (contains!7816 (t!301490 rules!3598) (rule!8776 (_1!22661 (get!12992 lt!1293188)))))))

(declare-fun b!3694039 () Bool)

(declare-fun res!1501893 () Bool)

(assert (=> b!3694039 (=> (not res!1501893) (not e!2287437))))

(assert (=> b!3694039 (= res!1501893 (= (++!9744 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1293188)))) (_2!22661 (get!12992 lt!1293188))) input!3172))))

(declare-fun b!3694040 () Bool)

(assert (=> b!3694040 (= e!2287435 e!2287437)))

(declare-fun res!1501891 () Bool)

(assert (=> b!3694040 (=> (not res!1501891) (not e!2287437))))

(assert (=> b!3694040 (= res!1501891 (isDefined!6631 lt!1293188))))

(declare-fun bm!267093 () Bool)

(assert (=> bm!267093 (= call!267098 (maxPrefixOneRule!2151 thiss!25322 (h!44577 (t!301490 rules!3598)) input!3172))))

(assert (= (and d!1083926 c!638694) b!3694036))

(assert (= (and d!1083926 (not c!638694)) b!3694037))

(assert (= (or b!3694036 b!3694037) bm!267093))

(assert (= (and d!1083926 (not res!1501888)) b!3694040))

(assert (= (and b!3694040 res!1501891) b!3694034))

(assert (= (and b!3694034 res!1501892) b!3694035))

(assert (= (and b!3694035 res!1501894) b!3694039))

(assert (= (and b!3694039 res!1501893) b!3694032))

(assert (= (and b!3694032 res!1501890) b!3694033))

(assert (= (and b!3694033 res!1501889) b!3694038))

(declare-fun m!4206159 () Bool)

(assert (=> b!3694032 m!4206159))

(declare-fun m!4206161 () Bool)

(assert (=> b!3694032 m!4206161))

(assert (=> b!3694032 m!4206161))

(declare-fun m!4206163 () Bool)

(assert (=> b!3694032 m!4206163))

(declare-fun m!4206165 () Bool)

(assert (=> d!1083926 m!4206165))

(assert (=> d!1083926 m!4205751))

(assert (=> d!1083926 m!4205753))

(declare-fun m!4206167 () Bool)

(assert (=> d!1083926 m!4206167))

(assert (=> b!3694035 m!4206159))

(declare-fun m!4206169 () Bool)

(assert (=> b!3694035 m!4206169))

(assert (=> b!3694035 m!4205691))

(assert (=> b!3694039 m!4206159))

(declare-fun m!4206171 () Bool)

(assert (=> b!3694039 m!4206171))

(assert (=> b!3694039 m!4206171))

(declare-fun m!4206173 () Bool)

(assert (=> b!3694039 m!4206173))

(assert (=> b!3694039 m!4206173))

(declare-fun m!4206175 () Bool)

(assert (=> b!3694039 m!4206175))

(assert (=> b!3694038 m!4206159))

(declare-fun m!4206177 () Bool)

(assert (=> b!3694038 m!4206177))

(declare-fun m!4206179 () Bool)

(assert (=> b!3694040 m!4206179))

(declare-fun m!4206181 () Bool)

(assert (=> bm!267093 m!4206181))

(assert (=> b!3694033 m!4206159))

(assert (=> b!3694033 m!4206171))

(assert (=> b!3694033 m!4206171))

(assert (=> b!3694033 m!4206173))

(assert (=> b!3694033 m!4206173))

(declare-fun m!4206183 () Bool)

(assert (=> b!3694033 m!4206183))

(declare-fun m!4206185 () Bool)

(assert (=> b!3694037 m!4206185))

(assert (=> b!3694034 m!4206159))

(assert (=> b!3694034 m!4206171))

(assert (=> b!3694034 m!4206171))

(assert (=> b!3694034 m!4206173))

(assert (=> b!3693638 d!1083926))

(declare-fun d!1083930 () Bool)

(assert (=> d!1083930 (= (isEmpty!23341 lt!1292862) (not ((_ is Some!8437) lt!1292862)))))

(assert (=> d!1083740 d!1083930))

(declare-fun d!1083932 () Bool)

(declare-fun nullableFct!1045 (Regex!10685) Bool)

(assert (=> d!1083932 (= (nullable!3730 (reg!11014 (regex!5926 (h!44577 rules!3598)))) (nullableFct!1045 (reg!11014 (regex!5926 (h!44577 rules!3598)))))))

(declare-fun bs!574226 () Bool)

(assert (= bs!574226 d!1083932))

(declare-fun m!4206191 () Bool)

(assert (=> bs!574226 m!4206191))

(assert (=> b!3693602 d!1083932))

(declare-fun d!1083936 () Bool)

(declare-fun e!2287483 () Bool)

(assert (=> d!1083936 e!2287483))

(declare-fun res!1501917 () Bool)

(assert (=> d!1083936 (=> res!1501917 e!2287483)))

(assert (=> d!1083936 (= res!1501917 (isEmpty!23342 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(declare-fun lt!1293193 () Unit!57160)

(declare-fun choose!22112 (Regex!10685 List!39280) Unit!57160)

(assert (=> d!1083936 (= lt!1293193 (choose!22112 (regex!5926 (h!44577 rules!3598)) input!3172))))

(assert (=> d!1083936 (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))

(assert (=> d!1083936 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1082 (regex!5926 (h!44577 rules!3598)) input!3172) lt!1293193)))

(declare-fun b!3694125 () Bool)

(assert (=> b!3694125 (= e!2287483 (matchR!5228 (regex!5926 (h!44577 rules!3598)) (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(assert (= (and d!1083936 (not res!1501917)) b!3694125))

(assert (=> d!1083936 m!4205503))

(assert (=> d!1083936 m!4205689))

(assert (=> d!1083936 m!4205691))

(assert (=> d!1083936 m!4205693))

(assert (=> d!1083936 m!4205705))

(declare-fun m!4206229 () Bool)

(assert (=> d!1083936 m!4206229))

(assert (=> d!1083936 m!4205691))

(assert (=> d!1083936 m!4205689))

(assert (=> b!3694125 m!4205689))

(assert (=> b!3694125 m!4205691))

(assert (=> b!3694125 m!4205689))

(assert (=> b!3694125 m!4205691))

(assert (=> b!3694125 m!4205693))

(assert (=> b!3694125 m!4205707))

(assert (=> b!3693573 d!1083936))

(assert (=> b!3693573 d!1083924))

(declare-fun d!1083944 () Bool)

(declare-fun lt!1293196 () Int)

(assert (=> d!1083944 (= lt!1293196 (size!29898 (list!14633 (seqFromList!4463 (_1!22663 lt!1292910)))))))

(declare-fun size!29900 (Conc!12023) Int)

(assert (=> d!1083944 (= lt!1293196 (size!29900 (c!638565 (seqFromList!4463 (_1!22663 lt!1292910)))))))

(assert (=> d!1083944 (= (size!29899 (seqFromList!4463 (_1!22663 lt!1292910))) lt!1293196)))

(declare-fun bs!574228 () Bool)

(assert (= bs!574228 d!1083944))

(assert (=> bs!574228 m!4205695))

(declare-fun m!4206231 () Bool)

(assert (=> bs!574228 m!4206231))

(assert (=> bs!574228 m!4206231))

(declare-fun m!4206233 () Bool)

(assert (=> bs!574228 m!4206233))

(declare-fun m!4206235 () Bool)

(assert (=> bs!574228 m!4206235))

(assert (=> b!3693573 d!1083944))

(declare-fun d!1083946 () Bool)

(assert (=> d!1083946 (= (apply!9384 (transformation!5926 (h!44577 rules!3598)) (seqFromList!4463 (_1!22663 lt!1292910))) (dynLambda!17150 (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (seqFromList!4463 (_1!22663 lt!1292910))))))

(declare-fun b_lambda!109587 () Bool)

(assert (=> (not b_lambda!109587) (not d!1083946)))

(declare-fun t!301569 () Bool)

(declare-fun tb!214003 () Bool)

(assert (=> (and b!3693377 (= (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) t!301569) tb!214003))

(declare-fun result!260626 () Bool)

(assert (=> tb!214003 (= result!260626 (inv!21 (dynLambda!17150 (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (seqFromList!4463 (_1!22663 lt!1292910)))))))

(declare-fun m!4206237 () Bool)

(assert (=> tb!214003 m!4206237))

(assert (=> d!1083946 t!301569))

(declare-fun b_and!276009 () Bool)

(assert (= b_and!275957 (and (=> t!301569 result!260626) b_and!276009)))

(declare-fun t!301571 () Bool)

(declare-fun tb!214005 () Bool)

(assert (=> (and b!3693374 (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) t!301571) tb!214005))

(declare-fun result!260628 () Bool)

(assert (= result!260628 result!260626))

(assert (=> d!1083946 t!301571))

(declare-fun b_and!276011 () Bool)

(assert (= b_and!275959 (and (=> t!301571 result!260628) b_and!276011)))

(declare-fun t!301573 () Bool)

(declare-fun tb!214007 () Bool)

(assert (=> (and b!3693680 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) t!301573) tb!214007))

(declare-fun result!260630 () Bool)

(assert (= result!260630 result!260626))

(assert (=> d!1083946 t!301573))

(declare-fun b_and!276013 () Bool)

(assert (= b_and!275961 (and (=> t!301573 result!260630) b_and!276013)))

(assert (=> d!1083946 m!4205695))

(declare-fun m!4206239 () Bool)

(assert (=> d!1083946 m!4206239))

(assert (=> b!3693573 d!1083946))

(assert (=> b!3693573 d!1083922))

(assert (=> b!3693573 d!1083832))

(declare-fun b!3694142 () Bool)

(declare-fun e!2287490 () Bool)

(assert (=> b!3694142 (= e!2287490 true)))

(declare-fun d!1083948 () Bool)

(assert (=> d!1083948 e!2287490))

(assert (= d!1083948 b!3694142))

(declare-fun order!21679 () Int)

(declare-fun lambda!125027 () Int)

(declare-fun dynLambda!17152 (Int Int) Int)

(assert (=> b!3694142 (< (dynLambda!17144 order!21667 (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) (dynLambda!17152 order!21679 lambda!125027))))

(declare-fun order!21681 () Int)

(declare-fun dynLambda!17153 (Int Int) Int)

(assert (=> b!3694142 (< (dynLambda!17153 order!21681 (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) (dynLambda!17152 order!21679 lambda!125027))))

(assert (=> d!1083948 (= (list!14633 (dynLambda!17143 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (dynLambda!17150 (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (seqFromList!4463 (_1!22663 lt!1292910))))) (list!14633 (seqFromList!4463 (_1!22663 lt!1292910))))))

(declare-fun lt!1293199 () Unit!57160)

(declare-fun ForallOf!755 (Int BalanceConc!23660) Unit!57160)

(assert (=> d!1083948 (= lt!1293199 (ForallOf!755 lambda!125027 (seqFromList!4463 (_1!22663 lt!1292910))))))

(assert (=> d!1083948 (= (lemmaSemiInverse!1615 (transformation!5926 (h!44577 rules!3598)) (seqFromList!4463 (_1!22663 lt!1292910))) lt!1293199)))

(declare-fun b_lambda!109589 () Bool)

(assert (=> (not b_lambda!109589) (not d!1083948)))

(declare-fun t!301575 () Bool)

(declare-fun tb!214009 () Bool)

(assert (=> (and b!3693377 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) t!301575) tb!214009))

(declare-fun e!2287491 () Bool)

(declare-fun b!3694143 () Bool)

(declare-fun tp!1122633 () Bool)

(assert (=> b!3694143 (= e!2287491 (and (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (dynLambda!17150 (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (seqFromList!4463 (_1!22663 lt!1292910)))))) tp!1122633))))

(declare-fun result!260632 () Bool)

(assert (=> tb!214009 (= result!260632 (and (inv!52631 (dynLambda!17143 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (dynLambda!17150 (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (seqFromList!4463 (_1!22663 lt!1292910))))) e!2287491))))

(assert (= tb!214009 b!3694143))

(declare-fun m!4206241 () Bool)

(assert (=> b!3694143 m!4206241))

(declare-fun m!4206243 () Bool)

(assert (=> tb!214009 m!4206243))

(assert (=> d!1083948 t!301575))

(declare-fun b_and!276015 () Bool)

(assert (= b_and!275951 (and (=> t!301575 result!260632) b_and!276015)))

(declare-fun t!301577 () Bool)

(declare-fun tb!214011 () Bool)

(assert (=> (and b!3693374 (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) t!301577) tb!214011))

(declare-fun result!260634 () Bool)

(assert (= result!260634 result!260632))

(assert (=> d!1083948 t!301577))

(declare-fun b_and!276017 () Bool)

(assert (= b_and!275953 (and (=> t!301577 result!260634) b_and!276017)))

(declare-fun t!301579 () Bool)

(declare-fun tb!214013 () Bool)

(assert (=> (and b!3693680 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) t!301579) tb!214013))

(declare-fun result!260636 () Bool)

(assert (= result!260636 result!260632))

(assert (=> d!1083948 t!301579))

(declare-fun b_and!276019 () Bool)

(assert (= b_and!275955 (and (=> t!301579 result!260636) b_and!276019)))

(declare-fun b_lambda!109591 () Bool)

(assert (=> (not b_lambda!109591) (not d!1083948)))

(assert (=> d!1083948 t!301569))

(declare-fun b_and!276021 () Bool)

(assert (= b_and!276009 (and (=> t!301569 result!260626) b_and!276021)))

(assert (=> d!1083948 t!301571))

(declare-fun b_and!276023 () Bool)

(assert (= b_and!276011 (and (=> t!301571 result!260628) b_and!276023)))

(assert (=> d!1083948 t!301573))

(declare-fun b_and!276025 () Bool)

(assert (= b_and!276013 (and (=> t!301573 result!260630) b_and!276025)))

(assert (=> d!1083948 m!4205695))

(assert (=> d!1083948 m!4206239))

(assert (=> d!1083948 m!4206239))

(declare-fun m!4206245 () Bool)

(assert (=> d!1083948 m!4206245))

(assert (=> d!1083948 m!4206245))

(declare-fun m!4206247 () Bool)

(assert (=> d!1083948 m!4206247))

(assert (=> d!1083948 m!4205695))

(declare-fun m!4206249 () Bool)

(assert (=> d!1083948 m!4206249))

(assert (=> d!1083948 m!4205695))

(assert (=> d!1083948 m!4206231))

(assert (=> b!3693573 d!1083948))

(declare-fun d!1083950 () Bool)

(assert (=> d!1083950 (= (isEmpty!23342 (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))) ((_ is Nil!39156) (_1!22663 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 (size!29898 Nil!39156) input!3172 input!3172 (size!29898 input!3172)))))))

(assert (=> b!3693573 d!1083950))

(declare-fun d!1083952 () Bool)

(assert (=> d!1083952 (= (seqFromList!4463 (_1!22663 lt!1292910)) (fromListB!2062 (_1!22663 lt!1292910)))))

(declare-fun bs!574229 () Bool)

(assert (= bs!574229 d!1083952))

(declare-fun m!4206251 () Bool)

(assert (=> bs!574229 m!4206251))

(assert (=> b!3693573 d!1083952))

(declare-fun d!1083954 () Bool)

(declare-fun lt!1293200 () Int)

(assert (=> d!1083954 (>= lt!1293200 0)))

(declare-fun e!2287492 () Int)

(assert (=> d!1083954 (= lt!1293200 e!2287492)))

(declare-fun c!638703 () Bool)

(assert (=> d!1083954 (= c!638703 ((_ is Nil!39156) (_2!22661 (get!12992 lt!1292930))))))

(assert (=> d!1083954 (= (size!29898 (_2!22661 (get!12992 lt!1292930))) lt!1293200)))

(declare-fun b!3694144 () Bool)

(assert (=> b!3694144 (= e!2287492 0)))

(declare-fun b!3694145 () Bool)

(assert (=> b!3694145 (= e!2287492 (+ 1 (size!29898 (t!301489 (_2!22661 (get!12992 lt!1292930))))))))

(assert (= (and d!1083954 c!638703) b!3694144))

(assert (= (and d!1083954 (not c!638703)) b!3694145))

(declare-fun m!4206253 () Bool)

(assert (=> b!3694145 m!4206253))

(assert (=> b!3693636 d!1083954))

(assert (=> b!3693636 d!1083798))

(assert (=> b!3693636 d!1083924))

(declare-fun d!1083956 () Bool)

(assert (=> d!1083956 (= (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))) (list!14635 (c!638565 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun bs!574230 () Bool)

(assert (= bs!574230 d!1083956))

(declare-fun m!4206255 () Bool)

(assert (=> bs!574230 m!4206255))

(assert (=> b!3693635 d!1083956))

(declare-fun d!1083958 () Bool)

(declare-fun lt!1293201 () BalanceConc!23660)

(assert (=> d!1083958 (= (list!14633 lt!1293201) (originalCharacters!6634 (_1!22661 (get!12992 lt!1292930))))))

(assert (=> d!1083958 (= lt!1293201 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))) (value!189345 (_1!22661 (get!12992 lt!1292930)))))))

(assert (=> d!1083958 (= (charsOf!3925 (_1!22661 (get!12992 lt!1292930))) lt!1293201)))

(declare-fun b_lambda!109593 () Bool)

(assert (=> (not b_lambda!109593) (not d!1083958)))

(declare-fun t!301581 () Bool)

(declare-fun tb!214015 () Bool)

(assert (=> (and b!3693377 (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301581) tb!214015))

(declare-fun b!3694146 () Bool)

(declare-fun e!2287493 () Bool)

(declare-fun tp!1122634 () Bool)

(assert (=> b!3694146 (= e!2287493 (and (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))) (value!189345 (_1!22661 (get!12992 lt!1292930)))))) tp!1122634))))

(declare-fun result!260638 () Bool)

(assert (=> tb!214015 (= result!260638 (and (inv!52631 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))) (value!189345 (_1!22661 (get!12992 lt!1292930))))) e!2287493))))

(assert (= tb!214015 b!3694146))

(declare-fun m!4206257 () Bool)

(assert (=> b!3694146 m!4206257))

(declare-fun m!4206259 () Bool)

(assert (=> tb!214015 m!4206259))

(assert (=> d!1083958 t!301581))

(declare-fun b_and!276027 () Bool)

(assert (= b_and!276015 (and (=> t!301581 result!260638) b_and!276027)))

(declare-fun tb!214017 () Bool)

(declare-fun t!301583 () Bool)

(assert (=> (and b!3693374 (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301583) tb!214017))

(declare-fun result!260640 () Bool)

(assert (= result!260640 result!260638))

(assert (=> d!1083958 t!301583))

(declare-fun b_and!276029 () Bool)

(assert (= b_and!276017 (and (=> t!301583 result!260640) b_and!276029)))

(declare-fun tb!214019 () Bool)

(declare-fun t!301585 () Bool)

(assert (=> (and b!3693680 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301585) tb!214019))

(declare-fun result!260642 () Bool)

(assert (= result!260642 result!260638))

(assert (=> d!1083958 t!301585))

(declare-fun b_and!276031 () Bool)

(assert (= b_and!276019 (and (=> t!301585 result!260642) b_and!276031)))

(declare-fun m!4206261 () Bool)

(assert (=> d!1083958 m!4206261))

(declare-fun m!4206263 () Bool)

(assert (=> d!1083958 m!4206263))

(assert (=> b!3693635 d!1083958))

(assert (=> b!3693635 d!1083798))

(declare-fun d!1083960 () Bool)

(assert (=> d!1083960 (= (list!14633 lt!1292915) (list!14635 (c!638565 lt!1292915)))))

(declare-fun bs!574231 () Bool)

(assert (= bs!574231 d!1083960))

(declare-fun m!4206265 () Bool)

(assert (=> bs!574231 m!4206265))

(assert (=> d!1083762 d!1083960))

(assert (=> b!3693572 d!1083788))

(declare-fun d!1083962 () Bool)

(assert (=> d!1083962 (= (apply!9384 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912))))) (dynLambda!17150 (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912))))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912))))))))

(declare-fun b_lambda!109595 () Bool)

(assert (=> (not b_lambda!109595) (not d!1083962)))

(declare-fun t!301587 () Bool)

(declare-fun tb!214021 () Bool)

(assert (=> (and b!3693377 (= (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301587) tb!214021))

(declare-fun result!260644 () Bool)

(assert (=> tb!214021 (= result!260644 (inv!21 (dynLambda!17150 (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912))))) (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))))))))

(declare-fun m!4206267 () Bool)

(assert (=> tb!214021 m!4206267))

(assert (=> d!1083962 t!301587))

(declare-fun b_and!276033 () Bool)

(assert (= b_and!276021 (and (=> t!301587 result!260644) b_and!276033)))

(declare-fun tb!214023 () Bool)

(declare-fun t!301589 () Bool)

(assert (=> (and b!3693374 (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301589) tb!214023))

(declare-fun result!260646 () Bool)

(assert (= result!260646 result!260644))

(assert (=> d!1083962 t!301589))

(declare-fun b_and!276035 () Bool)

(assert (= b_and!276023 (and (=> t!301589 result!260646) b_and!276035)))

(declare-fun t!301591 () Bool)

(declare-fun tb!214025 () Bool)

(assert (=> (and b!3693680 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301591) tb!214025))

(declare-fun result!260648 () Bool)

(assert (= result!260648 result!260644))

(assert (=> d!1083962 t!301591))

(declare-fun b_and!276037 () Bool)

(assert (= b_and!276025 (and (=> t!301591 result!260648) b_and!276037)))

(assert (=> d!1083962 m!4205675))

(declare-fun m!4206269 () Bool)

(assert (=> d!1083962 m!4206269))

(assert (=> b!3693572 d!1083962))

(declare-fun d!1083964 () Bool)

(assert (=> d!1083964 (= (seqFromList!4463 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))) (fromListB!2062 (originalCharacters!6634 (_1!22661 (get!12992 lt!1292912)))))))

(declare-fun bs!574232 () Bool)

(assert (= bs!574232 d!1083964))

(declare-fun m!4206271 () Bool)

(assert (=> bs!574232 m!4206271))

(assert (=> b!3693572 d!1083964))

(declare-fun d!1083966 () Bool)

(declare-fun lt!1293202 () Int)

(assert (=> d!1083966 (>= lt!1293202 0)))

(declare-fun e!2287495 () Int)

(assert (=> d!1083966 (= lt!1293202 e!2287495)))

(declare-fun c!638704 () Bool)

(assert (=> d!1083966 (= c!638704 ((_ is Nil!39156) (_2!22661 (get!12992 lt!1292912))))))

(assert (=> d!1083966 (= (size!29898 (_2!22661 (get!12992 lt!1292912))) lt!1293202)))

(declare-fun b!3694147 () Bool)

(assert (=> b!3694147 (= e!2287495 0)))

(declare-fun b!3694148 () Bool)

(assert (=> b!3694148 (= e!2287495 (+ 1 (size!29898 (t!301489 (_2!22661 (get!12992 lt!1292912))))))))

(assert (= (and d!1083966 c!638704) b!3694147))

(assert (= (and d!1083966 (not c!638704)) b!3694148))

(declare-fun m!4206273 () Bool)

(assert (=> b!3694148 m!4206273))

(assert (=> b!3693571 d!1083966))

(assert (=> b!3693571 d!1083788))

(assert (=> b!3693571 d!1083924))

(declare-fun d!1083968 () Bool)

(assert (=> d!1083968 (= (isEmpty!23341 lt!1292863) (not ((_ is Some!8437) lt!1292863)))))

(assert (=> d!1083766 d!1083968))

(declare-fun b!3694149 () Bool)

(declare-fun e!2287496 () Bool)

(assert (=> b!3694149 (= e!2287496 (matchR!5228 (derivativeStep!3273 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))))) (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun b!3694150 () Bool)

(declare-fun res!1501919 () Bool)

(declare-fun e!2287498 () Bool)

(assert (=> b!3694150 (=> (not res!1501919) (not e!2287498))))

(assert (=> b!3694150 (= res!1501919 (isEmpty!23342 (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun b!3694151 () Bool)

(declare-fun e!2287500 () Bool)

(declare-fun lt!1293203 () Bool)

(declare-fun call!267103 () Bool)

(assert (=> b!3694151 (= e!2287500 (= lt!1293203 call!267103))))

(declare-fun bm!267098 () Bool)

(assert (=> bm!267098 (= call!267103 (isEmpty!23342 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun b!3694153 () Bool)

(declare-fun res!1501925 () Bool)

(declare-fun e!2287497 () Bool)

(assert (=> b!3694153 (=> res!1501925 e!2287497)))

(assert (=> b!3694153 (= res!1501925 (not ((_ is ElementMatch!10685) (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun e!2287501 () Bool)

(assert (=> b!3694153 (= e!2287501 e!2287497)))

(declare-fun b!3694154 () Bool)

(declare-fun res!1501920 () Bool)

(declare-fun e!2287499 () Bool)

(assert (=> b!3694154 (=> res!1501920 e!2287499)))

(assert (=> b!3694154 (= res!1501920 (not (isEmpty!23342 (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))))

(declare-fun b!3694155 () Bool)

(declare-fun e!2287502 () Bool)

(assert (=> b!3694155 (= e!2287502 e!2287499)))

(declare-fun res!1501922 () Bool)

(assert (=> b!3694155 (=> res!1501922 e!2287499)))

(assert (=> b!3694155 (= res!1501922 call!267103)))

(declare-fun b!3694156 () Bool)

(assert (=> b!3694156 (= e!2287498 (= (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (c!638564 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))))

(declare-fun b!3694157 () Bool)

(assert (=> b!3694157 (= e!2287497 e!2287502)))

(declare-fun res!1501918 () Bool)

(assert (=> b!3694157 (=> (not res!1501918) (not e!2287502))))

(assert (=> b!3694157 (= res!1501918 (not lt!1293203))))

(declare-fun b!3694158 () Bool)

(declare-fun res!1501924 () Bool)

(assert (=> b!3694158 (=> res!1501924 e!2287497)))

(assert (=> b!3694158 (= res!1501924 e!2287498)))

(declare-fun res!1501923 () Bool)

(assert (=> b!3694158 (=> (not res!1501923) (not e!2287498))))

(assert (=> b!3694158 (= res!1501923 lt!1293203)))

(declare-fun b!3694152 () Bool)

(declare-fun res!1501921 () Bool)

(assert (=> b!3694152 (=> (not res!1501921) (not e!2287498))))

(assert (=> b!3694152 (= res!1501921 (not call!267103))))

(declare-fun d!1083970 () Bool)

(assert (=> d!1083970 e!2287500))

(declare-fun c!638705 () Bool)

(assert (=> d!1083970 (= c!638705 ((_ is EmptyExpr!10685) (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))))))

(assert (=> d!1083970 (= lt!1293203 e!2287496)))

(declare-fun c!638707 () Bool)

(assert (=> d!1083970 (= c!638707 (isEmpty!23342 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))

(assert (=> d!1083970 (validRegex!4892 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))

(assert (=> d!1083970 (= (matchR!5228 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) lt!1293203)))

(declare-fun b!3694159 () Bool)

(assert (=> b!3694159 (= e!2287499 (not (= (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (c!638564 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))))))))

(declare-fun b!3694160 () Bool)

(assert (=> b!3694160 (= e!2287496 (nullable!3730 (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun b!3694161 () Bool)

(assert (=> b!3694161 (= e!2287500 e!2287501)))

(declare-fun c!638706 () Bool)

(assert (=> b!3694161 (= c!638706 ((_ is EmptyLang!10685) (regex!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930))))))))

(declare-fun b!3694162 () Bool)

(assert (=> b!3694162 (= e!2287501 (not lt!1293203))))

(assert (= (and d!1083970 c!638707) b!3694160))

(assert (= (and d!1083970 (not c!638707)) b!3694149))

(assert (= (and d!1083970 c!638705) b!3694151))

(assert (= (and d!1083970 (not c!638705)) b!3694161))

(assert (= (and b!3694161 c!638706) b!3694162))

(assert (= (and b!3694161 (not c!638706)) b!3694153))

(assert (= (and b!3694153 (not res!1501925)) b!3694158))

(assert (= (and b!3694158 res!1501923) b!3694152))

(assert (= (and b!3694152 res!1501921) b!3694150))

(assert (= (and b!3694150 res!1501919) b!3694156))

(assert (= (and b!3694158 (not res!1501924)) b!3694157))

(assert (= (and b!3694157 res!1501918) b!3694155))

(assert (= (and b!3694155 (not res!1501922)) b!3694154))

(assert (= (and b!3694154 (not res!1501920)) b!3694159))

(assert (= (or b!3694151 b!3694152 b!3694155) bm!267098))

(declare-fun m!4206275 () Bool)

(assert (=> b!3694160 m!4206275))

(assert (=> b!3694154 m!4205761))

(declare-fun m!4206277 () Bool)

(assert (=> b!3694154 m!4206277))

(assert (=> b!3694154 m!4206277))

(declare-fun m!4206279 () Bool)

(assert (=> b!3694154 m!4206279))

(assert (=> b!3694149 m!4205761))

(declare-fun m!4206281 () Bool)

(assert (=> b!3694149 m!4206281))

(assert (=> b!3694149 m!4206281))

(declare-fun m!4206283 () Bool)

(assert (=> b!3694149 m!4206283))

(assert (=> b!3694149 m!4205761))

(assert (=> b!3694149 m!4206277))

(assert (=> b!3694149 m!4206283))

(assert (=> b!3694149 m!4206277))

(declare-fun m!4206285 () Bool)

(assert (=> b!3694149 m!4206285))

(assert (=> d!1083970 m!4205761))

(declare-fun m!4206287 () Bool)

(assert (=> d!1083970 m!4206287))

(declare-fun m!4206289 () Bool)

(assert (=> d!1083970 m!4206289))

(assert (=> bm!267098 m!4205761))

(assert (=> bm!267098 m!4206287))

(assert (=> b!3694150 m!4205761))

(assert (=> b!3694150 m!4206277))

(assert (=> b!3694150 m!4206277))

(assert (=> b!3694150 m!4206279))

(assert (=> b!3694159 m!4205761))

(assert (=> b!3694159 m!4206281))

(assert (=> b!3694156 m!4205761))

(assert (=> b!3694156 m!4206281))

(assert (=> b!3693634 d!1083970))

(assert (=> b!3693634 d!1083798))

(assert (=> b!3693634 d!1083956))

(assert (=> b!3693634 d!1083958))

(declare-fun d!1083972 () Bool)

(declare-fun charsToInt!0 (List!39279) (_ BitVec 32))

(assert (=> d!1083972 (= (inv!16 (value!189345 token!544)) (= (charsToInt!0 (text!43539 (value!189345 token!544))) (value!189336 (value!189345 token!544))))))

(declare-fun bs!574233 () Bool)

(assert (= bs!574233 d!1083972))

(declare-fun m!4206291 () Bool)

(assert (=> bs!574233 m!4206291))

(assert (=> b!3693428 d!1083972))

(declare-fun d!1083974 () Bool)

(declare-fun charsToBigInt!0 (List!39279 Int) Int)

(assert (=> d!1083974 (= (inv!15 (value!189345 token!544)) (= (charsToBigInt!0 (text!43541 (value!189345 token!544)) 0) (value!189340 (value!189345 token!544))))))

(declare-fun bs!574234 () Bool)

(assert (= bs!574234 d!1083974))

(declare-fun m!4206293 () Bool)

(assert (=> bs!574234 m!4206293))

(assert (=> b!3693429 d!1083974))

(declare-fun bs!574235 () Bool)

(declare-fun d!1083976 () Bool)

(assert (= bs!574235 (and d!1083976 d!1083790)))

(declare-fun lambda!125028 () Int)

(assert (=> bs!574235 (= (= (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (rule!8776 token!544)))) (= lambda!125028 lambda!125007))))

(assert (=> d!1083976 true))

(assert (=> d!1083976 (< (dynLambda!17144 order!21667 (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) (dynLambda!17145 order!21669 lambda!125028))))

(assert (=> d!1083976 (= (equivClasses!2432 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) (Forall2!985 lambda!125028))))

(declare-fun bs!574236 () Bool)

(assert (= bs!574236 d!1083976))

(declare-fun m!4206295 () Bool)

(assert (=> bs!574236 m!4206295))

(assert (=> b!3693642 d!1083976))

(declare-fun d!1083978 () Bool)

(declare-fun lt!1293204 () Int)

(assert (=> d!1083978 (>= lt!1293204 0)))

(declare-fun e!2287503 () Int)

(assert (=> d!1083978 (= lt!1293204 e!2287503)))

(declare-fun c!638708 () Bool)

(assert (=> d!1083978 (= c!638708 ((_ is Nil!39156) (originalCharacters!6634 token!544)))))

(assert (=> d!1083978 (= (size!29898 (originalCharacters!6634 token!544)) lt!1293204)))

(declare-fun b!3694163 () Bool)

(assert (=> b!3694163 (= e!2287503 0)))

(declare-fun b!3694164 () Bool)

(assert (=> b!3694164 (= e!2287503 (+ 1 (size!29898 (t!301489 (originalCharacters!6634 token!544)))))))

(assert (= (and d!1083978 c!638708) b!3694163))

(assert (= (and d!1083978 (not c!638708)) b!3694164))

(declare-fun m!4206297 () Bool)

(assert (=> b!3694164 m!4206297))

(assert (=> b!3693614 d!1083978))

(declare-fun bs!574237 () Bool)

(declare-fun d!1083980 () Bool)

(assert (= bs!574237 (and d!1083980 d!1083948)))

(declare-fun lambda!125031 () Int)

(assert (=> bs!574237 (= (and (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) (= lambda!125031 lambda!125027))))

(assert (=> d!1083980 true))

(assert (=> d!1083980 (< (dynLambda!17153 order!21681 (toChars!8113 (transformation!5926 (rule!8776 token!544)))) (dynLambda!17152 order!21679 lambda!125031))))

(assert (=> d!1083980 true))

(assert (=> d!1083980 (< (dynLambda!17144 order!21667 (toValue!8254 (transformation!5926 (rule!8776 token!544)))) (dynLambda!17152 order!21679 lambda!125031))))

(declare-fun Forall!1388 (Int) Bool)

(assert (=> d!1083980 (= (semiInverseModEq!2533 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (rule!8776 token!544)))) (Forall!1388 lambda!125031))))

(declare-fun bs!574238 () Bool)

(assert (= bs!574238 d!1083980))

(declare-fun m!4206299 () Bool)

(assert (=> bs!574238 m!4206299))

(assert (=> d!1083738 d!1083980))

(assert (=> bm!267027 d!1083742))

(declare-fun b!3694169 () Bool)

(declare-fun e!2287505 () List!39280)

(assert (=> b!3694169 (= e!2287505 (_2!22661 (get!12992 lt!1292930)))))

(declare-fun b!3694171 () Bool)

(declare-fun res!1501927 () Bool)

(declare-fun e!2287504 () Bool)

(assert (=> b!3694171 (=> (not res!1501927) (not e!2287504))))

(declare-fun lt!1293205 () List!39280)

(assert (=> b!3694171 (= res!1501927 (= (size!29898 lt!1293205) (+ (size!29898 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (size!29898 (_2!22661 (get!12992 lt!1292930))))))))

(declare-fun d!1083982 () Bool)

(assert (=> d!1083982 e!2287504))

(declare-fun res!1501926 () Bool)

(assert (=> d!1083982 (=> (not res!1501926) (not e!2287504))))

(assert (=> d!1083982 (= res!1501926 (= (content!5674 lt!1293205) ((_ map or) (content!5674 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (content!5674 (_2!22661 (get!12992 lt!1292930))))))))

(assert (=> d!1083982 (= lt!1293205 e!2287505)))

(declare-fun c!638709 () Bool)

(assert (=> d!1083982 (= c!638709 ((_ is Nil!39156) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))))))

(assert (=> d!1083982 (= (++!9744 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))) (_2!22661 (get!12992 lt!1292930))) lt!1293205)))

(declare-fun b!3694170 () Bool)

(assert (=> b!3694170 (= e!2287505 (Cons!39156 (h!44576 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (++!9744 (t!301489 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930))))) (_2!22661 (get!12992 lt!1292930)))))))

(declare-fun b!3694172 () Bool)

(assert (=> b!3694172 (= e!2287504 (or (not (= (_2!22661 (get!12992 lt!1292930)) Nil!39156)) (= lt!1293205 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292930)))))))))

(assert (= (and d!1083982 c!638709) b!3694169))

(assert (= (and d!1083982 (not c!638709)) b!3694170))

(assert (= (and d!1083982 res!1501926) b!3694171))

(assert (= (and b!3694171 res!1501927) b!3694172))

(declare-fun m!4206301 () Bool)

(assert (=> b!3694171 m!4206301))

(assert (=> b!3694171 m!4205761))

(declare-fun m!4206303 () Bool)

(assert (=> b!3694171 m!4206303))

(assert (=> b!3694171 m!4205757))

(declare-fun m!4206305 () Bool)

(assert (=> d!1083982 m!4206305))

(assert (=> d!1083982 m!4205761))

(declare-fun m!4206307 () Bool)

(assert (=> d!1083982 m!4206307))

(declare-fun m!4206309 () Bool)

(assert (=> d!1083982 m!4206309))

(declare-fun m!4206311 () Bool)

(assert (=> b!3694170 m!4206311))

(assert (=> b!3693640 d!1083982))

(assert (=> b!3693640 d!1083956))

(assert (=> b!3693640 d!1083958))

(assert (=> b!3693640 d!1083798))

(declare-fun d!1083984 () Bool)

(assert (=> d!1083984 (= (inv!52623 (tag!6748 (h!44577 (t!301490 rules!3598)))) (= (mod (str.len (value!189344 (tag!6748 (h!44577 (t!301490 rules!3598))))) 2) 0))))

(assert (=> b!3693679 d!1083984))

(declare-fun d!1083986 () Bool)

(declare-fun res!1501928 () Bool)

(declare-fun e!2287506 () Bool)

(assert (=> d!1083986 (=> (not res!1501928) (not e!2287506))))

(assert (=> d!1083986 (= res!1501928 (semiInverseModEq!2533 (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598))))))))

(assert (=> d!1083986 (= (inv!52627 (transformation!5926 (h!44577 (t!301490 rules!3598)))) e!2287506)))

(declare-fun b!3694173 () Bool)

(assert (=> b!3694173 (= e!2287506 (equivClasses!2432 (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598))))))))

(assert (= (and d!1083986 res!1501928) b!3694173))

(declare-fun m!4206313 () Bool)

(assert (=> d!1083986 m!4206313))

(declare-fun m!4206315 () Bool)

(assert (=> b!3694173 m!4206315))

(assert (=> b!3693679 d!1083986))

(declare-fun bs!574239 () Bool)

(declare-fun d!1083988 () Bool)

(assert (= bs!574239 (and d!1083988 d!1083948)))

(declare-fun lambda!125032 () Int)

(assert (=> bs!574239 (= lambda!125032 lambda!125027)))

(declare-fun bs!574240 () Bool)

(assert (= bs!574240 (and d!1083988 d!1083980)))

(assert (=> bs!574240 (= (and (= (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toChars!8113 (transformation!5926 (rule!8776 token!544)))) (= (toValue!8254 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (rule!8776 token!544))))) (= lambda!125032 lambda!125031))))

(assert (=> d!1083988 true))

(assert (=> d!1083988 (< (dynLambda!17153 order!21681 (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) (dynLambda!17152 order!21679 lambda!125032))))

(assert (=> d!1083988 true))

(assert (=> d!1083988 (< (dynLambda!17144 order!21667 (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) (dynLambda!17152 order!21679 lambda!125032))))

(assert (=> d!1083988 (= (semiInverseModEq!2533 (toChars!8113 (transformation!5926 (h!44577 rules!3598))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) (Forall!1388 lambda!125032))))

(declare-fun bs!574241 () Bool)

(assert (= bs!574241 d!1083988))

(declare-fun m!4206317 () Bool)

(assert (=> bs!574241 m!4206317))

(assert (=> d!1083776 d!1083988))

(declare-fun d!1083990 () Bool)

(assert (=> d!1083990 (= (list!14633 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))) (list!14635 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(declare-fun bs!574242 () Bool)

(assert (= bs!574242 d!1083990))

(declare-fun m!4206319 () Bool)

(assert (=> bs!574242 m!4206319))

(assert (=> b!3693613 d!1083990))

(declare-fun d!1083992 () Bool)

(declare-fun res!1501933 () Bool)

(declare-fun e!2287511 () Bool)

(assert (=> d!1083992 (=> res!1501933 e!2287511)))

(assert (=> d!1083992 (= res!1501933 ((_ is Nil!39157) rules!3598))))

(assert (=> d!1083992 (= (noDuplicateTag!2286 thiss!25322 rules!3598 Nil!39159) e!2287511)))

(declare-fun b!3694178 () Bool)

(declare-fun e!2287512 () Bool)

(assert (=> b!3694178 (= e!2287511 e!2287512)))

(declare-fun res!1501934 () Bool)

(assert (=> b!3694178 (=> (not res!1501934) (not e!2287512))))

(declare-fun contains!7817 (List!39283 String!44114) Bool)

(assert (=> b!3694178 (= res!1501934 (not (contains!7817 Nil!39159 (tag!6748 (h!44577 rules!3598)))))))

(declare-fun b!3694179 () Bool)

(assert (=> b!3694179 (= e!2287512 (noDuplicateTag!2286 thiss!25322 (t!301490 rules!3598) (Cons!39159 (tag!6748 (h!44577 rules!3598)) Nil!39159)))))

(assert (= (and d!1083992 (not res!1501933)) b!3694178))

(assert (= (and b!3694178 res!1501934) b!3694179))

(declare-fun m!4206321 () Bool)

(assert (=> b!3694178 m!4206321))

(declare-fun m!4206323 () Bool)

(assert (=> b!3694179 m!4206323))

(assert (=> b!3693645 d!1083992))

(declare-fun d!1083994 () Bool)

(assert (=> d!1083994 (= (isDefined!6631 lt!1292930) (not (isEmpty!23341 lt!1292930)))))

(declare-fun bs!574243 () Bool)

(assert (= bs!574243 d!1083994))

(assert (=> bs!574243 m!4205749))

(assert (=> b!3693641 d!1083994))

(declare-fun d!1083996 () Bool)

(declare-fun lt!1293208 () Bool)

(declare-fun content!5677 (List!39281) (InoxSet Rule!11652))

(assert (=> d!1083996 (= lt!1293208 (select (content!5677 rules!3598) (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))

(declare-fun e!2287518 () Bool)

(assert (=> d!1083996 (= lt!1293208 e!2287518)))

(declare-fun res!1501940 () Bool)

(assert (=> d!1083996 (=> (not res!1501940) (not e!2287518))))

(assert (=> d!1083996 (= res!1501940 ((_ is Cons!39157) rules!3598))))

(assert (=> d!1083996 (= (contains!7816 rules!3598 (rule!8776 (_1!22661 (get!12992 lt!1292930)))) lt!1293208)))

(declare-fun b!3694184 () Bool)

(declare-fun e!2287517 () Bool)

(assert (=> b!3694184 (= e!2287518 e!2287517)))

(declare-fun res!1501939 () Bool)

(assert (=> b!3694184 (=> res!1501939 e!2287517)))

(assert (=> b!3694184 (= res!1501939 (= (h!44577 rules!3598) (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))

(declare-fun b!3694185 () Bool)

(assert (=> b!3694185 (= e!2287517 (contains!7816 (t!301490 rules!3598) (rule!8776 (_1!22661 (get!12992 lt!1292930)))))))

(assert (= (and d!1083996 res!1501940) b!3694184))

(assert (= (and b!3694184 (not res!1501939)) b!3694185))

(declare-fun m!4206325 () Bool)

(assert (=> d!1083996 m!4206325))

(declare-fun m!4206327 () Bool)

(assert (=> d!1083996 m!4206327))

(declare-fun m!4206329 () Bool)

(assert (=> b!3694185 m!4206329))

(assert (=> b!3693639 d!1083996))

(assert (=> b!3693639 d!1083798))

(declare-fun b!3694186 () Bool)

(declare-fun e!2287519 () Bool)

(assert (=> b!3694186 (= e!2287519 (matchR!5228 (derivativeStep!3273 (regex!5926 (h!44577 rules!3598)) (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))))) (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))))))))

(declare-fun b!3694187 () Bool)

(declare-fun res!1501942 () Bool)

(declare-fun e!2287521 () Bool)

(assert (=> b!3694187 (=> (not res!1501942) (not e!2287521))))

(assert (=> b!3694187 (= res!1501942 (isEmpty!23342 (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912)))))))))

(declare-fun b!3694188 () Bool)

(declare-fun e!2287523 () Bool)

(declare-fun lt!1293209 () Bool)

(declare-fun call!267104 () Bool)

(assert (=> b!3694188 (= e!2287523 (= lt!1293209 call!267104))))

(declare-fun bm!267099 () Bool)

(assert (=> bm!267099 (= call!267104 (isEmpty!23342 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))

(declare-fun b!3694190 () Bool)

(declare-fun res!1501948 () Bool)

(declare-fun e!2287520 () Bool)

(assert (=> b!3694190 (=> res!1501948 e!2287520)))

(assert (=> b!3694190 (= res!1501948 (not ((_ is ElementMatch!10685) (regex!5926 (h!44577 rules!3598)))))))

(declare-fun e!2287524 () Bool)

(assert (=> b!3694190 (= e!2287524 e!2287520)))

(declare-fun b!3694191 () Bool)

(declare-fun res!1501943 () Bool)

(declare-fun e!2287522 () Bool)

(assert (=> b!3694191 (=> res!1501943 e!2287522)))

(assert (=> b!3694191 (= res!1501943 (not (isEmpty!23342 (tail!5723 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))))

(declare-fun b!3694192 () Bool)

(declare-fun e!2287525 () Bool)

(assert (=> b!3694192 (= e!2287525 e!2287522)))

(declare-fun res!1501945 () Bool)

(assert (=> b!3694192 (=> res!1501945 e!2287522)))

(assert (=> b!3694192 (= res!1501945 call!267104)))

(declare-fun b!3694193 () Bool)

(assert (=> b!3694193 (= e!2287521 (= (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (c!638564 (regex!5926 (h!44577 rules!3598)))))))

(declare-fun b!3694194 () Bool)

(assert (=> b!3694194 (= e!2287520 e!2287525)))

(declare-fun res!1501941 () Bool)

(assert (=> b!3694194 (=> (not res!1501941) (not e!2287525))))

(assert (=> b!3694194 (= res!1501941 (not lt!1293209))))

(declare-fun b!3694195 () Bool)

(declare-fun res!1501947 () Bool)

(assert (=> b!3694195 (=> res!1501947 e!2287520)))

(assert (=> b!3694195 (= res!1501947 e!2287521)))

(declare-fun res!1501946 () Bool)

(assert (=> b!3694195 (=> (not res!1501946) (not e!2287521))))

(assert (=> b!3694195 (= res!1501946 lt!1293209)))

(declare-fun b!3694189 () Bool)

(declare-fun res!1501944 () Bool)

(assert (=> b!3694189 (=> (not res!1501944) (not e!2287521))))

(assert (=> b!3694189 (= res!1501944 (not call!267104))))

(declare-fun d!1083998 () Bool)

(assert (=> d!1083998 e!2287523))

(declare-fun c!638710 () Bool)

(assert (=> d!1083998 (= c!638710 ((_ is EmptyExpr!10685) (regex!5926 (h!44577 rules!3598))))))

(assert (=> d!1083998 (= lt!1293209 e!2287519)))

(declare-fun c!638712 () Bool)

(assert (=> d!1083998 (= c!638712 (isEmpty!23342 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))))))

(assert (=> d!1083998 (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))

(assert (=> d!1083998 (= (matchR!5228 (regex!5926 (h!44577 rules!3598)) (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) lt!1293209)))

(declare-fun b!3694196 () Bool)

(assert (=> b!3694196 (= e!2287522 (not (= (head!7986 (list!14633 (charsOf!3925 (_1!22661 (get!12992 lt!1292912))))) (c!638564 (regex!5926 (h!44577 rules!3598))))))))

(declare-fun b!3694197 () Bool)

(assert (=> b!3694197 (= e!2287519 (nullable!3730 (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3694198 () Bool)

(assert (=> b!3694198 (= e!2287523 e!2287524)))

(declare-fun c!638711 () Bool)

(assert (=> b!3694198 (= c!638711 ((_ is EmptyLang!10685) (regex!5926 (h!44577 rules!3598))))))

(declare-fun b!3694199 () Bool)

(assert (=> b!3694199 (= e!2287524 (not lt!1293209))))

(assert (= (and d!1083998 c!638712) b!3694197))

(assert (= (and d!1083998 (not c!638712)) b!3694186))

(assert (= (and d!1083998 c!638710) b!3694188))

(assert (= (and d!1083998 (not c!638710)) b!3694198))

(assert (= (and b!3694198 c!638711) b!3694199))

(assert (= (and b!3694198 (not c!638711)) b!3694190))

(assert (= (and b!3694190 (not res!1501948)) b!3694195))

(assert (= (and b!3694195 res!1501946) b!3694189))

(assert (= (and b!3694189 res!1501944) b!3694187))

(assert (= (and b!3694187 res!1501942) b!3694193))

(assert (= (and b!3694195 (not res!1501947)) b!3694194))

(assert (= (and b!3694194 res!1501941) b!3694192))

(assert (= (and b!3694192 (not res!1501945)) b!3694191))

(assert (= (and b!3694191 (not res!1501943)) b!3694196))

(assert (= (or b!3694188 b!3694189 b!3694192) bm!267099))

(assert (=> b!3694197 m!4205913))

(assert (=> b!3694191 m!4205711))

(declare-fun m!4206331 () Bool)

(assert (=> b!3694191 m!4206331))

(assert (=> b!3694191 m!4206331))

(declare-fun m!4206333 () Bool)

(assert (=> b!3694191 m!4206333))

(assert (=> b!3694186 m!4205711))

(declare-fun m!4206335 () Bool)

(assert (=> b!3694186 m!4206335))

(assert (=> b!3694186 m!4206335))

(declare-fun m!4206337 () Bool)

(assert (=> b!3694186 m!4206337))

(assert (=> b!3694186 m!4205711))

(assert (=> b!3694186 m!4206331))

(assert (=> b!3694186 m!4206337))

(assert (=> b!3694186 m!4206331))

(declare-fun m!4206339 () Bool)

(assert (=> b!3694186 m!4206339))

(assert (=> d!1083998 m!4205711))

(declare-fun m!4206341 () Bool)

(assert (=> d!1083998 m!4206341))

(assert (=> d!1083998 m!4205503))

(assert (=> bm!267099 m!4205711))

(assert (=> bm!267099 m!4206341))

(assert (=> b!3694187 m!4205711))

(assert (=> b!3694187 m!4206331))

(assert (=> b!3694187 m!4206331))

(assert (=> b!3694187 m!4206333))

(assert (=> b!3694196 m!4205711))

(assert (=> b!3694196 m!4206335))

(assert (=> b!3694193 m!4205711))

(assert (=> b!3694193 m!4206335))

(assert (=> b!3693576 d!1083998))

(assert (=> b!3693576 d!1083784))

(assert (=> b!3693576 d!1083786))

(assert (=> b!3693576 d!1083788))

(declare-fun d!1084000 () Bool)

(assert (=> d!1084000 (= (isEmpty!23341 lt!1292930) (not ((_ is Some!8437) lt!1292930)))))

(assert (=> d!1083768 d!1084000))

(declare-fun b!3694211 () Bool)

(declare-fun e!2287533 () Bool)

(assert (=> b!3694211 (= e!2287533 (>= (size!29898 input!3172) (size!29898 input!3172)))))

(declare-fun b!3694208 () Bool)

(declare-fun e!2287532 () Bool)

(declare-fun e!2287534 () Bool)

(assert (=> b!3694208 (= e!2287532 e!2287534)))

(declare-fun res!1501958 () Bool)

(assert (=> b!3694208 (=> (not res!1501958) (not e!2287534))))

(assert (=> b!3694208 (= res!1501958 (not ((_ is Nil!39156) input!3172)))))

(declare-fun b!3694209 () Bool)

(declare-fun res!1501959 () Bool)

(assert (=> b!3694209 (=> (not res!1501959) (not e!2287534))))

(assert (=> b!3694209 (= res!1501959 (= (head!7986 input!3172) (head!7986 input!3172)))))

(declare-fun d!1084002 () Bool)

(assert (=> d!1084002 e!2287533))

(declare-fun res!1501957 () Bool)

(assert (=> d!1084002 (=> res!1501957 e!2287533)))

(declare-fun lt!1293212 () Bool)

(assert (=> d!1084002 (= res!1501957 (not lt!1293212))))

(assert (=> d!1084002 (= lt!1293212 e!2287532)))

(declare-fun res!1501960 () Bool)

(assert (=> d!1084002 (=> res!1501960 e!2287532)))

(assert (=> d!1084002 (= res!1501960 ((_ is Nil!39156) input!3172))))

(assert (=> d!1084002 (= (isPrefix!3266 input!3172 input!3172) lt!1293212)))

(declare-fun b!3694210 () Bool)

(assert (=> b!3694210 (= e!2287534 (isPrefix!3266 (tail!5723 input!3172) (tail!5723 input!3172)))))

(assert (= (and d!1084002 (not res!1501960)) b!3694208))

(assert (= (and b!3694208 res!1501958) b!3694209))

(assert (= (and b!3694209 res!1501959) b!3694210))

(assert (= (and d!1084002 (not res!1501957)) b!3694211))

(assert (=> b!3694211 m!4205691))

(assert (=> b!3694211 m!4205691))

(assert (=> b!3694209 m!4206107))

(assert (=> b!3694209 m!4206107))

(assert (=> b!3694210 m!4206125))

(assert (=> b!3694210 m!4206125))

(assert (=> b!3694210 m!4206125))

(assert (=> b!3694210 m!4206125))

(declare-fun m!4206343 () Bool)

(assert (=> b!3694210 m!4206343))

(assert (=> d!1083768 d!1084002))

(declare-fun d!1084004 () Bool)

(assert (=> d!1084004 (isPrefix!3266 input!3172 input!3172)))

(declare-fun lt!1293215 () Unit!57160)

(declare-fun choose!22114 (List!39280 List!39280) Unit!57160)

(assert (=> d!1084004 (= lt!1293215 (choose!22114 input!3172 input!3172))))

(assert (=> d!1084004 (= (lemmaIsPrefixRefl!2051 input!3172 input!3172) lt!1293215)))

(declare-fun bs!574244 () Bool)

(assert (= bs!574244 d!1084004))

(assert (=> bs!574244 m!4205751))

(declare-fun m!4206345 () Bool)

(assert (=> bs!574244 m!4206345))

(assert (=> d!1083768 d!1084004))

(declare-fun bs!574245 () Bool)

(declare-fun d!1084006 () Bool)

(assert (= bs!574245 (and d!1084006 d!1083808)))

(declare-fun lambda!125035 () Int)

(assert (=> bs!574245 (= lambda!125035 lambda!125010)))

(assert (=> d!1084006 true))

(declare-fun lt!1293218 () Bool)

(assert (=> d!1084006 (= lt!1293218 (forall!8181 rules!3598 lambda!125035))))

(declare-fun e!2287540 () Bool)

(assert (=> d!1084006 (= lt!1293218 e!2287540)))

(declare-fun res!1501966 () Bool)

(assert (=> d!1084006 (=> res!1501966 e!2287540)))

(assert (=> d!1084006 (= res!1501966 (not ((_ is Cons!39157) rules!3598)))))

(assert (=> d!1084006 (= (rulesValidInductive!2132 thiss!25322 rules!3598) lt!1293218)))

(declare-fun b!3694216 () Bool)

(declare-fun e!2287539 () Bool)

(assert (=> b!3694216 (= e!2287540 e!2287539)))

(declare-fun res!1501965 () Bool)

(assert (=> b!3694216 (=> (not res!1501965) (not e!2287539))))

(assert (=> b!3694216 (= res!1501965 (ruleValid!2147 thiss!25322 (h!44577 rules!3598)))))

(declare-fun b!3694217 () Bool)

(assert (=> b!3694217 (= e!2287539 (rulesValidInductive!2132 thiss!25322 (t!301490 rules!3598)))))

(assert (= (and d!1084006 (not res!1501966)) b!3694216))

(assert (= (and b!3694216 res!1501965) b!3694217))

(declare-fun m!4206347 () Bool)

(assert (=> d!1084006 m!4206347))

(assert (=> b!3694216 m!4205687))

(assert (=> b!3694217 m!4206167))

(assert (=> d!1083768 d!1084006))

(declare-fun b!3694227 () Bool)

(declare-fun e!2287545 () List!39280)

(declare-fun e!2287546 () List!39280)

(assert (=> b!3694227 (= e!2287545 e!2287546)))

(declare-fun c!638718 () Bool)

(assert (=> b!3694227 (= c!638718 ((_ is Leaf!18597) (c!638565 (charsOf!3925 token!544))))))

(declare-fun b!3694226 () Bool)

(assert (=> b!3694226 (= e!2287545 Nil!39156)))

(declare-fun b!3694229 () Bool)

(assert (=> b!3694229 (= e!2287546 (++!9744 (list!14635 (left!30528 (c!638565 (charsOf!3925 token!544)))) (list!14635 (right!30858 (c!638565 (charsOf!3925 token!544))))))))

(declare-fun b!3694228 () Bool)

(declare-fun list!14637 (IArray!24051) List!39280)

(assert (=> b!3694228 (= e!2287546 (list!14637 (xs!15225 (c!638565 (charsOf!3925 token!544)))))))

(declare-fun d!1084008 () Bool)

(declare-fun c!638717 () Bool)

(assert (=> d!1084008 (= c!638717 ((_ is Empty!12023) (c!638565 (charsOf!3925 token!544))))))

(assert (=> d!1084008 (= (list!14635 (c!638565 (charsOf!3925 token!544))) e!2287545)))

(assert (= (and d!1084008 c!638717) b!3694226))

(assert (= (and d!1084008 (not c!638717)) b!3694227))

(assert (= (and b!3694227 c!638718) b!3694228))

(assert (= (and b!3694227 (not c!638718)) b!3694229))

(declare-fun m!4206349 () Bool)

(assert (=> b!3694229 m!4206349))

(declare-fun m!4206351 () Bool)

(assert (=> b!3694229 m!4206351))

(assert (=> b!3694229 m!4206349))

(assert (=> b!3694229 m!4206351))

(declare-fun m!4206353 () Bool)

(assert (=> b!3694229 m!4206353))

(declare-fun m!4206355 () Bool)

(assert (=> b!3694228 m!4206355))

(assert (=> d!1083760 d!1084008))

(declare-fun d!1084010 () Bool)

(declare-fun c!638721 () Bool)

(assert (=> d!1084010 (= c!638721 ((_ is Node!12023) (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(declare-fun e!2287551 () Bool)

(assert (=> d!1084010 (= (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))) e!2287551)))

(declare-fun b!3694236 () Bool)

(declare-fun inv!52634 (Conc!12023) Bool)

(assert (=> b!3694236 (= e!2287551 (inv!52634 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(declare-fun b!3694237 () Bool)

(declare-fun e!2287552 () Bool)

(assert (=> b!3694237 (= e!2287551 e!2287552)))

(declare-fun res!1501969 () Bool)

(assert (=> b!3694237 (= res!1501969 (not ((_ is Leaf!18597) (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))))))

(assert (=> b!3694237 (=> res!1501969 e!2287552)))

(declare-fun b!3694238 () Bool)

(declare-fun inv!52635 (Conc!12023) Bool)

(assert (=> b!3694238 (= e!2287552 (inv!52635 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))))))

(assert (= (and d!1084010 c!638721) b!3694236))

(assert (= (and d!1084010 (not c!638721)) b!3694237))

(assert (= (and b!3694237 (not res!1501969)) b!3694238))

(declare-fun m!4206357 () Bool)

(assert (=> b!3694236 m!4206357))

(declare-fun m!4206359 () Bool)

(assert (=> b!3694238 m!4206359))

(assert (=> b!3693608 d!1084010))

(declare-fun d!1084012 () Bool)

(assert (=> d!1084012 (= (isEmpty!23341 lt!1292912) (not ((_ is Some!8437) lt!1292912)))))

(assert (=> d!1083742 d!1084012))

(declare-fun d!1084014 () Bool)

(assert (=> d!1084014 (= (isEmpty!23342 (_1!22663 lt!1292910)) ((_ is Nil!39156) (_1!22663 lt!1292910)))))

(assert (=> d!1083742 d!1084014))

(declare-fun d!1084016 () Bool)

(declare-fun lt!1293240 () tuple2!39058)

(assert (=> d!1084016 (= (++!9744 (_1!22663 lt!1293240) (_2!22663 lt!1293240)) input!3172)))

(declare-fun sizeTr!229 (List!39280 Int) Int)

(assert (=> d!1084016 (= lt!1293240 (findLongestMatchInner!1109 (regex!5926 (h!44577 rules!3598)) Nil!39156 0 input!3172 input!3172 (sizeTr!229 input!3172 0)))))

(declare-fun lt!1293242 () Unit!57160)

(declare-fun lt!1293236 () Unit!57160)

(assert (=> d!1084016 (= lt!1293242 lt!1293236)))

(declare-fun lt!1293235 () List!39280)

(declare-fun lt!1293237 () Int)

(assert (=> d!1084016 (= (sizeTr!229 lt!1293235 lt!1293237) (+ (size!29898 lt!1293235) lt!1293237))))

(declare-fun lemmaSizeTrEqualsSize!228 (List!39280 Int) Unit!57160)

(assert (=> d!1084016 (= lt!1293236 (lemmaSizeTrEqualsSize!228 lt!1293235 lt!1293237))))

(assert (=> d!1084016 (= lt!1293237 0)))

(assert (=> d!1084016 (= lt!1293235 Nil!39156)))

(declare-fun lt!1293239 () Unit!57160)

(declare-fun lt!1293238 () Unit!57160)

(assert (=> d!1084016 (= lt!1293239 lt!1293238)))

(declare-fun lt!1293241 () Int)

(assert (=> d!1084016 (= (sizeTr!229 input!3172 lt!1293241) (+ (size!29898 input!3172) lt!1293241))))

(assert (=> d!1084016 (= lt!1293238 (lemmaSizeTrEqualsSize!228 input!3172 lt!1293241))))

(assert (=> d!1084016 (= lt!1293241 0)))

(assert (=> d!1084016 (validRegex!4892 (regex!5926 (h!44577 rules!3598)))))

(assert (=> d!1084016 (= (findLongestMatch!1024 (regex!5926 (h!44577 rules!3598)) input!3172) lt!1293240)))

(declare-fun bs!574246 () Bool)

(assert (= bs!574246 d!1084016))

(declare-fun m!4206361 () Bool)

(assert (=> bs!574246 m!4206361))

(declare-fun m!4206363 () Bool)

(assert (=> bs!574246 m!4206363))

(assert (=> bs!574246 m!4205503))

(declare-fun m!4206365 () Bool)

(assert (=> bs!574246 m!4206365))

(declare-fun m!4206367 () Bool)

(assert (=> bs!574246 m!4206367))

(declare-fun m!4206369 () Bool)

(assert (=> bs!574246 m!4206369))

(declare-fun m!4206371 () Bool)

(assert (=> bs!574246 m!4206371))

(assert (=> bs!574246 m!4206365))

(assert (=> bs!574246 m!4205691))

(declare-fun m!4206373 () Bool)

(assert (=> bs!574246 m!4206373))

(declare-fun m!4206375 () Bool)

(assert (=> bs!574246 m!4206375))

(assert (=> d!1083742 d!1084016))

(declare-fun d!1084018 () Bool)

(declare-fun res!1501974 () Bool)

(declare-fun e!2287555 () Bool)

(assert (=> d!1084018 (=> (not res!1501974) (not e!2287555))))

(assert (=> d!1084018 (= res!1501974 (validRegex!4892 (regex!5926 (h!44577 rules!3598))))))

(assert (=> d!1084018 (= (ruleValid!2147 thiss!25322 (h!44577 rules!3598)) e!2287555)))

(declare-fun b!3694243 () Bool)

(declare-fun res!1501975 () Bool)

(assert (=> b!3694243 (=> (not res!1501975) (not e!2287555))))

(assert (=> b!3694243 (= res!1501975 (not (nullable!3730 (regex!5926 (h!44577 rules!3598)))))))

(declare-fun b!3694244 () Bool)

(assert (=> b!3694244 (= e!2287555 (not (= (tag!6748 (h!44577 rules!3598)) (String!44115 ""))))))

(assert (= (and d!1084018 res!1501974) b!3694243))

(assert (= (and b!3694243 res!1501975) b!3694244))

(assert (=> d!1084018 m!4205503))

(assert (=> b!3694243 m!4205913))

(assert (=> d!1083742 d!1084018))

(declare-fun d!1084020 () Bool)

(assert (=> d!1084020 (= (isEmpty!23342 (originalCharacters!6634 token!544)) ((_ is Nil!39156) (originalCharacters!6634 token!544)))))

(assert (=> d!1083764 d!1084020))

(declare-fun d!1084022 () Bool)

(declare-fun charsToBigInt!1 (List!39279) Int)

(assert (=> d!1084022 (= (inv!17 (value!189345 token!544)) (= (charsToBigInt!1 (text!43540 (value!189345 token!544))) (value!189337 (value!189345 token!544))))))

(declare-fun bs!574247 () Bool)

(assert (= bs!574247 d!1084022))

(declare-fun m!4206377 () Bool)

(assert (=> bs!574247 m!4206377))

(assert (=> b!3693430 d!1084022))

(declare-fun b!3694248 () Bool)

(declare-fun e!2287556 () Bool)

(declare-fun tp!1122638 () Bool)

(declare-fun tp!1122639 () Bool)

(assert (=> b!3694248 (= e!2287556 (and tp!1122638 tp!1122639))))

(declare-fun b!3694246 () Bool)

(declare-fun tp!1122635 () Bool)

(declare-fun tp!1122636 () Bool)

(assert (=> b!3694246 (= e!2287556 (and tp!1122635 tp!1122636))))

(declare-fun b!3694247 () Bool)

(declare-fun tp!1122637 () Bool)

(assert (=> b!3694247 (= e!2287556 tp!1122637)))

(declare-fun b!3694245 () Bool)

(assert (=> b!3694245 (= e!2287556 tp_is_empty!18445)))

(assert (=> b!3693664 (= tp!1122539 e!2287556)))

(assert (= (and b!3693664 ((_ is ElementMatch!10685) (regOne!21883 (regex!5926 (rule!8776 token!544))))) b!3694245))

(assert (= (and b!3693664 ((_ is Concat!16842) (regOne!21883 (regex!5926 (rule!8776 token!544))))) b!3694246))

(assert (= (and b!3693664 ((_ is Star!10685) (regOne!21883 (regex!5926 (rule!8776 token!544))))) b!3694247))

(assert (= (and b!3693664 ((_ is Union!10685) (regOne!21883 (regex!5926 (rule!8776 token!544))))) b!3694248))

(declare-fun b!3694252 () Bool)

(declare-fun e!2287557 () Bool)

(declare-fun tp!1122643 () Bool)

(declare-fun tp!1122644 () Bool)

(assert (=> b!3694252 (= e!2287557 (and tp!1122643 tp!1122644))))

(declare-fun b!3694250 () Bool)

(declare-fun tp!1122640 () Bool)

(declare-fun tp!1122641 () Bool)

(assert (=> b!3694250 (= e!2287557 (and tp!1122640 tp!1122641))))

(declare-fun b!3694251 () Bool)

(declare-fun tp!1122642 () Bool)

(assert (=> b!3694251 (= e!2287557 tp!1122642)))

(declare-fun b!3694249 () Bool)

(assert (=> b!3694249 (= e!2287557 tp_is_empty!18445)))

(assert (=> b!3693664 (= tp!1122540 e!2287557)))

(assert (= (and b!3693664 ((_ is ElementMatch!10685) (regTwo!21883 (regex!5926 (rule!8776 token!544))))) b!3694249))

(assert (= (and b!3693664 ((_ is Concat!16842) (regTwo!21883 (regex!5926 (rule!8776 token!544))))) b!3694250))

(assert (= (and b!3693664 ((_ is Star!10685) (regTwo!21883 (regex!5926 (rule!8776 token!544))))) b!3694251))

(assert (= (and b!3693664 ((_ is Union!10685) (regTwo!21883 (regex!5926 (rule!8776 token!544))))) b!3694252))

(declare-fun b!3694256 () Bool)

(declare-fun e!2287558 () Bool)

(declare-fun tp!1122648 () Bool)

(declare-fun tp!1122649 () Bool)

(assert (=> b!3694256 (= e!2287558 (and tp!1122648 tp!1122649))))

(declare-fun b!3694254 () Bool)

(declare-fun tp!1122645 () Bool)

(declare-fun tp!1122646 () Bool)

(assert (=> b!3694254 (= e!2287558 (and tp!1122645 tp!1122646))))

(declare-fun b!3694255 () Bool)

(declare-fun tp!1122647 () Bool)

(assert (=> b!3694255 (= e!2287558 tp!1122647)))

(declare-fun b!3694253 () Bool)

(assert (=> b!3694253 (= e!2287558 tp_is_empty!18445)))

(assert (=> b!3693663 (= tp!1122538 e!2287558)))

(assert (= (and b!3693663 ((_ is ElementMatch!10685) (reg!11014 (regex!5926 (rule!8776 token!544))))) b!3694253))

(assert (= (and b!3693663 ((_ is Concat!16842) (reg!11014 (regex!5926 (rule!8776 token!544))))) b!3694254))

(assert (= (and b!3693663 ((_ is Star!10685) (reg!11014 (regex!5926 (rule!8776 token!544))))) b!3694255))

(assert (= (and b!3693663 ((_ is Union!10685) (reg!11014 (regex!5926 (rule!8776 token!544))))) b!3694256))

(declare-fun b!3694260 () Bool)

(declare-fun e!2287559 () Bool)

(declare-fun tp!1122653 () Bool)

(declare-fun tp!1122654 () Bool)

(assert (=> b!3694260 (= e!2287559 (and tp!1122653 tp!1122654))))

(declare-fun b!3694258 () Bool)

(declare-fun tp!1122650 () Bool)

(declare-fun tp!1122651 () Bool)

(assert (=> b!3694258 (= e!2287559 (and tp!1122650 tp!1122651))))

(declare-fun b!3694259 () Bool)

(declare-fun tp!1122652 () Bool)

(assert (=> b!3694259 (= e!2287559 tp!1122652)))

(declare-fun b!3694257 () Bool)

(assert (=> b!3694257 (= e!2287559 tp_is_empty!18445)))

(assert (=> b!3693668 (= tp!1122544 e!2287559)))

(assert (= (and b!3693668 ((_ is ElementMatch!10685) (regOne!21883 (regex!5926 (h!44577 rules!3598))))) b!3694257))

(assert (= (and b!3693668 ((_ is Concat!16842) (regOne!21883 (regex!5926 (h!44577 rules!3598))))) b!3694258))

(assert (= (and b!3693668 ((_ is Star!10685) (regOne!21883 (regex!5926 (h!44577 rules!3598))))) b!3694259))

(assert (= (and b!3693668 ((_ is Union!10685) (regOne!21883 (regex!5926 (h!44577 rules!3598))))) b!3694260))

(declare-fun b!3694264 () Bool)

(declare-fun e!2287560 () Bool)

(declare-fun tp!1122658 () Bool)

(declare-fun tp!1122659 () Bool)

(assert (=> b!3694264 (= e!2287560 (and tp!1122658 tp!1122659))))

(declare-fun b!3694262 () Bool)

(declare-fun tp!1122655 () Bool)

(declare-fun tp!1122656 () Bool)

(assert (=> b!3694262 (= e!2287560 (and tp!1122655 tp!1122656))))

(declare-fun b!3694263 () Bool)

(declare-fun tp!1122657 () Bool)

(assert (=> b!3694263 (= e!2287560 tp!1122657)))

(declare-fun b!3694261 () Bool)

(assert (=> b!3694261 (= e!2287560 tp_is_empty!18445)))

(assert (=> b!3693668 (= tp!1122545 e!2287560)))

(assert (= (and b!3693668 ((_ is ElementMatch!10685) (regTwo!21883 (regex!5926 (h!44577 rules!3598))))) b!3694261))

(assert (= (and b!3693668 ((_ is Concat!16842) (regTwo!21883 (regex!5926 (h!44577 rules!3598))))) b!3694262))

(assert (= (and b!3693668 ((_ is Star!10685) (regTwo!21883 (regex!5926 (h!44577 rules!3598))))) b!3694263))

(assert (= (and b!3693668 ((_ is Union!10685) (regTwo!21883 (regex!5926 (h!44577 rules!3598))))) b!3694264))

(declare-fun b!3694268 () Bool)

(declare-fun e!2287561 () Bool)

(declare-fun tp!1122663 () Bool)

(declare-fun tp!1122664 () Bool)

(assert (=> b!3694268 (= e!2287561 (and tp!1122663 tp!1122664))))

(declare-fun b!3694266 () Bool)

(declare-fun tp!1122660 () Bool)

(declare-fun tp!1122661 () Bool)

(assert (=> b!3694266 (= e!2287561 (and tp!1122660 tp!1122661))))

(declare-fun b!3694267 () Bool)

(declare-fun tp!1122662 () Bool)

(assert (=> b!3694267 (= e!2287561 tp!1122662)))

(declare-fun b!3694265 () Bool)

(assert (=> b!3694265 (= e!2287561 tp_is_empty!18445)))

(assert (=> b!3693666 (= tp!1122541 e!2287561)))

(assert (= (and b!3693666 ((_ is ElementMatch!10685) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) b!3694265))

(assert (= (and b!3693666 ((_ is Concat!16842) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) b!3694266))

(assert (= (and b!3693666 ((_ is Star!10685) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) b!3694267))

(assert (= (and b!3693666 ((_ is Union!10685) (regOne!21882 (regex!5926 (h!44577 rules!3598))))) b!3694268))

(declare-fun b!3694272 () Bool)

(declare-fun e!2287562 () Bool)

(declare-fun tp!1122668 () Bool)

(declare-fun tp!1122669 () Bool)

(assert (=> b!3694272 (= e!2287562 (and tp!1122668 tp!1122669))))

(declare-fun b!3694270 () Bool)

(declare-fun tp!1122665 () Bool)

(declare-fun tp!1122666 () Bool)

(assert (=> b!3694270 (= e!2287562 (and tp!1122665 tp!1122666))))

(declare-fun b!3694271 () Bool)

(declare-fun tp!1122667 () Bool)

(assert (=> b!3694271 (= e!2287562 tp!1122667)))

(declare-fun b!3694269 () Bool)

(assert (=> b!3694269 (= e!2287562 tp_is_empty!18445)))

(assert (=> b!3693666 (= tp!1122542 e!2287562)))

(assert (= (and b!3693666 ((_ is ElementMatch!10685) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))) b!3694269))

(assert (= (and b!3693666 ((_ is Concat!16842) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))) b!3694270))

(assert (= (and b!3693666 ((_ is Star!10685) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))) b!3694271))

(assert (= (and b!3693666 ((_ is Union!10685) (regTwo!21882 (regex!5926 (h!44577 rules!3598))))) b!3694272))

(declare-fun b!3694276 () Bool)

(declare-fun e!2287563 () Bool)

(declare-fun tp!1122673 () Bool)

(declare-fun tp!1122674 () Bool)

(assert (=> b!3694276 (= e!2287563 (and tp!1122673 tp!1122674))))

(declare-fun b!3694274 () Bool)

(declare-fun tp!1122670 () Bool)

(declare-fun tp!1122671 () Bool)

(assert (=> b!3694274 (= e!2287563 (and tp!1122670 tp!1122671))))

(declare-fun b!3694275 () Bool)

(declare-fun tp!1122672 () Bool)

(assert (=> b!3694275 (= e!2287563 tp!1122672)))

(declare-fun b!3694273 () Bool)

(assert (=> b!3694273 (= e!2287563 tp_is_empty!18445)))

(assert (=> b!3693679 (= tp!1122558 e!2287563)))

(assert (= (and b!3693679 ((_ is ElementMatch!10685) (regex!5926 (h!44577 (t!301490 rules!3598))))) b!3694273))

(assert (= (and b!3693679 ((_ is Concat!16842) (regex!5926 (h!44577 (t!301490 rules!3598))))) b!3694274))

(assert (= (and b!3693679 ((_ is Star!10685) (regex!5926 (h!44577 (t!301490 rules!3598))))) b!3694275))

(assert (= (and b!3693679 ((_ is Union!10685) (regex!5926 (h!44577 (t!301490 rules!3598))))) b!3694276))

(declare-fun b!3694280 () Bool)

(declare-fun e!2287564 () Bool)

(declare-fun tp!1122678 () Bool)

(declare-fun tp!1122679 () Bool)

(assert (=> b!3694280 (= e!2287564 (and tp!1122678 tp!1122679))))

(declare-fun b!3694278 () Bool)

(declare-fun tp!1122675 () Bool)

(declare-fun tp!1122676 () Bool)

(assert (=> b!3694278 (= e!2287564 (and tp!1122675 tp!1122676))))

(declare-fun b!3694279 () Bool)

(declare-fun tp!1122677 () Bool)

(assert (=> b!3694279 (= e!2287564 tp!1122677)))

(declare-fun b!3694277 () Bool)

(assert (=> b!3694277 (= e!2287564 tp_is_empty!18445)))

(assert (=> b!3693662 (= tp!1122536 e!2287564)))

(assert (= (and b!3693662 ((_ is ElementMatch!10685) (regOne!21882 (regex!5926 (rule!8776 token!544))))) b!3694277))

(assert (= (and b!3693662 ((_ is Concat!16842) (regOne!21882 (regex!5926 (rule!8776 token!544))))) b!3694278))

(assert (= (and b!3693662 ((_ is Star!10685) (regOne!21882 (regex!5926 (rule!8776 token!544))))) b!3694279))

(assert (= (and b!3693662 ((_ is Union!10685) (regOne!21882 (regex!5926 (rule!8776 token!544))))) b!3694280))

(declare-fun b!3694284 () Bool)

(declare-fun e!2287565 () Bool)

(declare-fun tp!1122683 () Bool)

(declare-fun tp!1122684 () Bool)

(assert (=> b!3694284 (= e!2287565 (and tp!1122683 tp!1122684))))

(declare-fun b!3694282 () Bool)

(declare-fun tp!1122680 () Bool)

(declare-fun tp!1122681 () Bool)

(assert (=> b!3694282 (= e!2287565 (and tp!1122680 tp!1122681))))

(declare-fun b!3694283 () Bool)

(declare-fun tp!1122682 () Bool)

(assert (=> b!3694283 (= e!2287565 tp!1122682)))

(declare-fun b!3694281 () Bool)

(assert (=> b!3694281 (= e!2287565 tp_is_empty!18445)))

(assert (=> b!3693662 (= tp!1122537 e!2287565)))

(assert (= (and b!3693662 ((_ is ElementMatch!10685) (regTwo!21882 (regex!5926 (rule!8776 token!544))))) b!3694281))

(assert (= (and b!3693662 ((_ is Concat!16842) (regTwo!21882 (regex!5926 (rule!8776 token!544))))) b!3694282))

(assert (= (and b!3693662 ((_ is Star!10685) (regTwo!21882 (regex!5926 (rule!8776 token!544))))) b!3694283))

(assert (= (and b!3693662 ((_ is Union!10685) (regTwo!21882 (regex!5926 (rule!8776 token!544))))) b!3694284))

(declare-fun b!3694288 () Bool)

(declare-fun e!2287566 () Bool)

(declare-fun tp!1122688 () Bool)

(declare-fun tp!1122689 () Bool)

(assert (=> b!3694288 (= e!2287566 (and tp!1122688 tp!1122689))))

(declare-fun b!3694286 () Bool)

(declare-fun tp!1122685 () Bool)

(declare-fun tp!1122686 () Bool)

(assert (=> b!3694286 (= e!2287566 (and tp!1122685 tp!1122686))))

(declare-fun b!3694287 () Bool)

(declare-fun tp!1122687 () Bool)

(assert (=> b!3694287 (= e!2287566 tp!1122687)))

(declare-fun b!3694285 () Bool)

(assert (=> b!3694285 (= e!2287566 tp_is_empty!18445)))

(assert (=> b!3693667 (= tp!1122543 e!2287566)))

(assert (= (and b!3693667 ((_ is ElementMatch!10685) (reg!11014 (regex!5926 (h!44577 rules!3598))))) b!3694285))

(assert (= (and b!3693667 ((_ is Concat!16842) (reg!11014 (regex!5926 (h!44577 rules!3598))))) b!3694286))

(assert (= (and b!3693667 ((_ is Star!10685) (reg!11014 (regex!5926 (h!44577 rules!3598))))) b!3694287))

(assert (= (and b!3693667 ((_ is Union!10685) (reg!11014 (regex!5926 (h!44577 rules!3598))))) b!3694288))

(declare-fun b!3694289 () Bool)

(declare-fun e!2287567 () Bool)

(declare-fun tp!1122690 () Bool)

(assert (=> b!3694289 (= e!2287567 (and tp_is_empty!18445 tp!1122690))))

(assert (=> b!3693650 (= tp!1122525 e!2287567)))

(assert (= (and b!3693650 ((_ is Cons!39156) (t!301489 (originalCharacters!6634 token!544)))) b!3694289))

(declare-fun b!3694292 () Bool)

(declare-fun b_free!98133 () Bool)

(declare-fun b_next!98837 () Bool)

(assert (=> b!3694292 (= b_free!98133 (not b_next!98837))))

(declare-fun t!301594 () Bool)

(declare-fun tb!214027 () Bool)

(assert (=> (and b!3694292 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301594) tb!214027))

(declare-fun result!260650 () Bool)

(assert (= result!260650 result!260564))

(assert (=> d!1083800 t!301594))

(declare-fun t!301596 () Bool)

(declare-fun tb!214029 () Bool)

(assert (=> (and b!3694292 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toValue!8254 (transformation!5926 (h!44577 rules!3598)))) t!301596) tb!214029))

(declare-fun result!260652 () Bool)

(assert (= result!260652 result!260626))

(assert (=> d!1083946 t!301596))

(assert (=> d!1083948 t!301596))

(declare-fun tb!214031 () Bool)

(declare-fun t!301598 () Bool)

(assert (=> (and b!3694292 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toValue!8254 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301598) tb!214031))

(declare-fun result!260654 () Bool)

(assert (= result!260654 result!260644))

(assert (=> d!1083962 t!301598))

(declare-fun b_and!276039 () Bool)

(declare-fun tp!1122693 () Bool)

(assert (=> b!3694292 (= tp!1122693 (and (=> t!301594 result!260650) (=> t!301596 result!260652) (=> t!301598 result!260654) b_and!276039))))

(declare-fun b_free!98135 () Bool)

(declare-fun b_next!98839 () Bool)

(assert (=> b!3694292 (= b_free!98135 (not b_next!98839))))

(declare-fun tb!214033 () Bool)

(declare-fun t!301600 () Bool)

(assert (=> (and b!3694292 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292912)))))) t!301600) tb!214033))

(declare-fun result!260656 () Bool)

(assert (= result!260656 result!260558))

(assert (=> d!1083786 t!301600))

(declare-fun t!301602 () Bool)

(declare-fun tb!214035 () Bool)

(assert (=> (and b!3694292 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toChars!8113 (transformation!5926 (h!44577 rules!3598)))) t!301602) tb!214035))

(declare-fun result!260658 () Bool)

(assert (= result!260658 result!260632))

(assert (=> d!1083948 t!301602))

(declare-fun tb!214037 () Bool)

(declare-fun t!301604 () Bool)

(assert (=> (and b!3694292 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toChars!8113 (transformation!5926 (rule!8776 token!544)))) t!301604) tb!214037))

(declare-fun result!260660 () Bool)

(assert (= result!260660 result!260544))

(assert (=> b!3693613 t!301604))

(assert (=> d!1083762 t!301604))

(declare-fun t!301606 () Bool)

(declare-fun tb!214039 () Bool)

(assert (=> (and b!3694292 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toChars!8113 (transformation!5926 (rule!8776 (_1!22661 (get!12992 lt!1292930)))))) t!301606) tb!214039))

(declare-fun result!260662 () Bool)

(assert (= result!260662 result!260638))

(assert (=> d!1083958 t!301606))

(declare-fun b_and!276041 () Bool)

(declare-fun tp!1122691 () Bool)

(assert (=> b!3694292 (= tp!1122691 (and (=> t!301606 result!260662) (=> t!301602 result!260658) (=> t!301600 result!260656) (=> t!301604 result!260660) b_and!276041))))

(declare-fun e!2287571 () Bool)

(assert (=> b!3694292 (= e!2287571 (and tp!1122693 tp!1122691))))

(declare-fun tp!1122694 () Bool)

(declare-fun b!3694291 () Bool)

(declare-fun e!2287568 () Bool)

(assert (=> b!3694291 (= e!2287568 (and tp!1122694 (inv!52623 (tag!6748 (h!44577 (t!301490 (t!301490 rules!3598))))) (inv!52627 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) e!2287571))))

(declare-fun b!3694290 () Bool)

(declare-fun e!2287569 () Bool)

(declare-fun tp!1122692 () Bool)

(assert (=> b!3694290 (= e!2287569 (and e!2287568 tp!1122692))))

(assert (=> b!3693678 (= tp!1122556 e!2287569)))

(assert (= b!3694291 b!3694292))

(assert (= b!3694290 b!3694291))

(assert (= (and b!3693678 ((_ is Cons!39157) (t!301490 (t!301490 rules!3598)))) b!3694290))

(declare-fun m!4206379 () Bool)

(assert (=> b!3694291 m!4206379))

(declare-fun m!4206381 () Bool)

(assert (=> b!3694291 m!4206381))

(declare-fun b!3694301 () Bool)

(declare-fun tp!1122701 () Bool)

(declare-fun tp!1122703 () Bool)

(declare-fun e!2287576 () Bool)

(assert (=> b!3694301 (= e!2287576 (and (inv!52630 (left!30528 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))) tp!1122703 (inv!52630 (right!30858 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))) tp!1122701))))

(declare-fun b!3694303 () Bool)

(declare-fun e!2287577 () Bool)

(declare-fun tp!1122702 () Bool)

(assert (=> b!3694303 (= e!2287577 tp!1122702)))

(declare-fun b!3694302 () Bool)

(declare-fun inv!52636 (IArray!24051) Bool)

(assert (=> b!3694302 (= e!2287576 (and (inv!52636 (xs!15225 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))) e!2287577))))

(assert (=> b!3693608 (= tp!1122522 (and (inv!52630 (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544)))) e!2287576))))

(assert (= (and b!3693608 ((_ is Node!12023) (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))) b!3694301))

(assert (= b!3694302 b!3694303))

(assert (= (and b!3693608 ((_ is Leaf!18597) (c!638565 (dynLambda!17143 (toChars!8113 (transformation!5926 (rule!8776 token!544))) (value!189345 token!544))))) b!3694302))

(declare-fun m!4206383 () Bool)

(assert (=> b!3694301 m!4206383))

(declare-fun m!4206385 () Bool)

(assert (=> b!3694301 m!4206385))

(declare-fun m!4206387 () Bool)

(assert (=> b!3694302 m!4206387))

(assert (=> b!3693608 m!4205727))

(declare-fun b!3694304 () Bool)

(declare-fun e!2287578 () Bool)

(declare-fun tp!1122704 () Bool)

(assert (=> b!3694304 (= e!2287578 (and tp_is_empty!18445 tp!1122704))))

(assert (=> b!3693669 (= tp!1122546 e!2287578)))

(assert (= (and b!3693669 ((_ is Cons!39156) (t!301489 (t!301489 input!3172)))) b!3694304))

(declare-fun b_lambda!109597 () Bool)

(assert (= b_lambda!109589 (or (and b!3693377 b_free!98115) (and b!3693374 b_free!98119 (= (toChars!8113 (transformation!5926 (rule!8776 token!544))) (toChars!8113 (transformation!5926 (h!44577 rules!3598))))) (and b!3693680 b_free!98127 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toChars!8113 (transformation!5926 (h!44577 rules!3598))))) (and b!3694292 b_free!98135 (= (toChars!8113 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toChars!8113 (transformation!5926 (h!44577 rules!3598))))) b_lambda!109597)))

(declare-fun b_lambda!109599 () Bool)

(assert (= b_lambda!109587 (or (and b!3693377 b_free!98113) (and b!3693374 b_free!98117 (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) (and b!3693680 b_free!98125 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) (and b!3694292 b_free!98133 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) b_lambda!109599)))

(declare-fun b_lambda!109601 () Bool)

(assert (= b_lambda!109591 (or (and b!3693377 b_free!98113) (and b!3693374 b_free!98117 (= (toValue!8254 (transformation!5926 (rule!8776 token!544))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) (and b!3693680 b_free!98125 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 rules!3598)))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) (and b!3694292 b_free!98133 (= (toValue!8254 (transformation!5926 (h!44577 (t!301490 (t!301490 rules!3598))))) (toValue!8254 (transformation!5926 (h!44577 rules!3598))))) b_lambda!109601)))

(check-sat (not b!3694291) (not b!3694037) (not b!3694279) (not b!3694196) (not b!3694187) (not b!3694193) (not b_next!98817) (not b!3693693) b_and!276039 (not d!1083960) (not b!3694255) (not b!3694197) (not b!3694289) (not b!3694254) (not b!3694211) (not d!1084006) (not b!3694266) (not b!3694288) (not b!3694247) (not b!3694007) (not d!1083986) (not b!3693777) (not b!3694283) (not d!1083980) (not b!3693816) (not b!3694191) (not b!3694173) (not bm!267099) tp_is_empty!18445 (not b!3694274) (not b_lambda!109595) (not bm!267090) (not b!3694290) (not b!3694252) (not b!3694164) (not d!1083990) (not b!3694170) (not d!1084004) (not b!3694243) (not b!3694146) (not b!3693883) (not b!3693691) (not d!1083982) (not d!1083958) (not d!1083808) (not d!1083974) (not d!1083784) (not b_next!98829) (not b!3694159) (not b!3693880) (not b!3694011) (not b!3694217) (not b_next!98837) (not tb!214015) (not bm!267049) (not b!3693878) b_and!276041 b_and!276031 (not b_lambda!109593) (not b!3694029) (not b!3694038) (not d!1083932) (not d!1083998) (not b!3694276) (not b!3694251) (not b!3694149) (not tb!213947) (not b!3694275) (not b!3694303) (not b!3694154) (not b!3694179) (not b!3694278) (not b!3694262) (not b!3694171) (not tb!214009) (not bm!267086) (not b!3694267) (not bm!267092) (not bm!267093) (not b!3694250) (not d!1083782) (not b!3694270) (not tb!214003) (not b!3694209) (not b!3694301) (not b_next!98823) (not d!1083988) (not b!3694236) (not bm!267098) (not b!3694272) (not d!1083952) (not b!3694035) b_and!276037 (not d!1083994) (not b_lambda!109559) (not b!3694125) (not d!1083802) (not b!3694033) (not bm!267066) (not bm!267087) (not b!3694304) (not b!3694264) (not b!3694260) (not b!3693608) (not b!3694302) (not d!1084022) (not d!1083806) (not b!3693873) (not d!1083970) (not b!3694286) (not d!1084018) (not b!3694145) b_and!276027 (not bm!267089) (not b!3694039) (not d!1083944) (not b_next!98821) (not b!3694210) (not b!3694032) (not b!3694284) (not b!3694148) (not b_next!98819) (not b_next!98831) (not b_lambda!109601) (not d!1083948) (not d!1083956) (not b!3694268) (not b!3694271) (not b!3694178) (not b_lambda!109561) (not b!3694034) (not b!3694258) (not d!1083790) (not b!3694282) (not bm!267085) (not d!1083832) (not bm!267091) (not b!3694040) (not b!3694143) (not b_lambda!109599) (not d!1083786) (not b!3694150) (not b!3693690) (not b!3693874) (not b!3694019) (not bm!267060) (not b_next!98839) (not d!1083996) (not d!1083964) (not b!3694023) (not b!3694229) (not b_lambda!109597) (not bm!267088) b_and!276033 (not b!3694287) (not b!3693884) (not d!1083926) (not tb!213941) (not b!3694185) (not b!3694263) b_and!276029 b_and!276035 (not b!3694238) (not b!3694014) (not bm!267058) (not b_lambda!109563) (not b!3694248) (not b!3694256) (not b!3694156) (not b_lambda!109565) (not b!3694216) (not b!3693800) (not b!3694160) (not b!3694259) (not bm!267047) (not d!1083976) (not b!3694186) (not d!1083818) (not d!1083936) (not tb!214021) (not d!1084016) (not b!3694246) (not b!3694280) (not b!3694228) (not d!1083972))
(check-sat (not b_next!98817) b_and!276039 (not b_next!98829) (not b_next!98837) (not b_next!98823) b_and!276037 b_and!276027 (not b_next!98821) (not b_next!98839) b_and!276033 b_and!276041 b_and!276031 (not b_next!98819) (not b_next!98831) b_and!276029 b_and!276035)
