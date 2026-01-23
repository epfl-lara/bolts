; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254150 () Bool)

(assert start!254150)

(declare-fun b!2613400 () Bool)

(declare-fun b_free!73517 () Bool)

(declare-fun b_next!74221 () Bool)

(assert (=> b!2613400 (= b_free!73517 (not b_next!74221))))

(declare-fun tp!830099 () Bool)

(declare-fun b_and!191135 () Bool)

(assert (=> b!2613400 (= tp!830099 b_and!191135)))

(declare-fun b_free!73519 () Bool)

(declare-fun b_next!74223 () Bool)

(assert (=> b!2613400 (= b_free!73519 (not b_next!74223))))

(declare-fun tp!830102 () Bool)

(declare-fun b_and!191137 () Bool)

(assert (=> b!2613400 (= tp!830102 b_and!191137)))

(declare-fun b!2613407 () Bool)

(declare-fun b_free!73521 () Bool)

(declare-fun b_next!74225 () Bool)

(assert (=> b!2613407 (= b_free!73521 (not b_next!74225))))

(declare-fun tp!830101 () Bool)

(declare-fun b_and!191139 () Bool)

(assert (=> b!2613407 (= tp!830101 b_and!191139)))

(declare-fun b_free!73523 () Bool)

(declare-fun b_next!74227 () Bool)

(assert (=> b!2613407 (= b_free!73523 (not b_next!74227))))

(declare-fun tp!830096 () Bool)

(declare-fun b_and!191141 () Bool)

(assert (=> b!2613407 (= tp!830096 b_and!191141)))

(declare-fun bs!474093 () Bool)

(declare-fun b!2613401 () Bool)

(declare-fun b!2613404 () Bool)

(assert (= bs!474093 (and b!2613401 b!2613404)))

(declare-fun lambda!97858 () Int)

(declare-fun lambda!97857 () Int)

(assert (=> bs!474093 (not (= lambda!97858 lambda!97857))))

(declare-fun b!2613418 () Bool)

(declare-fun e!1649023 () Bool)

(assert (=> b!2613418 (= e!1649023 true)))

(declare-fun b!2613417 () Bool)

(declare-fun e!1649022 () Bool)

(assert (=> b!2613417 (= e!1649022 e!1649023)))

(declare-fun b!2613416 () Bool)

(declare-fun e!1649021 () Bool)

(assert (=> b!2613416 (= e!1649021 e!1649022)))

(assert (=> b!2613401 e!1649021))

(assert (= b!2613417 b!2613418))

(assert (= b!2613416 b!2613417))

(declare-datatypes ((List!30305 0))(
  ( (Nil!30205) (Cons!30205 (h!35625 (_ BitVec 16)) (t!214322 List!30305)) )
))
(declare-datatypes ((C!15584 0))(
  ( (C!15585 (val!9726 Int)) )
))
(declare-datatypes ((String!33838 0))(
  ( (String!33839 (value!147795 String)) )
))
(declare-datatypes ((Regex!7713 0))(
  ( (ElementMatch!7713 (c!420059 C!15584)) (Concat!12504 (regOne!15938 Regex!7713) (regTwo!15938 Regex!7713)) (EmptyExpr!7713) (Star!7713 (reg!8042 Regex!7713)) (EmptyLang!7713) (Union!7713 (regOne!15939 Regex!7713) (regTwo!15939 Regex!7713)) )
))
(declare-datatypes ((TokenValue!4791 0))(
  ( (FloatLiteralValue!9582 (text!33982 List!30305)) (TokenValueExt!4790 (__x!19415 Int)) (Broken!23955 (value!147796 List!30305)) (Object!4890) (End!4791) (Def!4791) (Underscore!4791) (Match!4791) (Else!4791) (Error!4791) (Case!4791) (If!4791) (Extends!4791) (Abstract!4791) (Class!4791) (Val!4791) (DelimiterValue!9582 (del!4851 List!30305)) (KeywordValue!4797 (value!147797 List!30305)) (CommentValue!9582 (value!147798 List!30305)) (WhitespaceValue!9582 (value!147799 List!30305)) (IndentationValue!4791 (value!147800 List!30305)) (String!33840) (Int32!4791) (Broken!23956 (value!147801 List!30305)) (Boolean!4792) (Unit!44188) (OperatorValue!4794 (op!4851 List!30305)) (IdentifierValue!9582 (value!147802 List!30305)) (IdentifierValue!9583 (value!147803 List!30305)) (WhitespaceValue!9583 (value!147804 List!30305)) (True!9582) (False!9582) (Broken!23957 (value!147805 List!30305)) (Broken!23958 (value!147806 List!30305)) (True!9583) (RightBrace!4791) (RightBracket!4791) (Colon!4791) (Null!4791) (Comma!4791) (LeftBracket!4791) (False!9583) (LeftBrace!4791) (ImaginaryLiteralValue!4791 (text!33983 List!30305)) (StringLiteralValue!14373 (value!147807 List!30305)) (EOFValue!4791 (value!147808 List!30305)) (IdentValue!4791 (value!147809 List!30305)) (DelimiterValue!9583 (value!147810 List!30305)) (DedentValue!4791 (value!147811 List!30305)) (NewLineValue!4791 (value!147812 List!30305)) (IntegerValue!14373 (value!147813 (_ BitVec 32)) (text!33984 List!30305)) (IntegerValue!14374 (value!147814 Int) (text!33985 List!30305)) (Times!4791) (Or!4791) (Equal!4791) (Minus!4791) (Broken!23959 (value!147815 List!30305)) (And!4791) (Div!4791) (LessEqual!4791) (Mod!4791) (Concat!12505) (Not!4791) (Plus!4791) (SpaceValue!4791 (value!147816 List!30305)) (IntegerValue!14375 (value!147817 Int) (text!33986 List!30305)) (StringLiteralValue!14374 (text!33987 List!30305)) (FloatLiteralValue!9583 (text!33988 List!30305)) (BytesLiteralValue!4791 (value!147818 List!30305)) (CommentValue!9583 (value!147819 List!30305)) (StringLiteralValue!14375 (value!147820 List!30305)) (ErrorTokenValue!4791 (msg!4852 List!30305)) )
))
(declare-datatypes ((List!30306 0))(
  ( (Nil!30206) (Cons!30206 (h!35626 C!15584) (t!214323 List!30306)) )
))
(declare-datatypes ((IArray!18765 0))(
  ( (IArray!18766 (innerList!9440 List!30306)) )
))
(declare-datatypes ((Conc!9380 0))(
  ( (Node!9380 (left!23248 Conc!9380) (right!23578 Conc!9380) (csize!18990 Int) (cheight!9591 Int)) (Leaf!14405 (xs!12368 IArray!18765) (csize!18991 Int)) (Empty!9380) )
))
(declare-datatypes ((BalanceConc!18374 0))(
  ( (BalanceConc!18375 (c!420060 Conc!9380)) )
))
(declare-datatypes ((TokenValueInjection!9022 0))(
  ( (TokenValueInjection!9023 (toValue!6475 Int) (toChars!6334 Int)) )
))
(declare-datatypes ((Rule!8938 0))(
  ( (Rule!8939 (regex!4569 Regex!7713) (tag!5059 String!33838) (isSeparator!4569 Bool) (transformation!4569 TokenValueInjection!9022)) )
))
(declare-datatypes ((List!30307 0))(
  ( (Nil!30207) (Cons!30207 (h!35627 Rule!8938) (t!214324 List!30307)) )
))
(declare-fun rules!1726 () List!30307)

(get-info :version)

(assert (= (and b!2613401 ((_ is Cons!30207) rules!1726)) b!2613416))

(declare-fun order!16093 () Int)

(declare-fun order!16091 () Int)

(declare-fun dynLambda!12809 (Int Int) Int)

(declare-fun dynLambda!12810 (Int Int) Int)

(assert (=> b!2613418 (< (dynLambda!12809 order!16091 (toValue!6475 (transformation!4569 (h!35627 rules!1726)))) (dynLambda!12810 order!16093 lambda!97858))))

(declare-fun order!16095 () Int)

(declare-fun dynLambda!12811 (Int Int) Int)

(assert (=> b!2613418 (< (dynLambda!12811 order!16095 (toChars!6334 (transformation!4569 (h!35627 rules!1726)))) (dynLambda!12810 order!16093 lambda!97858))))

(assert (=> b!2613401 true))

(declare-fun e!1649014 () Bool)

(declare-fun b!2613389 () Bool)

(declare-fun e!1649011 () Bool)

(declare-fun tp!830104 () Bool)

(declare-datatypes ((Token!8608 0))(
  ( (Token!8609 (value!147821 TokenValue!4791) (rule!6939 Rule!8938) (size!23384 Int) (originalCharacters!5335 List!30306)) )
))
(declare-fun separatorToken!156 () Token!8608)

(declare-fun inv!40887 (String!33838) Bool)

(declare-fun inv!40892 (TokenValueInjection!9022) Bool)

(assert (=> b!2613389 (= e!1649014 (and tp!830104 (inv!40887 (tag!5059 (rule!6939 separatorToken!156))) (inv!40892 (transformation!4569 (rule!6939 separatorToken!156))) e!1649011))))

(declare-fun b!2613390 () Bool)

(declare-fun e!1649009 () Bool)

(declare-fun e!1649003 () Bool)

(declare-fun tp!830100 () Bool)

(assert (=> b!2613390 (= e!1649009 (and e!1649003 tp!830100))))

(declare-fun b!2613392 () Bool)

(declare-fun e!1649002 () Bool)

(declare-fun e!1649010 () Bool)

(assert (=> b!2613392 (= e!1649002 (not e!1649010))))

(declare-fun res!1100090 () Bool)

(assert (=> b!2613392 (=> res!1100090 e!1649010)))

(declare-datatypes ((List!30308 0))(
  ( (Nil!30208) (Cons!30208 (h!35628 Token!8608) (t!214325 List!30308)) )
))
(declare-datatypes ((IArray!18767 0))(
  ( (IArray!18768 (innerList!9441 List!30308)) )
))
(declare-datatypes ((Conc!9381 0))(
  ( (Node!9381 (left!23249 Conc!9381) (right!23579 Conc!9381) (csize!18992 Int) (cheight!9592 Int)) (Leaf!14406 (xs!12369 IArray!18767) (csize!18993 Int)) (Empty!9381) )
))
(declare-datatypes ((BalanceConc!18376 0))(
  ( (BalanceConc!18377 (c!420061 Conc!9381)) )
))
(declare-fun v!6381 () BalanceConc!18376)

(declare-fun lt!918339 () Token!8608)

(declare-fun contains!5620 (BalanceConc!18376 Token!8608) Bool)

(assert (=> b!2613392 (= res!1100090 (not (contains!5620 v!6381 lt!918339)))))

(declare-fun from!862 () Int)

(declare-fun apply!7104 (BalanceConc!18376 Int) Token!8608)

(assert (=> b!2613392 (= lt!918339 (apply!7104 v!6381 from!862))))

(declare-fun lt!918342 () List!30308)

(declare-fun lt!918345 () List!30308)

(declare-fun tail!4202 (List!30308) List!30308)

(declare-fun drop!1565 (List!30308 Int) List!30308)

(assert (=> b!2613392 (= (tail!4202 lt!918342) (drop!1565 lt!918345 (+ 1 from!862)))))

(declare-datatypes ((Unit!44189 0))(
  ( (Unit!44190) )
))
(declare-fun lt!918341 () Unit!44189)

(declare-fun lemmaDropTail!754 (List!30308 Int) Unit!44189)

(assert (=> b!2613392 (= lt!918341 (lemmaDropTail!754 lt!918345 from!862))))

(declare-fun head!5964 (List!30308) Token!8608)

(declare-fun apply!7105 (List!30308 Int) Token!8608)

(assert (=> b!2613392 (= (head!5964 lt!918342) (apply!7105 lt!918345 from!862))))

(assert (=> b!2613392 (= lt!918342 (drop!1565 lt!918345 from!862))))

(declare-fun lt!918336 () Unit!44189)

(declare-fun lemmaDropApply!780 (List!30308 Int) Unit!44189)

(assert (=> b!2613392 (= lt!918336 (lemmaDropApply!780 lt!918345 from!862))))

(declare-fun b!2613393 () Bool)

(declare-fun res!1100093 () Bool)

(assert (=> b!2613393 (=> res!1100093 e!1649010)))

(declare-fun contains!5621 (List!30308 Token!8608) Bool)

(assert (=> b!2613393 (= res!1100093 (not (contains!5621 lt!918345 lt!918339)))))

(declare-fun b!2613394 () Bool)

(declare-fun e!1649004 () Bool)

(declare-fun tp!830097 () Bool)

(declare-fun inv!40893 (Conc!9381) Bool)

(assert (=> b!2613394 (= e!1649004 (and (inv!40893 (c!420061 v!6381)) tp!830097))))

(declare-fun b!2613395 () Bool)

(declare-fun tp!830098 () Bool)

(declare-fun e!1649013 () Bool)

(assert (=> b!2613395 (= e!1649003 (and tp!830098 (inv!40887 (tag!5059 (h!35627 rules!1726))) (inv!40892 (transformation!4569 (h!35627 rules!1726))) e!1649013))))

(declare-fun b!2613396 () Bool)

(declare-fun e!1649001 () Bool)

(assert (=> b!2613396 (= e!1649001 e!1649002)))

(declare-fun res!1100083 () Bool)

(assert (=> b!2613396 (=> (not res!1100083) (not e!1649002))))

(declare-fun lt!918338 () Int)

(assert (=> b!2613396 (= res!1100083 (< from!862 lt!918338))))

(declare-fun lt!918344 () Unit!44189)

(declare-fun lemmaContentSubsetPreservesForall!238 (List!30308 List!30308 Int) Unit!44189)

(declare-fun dropList!872 (BalanceConc!18376 Int) List!30308)

(assert (=> b!2613396 (= lt!918344 (lemmaContentSubsetPreservesForall!238 lt!918345 (dropList!872 v!6381 from!862) lambda!97857))))

(declare-fun list!11339 (BalanceConc!18376) List!30308)

(assert (=> b!2613396 (= lt!918345 (list!11339 v!6381))))

(declare-fun b!2613397 () Bool)

(declare-fun res!1100089 () Bool)

(assert (=> b!2613397 (=> (not res!1100089) (not e!1649001))))

(declare-datatypes ((LexerInterface!4166 0))(
  ( (LexerInterfaceExt!4163 (__x!19416 Int)) (Lexer!4164) )
))
(declare-fun thiss!14197 () LexerInterface!4166)

(declare-fun rulesProduceIndividualToken!1878 (LexerInterface!4166 List!30307 Token!8608) Bool)

(assert (=> b!2613397 (= res!1100089 (rulesProduceIndividualToken!1878 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2613398 () Bool)

(declare-fun res!1100092 () Bool)

(assert (=> b!2613398 (=> (not res!1100092) (not e!1649001))))

(declare-fun rulesInvariant!3666 (LexerInterface!4166 List!30307) Bool)

(assert (=> b!2613398 (= res!1100092 (rulesInvariant!3666 thiss!14197 rules!1726))))

(declare-fun e!1649008 () Bool)

(declare-fun b!2613399 () Bool)

(declare-fun tp!830103 () Bool)

(declare-fun inv!21 (TokenValue!4791) Bool)

(assert (=> b!2613399 (= e!1649008 (and (inv!21 (value!147821 separatorToken!156)) e!1649014 tp!830103))))

(assert (=> b!2613400 (= e!1649011 (and tp!830099 tp!830102))))

(declare-fun b!2613391 () Bool)

(declare-fun res!1100087 () Bool)

(assert (=> b!2613391 (=> (not res!1100087) (not e!1649001))))

(declare-fun sepAndNonSepRulesDisjointChars!1142 (List!30307 List!30307) Bool)

(assert (=> b!2613391 (= res!1100087 (sepAndNonSepRulesDisjointChars!1142 rules!1726 rules!1726))))

(declare-fun res!1100085 () Bool)

(declare-fun e!1649006 () Bool)

(assert (=> start!254150 (=> (not res!1100085) (not e!1649006))))

(assert (=> start!254150 (= res!1100085 (and ((_ is Lexer!4164) thiss!14197) (>= from!862 0)))))

(assert (=> start!254150 e!1649006))

(assert (=> start!254150 true))

(assert (=> start!254150 e!1649009))

(declare-fun inv!40894 (Token!8608) Bool)

(assert (=> start!254150 (and (inv!40894 separatorToken!156) e!1649008)))

(declare-fun inv!40895 (BalanceConc!18376) Bool)

(assert (=> start!254150 (and (inv!40895 v!6381) e!1649004)))

(assert (=> b!2613401 (= e!1649010 true)))

(declare-fun lt!918337 () Bool)

(declare-fun rulesValidInductive!1603 (LexerInterface!4166 List!30307) Bool)

(assert (=> b!2613401 (= lt!918337 (rulesValidInductive!1603 thiss!14197 rules!1726))))

(declare-fun lt!918343 () BalanceConc!18374)

(declare-fun ++!7335 (BalanceConc!18374 BalanceConc!18374) BalanceConc!18374)

(declare-fun charsOf!2860 (Token!8608) BalanceConc!18374)

(declare-fun printWithSeparatorTokenWhenNeededRec!444 (LexerInterface!4166 List!30307 BalanceConc!18376 Token!8608 Int) BalanceConc!18374)

(assert (=> b!2613401 (= lt!918343 (++!7335 (charsOf!2860 lt!918339) (printWithSeparatorTokenWhenNeededRec!444 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))

(declare-fun lt!918340 () Unit!44189)

(declare-fun forallContained!925 (List!30308 Int Token!8608) Unit!44189)

(assert (=> b!2613401 (= lt!918340 (forallContained!925 lt!918345 lambda!97858 lt!918339))))

(declare-fun b!2613402 () Bool)

(assert (=> b!2613402 (= e!1649006 e!1649001)))

(declare-fun res!1100082 () Bool)

(assert (=> b!2613402 (=> (not res!1100082) (not e!1649001))))

(assert (=> b!2613402 (= res!1100082 (<= from!862 lt!918338))))

(declare-fun size!23385 (BalanceConc!18376) Int)

(assert (=> b!2613402 (= lt!918338 (size!23385 v!6381))))

(declare-fun b!2613403 () Bool)

(declare-fun res!1100091 () Bool)

(assert (=> b!2613403 (=> (not res!1100091) (not e!1649001))))

(assert (=> b!2613403 (= res!1100091 (isSeparator!4569 (rule!6939 separatorToken!156)))))

(declare-fun res!1100084 () Bool)

(assert (=> b!2613404 (=> (not res!1100084) (not e!1649001))))

(declare-fun forall!6273 (BalanceConc!18376 Int) Bool)

(assert (=> b!2613404 (= res!1100084 (forall!6273 v!6381 lambda!97857))))

(declare-fun b!2613405 () Bool)

(declare-fun res!1100086 () Bool)

(assert (=> b!2613405 (=> (not res!1100086) (not e!1649001))))

(declare-fun rulesProduceEachTokenIndividually!986 (LexerInterface!4166 List!30307 BalanceConc!18376) Bool)

(assert (=> b!2613405 (= res!1100086 (rulesProduceEachTokenIndividually!986 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2613406 () Bool)

(declare-fun res!1100088 () Bool)

(assert (=> b!2613406 (=> (not res!1100088) (not e!1649001))))

(declare-fun isEmpty!17258 (List!30307) Bool)

(assert (=> b!2613406 (= res!1100088 (not (isEmpty!17258 rules!1726)))))

(assert (=> b!2613407 (= e!1649013 (and tp!830101 tp!830096))))

(assert (= (and start!254150 res!1100085) b!2613402))

(assert (= (and b!2613402 res!1100082) b!2613406))

(assert (= (and b!2613406 res!1100088) b!2613398))

(assert (= (and b!2613398 res!1100092) b!2613405))

(assert (= (and b!2613405 res!1100086) b!2613397))

(assert (= (and b!2613397 res!1100089) b!2613403))

(assert (= (and b!2613403 res!1100091) b!2613404))

(assert (= (and b!2613404 res!1100084) b!2613391))

(assert (= (and b!2613391 res!1100087) b!2613396))

(assert (= (and b!2613396 res!1100083) b!2613392))

(assert (= (and b!2613392 (not res!1100090)) b!2613393))

(assert (= (and b!2613393 (not res!1100093)) b!2613401))

(assert (= b!2613395 b!2613407))

(assert (= b!2613390 b!2613395))

(assert (= (and start!254150 ((_ is Cons!30207) rules!1726)) b!2613390))

(assert (= b!2613389 b!2613400))

(assert (= b!2613399 b!2613389))

(assert (= start!254150 b!2613399))

(assert (= start!254150 b!2613394))

(declare-fun m!2948223 () Bool)

(assert (=> b!2613394 m!2948223))

(declare-fun m!2948225 () Bool)

(assert (=> b!2613401 m!2948225))

(declare-fun m!2948227 () Bool)

(assert (=> b!2613401 m!2948227))

(declare-fun m!2948229 () Bool)

(assert (=> b!2613401 m!2948229))

(declare-fun m!2948231 () Bool)

(assert (=> b!2613401 m!2948231))

(assert (=> b!2613401 m!2948231))

(assert (=> b!2613401 m!2948227))

(declare-fun m!2948233 () Bool)

(assert (=> b!2613401 m!2948233))

(declare-fun m!2948235 () Bool)

(assert (=> b!2613389 m!2948235))

(declare-fun m!2948237 () Bool)

(assert (=> b!2613389 m!2948237))

(declare-fun m!2948239 () Bool)

(assert (=> b!2613395 m!2948239))

(declare-fun m!2948241 () Bool)

(assert (=> b!2613395 m!2948241))

(declare-fun m!2948243 () Bool)

(assert (=> b!2613402 m!2948243))

(declare-fun m!2948245 () Bool)

(assert (=> b!2613405 m!2948245))

(declare-fun m!2948247 () Bool)

(assert (=> b!2613406 m!2948247))

(declare-fun m!2948249 () Bool)

(assert (=> start!254150 m!2948249))

(declare-fun m!2948251 () Bool)

(assert (=> start!254150 m!2948251))

(declare-fun m!2948253 () Bool)

(assert (=> b!2613398 m!2948253))

(declare-fun m!2948255 () Bool)

(assert (=> b!2613396 m!2948255))

(assert (=> b!2613396 m!2948255))

(declare-fun m!2948257 () Bool)

(assert (=> b!2613396 m!2948257))

(declare-fun m!2948259 () Bool)

(assert (=> b!2613396 m!2948259))

(declare-fun m!2948261 () Bool)

(assert (=> b!2613393 m!2948261))

(declare-fun m!2948263 () Bool)

(assert (=> b!2613404 m!2948263))

(declare-fun m!2948265 () Bool)

(assert (=> b!2613392 m!2948265))

(declare-fun m!2948267 () Bool)

(assert (=> b!2613392 m!2948267))

(declare-fun m!2948269 () Bool)

(assert (=> b!2613392 m!2948269))

(declare-fun m!2948271 () Bool)

(assert (=> b!2613392 m!2948271))

(declare-fun m!2948273 () Bool)

(assert (=> b!2613392 m!2948273))

(declare-fun m!2948275 () Bool)

(assert (=> b!2613392 m!2948275))

(declare-fun m!2948277 () Bool)

(assert (=> b!2613392 m!2948277))

(declare-fun m!2948279 () Bool)

(assert (=> b!2613392 m!2948279))

(declare-fun m!2948281 () Bool)

(assert (=> b!2613392 m!2948281))

(declare-fun m!2948283 () Bool)

(assert (=> b!2613397 m!2948283))

(declare-fun m!2948285 () Bool)

(assert (=> b!2613391 m!2948285))

(declare-fun m!2948287 () Bool)

(assert (=> b!2613399 m!2948287))

(check-sat (not b!2613392) b_and!191139 (not b_next!74225) (not b!2613405) (not b!2613401) (not b!2613396) (not b_next!74227) (not b!2613399) (not b!2613404) (not b!2613394) b_and!191141 (not b!2613406) b_and!191137 (not b!2613390) (not b!2613398) (not start!254150) (not b!2613393) (not b_next!74221) (not b!2613395) b_and!191135 (not b!2613397) (not b!2613416) (not b!2613389) (not b!2613391) (not b_next!74223) (not b!2613402))
(check-sat b_and!191139 (not b_next!74225) (not b_next!74227) (not b_next!74223) b_and!191141 b_and!191137 (not b_next!74221) b_and!191135)
