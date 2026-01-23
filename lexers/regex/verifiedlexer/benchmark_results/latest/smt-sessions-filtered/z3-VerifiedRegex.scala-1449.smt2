; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76350 () Bool)

(assert start!76350)

(declare-fun b!852026 () Bool)

(declare-fun b_free!25761 () Bool)

(declare-fun b_next!25825 () Bool)

(assert (=> b!852026 (= b_free!25761 (not b_next!25825))))

(declare-fun tp!268438 () Bool)

(declare-fun b_and!74841 () Bool)

(assert (=> b!852026 (= tp!268438 b_and!74841)))

(declare-fun b_free!25763 () Bool)

(declare-fun b_next!25827 () Bool)

(assert (=> b!852026 (= b_free!25763 (not b_next!25827))))

(declare-fun tp!268432 () Bool)

(declare-fun b_and!74843 () Bool)

(assert (=> b!852026 (= tp!268432 b_and!74843)))

(declare-fun b!852036 () Bool)

(declare-fun b_free!25765 () Bool)

(declare-fun b_next!25829 () Bool)

(assert (=> b!852036 (= b_free!25765 (not b_next!25829))))

(declare-fun tp!268434 () Bool)

(declare-fun b_and!74845 () Bool)

(assert (=> b!852036 (= tp!268434 b_and!74845)))

(declare-fun b_free!25767 () Bool)

(declare-fun b_next!25831 () Bool)

(assert (=> b!852036 (= b_free!25767 (not b_next!25831))))

(declare-fun tp!268442 () Bool)

(declare-fun b_and!74847 () Bool)

(assert (=> b!852036 (= tp!268442 b_and!74847)))

(declare-fun b!852031 () Bool)

(declare-fun b_free!25769 () Bool)

(declare-fun b_next!25833 () Bool)

(assert (=> b!852031 (= b_free!25769 (not b_next!25833))))

(declare-fun tp!268435 () Bool)

(declare-fun b_and!74849 () Bool)

(assert (=> b!852031 (= tp!268435 b_and!74849)))

(declare-fun b_free!25771 () Bool)

(declare-fun b_next!25835 () Bool)

(assert (=> b!852031 (= b_free!25771 (not b_next!25835))))

(declare-fun tp!268433 () Bool)

(declare-fun b_and!74851 () Bool)

(assert (=> b!852031 (= tp!268433 b_and!74851)))

(declare-fun b!852023 () Bool)

(declare-fun e!560764 () Bool)

(declare-fun e!560770 () Bool)

(declare-datatypes ((List!9208 0))(
  ( (Nil!9192) (Cons!9192 (h!14593 (_ BitVec 16)) (t!95774 List!9208)) )
))
(declare-datatypes ((TokenValue!1790 0))(
  ( (FloatLiteralValue!3580 (text!12975 List!9208)) (TokenValueExt!1789 (__x!7311 Int)) (Broken!8950 (value!55807 List!9208)) (Object!1805) (End!1790) (Def!1790) (Underscore!1790) (Match!1790) (Else!1790) (Error!1790) (Case!1790) (If!1790) (Extends!1790) (Abstract!1790) (Class!1790) (Val!1790) (DelimiterValue!3580 (del!1850 List!9208)) (KeywordValue!1796 (value!55808 List!9208)) (CommentValue!3580 (value!55809 List!9208)) (WhitespaceValue!3580 (value!55810 List!9208)) (IndentationValue!1790 (value!55811 List!9208)) (String!10847) (Int32!1790) (Broken!8951 (value!55812 List!9208)) (Boolean!1791) (Unit!13694) (OperatorValue!1793 (op!1850 List!9208)) (IdentifierValue!3580 (value!55813 List!9208)) (IdentifierValue!3581 (value!55814 List!9208)) (WhitespaceValue!3581 (value!55815 List!9208)) (True!3580) (False!3580) (Broken!8952 (value!55816 List!9208)) (Broken!8953 (value!55817 List!9208)) (True!3581) (RightBrace!1790) (RightBracket!1790) (Colon!1790) (Null!1790) (Comma!1790) (LeftBracket!1790) (False!3581) (LeftBrace!1790) (ImaginaryLiteralValue!1790 (text!12976 List!9208)) (StringLiteralValue!5370 (value!55818 List!9208)) (EOFValue!1790 (value!55819 List!9208)) (IdentValue!1790 (value!55820 List!9208)) (DelimiterValue!3581 (value!55821 List!9208)) (DedentValue!1790 (value!55822 List!9208)) (NewLineValue!1790 (value!55823 List!9208)) (IntegerValue!5370 (value!55824 (_ BitVec 32)) (text!12977 List!9208)) (IntegerValue!5371 (value!55825 Int) (text!12978 List!9208)) (Times!1790) (Or!1790) (Equal!1790) (Minus!1790) (Broken!8954 (value!55826 List!9208)) (And!1790) (Div!1790) (LessEqual!1790) (Mod!1790) (Concat!3947) (Not!1790) (Plus!1790) (SpaceValue!1790 (value!55827 List!9208)) (IntegerValue!5372 (value!55828 Int) (text!12979 List!9208)) (StringLiteralValue!5371 (text!12980 List!9208)) (FloatLiteralValue!3581 (text!12981 List!9208)) (BytesLiteralValue!1790 (value!55829 List!9208)) (CommentValue!3581 (value!55830 List!9208)) (StringLiteralValue!5372 (value!55831 List!9208)) (ErrorTokenValue!1790 (msg!1851 List!9208)) )
))
(declare-datatypes ((C!4884 0))(
  ( (C!4885 (val!2690 Int)) )
))
(declare-datatypes ((Regex!2157 0))(
  ( (ElementMatch!2157 (c!138263 C!4884)) (Concat!3948 (regOne!4826 Regex!2157) (regTwo!4826 Regex!2157)) (EmptyExpr!2157) (Star!2157 (reg!2486 Regex!2157)) (EmptyLang!2157) (Union!2157 (regOne!4827 Regex!2157) (regTwo!4827 Regex!2157)) )
))
(declare-datatypes ((String!10848 0))(
  ( (String!10849 (value!55832 String)) )
))
(declare-datatypes ((List!9209 0))(
  ( (Nil!9193) (Cons!9193 (h!14594 C!4884) (t!95775 List!9209)) )
))
(declare-datatypes ((IArray!6095 0))(
  ( (IArray!6096 (innerList!3105 List!9209)) )
))
(declare-datatypes ((Conc!3045 0))(
  ( (Node!3045 (left!6800 Conc!3045) (right!7130 Conc!3045) (csize!6320 Int) (cheight!3256 Int)) (Leaf!4495 (xs!5734 IArray!6095) (csize!6321 Int)) (Empty!3045) )
))
(declare-datatypes ((BalanceConc!6104 0))(
  ( (BalanceConc!6105 (c!138264 Conc!3045)) )
))
(declare-datatypes ((TokenValueInjection!3280 0))(
  ( (TokenValueInjection!3281 (toValue!2765 Int) (toChars!2624 Int)) )
))
(declare-datatypes ((Rule!3248 0))(
  ( (Rule!3249 (regex!1724 Regex!2157) (tag!1986 String!10848) (isSeparator!1724 Bool) (transformation!1724 TokenValueInjection!3280)) )
))
(declare-datatypes ((Token!3114 0))(
  ( (Token!3115 (value!55833 TokenValue!1790) (rule!3147 Rule!3248) (size!7663 Int) (originalCharacters!2280 List!9209)) )
))
(declare-fun separatorToken!297 () Token!3114)

(declare-fun tp!268431 () Bool)

(declare-fun inv!11682 (String!10848) Bool)

(declare-fun inv!11685 (TokenValueInjection!3280) Bool)

(assert (=> b!852023 (= e!560770 (and tp!268431 (inv!11682 (tag!1986 (rule!3147 separatorToken!297))) (inv!11685 (transformation!1724 (rule!3147 separatorToken!297))) e!560764))))

(declare-fun b!852024 () Bool)

(declare-fun res!389299 () Bool)

(declare-fun e!560756 () Bool)

(assert (=> b!852024 (=> (not res!389299) (not e!560756))))

(declare-datatypes ((LexerInterface!1526 0))(
  ( (LexerInterfaceExt!1523 (__x!7312 Int)) (Lexer!1524) )
))
(declare-fun thiss!20117 () LexerInterface!1526)

(declare-datatypes ((List!9210 0))(
  ( (Nil!9194) (Cons!9194 (h!14595 Rule!3248) (t!95776 List!9210)) )
))
(declare-fun rules!2621 () List!9210)

(declare-fun rulesInvariant!1402 (LexerInterface!1526 List!9210) Bool)

(assert (=> b!852024 (= res!389299 (rulesInvariant!1402 thiss!20117 rules!2621))))

(declare-fun b!852025 () Bool)

(declare-fun res!389301 () Bool)

(assert (=> b!852025 (=> (not res!389301) (not e!560756))))

(declare-fun rulesProduceIndividualToken!590 (LexerInterface!1526 List!9210 Token!3114) Bool)

(assert (=> b!852025 (= res!389301 (rulesProduceIndividualToken!590 thiss!20117 rules!2621 separatorToken!297))))

(assert (=> b!852026 (= e!560764 (and tp!268438 tp!268432))))

(declare-fun b!852028 () Bool)

(declare-fun e!560771 () Bool)

(declare-fun e!560768 () Bool)

(declare-fun tp!268437 () Bool)

(assert (=> b!852028 (= e!560771 (and e!560768 tp!268437))))

(declare-fun e!560761 () Bool)

(declare-fun e!560757 () Bool)

(declare-fun b!852029 () Bool)

(declare-fun tp!268430 () Bool)

(declare-datatypes ((List!9211 0))(
  ( (Nil!9195) (Cons!9195 (h!14596 Token!3114) (t!95777 List!9211)) )
))
(declare-fun l!5107 () List!9211)

(declare-fun inv!11686 (Token!3114) Bool)

(assert (=> b!852029 (= e!560761 (and (inv!11686 (h!14596 l!5107)) e!560757 tp!268430))))

(declare-fun tp!268440 () Bool)

(declare-fun b!852030 () Bool)

(declare-fun e!560766 () Bool)

(assert (=> b!852030 (= e!560768 (and tp!268440 (inv!11682 (tag!1986 (h!14595 rules!2621))) (inv!11685 (transformation!1724 (h!14595 rules!2621))) e!560766))))

(assert (=> b!852031 (= e!560766 (and tp!268435 tp!268433))))

(declare-fun b!852032 () Bool)

(declare-fun e!560762 () Bool)

(assert (=> b!852032 (= e!560756 (not e!560762))))

(declare-fun res!389294 () Bool)

(assert (=> b!852032 (=> res!389294 e!560762)))

(declare-fun lt!322777 () List!9211)

(get-info :version)

(assert (=> b!852032 (= res!389294 (and ((_ is Cons!9195) lt!322777) ((_ is Cons!9195) (t!95777 lt!322777))))))

(declare-fun rulesProduceEachTokenIndividuallyList!414 (LexerInterface!1526 List!9210 List!9211) Bool)

(assert (=> b!852032 (rulesProduceEachTokenIndividuallyList!414 thiss!20117 rules!2621 lt!322777)))

(declare-fun withSeparatorTokenList!56 (LexerInterface!1526 List!9211 Token!3114) List!9211)

(assert (=> b!852032 (= lt!322777 (withSeparatorTokenList!56 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13695 0))(
  ( (Unit!13696) )
))
(declare-fun lt!322779 () Unit!13695)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!56 (LexerInterface!1526 List!9210 List!9211 Token!3114) Unit!13695)

(assert (=> b!852032 (= lt!322779 (withSeparatorTokenListPreservesRulesProduceTokens!56 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!268441 () Bool)

(declare-fun e!560769 () Bool)

(declare-fun b!852033 () Bool)

(declare-fun inv!21 (TokenValue!1790) Bool)

(assert (=> b!852033 (= e!560757 (and (inv!21 (value!55833 (h!14596 l!5107))) e!560769 tp!268441))))

(declare-fun b!852034 () Bool)

(declare-fun res!389298 () Bool)

(assert (=> b!852034 (=> (not res!389298) (not e!560756))))

(declare-fun isEmpty!5437 (List!9210) Bool)

(assert (=> b!852034 (= res!389298 (not (isEmpty!5437 rules!2621)))))

(declare-fun b!852035 () Bool)

(assert (=> b!852035 (= e!560762 true)))

(declare-fun lt!322778 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!46 (LexerInterface!1526 List!9211 List!9210) Bool)

(assert (=> b!852035 (= lt!322778 (tokensListTwoByTwoPredicateSeparableList!46 thiss!20117 lt!322777 rules!2621))))

(declare-fun e!560755 () Bool)

(assert (=> b!852036 (= e!560755 (and tp!268434 tp!268442))))

(declare-fun b!852037 () Bool)

(declare-fun tp!268439 () Bool)

(declare-fun e!560760 () Bool)

(assert (=> b!852037 (= e!560760 (and (inv!21 (value!55833 separatorToken!297)) e!560770 tp!268439))))

(declare-fun b!852027 () Bool)

(declare-fun res!389293 () Bool)

(assert (=> b!852027 (=> (not res!389293) (not e!560756))))

(declare-fun lambda!25488 () Int)

(declare-fun forall!2171 (List!9211 Int) Bool)

(assert (=> b!852027 (= res!389293 (forall!2171 l!5107 lambda!25488))))

(declare-fun res!389296 () Bool)

(assert (=> start!76350 (=> (not res!389296) (not e!560756))))

(assert (=> start!76350 (= res!389296 ((_ is Lexer!1524) thiss!20117))))

(assert (=> start!76350 e!560756))

(assert (=> start!76350 true))

(assert (=> start!76350 e!560771))

(assert (=> start!76350 e!560761))

(assert (=> start!76350 (and (inv!11686 separatorToken!297) e!560760)))

(declare-fun b!852038 () Bool)

(declare-fun res!389295 () Bool)

(assert (=> b!852038 (=> (not res!389295) (not e!560756))))

(declare-fun sepAndNonSepRulesDisjointChars!524 (List!9210 List!9210) Bool)

(assert (=> b!852038 (= res!389295 (sepAndNonSepRulesDisjointChars!524 rules!2621 rules!2621))))

(declare-fun b!852039 () Bool)

(declare-fun tp!268436 () Bool)

(assert (=> b!852039 (= e!560769 (and tp!268436 (inv!11682 (tag!1986 (rule!3147 (h!14596 l!5107)))) (inv!11685 (transformation!1724 (rule!3147 (h!14596 l!5107)))) e!560755))))

(declare-fun b!852040 () Bool)

(declare-fun res!389300 () Bool)

(assert (=> b!852040 (=> (not res!389300) (not e!560756))))

(assert (=> b!852040 (= res!389300 (rulesProduceEachTokenIndividuallyList!414 thiss!20117 rules!2621 l!5107))))

(declare-fun b!852041 () Bool)

(declare-fun res!389297 () Bool)

(assert (=> b!852041 (=> (not res!389297) (not e!560756))))

(assert (=> b!852041 (= res!389297 (isSeparator!1724 (rule!3147 separatorToken!297)))))

(assert (= (and start!76350 res!389296) b!852034))

(assert (= (and b!852034 res!389298) b!852024))

(assert (= (and b!852024 res!389299) b!852040))

(assert (= (and b!852040 res!389300) b!852025))

(assert (= (and b!852025 res!389301) b!852041))

(assert (= (and b!852041 res!389297) b!852027))

(assert (= (and b!852027 res!389293) b!852038))

(assert (= (and b!852038 res!389295) b!852032))

(assert (= (and b!852032 (not res!389294)) b!852035))

(assert (= b!852030 b!852031))

(assert (= b!852028 b!852030))

(assert (= (and start!76350 ((_ is Cons!9194) rules!2621)) b!852028))

(assert (= b!852039 b!852036))

(assert (= b!852033 b!852039))

(assert (= b!852029 b!852033))

(assert (= (and start!76350 ((_ is Cons!9195) l!5107)) b!852029))

(assert (= b!852023 b!852026))

(assert (= b!852037 b!852023))

(assert (= start!76350 b!852037))

(declare-fun m!1091333 () Bool)

(assert (=> b!852040 m!1091333))

(declare-fun m!1091335 () Bool)

(assert (=> b!852025 m!1091335))

(declare-fun m!1091337 () Bool)

(assert (=> b!852029 m!1091337))

(declare-fun m!1091339 () Bool)

(assert (=> b!852033 m!1091339))

(declare-fun m!1091341 () Bool)

(assert (=> b!852027 m!1091341))

(declare-fun m!1091343 () Bool)

(assert (=> b!852039 m!1091343))

(declare-fun m!1091345 () Bool)

(assert (=> b!852039 m!1091345))

(declare-fun m!1091347 () Bool)

(assert (=> b!852024 m!1091347))

(declare-fun m!1091349 () Bool)

(assert (=> b!852030 m!1091349))

(declare-fun m!1091351 () Bool)

(assert (=> b!852030 m!1091351))

(declare-fun m!1091353 () Bool)

(assert (=> b!852037 m!1091353))

(declare-fun m!1091355 () Bool)

(assert (=> b!852038 m!1091355))

(declare-fun m!1091357 () Bool)

(assert (=> b!852034 m!1091357))

(declare-fun m!1091359 () Bool)

(assert (=> b!852035 m!1091359))

(declare-fun m!1091361 () Bool)

(assert (=> b!852023 m!1091361))

(declare-fun m!1091363 () Bool)

(assert (=> b!852023 m!1091363))

(declare-fun m!1091365 () Bool)

(assert (=> start!76350 m!1091365))

(declare-fun m!1091367 () Bool)

(assert (=> b!852032 m!1091367))

(declare-fun m!1091369 () Bool)

(assert (=> b!852032 m!1091369))

(declare-fun m!1091371 () Bool)

(assert (=> b!852032 m!1091371))

(check-sat (not b!852023) (not b!852029) (not b!852033) (not b!852027) (not b_next!25835) (not b!852038) (not b_next!25827) (not b!852039) (not b!852025) (not b!852028) b_and!74849 (not b!852035) b_and!74851 (not b_next!25831) b_and!74847 (not b!852034) (not b!852040) (not b!852024) (not b!852037) (not b_next!25829) (not b_next!25833) b_and!74845 (not b_next!25825) b_and!74841 b_and!74843 (not b!852030) (not b!852032) (not start!76350))
(check-sat (not b_next!25835) (not b_next!25827) b_and!74849 b_and!74851 (not b_next!25831) b_and!74847 (not b_next!25829) (not b_next!25833) b_and!74845 (not b_next!25825) b_and!74841 b_and!74843)
