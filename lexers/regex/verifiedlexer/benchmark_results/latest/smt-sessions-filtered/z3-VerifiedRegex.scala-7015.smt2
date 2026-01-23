; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372592 () Bool)

(assert start!372592)

(declare-fun b!3961040 () Bool)

(declare-fun b_free!109341 () Bool)

(declare-fun b_next!110045 () Bool)

(assert (=> b!3961040 (= b_free!109341 (not b_next!110045))))

(declare-fun tp!1207292 () Bool)

(declare-fun b_and!304123 () Bool)

(assert (=> b!3961040 (= tp!1207292 b_and!304123)))

(declare-fun b_free!109343 () Bool)

(declare-fun b_next!110047 () Bool)

(assert (=> b!3961040 (= b_free!109343 (not b_next!110047))))

(declare-fun tp!1207295 () Bool)

(declare-fun b_and!304125 () Bool)

(assert (=> b!3961040 (= tp!1207295 b_and!304125)))

(declare-fun b!3961048 () Bool)

(declare-fun b_free!109345 () Bool)

(declare-fun b_next!110049 () Bool)

(assert (=> b!3961048 (= b_free!109345 (not b_next!110049))))

(declare-fun tp!1207296 () Bool)

(declare-fun b_and!304127 () Bool)

(assert (=> b!3961048 (= tp!1207296 b_and!304127)))

(declare-fun b_free!109347 () Bool)

(declare-fun b_next!110051 () Bool)

(assert (=> b!3961048 (= b_free!109347 (not b_next!110051))))

(declare-fun tp!1207305 () Bool)

(declare-fun b_and!304129 () Bool)

(assert (=> b!3961048 (= tp!1207305 b_and!304129)))

(declare-fun b!3961041 () Bool)

(declare-fun b_free!109349 () Bool)

(declare-fun b_next!110053 () Bool)

(assert (=> b!3961041 (= b_free!109349 (not b_next!110053))))

(declare-fun tp!1207301 () Bool)

(declare-fun b_and!304131 () Bool)

(assert (=> b!3961041 (= tp!1207301 b_and!304131)))

(declare-fun b_free!109351 () Bool)

(declare-fun b_next!110055 () Bool)

(assert (=> b!3961041 (= b_free!109351 (not b_next!110055))))

(declare-fun tp!1207300 () Bool)

(declare-fun b_and!304133 () Bool)

(assert (=> b!3961041 (= tp!1207300 b_and!304133)))

(declare-fun tp!1207291 () Bool)

(declare-fun e!2452777 () Bool)

(declare-fun b!3961037 () Bool)

(declare-datatypes ((List!42321 0))(
  ( (Nil!42197) (Cons!42197 (h!47617 (_ BitVec 16)) (t!329888 List!42321)) )
))
(declare-datatypes ((TokenValue!6848 0))(
  ( (FloatLiteralValue!13696 (text!48381 List!42321)) (TokenValueExt!6847 (__x!25913 Int)) (Broken!34240 (value!209221 List!42321)) (Object!6971) (End!6848) (Def!6848) (Underscore!6848) (Match!6848) (Else!6848) (Error!6848) (Case!6848) (If!6848) (Extends!6848) (Abstract!6848) (Class!6848) (Val!6848) (DelimiterValue!13696 (del!6908 List!42321)) (KeywordValue!6854 (value!209222 List!42321)) (CommentValue!13696 (value!209223 List!42321)) (WhitespaceValue!13696 (value!209224 List!42321)) (IndentationValue!6848 (value!209225 List!42321)) (String!47957) (Int32!6848) (Broken!34241 (value!209226 List!42321)) (Boolean!6849) (Unit!60712) (OperatorValue!6851 (op!6908 List!42321)) (IdentifierValue!13696 (value!209227 List!42321)) (IdentifierValue!13697 (value!209228 List!42321)) (WhitespaceValue!13697 (value!209229 List!42321)) (True!13696) (False!13696) (Broken!34242 (value!209230 List!42321)) (Broken!34243 (value!209231 List!42321)) (True!13697) (RightBrace!6848) (RightBracket!6848) (Colon!6848) (Null!6848) (Comma!6848) (LeftBracket!6848) (False!13697) (LeftBrace!6848) (ImaginaryLiteralValue!6848 (text!48382 List!42321)) (StringLiteralValue!20544 (value!209232 List!42321)) (EOFValue!6848 (value!209233 List!42321)) (IdentValue!6848 (value!209234 List!42321)) (DelimiterValue!13697 (value!209235 List!42321)) (DedentValue!6848 (value!209236 List!42321)) (NewLineValue!6848 (value!209237 List!42321)) (IntegerValue!20544 (value!209238 (_ BitVec 32)) (text!48383 List!42321)) (IntegerValue!20545 (value!209239 Int) (text!48384 List!42321)) (Times!6848) (Or!6848) (Equal!6848) (Minus!6848) (Broken!34244 (value!209240 List!42321)) (And!6848) (Div!6848) (LessEqual!6848) (Mod!6848) (Concat!18371) (Not!6848) (Plus!6848) (SpaceValue!6848 (value!209241 List!42321)) (IntegerValue!20546 (value!209242 Int) (text!48385 List!42321)) (StringLiteralValue!20545 (text!48386 List!42321)) (FloatLiteralValue!13697 (text!48387 List!42321)) (BytesLiteralValue!6848 (value!209243 List!42321)) (CommentValue!13697 (value!209244 List!42321)) (StringLiteralValue!20546 (value!209245 List!42321)) (ErrorTokenValue!6848 (msg!6909 List!42321)) )
))
(declare-datatypes ((C!23232 0))(
  ( (C!23233 (val!13710 Int)) )
))
(declare-datatypes ((Regex!11523 0))(
  ( (ElementMatch!11523 (c!687320 C!23232)) (Concat!18372 (regOne!23558 Regex!11523) (regTwo!23558 Regex!11523)) (EmptyExpr!11523) (Star!11523 (reg!11852 Regex!11523)) (EmptyLang!11523) (Union!11523 (regOne!23559 Regex!11523) (regTwo!23559 Regex!11523)) )
))
(declare-datatypes ((String!47958 0))(
  ( (String!47959 (value!209246 String)) )
))
(declare-datatypes ((List!42322 0))(
  ( (Nil!42198) (Cons!42198 (h!47618 C!23232) (t!329889 List!42322)) )
))
(declare-datatypes ((IArray!25663 0))(
  ( (IArray!25664 (innerList!12889 List!42322)) )
))
(declare-datatypes ((Conc!12829 0))(
  ( (Node!12829 (left!32020 Conc!12829) (right!32350 Conc!12829) (csize!25888 Int) (cheight!13040 Int)) (Leaf!19845 (xs!16135 IArray!25663) (csize!25889 Int)) (Empty!12829) )
))
(declare-datatypes ((BalanceConc!25252 0))(
  ( (BalanceConc!25253 (c!687321 Conc!12829)) )
))
(declare-datatypes ((TokenValueInjection!13124 0))(
  ( (TokenValueInjection!13125 (toValue!9098 Int) (toChars!8957 Int)) )
))
(declare-datatypes ((Rule!13036 0))(
  ( (Rule!13037 (regex!6618 Regex!11523) (tag!7478 String!47958) (isSeparator!6618 Bool) (transformation!6618 TokenValueInjection!13124)) )
))
(declare-datatypes ((Token!12374 0))(
  ( (Token!12375 (value!209247 TokenValue!6848) (rule!9598 Rule!13036) (size!31598 Int) (originalCharacters!7218 List!42322)) )
))
(declare-datatypes ((List!42323 0))(
  ( (Nil!42199) (Cons!42199 (h!47619 Token!12374) (t!329890 List!42323)) )
))
(declare-fun suffixTokens!72 () List!42323)

(declare-fun e!2452787 () Bool)

(declare-fun inv!56427 (Token!12374) Bool)

(assert (=> b!3961037 (= e!2452787 (and (inv!56427 (h!47619 suffixTokens!72)) e!2452777 tp!1207291))))

(declare-fun e!2452767 () Bool)

(declare-fun e!2452789 () Bool)

(declare-fun tp!1207299 () Bool)

(declare-fun prefixTokens!80 () List!42323)

(declare-fun b!3961038 () Bool)

(assert (=> b!3961038 (= e!2452789 (and (inv!56427 (h!47619 prefixTokens!80)) e!2452767 tp!1207299))))

(declare-fun b!3961039 () Bool)

(declare-fun res!1603124 () Bool)

(declare-fun e!2452762 () Bool)

(assert (=> b!3961039 (=> res!1603124 e!2452762)))

(declare-datatypes ((tuple2!41490 0))(
  ( (tuple2!41491 (_1!23879 Token!12374) (_2!23879 List!42322)) )
))
(declare-datatypes ((Option!9038 0))(
  ( (None!9037) (Some!9037 (v!39383 tuple2!41490)) )
))
(declare-fun lt!1385655 () Option!9038)

(declare-fun head!8425 (List!42323) Token!12374)

(assert (=> b!3961039 (= res!1603124 (not (= (head!8425 prefixTokens!80) (_1!23879 (v!39383 lt!1385655)))))))

(declare-fun e!2452792 () Bool)

(assert (=> b!3961040 (= e!2452792 (and tp!1207292 tp!1207295))))

(declare-fun e!2452761 () Bool)

(assert (=> b!3961041 (= e!2452761 (and tp!1207301 tp!1207300))))

(declare-fun b!3961042 () Bool)

(declare-datatypes ((Unit!60713 0))(
  ( (Unit!60714) )
))
(declare-fun e!2452785 () Unit!60713)

(declare-fun Unit!60715 () Unit!60713)

(assert (=> b!3961042 (= e!2452785 Unit!60715)))

(declare-fun lt!1385642 () List!42322)

(declare-fun lt!1385632 () Unit!60713)

(declare-fun lt!1385633 () tuple2!41490)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!612 (List!42322 List!42322 List!42322 List!42322) Unit!60713)

(assert (=> b!3961042 (= lt!1385632 (lemmaConcatSameAndSameSizesThenSameLists!612 lt!1385642 (_2!23879 (v!39383 lt!1385655)) lt!1385642 (_2!23879 lt!1385633)))))

(assert (=> b!3961042 (= (_2!23879 (v!39383 lt!1385655)) (_2!23879 lt!1385633))))

(declare-fun suffixResult!91 () List!42322)

(declare-datatypes ((LexerInterface!6207 0))(
  ( (LexerInterfaceExt!6204 (__x!25914 Int)) (Lexer!6205) )
))
(declare-fun thiss!20629 () LexerInterface!6207)

(declare-fun suffix!1176 () List!42322)

(declare-datatypes ((List!42324 0))(
  ( (Nil!42200) (Cons!42200 (h!47620 Rule!13036) (t!329891 List!42324)) )
))
(declare-fun rules!2768 () List!42324)

(declare-fun lt!1385629 () Unit!60713)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!146 (LexerInterface!6207 List!42324 List!42322 List!42322 List!42323 List!42322) Unit!60713)

(assert (=> b!3961042 (= lt!1385629 (lemmaLexWithSmallerInputCannotProduceSameResults!146 thiss!20629 rules!2768 suffix!1176 (_2!23879 lt!1385633) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603133 () Bool)

(declare-datatypes ((tuple2!41492 0))(
  ( (tuple2!41493 (_1!23880 List!42323) (_2!23880 List!42322)) )
))
(declare-fun call!285412 () tuple2!41492)

(declare-fun lt!1385634 () tuple2!41492)

(assert (=> b!3961042 (= res!1603133 (not (= call!285412 lt!1385634)))))

(declare-fun e!2452784 () Bool)

(assert (=> b!3961042 (=> (not res!1603133) (not e!2452784))))

(assert (=> b!3961042 e!2452784))

(declare-fun res!1603128 () Bool)

(declare-fun e!2452780 () Bool)

(assert (=> start!372592 (=> (not res!1603128) (not e!2452780))))

(get-info :version)

(assert (=> start!372592 (= res!1603128 ((_ is Lexer!6205) thiss!20629))))

(assert (=> start!372592 e!2452780))

(declare-fun e!2452770 () Bool)

(assert (=> start!372592 e!2452770))

(assert (=> start!372592 true))

(declare-fun e!2452765 () Bool)

(assert (=> start!372592 e!2452765))

(declare-fun e!2452772 () Bool)

(assert (=> start!372592 e!2452772))

(assert (=> start!372592 e!2452789))

(assert (=> start!372592 e!2452787))

(declare-fun e!2452788 () Bool)

(assert (=> start!372592 e!2452788))

(declare-fun b!3961043 () Bool)

(declare-fun res!1603122 () Bool)

(declare-fun e!2452782 () Bool)

(assert (=> b!3961043 (=> res!1603122 e!2452782)))

(declare-fun lt!1385652 () tuple2!41492)

(assert (=> b!3961043 (= res!1603122 (or (not (= lt!1385652 (tuple2!41493 (_1!23880 lt!1385652) (_2!23880 lt!1385652)))) (= (_2!23879 (v!39383 lt!1385655)) suffix!1176)))))

(declare-fun b!3961044 () Bool)

(declare-fun e!2452791 () Bool)

(declare-fun tp!1207302 () Bool)

(assert (=> b!3961044 (= e!2452772 (and e!2452791 tp!1207302))))

(declare-fun b!3961045 () Bool)

(declare-fun tp!1207306 () Bool)

(declare-fun inv!56424 (String!47958) Bool)

(declare-fun inv!56428 (TokenValueInjection!13124) Bool)

(assert (=> b!3961045 (= e!2452791 (and tp!1207306 (inv!56424 (tag!7478 (h!47620 rules!2768))) (inv!56428 (transformation!6618 (h!47620 rules!2768))) e!2452792))))

(declare-fun e!2452775 () Bool)

(declare-fun tp!1207304 () Bool)

(declare-fun b!3961046 () Bool)

(declare-fun inv!21 (TokenValue!6848) Bool)

(assert (=> b!3961046 (= e!2452777 (and (inv!21 (value!209247 (h!47619 suffixTokens!72))) e!2452775 tp!1207304))))

(declare-fun b!3961047 () Bool)

(assert (=> b!3961047 (= e!2452784 false)))

(declare-fun e!2452773 () Bool)

(assert (=> b!3961048 (= e!2452773 (and tp!1207296 tp!1207305))))

(declare-fun b!3961049 () Bool)

(declare-fun tp_is_empty!20017 () Bool)

(declare-fun tp!1207290 () Bool)

(assert (=> b!3961049 (= e!2452770 (and tp_is_empty!20017 tp!1207290))))

(declare-fun b!3961050 () Bool)

(declare-fun e!2452781 () Bool)

(assert (=> b!3961050 (= e!2452781 false)))

(declare-fun b!3961051 () Bool)

(declare-fun e!2452766 () Unit!60713)

(declare-fun Unit!60716 () Unit!60713)

(assert (=> b!3961051 (= e!2452766 Unit!60716)))

(declare-fun lt!1385654 () Unit!60713)

(declare-fun prefix!426 () List!42322)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2566 (List!42322 List!42322) Unit!60713)

(assert (=> b!3961051 (= lt!1385654 (lemmaConcatTwoListThenFirstIsPrefix!2566 prefix!426 suffix!1176))))

(declare-fun lt!1385641 () List!42322)

(declare-fun isPrefix!3707 (List!42322 List!42322) Bool)

(assert (=> b!3961051 (isPrefix!3707 prefix!426 lt!1385641)))

(declare-fun lt!1385650 () Unit!60713)

(declare-fun lemmaIsPrefixSameLengthThenSameList!829 (List!42322 List!42322 List!42322) Unit!60713)

(assert (=> b!3961051 (= lt!1385650 (lemmaIsPrefixSameLengthThenSameList!829 lt!1385642 prefix!426 lt!1385641))))

(assert (=> b!3961051 (= lt!1385642 prefix!426)))

(declare-fun lt!1385640 () Unit!60713)

(declare-fun lemmaSamePrefixThenSameSuffix!1916 (List!42322 List!42322 List!42322 List!42322 List!42322) Unit!60713)

(assert (=> b!3961051 (= lt!1385640 (lemmaSamePrefixThenSameSuffix!1916 lt!1385642 (_2!23879 (v!39383 lt!1385655)) prefix!426 suffix!1176 lt!1385641))))

(assert (=> b!3961051 false))

(declare-fun b!3961052 () Bool)

(declare-fun Unit!60717 () Unit!60713)

(assert (=> b!3961052 (= e!2452766 Unit!60717)))

(declare-fun b!3961053 () Bool)

(declare-fun tp!1207293 () Bool)

(assert (=> b!3961053 (= e!2452788 (and tp_is_empty!20017 tp!1207293))))

(declare-fun b!3961054 () Bool)

(assert (=> b!3961054 (= e!2452762 true)))

(assert (=> b!3961054 (isPrefix!3707 prefix!426 lt!1385641)))

(declare-fun lt!1385635 () Unit!60713)

(assert (=> b!3961054 (= lt!1385635 (lemmaConcatTwoListThenFirstIsPrefix!2566 prefix!426 suffix!1176))))

(declare-fun b!3961055 () Bool)

(declare-fun e!2452776 () Bool)

(declare-fun size!31599 (List!42322) Int)

(assert (=> b!3961055 (= e!2452776 (= (size!31598 (_1!23879 (v!39383 lt!1385655))) (size!31599 (originalCharacters!7218 (_1!23879 (v!39383 lt!1385655))))))))

(declare-fun b!3961056 () Bool)

(declare-fun res!1603135 () Bool)

(assert (=> b!3961056 (=> (not res!1603135) (not e!2452780))))

(declare-fun isEmpty!25236 (List!42324) Bool)

(assert (=> b!3961056 (= res!1603135 (not (isEmpty!25236 rules!2768)))))

(declare-fun b!3961057 () Bool)

(declare-fun c!687317 () Bool)

(declare-fun lt!1385643 () List!42323)

(declare-fun isEmpty!25237 (List!42323) Bool)

(assert (=> b!3961057 (= c!687317 (isEmpty!25237 lt!1385643))))

(declare-fun tail!6157 (List!42323) List!42323)

(assert (=> b!3961057 (= lt!1385643 (tail!6157 prefixTokens!80))))

(declare-fun e!2452769 () Unit!60713)

(assert (=> b!3961057 (= e!2452769 e!2452785)))

(declare-fun b!3961058 () Bool)

(declare-fun Unit!60718 () Unit!60713)

(assert (=> b!3961058 (= e!2452769 Unit!60718)))

(declare-fun b!3961059 () Bool)

(declare-fun e!2452778 () Bool)

(assert (=> b!3961059 (= e!2452780 e!2452778)))

(declare-fun res!1603131 () Bool)

(assert (=> b!3961059 (=> (not res!1603131) (not e!2452778))))

(declare-fun lt!1385637 () List!42323)

(declare-fun lt!1385636 () tuple2!41492)

(assert (=> b!3961059 (= res!1603131 (= lt!1385636 (tuple2!41493 lt!1385637 suffixResult!91)))))

(declare-fun lexList!1975 (LexerInterface!6207 List!42324 List!42322) tuple2!41492)

(assert (=> b!3961059 (= lt!1385636 (lexList!1975 thiss!20629 rules!2768 lt!1385641))))

(declare-fun ++!10993 (List!42323 List!42323) List!42323)

(assert (=> b!3961059 (= lt!1385637 (++!10993 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10994 (List!42322 List!42322) List!42322)

(assert (=> b!3961059 (= lt!1385641 (++!10994 prefix!426 suffix!1176))))

(declare-fun b!3961060 () Bool)

(declare-fun Unit!60719 () Unit!60713)

(assert (=> b!3961060 (= e!2452785 Unit!60719)))

(declare-fun lt!1385631 () Unit!60713)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!146 (LexerInterface!6207 List!42324 List!42322 List!42322 List!42323 List!42322 List!42323) Unit!60713)

(assert (=> b!3961060 (= lt!1385631 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!146 thiss!20629 rules!2768 suffix!1176 (_2!23879 lt!1385633) suffixTokens!72 suffixResult!91 lt!1385643))))

(declare-fun res!1603130 () Bool)

(assert (=> b!3961060 (= res!1603130 (not (= call!285412 (tuple2!41493 (++!10993 lt!1385643 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3961060 (=> (not res!1603130) (not e!2452781))))

(assert (=> b!3961060 e!2452781))

(declare-fun b!3961061 () Bool)

(declare-fun res!1603129 () Bool)

(assert (=> b!3961061 (=> (not res!1603129) (not e!2452780))))

(assert (=> b!3961061 (= res!1603129 (not (isEmpty!25237 prefixTokens!80)))))

(declare-fun b!3961062 () Bool)

(declare-fun tp!1207298 () Bool)

(assert (=> b!3961062 (= e!2452765 (and tp_is_empty!20017 tp!1207298))))

(declare-fun b!3961063 () Bool)

(declare-fun e!2452768 () Bool)

(declare-fun tp!1207297 () Bool)

(assert (=> b!3961063 (= e!2452767 (and (inv!21 (value!209247 (h!47619 prefixTokens!80))) e!2452768 tp!1207297))))

(declare-fun b!3961064 () Bool)

(declare-fun e!2452783 () Bool)

(assert (=> b!3961064 (= e!2452783 (not e!2452782))))

(declare-fun res!1603123 () Bool)

(assert (=> b!3961064 (=> res!1603123 e!2452782)))

(declare-fun lt!1385644 () List!42322)

(assert (=> b!3961064 (= res!1603123 (not (= lt!1385644 lt!1385641)))))

(assert (=> b!3961064 (= lt!1385652 (lexList!1975 thiss!20629 rules!2768 (_2!23879 (v!39383 lt!1385655))))))

(declare-fun lt!1385646 () Int)

(declare-fun lt!1385630 () List!42322)

(declare-fun lt!1385638 () TokenValue!6848)

(assert (=> b!3961064 (and (= (size!31598 (_1!23879 (v!39383 lt!1385655))) lt!1385646) (= (originalCharacters!7218 (_1!23879 (v!39383 lt!1385655))) lt!1385642) (= (v!39383 lt!1385655) (tuple2!41491 (Token!12375 lt!1385638 (rule!9598 (_1!23879 (v!39383 lt!1385655))) lt!1385646 lt!1385642) lt!1385630)))))

(assert (=> b!3961064 (= lt!1385646 (size!31599 lt!1385642))))

(assert (=> b!3961064 e!2452776))

(declare-fun res!1603120 () Bool)

(assert (=> b!3961064 (=> (not res!1603120) (not e!2452776))))

(assert (=> b!3961064 (= res!1603120 (= (value!209247 (_1!23879 (v!39383 lt!1385655))) lt!1385638))))

(declare-fun apply!9849 (TokenValueInjection!13124 BalanceConc!25252) TokenValue!6848)

(declare-fun seqFromList!4877 (List!42322) BalanceConc!25252)

(assert (=> b!3961064 (= lt!1385638 (apply!9849 (transformation!6618 (rule!9598 (_1!23879 (v!39383 lt!1385655)))) (seqFromList!4877 lt!1385642)))))

(assert (=> b!3961064 (= (_2!23879 (v!39383 lt!1385655)) lt!1385630)))

(declare-fun lt!1385657 () Unit!60713)

(assert (=> b!3961064 (= lt!1385657 (lemmaSamePrefixThenSameSuffix!1916 lt!1385642 (_2!23879 (v!39383 lt!1385655)) lt!1385642 lt!1385630 lt!1385641))))

(declare-fun getSuffix!2158 (List!42322 List!42322) List!42322)

(assert (=> b!3961064 (= lt!1385630 (getSuffix!2158 lt!1385641 lt!1385642))))

(assert (=> b!3961064 (isPrefix!3707 lt!1385642 lt!1385644)))

(assert (=> b!3961064 (= lt!1385644 (++!10994 lt!1385642 (_2!23879 (v!39383 lt!1385655))))))

(declare-fun lt!1385653 () Unit!60713)

(assert (=> b!3961064 (= lt!1385653 (lemmaConcatTwoListThenFirstIsPrefix!2566 lt!1385642 (_2!23879 (v!39383 lt!1385655))))))

(declare-fun list!15664 (BalanceConc!25252) List!42322)

(declare-fun charsOf!4436 (Token!12374) BalanceConc!25252)

(assert (=> b!3961064 (= lt!1385642 (list!15664 (charsOf!4436 (_1!23879 (v!39383 lt!1385655)))))))

(declare-fun ruleValid!2560 (LexerInterface!6207 Rule!13036) Bool)

(assert (=> b!3961064 (ruleValid!2560 thiss!20629 (rule!9598 (_1!23879 (v!39383 lt!1385655))))))

(declare-fun lt!1385658 () Unit!60713)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1636 (LexerInterface!6207 Rule!13036 List!42324) Unit!60713)

(assert (=> b!3961064 (= lt!1385658 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1636 thiss!20629 (rule!9598 (_1!23879 (v!39383 lt!1385655))) rules!2768))))

(declare-fun lt!1385648 () Unit!60713)

(declare-fun lemmaCharactersSize!1271 (Token!12374) Unit!60713)

(assert (=> b!3961064 (= lt!1385648 (lemmaCharactersSize!1271 (_1!23879 (v!39383 lt!1385655))))))

(declare-fun b!3961065 () Bool)

(declare-fun e!2452771 () Bool)

(assert (=> b!3961065 (= e!2452771 e!2452783)))

(declare-fun res!1603126 () Bool)

(assert (=> b!3961065 (=> (not res!1603126) (not e!2452783))))

(assert (=> b!3961065 (= res!1603126 ((_ is Some!9037) lt!1385655))))

(declare-fun maxPrefix!3511 (LexerInterface!6207 List!42324 List!42322) Option!9038)

(assert (=> b!3961065 (= lt!1385655 (maxPrefix!3511 thiss!20629 rules!2768 lt!1385641))))

(declare-fun b!3961066 () Bool)

(declare-fun tp!1207303 () Bool)

(assert (=> b!3961066 (= e!2452775 (and tp!1207303 (inv!56424 (tag!7478 (rule!9598 (h!47619 suffixTokens!72)))) (inv!56428 (transformation!6618 (rule!9598 (h!47619 suffixTokens!72)))) e!2452773))))

(declare-fun b!3961067 () Bool)

(assert (=> b!3961067 (= e!2452782 e!2452762)))

(declare-fun res!1603125 () Bool)

(assert (=> b!3961067 (=> res!1603125 e!2452762)))

(declare-fun lt!1385647 () Int)

(declare-fun lt!1385656 () Int)

(assert (=> b!3961067 (= res!1603125 (<= lt!1385647 lt!1385656))))

(declare-fun lt!1385651 () Unit!60713)

(assert (=> b!3961067 (= lt!1385651 e!2452766)))

(declare-fun c!687316 () Bool)

(assert (=> b!3961067 (= c!687316 (= lt!1385647 lt!1385656))))

(declare-fun lt!1385659 () Unit!60713)

(declare-fun e!2452774 () Unit!60713)

(assert (=> b!3961067 (= lt!1385659 e!2452774)))

(declare-fun c!687319 () Bool)

(assert (=> b!3961067 (= c!687319 (< lt!1385647 lt!1385656))))

(assert (=> b!3961067 (= lt!1385656 (size!31599 suffix!1176))))

(assert (=> b!3961067 (= lt!1385647 (size!31599 (_2!23879 (v!39383 lt!1385655))))))

(declare-fun bm!285407 () Bool)

(assert (=> bm!285407 (= call!285412 (lexList!1975 thiss!20629 rules!2768 (_2!23879 lt!1385633)))))

(declare-fun tp!1207294 () Bool)

(declare-fun b!3961068 () Bool)

(assert (=> b!3961068 (= e!2452768 (and tp!1207294 (inv!56424 (tag!7478 (rule!9598 (h!47619 prefixTokens!80)))) (inv!56428 (transformation!6618 (rule!9598 (h!47619 prefixTokens!80)))) e!2452761))))

(declare-fun b!3961069 () Bool)

(declare-fun res!1603134 () Bool)

(assert (=> b!3961069 (=> (not res!1603134) (not e!2452780))))

(declare-fun rulesInvariant!5550 (LexerInterface!6207 List!42324) Bool)

(assert (=> b!3961069 (= res!1603134 (rulesInvariant!5550 thiss!20629 rules!2768))))

(declare-fun b!3961070 () Bool)

(declare-fun res!1603132 () Bool)

(assert (=> b!3961070 (=> res!1603132 e!2452782)))

(assert (=> b!3961070 (= res!1603132 (not (= lt!1385636 (tuple2!41493 (++!10993 (Cons!42199 (_1!23879 (v!39383 lt!1385655)) Nil!42199) (_1!23880 lt!1385652)) (_2!23880 lt!1385652)))))))

(declare-fun b!3961071 () Bool)

(declare-fun Unit!60720 () Unit!60713)

(assert (=> b!3961071 (= e!2452774 Unit!60720)))

(declare-fun lt!1385649 () Int)

(assert (=> b!3961071 (= lt!1385649 (size!31599 lt!1385641))))

(declare-fun lt!1385645 () Unit!60713)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1387 (LexerInterface!6207 List!42324 List!42322 List!42322 List!42322 Rule!13036) Unit!60713)

(assert (=> b!3961071 (= lt!1385645 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1387 thiss!20629 rules!2768 lt!1385642 lt!1385641 (_2!23879 (v!39383 lt!1385655)) (rule!9598 (_1!23879 (v!39383 lt!1385655)))))))

(declare-fun maxPrefixOneRule!2561 (LexerInterface!6207 Rule!13036 List!42322) Option!9038)

(assert (=> b!3961071 (= (maxPrefixOneRule!2561 thiss!20629 (rule!9598 (_1!23879 (v!39383 lt!1385655))) lt!1385641) (Some!9037 (tuple2!41491 (Token!12375 lt!1385638 (rule!9598 (_1!23879 (v!39383 lt!1385655))) lt!1385646 lt!1385642) (_2!23879 (v!39383 lt!1385655)))))))

(declare-fun get!13917 (Option!9038) tuple2!41490)

(assert (=> b!3961071 (= lt!1385633 (get!13917 lt!1385655))))

(declare-fun c!687318 () Bool)

(assert (=> b!3961071 (= c!687318 (< (size!31599 (_2!23879 lt!1385633)) lt!1385656))))

(declare-fun lt!1385639 () Unit!60713)

(assert (=> b!3961071 (= lt!1385639 e!2452769)))

(assert (=> b!3961071 false))

(declare-fun b!3961072 () Bool)

(declare-fun Unit!60721 () Unit!60713)

(assert (=> b!3961072 (= e!2452774 Unit!60721)))

(declare-fun b!3961073 () Bool)

(declare-fun res!1603121 () Bool)

(assert (=> b!3961073 (=> (not res!1603121) (not e!2452780))))

(declare-fun isEmpty!25238 (List!42322) Bool)

(assert (=> b!3961073 (= res!1603121 (not (isEmpty!25238 prefix!426)))))

(declare-fun b!3961074 () Bool)

(assert (=> b!3961074 (= e!2452778 e!2452771)))

(declare-fun res!1603127 () Bool)

(assert (=> b!3961074 (=> (not res!1603127) (not e!2452771))))

(assert (=> b!3961074 (= res!1603127 (= (lexList!1975 thiss!20629 rules!2768 suffix!1176) lt!1385634))))

(assert (=> b!3961074 (= lt!1385634 (tuple2!41493 suffixTokens!72 suffixResult!91))))

(assert (= (and start!372592 res!1603128) b!3961056))

(assert (= (and b!3961056 res!1603135) b!3961069))

(assert (= (and b!3961069 res!1603134) b!3961061))

(assert (= (and b!3961061 res!1603129) b!3961073))

(assert (= (and b!3961073 res!1603121) b!3961059))

(assert (= (and b!3961059 res!1603131) b!3961074))

(assert (= (and b!3961074 res!1603127) b!3961065))

(assert (= (and b!3961065 res!1603126) b!3961064))

(assert (= (and b!3961064 res!1603120) b!3961055))

(assert (= (and b!3961064 (not res!1603123)) b!3961070))

(assert (= (and b!3961070 (not res!1603132)) b!3961043))

(assert (= (and b!3961043 (not res!1603122)) b!3961067))

(assert (= (and b!3961067 c!687319) b!3961071))

(assert (= (and b!3961067 (not c!687319)) b!3961072))

(assert (= (and b!3961071 c!687318) b!3961057))

(assert (= (and b!3961071 (not c!687318)) b!3961058))

(assert (= (and b!3961057 c!687317) b!3961042))

(assert (= (and b!3961057 (not c!687317)) b!3961060))

(assert (= (and b!3961042 res!1603133) b!3961047))

(assert (= (and b!3961060 res!1603130) b!3961050))

(assert (= (or b!3961042 b!3961060) bm!285407))

(assert (= (and b!3961067 c!687316) b!3961051))

(assert (= (and b!3961067 (not c!687316)) b!3961052))

(assert (= (and b!3961067 (not res!1603125)) b!3961039))

(assert (= (and b!3961039 (not res!1603124)) b!3961054))

(assert (= (and start!372592 ((_ is Cons!42198) suffixResult!91)) b!3961049))

(assert (= (and start!372592 ((_ is Cons!42198) suffix!1176)) b!3961062))

(assert (= b!3961045 b!3961040))

(assert (= b!3961044 b!3961045))

(assert (= (and start!372592 ((_ is Cons!42200) rules!2768)) b!3961044))

(assert (= b!3961068 b!3961041))

(assert (= b!3961063 b!3961068))

(assert (= b!3961038 b!3961063))

(assert (= (and start!372592 ((_ is Cons!42199) prefixTokens!80)) b!3961038))

(assert (= b!3961066 b!3961048))

(assert (= b!3961046 b!3961066))

(assert (= b!3961037 b!3961046))

(assert (= (and start!372592 ((_ is Cons!42199) suffixTokens!72)) b!3961037))

(assert (= (and start!372592 ((_ is Cons!42198) prefix!426)) b!3961053))

(declare-fun m!4529997 () Bool)

(assert (=> b!3961057 m!4529997))

(declare-fun m!4529999 () Bool)

(assert (=> b!3961057 m!4529999))

(declare-fun m!4530001 () Bool)

(assert (=> b!3961038 m!4530001))

(declare-fun m!4530003 () Bool)

(assert (=> b!3961060 m!4530003))

(declare-fun m!4530005 () Bool)

(assert (=> b!3961060 m!4530005))

(declare-fun m!4530007 () Bool)

(assert (=> b!3961051 m!4530007))

(declare-fun m!4530009 () Bool)

(assert (=> b!3961051 m!4530009))

(declare-fun m!4530011 () Bool)

(assert (=> b!3961051 m!4530011))

(declare-fun m!4530013 () Bool)

(assert (=> b!3961051 m!4530013))

(declare-fun m!4530015 () Bool)

(assert (=> b!3961064 m!4530015))

(declare-fun m!4530017 () Bool)

(assert (=> b!3961064 m!4530017))

(declare-fun m!4530019 () Bool)

(assert (=> b!3961064 m!4530019))

(declare-fun m!4530021 () Bool)

(assert (=> b!3961064 m!4530021))

(declare-fun m!4530023 () Bool)

(assert (=> b!3961064 m!4530023))

(declare-fun m!4530025 () Bool)

(assert (=> b!3961064 m!4530025))

(declare-fun m!4530027 () Bool)

(assert (=> b!3961064 m!4530027))

(declare-fun m!4530029 () Bool)

(assert (=> b!3961064 m!4530029))

(declare-fun m!4530031 () Bool)

(assert (=> b!3961064 m!4530031))

(declare-fun m!4530033 () Bool)

(assert (=> b!3961064 m!4530033))

(assert (=> b!3961064 m!4530027))

(declare-fun m!4530035 () Bool)

(assert (=> b!3961064 m!4530035))

(declare-fun m!4530037 () Bool)

(assert (=> b!3961064 m!4530037))

(assert (=> b!3961064 m!4530021))

(declare-fun m!4530039 () Bool)

(assert (=> b!3961064 m!4530039))

(declare-fun m!4530041 () Bool)

(assert (=> b!3961064 m!4530041))

(declare-fun m!4530043 () Bool)

(assert (=> b!3961066 m!4530043))

(declare-fun m!4530045 () Bool)

(assert (=> b!3961066 m!4530045))

(declare-fun m!4530047 () Bool)

(assert (=> b!3961063 m!4530047))

(declare-fun m!4530049 () Bool)

(assert (=> b!3961065 m!4530049))

(declare-fun m!4530051 () Bool)

(assert (=> b!3961056 m!4530051))

(declare-fun m!4530053 () Bool)

(assert (=> b!3961039 m!4530053))

(declare-fun m!4530055 () Bool)

(assert (=> b!3961070 m!4530055))

(declare-fun m!4530057 () Bool)

(assert (=> b!3961055 m!4530057))

(declare-fun m!4530059 () Bool)

(assert (=> bm!285407 m!4530059))

(declare-fun m!4530061 () Bool)

(assert (=> b!3961074 m!4530061))

(declare-fun m!4530063 () Bool)

(assert (=> b!3961069 m!4530063))

(declare-fun m!4530065 () Bool)

(assert (=> b!3961068 m!4530065))

(declare-fun m!4530067 () Bool)

(assert (=> b!3961068 m!4530067))

(declare-fun m!4530069 () Bool)

(assert (=> b!3961045 m!4530069))

(declare-fun m!4530071 () Bool)

(assert (=> b!3961045 m!4530071))

(assert (=> b!3961054 m!4530009))

(assert (=> b!3961054 m!4530007))

(declare-fun m!4530073 () Bool)

(assert (=> b!3961071 m!4530073))

(declare-fun m!4530075 () Bool)

(assert (=> b!3961071 m!4530075))

(declare-fun m!4530077 () Bool)

(assert (=> b!3961071 m!4530077))

(declare-fun m!4530079 () Bool)

(assert (=> b!3961071 m!4530079))

(declare-fun m!4530081 () Bool)

(assert (=> b!3961071 m!4530081))

(declare-fun m!4530083 () Bool)

(assert (=> b!3961061 m!4530083))

(declare-fun m!4530085 () Bool)

(assert (=> b!3961046 m!4530085))

(declare-fun m!4530087 () Bool)

(assert (=> b!3961059 m!4530087))

(declare-fun m!4530089 () Bool)

(assert (=> b!3961059 m!4530089))

(declare-fun m!4530091 () Bool)

(assert (=> b!3961059 m!4530091))

(declare-fun m!4530093 () Bool)

(assert (=> b!3961037 m!4530093))

(declare-fun m!4530095 () Bool)

(assert (=> b!3961042 m!4530095))

(declare-fun m!4530097 () Bool)

(assert (=> b!3961042 m!4530097))

(declare-fun m!4530099 () Bool)

(assert (=> b!3961067 m!4530099))

(declare-fun m!4530101 () Bool)

(assert (=> b!3961067 m!4530101))

(declare-fun m!4530103 () Bool)

(assert (=> b!3961073 m!4530103))

(check-sat (not b!3961038) (not b!3961042) (not b_next!110051) (not b!3961071) (not b!3961059) (not b!3961054) (not b!3961039) (not b!3961049) (not b!3961066) (not b!3961037) (not b!3961074) (not b_next!110045) b_and!304123 (not b!3961056) (not b!3961060) (not b!3961055) (not b!3961063) (not b!3961053) (not b!3961065) (not b!3961061) (not b!3961062) (not b!3961070) tp_is_empty!20017 b_and!304131 (not b_next!110055) (not b!3961057) (not b_next!110053) (not b!3961051) (not b!3961044) b_and!304133 (not b!3961045) (not b_next!110047) (not b!3961064) b_and!304125 (not b_next!110049) (not b!3961073) (not b!3961069) (not bm!285407) b_and!304127 (not b!3961046) (not b!3961068) b_and!304129 (not b!3961067))
(check-sat (not b_next!110051) (not b_next!110053) b_and!304133 (not b_next!110047) b_and!304127 b_and!304129 (not b_next!110045) b_and!304123 b_and!304131 (not b_next!110055) b_and!304125 (not b_next!110049))
