; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49532 () Bool)

(assert start!49532)

(declare-fun b!536817 () Bool)

(declare-fun b_free!14713 () Bool)

(declare-fun b_next!14729 () Bool)

(assert (=> b!536817 (= b_free!14713 (not b_next!14729))))

(declare-fun tp!171300 () Bool)

(declare-fun b_and!52507 () Bool)

(assert (=> b!536817 (= tp!171300 b_and!52507)))

(declare-fun b_free!14715 () Bool)

(declare-fun b_next!14731 () Bool)

(assert (=> b!536817 (= b_free!14715 (not b_next!14731))))

(declare-fun tp!171298 () Bool)

(declare-fun b_and!52509 () Bool)

(assert (=> b!536817 (= tp!171298 b_and!52509)))

(declare-fun b!536823 () Bool)

(declare-fun b_free!14717 () Bool)

(declare-fun b_next!14733 () Bool)

(assert (=> b!536823 (= b_free!14717 (not b_next!14733))))

(declare-fun tp!171293 () Bool)

(declare-fun b_and!52511 () Bool)

(assert (=> b!536823 (= tp!171293 b_and!52511)))

(declare-fun b_free!14719 () Bool)

(declare-fun b_next!14735 () Bool)

(assert (=> b!536823 (= b_free!14719 (not b_next!14735))))

(declare-fun tp!171292 () Bool)

(declare-fun b_and!52513 () Bool)

(assert (=> b!536823 (= tp!171292 b_and!52513)))

(declare-fun b!536797 () Bool)

(declare-fun res!227318 () Bool)

(declare-fun e!323837 () Bool)

(assert (=> b!536797 (=> (not res!227318) (not e!323837))))

(declare-datatypes ((C!3512 0))(
  ( (C!3513 (val!1982 Int)) )
))
(declare-datatypes ((Regex!1295 0))(
  ( (ElementMatch!1295 (c!102048 C!3512)) (Concat!2280 (regOne!3102 Regex!1295) (regTwo!3102 Regex!1295)) (EmptyExpr!1295) (Star!1295 (reg!1624 Regex!1295)) (EmptyLang!1295) (Union!1295 (regOne!3103 Regex!1295) (regTwo!3103 Regex!1295)) )
))
(declare-datatypes ((String!6668 0))(
  ( (String!6669 (value!32229 String)) )
))
(declare-datatypes ((List!5219 0))(
  ( (Nil!5209) (Cons!5209 (h!10610 (_ BitVec 16)) (t!74172 List!5219)) )
))
(declare-datatypes ((TokenValue!985 0))(
  ( (FloatLiteralValue!1970 (text!7340 List!5219)) (TokenValueExt!984 (__x!3868 Int)) (Broken!4925 (value!32230 List!5219)) (Object!994) (End!985) (Def!985) (Underscore!985) (Match!985) (Else!985) (Error!985) (Case!985) (If!985) (Extends!985) (Abstract!985) (Class!985) (Val!985) (DelimiterValue!1970 (del!1045 List!5219)) (KeywordValue!991 (value!32231 List!5219)) (CommentValue!1970 (value!32232 List!5219)) (WhitespaceValue!1970 (value!32233 List!5219)) (IndentationValue!985 (value!32234 List!5219)) (String!6670) (Int32!985) (Broken!4926 (value!32235 List!5219)) (Boolean!986) (Unit!9096) (OperatorValue!988 (op!1045 List!5219)) (IdentifierValue!1970 (value!32236 List!5219)) (IdentifierValue!1971 (value!32237 List!5219)) (WhitespaceValue!1971 (value!32238 List!5219)) (True!1970) (False!1970) (Broken!4927 (value!32239 List!5219)) (Broken!4928 (value!32240 List!5219)) (True!1971) (RightBrace!985) (RightBracket!985) (Colon!985) (Null!985) (Comma!985) (LeftBracket!985) (False!1971) (LeftBrace!985) (ImaginaryLiteralValue!985 (text!7341 List!5219)) (StringLiteralValue!2955 (value!32241 List!5219)) (EOFValue!985 (value!32242 List!5219)) (IdentValue!985 (value!32243 List!5219)) (DelimiterValue!1971 (value!32244 List!5219)) (DedentValue!985 (value!32245 List!5219)) (NewLineValue!985 (value!32246 List!5219)) (IntegerValue!2955 (value!32247 (_ BitVec 32)) (text!7342 List!5219)) (IntegerValue!2956 (value!32248 Int) (text!7343 List!5219)) (Times!985) (Or!985) (Equal!985) (Minus!985) (Broken!4929 (value!32249 List!5219)) (And!985) (Div!985) (LessEqual!985) (Mod!985) (Concat!2281) (Not!985) (Plus!985) (SpaceValue!985 (value!32250 List!5219)) (IntegerValue!2957 (value!32251 Int) (text!7344 List!5219)) (StringLiteralValue!2956 (text!7345 List!5219)) (FloatLiteralValue!1971 (text!7346 List!5219)) (BytesLiteralValue!985 (value!32252 List!5219)) (CommentValue!1971 (value!32253 List!5219)) (StringLiteralValue!2957 (value!32254 List!5219)) (ErrorTokenValue!985 (msg!1046 List!5219)) )
))
(declare-datatypes ((List!5220 0))(
  ( (Nil!5210) (Cons!5210 (h!10611 C!3512) (t!74173 List!5220)) )
))
(declare-datatypes ((IArray!3357 0))(
  ( (IArray!3358 (innerList!1736 List!5220)) )
))
(declare-datatypes ((Conc!1678 0))(
  ( (Node!1678 (left!4359 Conc!1678) (right!4689 Conc!1678) (csize!3586 Int) (cheight!1889 Int)) (Leaf!2666 (xs!4315 IArray!3357) (csize!3587 Int)) (Empty!1678) )
))
(declare-datatypes ((BalanceConc!3364 0))(
  ( (BalanceConc!3365 (c!102049 Conc!1678)) )
))
(declare-datatypes ((TokenValueInjection!1738 0))(
  ( (TokenValueInjection!1739 (toValue!1808 Int) (toChars!1667 Int)) )
))
(declare-datatypes ((Rule!1722 0))(
  ( (Rule!1723 (regex!961 Regex!1295) (tag!1223 String!6668) (isSeparator!961 Bool) (transformation!961 TokenValueInjection!1738)) )
))
(declare-datatypes ((List!5221 0))(
  ( (Nil!5211) (Cons!5211 (h!10612 Rule!1722) (t!74174 List!5221)) )
))
(declare-fun rules!3103 () List!5221)

(declare-fun isEmpty!3766 (List!5221) Bool)

(assert (=> b!536797 (= res!227318 (not (isEmpty!3766 rules!3103)))))

(declare-fun lt!222265 () List!5220)

(declare-fun b!536798 () Bool)

(declare-fun lt!222277 () Int)

(declare-datatypes ((Token!1658 0))(
  ( (Token!1659 (value!32255 TokenValue!985) (rule!1665 Rule!1722) (size!4194 Int) (originalCharacters!1000 List!5220)) )
))
(declare-datatypes ((tuple2!6284 0))(
  ( (tuple2!6285 (_1!3406 Token!1658) (_2!3406 List!5220)) )
))
(declare-fun lt!222280 () tuple2!6284)

(declare-fun e!323834 () Bool)

(declare-fun lt!222272 () TokenValue!985)

(declare-datatypes ((Option!1311 0))(
  ( (None!1310) (Some!1310 (v!16117 tuple2!6284)) )
))
(declare-fun lt!222286 () Option!1311)

(declare-fun lt!222266 () List!5220)

(assert (=> b!536798 (= e!323834 (and (= (size!4194 (_1!3406 (v!16117 lt!222286))) lt!222277) (= (originalCharacters!1000 (_1!3406 (v!16117 lt!222286))) lt!222265) (= lt!222280 (tuple2!6285 (Token!1659 lt!222272 (rule!1665 (_1!3406 (v!16117 lt!222286))) lt!222277 lt!222265) lt!222266))))))

(declare-fun b!536799 () Bool)

(declare-fun suffix!1342 () List!5220)

(declare-fun lt!222284 () TokenValue!985)

(declare-fun token!491 () Token!1658)

(declare-fun e!323845 () Bool)

(declare-fun lt!222282 () Int)

(declare-fun lt!222270 () List!5220)

(declare-fun lt!222285 () List!5220)

(assert (=> b!536799 (= e!323845 (and (= (size!4194 token!491) lt!222282) (= (originalCharacters!1000 token!491) lt!222270) (= (tuple2!6285 token!491 suffix!1342) (tuple2!6285 (Token!1659 lt!222284 (rule!1665 token!491) lt!222282 lt!222270) lt!222285))))))

(declare-fun res!227305 () Bool)

(assert (=> start!49532 (=> (not res!227305) (not e!323837))))

(declare-datatypes ((LexerInterface!847 0))(
  ( (LexerInterfaceExt!844 (__x!3869 Int)) (Lexer!845) )
))
(declare-fun thiss!22590 () LexerInterface!847)

(get-info :version)

(assert (=> start!49532 (= res!227305 ((_ is Lexer!845) thiss!22590))))

(assert (=> start!49532 e!323837))

(declare-fun e!323843 () Bool)

(assert (=> start!49532 e!323843))

(declare-fun e!323836 () Bool)

(assert (=> start!49532 e!323836))

(declare-fun e!323848 () Bool)

(declare-fun inv!6539 (Token!1658) Bool)

(assert (=> start!49532 (and (inv!6539 token!491) e!323848)))

(assert (=> start!49532 true))

(declare-fun e!323850 () Bool)

(assert (=> start!49532 e!323850))

(declare-fun b!536800 () Bool)

(declare-fun tp_is_empty!2945 () Bool)

(declare-fun tp!171294 () Bool)

(assert (=> b!536800 (= e!323843 (and tp_is_empty!2945 tp!171294))))

(declare-fun b!536801 () Bool)

(declare-fun tp!171299 () Bool)

(assert (=> b!536801 (= e!323850 (and tp_is_empty!2945 tp!171299))))

(declare-fun b!536802 () Bool)

(declare-fun e!323852 () Bool)

(declare-fun e!323831 () Bool)

(assert (=> b!536802 (= e!323852 (not e!323831))))

(declare-fun res!227316 () Bool)

(assert (=> b!536802 (=> res!227316 e!323831)))

(declare-fun input!2705 () List!5220)

(declare-fun lt!222279 () List!5220)

(declare-fun isPrefix!603 (List!5220 List!5220) Bool)

(assert (=> b!536802 (= res!227316 (not (isPrefix!603 input!2705 lt!222279)))))

(assert (=> b!536802 (isPrefix!603 lt!222270 lt!222279)))

(declare-datatypes ((Unit!9097 0))(
  ( (Unit!9098) )
))
(declare-fun lt!222274 () Unit!9097)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!454 (List!5220 List!5220) Unit!9097)

(assert (=> b!536802 (= lt!222274 (lemmaConcatTwoListThenFirstIsPrefix!454 lt!222270 suffix!1342))))

(declare-fun lt!222288 () List!5220)

(assert (=> b!536802 (isPrefix!603 input!2705 lt!222288)))

(declare-fun lt!222271 () Unit!9097)

(assert (=> b!536802 (= lt!222271 (lemmaConcatTwoListThenFirstIsPrefix!454 input!2705 suffix!1342))))

(assert (=> b!536802 e!323834))

(declare-fun res!227309 () Bool)

(assert (=> b!536802 (=> (not res!227309) (not e!323834))))

(assert (=> b!536802 (= res!227309 (= (value!32255 (_1!3406 (v!16117 lt!222286))) lt!222272))))

(declare-fun apply!1236 (TokenValueInjection!1738 BalanceConc!3364) TokenValue!985)

(declare-fun seqFromList!1159 (List!5220) BalanceConc!3364)

(assert (=> b!536802 (= lt!222272 (apply!1236 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (seqFromList!1159 lt!222265)))))

(declare-fun lt!222276 () Unit!9097)

(declare-fun lemmaInv!109 (TokenValueInjection!1738) Unit!9097)

(assert (=> b!536802 (= lt!222276 (lemmaInv!109 (transformation!961 (rule!1665 token!491))))))

(declare-fun lt!222291 () Unit!9097)

(assert (=> b!536802 (= lt!222291 (lemmaInv!109 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))))))

(declare-fun ruleValid!181 (LexerInterface!847 Rule!1722) Bool)

(assert (=> b!536802 (ruleValid!181 thiss!22590 (rule!1665 token!491))))

(declare-fun lt!222287 () Unit!9097)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!40 (LexerInterface!847 Rule!1722 List!5221) Unit!9097)

(assert (=> b!536802 (= lt!222287 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!40 thiss!22590 (rule!1665 token!491) rules!3103))))

(assert (=> b!536802 (ruleValid!181 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))))))

(declare-fun lt!222268 () Unit!9097)

(assert (=> b!536802 (= lt!222268 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!40 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) rules!3103))))

(assert (=> b!536802 (isPrefix!603 input!2705 input!2705)))

(declare-fun lt!222269 () Unit!9097)

(declare-fun lemmaIsPrefixRefl!343 (List!5220 List!5220) Unit!9097)

(assert (=> b!536802 (= lt!222269 (lemmaIsPrefixRefl!343 input!2705 input!2705))))

(assert (=> b!536802 (= (_2!3406 (v!16117 lt!222286)) lt!222266)))

(declare-fun lt!222289 () Unit!9097)

(declare-fun lemmaSamePrefixThenSameSuffix!330 (List!5220 List!5220 List!5220 List!5220 List!5220) Unit!9097)

(assert (=> b!536802 (= lt!222289 (lemmaSamePrefixThenSameSuffix!330 lt!222265 (_2!3406 (v!16117 lt!222286)) lt!222265 lt!222266 input!2705))))

(declare-fun getSuffix!126 (List!5220 List!5220) List!5220)

(assert (=> b!536802 (= lt!222266 (getSuffix!126 input!2705 lt!222265))))

(declare-fun ++!1449 (List!5220 List!5220) List!5220)

(assert (=> b!536802 (isPrefix!603 lt!222265 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))))))

(declare-fun lt!222273 () Unit!9097)

(assert (=> b!536802 (= lt!222273 (lemmaConcatTwoListThenFirstIsPrefix!454 lt!222265 (_2!3406 (v!16117 lt!222286))))))

(declare-fun lt!222267 () Unit!9097)

(declare-fun lemmaCharactersSize!40 (Token!1658) Unit!9097)

(assert (=> b!536802 (= lt!222267 (lemmaCharactersSize!40 token!491))))

(declare-fun lt!222290 () Unit!9097)

(assert (=> b!536802 (= lt!222290 (lemmaCharactersSize!40 (_1!3406 (v!16117 lt!222286))))))

(declare-fun lt!222278 () Unit!9097)

(declare-fun e!323839 () Unit!9097)

(assert (=> b!536802 (= lt!222278 e!323839)))

(declare-fun c!102047 () Bool)

(assert (=> b!536802 (= c!102047 (> lt!222277 lt!222282))))

(declare-fun size!4195 (List!5220) Int)

(assert (=> b!536802 (= lt!222282 (size!4195 lt!222270))))

(assert (=> b!536802 (= lt!222277 (size!4195 lt!222265))))

(declare-fun list!2165 (BalanceConc!3364) List!5220)

(declare-fun charsOf!590 (Token!1658) BalanceConc!3364)

(assert (=> b!536802 (= lt!222265 (list!2165 (charsOf!590 (_1!3406 (v!16117 lt!222286)))))))

(assert (=> b!536802 (= lt!222286 (Some!1310 lt!222280))))

(assert (=> b!536802 (= lt!222280 (tuple2!6285 (_1!3406 (v!16117 lt!222286)) (_2!3406 (v!16117 lt!222286))))))

(declare-fun lt!222281 () Unit!9097)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!46 (List!5220 List!5220 List!5220 List!5220) Unit!9097)

(assert (=> b!536802 (= lt!222281 (lemmaConcatSameAndSameSizesThenSameLists!46 lt!222270 suffix!1342 input!2705 suffix!1342))))

(declare-fun e!323849 () Bool)

(declare-fun e!323835 () Bool)

(declare-fun b!536803 () Bool)

(declare-fun tp!171296 () Bool)

(declare-fun inv!6536 (String!6668) Bool)

(declare-fun inv!6540 (TokenValueInjection!1738) Bool)

(assert (=> b!536803 (= e!323835 (and tp!171296 (inv!6536 (tag!1223 (rule!1665 token!491))) (inv!6540 (transformation!961 (rule!1665 token!491))) e!323849))))

(declare-fun b!536804 () Bool)

(declare-fun e!323847 () Bool)

(declare-fun e!323840 () Bool)

(assert (=> b!536804 (= e!323847 e!323840)))

(declare-fun res!227311 () Bool)

(assert (=> b!536804 (=> res!227311 e!323840)))

(assert (=> b!536804 (= res!227311 (>= lt!222277 lt!222282))))

(declare-fun b!536805 () Bool)

(declare-fun e!323829 () Bool)

(declare-fun tp!171295 () Bool)

(declare-fun e!323851 () Bool)

(assert (=> b!536805 (= e!323851 (and tp!171295 (inv!6536 (tag!1223 (h!10612 rules!3103))) (inv!6540 (transformation!961 (h!10612 rules!3103))) e!323829))))

(declare-fun b!536806 () Bool)

(declare-fun res!227310 () Bool)

(assert (=> b!536806 (=> (not res!227310) (not e!323837))))

(declare-fun rulesInvariant!810 (LexerInterface!847 List!5221) Bool)

(assert (=> b!536806 (= res!227310 (rulesInvariant!810 thiss!22590 rules!3103))))

(declare-fun b!536807 () Bool)

(declare-fun res!227302 () Bool)

(assert (=> b!536807 (=> (not res!227302) (not e!323834))))

(assert (=> b!536807 (= res!227302 (= (size!4194 (_1!3406 (v!16117 lt!222286))) (size!4195 (originalCharacters!1000 (_1!3406 (v!16117 lt!222286))))))))

(declare-fun b!536808 () Bool)

(declare-fun Unit!9099 () Unit!9097)

(assert (=> b!536808 (= e!323839 Unit!9099)))

(declare-fun b!536809 () Bool)

(declare-fun e!323838 () Bool)

(assert (=> b!536809 (= e!323837 e!323838)))

(declare-fun res!227312 () Bool)

(assert (=> b!536809 (=> (not res!227312) (not e!323838))))

(assert (=> b!536809 (= res!227312 (= lt!222270 input!2705))))

(assert (=> b!536809 (= lt!222270 (list!2165 (charsOf!590 token!491)))))

(declare-fun b!536810 () Bool)

(declare-fun e!323830 () Bool)

(declare-fun e!323841 () Bool)

(assert (=> b!536810 (= e!323830 e!323841)))

(declare-fun res!227313 () Bool)

(assert (=> b!536810 (=> (not res!227313) (not e!323841))))

(assert (=> b!536810 (= res!227313 ((_ is Some!1310) lt!222286))))

(declare-fun maxPrefix!545 (LexerInterface!847 List!5221 List!5220) Option!1311)

(assert (=> b!536810 (= lt!222286 (maxPrefix!545 thiss!22590 rules!3103 input!2705))))

(declare-fun b!536811 () Bool)

(declare-fun res!227314 () Bool)

(assert (=> b!536811 (=> (not res!227314) (not e!323845))))

(assert (=> b!536811 (= res!227314 (= (size!4194 token!491) (size!4195 (originalCharacters!1000 token!491))))))

(declare-fun b!536812 () Bool)

(declare-fun res!227317 () Bool)

(assert (=> b!536812 (=> (not res!227317) (not e!323837))))

(declare-fun isEmpty!3767 (List!5220) Bool)

(assert (=> b!536812 (= res!227317 (not (isEmpty!3767 input!2705)))))

(declare-fun b!536813 () Bool)

(declare-fun isDefined!1123 (Option!1311) Bool)

(assert (=> b!536813 (= e!323840 (isDefined!1123 lt!222286))))

(declare-fun b!536814 () Bool)

(declare-fun tp!171291 () Bool)

(assert (=> b!536814 (= e!323836 (and e!323851 tp!171291))))

(declare-fun b!536815 () Bool)

(declare-fun e!323833 () Bool)

(assert (=> b!536815 (= e!323833 e!323830)))

(declare-fun res!227315 () Bool)

(assert (=> b!536815 (=> (not res!227315) (not e!323830))))

(declare-fun lt!222293 () tuple2!6284)

(assert (=> b!536815 (= res!227315 (and (= (_1!3406 lt!222293) token!491) (= (_2!3406 lt!222293) suffix!1342)))))

(declare-fun lt!222292 () Option!1311)

(declare-fun get!1956 (Option!1311) tuple2!6284)

(assert (=> b!536815 (= lt!222293 (get!1956 lt!222292))))

(declare-fun b!536816 () Bool)

(declare-fun e!323842 () Bool)

(assert (=> b!536816 (= e!323831 e!323842)))

(declare-fun res!227306 () Bool)

(assert (=> b!536816 (=> res!227306 e!323842)))

(assert (=> b!536816 (= res!227306 (>= lt!222277 lt!222282))))

(assert (=> b!536816 e!323847))

(declare-fun res!227304 () Bool)

(assert (=> b!536816 (=> (not res!227304) (not e!323847))))

(declare-fun maxPrefixOneRule!260 (LexerInterface!847 Rule!1722 List!5220) Option!1311)

(assert (=> b!536816 (= res!227304 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 token!491) lt!222288) (Some!1310 (tuple2!6285 (Token!1659 lt!222284 (rule!1665 token!491) lt!222282 lt!222270) suffix!1342))))))

(declare-fun lt!222283 () Unit!9097)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!12 (LexerInterface!847 List!5221 List!5220 List!5220 List!5220 Rule!1722) Unit!9097)

(assert (=> b!536816 (= lt!222283 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!12 thiss!22590 rules!3103 lt!222270 lt!222288 suffix!1342 (rule!1665 token!491)))))

(assert (=> b!536816 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) input!2705) (Some!1310 (tuple2!6285 (Token!1659 lt!222272 (rule!1665 (_1!3406 (v!16117 lt!222286))) lt!222277 lt!222265) (_2!3406 (v!16117 lt!222286)))))))

(declare-fun lt!222264 () Unit!9097)

(assert (=> b!536816 (= lt!222264 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!12 thiss!22590 rules!3103 lt!222265 input!2705 (_2!3406 (v!16117 lt!222286)) (rule!1665 (_1!3406 (v!16117 lt!222286)))))))

(assert (=> b!536816 e!323845))

(declare-fun res!227308 () Bool)

(assert (=> b!536816 (=> (not res!227308) (not e!323845))))

(assert (=> b!536816 (= res!227308 (= (value!32255 token!491) lt!222284))))

(assert (=> b!536816 (= lt!222284 (apply!1236 (transformation!961 (rule!1665 token!491)) (seqFromList!1159 lt!222270)))))

(assert (=> b!536816 (= suffix!1342 lt!222285)))

(declare-fun lt!222275 () Unit!9097)

(assert (=> b!536816 (= lt!222275 (lemmaSamePrefixThenSameSuffix!330 lt!222270 suffix!1342 lt!222270 lt!222285 lt!222288))))

(assert (=> b!536816 (= lt!222285 (getSuffix!126 lt!222288 lt!222270))))

(assert (=> b!536817 (= e!323829 (and tp!171300 tp!171298))))

(declare-fun b!536818 () Bool)

(declare-fun rulesValidInductive!336 (LexerInterface!847 List!5221) Bool)

(assert (=> b!536818 (= e!323842 (rulesValidInductive!336 thiss!22590 rules!3103))))

(declare-fun b!536819 () Bool)

(assert (=> b!536819 (= e!323841 e!323852)))

(declare-fun res!227307 () Bool)

(assert (=> b!536819 (=> (not res!227307) (not e!323852))))

(assert (=> b!536819 (= res!227307 (= lt!222279 lt!222288))))

(assert (=> b!536819 (= lt!222279 (++!1449 lt!222270 suffix!1342))))

(declare-fun b!536820 () Bool)

(assert (=> b!536820 (= e!323838 e!323833)))

(declare-fun res!227303 () Bool)

(assert (=> b!536820 (=> (not res!227303) (not e!323833))))

(assert (=> b!536820 (= res!227303 (isDefined!1123 lt!222292))))

(assert (=> b!536820 (= lt!222292 (maxPrefix!545 thiss!22590 rules!3103 lt!222288))))

(assert (=> b!536820 (= lt!222288 (++!1449 input!2705 suffix!1342))))

(declare-fun b!536821 () Bool)

(declare-fun tp!171297 () Bool)

(declare-fun inv!21 (TokenValue!985) Bool)

(assert (=> b!536821 (= e!323848 (and (inv!21 (value!32255 token!491)) e!323835 tp!171297))))

(declare-fun b!536822 () Bool)

(declare-fun Unit!9100 () Unit!9097)

(assert (=> b!536822 (= e!323839 Unit!9100)))

(assert (=> b!536822 false))

(assert (=> b!536823 (= e!323849 (and tp!171293 tp!171292))))

(assert (= (and start!49532 res!227305) b!536797))

(assert (= (and b!536797 res!227318) b!536806))

(assert (= (and b!536806 res!227310) b!536812))

(assert (= (and b!536812 res!227317) b!536809))

(assert (= (and b!536809 res!227312) b!536820))

(assert (= (and b!536820 res!227303) b!536815))

(assert (= (and b!536815 res!227315) b!536810))

(assert (= (and b!536810 res!227313) b!536819))

(assert (= (and b!536819 res!227307) b!536802))

(assert (= (and b!536802 c!102047) b!536822))

(assert (= (and b!536802 (not c!102047)) b!536808))

(assert (= (and b!536802 res!227309) b!536807))

(assert (= (and b!536807 res!227302) b!536798))

(assert (= (and b!536802 (not res!227316)) b!536816))

(assert (= (and b!536816 res!227308) b!536811))

(assert (= (and b!536811 res!227314) b!536799))

(assert (= (and b!536816 res!227304) b!536804))

(assert (= (and b!536804 (not res!227311)) b!536813))

(assert (= (and b!536816 (not res!227306)) b!536818))

(assert (= (and start!49532 ((_ is Cons!5210) suffix!1342)) b!536800))

(assert (= b!536805 b!536817))

(assert (= b!536814 b!536805))

(assert (= (and start!49532 ((_ is Cons!5211) rules!3103)) b!536814))

(assert (= b!536803 b!536823))

(assert (= b!536821 b!536803))

(assert (= start!49532 b!536821))

(assert (= (and start!49532 ((_ is Cons!5210) input!2705)) b!536801))

(declare-fun m!783343 () Bool)

(assert (=> b!536811 m!783343))

(declare-fun m!783345 () Bool)

(assert (=> b!536797 m!783345))

(declare-fun m!783347 () Bool)

(assert (=> b!536815 m!783347))

(declare-fun m!783349 () Bool)

(assert (=> b!536805 m!783349))

(declare-fun m!783351 () Bool)

(assert (=> b!536805 m!783351))

(declare-fun m!783353 () Bool)

(assert (=> b!536821 m!783353))

(declare-fun m!783355 () Bool)

(assert (=> b!536810 m!783355))

(declare-fun m!783357 () Bool)

(assert (=> b!536807 m!783357))

(declare-fun m!783359 () Bool)

(assert (=> b!536802 m!783359))

(declare-fun m!783361 () Bool)

(assert (=> b!536802 m!783361))

(declare-fun m!783363 () Bool)

(assert (=> b!536802 m!783363))

(declare-fun m!783365 () Bool)

(assert (=> b!536802 m!783365))

(declare-fun m!783367 () Bool)

(assert (=> b!536802 m!783367))

(declare-fun m!783369 () Bool)

(assert (=> b!536802 m!783369))

(declare-fun m!783371 () Bool)

(assert (=> b!536802 m!783371))

(declare-fun m!783373 () Bool)

(assert (=> b!536802 m!783373))

(declare-fun m!783375 () Bool)

(assert (=> b!536802 m!783375))

(declare-fun m!783377 () Bool)

(assert (=> b!536802 m!783377))

(declare-fun m!783379 () Bool)

(assert (=> b!536802 m!783379))

(declare-fun m!783381 () Bool)

(assert (=> b!536802 m!783381))

(declare-fun m!783383 () Bool)

(assert (=> b!536802 m!783383))

(declare-fun m!783385 () Bool)

(assert (=> b!536802 m!783385))

(declare-fun m!783387 () Bool)

(assert (=> b!536802 m!783387))

(declare-fun m!783389 () Bool)

(assert (=> b!536802 m!783389))

(declare-fun m!783391 () Bool)

(assert (=> b!536802 m!783391))

(declare-fun m!783393 () Bool)

(assert (=> b!536802 m!783393))

(declare-fun m!783395 () Bool)

(assert (=> b!536802 m!783395))

(declare-fun m!783397 () Bool)

(assert (=> b!536802 m!783397))

(assert (=> b!536802 m!783369))

(declare-fun m!783399 () Bool)

(assert (=> b!536802 m!783399))

(assert (=> b!536802 m!783381))

(declare-fun m!783401 () Bool)

(assert (=> b!536802 m!783401))

(declare-fun m!783403 () Bool)

(assert (=> b!536802 m!783403))

(assert (=> b!536802 m!783363))

(declare-fun m!783405 () Bool)

(assert (=> b!536802 m!783405))

(declare-fun m!783407 () Bool)

(assert (=> b!536802 m!783407))

(declare-fun m!783409 () Bool)

(assert (=> b!536802 m!783409))

(declare-fun m!783411 () Bool)

(assert (=> b!536802 m!783411))

(declare-fun m!783413 () Bool)

(assert (=> b!536813 m!783413))

(declare-fun m!783415 () Bool)

(assert (=> b!536806 m!783415))

(declare-fun m!783417 () Bool)

(assert (=> b!536819 m!783417))

(declare-fun m!783419 () Bool)

(assert (=> b!536803 m!783419))

(declare-fun m!783421 () Bool)

(assert (=> b!536803 m!783421))

(declare-fun m!783423 () Bool)

(assert (=> b!536820 m!783423))

(declare-fun m!783425 () Bool)

(assert (=> b!536820 m!783425))

(declare-fun m!783427 () Bool)

(assert (=> b!536820 m!783427))

(declare-fun m!783429 () Bool)

(assert (=> b!536816 m!783429))

(declare-fun m!783431 () Bool)

(assert (=> b!536816 m!783431))

(declare-fun m!783433 () Bool)

(assert (=> b!536816 m!783433))

(declare-fun m!783435 () Bool)

(assert (=> b!536816 m!783435))

(declare-fun m!783437 () Bool)

(assert (=> b!536816 m!783437))

(declare-fun m!783439 () Bool)

(assert (=> b!536816 m!783439))

(declare-fun m!783441 () Bool)

(assert (=> b!536816 m!783441))

(assert (=> b!536816 m!783435))

(declare-fun m!783443 () Bool)

(assert (=> b!536816 m!783443))

(declare-fun m!783445 () Bool)

(assert (=> b!536818 m!783445))

(declare-fun m!783447 () Bool)

(assert (=> start!49532 m!783447))

(declare-fun m!783449 () Bool)

(assert (=> b!536809 m!783449))

(assert (=> b!536809 m!783449))

(declare-fun m!783451 () Bool)

(assert (=> b!536809 m!783451))

(declare-fun m!783453 () Bool)

(assert (=> b!536812 m!783453))

(check-sat (not b!536813) b_and!52513 (not b!536803) (not b!536811) (not b_next!14729) b_and!52509 (not b_next!14731) (not b!536809) (not b!536821) (not b_next!14733) (not b!536806) (not b_next!14735) (not b!536800) (not b!536797) b_and!52511 (not b!536802) (not b!536801) (not start!49532) (not b!536815) (not b!536816) (not b!536810) (not b!536819) (not b!536818) (not b!536820) (not b!536807) tp_is_empty!2945 (not b!536812) b_and!52507 (not b!536805) (not b!536814))
(check-sat b_and!52513 (not b_next!14733) (not b_next!14735) b_and!52511 (not b_next!14729) b_and!52509 (not b_next!14731) b_and!52507)
(get-model)

(declare-fun b!536842 () Bool)

(declare-fun e!323864 () List!5220)

(assert (=> b!536842 (= e!323864 suffix!1342)))

(declare-fun b!536844 () Bool)

(declare-fun res!227335 () Bool)

(declare-fun e!323865 () Bool)

(assert (=> b!536844 (=> (not res!227335) (not e!323865))))

(declare-fun lt!222299 () List!5220)

(assert (=> b!536844 (= res!227335 (= (size!4195 lt!222299) (+ (size!4195 lt!222270) (size!4195 suffix!1342))))))

(declare-fun b!536845 () Bool)

(assert (=> b!536845 (= e!323865 (or (not (= suffix!1342 Nil!5210)) (= lt!222299 lt!222270)))))

(declare-fun b!536843 () Bool)

(assert (=> b!536843 (= e!323864 (Cons!5210 (h!10611 lt!222270) (++!1449 (t!74173 lt!222270) suffix!1342)))))

(declare-fun d!189668 () Bool)

(assert (=> d!189668 e!323865))

(declare-fun res!227336 () Bool)

(assert (=> d!189668 (=> (not res!227336) (not e!323865))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!914 (List!5220) (InoxSet C!3512))

(assert (=> d!189668 (= res!227336 (= (content!914 lt!222299) ((_ map or) (content!914 lt!222270) (content!914 suffix!1342))))))

(assert (=> d!189668 (= lt!222299 e!323864)))

(declare-fun c!102055 () Bool)

(assert (=> d!189668 (= c!102055 ((_ is Nil!5210) lt!222270))))

(assert (=> d!189668 (= (++!1449 lt!222270 suffix!1342) lt!222299)))

(assert (= (and d!189668 c!102055) b!536842))

(assert (= (and d!189668 (not c!102055)) b!536843))

(assert (= (and d!189668 res!227336) b!536844))

(assert (= (and b!536844 res!227335) b!536845))

(declare-fun m!783469 () Bool)

(assert (=> b!536844 m!783469))

(assert (=> b!536844 m!783367))

(declare-fun m!783471 () Bool)

(assert (=> b!536844 m!783471))

(declare-fun m!783473 () Bool)

(assert (=> b!536843 m!783473))

(declare-fun m!783475 () Bool)

(assert (=> d!189668 m!783475))

(declare-fun m!783477 () Bool)

(assert (=> d!189668 m!783477))

(declare-fun m!783479 () Bool)

(assert (=> d!189668 m!783479))

(assert (=> b!536819 d!189668))

(declare-fun d!189690 () Bool)

(declare-fun list!2167 (Conc!1678) List!5220)

(assert (=> d!189690 (= (list!2165 (charsOf!590 token!491)) (list!2167 (c!102049 (charsOf!590 token!491))))))

(declare-fun bs!67368 () Bool)

(assert (= bs!67368 d!189690))

(declare-fun m!783481 () Bool)

(assert (=> bs!67368 m!783481))

(assert (=> b!536809 d!189690))

(declare-fun d!189692 () Bool)

(declare-fun lt!222302 () BalanceConc!3364)

(assert (=> d!189692 (= (list!2165 lt!222302) (originalCharacters!1000 token!491))))

(declare-fun dynLambda!3091 (Int TokenValue!985) BalanceConc!3364)

(assert (=> d!189692 (= lt!222302 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 token!491))) (value!32255 token!491)))))

(assert (=> d!189692 (= (charsOf!590 token!491) lt!222302)))

(declare-fun b_lambda!20711 () Bool)

(assert (=> (not b_lambda!20711) (not d!189692)))

(declare-fun t!74176 () Bool)

(declare-fun tb!47523 () Bool)

(assert (=> (and b!536817 (= (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toChars!1667 (transformation!961 (rule!1665 token!491)))) t!74176) tb!47523))

(declare-fun b!536850 () Bool)

(declare-fun e!323868 () Bool)

(declare-fun tp!171303 () Bool)

(declare-fun inv!6543 (Conc!1678) Bool)

(assert (=> b!536850 (= e!323868 (and (inv!6543 (c!102049 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 token!491))) (value!32255 token!491)))) tp!171303))))

(declare-fun result!53058 () Bool)

(declare-fun inv!6544 (BalanceConc!3364) Bool)

(assert (=> tb!47523 (= result!53058 (and (inv!6544 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 token!491))) (value!32255 token!491))) e!323868))))

(assert (= tb!47523 b!536850))

(declare-fun m!783483 () Bool)

(assert (=> b!536850 m!783483))

(declare-fun m!783485 () Bool)

(assert (=> tb!47523 m!783485))

(assert (=> d!189692 t!74176))

(declare-fun b_and!52515 () Bool)

(assert (= b_and!52509 (and (=> t!74176 result!53058) b_and!52515)))

(declare-fun t!74178 () Bool)

(declare-fun tb!47525 () Bool)

(assert (=> (and b!536823 (= (toChars!1667 (transformation!961 (rule!1665 token!491))) (toChars!1667 (transformation!961 (rule!1665 token!491)))) t!74178) tb!47525))

(declare-fun result!53062 () Bool)

(assert (= result!53062 result!53058))

(assert (=> d!189692 t!74178))

(declare-fun b_and!52517 () Bool)

(assert (= b_and!52513 (and (=> t!74178 result!53062) b_and!52517)))

(declare-fun m!783487 () Bool)

(assert (=> d!189692 m!783487))

(declare-fun m!783489 () Bool)

(assert (=> d!189692 m!783489))

(assert (=> b!536809 d!189692))

(declare-fun d!189694 () Bool)

(declare-fun isEmpty!3769 (Option!1311) Bool)

(assert (=> d!189694 (= (isDefined!1123 lt!222292) (not (isEmpty!3769 lt!222292)))))

(declare-fun bs!67369 () Bool)

(assert (= bs!67369 d!189694))

(declare-fun m!783491 () Bool)

(assert (=> bs!67369 m!783491))

(assert (=> b!536820 d!189694))

(declare-fun b!536950 () Bool)

(declare-fun e!323916 () Option!1311)

(declare-fun call!38218 () Option!1311)

(assert (=> b!536950 (= e!323916 call!38218)))

(declare-fun b!536951 () Bool)

(declare-fun res!227406 () Bool)

(declare-fun e!323917 () Bool)

(assert (=> b!536951 (=> (not res!227406) (not e!323917))))

(declare-fun lt!222343 () Option!1311)

(assert (=> b!536951 (= res!227406 (= (value!32255 (_1!3406 (get!1956 lt!222343))) (apply!1236 (transformation!961 (rule!1665 (_1!3406 (get!1956 lt!222343)))) (seqFromList!1159 (originalCharacters!1000 (_1!3406 (get!1956 lt!222343)))))))))

(declare-fun b!536952 () Bool)

(declare-fun e!323915 () Bool)

(assert (=> b!536952 (= e!323915 e!323917)))

(declare-fun res!227405 () Bool)

(assert (=> b!536952 (=> (not res!227405) (not e!323917))))

(assert (=> b!536952 (= res!227405 (isDefined!1123 lt!222343))))

(declare-fun b!536954 () Bool)

(declare-fun lt!222342 () Option!1311)

(declare-fun lt!222344 () Option!1311)

(assert (=> b!536954 (= e!323916 (ite (and ((_ is None!1310) lt!222342) ((_ is None!1310) lt!222344)) None!1310 (ite ((_ is None!1310) lt!222344) lt!222342 (ite ((_ is None!1310) lt!222342) lt!222344 (ite (>= (size!4194 (_1!3406 (v!16117 lt!222342))) (size!4194 (_1!3406 (v!16117 lt!222344)))) lt!222342 lt!222344)))))))

(assert (=> b!536954 (= lt!222342 call!38218)))

(assert (=> b!536954 (= lt!222344 (maxPrefix!545 thiss!22590 (t!74174 rules!3103) lt!222288))))

(declare-fun b!536955 () Bool)

(declare-fun res!227403 () Bool)

(assert (=> b!536955 (=> (not res!227403) (not e!323917))))

(assert (=> b!536955 (= res!227403 (= (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222343)))) (originalCharacters!1000 (_1!3406 (get!1956 lt!222343)))))))

(declare-fun b!536956 () Bool)

(declare-fun res!227407 () Bool)

(assert (=> b!536956 (=> (not res!227407) (not e!323917))))

(assert (=> b!536956 (= res!227407 (= (++!1449 (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222343)))) (_2!3406 (get!1956 lt!222343))) lt!222288))))

(declare-fun b!536957 () Bool)

(declare-fun res!227401 () Bool)

(assert (=> b!536957 (=> (not res!227401) (not e!323917))))

(assert (=> b!536957 (= res!227401 (< (size!4195 (_2!3406 (get!1956 lt!222343))) (size!4195 lt!222288)))))

(declare-fun bm!38213 () Bool)

(assert (=> bm!38213 (= call!38218 (maxPrefixOneRule!260 thiss!22590 (h!10612 rules!3103) lt!222288))))

(declare-fun b!536958 () Bool)

(declare-fun contains!1207 (List!5221 Rule!1722) Bool)

(assert (=> b!536958 (= e!323917 (contains!1207 rules!3103 (rule!1665 (_1!3406 (get!1956 lt!222343)))))))

(declare-fun d!189696 () Bool)

(assert (=> d!189696 e!323915))

(declare-fun res!227402 () Bool)

(assert (=> d!189696 (=> res!227402 e!323915)))

(assert (=> d!189696 (= res!227402 (isEmpty!3769 lt!222343))))

(assert (=> d!189696 (= lt!222343 e!323916)))

(declare-fun c!102071 () Bool)

(assert (=> d!189696 (= c!102071 (and ((_ is Cons!5211) rules!3103) ((_ is Nil!5211) (t!74174 rules!3103))))))

(declare-fun lt!222341 () Unit!9097)

(declare-fun lt!222345 () Unit!9097)

(assert (=> d!189696 (= lt!222341 lt!222345)))

(assert (=> d!189696 (isPrefix!603 lt!222288 lt!222288)))

(assert (=> d!189696 (= lt!222345 (lemmaIsPrefixRefl!343 lt!222288 lt!222288))))

(assert (=> d!189696 (rulesValidInductive!336 thiss!22590 rules!3103)))

(assert (=> d!189696 (= (maxPrefix!545 thiss!22590 rules!3103 lt!222288) lt!222343)))

(declare-fun b!536953 () Bool)

(declare-fun res!227404 () Bool)

(assert (=> b!536953 (=> (not res!227404) (not e!323917))))

(declare-fun matchR!456 (Regex!1295 List!5220) Bool)

(assert (=> b!536953 (= res!227404 (matchR!456 (regex!961 (rule!1665 (_1!3406 (get!1956 lt!222343)))) (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222343))))))))

(assert (= (and d!189696 c!102071) b!536950))

(assert (= (and d!189696 (not c!102071)) b!536954))

(assert (= (or b!536950 b!536954) bm!38213))

(assert (= (and d!189696 (not res!227402)) b!536952))

(assert (= (and b!536952 res!227405) b!536955))

(assert (= (and b!536955 res!227403) b!536957))

(assert (= (and b!536957 res!227401) b!536956))

(assert (= (and b!536956 res!227407) b!536951))

(assert (= (and b!536951 res!227406) b!536953))

(assert (= (and b!536953 res!227404) b!536958))

(declare-fun m!783589 () Bool)

(assert (=> b!536956 m!783589))

(declare-fun m!783591 () Bool)

(assert (=> b!536956 m!783591))

(assert (=> b!536956 m!783591))

(declare-fun m!783593 () Bool)

(assert (=> b!536956 m!783593))

(assert (=> b!536956 m!783593))

(declare-fun m!783595 () Bool)

(assert (=> b!536956 m!783595))

(declare-fun m!783597 () Bool)

(assert (=> b!536954 m!783597))

(declare-fun m!783599 () Bool)

(assert (=> d!189696 m!783599))

(declare-fun m!783601 () Bool)

(assert (=> d!189696 m!783601))

(declare-fun m!783603 () Bool)

(assert (=> d!189696 m!783603))

(assert (=> d!189696 m!783445))

(assert (=> b!536957 m!783589))

(declare-fun m!783605 () Bool)

(assert (=> b!536957 m!783605))

(declare-fun m!783607 () Bool)

(assert (=> b!536957 m!783607))

(assert (=> b!536953 m!783589))

(assert (=> b!536953 m!783591))

(assert (=> b!536953 m!783591))

(assert (=> b!536953 m!783593))

(assert (=> b!536953 m!783593))

(declare-fun m!783609 () Bool)

(assert (=> b!536953 m!783609))

(declare-fun m!783611 () Bool)

(assert (=> b!536952 m!783611))

(assert (=> b!536958 m!783589))

(declare-fun m!783613 () Bool)

(assert (=> b!536958 m!783613))

(assert (=> b!536951 m!783589))

(declare-fun m!783615 () Bool)

(assert (=> b!536951 m!783615))

(assert (=> b!536951 m!783615))

(declare-fun m!783617 () Bool)

(assert (=> b!536951 m!783617))

(assert (=> b!536955 m!783589))

(assert (=> b!536955 m!783591))

(assert (=> b!536955 m!783591))

(assert (=> b!536955 m!783593))

(declare-fun m!783619 () Bool)

(assert (=> bm!38213 m!783619))

(assert (=> b!536820 d!189696))

(declare-fun b!536959 () Bool)

(declare-fun e!323918 () List!5220)

(assert (=> b!536959 (= e!323918 suffix!1342)))

(declare-fun b!536961 () Bool)

(declare-fun res!227408 () Bool)

(declare-fun e!323919 () Bool)

(assert (=> b!536961 (=> (not res!227408) (not e!323919))))

(declare-fun lt!222346 () List!5220)

(assert (=> b!536961 (= res!227408 (= (size!4195 lt!222346) (+ (size!4195 input!2705) (size!4195 suffix!1342))))))

(declare-fun b!536962 () Bool)

(assert (=> b!536962 (= e!323919 (or (not (= suffix!1342 Nil!5210)) (= lt!222346 input!2705)))))

(declare-fun b!536960 () Bool)

(assert (=> b!536960 (= e!323918 (Cons!5210 (h!10611 input!2705) (++!1449 (t!74173 input!2705) suffix!1342)))))

(declare-fun d!189714 () Bool)

(assert (=> d!189714 e!323919))

(declare-fun res!227409 () Bool)

(assert (=> d!189714 (=> (not res!227409) (not e!323919))))

(assert (=> d!189714 (= res!227409 (= (content!914 lt!222346) ((_ map or) (content!914 input!2705) (content!914 suffix!1342))))))

(assert (=> d!189714 (= lt!222346 e!323918)))

(declare-fun c!102072 () Bool)

(assert (=> d!189714 (= c!102072 ((_ is Nil!5210) input!2705))))

(assert (=> d!189714 (= (++!1449 input!2705 suffix!1342) lt!222346)))

(assert (= (and d!189714 c!102072) b!536959))

(assert (= (and d!189714 (not c!102072)) b!536960))

(assert (= (and d!189714 res!227409) b!536961))

(assert (= (and b!536961 res!227408) b!536962))

(declare-fun m!783621 () Bool)

(assert (=> b!536961 m!783621))

(declare-fun m!783623 () Bool)

(assert (=> b!536961 m!783623))

(assert (=> b!536961 m!783471))

(declare-fun m!783625 () Bool)

(assert (=> b!536960 m!783625))

(declare-fun m!783627 () Bool)

(assert (=> d!189714 m!783627))

(declare-fun m!783629 () Bool)

(assert (=> d!189714 m!783629))

(assert (=> d!189714 m!783479))

(assert (=> b!536820 d!189714))

(declare-fun b!536963 () Bool)

(declare-fun e!323921 () Option!1311)

(declare-fun call!38219 () Option!1311)

(assert (=> b!536963 (= e!323921 call!38219)))

(declare-fun b!536964 () Bool)

(declare-fun res!227415 () Bool)

(declare-fun e!323922 () Bool)

(assert (=> b!536964 (=> (not res!227415) (not e!323922))))

(declare-fun lt!222349 () Option!1311)

(assert (=> b!536964 (= res!227415 (= (value!32255 (_1!3406 (get!1956 lt!222349))) (apply!1236 (transformation!961 (rule!1665 (_1!3406 (get!1956 lt!222349)))) (seqFromList!1159 (originalCharacters!1000 (_1!3406 (get!1956 lt!222349)))))))))

(declare-fun b!536965 () Bool)

(declare-fun e!323920 () Bool)

(assert (=> b!536965 (= e!323920 e!323922)))

(declare-fun res!227414 () Bool)

(assert (=> b!536965 (=> (not res!227414) (not e!323922))))

(assert (=> b!536965 (= res!227414 (isDefined!1123 lt!222349))))

(declare-fun b!536967 () Bool)

(declare-fun lt!222348 () Option!1311)

(declare-fun lt!222350 () Option!1311)

(assert (=> b!536967 (= e!323921 (ite (and ((_ is None!1310) lt!222348) ((_ is None!1310) lt!222350)) None!1310 (ite ((_ is None!1310) lt!222350) lt!222348 (ite ((_ is None!1310) lt!222348) lt!222350 (ite (>= (size!4194 (_1!3406 (v!16117 lt!222348))) (size!4194 (_1!3406 (v!16117 lt!222350)))) lt!222348 lt!222350)))))))

(assert (=> b!536967 (= lt!222348 call!38219)))

(assert (=> b!536967 (= lt!222350 (maxPrefix!545 thiss!22590 (t!74174 rules!3103) input!2705))))

(declare-fun b!536968 () Bool)

(declare-fun res!227412 () Bool)

(assert (=> b!536968 (=> (not res!227412) (not e!323922))))

(assert (=> b!536968 (= res!227412 (= (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222349)))) (originalCharacters!1000 (_1!3406 (get!1956 lt!222349)))))))

(declare-fun b!536969 () Bool)

(declare-fun res!227416 () Bool)

(assert (=> b!536969 (=> (not res!227416) (not e!323922))))

(assert (=> b!536969 (= res!227416 (= (++!1449 (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222349)))) (_2!3406 (get!1956 lt!222349))) input!2705))))

(declare-fun b!536970 () Bool)

(declare-fun res!227410 () Bool)

(assert (=> b!536970 (=> (not res!227410) (not e!323922))))

(assert (=> b!536970 (= res!227410 (< (size!4195 (_2!3406 (get!1956 lt!222349))) (size!4195 input!2705)))))

(declare-fun bm!38214 () Bool)

(assert (=> bm!38214 (= call!38219 (maxPrefixOneRule!260 thiss!22590 (h!10612 rules!3103) input!2705))))

(declare-fun b!536971 () Bool)

(assert (=> b!536971 (= e!323922 (contains!1207 rules!3103 (rule!1665 (_1!3406 (get!1956 lt!222349)))))))

(declare-fun d!189716 () Bool)

(assert (=> d!189716 e!323920))

(declare-fun res!227411 () Bool)

(assert (=> d!189716 (=> res!227411 e!323920)))

(assert (=> d!189716 (= res!227411 (isEmpty!3769 lt!222349))))

(assert (=> d!189716 (= lt!222349 e!323921)))

(declare-fun c!102073 () Bool)

(assert (=> d!189716 (= c!102073 (and ((_ is Cons!5211) rules!3103) ((_ is Nil!5211) (t!74174 rules!3103))))))

(declare-fun lt!222347 () Unit!9097)

(declare-fun lt!222351 () Unit!9097)

(assert (=> d!189716 (= lt!222347 lt!222351)))

(assert (=> d!189716 (isPrefix!603 input!2705 input!2705)))

(assert (=> d!189716 (= lt!222351 (lemmaIsPrefixRefl!343 input!2705 input!2705))))

(assert (=> d!189716 (rulesValidInductive!336 thiss!22590 rules!3103)))

(assert (=> d!189716 (= (maxPrefix!545 thiss!22590 rules!3103 input!2705) lt!222349)))

(declare-fun b!536966 () Bool)

(declare-fun res!227413 () Bool)

(assert (=> b!536966 (=> (not res!227413) (not e!323922))))

(assert (=> b!536966 (= res!227413 (matchR!456 (regex!961 (rule!1665 (_1!3406 (get!1956 lt!222349)))) (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222349))))))))

(assert (= (and d!189716 c!102073) b!536963))

(assert (= (and d!189716 (not c!102073)) b!536967))

(assert (= (or b!536963 b!536967) bm!38214))

(assert (= (and d!189716 (not res!227411)) b!536965))

(assert (= (and b!536965 res!227414) b!536968))

(assert (= (and b!536968 res!227412) b!536970))

(assert (= (and b!536970 res!227410) b!536969))

(assert (= (and b!536969 res!227416) b!536964))

(assert (= (and b!536964 res!227415) b!536966))

(assert (= (and b!536966 res!227413) b!536971))

(declare-fun m!783631 () Bool)

(assert (=> b!536969 m!783631))

(declare-fun m!783633 () Bool)

(assert (=> b!536969 m!783633))

(assert (=> b!536969 m!783633))

(declare-fun m!783635 () Bool)

(assert (=> b!536969 m!783635))

(assert (=> b!536969 m!783635))

(declare-fun m!783637 () Bool)

(assert (=> b!536969 m!783637))

(declare-fun m!783639 () Bool)

(assert (=> b!536967 m!783639))

(declare-fun m!783641 () Bool)

(assert (=> d!189716 m!783641))

(assert (=> d!189716 m!783409))

(assert (=> d!189716 m!783389))

(assert (=> d!189716 m!783445))

(assert (=> b!536970 m!783631))

(declare-fun m!783643 () Bool)

(assert (=> b!536970 m!783643))

(assert (=> b!536970 m!783623))

(assert (=> b!536966 m!783631))

(assert (=> b!536966 m!783633))

(assert (=> b!536966 m!783633))

(assert (=> b!536966 m!783635))

(assert (=> b!536966 m!783635))

(declare-fun m!783645 () Bool)

(assert (=> b!536966 m!783645))

(declare-fun m!783647 () Bool)

(assert (=> b!536965 m!783647))

(assert (=> b!536971 m!783631))

(declare-fun m!783649 () Bool)

(assert (=> b!536971 m!783649))

(assert (=> b!536964 m!783631))

(declare-fun m!783651 () Bool)

(assert (=> b!536964 m!783651))

(assert (=> b!536964 m!783651))

(declare-fun m!783653 () Bool)

(assert (=> b!536964 m!783653))

(assert (=> b!536968 m!783631))

(assert (=> b!536968 m!783633))

(assert (=> b!536968 m!783633))

(assert (=> b!536968 m!783635))

(declare-fun m!783655 () Bool)

(assert (=> bm!38214 m!783655))

(assert (=> b!536810 d!189716))

(declare-fun b!536982 () Bool)

(declare-fun e!323931 () Bool)

(declare-fun inv!17 (TokenValue!985) Bool)

(assert (=> b!536982 (= e!323931 (inv!17 (value!32255 token!491)))))

(declare-fun b!536983 () Bool)

(declare-fun e!323930 () Bool)

(declare-fun inv!15 (TokenValue!985) Bool)

(assert (=> b!536983 (= e!323930 (inv!15 (value!32255 token!491)))))

(declare-fun b!536984 () Bool)

(declare-fun e!323929 () Bool)

(declare-fun inv!16 (TokenValue!985) Bool)

(assert (=> b!536984 (= e!323929 (inv!16 (value!32255 token!491)))))

(declare-fun b!536985 () Bool)

(assert (=> b!536985 (= e!323929 e!323931)))

(declare-fun c!102079 () Bool)

(assert (=> b!536985 (= c!102079 ((_ is IntegerValue!2956) (value!32255 token!491)))))

(declare-fun d!189718 () Bool)

(declare-fun c!102078 () Bool)

(assert (=> d!189718 (= c!102078 ((_ is IntegerValue!2955) (value!32255 token!491)))))

(assert (=> d!189718 (= (inv!21 (value!32255 token!491)) e!323929)))

(declare-fun b!536986 () Bool)

(declare-fun res!227419 () Bool)

(assert (=> b!536986 (=> res!227419 e!323930)))

(assert (=> b!536986 (= res!227419 (not ((_ is IntegerValue!2957) (value!32255 token!491))))))

(assert (=> b!536986 (= e!323931 e!323930)))

(assert (= (and d!189718 c!102078) b!536984))

(assert (= (and d!189718 (not c!102078)) b!536985))

(assert (= (and b!536985 c!102079) b!536982))

(assert (= (and b!536985 (not c!102079)) b!536986))

(assert (= (and b!536986 (not res!227419)) b!536983))

(declare-fun m!783657 () Bool)

(assert (=> b!536982 m!783657))

(declare-fun m!783659 () Bool)

(assert (=> b!536983 m!783659))

(declare-fun m!783661 () Bool)

(assert (=> b!536984 m!783661))

(assert (=> b!536821 d!189718))

(declare-fun d!189720 () Bool)

(declare-fun res!227422 () Bool)

(declare-fun e!323934 () Bool)

(assert (=> d!189720 (=> (not res!227422) (not e!323934))))

(declare-fun rulesValid!344 (LexerInterface!847 List!5221) Bool)

(assert (=> d!189720 (= res!227422 (rulesValid!344 thiss!22590 rules!3103))))

(assert (=> d!189720 (= (rulesInvariant!810 thiss!22590 rules!3103) e!323934)))

(declare-fun b!536989 () Bool)

(declare-datatypes ((List!5223 0))(
  ( (Nil!5213) (Cons!5213 (h!10614 String!6668) (t!74224 List!5223)) )
))
(declare-fun noDuplicateTag!344 (LexerInterface!847 List!5221 List!5223) Bool)

(assert (=> b!536989 (= e!323934 (noDuplicateTag!344 thiss!22590 rules!3103 Nil!5213))))

(assert (= (and d!189720 res!227422) b!536989))

(declare-fun m!783663 () Bool)

(assert (=> d!189720 m!783663))

(declare-fun m!783665 () Bool)

(assert (=> b!536989 m!783665))

(assert (=> b!536806 d!189720))

(declare-fun d!189722 () Bool)

(declare-fun lt!222354 () Int)

(assert (=> d!189722 (>= lt!222354 0)))

(declare-fun e!323937 () Int)

(assert (=> d!189722 (= lt!222354 e!323937)))

(declare-fun c!102082 () Bool)

(assert (=> d!189722 (= c!102082 ((_ is Nil!5210) (originalCharacters!1000 (_1!3406 (v!16117 lt!222286)))))))

(assert (=> d!189722 (= (size!4195 (originalCharacters!1000 (_1!3406 (v!16117 lt!222286)))) lt!222354)))

(declare-fun b!536994 () Bool)

(assert (=> b!536994 (= e!323937 0)))

(declare-fun b!536995 () Bool)

(assert (=> b!536995 (= e!323937 (+ 1 (size!4195 (t!74173 (originalCharacters!1000 (_1!3406 (v!16117 lt!222286)))))))))

(assert (= (and d!189722 c!102082) b!536994))

(assert (= (and d!189722 (not c!102082)) b!536995))

(declare-fun m!783667 () Bool)

(assert (=> b!536995 m!783667))

(assert (=> b!536807 d!189722))

(declare-fun d!189724 () Bool)

(assert (=> d!189724 true))

(declare-fun lt!222393 () Bool)

(declare-fun lambda!15445 () Int)

(declare-fun forall!1518 (List!5221 Int) Bool)

(assert (=> d!189724 (= lt!222393 (forall!1518 rules!3103 lambda!15445))))

(declare-fun e!323978 () Bool)

(assert (=> d!189724 (= lt!222393 e!323978)))

(declare-fun res!227469 () Bool)

(assert (=> d!189724 (=> res!227469 e!323978)))

(assert (=> d!189724 (= res!227469 (not ((_ is Cons!5211) rules!3103)))))

(assert (=> d!189724 (= (rulesValidInductive!336 thiss!22590 rules!3103) lt!222393)))

(declare-fun b!537063 () Bool)

(declare-fun e!323977 () Bool)

(assert (=> b!537063 (= e!323978 e!323977)))

(declare-fun res!227468 () Bool)

(assert (=> b!537063 (=> (not res!227468) (not e!323977))))

(assert (=> b!537063 (= res!227468 (ruleValid!181 thiss!22590 (h!10612 rules!3103)))))

(declare-fun b!537064 () Bool)

(assert (=> b!537064 (= e!323977 (rulesValidInductive!336 thiss!22590 (t!74174 rules!3103)))))

(assert (= (and d!189724 (not res!227469)) b!537063))

(assert (= (and b!537063 res!227468) b!537064))

(declare-fun m!783803 () Bool)

(assert (=> d!189724 m!783803))

(declare-fun m!783805 () Bool)

(assert (=> b!537063 m!783805))

(declare-fun m!783807 () Bool)

(assert (=> b!537064 m!783807))

(assert (=> b!536818 d!189724))

(declare-fun d!189762 () Bool)

(assert (=> d!189762 (= (isEmpty!3766 rules!3103) ((_ is Nil!5211) rules!3103))))

(assert (=> b!536797 d!189762))

(declare-fun d!189764 () Bool)

(assert (=> d!189764 (= (inv!6536 (tag!1223 (rule!1665 token!491))) (= (mod (str.len (value!32229 (tag!1223 (rule!1665 token!491)))) 2) 0))))

(assert (=> b!536803 d!189764))

(declare-fun d!189766 () Bool)

(declare-fun res!227479 () Bool)

(declare-fun e!323988 () Bool)

(assert (=> d!189766 (=> (not res!227479) (not e!323988))))

(declare-fun semiInverseModEq!379 (Int Int) Bool)

(assert (=> d!189766 (= res!227479 (semiInverseModEq!379 (toChars!1667 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 token!491)))))))

(assert (=> d!189766 (= (inv!6540 (transformation!961 (rule!1665 token!491))) e!323988)))

(declare-fun b!537078 () Bool)

(declare-fun equivClasses!362 (Int Int) Bool)

(assert (=> b!537078 (= e!323988 (equivClasses!362 (toChars!1667 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 token!491)))))))

(assert (= (and d!189766 res!227479) b!537078))

(declare-fun m!783831 () Bool)

(assert (=> d!189766 m!783831))

(declare-fun m!783833 () Bool)

(assert (=> b!537078 m!783833))

(assert (=> b!536803 d!189766))

(declare-fun d!189776 () Bool)

(assert (=> d!189776 (= (get!1956 lt!222292) (v!16117 lt!222292))))

(assert (=> b!536815 d!189776))

(declare-fun d!189778 () Bool)

(assert (=> d!189778 (= (inv!6536 (tag!1223 (h!10612 rules!3103))) (= (mod (str.len (value!32229 (tag!1223 (h!10612 rules!3103)))) 2) 0))))

(assert (=> b!536805 d!189778))

(declare-fun d!189780 () Bool)

(declare-fun res!227480 () Bool)

(declare-fun e!323989 () Bool)

(assert (=> d!189780 (=> (not res!227480) (not e!323989))))

(assert (=> d!189780 (= res!227480 (semiInverseModEq!379 (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toValue!1808 (transformation!961 (h!10612 rules!3103)))))))

(assert (=> d!189780 (= (inv!6540 (transformation!961 (h!10612 rules!3103))) e!323989)))

(declare-fun b!537079 () Bool)

(assert (=> b!537079 (= e!323989 (equivClasses!362 (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toValue!1808 (transformation!961 (h!10612 rules!3103)))))))

(assert (= (and d!189780 res!227480) b!537079))

(declare-fun m!783835 () Bool)

(assert (=> d!189780 m!783835))

(declare-fun m!783837 () Bool)

(assert (=> b!537079 m!783837))

(assert (=> b!536805 d!189780))

(declare-fun d!189782 () Bool)

(declare-fun res!227493 () Bool)

(declare-fun e!323998 () Bool)

(assert (=> d!189782 (=> (not res!227493) (not e!323998))))

(assert (=> d!189782 (= res!227493 (not (isEmpty!3767 (originalCharacters!1000 token!491))))))

(assert (=> d!189782 (= (inv!6539 token!491) e!323998)))

(declare-fun b!537092 () Bool)

(declare-fun res!227494 () Bool)

(assert (=> b!537092 (=> (not res!227494) (not e!323998))))

(assert (=> b!537092 (= res!227494 (= (originalCharacters!1000 token!491) (list!2165 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 token!491))) (value!32255 token!491)))))))

(declare-fun b!537093 () Bool)

(assert (=> b!537093 (= e!323998 (= (size!4194 token!491) (size!4195 (originalCharacters!1000 token!491))))))

(assert (= (and d!189782 res!227493) b!537092))

(assert (= (and b!537092 res!227494) b!537093))

(declare-fun b_lambda!20721 () Bool)

(assert (=> (not b_lambda!20721) (not b!537092)))

(assert (=> b!537092 t!74176))

(declare-fun b_and!52535 () Bool)

(assert (= b_and!52515 (and (=> t!74176 result!53058) b_and!52535)))

(assert (=> b!537092 t!74178))

(declare-fun b_and!52537 () Bool)

(assert (= b_and!52517 (and (=> t!74178 result!53062) b_and!52537)))

(declare-fun m!783851 () Bool)

(assert (=> d!189782 m!783851))

(assert (=> b!537092 m!783489))

(assert (=> b!537092 m!783489))

(declare-fun m!783853 () Bool)

(assert (=> b!537092 m!783853))

(assert (=> b!537093 m!783343))

(assert (=> start!49532 d!189782))

(declare-fun d!189792 () Bool)

(declare-fun dynLambda!3093 (Int BalanceConc!3364) TokenValue!985)

(assert (=> d!189792 (= (apply!1236 (transformation!961 (rule!1665 token!491)) (seqFromList!1159 lt!222270)) (dynLambda!3093 (toValue!1808 (transformation!961 (rule!1665 token!491))) (seqFromList!1159 lt!222270)))))

(declare-fun b_lambda!20723 () Bool)

(assert (=> (not b_lambda!20723) (not d!189792)))

(declare-fun tb!47539 () Bool)

(declare-fun t!74192 () Bool)

(assert (=> (and b!536817 (= (toValue!1808 (transformation!961 (h!10612 rules!3103))) (toValue!1808 (transformation!961 (rule!1665 token!491)))) t!74192) tb!47539))

(declare-fun result!53080 () Bool)

(assert (=> tb!47539 (= result!53080 (inv!21 (dynLambda!3093 (toValue!1808 (transformation!961 (rule!1665 token!491))) (seqFromList!1159 lt!222270))))))

(declare-fun m!783861 () Bool)

(assert (=> tb!47539 m!783861))

(assert (=> d!189792 t!74192))

(declare-fun b_and!52539 () Bool)

(assert (= b_and!52507 (and (=> t!74192 result!53080) b_and!52539)))

(declare-fun t!74194 () Bool)

(declare-fun tb!47541 () Bool)

(assert (=> (and b!536823 (= (toValue!1808 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 token!491)))) t!74194) tb!47541))

(declare-fun result!53084 () Bool)

(assert (= result!53084 result!53080))

(assert (=> d!189792 t!74194))

(declare-fun b_and!52541 () Bool)

(assert (= b_and!52511 (and (=> t!74194 result!53084) b_and!52541)))

(assert (=> d!189792 m!783435))

(declare-fun m!783869 () Bool)

(assert (=> d!189792 m!783869))

(assert (=> b!536816 d!189792))

(declare-fun d!189802 () Bool)

(assert (=> d!189802 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 token!491) lt!222288) (Some!1310 (tuple2!6285 (Token!1659 (apply!1236 (transformation!961 (rule!1665 token!491)) (seqFromList!1159 lt!222270)) (rule!1665 token!491) (size!4195 lt!222270) lt!222270) suffix!1342)))))

(declare-fun lt!222421 () Unit!9097)

(declare-fun choose!3789 (LexerInterface!847 List!5221 List!5220 List!5220 List!5220 Rule!1722) Unit!9097)

(assert (=> d!189802 (= lt!222421 (choose!3789 thiss!22590 rules!3103 lt!222270 lt!222288 suffix!1342 (rule!1665 token!491)))))

(assert (=> d!189802 (not (isEmpty!3766 rules!3103))))

(assert (=> d!189802 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!12 thiss!22590 rules!3103 lt!222270 lt!222288 suffix!1342 (rule!1665 token!491)) lt!222421)))

(declare-fun bs!67387 () Bool)

(assert (= bs!67387 d!189802))

(assert (=> bs!67387 m!783435))

(assert (=> bs!67387 m!783443))

(assert (=> bs!67387 m!783367))

(declare-fun m!783923 () Bool)

(assert (=> bs!67387 m!783923))

(assert (=> bs!67387 m!783439))

(assert (=> bs!67387 m!783435))

(assert (=> bs!67387 m!783345))

(assert (=> b!536816 d!189802))

(declare-fun d!189820 () Bool)

(declare-fun lt!222424 () List!5220)

(assert (=> d!189820 (= (++!1449 lt!222270 lt!222424) lt!222288)))

(declare-fun e!324040 () List!5220)

(assert (=> d!189820 (= lt!222424 e!324040)))

(declare-fun c!102098 () Bool)

(assert (=> d!189820 (= c!102098 ((_ is Cons!5210) lt!222270))))

(assert (=> d!189820 (>= (size!4195 lt!222288) (size!4195 lt!222270))))

(assert (=> d!189820 (= (getSuffix!126 lt!222288 lt!222270) lt!222424)))

(declare-fun b!537161 () Bool)

(declare-fun tail!707 (List!5220) List!5220)

(assert (=> b!537161 (= e!324040 (getSuffix!126 (tail!707 lt!222288) (t!74173 lt!222270)))))

(declare-fun b!537162 () Bool)

(assert (=> b!537162 (= e!324040 lt!222288)))

(assert (= (and d!189820 c!102098) b!537161))

(assert (= (and d!189820 (not c!102098)) b!537162))

(declare-fun m!783925 () Bool)

(assert (=> d!189820 m!783925))

(assert (=> d!189820 m!783607))

(assert (=> d!189820 m!783367))

(declare-fun m!783927 () Bool)

(assert (=> b!537161 m!783927))

(assert (=> b!537161 m!783927))

(declare-fun m!783929 () Bool)

(assert (=> b!537161 m!783929))

(assert (=> b!536816 d!189820))

(declare-fun d!189822 () Bool)

(assert (=> d!189822 (= suffix!1342 lt!222285)))

(declare-fun lt!222427 () Unit!9097)

(declare-fun choose!3790 (List!5220 List!5220 List!5220 List!5220 List!5220) Unit!9097)

(assert (=> d!189822 (= lt!222427 (choose!3790 lt!222270 suffix!1342 lt!222270 lt!222285 lt!222288))))

(assert (=> d!189822 (isPrefix!603 lt!222270 lt!222288)))

(assert (=> d!189822 (= (lemmaSamePrefixThenSameSuffix!330 lt!222270 suffix!1342 lt!222270 lt!222285 lt!222288) lt!222427)))

(declare-fun bs!67388 () Bool)

(assert (= bs!67388 d!189822))

(declare-fun m!783931 () Bool)

(assert (=> bs!67388 m!783931))

(declare-fun m!783933 () Bool)

(assert (=> bs!67388 m!783933))

(assert (=> b!536816 d!189822))

(declare-fun d!189824 () Bool)

(assert (=> d!189824 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) input!2705) (Some!1310 (tuple2!6285 (Token!1659 (apply!1236 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (seqFromList!1159 lt!222265)) (rule!1665 (_1!3406 (v!16117 lt!222286))) (size!4195 lt!222265) lt!222265) (_2!3406 (v!16117 lt!222286)))))))

(declare-fun lt!222428 () Unit!9097)

(assert (=> d!189824 (= lt!222428 (choose!3789 thiss!22590 rules!3103 lt!222265 input!2705 (_2!3406 (v!16117 lt!222286)) (rule!1665 (_1!3406 (v!16117 lt!222286)))))))

(assert (=> d!189824 (not (isEmpty!3766 rules!3103))))

(assert (=> d!189824 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!12 thiss!22590 rules!3103 lt!222265 input!2705 (_2!3406 (v!16117 lt!222286)) (rule!1665 (_1!3406 (v!16117 lt!222286)))) lt!222428)))

(declare-fun bs!67389 () Bool)

(assert (= bs!67389 d!189824))

(assert (=> bs!67389 m!783363))

(assert (=> bs!67389 m!783365))

(assert (=> bs!67389 m!783383))

(declare-fun m!783935 () Bool)

(assert (=> bs!67389 m!783935))

(assert (=> bs!67389 m!783441))

(assert (=> bs!67389 m!783363))

(assert (=> bs!67389 m!783345))

(assert (=> b!536816 d!189824))

(declare-fun b!537181 () Bool)

(declare-fun e!324051 () Bool)

(declare-fun e!324052 () Bool)

(assert (=> b!537181 (= e!324051 e!324052)))

(declare-fun res!227532 () Bool)

(assert (=> b!537181 (=> (not res!227532) (not e!324052))))

(declare-fun lt!222441 () Option!1311)

(assert (=> b!537181 (= res!227532 (matchR!456 (regex!961 (rule!1665 token!491)) (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222441))))))))

(declare-fun b!537183 () Bool)

(declare-fun res!227527 () Bool)

(assert (=> b!537183 (=> (not res!227527) (not e!324052))))

(assert (=> b!537183 (= res!227527 (= (rule!1665 (_1!3406 (get!1956 lt!222441))) (rule!1665 token!491)))))

(declare-fun b!537184 () Bool)

(declare-fun e!324050 () Bool)

(declare-datatypes ((tuple2!6288 0))(
  ( (tuple2!6289 (_1!3408 List!5220) (_2!3408 List!5220)) )
))
(declare-fun findLongestMatchInner!125 (Regex!1295 List!5220 Int List!5220 List!5220 Int) tuple2!6288)

(assert (=> b!537184 (= e!324050 (matchR!456 (regex!961 (rule!1665 token!491)) (_1!3408 (findLongestMatchInner!125 (regex!961 (rule!1665 token!491)) Nil!5210 (size!4195 Nil!5210) lt!222288 lt!222288 (size!4195 lt!222288)))))))

(declare-fun b!537185 () Bool)

(declare-fun e!324049 () Option!1311)

(declare-fun lt!222439 () tuple2!6288)

(declare-fun size!4197 (BalanceConc!3364) Int)

(assert (=> b!537185 (= e!324049 (Some!1310 (tuple2!6285 (Token!1659 (apply!1236 (transformation!961 (rule!1665 token!491)) (seqFromList!1159 (_1!3408 lt!222439))) (rule!1665 token!491) (size!4197 (seqFromList!1159 (_1!3408 lt!222439))) (_1!3408 lt!222439)) (_2!3408 lt!222439))))))

(declare-fun lt!222443 () Unit!9097)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!109 (Regex!1295 List!5220) Unit!9097)

(assert (=> b!537185 (= lt!222443 (longestMatchIsAcceptedByMatchOrIsEmpty!109 (regex!961 (rule!1665 token!491)) lt!222288))))

(declare-fun res!227533 () Bool)

(assert (=> b!537185 (= res!227533 (isEmpty!3767 (_1!3408 (findLongestMatchInner!125 (regex!961 (rule!1665 token!491)) Nil!5210 (size!4195 Nil!5210) lt!222288 lt!222288 (size!4195 lt!222288)))))))

(assert (=> b!537185 (=> res!227533 e!324050)))

(assert (=> b!537185 e!324050))

(declare-fun lt!222440 () Unit!9097)

(assert (=> b!537185 (= lt!222440 lt!222443)))

(declare-fun lt!222442 () Unit!9097)

(declare-fun lemmaSemiInverse!106 (TokenValueInjection!1738 BalanceConc!3364) Unit!9097)

(assert (=> b!537185 (= lt!222442 (lemmaSemiInverse!106 (transformation!961 (rule!1665 token!491)) (seqFromList!1159 (_1!3408 lt!222439))))))

(declare-fun b!537186 () Bool)

(declare-fun res!227530 () Bool)

(assert (=> b!537186 (=> (not res!227530) (not e!324052))))

(assert (=> b!537186 (= res!227530 (= (value!32255 (_1!3406 (get!1956 lt!222441))) (apply!1236 (transformation!961 (rule!1665 (_1!3406 (get!1956 lt!222441)))) (seqFromList!1159 (originalCharacters!1000 (_1!3406 (get!1956 lt!222441)))))))))

(declare-fun b!537187 () Bool)

(assert (=> b!537187 (= e!324052 (= (size!4194 (_1!3406 (get!1956 lt!222441))) (size!4195 (originalCharacters!1000 (_1!3406 (get!1956 lt!222441))))))))

(declare-fun b!537188 () Bool)

(declare-fun res!227531 () Bool)

(assert (=> b!537188 (=> (not res!227531) (not e!324052))))

(assert (=> b!537188 (= res!227531 (< (size!4195 (_2!3406 (get!1956 lt!222441))) (size!4195 lt!222288)))))

(declare-fun b!537189 () Bool)

(declare-fun res!227529 () Bool)

(assert (=> b!537189 (=> (not res!227529) (not e!324052))))

(assert (=> b!537189 (= res!227529 (= (++!1449 (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222441)))) (_2!3406 (get!1956 lt!222441))) lt!222288))))

(declare-fun d!189826 () Bool)

(assert (=> d!189826 e!324051))

(declare-fun res!227528 () Bool)

(assert (=> d!189826 (=> res!227528 e!324051)))

(assert (=> d!189826 (= res!227528 (isEmpty!3769 lt!222441))))

(assert (=> d!189826 (= lt!222441 e!324049)))

(declare-fun c!102101 () Bool)

(assert (=> d!189826 (= c!102101 (isEmpty!3767 (_1!3408 lt!222439)))))

(declare-fun findLongestMatch!104 (Regex!1295 List!5220) tuple2!6288)

(assert (=> d!189826 (= lt!222439 (findLongestMatch!104 (regex!961 (rule!1665 token!491)) lt!222288))))

(assert (=> d!189826 (ruleValid!181 thiss!22590 (rule!1665 token!491))))

(assert (=> d!189826 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 token!491) lt!222288) lt!222441)))

(declare-fun b!537182 () Bool)

(assert (=> b!537182 (= e!324049 None!1310)))

(assert (= (and d!189826 c!102101) b!537182))

(assert (= (and d!189826 (not c!102101)) b!537185))

(assert (= (and b!537185 (not res!227533)) b!537184))

(assert (= (and d!189826 (not res!227528)) b!537181))

(assert (= (and b!537181 res!227532) b!537189))

(assert (= (and b!537189 res!227529) b!537188))

(assert (= (and b!537188 res!227531) b!537183))

(assert (= (and b!537183 res!227527) b!537186))

(assert (= (and b!537186 res!227530) b!537187))

(declare-fun m!783937 () Bool)

(assert (=> d!189826 m!783937))

(declare-fun m!783939 () Bool)

(assert (=> d!189826 m!783939))

(declare-fun m!783941 () Bool)

(assert (=> d!189826 m!783941))

(assert (=> d!189826 m!783395))

(declare-fun m!783943 () Bool)

(assert (=> b!537183 m!783943))

(assert (=> b!537187 m!783943))

(declare-fun m!783945 () Bool)

(assert (=> b!537187 m!783945))

(assert (=> b!537186 m!783943))

(declare-fun m!783947 () Bool)

(assert (=> b!537186 m!783947))

(assert (=> b!537186 m!783947))

(declare-fun m!783949 () Bool)

(assert (=> b!537186 m!783949))

(assert (=> b!537189 m!783943))

(declare-fun m!783951 () Bool)

(assert (=> b!537189 m!783951))

(assert (=> b!537189 m!783951))

(declare-fun m!783953 () Bool)

(assert (=> b!537189 m!783953))

(assert (=> b!537189 m!783953))

(declare-fun m!783955 () Bool)

(assert (=> b!537189 m!783955))

(declare-fun m!783957 () Bool)

(assert (=> b!537184 m!783957))

(assert (=> b!537184 m!783607))

(assert (=> b!537184 m!783957))

(assert (=> b!537184 m!783607))

(declare-fun m!783959 () Bool)

(assert (=> b!537184 m!783959))

(declare-fun m!783961 () Bool)

(assert (=> b!537184 m!783961))

(assert (=> b!537188 m!783943))

(declare-fun m!783963 () Bool)

(assert (=> b!537188 m!783963))

(assert (=> b!537188 m!783607))

(declare-fun m!783965 () Bool)

(assert (=> b!537185 m!783965))

(declare-fun m!783967 () Bool)

(assert (=> b!537185 m!783967))

(assert (=> b!537185 m!783965))

(declare-fun m!783969 () Bool)

(assert (=> b!537185 m!783969))

(declare-fun m!783971 () Bool)

(assert (=> b!537185 m!783971))

(assert (=> b!537185 m!783965))

(declare-fun m!783973 () Bool)

(assert (=> b!537185 m!783973))

(assert (=> b!537185 m!783965))

(assert (=> b!537185 m!783957))

(declare-fun m!783975 () Bool)

(assert (=> b!537185 m!783975))

(assert (=> b!537185 m!783957))

(assert (=> b!537185 m!783607))

(assert (=> b!537185 m!783959))

(assert (=> b!537185 m!783607))

(assert (=> b!537181 m!783943))

(assert (=> b!537181 m!783951))

(assert (=> b!537181 m!783951))

(assert (=> b!537181 m!783953))

(assert (=> b!537181 m!783953))

(declare-fun m!783977 () Bool)

(assert (=> b!537181 m!783977))

(assert (=> b!536816 d!189826))

(declare-fun b!537190 () Bool)

(declare-fun e!324055 () Bool)

(declare-fun e!324056 () Bool)

(assert (=> b!537190 (= e!324055 e!324056)))

(declare-fun res!227539 () Bool)

(assert (=> b!537190 (=> (not res!227539) (not e!324056))))

(declare-fun lt!222446 () Option!1311)

(assert (=> b!537190 (= res!227539 (matchR!456 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222446))))))))

(declare-fun b!537192 () Bool)

(declare-fun res!227534 () Bool)

(assert (=> b!537192 (=> (not res!227534) (not e!324056))))

(assert (=> b!537192 (= res!227534 (= (rule!1665 (_1!3406 (get!1956 lt!222446))) (rule!1665 (_1!3406 (v!16117 lt!222286)))))))

(declare-fun b!537193 () Bool)

(declare-fun e!324054 () Bool)

(assert (=> b!537193 (= e!324054 (matchR!456 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (_1!3408 (findLongestMatchInner!125 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) Nil!5210 (size!4195 Nil!5210) input!2705 input!2705 (size!4195 input!2705)))))))

(declare-fun b!537194 () Bool)

(declare-fun e!324053 () Option!1311)

(declare-fun lt!222444 () tuple2!6288)

(assert (=> b!537194 (= e!324053 (Some!1310 (tuple2!6285 (Token!1659 (apply!1236 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (seqFromList!1159 (_1!3408 lt!222444))) (rule!1665 (_1!3406 (v!16117 lt!222286))) (size!4197 (seqFromList!1159 (_1!3408 lt!222444))) (_1!3408 lt!222444)) (_2!3408 lt!222444))))))

(declare-fun lt!222448 () Unit!9097)

(assert (=> b!537194 (= lt!222448 (longestMatchIsAcceptedByMatchOrIsEmpty!109 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) input!2705))))

(declare-fun res!227540 () Bool)

(assert (=> b!537194 (= res!227540 (isEmpty!3767 (_1!3408 (findLongestMatchInner!125 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) Nil!5210 (size!4195 Nil!5210) input!2705 input!2705 (size!4195 input!2705)))))))

(assert (=> b!537194 (=> res!227540 e!324054)))

(assert (=> b!537194 e!324054))

(declare-fun lt!222445 () Unit!9097)

(assert (=> b!537194 (= lt!222445 lt!222448)))

(declare-fun lt!222447 () Unit!9097)

(assert (=> b!537194 (= lt!222447 (lemmaSemiInverse!106 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (seqFromList!1159 (_1!3408 lt!222444))))))

(declare-fun b!537195 () Bool)

(declare-fun res!227537 () Bool)

(assert (=> b!537195 (=> (not res!227537) (not e!324056))))

(assert (=> b!537195 (= res!227537 (= (value!32255 (_1!3406 (get!1956 lt!222446))) (apply!1236 (transformation!961 (rule!1665 (_1!3406 (get!1956 lt!222446)))) (seqFromList!1159 (originalCharacters!1000 (_1!3406 (get!1956 lt!222446)))))))))

(declare-fun b!537196 () Bool)

(assert (=> b!537196 (= e!324056 (= (size!4194 (_1!3406 (get!1956 lt!222446))) (size!4195 (originalCharacters!1000 (_1!3406 (get!1956 lt!222446))))))))

(declare-fun b!537197 () Bool)

(declare-fun res!227538 () Bool)

(assert (=> b!537197 (=> (not res!227538) (not e!324056))))

(assert (=> b!537197 (= res!227538 (< (size!4195 (_2!3406 (get!1956 lt!222446))) (size!4195 input!2705)))))

(declare-fun b!537198 () Bool)

(declare-fun res!227536 () Bool)

(assert (=> b!537198 (=> (not res!227536) (not e!324056))))

(assert (=> b!537198 (= res!227536 (= (++!1449 (list!2165 (charsOf!590 (_1!3406 (get!1956 lt!222446)))) (_2!3406 (get!1956 lt!222446))) input!2705))))

(declare-fun d!189828 () Bool)

(assert (=> d!189828 e!324055))

(declare-fun res!227535 () Bool)

(assert (=> d!189828 (=> res!227535 e!324055)))

(assert (=> d!189828 (= res!227535 (isEmpty!3769 lt!222446))))

(assert (=> d!189828 (= lt!222446 e!324053)))

(declare-fun c!102102 () Bool)

(assert (=> d!189828 (= c!102102 (isEmpty!3767 (_1!3408 lt!222444)))))

(assert (=> d!189828 (= lt!222444 (findLongestMatch!104 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) input!2705))))

(assert (=> d!189828 (ruleValid!181 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))))))

(assert (=> d!189828 (= (maxPrefixOneRule!260 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) input!2705) lt!222446)))

(declare-fun b!537191 () Bool)

(assert (=> b!537191 (= e!324053 None!1310)))

(assert (= (and d!189828 c!102102) b!537191))

(assert (= (and d!189828 (not c!102102)) b!537194))

(assert (= (and b!537194 (not res!227540)) b!537193))

(assert (= (and d!189828 (not res!227535)) b!537190))

(assert (= (and b!537190 res!227539) b!537198))

(assert (= (and b!537198 res!227536) b!537197))

(assert (= (and b!537197 res!227538) b!537192))

(assert (= (and b!537192 res!227534) b!537195))

(assert (= (and b!537195 res!227537) b!537196))

(declare-fun m!783979 () Bool)

(assert (=> d!189828 m!783979))

(declare-fun m!783981 () Bool)

(assert (=> d!189828 m!783981))

(declare-fun m!783983 () Bool)

(assert (=> d!189828 m!783983))

(assert (=> d!189828 m!783379))

(declare-fun m!783985 () Bool)

(assert (=> b!537192 m!783985))

(assert (=> b!537196 m!783985))

(declare-fun m!783987 () Bool)

(assert (=> b!537196 m!783987))

(assert (=> b!537195 m!783985))

(declare-fun m!783989 () Bool)

(assert (=> b!537195 m!783989))

(assert (=> b!537195 m!783989))

(declare-fun m!783991 () Bool)

(assert (=> b!537195 m!783991))

(assert (=> b!537198 m!783985))

(declare-fun m!783993 () Bool)

(assert (=> b!537198 m!783993))

(assert (=> b!537198 m!783993))

(declare-fun m!783995 () Bool)

(assert (=> b!537198 m!783995))

(assert (=> b!537198 m!783995))

(declare-fun m!783997 () Bool)

(assert (=> b!537198 m!783997))

(assert (=> b!537193 m!783957))

(assert (=> b!537193 m!783623))

(assert (=> b!537193 m!783957))

(assert (=> b!537193 m!783623))

(declare-fun m!783999 () Bool)

(assert (=> b!537193 m!783999))

(declare-fun m!784001 () Bool)

(assert (=> b!537193 m!784001))

(assert (=> b!537197 m!783985))

(declare-fun m!784003 () Bool)

(assert (=> b!537197 m!784003))

(assert (=> b!537197 m!783623))

(declare-fun m!784005 () Bool)

(assert (=> b!537194 m!784005))

(declare-fun m!784007 () Bool)

(assert (=> b!537194 m!784007))

(assert (=> b!537194 m!784005))

(declare-fun m!784009 () Bool)

(assert (=> b!537194 m!784009))

(declare-fun m!784011 () Bool)

(assert (=> b!537194 m!784011))

(assert (=> b!537194 m!784005))

(declare-fun m!784013 () Bool)

(assert (=> b!537194 m!784013))

(assert (=> b!537194 m!784005))

(assert (=> b!537194 m!783957))

(declare-fun m!784015 () Bool)

(assert (=> b!537194 m!784015))

(assert (=> b!537194 m!783957))

(assert (=> b!537194 m!783623))

(assert (=> b!537194 m!783999))

(assert (=> b!537194 m!783623))

(assert (=> b!537190 m!783985))

(assert (=> b!537190 m!783993))

(assert (=> b!537190 m!783993))

(assert (=> b!537190 m!783995))

(assert (=> b!537190 m!783995))

(declare-fun m!784017 () Bool)

(assert (=> b!537190 m!784017))

(assert (=> b!536816 d!189828))

(declare-fun d!189830 () Bool)

(declare-fun fromListB!515 (List!5220) BalanceConc!3364)

(assert (=> d!189830 (= (seqFromList!1159 lt!222270) (fromListB!515 lt!222270))))

(declare-fun bs!67390 () Bool)

(assert (= bs!67390 d!189830))

(declare-fun m!784019 () Bool)

(assert (=> bs!67390 m!784019))

(assert (=> b!536816 d!189830))

(declare-fun d!189832 () Bool)

(declare-fun lt!222449 () Int)

(assert (=> d!189832 (>= lt!222449 0)))

(declare-fun e!324057 () Int)

(assert (=> d!189832 (= lt!222449 e!324057)))

(declare-fun c!102103 () Bool)

(assert (=> d!189832 (= c!102103 ((_ is Nil!5210) (originalCharacters!1000 token!491)))))

(assert (=> d!189832 (= (size!4195 (originalCharacters!1000 token!491)) lt!222449)))

(declare-fun b!537199 () Bool)

(assert (=> b!537199 (= e!324057 0)))

(declare-fun b!537200 () Bool)

(assert (=> b!537200 (= e!324057 (+ 1 (size!4195 (t!74173 (originalCharacters!1000 token!491)))))))

(assert (= (and d!189832 c!102103) b!537199))

(assert (= (and d!189832 (not c!102103)) b!537200))

(declare-fun m!784021 () Bool)

(assert (=> b!537200 m!784021))

(assert (=> b!536811 d!189832))

(declare-fun d!189834 () Bool)

(assert (=> d!189834 (= (isEmpty!3767 input!2705) ((_ is Nil!5210) input!2705))))

(assert (=> b!536812 d!189834))

(declare-fun b!537201 () Bool)

(declare-fun e!324058 () List!5220)

(assert (=> b!537201 (= e!324058 (_2!3406 (v!16117 lt!222286)))))

(declare-fun b!537203 () Bool)

(declare-fun res!227541 () Bool)

(declare-fun e!324059 () Bool)

(assert (=> b!537203 (=> (not res!227541) (not e!324059))))

(declare-fun lt!222450 () List!5220)

(assert (=> b!537203 (= res!227541 (= (size!4195 lt!222450) (+ (size!4195 lt!222265) (size!4195 (_2!3406 (v!16117 lt!222286))))))))

(declare-fun b!537204 () Bool)

(assert (=> b!537204 (= e!324059 (or (not (= (_2!3406 (v!16117 lt!222286)) Nil!5210)) (= lt!222450 lt!222265)))))

(declare-fun b!537202 () Bool)

(assert (=> b!537202 (= e!324058 (Cons!5210 (h!10611 lt!222265) (++!1449 (t!74173 lt!222265) (_2!3406 (v!16117 lt!222286)))))))

(declare-fun d!189836 () Bool)

(assert (=> d!189836 e!324059))

(declare-fun res!227542 () Bool)

(assert (=> d!189836 (=> (not res!227542) (not e!324059))))

(assert (=> d!189836 (= res!227542 (= (content!914 lt!222450) ((_ map or) (content!914 lt!222265) (content!914 (_2!3406 (v!16117 lt!222286))))))))

(assert (=> d!189836 (= lt!222450 e!324058)))

(declare-fun c!102104 () Bool)

(assert (=> d!189836 (= c!102104 ((_ is Nil!5210) lt!222265))))

(assert (=> d!189836 (= (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))) lt!222450)))

(assert (= (and d!189836 c!102104) b!537201))

(assert (= (and d!189836 (not c!102104)) b!537202))

(assert (= (and d!189836 res!227542) b!537203))

(assert (= (and b!537203 res!227541) b!537204))

(declare-fun m!784023 () Bool)

(assert (=> b!537203 m!784023))

(assert (=> b!537203 m!783383))

(declare-fun m!784025 () Bool)

(assert (=> b!537203 m!784025))

(declare-fun m!784027 () Bool)

(assert (=> b!537202 m!784027))

(declare-fun m!784029 () Bool)

(assert (=> d!189836 m!784029))

(declare-fun m!784031 () Bool)

(assert (=> d!189836 m!784031))

(declare-fun m!784033 () Bool)

(assert (=> d!189836 m!784033))

(assert (=> b!536802 d!189836))

(declare-fun d!189838 () Bool)

(declare-fun lt!222451 () Int)

(assert (=> d!189838 (>= lt!222451 0)))

(declare-fun e!324060 () Int)

(assert (=> d!189838 (= lt!222451 e!324060)))

(declare-fun c!102105 () Bool)

(assert (=> d!189838 (= c!102105 ((_ is Nil!5210) lt!222270))))

(assert (=> d!189838 (= (size!4195 lt!222270) lt!222451)))

(declare-fun b!537205 () Bool)

(assert (=> b!537205 (= e!324060 0)))

(declare-fun b!537206 () Bool)

(assert (=> b!537206 (= e!324060 (+ 1 (size!4195 (t!74173 lt!222270))))))

(assert (= (and d!189838 c!102105) b!537205))

(assert (= (and d!189838 (not c!102105)) b!537206))

(declare-fun m!784035 () Bool)

(assert (=> b!537206 m!784035))

(assert (=> b!536802 d!189838))

(declare-fun d!189840 () Bool)

(declare-fun lt!222452 () BalanceConc!3364)

(assert (=> d!189840 (= (list!2165 lt!222452) (originalCharacters!1000 (_1!3406 (v!16117 lt!222286))))))

(assert (=> d!189840 (= lt!222452 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (value!32255 (_1!3406 (v!16117 lt!222286)))))))

(assert (=> d!189840 (= (charsOf!590 (_1!3406 (v!16117 lt!222286))) lt!222452)))

(declare-fun b_lambda!20733 () Bool)

(assert (=> (not b_lambda!20733) (not d!189840)))

(declare-fun t!74209 () Bool)

(declare-fun tb!47555 () Bool)

(assert (=> (and b!536817 (= (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74209) tb!47555))

(declare-fun b!537207 () Bool)

(declare-fun e!324061 () Bool)

(declare-fun tp!171345 () Bool)

(assert (=> b!537207 (= e!324061 (and (inv!6543 (c!102049 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (value!32255 (_1!3406 (v!16117 lt!222286)))))) tp!171345))))

(declare-fun result!53104 () Bool)

(assert (=> tb!47555 (= result!53104 (and (inv!6544 (dynLambda!3091 (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (value!32255 (_1!3406 (v!16117 lt!222286))))) e!324061))))

(assert (= tb!47555 b!537207))

(declare-fun m!784037 () Bool)

(assert (=> b!537207 m!784037))

(declare-fun m!784039 () Bool)

(assert (=> tb!47555 m!784039))

(assert (=> d!189840 t!74209))

(declare-fun b_and!52551 () Bool)

(assert (= b_and!52535 (and (=> t!74209 result!53104) b_and!52551)))

(declare-fun tb!47557 () Bool)

(declare-fun t!74211 () Bool)

(assert (=> (and b!536823 (= (toChars!1667 (transformation!961 (rule!1665 token!491))) (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74211) tb!47557))

(declare-fun result!53106 () Bool)

(assert (= result!53106 result!53104))

(assert (=> d!189840 t!74211))

(declare-fun b_and!52553 () Bool)

(assert (= b_and!52537 (and (=> t!74211 result!53106) b_and!52553)))

(declare-fun m!784041 () Bool)

(assert (=> d!189840 m!784041))

(declare-fun m!784043 () Bool)

(assert (=> d!189840 m!784043))

(assert (=> b!536802 d!189840))

(declare-fun b!537216 () Bool)

(declare-fun e!324070 () Bool)

(declare-fun e!324069 () Bool)

(assert (=> b!537216 (= e!324070 e!324069)))

(declare-fun res!227554 () Bool)

(assert (=> b!537216 (=> (not res!227554) (not e!324069))))

(assert (=> b!537216 (= res!227554 (not ((_ is Nil!5210) (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))))))))

(declare-fun b!537217 () Bool)

(declare-fun res!227551 () Bool)

(assert (=> b!537217 (=> (not res!227551) (not e!324069))))

(declare-fun head!1178 (List!5220) C!3512)

(assert (=> b!537217 (= res!227551 (= (head!1178 lt!222265) (head!1178 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))))))))

(declare-fun b!537218 () Bool)

(assert (=> b!537218 (= e!324069 (isPrefix!603 (tail!707 lt!222265) (tail!707 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))))))))

(declare-fun d!189842 () Bool)

(declare-fun e!324068 () Bool)

(assert (=> d!189842 e!324068))

(declare-fun res!227553 () Bool)

(assert (=> d!189842 (=> res!227553 e!324068)))

(declare-fun lt!222455 () Bool)

(assert (=> d!189842 (= res!227553 (not lt!222455))))

(assert (=> d!189842 (= lt!222455 e!324070)))

(declare-fun res!227552 () Bool)

(assert (=> d!189842 (=> res!227552 e!324070)))

(assert (=> d!189842 (= res!227552 ((_ is Nil!5210) lt!222265))))

(assert (=> d!189842 (= (isPrefix!603 lt!222265 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286)))) lt!222455)))

(declare-fun b!537219 () Bool)

(assert (=> b!537219 (= e!324068 (>= (size!4195 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286)))) (size!4195 lt!222265)))))

(assert (= (and d!189842 (not res!227552)) b!537216))

(assert (= (and b!537216 res!227554) b!537217))

(assert (= (and b!537217 res!227551) b!537218))

(assert (= (and d!189842 (not res!227553)) b!537219))

(declare-fun m!784045 () Bool)

(assert (=> b!537217 m!784045))

(assert (=> b!537217 m!783381))

(declare-fun m!784047 () Bool)

(assert (=> b!537217 m!784047))

(declare-fun m!784049 () Bool)

(assert (=> b!537218 m!784049))

(assert (=> b!537218 m!783381))

(declare-fun m!784051 () Bool)

(assert (=> b!537218 m!784051))

(assert (=> b!537218 m!784049))

(assert (=> b!537218 m!784051))

(declare-fun m!784053 () Bool)

(assert (=> b!537218 m!784053))

(assert (=> b!537219 m!783381))

(declare-fun m!784055 () Bool)

(assert (=> b!537219 m!784055))

(assert (=> b!537219 m!783383))

(assert (=> b!536802 d!189842))

(declare-fun d!189844 () Bool)

(declare-fun lt!222456 () List!5220)

(assert (=> d!189844 (= (++!1449 lt!222265 lt!222456) input!2705)))

(declare-fun e!324071 () List!5220)

(assert (=> d!189844 (= lt!222456 e!324071)))

(declare-fun c!102106 () Bool)

(assert (=> d!189844 (= c!102106 ((_ is Cons!5210) lt!222265))))

(assert (=> d!189844 (>= (size!4195 input!2705) (size!4195 lt!222265))))

(assert (=> d!189844 (= (getSuffix!126 input!2705 lt!222265) lt!222456)))

(declare-fun b!537220 () Bool)

(assert (=> b!537220 (= e!324071 (getSuffix!126 (tail!707 input!2705) (t!74173 lt!222265)))))

(declare-fun b!537221 () Bool)

(assert (=> b!537221 (= e!324071 input!2705)))

(assert (= (and d!189844 c!102106) b!537220))

(assert (= (and d!189844 (not c!102106)) b!537221))

(declare-fun m!784057 () Bool)

(assert (=> d!189844 m!784057))

(assert (=> d!189844 m!783623))

(assert (=> d!189844 m!783383))

(declare-fun m!784059 () Bool)

(assert (=> b!537220 m!784059))

(assert (=> b!537220 m!784059))

(declare-fun m!784061 () Bool)

(assert (=> b!537220 m!784061))

(assert (=> b!536802 d!189844))

(declare-fun d!189846 () Bool)

(assert (=> d!189846 (ruleValid!181 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))))))

(declare-fun lt!222459 () Unit!9097)

(declare-fun choose!3793 (LexerInterface!847 Rule!1722 List!5221) Unit!9097)

(assert (=> d!189846 (= lt!222459 (choose!3793 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) rules!3103))))

(assert (=> d!189846 (contains!1207 rules!3103 (rule!1665 (_1!3406 (v!16117 lt!222286))))))

(assert (=> d!189846 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!40 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286))) rules!3103) lt!222459)))

(declare-fun bs!67391 () Bool)

(assert (= bs!67391 d!189846))

(assert (=> bs!67391 m!783379))

(declare-fun m!784063 () Bool)

(assert (=> bs!67391 m!784063))

(declare-fun m!784065 () Bool)

(assert (=> bs!67391 m!784065))

(assert (=> b!536802 d!189846))

(declare-fun b!537222 () Bool)

(declare-fun e!324074 () Bool)

(declare-fun e!324073 () Bool)

(assert (=> b!537222 (= e!324074 e!324073)))

(declare-fun res!227558 () Bool)

(assert (=> b!537222 (=> (not res!227558) (not e!324073))))

(assert (=> b!537222 (= res!227558 (not ((_ is Nil!5210) input!2705)))))

(declare-fun b!537223 () Bool)

(declare-fun res!227555 () Bool)

(assert (=> b!537223 (=> (not res!227555) (not e!324073))))

(assert (=> b!537223 (= res!227555 (= (head!1178 input!2705) (head!1178 input!2705)))))

(declare-fun b!537224 () Bool)

(assert (=> b!537224 (= e!324073 (isPrefix!603 (tail!707 input!2705) (tail!707 input!2705)))))

(declare-fun d!189848 () Bool)

(declare-fun e!324072 () Bool)

(assert (=> d!189848 e!324072))

(declare-fun res!227557 () Bool)

(assert (=> d!189848 (=> res!227557 e!324072)))

(declare-fun lt!222460 () Bool)

(assert (=> d!189848 (= res!227557 (not lt!222460))))

(assert (=> d!189848 (= lt!222460 e!324074)))

(declare-fun res!227556 () Bool)

(assert (=> d!189848 (=> res!227556 e!324074)))

(assert (=> d!189848 (= res!227556 ((_ is Nil!5210) input!2705))))

(assert (=> d!189848 (= (isPrefix!603 input!2705 input!2705) lt!222460)))

(declare-fun b!537225 () Bool)

(assert (=> b!537225 (= e!324072 (>= (size!4195 input!2705) (size!4195 input!2705)))))

(assert (= (and d!189848 (not res!227556)) b!537222))

(assert (= (and b!537222 res!227558) b!537223))

(assert (= (and b!537223 res!227555) b!537224))

(assert (= (and d!189848 (not res!227557)) b!537225))

(declare-fun m!784067 () Bool)

(assert (=> b!537223 m!784067))

(assert (=> b!537223 m!784067))

(assert (=> b!537224 m!784059))

(assert (=> b!537224 m!784059))

(assert (=> b!537224 m!784059))

(assert (=> b!537224 m!784059))

(declare-fun m!784069 () Bool)

(assert (=> b!537224 m!784069))

(assert (=> b!537225 m!783623))

(assert (=> b!537225 m!783623))

(assert (=> b!536802 d!189848))

(declare-fun d!189850 () Bool)

(declare-fun res!227563 () Bool)

(declare-fun e!324077 () Bool)

(assert (=> d!189850 (=> (not res!227563) (not e!324077))))

(declare-fun validRegex!436 (Regex!1295) Bool)

(assert (=> d!189850 (= res!227563 (validRegex!436 (regex!961 (rule!1665 token!491))))))

(assert (=> d!189850 (= (ruleValid!181 thiss!22590 (rule!1665 token!491)) e!324077)))

(declare-fun b!537230 () Bool)

(declare-fun res!227564 () Bool)

(assert (=> b!537230 (=> (not res!227564) (not e!324077))))

(declare-fun nullable!341 (Regex!1295) Bool)

(assert (=> b!537230 (= res!227564 (not (nullable!341 (regex!961 (rule!1665 token!491)))))))

(declare-fun b!537231 () Bool)

(assert (=> b!537231 (= e!324077 (not (= (tag!1223 (rule!1665 token!491)) (String!6669 ""))))))

(assert (= (and d!189850 res!227563) b!537230))

(assert (= (and b!537230 res!227564) b!537231))

(declare-fun m!784071 () Bool)

(assert (=> d!189850 m!784071))

(declare-fun m!784073 () Bool)

(assert (=> b!537230 m!784073))

(assert (=> b!536802 d!189850))

(declare-fun d!189852 () Bool)

(declare-fun lt!222461 () Int)

(assert (=> d!189852 (>= lt!222461 0)))

(declare-fun e!324078 () Int)

(assert (=> d!189852 (= lt!222461 e!324078)))

(declare-fun c!102107 () Bool)

(assert (=> d!189852 (= c!102107 ((_ is Nil!5210) lt!222265))))

(assert (=> d!189852 (= (size!4195 lt!222265) lt!222461)))

(declare-fun b!537232 () Bool)

(assert (=> b!537232 (= e!324078 0)))

(declare-fun b!537233 () Bool)

(assert (=> b!537233 (= e!324078 (+ 1 (size!4195 (t!74173 lt!222265))))))

(assert (= (and d!189852 c!102107) b!537232))

(assert (= (and d!189852 (not c!102107)) b!537233))

(declare-fun m!784075 () Bool)

(assert (=> b!537233 m!784075))

(assert (=> b!536802 d!189852))

(declare-fun d!189854 () Bool)

(declare-fun res!227565 () Bool)

(declare-fun e!324079 () Bool)

(assert (=> d!189854 (=> (not res!227565) (not e!324079))))

(assert (=> d!189854 (= res!227565 (validRegex!436 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))))))

(assert (=> d!189854 (= (ruleValid!181 thiss!22590 (rule!1665 (_1!3406 (v!16117 lt!222286)))) e!324079)))

(declare-fun b!537234 () Bool)

(declare-fun res!227566 () Bool)

(assert (=> b!537234 (=> (not res!227566) (not e!324079))))

(assert (=> b!537234 (= res!227566 (not (nullable!341 (regex!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))))))

(declare-fun b!537235 () Bool)

(assert (=> b!537235 (= e!324079 (not (= (tag!1223 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (String!6669 ""))))))

(assert (= (and d!189854 res!227565) b!537234))

(assert (= (and b!537234 res!227566) b!537235))

(declare-fun m!784077 () Bool)

(assert (=> d!189854 m!784077))

(declare-fun m!784079 () Bool)

(assert (=> b!537234 m!784079))

(assert (=> b!536802 d!189854))

(declare-fun d!189856 () Bool)

(assert (=> d!189856 (and (= lt!222270 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!222464 () Unit!9097)

(declare-fun choose!3794 (List!5220 List!5220 List!5220 List!5220) Unit!9097)

(assert (=> d!189856 (= lt!222464 (choose!3794 lt!222270 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!189856 (= (++!1449 lt!222270 suffix!1342) (++!1449 input!2705 suffix!1342))))

(assert (=> d!189856 (= (lemmaConcatSameAndSameSizesThenSameLists!46 lt!222270 suffix!1342 input!2705 suffix!1342) lt!222464)))

(declare-fun bs!67392 () Bool)

(assert (= bs!67392 d!189856))

(declare-fun m!784081 () Bool)

(assert (=> bs!67392 m!784081))

(assert (=> bs!67392 m!783417))

(assert (=> bs!67392 m!783427))

(assert (=> b!536802 d!189856))

(declare-fun d!189858 () Bool)

(assert (=> d!189858 (= (_2!3406 (v!16117 lt!222286)) lt!222266)))

(declare-fun lt!222465 () Unit!9097)

(assert (=> d!189858 (= lt!222465 (choose!3790 lt!222265 (_2!3406 (v!16117 lt!222286)) lt!222265 lt!222266 input!2705))))

(assert (=> d!189858 (isPrefix!603 lt!222265 input!2705)))

(assert (=> d!189858 (= (lemmaSamePrefixThenSameSuffix!330 lt!222265 (_2!3406 (v!16117 lt!222286)) lt!222265 lt!222266 input!2705) lt!222465)))

(declare-fun bs!67393 () Bool)

(assert (= bs!67393 d!189858))

(declare-fun m!784083 () Bool)

(assert (=> bs!67393 m!784083))

(declare-fun m!784085 () Bool)

(assert (=> bs!67393 m!784085))

(assert (=> b!536802 d!189858))

(declare-fun d!189860 () Bool)

(assert (=> d!189860 (= (size!4194 (_1!3406 (v!16117 lt!222286))) (size!4195 (originalCharacters!1000 (_1!3406 (v!16117 lt!222286)))))))

(declare-fun Unit!9105 () Unit!9097)

(assert (=> d!189860 (= (lemmaCharactersSize!40 (_1!3406 (v!16117 lt!222286))) Unit!9105)))

(declare-fun bs!67394 () Bool)

(assert (= bs!67394 d!189860))

(assert (=> bs!67394 m!783357))

(assert (=> b!536802 d!189860))

(declare-fun b!537236 () Bool)

(declare-fun e!324082 () Bool)

(declare-fun e!324081 () Bool)

(assert (=> b!537236 (= e!324082 e!324081)))

(declare-fun res!227570 () Bool)

(assert (=> b!537236 (=> (not res!227570) (not e!324081))))

(assert (=> b!537236 (= res!227570 (not ((_ is Nil!5210) lt!222279)))))

(declare-fun b!537237 () Bool)

(declare-fun res!227567 () Bool)

(assert (=> b!537237 (=> (not res!227567) (not e!324081))))

(assert (=> b!537237 (= res!227567 (= (head!1178 input!2705) (head!1178 lt!222279)))))

(declare-fun b!537238 () Bool)

(assert (=> b!537238 (= e!324081 (isPrefix!603 (tail!707 input!2705) (tail!707 lt!222279)))))

(declare-fun d!189862 () Bool)

(declare-fun e!324080 () Bool)

(assert (=> d!189862 e!324080))

(declare-fun res!227569 () Bool)

(assert (=> d!189862 (=> res!227569 e!324080)))

(declare-fun lt!222466 () Bool)

(assert (=> d!189862 (= res!227569 (not lt!222466))))

(assert (=> d!189862 (= lt!222466 e!324082)))

(declare-fun res!227568 () Bool)

(assert (=> d!189862 (=> res!227568 e!324082)))

(assert (=> d!189862 (= res!227568 ((_ is Nil!5210) input!2705))))

(assert (=> d!189862 (= (isPrefix!603 input!2705 lt!222279) lt!222466)))

(declare-fun b!537239 () Bool)

(assert (=> b!537239 (= e!324080 (>= (size!4195 lt!222279) (size!4195 input!2705)))))

(assert (= (and d!189862 (not res!227568)) b!537236))

(assert (= (and b!537236 res!227570) b!537237))

(assert (= (and b!537237 res!227567) b!537238))

(assert (= (and d!189862 (not res!227569)) b!537239))

(assert (=> b!537237 m!784067))

(declare-fun m!784087 () Bool)

(assert (=> b!537237 m!784087))

(assert (=> b!537238 m!784059))

(declare-fun m!784089 () Bool)

(assert (=> b!537238 m!784089))

(assert (=> b!537238 m!784059))

(assert (=> b!537238 m!784089))

(declare-fun m!784091 () Bool)

(assert (=> b!537238 m!784091))

(declare-fun m!784093 () Bool)

(assert (=> b!537239 m!784093))

(assert (=> b!537239 m!783623))

(assert (=> b!536802 d!189862))

(declare-fun b!537240 () Bool)

(declare-fun e!324085 () Bool)

(declare-fun e!324084 () Bool)

(assert (=> b!537240 (= e!324085 e!324084)))

(declare-fun res!227574 () Bool)

(assert (=> b!537240 (=> (not res!227574) (not e!324084))))

(assert (=> b!537240 (= res!227574 (not ((_ is Nil!5210) lt!222279)))))

(declare-fun b!537241 () Bool)

(declare-fun res!227571 () Bool)

(assert (=> b!537241 (=> (not res!227571) (not e!324084))))

(assert (=> b!537241 (= res!227571 (= (head!1178 lt!222270) (head!1178 lt!222279)))))

(declare-fun b!537242 () Bool)

(assert (=> b!537242 (= e!324084 (isPrefix!603 (tail!707 lt!222270) (tail!707 lt!222279)))))

(declare-fun d!189864 () Bool)

(declare-fun e!324083 () Bool)

(assert (=> d!189864 e!324083))

(declare-fun res!227573 () Bool)

(assert (=> d!189864 (=> res!227573 e!324083)))

(declare-fun lt!222467 () Bool)

(assert (=> d!189864 (= res!227573 (not lt!222467))))

(assert (=> d!189864 (= lt!222467 e!324085)))

(declare-fun res!227572 () Bool)

(assert (=> d!189864 (=> res!227572 e!324085)))

(assert (=> d!189864 (= res!227572 ((_ is Nil!5210) lt!222270))))

(assert (=> d!189864 (= (isPrefix!603 lt!222270 lt!222279) lt!222467)))

(declare-fun b!537243 () Bool)

(assert (=> b!537243 (= e!324083 (>= (size!4195 lt!222279) (size!4195 lt!222270)))))

(assert (= (and d!189864 (not res!227572)) b!537240))

(assert (= (and b!537240 res!227574) b!537241))

(assert (= (and b!537241 res!227571) b!537242))

(assert (= (and d!189864 (not res!227573)) b!537243))

(declare-fun m!784095 () Bool)

(assert (=> b!537241 m!784095))

(assert (=> b!537241 m!784087))

(declare-fun m!784097 () Bool)

(assert (=> b!537242 m!784097))

(assert (=> b!537242 m!784089))

(assert (=> b!537242 m!784097))

(assert (=> b!537242 m!784089))

(declare-fun m!784099 () Bool)

(assert (=> b!537242 m!784099))

(assert (=> b!537243 m!784093))

(assert (=> b!537243 m!783367))

(assert (=> b!536802 d!189864))

(declare-fun b!537244 () Bool)

(declare-fun e!324088 () Bool)

(declare-fun e!324087 () Bool)

(assert (=> b!537244 (= e!324088 e!324087)))

(declare-fun res!227578 () Bool)

(assert (=> b!537244 (=> (not res!227578) (not e!324087))))

(assert (=> b!537244 (= res!227578 (not ((_ is Nil!5210) lt!222288)))))

(declare-fun b!537245 () Bool)

(declare-fun res!227575 () Bool)

(assert (=> b!537245 (=> (not res!227575) (not e!324087))))

(assert (=> b!537245 (= res!227575 (= (head!1178 input!2705) (head!1178 lt!222288)))))

(declare-fun b!537246 () Bool)

(assert (=> b!537246 (= e!324087 (isPrefix!603 (tail!707 input!2705) (tail!707 lt!222288)))))

(declare-fun d!189866 () Bool)

(declare-fun e!324086 () Bool)

(assert (=> d!189866 e!324086))

(declare-fun res!227577 () Bool)

(assert (=> d!189866 (=> res!227577 e!324086)))

(declare-fun lt!222468 () Bool)

(assert (=> d!189866 (= res!227577 (not lt!222468))))

(assert (=> d!189866 (= lt!222468 e!324088)))

(declare-fun res!227576 () Bool)

(assert (=> d!189866 (=> res!227576 e!324088)))

(assert (=> d!189866 (= res!227576 ((_ is Nil!5210) input!2705))))

(assert (=> d!189866 (= (isPrefix!603 input!2705 lt!222288) lt!222468)))

(declare-fun b!537247 () Bool)

(assert (=> b!537247 (= e!324086 (>= (size!4195 lt!222288) (size!4195 input!2705)))))

(assert (= (and d!189866 (not res!227576)) b!537244))

(assert (= (and b!537244 res!227578) b!537245))

(assert (= (and b!537245 res!227575) b!537246))

(assert (= (and d!189866 (not res!227577)) b!537247))

(assert (=> b!537245 m!784067))

(declare-fun m!784101 () Bool)

(assert (=> b!537245 m!784101))

(assert (=> b!537246 m!784059))

(assert (=> b!537246 m!783927))

(assert (=> b!537246 m!784059))

(assert (=> b!537246 m!783927))

(declare-fun m!784103 () Bool)

(assert (=> b!537246 m!784103))

(assert (=> b!537247 m!783607))

(assert (=> b!537247 m!783623))

(assert (=> b!536802 d!189866))

(declare-fun d!189868 () Bool)

(assert (=> d!189868 (= (seqFromList!1159 lt!222265) (fromListB!515 lt!222265))))

(declare-fun bs!67395 () Bool)

(assert (= bs!67395 d!189868))

(declare-fun m!784105 () Bool)

(assert (=> bs!67395 m!784105))

(assert (=> b!536802 d!189868))

(declare-fun d!189870 () Bool)

(assert (=> d!189870 (ruleValid!181 thiss!22590 (rule!1665 token!491))))

(declare-fun lt!222469 () Unit!9097)

(assert (=> d!189870 (= lt!222469 (choose!3793 thiss!22590 (rule!1665 token!491) rules!3103))))

(assert (=> d!189870 (contains!1207 rules!3103 (rule!1665 token!491))))

(assert (=> d!189870 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!40 thiss!22590 (rule!1665 token!491) rules!3103) lt!222469)))

(declare-fun bs!67396 () Bool)

(assert (= bs!67396 d!189870))

(assert (=> bs!67396 m!783395))

(declare-fun m!784107 () Bool)

(assert (=> bs!67396 m!784107))

(declare-fun m!784109 () Bool)

(assert (=> bs!67396 m!784109))

(assert (=> b!536802 d!189870))

(declare-fun d!189872 () Bool)

(assert (=> d!189872 (isPrefix!603 input!2705 (++!1449 input!2705 suffix!1342))))

(declare-fun lt!222472 () Unit!9097)

(declare-fun choose!3795 (List!5220 List!5220) Unit!9097)

(assert (=> d!189872 (= lt!222472 (choose!3795 input!2705 suffix!1342))))

(assert (=> d!189872 (= (lemmaConcatTwoListThenFirstIsPrefix!454 input!2705 suffix!1342) lt!222472)))

(declare-fun bs!67397 () Bool)

(assert (= bs!67397 d!189872))

(assert (=> bs!67397 m!783427))

(assert (=> bs!67397 m!783427))

(declare-fun m!784111 () Bool)

(assert (=> bs!67397 m!784111))

(declare-fun m!784113 () Bool)

(assert (=> bs!67397 m!784113))

(assert (=> b!536802 d!189872))

(declare-fun d!189874 () Bool)

(assert (=> d!189874 (= (apply!1236 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))) (seqFromList!1159 lt!222265)) (dynLambda!3093 (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (seqFromList!1159 lt!222265)))))

(declare-fun b_lambda!20735 () Bool)

(assert (=> (not b_lambda!20735) (not d!189874)))

(declare-fun tb!47559 () Bool)

(declare-fun t!74213 () Bool)

(assert (=> (and b!536817 (= (toValue!1808 (transformation!961 (h!10612 rules!3103))) (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74213) tb!47559))

(declare-fun result!53108 () Bool)

(assert (=> tb!47559 (= result!53108 (inv!21 (dynLambda!3093 (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (seqFromList!1159 lt!222265))))))

(declare-fun m!784115 () Bool)

(assert (=> tb!47559 m!784115))

(assert (=> d!189874 t!74213))

(declare-fun b_and!52555 () Bool)

(assert (= b_and!52539 (and (=> t!74213 result!53108) b_and!52555)))

(declare-fun tb!47561 () Bool)

(declare-fun t!74215 () Bool)

(assert (=> (and b!536823 (= (toValue!1808 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74215) tb!47561))

(declare-fun result!53110 () Bool)

(assert (= result!53110 result!53108))

(assert (=> d!189874 t!74215))

(declare-fun b_and!52557 () Bool)

(assert (= b_and!52541 (and (=> t!74215 result!53110) b_and!52557)))

(assert (=> d!189874 m!783363))

(declare-fun m!784117 () Bool)

(assert (=> d!189874 m!784117))

(assert (=> b!536802 d!189874))

(declare-fun d!189876 () Bool)

(assert (=> d!189876 (isPrefix!603 input!2705 input!2705)))

(declare-fun lt!222475 () Unit!9097)

(declare-fun choose!3796 (List!5220 List!5220) Unit!9097)

(assert (=> d!189876 (= lt!222475 (choose!3796 input!2705 input!2705))))

(assert (=> d!189876 (= (lemmaIsPrefixRefl!343 input!2705 input!2705) lt!222475)))

(declare-fun bs!67398 () Bool)

(assert (= bs!67398 d!189876))

(assert (=> bs!67398 m!783409))

(declare-fun m!784119 () Bool)

(assert (=> bs!67398 m!784119))

(assert (=> b!536802 d!189876))

(declare-fun d!189878 () Bool)

(assert (=> d!189878 (= (list!2165 (charsOf!590 (_1!3406 (v!16117 lt!222286)))) (list!2167 (c!102049 (charsOf!590 (_1!3406 (v!16117 lt!222286))))))))

(declare-fun bs!67399 () Bool)

(assert (= bs!67399 d!189878))

(declare-fun m!784121 () Bool)

(assert (=> bs!67399 m!784121))

(assert (=> b!536802 d!189878))

(declare-fun d!189880 () Bool)

(assert (=> d!189880 (isPrefix!603 lt!222270 (++!1449 lt!222270 suffix!1342))))

(declare-fun lt!222476 () Unit!9097)

(assert (=> d!189880 (= lt!222476 (choose!3795 lt!222270 suffix!1342))))

(assert (=> d!189880 (= (lemmaConcatTwoListThenFirstIsPrefix!454 lt!222270 suffix!1342) lt!222476)))

(declare-fun bs!67400 () Bool)

(assert (= bs!67400 d!189880))

(assert (=> bs!67400 m!783417))

(assert (=> bs!67400 m!783417))

(declare-fun m!784123 () Bool)

(assert (=> bs!67400 m!784123))

(declare-fun m!784125 () Bool)

(assert (=> bs!67400 m!784125))

(assert (=> b!536802 d!189880))

(declare-fun d!189882 () Bool)

(declare-fun e!324092 () Bool)

(assert (=> d!189882 e!324092))

(declare-fun res!227581 () Bool)

(assert (=> d!189882 (=> (not res!227581) (not e!324092))))

(assert (=> d!189882 (= res!227581 (semiInverseModEq!379 (toChars!1667 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 token!491)))))))

(declare-fun Unit!9106 () Unit!9097)

(assert (=> d!189882 (= (lemmaInv!109 (transformation!961 (rule!1665 token!491))) Unit!9106)))

(declare-fun b!537250 () Bool)

(assert (=> b!537250 (= e!324092 (equivClasses!362 (toChars!1667 (transformation!961 (rule!1665 token!491))) (toValue!1808 (transformation!961 (rule!1665 token!491)))))))

(assert (= (and d!189882 res!227581) b!537250))

(assert (=> d!189882 m!783831))

(assert (=> b!537250 m!783833))

(assert (=> b!536802 d!189882))

(declare-fun d!189884 () Bool)

(assert (=> d!189884 (isPrefix!603 lt!222265 (++!1449 lt!222265 (_2!3406 (v!16117 lt!222286))))))

(declare-fun lt!222477 () Unit!9097)

(assert (=> d!189884 (= lt!222477 (choose!3795 lt!222265 (_2!3406 (v!16117 lt!222286))))))

(assert (=> d!189884 (= (lemmaConcatTwoListThenFirstIsPrefix!454 lt!222265 (_2!3406 (v!16117 lt!222286))) lt!222477)))

(declare-fun bs!67401 () Bool)

(assert (= bs!67401 d!189884))

(assert (=> bs!67401 m!783381))

(assert (=> bs!67401 m!783381))

(assert (=> bs!67401 m!783401))

(declare-fun m!784127 () Bool)

(assert (=> bs!67401 m!784127))

(assert (=> b!536802 d!189884))

(declare-fun d!189886 () Bool)

(declare-fun e!324093 () Bool)

(assert (=> d!189886 e!324093))

(declare-fun res!227582 () Bool)

(assert (=> d!189886 (=> (not res!227582) (not e!324093))))

(assert (=> d!189886 (= res!227582 (semiInverseModEq!379 (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))))))

(declare-fun Unit!9107 () Unit!9097)

(assert (=> d!189886 (= (lemmaInv!109 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) Unit!9107)))

(declare-fun b!537251 () Bool)

(assert (=> b!537251 (= e!324093 (equivClasses!362 (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286))))) (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))))))

(assert (= (and d!189886 res!227582) b!537251))

(declare-fun m!784129 () Bool)

(assert (=> d!189886 m!784129))

(declare-fun m!784131 () Bool)

(assert (=> b!537251 m!784131))

(assert (=> b!536802 d!189886))

(declare-fun d!189888 () Bool)

(assert (=> d!189888 (= (size!4194 token!491) (size!4195 (originalCharacters!1000 token!491)))))

(declare-fun Unit!9108 () Unit!9097)

(assert (=> d!189888 (= (lemmaCharactersSize!40 token!491) Unit!9108)))

(declare-fun bs!67402 () Bool)

(assert (= bs!67402 d!189888))

(assert (=> bs!67402 m!783343))

(assert (=> b!536802 d!189888))

(declare-fun d!189890 () Bool)

(assert (=> d!189890 (= (isDefined!1123 lt!222286) (not (isEmpty!3769 lt!222286)))))

(declare-fun bs!67403 () Bool)

(assert (= bs!67403 d!189890))

(declare-fun m!784133 () Bool)

(assert (=> bs!67403 m!784133))

(assert (=> b!536813 d!189890))

(declare-fun b!537264 () Bool)

(declare-fun e!324096 () Bool)

(declare-fun tp!171357 () Bool)

(assert (=> b!537264 (= e!324096 tp!171357)))

(assert (=> b!536803 (= tp!171296 e!324096)))

(declare-fun b!537265 () Bool)

(declare-fun tp!171356 () Bool)

(declare-fun tp!171358 () Bool)

(assert (=> b!537265 (= e!324096 (and tp!171356 tp!171358))))

(declare-fun b!537262 () Bool)

(assert (=> b!537262 (= e!324096 tp_is_empty!2945)))

(declare-fun b!537263 () Bool)

(declare-fun tp!171360 () Bool)

(declare-fun tp!171359 () Bool)

(assert (=> b!537263 (= e!324096 (and tp!171360 tp!171359))))

(assert (= (and b!536803 ((_ is ElementMatch!1295) (regex!961 (rule!1665 token!491)))) b!537262))

(assert (= (and b!536803 ((_ is Concat!2280) (regex!961 (rule!1665 token!491)))) b!537263))

(assert (= (and b!536803 ((_ is Star!1295) (regex!961 (rule!1665 token!491)))) b!537264))

(assert (= (and b!536803 ((_ is Union!1295) (regex!961 (rule!1665 token!491)))) b!537265))

(declare-fun b!537276 () Bool)

(declare-fun b_free!14725 () Bool)

(declare-fun b_next!14741 () Bool)

(assert (=> b!537276 (= b_free!14725 (not b_next!14741))))

(declare-fun t!74217 () Bool)

(declare-fun tb!47563 () Bool)

(assert (=> (and b!537276 (= (toValue!1808 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toValue!1808 (transformation!961 (rule!1665 token!491)))) t!74217) tb!47563))

(declare-fun result!53116 () Bool)

(assert (= result!53116 result!53080))

(assert (=> d!189792 t!74217))

(declare-fun t!74219 () Bool)

(declare-fun tb!47565 () Bool)

(assert (=> (and b!537276 (= (toValue!1808 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toValue!1808 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74219) tb!47565))

(declare-fun result!53118 () Bool)

(assert (= result!53118 result!53108))

(assert (=> d!189874 t!74219))

(declare-fun b_and!52559 () Bool)

(declare-fun tp!171369 () Bool)

(assert (=> b!537276 (= tp!171369 (and (=> t!74217 result!53116) (=> t!74219 result!53118) b_and!52559))))

(declare-fun b_free!14727 () Bool)

(declare-fun b_next!14743 () Bool)

(assert (=> b!537276 (= b_free!14727 (not b_next!14743))))

(declare-fun t!74221 () Bool)

(declare-fun tb!47567 () Bool)

(assert (=> (and b!537276 (= (toChars!1667 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toChars!1667 (transformation!961 (rule!1665 token!491)))) t!74221) tb!47567))

(declare-fun result!53120 () Bool)

(assert (= result!53120 result!53058))

(assert (=> d!189692 t!74221))

(assert (=> b!537092 t!74221))

(declare-fun tb!47569 () Bool)

(declare-fun t!74223 () Bool)

(assert (=> (and b!537276 (= (toChars!1667 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toChars!1667 (transformation!961 (rule!1665 (_1!3406 (v!16117 lt!222286)))))) t!74223) tb!47569))

(declare-fun result!53122 () Bool)

(assert (= result!53122 result!53104))

(assert (=> d!189840 t!74223))

(declare-fun tp!171371 () Bool)

(declare-fun b_and!52561 () Bool)

(assert (=> b!537276 (= tp!171371 (and (=> t!74221 result!53120) (=> t!74223 result!53122) b_and!52561))))

(declare-fun e!324105 () Bool)

(assert (=> b!537276 (= e!324105 (and tp!171369 tp!171371))))

(declare-fun e!324108 () Bool)

(declare-fun b!537275 () Bool)

(declare-fun tp!171370 () Bool)

(assert (=> b!537275 (= e!324108 (and tp!171370 (inv!6536 (tag!1223 (h!10612 (t!74174 rules!3103)))) (inv!6540 (transformation!961 (h!10612 (t!74174 rules!3103)))) e!324105))))

(declare-fun b!537274 () Bool)

(declare-fun e!324106 () Bool)

(declare-fun tp!171372 () Bool)

(assert (=> b!537274 (= e!324106 (and e!324108 tp!171372))))

(assert (=> b!536814 (= tp!171291 e!324106)))

(assert (= b!537275 b!537276))

(assert (= b!537274 b!537275))

(assert (= (and b!536814 ((_ is Cons!5211) (t!74174 rules!3103))) b!537274))

(declare-fun m!784135 () Bool)

(assert (=> b!537275 m!784135))

(declare-fun m!784137 () Bool)

(assert (=> b!537275 m!784137))

(declare-fun b!537279 () Bool)

(declare-fun e!324109 () Bool)

(declare-fun tp!171374 () Bool)

(assert (=> b!537279 (= e!324109 tp!171374)))

(assert (=> b!536805 (= tp!171295 e!324109)))

(declare-fun b!537280 () Bool)

(declare-fun tp!171373 () Bool)

(declare-fun tp!171375 () Bool)

(assert (=> b!537280 (= e!324109 (and tp!171373 tp!171375))))

(declare-fun b!537277 () Bool)

(assert (=> b!537277 (= e!324109 tp_is_empty!2945)))

(declare-fun b!537278 () Bool)

(declare-fun tp!171377 () Bool)

(declare-fun tp!171376 () Bool)

(assert (=> b!537278 (= e!324109 (and tp!171377 tp!171376))))

(assert (= (and b!536805 ((_ is ElementMatch!1295) (regex!961 (h!10612 rules!3103)))) b!537277))

(assert (= (and b!536805 ((_ is Concat!2280) (regex!961 (h!10612 rules!3103)))) b!537278))

(assert (= (and b!536805 ((_ is Star!1295) (regex!961 (h!10612 rules!3103)))) b!537279))

(assert (= (and b!536805 ((_ is Union!1295) (regex!961 (h!10612 rules!3103)))) b!537280))

(declare-fun b!537285 () Bool)

(declare-fun e!324112 () Bool)

(declare-fun tp!171380 () Bool)

(assert (=> b!537285 (= e!324112 (and tp_is_empty!2945 tp!171380))))

(assert (=> b!536821 (= tp!171297 e!324112)))

(assert (= (and b!536821 ((_ is Cons!5210) (originalCharacters!1000 token!491))) b!537285))

(declare-fun b!537286 () Bool)

(declare-fun e!324113 () Bool)

(declare-fun tp!171381 () Bool)

(assert (=> b!537286 (= e!324113 (and tp_is_empty!2945 tp!171381))))

(assert (=> b!536800 (= tp!171294 e!324113)))

(assert (= (and b!536800 ((_ is Cons!5210) (t!74173 suffix!1342))) b!537286))

(declare-fun b!537287 () Bool)

(declare-fun e!324114 () Bool)

(declare-fun tp!171382 () Bool)

(assert (=> b!537287 (= e!324114 (and tp_is_empty!2945 tp!171382))))

(assert (=> b!536801 (= tp!171299 e!324114)))

(assert (= (and b!536801 ((_ is Cons!5210) (t!74173 input!2705))) b!537287))

(declare-fun b_lambda!20737 () Bool)

(assert (= b_lambda!20723 (or (and b!536817 b_free!14713 (= (toValue!1808 (transformation!961 (h!10612 rules!3103))) (toValue!1808 (transformation!961 (rule!1665 token!491))))) (and b!536823 b_free!14717) (and b!537276 b_free!14725 (= (toValue!1808 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toValue!1808 (transformation!961 (rule!1665 token!491))))) b_lambda!20737)))

(declare-fun b_lambda!20739 () Bool)

(assert (= b_lambda!20721 (or (and b!536817 b_free!14715 (= (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toChars!1667 (transformation!961 (rule!1665 token!491))))) (and b!536823 b_free!14719) (and b!537276 b_free!14727 (= (toChars!1667 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toChars!1667 (transformation!961 (rule!1665 token!491))))) b_lambda!20739)))

(declare-fun b_lambda!20741 () Bool)

(assert (= b_lambda!20711 (or (and b!536817 b_free!14715 (= (toChars!1667 (transformation!961 (h!10612 rules!3103))) (toChars!1667 (transformation!961 (rule!1665 token!491))))) (and b!536823 b_free!14719) (and b!537276 b_free!14727 (= (toChars!1667 (transformation!961 (h!10612 (t!74174 rules!3103)))) (toChars!1667 (transformation!961 (rule!1665 token!491))))) b_lambda!20741)))

(check-sat (not d!189876) (not b!537238) (not b!537078) (not b!536850) (not b!536989) (not b!537197) (not b!537092) (not b!537219) (not b!537278) (not d!189782) (not d!189714) (not b!536955) (not b!537189) (not b!536995) (not b!537200) (not d!189724) (not d!189854) (not b!537196) b_and!52559 (not b!536970) (not d!189694) (not d!189828) (not d!189844) (not b!536961) (not b!537234) (not b_lambda!20737) (not b_lambda!20741) (not b!537245) (not b!537202) (not d!189668) (not d!189880) (not b!537192) (not b!537225) (not b!537194) (not d!189822) (not b!537230) (not d!189830) (not b_next!14733) (not b!537217) (not b!537263) (not b!537233) (not d!189858) (not d!189860) (not b_lambda!20735) (not b!536958) (not b!536843) (not b_next!14735) (not b!537241) (not d!189716) (not d!189766) (not b!537264) (not d!189780) (not b!536971) (not b!537224) (not b!537064) (not b!536951) (not b!537186) (not b!536967) (not b!537287) (not b!536969) (not d!189840) (not d!189872) (not b!537184) (not b!537198) (not d!189870) (not b!537285) (not b!537265) (not b_next!14729) (not d!189692) (not d!189878) (not b!536956) (not b!537193) (not tb!47559) (not d!189886) (not b!537187) (not d!189846) (not b!537063) (not b!536844) (not d!189824) (not bm!38213) (not d!189884) (not b!536966) (not d!189826) (not d!189802) (not b_next!14743) (not b!536952) (not b!536957) (not b!537183) (not b!537250) (not b!537203) b_and!52561 (not b!536960) (not d!189882) (not b!537188) (not b!536964) (not b!537207) (not d!189856) (not tb!47523) (not b!537279) (not b!537220) (not b!537247) (not b!537246) (not b!537181) b_and!52553 (not b!537275) (not b!536968) (not b!537243) (not b!536954) (not b!537190) tp_is_empty!2945 (not b!537195) (not b!537185) (not b_lambda!20733) (not d!189690) (not d!189888) (not b!537242) (not b!537251) (not b_next!14731) (not bm!38214) (not b!537239) (not b!537161) (not b!536984) (not b!537274) (not tb!47555) (not d!189850) (not b!536953) (not b!537079) b_and!52555 (not b!536983) (not b!537206) (not b!537237) b_and!52551 (not b_lambda!20739) (not b!536965) (not d!189836) (not b!537286) (not d!189868) (not b_next!14741) (not b!536982) (not tb!47539) (not d!189696) (not d!189720) (not d!189820) (not b!537280) (not b!537218) b_and!52557 (not b!537093) (not d!189890) (not b!537223))
(check-sat b_and!52559 (not b_next!14733) (not b_next!14735) (not b_next!14729) (not b_next!14743) b_and!52561 b_and!52553 (not b_next!14731) b_and!52555 b_and!52551 (not b_next!14741) b_and!52557)
