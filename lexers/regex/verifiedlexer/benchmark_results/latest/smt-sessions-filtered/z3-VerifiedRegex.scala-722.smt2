; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32758 () Bool)

(assert start!32758)

(declare-fun b!304207 () Bool)

(declare-fun b_free!10817 () Bool)

(declare-fun b_next!10817 () Bool)

(assert (=> b!304207 (= b_free!10817 (not b_next!10817))))

(declare-fun tp!108172 () Bool)

(declare-fun b_and!25669 () Bool)

(assert (=> b!304207 (= tp!108172 b_and!25669)))

(declare-fun b_free!10819 () Bool)

(declare-fun b_next!10819 () Bool)

(assert (=> b!304207 (= b_free!10819 (not b_next!10819))))

(declare-fun tp!108177 () Bool)

(declare-fun b_and!25671 () Bool)

(assert (=> b!304207 (= tp!108177 b_and!25671)))

(declare-fun b!304226 () Bool)

(declare-fun b_free!10821 () Bool)

(declare-fun b_next!10821 () Bool)

(assert (=> b!304226 (= b_free!10821 (not b_next!10821))))

(declare-fun tp!108175 () Bool)

(declare-fun b_and!25673 () Bool)

(assert (=> b!304226 (= tp!108175 b_and!25673)))

(declare-fun b_free!10823 () Bool)

(declare-fun b_next!10823 () Bool)

(assert (=> b!304226 (= b_free!10823 (not b_next!10823))))

(declare-fun tp!108173 () Bool)

(declare-fun b_and!25675 () Bool)

(assert (=> b!304226 (= tp!108173 b_and!25675)))

(declare-fun b!304205 () Bool)

(declare-fun b_free!10825 () Bool)

(declare-fun b_next!10825 () Bool)

(assert (=> b!304205 (= b_free!10825 (not b_next!10825))))

(declare-fun tp!108174 () Bool)

(declare-fun b_and!25677 () Bool)

(assert (=> b!304205 (= tp!108174 b_and!25677)))

(declare-fun b_free!10827 () Bool)

(declare-fun b_next!10827 () Bool)

(assert (=> b!304205 (= b_free!10827 (not b_next!10827))))

(declare-fun tp!108183 () Bool)

(declare-fun b_and!25679 () Bool)

(assert (=> b!304205 (= tp!108183 b_and!25679)))

(declare-fun bs!35260 () Bool)

(declare-fun b!304220 () Bool)

(declare-fun b!304201 () Bool)

(assert (= bs!35260 (and b!304220 b!304201)))

(declare-fun lambda!10340 () Int)

(declare-fun lambda!10339 () Int)

(assert (=> bs!35260 (not (= lambda!10340 lambda!10339))))

(declare-fun b!304238 () Bool)

(declare-fun e!188928 () Bool)

(assert (=> b!304238 (= e!188928 true)))

(declare-fun b!304237 () Bool)

(declare-fun e!188927 () Bool)

(assert (=> b!304237 (= e!188927 e!188928)))

(declare-fun b!304236 () Bool)

(declare-fun e!188926 () Bool)

(assert (=> b!304236 (= e!188926 e!188927)))

(assert (=> b!304220 e!188926))

(assert (= b!304237 b!304238))

(assert (= b!304236 b!304237))

(declare-datatypes ((List!4010 0))(
  ( (Nil!4000) (Cons!4000 (h!9397 (_ BitVec 16)) (t!43086 List!4010)) )
))
(declare-datatypes ((TokenValue!789 0))(
  ( (FloatLiteralValue!1578 (text!5968 List!4010)) (TokenValueExt!788 (__x!3065 Int)) (Broken!3945 (value!26149 List!4010)) (Object!798) (End!789) (Def!789) (Underscore!789) (Match!789) (Else!789) (Error!789) (Case!789) (If!789) (Extends!789) (Abstract!789) (Class!789) (Val!789) (DelimiterValue!1578 (del!849 List!4010)) (KeywordValue!795 (value!26150 List!4010)) (CommentValue!1578 (value!26151 List!4010)) (WhitespaceValue!1578 (value!26152 List!4010)) (IndentationValue!789 (value!26153 List!4010)) (String!5024) (Int32!789) (Broken!3946 (value!26154 List!4010)) (Boolean!790) (Unit!5609) (OperatorValue!792 (op!849 List!4010)) (IdentifierValue!1578 (value!26155 List!4010)) (IdentifierValue!1579 (value!26156 List!4010)) (WhitespaceValue!1579 (value!26157 List!4010)) (True!1578) (False!1578) (Broken!3947 (value!26158 List!4010)) (Broken!3948 (value!26159 List!4010)) (True!1579) (RightBrace!789) (RightBracket!789) (Colon!789) (Null!789) (Comma!789) (LeftBracket!789) (False!1579) (LeftBrace!789) (ImaginaryLiteralValue!789 (text!5969 List!4010)) (StringLiteralValue!2367 (value!26160 List!4010)) (EOFValue!789 (value!26161 List!4010)) (IdentValue!789 (value!26162 List!4010)) (DelimiterValue!1579 (value!26163 List!4010)) (DedentValue!789 (value!26164 List!4010)) (NewLineValue!789 (value!26165 List!4010)) (IntegerValue!2367 (value!26166 (_ BitVec 32)) (text!5970 List!4010)) (IntegerValue!2368 (value!26167 Int) (text!5971 List!4010)) (Times!789) (Or!789) (Equal!789) (Minus!789) (Broken!3949 (value!26168 List!4010)) (And!789) (Div!789) (LessEqual!789) (Mod!789) (Concat!1780) (Not!789) (Plus!789) (SpaceValue!789 (value!26169 List!4010)) (IntegerValue!2369 (value!26170 Int) (text!5972 List!4010)) (StringLiteralValue!2368 (text!5973 List!4010)) (FloatLiteralValue!1579 (text!5974 List!4010)) (BytesLiteralValue!789 (value!26171 List!4010)) (CommentValue!1579 (value!26172 List!4010)) (StringLiteralValue!2369 (value!26173 List!4010)) (ErrorTokenValue!789 (msg!850 List!4010)) )
))
(declare-datatypes ((C!2904 0))(
  ( (C!2905 (val!1338 Int)) )
))
(declare-datatypes ((List!4011 0))(
  ( (Nil!4001) (Cons!4001 (h!9398 C!2904) (t!43087 List!4011)) )
))
(declare-datatypes ((IArray!2713 0))(
  ( (IArray!2714 (innerList!1414 List!4011)) )
))
(declare-datatypes ((Conc!1356 0))(
  ( (Node!1356 (left!3314 Conc!1356) (right!3644 Conc!1356) (csize!2942 Int) (cheight!1567 Int)) (Leaf!2079 (xs!3959 IArray!2713) (csize!2943 Int)) (Empty!1356) )
))
(declare-datatypes ((BalanceConc!2720 0))(
  ( (BalanceConc!2721 (c!57924 Conc!1356)) )
))
(declare-datatypes ((TokenValueInjection!1350 0))(
  ( (TokenValueInjection!1351 (toValue!1526 Int) (toChars!1385 Int)) )
))
(declare-datatypes ((String!5025 0))(
  ( (String!5026 (value!26174 String)) )
))
(declare-datatypes ((Regex!991 0))(
  ( (ElementMatch!991 (c!57925 C!2904)) (Concat!1781 (regOne!2494 Regex!991) (regTwo!2494 Regex!991)) (EmptyExpr!991) (Star!991 (reg!1320 Regex!991)) (EmptyLang!991) (Union!991 (regOne!2495 Regex!991) (regTwo!2495 Regex!991)) )
))
(declare-datatypes ((Rule!1334 0))(
  ( (Rule!1335 (regex!767 Regex!991) (tag!985 String!5025) (isSeparator!767 Bool) (transformation!767 TokenValueInjection!1350)) )
))
(declare-datatypes ((List!4012 0))(
  ( (Nil!4002) (Cons!4002 (h!9399 Rule!1334) (t!43088 List!4012)) )
))
(declare-fun rules!1920 () List!4012)

(get-info :version)

(assert (= (and b!304220 ((_ is Cons!4002) rules!1920)) b!304236))

(declare-fun order!3215 () Int)

(declare-fun order!3213 () Int)

(declare-fun dynLambda!2169 (Int Int) Int)

(declare-fun dynLambda!2170 (Int Int) Int)

(assert (=> b!304238 (< (dynLambda!2169 order!3213 (toValue!1526 (transformation!767 (h!9399 rules!1920)))) (dynLambda!2170 order!3215 lambda!10340))))

(declare-fun order!3217 () Int)

(declare-fun dynLambda!2171 (Int Int) Int)

(assert (=> b!304238 (< (dynLambda!2171 order!3217 (toChars!1385 (transformation!767 (h!9399 rules!1920)))) (dynLambda!2170 order!3215 lambda!10340))))

(assert (=> b!304220 true))

(declare-fun b!304196 () Bool)

(declare-fun res!138030 () Bool)

(declare-fun e!188899 () Bool)

(assert (=> b!304196 (=> (not res!138030) (not e!188899))))

(declare-datatypes ((Token!1278 0))(
  ( (Token!1279 (value!26175 TokenValue!789) (rule!1380 Rule!1334) (size!3217 Int) (originalCharacters!810 List!4011)) )
))
(declare-datatypes ((tuple2!4598 0))(
  ( (tuple2!4599 (_1!2515 Token!1278) (_2!2515 List!4011)) )
))
(declare-fun lt!129368 () tuple2!4598)

(declare-fun isEmpty!2704 (List!4011) Bool)

(assert (=> b!304196 (= res!138030 (isEmpty!2704 (_2!2515 lt!129368)))))

(declare-fun b!304197 () Bool)

(declare-fun res!138041 () Bool)

(declare-fun e!188919 () Bool)

(assert (=> b!304197 (=> (not res!138041) (not e!188919))))

(declare-fun isEmpty!2705 (List!4012) Bool)

(assert (=> b!304197 (= res!138041 (not (isEmpty!2705 rules!1920)))))

(declare-fun tp!108181 () Bool)

(declare-fun separatorToken!170 () Token!1278)

(declare-fun e!188900 () Bool)

(declare-fun e!188915 () Bool)

(declare-fun b!304198 () Bool)

(declare-fun inv!21 (TokenValue!789) Bool)

(assert (=> b!304198 (= e!188915 (and (inv!21 (value!26175 separatorToken!170)) e!188900 tp!108181))))

(declare-fun b!304199 () Bool)

(declare-fun res!138025 () Bool)

(declare-fun e!188906 () Bool)

(assert (=> b!304199 (=> (not res!138025) (not e!188906))))

(assert (=> b!304199 (= res!138025 (isSeparator!767 (rule!1380 separatorToken!170)))))

(declare-fun b!304200 () Bool)

(declare-fun e!188908 () Bool)

(declare-fun e!188898 () Bool)

(assert (=> b!304200 (= e!188908 e!188898)))

(declare-fun res!138029 () Bool)

(assert (=> b!304200 (=> res!138029 e!188898)))

(declare-fun lt!129367 () Bool)

(assert (=> b!304200 (= res!138029 (not lt!129367))))

(assert (=> b!304200 e!188899))

(declare-fun res!138028 () Bool)

(assert (=> b!304200 (=> (not res!138028) (not e!188899))))

(declare-datatypes ((List!4013 0))(
  ( (Nil!4003) (Cons!4003 (h!9400 Token!1278) (t!43089 List!4013)) )
))
(declare-fun tokens!465 () List!4013)

(assert (=> b!304200 (= res!138028 (= (_1!2515 lt!129368) (h!9400 tokens!465)))))

(declare-datatypes ((Option!900 0))(
  ( (None!899) (Some!899 (v!14892 tuple2!4598)) )
))
(declare-fun lt!129369 () Option!900)

(declare-fun get!1363 (Option!900) tuple2!4598)

(assert (=> b!304200 (= lt!129368 (get!1363 lt!129369))))

(declare-fun isDefined!739 (Option!900) Bool)

(assert (=> b!304200 (isDefined!739 lt!129369)))

(declare-fun lt!129384 () List!4011)

(declare-datatypes ((LexerInterface!653 0))(
  ( (LexerInterfaceExt!650 (__x!3066 Int)) (Lexer!651) )
))
(declare-fun thiss!17480 () LexerInterface!653)

(declare-fun maxPrefix!369 (LexerInterface!653 List!4012 List!4011) Option!900)

(assert (=> b!304200 (= lt!129369 (maxPrefix!369 thiss!17480 rules!1920 lt!129384))))

(declare-fun res!138024 () Bool)

(assert (=> b!304201 (=> (not res!138024) (not e!188906))))

(declare-fun forall!1054 (List!4013 Int) Bool)

(assert (=> b!304201 (= res!138024 (forall!1054 tokens!465 lambda!10339))))

(declare-fun e!188916 () Bool)

(declare-fun tp!108176 () Bool)

(declare-fun b!304203 () Bool)

(declare-fun e!188903 () Bool)

(declare-fun inv!4955 (String!5025) Bool)

(declare-fun inv!4958 (TokenValueInjection!1350) Bool)

(assert (=> b!304203 (= e!188916 (and tp!108176 (inv!4955 (tag!985 (h!9399 rules!1920))) (inv!4958 (transformation!767 (h!9399 rules!1920))) e!188903))))

(declare-fun e!188897 () Bool)

(declare-fun b!304204 () Bool)

(declare-fun tp!108180 () Bool)

(assert (=> b!304204 (= e!188900 (and tp!108180 (inv!4955 (tag!985 (rule!1380 separatorToken!170))) (inv!4958 (transformation!767 (rule!1380 separatorToken!170))) e!188897))))

(assert (=> b!304205 (= e!188897 (and tp!108174 tp!108183))))

(declare-fun b!304206 () Bool)

(declare-fun e!188909 () Bool)

(declare-fun e!188902 () Bool)

(assert (=> b!304206 (= e!188909 e!188902)))

(declare-fun res!138031 () Bool)

(assert (=> b!304206 (=> res!138031 e!188902)))

(declare-fun lt!129381 () List!4011)

(declare-fun lt!129372 () List!4011)

(assert (=> b!304206 (= res!138031 (or (not (= lt!129372 lt!129381)) (not (= lt!129381 lt!129384)) (not (= lt!129372 lt!129384))))))

(declare-fun printList!327 (LexerInterface!653 List!4013) List!4011)

(assert (=> b!304206 (= lt!129381 (printList!327 thiss!17480 (Cons!4003 (h!9400 tokens!465) Nil!4003)))))

(declare-fun lt!129371 () BalanceConc!2720)

(declare-fun list!1691 (BalanceConc!2720) List!4011)

(assert (=> b!304206 (= lt!129372 (list!1691 lt!129371))))

(declare-datatypes ((IArray!2715 0))(
  ( (IArray!2716 (innerList!1415 List!4013)) )
))
(declare-datatypes ((Conc!1357 0))(
  ( (Node!1357 (left!3315 Conc!1357) (right!3645 Conc!1357) (csize!2944 Int) (cheight!1568 Int)) (Leaf!2080 (xs!3960 IArray!2715) (csize!2945 Int)) (Empty!1357) )
))
(declare-datatypes ((BalanceConc!2722 0))(
  ( (BalanceConc!2723 (c!57926 Conc!1357)) )
))
(declare-fun lt!129380 () BalanceConc!2722)

(declare-fun printTailRec!339 (LexerInterface!653 BalanceConc!2722 Int BalanceConc!2720) BalanceConc!2720)

(assert (=> b!304206 (= lt!129371 (printTailRec!339 thiss!17480 lt!129380 0 (BalanceConc!2721 Empty!1356)))))

(declare-fun print!378 (LexerInterface!653 BalanceConc!2722) BalanceConc!2720)

(assert (=> b!304206 (= lt!129371 (print!378 thiss!17480 lt!129380))))

(declare-fun singletonSeq!313 (Token!1278) BalanceConc!2722)

(assert (=> b!304206 (= lt!129380 (singletonSeq!313 (h!9400 tokens!465)))))

(assert (=> b!304207 (= e!188903 (and tp!108172 tp!108177))))

(declare-fun b!304208 () Bool)

(declare-fun res!138026 () Bool)

(assert (=> b!304208 (=> res!138026 e!188902)))

(declare-fun isEmpty!2706 (BalanceConc!2722) Bool)

(declare-datatypes ((tuple2!4600 0))(
  ( (tuple2!4601 (_1!2516 BalanceConc!2722) (_2!2516 BalanceConc!2720)) )
))
(declare-fun lex!445 (LexerInterface!653 List!4012 BalanceConc!2720) tuple2!4600)

(declare-fun seqFromList!899 (List!4011) BalanceConc!2720)

(assert (=> b!304208 (= res!138026 (isEmpty!2706 (_1!2516 (lex!445 thiss!17480 rules!1920 (seqFromList!899 lt!129384)))))))

(declare-fun b!304209 () Bool)

(declare-fun e!188913 () Bool)

(declare-fun e!188912 () Bool)

(assert (=> b!304209 (= e!188913 (not e!188912))))

(declare-fun res!138023 () Bool)

(assert (=> b!304209 (=> res!138023 e!188912)))

(declare-fun lt!129382 () List!4011)

(declare-fun printWithSeparatorTokenWhenNeededRec!326 (LexerInterface!653 List!4012 BalanceConc!2722 Token!1278 Int) BalanceConc!2720)

(declare-fun seqFromList!900 (List!4013) BalanceConc!2722)

(assert (=> b!304209 (= res!138023 (not (= lt!129382 (list!1691 (printWithSeparatorTokenWhenNeededRec!326 thiss!17480 rules!1920 (seqFromList!900 (t!43089 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129374 () List!4011)

(declare-fun lt!129370 () List!4011)

(assert (=> b!304209 (= lt!129374 lt!129370)))

(declare-fun lt!129378 () List!4011)

(declare-fun ++!1084 (List!4011 List!4011) List!4011)

(assert (=> b!304209 (= lt!129370 (++!1084 lt!129384 lt!129378))))

(declare-fun lt!129376 () List!4011)

(assert (=> b!304209 (= lt!129374 (++!1084 (++!1084 lt!129384 lt!129376) lt!129382))))

(declare-datatypes ((Unit!5610 0))(
  ( (Unit!5611) )
))
(declare-fun lt!129377 () Unit!5610)

(declare-fun lemmaConcatAssociativity!474 (List!4011 List!4011 List!4011) Unit!5610)

(assert (=> b!304209 (= lt!129377 (lemmaConcatAssociativity!474 lt!129384 lt!129376 lt!129382))))

(declare-fun charsOf!410 (Token!1278) BalanceConc!2720)

(assert (=> b!304209 (= lt!129384 (list!1691 (charsOf!410 (h!9400 tokens!465))))))

(assert (=> b!304209 (= lt!129378 (++!1084 lt!129376 lt!129382))))

(declare-fun printWithSeparatorTokenWhenNeededList!334 (LexerInterface!653 List!4012 List!4013 Token!1278) List!4011)

(assert (=> b!304209 (= lt!129382 (printWithSeparatorTokenWhenNeededList!334 thiss!17480 rules!1920 (t!43089 tokens!465) separatorToken!170))))

(assert (=> b!304209 (= lt!129376 (list!1691 (charsOf!410 separatorToken!170)))))

(declare-fun b!304210 () Bool)

(declare-fun res!138035 () Bool)

(assert (=> b!304210 (=> (not res!138035) (not e!188906))))

(assert (=> b!304210 (= res!138035 ((_ is Cons!4003) tokens!465))))

(declare-fun e!188910 () Bool)

(declare-fun e!188895 () Bool)

(declare-fun b!304211 () Bool)

(declare-fun tp!108171 () Bool)

(assert (=> b!304211 (= e!188895 (and (inv!21 (value!26175 (h!9400 tokens!465))) e!188910 tp!108171))))

(declare-fun b!304212 () Bool)

(declare-fun res!138034 () Bool)

(assert (=> b!304212 (=> (not res!138034) (not e!188913))))

(declare-fun lt!129383 () List!4011)

(declare-fun lt!129379 () List!4011)

(assert (=> b!304212 (= res!138034 (= (list!1691 (seqFromList!899 lt!129383)) lt!129379))))

(declare-fun b!304213 () Bool)

(declare-fun matchR!309 (Regex!991 List!4011) Bool)

(assert (=> b!304213 (= e!188899 (matchR!309 (regex!767 (rule!1380 (h!9400 tokens!465))) lt!129384))))

(declare-fun b!304214 () Bool)

(declare-fun res!138027 () Bool)

(assert (=> b!304214 (=> (not res!138027) (not e!188906))))

(declare-fun rulesProduceIndividualToken!402 (LexerInterface!653 List!4012 Token!1278) Bool)

(assert (=> b!304214 (= res!138027 (rulesProduceIndividualToken!402 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!304215 () Bool)

(assert (=> b!304215 (= e!188898 (forall!1054 tokens!465 lambda!10339))))

(declare-fun b!304216 () Bool)

(declare-fun res!138032 () Bool)

(assert (=> b!304216 (=> (not res!138032) (not e!188906))))

(declare-fun sepAndNonSepRulesDisjointChars!356 (List!4012 List!4012) Bool)

(assert (=> b!304216 (= res!138032 (sepAndNonSepRulesDisjointChars!356 rules!1920 rules!1920))))

(declare-fun b!304217 () Bool)

(declare-fun res!138022 () Bool)

(assert (=> b!304217 (=> res!138022 e!188898)))

(declare-fun rulesProduceEachTokenIndividuallyList!261 (LexerInterface!653 List!4012 List!4013) Bool)

(assert (=> b!304217 (= res!138022 (not (rulesProduceEachTokenIndividuallyList!261 thiss!17480 rules!1920 tokens!465)))))

(declare-fun e!188917 () Bool)

(declare-fun b!304218 () Bool)

(assert (=> b!304218 (= e!188917 (not (= lt!129383 (++!1084 lt!129384 lt!129382))))))

(declare-fun res!138040 () Bool)

(assert (=> start!32758 (=> (not res!138040) (not e!188919))))

(assert (=> start!32758 (= res!138040 ((_ is Lexer!651) thiss!17480))))

(assert (=> start!32758 e!188919))

(assert (=> start!32758 true))

(declare-fun e!188918 () Bool)

(assert (=> start!32758 e!188918))

(declare-fun inv!4959 (Token!1278) Bool)

(assert (=> start!32758 (and (inv!4959 separatorToken!170) e!188915)))

(declare-fun e!188901 () Bool)

(assert (=> start!32758 e!188901))

(declare-fun b!304202 () Bool)

(declare-fun res!138039 () Bool)

(assert (=> b!304202 (=> res!138039 e!188902)))

(assert (=> b!304202 (= res!138039 (not (rulesProduceIndividualToken!402 thiss!17480 rules!1920 (h!9400 tokens!465))))))

(declare-fun b!304219 () Bool)

(assert (=> b!304219 (= e!188919 e!188906)))

(declare-fun res!138037 () Bool)

(assert (=> b!304219 (=> (not res!138037) (not e!188906))))

(declare-fun lt!129375 () BalanceConc!2722)

(declare-fun rulesProduceEachTokenIndividually!445 (LexerInterface!653 List!4012 BalanceConc!2722) Bool)

(assert (=> b!304219 (= res!138037 (rulesProduceEachTokenIndividually!445 thiss!17480 rules!1920 lt!129375))))

(assert (=> b!304219 (= lt!129375 (seqFromList!900 tokens!465))))

(assert (=> b!304220 (= e!188902 e!188908)))

(declare-fun res!138043 () Bool)

(assert (=> b!304220 (=> res!138043 e!188908)))

(declare-datatypes ((tuple2!4602 0))(
  ( (tuple2!4603 (_1!2517 Token!1278) (_2!2517 BalanceConc!2720)) )
))
(declare-datatypes ((Option!901 0))(
  ( (None!900) (Some!900 (v!14893 tuple2!4602)) )
))
(declare-fun isDefined!740 (Option!901) Bool)

(declare-fun maxPrefixZipperSequence!332 (LexerInterface!653 List!4012 BalanceConc!2720) Option!901)

(assert (=> b!304220 (= res!138043 (not (isDefined!740 (maxPrefixZipperSequence!332 thiss!17480 rules!1920 (seqFromList!899 (originalCharacters!810 (h!9400 tokens!465)))))))))

(declare-fun lt!129373 () Unit!5610)

(declare-fun forallContained!320 (List!4013 Int Token!1278) Unit!5610)

(assert (=> b!304220 (= lt!129373 (forallContained!320 tokens!465 lambda!10340 (h!9400 tokens!465)))))

(assert (=> b!304220 (= lt!129384 (originalCharacters!810 (h!9400 tokens!465)))))

(declare-fun b!304221 () Bool)

(assert (=> b!304221 (= e!188912 e!188909)))

(declare-fun res!138033 () Bool)

(assert (=> b!304221 (=> res!138033 e!188909)))

(assert (=> b!304221 (= res!138033 e!188917)))

(declare-fun res!138036 () Bool)

(assert (=> b!304221 (=> (not res!138036) (not e!188917))))

(assert (=> b!304221 (= res!138036 (not lt!129367))))

(assert (=> b!304221 (= lt!129367 (= lt!129383 lt!129370))))

(declare-fun b!304222 () Bool)

(assert (=> b!304222 (= e!188906 e!188913)))

(declare-fun res!138038 () Bool)

(assert (=> b!304222 (=> (not res!138038) (not e!188913))))

(assert (=> b!304222 (= res!138038 (= lt!129383 lt!129379))))

(assert (=> b!304222 (= lt!129379 (list!1691 (printWithSeparatorTokenWhenNeededRec!326 thiss!17480 rules!1920 lt!129375 separatorToken!170 0)))))

(assert (=> b!304222 (= lt!129383 (printWithSeparatorTokenWhenNeededList!334 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!108179 () Bool)

(declare-fun b!304223 () Bool)

(assert (=> b!304223 (= e!188901 (and (inv!4959 (h!9400 tokens!465)) e!188895 tp!108179))))

(declare-fun b!304224 () Bool)

(declare-fun res!138042 () Bool)

(assert (=> b!304224 (=> (not res!138042) (not e!188919))))

(declare-fun rulesInvariant!619 (LexerInterface!653 List!4012) Bool)

(assert (=> b!304224 (= res!138042 (rulesInvariant!619 thiss!17480 rules!1920))))

(declare-fun b!304225 () Bool)

(declare-fun tp!108182 () Bool)

(declare-fun e!188905 () Bool)

(assert (=> b!304225 (= e!188910 (and tp!108182 (inv!4955 (tag!985 (rule!1380 (h!9400 tokens!465)))) (inv!4958 (transformation!767 (rule!1380 (h!9400 tokens!465)))) e!188905))))

(assert (=> b!304226 (= e!188905 (and tp!108175 tp!108173))))

(declare-fun b!304227 () Bool)

(declare-fun tp!108178 () Bool)

(assert (=> b!304227 (= e!188918 (and e!188916 tp!108178))))

(assert (= (and start!32758 res!138040) b!304197))

(assert (= (and b!304197 res!138041) b!304224))

(assert (= (and b!304224 res!138042) b!304219))

(assert (= (and b!304219 res!138037) b!304214))

(assert (= (and b!304214 res!138027) b!304199))

(assert (= (and b!304199 res!138025) b!304201))

(assert (= (and b!304201 res!138024) b!304216))

(assert (= (and b!304216 res!138032) b!304210))

(assert (= (and b!304210 res!138035) b!304222))

(assert (= (and b!304222 res!138038) b!304212))

(assert (= (and b!304212 res!138034) b!304209))

(assert (= (and b!304209 (not res!138023)) b!304221))

(assert (= (and b!304221 res!138036) b!304218))

(assert (= (and b!304221 (not res!138033)) b!304206))

(assert (= (and b!304206 (not res!138031)) b!304202))

(assert (= (and b!304202 (not res!138039)) b!304208))

(assert (= (and b!304208 (not res!138026)) b!304220))

(assert (= (and b!304220 (not res!138043)) b!304200))

(assert (= (and b!304200 res!138028) b!304196))

(assert (= (and b!304196 res!138030) b!304213))

(assert (= (and b!304200 (not res!138029)) b!304217))

(assert (= (and b!304217 (not res!138022)) b!304215))

(assert (= b!304203 b!304207))

(assert (= b!304227 b!304203))

(assert (= (and start!32758 ((_ is Cons!4002) rules!1920)) b!304227))

(assert (= b!304204 b!304205))

(assert (= b!304198 b!304204))

(assert (= start!32758 b!304198))

(assert (= b!304225 b!304226))

(assert (= b!304211 b!304225))

(assert (= b!304223 b!304211))

(assert (= (and start!32758 ((_ is Cons!4003) tokens!465)) b!304223))

(declare-fun m!406017 () Bool)

(assert (=> b!304216 m!406017))

(declare-fun m!406019 () Bool)

(assert (=> b!304197 m!406019))

(declare-fun m!406021 () Bool)

(assert (=> b!304202 m!406021))

(declare-fun m!406023 () Bool)

(assert (=> b!304223 m!406023))

(declare-fun m!406025 () Bool)

(assert (=> b!304220 m!406025))

(assert (=> b!304220 m!406025))

(declare-fun m!406027 () Bool)

(assert (=> b!304220 m!406027))

(assert (=> b!304220 m!406027))

(declare-fun m!406029 () Bool)

(assert (=> b!304220 m!406029))

(declare-fun m!406031 () Bool)

(assert (=> b!304220 m!406031))

(declare-fun m!406033 () Bool)

(assert (=> b!304204 m!406033))

(declare-fun m!406035 () Bool)

(assert (=> b!304204 m!406035))

(declare-fun m!406037 () Bool)

(assert (=> b!304211 m!406037))

(declare-fun m!406039 () Bool)

(assert (=> b!304212 m!406039))

(assert (=> b!304212 m!406039))

(declare-fun m!406041 () Bool)

(assert (=> b!304212 m!406041))

(declare-fun m!406043 () Bool)

(assert (=> b!304217 m!406043))

(declare-fun m!406045 () Bool)

(assert (=> b!304198 m!406045))

(declare-fun m!406047 () Bool)

(assert (=> start!32758 m!406047))

(declare-fun m!406049 () Bool)

(assert (=> b!304209 m!406049))

(declare-fun m!406051 () Bool)

(assert (=> b!304209 m!406051))

(declare-fun m!406053 () Bool)

(assert (=> b!304209 m!406053))

(declare-fun m!406055 () Bool)

(assert (=> b!304209 m!406055))

(declare-fun m!406057 () Bool)

(assert (=> b!304209 m!406057))

(assert (=> b!304209 m!406053))

(declare-fun m!406059 () Bool)

(assert (=> b!304209 m!406059))

(assert (=> b!304209 m!406059))

(declare-fun m!406061 () Bool)

(assert (=> b!304209 m!406061))

(declare-fun m!406063 () Bool)

(assert (=> b!304209 m!406063))

(assert (=> b!304209 m!406049))

(declare-fun m!406065 () Bool)

(assert (=> b!304209 m!406065))

(declare-fun m!406067 () Bool)

(assert (=> b!304209 m!406067))

(declare-fun m!406069 () Bool)

(assert (=> b!304209 m!406069))

(assert (=> b!304209 m!406069))

(declare-fun m!406071 () Bool)

(assert (=> b!304209 m!406071))

(assert (=> b!304209 m!406065))

(declare-fun m!406073 () Bool)

(assert (=> b!304209 m!406073))

(declare-fun m!406075 () Bool)

(assert (=> b!304219 m!406075))

(declare-fun m!406077 () Bool)

(assert (=> b!304219 m!406077))

(declare-fun m!406079 () Bool)

(assert (=> b!304222 m!406079))

(assert (=> b!304222 m!406079))

(declare-fun m!406081 () Bool)

(assert (=> b!304222 m!406081))

(declare-fun m!406083 () Bool)

(assert (=> b!304222 m!406083))

(declare-fun m!406085 () Bool)

(assert (=> b!304214 m!406085))

(declare-fun m!406087 () Bool)

(assert (=> b!304196 m!406087))

(declare-fun m!406089 () Bool)

(assert (=> b!304200 m!406089))

(declare-fun m!406091 () Bool)

(assert (=> b!304200 m!406091))

(declare-fun m!406093 () Bool)

(assert (=> b!304200 m!406093))

(declare-fun m!406095 () Bool)

(assert (=> b!304224 m!406095))

(declare-fun m!406097 () Bool)

(assert (=> b!304201 m!406097))

(declare-fun m!406099 () Bool)

(assert (=> b!304208 m!406099))

(assert (=> b!304208 m!406099))

(declare-fun m!406101 () Bool)

(assert (=> b!304208 m!406101))

(declare-fun m!406103 () Bool)

(assert (=> b!304208 m!406103))

(declare-fun m!406105 () Bool)

(assert (=> b!304225 m!406105))

(declare-fun m!406107 () Bool)

(assert (=> b!304225 m!406107))

(declare-fun m!406109 () Bool)

(assert (=> b!304203 m!406109))

(declare-fun m!406111 () Bool)

(assert (=> b!304203 m!406111))

(assert (=> b!304215 m!406097))

(declare-fun m!406113 () Bool)

(assert (=> b!304213 m!406113))

(declare-fun m!406115 () Bool)

(assert (=> b!304218 m!406115))

(declare-fun m!406117 () Bool)

(assert (=> b!304206 m!406117))

(declare-fun m!406119 () Bool)

(assert (=> b!304206 m!406119))

(declare-fun m!406121 () Bool)

(assert (=> b!304206 m!406121))

(declare-fun m!406123 () Bool)

(assert (=> b!304206 m!406123))

(declare-fun m!406125 () Bool)

(assert (=> b!304206 m!406125))

(check-sat (not b!304203) (not b!304224) (not b!304219) b_and!25675 (not b!304218) (not b!304208) b_and!25679 (not b_next!10819) (not b!304215) (not b!304223) b_and!25677 (not b_next!10825) (not b!304216) (not b!304217) (not b!304196) (not b!304201) (not b!304211) (not b!304222) (not b!304206) (not b!304236) (not b!304225) (not b!304197) (not b!304200) (not b!304198) (not b!304202) (not b!304227) (not b!304212) (not b_next!10827) (not b!304213) (not b!304220) (not b!304214) (not start!32758) b_and!25671 b_and!25669 (not b!304209) b_and!25673 (not b_next!10821) (not b_next!10823) (not b_next!10817) (not b!304204))
(check-sat b_and!25675 b_and!25679 (not b_next!10819) (not b_next!10827) (not b_next!10817) b_and!25677 (not b_next!10825) b_and!25671 b_and!25669 b_and!25673 (not b_next!10821) (not b_next!10823))
