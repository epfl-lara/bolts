; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!263354 () Bool)

(assert start!263354)

(declare-fun b!2714278 () Bool)

(declare-fun b_free!76517 () Bool)

(declare-fun b_next!77221 () Bool)

(assert (=> b!2714278 (= b_free!76517 (not b_next!77221))))

(declare-fun tp!857334 () Bool)

(declare-fun b_and!200261 () Bool)

(assert (=> b!2714278 (= tp!857334 b_and!200261)))

(declare-fun b_free!76519 () Bool)

(declare-fun b_next!77223 () Bool)

(assert (=> b!2714278 (= b_free!76519 (not b_next!77223))))

(declare-fun tp!857331 () Bool)

(declare-fun b_and!200263 () Bool)

(assert (=> b!2714278 (= tp!857331 b_and!200263)))

(declare-fun b!2714274 () Bool)

(declare-fun e!1710886 () Bool)

(declare-datatypes ((List!31413 0))(
  ( (Nil!31313) (Cons!31313 (h!36733 (_ BitVec 16)) (t!226223 List!31413)) )
))
(declare-datatypes ((TokenValue!5010 0))(
  ( (FloatLiteralValue!10020 (text!35515 List!31413)) (TokenValueExt!5009 (__x!20155 Int)) (Broken!25050 (value!154046 List!31413)) (Object!5109) (End!5010) (Def!5010) (Underscore!5010) (Match!5010) (Else!5010) (Error!5010) (Case!5010) (If!5010) (Extends!5010) (Abstract!5010) (Class!5010) (Val!5010) (DelimiterValue!10020 (del!5070 List!31413)) (KeywordValue!5016 (value!154047 List!31413)) (CommentValue!10020 (value!154048 List!31413)) (WhitespaceValue!10020 (value!154049 List!31413)) (IndentationValue!5010 (value!154050 List!31413)) (String!34951) (Int32!5010) (Broken!25051 (value!154051 List!31413)) (Boolean!5011) (Unit!45346) (OperatorValue!5013 (op!5070 List!31413)) (IdentifierValue!10020 (value!154052 List!31413)) (IdentifierValue!10021 (value!154053 List!31413)) (WhitespaceValue!10021 (value!154054 List!31413)) (True!10020) (False!10020) (Broken!25052 (value!154055 List!31413)) (Broken!25053 (value!154056 List!31413)) (True!10021) (RightBrace!5010) (RightBracket!5010) (Colon!5010) (Null!5010) (Comma!5010) (LeftBracket!5010) (False!10021) (LeftBrace!5010) (ImaginaryLiteralValue!5010 (text!35516 List!31413)) (StringLiteralValue!15030 (value!154057 List!31413)) (EOFValue!5010 (value!154058 List!31413)) (IdentValue!5010 (value!154059 List!31413)) (DelimiterValue!10021 (value!154060 List!31413)) (DedentValue!5010 (value!154061 List!31413)) (NewLineValue!5010 (value!154062 List!31413)) (IntegerValue!15030 (value!154063 (_ BitVec 32)) (text!35517 List!31413)) (IntegerValue!15031 (value!154064 Int) (text!35518 List!31413)) (Times!5010) (Or!5010) (Equal!5010) (Minus!5010) (Broken!25054 (value!154065 List!31413)) (And!5010) (Div!5010) (LessEqual!5010) (Mod!5010) (Concat!12950) (Not!5010) (Plus!5010) (SpaceValue!5010 (value!154066 List!31413)) (IntegerValue!15032 (value!154067 Int) (text!35519 List!31413)) (StringLiteralValue!15031 (text!35520 List!31413)) (FloatLiteralValue!10021 (text!35521 List!31413)) (BytesLiteralValue!5010 (value!154068 List!31413)) (CommentValue!10021 (value!154069 List!31413)) (StringLiteralValue!15032 (value!154070 List!31413)) (ErrorTokenValue!5010 (msg!5071 List!31413)) )
))
(declare-datatypes ((C!16038 0))(
  ( (C!16039 (val!9953 Int)) )
))
(declare-datatypes ((Regex!7940 0))(
  ( (ElementMatch!7940 (c!438432 C!16038)) (Concat!12951 (regOne!16392 Regex!7940) (regTwo!16392 Regex!7940)) (EmptyExpr!7940) (Star!7940 (reg!8269 Regex!7940)) (EmptyLang!7940) (Union!7940 (regOne!16393 Regex!7940) (regTwo!16393 Regex!7940)) )
))
(declare-datatypes ((String!34952 0))(
  ( (String!34953 (value!154071 String)) )
))
(declare-datatypes ((List!31414 0))(
  ( (Nil!31314) (Cons!31314 (h!36734 C!16038) (t!226224 List!31414)) )
))
(declare-datatypes ((IArray!19611 0))(
  ( (IArray!19612 (innerList!9863 List!31414)) )
))
(declare-datatypes ((Conc!9803 0))(
  ( (Node!9803 (left!24079 Conc!9803) (right!24409 Conc!9803) (csize!19836 Int) (cheight!10014 Int)) (Leaf!14942 (xs!12866 IArray!19611) (csize!19837 Int)) (Empty!9803) )
))
(declare-datatypes ((BalanceConc!19220 0))(
  ( (BalanceConc!19221 (c!438433 Conc!9803)) )
))
(declare-datatypes ((TokenValueInjection!9460 0))(
  ( (TokenValueInjection!9461 (toValue!6758 Int) (toChars!6617 Int)) )
))
(declare-datatypes ((Rule!9376 0))(
  ( (Rule!9377 (regex!4788 Regex!7940) (tag!5292 String!34952) (isSeparator!4788 Bool) (transformation!4788 TokenValueInjection!9460)) )
))
(declare-datatypes ((Token!9038 0))(
  ( (Token!9039 (value!154072 TokenValue!5010) (rule!7214 Rule!9376) (size!24155 Int) (originalCharacters!5550 List!31414)) )
))
(declare-datatypes ((List!31415 0))(
  ( (Nil!31315) (Cons!31315 (h!36735 Token!9038) (t!226225 List!31415)) )
))
(declare-datatypes ((IArray!19613 0))(
  ( (IArray!19614 (innerList!9864 List!31415)) )
))
(declare-datatypes ((Conc!9804 0))(
  ( (Node!9804 (left!24080 Conc!9804) (right!24410 Conc!9804) (csize!19838 Int) (cheight!10015 Int)) (Leaf!14943 (xs!12867 IArray!19613) (csize!19839 Int)) (Empty!9804) )
))
(declare-datatypes ((BalanceConc!19222 0))(
  ( (BalanceConc!19223 (c!438434 Conc!9804)) )
))
(declare-datatypes ((tuple2!30968 0))(
  ( (tuple2!30969 (_1!18116 BalanceConc!19222) (_2!18116 BalanceConc!19220)) )
))
(declare-fun lt!960246 () tuple2!30968)

(declare-fun isEmpty!17847 (List!31414) Bool)

(declare-fun list!11846 (BalanceConc!19220) List!31414)

(assert (=> b!2714274 (= e!1710886 (isEmpty!17847 (list!11846 (_2!18116 lt!960246))))))

(declare-fun b!2714275 () Bool)

(declare-fun res!1139860 () Bool)

(declare-fun e!1710885 () Bool)

(assert (=> b!2714275 (=> (not res!1139860) (not e!1710885))))

(declare-datatypes ((LexerInterface!4384 0))(
  ( (LexerInterfaceExt!4381 (__x!20156 Int)) (Lexer!4382) )
))
(declare-fun thiss!11556 () LexerInterface!4384)

(declare-datatypes ((List!31416 0))(
  ( (Nil!31316) (Cons!31316 (h!36736 Rule!9376) (t!226226 List!31416)) )
))
(declare-fun rules!1182 () List!31416)

(declare-fun rulesInvariant!3869 (LexerInterface!4384 List!31416) Bool)

(assert (=> b!2714275 (= res!1139860 (rulesInvariant!3869 thiss!11556 rules!1182))))

(declare-fun b!2714276 () Bool)

(declare-fun e!1710890 () Bool)

(declare-fun lt!960240 () BalanceConc!19220)

(assert (=> b!2714276 (= e!1710890 (= lt!960246 (tuple2!30969 (BalanceConc!19223 Empty!9804) lt!960240)))))

(declare-fun b!2714277 () Bool)

(declare-fun e!1710892 () Bool)

(declare-fun treated!9 () BalanceConc!19220)

(declare-fun tp!857333 () Bool)

(declare-fun inv!42486 (Conc!9803) Bool)

(assert (=> b!2714277 (= e!1710892 (and (inv!42486 (c!438433 treated!9)) tp!857333))))

(declare-fun e!1710889 () Bool)

(assert (=> b!2714278 (= e!1710889 (and tp!857334 tp!857331))))

(declare-fun b!2714279 () Bool)

(declare-fun e!1710887 () Bool)

(declare-fun e!1710899 () Bool)

(declare-fun tp!857330 () Bool)

(assert (=> b!2714279 (= e!1710887 (and e!1710899 tp!857330))))

(declare-fun b!2714280 () Bool)

(declare-fun e!1710891 () Bool)

(declare-fun acc!331 () BalanceConc!19222)

(declare-fun tp!857328 () Bool)

(declare-fun inv!42487 (Conc!9804) Bool)

(assert (=> b!2714280 (= e!1710891 (and (inv!42487 (c!438434 acc!331)) tp!857328))))

(declare-fun b!2714281 () Bool)

(declare-fun res!1139859 () Bool)

(declare-fun e!1710895 () Bool)

(assert (=> b!2714281 (=> (not res!1139859) (not e!1710895))))

(declare-fun lt!960238 () tuple2!30968)

(assert (=> b!2714281 (= res!1139859 (isEmpty!17847 (list!11846 (_2!18116 lt!960238))))))

(declare-fun b!2714282 () Bool)

(declare-fun res!1139854 () Bool)

(assert (=> b!2714282 (=> (not res!1139854) (not e!1710885))))

(declare-fun isEmpty!17848 (List!31416) Bool)

(assert (=> b!2714282 (= res!1139854 (not (isEmpty!17848 rules!1182)))))

(declare-fun b!2714283 () Bool)

(declare-fun res!1139858 () Bool)

(assert (=> b!2714283 (=> res!1139858 e!1710886)))

(declare-fun lt!960248 () List!31415)

(declare-fun list!11847 (BalanceConc!19222) List!31415)

(assert (=> b!2714283 (= res!1139858 (not (= (list!11847 (_1!18116 lt!960246)) lt!960248)))))

(declare-fun b!2714284 () Bool)

(declare-fun tp!857332 () Bool)

(declare-fun inv!42483 (String!34952) Bool)

(declare-fun inv!42488 (TokenValueInjection!9460) Bool)

(assert (=> b!2714284 (= e!1710899 (and tp!857332 (inv!42483 (tag!5292 (h!36736 rules!1182))) (inv!42488 (transformation!4788 (h!36736 rules!1182))) e!1710889))))

(declare-datatypes ((tuple2!30970 0))(
  ( (tuple2!30971 (_1!18117 Token!9038) (_2!18117 BalanceConc!19220)) )
))
(declare-datatypes ((Option!6178 0))(
  ( (None!6177) (Some!6177 (v!33005 tuple2!30970)) )
))
(declare-fun lt!960254 () Option!6178)

(declare-fun lt!960253 () tuple2!30968)

(declare-fun b!2714285 () Bool)

(declare-fun e!1710893 () Bool)

(declare-fun lt!960249 () tuple2!30968)

(declare-fun prepend!1112 (BalanceConc!19222 Token!9038) BalanceConc!19222)

(assert (=> b!2714285 (= e!1710893 (= lt!960253 (tuple2!30969 (prepend!1112 (_1!18116 lt!960249) (_1!18117 (v!33005 lt!960254))) (_2!18116 lt!960249))))))

(declare-fun b!2714286 () Bool)

(declare-fun e!1710897 () Bool)

(declare-fun e!1710884 () Bool)

(assert (=> b!2714286 (= e!1710897 e!1710884)))

(declare-fun res!1139862 () Bool)

(assert (=> b!2714286 (=> (not res!1139862) (not e!1710884))))

(assert (=> b!2714286 (= res!1139862 (is-Some!6177 lt!960254))))

(declare-fun input!603 () BalanceConc!19220)

(declare-fun maxPrefixZipperSequence!1032 (LexerInterface!4384 List!31416 BalanceConc!19220) Option!6178)

(assert (=> b!2714286 (= lt!960254 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 input!603))))

(declare-fun b!2714287 () Bool)

(declare-fun e!1710896 () Bool)

(declare-fun totalInput!328 () BalanceConc!19220)

(declare-fun tp!857329 () Bool)

(assert (=> b!2714287 (= e!1710896 (and (inv!42486 (c!438433 totalInput!328)) tp!857329))))

(declare-fun b!2714288 () Bool)

(declare-fun e!1710898 () Bool)

(assert (=> b!2714288 (= e!1710898 e!1710895)))

(declare-fun res!1139855 () Bool)

(assert (=> b!2714288 (=> (not res!1139855) (not e!1710895))))

(declare-fun lt!960245 () List!31415)

(declare-fun lt!960247 () List!31415)

(assert (=> b!2714288 (= res!1139855 (= lt!960245 lt!960247))))

(assert (=> b!2714288 (= lt!960247 (list!11847 acc!331))))

(assert (=> b!2714288 (= lt!960245 (list!11847 (_1!18116 lt!960238)))))

(declare-fun lexRec!644 (LexerInterface!4384 List!31416 BalanceConc!19220) tuple2!30968)

(assert (=> b!2714288 (= lt!960238 (lexRec!644 thiss!11556 rules!1182 treated!9))))

(declare-fun res!1139864 () Bool)

(assert (=> start!263354 (=> (not res!1139864) (not e!1710885))))

(assert (=> start!263354 (= res!1139864 (is-Lexer!4382 thiss!11556))))

(assert (=> start!263354 e!1710885))

(declare-fun inv!42489 (BalanceConc!19220) Bool)

(assert (=> start!263354 (and (inv!42489 treated!9) e!1710892)))

(declare-fun e!1710888 () Bool)

(assert (=> start!263354 (and (inv!42489 input!603) e!1710888)))

(assert (=> start!263354 true))

(assert (=> start!263354 e!1710887))

(assert (=> start!263354 (and (inv!42489 totalInput!328) e!1710896)))

(declare-fun inv!42490 (BalanceConc!19222) Bool)

(assert (=> start!263354 (and (inv!42490 acc!331) e!1710891)))

(declare-fun b!2714289 () Bool)

(assert (=> b!2714289 (= e!1710885 e!1710898)))

(declare-fun res!1139856 () Bool)

(assert (=> b!2714289 (=> (not res!1139856) (not e!1710898))))

(declare-fun lt!960235 () List!31414)

(declare-fun lt!960243 () List!31414)

(declare-fun lt!960239 () List!31414)

(declare-fun ++!7753 (List!31414 List!31414) List!31414)

(assert (=> b!2714289 (= res!1139856 (= lt!960239 (++!7753 lt!960235 lt!960243)))))

(assert (=> b!2714289 (= lt!960239 (list!11846 totalInput!328))))

(assert (=> b!2714289 (= lt!960243 (list!11846 input!603))))

(assert (=> b!2714289 (= lt!960235 (list!11846 treated!9))))

(declare-fun b!2714290 () Bool)

(declare-fun res!1139857 () Bool)

(assert (=> b!2714290 (=> (not res!1139857) (not e!1710897))))

(declare-fun lt!960241 () tuple2!30968)

(assert (=> b!2714290 (= res!1139857 (= (list!11846 (_2!18116 lt!960241)) (list!11846 (_2!18116 lt!960253))))))

(declare-fun b!2714291 () Bool)

(assert (=> b!2714291 (= e!1710895 e!1710897)))

(declare-fun res!1139865 () Bool)

(assert (=> b!2714291 (=> (not res!1139865) (not e!1710897))))

(declare-fun ++!7754 (BalanceConc!19222 BalanceConc!19222) BalanceConc!19222)

(assert (=> b!2714291 (= res!1139865 (= (list!11847 (_1!18116 lt!960241)) (list!11847 (++!7754 acc!331 (_1!18116 lt!960253)))))))

(assert (=> b!2714291 (= lt!960253 (lexRec!644 thiss!11556 rules!1182 input!603))))

(assert (=> b!2714291 (= lt!960241 (lexRec!644 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2714292 () Bool)

(declare-fun tp!857335 () Bool)

(assert (=> b!2714292 (= e!1710888 (and (inv!42486 (c!438433 input!603)) tp!857335))))

(declare-fun b!2714293 () Bool)

(declare-fun lt!960242 () tuple2!30968)

(declare-fun lt!960244 () Option!6178)

(assert (=> b!2714293 (= e!1710890 (= lt!960246 (tuple2!30969 (prepend!1112 (_1!18116 lt!960242) (_1!18117 (v!33005 lt!960244))) (_2!18116 lt!960242))))))

(assert (=> b!2714293 (= lt!960242 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960244))))))

(declare-fun b!2714294 () Bool)

(assert (=> b!2714294 (= e!1710884 (not e!1710886))))

(declare-fun res!1139863 () Bool)

(assert (=> b!2714294 (=> res!1139863 e!1710886)))

(declare-fun lt!960250 () List!31414)

(assert (=> b!2714294 (= res!1139863 (not (= lt!960239 (++!7753 (list!11846 lt!960240) lt!960250))))))

(assert (=> b!2714294 e!1710890))

(declare-fun c!438431 () Bool)

(assert (=> b!2714294 (= c!438431 (is-Some!6177 lt!960244))))

(assert (=> b!2714294 (= lt!960246 (lexRec!644 thiss!11556 rules!1182 lt!960240))))

(assert (=> b!2714294 (= lt!960244 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 lt!960240))))

(declare-fun lt!960252 () BalanceConc!19220)

(declare-fun ++!7755 (BalanceConc!19220 BalanceConc!19220) BalanceConc!19220)

(assert (=> b!2714294 (= lt!960240 (++!7755 treated!9 lt!960252))))

(declare-fun lt!960255 () List!31414)

(declare-datatypes ((tuple2!30972 0))(
  ( (tuple2!30973 (_1!18118 List!31415) (_2!18118 List!31414)) )
))
(declare-fun lexList!1215 (LexerInterface!4384 List!31416 List!31414) tuple2!30972)

(assert (=> b!2714294 (= (lexList!1215 thiss!11556 rules!1182 lt!960255) (tuple2!30973 lt!960248 Nil!31314))))

(declare-fun lt!960234 () List!31415)

(declare-datatypes ((Unit!45347 0))(
  ( (Unit!45348) )
))
(declare-fun lt!960256 () Unit!45347)

(declare-fun lemmaLexThenLexPrefix!423 (LexerInterface!4384 List!31416 List!31414 List!31414 List!31415 List!31415 List!31414) Unit!45347)

(assert (=> b!2714294 (= lt!960256 (lemmaLexThenLexPrefix!423 thiss!11556 rules!1182 lt!960255 lt!960250 lt!960248 lt!960234 (list!11846 (_2!18116 lt!960249))))))

(declare-fun append!803 (BalanceConc!19222 Token!9038) BalanceConc!19222)

(assert (=> b!2714294 (= lt!960248 (list!11847 (append!803 acc!331 (_1!18117 (v!33005 lt!960254)))))))

(declare-fun lt!960237 () List!31415)

(declare-fun ++!7756 (List!31415 List!31415) List!31415)

(assert (=> b!2714294 (= (++!7756 (++!7756 lt!960247 lt!960237) lt!960234) (++!7756 lt!960247 (++!7756 lt!960237 lt!960234)))))

(declare-fun lt!960233 () Unit!45347)

(declare-fun lemmaConcatAssociativity!1595 (List!31415 List!31415 List!31415) Unit!45347)

(assert (=> b!2714294 (= lt!960233 (lemmaConcatAssociativity!1595 lt!960247 lt!960237 lt!960234))))

(assert (=> b!2714294 (= lt!960234 (list!11847 (_1!18116 lt!960249)))))

(assert (=> b!2714294 (= lt!960237 (Cons!31315 (_1!18117 (v!33005 lt!960254)) Nil!31315))))

(assert (=> b!2714294 e!1710893))

(declare-fun res!1139861 () Bool)

(assert (=> b!2714294 (=> (not res!1139861) (not e!1710893))))

(declare-fun lt!960251 () List!31414)

(assert (=> b!2714294 (= res!1139861 (= (++!7753 lt!960255 lt!960250) (++!7753 lt!960235 (++!7753 lt!960251 lt!960250))))))

(assert (=> b!2714294 (= lt!960255 (++!7753 lt!960235 lt!960251))))

(declare-fun lt!960236 () Unit!45347)

(declare-fun lemmaConcatAssociativity!1596 (List!31414 List!31414 List!31414) Unit!45347)

(assert (=> b!2714294 (= lt!960236 (lemmaConcatAssociativity!1596 lt!960235 lt!960251 lt!960250))))

(assert (=> b!2714294 (= lt!960250 (list!11846 (_2!18117 (v!33005 lt!960254))))))

(assert (=> b!2714294 (= lt!960251 (list!11846 lt!960252))))

(declare-fun charsOf!3011 (Token!9038) BalanceConc!19220)

(assert (=> b!2714294 (= lt!960252 (charsOf!3011 (_1!18117 (v!33005 lt!960254))))))

(assert (=> b!2714294 (= lt!960249 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960254))))))

(assert (= (and start!263354 res!1139864) b!2714282))

(assert (= (and b!2714282 res!1139854) b!2714275))

(assert (= (and b!2714275 res!1139860) b!2714289))

(assert (= (and b!2714289 res!1139856) b!2714288))

(assert (= (and b!2714288 res!1139855) b!2714281))

(assert (= (and b!2714281 res!1139859) b!2714291))

(assert (= (and b!2714291 res!1139865) b!2714290))

(assert (= (and b!2714290 res!1139857) b!2714286))

(assert (= (and b!2714286 res!1139862) b!2714294))

(assert (= (and b!2714294 res!1139861) b!2714285))

(assert (= (and b!2714294 c!438431) b!2714293))

(assert (= (and b!2714294 (not c!438431)) b!2714276))

(assert (= (and b!2714294 (not res!1139863)) b!2714283))

(assert (= (and b!2714283 (not res!1139858)) b!2714274))

(assert (= start!263354 b!2714277))

(assert (= start!263354 b!2714292))

(assert (= b!2714284 b!2714278))

(assert (= b!2714279 b!2714284))

(assert (= (and start!263354 (is-Cons!31316 rules!1182)) b!2714279))

(assert (= start!263354 b!2714287))

(assert (= start!263354 b!2714280))

(declare-fun m!3110979 () Bool)

(assert (=> b!2714275 m!3110979))

(declare-fun m!3110981 () Bool)

(assert (=> start!263354 m!3110981))

(declare-fun m!3110983 () Bool)

(assert (=> start!263354 m!3110983))

(declare-fun m!3110985 () Bool)

(assert (=> start!263354 m!3110985))

(declare-fun m!3110987 () Bool)

(assert (=> start!263354 m!3110987))

(declare-fun m!3110989 () Bool)

(assert (=> b!2714283 m!3110989))

(declare-fun m!3110991 () Bool)

(assert (=> b!2714274 m!3110991))

(assert (=> b!2714274 m!3110991))

(declare-fun m!3110993 () Bool)

(assert (=> b!2714274 m!3110993))

(declare-fun m!3110995 () Bool)

(assert (=> b!2714293 m!3110995))

(declare-fun m!3110997 () Bool)

(assert (=> b!2714293 m!3110997))

(declare-fun m!3110999 () Bool)

(assert (=> b!2714290 m!3110999))

(declare-fun m!3111001 () Bool)

(assert (=> b!2714290 m!3111001))

(declare-fun m!3111003 () Bool)

(assert (=> b!2714285 m!3111003))

(declare-fun m!3111005 () Bool)

(assert (=> b!2714286 m!3111005))

(declare-fun m!3111007 () Bool)

(assert (=> b!2714289 m!3111007))

(declare-fun m!3111009 () Bool)

(assert (=> b!2714289 m!3111009))

(declare-fun m!3111011 () Bool)

(assert (=> b!2714289 m!3111011))

(declare-fun m!3111013 () Bool)

(assert (=> b!2714289 m!3111013))

(declare-fun m!3111015 () Bool)

(assert (=> b!2714281 m!3111015))

(assert (=> b!2714281 m!3111015))

(declare-fun m!3111017 () Bool)

(assert (=> b!2714281 m!3111017))

(declare-fun m!3111019 () Bool)

(assert (=> b!2714277 m!3111019))

(declare-fun m!3111021 () Bool)

(assert (=> b!2714282 m!3111021))

(declare-fun m!3111023 () Bool)

(assert (=> b!2714292 m!3111023))

(declare-fun m!3111025 () Bool)

(assert (=> b!2714284 m!3111025))

(declare-fun m!3111027 () Bool)

(assert (=> b!2714284 m!3111027))

(declare-fun m!3111029 () Bool)

(assert (=> b!2714291 m!3111029))

(declare-fun m!3111031 () Bool)

(assert (=> b!2714291 m!3111031))

(declare-fun m!3111033 () Bool)

(assert (=> b!2714291 m!3111033))

(assert (=> b!2714291 m!3111031))

(declare-fun m!3111035 () Bool)

(assert (=> b!2714291 m!3111035))

(declare-fun m!3111037 () Bool)

(assert (=> b!2714291 m!3111037))

(declare-fun m!3111039 () Bool)

(assert (=> b!2714294 m!3111039))

(declare-fun m!3111041 () Bool)

(assert (=> b!2714294 m!3111041))

(declare-fun m!3111043 () Bool)

(assert (=> b!2714294 m!3111043))

(declare-fun m!3111045 () Bool)

(assert (=> b!2714294 m!3111045))

(declare-fun m!3111047 () Bool)

(assert (=> b!2714294 m!3111047))

(declare-fun m!3111049 () Bool)

(assert (=> b!2714294 m!3111049))

(declare-fun m!3111051 () Bool)

(assert (=> b!2714294 m!3111051))

(declare-fun m!3111053 () Bool)

(assert (=> b!2714294 m!3111053))

(assert (=> b!2714294 m!3111045))

(declare-fun m!3111055 () Bool)

(assert (=> b!2714294 m!3111055))

(declare-fun m!3111057 () Bool)

(assert (=> b!2714294 m!3111057))

(declare-fun m!3111059 () Bool)

(assert (=> b!2714294 m!3111059))

(declare-fun m!3111061 () Bool)

(assert (=> b!2714294 m!3111061))

(declare-fun m!3111063 () Bool)

(assert (=> b!2714294 m!3111063))

(declare-fun m!3111065 () Bool)

(assert (=> b!2714294 m!3111065))

(declare-fun m!3111067 () Bool)

(assert (=> b!2714294 m!3111067))

(assert (=> b!2714294 m!3111043))

(declare-fun m!3111069 () Bool)

(assert (=> b!2714294 m!3111069))

(declare-fun m!3111071 () Bool)

(assert (=> b!2714294 m!3111071))

(declare-fun m!3111073 () Bool)

(assert (=> b!2714294 m!3111073))

(assert (=> b!2714294 m!3111061))

(assert (=> b!2714294 m!3111053))

(declare-fun m!3111075 () Bool)

(assert (=> b!2714294 m!3111075))

(declare-fun m!3111077 () Bool)

(assert (=> b!2714294 m!3111077))

(declare-fun m!3111079 () Bool)

(assert (=> b!2714294 m!3111079))

(declare-fun m!3111081 () Bool)

(assert (=> b!2714294 m!3111081))

(declare-fun m!3111083 () Bool)

(assert (=> b!2714294 m!3111083))

(assert (=> b!2714294 m!3111079))

(declare-fun m!3111085 () Bool)

(assert (=> b!2714294 m!3111085))

(assert (=> b!2714294 m!3111083))

(declare-fun m!3111087 () Bool)

(assert (=> b!2714294 m!3111087))

(declare-fun m!3111089 () Bool)

(assert (=> b!2714280 m!3111089))

(declare-fun m!3111091 () Bool)

(assert (=> b!2714287 m!3111091))

(declare-fun m!3111093 () Bool)

(assert (=> b!2714288 m!3111093))

(declare-fun m!3111095 () Bool)

(assert (=> b!2714288 m!3111095))

(declare-fun m!3111097 () Bool)

(assert (=> b!2714288 m!3111097))

(push 1)

(assert (not b!2714293))

(assert (not b!2714282))

(assert (not b!2714292))

(assert (not b!2714275))

(assert (not b!2714290))

(assert (not b!2714284))

(assert (not b!2714291))

(assert (not b!2714274))

(assert (not b!2714279))

(assert b_and!200263)

(assert (not b_next!77221))

(assert (not b!2714289))

(assert (not b!2714281))

(assert (not b!2714288))

(assert (not b!2714283))

(assert (not b!2714280))

(assert (not start!263354))

(assert (not b!2714285))

(assert (not b!2714286))

(assert (not b!2714287))

(assert (not b_next!77223))

(assert (not b!2714294))

(assert b_and!200261)

(assert (not b!2714277))

(check-sat)

(pop 1)

(push 1)

(assert b_and!200263)

(assert b_and!200261)

(assert (not b_next!77223))

(assert (not b_next!77221))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2714368 () Bool)

(declare-fun res!1139909 () Bool)

(declare-fun e!1710952 () Bool)

(assert (=> b!2714368 (=> (not res!1139909) (not e!1710952))))

(declare-fun lt!960331 () List!31415)

(declare-fun size!24157 (List!31415) Int)

(assert (=> b!2714368 (= res!1139909 (= (size!24157 lt!960331) (+ (size!24157 lt!960247) (size!24157 (++!7756 lt!960237 lt!960234)))))))

(declare-fun d!781543 () Bool)

(assert (=> d!781543 e!1710952))

(declare-fun res!1139908 () Bool)

(assert (=> d!781543 (=> (not res!1139908) (not e!1710952))))

(declare-fun content!4432 (List!31415) (Set Token!9038))

(assert (=> d!781543 (= res!1139908 (= (content!4432 lt!960331) (set.union (content!4432 lt!960247) (content!4432 (++!7756 lt!960237 lt!960234)))))))

(declare-fun e!1710953 () List!31415)

(assert (=> d!781543 (= lt!960331 e!1710953)))

(declare-fun c!438444 () Bool)

(assert (=> d!781543 (= c!438444 (is-Nil!31315 lt!960247))))

(assert (=> d!781543 (= (++!7756 lt!960247 (++!7756 lt!960237 lt!960234)) lt!960331)))

(declare-fun b!2714366 () Bool)

(assert (=> b!2714366 (= e!1710953 (++!7756 lt!960237 lt!960234))))

(declare-fun b!2714367 () Bool)

(assert (=> b!2714367 (= e!1710953 (Cons!31315 (h!36735 lt!960247) (++!7756 (t!226225 lt!960247) (++!7756 lt!960237 lt!960234))))))

(declare-fun b!2714369 () Bool)

(assert (=> b!2714369 (= e!1710952 (or (not (= (++!7756 lt!960237 lt!960234) Nil!31315)) (= lt!960331 lt!960247)))))

(assert (= (and d!781543 c!438444) b!2714366))

(assert (= (and d!781543 (not c!438444)) b!2714367))

(assert (= (and d!781543 res!1139908) b!2714368))

(assert (= (and b!2714368 res!1139909) b!2714369))

(declare-fun m!3111219 () Bool)

(assert (=> b!2714368 m!3111219))

(declare-fun m!3111221 () Bool)

(assert (=> b!2714368 m!3111221))

(assert (=> b!2714368 m!3111061))

(declare-fun m!3111223 () Bool)

(assert (=> b!2714368 m!3111223))

(declare-fun m!3111225 () Bool)

(assert (=> d!781543 m!3111225))

(declare-fun m!3111227 () Bool)

(assert (=> d!781543 m!3111227))

(assert (=> d!781543 m!3111061))

(declare-fun m!3111229 () Bool)

(assert (=> d!781543 m!3111229))

(assert (=> b!2714367 m!3111061))

(declare-fun m!3111231 () Bool)

(assert (=> b!2714367 m!3111231))

(assert (=> b!2714294 d!781543))

(declare-fun b!2714378 () Bool)

(declare-fun e!1710958 () List!31414)

(assert (=> b!2714378 (= e!1710958 lt!960250)))

(declare-fun b!2714380 () Bool)

(declare-fun res!1139914 () Bool)

(declare-fun e!1710959 () Bool)

(assert (=> b!2714380 (=> (not res!1139914) (not e!1710959))))

(declare-fun lt!960334 () List!31414)

(declare-fun size!24158 (List!31414) Int)

(assert (=> b!2714380 (= res!1139914 (= (size!24158 lt!960334) (+ (size!24158 lt!960251) (size!24158 lt!960250))))))

(declare-fun b!2714381 () Bool)

(assert (=> b!2714381 (= e!1710959 (or (not (= lt!960250 Nil!31314)) (= lt!960334 lt!960251)))))

(declare-fun d!781545 () Bool)

(assert (=> d!781545 e!1710959))

(declare-fun res!1139915 () Bool)

(assert (=> d!781545 (=> (not res!1139915) (not e!1710959))))

(declare-fun content!4433 (List!31414) (Set C!16038))

(assert (=> d!781545 (= res!1139915 (= (content!4433 lt!960334) (set.union (content!4433 lt!960251) (content!4433 lt!960250))))))

(assert (=> d!781545 (= lt!960334 e!1710958)))

(declare-fun c!438447 () Bool)

(assert (=> d!781545 (= c!438447 (is-Nil!31314 lt!960251))))

(assert (=> d!781545 (= (++!7753 lt!960251 lt!960250) lt!960334)))

(declare-fun b!2714379 () Bool)

(assert (=> b!2714379 (= e!1710958 (Cons!31314 (h!36734 lt!960251) (++!7753 (t!226224 lt!960251) lt!960250)))))

(assert (= (and d!781545 c!438447) b!2714378))

(assert (= (and d!781545 (not c!438447)) b!2714379))

(assert (= (and d!781545 res!1139915) b!2714380))

(assert (= (and b!2714380 res!1139914) b!2714381))

(declare-fun m!3111233 () Bool)

(assert (=> b!2714380 m!3111233))

(declare-fun m!3111235 () Bool)

(assert (=> b!2714380 m!3111235))

(declare-fun m!3111237 () Bool)

(assert (=> b!2714380 m!3111237))

(declare-fun m!3111239 () Bool)

(assert (=> d!781545 m!3111239))

(declare-fun m!3111241 () Bool)

(assert (=> d!781545 m!3111241))

(declare-fun m!3111243 () Bool)

(assert (=> d!781545 m!3111243))

(declare-fun m!3111245 () Bool)

(assert (=> b!2714379 m!3111245))

(assert (=> b!2714294 d!781545))

(declare-fun b!2714384 () Bool)

(declare-fun res!1139917 () Bool)

(declare-fun e!1710960 () Bool)

(assert (=> b!2714384 (=> (not res!1139917) (not e!1710960))))

(declare-fun lt!960335 () List!31415)

(assert (=> b!2714384 (= res!1139917 (= (size!24157 lt!960335) (+ (size!24157 lt!960237) (size!24157 lt!960234))))))

(declare-fun d!781547 () Bool)

(assert (=> d!781547 e!1710960))

(declare-fun res!1139916 () Bool)

(assert (=> d!781547 (=> (not res!1139916) (not e!1710960))))

(assert (=> d!781547 (= res!1139916 (= (content!4432 lt!960335) (set.union (content!4432 lt!960237) (content!4432 lt!960234))))))

(declare-fun e!1710961 () List!31415)

(assert (=> d!781547 (= lt!960335 e!1710961)))

(declare-fun c!438448 () Bool)

(assert (=> d!781547 (= c!438448 (is-Nil!31315 lt!960237))))

(assert (=> d!781547 (= (++!7756 lt!960237 lt!960234) lt!960335)))

(declare-fun b!2714382 () Bool)

(assert (=> b!2714382 (= e!1710961 lt!960234)))

(declare-fun b!2714383 () Bool)

(assert (=> b!2714383 (= e!1710961 (Cons!31315 (h!36735 lt!960237) (++!7756 (t!226225 lt!960237) lt!960234)))))

(declare-fun b!2714385 () Bool)

(assert (=> b!2714385 (= e!1710960 (or (not (= lt!960234 Nil!31315)) (= lt!960335 lt!960237)))))

(assert (= (and d!781547 c!438448) b!2714382))

(assert (= (and d!781547 (not c!438448)) b!2714383))

(assert (= (and d!781547 res!1139916) b!2714384))

(assert (= (and b!2714384 res!1139917) b!2714385))

(declare-fun m!3111247 () Bool)

(assert (=> b!2714384 m!3111247))

(declare-fun m!3111249 () Bool)

(assert (=> b!2714384 m!3111249))

(declare-fun m!3111251 () Bool)

(assert (=> b!2714384 m!3111251))

(declare-fun m!3111253 () Bool)

(assert (=> d!781547 m!3111253))

(declare-fun m!3111255 () Bool)

(assert (=> d!781547 m!3111255))

(declare-fun m!3111257 () Bool)

(assert (=> d!781547 m!3111257))

(declare-fun m!3111259 () Bool)

(assert (=> b!2714383 m!3111259))

(assert (=> b!2714294 d!781547))

(declare-fun b!2714386 () Bool)

(declare-fun e!1710962 () List!31414)

(assert (=> b!2714386 (= e!1710962 (++!7753 lt!960251 lt!960250))))

(declare-fun b!2714388 () Bool)

(declare-fun res!1139918 () Bool)

(declare-fun e!1710963 () Bool)

(assert (=> b!2714388 (=> (not res!1139918) (not e!1710963))))

(declare-fun lt!960336 () List!31414)

(assert (=> b!2714388 (= res!1139918 (= (size!24158 lt!960336) (+ (size!24158 lt!960235) (size!24158 (++!7753 lt!960251 lt!960250)))))))

(declare-fun b!2714389 () Bool)

(assert (=> b!2714389 (= e!1710963 (or (not (= (++!7753 lt!960251 lt!960250) Nil!31314)) (= lt!960336 lt!960235)))))

(declare-fun d!781549 () Bool)

(assert (=> d!781549 e!1710963))

(declare-fun res!1139919 () Bool)

(assert (=> d!781549 (=> (not res!1139919) (not e!1710963))))

(assert (=> d!781549 (= res!1139919 (= (content!4433 lt!960336) (set.union (content!4433 lt!960235) (content!4433 (++!7753 lt!960251 lt!960250)))))))

(assert (=> d!781549 (= lt!960336 e!1710962)))

(declare-fun c!438449 () Bool)

(assert (=> d!781549 (= c!438449 (is-Nil!31314 lt!960235))))

(assert (=> d!781549 (= (++!7753 lt!960235 (++!7753 lt!960251 lt!960250)) lt!960336)))

(declare-fun b!2714387 () Bool)

(assert (=> b!2714387 (= e!1710962 (Cons!31314 (h!36734 lt!960235) (++!7753 (t!226224 lt!960235) (++!7753 lt!960251 lt!960250))))))

(assert (= (and d!781549 c!438449) b!2714386))

(assert (= (and d!781549 (not c!438449)) b!2714387))

(assert (= (and d!781549 res!1139919) b!2714388))

(assert (= (and b!2714388 res!1139918) b!2714389))

(declare-fun m!3111261 () Bool)

(assert (=> b!2714388 m!3111261))

(declare-fun m!3111263 () Bool)

(assert (=> b!2714388 m!3111263))

(assert (=> b!2714388 m!3111045))

(declare-fun m!3111265 () Bool)

(assert (=> b!2714388 m!3111265))

(declare-fun m!3111267 () Bool)

(assert (=> d!781549 m!3111267))

(declare-fun m!3111269 () Bool)

(assert (=> d!781549 m!3111269))

(assert (=> d!781549 m!3111045))

(declare-fun m!3111271 () Bool)

(assert (=> d!781549 m!3111271))

(assert (=> b!2714387 m!3111045))

(declare-fun m!3111273 () Bool)

(assert (=> b!2714387 m!3111273))

(assert (=> b!2714294 d!781549))

(declare-fun d!781551 () Bool)

(assert (=> d!781551 (= (lexList!1215 thiss!11556 rules!1182 lt!960255) (tuple2!30973 lt!960248 Nil!31314))))

(declare-fun lt!960339 () Unit!45347)

(declare-fun choose!15961 (LexerInterface!4384 List!31416 List!31414 List!31414 List!31415 List!31415 List!31414) Unit!45347)

(assert (=> d!781551 (= lt!960339 (choose!15961 thiss!11556 rules!1182 lt!960255 lt!960250 lt!960248 lt!960234 (list!11846 (_2!18116 lt!960249))))))

(assert (=> d!781551 (not (isEmpty!17848 rules!1182))))

(assert (=> d!781551 (= (lemmaLexThenLexPrefix!423 thiss!11556 rules!1182 lt!960255 lt!960250 lt!960248 lt!960234 (list!11846 (_2!18116 lt!960249))) lt!960339)))

(declare-fun bs!488000 () Bool)

(assert (= bs!488000 d!781551))

(assert (=> bs!488000 m!3111041))

(assert (=> bs!488000 m!3111079))

(declare-fun m!3111275 () Bool)

(assert (=> bs!488000 m!3111275))

(assert (=> bs!488000 m!3111021))

(assert (=> b!2714294 d!781551))

(declare-fun b!2714425 () Bool)

(declare-fun e!1710990 () tuple2!30968)

(assert (=> b!2714425 (= e!1710990 (tuple2!30969 (BalanceConc!19223 Empty!9804) (_2!18117 (v!33005 lt!960254))))))

(declare-fun e!1710988 () Bool)

(declare-fun b!2714426 () Bool)

(declare-fun lt!960347 () tuple2!30968)

(assert (=> b!2714426 (= e!1710988 (= (list!11846 (_2!18116 lt!960347)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 (_2!18117 (v!33005 lt!960254)))))))))

(declare-fun b!2714427 () Bool)

(declare-fun e!1710987 () Bool)

(assert (=> b!2714427 (= e!1710987 (= (list!11846 (_2!18116 lt!960347)) (list!11846 (_2!18117 (v!33005 lt!960254)))))))

(declare-fun b!2714428 () Bool)

(declare-fun e!1710989 () Bool)

(declare-fun isEmpty!17851 (BalanceConc!19222) Bool)

(assert (=> b!2714428 (= e!1710989 (not (isEmpty!17851 (_1!18116 lt!960347))))))

(declare-fun b!2714429 () Bool)

(assert (=> b!2714429 (= e!1710987 e!1710989)))

(declare-fun res!1139938 () Bool)

(declare-fun size!24159 (BalanceConc!19220) Int)

(assert (=> b!2714429 (= res!1139938 (< (size!24159 (_2!18116 lt!960347)) (size!24159 (_2!18117 (v!33005 lt!960254)))))))

(assert (=> b!2714429 (=> (not res!1139938) (not e!1710989))))

(declare-fun d!781553 () Bool)

(assert (=> d!781553 e!1710988))

(declare-fun res!1139939 () Bool)

(assert (=> d!781553 (=> (not res!1139939) (not e!1710988))))

(assert (=> d!781553 (= res!1139939 e!1710987)))

(declare-fun c!438461 () Bool)

(declare-fun size!24160 (BalanceConc!19222) Int)

(assert (=> d!781553 (= c!438461 (> (size!24160 (_1!18116 lt!960347)) 0))))

(assert (=> d!781553 (= lt!960347 e!1710990)))

(declare-fun c!438460 () Bool)

(declare-fun lt!960346 () Option!6178)

(assert (=> d!781553 (= c!438460 (is-Some!6177 lt!960346))))

(assert (=> d!781553 (= lt!960346 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960254))))))

(assert (=> d!781553 (= (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960254))) lt!960347)))

(declare-fun b!2714430 () Bool)

(declare-fun res!1139937 () Bool)

(assert (=> b!2714430 (=> (not res!1139937) (not e!1710988))))

(assert (=> b!2714430 (= res!1139937 (= (list!11847 (_1!18116 lt!960347)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 (_2!18117 (v!33005 lt!960254)))))))))

(declare-fun b!2714431 () Bool)

(declare-fun lt!960348 () tuple2!30968)

(assert (=> b!2714431 (= e!1710990 (tuple2!30969 (prepend!1112 (_1!18116 lt!960348) (_1!18117 (v!33005 lt!960346))) (_2!18116 lt!960348)))))

(assert (=> b!2714431 (= lt!960348 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960346))))))

(assert (= (and d!781553 c!438460) b!2714431))

(assert (= (and d!781553 (not c!438460)) b!2714425))

(assert (= (and d!781553 c!438461) b!2714429))

(assert (= (and d!781553 (not c!438461)) b!2714427))

(assert (= (and b!2714429 res!1139938) b!2714428))

(assert (= (and d!781553 res!1139939) b!2714430))

(assert (= (and b!2714430 res!1139937) b!2714426))

(declare-fun m!3111289 () Bool)

(assert (=> b!2714429 m!3111289))

(declare-fun m!3111291 () Bool)

(assert (=> b!2714429 m!3111291))

(declare-fun m!3111293 () Bool)

(assert (=> b!2714431 m!3111293))

(declare-fun m!3111295 () Bool)

(assert (=> b!2714431 m!3111295))

(declare-fun m!3111297 () Bool)

(assert (=> b!2714428 m!3111297))

(declare-fun m!3111299 () Bool)

(assert (=> d!781553 m!3111299))

(declare-fun m!3111301 () Bool)

(assert (=> d!781553 m!3111301))

(declare-fun m!3111303 () Bool)

(assert (=> b!2714427 m!3111303))

(assert (=> b!2714427 m!3111059))

(assert (=> b!2714426 m!3111303))

(assert (=> b!2714426 m!3111059))

(assert (=> b!2714426 m!3111059))

(declare-fun m!3111305 () Bool)

(assert (=> b!2714426 m!3111305))

(declare-fun m!3111307 () Bool)

(assert (=> b!2714430 m!3111307))

(assert (=> b!2714430 m!3111059))

(assert (=> b!2714430 m!3111059))

(assert (=> b!2714430 m!3111305))

(assert (=> b!2714294 d!781553))

(declare-fun b!2714434 () Bool)

(declare-fun res!1139941 () Bool)

(declare-fun e!1710991 () Bool)

(assert (=> b!2714434 (=> (not res!1139941) (not e!1710991))))

(declare-fun lt!960349 () List!31415)

(assert (=> b!2714434 (= res!1139941 (= (size!24157 lt!960349) (+ (size!24157 (++!7756 lt!960247 lt!960237)) (size!24157 lt!960234))))))

(declare-fun d!781565 () Bool)

(assert (=> d!781565 e!1710991))

(declare-fun res!1139940 () Bool)

(assert (=> d!781565 (=> (not res!1139940) (not e!1710991))))

(assert (=> d!781565 (= res!1139940 (= (content!4432 lt!960349) (set.union (content!4432 (++!7756 lt!960247 lt!960237)) (content!4432 lt!960234))))))

(declare-fun e!1710992 () List!31415)

(assert (=> d!781565 (= lt!960349 e!1710992)))

(declare-fun c!438462 () Bool)

(assert (=> d!781565 (= c!438462 (is-Nil!31315 (++!7756 lt!960247 lt!960237)))))

(assert (=> d!781565 (= (++!7756 (++!7756 lt!960247 lt!960237) lt!960234) lt!960349)))

(declare-fun b!2714432 () Bool)

(assert (=> b!2714432 (= e!1710992 lt!960234)))

(declare-fun b!2714433 () Bool)

(assert (=> b!2714433 (= e!1710992 (Cons!31315 (h!36735 (++!7756 lt!960247 lt!960237)) (++!7756 (t!226225 (++!7756 lt!960247 lt!960237)) lt!960234)))))

(declare-fun b!2714435 () Bool)

(assert (=> b!2714435 (= e!1710991 (or (not (= lt!960234 Nil!31315)) (= lt!960349 (++!7756 lt!960247 lt!960237))))))

(assert (= (and d!781565 c!438462) b!2714432))

(assert (= (and d!781565 (not c!438462)) b!2714433))

(assert (= (and d!781565 res!1139940) b!2714434))

(assert (= (and b!2714434 res!1139941) b!2714435))

(declare-fun m!3111309 () Bool)

(assert (=> b!2714434 m!3111309))

(assert (=> b!2714434 m!3111043))

(declare-fun m!3111311 () Bool)

(assert (=> b!2714434 m!3111311))

(assert (=> b!2714434 m!3111251))

(declare-fun m!3111313 () Bool)

(assert (=> d!781565 m!3111313))

(assert (=> d!781565 m!3111043))

(declare-fun m!3111315 () Bool)

(assert (=> d!781565 m!3111315))

(assert (=> d!781565 m!3111257))

(declare-fun m!3111317 () Bool)

(assert (=> b!2714433 m!3111317))

(assert (=> b!2714294 d!781565))

(declare-fun b!2714436 () Bool)

(declare-fun e!1710993 () List!31414)

(assert (=> b!2714436 (= e!1710993 lt!960250)))

(declare-fun b!2714438 () Bool)

(declare-fun res!1139942 () Bool)

(declare-fun e!1710994 () Bool)

(assert (=> b!2714438 (=> (not res!1139942) (not e!1710994))))

(declare-fun lt!960350 () List!31414)

(assert (=> b!2714438 (= res!1139942 (= (size!24158 lt!960350) (+ (size!24158 (list!11846 lt!960240)) (size!24158 lt!960250))))))

(declare-fun b!2714439 () Bool)

(assert (=> b!2714439 (= e!1710994 (or (not (= lt!960250 Nil!31314)) (= lt!960350 (list!11846 lt!960240))))))

(declare-fun d!781567 () Bool)

(assert (=> d!781567 e!1710994))

(declare-fun res!1139943 () Bool)

(assert (=> d!781567 (=> (not res!1139943) (not e!1710994))))

(assert (=> d!781567 (= res!1139943 (= (content!4433 lt!960350) (set.union (content!4433 (list!11846 lt!960240)) (content!4433 lt!960250))))))

(assert (=> d!781567 (= lt!960350 e!1710993)))

(declare-fun c!438463 () Bool)

(assert (=> d!781567 (= c!438463 (is-Nil!31314 (list!11846 lt!960240)))))

(assert (=> d!781567 (= (++!7753 (list!11846 lt!960240) lt!960250) lt!960350)))

(declare-fun b!2714437 () Bool)

(assert (=> b!2714437 (= e!1710993 (Cons!31314 (h!36734 (list!11846 lt!960240)) (++!7753 (t!226224 (list!11846 lt!960240)) lt!960250)))))

(assert (= (and d!781567 c!438463) b!2714436))

(assert (= (and d!781567 (not c!438463)) b!2714437))

(assert (= (and d!781567 res!1139943) b!2714438))

(assert (= (and b!2714438 res!1139942) b!2714439))

(declare-fun m!3111319 () Bool)

(assert (=> b!2714438 m!3111319))

(assert (=> b!2714438 m!3111053))

(declare-fun m!3111321 () Bool)

(assert (=> b!2714438 m!3111321))

(assert (=> b!2714438 m!3111237))

(declare-fun m!3111323 () Bool)

(assert (=> d!781567 m!3111323))

(assert (=> d!781567 m!3111053))

(declare-fun m!3111325 () Bool)

(assert (=> d!781567 m!3111325))

(assert (=> d!781567 m!3111243))

(declare-fun m!3111327 () Bool)

(assert (=> b!2714437 m!3111327))

(assert (=> b!2714294 d!781567))

(declare-fun b!2714440 () Bool)

(declare-fun e!1710998 () tuple2!30968)

(assert (=> b!2714440 (= e!1710998 (tuple2!30969 (BalanceConc!19223 Empty!9804) lt!960240))))

(declare-fun b!2714441 () Bool)

(declare-fun lt!960352 () tuple2!30968)

(declare-fun e!1710996 () Bool)

(assert (=> b!2714441 (= e!1710996 (= (list!11846 (_2!18116 lt!960352)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 lt!960240)))))))

(declare-fun b!2714442 () Bool)

(declare-fun e!1710995 () Bool)

(assert (=> b!2714442 (= e!1710995 (= (list!11846 (_2!18116 lt!960352)) (list!11846 lt!960240)))))

(declare-fun b!2714443 () Bool)

(declare-fun e!1710997 () Bool)

(assert (=> b!2714443 (= e!1710997 (not (isEmpty!17851 (_1!18116 lt!960352))))))

(declare-fun b!2714444 () Bool)

(assert (=> b!2714444 (= e!1710995 e!1710997)))

(declare-fun res!1139945 () Bool)

(assert (=> b!2714444 (= res!1139945 (< (size!24159 (_2!18116 lt!960352)) (size!24159 lt!960240)))))

(assert (=> b!2714444 (=> (not res!1139945) (not e!1710997))))

(declare-fun d!781569 () Bool)

(assert (=> d!781569 e!1710996))

(declare-fun res!1139946 () Bool)

(assert (=> d!781569 (=> (not res!1139946) (not e!1710996))))

(assert (=> d!781569 (= res!1139946 e!1710995)))

(declare-fun c!438465 () Bool)

(assert (=> d!781569 (= c!438465 (> (size!24160 (_1!18116 lt!960352)) 0))))

(assert (=> d!781569 (= lt!960352 e!1710998)))

(declare-fun c!438464 () Bool)

(declare-fun lt!960351 () Option!6178)

(assert (=> d!781569 (= c!438464 (is-Some!6177 lt!960351))))

(assert (=> d!781569 (= lt!960351 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 lt!960240))))

(assert (=> d!781569 (= (lexRec!644 thiss!11556 rules!1182 lt!960240) lt!960352)))

(declare-fun b!2714445 () Bool)

(declare-fun res!1139944 () Bool)

(assert (=> b!2714445 (=> (not res!1139944) (not e!1710996))))

(assert (=> b!2714445 (= res!1139944 (= (list!11847 (_1!18116 lt!960352)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 lt!960240)))))))

(declare-fun b!2714446 () Bool)

(declare-fun lt!960353 () tuple2!30968)

(assert (=> b!2714446 (= e!1710998 (tuple2!30969 (prepend!1112 (_1!18116 lt!960353) (_1!18117 (v!33005 lt!960351))) (_2!18116 lt!960353)))))

(assert (=> b!2714446 (= lt!960353 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960351))))))

(assert (= (and d!781569 c!438464) b!2714446))

(assert (= (and d!781569 (not c!438464)) b!2714440))

(assert (= (and d!781569 c!438465) b!2714444))

(assert (= (and d!781569 (not c!438465)) b!2714442))

(assert (= (and b!2714444 res!1139945) b!2714443))

(assert (= (and d!781569 res!1139946) b!2714445))

(assert (= (and b!2714445 res!1139944) b!2714441))

(declare-fun m!3111329 () Bool)

(assert (=> b!2714444 m!3111329))

(declare-fun m!3111331 () Bool)

(assert (=> b!2714444 m!3111331))

(declare-fun m!3111333 () Bool)

(assert (=> b!2714446 m!3111333))

(declare-fun m!3111335 () Bool)

(assert (=> b!2714446 m!3111335))

(declare-fun m!3111337 () Bool)

(assert (=> b!2714443 m!3111337))

(declare-fun m!3111339 () Bool)

(assert (=> d!781569 m!3111339))

(assert (=> d!781569 m!3111067))

(declare-fun m!3111341 () Bool)

(assert (=> b!2714442 m!3111341))

(assert (=> b!2714442 m!3111053))

(assert (=> b!2714441 m!3111341))

(assert (=> b!2714441 m!3111053))

(assert (=> b!2714441 m!3111053))

(declare-fun m!3111343 () Bool)

(assert (=> b!2714441 m!3111343))

(declare-fun m!3111345 () Bool)

(assert (=> b!2714445 m!3111345))

(assert (=> b!2714445 m!3111053))

(assert (=> b!2714445 m!3111053))

(assert (=> b!2714445 m!3111343))

(assert (=> b!2714294 d!781569))

(declare-fun d!781571 () Bool)

(declare-fun list!11850 (Conc!9803) List!31414)

(assert (=> d!781571 (= (list!11846 lt!960252) (list!11850 (c!438433 lt!960252)))))

(declare-fun bs!488001 () Bool)

(assert (= bs!488001 d!781571))

(declare-fun m!3111347 () Bool)

(assert (=> bs!488001 m!3111347))

(assert (=> b!2714294 d!781571))

(declare-fun b!2714449 () Bool)

(declare-fun res!1139948 () Bool)

(declare-fun e!1710999 () Bool)

(assert (=> b!2714449 (=> (not res!1139948) (not e!1710999))))

(declare-fun lt!960354 () List!31415)

(assert (=> b!2714449 (= res!1139948 (= (size!24157 lt!960354) (+ (size!24157 lt!960247) (size!24157 lt!960237))))))

(declare-fun d!781573 () Bool)

(assert (=> d!781573 e!1710999))

(declare-fun res!1139947 () Bool)

(assert (=> d!781573 (=> (not res!1139947) (not e!1710999))))

(assert (=> d!781573 (= res!1139947 (= (content!4432 lt!960354) (set.union (content!4432 lt!960247) (content!4432 lt!960237))))))

(declare-fun e!1711000 () List!31415)

(assert (=> d!781573 (= lt!960354 e!1711000)))

(declare-fun c!438466 () Bool)

(assert (=> d!781573 (= c!438466 (is-Nil!31315 lt!960247))))

(assert (=> d!781573 (= (++!7756 lt!960247 lt!960237) lt!960354)))

(declare-fun b!2714447 () Bool)

(assert (=> b!2714447 (= e!1711000 lt!960237)))

(declare-fun b!2714448 () Bool)

(assert (=> b!2714448 (= e!1711000 (Cons!31315 (h!36735 lt!960247) (++!7756 (t!226225 lt!960247) lt!960237)))))

(declare-fun b!2714450 () Bool)

(assert (=> b!2714450 (= e!1710999 (or (not (= lt!960237 Nil!31315)) (= lt!960354 lt!960247)))))

(assert (= (and d!781573 c!438466) b!2714447))

(assert (= (and d!781573 (not c!438466)) b!2714448))

(assert (= (and d!781573 res!1139947) b!2714449))

(assert (= (and b!2714449 res!1139948) b!2714450))

(declare-fun m!3111349 () Bool)

(assert (=> b!2714449 m!3111349))

(assert (=> b!2714449 m!3111221))

(assert (=> b!2714449 m!3111249))

(declare-fun m!3111351 () Bool)

(assert (=> d!781573 m!3111351))

(assert (=> d!781573 m!3111227))

(assert (=> d!781573 m!3111255))

(declare-fun m!3111353 () Bool)

(assert (=> b!2714448 m!3111353))

(assert (=> b!2714294 d!781573))

(declare-fun b!2714451 () Bool)

(declare-fun e!1711001 () List!31414)

(assert (=> b!2714451 (= e!1711001 lt!960251)))

(declare-fun b!2714453 () Bool)

(declare-fun res!1139949 () Bool)

(declare-fun e!1711002 () Bool)

(assert (=> b!2714453 (=> (not res!1139949) (not e!1711002))))

(declare-fun lt!960355 () List!31414)

(assert (=> b!2714453 (= res!1139949 (= (size!24158 lt!960355) (+ (size!24158 lt!960235) (size!24158 lt!960251))))))

(declare-fun b!2714454 () Bool)

(assert (=> b!2714454 (= e!1711002 (or (not (= lt!960251 Nil!31314)) (= lt!960355 lt!960235)))))

(declare-fun d!781575 () Bool)

(assert (=> d!781575 e!1711002))

(declare-fun res!1139950 () Bool)

(assert (=> d!781575 (=> (not res!1139950) (not e!1711002))))

(assert (=> d!781575 (= res!1139950 (= (content!4433 lt!960355) (set.union (content!4433 lt!960235) (content!4433 lt!960251))))))

(assert (=> d!781575 (= lt!960355 e!1711001)))

(declare-fun c!438467 () Bool)

(assert (=> d!781575 (= c!438467 (is-Nil!31314 lt!960235))))

(assert (=> d!781575 (= (++!7753 lt!960235 lt!960251) lt!960355)))

(declare-fun b!2714452 () Bool)

(assert (=> b!2714452 (= e!1711001 (Cons!31314 (h!36734 lt!960235) (++!7753 (t!226224 lt!960235) lt!960251)))))

(assert (= (and d!781575 c!438467) b!2714451))

(assert (= (and d!781575 (not c!438467)) b!2714452))

(assert (= (and d!781575 res!1139950) b!2714453))

(assert (= (and b!2714453 res!1139949) b!2714454))

(declare-fun m!3111355 () Bool)

(assert (=> b!2714453 m!3111355))

(assert (=> b!2714453 m!3111263))

(assert (=> b!2714453 m!3111235))

(declare-fun m!3111357 () Bool)

(assert (=> d!781575 m!3111357))

(assert (=> d!781575 m!3111269))

(assert (=> d!781575 m!3111241))

(declare-fun m!3111359 () Bool)

(assert (=> b!2714452 m!3111359))

(assert (=> b!2714294 d!781575))

(declare-fun d!781577 () Bool)

(assert (=> d!781577 (= (list!11846 (_2!18117 (v!33005 lt!960254))) (list!11850 (c!438433 (_2!18117 (v!33005 lt!960254)))))))

(declare-fun bs!488002 () Bool)

(assert (= bs!488002 d!781577))

(declare-fun m!3111361 () Bool)

(assert (=> bs!488002 m!3111361))

(assert (=> b!2714294 d!781577))

(declare-fun b!2714465 () Bool)

(declare-fun res!1139960 () Bool)

(declare-fun e!1711005 () Bool)

(assert (=> b!2714465 (=> (not res!1139960) (not e!1711005))))

(declare-fun height!1446 (Conc!9803) Int)

(declare-fun ++!7761 (Conc!9803 Conc!9803) Conc!9803)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2714465 (= res!1139960 (>= (height!1446 (++!7761 (c!438433 treated!9) (c!438433 lt!960252))) (max!0 (height!1446 (c!438433 treated!9)) (height!1446 (c!438433 lt!960252)))))))

(declare-fun b!2714464 () Bool)

(declare-fun res!1139959 () Bool)

(assert (=> b!2714464 (=> (not res!1139959) (not e!1711005))))

(assert (=> b!2714464 (= res!1139959 (<= (height!1446 (++!7761 (c!438433 treated!9) (c!438433 lt!960252))) (+ (max!0 (height!1446 (c!438433 treated!9)) (height!1446 (c!438433 lt!960252))) 1)))))

(declare-fun b!2714463 () Bool)

(declare-fun res!1139961 () Bool)

(assert (=> b!2714463 (=> (not res!1139961) (not e!1711005))))

(declare-fun isBalanced!2965 (Conc!9803) Bool)

(assert (=> b!2714463 (= res!1139961 (isBalanced!2965 (++!7761 (c!438433 treated!9) (c!438433 lt!960252))))))

(declare-fun d!781579 () Bool)

(assert (=> d!781579 e!1711005))

(declare-fun res!1139962 () Bool)

(assert (=> d!781579 (=> (not res!1139962) (not e!1711005))))

(declare-fun appendAssocInst!683 (Conc!9803 Conc!9803) Bool)

(assert (=> d!781579 (= res!1139962 (appendAssocInst!683 (c!438433 treated!9) (c!438433 lt!960252)))))

(declare-fun lt!960358 () BalanceConc!19220)

(assert (=> d!781579 (= lt!960358 (BalanceConc!19221 (++!7761 (c!438433 treated!9) (c!438433 lt!960252))))))

(assert (=> d!781579 (= (++!7755 treated!9 lt!960252) lt!960358)))

(declare-fun b!2714466 () Bool)

(assert (=> b!2714466 (= e!1711005 (= (list!11846 lt!960358) (++!7753 (list!11846 treated!9) (list!11846 lt!960252))))))

(assert (= (and d!781579 res!1139962) b!2714463))

(assert (= (and b!2714463 res!1139961) b!2714464))

(assert (= (and b!2714464 res!1139959) b!2714465))

(assert (= (and b!2714465 res!1139960) b!2714466))

(declare-fun m!3111363 () Bool)

(assert (=> b!2714464 m!3111363))

(declare-fun m!3111365 () Bool)

(assert (=> b!2714464 m!3111365))

(declare-fun m!3111367 () Bool)

(assert (=> b!2714464 m!3111367))

(declare-fun m!3111369 () Bool)

(assert (=> b!2714464 m!3111369))

(declare-fun m!3111371 () Bool)

(assert (=> b!2714464 m!3111371))

(assert (=> b!2714464 m!3111365))

(assert (=> b!2714464 m!3111369))

(assert (=> b!2714464 m!3111363))

(assert (=> b!2714465 m!3111363))

(assert (=> b!2714465 m!3111365))

(assert (=> b!2714465 m!3111367))

(assert (=> b!2714465 m!3111369))

(assert (=> b!2714465 m!3111371))

(assert (=> b!2714465 m!3111365))

(assert (=> b!2714465 m!3111369))

(assert (=> b!2714465 m!3111363))

(assert (=> b!2714463 m!3111369))

(assert (=> b!2714463 m!3111369))

(declare-fun m!3111373 () Bool)

(assert (=> b!2714463 m!3111373))

(declare-fun m!3111375 () Bool)

(assert (=> b!2714466 m!3111375))

(assert (=> b!2714466 m!3111013))

(assert (=> b!2714466 m!3111049))

(assert (=> b!2714466 m!3111013))

(assert (=> b!2714466 m!3111049))

(declare-fun m!3111377 () Bool)

(assert (=> b!2714466 m!3111377))

(declare-fun m!3111379 () Bool)

(assert (=> d!781579 m!3111379))

(assert (=> d!781579 m!3111369))

(assert (=> b!2714294 d!781579))

(declare-fun d!781581 () Bool)

(declare-fun list!11851 (Conc!9804) List!31415)

(assert (=> d!781581 (= (list!11847 (_1!18116 lt!960249)) (list!11851 (c!438434 (_1!18116 lt!960249))))))

(declare-fun bs!488003 () Bool)

(assert (= bs!488003 d!781581))

(declare-fun m!3111381 () Bool)

(assert (=> bs!488003 m!3111381))

(assert (=> b!2714294 d!781581))

(declare-fun b!2714483 () Bool)

(declare-fun e!1711022 () Bool)

(declare-fun e!1711018 () Bool)

(assert (=> b!2714483 (= e!1711022 e!1711018)))

(declare-fun res!1139976 () Bool)

(assert (=> b!2714483 (=> (not res!1139976) (not e!1711018))))

(declare-fun lt!960375 () Option!6178)

(declare-fun get!9769 (Option!6178) tuple2!30970)

(declare-datatypes ((tuple2!30980 0))(
  ( (tuple2!30981 (_1!18122 Token!9038) (_2!18122 List!31414)) )
))
(declare-datatypes ((Option!6180 0))(
  ( (None!6179) (Some!6179 (v!33010 tuple2!30980)) )
))
(declare-fun get!9770 (Option!6180) tuple2!30980)

(declare-fun maxPrefixZipper!467 (LexerInterface!4384 List!31416 List!31414) Option!6180)

(assert (=> b!2714483 (= res!1139976 (= (_1!18117 (get!9769 lt!960375)) (_1!18122 (get!9770 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 lt!960240))))))))

(declare-fun d!781583 () Bool)

(declare-fun e!1711019 () Bool)

(assert (=> d!781583 e!1711019))

(declare-fun res!1139979 () Bool)

(assert (=> d!781583 (=> (not res!1139979) (not e!1711019))))

(declare-fun isDefined!4887 (Option!6178) Bool)

(declare-fun isDefined!4888 (Option!6180) Bool)

(assert (=> d!781583 (= res!1139979 (= (isDefined!4887 lt!960375) (isDefined!4888 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 lt!960240)))))))

(declare-fun e!1711020 () Option!6178)

(assert (=> d!781583 (= lt!960375 e!1711020)))

(declare-fun c!438473 () Bool)

(assert (=> d!781583 (= c!438473 (and (is-Cons!31316 rules!1182) (is-Nil!31316 (t!226226 rules!1182))))))

(declare-fun lt!960376 () Unit!45347)

(declare-fun lt!960377 () Unit!45347)

(assert (=> d!781583 (= lt!960376 lt!960377)))

(declare-fun lt!960378 () List!31414)

(declare-fun lt!960379 () List!31414)

(declare-fun isPrefix!2480 (List!31414 List!31414) Bool)

(assert (=> d!781583 (isPrefix!2480 lt!960378 lt!960379)))

(declare-fun lemmaIsPrefixRefl!1606 (List!31414 List!31414) Unit!45347)

(assert (=> d!781583 (= lt!960377 (lemmaIsPrefixRefl!1606 lt!960378 lt!960379))))

(assert (=> d!781583 (= lt!960379 (list!11846 lt!960240))))

(assert (=> d!781583 (= lt!960378 (list!11846 lt!960240))))

(declare-fun rulesValidInductive!1664 (LexerInterface!4384 List!31416) Bool)

(assert (=> d!781583 (rulesValidInductive!1664 thiss!11556 rules!1182)))

(assert (=> d!781583 (= (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 lt!960240) lt!960375)))

(declare-fun b!2714484 () Bool)

(declare-fun res!1139978 () Bool)

(assert (=> b!2714484 (=> (not res!1139978) (not e!1711019))))

(assert (=> b!2714484 (= res!1139978 e!1711022)))

(declare-fun res!1139980 () Bool)

(assert (=> b!2714484 (=> res!1139980 e!1711022)))

(assert (=> b!2714484 (= res!1139980 (not (isDefined!4887 lt!960375)))))

(declare-fun b!2714485 () Bool)

(declare-fun e!1711023 () Bool)

(assert (=> b!2714485 (= e!1711019 e!1711023)))

(declare-fun res!1139977 () Bool)

(assert (=> b!2714485 (=> res!1139977 e!1711023)))

(assert (=> b!2714485 (= res!1139977 (not (isDefined!4887 lt!960375)))))

(declare-fun b!2714486 () Bool)

(declare-fun call!175027 () Option!6178)

(assert (=> b!2714486 (= e!1711020 call!175027)))

(declare-fun e!1711021 () Bool)

(declare-fun b!2714487 () Bool)

(declare-fun maxPrefix!2363 (LexerInterface!4384 List!31416 List!31414) Option!6180)

(assert (=> b!2714487 (= e!1711021 (= (list!11846 (_2!18117 (get!9769 lt!960375))) (_2!18122 (get!9770 (maxPrefix!2363 thiss!11556 rules!1182 (list!11846 lt!960240))))))))

(declare-fun b!2714488 () Bool)

(assert (=> b!2714488 (= e!1711018 (= (list!11846 (_2!18117 (get!9769 lt!960375))) (_2!18122 (get!9770 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 lt!960240))))))))

(declare-fun b!2714489 () Bool)

(declare-fun lt!960374 () Option!6178)

(declare-fun lt!960373 () Option!6178)

(assert (=> b!2714489 (= e!1711020 (ite (and (is-None!6177 lt!960374) (is-None!6177 lt!960373)) None!6177 (ite (is-None!6177 lt!960373) lt!960374 (ite (is-None!6177 lt!960374) lt!960373 (ite (>= (size!24155 (_1!18117 (v!33005 lt!960374))) (size!24155 (_1!18117 (v!33005 lt!960373)))) lt!960374 lt!960373)))))))

(assert (=> b!2714489 (= lt!960374 call!175027)))

(assert (=> b!2714489 (= lt!960373 (maxPrefixZipperSequence!1032 thiss!11556 (t!226226 rules!1182) lt!960240))))

(declare-fun bm!175022 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!476 (LexerInterface!4384 Rule!9376 BalanceConc!19220) Option!6178)

(assert (=> bm!175022 (= call!175027 (maxPrefixOneRuleZipperSequence!476 thiss!11556 (h!36736 rules!1182) lt!960240))))

(declare-fun b!2714490 () Bool)

(assert (=> b!2714490 (= e!1711023 e!1711021)))

(declare-fun res!1139975 () Bool)

(assert (=> b!2714490 (=> (not res!1139975) (not e!1711021))))

(assert (=> b!2714490 (= res!1139975 (= (_1!18117 (get!9769 lt!960375)) (_1!18122 (get!9770 (maxPrefix!2363 thiss!11556 rules!1182 (list!11846 lt!960240))))))))

(assert (= (and d!781583 c!438473) b!2714486))

(assert (= (and d!781583 (not c!438473)) b!2714489))

(assert (= (or b!2714486 b!2714489) bm!175022))

(assert (= (and d!781583 res!1139979) b!2714484))

(assert (= (and b!2714484 (not res!1139980)) b!2714483))

(assert (= (and b!2714483 res!1139976) b!2714488))

(assert (= (and b!2714484 res!1139978) b!2714485))

(assert (= (and b!2714485 (not res!1139977)) b!2714490))

(assert (= (and b!2714490 res!1139975) b!2714487))

(assert (=> b!2714488 m!3111053))

(assert (=> b!2714488 m!3111053))

(declare-fun m!3111383 () Bool)

(assert (=> b!2714488 m!3111383))

(declare-fun m!3111385 () Bool)

(assert (=> b!2714488 m!3111385))

(declare-fun m!3111387 () Bool)

(assert (=> b!2714488 m!3111387))

(assert (=> b!2714488 m!3111383))

(declare-fun m!3111389 () Bool)

(assert (=> b!2714488 m!3111389))

(assert (=> b!2714483 m!3111387))

(assert (=> b!2714483 m!3111053))

(assert (=> b!2714483 m!3111053))

(assert (=> b!2714483 m!3111383))

(assert (=> b!2714483 m!3111383))

(assert (=> b!2714483 m!3111389))

(declare-fun m!3111391 () Bool)

(assert (=> b!2714485 m!3111391))

(declare-fun m!3111393 () Bool)

(assert (=> bm!175022 m!3111393))

(declare-fun m!3111395 () Bool)

(assert (=> d!781583 m!3111395))

(assert (=> d!781583 m!3111053))

(assert (=> d!781583 m!3111053))

(assert (=> d!781583 m!3111383))

(declare-fun m!3111397 () Bool)

(assert (=> d!781583 m!3111397))

(declare-fun m!3111399 () Bool)

(assert (=> d!781583 m!3111399))

(assert (=> d!781583 m!3111383))

(declare-fun m!3111401 () Bool)

(assert (=> d!781583 m!3111401))

(assert (=> d!781583 m!3111391))

(declare-fun m!3111403 () Bool)

(assert (=> b!2714487 m!3111403))

(declare-fun m!3111405 () Bool)

(assert (=> b!2714487 m!3111405))

(assert (=> b!2714487 m!3111053))

(assert (=> b!2714487 m!3111385))

(assert (=> b!2714487 m!3111387))

(assert (=> b!2714487 m!3111053))

(assert (=> b!2714487 m!3111403))

(assert (=> b!2714490 m!3111387))

(assert (=> b!2714490 m!3111053))

(assert (=> b!2714490 m!3111053))

(assert (=> b!2714490 m!3111403))

(assert (=> b!2714490 m!3111403))

(assert (=> b!2714490 m!3111405))

(declare-fun m!3111407 () Bool)

(assert (=> b!2714489 m!3111407))

(assert (=> b!2714484 m!3111391))

(assert (=> b!2714294 d!781583))

(declare-fun d!781585 () Bool)

(declare-fun e!1711026 () Bool)

(assert (=> d!781585 e!1711026))

(declare-fun res!1139983 () Bool)

(assert (=> d!781585 (=> (not res!1139983) (not e!1711026))))

(declare-fun isBalanced!2966 (Conc!9804) Bool)

(declare-fun append!805 (Conc!9804 Token!9038) Conc!9804)

(assert (=> d!781585 (= res!1139983 (isBalanced!2966 (append!805 (c!438434 acc!331) (_1!18117 (v!33005 lt!960254)))))))

(declare-fun lt!960382 () BalanceConc!19222)

(assert (=> d!781585 (= lt!960382 (BalanceConc!19223 (append!805 (c!438434 acc!331) (_1!18117 (v!33005 lt!960254)))))))

(assert (=> d!781585 (= (append!803 acc!331 (_1!18117 (v!33005 lt!960254))) lt!960382)))

(declare-fun b!2714493 () Bool)

(declare-fun $colon+!177 (List!31415 Token!9038) List!31415)

(assert (=> b!2714493 (= e!1711026 (= (list!11847 lt!960382) ($colon+!177 (list!11847 acc!331) (_1!18117 (v!33005 lt!960254)))))))

(assert (= (and d!781585 res!1139983) b!2714493))

(declare-fun m!3111409 () Bool)

(assert (=> d!781585 m!3111409))

(assert (=> d!781585 m!3111409))

(declare-fun m!3111411 () Bool)

(assert (=> d!781585 m!3111411))

(declare-fun m!3111413 () Bool)

(assert (=> b!2714493 m!3111413))

(assert (=> b!2714493 m!3111093))

(assert (=> b!2714493 m!3111093))

(declare-fun m!3111415 () Bool)

(assert (=> b!2714493 m!3111415))

(assert (=> b!2714294 d!781585))

(declare-fun d!781587 () Bool)

(assert (=> d!781587 (= (++!7756 (++!7756 lt!960247 lt!960237) lt!960234) (++!7756 lt!960247 (++!7756 lt!960237 lt!960234)))))

(declare-fun lt!960385 () Unit!45347)

(declare-fun choose!15962 (List!31415 List!31415 List!31415) Unit!45347)

(assert (=> d!781587 (= lt!960385 (choose!15962 lt!960247 lt!960237 lt!960234))))

(assert (=> d!781587 (= (lemmaConcatAssociativity!1595 lt!960247 lt!960237 lt!960234) lt!960385)))

(declare-fun bs!488004 () Bool)

(assert (= bs!488004 d!781587))

(declare-fun m!3111417 () Bool)

(assert (=> bs!488004 m!3111417))

(assert (=> bs!488004 m!3111043))

(assert (=> bs!488004 m!3111043))

(assert (=> bs!488004 m!3111069))

(assert (=> bs!488004 m!3111061))

(assert (=> bs!488004 m!3111063))

(assert (=> bs!488004 m!3111061))

(assert (=> b!2714294 d!781587))

(declare-fun b!2714494 () Bool)

(declare-fun e!1711027 () List!31414)

(assert (=> b!2714494 (= e!1711027 lt!960250)))

(declare-fun b!2714496 () Bool)

(declare-fun res!1139984 () Bool)

(declare-fun e!1711028 () Bool)

(assert (=> b!2714496 (=> (not res!1139984) (not e!1711028))))

(declare-fun lt!960386 () List!31414)

(assert (=> b!2714496 (= res!1139984 (= (size!24158 lt!960386) (+ (size!24158 lt!960255) (size!24158 lt!960250))))))

(declare-fun b!2714497 () Bool)

(assert (=> b!2714497 (= e!1711028 (or (not (= lt!960250 Nil!31314)) (= lt!960386 lt!960255)))))

(declare-fun d!781589 () Bool)

(assert (=> d!781589 e!1711028))

(declare-fun res!1139985 () Bool)

(assert (=> d!781589 (=> (not res!1139985) (not e!1711028))))

(assert (=> d!781589 (= res!1139985 (= (content!4433 lt!960386) (set.union (content!4433 lt!960255) (content!4433 lt!960250))))))

(assert (=> d!781589 (= lt!960386 e!1711027)))

(declare-fun c!438475 () Bool)

(assert (=> d!781589 (= c!438475 (is-Nil!31314 lt!960255))))

(assert (=> d!781589 (= (++!7753 lt!960255 lt!960250) lt!960386)))

(declare-fun b!2714495 () Bool)

(assert (=> b!2714495 (= e!1711027 (Cons!31314 (h!36734 lt!960255) (++!7753 (t!226224 lt!960255) lt!960250)))))

(assert (= (and d!781589 c!438475) b!2714494))

(assert (= (and d!781589 (not c!438475)) b!2714495))

(assert (= (and d!781589 res!1139985) b!2714496))

(assert (= (and b!2714496 res!1139984) b!2714497))

(declare-fun m!3111419 () Bool)

(assert (=> b!2714496 m!3111419))

(declare-fun m!3111421 () Bool)

(assert (=> b!2714496 m!3111421))

(assert (=> b!2714496 m!3111237))

(declare-fun m!3111423 () Bool)

(assert (=> d!781589 m!3111423))

(declare-fun m!3111425 () Bool)

(assert (=> d!781589 m!3111425))

(assert (=> d!781589 m!3111243))

(declare-fun m!3111427 () Bool)

(assert (=> b!2714495 m!3111427))

(assert (=> b!2714294 d!781589))

(declare-fun b!2714536 () Bool)

(declare-fun e!1711051 () Bool)

(declare-fun e!1711053 () Bool)

(assert (=> b!2714536 (= e!1711051 e!1711053)))

(declare-fun res!1140000 () Bool)

(declare-fun lt!960405 () tuple2!30972)

(assert (=> b!2714536 (= res!1140000 (< (size!24158 (_2!18118 lt!960405)) (size!24158 lt!960255)))))

(assert (=> b!2714536 (=> (not res!1140000) (not e!1711053))))

(declare-fun d!781591 () Bool)

(assert (=> d!781591 e!1711051))

(declare-fun c!438488 () Bool)

(assert (=> d!781591 (= c!438488 (> (size!24157 (_1!18118 lt!960405)) 0))))

(declare-fun e!1711052 () tuple2!30972)

(assert (=> d!781591 (= lt!960405 e!1711052)))

(declare-fun c!438489 () Bool)

(declare-fun lt!960406 () Option!6180)

(assert (=> d!781591 (= c!438489 (is-Some!6179 lt!960406))))

(assert (=> d!781591 (= lt!960406 (maxPrefix!2363 thiss!11556 rules!1182 lt!960255))))

(assert (=> d!781591 (= (lexList!1215 thiss!11556 rules!1182 lt!960255) lt!960405)))

(declare-fun b!2714537 () Bool)

(declare-fun lt!960407 () tuple2!30972)

(assert (=> b!2714537 (= e!1711052 (tuple2!30973 (Cons!31315 (_1!18122 (v!33010 lt!960406)) (_1!18118 lt!960407)) (_2!18118 lt!960407)))))

(assert (=> b!2714537 (= lt!960407 (lexList!1215 thiss!11556 rules!1182 (_2!18122 (v!33010 lt!960406))))))

(declare-fun b!2714538 () Bool)

(assert (=> b!2714538 (= e!1711051 (= (_2!18118 lt!960405) lt!960255))))

(declare-fun b!2714539 () Bool)

(declare-fun isEmpty!17852 (List!31415) Bool)

(assert (=> b!2714539 (= e!1711053 (not (isEmpty!17852 (_1!18118 lt!960405))))))

(declare-fun b!2714540 () Bool)

(assert (=> b!2714540 (= e!1711052 (tuple2!30973 Nil!31315 lt!960255))))

(assert (= (and d!781591 c!438489) b!2714537))

(assert (= (and d!781591 (not c!438489)) b!2714540))

(assert (= (and d!781591 c!438488) b!2714536))

(assert (= (and d!781591 (not c!438488)) b!2714538))

(assert (= (and b!2714536 res!1140000) b!2714539))

(declare-fun m!3111471 () Bool)

(assert (=> b!2714536 m!3111471))

(assert (=> b!2714536 m!3111421))

(declare-fun m!3111473 () Bool)

(assert (=> d!781591 m!3111473))

(declare-fun m!3111475 () Bool)

(assert (=> d!781591 m!3111475))

(declare-fun m!3111477 () Bool)

(assert (=> b!2714537 m!3111477))

(declare-fun m!3111479 () Bool)

(assert (=> b!2714539 m!3111479))

(assert (=> b!2714294 d!781591))

(declare-fun d!781601 () Bool)

(assert (=> d!781601 (= (list!11846 (_2!18116 lt!960249)) (list!11850 (c!438433 (_2!18116 lt!960249))))))

(declare-fun bs!488007 () Bool)

(assert (= bs!488007 d!781601))

(declare-fun m!3111481 () Bool)

(assert (=> bs!488007 m!3111481))

(assert (=> b!2714294 d!781601))

(declare-fun d!781603 () Bool)

(declare-fun lt!960410 () BalanceConc!19220)

(assert (=> d!781603 (= (list!11846 lt!960410) (originalCharacters!5550 (_1!18117 (v!33005 lt!960254))))))

(declare-fun dynLambda!13491 (Int TokenValue!5010) BalanceConc!19220)

(assert (=> d!781603 (= lt!960410 (dynLambda!13491 (toChars!6617 (transformation!4788 (rule!7214 (_1!18117 (v!33005 lt!960254))))) (value!154072 (_1!18117 (v!33005 lt!960254)))))))

(assert (=> d!781603 (= (charsOf!3011 (_1!18117 (v!33005 lt!960254))) lt!960410)))

(declare-fun b_lambda!82523 () Bool)

(assert (=> (not b_lambda!82523) (not d!781603)))

(declare-fun t!226232 () Bool)

(declare-fun tb!151821 () Bool)

(assert (=> (and b!2714278 (= (toChars!6617 (transformation!4788 (h!36736 rules!1182))) (toChars!6617 (transformation!4788 (rule!7214 (_1!18117 (v!33005 lt!960254)))))) t!226232) tb!151821))

(declare-fun b!2714545 () Bool)

(declare-fun e!1711056 () Bool)

(declare-fun tp!857362 () Bool)

(assert (=> b!2714545 (= e!1711056 (and (inv!42486 (c!438433 (dynLambda!13491 (toChars!6617 (transformation!4788 (rule!7214 (_1!18117 (v!33005 lt!960254))))) (value!154072 (_1!18117 (v!33005 lt!960254)))))) tp!857362))))

(declare-fun result!187526 () Bool)

(assert (=> tb!151821 (= result!187526 (and (inv!42489 (dynLambda!13491 (toChars!6617 (transformation!4788 (rule!7214 (_1!18117 (v!33005 lt!960254))))) (value!154072 (_1!18117 (v!33005 lt!960254))))) e!1711056))))

(assert (= tb!151821 b!2714545))

(declare-fun m!3111483 () Bool)

(assert (=> b!2714545 m!3111483))

(declare-fun m!3111485 () Bool)

(assert (=> tb!151821 m!3111485))

(assert (=> d!781603 t!226232))

(declare-fun b_and!200269 () Bool)

(assert (= b_and!200263 (and (=> t!226232 result!187526) b_and!200269)))

(declare-fun m!3111487 () Bool)

(assert (=> d!781603 m!3111487))

(declare-fun m!3111489 () Bool)

(assert (=> d!781603 m!3111489))

(assert (=> b!2714294 d!781603))

(declare-fun d!781605 () Bool)

(assert (=> d!781605 (= (++!7753 (++!7753 lt!960235 lt!960251) lt!960250) (++!7753 lt!960235 (++!7753 lt!960251 lt!960250)))))

(declare-fun lt!960413 () Unit!45347)

(declare-fun choose!15963 (List!31414 List!31414 List!31414) Unit!45347)

(assert (=> d!781605 (= lt!960413 (choose!15963 lt!960235 lt!960251 lt!960250))))

(assert (=> d!781605 (= (lemmaConcatAssociativity!1596 lt!960235 lt!960251 lt!960250) lt!960413)))

(declare-fun bs!488008 () Bool)

(assert (= bs!488008 d!781605))

(assert (=> bs!488008 m!3111045))

(assert (=> bs!488008 m!3111047))

(declare-fun m!3111491 () Bool)

(assert (=> bs!488008 m!3111491))

(assert (=> bs!488008 m!3111073))

(declare-fun m!3111493 () Bool)

(assert (=> bs!488008 m!3111493))

(assert (=> bs!488008 m!3111045))

(assert (=> bs!488008 m!3111073))

(assert (=> b!2714294 d!781605))

(declare-fun d!781607 () Bool)

(assert (=> d!781607 (= (list!11846 lt!960240) (list!11850 (c!438433 lt!960240)))))

(declare-fun bs!488009 () Bool)

(assert (= bs!488009 d!781607))

(declare-fun m!3111495 () Bool)

(assert (=> bs!488009 m!3111495))

(assert (=> b!2714294 d!781607))

(declare-fun d!781609 () Bool)

(assert (=> d!781609 (= (list!11847 (append!803 acc!331 (_1!18117 (v!33005 lt!960254)))) (list!11851 (c!438434 (append!803 acc!331 (_1!18117 (v!33005 lt!960254))))))))

(declare-fun bs!488010 () Bool)

(assert (= bs!488010 d!781609))

(declare-fun m!3111497 () Bool)

(assert (=> bs!488010 m!3111497))

(assert (=> b!2714294 d!781609))

(declare-fun d!781611 () Bool)

(assert (=> d!781611 (= (list!11847 (_1!18116 lt!960246)) (list!11851 (c!438434 (_1!18116 lt!960246))))))

(declare-fun bs!488011 () Bool)

(assert (= bs!488011 d!781611))

(declare-fun m!3111499 () Bool)

(assert (=> bs!488011 m!3111499))

(assert (=> b!2714283 d!781611))

(declare-fun d!781613 () Bool)

(declare-fun e!1711061 () Bool)

(assert (=> d!781613 e!1711061))

(declare-fun res!1140009 () Bool)

(assert (=> d!781613 (=> (not res!1140009) (not e!1711061))))

(declare-fun prepend!1114 (Conc!9804 Token!9038) Conc!9804)

(assert (=> d!781613 (= res!1140009 (isBalanced!2966 (prepend!1114 (c!438434 (_1!18116 lt!960242)) (_1!18117 (v!33005 lt!960244)))))))

(declare-fun lt!960418 () BalanceConc!19222)

(assert (=> d!781613 (= lt!960418 (BalanceConc!19223 (prepend!1114 (c!438434 (_1!18116 lt!960242)) (_1!18117 (v!33005 lt!960244)))))))

(assert (=> d!781613 (= (prepend!1112 (_1!18116 lt!960242) (_1!18117 (v!33005 lt!960244))) lt!960418)))

(declare-fun b!2714552 () Bool)

(assert (=> b!2714552 (= e!1711061 (= (list!11847 lt!960418) (Cons!31315 (_1!18117 (v!33005 lt!960244)) (list!11847 (_1!18116 lt!960242)))))))

(assert (= (and d!781613 res!1140009) b!2714552))

(declare-fun m!3111501 () Bool)

(assert (=> d!781613 m!3111501))

(assert (=> d!781613 m!3111501))

(declare-fun m!3111503 () Bool)

(assert (=> d!781613 m!3111503))

(declare-fun m!3111505 () Bool)

(assert (=> b!2714552 m!3111505))

(declare-fun m!3111507 () Bool)

(assert (=> b!2714552 m!3111507))

(assert (=> b!2714293 d!781613))

(declare-fun b!2714557 () Bool)

(declare-fun e!1711065 () tuple2!30968)

(assert (=> b!2714557 (= e!1711065 (tuple2!30969 (BalanceConc!19223 Empty!9804) (_2!18117 (v!33005 lt!960244))))))

(declare-fun e!1711063 () Bool)

(declare-fun lt!960420 () tuple2!30968)

(declare-fun b!2714558 () Bool)

(assert (=> b!2714558 (= e!1711063 (= (list!11846 (_2!18116 lt!960420)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 (_2!18117 (v!33005 lt!960244)))))))))

(declare-fun b!2714559 () Bool)

(declare-fun e!1711062 () Bool)

(assert (=> b!2714559 (= e!1711062 (= (list!11846 (_2!18116 lt!960420)) (list!11846 (_2!18117 (v!33005 lt!960244)))))))

(declare-fun b!2714560 () Bool)

(declare-fun e!1711064 () Bool)

(assert (=> b!2714560 (= e!1711064 (not (isEmpty!17851 (_1!18116 lt!960420))))))

(declare-fun b!2714561 () Bool)

(assert (=> b!2714561 (= e!1711062 e!1711064)))

(declare-fun res!1140013 () Bool)

(assert (=> b!2714561 (= res!1140013 (< (size!24159 (_2!18116 lt!960420)) (size!24159 (_2!18117 (v!33005 lt!960244)))))))

(assert (=> b!2714561 (=> (not res!1140013) (not e!1711064))))

(declare-fun d!781615 () Bool)

(assert (=> d!781615 e!1711063))

(declare-fun res!1140014 () Bool)

(assert (=> d!781615 (=> (not res!1140014) (not e!1711063))))

(assert (=> d!781615 (= res!1140014 e!1711062)))

(declare-fun c!438495 () Bool)

(assert (=> d!781615 (= c!438495 (> (size!24160 (_1!18116 lt!960420)) 0))))

(assert (=> d!781615 (= lt!960420 e!1711065)))

(declare-fun c!438494 () Bool)

(declare-fun lt!960419 () Option!6178)

(assert (=> d!781615 (= c!438494 (is-Some!6177 lt!960419))))

(assert (=> d!781615 (= lt!960419 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960244))))))

(assert (=> d!781615 (= (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960244))) lt!960420)))

(declare-fun b!2714562 () Bool)

(declare-fun res!1140012 () Bool)

(assert (=> b!2714562 (=> (not res!1140012) (not e!1711063))))

(assert (=> b!2714562 (= res!1140012 (= (list!11847 (_1!18116 lt!960420)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 (_2!18117 (v!33005 lt!960244)))))))))

(declare-fun b!2714563 () Bool)

(declare-fun lt!960421 () tuple2!30968)

(assert (=> b!2714563 (= e!1711065 (tuple2!30969 (prepend!1112 (_1!18116 lt!960421) (_1!18117 (v!33005 lt!960419))) (_2!18116 lt!960421)))))

(assert (=> b!2714563 (= lt!960421 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960419))))))

(assert (= (and d!781615 c!438494) b!2714563))

(assert (= (and d!781615 (not c!438494)) b!2714557))

(assert (= (and d!781615 c!438495) b!2714561))

(assert (= (and d!781615 (not c!438495)) b!2714559))

(assert (= (and b!2714561 res!1140013) b!2714560))

(assert (= (and d!781615 res!1140014) b!2714562))

(assert (= (and b!2714562 res!1140012) b!2714558))

(declare-fun m!3111509 () Bool)

(assert (=> b!2714561 m!3111509))

(declare-fun m!3111511 () Bool)

(assert (=> b!2714561 m!3111511))

(declare-fun m!3111513 () Bool)

(assert (=> b!2714563 m!3111513))

(declare-fun m!3111515 () Bool)

(assert (=> b!2714563 m!3111515))

(declare-fun m!3111517 () Bool)

(assert (=> b!2714560 m!3111517))

(declare-fun m!3111519 () Bool)

(assert (=> d!781615 m!3111519))

(declare-fun m!3111521 () Bool)

(assert (=> d!781615 m!3111521))

(declare-fun m!3111523 () Bool)

(assert (=> b!2714559 m!3111523))

(declare-fun m!3111525 () Bool)

(assert (=> b!2714559 m!3111525))

(assert (=> b!2714558 m!3111523))

(assert (=> b!2714558 m!3111525))

(assert (=> b!2714558 m!3111525))

(declare-fun m!3111527 () Bool)

(assert (=> b!2714558 m!3111527))

(declare-fun m!3111529 () Bool)

(assert (=> b!2714562 m!3111529))

(assert (=> b!2714562 m!3111525))

(assert (=> b!2714562 m!3111525))

(assert (=> b!2714562 m!3111527))

(assert (=> b!2714293 d!781615))

(declare-fun d!781617 () Bool)

(assert (=> d!781617 (= (isEmpty!17848 rules!1182) (is-Nil!31316 rules!1182))))

(assert (=> b!2714282 d!781617))

(declare-fun d!781619 () Bool)

(declare-fun c!438498 () Bool)

(assert (=> d!781619 (= c!438498 (is-Node!9803 (c!438433 input!603)))))

(declare-fun e!1711070 () Bool)

(assert (=> d!781619 (= (inv!42486 (c!438433 input!603)) e!1711070)))

(declare-fun b!2714570 () Bool)

(declare-fun inv!42496 (Conc!9803) Bool)

(assert (=> b!2714570 (= e!1711070 (inv!42496 (c!438433 input!603)))))

(declare-fun b!2714571 () Bool)

(declare-fun e!1711071 () Bool)

(assert (=> b!2714571 (= e!1711070 e!1711071)))

(declare-fun res!1140017 () Bool)

(assert (=> b!2714571 (= res!1140017 (not (is-Leaf!14942 (c!438433 input!603))))))

(assert (=> b!2714571 (=> res!1140017 e!1711071)))

(declare-fun b!2714572 () Bool)

(declare-fun inv!42497 (Conc!9803) Bool)

(assert (=> b!2714572 (= e!1711071 (inv!42497 (c!438433 input!603)))))

(assert (= (and d!781619 c!438498) b!2714570))

(assert (= (and d!781619 (not c!438498)) b!2714571))

(assert (= (and b!2714571 (not res!1140017)) b!2714572))

(declare-fun m!3111531 () Bool)

(assert (=> b!2714570 m!3111531))

(declare-fun m!3111533 () Bool)

(assert (=> b!2714572 m!3111533))

(assert (=> b!2714292 d!781619))

(declare-fun d!781621 () Bool)

(assert (=> d!781621 (= (isEmpty!17847 (list!11846 (_2!18116 lt!960238))) (is-Nil!31314 (list!11846 (_2!18116 lt!960238))))))

(assert (=> b!2714281 d!781621))

(declare-fun d!781623 () Bool)

(assert (=> d!781623 (= (list!11846 (_2!18116 lt!960238)) (list!11850 (c!438433 (_2!18116 lt!960238))))))

(declare-fun bs!488012 () Bool)

(assert (= bs!488012 d!781623))

(declare-fun m!3111535 () Bool)

(assert (=> bs!488012 m!3111535))

(assert (=> b!2714281 d!781623))

(declare-fun b!2714577 () Bool)

(declare-fun e!1711077 () Bool)

(declare-fun e!1711073 () Bool)

(assert (=> b!2714577 (= e!1711077 e!1711073)))

(declare-fun res!1140023 () Bool)

(assert (=> b!2714577 (=> (not res!1140023) (not e!1711073))))

(declare-fun lt!960425 () Option!6178)

(assert (=> b!2714577 (= res!1140023 (= (_1!18117 (get!9769 lt!960425)) (_1!18122 (get!9770 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 input!603))))))))

(declare-fun d!781625 () Bool)

(declare-fun e!1711074 () Bool)

(assert (=> d!781625 e!1711074))

(declare-fun res!1140026 () Bool)

(assert (=> d!781625 (=> (not res!1140026) (not e!1711074))))

(assert (=> d!781625 (= res!1140026 (= (isDefined!4887 lt!960425) (isDefined!4888 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 input!603)))))))

(declare-fun e!1711075 () Option!6178)

(assert (=> d!781625 (= lt!960425 e!1711075)))

(declare-fun c!438499 () Bool)

(assert (=> d!781625 (= c!438499 (and (is-Cons!31316 rules!1182) (is-Nil!31316 (t!226226 rules!1182))))))

(declare-fun lt!960426 () Unit!45347)

(declare-fun lt!960427 () Unit!45347)

(assert (=> d!781625 (= lt!960426 lt!960427)))

(declare-fun lt!960428 () List!31414)

(declare-fun lt!960429 () List!31414)

(assert (=> d!781625 (isPrefix!2480 lt!960428 lt!960429)))

(assert (=> d!781625 (= lt!960427 (lemmaIsPrefixRefl!1606 lt!960428 lt!960429))))

(assert (=> d!781625 (= lt!960429 (list!11846 input!603))))

(assert (=> d!781625 (= lt!960428 (list!11846 input!603))))

(assert (=> d!781625 (rulesValidInductive!1664 thiss!11556 rules!1182)))

(assert (=> d!781625 (= (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 input!603) lt!960425)))

(declare-fun b!2714578 () Bool)

(declare-fun res!1140025 () Bool)

(assert (=> b!2714578 (=> (not res!1140025) (not e!1711074))))

(assert (=> b!2714578 (= res!1140025 e!1711077)))

(declare-fun res!1140027 () Bool)

(assert (=> b!2714578 (=> res!1140027 e!1711077)))

(assert (=> b!2714578 (= res!1140027 (not (isDefined!4887 lt!960425)))))

(declare-fun b!2714579 () Bool)

(declare-fun e!1711078 () Bool)

(assert (=> b!2714579 (= e!1711074 e!1711078)))

(declare-fun res!1140024 () Bool)

(assert (=> b!2714579 (=> res!1140024 e!1711078)))

(assert (=> b!2714579 (= res!1140024 (not (isDefined!4887 lt!960425)))))

(declare-fun b!2714580 () Bool)

(declare-fun call!175028 () Option!6178)

(assert (=> b!2714580 (= e!1711075 call!175028)))

(declare-fun b!2714581 () Bool)

(declare-fun e!1711076 () Bool)

(assert (=> b!2714581 (= e!1711076 (= (list!11846 (_2!18117 (get!9769 lt!960425))) (_2!18122 (get!9770 (maxPrefix!2363 thiss!11556 rules!1182 (list!11846 input!603))))))))

(declare-fun b!2714582 () Bool)

(assert (=> b!2714582 (= e!1711073 (= (list!11846 (_2!18117 (get!9769 lt!960425))) (_2!18122 (get!9770 (maxPrefixZipper!467 thiss!11556 rules!1182 (list!11846 input!603))))))))

(declare-fun b!2714583 () Bool)

(declare-fun lt!960424 () Option!6178)

(declare-fun lt!960423 () Option!6178)

(assert (=> b!2714583 (= e!1711075 (ite (and (is-None!6177 lt!960424) (is-None!6177 lt!960423)) None!6177 (ite (is-None!6177 lt!960423) lt!960424 (ite (is-None!6177 lt!960424) lt!960423 (ite (>= (size!24155 (_1!18117 (v!33005 lt!960424))) (size!24155 (_1!18117 (v!33005 lt!960423)))) lt!960424 lt!960423)))))))

(assert (=> b!2714583 (= lt!960424 call!175028)))

(assert (=> b!2714583 (= lt!960423 (maxPrefixZipperSequence!1032 thiss!11556 (t!226226 rules!1182) input!603))))

(declare-fun bm!175023 () Bool)

(assert (=> bm!175023 (= call!175028 (maxPrefixOneRuleZipperSequence!476 thiss!11556 (h!36736 rules!1182) input!603))))

(declare-fun b!2714584 () Bool)

(assert (=> b!2714584 (= e!1711078 e!1711076)))

(declare-fun res!1140022 () Bool)

(assert (=> b!2714584 (=> (not res!1140022) (not e!1711076))))

(assert (=> b!2714584 (= res!1140022 (= (_1!18117 (get!9769 lt!960425)) (_1!18122 (get!9770 (maxPrefix!2363 thiss!11556 rules!1182 (list!11846 input!603))))))))

(assert (= (and d!781625 c!438499) b!2714580))

(assert (= (and d!781625 (not c!438499)) b!2714583))

(assert (= (or b!2714580 b!2714583) bm!175023))

(assert (= (and d!781625 res!1140026) b!2714578))

(assert (= (and b!2714578 (not res!1140027)) b!2714577))

(assert (= (and b!2714577 res!1140023) b!2714582))

(assert (= (and b!2714578 res!1140025) b!2714579))

(assert (= (and b!2714579 (not res!1140024)) b!2714584))

(assert (= (and b!2714584 res!1140022) b!2714581))

(assert (=> b!2714582 m!3111011))

(assert (=> b!2714582 m!3111011))

(declare-fun m!3111543 () Bool)

(assert (=> b!2714582 m!3111543))

(declare-fun m!3111545 () Bool)

(assert (=> b!2714582 m!3111545))

(declare-fun m!3111549 () Bool)

(assert (=> b!2714582 m!3111549))

(assert (=> b!2714582 m!3111543))

(declare-fun m!3111551 () Bool)

(assert (=> b!2714582 m!3111551))

(assert (=> b!2714577 m!3111549))

(assert (=> b!2714577 m!3111011))

(assert (=> b!2714577 m!3111011))

(assert (=> b!2714577 m!3111543))

(assert (=> b!2714577 m!3111543))

(assert (=> b!2714577 m!3111551))

(declare-fun m!3111555 () Bool)

(assert (=> b!2714579 m!3111555))

(declare-fun m!3111559 () Bool)

(assert (=> bm!175023 m!3111559))

(assert (=> d!781625 m!3111395))

(assert (=> d!781625 m!3111011))

(assert (=> d!781625 m!3111011))

(assert (=> d!781625 m!3111543))

(declare-fun m!3111563 () Bool)

(assert (=> d!781625 m!3111563))

(declare-fun m!3111565 () Bool)

(assert (=> d!781625 m!3111565))

(assert (=> d!781625 m!3111543))

(declare-fun m!3111569 () Bool)

(assert (=> d!781625 m!3111569))

(assert (=> d!781625 m!3111555))

(declare-fun m!3111571 () Bool)

(assert (=> b!2714581 m!3111571))

(declare-fun m!3111575 () Bool)

(assert (=> b!2714581 m!3111575))

(assert (=> b!2714581 m!3111011))

(assert (=> b!2714581 m!3111545))

(assert (=> b!2714581 m!3111549))

(assert (=> b!2714581 m!3111011))

(assert (=> b!2714581 m!3111571))

(assert (=> b!2714584 m!3111549))

(assert (=> b!2714584 m!3111011))

(assert (=> b!2714584 m!3111011))

(assert (=> b!2714584 m!3111571))

(assert (=> b!2714584 m!3111571))

(assert (=> b!2714584 m!3111575))

(declare-fun m!3111577 () Bool)

(assert (=> b!2714583 m!3111577))

(assert (=> b!2714578 m!3111555))

(assert (=> b!2714286 d!781625))

(declare-fun d!781627 () Bool)

(declare-fun res!1140030 () Bool)

(declare-fun e!1711081 () Bool)

(assert (=> d!781627 (=> (not res!1140030) (not e!1711081))))

(declare-fun rulesValid!1779 (LexerInterface!4384 List!31416) Bool)

(assert (=> d!781627 (= res!1140030 (rulesValid!1779 thiss!11556 rules!1182))))

(assert (=> d!781627 (= (rulesInvariant!3869 thiss!11556 rules!1182) e!1711081)))

(declare-fun b!2714587 () Bool)

(declare-datatypes ((List!31421 0))(
  ( (Nil!31321) (Cons!31321 (h!36741 String!34952) (t!226237 List!31421)) )
))
(declare-fun noDuplicateTag!1775 (LexerInterface!4384 List!31416 List!31421) Bool)

(assert (=> b!2714587 (= e!1711081 (noDuplicateTag!1775 thiss!11556 rules!1182 Nil!31321))))

(assert (= (and d!781627 res!1140030) b!2714587))

(declare-fun m!3111581 () Bool)

(assert (=> d!781627 m!3111581))

(declare-fun m!3111583 () Bool)

(assert (=> b!2714587 m!3111583))

(assert (=> b!2714275 d!781627))

(declare-fun d!781631 () Bool)

(declare-fun e!1711082 () Bool)

(assert (=> d!781631 e!1711082))

(declare-fun res!1140031 () Bool)

(assert (=> d!781631 (=> (not res!1140031) (not e!1711082))))

(assert (=> d!781631 (= res!1140031 (isBalanced!2966 (prepend!1114 (c!438434 (_1!18116 lt!960249)) (_1!18117 (v!33005 lt!960254)))))))

(declare-fun lt!960430 () BalanceConc!19222)

(assert (=> d!781631 (= lt!960430 (BalanceConc!19223 (prepend!1114 (c!438434 (_1!18116 lt!960249)) (_1!18117 (v!33005 lt!960254)))))))

(assert (=> d!781631 (= (prepend!1112 (_1!18116 lt!960249) (_1!18117 (v!33005 lt!960254))) lt!960430)))

(declare-fun b!2714588 () Bool)

(assert (=> b!2714588 (= e!1711082 (= (list!11847 lt!960430) (Cons!31315 (_1!18117 (v!33005 lt!960254)) (list!11847 (_1!18116 lt!960249)))))))

(assert (= (and d!781631 res!1140031) b!2714588))

(declare-fun m!3111585 () Bool)

(assert (=> d!781631 m!3111585))

(assert (=> d!781631 m!3111585))

(declare-fun m!3111587 () Bool)

(assert (=> d!781631 m!3111587))

(declare-fun m!3111589 () Bool)

(assert (=> b!2714588 m!3111589))

(assert (=> b!2714588 m!3111077))

(assert (=> b!2714285 d!781631))

(declare-fun d!781633 () Bool)

(assert (=> d!781633 (= (isEmpty!17847 (list!11846 (_2!18116 lt!960246))) (is-Nil!31314 (list!11846 (_2!18116 lt!960246))))))

(assert (=> b!2714274 d!781633))

(declare-fun d!781635 () Bool)

(assert (=> d!781635 (= (list!11846 (_2!18116 lt!960246)) (list!11850 (c!438433 (_2!18116 lt!960246))))))

(declare-fun bs!488013 () Bool)

(assert (= bs!488013 d!781635))

(declare-fun m!3111591 () Bool)

(assert (=> bs!488013 m!3111591))

(assert (=> b!2714274 d!781635))

(declare-fun d!781637 () Bool)

(assert (=> d!781637 (= (inv!42483 (tag!5292 (h!36736 rules!1182))) (= (mod (str.len (value!154071 (tag!5292 (h!36736 rules!1182)))) 2) 0))))

(assert (=> b!2714284 d!781637))

(declare-fun d!781645 () Bool)

(declare-fun res!1140034 () Bool)

(declare-fun e!1711085 () Bool)

(assert (=> d!781645 (=> (not res!1140034) (not e!1711085))))

(declare-fun semiInverseModEq!1972 (Int Int) Bool)

(assert (=> d!781645 (= res!1140034 (semiInverseModEq!1972 (toChars!6617 (transformation!4788 (h!36736 rules!1182))) (toValue!6758 (transformation!4788 (h!36736 rules!1182)))))))

(assert (=> d!781645 (= (inv!42488 (transformation!4788 (h!36736 rules!1182))) e!1711085)))

(declare-fun b!2714591 () Bool)

(declare-fun equivClasses!1873 (Int Int) Bool)

(assert (=> b!2714591 (= e!1711085 (equivClasses!1873 (toChars!6617 (transformation!4788 (h!36736 rules!1182))) (toValue!6758 (transformation!4788 (h!36736 rules!1182)))))))

(assert (= (and d!781645 res!1140034) b!2714591))

(declare-fun m!3111601 () Bool)

(assert (=> d!781645 m!3111601))

(declare-fun m!3111603 () Bool)

(assert (=> b!2714591 m!3111603))

(assert (=> b!2714284 d!781645))

(declare-fun d!781649 () Bool)

(assert (=> d!781649 (= (list!11847 acc!331) (list!11851 (c!438434 acc!331)))))

(declare-fun bs!488018 () Bool)

(assert (= bs!488018 d!781649))

(declare-fun m!3111605 () Bool)

(assert (=> bs!488018 m!3111605))

(assert (=> b!2714288 d!781649))

(declare-fun d!781651 () Bool)

(assert (=> d!781651 (= (list!11847 (_1!18116 lt!960238)) (list!11851 (c!438434 (_1!18116 lt!960238))))))

(declare-fun bs!488019 () Bool)

(assert (= bs!488019 d!781651))

(declare-fun m!3111607 () Bool)

(assert (=> bs!488019 m!3111607))

(assert (=> b!2714288 d!781651))

(declare-fun b!2714592 () Bool)

(declare-fun e!1711089 () tuple2!30968)

(assert (=> b!2714592 (= e!1711089 (tuple2!30969 (BalanceConc!19223 Empty!9804) treated!9))))

(declare-fun e!1711087 () Bool)

(declare-fun b!2714593 () Bool)

(declare-fun lt!960432 () tuple2!30968)

(assert (=> b!2714593 (= e!1711087 (= (list!11846 (_2!18116 lt!960432)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 treated!9)))))))

(declare-fun b!2714594 () Bool)

(declare-fun e!1711086 () Bool)

(assert (=> b!2714594 (= e!1711086 (= (list!11846 (_2!18116 lt!960432)) (list!11846 treated!9)))))

(declare-fun b!2714595 () Bool)

(declare-fun e!1711088 () Bool)

(assert (=> b!2714595 (= e!1711088 (not (isEmpty!17851 (_1!18116 lt!960432))))))

(declare-fun b!2714596 () Bool)

(assert (=> b!2714596 (= e!1711086 e!1711088)))

(declare-fun res!1140036 () Bool)

(assert (=> b!2714596 (= res!1140036 (< (size!24159 (_2!18116 lt!960432)) (size!24159 treated!9)))))

(assert (=> b!2714596 (=> (not res!1140036) (not e!1711088))))

(declare-fun d!781653 () Bool)

(assert (=> d!781653 e!1711087))

(declare-fun res!1140037 () Bool)

(assert (=> d!781653 (=> (not res!1140037) (not e!1711087))))

(assert (=> d!781653 (= res!1140037 e!1711086)))

(declare-fun c!438501 () Bool)

(assert (=> d!781653 (= c!438501 (> (size!24160 (_1!18116 lt!960432)) 0))))

(assert (=> d!781653 (= lt!960432 e!1711089)))

(declare-fun c!438500 () Bool)

(declare-fun lt!960431 () Option!6178)

(assert (=> d!781653 (= c!438500 (is-Some!6177 lt!960431))))

(assert (=> d!781653 (= lt!960431 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 treated!9))))

(assert (=> d!781653 (= (lexRec!644 thiss!11556 rules!1182 treated!9) lt!960432)))

(declare-fun b!2714597 () Bool)

(declare-fun res!1140035 () Bool)

(assert (=> b!2714597 (=> (not res!1140035) (not e!1711087))))

(assert (=> b!2714597 (= res!1140035 (= (list!11847 (_1!18116 lt!960432)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 treated!9)))))))

(declare-fun b!2714598 () Bool)

(declare-fun lt!960433 () tuple2!30968)

(assert (=> b!2714598 (= e!1711089 (tuple2!30969 (prepend!1112 (_1!18116 lt!960433) (_1!18117 (v!33005 lt!960431))) (_2!18116 lt!960433)))))

(assert (=> b!2714598 (= lt!960433 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960431))))))

(assert (= (and d!781653 c!438500) b!2714598))

(assert (= (and d!781653 (not c!438500)) b!2714592))

(assert (= (and d!781653 c!438501) b!2714596))

(assert (= (and d!781653 (not c!438501)) b!2714594))

(assert (= (and b!2714596 res!1140036) b!2714595))

(assert (= (and d!781653 res!1140037) b!2714597))

(assert (= (and b!2714597 res!1140035) b!2714593))

(declare-fun m!3111609 () Bool)

(assert (=> b!2714596 m!3111609))

(declare-fun m!3111611 () Bool)

(assert (=> b!2714596 m!3111611))

(declare-fun m!3111613 () Bool)

(assert (=> b!2714598 m!3111613))

(declare-fun m!3111615 () Bool)

(assert (=> b!2714598 m!3111615))

(declare-fun m!3111617 () Bool)

(assert (=> b!2714595 m!3111617))

(declare-fun m!3111619 () Bool)

(assert (=> d!781653 m!3111619))

(declare-fun m!3111621 () Bool)

(assert (=> d!781653 m!3111621))

(declare-fun m!3111623 () Bool)

(assert (=> b!2714594 m!3111623))

(assert (=> b!2714594 m!3111013))

(assert (=> b!2714593 m!3111623))

(assert (=> b!2714593 m!3111013))

(assert (=> b!2714593 m!3111013))

(declare-fun m!3111625 () Bool)

(assert (=> b!2714593 m!3111625))

(declare-fun m!3111627 () Bool)

(assert (=> b!2714597 m!3111627))

(assert (=> b!2714597 m!3111013))

(assert (=> b!2714597 m!3111013))

(assert (=> b!2714597 m!3111625))

(assert (=> b!2714288 d!781653))

(declare-fun d!781655 () Bool)

(declare-fun c!438502 () Bool)

(assert (=> d!781655 (= c!438502 (is-Node!9803 (c!438433 treated!9)))))

(declare-fun e!1711090 () Bool)

(assert (=> d!781655 (= (inv!42486 (c!438433 treated!9)) e!1711090)))

(declare-fun b!2714599 () Bool)

(assert (=> b!2714599 (= e!1711090 (inv!42496 (c!438433 treated!9)))))

(declare-fun b!2714600 () Bool)

(declare-fun e!1711091 () Bool)

(assert (=> b!2714600 (= e!1711090 e!1711091)))

(declare-fun res!1140038 () Bool)

(assert (=> b!2714600 (= res!1140038 (not (is-Leaf!14942 (c!438433 treated!9))))))

(assert (=> b!2714600 (=> res!1140038 e!1711091)))

(declare-fun b!2714601 () Bool)

(assert (=> b!2714601 (= e!1711091 (inv!42497 (c!438433 treated!9)))))

(assert (= (and d!781655 c!438502) b!2714599))

(assert (= (and d!781655 (not c!438502)) b!2714600))

(assert (= (and b!2714600 (not res!1140038)) b!2714601))

(declare-fun m!3111629 () Bool)

(assert (=> b!2714599 m!3111629))

(declare-fun m!3111631 () Bool)

(assert (=> b!2714601 m!3111631))

(assert (=> b!2714277 d!781655))

(declare-fun d!781657 () Bool)

(declare-fun c!438503 () Bool)

(assert (=> d!781657 (= c!438503 (is-Node!9803 (c!438433 totalInput!328)))))

(declare-fun e!1711092 () Bool)

(assert (=> d!781657 (= (inv!42486 (c!438433 totalInput!328)) e!1711092)))

(declare-fun b!2714602 () Bool)

(assert (=> b!2714602 (= e!1711092 (inv!42496 (c!438433 totalInput!328)))))

(declare-fun b!2714603 () Bool)

(declare-fun e!1711093 () Bool)

(assert (=> b!2714603 (= e!1711092 e!1711093)))

(declare-fun res!1140039 () Bool)

(assert (=> b!2714603 (= res!1140039 (not (is-Leaf!14942 (c!438433 totalInput!328))))))

(assert (=> b!2714603 (=> res!1140039 e!1711093)))

(declare-fun b!2714604 () Bool)

(assert (=> b!2714604 (= e!1711093 (inv!42497 (c!438433 totalInput!328)))))

(assert (= (and d!781657 c!438503) b!2714602))

(assert (= (and d!781657 (not c!438503)) b!2714603))

(assert (= (and b!2714603 (not res!1140039)) b!2714604))

(declare-fun m!3111633 () Bool)

(assert (=> b!2714602 m!3111633))

(declare-fun m!3111635 () Bool)

(assert (=> b!2714604 m!3111635))

(assert (=> b!2714287 d!781657))

(declare-fun d!781659 () Bool)

(assert (=> d!781659 (= (list!11847 (_1!18116 lt!960241)) (list!11851 (c!438434 (_1!18116 lt!960241))))))

(declare-fun bs!488020 () Bool)

(assert (= bs!488020 d!781659))

(declare-fun m!3111637 () Bool)

(assert (=> bs!488020 m!3111637))

(assert (=> b!2714291 d!781659))

(declare-fun b!2714605 () Bool)

(declare-fun e!1711097 () tuple2!30968)

(assert (=> b!2714605 (= e!1711097 (tuple2!30969 (BalanceConc!19223 Empty!9804) input!603))))

(declare-fun e!1711095 () Bool)

(declare-fun b!2714606 () Bool)

(declare-fun lt!960435 () tuple2!30968)

(assert (=> b!2714606 (= e!1711095 (= (list!11846 (_2!18116 lt!960435)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 input!603)))))))

(declare-fun b!2714607 () Bool)

(declare-fun e!1711094 () Bool)

(assert (=> b!2714607 (= e!1711094 (= (list!11846 (_2!18116 lt!960435)) (list!11846 input!603)))))

(declare-fun b!2714608 () Bool)

(declare-fun e!1711096 () Bool)

(assert (=> b!2714608 (= e!1711096 (not (isEmpty!17851 (_1!18116 lt!960435))))))

(declare-fun b!2714609 () Bool)

(assert (=> b!2714609 (= e!1711094 e!1711096)))

(declare-fun res!1140041 () Bool)

(assert (=> b!2714609 (= res!1140041 (< (size!24159 (_2!18116 lt!960435)) (size!24159 input!603)))))

(assert (=> b!2714609 (=> (not res!1140041) (not e!1711096))))

(declare-fun d!781661 () Bool)

(assert (=> d!781661 e!1711095))

(declare-fun res!1140042 () Bool)

(assert (=> d!781661 (=> (not res!1140042) (not e!1711095))))

(assert (=> d!781661 (= res!1140042 e!1711094)))

(declare-fun c!438505 () Bool)

(assert (=> d!781661 (= c!438505 (> (size!24160 (_1!18116 lt!960435)) 0))))

(assert (=> d!781661 (= lt!960435 e!1711097)))

(declare-fun c!438504 () Bool)

(declare-fun lt!960434 () Option!6178)

(assert (=> d!781661 (= c!438504 (is-Some!6177 lt!960434))))

(assert (=> d!781661 (= lt!960434 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 input!603))))

(assert (=> d!781661 (= (lexRec!644 thiss!11556 rules!1182 input!603) lt!960435)))

(declare-fun b!2714610 () Bool)

(declare-fun res!1140040 () Bool)

(assert (=> b!2714610 (=> (not res!1140040) (not e!1711095))))

(assert (=> b!2714610 (= res!1140040 (= (list!11847 (_1!18116 lt!960435)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 input!603)))))))

(declare-fun b!2714611 () Bool)

(declare-fun lt!960436 () tuple2!30968)

(assert (=> b!2714611 (= e!1711097 (tuple2!30969 (prepend!1112 (_1!18116 lt!960436) (_1!18117 (v!33005 lt!960434))) (_2!18116 lt!960436)))))

(assert (=> b!2714611 (= lt!960436 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960434))))))

(assert (= (and d!781661 c!438504) b!2714611))

(assert (= (and d!781661 (not c!438504)) b!2714605))

(assert (= (and d!781661 c!438505) b!2714609))

(assert (= (and d!781661 (not c!438505)) b!2714607))

(assert (= (and b!2714609 res!1140041) b!2714608))

(assert (= (and d!781661 res!1140042) b!2714610))

(assert (= (and b!2714610 res!1140040) b!2714606))

(declare-fun m!3111639 () Bool)

(assert (=> b!2714609 m!3111639))

(declare-fun m!3111641 () Bool)

(assert (=> b!2714609 m!3111641))

(declare-fun m!3111643 () Bool)

(assert (=> b!2714611 m!3111643))

(declare-fun m!3111645 () Bool)

(assert (=> b!2714611 m!3111645))

(declare-fun m!3111647 () Bool)

(assert (=> b!2714608 m!3111647))

(declare-fun m!3111649 () Bool)

(assert (=> d!781661 m!3111649))

(assert (=> d!781661 m!3111005))

(declare-fun m!3111651 () Bool)

(assert (=> b!2714607 m!3111651))

(assert (=> b!2714607 m!3111011))

(assert (=> b!2714606 m!3111651))

(assert (=> b!2714606 m!3111011))

(assert (=> b!2714606 m!3111011))

(declare-fun m!3111653 () Bool)

(assert (=> b!2714606 m!3111653))

(declare-fun m!3111655 () Bool)

(assert (=> b!2714610 m!3111655))

(assert (=> b!2714610 m!3111011))

(assert (=> b!2714610 m!3111011))

(assert (=> b!2714610 m!3111653))

(assert (=> b!2714291 d!781661))

(declare-fun lt!960442 () BalanceConc!19222)

(declare-fun b!2714635 () Bool)

(declare-fun e!1711106 () Bool)

(assert (=> b!2714635 (= e!1711106 (= (list!11847 lt!960442) (++!7756 (list!11847 acc!331) (list!11847 (_1!18116 lt!960253)))))))

(declare-fun b!2714632 () Bool)

(declare-fun res!1140058 () Bool)

(assert (=> b!2714632 (=> (not res!1140058) (not e!1711106))))

(declare-fun ++!7762 (Conc!9804 Conc!9804) Conc!9804)

(assert (=> b!2714632 (= res!1140058 (isBalanced!2966 (++!7762 (c!438434 acc!331) (c!438434 (_1!18116 lt!960253)))))))

(declare-fun b!2714633 () Bool)

(declare-fun res!1140057 () Bool)

(assert (=> b!2714633 (=> (not res!1140057) (not e!1711106))))

(declare-fun height!1447 (Conc!9804) Int)

(assert (=> b!2714633 (= res!1140057 (<= (height!1447 (++!7762 (c!438434 acc!331) (c!438434 (_1!18116 lt!960253)))) (+ (max!0 (height!1447 (c!438434 acc!331)) (height!1447 (c!438434 (_1!18116 lt!960253)))) 1)))))

(declare-fun b!2714634 () Bool)

(declare-fun res!1140059 () Bool)

(assert (=> b!2714634 (=> (not res!1140059) (not e!1711106))))

(assert (=> b!2714634 (= res!1140059 (>= (height!1447 (++!7762 (c!438434 acc!331) (c!438434 (_1!18116 lt!960253)))) (max!0 (height!1447 (c!438434 acc!331)) (height!1447 (c!438434 (_1!18116 lt!960253))))))))

(declare-fun d!781663 () Bool)

(assert (=> d!781663 e!1711106))

(declare-fun res!1140060 () Bool)

(assert (=> d!781663 (=> (not res!1140060) (not e!1711106))))

(declare-fun appendAssocInst!684 (Conc!9804 Conc!9804) Bool)

(assert (=> d!781663 (= res!1140060 (appendAssocInst!684 (c!438434 acc!331) (c!438434 (_1!18116 lt!960253))))))

(assert (=> d!781663 (= lt!960442 (BalanceConc!19223 (++!7762 (c!438434 acc!331) (c!438434 (_1!18116 lt!960253)))))))

(assert (=> d!781663 (= (++!7754 acc!331 (_1!18116 lt!960253)) lt!960442)))

(assert (= (and d!781663 res!1140060) b!2714632))

(assert (= (and b!2714632 res!1140058) b!2714633))

(assert (= (and b!2714633 res!1140057) b!2714634))

(assert (= (and b!2714634 res!1140059) b!2714635))

(declare-fun m!3111677 () Bool)

(assert (=> b!2714635 m!3111677))

(assert (=> b!2714635 m!3111093))

(declare-fun m!3111679 () Bool)

(assert (=> b!2714635 m!3111679))

(assert (=> b!2714635 m!3111093))

(assert (=> b!2714635 m!3111679))

(declare-fun m!3111681 () Bool)

(assert (=> b!2714635 m!3111681))

(declare-fun m!3111683 () Bool)

(assert (=> b!2714633 m!3111683))

(declare-fun m!3111685 () Bool)

(assert (=> b!2714633 m!3111685))

(declare-fun m!3111687 () Bool)

(assert (=> b!2714633 m!3111687))

(declare-fun m!3111689 () Bool)

(assert (=> b!2714633 m!3111689))

(assert (=> b!2714633 m!3111689))

(assert (=> b!2714633 m!3111683))

(declare-fun m!3111691 () Bool)

(assert (=> b!2714633 m!3111691))

(assert (=> b!2714633 m!3111685))

(declare-fun m!3111693 () Bool)

(assert (=> d!781663 m!3111693))

(assert (=> d!781663 m!3111685))

(assert (=> b!2714632 m!3111685))

(assert (=> b!2714632 m!3111685))

(declare-fun m!3111695 () Bool)

(assert (=> b!2714632 m!3111695))

(assert (=> b!2714634 m!3111683))

(assert (=> b!2714634 m!3111685))

(assert (=> b!2714634 m!3111687))

(assert (=> b!2714634 m!3111689))

(assert (=> b!2714634 m!3111689))

(assert (=> b!2714634 m!3111683))

(assert (=> b!2714634 m!3111691))

(assert (=> b!2714634 m!3111685))

(assert (=> b!2714291 d!781663))

(declare-fun b!2714636 () Bool)

(declare-fun e!1711110 () tuple2!30968)

(assert (=> b!2714636 (= e!1711110 (tuple2!30969 (BalanceConc!19223 Empty!9804) totalInput!328))))

(declare-fun e!1711108 () Bool)

(declare-fun lt!960444 () tuple2!30968)

(declare-fun b!2714637 () Bool)

(assert (=> b!2714637 (= e!1711108 (= (list!11846 (_2!18116 lt!960444)) (_2!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 totalInput!328)))))))

(declare-fun b!2714638 () Bool)

(declare-fun e!1711107 () Bool)

(assert (=> b!2714638 (= e!1711107 (= (list!11846 (_2!18116 lt!960444)) (list!11846 totalInput!328)))))

(declare-fun b!2714639 () Bool)

(declare-fun e!1711109 () Bool)

(assert (=> b!2714639 (= e!1711109 (not (isEmpty!17851 (_1!18116 lt!960444))))))

(declare-fun b!2714640 () Bool)

(assert (=> b!2714640 (= e!1711107 e!1711109)))

(declare-fun res!1140062 () Bool)

(assert (=> b!2714640 (= res!1140062 (< (size!24159 (_2!18116 lt!960444)) (size!24159 totalInput!328)))))

(assert (=> b!2714640 (=> (not res!1140062) (not e!1711109))))

(declare-fun d!781673 () Bool)

(assert (=> d!781673 e!1711108))

(declare-fun res!1140063 () Bool)

(assert (=> d!781673 (=> (not res!1140063) (not e!1711108))))

(assert (=> d!781673 (= res!1140063 e!1711107)))

(declare-fun c!438513 () Bool)

(assert (=> d!781673 (= c!438513 (> (size!24160 (_1!18116 lt!960444)) 0))))

(assert (=> d!781673 (= lt!960444 e!1711110)))

(declare-fun c!438512 () Bool)

(declare-fun lt!960443 () Option!6178)

(assert (=> d!781673 (= c!438512 (is-Some!6177 lt!960443))))

(assert (=> d!781673 (= lt!960443 (maxPrefixZipperSequence!1032 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!781673 (= (lexRec!644 thiss!11556 rules!1182 totalInput!328) lt!960444)))

(declare-fun b!2714641 () Bool)

(declare-fun res!1140061 () Bool)

(assert (=> b!2714641 (=> (not res!1140061) (not e!1711108))))

(assert (=> b!2714641 (= res!1140061 (= (list!11847 (_1!18116 lt!960444)) (_1!18118 (lexList!1215 thiss!11556 rules!1182 (list!11846 totalInput!328)))))))

(declare-fun b!2714642 () Bool)

(declare-fun lt!960445 () tuple2!30968)

(assert (=> b!2714642 (= e!1711110 (tuple2!30969 (prepend!1112 (_1!18116 lt!960445) (_1!18117 (v!33005 lt!960443))) (_2!18116 lt!960445)))))

(assert (=> b!2714642 (= lt!960445 (lexRec!644 thiss!11556 rules!1182 (_2!18117 (v!33005 lt!960443))))))

(assert (= (and d!781673 c!438512) b!2714642))

(assert (= (and d!781673 (not c!438512)) b!2714636))

(assert (= (and d!781673 c!438513) b!2714640))

(assert (= (and d!781673 (not c!438513)) b!2714638))

(assert (= (and b!2714640 res!1140062) b!2714639))

(assert (= (and d!781673 res!1140063) b!2714641))

(assert (= (and b!2714641 res!1140061) b!2714637))

(declare-fun m!3111697 () Bool)

(assert (=> b!2714640 m!3111697))

(declare-fun m!3111699 () Bool)

(assert (=> b!2714640 m!3111699))

(declare-fun m!3111701 () Bool)

(assert (=> b!2714642 m!3111701))

(declare-fun m!3111703 () Bool)

(assert (=> b!2714642 m!3111703))

(declare-fun m!3111705 () Bool)

(assert (=> b!2714639 m!3111705))

(declare-fun m!3111707 () Bool)

(assert (=> d!781673 m!3111707))

(declare-fun m!3111709 () Bool)

(assert (=> d!781673 m!3111709))

(declare-fun m!3111711 () Bool)

(assert (=> b!2714638 m!3111711))

(assert (=> b!2714638 m!3111009))

(assert (=> b!2714637 m!3111711))

(assert (=> b!2714637 m!3111009))

(assert (=> b!2714637 m!3111009))

(declare-fun m!3111713 () Bool)

(assert (=> b!2714637 m!3111713))

(declare-fun m!3111715 () Bool)

(assert (=> b!2714641 m!3111715))

(assert (=> b!2714641 m!3111009))

(assert (=> b!2714641 m!3111009))

(assert (=> b!2714641 m!3111713))

(assert (=> b!2714291 d!781673))

(declare-fun d!781675 () Bool)

(assert (=> d!781675 (= (list!11847 (++!7754 acc!331 (_1!18116 lt!960253))) (list!11851 (c!438434 (++!7754 acc!331 (_1!18116 lt!960253)))))))

(declare-fun bs!488024 () Bool)

(assert (= bs!488024 d!781675))

(declare-fun m!3111717 () Bool)

(assert (=> bs!488024 m!3111717))

(assert (=> b!2714291 d!781675))

(declare-fun d!781677 () Bool)

(declare-fun c!438519 () Bool)

(assert (=> d!781677 (= c!438519 (is-Node!9804 (c!438434 acc!331)))))

(declare-fun e!1711122 () Bool)

(assert (=> d!781677 (= (inv!42487 (c!438434 acc!331)) e!1711122)))

(declare-fun b!2714659 () Bool)

(declare-fun inv!42502 (Conc!9804) Bool)

(assert (=> b!2714659 (= e!1711122 (inv!42502 (c!438434 acc!331)))))

(declare-fun b!2714660 () Bool)

(declare-fun e!1711123 () Bool)

(assert (=> b!2714660 (= e!1711122 e!1711123)))

(declare-fun res!1140072 () Bool)

(assert (=> b!2714660 (= res!1140072 (not (is-Leaf!14943 (c!438434 acc!331))))))

(assert (=> b!2714660 (=> res!1140072 e!1711123)))

(declare-fun b!2714661 () Bool)

(declare-fun inv!42503 (Conc!9804) Bool)

(assert (=> b!2714661 (= e!1711123 (inv!42503 (c!438434 acc!331)))))

(assert (= (and d!781677 c!438519) b!2714659))

(assert (= (and d!781677 (not c!438519)) b!2714660))

(assert (= (and b!2714660 (not res!1140072)) b!2714661))

(declare-fun m!3111745 () Bool)

(assert (=> b!2714659 m!3111745))

(declare-fun m!3111751 () Bool)

(assert (=> b!2714661 m!3111751))

(assert (=> b!2714280 d!781677))

(declare-fun d!781693 () Bool)

(assert (=> d!781693 (= (inv!42489 treated!9) (isBalanced!2965 (c!438433 treated!9)))))

(declare-fun bs!488030 () Bool)

(assert (= bs!488030 d!781693))

(declare-fun m!3111759 () Bool)

(assert (=> bs!488030 m!3111759))

(assert (=> start!263354 d!781693))

(declare-fun d!781697 () Bool)

(assert (=> d!781697 (= (inv!42489 input!603) (isBalanced!2965 (c!438433 input!603)))))

(declare-fun bs!488031 () Bool)

(assert (= bs!488031 d!781697))

(declare-fun m!3111761 () Bool)

(assert (=> bs!488031 m!3111761))

(assert (=> start!263354 d!781697))

(declare-fun d!781699 () Bool)

(assert (=> d!781699 (= (inv!42489 totalInput!328) (isBalanced!2965 (c!438433 totalInput!328)))))

(declare-fun bs!488032 () Bool)

(assert (= bs!488032 d!781699))

(declare-fun m!3111763 () Bool)

(assert (=> bs!488032 m!3111763))

(assert (=> start!263354 d!781699))

(declare-fun d!781701 () Bool)

(assert (=> d!781701 (= (inv!42490 acc!331) (isBalanced!2966 (c!438434 acc!331)))))

(declare-fun bs!488034 () Bool)

(assert (= bs!488034 d!781701))

(declare-fun m!3111771 () Bool)

(assert (=> bs!488034 m!3111771))

(assert (=> start!263354 d!781701))

(declare-fun d!781707 () Bool)

(assert (=> d!781707 (= (list!11846 (_2!18116 lt!960241)) (list!11850 (c!438433 (_2!18116 lt!960241))))))

(declare-fun bs!488035 () Bool)

(assert (= bs!488035 d!781707))

(declare-fun m!3111773 () Bool)

(assert (=> bs!488035 m!3111773))

(assert (=> b!2714290 d!781707))

(declare-fun d!781709 () Bool)

(assert (=> d!781709 (= (list!11846 (_2!18116 lt!960253)) (list!11850 (c!438433 (_2!18116 lt!960253))))))

(declare-fun bs!488036 () Bool)

(assert (= bs!488036 d!781709))

(declare-fun m!3111775 () Bool)

(assert (=> bs!488036 m!3111775))

(assert (=> b!2714290 d!781709))

(declare-fun b!2714665 () Bool)

(declare-fun e!1711127 () List!31414)

(assert (=> b!2714665 (= e!1711127 lt!960243)))

(declare-fun b!2714667 () Bool)

(declare-fun res!1140076 () Bool)

(declare-fun e!1711128 () Bool)

(assert (=> b!2714667 (=> (not res!1140076) (not e!1711128))))

(declare-fun lt!960452 () List!31414)

(assert (=> b!2714667 (= res!1140076 (= (size!24158 lt!960452) (+ (size!24158 lt!960235) (size!24158 lt!960243))))))

(declare-fun b!2714668 () Bool)

(assert (=> b!2714668 (= e!1711128 (or (not (= lt!960243 Nil!31314)) (= lt!960452 lt!960235)))))

(declare-fun d!781711 () Bool)

(assert (=> d!781711 e!1711128))

(declare-fun res!1140077 () Bool)

(assert (=> d!781711 (=> (not res!1140077) (not e!1711128))))

(assert (=> d!781711 (= res!1140077 (= (content!4433 lt!960452) (set.union (content!4433 lt!960235) (content!4433 lt!960243))))))

(assert (=> d!781711 (= lt!960452 e!1711127)))

(declare-fun c!438520 () Bool)

(assert (=> d!781711 (= c!438520 (is-Nil!31314 lt!960235))))

(assert (=> d!781711 (= (++!7753 lt!960235 lt!960243) lt!960452)))

(declare-fun b!2714666 () Bool)

(assert (=> b!2714666 (= e!1711127 (Cons!31314 (h!36734 lt!960235) (++!7753 (t!226224 lt!960235) lt!960243)))))

(assert (= (and d!781711 c!438520) b!2714665))

(assert (= (and d!781711 (not c!438520)) b!2714666))

(assert (= (and d!781711 res!1140077) b!2714667))

(assert (= (and b!2714667 res!1140076) b!2714668))

(declare-fun m!3111779 () Bool)

(assert (=> b!2714667 m!3111779))

(assert (=> b!2714667 m!3111263))

(declare-fun m!3111781 () Bool)

(assert (=> b!2714667 m!3111781))

(declare-fun m!3111785 () Bool)

(assert (=> d!781711 m!3111785))

(assert (=> d!781711 m!3111269))

(declare-fun m!3111789 () Bool)

(assert (=> d!781711 m!3111789))

(declare-fun m!3111793 () Bool)

(assert (=> b!2714666 m!3111793))

(assert (=> b!2714289 d!781711))

(declare-fun d!781717 () Bool)

(assert (=> d!781717 (= (list!11846 totalInput!328) (list!11850 (c!438433 totalInput!328)))))

(declare-fun bs!488037 () Bool)

(assert (= bs!488037 d!781717))

(declare-fun m!3111795 () Bool)

(assert (=> bs!488037 m!3111795))

(assert (=> b!2714289 d!781717))

(declare-fun d!781719 () Bool)

(assert (=> d!781719 (= (list!11846 input!603) (list!11850 (c!438433 input!603)))))

(declare-fun bs!488038 () Bool)

(assert (= bs!488038 d!781719))

(declare-fun m!3111797 () Bool)

(assert (=> bs!488038 m!3111797))

(assert (=> b!2714289 d!781719))

(declare-fun d!781721 () Bool)

(assert (=> d!781721 (= (list!11846 treated!9) (list!11850 (c!438433 treated!9)))))

(declare-fun bs!488039 () Bool)

(assert (= bs!488039 d!781721))

(declare-fun m!3111799 () Bool)

(assert (=> bs!488039 m!3111799))

(assert (=> b!2714289 d!781721))

(declare-fun b!2714689 () Bool)

(declare-fun tp!857370 () Bool)

(declare-fun e!1711141 () Bool)

(declare-fun tp!857371 () Bool)

(assert (=> b!2714689 (= e!1711141 (and (inv!42486 (left!24079 (c!438433 treated!9))) tp!857370 (inv!42486 (right!24409 (c!438433 treated!9))) tp!857371))))

(declare-fun b!2714691 () Bool)

(declare-fun e!1711140 () Bool)

(declare-fun tp!857369 () Bool)

(assert (=> b!2714691 (= e!1711140 tp!857369)))

(declare-fun b!2714690 () Bool)

(declare-fun inv!42504 (IArray!19611) Bool)

(assert (=> b!2714690 (= e!1711141 (and (inv!42504 (xs!12866 (c!438433 treated!9))) e!1711140))))

(assert (=> b!2714277 (= tp!857333 (and (inv!42486 (c!438433 treated!9)) e!1711141))))

(assert (= (and b!2714277 (is-Node!9803 (c!438433 treated!9))) b!2714689))

(assert (= b!2714690 b!2714691))

(assert (= (and b!2714277 (is-Leaf!14942 (c!438433 treated!9))) b!2714690))

(declare-fun m!3111835 () Bool)

(assert (=> b!2714689 m!3111835))

(declare-fun m!3111837 () Bool)

(assert (=> b!2714689 m!3111837))

(declare-fun m!3111839 () Bool)

(assert (=> b!2714690 m!3111839))

(assert (=> b!2714277 m!3111019))

(declare-fun tp!857373 () Bool)

(declare-fun tp!857374 () Bool)

(declare-fun e!1711143 () Bool)

(declare-fun b!2714692 () Bool)

(assert (=> b!2714692 (= e!1711143 (and (inv!42486 (left!24079 (c!438433 totalInput!328))) tp!857373 (inv!42486 (right!24409 (c!438433 totalInput!328))) tp!857374))))

(declare-fun b!2714694 () Bool)

(declare-fun e!1711142 () Bool)

(declare-fun tp!857372 () Bool)

(assert (=> b!2714694 (= e!1711142 tp!857372)))

(declare-fun b!2714693 () Bool)

(assert (=> b!2714693 (= e!1711143 (and (inv!42504 (xs!12866 (c!438433 totalInput!328))) e!1711142))))

(assert (=> b!2714287 (= tp!857329 (and (inv!42486 (c!438433 totalInput!328)) e!1711143))))

(assert (= (and b!2714287 (is-Node!9803 (c!438433 totalInput!328))) b!2714692))

(assert (= b!2714693 b!2714694))

(assert (= (and b!2714287 (is-Leaf!14942 (c!438433 totalInput!328))) b!2714693))

(declare-fun m!3111841 () Bool)

(assert (=> b!2714692 m!3111841))

(declare-fun m!3111843 () Bool)

(assert (=> b!2714692 m!3111843))

(declare-fun m!3111845 () Bool)

(assert (=> b!2714693 m!3111845))

(assert (=> b!2714287 m!3111091))

(declare-fun tp!857376 () Bool)

(declare-fun e!1711145 () Bool)

(declare-fun b!2714695 () Bool)

(declare-fun tp!857377 () Bool)

(assert (=> b!2714695 (= e!1711145 (and (inv!42486 (left!24079 (c!438433 input!603))) tp!857376 (inv!42486 (right!24409 (c!438433 input!603))) tp!857377))))

(declare-fun b!2714697 () Bool)

(declare-fun e!1711144 () Bool)

(declare-fun tp!857375 () Bool)

(assert (=> b!2714697 (= e!1711144 tp!857375)))

(declare-fun b!2714696 () Bool)

(assert (=> b!2714696 (= e!1711145 (and (inv!42504 (xs!12866 (c!438433 input!603))) e!1711144))))

(assert (=> b!2714292 (= tp!857335 (and (inv!42486 (c!438433 input!603)) e!1711145))))

(assert (= (and b!2714292 (is-Node!9803 (c!438433 input!603))) b!2714695))

(assert (= b!2714696 b!2714697))

(assert (= (and b!2714292 (is-Leaf!14942 (c!438433 input!603))) b!2714696))

(declare-fun m!3111847 () Bool)

(assert (=> b!2714695 m!3111847))

(declare-fun m!3111849 () Bool)

(assert (=> b!2714695 m!3111849))

(declare-fun m!3111851 () Bool)

(assert (=> b!2714696 m!3111851))

(assert (=> b!2714292 m!3111023))

(declare-fun b!2714706 () Bool)

(declare-fun tp!857384 () Bool)

(declare-fun e!1711150 () Bool)

(declare-fun tp!857386 () Bool)

(assert (=> b!2714706 (= e!1711150 (and (inv!42487 (left!24080 (c!438434 acc!331))) tp!857386 (inv!42487 (right!24410 (c!438434 acc!331))) tp!857384))))

(declare-fun b!2714708 () Bool)

(declare-fun e!1711151 () Bool)

(declare-fun tp!857385 () Bool)

(assert (=> b!2714708 (= e!1711151 tp!857385)))

(declare-fun b!2714707 () Bool)

(declare-fun inv!42505 (IArray!19613) Bool)

(assert (=> b!2714707 (= e!1711150 (and (inv!42505 (xs!12867 (c!438434 acc!331))) e!1711151))))

(assert (=> b!2714280 (= tp!857328 (and (inv!42487 (c!438434 acc!331)) e!1711150))))

(assert (= (and b!2714280 (is-Node!9804 (c!438434 acc!331))) b!2714706))

(assert (= b!2714707 b!2714708))

(assert (= (and b!2714280 (is-Leaf!14943 (c!438434 acc!331))) b!2714707))

(declare-fun m!3111853 () Bool)

(assert (=> b!2714706 m!3111853))

(declare-fun m!3111855 () Bool)

(assert (=> b!2714706 m!3111855))

(declare-fun m!3111857 () Bool)

(assert (=> b!2714707 m!3111857))

(assert (=> b!2714280 m!3111089))

(declare-fun b!2714719 () Bool)

(declare-fun b_free!76525 () Bool)

(declare-fun b_next!77229 () Bool)

(assert (=> b!2714719 (= b_free!76525 (not b_next!77229))))

(declare-fun tp!857397 () Bool)

(declare-fun b_and!200271 () Bool)

(assert (=> b!2714719 (= tp!857397 b_and!200271)))

(declare-fun b_free!76527 () Bool)

(declare-fun b_next!77231 () Bool)

(assert (=> b!2714719 (= b_free!76527 (not b_next!77231))))

(declare-fun t!226234 () Bool)

(declare-fun tb!151823 () Bool)

(assert (=> (and b!2714719 (= (toChars!6617 (transformation!4788 (h!36736 (t!226226 rules!1182)))) (toChars!6617 (transformation!4788 (rule!7214 (_1!18117 (v!33005 lt!960254)))))) t!226234) tb!151823))

(declare-fun result!187536 () Bool)

(assert (= result!187536 result!187526))

(assert (=> d!781603 t!226234))

(declare-fun tp!857395 () Bool)

(declare-fun b_and!200273 () Bool)

(assert (=> b!2714719 (= tp!857395 (and (=> t!226234 result!187536) b_and!200273))))

(declare-fun e!1711163 () Bool)

(assert (=> b!2714719 (= e!1711163 (and tp!857397 tp!857395))))

(declare-fun tp!857396 () Bool)

(declare-fun b!2714718 () Bool)

(declare-fun e!1711161 () Bool)

(assert (=> b!2714718 (= e!1711161 (and tp!857396 (inv!42483 (tag!5292 (h!36736 (t!226226 rules!1182)))) (inv!42488 (transformation!4788 (h!36736 (t!226226 rules!1182)))) e!1711163))))

(declare-fun b!2714717 () Bool)

(declare-fun e!1711160 () Bool)

(declare-fun tp!857398 () Bool)

(assert (=> b!2714717 (= e!1711160 (and e!1711161 tp!857398))))

(assert (=> b!2714279 (= tp!857330 e!1711160)))

(assert (= b!2714718 b!2714719))

(assert (= b!2714717 b!2714718))

(assert (= (and b!2714279 (is-Cons!31316 (t!226226 rules!1182))) b!2714717))

(declare-fun m!3111859 () Bool)

(assert (=> b!2714718 m!3111859))

(declare-fun m!3111861 () Bool)

(assert (=> b!2714718 m!3111861))

(declare-fun b!2714733 () Bool)

(declare-fun e!1711166 () Bool)

(declare-fun tp!857410 () Bool)

(declare-fun tp!857413 () Bool)

(assert (=> b!2714733 (= e!1711166 (and tp!857410 tp!857413))))

(assert (=> b!2714284 (= tp!857332 e!1711166)))

(declare-fun b!2714731 () Bool)

(declare-fun tp!857409 () Bool)

(declare-fun tp!857411 () Bool)

(assert (=> b!2714731 (= e!1711166 (and tp!857409 tp!857411))))

(declare-fun b!2714732 () Bool)

(declare-fun tp!857412 () Bool)

(assert (=> b!2714732 (= e!1711166 tp!857412)))

(declare-fun b!2714730 () Bool)

(declare-fun tp_is_empty!13875 () Bool)

(assert (=> b!2714730 (= e!1711166 tp_is_empty!13875)))

(assert (= (and b!2714284 (is-ElementMatch!7940 (regex!4788 (h!36736 rules!1182)))) b!2714730))

(assert (= (and b!2714284 (is-Concat!12951 (regex!4788 (h!36736 rules!1182)))) b!2714731))

(assert (= (and b!2714284 (is-Star!7940 (regex!4788 (h!36736 rules!1182)))) b!2714732))

(assert (= (and b!2714284 (is-Union!7940 (regex!4788 (h!36736 rules!1182)))) b!2714733))

(push 1)

(assert (not b!2714444))

(assert (not b!2714635))

(assert (not d!781661))

(assert (not d!781575))

(assert (not b!2714572))

(assert (not d!781551))

(assert b_and!200271)

(assert (not b!2714490))

(assert (not d!781609))

(assert (not b!2714695))

(assert (not b!2714367))

(assert (not b!2714593))

(assert (not b!2714449))

(assert (not b_next!77231))

(assert (not d!781653))

(assert (not b!2714707))

(assert (not b!2714718))

(assert (not b!2714602))

(assert (not d!781717))

(assert (not b!2714708))

(assert (not b!2714558))

(assert (not b!2714610))

(assert (not d!781699))

(assert (not b!2714387))

(assert (not b!2714689))

(assert (not b!2714488))

(assert (not b!2714485))

(assert (not bm!175022))

(assert (not d!781605))

(assert tp_is_empty!13875)

(assert (not b!2714464))

(assert (not b!2714666))

(assert (not b!2714484))

(assert (not b!2714634))

(assert (not b!2714691))

(assert (not b!2714578))

(assert (not b!2714426))

(assert (not d!781627))

(assert (not d!781549))

(assert (not b!2714659))

(assert (not b!2714452))

(assert (not b!2714594))

(assert (not b!2714560))

(assert (not b!2714292))

(assert (not d!781693))

(assert (not b!2714588))

(assert (not b!2714598))

(assert (not b!2714693))

(assert (not b!2714563))

(assert (not b!2714606))

(assert (not d!781579))

(assert (not b!2714453))

(assert (not b!2714696))

(assert (not b!2714577))

(assert (not d!781649))

(assert (not b!2714640))

(assert (not d!781567))

(assert (not d!781651))

(assert (not b!2714434))

(assert (not d!781707))

(assert (not b!2714717))

(assert (not b!2714611))

(assert (not b!2714587))

(assert (not b!2714597))

(assert b_and!200269)

(assert (not b!2714609))

(assert (not tb!151821))

(assert (not d!781625))

(assert (not d!781675))

(assert (not b!2714539))

(assert (not b!2714694))

(assert (not b!2714667))

(assert (not b!2714697))

(assert (not d!781709))

(assert (not d!781613))

(assert (not b!2714641))

(assert (not b!2714430))

(assert (not d!781569))

(assert (not d!781587))

(assert (not b!2714280))

(assert (not b!2714633))

(assert (not d!781663))

(assert (not b!2714445))

(assert (not d!781645))

(assert (not d!781545))

(assert (not b!2714466))

(assert (not d!781615))

(assert (not b!2714446))

(assert (not b!2714536))

(assert (not b!2714428))

(assert (not b!2714561))

(assert (not b!2714489))

(assert (not b!2714368))

(assert (not b!2714639))

(assert (not d!781601))

(assert (not b!2714483))

(assert (not b!2714596))

(assert (not d!781583))

(assert (not d!781571))

(assert (not b!2714384))

(assert (not d!781711))

(assert (not d!781603))

(assert (not d!781607))

(assert b_and!200273)

(assert (not d!781673))

(assert (not b!2714642))

(assert (not b!2714599))

(assert (not b!2714431))

(assert (not b!2714562))

(assert (not b!2714638))

(assert (not d!781631))

(assert (not b!2714604))

(assert (not b!2714448))

(assert (not d!781543))

(assert (not b!2714493))

(assert (not d!781589))

(assert (not b!2714380))

(assert (not b!2714661))

(assert (not b!2714608))

(assert (not b!2714732))

(assert (not d!781697))

(assert (not b!2714581))

(assert (not b!2714496))

(assert (not b!2714443))

(assert (not bm!175023))

(assert (not b!2714637))

(assert (not b!2714438))

(assert (not b!2714632))

(assert (not b!2714601))

(assert (not d!781581))

(assert (not b_lambda!82523))

(assert (not d!781721))

(assert (not d!781547))

(assert (not d!781611))

(assert (not b!2714582))

(assert (not b!2714552))

(assert (not d!781635))

(assert (not b!2714570))

(assert (not b!2714559))

(assert (not b!2714427))

(assert (not d!781701))

(assert (not b!2714731))

(assert (not d!781591))

(assert (not b!2714379))

(assert (not b!2714706))

(assert (not b!2714607))

(assert (not b!2714545))

(assert (not b!2714595))

(assert (not b_next!77229))

(assert (not b!2714441))

(assert (not b!2714591))

(assert (not b!2714733))

(assert (not b!2714463))

(assert (not b!2714388))

(assert (not b!2714690))

(assert (not b!2714437))

(assert (not b!2714579))

(assert (not b!2714287))

(assert (not b!2714433))

(assert (not d!781565))

(assert (not d!781623))

(assert (not b!2714442))

(assert (not b!2714383))

(assert (not b_next!77223))

(assert (not b!2714692))

(assert (not b!2714429))

(assert (not b!2714495))

(assert b_and!200261)

(assert (not d!781585))

(assert (not b!2714277))

(assert (not d!781577))

(assert (not b!2714487))

(assert (not b!2714583))

(assert (not d!781553))

(assert (not d!781719))

(assert (not b!2714537))

(assert (not d!781659))

(assert (not b_next!77221))

(assert (not d!781573))

(assert (not b!2714465))

(assert (not b!2714584))

(check-sat)

(pop 1)

(push 1)

(assert b_and!200271)

(assert (not b_next!77231))

(assert b_and!200269)

(assert b_and!200273)

(assert (not b_next!77229))

(assert (not b_next!77223))

(assert b_and!200261)

(assert (not b_next!77221))

(check-sat)

(pop 1)

