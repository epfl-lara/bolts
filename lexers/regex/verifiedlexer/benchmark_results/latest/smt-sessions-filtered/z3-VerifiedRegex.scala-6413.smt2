; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334674 () Bool)

(assert start!334674)

(declare-fun b!3600384 () Bool)

(declare-fun b_free!93161 () Bool)

(declare-fun b_next!93865 () Bool)

(assert (=> b!3600384 (= b_free!93161 (not b_next!93865))))

(declare-fun tp!1101398 () Bool)

(declare-fun b_and!261483 () Bool)

(assert (=> b!3600384 (= tp!1101398 b_and!261483)))

(declare-fun b_free!93163 () Bool)

(declare-fun b_next!93867 () Bool)

(assert (=> b!3600384 (= b_free!93163 (not b_next!93867))))

(declare-fun tp!1101408 () Bool)

(declare-fun b_and!261485 () Bool)

(assert (=> b!3600384 (= tp!1101408 b_and!261485)))

(declare-fun b!3600373 () Bool)

(declare-fun b_free!93165 () Bool)

(declare-fun b_next!93869 () Bool)

(assert (=> b!3600373 (= b_free!93165 (not b_next!93869))))

(declare-fun tp!1101400 () Bool)

(declare-fun b_and!261487 () Bool)

(assert (=> b!3600373 (= tp!1101400 b_and!261487)))

(declare-fun b_free!93167 () Bool)

(declare-fun b_next!93871 () Bool)

(assert (=> b!3600373 (= b_free!93167 (not b_next!93871))))

(declare-fun tp!1101412 () Bool)

(declare-fun b_and!261489 () Bool)

(assert (=> b!3600373 (= tp!1101412 b_and!261489)))

(declare-fun b!3600379 () Bool)

(declare-fun b_free!93169 () Bool)

(declare-fun b_next!93873 () Bool)

(assert (=> b!3600379 (= b_free!93169 (not b_next!93873))))

(declare-fun tp!1101403 () Bool)

(declare-fun b_and!261491 () Bool)

(assert (=> b!3600379 (= tp!1101403 b_and!261491)))

(declare-fun b_free!93171 () Bool)

(declare-fun b_next!93875 () Bool)

(assert (=> b!3600379 (= b_free!93171 (not b_next!93875))))

(declare-fun tp!1101410 () Bool)

(declare-fun b_and!261493 () Bool)

(assert (=> b!3600379 (= tp!1101410 b_and!261493)))

(declare-fun b!3600383 () Bool)

(declare-fun b_free!93173 () Bool)

(declare-fun b_next!93877 () Bool)

(assert (=> b!3600383 (= b_free!93173 (not b_next!93877))))

(declare-fun tp!1101407 () Bool)

(declare-fun b_and!261495 () Bool)

(assert (=> b!3600383 (= tp!1101407 b_and!261495)))

(declare-fun b_free!93175 () Bool)

(declare-fun b_next!93879 () Bool)

(assert (=> b!3600383 (= b_free!93175 (not b_next!93879))))

(declare-fun tp!1101409 () Bool)

(declare-fun b_and!261497 () Bool)

(assert (=> b!3600383 (= tp!1101409 b_and!261497)))

(declare-fun b!3600352 () Bool)

(declare-fun res!1454964 () Bool)

(declare-fun e!2227957 () Bool)

(assert (=> b!3600352 (=> res!1454964 e!2227957)))

(declare-datatypes ((C!20916 0))(
  ( (C!20917 (val!12506 Int)) )
))
(declare-datatypes ((List!37997 0))(
  ( (Nil!37873) (Cons!37873 (h!43293 C!20916) (t!292208 List!37997)) )
))
(declare-fun suffix!1395 () List!37997)

(declare-fun isEmpty!22342 (List!37997) Bool)

(assert (=> b!3600352 (= res!1454964 (isEmpty!22342 suffix!1395))))

(declare-fun b!3600353 () Bool)

(declare-fun e!2227954 () Bool)

(declare-fun e!2227953 () Bool)

(assert (=> b!3600353 (= e!2227954 e!2227953)))

(declare-fun res!1454973 () Bool)

(assert (=> b!3600353 (=> res!1454973 e!2227953)))

(declare-datatypes ((List!37998 0))(
  ( (Nil!37874) (Cons!37874 (h!43294 (_ BitVec 16)) (t!292209 List!37998)) )
))
(declare-datatypes ((TokenValue!5836 0))(
  ( (FloatLiteralValue!11672 (text!41297 List!37998)) (TokenValueExt!5835 (__x!23889 Int)) (Broken!29180 (value!180205 List!37998)) (Object!5959) (End!5836) (Def!5836) (Underscore!5836) (Match!5836) (Else!5836) (Error!5836) (Case!5836) (If!5836) (Extends!5836) (Abstract!5836) (Class!5836) (Val!5836) (DelimiterValue!11672 (del!5896 List!37998)) (KeywordValue!5842 (value!180206 List!37998)) (CommentValue!11672 (value!180207 List!37998)) (WhitespaceValue!11672 (value!180208 List!37998)) (IndentationValue!5836 (value!180209 List!37998)) (String!42513) (Int32!5836) (Broken!29181 (value!180210 List!37998)) (Boolean!5837) (Unit!53908) (OperatorValue!5839 (op!5896 List!37998)) (IdentifierValue!11672 (value!180211 List!37998)) (IdentifierValue!11673 (value!180212 List!37998)) (WhitespaceValue!11673 (value!180213 List!37998)) (True!11672) (False!11672) (Broken!29182 (value!180214 List!37998)) (Broken!29183 (value!180215 List!37998)) (True!11673) (RightBrace!5836) (RightBracket!5836) (Colon!5836) (Null!5836) (Comma!5836) (LeftBracket!5836) (False!11673) (LeftBrace!5836) (ImaginaryLiteralValue!5836 (text!41298 List!37998)) (StringLiteralValue!17508 (value!180216 List!37998)) (EOFValue!5836 (value!180217 List!37998)) (IdentValue!5836 (value!180218 List!37998)) (DelimiterValue!11673 (value!180219 List!37998)) (DedentValue!5836 (value!180220 List!37998)) (NewLineValue!5836 (value!180221 List!37998)) (IntegerValue!17508 (value!180222 (_ BitVec 32)) (text!41299 List!37998)) (IntegerValue!17509 (value!180223 Int) (text!41300 List!37998)) (Times!5836) (Or!5836) (Equal!5836) (Minus!5836) (Broken!29184 (value!180224 List!37998)) (And!5836) (Div!5836) (LessEqual!5836) (Mod!5836) (Concat!16201) (Not!5836) (Plus!5836) (SpaceValue!5836 (value!180225 List!37998)) (IntegerValue!17510 (value!180226 Int) (text!41301 List!37998)) (StringLiteralValue!17509 (text!41302 List!37998)) (FloatLiteralValue!11673 (text!41303 List!37998)) (BytesLiteralValue!5836 (value!180227 List!37998)) (CommentValue!11673 (value!180228 List!37998)) (StringLiteralValue!17510 (value!180229 List!37998)) (ErrorTokenValue!5836 (msg!5897 List!37998)) )
))
(declare-datatypes ((Regex!10365 0))(
  ( (ElementMatch!10365 (c!623120 C!20916)) (Concat!16202 (regOne!21242 Regex!10365) (regTwo!21242 Regex!10365)) (EmptyExpr!10365) (Star!10365 (reg!10694 Regex!10365)) (EmptyLang!10365) (Union!10365 (regOne!21243 Regex!10365) (regTwo!21243 Regex!10365)) )
))
(declare-datatypes ((String!42514 0))(
  ( (String!42515 (value!180230 String)) )
))
(declare-datatypes ((IArray!23067 0))(
  ( (IArray!23068 (innerList!11591 List!37997)) )
))
(declare-datatypes ((Conc!11531 0))(
  ( (Node!11531 (left!29592 Conc!11531) (right!29922 Conc!11531) (csize!23292 Int) (cheight!11742 Int)) (Leaf!17945 (xs!14733 IArray!23067) (csize!23293 Int)) (Empty!11531) )
))
(declare-datatypes ((BalanceConc!22676 0))(
  ( (BalanceConc!22677 (c!623121 Conc!11531)) )
))
(declare-datatypes ((TokenValueInjection!11100 0))(
  ( (TokenValueInjection!11101 (toValue!7890 Int) (toChars!7749 Int)) )
))
(declare-datatypes ((Rule!11012 0))(
  ( (Rule!11013 (regex!5606 Regex!10365) (tag!6296 String!42514) (isSeparator!5606 Bool) (transformation!5606 TokenValueInjection!11100)) )
))
(declare-fun rule!403 () Rule!11012)

(declare-datatypes ((Token!10578 0))(
  ( (Token!10579 (value!180231 TokenValue!5836) (rule!8340 Rule!11012) (size!28860 Int) (originalCharacters!6320 List!37997)) )
))
(declare-datatypes ((tuple2!37764 0))(
  ( (tuple2!37765 (_1!22016 Token!10578) (_2!22016 List!37997)) )
))
(declare-fun lt!1236914 () tuple2!37764)

(assert (=> b!3600353 (= res!1454973 (or (not (isSeparator!5606 rule!403)) (isSeparator!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-datatypes ((Unit!53909 0))(
  ( (Unit!53910) )
))
(declare-fun lt!1236924 () Unit!53909)

(declare-fun e!2227951 () Unit!53909)

(assert (=> b!3600353 (= lt!1236924 e!2227951)))

(declare-fun c!623119 () Bool)

(declare-fun lt!1236919 () Bool)

(assert (=> b!3600353 (= c!623119 lt!1236919)))

(declare-fun lt!1236921 () List!37997)

(declare-fun lt!1236911 () C!20916)

(declare-fun contains!7275 (List!37997 C!20916) Bool)

(assert (=> b!3600353 (= lt!1236919 (not (contains!7275 lt!1236921 lt!1236911)))))

(declare-fun lt!1236900 () List!37997)

(declare-fun head!7548 (List!37997) C!20916)

(assert (=> b!3600353 (= lt!1236911 (head!7548 lt!1236900))))

(declare-fun b!3600354 () Bool)

(declare-fun e!2227959 () Bool)

(declare-fun token!511 () Token!10578)

(declare-fun tp!1101402 () Bool)

(declare-fun e!2227974 () Bool)

(declare-fun inv!51227 (String!42514) Bool)

(declare-fun inv!51230 (TokenValueInjection!11100) Bool)

(assert (=> b!3600354 (= e!2227974 (and tp!1101402 (inv!51227 (tag!6296 (rule!8340 token!511))) (inv!51230 (transformation!5606 (rule!8340 token!511))) e!2227959))))

(declare-fun b!3600355 () Bool)

(declare-fun e!2227969 () Bool)

(declare-fun e!2227948 () Bool)

(assert (=> b!3600355 (= e!2227969 e!2227948)))

(declare-fun res!1454970 () Bool)

(assert (=> b!3600355 (=> res!1454970 e!2227948)))

(declare-fun lt!1236901 () BalanceConc!22676)

(declare-datatypes ((Option!7842 0))(
  ( (None!7841) (Some!7841 (v!37551 tuple2!37764)) )
))
(declare-fun lt!1236926 () Option!7842)

(declare-fun apply!9112 (TokenValueInjection!11100 BalanceConc!22676) TokenValue!5836)

(declare-fun size!28861 (BalanceConc!22676) Int)

(assert (=> b!3600355 (= res!1454970 (not (= lt!1236926 (Some!7841 (tuple2!37765 (Token!10579 (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901) (rule!8340 (_1!22016 lt!1236914)) (size!28861 lt!1236901) lt!1236900) (_2!22016 lt!1236914))))))))

(declare-fun lt!1236904 () Unit!53909)

(declare-fun lemmaCharactersSize!659 (Token!10578) Unit!53909)

(assert (=> b!3600355 (= lt!1236904 (lemmaCharactersSize!659 (_1!22016 lt!1236914)))))

(declare-fun lt!1236896 () Unit!53909)

(declare-fun lemmaEqSameImage!797 (TokenValueInjection!11100 BalanceConc!22676 BalanceConc!22676) Unit!53909)

(declare-fun seqFromList!4159 (List!37997) BalanceConc!22676)

(assert (=> b!3600355 (= lt!1236896 (lemmaEqSameImage!797 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901 (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914)))))))

(declare-fun lt!1236918 () Unit!53909)

(declare-fun lemmaSemiInverse!1363 (TokenValueInjection!11100 BalanceConc!22676) Unit!53909)

(assert (=> b!3600355 (= lt!1236918 (lemmaSemiInverse!1363 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901))))

(declare-fun b!3600356 () Bool)

(declare-fun res!1454953 () Bool)

(declare-fun e!2227973 () Bool)

(assert (=> b!3600356 (=> (not res!1454953) (not e!2227973))))

(declare-fun lt!1236920 () tuple2!37764)

(assert (=> b!3600356 (= res!1454953 (isEmpty!22342 (_2!22016 lt!1236920)))))

(declare-fun b!3600357 () Bool)

(assert (=> b!3600357 (= e!2227953 (not (= lt!1236900 Nil!37873)))))

(declare-fun usedCharacters!820 (Regex!10365) List!37997)

(assert (=> b!3600357 (not (contains!7275 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236911))))

(declare-datatypes ((List!37999 0))(
  ( (Nil!37875) (Cons!37875 (h!43295 Rule!11012) (t!292210 List!37999)) )
))
(declare-fun rules!3307 () List!37999)

(declare-datatypes ((LexerInterface!5195 0))(
  ( (LexerInterfaceExt!5192 (__x!23890 Int)) (Lexer!5193) )
))
(declare-fun thiss!23823 () LexerInterface!5195)

(declare-fun lt!1236916 () Unit!53909)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!324 (LexerInterface!5195 List!37999 List!37999 Rule!11012 Rule!11012 C!20916) Unit!53909)

(assert (=> b!3600357 (= lt!1236916 (lemmaNonSepRuleNotContainsCharContainedInASepRule!324 thiss!23823 rules!3307 rules!3307 (rule!8340 (_1!22016 lt!1236914)) rule!403 lt!1236911))))

(declare-fun b!3600358 () Bool)

(declare-fun res!1454967 () Bool)

(declare-fun e!2227965 () Bool)

(assert (=> b!3600358 (=> (not res!1454967) (not e!2227965))))

(declare-fun isEmpty!22343 (List!37999) Bool)

(assert (=> b!3600358 (= res!1454967 (not (isEmpty!22343 rules!3307)))))

(declare-fun b!3600359 () Bool)

(declare-fun Unit!53911 () Unit!53909)

(assert (=> b!3600359 (= e!2227951 Unit!53911)))

(declare-fun b!3600360 () Bool)

(declare-fun e!2227950 () Bool)

(declare-fun tp!1101401 () Bool)

(declare-fun e!2227960 () Bool)

(assert (=> b!3600360 (= e!2227960 (and tp!1101401 (inv!51227 (tag!6296 rule!403)) (inv!51230 (transformation!5606 rule!403)) e!2227950))))

(declare-fun e!2227968 () Bool)

(declare-fun b!3600361 () Bool)

(declare-fun e!2227958 () Bool)

(declare-fun tp!1101406 () Bool)

(assert (=> b!3600361 (= e!2227968 (and tp!1101406 (inv!51227 (tag!6296 (h!43295 rules!3307))) (inv!51230 (transformation!5606 (h!43295 rules!3307))) e!2227958))))

(declare-fun b!3600362 () Bool)

(declare-fun e!2227949 () Bool)

(declare-fun tp!1101404 () Bool)

(declare-fun inv!21 (TokenValue!5836) Bool)

(assert (=> b!3600362 (= e!2227949 (and (inv!21 (value!180231 token!511)) e!2227974 tp!1101404))))

(declare-fun b!3600363 () Bool)

(declare-fun res!1454961 () Bool)

(assert (=> b!3600363 (=> (not res!1454961) (not e!2227965))))

(declare-fun contains!7276 (List!37999 Rule!11012) Bool)

(assert (=> b!3600363 (= res!1454961 (contains!7276 rules!3307 rule!403))))

(declare-fun b!3600364 () Bool)

(declare-fun res!1454957 () Bool)

(assert (=> b!3600364 (=> (not res!1454957) (not e!2227965))))

(declare-fun rulesInvariant!4592 (LexerInterface!5195 List!37999) Bool)

(assert (=> b!3600364 (= res!1454957 (rulesInvariant!4592 thiss!23823 rules!3307))))

(declare-fun b!3600365 () Bool)

(declare-fun res!1454963 () Bool)

(assert (=> b!3600365 (=> (not res!1454963) (not e!2227965))))

(declare-fun anOtherTypeRule!33 () Rule!11012)

(assert (=> b!3600365 (= res!1454963 (contains!7276 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2227955 () Bool)

(declare-fun b!3600366 () Bool)

(declare-fun e!2227956 () Bool)

(declare-fun tp!1101411 () Bool)

(assert (=> b!3600366 (= e!2227955 (and tp!1101411 (inv!51227 (tag!6296 anOtherTypeRule!33)) (inv!51230 (transformation!5606 anOtherTypeRule!33)) e!2227956))))

(declare-fun b!3600367 () Bool)

(declare-fun res!1454958 () Bool)

(assert (=> b!3600367 (=> res!1454958 e!2227969)))

(declare-fun matchR!4934 (Regex!10365 List!37997) Bool)

(assert (=> b!3600367 (= res!1454958 (not (matchR!4934 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236900)))))

(declare-fun b!3600368 () Bool)

(declare-fun res!1454962 () Bool)

(assert (=> b!3600368 (=> (not res!1454962) (not e!2227973))))

(assert (=> b!3600368 (= res!1454962 (= (rule!8340 token!511) rule!403))))

(declare-fun b!3600369 () Bool)

(declare-fun e!2227947 () Bool)

(assert (=> b!3600369 (= e!2227965 e!2227947)))

(declare-fun res!1454974 () Bool)

(assert (=> b!3600369 (=> (not res!1454974) (not e!2227947))))

(declare-fun lt!1236925 () Option!7842)

(declare-fun isDefined!6074 (Option!7842) Bool)

(assert (=> b!3600369 (= res!1454974 (isDefined!6074 lt!1236925))))

(declare-fun lt!1236907 () List!37997)

(declare-fun maxPrefix!2729 (LexerInterface!5195 List!37999 List!37997) Option!7842)

(assert (=> b!3600369 (= lt!1236925 (maxPrefix!2729 thiss!23823 rules!3307 lt!1236907))))

(declare-fun list!13950 (BalanceConc!22676) List!37997)

(declare-fun charsOf!3620 (Token!10578) BalanceConc!22676)

(assert (=> b!3600369 (= lt!1236907 (list!13950 (charsOf!3620 token!511)))))

(declare-fun b!3600370 () Bool)

(declare-fun e!2227970 () Bool)

(declare-fun lt!1236898 () Rule!11012)

(assert (=> b!3600370 (= e!2227970 (= (rule!8340 (_1!22016 lt!1236914)) lt!1236898))))

(declare-fun b!3600371 () Bool)

(declare-fun e!2227967 () Bool)

(assert (=> b!3600371 (= e!2227967 e!2227969)))

(declare-fun res!1454954 () Bool)

(assert (=> b!3600371 (=> res!1454954 e!2227969)))

(declare-fun lt!1236902 () List!37997)

(declare-fun isPrefix!2969 (List!37997 List!37997) Bool)

(assert (=> b!3600371 (= res!1454954 (not (isPrefix!2969 lt!1236900 lt!1236902)))))

(declare-fun ++!9422 (List!37997 List!37997) List!37997)

(assert (=> b!3600371 (isPrefix!2969 lt!1236900 (++!9422 lt!1236900 (_2!22016 lt!1236914)))))

(declare-fun lt!1236908 () Unit!53909)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1890 (List!37997 List!37997) Unit!53909)

(assert (=> b!3600371 (= lt!1236908 (lemmaConcatTwoListThenFirstIsPrefix!1890 lt!1236900 (_2!22016 lt!1236914)))))

(assert (=> b!3600371 (= lt!1236900 (list!13950 lt!1236901))))

(assert (=> b!3600371 (= lt!1236901 (charsOf!3620 (_1!22016 lt!1236914)))))

(declare-fun e!2227964 () Bool)

(assert (=> b!3600371 e!2227964))

(declare-fun res!1454966 () Bool)

(assert (=> b!3600371 (=> (not res!1454966) (not e!2227964))))

(declare-datatypes ((Option!7843 0))(
  ( (None!7842) (Some!7842 (v!37552 Rule!11012)) )
))
(declare-fun lt!1236923 () Option!7843)

(declare-fun isDefined!6075 (Option!7843) Bool)

(assert (=> b!3600371 (= res!1454966 (isDefined!6075 lt!1236923))))

(declare-fun getRuleFromTag!1212 (LexerInterface!5195 List!37999 String!42514) Option!7843)

(assert (=> b!3600371 (= lt!1236923 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun lt!1236905 () Unit!53909)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1212 (LexerInterface!5195 List!37999 List!37997 Token!10578) Unit!53909)

(assert (=> b!3600371 (= lt!1236905 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1212 thiss!23823 rules!3307 lt!1236902 (_1!22016 lt!1236914)))))

(declare-fun get!12255 (Option!7842) tuple2!37764)

(assert (=> b!3600371 (= lt!1236914 (get!12255 lt!1236926))))

(declare-fun lt!1236915 () Unit!53909)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!875 (LexerInterface!5195 List!37999 List!37997 List!37997) Unit!53909)

(assert (=> b!3600371 (= lt!1236915 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!875 thiss!23823 rules!3307 lt!1236907 suffix!1395))))

(assert (=> b!3600371 (= lt!1236926 (maxPrefix!2729 thiss!23823 rules!3307 lt!1236902))))

(assert (=> b!3600371 (isPrefix!2969 lt!1236907 lt!1236902)))

(declare-fun lt!1236922 () Unit!53909)

(assert (=> b!3600371 (= lt!1236922 (lemmaConcatTwoListThenFirstIsPrefix!1890 lt!1236907 suffix!1395))))

(assert (=> b!3600371 (= lt!1236902 (++!9422 lt!1236907 suffix!1395))))

(declare-fun res!1454969 () Bool)

(assert (=> start!334674 (=> (not res!1454969) (not e!2227965))))

(get-info :version)

(assert (=> start!334674 (= res!1454969 ((_ is Lexer!5193) thiss!23823))))

(assert (=> start!334674 e!2227965))

(declare-fun e!2227963 () Bool)

(assert (=> start!334674 e!2227963))

(declare-fun e!2227966 () Bool)

(assert (=> start!334674 e!2227966))

(assert (=> start!334674 true))

(declare-fun inv!51231 (Token!10578) Bool)

(assert (=> start!334674 (and (inv!51231 token!511) e!2227949)))

(assert (=> start!334674 e!2227960))

(assert (=> start!334674 e!2227955))

(declare-fun b!3600372 () Bool)

(declare-fun res!1454968 () Bool)

(assert (=> b!3600372 (=> res!1454968 e!2227953)))

(assert (=> b!3600372 (= res!1454968 lt!1236919)))

(assert (=> b!3600373 (= e!2227950 (and tp!1101400 tp!1101412))))

(declare-fun b!3600374 () Bool)

(assert (=> b!3600374 (= e!2227964 e!2227970)))

(declare-fun res!1454956 () Bool)

(assert (=> b!3600374 (=> (not res!1454956) (not e!2227970))))

(assert (=> b!3600374 (= res!1454956 (matchR!4934 (regex!5606 lt!1236898) (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))))))

(declare-fun get!12256 (Option!7843) Rule!11012)

(assert (=> b!3600374 (= lt!1236898 (get!12256 lt!1236923))))

(declare-fun b!3600375 () Bool)

(declare-fun tp_is_empty!17813 () Bool)

(declare-fun tp!1101405 () Bool)

(assert (=> b!3600375 (= e!2227966 (and tp_is_empty!17813 tp!1101405))))

(declare-fun b!3600376 () Bool)

(assert (=> b!3600376 (= e!2227948 e!2227954)))

(declare-fun res!1454976 () Bool)

(assert (=> b!3600376 (=> res!1454976 e!2227954)))

(declare-fun lt!1236910 () Option!7842)

(declare-fun lt!1236912 () List!37997)

(assert (=> b!3600376 (= res!1454976 (or (not (= lt!1236912 (_2!22016 lt!1236914))) (not (= lt!1236910 (Some!7841 (tuple2!37765 (_1!22016 lt!1236914) lt!1236912))))))))

(assert (=> b!3600376 (= (_2!22016 lt!1236914) lt!1236912)))

(declare-fun lt!1236903 () Unit!53909)

(declare-fun lemmaSamePrefixThenSameSuffix!1324 (List!37997 List!37997 List!37997 List!37997 List!37997) Unit!53909)

(assert (=> b!3600376 (= lt!1236903 (lemmaSamePrefixThenSameSuffix!1324 lt!1236900 (_2!22016 lt!1236914) lt!1236900 lt!1236912 lt!1236902))))

(declare-fun getSuffix!1544 (List!37997 List!37997) List!37997)

(assert (=> b!3600376 (= lt!1236912 (getSuffix!1544 lt!1236902 lt!1236900))))

(declare-fun lt!1236897 () TokenValue!5836)

(declare-fun lt!1236917 () Int)

(assert (=> b!3600376 (= lt!1236910 (Some!7841 (tuple2!37765 (Token!10579 lt!1236897 (rule!8340 (_1!22016 lt!1236914)) lt!1236917 lt!1236900) (_2!22016 lt!1236914))))))

(declare-fun maxPrefixOneRule!1873 (LexerInterface!5195 Rule!11012 List!37997) Option!7842)

(assert (=> b!3600376 (= lt!1236910 (maxPrefixOneRule!1873 thiss!23823 (rule!8340 (_1!22016 lt!1236914)) lt!1236902))))

(declare-fun size!28862 (List!37997) Int)

(assert (=> b!3600376 (= lt!1236917 (size!28862 lt!1236900))))

(assert (=> b!3600376 (= lt!1236897 (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) (seqFromList!4159 lt!1236900)))))

(declare-fun lt!1236909 () Unit!53909)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!945 (LexerInterface!5195 List!37999 List!37997 List!37997 List!37997 Rule!11012) Unit!53909)

(assert (=> b!3600376 (= lt!1236909 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!945 thiss!23823 rules!3307 lt!1236900 lt!1236902 (_2!22016 lt!1236914) (rule!8340 (_1!22016 lt!1236914))))))

(declare-fun b!3600377 () Bool)

(declare-fun tp!1101399 () Bool)

(assert (=> b!3600377 (= e!2227963 (and e!2227968 tp!1101399))))

(declare-fun b!3600378 () Bool)

(declare-fun res!1454965 () Bool)

(assert (=> b!3600378 (=> res!1454965 e!2227967)))

(declare-fun lt!1236906 () C!20916)

(assert (=> b!3600378 (= res!1454965 (not (contains!7275 (usedCharacters!820 (regex!5606 anOtherTypeRule!33)) lt!1236906)))))

(assert (=> b!3600379 (= e!2227956 (and tp!1101403 tp!1101410))))

(declare-fun b!3600380 () Bool)

(declare-fun res!1454972 () Bool)

(assert (=> b!3600380 (=> res!1454972 e!2227953)))

(assert (=> b!3600380 (= res!1454972 (not (contains!7275 lt!1236907 lt!1236911)))))

(declare-fun b!3600381 () Bool)

(declare-fun res!1454959 () Bool)

(assert (=> b!3600381 (=> (not res!1454959) (not e!2227965))))

(assert (=> b!3600381 (= res!1454959 (not (= (isSeparator!5606 anOtherTypeRule!33) (isSeparator!5606 rule!403))))))

(declare-fun b!3600382 () Bool)

(assert (=> b!3600382 (= e!2227973 (not e!2227957))))

(declare-fun res!1454971 () Bool)

(assert (=> b!3600382 (=> res!1454971 e!2227957)))

(assert (=> b!3600382 (= res!1454971 (not (matchR!4934 (regex!5606 rule!403) lt!1236907)))))

(declare-fun ruleValid!1871 (LexerInterface!5195 Rule!11012) Bool)

(assert (=> b!3600382 (ruleValid!1871 thiss!23823 rule!403)))

(declare-fun lt!1236899 () Unit!53909)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1026 (LexerInterface!5195 Rule!11012 List!37999) Unit!53909)

(assert (=> b!3600382 (= lt!1236899 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1026 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3600383 (= e!2227959 (and tp!1101407 tp!1101409))))

(assert (=> b!3600384 (= e!2227958 (and tp!1101398 tp!1101408))))

(declare-fun b!3600385 () Bool)

(declare-fun res!1454960 () Bool)

(assert (=> b!3600385 (=> res!1454960 e!2227967)))

(declare-fun sepAndNonSepRulesDisjointChars!1776 (List!37999 List!37999) Bool)

(assert (=> b!3600385 (= res!1454960 (not (sepAndNonSepRulesDisjointChars!1776 rules!3307 rules!3307)))))

(declare-fun b!3600386 () Bool)

(assert (=> b!3600386 (= e!2227957 e!2227967)))

(declare-fun res!1454955 () Bool)

(assert (=> b!3600386 (=> res!1454955 e!2227967)))

(assert (=> b!3600386 (= res!1454955 (contains!7275 lt!1236921 lt!1236906))))

(assert (=> b!3600386 (= lt!1236906 (head!7548 suffix!1395))))

(assert (=> b!3600386 (= lt!1236921 (usedCharacters!820 (regex!5606 rule!403)))))

(declare-fun b!3600387 () Bool)

(assert (=> b!3600387 (= e!2227947 e!2227973)))

(declare-fun res!1454975 () Bool)

(assert (=> b!3600387 (=> (not res!1454975) (not e!2227973))))

(assert (=> b!3600387 (= res!1454975 (= (_1!22016 lt!1236920) token!511))))

(assert (=> b!3600387 (= lt!1236920 (get!12255 lt!1236925))))

(declare-fun b!3600388 () Bool)

(declare-fun Unit!53912 () Unit!53909)

(assert (=> b!3600388 (= e!2227951 Unit!53912)))

(declare-fun lt!1236913 () Unit!53909)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!590 (Regex!10365 List!37997 C!20916) Unit!53909)

(assert (=> b!3600388 (= lt!1236913 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!590 (regex!5606 rule!403) lt!1236907 lt!1236911))))

(assert (=> b!3600388 false))

(assert (= (and start!334674 res!1454969) b!3600358))

(assert (= (and b!3600358 res!1454967) b!3600364))

(assert (= (and b!3600364 res!1454957) b!3600363))

(assert (= (and b!3600363 res!1454961) b!3600365))

(assert (= (and b!3600365 res!1454963) b!3600381))

(assert (= (and b!3600381 res!1454959) b!3600369))

(assert (= (and b!3600369 res!1454974) b!3600387))

(assert (= (and b!3600387 res!1454975) b!3600356))

(assert (= (and b!3600356 res!1454953) b!3600368))

(assert (= (and b!3600368 res!1454962) b!3600382))

(assert (= (and b!3600382 (not res!1454971)) b!3600352))

(assert (= (and b!3600352 (not res!1454964)) b!3600386))

(assert (= (and b!3600386 (not res!1454955)) b!3600378))

(assert (= (and b!3600378 (not res!1454965)) b!3600385))

(assert (= (and b!3600385 (not res!1454960)) b!3600371))

(assert (= (and b!3600371 res!1454966) b!3600374))

(assert (= (and b!3600374 res!1454956) b!3600370))

(assert (= (and b!3600371 (not res!1454954)) b!3600367))

(assert (= (and b!3600367 (not res!1454958)) b!3600355))

(assert (= (and b!3600355 (not res!1454970)) b!3600376))

(assert (= (and b!3600376 (not res!1454976)) b!3600353))

(assert (= (and b!3600353 c!623119) b!3600388))

(assert (= (and b!3600353 (not c!623119)) b!3600359))

(assert (= (and b!3600353 (not res!1454973)) b!3600380))

(assert (= (and b!3600380 (not res!1454972)) b!3600372))

(assert (= (and b!3600372 (not res!1454968)) b!3600357))

(assert (= b!3600361 b!3600384))

(assert (= b!3600377 b!3600361))

(assert (= (and start!334674 ((_ is Cons!37875) rules!3307)) b!3600377))

(assert (= (and start!334674 ((_ is Cons!37873) suffix!1395)) b!3600375))

(assert (= b!3600354 b!3600383))

(assert (= b!3600362 b!3600354))

(assert (= start!334674 b!3600362))

(assert (= b!3600360 b!3600373))

(assert (= start!334674 b!3600360))

(assert (= b!3600366 b!3600379))

(assert (= start!334674 b!3600366))

(declare-fun m!4096135 () Bool)

(assert (=> b!3600352 m!4096135))

(declare-fun m!4096137 () Bool)

(assert (=> b!3600358 m!4096137))

(declare-fun m!4096139 () Bool)

(assert (=> b!3600387 m!4096139))

(declare-fun m!4096141 () Bool)

(assert (=> b!3600371 m!4096141))

(declare-fun m!4096143 () Bool)

(assert (=> b!3600371 m!4096143))

(declare-fun m!4096145 () Bool)

(assert (=> b!3600371 m!4096145))

(declare-fun m!4096147 () Bool)

(assert (=> b!3600371 m!4096147))

(declare-fun m!4096149 () Bool)

(assert (=> b!3600371 m!4096149))

(declare-fun m!4096151 () Bool)

(assert (=> b!3600371 m!4096151))

(declare-fun m!4096153 () Bool)

(assert (=> b!3600371 m!4096153))

(declare-fun m!4096155 () Bool)

(assert (=> b!3600371 m!4096155))

(declare-fun m!4096157 () Bool)

(assert (=> b!3600371 m!4096157))

(declare-fun m!4096159 () Bool)

(assert (=> b!3600371 m!4096159))

(declare-fun m!4096161 () Bool)

(assert (=> b!3600371 m!4096161))

(declare-fun m!4096163 () Bool)

(assert (=> b!3600371 m!4096163))

(declare-fun m!4096165 () Bool)

(assert (=> b!3600371 m!4096165))

(declare-fun m!4096167 () Bool)

(assert (=> b!3600371 m!4096167))

(assert (=> b!3600371 m!4096143))

(declare-fun m!4096169 () Bool)

(assert (=> b!3600371 m!4096169))

(declare-fun m!4096171 () Bool)

(assert (=> b!3600362 m!4096171))

(declare-fun m!4096173 () Bool)

(assert (=> b!3600386 m!4096173))

(declare-fun m!4096175 () Bool)

(assert (=> b!3600386 m!4096175))

(declare-fun m!4096177 () Bool)

(assert (=> b!3600386 m!4096177))

(declare-fun m!4096179 () Bool)

(assert (=> start!334674 m!4096179))

(declare-fun m!4096181 () Bool)

(assert (=> b!3600365 m!4096181))

(declare-fun m!4096183 () Bool)

(assert (=> b!3600355 m!4096183))

(declare-fun m!4096185 () Bool)

(assert (=> b!3600355 m!4096185))

(declare-fun m!4096187 () Bool)

(assert (=> b!3600355 m!4096187))

(assert (=> b!3600355 m!4096185))

(declare-fun m!4096189 () Bool)

(assert (=> b!3600355 m!4096189))

(declare-fun m!4096191 () Bool)

(assert (=> b!3600355 m!4096191))

(declare-fun m!4096193 () Bool)

(assert (=> b!3600355 m!4096193))

(declare-fun m!4096195 () Bool)

(assert (=> b!3600369 m!4096195))

(declare-fun m!4096197 () Bool)

(assert (=> b!3600369 m!4096197))

(declare-fun m!4096199 () Bool)

(assert (=> b!3600369 m!4096199))

(assert (=> b!3600369 m!4096199))

(declare-fun m!4096201 () Bool)

(assert (=> b!3600369 m!4096201))

(declare-fun m!4096203 () Bool)

(assert (=> b!3600364 m!4096203))

(declare-fun m!4096205 () Bool)

(assert (=> b!3600388 m!4096205))

(declare-fun m!4096207 () Bool)

(assert (=> b!3600378 m!4096207))

(assert (=> b!3600378 m!4096207))

(declare-fun m!4096209 () Bool)

(assert (=> b!3600378 m!4096209))

(declare-fun m!4096211 () Bool)

(assert (=> b!3600357 m!4096211))

(assert (=> b!3600357 m!4096211))

(declare-fun m!4096213 () Bool)

(assert (=> b!3600357 m!4096213))

(declare-fun m!4096215 () Bool)

(assert (=> b!3600357 m!4096215))

(declare-fun m!4096217 () Bool)

(assert (=> b!3600363 m!4096217))

(declare-fun m!4096219 () Bool)

(assert (=> b!3600385 m!4096219))

(declare-fun m!4096221 () Bool)

(assert (=> b!3600354 m!4096221))

(declare-fun m!4096223 () Bool)

(assert (=> b!3600354 m!4096223))

(declare-fun m!4096225 () Bool)

(assert (=> b!3600353 m!4096225))

(declare-fun m!4096227 () Bool)

(assert (=> b!3600353 m!4096227))

(declare-fun m!4096229 () Bool)

(assert (=> b!3600367 m!4096229))

(declare-fun m!4096231 () Bool)

(assert (=> b!3600360 m!4096231))

(declare-fun m!4096233 () Bool)

(assert (=> b!3600360 m!4096233))

(declare-fun m!4096235 () Bool)

(assert (=> b!3600382 m!4096235))

(declare-fun m!4096237 () Bool)

(assert (=> b!3600382 m!4096237))

(declare-fun m!4096239 () Bool)

(assert (=> b!3600382 m!4096239))

(declare-fun m!4096241 () Bool)

(assert (=> b!3600376 m!4096241))

(declare-fun m!4096243 () Bool)

(assert (=> b!3600376 m!4096243))

(assert (=> b!3600376 m!4096241))

(declare-fun m!4096245 () Bool)

(assert (=> b!3600376 m!4096245))

(declare-fun m!4096247 () Bool)

(assert (=> b!3600376 m!4096247))

(declare-fun m!4096249 () Bool)

(assert (=> b!3600376 m!4096249))

(declare-fun m!4096251 () Bool)

(assert (=> b!3600376 m!4096251))

(declare-fun m!4096253 () Bool)

(assert (=> b!3600376 m!4096253))

(declare-fun m!4096255 () Bool)

(assert (=> b!3600366 m!4096255))

(declare-fun m!4096257 () Bool)

(assert (=> b!3600366 m!4096257))

(assert (=> b!3600374 m!4096151))

(assert (=> b!3600374 m!4096151))

(declare-fun m!4096259 () Bool)

(assert (=> b!3600374 m!4096259))

(assert (=> b!3600374 m!4096259))

(declare-fun m!4096261 () Bool)

(assert (=> b!3600374 m!4096261))

(declare-fun m!4096263 () Bool)

(assert (=> b!3600374 m!4096263))

(declare-fun m!4096265 () Bool)

(assert (=> b!3600356 m!4096265))

(declare-fun m!4096267 () Bool)

(assert (=> b!3600380 m!4096267))

(declare-fun m!4096269 () Bool)

(assert (=> b!3600361 m!4096269))

(declare-fun m!4096271 () Bool)

(assert (=> b!3600361 m!4096271))

(check-sat (not b_next!93867) (not b_next!93875) (not b!3600371) (not b!3600358) (not b!3600388) b_and!261489 (not b!3600376) (not b_next!93869) (not b!3600369) b_and!261491 (not b!3600360) (not b!3600365) (not b!3600385) (not b!3600353) (not b!3600352) (not b!3600362) (not b!3600366) (not b!3600380) (not b_next!93865) (not b!3600355) (not b_next!93873) (not b_next!93871) b_and!261495 (not b!3600367) (not b!3600354) (not b!3600378) (not b!3600364) (not b_next!93879) (not b!3600361) (not b!3600356) b_and!261493 (not b!3600374) (not start!334674) tp_is_empty!17813 b_and!261483 b_and!261485 (not b!3600357) b_and!261497 (not b!3600387) (not b!3600386) b_and!261487 (not b!3600382) (not b!3600363) (not b_next!93877) (not b!3600375) (not b!3600377))
(check-sat b_and!261491 (not b_next!93867) (not b_next!93875) (not b_next!93865) (not b_next!93873) (not b_next!93879) b_and!261493 b_and!261489 (not b_next!93869) b_and!261497 b_and!261487 (not b_next!93877) (not b_next!93871) b_and!261495 b_and!261483 b_and!261485)
(get-model)

(declare-fun b!3600540 () Bool)

(declare-fun e!2228055 () Bool)

(assert (=> b!3600540 (= e!2228055 (= (head!7548 lt!1236907) (c!623120 (regex!5606 rule!403))))))

(declare-fun b!3600541 () Bool)

(declare-fun res!1455063 () Bool)

(declare-fun e!2228057 () Bool)

(assert (=> b!3600541 (=> res!1455063 e!2228057)))

(declare-fun tail!5581 (List!37997) List!37997)

(assert (=> b!3600541 (= res!1455063 (not (isEmpty!22342 (tail!5581 lt!1236907))))))

(declare-fun b!3600542 () Bool)

(declare-fun e!2228056 () Bool)

(declare-fun lt!1236961 () Bool)

(declare-fun call!260391 () Bool)

(assert (=> b!3600542 (= e!2228056 (= lt!1236961 call!260391))))

(declare-fun b!3600543 () Bool)

(declare-fun res!1455068 () Bool)

(assert (=> b!3600543 (=> (not res!1455068) (not e!2228055))))

(assert (=> b!3600543 (= res!1455068 (isEmpty!22342 (tail!5581 lt!1236907)))))

(declare-fun b!3600544 () Bool)

(declare-fun e!2228054 () Bool)

(assert (=> b!3600544 (= e!2228056 e!2228054)))

(declare-fun c!623159 () Bool)

(assert (=> b!3600544 (= c!623159 ((_ is EmptyLang!10365) (regex!5606 rule!403)))))

(declare-fun bm!260386 () Bool)

(assert (=> bm!260386 (= call!260391 (isEmpty!22342 lt!1236907))))

(declare-fun b!3600545 () Bool)

(declare-fun e!2228059 () Bool)

(declare-fun e!2228053 () Bool)

(assert (=> b!3600545 (= e!2228059 e!2228053)))

(declare-fun res!1455065 () Bool)

(assert (=> b!3600545 (=> (not res!1455065) (not e!2228053))))

(assert (=> b!3600545 (= res!1455065 (not lt!1236961))))

(declare-fun b!3600546 () Bool)

(assert (=> b!3600546 (= e!2228053 e!2228057)))

(declare-fun res!1455067 () Bool)

(assert (=> b!3600546 (=> res!1455067 e!2228057)))

(assert (=> b!3600546 (= res!1455067 call!260391)))

(declare-fun b!3600547 () Bool)

(declare-fun e!2228058 () Bool)

(declare-fun nullable!3583 (Regex!10365) Bool)

(assert (=> b!3600547 (= e!2228058 (nullable!3583 (regex!5606 rule!403)))))

(declare-fun b!3600548 () Bool)

(declare-fun res!1455062 () Bool)

(assert (=> b!3600548 (=> res!1455062 e!2228059)))

(assert (=> b!3600548 (= res!1455062 (not ((_ is ElementMatch!10365) (regex!5606 rule!403))))))

(assert (=> b!3600548 (= e!2228054 e!2228059)))

(declare-fun b!3600549 () Bool)

(assert (=> b!3600549 (= e!2228057 (not (= (head!7548 lt!1236907) (c!623120 (regex!5606 rule!403)))))))

(declare-fun d!1060852 () Bool)

(assert (=> d!1060852 e!2228056))

(declare-fun c!623158 () Bool)

(assert (=> d!1060852 (= c!623158 ((_ is EmptyExpr!10365) (regex!5606 rule!403)))))

(assert (=> d!1060852 (= lt!1236961 e!2228058)))

(declare-fun c!623157 () Bool)

(assert (=> d!1060852 (= c!623157 (isEmpty!22342 lt!1236907))))

(declare-fun validRegex!4741 (Regex!10365) Bool)

(assert (=> d!1060852 (validRegex!4741 (regex!5606 rule!403))))

(assert (=> d!1060852 (= (matchR!4934 (regex!5606 rule!403) lt!1236907) lt!1236961)))

(declare-fun b!3600550 () Bool)

(declare-fun res!1455066 () Bool)

(assert (=> b!3600550 (=> (not res!1455066) (not e!2228055))))

(assert (=> b!3600550 (= res!1455066 (not call!260391))))

(declare-fun b!3600551 () Bool)

(declare-fun res!1455064 () Bool)

(assert (=> b!3600551 (=> res!1455064 e!2228059)))

(assert (=> b!3600551 (= res!1455064 e!2228055)))

(declare-fun res!1455069 () Bool)

(assert (=> b!3600551 (=> (not res!1455069) (not e!2228055))))

(assert (=> b!3600551 (= res!1455069 lt!1236961)))

(declare-fun b!3600552 () Bool)

(assert (=> b!3600552 (= e!2228054 (not lt!1236961))))

(declare-fun b!3600553 () Bool)

(declare-fun derivativeStep!3132 (Regex!10365 C!20916) Regex!10365)

(assert (=> b!3600553 (= e!2228058 (matchR!4934 (derivativeStep!3132 (regex!5606 rule!403) (head!7548 lt!1236907)) (tail!5581 lt!1236907)))))

(assert (= (and d!1060852 c!623157) b!3600547))

(assert (= (and d!1060852 (not c!623157)) b!3600553))

(assert (= (and d!1060852 c!623158) b!3600542))

(assert (= (and d!1060852 (not c!623158)) b!3600544))

(assert (= (and b!3600544 c!623159) b!3600552))

(assert (= (and b!3600544 (not c!623159)) b!3600548))

(assert (= (and b!3600548 (not res!1455062)) b!3600551))

(assert (= (and b!3600551 res!1455069) b!3600550))

(assert (= (and b!3600550 res!1455066) b!3600543))

(assert (= (and b!3600543 res!1455068) b!3600540))

(assert (= (and b!3600551 (not res!1455064)) b!3600545))

(assert (= (and b!3600545 res!1455065) b!3600546))

(assert (= (and b!3600546 (not res!1455067)) b!3600541))

(assert (= (and b!3600541 (not res!1455063)) b!3600549))

(assert (= (or b!3600542 b!3600546 b!3600550) bm!260386))

(declare-fun m!4096385 () Bool)

(assert (=> b!3600540 m!4096385))

(assert (=> b!3600549 m!4096385))

(declare-fun m!4096387 () Bool)

(assert (=> b!3600547 m!4096387))

(declare-fun m!4096389 () Bool)

(assert (=> bm!260386 m!4096389))

(declare-fun m!4096391 () Bool)

(assert (=> b!3600541 m!4096391))

(assert (=> b!3600541 m!4096391))

(declare-fun m!4096393 () Bool)

(assert (=> b!3600541 m!4096393))

(assert (=> b!3600543 m!4096391))

(assert (=> b!3600543 m!4096391))

(assert (=> b!3600543 m!4096393))

(assert (=> b!3600553 m!4096385))

(assert (=> b!3600553 m!4096385))

(declare-fun m!4096395 () Bool)

(assert (=> b!3600553 m!4096395))

(assert (=> b!3600553 m!4096391))

(assert (=> b!3600553 m!4096395))

(assert (=> b!3600553 m!4096391))

(declare-fun m!4096397 () Bool)

(assert (=> b!3600553 m!4096397))

(assert (=> d!1060852 m!4096389))

(declare-fun m!4096399 () Bool)

(assert (=> d!1060852 m!4096399))

(assert (=> b!3600382 d!1060852))

(declare-fun d!1060866 () Bool)

(declare-fun res!1455074 () Bool)

(declare-fun e!2228062 () Bool)

(assert (=> d!1060866 (=> (not res!1455074) (not e!2228062))))

(assert (=> d!1060866 (= res!1455074 (validRegex!4741 (regex!5606 rule!403)))))

(assert (=> d!1060866 (= (ruleValid!1871 thiss!23823 rule!403) e!2228062)))

(declare-fun b!3600558 () Bool)

(declare-fun res!1455075 () Bool)

(assert (=> b!3600558 (=> (not res!1455075) (not e!2228062))))

(assert (=> b!3600558 (= res!1455075 (not (nullable!3583 (regex!5606 rule!403))))))

(declare-fun b!3600559 () Bool)

(assert (=> b!3600559 (= e!2228062 (not (= (tag!6296 rule!403) (String!42515 ""))))))

(assert (= (and d!1060866 res!1455074) b!3600558))

(assert (= (and b!3600558 res!1455075) b!3600559))

(assert (=> d!1060866 m!4096399))

(assert (=> b!3600558 m!4096387))

(assert (=> b!3600382 d!1060866))

(declare-fun d!1060868 () Bool)

(assert (=> d!1060868 (ruleValid!1871 thiss!23823 rule!403)))

(declare-fun lt!1236964 () Unit!53909)

(declare-fun choose!20986 (LexerInterface!5195 Rule!11012 List!37999) Unit!53909)

(assert (=> d!1060868 (= lt!1236964 (choose!20986 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1060868 (contains!7276 rules!3307 rule!403)))

(assert (=> d!1060868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1026 thiss!23823 rule!403 rules!3307) lt!1236964)))

(declare-fun bs!570529 () Bool)

(assert (= bs!570529 d!1060868))

(assert (=> bs!570529 m!4096237))

(declare-fun m!4096401 () Bool)

(assert (=> bs!570529 m!4096401))

(assert (=> bs!570529 m!4096217))

(assert (=> b!3600382 d!1060868))

(declare-fun d!1060870 () Bool)

(declare-fun res!1455080 () Bool)

(declare-fun e!2228065 () Bool)

(assert (=> d!1060870 (=> (not res!1455080) (not e!2228065))))

(assert (=> d!1060870 (= res!1455080 (not (isEmpty!22342 (originalCharacters!6320 token!511))))))

(assert (=> d!1060870 (= (inv!51231 token!511) e!2228065)))

(declare-fun b!3600564 () Bool)

(declare-fun res!1455081 () Bool)

(assert (=> b!3600564 (=> (not res!1455081) (not e!2228065))))

(declare-fun dynLambda!16341 (Int TokenValue!5836) BalanceConc!22676)

(assert (=> b!3600564 (= res!1455081 (= (originalCharacters!6320 token!511) (list!13950 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (value!180231 token!511)))))))

(declare-fun b!3600565 () Bool)

(assert (=> b!3600565 (= e!2228065 (= (size!28860 token!511) (size!28862 (originalCharacters!6320 token!511))))))

(assert (= (and d!1060870 res!1455080) b!3600564))

(assert (= (and b!3600564 res!1455081) b!3600565))

(declare-fun b_lambda!106475 () Bool)

(assert (=> (not b_lambda!106475) (not b!3600564)))

(declare-fun tb!206001 () Bool)

(declare-fun t!292236 () Bool)

(assert (=> (and b!3600384 (= (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toChars!7749 (transformation!5606 (rule!8340 token!511)))) t!292236) tb!206001))

(declare-fun b!3600570 () Bool)

(declare-fun e!2228068 () Bool)

(declare-fun tp!1101419 () Bool)

(declare-fun inv!51234 (Conc!11531) Bool)

(assert (=> b!3600570 (= e!2228068 (and (inv!51234 (c!623121 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (value!180231 token!511)))) tp!1101419))))

(declare-fun result!251106 () Bool)

(declare-fun inv!51235 (BalanceConc!22676) Bool)

(assert (=> tb!206001 (= result!251106 (and (inv!51235 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (value!180231 token!511))) e!2228068))))

(assert (= tb!206001 b!3600570))

(declare-fun m!4096403 () Bool)

(assert (=> b!3600570 m!4096403))

(declare-fun m!4096405 () Bool)

(assert (=> tb!206001 m!4096405))

(assert (=> b!3600564 t!292236))

(declare-fun b_and!261531 () Bool)

(assert (= b_and!261485 (and (=> t!292236 result!251106) b_and!261531)))

(declare-fun tb!206003 () Bool)

(declare-fun t!292238 () Bool)

(assert (=> (and b!3600373 (= (toChars!7749 (transformation!5606 rule!403)) (toChars!7749 (transformation!5606 (rule!8340 token!511)))) t!292238) tb!206003))

(declare-fun result!251110 () Bool)

(assert (= result!251110 result!251106))

(assert (=> b!3600564 t!292238))

(declare-fun b_and!261533 () Bool)

(assert (= b_and!261489 (and (=> t!292238 result!251110) b_and!261533)))

(declare-fun tb!206005 () Bool)

(declare-fun t!292240 () Bool)

(assert (=> (and b!3600379 (= (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toChars!7749 (transformation!5606 (rule!8340 token!511)))) t!292240) tb!206005))

(declare-fun result!251112 () Bool)

(assert (= result!251112 result!251106))

(assert (=> b!3600564 t!292240))

(declare-fun b_and!261535 () Bool)

(assert (= b_and!261493 (and (=> t!292240 result!251112) b_and!261535)))

(declare-fun t!292242 () Bool)

(declare-fun tb!206007 () Bool)

(assert (=> (and b!3600383 (= (toChars!7749 (transformation!5606 (rule!8340 token!511))) (toChars!7749 (transformation!5606 (rule!8340 token!511)))) t!292242) tb!206007))

(declare-fun result!251114 () Bool)

(assert (= result!251114 result!251106))

(assert (=> b!3600564 t!292242))

(declare-fun b_and!261537 () Bool)

(assert (= b_and!261497 (and (=> t!292242 result!251114) b_and!261537)))

(declare-fun m!4096407 () Bool)

(assert (=> d!1060870 m!4096407))

(declare-fun m!4096409 () Bool)

(assert (=> b!3600564 m!4096409))

(assert (=> b!3600564 m!4096409))

(declare-fun m!4096411 () Bool)

(assert (=> b!3600564 m!4096411))

(declare-fun m!4096413 () Bool)

(assert (=> b!3600565 m!4096413))

(assert (=> start!334674 d!1060870))

(declare-fun d!1060872 () Bool)

(assert (=> d!1060872 (= (inv!51227 (tag!6296 (h!43295 rules!3307))) (= (mod (str.len (value!180230 (tag!6296 (h!43295 rules!3307)))) 2) 0))))

(assert (=> b!3600361 d!1060872))

(declare-fun d!1060874 () Bool)

(declare-fun res!1455098 () Bool)

(declare-fun e!2228079 () Bool)

(assert (=> d!1060874 (=> (not res!1455098) (not e!2228079))))

(declare-fun semiInverseModEq!2381 (Int Int) Bool)

(assert (=> d!1060874 (= res!1455098 (semiInverseModEq!2381 (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toValue!7890 (transformation!5606 (h!43295 rules!3307)))))))

(assert (=> d!1060874 (= (inv!51230 (transformation!5606 (h!43295 rules!3307))) e!2228079)))

(declare-fun b!3600591 () Bool)

(declare-fun equivClasses!2280 (Int Int) Bool)

(assert (=> b!3600591 (= e!2228079 (equivClasses!2280 (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toValue!7890 (transformation!5606 (h!43295 rules!3307)))))))

(assert (= (and d!1060874 res!1455098) b!3600591))

(declare-fun m!4096415 () Bool)

(assert (=> d!1060874 m!4096415))

(declare-fun m!4096417 () Bool)

(assert (=> b!3600591 m!4096417))

(assert (=> b!3600361 d!1060874))

(declare-fun d!1060876 () Bool)

(declare-fun lt!1236982 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5404 (List!37999) (InoxSet Rule!11012))

(assert (=> d!1060876 (= lt!1236982 (select (content!5404 rules!3307) rule!403))))

(declare-fun e!2228089 () Bool)

(assert (=> d!1060876 (= lt!1236982 e!2228089)))

(declare-fun res!1455111 () Bool)

(assert (=> d!1060876 (=> (not res!1455111) (not e!2228089))))

(assert (=> d!1060876 (= res!1455111 ((_ is Cons!37875) rules!3307))))

(assert (=> d!1060876 (= (contains!7276 rules!3307 rule!403) lt!1236982)))

(declare-fun b!3600605 () Bool)

(declare-fun e!2228088 () Bool)

(assert (=> b!3600605 (= e!2228089 e!2228088)))

(declare-fun res!1455110 () Bool)

(assert (=> b!3600605 (=> res!1455110 e!2228088)))

(assert (=> b!3600605 (= res!1455110 (= (h!43295 rules!3307) rule!403))))

(declare-fun b!3600606 () Bool)

(assert (=> b!3600606 (= e!2228088 (contains!7276 (t!292210 rules!3307) rule!403))))

(assert (= (and d!1060876 res!1455111) b!3600605))

(assert (= (and b!3600605 (not res!1455110)) b!3600606))

(declare-fun m!4096449 () Bool)

(assert (=> d!1060876 m!4096449))

(declare-fun m!4096453 () Bool)

(assert (=> d!1060876 m!4096453))

(declare-fun m!4096457 () Bool)

(assert (=> b!3600606 m!4096457))

(assert (=> b!3600363 d!1060876))

(declare-fun b!3600623 () Bool)

(declare-fun res!1455114 () Bool)

(declare-fun e!2228101 () Bool)

(assert (=> b!3600623 (=> res!1455114 e!2228101)))

(assert (=> b!3600623 (= res!1455114 (not ((_ is IntegerValue!17510) (value!180231 token!511))))))

(declare-fun e!2228099 () Bool)

(assert (=> b!3600623 (= e!2228099 e!2228101)))

(declare-fun b!3600624 () Bool)

(declare-fun e!2228100 () Bool)

(assert (=> b!3600624 (= e!2228100 e!2228099)))

(declare-fun c!623171 () Bool)

(assert (=> b!3600624 (= c!623171 ((_ is IntegerValue!17509) (value!180231 token!511)))))

(declare-fun d!1060878 () Bool)

(declare-fun c!623170 () Bool)

(assert (=> d!1060878 (= c!623170 ((_ is IntegerValue!17508) (value!180231 token!511)))))

(assert (=> d!1060878 (= (inv!21 (value!180231 token!511)) e!2228100)))

(declare-fun b!3600625 () Bool)

(declare-fun inv!17 (TokenValue!5836) Bool)

(assert (=> b!3600625 (= e!2228099 (inv!17 (value!180231 token!511)))))

(declare-fun b!3600626 () Bool)

(declare-fun inv!16 (TokenValue!5836) Bool)

(assert (=> b!3600626 (= e!2228100 (inv!16 (value!180231 token!511)))))

(declare-fun b!3600627 () Bool)

(declare-fun inv!15 (TokenValue!5836) Bool)

(assert (=> b!3600627 (= e!2228101 (inv!15 (value!180231 token!511)))))

(assert (= (and d!1060878 c!623170) b!3600626))

(assert (= (and d!1060878 (not c!623170)) b!3600624))

(assert (= (and b!3600624 c!623171) b!3600625))

(assert (= (and b!3600624 (not c!623171)) b!3600623))

(assert (= (and b!3600623 (not res!1455114)) b!3600627))

(declare-fun m!4096479 () Bool)

(assert (=> b!3600625 m!4096479))

(declare-fun m!4096481 () Bool)

(assert (=> b!3600626 m!4096481))

(declare-fun m!4096483 () Bool)

(assert (=> b!3600627 m!4096483))

(assert (=> b!3600362 d!1060878))

(declare-fun d!1060886 () Bool)

(declare-fun lt!1236994 () Bool)

(declare-fun content!5405 (List!37997) (InoxSet C!20916))

(assert (=> d!1060886 (= lt!1236994 (select (content!5405 lt!1236907) lt!1236911))))

(declare-fun e!2228110 () Bool)

(assert (=> d!1060886 (= lt!1236994 e!2228110)))

(declare-fun res!1455120 () Bool)

(assert (=> d!1060886 (=> (not res!1455120) (not e!2228110))))

(assert (=> d!1060886 (= res!1455120 ((_ is Cons!37873) lt!1236907))))

(assert (=> d!1060886 (= (contains!7275 lt!1236907 lt!1236911) lt!1236994)))

(declare-fun b!3600638 () Bool)

(declare-fun e!2228109 () Bool)

(assert (=> b!3600638 (= e!2228110 e!2228109)))

(declare-fun res!1455119 () Bool)

(assert (=> b!3600638 (=> res!1455119 e!2228109)))

(assert (=> b!3600638 (= res!1455119 (= (h!43293 lt!1236907) lt!1236911))))

(declare-fun b!3600639 () Bool)

(assert (=> b!3600639 (= e!2228109 (contains!7275 (t!292208 lt!1236907) lt!1236911))))

(assert (= (and d!1060886 res!1455120) b!3600638))

(assert (= (and b!3600638 (not res!1455119)) b!3600639))

(declare-fun m!4096489 () Bool)

(assert (=> d!1060886 m!4096489))

(declare-fun m!4096491 () Bool)

(assert (=> d!1060886 m!4096491))

(declare-fun m!4096493 () Bool)

(assert (=> b!3600639 m!4096493))

(assert (=> b!3600380 d!1060886))

(declare-fun d!1060892 () Bool)

(assert (=> d!1060892 (= (isEmpty!22343 rules!3307) ((_ is Nil!37875) rules!3307))))

(assert (=> b!3600358 d!1060892))

(declare-fun d!1060894 () Bool)

(assert (=> d!1060894 (= (inv!51227 (tag!6296 rule!403)) (= (mod (str.len (value!180230 (tag!6296 rule!403))) 2) 0))))

(assert (=> b!3600360 d!1060894))

(declare-fun d!1060896 () Bool)

(declare-fun res!1455123 () Bool)

(declare-fun e!2228117 () Bool)

(assert (=> d!1060896 (=> (not res!1455123) (not e!2228117))))

(assert (=> d!1060896 (= res!1455123 (semiInverseModEq!2381 (toChars!7749 (transformation!5606 rule!403)) (toValue!7890 (transformation!5606 rule!403))))))

(assert (=> d!1060896 (= (inv!51230 (transformation!5606 rule!403)) e!2228117)))

(declare-fun b!3600650 () Bool)

(assert (=> b!3600650 (= e!2228117 (equivClasses!2280 (toChars!7749 (transformation!5606 rule!403)) (toValue!7890 (transformation!5606 rule!403))))))

(assert (= (and d!1060896 res!1455123) b!3600650))

(declare-fun m!4096495 () Bool)

(assert (=> d!1060896 m!4096495))

(declare-fun m!4096497 () Bool)

(assert (=> b!3600650 m!4096497))

(assert (=> b!3600360 d!1060896))

(declare-fun d!1060898 () Bool)

(assert (=> d!1060898 (not (matchR!4934 (regex!5606 rule!403) lt!1236907))))

(declare-fun lt!1236998 () Unit!53909)

(declare-fun choose!20988 (Regex!10365 List!37997 C!20916) Unit!53909)

(assert (=> d!1060898 (= lt!1236998 (choose!20988 (regex!5606 rule!403) lt!1236907 lt!1236911))))

(assert (=> d!1060898 (validRegex!4741 (regex!5606 rule!403))))

(assert (=> d!1060898 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!590 (regex!5606 rule!403) lt!1236907 lt!1236911) lt!1236998)))

(declare-fun bs!570532 () Bool)

(assert (= bs!570532 d!1060898))

(assert (=> bs!570532 m!4096235))

(declare-fun m!4096517 () Bool)

(assert (=> bs!570532 m!4096517))

(assert (=> bs!570532 m!4096399))

(assert (=> b!3600388 d!1060898))

(declare-fun b!3600666 () Bool)

(declare-fun e!2228129 () Bool)

(assert (=> b!3600666 (= e!2228129 (= (head!7548 lt!1236900) (c!623120 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))))

(declare-fun b!3600667 () Bool)

(declare-fun res!1455128 () Bool)

(declare-fun e!2228131 () Bool)

(assert (=> b!3600667 (=> res!1455128 e!2228131)))

(assert (=> b!3600667 (= res!1455128 (not (isEmpty!22342 (tail!5581 lt!1236900))))))

(declare-fun b!3600668 () Bool)

(declare-fun e!2228130 () Bool)

(declare-fun lt!1236999 () Bool)

(declare-fun call!260396 () Bool)

(assert (=> b!3600668 (= e!2228130 (= lt!1236999 call!260396))))

(declare-fun b!3600669 () Bool)

(declare-fun res!1455133 () Bool)

(assert (=> b!3600669 (=> (not res!1455133) (not e!2228129))))

(assert (=> b!3600669 (= res!1455133 (isEmpty!22342 (tail!5581 lt!1236900)))))

(declare-fun b!3600670 () Bool)

(declare-fun e!2228128 () Bool)

(assert (=> b!3600670 (= e!2228130 e!2228128)))

(declare-fun c!623188 () Bool)

(assert (=> b!3600670 (= c!623188 ((_ is EmptyLang!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun bm!260391 () Bool)

(assert (=> bm!260391 (= call!260396 (isEmpty!22342 lt!1236900))))

(declare-fun b!3600671 () Bool)

(declare-fun e!2228133 () Bool)

(declare-fun e!2228127 () Bool)

(assert (=> b!3600671 (= e!2228133 e!2228127)))

(declare-fun res!1455130 () Bool)

(assert (=> b!3600671 (=> (not res!1455130) (not e!2228127))))

(assert (=> b!3600671 (= res!1455130 (not lt!1236999))))

(declare-fun b!3600672 () Bool)

(assert (=> b!3600672 (= e!2228127 e!2228131)))

(declare-fun res!1455132 () Bool)

(assert (=> b!3600672 (=> res!1455132 e!2228131)))

(assert (=> b!3600672 (= res!1455132 call!260396)))

(declare-fun b!3600673 () Bool)

(declare-fun e!2228132 () Bool)

(assert (=> b!3600673 (= e!2228132 (nullable!3583 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun b!3600674 () Bool)

(declare-fun res!1455127 () Bool)

(assert (=> b!3600674 (=> res!1455127 e!2228133)))

(assert (=> b!3600674 (= res!1455127 (not ((_ is ElementMatch!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))))

(assert (=> b!3600674 (= e!2228128 e!2228133)))

(declare-fun b!3600675 () Bool)

(assert (=> b!3600675 (= e!2228131 (not (= (head!7548 lt!1236900) (c!623120 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))))

(declare-fun d!1060906 () Bool)

(assert (=> d!1060906 e!2228130))

(declare-fun c!623187 () Bool)

(assert (=> d!1060906 (= c!623187 ((_ is EmptyExpr!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(assert (=> d!1060906 (= lt!1236999 e!2228132)))

(declare-fun c!623186 () Bool)

(assert (=> d!1060906 (= c!623186 (isEmpty!22342 lt!1236900))))

(assert (=> d!1060906 (validRegex!4741 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))

(assert (=> d!1060906 (= (matchR!4934 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236900) lt!1236999)))

(declare-fun b!3600676 () Bool)

(declare-fun res!1455131 () Bool)

(assert (=> b!3600676 (=> (not res!1455131) (not e!2228129))))

(assert (=> b!3600676 (= res!1455131 (not call!260396))))

(declare-fun b!3600677 () Bool)

(declare-fun res!1455129 () Bool)

(assert (=> b!3600677 (=> res!1455129 e!2228133)))

(assert (=> b!3600677 (= res!1455129 e!2228129)))

(declare-fun res!1455134 () Bool)

(assert (=> b!3600677 (=> (not res!1455134) (not e!2228129))))

(assert (=> b!3600677 (= res!1455134 lt!1236999)))

(declare-fun b!3600678 () Bool)

(assert (=> b!3600678 (= e!2228128 (not lt!1236999))))

(declare-fun b!3600679 () Bool)

(assert (=> b!3600679 (= e!2228132 (matchR!4934 (derivativeStep!3132 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) (head!7548 lt!1236900)) (tail!5581 lt!1236900)))))

(assert (= (and d!1060906 c!623186) b!3600673))

(assert (= (and d!1060906 (not c!623186)) b!3600679))

(assert (= (and d!1060906 c!623187) b!3600668))

(assert (= (and d!1060906 (not c!623187)) b!3600670))

(assert (= (and b!3600670 c!623188) b!3600678))

(assert (= (and b!3600670 (not c!623188)) b!3600674))

(assert (= (and b!3600674 (not res!1455127)) b!3600677))

(assert (= (and b!3600677 res!1455134) b!3600676))

(assert (= (and b!3600676 res!1455131) b!3600669))

(assert (= (and b!3600669 res!1455133) b!3600666))

(assert (= (and b!3600677 (not res!1455129)) b!3600671))

(assert (= (and b!3600671 res!1455130) b!3600672))

(assert (= (and b!3600672 (not res!1455132)) b!3600667))

(assert (= (and b!3600667 (not res!1455128)) b!3600675))

(assert (= (or b!3600668 b!3600672 b!3600676) bm!260391))

(assert (=> b!3600666 m!4096227))

(assert (=> b!3600675 m!4096227))

(declare-fun m!4096521 () Bool)

(assert (=> b!3600673 m!4096521))

(declare-fun m!4096523 () Bool)

(assert (=> bm!260391 m!4096523))

(declare-fun m!4096525 () Bool)

(assert (=> b!3600667 m!4096525))

(assert (=> b!3600667 m!4096525))

(declare-fun m!4096527 () Bool)

(assert (=> b!3600667 m!4096527))

(assert (=> b!3600669 m!4096525))

(assert (=> b!3600669 m!4096525))

(assert (=> b!3600669 m!4096527))

(assert (=> b!3600679 m!4096227))

(assert (=> b!3600679 m!4096227))

(declare-fun m!4096529 () Bool)

(assert (=> b!3600679 m!4096529))

(assert (=> b!3600679 m!4096525))

(assert (=> b!3600679 m!4096529))

(assert (=> b!3600679 m!4096525))

(declare-fun m!4096531 () Bool)

(assert (=> b!3600679 m!4096531))

(assert (=> d!1060906 m!4096523))

(declare-fun m!4096533 () Bool)

(assert (=> d!1060906 m!4096533))

(assert (=> b!3600367 d!1060906))

(declare-fun d!1060910 () Bool)

(assert (=> d!1060910 (= (inv!51227 (tag!6296 anOtherTypeRule!33)) (= (mod (str.len (value!180230 (tag!6296 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3600366 d!1060910))

(declare-fun d!1060914 () Bool)

(declare-fun res!1455135 () Bool)

(declare-fun e!2228134 () Bool)

(assert (=> d!1060914 (=> (not res!1455135) (not e!2228134))))

(assert (=> d!1060914 (= res!1455135 (semiInverseModEq!2381 (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toValue!7890 (transformation!5606 anOtherTypeRule!33))))))

(assert (=> d!1060914 (= (inv!51230 (transformation!5606 anOtherTypeRule!33)) e!2228134)))

(declare-fun b!3600680 () Bool)

(assert (=> b!3600680 (= e!2228134 (equivClasses!2280 (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toValue!7890 (transformation!5606 anOtherTypeRule!33))))))

(assert (= (and d!1060914 res!1455135) b!3600680))

(declare-fun m!4096535 () Bool)

(assert (=> d!1060914 m!4096535))

(declare-fun m!4096537 () Bool)

(assert (=> b!3600680 m!4096537))

(assert (=> b!3600366 d!1060914))

(declare-fun d!1060916 () Bool)

(declare-fun res!1455142 () Bool)

(declare-fun e!2228141 () Bool)

(assert (=> d!1060916 (=> (not res!1455142) (not e!2228141))))

(declare-fun rulesValid!2140 (LexerInterface!5195 List!37999) Bool)

(assert (=> d!1060916 (= res!1455142 (rulesValid!2140 thiss!23823 rules!3307))))

(assert (=> d!1060916 (= (rulesInvariant!4592 thiss!23823 rules!3307) e!2228141)))

(declare-fun b!3600687 () Bool)

(declare-datatypes ((List!38001 0))(
  ( (Nil!37877) (Cons!37877 (h!43297 String!42514) (t!292332 List!38001)) )
))
(declare-fun noDuplicateTag!2136 (LexerInterface!5195 List!37999 List!38001) Bool)

(assert (=> b!3600687 (= e!2228141 (noDuplicateTag!2136 thiss!23823 rules!3307 Nil!37877))))

(assert (= (and d!1060916 res!1455142) b!3600687))

(declare-fun m!4096547 () Bool)

(assert (=> d!1060916 m!4096547))

(declare-fun m!4096549 () Bool)

(assert (=> b!3600687 m!4096549))

(assert (=> b!3600364 d!1060916))

(declare-fun d!1060924 () Bool)

(declare-fun res!1455165 () Bool)

(declare-fun e!2228163 () Bool)

(assert (=> d!1060924 (=> res!1455165 e!2228163)))

(assert (=> d!1060924 (= res!1455165 (not ((_ is Cons!37875) rules!3307)))))

(assert (=> d!1060924 (= (sepAndNonSepRulesDisjointChars!1776 rules!3307 rules!3307) e!2228163)))

(declare-fun b!3600716 () Bool)

(declare-fun e!2228164 () Bool)

(assert (=> b!3600716 (= e!2228163 e!2228164)))

(declare-fun res!1455166 () Bool)

(assert (=> b!3600716 (=> (not res!1455166) (not e!2228164))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!807 (Rule!11012 List!37999) Bool)

(assert (=> b!3600716 (= res!1455166 (ruleDisjointCharsFromAllFromOtherType!807 (h!43295 rules!3307) rules!3307))))

(declare-fun b!3600717 () Bool)

(assert (=> b!3600717 (= e!2228164 (sepAndNonSepRulesDisjointChars!1776 rules!3307 (t!292210 rules!3307)))))

(assert (= (and d!1060924 (not res!1455165)) b!3600716))

(assert (= (and b!3600716 res!1455166) b!3600717))

(declare-fun m!4096583 () Bool)

(assert (=> b!3600716 m!4096583))

(declare-fun m!4096585 () Bool)

(assert (=> b!3600717 m!4096585))

(assert (=> b!3600385 d!1060924))

(declare-fun d!1060944 () Bool)

(assert (=> d!1060944 (= (get!12255 lt!1236925) (v!37551 lt!1236925))))

(assert (=> b!3600387 d!1060944))

(declare-fun d!1060946 () Bool)

(declare-fun lt!1237008 () Bool)

(assert (=> d!1060946 (= lt!1237008 (select (content!5405 lt!1236921) lt!1236906))))

(declare-fun e!2228172 () Bool)

(assert (=> d!1060946 (= lt!1237008 e!2228172)))

(declare-fun res!1455174 () Bool)

(assert (=> d!1060946 (=> (not res!1455174) (not e!2228172))))

(assert (=> d!1060946 (= res!1455174 ((_ is Cons!37873) lt!1236921))))

(assert (=> d!1060946 (= (contains!7275 lt!1236921 lt!1236906) lt!1237008)))

(declare-fun b!3600724 () Bool)

(declare-fun e!2228171 () Bool)

(assert (=> b!3600724 (= e!2228172 e!2228171)))

(declare-fun res!1455173 () Bool)

(assert (=> b!3600724 (=> res!1455173 e!2228171)))

(assert (=> b!3600724 (= res!1455173 (= (h!43293 lt!1236921) lt!1236906))))

(declare-fun b!3600725 () Bool)

(assert (=> b!3600725 (= e!2228171 (contains!7275 (t!292208 lt!1236921) lt!1236906))))

(assert (= (and d!1060946 res!1455174) b!3600724))

(assert (= (and b!3600724 (not res!1455173)) b!3600725))

(declare-fun m!4096591 () Bool)

(assert (=> d!1060946 m!4096591))

(declare-fun m!4096593 () Bool)

(assert (=> d!1060946 m!4096593))

(declare-fun m!4096595 () Bool)

(assert (=> b!3600725 m!4096595))

(assert (=> b!3600386 d!1060946))

(declare-fun d!1060950 () Bool)

(assert (=> d!1060950 (= (head!7548 suffix!1395) (h!43293 suffix!1395))))

(assert (=> b!3600386 d!1060950))

(declare-fun bm!260402 () Bool)

(declare-fun call!260408 () List!37997)

(declare-fun call!260410 () List!37997)

(assert (=> bm!260402 (= call!260408 call!260410)))

(declare-fun d!1060952 () Bool)

(declare-fun c!623207 () Bool)

(assert (=> d!1060952 (= c!623207 (or ((_ is EmptyExpr!10365) (regex!5606 rule!403)) ((_ is EmptyLang!10365) (regex!5606 rule!403))))))

(declare-fun e!2228201 () List!37997)

(assert (=> d!1060952 (= (usedCharacters!820 (regex!5606 rule!403)) e!2228201)))

(declare-fun bm!260403 () Bool)

(declare-fun call!260407 () List!37997)

(declare-fun c!623204 () Bool)

(assert (=> bm!260403 (= call!260407 (usedCharacters!820 (ite c!623204 (regOne!21243 (regex!5606 rule!403)) (regTwo!21242 (regex!5606 rule!403)))))))

(declare-fun b!3600769 () Bool)

(declare-fun e!2228199 () List!37997)

(declare-fun call!260409 () List!37997)

(assert (=> b!3600769 (= e!2228199 call!260409)))

(declare-fun b!3600770 () Bool)

(declare-fun e!2228200 () List!37997)

(assert (=> b!3600770 (= e!2228200 e!2228199)))

(assert (=> b!3600770 (= c!623204 ((_ is Union!10365) (regex!5606 rule!403)))))

(declare-fun b!3600771 () Bool)

(declare-fun e!2228198 () List!37997)

(assert (=> b!3600771 (= e!2228198 (Cons!37873 (c!623120 (regex!5606 rule!403)) Nil!37873))))

(declare-fun b!3600772 () Bool)

(declare-fun c!623205 () Bool)

(assert (=> b!3600772 (= c!623205 ((_ is Star!10365) (regex!5606 rule!403)))))

(assert (=> b!3600772 (= e!2228198 e!2228200)))

(declare-fun b!3600773 () Bool)

(assert (=> b!3600773 (= e!2228201 e!2228198)))

(declare-fun c!623206 () Bool)

(assert (=> b!3600773 (= c!623206 ((_ is ElementMatch!10365) (regex!5606 rule!403)))))

(declare-fun b!3600774 () Bool)

(assert (=> b!3600774 (= e!2228199 call!260409)))

(declare-fun bm!260404 () Bool)

(assert (=> bm!260404 (= call!260410 (usedCharacters!820 (ite c!623205 (reg!10694 (regex!5606 rule!403)) (ite c!623204 (regTwo!21243 (regex!5606 rule!403)) (regOne!21242 (regex!5606 rule!403))))))))

(declare-fun b!3600775 () Bool)

(assert (=> b!3600775 (= e!2228201 Nil!37873)))

(declare-fun bm!260405 () Bool)

(assert (=> bm!260405 (= call!260409 (++!9422 (ite c!623204 call!260407 call!260408) (ite c!623204 call!260408 call!260407)))))

(declare-fun b!3600776 () Bool)

(assert (=> b!3600776 (= e!2228200 call!260410)))

(assert (= (and d!1060952 c!623207) b!3600775))

(assert (= (and d!1060952 (not c!623207)) b!3600773))

(assert (= (and b!3600773 c!623206) b!3600771))

(assert (= (and b!3600773 (not c!623206)) b!3600772))

(assert (= (and b!3600772 c!623205) b!3600776))

(assert (= (and b!3600772 (not c!623205)) b!3600770))

(assert (= (and b!3600770 c!623204) b!3600774))

(assert (= (and b!3600770 (not c!623204)) b!3600769))

(assert (= (or b!3600774 b!3600769) bm!260403))

(assert (= (or b!3600774 b!3600769) bm!260402))

(assert (= (or b!3600774 b!3600769) bm!260405))

(assert (= (or b!3600776 bm!260402) bm!260404))

(declare-fun m!4096627 () Bool)

(assert (=> bm!260403 m!4096627))

(declare-fun m!4096629 () Bool)

(assert (=> bm!260404 m!4096629))

(declare-fun m!4096631 () Bool)

(assert (=> bm!260405 m!4096631))

(assert (=> b!3600386 d!1060952))

(declare-fun d!1060968 () Bool)

(declare-fun lt!1237015 () Bool)

(assert (=> d!1060968 (= lt!1237015 (select (content!5404 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2228203 () Bool)

(assert (=> d!1060968 (= lt!1237015 e!2228203)))

(declare-fun res!1455197 () Bool)

(assert (=> d!1060968 (=> (not res!1455197) (not e!2228203))))

(assert (=> d!1060968 (= res!1455197 ((_ is Cons!37875) rules!3307))))

(assert (=> d!1060968 (= (contains!7276 rules!3307 anOtherTypeRule!33) lt!1237015)))

(declare-fun b!3600777 () Bool)

(declare-fun e!2228202 () Bool)

(assert (=> b!3600777 (= e!2228203 e!2228202)))

(declare-fun res!1455196 () Bool)

(assert (=> b!3600777 (=> res!1455196 e!2228202)))

(assert (=> b!3600777 (= res!1455196 (= (h!43295 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3600778 () Bool)

(assert (=> b!3600778 (= e!2228202 (contains!7276 (t!292210 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1060968 res!1455197) b!3600777))

(assert (= (and b!3600777 (not res!1455196)) b!3600778))

(assert (=> d!1060968 m!4096449))

(declare-fun m!4096633 () Bool)

(assert (=> d!1060968 m!4096633))

(declare-fun m!4096635 () Bool)

(assert (=> b!3600778 m!4096635))

(assert (=> b!3600365 d!1060968))

(declare-fun d!1060970 () Bool)

(assert (=> d!1060970 (= (isEmpty!22342 suffix!1395) ((_ is Nil!37873) suffix!1395))))

(assert (=> b!3600352 d!1060970))

(declare-fun d!1060972 () Bool)

(declare-fun isEmpty!22345 (Option!7842) Bool)

(assert (=> d!1060972 (= (isDefined!6074 lt!1236925) (not (isEmpty!22345 lt!1236925)))))

(declare-fun bs!570535 () Bool)

(assert (= bs!570535 d!1060972))

(declare-fun m!4096637 () Bool)

(assert (=> bs!570535 m!4096637))

(assert (=> b!3600369 d!1060972))

(declare-fun b!3600797 () Bool)

(declare-fun res!1455213 () Bool)

(declare-fun e!2228212 () Bool)

(assert (=> b!3600797 (=> (not res!1455213) (not e!2228212))))

(declare-fun lt!1237027 () Option!7842)

(assert (=> b!3600797 (= res!1455213 (= (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237027)))) (originalCharacters!6320 (_1!22016 (get!12255 lt!1237027)))))))

(declare-fun b!3600798 () Bool)

(declare-fun res!1455215 () Bool)

(assert (=> b!3600798 (=> (not res!1455215) (not e!2228212))))

(assert (=> b!3600798 (= res!1455215 (= (value!180231 (_1!22016 (get!12255 lt!1237027))) (apply!9112 (transformation!5606 (rule!8340 (_1!22016 (get!12255 lt!1237027)))) (seqFromList!4159 (originalCharacters!6320 (_1!22016 (get!12255 lt!1237027)))))))))

(declare-fun b!3600799 () Bool)

(declare-fun res!1455218 () Bool)

(assert (=> b!3600799 (=> (not res!1455218) (not e!2228212))))

(assert (=> b!3600799 (= res!1455218 (matchR!4934 (regex!5606 (rule!8340 (_1!22016 (get!12255 lt!1237027)))) (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237027))))))))

(declare-fun d!1060974 () Bool)

(declare-fun e!2228211 () Bool)

(assert (=> d!1060974 e!2228211))

(declare-fun res!1455214 () Bool)

(assert (=> d!1060974 (=> res!1455214 e!2228211)))

(assert (=> d!1060974 (= res!1455214 (isEmpty!22345 lt!1237027))))

(declare-fun e!2228210 () Option!7842)

(assert (=> d!1060974 (= lt!1237027 e!2228210)))

(declare-fun c!623210 () Bool)

(assert (=> d!1060974 (= c!623210 (and ((_ is Cons!37875) rules!3307) ((_ is Nil!37875) (t!292210 rules!3307))))))

(declare-fun lt!1237028 () Unit!53909)

(declare-fun lt!1237029 () Unit!53909)

(assert (=> d!1060974 (= lt!1237028 lt!1237029)))

(assert (=> d!1060974 (isPrefix!2969 lt!1236907 lt!1236907)))

(declare-fun lemmaIsPrefixRefl!1900 (List!37997 List!37997) Unit!53909)

(assert (=> d!1060974 (= lt!1237029 (lemmaIsPrefixRefl!1900 lt!1236907 lt!1236907))))

(declare-fun rulesValidInductive!1965 (LexerInterface!5195 List!37999) Bool)

(assert (=> d!1060974 (rulesValidInductive!1965 thiss!23823 rules!3307)))

(assert (=> d!1060974 (= (maxPrefix!2729 thiss!23823 rules!3307 lt!1236907) lt!1237027)))

(declare-fun bm!260408 () Bool)

(declare-fun call!260413 () Option!7842)

(assert (=> bm!260408 (= call!260413 (maxPrefixOneRule!1873 thiss!23823 (h!43295 rules!3307) lt!1236907))))

(declare-fun b!3600800 () Bool)

(declare-fun res!1455216 () Bool)

(assert (=> b!3600800 (=> (not res!1455216) (not e!2228212))))

(assert (=> b!3600800 (= res!1455216 (< (size!28862 (_2!22016 (get!12255 lt!1237027))) (size!28862 lt!1236907)))))

(declare-fun b!3600801 () Bool)

(assert (=> b!3600801 (= e!2228212 (contains!7276 rules!3307 (rule!8340 (_1!22016 (get!12255 lt!1237027)))))))

(declare-fun b!3600802 () Bool)

(declare-fun res!1455217 () Bool)

(assert (=> b!3600802 (=> (not res!1455217) (not e!2228212))))

(assert (=> b!3600802 (= res!1455217 (= (++!9422 (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237027)))) (_2!22016 (get!12255 lt!1237027))) lt!1236907))))

(declare-fun b!3600803 () Bool)

(assert (=> b!3600803 (= e!2228210 call!260413)))

(declare-fun b!3600804 () Bool)

(assert (=> b!3600804 (= e!2228211 e!2228212)))

(declare-fun res!1455212 () Bool)

(assert (=> b!3600804 (=> (not res!1455212) (not e!2228212))))

(assert (=> b!3600804 (= res!1455212 (isDefined!6074 lt!1237027))))

(declare-fun b!3600805 () Bool)

(declare-fun lt!1237026 () Option!7842)

(declare-fun lt!1237030 () Option!7842)

(assert (=> b!3600805 (= e!2228210 (ite (and ((_ is None!7841) lt!1237026) ((_ is None!7841) lt!1237030)) None!7841 (ite ((_ is None!7841) lt!1237030) lt!1237026 (ite ((_ is None!7841) lt!1237026) lt!1237030 (ite (>= (size!28860 (_1!22016 (v!37551 lt!1237026))) (size!28860 (_1!22016 (v!37551 lt!1237030)))) lt!1237026 lt!1237030)))))))

(assert (=> b!3600805 (= lt!1237026 call!260413)))

(assert (=> b!3600805 (= lt!1237030 (maxPrefix!2729 thiss!23823 (t!292210 rules!3307) lt!1236907))))

(assert (= (and d!1060974 c!623210) b!3600803))

(assert (= (and d!1060974 (not c!623210)) b!3600805))

(assert (= (or b!3600803 b!3600805) bm!260408))

(assert (= (and d!1060974 (not res!1455214)) b!3600804))

(assert (= (and b!3600804 res!1455212) b!3600797))

(assert (= (and b!3600797 res!1455213) b!3600800))

(assert (= (and b!3600800 res!1455216) b!3600802))

(assert (= (and b!3600802 res!1455217) b!3600798))

(assert (= (and b!3600798 res!1455215) b!3600799))

(assert (= (and b!3600799 res!1455218) b!3600801))

(declare-fun m!4096639 () Bool)

(assert (=> bm!260408 m!4096639))

(declare-fun m!4096641 () Bool)

(assert (=> b!3600800 m!4096641))

(declare-fun m!4096643 () Bool)

(assert (=> b!3600800 m!4096643))

(declare-fun m!4096645 () Bool)

(assert (=> b!3600800 m!4096645))

(declare-fun m!4096647 () Bool)

(assert (=> d!1060974 m!4096647))

(declare-fun m!4096649 () Bool)

(assert (=> d!1060974 m!4096649))

(declare-fun m!4096651 () Bool)

(assert (=> d!1060974 m!4096651))

(declare-fun m!4096653 () Bool)

(assert (=> d!1060974 m!4096653))

(declare-fun m!4096655 () Bool)

(assert (=> b!3600804 m!4096655))

(declare-fun m!4096657 () Bool)

(assert (=> b!3600805 m!4096657))

(assert (=> b!3600798 m!4096641))

(declare-fun m!4096659 () Bool)

(assert (=> b!3600798 m!4096659))

(assert (=> b!3600798 m!4096659))

(declare-fun m!4096661 () Bool)

(assert (=> b!3600798 m!4096661))

(assert (=> b!3600801 m!4096641))

(declare-fun m!4096663 () Bool)

(assert (=> b!3600801 m!4096663))

(assert (=> b!3600797 m!4096641))

(declare-fun m!4096665 () Bool)

(assert (=> b!3600797 m!4096665))

(assert (=> b!3600797 m!4096665))

(declare-fun m!4096667 () Bool)

(assert (=> b!3600797 m!4096667))

(assert (=> b!3600799 m!4096641))

(assert (=> b!3600799 m!4096665))

(assert (=> b!3600799 m!4096665))

(assert (=> b!3600799 m!4096667))

(assert (=> b!3600799 m!4096667))

(declare-fun m!4096669 () Bool)

(assert (=> b!3600799 m!4096669))

(assert (=> b!3600802 m!4096641))

(assert (=> b!3600802 m!4096665))

(assert (=> b!3600802 m!4096665))

(assert (=> b!3600802 m!4096667))

(assert (=> b!3600802 m!4096667))

(declare-fun m!4096671 () Bool)

(assert (=> b!3600802 m!4096671))

(assert (=> b!3600369 d!1060974))

(declare-fun d!1060976 () Bool)

(declare-fun list!13952 (Conc!11531) List!37997)

(assert (=> d!1060976 (= (list!13950 (charsOf!3620 token!511)) (list!13952 (c!623121 (charsOf!3620 token!511))))))

(declare-fun bs!570536 () Bool)

(assert (= bs!570536 d!1060976))

(declare-fun m!4096673 () Bool)

(assert (=> bs!570536 m!4096673))

(assert (=> b!3600369 d!1060976))

(declare-fun d!1060978 () Bool)

(declare-fun lt!1237033 () BalanceConc!22676)

(assert (=> d!1060978 (= (list!13950 lt!1237033) (originalCharacters!6320 token!511))))

(assert (=> d!1060978 (= lt!1237033 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (value!180231 token!511)))))

(assert (=> d!1060978 (= (charsOf!3620 token!511) lt!1237033)))

(declare-fun b_lambda!106477 () Bool)

(assert (=> (not b_lambda!106477) (not d!1060978)))

(assert (=> d!1060978 t!292236))

(declare-fun b_and!261539 () Bool)

(assert (= b_and!261531 (and (=> t!292236 result!251106) b_and!261539)))

(assert (=> d!1060978 t!292238))

(declare-fun b_and!261541 () Bool)

(assert (= b_and!261533 (and (=> t!292238 result!251110) b_and!261541)))

(assert (=> d!1060978 t!292240))

(declare-fun b_and!261543 () Bool)

(assert (= b_and!261535 (and (=> t!292240 result!251112) b_and!261543)))

(assert (=> d!1060978 t!292242))

(declare-fun b_and!261545 () Bool)

(assert (= b_and!261537 (and (=> t!292242 result!251114) b_and!261545)))

(declare-fun m!4096675 () Bool)

(assert (=> d!1060978 m!4096675))

(assert (=> d!1060978 m!4096409))

(assert (=> b!3600369 d!1060978))

(declare-fun b!3600815 () Bool)

(declare-fun res!1455227 () Bool)

(declare-fun e!2228221 () Bool)

(assert (=> b!3600815 (=> (not res!1455227) (not e!2228221))))

(assert (=> b!3600815 (= res!1455227 (= (head!7548 lt!1236900) (head!7548 lt!1236902)))))

(declare-fun b!3600816 () Bool)

(assert (=> b!3600816 (= e!2228221 (isPrefix!2969 (tail!5581 lt!1236900) (tail!5581 lt!1236902)))))

(declare-fun b!3600814 () Bool)

(declare-fun e!2228219 () Bool)

(assert (=> b!3600814 (= e!2228219 e!2228221)))

(declare-fun res!1455230 () Bool)

(assert (=> b!3600814 (=> (not res!1455230) (not e!2228221))))

(assert (=> b!3600814 (= res!1455230 (not ((_ is Nil!37873) lt!1236902)))))

(declare-fun d!1060980 () Bool)

(declare-fun e!2228220 () Bool)

(assert (=> d!1060980 e!2228220))

(declare-fun res!1455228 () Bool)

(assert (=> d!1060980 (=> res!1455228 e!2228220)))

(declare-fun lt!1237036 () Bool)

(assert (=> d!1060980 (= res!1455228 (not lt!1237036))))

(assert (=> d!1060980 (= lt!1237036 e!2228219)))

(declare-fun res!1455229 () Bool)

(assert (=> d!1060980 (=> res!1455229 e!2228219)))

(assert (=> d!1060980 (= res!1455229 ((_ is Nil!37873) lt!1236900))))

(assert (=> d!1060980 (= (isPrefix!2969 lt!1236900 lt!1236902) lt!1237036)))

(declare-fun b!3600817 () Bool)

(assert (=> b!3600817 (= e!2228220 (>= (size!28862 lt!1236902) (size!28862 lt!1236900)))))

(assert (= (and d!1060980 (not res!1455229)) b!3600814))

(assert (= (and b!3600814 res!1455230) b!3600815))

(assert (= (and b!3600815 res!1455227) b!3600816))

(assert (= (and d!1060980 (not res!1455228)) b!3600817))

(assert (=> b!3600815 m!4096227))

(declare-fun m!4096677 () Bool)

(assert (=> b!3600815 m!4096677))

(assert (=> b!3600816 m!4096525))

(declare-fun m!4096679 () Bool)

(assert (=> b!3600816 m!4096679))

(assert (=> b!3600816 m!4096525))

(assert (=> b!3600816 m!4096679))

(declare-fun m!4096681 () Bool)

(assert (=> b!3600816 m!4096681))

(declare-fun m!4096683 () Bool)

(assert (=> b!3600817 m!4096683))

(assert (=> b!3600817 m!4096245))

(assert (=> b!3600371 d!1060980))

(declare-fun d!1060982 () Bool)

(declare-fun lt!1237037 () BalanceConc!22676)

(assert (=> d!1060982 (= (list!13950 lt!1237037) (originalCharacters!6320 (_1!22016 lt!1236914)))))

(assert (=> d!1060982 (= lt!1237037 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (value!180231 (_1!22016 lt!1236914))))))

(assert (=> d!1060982 (= (charsOf!3620 (_1!22016 lt!1236914)) lt!1237037)))

(declare-fun b_lambda!106479 () Bool)

(assert (=> (not b_lambda!106479) (not d!1060982)))

(declare-fun t!292244 () Bool)

(declare-fun tb!206009 () Bool)

(assert (=> (and b!3600384 (= (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292244) tb!206009))

(declare-fun b!3600818 () Bool)

(declare-fun e!2228222 () Bool)

(declare-fun tp!1101420 () Bool)

(assert (=> b!3600818 (= e!2228222 (and (inv!51234 (c!623121 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (value!180231 (_1!22016 lt!1236914))))) tp!1101420))))

(declare-fun result!251116 () Bool)

(assert (=> tb!206009 (= result!251116 (and (inv!51235 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (value!180231 (_1!22016 lt!1236914)))) e!2228222))))

(assert (= tb!206009 b!3600818))

(declare-fun m!4096685 () Bool)

(assert (=> b!3600818 m!4096685))

(declare-fun m!4096687 () Bool)

(assert (=> tb!206009 m!4096687))

(assert (=> d!1060982 t!292244))

(declare-fun b_and!261547 () Bool)

(assert (= b_and!261539 (and (=> t!292244 result!251116) b_and!261547)))

(declare-fun t!292246 () Bool)

(declare-fun tb!206011 () Bool)

(assert (=> (and b!3600373 (= (toChars!7749 (transformation!5606 rule!403)) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292246) tb!206011))

(declare-fun result!251118 () Bool)

(assert (= result!251118 result!251116))

(assert (=> d!1060982 t!292246))

(declare-fun b_and!261549 () Bool)

(assert (= b_and!261541 (and (=> t!292246 result!251118) b_and!261549)))

(declare-fun t!292248 () Bool)

(declare-fun tb!206013 () Bool)

(assert (=> (and b!3600379 (= (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292248) tb!206013))

(declare-fun result!251120 () Bool)

(assert (= result!251120 result!251116))

(assert (=> d!1060982 t!292248))

(declare-fun b_and!261551 () Bool)

(assert (= b_and!261543 (and (=> t!292248 result!251120) b_and!261551)))

(declare-fun t!292250 () Bool)

(declare-fun tb!206015 () Bool)

(assert (=> (and b!3600383 (= (toChars!7749 (transformation!5606 (rule!8340 token!511))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292250) tb!206015))

(declare-fun result!251122 () Bool)

(assert (= result!251122 result!251116))

(assert (=> d!1060982 t!292250))

(declare-fun b_and!261553 () Bool)

(assert (= b_and!261545 (and (=> t!292250 result!251122) b_and!261553)))

(declare-fun m!4096689 () Bool)

(assert (=> d!1060982 m!4096689))

(declare-fun m!4096691 () Bool)

(assert (=> d!1060982 m!4096691))

(assert (=> b!3600371 d!1060982))

(declare-fun d!1060984 () Bool)

(declare-fun isEmpty!22346 (Option!7843) Bool)

(assert (=> d!1060984 (= (isDefined!6075 lt!1236923) (not (isEmpty!22346 lt!1236923)))))

(declare-fun bs!570537 () Bool)

(assert (= bs!570537 d!1060984))

(declare-fun m!4096693 () Bool)

(assert (=> bs!570537 m!4096693))

(assert (=> b!3600371 d!1060984))

(declare-fun b!3600820 () Bool)

(declare-fun res!1455231 () Bool)

(declare-fun e!2228225 () Bool)

(assert (=> b!3600820 (=> (not res!1455231) (not e!2228225))))

(assert (=> b!3600820 (= res!1455231 (= (head!7548 lt!1236907) (head!7548 lt!1236902)))))

(declare-fun b!3600821 () Bool)

(assert (=> b!3600821 (= e!2228225 (isPrefix!2969 (tail!5581 lt!1236907) (tail!5581 lt!1236902)))))

(declare-fun b!3600819 () Bool)

(declare-fun e!2228223 () Bool)

(assert (=> b!3600819 (= e!2228223 e!2228225)))

(declare-fun res!1455234 () Bool)

(assert (=> b!3600819 (=> (not res!1455234) (not e!2228225))))

(assert (=> b!3600819 (= res!1455234 (not ((_ is Nil!37873) lt!1236902)))))

(declare-fun d!1060986 () Bool)

(declare-fun e!2228224 () Bool)

(assert (=> d!1060986 e!2228224))

(declare-fun res!1455232 () Bool)

(assert (=> d!1060986 (=> res!1455232 e!2228224)))

(declare-fun lt!1237038 () Bool)

(assert (=> d!1060986 (= res!1455232 (not lt!1237038))))

(assert (=> d!1060986 (= lt!1237038 e!2228223)))

(declare-fun res!1455233 () Bool)

(assert (=> d!1060986 (=> res!1455233 e!2228223)))

(assert (=> d!1060986 (= res!1455233 ((_ is Nil!37873) lt!1236907))))

(assert (=> d!1060986 (= (isPrefix!2969 lt!1236907 lt!1236902) lt!1237038)))

(declare-fun b!3600822 () Bool)

(assert (=> b!3600822 (= e!2228224 (>= (size!28862 lt!1236902) (size!28862 lt!1236907)))))

(assert (= (and d!1060986 (not res!1455233)) b!3600819))

(assert (= (and b!3600819 res!1455234) b!3600820))

(assert (= (and b!3600820 res!1455231) b!3600821))

(assert (= (and d!1060986 (not res!1455232)) b!3600822))

(assert (=> b!3600820 m!4096385))

(assert (=> b!3600820 m!4096677))

(assert (=> b!3600821 m!4096391))

(assert (=> b!3600821 m!4096679))

(assert (=> b!3600821 m!4096391))

(assert (=> b!3600821 m!4096679))

(declare-fun m!4096695 () Bool)

(assert (=> b!3600821 m!4096695))

(assert (=> b!3600822 m!4096683))

(assert (=> b!3600822 m!4096645))

(assert (=> b!3600371 d!1060986))

(declare-fun d!1060988 () Bool)

(assert (=> d!1060988 (= (list!13950 lt!1236901) (list!13952 (c!623121 lt!1236901)))))

(declare-fun bs!570538 () Bool)

(assert (= bs!570538 d!1060988))

(declare-fun m!4096697 () Bool)

(assert (=> bs!570538 m!4096697))

(assert (=> b!3600371 d!1060988))

(declare-fun b!3600823 () Bool)

(declare-fun res!1455236 () Bool)

(declare-fun e!2228228 () Bool)

(assert (=> b!3600823 (=> (not res!1455236) (not e!2228228))))

(declare-fun lt!1237040 () Option!7842)

(assert (=> b!3600823 (= res!1455236 (= (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237040)))) (originalCharacters!6320 (_1!22016 (get!12255 lt!1237040)))))))

(declare-fun b!3600824 () Bool)

(declare-fun res!1455238 () Bool)

(assert (=> b!3600824 (=> (not res!1455238) (not e!2228228))))

(assert (=> b!3600824 (= res!1455238 (= (value!180231 (_1!22016 (get!12255 lt!1237040))) (apply!9112 (transformation!5606 (rule!8340 (_1!22016 (get!12255 lt!1237040)))) (seqFromList!4159 (originalCharacters!6320 (_1!22016 (get!12255 lt!1237040)))))))))

(declare-fun b!3600825 () Bool)

(declare-fun res!1455241 () Bool)

(assert (=> b!3600825 (=> (not res!1455241) (not e!2228228))))

(assert (=> b!3600825 (= res!1455241 (matchR!4934 (regex!5606 (rule!8340 (_1!22016 (get!12255 lt!1237040)))) (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237040))))))))

(declare-fun d!1060990 () Bool)

(declare-fun e!2228227 () Bool)

(assert (=> d!1060990 e!2228227))

(declare-fun res!1455237 () Bool)

(assert (=> d!1060990 (=> res!1455237 e!2228227)))

(assert (=> d!1060990 (= res!1455237 (isEmpty!22345 lt!1237040))))

(declare-fun e!2228226 () Option!7842)

(assert (=> d!1060990 (= lt!1237040 e!2228226)))

(declare-fun c!623211 () Bool)

(assert (=> d!1060990 (= c!623211 (and ((_ is Cons!37875) rules!3307) ((_ is Nil!37875) (t!292210 rules!3307))))))

(declare-fun lt!1237041 () Unit!53909)

(declare-fun lt!1237042 () Unit!53909)

(assert (=> d!1060990 (= lt!1237041 lt!1237042)))

(assert (=> d!1060990 (isPrefix!2969 lt!1236902 lt!1236902)))

(assert (=> d!1060990 (= lt!1237042 (lemmaIsPrefixRefl!1900 lt!1236902 lt!1236902))))

(assert (=> d!1060990 (rulesValidInductive!1965 thiss!23823 rules!3307)))

(assert (=> d!1060990 (= (maxPrefix!2729 thiss!23823 rules!3307 lt!1236902) lt!1237040)))

(declare-fun call!260414 () Option!7842)

(declare-fun bm!260409 () Bool)

(assert (=> bm!260409 (= call!260414 (maxPrefixOneRule!1873 thiss!23823 (h!43295 rules!3307) lt!1236902))))

(declare-fun b!3600826 () Bool)

(declare-fun res!1455239 () Bool)

(assert (=> b!3600826 (=> (not res!1455239) (not e!2228228))))

(assert (=> b!3600826 (= res!1455239 (< (size!28862 (_2!22016 (get!12255 lt!1237040))) (size!28862 lt!1236902)))))

(declare-fun b!3600827 () Bool)

(assert (=> b!3600827 (= e!2228228 (contains!7276 rules!3307 (rule!8340 (_1!22016 (get!12255 lt!1237040)))))))

(declare-fun b!3600828 () Bool)

(declare-fun res!1455240 () Bool)

(assert (=> b!3600828 (=> (not res!1455240) (not e!2228228))))

(assert (=> b!3600828 (= res!1455240 (= (++!9422 (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237040)))) (_2!22016 (get!12255 lt!1237040))) lt!1236902))))

(declare-fun b!3600829 () Bool)

(assert (=> b!3600829 (= e!2228226 call!260414)))

(declare-fun b!3600830 () Bool)

(assert (=> b!3600830 (= e!2228227 e!2228228)))

(declare-fun res!1455235 () Bool)

(assert (=> b!3600830 (=> (not res!1455235) (not e!2228228))))

(assert (=> b!3600830 (= res!1455235 (isDefined!6074 lt!1237040))))

(declare-fun b!3600831 () Bool)

(declare-fun lt!1237039 () Option!7842)

(declare-fun lt!1237043 () Option!7842)

(assert (=> b!3600831 (= e!2228226 (ite (and ((_ is None!7841) lt!1237039) ((_ is None!7841) lt!1237043)) None!7841 (ite ((_ is None!7841) lt!1237043) lt!1237039 (ite ((_ is None!7841) lt!1237039) lt!1237043 (ite (>= (size!28860 (_1!22016 (v!37551 lt!1237039))) (size!28860 (_1!22016 (v!37551 lt!1237043)))) lt!1237039 lt!1237043)))))))

(assert (=> b!3600831 (= lt!1237039 call!260414)))

(assert (=> b!3600831 (= lt!1237043 (maxPrefix!2729 thiss!23823 (t!292210 rules!3307) lt!1236902))))

(assert (= (and d!1060990 c!623211) b!3600829))

(assert (= (and d!1060990 (not c!623211)) b!3600831))

(assert (= (or b!3600829 b!3600831) bm!260409))

(assert (= (and d!1060990 (not res!1455237)) b!3600830))

(assert (= (and b!3600830 res!1455235) b!3600823))

(assert (= (and b!3600823 res!1455236) b!3600826))

(assert (= (and b!3600826 res!1455239) b!3600828))

(assert (= (and b!3600828 res!1455240) b!3600824))

(assert (= (and b!3600824 res!1455238) b!3600825))

(assert (= (and b!3600825 res!1455241) b!3600827))

(declare-fun m!4096699 () Bool)

(assert (=> bm!260409 m!4096699))

(declare-fun m!4096701 () Bool)

(assert (=> b!3600826 m!4096701))

(declare-fun m!4096703 () Bool)

(assert (=> b!3600826 m!4096703))

(assert (=> b!3600826 m!4096683))

(declare-fun m!4096705 () Bool)

(assert (=> d!1060990 m!4096705))

(declare-fun m!4096707 () Bool)

(assert (=> d!1060990 m!4096707))

(declare-fun m!4096709 () Bool)

(assert (=> d!1060990 m!4096709))

(assert (=> d!1060990 m!4096653))

(declare-fun m!4096711 () Bool)

(assert (=> b!3600830 m!4096711))

(declare-fun m!4096713 () Bool)

(assert (=> b!3600831 m!4096713))

(assert (=> b!3600824 m!4096701))

(declare-fun m!4096715 () Bool)

(assert (=> b!3600824 m!4096715))

(assert (=> b!3600824 m!4096715))

(declare-fun m!4096717 () Bool)

(assert (=> b!3600824 m!4096717))

(assert (=> b!3600827 m!4096701))

(declare-fun m!4096719 () Bool)

(assert (=> b!3600827 m!4096719))

(assert (=> b!3600823 m!4096701))

(declare-fun m!4096721 () Bool)

(assert (=> b!3600823 m!4096721))

(assert (=> b!3600823 m!4096721))

(declare-fun m!4096723 () Bool)

(assert (=> b!3600823 m!4096723))

(assert (=> b!3600825 m!4096701))

(assert (=> b!3600825 m!4096721))

(assert (=> b!3600825 m!4096721))

(assert (=> b!3600825 m!4096723))

(assert (=> b!3600825 m!4096723))

(declare-fun m!4096725 () Bool)

(assert (=> b!3600825 m!4096725))

(assert (=> b!3600828 m!4096701))

(assert (=> b!3600828 m!4096721))

(assert (=> b!3600828 m!4096721))

(assert (=> b!3600828 m!4096723))

(assert (=> b!3600828 m!4096723))

(declare-fun m!4096727 () Bool)

(assert (=> b!3600828 m!4096727))

(assert (=> b!3600371 d!1060990))

(declare-fun d!1060992 () Bool)

(assert (=> d!1060992 (= (get!12255 lt!1236926) (v!37551 lt!1236926))))

(assert (=> b!3600371 d!1060992))

(declare-fun d!1060994 () Bool)

(assert (=> d!1060994 (isPrefix!2969 lt!1236900 (++!9422 lt!1236900 (_2!22016 lt!1236914)))))

(declare-fun lt!1237046 () Unit!53909)

(declare-fun choose!20991 (List!37997 List!37997) Unit!53909)

(assert (=> d!1060994 (= lt!1237046 (choose!20991 lt!1236900 (_2!22016 lt!1236914)))))

(assert (=> d!1060994 (= (lemmaConcatTwoListThenFirstIsPrefix!1890 lt!1236900 (_2!22016 lt!1236914)) lt!1237046)))

(declare-fun bs!570539 () Bool)

(assert (= bs!570539 d!1060994))

(assert (=> bs!570539 m!4096143))

(assert (=> bs!570539 m!4096143))

(assert (=> bs!570539 m!4096169))

(declare-fun m!4096729 () Bool)

(assert (=> bs!570539 m!4096729))

(assert (=> b!3600371 d!1060994))

(declare-fun b!3600844 () Bool)

(declare-fun e!2228239 () Option!7843)

(declare-fun e!2228238 () Option!7843)

(assert (=> b!3600844 (= e!2228239 e!2228238)))

(declare-fun c!623217 () Bool)

(assert (=> b!3600844 (= c!623217 (and ((_ is Cons!37875) rules!3307) (not (= (tag!6296 (h!43295 rules!3307)) (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))))))

(declare-fun b!3600845 () Bool)

(assert (=> b!3600845 (= e!2228239 (Some!7842 (h!43295 rules!3307)))))

(declare-fun b!3600846 () Bool)

(declare-fun e!2228237 () Bool)

(declare-fun lt!1237055 () Option!7843)

(assert (=> b!3600846 (= e!2228237 (= (tag!6296 (get!12256 lt!1237055)) (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun d!1060996 () Bool)

(declare-fun e!2228240 () Bool)

(assert (=> d!1060996 e!2228240))

(declare-fun res!1455247 () Bool)

(assert (=> d!1060996 (=> res!1455247 e!2228240)))

(assert (=> d!1060996 (= res!1455247 (isEmpty!22346 lt!1237055))))

(assert (=> d!1060996 (= lt!1237055 e!2228239)))

(declare-fun c!623216 () Bool)

(assert (=> d!1060996 (= c!623216 (and ((_ is Cons!37875) rules!3307) (= (tag!6296 (h!43295 rules!3307)) (tag!6296 (rule!8340 (_1!22016 lt!1236914))))))))

(assert (=> d!1060996 (rulesInvariant!4592 thiss!23823 rules!3307)))

(assert (=> d!1060996 (= (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 (_1!22016 lt!1236914)))) lt!1237055)))

(declare-fun b!3600847 () Bool)

(assert (=> b!3600847 (= e!2228240 e!2228237)))

(declare-fun res!1455246 () Bool)

(assert (=> b!3600847 (=> (not res!1455246) (not e!2228237))))

(assert (=> b!3600847 (= res!1455246 (contains!7276 rules!3307 (get!12256 lt!1237055)))))

(declare-fun b!3600848 () Bool)

(assert (=> b!3600848 (= e!2228238 None!7842)))

(declare-fun b!3600849 () Bool)

(declare-fun lt!1237053 () Unit!53909)

(declare-fun lt!1237054 () Unit!53909)

(assert (=> b!3600849 (= lt!1237053 lt!1237054)))

(assert (=> b!3600849 (rulesInvariant!4592 thiss!23823 (t!292210 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!513 (LexerInterface!5195 Rule!11012 List!37999) Unit!53909)

(assert (=> b!3600849 (= lt!1237054 (lemmaInvariantOnRulesThenOnTail!513 thiss!23823 (h!43295 rules!3307) (t!292210 rules!3307)))))

(assert (=> b!3600849 (= e!2228238 (getRuleFromTag!1212 thiss!23823 (t!292210 rules!3307) (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))))

(assert (= (and d!1060996 c!623216) b!3600845))

(assert (= (and d!1060996 (not c!623216)) b!3600844))

(assert (= (and b!3600844 c!623217) b!3600849))

(assert (= (and b!3600844 (not c!623217)) b!3600848))

(assert (= (and d!1060996 (not res!1455247)) b!3600847))

(assert (= (and b!3600847 res!1455246) b!3600846))

(declare-fun m!4096731 () Bool)

(assert (=> b!3600846 m!4096731))

(declare-fun m!4096733 () Bool)

(assert (=> d!1060996 m!4096733))

(assert (=> d!1060996 m!4096203))

(assert (=> b!3600847 m!4096731))

(assert (=> b!3600847 m!4096731))

(declare-fun m!4096735 () Bool)

(assert (=> b!3600847 m!4096735))

(declare-fun m!4096737 () Bool)

(assert (=> b!3600849 m!4096737))

(declare-fun m!4096739 () Bool)

(assert (=> b!3600849 m!4096739))

(declare-fun m!4096741 () Bool)

(assert (=> b!3600849 m!4096741))

(assert (=> b!3600371 d!1060996))

(declare-fun b!3600851 () Bool)

(declare-fun res!1455248 () Bool)

(declare-fun e!2228243 () Bool)

(assert (=> b!3600851 (=> (not res!1455248) (not e!2228243))))

(assert (=> b!3600851 (= res!1455248 (= (head!7548 lt!1236900) (head!7548 (++!9422 lt!1236900 (_2!22016 lt!1236914)))))))

(declare-fun b!3600852 () Bool)

(assert (=> b!3600852 (= e!2228243 (isPrefix!2969 (tail!5581 lt!1236900) (tail!5581 (++!9422 lt!1236900 (_2!22016 lt!1236914)))))))

(declare-fun b!3600850 () Bool)

(declare-fun e!2228241 () Bool)

(assert (=> b!3600850 (= e!2228241 e!2228243)))

(declare-fun res!1455251 () Bool)

(assert (=> b!3600850 (=> (not res!1455251) (not e!2228243))))

(assert (=> b!3600850 (= res!1455251 (not ((_ is Nil!37873) (++!9422 lt!1236900 (_2!22016 lt!1236914)))))))

(declare-fun d!1060998 () Bool)

(declare-fun e!2228242 () Bool)

(assert (=> d!1060998 e!2228242))

(declare-fun res!1455249 () Bool)

(assert (=> d!1060998 (=> res!1455249 e!2228242)))

(declare-fun lt!1237056 () Bool)

(assert (=> d!1060998 (= res!1455249 (not lt!1237056))))

(assert (=> d!1060998 (= lt!1237056 e!2228241)))

(declare-fun res!1455250 () Bool)

(assert (=> d!1060998 (=> res!1455250 e!2228241)))

(assert (=> d!1060998 (= res!1455250 ((_ is Nil!37873) lt!1236900))))

(assert (=> d!1060998 (= (isPrefix!2969 lt!1236900 (++!9422 lt!1236900 (_2!22016 lt!1236914))) lt!1237056)))

(declare-fun b!3600853 () Bool)

(assert (=> b!3600853 (= e!2228242 (>= (size!28862 (++!9422 lt!1236900 (_2!22016 lt!1236914))) (size!28862 lt!1236900)))))

(assert (= (and d!1060998 (not res!1455250)) b!3600850))

(assert (= (and b!3600850 res!1455251) b!3600851))

(assert (= (and b!3600851 res!1455248) b!3600852))

(assert (= (and d!1060998 (not res!1455249)) b!3600853))

(assert (=> b!3600851 m!4096227))

(assert (=> b!3600851 m!4096143))

(declare-fun m!4096743 () Bool)

(assert (=> b!3600851 m!4096743))

(assert (=> b!3600852 m!4096525))

(assert (=> b!3600852 m!4096143))

(declare-fun m!4096745 () Bool)

(assert (=> b!3600852 m!4096745))

(assert (=> b!3600852 m!4096525))

(assert (=> b!3600852 m!4096745))

(declare-fun m!4096747 () Bool)

(assert (=> b!3600852 m!4096747))

(assert (=> b!3600853 m!4096143))

(declare-fun m!4096749 () Bool)

(assert (=> b!3600853 m!4096749))

(assert (=> b!3600853 m!4096245))

(assert (=> b!3600371 d!1060998))

(declare-fun d!1061000 () Bool)

(declare-fun e!2228246 () Bool)

(assert (=> d!1061000 e!2228246))

(declare-fun res!1455256 () Bool)

(assert (=> d!1061000 (=> (not res!1455256) (not e!2228246))))

(assert (=> d!1061000 (= res!1455256 (isDefined!6075 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 (_1!22016 lt!1236914))))))))

(declare-fun lt!1237059 () Unit!53909)

(declare-fun choose!20993 (LexerInterface!5195 List!37999 List!37997 Token!10578) Unit!53909)

(assert (=> d!1061000 (= lt!1237059 (choose!20993 thiss!23823 rules!3307 lt!1236902 (_1!22016 lt!1236914)))))

(assert (=> d!1061000 (rulesInvariant!4592 thiss!23823 rules!3307)))

(assert (=> d!1061000 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1212 thiss!23823 rules!3307 lt!1236902 (_1!22016 lt!1236914)) lt!1237059)))

(declare-fun b!3600858 () Bool)

(declare-fun res!1455257 () Bool)

(assert (=> b!3600858 (=> (not res!1455257) (not e!2228246))))

(assert (=> b!3600858 (= res!1455257 (matchR!4934 (regex!5606 (get!12256 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))) (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))))))

(declare-fun b!3600859 () Bool)

(assert (=> b!3600859 (= e!2228246 (= (rule!8340 (_1!22016 lt!1236914)) (get!12256 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 (_1!22016 lt!1236914)))))))))

(assert (= (and d!1061000 res!1455256) b!3600858))

(assert (= (and b!3600858 res!1455257) b!3600859))

(assert (=> d!1061000 m!4096149))

(assert (=> d!1061000 m!4096149))

(declare-fun m!4096751 () Bool)

(assert (=> d!1061000 m!4096751))

(declare-fun m!4096753 () Bool)

(assert (=> d!1061000 m!4096753))

(assert (=> d!1061000 m!4096203))

(assert (=> b!3600858 m!4096151))

(assert (=> b!3600858 m!4096149))

(declare-fun m!4096755 () Bool)

(assert (=> b!3600858 m!4096755))

(assert (=> b!3600858 m!4096151))

(assert (=> b!3600858 m!4096259))

(assert (=> b!3600858 m!4096259))

(declare-fun m!4096757 () Bool)

(assert (=> b!3600858 m!4096757))

(assert (=> b!3600858 m!4096149))

(assert (=> b!3600859 m!4096149))

(assert (=> b!3600859 m!4096149))

(assert (=> b!3600859 m!4096755))

(assert (=> b!3600371 d!1061000))

(declare-fun b!3600951 () Bool)

(declare-fun e!2228298 () Unit!53909)

(declare-fun Unit!53915 () Unit!53909)

(assert (=> b!3600951 (= e!2228298 Unit!53915)))

(declare-fun lt!1237185 () List!37997)

(assert (=> b!3600951 (= lt!1237185 (++!9422 lt!1236907 suffix!1395))))

(declare-fun lt!1237196 () Unit!53909)

(declare-fun lt!1237188 () Token!10578)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!470 (LexerInterface!5195 Rule!11012 List!37999 List!37997) Unit!53909)

(assert (=> b!3600951 (= lt!1237196 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!470 thiss!23823 (rule!8340 lt!1237188) rules!3307 lt!1237185))))

(assert (=> b!3600951 (isEmpty!22345 (maxPrefixOneRule!1873 thiss!23823 (rule!8340 lt!1237188) lt!1237185))))

(declare-fun lt!1237193 () Unit!53909)

(assert (=> b!3600951 (= lt!1237193 lt!1237196)))

(declare-fun lt!1237180 () List!37997)

(assert (=> b!3600951 (= lt!1237180 (list!13950 (charsOf!3620 lt!1237188)))))

(declare-fun lt!1237181 () Unit!53909)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!458 (LexerInterface!5195 Rule!11012 List!37997 List!37997) Unit!53909)

(assert (=> b!3600951 (= lt!1237181 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!458 thiss!23823 (rule!8340 lt!1237188) lt!1237180 (++!9422 lt!1236907 suffix!1395)))))

(assert (=> b!3600951 (not (matchR!4934 (regex!5606 (rule!8340 lt!1237188)) lt!1237180))))

(declare-fun lt!1237191 () Unit!53909)

(assert (=> b!3600951 (= lt!1237191 lt!1237181)))

(assert (=> b!3600951 false))

(declare-fun b!3600950 () Bool)

(declare-fun e!2228299 () Bool)

(assert (=> b!3600950 (= e!2228299 (= (rule!8340 lt!1237188) (get!12256 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 lt!1237188))))))))

(declare-fun d!1061002 () Bool)

(assert (=> d!1061002 (isDefined!6074 (maxPrefix!2729 thiss!23823 rules!3307 (++!9422 lt!1236907 suffix!1395)))))

(declare-fun lt!1237195 () Unit!53909)

(assert (=> d!1061002 (= lt!1237195 e!2228298)))

(declare-fun c!623235 () Bool)

(assert (=> d!1061002 (= c!623235 (isEmpty!22345 (maxPrefix!2729 thiss!23823 rules!3307 (++!9422 lt!1236907 suffix!1395))))))

(declare-fun lt!1237184 () Unit!53909)

(declare-fun lt!1237190 () Unit!53909)

(assert (=> d!1061002 (= lt!1237184 lt!1237190)))

(assert (=> d!1061002 e!2228299))

(declare-fun res!1455315 () Bool)

(assert (=> d!1061002 (=> (not res!1455315) (not e!2228299))))

(assert (=> d!1061002 (= res!1455315 (isDefined!6075 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 lt!1237188)))))))

(assert (=> d!1061002 (= lt!1237190 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1212 thiss!23823 rules!3307 lt!1236907 lt!1237188))))

(declare-fun lt!1237186 () Unit!53909)

(declare-fun lt!1237194 () Unit!53909)

(assert (=> d!1061002 (= lt!1237186 lt!1237194)))

(declare-fun lt!1237192 () List!37997)

(assert (=> d!1061002 (isPrefix!2969 lt!1237192 (++!9422 lt!1236907 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!434 (List!37997 List!37997 List!37997) Unit!53909)

(assert (=> d!1061002 (= lt!1237194 (lemmaPrefixStaysPrefixWhenAddingToSuffix!434 lt!1237192 lt!1236907 suffix!1395))))

(assert (=> d!1061002 (= lt!1237192 (list!13950 (charsOf!3620 lt!1237188)))))

(declare-fun lt!1237182 () Unit!53909)

(declare-fun lt!1237187 () Unit!53909)

(assert (=> d!1061002 (= lt!1237182 lt!1237187)))

(declare-fun lt!1237189 () List!37997)

(declare-fun lt!1237183 () List!37997)

(assert (=> d!1061002 (isPrefix!2969 lt!1237189 (++!9422 lt!1237189 lt!1237183))))

(assert (=> d!1061002 (= lt!1237187 (lemmaConcatTwoListThenFirstIsPrefix!1890 lt!1237189 lt!1237183))))

(assert (=> d!1061002 (= lt!1237183 (_2!22016 (get!12255 (maxPrefix!2729 thiss!23823 rules!3307 lt!1236907))))))

(assert (=> d!1061002 (= lt!1237189 (list!13950 (charsOf!3620 lt!1237188)))))

(declare-datatypes ((List!38003 0))(
  ( (Nil!37879) (Cons!37879 (h!43299 Token!10578) (t!292334 List!38003)) )
))
(declare-fun head!7550 (List!38003) Token!10578)

(declare-datatypes ((IArray!23071 0))(
  ( (IArray!23072 (innerList!11593 List!38003)) )
))
(declare-datatypes ((Conc!11533 0))(
  ( (Node!11533 (left!29598 Conc!11533) (right!29928 Conc!11533) (csize!23296 Int) (cheight!11744 Int)) (Leaf!17947 (xs!14735 IArray!23071) (csize!23297 Int)) (Empty!11533) )
))
(declare-datatypes ((BalanceConc!22680 0))(
  ( (BalanceConc!22681 (c!623263 Conc!11533)) )
))
(declare-fun list!13954 (BalanceConc!22680) List!38003)

(declare-datatypes ((tuple2!37770 0))(
  ( (tuple2!37771 (_1!22019 BalanceConc!22680) (_2!22019 BalanceConc!22676)) )
))
(declare-fun lex!2466 (LexerInterface!5195 List!37999 BalanceConc!22676) tuple2!37770)

(assert (=> d!1061002 (= lt!1237188 (head!7550 (list!13954 (_1!22019 (lex!2466 thiss!23823 rules!3307 (seqFromList!4159 lt!1236907))))))))

(assert (=> d!1061002 (not (isEmpty!22343 rules!3307))))

(assert (=> d!1061002 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!875 thiss!23823 rules!3307 lt!1236907 suffix!1395) lt!1237195)))

(declare-fun b!3600949 () Bool)

(declare-fun res!1455316 () Bool)

(assert (=> b!3600949 (=> (not res!1455316) (not e!2228299))))

(assert (=> b!3600949 (= res!1455316 (matchR!4934 (regex!5606 (get!12256 (getRuleFromTag!1212 thiss!23823 rules!3307 (tag!6296 (rule!8340 lt!1237188))))) (list!13950 (charsOf!3620 lt!1237188))))))

(declare-fun b!3600952 () Bool)

(declare-fun Unit!53916 () Unit!53909)

(assert (=> b!3600952 (= e!2228298 Unit!53916)))

(assert (= (and d!1061002 res!1455315) b!3600949))

(assert (= (and b!3600949 res!1455316) b!3600950))

(assert (= (and d!1061002 c!623235) b!3600951))

(assert (= (and d!1061002 (not c!623235)) b!3600952))

(declare-fun m!4096909 () Bool)

(assert (=> b!3600951 m!4096909))

(declare-fun m!4096911 () Bool)

(assert (=> b!3600951 m!4096911))

(declare-fun m!4096913 () Bool)

(assert (=> b!3600951 m!4096913))

(assert (=> b!3600951 m!4096163))

(declare-fun m!4096915 () Bool)

(assert (=> b!3600951 m!4096915))

(declare-fun m!4096917 () Bool)

(assert (=> b!3600951 m!4096917))

(assert (=> b!3600951 m!4096915))

(assert (=> b!3600951 m!4096163))

(declare-fun m!4096919 () Bool)

(assert (=> b!3600951 m!4096919))

(declare-fun m!4096921 () Bool)

(assert (=> b!3600951 m!4096921))

(assert (=> b!3600951 m!4096909))

(declare-fun m!4096923 () Bool)

(assert (=> b!3600950 m!4096923))

(assert (=> b!3600950 m!4096923))

(declare-fun m!4096925 () Bool)

(assert (=> b!3600950 m!4096925))

(assert (=> d!1061002 m!4096923))

(declare-fun m!4096927 () Bool)

(assert (=> d!1061002 m!4096927))

(declare-fun m!4096929 () Bool)

(assert (=> d!1061002 m!4096929))

(declare-fun m!4096931 () Bool)

(assert (=> d!1061002 m!4096931))

(assert (=> d!1061002 m!4096137))

(declare-fun m!4096933 () Bool)

(assert (=> d!1061002 m!4096933))

(assert (=> d!1061002 m!4096927))

(declare-fun m!4096935 () Bool)

(assert (=> d!1061002 m!4096935))

(declare-fun m!4096937 () Bool)

(assert (=> d!1061002 m!4096937))

(assert (=> d!1061002 m!4096163))

(declare-fun m!4096939 () Bool)

(assert (=> d!1061002 m!4096939))

(assert (=> d!1061002 m!4096937))

(declare-fun m!4096941 () Bool)

(assert (=> d!1061002 m!4096941))

(assert (=> d!1061002 m!4096915))

(assert (=> d!1061002 m!4096917))

(declare-fun m!4096943 () Bool)

(assert (=> d!1061002 m!4096943))

(declare-fun m!4096945 () Bool)

(assert (=> d!1061002 m!4096945))

(assert (=> d!1061002 m!4096929))

(declare-fun m!4096947 () Bool)

(assert (=> d!1061002 m!4096947))

(assert (=> d!1061002 m!4096915))

(assert (=> d!1061002 m!4096163))

(assert (=> d!1061002 m!4096943))

(assert (=> d!1061002 m!4096163))

(assert (=> d!1061002 m!4096923))

(declare-fun m!4096949 () Bool)

(assert (=> d!1061002 m!4096949))

(assert (=> d!1061002 m!4096943))

(declare-fun m!4096951 () Bool)

(assert (=> d!1061002 m!4096951))

(declare-fun m!4096953 () Bool)

(assert (=> d!1061002 m!4096953))

(assert (=> d!1061002 m!4096197))

(declare-fun m!4096955 () Bool)

(assert (=> d!1061002 m!4096955))

(assert (=> d!1061002 m!4096197))

(assert (=> b!3600949 m!4096923))

(assert (=> b!3600949 m!4096917))

(declare-fun m!4096957 () Bool)

(assert (=> b!3600949 m!4096957))

(assert (=> b!3600949 m!4096915))

(assert (=> b!3600949 m!4096923))

(assert (=> b!3600949 m!4096925))

(assert (=> b!3600949 m!4096915))

(assert (=> b!3600949 m!4096917))

(assert (=> b!3600371 d!1061002))

(declare-fun d!1061034 () Bool)

(assert (=> d!1061034 (isPrefix!2969 lt!1236907 (++!9422 lt!1236907 suffix!1395))))

(declare-fun lt!1237197 () Unit!53909)

(assert (=> d!1061034 (= lt!1237197 (choose!20991 lt!1236907 suffix!1395))))

(assert (=> d!1061034 (= (lemmaConcatTwoListThenFirstIsPrefix!1890 lt!1236907 suffix!1395) lt!1237197)))

(declare-fun bs!570545 () Bool)

(assert (= bs!570545 d!1061034))

(assert (=> bs!570545 m!4096163))

(assert (=> bs!570545 m!4096163))

(declare-fun m!4096959 () Bool)

(assert (=> bs!570545 m!4096959))

(declare-fun m!4096961 () Bool)

(assert (=> bs!570545 m!4096961))

(assert (=> b!3600371 d!1061034))

(declare-fun b!3600962 () Bool)

(declare-fun e!2228305 () List!37997)

(assert (=> b!3600962 (= e!2228305 (Cons!37873 (h!43293 lt!1236907) (++!9422 (t!292208 lt!1236907) suffix!1395)))))

(declare-fun b!3600963 () Bool)

(declare-fun res!1455322 () Bool)

(declare-fun e!2228304 () Bool)

(assert (=> b!3600963 (=> (not res!1455322) (not e!2228304))))

(declare-fun lt!1237200 () List!37997)

(assert (=> b!3600963 (= res!1455322 (= (size!28862 lt!1237200) (+ (size!28862 lt!1236907) (size!28862 suffix!1395))))))

(declare-fun b!3600964 () Bool)

(assert (=> b!3600964 (= e!2228304 (or (not (= suffix!1395 Nil!37873)) (= lt!1237200 lt!1236907)))))

(declare-fun b!3600961 () Bool)

(assert (=> b!3600961 (= e!2228305 suffix!1395)))

(declare-fun d!1061036 () Bool)

(assert (=> d!1061036 e!2228304))

(declare-fun res!1455321 () Bool)

(assert (=> d!1061036 (=> (not res!1455321) (not e!2228304))))

(assert (=> d!1061036 (= res!1455321 (= (content!5405 lt!1237200) ((_ map or) (content!5405 lt!1236907) (content!5405 suffix!1395))))))

(assert (=> d!1061036 (= lt!1237200 e!2228305)))

(declare-fun c!623238 () Bool)

(assert (=> d!1061036 (= c!623238 ((_ is Nil!37873) lt!1236907))))

(assert (=> d!1061036 (= (++!9422 lt!1236907 suffix!1395) lt!1237200)))

(assert (= (and d!1061036 c!623238) b!3600961))

(assert (= (and d!1061036 (not c!623238)) b!3600962))

(assert (= (and d!1061036 res!1455321) b!3600963))

(assert (= (and b!3600963 res!1455322) b!3600964))

(declare-fun m!4096963 () Bool)

(assert (=> b!3600962 m!4096963))

(declare-fun m!4096965 () Bool)

(assert (=> b!3600963 m!4096965))

(assert (=> b!3600963 m!4096645))

(declare-fun m!4096967 () Bool)

(assert (=> b!3600963 m!4096967))

(declare-fun m!4096969 () Bool)

(assert (=> d!1061036 m!4096969))

(assert (=> d!1061036 m!4096489))

(declare-fun m!4096971 () Bool)

(assert (=> d!1061036 m!4096971))

(assert (=> b!3600371 d!1061036))

(declare-fun b!3600966 () Bool)

(declare-fun e!2228307 () List!37997)

(assert (=> b!3600966 (= e!2228307 (Cons!37873 (h!43293 lt!1236900) (++!9422 (t!292208 lt!1236900) (_2!22016 lt!1236914))))))

(declare-fun b!3600967 () Bool)

(declare-fun res!1455324 () Bool)

(declare-fun e!2228306 () Bool)

(assert (=> b!3600967 (=> (not res!1455324) (not e!2228306))))

(declare-fun lt!1237201 () List!37997)

(assert (=> b!3600967 (= res!1455324 (= (size!28862 lt!1237201) (+ (size!28862 lt!1236900) (size!28862 (_2!22016 lt!1236914)))))))

(declare-fun b!3600968 () Bool)

(assert (=> b!3600968 (= e!2228306 (or (not (= (_2!22016 lt!1236914) Nil!37873)) (= lt!1237201 lt!1236900)))))

(declare-fun b!3600965 () Bool)

(assert (=> b!3600965 (= e!2228307 (_2!22016 lt!1236914))))

(declare-fun d!1061038 () Bool)

(assert (=> d!1061038 e!2228306))

(declare-fun res!1455323 () Bool)

(assert (=> d!1061038 (=> (not res!1455323) (not e!2228306))))

(assert (=> d!1061038 (= res!1455323 (= (content!5405 lt!1237201) ((_ map or) (content!5405 lt!1236900) (content!5405 (_2!22016 lt!1236914)))))))

(assert (=> d!1061038 (= lt!1237201 e!2228307)))

(declare-fun c!623239 () Bool)

(assert (=> d!1061038 (= c!623239 ((_ is Nil!37873) lt!1236900))))

(assert (=> d!1061038 (= (++!9422 lt!1236900 (_2!22016 lt!1236914)) lt!1237201)))

(assert (= (and d!1061038 c!623239) b!3600965))

(assert (= (and d!1061038 (not c!623239)) b!3600966))

(assert (= (and d!1061038 res!1455323) b!3600967))

(assert (= (and b!3600967 res!1455324) b!3600968))

(declare-fun m!4096973 () Bool)

(assert (=> b!3600966 m!4096973))

(declare-fun m!4096975 () Bool)

(assert (=> b!3600967 m!4096975))

(assert (=> b!3600967 m!4096245))

(declare-fun m!4096977 () Bool)

(assert (=> b!3600967 m!4096977))

(declare-fun m!4096979 () Bool)

(assert (=> d!1061038 m!4096979))

(declare-fun m!4096981 () Bool)

(assert (=> d!1061038 m!4096981))

(declare-fun m!4096983 () Bool)

(assert (=> d!1061038 m!4096983))

(assert (=> b!3600371 d!1061038))

(declare-fun d!1061040 () Bool)

(assert (=> d!1061040 (= (isEmpty!22342 (_2!22016 lt!1236920)) ((_ is Nil!37873) (_2!22016 lt!1236920)))))

(assert (=> b!3600356 d!1061040))

(declare-fun d!1061042 () Bool)

(declare-fun lt!1237202 () Bool)

(assert (=> d!1061042 (= lt!1237202 (select (content!5405 (usedCharacters!820 (regex!5606 anOtherTypeRule!33))) lt!1236906))))

(declare-fun e!2228309 () Bool)

(assert (=> d!1061042 (= lt!1237202 e!2228309)))

(declare-fun res!1455326 () Bool)

(assert (=> d!1061042 (=> (not res!1455326) (not e!2228309))))

(assert (=> d!1061042 (= res!1455326 ((_ is Cons!37873) (usedCharacters!820 (regex!5606 anOtherTypeRule!33))))))

(assert (=> d!1061042 (= (contains!7275 (usedCharacters!820 (regex!5606 anOtherTypeRule!33)) lt!1236906) lt!1237202)))

(declare-fun b!3600969 () Bool)

(declare-fun e!2228308 () Bool)

(assert (=> b!3600969 (= e!2228309 e!2228308)))

(declare-fun res!1455325 () Bool)

(assert (=> b!3600969 (=> res!1455325 e!2228308)))

(assert (=> b!3600969 (= res!1455325 (= (h!43293 (usedCharacters!820 (regex!5606 anOtherTypeRule!33))) lt!1236906))))

(declare-fun b!3600970 () Bool)

(assert (=> b!3600970 (= e!2228308 (contains!7275 (t!292208 (usedCharacters!820 (regex!5606 anOtherTypeRule!33))) lt!1236906))))

(assert (= (and d!1061042 res!1455326) b!3600969))

(assert (= (and b!3600969 (not res!1455325)) b!3600970))

(assert (=> d!1061042 m!4096207))

(declare-fun m!4096985 () Bool)

(assert (=> d!1061042 m!4096985))

(declare-fun m!4096987 () Bool)

(assert (=> d!1061042 m!4096987))

(declare-fun m!4096989 () Bool)

(assert (=> b!3600970 m!4096989))

(assert (=> b!3600378 d!1061042))

(declare-fun bm!260411 () Bool)

(declare-fun call!260417 () List!37997)

(declare-fun call!260419 () List!37997)

(assert (=> bm!260411 (= call!260417 call!260419)))

(declare-fun d!1061044 () Bool)

(declare-fun c!623243 () Bool)

(assert (=> d!1061044 (= c!623243 (or ((_ is EmptyExpr!10365) (regex!5606 anOtherTypeRule!33)) ((_ is EmptyLang!10365) (regex!5606 anOtherTypeRule!33))))))

(declare-fun e!2228313 () List!37997)

(assert (=> d!1061044 (= (usedCharacters!820 (regex!5606 anOtherTypeRule!33)) e!2228313)))

(declare-fun bm!260412 () Bool)

(declare-fun call!260416 () List!37997)

(declare-fun c!623240 () Bool)

(assert (=> bm!260412 (= call!260416 (usedCharacters!820 (ite c!623240 (regOne!21243 (regex!5606 anOtherTypeRule!33)) (regTwo!21242 (regex!5606 anOtherTypeRule!33)))))))

(declare-fun b!3600971 () Bool)

(declare-fun e!2228311 () List!37997)

(declare-fun call!260418 () List!37997)

(assert (=> b!3600971 (= e!2228311 call!260418)))

(declare-fun b!3600972 () Bool)

(declare-fun e!2228312 () List!37997)

(assert (=> b!3600972 (= e!2228312 e!2228311)))

(assert (=> b!3600972 (= c!623240 ((_ is Union!10365) (regex!5606 anOtherTypeRule!33)))))

(declare-fun b!3600973 () Bool)

(declare-fun e!2228310 () List!37997)

(assert (=> b!3600973 (= e!2228310 (Cons!37873 (c!623120 (regex!5606 anOtherTypeRule!33)) Nil!37873))))

(declare-fun b!3600974 () Bool)

(declare-fun c!623241 () Bool)

(assert (=> b!3600974 (= c!623241 ((_ is Star!10365) (regex!5606 anOtherTypeRule!33)))))

(assert (=> b!3600974 (= e!2228310 e!2228312)))

(declare-fun b!3600975 () Bool)

(assert (=> b!3600975 (= e!2228313 e!2228310)))

(declare-fun c!623242 () Bool)

(assert (=> b!3600975 (= c!623242 ((_ is ElementMatch!10365) (regex!5606 anOtherTypeRule!33)))))

(declare-fun b!3600976 () Bool)

(assert (=> b!3600976 (= e!2228311 call!260418)))

(declare-fun bm!260413 () Bool)

(assert (=> bm!260413 (= call!260419 (usedCharacters!820 (ite c!623241 (reg!10694 (regex!5606 anOtherTypeRule!33)) (ite c!623240 (regTwo!21243 (regex!5606 anOtherTypeRule!33)) (regOne!21242 (regex!5606 anOtherTypeRule!33))))))))

(declare-fun b!3600977 () Bool)

(assert (=> b!3600977 (= e!2228313 Nil!37873)))

(declare-fun bm!260414 () Bool)

(assert (=> bm!260414 (= call!260418 (++!9422 (ite c!623240 call!260416 call!260417) (ite c!623240 call!260417 call!260416)))))

(declare-fun b!3600978 () Bool)

(assert (=> b!3600978 (= e!2228312 call!260419)))

(assert (= (and d!1061044 c!623243) b!3600977))

(assert (= (and d!1061044 (not c!623243)) b!3600975))

(assert (= (and b!3600975 c!623242) b!3600973))

(assert (= (and b!3600975 (not c!623242)) b!3600974))

(assert (= (and b!3600974 c!623241) b!3600978))

(assert (= (and b!3600974 (not c!623241)) b!3600972))

(assert (= (and b!3600972 c!623240) b!3600976))

(assert (= (and b!3600972 (not c!623240)) b!3600971))

(assert (= (or b!3600976 b!3600971) bm!260412))

(assert (= (or b!3600976 b!3600971) bm!260411))

(assert (= (or b!3600976 b!3600971) bm!260414))

(assert (= (or b!3600978 bm!260411) bm!260413))

(declare-fun m!4096991 () Bool)

(assert (=> bm!260412 m!4096991))

(declare-fun m!4096993 () Bool)

(assert (=> bm!260413 m!4096993))

(declare-fun m!4096995 () Bool)

(assert (=> bm!260414 m!4096995))

(assert (=> b!3600378 d!1061044))

(declare-fun d!1061046 () Bool)

(declare-fun lt!1237203 () Bool)

(assert (=> d!1061046 (= lt!1237203 (select (content!5405 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))) lt!1236911))))

(declare-fun e!2228315 () Bool)

(assert (=> d!1061046 (= lt!1237203 e!2228315)))

(declare-fun res!1455328 () Bool)

(assert (=> d!1061046 (=> (not res!1455328) (not e!2228315))))

(assert (=> d!1061046 (= res!1455328 ((_ is Cons!37873) (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))))

(assert (=> d!1061046 (= (contains!7275 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236911) lt!1237203)))

(declare-fun b!3600979 () Bool)

(declare-fun e!2228314 () Bool)

(assert (=> b!3600979 (= e!2228315 e!2228314)))

(declare-fun res!1455327 () Bool)

(assert (=> b!3600979 (=> res!1455327 e!2228314)))

(assert (=> b!3600979 (= res!1455327 (= (h!43293 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))) lt!1236911))))

(declare-fun b!3600980 () Bool)

(assert (=> b!3600980 (= e!2228314 (contains!7275 (t!292208 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))) lt!1236911))))

(assert (= (and d!1061046 res!1455328) b!3600979))

(assert (= (and b!3600979 (not res!1455327)) b!3600980))

(assert (=> d!1061046 m!4096211))

(declare-fun m!4096997 () Bool)

(assert (=> d!1061046 m!4096997))

(declare-fun m!4096999 () Bool)

(assert (=> d!1061046 m!4096999))

(declare-fun m!4097001 () Bool)

(assert (=> b!3600980 m!4097001))

(assert (=> b!3600357 d!1061046))

(declare-fun bm!260415 () Bool)

(declare-fun call!260421 () List!37997)

(declare-fun call!260423 () List!37997)

(assert (=> bm!260415 (= call!260421 call!260423)))

(declare-fun d!1061048 () Bool)

(declare-fun c!623247 () Bool)

(assert (=> d!1061048 (= c!623247 (or ((_ is EmptyExpr!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) ((_ is EmptyLang!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))))

(declare-fun e!2228319 () List!37997)

(assert (=> d!1061048 (= (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) e!2228319)))

(declare-fun bm!260416 () Bool)

(declare-fun call!260420 () List!37997)

(declare-fun c!623244 () Bool)

(assert (=> bm!260416 (= call!260420 (usedCharacters!820 (ite c!623244 (regOne!21243 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) (regTwo!21242 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))))

(declare-fun b!3600981 () Bool)

(declare-fun e!2228317 () List!37997)

(declare-fun call!260422 () List!37997)

(assert (=> b!3600981 (= e!2228317 call!260422)))

(declare-fun b!3600982 () Bool)

(declare-fun e!2228318 () List!37997)

(assert (=> b!3600982 (= e!2228318 e!2228317)))

(assert (=> b!3600982 (= c!623244 ((_ is Union!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun b!3600983 () Bool)

(declare-fun e!2228316 () List!37997)

(assert (=> b!3600983 (= e!2228316 (Cons!37873 (c!623120 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) Nil!37873))))

(declare-fun b!3600984 () Bool)

(declare-fun c!623245 () Bool)

(assert (=> b!3600984 (= c!623245 ((_ is Star!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(assert (=> b!3600984 (= e!2228316 e!2228318)))

(declare-fun b!3600985 () Bool)

(assert (=> b!3600985 (= e!2228319 e!2228316)))

(declare-fun c!623246 () Bool)

(assert (=> b!3600985 (= c!623246 ((_ is ElementMatch!10365) (regex!5606 (rule!8340 (_1!22016 lt!1236914)))))))

(declare-fun b!3600986 () Bool)

(assert (=> b!3600986 (= e!2228317 call!260422)))

(declare-fun bm!260417 () Bool)

(assert (=> bm!260417 (= call!260423 (usedCharacters!820 (ite c!623245 (reg!10694 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) (ite c!623244 (regTwo!21243 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) (regOne!21242 (regex!5606 (rule!8340 (_1!22016 lt!1236914))))))))))

(declare-fun b!3600987 () Bool)

(assert (=> b!3600987 (= e!2228319 Nil!37873)))

(declare-fun bm!260418 () Bool)

(assert (=> bm!260418 (= call!260422 (++!9422 (ite c!623244 call!260420 call!260421) (ite c!623244 call!260421 call!260420)))))

(declare-fun b!3600988 () Bool)

(assert (=> b!3600988 (= e!2228318 call!260423)))

(assert (= (and d!1061048 c!623247) b!3600987))

(assert (= (and d!1061048 (not c!623247)) b!3600985))

(assert (= (and b!3600985 c!623246) b!3600983))

(assert (= (and b!3600985 (not c!623246)) b!3600984))

(assert (= (and b!3600984 c!623245) b!3600988))

(assert (= (and b!3600984 (not c!623245)) b!3600982))

(assert (= (and b!3600982 c!623244) b!3600986))

(assert (= (and b!3600982 (not c!623244)) b!3600981))

(assert (= (or b!3600986 b!3600981) bm!260416))

(assert (= (or b!3600986 b!3600981) bm!260415))

(assert (= (or b!3600986 b!3600981) bm!260418))

(assert (= (or b!3600988 bm!260415) bm!260417))

(declare-fun m!4097003 () Bool)

(assert (=> bm!260416 m!4097003))

(declare-fun m!4097005 () Bool)

(assert (=> bm!260417 m!4097005))

(declare-fun m!4097007 () Bool)

(assert (=> bm!260418 m!4097007))

(assert (=> b!3600357 d!1061048))

(declare-fun d!1061050 () Bool)

(assert (=> d!1061050 (not (contains!7275 (usedCharacters!820 (regex!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236911))))

(declare-fun lt!1237206 () Unit!53909)

(declare-fun choose!20994 (LexerInterface!5195 List!37999 List!37999 Rule!11012 Rule!11012 C!20916) Unit!53909)

(assert (=> d!1061050 (= lt!1237206 (choose!20994 thiss!23823 rules!3307 rules!3307 (rule!8340 (_1!22016 lt!1236914)) rule!403 lt!1236911))))

(assert (=> d!1061050 (rulesInvariant!4592 thiss!23823 rules!3307)))

(assert (=> d!1061050 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!324 thiss!23823 rules!3307 rules!3307 (rule!8340 (_1!22016 lt!1236914)) rule!403 lt!1236911) lt!1237206)))

(declare-fun bs!570546 () Bool)

(assert (= bs!570546 d!1061050))

(assert (=> bs!570546 m!4096211))

(assert (=> bs!570546 m!4096211))

(assert (=> bs!570546 m!4096213))

(declare-fun m!4097009 () Bool)

(assert (=> bs!570546 m!4097009))

(assert (=> bs!570546 m!4096203))

(assert (=> b!3600357 d!1061050))

(declare-fun b!3600989 () Bool)

(declare-fun e!2228322 () Bool)

(assert (=> b!3600989 (= e!2228322 (= (head!7548 (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))) (c!623120 (regex!5606 lt!1236898))))))

(declare-fun b!3600990 () Bool)

(declare-fun res!1455330 () Bool)

(declare-fun e!2228324 () Bool)

(assert (=> b!3600990 (=> res!1455330 e!2228324)))

(assert (=> b!3600990 (= res!1455330 (not (isEmpty!22342 (tail!5581 (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))))))))

(declare-fun b!3600991 () Bool)

(declare-fun e!2228323 () Bool)

(declare-fun lt!1237207 () Bool)

(declare-fun call!260424 () Bool)

(assert (=> b!3600991 (= e!2228323 (= lt!1237207 call!260424))))

(declare-fun b!3600992 () Bool)

(declare-fun res!1455335 () Bool)

(assert (=> b!3600992 (=> (not res!1455335) (not e!2228322))))

(assert (=> b!3600992 (= res!1455335 (isEmpty!22342 (tail!5581 (list!13950 (charsOf!3620 (_1!22016 lt!1236914))))))))

(declare-fun b!3600993 () Bool)

(declare-fun e!2228321 () Bool)

(assert (=> b!3600993 (= e!2228323 e!2228321)))

(declare-fun c!623251 () Bool)

(assert (=> b!3600993 (= c!623251 ((_ is EmptyLang!10365) (regex!5606 lt!1236898)))))

(declare-fun bm!260419 () Bool)

(assert (=> bm!260419 (= call!260424 (isEmpty!22342 (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))))))

(declare-fun b!3600994 () Bool)

(declare-fun e!2228326 () Bool)

(declare-fun e!2228320 () Bool)

(assert (=> b!3600994 (= e!2228326 e!2228320)))

(declare-fun res!1455332 () Bool)

(assert (=> b!3600994 (=> (not res!1455332) (not e!2228320))))

(assert (=> b!3600994 (= res!1455332 (not lt!1237207))))

(declare-fun b!3600995 () Bool)

(assert (=> b!3600995 (= e!2228320 e!2228324)))

(declare-fun res!1455334 () Bool)

(assert (=> b!3600995 (=> res!1455334 e!2228324)))

(assert (=> b!3600995 (= res!1455334 call!260424)))

(declare-fun b!3600996 () Bool)

(declare-fun e!2228325 () Bool)

(assert (=> b!3600996 (= e!2228325 (nullable!3583 (regex!5606 lt!1236898)))))

(declare-fun b!3600997 () Bool)

(declare-fun res!1455329 () Bool)

(assert (=> b!3600997 (=> res!1455329 e!2228326)))

(assert (=> b!3600997 (= res!1455329 (not ((_ is ElementMatch!10365) (regex!5606 lt!1236898))))))

(assert (=> b!3600997 (= e!2228321 e!2228326)))

(declare-fun b!3600998 () Bool)

(assert (=> b!3600998 (= e!2228324 (not (= (head!7548 (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))) (c!623120 (regex!5606 lt!1236898)))))))

(declare-fun d!1061052 () Bool)

(assert (=> d!1061052 e!2228323))

(declare-fun c!623250 () Bool)

(assert (=> d!1061052 (= c!623250 ((_ is EmptyExpr!10365) (regex!5606 lt!1236898)))))

(assert (=> d!1061052 (= lt!1237207 e!2228325)))

(declare-fun c!623249 () Bool)

(assert (=> d!1061052 (= c!623249 (isEmpty!22342 (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))))))

(assert (=> d!1061052 (validRegex!4741 (regex!5606 lt!1236898))))

(assert (=> d!1061052 (= (matchR!4934 (regex!5606 lt!1236898) (list!13950 (charsOf!3620 (_1!22016 lt!1236914)))) lt!1237207)))

(declare-fun b!3600999 () Bool)

(declare-fun res!1455333 () Bool)

(assert (=> b!3600999 (=> (not res!1455333) (not e!2228322))))

(assert (=> b!3600999 (= res!1455333 (not call!260424))))

(declare-fun b!3601000 () Bool)

(declare-fun res!1455331 () Bool)

(assert (=> b!3601000 (=> res!1455331 e!2228326)))

(assert (=> b!3601000 (= res!1455331 e!2228322)))

(declare-fun res!1455336 () Bool)

(assert (=> b!3601000 (=> (not res!1455336) (not e!2228322))))

(assert (=> b!3601000 (= res!1455336 lt!1237207)))

(declare-fun b!3601001 () Bool)

(assert (=> b!3601001 (= e!2228321 (not lt!1237207))))

(declare-fun b!3601002 () Bool)

(assert (=> b!3601002 (= e!2228325 (matchR!4934 (derivativeStep!3132 (regex!5606 lt!1236898) (head!7548 (list!13950 (charsOf!3620 (_1!22016 lt!1236914))))) (tail!5581 (list!13950 (charsOf!3620 (_1!22016 lt!1236914))))))))

(assert (= (and d!1061052 c!623249) b!3600996))

(assert (= (and d!1061052 (not c!623249)) b!3601002))

(assert (= (and d!1061052 c!623250) b!3600991))

(assert (= (and d!1061052 (not c!623250)) b!3600993))

(assert (= (and b!3600993 c!623251) b!3601001))

(assert (= (and b!3600993 (not c!623251)) b!3600997))

(assert (= (and b!3600997 (not res!1455329)) b!3601000))

(assert (= (and b!3601000 res!1455336) b!3600999))

(assert (= (and b!3600999 res!1455333) b!3600992))

(assert (= (and b!3600992 res!1455335) b!3600989))

(assert (= (and b!3601000 (not res!1455331)) b!3600994))

(assert (= (and b!3600994 res!1455332) b!3600995))

(assert (= (and b!3600995 (not res!1455334)) b!3600990))

(assert (= (and b!3600990 (not res!1455330)) b!3600998))

(assert (= (or b!3600991 b!3600995 b!3600999) bm!260419))

(assert (=> b!3600989 m!4096259))

(declare-fun m!4097011 () Bool)

(assert (=> b!3600989 m!4097011))

(assert (=> b!3600998 m!4096259))

(assert (=> b!3600998 m!4097011))

(declare-fun m!4097013 () Bool)

(assert (=> b!3600996 m!4097013))

(assert (=> bm!260419 m!4096259))

(declare-fun m!4097015 () Bool)

(assert (=> bm!260419 m!4097015))

(assert (=> b!3600990 m!4096259))

(declare-fun m!4097017 () Bool)

(assert (=> b!3600990 m!4097017))

(assert (=> b!3600990 m!4097017))

(declare-fun m!4097019 () Bool)

(assert (=> b!3600990 m!4097019))

(assert (=> b!3600992 m!4096259))

(assert (=> b!3600992 m!4097017))

(assert (=> b!3600992 m!4097017))

(assert (=> b!3600992 m!4097019))

(assert (=> b!3601002 m!4096259))

(assert (=> b!3601002 m!4097011))

(assert (=> b!3601002 m!4097011))

(declare-fun m!4097021 () Bool)

(assert (=> b!3601002 m!4097021))

(assert (=> b!3601002 m!4096259))

(assert (=> b!3601002 m!4097017))

(assert (=> b!3601002 m!4097021))

(assert (=> b!3601002 m!4097017))

(declare-fun m!4097023 () Bool)

(assert (=> b!3601002 m!4097023))

(assert (=> d!1061052 m!4096259))

(assert (=> d!1061052 m!4097015))

(declare-fun m!4097025 () Bool)

(assert (=> d!1061052 m!4097025))

(assert (=> b!3600374 d!1061052))

(declare-fun d!1061054 () Bool)

(assert (=> d!1061054 (= (list!13950 (charsOf!3620 (_1!22016 lt!1236914))) (list!13952 (c!623121 (charsOf!3620 (_1!22016 lt!1236914)))))))

(declare-fun bs!570547 () Bool)

(assert (= bs!570547 d!1061054))

(declare-fun m!4097027 () Bool)

(assert (=> bs!570547 m!4097027))

(assert (=> b!3600374 d!1061054))

(assert (=> b!3600374 d!1060982))

(declare-fun d!1061056 () Bool)

(assert (=> d!1061056 (= (get!12256 lt!1236923) (v!37552 lt!1236923))))

(assert (=> b!3600374 d!1061056))

(declare-fun d!1061058 () Bool)

(declare-fun lt!1237208 () Bool)

(assert (=> d!1061058 (= lt!1237208 (select (content!5405 lt!1236921) lt!1236911))))

(declare-fun e!2228328 () Bool)

(assert (=> d!1061058 (= lt!1237208 e!2228328)))

(declare-fun res!1455338 () Bool)

(assert (=> d!1061058 (=> (not res!1455338) (not e!2228328))))

(assert (=> d!1061058 (= res!1455338 ((_ is Cons!37873) lt!1236921))))

(assert (=> d!1061058 (= (contains!7275 lt!1236921 lt!1236911) lt!1237208)))

(declare-fun b!3601003 () Bool)

(declare-fun e!2228327 () Bool)

(assert (=> b!3601003 (= e!2228328 e!2228327)))

(declare-fun res!1455337 () Bool)

(assert (=> b!3601003 (=> res!1455337 e!2228327)))

(assert (=> b!3601003 (= res!1455337 (= (h!43293 lt!1236921) lt!1236911))))

(declare-fun b!3601004 () Bool)

(assert (=> b!3601004 (= e!2228327 (contains!7275 (t!292208 lt!1236921) lt!1236911))))

(assert (= (and d!1061058 res!1455338) b!3601003))

(assert (= (and b!3601003 (not res!1455337)) b!3601004))

(assert (=> d!1061058 m!4096591))

(declare-fun m!4097029 () Bool)

(assert (=> d!1061058 m!4097029))

(declare-fun m!4097031 () Bool)

(assert (=> b!3601004 m!4097031))

(assert (=> b!3600353 d!1061058))

(declare-fun d!1061060 () Bool)

(assert (=> d!1061060 (= (head!7548 lt!1236900) (h!43293 lt!1236900))))

(assert (=> b!3600353 d!1061060))

(declare-fun d!1061062 () Bool)

(declare-fun lt!1237211 () List!37997)

(assert (=> d!1061062 (= (++!9422 lt!1236900 lt!1237211) lt!1236902)))

(declare-fun e!2228331 () List!37997)

(assert (=> d!1061062 (= lt!1237211 e!2228331)))

(declare-fun c!623254 () Bool)

(assert (=> d!1061062 (= c!623254 ((_ is Cons!37873) lt!1236900))))

(assert (=> d!1061062 (>= (size!28862 lt!1236902) (size!28862 lt!1236900))))

(assert (=> d!1061062 (= (getSuffix!1544 lt!1236902 lt!1236900) lt!1237211)))

(declare-fun b!3601009 () Bool)

(assert (=> b!3601009 (= e!2228331 (getSuffix!1544 (tail!5581 lt!1236902) (t!292208 lt!1236900)))))

(declare-fun b!3601010 () Bool)

(assert (=> b!3601010 (= e!2228331 lt!1236902)))

(assert (= (and d!1061062 c!623254) b!3601009))

(assert (= (and d!1061062 (not c!623254)) b!3601010))

(declare-fun m!4097033 () Bool)

(assert (=> d!1061062 m!4097033))

(assert (=> d!1061062 m!4096683))

(assert (=> d!1061062 m!4096245))

(assert (=> b!3601009 m!4096679))

(assert (=> b!3601009 m!4096679))

(declare-fun m!4097035 () Bool)

(assert (=> b!3601009 m!4097035))

(assert (=> b!3600376 d!1061062))

(declare-fun d!1061064 () Bool)

(declare-fun dynLambda!16346 (Int BalanceConc!22676) TokenValue!5836)

(assert (=> d!1061064 (= (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) (seqFromList!4159 lt!1236900)) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (seqFromList!4159 lt!1236900)))))

(declare-fun b_lambda!106481 () Bool)

(assert (=> (not b_lambda!106481) (not d!1061064)))

(declare-fun tb!206017 () Bool)

(declare-fun t!292252 () Bool)

(assert (=> (and b!3600384 (= (toValue!7890 (transformation!5606 (h!43295 rules!3307))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292252) tb!206017))

(declare-fun result!251124 () Bool)

(assert (=> tb!206017 (= result!251124 (inv!21 (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (seqFromList!4159 lt!1236900))))))

(declare-fun m!4097037 () Bool)

(assert (=> tb!206017 m!4097037))

(assert (=> d!1061064 t!292252))

(declare-fun b_and!261555 () Bool)

(assert (= b_and!261483 (and (=> t!292252 result!251124) b_and!261555)))

(declare-fun t!292254 () Bool)

(declare-fun tb!206019 () Bool)

(assert (=> (and b!3600373 (= (toValue!7890 (transformation!5606 rule!403)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292254) tb!206019))

(declare-fun result!251128 () Bool)

(assert (= result!251128 result!251124))

(assert (=> d!1061064 t!292254))

(declare-fun b_and!261557 () Bool)

(assert (= b_and!261487 (and (=> t!292254 result!251128) b_and!261557)))

(declare-fun t!292256 () Bool)

(declare-fun tb!206021 () Bool)

(assert (=> (and b!3600379 (= (toValue!7890 (transformation!5606 anOtherTypeRule!33)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292256) tb!206021))

(declare-fun result!251130 () Bool)

(assert (= result!251130 result!251124))

(assert (=> d!1061064 t!292256))

(declare-fun b_and!261559 () Bool)

(assert (= b_and!261491 (and (=> t!292256 result!251130) b_and!261559)))

(declare-fun t!292258 () Bool)

(declare-fun tb!206023 () Bool)

(assert (=> (and b!3600383 (= (toValue!7890 (transformation!5606 (rule!8340 token!511))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292258) tb!206023))

(declare-fun result!251132 () Bool)

(assert (= result!251132 result!251124))

(assert (=> d!1061064 t!292258))

(declare-fun b_and!261561 () Bool)

(assert (= b_and!261495 (and (=> t!292258 result!251132) b_and!261561)))

(assert (=> d!1061064 m!4096241))

(declare-fun m!4097039 () Bool)

(assert (=> d!1061064 m!4097039))

(assert (=> b!3600376 d!1061064))

(declare-fun d!1061066 () Bool)

(assert (=> d!1061066 (= (maxPrefixOneRule!1873 thiss!23823 (rule!8340 (_1!22016 lt!1236914)) lt!1236902) (Some!7841 (tuple2!37765 (Token!10579 (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) (seqFromList!4159 lt!1236900)) (rule!8340 (_1!22016 lt!1236914)) (size!28862 lt!1236900) lt!1236900) (_2!22016 lt!1236914))))))

(declare-fun lt!1237214 () Unit!53909)

(declare-fun choose!20995 (LexerInterface!5195 List!37999 List!37997 List!37997 List!37997 Rule!11012) Unit!53909)

(assert (=> d!1061066 (= lt!1237214 (choose!20995 thiss!23823 rules!3307 lt!1236900 lt!1236902 (_2!22016 lt!1236914) (rule!8340 (_1!22016 lt!1236914))))))

(assert (=> d!1061066 (not (isEmpty!22343 rules!3307))))

(assert (=> d!1061066 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!945 thiss!23823 rules!3307 lt!1236900 lt!1236902 (_2!22016 lt!1236914) (rule!8340 (_1!22016 lt!1236914))) lt!1237214)))

(declare-fun bs!570548 () Bool)

(assert (= bs!570548 d!1061066))

(assert (=> bs!570548 m!4096253))

(assert (=> bs!570548 m!4096241))

(assert (=> bs!570548 m!4096243))

(declare-fun m!4097041 () Bool)

(assert (=> bs!570548 m!4097041))

(assert (=> bs!570548 m!4096241))

(assert (=> bs!570548 m!4096137))

(assert (=> bs!570548 m!4096245))

(assert (=> b!3600376 d!1061066))

(declare-fun b!3601031 () Bool)

(declare-fun e!2228343 () Option!7842)

(assert (=> b!3601031 (= e!2228343 None!7841)))

(declare-fun b!3601032 () Bool)

(declare-fun res!1455359 () Bool)

(declare-fun e!2228345 () Bool)

(assert (=> b!3601032 (=> (not res!1455359) (not e!2228345))))

(declare-fun lt!1237225 () Option!7842)

(assert (=> b!3601032 (= res!1455359 (< (size!28862 (_2!22016 (get!12255 lt!1237225))) (size!28862 lt!1236902)))))

(declare-fun b!3601033 () Bool)

(declare-fun e!2228346 () Bool)

(assert (=> b!3601033 (= e!2228346 e!2228345)))

(declare-fun res!1455358 () Bool)

(assert (=> b!3601033 (=> (not res!1455358) (not e!2228345))))

(assert (=> b!3601033 (= res!1455358 (matchR!4934 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237225))))))))

(declare-fun b!3601034 () Bool)

(declare-fun e!2228344 () Bool)

(declare-datatypes ((tuple2!37772 0))(
  ( (tuple2!37773 (_1!22020 List!37997) (_2!22020 List!37997)) )
))
(declare-fun findLongestMatchInner!989 (Regex!10365 List!37997 Int List!37997 List!37997 Int) tuple2!37772)

(assert (=> b!3601034 (= e!2228344 (matchR!4934 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) (_1!22020 (findLongestMatchInner!989 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) Nil!37873 (size!28862 Nil!37873) lt!1236902 lt!1236902 (size!28862 lt!1236902)))))))

(declare-fun d!1061068 () Bool)

(assert (=> d!1061068 e!2228346))

(declare-fun res!1455356 () Bool)

(assert (=> d!1061068 (=> res!1455356 e!2228346)))

(assert (=> d!1061068 (= res!1455356 (isEmpty!22345 lt!1237225))))

(assert (=> d!1061068 (= lt!1237225 e!2228343)))

(declare-fun c!623257 () Bool)

(declare-fun lt!1237226 () tuple2!37772)

(assert (=> d!1061068 (= c!623257 (isEmpty!22342 (_1!22020 lt!1237226)))))

(declare-fun findLongestMatch!904 (Regex!10365 List!37997) tuple2!37772)

(assert (=> d!1061068 (= lt!1237226 (findLongestMatch!904 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236902))))

(assert (=> d!1061068 (ruleValid!1871 thiss!23823 (rule!8340 (_1!22016 lt!1236914)))))

(assert (=> d!1061068 (= (maxPrefixOneRule!1873 thiss!23823 (rule!8340 (_1!22016 lt!1236914)) lt!1236902) lt!1237225)))

(declare-fun b!3601035 () Bool)

(declare-fun res!1455353 () Bool)

(assert (=> b!3601035 (=> (not res!1455353) (not e!2228345))))

(assert (=> b!3601035 (= res!1455353 (= (value!180231 (_1!22016 (get!12255 lt!1237225))) (apply!9112 (transformation!5606 (rule!8340 (_1!22016 (get!12255 lt!1237225)))) (seqFromList!4159 (originalCharacters!6320 (_1!22016 (get!12255 lt!1237225)))))))))

(declare-fun b!3601036 () Bool)

(declare-fun res!1455357 () Bool)

(assert (=> b!3601036 (=> (not res!1455357) (not e!2228345))))

(assert (=> b!3601036 (= res!1455357 (= (++!9422 (list!13950 (charsOf!3620 (_1!22016 (get!12255 lt!1237225)))) (_2!22016 (get!12255 lt!1237225))) lt!1236902))))

(declare-fun b!3601037 () Bool)

(assert (=> b!3601037 (= e!2228345 (= (size!28860 (_1!22016 (get!12255 lt!1237225))) (size!28862 (originalCharacters!6320 (_1!22016 (get!12255 lt!1237225))))))))

(declare-fun b!3601038 () Bool)

(declare-fun res!1455354 () Bool)

(assert (=> b!3601038 (=> (not res!1455354) (not e!2228345))))

(assert (=> b!3601038 (= res!1455354 (= (rule!8340 (_1!22016 (get!12255 lt!1237225))) (rule!8340 (_1!22016 lt!1236914))))))

(declare-fun b!3601039 () Bool)

(assert (=> b!3601039 (= e!2228343 (Some!7841 (tuple2!37765 (Token!10579 (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) (seqFromList!4159 (_1!22020 lt!1237226))) (rule!8340 (_1!22016 lt!1236914)) (size!28861 (seqFromList!4159 (_1!22020 lt!1237226))) (_1!22020 lt!1237226)) (_2!22020 lt!1237226))))))

(declare-fun lt!1237227 () Unit!53909)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!962 (Regex!10365 List!37997) Unit!53909)

(assert (=> b!3601039 (= lt!1237227 (longestMatchIsAcceptedByMatchOrIsEmpty!962 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236902))))

(declare-fun res!1455355 () Bool)

(assert (=> b!3601039 (= res!1455355 (isEmpty!22342 (_1!22020 (findLongestMatchInner!989 (regex!5606 (rule!8340 (_1!22016 lt!1236914))) Nil!37873 (size!28862 Nil!37873) lt!1236902 lt!1236902 (size!28862 lt!1236902)))))))

(assert (=> b!3601039 (=> res!1455355 e!2228344)))

(assert (=> b!3601039 e!2228344))

(declare-fun lt!1237229 () Unit!53909)

(assert (=> b!3601039 (= lt!1237229 lt!1237227)))

(declare-fun lt!1237228 () Unit!53909)

(assert (=> b!3601039 (= lt!1237228 (lemmaSemiInverse!1363 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) (seqFromList!4159 (_1!22020 lt!1237226))))))

(assert (= (and d!1061068 c!623257) b!3601031))

(assert (= (and d!1061068 (not c!623257)) b!3601039))

(assert (= (and b!3601039 (not res!1455355)) b!3601034))

(assert (= (and d!1061068 (not res!1455356)) b!3601033))

(assert (= (and b!3601033 res!1455358) b!3601036))

(assert (= (and b!3601036 res!1455357) b!3601032))

(assert (= (and b!3601032 res!1455359) b!3601038))

(assert (= (and b!3601038 res!1455354) b!3601035))

(assert (= (and b!3601035 res!1455353) b!3601037))

(declare-fun m!4097043 () Bool)

(assert (=> b!3601039 m!4097043))

(declare-fun m!4097045 () Bool)

(assert (=> b!3601039 m!4097045))

(assert (=> b!3601039 m!4097043))

(declare-fun m!4097047 () Bool)

(assert (=> b!3601039 m!4097047))

(declare-fun m!4097049 () Bool)

(assert (=> b!3601039 m!4097049))

(assert (=> b!3601039 m!4096683))

(declare-fun m!4097051 () Bool)

(assert (=> b!3601039 m!4097051))

(assert (=> b!3601039 m!4097043))

(declare-fun m!4097053 () Bool)

(assert (=> b!3601039 m!4097053))

(assert (=> b!3601039 m!4097051))

(assert (=> b!3601039 m!4096683))

(declare-fun m!4097055 () Bool)

(assert (=> b!3601039 m!4097055))

(assert (=> b!3601039 m!4097043))

(declare-fun m!4097057 () Bool)

(assert (=> b!3601039 m!4097057))

(declare-fun m!4097059 () Bool)

(assert (=> b!3601038 m!4097059))

(declare-fun m!4097061 () Bool)

(assert (=> d!1061068 m!4097061))

(declare-fun m!4097063 () Bool)

(assert (=> d!1061068 m!4097063))

(declare-fun m!4097065 () Bool)

(assert (=> d!1061068 m!4097065))

(declare-fun m!4097067 () Bool)

(assert (=> d!1061068 m!4097067))

(assert (=> b!3601035 m!4097059))

(declare-fun m!4097069 () Bool)

(assert (=> b!3601035 m!4097069))

(assert (=> b!3601035 m!4097069))

(declare-fun m!4097071 () Bool)

(assert (=> b!3601035 m!4097071))

(assert (=> b!3601032 m!4097059))

(declare-fun m!4097073 () Bool)

(assert (=> b!3601032 m!4097073))

(assert (=> b!3601032 m!4096683))

(assert (=> b!3601034 m!4097051))

(assert (=> b!3601034 m!4096683))

(assert (=> b!3601034 m!4097051))

(assert (=> b!3601034 m!4096683))

(assert (=> b!3601034 m!4097055))

(declare-fun m!4097075 () Bool)

(assert (=> b!3601034 m!4097075))

(assert (=> b!3601033 m!4097059))

(declare-fun m!4097077 () Bool)

(assert (=> b!3601033 m!4097077))

(assert (=> b!3601033 m!4097077))

(declare-fun m!4097079 () Bool)

(assert (=> b!3601033 m!4097079))

(assert (=> b!3601033 m!4097079))

(declare-fun m!4097081 () Bool)

(assert (=> b!3601033 m!4097081))

(assert (=> b!3601036 m!4097059))

(assert (=> b!3601036 m!4097077))

(assert (=> b!3601036 m!4097077))

(assert (=> b!3601036 m!4097079))

(assert (=> b!3601036 m!4097079))

(declare-fun m!4097083 () Bool)

(assert (=> b!3601036 m!4097083))

(assert (=> b!3601037 m!4097059))

(declare-fun m!4097085 () Bool)

(assert (=> b!3601037 m!4097085))

(assert (=> b!3600376 d!1061068))

(declare-fun d!1061070 () Bool)

(declare-fun fromListB!1921 (List!37997) BalanceConc!22676)

(assert (=> d!1061070 (= (seqFromList!4159 lt!1236900) (fromListB!1921 lt!1236900))))

(declare-fun bs!570549 () Bool)

(assert (= bs!570549 d!1061070))

(declare-fun m!4097087 () Bool)

(assert (=> bs!570549 m!4097087))

(assert (=> b!3600376 d!1061070))

(declare-fun d!1061072 () Bool)

(assert (=> d!1061072 (= (_2!22016 lt!1236914) lt!1236912)))

(declare-fun lt!1237232 () Unit!53909)

(declare-fun choose!20996 (List!37997 List!37997 List!37997 List!37997 List!37997) Unit!53909)

(assert (=> d!1061072 (= lt!1237232 (choose!20996 lt!1236900 (_2!22016 lt!1236914) lt!1236900 lt!1236912 lt!1236902))))

(assert (=> d!1061072 (isPrefix!2969 lt!1236900 lt!1236902)))

(assert (=> d!1061072 (= (lemmaSamePrefixThenSameSuffix!1324 lt!1236900 (_2!22016 lt!1236914) lt!1236900 lt!1236912 lt!1236902) lt!1237232)))

(declare-fun bs!570550 () Bool)

(assert (= bs!570550 d!1061072))

(declare-fun m!4097089 () Bool)

(assert (=> bs!570550 m!4097089))

(assert (=> bs!570550 m!4096147))

(assert (=> b!3600376 d!1061072))

(declare-fun d!1061074 () Bool)

(declare-fun lt!1237235 () Int)

(assert (=> d!1061074 (>= lt!1237235 0)))

(declare-fun e!2228349 () Int)

(assert (=> d!1061074 (= lt!1237235 e!2228349)))

(declare-fun c!623260 () Bool)

(assert (=> d!1061074 (= c!623260 ((_ is Nil!37873) lt!1236900))))

(assert (=> d!1061074 (= (size!28862 lt!1236900) lt!1237235)))

(declare-fun b!3601044 () Bool)

(assert (=> b!3601044 (= e!2228349 0)))

(declare-fun b!3601045 () Bool)

(assert (=> b!3601045 (= e!2228349 (+ 1 (size!28862 (t!292208 lt!1236900))))))

(assert (= (and d!1061074 c!623260) b!3601044))

(assert (= (and d!1061074 (not c!623260)) b!3601045))

(declare-fun m!4097091 () Bool)

(assert (=> b!3601045 m!4097091))

(assert (=> b!3600376 d!1061074))

(declare-fun b!3601106 () Bool)

(declare-fun e!2228385 () Bool)

(assert (=> b!3601106 (= e!2228385 true)))

(declare-fun d!1061076 () Bool)

(assert (=> d!1061076 e!2228385))

(assert (= d!1061076 b!3601106))

(declare-fun order!20635 () Int)

(declare-fun lambda!123966 () Int)

(declare-fun order!20637 () Int)

(declare-fun dynLambda!16347 (Int Int) Int)

(declare-fun dynLambda!16348 (Int Int) Int)

(assert (=> b!3601106 (< (dynLambda!16347 order!20635 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) (dynLambda!16348 order!20637 lambda!123966))))

(declare-fun order!20639 () Int)

(declare-fun dynLambda!16349 (Int Int) Int)

(assert (=> b!3601106 (< (dynLambda!16349 order!20639 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) (dynLambda!16348 order!20637 lambda!123966))))

(assert (=> d!1061076 (= (list!13950 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901))) (list!13950 lt!1236901))))

(declare-fun lt!1237242 () Unit!53909)

(declare-fun ForallOf!642 (Int BalanceConc!22676) Unit!53909)

(assert (=> d!1061076 (= lt!1237242 (ForallOf!642 lambda!123966 lt!1236901))))

(assert (=> d!1061076 (= (lemmaSemiInverse!1363 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901) lt!1237242)))

(declare-fun b_lambda!106497 () Bool)

(assert (=> (not b_lambda!106497) (not d!1061076)))

(declare-fun tb!206061 () Bool)

(declare-fun t!292296 () Bool)

(assert (=> (and b!3600384 (= (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292296) tb!206061))

(declare-fun e!2228386 () Bool)

(declare-fun b!3601107 () Bool)

(declare-fun tp!1101468 () Bool)

(assert (=> b!3601107 (= e!2228386 (and (inv!51234 (c!623121 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901)))) tp!1101468))))

(declare-fun result!251176 () Bool)

(assert (=> tb!206061 (= result!251176 (and (inv!51235 (dynLambda!16341 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901))) e!2228386))))

(assert (= tb!206061 b!3601107))

(declare-fun m!4097123 () Bool)

(assert (=> b!3601107 m!4097123))

(declare-fun m!4097125 () Bool)

(assert (=> tb!206061 m!4097125))

(assert (=> d!1061076 t!292296))

(declare-fun b_and!261607 () Bool)

(assert (= b_and!261547 (and (=> t!292296 result!251176) b_and!261607)))

(declare-fun tb!206063 () Bool)

(declare-fun t!292298 () Bool)

(assert (=> (and b!3600373 (= (toChars!7749 (transformation!5606 rule!403)) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292298) tb!206063))

(declare-fun result!251178 () Bool)

(assert (= result!251178 result!251176))

(assert (=> d!1061076 t!292298))

(declare-fun b_and!261609 () Bool)

(assert (= b_and!261549 (and (=> t!292298 result!251178) b_and!261609)))

(declare-fun t!292300 () Bool)

(declare-fun tb!206065 () Bool)

(assert (=> (and b!3600379 (= (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292300) tb!206065))

(declare-fun result!251180 () Bool)

(assert (= result!251180 result!251176))

(assert (=> d!1061076 t!292300))

(declare-fun b_and!261611 () Bool)

(assert (= b_and!261551 (and (=> t!292300 result!251180) b_and!261611)))

(declare-fun t!292302 () Bool)

(declare-fun tb!206067 () Bool)

(assert (=> (and b!3600383 (= (toChars!7749 (transformation!5606 (rule!8340 token!511))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292302) tb!206067))

(declare-fun result!251182 () Bool)

(assert (= result!251182 result!251176))

(assert (=> d!1061076 t!292302))

(declare-fun b_and!261613 () Bool)

(assert (= b_and!261553 (and (=> t!292302 result!251182) b_and!261613)))

(declare-fun b_lambda!106499 () Bool)

(assert (=> (not b_lambda!106499) (not d!1061076)))

(declare-fun tb!206069 () Bool)

(declare-fun t!292304 () Bool)

(assert (=> (and b!3600384 (= (toValue!7890 (transformation!5606 (h!43295 rules!3307))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292304) tb!206069))

(declare-fun result!251184 () Bool)

(assert (=> tb!206069 (= result!251184 (inv!21 (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901)))))

(declare-fun m!4097127 () Bool)

(assert (=> tb!206069 m!4097127))

(assert (=> d!1061076 t!292304))

(declare-fun b_and!261615 () Bool)

(assert (= b_and!261555 (and (=> t!292304 result!251184) b_and!261615)))

(declare-fun t!292306 () Bool)

(declare-fun tb!206071 () Bool)

(assert (=> (and b!3600373 (= (toValue!7890 (transformation!5606 rule!403)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292306) tb!206071))

(declare-fun result!251186 () Bool)

(assert (= result!251186 result!251184))

(assert (=> d!1061076 t!292306))

(declare-fun b_and!261617 () Bool)

(assert (= b_and!261557 (and (=> t!292306 result!251186) b_and!261617)))

(declare-fun tb!206073 () Bool)

(declare-fun t!292308 () Bool)

(assert (=> (and b!3600379 (= (toValue!7890 (transformation!5606 anOtherTypeRule!33)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292308) tb!206073))

(declare-fun result!251188 () Bool)

(assert (= result!251188 result!251184))

(assert (=> d!1061076 t!292308))

(declare-fun b_and!261619 () Bool)

(assert (= b_and!261559 (and (=> t!292308 result!251188) b_and!261619)))

(declare-fun t!292310 () Bool)

(declare-fun tb!206075 () Bool)

(assert (=> (and b!3600383 (= (toValue!7890 (transformation!5606 (rule!8340 token!511))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292310) tb!206075))

(declare-fun result!251190 () Bool)

(assert (= result!251190 result!251184))

(assert (=> d!1061076 t!292310))

(declare-fun b_and!261621 () Bool)

(assert (= b_and!261561 (and (=> t!292310 result!251190) b_and!261621)))

(declare-fun m!4097129 () Bool)

(assert (=> d!1061076 m!4097129))

(declare-fun m!4097131 () Bool)

(assert (=> d!1061076 m!4097131))

(assert (=> d!1061076 m!4097131))

(declare-fun m!4097133 () Bool)

(assert (=> d!1061076 m!4097133))

(assert (=> d!1061076 m!4096167))

(assert (=> d!1061076 m!4097129))

(declare-fun m!4097135 () Bool)

(assert (=> d!1061076 m!4097135))

(assert (=> b!3600355 d!1061076))

(declare-fun d!1061086 () Bool)

(assert (=> d!1061086 (= (size!28860 (_1!22016 lt!1236914)) (size!28862 (originalCharacters!6320 (_1!22016 lt!1236914))))))

(declare-fun Unit!53918 () Unit!53909)

(assert (=> d!1061086 (= (lemmaCharactersSize!659 (_1!22016 lt!1236914)) Unit!53918)))

(declare-fun bs!570553 () Bool)

(assert (= bs!570553 d!1061086))

(declare-fun m!4097137 () Bool)

(assert (=> bs!570553 m!4097137))

(assert (=> b!3600355 d!1061086))

(declare-fun d!1061088 () Bool)

(declare-fun lt!1237245 () Int)

(assert (=> d!1061088 (= lt!1237245 (size!28862 (list!13950 lt!1236901)))))

(declare-fun size!28864 (Conc!11531) Int)

(assert (=> d!1061088 (= lt!1237245 (size!28864 (c!623121 lt!1236901)))))

(assert (=> d!1061088 (= (size!28861 lt!1236901) lt!1237245)))

(declare-fun bs!570554 () Bool)

(assert (= bs!570554 d!1061088))

(assert (=> bs!570554 m!4096167))

(assert (=> bs!570554 m!4096167))

(declare-fun m!4097139 () Bool)

(assert (=> bs!570554 m!4097139))

(declare-fun m!4097141 () Bool)

(assert (=> bs!570554 m!4097141))

(assert (=> b!3600355 d!1061088))

(declare-fun d!1061090 () Bool)

(assert (=> d!1061090 (= (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914))) (fromListB!1921 (originalCharacters!6320 (_1!22016 lt!1236914))))))

(declare-fun bs!570555 () Bool)

(assert (= bs!570555 d!1061090))

(declare-fun m!4097143 () Bool)

(assert (=> bs!570555 m!4097143))

(assert (=> b!3600355 d!1061090))

(declare-fun d!1061092 () Bool)

(assert (=> d!1061092 (= (apply!9112 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901))))

(declare-fun b_lambda!106501 () Bool)

(assert (=> (not b_lambda!106501) (not d!1061092)))

(assert (=> d!1061092 t!292304))

(declare-fun b_and!261623 () Bool)

(assert (= b_and!261615 (and (=> t!292304 result!251184) b_and!261623)))

(assert (=> d!1061092 t!292306))

(declare-fun b_and!261625 () Bool)

(assert (= b_and!261617 (and (=> t!292306 result!251186) b_and!261625)))

(assert (=> d!1061092 t!292308))

(declare-fun b_and!261627 () Bool)

(assert (= b_and!261619 (and (=> t!292308 result!251188) b_and!261627)))

(assert (=> d!1061092 t!292310))

(declare-fun b_and!261629 () Bool)

(assert (= b_and!261621 (and (=> t!292310 result!251190) b_and!261629)))

(assert (=> d!1061092 m!4097129))

(assert (=> b!3600355 d!1061092))

(declare-fun b!3601114 () Bool)

(declare-fun e!2228392 () Bool)

(assert (=> b!3601114 (= e!2228392 true)))

(declare-fun d!1061094 () Bool)

(assert (=> d!1061094 e!2228392))

(assert (= d!1061094 b!3601114))

(declare-fun order!20641 () Int)

(declare-fun lambda!123969 () Int)

(declare-fun dynLambda!16350 (Int Int) Int)

(assert (=> b!3601114 (< (dynLambda!16347 order!20635 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) (dynLambda!16350 order!20641 lambda!123969))))

(assert (=> b!3601114 (< (dynLambda!16349 order!20639 (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) (dynLambda!16350 order!20641 lambda!123969))))

(assert (=> d!1061094 (= (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) lt!1236901) (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914)))))))

(declare-fun lt!1237248 () Unit!53909)

(declare-fun Forall2of!301 (Int BalanceConc!22676 BalanceConc!22676) Unit!53909)

(assert (=> d!1061094 (= lt!1237248 (Forall2of!301 lambda!123969 lt!1236901 (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914)))))))

(assert (=> d!1061094 (= (list!13950 lt!1236901) (list!13950 (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914)))))))

(assert (=> d!1061094 (= (lemmaEqSameImage!797 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))) lt!1236901 (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914)))) lt!1237248)))

(declare-fun b_lambda!106503 () Bool)

(assert (=> (not b_lambda!106503) (not d!1061094)))

(assert (=> d!1061094 t!292304))

(declare-fun b_and!261631 () Bool)

(assert (= b_and!261623 (and (=> t!292304 result!251184) b_and!261631)))

(assert (=> d!1061094 t!292306))

(declare-fun b_and!261633 () Bool)

(assert (= b_and!261625 (and (=> t!292306 result!251186) b_and!261633)))

(assert (=> d!1061094 t!292308))

(declare-fun b_and!261635 () Bool)

(assert (= b_and!261627 (and (=> t!292308 result!251188) b_and!261635)))

(assert (=> d!1061094 t!292310))

(declare-fun b_and!261637 () Bool)

(assert (= b_and!261629 (and (=> t!292310 result!251190) b_and!261637)))

(declare-fun b_lambda!106505 () Bool)

(assert (=> (not b_lambda!106505) (not d!1061094)))

(declare-fun tb!206077 () Bool)

(declare-fun t!292312 () Bool)

(assert (=> (and b!3600384 (= (toValue!7890 (transformation!5606 (h!43295 rules!3307))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292312) tb!206077))

(declare-fun result!251192 () Bool)

(assert (=> tb!206077 (= result!251192 (inv!21 (dynLambda!16346 (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914)))) (seqFromList!4159 (originalCharacters!6320 (_1!22016 lt!1236914))))))))

(declare-fun m!4097145 () Bool)

(assert (=> tb!206077 m!4097145))

(assert (=> d!1061094 t!292312))

(declare-fun b_and!261639 () Bool)

(assert (= b_and!261631 (and (=> t!292312 result!251192) b_and!261639)))

(declare-fun tb!206079 () Bool)

(declare-fun t!292314 () Bool)

(assert (=> (and b!3600373 (= (toValue!7890 (transformation!5606 rule!403)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292314) tb!206079))

(declare-fun result!251194 () Bool)

(assert (= result!251194 result!251192))

(assert (=> d!1061094 t!292314))

(declare-fun b_and!261641 () Bool)

(assert (= b_and!261633 (and (=> t!292314 result!251194) b_and!261641)))

(declare-fun t!292316 () Bool)

(declare-fun tb!206081 () Bool)

(assert (=> (and b!3600379 (= (toValue!7890 (transformation!5606 anOtherTypeRule!33)) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292316) tb!206081))

(declare-fun result!251196 () Bool)

(assert (= result!251196 result!251192))

(assert (=> d!1061094 t!292316))

(declare-fun b_and!261643 () Bool)

(assert (= b_and!261635 (and (=> t!292316 result!251196) b_and!261643)))

(declare-fun tb!206083 () Bool)

(declare-fun t!292318 () Bool)

(assert (=> (and b!3600383 (= (toValue!7890 (transformation!5606 (rule!8340 token!511))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292318) tb!206083))

(declare-fun result!251198 () Bool)

(assert (= result!251198 result!251192))

(assert (=> d!1061094 t!292318))

(declare-fun b_and!261645 () Bool)

(assert (= b_and!261637 (and (=> t!292318 result!251198) b_and!261645)))

(assert (=> d!1061094 m!4096167))

(assert (=> d!1061094 m!4097129))

(assert (=> d!1061094 m!4096185))

(declare-fun m!4097147 () Bool)

(assert (=> d!1061094 m!4097147))

(assert (=> d!1061094 m!4096185))

(declare-fun m!4097149 () Bool)

(assert (=> d!1061094 m!4097149))

(assert (=> d!1061094 m!4096185))

(declare-fun m!4097151 () Bool)

(assert (=> d!1061094 m!4097151))

(assert (=> b!3600355 d!1061094))

(declare-fun d!1061096 () Bool)

(assert (=> d!1061096 (= (inv!51227 (tag!6296 (rule!8340 token!511))) (= (mod (str.len (value!180230 (tag!6296 (rule!8340 token!511)))) 2) 0))))

(assert (=> b!3600354 d!1061096))

(declare-fun d!1061098 () Bool)

(declare-fun res!1455364 () Bool)

(declare-fun e!2228394 () Bool)

(assert (=> d!1061098 (=> (not res!1455364) (not e!2228394))))

(assert (=> d!1061098 (= res!1455364 (semiInverseModEq!2381 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (toValue!7890 (transformation!5606 (rule!8340 token!511)))))))

(assert (=> d!1061098 (= (inv!51230 (transformation!5606 (rule!8340 token!511))) e!2228394)))

(declare-fun b!3601115 () Bool)

(assert (=> b!3601115 (= e!2228394 (equivClasses!2280 (toChars!7749 (transformation!5606 (rule!8340 token!511))) (toValue!7890 (transformation!5606 (rule!8340 token!511)))))))

(assert (= (and d!1061098 res!1455364) b!3601115))

(declare-fun m!4097153 () Bool)

(assert (=> d!1061098 m!4097153))

(declare-fun m!4097155 () Bool)

(assert (=> b!3601115 m!4097155))

(assert (=> b!3600354 d!1061098))

(declare-fun b!3601128 () Bool)

(declare-fun e!2228397 () Bool)

(declare-fun tp!1101483 () Bool)

(assert (=> b!3601128 (= e!2228397 tp!1101483)))

(assert (=> b!3600366 (= tp!1101411 e!2228397)))

(declare-fun b!3601127 () Bool)

(declare-fun tp!1101479 () Bool)

(declare-fun tp!1101482 () Bool)

(assert (=> b!3601127 (= e!2228397 (and tp!1101479 tp!1101482))))

(declare-fun b!3601126 () Bool)

(assert (=> b!3601126 (= e!2228397 tp_is_empty!17813)))

(declare-fun b!3601129 () Bool)

(declare-fun tp!1101480 () Bool)

(declare-fun tp!1101481 () Bool)

(assert (=> b!3601129 (= e!2228397 (and tp!1101480 tp!1101481))))

(assert (= (and b!3600366 ((_ is ElementMatch!10365) (regex!5606 anOtherTypeRule!33))) b!3601126))

(assert (= (and b!3600366 ((_ is Concat!16202) (regex!5606 anOtherTypeRule!33))) b!3601127))

(assert (= (and b!3600366 ((_ is Star!10365) (regex!5606 anOtherTypeRule!33))) b!3601128))

(assert (= (and b!3600366 ((_ is Union!10365) (regex!5606 anOtherTypeRule!33))) b!3601129))

(declare-fun b!3601140 () Bool)

(declare-fun b_free!93181 () Bool)

(declare-fun b_next!93885 () Bool)

(assert (=> b!3601140 (= b_free!93181 (not b_next!93885))))

(declare-fun t!292320 () Bool)

(declare-fun tb!206085 () Bool)

(assert (=> (and b!3601140 (= (toValue!7890 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292320) tb!206085))

(declare-fun result!251204 () Bool)

(assert (= result!251204 result!251124))

(assert (=> d!1061064 t!292320))

(declare-fun t!292322 () Bool)

(declare-fun tb!206087 () Bool)

(assert (=> (and b!3601140 (= (toValue!7890 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292322) tb!206087))

(declare-fun result!251206 () Bool)

(assert (= result!251206 result!251184))

(assert (=> d!1061094 t!292322))

(assert (=> d!1061076 t!292322))

(assert (=> d!1061092 t!292322))

(declare-fun t!292324 () Bool)

(declare-fun tb!206089 () Bool)

(assert (=> (and b!3601140 (= (toValue!7890 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toValue!7890 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292324) tb!206089))

(declare-fun result!251208 () Bool)

(assert (= result!251208 result!251192))

(assert (=> d!1061094 t!292324))

(declare-fun tp!1101494 () Bool)

(declare-fun b_and!261647 () Bool)

(assert (=> b!3601140 (= tp!1101494 (and (=> t!292322 result!251206) (=> t!292324 result!251208) (=> t!292320 result!251204) b_and!261647))))

(declare-fun b_free!93183 () Bool)

(declare-fun b_next!93887 () Bool)

(assert (=> b!3601140 (= b_free!93183 (not b_next!93887))))

(declare-fun tb!206091 () Bool)

(declare-fun t!292326 () Bool)

(assert (=> (and b!3601140 (= (toChars!7749 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toChars!7749 (transformation!5606 (rule!8340 token!511)))) t!292326) tb!206091))

(declare-fun result!251210 () Bool)

(assert (= result!251210 result!251106))

(assert (=> b!3600564 t!292326))

(assert (=> d!1060978 t!292326))

(declare-fun tb!206093 () Bool)

(declare-fun t!292328 () Bool)

(assert (=> (and b!3601140 (= (toChars!7749 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292328) tb!206093))

(declare-fun result!251212 () Bool)

(assert (= result!251212 result!251116))

(assert (=> d!1060982 t!292328))

(declare-fun t!292330 () Bool)

(declare-fun tb!206095 () Bool)

(assert (=> (and b!3601140 (= (toChars!7749 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toChars!7749 (transformation!5606 (rule!8340 (_1!22016 lt!1236914))))) t!292330) tb!206095))

(declare-fun result!251214 () Bool)

(assert (= result!251214 result!251176))

(assert (=> d!1061076 t!292330))

(declare-fun b_and!261649 () Bool)

(declare-fun tp!1101493 () Bool)

(assert (=> b!3601140 (= tp!1101493 (and (=> t!292326 result!251210) (=> t!292328 result!251212) (=> t!292330 result!251214) b_and!261649))))

(declare-fun e!2228408 () Bool)

(assert (=> b!3601140 (= e!2228408 (and tp!1101494 tp!1101493))))

(declare-fun b!3601139 () Bool)

(declare-fun e!2228407 () Bool)

(declare-fun tp!1101495 () Bool)

(assert (=> b!3601139 (= e!2228407 (and tp!1101495 (inv!51227 (tag!6296 (h!43295 (t!292210 rules!3307)))) (inv!51230 (transformation!5606 (h!43295 (t!292210 rules!3307)))) e!2228408))))

(declare-fun b!3601138 () Bool)

(declare-fun e!2228406 () Bool)

(declare-fun tp!1101492 () Bool)

(assert (=> b!3601138 (= e!2228406 (and e!2228407 tp!1101492))))

(assert (=> b!3600377 (= tp!1101399 e!2228406)))

(assert (= b!3601139 b!3601140))

(assert (= b!3601138 b!3601139))

(assert (= (and b!3600377 ((_ is Cons!37875) (t!292210 rules!3307))) b!3601138))

(declare-fun m!4097157 () Bool)

(assert (=> b!3601139 m!4097157))

(declare-fun m!4097159 () Bool)

(assert (=> b!3601139 m!4097159))

(declare-fun b!3601143 () Bool)

(declare-fun e!2228410 () Bool)

(declare-fun tp!1101500 () Bool)

(assert (=> b!3601143 (= e!2228410 tp!1101500)))

(assert (=> b!3600361 (= tp!1101406 e!2228410)))

(declare-fun b!3601142 () Bool)

(declare-fun tp!1101496 () Bool)

(declare-fun tp!1101499 () Bool)

(assert (=> b!3601142 (= e!2228410 (and tp!1101496 tp!1101499))))

(declare-fun b!3601141 () Bool)

(assert (=> b!3601141 (= e!2228410 tp_is_empty!17813)))

(declare-fun b!3601144 () Bool)

(declare-fun tp!1101497 () Bool)

(declare-fun tp!1101498 () Bool)

(assert (=> b!3601144 (= e!2228410 (and tp!1101497 tp!1101498))))

(assert (= (and b!3600361 ((_ is ElementMatch!10365) (regex!5606 (h!43295 rules!3307)))) b!3601141))

(assert (= (and b!3600361 ((_ is Concat!16202) (regex!5606 (h!43295 rules!3307)))) b!3601142))

(assert (= (and b!3600361 ((_ is Star!10365) (regex!5606 (h!43295 rules!3307)))) b!3601143))

(assert (= (and b!3600361 ((_ is Union!10365) (regex!5606 (h!43295 rules!3307)))) b!3601144))

(declare-fun b!3601149 () Bool)

(declare-fun e!2228413 () Bool)

(declare-fun tp!1101503 () Bool)

(assert (=> b!3601149 (= e!2228413 (and tp_is_empty!17813 tp!1101503))))

(assert (=> b!3600362 (= tp!1101404 e!2228413)))

(assert (= (and b!3600362 ((_ is Cons!37873) (originalCharacters!6320 token!511))) b!3601149))

(declare-fun b!3601150 () Bool)

(declare-fun e!2228414 () Bool)

(declare-fun tp!1101504 () Bool)

(assert (=> b!3601150 (= e!2228414 (and tp_is_empty!17813 tp!1101504))))

(assert (=> b!3600375 (= tp!1101405 e!2228414)))

(assert (= (and b!3600375 ((_ is Cons!37873) (t!292208 suffix!1395))) b!3601150))

(declare-fun b!3601153 () Bool)

(declare-fun e!2228415 () Bool)

(declare-fun tp!1101509 () Bool)

(assert (=> b!3601153 (= e!2228415 tp!1101509)))

(assert (=> b!3600360 (= tp!1101401 e!2228415)))

(declare-fun b!3601152 () Bool)

(declare-fun tp!1101505 () Bool)

(declare-fun tp!1101508 () Bool)

(assert (=> b!3601152 (= e!2228415 (and tp!1101505 tp!1101508))))

(declare-fun b!3601151 () Bool)

(assert (=> b!3601151 (= e!2228415 tp_is_empty!17813)))

(declare-fun b!3601154 () Bool)

(declare-fun tp!1101506 () Bool)

(declare-fun tp!1101507 () Bool)

(assert (=> b!3601154 (= e!2228415 (and tp!1101506 tp!1101507))))

(assert (= (and b!3600360 ((_ is ElementMatch!10365) (regex!5606 rule!403))) b!3601151))

(assert (= (and b!3600360 ((_ is Concat!16202) (regex!5606 rule!403))) b!3601152))

(assert (= (and b!3600360 ((_ is Star!10365) (regex!5606 rule!403))) b!3601153))

(assert (= (and b!3600360 ((_ is Union!10365) (regex!5606 rule!403))) b!3601154))

(declare-fun b!3601157 () Bool)

(declare-fun e!2228416 () Bool)

(declare-fun tp!1101514 () Bool)

(assert (=> b!3601157 (= e!2228416 tp!1101514)))

(assert (=> b!3600354 (= tp!1101402 e!2228416)))

(declare-fun b!3601156 () Bool)

(declare-fun tp!1101510 () Bool)

(declare-fun tp!1101513 () Bool)

(assert (=> b!3601156 (= e!2228416 (and tp!1101510 tp!1101513))))

(declare-fun b!3601155 () Bool)

(assert (=> b!3601155 (= e!2228416 tp_is_empty!17813)))

(declare-fun b!3601158 () Bool)

(declare-fun tp!1101511 () Bool)

(declare-fun tp!1101512 () Bool)

(assert (=> b!3601158 (= e!2228416 (and tp!1101511 tp!1101512))))

(assert (= (and b!3600354 ((_ is ElementMatch!10365) (regex!5606 (rule!8340 token!511)))) b!3601155))

(assert (= (and b!3600354 ((_ is Concat!16202) (regex!5606 (rule!8340 token!511)))) b!3601156))

(assert (= (and b!3600354 ((_ is Star!10365) (regex!5606 (rule!8340 token!511)))) b!3601157))

(assert (= (and b!3600354 ((_ is Union!10365) (regex!5606 (rule!8340 token!511)))) b!3601158))

(declare-fun b_lambda!106507 () Bool)

(assert (= b_lambda!106475 (or (and b!3600383 b_free!93175) (and b!3600384 b_free!93163 (= (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3600379 b_free!93171 (= (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3601140 b_free!93183 (= (toChars!7749 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3600373 b_free!93167 (= (toChars!7749 (transformation!5606 rule!403)) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) b_lambda!106507)))

(declare-fun b_lambda!106509 () Bool)

(assert (= b_lambda!106477 (or (and b!3600383 b_free!93175) (and b!3600384 b_free!93163 (= (toChars!7749 (transformation!5606 (h!43295 rules!3307))) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3600379 b_free!93171 (= (toChars!7749 (transformation!5606 anOtherTypeRule!33)) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3601140 b_free!93183 (= (toChars!7749 (transformation!5606 (h!43295 (t!292210 rules!3307)))) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) (and b!3600373 b_free!93167 (= (toChars!7749 (transformation!5606 rule!403)) (toChars!7749 (transformation!5606 (rule!8340 token!511))))) b_lambda!106509)))

(check-sat (not d!1060990) (not d!1060982) (not b!3600949) (not bm!260416) (not d!1060968) b_and!261613 (not b!3601033) (not b!3601142) (not b!3600859) (not b!3601144) (not b!3600818) (not d!1060876) (not b!3600822) (not b!3600827) (not b!3600831) (not b_lambda!106501) (not b_next!93867) (not d!1061034) (not tb!206069) (not bm!260418) (not b!3601138) (not b!3601037) (not b!3600687) (not d!1061002) (not bm!260391) b_and!261641 (not b!3601157) (not b!3600998) (not d!1060874) (not b!3600553) (not b_next!93875) (not bm!260403) (not b!3600778) b_and!261649 (not b!3600797) (not b!3600627) (not d!1060906) (not d!1061000) (not b!3600989) (not b!3600996) (not d!1060868) (not b!3600824) (not b!3600675) (not b!3600606) (not b!3600963) (not b!3601115) (not b!3601045) (not b!3600625) (not b!3600990) (not d!1060946) (not b!3601009) (not b_lambda!106499) (not d!1060898) (not d!1061090) (not b!3600852) (not b!3601128) (not b!3600802) (not b!3600826) (not b!3600950) (not b_next!93885) (not b!3601034) (not d!1060886) (not b!3600639) (not d!1060976) (not b!3600805) (not bm!260413) (not b!3600992) (not d!1061046) (not b!3600851) (not d!1061052) (not b!3600540) (not d!1061070) (not d!1060994) (not b!3600570) b_and!261611 (not b!3600725) (not d!1060972) (not b!3600849) (not d!1060974) (not bm!260404) (not b!3600815) (not d!1061098) (not b!3600823) (not b!3600716) (not b!3600962) (not b!3600564) (not b!3600817) (not d!1060866) (not tb!206077) (not b_next!93865) (not b!3600667) (not b!3601107) b_and!261607 (not d!1060916) (not b!3600858) (not b!3600846) (not b_next!93873) (not b!3600821) (not b!3600966) (not b!3601143) (not d!1061076) (not b!3600853) (not b_next!93871) (not b!3601152) (not b!3600673) (not b!3600951) (not b!3601036) (not b_lambda!106505) (not d!1061094) (not b!3600679) (not d!1060988) (not b!3600825) (not b!3601032) (not b!3601139) (not b_lambda!106507) (not b!3600830) (not b_next!93879) (not b!3600820) (not b!3600828) (not tb!206061) (not b!3601038) (not d!1060914) (not tb!206009) b_and!261647 (not d!1061072) (not b!3601154) (not tb!206001) (not d!1060852) (not d!1061042) (not b!3601129) (not d!1061068) (not b!3601156) (not b!3600666) (not b_lambda!106497) (not b!3600816) (not b!3600547) (not d!1061086) (not b!3600970) (not b!3600800) (not b!3600847) (not d!1060996) (not bm!260408) (not b_lambda!106509) (not d!1061036) (not b!3600669) (not b!3600804) (not b!3600591) (not b!3600798) (not b!3601002) (not b!3600565) (not b!3600799) (not b!3600650) (not b!3600558) (not b_lambda!106479) (not bm!260414) (not b_next!93869) (not d!1060896) (not tb!206017) (not bm!260417) (not d!1061088) (not b!3600541) b_and!261609 b_and!261639 (not bm!260409) (not d!1060978) (not d!1061050) (not b!3601004) (not d!1061054) tp_is_empty!17813 (not b!3600717) (not b!3600549) (not b!3600680) (not b_next!93887) (not b!3601158) (not d!1061038) (not b!3601150) (not b!3601153) b_and!261643 (not b!3601039) (not b!3600980) (not bm!260405) (not bm!260386) (not bm!260412) (not b_lambda!106481) b_and!261645 (not d!1060984) (not b!3600967) (not b!3600626) (not d!1061066) (not d!1061062) (not bm!260419) (not b!3601035) (not d!1061058) (not b_lambda!106503) (not b_next!93877) (not b!3601127) (not b!3600801) (not d!1060870) (not b!3601149) (not b!3600543))
(check-sat b_and!261613 (not b_next!93867) b_and!261641 (not b_next!93875) b_and!261649 (not b_next!93885) b_and!261611 (not b_next!93865) (not b_next!93871) (not b_next!93879) b_and!261647 (not b_next!93869) (not b_next!93887) b_and!261643 b_and!261645 (not b_next!93877) b_and!261607 (not b_next!93873) b_and!261609 b_and!261639)
