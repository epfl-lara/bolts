; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334178 () Bool)

(assert start!334178)

(declare-fun b!3597240 () Bool)

(declare-fun b_free!93009 () Bool)

(declare-fun b_next!93713 () Bool)

(assert (=> b!3597240 (= b_free!93009 (not b_next!93713))))

(declare-fun tp!1100732 () Bool)

(declare-fun b_and!260899 () Bool)

(assert (=> b!3597240 (= tp!1100732 b_and!260899)))

(declare-fun b_free!93011 () Bool)

(declare-fun b_next!93715 () Bool)

(assert (=> b!3597240 (= b_free!93011 (not b_next!93715))))

(declare-fun tp!1100739 () Bool)

(declare-fun b_and!260901 () Bool)

(assert (=> b!3597240 (= tp!1100739 b_and!260901)))

(declare-fun b!3597263 () Bool)

(declare-fun b_free!93013 () Bool)

(declare-fun b_next!93717 () Bool)

(assert (=> b!3597263 (= b_free!93013 (not b_next!93717))))

(declare-fun tp!1100737 () Bool)

(declare-fun b_and!260903 () Bool)

(assert (=> b!3597263 (= tp!1100737 b_and!260903)))

(declare-fun b_free!93015 () Bool)

(declare-fun b_next!93719 () Bool)

(assert (=> b!3597263 (= b_free!93015 (not b_next!93719))))

(declare-fun tp!1100738 () Bool)

(declare-fun b_and!260905 () Bool)

(assert (=> b!3597263 (= tp!1100738 b_and!260905)))

(declare-fun b!3597254 () Bool)

(declare-fun b_free!93017 () Bool)

(declare-fun b_next!93721 () Bool)

(assert (=> b!3597254 (= b_free!93017 (not b_next!93721))))

(declare-fun tp!1100745 () Bool)

(declare-fun b_and!260907 () Bool)

(assert (=> b!3597254 (= tp!1100745 b_and!260907)))

(declare-fun b_free!93019 () Bool)

(declare-fun b_next!93723 () Bool)

(assert (=> b!3597254 (= b_free!93019 (not b_next!93723))))

(declare-fun tp!1100734 () Bool)

(declare-fun b_and!260909 () Bool)

(assert (=> b!3597254 (= tp!1100734 b_and!260909)))

(declare-fun b!3597250 () Bool)

(declare-fun b_free!93021 () Bool)

(declare-fun b_next!93725 () Bool)

(assert (=> b!3597250 (= b_free!93021 (not b_next!93725))))

(declare-fun tp!1100741 () Bool)

(declare-fun b_and!260911 () Bool)

(assert (=> b!3597250 (= tp!1100741 b_and!260911)))

(declare-fun b_free!93023 () Bool)

(declare-fun b_next!93727 () Bool)

(assert (=> b!3597250 (= b_free!93023 (not b_next!93727))))

(declare-fun tp!1100742 () Bool)

(declare-fun b_and!260913 () Bool)

(assert (=> b!3597250 (= tp!1100742 b_and!260913)))

(declare-fun b!3597233 () Bool)

(declare-fun e!2225993 () Bool)

(declare-fun e!2225998 () Bool)

(assert (=> b!3597233 (= e!2225993 e!2225998)))

(declare-fun res!1453247 () Bool)

(assert (=> b!3597233 (=> (not res!1453247) (not e!2225998))))

(declare-datatypes ((List!37961 0))(
  ( (Nil!37837) (Cons!37837 (h!43257 (_ BitVec 16)) (t!291812 List!37961)) )
))
(declare-datatypes ((TokenValue!5828 0))(
  ( (FloatLiteralValue!11656 (text!41241 List!37961)) (TokenValueExt!5827 (__x!23873 Int)) (Broken!29140 (value!179977 List!37961)) (Object!5951) (End!5828) (Def!5828) (Underscore!5828) (Match!5828) (Else!5828) (Error!5828) (Case!5828) (If!5828) (Extends!5828) (Abstract!5828) (Class!5828) (Val!5828) (DelimiterValue!11656 (del!5888 List!37961)) (KeywordValue!5834 (value!179978 List!37961)) (CommentValue!11656 (value!179979 List!37961)) (WhitespaceValue!11656 (value!179980 List!37961)) (IndentationValue!5828 (value!179981 List!37961)) (String!42473) (Int32!5828) (Broken!29141 (value!179982 List!37961)) (Boolean!5829) (Unit!53850) (OperatorValue!5831 (op!5888 List!37961)) (IdentifierValue!11656 (value!179983 List!37961)) (IdentifierValue!11657 (value!179984 List!37961)) (WhitespaceValue!11657 (value!179985 List!37961)) (True!11656) (False!11656) (Broken!29142 (value!179986 List!37961)) (Broken!29143 (value!179987 List!37961)) (True!11657) (RightBrace!5828) (RightBracket!5828) (Colon!5828) (Null!5828) (Comma!5828) (LeftBracket!5828) (False!11657) (LeftBrace!5828) (ImaginaryLiteralValue!5828 (text!41242 List!37961)) (StringLiteralValue!17484 (value!179988 List!37961)) (EOFValue!5828 (value!179989 List!37961)) (IdentValue!5828 (value!179990 List!37961)) (DelimiterValue!11657 (value!179991 List!37961)) (DedentValue!5828 (value!179992 List!37961)) (NewLineValue!5828 (value!179993 List!37961)) (IntegerValue!17484 (value!179994 (_ BitVec 32)) (text!41243 List!37961)) (IntegerValue!17485 (value!179995 Int) (text!41244 List!37961)) (Times!5828) (Or!5828) (Equal!5828) (Minus!5828) (Broken!29144 (value!179996 List!37961)) (And!5828) (Div!5828) (LessEqual!5828) (Mod!5828) (Concat!16185) (Not!5828) (Plus!5828) (SpaceValue!5828 (value!179997 List!37961)) (IntegerValue!17486 (value!179998 Int) (text!41245 List!37961)) (StringLiteralValue!17485 (text!41246 List!37961)) (FloatLiteralValue!11657 (text!41247 List!37961)) (BytesLiteralValue!5828 (value!179999 List!37961)) (CommentValue!11657 (value!180000 List!37961)) (StringLiteralValue!17486 (value!180001 List!37961)) (ErrorTokenValue!5828 (msg!5889 List!37961)) )
))
(declare-datatypes ((C!20900 0))(
  ( (C!20901 (val!12498 Int)) )
))
(declare-datatypes ((Regex!10357 0))(
  ( (ElementMatch!10357 (c!622676 C!20900)) (Concat!16186 (regOne!21226 Regex!10357) (regTwo!21226 Regex!10357)) (EmptyExpr!10357) (Star!10357 (reg!10686 Regex!10357)) (EmptyLang!10357) (Union!10357 (regOne!21227 Regex!10357) (regTwo!21227 Regex!10357)) )
))
(declare-datatypes ((String!42474 0))(
  ( (String!42475 (value!180002 String)) )
))
(declare-datatypes ((List!37962 0))(
  ( (Nil!37838) (Cons!37838 (h!43258 C!20900) (t!291813 List!37962)) )
))
(declare-datatypes ((IArray!23039 0))(
  ( (IArray!23040 (innerList!11577 List!37962)) )
))
(declare-datatypes ((Conc!11517 0))(
  ( (Node!11517 (left!29562 Conc!11517) (right!29892 Conc!11517) (csize!23264 Int) (cheight!11728 Int)) (Leaf!17927 (xs!14719 IArray!23039) (csize!23265 Int)) (Empty!11517) )
))
(declare-datatypes ((BalanceConc!22648 0))(
  ( (BalanceConc!22649 (c!622677 Conc!11517)) )
))
(declare-datatypes ((TokenValueInjection!11084 0))(
  ( (TokenValueInjection!11085 (toValue!7882 Int) (toChars!7741 Int)) )
))
(declare-datatypes ((Rule!10996 0))(
  ( (Rule!10997 (regex!5598 Regex!10357) (tag!6282 String!42474) (isSeparator!5598 Bool) (transformation!5598 TokenValueInjection!11084)) )
))
(declare-datatypes ((Token!10562 0))(
  ( (Token!10563 (value!180003 TokenValue!5828) (rule!8326 Rule!10996) (size!28830 Int) (originalCharacters!6312 List!37962)) )
))
(declare-datatypes ((tuple2!37724 0))(
  ( (tuple2!37725 (_1!21996 Token!10562) (_2!21996 List!37962)) )
))
(declare-fun lt!1235244 () tuple2!37724)

(declare-fun token!511 () Token!10562)

(assert (=> b!3597233 (= res!1453247 (= (_1!21996 lt!1235244) token!511))))

(declare-datatypes ((Option!7826 0))(
  ( (None!7825) (Some!7825 (v!37523 tuple2!37724)) )
))
(declare-fun lt!1235246 () Option!7826)

(declare-fun get!12235 (Option!7826) tuple2!37724)

(assert (=> b!3597233 (= lt!1235244 (get!12235 lt!1235246))))

(declare-fun b!3597234 () Bool)

(declare-fun e!2225995 () Bool)

(declare-fun e!2226006 () Bool)

(assert (=> b!3597234 (= e!2225995 e!2226006)))

(declare-fun res!1453246 () Bool)

(assert (=> b!3597234 (=> res!1453246 e!2226006)))

(declare-fun lt!1235241 () List!37962)

(declare-fun lt!1235234 () C!20900)

(declare-fun contains!7259 (List!37962 C!20900) Bool)

(assert (=> b!3597234 (= res!1453246 (contains!7259 lt!1235241 lt!1235234))))

(declare-fun suffix!1395 () List!37962)

(declare-fun head!7534 (List!37962) C!20900)

(assert (=> b!3597234 (= lt!1235234 (head!7534 suffix!1395))))

(declare-fun rule!403 () Rule!10996)

(declare-fun usedCharacters!812 (Regex!10357) List!37962)

(assert (=> b!3597234 (= lt!1235241 (usedCharacters!812 (regex!5598 rule!403)))))

(declare-fun b!3597235 () Bool)

(declare-fun res!1453248 () Bool)

(declare-fun e!2226007 () Bool)

(assert (=> b!3597235 (=> (not res!1453248) (not e!2226007))))

(declare-datatypes ((LexerInterface!5187 0))(
  ( (LexerInterfaceExt!5184 (__x!23874 Int)) (Lexer!5185) )
))
(declare-fun thiss!23823 () LexerInterface!5187)

(declare-datatypes ((List!37963 0))(
  ( (Nil!37839) (Cons!37839 (h!43259 Rule!10996) (t!291814 List!37963)) )
))
(declare-fun rules!3307 () List!37963)

(declare-fun rulesInvariant!4584 (LexerInterface!5187 List!37963) Bool)

(assert (=> b!3597235 (= res!1453248 (rulesInvariant!4584 thiss!23823 rules!3307))))

(declare-fun b!3597236 () Bool)

(declare-datatypes ((Unit!53851 0))(
  ( (Unit!53852) )
))
(declare-fun e!2225991 () Unit!53851)

(declare-fun Unit!53853 () Unit!53851)

(assert (=> b!3597236 (= e!2225991 Unit!53853)))

(declare-fun lt!1235260 () Unit!53851)

(declare-fun lt!1235251 () C!20900)

(declare-fun lt!1235256 () List!37962)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!582 (Regex!10357 List!37962 C!20900) Unit!53851)

(assert (=> b!3597236 (= lt!1235260 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!582 (regex!5598 rule!403) lt!1235256 lt!1235251))))

(assert (=> b!3597236 false))

(declare-fun lt!1235242 () tuple2!37724)

(declare-fun e!2225994 () Bool)

(declare-fun b!3597237 () Bool)

(declare-fun lt!1235239 () List!37962)

(assert (=> b!3597237 (= e!2225994 (or (not (isSeparator!5598 rule!403)) (isSeparator!5598 (rule!8326 (_1!21996 lt!1235242))) (not (= lt!1235239 Nil!37838))))))

(declare-fun lt!1235232 () Unit!53851)

(assert (=> b!3597237 (= lt!1235232 e!2225991)))

(declare-fun c!622675 () Bool)

(assert (=> b!3597237 (= c!622675 (not (contains!7259 lt!1235241 lt!1235251)))))

(assert (=> b!3597237 (= lt!1235251 (head!7534 lt!1235239))))

(declare-fun b!3597238 () Bool)

(declare-fun res!1453251 () Bool)

(assert (=> b!3597238 (=> res!1453251 e!2225995)))

(declare-fun isEmpty!22314 (List!37962) Bool)

(assert (=> b!3597238 (= res!1453251 (isEmpty!22314 suffix!1395))))

(declare-fun b!3597239 () Bool)

(declare-fun e!2226000 () Bool)

(assert (=> b!3597239 (= e!2226006 e!2226000)))

(declare-fun res!1453250 () Bool)

(assert (=> b!3597239 (=> res!1453250 e!2226000)))

(declare-fun lt!1235252 () List!37962)

(declare-fun isPrefix!2961 (List!37962 List!37962) Bool)

(assert (=> b!3597239 (= res!1453250 (not (isPrefix!2961 lt!1235239 lt!1235252)))))

(declare-fun ++!9414 (List!37962 List!37962) List!37962)

(assert (=> b!3597239 (isPrefix!2961 lt!1235239 (++!9414 lt!1235239 (_2!21996 lt!1235242)))))

(declare-fun lt!1235257 () Unit!53851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1882 (List!37962 List!37962) Unit!53851)

(assert (=> b!3597239 (= lt!1235257 (lemmaConcatTwoListThenFirstIsPrefix!1882 lt!1235239 (_2!21996 lt!1235242)))))

(declare-fun lt!1235254 () BalanceConc!22648)

(declare-fun list!13930 (BalanceConc!22648) List!37962)

(assert (=> b!3597239 (= lt!1235239 (list!13930 lt!1235254))))

(declare-fun charsOf!3612 (Token!10562) BalanceConc!22648)

(assert (=> b!3597239 (= lt!1235254 (charsOf!3612 (_1!21996 lt!1235242)))))

(declare-fun e!2225990 () Bool)

(assert (=> b!3597239 e!2225990))

(declare-fun res!1453256 () Bool)

(assert (=> b!3597239 (=> (not res!1453256) (not e!2225990))))

(declare-datatypes ((Option!7827 0))(
  ( (None!7826) (Some!7826 (v!37524 Rule!10996)) )
))
(declare-fun lt!1235255 () Option!7827)

(declare-fun isDefined!6058 (Option!7827) Bool)

(assert (=> b!3597239 (= res!1453256 (isDefined!6058 lt!1235255))))

(declare-fun getRuleFromTag!1204 (LexerInterface!5187 List!37963 String!42474) Option!7827)

(assert (=> b!3597239 (= lt!1235255 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))))

(declare-fun lt!1235253 () Unit!53851)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1204 (LexerInterface!5187 List!37963 List!37962 Token!10562) Unit!53851)

(assert (=> b!3597239 (= lt!1235253 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1204 thiss!23823 rules!3307 lt!1235252 (_1!21996 lt!1235242)))))

(declare-fun lt!1235250 () Option!7826)

(assert (=> b!3597239 (= lt!1235242 (get!12235 lt!1235250))))

(declare-fun lt!1235245 () Unit!53851)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!867 (LexerInterface!5187 List!37963 List!37962 List!37962) Unit!53851)

(assert (=> b!3597239 (= lt!1235245 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!867 thiss!23823 rules!3307 lt!1235256 suffix!1395))))

(declare-fun maxPrefix!2721 (LexerInterface!5187 List!37963 List!37962) Option!7826)

(assert (=> b!3597239 (= lt!1235250 (maxPrefix!2721 thiss!23823 rules!3307 lt!1235252))))

(assert (=> b!3597239 (isPrefix!2961 lt!1235256 lt!1235252)))

(declare-fun lt!1235235 () Unit!53851)

(assert (=> b!3597239 (= lt!1235235 (lemmaConcatTwoListThenFirstIsPrefix!1882 lt!1235256 suffix!1395))))

(assert (=> b!3597239 (= lt!1235252 (++!9414 lt!1235256 suffix!1395))))

(declare-fun e!2226001 () Bool)

(assert (=> b!3597240 (= e!2226001 (and tp!1100732 tp!1100739))))

(declare-fun e!2226004 () Bool)

(declare-fun e!2225997 () Bool)

(declare-fun b!3597241 () Bool)

(declare-fun tp!1100740 () Bool)

(declare-fun inv!51187 (String!42474) Bool)

(declare-fun inv!51190 (TokenValueInjection!11084) Bool)

(assert (=> b!3597241 (= e!2225997 (and tp!1100740 (inv!51187 (tag!6282 (rule!8326 token!511))) (inv!51190 (transformation!5598 (rule!8326 token!511))) e!2226004))))

(declare-fun b!3597243 () Bool)

(declare-fun e!2226014 () Bool)

(assert (=> b!3597243 (= e!2226000 e!2226014)))

(declare-fun res!1453258 () Bool)

(assert (=> b!3597243 (=> res!1453258 e!2226014)))

(declare-fun apply!9104 (TokenValueInjection!11084 BalanceConc!22648) TokenValue!5828)

(declare-fun size!28831 (BalanceConc!22648) Int)

(assert (=> b!3597243 (= res!1453258 (not (= lt!1235250 (Some!7825 (tuple2!37725 (Token!10563 (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254) (rule!8326 (_1!21996 lt!1235242)) (size!28831 lt!1235254) lt!1235239) (_2!21996 lt!1235242))))))))

(declare-fun lt!1235247 () Unit!53851)

(declare-fun lemmaCharactersSize!651 (Token!10562) Unit!53851)

(assert (=> b!3597243 (= lt!1235247 (lemmaCharactersSize!651 (_1!21996 lt!1235242)))))

(declare-fun lt!1235243 () Unit!53851)

(declare-fun lemmaEqSameImage!789 (TokenValueInjection!11084 BalanceConc!22648 BalanceConc!22648) Unit!53851)

(declare-fun seqFromList!4151 (List!37962) BalanceConc!22648)

(assert (=> b!3597243 (= lt!1235243 (lemmaEqSameImage!789 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254 (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242)))))))

(declare-fun lt!1235259 () Unit!53851)

(declare-fun lemmaSemiInverse!1355 (TokenValueInjection!11084 BalanceConc!22648) Unit!53851)

(assert (=> b!3597243 (= lt!1235259 (lemmaSemiInverse!1355 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254))))

(declare-fun b!3597244 () Bool)

(declare-fun res!1453262 () Bool)

(assert (=> b!3597244 (=> res!1453262 e!2226006)))

(declare-fun sepAndNonSepRulesDisjointChars!1768 (List!37963 List!37963) Bool)

(assert (=> b!3597244 (= res!1453262 (not (sepAndNonSepRulesDisjointChars!1768 rules!3307 rules!3307)))))

(declare-fun b!3597245 () Bool)

(declare-fun res!1453257 () Bool)

(assert (=> b!3597245 (=> (not res!1453257) (not e!2225998))))

(assert (=> b!3597245 (= res!1453257 (isEmpty!22314 (_2!21996 lt!1235244)))))

(declare-fun b!3597246 () Bool)

(declare-fun res!1453263 () Bool)

(assert (=> b!3597246 (=> (not res!1453263) (not e!2226007))))

(declare-fun anOtherTypeRule!33 () Rule!10996)

(assert (=> b!3597246 (= res!1453263 (not (= (isSeparator!5598 anOtherTypeRule!33) (isSeparator!5598 rule!403))))))

(declare-fun e!2226003 () Bool)

(declare-fun tp!1100746 () Bool)

(declare-fun b!3597247 () Bool)

(assert (=> b!3597247 (= e!2226003 (and tp!1100746 (inv!51187 (tag!6282 rule!403)) (inv!51190 (transformation!5598 rule!403)) e!2226001))))

(declare-fun b!3597248 () Bool)

(assert (=> b!3597248 (= e!2225998 (not e!2225995))))

(declare-fun res!1453249 () Bool)

(assert (=> b!3597248 (=> res!1453249 e!2225995)))

(declare-fun matchR!4926 (Regex!10357 List!37962) Bool)

(assert (=> b!3597248 (= res!1453249 (not (matchR!4926 (regex!5598 rule!403) lt!1235256)))))

(declare-fun ruleValid!1863 (LexerInterface!5187 Rule!10996) Bool)

(assert (=> b!3597248 (ruleValid!1863 thiss!23823 rule!403)))

(declare-fun lt!1235233 () Unit!53851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1018 (LexerInterface!5187 Rule!10996 List!37963) Unit!53851)

(assert (=> b!3597248 (= lt!1235233 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1018 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1100735 () Bool)

(declare-fun e!2226012 () Bool)

(declare-fun b!3597249 () Bool)

(declare-fun inv!21 (TokenValue!5828) Bool)

(assert (=> b!3597249 (= e!2226012 (and (inv!21 (value!180003 token!511)) e!2225997 tp!1100735))))

(declare-fun e!2225999 () Bool)

(assert (=> b!3597250 (= e!2225999 (and tp!1100741 tp!1100742))))

(declare-fun b!3597251 () Bool)

(declare-fun res!1453261 () Bool)

(assert (=> b!3597251 (=> (not res!1453261) (not e!2226007))))

(declare-fun isEmpty!22315 (List!37963) Bool)

(assert (=> b!3597251 (= res!1453261 (not (isEmpty!22315 rules!3307)))))

(declare-fun b!3597252 () Bool)

(declare-fun e!2226009 () Bool)

(declare-fun tp!1100743 () Bool)

(assert (=> b!3597252 (= e!2226009 (and tp!1100743 (inv!51187 (tag!6282 (h!43259 rules!3307))) (inv!51190 (transformation!5598 (h!43259 rules!3307))) e!2225999))))

(declare-fun b!3597253 () Bool)

(declare-fun res!1453255 () Bool)

(assert (=> b!3597253 (=> res!1453255 e!2226000)))

(assert (=> b!3597253 (= res!1453255 (not (matchR!4926 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235239)))))

(declare-fun b!3597242 () Bool)

(declare-fun e!2226013 () Bool)

(declare-fun lt!1235238 () Rule!10996)

(assert (=> b!3597242 (= e!2226013 (= (rule!8326 (_1!21996 lt!1235242)) lt!1235238))))

(declare-fun res!1453245 () Bool)

(assert (=> start!334178 (=> (not res!1453245) (not e!2226007))))

(get-info :version)

(assert (=> start!334178 (= res!1453245 ((_ is Lexer!5185) thiss!23823))))

(assert (=> start!334178 e!2226007))

(declare-fun e!2225996 () Bool)

(assert (=> start!334178 e!2225996))

(declare-fun e!2226008 () Bool)

(assert (=> start!334178 e!2226008))

(assert (=> start!334178 true))

(declare-fun inv!51191 (Token!10562) Bool)

(assert (=> start!334178 (and (inv!51191 token!511) e!2226012)))

(assert (=> start!334178 e!2226003))

(declare-fun e!2225992 () Bool)

(assert (=> start!334178 e!2225992))

(assert (=> b!3597254 (= e!2226004 (and tp!1100745 tp!1100734))))

(declare-fun b!3597255 () Bool)

(declare-fun res!1453244 () Bool)

(assert (=> b!3597255 (=> (not res!1453244) (not e!2226007))))

(declare-fun contains!7260 (List!37963 Rule!10996) Bool)

(assert (=> b!3597255 (= res!1453244 (contains!7260 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3597256 () Bool)

(declare-fun e!2226005 () Bool)

(declare-fun tp!1100744 () Bool)

(assert (=> b!3597256 (= e!2225992 (and tp!1100744 (inv!51187 (tag!6282 anOtherTypeRule!33)) (inv!51190 (transformation!5598 anOtherTypeRule!33)) e!2226005))))

(declare-fun b!3597257 () Bool)

(declare-fun Unit!53854 () Unit!53851)

(assert (=> b!3597257 (= e!2225991 Unit!53854)))

(declare-fun b!3597258 () Bool)

(assert (=> b!3597258 (= e!2226007 e!2225993)))

(declare-fun res!1453259 () Bool)

(assert (=> b!3597258 (=> (not res!1453259) (not e!2225993))))

(declare-fun isDefined!6059 (Option!7826) Bool)

(assert (=> b!3597258 (= res!1453259 (isDefined!6059 lt!1235246))))

(assert (=> b!3597258 (= lt!1235246 (maxPrefix!2721 thiss!23823 rules!3307 lt!1235256))))

(assert (=> b!3597258 (= lt!1235256 (list!13930 (charsOf!3612 token!511)))))

(declare-fun b!3597259 () Bool)

(declare-fun res!1453254 () Bool)

(assert (=> b!3597259 (=> (not res!1453254) (not e!2225998))))

(assert (=> b!3597259 (= res!1453254 (= (rule!8326 token!511) rule!403))))

(declare-fun b!3597260 () Bool)

(declare-fun tp!1100736 () Bool)

(assert (=> b!3597260 (= e!2225996 (and e!2226009 tp!1100736))))

(declare-fun b!3597261 () Bool)

(assert (=> b!3597261 (= e!2225990 e!2226013)))

(declare-fun res!1453252 () Bool)

(assert (=> b!3597261 (=> (not res!1453252) (not e!2226013))))

(assert (=> b!3597261 (= res!1453252 (matchR!4926 (regex!5598 lt!1235238) (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))))))

(declare-fun get!12236 (Option!7827) Rule!10996)

(assert (=> b!3597261 (= lt!1235238 (get!12236 lt!1235255))))

(declare-fun b!3597262 () Bool)

(declare-fun res!1453243 () Bool)

(assert (=> b!3597262 (=> res!1453243 e!2226006)))

(assert (=> b!3597262 (= res!1453243 (not (contains!7259 (usedCharacters!812 (regex!5598 anOtherTypeRule!33)) lt!1235234)))))

(assert (=> b!3597263 (= e!2226005 (and tp!1100737 tp!1100738))))

(declare-fun b!3597264 () Bool)

(declare-fun res!1453260 () Bool)

(assert (=> b!3597264 (=> (not res!1453260) (not e!2226007))))

(assert (=> b!3597264 (= res!1453260 (contains!7260 rules!3307 rule!403))))

(declare-fun b!3597265 () Bool)

(declare-fun tp_is_empty!17797 () Bool)

(declare-fun tp!1100733 () Bool)

(assert (=> b!3597265 (= e!2226008 (and tp_is_empty!17797 tp!1100733))))

(declare-fun b!3597266 () Bool)

(assert (=> b!3597266 (= e!2226014 e!2225994)))

(declare-fun res!1453253 () Bool)

(assert (=> b!3597266 (=> res!1453253 e!2225994)))

(declare-fun lt!1235237 () Option!7826)

(declare-fun lt!1235258 () List!37962)

(assert (=> b!3597266 (= res!1453253 (or (not (= lt!1235258 (_2!21996 lt!1235242))) (not (= lt!1235237 (Some!7825 (tuple2!37725 (_1!21996 lt!1235242) lt!1235258))))))))

(assert (=> b!3597266 (= (_2!21996 lt!1235242) lt!1235258)))

(declare-fun lt!1235249 () Unit!53851)

(declare-fun lemmaSamePrefixThenSameSuffix!1316 (List!37962 List!37962 List!37962 List!37962 List!37962) Unit!53851)

(assert (=> b!3597266 (= lt!1235249 (lemmaSamePrefixThenSameSuffix!1316 lt!1235239 (_2!21996 lt!1235242) lt!1235239 lt!1235258 lt!1235252))))

(declare-fun getSuffix!1536 (List!37962 List!37962) List!37962)

(assert (=> b!3597266 (= lt!1235258 (getSuffix!1536 lt!1235252 lt!1235239))))

(declare-fun lt!1235236 () TokenValue!5828)

(declare-fun lt!1235248 () Int)

(assert (=> b!3597266 (= lt!1235237 (Some!7825 (tuple2!37725 (Token!10563 lt!1235236 (rule!8326 (_1!21996 lt!1235242)) lt!1235248 lt!1235239) (_2!21996 lt!1235242))))))

(declare-fun maxPrefixOneRule!1865 (LexerInterface!5187 Rule!10996 List!37962) Option!7826)

(assert (=> b!3597266 (= lt!1235237 (maxPrefixOneRule!1865 thiss!23823 (rule!8326 (_1!21996 lt!1235242)) lt!1235252))))

(declare-fun size!28832 (List!37962) Int)

(assert (=> b!3597266 (= lt!1235248 (size!28832 lt!1235239))))

(assert (=> b!3597266 (= lt!1235236 (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) (seqFromList!4151 lt!1235239)))))

(declare-fun lt!1235240 () Unit!53851)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!937 (LexerInterface!5187 List!37963 List!37962 List!37962 List!37962 Rule!10996) Unit!53851)

(assert (=> b!3597266 (= lt!1235240 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!937 thiss!23823 rules!3307 lt!1235239 lt!1235252 (_2!21996 lt!1235242) (rule!8326 (_1!21996 lt!1235242))))))

(assert (= (and start!334178 res!1453245) b!3597251))

(assert (= (and b!3597251 res!1453261) b!3597235))

(assert (= (and b!3597235 res!1453248) b!3597264))

(assert (= (and b!3597264 res!1453260) b!3597255))

(assert (= (and b!3597255 res!1453244) b!3597246))

(assert (= (and b!3597246 res!1453263) b!3597258))

(assert (= (and b!3597258 res!1453259) b!3597233))

(assert (= (and b!3597233 res!1453247) b!3597245))

(assert (= (and b!3597245 res!1453257) b!3597259))

(assert (= (and b!3597259 res!1453254) b!3597248))

(assert (= (and b!3597248 (not res!1453249)) b!3597238))

(assert (= (and b!3597238 (not res!1453251)) b!3597234))

(assert (= (and b!3597234 (not res!1453246)) b!3597262))

(assert (= (and b!3597262 (not res!1453243)) b!3597244))

(assert (= (and b!3597244 (not res!1453262)) b!3597239))

(assert (= (and b!3597239 res!1453256) b!3597261))

(assert (= (and b!3597261 res!1453252) b!3597242))

(assert (= (and b!3597239 (not res!1453250)) b!3597253))

(assert (= (and b!3597253 (not res!1453255)) b!3597243))

(assert (= (and b!3597243 (not res!1453258)) b!3597266))

(assert (= (and b!3597266 (not res!1453253)) b!3597237))

(assert (= (and b!3597237 c!622675) b!3597236))

(assert (= (and b!3597237 (not c!622675)) b!3597257))

(assert (= b!3597252 b!3597250))

(assert (= b!3597260 b!3597252))

(assert (= (and start!334178 ((_ is Cons!37839) rules!3307)) b!3597260))

(assert (= (and start!334178 ((_ is Cons!37838) suffix!1395)) b!3597265))

(assert (= b!3597241 b!3597254))

(assert (= b!3597249 b!3597241))

(assert (= start!334178 b!3597249))

(assert (= b!3597247 b!3597240))

(assert (= start!334178 b!3597247))

(assert (= b!3597256 b!3597263))

(assert (= start!334178 b!3597256))

(declare-fun m!4092499 () Bool)

(assert (=> b!3597251 m!4092499))

(declare-fun m!4092501 () Bool)

(assert (=> b!3597245 m!4092501))

(declare-fun m!4092503 () Bool)

(assert (=> b!3597243 m!4092503))

(declare-fun m!4092505 () Bool)

(assert (=> b!3597243 m!4092505))

(declare-fun m!4092507 () Bool)

(assert (=> b!3597243 m!4092507))

(declare-fun m!4092509 () Bool)

(assert (=> b!3597243 m!4092509))

(declare-fun m!4092511 () Bool)

(assert (=> b!3597243 m!4092511))

(assert (=> b!3597243 m!4092503))

(declare-fun m!4092513 () Bool)

(assert (=> b!3597243 m!4092513))

(declare-fun m!4092515 () Bool)

(assert (=> b!3597248 m!4092515))

(declare-fun m!4092517 () Bool)

(assert (=> b!3597248 m!4092517))

(declare-fun m!4092519 () Bool)

(assert (=> b!3597248 m!4092519))

(declare-fun m!4092521 () Bool)

(assert (=> b!3597235 m!4092521))

(declare-fun m!4092523 () Bool)

(assert (=> b!3597244 m!4092523))

(declare-fun m!4092525 () Bool)

(assert (=> b!3597237 m!4092525))

(declare-fun m!4092527 () Bool)

(assert (=> b!3597237 m!4092527))

(declare-fun m!4092529 () Bool)

(assert (=> b!3597255 m!4092529))

(declare-fun m!4092531 () Bool)

(assert (=> b!3597233 m!4092531))

(declare-fun m!4092533 () Bool)

(assert (=> b!3597247 m!4092533))

(declare-fun m!4092535 () Bool)

(assert (=> b!3597247 m!4092535))

(declare-fun m!4092537 () Bool)

(assert (=> b!3597258 m!4092537))

(declare-fun m!4092539 () Bool)

(assert (=> b!3597258 m!4092539))

(declare-fun m!4092541 () Bool)

(assert (=> b!3597258 m!4092541))

(assert (=> b!3597258 m!4092541))

(declare-fun m!4092543 () Bool)

(assert (=> b!3597258 m!4092543))

(declare-fun m!4092545 () Bool)

(assert (=> b!3597253 m!4092545))

(declare-fun m!4092547 () Bool)

(assert (=> b!3597261 m!4092547))

(assert (=> b!3597261 m!4092547))

(declare-fun m!4092549 () Bool)

(assert (=> b!3597261 m!4092549))

(assert (=> b!3597261 m!4092549))

(declare-fun m!4092551 () Bool)

(assert (=> b!3597261 m!4092551))

(declare-fun m!4092553 () Bool)

(assert (=> b!3597261 m!4092553))

(declare-fun m!4092555 () Bool)

(assert (=> b!3597238 m!4092555))

(declare-fun m!4092557 () Bool)

(assert (=> b!3597241 m!4092557))

(declare-fun m!4092559 () Bool)

(assert (=> b!3597241 m!4092559))

(declare-fun m!4092561 () Bool)

(assert (=> b!3597262 m!4092561))

(assert (=> b!3597262 m!4092561))

(declare-fun m!4092563 () Bool)

(assert (=> b!3597262 m!4092563))

(declare-fun m!4092565 () Bool)

(assert (=> b!3597266 m!4092565))

(declare-fun m!4092567 () Bool)

(assert (=> b!3597266 m!4092567))

(declare-fun m!4092569 () Bool)

(assert (=> b!3597266 m!4092569))

(declare-fun m!4092571 () Bool)

(assert (=> b!3597266 m!4092571))

(declare-fun m!4092573 () Bool)

(assert (=> b!3597266 m!4092573))

(assert (=> b!3597266 m!4092573))

(declare-fun m!4092575 () Bool)

(assert (=> b!3597266 m!4092575))

(declare-fun m!4092577 () Bool)

(assert (=> b!3597266 m!4092577))

(declare-fun m!4092579 () Bool)

(assert (=> b!3597252 m!4092579))

(declare-fun m!4092581 () Bool)

(assert (=> b!3597252 m!4092581))

(declare-fun m!4092583 () Bool)

(assert (=> start!334178 m!4092583))

(declare-fun m!4092585 () Bool)

(assert (=> b!3597249 m!4092585))

(declare-fun m!4092587 () Bool)

(assert (=> b!3597236 m!4092587))

(declare-fun m!4092589 () Bool)

(assert (=> b!3597264 m!4092589))

(declare-fun m!4092591 () Bool)

(assert (=> b!3597234 m!4092591))

(declare-fun m!4092593 () Bool)

(assert (=> b!3597234 m!4092593))

(declare-fun m!4092595 () Bool)

(assert (=> b!3597234 m!4092595))

(declare-fun m!4092597 () Bool)

(assert (=> b!3597239 m!4092597))

(declare-fun m!4092599 () Bool)

(assert (=> b!3597239 m!4092599))

(declare-fun m!4092601 () Bool)

(assert (=> b!3597239 m!4092601))

(declare-fun m!4092603 () Bool)

(assert (=> b!3597239 m!4092603))

(declare-fun m!4092605 () Bool)

(assert (=> b!3597239 m!4092605))

(declare-fun m!4092607 () Bool)

(assert (=> b!3597239 m!4092607))

(assert (=> b!3597239 m!4092601))

(declare-fun m!4092609 () Bool)

(assert (=> b!3597239 m!4092609))

(declare-fun m!4092611 () Bool)

(assert (=> b!3597239 m!4092611))

(declare-fun m!4092613 () Bool)

(assert (=> b!3597239 m!4092613))

(declare-fun m!4092615 () Bool)

(assert (=> b!3597239 m!4092615))

(declare-fun m!4092617 () Bool)

(assert (=> b!3597239 m!4092617))

(declare-fun m!4092619 () Bool)

(assert (=> b!3597239 m!4092619))

(declare-fun m!4092621 () Bool)

(assert (=> b!3597239 m!4092621))

(assert (=> b!3597239 m!4092547))

(declare-fun m!4092623 () Bool)

(assert (=> b!3597239 m!4092623))

(declare-fun m!4092625 () Bool)

(assert (=> b!3597256 m!4092625))

(declare-fun m!4092627 () Bool)

(assert (=> b!3597256 m!4092627))

(check-sat b_and!260899 (not b_next!93715) (not b!3597253) b_and!260909 (not b!3597252) (not b!3597236) b_and!260905 tp_is_empty!17797 (not b!3597244) (not b!3597237) (not b!3597260) (not b!3597233) b_and!260903 (not b!3597255) (not b_next!93727) (not b!3597261) (not b!3597241) (not b!3597265) (not b!3597251) (not b!3597243) (not b!3597247) (not b_next!93725) (not b!3597266) (not b_next!93717) (not b_next!93723) b_and!260911 (not b!3597256) b_and!260901 (not b!3597239) (not b!3597258) (not b_next!93719) (not b!3597245) b_and!260913 (not b!3597248) (not b!3597262) (not b!3597234) (not b_next!93721) (not start!334178) (not b!3597264) (not b!3597249) (not b!3597235) (not b!3597238) (not b_next!93713) b_and!260907)
(check-sat b_and!260903 (not b_next!93727) (not b_next!93725) b_and!260911 b_and!260899 (not b_next!93715) b_and!260901 b_and!260909 (not b_next!93719) b_and!260913 b_and!260905 (not b_next!93721) (not b_next!93717) (not b_next!93723) (not b_next!93713) b_and!260907)
(get-model)

(declare-fun d!1060038 () Bool)

(assert (=> d!1060038 (= (inv!51187 (tag!6282 anOtherTypeRule!33)) (= (mod (str.len (value!180002 (tag!6282 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3597256 d!1060038))

(declare-fun d!1060040 () Bool)

(declare-fun res!1453277 () Bool)

(declare-fun e!2226019 () Bool)

(assert (=> d!1060040 (=> (not res!1453277) (not e!2226019))))

(declare-fun semiInverseModEq!2374 (Int Int) Bool)

(assert (=> d!1060040 (= res!1453277 (semiInverseModEq!2374 (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toValue!7882 (transformation!5598 anOtherTypeRule!33))))))

(assert (=> d!1060040 (= (inv!51190 (transformation!5598 anOtherTypeRule!33)) e!2226019)))

(declare-fun b!3597269 () Bool)

(declare-fun equivClasses!2273 (Int Int) Bool)

(assert (=> b!3597269 (= e!2226019 (equivClasses!2273 (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toValue!7882 (transformation!5598 anOtherTypeRule!33))))))

(assert (= (and d!1060040 res!1453277) b!3597269))

(declare-fun m!4092635 () Bool)

(assert (=> d!1060040 m!4092635))

(declare-fun m!4092637 () Bool)

(assert (=> b!3597269 m!4092637))

(assert (=> b!3597256 d!1060040))

(declare-fun d!1060042 () Bool)

(declare-fun res!1453280 () Bool)

(declare-fun e!2226022 () Bool)

(assert (=> d!1060042 (=> (not res!1453280) (not e!2226022))))

(declare-fun rulesValid!2134 (LexerInterface!5187 List!37963) Bool)

(assert (=> d!1060042 (= res!1453280 (rulesValid!2134 thiss!23823 rules!3307))))

(assert (=> d!1060042 (= (rulesInvariant!4584 thiss!23823 rules!3307) e!2226022)))

(declare-fun b!3597272 () Bool)

(declare-datatypes ((List!37966 0))(
  ( (Nil!37842) (Cons!37842 (h!43262 String!42474) (t!291937 List!37966)) )
))
(declare-fun noDuplicateTag!2130 (LexerInterface!5187 List!37963 List!37966) Bool)

(assert (=> b!3597272 (= e!2226022 (noDuplicateTag!2130 thiss!23823 rules!3307 Nil!37842))))

(assert (= (and d!1060042 res!1453280) b!3597272))

(declare-fun m!4092639 () Bool)

(assert (=> d!1060042 m!4092639))

(declare-fun m!4092641 () Bool)

(assert (=> b!3597272 m!4092641))

(assert (=> b!3597235 d!1060042))

(declare-fun d!1060044 () Bool)

(declare-fun lt!1235268 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5391 (List!37962) (InoxSet C!20900))

(assert (=> d!1060044 (= lt!1235268 (select (content!5391 lt!1235241) lt!1235234))))

(declare-fun e!2226028 () Bool)

(assert (=> d!1060044 (= lt!1235268 e!2226028)))

(declare-fun res!1453286 () Bool)

(assert (=> d!1060044 (=> (not res!1453286) (not e!2226028))))

(assert (=> d!1060044 (= res!1453286 ((_ is Cons!37838) lt!1235241))))

(assert (=> d!1060044 (= (contains!7259 lt!1235241 lt!1235234) lt!1235268)))

(declare-fun b!3597277 () Bool)

(declare-fun e!2226027 () Bool)

(assert (=> b!3597277 (= e!2226028 e!2226027)))

(declare-fun res!1453285 () Bool)

(assert (=> b!3597277 (=> res!1453285 e!2226027)))

(assert (=> b!3597277 (= res!1453285 (= (h!43258 lt!1235241) lt!1235234))))

(declare-fun b!3597278 () Bool)

(assert (=> b!3597278 (= e!2226027 (contains!7259 (t!291813 lt!1235241) lt!1235234))))

(assert (= (and d!1060044 res!1453286) b!3597277))

(assert (= (and b!3597277 (not res!1453285)) b!3597278))

(declare-fun m!4092643 () Bool)

(assert (=> d!1060044 m!4092643))

(declare-fun m!4092645 () Bool)

(assert (=> d!1060044 m!4092645))

(declare-fun m!4092647 () Bool)

(assert (=> b!3597278 m!4092647))

(assert (=> b!3597234 d!1060044))

(declare-fun d!1060046 () Bool)

(assert (=> d!1060046 (= (head!7534 suffix!1395) (h!43258 suffix!1395))))

(assert (=> b!3597234 d!1060046))

(declare-fun b!3597295 () Bool)

(declare-fun c!622690 () Bool)

(assert (=> b!3597295 (= c!622690 ((_ is Star!10357) (regex!5598 rule!403)))))

(declare-fun e!2226039 () List!37962)

(declare-fun e!2226037 () List!37962)

(assert (=> b!3597295 (= e!2226039 e!2226037)))

(declare-fun b!3597296 () Bool)

(declare-fun call!260226 () List!37962)

(assert (=> b!3597296 (= e!2226037 call!260226)))

(declare-fun call!260225 () List!37962)

(declare-fun c!622688 () Bool)

(declare-fun call!260227 () List!37962)

(declare-fun call!260228 () List!37962)

(declare-fun bm!260220 () Bool)

(assert (=> bm!260220 (= call!260228 (++!9414 (ite c!622688 call!260227 call!260225) (ite c!622688 call!260225 call!260227)))))

(declare-fun b!3597297 () Bool)

(declare-fun e!2226038 () List!37962)

(assert (=> b!3597297 (= e!2226038 e!2226039)))

(declare-fun c!622689 () Bool)

(assert (=> b!3597297 (= c!622689 ((_ is ElementMatch!10357) (regex!5598 rule!403)))))

(declare-fun b!3597298 () Bool)

(declare-fun e!2226040 () List!37962)

(assert (=> b!3597298 (= e!2226040 call!260228)))

(declare-fun b!3597299 () Bool)

(assert (=> b!3597299 (= e!2226037 e!2226040)))

(assert (=> b!3597299 (= c!622688 ((_ is Union!10357) (regex!5598 rule!403)))))

(declare-fun bm!260221 () Bool)

(assert (=> bm!260221 (= call!260226 (usedCharacters!812 (ite c!622690 (reg!10686 (regex!5598 rule!403)) (ite c!622688 (regOne!21227 (regex!5598 rule!403)) (regTwo!21226 (regex!5598 rule!403))))))))

(declare-fun bm!260222 () Bool)

(assert (=> bm!260222 (= call!260225 (usedCharacters!812 (ite c!622688 (regTwo!21227 (regex!5598 rule!403)) (regOne!21226 (regex!5598 rule!403)))))))

(declare-fun b!3597300 () Bool)

(assert (=> b!3597300 (= e!2226038 Nil!37838)))

(declare-fun b!3597301 () Bool)

(assert (=> b!3597301 (= e!2226040 call!260228)))

(declare-fun d!1060048 () Bool)

(declare-fun c!622687 () Bool)

(assert (=> d!1060048 (= c!622687 (or ((_ is EmptyExpr!10357) (regex!5598 rule!403)) ((_ is EmptyLang!10357) (regex!5598 rule!403))))))

(assert (=> d!1060048 (= (usedCharacters!812 (regex!5598 rule!403)) e!2226038)))

(declare-fun bm!260223 () Bool)

(assert (=> bm!260223 (= call!260227 call!260226)))

(declare-fun b!3597302 () Bool)

(assert (=> b!3597302 (= e!2226039 (Cons!37838 (c!622676 (regex!5598 rule!403)) Nil!37838))))

(assert (= (and d!1060048 c!622687) b!3597300))

(assert (= (and d!1060048 (not c!622687)) b!3597297))

(assert (= (and b!3597297 c!622689) b!3597302))

(assert (= (and b!3597297 (not c!622689)) b!3597295))

(assert (= (and b!3597295 c!622690) b!3597296))

(assert (= (and b!3597295 (not c!622690)) b!3597299))

(assert (= (and b!3597299 c!622688) b!3597298))

(assert (= (and b!3597299 (not c!622688)) b!3597301))

(assert (= (or b!3597298 b!3597301) bm!260223))

(assert (= (or b!3597298 b!3597301) bm!260222))

(assert (= (or b!3597298 b!3597301) bm!260220))

(assert (= (or b!3597296 bm!260223) bm!260221))

(declare-fun m!4092649 () Bool)

(assert (=> bm!260220 m!4092649))

(declare-fun m!4092651 () Bool)

(assert (=> bm!260221 m!4092651))

(declare-fun m!4092653 () Bool)

(assert (=> bm!260222 m!4092653))

(assert (=> b!3597234 d!1060048))

(declare-fun d!1060050 () Bool)

(declare-fun lt!1235271 () Bool)

(declare-fun content!5392 (List!37963) (InoxSet Rule!10996))

(assert (=> d!1060050 (= lt!1235271 (select (content!5392 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2226045 () Bool)

(assert (=> d!1060050 (= lt!1235271 e!2226045)))

(declare-fun res!1453291 () Bool)

(assert (=> d!1060050 (=> (not res!1453291) (not e!2226045))))

(assert (=> d!1060050 (= res!1453291 ((_ is Cons!37839) rules!3307))))

(assert (=> d!1060050 (= (contains!7260 rules!3307 anOtherTypeRule!33) lt!1235271)))

(declare-fun b!3597307 () Bool)

(declare-fun e!2226046 () Bool)

(assert (=> b!3597307 (= e!2226045 e!2226046)))

(declare-fun res!1453292 () Bool)

(assert (=> b!3597307 (=> res!1453292 e!2226046)))

(assert (=> b!3597307 (= res!1453292 (= (h!43259 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3597308 () Bool)

(assert (=> b!3597308 (= e!2226046 (contains!7260 (t!291814 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1060050 res!1453291) b!3597307))

(assert (= (and b!3597307 (not res!1453292)) b!3597308))

(declare-fun m!4092655 () Bool)

(assert (=> d!1060050 m!4092655))

(declare-fun m!4092657 () Bool)

(assert (=> d!1060050 m!4092657))

(declare-fun m!4092659 () Bool)

(assert (=> b!3597308 m!4092659))

(assert (=> b!3597255 d!1060050))

(declare-fun d!1060052 () Bool)

(assert (=> d!1060052 (= (get!12235 lt!1235246) (v!37523 lt!1235246))))

(assert (=> b!3597233 d!1060052))

(declare-fun b!3597337 () Bool)

(declare-fun res!1453315 () Bool)

(declare-fun e!2226062 () Bool)

(assert (=> b!3597337 (=> res!1453315 e!2226062)))

(declare-fun tail!5575 (List!37962) List!37962)

(assert (=> b!3597337 (= res!1453315 (not (isEmpty!22314 (tail!5575 lt!1235239))))))

(declare-fun b!3597338 () Bool)

(declare-fun e!2226063 () Bool)

(assert (=> b!3597338 (= e!2226063 e!2226062)))

(declare-fun res!1453309 () Bool)

(assert (=> b!3597338 (=> res!1453309 e!2226062)))

(declare-fun call!260231 () Bool)

(assert (=> b!3597338 (= res!1453309 call!260231)))

(declare-fun b!3597339 () Bool)

(declare-fun e!2226066 () Bool)

(declare-fun nullable!3576 (Regex!10357) Bool)

(assert (=> b!3597339 (= e!2226066 (nullable!3576 (regex!5598 (rule!8326 (_1!21996 lt!1235242)))))))

(declare-fun b!3597340 () Bool)

(declare-fun res!1453311 () Bool)

(declare-fun e!2226061 () Bool)

(assert (=> b!3597340 (=> (not res!1453311) (not e!2226061))))

(assert (=> b!3597340 (= res!1453311 (isEmpty!22314 (tail!5575 lt!1235239)))))

(declare-fun b!3597341 () Bool)

(assert (=> b!3597341 (= e!2226062 (not (= (head!7534 lt!1235239) (c!622676 (regex!5598 (rule!8326 (_1!21996 lt!1235242)))))))))

(declare-fun b!3597342 () Bool)

(declare-fun e!2226065 () Bool)

(declare-fun lt!1235274 () Bool)

(assert (=> b!3597342 (= e!2226065 (= lt!1235274 call!260231))))

(declare-fun d!1060054 () Bool)

(assert (=> d!1060054 e!2226065))

(declare-fun c!622697 () Bool)

(assert (=> d!1060054 (= c!622697 ((_ is EmptyExpr!10357) (regex!5598 (rule!8326 (_1!21996 lt!1235242)))))))

(assert (=> d!1060054 (= lt!1235274 e!2226066)))

(declare-fun c!622699 () Bool)

(assert (=> d!1060054 (= c!622699 (isEmpty!22314 lt!1235239))))

(declare-fun validRegex!4734 (Regex!10357) Bool)

(assert (=> d!1060054 (validRegex!4734 (regex!5598 (rule!8326 (_1!21996 lt!1235242))))))

(assert (=> d!1060054 (= (matchR!4926 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235239) lt!1235274)))

(declare-fun bm!260226 () Bool)

(assert (=> bm!260226 (= call!260231 (isEmpty!22314 lt!1235239))))

(declare-fun b!3597343 () Bool)

(declare-fun e!2226064 () Bool)

(assert (=> b!3597343 (= e!2226064 (not lt!1235274))))

(declare-fun b!3597344 () Bool)

(declare-fun res!1453312 () Bool)

(declare-fun e!2226067 () Bool)

(assert (=> b!3597344 (=> res!1453312 e!2226067)))

(assert (=> b!3597344 (= res!1453312 (not ((_ is ElementMatch!10357) (regex!5598 (rule!8326 (_1!21996 lt!1235242))))))))

(assert (=> b!3597344 (= e!2226064 e!2226067)))

(declare-fun b!3597345 () Bool)

(assert (=> b!3597345 (= e!2226065 e!2226064)))

(declare-fun c!622698 () Bool)

(assert (=> b!3597345 (= c!622698 ((_ is EmptyLang!10357) (regex!5598 (rule!8326 (_1!21996 lt!1235242)))))))

(declare-fun b!3597346 () Bool)

(declare-fun res!1453310 () Bool)

(assert (=> b!3597346 (=> res!1453310 e!2226067)))

(assert (=> b!3597346 (= res!1453310 e!2226061)))

(declare-fun res!1453314 () Bool)

(assert (=> b!3597346 (=> (not res!1453314) (not e!2226061))))

(assert (=> b!3597346 (= res!1453314 lt!1235274)))

(declare-fun b!3597347 () Bool)

(declare-fun derivativeStep!3125 (Regex!10357 C!20900) Regex!10357)

(assert (=> b!3597347 (= e!2226066 (matchR!4926 (derivativeStep!3125 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) (head!7534 lt!1235239)) (tail!5575 lt!1235239)))))

(declare-fun b!3597348 () Bool)

(declare-fun res!1453316 () Bool)

(assert (=> b!3597348 (=> (not res!1453316) (not e!2226061))))

(assert (=> b!3597348 (= res!1453316 (not call!260231))))

(declare-fun b!3597349 () Bool)

(assert (=> b!3597349 (= e!2226061 (= (head!7534 lt!1235239) (c!622676 (regex!5598 (rule!8326 (_1!21996 lt!1235242))))))))

(declare-fun b!3597350 () Bool)

(assert (=> b!3597350 (= e!2226067 e!2226063)))

(declare-fun res!1453313 () Bool)

(assert (=> b!3597350 (=> (not res!1453313) (not e!2226063))))

(assert (=> b!3597350 (= res!1453313 (not lt!1235274))))

(assert (= (and d!1060054 c!622699) b!3597339))

(assert (= (and d!1060054 (not c!622699)) b!3597347))

(assert (= (and d!1060054 c!622697) b!3597342))

(assert (= (and d!1060054 (not c!622697)) b!3597345))

(assert (= (and b!3597345 c!622698) b!3597343))

(assert (= (and b!3597345 (not c!622698)) b!3597344))

(assert (= (and b!3597344 (not res!1453312)) b!3597346))

(assert (= (and b!3597346 res!1453314) b!3597348))

(assert (= (and b!3597348 res!1453316) b!3597340))

(assert (= (and b!3597340 res!1453311) b!3597349))

(assert (= (and b!3597346 (not res!1453310)) b!3597350))

(assert (= (and b!3597350 res!1453313) b!3597338))

(assert (= (and b!3597338 (not res!1453309)) b!3597337))

(assert (= (and b!3597337 (not res!1453315)) b!3597341))

(assert (= (or b!3597342 b!3597338 b!3597348) bm!260226))

(declare-fun m!4092661 () Bool)

(assert (=> b!3597339 m!4092661))

(assert (=> b!3597347 m!4092527))

(assert (=> b!3597347 m!4092527))

(declare-fun m!4092663 () Bool)

(assert (=> b!3597347 m!4092663))

(declare-fun m!4092665 () Bool)

(assert (=> b!3597347 m!4092665))

(assert (=> b!3597347 m!4092663))

(assert (=> b!3597347 m!4092665))

(declare-fun m!4092667 () Bool)

(assert (=> b!3597347 m!4092667))

(assert (=> b!3597337 m!4092665))

(assert (=> b!3597337 m!4092665))

(declare-fun m!4092669 () Bool)

(assert (=> b!3597337 m!4092669))

(assert (=> b!3597349 m!4092527))

(declare-fun m!4092671 () Bool)

(assert (=> bm!260226 m!4092671))

(assert (=> d!1060054 m!4092671))

(declare-fun m!4092673 () Bool)

(assert (=> d!1060054 m!4092673))

(assert (=> b!3597340 m!4092665))

(assert (=> b!3597340 m!4092665))

(assert (=> b!3597340 m!4092669))

(assert (=> b!3597341 m!4092527))

(assert (=> b!3597253 d!1060054))

(declare-fun d!1060056 () Bool)

(assert (=> d!1060056 (= (inv!51187 (tag!6282 (h!43259 rules!3307))) (= (mod (str.len (value!180002 (tag!6282 (h!43259 rules!3307)))) 2) 0))))

(assert (=> b!3597252 d!1060056))

(declare-fun d!1060058 () Bool)

(declare-fun res!1453317 () Bool)

(declare-fun e!2226068 () Bool)

(assert (=> d!1060058 (=> (not res!1453317) (not e!2226068))))

(assert (=> d!1060058 (= res!1453317 (semiInverseModEq!2374 (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toValue!7882 (transformation!5598 (h!43259 rules!3307)))))))

(assert (=> d!1060058 (= (inv!51190 (transformation!5598 (h!43259 rules!3307))) e!2226068)))

(declare-fun b!3597351 () Bool)

(assert (=> b!3597351 (= e!2226068 (equivClasses!2273 (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toValue!7882 (transformation!5598 (h!43259 rules!3307)))))))

(assert (= (and d!1060058 res!1453317) b!3597351))

(declare-fun m!4092675 () Bool)

(assert (=> d!1060058 m!4092675))

(declare-fun m!4092677 () Bool)

(assert (=> b!3597351 m!4092677))

(assert (=> b!3597252 d!1060058))

(declare-fun d!1060060 () Bool)

(assert (=> d!1060060 (= (isEmpty!22315 rules!3307) ((_ is Nil!37839) rules!3307))))

(assert (=> b!3597251 d!1060060))

(declare-fun b!3597362 () Bool)

(declare-fun res!1453320 () Bool)

(declare-fun e!2226075 () Bool)

(assert (=> b!3597362 (=> res!1453320 e!2226075)))

(assert (=> b!3597362 (= res!1453320 (not ((_ is IntegerValue!17486) (value!180003 token!511))))))

(declare-fun e!2226077 () Bool)

(assert (=> b!3597362 (= e!2226077 e!2226075)))

(declare-fun d!1060062 () Bool)

(declare-fun c!622704 () Bool)

(assert (=> d!1060062 (= c!622704 ((_ is IntegerValue!17484) (value!180003 token!511)))))

(declare-fun e!2226076 () Bool)

(assert (=> d!1060062 (= (inv!21 (value!180003 token!511)) e!2226076)))

(declare-fun b!3597363 () Bool)

(declare-fun inv!15 (TokenValue!5828) Bool)

(assert (=> b!3597363 (= e!2226075 (inv!15 (value!180003 token!511)))))

(declare-fun b!3597364 () Bool)

(assert (=> b!3597364 (= e!2226076 e!2226077)))

(declare-fun c!622705 () Bool)

(assert (=> b!3597364 (= c!622705 ((_ is IntegerValue!17485) (value!180003 token!511)))))

(declare-fun b!3597365 () Bool)

(declare-fun inv!17 (TokenValue!5828) Bool)

(assert (=> b!3597365 (= e!2226077 (inv!17 (value!180003 token!511)))))

(declare-fun b!3597366 () Bool)

(declare-fun inv!16 (TokenValue!5828) Bool)

(assert (=> b!3597366 (= e!2226076 (inv!16 (value!180003 token!511)))))

(assert (= (and d!1060062 c!622704) b!3597366))

(assert (= (and d!1060062 (not c!622704)) b!3597364))

(assert (= (and b!3597364 c!622705) b!3597365))

(assert (= (and b!3597364 (not c!622705)) b!3597362))

(assert (= (and b!3597362 (not res!1453320)) b!3597363))

(declare-fun m!4092679 () Bool)

(assert (=> b!3597363 m!4092679))

(declare-fun m!4092681 () Bool)

(assert (=> b!3597365 m!4092681))

(declare-fun m!4092683 () Bool)

(assert (=> b!3597366 m!4092683))

(assert (=> b!3597249 d!1060062))

(declare-fun b!3597367 () Bool)

(declare-fun res!1453327 () Bool)

(declare-fun e!2226079 () Bool)

(assert (=> b!3597367 (=> res!1453327 e!2226079)))

(assert (=> b!3597367 (= res!1453327 (not (isEmpty!22314 (tail!5575 lt!1235256))))))

(declare-fun b!3597368 () Bool)

(declare-fun e!2226080 () Bool)

(assert (=> b!3597368 (= e!2226080 e!2226079)))

(declare-fun res!1453321 () Bool)

(assert (=> b!3597368 (=> res!1453321 e!2226079)))

(declare-fun call!260232 () Bool)

(assert (=> b!3597368 (= res!1453321 call!260232)))

(declare-fun b!3597369 () Bool)

(declare-fun e!2226083 () Bool)

(assert (=> b!3597369 (= e!2226083 (nullable!3576 (regex!5598 rule!403)))))

(declare-fun b!3597370 () Bool)

(declare-fun res!1453323 () Bool)

(declare-fun e!2226078 () Bool)

(assert (=> b!3597370 (=> (not res!1453323) (not e!2226078))))

(assert (=> b!3597370 (= res!1453323 (isEmpty!22314 (tail!5575 lt!1235256)))))

(declare-fun b!3597371 () Bool)

(assert (=> b!3597371 (= e!2226079 (not (= (head!7534 lt!1235256) (c!622676 (regex!5598 rule!403)))))))

(declare-fun b!3597372 () Bool)

(declare-fun e!2226082 () Bool)

(declare-fun lt!1235275 () Bool)

(assert (=> b!3597372 (= e!2226082 (= lt!1235275 call!260232))))

(declare-fun d!1060064 () Bool)

(assert (=> d!1060064 e!2226082))

(declare-fun c!622706 () Bool)

(assert (=> d!1060064 (= c!622706 ((_ is EmptyExpr!10357) (regex!5598 rule!403)))))

(assert (=> d!1060064 (= lt!1235275 e!2226083)))

(declare-fun c!622708 () Bool)

(assert (=> d!1060064 (= c!622708 (isEmpty!22314 lt!1235256))))

(assert (=> d!1060064 (validRegex!4734 (regex!5598 rule!403))))

(assert (=> d!1060064 (= (matchR!4926 (regex!5598 rule!403) lt!1235256) lt!1235275)))

(declare-fun bm!260227 () Bool)

(assert (=> bm!260227 (= call!260232 (isEmpty!22314 lt!1235256))))

(declare-fun b!3597373 () Bool)

(declare-fun e!2226081 () Bool)

(assert (=> b!3597373 (= e!2226081 (not lt!1235275))))

(declare-fun b!3597374 () Bool)

(declare-fun res!1453324 () Bool)

(declare-fun e!2226084 () Bool)

(assert (=> b!3597374 (=> res!1453324 e!2226084)))

(assert (=> b!3597374 (= res!1453324 (not ((_ is ElementMatch!10357) (regex!5598 rule!403))))))

(assert (=> b!3597374 (= e!2226081 e!2226084)))

(declare-fun b!3597375 () Bool)

(assert (=> b!3597375 (= e!2226082 e!2226081)))

(declare-fun c!622707 () Bool)

(assert (=> b!3597375 (= c!622707 ((_ is EmptyLang!10357) (regex!5598 rule!403)))))

(declare-fun b!3597376 () Bool)

(declare-fun res!1453322 () Bool)

(assert (=> b!3597376 (=> res!1453322 e!2226084)))

(assert (=> b!3597376 (= res!1453322 e!2226078)))

(declare-fun res!1453326 () Bool)

(assert (=> b!3597376 (=> (not res!1453326) (not e!2226078))))

(assert (=> b!3597376 (= res!1453326 lt!1235275)))

(declare-fun b!3597377 () Bool)

(assert (=> b!3597377 (= e!2226083 (matchR!4926 (derivativeStep!3125 (regex!5598 rule!403) (head!7534 lt!1235256)) (tail!5575 lt!1235256)))))

(declare-fun b!3597378 () Bool)

(declare-fun res!1453328 () Bool)

(assert (=> b!3597378 (=> (not res!1453328) (not e!2226078))))

(assert (=> b!3597378 (= res!1453328 (not call!260232))))

(declare-fun b!3597379 () Bool)

(assert (=> b!3597379 (= e!2226078 (= (head!7534 lt!1235256) (c!622676 (regex!5598 rule!403))))))

(declare-fun b!3597380 () Bool)

(assert (=> b!3597380 (= e!2226084 e!2226080)))

(declare-fun res!1453325 () Bool)

(assert (=> b!3597380 (=> (not res!1453325) (not e!2226080))))

(assert (=> b!3597380 (= res!1453325 (not lt!1235275))))

(assert (= (and d!1060064 c!622708) b!3597369))

(assert (= (and d!1060064 (not c!622708)) b!3597377))

(assert (= (and d!1060064 c!622706) b!3597372))

(assert (= (and d!1060064 (not c!622706)) b!3597375))

(assert (= (and b!3597375 c!622707) b!3597373))

(assert (= (and b!3597375 (not c!622707)) b!3597374))

(assert (= (and b!3597374 (not res!1453324)) b!3597376))

(assert (= (and b!3597376 res!1453326) b!3597378))

(assert (= (and b!3597378 res!1453328) b!3597370))

(assert (= (and b!3597370 res!1453323) b!3597379))

(assert (= (and b!3597376 (not res!1453322)) b!3597380))

(assert (= (and b!3597380 res!1453325) b!3597368))

(assert (= (and b!3597368 (not res!1453321)) b!3597367))

(assert (= (and b!3597367 (not res!1453327)) b!3597371))

(assert (= (or b!3597372 b!3597368 b!3597378) bm!260227))

(declare-fun m!4092685 () Bool)

(assert (=> b!3597369 m!4092685))

(declare-fun m!4092687 () Bool)

(assert (=> b!3597377 m!4092687))

(assert (=> b!3597377 m!4092687))

(declare-fun m!4092689 () Bool)

(assert (=> b!3597377 m!4092689))

(declare-fun m!4092691 () Bool)

(assert (=> b!3597377 m!4092691))

(assert (=> b!3597377 m!4092689))

(assert (=> b!3597377 m!4092691))

(declare-fun m!4092693 () Bool)

(assert (=> b!3597377 m!4092693))

(assert (=> b!3597367 m!4092691))

(assert (=> b!3597367 m!4092691))

(declare-fun m!4092695 () Bool)

(assert (=> b!3597367 m!4092695))

(assert (=> b!3597379 m!4092687))

(declare-fun m!4092697 () Bool)

(assert (=> bm!260227 m!4092697))

(assert (=> d!1060064 m!4092697))

(declare-fun m!4092699 () Bool)

(assert (=> d!1060064 m!4092699))

(assert (=> b!3597370 m!4092691))

(assert (=> b!3597370 m!4092691))

(assert (=> b!3597370 m!4092695))

(assert (=> b!3597371 m!4092687))

(assert (=> b!3597248 d!1060064))

(declare-fun d!1060066 () Bool)

(declare-fun res!1453333 () Bool)

(declare-fun e!2226087 () Bool)

(assert (=> d!1060066 (=> (not res!1453333) (not e!2226087))))

(assert (=> d!1060066 (= res!1453333 (validRegex!4734 (regex!5598 rule!403)))))

(assert (=> d!1060066 (= (ruleValid!1863 thiss!23823 rule!403) e!2226087)))

(declare-fun b!3597385 () Bool)

(declare-fun res!1453334 () Bool)

(assert (=> b!3597385 (=> (not res!1453334) (not e!2226087))))

(assert (=> b!3597385 (= res!1453334 (not (nullable!3576 (regex!5598 rule!403))))))

(declare-fun b!3597386 () Bool)

(assert (=> b!3597386 (= e!2226087 (not (= (tag!6282 rule!403) (String!42475 ""))))))

(assert (= (and d!1060066 res!1453333) b!3597385))

(assert (= (and b!3597385 res!1453334) b!3597386))

(assert (=> d!1060066 m!4092699))

(assert (=> b!3597385 m!4092685))

(assert (=> b!3597248 d!1060066))

(declare-fun d!1060068 () Bool)

(assert (=> d!1060068 (ruleValid!1863 thiss!23823 rule!403)))

(declare-fun lt!1235278 () Unit!53851)

(declare-fun choose!20949 (LexerInterface!5187 Rule!10996 List!37963) Unit!53851)

(assert (=> d!1060068 (= lt!1235278 (choose!20949 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1060068 (contains!7260 rules!3307 rule!403)))

(assert (=> d!1060068 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1018 thiss!23823 rule!403 rules!3307) lt!1235278)))

(declare-fun bs!570428 () Bool)

(assert (= bs!570428 d!1060068))

(assert (=> bs!570428 m!4092517))

(declare-fun m!4092701 () Bool)

(assert (=> bs!570428 m!4092701))

(assert (=> bs!570428 m!4092589))

(assert (=> b!3597248 d!1060068))

(declare-fun d!1060070 () Bool)

(assert (=> d!1060070 (= (inv!51187 (tag!6282 rule!403)) (= (mod (str.len (value!180002 (tag!6282 rule!403))) 2) 0))))

(assert (=> b!3597247 d!1060070))

(declare-fun d!1060072 () Bool)

(declare-fun res!1453335 () Bool)

(declare-fun e!2226088 () Bool)

(assert (=> d!1060072 (=> (not res!1453335) (not e!2226088))))

(assert (=> d!1060072 (= res!1453335 (semiInverseModEq!2374 (toChars!7741 (transformation!5598 rule!403)) (toValue!7882 (transformation!5598 rule!403))))))

(assert (=> d!1060072 (= (inv!51190 (transformation!5598 rule!403)) e!2226088)))

(declare-fun b!3597387 () Bool)

(assert (=> b!3597387 (= e!2226088 (equivClasses!2273 (toChars!7741 (transformation!5598 rule!403)) (toValue!7882 (transformation!5598 rule!403))))))

(assert (= (and d!1060072 res!1453335) b!3597387))

(declare-fun m!4092703 () Bool)

(assert (=> d!1060072 m!4092703))

(declare-fun m!4092705 () Bool)

(assert (=> b!3597387 m!4092705))

(assert (=> b!3597247 d!1060072))

(declare-fun d!1060074 () Bool)

(declare-fun res!1453340 () Bool)

(declare-fun e!2226091 () Bool)

(assert (=> d!1060074 (=> (not res!1453340) (not e!2226091))))

(assert (=> d!1060074 (= res!1453340 (not (isEmpty!22314 (originalCharacters!6312 token!511))))))

(assert (=> d!1060074 (= (inv!51191 token!511) e!2226091)))

(declare-fun b!3597392 () Bool)

(declare-fun res!1453341 () Bool)

(assert (=> b!3597392 (=> (not res!1453341) (not e!2226091))))

(declare-fun dynLambda!16309 (Int TokenValue!5828) BalanceConc!22648)

(assert (=> b!3597392 (= res!1453341 (= (originalCharacters!6312 token!511) (list!13930 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (value!180003 token!511)))))))

(declare-fun b!3597393 () Bool)

(assert (=> b!3597393 (= e!2226091 (= (size!28830 token!511) (size!28832 (originalCharacters!6312 token!511))))))

(assert (= (and d!1060074 res!1453340) b!3597392))

(assert (= (and b!3597392 res!1453341) b!3597393))

(declare-fun b_lambda!106335 () Bool)

(assert (=> (not b_lambda!106335) (not b!3597392)))

(declare-fun tb!205617 () Bool)

(declare-fun t!291816 () Bool)

(assert (=> (and b!3597240 (= (toChars!7741 (transformation!5598 rule!403)) (toChars!7741 (transformation!5598 (rule!8326 token!511)))) t!291816) tb!205617))

(declare-fun b!3597398 () Bool)

(declare-fun e!2226094 () Bool)

(declare-fun tp!1100749 () Bool)

(declare-fun inv!51194 (Conc!11517) Bool)

(assert (=> b!3597398 (= e!2226094 (and (inv!51194 (c!622677 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (value!180003 token!511)))) tp!1100749))))

(declare-fun result!250658 () Bool)

(declare-fun inv!51195 (BalanceConc!22648) Bool)

(assert (=> tb!205617 (= result!250658 (and (inv!51195 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (value!180003 token!511))) e!2226094))))

(assert (= tb!205617 b!3597398))

(declare-fun m!4092707 () Bool)

(assert (=> b!3597398 m!4092707))

(declare-fun m!4092709 () Bool)

(assert (=> tb!205617 m!4092709))

(assert (=> b!3597392 t!291816))

(declare-fun b_and!260915 () Bool)

(assert (= b_and!260901 (and (=> t!291816 result!250658) b_and!260915)))

(declare-fun t!291818 () Bool)

(declare-fun tb!205619 () Bool)

(assert (=> (and b!3597263 (= (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toChars!7741 (transformation!5598 (rule!8326 token!511)))) t!291818) tb!205619))

(declare-fun result!250662 () Bool)

(assert (= result!250662 result!250658))

(assert (=> b!3597392 t!291818))

(declare-fun b_and!260917 () Bool)

(assert (= b_and!260905 (and (=> t!291818 result!250662) b_and!260917)))

(declare-fun t!291820 () Bool)

(declare-fun tb!205621 () Bool)

(assert (=> (and b!3597254 (= (toChars!7741 (transformation!5598 (rule!8326 token!511))) (toChars!7741 (transformation!5598 (rule!8326 token!511)))) t!291820) tb!205621))

(declare-fun result!250664 () Bool)

(assert (= result!250664 result!250658))

(assert (=> b!3597392 t!291820))

(declare-fun b_and!260919 () Bool)

(assert (= b_and!260909 (and (=> t!291820 result!250664) b_and!260919)))

(declare-fun t!291822 () Bool)

(declare-fun tb!205623 () Bool)

(assert (=> (and b!3597250 (= (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toChars!7741 (transformation!5598 (rule!8326 token!511)))) t!291822) tb!205623))

(declare-fun result!250666 () Bool)

(assert (= result!250666 result!250658))

(assert (=> b!3597392 t!291822))

(declare-fun b_and!260921 () Bool)

(assert (= b_and!260913 (and (=> t!291822 result!250666) b_and!260921)))

(declare-fun m!4092711 () Bool)

(assert (=> d!1060074 m!4092711))

(declare-fun m!4092713 () Bool)

(assert (=> b!3597392 m!4092713))

(assert (=> b!3597392 m!4092713))

(declare-fun m!4092715 () Bool)

(assert (=> b!3597392 m!4092715))

(declare-fun m!4092717 () Bool)

(assert (=> b!3597393 m!4092717))

(assert (=> start!334178 d!1060074))

(declare-fun d!1060076 () Bool)

(declare-fun dynLambda!16310 (Int BalanceConc!22648) TokenValue!5828)

(assert (=> d!1060076 (= (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) (seqFromList!4151 lt!1235239)) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (seqFromList!4151 lt!1235239)))))

(declare-fun b_lambda!106337 () Bool)

(assert (=> (not b_lambda!106337) (not d!1060076)))

(declare-fun tb!205625 () Bool)

(declare-fun t!291824 () Bool)

(assert (=> (and b!3597240 (= (toValue!7882 (transformation!5598 rule!403)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291824) tb!205625))

(declare-fun result!250668 () Bool)

(assert (=> tb!205625 (= result!250668 (inv!21 (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (seqFromList!4151 lt!1235239))))))

(declare-fun m!4092719 () Bool)

(assert (=> tb!205625 m!4092719))

(assert (=> d!1060076 t!291824))

(declare-fun b_and!260923 () Bool)

(assert (= b_and!260899 (and (=> t!291824 result!250668) b_and!260923)))

(declare-fun tb!205627 () Bool)

(declare-fun t!291826 () Bool)

(assert (=> (and b!3597263 (= (toValue!7882 (transformation!5598 anOtherTypeRule!33)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291826) tb!205627))

(declare-fun result!250672 () Bool)

(assert (= result!250672 result!250668))

(assert (=> d!1060076 t!291826))

(declare-fun b_and!260925 () Bool)

(assert (= b_and!260903 (and (=> t!291826 result!250672) b_and!260925)))

(declare-fun tb!205629 () Bool)

(declare-fun t!291828 () Bool)

(assert (=> (and b!3597254 (= (toValue!7882 (transformation!5598 (rule!8326 token!511))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291828) tb!205629))

(declare-fun result!250674 () Bool)

(assert (= result!250674 result!250668))

(assert (=> d!1060076 t!291828))

(declare-fun b_and!260927 () Bool)

(assert (= b_and!260907 (and (=> t!291828 result!250674) b_and!260927)))

(declare-fun tb!205631 () Bool)

(declare-fun t!291830 () Bool)

(assert (=> (and b!3597250 (= (toValue!7882 (transformation!5598 (h!43259 rules!3307))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291830) tb!205631))

(declare-fun result!250676 () Bool)

(assert (= result!250676 result!250668))

(assert (=> d!1060076 t!291830))

(declare-fun b_and!260929 () Bool)

(assert (= b_and!260911 (and (=> t!291830 result!250676) b_and!260929)))

(assert (=> d!1060076 m!4092573))

(declare-fun m!4092721 () Bool)

(assert (=> d!1060076 m!4092721))

(assert (=> b!3597266 d!1060076))

(declare-fun d!1060078 () Bool)

(declare-fun fromListB!1915 (List!37962) BalanceConc!22648)

(assert (=> d!1060078 (= (seqFromList!4151 lt!1235239) (fromListB!1915 lt!1235239))))

(declare-fun bs!570429 () Bool)

(assert (= bs!570429 d!1060078))

(declare-fun m!4092723 () Bool)

(assert (=> bs!570429 m!4092723))

(assert (=> b!3597266 d!1060078))

(declare-fun d!1060080 () Bool)

(declare-fun lt!1235281 () List!37962)

(assert (=> d!1060080 (= (++!9414 lt!1235239 lt!1235281) lt!1235252)))

(declare-fun e!2226100 () List!37962)

(assert (=> d!1060080 (= lt!1235281 e!2226100)))

(declare-fun c!622711 () Bool)

(assert (=> d!1060080 (= c!622711 ((_ is Cons!37838) lt!1235239))))

(assert (=> d!1060080 (>= (size!28832 lt!1235252) (size!28832 lt!1235239))))

(assert (=> d!1060080 (= (getSuffix!1536 lt!1235252 lt!1235239) lt!1235281)))

(declare-fun b!3597405 () Bool)

(assert (=> b!3597405 (= e!2226100 (getSuffix!1536 (tail!5575 lt!1235252) (t!291813 lt!1235239)))))

(declare-fun b!3597406 () Bool)

(assert (=> b!3597406 (= e!2226100 lt!1235252)))

(assert (= (and d!1060080 c!622711) b!3597405))

(assert (= (and d!1060080 (not c!622711)) b!3597406))

(declare-fun m!4092725 () Bool)

(assert (=> d!1060080 m!4092725))

(declare-fun m!4092727 () Bool)

(assert (=> d!1060080 m!4092727))

(assert (=> d!1060080 m!4092565))

(declare-fun m!4092729 () Bool)

(assert (=> b!3597405 m!4092729))

(assert (=> b!3597405 m!4092729))

(declare-fun m!4092731 () Bool)

(assert (=> b!3597405 m!4092731))

(assert (=> b!3597266 d!1060080))

(declare-fun d!1060082 () Bool)

(declare-fun lt!1235284 () Int)

(assert (=> d!1060082 (>= lt!1235284 0)))

(declare-fun e!2226103 () Int)

(assert (=> d!1060082 (= lt!1235284 e!2226103)))

(declare-fun c!622714 () Bool)

(assert (=> d!1060082 (= c!622714 ((_ is Nil!37838) lt!1235239))))

(assert (=> d!1060082 (= (size!28832 lt!1235239) lt!1235284)))

(declare-fun b!3597411 () Bool)

(assert (=> b!3597411 (= e!2226103 0)))

(declare-fun b!3597412 () Bool)

(assert (=> b!3597412 (= e!2226103 (+ 1 (size!28832 (t!291813 lt!1235239))))))

(assert (= (and d!1060082 c!622714) b!3597411))

(assert (= (and d!1060082 (not c!622714)) b!3597412))

(declare-fun m!4092733 () Bool)

(assert (=> b!3597412 m!4092733))

(assert (=> b!3597266 d!1060082))

(declare-fun d!1060084 () Bool)

(assert (=> d!1060084 (= (_2!21996 lt!1235242) lt!1235258)))

(declare-fun lt!1235287 () Unit!53851)

(declare-fun choose!20950 (List!37962 List!37962 List!37962 List!37962 List!37962) Unit!53851)

(assert (=> d!1060084 (= lt!1235287 (choose!20950 lt!1235239 (_2!21996 lt!1235242) lt!1235239 lt!1235258 lt!1235252))))

(assert (=> d!1060084 (isPrefix!2961 lt!1235239 lt!1235252)))

(assert (=> d!1060084 (= (lemmaSamePrefixThenSameSuffix!1316 lt!1235239 (_2!21996 lt!1235242) lt!1235239 lt!1235258 lt!1235252) lt!1235287)))

(declare-fun bs!570430 () Bool)

(assert (= bs!570430 d!1060084))

(declare-fun m!4092735 () Bool)

(assert (=> bs!570430 m!4092735))

(assert (=> bs!570430 m!4092599))

(assert (=> b!3597266 d!1060084))

(declare-fun d!1060086 () Bool)

(assert (=> d!1060086 (= (maxPrefixOneRule!1865 thiss!23823 (rule!8326 (_1!21996 lt!1235242)) lt!1235252) (Some!7825 (tuple2!37725 (Token!10563 (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) (seqFromList!4151 lt!1235239)) (rule!8326 (_1!21996 lt!1235242)) (size!28832 lt!1235239) lt!1235239) (_2!21996 lt!1235242))))))

(declare-fun lt!1235290 () Unit!53851)

(declare-fun choose!20951 (LexerInterface!5187 List!37963 List!37962 List!37962 List!37962 Rule!10996) Unit!53851)

(assert (=> d!1060086 (= lt!1235290 (choose!20951 thiss!23823 rules!3307 lt!1235239 lt!1235252 (_2!21996 lt!1235242) (rule!8326 (_1!21996 lt!1235242))))))

(assert (=> d!1060086 (not (isEmpty!22315 rules!3307))))

(assert (=> d!1060086 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!937 thiss!23823 rules!3307 lt!1235239 lt!1235252 (_2!21996 lt!1235242) (rule!8326 (_1!21996 lt!1235242))) lt!1235290)))

(declare-fun bs!570431 () Bool)

(assert (= bs!570431 d!1060086))

(assert (=> bs!570431 m!4092569))

(assert (=> bs!570431 m!4092565))

(assert (=> bs!570431 m!4092573))

(assert (=> bs!570431 m!4092575))

(assert (=> bs!570431 m!4092499))

(declare-fun m!4092737 () Bool)

(assert (=> bs!570431 m!4092737))

(assert (=> bs!570431 m!4092573))

(assert (=> b!3597266 d!1060086))

(declare-fun b!3597468 () Bool)

(declare-fun res!1453379 () Bool)

(declare-fun e!2226145 () Bool)

(assert (=> b!3597468 (=> (not res!1453379) (not e!2226145))))

(declare-fun lt!1235317 () Option!7826)

(assert (=> b!3597468 (= res!1453379 (= (rule!8326 (_1!21996 (get!12235 lt!1235317))) (rule!8326 (_1!21996 lt!1235242))))))

(declare-fun b!3597469 () Bool)

(declare-fun e!2226146 () Bool)

(declare-datatypes ((tuple2!37728 0))(
  ( (tuple2!37729 (_1!21998 List!37962) (_2!21998 List!37962)) )
))
(declare-fun findLongestMatchInner!982 (Regex!10357 List!37962 Int List!37962 List!37962 Int) tuple2!37728)

(assert (=> b!3597469 (= e!2226146 (matchR!4926 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) (_1!21998 (findLongestMatchInner!982 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) Nil!37838 (size!28832 Nil!37838) lt!1235252 lt!1235252 (size!28832 lt!1235252)))))))

(declare-fun b!3597470 () Bool)

(declare-fun e!2226144 () Bool)

(assert (=> b!3597470 (= e!2226144 e!2226145)))

(declare-fun res!1453378 () Bool)

(assert (=> b!3597470 (=> (not res!1453378) (not e!2226145))))

(assert (=> b!3597470 (= res!1453378 (matchR!4926 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235317))))))))

(declare-fun b!3597471 () Bool)

(declare-fun e!2226143 () Option!7826)

(declare-fun lt!1235313 () tuple2!37728)

(assert (=> b!3597471 (= e!2226143 (Some!7825 (tuple2!37725 (Token!10563 (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) (seqFromList!4151 (_1!21998 lt!1235313))) (rule!8326 (_1!21996 lt!1235242)) (size!28831 (seqFromList!4151 (_1!21998 lt!1235313))) (_1!21998 lt!1235313)) (_2!21998 lt!1235313))))))

(declare-fun lt!1235315 () Unit!53851)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!955 (Regex!10357 List!37962) Unit!53851)

(assert (=> b!3597471 (= lt!1235315 (longestMatchIsAcceptedByMatchOrIsEmpty!955 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235252))))

(declare-fun res!1453376 () Bool)

(assert (=> b!3597471 (= res!1453376 (isEmpty!22314 (_1!21998 (findLongestMatchInner!982 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) Nil!37838 (size!28832 Nil!37838) lt!1235252 lt!1235252 (size!28832 lt!1235252)))))))

(assert (=> b!3597471 (=> res!1453376 e!2226146)))

(assert (=> b!3597471 e!2226146))

(declare-fun lt!1235316 () Unit!53851)

(assert (=> b!3597471 (= lt!1235316 lt!1235315)))

(declare-fun lt!1235314 () Unit!53851)

(assert (=> b!3597471 (= lt!1235314 (lemmaSemiInverse!1355 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) (seqFromList!4151 (_1!21998 lt!1235313))))))

(declare-fun b!3597472 () Bool)

(assert (=> b!3597472 (= e!2226145 (= (size!28830 (_1!21996 (get!12235 lt!1235317))) (size!28832 (originalCharacters!6312 (_1!21996 (get!12235 lt!1235317))))))))

(declare-fun d!1060088 () Bool)

(assert (=> d!1060088 e!2226144))

(declare-fun res!1453381 () Bool)

(assert (=> d!1060088 (=> res!1453381 e!2226144)))

(declare-fun isEmpty!22318 (Option!7826) Bool)

(assert (=> d!1060088 (= res!1453381 (isEmpty!22318 lt!1235317))))

(assert (=> d!1060088 (= lt!1235317 e!2226143)))

(declare-fun c!622717 () Bool)

(assert (=> d!1060088 (= c!622717 (isEmpty!22314 (_1!21998 lt!1235313)))))

(declare-fun findLongestMatch!897 (Regex!10357 List!37962) tuple2!37728)

(assert (=> d!1060088 (= lt!1235313 (findLongestMatch!897 (regex!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235252))))

(assert (=> d!1060088 (ruleValid!1863 thiss!23823 (rule!8326 (_1!21996 lt!1235242)))))

(assert (=> d!1060088 (= (maxPrefixOneRule!1865 thiss!23823 (rule!8326 (_1!21996 lt!1235242)) lt!1235252) lt!1235317)))

(declare-fun b!3597473 () Bool)

(assert (=> b!3597473 (= e!2226143 None!7825)))

(declare-fun b!3597474 () Bool)

(declare-fun res!1453380 () Bool)

(assert (=> b!3597474 (=> (not res!1453380) (not e!2226145))))

(assert (=> b!3597474 (= res!1453380 (< (size!28832 (_2!21996 (get!12235 lt!1235317))) (size!28832 lt!1235252)))))

(declare-fun b!3597475 () Bool)

(declare-fun res!1453377 () Bool)

(assert (=> b!3597475 (=> (not res!1453377) (not e!2226145))))

(assert (=> b!3597475 (= res!1453377 (= (value!180003 (_1!21996 (get!12235 lt!1235317))) (apply!9104 (transformation!5598 (rule!8326 (_1!21996 (get!12235 lt!1235317)))) (seqFromList!4151 (originalCharacters!6312 (_1!21996 (get!12235 lt!1235317)))))))))

(declare-fun b!3597476 () Bool)

(declare-fun res!1453375 () Bool)

(assert (=> b!3597476 (=> (not res!1453375) (not e!2226145))))

(assert (=> b!3597476 (= res!1453375 (= (++!9414 (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235317)))) (_2!21996 (get!12235 lt!1235317))) lt!1235252))))

(assert (= (and d!1060088 c!622717) b!3597473))

(assert (= (and d!1060088 (not c!622717)) b!3597471))

(assert (= (and b!3597471 (not res!1453376)) b!3597469))

(assert (= (and d!1060088 (not res!1453381)) b!3597470))

(assert (= (and b!3597470 res!1453378) b!3597476))

(assert (= (and b!3597476 res!1453375) b!3597474))

(assert (= (and b!3597474 res!1453380) b!3597468))

(assert (= (and b!3597468 res!1453379) b!3597475))

(assert (= (and b!3597475 res!1453377) b!3597472))

(declare-fun m!4092799 () Bool)

(assert (=> b!3597475 m!4092799))

(declare-fun m!4092801 () Bool)

(assert (=> b!3597475 m!4092801))

(assert (=> b!3597475 m!4092801))

(declare-fun m!4092803 () Bool)

(assert (=> b!3597475 m!4092803))

(declare-fun m!4092805 () Bool)

(assert (=> b!3597469 m!4092805))

(assert (=> b!3597469 m!4092727))

(assert (=> b!3597469 m!4092805))

(assert (=> b!3597469 m!4092727))

(declare-fun m!4092807 () Bool)

(assert (=> b!3597469 m!4092807))

(declare-fun m!4092809 () Bool)

(assert (=> b!3597469 m!4092809))

(assert (=> b!3597468 m!4092799))

(declare-fun m!4092811 () Bool)

(assert (=> b!3597471 m!4092811))

(declare-fun m!4092813 () Bool)

(assert (=> b!3597471 m!4092813))

(assert (=> b!3597471 m!4092811))

(assert (=> b!3597471 m!4092727))

(assert (=> b!3597471 m!4092805))

(assert (=> b!3597471 m!4092727))

(assert (=> b!3597471 m!4092807))

(declare-fun m!4092815 () Bool)

(assert (=> b!3597471 m!4092815))

(declare-fun m!4092817 () Bool)

(assert (=> b!3597471 m!4092817))

(assert (=> b!3597471 m!4092805))

(assert (=> b!3597471 m!4092811))

(declare-fun m!4092819 () Bool)

(assert (=> b!3597471 m!4092819))

(assert (=> b!3597471 m!4092811))

(declare-fun m!4092821 () Bool)

(assert (=> b!3597471 m!4092821))

(declare-fun m!4092823 () Bool)

(assert (=> d!1060088 m!4092823))

(declare-fun m!4092825 () Bool)

(assert (=> d!1060088 m!4092825))

(declare-fun m!4092827 () Bool)

(assert (=> d!1060088 m!4092827))

(declare-fun m!4092829 () Bool)

(assert (=> d!1060088 m!4092829))

(assert (=> b!3597472 m!4092799))

(declare-fun m!4092831 () Bool)

(assert (=> b!3597472 m!4092831))

(assert (=> b!3597476 m!4092799))

(declare-fun m!4092833 () Bool)

(assert (=> b!3597476 m!4092833))

(assert (=> b!3597476 m!4092833))

(declare-fun m!4092835 () Bool)

(assert (=> b!3597476 m!4092835))

(assert (=> b!3597476 m!4092835))

(declare-fun m!4092837 () Bool)

(assert (=> b!3597476 m!4092837))

(assert (=> b!3597474 m!4092799))

(declare-fun m!4092839 () Bool)

(assert (=> b!3597474 m!4092839))

(assert (=> b!3597474 m!4092727))

(assert (=> b!3597470 m!4092799))

(assert (=> b!3597470 m!4092833))

(assert (=> b!3597470 m!4092833))

(assert (=> b!3597470 m!4092835))

(assert (=> b!3597470 m!4092835))

(declare-fun m!4092841 () Bool)

(assert (=> b!3597470 m!4092841))

(assert (=> b!3597266 d!1060088))

(declare-fun d!1060112 () Bool)

(assert (=> d!1060112 (= (isEmpty!22314 (_2!21996 lt!1235244)) ((_ is Nil!37838) (_2!21996 lt!1235244)))))

(assert (=> b!3597245 d!1060112))

(declare-fun d!1060114 () Bool)

(declare-fun res!1453394 () Bool)

(declare-fun e!2226157 () Bool)

(assert (=> d!1060114 (=> res!1453394 e!2226157)))

(assert (=> d!1060114 (= res!1453394 (not ((_ is Cons!37839) rules!3307)))))

(assert (=> d!1060114 (= (sepAndNonSepRulesDisjointChars!1768 rules!3307 rules!3307) e!2226157)))

(declare-fun b!3597489 () Bool)

(declare-fun e!2226158 () Bool)

(assert (=> b!3597489 (= e!2226157 e!2226158)))

(declare-fun res!1453395 () Bool)

(assert (=> b!3597489 (=> (not res!1453395) (not e!2226158))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!801 (Rule!10996 List!37963) Bool)

(assert (=> b!3597489 (= res!1453395 (ruleDisjointCharsFromAllFromOtherType!801 (h!43259 rules!3307) rules!3307))))

(declare-fun b!3597490 () Bool)

(assert (=> b!3597490 (= e!2226158 (sepAndNonSepRulesDisjointChars!1768 rules!3307 (t!291814 rules!3307)))))

(assert (= (and d!1060114 (not res!1453394)) b!3597489))

(assert (= (and b!3597489 res!1453395) b!3597490))

(declare-fun m!4092843 () Bool)

(assert (=> b!3597489 m!4092843))

(declare-fun m!4092845 () Bool)

(assert (=> b!3597490 m!4092845))

(assert (=> b!3597244 d!1060114))

(declare-fun d!1060116 () Bool)

(declare-fun lt!1235320 () Bool)

(assert (=> d!1060116 (= lt!1235320 (select (content!5392 rules!3307) rule!403))))

(declare-fun e!2226159 () Bool)

(assert (=> d!1060116 (= lt!1235320 e!2226159)))

(declare-fun res!1453396 () Bool)

(assert (=> d!1060116 (=> (not res!1453396) (not e!2226159))))

(assert (=> d!1060116 (= res!1453396 ((_ is Cons!37839) rules!3307))))

(assert (=> d!1060116 (= (contains!7260 rules!3307 rule!403) lt!1235320)))

(declare-fun b!3597491 () Bool)

(declare-fun e!2226160 () Bool)

(assert (=> b!3597491 (= e!2226159 e!2226160)))

(declare-fun res!1453397 () Bool)

(assert (=> b!3597491 (=> res!1453397 e!2226160)))

(assert (=> b!3597491 (= res!1453397 (= (h!43259 rules!3307) rule!403))))

(declare-fun b!3597492 () Bool)

(assert (=> b!3597492 (= e!2226160 (contains!7260 (t!291814 rules!3307) rule!403))))

(assert (= (and d!1060116 res!1453396) b!3597491))

(assert (= (and b!3597491 (not res!1453397)) b!3597492))

(assert (=> d!1060116 m!4092655))

(declare-fun m!4092847 () Bool)

(assert (=> d!1060116 m!4092847))

(declare-fun m!4092849 () Bool)

(assert (=> b!3597492 m!4092849))

(assert (=> b!3597264 d!1060116))

(declare-fun d!1060118 () Bool)

(assert (=> d!1060118 (= (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242))) (fromListB!1915 (originalCharacters!6312 (_1!21996 lt!1235242))))))

(declare-fun bs!570434 () Bool)

(assert (= bs!570434 d!1060118))

(declare-fun m!4092851 () Bool)

(assert (=> bs!570434 m!4092851))

(assert (=> b!3597243 d!1060118))

(declare-fun b!3597716 () Bool)

(declare-fun e!2226284 () Bool)

(assert (=> b!3597716 (= e!2226284 true)))

(declare-fun d!1060120 () Bool)

(assert (=> d!1060120 e!2226284))

(assert (= d!1060120 b!3597716))

(declare-fun lambda!123930 () Int)

(declare-fun order!20589 () Int)

(declare-fun order!20587 () Int)

(declare-fun dynLambda!16311 (Int Int) Int)

(declare-fun dynLambda!16312 (Int Int) Int)

(assert (=> b!3597716 (< (dynLambda!16311 order!20587 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) (dynLambda!16312 order!20589 lambda!123930))))

(declare-fun order!20591 () Int)

(declare-fun dynLambda!16313 (Int Int) Int)

(assert (=> b!3597716 (< (dynLambda!16313 order!20591 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) (dynLambda!16312 order!20589 lambda!123930))))

(assert (=> d!1060120 (= (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242)))))))

(declare-fun lt!1235424 () Unit!53851)

(declare-fun Forall2of!295 (Int BalanceConc!22648 BalanceConc!22648) Unit!53851)

(assert (=> d!1060120 (= lt!1235424 (Forall2of!295 lambda!123930 lt!1235254 (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242)))))))

(assert (=> d!1060120 (= (list!13930 lt!1235254) (list!13930 (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242)))))))

(assert (=> d!1060120 (= (lemmaEqSameImage!789 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254 (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242)))) lt!1235424)))

(declare-fun b_lambda!106351 () Bool)

(assert (=> (not b_lambda!106351) (not d!1060120)))

(declare-fun tb!205665 () Bool)

(declare-fun t!291864 () Bool)

(assert (=> (and b!3597240 (= (toValue!7882 (transformation!5598 rule!403)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291864) tb!205665))

(declare-fun result!250714 () Bool)

(assert (=> tb!205665 (= result!250714 (inv!21 (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254)))))

(declare-fun m!4093083 () Bool)

(assert (=> tb!205665 m!4093083))

(assert (=> d!1060120 t!291864))

(declare-fun b_and!260979 () Bool)

(assert (= b_and!260923 (and (=> t!291864 result!250714) b_and!260979)))

(declare-fun tb!205667 () Bool)

(declare-fun t!291866 () Bool)

(assert (=> (and b!3597263 (= (toValue!7882 (transformation!5598 anOtherTypeRule!33)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291866) tb!205667))

(declare-fun result!250716 () Bool)

(assert (= result!250716 result!250714))

(assert (=> d!1060120 t!291866))

(declare-fun b_and!260981 () Bool)

(assert (= b_and!260925 (and (=> t!291866 result!250716) b_and!260981)))

(declare-fun t!291868 () Bool)

(declare-fun tb!205669 () Bool)

(assert (=> (and b!3597254 (= (toValue!7882 (transformation!5598 (rule!8326 token!511))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291868) tb!205669))

(declare-fun result!250718 () Bool)

(assert (= result!250718 result!250714))

(assert (=> d!1060120 t!291868))

(declare-fun b_and!260983 () Bool)

(assert (= b_and!260927 (and (=> t!291868 result!250718) b_and!260983)))

(declare-fun tb!205671 () Bool)

(declare-fun t!291870 () Bool)

(assert (=> (and b!3597250 (= (toValue!7882 (transformation!5598 (h!43259 rules!3307))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291870) tb!205671))

(declare-fun result!250720 () Bool)

(assert (= result!250720 result!250714))

(assert (=> d!1060120 t!291870))

(declare-fun b_and!260985 () Bool)

(assert (= b_and!260929 (and (=> t!291870 result!250720) b_and!260985)))

(declare-fun b_lambda!106353 () Bool)

(assert (=> (not b_lambda!106353) (not d!1060120)))

(declare-fun t!291872 () Bool)

(declare-fun tb!205673 () Bool)

(assert (=> (and b!3597240 (= (toValue!7882 (transformation!5598 rule!403)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291872) tb!205673))

(declare-fun result!250722 () Bool)

(assert (=> tb!205673 (= result!250722 (inv!21 (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (seqFromList!4151 (originalCharacters!6312 (_1!21996 lt!1235242))))))))

(declare-fun m!4093085 () Bool)

(assert (=> tb!205673 m!4093085))

(assert (=> d!1060120 t!291872))

(declare-fun b_and!260987 () Bool)

(assert (= b_and!260979 (and (=> t!291872 result!250722) b_and!260987)))

(declare-fun t!291874 () Bool)

(declare-fun tb!205675 () Bool)

(assert (=> (and b!3597263 (= (toValue!7882 (transformation!5598 anOtherTypeRule!33)) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291874) tb!205675))

(declare-fun result!250724 () Bool)

(assert (= result!250724 result!250722))

(assert (=> d!1060120 t!291874))

(declare-fun b_and!260989 () Bool)

(assert (= b_and!260981 (and (=> t!291874 result!250724) b_and!260989)))

(declare-fun t!291876 () Bool)

(declare-fun tb!205677 () Bool)

(assert (=> (and b!3597254 (= (toValue!7882 (transformation!5598 (rule!8326 token!511))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291876) tb!205677))

(declare-fun result!250726 () Bool)

(assert (= result!250726 result!250722))

(assert (=> d!1060120 t!291876))

(declare-fun b_and!260991 () Bool)

(assert (= b_and!260983 (and (=> t!291876 result!250726) b_and!260991)))

(declare-fun t!291878 () Bool)

(declare-fun tb!205679 () Bool)

(assert (=> (and b!3597250 (= (toValue!7882 (transformation!5598 (h!43259 rules!3307))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291878) tb!205679))

(declare-fun result!250728 () Bool)

(assert (= result!250728 result!250722))

(assert (=> d!1060120 t!291878))

(declare-fun b_and!260993 () Bool)

(assert (= b_and!260985 (and (=> t!291878 result!250728) b_and!260993)))

(declare-fun m!4093087 () Bool)

(assert (=> d!1060120 m!4093087))

(assert (=> d!1060120 m!4092503))

(declare-fun m!4093089 () Bool)

(assert (=> d!1060120 m!4093089))

(assert (=> d!1060120 m!4092503))

(declare-fun m!4093091 () Bool)

(assert (=> d!1060120 m!4093091))

(assert (=> d!1060120 m!4092623))

(assert (=> d!1060120 m!4092503))

(declare-fun m!4093093 () Bool)

(assert (=> d!1060120 m!4093093))

(assert (=> b!3597243 d!1060120))

(declare-fun d!1060192 () Bool)

(declare-fun lt!1235434 () Int)

(assert (=> d!1060192 (= lt!1235434 (size!28832 (list!13930 lt!1235254)))))

(declare-fun size!28834 (Conc!11517) Int)

(assert (=> d!1060192 (= lt!1235434 (size!28834 (c!622677 lt!1235254)))))

(assert (=> d!1060192 (= (size!28831 lt!1235254) lt!1235434)))

(declare-fun bs!570443 () Bool)

(assert (= bs!570443 d!1060192))

(assert (=> bs!570443 m!4092623))

(assert (=> bs!570443 m!4092623))

(declare-fun m!4093135 () Bool)

(assert (=> bs!570443 m!4093135))

(declare-fun m!4093137 () Bool)

(assert (=> bs!570443 m!4093137))

(assert (=> b!3597243 d!1060192))

(declare-fun d!1060202 () Bool)

(assert (=> d!1060202 (= (size!28830 (_1!21996 lt!1235242)) (size!28832 (originalCharacters!6312 (_1!21996 lt!1235242))))))

(declare-fun Unit!53858 () Unit!53851)

(assert (=> d!1060202 (= (lemmaCharactersSize!651 (_1!21996 lt!1235242)) Unit!53858)))

(declare-fun bs!570444 () Bool)

(assert (= bs!570444 d!1060202))

(declare-fun m!4093143 () Bool)

(assert (=> bs!570444 m!4093143))

(assert (=> b!3597243 d!1060202))

(declare-fun b!3597738 () Bool)

(declare-fun e!2226297 () Bool)

(assert (=> b!3597738 (= e!2226297 true)))

(declare-fun d!1060206 () Bool)

(assert (=> d!1060206 e!2226297))

(assert (= d!1060206 b!3597738))

(declare-fun order!20593 () Int)

(declare-fun lambda!123933 () Int)

(declare-fun dynLambda!16314 (Int Int) Int)

(assert (=> b!3597738 (< (dynLambda!16311 order!20587 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) (dynLambda!16314 order!20593 lambda!123933))))

(assert (=> b!3597738 (< (dynLambda!16313 order!20591 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) (dynLambda!16314 order!20593 lambda!123933))))

(assert (=> d!1060206 (= (list!13930 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254))) (list!13930 lt!1235254))))

(declare-fun lt!1235440 () Unit!53851)

(declare-fun ForallOf!636 (Int BalanceConc!22648) Unit!53851)

(assert (=> d!1060206 (= lt!1235440 (ForallOf!636 lambda!123933 lt!1235254))))

(assert (=> d!1060206 (= (lemmaSemiInverse!1355 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254) lt!1235440)))

(declare-fun b_lambda!106357 () Bool)

(assert (=> (not b_lambda!106357) (not d!1060206)))

(declare-fun tb!205689 () Bool)

(declare-fun t!291888 () Bool)

(assert (=> (and b!3597240 (= (toChars!7741 (transformation!5598 rule!403)) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291888) tb!205689))

(declare-fun b!3597739 () Bool)

(declare-fun e!2226298 () Bool)

(declare-fun tp!1100755 () Bool)

(assert (=> b!3597739 (= e!2226298 (and (inv!51194 (c!622677 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254)))) tp!1100755))))

(declare-fun result!250738 () Bool)

(assert (=> tb!205689 (= result!250738 (and (inv!51195 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254))) e!2226298))))

(assert (= tb!205689 b!3597739))

(declare-fun m!4093149 () Bool)

(assert (=> b!3597739 m!4093149))

(declare-fun m!4093151 () Bool)

(assert (=> tb!205689 m!4093151))

(assert (=> d!1060206 t!291888))

(declare-fun b_and!261003 () Bool)

(assert (= b_and!260915 (and (=> t!291888 result!250738) b_and!261003)))

(declare-fun t!291890 () Bool)

(declare-fun tb!205691 () Bool)

(assert (=> (and b!3597263 (= (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291890) tb!205691))

(declare-fun result!250740 () Bool)

(assert (= result!250740 result!250738))

(assert (=> d!1060206 t!291890))

(declare-fun b_and!261005 () Bool)

(assert (= b_and!260917 (and (=> t!291890 result!250740) b_and!261005)))

(declare-fun t!291892 () Bool)

(declare-fun tb!205693 () Bool)

(assert (=> (and b!3597254 (= (toChars!7741 (transformation!5598 (rule!8326 token!511))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291892) tb!205693))

(declare-fun result!250742 () Bool)

(assert (= result!250742 result!250738))

(assert (=> d!1060206 t!291892))

(declare-fun b_and!261007 () Bool)

(assert (= b_and!260919 (and (=> t!291892 result!250742) b_and!261007)))

(declare-fun tb!205695 () Bool)

(declare-fun t!291894 () Bool)

(assert (=> (and b!3597250 (= (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291894) tb!205695))

(declare-fun result!250744 () Bool)

(assert (= result!250744 result!250738))

(assert (=> d!1060206 t!291894))

(declare-fun b_and!261009 () Bool)

(assert (= b_and!260921 (and (=> t!291894 result!250744) b_and!261009)))

(declare-fun b_lambda!106359 () Bool)

(assert (=> (not b_lambda!106359) (not d!1060206)))

(assert (=> d!1060206 t!291864))

(declare-fun b_and!261011 () Bool)

(assert (= b_and!260987 (and (=> t!291864 result!250714) b_and!261011)))

(assert (=> d!1060206 t!291866))

(declare-fun b_and!261013 () Bool)

(assert (= b_and!260989 (and (=> t!291866 result!250716) b_and!261013)))

(assert (=> d!1060206 t!291868))

(declare-fun b_and!261015 () Bool)

(assert (= b_and!260991 (and (=> t!291868 result!250718) b_and!261015)))

(assert (=> d!1060206 t!291870))

(declare-fun b_and!261017 () Bool)

(assert (= b_and!260993 (and (=> t!291870 result!250720) b_and!261017)))

(declare-fun m!4093153 () Bool)

(assert (=> d!1060206 m!4093153))

(assert (=> d!1060206 m!4093087))

(declare-fun m!4093155 () Bool)

(assert (=> d!1060206 m!4093155))

(assert (=> d!1060206 m!4093155))

(declare-fun m!4093157 () Bool)

(assert (=> d!1060206 m!4093157))

(assert (=> d!1060206 m!4093087))

(assert (=> d!1060206 m!4092623))

(assert (=> b!3597243 d!1060206))

(declare-fun d!1060210 () Bool)

(assert (=> d!1060210 (= (apply!9104 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))) lt!1235254) (dynLambda!16310 (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) lt!1235254))))

(declare-fun b_lambda!106361 () Bool)

(assert (=> (not b_lambda!106361) (not d!1060210)))

(assert (=> d!1060210 t!291864))

(declare-fun b_and!261019 () Bool)

(assert (= b_and!261011 (and (=> t!291864 result!250714) b_and!261019)))

(assert (=> d!1060210 t!291866))

(declare-fun b_and!261021 () Bool)

(assert (= b_and!261013 (and (=> t!291866 result!250716) b_and!261021)))

(assert (=> d!1060210 t!291868))

(declare-fun b_and!261023 () Bool)

(assert (= b_and!261015 (and (=> t!291868 result!250718) b_and!261023)))

(assert (=> d!1060210 t!291870))

(declare-fun b_and!261025 () Bool)

(assert (= b_and!261017 (and (=> t!291870 result!250720) b_and!261025)))

(assert (=> d!1060210 m!4093087))

(assert (=> b!3597243 d!1060210))

(declare-fun d!1060212 () Bool)

(declare-fun lt!1235441 () Bool)

(assert (=> d!1060212 (= lt!1235441 (select (content!5391 (usedCharacters!812 (regex!5598 anOtherTypeRule!33))) lt!1235234))))

(declare-fun e!2226300 () Bool)

(assert (=> d!1060212 (= lt!1235441 e!2226300)))

(declare-fun res!1453528 () Bool)

(assert (=> d!1060212 (=> (not res!1453528) (not e!2226300))))

(assert (=> d!1060212 (= res!1453528 ((_ is Cons!37838) (usedCharacters!812 (regex!5598 anOtherTypeRule!33))))))

(assert (=> d!1060212 (= (contains!7259 (usedCharacters!812 (regex!5598 anOtherTypeRule!33)) lt!1235234) lt!1235441)))

(declare-fun b!3597740 () Bool)

(declare-fun e!2226299 () Bool)

(assert (=> b!3597740 (= e!2226300 e!2226299)))

(declare-fun res!1453527 () Bool)

(assert (=> b!3597740 (=> res!1453527 e!2226299)))

(assert (=> b!3597740 (= res!1453527 (= (h!43258 (usedCharacters!812 (regex!5598 anOtherTypeRule!33))) lt!1235234))))

(declare-fun b!3597741 () Bool)

(assert (=> b!3597741 (= e!2226299 (contains!7259 (t!291813 (usedCharacters!812 (regex!5598 anOtherTypeRule!33))) lt!1235234))))

(assert (= (and d!1060212 res!1453528) b!3597740))

(assert (= (and b!3597740 (not res!1453527)) b!3597741))

(assert (=> d!1060212 m!4092561))

(declare-fun m!4093159 () Bool)

(assert (=> d!1060212 m!4093159))

(declare-fun m!4093161 () Bool)

(assert (=> d!1060212 m!4093161))

(declare-fun m!4093163 () Bool)

(assert (=> b!3597741 m!4093163))

(assert (=> b!3597262 d!1060212))

(declare-fun b!3597742 () Bool)

(declare-fun c!622776 () Bool)

(assert (=> b!3597742 (= c!622776 ((_ is Star!10357) (regex!5598 anOtherTypeRule!33)))))

(declare-fun e!2226303 () List!37962)

(declare-fun e!2226301 () List!37962)

(assert (=> b!3597742 (= e!2226303 e!2226301)))

(declare-fun b!3597743 () Bool)

(declare-fun call!260255 () List!37962)

(assert (=> b!3597743 (= e!2226301 call!260255)))

(declare-fun call!260256 () List!37962)

(declare-fun call!260254 () List!37962)

(declare-fun c!622774 () Bool)

(declare-fun bm!260249 () Bool)

(declare-fun call!260257 () List!37962)

(assert (=> bm!260249 (= call!260257 (++!9414 (ite c!622774 call!260256 call!260254) (ite c!622774 call!260254 call!260256)))))

(declare-fun b!3597744 () Bool)

(declare-fun e!2226302 () List!37962)

(assert (=> b!3597744 (= e!2226302 e!2226303)))

(declare-fun c!622775 () Bool)

(assert (=> b!3597744 (= c!622775 ((_ is ElementMatch!10357) (regex!5598 anOtherTypeRule!33)))))

(declare-fun b!3597745 () Bool)

(declare-fun e!2226304 () List!37962)

(assert (=> b!3597745 (= e!2226304 call!260257)))

(declare-fun b!3597746 () Bool)

(assert (=> b!3597746 (= e!2226301 e!2226304)))

(assert (=> b!3597746 (= c!622774 ((_ is Union!10357) (regex!5598 anOtherTypeRule!33)))))

(declare-fun bm!260250 () Bool)

(assert (=> bm!260250 (= call!260255 (usedCharacters!812 (ite c!622776 (reg!10686 (regex!5598 anOtherTypeRule!33)) (ite c!622774 (regOne!21227 (regex!5598 anOtherTypeRule!33)) (regTwo!21226 (regex!5598 anOtherTypeRule!33))))))))

(declare-fun bm!260251 () Bool)

(assert (=> bm!260251 (= call!260254 (usedCharacters!812 (ite c!622774 (regTwo!21227 (regex!5598 anOtherTypeRule!33)) (regOne!21226 (regex!5598 anOtherTypeRule!33)))))))

(declare-fun b!3597747 () Bool)

(assert (=> b!3597747 (= e!2226302 Nil!37838)))

(declare-fun b!3597748 () Bool)

(assert (=> b!3597748 (= e!2226304 call!260257)))

(declare-fun d!1060214 () Bool)

(declare-fun c!622773 () Bool)

(assert (=> d!1060214 (= c!622773 (or ((_ is EmptyExpr!10357) (regex!5598 anOtherTypeRule!33)) ((_ is EmptyLang!10357) (regex!5598 anOtherTypeRule!33))))))

(assert (=> d!1060214 (= (usedCharacters!812 (regex!5598 anOtherTypeRule!33)) e!2226302)))

(declare-fun bm!260252 () Bool)

(assert (=> bm!260252 (= call!260256 call!260255)))

(declare-fun b!3597749 () Bool)

(assert (=> b!3597749 (= e!2226303 (Cons!37838 (c!622676 (regex!5598 anOtherTypeRule!33)) Nil!37838))))

(assert (= (and d!1060214 c!622773) b!3597747))

(assert (= (and d!1060214 (not c!622773)) b!3597744))

(assert (= (and b!3597744 c!622775) b!3597749))

(assert (= (and b!3597744 (not c!622775)) b!3597742))

(assert (= (and b!3597742 c!622776) b!3597743))

(assert (= (and b!3597742 (not c!622776)) b!3597746))

(assert (= (and b!3597746 c!622774) b!3597745))

(assert (= (and b!3597746 (not c!622774)) b!3597748))

(assert (= (or b!3597745 b!3597748) bm!260252))

(assert (= (or b!3597745 b!3597748) bm!260251))

(assert (= (or b!3597745 b!3597748) bm!260249))

(assert (= (or b!3597743 bm!260252) bm!260250))

(declare-fun m!4093165 () Bool)

(assert (=> bm!260249 m!4093165))

(declare-fun m!4093167 () Bool)

(assert (=> bm!260250 m!4093167))

(declare-fun m!4093169 () Bool)

(assert (=> bm!260251 m!4093169))

(assert (=> b!3597262 d!1060214))

(declare-fun d!1060216 () Bool)

(assert (=> d!1060216 (= (inv!51187 (tag!6282 (rule!8326 token!511))) (= (mod (str.len (value!180002 (tag!6282 (rule!8326 token!511)))) 2) 0))))

(assert (=> b!3597241 d!1060216))

(declare-fun d!1060218 () Bool)

(declare-fun res!1453529 () Bool)

(declare-fun e!2226305 () Bool)

(assert (=> d!1060218 (=> (not res!1453529) (not e!2226305))))

(assert (=> d!1060218 (= res!1453529 (semiInverseModEq!2374 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (toValue!7882 (transformation!5598 (rule!8326 token!511)))))))

(assert (=> d!1060218 (= (inv!51190 (transformation!5598 (rule!8326 token!511))) e!2226305)))

(declare-fun b!3597750 () Bool)

(assert (=> b!3597750 (= e!2226305 (equivClasses!2273 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (toValue!7882 (transformation!5598 (rule!8326 token!511)))))))

(assert (= (and d!1060218 res!1453529) b!3597750))

(declare-fun m!4093171 () Bool)

(assert (=> d!1060218 m!4093171))

(declare-fun m!4093173 () Bool)

(assert (=> b!3597750 m!4093173))

(assert (=> b!3597241 d!1060218))

(declare-fun b!3597751 () Bool)

(declare-fun res!1453536 () Bool)

(declare-fun e!2226307 () Bool)

(assert (=> b!3597751 (=> res!1453536 e!2226307)))

(assert (=> b!3597751 (= res!1453536 (not (isEmpty!22314 (tail!5575 (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))))))))

(declare-fun b!3597752 () Bool)

(declare-fun e!2226308 () Bool)

(assert (=> b!3597752 (= e!2226308 e!2226307)))

(declare-fun res!1453530 () Bool)

(assert (=> b!3597752 (=> res!1453530 e!2226307)))

(declare-fun call!260258 () Bool)

(assert (=> b!3597752 (= res!1453530 call!260258)))

(declare-fun b!3597753 () Bool)

(declare-fun e!2226311 () Bool)

(assert (=> b!3597753 (= e!2226311 (nullable!3576 (regex!5598 lt!1235238)))))

(declare-fun b!3597754 () Bool)

(declare-fun res!1453532 () Bool)

(declare-fun e!2226306 () Bool)

(assert (=> b!3597754 (=> (not res!1453532) (not e!2226306))))

(assert (=> b!3597754 (= res!1453532 (isEmpty!22314 (tail!5575 (list!13930 (charsOf!3612 (_1!21996 lt!1235242))))))))

(declare-fun b!3597755 () Bool)

(assert (=> b!3597755 (= e!2226307 (not (= (head!7534 (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))) (c!622676 (regex!5598 lt!1235238)))))))

(declare-fun b!3597756 () Bool)

(declare-fun e!2226310 () Bool)

(declare-fun lt!1235442 () Bool)

(assert (=> b!3597756 (= e!2226310 (= lt!1235442 call!260258))))

(declare-fun d!1060220 () Bool)

(assert (=> d!1060220 e!2226310))

(declare-fun c!622777 () Bool)

(assert (=> d!1060220 (= c!622777 ((_ is EmptyExpr!10357) (regex!5598 lt!1235238)))))

(assert (=> d!1060220 (= lt!1235442 e!2226311)))

(declare-fun c!622779 () Bool)

(assert (=> d!1060220 (= c!622779 (isEmpty!22314 (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))))))

(assert (=> d!1060220 (validRegex!4734 (regex!5598 lt!1235238))))

(assert (=> d!1060220 (= (matchR!4926 (regex!5598 lt!1235238) (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))) lt!1235442)))

(declare-fun bm!260253 () Bool)

(assert (=> bm!260253 (= call!260258 (isEmpty!22314 (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))))))

(declare-fun b!3597757 () Bool)

(declare-fun e!2226309 () Bool)

(assert (=> b!3597757 (= e!2226309 (not lt!1235442))))

(declare-fun b!3597758 () Bool)

(declare-fun res!1453533 () Bool)

(declare-fun e!2226312 () Bool)

(assert (=> b!3597758 (=> res!1453533 e!2226312)))

(assert (=> b!3597758 (= res!1453533 (not ((_ is ElementMatch!10357) (regex!5598 lt!1235238))))))

(assert (=> b!3597758 (= e!2226309 e!2226312)))

(declare-fun b!3597759 () Bool)

(assert (=> b!3597759 (= e!2226310 e!2226309)))

(declare-fun c!622778 () Bool)

(assert (=> b!3597759 (= c!622778 ((_ is EmptyLang!10357) (regex!5598 lt!1235238)))))

(declare-fun b!3597760 () Bool)

(declare-fun res!1453531 () Bool)

(assert (=> b!3597760 (=> res!1453531 e!2226312)))

(assert (=> b!3597760 (= res!1453531 e!2226306)))

(declare-fun res!1453535 () Bool)

(assert (=> b!3597760 (=> (not res!1453535) (not e!2226306))))

(assert (=> b!3597760 (= res!1453535 lt!1235442)))

(declare-fun b!3597761 () Bool)

(assert (=> b!3597761 (= e!2226311 (matchR!4926 (derivativeStep!3125 (regex!5598 lt!1235238) (head!7534 (list!13930 (charsOf!3612 (_1!21996 lt!1235242))))) (tail!5575 (list!13930 (charsOf!3612 (_1!21996 lt!1235242))))))))

(declare-fun b!3597762 () Bool)

(declare-fun res!1453537 () Bool)

(assert (=> b!3597762 (=> (not res!1453537) (not e!2226306))))

(assert (=> b!3597762 (= res!1453537 (not call!260258))))

(declare-fun b!3597763 () Bool)

(assert (=> b!3597763 (= e!2226306 (= (head!7534 (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))) (c!622676 (regex!5598 lt!1235238))))))

(declare-fun b!3597764 () Bool)

(assert (=> b!3597764 (= e!2226312 e!2226308)))

(declare-fun res!1453534 () Bool)

(assert (=> b!3597764 (=> (not res!1453534) (not e!2226308))))

(assert (=> b!3597764 (= res!1453534 (not lt!1235442))))

(assert (= (and d!1060220 c!622779) b!3597753))

(assert (= (and d!1060220 (not c!622779)) b!3597761))

(assert (= (and d!1060220 c!622777) b!3597756))

(assert (= (and d!1060220 (not c!622777)) b!3597759))

(assert (= (and b!3597759 c!622778) b!3597757))

(assert (= (and b!3597759 (not c!622778)) b!3597758))

(assert (= (and b!3597758 (not res!1453533)) b!3597760))

(assert (= (and b!3597760 res!1453535) b!3597762))

(assert (= (and b!3597762 res!1453537) b!3597754))

(assert (= (and b!3597754 res!1453532) b!3597763))

(assert (= (and b!3597760 (not res!1453531)) b!3597764))

(assert (= (and b!3597764 res!1453534) b!3597752))

(assert (= (and b!3597752 (not res!1453530)) b!3597751))

(assert (= (and b!3597751 (not res!1453536)) b!3597755))

(assert (= (or b!3597756 b!3597752 b!3597762) bm!260253))

(declare-fun m!4093175 () Bool)

(assert (=> b!3597753 m!4093175))

(assert (=> b!3597761 m!4092549))

(declare-fun m!4093177 () Bool)

(assert (=> b!3597761 m!4093177))

(assert (=> b!3597761 m!4093177))

(declare-fun m!4093179 () Bool)

(assert (=> b!3597761 m!4093179))

(assert (=> b!3597761 m!4092549))

(declare-fun m!4093181 () Bool)

(assert (=> b!3597761 m!4093181))

(assert (=> b!3597761 m!4093179))

(assert (=> b!3597761 m!4093181))

(declare-fun m!4093183 () Bool)

(assert (=> b!3597761 m!4093183))

(assert (=> b!3597751 m!4092549))

(assert (=> b!3597751 m!4093181))

(assert (=> b!3597751 m!4093181))

(declare-fun m!4093185 () Bool)

(assert (=> b!3597751 m!4093185))

(assert (=> b!3597763 m!4092549))

(assert (=> b!3597763 m!4093177))

(assert (=> bm!260253 m!4092549))

(declare-fun m!4093187 () Bool)

(assert (=> bm!260253 m!4093187))

(assert (=> d!1060220 m!4092549))

(assert (=> d!1060220 m!4093187))

(declare-fun m!4093189 () Bool)

(assert (=> d!1060220 m!4093189))

(assert (=> b!3597754 m!4092549))

(assert (=> b!3597754 m!4093181))

(assert (=> b!3597754 m!4093181))

(assert (=> b!3597754 m!4093185))

(assert (=> b!3597755 m!4092549))

(assert (=> b!3597755 m!4093177))

(assert (=> b!3597261 d!1060220))

(declare-fun d!1060222 () Bool)

(declare-fun list!13933 (Conc!11517) List!37962)

(assert (=> d!1060222 (= (list!13930 (charsOf!3612 (_1!21996 lt!1235242))) (list!13933 (c!622677 (charsOf!3612 (_1!21996 lt!1235242)))))))

(declare-fun bs!570445 () Bool)

(assert (= bs!570445 d!1060222))

(declare-fun m!4093191 () Bool)

(assert (=> bs!570445 m!4093191))

(assert (=> b!3597261 d!1060222))

(declare-fun d!1060224 () Bool)

(declare-fun lt!1235447 () BalanceConc!22648)

(assert (=> d!1060224 (= (list!13930 lt!1235447) (originalCharacters!6312 (_1!21996 lt!1235242)))))

(assert (=> d!1060224 (= lt!1235447 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (value!180003 (_1!21996 lt!1235242))))))

(assert (=> d!1060224 (= (charsOf!3612 (_1!21996 lt!1235242)) lt!1235447)))

(declare-fun b_lambda!106363 () Bool)

(assert (=> (not b_lambda!106363) (not d!1060224)))

(declare-fun tb!205697 () Bool)

(declare-fun t!291896 () Bool)

(assert (=> (and b!3597240 (= (toChars!7741 (transformation!5598 rule!403)) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291896) tb!205697))

(declare-fun b!3597765 () Bool)

(declare-fun e!2226313 () Bool)

(declare-fun tp!1100756 () Bool)

(assert (=> b!3597765 (= e!2226313 (and (inv!51194 (c!622677 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (value!180003 (_1!21996 lt!1235242))))) tp!1100756))))

(declare-fun result!250746 () Bool)

(assert (=> tb!205697 (= result!250746 (and (inv!51195 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242)))) (value!180003 (_1!21996 lt!1235242)))) e!2226313))))

(assert (= tb!205697 b!3597765))

(declare-fun m!4093193 () Bool)

(assert (=> b!3597765 m!4093193))

(declare-fun m!4093195 () Bool)

(assert (=> tb!205697 m!4093195))

(assert (=> d!1060224 t!291896))

(declare-fun b_and!261027 () Bool)

(assert (= b_and!261003 (and (=> t!291896 result!250746) b_and!261027)))

(declare-fun t!291898 () Bool)

(declare-fun tb!205699 () Bool)

(assert (=> (and b!3597263 (= (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291898) tb!205699))

(declare-fun result!250748 () Bool)

(assert (= result!250748 result!250746))

(assert (=> d!1060224 t!291898))

(declare-fun b_and!261029 () Bool)

(assert (= b_and!261005 (and (=> t!291898 result!250748) b_and!261029)))

(declare-fun tb!205701 () Bool)

(declare-fun t!291900 () Bool)

(assert (=> (and b!3597254 (= (toChars!7741 (transformation!5598 (rule!8326 token!511))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291900) tb!205701))

(declare-fun result!250750 () Bool)

(assert (= result!250750 result!250746))

(assert (=> d!1060224 t!291900))

(declare-fun b_and!261031 () Bool)

(assert (= b_and!261007 (and (=> t!291900 result!250750) b_and!261031)))

(declare-fun t!291902 () Bool)

(declare-fun tb!205703 () Bool)

(assert (=> (and b!3597250 (= (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291902) tb!205703))

(declare-fun result!250752 () Bool)

(assert (= result!250752 result!250746))

(assert (=> d!1060224 t!291902))

(declare-fun b_and!261033 () Bool)

(assert (= b_and!261009 (and (=> t!291902 result!250752) b_and!261033)))

(declare-fun m!4093197 () Bool)

(assert (=> d!1060224 m!4093197))

(declare-fun m!4093199 () Bool)

(assert (=> d!1060224 m!4093199))

(assert (=> b!3597261 d!1060224))

(declare-fun d!1060226 () Bool)

(assert (=> d!1060226 (= (get!12236 lt!1235255) (v!37524 lt!1235255))))

(assert (=> b!3597261 d!1060226))

(declare-fun d!1060232 () Bool)

(declare-fun isEmpty!22319 (Option!7827) Bool)

(assert (=> d!1060232 (= (isDefined!6058 lt!1235255) (not (isEmpty!22319 lt!1235255)))))

(declare-fun bs!570448 () Bool)

(assert (= bs!570448 d!1060232))

(declare-fun m!4093205 () Bool)

(assert (=> bs!570448 m!4093205))

(assert (=> b!3597239 d!1060232))

(declare-fun d!1060234 () Bool)

(assert (=> d!1060234 (= (list!13930 lt!1235254) (list!13933 (c!622677 lt!1235254)))))

(declare-fun bs!570449 () Bool)

(assert (= bs!570449 d!1060234))

(declare-fun m!4093207 () Bool)

(assert (=> bs!570449 m!4093207))

(assert (=> b!3597239 d!1060234))

(declare-fun b!3597784 () Bool)

(declare-fun e!2226329 () Bool)

(declare-fun e!2226328 () Bool)

(assert (=> b!3597784 (= e!2226329 e!2226328)))

(declare-fun res!1453543 () Bool)

(assert (=> b!3597784 (=> (not res!1453543) (not e!2226328))))

(declare-fun lt!1235462 () Option!7827)

(assert (=> b!3597784 (= res!1453543 (contains!7260 rules!3307 (get!12236 lt!1235462)))))

(declare-fun b!3597785 () Bool)

(declare-fun e!2226327 () Option!7827)

(declare-fun e!2226326 () Option!7827)

(assert (=> b!3597785 (= e!2226327 e!2226326)))

(declare-fun c!622788 () Bool)

(assert (=> b!3597785 (= c!622788 (and ((_ is Cons!37839) rules!3307) (not (= (tag!6282 (h!43259 rules!3307)) (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))))))

(declare-fun b!3597786 () Bool)

(assert (=> b!3597786 (= e!2226326 None!7826)))

(declare-fun d!1060236 () Bool)

(assert (=> d!1060236 e!2226329))

(declare-fun res!1453542 () Bool)

(assert (=> d!1060236 (=> res!1453542 e!2226329)))

(assert (=> d!1060236 (= res!1453542 (isEmpty!22319 lt!1235462))))

(assert (=> d!1060236 (= lt!1235462 e!2226327)))

(declare-fun c!622787 () Bool)

(assert (=> d!1060236 (= c!622787 (and ((_ is Cons!37839) rules!3307) (= (tag!6282 (h!43259 rules!3307)) (tag!6282 (rule!8326 (_1!21996 lt!1235242))))))))

(assert (=> d!1060236 (rulesInvariant!4584 thiss!23823 rules!3307)))

(assert (=> d!1060236 (= (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 (_1!21996 lt!1235242)))) lt!1235462)))

(declare-fun b!3597787 () Bool)

(declare-fun lt!1235463 () Unit!53851)

(declare-fun lt!1235461 () Unit!53851)

(assert (=> b!3597787 (= lt!1235463 lt!1235461)))

(assert (=> b!3597787 (rulesInvariant!4584 thiss!23823 (t!291814 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!508 (LexerInterface!5187 Rule!10996 List!37963) Unit!53851)

(assert (=> b!3597787 (= lt!1235461 (lemmaInvariantOnRulesThenOnTail!508 thiss!23823 (h!43259 rules!3307) (t!291814 rules!3307)))))

(assert (=> b!3597787 (= e!2226326 (getRuleFromTag!1204 thiss!23823 (t!291814 rules!3307) (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))))

(declare-fun b!3597788 () Bool)

(assert (=> b!3597788 (= e!2226327 (Some!7826 (h!43259 rules!3307)))))

(declare-fun b!3597789 () Bool)

(assert (=> b!3597789 (= e!2226328 (= (tag!6282 (get!12236 lt!1235462)) (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))))

(assert (= (and d!1060236 c!622787) b!3597788))

(assert (= (and d!1060236 (not c!622787)) b!3597785))

(assert (= (and b!3597785 c!622788) b!3597787))

(assert (= (and b!3597785 (not c!622788)) b!3597786))

(assert (= (and d!1060236 (not res!1453542)) b!3597784))

(assert (= (and b!3597784 res!1453543) b!3597789))

(declare-fun m!4093217 () Bool)

(assert (=> b!3597784 m!4093217))

(assert (=> b!3597784 m!4093217))

(declare-fun m!4093219 () Bool)

(assert (=> b!3597784 m!4093219))

(declare-fun m!4093221 () Bool)

(assert (=> d!1060236 m!4093221))

(assert (=> d!1060236 m!4092521))

(declare-fun m!4093223 () Bool)

(assert (=> b!3597787 m!4093223))

(declare-fun m!4093225 () Bool)

(assert (=> b!3597787 m!4093225))

(declare-fun m!4093227 () Bool)

(assert (=> b!3597787 m!4093227))

(assert (=> b!3597789 m!4093217))

(assert (=> b!3597239 d!1060236))

(assert (=> b!3597239 d!1060224))

(declare-fun lt!1235525 () Token!10562)

(declare-fun b!3597887 () Bool)

(declare-fun e!2226379 () Bool)

(assert (=> b!3597887 (= e!2226379 (= (rule!8326 lt!1235525) (get!12236 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 lt!1235525))))))))

(declare-fun b!3597889 () Bool)

(declare-fun e!2226380 () Unit!53851)

(declare-fun Unit!53859 () Unit!53851)

(assert (=> b!3597889 (= e!2226380 Unit!53859)))

(declare-fun b!3597888 () Bool)

(declare-fun Unit!53860 () Unit!53851)

(assert (=> b!3597888 (= e!2226380 Unit!53860)))

(declare-fun lt!1235519 () List!37962)

(assert (=> b!3597888 (= lt!1235519 (++!9414 lt!1235256 suffix!1395))))

(declare-fun lt!1235520 () Unit!53851)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!464 (LexerInterface!5187 Rule!10996 List!37963 List!37962) Unit!53851)

(assert (=> b!3597888 (= lt!1235520 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!464 thiss!23823 (rule!8326 lt!1235525) rules!3307 lt!1235519))))

(assert (=> b!3597888 (isEmpty!22318 (maxPrefixOneRule!1865 thiss!23823 (rule!8326 lt!1235525) lt!1235519))))

(declare-fun lt!1235517 () Unit!53851)

(assert (=> b!3597888 (= lt!1235517 lt!1235520)))

(declare-fun lt!1235529 () List!37962)

(assert (=> b!3597888 (= lt!1235529 (list!13930 (charsOf!3612 lt!1235525)))))

(declare-fun lt!1235521 () Unit!53851)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!452 (LexerInterface!5187 Rule!10996 List!37962 List!37962) Unit!53851)

(assert (=> b!3597888 (= lt!1235521 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!452 thiss!23823 (rule!8326 lt!1235525) lt!1235529 (++!9414 lt!1235256 suffix!1395)))))

(assert (=> b!3597888 (not (matchR!4926 (regex!5598 (rule!8326 lt!1235525)) lt!1235529))))

(declare-fun lt!1235526 () Unit!53851)

(assert (=> b!3597888 (= lt!1235526 lt!1235521)))

(assert (=> b!3597888 false))

(declare-fun d!1060244 () Bool)

(assert (=> d!1060244 (isDefined!6059 (maxPrefix!2721 thiss!23823 rules!3307 (++!9414 lt!1235256 suffix!1395)))))

(declare-fun lt!1235518 () Unit!53851)

(assert (=> d!1060244 (= lt!1235518 e!2226380)))

(declare-fun c!622798 () Bool)

(assert (=> d!1060244 (= c!622798 (isEmpty!22318 (maxPrefix!2721 thiss!23823 rules!3307 (++!9414 lt!1235256 suffix!1395))))))

(declare-fun lt!1235524 () Unit!53851)

(declare-fun lt!1235527 () Unit!53851)

(assert (=> d!1060244 (= lt!1235524 lt!1235527)))

(assert (=> d!1060244 e!2226379))

(declare-fun res!1453579 () Bool)

(assert (=> d!1060244 (=> (not res!1453579) (not e!2226379))))

(assert (=> d!1060244 (= res!1453579 (isDefined!6058 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 lt!1235525)))))))

(assert (=> d!1060244 (= lt!1235527 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1204 thiss!23823 rules!3307 lt!1235256 lt!1235525))))

(declare-fun lt!1235528 () Unit!53851)

(declare-fun lt!1235515 () Unit!53851)

(assert (=> d!1060244 (= lt!1235528 lt!1235515)))

(declare-fun lt!1235523 () List!37962)

(assert (=> d!1060244 (isPrefix!2961 lt!1235523 (++!9414 lt!1235256 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!428 (List!37962 List!37962 List!37962) Unit!53851)

(assert (=> d!1060244 (= lt!1235515 (lemmaPrefixStaysPrefixWhenAddingToSuffix!428 lt!1235523 lt!1235256 suffix!1395))))

(assert (=> d!1060244 (= lt!1235523 (list!13930 (charsOf!3612 lt!1235525)))))

(declare-fun lt!1235530 () Unit!53851)

(declare-fun lt!1235522 () Unit!53851)

(assert (=> d!1060244 (= lt!1235530 lt!1235522)))

(declare-fun lt!1235531 () List!37962)

(declare-fun lt!1235516 () List!37962)

(assert (=> d!1060244 (isPrefix!2961 lt!1235531 (++!9414 lt!1235531 lt!1235516))))

(assert (=> d!1060244 (= lt!1235522 (lemmaConcatTwoListThenFirstIsPrefix!1882 lt!1235531 lt!1235516))))

(assert (=> d!1060244 (= lt!1235516 (_2!21996 (get!12235 (maxPrefix!2721 thiss!23823 rules!3307 lt!1235256))))))

(assert (=> d!1060244 (= lt!1235531 (list!13930 (charsOf!3612 lt!1235525)))))

(declare-datatypes ((List!37967 0))(
  ( (Nil!37843) (Cons!37843 (h!43263 Token!10562) (t!291938 List!37967)) )
))
(declare-fun head!7536 (List!37967) Token!10562)

(declare-datatypes ((IArray!23043 0))(
  ( (IArray!23044 (innerList!11579 List!37967)) )
))
(declare-datatypes ((Conc!11519 0))(
  ( (Node!11519 (left!29568 Conc!11519) (right!29898 Conc!11519) (csize!23268 Int) (cheight!11730 Int)) (Leaf!17929 (xs!14721 IArray!23043) (csize!23269 Int)) (Empty!11519) )
))
(declare-datatypes ((BalanceConc!22652 0))(
  ( (BalanceConc!22653 (c!622809 Conc!11519)) )
))
(declare-fun list!13934 (BalanceConc!22652) List!37967)

(declare-datatypes ((tuple2!37732 0))(
  ( (tuple2!37733 (_1!22000 BalanceConc!22652) (_2!22000 BalanceConc!22648)) )
))
(declare-fun lex!2460 (LexerInterface!5187 List!37963 BalanceConc!22648) tuple2!37732)

(assert (=> d!1060244 (= lt!1235525 (head!7536 (list!13934 (_1!22000 (lex!2460 thiss!23823 rules!3307 (seqFromList!4151 lt!1235256))))))))

(assert (=> d!1060244 (not (isEmpty!22315 rules!3307))))

(assert (=> d!1060244 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!867 thiss!23823 rules!3307 lt!1235256 suffix!1395) lt!1235518)))

(declare-fun b!3597886 () Bool)

(declare-fun res!1453580 () Bool)

(assert (=> b!3597886 (=> (not res!1453580) (not e!2226379))))

(assert (=> b!3597886 (= res!1453580 (matchR!4926 (regex!5598 (get!12236 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 lt!1235525))))) (list!13930 (charsOf!3612 lt!1235525))))))

(assert (= (and d!1060244 res!1453579) b!3597886))

(assert (= (and b!3597886 res!1453580) b!3597887))

(assert (= (and d!1060244 c!622798) b!3597888))

(assert (= (and d!1060244 (not c!622798)) b!3597889))

(declare-fun m!4093299 () Bool)

(assert (=> b!3597887 m!4093299))

(assert (=> b!3597887 m!4093299))

(declare-fun m!4093301 () Bool)

(assert (=> b!3597887 m!4093301))

(declare-fun m!4093303 () Bool)

(assert (=> b!3597888 m!4093303))

(declare-fun m!4093305 () Bool)

(assert (=> b!3597888 m!4093305))

(assert (=> b!3597888 m!4092597))

(declare-fun m!4093307 () Bool)

(assert (=> b!3597888 m!4093307))

(assert (=> b!3597888 m!4092597))

(declare-fun m!4093309 () Bool)

(assert (=> b!3597888 m!4093309))

(assert (=> b!3597888 m!4093303))

(declare-fun m!4093311 () Bool)

(assert (=> b!3597888 m!4093311))

(assert (=> b!3597888 m!4093305))

(declare-fun m!4093313 () Bool)

(assert (=> b!3597888 m!4093313))

(declare-fun m!4093315 () Bool)

(assert (=> b!3597888 m!4093315))

(assert (=> d!1060244 m!4093303))

(declare-fun m!4093317 () Bool)

(assert (=> d!1060244 m!4093317))

(assert (=> d!1060244 m!4093299))

(declare-fun m!4093319 () Bool)

(assert (=> d!1060244 m!4093319))

(assert (=> d!1060244 m!4092499))

(declare-fun m!4093321 () Bool)

(assert (=> d!1060244 m!4093321))

(declare-fun m!4093323 () Bool)

(assert (=> d!1060244 m!4093323))

(declare-fun m!4093325 () Bool)

(assert (=> d!1060244 m!4093325))

(assert (=> d!1060244 m!4093299))

(assert (=> d!1060244 m!4093317))

(declare-fun m!4093327 () Bool)

(assert (=> d!1060244 m!4093327))

(declare-fun m!4093329 () Bool)

(assert (=> d!1060244 m!4093329))

(declare-fun m!4093331 () Bool)

(assert (=> d!1060244 m!4093331))

(assert (=> d!1060244 m!4092539))

(declare-fun m!4093333 () Bool)

(assert (=> d!1060244 m!4093333))

(declare-fun m!4093335 () Bool)

(assert (=> d!1060244 m!4093335))

(declare-fun m!4093337 () Bool)

(assert (=> d!1060244 m!4093337))

(declare-fun m!4093339 () Bool)

(assert (=> d!1060244 m!4093339))

(assert (=> d!1060244 m!4093323))

(assert (=> d!1060244 m!4092597))

(declare-fun m!4093341 () Bool)

(assert (=> d!1060244 m!4093341))

(assert (=> d!1060244 m!4092597))

(assert (=> d!1060244 m!4093337))

(declare-fun m!4093343 () Bool)

(assert (=> d!1060244 m!4093343))

(assert (=> d!1060244 m!4092539))

(assert (=> d!1060244 m!4093303))

(assert (=> d!1060244 m!4093311))

(declare-fun m!4093345 () Bool)

(assert (=> d!1060244 m!4093345))

(assert (=> d!1060244 m!4092597))

(assert (=> d!1060244 m!4093337))

(assert (=> d!1060244 m!4093329))

(assert (=> b!3597886 m!4093303))

(assert (=> b!3597886 m!4093299))

(assert (=> b!3597886 m!4093301))

(assert (=> b!3597886 m!4093299))

(assert (=> b!3597886 m!4093303))

(assert (=> b!3597886 m!4093311))

(assert (=> b!3597886 m!4093311))

(declare-fun m!4093347 () Bool)

(assert (=> b!3597886 m!4093347))

(assert (=> b!3597239 d!1060244))

(declare-fun d!1060256 () Bool)

(assert (=> d!1060256 (isPrefix!2961 lt!1235239 (++!9414 lt!1235239 (_2!21996 lt!1235242)))))

(declare-fun lt!1235534 () Unit!53851)

(declare-fun choose!20956 (List!37962 List!37962) Unit!53851)

(assert (=> d!1060256 (= lt!1235534 (choose!20956 lt!1235239 (_2!21996 lt!1235242)))))

(assert (=> d!1060256 (= (lemmaConcatTwoListThenFirstIsPrefix!1882 lt!1235239 (_2!21996 lt!1235242)) lt!1235534)))

(declare-fun bs!570451 () Bool)

(assert (= bs!570451 d!1060256))

(assert (=> bs!570451 m!4092601))

(assert (=> bs!570451 m!4092601))

(assert (=> bs!570451 m!4092603))

(declare-fun m!4093349 () Bool)

(assert (=> bs!570451 m!4093349))

(assert (=> b!3597239 d!1060256))

(declare-fun b!3597898 () Bool)

(declare-fun e!2226389 () Bool)

(declare-fun e!2226388 () Bool)

(assert (=> b!3597898 (= e!2226389 e!2226388)))

(declare-fun res!1453589 () Bool)

(assert (=> b!3597898 (=> (not res!1453589) (not e!2226388))))

(assert (=> b!3597898 (= res!1453589 (not ((_ is Nil!37838) lt!1235252)))))

(declare-fun d!1060258 () Bool)

(declare-fun e!2226387 () Bool)

(assert (=> d!1060258 e!2226387))

(declare-fun res!1453592 () Bool)

(assert (=> d!1060258 (=> res!1453592 e!2226387)))

(declare-fun lt!1235537 () Bool)

(assert (=> d!1060258 (= res!1453592 (not lt!1235537))))

(assert (=> d!1060258 (= lt!1235537 e!2226389)))

(declare-fun res!1453591 () Bool)

(assert (=> d!1060258 (=> res!1453591 e!2226389)))

(assert (=> d!1060258 (= res!1453591 ((_ is Nil!37838) lt!1235239))))

(assert (=> d!1060258 (= (isPrefix!2961 lt!1235239 lt!1235252) lt!1235537)))

(declare-fun b!3597899 () Bool)

(declare-fun res!1453590 () Bool)

(assert (=> b!3597899 (=> (not res!1453590) (not e!2226388))))

(assert (=> b!3597899 (= res!1453590 (= (head!7534 lt!1235239) (head!7534 lt!1235252)))))

(declare-fun b!3597901 () Bool)

(assert (=> b!3597901 (= e!2226387 (>= (size!28832 lt!1235252) (size!28832 lt!1235239)))))

(declare-fun b!3597900 () Bool)

(assert (=> b!3597900 (= e!2226388 (isPrefix!2961 (tail!5575 lt!1235239) (tail!5575 lt!1235252)))))

(assert (= (and d!1060258 (not res!1453591)) b!3597898))

(assert (= (and b!3597898 res!1453589) b!3597899))

(assert (= (and b!3597899 res!1453590) b!3597900))

(assert (= (and d!1060258 (not res!1453592)) b!3597901))

(assert (=> b!3597899 m!4092527))

(declare-fun m!4093351 () Bool)

(assert (=> b!3597899 m!4093351))

(assert (=> b!3597901 m!4092727))

(assert (=> b!3597901 m!4092565))

(assert (=> b!3597900 m!4092665))

(assert (=> b!3597900 m!4092729))

(assert (=> b!3597900 m!4092665))

(assert (=> b!3597900 m!4092729))

(declare-fun m!4093353 () Bool)

(assert (=> b!3597900 m!4093353))

(assert (=> b!3597239 d!1060258))

(declare-fun b!3597902 () Bool)

(declare-fun e!2226392 () Bool)

(declare-fun e!2226391 () Bool)

(assert (=> b!3597902 (= e!2226392 e!2226391)))

(declare-fun res!1453593 () Bool)

(assert (=> b!3597902 (=> (not res!1453593) (not e!2226391))))

(assert (=> b!3597902 (= res!1453593 (not ((_ is Nil!37838) lt!1235252)))))

(declare-fun d!1060260 () Bool)

(declare-fun e!2226390 () Bool)

(assert (=> d!1060260 e!2226390))

(declare-fun res!1453596 () Bool)

(assert (=> d!1060260 (=> res!1453596 e!2226390)))

(declare-fun lt!1235538 () Bool)

(assert (=> d!1060260 (= res!1453596 (not lt!1235538))))

(assert (=> d!1060260 (= lt!1235538 e!2226392)))

(declare-fun res!1453595 () Bool)

(assert (=> d!1060260 (=> res!1453595 e!2226392)))

(assert (=> d!1060260 (= res!1453595 ((_ is Nil!37838) lt!1235256))))

(assert (=> d!1060260 (= (isPrefix!2961 lt!1235256 lt!1235252) lt!1235538)))

(declare-fun b!3597903 () Bool)

(declare-fun res!1453594 () Bool)

(assert (=> b!3597903 (=> (not res!1453594) (not e!2226391))))

(assert (=> b!3597903 (= res!1453594 (= (head!7534 lt!1235256) (head!7534 lt!1235252)))))

(declare-fun b!3597905 () Bool)

(assert (=> b!3597905 (= e!2226390 (>= (size!28832 lt!1235252) (size!28832 lt!1235256)))))

(declare-fun b!3597904 () Bool)

(assert (=> b!3597904 (= e!2226391 (isPrefix!2961 (tail!5575 lt!1235256) (tail!5575 lt!1235252)))))

(assert (= (and d!1060260 (not res!1453595)) b!3597902))

(assert (= (and b!3597902 res!1453593) b!3597903))

(assert (= (and b!3597903 res!1453594) b!3597904))

(assert (= (and d!1060260 (not res!1453596)) b!3597905))

(assert (=> b!3597903 m!4092687))

(assert (=> b!3597903 m!4093351))

(assert (=> b!3597905 m!4092727))

(declare-fun m!4093355 () Bool)

(assert (=> b!3597905 m!4093355))

(assert (=> b!3597904 m!4092691))

(assert (=> b!3597904 m!4092729))

(assert (=> b!3597904 m!4092691))

(assert (=> b!3597904 m!4092729))

(declare-fun m!4093357 () Bool)

(assert (=> b!3597904 m!4093357))

(assert (=> b!3597239 d!1060260))

(declare-fun b!3597906 () Bool)

(declare-fun e!2226395 () Bool)

(declare-fun e!2226394 () Bool)

(assert (=> b!3597906 (= e!2226395 e!2226394)))

(declare-fun res!1453597 () Bool)

(assert (=> b!3597906 (=> (not res!1453597) (not e!2226394))))

(assert (=> b!3597906 (= res!1453597 (not ((_ is Nil!37838) (++!9414 lt!1235239 (_2!21996 lt!1235242)))))))

(declare-fun d!1060262 () Bool)

(declare-fun e!2226393 () Bool)

(assert (=> d!1060262 e!2226393))

(declare-fun res!1453600 () Bool)

(assert (=> d!1060262 (=> res!1453600 e!2226393)))

(declare-fun lt!1235539 () Bool)

(assert (=> d!1060262 (= res!1453600 (not lt!1235539))))

(assert (=> d!1060262 (= lt!1235539 e!2226395)))

(declare-fun res!1453599 () Bool)

(assert (=> d!1060262 (=> res!1453599 e!2226395)))

(assert (=> d!1060262 (= res!1453599 ((_ is Nil!37838) lt!1235239))))

(assert (=> d!1060262 (= (isPrefix!2961 lt!1235239 (++!9414 lt!1235239 (_2!21996 lt!1235242))) lt!1235539)))

(declare-fun b!3597907 () Bool)

(declare-fun res!1453598 () Bool)

(assert (=> b!3597907 (=> (not res!1453598) (not e!2226394))))

(assert (=> b!3597907 (= res!1453598 (= (head!7534 lt!1235239) (head!7534 (++!9414 lt!1235239 (_2!21996 lt!1235242)))))))

(declare-fun b!3597909 () Bool)

(assert (=> b!3597909 (= e!2226393 (>= (size!28832 (++!9414 lt!1235239 (_2!21996 lt!1235242))) (size!28832 lt!1235239)))))

(declare-fun b!3597908 () Bool)

(assert (=> b!3597908 (= e!2226394 (isPrefix!2961 (tail!5575 lt!1235239) (tail!5575 (++!9414 lt!1235239 (_2!21996 lt!1235242)))))))

(assert (= (and d!1060262 (not res!1453599)) b!3597906))

(assert (= (and b!3597906 res!1453597) b!3597907))

(assert (= (and b!3597907 res!1453598) b!3597908))

(assert (= (and d!1060262 (not res!1453600)) b!3597909))

(assert (=> b!3597907 m!4092527))

(assert (=> b!3597907 m!4092601))

(declare-fun m!4093359 () Bool)

(assert (=> b!3597907 m!4093359))

(assert (=> b!3597909 m!4092601))

(declare-fun m!4093361 () Bool)

(assert (=> b!3597909 m!4093361))

(assert (=> b!3597909 m!4092565))

(assert (=> b!3597908 m!4092665))

(assert (=> b!3597908 m!4092601))

(declare-fun m!4093363 () Bool)

(assert (=> b!3597908 m!4093363))

(assert (=> b!3597908 m!4092665))

(assert (=> b!3597908 m!4093363))

(declare-fun m!4093365 () Bool)

(assert (=> b!3597908 m!4093365))

(assert (=> b!3597239 d!1060262))

(declare-fun bm!260260 () Bool)

(declare-fun call!260265 () Option!7826)

(assert (=> bm!260260 (= call!260265 (maxPrefixOneRule!1865 thiss!23823 (h!43259 rules!3307) lt!1235252))))

(declare-fun b!3597929 () Bool)

(declare-fun res!1453619 () Bool)

(declare-fun e!2226404 () Bool)

(assert (=> b!3597929 (=> (not res!1453619) (not e!2226404))))

(declare-fun lt!1235553 () Option!7826)

(assert (=> b!3597929 (= res!1453619 (= (value!180003 (_1!21996 (get!12235 lt!1235553))) (apply!9104 (transformation!5598 (rule!8326 (_1!21996 (get!12235 lt!1235553)))) (seqFromList!4151 (originalCharacters!6312 (_1!21996 (get!12235 lt!1235553)))))))))

(declare-fun b!3597930 () Bool)

(declare-fun e!2226403 () Option!7826)

(assert (=> b!3597930 (= e!2226403 call!260265)))

(declare-fun b!3597931 () Bool)

(assert (=> b!3597931 (= e!2226404 (contains!7260 rules!3307 (rule!8326 (_1!21996 (get!12235 lt!1235553)))))))

(declare-fun b!3597932 () Bool)

(declare-fun res!1453621 () Bool)

(assert (=> b!3597932 (=> (not res!1453621) (not e!2226404))))

(assert (=> b!3597932 (= res!1453621 (matchR!4926 (regex!5598 (rule!8326 (_1!21996 (get!12235 lt!1235553)))) (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235553))))))))

(declare-fun b!3597933 () Bool)

(declare-fun res!1453620 () Bool)

(assert (=> b!3597933 (=> (not res!1453620) (not e!2226404))))

(assert (=> b!3597933 (= res!1453620 (= (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235553)))) (originalCharacters!6312 (_1!21996 (get!12235 lt!1235553)))))))

(declare-fun b!3597934 () Bool)

(declare-fun res!1453616 () Bool)

(assert (=> b!3597934 (=> (not res!1453616) (not e!2226404))))

(assert (=> b!3597934 (= res!1453616 (< (size!28832 (_2!21996 (get!12235 lt!1235553))) (size!28832 lt!1235252)))))

(declare-fun b!3597935 () Bool)

(declare-fun res!1453618 () Bool)

(assert (=> b!3597935 (=> (not res!1453618) (not e!2226404))))

(assert (=> b!3597935 (= res!1453618 (= (++!9414 (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235553)))) (_2!21996 (get!12235 lt!1235553))) lt!1235252))))

(declare-fun b!3597936 () Bool)

(declare-fun e!2226402 () Bool)

(assert (=> b!3597936 (= e!2226402 e!2226404)))

(declare-fun res!1453617 () Bool)

(assert (=> b!3597936 (=> (not res!1453617) (not e!2226404))))

(assert (=> b!3597936 (= res!1453617 (isDefined!6059 lt!1235553))))

(declare-fun d!1060264 () Bool)

(assert (=> d!1060264 e!2226402))

(declare-fun res!1453615 () Bool)

(assert (=> d!1060264 (=> res!1453615 e!2226402)))

(assert (=> d!1060264 (= res!1453615 (isEmpty!22318 lt!1235553))))

(assert (=> d!1060264 (= lt!1235553 e!2226403)))

(declare-fun c!622802 () Bool)

(assert (=> d!1060264 (= c!622802 (and ((_ is Cons!37839) rules!3307) ((_ is Nil!37839) (t!291814 rules!3307))))))

(declare-fun lt!1235552 () Unit!53851)

(declare-fun lt!1235551 () Unit!53851)

(assert (=> d!1060264 (= lt!1235552 lt!1235551)))

(assert (=> d!1060264 (isPrefix!2961 lt!1235252 lt!1235252)))

(declare-fun lemmaIsPrefixRefl!1894 (List!37962 List!37962) Unit!53851)

(assert (=> d!1060264 (= lt!1235551 (lemmaIsPrefixRefl!1894 lt!1235252 lt!1235252))))

(declare-fun rulesValidInductive!1959 (LexerInterface!5187 List!37963) Bool)

(assert (=> d!1060264 (rulesValidInductive!1959 thiss!23823 rules!3307)))

(assert (=> d!1060264 (= (maxPrefix!2721 thiss!23823 rules!3307 lt!1235252) lt!1235553)))

(declare-fun b!3597928 () Bool)

(declare-fun lt!1235550 () Option!7826)

(declare-fun lt!1235554 () Option!7826)

(assert (=> b!3597928 (= e!2226403 (ite (and ((_ is None!7825) lt!1235550) ((_ is None!7825) lt!1235554)) None!7825 (ite ((_ is None!7825) lt!1235554) lt!1235550 (ite ((_ is None!7825) lt!1235550) lt!1235554 (ite (>= (size!28830 (_1!21996 (v!37523 lt!1235550))) (size!28830 (_1!21996 (v!37523 lt!1235554)))) lt!1235550 lt!1235554)))))))

(assert (=> b!3597928 (= lt!1235550 call!260265)))

(assert (=> b!3597928 (= lt!1235554 (maxPrefix!2721 thiss!23823 (t!291814 rules!3307) lt!1235252))))

(assert (= (and d!1060264 c!622802) b!3597930))

(assert (= (and d!1060264 (not c!622802)) b!3597928))

(assert (= (or b!3597930 b!3597928) bm!260260))

(assert (= (and d!1060264 (not res!1453615)) b!3597936))

(assert (= (and b!3597936 res!1453617) b!3597933))

(assert (= (and b!3597933 res!1453620) b!3597934))

(assert (= (and b!3597934 res!1453616) b!3597935))

(assert (= (and b!3597935 res!1453618) b!3597929))

(assert (= (and b!3597929 res!1453619) b!3597932))

(assert (= (and b!3597932 res!1453621) b!3597931))

(declare-fun m!4093367 () Bool)

(assert (=> b!3597928 m!4093367))

(declare-fun m!4093369 () Bool)

(assert (=> bm!260260 m!4093369))

(declare-fun m!4093371 () Bool)

(assert (=> b!3597929 m!4093371))

(declare-fun m!4093373 () Bool)

(assert (=> b!3597929 m!4093373))

(assert (=> b!3597929 m!4093373))

(declare-fun m!4093375 () Bool)

(assert (=> b!3597929 m!4093375))

(declare-fun m!4093377 () Bool)

(assert (=> b!3597936 m!4093377))

(declare-fun m!4093379 () Bool)

(assert (=> d!1060264 m!4093379))

(declare-fun m!4093381 () Bool)

(assert (=> d!1060264 m!4093381))

(declare-fun m!4093383 () Bool)

(assert (=> d!1060264 m!4093383))

(declare-fun m!4093385 () Bool)

(assert (=> d!1060264 m!4093385))

(assert (=> b!3597935 m!4093371))

(declare-fun m!4093387 () Bool)

(assert (=> b!3597935 m!4093387))

(assert (=> b!3597935 m!4093387))

(declare-fun m!4093389 () Bool)

(assert (=> b!3597935 m!4093389))

(assert (=> b!3597935 m!4093389))

(declare-fun m!4093391 () Bool)

(assert (=> b!3597935 m!4093391))

(assert (=> b!3597931 m!4093371))

(declare-fun m!4093393 () Bool)

(assert (=> b!3597931 m!4093393))

(assert (=> b!3597932 m!4093371))

(assert (=> b!3597932 m!4093387))

(assert (=> b!3597932 m!4093387))

(assert (=> b!3597932 m!4093389))

(assert (=> b!3597932 m!4093389))

(declare-fun m!4093395 () Bool)

(assert (=> b!3597932 m!4093395))

(assert (=> b!3597934 m!4093371))

(declare-fun m!4093397 () Bool)

(assert (=> b!3597934 m!4093397))

(assert (=> b!3597934 m!4092727))

(assert (=> b!3597933 m!4093371))

(assert (=> b!3597933 m!4093387))

(assert (=> b!3597933 m!4093387))

(assert (=> b!3597933 m!4093389))

(assert (=> b!3597239 d!1060264))

(declare-fun d!1060266 () Bool)

(assert (=> d!1060266 (= (get!12235 lt!1235250) (v!37523 lt!1235250))))

(assert (=> b!3597239 d!1060266))

(declare-fun d!1060268 () Bool)

(declare-fun e!2226407 () Bool)

(assert (=> d!1060268 e!2226407))

(declare-fun res!1453626 () Bool)

(assert (=> d!1060268 (=> (not res!1453626) (not e!2226407))))

(assert (=> d!1060268 (= res!1453626 (isDefined!6058 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 (_1!21996 lt!1235242))))))))

(declare-fun lt!1235557 () Unit!53851)

(declare-fun choose!20957 (LexerInterface!5187 List!37963 List!37962 Token!10562) Unit!53851)

(assert (=> d!1060268 (= lt!1235557 (choose!20957 thiss!23823 rules!3307 lt!1235252 (_1!21996 lt!1235242)))))

(assert (=> d!1060268 (rulesInvariant!4584 thiss!23823 rules!3307)))

(assert (=> d!1060268 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1204 thiss!23823 rules!3307 lt!1235252 (_1!21996 lt!1235242)) lt!1235557)))

(declare-fun b!3597941 () Bool)

(declare-fun res!1453627 () Bool)

(assert (=> b!3597941 (=> (not res!1453627) (not e!2226407))))

(assert (=> b!3597941 (= res!1453627 (matchR!4926 (regex!5598 (get!12236 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))) (list!13930 (charsOf!3612 (_1!21996 lt!1235242)))))))

(declare-fun b!3597942 () Bool)

(assert (=> b!3597942 (= e!2226407 (= (rule!8326 (_1!21996 lt!1235242)) (get!12236 (getRuleFromTag!1204 thiss!23823 rules!3307 (tag!6282 (rule!8326 (_1!21996 lt!1235242)))))))))

(assert (= (and d!1060268 res!1453626) b!3597941))

(assert (= (and b!3597941 res!1453627) b!3597942))

(assert (=> d!1060268 m!4092613))

(assert (=> d!1060268 m!4092613))

(declare-fun m!4093399 () Bool)

(assert (=> d!1060268 m!4093399))

(declare-fun m!4093401 () Bool)

(assert (=> d!1060268 m!4093401))

(assert (=> d!1060268 m!4092521))

(assert (=> b!3597941 m!4092547))

(assert (=> b!3597941 m!4092549))

(assert (=> b!3597941 m!4092613))

(assert (=> b!3597941 m!4092613))

(declare-fun m!4093403 () Bool)

(assert (=> b!3597941 m!4093403))

(assert (=> b!3597941 m!4092547))

(assert (=> b!3597941 m!4092549))

(declare-fun m!4093405 () Bool)

(assert (=> b!3597941 m!4093405))

(assert (=> b!3597942 m!4092613))

(assert (=> b!3597942 m!4092613))

(assert (=> b!3597942 m!4093403))

(assert (=> b!3597239 d!1060268))

(declare-fun d!1060270 () Bool)

(declare-fun e!2226412 () Bool)

(assert (=> d!1060270 e!2226412))

(declare-fun res!1453633 () Bool)

(assert (=> d!1060270 (=> (not res!1453633) (not e!2226412))))

(declare-fun lt!1235560 () List!37962)

(assert (=> d!1060270 (= res!1453633 (= (content!5391 lt!1235560) ((_ map or) (content!5391 lt!1235239) (content!5391 (_2!21996 lt!1235242)))))))

(declare-fun e!2226413 () List!37962)

(assert (=> d!1060270 (= lt!1235560 e!2226413)))

(declare-fun c!622805 () Bool)

(assert (=> d!1060270 (= c!622805 ((_ is Nil!37838) lt!1235239))))

(assert (=> d!1060270 (= (++!9414 lt!1235239 (_2!21996 lt!1235242)) lt!1235560)))

(declare-fun b!3597954 () Bool)

(assert (=> b!3597954 (= e!2226412 (or (not (= (_2!21996 lt!1235242) Nil!37838)) (= lt!1235560 lt!1235239)))))

(declare-fun b!3597952 () Bool)

(assert (=> b!3597952 (= e!2226413 (Cons!37838 (h!43258 lt!1235239) (++!9414 (t!291813 lt!1235239) (_2!21996 lt!1235242))))))

(declare-fun b!3597951 () Bool)

(assert (=> b!3597951 (= e!2226413 (_2!21996 lt!1235242))))

(declare-fun b!3597953 () Bool)

(declare-fun res!1453632 () Bool)

(assert (=> b!3597953 (=> (not res!1453632) (not e!2226412))))

(assert (=> b!3597953 (= res!1453632 (= (size!28832 lt!1235560) (+ (size!28832 lt!1235239) (size!28832 (_2!21996 lt!1235242)))))))

(assert (= (and d!1060270 c!622805) b!3597951))

(assert (= (and d!1060270 (not c!622805)) b!3597952))

(assert (= (and d!1060270 res!1453633) b!3597953))

(assert (= (and b!3597953 res!1453632) b!3597954))

(declare-fun m!4093407 () Bool)

(assert (=> d!1060270 m!4093407))

(declare-fun m!4093409 () Bool)

(assert (=> d!1060270 m!4093409))

(declare-fun m!4093411 () Bool)

(assert (=> d!1060270 m!4093411))

(declare-fun m!4093413 () Bool)

(assert (=> b!3597952 m!4093413))

(declare-fun m!4093415 () Bool)

(assert (=> b!3597953 m!4093415))

(assert (=> b!3597953 m!4092565))

(declare-fun m!4093417 () Bool)

(assert (=> b!3597953 m!4093417))

(assert (=> b!3597239 d!1060270))

(declare-fun d!1060272 () Bool)

(declare-fun e!2226414 () Bool)

(assert (=> d!1060272 e!2226414))

(declare-fun res!1453635 () Bool)

(assert (=> d!1060272 (=> (not res!1453635) (not e!2226414))))

(declare-fun lt!1235561 () List!37962)

(assert (=> d!1060272 (= res!1453635 (= (content!5391 lt!1235561) ((_ map or) (content!5391 lt!1235256) (content!5391 suffix!1395))))))

(declare-fun e!2226415 () List!37962)

(assert (=> d!1060272 (= lt!1235561 e!2226415)))

(declare-fun c!622806 () Bool)

(assert (=> d!1060272 (= c!622806 ((_ is Nil!37838) lt!1235256))))

(assert (=> d!1060272 (= (++!9414 lt!1235256 suffix!1395) lt!1235561)))

(declare-fun b!3597958 () Bool)

(assert (=> b!3597958 (= e!2226414 (or (not (= suffix!1395 Nil!37838)) (= lt!1235561 lt!1235256)))))

(declare-fun b!3597956 () Bool)

(assert (=> b!3597956 (= e!2226415 (Cons!37838 (h!43258 lt!1235256) (++!9414 (t!291813 lt!1235256) suffix!1395)))))

(declare-fun b!3597955 () Bool)

(assert (=> b!3597955 (= e!2226415 suffix!1395)))

(declare-fun b!3597957 () Bool)

(declare-fun res!1453634 () Bool)

(assert (=> b!3597957 (=> (not res!1453634) (not e!2226414))))

(assert (=> b!3597957 (= res!1453634 (= (size!28832 lt!1235561) (+ (size!28832 lt!1235256) (size!28832 suffix!1395))))))

(assert (= (and d!1060272 c!622806) b!3597955))

(assert (= (and d!1060272 (not c!622806)) b!3597956))

(assert (= (and d!1060272 res!1453635) b!3597957))

(assert (= (and b!3597957 res!1453634) b!3597958))

(declare-fun m!4093419 () Bool)

(assert (=> d!1060272 m!4093419))

(declare-fun m!4093421 () Bool)

(assert (=> d!1060272 m!4093421))

(declare-fun m!4093423 () Bool)

(assert (=> d!1060272 m!4093423))

(declare-fun m!4093425 () Bool)

(assert (=> b!3597956 m!4093425))

(declare-fun m!4093427 () Bool)

(assert (=> b!3597957 m!4093427))

(assert (=> b!3597957 m!4093355))

(declare-fun m!4093429 () Bool)

(assert (=> b!3597957 m!4093429))

(assert (=> b!3597239 d!1060272))

(declare-fun d!1060274 () Bool)

(assert (=> d!1060274 (isPrefix!2961 lt!1235256 (++!9414 lt!1235256 suffix!1395))))

(declare-fun lt!1235562 () Unit!53851)

(assert (=> d!1060274 (= lt!1235562 (choose!20956 lt!1235256 suffix!1395))))

(assert (=> d!1060274 (= (lemmaConcatTwoListThenFirstIsPrefix!1882 lt!1235256 suffix!1395) lt!1235562)))

(declare-fun bs!570452 () Bool)

(assert (= bs!570452 d!1060274))

(assert (=> bs!570452 m!4092597))

(assert (=> bs!570452 m!4092597))

(declare-fun m!4093431 () Bool)

(assert (=> bs!570452 m!4093431))

(declare-fun m!4093433 () Bool)

(assert (=> bs!570452 m!4093433))

(assert (=> b!3597239 d!1060274))

(declare-fun d!1060276 () Bool)

(assert (=> d!1060276 (= (isEmpty!22314 suffix!1395) ((_ is Nil!37838) suffix!1395))))

(assert (=> b!3597238 d!1060276))

(declare-fun d!1060278 () Bool)

(assert (=> d!1060278 (= (isDefined!6059 lt!1235246) (not (isEmpty!22318 lt!1235246)))))

(declare-fun bs!570453 () Bool)

(assert (= bs!570453 d!1060278))

(declare-fun m!4093435 () Bool)

(assert (=> bs!570453 m!4093435))

(assert (=> b!3597258 d!1060278))

(declare-fun call!260266 () Option!7826)

(declare-fun bm!260261 () Bool)

(assert (=> bm!260261 (= call!260266 (maxPrefixOneRule!1865 thiss!23823 (h!43259 rules!3307) lt!1235256))))

(declare-fun b!3597960 () Bool)

(declare-fun res!1453640 () Bool)

(declare-fun e!2226418 () Bool)

(assert (=> b!3597960 (=> (not res!1453640) (not e!2226418))))

(declare-fun lt!1235566 () Option!7826)

(assert (=> b!3597960 (= res!1453640 (= (value!180003 (_1!21996 (get!12235 lt!1235566))) (apply!9104 (transformation!5598 (rule!8326 (_1!21996 (get!12235 lt!1235566)))) (seqFromList!4151 (originalCharacters!6312 (_1!21996 (get!12235 lt!1235566)))))))))

(declare-fun b!3597961 () Bool)

(declare-fun e!2226417 () Option!7826)

(assert (=> b!3597961 (= e!2226417 call!260266)))

(declare-fun b!3597962 () Bool)

(assert (=> b!3597962 (= e!2226418 (contains!7260 rules!3307 (rule!8326 (_1!21996 (get!12235 lt!1235566)))))))

(declare-fun b!3597963 () Bool)

(declare-fun res!1453642 () Bool)

(assert (=> b!3597963 (=> (not res!1453642) (not e!2226418))))

(assert (=> b!3597963 (= res!1453642 (matchR!4926 (regex!5598 (rule!8326 (_1!21996 (get!12235 lt!1235566)))) (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235566))))))))

(declare-fun b!3597964 () Bool)

(declare-fun res!1453641 () Bool)

(assert (=> b!3597964 (=> (not res!1453641) (not e!2226418))))

(assert (=> b!3597964 (= res!1453641 (= (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235566)))) (originalCharacters!6312 (_1!21996 (get!12235 lt!1235566)))))))

(declare-fun b!3597965 () Bool)

(declare-fun res!1453637 () Bool)

(assert (=> b!3597965 (=> (not res!1453637) (not e!2226418))))

(assert (=> b!3597965 (= res!1453637 (< (size!28832 (_2!21996 (get!12235 lt!1235566))) (size!28832 lt!1235256)))))

(declare-fun b!3597966 () Bool)

(declare-fun res!1453639 () Bool)

(assert (=> b!3597966 (=> (not res!1453639) (not e!2226418))))

(assert (=> b!3597966 (= res!1453639 (= (++!9414 (list!13930 (charsOf!3612 (_1!21996 (get!12235 lt!1235566)))) (_2!21996 (get!12235 lt!1235566))) lt!1235256))))

(declare-fun b!3597967 () Bool)

(declare-fun e!2226416 () Bool)

(assert (=> b!3597967 (= e!2226416 e!2226418)))

(declare-fun res!1453638 () Bool)

(assert (=> b!3597967 (=> (not res!1453638) (not e!2226418))))

(assert (=> b!3597967 (= res!1453638 (isDefined!6059 lt!1235566))))

(declare-fun d!1060280 () Bool)

(assert (=> d!1060280 e!2226416))

(declare-fun res!1453636 () Bool)

(assert (=> d!1060280 (=> res!1453636 e!2226416)))

(assert (=> d!1060280 (= res!1453636 (isEmpty!22318 lt!1235566))))

(assert (=> d!1060280 (= lt!1235566 e!2226417)))

(declare-fun c!622807 () Bool)

(assert (=> d!1060280 (= c!622807 (and ((_ is Cons!37839) rules!3307) ((_ is Nil!37839) (t!291814 rules!3307))))))

(declare-fun lt!1235565 () Unit!53851)

(declare-fun lt!1235564 () Unit!53851)

(assert (=> d!1060280 (= lt!1235565 lt!1235564)))

(assert (=> d!1060280 (isPrefix!2961 lt!1235256 lt!1235256)))

(assert (=> d!1060280 (= lt!1235564 (lemmaIsPrefixRefl!1894 lt!1235256 lt!1235256))))

(assert (=> d!1060280 (rulesValidInductive!1959 thiss!23823 rules!3307)))

(assert (=> d!1060280 (= (maxPrefix!2721 thiss!23823 rules!3307 lt!1235256) lt!1235566)))

(declare-fun b!3597959 () Bool)

(declare-fun lt!1235563 () Option!7826)

(declare-fun lt!1235567 () Option!7826)

(assert (=> b!3597959 (= e!2226417 (ite (and ((_ is None!7825) lt!1235563) ((_ is None!7825) lt!1235567)) None!7825 (ite ((_ is None!7825) lt!1235567) lt!1235563 (ite ((_ is None!7825) lt!1235563) lt!1235567 (ite (>= (size!28830 (_1!21996 (v!37523 lt!1235563))) (size!28830 (_1!21996 (v!37523 lt!1235567)))) lt!1235563 lt!1235567)))))))

(assert (=> b!3597959 (= lt!1235563 call!260266)))

(assert (=> b!3597959 (= lt!1235567 (maxPrefix!2721 thiss!23823 (t!291814 rules!3307) lt!1235256))))

(assert (= (and d!1060280 c!622807) b!3597961))

(assert (= (and d!1060280 (not c!622807)) b!3597959))

(assert (= (or b!3597961 b!3597959) bm!260261))

(assert (= (and d!1060280 (not res!1453636)) b!3597967))

(assert (= (and b!3597967 res!1453638) b!3597964))

(assert (= (and b!3597964 res!1453641) b!3597965))

(assert (= (and b!3597965 res!1453637) b!3597966))

(assert (= (and b!3597966 res!1453639) b!3597960))

(assert (= (and b!3597960 res!1453640) b!3597963))

(assert (= (and b!3597963 res!1453642) b!3597962))

(declare-fun m!4093437 () Bool)

(assert (=> b!3597959 m!4093437))

(declare-fun m!4093439 () Bool)

(assert (=> bm!260261 m!4093439))

(declare-fun m!4093441 () Bool)

(assert (=> b!3597960 m!4093441))

(declare-fun m!4093443 () Bool)

(assert (=> b!3597960 m!4093443))

(assert (=> b!3597960 m!4093443))

(declare-fun m!4093445 () Bool)

(assert (=> b!3597960 m!4093445))

(declare-fun m!4093447 () Bool)

(assert (=> b!3597967 m!4093447))

(declare-fun m!4093449 () Bool)

(assert (=> d!1060280 m!4093449))

(declare-fun m!4093451 () Bool)

(assert (=> d!1060280 m!4093451))

(declare-fun m!4093453 () Bool)

(assert (=> d!1060280 m!4093453))

(assert (=> d!1060280 m!4093385))

(assert (=> b!3597966 m!4093441))

(declare-fun m!4093455 () Bool)

(assert (=> b!3597966 m!4093455))

(assert (=> b!3597966 m!4093455))

(declare-fun m!4093457 () Bool)

(assert (=> b!3597966 m!4093457))

(assert (=> b!3597966 m!4093457))

(declare-fun m!4093459 () Bool)

(assert (=> b!3597966 m!4093459))

(assert (=> b!3597962 m!4093441))

(declare-fun m!4093461 () Bool)

(assert (=> b!3597962 m!4093461))

(assert (=> b!3597963 m!4093441))

(assert (=> b!3597963 m!4093455))

(assert (=> b!3597963 m!4093455))

(assert (=> b!3597963 m!4093457))

(assert (=> b!3597963 m!4093457))

(declare-fun m!4093463 () Bool)

(assert (=> b!3597963 m!4093463))

(assert (=> b!3597965 m!4093441))

(declare-fun m!4093465 () Bool)

(assert (=> b!3597965 m!4093465))

(assert (=> b!3597965 m!4093355))

(assert (=> b!3597964 m!4093441))

(assert (=> b!3597964 m!4093455))

(assert (=> b!3597964 m!4093455))

(assert (=> b!3597964 m!4093457))

(assert (=> b!3597258 d!1060280))

(declare-fun d!1060282 () Bool)

(assert (=> d!1060282 (= (list!13930 (charsOf!3612 token!511)) (list!13933 (c!622677 (charsOf!3612 token!511))))))

(declare-fun bs!570454 () Bool)

(assert (= bs!570454 d!1060282))

(declare-fun m!4093467 () Bool)

(assert (=> bs!570454 m!4093467))

(assert (=> b!3597258 d!1060282))

(declare-fun d!1060284 () Bool)

(declare-fun lt!1235568 () BalanceConc!22648)

(assert (=> d!1060284 (= (list!13930 lt!1235568) (originalCharacters!6312 token!511))))

(assert (=> d!1060284 (= lt!1235568 (dynLambda!16309 (toChars!7741 (transformation!5598 (rule!8326 token!511))) (value!180003 token!511)))))

(assert (=> d!1060284 (= (charsOf!3612 token!511) lt!1235568)))

(declare-fun b_lambda!106373 () Bool)

(assert (=> (not b_lambda!106373) (not d!1060284)))

(assert (=> d!1060284 t!291816))

(declare-fun b_and!261055 () Bool)

(assert (= b_and!261027 (and (=> t!291816 result!250658) b_and!261055)))

(assert (=> d!1060284 t!291818))

(declare-fun b_and!261057 () Bool)

(assert (= b_and!261029 (and (=> t!291818 result!250662) b_and!261057)))

(assert (=> d!1060284 t!291820))

(declare-fun b_and!261059 () Bool)

(assert (= b_and!261031 (and (=> t!291820 result!250664) b_and!261059)))

(assert (=> d!1060284 t!291822))

(declare-fun b_and!261061 () Bool)

(assert (= b_and!261033 (and (=> t!291822 result!250666) b_and!261061)))

(declare-fun m!4093469 () Bool)

(assert (=> d!1060284 m!4093469))

(assert (=> d!1060284 m!4092713))

(assert (=> b!3597258 d!1060284))

(declare-fun d!1060286 () Bool)

(declare-fun lt!1235569 () Bool)

(assert (=> d!1060286 (= lt!1235569 (select (content!5391 lt!1235241) lt!1235251))))

(declare-fun e!2226420 () Bool)

(assert (=> d!1060286 (= lt!1235569 e!2226420)))

(declare-fun res!1453644 () Bool)

(assert (=> d!1060286 (=> (not res!1453644) (not e!2226420))))

(assert (=> d!1060286 (= res!1453644 ((_ is Cons!37838) lt!1235241))))

(assert (=> d!1060286 (= (contains!7259 lt!1235241 lt!1235251) lt!1235569)))

(declare-fun b!3597968 () Bool)

(declare-fun e!2226419 () Bool)

(assert (=> b!3597968 (= e!2226420 e!2226419)))

(declare-fun res!1453643 () Bool)

(assert (=> b!3597968 (=> res!1453643 e!2226419)))

(assert (=> b!3597968 (= res!1453643 (= (h!43258 lt!1235241) lt!1235251))))

(declare-fun b!3597969 () Bool)

(assert (=> b!3597969 (= e!2226419 (contains!7259 (t!291813 lt!1235241) lt!1235251))))

(assert (= (and d!1060286 res!1453644) b!3597968))

(assert (= (and b!3597968 (not res!1453643)) b!3597969))

(assert (=> d!1060286 m!4092643))

(declare-fun m!4093471 () Bool)

(assert (=> d!1060286 m!4093471))

(declare-fun m!4093473 () Bool)

(assert (=> b!3597969 m!4093473))

(assert (=> b!3597237 d!1060286))

(declare-fun d!1060288 () Bool)

(assert (=> d!1060288 (= (head!7534 lt!1235239) (h!43258 lt!1235239))))

(assert (=> b!3597237 d!1060288))

(declare-fun d!1060290 () Bool)

(assert (=> d!1060290 (not (matchR!4926 (regex!5598 rule!403) lt!1235256))))

(declare-fun lt!1235572 () Unit!53851)

(declare-fun choose!20958 (Regex!10357 List!37962 C!20900) Unit!53851)

(assert (=> d!1060290 (= lt!1235572 (choose!20958 (regex!5598 rule!403) lt!1235256 lt!1235251))))

(assert (=> d!1060290 (validRegex!4734 (regex!5598 rule!403))))

(assert (=> d!1060290 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!582 (regex!5598 rule!403) lt!1235256 lt!1235251) lt!1235572)))

(declare-fun bs!570455 () Bool)

(assert (= bs!570455 d!1060290))

(assert (=> bs!570455 m!4092515))

(declare-fun m!4093475 () Bool)

(assert (=> bs!570455 m!4093475))

(assert (=> bs!570455 m!4092699))

(assert (=> b!3597236 d!1060290))

(declare-fun b!3597983 () Bool)

(declare-fun e!2226423 () Bool)

(declare-fun tp!1100817 () Bool)

(declare-fun tp!1100813 () Bool)

(assert (=> b!3597983 (= e!2226423 (and tp!1100817 tp!1100813))))

(declare-fun b!3597981 () Bool)

(declare-fun tp!1100814 () Bool)

(declare-fun tp!1100815 () Bool)

(assert (=> b!3597981 (= e!2226423 (and tp!1100814 tp!1100815))))

(declare-fun b!3597980 () Bool)

(assert (=> b!3597980 (= e!2226423 tp_is_empty!17797)))

(declare-fun b!3597982 () Bool)

(declare-fun tp!1100816 () Bool)

(assert (=> b!3597982 (= e!2226423 tp!1100816)))

(assert (=> b!3597256 (= tp!1100744 e!2226423)))

(assert (= (and b!3597256 ((_ is ElementMatch!10357) (regex!5598 anOtherTypeRule!33))) b!3597980))

(assert (= (and b!3597256 ((_ is Concat!16186) (regex!5598 anOtherTypeRule!33))) b!3597981))

(assert (= (and b!3597256 ((_ is Star!10357) (regex!5598 anOtherTypeRule!33))) b!3597982))

(assert (= (and b!3597256 ((_ is Union!10357) (regex!5598 anOtherTypeRule!33))) b!3597983))

(declare-fun b!3597994 () Bool)

(declare-fun b_free!93029 () Bool)

(declare-fun b_next!93733 () Bool)

(assert (=> b!3597994 (= b_free!93029 (not b_next!93733))))

(declare-fun t!291926 () Bool)

(declare-fun tb!205725 () Bool)

(assert (=> (and b!3597994 (= (toValue!7882 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291926) tb!205725))

(declare-fun result!250784 () Bool)

(assert (= result!250784 result!250714))

(assert (=> d!1060206 t!291926))

(assert (=> d!1060120 t!291926))

(assert (=> d!1060210 t!291926))

(declare-fun t!291928 () Bool)

(declare-fun tb!205727 () Bool)

(assert (=> (and b!3597994 (= (toValue!7882 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291928) tb!205727))

(declare-fun result!250786 () Bool)

(assert (= result!250786 result!250722))

(assert (=> d!1060120 t!291928))

(declare-fun t!291930 () Bool)

(declare-fun tb!205729 () Bool)

(assert (=> (and b!3597994 (= (toValue!7882 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toValue!7882 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291930) tb!205729))

(declare-fun result!250788 () Bool)

(assert (= result!250788 result!250668))

(assert (=> d!1060076 t!291930))

(declare-fun b_and!261063 () Bool)

(declare-fun tp!1100827 () Bool)

(assert (=> b!3597994 (= tp!1100827 (and (=> t!291928 result!250786) (=> t!291930 result!250788) (=> t!291926 result!250784) b_and!261063))))

(declare-fun b_free!93031 () Bool)

(declare-fun b_next!93735 () Bool)

(assert (=> b!3597994 (= b_free!93031 (not b_next!93735))))

(declare-fun tb!205731 () Bool)

(declare-fun t!291932 () Bool)

(assert (=> (and b!3597994 (= (toChars!7741 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toChars!7741 (transformation!5598 (rule!8326 token!511)))) t!291932) tb!205731))

(declare-fun result!250790 () Bool)

(assert (= result!250790 result!250658))

(assert (=> b!3597392 t!291932))

(declare-fun tb!205733 () Bool)

(declare-fun t!291934 () Bool)

(assert (=> (and b!3597994 (= (toChars!7741 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291934) tb!205733))

(declare-fun result!250792 () Bool)

(assert (= result!250792 result!250738))

(assert (=> d!1060206 t!291934))

(declare-fun t!291936 () Bool)

(declare-fun tb!205735 () Bool)

(assert (=> (and b!3597994 (= (toChars!7741 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toChars!7741 (transformation!5598 (rule!8326 (_1!21996 lt!1235242))))) t!291936) tb!205735))

(declare-fun result!250794 () Bool)

(assert (= result!250794 result!250746))

(assert (=> d!1060224 t!291936))

(assert (=> d!1060284 t!291932))

(declare-fun tp!1100828 () Bool)

(declare-fun b_and!261065 () Bool)

(assert (=> b!3597994 (= tp!1100828 (and (=> t!291932 result!250790) (=> t!291934 result!250792) (=> t!291936 result!250794) b_and!261065))))

(declare-fun e!2226434 () Bool)

(assert (=> b!3597994 (= e!2226434 (and tp!1100827 tp!1100828))))

(declare-fun e!2226435 () Bool)

(declare-fun b!3597993 () Bool)

(declare-fun tp!1100829 () Bool)

(assert (=> b!3597993 (= e!2226435 (and tp!1100829 (inv!51187 (tag!6282 (h!43259 (t!291814 rules!3307)))) (inv!51190 (transformation!5598 (h!43259 (t!291814 rules!3307)))) e!2226434))))

(declare-fun b!3597992 () Bool)

(declare-fun e!2226433 () Bool)

(declare-fun tp!1100826 () Bool)

(assert (=> b!3597992 (= e!2226433 (and e!2226435 tp!1100826))))

(assert (=> b!3597260 (= tp!1100736 e!2226433)))

(assert (= b!3597993 b!3597994))

(assert (= b!3597992 b!3597993))

(assert (= (and b!3597260 ((_ is Cons!37839) (t!291814 rules!3307))) b!3597992))

(declare-fun m!4093477 () Bool)

(assert (=> b!3597993 m!4093477))

(declare-fun m!4093479 () Bool)

(assert (=> b!3597993 m!4093479))

(declare-fun b!3597999 () Bool)

(declare-fun e!2226438 () Bool)

(declare-fun tp!1100832 () Bool)

(assert (=> b!3597999 (= e!2226438 (and tp_is_empty!17797 tp!1100832))))

(assert (=> b!3597265 (= tp!1100733 e!2226438)))

(assert (= (and b!3597265 ((_ is Cons!37838) (t!291813 suffix!1395))) b!3597999))

(declare-fun b!3598000 () Bool)

(declare-fun e!2226439 () Bool)

(declare-fun tp!1100833 () Bool)

(assert (=> b!3598000 (= e!2226439 (and tp_is_empty!17797 tp!1100833))))

(assert (=> b!3597249 (= tp!1100735 e!2226439)))

(assert (= (and b!3597249 ((_ is Cons!37838) (originalCharacters!6312 token!511))) b!3598000))

(declare-fun b!3598004 () Bool)

(declare-fun e!2226440 () Bool)

(declare-fun tp!1100838 () Bool)

(declare-fun tp!1100834 () Bool)

(assert (=> b!3598004 (= e!2226440 (and tp!1100838 tp!1100834))))

(declare-fun b!3598002 () Bool)

(declare-fun tp!1100835 () Bool)

(declare-fun tp!1100836 () Bool)

(assert (=> b!3598002 (= e!2226440 (and tp!1100835 tp!1100836))))

(declare-fun b!3598001 () Bool)

(assert (=> b!3598001 (= e!2226440 tp_is_empty!17797)))

(declare-fun b!3598003 () Bool)

(declare-fun tp!1100837 () Bool)

(assert (=> b!3598003 (= e!2226440 tp!1100837)))

(assert (=> b!3597252 (= tp!1100743 e!2226440)))

(assert (= (and b!3597252 ((_ is ElementMatch!10357) (regex!5598 (h!43259 rules!3307)))) b!3598001))

(assert (= (and b!3597252 ((_ is Concat!16186) (regex!5598 (h!43259 rules!3307)))) b!3598002))

(assert (= (and b!3597252 ((_ is Star!10357) (regex!5598 (h!43259 rules!3307)))) b!3598003))

(assert (= (and b!3597252 ((_ is Union!10357) (regex!5598 (h!43259 rules!3307)))) b!3598004))

(declare-fun b!3598008 () Bool)

(declare-fun e!2226441 () Bool)

(declare-fun tp!1100843 () Bool)

(declare-fun tp!1100839 () Bool)

(assert (=> b!3598008 (= e!2226441 (and tp!1100843 tp!1100839))))

(declare-fun b!3598006 () Bool)

(declare-fun tp!1100840 () Bool)

(declare-fun tp!1100841 () Bool)

(assert (=> b!3598006 (= e!2226441 (and tp!1100840 tp!1100841))))

(declare-fun b!3598005 () Bool)

(assert (=> b!3598005 (= e!2226441 tp_is_empty!17797)))

(declare-fun b!3598007 () Bool)

(declare-fun tp!1100842 () Bool)

(assert (=> b!3598007 (= e!2226441 tp!1100842)))

(assert (=> b!3597247 (= tp!1100746 e!2226441)))

(assert (= (and b!3597247 ((_ is ElementMatch!10357) (regex!5598 rule!403))) b!3598005))

(assert (= (and b!3597247 ((_ is Concat!16186) (regex!5598 rule!403))) b!3598006))

(assert (= (and b!3597247 ((_ is Star!10357) (regex!5598 rule!403))) b!3598007))

(assert (= (and b!3597247 ((_ is Union!10357) (regex!5598 rule!403))) b!3598008))

(declare-fun b!3598012 () Bool)

(declare-fun e!2226442 () Bool)

(declare-fun tp!1100848 () Bool)

(declare-fun tp!1100844 () Bool)

(assert (=> b!3598012 (= e!2226442 (and tp!1100848 tp!1100844))))

(declare-fun b!3598010 () Bool)

(declare-fun tp!1100845 () Bool)

(declare-fun tp!1100846 () Bool)

(assert (=> b!3598010 (= e!2226442 (and tp!1100845 tp!1100846))))

(declare-fun b!3598009 () Bool)

(assert (=> b!3598009 (= e!2226442 tp_is_empty!17797)))

(declare-fun b!3598011 () Bool)

(declare-fun tp!1100847 () Bool)

(assert (=> b!3598011 (= e!2226442 tp!1100847)))

(assert (=> b!3597241 (= tp!1100740 e!2226442)))

(assert (= (and b!3597241 ((_ is ElementMatch!10357) (regex!5598 (rule!8326 token!511)))) b!3598009))

(assert (= (and b!3597241 ((_ is Concat!16186) (regex!5598 (rule!8326 token!511)))) b!3598010))

(assert (= (and b!3597241 ((_ is Star!10357) (regex!5598 (rule!8326 token!511)))) b!3598011))

(assert (= (and b!3597241 ((_ is Union!10357) (regex!5598 (rule!8326 token!511)))) b!3598012))

(declare-fun b_lambda!106375 () Bool)

(assert (= b_lambda!106335 (or (and b!3597250 b_free!93023 (= (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597240 b_free!93011 (= (toChars!7741 (transformation!5598 rule!403)) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597994 b_free!93031 (= (toChars!7741 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597263 b_free!93015 (= (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597254 b_free!93019) b_lambda!106375)))

(declare-fun b_lambda!106377 () Bool)

(assert (= b_lambda!106373 (or (and b!3597250 b_free!93023 (= (toChars!7741 (transformation!5598 (h!43259 rules!3307))) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597240 b_free!93011 (= (toChars!7741 (transformation!5598 rule!403)) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597994 b_free!93031 (= (toChars!7741 (transformation!5598 (h!43259 (t!291814 rules!3307)))) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597263 b_free!93015 (= (toChars!7741 (transformation!5598 anOtherTypeRule!33)) (toChars!7741 (transformation!5598 (rule!8326 token!511))))) (and b!3597254 b_free!93019) b_lambda!106377)))

(check-sat (not b!3597952) (not b!3598011) (not b!3597953) (not b!3597957) (not b!3597962) (not b!3597377) (not d!1060232) (not bm!260227) (not b!3597761) (not b_next!93727) (not b!3597339) (not d!1060120) (not bm!260253) (not b!3597909) (not b!3597349) (not b_lambda!106353) (not b!3597739) (not b_lambda!106361) b_and!261019 (not b!3597963) (not b!3597337) (not b!3597942) (not b!3597471) (not d!1060274) (not b_lambda!106363) (not b_next!93725) (not b!3597929) (not b_lambda!106375) (not d!1060118) (not b_lambda!106359) (not b_next!93717) (not b_next!93723) (not d!1060236) (not d!1060080) (not b!3597387) (not b!3598008) (not b!3597269) (not b!3597340) (not b!3597907) (not b!3597789) (not d!1060084) (not d!1060256) (not b!3597369) (not b!3597932) (not b!3597935) (not b_lambda!106357) b_and!261065 (not b_next!93715) (not b!3597272) (not d!1060278) (not b!3597750) (not b!3597941) (not b!3597751) b_and!261063 b_and!261021 (not b!3597904) b_and!261059 (not b_next!93733) (not d!1060270) (not d!1060202) (not b!3597475) (not b!3597936) (not d!1060224) (not d!1060218) (not b!3597492) (not b!3598000) (not b!3597992) (not b!3597278) (not b!3597908) (not d!1060044) (not d!1060290) (not b!3597901) (not b!3597412) (not b!3597469) (not b!3597763) (not d!1060068) (not b!3597366) (not tb!205617) (not b!3597490) (not d!1060064) (not b!3597741) (not b_next!93719) (not b!3597385) (not b!3597965) (not b_next!93735) (not b!3597964) (not b!3598012) (not b!3597928) (not d!1060072) (not d!1060244) b_and!261025 (not bm!260261) (not b!3597900) (not b!3597931) (not d!1060282) (not bm!260222) (not d!1060284) (not d!1060234) (not b!3598010) (not bm!260226) (not d!1060206) (not bm!260249) (not b!3597405) (not d!1060268) (not b_lambda!106337) (not b!3597363) (not b!3597933) (not d!1060066) (not b!3597347) (not tb!205673) (not bm!260251) (not tb!205689) (not d!1060192) (not b!3597393) (not tb!205665) (not b!3597784) (not d!1060050) (not d!1060086) (not b!3597956) (not b!3597905) (not b!3597472) (not b_next!93721) (not b!3597367) (not d!1060222) (not d!1060220) tp_is_empty!17797 (not d!1060286) (not b!3597993) b_and!261023 (not tb!205697) (not b!3597888) (not b!3597983) (not bm!260250) (not bm!260260) (not b!3597489) (not b!3597379) (not b!3597754) (not b!3597371) (not b!3597886) (not b!3597753) (not b!3597370) (not b!3597967) (not b!3597899) (not b!3597887) (not b!3597981) (not d!1060040) (not d!1060212) (not d!1060042) (not b!3597959) (not b!3597341) (not d!1060078) (not b!3597474) (not b!3597470) b_and!261057 (not b!3597351) b_and!261055 (not b!3597966) (not b!3597476) (not b_next!93713) (not b!3597308) (not d!1060272) (not d!1060058) (not b!3597999) (not b_lambda!106351) (not d!1060054) (not b!3597934) (not d!1060088) (not b!3597960) (not b!3597468) (not b!3598004) (not b!3598007) (not b_lambda!106377) (not b!3598006) (not d!1060280) (not b!3598002) (not b!3597969) (not b!3598003) (not b!3597392) (not d!1060116) (not b!3597982) (not b!3597787) (not d!1060074) (not b!3597365) (not bm!260221) (not b!3597755) b_and!261061 (not b!3597398) (not d!1060264) (not tb!205625) (not b!3597765) (not b!3597903) (not bm!260220))
(check-sat (not b_next!93727) b_and!261019 (not b_next!93725) b_and!261025 (not b_next!93721) b_and!261023 (not b_next!93713) b_and!261061 (not b_next!93717) (not b_next!93723) b_and!261065 (not b_next!93715) b_and!261063 b_and!261021 b_and!261059 (not b_next!93733) (not b_next!93719) (not b_next!93735) b_and!261055 b_and!261057)
