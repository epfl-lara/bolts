; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302630 () Bool)

(assert start!302630)

(declare-fun b!3222043 () Bool)

(declare-fun b_free!85713 () Bool)

(declare-fun b_next!86417 () Bool)

(assert (=> b!3222043 (= b_free!85713 (not b_next!86417))))

(declare-fun tp!1015042 () Bool)

(declare-fun b_and!215415 () Bool)

(assert (=> b!3222043 (= tp!1015042 b_and!215415)))

(declare-fun b_free!85715 () Bool)

(declare-fun b_next!86419 () Bool)

(assert (=> b!3222043 (= b_free!85715 (not b_next!86419))))

(declare-fun tp!1015043 () Bool)

(declare-fun b_and!215417 () Bool)

(assert (=> b!3222043 (= tp!1015043 b_and!215417)))

(declare-fun b!3222048 () Bool)

(declare-fun b_free!85717 () Bool)

(declare-fun b_next!86421 () Bool)

(assert (=> b!3222048 (= b_free!85717 (not b_next!86421))))

(declare-fun tp!1015049 () Bool)

(declare-fun b_and!215419 () Bool)

(assert (=> b!3222048 (= tp!1015049 b_and!215419)))

(declare-fun b_free!85719 () Bool)

(declare-fun b_next!86423 () Bool)

(assert (=> b!3222048 (= b_free!85719 (not b_next!86423))))

(declare-fun tp!1015052 () Bool)

(declare-fun b_and!215421 () Bool)

(assert (=> b!3222048 (= tp!1015052 b_and!215421)))

(declare-fun b!3222078 () Bool)

(declare-fun b_free!85721 () Bool)

(declare-fun b_next!86425 () Bool)

(assert (=> b!3222078 (= b_free!85721 (not b_next!86425))))

(declare-fun tp!1015047 () Bool)

(declare-fun b_and!215423 () Bool)

(assert (=> b!3222078 (= tp!1015047 b_and!215423)))

(declare-fun b_free!85723 () Bool)

(declare-fun b_next!86427 () Bool)

(assert (=> b!3222078 (= b_free!85723 (not b_next!86427))))

(declare-fun tp!1015048 () Bool)

(declare-fun b_and!215425 () Bool)

(assert (=> b!3222078 (= tp!1015048 b_and!215425)))

(declare-fun bs!542619 () Bool)

(declare-fun b!3222066 () Bool)

(declare-fun b!3222084 () Bool)

(assert (= bs!542619 (and b!3222066 b!3222084)))

(declare-fun lambda!117839 () Int)

(declare-fun lambda!117838 () Int)

(assert (=> bs!542619 (not (= lambda!117839 lambda!117838))))

(declare-fun b!3222096 () Bool)

(declare-fun e!2009198 () Bool)

(assert (=> b!3222096 (= e!2009198 true)))

(declare-fun b!3222095 () Bool)

(declare-fun e!2009197 () Bool)

(assert (=> b!3222095 (= e!2009197 e!2009198)))

(declare-fun b!3222094 () Bool)

(declare-fun e!2009196 () Bool)

(assert (=> b!3222094 (= e!2009196 e!2009197)))

(assert (=> b!3222066 e!2009196))

(assert (= b!3222095 b!3222096))

(assert (= b!3222094 b!3222095))

(declare-datatypes ((C!20188 0))(
  ( (C!20189 (val!12142 Int)) )
))
(declare-datatypes ((Regex!10001 0))(
  ( (ElementMatch!10001 (c!541732 C!20188)) (Concat!15473 (regOne!20514 Regex!10001) (regTwo!20514 Regex!10001)) (EmptyExpr!10001) (Star!10001 (reg!10330 Regex!10001)) (EmptyLang!10001) (Union!10001 (regOne!20515 Regex!10001) (regTwo!20515 Regex!10001)) )
))
(declare-datatypes ((List!36378 0))(
  ( (Nil!36254) (Cons!36254 (h!41674 (_ BitVec 16)) (t!240563 List!36378)) )
))
(declare-datatypes ((TokenValue!5472 0))(
  ( (FloatLiteralValue!10944 (text!38749 List!36378)) (TokenValueExt!5471 (__x!23161 Int)) (Broken!27360 (value!169831 List!36378)) (Object!5595) (End!5472) (Def!5472) (Underscore!5472) (Match!5472) (Else!5472) (Error!5472) (Case!5472) (If!5472) (Extends!5472) (Abstract!5472) (Class!5472) (Val!5472) (DelimiterValue!10944 (del!5532 List!36378)) (KeywordValue!5478 (value!169832 List!36378)) (CommentValue!10944 (value!169833 List!36378)) (WhitespaceValue!10944 (value!169834 List!36378)) (IndentationValue!5472 (value!169835 List!36378)) (String!40693) (Int32!5472) (Broken!27361 (value!169836 List!36378)) (Boolean!5473) (Unit!50829) (OperatorValue!5475 (op!5532 List!36378)) (IdentifierValue!10944 (value!169837 List!36378)) (IdentifierValue!10945 (value!169838 List!36378)) (WhitespaceValue!10945 (value!169839 List!36378)) (True!10944) (False!10944) (Broken!27362 (value!169840 List!36378)) (Broken!27363 (value!169841 List!36378)) (True!10945) (RightBrace!5472) (RightBracket!5472) (Colon!5472) (Null!5472) (Comma!5472) (LeftBracket!5472) (False!10945) (LeftBrace!5472) (ImaginaryLiteralValue!5472 (text!38750 List!36378)) (StringLiteralValue!16416 (value!169842 List!36378)) (EOFValue!5472 (value!169843 List!36378)) (IdentValue!5472 (value!169844 List!36378)) (DelimiterValue!10945 (value!169845 List!36378)) (DedentValue!5472 (value!169846 List!36378)) (NewLineValue!5472 (value!169847 List!36378)) (IntegerValue!16416 (value!169848 (_ BitVec 32)) (text!38751 List!36378)) (IntegerValue!16417 (value!169849 Int) (text!38752 List!36378)) (Times!5472) (Or!5472) (Equal!5472) (Minus!5472) (Broken!27364 (value!169850 List!36378)) (And!5472) (Div!5472) (LessEqual!5472) (Mod!5472) (Concat!15474) (Not!5472) (Plus!5472) (SpaceValue!5472 (value!169851 List!36378)) (IntegerValue!16418 (value!169852 Int) (text!38753 List!36378)) (StringLiteralValue!16417 (text!38754 List!36378)) (FloatLiteralValue!10945 (text!38755 List!36378)) (BytesLiteralValue!5472 (value!169853 List!36378)) (CommentValue!10945 (value!169854 List!36378)) (StringLiteralValue!16418 (value!169855 List!36378)) (ErrorTokenValue!5472 (msg!5533 List!36378)) )
))
(declare-datatypes ((List!36379 0))(
  ( (Nil!36255) (Cons!36255 (h!41675 C!20188) (t!240564 List!36379)) )
))
(declare-datatypes ((IArray!21723 0))(
  ( (IArray!21724 (innerList!10919 List!36379)) )
))
(declare-datatypes ((Conc!10859 0))(
  ( (Node!10859 (left!28214 Conc!10859) (right!28544 Conc!10859) (csize!21948 Int) (cheight!11070 Int)) (Leaf!17091 (xs!13977 IArray!21723) (csize!21949 Int)) (Empty!10859) )
))
(declare-datatypes ((BalanceConc!21332 0))(
  ( (BalanceConc!21333 (c!541733 Conc!10859)) )
))
(declare-datatypes ((String!40694 0))(
  ( (String!40695 (value!169856 String)) )
))
(declare-datatypes ((TokenValueInjection!10372 0))(
  ( (TokenValueInjection!10373 (toValue!7338 Int) (toChars!7197 Int)) )
))
(declare-datatypes ((Rule!10284 0))(
  ( (Rule!10285 (regex!5242 Regex!10001) (tag!5774 String!40694) (isSeparator!5242 Bool) (transformation!5242 TokenValueInjection!10372)) )
))
(declare-datatypes ((List!36380 0))(
  ( (Nil!36256) (Cons!36256 (h!41676 Rule!10284) (t!240565 List!36380)) )
))
(declare-fun rules!2135 () List!36380)

(get-info :version)

(assert (= (and b!3222066 ((_ is Cons!36256) rules!2135)) b!3222094))

(declare-fun order!18607 () Int)

(declare-fun order!18605 () Int)

(declare-fun dynLambda!14691 (Int Int) Int)

(declare-fun dynLambda!14692 (Int Int) Int)

(assert (=> b!3222096 (< (dynLambda!14691 order!18605 (toValue!7338 (transformation!5242 (h!41676 rules!2135)))) (dynLambda!14692 order!18607 lambda!117839))))

(declare-fun order!18609 () Int)

(declare-fun dynLambda!14693 (Int Int) Int)

(assert (=> b!3222096 (< (dynLambda!14693 order!18609 (toChars!7197 (transformation!5242 (h!41676 rules!2135)))) (dynLambda!14692 order!18607 lambda!117839))))

(assert (=> b!3222066 true))

(declare-fun e!2009167 () Bool)

(assert (=> b!3222043 (= e!2009167 (and tp!1015042 tp!1015043))))

(declare-fun b!3222044 () Bool)

(declare-fun res!1311974 () Bool)

(declare-fun e!2009174 () Bool)

(assert (=> b!3222044 (=> (not res!1311974) (not e!2009174))))

(declare-fun isEmpty!20353 (List!36380) Bool)

(assert (=> b!3222044 (= res!1311974 (not (isEmpty!20353 rules!2135)))))

(declare-fun tp!1015041 () Bool)

(declare-fun b!3222045 () Bool)

(declare-datatypes ((Token!9850 0))(
  ( (Token!9851 (value!169857 TokenValue!5472) (rule!7700 Rule!10284) (size!27337 Int) (originalCharacters!5956 List!36379)) )
))
(declare-datatypes ((List!36381 0))(
  ( (Nil!36257) (Cons!36257 (h!41677 Token!9850) (t!240566 List!36381)) )
))
(declare-fun tokens!494 () List!36381)

(declare-fun e!2009185 () Bool)

(declare-fun e!2009181 () Bool)

(declare-fun inv!49127 (Token!9850) Bool)

(assert (=> b!3222045 (= e!2009185 (and (inv!49127 (h!41677 tokens!494)) e!2009181 tp!1015041))))

(declare-fun e!2009186 () Bool)

(declare-fun b!3222046 () Bool)

(declare-fun tp!1015050 () Bool)

(declare-fun inv!49124 (String!40694) Bool)

(declare-fun inv!49128 (TokenValueInjection!10372) Bool)

(assert (=> b!3222046 (= e!2009186 (and tp!1015050 (inv!49124 (tag!5774 (rule!7700 (h!41677 tokens!494)))) (inv!49128 (transformation!5242 (rule!7700 (h!41677 tokens!494)))) e!2009167))))

(declare-fun b!3222047 () Bool)

(declare-fun tp!1015051 () Bool)

(declare-fun inv!21 (TokenValue!5472) Bool)

(assert (=> b!3222047 (= e!2009181 (and (inv!21 (value!169857 (h!41677 tokens!494))) e!2009186 tp!1015051))))

(declare-fun e!2009170 () Bool)

(assert (=> b!3222048 (= e!2009170 (and tp!1015049 tp!1015052))))

(declare-fun b!3222049 () Bool)

(declare-fun e!2009182 () Bool)

(declare-fun e!2009169 () Bool)

(assert (=> b!3222049 (= e!2009182 e!2009169)))

(declare-fun res!1311968 () Bool)

(assert (=> b!3222049 (=> res!1311968 e!2009169)))

(declare-fun lt!1092081 () BalanceConc!21332)

(declare-datatypes ((LexerInterface!4831 0))(
  ( (LexerInterfaceExt!4828 (__x!23162 Int)) (Lexer!4829) )
))
(declare-fun thiss!18206 () LexerInterface!4831)

(declare-datatypes ((IArray!21725 0))(
  ( (IArray!21726 (innerList!10920 List!36381)) )
))
(declare-datatypes ((Conc!10860 0))(
  ( (Node!10860 (left!28215 Conc!10860) (right!28545 Conc!10860) (csize!21950 Int) (cheight!11071 Int)) (Leaf!17092 (xs!13978 IArray!21725) (csize!21951 Int)) (Empty!10860) )
))
(declare-datatypes ((BalanceConc!21334 0))(
  ( (BalanceConc!21335 (c!541734 Conc!10860)) )
))
(declare-fun isEmpty!20354 (BalanceConc!21334) Bool)

(declare-datatypes ((tuple2!35682 0))(
  ( (tuple2!35683 (_1!20975 BalanceConc!21334) (_2!20975 BalanceConc!21332)) )
))
(declare-fun lex!2161 (LexerInterface!4831 List!36380 BalanceConc!21332) tuple2!35682)

(assert (=> b!3222049 (= res!1311968 (isEmpty!20354 (_1!20975 (lex!2161 thiss!18206 rules!2135 lt!1092081))))))

(declare-fun lt!1092098 () List!36379)

(declare-fun seqFromList!3555 (List!36379) BalanceConc!21332)

(assert (=> b!3222049 (= lt!1092081 (seqFromList!3555 lt!1092098))))

(declare-fun b!3222050 () Bool)

(declare-fun res!1311959 () Bool)

(declare-fun e!2009165 () Bool)

(assert (=> b!3222050 (=> (not res!1311959) (not e!2009165))))

(declare-fun lt!1092107 () tuple2!35682)

(declare-fun separatorToken!241 () Token!9850)

(declare-fun apply!8251 (BalanceConc!21334 Int) Token!9850)

(assert (=> b!3222050 (= res!1311959 (= (apply!8251 (_1!20975 lt!1092107) 0) separatorToken!241))))

(declare-fun b!3222051 () Bool)

(declare-fun e!2009159 () Bool)

(declare-fun e!2009175 () Bool)

(assert (=> b!3222051 (= e!2009159 e!2009175)))

(declare-fun res!1311966 () Bool)

(assert (=> b!3222051 (=> (not res!1311966) (not e!2009175))))

(declare-fun lt!1092114 () Rule!10284)

(declare-fun lt!1092109 () List!36379)

(declare-fun matchR!4635 (Regex!10001 List!36379) Bool)

(assert (=> b!3222051 (= res!1311966 (matchR!4635 (regex!5242 lt!1092114) lt!1092109))))

(declare-datatypes ((Option!7189 0))(
  ( (None!7188) (Some!7188 (v!35768 Rule!10284)) )
))
(declare-fun lt!1092084 () Option!7189)

(declare-fun get!11554 (Option!7189) Rule!10284)

(assert (=> b!3222051 (= lt!1092114 (get!11554 lt!1092084))))

(declare-fun b!3222052 () Bool)

(declare-fun e!2009155 () Bool)

(declare-fun e!2009180 () Bool)

(assert (=> b!3222052 (= e!2009155 e!2009180)))

(declare-fun res!1311958 () Bool)

(assert (=> b!3222052 (=> (not res!1311958) (not e!2009180))))

(declare-fun lt!1092101 () Rule!10284)

(declare-fun lt!1092090 () List!36379)

(assert (=> b!3222052 (= res!1311958 (matchR!4635 (regex!5242 lt!1092101) lt!1092090))))

(declare-fun lt!1092124 () Option!7189)

(assert (=> b!3222052 (= lt!1092101 (get!11554 lt!1092124))))

(declare-fun b!3222053 () Bool)

(declare-fun e!2009164 () Bool)

(declare-fun e!2009173 () Bool)

(assert (=> b!3222053 (= e!2009164 e!2009173)))

(declare-fun res!1311957 () Bool)

(assert (=> b!3222053 (=> res!1311957 e!2009173)))

(declare-fun lt!1092122 () List!36379)

(declare-fun ++!8716 (List!36379 List!36379) List!36379)

(declare-fun printWithSeparatorTokenList!176 (LexerInterface!4831 List!36381 Token!9850) List!36379)

(assert (=> b!3222053 (= res!1311957 (not (= lt!1092122 (++!8716 (++!8716 lt!1092109 lt!1092090) (printWithSeparatorTokenList!176 thiss!18206 (t!240566 (t!240566 tokens!494)) separatorToken!241)))))))

(declare-fun list!12908 (BalanceConc!21332) List!36379)

(declare-fun charsOf!3258 (Token!9850) BalanceConc!21332)

(assert (=> b!3222053 (= lt!1092109 (list!12908 (charsOf!3258 (h!41677 (t!240566 tokens!494)))))))

(declare-fun lt!1092077 () List!36379)

(assert (=> b!3222053 (= lt!1092077 (++!8716 lt!1092090 lt!1092122))))

(assert (=> b!3222053 (= lt!1092090 (list!12908 (charsOf!3258 separatorToken!241)))))

(assert (=> b!3222053 (= lt!1092122 (printWithSeparatorTokenList!176 thiss!18206 (t!240566 tokens!494) separatorToken!241))))

(declare-fun lt!1092086 () List!36379)

(assert (=> b!3222053 (= lt!1092086 (printWithSeparatorTokenList!176 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3222054 () Bool)

(declare-fun e!2009166 () Bool)

(declare-fun lt!1092113 () Rule!10284)

(assert (=> b!3222054 (= e!2009166 (= (rule!7700 (h!41677 tokens!494)) lt!1092113))))

(declare-fun b!3222055 () Bool)

(declare-fun res!1311967 () Bool)

(assert (=> b!3222055 (=> (not res!1311967) (not e!2009174))))

(declare-fun rulesProduceEachTokenIndividually!1282 (LexerInterface!4831 List!36380 BalanceConc!21334) Bool)

(declare-fun seqFromList!3556 (List!36381) BalanceConc!21334)

(assert (=> b!3222055 (= res!1311967 (rulesProduceEachTokenIndividually!1282 thiss!18206 rules!2135 (seqFromList!3556 tokens!494)))))

(declare-fun b!3222056 () Bool)

(declare-fun res!1311950 () Bool)

(assert (=> b!3222056 (=> (not res!1311950) (not e!2009174))))

(declare-fun rulesInvariant!4228 (LexerInterface!4831 List!36380) Bool)

(assert (=> b!3222056 (= res!1311950 (rulesInvariant!4228 thiss!18206 rules!2135))))

(declare-fun e!2009171 () Bool)

(declare-fun b!3222057 () Bool)

(declare-fun tp!1015044 () Bool)

(assert (=> b!3222057 (= e!2009171 (and tp!1015044 (inv!49124 (tag!5774 (h!41676 rules!2135))) (inv!49128 (transformation!5242 (h!41676 rules!2135))) e!2009170))))

(declare-fun b!3222058 () Bool)

(declare-fun e!2009160 () Bool)

(declare-fun lt!1092106 () tuple2!35682)

(declare-fun isEmpty!20355 (BalanceConc!21332) Bool)

(assert (=> b!3222058 (= e!2009160 (not (isEmpty!20355 (_2!20975 lt!1092106))))))

(declare-fun b!3222059 () Bool)

(declare-datatypes ((Unit!50830 0))(
  ( (Unit!50831) )
))
(declare-fun e!2009187 () Unit!50830)

(declare-fun Unit!50832 () Unit!50830)

(assert (=> b!3222059 (= e!2009187 Unit!50832)))

(declare-fun b!3222060 () Bool)

(assert (=> b!3222060 (= e!2009169 e!2009164)))

(declare-fun res!1311975 () Bool)

(assert (=> b!3222060 (=> res!1311975 e!2009164)))

(assert (=> b!3222060 (= res!1311975 (or (isSeparator!5242 (rule!7700 (h!41677 tokens!494))) (isSeparator!5242 (rule!7700 (h!41677 (t!240566 tokens!494))))))))

(declare-fun lt!1092078 () Unit!50830)

(declare-fun forallContained!1213 (List!36381 Int Token!9850) Unit!50830)

(assert (=> b!3222060 (= lt!1092078 (forallContained!1213 tokens!494 lambda!117838 (h!41677 (t!240566 tokens!494))))))

(declare-fun lt!1092087 () Unit!50830)

(assert (=> b!3222060 (= lt!1092087 (forallContained!1213 tokens!494 lambda!117838 (h!41677 tokens!494)))))

(declare-fun b!3222061 () Bool)

(declare-fun res!1311965 () Bool)

(assert (=> b!3222061 (=> res!1311965 e!2009182)))

(declare-fun rulesProduceIndividualToken!2323 (LexerInterface!4831 List!36380 Token!9850) Bool)

(assert (=> b!3222061 (= res!1311965 (not (rulesProduceIndividualToken!2323 thiss!18206 rules!2135 (h!41677 tokens!494))))))

(declare-fun b!3222062 () Bool)

(declare-fun tp!1015040 () Bool)

(declare-fun e!2009162 () Bool)

(declare-fun e!2009161 () Bool)

(assert (=> b!3222062 (= e!2009162 (and tp!1015040 (inv!49124 (tag!5774 (rule!7700 separatorToken!241))) (inv!49128 (transformation!5242 (rule!7700 separatorToken!241))) e!2009161))))

(declare-fun b!3222063 () Bool)

(declare-fun e!2009184 () Unit!50830)

(declare-fun Unit!50833 () Unit!50830)

(assert (=> b!3222063 (= e!2009184 Unit!50833)))

(declare-fun b!3222064 () Bool)

(declare-fun e!2009163 () Bool)

(declare-fun tp!1015046 () Bool)

(assert (=> b!3222064 (= e!2009163 (and e!2009171 tp!1015046))))

(declare-fun b!3222065 () Bool)

(declare-fun Unit!50834 () Unit!50830)

(assert (=> b!3222065 (= e!2009187 Unit!50834)))

(declare-fun lt!1092111 () C!20188)

(declare-fun lt!1092082 () Unit!50830)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!406 (Regex!10001 List!36379 C!20188) Unit!50830)

(assert (=> b!3222065 (= lt!1092082 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!406 (regex!5242 (rule!7700 separatorToken!241)) lt!1092090 lt!1092111))))

(declare-fun res!1311976 () Bool)

(assert (=> b!3222065 (= res!1311976 (not (matchR!4635 (regex!5242 (rule!7700 separatorToken!241)) lt!1092090)))))

(declare-fun e!2009158 () Bool)

(assert (=> b!3222065 (=> (not res!1311976) (not e!2009158))))

(assert (=> b!3222065 e!2009158))

(declare-fun e!2009188 () Bool)

(assert (=> b!3222066 (= e!2009188 true)))

(declare-fun filter!510 (List!36381 Int) List!36381)

(declare-fun list!12909 (BalanceConc!21334) List!36381)

(declare-fun printWithSeparatorToken!60 (LexerInterface!4831 BalanceConc!21334 Token!9850) BalanceConc!21332)

(assert (=> b!3222066 (= (filter!510 (list!12909 (_1!20975 (lex!2161 thiss!18206 rules!2135 (printWithSeparatorToken!60 thiss!18206 (seqFromList!3556 (t!240566 tokens!494)) separatorToken!241)))) lambda!117838) (t!240566 tokens!494))))

(declare-fun lt!1092115 () Unit!50830)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!2 (LexerInterface!4831 List!36380 List!36381 Token!9850) Unit!50830)

(assert (=> b!3222066 (= lt!1092115 (theoremInvertFromTokensSepTokenBetweenEach!2 thiss!18206 rules!2135 (t!240566 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!35684 0))(
  ( (tuple2!35685 (_1!20976 Token!9850) (_2!20976 List!36379)) )
))
(declare-datatypes ((Option!7190 0))(
  ( (None!7189) (Some!7189 (v!35769 tuple2!35684)) )
))
(declare-fun maxPrefix!2473 (LexerInterface!4831 List!36380 List!36379) Option!7190)

(assert (=> b!3222066 (= (maxPrefix!2473 thiss!18206 rules!2135 lt!1092077) (Some!7189 (tuple2!35685 separatorToken!241 lt!1092122)))))

(declare-fun lt!1092118 () Unit!50830)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!166 (LexerInterface!4831 List!36380 Token!9850 Rule!10284 List!36379 Rule!10284) Unit!50830)

(assert (=> b!3222066 (= lt!1092118 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!166 thiss!18206 rules!2135 separatorToken!241 (rule!7700 separatorToken!241) lt!1092122 (rule!7700 (h!41677 (t!240566 tokens!494)))))))

(declare-fun lt!1092089 () List!36379)

(declare-fun lt!1092095 () C!20188)

(declare-fun contains!6501 (List!36379 C!20188) Bool)

(assert (=> b!3222066 (not (contains!6501 lt!1092089 lt!1092095))))

(declare-fun lt!1092099 () Unit!50830)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!150 (LexerInterface!4831 List!36380 List!36380 Rule!10284 Rule!10284 C!20188) Unit!50830)

(assert (=> b!3222066 (= lt!1092099 (lemmaSepRuleNotContainsCharContainedInANonSepRule!150 thiss!18206 rules!2135 rules!2135 (rule!7700 (h!41677 (t!240566 tokens!494))) (rule!7700 separatorToken!241) lt!1092095))))

(declare-fun lt!1092091 () Unit!50830)

(assert (=> b!3222066 (= lt!1092091 e!2009184)))

(declare-fun c!541731 () Bool)

(declare-fun usedCharacters!558 (Regex!10001) List!36379)

(assert (=> b!3222066 (= c!541731 (not (contains!6501 (usedCharacters!558 (regex!5242 (rule!7700 (h!41677 (t!240566 tokens!494))))) lt!1092095)))))

(declare-fun head!7067 (List!36379) C!20188)

(assert (=> b!3222066 (= lt!1092095 (head!7067 lt!1092109))))

(declare-fun maxPrefixOneRule!1610 (LexerInterface!4831 Rule!10284 List!36379) Option!7190)

(declare-fun apply!8252 (TokenValueInjection!10372 BalanceConc!21332) TokenValue!5472)

(declare-fun size!27338 (List!36379) Int)

(assert (=> b!3222066 (= (maxPrefixOneRule!1610 thiss!18206 (rule!7700 (h!41677 (t!240566 tokens!494))) lt!1092109) (Some!7189 (tuple2!35685 (Token!9851 (apply!8252 (transformation!5242 (rule!7700 (h!41677 (t!240566 tokens!494)))) (seqFromList!3555 lt!1092109)) (rule!7700 (h!41677 (t!240566 tokens!494))) (size!27338 lt!1092109) lt!1092109) Nil!36255)))))

(declare-fun lt!1092093 () Unit!50830)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!723 (LexerInterface!4831 List!36380 List!36379 List!36379 List!36379 Rule!10284) Unit!50830)

(assert (=> b!3222066 (= lt!1092093 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!723 thiss!18206 rules!2135 lt!1092109 lt!1092109 Nil!36255 (rule!7700 (h!41677 (t!240566 tokens!494)))))))

(assert (=> b!3222066 e!2009159))

(declare-fun res!1311964 () Bool)

(assert (=> b!3222066 (=> (not res!1311964) (not e!2009159))))

(declare-fun isDefined!5580 (Option!7189) Bool)

(assert (=> b!3222066 (= res!1311964 (isDefined!5580 lt!1092084))))

(declare-fun getRuleFromTag!947 (LexerInterface!4831 List!36380 String!40694) Option!7189)

(assert (=> b!3222066 (= lt!1092084 (getRuleFromTag!947 thiss!18206 rules!2135 (tag!5774 (rule!7700 (h!41677 (t!240566 tokens!494))))))))

(declare-fun lt!1092080 () Unit!50830)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!947 (LexerInterface!4831 List!36380 List!36379 Token!9850) Unit!50830)

(assert (=> b!3222066 (= lt!1092080 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!947 thiss!18206 rules!2135 lt!1092109 (h!41677 (t!240566 tokens!494))))))

(declare-fun lt!1092083 () Bool)

(assert (=> b!3222066 lt!1092083))

(declare-fun lt!1092125 () Unit!50830)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!870 (LexerInterface!4831 List!36380 List!36381 Token!9850) Unit!50830)

(assert (=> b!3222066 (= lt!1092125 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!870 thiss!18206 rules!2135 tokens!494 (h!41677 (t!240566 tokens!494))))))

(declare-fun lt!1092123 () List!36379)

(assert (=> b!3222066 (= (maxPrefix!2473 thiss!18206 rules!2135 lt!1092123) (Some!7189 (tuple2!35685 (h!41677 tokens!494) lt!1092077)))))

(declare-fun lt!1092096 () Unit!50830)

(assert (=> b!3222066 (= lt!1092096 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!166 thiss!18206 rules!2135 (h!41677 tokens!494) (rule!7700 (h!41677 tokens!494)) lt!1092077 (rule!7700 separatorToken!241)))))

(assert (=> b!3222066 (not (contains!6501 (usedCharacters!558 (regex!5242 (rule!7700 (h!41677 tokens!494)))) lt!1092111))))

(declare-fun lt!1092126 () Unit!50830)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!166 (LexerInterface!4831 List!36380 List!36380 Rule!10284 Rule!10284 C!20188) Unit!50830)

(assert (=> b!3222066 (= lt!1092126 (lemmaNonSepRuleNotContainsCharContainedInASepRule!166 thiss!18206 rules!2135 rules!2135 (rule!7700 (h!41677 tokens!494)) (rule!7700 separatorToken!241) lt!1092111))))

(declare-fun lt!1092097 () Unit!50830)

(assert (=> b!3222066 (= lt!1092097 (forallContained!1213 tokens!494 lambda!117839 (h!41677 (t!240566 tokens!494))))))

(declare-fun lt!1092117 () Bool)

(assert (=> b!3222066 (= lt!1092083 (not lt!1092117))))

(assert (=> b!3222066 (= lt!1092083 (rulesProduceIndividualToken!2323 thiss!18206 rules!2135 (h!41677 (t!240566 tokens!494))))))

(assert (=> b!3222066 (= lt!1092117 e!2009160)))

(declare-fun res!1311951 () Bool)

(assert (=> b!3222066 (=> res!1311951 e!2009160)))

(declare-fun size!27339 (BalanceConc!21334) Int)

(assert (=> b!3222066 (= res!1311951 (not (= (size!27339 (_1!20975 lt!1092106)) 1)))))

(declare-fun lt!1092105 () BalanceConc!21332)

(assert (=> b!3222066 (= lt!1092106 (lex!2161 thiss!18206 rules!2135 lt!1092105))))

(declare-fun lt!1092112 () BalanceConc!21334)

(declare-fun printTailRec!1328 (LexerInterface!4831 BalanceConc!21334 Int BalanceConc!21332) BalanceConc!21332)

(assert (=> b!3222066 (= lt!1092105 (printTailRec!1328 thiss!18206 lt!1092112 0 (BalanceConc!21333 Empty!10859)))))

(declare-fun print!1896 (LexerInterface!4831 BalanceConc!21334) BalanceConc!21332)

(assert (=> b!3222066 (= lt!1092105 (print!1896 thiss!18206 lt!1092112))))

(declare-fun singletonSeq!2338 (Token!9850) BalanceConc!21334)

(assert (=> b!3222066 (= lt!1092112 (singletonSeq!2338 (h!41677 (t!240566 tokens!494))))))

(assert (=> b!3222066 e!2009165))

(declare-fun res!1311969 () Bool)

(assert (=> b!3222066 (=> (not res!1311969) (not e!2009165))))

(assert (=> b!3222066 (= res!1311969 (= (size!27339 (_1!20975 lt!1092107)) 1))))

(declare-fun lt!1092116 () BalanceConc!21332)

(assert (=> b!3222066 (= lt!1092107 (lex!2161 thiss!18206 rules!2135 lt!1092116))))

(declare-fun lt!1092085 () BalanceConc!21334)

(assert (=> b!3222066 (= lt!1092116 (printTailRec!1328 thiss!18206 lt!1092085 0 (BalanceConc!21333 Empty!10859)))))

(assert (=> b!3222066 (= lt!1092116 (print!1896 thiss!18206 lt!1092085))))

(assert (=> b!3222066 (= lt!1092085 (singletonSeq!2338 separatorToken!241))))

(declare-fun lt!1092094 () Unit!50830)

(assert (=> b!3222066 (= lt!1092094 e!2009187)))

(declare-fun c!541730 () Bool)

(assert (=> b!3222066 (= c!541730 (not (contains!6501 lt!1092089 lt!1092111)))))

(assert (=> b!3222066 (= lt!1092111 (head!7067 lt!1092090))))

(assert (=> b!3222066 (= lt!1092089 (usedCharacters!558 (regex!5242 (rule!7700 separatorToken!241))))))

(assert (=> b!3222066 e!2009155))

(declare-fun res!1311955 () Bool)

(assert (=> b!3222066 (=> (not res!1311955) (not e!2009155))))

(assert (=> b!3222066 (= res!1311955 (isDefined!5580 lt!1092124))))

(assert (=> b!3222066 (= lt!1092124 (getRuleFromTag!947 thiss!18206 rules!2135 (tag!5774 (rule!7700 separatorToken!241))))))

(declare-fun lt!1092079 () Unit!50830)

(assert (=> b!3222066 (= lt!1092079 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!947 thiss!18206 rules!2135 lt!1092090 separatorToken!241))))

(assert (=> b!3222066 (= (maxPrefixOneRule!1610 thiss!18206 (rule!7700 (h!41677 tokens!494)) lt!1092098) (Some!7189 (tuple2!35685 (Token!9851 (apply!8252 (transformation!5242 (rule!7700 (h!41677 tokens!494))) lt!1092081) (rule!7700 (h!41677 tokens!494)) (size!27338 lt!1092098) lt!1092098) Nil!36255)))))

(declare-fun lt!1092119 () Unit!50830)

(assert (=> b!3222066 (= lt!1092119 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!723 thiss!18206 rules!2135 lt!1092098 lt!1092098 Nil!36255 (rule!7700 (h!41677 tokens!494))))))

(declare-fun e!2009183 () Bool)

(assert (=> b!3222066 e!2009183))

(declare-fun res!1311962 () Bool)

(assert (=> b!3222066 (=> (not res!1311962) (not e!2009183))))

(declare-fun lt!1092104 () Option!7189)

(assert (=> b!3222066 (= res!1311962 (isDefined!5580 lt!1092104))))

(assert (=> b!3222066 (= lt!1092104 (getRuleFromTag!947 thiss!18206 rules!2135 (tag!5774 (rule!7700 (h!41677 tokens!494)))))))

(declare-fun lt!1092100 () Unit!50830)

(assert (=> b!3222066 (= lt!1092100 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!947 thiss!18206 rules!2135 lt!1092098 (h!41677 tokens!494)))))

(declare-fun lt!1092102 () Unit!50830)

(assert (=> b!3222066 (= lt!1092102 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!870 thiss!18206 rules!2135 tokens!494 (h!41677 tokens!494)))))

(declare-fun b!3222067 () Bool)

(declare-fun e!2009157 () Bool)

(assert (=> b!3222067 (= e!2009173 e!2009157)))

(declare-fun res!1311954 () Bool)

(assert (=> b!3222067 (=> res!1311954 e!2009157)))

(declare-fun lt!1092088 () List!36379)

(assert (=> b!3222067 (= res!1311954 (not (= lt!1092086 lt!1092088)))))

(assert (=> b!3222067 (= lt!1092088 (++!8716 (++!8716 lt!1092098 lt!1092090) lt!1092122))))

(declare-fun b!3222068 () Bool)

(assert (=> b!3222068 (= e!2009165 (isEmpty!20355 (_2!20975 lt!1092107)))))

(declare-fun b!3222069 () Bool)

(assert (=> b!3222069 (= e!2009158 false)))

(declare-fun b!3222070 () Bool)

(assert (=> b!3222070 (= e!2009183 e!2009166)))

(declare-fun res!1311960 () Bool)

(assert (=> b!3222070 (=> (not res!1311960) (not e!2009166))))

(assert (=> b!3222070 (= res!1311960 (matchR!4635 (regex!5242 lt!1092113) lt!1092098))))

(assert (=> b!3222070 (= lt!1092113 (get!11554 lt!1092104))))

(declare-fun res!1311978 () Bool)

(assert (=> start!302630 (=> (not res!1311978) (not e!2009174))))

(assert (=> start!302630 (= res!1311978 ((_ is Lexer!4829) thiss!18206))))

(assert (=> start!302630 e!2009174))

(assert (=> start!302630 true))

(assert (=> start!302630 e!2009163))

(assert (=> start!302630 e!2009185))

(declare-fun e!2009176 () Bool)

(assert (=> start!302630 (and (inv!49127 separatorToken!241) e!2009176)))

(declare-fun b!3222071 () Bool)

(declare-fun e!2009178 () Bool)

(assert (=> b!3222071 (= e!2009174 (not e!2009178))))

(declare-fun res!1311971 () Bool)

(assert (=> b!3222071 (=> res!1311971 e!2009178)))

(declare-fun lt!1092103 () List!36379)

(declare-fun lt!1092110 () List!36379)

(assert (=> b!3222071 (= res!1311971 (not (= lt!1092103 lt!1092110)))))

(declare-fun printList!1381 (LexerInterface!4831 List!36381) List!36379)

(assert (=> b!3222071 (= lt!1092110 (printList!1381 thiss!18206 (Cons!36257 (h!41677 tokens!494) Nil!36257)))))

(declare-fun lt!1092120 () BalanceConc!21332)

(assert (=> b!3222071 (= lt!1092103 (list!12908 lt!1092120))))

(declare-fun lt!1092108 () BalanceConc!21334)

(assert (=> b!3222071 (= lt!1092120 (printTailRec!1328 thiss!18206 lt!1092108 0 (BalanceConc!21333 Empty!10859)))))

(assert (=> b!3222071 (= lt!1092120 (print!1896 thiss!18206 lt!1092108))))

(assert (=> b!3222071 (= lt!1092108 (singletonSeq!2338 (h!41677 tokens!494)))))

(declare-fun b!3222072 () Bool)

(declare-fun res!1311953 () Bool)

(assert (=> b!3222072 (=> (not res!1311953) (not e!2009174))))

(declare-fun sepAndNonSepRulesDisjointChars!1436 (List!36380 List!36380) Bool)

(assert (=> b!3222072 (= res!1311953 (sepAndNonSepRulesDisjointChars!1436 rules!2135 rules!2135))))

(declare-fun b!3222073 () Bool)

(assert (=> b!3222073 (= e!2009178 e!2009182)))

(declare-fun res!1311970 () Bool)

(assert (=> b!3222073 (=> res!1311970 e!2009182)))

(assert (=> b!3222073 (= res!1311970 (or (not (= lt!1092110 lt!1092098)) (not (= lt!1092103 lt!1092098))))))

(assert (=> b!3222073 (= lt!1092098 (list!12908 (charsOf!3258 (h!41677 tokens!494))))))

(declare-fun b!3222074 () Bool)

(declare-fun res!1311963 () Bool)

(assert (=> b!3222074 (=> (not res!1311963) (not e!2009174))))

(assert (=> b!3222074 (= res!1311963 (and (not ((_ is Nil!36257) tokens!494)) (not ((_ is Nil!36257) (t!240566 tokens!494)))))))

(declare-fun b!3222075 () Bool)

(assert (=> b!3222075 (= e!2009180 (= (rule!7700 separatorToken!241) lt!1092101))))

(declare-fun b!3222076 () Bool)

(declare-fun e!2009156 () Bool)

(assert (=> b!3222076 (= e!2009156 false)))

(declare-fun b!3222077 () Bool)

(assert (=> b!3222077 (= e!2009157 e!2009188)))

(declare-fun res!1311961 () Bool)

(assert (=> b!3222077 (=> res!1311961 e!2009188)))

(assert (=> b!3222077 (= res!1311961 (not (= lt!1092086 lt!1092123)))))

(assert (=> b!3222077 (= lt!1092088 lt!1092123)))

(assert (=> b!3222077 (= lt!1092123 (++!8716 lt!1092098 lt!1092077))))

(declare-fun lt!1092121 () Unit!50830)

(declare-fun lemmaConcatAssociativity!1770 (List!36379 List!36379 List!36379) Unit!50830)

(assert (=> b!3222077 (= lt!1092121 (lemmaConcatAssociativity!1770 lt!1092098 lt!1092090 lt!1092122))))

(assert (=> b!3222078 (= e!2009161 (and tp!1015047 tp!1015048))))

(declare-fun b!3222079 () Bool)

(declare-fun tp!1015045 () Bool)

(assert (=> b!3222079 (= e!2009176 (and (inv!21 (value!169857 separatorToken!241)) e!2009162 tp!1015045))))

(declare-fun b!3222080 () Bool)

(declare-fun Unit!50835 () Unit!50830)

(assert (=> b!3222080 (= e!2009184 Unit!50835)))

(declare-fun lt!1092092 () Unit!50830)

(assert (=> b!3222080 (= lt!1092092 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!406 (regex!5242 (rule!7700 (h!41677 (t!240566 tokens!494)))) lt!1092109 lt!1092095))))

(declare-fun res!1311977 () Bool)

(assert (=> b!3222080 (= res!1311977 (not (matchR!4635 (regex!5242 (rule!7700 (h!41677 (t!240566 tokens!494)))) lt!1092109)))))

(assert (=> b!3222080 (=> (not res!1311977) (not e!2009156))))

(assert (=> b!3222080 e!2009156))

(declare-fun b!3222081 () Bool)

(assert (=> b!3222081 (= e!2009175 (= (rule!7700 (h!41677 (t!240566 tokens!494))) lt!1092114))))

(declare-fun b!3222082 () Bool)

(declare-fun res!1311972 () Bool)

(assert (=> b!3222082 (=> (not res!1311972) (not e!2009174))))

(assert (=> b!3222082 (= res!1311972 (isSeparator!5242 (rule!7700 separatorToken!241)))))

(declare-fun b!3222083 () Bool)

(declare-fun res!1311973 () Bool)

(assert (=> b!3222083 (=> res!1311973 e!2009160)))

(assert (=> b!3222083 (= res!1311973 (not (= (apply!8251 (_1!20975 lt!1092106) 0) (h!41677 (t!240566 tokens!494)))))))

(declare-fun res!1311956 () Bool)

(assert (=> b!3222084 (=> (not res!1311956) (not e!2009174))))

(declare-fun forall!7424 (List!36381 Int) Bool)

(assert (=> b!3222084 (= res!1311956 (forall!7424 tokens!494 lambda!117838))))

(declare-fun b!3222085 () Bool)

(declare-fun res!1311952 () Bool)

(assert (=> b!3222085 (=> (not res!1311952) (not e!2009174))))

(assert (=> b!3222085 (= res!1311952 (rulesProduceIndividualToken!2323 thiss!18206 rules!2135 separatorToken!241))))

(assert (= (and start!302630 res!1311978) b!3222044))

(assert (= (and b!3222044 res!1311974) b!3222056))

(assert (= (and b!3222056 res!1311950) b!3222055))

(assert (= (and b!3222055 res!1311967) b!3222085))

(assert (= (and b!3222085 res!1311952) b!3222082))

(assert (= (and b!3222082 res!1311972) b!3222084))

(assert (= (and b!3222084 res!1311956) b!3222072))

(assert (= (and b!3222072 res!1311953) b!3222074))

(assert (= (and b!3222074 res!1311963) b!3222071))

(assert (= (and b!3222071 (not res!1311971)) b!3222073))

(assert (= (and b!3222073 (not res!1311970)) b!3222061))

(assert (= (and b!3222061 (not res!1311965)) b!3222049))

(assert (= (and b!3222049 (not res!1311968)) b!3222060))

(assert (= (and b!3222060 (not res!1311975)) b!3222053))

(assert (= (and b!3222053 (not res!1311957)) b!3222067))

(assert (= (and b!3222067 (not res!1311954)) b!3222077))

(assert (= (and b!3222077 (not res!1311961)) b!3222066))

(assert (= (and b!3222066 res!1311962) b!3222070))

(assert (= (and b!3222070 res!1311960) b!3222054))

(assert (= (and b!3222066 res!1311955) b!3222052))

(assert (= (and b!3222052 res!1311958) b!3222075))

(assert (= (and b!3222066 c!541730) b!3222065))

(assert (= (and b!3222066 (not c!541730)) b!3222059))

(assert (= (and b!3222065 res!1311976) b!3222069))

(assert (= (and b!3222066 res!1311969) b!3222050))

(assert (= (and b!3222050 res!1311959) b!3222068))

(assert (= (and b!3222066 (not res!1311951)) b!3222083))

(assert (= (and b!3222083 (not res!1311973)) b!3222058))

(assert (= (and b!3222066 res!1311964) b!3222051))

(assert (= (and b!3222051 res!1311966) b!3222081))

(assert (= (and b!3222066 c!541731) b!3222080))

(assert (= (and b!3222066 (not c!541731)) b!3222063))

(assert (= (and b!3222080 res!1311977) b!3222076))

(assert (= b!3222057 b!3222048))

(assert (= b!3222064 b!3222057))

(assert (= (and start!302630 ((_ is Cons!36256) rules!2135)) b!3222064))

(assert (= b!3222046 b!3222043))

(assert (= b!3222047 b!3222046))

(assert (= b!3222045 b!3222047))

(assert (= (and start!302630 ((_ is Cons!36257) tokens!494)) b!3222045))

(assert (= b!3222062 b!3222078))

(assert (= b!3222079 b!3222062))

(assert (= start!302630 b!3222079))

(declare-fun m!3499201 () Bool)

(assert (=> b!3222083 m!3499201))

(declare-fun m!3499203 () Bool)

(assert (=> b!3222058 m!3499203))

(declare-fun m!3499205 () Bool)

(assert (=> b!3222062 m!3499205))

(declare-fun m!3499207 () Bool)

(assert (=> b!3222062 m!3499207))

(declare-fun m!3499209 () Bool)

(assert (=> b!3222061 m!3499209))

(declare-fun m!3499211 () Bool)

(assert (=> b!3222055 m!3499211))

(assert (=> b!3222055 m!3499211))

(declare-fun m!3499213 () Bool)

(assert (=> b!3222055 m!3499213))

(declare-fun m!3499215 () Bool)

(assert (=> b!3222084 m!3499215))

(declare-fun m!3499217 () Bool)

(assert (=> b!3222053 m!3499217))

(declare-fun m!3499219 () Bool)

(assert (=> b!3222053 m!3499219))

(declare-fun m!3499221 () Bool)

(assert (=> b!3222053 m!3499221))

(declare-fun m!3499223 () Bool)

(assert (=> b!3222053 m!3499223))

(declare-fun m!3499225 () Bool)

(assert (=> b!3222053 m!3499225))

(assert (=> b!3222053 m!3499217))

(declare-fun m!3499227 () Bool)

(assert (=> b!3222053 m!3499227))

(declare-fun m!3499229 () Bool)

(assert (=> b!3222053 m!3499229))

(declare-fun m!3499231 () Bool)

(assert (=> b!3222053 m!3499231))

(assert (=> b!3222053 m!3499223))

(assert (=> b!3222053 m!3499229))

(declare-fun m!3499233 () Bool)

(assert (=> b!3222053 m!3499233))

(assert (=> b!3222053 m!3499219))

(declare-fun m!3499235 () Bool)

(assert (=> b!3222053 m!3499235))

(declare-fun m!3499237 () Bool)

(assert (=> start!302630 m!3499237))

(declare-fun m!3499239 () Bool)

(assert (=> b!3222046 m!3499239))

(declare-fun m!3499241 () Bool)

(assert (=> b!3222046 m!3499241))

(declare-fun m!3499243 () Bool)

(assert (=> b!3222066 m!3499243))

(declare-fun m!3499245 () Bool)

(assert (=> b!3222066 m!3499245))

(declare-fun m!3499247 () Bool)

(assert (=> b!3222066 m!3499247))

(declare-fun m!3499249 () Bool)

(assert (=> b!3222066 m!3499249))

(declare-fun m!3499251 () Bool)

(assert (=> b!3222066 m!3499251))

(declare-fun m!3499253 () Bool)

(assert (=> b!3222066 m!3499253))

(declare-fun m!3499255 () Bool)

(assert (=> b!3222066 m!3499255))

(assert (=> b!3222066 m!3499251))

(declare-fun m!3499257 () Bool)

(assert (=> b!3222066 m!3499257))

(declare-fun m!3499259 () Bool)

(assert (=> b!3222066 m!3499259))

(declare-fun m!3499261 () Bool)

(assert (=> b!3222066 m!3499261))

(declare-fun m!3499263 () Bool)

(assert (=> b!3222066 m!3499263))

(declare-fun m!3499265 () Bool)

(assert (=> b!3222066 m!3499265))

(declare-fun m!3499267 () Bool)

(assert (=> b!3222066 m!3499267))

(declare-fun m!3499269 () Bool)

(assert (=> b!3222066 m!3499269))

(declare-fun m!3499271 () Bool)

(assert (=> b!3222066 m!3499271))

(declare-fun m!3499273 () Bool)

(assert (=> b!3222066 m!3499273))

(declare-fun m!3499275 () Bool)

(assert (=> b!3222066 m!3499275))

(declare-fun m!3499277 () Bool)

(assert (=> b!3222066 m!3499277))

(declare-fun m!3499279 () Bool)

(assert (=> b!3222066 m!3499279))

(assert (=> b!3222066 m!3499247))

(declare-fun m!3499281 () Bool)

(assert (=> b!3222066 m!3499281))

(declare-fun m!3499283 () Bool)

(assert (=> b!3222066 m!3499283))

(declare-fun m!3499285 () Bool)

(assert (=> b!3222066 m!3499285))

(assert (=> b!3222066 m!3499277))

(declare-fun m!3499287 () Bool)

(assert (=> b!3222066 m!3499287))

(declare-fun m!3499289 () Bool)

(assert (=> b!3222066 m!3499289))

(assert (=> b!3222066 m!3499249))

(declare-fun m!3499291 () Bool)

(assert (=> b!3222066 m!3499291))

(declare-fun m!3499293 () Bool)

(assert (=> b!3222066 m!3499293))

(declare-fun m!3499295 () Bool)

(assert (=> b!3222066 m!3499295))

(declare-fun m!3499297 () Bool)

(assert (=> b!3222066 m!3499297))

(assert (=> b!3222066 m!3499259))

(declare-fun m!3499299 () Bool)

(assert (=> b!3222066 m!3499299))

(declare-fun m!3499301 () Bool)

(assert (=> b!3222066 m!3499301))

(declare-fun m!3499303 () Bool)

(assert (=> b!3222066 m!3499303))

(declare-fun m!3499305 () Bool)

(assert (=> b!3222066 m!3499305))

(declare-fun m!3499307 () Bool)

(assert (=> b!3222066 m!3499307))

(declare-fun m!3499309 () Bool)

(assert (=> b!3222066 m!3499309))

(declare-fun m!3499311 () Bool)

(assert (=> b!3222066 m!3499311))

(declare-fun m!3499313 () Bool)

(assert (=> b!3222066 m!3499313))

(assert (=> b!3222066 m!3499299))

(declare-fun m!3499315 () Bool)

(assert (=> b!3222066 m!3499315))

(declare-fun m!3499317 () Bool)

(assert (=> b!3222066 m!3499317))

(declare-fun m!3499319 () Bool)

(assert (=> b!3222066 m!3499319))

(declare-fun m!3499321 () Bool)

(assert (=> b!3222066 m!3499321))

(declare-fun m!3499323 () Bool)

(assert (=> b!3222066 m!3499323))

(declare-fun m!3499325 () Bool)

(assert (=> b!3222066 m!3499325))

(declare-fun m!3499327 () Bool)

(assert (=> b!3222066 m!3499327))

(declare-fun m!3499329 () Bool)

(assert (=> b!3222066 m!3499329))

(declare-fun m!3499331 () Bool)

(assert (=> b!3222066 m!3499331))

(declare-fun m!3499333 () Bool)

(assert (=> b!3222066 m!3499333))

(declare-fun m!3499335 () Bool)

(assert (=> b!3222066 m!3499335))

(declare-fun m!3499337 () Bool)

(assert (=> b!3222066 m!3499337))

(declare-fun m!3499339 () Bool)

(assert (=> b!3222066 m!3499339))

(declare-fun m!3499341 () Bool)

(assert (=> b!3222066 m!3499341))

(declare-fun m!3499343 () Bool)

(assert (=> b!3222066 m!3499343))

(declare-fun m!3499345 () Bool)

(assert (=> b!3222066 m!3499345))

(declare-fun m!3499347 () Bool)

(assert (=> b!3222066 m!3499347))

(declare-fun m!3499349 () Bool)

(assert (=> b!3222085 m!3499349))

(declare-fun m!3499351 () Bool)

(assert (=> b!3222057 m!3499351))

(declare-fun m!3499353 () Bool)

(assert (=> b!3222057 m!3499353))

(declare-fun m!3499355 () Bool)

(assert (=> b!3222047 m!3499355))

(declare-fun m!3499357 () Bool)

(assert (=> b!3222056 m!3499357))

(declare-fun m!3499359 () Bool)

(assert (=> b!3222065 m!3499359))

(declare-fun m!3499361 () Bool)

(assert (=> b!3222065 m!3499361))

(declare-fun m!3499363 () Bool)

(assert (=> b!3222044 m!3499363))

(declare-fun m!3499365 () Bool)

(assert (=> b!3222077 m!3499365))

(declare-fun m!3499367 () Bool)

(assert (=> b!3222077 m!3499367))

(declare-fun m!3499369 () Bool)

(assert (=> b!3222051 m!3499369))

(declare-fun m!3499371 () Bool)

(assert (=> b!3222051 m!3499371))

(declare-fun m!3499373 () Bool)

(assert (=> b!3222068 m!3499373))

(declare-fun m!3499375 () Bool)

(assert (=> b!3222045 m!3499375))

(declare-fun m!3499377 () Bool)

(assert (=> b!3222072 m!3499377))

(declare-fun m!3499379 () Bool)

(assert (=> b!3222071 m!3499379))

(declare-fun m!3499381 () Bool)

(assert (=> b!3222071 m!3499381))

(declare-fun m!3499383 () Bool)

(assert (=> b!3222071 m!3499383))

(declare-fun m!3499385 () Bool)

(assert (=> b!3222071 m!3499385))

(declare-fun m!3499387 () Bool)

(assert (=> b!3222071 m!3499387))

(declare-fun m!3499389 () Bool)

(assert (=> b!3222080 m!3499389))

(declare-fun m!3499391 () Bool)

(assert (=> b!3222080 m!3499391))

(declare-fun m!3499393 () Bool)

(assert (=> b!3222052 m!3499393))

(declare-fun m!3499395 () Bool)

(assert (=> b!3222052 m!3499395))

(declare-fun m!3499397 () Bool)

(assert (=> b!3222060 m!3499397))

(declare-fun m!3499399 () Bool)

(assert (=> b!3222060 m!3499399))

(declare-fun m!3499401 () Bool)

(assert (=> b!3222050 m!3499401))

(declare-fun m!3499403 () Bool)

(assert (=> b!3222070 m!3499403))

(declare-fun m!3499405 () Bool)

(assert (=> b!3222070 m!3499405))

(declare-fun m!3499407 () Bool)

(assert (=> b!3222049 m!3499407))

(declare-fun m!3499409 () Bool)

(assert (=> b!3222049 m!3499409))

(declare-fun m!3499411 () Bool)

(assert (=> b!3222049 m!3499411))

(declare-fun m!3499413 () Bool)

(assert (=> b!3222067 m!3499413))

(assert (=> b!3222067 m!3499413))

(declare-fun m!3499415 () Bool)

(assert (=> b!3222067 m!3499415))

(declare-fun m!3499417 () Bool)

(assert (=> b!3222079 m!3499417))

(declare-fun m!3499419 () Bool)

(assert (=> b!3222073 m!3499419))

(assert (=> b!3222073 m!3499419))

(declare-fun m!3499421 () Bool)

(assert (=> b!3222073 m!3499421))

(check-sat (not b!3222080) (not b!3222062) (not b!3222071) (not b!3222061) (not b!3222057) (not b!3222064) (not b!3222083) (not b!3222047) (not b!3222094) (not b!3222052) (not b!3222079) (not b!3222060) (not b!3222058) b_and!215417 (not start!302630) (not b!3222051) b_and!215425 (not b!3222084) (not b_next!86417) (not b!3222072) (not b!3222055) (not b!3222049) (not b!3222085) (not b!3222053) (not b!3222077) b_and!215415 (not b!3222050) (not b!3222056) (not b_next!86423) (not b!3222046) b_and!215423 (not b_next!86425) (not b!3222068) (not b!3222044) (not b_next!86427) (not b!3222067) (not b!3222073) (not b_next!86419) b_and!215421 (not b_next!86421) (not b!3222045) (not b!3222065) (not b!3222066) b_and!215419 (not b!3222070))
(check-sat b_and!215417 b_and!215425 (not b_next!86417) b_and!215415 (not b_next!86423) (not b_next!86427) b_and!215419 b_and!215423 (not b_next!86425) (not b_next!86419) b_and!215421 (not b_next!86421))
