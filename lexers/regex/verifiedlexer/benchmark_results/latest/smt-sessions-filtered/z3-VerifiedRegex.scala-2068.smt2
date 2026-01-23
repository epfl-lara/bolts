; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105178 () Bool)

(assert start!105178)

(declare-fun b!1185727 () Bool)

(declare-fun b_free!28461 () Bool)

(declare-fun b_next!29165 () Bool)

(assert (=> b!1185727 (= b_free!28461 (not b_next!29165))))

(declare-fun tp!338022 () Bool)

(declare-fun b_and!81581 () Bool)

(assert (=> b!1185727 (= tp!338022 b_and!81581)))

(declare-fun b_free!28463 () Bool)

(declare-fun b_next!29167 () Bool)

(assert (=> b!1185727 (= b_free!28463 (not b_next!29167))))

(declare-fun tp!338025 () Bool)

(declare-fun b_and!81583 () Bool)

(assert (=> b!1185727 (= tp!338025 b_and!81583)))

(declare-fun b!1185732 () Bool)

(declare-fun b_free!28465 () Bool)

(declare-fun b_next!29169 () Bool)

(assert (=> b!1185732 (= b_free!28465 (not b_next!29169))))

(declare-fun tp!338023 () Bool)

(declare-fun b_and!81585 () Bool)

(assert (=> b!1185732 (= tp!338023 b_and!81585)))

(declare-fun b_free!28467 () Bool)

(declare-fun b_next!29171 () Bool)

(assert (=> b!1185732 (= b_free!28467 (not b_next!29171))))

(declare-fun tp!338024 () Bool)

(declare-fun b_and!81587 () Bool)

(assert (=> b!1185732 (= tp!338024 b_and!81587)))

(declare-fun b!1185725 () Bool)

(declare-fun e!761685 () Bool)

(declare-fun e!761683 () Bool)

(declare-fun tp!338027 () Bool)

(assert (=> b!1185725 (= e!761685 (and e!761683 tp!338027))))

(declare-fun b!1185726 () Bool)

(declare-fun e!761687 () Bool)

(assert (=> b!1185726 (= e!761687 false)))

(declare-datatypes ((C!7012 0))(
  ( (C!7013 (val!3802 Int)) )
))
(declare-datatypes ((List!11904 0))(
  ( (Nil!11880) (Cons!11880 (h!17281 C!7012) (t!111862 List!11904)) )
))
(declare-datatypes ((IArray!7787 0))(
  ( (IArray!7788 (innerList!3951 List!11904)) )
))
(declare-datatypes ((String!14382 0))(
  ( (String!14383 (value!67225 String)) )
))
(declare-datatypes ((Conc!3891 0))(
  ( (Node!3891 (left!10343 Conc!3891) (right!10673 Conc!3891) (csize!8012 Int) (cheight!4102 Int)) (Leaf!5960 (xs!6596 IArray!7787) (csize!8013 Int)) (Empty!3891) )
))
(declare-datatypes ((List!11905 0))(
  ( (Nil!11881) (Cons!11881 (h!17282 (_ BitVec 16)) (t!111863 List!11905)) )
))
(declare-datatypes ((BalanceConc!7804 0))(
  ( (BalanceConc!7805 (c!197130 Conc!3891)) )
))
(declare-datatypes ((TokenValue!2143 0))(
  ( (FloatLiteralValue!4286 (text!15446 List!11905)) (TokenValueExt!2142 (__x!7997 Int)) (Broken!10715 (value!67226 List!11905)) (Object!2166) (End!2143) (Def!2143) (Underscore!2143) (Match!2143) (Else!2143) (Error!2143) (Case!2143) (If!2143) (Extends!2143) (Abstract!2143) (Class!2143) (Val!2143) (DelimiterValue!4286 (del!2203 List!11905)) (KeywordValue!2149 (value!67227 List!11905)) (CommentValue!4286 (value!67228 List!11905)) (WhitespaceValue!4286 (value!67229 List!11905)) (IndentationValue!2143 (value!67230 List!11905)) (String!14384) (Int32!2143) (Broken!10716 (value!67231 List!11905)) (Boolean!2144) (Unit!18241) (OperatorValue!2146 (op!2203 List!11905)) (IdentifierValue!4286 (value!67232 List!11905)) (IdentifierValue!4287 (value!67233 List!11905)) (WhitespaceValue!4287 (value!67234 List!11905)) (True!4286) (False!4286) (Broken!10717 (value!67235 List!11905)) (Broken!10718 (value!67236 List!11905)) (True!4287) (RightBrace!2143) (RightBracket!2143) (Colon!2143) (Null!2143) (Comma!2143) (LeftBracket!2143) (False!4287) (LeftBrace!2143) (ImaginaryLiteralValue!2143 (text!15447 List!11905)) (StringLiteralValue!6429 (value!67237 List!11905)) (EOFValue!2143 (value!67238 List!11905)) (IdentValue!2143 (value!67239 List!11905)) (DelimiterValue!4287 (value!67240 List!11905)) (DedentValue!2143 (value!67241 List!11905)) (NewLineValue!2143 (value!67242 List!11905)) (IntegerValue!6429 (value!67243 (_ BitVec 32)) (text!15448 List!11905)) (IntegerValue!6430 (value!67244 Int) (text!15449 List!11905)) (Times!2143) (Or!2143) (Equal!2143) (Minus!2143) (Broken!10719 (value!67245 List!11905)) (And!2143) (Div!2143) (LessEqual!2143) (Mod!2143) (Concat!5490) (Not!2143) (Plus!2143) (SpaceValue!2143 (value!67246 List!11905)) (IntegerValue!6431 (value!67247 Int) (text!15450 List!11905)) (StringLiteralValue!6430 (text!15451 List!11905)) (FloatLiteralValue!4287 (text!15452 List!11905)) (BytesLiteralValue!2143 (value!67248 List!11905)) (CommentValue!4287 (value!67249 List!11905)) (StringLiteralValue!6431 (value!67250 List!11905)) (ErrorTokenValue!2143 (msg!2204 List!11905)) )
))
(declare-datatypes ((Regex!3347 0))(
  ( (ElementMatch!3347 (c!197131 C!7012)) (Concat!5491 (regOne!7206 Regex!3347) (regTwo!7206 Regex!3347)) (EmptyExpr!3347) (Star!3347 (reg!3676 Regex!3347)) (EmptyLang!3347) (Union!3347 (regOne!7207 Regex!3347) (regTwo!7207 Regex!3347)) )
))
(declare-datatypes ((TokenValueInjection!3986 0))(
  ( (TokenValueInjection!3987 (toValue!3194 Int) (toChars!3053 Int)) )
))
(declare-datatypes ((Rule!3954 0))(
  ( (Rule!3955 (regex!2077 Regex!3347) (tag!2339 String!14382) (isSeparator!2077 Bool) (transformation!2077 TokenValueInjection!3986)) )
))
(declare-datatypes ((List!11906 0))(
  ( (Nil!11882) (Cons!11882 (h!17283 Rule!3954) (t!111864 List!11906)) )
))
(declare-fun rules!4386 () List!11906)

(declare-datatypes ((Token!3816 0))(
  ( (Token!3817 (value!67251 TokenValue!2143) (rule!3498 Rule!3954) (size!9369 Int) (originalCharacters!2631 List!11904)) )
))
(declare-datatypes ((List!11907 0))(
  ( (Nil!11883) (Cons!11883 (h!17284 Token!3816) (t!111865 List!11907)) )
))
(declare-fun l!6534 () List!11907)

(declare-fun lt!408052 () Bool)

(declare-datatypes ((LexerInterface!1772 0))(
  ( (LexerInterfaceExt!1769 (__x!7998 Int)) (Lexer!1770) )
))
(declare-fun thiss!27592 () LexerInterface!1772)

(declare-fun tokensListTwoByTwoPredicateSeparableList!166 (LexerInterface!1772 List!11907 List!11906) Bool)

(assert (=> b!1185726 (= lt!408052 (tokensListTwoByTwoPredicateSeparableList!166 thiss!27592 l!6534 rules!4386))))

(declare-fun e!761692 () Bool)

(assert (=> b!1185727 (= e!761692 (and tp!338022 tp!338025))))

(declare-fun e!761688 () Bool)

(declare-fun e!761684 () Bool)

(declare-fun tp!338026 () Bool)

(declare-fun b!1185728 () Bool)

(declare-fun inv!15707 (String!14382) Bool)

(declare-fun inv!15710 (TokenValueInjection!3986) Bool)

(assert (=> b!1185728 (= e!761688 (and tp!338026 (inv!15707 (tag!2339 (rule!3498 (h!17284 l!6534)))) (inv!15710 (transformation!2077 (rule!3498 (h!17284 l!6534)))) e!761684))))

(declare-fun res!535917 () Bool)

(assert (=> start!105178 (=> (not res!535917) (not e!761687))))

(get-info :version)

(assert (=> start!105178 (= res!535917 ((_ is Lexer!1770) thiss!27592))))

(assert (=> start!105178 e!761687))

(assert (=> start!105178 true))

(assert (=> start!105178 e!761685))

(declare-fun e!761686 () Bool)

(assert (=> start!105178 e!761686))

(declare-fun b!1185729 () Bool)

(declare-fun tp!338028 () Bool)

(assert (=> b!1185729 (= e!761683 (and tp!338028 (inv!15707 (tag!2339 (h!17283 rules!4386))) (inv!15710 (transformation!2077 (h!17283 rules!4386))) e!761692))))

(declare-fun e!761689 () Bool)

(declare-fun b!1185730 () Bool)

(declare-fun tp!338021 () Bool)

(declare-fun inv!21 (TokenValue!2143) Bool)

(assert (=> b!1185730 (= e!761689 (and (inv!21 (value!67251 (h!17284 l!6534))) e!761688 tp!338021))))

(declare-fun b!1185731 () Bool)

(declare-fun res!535918 () Bool)

(assert (=> b!1185731 (=> (not res!535918) (not e!761687))))

(declare-fun rulesInvariant!1646 (LexerInterface!1772 List!11906) Bool)

(assert (=> b!1185731 (= res!535918 (rulesInvariant!1646 thiss!27592 rules!4386))))

(assert (=> b!1185732 (= e!761684 (and tp!338023 tp!338024))))

(declare-fun b!1185733 () Bool)

(declare-fun res!535915 () Bool)

(assert (=> b!1185733 (=> (not res!535915) (not e!761687))))

(declare-fun isEmpty!7154 (List!11906) Bool)

(assert (=> b!1185733 (= res!535915 (not (isEmpty!7154 rules!4386)))))

(declare-fun tp!338020 () Bool)

(declare-fun b!1185734 () Bool)

(declare-fun inv!15711 (Token!3816) Bool)

(assert (=> b!1185734 (= e!761686 (and (inv!15711 (h!17284 l!6534)) e!761689 tp!338020))))

(declare-fun b!1185735 () Bool)

(declare-fun res!535916 () Bool)

(assert (=> b!1185735 (=> (not res!535916) (not e!761687))))

(declare-fun rulesProduceEachTokenIndividuallyList!638 (LexerInterface!1772 List!11906 List!11907) Bool)

(assert (=> b!1185735 (= res!535916 (rulesProduceEachTokenIndividuallyList!638 thiss!27592 rules!4386 l!6534))))

(assert (= (and start!105178 res!535917) b!1185733))

(assert (= (and b!1185733 res!535915) b!1185731))

(assert (= (and b!1185731 res!535918) b!1185735))

(assert (= (and b!1185735 res!535916) b!1185726))

(assert (= b!1185729 b!1185727))

(assert (= b!1185725 b!1185729))

(assert (= (and start!105178 ((_ is Cons!11882) rules!4386)) b!1185725))

(assert (= b!1185728 b!1185732))

(assert (= b!1185730 b!1185728))

(assert (= b!1185734 b!1185730))

(assert (= (and start!105178 ((_ is Cons!11883) l!6534)) b!1185734))

(declare-fun m!1362069 () Bool)

(assert (=> b!1185726 m!1362069))

(declare-fun m!1362071 () Bool)

(assert (=> b!1185728 m!1362071))

(declare-fun m!1362073 () Bool)

(assert (=> b!1185728 m!1362073))

(declare-fun m!1362075 () Bool)

(assert (=> b!1185731 m!1362075))

(declare-fun m!1362077 () Bool)

(assert (=> b!1185735 m!1362077))

(declare-fun m!1362079 () Bool)

(assert (=> b!1185733 m!1362079))

(declare-fun m!1362081 () Bool)

(assert (=> b!1185730 m!1362081))

(declare-fun m!1362083 () Bool)

(assert (=> b!1185729 m!1362083))

(declare-fun m!1362085 () Bool)

(assert (=> b!1185729 m!1362085))

(declare-fun m!1362087 () Bool)

(assert (=> b!1185734 m!1362087))

(check-sat (not b!1185726) (not b!1185735) (not b!1185728) b_and!81587 (not b!1185733) (not b!1185734) (not b_next!29167) b_and!81583 (not b!1185729) (not b!1185725) (not b!1185731) (not b_next!29169) (not b!1185730) (not b_next!29165) b_and!81585 b_and!81581 (not b_next!29171))
(check-sat b_and!81587 (not b_next!29167) b_and!81583 (not b_next!29169) (not b_next!29165) b_and!81585 b_and!81581 (not b_next!29171))
