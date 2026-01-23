; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347004 () Bool)

(assert start!347004)

(declare-fun b!3689373 () Bool)

(declare-fun b_free!97889 () Bool)

(declare-fun b_next!98593 () Bool)

(assert (=> b!3689373 (= b_free!97889 (not b_next!98593))))

(declare-fun tp!1121185 () Bool)

(declare-fun b_and!275639 () Bool)

(assert (=> b!3689373 (= tp!1121185 b_and!275639)))

(declare-fun b_free!97891 () Bool)

(declare-fun b_next!98595 () Bool)

(assert (=> b!3689373 (= b_free!97891 (not b_next!98595))))

(declare-fun tp!1121186 () Bool)

(declare-fun b_and!275641 () Bool)

(assert (=> b!3689373 (= tp!1121186 b_and!275641)))

(declare-fun b!3689369 () Bool)

(declare-fun res!1499437 () Bool)

(declare-fun e!2284578 () Bool)

(assert (=> b!3689369 (=> (not res!1499437) (not e!2284578))))

(declare-datatypes ((List!39168 0))(
  ( (Nil!39044) (Cons!39044 (h!44464 (_ BitVec 16)) (t!301285 List!39168)) )
))
(declare-datatypes ((TokenValue!6127 0))(
  ( (FloatLiteralValue!12254 (text!43334 List!39168)) (TokenValueExt!6126 (__x!24471 Int)) (Broken!30635 (value!188500 List!39168)) (Object!6250) (End!6127) (Def!6127) (Underscore!6127) (Match!6127) (Else!6127) (Error!6127) (Case!6127) (If!6127) (Extends!6127) (Abstract!6127) (Class!6127) (Val!6127) (DelimiterValue!12254 (del!6187 List!39168)) (KeywordValue!6133 (value!188501 List!39168)) (CommentValue!12254 (value!188502 List!39168)) (WhitespaceValue!12254 (value!188503 List!39168)) (IndentationValue!6127 (value!188504 List!39168)) (String!43970) (Int32!6127) (Broken!30636 (value!188505 List!39168)) (Boolean!6128) (Unit!57098) (OperatorValue!6130 (op!6187 List!39168)) (IdentifierValue!12254 (value!188506 List!39168)) (IdentifierValue!12255 (value!188507 List!39168)) (WhitespaceValue!12255 (value!188508 List!39168)) (True!12254) (False!12254) (Broken!30637 (value!188509 List!39168)) (Broken!30638 (value!188510 List!39168)) (True!12255) (RightBrace!6127) (RightBracket!6127) (Colon!6127) (Null!6127) (Comma!6127) (LeftBracket!6127) (False!12255) (LeftBrace!6127) (ImaginaryLiteralValue!6127 (text!43335 List!39168)) (StringLiteralValue!18381 (value!188511 List!39168)) (EOFValue!6127 (value!188512 List!39168)) (IdentValue!6127 (value!188513 List!39168)) (DelimiterValue!12255 (value!188514 List!39168)) (DedentValue!6127 (value!188515 List!39168)) (NewLineValue!6127 (value!188516 List!39168)) (IntegerValue!18381 (value!188517 (_ BitVec 32)) (text!43336 List!39168)) (IntegerValue!18382 (value!188518 Int) (text!43337 List!39168)) (Times!6127) (Or!6127) (Equal!6127) (Minus!6127) (Broken!30639 (value!188519 List!39168)) (And!6127) (Div!6127) (LessEqual!6127) (Mod!6127) (Concat!16783) (Not!6127) (Plus!6127) (SpaceValue!6127 (value!188520 List!39168)) (IntegerValue!18383 (value!188521 Int) (text!43338 List!39168)) (StringLiteralValue!18382 (text!43339 List!39168)) (FloatLiteralValue!12255 (text!43340 List!39168)) (BytesLiteralValue!6127 (value!188522 List!39168)) (CommentValue!12255 (value!188523 List!39168)) (StringLiteralValue!18383 (value!188524 List!39168)) (ErrorTokenValue!6127 (msg!6188 List!39168)) )
))
(declare-datatypes ((C!21498 0))(
  ( (C!21499 (val!12797 Int)) )
))
(declare-datatypes ((List!39169 0))(
  ( (Nil!39045) (Cons!39045 (h!44465 C!21498) (t!301286 List!39169)) )
))
(declare-datatypes ((IArray!23973 0))(
  ( (IArray!23974 (innerList!12044 List!39169)) )
))
(declare-datatypes ((Regex!10656 0))(
  ( (ElementMatch!10656 (c!638121 C!21498)) (Concat!16784 (regOne!21824 Regex!10656) (regTwo!21824 Regex!10656)) (EmptyExpr!10656) (Star!10656 (reg!10985 Regex!10656)) (EmptyLang!10656) (Union!10656 (regOne!21825 Regex!10656) (regTwo!21825 Regex!10656)) )
))
(declare-datatypes ((String!43971 0))(
  ( (String!43972 (value!188525 String)) )
))
(declare-datatypes ((Conc!11984 0))(
  ( (Node!11984 (left!30459 Conc!11984) (right!30789 Conc!11984) (csize!24198 Int) (cheight!12195 Int)) (Leaf!18544 (xs!15186 IArray!23973) (csize!24199 Int)) (Empty!11984) )
))
(declare-datatypes ((BalanceConc!23582 0))(
  ( (BalanceConc!23583 (c!638122 Conc!11984)) )
))
(declare-datatypes ((TokenValueInjection!11682 0))(
  ( (TokenValueInjection!11683 (toValue!8217 Int) (toChars!8076 Int)) )
))
(declare-datatypes ((Rule!11594 0))(
  ( (Rule!11595 (regex!5897 Regex!10656) (tag!6711 String!43971) (isSeparator!5897 Bool) (transformation!5897 TokenValueInjection!11682)) )
))
(declare-datatypes ((List!39170 0))(
  ( (Nil!39046) (Cons!39046 (h!44466 Rule!11594) (t!301287 List!39170)) )
))
(declare-fun rules!3568 () List!39170)

(declare-fun isEmpty!23251 (List!39170) Bool)

(assert (=> b!3689369 (= res!1499437 (not (isEmpty!23251 rules!3568)))))

(declare-fun b!3689370 () Bool)

(declare-fun e!2284584 () Bool)

(declare-datatypes ((Token!11160 0))(
  ( (Token!11161 (value!188526 TokenValue!6127) (rule!8745 Rule!11594) (size!29841 Int) (originalCharacters!6611 List!39169)) )
))
(declare-fun lt!1291704 () Token!11160)

(declare-fun lt!1291695 () Rule!11594)

(assert (=> b!3689370 (= e!2284584 (= (rule!8745 lt!1291704) lt!1291695))))

(declare-fun b!3689371 () Bool)

(declare-fun res!1499436 () Bool)

(declare-fun e!2284577 () Bool)

(assert (=> b!3689371 (=> res!1499436 e!2284577)))

(declare-datatypes ((LexerInterface!5486 0))(
  ( (LexerInterfaceExt!5483 (__x!24472 Int)) (Lexer!5484) )
))
(declare-fun thiss!25197 () LexerInterface!5486)

(declare-fun rulesValidInductive!2111 (LexerInterface!5486 List!39170) Bool)

(assert (=> b!3689371 (= res!1499436 (not (rulesValidInductive!2111 thiss!25197 rules!3568)))))

(declare-fun b!3689372 () Bool)

(declare-fun e!2284579 () Bool)

(assert (=> b!3689372 (= e!2284578 e!2284579)))

(declare-fun res!1499440 () Bool)

(assert (=> b!3689372 (=> (not res!1499440) (not e!2284579))))

(declare-datatypes ((List!39171 0))(
  ( (Nil!39047) (Cons!39047 (h!44467 Token!11160) (t!301288 List!39171)) )
))
(declare-datatypes ((IArray!23975 0))(
  ( (IArray!23976 (innerList!12045 List!39171)) )
))
(declare-datatypes ((Conc!11985 0))(
  ( (Node!11985 (left!30460 Conc!11985) (right!30790 Conc!11985) (csize!24200 Int) (cheight!12196 Int)) (Leaf!18545 (xs!15187 IArray!23975) (csize!24201 Int)) (Empty!11985) )
))
(declare-datatypes ((BalanceConc!23584 0))(
  ( (BalanceConc!23585 (c!638123 Conc!11985)) )
))
(declare-datatypes ((tuple2!38960 0))(
  ( (tuple2!38961 (_1!22614 BalanceConc!23584) (_2!22614 BalanceConc!23582)) )
))
(declare-fun lt!1291703 () tuple2!38960)

(declare-fun isEmpty!23252 (BalanceConc!23584) Bool)

(assert (=> b!3689372 (= res!1499440 (not (isEmpty!23252 (_1!22614 lt!1291703))))))

(declare-fun input!3129 () List!39169)

(declare-fun lex!2627 (LexerInterface!5486 List!39170 BalanceConc!23582) tuple2!38960)

(declare-fun seqFromList!4446 (List!39169) BalanceConc!23582)

(assert (=> b!3689372 (= lt!1291703 (lex!2627 thiss!25197 rules!3568 (seqFromList!4446 input!3129)))))

(declare-fun e!2284587 () Bool)

(assert (=> b!3689373 (= e!2284587 (and tp!1121185 tp!1121186))))

(declare-fun b!3689374 () Bool)

(declare-fun contains!7798 (List!39170 Rule!11594) Bool)

(assert (=> b!3689374 (= e!2284577 (contains!7798 rules!3568 (rule!8745 lt!1291704)))))

(declare-fun b!3689375 () Bool)

(declare-fun res!1499438 () Bool)

(assert (=> b!3689375 (=> (not res!1499438) (not e!2284578))))

(declare-fun rulesInvariant!4883 (LexerInterface!5486 List!39170) Bool)

(assert (=> b!3689375 (= res!1499438 (rulesInvariant!4883 thiss!25197 rules!3568))))

(declare-fun e!2284585 () Bool)

(declare-fun tp!1121183 () Bool)

(declare-fun b!3689376 () Bool)

(declare-fun inv!52516 (String!43971) Bool)

(declare-fun inv!52519 (TokenValueInjection!11682) Bool)

(assert (=> b!3689376 (= e!2284585 (and tp!1121183 (inv!52516 (tag!6711 (h!44466 rules!3568))) (inv!52519 (transformation!5897 (h!44466 rules!3568))) e!2284587))))

(declare-fun b!3689377 () Bool)

(assert (=> b!3689377 (= e!2284579 (not e!2284577))))

(declare-fun res!1499443 () Bool)

(assert (=> b!3689377 (=> res!1499443 e!2284577)))

(declare-fun lt!1291699 () List!39169)

(declare-fun matchR!5211 (Regex!10656 List!39169) Bool)

(assert (=> b!3689377 (= res!1499443 (not (matchR!5211 (regex!5897 (rule!8745 lt!1291704)) lt!1291699)))))

(declare-fun e!2284582 () Bool)

(assert (=> b!3689377 e!2284582))

(declare-fun res!1499439 () Bool)

(assert (=> b!3689377 (=> (not res!1499439) (not e!2284582))))

(declare-datatypes ((Option!8405 0))(
  ( (None!8404) (Some!8404 (v!38356 Rule!11594)) )
))
(declare-fun lt!1291696 () Option!8405)

(declare-fun isDefined!6602 (Option!8405) Bool)

(assert (=> b!3689377 (= res!1499439 (isDefined!6602 lt!1291696))))

(declare-fun getRuleFromTag!1479 (LexerInterface!5486 List!39170 String!43971) Option!8405)

(assert (=> b!3689377 (= lt!1291696 (getRuleFromTag!1479 thiss!25197 rules!3568 (tag!6711 (rule!8745 lt!1291704))))))

(declare-datatypes ((Unit!57099 0))(
  ( (Unit!57100) )
))
(declare-fun lt!1291700 () Unit!57099)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1479 (LexerInterface!5486 List!39170 List!39169 Token!11160) Unit!57099)

(assert (=> b!3689377 (= lt!1291700 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1479 thiss!25197 rules!3568 input!3129 lt!1291704))))

(declare-fun lt!1291698 () List!39169)

(declare-fun isPrefix!3250 (List!39169 List!39169) Bool)

(assert (=> b!3689377 (isPrefix!3250 lt!1291699 lt!1291698)))

(declare-fun suffix!1448 () List!39169)

(declare-fun ++!9728 (List!39169 List!39169) List!39169)

(assert (=> b!3689377 (= lt!1291698 (++!9728 input!3129 suffix!1448))))

(declare-fun lt!1291701 () Unit!57099)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!579 (List!39169 List!39169 List!39169) Unit!57099)

(assert (=> b!3689377 (= lt!1291701 (lemmaPrefixStaysPrefixWhenAddingToSuffix!579 lt!1291699 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38962 0))(
  ( (tuple2!38963 (_1!22615 Token!11160) (_2!22615 List!39169)) )
))
(declare-fun lt!1291697 () tuple2!38962)

(assert (=> b!3689377 (isPrefix!3250 lt!1291699 (++!9728 lt!1291699 (_2!22615 lt!1291697)))))

(declare-fun lt!1291702 () Unit!57099)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2167 (List!39169 List!39169) Unit!57099)

(assert (=> b!3689377 (= lt!1291702 (lemmaConcatTwoListThenFirstIsPrefix!2167 lt!1291699 (_2!22615 lt!1291697)))))

(declare-datatypes ((Option!8406 0))(
  ( (None!8405) (Some!8405 (v!38357 tuple2!38962)) )
))
(declare-fun get!12949 (Option!8406) tuple2!38962)

(declare-fun maxPrefix!3014 (LexerInterface!5486 List!39170 List!39169) Option!8406)

(assert (=> b!3689377 (= lt!1291697 (get!12949 (maxPrefix!3014 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14588 (BalanceConc!23582) List!39169)

(declare-fun charsOf!3908 (Token!11160) BalanceConc!23582)

(assert (=> b!3689377 (= lt!1291699 (list!14588 (charsOf!3908 lt!1291704)))))

(declare-fun head!7965 (List!39171) Token!11160)

(declare-fun list!14589 (BalanceConc!23584) List!39171)

(assert (=> b!3689377 (= lt!1291704 (head!7965 (list!14589 (_1!22614 lt!1291703))))))

(declare-fun res!1499441 () Bool)

(assert (=> start!347004 (=> (not res!1499441) (not e!2284578))))

(assert (=> start!347004 (= res!1499441 (is-Lexer!5484 thiss!25197))))

(assert (=> start!347004 e!2284578))

(assert (=> start!347004 true))

(declare-fun e!2284583 () Bool)

(assert (=> start!347004 e!2284583))

(declare-fun e!2284586 () Bool)

(assert (=> start!347004 e!2284586))

(declare-fun e!2284581 () Bool)

(assert (=> start!347004 e!2284581))

(declare-fun b!3689378 () Bool)

(declare-fun res!1499435 () Bool)

(assert (=> b!3689378 (=> res!1499435 e!2284577)))

(declare-fun isEmpty!23253 (Option!8406) Bool)

(assert (=> b!3689378 (= res!1499435 (not (isEmpty!23253 (maxPrefix!3014 thiss!25197 rules!3568 lt!1291698))))))

(declare-fun b!3689379 () Bool)

(assert (=> b!3689379 (= e!2284582 e!2284584)))

(declare-fun res!1499442 () Bool)

(assert (=> b!3689379 (=> (not res!1499442) (not e!2284584))))

(assert (=> b!3689379 (= res!1499442 (matchR!5211 (regex!5897 lt!1291695) lt!1291699))))

(declare-fun get!12950 (Option!8405) Rule!11594)

(assert (=> b!3689379 (= lt!1291695 (get!12950 lt!1291696))))

(declare-fun b!3689380 () Bool)

(declare-fun tp_is_empty!18395 () Bool)

(declare-fun tp!1121187 () Bool)

(assert (=> b!3689380 (= e!2284586 (and tp_is_empty!18395 tp!1121187))))

(declare-fun b!3689381 () Bool)

(declare-fun tp!1121184 () Bool)

(assert (=> b!3689381 (= e!2284583 (and e!2284585 tp!1121184))))

(declare-fun b!3689382 () Bool)

(declare-fun tp!1121188 () Bool)

(assert (=> b!3689382 (= e!2284581 (and tp_is_empty!18395 tp!1121188))))

(assert (= (and start!347004 res!1499441) b!3689369))

(assert (= (and b!3689369 res!1499437) b!3689375))

(assert (= (and b!3689375 res!1499438) b!3689372))

(assert (= (and b!3689372 res!1499440) b!3689377))

(assert (= (and b!3689377 res!1499439) b!3689379))

(assert (= (and b!3689379 res!1499442) b!3689370))

(assert (= (and b!3689377 (not res!1499443)) b!3689378))

(assert (= (and b!3689378 (not res!1499435)) b!3689371))

(assert (= (and b!3689371 (not res!1499436)) b!3689374))

(assert (= b!3689376 b!3689373))

(assert (= b!3689381 b!3689376))

(assert (= (and start!347004 (is-Cons!39046 rules!3568)) b!3689381))

(assert (= (and start!347004 (is-Cons!39045 suffix!1448)) b!3689380))

(assert (= (and start!347004 (is-Cons!39045 input!3129)) b!3689382))

(declare-fun m!4201773 () Bool)

(assert (=> b!3689377 m!4201773))

(declare-fun m!4201775 () Bool)

(assert (=> b!3689377 m!4201775))

(declare-fun m!4201777 () Bool)

(assert (=> b!3689377 m!4201777))

(declare-fun m!4201779 () Bool)

(assert (=> b!3689377 m!4201779))

(declare-fun m!4201781 () Bool)

(assert (=> b!3689377 m!4201781))

(declare-fun m!4201783 () Bool)

(assert (=> b!3689377 m!4201783))

(declare-fun m!4201785 () Bool)

(assert (=> b!3689377 m!4201785))

(declare-fun m!4201787 () Bool)

(assert (=> b!3689377 m!4201787))

(declare-fun m!4201789 () Bool)

(assert (=> b!3689377 m!4201789))

(assert (=> b!3689377 m!4201787))

(declare-fun m!4201791 () Bool)

(assert (=> b!3689377 m!4201791))

(declare-fun m!4201793 () Bool)

(assert (=> b!3689377 m!4201793))

(assert (=> b!3689377 m!4201781))

(declare-fun m!4201795 () Bool)

(assert (=> b!3689377 m!4201795))

(declare-fun m!4201797 () Bool)

(assert (=> b!3689377 m!4201797))

(declare-fun m!4201799 () Bool)

(assert (=> b!3689377 m!4201799))

(assert (=> b!3689377 m!4201773))

(declare-fun m!4201801 () Bool)

(assert (=> b!3689377 m!4201801))

(assert (=> b!3689377 m!4201799))

(declare-fun m!4201803 () Bool)

(assert (=> b!3689377 m!4201803))

(declare-fun m!4201805 () Bool)

(assert (=> b!3689378 m!4201805))

(assert (=> b!3689378 m!4201805))

(declare-fun m!4201807 () Bool)

(assert (=> b!3689378 m!4201807))

(declare-fun m!4201809 () Bool)

(assert (=> b!3689369 m!4201809))

(declare-fun m!4201811 () Bool)

(assert (=> b!3689374 m!4201811))

(declare-fun m!4201813 () Bool)

(assert (=> b!3689371 m!4201813))

(declare-fun m!4201815 () Bool)

(assert (=> b!3689376 m!4201815))

(declare-fun m!4201817 () Bool)

(assert (=> b!3689376 m!4201817))

(declare-fun m!4201819 () Bool)

(assert (=> b!3689375 m!4201819))

(declare-fun m!4201821 () Bool)

(assert (=> b!3689372 m!4201821))

(declare-fun m!4201823 () Bool)

(assert (=> b!3689372 m!4201823))

(assert (=> b!3689372 m!4201823))

(declare-fun m!4201825 () Bool)

(assert (=> b!3689372 m!4201825))

(declare-fun m!4201827 () Bool)

(assert (=> b!3689379 m!4201827))

(declare-fun m!4201829 () Bool)

(assert (=> b!3689379 m!4201829))

(push 1)

(assert (not b!3689381))

(assert (not b!3689374))

(assert (not b_next!98595))

(assert (not b!3689376))

(assert (not b!3689375))

(assert (not b_next!98593))

(assert b_and!275639)

(assert (not b!3689379))

(assert (not b!3689372))

(assert (not b!3689369))

(assert b_and!275641)

(assert (not b!3689380))

(assert (not b!3689378))

(assert tp_is_empty!18395)

(assert (not b!3689377))

(assert (not b!3689371))

(assert (not b!3689382))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275639)

(assert b_and!275641)

(assert (not b_next!98595))

(assert (not b_next!98593))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1082886 () Bool)

(declare-fun res!1499480 () Bool)

(declare-fun e!2284623 () Bool)

(assert (=> d!1082886 (=> (not res!1499480) (not e!2284623))))

(declare-fun rulesValid!2275 (LexerInterface!5486 List!39170) Bool)

(assert (=> d!1082886 (= res!1499480 (rulesValid!2275 thiss!25197 rules!3568))))

(assert (=> d!1082886 (= (rulesInvariant!4883 thiss!25197 rules!3568) e!2284623)))

(declare-fun b!3689427 () Bool)

(declare-datatypes ((List!39176 0))(
  ( (Nil!39052) (Cons!39052 (h!44472 String!43971) (t!301297 List!39176)) )
))
(declare-fun noDuplicateTag!2271 (LexerInterface!5486 List!39170 List!39176) Bool)

(assert (=> b!3689427 (= e!2284623 (noDuplicateTag!2271 thiss!25197 rules!3568 Nil!39052))))

(assert (= (and d!1082886 res!1499480) b!3689427))

(declare-fun m!4201889 () Bool)

(assert (=> d!1082886 m!4201889))

(declare-fun m!4201891 () Bool)

(assert (=> b!3689427 m!4201891))

(assert (=> b!3689375 d!1082886))

(declare-fun d!1082888 () Bool)

(assert (=> d!1082888 (= (inv!52516 (tag!6711 (h!44466 rules!3568))) (= (mod (str.len (value!188525 (tag!6711 (h!44466 rules!3568)))) 2) 0))))

(assert (=> b!3689376 d!1082888))

(declare-fun d!1082890 () Bool)

(declare-fun res!1499483 () Bool)

(declare-fun e!2284626 () Bool)

(assert (=> d!1082890 (=> (not res!1499483) (not e!2284626))))

(declare-fun semiInverseModEq!2518 (Int Int) Bool)

(assert (=> d!1082890 (= res!1499483 (semiInverseModEq!2518 (toChars!8076 (transformation!5897 (h!44466 rules!3568))) (toValue!8217 (transformation!5897 (h!44466 rules!3568)))))))

(assert (=> d!1082890 (= (inv!52519 (transformation!5897 (h!44466 rules!3568))) e!2284626)))

(declare-fun b!3689430 () Bool)

(declare-fun equivClasses!2417 (Int Int) Bool)

(assert (=> b!3689430 (= e!2284626 (equivClasses!2417 (toChars!8076 (transformation!5897 (h!44466 rules!3568))) (toValue!8217 (transformation!5897 (h!44466 rules!3568)))))))

(assert (= (and d!1082890 res!1499483) b!3689430))

(declare-fun m!4201893 () Bool)

(assert (=> d!1082890 m!4201893))

(declare-fun m!4201895 () Bool)

(assert (=> b!3689430 m!4201895))

(assert (=> b!3689376 d!1082890))

(declare-fun d!1082892 () Bool)

(assert (=> d!1082892 true))

(declare-fun lt!1291743 () Bool)

(declare-fun lambda!124938 () Int)

(declare-fun forall!8173 (List!39170 Int) Bool)

(assert (=> d!1082892 (= lt!1291743 (forall!8173 rules!3568 lambda!124938))))

(declare-fun e!2284641 () Bool)

(assert (=> d!1082892 (= lt!1291743 e!2284641)))

(declare-fun res!1499497 () Bool)

(assert (=> d!1082892 (=> res!1499497 e!2284641)))

(assert (=> d!1082892 (= res!1499497 (not (is-Cons!39046 rules!3568)))))

(assert (=> d!1082892 (= (rulesValidInductive!2111 thiss!25197 rules!3568) lt!1291743)))

(declare-fun b!3689450 () Bool)

(declare-fun e!2284640 () Bool)

(assert (=> b!3689450 (= e!2284641 e!2284640)))

(declare-fun res!1499498 () Bool)

(assert (=> b!3689450 (=> (not res!1499498) (not e!2284640))))

(declare-fun ruleValid!2133 (LexerInterface!5486 Rule!11594) Bool)

(assert (=> b!3689450 (= res!1499498 (ruleValid!2133 thiss!25197 (h!44466 rules!3568)))))

(declare-fun b!3689451 () Bool)

(assert (=> b!3689451 (= e!2284640 (rulesValidInductive!2111 thiss!25197 (t!301287 rules!3568)))))

(assert (= (and d!1082892 (not res!1499497)) b!3689450))

(assert (= (and b!3689450 res!1499498) b!3689451))

(declare-fun m!4201919 () Bool)

(assert (=> d!1082892 m!4201919))

(declare-fun m!4201921 () Bool)

(assert (=> b!3689450 m!4201921))

(declare-fun m!4201923 () Bool)

(assert (=> b!3689451 m!4201923))

(assert (=> b!3689371 d!1082892))

(declare-fun d!1082900 () Bool)

(declare-fun lt!1291746 () BalanceConc!23582)

(assert (=> d!1082900 (= (list!14588 lt!1291746) (originalCharacters!6611 lt!1291704))))

(declare-fun dynLambda!17111 (Int TokenValue!6127) BalanceConc!23582)

(assert (=> d!1082900 (= lt!1291746 (dynLambda!17111 (toChars!8076 (transformation!5897 (rule!8745 lt!1291704))) (value!188526 lt!1291704)))))

(assert (=> d!1082900 (= (charsOf!3908 lt!1291704) lt!1291746)))

(declare-fun b_lambda!109499 () Bool)

(assert (=> (not b_lambda!109499) (not d!1082900)))

(declare-fun t!301294 () Bool)

(declare-fun tb!213837 () Bool)

(assert (=> (and b!3689373 (= (toChars!8076 (transformation!5897 (h!44466 rules!3568))) (toChars!8076 (transformation!5897 (rule!8745 lt!1291704)))) t!301294) tb!213837))

(declare-fun b!3689458 () Bool)

(declare-fun e!2284644 () Bool)

(declare-fun tp!1121209 () Bool)

(declare-fun inv!52521 (Conc!11984) Bool)

(assert (=> b!3689458 (= e!2284644 (and (inv!52521 (c!638122 (dynLambda!17111 (toChars!8076 (transformation!5897 (rule!8745 lt!1291704))) (value!188526 lt!1291704)))) tp!1121209))))

(declare-fun result!260314 () Bool)

(declare-fun inv!52522 (BalanceConc!23582) Bool)

(assert (=> tb!213837 (= result!260314 (and (inv!52522 (dynLambda!17111 (toChars!8076 (transformation!5897 (rule!8745 lt!1291704))) (value!188526 lt!1291704))) e!2284644))))

(assert (= tb!213837 b!3689458))

(declare-fun m!4201927 () Bool)

(assert (=> b!3689458 m!4201927))

(declare-fun m!4201929 () Bool)

(assert (=> tb!213837 m!4201929))

(assert (=> d!1082900 t!301294))

(declare-fun b_and!275647 () Bool)

(assert (= b_and!275641 (and (=> t!301294 result!260314) b_and!275647)))

(declare-fun m!4201931 () Bool)

(assert (=> d!1082900 m!4201931))

(declare-fun m!4201933 () Bool)

(assert (=> d!1082900 m!4201933))

(assert (=> b!3689377 d!1082900))

(declare-fun d!1082906 () Bool)

(assert (=> d!1082906 (= (get!12949 (maxPrefix!3014 thiss!25197 rules!3568 input!3129)) (v!38357 (maxPrefix!3014 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3689377 d!1082906))

(declare-fun d!1082908 () Bool)

(declare-fun list!14592 (Conc!11984) List!39169)

(assert (=> d!1082908 (= (list!14588 (charsOf!3908 lt!1291704)) (list!14592 (c!638122 (charsOf!3908 lt!1291704))))))

(declare-fun bs!574044 () Bool)

(assert (= bs!574044 d!1082908))

(declare-fun m!4201935 () Bool)

(assert (=> bs!574044 m!4201935))

(assert (=> b!3689377 d!1082908))

(declare-fun d!1082910 () Bool)

(assert (=> d!1082910 (isPrefix!3250 lt!1291699 (++!9728 input!3129 suffix!1448))))

(declare-fun lt!1291749 () Unit!57099)

(declare-fun choose!22083 (List!39169 List!39169 List!39169) Unit!57099)

(assert (=> d!1082910 (= lt!1291749 (choose!22083 lt!1291699 input!3129 suffix!1448))))

(assert (=> d!1082910 (isPrefix!3250 lt!1291699 input!3129)))

(assert (=> d!1082910 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!579 lt!1291699 input!3129 suffix!1448) lt!1291749)))

(declare-fun bs!574045 () Bool)

(assert (= bs!574045 d!1082910))

(assert (=> bs!574045 m!4201777))

(assert (=> bs!574045 m!4201777))

(declare-fun m!4201937 () Bool)

(assert (=> bs!574045 m!4201937))

(declare-fun m!4201939 () Bool)

(assert (=> bs!574045 m!4201939))

(declare-fun m!4201941 () Bool)

(assert (=> bs!574045 m!4201941))

(assert (=> b!3689377 d!1082910))

(declare-fun b!3689470 () Bool)

(declare-fun e!2284651 () Bool)

(declare-fun size!29843 (List!39169) Int)

(assert (=> b!3689470 (= e!2284651 (>= (size!29843 lt!1291698) (size!29843 lt!1291699)))))

(declare-fun d!1082912 () Bool)

(assert (=> d!1082912 e!2284651))

(declare-fun res!1499509 () Bool)

(assert (=> d!1082912 (=> res!1499509 e!2284651)))

(declare-fun lt!1291752 () Bool)

(assert (=> d!1082912 (= res!1499509 (not lt!1291752))))

(declare-fun e!2284653 () Bool)

(assert (=> d!1082912 (= lt!1291752 e!2284653)))

(declare-fun res!1499510 () Bool)

(assert (=> d!1082912 (=> res!1499510 e!2284653)))

(assert (=> d!1082912 (= res!1499510 (is-Nil!39045 lt!1291699))))

(assert (=> d!1082912 (= (isPrefix!3250 lt!1291699 lt!1291698) lt!1291752)))

(declare-fun b!3689467 () Bool)

(declare-fun e!2284652 () Bool)

(assert (=> b!3689467 (= e!2284653 e!2284652)))

(declare-fun res!1499507 () Bool)

(assert (=> b!3689467 (=> (not res!1499507) (not e!2284652))))

(assert (=> b!3689467 (= res!1499507 (not (is-Nil!39045 lt!1291698)))))

(declare-fun b!3689468 () Bool)

(declare-fun res!1499508 () Bool)

(assert (=> b!3689468 (=> (not res!1499508) (not e!2284652))))

(declare-fun head!7967 (List!39169) C!21498)

(assert (=> b!3689468 (= res!1499508 (= (head!7967 lt!1291699) (head!7967 lt!1291698)))))

(declare-fun b!3689469 () Bool)

(declare-fun tail!5712 (List!39169) List!39169)

(assert (=> b!3689469 (= e!2284652 (isPrefix!3250 (tail!5712 lt!1291699) (tail!5712 lt!1291698)))))

(assert (= (and d!1082912 (not res!1499510)) b!3689467))

(assert (= (and b!3689467 res!1499507) b!3689468))

(assert (= (and b!3689468 res!1499508) b!3689469))

(assert (= (and d!1082912 (not res!1499509)) b!3689470))

(declare-fun m!4201943 () Bool)

(assert (=> b!3689470 m!4201943))

(declare-fun m!4201945 () Bool)

(assert (=> b!3689470 m!4201945))

(declare-fun m!4201947 () Bool)

(assert (=> b!3689468 m!4201947))

(declare-fun m!4201949 () Bool)

(assert (=> b!3689468 m!4201949))

(declare-fun m!4201951 () Bool)

(assert (=> b!3689469 m!4201951))

(declare-fun m!4201953 () Bool)

(assert (=> b!3689469 m!4201953))

(assert (=> b!3689469 m!4201951))

(assert (=> b!3689469 m!4201953))

(declare-fun m!4201955 () Bool)

(assert (=> b!3689469 m!4201955))

(assert (=> b!3689377 d!1082912))

(declare-fun d!1082914 () Bool)

(declare-fun e!2284656 () Bool)

(assert (=> d!1082914 e!2284656))

(declare-fun res!1499515 () Bool)

(assert (=> d!1082914 (=> (not res!1499515) (not e!2284656))))

(assert (=> d!1082914 (= res!1499515 (isDefined!6602 (getRuleFromTag!1479 thiss!25197 rules!3568 (tag!6711 (rule!8745 lt!1291704)))))))

(declare-fun lt!1291755 () Unit!57099)

(declare-fun choose!22084 (LexerInterface!5486 List!39170 List!39169 Token!11160) Unit!57099)

(assert (=> d!1082914 (= lt!1291755 (choose!22084 thiss!25197 rules!3568 input!3129 lt!1291704))))

(assert (=> d!1082914 (rulesInvariant!4883 thiss!25197 rules!3568)))

(assert (=> d!1082914 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1479 thiss!25197 rules!3568 input!3129 lt!1291704) lt!1291755)))

(declare-fun b!3689475 () Bool)

(declare-fun res!1499516 () Bool)

(assert (=> b!3689475 (=> (not res!1499516) (not e!2284656))))

(assert (=> b!3689475 (= res!1499516 (matchR!5211 (regex!5897 (get!12950 (getRuleFromTag!1479 thiss!25197 rules!3568 (tag!6711 (rule!8745 lt!1291704))))) (list!14588 (charsOf!3908 lt!1291704))))))

(declare-fun b!3689476 () Bool)

(assert (=> b!3689476 (= e!2284656 (= (rule!8745 lt!1291704) (get!12950 (getRuleFromTag!1479 thiss!25197 rules!3568 (tag!6711 (rule!8745 lt!1291704))))))))

(assert (= (and d!1082914 res!1499515) b!3689475))

(assert (= (and b!3689475 res!1499516) b!3689476))

(assert (=> d!1082914 m!4201779))

(assert (=> d!1082914 m!4201779))

(declare-fun m!4201957 () Bool)

(assert (=> d!1082914 m!4201957))

(declare-fun m!4201959 () Bool)

(assert (=> d!1082914 m!4201959))

(assert (=> d!1082914 m!4201819))

(assert (=> b!3689475 m!4201779))

(assert (=> b!3689475 m!4201801))

(declare-fun m!4201961 () Bool)

(assert (=> b!3689475 m!4201961))

(assert (=> b!3689475 m!4201773))

(assert (=> b!3689475 m!4201801))

(assert (=> b!3689475 m!4201779))

(declare-fun m!4201963 () Bool)

(assert (=> b!3689475 m!4201963))

(assert (=> b!3689475 m!4201773))

(assert (=> b!3689476 m!4201779))

(assert (=> b!3689476 m!4201779))

(assert (=> b!3689476 m!4201963))

(assert (=> b!3689377 d!1082914))

(declare-fun b!3689487 () Bool)

(declare-fun res!1499522 () Bool)

(declare-fun e!2284661 () Bool)

(assert (=> b!3689487 (=> (not res!1499522) (not e!2284661))))

(declare-fun lt!1291758 () List!39169)

(assert (=> b!3689487 (= res!1499522 (= (size!29843 lt!1291758) (+ (size!29843 input!3129) (size!29843 suffix!1448))))))

(declare-fun b!3689486 () Bool)

(declare-fun e!2284662 () List!39169)

(assert (=> b!3689486 (= e!2284662 (Cons!39045 (h!44465 input!3129) (++!9728 (t!301286 input!3129) suffix!1448)))))

(declare-fun d!1082916 () Bool)

(assert (=> d!1082916 e!2284661))

(declare-fun res!1499521 () Bool)

(assert (=> d!1082916 (=> (not res!1499521) (not e!2284661))))

(declare-fun content!5660 (List!39169) (Set C!21498))

(assert (=> d!1082916 (= res!1499521 (= (content!5660 lt!1291758) (set.union (content!5660 input!3129) (content!5660 suffix!1448))))))

(assert (=> d!1082916 (= lt!1291758 e!2284662)))

(declare-fun c!638133 () Bool)

(assert (=> d!1082916 (= c!638133 (is-Nil!39045 input!3129))))

(assert (=> d!1082916 (= (++!9728 input!3129 suffix!1448) lt!1291758)))

(declare-fun b!3689488 () Bool)

(assert (=> b!3689488 (= e!2284661 (or (not (= suffix!1448 Nil!39045)) (= lt!1291758 input!3129)))))

(declare-fun b!3689485 () Bool)

(assert (=> b!3689485 (= e!2284662 suffix!1448)))

(assert (= (and d!1082916 c!638133) b!3689485))

(assert (= (and d!1082916 (not c!638133)) b!3689486))

(assert (= (and d!1082916 res!1499521) b!3689487))

(assert (= (and b!3689487 res!1499522) b!3689488))

(declare-fun m!4201965 () Bool)

(assert (=> b!3689487 m!4201965))

(declare-fun m!4201967 () Bool)

(assert (=> b!3689487 m!4201967))

(declare-fun m!4201969 () Bool)

(assert (=> b!3689487 m!4201969))

(declare-fun m!4201971 () Bool)

(assert (=> b!3689486 m!4201971))

(declare-fun m!4201973 () Bool)

(assert (=> d!1082916 m!4201973))

(declare-fun m!4201975 () Bool)

(assert (=> d!1082916 m!4201975))

(declare-fun m!4201977 () Bool)

(assert (=> d!1082916 m!4201977))

(assert (=> b!3689377 d!1082916))

(declare-fun b!3689535 () Bool)

(declare-fun e!2284689 () Bool)

(declare-fun nullable!3716 (Regex!10656) Bool)

(assert (=> b!3689535 (= e!2284689 (nullable!3716 (regex!5897 (rule!8745 lt!1291704))))))

(declare-fun d!1082918 () Bool)

(declare-fun e!2284685 () Bool)

(assert (=> d!1082918 e!2284685))

(declare-fun c!638144 () Bool)

(assert (=> d!1082918 (= c!638144 (is-EmptyExpr!10656 (regex!5897 (rule!8745 lt!1291704))))))

(declare-fun lt!1291771 () Bool)

(assert (=> d!1082918 (= lt!1291771 e!2284689)))

(declare-fun c!638143 () Bool)

(declare-fun isEmpty!23257 (List!39169) Bool)

(assert (=> d!1082918 (= c!638143 (isEmpty!23257 lt!1291699))))

(declare-fun validRegex!4878 (Regex!10656) Bool)

(assert (=> d!1082918 (validRegex!4878 (regex!5897 (rule!8745 lt!1291704)))))

(assert (=> d!1082918 (= (matchR!5211 (regex!5897 (rule!8745 lt!1291704)) lt!1291699) lt!1291771)))

(declare-fun b!3689536 () Bool)

(declare-fun e!2284684 () Bool)

(assert (=> b!3689536 (= e!2284684 (not (= (head!7967 lt!1291699) (c!638121 (regex!5897 (rule!8745 lt!1291704))))))))

(declare-fun b!3689537 () Bool)

(declare-fun e!2284688 () Bool)

(assert (=> b!3689537 (= e!2284685 e!2284688)))

(declare-fun c!638142 () Bool)

(assert (=> b!3689537 (= c!638142 (is-EmptyLang!10656 (regex!5897 (rule!8745 lt!1291704))))))

(declare-fun bm!266900 () Bool)

(declare-fun call!266905 () Bool)

(assert (=> bm!266900 (= call!266905 (isEmpty!23257 lt!1291699))))

(declare-fun b!3689538 () Bool)

(declare-fun res!1499560 () Bool)

(declare-fun e!2284686 () Bool)

(assert (=> b!3689538 (=> res!1499560 e!2284686)))

(declare-fun e!2284683 () Bool)

(assert (=> b!3689538 (= res!1499560 e!2284683)))

(declare-fun res!1499553 () Bool)

(assert (=> b!3689538 (=> (not res!1499553) (not e!2284683))))

(assert (=> b!3689538 (= res!1499553 lt!1291771)))

(declare-fun b!3689539 () Bool)

(assert (=> b!3689539 (= e!2284685 (= lt!1291771 call!266905))))

(declare-fun b!3689540 () Bool)

(declare-fun res!1499558 () Bool)

(assert (=> b!3689540 (=> res!1499558 e!2284684)))

(assert (=> b!3689540 (= res!1499558 (not (isEmpty!23257 (tail!5712 lt!1291699))))))

(declare-fun b!3689541 () Bool)

(declare-fun res!1499556 () Bool)

(assert (=> b!3689541 (=> (not res!1499556) (not e!2284683))))

(assert (=> b!3689541 (= res!1499556 (isEmpty!23257 (tail!5712 lt!1291699)))))

(declare-fun b!3689542 () Bool)

(assert (=> b!3689542 (= e!2284683 (= (head!7967 lt!1291699) (c!638121 (regex!5897 (rule!8745 lt!1291704)))))))

(declare-fun b!3689543 () Bool)

(assert (=> b!3689543 (= e!2284688 (not lt!1291771))))

(declare-fun b!3689544 () Bool)

(declare-fun res!1499554 () Bool)

(assert (=> b!3689544 (=> res!1499554 e!2284686)))

(assert (=> b!3689544 (= res!1499554 (not (is-ElementMatch!10656 (regex!5897 (rule!8745 lt!1291704)))))))

(assert (=> b!3689544 (= e!2284688 e!2284686)))

(declare-fun b!3689545 () Bool)

(declare-fun derivativeStep!3262 (Regex!10656 C!21498) Regex!10656)

(assert (=> b!3689545 (= e!2284689 (matchR!5211 (derivativeStep!3262 (regex!5897 (rule!8745 lt!1291704)) (head!7967 lt!1291699)) (tail!5712 lt!1291699)))))

(declare-fun b!3689546 () Bool)

(declare-fun e!2284687 () Bool)

(assert (=> b!3689546 (= e!2284686 e!2284687)))

(declare-fun res!1499557 () Bool)

(assert (=> b!3689546 (=> (not res!1499557) (not e!2284687))))

(assert (=> b!3689546 (= res!1499557 (not lt!1291771))))

(declare-fun b!3689547 () Bool)

(declare-fun res!1499559 () Bool)

(assert (=> b!3689547 (=> (not res!1499559) (not e!2284683))))

(assert (=> b!3689547 (= res!1499559 (not call!266905))))

(declare-fun b!3689548 () Bool)

(assert (=> b!3689548 (= e!2284687 e!2284684)))

(declare-fun res!1499555 () Bool)

(assert (=> b!3689548 (=> res!1499555 e!2284684)))

(assert (=> b!3689548 (= res!1499555 call!266905)))

(assert (= (and d!1082918 c!638143) b!3689535))

(assert (= (and d!1082918 (not c!638143)) b!3689545))

(assert (= (and d!1082918 c!638144) b!3689539))

(assert (= (and d!1082918 (not c!638144)) b!3689537))

(assert (= (and b!3689537 c!638142) b!3689543))

(assert (= (and b!3689537 (not c!638142)) b!3689544))

(assert (= (and b!3689544 (not res!1499554)) b!3689538))

(assert (= (and b!3689538 res!1499553) b!3689547))

(assert (= (and b!3689547 res!1499559) b!3689541))

(assert (= (and b!3689541 res!1499556) b!3689542))

(assert (= (and b!3689538 (not res!1499560)) b!3689546))

(assert (= (and b!3689546 res!1499557) b!3689548))

(assert (= (and b!3689548 (not res!1499555)) b!3689540))

(assert (= (and b!3689540 (not res!1499558)) b!3689536))

(assert (= (or b!3689539 b!3689547 b!3689548) bm!266900))

(assert (=> b!3689545 m!4201947))

(assert (=> b!3689545 m!4201947))

(declare-fun m!4201979 () Bool)

(assert (=> b!3689545 m!4201979))

(assert (=> b!3689545 m!4201951))

(assert (=> b!3689545 m!4201979))

(assert (=> b!3689545 m!4201951))

(declare-fun m!4201981 () Bool)

(assert (=> b!3689545 m!4201981))

(assert (=> b!3689536 m!4201947))

(assert (=> b!3689542 m!4201947))

(declare-fun m!4201983 () Bool)

(assert (=> b!3689535 m!4201983))

(declare-fun m!4201985 () Bool)

(assert (=> d!1082918 m!4201985))

(declare-fun m!4201987 () Bool)

(assert (=> d!1082918 m!4201987))

(assert (=> b!3689540 m!4201951))

(assert (=> b!3689540 m!4201951))

(declare-fun m!4201989 () Bool)

(assert (=> b!3689540 m!4201989))

(assert (=> bm!266900 m!4201985))

(assert (=> b!3689541 m!4201951))

(assert (=> b!3689541 m!4201951))

(assert (=> b!3689541 m!4201989))

(assert (=> b!3689377 d!1082918))

(declare-fun b!3689578 () Bool)

(declare-fun e!2284708 () Bool)

(declare-fun lt!1291785 () Option!8405)

(assert (=> b!3689578 (= e!2284708 (= (tag!6711 (get!12950 lt!1291785)) (tag!6711 (rule!8745 lt!1291704))))))

(declare-fun b!3689579 () Bool)

(declare-fun e!2284710 () Option!8405)

(declare-fun e!2284709 () Option!8405)

(assert (=> b!3689579 (= e!2284710 e!2284709)))

(declare-fun c!638151 () Bool)

(assert (=> b!3689579 (= c!638151 (and (is-Cons!39046 rules!3568) (not (= (tag!6711 (h!44466 rules!3568)) (tag!6711 (rule!8745 lt!1291704))))))))

(declare-fun b!3689580 () Bool)

(declare-fun lt!1291787 () Unit!57099)

(declare-fun lt!1291786 () Unit!57099)

(assert (=> b!3689580 (= lt!1291787 lt!1291786)))

(assert (=> b!3689580 (rulesInvariant!4883 thiss!25197 (t!301287 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!636 (LexerInterface!5486 Rule!11594 List!39170) Unit!57099)

(assert (=> b!3689580 (= lt!1291786 (lemmaInvariantOnRulesThenOnTail!636 thiss!25197 (h!44466 rules!3568) (t!301287 rules!3568)))))

(assert (=> b!3689580 (= e!2284709 (getRuleFromTag!1479 thiss!25197 (t!301287 rules!3568) (tag!6711 (rule!8745 lt!1291704))))))

(declare-fun b!3689581 () Bool)

(assert (=> b!3689581 (= e!2284710 (Some!8404 (h!44466 rules!3568)))))

(declare-fun b!3689582 () Bool)

(assert (=> b!3689582 (= e!2284709 None!8404)))

(declare-fun d!1082920 () Bool)

(declare-fun e!2284711 () Bool)

(assert (=> d!1082920 e!2284711))

(declare-fun res!1499580 () Bool)

(assert (=> d!1082920 (=> res!1499580 e!2284711)))

(declare-fun isEmpty!23258 (Option!8405) Bool)

(assert (=> d!1082920 (= res!1499580 (isEmpty!23258 lt!1291785))))

(assert (=> d!1082920 (= lt!1291785 e!2284710)))

(declare-fun c!638150 () Bool)

(assert (=> d!1082920 (= c!638150 (and (is-Cons!39046 rules!3568) (= (tag!6711 (h!44466 rules!3568)) (tag!6711 (rule!8745 lt!1291704)))))))

(assert (=> d!1082920 (rulesInvariant!4883 thiss!25197 rules!3568)))

(assert (=> d!1082920 (= (getRuleFromTag!1479 thiss!25197 rules!3568 (tag!6711 (rule!8745 lt!1291704))) lt!1291785)))

(declare-fun b!3689577 () Bool)

(assert (=> b!3689577 (= e!2284711 e!2284708)))

(declare-fun res!1499579 () Bool)

(assert (=> b!3689577 (=> (not res!1499579) (not e!2284708))))

(assert (=> b!3689577 (= res!1499579 (contains!7798 rules!3568 (get!12950 lt!1291785)))))

(assert (= (and d!1082920 c!638150) b!3689581))

(assert (= (and d!1082920 (not c!638150)) b!3689579))

(assert (= (and b!3689579 c!638151) b!3689580))

(assert (= (and b!3689579 (not c!638151)) b!3689582))

(assert (= (and d!1082920 (not res!1499580)) b!3689577))

(assert (= (and b!3689577 res!1499579) b!3689578))

(declare-fun m!4202027 () Bool)

(assert (=> b!3689578 m!4202027))

(declare-fun m!4202029 () Bool)

(assert (=> b!3689580 m!4202029))

(declare-fun m!4202031 () Bool)

(assert (=> b!3689580 m!4202031))

(declare-fun m!4202033 () Bool)

(assert (=> b!3689580 m!4202033))

(declare-fun m!4202035 () Bool)

(assert (=> d!1082920 m!4202035))

(assert (=> d!1082920 m!4201819))

(assert (=> b!3689577 m!4202027))

(assert (=> b!3689577 m!4202027))

(declare-fun m!4202037 () Bool)

(assert (=> b!3689577 m!4202037))

(assert (=> b!3689377 d!1082920))

(declare-fun b!3689601 () Bool)

(declare-fun e!2284719 () Bool)

(declare-fun e!2284720 () Bool)

(assert (=> b!3689601 (= e!2284719 e!2284720)))

(declare-fun res!1499600 () Bool)

(assert (=> b!3689601 (=> (not res!1499600) (not e!2284720))))

(declare-fun lt!1291801 () Option!8406)

(declare-fun isDefined!6604 (Option!8406) Bool)

(assert (=> b!3689601 (= res!1499600 (isDefined!6604 lt!1291801))))

(declare-fun b!3689602 () Bool)

(declare-fun res!1499598 () Bool)

(assert (=> b!3689602 (=> (not res!1499598) (not e!2284720))))

(assert (=> b!3689602 (= res!1499598 (matchR!5211 (regex!5897 (rule!8745 (_1!22615 (get!12949 lt!1291801)))) (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291801))))))))

(declare-fun b!3689603 () Bool)

(assert (=> b!3689603 (= e!2284720 (contains!7798 rules!3568 (rule!8745 (_1!22615 (get!12949 lt!1291801)))))))

(declare-fun call!266909 () Option!8406)

(declare-fun bm!266904 () Bool)

(declare-fun maxPrefixOneRule!2132 (LexerInterface!5486 Rule!11594 List!39169) Option!8406)

(assert (=> bm!266904 (= call!266909 (maxPrefixOneRule!2132 thiss!25197 (h!44466 rules!3568) input!3129))))

(declare-fun b!3689604 () Bool)

(declare-fun res!1499597 () Bool)

(assert (=> b!3689604 (=> (not res!1499597) (not e!2284720))))

(assert (=> b!3689604 (= res!1499597 (< (size!29843 (_2!22615 (get!12949 lt!1291801))) (size!29843 input!3129)))))

(declare-fun b!3689605 () Bool)

(declare-fun res!1499599 () Bool)

(assert (=> b!3689605 (=> (not res!1499599) (not e!2284720))))

(assert (=> b!3689605 (= res!1499599 (= (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291801)))) (originalCharacters!6611 (_1!22615 (get!12949 lt!1291801)))))))

(declare-fun b!3689606 () Bool)

(declare-fun res!1499595 () Bool)

(assert (=> b!3689606 (=> (not res!1499595) (not e!2284720))))

(assert (=> b!3689606 (= res!1499595 (= (++!9728 (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291801)))) (_2!22615 (get!12949 lt!1291801))) input!3129))))

(declare-fun b!3689607 () Bool)

(declare-fun e!2284718 () Option!8406)

(declare-fun lt!1291800 () Option!8406)

(declare-fun lt!1291798 () Option!8406)

(assert (=> b!3689607 (= e!2284718 (ite (and (is-None!8405 lt!1291800) (is-None!8405 lt!1291798)) None!8405 (ite (is-None!8405 lt!1291798) lt!1291800 (ite (is-None!8405 lt!1291800) lt!1291798 (ite (>= (size!29841 (_1!22615 (v!38357 lt!1291800))) (size!29841 (_1!22615 (v!38357 lt!1291798)))) lt!1291800 lt!1291798)))))))

(assert (=> b!3689607 (= lt!1291800 call!266909)))

(assert (=> b!3689607 (= lt!1291798 (maxPrefix!3014 thiss!25197 (t!301287 rules!3568) input!3129))))

(declare-fun d!1082926 () Bool)

(assert (=> d!1082926 e!2284719))

(declare-fun res!1499596 () Bool)

(assert (=> d!1082926 (=> res!1499596 e!2284719)))

(assert (=> d!1082926 (= res!1499596 (isEmpty!23253 lt!1291801))))

(assert (=> d!1082926 (= lt!1291801 e!2284718)))

(declare-fun c!638154 () Bool)

(assert (=> d!1082926 (= c!638154 (and (is-Cons!39046 rules!3568) (is-Nil!39046 (t!301287 rules!3568))))))

(declare-fun lt!1291802 () Unit!57099)

(declare-fun lt!1291799 () Unit!57099)

(assert (=> d!1082926 (= lt!1291802 lt!1291799)))

(assert (=> d!1082926 (isPrefix!3250 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2037 (List!39169 List!39169) Unit!57099)

(assert (=> d!1082926 (= lt!1291799 (lemmaIsPrefixRefl!2037 input!3129 input!3129))))

(assert (=> d!1082926 (rulesValidInductive!2111 thiss!25197 rules!3568)))

(assert (=> d!1082926 (= (maxPrefix!3014 thiss!25197 rules!3568 input!3129) lt!1291801)))

(declare-fun b!3689608 () Bool)

(assert (=> b!3689608 (= e!2284718 call!266909)))

(declare-fun b!3689609 () Bool)

(declare-fun res!1499601 () Bool)

(assert (=> b!3689609 (=> (not res!1499601) (not e!2284720))))

(declare-fun apply!9369 (TokenValueInjection!11682 BalanceConc!23582) TokenValue!6127)

(assert (=> b!3689609 (= res!1499601 (= (value!188526 (_1!22615 (get!12949 lt!1291801))) (apply!9369 (transformation!5897 (rule!8745 (_1!22615 (get!12949 lt!1291801)))) (seqFromList!4446 (originalCharacters!6611 (_1!22615 (get!12949 lt!1291801)))))))))

(assert (= (and d!1082926 c!638154) b!3689608))

(assert (= (and d!1082926 (not c!638154)) b!3689607))

(assert (= (or b!3689608 b!3689607) bm!266904))

(assert (= (and d!1082926 (not res!1499596)) b!3689601))

(assert (= (and b!3689601 res!1499600) b!3689605))

(assert (= (and b!3689605 res!1499599) b!3689604))

(assert (= (and b!3689604 res!1499597) b!3689606))

(assert (= (and b!3689606 res!1499595) b!3689609))

(assert (= (and b!3689609 res!1499601) b!3689602))

(assert (= (and b!3689602 res!1499598) b!3689603))

(declare-fun m!4202039 () Bool)

(assert (=> d!1082926 m!4202039))

(declare-fun m!4202041 () Bool)

(assert (=> d!1082926 m!4202041))

(declare-fun m!4202043 () Bool)

(assert (=> d!1082926 m!4202043))

(assert (=> d!1082926 m!4201813))

(declare-fun m!4202045 () Bool)

(assert (=> b!3689603 m!4202045))

(declare-fun m!4202047 () Bool)

(assert (=> b!3689603 m!4202047))

(assert (=> b!3689609 m!4202045))

(declare-fun m!4202049 () Bool)

(assert (=> b!3689609 m!4202049))

(assert (=> b!3689609 m!4202049))

(declare-fun m!4202051 () Bool)

(assert (=> b!3689609 m!4202051))

(assert (=> b!3689604 m!4202045))

(declare-fun m!4202053 () Bool)

(assert (=> b!3689604 m!4202053))

(assert (=> b!3689604 m!4201967))

(declare-fun m!4202055 () Bool)

(assert (=> bm!266904 m!4202055))

(assert (=> b!3689605 m!4202045))

(declare-fun m!4202057 () Bool)

(assert (=> b!3689605 m!4202057))

(assert (=> b!3689605 m!4202057))

(declare-fun m!4202059 () Bool)

(assert (=> b!3689605 m!4202059))

(assert (=> b!3689602 m!4202045))

(assert (=> b!3689602 m!4202057))

(assert (=> b!3689602 m!4202057))

(assert (=> b!3689602 m!4202059))

(assert (=> b!3689602 m!4202059))

(declare-fun m!4202061 () Bool)

(assert (=> b!3689602 m!4202061))

(assert (=> b!3689606 m!4202045))

(assert (=> b!3689606 m!4202057))

(assert (=> b!3689606 m!4202057))

(assert (=> b!3689606 m!4202059))

(assert (=> b!3689606 m!4202059))

(declare-fun m!4202063 () Bool)

(assert (=> b!3689606 m!4202063))

(declare-fun m!4202065 () Bool)

(assert (=> b!3689601 m!4202065))

(declare-fun m!4202067 () Bool)

(assert (=> b!3689607 m!4202067))

(assert (=> b!3689377 d!1082926))

(declare-fun b!3689612 () Bool)

(declare-fun res!1499603 () Bool)

(declare-fun e!2284721 () Bool)

(assert (=> b!3689612 (=> (not res!1499603) (not e!2284721))))

(declare-fun lt!1291803 () List!39169)

(assert (=> b!3689612 (= res!1499603 (= (size!29843 lt!1291803) (+ (size!29843 lt!1291699) (size!29843 (_2!22615 lt!1291697)))))))

(declare-fun b!3689611 () Bool)

(declare-fun e!2284722 () List!39169)

(assert (=> b!3689611 (= e!2284722 (Cons!39045 (h!44465 lt!1291699) (++!9728 (t!301286 lt!1291699) (_2!22615 lt!1291697))))))

(declare-fun d!1082928 () Bool)

(assert (=> d!1082928 e!2284721))

(declare-fun res!1499602 () Bool)

(assert (=> d!1082928 (=> (not res!1499602) (not e!2284721))))

(assert (=> d!1082928 (= res!1499602 (= (content!5660 lt!1291803) (set.union (content!5660 lt!1291699) (content!5660 (_2!22615 lt!1291697)))))))

(assert (=> d!1082928 (= lt!1291803 e!2284722)))

(declare-fun c!638155 () Bool)

(assert (=> d!1082928 (= c!638155 (is-Nil!39045 lt!1291699))))

(assert (=> d!1082928 (= (++!9728 lt!1291699 (_2!22615 lt!1291697)) lt!1291803)))

(declare-fun b!3689613 () Bool)

(assert (=> b!3689613 (= e!2284721 (or (not (= (_2!22615 lt!1291697) Nil!39045)) (= lt!1291803 lt!1291699)))))

(declare-fun b!3689610 () Bool)

(assert (=> b!3689610 (= e!2284722 (_2!22615 lt!1291697))))

(assert (= (and d!1082928 c!638155) b!3689610))

(assert (= (and d!1082928 (not c!638155)) b!3689611))

(assert (= (and d!1082928 res!1499602) b!3689612))

(assert (= (and b!3689612 res!1499603) b!3689613))

(declare-fun m!4202069 () Bool)

(assert (=> b!3689612 m!4202069))

(assert (=> b!3689612 m!4201945))

(declare-fun m!4202071 () Bool)

(assert (=> b!3689612 m!4202071))

(declare-fun m!4202073 () Bool)

(assert (=> b!3689611 m!4202073))

(declare-fun m!4202075 () Bool)

(assert (=> d!1082928 m!4202075))

(declare-fun m!4202077 () Bool)

(assert (=> d!1082928 m!4202077))

(declare-fun m!4202079 () Bool)

(assert (=> d!1082928 m!4202079))

(assert (=> b!3689377 d!1082928))

(declare-fun d!1082930 () Bool)

(assert (=> d!1082930 (= (head!7965 (list!14589 (_1!22614 lt!1291703))) (h!44467 (list!14589 (_1!22614 lt!1291703))))))

(assert (=> b!3689377 d!1082930))

(declare-fun d!1082932 () Bool)

(assert (=> d!1082932 (= (isDefined!6602 lt!1291696) (not (isEmpty!23258 lt!1291696)))))

(declare-fun bs!574046 () Bool)

(assert (= bs!574046 d!1082932))

(declare-fun m!4202081 () Bool)

(assert (=> bs!574046 m!4202081))

(assert (=> b!3689377 d!1082932))

(declare-fun d!1082934 () Bool)

(declare-fun list!14593 (Conc!11985) List!39171)

(assert (=> d!1082934 (= (list!14589 (_1!22614 lt!1291703)) (list!14593 (c!638123 (_1!22614 lt!1291703))))))

(declare-fun bs!574047 () Bool)

(assert (= bs!574047 d!1082934))

(declare-fun m!4202083 () Bool)

(assert (=> bs!574047 m!4202083))

(assert (=> b!3689377 d!1082934))

(declare-fun b!3689617 () Bool)

(declare-fun e!2284723 () Bool)

(assert (=> b!3689617 (= e!2284723 (>= (size!29843 (++!9728 lt!1291699 (_2!22615 lt!1291697))) (size!29843 lt!1291699)))))

(declare-fun d!1082936 () Bool)

(assert (=> d!1082936 e!2284723))

(declare-fun res!1499606 () Bool)

(assert (=> d!1082936 (=> res!1499606 e!2284723)))

(declare-fun lt!1291804 () Bool)

(assert (=> d!1082936 (= res!1499606 (not lt!1291804))))

(declare-fun e!2284725 () Bool)

(assert (=> d!1082936 (= lt!1291804 e!2284725)))

(declare-fun res!1499607 () Bool)

(assert (=> d!1082936 (=> res!1499607 e!2284725)))

(assert (=> d!1082936 (= res!1499607 (is-Nil!39045 lt!1291699))))

(assert (=> d!1082936 (= (isPrefix!3250 lt!1291699 (++!9728 lt!1291699 (_2!22615 lt!1291697))) lt!1291804)))

(declare-fun b!3689614 () Bool)

(declare-fun e!2284724 () Bool)

(assert (=> b!3689614 (= e!2284725 e!2284724)))

(declare-fun res!1499604 () Bool)

(assert (=> b!3689614 (=> (not res!1499604) (not e!2284724))))

(assert (=> b!3689614 (= res!1499604 (not (is-Nil!39045 (++!9728 lt!1291699 (_2!22615 lt!1291697)))))))

(declare-fun b!3689615 () Bool)

(declare-fun res!1499605 () Bool)

(assert (=> b!3689615 (=> (not res!1499605) (not e!2284724))))

(assert (=> b!3689615 (= res!1499605 (= (head!7967 lt!1291699) (head!7967 (++!9728 lt!1291699 (_2!22615 lt!1291697)))))))

(declare-fun b!3689616 () Bool)

(assert (=> b!3689616 (= e!2284724 (isPrefix!3250 (tail!5712 lt!1291699) (tail!5712 (++!9728 lt!1291699 (_2!22615 lt!1291697)))))))

(assert (= (and d!1082936 (not res!1499607)) b!3689614))

(assert (= (and b!3689614 res!1499604) b!3689615))

(assert (= (and b!3689615 res!1499605) b!3689616))

(assert (= (and d!1082936 (not res!1499606)) b!3689617))

(assert (=> b!3689617 m!4201799))

(declare-fun m!4202085 () Bool)

(assert (=> b!3689617 m!4202085))

(assert (=> b!3689617 m!4201945))

(assert (=> b!3689615 m!4201947))

(assert (=> b!3689615 m!4201799))

(declare-fun m!4202087 () Bool)

(assert (=> b!3689615 m!4202087))

(assert (=> b!3689616 m!4201951))

(assert (=> b!3689616 m!4201799))

(declare-fun m!4202089 () Bool)

(assert (=> b!3689616 m!4202089))

(assert (=> b!3689616 m!4201951))

(assert (=> b!3689616 m!4202089))

(declare-fun m!4202091 () Bool)

(assert (=> b!3689616 m!4202091))

(assert (=> b!3689377 d!1082936))

(declare-fun d!1082938 () Bool)

(assert (=> d!1082938 (isPrefix!3250 lt!1291699 (++!9728 lt!1291699 (_2!22615 lt!1291697)))))

(declare-fun lt!1291807 () Unit!57099)

(declare-fun choose!22085 (List!39169 List!39169) Unit!57099)

(assert (=> d!1082938 (= lt!1291807 (choose!22085 lt!1291699 (_2!22615 lt!1291697)))))

(assert (=> d!1082938 (= (lemmaConcatTwoListThenFirstIsPrefix!2167 lt!1291699 (_2!22615 lt!1291697)) lt!1291807)))

(declare-fun bs!574048 () Bool)

(assert (= bs!574048 d!1082938))

(assert (=> bs!574048 m!4201799))

(assert (=> bs!574048 m!4201799))

(assert (=> bs!574048 m!4201803))

(declare-fun m!4202093 () Bool)

(assert (=> bs!574048 m!4202093))

(assert (=> b!3689377 d!1082938))

(declare-fun d!1082940 () Bool)

(declare-fun lt!1291810 () Bool)

(declare-fun isEmpty!23259 (List!39171) Bool)

(assert (=> d!1082940 (= lt!1291810 (isEmpty!23259 (list!14589 (_1!22614 lt!1291703))))))

(declare-fun isEmpty!23260 (Conc!11985) Bool)

(assert (=> d!1082940 (= lt!1291810 (isEmpty!23260 (c!638123 (_1!22614 lt!1291703))))))

(assert (=> d!1082940 (= (isEmpty!23252 (_1!22614 lt!1291703)) lt!1291810)))

(declare-fun bs!574049 () Bool)

(assert (= bs!574049 d!1082940))

(assert (=> bs!574049 m!4201787))

(assert (=> bs!574049 m!4201787))

(declare-fun m!4202095 () Bool)

(assert (=> bs!574049 m!4202095))

(declare-fun m!4202097 () Bool)

(assert (=> bs!574049 m!4202097))

(assert (=> b!3689372 d!1082940))

(declare-fun d!1082942 () Bool)

(declare-fun e!2284732 () Bool)

(assert (=> d!1082942 e!2284732))

(declare-fun res!1499616 () Bool)

(assert (=> d!1082942 (=> (not res!1499616) (not e!2284732))))

(declare-fun e!2284734 () Bool)

(assert (=> d!1082942 (= res!1499616 e!2284734)))

(declare-fun c!638158 () Bool)

(declare-fun lt!1291813 () tuple2!38960)

(declare-fun size!29844 (BalanceConc!23584) Int)

(assert (=> d!1082942 (= c!638158 (> (size!29844 (_1!22614 lt!1291813)) 0))))

(declare-fun lexTailRecV2!1143 (LexerInterface!5486 List!39170 BalanceConc!23582 BalanceConc!23582 BalanceConc!23582 BalanceConc!23584) tuple2!38960)

(assert (=> d!1082942 (= lt!1291813 (lexTailRecV2!1143 thiss!25197 rules!3568 (seqFromList!4446 input!3129) (BalanceConc!23583 Empty!11984) (seqFromList!4446 input!3129) (BalanceConc!23585 Empty!11985)))))

(assert (=> d!1082942 (= (lex!2627 thiss!25197 rules!3568 (seqFromList!4446 input!3129)) lt!1291813)))

(declare-fun b!3689628 () Bool)

(declare-fun e!2284733 () Bool)

(assert (=> b!3689628 (= e!2284733 (not (isEmpty!23252 (_1!22614 lt!1291813))))))

(declare-fun b!3689629 () Bool)

(assert (=> b!3689629 (= e!2284734 e!2284733)))

(declare-fun res!1499615 () Bool)

(declare-fun size!29845 (BalanceConc!23582) Int)

(assert (=> b!3689629 (= res!1499615 (< (size!29845 (_2!22614 lt!1291813)) (size!29845 (seqFromList!4446 input!3129))))))

(assert (=> b!3689629 (=> (not res!1499615) (not e!2284733))))

(declare-fun b!3689630 () Bool)

(declare-datatypes ((tuple2!38968 0))(
  ( (tuple2!38969 (_1!22618 List!39171) (_2!22618 List!39169)) )
))
(declare-fun lexList!1537 (LexerInterface!5486 List!39170 List!39169) tuple2!38968)

(assert (=> b!3689630 (= e!2284732 (= (list!14588 (_2!22614 lt!1291813)) (_2!22618 (lexList!1537 thiss!25197 rules!3568 (list!14588 (seqFromList!4446 input!3129))))))))

(declare-fun b!3689631 () Bool)

(declare-fun res!1499614 () Bool)

(assert (=> b!3689631 (=> (not res!1499614) (not e!2284732))))

(assert (=> b!3689631 (= res!1499614 (= (list!14589 (_1!22614 lt!1291813)) (_1!22618 (lexList!1537 thiss!25197 rules!3568 (list!14588 (seqFromList!4446 input!3129))))))))

(declare-fun b!3689632 () Bool)

(assert (=> b!3689632 (= e!2284734 (= (_2!22614 lt!1291813) (seqFromList!4446 input!3129)))))

(assert (= (and d!1082942 c!638158) b!3689629))

(assert (= (and d!1082942 (not c!638158)) b!3689632))

(assert (= (and b!3689629 res!1499615) b!3689628))

(assert (= (and d!1082942 res!1499616) b!3689631))

(assert (= (and b!3689631 res!1499614) b!3689630))

(declare-fun m!4202099 () Bool)

(assert (=> b!3689628 m!4202099))

(declare-fun m!4202101 () Bool)

(assert (=> b!3689630 m!4202101))

(assert (=> b!3689630 m!4201823))

(declare-fun m!4202103 () Bool)

(assert (=> b!3689630 m!4202103))

(assert (=> b!3689630 m!4202103))

(declare-fun m!4202105 () Bool)

(assert (=> b!3689630 m!4202105))

(declare-fun m!4202107 () Bool)

(assert (=> b!3689631 m!4202107))

(assert (=> b!3689631 m!4201823))

(assert (=> b!3689631 m!4202103))

(assert (=> b!3689631 m!4202103))

(assert (=> b!3689631 m!4202105))

(declare-fun m!4202109 () Bool)

(assert (=> b!3689629 m!4202109))

(assert (=> b!3689629 m!4201823))

(declare-fun m!4202111 () Bool)

(assert (=> b!3689629 m!4202111))

(declare-fun m!4202113 () Bool)

(assert (=> d!1082942 m!4202113))

(assert (=> d!1082942 m!4201823))

(assert (=> d!1082942 m!4201823))

(declare-fun m!4202115 () Bool)

(assert (=> d!1082942 m!4202115))

(assert (=> b!3689372 d!1082942))

(declare-fun d!1082944 () Bool)

(declare-fun fromListB!2053 (List!39169) BalanceConc!23582)

(assert (=> d!1082944 (= (seqFromList!4446 input!3129) (fromListB!2053 input!3129))))

(declare-fun bs!574050 () Bool)

(assert (= bs!574050 d!1082944))

(declare-fun m!4202117 () Bool)

(assert (=> bs!574050 m!4202117))

(assert (=> b!3689372 d!1082944))

(declare-fun d!1082946 () Bool)

(assert (=> d!1082946 (= (isEmpty!23253 (maxPrefix!3014 thiss!25197 rules!3568 lt!1291698)) (not (is-Some!8405 (maxPrefix!3014 thiss!25197 rules!3568 lt!1291698))))))

(assert (=> b!3689378 d!1082946))

(declare-fun b!3689633 () Bool)

(declare-fun e!2284736 () Bool)

(declare-fun e!2284737 () Bool)

(assert (=> b!3689633 (= e!2284736 e!2284737)))

(declare-fun res!1499622 () Bool)

(assert (=> b!3689633 (=> (not res!1499622) (not e!2284737))))

(declare-fun lt!1291817 () Option!8406)

(assert (=> b!3689633 (= res!1499622 (isDefined!6604 lt!1291817))))

(declare-fun b!3689634 () Bool)

(declare-fun res!1499620 () Bool)

(assert (=> b!3689634 (=> (not res!1499620) (not e!2284737))))

(assert (=> b!3689634 (= res!1499620 (matchR!5211 (regex!5897 (rule!8745 (_1!22615 (get!12949 lt!1291817)))) (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291817))))))))

(declare-fun b!3689635 () Bool)

(assert (=> b!3689635 (= e!2284737 (contains!7798 rules!3568 (rule!8745 (_1!22615 (get!12949 lt!1291817)))))))

(declare-fun bm!266905 () Bool)

(declare-fun call!266910 () Option!8406)

(assert (=> bm!266905 (= call!266910 (maxPrefixOneRule!2132 thiss!25197 (h!44466 rules!3568) lt!1291698))))

(declare-fun b!3689636 () Bool)

(declare-fun res!1499619 () Bool)

(assert (=> b!3689636 (=> (not res!1499619) (not e!2284737))))

(assert (=> b!3689636 (= res!1499619 (< (size!29843 (_2!22615 (get!12949 lt!1291817))) (size!29843 lt!1291698)))))

(declare-fun b!3689637 () Bool)

(declare-fun res!1499621 () Bool)

(assert (=> b!3689637 (=> (not res!1499621) (not e!2284737))))

(assert (=> b!3689637 (= res!1499621 (= (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291817)))) (originalCharacters!6611 (_1!22615 (get!12949 lt!1291817)))))))

(declare-fun b!3689638 () Bool)

(declare-fun res!1499617 () Bool)

(assert (=> b!3689638 (=> (not res!1499617) (not e!2284737))))

(assert (=> b!3689638 (= res!1499617 (= (++!9728 (list!14588 (charsOf!3908 (_1!22615 (get!12949 lt!1291817)))) (_2!22615 (get!12949 lt!1291817))) lt!1291698))))

(declare-fun b!3689639 () Bool)

(declare-fun e!2284735 () Option!8406)

(declare-fun lt!1291816 () Option!8406)

(declare-fun lt!1291814 () Option!8406)

(assert (=> b!3689639 (= e!2284735 (ite (and (is-None!8405 lt!1291816) (is-None!8405 lt!1291814)) None!8405 (ite (is-None!8405 lt!1291814) lt!1291816 (ite (is-None!8405 lt!1291816) lt!1291814 (ite (>= (size!29841 (_1!22615 (v!38357 lt!1291816))) (size!29841 (_1!22615 (v!38357 lt!1291814)))) lt!1291816 lt!1291814)))))))

(assert (=> b!3689639 (= lt!1291816 call!266910)))

(assert (=> b!3689639 (= lt!1291814 (maxPrefix!3014 thiss!25197 (t!301287 rules!3568) lt!1291698))))

(declare-fun d!1082948 () Bool)

(assert (=> d!1082948 e!2284736))

(declare-fun res!1499618 () Bool)

(assert (=> d!1082948 (=> res!1499618 e!2284736)))

(assert (=> d!1082948 (= res!1499618 (isEmpty!23253 lt!1291817))))

(assert (=> d!1082948 (= lt!1291817 e!2284735)))

(declare-fun c!638159 () Bool)

(assert (=> d!1082948 (= c!638159 (and (is-Cons!39046 rules!3568) (is-Nil!39046 (t!301287 rules!3568))))))

(declare-fun lt!1291818 () Unit!57099)

(declare-fun lt!1291815 () Unit!57099)

(assert (=> d!1082948 (= lt!1291818 lt!1291815)))

(assert (=> d!1082948 (isPrefix!3250 lt!1291698 lt!1291698)))

(assert (=> d!1082948 (= lt!1291815 (lemmaIsPrefixRefl!2037 lt!1291698 lt!1291698))))

(assert (=> d!1082948 (rulesValidInductive!2111 thiss!25197 rules!3568)))

(assert (=> d!1082948 (= (maxPrefix!3014 thiss!25197 rules!3568 lt!1291698) lt!1291817)))

(declare-fun b!3689640 () Bool)

(assert (=> b!3689640 (= e!2284735 call!266910)))

(declare-fun b!3689641 () Bool)

(declare-fun res!1499623 () Bool)

(assert (=> b!3689641 (=> (not res!1499623) (not e!2284737))))

(assert (=> b!3689641 (= res!1499623 (= (value!188526 (_1!22615 (get!12949 lt!1291817))) (apply!9369 (transformation!5897 (rule!8745 (_1!22615 (get!12949 lt!1291817)))) (seqFromList!4446 (originalCharacters!6611 (_1!22615 (get!12949 lt!1291817)))))))))

(assert (= (and d!1082948 c!638159) b!3689640))

(assert (= (and d!1082948 (not c!638159)) b!3689639))

(assert (= (or b!3689640 b!3689639) bm!266905))

(assert (= (and d!1082948 (not res!1499618)) b!3689633))

(assert (= (and b!3689633 res!1499622) b!3689637))

(assert (= (and b!3689637 res!1499621) b!3689636))

(assert (= (and b!3689636 res!1499619) b!3689638))

(assert (= (and b!3689638 res!1499617) b!3689641))

(assert (= (and b!3689641 res!1499623) b!3689634))

(assert (= (and b!3689634 res!1499620) b!3689635))

(declare-fun m!4202119 () Bool)

(assert (=> d!1082948 m!4202119))

(declare-fun m!4202121 () Bool)

(assert (=> d!1082948 m!4202121))

(declare-fun m!4202123 () Bool)

(assert (=> d!1082948 m!4202123))

(assert (=> d!1082948 m!4201813))

(declare-fun m!4202125 () Bool)

(assert (=> b!3689635 m!4202125))

(declare-fun m!4202127 () Bool)

(assert (=> b!3689635 m!4202127))

(assert (=> b!3689641 m!4202125))

(declare-fun m!4202129 () Bool)

(assert (=> b!3689641 m!4202129))

(assert (=> b!3689641 m!4202129))

(declare-fun m!4202131 () Bool)

(assert (=> b!3689641 m!4202131))

(assert (=> b!3689636 m!4202125))

(declare-fun m!4202133 () Bool)

(assert (=> b!3689636 m!4202133))

(assert (=> b!3689636 m!4201943))

(declare-fun m!4202135 () Bool)

(assert (=> bm!266905 m!4202135))

(assert (=> b!3689637 m!4202125))

(declare-fun m!4202137 () Bool)

(assert (=> b!3689637 m!4202137))

(assert (=> b!3689637 m!4202137))

(declare-fun m!4202139 () Bool)

(assert (=> b!3689637 m!4202139))

(assert (=> b!3689634 m!4202125))

(assert (=> b!3689634 m!4202137))

(assert (=> b!3689634 m!4202137))

(assert (=> b!3689634 m!4202139))

(assert (=> b!3689634 m!4202139))

(declare-fun m!4202141 () Bool)

(assert (=> b!3689634 m!4202141))

(assert (=> b!3689638 m!4202125))

(assert (=> b!3689638 m!4202137))

(assert (=> b!3689638 m!4202137))

(assert (=> b!3689638 m!4202139))

(assert (=> b!3689638 m!4202139))

(declare-fun m!4202143 () Bool)

(assert (=> b!3689638 m!4202143))

(declare-fun m!4202145 () Bool)

(assert (=> b!3689633 m!4202145))

(declare-fun m!4202147 () Bool)

(assert (=> b!3689639 m!4202147))

(assert (=> b!3689378 d!1082948))

(declare-fun b!3689642 () Bool)

(declare-fun e!2284744 () Bool)

(assert (=> b!3689642 (= e!2284744 (nullable!3716 (regex!5897 lt!1291695)))))

(declare-fun d!1082950 () Bool)

(declare-fun e!2284740 () Bool)

(assert (=> d!1082950 e!2284740))

(declare-fun c!638162 () Bool)

(assert (=> d!1082950 (= c!638162 (is-EmptyExpr!10656 (regex!5897 lt!1291695)))))

(declare-fun lt!1291819 () Bool)

(assert (=> d!1082950 (= lt!1291819 e!2284744)))

(declare-fun c!638161 () Bool)

(assert (=> d!1082950 (= c!638161 (isEmpty!23257 lt!1291699))))

(assert (=> d!1082950 (validRegex!4878 (regex!5897 lt!1291695))))

(assert (=> d!1082950 (= (matchR!5211 (regex!5897 lt!1291695) lt!1291699) lt!1291819)))

(declare-fun b!3689643 () Bool)

(declare-fun e!2284739 () Bool)

(assert (=> b!3689643 (= e!2284739 (not (= (head!7967 lt!1291699) (c!638121 (regex!5897 lt!1291695)))))))

(declare-fun b!3689644 () Bool)

(declare-fun e!2284743 () Bool)

(assert (=> b!3689644 (= e!2284740 e!2284743)))

(declare-fun c!638160 () Bool)

(assert (=> b!3689644 (= c!638160 (is-EmptyLang!10656 (regex!5897 lt!1291695)))))

(declare-fun bm!266906 () Bool)

(declare-fun call!266911 () Bool)

(assert (=> bm!266906 (= call!266911 (isEmpty!23257 lt!1291699))))

(declare-fun b!3689645 () Bool)

(declare-fun res!1499631 () Bool)

(declare-fun e!2284741 () Bool)

(assert (=> b!3689645 (=> res!1499631 e!2284741)))

(declare-fun e!2284738 () Bool)

(assert (=> b!3689645 (= res!1499631 e!2284738)))

(declare-fun res!1499624 () Bool)

(assert (=> b!3689645 (=> (not res!1499624) (not e!2284738))))

(assert (=> b!3689645 (= res!1499624 lt!1291819)))

(declare-fun b!3689646 () Bool)

(assert (=> b!3689646 (= e!2284740 (= lt!1291819 call!266911))))

(declare-fun b!3689647 () Bool)

(declare-fun res!1499629 () Bool)

(assert (=> b!3689647 (=> res!1499629 e!2284739)))

(assert (=> b!3689647 (= res!1499629 (not (isEmpty!23257 (tail!5712 lt!1291699))))))

(declare-fun b!3689648 () Bool)

(declare-fun res!1499627 () Bool)

(assert (=> b!3689648 (=> (not res!1499627) (not e!2284738))))

(assert (=> b!3689648 (= res!1499627 (isEmpty!23257 (tail!5712 lt!1291699)))))

(declare-fun b!3689649 () Bool)

(assert (=> b!3689649 (= e!2284738 (= (head!7967 lt!1291699) (c!638121 (regex!5897 lt!1291695))))))

(declare-fun b!3689650 () Bool)

(assert (=> b!3689650 (= e!2284743 (not lt!1291819))))

(declare-fun b!3689651 () Bool)

(declare-fun res!1499625 () Bool)

(assert (=> b!3689651 (=> res!1499625 e!2284741)))

(assert (=> b!3689651 (= res!1499625 (not (is-ElementMatch!10656 (regex!5897 lt!1291695))))))

(assert (=> b!3689651 (= e!2284743 e!2284741)))

(declare-fun b!3689652 () Bool)

(assert (=> b!3689652 (= e!2284744 (matchR!5211 (derivativeStep!3262 (regex!5897 lt!1291695) (head!7967 lt!1291699)) (tail!5712 lt!1291699)))))

(declare-fun b!3689653 () Bool)

(declare-fun e!2284742 () Bool)

(assert (=> b!3689653 (= e!2284741 e!2284742)))

(declare-fun res!1499628 () Bool)

(assert (=> b!3689653 (=> (not res!1499628) (not e!2284742))))

(assert (=> b!3689653 (= res!1499628 (not lt!1291819))))

(declare-fun b!3689654 () Bool)

(declare-fun res!1499630 () Bool)

(assert (=> b!3689654 (=> (not res!1499630) (not e!2284738))))

(assert (=> b!3689654 (= res!1499630 (not call!266911))))

(declare-fun b!3689655 () Bool)

(assert (=> b!3689655 (= e!2284742 e!2284739)))

(declare-fun res!1499626 () Bool)

(assert (=> b!3689655 (=> res!1499626 e!2284739)))

(assert (=> b!3689655 (= res!1499626 call!266911)))

(assert (= (and d!1082950 c!638161) b!3689642))

(assert (= (and d!1082950 (not c!638161)) b!3689652))

(assert (= (and d!1082950 c!638162) b!3689646))

(assert (= (and d!1082950 (not c!638162)) b!3689644))

(assert (= (and b!3689644 c!638160) b!3689650))

(assert (= (and b!3689644 (not c!638160)) b!3689651))

(assert (= (and b!3689651 (not res!1499625)) b!3689645))

(assert (= (and b!3689645 res!1499624) b!3689654))

(assert (= (and b!3689654 res!1499630) b!3689648))

(assert (= (and b!3689648 res!1499627) b!3689649))

(assert (= (and b!3689645 (not res!1499631)) b!3689653))

(assert (= (and b!3689653 res!1499628) b!3689655))

(assert (= (and b!3689655 (not res!1499626)) b!3689647))

(assert (= (and b!3689647 (not res!1499629)) b!3689643))

(assert (= (or b!3689646 b!3689654 b!3689655) bm!266906))

(assert (=> b!3689652 m!4201947))

(assert (=> b!3689652 m!4201947))

(declare-fun m!4202149 () Bool)

(assert (=> b!3689652 m!4202149))

(assert (=> b!3689652 m!4201951))

(assert (=> b!3689652 m!4202149))

(assert (=> b!3689652 m!4201951))

(declare-fun m!4202151 () Bool)

(assert (=> b!3689652 m!4202151))

(assert (=> b!3689643 m!4201947))

(assert (=> b!3689649 m!4201947))

(declare-fun m!4202153 () Bool)

(assert (=> b!3689642 m!4202153))

(assert (=> d!1082950 m!4201985))

(declare-fun m!4202155 () Bool)

(assert (=> d!1082950 m!4202155))

(assert (=> b!3689647 m!4201951))

(assert (=> b!3689647 m!4201951))

(assert (=> b!3689647 m!4201989))

(assert (=> bm!266906 m!4201985))

(assert (=> b!3689648 m!4201951))

(assert (=> b!3689648 m!4201951))

(assert (=> b!3689648 m!4201989))

(assert (=> b!3689379 d!1082950))

(declare-fun d!1082952 () Bool)

(assert (=> d!1082952 (= (get!12950 lt!1291696) (v!38356 lt!1291696))))

(assert (=> b!3689379 d!1082952))

(declare-fun d!1082954 () Bool)

(declare-fun lt!1291822 () Bool)

(declare-fun content!5661 (List!39170) (Set Rule!11594))

(assert (=> d!1082954 (= lt!1291822 (set.member (rule!8745 lt!1291704) (content!5661 rules!3568)))))

(declare-fun e!2284749 () Bool)

(assert (=> d!1082954 (= lt!1291822 e!2284749)))

(declare-fun res!1499636 () Bool)

(assert (=> d!1082954 (=> (not res!1499636) (not e!2284749))))

(assert (=> d!1082954 (= res!1499636 (is-Cons!39046 rules!3568))))

(assert (=> d!1082954 (= (contains!7798 rules!3568 (rule!8745 lt!1291704)) lt!1291822)))

(declare-fun b!3689660 () Bool)

(declare-fun e!2284750 () Bool)

(assert (=> b!3689660 (= e!2284749 e!2284750)))

(declare-fun res!1499637 () Bool)

(assert (=> b!3689660 (=> res!1499637 e!2284750)))

(assert (=> b!3689660 (= res!1499637 (= (h!44466 rules!3568) (rule!8745 lt!1291704)))))

(declare-fun b!3689661 () Bool)

(assert (=> b!3689661 (= e!2284750 (contains!7798 (t!301287 rules!3568) (rule!8745 lt!1291704)))))

(assert (= (and d!1082954 res!1499636) b!3689660))

(assert (= (and b!3689660 (not res!1499637)) b!3689661))

(declare-fun m!4202157 () Bool)

(assert (=> d!1082954 m!4202157))

(declare-fun m!4202159 () Bool)

(assert (=> d!1082954 m!4202159))

(declare-fun m!4202161 () Bool)

(assert (=> b!3689661 m!4202161))

(assert (=> b!3689374 d!1082954))

(declare-fun d!1082956 () Bool)

(assert (=> d!1082956 (= (isEmpty!23251 rules!3568) (is-Nil!39046 rules!3568))))

(assert (=> b!3689369 d!1082956))

(declare-fun b!3689666 () Bool)

(declare-fun e!2284753 () Bool)

(declare-fun tp!1121212 () Bool)

(assert (=> b!3689666 (= e!2284753 (and tp_is_empty!18395 tp!1121212))))

(assert (=> b!3689380 (= tp!1121187 e!2284753)))

(assert (= (and b!3689380 (is-Cons!39045 (t!301286 suffix!1448))) b!3689666))

(declare-fun b!3689677 () Bool)

(declare-fun b_free!97897 () Bool)

(declare-fun b_next!98601 () Bool)

(assert (=> b!3689677 (= b_free!97897 (not b_next!98601))))

(declare-fun tp!1121221 () Bool)

(declare-fun b_and!275649 () Bool)

(assert (=> b!3689677 (= tp!1121221 b_and!275649)))

(declare-fun b_free!97899 () Bool)

(declare-fun b_next!98603 () Bool)

(assert (=> b!3689677 (= b_free!97899 (not b_next!98603))))

(declare-fun tb!213839 () Bool)

(declare-fun t!301296 () Bool)

(assert (=> (and b!3689677 (= (toChars!8076 (transformation!5897 (h!44466 (t!301287 rules!3568)))) (toChars!8076 (transformation!5897 (rule!8745 lt!1291704)))) t!301296) tb!213839))

(declare-fun result!260322 () Bool)

(assert (= result!260322 result!260314))

(assert (=> d!1082900 t!301296))

(declare-fun b_and!275651 () Bool)

(declare-fun tp!1121224 () Bool)

(assert (=> b!3689677 (= tp!1121224 (and (=> t!301296 result!260322) b_and!275651))))

(declare-fun e!2284762 () Bool)

(assert (=> b!3689677 (= e!2284762 (and tp!1121221 tp!1121224))))

(declare-fun e!2284765 () Bool)

(declare-fun b!3689676 () Bool)

(declare-fun tp!1121223 () Bool)

(assert (=> b!3689676 (= e!2284765 (and tp!1121223 (inv!52516 (tag!6711 (h!44466 (t!301287 rules!3568)))) (inv!52519 (transformation!5897 (h!44466 (t!301287 rules!3568)))) e!2284762))))

(declare-fun b!3689675 () Bool)

(declare-fun e!2284763 () Bool)

(declare-fun tp!1121222 () Bool)

(assert (=> b!3689675 (= e!2284763 (and e!2284765 tp!1121222))))

(assert (=> b!3689381 (= tp!1121184 e!2284763)))

(assert (= b!3689676 b!3689677))

(assert (= b!3689675 b!3689676))

(assert (= (and b!3689381 (is-Cons!39046 (t!301287 rules!3568))) b!3689675))

(declare-fun m!4202163 () Bool)

(assert (=> b!3689676 m!4202163))

(declare-fun m!4202165 () Bool)

(assert (=> b!3689676 m!4202165))

(declare-fun e!2284768 () Bool)

(assert (=> b!3689376 (= tp!1121183 e!2284768)))

(declare-fun b!3689689 () Bool)

(declare-fun tp!1121236 () Bool)

(declare-fun tp!1121239 () Bool)

(assert (=> b!3689689 (= e!2284768 (and tp!1121236 tp!1121239))))

(declare-fun b!3689688 () Bool)

(assert (=> b!3689688 (= e!2284768 tp_is_empty!18395)))

(declare-fun b!3689691 () Bool)

(declare-fun tp!1121237 () Bool)

(declare-fun tp!1121238 () Bool)

(assert (=> b!3689691 (= e!2284768 (and tp!1121237 tp!1121238))))

(declare-fun b!3689690 () Bool)

(declare-fun tp!1121235 () Bool)

(assert (=> b!3689690 (= e!2284768 tp!1121235)))

(assert (= (and b!3689376 (is-ElementMatch!10656 (regex!5897 (h!44466 rules!3568)))) b!3689688))

(assert (= (and b!3689376 (is-Concat!16784 (regex!5897 (h!44466 rules!3568)))) b!3689689))

(assert (= (and b!3689376 (is-Star!10656 (regex!5897 (h!44466 rules!3568)))) b!3689690))

(assert (= (and b!3689376 (is-Union!10656 (regex!5897 (h!44466 rules!3568)))) b!3689691))

(declare-fun b!3689692 () Bool)

(declare-fun e!2284769 () Bool)

(declare-fun tp!1121240 () Bool)

(assert (=> b!3689692 (= e!2284769 (and tp_is_empty!18395 tp!1121240))))

(assert (=> b!3689382 (= tp!1121188 e!2284769)))

(assert (= (and b!3689382 (is-Cons!39045 (t!301286 input!3129))) b!3689692))

(push 1)

(assert (not d!1082886))

(assert (not d!1082910))

(assert (not b!3689577))

(assert (not b!3689641))

(assert (not bm!266906))

(assert (not b!3689648))

(assert (not d!1082938))

(assert (not b!3689609))

(assert (not b!3689602))

(assert (not b!3689540))

(assert (not b!3689475))

(assert (not b!3689430))

(assert (not b!3689603))

(assert (not b_next!98601))

(assert (not bm!266900))

(assert (not b!3689637))

(assert (not b!3689628))

(assert (not b!3689535))

(assert (not b!3689607))

(assert (not b!3689487))

(assert (not d!1082944))

(assert (not b!3689634))

(assert (not b!3689643))

(assert (not b!3689675))

(assert (not d!1082940))

(assert (not b!3689649))

(assert (not b!3689666))

(assert (not b!3689578))

(assert (not b_lambda!109499))

(assert (not d!1082942))

(assert (not d!1082890))

(assert (not b!3689450))

(assert (not b!3689605))

(assert (not b!3689611))

(assert (not b!3689615))

(assert (not b!3689690))

(assert (not d!1082926))

(assert (not b!3689639))

(assert b_and!275647)

(assert (not b!3689636))

(assert (not b_next!98595))

(assert (not b!3689642))

(assert (not d!1082928))

(assert (not b!3689652))

(assert (not b!3689606))

(assert (not b!3689691))

(assert (not b!3689647))

(assert (not b!3689604))

(assert (not tb!213837))

(assert (not b_next!98593))

(assert (not b!3689638))

(assert (not b!3689427))

(assert (not b!3689451))

(assert (not b!3689617))

(assert (not b!3689676))

(assert (not d!1082918))

(assert (not b!3689545))

(assert (not b!3689580))

(assert (not b!3689601))

(assert (not b!3689612))

(assert (not d!1082934))

(assert (not b!3689542))

(assert b_and!275639)

(assert b_and!275651)

(assert (not b!3689541))

(assert (not b!3689458))

(assert (not d!1082892))

(assert (not d!1082900))

(assert (not d!1082950))

(assert (not b!3689629))

(assert (not b!3689689))

(assert (not b!3689470))

(assert b_and!275649)

(assert (not d!1082916))

(assert (not b!3689631))

(assert (not b!3689469))

(assert (not b!3689468))

(assert (not bm!266904))

(assert (not b!3689661))

(assert (not b!3689476))

(assert (not b!3689635))

(assert (not d!1082932))

(assert (not d!1082954))

(assert (not b!3689633))

(assert (not b!3689630))

(assert (not b_next!98603))

(assert (not d!1082908))

(assert (not d!1082914))

(assert (not b!3689692))

(assert tp_is_empty!18395)

(assert (not b!3689616))

(assert (not d!1082920))

(assert (not b!3689486))

(assert (not d!1082948))

(assert (not b!3689536))

(assert (not bm!266905))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98601))

(assert (not b_next!98593))

(assert b_and!275649)

(assert (not b_next!98603))

(assert b_and!275647)

(assert (not b_next!98595))

(assert b_and!275639)

(assert b_and!275651)

(check-sat)

(pop 1)

