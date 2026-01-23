; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351762 () Bool)

(assert start!351762)

(declare-fun b!3746924 () Bool)

(declare-fun b_free!99849 () Bool)

(declare-fun b_next!100553 () Bool)

(assert (=> b!3746924 (= b_free!99849 (not b_next!100553))))

(declare-fun tp!1143131 () Bool)

(declare-fun b_and!278083 () Bool)

(assert (=> b!3746924 (= tp!1143131 b_and!278083)))

(declare-fun b_free!99851 () Bool)

(declare-fun b_next!100555 () Bool)

(assert (=> b!3746924 (= b_free!99851 (not b_next!100555))))

(declare-fun tp!1143127 () Bool)

(declare-fun b_and!278085 () Bool)

(assert (=> b!3746924 (= tp!1143127 b_and!278085)))

(declare-fun b!3746927 () Bool)

(declare-fun b_free!99853 () Bool)

(declare-fun b_next!100557 () Bool)

(assert (=> b!3746927 (= b_free!99853 (not b_next!100557))))

(declare-fun tp!1143126 () Bool)

(declare-fun b_and!278087 () Bool)

(assert (=> b!3746927 (= tp!1143126 b_and!278087)))

(declare-fun b_free!99855 () Bool)

(declare-fun b_next!100559 () Bool)

(assert (=> b!3746927 (= b_free!99855 (not b_next!100559))))

(declare-fun tp!1143132 () Bool)

(declare-fun b_and!278089 () Bool)

(assert (=> b!3746927 (= tp!1143132 b_and!278089)))

(declare-fun b!3746923 () Bool)

(declare-fun b_free!99857 () Bool)

(declare-fun b_next!100561 () Bool)

(assert (=> b!3746923 (= b_free!99857 (not b_next!100561))))

(declare-fun tp!1143129 () Bool)

(declare-fun b_and!278091 () Bool)

(assert (=> b!3746923 (= tp!1143129 b_and!278091)))

(declare-fun b_free!99859 () Bool)

(declare-fun b_next!100563 () Bool)

(assert (=> b!3746923 (= b_free!99859 (not b_next!100563))))

(declare-fun tp!1143128 () Bool)

(declare-fun b_and!278093 () Bool)

(assert (=> b!3746923 (= tp!1143128 b_and!278093)))

(declare-fun b!3746917 () Bool)

(declare-fun res!1518768 () Bool)

(declare-fun e!2316992 () Bool)

(assert (=> b!3746917 (=> (not res!1518768) (not e!2316992))))

(declare-datatypes ((List!39962 0))(
  ( (Nil!39838) (Cons!39838 (h!45258 (_ BitVec 16)) (t!302645 List!39962)) )
))
(declare-datatypes ((TokenValue!6310 0))(
  ( (FloatLiteralValue!12620 (text!44615 List!39962)) (TokenValueExt!6309 (__x!24837 Int)) (Broken!31550 (value!193832 List!39962)) (Object!6433) (End!6310) (Def!6310) (Underscore!6310) (Match!6310) (Else!6310) (Error!6310) (Case!6310) (If!6310) (Extends!6310) (Abstract!6310) (Class!6310) (Val!6310) (DelimiterValue!12620 (del!6370 List!39962)) (KeywordValue!6316 (value!193833 List!39962)) (CommentValue!12620 (value!193834 List!39962)) (WhitespaceValue!12620 (value!193835 List!39962)) (IndentationValue!6310 (value!193836 List!39962)) (String!45175) (Int32!6310) (Broken!31551 (value!193837 List!39962)) (Boolean!6311) (Unit!57663) (OperatorValue!6313 (op!6370 List!39962)) (IdentifierValue!12620 (value!193838 List!39962)) (IdentifierValue!12621 (value!193839 List!39962)) (WhitespaceValue!12621 (value!193840 List!39962)) (True!12620) (False!12620) (Broken!31552 (value!193841 List!39962)) (Broken!31553 (value!193842 List!39962)) (True!12621) (RightBrace!6310) (RightBracket!6310) (Colon!6310) (Null!6310) (Comma!6310) (LeftBracket!6310) (False!12621) (LeftBrace!6310) (ImaginaryLiteralValue!6310 (text!44616 List!39962)) (StringLiteralValue!18930 (value!193843 List!39962)) (EOFValue!6310 (value!193844 List!39962)) (IdentValue!6310 (value!193845 List!39962)) (DelimiterValue!12621 (value!193846 List!39962)) (DedentValue!6310 (value!193847 List!39962)) (NewLineValue!6310 (value!193848 List!39962)) (IntegerValue!18930 (value!193849 (_ BitVec 32)) (text!44617 List!39962)) (IntegerValue!18931 (value!193850 Int) (text!44618 List!39962)) (Times!6310) (Or!6310) (Equal!6310) (Minus!6310) (Broken!31554 (value!193851 List!39962)) (And!6310) (Div!6310) (LessEqual!6310) (Mod!6310) (Concat!17295) (Not!6310) (Plus!6310) (SpaceValue!6310 (value!193852 List!39962)) (IntegerValue!18932 (value!193853 Int) (text!44619 List!39962)) (StringLiteralValue!18931 (text!44620 List!39962)) (FloatLiteralValue!12621 (text!44621 List!39962)) (BytesLiteralValue!6310 (value!193854 List!39962)) (CommentValue!12621 (value!193855 List!39962)) (StringLiteralValue!18932 (value!193856 List!39962)) (ErrorTokenValue!6310 (msg!6371 List!39962)) )
))
(declare-datatypes ((C!22156 0))(
  ( (C!22157 (val!13126 Int)) )
))
(declare-datatypes ((List!39963 0))(
  ( (Nil!39839) (Cons!39839 (h!45259 C!22156) (t!302646 List!39963)) )
))
(declare-datatypes ((IArray!24359 0))(
  ( (IArray!24360 (innerList!12237 List!39963)) )
))
(declare-datatypes ((Conc!12177 0))(
  ( (Node!12177 (left!30856 Conc!12177) (right!31186 Conc!12177) (csize!24584 Int) (cheight!12388 Int)) (Leaf!18901 (xs!15379 IArray!24359) (csize!24585 Int)) (Empty!12177) )
))
(declare-datatypes ((BalanceConc!23968 0))(
  ( (BalanceConc!23969 (c!648878 Conc!12177)) )
))
(declare-datatypes ((TokenValueInjection!12048 0))(
  ( (TokenValueInjection!12049 (toValue!8428 Int) (toChars!8287 Int)) )
))
(declare-datatypes ((String!45176 0))(
  ( (String!45177 (value!193857 String)) )
))
(declare-datatypes ((Regex!10985 0))(
  ( (ElementMatch!10985 (c!648879 C!22156)) (Concat!17296 (regOne!22482 Regex!10985) (regTwo!22482 Regex!10985)) (EmptyExpr!10985) (Star!10985 (reg!11314 Regex!10985)) (EmptyLang!10985) (Union!10985 (regOne!22483 Regex!10985) (regTwo!22483 Regex!10985)) )
))
(declare-datatypes ((Rule!11960 0))(
  ( (Rule!11961 (regex!6080 Regex!10985) (tag!6940 String!45176) (isSeparator!6080 Bool) (transformation!6080 TokenValueInjection!12048)) )
))
(declare-datatypes ((List!39964 0))(
  ( (Nil!39840) (Cons!39840 (h!45260 Rule!11960) (t!302647 List!39964)) )
))
(declare-fun rules!4213 () List!39964)

(declare-fun rSep!170 () Rule!11960)

(get-info :version)

(assert (=> b!3746917 (= res!1518768 (and (or (not ((_ is Cons!39840) rules!4213)) (not (= (h!45260 rules!4213) rSep!170))) ((_ is Cons!39840) rules!4213)))))

(declare-fun b!3746919 () Bool)

(declare-fun res!1518767 () Bool)

(assert (=> b!3746919 (=> (not res!1518767) (not e!2316992))))

(declare-fun rNSep!170 () Rule!11960)

(declare-fun c!6920 () C!22156)

(declare-fun contains!8119 (List!39963 C!22156) Bool)

(declare-fun usedCharacters!1248 (Regex!10985) List!39963)

(assert (=> b!3746919 (= res!1518767 (contains!8119 (usedCharacters!1248 (regex!6080 rNSep!170)) c!6920))))

(declare-fun tp!1143125 () Bool)

(declare-fun e!2316998 () Bool)

(declare-fun e!2316993 () Bool)

(declare-fun b!3746920 () Bool)

(declare-fun inv!53357 (String!45176) Bool)

(declare-fun inv!53359 (TokenValueInjection!12048) Bool)

(assert (=> b!3746920 (= e!2316998 (and tp!1143125 (inv!53357 (tag!6940 (h!45260 rules!4213))) (inv!53359 (transformation!6080 (h!45260 rules!4213))) e!2316993))))

(declare-fun b!3746921 () Bool)

(declare-fun res!1518771 () Bool)

(assert (=> b!3746921 (=> (not res!1518771) (not e!2316992))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!953 (Rule!11960 List!39964) Bool)

(assert (=> b!3746921 (= res!1518771 (ruleDisjointCharsFromAllFromOtherType!953 rNSep!170 rules!4213))))

(declare-fun b!3746922 () Bool)

(assert (=> b!3746922 (= e!2316992 (not true))))

(declare-datatypes ((LexerInterface!5669 0))(
  ( (LexerInterfaceExt!5666 (__x!24838 Int)) (Lexer!5667) )
))
(declare-fun thiss!27193 () LexerInterface!5669)

(declare-fun rulesInvariant!5066 (LexerInterface!5669 List!39964) Bool)

(assert (=> b!3746922 (rulesInvariant!5066 thiss!27193 (t!302647 rules!4213))))

(declare-datatypes ((Unit!57664 0))(
  ( (Unit!57665) )
))
(declare-fun lt!1299540 () Unit!57664)

(declare-fun lemmaInvariantOnRulesThenOnTail!710 (LexerInterface!5669 Rule!11960 List!39964) Unit!57664)

(assert (=> b!3746922 (= lt!1299540 (lemmaInvariantOnRulesThenOnTail!710 thiss!27193 (h!45260 rules!4213) (t!302647 rules!4213)))))

(declare-fun e!2316995 () Bool)

(assert (=> b!3746923 (= e!2316995 (and tp!1143129 tp!1143128))))

(assert (=> b!3746924 (= e!2316993 (and tp!1143131 tp!1143127))))

(declare-fun b!3746925 () Bool)

(declare-fun e!2316988 () Bool)

(declare-fun tp!1143134 () Bool)

(assert (=> b!3746925 (= e!2316988 (and e!2316998 tp!1143134))))

(declare-fun res!1518765 () Bool)

(assert (=> start!351762 (=> (not res!1518765) (not e!2316992))))

(assert (=> start!351762 (= res!1518765 ((_ is Lexer!5667) thiss!27193))))

(assert (=> start!351762 e!2316992))

(declare-fun e!2316994 () Bool)

(assert (=> start!351762 e!2316994))

(assert (=> start!351762 e!2316988))

(assert (=> start!351762 true))

(declare-fun tp_is_empty!18985 () Bool)

(assert (=> start!351762 tp_is_empty!18985))

(declare-fun e!2316991 () Bool)

(assert (=> start!351762 e!2316991))

(declare-fun b!3746918 () Bool)

(declare-fun res!1518766 () Bool)

(assert (=> b!3746918 (=> (not res!1518766) (not e!2316992))))

(declare-fun contains!8120 (List!39964 Rule!11960) Bool)

(assert (=> b!3746918 (= res!1518766 (contains!8120 rules!4213 rSep!170))))

(declare-fun tp!1143130 () Bool)

(declare-fun b!3746926 () Bool)

(declare-fun e!2316990 () Bool)

(assert (=> b!3746926 (= e!2316994 (and tp!1143130 (inv!53357 (tag!6940 rNSep!170)) (inv!53359 (transformation!6080 rNSep!170)) e!2316990))))

(assert (=> b!3746927 (= e!2316990 (and tp!1143126 tp!1143132))))

(declare-fun b!3746928 () Bool)

(declare-fun res!1518770 () Bool)

(assert (=> b!3746928 (=> (not res!1518770) (not e!2316992))))

(assert (=> b!3746928 (= res!1518770 (and (not (isSeparator!6080 rNSep!170)) (isSeparator!6080 rSep!170)))))

(declare-fun b!3746929 () Bool)

(declare-fun res!1518769 () Bool)

(assert (=> b!3746929 (=> (not res!1518769) (not e!2316992))))

(assert (=> b!3746929 (= res!1518769 (rulesInvariant!5066 thiss!27193 rules!4213))))

(declare-fun b!3746930 () Bool)

(declare-fun tp!1143133 () Bool)

(assert (=> b!3746930 (= e!2316991 (and tp!1143133 (inv!53357 (tag!6940 rSep!170)) (inv!53359 (transformation!6080 rSep!170)) e!2316995))))

(assert (= (and start!351762 res!1518765) b!3746929))

(assert (= (and b!3746929 res!1518769) b!3746918))

(assert (= (and b!3746918 res!1518766) b!3746919))

(assert (= (and b!3746919 res!1518767) b!3746928))

(assert (= (and b!3746928 res!1518770) b!3746921))

(assert (= (and b!3746921 res!1518771) b!3746917))

(assert (= (and b!3746917 res!1518768) b!3746922))

(assert (= b!3746926 b!3746927))

(assert (= start!351762 b!3746926))

(assert (= b!3746920 b!3746924))

(assert (= b!3746925 b!3746920))

(assert (= (and start!351762 ((_ is Cons!39840) rules!4213)) b!3746925))

(assert (= b!3746930 b!3746923))

(assert (= start!351762 b!3746930))

(declare-fun m!4239263 () Bool)

(assert (=> b!3746921 m!4239263))

(declare-fun m!4239265 () Bool)

(assert (=> b!3746926 m!4239265))

(declare-fun m!4239267 () Bool)

(assert (=> b!3746926 m!4239267))

(declare-fun m!4239269 () Bool)

(assert (=> b!3746929 m!4239269))

(declare-fun m!4239271 () Bool)

(assert (=> b!3746919 m!4239271))

(assert (=> b!3746919 m!4239271))

(declare-fun m!4239273 () Bool)

(assert (=> b!3746919 m!4239273))

(declare-fun m!4239275 () Bool)

(assert (=> b!3746930 m!4239275))

(declare-fun m!4239277 () Bool)

(assert (=> b!3746930 m!4239277))

(declare-fun m!4239279 () Bool)

(assert (=> b!3746922 m!4239279))

(declare-fun m!4239281 () Bool)

(assert (=> b!3746922 m!4239281))

(declare-fun m!4239283 () Bool)

(assert (=> b!3746920 m!4239283))

(declare-fun m!4239285 () Bool)

(assert (=> b!3746920 m!4239285))

(declare-fun m!4239287 () Bool)

(assert (=> b!3746918 m!4239287))

(check-sat (not b!3746922) b_and!278087 (not b_next!100561) b_and!278085 (not b_next!100555) b_and!278083 tp_is_empty!18985 (not b!3746925) (not b!3746926) (not b_next!100559) (not b!3746921) b_and!278093 b_and!278091 (not b!3746918) (not b!3746919) (not b_next!100563) (not b_next!100557) (not b!3746930) (not b!3746929) (not b_next!100553) (not b!3746920) b_and!278089)
(check-sat b_and!278087 (not b_next!100561) b_and!278085 (not b_next!100555) b_and!278083 (not b_next!100559) b_and!278093 b_and!278091 (not b_next!100563) (not b_next!100557) (not b_next!100553) b_and!278089)
