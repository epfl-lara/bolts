; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59404 () Bool)

(assert start!59404)

(declare-fun b!619021 () Bool)

(declare-fun b_free!17953 () Bool)

(declare-fun b_next!17969 () Bool)

(assert (=> b!619021 (= b_free!17953 (not b_next!17969))))

(declare-fun tp!191842 () Bool)

(declare-fun b_and!61467 () Bool)

(assert (=> b!619021 (= tp!191842 b_and!61467)))

(declare-fun b_free!17955 () Bool)

(declare-fun b_next!17971 () Bool)

(assert (=> b!619021 (= b_free!17955 (not b_next!17971))))

(declare-fun tp!191834 () Bool)

(declare-fun b_and!61469 () Bool)

(assert (=> b!619021 (= tp!191834 b_and!61469)))

(declare-fun b!619033 () Bool)

(declare-fun b_free!17957 () Bool)

(declare-fun b_next!17973 () Bool)

(assert (=> b!619033 (= b_free!17957 (not b_next!17973))))

(declare-fun tp!191838 () Bool)

(declare-fun b_and!61471 () Bool)

(assert (=> b!619033 (= tp!191838 b_and!61471)))

(declare-fun b_free!17959 () Bool)

(declare-fun b_next!17975 () Bool)

(assert (=> b!619033 (= b_free!17959 (not b_next!17975))))

(declare-fun tp!191836 () Bool)

(declare-fun b_and!61473 () Bool)

(assert (=> b!619033 (= tp!191836 b_and!61473)))

(declare-fun e!375591 () Bool)

(assert (=> b!619021 (= e!375591 (and tp!191842 tp!191834))))

(declare-fun b!619022 () Bool)

(declare-fun res!269657 () Bool)

(declare-fun e!375594 () Bool)

(assert (=> b!619022 (=> (not res!269657) (not e!375594))))

(declare-datatypes ((LexerInterface!1167 0))(
  ( (LexerInterfaceExt!1164 (__x!4506 Int)) (Lexer!1165) )
))
(declare-fun thiss!25571 () LexerInterface!1167)

(declare-datatypes ((List!6313 0))(
  ( (Nil!6303) (Cons!6303 (h!11704 (_ BitVec 16)) (t!81552 List!6313)) )
))
(declare-datatypes ((TokenValue!1303 0))(
  ( (FloatLiteralValue!2606 (text!9566 List!6313)) (TokenValueExt!1302 (__x!4507 Int)) (Broken!6515 (value!41289 List!6313)) (Object!1312) (End!1303) (Def!1303) (Underscore!1303) (Match!1303) (Else!1303) (Error!1303) (Case!1303) (If!1303) (Extends!1303) (Abstract!1303) (Class!1303) (Val!1303) (DelimiterValue!2606 (del!1363 List!6313)) (KeywordValue!1309 (value!41290 List!6313)) (CommentValue!2606 (value!41291 List!6313)) (WhitespaceValue!2606 (value!41292 List!6313)) (IndentationValue!1303 (value!41293 List!6313)) (String!8262) (Int32!1303) (Broken!6516 (value!41294 List!6313)) (Boolean!1304) (Unit!11423) (OperatorValue!1306 (op!1363 List!6313)) (IdentifierValue!2606 (value!41295 List!6313)) (IdentifierValue!2607 (value!41296 List!6313)) (WhitespaceValue!2607 (value!41297 List!6313)) (True!2606) (False!2606) (Broken!6517 (value!41298 List!6313)) (Broken!6518 (value!41299 List!6313)) (True!2607) (RightBrace!1303) (RightBracket!1303) (Colon!1303) (Null!1303) (Comma!1303) (LeftBracket!1303) (False!2607) (LeftBrace!1303) (ImaginaryLiteralValue!1303 (text!9567 List!6313)) (StringLiteralValue!3909 (value!41300 List!6313)) (EOFValue!1303 (value!41301 List!6313)) (IdentValue!1303 (value!41302 List!6313)) (DelimiterValue!2607 (value!41303 List!6313)) (DedentValue!1303 (value!41304 List!6313)) (NewLineValue!1303 (value!41305 List!6313)) (IntegerValue!3909 (value!41306 (_ BitVec 32)) (text!9568 List!6313)) (IntegerValue!3910 (value!41307 Int) (text!9569 List!6313)) (Times!1303) (Or!1303) (Equal!1303) (Minus!1303) (Broken!6519 (value!41308 List!6313)) (And!1303) (Div!1303) (LessEqual!1303) (Mod!1303) (Concat!2916) (Not!1303) (Plus!1303) (SpaceValue!1303 (value!41309 List!6313)) (IntegerValue!3911 (value!41310 Int) (text!9570 List!6313)) (StringLiteralValue!3910 (text!9571 List!6313)) (FloatLiteralValue!2607 (text!9572 List!6313)) (BytesLiteralValue!1303 (value!41311 List!6313)) (CommentValue!2607 (value!41312 List!6313)) (StringLiteralValue!3911 (value!41313 List!6313)) (ErrorTokenValue!1303 (msg!1364 List!6313)) )
))
(declare-datatypes ((C!4152 0))(
  ( (C!4153 (val!2302 Int)) )
))
(declare-datatypes ((List!6314 0))(
  ( (Nil!6304) (Cons!6304 (h!11705 C!4152) (t!81553 List!6314)) )
))
(declare-datatypes ((IArray!3999 0))(
  ( (IArray!4000 (innerList!2057 List!6314)) )
))
(declare-datatypes ((Conc!1999 0))(
  ( (Node!1999 (left!5000 Conc!1999) (right!5330 Conc!1999) (csize!4228 Int) (cheight!2210 Int)) (Leaf!3147 (xs!4636 IArray!3999) (csize!4229 Int)) (Empty!1999) )
))
(declare-datatypes ((BalanceConc!4006 0))(
  ( (BalanceConc!4007 (c!113909 Conc!1999)) )
))
(declare-datatypes ((Regex!1613 0))(
  ( (ElementMatch!1613 (c!113910 C!4152)) (Concat!2917 (regOne!3738 Regex!1613) (regTwo!3738 Regex!1613)) (EmptyExpr!1613) (Star!1613 (reg!1942 Regex!1613)) (EmptyLang!1613) (Union!1613 (regOne!3739 Regex!1613) (regTwo!3739 Regex!1613)) )
))
(declare-datatypes ((TokenValueInjection!2374 0))(
  ( (TokenValueInjection!2375 (toValue!2192 Int) (toChars!2051 Int)) )
))
(declare-datatypes ((String!8263 0))(
  ( (String!8264 (value!41314 String)) )
))
(declare-datatypes ((Rule!2358 0))(
  ( (Rule!2359 (regex!1279 Regex!1613) (tag!1541 String!8263) (isSeparator!1279 Bool) (transformation!1279 TokenValueInjection!2374)) )
))
(declare-datatypes ((List!6315 0))(
  ( (Nil!6305) (Cons!6305 (h!11706 Rule!2358) (t!81554 List!6315)) )
))
(declare-fun rules!3735 () List!6315)

(declare-fun rulesInvariant!1128 (LexerInterface!1167 List!6315) Bool)

(assert (=> b!619022 (= res!269657 (rulesInvariant!1128 thiss!25571 rules!3735))))

(declare-fun b!619023 () Bool)

(declare-fun e!375597 () Bool)

(declare-fun e!375598 () Bool)

(declare-fun tp!191840 () Bool)

(assert (=> b!619023 (= e!375597 (and e!375598 tp!191840))))

(declare-fun e!375593 () Bool)

(declare-datatypes ((Token!2282 0))(
  ( (Token!2283 (value!41315 TokenValue!1303) (rule!2071 Rule!2358) (size!4900 Int) (originalCharacters!1312 List!6314)) )
))
(declare-datatypes ((List!6316 0))(
  ( (Nil!6306) (Cons!6306 (h!11707 Token!2282) (t!81555 List!6316)) )
))
(declare-fun producedTokens!8 () List!6316)

(declare-fun tp!191837 () Bool)

(declare-fun e!375589 () Bool)

(declare-fun b!619024 () Bool)

(declare-fun inv!7974 (Token!2282) Bool)

(assert (=> b!619024 (= e!375589 (and (inv!7974 (h!11707 producedTokens!8)) e!375593 tp!191837))))

(declare-fun b!619025 () Bool)

(declare-fun res!269659 () Bool)

(assert (=> b!619025 (=> (not res!269659) (not e!375594))))

(declare-fun isEmpty!4524 (List!6315) Bool)

(assert (=> b!619025 (= res!269659 (not (isEmpty!4524 rules!3735)))))

(declare-fun b!619026 () Bool)

(declare-fun e!375587 () Bool)

(declare-fun tp!191841 () Bool)

(declare-fun e!375596 () Bool)

(declare-fun inv!7971 (String!8263) Bool)

(declare-fun inv!7975 (TokenValueInjection!2374) Bool)

(assert (=> b!619026 (= e!375596 (and tp!191841 (inv!7971 (tag!1541 (rule!2071 (h!11707 producedTokens!8)))) (inv!7975 (transformation!1279 (rule!2071 (h!11707 producedTokens!8)))) e!375587))))

(declare-fun res!269658 () Bool)

(assert (=> start!59404 (=> (not res!269658) (not e!375594))))

(get-info :version)

(assert (=> start!59404 (= res!269658 ((_ is Lexer!1165) thiss!25571))))

(assert (=> start!59404 e!375594))

(assert (=> start!59404 true))

(assert (=> start!59404 e!375597))

(assert (=> start!59404 e!375589))

(declare-fun e!375592 () Bool)

(assert (=> start!59404 e!375592))

(declare-fun b!619027 () Bool)

(declare-fun tp!191835 () Bool)

(assert (=> b!619027 (= e!375598 (and tp!191835 (inv!7971 (tag!1541 (h!11706 rules!3735))) (inv!7975 (transformation!1279 (h!11706 rules!3735))) e!375591))))

(declare-fun b!619028 () Bool)

(declare-fun res!269656 () Bool)

(assert (=> b!619028 (=> (not res!269656) (not e!375594))))

(declare-fun size!4901 (List!6316) Int)

(assert (=> b!619028 (= res!269656 (> (size!4901 producedTokens!8) 0))))

(declare-fun b!619029 () Bool)

(declare-fun e!375595 () Bool)

(assert (=> b!619029 (= e!375594 e!375595)))

(declare-fun res!269660 () Bool)

(assert (=> b!619029 (=> (not res!269660) (not e!375595))))

(declare-datatypes ((IArray!4001 0))(
  ( (IArray!4002 (innerList!2058 List!6316)) )
))
(declare-datatypes ((Conc!2000 0))(
  ( (Node!2000 (left!5001 Conc!2000) (right!5331 Conc!2000) (csize!4230 Int) (cheight!2211 Int)) (Leaf!3148 (xs!4637 IArray!4001) (csize!4231 Int)) (Empty!2000) )
))
(declare-datatypes ((BalanceConc!4008 0))(
  ( (BalanceConc!4009 (c!113911 Conc!2000)) )
))
(declare-datatypes ((tuple2!7090 0))(
  ( (tuple2!7091 (_1!3809 BalanceConc!4008) (_2!3809 BalanceConc!4006)) )
))
(declare-fun lt!264882 () tuple2!7090)

(declare-fun list!2620 (BalanceConc!4008) List!6316)

(assert (=> b!619029 (= res!269660 (= (list!2620 (_1!3809 lt!264882)) producedTokens!8))))

(declare-fun input!3206 () List!6314)

(declare-fun lex!562 (LexerInterface!1167 List!6315 BalanceConc!4006) tuple2!7090)

(declare-fun seqFromList!1434 (List!6314) BalanceConc!4006)

(assert (=> b!619029 (= lt!264882 (lex!562 thiss!25571 rules!3735 (seqFromList!1434 input!3206)))))

(declare-fun b!619030 () Bool)

(declare-fun tp_is_empty!3585 () Bool)

(declare-fun tp!191843 () Bool)

(assert (=> b!619030 (= e!375592 (and tp_is_empty!3585 tp!191843))))

(declare-fun b!619031 () Bool)

(declare-fun tp!191839 () Bool)

(declare-fun inv!21 (TokenValue!1303) Bool)

(assert (=> b!619031 (= e!375593 (and (inv!21 (value!41315 (h!11707 producedTokens!8))) e!375596 tp!191839))))

(declare-fun b!619032 () Bool)

(assert (=> b!619032 (= e!375595 false)))

(declare-fun lt!264881 () List!6314)

(declare-fun list!2621 (BalanceConc!4006) List!6314)

(assert (=> b!619032 (= lt!264881 (list!2621 (_2!3809 lt!264882)))))

(assert (=> b!619033 (= e!375587 (and tp!191838 tp!191836))))

(assert (= (and start!59404 res!269658) b!619022))

(assert (= (and b!619022 res!269657) b!619025))

(assert (= (and b!619025 res!269659) b!619028))

(assert (= (and b!619028 res!269656) b!619029))

(assert (= (and b!619029 res!269660) b!619032))

(assert (= b!619027 b!619021))

(assert (= b!619023 b!619027))

(assert (= (and start!59404 ((_ is Cons!6305) rules!3735)) b!619023))

(assert (= b!619026 b!619033))

(assert (= b!619031 b!619026))

(assert (= b!619024 b!619031))

(assert (= (and start!59404 ((_ is Cons!6306) producedTokens!8)) b!619024))

(assert (= (and start!59404 ((_ is Cons!6304) input!3206)) b!619030))

(declare-fun m!886933 () Bool)

(assert (=> b!619024 m!886933))

(declare-fun m!886935 () Bool)

(assert (=> b!619025 m!886935))

(declare-fun m!886937 () Bool)

(assert (=> b!619027 m!886937))

(declare-fun m!886939 () Bool)

(assert (=> b!619027 m!886939))

(declare-fun m!886941 () Bool)

(assert (=> b!619022 m!886941))

(declare-fun m!886943 () Bool)

(assert (=> b!619032 m!886943))

(declare-fun m!886945 () Bool)

(assert (=> b!619031 m!886945))

(declare-fun m!886947 () Bool)

(assert (=> b!619028 m!886947))

(declare-fun m!886949 () Bool)

(assert (=> b!619026 m!886949))

(declare-fun m!886951 () Bool)

(assert (=> b!619026 m!886951))

(declare-fun m!886953 () Bool)

(assert (=> b!619029 m!886953))

(declare-fun m!886955 () Bool)

(assert (=> b!619029 m!886955))

(assert (=> b!619029 m!886955))

(declare-fun m!886957 () Bool)

(assert (=> b!619029 m!886957))

(check-sat (not b_next!17973) (not b_next!17971) tp_is_empty!3585 (not b!619026) (not b!619024) (not b!619023) (not b!619029) (not b!619025) (not b!619032) (not b!619031) b_and!61467 (not b_next!17975) (not b!619030) b_and!61471 b_and!61473 (not b!619022) (not b!619027) b_and!61469 (not b_next!17969) (not b!619028))
(check-sat (not b_next!17973) (not b_next!17971) b_and!61469 (not b_next!17969) b_and!61467 (not b_next!17975) b_and!61471 b_and!61473)
