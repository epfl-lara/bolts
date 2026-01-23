; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338542 () Bool)

(assert start!338542)

(declare-fun b!3631181 () Bool)

(declare-fun b_free!94945 () Bool)

(declare-fun b_next!95649 () Bool)

(assert (=> b!3631181 (= b_free!94945 (not b_next!95649))))

(declare-fun tp!1108557 () Bool)

(declare-fun b_and!266491 () Bool)

(assert (=> b!3631181 (= tp!1108557 b_and!266491)))

(declare-fun b_free!94947 () Bool)

(declare-fun b_next!95651 () Bool)

(assert (=> b!3631181 (= b_free!94947 (not b_next!95651))))

(declare-fun tp!1108561 () Bool)

(declare-fun b_and!266493 () Bool)

(assert (=> b!3631181 (= tp!1108561 b_and!266493)))

(declare-fun b!3631168 () Bool)

(declare-fun b_free!94949 () Bool)

(declare-fun b_next!95653 () Bool)

(assert (=> b!3631168 (= b_free!94949 (not b_next!95653))))

(declare-fun tp!1108558 () Bool)

(declare-fun b_and!266495 () Bool)

(assert (=> b!3631168 (= tp!1108558 b_and!266495)))

(declare-fun b_free!94951 () Bool)

(declare-fun b_next!95655 () Bool)

(assert (=> b!3631168 (= b_free!94951 (not b_next!95655))))

(declare-fun tp!1108556 () Bool)

(declare-fun b_and!266497 () Bool)

(assert (=> b!3631168 (= tp!1108556 b_and!266497)))

(declare-fun b!3631191 () Bool)

(declare-fun b_free!94953 () Bool)

(declare-fun b_next!95657 () Bool)

(assert (=> b!3631191 (= b_free!94953 (not b_next!95657))))

(declare-fun tp!1108550 () Bool)

(declare-fun b_and!266499 () Bool)

(assert (=> b!3631191 (= tp!1108550 b_and!266499)))

(declare-fun b_free!94955 () Bool)

(declare-fun b_next!95659 () Bool)

(assert (=> b!3631191 (= b_free!94955 (not b_next!95659))))

(declare-fun tp!1108554 () Bool)

(declare-fun b_and!266501 () Bool)

(assert (=> b!3631191 (= tp!1108554 b_and!266501)))

(declare-fun b!3631185 () Bool)

(declare-fun b_free!94957 () Bool)

(declare-fun b_next!95661 () Bool)

(assert (=> b!3631185 (= b_free!94957 (not b_next!95661))))

(declare-fun tp!1108553 () Bool)

(declare-fun b_and!266503 () Bool)

(assert (=> b!3631185 (= tp!1108553 b_and!266503)))

(declare-fun b_free!94959 () Bool)

(declare-fun b_next!95663 () Bool)

(assert (=> b!3631185 (= b_free!94959 (not b_next!95663))))

(declare-fun tp!1108551 () Bool)

(declare-fun b_and!266505 () Bool)

(assert (=> b!3631185 (= tp!1108551 b_and!266505)))

(declare-fun b!3631164 () Bool)

(declare-fun e!2247651 () Bool)

(declare-fun e!2247668 () Bool)

(assert (=> b!3631164 (= e!2247651 e!2247668)))

(declare-fun res!1470414 () Bool)

(assert (=> b!3631164 (=> (not res!1470414) (not e!2247668))))

(declare-datatypes ((List!38377 0))(
  ( (Nil!38253) (Cons!38253 (h!43673 (_ BitVec 16)) (t!295240 List!38377)) )
))
(declare-datatypes ((TokenValue!5936 0))(
  ( (FloatLiteralValue!11872 (text!41997 List!38377)) (TokenValueExt!5935 (__x!24089 Int)) (Broken!29680 (value!183055 List!38377)) (Object!6059) (End!5936) (Def!5936) (Underscore!5936) (Match!5936) (Else!5936) (Error!5936) (Case!5936) (If!5936) (Extends!5936) (Abstract!5936) (Class!5936) (Val!5936) (DelimiterValue!11872 (del!5996 List!38377)) (KeywordValue!5942 (value!183056 List!38377)) (CommentValue!11872 (value!183057 List!38377)) (WhitespaceValue!11872 (value!183058 List!38377)) (IndentationValue!5936 (value!183059 List!38377)) (String!43013) (Int32!5936) (Broken!29681 (value!183060 List!38377)) (Boolean!5937) (Unit!55069) (OperatorValue!5939 (op!5996 List!38377)) (IdentifierValue!11872 (value!183061 List!38377)) (IdentifierValue!11873 (value!183062 List!38377)) (WhitespaceValue!11873 (value!183063 List!38377)) (True!11872) (False!11872) (Broken!29682 (value!183064 List!38377)) (Broken!29683 (value!183065 List!38377)) (True!11873) (RightBrace!5936) (RightBracket!5936) (Colon!5936) (Null!5936) (Comma!5936) (LeftBracket!5936) (False!11873) (LeftBrace!5936) (ImaginaryLiteralValue!5936 (text!41998 List!38377)) (StringLiteralValue!17808 (value!183066 List!38377)) (EOFValue!5936 (value!183067 List!38377)) (IdentValue!5936 (value!183068 List!38377)) (DelimiterValue!11873 (value!183069 List!38377)) (DedentValue!5936 (value!183070 List!38377)) (NewLineValue!5936 (value!183071 List!38377)) (IntegerValue!17808 (value!183072 (_ BitVec 32)) (text!41999 List!38377)) (IntegerValue!17809 (value!183073 Int) (text!42000 List!38377)) (Times!5936) (Or!5936) (Equal!5936) (Minus!5936) (Broken!29684 (value!183074 List!38377)) (And!5936) (Div!5936) (LessEqual!5936) (Mod!5936) (Concat!16401) (Not!5936) (Plus!5936) (SpaceValue!5936 (value!183075 List!38377)) (IntegerValue!17810 (value!183076 Int) (text!42001 List!38377)) (StringLiteralValue!17809 (text!42002 List!38377)) (FloatLiteralValue!11873 (text!42003 List!38377)) (BytesLiteralValue!5936 (value!183077 List!38377)) (CommentValue!11873 (value!183078 List!38377)) (StringLiteralValue!17810 (value!183079 List!38377)) (ErrorTokenValue!5936 (msg!5997 List!38377)) )
))
(declare-datatypes ((C!21116 0))(
  ( (C!21117 (val!12606 Int)) )
))
(declare-datatypes ((Regex!10465 0))(
  ( (ElementMatch!10465 (c!628198 C!21116)) (Concat!16402 (regOne!21442 Regex!10465) (regTwo!21442 Regex!10465)) (EmptyExpr!10465) (Star!10465 (reg!10794 Regex!10465)) (EmptyLang!10465) (Union!10465 (regOne!21443 Regex!10465) (regTwo!21443 Regex!10465)) )
))
(declare-datatypes ((String!43014 0))(
  ( (String!43015 (value!183080 String)) )
))
(declare-datatypes ((List!38378 0))(
  ( (Nil!38254) (Cons!38254 (h!43674 C!21116) (t!295241 List!38378)) )
))
(declare-datatypes ((IArray!23347 0))(
  ( (IArray!23348 (innerList!11731 List!38378)) )
))
(declare-datatypes ((Conc!11671 0))(
  ( (Node!11671 (left!29862 Conc!11671) (right!30192 Conc!11671) (csize!23572 Int) (cheight!11882 Int)) (Leaf!18135 (xs!14873 IArray!23347) (csize!23573 Int)) (Empty!11671) )
))
(declare-datatypes ((BalanceConc!22956 0))(
  ( (BalanceConc!22957 (c!628199 Conc!11671)) )
))
(declare-datatypes ((TokenValueInjection!11300 0))(
  ( (TokenValueInjection!11301 (toValue!7998 Int) (toChars!7857 Int)) )
))
(declare-datatypes ((Rule!11212 0))(
  ( (Rule!11213 (regex!5706 Regex!10465) (tag!6436 String!43014) (isSeparator!5706 Bool) (transformation!5706 TokenValueInjection!11300)) )
))
(declare-datatypes ((Token!10778 0))(
  ( (Token!10779 (value!183081 TokenValue!5936) (rule!8478 Rule!11212) (size!29188 Int) (originalCharacters!6420 List!38378)) )
))
(declare-datatypes ((tuple2!38128 0))(
  ( (tuple2!38129 (_1!22198 Token!10778) (_2!22198 List!38378)) )
))
(declare-fun lt!1255931 () tuple2!38128)

(declare-fun token!511 () Token!10778)

(assert (=> b!3631164 (= res!1470414 (= (_1!22198 lt!1255931) token!511))))

(declare-datatypes ((Option!8040 0))(
  ( (None!8039) (Some!8039 (v!37831 tuple2!38128)) )
))
(declare-fun lt!1255933 () Option!8040)

(declare-fun get!12503 (Option!8040) tuple2!38128)

(assert (=> b!3631164 (= lt!1255931 (get!12503 lt!1255933))))

(declare-fun b!3631165 () Bool)

(declare-fun e!2247663 () Bool)

(declare-fun e!2247669 () Bool)

(declare-fun tp!1108560 () Bool)

(assert (=> b!3631165 (= e!2247663 (and e!2247669 tp!1108560))))

(declare-datatypes ((List!38379 0))(
  ( (Nil!38255) (Cons!38255 (h!43675 Rule!11212) (t!295242 List!38379)) )
))
(declare-fun rules!3307 () List!38379)

(declare-fun e!2247665 () Bool)

(declare-fun tp!1108552 () Bool)

(declare-fun b!3631166 () Bool)

(declare-fun inv!51672 (String!43014) Bool)

(declare-fun inv!51675 (TokenValueInjection!11300) Bool)

(assert (=> b!3631166 (= e!2247669 (and tp!1108552 (inv!51672 (tag!6436 (h!43675 rules!3307))) (inv!51675 (transformation!5706 (h!43675 rules!3307))) e!2247665))))

(declare-fun b!3631167 () Bool)

(declare-fun e!2247671 () Bool)

(declare-fun e!2247672 () Bool)

(assert (=> b!3631167 (= e!2247671 e!2247672)))

(declare-fun res!1470404 () Bool)

(assert (=> b!3631167 (=> (not res!1470404) (not e!2247672))))

(declare-fun lt!1255926 () Rule!11212)

(declare-fun lt!1255919 () tuple2!38128)

(declare-fun matchR!5034 (Regex!10465 List!38378) Bool)

(declare-fun list!14140 (BalanceConc!22956) List!38378)

(declare-fun charsOf!3720 (Token!10778) BalanceConc!22956)

(assert (=> b!3631167 (= res!1470404 (matchR!5034 (regex!5706 lt!1255926) (list!14140 (charsOf!3720 (_1!22198 lt!1255919)))))))

(declare-datatypes ((Option!8041 0))(
  ( (None!8040) (Some!8040 (v!37832 Rule!11212)) )
))
(declare-fun lt!1255924 () Option!8041)

(declare-fun get!12504 (Option!8041) Rule!11212)

(assert (=> b!3631167 (= lt!1255926 (get!12504 lt!1255924))))

(declare-fun e!2247662 () Bool)

(assert (=> b!3631168 (= e!2247662 (and tp!1108558 tp!1108556))))

(declare-fun b!3631169 () Bool)

(declare-fun e!2247657 () Bool)

(assert (=> b!3631169 (= e!2247657 true)))

(declare-fun lt!1255934 () Int)

(declare-fun lt!1255920 () BalanceConc!22956)

(declare-fun size!29189 (BalanceConc!22956) Int)

(assert (=> b!3631169 (= lt!1255934 (size!29189 lt!1255920))))

(declare-fun lt!1255935 () TokenValue!5936)

(declare-fun apply!9208 (TokenValueInjection!11300 BalanceConc!22956) TokenValue!5936)

(assert (=> b!3631169 (= lt!1255935 (apply!9208 (transformation!5706 (rule!8478 (_1!22198 lt!1255919))) lt!1255920))))

(declare-datatypes ((Unit!55070 0))(
  ( (Unit!55071) )
))
(declare-fun lt!1255929 () Unit!55070)

(declare-fun lemmaCharactersSize!751 (Token!10778) Unit!55070)

(assert (=> b!3631169 (= lt!1255929 (lemmaCharactersSize!751 (_1!22198 lt!1255919)))))

(declare-fun lt!1255918 () Unit!55070)

(declare-fun lemmaEqSameImage!889 (TokenValueInjection!11300 BalanceConc!22956 BalanceConc!22956) Unit!55070)

(declare-fun seqFromList!4255 (List!38378) BalanceConc!22956)

(assert (=> b!3631169 (= lt!1255918 (lemmaEqSameImage!889 (transformation!5706 (rule!8478 (_1!22198 lt!1255919))) lt!1255920 (seqFromList!4255 (originalCharacters!6420 (_1!22198 lt!1255919)))))))

(declare-fun lt!1255928 () Unit!55070)

(declare-fun lemmaSemiInverse!1455 (TokenValueInjection!11300 BalanceConc!22956) Unit!55070)

(assert (=> b!3631169 (= lt!1255928 (lemmaSemiInverse!1455 (transformation!5706 (rule!8478 (_1!22198 lt!1255919))) lt!1255920))))

(declare-fun b!3631170 () Bool)

(declare-fun res!1470400 () Bool)

(assert (=> b!3631170 (=> res!1470400 e!2247657)))

(declare-fun lt!1255936 () List!38378)

(assert (=> b!3631170 (= res!1470400 (not (matchR!5034 (regex!5706 (rule!8478 (_1!22198 lt!1255919))) lt!1255936)))))

(declare-fun b!3631171 () Bool)

(declare-fun res!1470416 () Bool)

(declare-fun e!2247649 () Bool)

(assert (=> b!3631171 (=> (not res!1470416) (not e!2247649))))

(declare-datatypes ((LexerInterface!5295 0))(
  ( (LexerInterfaceExt!5292 (__x!24090 Int)) (Lexer!5293) )
))
(declare-fun thiss!23823 () LexerInterface!5295)

(declare-fun rulesInvariant!4692 (LexerInterface!5295 List!38379) Bool)

(assert (=> b!3631171 (= res!1470416 (rulesInvariant!4692 thiss!23823 rules!3307))))

(declare-fun b!3631172 () Bool)

(declare-fun res!1470409 () Bool)

(assert (=> b!3631172 (=> (not res!1470409) (not e!2247649))))

(declare-fun anOtherTypeRule!33 () Rule!11212)

(declare-fun rule!403 () Rule!11212)

(assert (=> b!3631172 (= res!1470409 (not (= (isSeparator!5706 anOtherTypeRule!33) (isSeparator!5706 rule!403))))))

(declare-fun tp!1108562 () Bool)

(declare-fun e!2247658 () Bool)

(declare-fun e!2247670 () Bool)

(declare-fun b!3631173 () Bool)

(declare-fun inv!21 (TokenValue!5936) Bool)

(assert (=> b!3631173 (= e!2247658 (and (inv!21 (value!183081 token!511)) e!2247670 tp!1108562))))

(declare-fun b!3631174 () Bool)

(declare-fun res!1470415 () Bool)

(assert (=> b!3631174 (=> (not res!1470415) (not e!2247649))))

(declare-fun isEmpty!22628 (List!38379) Bool)

(assert (=> b!3631174 (= res!1470415 (not (isEmpty!22628 rules!3307)))))

(declare-fun b!3631175 () Bool)

(declare-fun res!1470410 () Bool)

(declare-fun e!2247660 () Bool)

(assert (=> b!3631175 (=> res!1470410 e!2247660)))

(declare-fun lt!1255925 () C!21116)

(declare-fun contains!7477 (List!38378 C!21116) Bool)

(declare-fun usedCharacters!918 (Regex!10465) List!38378)

(assert (=> b!3631175 (= res!1470410 (not (contains!7477 (usedCharacters!918 (regex!5706 anOtherTypeRule!33)) lt!1255925)))))

(declare-fun b!3631176 () Bool)

(declare-fun res!1470417 () Bool)

(assert (=> b!3631176 (=> (not res!1470417) (not e!2247668))))

(declare-fun isEmpty!22629 (List!38378) Bool)

(assert (=> b!3631176 (= res!1470417 (isEmpty!22629 (_2!22198 lt!1255931)))))

(declare-fun e!2247652 () Bool)

(declare-fun tp!1108559 () Bool)

(declare-fun e!2247666 () Bool)

(declare-fun b!3631177 () Bool)

(assert (=> b!3631177 (= e!2247652 (and tp!1108559 (inv!51672 (tag!6436 anOtherTypeRule!33)) (inv!51675 (transformation!5706 anOtherTypeRule!33)) e!2247666))))

(declare-fun b!3631178 () Bool)

(assert (=> b!3631178 (= e!2247660 e!2247657)))

(declare-fun res!1470411 () Bool)

(assert (=> b!3631178 (=> res!1470411 e!2247657)))

(declare-fun lt!1255917 () List!38378)

(declare-fun isPrefix!3069 (List!38378 List!38378) Bool)

(assert (=> b!3631178 (= res!1470411 (not (isPrefix!3069 lt!1255936 lt!1255917)))))

(declare-fun ++!9522 (List!38378 List!38378) List!38378)

(assert (=> b!3631178 (isPrefix!3069 lt!1255936 (++!9522 lt!1255936 (_2!22198 lt!1255919)))))

(declare-fun lt!1255932 () Unit!55070)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1988 (List!38378 List!38378) Unit!55070)

(assert (=> b!3631178 (= lt!1255932 (lemmaConcatTwoListThenFirstIsPrefix!1988 lt!1255936 (_2!22198 lt!1255919)))))

(assert (=> b!3631178 (= lt!1255936 (list!14140 lt!1255920))))

(assert (=> b!3631178 (= lt!1255920 (charsOf!3720 (_1!22198 lt!1255919)))))

(assert (=> b!3631178 e!2247671))

(declare-fun res!1470408 () Bool)

(assert (=> b!3631178 (=> (not res!1470408) (not e!2247671))))

(declare-fun isDefined!6272 (Option!8041) Bool)

(assert (=> b!3631178 (= res!1470408 (isDefined!6272 lt!1255924))))

(declare-fun getRuleFromTag!1310 (LexerInterface!5295 List!38379 String!43014) Option!8041)

(assert (=> b!3631178 (= lt!1255924 (getRuleFromTag!1310 thiss!23823 rules!3307 (tag!6436 (rule!8478 (_1!22198 lt!1255919)))))))

(declare-fun lt!1255921 () Unit!55070)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1310 (LexerInterface!5295 List!38379 List!38378 Token!10778) Unit!55070)

(assert (=> b!3631178 (= lt!1255921 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1310 thiss!23823 rules!3307 lt!1255917 (_1!22198 lt!1255919)))))

(declare-fun lt!1255916 () Option!8040)

(assert (=> b!3631178 (= lt!1255919 (get!12503 lt!1255916))))

(declare-fun suffix!1395 () List!38378)

(declare-fun lt!1255923 () Unit!55070)

(declare-fun lt!1255922 () List!38378)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!973 (LexerInterface!5295 List!38379 List!38378 List!38378) Unit!55070)

(assert (=> b!3631178 (= lt!1255923 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!973 thiss!23823 rules!3307 lt!1255922 suffix!1395))))

(declare-fun maxPrefix!2829 (LexerInterface!5295 List!38379 List!38378) Option!8040)

(assert (=> b!3631178 (= lt!1255916 (maxPrefix!2829 thiss!23823 rules!3307 lt!1255917))))

(assert (=> b!3631178 (isPrefix!3069 lt!1255922 lt!1255917)))

(declare-fun lt!1255927 () Unit!55070)

(assert (=> b!3631178 (= lt!1255927 (lemmaConcatTwoListThenFirstIsPrefix!1988 lt!1255922 suffix!1395))))

(assert (=> b!3631178 (= lt!1255917 (++!9522 lt!1255922 suffix!1395))))

(declare-fun b!3631179 () Bool)

(assert (=> b!3631179 (= e!2247672 (= (rule!8478 (_1!22198 lt!1255919)) lt!1255926))))

(declare-fun res!1470403 () Bool)

(assert (=> start!338542 (=> (not res!1470403) (not e!2247649))))

(get-info :version)

(assert (=> start!338542 (= res!1470403 ((_ is Lexer!5293) thiss!23823))))

(assert (=> start!338542 e!2247649))

(assert (=> start!338542 e!2247663))

(declare-fun e!2247653 () Bool)

(assert (=> start!338542 e!2247653))

(assert (=> start!338542 true))

(declare-fun inv!51676 (Token!10778) Bool)

(assert (=> start!338542 (and (inv!51676 token!511) e!2247658)))

(declare-fun e!2247664 () Bool)

(assert (=> start!338542 e!2247664))

(assert (=> start!338542 e!2247652))

(declare-fun b!3631163 () Bool)

(declare-fun res!1470402 () Bool)

(assert (=> b!3631163 (=> (not res!1470402) (not e!2247668))))

(assert (=> b!3631163 (= res!1470402 (= (rule!8478 token!511) rule!403))))

(declare-fun b!3631180 () Bool)

(declare-fun res!1470412 () Bool)

(assert (=> b!3631180 (=> (not res!1470412) (not e!2247649))))

(declare-fun contains!7478 (List!38379 Rule!11212) Bool)

(assert (=> b!3631180 (= res!1470412 (contains!7478 rules!3307 rule!403))))

(assert (=> b!3631181 (= e!2247666 (and tp!1108557 tp!1108561))))

(declare-fun b!3631182 () Bool)

(declare-fun e!2247650 () Bool)

(assert (=> b!3631182 (= e!2247650 e!2247660)))

(declare-fun res!1470418 () Bool)

(assert (=> b!3631182 (=> res!1470418 e!2247660)))

(assert (=> b!3631182 (= res!1470418 (contains!7477 (usedCharacters!918 (regex!5706 rule!403)) lt!1255925))))

(declare-fun head!7686 (List!38378) C!21116)

(assert (=> b!3631182 (= lt!1255925 (head!7686 suffix!1395))))

(declare-fun b!3631183 () Bool)

(declare-fun tp!1108563 () Bool)

(assert (=> b!3631183 (= e!2247670 (and tp!1108563 (inv!51672 (tag!6436 (rule!8478 token!511))) (inv!51675 (transformation!5706 (rule!8478 token!511))) e!2247662))))

(declare-fun b!3631184 () Bool)

(declare-fun res!1470401 () Bool)

(assert (=> b!3631184 (=> res!1470401 e!2247660)))

(declare-fun sepAndNonSepRulesDisjointChars!1874 (List!38379 List!38379) Bool)

(assert (=> b!3631184 (= res!1470401 (not (sepAndNonSepRulesDisjointChars!1874 rules!3307 rules!3307)))))

(assert (=> b!3631185 (= e!2247665 (and tp!1108553 tp!1108551))))

(declare-fun b!3631186 () Bool)

(assert (=> b!3631186 (= e!2247649 e!2247651)))

(declare-fun res!1470413 () Bool)

(assert (=> b!3631186 (=> (not res!1470413) (not e!2247651))))

(declare-fun isDefined!6273 (Option!8040) Bool)

(assert (=> b!3631186 (= res!1470413 (isDefined!6273 lt!1255933))))

(assert (=> b!3631186 (= lt!1255933 (maxPrefix!2829 thiss!23823 rules!3307 lt!1255922))))

(assert (=> b!3631186 (= lt!1255922 (list!14140 (charsOf!3720 token!511)))))

(declare-fun b!3631187 () Bool)

(declare-fun tp_is_empty!18013 () Bool)

(declare-fun tp!1108564 () Bool)

(assert (=> b!3631187 (= e!2247653 (and tp_is_empty!18013 tp!1108564))))

(declare-fun b!3631188 () Bool)

(declare-fun res!1470406 () Bool)

(assert (=> b!3631188 (=> (not res!1470406) (not e!2247649))))

(assert (=> b!3631188 (= res!1470406 (contains!7478 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2247661 () Bool)

(declare-fun b!3631189 () Bool)

(declare-fun tp!1108555 () Bool)

(assert (=> b!3631189 (= e!2247664 (and tp!1108555 (inv!51672 (tag!6436 rule!403)) (inv!51675 (transformation!5706 rule!403)) e!2247661))))

(declare-fun b!3631190 () Bool)

(assert (=> b!3631190 (= e!2247668 (not e!2247650))))

(declare-fun res!1470407 () Bool)

(assert (=> b!3631190 (=> res!1470407 e!2247650)))

(assert (=> b!3631190 (= res!1470407 (not (matchR!5034 (regex!5706 rule!403) lt!1255922)))))

(declare-fun ruleValid!1970 (LexerInterface!5295 Rule!11212) Bool)

(assert (=> b!3631190 (ruleValid!1970 thiss!23823 rule!403)))

(declare-fun lt!1255930 () Unit!55070)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1124 (LexerInterface!5295 Rule!11212 List!38379) Unit!55070)

(assert (=> b!3631190 (= lt!1255930 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1124 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3631191 (= e!2247661 (and tp!1108550 tp!1108554))))

(declare-fun b!3631192 () Bool)

(declare-fun res!1470405 () Bool)

(assert (=> b!3631192 (=> res!1470405 e!2247650)))

(assert (=> b!3631192 (= res!1470405 (isEmpty!22629 suffix!1395))))

(assert (= (and start!338542 res!1470403) b!3631174))

(assert (= (and b!3631174 res!1470415) b!3631171))

(assert (= (and b!3631171 res!1470416) b!3631180))

(assert (= (and b!3631180 res!1470412) b!3631188))

(assert (= (and b!3631188 res!1470406) b!3631172))

(assert (= (and b!3631172 res!1470409) b!3631186))

(assert (= (and b!3631186 res!1470413) b!3631164))

(assert (= (and b!3631164 res!1470414) b!3631176))

(assert (= (and b!3631176 res!1470417) b!3631163))

(assert (= (and b!3631163 res!1470402) b!3631190))

(assert (= (and b!3631190 (not res!1470407)) b!3631192))

(assert (= (and b!3631192 (not res!1470405)) b!3631182))

(assert (= (and b!3631182 (not res!1470418)) b!3631175))

(assert (= (and b!3631175 (not res!1470410)) b!3631184))

(assert (= (and b!3631184 (not res!1470401)) b!3631178))

(assert (= (and b!3631178 res!1470408) b!3631167))

(assert (= (and b!3631167 res!1470404) b!3631179))

(assert (= (and b!3631178 (not res!1470411)) b!3631170))

(assert (= (and b!3631170 (not res!1470400)) b!3631169))

(assert (= b!3631166 b!3631185))

(assert (= b!3631165 b!3631166))

(assert (= (and start!338542 ((_ is Cons!38255) rules!3307)) b!3631165))

(assert (= (and start!338542 ((_ is Cons!38254) suffix!1395)) b!3631187))

(assert (= b!3631183 b!3631168))

(assert (= b!3631173 b!3631183))

(assert (= start!338542 b!3631173))

(assert (= b!3631189 b!3631191))

(assert (= start!338542 b!3631189))

(assert (= b!3631177 b!3631181))

(assert (= start!338542 b!3631177))

(declare-fun m!4132723 () Bool)

(assert (=> b!3631178 m!4132723))

(declare-fun m!4132725 () Bool)

(assert (=> b!3631178 m!4132725))

(declare-fun m!4132727 () Bool)

(assert (=> b!3631178 m!4132727))

(declare-fun m!4132729 () Bool)

(assert (=> b!3631178 m!4132729))

(declare-fun m!4132731 () Bool)

(assert (=> b!3631178 m!4132731))

(declare-fun m!4132733 () Bool)

(assert (=> b!3631178 m!4132733))

(declare-fun m!4132735 () Bool)

(assert (=> b!3631178 m!4132735))

(declare-fun m!4132737 () Bool)

(assert (=> b!3631178 m!4132737))

(declare-fun m!4132739 () Bool)

(assert (=> b!3631178 m!4132739))

(declare-fun m!4132741 () Bool)

(assert (=> b!3631178 m!4132741))

(declare-fun m!4132743 () Bool)

(assert (=> b!3631178 m!4132743))

(declare-fun m!4132745 () Bool)

(assert (=> b!3631178 m!4132745))

(assert (=> b!3631178 m!4132723))

(declare-fun m!4132747 () Bool)

(assert (=> b!3631178 m!4132747))

(declare-fun m!4132749 () Bool)

(assert (=> b!3631178 m!4132749))

(declare-fun m!4132751 () Bool)

(assert (=> b!3631178 m!4132751))

(declare-fun m!4132753 () Bool)

(assert (=> b!3631188 m!4132753))

(declare-fun m!4132755 () Bool)

(assert (=> b!3631190 m!4132755))

(declare-fun m!4132757 () Bool)

(assert (=> b!3631190 m!4132757))

(declare-fun m!4132759 () Bool)

(assert (=> b!3631190 m!4132759))

(declare-fun m!4132761 () Bool)

(assert (=> b!3631180 m!4132761))

(declare-fun m!4132763 () Bool)

(assert (=> b!3631176 m!4132763))

(declare-fun m!4132765 () Bool)

(assert (=> b!3631164 m!4132765))

(declare-fun m!4132767 () Bool)

(assert (=> b!3631177 m!4132767))

(declare-fun m!4132769 () Bool)

(assert (=> b!3631177 m!4132769))

(declare-fun m!4132771 () Bool)

(assert (=> b!3631192 m!4132771))

(declare-fun m!4132773 () Bool)

(assert (=> b!3631174 m!4132773))

(declare-fun m!4132775 () Bool)

(assert (=> b!3631184 m!4132775))

(declare-fun m!4132777 () Bool)

(assert (=> b!3631183 m!4132777))

(declare-fun m!4132779 () Bool)

(assert (=> b!3631183 m!4132779))

(assert (=> b!3631167 m!4132727))

(assert (=> b!3631167 m!4132727))

(declare-fun m!4132781 () Bool)

(assert (=> b!3631167 m!4132781))

(assert (=> b!3631167 m!4132781))

(declare-fun m!4132783 () Bool)

(assert (=> b!3631167 m!4132783))

(declare-fun m!4132785 () Bool)

(assert (=> b!3631167 m!4132785))

(declare-fun m!4132787 () Bool)

(assert (=> b!3631169 m!4132787))

(declare-fun m!4132789 () Bool)

(assert (=> b!3631169 m!4132789))

(declare-fun m!4132791 () Bool)

(assert (=> b!3631169 m!4132791))

(declare-fun m!4132793 () Bool)

(assert (=> b!3631169 m!4132793))

(assert (=> b!3631169 m!4132787))

(declare-fun m!4132795 () Bool)

(assert (=> b!3631169 m!4132795))

(declare-fun m!4132797 () Bool)

(assert (=> b!3631169 m!4132797))

(declare-fun m!4132799 () Bool)

(assert (=> b!3631171 m!4132799))

(declare-fun m!4132801 () Bool)

(assert (=> b!3631166 m!4132801))

(declare-fun m!4132803 () Bool)

(assert (=> b!3631166 m!4132803))

(declare-fun m!4132805 () Bool)

(assert (=> b!3631170 m!4132805))

(declare-fun m!4132807 () Bool)

(assert (=> b!3631182 m!4132807))

(assert (=> b!3631182 m!4132807))

(declare-fun m!4132809 () Bool)

(assert (=> b!3631182 m!4132809))

(declare-fun m!4132811 () Bool)

(assert (=> b!3631182 m!4132811))

(declare-fun m!4132813 () Bool)

(assert (=> b!3631189 m!4132813))

(declare-fun m!4132815 () Bool)

(assert (=> b!3631189 m!4132815))

(declare-fun m!4132817 () Bool)

(assert (=> b!3631175 m!4132817))

(assert (=> b!3631175 m!4132817))

(declare-fun m!4132819 () Bool)

(assert (=> b!3631175 m!4132819))

(declare-fun m!4132821 () Bool)

(assert (=> b!3631186 m!4132821))

(declare-fun m!4132823 () Bool)

(assert (=> b!3631186 m!4132823))

(declare-fun m!4132825 () Bool)

(assert (=> b!3631186 m!4132825))

(assert (=> b!3631186 m!4132825))

(declare-fun m!4132827 () Bool)

(assert (=> b!3631186 m!4132827))

(declare-fun m!4132829 () Bool)

(assert (=> b!3631173 m!4132829))

(declare-fun m!4132831 () Bool)

(assert (=> start!338542 m!4132831))

(check-sat (not b_next!95657) (not b!3631180) (not b!3631175) (not b!3631192) (not b!3631187) (not b_next!95659) (not b_next!95653) (not b!3631176) b_and!266501 (not b!3631174) (not b_next!95655) b_and!266493 b_and!266505 (not b!3631164) (not b_next!95649) (not b!3631182) b_and!266495 (not b!3631178) (not b!3631167) (not b_next!95663) b_and!266499 (not b!3631188) (not b_next!95661) tp_is_empty!18013 (not b!3631171) (not start!338542) (not b!3631166) (not b!3631169) (not b!3631177) (not b!3631173) b_and!266497 (not b!3631165) (not b_next!95651) (not b!3631189) b_and!266491 b_and!266503 (not b!3631183) (not b!3631170) (not b!3631190) (not b!3631184) (not b!3631186))
(check-sat (not b_next!95657) b_and!266505 (not b_next!95663) (not b_next!95659) (not b_next!95653) b_and!266497 (not b_next!95651) b_and!266491 b_and!266501 b_and!266503 (not b_next!95655) b_and!266493 (not b_next!95649) b_and!266495 b_and!266499 (not b_next!95661))
