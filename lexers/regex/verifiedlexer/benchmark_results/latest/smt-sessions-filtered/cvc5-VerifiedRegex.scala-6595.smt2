; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348552 () Bool)

(assert start!348552)

(declare-fun b!3699796 () Bool)

(declare-fun b_free!98545 () Bool)

(declare-fun b_next!99249 () Bool)

(assert (=> b!3699796 (= b_free!98545 (not b_next!99249))))

(declare-fun tp!1124634 () Bool)

(declare-fun b_and!276639 () Bool)

(assert (=> b!3699796 (= tp!1124634 b_and!276639)))

(declare-fun b_free!98547 () Bool)

(declare-fun b_next!99251 () Bool)

(assert (=> b!3699796 (= b_free!98547 (not b_next!99251))))

(declare-fun tp!1124629 () Bool)

(declare-fun b_and!276641 () Bool)

(assert (=> b!3699796 (= tp!1124629 b_and!276641)))

(declare-fun b!3699806 () Bool)

(declare-fun b_free!98549 () Bool)

(declare-fun b_next!99253 () Bool)

(assert (=> b!3699806 (= b_free!98549 (not b_next!99253))))

(declare-fun tp!1124630 () Bool)

(declare-fun b_and!276643 () Bool)

(assert (=> b!3699806 (= tp!1124630 b_and!276643)))

(declare-fun b_free!98551 () Bool)

(declare-fun b_next!99255 () Bool)

(assert (=> b!3699806 (= b_free!98551 (not b_next!99255))))

(declare-fun tp!1124631 () Bool)

(declare-fun b_and!276645 () Bool)

(assert (=> b!3699806 (= tp!1124631 b_and!276645)))

(declare-fun b!3699795 () Bool)

(declare-fun res!1504778 () Bool)

(declare-fun e!2291268 () Bool)

(assert (=> b!3699795 (=> (not res!1504778) (not e!2291268))))

(declare-datatypes ((List!39425 0))(
  ( (Nil!39301) (Cons!39301 (h!44721 (_ BitVec 16)) (t!301946 List!39425)) )
))
(declare-datatypes ((TokenValue!6199 0))(
  ( (FloatLiteralValue!12398 (text!43838 List!39425)) (TokenValueExt!6198 (__x!24615 Int)) (Broken!30995 (value!190546 List!39425)) (Object!6322) (End!6199) (Def!6199) (Underscore!6199) (Match!6199) (Else!6199) (Error!6199) (Case!6199) (If!6199) (Extends!6199) (Abstract!6199) (Class!6199) (Val!6199) (DelimiterValue!12398 (del!6259 List!39425)) (KeywordValue!6205 (value!190547 List!39425)) (CommentValue!12398 (value!190548 List!39425)) (WhitespaceValue!12398 (value!190549 List!39425)) (IndentationValue!6199 (value!190550 List!39425)) (String!44330) (Int32!6199) (Broken!30996 (value!190551 List!39425)) (Boolean!6200) (Unit!57272) (OperatorValue!6202 (op!6259 List!39425)) (IdentifierValue!12398 (value!190552 List!39425)) (IdentifierValue!12399 (value!190553 List!39425)) (WhitespaceValue!12399 (value!190554 List!39425)) (True!12398) (False!12398) (Broken!30997 (value!190555 List!39425)) (Broken!30998 (value!190556 List!39425)) (True!12399) (RightBrace!6199) (RightBracket!6199) (Colon!6199) (Null!6199) (Comma!6199) (LeftBracket!6199) (False!12399) (LeftBrace!6199) (ImaginaryLiteralValue!6199 (text!43839 List!39425)) (StringLiteralValue!18597 (value!190557 List!39425)) (EOFValue!6199 (value!190558 List!39425)) (IdentValue!6199 (value!190559 List!39425)) (DelimiterValue!12399 (value!190560 List!39425)) (DedentValue!6199 (value!190561 List!39425)) (NewLineValue!6199 (value!190562 List!39425)) (IntegerValue!18597 (value!190563 (_ BitVec 32)) (text!43840 List!39425)) (IntegerValue!18598 (value!190564 Int) (text!43841 List!39425)) (Times!6199) (Or!6199) (Equal!6199) (Minus!6199) (Broken!30999 (value!190565 List!39425)) (And!6199) (Div!6199) (LessEqual!6199) (Mod!6199) (Concat!16927) (Not!6199) (Plus!6199) (SpaceValue!6199 (value!190566 List!39425)) (IntegerValue!18599 (value!190567 Int) (text!43842 List!39425)) (StringLiteralValue!18598 (text!43843 List!39425)) (FloatLiteralValue!12399 (text!43844 List!39425)) (BytesLiteralValue!6199 (value!190568 List!39425)) (CommentValue!12399 (value!190569 List!39425)) (StringLiteralValue!18599 (value!190570 List!39425)) (ErrorTokenValue!6199 (msg!6260 List!39425)) )
))
(declare-datatypes ((C!21642 0))(
  ( (C!21643 (val!12869 Int)) )
))
(declare-datatypes ((Regex!10728 0))(
  ( (ElementMatch!10728 (c!639379 C!21642)) (Concat!16928 (regOne!21968 Regex!10728) (regTwo!21968 Regex!10728)) (EmptyExpr!10728) (Star!10728 (reg!11057 Regex!10728)) (EmptyLang!10728) (Union!10728 (regOne!21969 Regex!10728) (regTwo!21969 Regex!10728)) )
))
(declare-datatypes ((String!44331 0))(
  ( (String!44332 (value!190571 String)) )
))
(declare-datatypes ((List!39426 0))(
  ( (Nil!39302) (Cons!39302 (h!44722 C!21642) (t!301947 List!39426)) )
))
(declare-datatypes ((IArray!24137 0))(
  ( (IArray!24138 (innerList!12126 List!39426)) )
))
(declare-datatypes ((Conc!12066 0))(
  ( (Node!12066 (left!30601 Conc!12066) (right!30931 Conc!12066) (csize!24362 Int) (cheight!12277 Int)) (Leaf!18662 (xs!15268 IArray!24137) (csize!24363 Int)) (Empty!12066) )
))
(declare-datatypes ((BalanceConc!23746 0))(
  ( (BalanceConc!23747 (c!639380 Conc!12066)) )
))
(declare-datatypes ((TokenValueInjection!11826 0))(
  ( (TokenValueInjection!11827 (toValue!8305 Int) (toChars!8164 Int)) )
))
(declare-datatypes ((Rule!11738 0))(
  ( (Rule!11739 (regex!5969 Regex!10728) (tag!6801 String!44331) (isSeparator!5969 Bool) (transformation!5969 TokenValueInjection!11826)) )
))
(declare-datatypes ((List!39427 0))(
  ( (Nil!39303) (Cons!39303 (h!44723 Rule!11738) (t!301948 List!39427)) )
))
(declare-fun rules!3598 () List!39427)

(declare-fun isEmpty!23423 (List!39427) Bool)

(assert (=> b!3699795 (= res!1504778 (not (isEmpty!23423 (t!301948 rules!3598))))))

(declare-fun e!2291263 () Bool)

(assert (=> b!3699796 (= e!2291263 (and tp!1124634 tp!1124629))))

(declare-fun b!3699797 () Bool)

(declare-fun e!2291261 () Bool)

(declare-fun e!2291274 () Bool)

(declare-fun tp!1124627 () Bool)

(assert (=> b!3699797 (= e!2291261 (and e!2291274 tp!1124627))))

(declare-fun b!3699798 () Bool)

(declare-fun e!2291272 () Bool)

(declare-fun tp_is_empty!18531 () Bool)

(declare-fun tp!1124635 () Bool)

(assert (=> b!3699798 (= e!2291272 (and tp_is_empty!18531 tp!1124635))))

(declare-fun b!3699799 () Bool)

(declare-datatypes ((Token!11292 0))(
  ( (Token!11293 (value!190572 TokenValue!6199) (rule!8833 Rule!11738) (size!29973 Int) (originalCharacters!6677 List!39426)) )
))
(declare-fun token!544 () Token!11292)

(declare-fun e!2291273 () Bool)

(declare-fun tp!1124628 () Bool)

(declare-fun inv!52819 (String!44331) Bool)

(declare-fun inv!52822 (TokenValueInjection!11826) Bool)

(assert (=> b!3699799 (= e!2291273 (and tp!1124628 (inv!52819 (tag!6801 (rule!8833 token!544))) (inv!52822 (transformation!5969 (rule!8833 token!544))) e!2291263))))

(declare-fun b!3699800 () Bool)

(declare-fun e!2291271 () Bool)

(assert (=> b!3699800 (= e!2291268 (not e!2291271))))

(declare-fun res!1504776 () Bool)

(assert (=> b!3699800 (=> res!1504776 e!2291271)))

(declare-datatypes ((tuple2!39166 0))(
  ( (tuple2!39167 (_1!22717 Token!11292) (_2!22717 List!39426)) )
))
(declare-datatypes ((Option!8505 0))(
  ( (None!8504) (Some!8504 (v!38464 tuple2!39166)) )
))
(declare-fun lt!1294756 () Option!8505)

(declare-fun isDefined!6694 (Option!8505) Bool)

(assert (=> b!3699800 (= res!1504776 (not (isDefined!6694 lt!1294756)))))

(declare-fun input!3172 () List!39426)

(declare-datatypes ((LexerInterface!5558 0))(
  ( (LexerInterfaceExt!5555 (__x!24616 Int)) (Lexer!5556) )
))
(declare-fun thiss!25322 () LexerInterface!5558)

(declare-fun maxPrefix!3080 (LexerInterface!5558 List!39427 List!39426) Option!8505)

(assert (=> b!3699800 (= lt!1294756 (maxPrefix!3080 thiss!25322 (t!301948 rules!3598) input!3172))))

(declare-fun rulesInvariant!4955 (LexerInterface!5558 List!39427) Bool)

(assert (=> b!3699800 (rulesInvariant!4955 thiss!25322 (t!301948 rules!3598))))

(declare-datatypes ((Unit!57273 0))(
  ( (Unit!57274) )
))
(declare-fun lt!1294758 () Unit!57273)

(declare-fun lemmaInvariantOnRulesThenOnTail!665 (LexerInterface!5558 Rule!11738 List!39427) Unit!57273)

(assert (=> b!3699800 (= lt!1294758 (lemmaInvariantOnRulesThenOnTail!665 thiss!25322 (h!44723 rules!3598) (t!301948 rules!3598)))))

(declare-fun res!1504784 () Bool)

(declare-fun e!2291264 () Bool)

(assert (=> start!348552 (=> (not res!1504784) (not e!2291264))))

(assert (=> start!348552 (= res!1504784 (is-Lexer!5556 thiss!25322))))

(assert (=> start!348552 e!2291264))

(assert (=> start!348552 true))

(assert (=> start!348552 e!2291261))

(declare-fun e!2291269 () Bool)

(declare-fun inv!52823 (Token!11292) Bool)

(assert (=> start!348552 (and (inv!52823 token!544) e!2291269)))

(assert (=> start!348552 e!2291272))

(declare-fun b!3699801 () Bool)

(declare-fun res!1504782 () Bool)

(assert (=> b!3699801 (=> (not res!1504782) (not e!2291264))))

(assert (=> b!3699801 (= res!1504782 (rulesInvariant!4955 thiss!25322 rules!3598))))

(declare-fun tp!1124632 () Bool)

(declare-fun b!3699802 () Bool)

(declare-fun inv!21 (TokenValue!6199) Bool)

(assert (=> b!3699802 (= e!2291269 (and (inv!21 (value!190572 token!544)) e!2291273 tp!1124632))))

(declare-fun b!3699803 () Bool)

(declare-fun res!1504775 () Bool)

(declare-fun e!2291275 () Bool)

(assert (=> b!3699803 (=> (not res!1504775) (not e!2291275))))

(declare-fun lt!1294757 () Option!8505)

(declare-fun get!13077 (Option!8505) tuple2!39166)

(assert (=> b!3699803 (= res!1504775 (= (_1!22717 (get!13077 lt!1294757)) token!544))))

(declare-fun b!3699804 () Bool)

(declare-fun res!1504780 () Bool)

(assert (=> b!3699804 (=> (not res!1504780) (not e!2291264))))

(assert (=> b!3699804 (= res!1504780 (not (isEmpty!23423 rules!3598)))))

(declare-fun b!3699805 () Bool)

(declare-fun res!1504779 () Bool)

(assert (=> b!3699805 (=> (not res!1504779) (not e!2291275))))

(assert (=> b!3699805 (= res!1504779 (is-Cons!39303 rules!3598))))

(declare-fun e!2291267 () Bool)

(assert (=> b!3699806 (= e!2291267 (and tp!1124630 tp!1124631))))

(declare-fun b!3699807 () Bool)

(declare-fun e!2291270 () Bool)

(declare-fun lt!1294755 () Option!8505)

(assert (=> b!3699807 (= e!2291270 (not (= (_1!22717 (get!13077 lt!1294755)) token!544)))))

(declare-fun b!3699808 () Bool)

(assert (=> b!3699808 (= e!2291275 e!2291268)))

(declare-fun res!1504783 () Bool)

(assert (=> b!3699808 (=> (not res!1504783) (not e!2291268))))

(assert (=> b!3699808 (= res!1504783 e!2291270)))

(declare-fun res!1504777 () Bool)

(assert (=> b!3699808 (=> res!1504777 e!2291270)))

(assert (=> b!3699808 (= res!1504777 (not (isDefined!6694 lt!1294755)))))

(declare-fun maxPrefixOneRule!2190 (LexerInterface!5558 Rule!11738 List!39426) Option!8505)

(assert (=> b!3699808 (= lt!1294755 (maxPrefixOneRule!2190 thiss!25322 (h!44723 rules!3598) input!3172))))

(declare-fun b!3699809 () Bool)

(declare-fun tp!1124633 () Bool)

(assert (=> b!3699809 (= e!2291274 (and tp!1124633 (inv!52819 (tag!6801 (h!44723 rules!3598))) (inv!52822 (transformation!5969 (h!44723 rules!3598))) e!2291267))))

(declare-fun b!3699810 () Bool)

(assert (=> b!3699810 (= e!2291264 e!2291275)))

(declare-fun res!1504781 () Bool)

(assert (=> b!3699810 (=> (not res!1504781) (not e!2291275))))

(assert (=> b!3699810 (= res!1504781 (isDefined!6694 lt!1294757))))

(assert (=> b!3699810 (= lt!1294757 (maxPrefix!3080 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3699811 () Bool)

(assert (=> b!3699811 (= e!2291271 (= (_1!22717 (get!13077 lt!1294756)) token!544))))

(assert (= (and start!348552 res!1504784) b!3699801))

(assert (= (and b!3699801 res!1504782) b!3699804))

(assert (= (and b!3699804 res!1504780) b!3699810))

(assert (= (and b!3699810 res!1504781) b!3699803))

(assert (= (and b!3699803 res!1504775) b!3699805))

(assert (= (and b!3699805 res!1504779) b!3699808))

(assert (= (and b!3699808 (not res!1504777)) b!3699807))

(assert (= (and b!3699808 res!1504783) b!3699795))

(assert (= (and b!3699795 res!1504778) b!3699800))

(assert (= (and b!3699800 (not res!1504776)) b!3699811))

(assert (= b!3699809 b!3699806))

(assert (= b!3699797 b!3699809))

(assert (= (and start!348552 (is-Cons!39303 rules!3598)) b!3699797))

(assert (= b!3699799 b!3699796))

(assert (= b!3699802 b!3699799))

(assert (= start!348552 b!3699802))

(assert (= (and start!348552 (is-Cons!39302 input!3172)) b!3699798))

(declare-fun m!4210941 () Bool)

(assert (=> b!3699799 m!4210941))

(declare-fun m!4210943 () Bool)

(assert (=> b!3699799 m!4210943))

(declare-fun m!4210945 () Bool)

(assert (=> b!3699811 m!4210945))

(declare-fun m!4210947 () Bool)

(assert (=> b!3699807 m!4210947))

(declare-fun m!4210949 () Bool)

(assert (=> b!3699810 m!4210949))

(declare-fun m!4210951 () Bool)

(assert (=> b!3699810 m!4210951))

(declare-fun m!4210953 () Bool)

(assert (=> b!3699800 m!4210953))

(declare-fun m!4210955 () Bool)

(assert (=> b!3699800 m!4210955))

(declare-fun m!4210957 () Bool)

(assert (=> b!3699800 m!4210957))

(declare-fun m!4210959 () Bool)

(assert (=> b!3699800 m!4210959))

(declare-fun m!4210961 () Bool)

(assert (=> b!3699808 m!4210961))

(declare-fun m!4210963 () Bool)

(assert (=> b!3699808 m!4210963))

(declare-fun m!4210965 () Bool)

(assert (=> b!3699803 m!4210965))

(declare-fun m!4210967 () Bool)

(assert (=> b!3699795 m!4210967))

(declare-fun m!4210969 () Bool)

(assert (=> b!3699809 m!4210969))

(declare-fun m!4210971 () Bool)

(assert (=> b!3699809 m!4210971))

(declare-fun m!4210973 () Bool)

(assert (=> b!3699804 m!4210973))

(declare-fun m!4210975 () Bool)

(assert (=> b!3699801 m!4210975))

(declare-fun m!4210977 () Bool)

(assert (=> start!348552 m!4210977))

(declare-fun m!4210979 () Bool)

(assert (=> b!3699802 m!4210979))

(push 1)

(assert (not b_next!99251))

(assert (not b!3699799))

(assert (not b!3699800))

(assert b_and!276641)

(assert (not b!3699811))

(assert (not b!3699797))

(assert (not b!3699808))

(assert (not b!3699802))

(assert (not b_next!99253))

(assert (not b!3699798))

(assert (not b!3699803))

(assert (not b_next!99255))

(assert (not b!3699804))

(assert (not b_next!99249))

(assert b_and!276645)

(assert (not b!3699810))

(assert (not start!348552))

(assert (not b!3699807))

(assert tp_is_empty!18531)

(assert b_and!276639)

(assert (not b!3699809))

(assert b_and!276643)

(assert (not b!3699801))

(assert (not b!3699795))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99251))

(assert b_and!276641)

(assert b_and!276639)

(assert (not b_next!99253))

(assert (not b_next!99255))

(assert b_and!276643)

(assert (not b_next!99249))

(assert b_and!276645)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084966 () Bool)

(assert (=> d!1084966 (= (get!13077 lt!1294755) (v!38464 lt!1294755))))

(assert (=> b!3699807 d!1084966))

(declare-fun d!1084968 () Bool)

(assert (=> d!1084968 (= (isEmpty!23423 (t!301948 rules!3598)) (is-Nil!39303 (t!301948 rules!3598)))))

(assert (=> b!3699795 d!1084968))

(declare-fun d!1084970 () Bool)

(declare-fun isEmpty!23425 (Option!8505) Bool)

(assert (=> d!1084970 (= (isDefined!6694 lt!1294757) (not (isEmpty!23425 lt!1294757)))))

(declare-fun bs!574404 () Bool)

(assert (= bs!574404 d!1084970))

(declare-fun m!4211021 () Bool)

(assert (=> bs!574404 m!4211021))

(assert (=> b!3699810 d!1084970))

(declare-fun call!267353 () Option!8505)

(declare-fun bm!267348 () Bool)

(assert (=> bm!267348 (= call!267353 (maxPrefixOneRule!2190 thiss!25322 (h!44723 rules!3598) input!3172))))

(declare-fun b!3699884 () Bool)

(declare-fun res!1504844 () Bool)

(declare-fun e!2291331 () Bool)

(assert (=> b!3699884 (=> (not res!1504844) (not e!2291331))))

(declare-fun lt!1294782 () Option!8505)

(declare-fun apply!9401 (TokenValueInjection!11826 BalanceConc!23746) TokenValue!6199)

(declare-fun seqFromList!4480 (List!39426) BalanceConc!23746)

(assert (=> b!3699884 (= res!1504844 (= (value!190572 (_1!22717 (get!13077 lt!1294782))) (apply!9401 (transformation!5969 (rule!8833 (_1!22717 (get!13077 lt!1294782)))) (seqFromList!4480 (originalCharacters!6677 (_1!22717 (get!13077 lt!1294782)))))))))

(declare-fun b!3699885 () Bool)

(declare-fun res!1504842 () Bool)

(assert (=> b!3699885 (=> (not res!1504842) (not e!2291331))))

(declare-fun ++!9761 (List!39426 List!39426) List!39426)

(declare-fun list!14680 (BalanceConc!23746) List!39426)

(declare-fun charsOf!3958 (Token!11292) BalanceConc!23746)

(assert (=> b!3699885 (= res!1504842 (= (++!9761 (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294782)))) (_2!22717 (get!13077 lt!1294782))) input!3172))))

(declare-fun b!3699886 () Bool)

(declare-fun e!2291332 () Bool)

(assert (=> b!3699886 (= e!2291332 e!2291331)))

(declare-fun res!1504843 () Bool)

(assert (=> b!3699886 (=> (not res!1504843) (not e!2291331))))

(assert (=> b!3699886 (= res!1504843 (isDefined!6694 lt!1294782))))

(declare-fun b!3699888 () Bool)

(declare-fun res!1504846 () Bool)

(assert (=> b!3699888 (=> (not res!1504846) (not e!2291331))))

(declare-fun matchR!5261 (Regex!10728 List!39426) Bool)

(assert (=> b!3699888 (= res!1504846 (matchR!5261 (regex!5969 (rule!8833 (_1!22717 (get!13077 lt!1294782)))) (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294782))))))))

(declare-fun b!3699889 () Bool)

(declare-fun res!1504841 () Bool)

(assert (=> b!3699889 (=> (not res!1504841) (not e!2291331))))

(declare-fun size!29975 (List!39426) Int)

(assert (=> b!3699889 (= res!1504841 (< (size!29975 (_2!22717 (get!13077 lt!1294782))) (size!29975 input!3172)))))

(declare-fun b!3699890 () Bool)

(declare-fun contains!7836 (List!39427 Rule!11738) Bool)

(assert (=> b!3699890 (= e!2291331 (contains!7836 rules!3598 (rule!8833 (_1!22717 (get!13077 lt!1294782)))))))

(declare-fun b!3699887 () Bool)

(declare-fun res!1504845 () Bool)

(assert (=> b!3699887 (=> (not res!1504845) (not e!2291331))))

(assert (=> b!3699887 (= res!1504845 (= (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294782)))) (originalCharacters!6677 (_1!22717 (get!13077 lt!1294782)))))))

(declare-fun d!1084972 () Bool)

(assert (=> d!1084972 e!2291332))

(declare-fun res!1504840 () Bool)

(assert (=> d!1084972 (=> res!1504840 e!2291332)))

(assert (=> d!1084972 (= res!1504840 (isEmpty!23425 lt!1294782))))

(declare-fun e!2291330 () Option!8505)

(assert (=> d!1084972 (= lt!1294782 e!2291330)))

(declare-fun c!639386 () Bool)

(assert (=> d!1084972 (= c!639386 (and (is-Cons!39303 rules!3598) (is-Nil!39303 (t!301948 rules!3598))))))

(declare-fun lt!1294785 () Unit!57273)

(declare-fun lt!1294781 () Unit!57273)

(assert (=> d!1084972 (= lt!1294785 lt!1294781)))

(declare-fun isPrefix!3282 (List!39426 List!39426) Bool)

(assert (=> d!1084972 (isPrefix!3282 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2067 (List!39426 List!39426) Unit!57273)

(assert (=> d!1084972 (= lt!1294781 (lemmaIsPrefixRefl!2067 input!3172 input!3172))))

(declare-fun rulesValidInductive!2148 (LexerInterface!5558 List!39427) Bool)

(assert (=> d!1084972 (rulesValidInductive!2148 thiss!25322 rules!3598)))

(assert (=> d!1084972 (= (maxPrefix!3080 thiss!25322 rules!3598 input!3172) lt!1294782)))

(declare-fun b!3699891 () Bool)

(assert (=> b!3699891 (= e!2291330 call!267353)))

(declare-fun b!3699892 () Bool)

(declare-fun lt!1294784 () Option!8505)

(declare-fun lt!1294783 () Option!8505)

(assert (=> b!3699892 (= e!2291330 (ite (and (is-None!8504 lt!1294784) (is-None!8504 lt!1294783)) None!8504 (ite (is-None!8504 lt!1294783) lt!1294784 (ite (is-None!8504 lt!1294784) lt!1294783 (ite (>= (size!29973 (_1!22717 (v!38464 lt!1294784))) (size!29973 (_1!22717 (v!38464 lt!1294783)))) lt!1294784 lt!1294783)))))))

(assert (=> b!3699892 (= lt!1294784 call!267353)))

(assert (=> b!3699892 (= lt!1294783 (maxPrefix!3080 thiss!25322 (t!301948 rules!3598) input!3172))))

(assert (= (and d!1084972 c!639386) b!3699891))

(assert (= (and d!1084972 (not c!639386)) b!3699892))

(assert (= (or b!3699891 b!3699892) bm!267348))

(assert (= (and d!1084972 (not res!1504840)) b!3699886))

(assert (= (and b!3699886 res!1504843) b!3699887))

(assert (= (and b!3699887 res!1504845) b!3699889))

(assert (= (and b!3699889 res!1504841) b!3699885))

(assert (= (and b!3699885 res!1504842) b!3699884))

(assert (= (and b!3699884 res!1504844) b!3699888))

(assert (= (and b!3699888 res!1504846) b!3699890))

(assert (=> bm!267348 m!4210963))

(declare-fun m!4211029 () Bool)

(assert (=> b!3699886 m!4211029))

(declare-fun m!4211031 () Bool)

(assert (=> b!3699888 m!4211031))

(declare-fun m!4211033 () Bool)

(assert (=> b!3699888 m!4211033))

(assert (=> b!3699888 m!4211033))

(declare-fun m!4211035 () Bool)

(assert (=> b!3699888 m!4211035))

(assert (=> b!3699888 m!4211035))

(declare-fun m!4211037 () Bool)

(assert (=> b!3699888 m!4211037))

(assert (=> b!3699889 m!4211031))

(declare-fun m!4211039 () Bool)

(assert (=> b!3699889 m!4211039))

(declare-fun m!4211041 () Bool)

(assert (=> b!3699889 m!4211041))

(assert (=> b!3699887 m!4211031))

(assert (=> b!3699887 m!4211033))

(assert (=> b!3699887 m!4211033))

(assert (=> b!3699887 m!4211035))

(assert (=> b!3699892 m!4210955))

(assert (=> b!3699884 m!4211031))

(declare-fun m!4211043 () Bool)

(assert (=> b!3699884 m!4211043))

(assert (=> b!3699884 m!4211043))

(declare-fun m!4211045 () Bool)

(assert (=> b!3699884 m!4211045))

(assert (=> b!3699890 m!4211031))

(declare-fun m!4211047 () Bool)

(assert (=> b!3699890 m!4211047))

(assert (=> b!3699885 m!4211031))

(assert (=> b!3699885 m!4211033))

(assert (=> b!3699885 m!4211033))

(assert (=> b!3699885 m!4211035))

(assert (=> b!3699885 m!4211035))

(declare-fun m!4211049 () Bool)

(assert (=> b!3699885 m!4211049))

(declare-fun m!4211051 () Bool)

(assert (=> d!1084972 m!4211051))

(declare-fun m!4211053 () Bool)

(assert (=> d!1084972 m!4211053))

(declare-fun m!4211055 () Bool)

(assert (=> d!1084972 m!4211055))

(declare-fun m!4211057 () Bool)

(assert (=> d!1084972 m!4211057))

(assert (=> b!3699810 d!1084972))

(declare-fun d!1084980 () Bool)

(assert (=> d!1084980 (= (inv!52819 (tag!6801 (rule!8833 token!544))) (= (mod (str.len (value!190571 (tag!6801 (rule!8833 token!544)))) 2) 0))))

(assert (=> b!3699799 d!1084980))

(declare-fun d!1084982 () Bool)

(declare-fun res!1504849 () Bool)

(declare-fun e!2291335 () Bool)

(assert (=> d!1084982 (=> (not res!1504849) (not e!2291335))))

(declare-fun semiInverseModEq!2549 (Int Int) Bool)

(assert (=> d!1084982 (= res!1504849 (semiInverseModEq!2549 (toChars!8164 (transformation!5969 (rule!8833 token!544))) (toValue!8305 (transformation!5969 (rule!8833 token!544)))))))

(assert (=> d!1084982 (= (inv!52822 (transformation!5969 (rule!8833 token!544))) e!2291335)))

(declare-fun b!3699895 () Bool)

(declare-fun equivClasses!2448 (Int Int) Bool)

(assert (=> b!3699895 (= e!2291335 (equivClasses!2448 (toChars!8164 (transformation!5969 (rule!8833 token!544))) (toValue!8305 (transformation!5969 (rule!8833 token!544)))))))

(assert (= (and d!1084982 res!1504849) b!3699895))

(declare-fun m!4211059 () Bool)

(assert (=> d!1084982 m!4211059))

(declare-fun m!4211061 () Bool)

(assert (=> b!3699895 m!4211061))

(assert (=> b!3699799 d!1084982))

(declare-fun d!1084984 () Bool)

(assert (=> d!1084984 (= (inv!52819 (tag!6801 (h!44723 rules!3598))) (= (mod (str.len (value!190571 (tag!6801 (h!44723 rules!3598)))) 2) 0))))

(assert (=> b!3699809 d!1084984))

(declare-fun d!1084986 () Bool)

(declare-fun res!1504850 () Bool)

(declare-fun e!2291336 () Bool)

(assert (=> d!1084986 (=> (not res!1504850) (not e!2291336))))

(assert (=> d!1084986 (= res!1504850 (semiInverseModEq!2549 (toChars!8164 (transformation!5969 (h!44723 rules!3598))) (toValue!8305 (transformation!5969 (h!44723 rules!3598)))))))

(assert (=> d!1084986 (= (inv!52822 (transformation!5969 (h!44723 rules!3598))) e!2291336)))

(declare-fun b!3699896 () Bool)

(assert (=> b!3699896 (= e!2291336 (equivClasses!2448 (toChars!8164 (transformation!5969 (h!44723 rules!3598))) (toValue!8305 (transformation!5969 (h!44723 rules!3598)))))))

(assert (= (and d!1084986 res!1504850) b!3699896))

(declare-fun m!4211063 () Bool)

(assert (=> d!1084986 m!4211063))

(declare-fun m!4211065 () Bool)

(assert (=> b!3699896 m!4211065))

(assert (=> b!3699809 d!1084986))

(declare-fun d!1084988 () Bool)

(assert (=> d!1084988 (= (isDefined!6694 lt!1294755) (not (isEmpty!23425 lt!1294755)))))

(declare-fun bs!574406 () Bool)

(assert (= bs!574406 d!1084988))

(declare-fun m!4211067 () Bool)

(assert (=> bs!574406 m!4211067))

(assert (=> b!3699808 d!1084988))

(declare-fun b!3699943 () Bool)

(declare-fun res!1504887 () Bool)

(declare-fun e!2291356 () Bool)

(assert (=> b!3699943 (=> (not res!1504887) (not e!2291356))))

(declare-fun lt!1294815 () Option!8505)

(assert (=> b!3699943 (= res!1504887 (= (rule!8833 (_1!22717 (get!13077 lt!1294815))) (h!44723 rules!3598)))))

(declare-fun b!3699944 () Bool)

(assert (=> b!3699944 (= e!2291356 (= (size!29973 (_1!22717 (get!13077 lt!1294815))) (size!29975 (originalCharacters!6677 (_1!22717 (get!13077 lt!1294815))))))))

(declare-fun b!3699945 () Bool)

(declare-fun e!2291357 () Option!8505)

(declare-datatypes ((tuple2!39170 0))(
  ( (tuple2!39171 (_1!22719 List!39426) (_2!22719 List!39426)) )
))
(declare-fun lt!1294816 () tuple2!39170)

(declare-fun size!29976 (BalanceConc!23746) Int)

(assert (=> b!3699945 (= e!2291357 (Some!8504 (tuple2!39167 (Token!11293 (apply!9401 (transformation!5969 (h!44723 rules!3598)) (seqFromList!4480 (_1!22719 lt!1294816))) (h!44723 rules!3598) (size!29976 (seqFromList!4480 (_1!22719 lt!1294816))) (_1!22719 lt!1294816)) (_2!22719 lt!1294816))))))

(declare-fun lt!1294818 () Unit!57273)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1094 (Regex!10728 List!39426) Unit!57273)

(assert (=> b!3699945 (= lt!1294818 (longestMatchIsAcceptedByMatchOrIsEmpty!1094 (regex!5969 (h!44723 rules!3598)) input!3172))))

(declare-fun res!1504892 () Bool)

(declare-fun isEmpty!23426 (List!39426) Bool)

(declare-fun findLongestMatchInner!1121 (Regex!10728 List!39426 Int List!39426 List!39426 Int) tuple2!39170)

(assert (=> b!3699945 (= res!1504892 (isEmpty!23426 (_1!22719 (findLongestMatchInner!1121 (regex!5969 (h!44723 rules!3598)) Nil!39302 (size!29975 Nil!39302) input!3172 input!3172 (size!29975 input!3172)))))))

(declare-fun e!2291355 () Bool)

(assert (=> b!3699945 (=> res!1504892 e!2291355)))

(assert (=> b!3699945 e!2291355))

(declare-fun lt!1294814 () Unit!57273)

(assert (=> b!3699945 (= lt!1294814 lt!1294818)))

(declare-fun lt!1294817 () Unit!57273)

(declare-fun lemmaSemiInverse!1627 (TokenValueInjection!11826 BalanceConc!23746) Unit!57273)

(assert (=> b!3699945 (= lt!1294817 (lemmaSemiInverse!1627 (transformation!5969 (h!44723 rules!3598)) (seqFromList!4480 (_1!22719 lt!1294816))))))

(declare-fun b!3699946 () Bool)

(declare-fun res!1504893 () Bool)

(assert (=> b!3699946 (=> (not res!1504893) (not e!2291356))))

(assert (=> b!3699946 (= res!1504893 (< (size!29975 (_2!22717 (get!13077 lt!1294815))) (size!29975 input!3172)))))

(declare-fun b!3699947 () Bool)

(assert (=> b!3699947 (= e!2291355 (matchR!5261 (regex!5969 (h!44723 rules!3598)) (_1!22719 (findLongestMatchInner!1121 (regex!5969 (h!44723 rules!3598)) Nil!39302 (size!29975 Nil!39302) input!3172 input!3172 (size!29975 input!3172)))))))

(declare-fun b!3699948 () Bool)

(declare-fun res!1504891 () Bool)

(assert (=> b!3699948 (=> (not res!1504891) (not e!2291356))))

(assert (=> b!3699948 (= res!1504891 (= (++!9761 (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294815)))) (_2!22717 (get!13077 lt!1294815))) input!3172))))

(declare-fun b!3699949 () Bool)

(assert (=> b!3699949 (= e!2291357 None!8504)))

(declare-fun b!3699950 () Bool)

(declare-fun e!2291358 () Bool)

(assert (=> b!3699950 (= e!2291358 e!2291356)))

(declare-fun res!1504888 () Bool)

(assert (=> b!3699950 (=> (not res!1504888) (not e!2291356))))

(assert (=> b!3699950 (= res!1504888 (matchR!5261 (regex!5969 (h!44723 rules!3598)) (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294815))))))))

(declare-fun b!3699951 () Bool)

(declare-fun res!1504890 () Bool)

(assert (=> b!3699951 (=> (not res!1504890) (not e!2291356))))

(assert (=> b!3699951 (= res!1504890 (= (value!190572 (_1!22717 (get!13077 lt!1294815))) (apply!9401 (transformation!5969 (rule!8833 (_1!22717 (get!13077 lt!1294815)))) (seqFromList!4480 (originalCharacters!6677 (_1!22717 (get!13077 lt!1294815)))))))))

(declare-fun d!1084990 () Bool)

(assert (=> d!1084990 e!2291358))

(declare-fun res!1504889 () Bool)

(assert (=> d!1084990 (=> res!1504889 e!2291358)))

(assert (=> d!1084990 (= res!1504889 (isEmpty!23425 lt!1294815))))

(assert (=> d!1084990 (= lt!1294815 e!2291357)))

(declare-fun c!639392 () Bool)

(assert (=> d!1084990 (= c!639392 (isEmpty!23426 (_1!22719 lt!1294816)))))

(declare-fun findLongestMatch!1036 (Regex!10728 List!39426) tuple2!39170)

(assert (=> d!1084990 (= lt!1294816 (findLongestMatch!1036 (regex!5969 (h!44723 rules!3598)) input!3172))))

(declare-fun ruleValid!2159 (LexerInterface!5558 Rule!11738) Bool)

(assert (=> d!1084990 (ruleValid!2159 thiss!25322 (h!44723 rules!3598))))

(assert (=> d!1084990 (= (maxPrefixOneRule!2190 thiss!25322 (h!44723 rules!3598) input!3172) lt!1294815)))

(assert (= (and d!1084990 c!639392) b!3699949))

(assert (= (and d!1084990 (not c!639392)) b!3699945))

(assert (= (and b!3699945 (not res!1504892)) b!3699947))

(assert (= (and d!1084990 (not res!1504889)) b!3699950))

(assert (= (and b!3699950 res!1504888) b!3699948))

(assert (= (and b!3699948 res!1504891) b!3699946))

(assert (= (and b!3699946 res!1504893) b!3699943))

(assert (= (and b!3699943 res!1504887) b!3699951))

(assert (= (and b!3699951 res!1504890) b!3699944))

(declare-fun m!4211111 () Bool)

(assert (=> b!3699943 m!4211111))

(declare-fun m!4211113 () Bool)

(assert (=> d!1084990 m!4211113))

(declare-fun m!4211115 () Bool)

(assert (=> d!1084990 m!4211115))

(declare-fun m!4211117 () Bool)

(assert (=> d!1084990 m!4211117))

(declare-fun m!4211119 () Bool)

(assert (=> d!1084990 m!4211119))

(assert (=> b!3699944 m!4211111))

(declare-fun m!4211121 () Bool)

(assert (=> b!3699944 m!4211121))

(declare-fun m!4211123 () Bool)

(assert (=> b!3699945 m!4211123))

(declare-fun m!4211125 () Bool)

(assert (=> b!3699945 m!4211125))

(assert (=> b!3699945 m!4211123))

(declare-fun m!4211127 () Bool)

(assert (=> b!3699945 m!4211127))

(assert (=> b!3699945 m!4211041))

(declare-fun m!4211129 () Bool)

(assert (=> b!3699945 m!4211129))

(declare-fun m!4211131 () Bool)

(assert (=> b!3699945 m!4211131))

(assert (=> b!3699945 m!4211131))

(assert (=> b!3699945 m!4211041))

(declare-fun m!4211133 () Bool)

(assert (=> b!3699945 m!4211133))

(declare-fun m!4211135 () Bool)

(assert (=> b!3699945 m!4211135))

(assert (=> b!3699945 m!4211123))

(declare-fun m!4211137 () Bool)

(assert (=> b!3699945 m!4211137))

(assert (=> b!3699945 m!4211123))

(assert (=> b!3699947 m!4211131))

(assert (=> b!3699947 m!4211041))

(assert (=> b!3699947 m!4211131))

(assert (=> b!3699947 m!4211041))

(assert (=> b!3699947 m!4211133))

(declare-fun m!4211139 () Bool)

(assert (=> b!3699947 m!4211139))

(assert (=> b!3699948 m!4211111))

(declare-fun m!4211141 () Bool)

(assert (=> b!3699948 m!4211141))

(assert (=> b!3699948 m!4211141))

(declare-fun m!4211143 () Bool)

(assert (=> b!3699948 m!4211143))

(assert (=> b!3699948 m!4211143))

(declare-fun m!4211145 () Bool)

(assert (=> b!3699948 m!4211145))

(assert (=> b!3699951 m!4211111))

(declare-fun m!4211147 () Bool)

(assert (=> b!3699951 m!4211147))

(assert (=> b!3699951 m!4211147))

(declare-fun m!4211149 () Bool)

(assert (=> b!3699951 m!4211149))

(assert (=> b!3699950 m!4211111))

(assert (=> b!3699950 m!4211141))

(assert (=> b!3699950 m!4211141))

(assert (=> b!3699950 m!4211143))

(assert (=> b!3699950 m!4211143))

(declare-fun m!4211151 () Bool)

(assert (=> b!3699950 m!4211151))

(assert (=> b!3699946 m!4211111))

(declare-fun m!4211153 () Bool)

(assert (=> b!3699946 m!4211153))

(assert (=> b!3699946 m!4211041))

(assert (=> b!3699808 d!1084990))

(declare-fun d!1084998 () Bool)

(declare-fun c!639402 () Bool)

(assert (=> d!1084998 (= c!639402 (is-IntegerValue!18597 (value!190572 token!544)))))

(declare-fun e!2291372 () Bool)

(assert (=> d!1084998 (= (inv!21 (value!190572 token!544)) e!2291372)))

(declare-fun b!3699972 () Bool)

(declare-fun e!2291373 () Bool)

(declare-fun inv!17 (TokenValue!6199) Bool)

(assert (=> b!3699972 (= e!2291373 (inv!17 (value!190572 token!544)))))

(declare-fun b!3699973 () Bool)

(declare-fun inv!16 (TokenValue!6199) Bool)

(assert (=> b!3699973 (= e!2291372 (inv!16 (value!190572 token!544)))))

(declare-fun b!3699974 () Bool)

(declare-fun e!2291371 () Bool)

(declare-fun inv!15 (TokenValue!6199) Bool)

(assert (=> b!3699974 (= e!2291371 (inv!15 (value!190572 token!544)))))

(declare-fun b!3699975 () Bool)

(declare-fun res!1504898 () Bool)

(assert (=> b!3699975 (=> res!1504898 e!2291371)))

(assert (=> b!3699975 (= res!1504898 (not (is-IntegerValue!18599 (value!190572 token!544))))))

(assert (=> b!3699975 (= e!2291373 e!2291371)))

(declare-fun b!3699976 () Bool)

(assert (=> b!3699976 (= e!2291372 e!2291373)))

(declare-fun c!639401 () Bool)

(assert (=> b!3699976 (= c!639401 (is-IntegerValue!18598 (value!190572 token!544)))))

(assert (= (and d!1084998 c!639402) b!3699973))

(assert (= (and d!1084998 (not c!639402)) b!3699976))

(assert (= (and b!3699976 c!639401) b!3699972))

(assert (= (and b!3699976 (not c!639401)) b!3699975))

(assert (= (and b!3699975 (not res!1504898)) b!3699974))

(declare-fun m!4211155 () Bool)

(assert (=> b!3699972 m!4211155))

(declare-fun m!4211157 () Bool)

(assert (=> b!3699973 m!4211157))

(declare-fun m!4211159 () Bool)

(assert (=> b!3699974 m!4211159))

(assert (=> b!3699802 d!1084998))

(declare-fun d!1085000 () Bool)

(declare-fun res!1504909 () Bool)

(declare-fun e!2291382 () Bool)

(assert (=> d!1085000 (=> (not res!1504909) (not e!2291382))))

(declare-fun rulesValid!2306 (LexerInterface!5558 List!39427) Bool)

(assert (=> d!1085000 (= res!1504909 (rulesValid!2306 thiss!25322 rules!3598))))

(assert (=> d!1085000 (= (rulesInvariant!4955 thiss!25322 rules!3598) e!2291382)))

(declare-fun b!3699993 () Bool)

(declare-datatypes ((List!39431 0))(
  ( (Nil!39307) (Cons!39307 (h!44727 String!44331) (t!301962 List!39431)) )
))
(declare-fun noDuplicateTag!2302 (LexerInterface!5558 List!39427 List!39431) Bool)

(assert (=> b!3699993 (= e!2291382 (noDuplicateTag!2302 thiss!25322 rules!3598 Nil!39307))))

(assert (= (and d!1085000 res!1504909) b!3699993))

(declare-fun m!4211169 () Bool)

(assert (=> d!1085000 m!4211169))

(declare-fun m!4211171 () Bool)

(assert (=> b!3699993 m!4211171))

(assert (=> b!3699801 d!1085000))

(declare-fun d!1085006 () Bool)

(assert (=> d!1085006 (= (isDefined!6694 lt!1294756) (not (isEmpty!23425 lt!1294756)))))

(declare-fun bs!574409 () Bool)

(assert (= bs!574409 d!1085006))

(declare-fun m!4211173 () Bool)

(assert (=> bs!574409 m!4211173))

(assert (=> b!3699800 d!1085006))

(declare-fun call!267358 () Option!8505)

(declare-fun bm!267353 () Bool)

(assert (=> bm!267353 (= call!267358 (maxPrefixOneRule!2190 thiss!25322 (h!44723 (t!301948 rules!3598)) input!3172))))

(declare-fun b!3699994 () Bool)

(declare-fun res!1504914 () Bool)

(declare-fun e!2291384 () Bool)

(assert (=> b!3699994 (=> (not res!1504914) (not e!2291384))))

(declare-fun lt!1294825 () Option!8505)

(assert (=> b!3699994 (= res!1504914 (= (value!190572 (_1!22717 (get!13077 lt!1294825))) (apply!9401 (transformation!5969 (rule!8833 (_1!22717 (get!13077 lt!1294825)))) (seqFromList!4480 (originalCharacters!6677 (_1!22717 (get!13077 lt!1294825)))))))))

(declare-fun b!3699995 () Bool)

(declare-fun res!1504912 () Bool)

(assert (=> b!3699995 (=> (not res!1504912) (not e!2291384))))

(assert (=> b!3699995 (= res!1504912 (= (++!9761 (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294825)))) (_2!22717 (get!13077 lt!1294825))) input!3172))))

(declare-fun b!3699996 () Bool)

(declare-fun e!2291385 () Bool)

(assert (=> b!3699996 (= e!2291385 e!2291384)))

(declare-fun res!1504913 () Bool)

(assert (=> b!3699996 (=> (not res!1504913) (not e!2291384))))

(assert (=> b!3699996 (= res!1504913 (isDefined!6694 lt!1294825))))

(declare-fun b!3699998 () Bool)

(declare-fun res!1504916 () Bool)

(assert (=> b!3699998 (=> (not res!1504916) (not e!2291384))))

(assert (=> b!3699998 (= res!1504916 (matchR!5261 (regex!5969 (rule!8833 (_1!22717 (get!13077 lt!1294825)))) (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294825))))))))

(declare-fun b!3699999 () Bool)

(declare-fun res!1504911 () Bool)

(assert (=> b!3699999 (=> (not res!1504911) (not e!2291384))))

(assert (=> b!3699999 (= res!1504911 (< (size!29975 (_2!22717 (get!13077 lt!1294825))) (size!29975 input!3172)))))

(declare-fun b!3700000 () Bool)

(assert (=> b!3700000 (= e!2291384 (contains!7836 (t!301948 rules!3598) (rule!8833 (_1!22717 (get!13077 lt!1294825)))))))

(declare-fun b!3699997 () Bool)

(declare-fun res!1504915 () Bool)

(assert (=> b!3699997 (=> (not res!1504915) (not e!2291384))))

(assert (=> b!3699997 (= res!1504915 (= (list!14680 (charsOf!3958 (_1!22717 (get!13077 lt!1294825)))) (originalCharacters!6677 (_1!22717 (get!13077 lt!1294825)))))))

(declare-fun d!1085008 () Bool)

(assert (=> d!1085008 e!2291385))

(declare-fun res!1504910 () Bool)

(assert (=> d!1085008 (=> res!1504910 e!2291385)))

(assert (=> d!1085008 (= res!1504910 (isEmpty!23425 lt!1294825))))

(declare-fun e!2291383 () Option!8505)

(assert (=> d!1085008 (= lt!1294825 e!2291383)))

(declare-fun c!639406 () Bool)

(assert (=> d!1085008 (= c!639406 (and (is-Cons!39303 (t!301948 rules!3598)) (is-Nil!39303 (t!301948 (t!301948 rules!3598)))))))

(declare-fun lt!1294828 () Unit!57273)

(declare-fun lt!1294824 () Unit!57273)

(assert (=> d!1085008 (= lt!1294828 lt!1294824)))

(assert (=> d!1085008 (isPrefix!3282 input!3172 input!3172)))

(assert (=> d!1085008 (= lt!1294824 (lemmaIsPrefixRefl!2067 input!3172 input!3172))))

(assert (=> d!1085008 (rulesValidInductive!2148 thiss!25322 (t!301948 rules!3598))))

(assert (=> d!1085008 (= (maxPrefix!3080 thiss!25322 (t!301948 rules!3598) input!3172) lt!1294825)))

(declare-fun b!3700001 () Bool)

(assert (=> b!3700001 (= e!2291383 call!267358)))

(declare-fun b!3700002 () Bool)

(declare-fun lt!1294827 () Option!8505)

(declare-fun lt!1294826 () Option!8505)

(assert (=> b!3700002 (= e!2291383 (ite (and (is-None!8504 lt!1294827) (is-None!8504 lt!1294826)) None!8504 (ite (is-None!8504 lt!1294826) lt!1294827 (ite (is-None!8504 lt!1294827) lt!1294826 (ite (>= (size!29973 (_1!22717 (v!38464 lt!1294827))) (size!29973 (_1!22717 (v!38464 lt!1294826)))) lt!1294827 lt!1294826)))))))

(assert (=> b!3700002 (= lt!1294827 call!267358)))

(assert (=> b!3700002 (= lt!1294826 (maxPrefix!3080 thiss!25322 (t!301948 (t!301948 rules!3598)) input!3172))))

(assert (= (and d!1085008 c!639406) b!3700001))

(assert (= (and d!1085008 (not c!639406)) b!3700002))

(assert (= (or b!3700001 b!3700002) bm!267353))

(assert (= (and d!1085008 (not res!1504910)) b!3699996))

(assert (= (and b!3699996 res!1504913) b!3699997))

(assert (= (and b!3699997 res!1504915) b!3699999))

(assert (= (and b!3699999 res!1504911) b!3699995))

(assert (= (and b!3699995 res!1504912) b!3699994))

(assert (= (and b!3699994 res!1504914) b!3699998))

(assert (= (and b!3699998 res!1504916) b!3700000))

(declare-fun m!4211175 () Bool)

(assert (=> bm!267353 m!4211175))

(declare-fun m!4211177 () Bool)

(assert (=> b!3699996 m!4211177))

(declare-fun m!4211179 () Bool)

(assert (=> b!3699998 m!4211179))

(declare-fun m!4211181 () Bool)

(assert (=> b!3699998 m!4211181))

(assert (=> b!3699998 m!4211181))

(declare-fun m!4211183 () Bool)

(assert (=> b!3699998 m!4211183))

(assert (=> b!3699998 m!4211183))

(declare-fun m!4211185 () Bool)

(assert (=> b!3699998 m!4211185))

(assert (=> b!3699999 m!4211179))

(declare-fun m!4211187 () Bool)

(assert (=> b!3699999 m!4211187))

(assert (=> b!3699999 m!4211041))

(assert (=> b!3699997 m!4211179))

(assert (=> b!3699997 m!4211181))

(assert (=> b!3699997 m!4211181))

(assert (=> b!3699997 m!4211183))

(declare-fun m!4211189 () Bool)

(assert (=> b!3700002 m!4211189))

(assert (=> b!3699994 m!4211179))

(declare-fun m!4211191 () Bool)

(assert (=> b!3699994 m!4211191))

(assert (=> b!3699994 m!4211191))

(declare-fun m!4211193 () Bool)

(assert (=> b!3699994 m!4211193))

(assert (=> b!3700000 m!4211179))

(declare-fun m!4211195 () Bool)

(assert (=> b!3700000 m!4211195))

(assert (=> b!3699995 m!4211179))

(assert (=> b!3699995 m!4211181))

(assert (=> b!3699995 m!4211181))

(assert (=> b!3699995 m!4211183))

(assert (=> b!3699995 m!4211183))

(declare-fun m!4211197 () Bool)

(assert (=> b!3699995 m!4211197))

(declare-fun m!4211199 () Bool)

(assert (=> d!1085008 m!4211199))

(assert (=> d!1085008 m!4211053))

(assert (=> d!1085008 m!4211055))

(declare-fun m!4211201 () Bool)

(assert (=> d!1085008 m!4211201))

(assert (=> b!3699800 d!1085008))

(declare-fun d!1085010 () Bool)

(declare-fun res!1504917 () Bool)

(declare-fun e!2291386 () Bool)

(assert (=> d!1085010 (=> (not res!1504917) (not e!2291386))))

(assert (=> d!1085010 (= res!1504917 (rulesValid!2306 thiss!25322 (t!301948 rules!3598)))))

(assert (=> d!1085010 (= (rulesInvariant!4955 thiss!25322 (t!301948 rules!3598)) e!2291386)))

(declare-fun b!3700003 () Bool)

(assert (=> b!3700003 (= e!2291386 (noDuplicateTag!2302 thiss!25322 (t!301948 rules!3598) Nil!39307))))

(assert (= (and d!1085010 res!1504917) b!3700003))

(declare-fun m!4211207 () Bool)

(assert (=> d!1085010 m!4211207))

(declare-fun m!4211209 () Bool)

(assert (=> b!3700003 m!4211209))

(assert (=> b!3699800 d!1085010))

(declare-fun d!1085012 () Bool)

(assert (=> d!1085012 (rulesInvariant!4955 thiss!25322 (t!301948 rules!3598))))

(declare-fun lt!1294831 () Unit!57273)

(declare-fun choose!22127 (LexerInterface!5558 Rule!11738 List!39427) Unit!57273)

(assert (=> d!1085012 (= lt!1294831 (choose!22127 thiss!25322 (h!44723 rules!3598) (t!301948 rules!3598)))))

(assert (=> d!1085012 (rulesInvariant!4955 thiss!25322 (Cons!39303 (h!44723 rules!3598) (t!301948 rules!3598)))))

(assert (=> d!1085012 (= (lemmaInvariantOnRulesThenOnTail!665 thiss!25322 (h!44723 rules!3598) (t!301948 rules!3598)) lt!1294831)))

(declare-fun bs!574410 () Bool)

(assert (= bs!574410 d!1085012))

(assert (=> bs!574410 m!4210957))

(declare-fun m!4211231 () Bool)

(assert (=> bs!574410 m!4211231))

(declare-fun m!4211233 () Bool)

(assert (=> bs!574410 m!4211233))

(assert (=> b!3699800 d!1085012))

(declare-fun d!1085016 () Bool)

(assert (=> d!1085016 (= (get!13077 lt!1294756) (v!38464 lt!1294756))))

(assert (=> b!3699811 d!1085016))

(declare-fun d!1085018 () Bool)

(assert (=> d!1085018 (= (isEmpty!23423 rules!3598) (is-Nil!39303 rules!3598))))

(assert (=> b!3699804 d!1085018))

(declare-fun d!1085020 () Bool)

(declare-fun res!1504926 () Bool)

(declare-fun e!2291391 () Bool)

(assert (=> d!1085020 (=> (not res!1504926) (not e!2291391))))

(assert (=> d!1085020 (= res!1504926 (not (isEmpty!23426 (originalCharacters!6677 token!544))))))

(assert (=> d!1085020 (= (inv!52823 token!544) e!2291391)))

(declare-fun b!3700012 () Bool)

(declare-fun res!1504927 () Bool)

(assert (=> b!3700012 (=> (not res!1504927) (not e!2291391))))

(declare-fun dynLambda!17179 (Int TokenValue!6199) BalanceConc!23746)

(assert (=> b!3700012 (= res!1504927 (= (originalCharacters!6677 token!544) (list!14680 (dynLambda!17179 (toChars!8164 (transformation!5969 (rule!8833 token!544))) (value!190572 token!544)))))))

(declare-fun b!3700013 () Bool)

(assert (=> b!3700013 (= e!2291391 (= (size!29973 token!544) (size!29975 (originalCharacters!6677 token!544))))))

(assert (= (and d!1085020 res!1504926) b!3700012))

(assert (= (and b!3700012 res!1504927) b!3700013))

(declare-fun b_lambda!109747 () Bool)

(assert (=> (not b_lambda!109747) (not b!3700012)))

(declare-fun t!301953 () Bool)

(declare-fun tb!214237 () Bool)

(assert (=> (and b!3699796 (= (toChars!8164 (transformation!5969 (rule!8833 token!544))) (toChars!8164 (transformation!5969 (rule!8833 token!544)))) t!301953) tb!214237))

(declare-fun b!3700018 () Bool)

(declare-fun e!2291394 () Bool)

(declare-fun tp!1124665 () Bool)

(declare-fun inv!52826 (Conc!12066) Bool)

(assert (=> b!3700018 (= e!2291394 (and (inv!52826 (c!639380 (dynLambda!17179 (toChars!8164 (transformation!5969 (rule!8833 token!544))) (value!190572 token!544)))) tp!1124665))))

(declare-fun result!260998 () Bool)

(declare-fun inv!52827 (BalanceConc!23746) Bool)

(assert (=> tb!214237 (= result!260998 (and (inv!52827 (dynLambda!17179 (toChars!8164 (transformation!5969 (rule!8833 token!544))) (value!190572 token!544))) e!2291394))))

(assert (= tb!214237 b!3700018))

(declare-fun m!4211235 () Bool)

(assert (=> b!3700018 m!4211235))

(declare-fun m!4211237 () Bool)

(assert (=> tb!214237 m!4211237))

(assert (=> b!3700012 t!301953))

(declare-fun b_and!276655 () Bool)

(assert (= b_and!276641 (and (=> t!301953 result!260998) b_and!276655)))

(declare-fun t!301955 () Bool)

(declare-fun tb!214239 () Bool)

(assert (=> (and b!3699806 (= (toChars!8164 (transformation!5969 (h!44723 rules!3598))) (toChars!8164 (transformation!5969 (rule!8833 token!544)))) t!301955) tb!214239))

(declare-fun result!261002 () Bool)

(assert (= result!261002 result!260998))

(assert (=> b!3700012 t!301955))

(declare-fun b_and!276657 () Bool)

(assert (= b_and!276645 (and (=> t!301955 result!261002) b_and!276657)))

(declare-fun m!4211239 () Bool)

(assert (=> d!1085020 m!4211239))

(declare-fun m!4211241 () Bool)

(assert (=> b!3700012 m!4211241))

(assert (=> b!3700012 m!4211241))

(declare-fun m!4211243 () Bool)

(assert (=> b!3700012 m!4211243))

(declare-fun m!4211245 () Bool)

(assert (=> b!3700013 m!4211245))

(assert (=> start!348552 d!1085020))

(declare-fun d!1085022 () Bool)

(assert (=> d!1085022 (= (get!13077 lt!1294757) (v!38464 lt!1294757))))

(assert (=> b!3699803 d!1085022))

(declare-fun b!3700025 () Bool)

(declare-fun e!2291398 () Bool)

(declare-fun tp!1124668 () Bool)

(assert (=> b!3700025 (= e!2291398 (and tp_is_empty!18531 tp!1124668))))

(assert (=> b!3699802 (= tp!1124632 e!2291398)))

(assert (= (and b!3699802 (is-Cons!39302 (originalCharacters!6677 token!544))) b!3700025))

(declare-fun b!3700040 () Bool)

(declare-fun b_free!98561 () Bool)

(declare-fun b_next!99265 () Bool)

(assert (=> b!3700040 (= b_free!98561 (not b_next!99265))))

(declare-fun tp!1124681 () Bool)

(declare-fun b_and!276659 () Bool)

(assert (=> b!3700040 (= tp!1124681 b_and!276659)))

(declare-fun b_free!98563 () Bool)

(declare-fun b_next!99267 () Bool)

(assert (=> b!3700040 (= b_free!98563 (not b_next!99267))))

(declare-fun t!301959 () Bool)

(declare-fun tb!214243 () Bool)

(assert (=> (and b!3700040 (= (toChars!8164 (transformation!5969 (h!44723 (t!301948 rules!3598)))) (toChars!8164 (transformation!5969 (rule!8833 token!544)))) t!301959) tb!214243))

(declare-fun result!261012 () Bool)

(assert (= result!261012 result!260998))

(assert (=> b!3700012 t!301959))

(declare-fun b_and!276661 () Bool)

(declare-fun tp!1124680 () Bool)

(assert (=> b!3700040 (= tp!1124680 (and (=> t!301959 result!261012) b_and!276661))))

(declare-fun e!2291411 () Bool)

(assert (=> b!3700040 (= e!2291411 (and tp!1124681 tp!1124680))))

(declare-fun tp!1124682 () Bool)

(declare-fun b!3700039 () Bool)

(declare-fun e!2291409 () Bool)

(assert (=> b!3700039 (= e!2291409 (and tp!1124682 (inv!52819 (tag!6801 (h!44723 (t!301948 rules!3598)))) (inv!52822 (transformation!5969 (h!44723 (t!301948 rules!3598)))) e!2291411))))

(declare-fun b!3700038 () Bool)

(declare-fun e!2291410 () Bool)

(declare-fun tp!1124679 () Bool)

(assert (=> b!3700038 (= e!2291410 (and e!2291409 tp!1124679))))

(assert (=> b!3699797 (= tp!1124627 e!2291410)))

(assert (= b!3700039 b!3700040))

(assert (= b!3700038 b!3700039))

(assert (= (and b!3699797 (is-Cons!39303 (t!301948 rules!3598))) b!3700038))

(declare-fun m!4211249 () Bool)

(assert (=> b!3700039 m!4211249))

(declare-fun m!4211251 () Bool)

(assert (=> b!3700039 m!4211251))

(declare-fun e!2291416 () Bool)

(assert (=> b!3699799 (= tp!1124628 e!2291416)))

(declare-fun b!3700055 () Bool)

(declare-fun tp!1124695 () Bool)

(declare-fun tp!1124696 () Bool)

(assert (=> b!3700055 (= e!2291416 (and tp!1124695 tp!1124696))))

(declare-fun b!3700054 () Bool)

(declare-fun tp!1124697 () Bool)

(assert (=> b!3700054 (= e!2291416 tp!1124697)))

(declare-fun b!3700053 () Bool)

(declare-fun tp!1124694 () Bool)

(declare-fun tp!1124698 () Bool)

(assert (=> b!3700053 (= e!2291416 (and tp!1124694 tp!1124698))))

(declare-fun b!3700052 () Bool)

(assert (=> b!3700052 (= e!2291416 tp_is_empty!18531)))

(assert (= (and b!3699799 (is-ElementMatch!10728 (regex!5969 (rule!8833 token!544)))) b!3700052))

(assert (= (and b!3699799 (is-Concat!16928 (regex!5969 (rule!8833 token!544)))) b!3700053))

(assert (= (and b!3699799 (is-Star!10728 (regex!5969 (rule!8833 token!544)))) b!3700054))

(assert (= (and b!3699799 (is-Union!10728 (regex!5969 (rule!8833 token!544)))) b!3700055))

(declare-fun b!3700056 () Bool)

(declare-fun e!2291417 () Bool)

(declare-fun tp!1124699 () Bool)

(assert (=> b!3700056 (= e!2291417 (and tp_is_empty!18531 tp!1124699))))

(assert (=> b!3699798 (= tp!1124635 e!2291417)))

(assert (= (and b!3699798 (is-Cons!39302 (t!301947 input!3172))) b!3700056))

(declare-fun e!2291418 () Bool)

(assert (=> b!3699809 (= tp!1124633 e!2291418)))

(declare-fun b!3700060 () Bool)

(declare-fun tp!1124701 () Bool)

(declare-fun tp!1124702 () Bool)

(assert (=> b!3700060 (= e!2291418 (and tp!1124701 tp!1124702))))

(declare-fun b!3700059 () Bool)

(declare-fun tp!1124703 () Bool)

(assert (=> b!3700059 (= e!2291418 tp!1124703)))

(declare-fun b!3700058 () Bool)

(declare-fun tp!1124700 () Bool)

(declare-fun tp!1124704 () Bool)

(assert (=> b!3700058 (= e!2291418 (and tp!1124700 tp!1124704))))

(declare-fun b!3700057 () Bool)

(assert (=> b!3700057 (= e!2291418 tp_is_empty!18531)))

(assert (= (and b!3699809 (is-ElementMatch!10728 (regex!5969 (h!44723 rules!3598)))) b!3700057))

(assert (= (and b!3699809 (is-Concat!16928 (regex!5969 (h!44723 rules!3598)))) b!3700058))

(assert (= (and b!3699809 (is-Star!10728 (regex!5969 (h!44723 rules!3598)))) b!3700059))

(assert (= (and b!3699809 (is-Union!10728 (regex!5969 (h!44723 rules!3598)))) b!3700060))

(declare-fun b_lambda!109751 () Bool)

(assert (= b_lambda!109747 (or (and b!3699796 b_free!98547) (and b!3699806 b_free!98551 (= (toChars!8164 (transformation!5969 (h!44723 rules!3598))) (toChars!8164 (transformation!5969 (rule!8833 token!544))))) (and b!3700040 b_free!98563 (= (toChars!8164 (transformation!5969 (h!44723 (t!301948 rules!3598)))) (toChars!8164 (transformation!5969 (rule!8833 token!544))))) b_lambda!109751)))

(push 1)

(assert (not b!3700012))

(assert (not d!1085008))

(assert (not b!3700059))

(assert (not b!3700018))

(assert (not d!1084982))

(assert (not b_next!99265))

(assert (not b!3699972))

(assert (not b!3699892))

(assert b_and!276643)

(assert (not b!3700003))

(assert (not b!3699896))

(assert (not b!3700000))

(assert (not b_next!99251))

(assert (not d!1085010))

(assert (not b!3700038))

(assert (not b!3699946))

(assert (not b!3699948))

(assert (not b!3699888))

(assert (not d!1085006))

(assert (not b_next!99267))

(assert (not b!3699887))

(assert (not b!3699947))

(assert (not b!3699895))

(assert (not b!3699890))

(assert (not b_lambda!109751))

(assert (not d!1085012))

(assert (not b!3699998))

(assert (not b!3699944))

(assert (not b!3700039))

(assert (not d!1084990))

(assert (not b!3699999))

(assert (not b!3699973))

(assert b_and!276661)

(assert (not d!1085000))

(assert (not b!3700053))

(assert (not b!3699994))

(assert tp_is_empty!18531)

(assert b_and!276639)

(assert (not b!3700002))

(assert (not b!3700058))

(assert (not d!1085020))

(assert (not b!3700013))

(assert (not b!3700060))

(assert (not b!3700054))

(assert b_and!276659)

(assert (not b!3699885))

(assert (not b!3699974))

(assert (not b!3699943))

(assert (not d!1084972))

(assert (not b!3699995))

(assert (not bm!267348))

(assert (not b_next!99253))

(assert (not b!3699945))

(assert (not b!3699886))

(assert (not b_next!99255))

(assert (not b!3699993))

(assert (not b!3699889))

(assert (not b!3700056))

(assert b_and!276657)

(assert (not d!1084970))

(assert b_and!276655)

(assert (not b!3700025))

(assert (not b_next!99249))

(assert (not b!3699996))

(assert (not d!1084988))

(assert (not b!3699951))

(assert (not b!3699997))

(assert (not bm!267353))

(assert (not b!3699950))

(assert (not d!1084986))

(assert (not b!3699884))

(assert (not b!3700055))

(assert (not tb!214237))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99251))

(assert (not b_next!99267))

(assert b_and!276661)

(assert b_and!276639)

(assert b_and!276659)

(assert (not b_next!99265))

(assert (not b_next!99253))

(assert (not b_next!99255))

(assert b_and!276643)

(assert b_and!276657)

(assert b_and!276655)

(assert (not b_next!99249))

(check-sat)

(pop 1)

