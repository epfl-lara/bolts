; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348504 () Bool)

(assert start!348504)

(declare-fun b!3699443 () Bool)

(declare-fun b_free!98521 () Bool)

(declare-fun b_next!99225 () Bool)

(assert (=> b!3699443 (= b_free!98521 (not b_next!99225))))

(declare-fun tp!1124496 () Bool)

(declare-fun b_and!276607 () Bool)

(assert (=> b!3699443 (= tp!1124496 b_and!276607)))

(declare-fun b_free!98523 () Bool)

(declare-fun b_next!99227 () Bool)

(assert (=> b!3699443 (= b_free!98523 (not b_next!99227))))

(declare-fun tp!1124499 () Bool)

(declare-fun b_and!276609 () Bool)

(assert (=> b!3699443 (= tp!1124499 b_and!276609)))

(declare-fun b!3699441 () Bool)

(declare-fun b_free!98525 () Bool)

(declare-fun b_next!99229 () Bool)

(assert (=> b!3699441 (= b_free!98525 (not b_next!99229))))

(declare-fun tp!1124498 () Bool)

(declare-fun b_and!276611 () Bool)

(assert (=> b!3699441 (= tp!1124498 b_and!276611)))

(declare-fun b_free!98527 () Bool)

(declare-fun b_next!99231 () Bool)

(assert (=> b!3699441 (= b_free!98527 (not b_next!99231))))

(declare-fun tp!1124501 () Bool)

(declare-fun b_and!276613 () Bool)

(assert (=> b!3699441 (= tp!1124501 b_and!276613)))

(declare-fun b!3699433 () Bool)

(declare-fun res!1504579 () Bool)

(declare-fun e!2291053 () Bool)

(assert (=> b!3699433 (=> (not res!1504579) (not e!2291053))))

(declare-datatypes ((List!39417 0))(
  ( (Nil!39293) (Cons!39293 (h!44713 (_ BitVec 16)) (t!301926 List!39417)) )
))
(declare-datatypes ((TokenValue!6197 0))(
  ( (FloatLiteralValue!12394 (text!43824 List!39417)) (TokenValueExt!6196 (__x!24611 Int)) (Broken!30985 (value!190489 List!39417)) (Object!6320) (End!6197) (Def!6197) (Underscore!6197) (Match!6197) (Else!6197) (Error!6197) (Case!6197) (If!6197) (Extends!6197) (Abstract!6197) (Class!6197) (Val!6197) (DelimiterValue!12394 (del!6257 List!39417)) (KeywordValue!6203 (value!190490 List!39417)) (CommentValue!12394 (value!190491 List!39417)) (WhitespaceValue!12394 (value!190492 List!39417)) (IndentationValue!6197 (value!190493 List!39417)) (String!44320) (Int32!6197) (Broken!30986 (value!190494 List!39417)) (Boolean!6198) (Unit!57266) (OperatorValue!6200 (op!6257 List!39417)) (IdentifierValue!12394 (value!190495 List!39417)) (IdentifierValue!12395 (value!190496 List!39417)) (WhitespaceValue!12395 (value!190497 List!39417)) (True!12394) (False!12394) (Broken!30987 (value!190498 List!39417)) (Broken!30988 (value!190499 List!39417)) (True!12395) (RightBrace!6197) (RightBracket!6197) (Colon!6197) (Null!6197) (Comma!6197) (LeftBracket!6197) (False!12395) (LeftBrace!6197) (ImaginaryLiteralValue!6197 (text!43825 List!39417)) (StringLiteralValue!18591 (value!190500 List!39417)) (EOFValue!6197 (value!190501 List!39417)) (IdentValue!6197 (value!190502 List!39417)) (DelimiterValue!12395 (value!190503 List!39417)) (DedentValue!6197 (value!190504 List!39417)) (NewLineValue!6197 (value!190505 List!39417)) (IntegerValue!18591 (value!190506 (_ BitVec 32)) (text!43826 List!39417)) (IntegerValue!18592 (value!190507 Int) (text!43827 List!39417)) (Times!6197) (Or!6197) (Equal!6197) (Minus!6197) (Broken!30989 (value!190508 List!39417)) (And!6197) (Div!6197) (LessEqual!6197) (Mod!6197) (Concat!16923) (Not!6197) (Plus!6197) (SpaceValue!6197 (value!190509 List!39417)) (IntegerValue!18593 (value!190510 Int) (text!43828 List!39417)) (StringLiteralValue!18592 (text!43829 List!39417)) (FloatLiteralValue!12395 (text!43830 List!39417)) (BytesLiteralValue!6197 (value!190511 List!39417)) (CommentValue!12395 (value!190512 List!39417)) (StringLiteralValue!18593 (value!190513 List!39417)) (ErrorTokenValue!6197 (msg!6258 List!39417)) )
))
(declare-datatypes ((C!21638 0))(
  ( (C!21639 (val!12867 Int)) )
))
(declare-datatypes ((Regex!10726 0))(
  ( (ElementMatch!10726 (c!639347 C!21638)) (Concat!16924 (regOne!21964 Regex!10726) (regTwo!21964 Regex!10726)) (EmptyExpr!10726) (Star!10726 (reg!11055 Regex!10726)) (EmptyLang!10726) (Union!10726 (regOne!21965 Regex!10726) (regTwo!21965 Regex!10726)) )
))
(declare-datatypes ((String!44321 0))(
  ( (String!44322 (value!190514 String)) )
))
(declare-datatypes ((List!39418 0))(
  ( (Nil!39294) (Cons!39294 (h!44714 C!21638) (t!301927 List!39418)) )
))
(declare-datatypes ((IArray!24133 0))(
  ( (IArray!24134 (innerList!12124 List!39418)) )
))
(declare-datatypes ((Conc!12064 0))(
  ( (Node!12064 (left!30598 Conc!12064) (right!30928 Conc!12064) (csize!24358 Int) (cheight!12275 Int)) (Leaf!18659 (xs!15266 IArray!24133) (csize!24359 Int)) (Empty!12064) )
))
(declare-datatypes ((BalanceConc!23742 0))(
  ( (BalanceConc!23743 (c!639348 Conc!12064)) )
))
(declare-datatypes ((TokenValueInjection!11822 0))(
  ( (TokenValueInjection!11823 (toValue!8303 Int) (toChars!8162 Int)) )
))
(declare-datatypes ((Rule!11734 0))(
  ( (Rule!11735 (regex!5967 Regex!10726) (tag!6799 String!44321) (isSeparator!5967 Bool) (transformation!5967 TokenValueInjection!11822)) )
))
(declare-datatypes ((List!39419 0))(
  ( (Nil!39295) (Cons!39295 (h!44715 Rule!11734) (t!301928 List!39419)) )
))
(declare-fun rules!3598 () List!39419)

(assert (=> b!3699433 (= res!1504579 (is-Cons!39295 rules!3598))))

(declare-fun res!1504580 () Bool)

(declare-fun e!2291048 () Bool)

(assert (=> start!348504 (=> (not res!1504580) (not e!2291048))))

(declare-datatypes ((LexerInterface!5556 0))(
  ( (LexerInterfaceExt!5553 (__x!24612 Int)) (Lexer!5554) )
))
(declare-fun thiss!25322 () LexerInterface!5556)

(assert (=> start!348504 (= res!1504580 (is-Lexer!5554 thiss!25322))))

(assert (=> start!348504 e!2291048))

(assert (=> start!348504 true))

(declare-fun e!2291044 () Bool)

(assert (=> start!348504 e!2291044))

(declare-datatypes ((Token!11288 0))(
  ( (Token!11289 (value!190515 TokenValue!6197) (rule!8829 Rule!11734) (size!29967 Int) (originalCharacters!6675 List!39418)) )
))
(declare-fun token!544 () Token!11288)

(declare-fun e!2291047 () Bool)

(declare-fun inv!52811 (Token!11288) Bool)

(assert (=> start!348504 (and (inv!52811 token!544) e!2291047)))

(declare-fun e!2291050 () Bool)

(assert (=> start!348504 e!2291050))

(declare-fun b!3699434 () Bool)

(declare-fun e!2291043 () Bool)

(assert (=> b!3699434 (= e!2291053 e!2291043)))

(declare-fun res!1504586 () Bool)

(assert (=> b!3699434 (=> (not res!1504586) (not e!2291043))))

(declare-fun e!2291046 () Bool)

(assert (=> b!3699434 (= res!1504586 e!2291046)))

(declare-fun res!1504584 () Bool)

(assert (=> b!3699434 (=> res!1504584 e!2291046)))

(declare-datatypes ((tuple2!39158 0))(
  ( (tuple2!39159 (_1!22713 Token!11288) (_2!22713 List!39418)) )
))
(declare-datatypes ((Option!8503 0))(
  ( (None!8502) (Some!8502 (v!38462 tuple2!39158)) )
))
(declare-fun lt!1294661 () Option!8503)

(declare-fun isDefined!6692 (Option!8503) Bool)

(assert (=> b!3699434 (= res!1504584 (not (isDefined!6692 lt!1294661)))))

(declare-fun input!3172 () List!39418)

(declare-fun maxPrefixOneRule!2188 (LexerInterface!5556 Rule!11734 List!39418) Option!8503)

(assert (=> b!3699434 (= lt!1294661 (maxPrefixOneRule!2188 thiss!25322 (h!44715 rules!3598) input!3172))))

(declare-fun b!3699435 () Bool)

(declare-fun res!1504585 () Bool)

(assert (=> b!3699435 (=> (not res!1504585) (not e!2291048))))

(declare-fun isEmpty!23417 (List!39419) Bool)

(assert (=> b!3699435 (= res!1504585 (not (isEmpty!23417 rules!3598)))))

(declare-fun b!3699436 () Bool)

(assert (=> b!3699436 (= e!2291048 e!2291053)))

(declare-fun res!1504578 () Bool)

(assert (=> b!3699436 (=> (not res!1504578) (not e!2291053))))

(declare-fun lt!1294659 () Option!8503)

(assert (=> b!3699436 (= res!1504578 (isDefined!6692 lt!1294659))))

(declare-fun maxPrefix!3078 (LexerInterface!5556 List!39419 List!39418) Option!8503)

(assert (=> b!3699436 (= lt!1294659 (maxPrefix!3078 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3699437 () Bool)

(assert (=> b!3699437 (= e!2291043 (not (isDefined!6692 (maxPrefix!3078 thiss!25322 (t!301928 rules!3598) input!3172))))))

(declare-fun rulesInvariant!4953 (LexerInterface!5556 List!39419) Bool)

(assert (=> b!3699437 (rulesInvariant!4953 thiss!25322 (t!301928 rules!3598))))

(declare-datatypes ((Unit!57267 0))(
  ( (Unit!57268) )
))
(declare-fun lt!1294660 () Unit!57267)

(declare-fun lemmaInvariantOnRulesThenOnTail!663 (LexerInterface!5556 Rule!11734 List!39419) Unit!57267)

(assert (=> b!3699437 (= lt!1294660 (lemmaInvariantOnRulesThenOnTail!663 thiss!25322 (h!44715 rules!3598) (t!301928 rules!3598)))))

(declare-fun b!3699438 () Bool)

(declare-fun tp!1124497 () Bool)

(declare-fun e!2291054 () Bool)

(declare-fun inv!21 (TokenValue!6197) Bool)

(assert (=> b!3699438 (= e!2291047 (and (inv!21 (value!190515 token!544)) e!2291054 tp!1124497))))

(declare-fun b!3699439 () Bool)

(declare-fun res!1504583 () Bool)

(assert (=> b!3699439 (=> (not res!1504583) (not e!2291043))))

(assert (=> b!3699439 (= res!1504583 (not (isEmpty!23417 (t!301928 rules!3598))))))

(declare-fun b!3699440 () Bool)

(declare-fun e!2291045 () Bool)

(declare-fun tp!1124495 () Bool)

(assert (=> b!3699440 (= e!2291044 (and e!2291045 tp!1124495))))

(declare-fun e!2291041 () Bool)

(assert (=> b!3699441 (= e!2291041 (and tp!1124498 tp!1124501))))

(declare-fun b!3699442 () Bool)

(declare-fun tp!1124503 () Bool)

(declare-fun inv!52808 (String!44321) Bool)

(declare-fun inv!52812 (TokenValueInjection!11822) Bool)

(assert (=> b!3699442 (= e!2291045 (and tp!1124503 (inv!52808 (tag!6799 (h!44715 rules!3598))) (inv!52812 (transformation!5967 (h!44715 rules!3598))) e!2291041))))

(declare-fun e!2291051 () Bool)

(assert (=> b!3699443 (= e!2291051 (and tp!1124496 tp!1124499))))

(declare-fun b!3699444 () Bool)

(declare-fun res!1504582 () Bool)

(assert (=> b!3699444 (=> (not res!1504582) (not e!2291048))))

(assert (=> b!3699444 (= res!1504582 (rulesInvariant!4953 thiss!25322 rules!3598))))

(declare-fun b!3699445 () Bool)

(declare-fun tp_is_empty!18527 () Bool)

(declare-fun tp!1124500 () Bool)

(assert (=> b!3699445 (= e!2291050 (and tp_is_empty!18527 tp!1124500))))

(declare-fun b!3699446 () Bool)

(declare-fun get!13074 (Option!8503) tuple2!39158)

(assert (=> b!3699446 (= e!2291046 (not (= (_1!22713 (get!13074 lt!1294661)) token!544)))))

(declare-fun b!3699447 () Bool)

(declare-fun res!1504581 () Bool)

(assert (=> b!3699447 (=> (not res!1504581) (not e!2291053))))

(assert (=> b!3699447 (= res!1504581 (= (_1!22713 (get!13074 lt!1294659)) token!544))))

(declare-fun tp!1124502 () Bool)

(declare-fun b!3699448 () Bool)

(assert (=> b!3699448 (= e!2291054 (and tp!1124502 (inv!52808 (tag!6799 (rule!8829 token!544))) (inv!52812 (transformation!5967 (rule!8829 token!544))) e!2291051))))

(assert (= (and start!348504 res!1504580) b!3699444))

(assert (= (and b!3699444 res!1504582) b!3699435))

(assert (= (and b!3699435 res!1504585) b!3699436))

(assert (= (and b!3699436 res!1504578) b!3699447))

(assert (= (and b!3699447 res!1504581) b!3699433))

(assert (= (and b!3699433 res!1504579) b!3699434))

(assert (= (and b!3699434 (not res!1504584)) b!3699446))

(assert (= (and b!3699434 res!1504586) b!3699439))

(assert (= (and b!3699439 res!1504583) b!3699437))

(assert (= b!3699442 b!3699441))

(assert (= b!3699440 b!3699442))

(assert (= (and start!348504 (is-Cons!39295 rules!3598)) b!3699440))

(assert (= b!3699448 b!3699443))

(assert (= b!3699438 b!3699448))

(assert (= start!348504 b!3699438))

(assert (= (and start!348504 (is-Cons!39294 input!3172)) b!3699445))

(declare-fun m!4210565 () Bool)

(assert (=> b!3699436 m!4210565))

(declare-fun m!4210567 () Bool)

(assert (=> b!3699436 m!4210567))

(declare-fun m!4210569 () Bool)

(assert (=> b!3699442 m!4210569))

(declare-fun m!4210571 () Bool)

(assert (=> b!3699442 m!4210571))

(declare-fun m!4210573 () Bool)

(assert (=> b!3699444 m!4210573))

(declare-fun m!4210575 () Bool)

(assert (=> b!3699448 m!4210575))

(declare-fun m!4210577 () Bool)

(assert (=> b!3699448 m!4210577))

(declare-fun m!4210579 () Bool)

(assert (=> b!3699437 m!4210579))

(assert (=> b!3699437 m!4210579))

(declare-fun m!4210581 () Bool)

(assert (=> b!3699437 m!4210581))

(declare-fun m!4210583 () Bool)

(assert (=> b!3699437 m!4210583))

(declare-fun m!4210585 () Bool)

(assert (=> b!3699437 m!4210585))

(declare-fun m!4210587 () Bool)

(assert (=> b!3699435 m!4210587))

(declare-fun m!4210589 () Bool)

(assert (=> b!3699447 m!4210589))

(declare-fun m!4210591 () Bool)

(assert (=> b!3699446 m!4210591))

(declare-fun m!4210593 () Bool)

(assert (=> b!3699439 m!4210593))

(declare-fun m!4210595 () Bool)

(assert (=> b!3699438 m!4210595))

(declare-fun m!4210597 () Bool)

(assert (=> b!3699434 m!4210597))

(declare-fun m!4210599 () Bool)

(assert (=> b!3699434 m!4210599))

(declare-fun m!4210601 () Bool)

(assert (=> start!348504 m!4210601))

(push 1)

(assert tp_is_empty!18527)

(assert (not b!3699446))

(assert b_and!276611)

(assert (not b!3699436))

(assert (not b!3699437))

(assert (not b_next!99229))

(assert (not b!3699439))

(assert (not b!3699438))

(assert b_and!276613)

(assert (not b!3699442))

(assert (not b_next!99231))

(assert (not b!3699447))

(assert (not b!3699440))

(assert b_and!276607)

(assert (not b!3699435))

(assert (not b_next!99227))

(assert (not b!3699444))

(assert (not b!3699445))

(assert (not b_next!99225))

(assert (not b!3699434))

(assert (not start!348504))

(assert (not b!3699448))

(assert b_and!276609)

(check-sat)

(pop 1)

(push 1)

(assert b_and!276611)

(assert b_and!276613)

(assert (not b_next!99231))

(assert b_and!276607)

(assert (not b_next!99227))

(assert (not b_next!99225))

(assert b_and!276609)

(assert (not b_next!99229))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084893 () Bool)

(assert (=> d!1084893 (= (isEmpty!23417 (t!301928 rules!3598)) (is-Nil!39295 (t!301928 rules!3598)))))

(assert (=> b!3699439 d!1084893))

(declare-fun d!1084895 () Bool)

(declare-fun isEmpty!23419 (Option!8503) Bool)

(assert (=> d!1084895 (= (isDefined!6692 lt!1294659) (not (isEmpty!23419 lt!1294659)))))

(declare-fun bs!574394 () Bool)

(assert (= bs!574394 d!1084895))

(declare-fun m!4210641 () Bool)

(assert (=> bs!574394 m!4210641))

(assert (=> b!3699436 d!1084895))

(declare-fun b!3699536 () Bool)

(declare-fun res!1504658 () Bool)

(declare-fun e!2291114 () Bool)

(assert (=> b!3699536 (=> (not res!1504658) (not e!2291114))))

(declare-fun lt!1294691 () Option!8503)

(declare-fun matchR!5259 (Regex!10726 List!39418) Bool)

(declare-fun list!14678 (BalanceConc!23742) List!39418)

(declare-fun charsOf!3956 (Token!11288) BalanceConc!23742)

(assert (=> b!3699536 (= res!1504658 (matchR!5259 (regex!5967 (rule!8829 (_1!22713 (get!13074 lt!1294691)))) (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294691))))))))

(declare-fun b!3699537 () Bool)

(declare-fun res!1504656 () Bool)

(assert (=> b!3699537 (=> (not res!1504656) (not e!2291114))))

(declare-fun apply!9399 (TokenValueInjection!11822 BalanceConc!23742) TokenValue!6197)

(declare-fun seqFromList!4478 (List!39418) BalanceConc!23742)

(assert (=> b!3699537 (= res!1504656 (= (value!190515 (_1!22713 (get!13074 lt!1294691))) (apply!9399 (transformation!5967 (rule!8829 (_1!22713 (get!13074 lt!1294691)))) (seqFromList!4478 (originalCharacters!6675 (_1!22713 (get!13074 lt!1294691)))))))))

(declare-fun d!1084897 () Bool)

(declare-fun e!2291113 () Bool)

(assert (=> d!1084897 e!2291113))

(declare-fun res!1504660 () Bool)

(assert (=> d!1084897 (=> res!1504660 e!2291113)))

(assert (=> d!1084897 (= res!1504660 (isEmpty!23419 lt!1294691))))

(declare-fun e!2291112 () Option!8503)

(assert (=> d!1084897 (= lt!1294691 e!2291112)))

(declare-fun c!639356 () Bool)

(assert (=> d!1084897 (= c!639356 (and (is-Cons!39295 rules!3598) (is-Nil!39295 (t!301928 rules!3598))))))

(declare-fun lt!1294694 () Unit!57267)

(declare-fun lt!1294692 () Unit!57267)

(assert (=> d!1084897 (= lt!1294694 lt!1294692)))

(declare-fun isPrefix!3280 (List!39418 List!39418) Bool)

(assert (=> d!1084897 (isPrefix!3280 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2065 (List!39418 List!39418) Unit!57267)

(assert (=> d!1084897 (= lt!1294692 (lemmaIsPrefixRefl!2065 input!3172 input!3172))))

(declare-fun rulesValidInductive!2146 (LexerInterface!5556 List!39419) Bool)

(assert (=> d!1084897 (rulesValidInductive!2146 thiss!25322 rules!3598)))

(assert (=> d!1084897 (= (maxPrefix!3078 thiss!25322 rules!3598 input!3172) lt!1294691)))

(declare-fun b!3699538 () Bool)

(declare-fun res!1504654 () Bool)

(assert (=> b!3699538 (=> (not res!1504654) (not e!2291114))))

(declare-fun ++!9759 (List!39418 List!39418) List!39418)

(assert (=> b!3699538 (= res!1504654 (= (++!9759 (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294691)))) (_2!22713 (get!13074 lt!1294691))) input!3172))))

(declare-fun b!3699539 () Bool)

(declare-fun contains!7834 (List!39419 Rule!11734) Bool)

(assert (=> b!3699539 (= e!2291114 (contains!7834 rules!3598 (rule!8829 (_1!22713 (get!13074 lt!1294691)))))))

(declare-fun b!3699540 () Bool)

(assert (=> b!3699540 (= e!2291113 e!2291114)))

(declare-fun res!1504655 () Bool)

(assert (=> b!3699540 (=> (not res!1504655) (not e!2291114))))

(assert (=> b!3699540 (= res!1504655 (isDefined!6692 lt!1294691))))

(declare-fun b!3699541 () Bool)

(declare-fun res!1504657 () Bool)

(assert (=> b!3699541 (=> (not res!1504657) (not e!2291114))))

(declare-fun size!29969 (List!39418) Int)

(assert (=> b!3699541 (= res!1504657 (< (size!29969 (_2!22713 (get!13074 lt!1294691))) (size!29969 input!3172)))))

(declare-fun b!3699542 () Bool)

(declare-fun lt!1294693 () Option!8503)

(declare-fun lt!1294695 () Option!8503)

(assert (=> b!3699542 (= e!2291112 (ite (and (is-None!8502 lt!1294693) (is-None!8502 lt!1294695)) None!8502 (ite (is-None!8502 lt!1294695) lt!1294693 (ite (is-None!8502 lt!1294693) lt!1294695 (ite (>= (size!29967 (_1!22713 (v!38462 lt!1294693))) (size!29967 (_1!22713 (v!38462 lt!1294695)))) lt!1294693 lt!1294695)))))))

(declare-fun call!267347 () Option!8503)

(assert (=> b!3699542 (= lt!1294693 call!267347)))

(assert (=> b!3699542 (= lt!1294695 (maxPrefix!3078 thiss!25322 (t!301928 rules!3598) input!3172))))

(declare-fun bm!267342 () Bool)

(assert (=> bm!267342 (= call!267347 (maxPrefixOneRule!2188 thiss!25322 (h!44715 rules!3598) input!3172))))

(declare-fun b!3699543 () Bool)

(assert (=> b!3699543 (= e!2291112 call!267347)))

(declare-fun b!3699544 () Bool)

(declare-fun res!1504659 () Bool)

(assert (=> b!3699544 (=> (not res!1504659) (not e!2291114))))

(assert (=> b!3699544 (= res!1504659 (= (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294691)))) (originalCharacters!6675 (_1!22713 (get!13074 lt!1294691)))))))

(assert (= (and d!1084897 c!639356) b!3699543))

(assert (= (and d!1084897 (not c!639356)) b!3699542))

(assert (= (or b!3699543 b!3699542) bm!267342))

(assert (= (and d!1084897 (not res!1504660)) b!3699540))

(assert (= (and b!3699540 res!1504655) b!3699544))

(assert (= (and b!3699544 res!1504659) b!3699541))

(assert (= (and b!3699541 res!1504657) b!3699538))

(assert (= (and b!3699538 res!1504654) b!3699537))

(assert (= (and b!3699537 res!1504656) b!3699536))

(assert (= (and b!3699536 res!1504658) b!3699539))

(declare-fun m!4210649 () Bool)

(assert (=> b!3699536 m!4210649))

(declare-fun m!4210651 () Bool)

(assert (=> b!3699536 m!4210651))

(assert (=> b!3699536 m!4210651))

(declare-fun m!4210653 () Bool)

(assert (=> b!3699536 m!4210653))

(assert (=> b!3699536 m!4210653))

(declare-fun m!4210655 () Bool)

(assert (=> b!3699536 m!4210655))

(assert (=> b!3699544 m!4210649))

(assert (=> b!3699544 m!4210651))

(assert (=> b!3699544 m!4210651))

(assert (=> b!3699544 m!4210653))

(declare-fun m!4210657 () Bool)

(assert (=> d!1084897 m!4210657))

(declare-fun m!4210659 () Bool)

(assert (=> d!1084897 m!4210659))

(declare-fun m!4210661 () Bool)

(assert (=> d!1084897 m!4210661))

(declare-fun m!4210663 () Bool)

(assert (=> d!1084897 m!4210663))

(assert (=> bm!267342 m!4210599))

(assert (=> b!3699538 m!4210649))

(assert (=> b!3699538 m!4210651))

(assert (=> b!3699538 m!4210651))

(assert (=> b!3699538 m!4210653))

(assert (=> b!3699538 m!4210653))

(declare-fun m!4210665 () Bool)

(assert (=> b!3699538 m!4210665))

(declare-fun m!4210667 () Bool)

(assert (=> b!3699540 m!4210667))

(assert (=> b!3699542 m!4210579))

(assert (=> b!3699541 m!4210649))

(declare-fun m!4210669 () Bool)

(assert (=> b!3699541 m!4210669))

(declare-fun m!4210671 () Bool)

(assert (=> b!3699541 m!4210671))

(assert (=> b!3699537 m!4210649))

(declare-fun m!4210673 () Bool)

(assert (=> b!3699537 m!4210673))

(assert (=> b!3699537 m!4210673))

(declare-fun m!4210675 () Bool)

(assert (=> b!3699537 m!4210675))

(assert (=> b!3699539 m!4210649))

(declare-fun m!4210677 () Bool)

(assert (=> b!3699539 m!4210677))

(assert (=> b!3699436 d!1084897))

(declare-fun d!1084903 () Bool)

(assert (=> d!1084903 (= (get!13074 lt!1294659) (v!38462 lt!1294659))))

(assert (=> b!3699447 d!1084903))

(declare-fun d!1084905 () Bool)

(assert (=> d!1084905 (= (isDefined!6692 (maxPrefix!3078 thiss!25322 (t!301928 rules!3598) input!3172)) (not (isEmpty!23419 (maxPrefix!3078 thiss!25322 (t!301928 rules!3598) input!3172))))))

(declare-fun bs!574396 () Bool)

(assert (= bs!574396 d!1084905))

(assert (=> bs!574396 m!4210579))

(declare-fun m!4210679 () Bool)

(assert (=> bs!574396 m!4210679))

(assert (=> b!3699437 d!1084905))

(declare-fun b!3699545 () Bool)

(declare-fun res!1504665 () Bool)

(declare-fun e!2291117 () Bool)

(assert (=> b!3699545 (=> (not res!1504665) (not e!2291117))))

(declare-fun lt!1294696 () Option!8503)

(assert (=> b!3699545 (= res!1504665 (matchR!5259 (regex!5967 (rule!8829 (_1!22713 (get!13074 lt!1294696)))) (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294696))))))))

(declare-fun b!3699546 () Bool)

(declare-fun res!1504663 () Bool)

(assert (=> b!3699546 (=> (not res!1504663) (not e!2291117))))

(assert (=> b!3699546 (= res!1504663 (= (value!190515 (_1!22713 (get!13074 lt!1294696))) (apply!9399 (transformation!5967 (rule!8829 (_1!22713 (get!13074 lt!1294696)))) (seqFromList!4478 (originalCharacters!6675 (_1!22713 (get!13074 lt!1294696)))))))))

(declare-fun d!1084907 () Bool)

(declare-fun e!2291116 () Bool)

(assert (=> d!1084907 e!2291116))

(declare-fun res!1504667 () Bool)

(assert (=> d!1084907 (=> res!1504667 e!2291116)))

(assert (=> d!1084907 (= res!1504667 (isEmpty!23419 lt!1294696))))

(declare-fun e!2291115 () Option!8503)

(assert (=> d!1084907 (= lt!1294696 e!2291115)))

(declare-fun c!639357 () Bool)

(assert (=> d!1084907 (= c!639357 (and (is-Cons!39295 (t!301928 rules!3598)) (is-Nil!39295 (t!301928 (t!301928 rules!3598)))))))

(declare-fun lt!1294699 () Unit!57267)

(declare-fun lt!1294697 () Unit!57267)

(assert (=> d!1084907 (= lt!1294699 lt!1294697)))

(assert (=> d!1084907 (isPrefix!3280 input!3172 input!3172)))

(assert (=> d!1084907 (= lt!1294697 (lemmaIsPrefixRefl!2065 input!3172 input!3172))))

(assert (=> d!1084907 (rulesValidInductive!2146 thiss!25322 (t!301928 rules!3598))))

(assert (=> d!1084907 (= (maxPrefix!3078 thiss!25322 (t!301928 rules!3598) input!3172) lt!1294696)))

(declare-fun b!3699547 () Bool)

(declare-fun res!1504661 () Bool)

(assert (=> b!3699547 (=> (not res!1504661) (not e!2291117))))

(assert (=> b!3699547 (= res!1504661 (= (++!9759 (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294696)))) (_2!22713 (get!13074 lt!1294696))) input!3172))))

(declare-fun b!3699548 () Bool)

(assert (=> b!3699548 (= e!2291117 (contains!7834 (t!301928 rules!3598) (rule!8829 (_1!22713 (get!13074 lt!1294696)))))))

(declare-fun b!3699549 () Bool)

(assert (=> b!3699549 (= e!2291116 e!2291117)))

(declare-fun res!1504662 () Bool)

(assert (=> b!3699549 (=> (not res!1504662) (not e!2291117))))

(assert (=> b!3699549 (= res!1504662 (isDefined!6692 lt!1294696))))

(declare-fun b!3699550 () Bool)

(declare-fun res!1504664 () Bool)

(assert (=> b!3699550 (=> (not res!1504664) (not e!2291117))))

(assert (=> b!3699550 (= res!1504664 (< (size!29969 (_2!22713 (get!13074 lt!1294696))) (size!29969 input!3172)))))

(declare-fun b!3699551 () Bool)

(declare-fun lt!1294698 () Option!8503)

(declare-fun lt!1294700 () Option!8503)

(assert (=> b!3699551 (= e!2291115 (ite (and (is-None!8502 lt!1294698) (is-None!8502 lt!1294700)) None!8502 (ite (is-None!8502 lt!1294700) lt!1294698 (ite (is-None!8502 lt!1294698) lt!1294700 (ite (>= (size!29967 (_1!22713 (v!38462 lt!1294698))) (size!29967 (_1!22713 (v!38462 lt!1294700)))) lt!1294698 lt!1294700)))))))

(declare-fun call!267348 () Option!8503)

(assert (=> b!3699551 (= lt!1294698 call!267348)))

(assert (=> b!3699551 (= lt!1294700 (maxPrefix!3078 thiss!25322 (t!301928 (t!301928 rules!3598)) input!3172))))

(declare-fun bm!267343 () Bool)

(assert (=> bm!267343 (= call!267348 (maxPrefixOneRule!2188 thiss!25322 (h!44715 (t!301928 rules!3598)) input!3172))))

(declare-fun b!3699552 () Bool)

(assert (=> b!3699552 (= e!2291115 call!267348)))

(declare-fun b!3699553 () Bool)

(declare-fun res!1504666 () Bool)

(assert (=> b!3699553 (=> (not res!1504666) (not e!2291117))))

(assert (=> b!3699553 (= res!1504666 (= (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294696)))) (originalCharacters!6675 (_1!22713 (get!13074 lt!1294696)))))))

(assert (= (and d!1084907 c!639357) b!3699552))

(assert (= (and d!1084907 (not c!639357)) b!3699551))

(assert (= (or b!3699552 b!3699551) bm!267343))

(assert (= (and d!1084907 (not res!1504667)) b!3699549))

(assert (= (and b!3699549 res!1504662) b!3699553))

(assert (= (and b!3699553 res!1504666) b!3699550))

(assert (= (and b!3699550 res!1504664) b!3699547))

(assert (= (and b!3699547 res!1504661) b!3699546))

(assert (= (and b!3699546 res!1504663) b!3699545))

(assert (= (and b!3699545 res!1504665) b!3699548))

(declare-fun m!4210681 () Bool)

(assert (=> b!3699545 m!4210681))

(declare-fun m!4210683 () Bool)

(assert (=> b!3699545 m!4210683))

(assert (=> b!3699545 m!4210683))

(declare-fun m!4210685 () Bool)

(assert (=> b!3699545 m!4210685))

(assert (=> b!3699545 m!4210685))

(declare-fun m!4210687 () Bool)

(assert (=> b!3699545 m!4210687))

(assert (=> b!3699553 m!4210681))

(assert (=> b!3699553 m!4210683))

(assert (=> b!3699553 m!4210683))

(assert (=> b!3699553 m!4210685))

(declare-fun m!4210689 () Bool)

(assert (=> d!1084907 m!4210689))

(assert (=> d!1084907 m!4210659))

(assert (=> d!1084907 m!4210661))

(declare-fun m!4210691 () Bool)

(assert (=> d!1084907 m!4210691))

(declare-fun m!4210693 () Bool)

(assert (=> bm!267343 m!4210693))

(assert (=> b!3699547 m!4210681))

(assert (=> b!3699547 m!4210683))

(assert (=> b!3699547 m!4210683))

(assert (=> b!3699547 m!4210685))

(assert (=> b!3699547 m!4210685))

(declare-fun m!4210695 () Bool)

(assert (=> b!3699547 m!4210695))

(declare-fun m!4210697 () Bool)

(assert (=> b!3699549 m!4210697))

(declare-fun m!4210699 () Bool)

(assert (=> b!3699551 m!4210699))

(assert (=> b!3699550 m!4210681))

(declare-fun m!4210701 () Bool)

(assert (=> b!3699550 m!4210701))

(assert (=> b!3699550 m!4210671))

(assert (=> b!3699546 m!4210681))

(declare-fun m!4210703 () Bool)

(assert (=> b!3699546 m!4210703))

(assert (=> b!3699546 m!4210703))

(declare-fun m!4210705 () Bool)

(assert (=> b!3699546 m!4210705))

(assert (=> b!3699548 m!4210681))

(declare-fun m!4210707 () Bool)

(assert (=> b!3699548 m!4210707))

(assert (=> b!3699437 d!1084907))

(declare-fun d!1084909 () Bool)

(declare-fun res!1504677 () Bool)

(declare-fun e!2291123 () Bool)

(assert (=> d!1084909 (=> (not res!1504677) (not e!2291123))))

(declare-fun rulesValid!2304 (LexerInterface!5556 List!39419) Bool)

(assert (=> d!1084909 (= res!1504677 (rulesValid!2304 thiss!25322 (t!301928 rules!3598)))))

(assert (=> d!1084909 (= (rulesInvariant!4953 thiss!25322 (t!301928 rules!3598)) e!2291123)))

(declare-fun b!3699565 () Bool)

(declare-datatypes ((List!39423 0))(
  ( (Nil!39299) (Cons!39299 (h!44719 String!44321) (t!301942 List!39423)) )
))
(declare-fun noDuplicateTag!2300 (LexerInterface!5556 List!39419 List!39423) Bool)

(assert (=> b!3699565 (= e!2291123 (noDuplicateTag!2300 thiss!25322 (t!301928 rules!3598) Nil!39299))))

(assert (= (and d!1084909 res!1504677) b!3699565))

(declare-fun m!4210717 () Bool)

(assert (=> d!1084909 m!4210717))

(declare-fun m!4210719 () Bool)

(assert (=> b!3699565 m!4210719))

(assert (=> b!3699437 d!1084909))

(declare-fun d!1084911 () Bool)

(assert (=> d!1084911 (rulesInvariant!4953 thiss!25322 (t!301928 rules!3598))))

(declare-fun lt!1294713 () Unit!57267)

(declare-fun choose!22125 (LexerInterface!5556 Rule!11734 List!39419) Unit!57267)

(assert (=> d!1084911 (= lt!1294713 (choose!22125 thiss!25322 (h!44715 rules!3598) (t!301928 rules!3598)))))

(assert (=> d!1084911 (rulesInvariant!4953 thiss!25322 (Cons!39295 (h!44715 rules!3598) (t!301928 rules!3598)))))

(assert (=> d!1084911 (= (lemmaInvariantOnRulesThenOnTail!663 thiss!25322 (h!44715 rules!3598) (t!301928 rules!3598)) lt!1294713)))

(declare-fun bs!574398 () Bool)

(assert (= bs!574398 d!1084911))

(assert (=> bs!574398 m!4210583))

(declare-fun m!4210745 () Bool)

(assert (=> bs!574398 m!4210745))

(declare-fun m!4210747 () Bool)

(assert (=> bs!574398 m!4210747))

(assert (=> b!3699437 d!1084911))

(declare-fun d!1084917 () Bool)

(assert (=> d!1084917 (= (inv!52808 (tag!6799 (rule!8829 token!544))) (= (mod (str.len (value!190514 (tag!6799 (rule!8829 token!544)))) 2) 0))))

(assert (=> b!3699448 d!1084917))

(declare-fun d!1084919 () Bool)

(declare-fun res!1504689 () Bool)

(declare-fun e!2291131 () Bool)

(assert (=> d!1084919 (=> (not res!1504689) (not e!2291131))))

(declare-fun semiInverseModEq!2547 (Int Int) Bool)

(assert (=> d!1084919 (= res!1504689 (semiInverseModEq!2547 (toChars!8162 (transformation!5967 (rule!8829 token!544))) (toValue!8303 (transformation!5967 (rule!8829 token!544)))))))

(assert (=> d!1084919 (= (inv!52812 (transformation!5967 (rule!8829 token!544))) e!2291131)))

(declare-fun b!3699577 () Bool)

(declare-fun equivClasses!2446 (Int Int) Bool)

(assert (=> b!3699577 (= e!2291131 (equivClasses!2446 (toChars!8162 (transformation!5967 (rule!8829 token!544))) (toValue!8303 (transformation!5967 (rule!8829 token!544)))))))

(assert (= (and d!1084919 res!1504689) b!3699577))

(declare-fun m!4210777 () Bool)

(assert (=> d!1084919 m!4210777))

(declare-fun m!4210779 () Bool)

(assert (=> b!3699577 m!4210779))

(assert (=> b!3699448 d!1084919))

(declare-fun b!3699591 () Bool)

(declare-fun e!2291139 () Bool)

(declare-fun inv!16 (TokenValue!6197) Bool)

(assert (=> b!3699591 (= e!2291139 (inv!16 (value!190515 token!544)))))

(declare-fun d!1084923 () Bool)

(declare-fun c!639365 () Bool)

(assert (=> d!1084923 (= c!639365 (is-IntegerValue!18591 (value!190515 token!544)))))

(assert (=> d!1084923 (= (inv!21 (value!190515 token!544)) e!2291139)))

(declare-fun b!3699592 () Bool)

(declare-fun e!2291141 () Bool)

(assert (=> b!3699592 (= e!2291139 e!2291141)))

(declare-fun c!639364 () Bool)

(assert (=> b!3699592 (= c!639364 (is-IntegerValue!18592 (value!190515 token!544)))))

(declare-fun b!3699593 () Bool)

(declare-fun inv!17 (TokenValue!6197) Bool)

(assert (=> b!3699593 (= e!2291141 (inv!17 (value!190515 token!544)))))

(declare-fun b!3699594 () Bool)

(declare-fun res!1504693 () Bool)

(declare-fun e!2291140 () Bool)

(assert (=> b!3699594 (=> res!1504693 e!2291140)))

(assert (=> b!3699594 (= res!1504693 (not (is-IntegerValue!18593 (value!190515 token!544))))))

(assert (=> b!3699594 (= e!2291141 e!2291140)))

(declare-fun b!3699595 () Bool)

(declare-fun inv!15 (TokenValue!6197) Bool)

(assert (=> b!3699595 (= e!2291140 (inv!15 (value!190515 token!544)))))

(assert (= (and d!1084923 c!639365) b!3699591))

(assert (= (and d!1084923 (not c!639365)) b!3699592))

(assert (= (and b!3699592 c!639364) b!3699593))

(assert (= (and b!3699592 (not c!639364)) b!3699594))

(assert (= (and b!3699594 (not res!1504693)) b!3699595))

(declare-fun m!4210785 () Bool)

(assert (=> b!3699591 m!4210785))

(declare-fun m!4210787 () Bool)

(assert (=> b!3699593 m!4210787))

(declare-fun m!4210789 () Bool)

(assert (=> b!3699595 m!4210789))

(assert (=> b!3699438 d!1084923))

(declare-fun d!1084927 () Bool)

(declare-fun res!1504694 () Bool)

(declare-fun e!2291142 () Bool)

(assert (=> d!1084927 (=> (not res!1504694) (not e!2291142))))

(assert (=> d!1084927 (= res!1504694 (rulesValid!2304 thiss!25322 rules!3598))))

(assert (=> d!1084927 (= (rulesInvariant!4953 thiss!25322 rules!3598) e!2291142)))

(declare-fun b!3699596 () Bool)

(assert (=> b!3699596 (= e!2291142 (noDuplicateTag!2300 thiss!25322 rules!3598 Nil!39299))))

(assert (= (and d!1084927 res!1504694) b!3699596))

(declare-fun m!4210791 () Bool)

(assert (=> d!1084927 m!4210791))

(declare-fun m!4210793 () Bool)

(assert (=> b!3699596 m!4210793))

(assert (=> b!3699444 d!1084927))

(declare-fun d!1084929 () Bool)

(assert (=> d!1084929 (= (isDefined!6692 lt!1294661) (not (isEmpty!23419 lt!1294661)))))

(declare-fun bs!574399 () Bool)

(assert (= bs!574399 d!1084929))

(declare-fun m!4210795 () Bool)

(assert (=> bs!574399 m!4210795))

(assert (=> b!3699434 d!1084929))

(declare-fun b!3699631 () Bool)

(declare-fun e!2291161 () Option!8503)

(assert (=> b!3699631 (= e!2291161 None!8502)))

(declare-fun d!1084931 () Bool)

(declare-fun e!2291164 () Bool)

(assert (=> d!1084931 e!2291164))

(declare-fun res!1504719 () Bool)

(assert (=> d!1084931 (=> res!1504719 e!2291164)))

(declare-fun lt!1294728 () Option!8503)

(assert (=> d!1084931 (= res!1504719 (isEmpty!23419 lt!1294728))))

(assert (=> d!1084931 (= lt!1294728 e!2291161)))

(declare-fun c!639374 () Bool)

(declare-datatypes ((tuple2!39162 0))(
  ( (tuple2!39163 (_1!22715 List!39418) (_2!22715 List!39418)) )
))
(declare-fun lt!1294731 () tuple2!39162)

(declare-fun isEmpty!23421 (List!39418) Bool)

(assert (=> d!1084931 (= c!639374 (isEmpty!23421 (_1!22715 lt!1294731)))))

(declare-fun findLongestMatch!1034 (Regex!10726 List!39418) tuple2!39162)

(assert (=> d!1084931 (= lt!1294731 (findLongestMatch!1034 (regex!5967 (h!44715 rules!3598)) input!3172))))

(declare-fun ruleValid!2157 (LexerInterface!5556 Rule!11734) Bool)

(assert (=> d!1084931 (ruleValid!2157 thiss!25322 (h!44715 rules!3598))))

(assert (=> d!1084931 (= (maxPrefixOneRule!2188 thiss!25322 (h!44715 rules!3598) input!3172) lt!1294728)))

(declare-fun b!3699632 () Bool)

(declare-fun size!29971 (BalanceConc!23742) Int)

(assert (=> b!3699632 (= e!2291161 (Some!8502 (tuple2!39159 (Token!11289 (apply!9399 (transformation!5967 (h!44715 rules!3598)) (seqFromList!4478 (_1!22715 lt!1294731))) (h!44715 rules!3598) (size!29971 (seqFromList!4478 (_1!22715 lt!1294731))) (_1!22715 lt!1294731)) (_2!22715 lt!1294731))))))

(declare-fun lt!1294727 () Unit!57267)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1092 (Regex!10726 List!39418) Unit!57267)

(assert (=> b!3699632 (= lt!1294727 (longestMatchIsAcceptedByMatchOrIsEmpty!1092 (regex!5967 (h!44715 rules!3598)) input!3172))))

(declare-fun res!1504713 () Bool)

(declare-fun findLongestMatchInner!1119 (Regex!10726 List!39418 Int List!39418 List!39418 Int) tuple2!39162)

(assert (=> b!3699632 (= res!1504713 (isEmpty!23421 (_1!22715 (findLongestMatchInner!1119 (regex!5967 (h!44715 rules!3598)) Nil!39294 (size!29969 Nil!39294) input!3172 input!3172 (size!29969 input!3172)))))))

(declare-fun e!2291163 () Bool)

(assert (=> b!3699632 (=> res!1504713 e!2291163)))

(assert (=> b!3699632 e!2291163))

(declare-fun lt!1294729 () Unit!57267)

(assert (=> b!3699632 (= lt!1294729 lt!1294727)))

(declare-fun lt!1294730 () Unit!57267)

(declare-fun lemmaSemiInverse!1625 (TokenValueInjection!11822 BalanceConc!23742) Unit!57267)

(assert (=> b!3699632 (= lt!1294730 (lemmaSemiInverse!1625 (transformation!5967 (h!44715 rules!3598)) (seqFromList!4478 (_1!22715 lt!1294731))))))

(declare-fun b!3699633 () Bool)

(declare-fun res!1504714 () Bool)

(declare-fun e!2291162 () Bool)

(assert (=> b!3699633 (=> (not res!1504714) (not e!2291162))))

(assert (=> b!3699633 (= res!1504714 (= (++!9759 (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294728)))) (_2!22713 (get!13074 lt!1294728))) input!3172))))

(declare-fun b!3699634 () Bool)

(declare-fun res!1504717 () Bool)

(assert (=> b!3699634 (=> (not res!1504717) (not e!2291162))))

(assert (=> b!3699634 (= res!1504717 (< (size!29969 (_2!22713 (get!13074 lt!1294728))) (size!29969 input!3172)))))

(declare-fun b!3699635 () Bool)

(assert (=> b!3699635 (= e!2291164 e!2291162)))

(declare-fun res!1504715 () Bool)

(assert (=> b!3699635 (=> (not res!1504715) (not e!2291162))))

(assert (=> b!3699635 (= res!1504715 (matchR!5259 (regex!5967 (h!44715 rules!3598)) (list!14678 (charsOf!3956 (_1!22713 (get!13074 lt!1294728))))))))

(declare-fun b!3699636 () Bool)

(assert (=> b!3699636 (= e!2291162 (= (size!29967 (_1!22713 (get!13074 lt!1294728))) (size!29969 (originalCharacters!6675 (_1!22713 (get!13074 lt!1294728))))))))

(declare-fun b!3699637 () Bool)

(assert (=> b!3699637 (= e!2291163 (matchR!5259 (regex!5967 (h!44715 rules!3598)) (_1!22715 (findLongestMatchInner!1119 (regex!5967 (h!44715 rules!3598)) Nil!39294 (size!29969 Nil!39294) input!3172 input!3172 (size!29969 input!3172)))))))

(declare-fun b!3699638 () Bool)

(declare-fun res!1504716 () Bool)

(assert (=> b!3699638 (=> (not res!1504716) (not e!2291162))))

(assert (=> b!3699638 (= res!1504716 (= (value!190515 (_1!22713 (get!13074 lt!1294728))) (apply!9399 (transformation!5967 (rule!8829 (_1!22713 (get!13074 lt!1294728)))) (seqFromList!4478 (originalCharacters!6675 (_1!22713 (get!13074 lt!1294728)))))))))

(declare-fun b!3699639 () Bool)

(declare-fun res!1504718 () Bool)

(assert (=> b!3699639 (=> (not res!1504718) (not e!2291162))))

(assert (=> b!3699639 (= res!1504718 (= (rule!8829 (_1!22713 (get!13074 lt!1294728))) (h!44715 rules!3598)))))

(assert (= (and d!1084931 c!639374) b!3699631))

(assert (= (and d!1084931 (not c!639374)) b!3699632))

(assert (= (and b!3699632 (not res!1504713)) b!3699637))

(assert (= (and d!1084931 (not res!1504719)) b!3699635))

(assert (= (and b!3699635 res!1504715) b!3699633))

(assert (= (and b!3699633 res!1504714) b!3699634))

(assert (= (and b!3699634 res!1504717) b!3699639))

(assert (= (and b!3699639 res!1504718) b!3699638))

(assert (= (and b!3699638 res!1504716) b!3699636))

(declare-fun m!4210813 () Bool)

(assert (=> b!3699634 m!4210813))

(declare-fun m!4210815 () Bool)

(assert (=> b!3699634 m!4210815))

(assert (=> b!3699634 m!4210671))

(assert (=> b!3699638 m!4210813))

(declare-fun m!4210817 () Bool)

(assert (=> b!3699638 m!4210817))

(assert (=> b!3699638 m!4210817))

(declare-fun m!4210819 () Bool)

(assert (=> b!3699638 m!4210819))

(assert (=> b!3699636 m!4210813))

(declare-fun m!4210821 () Bool)

(assert (=> b!3699636 m!4210821))

(declare-fun m!4210823 () Bool)

(assert (=> d!1084931 m!4210823))

(declare-fun m!4210825 () Bool)

(assert (=> d!1084931 m!4210825))

(declare-fun m!4210827 () Bool)

(assert (=> d!1084931 m!4210827))

(declare-fun m!4210829 () Bool)

(assert (=> d!1084931 m!4210829))

(assert (=> b!3699639 m!4210813))

(assert (=> b!3699633 m!4210813))

(declare-fun m!4210831 () Bool)

(assert (=> b!3699633 m!4210831))

(assert (=> b!3699633 m!4210831))

(declare-fun m!4210833 () Bool)

(assert (=> b!3699633 m!4210833))

(assert (=> b!3699633 m!4210833))

(declare-fun m!4210835 () Bool)

(assert (=> b!3699633 m!4210835))

(declare-fun m!4210837 () Bool)

(assert (=> b!3699632 m!4210837))

(assert (=> b!3699632 m!4210671))

(declare-fun m!4210839 () Bool)

(assert (=> b!3699632 m!4210839))

(declare-fun m!4210841 () Bool)

(assert (=> b!3699632 m!4210841))

(assert (=> b!3699632 m!4210671))

(assert (=> b!3699632 m!4210841))

(declare-fun m!4210843 () Bool)

(assert (=> b!3699632 m!4210843))

(declare-fun m!4210845 () Bool)

(assert (=> b!3699632 m!4210845))

(assert (=> b!3699632 m!4210841))

(declare-fun m!4210847 () Bool)

(assert (=> b!3699632 m!4210847))

(declare-fun m!4210849 () Bool)

(assert (=> b!3699632 m!4210849))

(assert (=> b!3699632 m!4210841))

(declare-fun m!4210851 () Bool)

(assert (=> b!3699632 m!4210851))

(assert (=> b!3699632 m!4210837))

(assert (=> b!3699637 m!4210837))

(assert (=> b!3699637 m!4210671))

(assert (=> b!3699637 m!4210837))

(assert (=> b!3699637 m!4210671))

(assert (=> b!3699637 m!4210839))

(declare-fun m!4210853 () Bool)

(assert (=> b!3699637 m!4210853))

(assert (=> b!3699635 m!4210813))

(assert (=> b!3699635 m!4210831))

(assert (=> b!3699635 m!4210831))

(assert (=> b!3699635 m!4210833))

(assert (=> b!3699635 m!4210833))

(declare-fun m!4210855 () Bool)

(assert (=> b!3699635 m!4210855))

(assert (=> b!3699434 d!1084931))

(declare-fun d!1084943 () Bool)

(assert (=> d!1084943 (= (isEmpty!23417 rules!3598) (is-Nil!39295 rules!3598))))

(assert (=> b!3699435 d!1084943))

(declare-fun d!1084945 () Bool)

(assert (=> d!1084945 (= (get!13074 lt!1294661) (v!38462 lt!1294661))))

(assert (=> b!3699446 d!1084945))

(declare-fun d!1084947 () Bool)

(declare-fun res!1504724 () Bool)

(declare-fun e!2291167 () Bool)

(assert (=> d!1084947 (=> (not res!1504724) (not e!2291167))))

(assert (=> d!1084947 (= res!1504724 (not (isEmpty!23421 (originalCharacters!6675 token!544))))))

(assert (=> d!1084947 (= (inv!52811 token!544) e!2291167)))

(declare-fun b!3699644 () Bool)

(declare-fun res!1504725 () Bool)

(assert (=> b!3699644 (=> (not res!1504725) (not e!2291167))))

(declare-fun dynLambda!17177 (Int TokenValue!6197) BalanceConc!23742)

(assert (=> b!3699644 (= res!1504725 (= (originalCharacters!6675 token!544) (list!14678 (dynLambda!17177 (toChars!8162 (transformation!5967 (rule!8829 token!544))) (value!190515 token!544)))))))

(declare-fun b!3699645 () Bool)

(assert (=> b!3699645 (= e!2291167 (= (size!29967 token!544) (size!29969 (originalCharacters!6675 token!544))))))

(assert (= (and d!1084947 res!1504724) b!3699644))

(assert (= (and b!3699644 res!1504725) b!3699645))

(declare-fun b_lambda!109739 () Bool)

(assert (=> (not b_lambda!109739) (not b!3699644)))

(declare-fun t!301933 () Bool)

(declare-fun tb!214225 () Bool)

(assert (=> (and b!3699443 (= (toChars!8162 (transformation!5967 (rule!8829 token!544))) (toChars!8162 (transformation!5967 (rule!8829 token!544)))) t!301933) tb!214225))

(declare-fun b!3699650 () Bool)

(declare-fun e!2291170 () Bool)

(declare-fun tp!1124533 () Bool)

(declare-fun inv!52815 (Conc!12064) Bool)

(assert (=> b!3699650 (= e!2291170 (and (inv!52815 (c!639348 (dynLambda!17177 (toChars!8162 (transformation!5967 (rule!8829 token!544))) (value!190515 token!544)))) tp!1124533))))

(declare-fun result!260970 () Bool)

(declare-fun inv!52816 (BalanceConc!23742) Bool)

(assert (=> tb!214225 (= result!260970 (and (inv!52816 (dynLambda!17177 (toChars!8162 (transformation!5967 (rule!8829 token!544))) (value!190515 token!544))) e!2291170))))

(assert (= tb!214225 b!3699650))

(declare-fun m!4210857 () Bool)

(assert (=> b!3699650 m!4210857))

(declare-fun m!4210859 () Bool)

(assert (=> tb!214225 m!4210859))

(assert (=> b!3699644 t!301933))

(declare-fun b_and!276623 () Bool)

(assert (= b_and!276609 (and (=> t!301933 result!260970) b_and!276623)))

(declare-fun t!301935 () Bool)

(declare-fun tb!214227 () Bool)

(assert (=> (and b!3699441 (= (toChars!8162 (transformation!5967 (h!44715 rules!3598))) (toChars!8162 (transformation!5967 (rule!8829 token!544)))) t!301935) tb!214227))

(declare-fun result!260974 () Bool)

(assert (= result!260974 result!260970))

(assert (=> b!3699644 t!301935))

(declare-fun b_and!276625 () Bool)

(assert (= b_and!276613 (and (=> t!301935 result!260974) b_and!276625)))

(declare-fun m!4210861 () Bool)

(assert (=> d!1084947 m!4210861))

(declare-fun m!4210863 () Bool)

(assert (=> b!3699644 m!4210863))

(assert (=> b!3699644 m!4210863))

(declare-fun m!4210865 () Bool)

(assert (=> b!3699644 m!4210865))

(declare-fun m!4210867 () Bool)

(assert (=> b!3699645 m!4210867))

(assert (=> start!348504 d!1084947))

(declare-fun d!1084949 () Bool)

(assert (=> d!1084949 (= (inv!52808 (tag!6799 (h!44715 rules!3598))) (= (mod (str.len (value!190514 (tag!6799 (h!44715 rules!3598)))) 2) 0))))

(assert (=> b!3699442 d!1084949))

(declare-fun d!1084951 () Bool)

(declare-fun res!1504726 () Bool)

(declare-fun e!2291171 () Bool)

(assert (=> d!1084951 (=> (not res!1504726) (not e!2291171))))

(assert (=> d!1084951 (= res!1504726 (semiInverseModEq!2547 (toChars!8162 (transformation!5967 (h!44715 rules!3598))) (toValue!8303 (transformation!5967 (h!44715 rules!3598)))))))

(assert (=> d!1084951 (= (inv!52812 (transformation!5967 (h!44715 rules!3598))) e!2291171)))

(declare-fun b!3699651 () Bool)

(assert (=> b!3699651 (= e!2291171 (equivClasses!2446 (toChars!8162 (transformation!5967 (h!44715 rules!3598))) (toValue!8303 (transformation!5967 (h!44715 rules!3598)))))))

(assert (= (and d!1084951 res!1504726) b!3699651))

(declare-fun m!4210869 () Bool)

(assert (=> d!1084951 m!4210869))

(declare-fun m!4210871 () Bool)

(assert (=> b!3699651 m!4210871))

(assert (=> b!3699442 d!1084951))

(declare-fun b!3699656 () Bool)

(declare-fun e!2291174 () Bool)

(declare-fun tp!1124536 () Bool)

(assert (=> b!3699656 (= e!2291174 (and tp_is_empty!18527 tp!1124536))))

(assert (=> b!3699445 (= tp!1124500 e!2291174)))

(assert (= (and b!3699445 (is-Cons!39294 (t!301927 input!3172))) b!3699656))

(declare-fun b!3699667 () Bool)

(declare-fun b_free!98537 () Bool)

(declare-fun b_next!99241 () Bool)

(assert (=> b!3699667 (= b_free!98537 (not b_next!99241))))

(declare-fun tp!1124545 () Bool)

(declare-fun b_and!276627 () Bool)

(assert (=> b!3699667 (= tp!1124545 b_and!276627)))

(declare-fun b_free!98539 () Bool)

(declare-fun b_next!99243 () Bool)

(assert (=> b!3699667 (= b_free!98539 (not b_next!99243))))

(declare-fun t!301937 () Bool)

(declare-fun tb!214229 () Bool)

(assert (=> (and b!3699667 (= (toChars!8162 (transformation!5967 (h!44715 (t!301928 rules!3598)))) (toChars!8162 (transformation!5967 (rule!8829 token!544)))) t!301937) tb!214229))

(declare-fun result!260980 () Bool)

(assert (= result!260980 result!260970))

(assert (=> b!3699644 t!301937))

(declare-fun tp!1124547 () Bool)

(declare-fun b_and!276629 () Bool)

(assert (=> b!3699667 (= tp!1124547 (and (=> t!301937 result!260980) b_and!276629))))

(declare-fun e!2291185 () Bool)

(assert (=> b!3699667 (= e!2291185 (and tp!1124545 tp!1124547))))

(declare-fun b!3699666 () Bool)

(declare-fun e!2291184 () Bool)

(declare-fun tp!1124546 () Bool)

(assert (=> b!3699666 (= e!2291184 (and tp!1124546 (inv!52808 (tag!6799 (h!44715 (t!301928 rules!3598)))) (inv!52812 (transformation!5967 (h!44715 (t!301928 rules!3598)))) e!2291185))))

(declare-fun b!3699665 () Bool)

(declare-fun e!2291186 () Bool)

(declare-fun tp!1124548 () Bool)

(assert (=> b!3699665 (= e!2291186 (and e!2291184 tp!1124548))))

(assert (=> b!3699440 (= tp!1124495 e!2291186)))

(assert (= b!3699666 b!3699667))

(assert (= b!3699665 b!3699666))

(assert (= (and b!3699440 (is-Cons!39295 (t!301928 rules!3598))) b!3699665))

(declare-fun m!4210873 () Bool)

(assert (=> b!3699666 m!4210873))

(declare-fun m!4210875 () Bool)

(assert (=> b!3699666 m!4210875))

(declare-fun b!3699678 () Bool)

(declare-fun e!2291189 () Bool)

(assert (=> b!3699678 (= e!2291189 tp_is_empty!18527)))

(declare-fun b!3699681 () Bool)

(declare-fun tp!1124560 () Bool)

(declare-fun tp!1124563 () Bool)

(assert (=> b!3699681 (= e!2291189 (and tp!1124560 tp!1124563))))

(declare-fun b!3699679 () Bool)

(declare-fun tp!1124559 () Bool)

(declare-fun tp!1124561 () Bool)

(assert (=> b!3699679 (= e!2291189 (and tp!1124559 tp!1124561))))

(assert (=> b!3699442 (= tp!1124503 e!2291189)))

(declare-fun b!3699680 () Bool)

(declare-fun tp!1124562 () Bool)

(assert (=> b!3699680 (= e!2291189 tp!1124562)))

(assert (= (and b!3699442 (is-ElementMatch!10726 (regex!5967 (h!44715 rules!3598)))) b!3699678))

(assert (= (and b!3699442 (is-Concat!16924 (regex!5967 (h!44715 rules!3598)))) b!3699679))

(assert (= (and b!3699442 (is-Star!10726 (regex!5967 (h!44715 rules!3598)))) b!3699680))

(assert (= (and b!3699442 (is-Union!10726 (regex!5967 (h!44715 rules!3598)))) b!3699681))

(declare-fun b!3699682 () Bool)

(declare-fun e!2291190 () Bool)

(assert (=> b!3699682 (= e!2291190 tp_is_empty!18527)))

(declare-fun b!3699685 () Bool)

(declare-fun tp!1124565 () Bool)

(declare-fun tp!1124568 () Bool)

(assert (=> b!3699685 (= e!2291190 (and tp!1124565 tp!1124568))))

(declare-fun b!3699683 () Bool)

(declare-fun tp!1124564 () Bool)

(declare-fun tp!1124566 () Bool)

(assert (=> b!3699683 (= e!2291190 (and tp!1124564 tp!1124566))))

(assert (=> b!3699448 (= tp!1124502 e!2291190)))

(declare-fun b!3699684 () Bool)

(declare-fun tp!1124567 () Bool)

(assert (=> b!3699684 (= e!2291190 tp!1124567)))

(assert (= (and b!3699448 (is-ElementMatch!10726 (regex!5967 (rule!8829 token!544)))) b!3699682))

(assert (= (and b!3699448 (is-Concat!16924 (regex!5967 (rule!8829 token!544)))) b!3699683))

(assert (= (and b!3699448 (is-Star!10726 (regex!5967 (rule!8829 token!544)))) b!3699684))

(assert (= (and b!3699448 (is-Union!10726 (regex!5967 (rule!8829 token!544)))) b!3699685))

(declare-fun b!3699686 () Bool)

(declare-fun e!2291191 () Bool)

(declare-fun tp!1124569 () Bool)

(assert (=> b!3699686 (= e!2291191 (and tp_is_empty!18527 tp!1124569))))

(assert (=> b!3699438 (= tp!1124497 e!2291191)))

(assert (= (and b!3699438 (is-Cons!39294 (originalCharacters!6675 token!544))) b!3699686))

(declare-fun b_lambda!109741 () Bool)

(assert (= b_lambda!109739 (or (and b!3699443 b_free!98523) (and b!3699441 b_free!98527 (= (toChars!8162 (transformation!5967 (h!44715 rules!3598))) (toChars!8162 (transformation!5967 (rule!8829 token!544))))) (and b!3699667 b_free!98539 (= (toChars!8162 (transformation!5967 (h!44715 (t!301928 rules!3598)))) (toChars!8162 (transformation!5967 (rule!8829 token!544))))) b_lambda!109741)))

(push 1)

(assert tp_is_empty!18527)

(assert (not b!3699593))

(assert (not tb!214225))

(assert (not b!3699651))

(assert (not d!1084909))

(assert (not b!3699633))

(assert (not b!3699684))

(assert (not b!3699679))

(assert (not b!3699547))

(assert (not b!3699634))

(assert (not b!3699665))

(assert (not b!3699637))

(assert (not d!1084895))

(assert (not b!3699635))

(assert (not b!3699636))

(assert (not b!3699650))

(assert (not b!3699545))

(assert (not b!3699539))

(assert (not b!3699577))

(assert (not b_next!99241))

(assert (not b!3699685))

(assert (not b!3699686))

(assert (not d!1084911))

(assert (not d!1084897))

(assert (not d!1084927))

(assert (not b!3699681))

(assert (not b!3699656))

(assert b_and!276611)

(assert (not b!3699638))

(assert (not b!3699550))

(assert (not b!3699644))

(assert (not d!1084905))

(assert (not b!3699680))

(assert (not b!3699639))

(assert (not d!1084931))

(assert (not d!1084947))

(assert (not bm!267343))

(assert (not b!3699544))

(assert (not b!3699596))

(assert (not b_next!99231))

(assert (not b!3699549))

(assert (not b!3699541))

(assert b_and!276607)

(assert (not b!3699591))

(assert (not b_next!99243))

(assert (not b!3699666))

(assert (not b_lambda!109741))

(assert b_and!276629)

(assert (not b!3699683))

(assert (not b!3699565))

(assert (not b!3699645))

(assert (not b!3699546))

(assert (not b_next!99227))

(assert (not b_next!99225))

(assert (not b!3699595))

(assert (not b!3699540))

(assert b_and!276627)

(assert (not d!1084907))

(assert (not b!3699536))

(assert (not b!3699537))

(assert (not bm!267342))

(assert (not d!1084929))

(assert (not b_next!99229))

(assert (not b!3699553))

(assert (not b!3699632))

(assert (not b!3699538))

(assert (not b!3699548))

(assert b_and!276625)

(assert (not b!3699551))

(assert (not d!1084951))

(assert (not d!1084919))

(assert (not b!3699542))

(assert b_and!276623)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99241))

(assert b_and!276611)

(assert (not b_next!99231))

(assert b_and!276629)

(assert (not b_next!99227))

(assert (not b_next!99225))

(assert b_and!276627)

(assert (not b_next!99229))

(assert b_and!276625)

(assert b_and!276623)

(assert b_and!276607)

(assert (not b_next!99243))

(check-sat)

(pop 1)

