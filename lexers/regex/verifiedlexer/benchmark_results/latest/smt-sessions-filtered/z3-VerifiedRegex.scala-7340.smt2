; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390306 () Bool)

(assert start!390306)

(declare-fun b!4117506 () Bool)

(declare-fun b_free!116171 () Bool)

(declare-fun b_next!116875 () Bool)

(assert (=> b!4117506 (= b_free!116171 (not b_next!116875))))

(declare-fun tp!1254519 () Bool)

(declare-fun b_and!318253 () Bool)

(assert (=> b!4117506 (= tp!1254519 b_and!318253)))

(declare-fun b_free!116173 () Bool)

(declare-fun b_next!116877 () Bool)

(assert (=> b!4117506 (= b_free!116173 (not b_next!116877))))

(declare-fun tp!1254517 () Bool)

(declare-fun b_and!318255 () Bool)

(assert (=> b!4117506 (= tp!1254517 b_and!318255)))

(declare-fun b!4117514 () Bool)

(declare-fun b_free!116175 () Bool)

(declare-fun b_next!116879 () Bool)

(assert (=> b!4117514 (= b_free!116175 (not b_next!116879))))

(declare-fun tp!1254513 () Bool)

(declare-fun b_and!318257 () Bool)

(assert (=> b!4117514 (= tp!1254513 b_and!318257)))

(declare-fun b_free!116177 () Bool)

(declare-fun b_next!116881 () Bool)

(assert (=> b!4117514 (= b_free!116177 (not b_next!116881))))

(declare-fun tp!1254514 () Bool)

(declare-fun b_and!318259 () Bool)

(assert (=> b!4117514 (= tp!1254514 b_and!318259)))

(declare-fun b!4117496 () Bool)

(declare-fun b_free!116179 () Bool)

(declare-fun b_next!116883 () Bool)

(assert (=> b!4117496 (= b_free!116179 (not b_next!116883))))

(declare-fun tp!1254522 () Bool)

(declare-fun b_and!318261 () Bool)

(assert (=> b!4117496 (= tp!1254522 b_and!318261)))

(declare-fun b_free!116181 () Bool)

(declare-fun b_next!116885 () Bool)

(assert (=> b!4117496 (= b_free!116181 (not b_next!116885))))

(declare-fun tp!1254520 () Bool)

(declare-fun b_and!318263 () Bool)

(assert (=> b!4117496 (= tp!1254520 b_and!318263)))

(declare-fun e!2554845 () Bool)

(assert (=> b!4117496 (= e!2554845 (and tp!1254522 tp!1254520))))

(declare-fun b!4117497 () Bool)

(declare-fun e!2554840 () Bool)

(declare-fun tp_is_empty!21237 () Bool)

(declare-fun tp!1254518 () Bool)

(assert (=> b!4117497 (= e!2554840 (and tp_is_empty!21237 tp!1254518))))

(declare-fun b!4117498 () Bool)

(declare-fun res!1681750 () Bool)

(declare-fun e!2554837 () Bool)

(assert (=> b!4117498 (=> (not res!1681750) (not e!2554837))))

(declare-datatypes ((List!44597 0))(
  ( (Nil!44473) (Cons!44473 (h!49893 (_ BitVec 16)) (t!340500 List!44597)) )
))
(declare-datatypes ((TokenValue!7482 0))(
  ( (FloatLiteralValue!14964 (text!52819 List!44597)) (TokenValueExt!7481 (__x!27181 Int)) (Broken!37410 (value!227210 List!44597)) (Object!7605) (End!7482) (Def!7482) (Underscore!7482) (Match!7482) (Else!7482) (Error!7482) (Case!7482) (If!7482) (Extends!7482) (Abstract!7482) (Class!7482) (Val!7482) (DelimiterValue!14964 (del!7542 List!44597)) (KeywordValue!7488 (value!227211 List!44597)) (CommentValue!14964 (value!227212 List!44597)) (WhitespaceValue!14964 (value!227213 List!44597)) (IndentationValue!7482 (value!227214 List!44597)) (String!51159) (Int32!7482) (Broken!37411 (value!227215 List!44597)) (Boolean!7483) (Unit!63832) (OperatorValue!7485 (op!7542 List!44597)) (IdentifierValue!14964 (value!227216 List!44597)) (IdentifierValue!14965 (value!227217 List!44597)) (WhitespaceValue!14965 (value!227218 List!44597)) (True!14964) (False!14964) (Broken!37412 (value!227219 List!44597)) (Broken!37413 (value!227220 List!44597)) (True!14965) (RightBrace!7482) (RightBracket!7482) (Colon!7482) (Null!7482) (Comma!7482) (LeftBracket!7482) (False!14965) (LeftBrace!7482) (ImaginaryLiteralValue!7482 (text!52820 List!44597)) (StringLiteralValue!22446 (value!227221 List!44597)) (EOFValue!7482 (value!227222 List!44597)) (IdentValue!7482 (value!227223 List!44597)) (DelimiterValue!14965 (value!227224 List!44597)) (DedentValue!7482 (value!227225 List!44597)) (NewLineValue!7482 (value!227226 List!44597)) (IntegerValue!22446 (value!227227 (_ BitVec 32)) (text!52821 List!44597)) (IntegerValue!22447 (value!227228 Int) (text!52822 List!44597)) (Times!7482) (Or!7482) (Equal!7482) (Minus!7482) (Broken!37414 (value!227229 List!44597)) (And!7482) (Div!7482) (LessEqual!7482) (Mod!7482) (Concat!19639) (Not!7482) (Plus!7482) (SpaceValue!7482 (value!227230 List!44597)) (IntegerValue!22448 (value!227231 Int) (text!52823 List!44597)) (StringLiteralValue!22447 (text!52824 List!44597)) (FloatLiteralValue!14965 (text!52825 List!44597)) (BytesLiteralValue!7482 (value!227232 List!44597)) (CommentValue!14965 (value!227233 List!44597)) (StringLiteralValue!22448 (value!227234 List!44597)) (ErrorTokenValue!7482 (msg!7543 List!44597)) )
))
(declare-datatypes ((C!24500 0))(
  ( (C!24501 (val!14360 Int)) )
))
(declare-datatypes ((List!44598 0))(
  ( (Nil!44474) (Cons!44474 (h!49894 C!24500) (t!340501 List!44598)) )
))
(declare-datatypes ((IArray!26931 0))(
  ( (IArray!26932 (innerList!13523 List!44598)) )
))
(declare-datatypes ((Conc!13463 0))(
  ( (Node!13463 (left!33323 Conc!13463) (right!33653 Conc!13463) (csize!27156 Int) (cheight!13674 Int)) (Leaf!20804 (xs!16769 IArray!26931) (csize!27157 Int)) (Empty!13463) )
))
(declare-datatypes ((BalanceConc!26520 0))(
  ( (BalanceConc!26521 (c!707266 Conc!13463)) )
))
(declare-datatypes ((Regex!12157 0))(
  ( (ElementMatch!12157 (c!707267 C!24500)) (Concat!19640 (regOne!24826 Regex!12157) (regTwo!24826 Regex!12157)) (EmptyExpr!12157) (Star!12157 (reg!12486 Regex!12157)) (EmptyLang!12157) (Union!12157 (regOne!24827 Regex!12157) (regTwo!24827 Regex!12157)) )
))
(declare-datatypes ((String!51160 0))(
  ( (String!51161 (value!227235 String)) )
))
(declare-datatypes ((TokenValueInjection!14392 0))(
  ( (TokenValueInjection!14393 (toValue!9904 Int) (toChars!9763 Int)) )
))
(declare-datatypes ((Rule!14304 0))(
  ( (Rule!14305 (regex!7252 Regex!12157) (tag!8112 String!51160) (isSeparator!7252 Bool) (transformation!7252 TokenValueInjection!14392)) )
))
(declare-datatypes ((List!44599 0))(
  ( (Nil!44475) (Cons!44475 (h!49895 Rule!14304) (t!340502 List!44599)) )
))
(declare-fun rules!3756 () List!44599)

(declare-fun rBis!149 () Rule!14304)

(declare-fun contains!8924 (List!44599 Rule!14304) Bool)

(assert (=> b!4117498 (= res!1681750 (contains!8924 rules!3756 rBis!149))))

(declare-fun b!4117499 () Bool)

(declare-fun res!1681757 () Bool)

(assert (=> b!4117499 (=> (not res!1681757) (not e!2554837))))

(declare-fun r!4008 () Rule!14304)

(assert (=> b!4117499 (= res!1681757 (contains!8924 rules!3756 r!4008))))

(declare-fun b!4117500 () Bool)

(declare-fun e!2554847 () Bool)

(assert (=> b!4117500 (= e!2554837 e!2554847)))

(declare-fun res!1681756 () Bool)

(assert (=> b!4117500 (=> (not res!1681756) (not e!2554847))))

(declare-fun input!3238 () List!44598)

(declare-fun p!2912 () List!44598)

(declare-datatypes ((LexerInterface!6841 0))(
  ( (LexerInterfaceExt!6838 (__x!27182 Int)) (Lexer!6839) )
))
(declare-fun thiss!25645 () LexerInterface!6841)

(declare-fun lt!1469040 () BalanceConc!26520)

(declare-datatypes ((Token!13434 0))(
  ( (Token!13435 (value!227236 TokenValue!7482) (rule!10318 Rule!14304) (size!32913 Int) (originalCharacters!7748 List!44598)) )
))
(declare-datatypes ((tuple2!42962 0))(
  ( (tuple2!42963 (_1!24615 Token!13434) (_2!24615 List!44598)) )
))
(declare-datatypes ((Option!9560 0))(
  ( (None!9559) (Some!9559 (v!40137 tuple2!42962)) )
))
(declare-fun maxPrefix!4033 (LexerInterface!6841 List!44599 List!44598) Option!9560)

(declare-fun apply!10325 (TokenValueInjection!14392 BalanceConc!26520) TokenValue!7482)

(declare-fun size!32914 (List!44598) Int)

(declare-fun getSuffix!2516 (List!44598 List!44598) List!44598)

(assert (=> b!4117500 (= res!1681756 (= (maxPrefix!4033 thiss!25645 rules!3756 input!3238) (Some!9559 (tuple2!42963 (Token!13435 (apply!10325 (transformation!7252 r!4008) lt!1469040) r!4008 (size!32914 p!2912) p!2912) (getSuffix!2516 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63833 0))(
  ( (Unit!63834) )
))
(declare-fun lt!1469038 () Unit!63833)

(declare-fun lemmaSemiInverse!2110 (TokenValueInjection!14392 BalanceConc!26520) Unit!63833)

(assert (=> b!4117500 (= lt!1469038 (lemmaSemiInverse!2110 (transformation!7252 r!4008) lt!1469040))))

(declare-fun seqFromList!5369 (List!44598) BalanceConc!26520)

(assert (=> b!4117500 (= lt!1469040 (seqFromList!5369 p!2912))))

(declare-fun b!4117501 () Bool)

(declare-fun e!2554843 () Bool)

(declare-fun tp!1254524 () Bool)

(assert (=> b!4117501 (= e!2554843 (and tp_is_empty!21237 tp!1254524))))

(declare-fun e!2554839 () Bool)

(declare-fun e!2554848 () Bool)

(declare-fun b!4117502 () Bool)

(declare-fun tp!1254521 () Bool)

(declare-fun inv!59063 (String!51160) Bool)

(declare-fun inv!59065 (TokenValueInjection!14392) Bool)

(assert (=> b!4117502 (= e!2554839 (and tp!1254521 (inv!59063 (tag!8112 r!4008)) (inv!59065 (transformation!7252 r!4008)) e!2554848))))

(declare-fun res!1681759 () Bool)

(assert (=> start!390306 (=> (not res!1681759) (not e!2554837))))

(get-info :version)

(assert (=> start!390306 (= res!1681759 ((_ is Lexer!6839) thiss!25645))))

(assert (=> start!390306 e!2554837))

(declare-fun e!2554842 () Bool)

(assert (=> start!390306 e!2554842))

(assert (=> start!390306 e!2554843))

(assert (=> start!390306 true))

(assert (=> start!390306 e!2554839))

(assert (=> start!390306 e!2554840))

(declare-fun e!2554846 () Bool)

(assert (=> start!390306 e!2554846))

(declare-fun b!4117503 () Bool)

(declare-fun res!1681752 () Bool)

(assert (=> b!4117503 (=> (not res!1681752) (not e!2554837))))

(declare-fun isEmpty!26443 (List!44598) Bool)

(assert (=> b!4117503 (= res!1681752 (not (isEmpty!26443 p!2912)))))

(declare-fun b!4117504 () Bool)

(declare-fun res!1681751 () Bool)

(assert (=> b!4117504 (=> (not res!1681751) (not e!2554847))))

(declare-fun getIndex!600 (List!44599 Rule!14304) Int)

(assert (=> b!4117504 (= res!1681751 (< (getIndex!600 rules!3756 rBis!149) (getIndex!600 rules!3756 r!4008)))))

(declare-fun b!4117505 () Bool)

(declare-fun res!1681755 () Bool)

(assert (=> b!4117505 (=> (not res!1681755) (not e!2554847))))

(declare-fun matchR!5988 (Regex!12157 List!44598) Bool)

(assert (=> b!4117505 (= res!1681755 (matchR!5988 (regex!7252 r!4008) p!2912))))

(assert (=> b!4117506 (= e!2554848 (and tp!1254519 tp!1254517))))

(declare-fun b!4117507 () Bool)

(declare-fun tp!1254516 () Bool)

(assert (=> b!4117507 (= e!2554846 (and tp!1254516 (inv!59063 (tag!8112 rBis!149)) (inv!59065 (transformation!7252 rBis!149)) e!2554845))))

(declare-fun b!4117508 () Bool)

(declare-fun res!1681758 () Bool)

(assert (=> b!4117508 (=> (not res!1681758) (not e!2554837))))

(declare-fun rulesInvariant!6138 (LexerInterface!6841 List!44599) Bool)

(assert (=> b!4117508 (= res!1681758 (rulesInvariant!6138 thiss!25645 rules!3756))))

(declare-fun b!4117509 () Bool)

(declare-fun res!1681753 () Bool)

(assert (=> b!4117509 (=> (not res!1681753) (not e!2554837))))

(declare-fun isEmpty!26444 (List!44599) Bool)

(assert (=> b!4117509 (= res!1681753 (not (isEmpty!26444 rules!3756)))))

(declare-fun b!4117510 () Bool)

(declare-fun res!1681754 () Bool)

(assert (=> b!4117510 (=> (not res!1681754) (not e!2554837))))

(declare-fun isPrefix!4187 (List!44598 List!44598) Bool)

(assert (=> b!4117510 (= res!1681754 (isPrefix!4187 p!2912 input!3238))))

(declare-fun b!4117511 () Bool)

(declare-fun e!2554836 () Bool)

(declare-fun tp!1254523 () Bool)

(assert (=> b!4117511 (= e!2554842 (and e!2554836 tp!1254523))))

(declare-fun b!4117512 () Bool)

(assert (=> b!4117512 (= e!2554847 false)))

(declare-fun lt!1469039 () Bool)

(declare-fun ruleValid!3060 (LexerInterface!6841 Rule!14304) Bool)

(assert (=> b!4117512 (= lt!1469039 (ruleValid!3060 thiss!25645 r!4008))))

(declare-fun e!2554838 () Bool)

(declare-fun b!4117513 () Bool)

(declare-fun tp!1254515 () Bool)

(assert (=> b!4117513 (= e!2554836 (and tp!1254515 (inv!59063 (tag!8112 (h!49895 rules!3756))) (inv!59065 (transformation!7252 (h!49895 rules!3756))) e!2554838))))

(assert (=> b!4117514 (= e!2554838 (and tp!1254513 tp!1254514))))

(assert (= (and start!390306 res!1681759) b!4117510))

(assert (= (and b!4117510 res!1681754) b!4117509))

(assert (= (and b!4117509 res!1681753) b!4117508))

(assert (= (and b!4117508 res!1681758) b!4117499))

(assert (= (and b!4117499 res!1681757) b!4117498))

(assert (= (and b!4117498 res!1681750) b!4117503))

(assert (= (and b!4117503 res!1681752) b!4117500))

(assert (= (and b!4117500 res!1681756) b!4117505))

(assert (= (and b!4117505 res!1681755) b!4117504))

(assert (= (and b!4117504 res!1681751) b!4117512))

(assert (= b!4117513 b!4117514))

(assert (= b!4117511 b!4117513))

(assert (= (and start!390306 ((_ is Cons!44475) rules!3756)) b!4117511))

(assert (= (and start!390306 ((_ is Cons!44474) p!2912)) b!4117501))

(assert (= b!4117502 b!4117506))

(assert (= start!390306 b!4117502))

(assert (= (and start!390306 ((_ is Cons!44474) input!3238)) b!4117497))

(assert (= b!4117507 b!4117496))

(assert (= start!390306 b!4117507))

(declare-fun m!4717105 () Bool)

(assert (=> b!4117498 m!4717105))

(declare-fun m!4717107 () Bool)

(assert (=> b!4117508 m!4717107))

(declare-fun m!4717109 () Bool)

(assert (=> b!4117513 m!4717109))

(declare-fun m!4717111 () Bool)

(assert (=> b!4117513 m!4717111))

(declare-fun m!4717113 () Bool)

(assert (=> b!4117504 m!4717113))

(declare-fun m!4717115 () Bool)

(assert (=> b!4117504 m!4717115))

(declare-fun m!4717117 () Bool)

(assert (=> b!4117499 m!4717117))

(declare-fun m!4717119 () Bool)

(assert (=> b!4117502 m!4717119))

(declare-fun m!4717121 () Bool)

(assert (=> b!4117502 m!4717121))

(declare-fun m!4717123 () Bool)

(assert (=> b!4117500 m!4717123))

(declare-fun m!4717125 () Bool)

(assert (=> b!4117500 m!4717125))

(declare-fun m!4717127 () Bool)

(assert (=> b!4117500 m!4717127))

(declare-fun m!4717129 () Bool)

(assert (=> b!4117500 m!4717129))

(declare-fun m!4717131 () Bool)

(assert (=> b!4117500 m!4717131))

(declare-fun m!4717133 () Bool)

(assert (=> b!4117500 m!4717133))

(declare-fun m!4717135 () Bool)

(assert (=> b!4117505 m!4717135))

(declare-fun m!4717137 () Bool)

(assert (=> b!4117507 m!4717137))

(declare-fun m!4717139 () Bool)

(assert (=> b!4117507 m!4717139))

(declare-fun m!4717141 () Bool)

(assert (=> b!4117512 m!4717141))

(declare-fun m!4717143 () Bool)

(assert (=> b!4117510 m!4717143))

(declare-fun m!4717145 () Bool)

(assert (=> b!4117509 m!4717145))

(declare-fun m!4717147 () Bool)

(assert (=> b!4117503 m!4717147))

(check-sat (not b!4117497) b_and!318255 b_and!318257 (not b!4117513) (not b_next!116883) (not b!4117510) b_and!318253 (not b!4117508) (not b!4117501) (not b!4117504) (not b_next!116879) (not b!4117512) (not b!4117507) (not b_next!116875) (not b!4117500) (not b!4117499) tp_is_empty!21237 (not b!4117502) b_and!318263 (not b!4117505) b_and!318261 (not b!4117509) (not b_next!116885) (not b_next!116877) (not b!4117511) (not b_next!116881) b_and!318259 (not b!4117498) (not b!4117503))
(check-sat b_and!318255 b_and!318257 (not b_next!116883) (not b_next!116875) b_and!318263 b_and!318253 b_and!318261 (not b_next!116885) (not b_next!116877) (not b_next!116879) (not b_next!116881) b_and!318259)
