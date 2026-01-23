; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346342 () Bool)

(assert start!346342)

(declare-fun b!3686225 () Bool)

(declare-fun b_free!97789 () Bool)

(declare-fun b_next!98493 () Bool)

(assert (=> b!3686225 (= b_free!97789 (not b_next!98493))))

(declare-fun tp!1120449 () Bool)

(declare-fun b_and!275475 () Bool)

(assert (=> b!3686225 (= tp!1120449 b_and!275475)))

(declare-fun b_free!97791 () Bool)

(declare-fun b_next!98495 () Bool)

(assert (=> b!3686225 (= b_free!97791 (not b_next!98495))))

(declare-fun tp!1120448 () Bool)

(declare-fun b_and!275477 () Bool)

(assert (=> b!3686225 (= tp!1120448 b_and!275477)))

(declare-fun res!1497990 () Bool)

(declare-fun e!2282726 () Bool)

(assert (=> start!346342 (=> (not res!1497990) (not e!2282726))))

(declare-datatypes ((LexerInterface!5475 0))(
  ( (LexerInterfaceExt!5472 (__x!24449 Int)) (Lexer!5473) )
))
(declare-fun thiss!25197 () LexerInterface!5475)

(get-info :version)

(assert (=> start!346342 (= res!1497990 ((_ is Lexer!5473) thiss!25197))))

(assert (=> start!346342 e!2282726))

(assert (=> start!346342 true))

(declare-fun e!2282728 () Bool)

(assert (=> start!346342 e!2282728))

(declare-fun e!2282725 () Bool)

(assert (=> start!346342 e!2282725))

(declare-fun e!2282731 () Bool)

(assert (=> start!346342 e!2282731))

(declare-fun b!3686224 () Bool)

(declare-fun res!1497997 () Bool)

(declare-fun e!2282730 () Bool)

(assert (=> b!3686224 (=> res!1497997 e!2282730)))

(declare-datatypes ((List!39116 0))(
  ( (Nil!38992) (Cons!38992 (h!44412 (_ BitVec 16)) (t!301099 List!39116)) )
))
(declare-datatypes ((TokenValue!6116 0))(
  ( (FloatLiteralValue!12232 (text!43257 List!39116)) (TokenValueExt!6115 (__x!24450 Int)) (Broken!30580 (value!188185 List!39116)) (Object!6239) (End!6116) (Def!6116) (Underscore!6116) (Match!6116) (Else!6116) (Error!6116) (Case!6116) (If!6116) (Extends!6116) (Abstract!6116) (Class!6116) (Val!6116) (DelimiterValue!12232 (del!6176 List!39116)) (KeywordValue!6122 (value!188186 List!39116)) (CommentValue!12232 (value!188187 List!39116)) (WhitespaceValue!12232 (value!188188 List!39116)) (IndentationValue!6116 (value!188189 List!39116)) (String!43913) (Int32!6116) (Broken!30581 (value!188190 List!39116)) (Boolean!6117) (Unit!57053) (OperatorValue!6119 (op!6176 List!39116)) (IdentifierValue!12232 (value!188191 List!39116)) (IdentifierValue!12233 (value!188192 List!39116)) (WhitespaceValue!12233 (value!188193 List!39116)) (True!12232) (False!12232) (Broken!30582 (value!188194 List!39116)) (Broken!30583 (value!188195 List!39116)) (True!12233) (RightBrace!6116) (RightBracket!6116) (Colon!6116) (Null!6116) (Comma!6116) (LeftBracket!6116) (False!12233) (LeftBrace!6116) (ImaginaryLiteralValue!6116 (text!43258 List!39116)) (StringLiteralValue!18348 (value!188196 List!39116)) (EOFValue!6116 (value!188197 List!39116)) (IdentValue!6116 (value!188198 List!39116)) (DelimiterValue!12233 (value!188199 List!39116)) (DedentValue!6116 (value!188200 List!39116)) (NewLineValue!6116 (value!188201 List!39116)) (IntegerValue!18348 (value!188202 (_ BitVec 32)) (text!43259 List!39116)) (IntegerValue!18349 (value!188203 Int) (text!43260 List!39116)) (Times!6116) (Or!6116) (Equal!6116) (Minus!6116) (Broken!30584 (value!188204 List!39116)) (And!6116) (Div!6116) (LessEqual!6116) (Mod!6116) (Concat!16761) (Not!6116) (Plus!6116) (SpaceValue!6116 (value!188205 List!39116)) (IntegerValue!18350 (value!188206 Int) (text!43261 List!39116)) (StringLiteralValue!18349 (text!43262 List!39116)) (FloatLiteralValue!12233 (text!43263 List!39116)) (BytesLiteralValue!6116 (value!188207 List!39116)) (CommentValue!12233 (value!188208 List!39116)) (StringLiteralValue!18350 (value!188209 List!39116)) (ErrorTokenValue!6116 (msg!6177 List!39116)) )
))
(declare-datatypes ((C!21476 0))(
  ( (C!21477 (val!12786 Int)) )
))
(declare-datatypes ((List!39117 0))(
  ( (Nil!38993) (Cons!38993 (h!44413 C!21476) (t!301100 List!39117)) )
))
(declare-datatypes ((IArray!23929 0))(
  ( (IArray!23930 (innerList!12022 List!39117)) )
))
(declare-datatypes ((Regex!10645 0))(
  ( (ElementMatch!10645 (c!637579 C!21476)) (Concat!16762 (regOne!21802 Regex!10645) (regTwo!21802 Regex!10645)) (EmptyExpr!10645) (Star!10645 (reg!10974 Regex!10645)) (EmptyLang!10645) (Union!10645 (regOne!21803 Regex!10645) (regTwo!21803 Regex!10645)) )
))
(declare-datatypes ((Conc!11962 0))(
  ( (Node!11962 (left!30415 Conc!11962) (right!30745 Conc!11962) (csize!24154 Int) (cheight!12173 Int)) (Leaf!18516 (xs!15164 IArray!23929) (csize!24155 Int)) (Empty!11962) )
))
(declare-datatypes ((BalanceConc!23538 0))(
  ( (BalanceConc!23539 (c!637580 Conc!11962)) )
))
(declare-datatypes ((String!43914 0))(
  ( (String!43915 (value!188210 String)) )
))
(declare-datatypes ((TokenValueInjection!11660 0))(
  ( (TokenValueInjection!11661 (toValue!8194 Int) (toChars!8053 Int)) )
))
(declare-datatypes ((Rule!11572 0))(
  ( (Rule!11573 (regex!5886 Regex!10645) (tag!6698 String!43914) (isSeparator!5886 Bool) (transformation!5886 TokenValueInjection!11660)) )
))
(declare-datatypes ((List!39118 0))(
  ( (Nil!38994) (Cons!38994 (h!44414 Rule!11572) (t!301101 List!39118)) )
))
(declare-fun rules!3568 () List!39118)

(declare-fun lt!1290040 () List!39117)

(declare-datatypes ((Token!11138 0))(
  ( (Token!11139 (value!188211 TokenValue!6116) (rule!8728 Rule!11572) (size!29788 Int) (originalCharacters!6600 List!39117)) )
))
(declare-datatypes ((tuple2!38876 0))(
  ( (tuple2!38877 (_1!22572 Token!11138) (_2!22572 List!39117)) )
))
(declare-datatypes ((Option!8383 0))(
  ( (None!8382) (Some!8382 (v!38328 tuple2!38876)) )
))
(declare-fun isEmpty!23194 (Option!8383) Bool)

(declare-fun maxPrefix!3003 (LexerInterface!5475 List!39118 List!39117) Option!8383)

(assert (=> b!3686224 (= res!1497997 (isEmpty!23194 (maxPrefix!3003 thiss!25197 rules!3568 lt!1290040)))))

(declare-fun e!2282733 () Bool)

(assert (=> b!3686225 (= e!2282733 (and tp!1120449 tp!1120448))))

(declare-fun b!3686226 () Bool)

(assert (=> b!3686226 (= e!2282730 true)))

(declare-fun lt!1290047 () Bool)

(declare-fun rulesValidInductive!2102 (LexerInterface!5475 List!39118) Bool)

(assert (=> b!3686226 (= lt!1290047 (rulesValidInductive!2102 thiss!25197 rules!3568))))

(declare-fun b!3686227 () Bool)

(declare-fun res!1497991 () Bool)

(assert (=> b!3686227 (=> (not res!1497991) (not e!2282726))))

(declare-fun rulesInvariant!4872 (LexerInterface!5475 List!39118) Bool)

(assert (=> b!3686227 (= res!1497991 (rulesInvariant!4872 thiss!25197 rules!3568))))

(declare-fun b!3686228 () Bool)

(declare-fun tp_is_empty!18373 () Bool)

(declare-fun tp!1120450 () Bool)

(assert (=> b!3686228 (= e!2282725 (and tp_is_empty!18373 tp!1120450))))

(declare-fun b!3686229 () Bool)

(declare-fun e!2282729 () Bool)

(declare-fun e!2282732 () Bool)

(assert (=> b!3686229 (= e!2282729 e!2282732)))

(declare-fun res!1497993 () Bool)

(assert (=> b!3686229 (=> (not res!1497993) (not e!2282732))))

(declare-fun lt!1290048 () Rule!11572)

(declare-fun lt!1290044 () List!39117)

(declare-fun matchR!5200 (Regex!10645 List!39117) Bool)

(assert (=> b!3686229 (= res!1497993 (matchR!5200 (regex!5886 lt!1290048) lt!1290044))))

(declare-datatypes ((Option!8384 0))(
  ( (None!8383) (Some!8383 (v!38329 Rule!11572)) )
))
(declare-fun lt!1290043 () Option!8384)

(declare-fun get!12927 (Option!8384) Rule!11572)

(assert (=> b!3686229 (= lt!1290048 (get!12927 lt!1290043))))

(declare-fun b!3686230 () Bool)

(declare-fun tp!1120451 () Bool)

(declare-fun e!2282734 () Bool)

(declare-fun inv!52457 (String!43914) Bool)

(declare-fun inv!52459 (TokenValueInjection!11660) Bool)

(assert (=> b!3686230 (= e!2282734 (and tp!1120451 (inv!52457 (tag!6698 (h!44414 rules!3568))) (inv!52459 (transformation!5886 (h!44414 rules!3568))) e!2282733))))

(declare-fun b!3686231 () Bool)

(declare-fun e!2282727 () Bool)

(assert (=> b!3686231 (= e!2282726 e!2282727)))

(declare-fun res!1497995 () Bool)

(assert (=> b!3686231 (=> (not res!1497995) (not e!2282727))))

(declare-datatypes ((List!39119 0))(
  ( (Nil!38995) (Cons!38995 (h!44415 Token!11138) (t!301102 List!39119)) )
))
(declare-datatypes ((IArray!23931 0))(
  ( (IArray!23932 (innerList!12023 List!39119)) )
))
(declare-datatypes ((Conc!11963 0))(
  ( (Node!11963 (left!30416 Conc!11963) (right!30746 Conc!11963) (csize!24156 Int) (cheight!12174 Int)) (Leaf!18517 (xs!15165 IArray!23931) (csize!24157 Int)) (Empty!11963) )
))
(declare-datatypes ((BalanceConc!23540 0))(
  ( (BalanceConc!23541 (c!637581 Conc!11963)) )
))
(declare-datatypes ((tuple2!38878 0))(
  ( (tuple2!38879 (_1!22573 BalanceConc!23540) (_2!22573 BalanceConc!23538)) )
))
(declare-fun lt!1290045 () tuple2!38878)

(declare-fun isEmpty!23195 (BalanceConc!23540) Bool)

(assert (=> b!3686231 (= res!1497995 (not (isEmpty!23195 (_1!22573 lt!1290045))))))

(declare-fun input!3129 () List!39117)

(declare-fun lex!2616 (LexerInterface!5475 List!39118 BalanceConc!23538) tuple2!38878)

(declare-fun seqFromList!4435 (List!39117) BalanceConc!23538)

(assert (=> b!3686231 (= lt!1290045 (lex!2616 thiss!25197 rules!3568 (seqFromList!4435 input!3129)))))

(declare-fun b!3686232 () Bool)

(assert (=> b!3686232 (= e!2282727 (not e!2282730))))

(declare-fun res!1497994 () Bool)

(assert (=> b!3686232 (=> res!1497994 e!2282730)))

(declare-fun lt!1290041 () Token!11138)

(assert (=> b!3686232 (= res!1497994 (not (matchR!5200 (regex!5886 (rule!8728 lt!1290041)) lt!1290044)))))

(assert (=> b!3686232 e!2282729))

(declare-fun res!1497996 () Bool)

(assert (=> b!3686232 (=> (not res!1497996) (not e!2282729))))

(declare-fun isDefined!6589 (Option!8384) Bool)

(assert (=> b!3686232 (= res!1497996 (isDefined!6589 lt!1290043))))

(declare-fun getRuleFromTag!1474 (LexerInterface!5475 List!39118 String!43914) Option!8384)

(assert (=> b!3686232 (= lt!1290043 (getRuleFromTag!1474 thiss!25197 rules!3568 (tag!6698 (rule!8728 lt!1290041))))))

(declare-datatypes ((Unit!57054 0))(
  ( (Unit!57055) )
))
(declare-fun lt!1290042 () Unit!57054)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1474 (LexerInterface!5475 List!39118 List!39117 Token!11138) Unit!57054)

(assert (=> b!3686232 (= lt!1290042 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1474 thiss!25197 rules!3568 input!3129 lt!1290041))))

(declare-fun isPrefix!3239 (List!39117 List!39117) Bool)

(assert (=> b!3686232 (isPrefix!3239 lt!1290044 lt!1290040)))

(declare-fun suffix!1448 () List!39117)

(declare-fun ++!9705 (List!39117 List!39117) List!39117)

(assert (=> b!3686232 (= lt!1290040 (++!9705 input!3129 suffix!1448))))

(declare-fun lt!1290049 () Unit!57054)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!570 (List!39117 List!39117 List!39117) Unit!57054)

(assert (=> b!3686232 (= lt!1290049 (lemmaPrefixStaysPrefixWhenAddingToSuffix!570 lt!1290044 input!3129 suffix!1448))))

(declare-fun lt!1290050 () tuple2!38876)

(assert (=> b!3686232 (isPrefix!3239 lt!1290044 (++!9705 lt!1290044 (_2!22572 lt!1290050)))))

(declare-fun lt!1290046 () Unit!57054)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2156 (List!39117 List!39117) Unit!57054)

(assert (=> b!3686232 (= lt!1290046 (lemmaConcatTwoListThenFirstIsPrefix!2156 lt!1290044 (_2!22572 lt!1290050)))))

(declare-fun get!12928 (Option!8383) tuple2!38876)

(assert (=> b!3686232 (= lt!1290050 (get!12928 (maxPrefix!3003 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14540 (BalanceConc!23538) List!39117)

(declare-fun charsOf!3897 (Token!11138) BalanceConc!23538)

(assert (=> b!3686232 (= lt!1290044 (list!14540 (charsOf!3897 lt!1290041)))))

(declare-fun head!7946 (List!39119) Token!11138)

(declare-fun list!14541 (BalanceConc!23540) List!39119)

(assert (=> b!3686232 (= lt!1290041 (head!7946 (list!14541 (_1!22573 lt!1290045))))))

(declare-fun b!3686233 () Bool)

(declare-fun tp!1120447 () Bool)

(assert (=> b!3686233 (= e!2282728 (and e!2282734 tp!1120447))))

(declare-fun b!3686234 () Bool)

(declare-fun res!1497992 () Bool)

(assert (=> b!3686234 (=> (not res!1497992) (not e!2282726))))

(declare-fun isEmpty!23196 (List!39118) Bool)

(assert (=> b!3686234 (= res!1497992 (not (isEmpty!23196 rules!3568)))))

(declare-fun b!3686235 () Bool)

(assert (=> b!3686235 (= e!2282732 (= (rule!8728 lt!1290041) lt!1290048))))

(declare-fun b!3686236 () Bool)

(declare-fun tp!1120452 () Bool)

(assert (=> b!3686236 (= e!2282731 (and tp_is_empty!18373 tp!1120452))))

(assert (= (and start!346342 res!1497990) b!3686234))

(assert (= (and b!3686234 res!1497992) b!3686227))

(assert (= (and b!3686227 res!1497991) b!3686231))

(assert (= (and b!3686231 res!1497995) b!3686232))

(assert (= (and b!3686232 res!1497996) b!3686229))

(assert (= (and b!3686229 res!1497993) b!3686235))

(assert (= (and b!3686232 (not res!1497994)) b!3686224))

(assert (= (and b!3686224 (not res!1497997)) b!3686226))

(assert (= b!3686230 b!3686225))

(assert (= b!3686233 b!3686230))

(assert (= (and start!346342 ((_ is Cons!38994) rules!3568)) b!3686233))

(assert (= (and start!346342 ((_ is Cons!38993) suffix!1448)) b!3686228))

(assert (= (and start!346342 ((_ is Cons!38993) input!3129)) b!3686236))

(declare-fun m!4197797 () Bool)

(assert (=> b!3686226 m!4197797))

(declare-fun m!4197799 () Bool)

(assert (=> b!3686234 m!4197799))

(declare-fun m!4197801 () Bool)

(assert (=> b!3686230 m!4197801))

(declare-fun m!4197803 () Bool)

(assert (=> b!3686230 m!4197803))

(declare-fun m!4197805 () Bool)

(assert (=> b!3686229 m!4197805))

(declare-fun m!4197807 () Bool)

(assert (=> b!3686229 m!4197807))

(declare-fun m!4197809 () Bool)

(assert (=> b!3686231 m!4197809))

(declare-fun m!4197811 () Bool)

(assert (=> b!3686231 m!4197811))

(assert (=> b!3686231 m!4197811))

(declare-fun m!4197813 () Bool)

(assert (=> b!3686231 m!4197813))

(declare-fun m!4197815 () Bool)

(assert (=> b!3686224 m!4197815))

(assert (=> b!3686224 m!4197815))

(declare-fun m!4197817 () Bool)

(assert (=> b!3686224 m!4197817))

(declare-fun m!4197819 () Bool)

(assert (=> b!3686227 m!4197819))

(declare-fun m!4197821 () Bool)

(assert (=> b!3686232 m!4197821))

(declare-fun m!4197823 () Bool)

(assert (=> b!3686232 m!4197823))

(declare-fun m!4197825 () Bool)

(assert (=> b!3686232 m!4197825))

(declare-fun m!4197827 () Bool)

(assert (=> b!3686232 m!4197827))

(declare-fun m!4197829 () Bool)

(assert (=> b!3686232 m!4197829))

(declare-fun m!4197831 () Bool)

(assert (=> b!3686232 m!4197831))

(declare-fun m!4197833 () Bool)

(assert (=> b!3686232 m!4197833))

(assert (=> b!3686232 m!4197825))

(declare-fun m!4197835 () Bool)

(assert (=> b!3686232 m!4197835))

(declare-fun m!4197837 () Bool)

(assert (=> b!3686232 m!4197837))

(declare-fun m!4197839 () Bool)

(assert (=> b!3686232 m!4197839))

(declare-fun m!4197841 () Bool)

(assert (=> b!3686232 m!4197841))

(declare-fun m!4197843 () Bool)

(assert (=> b!3686232 m!4197843))

(assert (=> b!3686232 m!4197839))

(declare-fun m!4197845 () Bool)

(assert (=> b!3686232 m!4197845))

(declare-fun m!4197847 () Bool)

(assert (=> b!3686232 m!4197847))

(assert (=> b!3686232 m!4197835))

(declare-fun m!4197849 () Bool)

(assert (=> b!3686232 m!4197849))

(assert (=> b!3686232 m!4197829))

(declare-fun m!4197851 () Bool)

(assert (=> b!3686232 m!4197851))

(check-sat tp_is_empty!18373 (not b!3686229) (not b!3686226) (not b!3686236) b_and!275475 (not b!3686231) (not b!3686228) (not b_next!98493) (not b!3686227) (not b!3686233) (not b_next!98495) (not b!3686234) b_and!275477 (not b!3686224) (not b!3686230) (not b!3686232))
(check-sat b_and!275475 b_and!275477 (not b_next!98495) (not b_next!98493))
