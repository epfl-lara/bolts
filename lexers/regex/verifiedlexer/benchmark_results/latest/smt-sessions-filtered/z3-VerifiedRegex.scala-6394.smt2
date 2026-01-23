; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333058 () Bool)

(assert start!333058)

(declare-fun b!3589245 () Bool)

(declare-fun b_free!92473 () Bool)

(declare-fun b_next!93177 () Bool)

(assert (=> b!3589245 (= b_free!92473 (not b_next!93177))))

(declare-fun tp!1098672 () Bool)

(declare-fun b_and!259387 () Bool)

(assert (=> b!3589245 (= tp!1098672 b_and!259387)))

(declare-fun b_free!92475 () Bool)

(declare-fun b_next!93179 () Bool)

(assert (=> b!3589245 (= b_free!92475 (not b_next!93179))))

(declare-fun tp!1098671 () Bool)

(declare-fun b_and!259389 () Bool)

(assert (=> b!3589245 (= tp!1098671 b_and!259389)))

(declare-fun b!3589243 () Bool)

(declare-fun b_free!92477 () Bool)

(declare-fun b_next!93181 () Bool)

(assert (=> b!3589243 (= b_free!92477 (not b_next!93181))))

(declare-fun tp!1098670 () Bool)

(declare-fun b_and!259391 () Bool)

(assert (=> b!3589243 (= tp!1098670 b_and!259391)))

(declare-fun b_free!92479 () Bool)

(declare-fun b_next!93183 () Bool)

(assert (=> b!3589243 (= b_free!92479 (not b_next!93183))))

(declare-fun tp!1098669 () Bool)

(declare-fun b_and!259393 () Bool)

(assert (=> b!3589243 (= tp!1098669 b_and!259393)))

(declare-fun b!3589232 () Bool)

(declare-fun b_free!92481 () Bool)

(declare-fun b_next!93185 () Bool)

(assert (=> b!3589232 (= b_free!92481 (not b_next!93185))))

(declare-fun tp!1098680 () Bool)

(declare-fun b_and!259395 () Bool)

(assert (=> b!3589232 (= tp!1098680 b_and!259395)))

(declare-fun b_free!92483 () Bool)

(declare-fun b_next!93187 () Bool)

(assert (=> b!3589232 (= b_free!92483 (not b_next!93187))))

(declare-fun tp!1098679 () Bool)

(declare-fun b_and!259397 () Bool)

(assert (=> b!3589232 (= tp!1098679 b_and!259397)))

(declare-fun b!3589225 () Bool)

(declare-fun b_free!92485 () Bool)

(declare-fun b_next!93189 () Bool)

(assert (=> b!3589225 (= b_free!92485 (not b_next!93189))))

(declare-fun tp!1098681 () Bool)

(declare-fun b_and!259399 () Bool)

(assert (=> b!3589225 (= tp!1098681 b_and!259399)))

(declare-fun b_free!92487 () Bool)

(declare-fun b_next!93191 () Bool)

(assert (=> b!3589225 (= b_free!92487 (not b_next!93191))))

(declare-fun tp!1098674 () Bool)

(declare-fun b_and!259401 () Bool)

(assert (=> b!3589225 (= tp!1098674 b_and!259401)))

(declare-fun b!3589217 () Bool)

(declare-fun res!1448755 () Bool)

(declare-fun e!2220775 () Bool)

(assert (=> b!3589217 (=> (not res!1448755) (not e!2220775))))

(declare-datatypes ((C!20840 0))(
  ( (C!20841 (val!12468 Int)) )
))
(declare-datatypes ((Regex!10327 0))(
  ( (ElementMatch!10327 (c!621688 C!20840)) (Concat!16125 (regOne!21166 Regex!10327) (regTwo!21166 Regex!10327)) (EmptyExpr!10327) (Star!10327 (reg!10656 Regex!10327)) (EmptyLang!10327) (Union!10327 (regOne!21167 Regex!10327) (regTwo!21167 Regex!10327)) )
))
(declare-datatypes ((String!42323 0))(
  ( (String!42324 (value!179122 String)) )
))
(declare-datatypes ((List!37843 0))(
  ( (Nil!37719) (Cons!37719 (h!43139 (_ BitVec 16)) (t!290874 List!37843)) )
))
(declare-datatypes ((TokenValue!5798 0))(
  ( (FloatLiteralValue!11596 (text!41031 List!37843)) (TokenValueExt!5797 (__x!23813 Int)) (Broken!28990 (value!179123 List!37843)) (Object!5921) (End!5798) (Def!5798) (Underscore!5798) (Match!5798) (Else!5798) (Error!5798) (Case!5798) (If!5798) (Extends!5798) (Abstract!5798) (Class!5798) (Val!5798) (DelimiterValue!11596 (del!5858 List!37843)) (KeywordValue!5804 (value!179124 List!37843)) (CommentValue!11596 (value!179125 List!37843)) (WhitespaceValue!11596 (value!179126 List!37843)) (IndentationValue!5798 (value!179127 List!37843)) (String!42325) (Int32!5798) (Broken!28991 (value!179128 List!37843)) (Boolean!5799) (Unit!53716) (OperatorValue!5801 (op!5858 List!37843)) (IdentifierValue!11596 (value!179129 List!37843)) (IdentifierValue!11597 (value!179130 List!37843)) (WhitespaceValue!11597 (value!179131 List!37843)) (True!11596) (False!11596) (Broken!28992 (value!179132 List!37843)) (Broken!28993 (value!179133 List!37843)) (True!11597) (RightBrace!5798) (RightBracket!5798) (Colon!5798) (Null!5798) (Comma!5798) (LeftBracket!5798) (False!11597) (LeftBrace!5798) (ImaginaryLiteralValue!5798 (text!41032 List!37843)) (StringLiteralValue!17394 (value!179134 List!37843)) (EOFValue!5798 (value!179135 List!37843)) (IdentValue!5798 (value!179136 List!37843)) (DelimiterValue!11597 (value!179137 List!37843)) (DedentValue!5798 (value!179138 List!37843)) (NewLineValue!5798 (value!179139 List!37843)) (IntegerValue!17394 (value!179140 (_ BitVec 32)) (text!41033 List!37843)) (IntegerValue!17395 (value!179141 Int) (text!41034 List!37843)) (Times!5798) (Or!5798) (Equal!5798) (Minus!5798) (Broken!28994 (value!179142 List!37843)) (And!5798) (Div!5798) (LessEqual!5798) (Mod!5798) (Concat!16126) (Not!5798) (Plus!5798) (SpaceValue!5798 (value!179143 List!37843)) (IntegerValue!17396 (value!179144 Int) (text!41035 List!37843)) (StringLiteralValue!17395 (text!41036 List!37843)) (FloatLiteralValue!11597 (text!41037 List!37843)) (BytesLiteralValue!5798 (value!179145 List!37843)) (CommentValue!11597 (value!179146 List!37843)) (StringLiteralValue!17396 (value!179147 List!37843)) (ErrorTokenValue!5798 (msg!5859 List!37843)) )
))
(declare-datatypes ((List!37844 0))(
  ( (Nil!37720) (Cons!37720 (h!43140 C!20840) (t!290875 List!37844)) )
))
(declare-datatypes ((IArray!22951 0))(
  ( (IArray!22952 (innerList!11533 List!37844)) )
))
(declare-datatypes ((Conc!11473 0))(
  ( (Node!11473 (left!29475 Conc!11473) (right!29805 Conc!11473) (csize!23176 Int) (cheight!11684 Int)) (Leaf!17868 (xs!14675 IArray!22951) (csize!23177 Int)) (Empty!11473) )
))
(declare-datatypes ((BalanceConc!22560 0))(
  ( (BalanceConc!22561 (c!621689 Conc!11473)) )
))
(declare-datatypes ((TokenValueInjection!11024 0))(
  ( (TokenValueInjection!11025 (toValue!7852 Int) (toChars!7711 Int)) )
))
(declare-datatypes ((Rule!10936 0))(
  ( (Rule!10937 (regex!5568 Regex!10327) (tag!6238 String!42323) (isSeparator!5568 Bool) (transformation!5568 TokenValueInjection!11024)) )
))
(declare-fun anOtherTypeRule!33 () Rule!10936)

(declare-fun rule!403 () Rule!10936)

(assert (=> b!3589217 (= res!1448755 (not (= (isSeparator!5568 anOtherTypeRule!33) (isSeparator!5568 rule!403))))))

(declare-fun b!3589218 () Bool)

(declare-fun res!1448763 () Bool)

(assert (=> b!3589218 (=> (not res!1448763) (not e!2220775))))

(declare-datatypes ((List!37845 0))(
  ( (Nil!37721) (Cons!37721 (h!43141 Rule!10936) (t!290876 List!37845)) )
))
(declare-fun rules!3307 () List!37845)

(declare-fun contains!7199 (List!37845 Rule!10936) Bool)

(assert (=> b!3589218 (= res!1448763 (contains!7199 rules!3307 rule!403))))

(declare-fun res!1448760 () Bool)

(assert (=> start!333058 (=> (not res!1448760) (not e!2220775))))

(declare-datatypes ((LexerInterface!5157 0))(
  ( (LexerInterfaceExt!5154 (__x!23814 Int)) (Lexer!5155) )
))
(declare-fun thiss!23823 () LexerInterface!5157)

(get-info :version)

(assert (=> start!333058 (= res!1448760 ((_ is Lexer!5155) thiss!23823))))

(assert (=> start!333058 e!2220775))

(declare-fun e!2220778 () Bool)

(assert (=> start!333058 e!2220778))

(declare-fun e!2220776 () Bool)

(assert (=> start!333058 e!2220776))

(assert (=> start!333058 true))

(declare-datatypes ((Token!10502 0))(
  ( (Token!10503 (value!179148 TokenValue!5798) (rule!8284 Rule!10936) (size!28732 Int) (originalCharacters!6282 List!37844)) )
))
(declare-fun token!511 () Token!10502)

(declare-fun e!2220755 () Bool)

(declare-fun inv!51057 (Token!10502) Bool)

(assert (=> start!333058 (and (inv!51057 token!511) e!2220755)))

(declare-fun e!2220767 () Bool)

(assert (=> start!333058 e!2220767))

(declare-fun e!2220759 () Bool)

(assert (=> start!333058 e!2220759))

(declare-fun b!3589219 () Bool)

(declare-fun res!1448752 () Bool)

(declare-fun e!2220769 () Bool)

(assert (=> b!3589219 (=> res!1448752 e!2220769)))

(declare-fun lt!1231049 () C!20840)

(declare-fun contains!7200 (List!37844 C!20840) Bool)

(declare-fun usedCharacters!782 (Regex!10327) List!37844)

(assert (=> b!3589219 (= res!1448752 (not (contains!7200 (usedCharacters!782 (regex!5568 anOtherTypeRule!33)) lt!1231049)))))

(declare-fun b!3589220 () Bool)

(declare-fun e!2220756 () Bool)

(declare-fun e!2220768 () Bool)

(assert (=> b!3589220 (= e!2220756 (not e!2220768))))

(declare-fun res!1448761 () Bool)

(assert (=> b!3589220 (=> res!1448761 e!2220768)))

(declare-fun lt!1231051 () List!37844)

(declare-fun matchR!4896 (Regex!10327 List!37844) Bool)

(assert (=> b!3589220 (= res!1448761 (not (matchR!4896 (regex!5568 rule!403) lt!1231051)))))

(declare-fun ruleValid!1833 (LexerInterface!5157 Rule!10936) Bool)

(assert (=> b!3589220 (ruleValid!1833 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53717 0))(
  ( (Unit!53718) )
))
(declare-fun lt!1231060 () Unit!53717)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!988 (LexerInterface!5157 Rule!10936 List!37845) Unit!53717)

(assert (=> b!3589220 (= lt!1231060 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!988 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3589221 () Bool)

(declare-fun e!2220760 () Bool)

(assert (=> b!3589221 (= e!2220760 e!2220756)))

(declare-fun res!1448768 () Bool)

(assert (=> b!3589221 (=> (not res!1448768) (not e!2220756))))

(declare-datatypes ((tuple2!37612 0))(
  ( (tuple2!37613 (_1!21940 Token!10502) (_2!21940 List!37844)) )
))
(declare-fun lt!1231046 () tuple2!37612)

(assert (=> b!3589221 (= res!1448768 (= (_1!21940 lt!1231046) token!511))))

(declare-datatypes ((Option!7766 0))(
  ( (None!7765) (Some!7765 (v!37435 tuple2!37612)) )
))
(declare-fun lt!1231044 () Option!7766)

(declare-fun get!12160 (Option!7766) tuple2!37612)

(assert (=> b!3589221 (= lt!1231046 (get!12160 lt!1231044))))

(declare-fun b!3589222 () Bool)

(assert (=> b!3589222 (= e!2220768 e!2220769)))

(declare-fun res!1448757 () Bool)

(assert (=> b!3589222 (=> res!1448757 e!2220769)))

(assert (=> b!3589222 (= res!1448757 (contains!7200 (usedCharacters!782 (regex!5568 rule!403)) lt!1231049))))

(declare-fun suffix!1395 () List!37844)

(declare-fun head!7490 (List!37844) C!20840)

(assert (=> b!3589222 (= lt!1231049 (head!7490 suffix!1395))))

(declare-fun b!3589223 () Bool)

(declare-fun res!1448758 () Bool)

(assert (=> b!3589223 (=> (not res!1448758) (not e!2220775))))

(declare-fun rulesInvariant!4554 (LexerInterface!5157 List!37845) Bool)

(assert (=> b!3589223 (= res!1448758 (rulesInvariant!4554 thiss!23823 rules!3307))))

(declare-fun b!3589224 () Bool)

(declare-fun e!2220774 () Bool)

(assert (=> b!3589224 (= e!2220769 e!2220774)))

(declare-fun res!1448756 () Bool)

(assert (=> b!3589224 (=> res!1448756 e!2220774)))

(declare-fun lt!1231055 () List!37844)

(declare-fun lt!1231048 () List!37844)

(declare-fun isPrefix!2931 (List!37844 List!37844) Bool)

(assert (=> b!3589224 (= res!1448756 (not (isPrefix!2931 lt!1231055 lt!1231048)))))

(declare-fun lt!1231045 () tuple2!37612)

(declare-fun ++!9384 (List!37844 List!37844) List!37844)

(assert (=> b!3589224 (isPrefix!2931 lt!1231055 (++!9384 lt!1231055 (_2!21940 lt!1231045)))))

(declare-fun lt!1231043 () Unit!53717)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1852 (List!37844 List!37844) Unit!53717)

(assert (=> b!3589224 (= lt!1231043 (lemmaConcatTwoListThenFirstIsPrefix!1852 lt!1231055 (_2!21940 lt!1231045)))))

(declare-fun lt!1231042 () BalanceConc!22560)

(declare-fun list!13872 (BalanceConc!22560) List!37844)

(assert (=> b!3589224 (= lt!1231055 (list!13872 lt!1231042))))

(declare-fun charsOf!3582 (Token!10502) BalanceConc!22560)

(assert (=> b!3589224 (= lt!1231042 (charsOf!3582 (_1!21940 lt!1231045)))))

(declare-fun e!2220758 () Bool)

(assert (=> b!3589224 e!2220758))

(declare-fun res!1448754 () Bool)

(assert (=> b!3589224 (=> (not res!1448754) (not e!2220758))))

(declare-datatypes ((Option!7767 0))(
  ( (None!7766) (Some!7766 (v!37436 Rule!10936)) )
))
(declare-fun lt!1231058 () Option!7767)

(declare-fun isDefined!5998 (Option!7767) Bool)

(assert (=> b!3589224 (= res!1448754 (isDefined!5998 lt!1231058))))

(declare-fun getRuleFromTag!1174 (LexerInterface!5157 List!37845 String!42323) Option!7767)

(assert (=> b!3589224 (= lt!1231058 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun lt!1231059 () Unit!53717)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1174 (LexerInterface!5157 List!37845 List!37844 Token!10502) Unit!53717)

(assert (=> b!3589224 (= lt!1231059 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1174 thiss!23823 rules!3307 lt!1231048 (_1!21940 lt!1231045)))))

(declare-fun lt!1231047 () Option!7766)

(assert (=> b!3589224 (= lt!1231045 (get!12160 lt!1231047))))

(declare-fun lt!1231052 () Unit!53717)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!837 (LexerInterface!5157 List!37845 List!37844 List!37844) Unit!53717)

(assert (=> b!3589224 (= lt!1231052 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!837 thiss!23823 rules!3307 lt!1231051 suffix!1395))))

(declare-fun maxPrefix!2691 (LexerInterface!5157 List!37845 List!37844) Option!7766)

(assert (=> b!3589224 (= lt!1231047 (maxPrefix!2691 thiss!23823 rules!3307 lt!1231048))))

(assert (=> b!3589224 (isPrefix!2931 lt!1231051 lt!1231048)))

(declare-fun lt!1231056 () Unit!53717)

(assert (=> b!3589224 (= lt!1231056 (lemmaConcatTwoListThenFirstIsPrefix!1852 lt!1231051 suffix!1395))))

(assert (=> b!3589224 (= lt!1231048 (++!9384 lt!1231051 suffix!1395))))

(declare-fun e!2220757 () Bool)

(assert (=> b!3589225 (= e!2220757 (and tp!1098681 tp!1098674))))

(declare-fun b!3589226 () Bool)

(declare-fun res!1448764 () Bool)

(assert (=> b!3589226 (=> res!1448764 e!2220768)))

(declare-fun isEmpty!22226 (List!37844) Bool)

(assert (=> b!3589226 (= res!1448764 (isEmpty!22226 suffix!1395))))

(declare-fun b!3589227 () Bool)

(declare-fun e!2220770 () Bool)

(declare-fun tp!1098676 () Bool)

(declare-fun inv!21 (TokenValue!5798) Bool)

(assert (=> b!3589227 (= e!2220755 (and (inv!21 (value!179148 token!511)) e!2220770 tp!1098676))))

(declare-fun b!3589228 () Bool)

(declare-fun rulesValidInductive!1943 (LexerInterface!5157 List!37845) Bool)

(assert (=> b!3589228 (= e!2220774 (rulesValidInductive!1943 thiss!23823 rules!3307))))

(declare-fun lt!1231057 () Unit!53717)

(declare-fun lemmaCharactersSize!621 (Token!10502) Unit!53717)

(assert (=> b!3589228 (= lt!1231057 (lemmaCharactersSize!621 (_1!21940 lt!1231045)))))

(declare-fun lt!1231050 () Unit!53717)

(declare-fun lemmaEqSameImage!759 (TokenValueInjection!11024 BalanceConc!22560 BalanceConc!22560) Unit!53717)

(declare-fun seqFromList!4121 (List!37844) BalanceConc!22560)

(assert (=> b!3589228 (= lt!1231050 (lemmaEqSameImage!759 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231042 (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045)))))))

(declare-fun lt!1231053 () Unit!53717)

(declare-fun lemmaSemiInverse!1325 (TokenValueInjection!11024 BalanceConc!22560) Unit!53717)

(assert (=> b!3589228 (= lt!1231053 (lemmaSemiInverse!1325 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231042))))

(declare-fun b!3589229 () Bool)

(declare-fun res!1448762 () Bool)

(assert (=> b!3589229 (=> (not res!1448762) (not e!2220775))))

(assert (=> b!3589229 (= res!1448762 (contains!7199 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3589230 () Bool)

(declare-fun res!1448759 () Bool)

(assert (=> b!3589230 (=> (not res!1448759) (not e!2220775))))

(declare-fun isEmpty!22227 (List!37845) Bool)

(assert (=> b!3589230 (= res!1448759 (not (isEmpty!22227 rules!3307)))))

(declare-fun b!3589231 () Bool)

(declare-fun e!2220764 () Bool)

(declare-fun lt!1231054 () Rule!10936)

(assert (=> b!3589231 (= e!2220764 (= (rule!8284 (_1!21940 lt!1231045)) lt!1231054))))

(declare-fun e!2220773 () Bool)

(assert (=> b!3589232 (= e!2220773 (and tp!1098680 tp!1098679))))

(declare-fun b!3589233 () Bool)

(declare-fun tp!1098673 () Bool)

(declare-fun e!2220771 () Bool)

(declare-fun inv!51054 (String!42323) Bool)

(declare-fun inv!51058 (TokenValueInjection!11024) Bool)

(assert (=> b!3589233 (= e!2220759 (and tp!1098673 (inv!51054 (tag!6238 anOtherTypeRule!33)) (inv!51058 (transformation!5568 anOtherTypeRule!33)) e!2220771))))

(declare-fun tp!1098668 () Bool)

(declare-fun b!3589234 () Bool)

(assert (=> b!3589234 (= e!2220770 (and tp!1098668 (inv!51054 (tag!6238 (rule!8284 token!511))) (inv!51058 (transformation!5568 (rule!8284 token!511))) e!2220757))))

(declare-fun b!3589235 () Bool)

(assert (=> b!3589235 (= e!2220758 e!2220764)))

(declare-fun res!1448765 () Bool)

(assert (=> b!3589235 (=> (not res!1448765) (not e!2220764))))

(assert (=> b!3589235 (= res!1448765 (matchR!4896 (regex!5568 lt!1231054) (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))))))

(declare-fun get!12161 (Option!7767) Rule!10936)

(assert (=> b!3589235 (= lt!1231054 (get!12161 lt!1231058))))

(declare-fun b!3589236 () Bool)

(declare-fun tp!1098678 () Bool)

(declare-fun e!2220763 () Bool)

(assert (=> b!3589236 (= e!2220763 (and tp!1098678 (inv!51054 (tag!6238 (h!43141 rules!3307))) (inv!51058 (transformation!5568 (h!43141 rules!3307))) e!2220773))))

(declare-fun b!3589237 () Bool)

(declare-fun res!1448766 () Bool)

(assert (=> b!3589237 (=> (not res!1448766) (not e!2220756))))

(assert (=> b!3589237 (= res!1448766 (= (rule!8284 token!511) rule!403))))

(declare-fun b!3589238 () Bool)

(declare-fun res!1448753 () Bool)

(assert (=> b!3589238 (=> res!1448753 e!2220774)))

(assert (=> b!3589238 (= res!1448753 (not (matchR!4896 (regex!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231055)))))

(declare-fun b!3589239 () Bool)

(declare-fun res!1448767 () Bool)

(assert (=> b!3589239 (=> res!1448767 e!2220769)))

(declare-fun sepAndNonSepRulesDisjointChars!1738 (List!37845 List!37845) Bool)

(assert (=> b!3589239 (= res!1448767 (not (sepAndNonSepRulesDisjointChars!1738 rules!3307 rules!3307)))))

(declare-fun b!3589240 () Bool)

(declare-fun res!1448769 () Bool)

(assert (=> b!3589240 (=> (not res!1448769) (not e!2220756))))

(assert (=> b!3589240 (= res!1448769 (isEmpty!22226 (_2!21940 lt!1231046)))))

(declare-fun b!3589241 () Bool)

(assert (=> b!3589241 (= e!2220775 e!2220760)))

(declare-fun res!1448751 () Bool)

(assert (=> b!3589241 (=> (not res!1448751) (not e!2220760))))

(declare-fun isDefined!5999 (Option!7766) Bool)

(assert (=> b!3589241 (= res!1448751 (isDefined!5999 lt!1231044))))

(assert (=> b!3589241 (= lt!1231044 (maxPrefix!2691 thiss!23823 rules!3307 lt!1231051))))

(assert (=> b!3589241 (= lt!1231051 (list!13872 (charsOf!3582 token!511)))))

(declare-fun e!2220777 () Bool)

(declare-fun tp!1098677 () Bool)

(declare-fun b!3589242 () Bool)

(assert (=> b!3589242 (= e!2220767 (and tp!1098677 (inv!51054 (tag!6238 rule!403)) (inv!51058 (transformation!5568 rule!403)) e!2220777))))

(assert (=> b!3589243 (= e!2220777 (and tp!1098670 tp!1098669))))

(declare-fun b!3589244 () Bool)

(declare-fun tp_is_empty!17737 () Bool)

(declare-fun tp!1098675 () Bool)

(assert (=> b!3589244 (= e!2220776 (and tp_is_empty!17737 tp!1098675))))

(assert (=> b!3589245 (= e!2220771 (and tp!1098672 tp!1098671))))

(declare-fun b!3589246 () Bool)

(declare-fun tp!1098682 () Bool)

(assert (=> b!3589246 (= e!2220778 (and e!2220763 tp!1098682))))

(assert (= (and start!333058 res!1448760) b!3589230))

(assert (= (and b!3589230 res!1448759) b!3589223))

(assert (= (and b!3589223 res!1448758) b!3589218))

(assert (= (and b!3589218 res!1448763) b!3589229))

(assert (= (and b!3589229 res!1448762) b!3589217))

(assert (= (and b!3589217 res!1448755) b!3589241))

(assert (= (and b!3589241 res!1448751) b!3589221))

(assert (= (and b!3589221 res!1448768) b!3589240))

(assert (= (and b!3589240 res!1448769) b!3589237))

(assert (= (and b!3589237 res!1448766) b!3589220))

(assert (= (and b!3589220 (not res!1448761)) b!3589226))

(assert (= (and b!3589226 (not res!1448764)) b!3589222))

(assert (= (and b!3589222 (not res!1448757)) b!3589219))

(assert (= (and b!3589219 (not res!1448752)) b!3589239))

(assert (= (and b!3589239 (not res!1448767)) b!3589224))

(assert (= (and b!3589224 res!1448754) b!3589235))

(assert (= (and b!3589235 res!1448765) b!3589231))

(assert (= (and b!3589224 (not res!1448756)) b!3589238))

(assert (= (and b!3589238 (not res!1448753)) b!3589228))

(assert (= b!3589236 b!3589232))

(assert (= b!3589246 b!3589236))

(assert (= (and start!333058 ((_ is Cons!37721) rules!3307)) b!3589246))

(assert (= (and start!333058 ((_ is Cons!37720) suffix!1395)) b!3589244))

(assert (= b!3589234 b!3589225))

(assert (= b!3589227 b!3589234))

(assert (= start!333058 b!3589227))

(assert (= b!3589242 b!3589243))

(assert (= start!333058 b!3589242))

(assert (= b!3589233 b!3589245))

(assert (= start!333058 b!3589233))

(declare-fun m!4083001 () Bool)

(assert (=> b!3589228 m!4083001))

(declare-fun m!4083003 () Bool)

(assert (=> b!3589228 m!4083003))

(declare-fun m!4083005 () Bool)

(assert (=> b!3589228 m!4083005))

(declare-fun m!4083007 () Bool)

(assert (=> b!3589228 m!4083007))

(declare-fun m!4083009 () Bool)

(assert (=> b!3589228 m!4083009))

(assert (=> b!3589228 m!4083005))

(declare-fun m!4083011 () Bool)

(assert (=> b!3589219 m!4083011))

(assert (=> b!3589219 m!4083011))

(declare-fun m!4083013 () Bool)

(assert (=> b!3589219 m!4083013))

(declare-fun m!4083015 () Bool)

(assert (=> b!3589242 m!4083015))

(declare-fun m!4083017 () Bool)

(assert (=> b!3589242 m!4083017))

(declare-fun m!4083019 () Bool)

(assert (=> b!3589234 m!4083019))

(declare-fun m!4083021 () Bool)

(assert (=> b!3589234 m!4083021))

(declare-fun m!4083023 () Bool)

(assert (=> b!3589224 m!4083023))

(declare-fun m!4083025 () Bool)

(assert (=> b!3589224 m!4083025))

(declare-fun m!4083027 () Bool)

(assert (=> b!3589224 m!4083027))

(declare-fun m!4083029 () Bool)

(assert (=> b!3589224 m!4083029))

(declare-fun m!4083031 () Bool)

(assert (=> b!3589224 m!4083031))

(declare-fun m!4083033 () Bool)

(assert (=> b!3589224 m!4083033))

(declare-fun m!4083035 () Bool)

(assert (=> b!3589224 m!4083035))

(declare-fun m!4083037 () Bool)

(assert (=> b!3589224 m!4083037))

(declare-fun m!4083039 () Bool)

(assert (=> b!3589224 m!4083039))

(declare-fun m!4083041 () Bool)

(assert (=> b!3589224 m!4083041))

(declare-fun m!4083043 () Bool)

(assert (=> b!3589224 m!4083043))

(declare-fun m!4083045 () Bool)

(assert (=> b!3589224 m!4083045))

(declare-fun m!4083047 () Bool)

(assert (=> b!3589224 m!4083047))

(assert (=> b!3589224 m!4083025))

(declare-fun m!4083049 () Bool)

(assert (=> b!3589224 m!4083049))

(declare-fun m!4083051 () Bool)

(assert (=> b!3589224 m!4083051))

(declare-fun m!4083053 () Bool)

(assert (=> b!3589226 m!4083053))

(declare-fun m!4083055 () Bool)

(assert (=> b!3589238 m!4083055))

(declare-fun m!4083057 () Bool)

(assert (=> b!3589236 m!4083057))

(declare-fun m!4083059 () Bool)

(assert (=> b!3589236 m!4083059))

(declare-fun m!4083061 () Bool)

(assert (=> b!3589222 m!4083061))

(assert (=> b!3589222 m!4083061))

(declare-fun m!4083063 () Bool)

(assert (=> b!3589222 m!4083063))

(declare-fun m!4083065 () Bool)

(assert (=> b!3589222 m!4083065))

(declare-fun m!4083067 () Bool)

(assert (=> b!3589240 m!4083067))

(declare-fun m!4083069 () Bool)

(assert (=> b!3589241 m!4083069))

(declare-fun m!4083071 () Bool)

(assert (=> b!3589241 m!4083071))

(declare-fun m!4083073 () Bool)

(assert (=> b!3589241 m!4083073))

(assert (=> b!3589241 m!4083073))

(declare-fun m!4083075 () Bool)

(assert (=> b!3589241 m!4083075))

(declare-fun m!4083077 () Bool)

(assert (=> b!3589233 m!4083077))

(declare-fun m!4083079 () Bool)

(assert (=> b!3589233 m!4083079))

(assert (=> b!3589235 m!4083043))

(assert (=> b!3589235 m!4083043))

(declare-fun m!4083081 () Bool)

(assert (=> b!3589235 m!4083081))

(assert (=> b!3589235 m!4083081))

(declare-fun m!4083083 () Bool)

(assert (=> b!3589235 m!4083083))

(declare-fun m!4083085 () Bool)

(assert (=> b!3589235 m!4083085))

(declare-fun m!4083087 () Bool)

(assert (=> b!3589239 m!4083087))

(declare-fun m!4083089 () Bool)

(assert (=> start!333058 m!4083089))

(declare-fun m!4083091 () Bool)

(assert (=> b!3589229 m!4083091))

(declare-fun m!4083093 () Bool)

(assert (=> b!3589227 m!4083093))

(declare-fun m!4083095 () Bool)

(assert (=> b!3589223 m!4083095))

(declare-fun m!4083097 () Bool)

(assert (=> b!3589230 m!4083097))

(declare-fun m!4083099 () Bool)

(assert (=> b!3589221 m!4083099))

(declare-fun m!4083101 () Bool)

(assert (=> b!3589220 m!4083101))

(declare-fun m!4083103 () Bool)

(assert (=> b!3589220 m!4083103))

(declare-fun m!4083105 () Bool)

(assert (=> b!3589220 m!4083105))

(declare-fun m!4083107 () Bool)

(assert (=> b!3589218 m!4083107))

(check-sat (not b!3589233) (not b!3589218) (not b_next!93189) (not b!3589228) (not b_next!93185) b_and!259401 b_and!259395 (not b!3589221) (not b!3589234) (not b_next!93191) (not start!333058) (not b!3589239) (not b!3589238) (not b!3589227) (not b!3589226) tp_is_empty!17737 (not b_next!93177) (not b!3589219) b_and!259391 (not b!3589222) b_and!259393 (not b_next!93183) (not b!3589220) b_and!259397 (not b!3589229) (not b!3589246) (not b!3589240) (not b!3589230) (not b!3589223) (not b_next!93181) b_and!259399 b_and!259389 (not b!3589224) (not b!3589242) (not b_next!93187) (not b!3589236) b_and!259387 (not b!3589244) (not b!3589241) (not b!3589235) (not b_next!93179))
(check-sat (not b_next!93189) (not b_next!93185) (not b_next!93177) b_and!259391 b_and!259401 b_and!259397 b_and!259395 b_and!259389 (not b_next!93187) b_and!259387 (not b_next!93191) (not b_next!93179) b_and!259393 (not b_next!93183) (not b_next!93181) b_and!259399)
(get-model)

(declare-fun d!1058297 () Bool)

(declare-fun res!1448788 () Bool)

(declare-fun e!2220785 () Bool)

(assert (=> d!1058297 (=> (not res!1448788) (not e!2220785))))

(declare-fun rulesValid!2120 (LexerInterface!5157 List!37845) Bool)

(assert (=> d!1058297 (= res!1448788 (rulesValid!2120 thiss!23823 rules!3307))))

(assert (=> d!1058297 (= (rulesInvariant!4554 thiss!23823 rules!3307) e!2220785)))

(declare-fun b!3589253 () Bool)

(declare-datatypes ((List!37847 0))(
  ( (Nil!37723) (Cons!37723 (h!43143 String!42323) (t!290978 List!37847)) )
))
(declare-fun noDuplicateTag!2116 (LexerInterface!5157 List!37845 List!37847) Bool)

(assert (=> b!3589253 (= e!2220785 (noDuplicateTag!2116 thiss!23823 rules!3307 Nil!37723))))

(assert (= (and d!1058297 res!1448788) b!3589253))

(declare-fun m!4083109 () Bool)

(assert (=> d!1058297 m!4083109))

(declare-fun m!4083111 () Bool)

(assert (=> b!3589253 m!4083111))

(assert (=> b!3589223 d!1058297))

(declare-fun d!1058301 () Bool)

(assert (=> d!1058301 (= (inv!51054 (tag!6238 (rule!8284 token!511))) (= (mod (str.len (value!179122 (tag!6238 (rule!8284 token!511)))) 2) 0))))

(assert (=> b!3589234 d!1058301))

(declare-fun d!1058305 () Bool)

(declare-fun res!1448793 () Bool)

(declare-fun e!2220798 () Bool)

(assert (=> d!1058305 (=> (not res!1448793) (not e!2220798))))

(declare-fun semiInverseModEq!2361 (Int Int) Bool)

(assert (=> d!1058305 (= res!1448793 (semiInverseModEq!2361 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (toValue!7852 (transformation!5568 (rule!8284 token!511)))))))

(assert (=> d!1058305 (= (inv!51058 (transformation!5568 (rule!8284 token!511))) e!2220798)))

(declare-fun b!3589274 () Bool)

(declare-fun equivClasses!2260 (Int Int) Bool)

(assert (=> b!3589274 (= e!2220798 (equivClasses!2260 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (toValue!7852 (transformation!5568 (rule!8284 token!511)))))))

(assert (= (and d!1058305 res!1448793) b!3589274))

(declare-fun m!4083119 () Bool)

(assert (=> d!1058305 m!4083119))

(declare-fun m!4083121 () Bool)

(assert (=> b!3589274 m!4083121))

(assert (=> b!3589234 d!1058305))

(declare-fun d!1058307 () Bool)

(assert (=> d!1058307 (= (inv!51054 (tag!6238 anOtherTypeRule!33)) (= (mod (str.len (value!179122 (tag!6238 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3589233 d!1058307))

(declare-fun d!1058309 () Bool)

(declare-fun res!1448794 () Bool)

(declare-fun e!2220803 () Bool)

(assert (=> d!1058309 (=> (not res!1448794) (not e!2220803))))

(assert (=> d!1058309 (= res!1448794 (semiInverseModEq!2361 (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toValue!7852 (transformation!5568 anOtherTypeRule!33))))))

(assert (=> d!1058309 (= (inv!51058 (transformation!5568 anOtherTypeRule!33)) e!2220803)))

(declare-fun b!3589283 () Bool)

(assert (=> b!3589283 (= e!2220803 (equivClasses!2260 (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toValue!7852 (transformation!5568 anOtherTypeRule!33))))))

(assert (= (and d!1058309 res!1448794) b!3589283))

(declare-fun m!4083125 () Bool)

(assert (=> d!1058309 m!4083125))

(declare-fun m!4083129 () Bool)

(assert (=> b!3589283 m!4083129))

(assert (=> b!3589233 d!1058309))

(declare-fun bm!259879 () Bool)

(declare-fun call!259884 () Bool)

(assert (=> bm!259879 (= call!259884 (isEmpty!22226 (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))))))

(declare-fun d!1058311 () Bool)

(declare-fun e!2220856 () Bool)

(assert (=> d!1058311 e!2220856))

(declare-fun c!621725 () Bool)

(assert (=> d!1058311 (= c!621725 ((_ is EmptyExpr!10327) (regex!5568 lt!1231054)))))

(declare-fun lt!1231069 () Bool)

(declare-fun e!2220858 () Bool)

(assert (=> d!1058311 (= lt!1231069 e!2220858)))

(declare-fun c!621723 () Bool)

(assert (=> d!1058311 (= c!621723 (isEmpty!22226 (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))))))

(declare-fun validRegex!4719 (Regex!10327) Bool)

(assert (=> d!1058311 (validRegex!4719 (regex!5568 lt!1231054))))

(assert (=> d!1058311 (= (matchR!4896 (regex!5568 lt!1231054) (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))) lt!1231069)))

(declare-fun b!3589373 () Bool)

(declare-fun derivativeStep!3112 (Regex!10327 C!20840) Regex!10327)

(declare-fun tail!5561 (List!37844) List!37844)

(assert (=> b!3589373 (= e!2220858 (matchR!4896 (derivativeStep!3112 (regex!5568 lt!1231054) (head!7490 (list!13872 (charsOf!3582 (_1!21940 lt!1231045))))) (tail!5561 (list!13872 (charsOf!3582 (_1!21940 lt!1231045))))))))

(declare-fun b!3589374 () Bool)

(declare-fun res!1448843 () Bool)

(declare-fun e!2220854 () Bool)

(assert (=> b!3589374 (=> (not res!1448843) (not e!2220854))))

(assert (=> b!3589374 (= res!1448843 (not call!259884))))

(declare-fun b!3589375 () Bool)

(declare-fun e!2220852 () Bool)

(assert (=> b!3589375 (= e!2220852 (not (= (head!7490 (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))) (c!621688 (regex!5568 lt!1231054)))))))

(declare-fun b!3589376 () Bool)

(declare-fun res!1448848 () Bool)

(declare-fun e!2220855 () Bool)

(assert (=> b!3589376 (=> res!1448848 e!2220855)))

(assert (=> b!3589376 (= res!1448848 e!2220854)))

(declare-fun res!1448849 () Bool)

(assert (=> b!3589376 (=> (not res!1448849) (not e!2220854))))

(assert (=> b!3589376 (= res!1448849 lt!1231069)))

(declare-fun b!3589377 () Bool)

(declare-fun nullable!3563 (Regex!10327) Bool)

(assert (=> b!3589377 (= e!2220858 (nullable!3563 (regex!5568 lt!1231054)))))

(declare-fun b!3589378 () Bool)

(assert (=> b!3589378 (= e!2220854 (= (head!7490 (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))) (c!621688 (regex!5568 lt!1231054))))))

(declare-fun b!3589379 () Bool)

(declare-fun e!2220857 () Bool)

(assert (=> b!3589379 (= e!2220856 e!2220857)))

(declare-fun c!621724 () Bool)

(assert (=> b!3589379 (= c!621724 ((_ is EmptyLang!10327) (regex!5568 lt!1231054)))))

(declare-fun b!3589380 () Bool)

(declare-fun res!1448842 () Bool)

(assert (=> b!3589380 (=> res!1448842 e!2220855)))

(assert (=> b!3589380 (= res!1448842 (not ((_ is ElementMatch!10327) (regex!5568 lt!1231054))))))

(assert (=> b!3589380 (= e!2220857 e!2220855)))

(declare-fun b!3589381 () Bool)

(declare-fun res!1448844 () Bool)

(assert (=> b!3589381 (=> res!1448844 e!2220852)))

(assert (=> b!3589381 (= res!1448844 (not (isEmpty!22226 (tail!5561 (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))))))))

(declare-fun b!3589382 () Bool)

(declare-fun e!2220853 () Bool)

(assert (=> b!3589382 (= e!2220853 e!2220852)))

(declare-fun res!1448847 () Bool)

(assert (=> b!3589382 (=> res!1448847 e!2220852)))

(assert (=> b!3589382 (= res!1448847 call!259884)))

(declare-fun b!3589383 () Bool)

(declare-fun res!1448845 () Bool)

(assert (=> b!3589383 (=> (not res!1448845) (not e!2220854))))

(assert (=> b!3589383 (= res!1448845 (isEmpty!22226 (tail!5561 (list!13872 (charsOf!3582 (_1!21940 lt!1231045))))))))

(declare-fun b!3589384 () Bool)

(assert (=> b!3589384 (= e!2220857 (not lt!1231069))))

(declare-fun b!3589385 () Bool)

(assert (=> b!3589385 (= e!2220855 e!2220853)))

(declare-fun res!1448846 () Bool)

(assert (=> b!3589385 (=> (not res!1448846) (not e!2220853))))

(assert (=> b!3589385 (= res!1448846 (not lt!1231069))))

(declare-fun b!3589386 () Bool)

(assert (=> b!3589386 (= e!2220856 (= lt!1231069 call!259884))))

(assert (= (and d!1058311 c!621723) b!3589377))

(assert (= (and d!1058311 (not c!621723)) b!3589373))

(assert (= (and d!1058311 c!621725) b!3589386))

(assert (= (and d!1058311 (not c!621725)) b!3589379))

(assert (= (and b!3589379 c!621724) b!3589384))

(assert (= (and b!3589379 (not c!621724)) b!3589380))

(assert (= (and b!3589380 (not res!1448842)) b!3589376))

(assert (= (and b!3589376 res!1448849) b!3589374))

(assert (= (and b!3589374 res!1448843) b!3589383))

(assert (= (and b!3589383 res!1448845) b!3589378))

(assert (= (and b!3589376 (not res!1448848)) b!3589385))

(assert (= (and b!3589385 res!1448846) b!3589382))

(assert (= (and b!3589382 (not res!1448847)) b!3589381))

(assert (= (and b!3589381 (not res!1448844)) b!3589375))

(assert (= (or b!3589386 b!3589374 b!3589382) bm!259879))

(assert (=> bm!259879 m!4083081))

(declare-fun m!4083163 () Bool)

(assert (=> bm!259879 m!4083163))

(assert (=> b!3589373 m!4083081))

(declare-fun m!4083165 () Bool)

(assert (=> b!3589373 m!4083165))

(assert (=> b!3589373 m!4083165))

(declare-fun m!4083167 () Bool)

(assert (=> b!3589373 m!4083167))

(assert (=> b!3589373 m!4083081))

(declare-fun m!4083169 () Bool)

(assert (=> b!3589373 m!4083169))

(assert (=> b!3589373 m!4083167))

(assert (=> b!3589373 m!4083169))

(declare-fun m!4083171 () Bool)

(assert (=> b!3589373 m!4083171))

(assert (=> b!3589375 m!4083081))

(assert (=> b!3589375 m!4083165))

(assert (=> b!3589383 m!4083081))

(assert (=> b!3589383 m!4083169))

(assert (=> b!3589383 m!4083169))

(declare-fun m!4083173 () Bool)

(assert (=> b!3589383 m!4083173))

(assert (=> b!3589378 m!4083081))

(assert (=> b!3589378 m!4083165))

(assert (=> d!1058311 m!4083081))

(assert (=> d!1058311 m!4083163))

(declare-fun m!4083175 () Bool)

(assert (=> d!1058311 m!4083175))

(declare-fun m!4083177 () Bool)

(assert (=> b!3589377 m!4083177))

(assert (=> b!3589381 m!4083081))

(assert (=> b!3589381 m!4083169))

(assert (=> b!3589381 m!4083169))

(assert (=> b!3589381 m!4083173))

(assert (=> b!3589235 d!1058311))

(declare-fun d!1058333 () Bool)

(declare-fun list!13873 (Conc!11473) List!37844)

(assert (=> d!1058333 (= (list!13872 (charsOf!3582 (_1!21940 lt!1231045))) (list!13873 (c!621689 (charsOf!3582 (_1!21940 lt!1231045)))))))

(declare-fun bs!570210 () Bool)

(assert (= bs!570210 d!1058333))

(declare-fun m!4083185 () Bool)

(assert (=> bs!570210 m!4083185))

(assert (=> b!3589235 d!1058333))

(declare-fun d!1058337 () Bool)

(declare-fun lt!1231077 () BalanceConc!22560)

(assert (=> d!1058337 (= (list!13872 lt!1231077) (originalCharacters!6282 (_1!21940 lt!1231045)))))

(declare-fun dynLambda!16225 (Int TokenValue!5798) BalanceConc!22560)

(assert (=> d!1058337 (= lt!1231077 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (value!179148 (_1!21940 lt!1231045))))))

(assert (=> d!1058337 (= (charsOf!3582 (_1!21940 lt!1231045)) lt!1231077)))

(declare-fun b_lambda!106035 () Bool)

(assert (=> (not b_lambda!106035) (not d!1058337)))

(declare-fun t!290878 () Bool)

(declare-fun tb!204797 () Bool)

(assert (=> (and b!3589245 (= (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290878) tb!204797))

(declare-fun b!3589400 () Bool)

(declare-fun e!2220870 () Bool)

(declare-fun tp!1098685 () Bool)

(declare-fun inv!51061 (Conc!11473) Bool)

(assert (=> b!3589400 (= e!2220870 (and (inv!51061 (c!621689 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (value!179148 (_1!21940 lt!1231045))))) tp!1098685))))

(declare-fun result!249698 () Bool)

(declare-fun inv!51062 (BalanceConc!22560) Bool)

(assert (=> tb!204797 (= result!249698 (and (inv!51062 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (value!179148 (_1!21940 lt!1231045)))) e!2220870))))

(assert (= tb!204797 b!3589400))

(declare-fun m!4083191 () Bool)

(assert (=> b!3589400 m!4083191))

(declare-fun m!4083193 () Bool)

(assert (=> tb!204797 m!4083193))

(assert (=> d!1058337 t!290878))

(declare-fun b_and!259403 () Bool)

(assert (= b_and!259389 (and (=> t!290878 result!249698) b_and!259403)))

(declare-fun t!290880 () Bool)

(declare-fun tb!204799 () Bool)

(assert (=> (and b!3589243 (= (toChars!7711 (transformation!5568 rule!403)) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290880) tb!204799))

(declare-fun result!249702 () Bool)

(assert (= result!249702 result!249698))

(assert (=> d!1058337 t!290880))

(declare-fun b_and!259405 () Bool)

(assert (= b_and!259393 (and (=> t!290880 result!249702) b_and!259405)))

(declare-fun t!290882 () Bool)

(declare-fun tb!204801 () Bool)

(assert (=> (and b!3589232 (= (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290882) tb!204801))

(declare-fun result!249704 () Bool)

(assert (= result!249704 result!249698))

(assert (=> d!1058337 t!290882))

(declare-fun b_and!259407 () Bool)

(assert (= b_and!259397 (and (=> t!290882 result!249704) b_and!259407)))

(declare-fun t!290884 () Bool)

(declare-fun tb!204803 () Bool)

(assert (=> (and b!3589225 (= (toChars!7711 (transformation!5568 (rule!8284 token!511))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290884) tb!204803))

(declare-fun result!249706 () Bool)

(assert (= result!249706 result!249698))

(assert (=> d!1058337 t!290884))

(declare-fun b_and!259409 () Bool)

(assert (= b_and!259401 (and (=> t!290884 result!249706) b_and!259409)))

(declare-fun m!4083195 () Bool)

(assert (=> d!1058337 m!4083195))

(declare-fun m!4083197 () Bool)

(assert (=> d!1058337 m!4083197))

(assert (=> b!3589235 d!1058337))

(declare-fun d!1058341 () Bool)

(assert (=> d!1058341 (= (get!12161 lt!1231058) (v!37436 lt!1231058))))

(assert (=> b!3589235 d!1058341))

(declare-fun d!1058343 () Bool)

(assert (=> d!1058343 (= (list!13872 lt!1231042) (list!13873 (c!621689 lt!1231042)))))

(declare-fun bs!570211 () Bool)

(assert (= bs!570211 d!1058343))

(declare-fun m!4083199 () Bool)

(assert (=> bs!570211 m!4083199))

(assert (=> b!3589224 d!1058343))

(declare-fun d!1058345 () Bool)

(assert (=> d!1058345 (isPrefix!2931 lt!1231051 (++!9384 lt!1231051 suffix!1395))))

(declare-fun lt!1231080 () Unit!53717)

(declare-fun choose!20883 (List!37844 List!37844) Unit!53717)

(assert (=> d!1058345 (= lt!1231080 (choose!20883 lt!1231051 suffix!1395))))

(assert (=> d!1058345 (= (lemmaConcatTwoListThenFirstIsPrefix!1852 lt!1231051 suffix!1395) lt!1231080)))

(declare-fun bs!570212 () Bool)

(assert (= bs!570212 d!1058345))

(assert (=> bs!570212 m!4083051))

(assert (=> bs!570212 m!4083051))

(declare-fun m!4083201 () Bool)

(assert (=> bs!570212 m!4083201))

(declare-fun m!4083203 () Bool)

(assert (=> bs!570212 m!4083203))

(assert (=> b!3589224 d!1058345))

(declare-fun d!1058347 () Bool)

(declare-fun e!2220873 () Bool)

(assert (=> d!1058347 e!2220873))

(declare-fun res!1448863 () Bool)

(assert (=> d!1058347 (=> (not res!1448863) (not e!2220873))))

(assert (=> d!1058347 (= res!1448863 (isDefined!5998 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 (_1!21940 lt!1231045))))))))

(declare-fun lt!1231083 () Unit!53717)

(declare-fun choose!20884 (LexerInterface!5157 List!37845 List!37844 Token!10502) Unit!53717)

(assert (=> d!1058347 (= lt!1231083 (choose!20884 thiss!23823 rules!3307 lt!1231048 (_1!21940 lt!1231045)))))

(assert (=> d!1058347 (rulesInvariant!4554 thiss!23823 rules!3307)))

(assert (=> d!1058347 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1174 thiss!23823 rules!3307 lt!1231048 (_1!21940 lt!1231045)) lt!1231083)))

(declare-fun b!3589405 () Bool)

(declare-fun res!1448864 () Bool)

(assert (=> b!3589405 (=> (not res!1448864) (not e!2220873))))

(assert (=> b!3589405 (= res!1448864 (matchR!4896 (regex!5568 (get!12161 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))) (list!13872 (charsOf!3582 (_1!21940 lt!1231045)))))))

(declare-fun b!3589406 () Bool)

(assert (=> b!3589406 (= e!2220873 (= (rule!8284 (_1!21940 lt!1231045)) (get!12161 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))))))

(assert (= (and d!1058347 res!1448863) b!3589405))

(assert (= (and b!3589405 res!1448864) b!3589406))

(assert (=> d!1058347 m!4083035))

(assert (=> d!1058347 m!4083035))

(declare-fun m!4083205 () Bool)

(assert (=> d!1058347 m!4083205))

(declare-fun m!4083207 () Bool)

(assert (=> d!1058347 m!4083207))

(assert (=> d!1058347 m!4083095))

(assert (=> b!3589405 m!4083043))

(assert (=> b!3589405 m!4083081))

(assert (=> b!3589405 m!4083035))

(assert (=> b!3589405 m!4083043))

(assert (=> b!3589405 m!4083035))

(declare-fun m!4083209 () Bool)

(assert (=> b!3589405 m!4083209))

(assert (=> b!3589405 m!4083081))

(declare-fun m!4083211 () Bool)

(assert (=> b!3589405 m!4083211))

(assert (=> b!3589406 m!4083035))

(assert (=> b!3589406 m!4083035))

(assert (=> b!3589406 m!4083209))

(assert (=> b!3589224 d!1058347))

(declare-fun d!1058349 () Bool)

(declare-fun e!2220882 () Bool)

(assert (=> d!1058349 e!2220882))

(declare-fun res!1448875 () Bool)

(assert (=> d!1058349 (=> res!1448875 e!2220882)))

(declare-fun lt!1231086 () Bool)

(assert (=> d!1058349 (= res!1448875 (not lt!1231086))))

(declare-fun e!2220881 () Bool)

(assert (=> d!1058349 (= lt!1231086 e!2220881)))

(declare-fun res!1448876 () Bool)

(assert (=> d!1058349 (=> res!1448876 e!2220881)))

(assert (=> d!1058349 (= res!1448876 ((_ is Nil!37720) lt!1231051))))

(assert (=> d!1058349 (= (isPrefix!2931 lt!1231051 lt!1231048) lt!1231086)))

(declare-fun b!3589416 () Bool)

(declare-fun res!1448874 () Bool)

(declare-fun e!2220880 () Bool)

(assert (=> b!3589416 (=> (not res!1448874) (not e!2220880))))

(assert (=> b!3589416 (= res!1448874 (= (head!7490 lt!1231051) (head!7490 lt!1231048)))))

(declare-fun b!3589417 () Bool)

(assert (=> b!3589417 (= e!2220880 (isPrefix!2931 (tail!5561 lt!1231051) (tail!5561 lt!1231048)))))

(declare-fun b!3589418 () Bool)

(declare-fun size!28734 (List!37844) Int)

(assert (=> b!3589418 (= e!2220882 (>= (size!28734 lt!1231048) (size!28734 lt!1231051)))))

(declare-fun b!3589415 () Bool)

(assert (=> b!3589415 (= e!2220881 e!2220880)))

(declare-fun res!1448873 () Bool)

(assert (=> b!3589415 (=> (not res!1448873) (not e!2220880))))

(assert (=> b!3589415 (= res!1448873 (not ((_ is Nil!37720) lt!1231048)))))

(assert (= (and d!1058349 (not res!1448876)) b!3589415))

(assert (= (and b!3589415 res!1448873) b!3589416))

(assert (= (and b!3589416 res!1448874) b!3589417))

(assert (= (and d!1058349 (not res!1448875)) b!3589418))

(declare-fun m!4083213 () Bool)

(assert (=> b!3589416 m!4083213))

(declare-fun m!4083215 () Bool)

(assert (=> b!3589416 m!4083215))

(declare-fun m!4083217 () Bool)

(assert (=> b!3589417 m!4083217))

(declare-fun m!4083219 () Bool)

(assert (=> b!3589417 m!4083219))

(assert (=> b!3589417 m!4083217))

(assert (=> b!3589417 m!4083219))

(declare-fun m!4083221 () Bool)

(assert (=> b!3589417 m!4083221))

(declare-fun m!4083223 () Bool)

(assert (=> b!3589418 m!4083223))

(declare-fun m!4083225 () Bool)

(assert (=> b!3589418 m!4083225))

(assert (=> b!3589224 d!1058349))

(declare-fun d!1058351 () Bool)

(declare-fun e!2220887 () Bool)

(assert (=> d!1058351 e!2220887))

(declare-fun res!1448882 () Bool)

(assert (=> d!1058351 (=> (not res!1448882) (not e!2220887))))

(declare-fun lt!1231089 () List!37844)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5364 (List!37844) (InoxSet C!20840))

(assert (=> d!1058351 (= res!1448882 (= (content!5364 lt!1231089) ((_ map or) (content!5364 lt!1231051) (content!5364 suffix!1395))))))

(declare-fun e!2220888 () List!37844)

(assert (=> d!1058351 (= lt!1231089 e!2220888)))

(declare-fun c!621729 () Bool)

(assert (=> d!1058351 (= c!621729 ((_ is Nil!37720) lt!1231051))))

(assert (=> d!1058351 (= (++!9384 lt!1231051 suffix!1395) lt!1231089)))

(declare-fun b!3589427 () Bool)

(assert (=> b!3589427 (= e!2220888 suffix!1395)))

(declare-fun b!3589428 () Bool)

(assert (=> b!3589428 (= e!2220888 (Cons!37720 (h!43140 lt!1231051) (++!9384 (t!290875 lt!1231051) suffix!1395)))))

(declare-fun b!3589430 () Bool)

(assert (=> b!3589430 (= e!2220887 (or (not (= suffix!1395 Nil!37720)) (= lt!1231089 lt!1231051)))))

(declare-fun b!3589429 () Bool)

(declare-fun res!1448881 () Bool)

(assert (=> b!3589429 (=> (not res!1448881) (not e!2220887))))

(assert (=> b!3589429 (= res!1448881 (= (size!28734 lt!1231089) (+ (size!28734 lt!1231051) (size!28734 suffix!1395))))))

(assert (= (and d!1058351 c!621729) b!3589427))

(assert (= (and d!1058351 (not c!621729)) b!3589428))

(assert (= (and d!1058351 res!1448882) b!3589429))

(assert (= (and b!3589429 res!1448881) b!3589430))

(declare-fun m!4083227 () Bool)

(assert (=> d!1058351 m!4083227))

(declare-fun m!4083229 () Bool)

(assert (=> d!1058351 m!4083229))

(declare-fun m!4083231 () Bool)

(assert (=> d!1058351 m!4083231))

(declare-fun m!4083233 () Bool)

(assert (=> b!3589428 m!4083233))

(declare-fun m!4083235 () Bool)

(assert (=> b!3589429 m!4083235))

(assert (=> b!3589429 m!4083225))

(declare-fun m!4083237 () Bool)

(assert (=> b!3589429 m!4083237))

(assert (=> b!3589224 d!1058351))

(declare-fun d!1058353 () Bool)

(assert (=> d!1058353 (isPrefix!2931 lt!1231055 (++!9384 lt!1231055 (_2!21940 lt!1231045)))))

(declare-fun lt!1231090 () Unit!53717)

(assert (=> d!1058353 (= lt!1231090 (choose!20883 lt!1231055 (_2!21940 lt!1231045)))))

(assert (=> d!1058353 (= (lemmaConcatTwoListThenFirstIsPrefix!1852 lt!1231055 (_2!21940 lt!1231045)) lt!1231090)))

(declare-fun bs!570213 () Bool)

(assert (= bs!570213 d!1058353))

(assert (=> bs!570213 m!4083025))

(assert (=> bs!570213 m!4083025))

(assert (=> bs!570213 m!4083027))

(declare-fun m!4083239 () Bool)

(assert (=> bs!570213 m!4083239))

(assert (=> b!3589224 d!1058353))

(declare-fun b!3589449 () Bool)

(declare-fun res!1448898 () Bool)

(declare-fun e!2220897 () Bool)

(assert (=> b!3589449 (=> (not res!1448898) (not e!2220897))))

(declare-fun lt!1231102 () Option!7766)

(declare-fun apply!9075 (TokenValueInjection!11024 BalanceConc!22560) TokenValue!5798)

(assert (=> b!3589449 (= res!1448898 (= (value!179148 (_1!21940 (get!12160 lt!1231102))) (apply!9075 (transformation!5568 (rule!8284 (_1!21940 (get!12160 lt!1231102)))) (seqFromList!4121 (originalCharacters!6282 (_1!21940 (get!12160 lt!1231102)))))))))

(declare-fun b!3589450 () Bool)

(declare-fun res!1448901 () Bool)

(assert (=> b!3589450 (=> (not res!1448901) (not e!2220897))))

(assert (=> b!3589450 (= res!1448901 (= (++!9384 (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231102)))) (_2!21940 (get!12160 lt!1231102))) lt!1231048))))

(declare-fun b!3589451 () Bool)

(declare-fun e!2220896 () Option!7766)

(declare-fun call!259887 () Option!7766)

(assert (=> b!3589451 (= e!2220896 call!259887)))

(declare-fun b!3589452 () Bool)

(declare-fun lt!1231103 () Option!7766)

(declare-fun lt!1231105 () Option!7766)

(assert (=> b!3589452 (= e!2220896 (ite (and ((_ is None!7765) lt!1231103) ((_ is None!7765) lt!1231105)) None!7765 (ite ((_ is None!7765) lt!1231105) lt!1231103 (ite ((_ is None!7765) lt!1231103) lt!1231105 (ite (>= (size!28732 (_1!21940 (v!37435 lt!1231103))) (size!28732 (_1!21940 (v!37435 lt!1231105)))) lt!1231103 lt!1231105)))))))

(assert (=> b!3589452 (= lt!1231103 call!259887)))

(assert (=> b!3589452 (= lt!1231105 (maxPrefix!2691 thiss!23823 (t!290876 rules!3307) lt!1231048))))

(declare-fun bm!259882 () Bool)

(declare-fun maxPrefixOneRule!1839 (LexerInterface!5157 Rule!10936 List!37844) Option!7766)

(assert (=> bm!259882 (= call!259887 (maxPrefixOneRule!1839 thiss!23823 (h!43141 rules!3307) lt!1231048))))

(declare-fun b!3589453 () Bool)

(declare-fun res!1448897 () Bool)

(assert (=> b!3589453 (=> (not res!1448897) (not e!2220897))))

(assert (=> b!3589453 (= res!1448897 (< (size!28734 (_2!21940 (get!12160 lt!1231102))) (size!28734 lt!1231048)))))

(declare-fun b!3589454 () Bool)

(assert (=> b!3589454 (= e!2220897 (contains!7199 rules!3307 (rule!8284 (_1!21940 (get!12160 lt!1231102)))))))

(declare-fun b!3589455 () Bool)

(declare-fun e!2220895 () Bool)

(assert (=> b!3589455 (= e!2220895 e!2220897)))

(declare-fun res!1448902 () Bool)

(assert (=> b!3589455 (=> (not res!1448902) (not e!2220897))))

(assert (=> b!3589455 (= res!1448902 (isDefined!5999 lt!1231102))))

(declare-fun d!1058355 () Bool)

(assert (=> d!1058355 e!2220895))

(declare-fun res!1448899 () Bool)

(assert (=> d!1058355 (=> res!1448899 e!2220895)))

(declare-fun isEmpty!22229 (Option!7766) Bool)

(assert (=> d!1058355 (= res!1448899 (isEmpty!22229 lt!1231102))))

(assert (=> d!1058355 (= lt!1231102 e!2220896)))

(declare-fun c!621732 () Bool)

(assert (=> d!1058355 (= c!621732 (and ((_ is Cons!37721) rules!3307) ((_ is Nil!37721) (t!290876 rules!3307))))))

(declare-fun lt!1231101 () Unit!53717)

(declare-fun lt!1231104 () Unit!53717)

(assert (=> d!1058355 (= lt!1231101 lt!1231104)))

(assert (=> d!1058355 (isPrefix!2931 lt!1231048 lt!1231048)))

(declare-fun lemmaIsPrefixRefl!1880 (List!37844 List!37844) Unit!53717)

(assert (=> d!1058355 (= lt!1231104 (lemmaIsPrefixRefl!1880 lt!1231048 lt!1231048))))

(assert (=> d!1058355 (rulesValidInductive!1943 thiss!23823 rules!3307)))

(assert (=> d!1058355 (= (maxPrefix!2691 thiss!23823 rules!3307 lt!1231048) lt!1231102)))

(declare-fun b!3589456 () Bool)

(declare-fun res!1448900 () Bool)

(assert (=> b!3589456 (=> (not res!1448900) (not e!2220897))))

(assert (=> b!3589456 (= res!1448900 (= (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231102)))) (originalCharacters!6282 (_1!21940 (get!12160 lt!1231102)))))))

(declare-fun b!3589457 () Bool)

(declare-fun res!1448903 () Bool)

(assert (=> b!3589457 (=> (not res!1448903) (not e!2220897))))

(assert (=> b!3589457 (= res!1448903 (matchR!4896 (regex!5568 (rule!8284 (_1!21940 (get!12160 lt!1231102)))) (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231102))))))))

(assert (= (and d!1058355 c!621732) b!3589451))

(assert (= (and d!1058355 (not c!621732)) b!3589452))

(assert (= (or b!3589451 b!3589452) bm!259882))

(assert (= (and d!1058355 (not res!1448899)) b!3589455))

(assert (= (and b!3589455 res!1448902) b!3589456))

(assert (= (and b!3589456 res!1448900) b!3589453))

(assert (= (and b!3589453 res!1448897) b!3589450))

(assert (= (and b!3589450 res!1448901) b!3589449))

(assert (= (and b!3589449 res!1448898) b!3589457))

(assert (= (and b!3589457 res!1448903) b!3589454))

(declare-fun m!4083241 () Bool)

(assert (=> b!3589450 m!4083241))

(declare-fun m!4083243 () Bool)

(assert (=> b!3589450 m!4083243))

(assert (=> b!3589450 m!4083243))

(declare-fun m!4083245 () Bool)

(assert (=> b!3589450 m!4083245))

(assert (=> b!3589450 m!4083245))

(declare-fun m!4083247 () Bool)

(assert (=> b!3589450 m!4083247))

(declare-fun m!4083249 () Bool)

(assert (=> d!1058355 m!4083249))

(declare-fun m!4083251 () Bool)

(assert (=> d!1058355 m!4083251))

(declare-fun m!4083253 () Bool)

(assert (=> d!1058355 m!4083253))

(assert (=> d!1058355 m!4083009))

(assert (=> b!3589457 m!4083241))

(assert (=> b!3589457 m!4083243))

(assert (=> b!3589457 m!4083243))

(assert (=> b!3589457 m!4083245))

(assert (=> b!3589457 m!4083245))

(declare-fun m!4083255 () Bool)

(assert (=> b!3589457 m!4083255))

(assert (=> b!3589454 m!4083241))

(declare-fun m!4083257 () Bool)

(assert (=> b!3589454 m!4083257))

(declare-fun m!4083259 () Bool)

(assert (=> bm!259882 m!4083259))

(assert (=> b!3589456 m!4083241))

(assert (=> b!3589456 m!4083243))

(assert (=> b!3589456 m!4083243))

(assert (=> b!3589456 m!4083245))

(assert (=> b!3589449 m!4083241))

(declare-fun m!4083261 () Bool)

(assert (=> b!3589449 m!4083261))

(assert (=> b!3589449 m!4083261))

(declare-fun m!4083263 () Bool)

(assert (=> b!3589449 m!4083263))

(declare-fun m!4083265 () Bool)

(assert (=> b!3589452 m!4083265))

(declare-fun m!4083267 () Bool)

(assert (=> b!3589455 m!4083267))

(assert (=> b!3589453 m!4083241))

(declare-fun m!4083269 () Bool)

(assert (=> b!3589453 m!4083269))

(assert (=> b!3589453 m!4083223))

(assert (=> b!3589224 d!1058355))

(assert (=> b!3589224 d!1058337))

(declare-fun d!1058357 () Bool)

(assert (=> d!1058357 (= (get!12160 lt!1231047) (v!37435 lt!1231047))))

(assert (=> b!3589224 d!1058357))

(declare-fun d!1058359 () Bool)

(declare-fun isEmpty!22230 (Option!7767) Bool)

(assert (=> d!1058359 (= (isDefined!5998 lt!1231058) (not (isEmpty!22230 lt!1231058)))))

(declare-fun bs!570214 () Bool)

(assert (= bs!570214 d!1058359))

(declare-fun m!4083271 () Bool)

(assert (=> bs!570214 m!4083271))

(assert (=> b!3589224 d!1058359))

(declare-fun d!1058361 () Bool)

(declare-fun e!2220898 () Bool)

(assert (=> d!1058361 e!2220898))

(declare-fun res!1448905 () Bool)

(assert (=> d!1058361 (=> (not res!1448905) (not e!2220898))))

(declare-fun lt!1231106 () List!37844)

(assert (=> d!1058361 (= res!1448905 (= (content!5364 lt!1231106) ((_ map or) (content!5364 lt!1231055) (content!5364 (_2!21940 lt!1231045)))))))

(declare-fun e!2220899 () List!37844)

(assert (=> d!1058361 (= lt!1231106 e!2220899)))

(declare-fun c!621733 () Bool)

(assert (=> d!1058361 (= c!621733 ((_ is Nil!37720) lt!1231055))))

(assert (=> d!1058361 (= (++!9384 lt!1231055 (_2!21940 lt!1231045)) lt!1231106)))

(declare-fun b!3589458 () Bool)

(assert (=> b!3589458 (= e!2220899 (_2!21940 lt!1231045))))

(declare-fun b!3589459 () Bool)

(assert (=> b!3589459 (= e!2220899 (Cons!37720 (h!43140 lt!1231055) (++!9384 (t!290875 lt!1231055) (_2!21940 lt!1231045))))))

(declare-fun b!3589461 () Bool)

(assert (=> b!3589461 (= e!2220898 (or (not (= (_2!21940 lt!1231045) Nil!37720)) (= lt!1231106 lt!1231055)))))

(declare-fun b!3589460 () Bool)

(declare-fun res!1448904 () Bool)

(assert (=> b!3589460 (=> (not res!1448904) (not e!2220898))))

(assert (=> b!3589460 (= res!1448904 (= (size!28734 lt!1231106) (+ (size!28734 lt!1231055) (size!28734 (_2!21940 lt!1231045)))))))

(assert (= (and d!1058361 c!621733) b!3589458))

(assert (= (and d!1058361 (not c!621733)) b!3589459))

(assert (= (and d!1058361 res!1448905) b!3589460))

(assert (= (and b!3589460 res!1448904) b!3589461))

(declare-fun m!4083273 () Bool)

(assert (=> d!1058361 m!4083273))

(declare-fun m!4083275 () Bool)

(assert (=> d!1058361 m!4083275))

(declare-fun m!4083277 () Bool)

(assert (=> d!1058361 m!4083277))

(declare-fun m!4083279 () Bool)

(assert (=> b!3589459 m!4083279))

(declare-fun m!4083281 () Bool)

(assert (=> b!3589460 m!4083281))

(declare-fun m!4083283 () Bool)

(assert (=> b!3589460 m!4083283))

(declare-fun m!4083285 () Bool)

(assert (=> b!3589460 m!4083285))

(assert (=> b!3589224 d!1058361))

(declare-fun b!3589489 () Bool)

(declare-fun e!2220917 () Unit!53717)

(declare-fun Unit!53720 () Unit!53717)

(assert (=> b!3589489 (= e!2220917 Unit!53720)))

(declare-fun b!3589486 () Bool)

(declare-fun res!1448914 () Bool)

(declare-fun e!2220918 () Bool)

(assert (=> b!3589486 (=> (not res!1448914) (not e!2220918))))

(declare-fun lt!1231149 () Token!10502)

(assert (=> b!3589486 (= res!1448914 (matchR!4896 (regex!5568 (get!12161 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 lt!1231149))))) (list!13872 (charsOf!3582 lt!1231149))))))

(declare-fun b!3589487 () Bool)

(assert (=> b!3589487 (= e!2220918 (= (rule!8284 lt!1231149) (get!12161 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 lt!1231149))))))))

(declare-fun d!1058363 () Bool)

(assert (=> d!1058363 (isDefined!5999 (maxPrefix!2691 thiss!23823 rules!3307 (++!9384 lt!1231051 suffix!1395)))))

(declare-fun lt!1231147 () Unit!53717)

(assert (=> d!1058363 (= lt!1231147 e!2220917)))

(declare-fun c!621736 () Bool)

(assert (=> d!1058363 (= c!621736 (isEmpty!22229 (maxPrefix!2691 thiss!23823 rules!3307 (++!9384 lt!1231051 suffix!1395))))))

(declare-fun lt!1231144 () Unit!53717)

(declare-fun lt!1231146 () Unit!53717)

(assert (=> d!1058363 (= lt!1231144 lt!1231146)))

(assert (=> d!1058363 e!2220918))

(declare-fun res!1448915 () Bool)

(assert (=> d!1058363 (=> (not res!1448915) (not e!2220918))))

(assert (=> d!1058363 (= res!1448915 (isDefined!5998 (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 lt!1231149)))))))

(assert (=> d!1058363 (= lt!1231146 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1174 thiss!23823 rules!3307 lt!1231051 lt!1231149))))

(declare-fun lt!1231148 () Unit!53717)

(declare-fun lt!1231156 () Unit!53717)

(assert (=> d!1058363 (= lt!1231148 lt!1231156)))

(declare-fun lt!1231154 () List!37844)

(assert (=> d!1058363 (isPrefix!2931 lt!1231154 (++!9384 lt!1231051 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!413 (List!37844 List!37844 List!37844) Unit!53717)

(assert (=> d!1058363 (= lt!1231156 (lemmaPrefixStaysPrefixWhenAddingToSuffix!413 lt!1231154 lt!1231051 suffix!1395))))

(assert (=> d!1058363 (= lt!1231154 (list!13872 (charsOf!3582 lt!1231149)))))

(declare-fun lt!1231150 () Unit!53717)

(declare-fun lt!1231157 () Unit!53717)

(assert (=> d!1058363 (= lt!1231150 lt!1231157)))

(declare-fun lt!1231159 () List!37844)

(declare-fun lt!1231145 () List!37844)

(assert (=> d!1058363 (isPrefix!2931 lt!1231159 (++!9384 lt!1231159 lt!1231145))))

(assert (=> d!1058363 (= lt!1231157 (lemmaConcatTwoListThenFirstIsPrefix!1852 lt!1231159 lt!1231145))))

(assert (=> d!1058363 (= lt!1231145 (_2!21940 (get!12160 (maxPrefix!2691 thiss!23823 rules!3307 lt!1231051))))))

(assert (=> d!1058363 (= lt!1231159 (list!13872 (charsOf!3582 lt!1231149)))))

(declare-datatypes ((List!37848 0))(
  ( (Nil!37724) (Cons!37724 (h!43144 Token!10502) (t!290979 List!37848)) )
))
(declare-fun head!7491 (List!37848) Token!10502)

(declare-datatypes ((IArray!22953 0))(
  ( (IArray!22954 (innerList!11534 List!37848)) )
))
(declare-datatypes ((Conc!11474 0))(
  ( (Node!11474 (left!29480 Conc!11474) (right!29810 Conc!11474) (csize!23178 Int) (cheight!11685 Int)) (Leaf!17869 (xs!14676 IArray!22953) (csize!23179 Int)) (Empty!11474) )
))
(declare-datatypes ((BalanceConc!22562 0))(
  ( (BalanceConc!22563 (c!621800 Conc!11474)) )
))
(declare-fun list!13875 (BalanceConc!22562) List!37848)

(declare-datatypes ((tuple2!37614 0))(
  ( (tuple2!37615 (_1!21941 BalanceConc!22562) (_2!21941 BalanceConc!22560)) )
))
(declare-fun lex!2445 (LexerInterface!5157 List!37845 BalanceConc!22560) tuple2!37614)

(assert (=> d!1058363 (= lt!1231149 (head!7491 (list!13875 (_1!21941 (lex!2445 thiss!23823 rules!3307 (seqFromList!4121 lt!1231051))))))))

(assert (=> d!1058363 (not (isEmpty!22227 rules!3307))))

(assert (=> d!1058363 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!837 thiss!23823 rules!3307 lt!1231051 suffix!1395) lt!1231147)))

(declare-fun b!3589488 () Bool)

(declare-fun Unit!53721 () Unit!53717)

(assert (=> b!3589488 (= e!2220917 Unit!53721)))

(declare-fun lt!1231158 () List!37844)

(assert (=> b!3589488 (= lt!1231158 (++!9384 lt!1231051 suffix!1395))))

(declare-fun lt!1231153 () Unit!53717)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!449 (LexerInterface!5157 Rule!10936 List!37845 List!37844) Unit!53717)

(assert (=> b!3589488 (= lt!1231153 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!449 thiss!23823 (rule!8284 lt!1231149) rules!3307 lt!1231158))))

(assert (=> b!3589488 (isEmpty!22229 (maxPrefixOneRule!1839 thiss!23823 (rule!8284 lt!1231149) lt!1231158))))

(declare-fun lt!1231152 () Unit!53717)

(assert (=> b!3589488 (= lt!1231152 lt!1231153)))

(declare-fun lt!1231160 () List!37844)

(assert (=> b!3589488 (= lt!1231160 (list!13872 (charsOf!3582 lt!1231149)))))

(declare-fun lt!1231155 () Unit!53717)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!437 (LexerInterface!5157 Rule!10936 List!37844 List!37844) Unit!53717)

(assert (=> b!3589488 (= lt!1231155 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!437 thiss!23823 (rule!8284 lt!1231149) lt!1231160 (++!9384 lt!1231051 suffix!1395)))))

(assert (=> b!3589488 (not (matchR!4896 (regex!5568 (rule!8284 lt!1231149)) lt!1231160))))

(declare-fun lt!1231151 () Unit!53717)

(assert (=> b!3589488 (= lt!1231151 lt!1231155)))

(assert (=> b!3589488 false))

(assert (= (and d!1058363 res!1448915) b!3589486))

(assert (= (and b!3589486 res!1448914) b!3589487))

(assert (= (and d!1058363 c!621736) b!3589488))

(assert (= (and d!1058363 (not c!621736)) b!3589489))

(declare-fun m!4083303 () Bool)

(assert (=> b!3589486 m!4083303))

(declare-fun m!4083305 () Bool)

(assert (=> b!3589486 m!4083305))

(declare-fun m!4083307 () Bool)

(assert (=> b!3589486 m!4083307))

(assert (=> b!3589486 m!4083307))

(declare-fun m!4083309 () Bool)

(assert (=> b!3589486 m!4083309))

(assert (=> b!3589486 m!4083303))

(declare-fun m!4083311 () Bool)

(assert (=> b!3589486 m!4083311))

(assert (=> b!3589486 m!4083305))

(assert (=> b!3589487 m!4083303))

(assert (=> b!3589487 m!4083303))

(assert (=> b!3589487 m!4083311))

(assert (=> d!1058363 m!4083305))

(assert (=> d!1058363 m!4083303))

(assert (=> d!1058363 m!4083305))

(assert (=> d!1058363 m!4083307))

(declare-fun m!4083313 () Bool)

(assert (=> d!1058363 m!4083313))

(declare-fun m!4083315 () Bool)

(assert (=> d!1058363 m!4083315))

(assert (=> d!1058363 m!4083071))

(declare-fun m!4083317 () Bool)

(assert (=> d!1058363 m!4083317))

(declare-fun m!4083319 () Bool)

(assert (=> d!1058363 m!4083319))

(assert (=> d!1058363 m!4083071))

(assert (=> d!1058363 m!4083051))

(declare-fun m!4083321 () Bool)

(assert (=> d!1058363 m!4083321))

(declare-fun m!4083323 () Bool)

(assert (=> d!1058363 m!4083323))

(assert (=> d!1058363 m!4083051))

(assert (=> d!1058363 m!4083303))

(declare-fun m!4083325 () Bool)

(assert (=> d!1058363 m!4083325))

(assert (=> d!1058363 m!4083315))

(declare-fun m!4083329 () Bool)

(assert (=> d!1058363 m!4083329))

(assert (=> d!1058363 m!4083051))

(declare-fun m!4083335 () Bool)

(assert (=> d!1058363 m!4083335))

(assert (=> d!1058363 m!4083321))

(declare-fun m!4083337 () Bool)

(assert (=> d!1058363 m!4083337))

(assert (=> d!1058363 m!4083321))

(declare-fun m!4083339 () Bool)

(assert (=> d!1058363 m!4083339))

(declare-fun m!4083341 () Bool)

(assert (=> d!1058363 m!4083341))

(assert (=> d!1058363 m!4083341))

(declare-fun m!4083343 () Bool)

(assert (=> d!1058363 m!4083343))

(assert (=> d!1058363 m!4083097))

(assert (=> d!1058363 m!4083313))

(declare-fun m!4083345 () Bool)

(assert (=> d!1058363 m!4083345))

(declare-fun m!4083347 () Bool)

(assert (=> d!1058363 m!4083347))

(assert (=> b!3589488 m!4083051))

(assert (=> b!3589488 m!4083305))

(declare-fun m!4083349 () Bool)

(assert (=> b!3589488 m!4083349))

(assert (=> b!3589488 m!4083305))

(assert (=> b!3589488 m!4083307))

(declare-fun m!4083351 () Bool)

(assert (=> b!3589488 m!4083351))

(assert (=> b!3589488 m!4083051))

(declare-fun m!4083353 () Bool)

(assert (=> b!3589488 m!4083353))

(declare-fun m!4083355 () Bool)

(assert (=> b!3589488 m!4083355))

(assert (=> b!3589488 m!4083351))

(declare-fun m!4083357 () Bool)

(assert (=> b!3589488 m!4083357))

(assert (=> b!3589224 d!1058363))

(declare-fun b!3589527 () Bool)

(declare-fun lt!1231173 () Unit!53717)

(declare-fun lt!1231174 () Unit!53717)

(assert (=> b!3589527 (= lt!1231173 lt!1231174)))

(assert (=> b!3589527 (rulesInvariant!4554 thiss!23823 (t!290876 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!493 (LexerInterface!5157 Rule!10936 List!37845) Unit!53717)

(assert (=> b!3589527 (= lt!1231174 (lemmaInvariantOnRulesThenOnTail!493 thiss!23823 (h!43141 rules!3307) (t!290876 rules!3307)))))

(declare-fun e!2220945 () Option!7767)

(assert (=> b!3589527 (= e!2220945 (getRuleFromTag!1174 thiss!23823 (t!290876 rules!3307) (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun b!3589528 () Bool)

(declare-fun e!2220942 () Option!7767)

(assert (=> b!3589528 (= e!2220942 e!2220945)))

(declare-fun c!621745 () Bool)

(assert (=> b!3589528 (= c!621745 (and ((_ is Cons!37721) rules!3307) (not (= (tag!6238 (h!43141 rules!3307)) (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))))))

(declare-fun b!3589529 () Bool)

(declare-fun e!2220943 () Bool)

(declare-fun lt!1231172 () Option!7767)

(assert (=> b!3589529 (= e!2220943 (= (tag!6238 (get!12161 lt!1231172)) (tag!6238 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun b!3589530 () Bool)

(assert (=> b!3589530 (= e!2220942 (Some!7766 (h!43141 rules!3307)))))

(declare-fun d!1058371 () Bool)

(declare-fun e!2220944 () Bool)

(assert (=> d!1058371 e!2220944))

(declare-fun res!1448933 () Bool)

(assert (=> d!1058371 (=> res!1448933 e!2220944)))

(assert (=> d!1058371 (= res!1448933 (isEmpty!22230 lt!1231172))))

(assert (=> d!1058371 (= lt!1231172 e!2220942)))

(declare-fun c!621744 () Bool)

(assert (=> d!1058371 (= c!621744 (and ((_ is Cons!37721) rules!3307) (= (tag!6238 (h!43141 rules!3307)) (tag!6238 (rule!8284 (_1!21940 lt!1231045))))))))

(assert (=> d!1058371 (rulesInvariant!4554 thiss!23823 rules!3307)))

(assert (=> d!1058371 (= (getRuleFromTag!1174 thiss!23823 rules!3307 (tag!6238 (rule!8284 (_1!21940 lt!1231045)))) lt!1231172)))

(declare-fun b!3589531 () Bool)

(assert (=> b!3589531 (= e!2220944 e!2220943)))

(declare-fun res!1448932 () Bool)

(assert (=> b!3589531 (=> (not res!1448932) (not e!2220943))))

(assert (=> b!3589531 (= res!1448932 (contains!7199 rules!3307 (get!12161 lt!1231172)))))

(declare-fun b!3589532 () Bool)

(assert (=> b!3589532 (= e!2220945 None!7766)))

(assert (= (and d!1058371 c!621744) b!3589530))

(assert (= (and d!1058371 (not c!621744)) b!3589528))

(assert (= (and b!3589528 c!621745) b!3589527))

(assert (= (and b!3589528 (not c!621745)) b!3589532))

(assert (= (and d!1058371 (not res!1448933)) b!3589531))

(assert (= (and b!3589531 res!1448932) b!3589529))

(declare-fun m!4083369 () Bool)

(assert (=> b!3589527 m!4083369))

(declare-fun m!4083371 () Bool)

(assert (=> b!3589527 m!4083371))

(declare-fun m!4083373 () Bool)

(assert (=> b!3589527 m!4083373))

(declare-fun m!4083375 () Bool)

(assert (=> b!3589529 m!4083375))

(declare-fun m!4083379 () Bool)

(assert (=> d!1058371 m!4083379))

(assert (=> d!1058371 m!4083095))

(assert (=> b!3589531 m!4083375))

(assert (=> b!3589531 m!4083375))

(declare-fun m!4083389 () Bool)

(assert (=> b!3589531 m!4083389))

(assert (=> b!3589224 d!1058371))

(declare-fun d!1058377 () Bool)

(declare-fun e!2220948 () Bool)

(assert (=> d!1058377 e!2220948))

(declare-fun res!1448936 () Bool)

(assert (=> d!1058377 (=> res!1448936 e!2220948)))

(declare-fun lt!1231175 () Bool)

(assert (=> d!1058377 (= res!1448936 (not lt!1231175))))

(declare-fun e!2220947 () Bool)

(assert (=> d!1058377 (= lt!1231175 e!2220947)))

(declare-fun res!1448937 () Bool)

(assert (=> d!1058377 (=> res!1448937 e!2220947)))

(assert (=> d!1058377 (= res!1448937 ((_ is Nil!37720) lt!1231055))))

(assert (=> d!1058377 (= (isPrefix!2931 lt!1231055 (++!9384 lt!1231055 (_2!21940 lt!1231045))) lt!1231175)))

(declare-fun b!3589534 () Bool)

(declare-fun res!1448935 () Bool)

(declare-fun e!2220946 () Bool)

(assert (=> b!3589534 (=> (not res!1448935) (not e!2220946))))

(assert (=> b!3589534 (= res!1448935 (= (head!7490 lt!1231055) (head!7490 (++!9384 lt!1231055 (_2!21940 lt!1231045)))))))

(declare-fun b!3589535 () Bool)

(assert (=> b!3589535 (= e!2220946 (isPrefix!2931 (tail!5561 lt!1231055) (tail!5561 (++!9384 lt!1231055 (_2!21940 lt!1231045)))))))

(declare-fun b!3589536 () Bool)

(assert (=> b!3589536 (= e!2220948 (>= (size!28734 (++!9384 lt!1231055 (_2!21940 lt!1231045))) (size!28734 lt!1231055)))))

(declare-fun b!3589533 () Bool)

(assert (=> b!3589533 (= e!2220947 e!2220946)))

(declare-fun res!1448934 () Bool)

(assert (=> b!3589533 (=> (not res!1448934) (not e!2220946))))

(assert (=> b!3589533 (= res!1448934 (not ((_ is Nil!37720) (++!9384 lt!1231055 (_2!21940 lt!1231045)))))))

(assert (= (and d!1058377 (not res!1448937)) b!3589533))

(assert (= (and b!3589533 res!1448934) b!3589534))

(assert (= (and b!3589534 res!1448935) b!3589535))

(assert (= (and d!1058377 (not res!1448936)) b!3589536))

(declare-fun m!4083397 () Bool)

(assert (=> b!3589534 m!4083397))

(assert (=> b!3589534 m!4083025))

(declare-fun m!4083399 () Bool)

(assert (=> b!3589534 m!4083399))

(declare-fun m!4083401 () Bool)

(assert (=> b!3589535 m!4083401))

(assert (=> b!3589535 m!4083025))

(declare-fun m!4083403 () Bool)

(assert (=> b!3589535 m!4083403))

(assert (=> b!3589535 m!4083401))

(assert (=> b!3589535 m!4083403))

(declare-fun m!4083405 () Bool)

(assert (=> b!3589535 m!4083405))

(assert (=> b!3589536 m!4083025))

(declare-fun m!4083407 () Bool)

(assert (=> b!3589536 m!4083407))

(assert (=> b!3589536 m!4083283))

(assert (=> b!3589224 d!1058377))

(declare-fun d!1058381 () Bool)

(declare-fun e!2220951 () Bool)

(assert (=> d!1058381 e!2220951))

(declare-fun res!1448940 () Bool)

(assert (=> d!1058381 (=> res!1448940 e!2220951)))

(declare-fun lt!1231176 () Bool)

(assert (=> d!1058381 (= res!1448940 (not lt!1231176))))

(declare-fun e!2220950 () Bool)

(assert (=> d!1058381 (= lt!1231176 e!2220950)))

(declare-fun res!1448941 () Bool)

(assert (=> d!1058381 (=> res!1448941 e!2220950)))

(assert (=> d!1058381 (= res!1448941 ((_ is Nil!37720) lt!1231055))))

(assert (=> d!1058381 (= (isPrefix!2931 lt!1231055 lt!1231048) lt!1231176)))

(declare-fun b!3589538 () Bool)

(declare-fun res!1448939 () Bool)

(declare-fun e!2220949 () Bool)

(assert (=> b!3589538 (=> (not res!1448939) (not e!2220949))))

(assert (=> b!3589538 (= res!1448939 (= (head!7490 lt!1231055) (head!7490 lt!1231048)))))

(declare-fun b!3589539 () Bool)

(assert (=> b!3589539 (= e!2220949 (isPrefix!2931 (tail!5561 lt!1231055) (tail!5561 lt!1231048)))))

(declare-fun b!3589540 () Bool)

(assert (=> b!3589540 (= e!2220951 (>= (size!28734 lt!1231048) (size!28734 lt!1231055)))))

(declare-fun b!3589537 () Bool)

(assert (=> b!3589537 (= e!2220950 e!2220949)))

(declare-fun res!1448938 () Bool)

(assert (=> b!3589537 (=> (not res!1448938) (not e!2220949))))

(assert (=> b!3589537 (= res!1448938 (not ((_ is Nil!37720) lt!1231048)))))

(assert (= (and d!1058381 (not res!1448941)) b!3589537))

(assert (= (and b!3589537 res!1448938) b!3589538))

(assert (= (and b!3589538 res!1448939) b!3589539))

(assert (= (and d!1058381 (not res!1448940)) b!3589540))

(assert (=> b!3589538 m!4083397))

(assert (=> b!3589538 m!4083215))

(assert (=> b!3589539 m!4083401))

(assert (=> b!3589539 m!4083219))

(assert (=> b!3589539 m!4083401))

(assert (=> b!3589539 m!4083219))

(declare-fun m!4083409 () Bool)

(assert (=> b!3589539 m!4083409))

(assert (=> b!3589540 m!4083223))

(assert (=> b!3589540 m!4083283))

(assert (=> b!3589224 d!1058381))

(declare-fun d!1058383 () Bool)

(assert (=> d!1058383 (= (isEmpty!22226 suffix!1395) ((_ is Nil!37720) suffix!1395))))

(assert (=> b!3589226 d!1058383))

(declare-fun d!1058385 () Bool)

(assert (=> d!1058385 (= (inv!51054 (tag!6238 (h!43141 rules!3307))) (= (mod (str.len (value!179122 (tag!6238 (h!43141 rules!3307)))) 2) 0))))

(assert (=> b!3589236 d!1058385))

(declare-fun d!1058387 () Bool)

(declare-fun res!1448946 () Bool)

(declare-fun e!2220954 () Bool)

(assert (=> d!1058387 (=> (not res!1448946) (not e!2220954))))

(assert (=> d!1058387 (= res!1448946 (semiInverseModEq!2361 (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toValue!7852 (transformation!5568 (h!43141 rules!3307)))))))

(assert (=> d!1058387 (= (inv!51058 (transformation!5568 (h!43141 rules!3307))) e!2220954)))

(declare-fun b!3589545 () Bool)

(assert (=> b!3589545 (= e!2220954 (equivClasses!2260 (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toValue!7852 (transformation!5568 (h!43141 rules!3307)))))))

(assert (= (and d!1058387 res!1448946) b!3589545))

(declare-fun m!4083411 () Bool)

(assert (=> d!1058387 m!4083411))

(declare-fun m!4083413 () Bool)

(assert (=> b!3589545 m!4083413))

(assert (=> b!3589236 d!1058387))

(declare-fun d!1058389 () Bool)

(declare-fun c!621751 () Bool)

(assert (=> d!1058389 (= c!621751 ((_ is IntegerValue!17394) (value!179148 token!511)))))

(declare-fun e!2220963 () Bool)

(assert (=> d!1058389 (= (inv!21 (value!179148 token!511)) e!2220963)))

(declare-fun b!3589558 () Bool)

(declare-fun e!2220962 () Bool)

(declare-fun inv!17 (TokenValue!5798) Bool)

(assert (=> b!3589558 (= e!2220962 (inv!17 (value!179148 token!511)))))

(declare-fun b!3589559 () Bool)

(declare-fun res!1448951 () Bool)

(declare-fun e!2220964 () Bool)

(assert (=> b!3589559 (=> res!1448951 e!2220964)))

(assert (=> b!3589559 (= res!1448951 (not ((_ is IntegerValue!17396) (value!179148 token!511))))))

(assert (=> b!3589559 (= e!2220962 e!2220964)))

(declare-fun b!3589560 () Bool)

(assert (=> b!3589560 (= e!2220963 e!2220962)))

(declare-fun c!621750 () Bool)

(assert (=> b!3589560 (= c!621750 ((_ is IntegerValue!17395) (value!179148 token!511)))))

(declare-fun b!3589561 () Bool)

(declare-fun inv!16 (TokenValue!5798) Bool)

(assert (=> b!3589561 (= e!2220963 (inv!16 (value!179148 token!511)))))

(declare-fun b!3589562 () Bool)

(declare-fun inv!15 (TokenValue!5798) Bool)

(assert (=> b!3589562 (= e!2220964 (inv!15 (value!179148 token!511)))))

(assert (= (and d!1058389 c!621751) b!3589561))

(assert (= (and d!1058389 (not c!621751)) b!3589560))

(assert (= (and b!3589560 c!621750) b!3589558))

(assert (= (and b!3589560 (not c!621750)) b!3589559))

(assert (= (and b!3589559 (not res!1448951)) b!3589562))

(declare-fun m!4083417 () Bool)

(assert (=> b!3589558 m!4083417))

(declare-fun m!4083419 () Bool)

(assert (=> b!3589561 m!4083419))

(declare-fun m!4083421 () Bool)

(assert (=> b!3589562 m!4083421))

(assert (=> b!3589227 d!1058389))

(declare-fun bm!259884 () Bool)

(declare-fun call!259889 () Bool)

(assert (=> bm!259884 (= call!259889 (isEmpty!22226 lt!1231055))))

(declare-fun d!1058395 () Bool)

(declare-fun e!2220969 () Bool)

(assert (=> d!1058395 e!2220969))

(declare-fun c!621754 () Bool)

(assert (=> d!1058395 (= c!621754 ((_ is EmptyExpr!10327) (regex!5568 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun lt!1231180 () Bool)

(declare-fun e!2220971 () Bool)

(assert (=> d!1058395 (= lt!1231180 e!2220971)))

(declare-fun c!621752 () Bool)

(assert (=> d!1058395 (= c!621752 (isEmpty!22226 lt!1231055))))

(assert (=> d!1058395 (validRegex!4719 (regex!5568 (rule!8284 (_1!21940 lt!1231045))))))

(assert (=> d!1058395 (= (matchR!4896 (regex!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231055) lt!1231180)))

(declare-fun b!3589563 () Bool)

(assert (=> b!3589563 (= e!2220971 (matchR!4896 (derivativeStep!3112 (regex!5568 (rule!8284 (_1!21940 lt!1231045))) (head!7490 lt!1231055)) (tail!5561 lt!1231055)))))

(declare-fun b!3589564 () Bool)

(declare-fun res!1448953 () Bool)

(declare-fun e!2220967 () Bool)

(assert (=> b!3589564 (=> (not res!1448953) (not e!2220967))))

(assert (=> b!3589564 (= res!1448953 (not call!259889))))

(declare-fun b!3589565 () Bool)

(declare-fun e!2220965 () Bool)

(assert (=> b!3589565 (= e!2220965 (not (= (head!7490 lt!1231055) (c!621688 (regex!5568 (rule!8284 (_1!21940 lt!1231045)))))))))

(declare-fun b!3589566 () Bool)

(declare-fun res!1448958 () Bool)

(declare-fun e!2220968 () Bool)

(assert (=> b!3589566 (=> res!1448958 e!2220968)))

(assert (=> b!3589566 (= res!1448958 e!2220967)))

(declare-fun res!1448959 () Bool)

(assert (=> b!3589566 (=> (not res!1448959) (not e!2220967))))

(assert (=> b!3589566 (= res!1448959 lt!1231180)))

(declare-fun b!3589567 () Bool)

(assert (=> b!3589567 (= e!2220971 (nullable!3563 (regex!5568 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun b!3589568 () Bool)

(assert (=> b!3589568 (= e!2220967 (= (head!7490 lt!1231055) (c!621688 (regex!5568 (rule!8284 (_1!21940 lt!1231045))))))))

(declare-fun b!3589569 () Bool)

(declare-fun e!2220970 () Bool)

(assert (=> b!3589569 (= e!2220969 e!2220970)))

(declare-fun c!621753 () Bool)

(assert (=> b!3589569 (= c!621753 ((_ is EmptyLang!10327) (regex!5568 (rule!8284 (_1!21940 lt!1231045)))))))

(declare-fun b!3589570 () Bool)

(declare-fun res!1448952 () Bool)

(assert (=> b!3589570 (=> res!1448952 e!2220968)))

(assert (=> b!3589570 (= res!1448952 (not ((_ is ElementMatch!10327) (regex!5568 (rule!8284 (_1!21940 lt!1231045))))))))

(assert (=> b!3589570 (= e!2220970 e!2220968)))

(declare-fun b!3589571 () Bool)

(declare-fun res!1448954 () Bool)

(assert (=> b!3589571 (=> res!1448954 e!2220965)))

(assert (=> b!3589571 (= res!1448954 (not (isEmpty!22226 (tail!5561 lt!1231055))))))

(declare-fun b!3589572 () Bool)

(declare-fun e!2220966 () Bool)

(assert (=> b!3589572 (= e!2220966 e!2220965)))

(declare-fun res!1448957 () Bool)

(assert (=> b!3589572 (=> res!1448957 e!2220965)))

(assert (=> b!3589572 (= res!1448957 call!259889)))

(declare-fun b!3589573 () Bool)

(declare-fun res!1448955 () Bool)

(assert (=> b!3589573 (=> (not res!1448955) (not e!2220967))))

(assert (=> b!3589573 (= res!1448955 (isEmpty!22226 (tail!5561 lt!1231055)))))

(declare-fun b!3589574 () Bool)

(assert (=> b!3589574 (= e!2220970 (not lt!1231180))))

(declare-fun b!3589575 () Bool)

(assert (=> b!3589575 (= e!2220968 e!2220966)))

(declare-fun res!1448956 () Bool)

(assert (=> b!3589575 (=> (not res!1448956) (not e!2220966))))

(assert (=> b!3589575 (= res!1448956 (not lt!1231180))))

(declare-fun b!3589576 () Bool)

(assert (=> b!3589576 (= e!2220969 (= lt!1231180 call!259889))))

(assert (= (and d!1058395 c!621752) b!3589567))

(assert (= (and d!1058395 (not c!621752)) b!3589563))

(assert (= (and d!1058395 c!621754) b!3589576))

(assert (= (and d!1058395 (not c!621754)) b!3589569))

(assert (= (and b!3589569 c!621753) b!3589574))

(assert (= (and b!3589569 (not c!621753)) b!3589570))

(assert (= (and b!3589570 (not res!1448952)) b!3589566))

(assert (= (and b!3589566 res!1448959) b!3589564))

(assert (= (and b!3589564 res!1448953) b!3589573))

(assert (= (and b!3589573 res!1448955) b!3589568))

(assert (= (and b!3589566 (not res!1448958)) b!3589575))

(assert (= (and b!3589575 res!1448956) b!3589572))

(assert (= (and b!3589572 (not res!1448957)) b!3589571))

(assert (= (and b!3589571 (not res!1448954)) b!3589565))

(assert (= (or b!3589576 b!3589564 b!3589572) bm!259884))

(declare-fun m!4083423 () Bool)

(assert (=> bm!259884 m!4083423))

(assert (=> b!3589563 m!4083397))

(assert (=> b!3589563 m!4083397))

(declare-fun m!4083425 () Bool)

(assert (=> b!3589563 m!4083425))

(assert (=> b!3589563 m!4083401))

(assert (=> b!3589563 m!4083425))

(assert (=> b!3589563 m!4083401))

(declare-fun m!4083427 () Bool)

(assert (=> b!3589563 m!4083427))

(assert (=> b!3589565 m!4083397))

(assert (=> b!3589573 m!4083401))

(assert (=> b!3589573 m!4083401))

(declare-fun m!4083429 () Bool)

(assert (=> b!3589573 m!4083429))

(assert (=> b!3589568 m!4083397))

(assert (=> d!1058395 m!4083423))

(declare-fun m!4083431 () Bool)

(assert (=> d!1058395 m!4083431))

(declare-fun m!4083433 () Bool)

(assert (=> b!3589567 m!4083433))

(assert (=> b!3589571 m!4083401))

(assert (=> b!3589571 m!4083401))

(assert (=> b!3589571 m!4083429))

(assert (=> b!3589238 d!1058395))

(declare-fun d!1058397 () Bool)

(declare-fun res!1448970 () Bool)

(declare-fun e!2220982 () Bool)

(assert (=> d!1058397 (=> res!1448970 e!2220982)))

(assert (=> d!1058397 (= res!1448970 (not ((_ is Cons!37721) rules!3307)))))

(assert (=> d!1058397 (= (sepAndNonSepRulesDisjointChars!1738 rules!3307 rules!3307) e!2220982)))

(declare-fun b!3589587 () Bool)

(declare-fun e!2220983 () Bool)

(assert (=> b!3589587 (= e!2220982 e!2220983)))

(declare-fun res!1448971 () Bool)

(assert (=> b!3589587 (=> (not res!1448971) (not e!2220983))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!787 (Rule!10936 List!37845) Bool)

(assert (=> b!3589587 (= res!1448971 (ruleDisjointCharsFromAllFromOtherType!787 (h!43141 rules!3307) rules!3307))))

(declare-fun b!3589588 () Bool)

(assert (=> b!3589588 (= e!2220983 (sepAndNonSepRulesDisjointChars!1738 rules!3307 (t!290876 rules!3307)))))

(assert (= (and d!1058397 (not res!1448970)) b!3589587))

(assert (= (and b!3589587 res!1448971) b!3589588))

(declare-fun m!4083441 () Bool)

(assert (=> b!3589587 m!4083441))

(declare-fun m!4083443 () Bool)

(assert (=> b!3589588 m!4083443))

(assert (=> b!3589239 d!1058397))

(declare-fun d!1058403 () Bool)

(declare-fun lt!1231183 () Bool)

(declare-fun content!5365 (List!37845) (InoxSet Rule!10936))

(assert (=> d!1058403 (= lt!1231183 (select (content!5365 rules!3307) rule!403))))

(declare-fun e!2220989 () Bool)

(assert (=> d!1058403 (= lt!1231183 e!2220989)))

(declare-fun res!1448977 () Bool)

(assert (=> d!1058403 (=> (not res!1448977) (not e!2220989))))

(assert (=> d!1058403 (= res!1448977 ((_ is Cons!37721) rules!3307))))

(assert (=> d!1058403 (= (contains!7199 rules!3307 rule!403) lt!1231183)))

(declare-fun b!3589593 () Bool)

(declare-fun e!2220988 () Bool)

(assert (=> b!3589593 (= e!2220989 e!2220988)))

(declare-fun res!1448976 () Bool)

(assert (=> b!3589593 (=> res!1448976 e!2220988)))

(assert (=> b!3589593 (= res!1448976 (= (h!43141 rules!3307) rule!403))))

(declare-fun b!3589594 () Bool)

(assert (=> b!3589594 (= e!2220988 (contains!7199 (t!290876 rules!3307) rule!403))))

(assert (= (and d!1058403 res!1448977) b!3589593))

(assert (= (and b!3589593 (not res!1448976)) b!3589594))

(declare-fun m!4083445 () Bool)

(assert (=> d!1058403 m!4083445))

(declare-fun m!4083447 () Bool)

(assert (=> d!1058403 m!4083447))

(declare-fun m!4083449 () Bool)

(assert (=> b!3589594 m!4083449))

(assert (=> b!3589218 d!1058403))

(declare-fun b!3589786 () Bool)

(declare-fun e!2221092 () Bool)

(assert (=> b!3589786 (= e!2221092 true)))

(declare-fun d!1058405 () Bool)

(assert (=> d!1058405 e!2221092))

(assert (= d!1058405 b!3589786))

(declare-fun order!20475 () Int)

(declare-fun order!20477 () Int)

(declare-fun lambda!123843 () Int)

(declare-fun dynLambda!16226 (Int Int) Int)

(declare-fun dynLambda!16227 (Int Int) Int)

(assert (=> b!3589786 (< (dynLambda!16226 order!20475 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) (dynLambda!16227 order!20477 lambda!123843))))

(declare-fun order!20479 () Int)

(declare-fun dynLambda!16228 (Int Int) Int)

(assert (=> b!3589786 (< (dynLambda!16228 order!20479 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) (dynLambda!16227 order!20477 lambda!123843))))

(declare-fun dynLambda!16229 (Int BalanceConc!22560) TokenValue!5798)

(assert (=> d!1058405 (= (list!13872 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) lt!1231042))) (list!13872 lt!1231042))))

(declare-fun lt!1231289 () Unit!53717)

(declare-fun ForallOf!622 (Int BalanceConc!22560) Unit!53717)

(assert (=> d!1058405 (= lt!1231289 (ForallOf!622 lambda!123843 lt!1231042))))

(assert (=> d!1058405 (= (lemmaSemiInverse!1325 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231042) lt!1231289)))

(declare-fun b_lambda!106055 () Bool)

(assert (=> (not b_lambda!106055) (not d!1058405)))

(declare-fun t!290936 () Bool)

(declare-fun tb!204855 () Bool)

(assert (=> (and b!3589245 (= (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290936) tb!204855))

(declare-fun tp!1098737 () Bool)

(declare-fun e!2221093 () Bool)

(declare-fun b!3589787 () Bool)

(assert (=> b!3589787 (= e!2221093 (and (inv!51061 (c!621689 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) lt!1231042)))) tp!1098737))))

(declare-fun result!249768 () Bool)

(assert (=> tb!204855 (= result!249768 (and (inv!51062 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) lt!1231042))) e!2221093))))

(assert (= tb!204855 b!3589787))

(declare-fun m!4083707 () Bool)

(assert (=> b!3589787 m!4083707))

(declare-fun m!4083709 () Bool)

(assert (=> tb!204855 m!4083709))

(assert (=> d!1058405 t!290936))

(declare-fun b_and!259471 () Bool)

(assert (= b_and!259403 (and (=> t!290936 result!249768) b_and!259471)))

(declare-fun t!290938 () Bool)

(declare-fun tb!204857 () Bool)

(assert (=> (and b!3589243 (= (toChars!7711 (transformation!5568 rule!403)) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290938) tb!204857))

(declare-fun result!249770 () Bool)

(assert (= result!249770 result!249768))

(assert (=> d!1058405 t!290938))

(declare-fun b_and!259473 () Bool)

(assert (= b_and!259405 (and (=> t!290938 result!249770) b_and!259473)))

(declare-fun tb!204859 () Bool)

(declare-fun t!290940 () Bool)

(assert (=> (and b!3589232 (= (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290940) tb!204859))

(declare-fun result!249772 () Bool)

(assert (= result!249772 result!249768))

(assert (=> d!1058405 t!290940))

(declare-fun b_and!259475 () Bool)

(assert (= b_and!259407 (and (=> t!290940 result!249772) b_and!259475)))

(declare-fun tb!204861 () Bool)

(declare-fun t!290942 () Bool)

(assert (=> (and b!3589225 (= (toChars!7711 (transformation!5568 (rule!8284 token!511))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290942) tb!204861))

(declare-fun result!249774 () Bool)

(assert (= result!249774 result!249768))

(assert (=> d!1058405 t!290942))

(declare-fun b_and!259477 () Bool)

(assert (= b_and!259409 (and (=> t!290942 result!249774) b_and!259477)))

(declare-fun b_lambda!106057 () Bool)

(assert (=> (not b_lambda!106057) (not d!1058405)))

(declare-fun t!290944 () Bool)

(declare-fun tb!204863 () Bool)

(assert (=> (and b!3589245 (= (toValue!7852 (transformation!5568 anOtherTypeRule!33)) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290944) tb!204863))

(declare-fun result!249776 () Bool)

(assert (=> tb!204863 (= result!249776 (inv!21 (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) lt!1231042)))))

(declare-fun m!4083711 () Bool)

(assert (=> tb!204863 m!4083711))

(assert (=> d!1058405 t!290944))

(declare-fun b_and!259479 () Bool)

(assert (= b_and!259387 (and (=> t!290944 result!249776) b_and!259479)))

(declare-fun tb!204865 () Bool)

(declare-fun t!290946 () Bool)

(assert (=> (and b!3589243 (= (toValue!7852 (transformation!5568 rule!403)) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290946) tb!204865))

(declare-fun result!249780 () Bool)

(assert (= result!249780 result!249776))

(assert (=> d!1058405 t!290946))

(declare-fun b_and!259481 () Bool)

(assert (= b_and!259391 (and (=> t!290946 result!249780) b_and!259481)))

(declare-fun tb!204867 () Bool)

(declare-fun t!290948 () Bool)

(assert (=> (and b!3589232 (= (toValue!7852 (transformation!5568 (h!43141 rules!3307))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290948) tb!204867))

(declare-fun result!249782 () Bool)

(assert (= result!249782 result!249776))

(assert (=> d!1058405 t!290948))

(declare-fun b_and!259483 () Bool)

(assert (= b_and!259395 (and (=> t!290948 result!249782) b_and!259483)))

(declare-fun tb!204869 () Bool)

(declare-fun t!290950 () Bool)

(assert (=> (and b!3589225 (= (toValue!7852 (transformation!5568 (rule!8284 token!511))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290950) tb!204869))

(declare-fun result!249784 () Bool)

(assert (= result!249784 result!249776))

(assert (=> d!1058405 t!290950))

(declare-fun b_and!259485 () Bool)

(assert (= b_and!259399 (and (=> t!290950 result!249784) b_and!259485)))

(declare-fun m!4083713 () Bool)

(assert (=> d!1058405 m!4083713))

(declare-fun m!4083715 () Bool)

(assert (=> d!1058405 m!4083715))

(declare-fun m!4083717 () Bool)

(assert (=> d!1058405 m!4083717))

(assert (=> d!1058405 m!4083047))

(assert (=> d!1058405 m!4083713))

(assert (=> d!1058405 m!4083715))

(declare-fun m!4083719 () Bool)

(assert (=> d!1058405 m!4083719))

(assert (=> b!3589228 d!1058405))

(declare-fun d!1058467 () Bool)

(assert (=> d!1058467 true))

(declare-fun lt!1231292 () Bool)

(declare-fun lambda!123846 () Int)

(declare-fun forall!8147 (List!37845 Int) Bool)

(assert (=> d!1058467 (= lt!1231292 (forall!8147 rules!3307 lambda!123846))))

(declare-fun e!2221101 () Bool)

(assert (=> d!1058467 (= lt!1231292 e!2221101)))

(declare-fun res!1449077 () Bool)

(assert (=> d!1058467 (=> res!1449077 e!2221101)))

(assert (=> d!1058467 (= res!1449077 (not ((_ is Cons!37721) rules!3307)))))

(assert (=> d!1058467 (= (rulesValidInductive!1943 thiss!23823 rules!3307) lt!1231292)))

(declare-fun b!3589794 () Bool)

(declare-fun e!2221102 () Bool)

(assert (=> b!3589794 (= e!2221101 e!2221102)))

(declare-fun res!1449076 () Bool)

(assert (=> b!3589794 (=> (not res!1449076) (not e!2221102))))

(assert (=> b!3589794 (= res!1449076 (ruleValid!1833 thiss!23823 (h!43141 rules!3307)))))

(declare-fun b!3589795 () Bool)

(assert (=> b!3589795 (= e!2221102 (rulesValidInductive!1943 thiss!23823 (t!290876 rules!3307)))))

(assert (= (and d!1058467 (not res!1449077)) b!3589794))

(assert (= (and b!3589794 res!1449076) b!3589795))

(declare-fun m!4083721 () Bool)

(assert (=> d!1058467 m!4083721))

(declare-fun m!4083723 () Bool)

(assert (=> b!3589794 m!4083723))

(declare-fun m!4083725 () Bool)

(assert (=> b!3589795 m!4083725))

(assert (=> b!3589228 d!1058467))

(declare-fun d!1058469 () Bool)

(assert (=> d!1058469 (= (size!28732 (_1!21940 lt!1231045)) (size!28734 (originalCharacters!6282 (_1!21940 lt!1231045))))))

(declare-fun Unit!53724 () Unit!53717)

(assert (=> d!1058469 (= (lemmaCharactersSize!621 (_1!21940 lt!1231045)) Unit!53724)))

(declare-fun bs!570225 () Bool)

(assert (= bs!570225 d!1058469))

(declare-fun m!4083727 () Bool)

(assert (=> bs!570225 m!4083727))

(assert (=> b!3589228 d!1058469))

(declare-fun d!1058471 () Bool)

(declare-fun fromListB!1901 (List!37844) BalanceConc!22560)

(assert (=> d!1058471 (= (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045))) (fromListB!1901 (originalCharacters!6282 (_1!21940 lt!1231045))))))

(declare-fun bs!570226 () Bool)

(assert (= bs!570226 d!1058471))

(declare-fun m!4083729 () Bool)

(assert (=> bs!570226 m!4083729))

(assert (=> b!3589228 d!1058471))

(declare-fun b!3589804 () Bool)

(declare-fun e!2221107 () Bool)

(assert (=> b!3589804 (= e!2221107 true)))

(declare-fun d!1058473 () Bool)

(assert (=> d!1058473 e!2221107))

(assert (= d!1058473 b!3589804))

(declare-fun lambda!123849 () Int)

(declare-fun order!20481 () Int)

(declare-fun dynLambda!16230 (Int Int) Int)

(assert (=> b!3589804 (< (dynLambda!16226 order!20475 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) (dynLambda!16230 order!20481 lambda!123849))))

(assert (=> b!3589804 (< (dynLambda!16228 order!20479 (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) (dynLambda!16230 order!20481 lambda!123849))))

(assert (=> d!1058473 (= (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) lt!1231042) (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045)))))))

(declare-fun lt!1231295 () Unit!53717)

(declare-fun Forall2of!281 (Int BalanceConc!22560 BalanceConc!22560) Unit!53717)

(assert (=> d!1058473 (= lt!1231295 (Forall2of!281 lambda!123849 lt!1231042 (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045)))))))

(assert (=> d!1058473 (= (list!13872 lt!1231042) (list!13872 (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045)))))))

(assert (=> d!1058473 (= (lemmaEqSameImage!759 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))) lt!1231042 (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045)))) lt!1231295)))

(declare-fun b_lambda!106059 () Bool)

(assert (=> (not b_lambda!106059) (not d!1058473)))

(assert (=> d!1058473 t!290944))

(declare-fun b_and!259487 () Bool)

(assert (= b_and!259479 (and (=> t!290944 result!249776) b_and!259487)))

(assert (=> d!1058473 t!290946))

(declare-fun b_and!259489 () Bool)

(assert (= b_and!259481 (and (=> t!290946 result!249780) b_and!259489)))

(assert (=> d!1058473 t!290948))

(declare-fun b_and!259491 () Bool)

(assert (= b_and!259483 (and (=> t!290948 result!249782) b_and!259491)))

(assert (=> d!1058473 t!290950))

(declare-fun b_and!259493 () Bool)

(assert (= b_and!259485 (and (=> t!290950 result!249784) b_and!259493)))

(declare-fun b_lambda!106061 () Bool)

(assert (=> (not b_lambda!106061) (not d!1058473)))

(declare-fun tb!204871 () Bool)

(declare-fun t!290952 () Bool)

(assert (=> (and b!3589245 (= (toValue!7852 (transformation!5568 anOtherTypeRule!33)) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290952) tb!204871))

(declare-fun result!249786 () Bool)

(assert (=> tb!204871 (= result!249786 (inv!21 (dynLambda!16229 (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045)))) (seqFromList!4121 (originalCharacters!6282 (_1!21940 lt!1231045))))))))

(declare-fun m!4083731 () Bool)

(assert (=> tb!204871 m!4083731))

(assert (=> d!1058473 t!290952))

(declare-fun b_and!259495 () Bool)

(assert (= b_and!259487 (and (=> t!290952 result!249786) b_and!259495)))

(declare-fun tb!204873 () Bool)

(declare-fun t!290954 () Bool)

(assert (=> (and b!3589243 (= (toValue!7852 (transformation!5568 rule!403)) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290954) tb!204873))

(declare-fun result!249788 () Bool)

(assert (= result!249788 result!249786))

(assert (=> d!1058473 t!290954))

(declare-fun b_and!259497 () Bool)

(assert (= b_and!259489 (and (=> t!290954 result!249788) b_and!259497)))

(declare-fun tb!204875 () Bool)

(declare-fun t!290956 () Bool)

(assert (=> (and b!3589232 (= (toValue!7852 (transformation!5568 (h!43141 rules!3307))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290956) tb!204875))

(declare-fun result!249790 () Bool)

(assert (= result!249790 result!249786))

(assert (=> d!1058473 t!290956))

(declare-fun b_and!259499 () Bool)

(assert (= b_and!259491 (and (=> t!290956 result!249790) b_and!259499)))

(declare-fun tb!204877 () Bool)

(declare-fun t!290958 () Bool)

(assert (=> (and b!3589225 (= (toValue!7852 (transformation!5568 (rule!8284 token!511))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290958) tb!204877))

(declare-fun result!249792 () Bool)

(assert (= result!249792 result!249786))

(assert (=> d!1058473 t!290958))

(declare-fun b_and!259501 () Bool)

(assert (= b_and!259493 (and (=> t!290958 result!249792) b_and!259501)))

(assert (=> d!1058473 m!4083005))

(declare-fun m!4083733 () Bool)

(assert (=> d!1058473 m!4083733))

(assert (=> d!1058473 m!4083047))

(assert (=> d!1058473 m!4083713))

(assert (=> d!1058473 m!4083005))

(declare-fun m!4083735 () Bool)

(assert (=> d!1058473 m!4083735))

(assert (=> d!1058473 m!4083005))

(declare-fun m!4083737 () Bool)

(assert (=> d!1058473 m!4083737))

(assert (=> b!3589228 d!1058473))

(declare-fun d!1058475 () Bool)

(declare-fun lt!1231298 () Bool)

(assert (=> d!1058475 (= lt!1231298 (select (content!5364 (usedCharacters!782 (regex!5568 anOtherTypeRule!33))) lt!1231049))))

(declare-fun e!2221113 () Bool)

(assert (=> d!1058475 (= lt!1231298 e!2221113)))

(declare-fun res!1449085 () Bool)

(assert (=> d!1058475 (=> (not res!1449085) (not e!2221113))))

(assert (=> d!1058475 (= res!1449085 ((_ is Cons!37720) (usedCharacters!782 (regex!5568 anOtherTypeRule!33))))))

(assert (=> d!1058475 (= (contains!7200 (usedCharacters!782 (regex!5568 anOtherTypeRule!33)) lt!1231049) lt!1231298)))

(declare-fun b!3589809 () Bool)

(declare-fun e!2221114 () Bool)

(assert (=> b!3589809 (= e!2221113 e!2221114)))

(declare-fun res!1449084 () Bool)

(assert (=> b!3589809 (=> res!1449084 e!2221114)))

(assert (=> b!3589809 (= res!1449084 (= (h!43140 (usedCharacters!782 (regex!5568 anOtherTypeRule!33))) lt!1231049))))

(declare-fun b!3589810 () Bool)

(assert (=> b!3589810 (= e!2221114 (contains!7200 (t!290875 (usedCharacters!782 (regex!5568 anOtherTypeRule!33))) lt!1231049))))

(assert (= (and d!1058475 res!1449085) b!3589809))

(assert (= (and b!3589809 (not res!1449084)) b!3589810))

(assert (=> d!1058475 m!4083011))

(declare-fun m!4083739 () Bool)

(assert (=> d!1058475 m!4083739))

(declare-fun m!4083741 () Bool)

(assert (=> d!1058475 m!4083741))

(declare-fun m!4083743 () Bool)

(assert (=> b!3589810 m!4083743))

(assert (=> b!3589219 d!1058475))

(declare-fun bm!259902 () Bool)

(declare-fun call!259910 () List!37844)

(declare-fun c!621789 () Bool)

(assert (=> bm!259902 (= call!259910 (usedCharacters!782 (ite c!621789 (regOne!21167 (regex!5568 anOtherTypeRule!33)) (regTwo!21166 (regex!5568 anOtherTypeRule!33)))))))

(declare-fun b!3589827 () Bool)

(declare-fun c!621790 () Bool)

(assert (=> b!3589827 (= c!621790 ((_ is Star!10327) (regex!5568 anOtherTypeRule!33)))))

(declare-fun e!2221123 () List!37844)

(declare-fun e!2221124 () List!37844)

(assert (=> b!3589827 (= e!2221123 e!2221124)))

(declare-fun bm!259903 () Bool)

(declare-fun call!259909 () List!37844)

(assert (=> bm!259903 (= call!259909 (usedCharacters!782 (ite c!621790 (reg!10656 (regex!5568 anOtherTypeRule!33)) (ite c!621789 (regTwo!21167 (regex!5568 anOtherTypeRule!33)) (regOne!21166 (regex!5568 anOtherTypeRule!33))))))))

(declare-fun b!3589828 () Bool)

(assert (=> b!3589828 (= e!2221123 (Cons!37720 (c!621688 (regex!5568 anOtherTypeRule!33)) Nil!37720))))

(declare-fun d!1058477 () Bool)

(declare-fun c!621791 () Bool)

(assert (=> d!1058477 (= c!621791 (or ((_ is EmptyExpr!10327) (regex!5568 anOtherTypeRule!33)) ((_ is EmptyLang!10327) (regex!5568 anOtherTypeRule!33))))))

(declare-fun e!2221125 () List!37844)

(assert (=> d!1058477 (= (usedCharacters!782 (regex!5568 anOtherTypeRule!33)) e!2221125)))

(declare-fun b!3589829 () Bool)

(declare-fun e!2221126 () List!37844)

(declare-fun call!259908 () List!37844)

(assert (=> b!3589829 (= e!2221126 call!259908)))

(declare-fun b!3589830 () Bool)

(assert (=> b!3589830 (= e!2221125 e!2221123)))

(declare-fun c!621788 () Bool)

(assert (=> b!3589830 (= c!621788 ((_ is ElementMatch!10327) (regex!5568 anOtherTypeRule!33)))))

(declare-fun bm!259904 () Bool)

(declare-fun call!259907 () List!37844)

(assert (=> bm!259904 (= call!259907 call!259909)))

(declare-fun b!3589831 () Bool)

(assert (=> b!3589831 (= e!2221125 Nil!37720)))

(declare-fun b!3589832 () Bool)

(assert (=> b!3589832 (= e!2221124 call!259909)))

(declare-fun b!3589833 () Bool)

(assert (=> b!3589833 (= e!2221126 call!259908)))

(declare-fun b!3589834 () Bool)

(assert (=> b!3589834 (= e!2221124 e!2221126)))

(assert (=> b!3589834 (= c!621789 ((_ is Union!10327) (regex!5568 anOtherTypeRule!33)))))

(declare-fun bm!259905 () Bool)

(assert (=> bm!259905 (= call!259908 (++!9384 (ite c!621789 call!259910 call!259907) (ite c!621789 call!259907 call!259910)))))

(assert (= (and d!1058477 c!621791) b!3589831))

(assert (= (and d!1058477 (not c!621791)) b!3589830))

(assert (= (and b!3589830 c!621788) b!3589828))

(assert (= (and b!3589830 (not c!621788)) b!3589827))

(assert (= (and b!3589827 c!621790) b!3589832))

(assert (= (and b!3589827 (not c!621790)) b!3589834))

(assert (= (and b!3589834 c!621789) b!3589829))

(assert (= (and b!3589834 (not c!621789)) b!3589833))

(assert (= (or b!3589829 b!3589833) bm!259902))

(assert (= (or b!3589829 b!3589833) bm!259904))

(assert (= (or b!3589829 b!3589833) bm!259905))

(assert (= (or b!3589832 bm!259904) bm!259903))

(declare-fun m!4083745 () Bool)

(assert (=> bm!259902 m!4083745))

(declare-fun m!4083747 () Bool)

(assert (=> bm!259903 m!4083747))

(declare-fun m!4083749 () Bool)

(assert (=> bm!259905 m!4083749))

(assert (=> b!3589219 d!1058477))

(declare-fun d!1058479 () Bool)

(assert (=> d!1058479 (= (isEmpty!22227 rules!3307) ((_ is Nil!37721) rules!3307))))

(assert (=> b!3589230 d!1058479))

(declare-fun d!1058481 () Bool)

(declare-fun lt!1231299 () Bool)

(assert (=> d!1058481 (= lt!1231299 (select (content!5365 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2221128 () Bool)

(assert (=> d!1058481 (= lt!1231299 e!2221128)))

(declare-fun res!1449087 () Bool)

(assert (=> d!1058481 (=> (not res!1449087) (not e!2221128))))

(assert (=> d!1058481 (= res!1449087 ((_ is Cons!37721) rules!3307))))

(assert (=> d!1058481 (= (contains!7199 rules!3307 anOtherTypeRule!33) lt!1231299)))

(declare-fun b!3589835 () Bool)

(declare-fun e!2221127 () Bool)

(assert (=> b!3589835 (= e!2221128 e!2221127)))

(declare-fun res!1449086 () Bool)

(assert (=> b!3589835 (=> res!1449086 e!2221127)))

(assert (=> b!3589835 (= res!1449086 (= (h!43141 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3589836 () Bool)

(assert (=> b!3589836 (= e!2221127 (contains!7199 (t!290876 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1058481 res!1449087) b!3589835))

(assert (= (and b!3589835 (not res!1449086)) b!3589836))

(assert (=> d!1058481 m!4083445))

(declare-fun m!4083751 () Bool)

(assert (=> d!1058481 m!4083751))

(declare-fun m!4083753 () Bool)

(assert (=> b!3589836 m!4083753))

(assert (=> b!3589229 d!1058481))

(declare-fun d!1058483 () Bool)

(assert (=> d!1058483 (= (isEmpty!22226 (_2!21940 lt!1231046)) ((_ is Nil!37720) (_2!21940 lt!1231046)))))

(assert (=> b!3589240 d!1058483))

(declare-fun d!1058485 () Bool)

(declare-fun res!1449092 () Bool)

(declare-fun e!2221131 () Bool)

(assert (=> d!1058485 (=> (not res!1449092) (not e!2221131))))

(assert (=> d!1058485 (= res!1449092 (not (isEmpty!22226 (originalCharacters!6282 token!511))))))

(assert (=> d!1058485 (= (inv!51057 token!511) e!2221131)))

(declare-fun b!3589841 () Bool)

(declare-fun res!1449093 () Bool)

(assert (=> b!3589841 (=> (not res!1449093) (not e!2221131))))

(assert (=> b!3589841 (= res!1449093 (= (originalCharacters!6282 token!511) (list!13872 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (value!179148 token!511)))))))

(declare-fun b!3589842 () Bool)

(assert (=> b!3589842 (= e!2221131 (= (size!28732 token!511) (size!28734 (originalCharacters!6282 token!511))))))

(assert (= (and d!1058485 res!1449092) b!3589841))

(assert (= (and b!3589841 res!1449093) b!3589842))

(declare-fun b_lambda!106063 () Bool)

(assert (=> (not b_lambda!106063) (not b!3589841)))

(declare-fun t!290960 () Bool)

(declare-fun tb!204879 () Bool)

(assert (=> (and b!3589245 (= (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toChars!7711 (transformation!5568 (rule!8284 token!511)))) t!290960) tb!204879))

(declare-fun b!3589843 () Bool)

(declare-fun e!2221132 () Bool)

(declare-fun tp!1098738 () Bool)

(assert (=> b!3589843 (= e!2221132 (and (inv!51061 (c!621689 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (value!179148 token!511)))) tp!1098738))))

(declare-fun result!249794 () Bool)

(assert (=> tb!204879 (= result!249794 (and (inv!51062 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (value!179148 token!511))) e!2221132))))

(assert (= tb!204879 b!3589843))

(declare-fun m!4083755 () Bool)

(assert (=> b!3589843 m!4083755))

(declare-fun m!4083757 () Bool)

(assert (=> tb!204879 m!4083757))

(assert (=> b!3589841 t!290960))

(declare-fun b_and!259503 () Bool)

(assert (= b_and!259471 (and (=> t!290960 result!249794) b_and!259503)))

(declare-fun tb!204881 () Bool)

(declare-fun t!290962 () Bool)

(assert (=> (and b!3589243 (= (toChars!7711 (transformation!5568 rule!403)) (toChars!7711 (transformation!5568 (rule!8284 token!511)))) t!290962) tb!204881))

(declare-fun result!249796 () Bool)

(assert (= result!249796 result!249794))

(assert (=> b!3589841 t!290962))

(declare-fun b_and!259505 () Bool)

(assert (= b_and!259473 (and (=> t!290962 result!249796) b_and!259505)))

(declare-fun tb!204883 () Bool)

(declare-fun t!290964 () Bool)

(assert (=> (and b!3589232 (= (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toChars!7711 (transformation!5568 (rule!8284 token!511)))) t!290964) tb!204883))

(declare-fun result!249798 () Bool)

(assert (= result!249798 result!249794))

(assert (=> b!3589841 t!290964))

(declare-fun b_and!259507 () Bool)

(assert (= b_and!259475 (and (=> t!290964 result!249798) b_and!259507)))

(declare-fun t!290966 () Bool)

(declare-fun tb!204885 () Bool)

(assert (=> (and b!3589225 (= (toChars!7711 (transformation!5568 (rule!8284 token!511))) (toChars!7711 (transformation!5568 (rule!8284 token!511)))) t!290966) tb!204885))

(declare-fun result!249800 () Bool)

(assert (= result!249800 result!249794))

(assert (=> b!3589841 t!290966))

(declare-fun b_and!259509 () Bool)

(assert (= b_and!259477 (and (=> t!290966 result!249800) b_and!259509)))

(declare-fun m!4083759 () Bool)

(assert (=> d!1058485 m!4083759))

(declare-fun m!4083761 () Bool)

(assert (=> b!3589841 m!4083761))

(assert (=> b!3589841 m!4083761))

(declare-fun m!4083763 () Bool)

(assert (=> b!3589841 m!4083763))

(declare-fun m!4083765 () Bool)

(assert (=> b!3589842 m!4083765))

(assert (=> start!333058 d!1058485))

(declare-fun d!1058487 () Bool)

(assert (=> d!1058487 (= (inv!51054 (tag!6238 rule!403)) (= (mod (str.len (value!179122 (tag!6238 rule!403))) 2) 0))))

(assert (=> b!3589242 d!1058487))

(declare-fun d!1058489 () Bool)

(declare-fun res!1449094 () Bool)

(declare-fun e!2221133 () Bool)

(assert (=> d!1058489 (=> (not res!1449094) (not e!2221133))))

(assert (=> d!1058489 (= res!1449094 (semiInverseModEq!2361 (toChars!7711 (transformation!5568 rule!403)) (toValue!7852 (transformation!5568 rule!403))))))

(assert (=> d!1058489 (= (inv!51058 (transformation!5568 rule!403)) e!2221133)))

(declare-fun b!3589844 () Bool)

(assert (=> b!3589844 (= e!2221133 (equivClasses!2260 (toChars!7711 (transformation!5568 rule!403)) (toValue!7852 (transformation!5568 rule!403))))))

(assert (= (and d!1058489 res!1449094) b!3589844))

(declare-fun m!4083767 () Bool)

(assert (=> d!1058489 m!4083767))

(declare-fun m!4083769 () Bool)

(assert (=> b!3589844 m!4083769))

(assert (=> b!3589242 d!1058489))

(declare-fun d!1058491 () Bool)

(assert (=> d!1058491 (= (isDefined!5999 lt!1231044) (not (isEmpty!22229 lt!1231044)))))

(declare-fun bs!570227 () Bool)

(assert (= bs!570227 d!1058491))

(declare-fun m!4083771 () Bool)

(assert (=> bs!570227 m!4083771))

(assert (=> b!3589241 d!1058491))

(declare-fun b!3589845 () Bool)

(declare-fun res!1449096 () Bool)

(declare-fun e!2221136 () Bool)

(assert (=> b!3589845 (=> (not res!1449096) (not e!2221136))))

(declare-fun lt!1231301 () Option!7766)

(assert (=> b!3589845 (= res!1449096 (= (value!179148 (_1!21940 (get!12160 lt!1231301))) (apply!9075 (transformation!5568 (rule!8284 (_1!21940 (get!12160 lt!1231301)))) (seqFromList!4121 (originalCharacters!6282 (_1!21940 (get!12160 lt!1231301)))))))))

(declare-fun b!3589846 () Bool)

(declare-fun res!1449099 () Bool)

(assert (=> b!3589846 (=> (not res!1449099) (not e!2221136))))

(assert (=> b!3589846 (= res!1449099 (= (++!9384 (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231301)))) (_2!21940 (get!12160 lt!1231301))) lt!1231051))))

(declare-fun b!3589847 () Bool)

(declare-fun e!2221135 () Option!7766)

(declare-fun call!259911 () Option!7766)

(assert (=> b!3589847 (= e!2221135 call!259911)))

(declare-fun b!3589848 () Bool)

(declare-fun lt!1231302 () Option!7766)

(declare-fun lt!1231304 () Option!7766)

(assert (=> b!3589848 (= e!2221135 (ite (and ((_ is None!7765) lt!1231302) ((_ is None!7765) lt!1231304)) None!7765 (ite ((_ is None!7765) lt!1231304) lt!1231302 (ite ((_ is None!7765) lt!1231302) lt!1231304 (ite (>= (size!28732 (_1!21940 (v!37435 lt!1231302))) (size!28732 (_1!21940 (v!37435 lt!1231304)))) lt!1231302 lt!1231304)))))))

(assert (=> b!3589848 (= lt!1231302 call!259911)))

(assert (=> b!3589848 (= lt!1231304 (maxPrefix!2691 thiss!23823 (t!290876 rules!3307) lt!1231051))))

(declare-fun bm!259906 () Bool)

(assert (=> bm!259906 (= call!259911 (maxPrefixOneRule!1839 thiss!23823 (h!43141 rules!3307) lt!1231051))))

(declare-fun b!3589849 () Bool)

(declare-fun res!1449095 () Bool)

(assert (=> b!3589849 (=> (not res!1449095) (not e!2221136))))

(assert (=> b!3589849 (= res!1449095 (< (size!28734 (_2!21940 (get!12160 lt!1231301))) (size!28734 lt!1231051)))))

(declare-fun b!3589850 () Bool)

(assert (=> b!3589850 (= e!2221136 (contains!7199 rules!3307 (rule!8284 (_1!21940 (get!12160 lt!1231301)))))))

(declare-fun b!3589851 () Bool)

(declare-fun e!2221134 () Bool)

(assert (=> b!3589851 (= e!2221134 e!2221136)))

(declare-fun res!1449100 () Bool)

(assert (=> b!3589851 (=> (not res!1449100) (not e!2221136))))

(assert (=> b!3589851 (= res!1449100 (isDefined!5999 lt!1231301))))

(declare-fun d!1058493 () Bool)

(assert (=> d!1058493 e!2221134))

(declare-fun res!1449097 () Bool)

(assert (=> d!1058493 (=> res!1449097 e!2221134)))

(assert (=> d!1058493 (= res!1449097 (isEmpty!22229 lt!1231301))))

(assert (=> d!1058493 (= lt!1231301 e!2221135)))

(declare-fun c!621792 () Bool)

(assert (=> d!1058493 (= c!621792 (and ((_ is Cons!37721) rules!3307) ((_ is Nil!37721) (t!290876 rules!3307))))))

(declare-fun lt!1231300 () Unit!53717)

(declare-fun lt!1231303 () Unit!53717)

(assert (=> d!1058493 (= lt!1231300 lt!1231303)))

(assert (=> d!1058493 (isPrefix!2931 lt!1231051 lt!1231051)))

(assert (=> d!1058493 (= lt!1231303 (lemmaIsPrefixRefl!1880 lt!1231051 lt!1231051))))

(assert (=> d!1058493 (rulesValidInductive!1943 thiss!23823 rules!3307)))

(assert (=> d!1058493 (= (maxPrefix!2691 thiss!23823 rules!3307 lt!1231051) lt!1231301)))

(declare-fun b!3589852 () Bool)

(declare-fun res!1449098 () Bool)

(assert (=> b!3589852 (=> (not res!1449098) (not e!2221136))))

(assert (=> b!3589852 (= res!1449098 (= (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231301)))) (originalCharacters!6282 (_1!21940 (get!12160 lt!1231301)))))))

(declare-fun b!3589853 () Bool)

(declare-fun res!1449101 () Bool)

(assert (=> b!3589853 (=> (not res!1449101) (not e!2221136))))

(assert (=> b!3589853 (= res!1449101 (matchR!4896 (regex!5568 (rule!8284 (_1!21940 (get!12160 lt!1231301)))) (list!13872 (charsOf!3582 (_1!21940 (get!12160 lt!1231301))))))))

(assert (= (and d!1058493 c!621792) b!3589847))

(assert (= (and d!1058493 (not c!621792)) b!3589848))

(assert (= (or b!3589847 b!3589848) bm!259906))

(assert (= (and d!1058493 (not res!1449097)) b!3589851))

(assert (= (and b!3589851 res!1449100) b!3589852))

(assert (= (and b!3589852 res!1449098) b!3589849))

(assert (= (and b!3589849 res!1449095) b!3589846))

(assert (= (and b!3589846 res!1449099) b!3589845))

(assert (= (and b!3589845 res!1449096) b!3589853))

(assert (= (and b!3589853 res!1449101) b!3589850))

(declare-fun m!4083773 () Bool)

(assert (=> b!3589846 m!4083773))

(declare-fun m!4083775 () Bool)

(assert (=> b!3589846 m!4083775))

(assert (=> b!3589846 m!4083775))

(declare-fun m!4083777 () Bool)

(assert (=> b!3589846 m!4083777))

(assert (=> b!3589846 m!4083777))

(declare-fun m!4083779 () Bool)

(assert (=> b!3589846 m!4083779))

(declare-fun m!4083781 () Bool)

(assert (=> d!1058493 m!4083781))

(declare-fun m!4083783 () Bool)

(assert (=> d!1058493 m!4083783))

(declare-fun m!4083785 () Bool)

(assert (=> d!1058493 m!4083785))

(assert (=> d!1058493 m!4083009))

(assert (=> b!3589853 m!4083773))

(assert (=> b!3589853 m!4083775))

(assert (=> b!3589853 m!4083775))

(assert (=> b!3589853 m!4083777))

(assert (=> b!3589853 m!4083777))

(declare-fun m!4083787 () Bool)

(assert (=> b!3589853 m!4083787))

(assert (=> b!3589850 m!4083773))

(declare-fun m!4083789 () Bool)

(assert (=> b!3589850 m!4083789))

(declare-fun m!4083791 () Bool)

(assert (=> bm!259906 m!4083791))

(assert (=> b!3589852 m!4083773))

(assert (=> b!3589852 m!4083775))

(assert (=> b!3589852 m!4083775))

(assert (=> b!3589852 m!4083777))

(assert (=> b!3589845 m!4083773))

(declare-fun m!4083793 () Bool)

(assert (=> b!3589845 m!4083793))

(assert (=> b!3589845 m!4083793))

(declare-fun m!4083795 () Bool)

(assert (=> b!3589845 m!4083795))

(declare-fun m!4083797 () Bool)

(assert (=> b!3589848 m!4083797))

(declare-fun m!4083799 () Bool)

(assert (=> b!3589851 m!4083799))

(assert (=> b!3589849 m!4083773))

(declare-fun m!4083801 () Bool)

(assert (=> b!3589849 m!4083801))

(assert (=> b!3589849 m!4083225))

(assert (=> b!3589241 d!1058493))

(declare-fun d!1058495 () Bool)

(assert (=> d!1058495 (= (list!13872 (charsOf!3582 token!511)) (list!13873 (c!621689 (charsOf!3582 token!511))))))

(declare-fun bs!570228 () Bool)

(assert (= bs!570228 d!1058495))

(declare-fun m!4083803 () Bool)

(assert (=> bs!570228 m!4083803))

(assert (=> b!3589241 d!1058495))

(declare-fun d!1058497 () Bool)

(declare-fun lt!1231305 () BalanceConc!22560)

(assert (=> d!1058497 (= (list!13872 lt!1231305) (originalCharacters!6282 token!511))))

(assert (=> d!1058497 (= lt!1231305 (dynLambda!16225 (toChars!7711 (transformation!5568 (rule!8284 token!511))) (value!179148 token!511)))))

(assert (=> d!1058497 (= (charsOf!3582 token!511) lt!1231305)))

(declare-fun b_lambda!106065 () Bool)

(assert (=> (not b_lambda!106065) (not d!1058497)))

(assert (=> d!1058497 t!290960))

(declare-fun b_and!259511 () Bool)

(assert (= b_and!259503 (and (=> t!290960 result!249794) b_and!259511)))

(assert (=> d!1058497 t!290962))

(declare-fun b_and!259513 () Bool)

(assert (= b_and!259505 (and (=> t!290962 result!249796) b_and!259513)))

(assert (=> d!1058497 t!290964))

(declare-fun b_and!259515 () Bool)

(assert (= b_and!259507 (and (=> t!290964 result!249798) b_and!259515)))

(assert (=> d!1058497 t!290966))

(declare-fun b_and!259517 () Bool)

(assert (= b_and!259509 (and (=> t!290966 result!249800) b_and!259517)))

(declare-fun m!4083805 () Bool)

(assert (=> d!1058497 m!4083805))

(assert (=> d!1058497 m!4083761))

(assert (=> b!3589241 d!1058497))

(declare-fun bm!259907 () Bool)

(declare-fun call!259912 () Bool)

(assert (=> bm!259907 (= call!259912 (isEmpty!22226 lt!1231051))))

(declare-fun d!1058499 () Bool)

(declare-fun e!2221141 () Bool)

(assert (=> d!1058499 e!2221141))

(declare-fun c!621795 () Bool)

(assert (=> d!1058499 (= c!621795 ((_ is EmptyExpr!10327) (regex!5568 rule!403)))))

(declare-fun lt!1231306 () Bool)

(declare-fun e!2221143 () Bool)

(assert (=> d!1058499 (= lt!1231306 e!2221143)))

(declare-fun c!621793 () Bool)

(assert (=> d!1058499 (= c!621793 (isEmpty!22226 lt!1231051))))

(assert (=> d!1058499 (validRegex!4719 (regex!5568 rule!403))))

(assert (=> d!1058499 (= (matchR!4896 (regex!5568 rule!403) lt!1231051) lt!1231306)))

(declare-fun b!3589854 () Bool)

(assert (=> b!3589854 (= e!2221143 (matchR!4896 (derivativeStep!3112 (regex!5568 rule!403) (head!7490 lt!1231051)) (tail!5561 lt!1231051)))))

(declare-fun b!3589855 () Bool)

(declare-fun res!1449103 () Bool)

(declare-fun e!2221139 () Bool)

(assert (=> b!3589855 (=> (not res!1449103) (not e!2221139))))

(assert (=> b!3589855 (= res!1449103 (not call!259912))))

(declare-fun b!3589856 () Bool)

(declare-fun e!2221137 () Bool)

(assert (=> b!3589856 (= e!2221137 (not (= (head!7490 lt!1231051) (c!621688 (regex!5568 rule!403)))))))

(declare-fun b!3589857 () Bool)

(declare-fun res!1449108 () Bool)

(declare-fun e!2221140 () Bool)

(assert (=> b!3589857 (=> res!1449108 e!2221140)))

(assert (=> b!3589857 (= res!1449108 e!2221139)))

(declare-fun res!1449109 () Bool)

(assert (=> b!3589857 (=> (not res!1449109) (not e!2221139))))

(assert (=> b!3589857 (= res!1449109 lt!1231306)))

(declare-fun b!3589858 () Bool)

(assert (=> b!3589858 (= e!2221143 (nullable!3563 (regex!5568 rule!403)))))

(declare-fun b!3589859 () Bool)

(assert (=> b!3589859 (= e!2221139 (= (head!7490 lt!1231051) (c!621688 (regex!5568 rule!403))))))

(declare-fun b!3589860 () Bool)

(declare-fun e!2221142 () Bool)

(assert (=> b!3589860 (= e!2221141 e!2221142)))

(declare-fun c!621794 () Bool)

(assert (=> b!3589860 (= c!621794 ((_ is EmptyLang!10327) (regex!5568 rule!403)))))

(declare-fun b!3589861 () Bool)

(declare-fun res!1449102 () Bool)

(assert (=> b!3589861 (=> res!1449102 e!2221140)))

(assert (=> b!3589861 (= res!1449102 (not ((_ is ElementMatch!10327) (regex!5568 rule!403))))))

(assert (=> b!3589861 (= e!2221142 e!2221140)))

(declare-fun b!3589862 () Bool)

(declare-fun res!1449104 () Bool)

(assert (=> b!3589862 (=> res!1449104 e!2221137)))

(assert (=> b!3589862 (= res!1449104 (not (isEmpty!22226 (tail!5561 lt!1231051))))))

(declare-fun b!3589863 () Bool)

(declare-fun e!2221138 () Bool)

(assert (=> b!3589863 (= e!2221138 e!2221137)))

(declare-fun res!1449107 () Bool)

(assert (=> b!3589863 (=> res!1449107 e!2221137)))

(assert (=> b!3589863 (= res!1449107 call!259912)))

(declare-fun b!3589864 () Bool)

(declare-fun res!1449105 () Bool)

(assert (=> b!3589864 (=> (not res!1449105) (not e!2221139))))

(assert (=> b!3589864 (= res!1449105 (isEmpty!22226 (tail!5561 lt!1231051)))))

(declare-fun b!3589865 () Bool)

(assert (=> b!3589865 (= e!2221142 (not lt!1231306))))

(declare-fun b!3589866 () Bool)

(assert (=> b!3589866 (= e!2221140 e!2221138)))

(declare-fun res!1449106 () Bool)

(assert (=> b!3589866 (=> (not res!1449106) (not e!2221138))))

(assert (=> b!3589866 (= res!1449106 (not lt!1231306))))

(declare-fun b!3589867 () Bool)

(assert (=> b!3589867 (= e!2221141 (= lt!1231306 call!259912))))

(assert (= (and d!1058499 c!621793) b!3589858))

(assert (= (and d!1058499 (not c!621793)) b!3589854))

(assert (= (and d!1058499 c!621795) b!3589867))

(assert (= (and d!1058499 (not c!621795)) b!3589860))

(assert (= (and b!3589860 c!621794) b!3589865))

(assert (= (and b!3589860 (not c!621794)) b!3589861))

(assert (= (and b!3589861 (not res!1449102)) b!3589857))

(assert (= (and b!3589857 res!1449109) b!3589855))

(assert (= (and b!3589855 res!1449103) b!3589864))

(assert (= (and b!3589864 res!1449105) b!3589859))

(assert (= (and b!3589857 (not res!1449108)) b!3589866))

(assert (= (and b!3589866 res!1449106) b!3589863))

(assert (= (and b!3589863 (not res!1449107)) b!3589862))

(assert (= (and b!3589862 (not res!1449104)) b!3589856))

(assert (= (or b!3589867 b!3589855 b!3589863) bm!259907))

(declare-fun m!4083807 () Bool)

(assert (=> bm!259907 m!4083807))

(assert (=> b!3589854 m!4083213))

(assert (=> b!3589854 m!4083213))

(declare-fun m!4083809 () Bool)

(assert (=> b!3589854 m!4083809))

(assert (=> b!3589854 m!4083217))

(assert (=> b!3589854 m!4083809))

(assert (=> b!3589854 m!4083217))

(declare-fun m!4083811 () Bool)

(assert (=> b!3589854 m!4083811))

(assert (=> b!3589856 m!4083213))

(assert (=> b!3589864 m!4083217))

(assert (=> b!3589864 m!4083217))

(declare-fun m!4083813 () Bool)

(assert (=> b!3589864 m!4083813))

(assert (=> b!3589859 m!4083213))

(assert (=> d!1058499 m!4083807))

(declare-fun m!4083815 () Bool)

(assert (=> d!1058499 m!4083815))

(declare-fun m!4083817 () Bool)

(assert (=> b!3589858 m!4083817))

(assert (=> b!3589862 m!4083217))

(assert (=> b!3589862 m!4083217))

(assert (=> b!3589862 m!4083813))

(assert (=> b!3589220 d!1058499))

(declare-fun d!1058501 () Bool)

(declare-fun res!1449114 () Bool)

(declare-fun e!2221146 () Bool)

(assert (=> d!1058501 (=> (not res!1449114) (not e!2221146))))

(assert (=> d!1058501 (= res!1449114 (validRegex!4719 (regex!5568 rule!403)))))

(assert (=> d!1058501 (= (ruleValid!1833 thiss!23823 rule!403) e!2221146)))

(declare-fun b!3589872 () Bool)

(declare-fun res!1449115 () Bool)

(assert (=> b!3589872 (=> (not res!1449115) (not e!2221146))))

(assert (=> b!3589872 (= res!1449115 (not (nullable!3563 (regex!5568 rule!403))))))

(declare-fun b!3589873 () Bool)

(assert (=> b!3589873 (= e!2221146 (not (= (tag!6238 rule!403) (String!42324 ""))))))

(assert (= (and d!1058501 res!1449114) b!3589872))

(assert (= (and b!3589872 res!1449115) b!3589873))

(assert (=> d!1058501 m!4083815))

(assert (=> b!3589872 m!4083817))

(assert (=> b!3589220 d!1058501))

(declare-fun d!1058503 () Bool)

(assert (=> d!1058503 (ruleValid!1833 thiss!23823 rule!403)))

(declare-fun lt!1231309 () Unit!53717)

(declare-fun choose!20888 (LexerInterface!5157 Rule!10936 List!37845) Unit!53717)

(assert (=> d!1058503 (= lt!1231309 (choose!20888 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1058503 (contains!7199 rules!3307 rule!403)))

(assert (=> d!1058503 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!988 thiss!23823 rule!403 rules!3307) lt!1231309)))

(declare-fun bs!570229 () Bool)

(assert (= bs!570229 d!1058503))

(assert (=> bs!570229 m!4083103))

(declare-fun m!4083819 () Bool)

(assert (=> bs!570229 m!4083819))

(assert (=> bs!570229 m!4083107))

(assert (=> b!3589220 d!1058503))

(declare-fun d!1058505 () Bool)

(declare-fun lt!1231310 () Bool)

(assert (=> d!1058505 (= lt!1231310 (select (content!5364 (usedCharacters!782 (regex!5568 rule!403))) lt!1231049))))

(declare-fun e!2221147 () Bool)

(assert (=> d!1058505 (= lt!1231310 e!2221147)))

(declare-fun res!1449117 () Bool)

(assert (=> d!1058505 (=> (not res!1449117) (not e!2221147))))

(assert (=> d!1058505 (= res!1449117 ((_ is Cons!37720) (usedCharacters!782 (regex!5568 rule!403))))))

(assert (=> d!1058505 (= (contains!7200 (usedCharacters!782 (regex!5568 rule!403)) lt!1231049) lt!1231310)))

(declare-fun b!3589874 () Bool)

(declare-fun e!2221148 () Bool)

(assert (=> b!3589874 (= e!2221147 e!2221148)))

(declare-fun res!1449116 () Bool)

(assert (=> b!3589874 (=> res!1449116 e!2221148)))

(assert (=> b!3589874 (= res!1449116 (= (h!43140 (usedCharacters!782 (regex!5568 rule!403))) lt!1231049))))

(declare-fun b!3589875 () Bool)

(assert (=> b!3589875 (= e!2221148 (contains!7200 (t!290875 (usedCharacters!782 (regex!5568 rule!403))) lt!1231049))))

(assert (= (and d!1058505 res!1449117) b!3589874))

(assert (= (and b!3589874 (not res!1449116)) b!3589875))

(assert (=> d!1058505 m!4083061))

(declare-fun m!4083821 () Bool)

(assert (=> d!1058505 m!4083821))

(declare-fun m!4083823 () Bool)

(assert (=> d!1058505 m!4083823))

(declare-fun m!4083825 () Bool)

(assert (=> b!3589875 m!4083825))

(assert (=> b!3589222 d!1058505))

(declare-fun bm!259908 () Bool)

(declare-fun call!259916 () List!37844)

(declare-fun c!621797 () Bool)

(assert (=> bm!259908 (= call!259916 (usedCharacters!782 (ite c!621797 (regOne!21167 (regex!5568 rule!403)) (regTwo!21166 (regex!5568 rule!403)))))))

(declare-fun b!3589876 () Bool)

(declare-fun c!621798 () Bool)

(assert (=> b!3589876 (= c!621798 ((_ is Star!10327) (regex!5568 rule!403)))))

(declare-fun e!2221149 () List!37844)

(declare-fun e!2221150 () List!37844)

(assert (=> b!3589876 (= e!2221149 e!2221150)))

(declare-fun bm!259909 () Bool)

(declare-fun call!259915 () List!37844)

(assert (=> bm!259909 (= call!259915 (usedCharacters!782 (ite c!621798 (reg!10656 (regex!5568 rule!403)) (ite c!621797 (regTwo!21167 (regex!5568 rule!403)) (regOne!21166 (regex!5568 rule!403))))))))

(declare-fun b!3589877 () Bool)

(assert (=> b!3589877 (= e!2221149 (Cons!37720 (c!621688 (regex!5568 rule!403)) Nil!37720))))

(declare-fun d!1058507 () Bool)

(declare-fun c!621799 () Bool)

(assert (=> d!1058507 (= c!621799 (or ((_ is EmptyExpr!10327) (regex!5568 rule!403)) ((_ is EmptyLang!10327) (regex!5568 rule!403))))))

(declare-fun e!2221151 () List!37844)

(assert (=> d!1058507 (= (usedCharacters!782 (regex!5568 rule!403)) e!2221151)))

(declare-fun b!3589878 () Bool)

(declare-fun e!2221152 () List!37844)

(declare-fun call!259914 () List!37844)

(assert (=> b!3589878 (= e!2221152 call!259914)))

(declare-fun b!3589879 () Bool)

(assert (=> b!3589879 (= e!2221151 e!2221149)))

(declare-fun c!621796 () Bool)

(assert (=> b!3589879 (= c!621796 ((_ is ElementMatch!10327) (regex!5568 rule!403)))))

(declare-fun bm!259910 () Bool)

(declare-fun call!259913 () List!37844)

(assert (=> bm!259910 (= call!259913 call!259915)))

(declare-fun b!3589880 () Bool)

(assert (=> b!3589880 (= e!2221151 Nil!37720)))

(declare-fun b!3589881 () Bool)

(assert (=> b!3589881 (= e!2221150 call!259915)))

(declare-fun b!3589882 () Bool)

(assert (=> b!3589882 (= e!2221152 call!259914)))

(declare-fun b!3589883 () Bool)

(assert (=> b!3589883 (= e!2221150 e!2221152)))

(assert (=> b!3589883 (= c!621797 ((_ is Union!10327) (regex!5568 rule!403)))))

(declare-fun bm!259911 () Bool)

(assert (=> bm!259911 (= call!259914 (++!9384 (ite c!621797 call!259916 call!259913) (ite c!621797 call!259913 call!259916)))))

(assert (= (and d!1058507 c!621799) b!3589880))

(assert (= (and d!1058507 (not c!621799)) b!3589879))

(assert (= (and b!3589879 c!621796) b!3589877))

(assert (= (and b!3589879 (not c!621796)) b!3589876))

(assert (= (and b!3589876 c!621798) b!3589881))

(assert (= (and b!3589876 (not c!621798)) b!3589883))

(assert (= (and b!3589883 c!621797) b!3589878))

(assert (= (and b!3589883 (not c!621797)) b!3589882))

(assert (= (or b!3589878 b!3589882) bm!259908))

(assert (= (or b!3589878 b!3589882) bm!259910))

(assert (= (or b!3589878 b!3589882) bm!259911))

(assert (= (or b!3589881 bm!259910) bm!259909))

(declare-fun m!4083827 () Bool)

(assert (=> bm!259908 m!4083827))

(declare-fun m!4083829 () Bool)

(assert (=> bm!259909 m!4083829))

(declare-fun m!4083831 () Bool)

(assert (=> bm!259911 m!4083831))

(assert (=> b!3589222 d!1058507))

(declare-fun d!1058509 () Bool)

(assert (=> d!1058509 (= (head!7490 suffix!1395) (h!43140 suffix!1395))))

(assert (=> b!3589222 d!1058509))

(declare-fun d!1058511 () Bool)

(assert (=> d!1058511 (= (get!12160 lt!1231044) (v!37435 lt!1231044))))

(assert (=> b!3589221 d!1058511))

(declare-fun e!2221155 () Bool)

(assert (=> b!3589234 (= tp!1098668 e!2221155)))

(declare-fun b!3589894 () Bool)

(assert (=> b!3589894 (= e!2221155 tp_is_empty!17737)))

(declare-fun b!3589897 () Bool)

(declare-fun tp!1098751 () Bool)

(declare-fun tp!1098753 () Bool)

(assert (=> b!3589897 (= e!2221155 (and tp!1098751 tp!1098753))))

(declare-fun b!3589896 () Bool)

(declare-fun tp!1098750 () Bool)

(assert (=> b!3589896 (= e!2221155 tp!1098750)))

(declare-fun b!3589895 () Bool)

(declare-fun tp!1098749 () Bool)

(declare-fun tp!1098752 () Bool)

(assert (=> b!3589895 (= e!2221155 (and tp!1098749 tp!1098752))))

(assert (= (and b!3589234 ((_ is ElementMatch!10327) (regex!5568 (rule!8284 token!511)))) b!3589894))

(assert (= (and b!3589234 ((_ is Concat!16125) (regex!5568 (rule!8284 token!511)))) b!3589895))

(assert (= (and b!3589234 ((_ is Star!10327) (regex!5568 (rule!8284 token!511)))) b!3589896))

(assert (= (and b!3589234 ((_ is Union!10327) (regex!5568 (rule!8284 token!511)))) b!3589897))

(declare-fun e!2221156 () Bool)

(assert (=> b!3589233 (= tp!1098673 e!2221156)))

(declare-fun b!3589898 () Bool)

(assert (=> b!3589898 (= e!2221156 tp_is_empty!17737)))

(declare-fun b!3589901 () Bool)

(declare-fun tp!1098756 () Bool)

(declare-fun tp!1098758 () Bool)

(assert (=> b!3589901 (= e!2221156 (and tp!1098756 tp!1098758))))

(declare-fun b!3589900 () Bool)

(declare-fun tp!1098755 () Bool)

(assert (=> b!3589900 (= e!2221156 tp!1098755)))

(declare-fun b!3589899 () Bool)

(declare-fun tp!1098754 () Bool)

(declare-fun tp!1098757 () Bool)

(assert (=> b!3589899 (= e!2221156 (and tp!1098754 tp!1098757))))

(assert (= (and b!3589233 ((_ is ElementMatch!10327) (regex!5568 anOtherTypeRule!33))) b!3589898))

(assert (= (and b!3589233 ((_ is Concat!16125) (regex!5568 anOtherTypeRule!33))) b!3589899))

(assert (= (and b!3589233 ((_ is Star!10327) (regex!5568 anOtherTypeRule!33))) b!3589900))

(assert (= (and b!3589233 ((_ is Union!10327) (regex!5568 anOtherTypeRule!33))) b!3589901))

(declare-fun b!3589906 () Bool)

(declare-fun e!2221159 () Bool)

(declare-fun tp!1098761 () Bool)

(assert (=> b!3589906 (= e!2221159 (and tp_is_empty!17737 tp!1098761))))

(assert (=> b!3589244 (= tp!1098675 e!2221159)))

(assert (= (and b!3589244 ((_ is Cons!37720) (t!290875 suffix!1395))) b!3589906))

(declare-fun b!3589917 () Bool)

(declare-fun b_free!92493 () Bool)

(declare-fun b_next!93197 () Bool)

(assert (=> b!3589917 (= b_free!92493 (not b_next!93197))))

(declare-fun t!290969 () Bool)

(declare-fun tb!204887 () Bool)

(assert (=> (and b!3589917 (= (toValue!7852 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290969) tb!204887))

(declare-fun result!249808 () Bool)

(assert (= result!249808 result!249776))

(assert (=> d!1058405 t!290969))

(assert (=> d!1058473 t!290969))

(declare-fun t!290971 () Bool)

(declare-fun tb!204889 () Bool)

(assert (=> (and b!3589917 (= (toValue!7852 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toValue!7852 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290971) tb!204889))

(declare-fun result!249810 () Bool)

(assert (= result!249810 result!249786))

(assert (=> d!1058473 t!290971))

(declare-fun tp!1098771 () Bool)

(declare-fun b_and!259519 () Bool)

(assert (=> b!3589917 (= tp!1098771 (and (=> t!290969 result!249808) (=> t!290971 result!249810) b_and!259519))))

(declare-fun b_free!92495 () Bool)

(declare-fun b_next!93199 () Bool)

(assert (=> b!3589917 (= b_free!92495 (not b_next!93199))))

(declare-fun t!290973 () Bool)

(declare-fun tb!204891 () Bool)

(assert (=> (and b!3589917 (= (toChars!7711 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290973) tb!204891))

(declare-fun result!249812 () Bool)

(assert (= result!249812 result!249698))

(assert (=> d!1058337 t!290973))

(declare-fun t!290975 () Bool)

(declare-fun tb!204893 () Bool)

(assert (=> (and b!3589917 (= (toChars!7711 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toChars!7711 (transformation!5568 (rule!8284 (_1!21940 lt!1231045))))) t!290975) tb!204893))

(declare-fun result!249814 () Bool)

(assert (= result!249814 result!249768))

(assert (=> d!1058405 t!290975))

(declare-fun tb!204895 () Bool)

(declare-fun t!290977 () Bool)

(assert (=> (and b!3589917 (= (toChars!7711 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toChars!7711 (transformation!5568 (rule!8284 token!511)))) t!290977) tb!204895))

(declare-fun result!249816 () Bool)

(assert (= result!249816 result!249794))

(assert (=> b!3589841 t!290977))

(assert (=> d!1058497 t!290977))

(declare-fun b_and!259521 () Bool)

(declare-fun tp!1098770 () Bool)

(assert (=> b!3589917 (= tp!1098770 (and (=> t!290973 result!249812) (=> t!290975 result!249814) (=> t!290977 result!249816) b_and!259521))))

(declare-fun e!2221171 () Bool)

(assert (=> b!3589917 (= e!2221171 (and tp!1098771 tp!1098770))))

(declare-fun b!3589916 () Bool)

(declare-fun tp!1098772 () Bool)

(declare-fun e!2221168 () Bool)

(assert (=> b!3589916 (= e!2221168 (and tp!1098772 (inv!51054 (tag!6238 (h!43141 (t!290876 rules!3307)))) (inv!51058 (transformation!5568 (h!43141 (t!290876 rules!3307)))) e!2221171))))

(declare-fun b!3589915 () Bool)

(declare-fun e!2221169 () Bool)

(declare-fun tp!1098773 () Bool)

(assert (=> b!3589915 (= e!2221169 (and e!2221168 tp!1098773))))

(assert (=> b!3589246 (= tp!1098682 e!2221169)))

(assert (= b!3589916 b!3589917))

(assert (= b!3589915 b!3589916))

(assert (= (and b!3589246 ((_ is Cons!37721) (t!290876 rules!3307))) b!3589915))

(declare-fun m!4083833 () Bool)

(assert (=> b!3589916 m!4083833))

(declare-fun m!4083835 () Bool)

(assert (=> b!3589916 m!4083835))

(declare-fun e!2221172 () Bool)

(assert (=> b!3589242 (= tp!1098677 e!2221172)))

(declare-fun b!3589918 () Bool)

(assert (=> b!3589918 (= e!2221172 tp_is_empty!17737)))

(declare-fun b!3589921 () Bool)

(declare-fun tp!1098776 () Bool)

(declare-fun tp!1098778 () Bool)

(assert (=> b!3589921 (= e!2221172 (and tp!1098776 tp!1098778))))

(declare-fun b!3589920 () Bool)

(declare-fun tp!1098775 () Bool)

(assert (=> b!3589920 (= e!2221172 tp!1098775)))

(declare-fun b!3589919 () Bool)

(declare-fun tp!1098774 () Bool)

(declare-fun tp!1098777 () Bool)

(assert (=> b!3589919 (= e!2221172 (and tp!1098774 tp!1098777))))

(assert (= (and b!3589242 ((_ is ElementMatch!10327) (regex!5568 rule!403))) b!3589918))

(assert (= (and b!3589242 ((_ is Concat!16125) (regex!5568 rule!403))) b!3589919))

(assert (= (and b!3589242 ((_ is Star!10327) (regex!5568 rule!403))) b!3589920))

(assert (= (and b!3589242 ((_ is Union!10327) (regex!5568 rule!403))) b!3589921))

(declare-fun e!2221173 () Bool)

(assert (=> b!3589236 (= tp!1098678 e!2221173)))

(declare-fun b!3589922 () Bool)

(assert (=> b!3589922 (= e!2221173 tp_is_empty!17737)))

(declare-fun b!3589925 () Bool)

(declare-fun tp!1098781 () Bool)

(declare-fun tp!1098783 () Bool)

(assert (=> b!3589925 (= e!2221173 (and tp!1098781 tp!1098783))))

(declare-fun b!3589924 () Bool)

(declare-fun tp!1098780 () Bool)

(assert (=> b!3589924 (= e!2221173 tp!1098780)))

(declare-fun b!3589923 () Bool)

(declare-fun tp!1098779 () Bool)

(declare-fun tp!1098782 () Bool)

(assert (=> b!3589923 (= e!2221173 (and tp!1098779 tp!1098782))))

(assert (= (and b!3589236 ((_ is ElementMatch!10327) (regex!5568 (h!43141 rules!3307)))) b!3589922))

(assert (= (and b!3589236 ((_ is Concat!16125) (regex!5568 (h!43141 rules!3307)))) b!3589923))

(assert (= (and b!3589236 ((_ is Star!10327) (regex!5568 (h!43141 rules!3307)))) b!3589924))

(assert (= (and b!3589236 ((_ is Union!10327) (regex!5568 (h!43141 rules!3307)))) b!3589925))

(declare-fun b!3589926 () Bool)

(declare-fun e!2221174 () Bool)

(declare-fun tp!1098784 () Bool)

(assert (=> b!3589926 (= e!2221174 (and tp_is_empty!17737 tp!1098784))))

(assert (=> b!3589227 (= tp!1098676 e!2221174)))

(assert (= (and b!3589227 ((_ is Cons!37720) (originalCharacters!6282 token!511))) b!3589926))

(declare-fun b_lambda!106067 () Bool)

(assert (= b_lambda!106065 (or (and b!3589232 b_free!92483 (= (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589245 b_free!92475 (= (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589225 b_free!92487) (and b!3589917 b_free!92495 (= (toChars!7711 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589243 b_free!92479 (= (toChars!7711 (transformation!5568 rule!403)) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) b_lambda!106067)))

(declare-fun b_lambda!106069 () Bool)

(assert (= b_lambda!106063 (or (and b!3589232 b_free!92483 (= (toChars!7711 (transformation!5568 (h!43141 rules!3307))) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589245 b_free!92475 (= (toChars!7711 (transformation!5568 anOtherTypeRule!33)) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589225 b_free!92487) (and b!3589917 b_free!92495 (= (toChars!7711 (transformation!5568 (h!43141 (t!290876 rules!3307)))) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) (and b!3589243 b_free!92479 (= (toChars!7711 (transformation!5568 rule!403)) (toChars!7711 (transformation!5568 (rule!8284 token!511))))) b_lambda!106069)))

(check-sat (not b!3589571) (not d!1058387) (not b!3589925) (not b!3589450) (not b!3589417) (not b!3589529) (not b!3589253) (not b_next!93197) (not b!3589383) (not b!3589428) (not d!1058351) (not b!3589573) (not b!3589895) b_and!259517 (not b!3589856) (not b!3589897) (not b!3589849) (not d!1058309) (not b!3589896) (not d!1058359) (not b!3589535) (not b!3589853) (not b!3589906) (not b!3589538) (not b!3589859) (not b!3589794) (not b_next!93189) (not d!1058347) (not b!3589378) (not b!3589534) (not b_lambda!106059) (not d!1058489) b_and!259515 (not d!1058495) (not b_lambda!106069) (not b_next!93185) (not b!3589916) (not b!3589381) (not b!3589842) (not bm!259908) tp_is_empty!17737 (not d!1058345) (not b!3589787) (not b!3589843) (not b!3589594) (not b_next!93177) (not b!3589488) (not d!1058395) (not b!3589405) (not b!3589875) (not b!3589460) (not d!1058305) (not d!1058469) (not b!3589850) (not d!1058497) (not b!3589841) (not b!3589454) b_and!259513 (not d!1058297) (not b!3589449) (not d!1058311) (not d!1058467) (not bm!259903) (not bm!259884) (not b!3589457) (not b!3589375) (not b_next!93183) (not b!3589568) (not b!3589561) (not b!3589536) b_and!259497 (not b!3589283) (not b!3589558) (not d!1058493) (not b!3589452) (not d!1058403) (not b!3589919) (not b_lambda!106035) (not b!3589487) (not tb!204879) (not b!3589456) (not d!1058353) (not b_next!93199) (not b!3589810) (not tb!204855) (not b!3589846) b_and!259495 (not d!1058473) (not b!3589923) (not d!1058505) (not b!3589851) (not b!3589915) (not d!1058343) (not bm!259911) (not b!3589872) (not d!1058471) (not bm!259906) (not b_lambda!106057) (not bm!259909) (not b!3589416) (not d!1058337) (not d!1058503) (not bm!259907) b_and!259521 (not d!1058481) (not b!3589377) (not bm!259879) (not b!3589540) (not b!3589862) (not d!1058485) (not b!3589587) b_and!259501 (not b!3589588) (not bm!259905) (not b_next!93181) (not b!3589563) (not b!3589562) b_and!259519 (not b!3589565) (not b!3589274) (not b!3589858) (not b!3589527) (not d!1058501) (not tb!204871) (not b!3589852) (not b!3589836) b_and!259511 (not b!3589567) (not b_next!93187) (not d!1058333) (not b!3589844) (not b!3589926) (not b!3589429) (not b_lambda!106061) (not b_lambda!106067) (not d!1058475) (not b!3589854) (not b!3589899) (not b!3589406) (not d!1058499) (not b!3589486) (not d!1058355) (not b!3589531) (not b!3589901) (not b_next!93191) (not tb!204797) (not b!3589900) (not d!1058361) (not bm!259882) (not b!3589453) (not b!3589455) (not tb!204863) b_and!259499 (not b!3589921) (not b!3589920) (not b_lambda!106055) (not d!1058363) (not bm!259902) (not b!3589864) (not b!3589400) (not b!3589418) (not d!1058405) (not d!1058371) (not d!1058491) (not b!3589459) (not b!3589539) (not b!3589545) (not b!3589924) (not b!3589845) (not b_next!93179) (not b!3589848) (not b!3589795) (not b!3589373))
(check-sat (not b_next!93197) b_and!259517 (not b_next!93189) (not b_next!93177) b_and!259513 (not b_next!93183) b_and!259497 (not b_next!93199) b_and!259495 b_and!259521 b_and!259511 (not b_next!93187) (not b_next!93191) b_and!259499 (not b_next!93179) b_and!259515 (not b_next!93185) (not b_next!93181) b_and!259501 b_and!259519)
