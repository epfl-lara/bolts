; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347328 () Bool)

(assert start!347328)

(declare-fun b!3691085 () Bool)

(declare-fun b_free!97945 () Bool)

(declare-fun b_next!98649 () Bool)

(assert (=> b!3691085 (= b_free!97945 (not b_next!98649))))

(declare-fun tp!1121535 () Bool)

(declare-fun b_and!275707 () Bool)

(assert (=> b!3691085 (= tp!1121535 b_and!275707)))

(declare-fun b_free!97947 () Bool)

(declare-fun b_next!98651 () Bool)

(assert (=> b!3691085 (= b_free!97947 (not b_next!98651))))

(declare-fun tp!1121534 () Bool)

(declare-fun b_and!275709 () Bool)

(assert (=> b!3691085 (= tp!1121534 b_and!275709)))

(declare-fun b!3691081 () Bool)

(declare-fun e!2285606 () Bool)

(declare-fun e!2285610 () Bool)

(assert (=> b!3691081 (= e!2285606 e!2285610)))

(declare-fun res!1500462 () Bool)

(assert (=> b!3691081 (=> (not res!1500462) (not e!2285610))))

(declare-datatypes ((List!39205 0))(
  ( (Nil!39081) (Cons!39081 (h!44501 (_ BitVec 16)) (t!301346 List!39205)) )
))
(declare-datatypes ((TokenValue!6135 0))(
  ( (FloatLiteralValue!12270 (text!43390 List!39205)) (TokenValueExt!6134 (__x!24487 Int)) (Broken!30675 (value!188728 List!39205)) (Object!6258) (End!6135) (Def!6135) (Underscore!6135) (Match!6135) (Else!6135) (Error!6135) (Case!6135) (If!6135) (Extends!6135) (Abstract!6135) (Class!6135) (Val!6135) (DelimiterValue!12270 (del!6195 List!39205)) (KeywordValue!6141 (value!188729 List!39205)) (CommentValue!12270 (value!188730 List!39205)) (WhitespaceValue!12270 (value!188731 List!39205)) (IndentationValue!6135 (value!188732 List!39205)) (String!44010) (Int32!6135) (Broken!30676 (value!188733 List!39205)) (Boolean!6136) (Unit!57122) (OperatorValue!6138 (op!6195 List!39205)) (IdentifierValue!12270 (value!188734 List!39205)) (IdentifierValue!12271 (value!188735 List!39205)) (WhitespaceValue!12271 (value!188736 List!39205)) (True!12270) (False!12270) (Broken!30677 (value!188737 List!39205)) (Broken!30678 (value!188738 List!39205)) (True!12271) (RightBrace!6135) (RightBracket!6135) (Colon!6135) (Null!6135) (Comma!6135) (LeftBracket!6135) (False!12271) (LeftBrace!6135) (ImaginaryLiteralValue!6135 (text!43391 List!39205)) (StringLiteralValue!18405 (value!188739 List!39205)) (EOFValue!6135 (value!188740 List!39205)) (IdentValue!6135 (value!188741 List!39205)) (DelimiterValue!12271 (value!188742 List!39205)) (DedentValue!6135 (value!188743 List!39205)) (NewLineValue!6135 (value!188744 List!39205)) (IntegerValue!18405 (value!188745 (_ BitVec 32)) (text!43392 List!39205)) (IntegerValue!18406 (value!188746 Int) (text!43393 List!39205)) (Times!6135) (Or!6135) (Equal!6135) (Minus!6135) (Broken!30679 (value!188747 List!39205)) (And!6135) (Div!6135) (LessEqual!6135) (Mod!6135) (Concat!16799) (Not!6135) (Plus!6135) (SpaceValue!6135 (value!188748 List!39205)) (IntegerValue!18407 (value!188749 Int) (text!43394 List!39205)) (StringLiteralValue!18406 (text!43395 List!39205)) (FloatLiteralValue!12271 (text!43396 List!39205)) (BytesLiteralValue!6135 (value!188750 List!39205)) (CommentValue!12271 (value!188751 List!39205)) (StringLiteralValue!18407 (value!188752 List!39205)) (ErrorTokenValue!6135 (msg!6196 List!39205)) )
))
(declare-datatypes ((C!21514 0))(
  ( (C!21515 (val!12805 Int)) )
))
(declare-datatypes ((Regex!10664 0))(
  ( (ElementMatch!10664 (c!638339 C!21514)) (Concat!16800 (regOne!21840 Regex!10664) (regTwo!21840 Regex!10664)) (EmptyExpr!10664) (Star!10664 (reg!10993 Regex!10664)) (EmptyLang!10664) (Union!10664 (regOne!21841 Regex!10664) (regTwo!21841 Regex!10664)) )
))
(declare-datatypes ((String!44011 0))(
  ( (String!44012 (value!188753 String)) )
))
(declare-datatypes ((List!39206 0))(
  ( (Nil!39082) (Cons!39082 (h!44502 C!21514) (t!301347 List!39206)) )
))
(declare-datatypes ((IArray!24005 0))(
  ( (IArray!24006 (innerList!12060 List!39206)) )
))
(declare-datatypes ((Conc!12000 0))(
  ( (Node!12000 (left!30483 Conc!12000) (right!30813 Conc!12000) (csize!24230 Int) (cheight!12211 Int)) (Leaf!18564 (xs!15202 IArray!24005) (csize!24231 Int)) (Empty!12000) )
))
(declare-datatypes ((BalanceConc!23614 0))(
  ( (BalanceConc!23615 (c!638340 Conc!12000)) )
))
(declare-datatypes ((TokenValueInjection!11698 0))(
  ( (TokenValueInjection!11699 (toValue!8225 Int) (toChars!8084 Int)) )
))
(declare-datatypes ((Rule!11610 0))(
  ( (Rule!11611 (regex!5905 Regex!10664) (tag!6725 String!44011) (isSeparator!5905 Bool) (transformation!5905 TokenValueInjection!11698)) )
))
(declare-datatypes ((Token!11176 0))(
  ( (Token!11177 (value!188754 TokenValue!6135) (rule!8757 Rule!11610) (size!29865 Int) (originalCharacters!6619 List!39206)) )
))
(declare-datatypes ((List!39207 0))(
  ( (Nil!39083) (Cons!39083 (h!44503 Token!11176) (t!301348 List!39207)) )
))
(declare-datatypes ((IArray!24007 0))(
  ( (IArray!24008 (innerList!12061 List!39207)) )
))
(declare-datatypes ((Conc!12001 0))(
  ( (Node!12001 (left!30484 Conc!12001) (right!30814 Conc!12001) (csize!24232 Int) (cheight!12212 Int)) (Leaf!18565 (xs!15203 IArray!24007) (csize!24233 Int)) (Empty!12001) )
))
(declare-datatypes ((BalanceConc!23616 0))(
  ( (BalanceConc!23617 (c!638341 Conc!12001)) )
))
(declare-datatypes ((tuple2!39008 0))(
  ( (tuple2!39009 (_1!22638 BalanceConc!23616) (_2!22638 BalanceConc!23614)) )
))
(declare-fun lt!1292403 () tuple2!39008)

(declare-fun isEmpty!23297 (BalanceConc!23616) Bool)

(assert (=> b!3691081 (= res!1500462 (not (isEmpty!23297 (_1!22638 lt!1292403))))))

(declare-datatypes ((LexerInterface!5494 0))(
  ( (LexerInterfaceExt!5491 (__x!24488 Int)) (Lexer!5492) )
))
(declare-fun thiss!25197 () LexerInterface!5494)

(declare-fun input!3129 () List!39206)

(declare-datatypes ((List!39208 0))(
  ( (Nil!39084) (Cons!39084 (h!44504 Rule!11610) (t!301349 List!39208)) )
))
(declare-fun rules!3568 () List!39208)

(declare-fun lex!2635 (LexerInterface!5494 List!39208 BalanceConc!23614) tuple2!39008)

(declare-fun seqFromList!4454 (List!39206) BalanceConc!23614)

(assert (=> b!3691081 (= lt!1292403 (lex!2635 thiss!25197 rules!3568 (seqFromList!4454 input!3129)))))

(declare-fun b!3691082 () Bool)

(declare-fun res!1500458 () Bool)

(assert (=> b!3691082 (=> (not res!1500458) (not e!2285606))))

(declare-fun rulesInvariant!4891 (LexerInterface!5494 List!39208) Bool)

(assert (=> b!3691082 (= res!1500458 (rulesInvariant!4891 thiss!25197 rules!3568))))

(declare-fun b!3691083 () Bool)

(declare-fun e!2285605 () Bool)

(assert (=> b!3691083 (= e!2285610 (not e!2285605))))

(declare-fun res!1500461 () Bool)

(assert (=> b!3691083 (=> res!1500461 e!2285605)))

(declare-fun lt!1292402 () Token!11176)

(declare-fun lt!1292408 () List!39206)

(declare-fun matchR!5219 (Regex!10664 List!39206) Bool)

(assert (=> b!3691083 (= res!1500461 (not (matchR!5219 (regex!5905 (rule!8757 lt!1292402)) lt!1292408)))))

(declare-fun e!2285613 () Bool)

(assert (=> b!3691083 e!2285613))

(declare-fun res!1500460 () Bool)

(assert (=> b!3691083 (=> (not res!1500460) (not e!2285613))))

(declare-datatypes ((Option!8421 0))(
  ( (None!8420) (Some!8420 (v!38374 Rule!11610)) )
))
(declare-fun lt!1292400 () Option!8421)

(declare-fun isDefined!6616 (Option!8421) Bool)

(assert (=> b!3691083 (= res!1500460 (isDefined!6616 lt!1292400))))

(declare-fun getRuleFromTag!1487 (LexerInterface!5494 List!39208 String!44011) Option!8421)

(assert (=> b!3691083 (= lt!1292400 (getRuleFromTag!1487 thiss!25197 rules!3568 (tag!6725 (rule!8757 lt!1292402))))))

(declare-datatypes ((Unit!57123 0))(
  ( (Unit!57124) )
))
(declare-fun lt!1292401 () Unit!57123)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1487 (LexerInterface!5494 List!39208 List!39206 Token!11176) Unit!57123)

(assert (=> b!3691083 (= lt!1292401 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1487 thiss!25197 rules!3568 input!3129 lt!1292402))))

(declare-fun lt!1292405 () List!39206)

(declare-fun isPrefix!3258 (List!39206 List!39206) Bool)

(assert (=> b!3691083 (isPrefix!3258 lt!1292408 lt!1292405)))

(declare-fun suffix!1448 () List!39206)

(declare-fun ++!9736 (List!39206 List!39206) List!39206)

(assert (=> b!3691083 (= lt!1292405 (++!9736 input!3129 suffix!1448))))

(declare-fun lt!1292406 () Unit!57123)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!587 (List!39206 List!39206 List!39206) Unit!57123)

(assert (=> b!3691083 (= lt!1292406 (lemmaPrefixStaysPrefixWhenAddingToSuffix!587 lt!1292408 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!39010 0))(
  ( (tuple2!39011 (_1!22639 Token!11176) (_2!22639 List!39206)) )
))
(declare-fun lt!1292404 () tuple2!39010)

(assert (=> b!3691083 (isPrefix!3258 lt!1292408 (++!9736 lt!1292408 (_2!22639 lt!1292404)))))

(declare-fun lt!1292407 () Unit!57123)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2175 (List!39206 List!39206) Unit!57123)

(assert (=> b!3691083 (= lt!1292407 (lemmaConcatTwoListThenFirstIsPrefix!2175 lt!1292408 (_2!22639 lt!1292404)))))

(declare-datatypes ((Option!8422 0))(
  ( (None!8421) (Some!8421 (v!38375 tuple2!39010)) )
))
(declare-fun get!12969 (Option!8422) tuple2!39010)

(declare-fun maxPrefix!3022 (LexerInterface!5494 List!39208 List!39206) Option!8422)

(assert (=> b!3691083 (= lt!1292404 (get!12969 (maxPrefix!3022 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14616 (BalanceConc!23614) List!39206)

(declare-fun charsOf!3916 (Token!11176) BalanceConc!23614)

(assert (=> b!3691083 (= lt!1292408 (list!14616 (charsOf!3916 lt!1292402)))))

(declare-fun head!7979 (List!39207) Token!11176)

(declare-fun list!14617 (BalanceConc!23616) List!39207)

(assert (=> b!3691083 (= lt!1292402 (head!7979 (list!14617 (_1!22638 lt!1292403))))))

(declare-fun b!3691084 () Bool)

(declare-fun res!1500464 () Bool)

(assert (=> b!3691084 (=> (not res!1500464) (not e!2285606))))

(declare-fun isEmpty!23298 (List!39208) Bool)

(assert (=> b!3691084 (= res!1500464 (not (isEmpty!23298 rules!3568)))))

(declare-fun e!2285616 () Bool)

(assert (=> b!3691085 (= e!2285616 (and tp!1121535 tp!1121534))))

(declare-fun b!3691086 () Bool)

(declare-fun e!2285607 () Bool)

(declare-fun lt!1292409 () Rule!11610)

(assert (=> b!3691086 (= e!2285607 (= (rule!8757 lt!1292402) lt!1292409))))

(declare-fun b!3691087 () Bool)

(declare-fun e!2285612 () Bool)

(declare-fun e!2285609 () Bool)

(declare-fun tp!1121531 () Bool)

(assert (=> b!3691087 (= e!2285612 (and e!2285609 tp!1121531))))

(declare-fun b!3691088 () Bool)

(declare-fun e!2285614 () Bool)

(assert (=> b!3691088 (= e!2285605 e!2285614)))

(declare-fun res!1500457 () Bool)

(assert (=> b!3691088 (=> res!1500457 e!2285614)))

(declare-fun lt!1292399 () Option!8422)

(declare-fun isEmpty!23299 (Option!8422) Bool)

(assert (=> b!3691088 (= res!1500457 (isEmpty!23299 lt!1292399))))

(assert (=> b!3691088 (= lt!1292399 (maxPrefix!3022 thiss!25197 rules!3568 lt!1292405))))

(declare-fun b!3691089 () Bool)

(declare-fun tp!1121536 () Bool)

(declare-fun inv!52548 (String!44011) Bool)

(declare-fun inv!52551 (TokenValueInjection!11698) Bool)

(assert (=> b!3691089 (= e!2285609 (and tp!1121536 (inv!52548 (tag!6725 (h!44504 rules!3568))) (inv!52551 (transformation!5905 (h!44504 rules!3568))) e!2285616))))

(declare-fun b!3691090 () Bool)

(assert (=> b!3691090 (= e!2285613 e!2285607)))

(declare-fun res!1500463 () Bool)

(assert (=> b!3691090 (=> (not res!1500463) (not e!2285607))))

(assert (=> b!3691090 (= res!1500463 (matchR!5219 (regex!5905 lt!1292409) lt!1292408))))

(declare-fun get!12970 (Option!8421) Rule!11610)

(assert (=> b!3691090 (= lt!1292409 (get!12970 lt!1292400))))

(declare-fun b!3691091 () Bool)

(declare-fun e!2285608 () Bool)

(declare-fun tp_is_empty!18411 () Bool)

(declare-fun tp!1121532 () Bool)

(assert (=> b!3691091 (= e!2285608 (and tp_is_empty!18411 tp!1121532))))

(declare-fun res!1500459 () Bool)

(assert (=> start!347328 (=> (not res!1500459) (not e!2285606))))

(assert (=> start!347328 (= res!1500459 (is-Lexer!5492 thiss!25197))))

(assert (=> start!347328 e!2285606))

(assert (=> start!347328 true))

(assert (=> start!347328 e!2285612))

(assert (=> start!347328 e!2285608))

(declare-fun e!2285611 () Bool)

(assert (=> start!347328 e!2285611))

(declare-fun b!3691092 () Bool)

(declare-fun isDefined!6617 (Option!8422) Bool)

(assert (=> b!3691092 (= e!2285614 (isDefined!6617 lt!1292399))))

(declare-fun b!3691093 () Bool)

(declare-fun tp!1121533 () Bool)

(assert (=> b!3691093 (= e!2285611 (and tp_is_empty!18411 tp!1121533))))

(assert (= (and start!347328 res!1500459) b!3691084))

(assert (= (and b!3691084 res!1500464) b!3691082))

(assert (= (and b!3691082 res!1500458) b!3691081))

(assert (= (and b!3691081 res!1500462) b!3691083))

(assert (= (and b!3691083 res!1500460) b!3691090))

(assert (= (and b!3691090 res!1500463) b!3691086))

(assert (= (and b!3691083 (not res!1500461)) b!3691088))

(assert (= (and b!3691088 (not res!1500457)) b!3691092))

(assert (= b!3691089 b!3691085))

(assert (= b!3691087 b!3691089))

(assert (= (and start!347328 (is-Cons!39084 rules!3568)) b!3691087))

(assert (= (and start!347328 (is-Cons!39082 suffix!1448)) b!3691091))

(assert (= (and start!347328 (is-Cons!39082 input!3129)) b!3691093))

(declare-fun m!4203705 () Bool)

(assert (=> b!3691082 m!4203705))

(declare-fun m!4203707 () Bool)

(assert (=> b!3691090 m!4203707))

(declare-fun m!4203709 () Bool)

(assert (=> b!3691090 m!4203709))

(declare-fun m!4203711 () Bool)

(assert (=> b!3691083 m!4203711))

(declare-fun m!4203713 () Bool)

(assert (=> b!3691083 m!4203713))

(declare-fun m!4203715 () Bool)

(assert (=> b!3691083 m!4203715))

(declare-fun m!4203717 () Bool)

(assert (=> b!3691083 m!4203717))

(declare-fun m!4203719 () Bool)

(assert (=> b!3691083 m!4203719))

(declare-fun m!4203721 () Bool)

(assert (=> b!3691083 m!4203721))

(assert (=> b!3691083 m!4203717))

(declare-fun m!4203723 () Bool)

(assert (=> b!3691083 m!4203723))

(declare-fun m!4203725 () Bool)

(assert (=> b!3691083 m!4203725))

(declare-fun m!4203727 () Bool)

(assert (=> b!3691083 m!4203727))

(declare-fun m!4203729 () Bool)

(assert (=> b!3691083 m!4203729))

(assert (=> b!3691083 m!4203719))

(declare-fun m!4203731 () Bool)

(assert (=> b!3691083 m!4203731))

(declare-fun m!4203733 () Bool)

(assert (=> b!3691083 m!4203733))

(assert (=> b!3691083 m!4203731))

(declare-fun m!4203735 () Bool)

(assert (=> b!3691083 m!4203735))

(declare-fun m!4203737 () Bool)

(assert (=> b!3691083 m!4203737))

(assert (=> b!3691083 m!4203727))

(declare-fun m!4203739 () Bool)

(assert (=> b!3691083 m!4203739))

(declare-fun m!4203741 () Bool)

(assert (=> b!3691083 m!4203741))

(declare-fun m!4203743 () Bool)

(assert (=> b!3691089 m!4203743))

(declare-fun m!4203745 () Bool)

(assert (=> b!3691089 m!4203745))

(declare-fun m!4203747 () Bool)

(assert (=> b!3691088 m!4203747))

(declare-fun m!4203749 () Bool)

(assert (=> b!3691088 m!4203749))

(declare-fun m!4203751 () Bool)

(assert (=> b!3691084 m!4203751))

(declare-fun m!4203753 () Bool)

(assert (=> b!3691081 m!4203753))

(declare-fun m!4203755 () Bool)

(assert (=> b!3691081 m!4203755))

(assert (=> b!3691081 m!4203755))

(declare-fun m!4203757 () Bool)

(assert (=> b!3691081 m!4203757))

(declare-fun m!4203759 () Bool)

(assert (=> b!3691092 m!4203759))

(push 1)

(assert (not b_next!98649))

(assert (not b!3691089))

(assert (not b!3691081))

(assert (not b!3691088))

(assert b_and!275709)

(assert (not b!3691092))

(assert (not b!3691084))

(assert (not b!3691082))

(assert (not b!3691093))

(assert (not b!3691091))

(assert (not b!3691090))

(assert b_and!275707)

(assert (not b!3691087))

(assert tp_is_empty!18411)

(assert (not b!3691083))

(assert (not b_next!98651))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275707)

(assert b_and!275709)

(assert (not b_next!98651))

(assert (not b_next!98649))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1083254 () Bool)

(assert (=> d!1083254 (= (isEmpty!23298 rules!3568) (is-Nil!39084 rules!3568))))

(assert (=> b!3691084 d!1083254))

(declare-fun d!1083256 () Bool)

(assert (=> d!1083256 (= (inv!52548 (tag!6725 (h!44504 rules!3568))) (= (mod (str.len (value!188753 (tag!6725 (h!44504 rules!3568)))) 2) 0))))

(assert (=> b!3691089 d!1083256))

(declare-fun d!1083258 () Bool)

(declare-fun res!1500500 () Bool)

(declare-fun e!2285655 () Bool)

(assert (=> d!1083258 (=> (not res!1500500) (not e!2285655))))

(declare-fun semiInverseModEq!2523 (Int Int) Bool)

(assert (=> d!1083258 (= res!1500500 (semiInverseModEq!2523 (toChars!8084 (transformation!5905 (h!44504 rules!3568))) (toValue!8225 (transformation!5905 (h!44504 rules!3568)))))))

(assert (=> d!1083258 (= (inv!52551 (transformation!5905 (h!44504 rules!3568))) e!2285655)))

(declare-fun b!3691135 () Bool)

(declare-fun equivClasses!2422 (Int Int) Bool)

(assert (=> b!3691135 (= e!2285655 (equivClasses!2422 (toChars!8084 (transformation!5905 (h!44504 rules!3568))) (toValue!8225 (transformation!5905 (h!44504 rules!3568)))))))

(assert (= (and d!1083258 res!1500500) b!3691135))

(declare-fun m!4203817 () Bool)

(assert (=> d!1083258 m!4203817))

(declare-fun m!4203819 () Bool)

(assert (=> b!3691135 m!4203819))

(assert (=> b!3691089 d!1083258))

(declare-fun b!3691164 () Bool)

(declare-fun e!2285674 () Bool)

(declare-fun e!2285673 () Bool)

(assert (=> b!3691164 (= e!2285674 e!2285673)))

(declare-fun res!1500520 () Bool)

(assert (=> b!3691164 (=> (not res!1500520) (not e!2285673))))

(declare-fun lt!1292445 () Bool)

(assert (=> b!3691164 (= res!1500520 (not lt!1292445))))

(declare-fun b!3691165 () Bool)

(declare-fun e!2285676 () Bool)

(declare-fun nullable!3722 (Regex!10664) Bool)

(assert (=> b!3691165 (= e!2285676 (nullable!3722 (regex!5905 lt!1292409)))))

(declare-fun b!3691166 () Bool)

(declare-fun e!2285670 () Bool)

(declare-fun e!2285672 () Bool)

(assert (=> b!3691166 (= e!2285670 e!2285672)))

(declare-fun c!638353 () Bool)

(assert (=> b!3691166 (= c!638353 (is-EmptyLang!10664 (regex!5905 lt!1292409)))))

(declare-fun b!3691167 () Bool)

(declare-fun res!1500517 () Bool)

(declare-fun e!2285671 () Bool)

(assert (=> b!3691167 (=> (not res!1500517) (not e!2285671))))

(declare-fun isEmpty!23303 (List!39206) Bool)

(declare-fun tail!5718 (List!39206) List!39206)

(assert (=> b!3691167 (= res!1500517 (isEmpty!23303 (tail!5718 lt!1292408)))))

(declare-fun b!3691168 () Bool)

(declare-fun head!7981 (List!39206) C!21514)

(assert (=> b!3691168 (= e!2285671 (= (head!7981 lt!1292408) (c!638339 (regex!5905 lt!1292409))))))

(declare-fun b!3691169 () Bool)

(declare-fun res!1500519 () Bool)

(declare-fun e!2285675 () Bool)

(assert (=> b!3691169 (=> res!1500519 e!2285675)))

(assert (=> b!3691169 (= res!1500519 (not (isEmpty!23303 (tail!5718 lt!1292408))))))

(declare-fun b!3691170 () Bool)

(assert (=> b!3691170 (= e!2285672 (not lt!1292445))))

(declare-fun d!1083260 () Bool)

(assert (=> d!1083260 e!2285670))

(declare-fun c!638354 () Bool)

(assert (=> d!1083260 (= c!638354 (is-EmptyExpr!10664 (regex!5905 lt!1292409)))))

(assert (=> d!1083260 (= lt!1292445 e!2285676)))

(declare-fun c!638352 () Bool)

(assert (=> d!1083260 (= c!638352 (isEmpty!23303 lt!1292408))))

(declare-fun validRegex!4884 (Regex!10664) Bool)

(assert (=> d!1083260 (validRegex!4884 (regex!5905 lt!1292409))))

(assert (=> d!1083260 (= (matchR!5219 (regex!5905 lt!1292409) lt!1292408) lt!1292445)))

(declare-fun b!3691171 () Bool)

(declare-fun derivativeStep!3268 (Regex!10664 C!21514) Regex!10664)

(assert (=> b!3691171 (= e!2285676 (matchR!5219 (derivativeStep!3268 (regex!5905 lt!1292409) (head!7981 lt!1292408)) (tail!5718 lt!1292408)))))

(declare-fun b!3691172 () Bool)

(declare-fun call!266951 () Bool)

(assert (=> b!3691172 (= e!2285670 (= lt!1292445 call!266951))))

(declare-fun bm!266946 () Bool)

(assert (=> bm!266946 (= call!266951 (isEmpty!23303 lt!1292408))))

(declare-fun b!3691173 () Bool)

(declare-fun res!1500518 () Bool)

(assert (=> b!3691173 (=> res!1500518 e!2285674)))

(assert (=> b!3691173 (= res!1500518 (not (is-ElementMatch!10664 (regex!5905 lt!1292409))))))

(assert (=> b!3691173 (= e!2285672 e!2285674)))

(declare-fun b!3691174 () Bool)

(declare-fun res!1500524 () Bool)

(assert (=> b!3691174 (=> res!1500524 e!2285674)))

(assert (=> b!3691174 (= res!1500524 e!2285671)))

(declare-fun res!1500521 () Bool)

(assert (=> b!3691174 (=> (not res!1500521) (not e!2285671))))

(assert (=> b!3691174 (= res!1500521 lt!1292445)))

(declare-fun b!3691175 () Bool)

(declare-fun res!1500523 () Bool)

(assert (=> b!3691175 (=> (not res!1500523) (not e!2285671))))

(assert (=> b!3691175 (= res!1500523 (not call!266951))))

(declare-fun b!3691176 () Bool)

(assert (=> b!3691176 (= e!2285675 (not (= (head!7981 lt!1292408) (c!638339 (regex!5905 lt!1292409)))))))

(declare-fun b!3691177 () Bool)

(assert (=> b!3691177 (= e!2285673 e!2285675)))

(declare-fun res!1500522 () Bool)

(assert (=> b!3691177 (=> res!1500522 e!2285675)))

(assert (=> b!3691177 (= res!1500522 call!266951)))

(assert (= (and d!1083260 c!638352) b!3691165))

(assert (= (and d!1083260 (not c!638352)) b!3691171))

(assert (= (and d!1083260 c!638354) b!3691172))

(assert (= (and d!1083260 (not c!638354)) b!3691166))

(assert (= (and b!3691166 c!638353) b!3691170))

(assert (= (and b!3691166 (not c!638353)) b!3691173))

(assert (= (and b!3691173 (not res!1500518)) b!3691174))

(assert (= (and b!3691174 res!1500521) b!3691175))

(assert (= (and b!3691175 res!1500523) b!3691167))

(assert (= (and b!3691167 res!1500517) b!3691168))

(assert (= (and b!3691174 (not res!1500524)) b!3691164))

(assert (= (and b!3691164 res!1500520) b!3691177))

(assert (= (and b!3691177 (not res!1500522)) b!3691169))

(assert (= (and b!3691169 (not res!1500519)) b!3691176))

(assert (= (or b!3691172 b!3691175 b!3691177) bm!266946))

(declare-fun m!4203821 () Bool)

(assert (=> bm!266946 m!4203821))

(declare-fun m!4203823 () Bool)

(assert (=> b!3691176 m!4203823))

(assert (=> d!1083260 m!4203821))

(declare-fun m!4203825 () Bool)

(assert (=> d!1083260 m!4203825))

(assert (=> b!3691171 m!4203823))

(assert (=> b!3691171 m!4203823))

(declare-fun m!4203827 () Bool)

(assert (=> b!3691171 m!4203827))

(declare-fun m!4203829 () Bool)

(assert (=> b!3691171 m!4203829))

(assert (=> b!3691171 m!4203827))

(assert (=> b!3691171 m!4203829))

(declare-fun m!4203831 () Bool)

(assert (=> b!3691171 m!4203831))

(assert (=> b!3691169 m!4203829))

(assert (=> b!3691169 m!4203829))

(declare-fun m!4203833 () Bool)

(assert (=> b!3691169 m!4203833))

(declare-fun m!4203835 () Bool)

(assert (=> b!3691165 m!4203835))

(assert (=> b!3691167 m!4203829))

(assert (=> b!3691167 m!4203829))

(assert (=> b!3691167 m!4203833))

(assert (=> b!3691168 m!4203823))

(assert (=> b!3691090 d!1083260))

(declare-fun d!1083262 () Bool)

(assert (=> d!1083262 (= (get!12970 lt!1292400) (v!38374 lt!1292400))))

(assert (=> b!3691090 d!1083262))

(declare-fun d!1083264 () Bool)

(assert (=> d!1083264 (= (isEmpty!23299 lt!1292399) (not (is-Some!8421 lt!1292399)))))

(assert (=> b!3691088 d!1083264))

(declare-fun b!3691196 () Bool)

(declare-fun e!2285684 () Option!8422)

(declare-fun lt!1292463 () Option!8422)

(declare-fun lt!1292462 () Option!8422)

(assert (=> b!3691196 (= e!2285684 (ite (and (is-None!8421 lt!1292463) (is-None!8421 lt!1292462)) None!8421 (ite (is-None!8421 lt!1292462) lt!1292463 (ite (is-None!8421 lt!1292463) lt!1292462 (ite (>= (size!29865 (_1!22639 (v!38375 lt!1292463))) (size!29865 (_1!22639 (v!38375 lt!1292462)))) lt!1292463 lt!1292462)))))))

(declare-fun call!266954 () Option!8422)

(assert (=> b!3691196 (= lt!1292463 call!266954)))

(assert (=> b!3691196 (= lt!1292462 (maxPrefix!3022 thiss!25197 (t!301349 rules!3568) lt!1292405))))

(declare-fun b!3691197 () Bool)

(declare-fun res!1500544 () Bool)

(declare-fun e!2285685 () Bool)

(assert (=> b!3691197 (=> (not res!1500544) (not e!2285685))))

(declare-fun lt!1292460 () Option!8422)

(declare-fun size!29867 (List!39206) Int)

(assert (=> b!3691197 (= res!1500544 (< (size!29867 (_2!22639 (get!12969 lt!1292460))) (size!29867 lt!1292405)))))

(declare-fun d!1083266 () Bool)

(declare-fun e!2285683 () Bool)

(assert (=> d!1083266 e!2285683))

(declare-fun res!1500539 () Bool)

(assert (=> d!1083266 (=> res!1500539 e!2285683)))

(assert (=> d!1083266 (= res!1500539 (isEmpty!23299 lt!1292460))))

(assert (=> d!1083266 (= lt!1292460 e!2285684)))

(declare-fun c!638357 () Bool)

(assert (=> d!1083266 (= c!638357 (and (is-Cons!39084 rules!3568) (is-Nil!39084 (t!301349 rules!3568))))))

(declare-fun lt!1292459 () Unit!57123)

(declare-fun lt!1292461 () Unit!57123)

(assert (=> d!1083266 (= lt!1292459 lt!1292461)))

(assert (=> d!1083266 (isPrefix!3258 lt!1292405 lt!1292405)))

(declare-fun lemmaIsPrefixRefl!2043 (List!39206 List!39206) Unit!57123)

(assert (=> d!1083266 (= lt!1292461 (lemmaIsPrefixRefl!2043 lt!1292405 lt!1292405))))

(declare-fun rulesValidInductive!2117 (LexerInterface!5494 List!39208) Bool)

(assert (=> d!1083266 (rulesValidInductive!2117 thiss!25197 rules!3568)))

(assert (=> d!1083266 (= (maxPrefix!3022 thiss!25197 rules!3568 lt!1292405) lt!1292460)))

(declare-fun b!3691198 () Bool)

(declare-fun res!1500540 () Bool)

(assert (=> b!3691198 (=> (not res!1500540) (not e!2285685))))

(assert (=> b!3691198 (= res!1500540 (= (++!9736 (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292460)))) (_2!22639 (get!12969 lt!1292460))) lt!1292405))))

(declare-fun b!3691199 () Bool)

(assert (=> b!3691199 (= e!2285684 call!266954)))

(declare-fun b!3691200 () Bool)

(declare-fun res!1500542 () Bool)

(assert (=> b!3691200 (=> (not res!1500542) (not e!2285685))))

(declare-fun apply!9375 (TokenValueInjection!11698 BalanceConc!23614) TokenValue!6135)

(assert (=> b!3691200 (= res!1500542 (= (value!188754 (_1!22639 (get!12969 lt!1292460))) (apply!9375 (transformation!5905 (rule!8757 (_1!22639 (get!12969 lt!1292460)))) (seqFromList!4454 (originalCharacters!6619 (_1!22639 (get!12969 lt!1292460)))))))))

(declare-fun bm!266949 () Bool)

(declare-fun maxPrefixOneRule!2140 (LexerInterface!5494 Rule!11610 List!39206) Option!8422)

(assert (=> bm!266949 (= call!266954 (maxPrefixOneRule!2140 thiss!25197 (h!44504 rules!3568) lt!1292405))))

(declare-fun b!3691201 () Bool)

(declare-fun contains!7804 (List!39208 Rule!11610) Bool)

(assert (=> b!3691201 (= e!2285685 (contains!7804 rules!3568 (rule!8757 (_1!22639 (get!12969 lt!1292460)))))))

(declare-fun b!3691202 () Bool)

(declare-fun res!1500543 () Bool)

(assert (=> b!3691202 (=> (not res!1500543) (not e!2285685))))

(assert (=> b!3691202 (= res!1500543 (matchR!5219 (regex!5905 (rule!8757 (_1!22639 (get!12969 lt!1292460)))) (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292460))))))))

(declare-fun b!3691203 () Bool)

(declare-fun res!1500541 () Bool)

(assert (=> b!3691203 (=> (not res!1500541) (not e!2285685))))

(assert (=> b!3691203 (= res!1500541 (= (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292460)))) (originalCharacters!6619 (_1!22639 (get!12969 lt!1292460)))))))

(declare-fun b!3691204 () Bool)

(assert (=> b!3691204 (= e!2285683 e!2285685)))

(declare-fun res!1500545 () Bool)

(assert (=> b!3691204 (=> (not res!1500545) (not e!2285685))))

(assert (=> b!3691204 (= res!1500545 (isDefined!6617 lt!1292460))))

(assert (= (and d!1083266 c!638357) b!3691199))

(assert (= (and d!1083266 (not c!638357)) b!3691196))

(assert (= (or b!3691199 b!3691196) bm!266949))

(assert (= (and d!1083266 (not res!1500539)) b!3691204))

(assert (= (and b!3691204 res!1500545) b!3691203))

(assert (= (and b!3691203 res!1500541) b!3691197))

(assert (= (and b!3691197 res!1500544) b!3691198))

(assert (= (and b!3691198 res!1500540) b!3691200))

(assert (= (and b!3691200 res!1500542) b!3691202))

(assert (= (and b!3691202 res!1500543) b!3691201))

(declare-fun m!4203841 () Bool)

(assert (=> b!3691202 m!4203841))

(declare-fun m!4203843 () Bool)

(assert (=> b!3691202 m!4203843))

(assert (=> b!3691202 m!4203843))

(declare-fun m!4203845 () Bool)

(assert (=> b!3691202 m!4203845))

(assert (=> b!3691202 m!4203845))

(declare-fun m!4203847 () Bool)

(assert (=> b!3691202 m!4203847))

(declare-fun m!4203849 () Bool)

(assert (=> b!3691204 m!4203849))

(declare-fun m!4203851 () Bool)

(assert (=> bm!266949 m!4203851))

(assert (=> b!3691197 m!4203841))

(declare-fun m!4203853 () Bool)

(assert (=> b!3691197 m!4203853))

(declare-fun m!4203855 () Bool)

(assert (=> b!3691197 m!4203855))

(assert (=> b!3691203 m!4203841))

(assert (=> b!3691203 m!4203843))

(assert (=> b!3691203 m!4203843))

(assert (=> b!3691203 m!4203845))

(declare-fun m!4203857 () Bool)

(assert (=> d!1083266 m!4203857))

(declare-fun m!4203859 () Bool)

(assert (=> d!1083266 m!4203859))

(declare-fun m!4203861 () Bool)

(assert (=> d!1083266 m!4203861))

(declare-fun m!4203863 () Bool)

(assert (=> d!1083266 m!4203863))

(declare-fun m!4203865 () Bool)

(assert (=> b!3691196 m!4203865))

(assert (=> b!3691200 m!4203841))

(declare-fun m!4203867 () Bool)

(assert (=> b!3691200 m!4203867))

(assert (=> b!3691200 m!4203867))

(declare-fun m!4203869 () Bool)

(assert (=> b!3691200 m!4203869))

(assert (=> b!3691198 m!4203841))

(assert (=> b!3691198 m!4203843))

(assert (=> b!3691198 m!4203843))

(assert (=> b!3691198 m!4203845))

(assert (=> b!3691198 m!4203845))

(declare-fun m!4203871 () Bool)

(assert (=> b!3691198 m!4203871))

(assert (=> b!3691201 m!4203841))

(declare-fun m!4203873 () Bool)

(assert (=> b!3691201 m!4203873))

(assert (=> b!3691088 d!1083266))

(declare-fun b!3691213 () Bool)

(declare-fun e!2285693 () Bool)

(declare-fun e!2285692 () Bool)

(assert (=> b!3691213 (= e!2285693 e!2285692)))

(declare-fun res!1500555 () Bool)

(assert (=> b!3691213 (=> (not res!1500555) (not e!2285692))))

(assert (=> b!3691213 (= res!1500555 (not (is-Nil!39082 (++!9736 lt!1292408 (_2!22639 lt!1292404)))))))

(declare-fun b!3691214 () Bool)

(declare-fun res!1500557 () Bool)

(assert (=> b!3691214 (=> (not res!1500557) (not e!2285692))))

(assert (=> b!3691214 (= res!1500557 (= (head!7981 lt!1292408) (head!7981 (++!9736 lt!1292408 (_2!22639 lt!1292404)))))))

(declare-fun b!3691216 () Bool)

(declare-fun e!2285694 () Bool)

(assert (=> b!3691216 (= e!2285694 (>= (size!29867 (++!9736 lt!1292408 (_2!22639 lt!1292404))) (size!29867 lt!1292408)))))

(declare-fun d!1083272 () Bool)

(assert (=> d!1083272 e!2285694))

(declare-fun res!1500556 () Bool)

(assert (=> d!1083272 (=> res!1500556 e!2285694)))

(declare-fun lt!1292466 () Bool)

(assert (=> d!1083272 (= res!1500556 (not lt!1292466))))

(assert (=> d!1083272 (= lt!1292466 e!2285693)))

(declare-fun res!1500554 () Bool)

(assert (=> d!1083272 (=> res!1500554 e!2285693)))

(assert (=> d!1083272 (= res!1500554 (is-Nil!39082 lt!1292408))))

(assert (=> d!1083272 (= (isPrefix!3258 lt!1292408 (++!9736 lt!1292408 (_2!22639 lt!1292404))) lt!1292466)))

(declare-fun b!3691215 () Bool)

(assert (=> b!3691215 (= e!2285692 (isPrefix!3258 (tail!5718 lt!1292408) (tail!5718 (++!9736 lt!1292408 (_2!22639 lt!1292404)))))))

(assert (= (and d!1083272 (not res!1500554)) b!3691213))

(assert (= (and b!3691213 res!1500555) b!3691214))

(assert (= (and b!3691214 res!1500557) b!3691215))

(assert (= (and d!1083272 (not res!1500556)) b!3691216))

(assert (=> b!3691214 m!4203823))

(assert (=> b!3691214 m!4203717))

(declare-fun m!4203875 () Bool)

(assert (=> b!3691214 m!4203875))

(assert (=> b!3691216 m!4203717))

(declare-fun m!4203877 () Bool)

(assert (=> b!3691216 m!4203877))

(declare-fun m!4203879 () Bool)

(assert (=> b!3691216 m!4203879))

(assert (=> b!3691215 m!4203829))

(assert (=> b!3691215 m!4203717))

(declare-fun m!4203881 () Bool)

(assert (=> b!3691215 m!4203881))

(assert (=> b!3691215 m!4203829))

(assert (=> b!3691215 m!4203881))

(declare-fun m!4203883 () Bool)

(assert (=> b!3691215 m!4203883))

(assert (=> b!3691083 d!1083272))

(declare-fun d!1083274 () Bool)

(assert (=> d!1083274 (= (get!12969 (maxPrefix!3022 thiss!25197 rules!3568 input!3129)) (v!38375 (maxPrefix!3022 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3691083 d!1083274))

(declare-fun d!1083276 () Bool)

(assert (=> d!1083276 (isPrefix!3258 lt!1292408 (++!9736 lt!1292408 (_2!22639 lt!1292404)))))

(declare-fun lt!1292469 () Unit!57123)

(declare-fun choose!22104 (List!39206 List!39206) Unit!57123)

(assert (=> d!1083276 (= lt!1292469 (choose!22104 lt!1292408 (_2!22639 lt!1292404)))))

(assert (=> d!1083276 (= (lemmaConcatTwoListThenFirstIsPrefix!2175 lt!1292408 (_2!22639 lt!1292404)) lt!1292469)))

(declare-fun bs!574097 () Bool)

(assert (= bs!574097 d!1083276))

(assert (=> bs!574097 m!4203717))

(assert (=> bs!574097 m!4203717))

(assert (=> bs!574097 m!4203723))

(declare-fun m!4203885 () Bool)

(assert (=> bs!574097 m!4203885))

(assert (=> b!3691083 d!1083276))

(declare-fun b!3691217 () Bool)

(declare-fun e!2285696 () Option!8422)

(declare-fun lt!1292474 () Option!8422)

(declare-fun lt!1292473 () Option!8422)

(assert (=> b!3691217 (= e!2285696 (ite (and (is-None!8421 lt!1292474) (is-None!8421 lt!1292473)) None!8421 (ite (is-None!8421 lt!1292473) lt!1292474 (ite (is-None!8421 lt!1292474) lt!1292473 (ite (>= (size!29865 (_1!22639 (v!38375 lt!1292474))) (size!29865 (_1!22639 (v!38375 lt!1292473)))) lt!1292474 lt!1292473)))))))

(declare-fun call!266955 () Option!8422)

(assert (=> b!3691217 (= lt!1292474 call!266955)))

(assert (=> b!3691217 (= lt!1292473 (maxPrefix!3022 thiss!25197 (t!301349 rules!3568) input!3129))))

(declare-fun b!3691218 () Bool)

(declare-fun res!1500563 () Bool)

(declare-fun e!2285697 () Bool)

(assert (=> b!3691218 (=> (not res!1500563) (not e!2285697))))

(declare-fun lt!1292471 () Option!8422)

(assert (=> b!3691218 (= res!1500563 (< (size!29867 (_2!22639 (get!12969 lt!1292471))) (size!29867 input!3129)))))

(declare-fun d!1083278 () Bool)

(declare-fun e!2285695 () Bool)

(assert (=> d!1083278 e!2285695))

(declare-fun res!1500558 () Bool)

(assert (=> d!1083278 (=> res!1500558 e!2285695)))

(assert (=> d!1083278 (= res!1500558 (isEmpty!23299 lt!1292471))))

(assert (=> d!1083278 (= lt!1292471 e!2285696)))

(declare-fun c!638358 () Bool)

(assert (=> d!1083278 (= c!638358 (and (is-Cons!39084 rules!3568) (is-Nil!39084 (t!301349 rules!3568))))))

(declare-fun lt!1292470 () Unit!57123)

(declare-fun lt!1292472 () Unit!57123)

(assert (=> d!1083278 (= lt!1292470 lt!1292472)))

(assert (=> d!1083278 (isPrefix!3258 input!3129 input!3129)))

(assert (=> d!1083278 (= lt!1292472 (lemmaIsPrefixRefl!2043 input!3129 input!3129))))

(assert (=> d!1083278 (rulesValidInductive!2117 thiss!25197 rules!3568)))

(assert (=> d!1083278 (= (maxPrefix!3022 thiss!25197 rules!3568 input!3129) lt!1292471)))

(declare-fun b!3691219 () Bool)

(declare-fun res!1500559 () Bool)

(assert (=> b!3691219 (=> (not res!1500559) (not e!2285697))))

(assert (=> b!3691219 (= res!1500559 (= (++!9736 (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292471)))) (_2!22639 (get!12969 lt!1292471))) input!3129))))

(declare-fun b!3691220 () Bool)

(assert (=> b!3691220 (= e!2285696 call!266955)))

(declare-fun b!3691221 () Bool)

(declare-fun res!1500561 () Bool)

(assert (=> b!3691221 (=> (not res!1500561) (not e!2285697))))

(assert (=> b!3691221 (= res!1500561 (= (value!188754 (_1!22639 (get!12969 lt!1292471))) (apply!9375 (transformation!5905 (rule!8757 (_1!22639 (get!12969 lt!1292471)))) (seqFromList!4454 (originalCharacters!6619 (_1!22639 (get!12969 lt!1292471)))))))))

(declare-fun bm!266950 () Bool)

(assert (=> bm!266950 (= call!266955 (maxPrefixOneRule!2140 thiss!25197 (h!44504 rules!3568) input!3129))))

(declare-fun b!3691222 () Bool)

(assert (=> b!3691222 (= e!2285697 (contains!7804 rules!3568 (rule!8757 (_1!22639 (get!12969 lt!1292471)))))))

(declare-fun b!3691223 () Bool)

(declare-fun res!1500562 () Bool)

(assert (=> b!3691223 (=> (not res!1500562) (not e!2285697))))

(assert (=> b!3691223 (= res!1500562 (matchR!5219 (regex!5905 (rule!8757 (_1!22639 (get!12969 lt!1292471)))) (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292471))))))))

(declare-fun b!3691224 () Bool)

(declare-fun res!1500560 () Bool)

(assert (=> b!3691224 (=> (not res!1500560) (not e!2285697))))

(assert (=> b!3691224 (= res!1500560 (= (list!14616 (charsOf!3916 (_1!22639 (get!12969 lt!1292471)))) (originalCharacters!6619 (_1!22639 (get!12969 lt!1292471)))))))

(declare-fun b!3691225 () Bool)

(assert (=> b!3691225 (= e!2285695 e!2285697)))

(declare-fun res!1500564 () Bool)

(assert (=> b!3691225 (=> (not res!1500564) (not e!2285697))))

(assert (=> b!3691225 (= res!1500564 (isDefined!6617 lt!1292471))))

(assert (= (and d!1083278 c!638358) b!3691220))

(assert (= (and d!1083278 (not c!638358)) b!3691217))

(assert (= (or b!3691220 b!3691217) bm!266950))

(assert (= (and d!1083278 (not res!1500558)) b!3691225))

(assert (= (and b!3691225 res!1500564) b!3691224))

(assert (= (and b!3691224 res!1500560) b!3691218))

(assert (= (and b!3691218 res!1500563) b!3691219))

(assert (= (and b!3691219 res!1500559) b!3691221))

(assert (= (and b!3691221 res!1500561) b!3691223))

(assert (= (and b!3691223 res!1500562) b!3691222))

(declare-fun m!4203887 () Bool)

(assert (=> b!3691223 m!4203887))

(declare-fun m!4203889 () Bool)

(assert (=> b!3691223 m!4203889))

(assert (=> b!3691223 m!4203889))

(declare-fun m!4203891 () Bool)

(assert (=> b!3691223 m!4203891))

(assert (=> b!3691223 m!4203891))

(declare-fun m!4203893 () Bool)

(assert (=> b!3691223 m!4203893))

(declare-fun m!4203895 () Bool)

(assert (=> b!3691225 m!4203895))

(declare-fun m!4203897 () Bool)

(assert (=> bm!266950 m!4203897))

(assert (=> b!3691218 m!4203887))

(declare-fun m!4203899 () Bool)

(assert (=> b!3691218 m!4203899))

(declare-fun m!4203901 () Bool)

(assert (=> b!3691218 m!4203901))

(assert (=> b!3691224 m!4203887))

(assert (=> b!3691224 m!4203889))

(assert (=> b!3691224 m!4203889))

(assert (=> b!3691224 m!4203891))

(declare-fun m!4203903 () Bool)

(assert (=> d!1083278 m!4203903))

(declare-fun m!4203905 () Bool)

(assert (=> d!1083278 m!4203905))

(declare-fun m!4203907 () Bool)

(assert (=> d!1083278 m!4203907))

(assert (=> d!1083278 m!4203863))

(declare-fun m!4203909 () Bool)

(assert (=> b!3691217 m!4203909))

(assert (=> b!3691221 m!4203887))

(declare-fun m!4203911 () Bool)

(assert (=> b!3691221 m!4203911))

(assert (=> b!3691221 m!4203911))

(declare-fun m!4203913 () Bool)

(assert (=> b!3691221 m!4203913))

(assert (=> b!3691219 m!4203887))

(assert (=> b!3691219 m!4203889))

(assert (=> b!3691219 m!4203889))

(assert (=> b!3691219 m!4203891))

(assert (=> b!3691219 m!4203891))

(declare-fun m!4203915 () Bool)

(assert (=> b!3691219 m!4203915))

(assert (=> b!3691222 m!4203887))

(declare-fun m!4203917 () Bool)

(assert (=> b!3691222 m!4203917))

(assert (=> b!3691083 d!1083278))

(declare-fun d!1083280 () Bool)

(declare-fun list!14620 (Conc!12000) List!39206)

(assert (=> d!1083280 (= (list!14616 (charsOf!3916 lt!1292402)) (list!14620 (c!638340 (charsOf!3916 lt!1292402))))))

(declare-fun bs!574098 () Bool)

(assert (= bs!574098 d!1083280))

(declare-fun m!4203919 () Bool)

(assert (=> bs!574098 m!4203919))

(assert (=> b!3691083 d!1083280))

(declare-fun b!3691226 () Bool)

(declare-fun e!2285699 () Bool)

(declare-fun e!2285698 () Bool)

(assert (=> b!3691226 (= e!2285699 e!2285698)))

(declare-fun res!1500566 () Bool)

(assert (=> b!3691226 (=> (not res!1500566) (not e!2285698))))

(assert (=> b!3691226 (= res!1500566 (not (is-Nil!39082 lt!1292405)))))

(declare-fun b!3691227 () Bool)

(declare-fun res!1500568 () Bool)

(assert (=> b!3691227 (=> (not res!1500568) (not e!2285698))))

(assert (=> b!3691227 (= res!1500568 (= (head!7981 lt!1292408) (head!7981 lt!1292405)))))

(declare-fun b!3691229 () Bool)

(declare-fun e!2285700 () Bool)

(assert (=> b!3691229 (= e!2285700 (>= (size!29867 lt!1292405) (size!29867 lt!1292408)))))

(declare-fun d!1083282 () Bool)

(assert (=> d!1083282 e!2285700))

(declare-fun res!1500567 () Bool)

(assert (=> d!1083282 (=> res!1500567 e!2285700)))

(declare-fun lt!1292475 () Bool)

(assert (=> d!1083282 (= res!1500567 (not lt!1292475))))

(assert (=> d!1083282 (= lt!1292475 e!2285699)))

(declare-fun res!1500565 () Bool)

(assert (=> d!1083282 (=> res!1500565 e!2285699)))

(assert (=> d!1083282 (= res!1500565 (is-Nil!39082 lt!1292408))))

(assert (=> d!1083282 (= (isPrefix!3258 lt!1292408 lt!1292405) lt!1292475)))

(declare-fun b!3691228 () Bool)

(assert (=> b!3691228 (= e!2285698 (isPrefix!3258 (tail!5718 lt!1292408) (tail!5718 lt!1292405)))))

(assert (= (and d!1083282 (not res!1500565)) b!3691226))

(assert (= (and b!3691226 res!1500566) b!3691227))

(assert (= (and b!3691227 res!1500568) b!3691228))

(assert (= (and d!1083282 (not res!1500567)) b!3691229))

(assert (=> b!3691227 m!4203823))

(declare-fun m!4203921 () Bool)

(assert (=> b!3691227 m!4203921))

(assert (=> b!3691229 m!4203855))

(assert (=> b!3691229 m!4203879))

(assert (=> b!3691228 m!4203829))

(declare-fun m!4203923 () Bool)

(assert (=> b!3691228 m!4203923))

(assert (=> b!3691228 m!4203829))

(assert (=> b!3691228 m!4203923))

(declare-fun m!4203925 () Bool)

(assert (=> b!3691228 m!4203925))

(assert (=> b!3691083 d!1083282))

(declare-fun d!1083284 () Bool)

(assert (=> d!1083284 (= (head!7979 (list!14617 (_1!22638 lt!1292403))) (h!44503 (list!14617 (_1!22638 lt!1292403))))))

(assert (=> b!3691083 d!1083284))

(declare-fun b!3691238 () Bool)

(declare-fun e!2285706 () List!39206)

(assert (=> b!3691238 (= e!2285706 (_2!22639 lt!1292404))))

(declare-fun b!3691239 () Bool)

(assert (=> b!3691239 (= e!2285706 (Cons!39082 (h!44502 lt!1292408) (++!9736 (t!301347 lt!1292408) (_2!22639 lt!1292404))))))

(declare-fun b!3691240 () Bool)

(declare-fun res!1500573 () Bool)

(declare-fun e!2285705 () Bool)

(assert (=> b!3691240 (=> (not res!1500573) (not e!2285705))))

(declare-fun lt!1292478 () List!39206)

(assert (=> b!3691240 (= res!1500573 (= (size!29867 lt!1292478) (+ (size!29867 lt!1292408) (size!29867 (_2!22639 lt!1292404)))))))

(declare-fun b!3691241 () Bool)

(assert (=> b!3691241 (= e!2285705 (or (not (= (_2!22639 lt!1292404) Nil!39082)) (= lt!1292478 lt!1292408)))))

(declare-fun d!1083286 () Bool)

(assert (=> d!1083286 e!2285705))

(declare-fun res!1500574 () Bool)

(assert (=> d!1083286 (=> (not res!1500574) (not e!2285705))))

(declare-fun content!5668 (List!39206) (Set C!21514))

(assert (=> d!1083286 (= res!1500574 (= (content!5668 lt!1292478) (set.union (content!5668 lt!1292408) (content!5668 (_2!22639 lt!1292404)))))))

(assert (=> d!1083286 (= lt!1292478 e!2285706)))

(declare-fun c!638361 () Bool)

(assert (=> d!1083286 (= c!638361 (is-Nil!39082 lt!1292408))))

(assert (=> d!1083286 (= (++!9736 lt!1292408 (_2!22639 lt!1292404)) lt!1292478)))

(assert (= (and d!1083286 c!638361) b!3691238))

(assert (= (and d!1083286 (not c!638361)) b!3691239))

(assert (= (and d!1083286 res!1500574) b!3691240))

(assert (= (and b!3691240 res!1500573) b!3691241))

(declare-fun m!4203927 () Bool)

(assert (=> b!3691239 m!4203927))

(declare-fun m!4203929 () Bool)

(assert (=> b!3691240 m!4203929))

(assert (=> b!3691240 m!4203879))

(declare-fun m!4203931 () Bool)

(assert (=> b!3691240 m!4203931))

(declare-fun m!4203933 () Bool)

(assert (=> d!1083286 m!4203933))

(declare-fun m!4203935 () Bool)

(assert (=> d!1083286 m!4203935))

(declare-fun m!4203937 () Bool)

(assert (=> d!1083286 m!4203937))

(assert (=> b!3691083 d!1083286))

(declare-fun b!3691242 () Bool)

(declare-fun e!2285708 () List!39206)

(assert (=> b!3691242 (= e!2285708 suffix!1448)))

(declare-fun b!3691243 () Bool)

(assert (=> b!3691243 (= e!2285708 (Cons!39082 (h!44502 input!3129) (++!9736 (t!301347 input!3129) suffix!1448)))))

(declare-fun b!3691244 () Bool)

(declare-fun res!1500575 () Bool)

(declare-fun e!2285707 () Bool)

(assert (=> b!3691244 (=> (not res!1500575) (not e!2285707))))

(declare-fun lt!1292479 () List!39206)

(assert (=> b!3691244 (= res!1500575 (= (size!29867 lt!1292479) (+ (size!29867 input!3129) (size!29867 suffix!1448))))))

(declare-fun b!3691245 () Bool)

(assert (=> b!3691245 (= e!2285707 (or (not (= suffix!1448 Nil!39082)) (= lt!1292479 input!3129)))))

(declare-fun d!1083288 () Bool)

(assert (=> d!1083288 e!2285707))

(declare-fun res!1500576 () Bool)

(assert (=> d!1083288 (=> (not res!1500576) (not e!2285707))))

(assert (=> d!1083288 (= res!1500576 (= (content!5668 lt!1292479) (set.union (content!5668 input!3129) (content!5668 suffix!1448))))))

(assert (=> d!1083288 (= lt!1292479 e!2285708)))

(declare-fun c!638362 () Bool)

(assert (=> d!1083288 (= c!638362 (is-Nil!39082 input!3129))))

(assert (=> d!1083288 (= (++!9736 input!3129 suffix!1448) lt!1292479)))

(assert (= (and d!1083288 c!638362) b!3691242))

(assert (= (and d!1083288 (not c!638362)) b!3691243))

(assert (= (and d!1083288 res!1500576) b!3691244))

(assert (= (and b!3691244 res!1500575) b!3691245))

(declare-fun m!4203939 () Bool)

(assert (=> b!3691243 m!4203939))

(declare-fun m!4203941 () Bool)

(assert (=> b!3691244 m!4203941))

(assert (=> b!3691244 m!4203901))

(declare-fun m!4203943 () Bool)

(assert (=> b!3691244 m!4203943))

(declare-fun m!4203945 () Bool)

(assert (=> d!1083288 m!4203945))

(declare-fun m!4203947 () Bool)

(assert (=> d!1083288 m!4203947))

(declare-fun m!4203949 () Bool)

(assert (=> d!1083288 m!4203949))

(assert (=> b!3691083 d!1083288))

(declare-fun d!1083290 () Bool)

(declare-fun e!2285711 () Bool)

(assert (=> d!1083290 e!2285711))

(declare-fun res!1500581 () Bool)

(assert (=> d!1083290 (=> (not res!1500581) (not e!2285711))))

(assert (=> d!1083290 (= res!1500581 (isDefined!6616 (getRuleFromTag!1487 thiss!25197 rules!3568 (tag!6725 (rule!8757 lt!1292402)))))))

(declare-fun lt!1292482 () Unit!57123)

(declare-fun choose!22105 (LexerInterface!5494 List!39208 List!39206 Token!11176) Unit!57123)

(assert (=> d!1083290 (= lt!1292482 (choose!22105 thiss!25197 rules!3568 input!3129 lt!1292402))))

(assert (=> d!1083290 (rulesInvariant!4891 thiss!25197 rules!3568)))

(assert (=> d!1083290 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1487 thiss!25197 rules!3568 input!3129 lt!1292402) lt!1292482)))

(declare-fun b!3691250 () Bool)

(declare-fun res!1500582 () Bool)

(assert (=> b!3691250 (=> (not res!1500582) (not e!2285711))))

(assert (=> b!3691250 (= res!1500582 (matchR!5219 (regex!5905 (get!12970 (getRuleFromTag!1487 thiss!25197 rules!3568 (tag!6725 (rule!8757 lt!1292402))))) (list!14616 (charsOf!3916 lt!1292402))))))

(declare-fun b!3691251 () Bool)

(assert (=> b!3691251 (= e!2285711 (= (rule!8757 lt!1292402) (get!12970 (getRuleFromTag!1487 thiss!25197 rules!3568 (tag!6725 (rule!8757 lt!1292402))))))))

(assert (= (and d!1083290 res!1500581) b!3691250))

(assert (= (and b!3691250 res!1500582) b!3691251))

(assert (=> d!1083290 m!4203733))

(assert (=> d!1083290 m!4203733))

(declare-fun m!4203951 () Bool)

(assert (=> d!1083290 m!4203951))

(declare-fun m!4203953 () Bool)

(assert (=> d!1083290 m!4203953))

(assert (=> d!1083290 m!4203705))

(assert (=> b!3691250 m!4203735))

(declare-fun m!4203955 () Bool)

(assert (=> b!3691250 m!4203955))

(assert (=> b!3691250 m!4203731))

(assert (=> b!3691250 m!4203735))

(assert (=> b!3691250 m!4203733))

(declare-fun m!4203957 () Bool)

(assert (=> b!3691250 m!4203957))

(assert (=> b!3691250 m!4203731))

(assert (=> b!3691250 m!4203733))

(assert (=> b!3691251 m!4203733))

(assert (=> b!3691251 m!4203733))

(assert (=> b!3691251 m!4203957))

(assert (=> b!3691083 d!1083290))

(declare-fun d!1083292 () Bool)

(declare-fun lt!1292485 () BalanceConc!23614)

(assert (=> d!1083292 (= (list!14616 lt!1292485) (originalCharacters!6619 lt!1292402))))

(declare-fun dynLambda!17117 (Int TokenValue!6135) BalanceConc!23614)

(assert (=> d!1083292 (= lt!1292485 (dynLambda!17117 (toChars!8084 (transformation!5905 (rule!8757 lt!1292402))) (value!188754 lt!1292402)))))

(assert (=> d!1083292 (= (charsOf!3916 lt!1292402) lt!1292485)))

(declare-fun b_lambda!109511 () Bool)

(assert (=> (not b_lambda!109511) (not d!1083292)))

(declare-fun t!301355 () Bool)

(declare-fun tb!213861 () Bool)

(assert (=> (and b!3691085 (= (toChars!8084 (transformation!5905 (h!44504 rules!3568))) (toChars!8084 (transformation!5905 (rule!8757 lt!1292402)))) t!301355) tb!213861))

(declare-fun b!3691256 () Bool)

(declare-fun e!2285714 () Bool)

(declare-fun tp!1121557 () Bool)

(declare-fun inv!52553 (Conc!12000) Bool)

(assert (=> b!3691256 (= e!2285714 (and (inv!52553 (c!638340 (dynLambda!17117 (toChars!8084 (transformation!5905 (rule!8757 lt!1292402))) (value!188754 lt!1292402)))) tp!1121557))))

(declare-fun result!260386 () Bool)

(declare-fun inv!52554 (BalanceConc!23614) Bool)

(assert (=> tb!213861 (= result!260386 (and (inv!52554 (dynLambda!17117 (toChars!8084 (transformation!5905 (rule!8757 lt!1292402))) (value!188754 lt!1292402))) e!2285714))))

(assert (= tb!213861 b!3691256))

(declare-fun m!4203959 () Bool)

(assert (=> b!3691256 m!4203959))

(declare-fun m!4203961 () Bool)

(assert (=> tb!213861 m!4203961))

(assert (=> d!1083292 t!301355))

(declare-fun b_and!275715 () Bool)

(assert (= b_and!275709 (and (=> t!301355 result!260386) b_and!275715)))

(declare-fun m!4203963 () Bool)

(assert (=> d!1083292 m!4203963))

(declare-fun m!4203965 () Bool)

(assert (=> d!1083292 m!4203965))

(assert (=> b!3691083 d!1083292))

(declare-fun d!1083294 () Bool)

(declare-fun isEmpty!23304 (Option!8421) Bool)

(assert (=> d!1083294 (= (isDefined!6616 lt!1292400) (not (isEmpty!23304 lt!1292400)))))

(declare-fun bs!574099 () Bool)

(assert (= bs!574099 d!1083294))

(declare-fun m!4203967 () Bool)

(assert (=> bs!574099 m!4203967))

(assert (=> b!3691083 d!1083294))

(declare-fun d!1083296 () Bool)

(assert (=> d!1083296 (isPrefix!3258 lt!1292408 (++!9736 input!3129 suffix!1448))))

(declare-fun lt!1292488 () Unit!57123)

(declare-fun choose!22106 (List!39206 List!39206 List!39206) Unit!57123)

(assert (=> d!1083296 (= lt!1292488 (choose!22106 lt!1292408 input!3129 suffix!1448))))

(assert (=> d!1083296 (isPrefix!3258 lt!1292408 input!3129)))

(assert (=> d!1083296 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!587 lt!1292408 input!3129 suffix!1448) lt!1292488)))

(declare-fun bs!574100 () Bool)

(assert (= bs!574100 d!1083296))

(assert (=> bs!574100 m!4203715))

(assert (=> bs!574100 m!4203715))

(declare-fun m!4203969 () Bool)

(assert (=> bs!574100 m!4203969))

(declare-fun m!4203971 () Bool)

(assert (=> bs!574100 m!4203971))

(declare-fun m!4203973 () Bool)

(assert (=> bs!574100 m!4203973))

(assert (=> b!3691083 d!1083296))

(declare-fun d!1083298 () Bool)

(declare-fun list!14621 (Conc!12001) List!39207)

(assert (=> d!1083298 (= (list!14617 (_1!22638 lt!1292403)) (list!14621 (c!638341 (_1!22638 lt!1292403))))))

(declare-fun bs!574101 () Bool)

(assert (= bs!574101 d!1083298))

(declare-fun m!4203975 () Bool)

(assert (=> bs!574101 m!4203975))

(assert (=> b!3691083 d!1083298))

(declare-fun b!3691257 () Bool)

(declare-fun e!2285719 () Bool)

(declare-fun e!2285718 () Bool)

(assert (=> b!3691257 (= e!2285719 e!2285718)))

(declare-fun res!1500586 () Bool)

(assert (=> b!3691257 (=> (not res!1500586) (not e!2285718))))

(declare-fun lt!1292489 () Bool)

(assert (=> b!3691257 (= res!1500586 (not lt!1292489))))

(declare-fun b!3691258 () Bool)

(declare-fun e!2285721 () Bool)

(assert (=> b!3691258 (= e!2285721 (nullable!3722 (regex!5905 (rule!8757 lt!1292402))))))

(declare-fun b!3691259 () Bool)

(declare-fun e!2285715 () Bool)

(declare-fun e!2285717 () Bool)

(assert (=> b!3691259 (= e!2285715 e!2285717)))

(declare-fun c!638364 () Bool)

(assert (=> b!3691259 (= c!638364 (is-EmptyLang!10664 (regex!5905 (rule!8757 lt!1292402))))))

(declare-fun b!3691260 () Bool)

(declare-fun res!1500583 () Bool)

(declare-fun e!2285716 () Bool)

(assert (=> b!3691260 (=> (not res!1500583) (not e!2285716))))

(assert (=> b!3691260 (= res!1500583 (isEmpty!23303 (tail!5718 lt!1292408)))))

(declare-fun b!3691261 () Bool)

(assert (=> b!3691261 (= e!2285716 (= (head!7981 lt!1292408) (c!638339 (regex!5905 (rule!8757 lt!1292402)))))))

(declare-fun b!3691262 () Bool)

(declare-fun res!1500585 () Bool)

(declare-fun e!2285720 () Bool)

(assert (=> b!3691262 (=> res!1500585 e!2285720)))

(assert (=> b!3691262 (= res!1500585 (not (isEmpty!23303 (tail!5718 lt!1292408))))))

(declare-fun b!3691263 () Bool)

(assert (=> b!3691263 (= e!2285717 (not lt!1292489))))

(declare-fun d!1083300 () Bool)

(assert (=> d!1083300 e!2285715))

(declare-fun c!638365 () Bool)

(assert (=> d!1083300 (= c!638365 (is-EmptyExpr!10664 (regex!5905 (rule!8757 lt!1292402))))))

(assert (=> d!1083300 (= lt!1292489 e!2285721)))

(declare-fun c!638363 () Bool)

(assert (=> d!1083300 (= c!638363 (isEmpty!23303 lt!1292408))))

(assert (=> d!1083300 (validRegex!4884 (regex!5905 (rule!8757 lt!1292402)))))

(assert (=> d!1083300 (= (matchR!5219 (regex!5905 (rule!8757 lt!1292402)) lt!1292408) lt!1292489)))

(declare-fun b!3691264 () Bool)

(assert (=> b!3691264 (= e!2285721 (matchR!5219 (derivativeStep!3268 (regex!5905 (rule!8757 lt!1292402)) (head!7981 lt!1292408)) (tail!5718 lt!1292408)))))

(declare-fun b!3691265 () Bool)

(declare-fun call!266956 () Bool)

(assert (=> b!3691265 (= e!2285715 (= lt!1292489 call!266956))))

(declare-fun bm!266951 () Bool)

(assert (=> bm!266951 (= call!266956 (isEmpty!23303 lt!1292408))))

(declare-fun b!3691266 () Bool)

(declare-fun res!1500584 () Bool)

(assert (=> b!3691266 (=> res!1500584 e!2285719)))

(assert (=> b!3691266 (= res!1500584 (not (is-ElementMatch!10664 (regex!5905 (rule!8757 lt!1292402)))))))

(assert (=> b!3691266 (= e!2285717 e!2285719)))

(declare-fun b!3691267 () Bool)

(declare-fun res!1500590 () Bool)

(assert (=> b!3691267 (=> res!1500590 e!2285719)))

(assert (=> b!3691267 (= res!1500590 e!2285716)))

(declare-fun res!1500587 () Bool)

(assert (=> b!3691267 (=> (not res!1500587) (not e!2285716))))

(assert (=> b!3691267 (= res!1500587 lt!1292489)))

(declare-fun b!3691268 () Bool)

(declare-fun res!1500589 () Bool)

(assert (=> b!3691268 (=> (not res!1500589) (not e!2285716))))

(assert (=> b!3691268 (= res!1500589 (not call!266956))))

(declare-fun b!3691269 () Bool)

(assert (=> b!3691269 (= e!2285720 (not (= (head!7981 lt!1292408) (c!638339 (regex!5905 (rule!8757 lt!1292402))))))))

(declare-fun b!3691270 () Bool)

(assert (=> b!3691270 (= e!2285718 e!2285720)))

(declare-fun res!1500588 () Bool)

(assert (=> b!3691270 (=> res!1500588 e!2285720)))

(assert (=> b!3691270 (= res!1500588 call!266956)))

(assert (= (and d!1083300 c!638363) b!3691258))

(assert (= (and d!1083300 (not c!638363)) b!3691264))

(assert (= (and d!1083300 c!638365) b!3691265))

(assert (= (and d!1083300 (not c!638365)) b!3691259))

(assert (= (and b!3691259 c!638364) b!3691263))

(assert (= (and b!3691259 (not c!638364)) b!3691266))

(assert (= (and b!3691266 (not res!1500584)) b!3691267))

(assert (= (and b!3691267 res!1500587) b!3691268))

(assert (= (and b!3691268 res!1500589) b!3691260))

(assert (= (and b!3691260 res!1500583) b!3691261))

(assert (= (and b!3691267 (not res!1500590)) b!3691257))

(assert (= (and b!3691257 res!1500586) b!3691270))

(assert (= (and b!3691270 (not res!1500588)) b!3691262))

(assert (= (and b!3691262 (not res!1500585)) b!3691269))

(assert (= (or b!3691265 b!3691268 b!3691270) bm!266951))

(assert (=> bm!266951 m!4203821))

(assert (=> b!3691269 m!4203823))

(assert (=> d!1083300 m!4203821))

(declare-fun m!4203977 () Bool)

(assert (=> d!1083300 m!4203977))

(assert (=> b!3691264 m!4203823))

(assert (=> b!3691264 m!4203823))

(declare-fun m!4203979 () Bool)

(assert (=> b!3691264 m!4203979))

(assert (=> b!3691264 m!4203829))

(assert (=> b!3691264 m!4203979))

(assert (=> b!3691264 m!4203829))

(declare-fun m!4203981 () Bool)

(assert (=> b!3691264 m!4203981))

(assert (=> b!3691262 m!4203829))

(assert (=> b!3691262 m!4203829))

(assert (=> b!3691262 m!4203833))

(declare-fun m!4203983 () Bool)

(assert (=> b!3691258 m!4203983))

(assert (=> b!3691260 m!4203829))

(assert (=> b!3691260 m!4203829))

(assert (=> b!3691260 m!4203833))

(assert (=> b!3691261 m!4203823))

(assert (=> b!3691083 d!1083300))

(declare-fun b!3691283 () Bool)

(declare-fun lt!1292497 () Unit!57123)

(declare-fun lt!1292498 () Unit!57123)

(assert (=> b!3691283 (= lt!1292497 lt!1292498)))

(assert (=> b!3691283 (rulesInvariant!4891 thiss!25197 (t!301349 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!642 (LexerInterface!5494 Rule!11610 List!39208) Unit!57123)

(assert (=> b!3691283 (= lt!1292498 (lemmaInvariantOnRulesThenOnTail!642 thiss!25197 (h!44504 rules!3568) (t!301349 rules!3568)))))

(declare-fun e!2285731 () Option!8421)

(assert (=> b!3691283 (= e!2285731 (getRuleFromTag!1487 thiss!25197 (t!301349 rules!3568) (tag!6725 (rule!8757 lt!1292402))))))

(declare-fun b!3691284 () Bool)

(assert (=> b!3691284 (= e!2285731 None!8420)))

(declare-fun b!3691285 () Bool)

(declare-fun e!2285733 () Option!8421)

(assert (=> b!3691285 (= e!2285733 (Some!8420 (h!44504 rules!3568)))))

(declare-fun d!1083302 () Bool)

(declare-fun e!2285730 () Bool)

(assert (=> d!1083302 e!2285730))

(declare-fun res!1500595 () Bool)

(assert (=> d!1083302 (=> res!1500595 e!2285730)))

(declare-fun lt!1292496 () Option!8421)

(assert (=> d!1083302 (= res!1500595 (isEmpty!23304 lt!1292496))))

(assert (=> d!1083302 (= lt!1292496 e!2285733)))

(declare-fun c!638371 () Bool)

(assert (=> d!1083302 (= c!638371 (and (is-Cons!39084 rules!3568) (= (tag!6725 (h!44504 rules!3568)) (tag!6725 (rule!8757 lt!1292402)))))))

(assert (=> d!1083302 (rulesInvariant!4891 thiss!25197 rules!3568)))

(assert (=> d!1083302 (= (getRuleFromTag!1487 thiss!25197 rules!3568 (tag!6725 (rule!8757 lt!1292402))) lt!1292496)))

(declare-fun b!3691286 () Bool)

(declare-fun e!2285732 () Bool)

(assert (=> b!3691286 (= e!2285730 e!2285732)))

(declare-fun res!1500596 () Bool)

(assert (=> b!3691286 (=> (not res!1500596) (not e!2285732))))

(assert (=> b!3691286 (= res!1500596 (contains!7804 rules!3568 (get!12970 lt!1292496)))))

(declare-fun b!3691287 () Bool)

(assert (=> b!3691287 (= e!2285733 e!2285731)))

(declare-fun c!638370 () Bool)

(assert (=> b!3691287 (= c!638370 (and (is-Cons!39084 rules!3568) (not (= (tag!6725 (h!44504 rules!3568)) (tag!6725 (rule!8757 lt!1292402))))))))

(declare-fun b!3691288 () Bool)

(assert (=> b!3691288 (= e!2285732 (= (tag!6725 (get!12970 lt!1292496)) (tag!6725 (rule!8757 lt!1292402))))))

(assert (= (and d!1083302 c!638371) b!3691285))

(assert (= (and d!1083302 (not c!638371)) b!3691287))

(assert (= (and b!3691287 c!638370) b!3691283))

(assert (= (and b!3691287 (not c!638370)) b!3691284))

(assert (= (and d!1083302 (not res!1500595)) b!3691286))

(assert (= (and b!3691286 res!1500596) b!3691288))

(declare-fun m!4203985 () Bool)

(assert (=> b!3691283 m!4203985))

(declare-fun m!4203987 () Bool)

(assert (=> b!3691283 m!4203987))

(declare-fun m!4203989 () Bool)

(assert (=> b!3691283 m!4203989))

(declare-fun m!4203991 () Bool)

(assert (=> d!1083302 m!4203991))

(assert (=> d!1083302 m!4203705))

(declare-fun m!4203993 () Bool)

(assert (=> b!3691286 m!4203993))

(assert (=> b!3691286 m!4203993))

(declare-fun m!4203995 () Bool)

(assert (=> b!3691286 m!4203995))

(assert (=> b!3691288 m!4203993))

(assert (=> b!3691083 d!1083302))

(declare-fun d!1083304 () Bool)

(assert (=> d!1083304 (= (isDefined!6617 lt!1292399) (not (isEmpty!23299 lt!1292399)))))

(declare-fun bs!574102 () Bool)

(assert (= bs!574102 d!1083304))

(assert (=> bs!574102 m!4203747))

(assert (=> b!3691092 d!1083304))

(declare-fun d!1083306 () Bool)

(declare-fun lt!1292501 () Bool)

(declare-fun isEmpty!23307 (List!39207) Bool)

(assert (=> d!1083306 (= lt!1292501 (isEmpty!23307 (list!14617 (_1!22638 lt!1292403))))))

(declare-fun isEmpty!23308 (Conc!12001) Bool)

(assert (=> d!1083306 (= lt!1292501 (isEmpty!23308 (c!638341 (_1!22638 lt!1292403))))))

(assert (=> d!1083306 (= (isEmpty!23297 (_1!22638 lt!1292403)) lt!1292501)))

(declare-fun bs!574103 () Bool)

(assert (= bs!574103 d!1083306))

(assert (=> bs!574103 m!4203719))

(assert (=> bs!574103 m!4203719))

(declare-fun m!4203997 () Bool)

(assert (=> bs!574103 m!4203997))

(declare-fun m!4203999 () Bool)

(assert (=> bs!574103 m!4203999))

(assert (=> b!3691081 d!1083306))

(declare-fun d!1083308 () Bool)

(declare-fun e!2285742 () Bool)

(assert (=> d!1083308 e!2285742))

(declare-fun res!1500604 () Bool)

(assert (=> d!1083308 (=> (not res!1500604) (not e!2285742))))

(declare-fun e!2285741 () Bool)

(assert (=> d!1083308 (= res!1500604 e!2285741)))

(declare-fun c!638374 () Bool)

(declare-fun lt!1292504 () tuple2!39008)

(declare-fun size!29870 (BalanceConc!23616) Int)

(assert (=> d!1083308 (= c!638374 (> (size!29870 (_1!22638 lt!1292504)) 0))))

(declare-fun lexTailRecV2!1149 (LexerInterface!5494 List!39208 BalanceConc!23614 BalanceConc!23614 BalanceConc!23614 BalanceConc!23616) tuple2!39008)

(assert (=> d!1083308 (= lt!1292504 (lexTailRecV2!1149 thiss!25197 rules!3568 (seqFromList!4454 input!3129) (BalanceConc!23615 Empty!12000) (seqFromList!4454 input!3129) (BalanceConc!23617 Empty!12001)))))

(assert (=> d!1083308 (= (lex!2635 thiss!25197 rules!3568 (seqFromList!4454 input!3129)) lt!1292504)))

(declare-fun b!3691299 () Bool)

(declare-datatypes ((tuple2!39018 0))(
  ( (tuple2!39019 (_1!22643 List!39207) (_2!22643 List!39206)) )
))
(declare-fun lexList!1543 (LexerInterface!5494 List!39208 List!39206) tuple2!39018)

(assert (=> b!3691299 (= e!2285742 (= (list!14616 (_2!22638 lt!1292504)) (_2!22643 (lexList!1543 thiss!25197 rules!3568 (list!14616 (seqFromList!4454 input!3129))))))))

(declare-fun b!3691300 () Bool)

(declare-fun e!2285740 () Bool)

(assert (=> b!3691300 (= e!2285740 (not (isEmpty!23297 (_1!22638 lt!1292504))))))

(declare-fun b!3691301 () Bool)

(assert (=> b!3691301 (= e!2285741 e!2285740)))

(declare-fun res!1500603 () Bool)

(declare-fun size!29871 (BalanceConc!23614) Int)

(assert (=> b!3691301 (= res!1500603 (< (size!29871 (_2!22638 lt!1292504)) (size!29871 (seqFromList!4454 input!3129))))))

(assert (=> b!3691301 (=> (not res!1500603) (not e!2285740))))

(declare-fun b!3691302 () Bool)

(declare-fun res!1500605 () Bool)

(assert (=> b!3691302 (=> (not res!1500605) (not e!2285742))))

(assert (=> b!3691302 (= res!1500605 (= (list!14617 (_1!22638 lt!1292504)) (_1!22643 (lexList!1543 thiss!25197 rules!3568 (list!14616 (seqFromList!4454 input!3129))))))))

(declare-fun b!3691303 () Bool)

(assert (=> b!3691303 (= e!2285741 (= (_2!22638 lt!1292504) (seqFromList!4454 input!3129)))))

(assert (= (and d!1083308 c!638374) b!3691301))

(assert (= (and d!1083308 (not c!638374)) b!3691303))

(assert (= (and b!3691301 res!1500603) b!3691300))

(assert (= (and d!1083308 res!1500604) b!3691302))

(assert (= (and b!3691302 res!1500605) b!3691299))

(declare-fun m!4204001 () Bool)

(assert (=> b!3691300 m!4204001))

(declare-fun m!4204003 () Bool)

(assert (=> b!3691299 m!4204003))

(assert (=> b!3691299 m!4203755))

(declare-fun m!4204005 () Bool)

(assert (=> b!3691299 m!4204005))

(assert (=> b!3691299 m!4204005))

(declare-fun m!4204007 () Bool)

(assert (=> b!3691299 m!4204007))

(declare-fun m!4204009 () Bool)

(assert (=> d!1083308 m!4204009))

(assert (=> d!1083308 m!4203755))

(assert (=> d!1083308 m!4203755))

(declare-fun m!4204011 () Bool)

(assert (=> d!1083308 m!4204011))

(declare-fun m!4204013 () Bool)

(assert (=> b!3691302 m!4204013))

(assert (=> b!3691302 m!4203755))

(assert (=> b!3691302 m!4204005))

(assert (=> b!3691302 m!4204005))

(assert (=> b!3691302 m!4204007))

(declare-fun m!4204015 () Bool)

(assert (=> b!3691301 m!4204015))

(assert (=> b!3691301 m!4203755))

(declare-fun m!4204017 () Bool)

(assert (=> b!3691301 m!4204017))

(assert (=> b!3691081 d!1083308))

(declare-fun d!1083310 () Bool)

(declare-fun fromListB!2059 (List!39206) BalanceConc!23614)

(assert (=> d!1083310 (= (seqFromList!4454 input!3129) (fromListB!2059 input!3129))))

(declare-fun bs!574104 () Bool)

(assert (= bs!574104 d!1083310))

(declare-fun m!4204019 () Bool)

(assert (=> bs!574104 m!4204019))

(assert (=> b!3691081 d!1083310))

(declare-fun d!1083312 () Bool)

(declare-fun res!1500608 () Bool)

(declare-fun e!2285745 () Bool)

(assert (=> d!1083312 (=> (not res!1500608) (not e!2285745))))

(declare-fun rulesValid!2280 (LexerInterface!5494 List!39208) Bool)

(assert (=> d!1083312 (= res!1500608 (rulesValid!2280 thiss!25197 rules!3568))))

(assert (=> d!1083312 (= (rulesInvariant!4891 thiss!25197 rules!3568) e!2285745)))

(declare-fun b!3691306 () Bool)

(declare-datatypes ((List!39213 0))(
  ( (Nil!39089) (Cons!39089 (h!44509 String!44011) (t!301362 List!39213)) )
))
(declare-fun noDuplicateTag!2276 (LexerInterface!5494 List!39208 List!39213) Bool)

(assert (=> b!3691306 (= e!2285745 (noDuplicateTag!2276 thiss!25197 rules!3568 Nil!39089))))

(assert (= (and d!1083312 res!1500608) b!3691306))

(declare-fun m!4204021 () Bool)

(assert (=> d!1083312 m!4204021))

(declare-fun m!4204023 () Bool)

(assert (=> b!3691306 m!4204023))

(assert (=> b!3691082 d!1083312))

(declare-fun b!3691320 () Bool)

(declare-fun e!2285748 () Bool)

(declare-fun tp!1121571 () Bool)

(declare-fun tp!1121572 () Bool)

(assert (=> b!3691320 (= e!2285748 (and tp!1121571 tp!1121572))))

(assert (=> b!3691089 (= tp!1121536 e!2285748)))

(declare-fun b!3691318 () Bool)

(declare-fun tp!1121568 () Bool)

(declare-fun tp!1121569 () Bool)

(assert (=> b!3691318 (= e!2285748 (and tp!1121568 tp!1121569))))

(declare-fun b!3691317 () Bool)

(assert (=> b!3691317 (= e!2285748 tp_is_empty!18411)))

(declare-fun b!3691319 () Bool)

(declare-fun tp!1121570 () Bool)

(assert (=> b!3691319 (= e!2285748 tp!1121570)))

(assert (= (and b!3691089 (is-ElementMatch!10664 (regex!5905 (h!44504 rules!3568)))) b!3691317))

(assert (= (and b!3691089 (is-Concat!16800 (regex!5905 (h!44504 rules!3568)))) b!3691318))

(assert (= (and b!3691089 (is-Star!10664 (regex!5905 (h!44504 rules!3568)))) b!3691319))

(assert (= (and b!3691089 (is-Union!10664 (regex!5905 (h!44504 rules!3568)))) b!3691320))

(declare-fun b!3691325 () Bool)

(declare-fun e!2285751 () Bool)

(declare-fun tp!1121575 () Bool)

(assert (=> b!3691325 (= e!2285751 (and tp_is_empty!18411 tp!1121575))))

(assert (=> b!3691093 (= tp!1121533 e!2285751)))

(assert (= (and b!3691093 (is-Cons!39082 (t!301347 input!3129))) b!3691325))

(declare-fun b!3691336 () Bool)

(declare-fun b_free!97953 () Bool)

(declare-fun b_next!98657 () Bool)

(assert (=> b!3691336 (= b_free!97953 (not b_next!98657))))

(declare-fun tp!1121586 () Bool)

(declare-fun b_and!275717 () Bool)

(assert (=> b!3691336 (= tp!1121586 b_and!275717)))

(declare-fun b_free!97955 () Bool)

(declare-fun b_next!98659 () Bool)

(assert (=> b!3691336 (= b_free!97955 (not b_next!98659))))

(declare-fun t!301357 () Bool)

(declare-fun tb!213863 () Bool)

(assert (=> (and b!3691336 (= (toChars!8084 (transformation!5905 (h!44504 (t!301349 rules!3568)))) (toChars!8084 (transformation!5905 (rule!8757 lt!1292402)))) t!301357) tb!213863))

(declare-fun result!260396 () Bool)

(assert (= result!260396 result!260386))

(assert (=> d!1083292 t!301357))

(declare-fun b_and!275719 () Bool)

(declare-fun tp!1121585 () Bool)

(assert (=> b!3691336 (= tp!1121585 (and (=> t!301357 result!260396) b_and!275719))))

(declare-fun e!2285761 () Bool)

(assert (=> b!3691336 (= e!2285761 (and tp!1121586 tp!1121585))))

(declare-fun tp!1121584 () Bool)

(declare-fun b!3691335 () Bool)

(declare-fun e!2285763 () Bool)

(assert (=> b!3691335 (= e!2285763 (and tp!1121584 (inv!52548 (tag!6725 (h!44504 (t!301349 rules!3568)))) (inv!52551 (transformation!5905 (h!44504 (t!301349 rules!3568)))) e!2285761))))

(declare-fun b!3691334 () Bool)

(declare-fun e!2285762 () Bool)

(declare-fun tp!1121587 () Bool)

(assert (=> b!3691334 (= e!2285762 (and e!2285763 tp!1121587))))

(assert (=> b!3691087 (= tp!1121531 e!2285762)))

(assert (= b!3691335 b!3691336))

(assert (= b!3691334 b!3691335))

(assert (= (and b!3691087 (is-Cons!39084 (t!301349 rules!3568))) b!3691334))

(declare-fun m!4204025 () Bool)

(assert (=> b!3691335 m!4204025))

(declare-fun m!4204027 () Bool)

(assert (=> b!3691335 m!4204027))

(declare-fun b!3691337 () Bool)

(declare-fun e!2285764 () Bool)

(declare-fun tp!1121588 () Bool)

(assert (=> b!3691337 (= e!2285764 (and tp_is_empty!18411 tp!1121588))))

(assert (=> b!3691091 (= tp!1121532 e!2285764)))

(assert (= (and b!3691091 (is-Cons!39082 (t!301347 suffix!1448))) b!3691337))

(push 1)

(assert (not d!1083266))

(assert (not b!3691219))

(assert (not b!3691225))

(assert (not b!3691244))

(assert b_and!275717)

(assert (not b!3691306))

(assert (not b!3691325))

(assert (not b!3691203))

(assert (not b_next!98649))

(assert (not tb!213861))

(assert (not b!3691196))

(assert (not b!3691227))

(assert (not d!1083280))

(assert (not d!1083312))

(assert b_and!275719)

(assert (not b!3691224))

(assert (not b!3691228))

(assert (not bm!266946))

(assert (not b!3691262))

(assert (not b!3691239))

(assert (not b!3691222))

(assert (not b!3691269))

(assert (not b!3691217))

(assert (not b!3691167))

(assert (not b!3691335))

(assert (not d!1083290))

(assert (not d!1083288))

(assert (not d!1083310))

(assert (not b_next!98659))

(assert (not b_next!98657))

(assert (not bm!266949))

(assert (not d!1083306))

(assert (not b!3691204))

(assert tp_is_empty!18411)

(assert (not d!1083302))

(assert (not b!3691176))

(assert (not d!1083294))

(assert (not b_next!98651))

(assert (not b!3691337))

(assert (not b!3691135))

(assert (not b!3691299))

(assert (not d!1083292))

(assert (not b!3691300))

(assert (not b!3691334))

(assert (not b!3691201))

(assert (not d!1083300))

(assert (not b!3691258))

(assert (not d!1083260))

(assert (not b!3691198))

(assert (not b!3691214))

(assert (not b!3691260))

(assert (not b!3691286))

(assert (not b!3691318))

(assert (not d!1083278))

(assert (not b!3691165))

(assert (not b!3691250))

(assert (not b!3691319))

(assert (not d!1083304))

(assert (not b!3691221))

(assert (not b!3691202))

(assert (not b!3691169))

(assert (not b!3691288))

(assert (not d!1083298))

(assert (not b!3691283))

(assert (not b!3691200))

(assert (not b!3691171))

(assert (not b!3691320))

(assert (not d!1083308))

(assert (not b!3691229))

(assert (not b!3691264))

(assert (not d!1083276))

(assert (not b!3691256))

(assert (not b!3691261))

(assert (not b!3691301))

(assert b_and!275715)

(assert (not b!3691218))

(assert (not d!1083296))

(assert (not b!3691197))

(assert (not b!3691240))

(assert (not b!3691302))

(assert (not b_lambda!109511))

(assert (not d!1083258))

(assert (not b!3691243))

(assert (not b!3691216))

(assert (not b!3691168))

(assert (not b!3691215))

(assert (not b!3691223))

(assert (not d!1083286))

(assert (not bm!266950))

(assert b_and!275707)

(assert (not bm!266951))

(assert (not b!3691251))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98649))

(assert b_and!275719)

(assert (not b_next!98651))

(assert b_and!275717)

(assert b_and!275715)

(assert b_and!275707)

(assert (not b_next!98659))

(assert (not b_next!98657))

(check-sat)

(pop 1)

