; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20494 () Bool)

(assert start!20494)

(declare-fun b!189151 () Bool)

(declare-fun b_free!7473 () Bool)

(declare-fun b_next!7473 () Bool)

(assert (=> b!189151 (= b_free!7473 (not b_next!7473))))

(declare-fun tp!88232 () Bool)

(declare-fun b_and!13077 () Bool)

(assert (=> b!189151 (= tp!88232 b_and!13077)))

(declare-fun b_free!7475 () Bool)

(declare-fun b_next!7475 () Bool)

(assert (=> b!189151 (= b_free!7475 (not b_next!7475))))

(declare-fun tp!88228 () Bool)

(declare-fun b_and!13079 () Bool)

(assert (=> b!189151 (= tp!88228 b_and!13079)))

(declare-fun b!189147 () Bool)

(declare-fun b_free!7477 () Bool)

(declare-fun b_next!7477 () Bool)

(assert (=> b!189147 (= b_free!7477 (not b_next!7477))))

(declare-fun tp!88224 () Bool)

(declare-fun b_and!13081 () Bool)

(assert (=> b!189147 (= tp!88224 b_and!13081)))

(declare-fun b_free!7479 () Bool)

(declare-fun b_next!7479 () Bool)

(assert (=> b!189147 (= b_free!7479 (not b_next!7479))))

(declare-fun tp!88233 () Bool)

(declare-fun b_and!13083 () Bool)

(assert (=> b!189147 (= tp!88233 b_and!13083)))

(declare-fun b!189130 () Bool)

(declare-fun b_free!7481 () Bool)

(declare-fun b_next!7481 () Bool)

(assert (=> b!189130 (= b_free!7481 (not b_next!7481))))

(declare-fun tp!88225 () Bool)

(declare-fun b_and!13085 () Bool)

(assert (=> b!189130 (= tp!88225 b_and!13085)))

(declare-fun b_free!7483 () Bool)

(declare-fun b_next!7483 () Bool)

(assert (=> b!189130 (= b_free!7483 (not b_next!7483))))

(declare-fun tp!88227 () Bool)

(declare-fun b_and!13087 () Bool)

(assert (=> b!189130 (= tp!88227 b_and!13087)))

(declare-fun bs!18750 () Bool)

(declare-fun b!189129 () Bool)

(declare-fun b!189136 () Bool)

(assert (= bs!18750 (and b!189129 b!189136)))

(declare-fun lambda!5752 () Int)

(declare-fun lambda!5751 () Int)

(assert (=> bs!18750 (not (= lambda!5752 lambda!5751))))

(declare-fun b!189168 () Bool)

(declare-fun e!115993 () Bool)

(assert (=> b!189168 (= e!115993 true)))

(declare-fun b!189167 () Bool)

(declare-fun e!115992 () Bool)

(assert (=> b!189167 (= e!115992 e!115993)))

(declare-fun b!189166 () Bool)

(declare-fun e!115991 () Bool)

(assert (=> b!189166 (= e!115991 e!115992)))

(assert (=> b!189129 e!115991))

(assert (= b!189167 b!189168))

(assert (= b!189166 b!189167))

(declare-datatypes ((List!3171 0))(
  ( (Nil!3161) (Cons!3161 (h!8558 (_ BitVec 16)) (t!28841 List!3171)) )
))
(declare-datatypes ((TokenValue!601 0))(
  ( (FloatLiteralValue!1202 (text!4652 List!3171)) (TokenValueExt!600 (__x!2689 Int)) (Broken!3005 (value!20791 List!3171)) (Object!610) (End!601) (Def!601) (Underscore!601) (Match!601) (Else!601) (Error!601) (Case!601) (If!601) (Extends!601) (Abstract!601) (Class!601) (Val!601) (DelimiterValue!1202 (del!661 List!3171)) (KeywordValue!607 (value!20792 List!3171)) (CommentValue!1202 (value!20793 List!3171)) (WhitespaceValue!1202 (value!20794 List!3171)) (IndentationValue!601 (value!20795 List!3171)) (String!4084) (Int32!601) (Broken!3006 (value!20796 List!3171)) (Boolean!602) (Unit!2965) (OperatorValue!604 (op!661 List!3171)) (IdentifierValue!1202 (value!20797 List!3171)) (IdentifierValue!1203 (value!20798 List!3171)) (WhitespaceValue!1203 (value!20799 List!3171)) (True!1202) (False!1202) (Broken!3007 (value!20800 List!3171)) (Broken!3008 (value!20801 List!3171)) (True!1203) (RightBrace!601) (RightBracket!601) (Colon!601) (Null!601) (Comma!601) (LeftBracket!601) (False!1203) (LeftBrace!601) (ImaginaryLiteralValue!601 (text!4653 List!3171)) (StringLiteralValue!1803 (value!20802 List!3171)) (EOFValue!601 (value!20803 List!3171)) (IdentValue!601 (value!20804 List!3171)) (DelimiterValue!1203 (value!20805 List!3171)) (DedentValue!601 (value!20806 List!3171)) (NewLineValue!601 (value!20807 List!3171)) (IntegerValue!1803 (value!20808 (_ BitVec 32)) (text!4654 List!3171)) (IntegerValue!1804 (value!20809 Int) (text!4655 List!3171)) (Times!601) (Or!601) (Equal!601) (Minus!601) (Broken!3009 (value!20810 List!3171)) (And!601) (Div!601) (LessEqual!601) (Mod!601) (Concat!1404) (Not!601) (Plus!601) (SpaceValue!601 (value!20811 List!3171)) (IntegerValue!1805 (value!20812 Int) (text!4656 List!3171)) (StringLiteralValue!1804 (text!4657 List!3171)) (FloatLiteralValue!1203 (text!4658 List!3171)) (BytesLiteralValue!601 (value!20813 List!3171)) (CommentValue!1203 (value!20814 List!3171)) (StringLiteralValue!1805 (value!20815 List!3171)) (ErrorTokenValue!601 (msg!662 List!3171)) )
))
(declare-datatypes ((C!2528 0))(
  ( (C!2529 (val!1150 Int)) )
))
(declare-datatypes ((List!3172 0))(
  ( (Nil!3162) (Cons!3162 (h!8559 C!2528) (t!28842 List!3172)) )
))
(declare-datatypes ((IArray!1961 0))(
  ( (IArray!1962 (innerList!1038 List!3172)) )
))
(declare-datatypes ((Conc!980 0))(
  ( (Node!980 (left!2484 Conc!980) (right!2814 Conc!980) (csize!2190 Int) (cheight!1191 Int)) (Leaf!1609 (xs!3575 IArray!1961) (csize!2191 Int)) (Empty!980) )
))
(declare-datatypes ((BalanceConc!1968 0))(
  ( (BalanceConc!1969 (c!36327 Conc!980)) )
))
(declare-datatypes ((Regex!803 0))(
  ( (ElementMatch!803 (c!36328 C!2528)) (Concat!1405 (regOne!2118 Regex!803) (regTwo!2118 Regex!803)) (EmptyExpr!803) (Star!803 (reg!1132 Regex!803)) (EmptyLang!803) (Union!803 (regOne!2119 Regex!803) (regTwo!2119 Regex!803)) )
))
(declare-datatypes ((String!4085 0))(
  ( (String!4086 (value!20816 String)) )
))
(declare-datatypes ((TokenValueInjection!974 0))(
  ( (TokenValueInjection!975 (toValue!1250 Int) (toChars!1109 Int)) )
))
(declare-datatypes ((Rule!958 0))(
  ( (Rule!959 (regex!579 Regex!803) (tag!757 String!4085) (isSeparator!579 Bool) (transformation!579 TokenValueInjection!974)) )
))
(declare-datatypes ((List!3173 0))(
  ( (Nil!3163) (Cons!3163 (h!8560 Rule!958) (t!28843 List!3173)) )
))
(declare-fun rules!1920 () List!3173)

(get-info :version)

(assert (= (and b!189129 ((_ is Cons!3163) rules!1920)) b!189166))

(declare-fun order!1949 () Int)

(declare-fun order!1951 () Int)

(declare-fun dynLambda!1327 (Int Int) Int)

(declare-fun dynLambda!1328 (Int Int) Int)

(assert (=> b!189168 (< (dynLambda!1327 order!1949 (toValue!1250 (transformation!579 (h!8560 rules!1920)))) (dynLambda!1328 order!1951 lambda!5752))))

(declare-fun order!1953 () Int)

(declare-fun dynLambda!1329 (Int Int) Int)

(assert (=> b!189168 (< (dynLambda!1329 order!1953 (toChars!1109 (transformation!579 (h!8560 rules!1920)))) (dynLambda!1328 order!1951 lambda!5752))))

(assert (=> b!189129 true))

(declare-fun b!189123 () Bool)

(declare-fun res!86428 () Bool)

(declare-fun e!115982 () Bool)

(assert (=> b!189123 (=> (not res!86428) (not e!115982))))

(declare-datatypes ((Token!902 0))(
  ( (Token!903 (value!20817 TokenValue!601) (rule!1094 Rule!958) (size!2539 Int) (originalCharacters!622 List!3172)) )
))
(declare-fun separatorToken!170 () Token!902)

(declare-datatypes ((LexerInterface!465 0))(
  ( (LexerInterfaceExt!462 (__x!2690 Int)) (Lexer!463) )
))
(declare-fun thiss!17480 () LexerInterface!465)

(declare-fun rulesProduceIndividualToken!214 (LexerInterface!465 List!3173 Token!902) Bool)

(assert (=> b!189123 (= res!86428 (rulesProduceIndividualToken!214 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!189124 () Bool)

(declare-fun res!86426 () Bool)

(declare-fun e!115977 () Bool)

(assert (=> b!189124 (=> (not res!86426) (not e!115977))))

(declare-fun isEmpty!1543 (List!3173) Bool)

(assert (=> b!189124 (= res!86426 (not (isEmpty!1543 rules!1920)))))

(declare-fun b!189125 () Bool)

(declare-fun res!86431 () Bool)

(assert (=> b!189125 (=> (not res!86431) (not e!115977))))

(declare-fun rulesInvariant!431 (LexerInterface!465 List!3173) Bool)

(assert (=> b!189125 (= res!86431 (rulesInvariant!431 thiss!17480 rules!1920))))

(declare-fun tp!88235 () Bool)

(declare-fun e!115965 () Bool)

(declare-fun e!115964 () Bool)

(declare-fun b!189126 () Bool)

(declare-fun inv!21 (TokenValue!601) Bool)

(assert (=> b!189126 (= e!115965 (and (inv!21 (value!20817 separatorToken!170)) e!115964 tp!88235))))

(declare-fun b!189127 () Bool)

(declare-fun e!115978 () Bool)

(assert (=> b!189127 (= e!115982 e!115978)))

(declare-fun res!86411 () Bool)

(assert (=> b!189127 (=> (not res!86411) (not e!115978))))

(declare-fun lt!64064 () List!3172)

(declare-fun lt!64075 () List!3172)

(assert (=> b!189127 (= res!86411 (= lt!64064 lt!64075))))

(declare-datatypes ((List!3174 0))(
  ( (Nil!3164) (Cons!3164 (h!8561 Token!902) (t!28844 List!3174)) )
))
(declare-datatypes ((IArray!1963 0))(
  ( (IArray!1964 (innerList!1039 List!3174)) )
))
(declare-datatypes ((Conc!981 0))(
  ( (Node!981 (left!2485 Conc!981) (right!2815 Conc!981) (csize!2192 Int) (cheight!1192 Int)) (Leaf!1610 (xs!3576 IArray!1963) (csize!2193 Int)) (Empty!981) )
))
(declare-datatypes ((BalanceConc!1970 0))(
  ( (BalanceConc!1971 (c!36329 Conc!981)) )
))
(declare-fun lt!64058 () BalanceConc!1970)

(declare-fun list!1165 (BalanceConc!1968) List!3172)

(declare-fun printWithSeparatorTokenWhenNeededRec!148 (LexerInterface!465 List!3173 BalanceConc!1970 Token!902 Int) BalanceConc!1968)

(assert (=> b!189127 (= lt!64075 (list!1165 (printWithSeparatorTokenWhenNeededRec!148 thiss!17480 rules!1920 lt!64058 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3174)

(declare-fun printWithSeparatorTokenWhenNeededList!158 (LexerInterface!465 List!3173 List!3174 Token!902) List!3172)

(assert (=> b!189127 (= lt!64064 (printWithSeparatorTokenWhenNeededList!158 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!189128 () Bool)

(declare-fun e!115975 () Bool)

(declare-fun e!115970 () Bool)

(assert (=> b!189128 (= e!115975 e!115970)))

(declare-fun res!86417 () Bool)

(assert (=> b!189128 (=> res!86417 e!115970)))

(declare-fun lt!64065 () Bool)

(assert (=> b!189128 (= res!86417 (not lt!64065))))

(declare-fun e!115971 () Bool)

(assert (=> b!189128 e!115971))

(declare-fun res!86413 () Bool)

(assert (=> b!189128 (=> (not res!86413) (not e!115971))))

(declare-datatypes ((tuple2!3218 0))(
  ( (tuple2!3219 (_1!1825 Token!902) (_2!1825 List!3172)) )
))
(declare-fun lt!64062 () tuple2!3218)

(assert (=> b!189128 (= res!86413 (= (_1!1825 lt!64062) (h!8561 tokens!465)))))

(declare-datatypes ((Option!436 0))(
  ( (None!435) (Some!435 (v!13946 tuple2!3218)) )
))
(declare-fun lt!64057 () Option!436)

(declare-fun get!909 (Option!436) tuple2!3218)

(assert (=> b!189128 (= lt!64062 (get!909 lt!64057))))

(declare-fun isDefined!287 (Option!436) Bool)

(assert (=> b!189128 (isDefined!287 lt!64057)))

(declare-fun lt!64072 () List!3172)

(declare-fun maxPrefix!195 (LexerInterface!465 List!3173 List!3172) Option!436)

(assert (=> b!189128 (= lt!64057 (maxPrefix!195 thiss!17480 rules!1920 lt!64072))))

(declare-fun e!115960 () Bool)

(assert (=> b!189129 (= e!115960 e!115975)))

(declare-fun res!86419 () Bool)

(assert (=> b!189129 (=> res!86419 e!115975)))

(declare-datatypes ((tuple2!3220 0))(
  ( (tuple2!3221 (_1!1826 Token!902) (_2!1826 BalanceConc!1968)) )
))
(declare-datatypes ((Option!437 0))(
  ( (None!436) (Some!436 (v!13947 tuple2!3220)) )
))
(declare-fun isDefined!288 (Option!437) Bool)

(declare-fun maxPrefixZipperSequence!158 (LexerInterface!465 List!3173 BalanceConc!1968) Option!437)

(declare-fun seqFromList!535 (List!3172) BalanceConc!1968)

(assert (=> b!189129 (= res!86419 (not (isDefined!288 (maxPrefixZipperSequence!158 thiss!17480 rules!1920 (seqFromList!535 (originalCharacters!622 (h!8561 tokens!465)))))))))

(declare-datatypes ((Unit!2966 0))(
  ( (Unit!2967) )
))
(declare-fun lt!64055 () Unit!2966)

(declare-fun forallContained!146 (List!3174 Int Token!902) Unit!2966)

(assert (=> b!189129 (= lt!64055 (forallContained!146 tokens!465 lambda!5752 (h!8561 tokens!465)))))

(assert (=> b!189129 (= lt!64072 (originalCharacters!622 (h!8561 tokens!465)))))

(declare-fun e!115966 () Bool)

(assert (=> b!189130 (= e!115966 (and tp!88225 tp!88227))))

(declare-fun b!189131 () Bool)

(declare-fun res!86414 () Bool)

(assert (=> b!189131 (=> res!86414 e!115960)))

(assert (=> b!189131 (= res!86414 (not (rulesProduceIndividualToken!214 thiss!17480 rules!1920 (h!8561 tokens!465))))))

(declare-fun b!189132 () Bool)

(declare-fun e!115984 () Bool)

(declare-fun lt!64060 () List!3172)

(declare-fun ++!754 (List!3172 List!3172) List!3172)

(assert (=> b!189132 (= e!115984 (not (= lt!64064 (++!754 lt!64072 lt!64060))))))

(declare-fun b!189134 () Bool)

(declare-fun e!115962 () Bool)

(declare-fun lt!64070 () Option!436)

(declare-fun head!668 (List!3174) Token!902)

(assert (=> b!189134 (= e!115962 (= (_1!1825 (get!909 lt!64070)) (head!668 tokens!465)))))

(declare-fun b!189135 () Bool)

(declare-fun matchR!141 (Regex!803 List!3172) Bool)

(assert (=> b!189135 (= e!115971 (matchR!141 (regex!579 (rule!1094 (h!8561 tokens!465))) lt!64072))))

(declare-fun res!86422 () Bool)

(assert (=> b!189136 (=> (not res!86422) (not e!115982))))

(declare-fun forall!661 (List!3174 Int) Bool)

(assert (=> b!189136 (= res!86422 (forall!661 tokens!465 lambda!5751))))

(declare-fun b!189137 () Bool)

(declare-fun res!86427 () Bool)

(assert (=> b!189137 (=> (not res!86427) (not e!115982))))

(assert (=> b!189137 (= res!86427 ((_ is Cons!3164) tokens!465))))

(declare-fun b!189138 () Bool)

(declare-fun res!86416 () Bool)

(assert (=> b!189138 (=> res!86416 e!115960)))

(declare-fun isEmpty!1544 (BalanceConc!1970) Bool)

(declare-datatypes ((tuple2!3222 0))(
  ( (tuple2!3223 (_1!1827 BalanceConc!1970) (_2!1827 BalanceConc!1968)) )
))
(declare-fun lex!265 (LexerInterface!465 List!3173 BalanceConc!1968) tuple2!3222)

(assert (=> b!189138 (= res!86416 (isEmpty!1544 (_1!1827 (lex!265 thiss!17480 rules!1920 (seqFromList!535 lt!64072)))))))

(declare-fun b!189139 () Bool)

(declare-fun e!115967 () Unit!2966)

(declare-fun Unit!2968 () Unit!2966)

(assert (=> b!189139 (= e!115967 Unit!2968)))

(declare-fun b!189140 () Bool)

(declare-fun res!86429 () Bool)

(assert (=> b!189140 (=> (not res!86429) (not e!115978))))

(assert (=> b!189140 (= res!86429 (= (list!1165 (seqFromList!535 lt!64064)) lt!64075))))

(declare-fun b!189141 () Bool)

(declare-fun e!115983 () Bool)

(assert (=> b!189141 (= e!115983 e!115962)))

(declare-fun res!86420 () Bool)

(assert (=> b!189141 (=> (not res!86420) (not e!115962))))

(assert (=> b!189141 (= res!86420 (isDefined!287 lt!64070))))

(assert (=> b!189141 (= lt!64070 (maxPrefix!195 thiss!17480 rules!1920 lt!64064))))

(declare-fun e!115968 () Bool)

(declare-fun b!189142 () Bool)

(declare-fun e!115963 () Bool)

(declare-fun tp!88226 () Bool)

(declare-fun inv!3991 (Token!902) Bool)

(assert (=> b!189142 (= e!115963 (and (inv!3991 (h!8561 tokens!465)) e!115968 tp!88226))))

(declare-fun b!189143 () Bool)

(declare-fun e!115976 () Bool)

(declare-fun e!115957 () Bool)

(assert (=> b!189143 (= e!115976 e!115957)))

(declare-fun res!86415 () Bool)

(assert (=> b!189143 (=> res!86415 e!115957)))

(assert (=> b!189143 (= res!86415 e!115984)))

(declare-fun res!86423 () Bool)

(assert (=> b!189143 (=> (not res!86423) (not e!115984))))

(assert (=> b!189143 (= res!86423 (not lt!64065))))

(declare-fun lt!64061 () List!3172)

(assert (=> b!189143 (= lt!64065 (= lt!64064 lt!64061))))

(declare-fun b!189144 () Bool)

(assert (=> b!189144 (= e!115977 e!115982)))

(declare-fun res!86412 () Bool)

(assert (=> b!189144 (=> (not res!86412) (not e!115982))))

(declare-fun rulesProduceEachTokenIndividually!257 (LexerInterface!465 List!3173 BalanceConc!1970) Bool)

(assert (=> b!189144 (= res!86412 (rulesProduceEachTokenIndividually!257 thiss!17480 rules!1920 lt!64058))))

(declare-fun seqFromList!536 (List!3174) BalanceConc!1970)

(assert (=> b!189144 (= lt!64058 (seqFromList!536 tokens!465))))

(declare-fun tp!88230 () Bool)

(declare-fun b!189145 () Bool)

(declare-fun inv!3988 (String!4085) Bool)

(declare-fun inv!3992 (TokenValueInjection!974) Bool)

(assert (=> b!189145 (= e!115964 (and tp!88230 (inv!3988 (tag!757 (rule!1094 separatorToken!170))) (inv!3992 (transformation!579 (rule!1094 separatorToken!170))) e!115966))))

(declare-fun b!189146 () Bool)

(declare-fun Unit!2969 () Unit!2966)

(assert (=> b!189146 (= e!115967 Unit!2969)))

(assert (=> b!189146 false))

(declare-fun e!115974 () Bool)

(assert (=> b!189147 (= e!115974 (and tp!88224 tp!88233))))

(declare-fun e!115979 () Bool)

(declare-fun tp!88223 () Bool)

(declare-fun e!115981 () Bool)

(declare-fun b!189148 () Bool)

(assert (=> b!189148 (= e!115979 (and tp!88223 (inv!3988 (tag!757 (rule!1094 (h!8561 tokens!465)))) (inv!3992 (transformation!579 (rule!1094 (h!8561 tokens!465)))) e!115981))))

(declare-fun b!189149 () Bool)

(declare-fun e!115972 () Bool)

(declare-fun tp!88234 () Bool)

(assert (=> b!189149 (= e!115972 (and tp!88234 (inv!3988 (tag!757 (h!8560 rules!1920))) (inv!3992 (transformation!579 (h!8560 rules!1920))) e!115974))))

(declare-fun b!189150 () Bool)

(assert (=> b!189150 (= e!115970 true)))

(declare-fun lt!64073 () Token!902)

(assert (=> b!189150 (rulesProduceIndividualToken!214 thiss!17480 rules!1920 lt!64073)))

(declare-fun lt!64053 () Unit!2966)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!32 (LexerInterface!465 List!3173 List!3174 Token!902) Unit!2966)

(assert (=> b!189150 (= lt!64053 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!32 thiss!17480 rules!1920 tokens!465 lt!64073))))

(assert (=> b!189150 (= lt!64073 (head!668 (t!28844 tokens!465)))))

(declare-fun lt!64071 () Unit!2966)

(assert (=> b!189150 (= lt!64071 e!115967)))

(declare-fun c!36326 () Bool)

(declare-fun isEmpty!1545 (List!3174) Bool)

(assert (=> b!189150 (= c!36326 (isEmpty!1545 (t!28844 tokens!465)))))

(declare-fun lt!64052 () List!3172)

(declare-fun lt!64059 () Option!436)

(assert (=> b!189150 (= lt!64059 (maxPrefix!195 thiss!17480 rules!1920 lt!64052))))

(declare-fun lt!64066 () tuple2!3218)

(assert (=> b!189150 (= lt!64052 (_2!1825 lt!64066))))

(declare-fun lt!64056 () Unit!2966)

(declare-fun lemmaSamePrefixThenSameSuffix!100 (List!3172 List!3172 List!3172 List!3172 List!3172) Unit!2966)

(assert (=> b!189150 (= lt!64056 (lemmaSamePrefixThenSameSuffix!100 lt!64072 lt!64052 lt!64072 (_2!1825 lt!64066) lt!64064))))

(assert (=> b!189150 (= lt!64066 (get!909 (maxPrefix!195 thiss!17480 rules!1920 lt!64064)))))

(declare-fun isPrefix!275 (List!3172 List!3172) Bool)

(assert (=> b!189150 (isPrefix!275 lt!64072 lt!64061)))

(declare-fun lt!64078 () Unit!2966)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!170 (List!3172 List!3172) Unit!2966)

(assert (=> b!189150 (= lt!64078 (lemmaConcatTwoListThenFirstIsPrefix!170 lt!64072 lt!64052))))

(assert (=> b!189150 e!115983))

(declare-fun res!86430 () Bool)

(assert (=> b!189150 (=> res!86430 e!115983)))

(assert (=> b!189150 (= res!86430 (isEmpty!1545 tokens!465))))

(declare-fun lt!64076 () Unit!2966)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!40 (LexerInterface!465 List!3173 List!3174 Token!902) Unit!2966)

(assert (=> b!189150 (= lt!64076 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!40 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!189151 (= e!115981 (and tp!88232 tp!88228))))

(declare-fun b!189152 () Bool)

(assert (=> b!189152 (= e!115978 (not e!115976))))

(declare-fun res!86421 () Bool)

(assert (=> b!189152 (=> res!86421 e!115976)))

(assert (=> b!189152 (= res!86421 (not (= lt!64060 (list!1165 (printWithSeparatorTokenWhenNeededRec!148 thiss!17480 rules!1920 (seqFromList!536 (t!28844 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!64054 () List!3172)

(assert (=> b!189152 (= lt!64054 lt!64061)))

(assert (=> b!189152 (= lt!64061 (++!754 lt!64072 lt!64052))))

(declare-fun lt!64077 () List!3172)

(assert (=> b!189152 (= lt!64054 (++!754 (++!754 lt!64072 lt!64077) lt!64060))))

(declare-fun lt!64074 () Unit!2966)

(declare-fun lemmaConcatAssociativity!268 (List!3172 List!3172 List!3172) Unit!2966)

(assert (=> b!189152 (= lt!64074 (lemmaConcatAssociativity!268 lt!64072 lt!64077 lt!64060))))

(declare-fun charsOf!234 (Token!902) BalanceConc!1968)

(assert (=> b!189152 (= lt!64072 (list!1165 (charsOf!234 (h!8561 tokens!465))))))

(assert (=> b!189152 (= lt!64052 (++!754 lt!64077 lt!64060))))

(assert (=> b!189152 (= lt!64060 (printWithSeparatorTokenWhenNeededList!158 thiss!17480 rules!1920 (t!28844 tokens!465) separatorToken!170))))

(assert (=> b!189152 (= lt!64077 (list!1165 (charsOf!234 separatorToken!170)))))

(declare-fun b!189153 () Bool)

(declare-fun res!86424 () Bool)

(assert (=> b!189153 (=> (not res!86424) (not e!115982))))

(declare-fun sepAndNonSepRulesDisjointChars!168 (List!3173 List!3173) Bool)

(assert (=> b!189153 (= res!86424 (sepAndNonSepRulesDisjointChars!168 rules!1920 rules!1920))))

(declare-fun res!86418 () Bool)

(assert (=> start!20494 (=> (not res!86418) (not e!115977))))

(assert (=> start!20494 (= res!86418 ((_ is Lexer!463) thiss!17480))))

(assert (=> start!20494 e!115977))

(assert (=> start!20494 true))

(declare-fun e!115961 () Bool)

(assert (=> start!20494 e!115961))

(assert (=> start!20494 (and (inv!3991 separatorToken!170) e!115965)))

(assert (=> start!20494 e!115963))

(declare-fun b!189133 () Bool)

(assert (=> b!189133 (= e!115957 e!115960)))

(declare-fun res!86410 () Bool)

(assert (=> b!189133 (=> res!86410 e!115960)))

(declare-fun lt!64069 () List!3172)

(declare-fun lt!64068 () List!3172)

(assert (=> b!189133 (= res!86410 (or (not (= lt!64068 lt!64069)) (not (= lt!64069 lt!64072)) (not (= lt!64068 lt!64072))))))

(declare-fun printList!149 (LexerInterface!465 List!3174) List!3172)

(assert (=> b!189133 (= lt!64069 (printList!149 thiss!17480 (Cons!3164 (h!8561 tokens!465) Nil!3164)))))

(declare-fun lt!64063 () BalanceConc!1968)

(assert (=> b!189133 (= lt!64068 (list!1165 lt!64063))))

(declare-fun lt!64067 () BalanceConc!1970)

(declare-fun printTailRec!159 (LexerInterface!465 BalanceConc!1970 Int BalanceConc!1968) BalanceConc!1968)

(assert (=> b!189133 (= lt!64063 (printTailRec!159 thiss!17480 lt!64067 0 (BalanceConc!1969 Empty!980)))))

(declare-fun print!196 (LexerInterface!465 BalanceConc!1970) BalanceConc!1968)

(assert (=> b!189133 (= lt!64063 (print!196 thiss!17480 lt!64067))))

(declare-fun singletonSeq!131 (Token!902) BalanceConc!1970)

(assert (=> b!189133 (= lt!64067 (singletonSeq!131 (h!8561 tokens!465)))))

(declare-fun b!189154 () Bool)

(declare-fun tp!88231 () Bool)

(assert (=> b!189154 (= e!115961 (and e!115972 tp!88231))))

(declare-fun b!189155 () Bool)

(declare-fun res!86409 () Bool)

(assert (=> b!189155 (=> (not res!86409) (not e!115971))))

(declare-fun isEmpty!1546 (List!3172) Bool)

(assert (=> b!189155 (= res!86409 (isEmpty!1546 (_2!1825 lt!64062)))))

(declare-fun b!189156 () Bool)

(declare-fun tp!88229 () Bool)

(assert (=> b!189156 (= e!115968 (and (inv!21 (value!20817 (h!8561 tokens!465))) e!115979 tp!88229))))

(declare-fun b!189157 () Bool)

(declare-fun res!86425 () Bool)

(assert (=> b!189157 (=> (not res!86425) (not e!115982))))

(assert (=> b!189157 (= res!86425 (isSeparator!579 (rule!1094 separatorToken!170)))))

(assert (= (and start!20494 res!86418) b!189124))

(assert (= (and b!189124 res!86426) b!189125))

(assert (= (and b!189125 res!86431) b!189144))

(assert (= (and b!189144 res!86412) b!189123))

(assert (= (and b!189123 res!86428) b!189157))

(assert (= (and b!189157 res!86425) b!189136))

(assert (= (and b!189136 res!86422) b!189153))

(assert (= (and b!189153 res!86424) b!189137))

(assert (= (and b!189137 res!86427) b!189127))

(assert (= (and b!189127 res!86411) b!189140))

(assert (= (and b!189140 res!86429) b!189152))

(assert (= (and b!189152 (not res!86421)) b!189143))

(assert (= (and b!189143 res!86423) b!189132))

(assert (= (and b!189143 (not res!86415)) b!189133))

(assert (= (and b!189133 (not res!86410)) b!189131))

(assert (= (and b!189131 (not res!86414)) b!189138))

(assert (= (and b!189138 (not res!86416)) b!189129))

(assert (= (and b!189129 (not res!86419)) b!189128))

(assert (= (and b!189128 res!86413) b!189155))

(assert (= (and b!189155 res!86409) b!189135))

(assert (= (and b!189128 (not res!86417)) b!189150))

(assert (= (and b!189150 (not res!86430)) b!189141))

(assert (= (and b!189141 res!86420) b!189134))

(assert (= (and b!189150 c!36326) b!189146))

(assert (= (and b!189150 (not c!36326)) b!189139))

(assert (= b!189149 b!189147))

(assert (= b!189154 b!189149))

(assert (= (and start!20494 ((_ is Cons!3163) rules!1920)) b!189154))

(assert (= b!189145 b!189130))

(assert (= b!189126 b!189145))

(assert (= start!20494 b!189126))

(assert (= b!189148 b!189151))

(assert (= b!189156 b!189148))

(assert (= b!189142 b!189156))

(assert (= (and start!20494 ((_ is Cons!3164) tokens!465)) b!189142))

(declare-fun m!194193 () Bool)

(assert (=> b!189123 m!194193))

(declare-fun m!194195 () Bool)

(assert (=> b!189150 m!194195))

(declare-fun m!194197 () Bool)

(assert (=> b!189150 m!194197))

(declare-fun m!194199 () Bool)

(assert (=> b!189150 m!194199))

(declare-fun m!194201 () Bool)

(assert (=> b!189150 m!194201))

(declare-fun m!194203 () Bool)

(assert (=> b!189150 m!194203))

(declare-fun m!194205 () Bool)

(assert (=> b!189150 m!194205))

(declare-fun m!194207 () Bool)

(assert (=> b!189150 m!194207))

(declare-fun m!194209 () Bool)

(assert (=> b!189150 m!194209))

(assert (=> b!189150 m!194199))

(declare-fun m!194211 () Bool)

(assert (=> b!189150 m!194211))

(declare-fun m!194213 () Bool)

(assert (=> b!189150 m!194213))

(declare-fun m!194215 () Bool)

(assert (=> b!189150 m!194215))

(declare-fun m!194217 () Bool)

(assert (=> b!189150 m!194217))

(declare-fun m!194219 () Bool)

(assert (=> b!189142 m!194219))

(declare-fun m!194221 () Bool)

(assert (=> b!189155 m!194221))

(declare-fun m!194223 () Bool)

(assert (=> b!189141 m!194223))

(assert (=> b!189141 m!194199))

(declare-fun m!194225 () Bool)

(assert (=> b!189126 m!194225))

(declare-fun m!194227 () Bool)

(assert (=> b!189125 m!194227))

(declare-fun m!194229 () Bool)

(assert (=> b!189140 m!194229))

(assert (=> b!189140 m!194229))

(declare-fun m!194231 () Bool)

(assert (=> b!189140 m!194231))

(declare-fun m!194233 () Bool)

(assert (=> b!189129 m!194233))

(assert (=> b!189129 m!194233))

(declare-fun m!194235 () Bool)

(assert (=> b!189129 m!194235))

(assert (=> b!189129 m!194235))

(declare-fun m!194237 () Bool)

(assert (=> b!189129 m!194237))

(declare-fun m!194239 () Bool)

(assert (=> b!189129 m!194239))

(declare-fun m!194241 () Bool)

(assert (=> b!189128 m!194241))

(declare-fun m!194243 () Bool)

(assert (=> b!189128 m!194243))

(declare-fun m!194245 () Bool)

(assert (=> b!189128 m!194245))

(declare-fun m!194247 () Bool)

(assert (=> b!189152 m!194247))

(declare-fun m!194249 () Bool)

(assert (=> b!189152 m!194249))

(declare-fun m!194251 () Bool)

(assert (=> b!189152 m!194251))

(declare-fun m!194253 () Bool)

(assert (=> b!189152 m!194253))

(assert (=> b!189152 m!194251))

(declare-fun m!194255 () Bool)

(assert (=> b!189152 m!194255))

(declare-fun m!194257 () Bool)

(assert (=> b!189152 m!194257))

(declare-fun m!194259 () Bool)

(assert (=> b!189152 m!194259))

(declare-fun m!194261 () Bool)

(assert (=> b!189152 m!194261))

(declare-fun m!194263 () Bool)

(assert (=> b!189152 m!194263))

(declare-fun m!194265 () Bool)

(assert (=> b!189152 m!194265))

(assert (=> b!189152 m!194247))

(declare-fun m!194267 () Bool)

(assert (=> b!189152 m!194267))

(assert (=> b!189152 m!194261))

(assert (=> b!189152 m!194265))

(declare-fun m!194269 () Bool)

(assert (=> b!189152 m!194269))

(assert (=> b!189152 m!194263))

(declare-fun m!194271 () Bool)

(assert (=> b!189152 m!194271))

(declare-fun m!194273 () Bool)

(assert (=> b!189124 m!194273))

(declare-fun m!194275 () Bool)

(assert (=> b!189148 m!194275))

(declare-fun m!194277 () Bool)

(assert (=> b!189148 m!194277))

(declare-fun m!194279 () Bool)

(assert (=> b!189145 m!194279))

(declare-fun m!194281 () Bool)

(assert (=> b!189145 m!194281))

(declare-fun m!194283 () Bool)

(assert (=> b!189144 m!194283))

(declare-fun m!194285 () Bool)

(assert (=> b!189144 m!194285))

(declare-fun m!194287 () Bool)

(assert (=> b!189133 m!194287))

(declare-fun m!194289 () Bool)

(assert (=> b!189133 m!194289))

(declare-fun m!194291 () Bool)

(assert (=> b!189133 m!194291))

(declare-fun m!194293 () Bool)

(assert (=> b!189133 m!194293))

(declare-fun m!194295 () Bool)

(assert (=> b!189133 m!194295))

(declare-fun m!194297 () Bool)

(assert (=> b!189127 m!194297))

(assert (=> b!189127 m!194297))

(declare-fun m!194299 () Bool)

(assert (=> b!189127 m!194299))

(declare-fun m!194301 () Bool)

(assert (=> b!189127 m!194301))

(declare-fun m!194303 () Bool)

(assert (=> b!189132 m!194303))

(declare-fun m!194305 () Bool)

(assert (=> b!189134 m!194305))

(declare-fun m!194307 () Bool)

(assert (=> b!189134 m!194307))

(declare-fun m!194309 () Bool)

(assert (=> start!20494 m!194309))

(declare-fun m!194311 () Bool)

(assert (=> b!189135 m!194311))

(declare-fun m!194313 () Bool)

(assert (=> b!189153 m!194313))

(declare-fun m!194315 () Bool)

(assert (=> b!189136 m!194315))

(declare-fun m!194317 () Bool)

(assert (=> b!189149 m!194317))

(declare-fun m!194319 () Bool)

(assert (=> b!189149 m!194319))

(declare-fun m!194321 () Bool)

(assert (=> b!189131 m!194321))

(declare-fun m!194323 () Bool)

(assert (=> b!189156 m!194323))

(declare-fun m!194325 () Bool)

(assert (=> b!189138 m!194325))

(assert (=> b!189138 m!194325))

(declare-fun m!194327 () Bool)

(assert (=> b!189138 m!194327))

(declare-fun m!194329 () Bool)

(assert (=> b!189138 m!194329))

(check-sat (not b!189149) (not b_next!7483) b_and!13085 (not b!189155) (not b!189142) (not b!189128) (not start!20494) (not b!189134) b_and!13079 (not b!189140) (not b!189123) (not b!189124) b_and!13083 (not b!189150) (not b_next!7475) (not b!189127) (not b!189145) (not b!189133) b_and!13077 b_and!13081 (not b!189129) (not b!189135) (not b!189156) (not b!189154) (not b!189144) b_and!13087 (not b!189131) (not b!189152) (not b!189141) (not b!189138) (not b_next!7479) (not b!189148) (not b!189166) (not b_next!7473) (not b!189132) (not b_next!7481) (not b!189125) (not b!189126) (not b!189136) (not b!189153) (not b_next!7477))
(check-sat b_and!13077 (not b_next!7483) b_and!13081 b_and!13087 b_and!13085 (not b_next!7479) (not b_next!7473) (not b_next!7481) (not b_next!7477) b_and!13079 b_and!13083 (not b_next!7475))
