; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405238 () Bool)

(assert start!405238)

(declare-fun b!4235196 () Bool)

(declare-fun b_free!125071 () Bool)

(declare-fun b_next!125775 () Bool)

(assert (=> b!4235196 (= b_free!125071 (not b_next!125775))))

(declare-fun tp!1296919 () Bool)

(declare-fun b_and!334421 () Bool)

(assert (=> b!4235196 (= tp!1296919 b_and!334421)))

(declare-fun b_free!125073 () Bool)

(declare-fun b_next!125777 () Bool)

(assert (=> b!4235196 (= b_free!125073 (not b_next!125777))))

(declare-fun tp!1296923 () Bool)

(declare-fun b_and!334423 () Bool)

(assert (=> b!4235196 (= tp!1296923 b_and!334423)))

(declare-fun b!4235184 () Bool)

(declare-fun b_free!125075 () Bool)

(declare-fun b_next!125779 () Bool)

(assert (=> b!4235184 (= b_free!125075 (not b_next!125779))))

(declare-fun tp!1296921 () Bool)

(declare-fun b_and!334425 () Bool)

(assert (=> b!4235184 (= tp!1296921 b_and!334425)))

(declare-fun b_free!125077 () Bool)

(declare-fun b_next!125781 () Bool)

(assert (=> b!4235184 (= b_free!125077 (not b_next!125781))))

(declare-fun tp!1296926 () Bool)

(declare-fun b_and!334427 () Bool)

(assert (=> b!4235184 (= tp!1296926 b_and!334427)))

(declare-fun b!4235189 () Bool)

(declare-fun b_free!125079 () Bool)

(declare-fun b_next!125783 () Bool)

(assert (=> b!4235189 (= b_free!125079 (not b_next!125783))))

(declare-fun tp!1296915 () Bool)

(declare-fun b_and!334429 () Bool)

(assert (=> b!4235189 (= tp!1296915 b_and!334429)))

(declare-fun b_free!125081 () Bool)

(declare-fun b_next!125785 () Bool)

(assert (=> b!4235189 (= b_free!125081 (not b_next!125785))))

(declare-fun tp!1296925 () Bool)

(declare-fun b_and!334431 () Bool)

(assert (=> b!4235189 (= tp!1296925 b_and!334431)))

(declare-fun b!4235176 () Bool)

(declare-fun res!1741930 () Bool)

(declare-fun e!2629772 () Bool)

(assert (=> b!4235176 (=> (not res!1741930) (not e!2629772))))

(declare-datatypes ((LexerInterface!7501 0))(
  ( (LexerInterfaceExt!7498 (__x!28495 Int)) (Lexer!7499) )
))
(declare-fun thiss!21540 () LexerInterface!7501)

(declare-datatypes ((List!46916 0))(
  ( (Nil!46792) (Cons!46792 (h!52212 (_ BitVec 16)) (t!349619 List!46916)) )
))
(declare-datatypes ((TokenValue!8136 0))(
  ( (FloatLiteralValue!16272 (text!57397 List!46916)) (TokenValueExt!8135 (__x!28496 Int)) (Broken!40680 (value!245831 List!46916)) (Object!8259) (End!8136) (Def!8136) (Underscore!8136) (Match!8136) (Else!8136) (Error!8136) (Case!8136) (If!8136) (Extends!8136) (Abstract!8136) (Class!8136) (Val!8136) (DelimiterValue!16272 (del!8196 List!46916)) (KeywordValue!8142 (value!245832 List!46916)) (CommentValue!16272 (value!245833 List!46916)) (WhitespaceValue!16272 (value!245834 List!46916)) (IndentationValue!8136 (value!245835 List!46916)) (String!54609) (Int32!8136) (Broken!40681 (value!245836 List!46916)) (Boolean!8137) (Unit!65922) (OperatorValue!8139 (op!8196 List!46916)) (IdentifierValue!16272 (value!245837 List!46916)) (IdentifierValue!16273 (value!245838 List!46916)) (WhitespaceValue!16273 (value!245839 List!46916)) (True!16272) (False!16272) (Broken!40682 (value!245840 List!46916)) (Broken!40683 (value!245841 List!46916)) (True!16273) (RightBrace!8136) (RightBracket!8136) (Colon!8136) (Null!8136) (Comma!8136) (LeftBracket!8136) (False!16273) (LeftBrace!8136) (ImaginaryLiteralValue!8136 (text!57398 List!46916)) (StringLiteralValue!24408 (value!245842 List!46916)) (EOFValue!8136 (value!245843 List!46916)) (IdentValue!8136 (value!245844 List!46916)) (DelimiterValue!16273 (value!245845 List!46916)) (DedentValue!8136 (value!245846 List!46916)) (NewLineValue!8136 (value!245847 List!46916)) (IntegerValue!24408 (value!245848 (_ BitVec 32)) (text!57399 List!46916)) (IntegerValue!24409 (value!245849 Int) (text!57400 List!46916)) (Times!8136) (Or!8136) (Equal!8136) (Minus!8136) (Broken!40684 (value!245850 List!46916)) (And!8136) (Div!8136) (LessEqual!8136) (Mod!8136) (Concat!20947) (Not!8136) (Plus!8136) (SpaceValue!8136 (value!245851 List!46916)) (IntegerValue!24410 (value!245852 Int) (text!57401 List!46916)) (StringLiteralValue!24409 (text!57402 List!46916)) (FloatLiteralValue!16273 (text!57403 List!46916)) (BytesLiteralValue!8136 (value!245853 List!46916)) (CommentValue!16273 (value!245854 List!46916)) (StringLiteralValue!24410 (value!245855 List!46916)) (ErrorTokenValue!8136 (msg!8197 List!46916)) )
))
(declare-datatypes ((String!54610 0))(
  ( (String!54611 (value!245856 String)) )
))
(declare-datatypes ((C!25820 0))(
  ( (C!25821 (val!15100 Int)) )
))
(declare-datatypes ((Regex!12811 0))(
  ( (ElementMatch!12811 (c!719880 C!25820)) (Concat!20948 (regOne!26134 Regex!12811) (regTwo!26134 Regex!12811)) (EmptyExpr!12811) (Star!12811 (reg!13140 Regex!12811)) (EmptyLang!12811) (Union!12811 (regOne!26135 Regex!12811) (regTwo!26135 Regex!12811)) )
))
(declare-datatypes ((List!46917 0))(
  ( (Nil!46793) (Cons!46793 (h!52213 C!25820) (t!349620 List!46917)) )
))
(declare-datatypes ((IArray!28239 0))(
  ( (IArray!28240 (innerList!14177 List!46917)) )
))
(declare-datatypes ((Conc!14117 0))(
  ( (Node!14117 (left!34800 Conc!14117) (right!35130 Conc!14117) (csize!28464 Int) (cheight!14328 Int)) (Leaf!21829 (xs!17423 IArray!28239) (csize!28465 Int)) (Empty!14117) )
))
(declare-datatypes ((BalanceConc!27828 0))(
  ( (BalanceConc!27829 (c!719881 Conc!14117)) )
))
(declare-datatypes ((TokenValueInjection!15700 0))(
  ( (TokenValueInjection!15701 (toValue!10646 Int) (toChars!10505 Int)) )
))
(declare-datatypes ((Rule!15612 0))(
  ( (Rule!15613 (regex!7906 Regex!12811) (tag!8770 String!54610) (isSeparator!7906 Bool) (transformation!7906 TokenValueInjection!15700)) )
))
(declare-datatypes ((List!46918 0))(
  ( (Nil!46794) (Cons!46794 (h!52214 Rule!15612) (t!349621 List!46918)) )
))
(declare-fun rules!2932 () List!46918)

(declare-fun rulesInvariant!6612 (LexerInterface!7501 List!46918) Bool)

(assert (=> b!4235176 (= res!1741930 (rulesInvariant!6612 thiss!21540 rules!2932))))

(declare-fun b!4235177 () Bool)

(declare-fun e!2629779 () Bool)

(declare-datatypes ((Token!14438 0))(
  ( (Token!14439 (value!245857 TokenValue!8136) (rule!11030 Rule!15612) (size!34281 Int) (originalCharacters!8250 List!46917)) )
))
(declare-datatypes ((List!46919 0))(
  ( (Nil!46795) (Cons!46795 (h!52215 Token!14438) (t!349622 List!46919)) )
))
(declare-fun addTokens!17 () List!46919)

(declare-fun e!2629781 () Bool)

(declare-fun tp!1296917 () Bool)

(declare-fun inv!61516 (Token!14438) Bool)

(assert (=> b!4235177 (= e!2629779 (and (inv!61516 (h!52215 addTokens!17)) e!2629781 tp!1296917))))

(declare-fun b!4235178 () Bool)

(declare-fun e!2629771 () Bool)

(declare-fun tp!1296918 () Bool)

(declare-fun tokens!581 () List!46919)

(declare-fun e!2629773 () Bool)

(declare-fun inv!61513 (String!54610) Bool)

(declare-fun inv!61517 (TokenValueInjection!15700) Bool)

(assert (=> b!4235178 (= e!2629771 (and tp!1296918 (inv!61513 (tag!8770 (rule!11030 (h!52215 tokens!581)))) (inv!61517 (transformation!7906 (rule!11030 (h!52215 tokens!581)))) e!2629773))))

(declare-fun b!4235179 () Bool)

(declare-fun e!2629774 () Bool)

(declare-fun tp_is_empty!22613 () Bool)

(declare-fun tp!1296920 () Bool)

(assert (=> b!4235179 (= e!2629774 (and tp_is_empty!22613 tp!1296920))))

(declare-fun b!4235180 () Bool)

(declare-fun e!2629787 () Bool)

(declare-fun e!2629785 () Bool)

(declare-fun tp!1296916 () Bool)

(assert (=> b!4235180 (= e!2629787 (and e!2629785 tp!1296916))))

(declare-fun b!4235181 () Bool)

(declare-fun res!1741929 () Bool)

(assert (=> b!4235181 (=> (not res!1741929) (not e!2629772))))

(declare-fun isEmpty!27645 (List!46918) Bool)

(assert (=> b!4235181 (= res!1741929 (not (isEmpty!27645 rules!2932)))))

(declare-fun b!4235182 () Bool)

(assert (=> b!4235182 (= e!2629772 false)))

(declare-fun lt!1505710 () Int)

(declare-fun size!34282 (List!46919) Int)

(assert (=> b!4235182 (= lt!1505710 (size!34282 addTokens!17))))

(declare-fun b!4235183 () Bool)

(declare-fun e!2629776 () Bool)

(declare-fun tp!1296928 () Bool)

(assert (=> b!4235183 (= e!2629776 (and tp_is_empty!22613 tp!1296928))))

(assert (=> b!4235184 (= e!2629773 (and tp!1296921 tp!1296926))))

(declare-fun e!2629783 () Bool)

(declare-fun b!4235185 () Bool)

(declare-fun tp!1296914 () Bool)

(declare-fun inv!21 (TokenValue!8136) Bool)

(assert (=> b!4235185 (= e!2629783 (and (inv!21 (value!245857 (h!52215 tokens!581))) e!2629771 tp!1296914))))

(declare-fun b!4235186 () Bool)

(declare-fun e!2629782 () Bool)

(declare-fun tp!1296913 () Bool)

(assert (=> b!4235186 (= e!2629782 (and tp_is_empty!22613 tp!1296913))))

(declare-fun res!1741932 () Bool)

(assert (=> start!405238 (=> (not res!1741932) (not e!2629772))))

(get-info :version)

(assert (=> start!405238 (= res!1741932 ((_ is Lexer!7499) thiss!21540))))

(assert (=> start!405238 e!2629772))

(assert (=> start!405238 true))

(assert (=> start!405238 e!2629787))

(assert (=> start!405238 e!2629779))

(assert (=> start!405238 e!2629774))

(assert (=> start!405238 e!2629776))

(declare-fun e!2629784 () Bool)

(assert (=> start!405238 e!2629784))

(assert (=> start!405238 e!2629782))

(declare-fun b!4235187 () Bool)

(declare-fun e!2629778 () Bool)

(declare-fun tp!1296912 () Bool)

(assert (=> b!4235187 (= e!2629785 (and tp!1296912 (inv!61513 (tag!8770 (h!52214 rules!2932))) (inv!61517 (transformation!7906 (h!52214 rules!2932))) e!2629778))))

(declare-fun e!2629786 () Bool)

(declare-fun tp!1296924 () Bool)

(declare-fun b!4235188 () Bool)

(assert (=> b!4235188 (= e!2629781 (and (inv!21 (value!245857 (h!52215 addTokens!17))) e!2629786 tp!1296924))))

(declare-fun e!2629788 () Bool)

(assert (=> b!4235189 (= e!2629788 (and tp!1296915 tp!1296925))))

(declare-fun b!4235190 () Bool)

(declare-fun tp!1296927 () Bool)

(assert (=> b!4235190 (= e!2629784 (and (inv!61516 (h!52215 tokens!581)) e!2629783 tp!1296927))))

(declare-fun b!4235191 () Bool)

(declare-fun res!1741928 () Bool)

(assert (=> b!4235191 (=> (not res!1741928) (not e!2629772))))

(declare-fun longerInput!51 () List!46917)

(declare-fun shorterInput!51 () List!46917)

(declare-fun size!34283 (List!46917) Int)

(assert (=> b!4235191 (= res!1741928 (> (size!34283 longerInput!51) (size!34283 shorterInput!51)))))

(declare-fun b!4235192 () Bool)

(declare-fun tp!1296922 () Bool)

(assert (=> b!4235192 (= e!2629786 (and tp!1296922 (inv!61513 (tag!8770 (rule!11030 (h!52215 addTokens!17)))) (inv!61517 (transformation!7906 (rule!11030 (h!52215 addTokens!17)))) e!2629788))))

(declare-fun b!4235193 () Bool)

(declare-fun res!1741933 () Bool)

(assert (=> b!4235193 (=> (not res!1741933) (not e!2629772))))

(declare-fun suffix!1262 () List!46917)

(declare-datatypes ((tuple2!44380 0))(
  ( (tuple2!44381 (_1!25324 List!46919) (_2!25324 List!46917)) )
))
(declare-fun lexList!2007 (LexerInterface!7501 List!46918 List!46917) tuple2!44380)

(assert (=> b!4235193 (= res!1741933 (= (lexList!2007 thiss!21540 rules!2932 longerInput!51) (tuple2!44381 tokens!581 suffix!1262)))))

(declare-fun b!4235194 () Bool)

(declare-fun res!1741931 () Bool)

(assert (=> b!4235194 (=> (not res!1741931) (not e!2629772))))

(declare-fun isEmpty!27646 (List!46917) Bool)

(assert (=> b!4235194 (= res!1741931 (not (isEmpty!27646 longerInput!51)))))

(declare-fun b!4235195 () Bool)

(declare-fun res!1741934 () Bool)

(assert (=> b!4235195 (=> (not res!1741934) (not e!2629772))))

(declare-fun isEmpty!27647 (List!46919) Bool)

(assert (=> b!4235195 (= res!1741934 (not (isEmpty!27647 addTokens!17)))))

(assert (=> b!4235196 (= e!2629778 (and tp!1296919 tp!1296923))))

(assert (= (and start!405238 res!1741932) b!4235181))

(assert (= (and b!4235181 res!1741929) b!4235176))

(assert (= (and b!4235176 res!1741930) b!4235194))

(assert (= (and b!4235194 res!1741931) b!4235191))

(assert (= (and b!4235191 res!1741928) b!4235193))

(assert (= (and b!4235193 res!1741933) b!4235195))

(assert (= (and b!4235195 res!1741934) b!4235182))

(assert (= b!4235187 b!4235196))

(assert (= b!4235180 b!4235187))

(assert (= (and start!405238 ((_ is Cons!46794) rules!2932)) b!4235180))

(assert (= b!4235192 b!4235189))

(assert (= b!4235188 b!4235192))

(assert (= b!4235177 b!4235188))

(assert (= (and start!405238 ((_ is Cons!46795) addTokens!17)) b!4235177))

(assert (= (and start!405238 ((_ is Cons!46793) shorterInput!51)) b!4235179))

(assert (= (and start!405238 ((_ is Cons!46793) suffix!1262)) b!4235183))

(assert (= b!4235178 b!4235184))

(assert (= b!4235185 b!4235178))

(assert (= b!4235190 b!4235185))

(assert (= (and start!405238 ((_ is Cons!46795) tokens!581)) b!4235190))

(assert (= (and start!405238 ((_ is Cons!46793) longerInput!51)) b!4235186))

(declare-fun m!4821015 () Bool)

(assert (=> b!4235177 m!4821015))

(declare-fun m!4821017 () Bool)

(assert (=> b!4235176 m!4821017))

(declare-fun m!4821019 () Bool)

(assert (=> b!4235191 m!4821019))

(declare-fun m!4821021 () Bool)

(assert (=> b!4235191 m!4821021))

(declare-fun m!4821023 () Bool)

(assert (=> b!4235190 m!4821023))

(declare-fun m!4821025 () Bool)

(assert (=> b!4235192 m!4821025))

(declare-fun m!4821027 () Bool)

(assert (=> b!4235192 m!4821027))

(declare-fun m!4821029 () Bool)

(assert (=> b!4235195 m!4821029))

(declare-fun m!4821031 () Bool)

(assert (=> b!4235188 m!4821031))

(declare-fun m!4821033 () Bool)

(assert (=> b!4235182 m!4821033))

(declare-fun m!4821035 () Bool)

(assert (=> b!4235181 m!4821035))

(declare-fun m!4821037 () Bool)

(assert (=> b!4235193 m!4821037))

(declare-fun m!4821039 () Bool)

(assert (=> b!4235178 m!4821039))

(declare-fun m!4821041 () Bool)

(assert (=> b!4235178 m!4821041))

(declare-fun m!4821043 () Bool)

(assert (=> b!4235187 m!4821043))

(declare-fun m!4821045 () Bool)

(assert (=> b!4235187 m!4821045))

(declare-fun m!4821047 () Bool)

(assert (=> b!4235194 m!4821047))

(declare-fun m!4821049 () Bool)

(assert (=> b!4235185 m!4821049))

(check-sat (not b_next!125785) (not b!4235186) (not b_next!125775) b_and!334425 (not b!4235188) (not b!4235177) (not b!4235185) b_and!334427 (not b!4235179) (not b!4235180) (not b!4235192) (not b!4235194) (not b!4235181) (not b!4235190) (not b!4235187) (not b!4235183) (not b!4235193) (not b!4235182) b_and!334423 b_and!334421 b_and!334429 (not b!4235178) (not b!4235176) (not b_next!125783) b_and!334431 (not b_next!125777) tp_is_empty!22613 (not b!4235191) (not b_next!125781) (not b!4235195) (not b_next!125779))
(check-sat (not b_next!125785) (not b_next!125775) b_and!334425 b_and!334427 b_and!334429 (not b_next!125783) b_and!334423 b_and!334421 b_and!334431 (not b_next!125777) (not b_next!125781) (not b_next!125779))
