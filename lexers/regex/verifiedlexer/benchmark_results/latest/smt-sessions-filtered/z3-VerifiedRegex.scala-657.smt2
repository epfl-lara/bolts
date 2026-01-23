; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24022 () Bool)

(assert start!24022)

(declare-fun b!224958 () Bool)

(declare-fun b_free!8409 () Bool)

(declare-fun b_next!8409 () Bool)

(assert (=> b!224958 (= b_free!8409 (not b_next!8409))))

(declare-fun tp!93090 () Bool)

(declare-fun b_and!16701 () Bool)

(assert (=> b!224958 (= tp!93090 b_and!16701)))

(declare-fun b_free!8411 () Bool)

(declare-fun b_next!8411 () Bool)

(assert (=> b!224958 (= b_free!8411 (not b_next!8411))))

(declare-fun tp!93095 () Bool)

(declare-fun b_and!16703 () Bool)

(assert (=> b!224958 (= tp!93095 b_and!16703)))

(declare-fun b!224925 () Bool)

(declare-fun b_free!8413 () Bool)

(declare-fun b_next!8413 () Bool)

(assert (=> b!224925 (= b_free!8413 (not b_next!8413))))

(declare-fun tp!93091 () Bool)

(declare-fun b_and!16705 () Bool)

(assert (=> b!224925 (= tp!93091 b_and!16705)))

(declare-fun b_free!8415 () Bool)

(declare-fun b_next!8415 () Bool)

(assert (=> b!224925 (= b_free!8415 (not b_next!8415))))

(declare-fun tp!93088 () Bool)

(declare-fun b_and!16707 () Bool)

(assert (=> b!224925 (= tp!93088 b_and!16707)))

(declare-fun b!224932 () Bool)

(declare-fun b_free!8417 () Bool)

(declare-fun b_next!8417 () Bool)

(assert (=> b!224932 (= b_free!8417 (not b_next!8417))))

(declare-fun tp!93094 () Bool)

(declare-fun b_and!16709 () Bool)

(assert (=> b!224932 (= tp!93094 b_and!16709)))

(declare-fun b_free!8419 () Bool)

(declare-fun b_next!8419 () Bool)

(assert (=> b!224932 (= b_free!8419 (not b_next!8419))))

(declare-fun tp!93087 () Bool)

(declare-fun b_and!16711 () Bool)

(assert (=> b!224932 (= tp!93087 b_and!16711)))

(declare-fun bs!23950 () Bool)

(declare-fun b!224965 () Bool)

(declare-fun b!224924 () Bool)

(assert (= bs!23950 (and b!224965 b!224924)))

(declare-fun lambda!7012 () Int)

(declare-fun lambda!7011 () Int)

(assert (=> bs!23950 (not (= lambda!7012 lambda!7011))))

(declare-fun b!224976 () Bool)

(declare-fun e!138845 () Bool)

(assert (=> b!224976 (= e!138845 true)))

(declare-fun b!224975 () Bool)

(declare-fun e!138844 () Bool)

(assert (=> b!224975 (= e!138844 e!138845)))

(declare-fun b!224974 () Bool)

(declare-fun e!138843 () Bool)

(assert (=> b!224974 (= e!138843 e!138844)))

(assert (=> b!224965 e!138843))

(assert (= b!224975 b!224976))

(assert (= b!224974 b!224975))

(declare-datatypes ((List!3421 0))(
  ( (Nil!3411) (Cons!3411 (h!8808 (_ BitVec 16)) (t!33173 List!3421)) )
))
(declare-datatypes ((TokenValue!659 0))(
  ( (FloatLiteralValue!1318 (text!5058 List!3421)) (TokenValueExt!658 (__x!2805 Int)) (Broken!3295 (value!22444 List!3421)) (Object!668) (End!659) (Def!659) (Underscore!659) (Match!659) (Else!659) (Error!659) (Case!659) (If!659) (Extends!659) (Abstract!659) (Class!659) (Val!659) (DelimiterValue!1318 (del!719 List!3421)) (KeywordValue!665 (value!22445 List!3421)) (CommentValue!1318 (value!22446 List!3421)) (WhitespaceValue!1318 (value!22447 List!3421)) (IndentationValue!659 (value!22448 List!3421)) (String!4374) (Int32!659) (Broken!3296 (value!22449 List!3421)) (Boolean!660) (Unit!3835) (OperatorValue!662 (op!719 List!3421)) (IdentifierValue!1318 (value!22450 List!3421)) (IdentifierValue!1319 (value!22451 List!3421)) (WhitespaceValue!1319 (value!22452 List!3421)) (True!1318) (False!1318) (Broken!3297 (value!22453 List!3421)) (Broken!3298 (value!22454 List!3421)) (True!1319) (RightBrace!659) (RightBracket!659) (Colon!659) (Null!659) (Comma!659) (LeftBracket!659) (False!1319) (LeftBrace!659) (ImaginaryLiteralValue!659 (text!5059 List!3421)) (StringLiteralValue!1977 (value!22455 List!3421)) (EOFValue!659 (value!22456 List!3421)) (IdentValue!659 (value!22457 List!3421)) (DelimiterValue!1319 (value!22458 List!3421)) (DedentValue!659 (value!22459 List!3421)) (NewLineValue!659 (value!22460 List!3421)) (IntegerValue!1977 (value!22461 (_ BitVec 32)) (text!5060 List!3421)) (IntegerValue!1978 (value!22462 Int) (text!5061 List!3421)) (Times!659) (Or!659) (Equal!659) (Minus!659) (Broken!3299 (value!22463 List!3421)) (And!659) (Div!659) (LessEqual!659) (Mod!659) (Concat!1520) (Not!659) (Plus!659) (SpaceValue!659 (value!22464 List!3421)) (IntegerValue!1979 (value!22465 Int) (text!5062 List!3421)) (StringLiteralValue!1978 (text!5063 List!3421)) (FloatLiteralValue!1319 (text!5064 List!3421)) (BytesLiteralValue!659 (value!22466 List!3421)) (CommentValue!1319 (value!22467 List!3421)) (StringLiteralValue!1979 (value!22468 List!3421)) (ErrorTokenValue!659 (msg!720 List!3421)) )
))
(declare-datatypes ((C!2644 0))(
  ( (C!2645 (val!1208 Int)) )
))
(declare-datatypes ((List!3422 0))(
  ( (Nil!3412) (Cons!3412 (h!8809 C!2644) (t!33174 List!3422)) )
))
(declare-datatypes ((IArray!2193 0))(
  ( (IArray!2194 (innerList!1154 List!3422)) )
))
(declare-datatypes ((Conc!1096 0))(
  ( (Node!1096 (left!2745 Conc!1096) (right!3075 Conc!1096) (csize!2422 Int) (cheight!1307 Int)) (Leaf!1754 (xs!3691 IArray!2193) (csize!2423 Int)) (Empty!1096) )
))
(declare-datatypes ((BalanceConc!2200 0))(
  ( (BalanceConc!2201 (c!43241 Conc!1096)) )
))
(declare-datatypes ((TokenValueInjection!1090 0))(
  ( (TokenValueInjection!1091 (toValue!1332 Int) (toChars!1191 Int)) )
))
(declare-datatypes ((String!4375 0))(
  ( (String!4376 (value!22469 String)) )
))
(declare-datatypes ((Regex!861 0))(
  ( (ElementMatch!861 (c!43242 C!2644)) (Concat!1521 (regOne!2234 Regex!861) (regTwo!2234 Regex!861)) (EmptyExpr!861) (Star!861 (reg!1190 Regex!861)) (EmptyLang!861) (Union!861 (regOne!2235 Regex!861) (regTwo!2235 Regex!861)) )
))
(declare-datatypes ((Rule!1074 0))(
  ( (Rule!1075 (regex!637 Regex!861) (tag!833 String!4375) (isSeparator!637 Bool) (transformation!637 TokenValueInjection!1090)) )
))
(declare-datatypes ((List!3423 0))(
  ( (Nil!3413) (Cons!3413 (h!8810 Rule!1074) (t!33175 List!3423)) )
))
(declare-fun rules!1920 () List!3423)

(get-info :version)

(assert (= (and b!224965 ((_ is Cons!3413) rules!1920)) b!224974))

(declare-fun order!2345 () Int)

(declare-fun order!2347 () Int)

(declare-fun dynLambda!1573 (Int Int) Int)

(declare-fun dynLambda!1574 (Int Int) Int)

(assert (=> b!224976 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7012))))

(declare-fun order!2349 () Int)

(declare-fun dynLambda!1575 (Int Int) Int)

(assert (=> b!224976 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7012))))

(assert (=> b!224965 true))

(declare-fun b!224916 () Bool)

(declare-fun res!103344 () Bool)

(declare-fun e!138800 () Bool)

(assert (=> b!224916 (=> (not res!103344) (not e!138800))))

(declare-datatypes ((LexerInterface!523 0))(
  ( (LexerInterfaceExt!520 (__x!2806 Int)) (Lexer!521) )
))
(declare-fun thiss!17480 () LexerInterface!523)

(declare-fun rulesInvariant!489 (LexerInterface!523 List!3423) Bool)

(assert (=> b!224916 (= res!103344 (rulesInvariant!489 thiss!17480 rules!1920))))

(declare-fun b!224917 () Bool)

(declare-fun e!138813 () Bool)

(declare-fun e!138802 () Bool)

(assert (=> b!224917 (= e!138813 e!138802)))

(declare-fun res!103352 () Bool)

(assert (=> b!224917 (=> (not res!103352) (not e!138802))))

(declare-fun lt!86517 () List!3422)

(declare-fun lt!86530 () List!3422)

(assert (=> b!224917 (= res!103352 (= lt!86517 lt!86530))))

(declare-datatypes ((Token!1018 0))(
  ( (Token!1019 (value!22470 TokenValue!659) (rule!1190 Rule!1074) (size!2734 Int) (originalCharacters!680 List!3422)) )
))
(declare-datatypes ((List!3424 0))(
  ( (Nil!3414) (Cons!3414 (h!8811 Token!1018) (t!33176 List!3424)) )
))
(declare-datatypes ((IArray!2195 0))(
  ( (IArray!2196 (innerList!1155 List!3424)) )
))
(declare-datatypes ((Conc!1097 0))(
  ( (Node!1097 (left!2746 Conc!1097) (right!3076 Conc!1097) (csize!2424 Int) (cheight!1308 Int)) (Leaf!1755 (xs!3692 IArray!2195) (csize!2425 Int)) (Empty!1097) )
))
(declare-datatypes ((BalanceConc!2202 0))(
  ( (BalanceConc!2203 (c!43243 Conc!1097)) )
))
(declare-fun lt!86492 () BalanceConc!2202)

(declare-fun separatorToken!170 () Token!1018)

(declare-fun list!1304 (BalanceConc!2200) List!3422)

(declare-fun printWithSeparatorTokenWhenNeededRec!206 (LexerInterface!523 List!3423 BalanceConc!2202 Token!1018 Int) BalanceConc!2200)

(assert (=> b!224917 (= lt!86530 (list!1304 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 lt!86492 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3424)

(declare-fun printWithSeparatorTokenWhenNeededList!216 (LexerInterface!523 List!3423 List!3424 Token!1018) List!3422)

(assert (=> b!224917 (= lt!86517 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!224918 () Bool)

(declare-datatypes ((Unit!3836 0))(
  ( (Unit!3837) )
))
(declare-fun e!138804 () Unit!3836)

(declare-fun Unit!3838 () Unit!3836)

(assert (=> b!224918 (= e!138804 Unit!3838)))

(declare-fun b!224919 () Bool)

(declare-fun e!138816 () Bool)

(declare-fun e!138835 () Bool)

(assert (=> b!224919 (= e!138816 e!138835)))

(declare-fun res!103337 () Bool)

(assert (=> b!224919 (=> res!103337 e!138835)))

(declare-fun lt!86503 () Bool)

(assert (=> b!224919 (= res!103337 (not lt!86503))))

(declare-fun e!138803 () Bool)

(assert (=> b!224919 e!138803))

(declare-fun res!103339 () Bool)

(assert (=> b!224919 (=> (not res!103339) (not e!138803))))

(declare-datatypes ((tuple2!3650 0))(
  ( (tuple2!3651 (_1!2041 Token!1018) (_2!2041 List!3422)) )
))
(declare-fun lt!86484 () tuple2!3650)

(assert (=> b!224919 (= res!103339 (= (_1!2041 lt!86484) (h!8811 tokens!465)))))

(declare-datatypes ((Option!603 0))(
  ( (None!602) (Some!602 (v!14277 tuple2!3650)) )
))
(declare-fun lt!86527 () Option!603)

(declare-fun get!1065 (Option!603) tuple2!3650)

(assert (=> b!224919 (= lt!86484 (get!1065 lt!86527))))

(declare-fun isDefined!454 (Option!603) Bool)

(assert (=> b!224919 (isDefined!454 lt!86527)))

(declare-fun lt!86516 () List!3422)

(declare-fun maxPrefix!253 (LexerInterface!523 List!3423 List!3422) Option!603)

(assert (=> b!224919 (= lt!86527 (maxPrefix!253 thiss!17480 rules!1920 lt!86516))))

(declare-fun b!224920 () Bool)

(declare-fun matchR!199 (Regex!861 List!3422) Bool)

(assert (=> b!224920 (= e!138803 (matchR!199 (regex!637 (rule!1190 (h!8811 tokens!465))) lt!86516))))

(declare-fun b!224921 () Bool)

(declare-fun e!138807 () Bool)

(declare-fun e!138826 () Bool)

(assert (=> b!224921 (= e!138807 e!138826)))

(declare-fun res!103351 () Bool)

(assert (=> b!224921 (=> (not res!103351) (not e!138826))))

(declare-fun lt!86514 () Rule!1074)

(declare-fun lt!86491 () List!3422)

(assert (=> b!224921 (= res!103351 (matchR!199 (regex!637 lt!86514) lt!86491))))

(declare-datatypes ((Option!604 0))(
  ( (None!603) (Some!603 (v!14278 Rule!1074)) )
))
(declare-fun lt!86520 () Option!604)

(declare-fun get!1066 (Option!604) Rule!1074)

(assert (=> b!224921 (= lt!86514 (get!1066 lt!86520))))

(declare-fun b!224922 () Bool)

(declare-fun res!103333 () Bool)

(assert (=> b!224922 (=> (not res!103333) (not e!138813))))

(declare-fun rulesProduceIndividualToken!272 (LexerInterface!523 List!3423 Token!1018) Bool)

(assert (=> b!224922 (= res!103333 (rulesProduceIndividualToken!272 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!224923 () Bool)

(declare-fun e!138801 () Bool)

(declare-fun lt!86508 () Option!603)

(declare-fun head!769 (List!3424) Token!1018)

(assert (=> b!224923 (= e!138801 (= (_1!2041 (get!1065 lt!86508)) (head!769 tokens!465)))))

(declare-fun res!103332 () Bool)

(assert (=> b!224924 (=> (not res!103332) (not e!138813))))

(declare-fun forall!765 (List!3424 Int) Bool)

(assert (=> b!224924 (= res!103332 (forall!765 tokens!465 lambda!7011))))

(declare-fun e!138827 () Bool)

(assert (=> b!224925 (= e!138827 (and tp!93091 tp!93088))))

(declare-fun b!224926 () Bool)

(declare-fun res!103343 () Bool)

(declare-fun e!138821 () Bool)

(assert (=> b!224926 (=> (not res!103343) (not e!138821))))

(declare-datatypes ((tuple2!3652 0))(
  ( (tuple2!3653 (_1!2042 BalanceConc!2202) (_2!2042 BalanceConc!2200)) )
))
(declare-fun lt!86486 () tuple2!3652)

(declare-fun apply!602 (BalanceConc!2202 Int) Token!1018)

(assert (=> b!224926 (= res!103343 (= (apply!602 (_1!2042 lt!86486) 0) separatorToken!170))))

(declare-fun b!224927 () Bool)

(declare-fun e!138812 () Bool)

(declare-fun lt!86500 () tuple2!3652)

(declare-fun isEmpty!1918 (BalanceConc!2200) Bool)

(assert (=> b!224927 (= e!138812 (isEmpty!1918 (_2!2042 lt!86500)))))

(declare-fun b!224928 () Bool)

(declare-fun e!138799 () Bool)

(assert (=> b!224928 (= e!138799 false)))

(declare-fun b!224929 () Bool)

(declare-fun Unit!3839 () Unit!3836)

(assert (=> b!224929 (= e!138804 Unit!3839)))

(assert (=> b!224929 false))

(declare-fun tp!93089 () Bool)

(declare-fun b!224930 () Bool)

(declare-fun e!138834 () Bool)

(declare-fun e!138811 () Bool)

(declare-fun inv!21 (TokenValue!659) Bool)

(assert (=> b!224930 (= e!138811 (and (inv!21 (value!22470 (h!8811 tokens!465))) e!138834 tp!93089))))

(declare-fun b!224931 () Bool)

(declare-fun res!103353 () Bool)

(assert (=> b!224931 (=> (not res!103353) (not e!138802))))

(declare-fun seqFromList!651 (List!3422) BalanceConc!2200)

(assert (=> b!224931 (= res!103353 (= (list!1304 (seqFromList!651 lt!86517)) lt!86530))))

(declare-fun e!138822 () Bool)

(assert (=> b!224932 (= e!138822 (and tp!93094 tp!93087))))

(declare-fun b!224933 () Bool)

(assert (=> b!224933 (= e!138800 e!138813)))

(declare-fun res!103348 () Bool)

(assert (=> b!224933 (=> (not res!103348) (not e!138813))))

(declare-fun rulesProduceEachTokenIndividually!315 (LexerInterface!523 List!3423 BalanceConc!2202) Bool)

(assert (=> b!224933 (= res!103348 (rulesProduceEachTokenIndividually!315 thiss!17480 rules!1920 lt!86492))))

(declare-fun seqFromList!652 (List!3424) BalanceConc!2202)

(assert (=> b!224933 (= lt!86492 (seqFromList!652 tokens!465))))

(declare-fun b!224934 () Bool)

(declare-fun res!103328 () Bool)

(assert (=> b!224934 (=> (not res!103328) (not e!138813))))

(declare-fun sepAndNonSepRulesDisjointChars!226 (List!3423 List!3423) Bool)

(assert (=> b!224934 (= res!103328 (sepAndNonSepRulesDisjointChars!226 rules!1920 rules!1920))))

(declare-fun b!224935 () Bool)

(declare-fun e!138820 () Unit!3836)

(declare-fun Unit!3840 () Unit!3836)

(assert (=> b!224935 (= e!138820 Unit!3840)))

(declare-fun b!224936 () Bool)

(declare-fun e!138824 () Bool)

(assert (=> b!224936 (= e!138802 (not e!138824))))

(declare-fun res!103346 () Bool)

(assert (=> b!224936 (=> res!103346 e!138824)))

(declare-fun lt!86499 () List!3422)

(declare-fun lt!86522 () BalanceConc!2200)

(assert (=> b!224936 (= res!103346 (not (= lt!86499 (list!1304 lt!86522))))))

(assert (=> b!224936 (= lt!86522 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 (seqFromList!652 (t!33176 tokens!465)) separatorToken!170 0))))

(declare-fun lt!86495 () List!3422)

(declare-fun lt!86519 () List!3422)

(assert (=> b!224936 (= lt!86495 lt!86519)))

(declare-fun lt!86502 () List!3422)

(declare-fun ++!854 (List!3422 List!3422) List!3422)

(assert (=> b!224936 (= lt!86519 (++!854 lt!86516 lt!86502))))

(assert (=> b!224936 (= lt!86495 (++!854 (++!854 lt!86516 lt!86491) lt!86499))))

(declare-fun lt!86521 () Unit!3836)

(declare-fun lemmaConcatAssociativity!338 (List!3422 List!3422 List!3422) Unit!3836)

(assert (=> b!224936 (= lt!86521 (lemmaConcatAssociativity!338 lt!86516 lt!86491 lt!86499))))

(declare-fun charsOf!292 (Token!1018) BalanceConc!2200)

(assert (=> b!224936 (= lt!86516 (list!1304 (charsOf!292 (h!8811 tokens!465))))))

(assert (=> b!224936 (= lt!86502 (++!854 lt!86491 lt!86499))))

(assert (=> b!224936 (= lt!86499 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170))))

(assert (=> b!224936 (= lt!86491 (list!1304 (charsOf!292 separatorToken!170)))))

(declare-fun b!224937 () Bool)

(declare-fun e!138815 () Bool)

(declare-fun tp!93098 () Bool)

(declare-fun inv!4263 (String!4375) Bool)

(declare-fun inv!4266 (TokenValueInjection!1090) Bool)

(assert (=> b!224937 (= e!138815 (and tp!93098 (inv!4263 (tag!833 (rule!1190 separatorToken!170))) (inv!4266 (transformation!637 (rule!1190 separatorToken!170))) e!138827))))

(declare-fun b!224938 () Bool)

(assert (=> b!224938 (= e!138821 (isEmpty!1918 (_2!2042 lt!86486)))))

(declare-fun e!138823 () Bool)

(declare-fun b!224939 () Bool)

(assert (=> b!224939 (= e!138823 (not (= lt!86517 (++!854 lt!86516 lt!86499))))))

(declare-fun e!138830 () Bool)

(declare-fun b!224940 () Bool)

(declare-fun tp!93099 () Bool)

(assert (=> b!224940 (= e!138834 (and tp!93099 (inv!4263 (tag!833 (rule!1190 (h!8811 tokens!465)))) (inv!4266 (transformation!637 (rule!1190 (h!8811 tokens!465)))) e!138830))))

(declare-fun b!224941 () Bool)

(declare-fun res!103326 () Bool)

(declare-fun e!138809 () Bool)

(assert (=> b!224941 (=> res!103326 e!138809)))

(declare-fun isEmpty!1919 (BalanceConc!2202) Bool)

(declare-fun lex!323 (LexerInterface!523 List!3423 BalanceConc!2200) tuple2!3652)

(assert (=> b!224941 (= res!103326 (isEmpty!1919 (_1!2042 (lex!323 thiss!17480 rules!1920 (seqFromList!651 lt!86516)))))))

(declare-fun b!224942 () Bool)

(declare-fun e!138817 () Bool)

(declare-fun e!138805 () Bool)

(assert (=> b!224942 (= e!138817 e!138805)))

(declare-fun res!103325 () Bool)

(assert (=> b!224942 (=> (not res!103325) (not e!138805))))

(declare-fun lt!86531 () Rule!1074)

(declare-fun lt!86485 () List!3422)

(assert (=> b!224942 (= res!103325 (matchR!199 (regex!637 lt!86531) lt!86485))))

(declare-fun lt!86483 () Option!604)

(assert (=> b!224942 (= lt!86531 (get!1066 lt!86483))))

(declare-fun b!224943 () Bool)

(assert (=> b!224943 (= e!138826 (= (rule!1190 separatorToken!170) lt!86514))))

(declare-fun b!224944 () Bool)

(declare-fun e!138831 () Bool)

(assert (=> b!224944 (= e!138831 e!138801)))

(declare-fun res!103334 () Bool)

(assert (=> b!224944 (=> (not res!103334) (not e!138801))))

(assert (=> b!224944 (= res!103334 (isDefined!454 lt!86508))))

(assert (=> b!224944 (= lt!86508 (maxPrefix!253 thiss!17480 rules!1920 lt!86517))))

(declare-fun b!224945 () Bool)

(declare-fun e!138829 () Bool)

(assert (=> b!224945 (= e!138829 (forall!765 (t!33176 tokens!465) lambda!7011))))

(declare-fun b!224946 () Bool)

(declare-fun e!138825 () Bool)

(assert (=> b!224946 (= e!138824 e!138825)))

(declare-fun res!103354 () Bool)

(assert (=> b!224946 (=> res!103354 e!138825)))

(assert (=> b!224946 (= res!103354 e!138823)))

(declare-fun res!103329 () Bool)

(assert (=> b!224946 (=> (not res!103329) (not e!138823))))

(assert (=> b!224946 (= res!103329 (not lt!86503))))

(assert (=> b!224946 (= lt!86503 (= lt!86517 lt!86519))))

(declare-fun b!224947 () Bool)

(assert (=> b!224947 (= e!138825 e!138809)))

(declare-fun res!103341 () Bool)

(assert (=> b!224947 (=> res!103341 e!138809)))

(declare-fun lt!86496 () List!3422)

(declare-fun lt!86509 () List!3422)

(assert (=> b!224947 (= res!103341 (or (not (= lt!86496 lt!86509)) (not (= lt!86509 lt!86516)) (not (= lt!86496 lt!86516))))))

(declare-fun printList!207 (LexerInterface!523 List!3424) List!3422)

(assert (=> b!224947 (= lt!86509 (printList!207 thiss!17480 (Cons!3414 (h!8811 tokens!465) Nil!3414)))))

(declare-fun lt!86515 () BalanceConc!2200)

(assert (=> b!224947 (= lt!86496 (list!1304 lt!86515))))

(declare-fun lt!86488 () BalanceConc!2202)

(declare-fun printTailRec!217 (LexerInterface!523 BalanceConc!2202 Int BalanceConc!2200) BalanceConc!2200)

(assert (=> b!224947 (= lt!86515 (printTailRec!217 thiss!17480 lt!86488 0 (BalanceConc!2201 Empty!1096)))))

(declare-fun print!254 (LexerInterface!523 BalanceConc!2202) BalanceConc!2200)

(assert (=> b!224947 (= lt!86515 (print!254 thiss!17480 lt!86488))))

(declare-fun singletonSeq!189 (Token!1018) BalanceConc!2202)

(assert (=> b!224947 (= lt!86488 (singletonSeq!189 (h!8811 tokens!465)))))

(declare-fun b!224948 () Bool)

(declare-fun res!103347 () Bool)

(assert (=> b!224948 (=> res!103347 e!138809)))

(assert (=> b!224948 (= res!103347 (not (rulesProduceIndividualToken!272 thiss!17480 rules!1920 (h!8811 tokens!465))))))

(declare-fun b!224949 () Bool)

(declare-fun Unit!3841 () Unit!3836)

(assert (=> b!224949 (= e!138820 Unit!3841)))

(declare-fun lt!86528 () Unit!3836)

(declare-fun lt!86532 () Token!1018)

(declare-fun lt!86501 () C!2644)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!30 (LexerInterface!523 List!3423 List!3423 Rule!1074 Rule!1074 C!2644) Unit!3836)

(assert (=> b!224949 (= lt!86528 (lemmaSepRuleNotContainsCharContainedInANonSepRule!30 thiss!17480 rules!1920 rules!1920 (rule!1190 lt!86532) (rule!1190 separatorToken!170) lt!86501))))

(assert (=> b!224949 false))

(declare-fun b!224950 () Bool)

(declare-fun res!103357 () Bool)

(assert (=> b!224950 (=> (not res!103357) (not e!138803))))

(declare-fun isEmpty!1920 (List!3422) Bool)

(assert (=> b!224950 (= res!103357 (isEmpty!1920 (_2!2041 lt!86484)))))

(declare-fun e!138819 () Bool)

(declare-fun b!224951 () Bool)

(declare-fun tp!93096 () Bool)

(assert (=> b!224951 (= e!138819 (and tp!93096 (inv!4263 (tag!833 (h!8810 rules!1920))) (inv!4266 (transformation!637 (h!8810 rules!1920))) e!138822))))

(declare-fun b!224952 () Bool)

(assert (=> b!224952 (= e!138835 e!138829)))

(declare-fun res!103336 () Bool)

(assert (=> b!224952 (=> res!103336 e!138829)))

(declare-fun lt!86510 () List!3424)

(declare-fun filter!31 (List!3424 Int) List!3424)

(assert (=> b!224952 (= res!103336 (not (= (filter!31 lt!86510 lambda!7011) (t!33176 tokens!465))))))

(assert (=> b!224952 (= (filter!31 lt!86510 lambda!7011) (t!33176 tokens!465))))

(declare-fun list!1305 (BalanceConc!2202) List!3424)

(assert (=> b!224952 (= lt!86510 (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 lt!86522))))))

(declare-fun lt!86494 () Unit!3836)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!22 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> b!224952 (= lt!86494 (theoremInvertabilityFromTokensSepTokenWhenNeeded!22 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170))))

(declare-fun lt!86498 () Option!603)

(assert (=> b!224952 (= lt!86498 (Some!602 (tuple2!3651 separatorToken!170 lt!86499)))))

(declare-fun lt!86482 () Unit!3836)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!28 (LexerInterface!523 List!3423 Token!1018 Rule!1074 List!3422 Rule!1074) Unit!3836)

(assert (=> b!224952 (= lt!86482 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!28 thiss!17480 rules!1920 separatorToken!170 (rule!1190 separatorToken!170) lt!86499 (rule!1190 lt!86532)))))

(declare-fun lt!86512 () Unit!3836)

(assert (=> b!224952 (= lt!86512 e!138820)))

(declare-fun c!43238 () Bool)

(declare-fun contains!604 (List!3422 C!2644) Bool)

(declare-fun usedCharacters!42 (Regex!861) List!3422)

(assert (=> b!224952 (= c!43238 (contains!604 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170))) lt!86501))))

(declare-fun head!770 (List!3422) C!2644)

(assert (=> b!224952 (= lt!86501 (head!770 lt!86499))))

(declare-fun lt!86487 () Unit!3836)

(declare-fun e!138828 () Unit!3836)

(assert (=> b!224952 (= lt!86487 e!138828)))

(declare-fun c!43239 () Bool)

(declare-fun lt!86529 () C!2644)

(assert (=> b!224952 (= c!43239 (not (contains!604 (usedCharacters!42 (regex!637 (rule!1190 lt!86532))) lt!86529)))))

(assert (=> b!224952 (= lt!86529 (head!770 lt!86485))))

(assert (=> b!224952 e!138817))

(declare-fun res!103356 () Bool)

(assert (=> b!224952 (=> (not res!103356) (not e!138817))))

(declare-fun isDefined!455 (Option!604) Bool)

(assert (=> b!224952 (= res!103356 (isDefined!455 lt!86483))))

(declare-fun getRuleFromTag!78 (LexerInterface!523 List!3423 String!4375) Option!604)

(assert (=> b!224952 (= lt!86483 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 lt!86532))))))

(declare-fun lt!86505 () Unit!3836)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!78 (LexerInterface!523 List!3423 List!3422 Token!1018) Unit!3836)

(assert (=> b!224952 (= lt!86505 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!78 thiss!17480 rules!1920 lt!86485 lt!86532))))

(assert (=> b!224952 (= lt!86485 (list!1304 (charsOf!292 lt!86532)))))

(declare-fun lt!86518 () Unit!3836)

(declare-fun forallContained!204 (List!3424 Int Token!1018) Unit!3836)

(assert (=> b!224952 (= lt!86518 (forallContained!204 tokens!465 lambda!7012 lt!86532))))

(assert (=> b!224952 e!138812))

(declare-fun res!103355 () Bool)

(assert (=> b!224952 (=> (not res!103355) (not e!138812))))

(declare-fun size!2735 (BalanceConc!2202) Int)

(assert (=> b!224952 (= res!103355 (= (size!2735 (_1!2042 lt!86500)) 1))))

(declare-fun lt!86523 () BalanceConc!2200)

(assert (=> b!224952 (= lt!86500 (lex!323 thiss!17480 rules!1920 lt!86523))))

(declare-fun lt!86506 () BalanceConc!2202)

(assert (=> b!224952 (= lt!86523 (printTailRec!217 thiss!17480 lt!86506 0 (BalanceConc!2201 Empty!1096)))))

(assert (=> b!224952 (= lt!86523 (print!254 thiss!17480 lt!86506))))

(assert (=> b!224952 (= lt!86506 (singletonSeq!189 lt!86532))))

(assert (=> b!224952 e!138807))

(declare-fun res!103350 () Bool)

(assert (=> b!224952 (=> (not res!103350) (not e!138807))))

(assert (=> b!224952 (= res!103350 (isDefined!455 lt!86520))))

(assert (=> b!224952 (= lt!86520 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 separatorToken!170))))))

(declare-fun lt!86490 () Unit!3836)

(assert (=> b!224952 (= lt!86490 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!78 thiss!17480 rules!1920 lt!86491 separatorToken!170))))

(assert (=> b!224952 e!138821))

(declare-fun res!103335 () Bool)

(assert (=> b!224952 (=> (not res!103335) (not e!138821))))

(assert (=> b!224952 (= res!103335 (= (size!2735 (_1!2042 lt!86486)) 1))))

(declare-fun lt!86524 () BalanceConc!2200)

(assert (=> b!224952 (= lt!86486 (lex!323 thiss!17480 rules!1920 lt!86524))))

(declare-fun lt!86511 () BalanceConc!2202)

(assert (=> b!224952 (= lt!86524 (printTailRec!217 thiss!17480 lt!86511 0 (BalanceConc!2201 Empty!1096)))))

(assert (=> b!224952 (= lt!86524 (print!254 thiss!17480 lt!86511))))

(assert (=> b!224952 (= lt!86511 (singletonSeq!189 separatorToken!170))))

(assert (=> b!224952 (rulesProduceIndividualToken!272 thiss!17480 rules!1920 lt!86532)))

(declare-fun lt!86489 () Unit!3836)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!90 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> b!224952 (= lt!86489 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!90 thiss!17480 rules!1920 tokens!465 lt!86532))))

(assert (=> b!224952 (= lt!86532 (head!769 (t!33176 tokens!465)))))

(declare-fun lt!86493 () Unit!3836)

(assert (=> b!224952 (= lt!86493 e!138804)))

(declare-fun c!43240 () Bool)

(declare-fun isEmpty!1921 (List!3424) Bool)

(assert (=> b!224952 (= c!43240 (isEmpty!1921 (t!33176 tokens!465)))))

(assert (=> b!224952 (= lt!86498 (maxPrefix!253 thiss!17480 rules!1920 lt!86502))))

(declare-fun lt!86497 () tuple2!3650)

(assert (=> b!224952 (= lt!86502 (_2!2041 lt!86497))))

(declare-fun lt!86504 () Unit!3836)

(declare-fun lemmaSamePrefixThenSameSuffix!158 (List!3422 List!3422 List!3422 List!3422 List!3422) Unit!3836)

(assert (=> b!224952 (= lt!86504 (lemmaSamePrefixThenSameSuffix!158 lt!86516 lt!86502 lt!86516 (_2!2041 lt!86497) lt!86517))))

(assert (=> b!224952 (= lt!86497 (get!1065 (maxPrefix!253 thiss!17480 rules!1920 lt!86517)))))

(declare-fun isPrefix!333 (List!3422 List!3422) Bool)

(assert (=> b!224952 (isPrefix!333 lt!86516 lt!86519)))

(declare-fun lt!86525 () Unit!3836)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!228 (List!3422 List!3422) Unit!3836)

(assert (=> b!224952 (= lt!86525 (lemmaConcatTwoListThenFirstIsPrefix!228 lt!86516 lt!86502))))

(assert (=> b!224952 e!138831))

(declare-fun res!103349 () Bool)

(assert (=> b!224952 (=> res!103349 e!138831)))

(assert (=> b!224952 (= res!103349 (isEmpty!1921 tokens!465))))

(declare-fun lt!86507 () Unit!3836)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!98 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> b!224952 (= lt!86507 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!98 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!224953 () Bool)

(declare-fun Unit!3842 () Unit!3836)

(assert (=> b!224953 (= e!138828 Unit!3842)))

(declare-fun lt!86526 () Unit!3836)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!36 (Regex!861 List!3422 C!2644) Unit!3836)

(assert (=> b!224953 (= lt!86526 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!36 (regex!637 (rule!1190 lt!86532)) lt!86485 lt!86529))))

(declare-fun res!103327 () Bool)

(assert (=> b!224953 (= res!103327 (not (matchR!199 (regex!637 (rule!1190 lt!86532)) lt!86485)))))

(assert (=> b!224953 (=> (not res!103327) (not e!138799))))

(assert (=> b!224953 e!138799))

(declare-fun b!224954 () Bool)

(declare-fun e!138833 () Bool)

(declare-fun tp!93097 () Bool)

(assert (=> b!224954 (= e!138833 (and e!138819 tp!93097))))

(declare-fun b!224955 () Bool)

(declare-fun res!103345 () Bool)

(assert (=> b!224955 (=> (not res!103345) (not e!138813))))

(assert (=> b!224955 (= res!103345 ((_ is Cons!3414) tokens!465))))

(declare-fun e!138808 () Bool)

(declare-fun b!224956 () Bool)

(declare-fun tp!93092 () Bool)

(declare-fun inv!4267 (Token!1018) Bool)

(assert (=> b!224956 (= e!138808 (and (inv!4267 (h!8811 tokens!465)) e!138811 tp!93092))))

(declare-fun b!224957 () Bool)

(assert (=> b!224957 (= e!138805 (= (rule!1190 lt!86532) lt!86531))))

(assert (=> b!224958 (= e!138830 (and tp!93090 tp!93095))))

(declare-fun b!224959 () Bool)

(declare-fun tp!93093 () Bool)

(declare-fun e!138818 () Bool)

(assert (=> b!224959 (= e!138818 (and (inv!21 (value!22470 separatorToken!170)) e!138815 tp!93093))))

(declare-fun b!224960 () Bool)

(declare-fun res!103338 () Bool)

(assert (=> b!224960 (=> (not res!103338) (not e!138813))))

(assert (=> b!224960 (= res!103338 (isSeparator!637 (rule!1190 separatorToken!170)))))

(declare-fun b!224961 () Bool)

(declare-fun res!103358 () Bool)

(assert (=> b!224961 (=> res!103358 e!138829)))

(declare-fun rulesProduceEachTokenIndividuallyList!175 (LexerInterface!523 List!3423 List!3424) Bool)

(assert (=> b!224961 (= res!103358 (not (rulesProduceEachTokenIndividuallyList!175 thiss!17480 rules!1920 (t!33176 tokens!465))))))

(declare-fun res!103331 () Bool)

(assert (=> start!24022 (=> (not res!103331) (not e!138800))))

(assert (=> start!24022 (= res!103331 ((_ is Lexer!521) thiss!17480))))

(assert (=> start!24022 e!138800))

(assert (=> start!24022 true))

(assert (=> start!24022 e!138833))

(assert (=> start!24022 (and (inv!4267 separatorToken!170) e!138818)))

(assert (=> start!24022 e!138808))

(declare-fun b!224962 () Bool)

(declare-fun res!103340 () Bool)

(assert (=> b!224962 (=> (not res!103340) (not e!138800))))

(declare-fun isEmpty!1922 (List!3423) Bool)

(assert (=> b!224962 (= res!103340 (not (isEmpty!1922 rules!1920)))))

(declare-fun b!224963 () Bool)

(declare-fun Unit!3843 () Unit!3836)

(assert (=> b!224963 (= e!138828 Unit!3843)))

(declare-fun b!224964 () Bool)

(declare-fun res!103342 () Bool)

(assert (=> b!224964 (=> (not res!103342) (not e!138812))))

(assert (=> b!224964 (= res!103342 (= (apply!602 (_1!2042 lt!86500) 0) lt!86532))))

(assert (=> b!224965 (= e!138809 e!138816)))

(declare-fun res!103330 () Bool)

(assert (=> b!224965 (=> res!103330 e!138816)))

(declare-datatypes ((tuple2!3654 0))(
  ( (tuple2!3655 (_1!2043 Token!1018) (_2!2043 BalanceConc!2200)) )
))
(declare-datatypes ((Option!605 0))(
  ( (None!604) (Some!604 (v!14279 tuple2!3654)) )
))
(declare-fun isDefined!456 (Option!605) Bool)

(declare-fun maxPrefixZipperSequence!216 (LexerInterface!523 List!3423 BalanceConc!2200) Option!605)

(assert (=> b!224965 (= res!103330 (not (isDefined!456 (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))

(declare-fun lt!86513 () Unit!3836)

(assert (=> b!224965 (= lt!86513 (forallContained!204 tokens!465 lambda!7012 (h!8811 tokens!465)))))

(assert (=> b!224965 (= lt!86516 (originalCharacters!680 (h!8811 tokens!465)))))

(assert (= (and start!24022 res!103331) b!224962))

(assert (= (and b!224962 res!103340) b!224916))

(assert (= (and b!224916 res!103344) b!224933))

(assert (= (and b!224933 res!103348) b!224922))

(assert (= (and b!224922 res!103333) b!224960))

(assert (= (and b!224960 res!103338) b!224924))

(assert (= (and b!224924 res!103332) b!224934))

(assert (= (and b!224934 res!103328) b!224955))

(assert (= (and b!224955 res!103345) b!224917))

(assert (= (and b!224917 res!103352) b!224931))

(assert (= (and b!224931 res!103353) b!224936))

(assert (= (and b!224936 (not res!103346)) b!224946))

(assert (= (and b!224946 res!103329) b!224939))

(assert (= (and b!224946 (not res!103354)) b!224947))

(assert (= (and b!224947 (not res!103341)) b!224948))

(assert (= (and b!224948 (not res!103347)) b!224941))

(assert (= (and b!224941 (not res!103326)) b!224965))

(assert (= (and b!224965 (not res!103330)) b!224919))

(assert (= (and b!224919 res!103339) b!224950))

(assert (= (and b!224950 res!103357) b!224920))

(assert (= (and b!224919 (not res!103337)) b!224952))

(assert (= (and b!224952 (not res!103349)) b!224944))

(assert (= (and b!224944 res!103334) b!224923))

(assert (= (and b!224952 c!43240) b!224929))

(assert (= (and b!224952 (not c!43240)) b!224918))

(assert (= (and b!224952 res!103335) b!224926))

(assert (= (and b!224926 res!103343) b!224938))

(assert (= (and b!224952 res!103350) b!224921))

(assert (= (and b!224921 res!103351) b!224943))

(assert (= (and b!224952 res!103355) b!224964))

(assert (= (and b!224964 res!103342) b!224927))

(assert (= (and b!224952 res!103356) b!224942))

(assert (= (and b!224942 res!103325) b!224957))

(assert (= (and b!224952 c!43239) b!224953))

(assert (= (and b!224952 (not c!43239)) b!224963))

(assert (= (and b!224953 res!103327) b!224928))

(assert (= (and b!224952 c!43238) b!224949))

(assert (= (and b!224952 (not c!43238)) b!224935))

(assert (= (and b!224952 (not res!103336)) b!224961))

(assert (= (and b!224961 (not res!103358)) b!224945))

(assert (= b!224951 b!224932))

(assert (= b!224954 b!224951))

(assert (= (and start!24022 ((_ is Cons!3413) rules!1920)) b!224954))

(assert (= b!224937 b!224925))

(assert (= b!224959 b!224937))

(assert (= start!24022 b!224959))

(assert (= b!224940 b!224958))

(assert (= b!224930 b!224940))

(assert (= b!224956 b!224930))

(assert (= (and start!24022 ((_ is Cons!3414) tokens!465)) b!224956))

(declare-fun m!263763 () Bool)

(assert (=> b!224962 m!263763))

(declare-fun m!263765 () Bool)

(assert (=> b!224947 m!263765))

(declare-fun m!263767 () Bool)

(assert (=> b!224947 m!263767))

(declare-fun m!263769 () Bool)

(assert (=> b!224947 m!263769))

(declare-fun m!263771 () Bool)

(assert (=> b!224947 m!263771))

(declare-fun m!263773 () Bool)

(assert (=> b!224947 m!263773))

(declare-fun m!263775 () Bool)

(assert (=> b!224959 m!263775))

(declare-fun m!263777 () Bool)

(assert (=> b!224950 m!263777))

(declare-fun m!263779 () Bool)

(assert (=> b!224926 m!263779))

(declare-fun m!263781 () Bool)

(assert (=> b!224949 m!263781))

(declare-fun m!263783 () Bool)

(assert (=> b!224930 m!263783))

(declare-fun m!263785 () Bool)

(assert (=> b!224916 m!263785))

(declare-fun m!263787 () Bool)

(assert (=> b!224924 m!263787))

(declare-fun m!263789 () Bool)

(assert (=> b!224934 m!263789))

(declare-fun m!263791 () Bool)

(assert (=> b!224933 m!263791))

(declare-fun m!263793 () Bool)

(assert (=> b!224933 m!263793))

(declare-fun m!263795 () Bool)

(assert (=> b!224920 m!263795))

(declare-fun m!263797 () Bool)

(assert (=> b!224940 m!263797))

(declare-fun m!263799 () Bool)

(assert (=> b!224940 m!263799))

(declare-fun m!263801 () Bool)

(assert (=> b!224937 m!263801))

(declare-fun m!263803 () Bool)

(assert (=> b!224937 m!263803))

(declare-fun m!263805 () Bool)

(assert (=> b!224956 m!263805))

(declare-fun m!263807 () Bool)

(assert (=> b!224938 m!263807))

(declare-fun m!263809 () Bool)

(assert (=> b!224923 m!263809))

(declare-fun m!263811 () Bool)

(assert (=> b!224923 m!263811))

(declare-fun m!263813 () Bool)

(assert (=> b!224922 m!263813))

(declare-fun m!263815 () Bool)

(assert (=> b!224942 m!263815))

(declare-fun m!263817 () Bool)

(assert (=> b!224942 m!263817))

(declare-fun m!263819 () Bool)

(assert (=> b!224917 m!263819))

(assert (=> b!224917 m!263819))

(declare-fun m!263821 () Bool)

(assert (=> b!224917 m!263821))

(declare-fun m!263823 () Bool)

(assert (=> b!224917 m!263823))

(declare-fun m!263825 () Bool)

(assert (=> b!224936 m!263825))

(declare-fun m!263827 () Bool)

(assert (=> b!224936 m!263827))

(declare-fun m!263829 () Bool)

(assert (=> b!224936 m!263829))

(declare-fun m!263831 () Bool)

(assert (=> b!224936 m!263831))

(declare-fun m!263833 () Bool)

(assert (=> b!224936 m!263833))

(declare-fun m!263835 () Bool)

(assert (=> b!224936 m!263835))

(declare-fun m!263837 () Bool)

(assert (=> b!224936 m!263837))

(declare-fun m!263839 () Bool)

(assert (=> b!224936 m!263839))

(assert (=> b!224936 m!263825))

(declare-fun m!263841 () Bool)

(assert (=> b!224936 m!263841))

(declare-fun m!263843 () Bool)

(assert (=> b!224936 m!263843))

(assert (=> b!224936 m!263833))

(declare-fun m!263845 () Bool)

(assert (=> b!224936 m!263845))

(assert (=> b!224936 m!263827))

(declare-fun m!263847 () Bool)

(assert (=> b!224936 m!263847))

(assert (=> b!224936 m!263837))

(declare-fun m!263849 () Bool)

(assert (=> b!224936 m!263849))

(declare-fun m!263851 () Bool)

(assert (=> b!224951 m!263851))

(declare-fun m!263853 () Bool)

(assert (=> b!224951 m!263853))

(declare-fun m!263855 () Bool)

(assert (=> b!224952 m!263855))

(declare-fun m!263857 () Bool)

(assert (=> b!224952 m!263857))

(declare-fun m!263859 () Bool)

(assert (=> b!224952 m!263859))

(declare-fun m!263861 () Bool)

(assert (=> b!224952 m!263861))

(declare-fun m!263863 () Bool)

(assert (=> b!224952 m!263863))

(declare-fun m!263865 () Bool)

(assert (=> b!224952 m!263865))

(declare-fun m!263867 () Bool)

(assert (=> b!224952 m!263867))

(declare-fun m!263869 () Bool)

(assert (=> b!224952 m!263869))

(declare-fun m!263871 () Bool)

(assert (=> b!224952 m!263871))

(declare-fun m!263873 () Bool)

(assert (=> b!224952 m!263873))

(declare-fun m!263875 () Bool)

(assert (=> b!224952 m!263875))

(declare-fun m!263877 () Bool)

(assert (=> b!224952 m!263877))

(declare-fun m!263879 () Bool)

(assert (=> b!224952 m!263879))

(declare-fun m!263881 () Bool)

(assert (=> b!224952 m!263881))

(declare-fun m!263883 () Bool)

(assert (=> b!224952 m!263883))

(declare-fun m!263885 () Bool)

(assert (=> b!224952 m!263885))

(declare-fun m!263887 () Bool)

(assert (=> b!224952 m!263887))

(declare-fun m!263889 () Bool)

(assert (=> b!224952 m!263889))

(declare-fun m!263891 () Bool)

(assert (=> b!224952 m!263891))

(declare-fun m!263893 () Bool)

(assert (=> b!224952 m!263893))

(declare-fun m!263895 () Bool)

(assert (=> b!224952 m!263895))

(declare-fun m!263897 () Bool)

(assert (=> b!224952 m!263897))

(declare-fun m!263899 () Bool)

(assert (=> b!224952 m!263899))

(declare-fun m!263901 () Bool)

(assert (=> b!224952 m!263901))

(declare-fun m!263903 () Bool)

(assert (=> b!224952 m!263903))

(declare-fun m!263905 () Bool)

(assert (=> b!224952 m!263905))

(declare-fun m!263907 () Bool)

(assert (=> b!224952 m!263907))

(declare-fun m!263909 () Bool)

(assert (=> b!224952 m!263909))

(assert (=> b!224952 m!263867))

(declare-fun m!263911 () Bool)

(assert (=> b!224952 m!263911))

(declare-fun m!263913 () Bool)

(assert (=> b!224952 m!263913))

(declare-fun m!263915 () Bool)

(assert (=> b!224952 m!263915))

(declare-fun m!263917 () Bool)

(assert (=> b!224952 m!263917))

(declare-fun m!263919 () Bool)

(assert (=> b!224952 m!263919))

(assert (=> b!224952 m!263885))

(declare-fun m!263921 () Bool)

(assert (=> b!224952 m!263921))

(declare-fun m!263923 () Bool)

(assert (=> b!224952 m!263923))

(assert (=> b!224952 m!263869))

(declare-fun m!263925 () Bool)

(assert (=> b!224952 m!263925))

(declare-fun m!263927 () Bool)

(assert (=> b!224952 m!263927))

(assert (=> b!224952 m!263863))

(declare-fun m!263929 () Bool)

(assert (=> b!224952 m!263929))

(assert (=> b!224952 m!263909))

(declare-fun m!263931 () Bool)

(assert (=> b!224952 m!263931))

(declare-fun m!263933 () Bool)

(assert (=> b!224952 m!263933))

(declare-fun m!263935 () Bool)

(assert (=> b!224952 m!263935))

(declare-fun m!263937 () Bool)

(assert (=> b!224952 m!263937))

(declare-fun m!263939 () Bool)

(assert (=> b!224961 m!263939))

(declare-fun m!263941 () Bool)

(assert (=> b!224927 m!263941))

(declare-fun m!263943 () Bool)

(assert (=> b!224948 m!263943))

(declare-fun m!263945 () Bool)

(assert (=> b!224921 m!263945))

(declare-fun m!263947 () Bool)

(assert (=> b!224921 m!263947))

(declare-fun m!263949 () Bool)

(assert (=> b!224919 m!263949))

(declare-fun m!263951 () Bool)

(assert (=> b!224919 m!263951))

(declare-fun m!263953 () Bool)

(assert (=> b!224919 m!263953))

(declare-fun m!263955 () Bool)

(assert (=> b!224939 m!263955))

(declare-fun m!263957 () Bool)

(assert (=> b!224953 m!263957))

(declare-fun m!263959 () Bool)

(assert (=> b!224953 m!263959))

(declare-fun m!263961 () Bool)

(assert (=> b!224941 m!263961))

(assert (=> b!224941 m!263961))

(declare-fun m!263963 () Bool)

(assert (=> b!224941 m!263963))

(declare-fun m!263965 () Bool)

(assert (=> b!224941 m!263965))

(declare-fun m!263967 () Bool)

(assert (=> b!224944 m!263967))

(assert (=> b!224944 m!263867))

(declare-fun m!263969 () Bool)

(assert (=> b!224964 m!263969))

(declare-fun m!263971 () Bool)

(assert (=> b!224945 m!263971))

(declare-fun m!263973 () Bool)

(assert (=> start!24022 m!263973))

(declare-fun m!263975 () Bool)

(assert (=> b!224931 m!263975))

(assert (=> b!224931 m!263975))

(declare-fun m!263977 () Bool)

(assert (=> b!224931 m!263977))

(declare-fun m!263979 () Bool)

(assert (=> b!224965 m!263979))

(assert (=> b!224965 m!263979))

(declare-fun m!263981 () Bool)

(assert (=> b!224965 m!263981))

(assert (=> b!224965 m!263981))

(declare-fun m!263983 () Bool)

(assert (=> b!224965 m!263983))

(declare-fun m!263985 () Bool)

(assert (=> b!224965 m!263985))

(check-sat (not b!224949) (not b!224962) (not b!224948) (not b_next!8417) b_and!16707 (not b!224921) (not b!224941) (not b!224931) (not b!224919) (not b!224923) (not b!224926) (not b!224938) (not b!224924) (not b_next!8411) (not b!224964) (not b!224920) (not b!224961) (not b!224947) (not b!224942) (not b!224965) (not b!224950) b_and!16703 (not b!224917) b_and!16711 b_and!16701 (not b!224933) (not b!224956) (not b!224940) (not b!224974) b_and!16709 (not b_next!8413) (not b!224939) (not b!224916) (not b!224945) (not b!224930) (not b!224922) (not b!224951) (not b!224934) (not b_next!8419) (not b!224937) (not b!224959) (not b_next!8415) (not b_next!8409) (not start!24022) b_and!16705 (not b!224954) (not b!224952) (not b!224936) (not b!224953) (not b!224944) (not b!224927))
(check-sat (not b_next!8411) (not b_next!8417) b_and!16703 b_and!16709 (not b_next!8413) (not b_next!8419) b_and!16707 (not b_next!8415) (not b_next!8409) b_and!16705 b_and!16711 b_and!16701)
(get-model)

(declare-fun bs!23952 () Bool)

(declare-fun d!62244 () Bool)

(assert (= bs!23952 (and d!62244 b!224924)))

(declare-fun lambda!7017 () Int)

(assert (=> bs!23952 (not (= lambda!7017 lambda!7011))))

(declare-fun bs!23953 () Bool)

(assert (= bs!23953 (and d!62244 b!224965)))

(assert (=> bs!23953 (= lambda!7017 lambda!7012)))

(declare-fun b!225016 () Bool)

(declare-fun e!138870 () Bool)

(assert (=> b!225016 (= e!138870 true)))

(declare-fun b!225015 () Bool)

(declare-fun e!138869 () Bool)

(assert (=> b!225015 (= e!138869 e!138870)))

(declare-fun b!225014 () Bool)

(declare-fun e!138868 () Bool)

(assert (=> b!225014 (= e!138868 e!138869)))

(assert (=> d!62244 e!138868))

(assert (= b!225015 b!225016))

(assert (= b!225014 b!225015))

(assert (= (and d!62244 ((_ is Cons!3413) rules!1920)) b!225014))

(assert (=> b!225016 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7017))))

(assert (=> b!225016 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7017))))

(assert (=> d!62244 true))

(declare-fun e!138867 () Bool)

(assert (=> d!62244 e!138867))

(declare-fun res!103396 () Bool)

(assert (=> d!62244 (=> (not res!103396) (not e!138867))))

(declare-fun lt!86546 () Bool)

(assert (=> d!62244 (= res!103396 (= lt!86546 (forall!765 (list!1305 lt!86492) lambda!7017)))))

(declare-fun forall!766 (BalanceConc!2202 Int) Bool)

(assert (=> d!62244 (= lt!86546 (forall!766 lt!86492 lambda!7017))))

(assert (=> d!62244 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62244 (= (rulesProduceEachTokenIndividually!315 thiss!17480 rules!1920 lt!86492) lt!86546)))

(declare-fun b!225013 () Bool)

(assert (=> b!225013 (= e!138867 (= lt!86546 (rulesProduceEachTokenIndividuallyList!175 thiss!17480 rules!1920 (list!1305 lt!86492))))))

(assert (= (and d!62244 res!103396) b!225013))

(declare-fun m!264047 () Bool)

(assert (=> d!62244 m!264047))

(assert (=> d!62244 m!264047))

(declare-fun m!264049 () Bool)

(assert (=> d!62244 m!264049))

(declare-fun m!264051 () Bool)

(assert (=> d!62244 m!264051))

(assert (=> d!62244 m!263763))

(assert (=> b!225013 m!264047))

(assert (=> b!225013 m!264047))

(declare-fun m!264053 () Bool)

(assert (=> b!225013 m!264053))

(assert (=> b!224933 d!62244))

(declare-fun d!62260 () Bool)

(declare-fun fromListB!242 (List!3424) BalanceConc!2202)

(assert (=> d!62260 (= (seqFromList!652 tokens!465) (fromListB!242 tokens!465))))

(declare-fun bs!23954 () Bool)

(assert (= bs!23954 d!62260))

(declare-fun m!264055 () Bool)

(assert (=> bs!23954 m!264055))

(assert (=> b!224933 d!62260))

(declare-fun d!62262 () Bool)

(declare-fun res!103401 () Bool)

(declare-fun e!138877 () Bool)

(assert (=> d!62262 (=> res!103401 e!138877)))

(assert (=> d!62262 (= res!103401 (not ((_ is Cons!3413) rules!1920)))))

(assert (=> d!62262 (= (sepAndNonSepRulesDisjointChars!226 rules!1920 rules!1920) e!138877)))

(declare-fun b!225025 () Bool)

(declare-fun e!138878 () Bool)

(assert (=> b!225025 (= e!138877 e!138878)))

(declare-fun res!103402 () Bool)

(assert (=> b!225025 (=> (not res!103402) (not e!138878))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!77 (Rule!1074 List!3423) Bool)

(assert (=> b!225025 (= res!103402 (ruleDisjointCharsFromAllFromOtherType!77 (h!8810 rules!1920) rules!1920))))

(declare-fun b!225026 () Bool)

(assert (=> b!225026 (= e!138878 (sepAndNonSepRulesDisjointChars!226 rules!1920 (t!33175 rules!1920)))))

(assert (= (and d!62262 (not res!103401)) b!225025))

(assert (= (and b!225025 res!103402) b!225026))

(declare-fun m!264057 () Bool)

(assert (=> b!225025 m!264057))

(declare-fun m!264059 () Bool)

(assert (=> b!225026 m!264059))

(assert (=> b!224934 d!62262))

(declare-fun d!62264 () Bool)

(declare-fun res!103407 () Bool)

(declare-fun e!138885 () Bool)

(assert (=> d!62264 (=> (not res!103407) (not e!138885))))

(assert (=> d!62264 (= res!103407 (not (isEmpty!1920 (originalCharacters!680 separatorToken!170))))))

(assert (=> d!62264 (= (inv!4267 separatorToken!170) e!138885)))

(declare-fun b!225039 () Bool)

(declare-fun res!103408 () Bool)

(assert (=> b!225039 (=> (not res!103408) (not e!138885))))

(declare-fun dynLambda!1577 (Int TokenValue!659) BalanceConc!2200)

(assert (=> b!225039 (= res!103408 (= (originalCharacters!680 separatorToken!170) (list!1304 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (value!22470 separatorToken!170)))))))

(declare-fun b!225040 () Bool)

(declare-fun size!2737 (List!3422) Int)

(assert (=> b!225040 (= e!138885 (= (size!2734 separatorToken!170) (size!2737 (originalCharacters!680 separatorToken!170))))))

(assert (= (and d!62264 res!103407) b!225039))

(assert (= (and b!225039 res!103408) b!225040))

(declare-fun b_lambda!6203 () Bool)

(assert (=> (not b_lambda!6203) (not b!225039)))

(declare-fun tb!11289 () Bool)

(declare-fun t!33185 () Bool)

(assert (=> (and b!224958 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170)))) t!33185) tb!11289))

(declare-fun b!225049 () Bool)

(declare-fun e!138890 () Bool)

(declare-fun tp!93102 () Bool)

(declare-fun inv!4270 (Conc!1096) Bool)

(assert (=> b!225049 (= e!138890 (and (inv!4270 (c!43241 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (value!22470 separatorToken!170)))) tp!93102))))

(declare-fun result!14436 () Bool)

(declare-fun inv!4271 (BalanceConc!2200) Bool)

(assert (=> tb!11289 (= result!14436 (and (inv!4271 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (value!22470 separatorToken!170))) e!138890))))

(assert (= tb!11289 b!225049))

(declare-fun m!264061 () Bool)

(assert (=> b!225049 m!264061))

(declare-fun m!264063 () Bool)

(assert (=> tb!11289 m!264063))

(assert (=> b!225039 t!33185))

(declare-fun b_and!16713 () Bool)

(assert (= b_and!16703 (and (=> t!33185 result!14436) b_and!16713)))

(declare-fun t!33187 () Bool)

(declare-fun tb!11291 () Bool)

(assert (=> (and b!224925 (= (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170)))) t!33187) tb!11291))

(declare-fun result!14440 () Bool)

(assert (= result!14440 result!14436))

(assert (=> b!225039 t!33187))

(declare-fun b_and!16715 () Bool)

(assert (= b_and!16707 (and (=> t!33187 result!14440) b_and!16715)))

(declare-fun t!33189 () Bool)

(declare-fun tb!11293 () Bool)

(assert (=> (and b!224932 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170)))) t!33189) tb!11293))

(declare-fun result!14442 () Bool)

(assert (= result!14442 result!14436))

(assert (=> b!225039 t!33189))

(declare-fun b_and!16717 () Bool)

(assert (= b_and!16711 (and (=> t!33189 result!14442) b_and!16717)))

(declare-fun m!264065 () Bool)

(assert (=> d!62264 m!264065))

(declare-fun m!264067 () Bool)

(assert (=> b!225039 m!264067))

(assert (=> b!225039 m!264067))

(declare-fun m!264069 () Bool)

(assert (=> b!225039 m!264069))

(declare-fun m!264071 () Bool)

(assert (=> b!225040 m!264071))

(assert (=> start!24022 d!62264))

(declare-fun d!62266 () Bool)

(assert (=> d!62266 (= (seqFromList!652 (t!33176 tokens!465)) (fromListB!242 (t!33176 tokens!465)))))

(declare-fun bs!23955 () Bool)

(assert (= bs!23955 d!62266))

(declare-fun m!264073 () Bool)

(assert (=> bs!23955 m!264073))

(assert (=> b!224936 d!62266))

(declare-fun d!62268 () Bool)

(assert (=> d!62268 (= (++!854 (++!854 lt!86516 lt!86491) lt!86499) (++!854 lt!86516 (++!854 lt!86491 lt!86499)))))

(declare-fun lt!86561 () Unit!3836)

(declare-fun choose!2164 (List!3422 List!3422 List!3422) Unit!3836)

(assert (=> d!62268 (= lt!86561 (choose!2164 lt!86516 lt!86491 lt!86499))))

(assert (=> d!62268 (= (lemmaConcatAssociativity!338 lt!86516 lt!86491 lt!86499) lt!86561)))

(declare-fun bs!23956 () Bool)

(assert (= bs!23956 d!62268))

(assert (=> bs!23956 m!263843))

(declare-fun m!264075 () Bool)

(assert (=> bs!23956 m!264075))

(declare-fun m!264077 () Bool)

(assert (=> bs!23956 m!264077))

(assert (=> bs!23956 m!263827))

(assert (=> bs!23956 m!263827))

(assert (=> bs!23956 m!263847))

(assert (=> bs!23956 m!263843))

(assert (=> b!224936 d!62268))

(declare-fun d!62270 () Bool)

(declare-fun e!138903 () Bool)

(assert (=> d!62270 e!138903))

(declare-fun res!103414 () Bool)

(assert (=> d!62270 (=> (not res!103414) (not e!138903))))

(declare-fun lt!86570 () List!3422)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!473 (List!3422) (InoxSet C!2644))

(assert (=> d!62270 (= res!103414 (= (content!473 lt!86570) ((_ map or) (content!473 lt!86491) (content!473 lt!86499))))))

(declare-fun e!138902 () List!3422)

(assert (=> d!62270 (= lt!86570 e!138902)))

(declare-fun c!43263 () Bool)

(assert (=> d!62270 (= c!43263 ((_ is Nil!3412) lt!86491))))

(assert (=> d!62270 (= (++!854 lt!86491 lt!86499) lt!86570)))

(declare-fun b!225070 () Bool)

(assert (=> b!225070 (= e!138902 (Cons!3412 (h!8809 lt!86491) (++!854 (t!33174 lt!86491) lt!86499)))))

(declare-fun b!225069 () Bool)

(assert (=> b!225069 (= e!138902 lt!86499)))

(declare-fun b!225072 () Bool)

(assert (=> b!225072 (= e!138903 (or (not (= lt!86499 Nil!3412)) (= lt!86570 lt!86491)))))

(declare-fun b!225071 () Bool)

(declare-fun res!103413 () Bool)

(assert (=> b!225071 (=> (not res!103413) (not e!138903))))

(assert (=> b!225071 (= res!103413 (= (size!2737 lt!86570) (+ (size!2737 lt!86491) (size!2737 lt!86499))))))

(assert (= (and d!62270 c!43263) b!225069))

(assert (= (and d!62270 (not c!43263)) b!225070))

(assert (= (and d!62270 res!103414) b!225071))

(assert (= (and b!225071 res!103413) b!225072))

(declare-fun m!264079 () Bool)

(assert (=> d!62270 m!264079))

(declare-fun m!264081 () Bool)

(assert (=> d!62270 m!264081))

(declare-fun m!264083 () Bool)

(assert (=> d!62270 m!264083))

(declare-fun m!264085 () Bool)

(assert (=> b!225070 m!264085))

(declare-fun m!264087 () Bool)

(assert (=> b!225071 m!264087))

(declare-fun m!264089 () Bool)

(assert (=> b!225071 m!264089))

(declare-fun m!264091 () Bool)

(assert (=> b!225071 m!264091))

(assert (=> b!224936 d!62270))

(declare-fun bs!23959 () Bool)

(declare-fun b!225098 () Bool)

(assert (= bs!23959 (and b!225098 b!224924)))

(declare-fun lambda!7027 () Int)

(assert (=> bs!23959 (not (= lambda!7027 lambda!7011))))

(declare-fun bs!23960 () Bool)

(assert (= bs!23960 (and b!225098 b!224965)))

(assert (=> bs!23960 (= lambda!7027 lambda!7012)))

(declare-fun bs!23961 () Bool)

(assert (= bs!23961 (and b!225098 d!62244)))

(assert (=> bs!23961 (= lambda!7027 lambda!7017)))

(declare-fun b!225107 () Bool)

(declare-fun e!138922 () Bool)

(assert (=> b!225107 (= e!138922 true)))

(declare-fun b!225106 () Bool)

(declare-fun e!138921 () Bool)

(assert (=> b!225106 (= e!138921 e!138922)))

(declare-fun b!225105 () Bool)

(declare-fun e!138920 () Bool)

(assert (=> b!225105 (= e!138920 e!138921)))

(assert (=> b!225098 e!138920))

(assert (= b!225106 b!225107))

(assert (= b!225105 b!225106))

(assert (= (and b!225098 ((_ is Cons!3413) rules!1920)) b!225105))

(assert (=> b!225107 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7027))))

(assert (=> b!225107 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7027))))

(assert (=> b!225098 true))

(declare-fun b!225095 () Bool)

(declare-fun c!43276 () Bool)

(declare-fun lt!86605 () Option!603)

(assert (=> b!225095 (= c!43276 (and ((_ is Some!602) lt!86605) (not (= (_1!2041 (v!14277 lt!86605)) (h!8811 (t!33176 tokens!465))))))))

(declare-fun e!138916 () List!3422)

(declare-fun e!138919 () List!3422)

(assert (=> b!225095 (= e!138916 e!138919)))

(declare-fun bm!11433 () Bool)

(declare-fun call!11441 () BalanceConc!2200)

(declare-fun call!11439 () BalanceConc!2200)

(assert (=> bm!11433 (= call!11441 call!11439)))

(declare-fun b!225096 () Bool)

(declare-fun call!11440 () List!3422)

(assert (=> b!225096 (= e!138916 call!11440)))

(declare-fun b!225097 () Bool)

(declare-fun e!138917 () List!3422)

(assert (=> b!225097 (= e!138917 Nil!3412)))

(declare-fun call!11438 () List!3422)

(declare-fun lt!86601 () List!3422)

(declare-fun c!43275 () Bool)

(declare-fun bm!11434 () Bool)

(declare-fun call!11442 () List!3422)

(assert (=> bm!11434 (= call!11440 (++!854 call!11438 (ite c!43275 lt!86601 call!11442)))))

(declare-fun bm!11435 () Bool)

(assert (=> bm!11435 (= call!11439 (charsOf!292 (h!8811 (t!33176 tokens!465))))))

(declare-fun d!62272 () Bool)

(declare-fun c!43277 () Bool)

(assert (=> d!62272 (= c!43277 ((_ is Cons!3414) (t!33176 tokens!465)))))

(assert (=> d!62272 (= (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170) e!138917)))

(assert (=> b!225098 (= e!138917 e!138916)))

(declare-fun lt!86604 () Unit!3836)

(assert (=> b!225098 (= lt!86604 (forallContained!204 (t!33176 tokens!465) lambda!7027 (h!8811 (t!33176 tokens!465))))))

(assert (=> b!225098 (= lt!86601 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (t!33176 (t!33176 tokens!465)) separatorToken!170))))

(assert (=> b!225098 (= lt!86605 (maxPrefix!253 thiss!17480 rules!1920 (++!854 (list!1304 (charsOf!292 (h!8811 (t!33176 tokens!465)))) lt!86601)))))

(assert (=> b!225098 (= c!43275 (and ((_ is Some!602) lt!86605) (= (_1!2041 (v!14277 lt!86605)) (h!8811 (t!33176 tokens!465)))))))

(declare-fun b!225099 () Bool)

(assert (=> b!225099 (= e!138919 (++!854 call!11440 lt!86601))))

(declare-fun b!225100 () Bool)

(declare-fun e!138918 () BalanceConc!2200)

(assert (=> b!225100 (= e!138918 call!11441)))

(declare-fun b!225101 () Bool)

(assert (=> b!225101 (= e!138918 (charsOf!292 separatorToken!170))))

(declare-fun bm!11436 () Bool)

(assert (=> bm!11436 (= call!11438 (list!1304 (ite c!43275 call!11439 call!11441)))))

(declare-fun bm!11437 () Bool)

(assert (=> bm!11437 (= call!11442 (list!1304 e!138918))))

(declare-fun c!43274 () Bool)

(assert (=> bm!11437 (= c!43274 c!43276)))

(declare-fun b!225102 () Bool)

(assert (=> b!225102 (= e!138919 Nil!3412)))

(assert (=> b!225102 (= (print!254 thiss!17480 (singletonSeq!189 (h!8811 (t!33176 tokens!465)))) (printTailRec!217 thiss!17480 (singletonSeq!189 (h!8811 (t!33176 tokens!465))) 0 (BalanceConc!2201 Empty!1096)))))

(declare-fun lt!86606 () Unit!3836)

(declare-fun Unit!3848 () Unit!3836)

(assert (=> b!225102 (= lt!86606 Unit!3848)))

(declare-fun lt!86602 () Unit!3836)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!76 (LexerInterface!523 List!3423 List!3422 List!3422) Unit!3836)

(assert (=> b!225102 (= lt!86602 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!76 thiss!17480 rules!1920 call!11442 lt!86601))))

(assert (=> b!225102 false))

(declare-fun lt!86603 () Unit!3836)

(declare-fun Unit!3849 () Unit!3836)

(assert (=> b!225102 (= lt!86603 Unit!3849)))

(assert (= (and d!62272 c!43277) b!225098))

(assert (= (and d!62272 (not c!43277)) b!225097))

(assert (= (and b!225098 c!43275) b!225096))

(assert (= (and b!225098 (not c!43275)) b!225095))

(assert (= (and b!225095 c!43276) b!225099))

(assert (= (and b!225095 (not c!43276)) b!225102))

(assert (= (or b!225099 b!225102) bm!11433))

(assert (= (or b!225099 b!225102) bm!11437))

(assert (= (and bm!11437 c!43274) b!225101))

(assert (= (and bm!11437 (not c!43274)) b!225100))

(assert (= (or b!225096 bm!11433) bm!11435))

(assert (= (or b!225096 b!225099) bm!11436))

(assert (= (or b!225096 b!225099) bm!11434))

(declare-fun m!264121 () Bool)

(assert (=> bm!11434 m!264121))

(declare-fun m!264123 () Bool)

(assert (=> bm!11436 m!264123))

(declare-fun m!264125 () Bool)

(assert (=> b!225102 m!264125))

(assert (=> b!225102 m!264125))

(declare-fun m!264127 () Bool)

(assert (=> b!225102 m!264127))

(assert (=> b!225102 m!264125))

(declare-fun m!264129 () Bool)

(assert (=> b!225102 m!264129))

(declare-fun m!264131 () Bool)

(assert (=> b!225102 m!264131))

(assert (=> b!225101 m!263833))

(declare-fun m!264133 () Bool)

(assert (=> b!225098 m!264133))

(declare-fun m!264135 () Bool)

(assert (=> b!225098 m!264135))

(declare-fun m!264137 () Bool)

(assert (=> b!225098 m!264137))

(assert (=> b!225098 m!264135))

(declare-fun m!264139 () Bool)

(assert (=> b!225098 m!264139))

(declare-fun m!264141 () Bool)

(assert (=> b!225098 m!264141))

(assert (=> b!225098 m!264133))

(declare-fun m!264143 () Bool)

(assert (=> b!225098 m!264143))

(assert (=> b!225098 m!264141))

(declare-fun m!264145 () Bool)

(assert (=> b!225099 m!264145))

(declare-fun m!264147 () Bool)

(assert (=> bm!11437 m!264147))

(assert (=> bm!11435 m!264141))

(assert (=> b!224936 d!62272))

(declare-fun bs!23996 () Bool)

(declare-fun d!62276 () Bool)

(assert (= bs!23996 (and d!62276 b!224924)))

(declare-fun lambda!7037 () Int)

(assert (=> bs!23996 (= lambda!7037 lambda!7011)))

(declare-fun bs!23997 () Bool)

(assert (= bs!23997 (and d!62276 b!224965)))

(assert (=> bs!23997 (not (= lambda!7037 lambda!7012))))

(declare-fun bs!23998 () Bool)

(assert (= bs!23998 (and d!62276 d!62244)))

(assert (=> bs!23998 (not (= lambda!7037 lambda!7017))))

(declare-fun bs!23999 () Bool)

(assert (= bs!23999 (and d!62276 b!225098)))

(assert (=> bs!23999 (not (= lambda!7037 lambda!7027))))

(declare-fun bs!24000 () Bool)

(declare-fun b!225258 () Bool)

(assert (= bs!24000 (and b!225258 b!224965)))

(declare-fun lambda!7038 () Int)

(assert (=> bs!24000 (= lambda!7038 lambda!7012)))

(declare-fun bs!24001 () Bool)

(assert (= bs!24001 (and b!225258 b!224924)))

(assert (=> bs!24001 (not (= lambda!7038 lambda!7011))))

(declare-fun bs!24002 () Bool)

(assert (= bs!24002 (and b!225258 d!62276)))

(assert (=> bs!24002 (not (= lambda!7038 lambda!7037))))

(declare-fun bs!24003 () Bool)

(assert (= bs!24003 (and b!225258 d!62244)))

(assert (=> bs!24003 (= lambda!7038 lambda!7017)))

(declare-fun bs!24004 () Bool)

(assert (= bs!24004 (and b!225258 b!225098)))

(assert (=> bs!24004 (= lambda!7038 lambda!7027)))

(declare-fun b!225269 () Bool)

(declare-fun e!139024 () Bool)

(assert (=> b!225269 (= e!139024 true)))

(declare-fun b!225268 () Bool)

(declare-fun e!139023 () Bool)

(assert (=> b!225268 (= e!139023 e!139024)))

(declare-fun b!225267 () Bool)

(declare-fun e!139022 () Bool)

(assert (=> b!225267 (= e!139022 e!139023)))

(assert (=> b!225258 e!139022))

(assert (= b!225268 b!225269))

(assert (= b!225267 b!225268))

(assert (= (and b!225258 ((_ is Cons!3413) rules!1920)) b!225267))

(assert (=> b!225269 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7038))))

(assert (=> b!225269 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7038))))

(assert (=> b!225258 true))

(declare-fun b!225259 () Bool)

(declare-fun e!139018 () Bool)

(declare-fun lt!86729 () Option!605)

(declare-fun call!11484 () Token!1018)

(assert (=> b!225259 (= e!139018 (not (= (_1!2043 (v!14279 lt!86729)) call!11484)))))

(declare-fun b!225260 () Bool)

(declare-fun e!139017 () BalanceConc!2200)

(declare-fun call!11482 () BalanceConc!2200)

(assert (=> b!225260 (= e!139017 call!11482)))

(declare-fun c!43320 () Bool)

(declare-fun bm!11476 () Bool)

(declare-fun call!11485 () BalanceConc!2200)

(declare-fun lt!86727 () BalanceConc!2200)

(declare-fun call!11483 () BalanceConc!2200)

(declare-fun ++!856 (BalanceConc!2200 BalanceConc!2200) BalanceConc!2200)

(assert (=> bm!11476 (= call!11482 (++!856 call!11485 (ite c!43320 lt!86727 call!11483)))))

(declare-fun bm!11477 () Bool)

(declare-fun call!11481 () Token!1018)

(assert (=> bm!11477 (= call!11481 call!11484)))

(declare-fun b!225261 () Bool)

(declare-fun e!139021 () BalanceConc!2200)

(assert (=> b!225261 (= e!139021 (BalanceConc!2201 Empty!1096))))

(assert (=> b!225261 (= (print!254 thiss!17480 (singletonSeq!189 call!11481)) (printTailRec!217 thiss!17480 (singletonSeq!189 call!11481) 0 (BalanceConc!2201 Empty!1096)))))

(declare-fun lt!86728 () Unit!3836)

(declare-fun Unit!3850 () Unit!3836)

(assert (=> b!225261 (= lt!86728 Unit!3850)))

(declare-fun lt!86738 () Unit!3836)

(assert (=> b!225261 (= lt!86738 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!76 thiss!17480 rules!1920 (list!1304 call!11483) (list!1304 lt!86727)))))

(assert (=> b!225261 false))

(declare-fun lt!86731 () Unit!3836)

(declare-fun Unit!3851 () Unit!3836)

(assert (=> b!225261 (= lt!86731 Unit!3851)))

(declare-fun b!225262 () Bool)

(declare-fun e!139019 () Bool)

(assert (=> b!225262 (= e!139019 (= (_1!2043 (v!14279 lt!86729)) (apply!602 (seqFromList!652 (t!33176 tokens!465)) 0)))))

(declare-fun bm!11478 () Bool)

(assert (=> bm!11478 (= call!11484 (apply!602 (seqFromList!652 (t!33176 tokens!465)) 0))))

(declare-fun bm!11479 () Bool)

(assert (=> bm!11479 (= call!11485 (charsOf!292 (ite c!43320 call!11484 call!11481)))))

(declare-fun b!225263 () Bool)

(assert (=> b!225263 (= e!139021 (++!856 call!11482 lt!86727))))

(declare-fun e!139020 () BalanceConc!2200)

(assert (=> b!225258 (= e!139020 e!139017)))

(declare-fun lt!86730 () List!3424)

(assert (=> b!225258 (= lt!86730 (list!1305 (seqFromList!652 (t!33176 tokens!465))))))

(declare-fun lt!86735 () Unit!3836)

(declare-fun lemmaDropApply!168 (List!3424 Int) Unit!3836)

(assert (=> b!225258 (= lt!86735 (lemmaDropApply!168 lt!86730 0))))

(declare-fun drop!181 (List!3424 Int) List!3424)

(declare-fun apply!604 (List!3424 Int) Token!1018)

(assert (=> b!225258 (= (head!769 (drop!181 lt!86730 0)) (apply!604 lt!86730 0))))

(declare-fun lt!86736 () Unit!3836)

(assert (=> b!225258 (= lt!86736 lt!86735)))

(declare-fun lt!86726 () List!3424)

(assert (=> b!225258 (= lt!86726 (list!1305 (seqFromList!652 (t!33176 tokens!465))))))

(declare-fun lt!86737 () Unit!3836)

(declare-fun lemmaDropTail!160 (List!3424 Int) Unit!3836)

(assert (=> b!225258 (= lt!86737 (lemmaDropTail!160 lt!86726 0))))

(declare-fun tail!420 (List!3424) List!3424)

(assert (=> b!225258 (= (tail!420 (drop!181 lt!86726 0)) (drop!181 lt!86726 (+ 0 1)))))

(declare-fun lt!86733 () Unit!3836)

(assert (=> b!225258 (= lt!86733 lt!86737)))

(declare-fun lt!86725 () Unit!3836)

(assert (=> b!225258 (= lt!86725 (forallContained!204 (list!1305 (seqFromList!652 (t!33176 tokens!465))) lambda!7038 (apply!602 (seqFromList!652 (t!33176 tokens!465)) 0)))))

(assert (=> b!225258 (= lt!86727 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 (seqFromList!652 (t!33176 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!225258 (= lt!86729 (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (++!856 (charsOf!292 (apply!602 (seqFromList!652 (t!33176 tokens!465)) 0)) lt!86727)))))

(declare-fun res!103475 () Bool)

(assert (=> b!225258 (= res!103475 ((_ is Some!604) lt!86729))))

(assert (=> b!225258 (=> (not res!103475) (not e!139019))))

(assert (=> b!225258 (= c!43320 e!139019)))

(declare-fun lt!86732 () BalanceConc!2200)

(declare-fun dropList!128 (BalanceConc!2202 Int) List!3424)

(assert (=> d!62276 (= (list!1304 lt!86732) (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (dropList!128 (seqFromList!652 (t!33176 tokens!465)) 0) separatorToken!170))))

(assert (=> d!62276 (= lt!86732 e!139020)))

(declare-fun c!43318 () Bool)

(assert (=> d!62276 (= c!43318 (>= 0 (size!2735 (seqFromList!652 (t!33176 tokens!465)))))))

(declare-fun lt!86734 () Unit!3836)

(declare-fun lemmaContentSubsetPreservesForall!72 (List!3424 List!3424 Int) Unit!3836)

(assert (=> d!62276 (= lt!86734 (lemmaContentSubsetPreservesForall!72 (list!1305 (seqFromList!652 (t!33176 tokens!465))) (dropList!128 (seqFromList!652 (t!33176 tokens!465)) 0) lambda!7037))))

(declare-fun e!139016 () Bool)

(assert (=> d!62276 e!139016))

(declare-fun res!103476 () Bool)

(assert (=> d!62276 (=> (not res!103476) (not e!139016))))

(assert (=> d!62276 (= res!103476 (>= 0 0))))

(assert (=> d!62276 (= (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 (seqFromList!652 (t!33176 tokens!465)) separatorToken!170 0) lt!86732)))

(declare-fun b!225264 () Bool)

(declare-fun c!43319 () Bool)

(assert (=> b!225264 (= c!43319 e!139018)))

(declare-fun res!103474 () Bool)

(assert (=> b!225264 (=> (not res!103474) (not e!139018))))

(assert (=> b!225264 (= res!103474 ((_ is Some!604) lt!86729))))

(assert (=> b!225264 (= e!139017 e!139021)))

(declare-fun bm!11480 () Bool)

(assert (=> bm!11480 (= call!11483 (charsOf!292 (ite c!43319 separatorToken!170 call!11481)))))

(declare-fun b!225265 () Bool)

(assert (=> b!225265 (= e!139016 (<= 0 (size!2735 (seqFromList!652 (t!33176 tokens!465)))))))

(declare-fun b!225266 () Bool)

(assert (=> b!225266 (= e!139020 (BalanceConc!2201 Empty!1096))))

(assert (= (and d!62276 res!103476) b!225265))

(assert (= (and d!62276 c!43318) b!225266))

(assert (= (and d!62276 (not c!43318)) b!225258))

(assert (= (and b!225258 res!103475) b!225262))

(assert (= (and b!225258 c!43320) b!225260))

(assert (= (and b!225258 (not c!43320)) b!225264))

(assert (= (and b!225264 res!103474) b!225259))

(assert (= (and b!225264 c!43319) b!225263))

(assert (= (and b!225264 (not c!43319)) b!225261))

(assert (= (or b!225263 b!225261) bm!11477))

(assert (= (or b!225263 b!225261) bm!11480))

(assert (= (or b!225260 b!225259 bm!11477) bm!11478))

(assert (= (or b!225260 b!225263) bm!11479))

(assert (= (or b!225260 b!225263) bm!11476))

(declare-fun m!264425 () Bool)

(assert (=> b!225261 m!264425))

(declare-fun m!264427 () Bool)

(assert (=> b!225261 m!264427))

(declare-fun m!264429 () Bool)

(assert (=> b!225261 m!264429))

(declare-fun m!264431 () Bool)

(assert (=> b!225261 m!264431))

(assert (=> b!225261 m!264427))

(assert (=> b!225261 m!264427))

(declare-fun m!264433 () Bool)

(assert (=> b!225261 m!264433))

(assert (=> b!225261 m!264425))

(assert (=> b!225261 m!264431))

(declare-fun m!264435 () Bool)

(assert (=> b!225261 m!264435))

(declare-fun m!264437 () Bool)

(assert (=> b!225258 m!264437))

(declare-fun m!264439 () Bool)

(assert (=> b!225258 m!264439))

(assert (=> b!225258 m!264437))

(declare-fun m!264441 () Bool)

(assert (=> b!225258 m!264441))

(declare-fun m!264443 () Bool)

(assert (=> b!225258 m!264443))

(declare-fun m!264445 () Bool)

(assert (=> b!225258 m!264445))

(assert (=> b!225258 m!264443))

(assert (=> b!225258 m!263825))

(declare-fun m!264447 () Bool)

(assert (=> b!225258 m!264447))

(assert (=> b!225258 m!264447))

(declare-fun m!264449 () Bool)

(assert (=> b!225258 m!264449))

(assert (=> b!225258 m!263825))

(declare-fun m!264451 () Bool)

(assert (=> b!225258 m!264451))

(assert (=> b!225258 m!264449))

(declare-fun m!264453 () Bool)

(assert (=> b!225258 m!264453))

(declare-fun m!264455 () Bool)

(assert (=> b!225258 m!264455))

(assert (=> b!225258 m!264447))

(declare-fun m!264457 () Bool)

(assert (=> b!225258 m!264457))

(declare-fun m!264459 () Bool)

(assert (=> b!225258 m!264459))

(assert (=> b!225258 m!264453))

(declare-fun m!264461 () Bool)

(assert (=> b!225258 m!264461))

(declare-fun m!264463 () Bool)

(assert (=> b!225258 m!264463))

(assert (=> b!225258 m!263825))

(assert (=> b!225258 m!264455))

(declare-fun m!264465 () Bool)

(assert (=> b!225258 m!264465))

(assert (=> bm!11478 m!263825))

(assert (=> bm!11478 m!264447))

(declare-fun m!264467 () Bool)

(assert (=> bm!11479 m!264467))

(declare-fun m!264469 () Bool)

(assert (=> bm!11480 m!264469))

(declare-fun m!264471 () Bool)

(assert (=> bm!11476 m!264471))

(assert (=> d!62276 m!263825))

(declare-fun m!264473 () Bool)

(assert (=> d!62276 m!264473))

(declare-fun m!264475 () Bool)

(assert (=> d!62276 m!264475))

(assert (=> d!62276 m!264455))

(assert (=> d!62276 m!264473))

(declare-fun m!264477 () Bool)

(assert (=> d!62276 m!264477))

(assert (=> d!62276 m!263825))

(assert (=> d!62276 m!264455))

(assert (=> d!62276 m!263825))

(declare-fun m!264479 () Bool)

(assert (=> d!62276 m!264479))

(assert (=> d!62276 m!264473))

(declare-fun m!264481 () Bool)

(assert (=> d!62276 m!264481))

(assert (=> b!225262 m!263825))

(assert (=> b!225262 m!264447))

(assert (=> b!225265 m!263825))

(assert (=> b!225265 m!264479))

(declare-fun m!264483 () Bool)

(assert (=> b!225263 m!264483))

(assert (=> b!224936 d!62276))

(declare-fun d!62326 () Bool)

(declare-fun lt!86741 () BalanceConc!2200)

(assert (=> d!62326 (= (list!1304 lt!86741) (originalCharacters!680 separatorToken!170))))

(assert (=> d!62326 (= lt!86741 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (value!22470 separatorToken!170)))))

(assert (=> d!62326 (= (charsOf!292 separatorToken!170) lt!86741)))

(declare-fun b_lambda!6211 () Bool)

(assert (=> (not b_lambda!6211) (not d!62326)))

(assert (=> d!62326 t!33185))

(declare-fun b_and!16737 () Bool)

(assert (= b_and!16713 (and (=> t!33185 result!14436) b_and!16737)))

(assert (=> d!62326 t!33187))

(declare-fun b_and!16739 () Bool)

(assert (= b_and!16715 (and (=> t!33187 result!14440) b_and!16739)))

(assert (=> d!62326 t!33189))

(declare-fun b_and!16741 () Bool)

(assert (= b_and!16717 (and (=> t!33189 result!14442) b_and!16741)))

(declare-fun m!264485 () Bool)

(assert (=> d!62326 m!264485))

(assert (=> d!62326 m!264067))

(assert (=> b!224936 d!62326))

(declare-fun d!62328 () Bool)

(declare-fun e!139026 () Bool)

(assert (=> d!62328 e!139026))

(declare-fun res!103478 () Bool)

(assert (=> d!62328 (=> (not res!103478) (not e!139026))))

(declare-fun lt!86742 () List!3422)

(assert (=> d!62328 (= res!103478 (= (content!473 lt!86742) ((_ map or) (content!473 lt!86516) (content!473 lt!86502))))))

(declare-fun e!139025 () List!3422)

(assert (=> d!62328 (= lt!86742 e!139025)))

(declare-fun c!43321 () Bool)

(assert (=> d!62328 (= c!43321 ((_ is Nil!3412) lt!86516))))

(assert (=> d!62328 (= (++!854 lt!86516 lt!86502) lt!86742)))

(declare-fun b!225271 () Bool)

(assert (=> b!225271 (= e!139025 (Cons!3412 (h!8809 lt!86516) (++!854 (t!33174 lt!86516) lt!86502)))))

(declare-fun b!225270 () Bool)

(assert (=> b!225270 (= e!139025 lt!86502)))

(declare-fun b!225273 () Bool)

(assert (=> b!225273 (= e!139026 (or (not (= lt!86502 Nil!3412)) (= lt!86742 lt!86516)))))

(declare-fun b!225272 () Bool)

(declare-fun res!103477 () Bool)

(assert (=> b!225272 (=> (not res!103477) (not e!139026))))

(assert (=> b!225272 (= res!103477 (= (size!2737 lt!86742) (+ (size!2737 lt!86516) (size!2737 lt!86502))))))

(assert (= (and d!62328 c!43321) b!225270))

(assert (= (and d!62328 (not c!43321)) b!225271))

(assert (= (and d!62328 res!103478) b!225272))

(assert (= (and b!225272 res!103477) b!225273))

(declare-fun m!264487 () Bool)

(assert (=> d!62328 m!264487))

(declare-fun m!264489 () Bool)

(assert (=> d!62328 m!264489))

(declare-fun m!264491 () Bool)

(assert (=> d!62328 m!264491))

(declare-fun m!264493 () Bool)

(assert (=> b!225271 m!264493))

(declare-fun m!264495 () Bool)

(assert (=> b!225272 m!264495))

(declare-fun m!264497 () Bool)

(assert (=> b!225272 m!264497))

(declare-fun m!264499 () Bool)

(assert (=> b!225272 m!264499))

(assert (=> b!224936 d!62328))

(declare-fun d!62330 () Bool)

(declare-fun lt!86743 () BalanceConc!2200)

(assert (=> d!62330 (= (list!1304 lt!86743) (originalCharacters!680 (h!8811 tokens!465)))))

(assert (=> d!62330 (= lt!86743 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (value!22470 (h!8811 tokens!465))))))

(assert (=> d!62330 (= (charsOf!292 (h!8811 tokens!465)) lt!86743)))

(declare-fun b_lambda!6213 () Bool)

(assert (=> (not b_lambda!6213) (not d!62330)))

(declare-fun t!33214 () Bool)

(declare-fun tb!11307 () Bool)

(assert (=> (and b!224958 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465))))) t!33214) tb!11307))

(declare-fun b!225274 () Bool)

(declare-fun e!139027 () Bool)

(declare-fun tp!93107 () Bool)

(assert (=> b!225274 (= e!139027 (and (inv!4270 (c!43241 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (value!22470 (h!8811 tokens!465))))) tp!93107))))

(declare-fun result!14458 () Bool)

(assert (=> tb!11307 (= result!14458 (and (inv!4271 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (value!22470 (h!8811 tokens!465)))) e!139027))))

(assert (= tb!11307 b!225274))

(declare-fun m!264501 () Bool)

(assert (=> b!225274 m!264501))

(declare-fun m!264503 () Bool)

(assert (=> tb!11307 m!264503))

(assert (=> d!62330 t!33214))

(declare-fun b_and!16743 () Bool)

(assert (= b_and!16737 (and (=> t!33214 result!14458) b_and!16743)))

(declare-fun tb!11309 () Bool)

(declare-fun t!33216 () Bool)

(assert (=> (and b!224925 (= (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465))))) t!33216) tb!11309))

(declare-fun result!14460 () Bool)

(assert (= result!14460 result!14458))

(assert (=> d!62330 t!33216))

(declare-fun b_and!16745 () Bool)

(assert (= b_and!16739 (and (=> t!33216 result!14460) b_and!16745)))

(declare-fun tb!11311 () Bool)

(declare-fun t!33218 () Bool)

(assert (=> (and b!224932 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465))))) t!33218) tb!11311))

(declare-fun result!14462 () Bool)

(assert (= result!14462 result!14458))

(assert (=> d!62330 t!33218))

(declare-fun b_and!16747 () Bool)

(assert (= b_and!16741 (and (=> t!33218 result!14462) b_and!16747)))

(declare-fun m!264505 () Bool)

(assert (=> d!62330 m!264505))

(declare-fun m!264507 () Bool)

(assert (=> d!62330 m!264507))

(assert (=> b!224936 d!62330))

(declare-fun d!62332 () Bool)

(declare-fun e!139029 () Bool)

(assert (=> d!62332 e!139029))

(declare-fun res!103480 () Bool)

(assert (=> d!62332 (=> (not res!103480) (not e!139029))))

(declare-fun lt!86744 () List!3422)

(assert (=> d!62332 (= res!103480 (= (content!473 lt!86744) ((_ map or) (content!473 (++!854 lt!86516 lt!86491)) (content!473 lt!86499))))))

(declare-fun e!139028 () List!3422)

(assert (=> d!62332 (= lt!86744 e!139028)))

(declare-fun c!43322 () Bool)

(assert (=> d!62332 (= c!43322 ((_ is Nil!3412) (++!854 lt!86516 lt!86491)))))

(assert (=> d!62332 (= (++!854 (++!854 lt!86516 lt!86491) lt!86499) lt!86744)))

(declare-fun b!225276 () Bool)

(assert (=> b!225276 (= e!139028 (Cons!3412 (h!8809 (++!854 lt!86516 lt!86491)) (++!854 (t!33174 (++!854 lt!86516 lt!86491)) lt!86499)))))

(declare-fun b!225275 () Bool)

(assert (=> b!225275 (= e!139028 lt!86499)))

(declare-fun b!225278 () Bool)

(assert (=> b!225278 (= e!139029 (or (not (= lt!86499 Nil!3412)) (= lt!86744 (++!854 lt!86516 lt!86491))))))

(declare-fun b!225277 () Bool)

(declare-fun res!103479 () Bool)

(assert (=> b!225277 (=> (not res!103479) (not e!139029))))

(assert (=> b!225277 (= res!103479 (= (size!2737 lt!86744) (+ (size!2737 (++!854 lt!86516 lt!86491)) (size!2737 lt!86499))))))

(assert (= (and d!62332 c!43322) b!225275))

(assert (= (and d!62332 (not c!43322)) b!225276))

(assert (= (and d!62332 res!103480) b!225277))

(assert (= (and b!225277 res!103479) b!225278))

(declare-fun m!264509 () Bool)

(assert (=> d!62332 m!264509))

(assert (=> d!62332 m!263827))

(declare-fun m!264511 () Bool)

(assert (=> d!62332 m!264511))

(assert (=> d!62332 m!264083))

(declare-fun m!264513 () Bool)

(assert (=> b!225276 m!264513))

(declare-fun m!264515 () Bool)

(assert (=> b!225277 m!264515))

(assert (=> b!225277 m!263827))

(declare-fun m!264517 () Bool)

(assert (=> b!225277 m!264517))

(assert (=> b!225277 m!264091))

(assert (=> b!224936 d!62332))

(declare-fun d!62334 () Bool)

(declare-fun list!1307 (Conc!1096) List!3422)

(assert (=> d!62334 (= (list!1304 lt!86522) (list!1307 (c!43241 lt!86522)))))

(declare-fun bs!24005 () Bool)

(assert (= bs!24005 d!62334))

(declare-fun m!264519 () Bool)

(assert (=> bs!24005 m!264519))

(assert (=> b!224936 d!62334))

(declare-fun d!62336 () Bool)

(assert (=> d!62336 (= (list!1304 (charsOf!292 separatorToken!170)) (list!1307 (c!43241 (charsOf!292 separatorToken!170))))))

(declare-fun bs!24006 () Bool)

(assert (= bs!24006 d!62336))

(declare-fun m!264521 () Bool)

(assert (=> bs!24006 m!264521))

(assert (=> b!224936 d!62336))

(declare-fun d!62338 () Bool)

(declare-fun e!139031 () Bool)

(assert (=> d!62338 e!139031))

(declare-fun res!103482 () Bool)

(assert (=> d!62338 (=> (not res!103482) (not e!139031))))

(declare-fun lt!86745 () List!3422)

(assert (=> d!62338 (= res!103482 (= (content!473 lt!86745) ((_ map or) (content!473 lt!86516) (content!473 lt!86491))))))

(declare-fun e!139030 () List!3422)

(assert (=> d!62338 (= lt!86745 e!139030)))

(declare-fun c!43323 () Bool)

(assert (=> d!62338 (= c!43323 ((_ is Nil!3412) lt!86516))))

(assert (=> d!62338 (= (++!854 lt!86516 lt!86491) lt!86745)))

(declare-fun b!225280 () Bool)

(assert (=> b!225280 (= e!139030 (Cons!3412 (h!8809 lt!86516) (++!854 (t!33174 lt!86516) lt!86491)))))

(declare-fun b!225279 () Bool)

(assert (=> b!225279 (= e!139030 lt!86491)))

(declare-fun b!225282 () Bool)

(assert (=> b!225282 (= e!139031 (or (not (= lt!86491 Nil!3412)) (= lt!86745 lt!86516)))))

(declare-fun b!225281 () Bool)

(declare-fun res!103481 () Bool)

(assert (=> b!225281 (=> (not res!103481) (not e!139031))))

(assert (=> b!225281 (= res!103481 (= (size!2737 lt!86745) (+ (size!2737 lt!86516) (size!2737 lt!86491))))))

(assert (= (and d!62338 c!43323) b!225279))

(assert (= (and d!62338 (not c!43323)) b!225280))

(assert (= (and d!62338 res!103482) b!225281))

(assert (= (and b!225281 res!103481) b!225282))

(declare-fun m!264523 () Bool)

(assert (=> d!62338 m!264523))

(assert (=> d!62338 m!264489))

(assert (=> d!62338 m!264081))

(declare-fun m!264525 () Bool)

(assert (=> b!225280 m!264525))

(declare-fun m!264527 () Bool)

(assert (=> b!225281 m!264527))

(assert (=> b!225281 m!264497))

(assert (=> b!225281 m!264089))

(assert (=> b!224936 d!62338))

(declare-fun d!62340 () Bool)

(assert (=> d!62340 (= (list!1304 (charsOf!292 (h!8811 tokens!465))) (list!1307 (c!43241 (charsOf!292 (h!8811 tokens!465)))))))

(declare-fun bs!24007 () Bool)

(assert (= bs!24007 d!62340))

(declare-fun m!264529 () Bool)

(assert (=> bs!24007 m!264529))

(assert (=> b!224936 d!62340))

(declare-fun d!62342 () Bool)

(assert (=> d!62342 (= (inv!4263 (tag!833 (rule!1190 separatorToken!170))) (= (mod (str.len (value!22469 (tag!833 (rule!1190 separatorToken!170)))) 2) 0))))

(assert (=> b!224937 d!62342))

(declare-fun d!62344 () Bool)

(declare-fun res!103485 () Bool)

(declare-fun e!139034 () Bool)

(assert (=> d!62344 (=> (not res!103485) (not e!139034))))

(declare-fun semiInverseModEq!219 (Int Int) Bool)

(assert (=> d!62344 (= res!103485 (semiInverseModEq!219 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toValue!1332 (transformation!637 (rule!1190 separatorToken!170)))))))

(assert (=> d!62344 (= (inv!4266 (transformation!637 (rule!1190 separatorToken!170))) e!139034)))

(declare-fun b!225285 () Bool)

(declare-fun equivClasses!202 (Int Int) Bool)

(assert (=> b!225285 (= e!139034 (equivClasses!202 (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toValue!1332 (transformation!637 (rule!1190 separatorToken!170)))))))

(assert (= (and d!62344 res!103485) b!225285))

(declare-fun m!264531 () Bool)

(assert (=> d!62344 m!264531))

(declare-fun m!264533 () Bool)

(assert (=> b!225285 m!264533))

(assert (=> b!224937 d!62344))

(declare-fun d!62346 () Bool)

(declare-fun res!103488 () Bool)

(declare-fun e!139037 () Bool)

(assert (=> d!62346 (=> (not res!103488) (not e!139037))))

(declare-fun rulesValid!184 (LexerInterface!523 List!3423) Bool)

(assert (=> d!62346 (= res!103488 (rulesValid!184 thiss!17480 rules!1920))))

(assert (=> d!62346 (= (rulesInvariant!489 thiss!17480 rules!1920) e!139037)))

(declare-fun b!225288 () Bool)

(declare-datatypes ((List!3425 0))(
  ( (Nil!3415) (Cons!3415 (h!8812 String!4375) (t!33267 List!3425)) )
))
(declare-fun noDuplicateTag!184 (LexerInterface!523 List!3423 List!3425) Bool)

(assert (=> b!225288 (= e!139037 (noDuplicateTag!184 thiss!17480 rules!1920 Nil!3415))))

(assert (= (and d!62346 res!103488) b!225288))

(declare-fun m!264535 () Bool)

(assert (=> d!62346 m!264535))

(declare-fun m!264537 () Bool)

(assert (=> b!225288 m!264537))

(assert (=> b!224916 d!62346))

(declare-fun d!62348 () Bool)

(declare-fun lt!86748 () Bool)

(assert (=> d!62348 (= lt!86748 (isEmpty!1920 (list!1304 (_2!2042 lt!86486))))))

(declare-fun isEmpty!1924 (Conc!1096) Bool)

(assert (=> d!62348 (= lt!86748 (isEmpty!1924 (c!43241 (_2!2042 lt!86486))))))

(assert (=> d!62348 (= (isEmpty!1918 (_2!2042 lt!86486)) lt!86748)))

(declare-fun bs!24008 () Bool)

(assert (= bs!24008 d!62348))

(declare-fun m!264539 () Bool)

(assert (=> bs!24008 m!264539))

(assert (=> bs!24008 m!264539))

(declare-fun m!264541 () Bool)

(assert (=> bs!24008 m!264541))

(declare-fun m!264543 () Bool)

(assert (=> bs!24008 m!264543))

(assert (=> b!224938 d!62348))

(declare-fun d!62350 () Bool)

(assert (=> d!62350 (not (contains!604 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170))) lt!86501))))

(declare-fun lt!86751 () Unit!3836)

(declare-fun choose!2165 (LexerInterface!523 List!3423 List!3423 Rule!1074 Rule!1074 C!2644) Unit!3836)

(assert (=> d!62350 (= lt!86751 (choose!2165 thiss!17480 rules!1920 rules!1920 (rule!1190 lt!86532) (rule!1190 separatorToken!170) lt!86501))))

(assert (=> d!62350 (rulesInvariant!489 thiss!17480 rules!1920)))

(assert (=> d!62350 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!30 thiss!17480 rules!1920 rules!1920 (rule!1190 lt!86532) (rule!1190 separatorToken!170) lt!86501) lt!86751)))

(declare-fun bs!24009 () Bool)

(assert (= bs!24009 d!62350))

(assert (=> bs!24009 m!263885))

(assert (=> bs!24009 m!263885))

(assert (=> bs!24009 m!263887))

(declare-fun m!264545 () Bool)

(assert (=> bs!24009 m!264545))

(assert (=> bs!24009 m!263785))

(assert (=> b!224949 d!62350))

(declare-fun b!225299 () Bool)

(declare-fun e!139044 () Bool)

(declare-fun inv!15 (TokenValue!659) Bool)

(assert (=> b!225299 (= e!139044 (inv!15 (value!22470 separatorToken!170)))))

(declare-fun b!225300 () Bool)

(declare-fun e!139045 () Bool)

(declare-fun e!139046 () Bool)

(assert (=> b!225300 (= e!139045 e!139046)))

(declare-fun c!43329 () Bool)

(assert (=> b!225300 (= c!43329 ((_ is IntegerValue!1978) (value!22470 separatorToken!170)))))

(declare-fun b!225302 () Bool)

(declare-fun res!103491 () Bool)

(assert (=> b!225302 (=> res!103491 e!139044)))

(assert (=> b!225302 (= res!103491 (not ((_ is IntegerValue!1979) (value!22470 separatorToken!170))))))

(assert (=> b!225302 (= e!139046 e!139044)))

(declare-fun b!225303 () Bool)

(declare-fun inv!17 (TokenValue!659) Bool)

(assert (=> b!225303 (= e!139046 (inv!17 (value!22470 separatorToken!170)))))

(declare-fun d!62352 () Bool)

(declare-fun c!43330 () Bool)

(assert (=> d!62352 (= c!43330 ((_ is IntegerValue!1977) (value!22470 separatorToken!170)))))

(assert (=> d!62352 (= (inv!21 (value!22470 separatorToken!170)) e!139045)))

(declare-fun b!225301 () Bool)

(declare-fun inv!16 (TokenValue!659) Bool)

(assert (=> b!225301 (= e!139045 (inv!16 (value!22470 separatorToken!170)))))

(assert (= (and d!62352 c!43330) b!225301))

(assert (= (and d!62352 (not c!43330)) b!225300))

(assert (= (and b!225300 c!43329) b!225303))

(assert (= (and b!225300 (not c!43329)) b!225302))

(assert (= (and b!225302 (not res!103491)) b!225299))

(declare-fun m!264547 () Bool)

(assert (=> b!225299 m!264547))

(declare-fun m!264549 () Bool)

(assert (=> b!225303 m!264549))

(declare-fun m!264551 () Bool)

(assert (=> b!225301 m!264551))

(assert (=> b!224959 d!62352))

(declare-fun d!62354 () Bool)

(assert (=> d!62354 (= (isEmpty!1920 (_2!2041 lt!86484)) ((_ is Nil!3412) (_2!2041 lt!86484)))))

(assert (=> b!224950 d!62354))

(declare-fun d!62356 () Bool)

(assert (=> d!62356 (= (inv!4263 (tag!833 (h!8810 rules!1920))) (= (mod (str.len (value!22469 (tag!833 (h!8810 rules!1920)))) 2) 0))))

(assert (=> b!224951 d!62356))

(declare-fun d!62358 () Bool)

(declare-fun res!103492 () Bool)

(declare-fun e!139047 () Bool)

(assert (=> d!62358 (=> (not res!103492) (not e!139047))))

(assert (=> d!62358 (= res!103492 (semiInverseModEq!219 (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toValue!1332 (transformation!637 (h!8810 rules!1920)))))))

(assert (=> d!62358 (= (inv!4266 (transformation!637 (h!8810 rules!1920))) e!139047)))

(declare-fun b!225304 () Bool)

(assert (=> b!225304 (= e!139047 (equivClasses!202 (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toValue!1332 (transformation!637 (h!8810 rules!1920)))))))

(assert (= (and d!62358 res!103492) b!225304))

(declare-fun m!264553 () Bool)

(assert (=> d!62358 m!264553))

(declare-fun m!264555 () Bool)

(assert (=> b!225304 m!264555))

(assert (=> b!224951 d!62358))

(declare-fun b!225305 () Bool)

(declare-fun e!139048 () Bool)

(assert (=> b!225305 (= e!139048 (inv!15 (value!22470 (h!8811 tokens!465))))))

(declare-fun b!225306 () Bool)

(declare-fun e!139049 () Bool)

(declare-fun e!139050 () Bool)

(assert (=> b!225306 (= e!139049 e!139050)))

(declare-fun c!43331 () Bool)

(assert (=> b!225306 (= c!43331 ((_ is IntegerValue!1978) (value!22470 (h!8811 tokens!465))))))

(declare-fun b!225308 () Bool)

(declare-fun res!103493 () Bool)

(assert (=> b!225308 (=> res!103493 e!139048)))

(assert (=> b!225308 (= res!103493 (not ((_ is IntegerValue!1979) (value!22470 (h!8811 tokens!465)))))))

(assert (=> b!225308 (= e!139050 e!139048)))

(declare-fun b!225309 () Bool)

(assert (=> b!225309 (= e!139050 (inv!17 (value!22470 (h!8811 tokens!465))))))

(declare-fun d!62360 () Bool)

(declare-fun c!43332 () Bool)

(assert (=> d!62360 (= c!43332 ((_ is IntegerValue!1977) (value!22470 (h!8811 tokens!465))))))

(assert (=> d!62360 (= (inv!21 (value!22470 (h!8811 tokens!465))) e!139049)))

(declare-fun b!225307 () Bool)

(assert (=> b!225307 (= e!139049 (inv!16 (value!22470 (h!8811 tokens!465))))))

(assert (= (and d!62360 c!43332) b!225307))

(assert (= (and d!62360 (not c!43332)) b!225306))

(assert (= (and b!225306 c!43331) b!225309))

(assert (= (and b!225306 (not c!43331)) b!225308))

(assert (= (and b!225308 (not res!103493)) b!225305))

(declare-fun m!264557 () Bool)

(assert (=> b!225305 m!264557))

(declare-fun m!264559 () Bool)

(assert (=> b!225309 m!264559))

(declare-fun m!264561 () Bool)

(assert (=> b!225307 m!264561))

(assert (=> b!224930 d!62360))

(declare-fun d!62362 () Bool)

(assert (=> d!62362 (= (isEmpty!1921 (t!33176 tokens!465)) ((_ is Nil!3414) (t!33176 tokens!465)))))

(assert (=> b!224952 d!62362))

(declare-fun d!62364 () Bool)

(declare-fun lt!86752 () BalanceConc!2200)

(assert (=> d!62364 (= (list!1304 lt!86752) (originalCharacters!680 lt!86532))))

(assert (=> d!62364 (= lt!86752 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 lt!86532))) (value!22470 lt!86532)))))

(assert (=> d!62364 (= (charsOf!292 lt!86532) lt!86752)))

(declare-fun b_lambda!6215 () Bool)

(assert (=> (not b_lambda!6215) (not d!62364)))

(declare-fun t!33220 () Bool)

(declare-fun tb!11313 () Bool)

(assert (=> (and b!224958 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toChars!1191 (transformation!637 (rule!1190 lt!86532)))) t!33220) tb!11313))

(declare-fun b!225310 () Bool)

(declare-fun e!139051 () Bool)

(declare-fun tp!93108 () Bool)

(assert (=> b!225310 (= e!139051 (and (inv!4270 (c!43241 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 lt!86532))) (value!22470 lt!86532)))) tp!93108))))

(declare-fun result!14464 () Bool)

(assert (=> tb!11313 (= result!14464 (and (inv!4271 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 lt!86532))) (value!22470 lt!86532))) e!139051))))

(assert (= tb!11313 b!225310))

(declare-fun m!264563 () Bool)

(assert (=> b!225310 m!264563))

(declare-fun m!264565 () Bool)

(assert (=> tb!11313 m!264565))

(assert (=> d!62364 t!33220))

(declare-fun b_and!16749 () Bool)

(assert (= b_and!16743 (and (=> t!33220 result!14464) b_and!16749)))

(declare-fun t!33222 () Bool)

(declare-fun tb!11315 () Bool)

(assert (=> (and b!224925 (= (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toChars!1191 (transformation!637 (rule!1190 lt!86532)))) t!33222) tb!11315))

(declare-fun result!14466 () Bool)

(assert (= result!14466 result!14464))

(assert (=> d!62364 t!33222))

(declare-fun b_and!16751 () Bool)

(assert (= b_and!16745 (and (=> t!33222 result!14466) b_and!16751)))

(declare-fun tb!11317 () Bool)

(declare-fun t!33224 () Bool)

(assert (=> (and b!224932 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 lt!86532)))) t!33224) tb!11317))

(declare-fun result!14468 () Bool)

(assert (= result!14468 result!14464))

(assert (=> d!62364 t!33224))

(declare-fun b_and!16753 () Bool)

(assert (= b_and!16747 (and (=> t!33224 result!14468) b_and!16753)))

(declare-fun m!264567 () Bool)

(assert (=> d!62364 m!264567))

(declare-fun m!264569 () Bool)

(assert (=> d!62364 m!264569))

(assert (=> b!224952 d!62364))

(declare-fun d!62366 () Bool)

(declare-fun lt!86772 () BalanceConc!2200)

(declare-fun printListTailRec!96 (LexerInterface!523 List!3424 List!3422) List!3422)

(assert (=> d!62366 (= (list!1304 lt!86772) (printListTailRec!96 thiss!17480 (dropList!128 lt!86506 0) (list!1304 (BalanceConc!2201 Empty!1096))))))

(declare-fun e!139065 () BalanceConc!2200)

(assert (=> d!62366 (= lt!86772 e!139065)))

(declare-fun c!43338 () Bool)

(assert (=> d!62366 (= c!43338 (>= 0 (size!2735 lt!86506)))))

(declare-fun e!139066 () Bool)

(assert (=> d!62366 e!139066))

(declare-fun res!103505 () Bool)

(assert (=> d!62366 (=> (not res!103505) (not e!139066))))

(assert (=> d!62366 (= res!103505 (>= 0 0))))

(assert (=> d!62366 (= (printTailRec!217 thiss!17480 lt!86506 0 (BalanceConc!2201 Empty!1096)) lt!86772)))

(declare-fun b!225332 () Bool)

(assert (=> b!225332 (= e!139066 (<= 0 (size!2735 lt!86506)))))

(declare-fun b!225333 () Bool)

(assert (=> b!225333 (= e!139065 (BalanceConc!2201 Empty!1096))))

(declare-fun b!225334 () Bool)

(assert (=> b!225334 (= e!139065 (printTailRec!217 thiss!17480 lt!86506 (+ 0 1) (++!856 (BalanceConc!2201 Empty!1096) (charsOf!292 (apply!602 lt!86506 0)))))))

(declare-fun lt!86771 () List!3424)

(assert (=> b!225334 (= lt!86771 (list!1305 lt!86506))))

(declare-fun lt!86773 () Unit!3836)

(assert (=> b!225334 (= lt!86773 (lemmaDropApply!168 lt!86771 0))))

(assert (=> b!225334 (= (head!769 (drop!181 lt!86771 0)) (apply!604 lt!86771 0))))

(declare-fun lt!86770 () Unit!3836)

(assert (=> b!225334 (= lt!86770 lt!86773)))

(declare-fun lt!86775 () List!3424)

(assert (=> b!225334 (= lt!86775 (list!1305 lt!86506))))

(declare-fun lt!86776 () Unit!3836)

(assert (=> b!225334 (= lt!86776 (lemmaDropTail!160 lt!86775 0))))

(assert (=> b!225334 (= (tail!420 (drop!181 lt!86775 0)) (drop!181 lt!86775 (+ 0 1)))))

(declare-fun lt!86774 () Unit!3836)

(assert (=> b!225334 (= lt!86774 lt!86776)))

(assert (= (and d!62366 res!103505) b!225332))

(assert (= (and d!62366 c!43338) b!225333))

(assert (= (and d!62366 (not c!43338)) b!225334))

(declare-fun m!264591 () Bool)

(assert (=> d!62366 m!264591))

(declare-fun m!264593 () Bool)

(assert (=> d!62366 m!264593))

(declare-fun m!264595 () Bool)

(assert (=> d!62366 m!264595))

(declare-fun m!264597 () Bool)

(assert (=> d!62366 m!264597))

(assert (=> d!62366 m!264591))

(assert (=> d!62366 m!264593))

(declare-fun m!264599 () Bool)

(assert (=> d!62366 m!264599))

(assert (=> b!225332 m!264597))

(declare-fun m!264601 () Bool)

(assert (=> b!225334 m!264601))

(declare-fun m!264603 () Bool)

(assert (=> b!225334 m!264603))

(declare-fun m!264605 () Bool)

(assert (=> b!225334 m!264605))

(declare-fun m!264607 () Bool)

(assert (=> b!225334 m!264607))

(assert (=> b!225334 m!264601))

(assert (=> b!225334 m!264605))

(declare-fun m!264609 () Bool)

(assert (=> b!225334 m!264609))

(declare-fun m!264611 () Bool)

(assert (=> b!225334 m!264611))

(declare-fun m!264613 () Bool)

(assert (=> b!225334 m!264613))

(declare-fun m!264615 () Bool)

(assert (=> b!225334 m!264615))

(assert (=> b!225334 m!264609))

(assert (=> b!225334 m!264607))

(declare-fun m!264617 () Bool)

(assert (=> b!225334 m!264617))

(assert (=> b!225334 m!264615))

(declare-fun m!264619 () Bool)

(assert (=> b!225334 m!264619))

(declare-fun m!264621 () Bool)

(assert (=> b!225334 m!264621))

(declare-fun m!264623 () Bool)

(assert (=> b!225334 m!264623))

(declare-fun m!264625 () Bool)

(assert (=> b!225334 m!264625))

(assert (=> b!224952 d!62366))

(declare-fun d!62372 () Bool)

(assert (=> d!62372 (= (isEmpty!1921 tokens!465) ((_ is Nil!3414) tokens!465))))

(assert (=> b!224952 d!62372))

(declare-fun d!62374 () Bool)

(assert (=> d!62374 (= (get!1065 (maxPrefix!253 thiss!17480 rules!1920 lt!86517)) (v!14277 (maxPrefix!253 thiss!17480 rules!1920 lt!86517)))))

(assert (=> b!224952 d!62374))

(declare-fun d!62376 () Bool)

(declare-fun e!139069 () Bool)

(assert (=> d!62376 e!139069))

(declare-fun res!103508 () Bool)

(assert (=> d!62376 (=> (not res!103508) (not e!139069))))

(declare-fun lt!86779 () BalanceConc!2202)

(assert (=> d!62376 (= res!103508 (= (list!1305 lt!86779) (Cons!3414 lt!86532 Nil!3414)))))

(declare-fun singleton!77 (Token!1018) BalanceConc!2202)

(assert (=> d!62376 (= lt!86779 (singleton!77 lt!86532))))

(assert (=> d!62376 (= (singletonSeq!189 lt!86532) lt!86779)))

(declare-fun b!225337 () Bool)

(declare-fun isBalanced!294 (Conc!1097) Bool)

(assert (=> b!225337 (= e!139069 (isBalanced!294 (c!43243 lt!86779)))))

(assert (= (and d!62376 res!103508) b!225337))

(declare-fun m!264627 () Bool)

(assert (=> d!62376 m!264627))

(declare-fun m!264629 () Bool)

(assert (=> d!62376 m!264629))

(declare-fun m!264631 () Bool)

(assert (=> b!225337 m!264631))

(assert (=> b!224952 d!62376))

(declare-fun b!225354 () Bool)

(declare-fun c!43348 () Bool)

(assert (=> b!225354 (= c!43348 ((_ is Star!861) (regex!637 (rule!1190 lt!86532))))))

(declare-fun e!139079 () List!3422)

(declare-fun e!139080 () List!3422)

(assert (=> b!225354 (= e!139079 e!139080)))

(declare-fun bm!11489 () Bool)

(declare-fun call!11496 () List!3422)

(declare-fun c!43349 () Bool)

(assert (=> bm!11489 (= call!11496 (usedCharacters!42 (ite c!43349 (regOne!2235 (regex!637 (rule!1190 lt!86532))) (regOne!2234 (regex!637 (rule!1190 lt!86532))))))))

(declare-fun b!225355 () Bool)

(declare-fun call!11497 () List!3422)

(assert (=> b!225355 (= e!139080 call!11497)))

(declare-fun bm!11490 () Bool)

(assert (=> bm!11490 (= call!11497 (usedCharacters!42 (ite c!43348 (reg!1190 (regex!637 (rule!1190 lt!86532))) (ite c!43349 (regTwo!2235 (regex!637 (rule!1190 lt!86532))) (regTwo!2234 (regex!637 (rule!1190 lt!86532)))))))))

(declare-fun b!225356 () Bool)

(declare-fun e!139078 () List!3422)

(declare-fun call!11495 () List!3422)

(assert (=> b!225356 (= e!139078 call!11495)))

(declare-fun b!225357 () Bool)

(declare-fun e!139081 () List!3422)

(assert (=> b!225357 (= e!139081 e!139079)))

(declare-fun c!43350 () Bool)

(assert (=> b!225357 (= c!43350 ((_ is ElementMatch!861) (regex!637 (rule!1190 lt!86532))))))

(declare-fun b!225358 () Bool)

(assert (=> b!225358 (= e!139080 e!139078)))

(assert (=> b!225358 (= c!43349 ((_ is Union!861) (regex!637 (rule!1190 lt!86532))))))

(declare-fun d!62378 () Bool)

(declare-fun c!43347 () Bool)

(assert (=> d!62378 (= c!43347 (or ((_ is EmptyExpr!861) (regex!637 (rule!1190 lt!86532))) ((_ is EmptyLang!861) (regex!637 (rule!1190 lt!86532)))))))

(assert (=> d!62378 (= (usedCharacters!42 (regex!637 (rule!1190 lt!86532))) e!139081)))

(declare-fun bm!11491 () Bool)

(declare-fun call!11494 () List!3422)

(assert (=> bm!11491 (= call!11495 (++!854 call!11496 call!11494))))

(declare-fun bm!11492 () Bool)

(assert (=> bm!11492 (= call!11494 call!11497)))

(declare-fun b!225359 () Bool)

(assert (=> b!225359 (= e!139081 Nil!3412)))

(declare-fun b!225360 () Bool)

(assert (=> b!225360 (= e!139079 (Cons!3412 (c!43242 (regex!637 (rule!1190 lt!86532))) Nil!3412))))

(declare-fun b!225361 () Bool)

(assert (=> b!225361 (= e!139078 call!11495)))

(assert (= (and d!62378 c!43347) b!225359))

(assert (= (and d!62378 (not c!43347)) b!225357))

(assert (= (and b!225357 c!43350) b!225360))

(assert (= (and b!225357 (not c!43350)) b!225354))

(assert (= (and b!225354 c!43348) b!225355))

(assert (= (and b!225354 (not c!43348)) b!225358))

(assert (= (and b!225358 c!43349) b!225356))

(assert (= (and b!225358 (not c!43349)) b!225361))

(assert (= (or b!225356 b!225361) bm!11489))

(assert (= (or b!225356 b!225361) bm!11492))

(assert (= (or b!225356 b!225361) bm!11491))

(assert (= (or b!225355 bm!11492) bm!11490))

(declare-fun m!264633 () Bool)

(assert (=> bm!11489 m!264633))

(declare-fun m!264635 () Bool)

(assert (=> bm!11490 m!264635))

(declare-fun m!264637 () Bool)

(assert (=> bm!11491 m!264637))

(assert (=> b!224952 d!62378))

(declare-fun d!62380 () Bool)

(assert (=> d!62380 (= (maxPrefix!253 thiss!17480 rules!1920 (++!854 (list!1304 (charsOf!292 separatorToken!170)) lt!86499)) (Some!602 (tuple2!3651 separatorToken!170 lt!86499)))))

(declare-fun lt!86782 () Unit!3836)

(declare-fun choose!2166 (LexerInterface!523 List!3423 Token!1018 Rule!1074 List!3422 Rule!1074) Unit!3836)

(assert (=> d!62380 (= lt!86782 (choose!2166 thiss!17480 rules!1920 separatorToken!170 (rule!1190 separatorToken!170) lt!86499 (rule!1190 lt!86532)))))

(assert (=> d!62380 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62380 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!28 thiss!17480 rules!1920 separatorToken!170 (rule!1190 separatorToken!170) lt!86499 (rule!1190 lt!86532)) lt!86782)))

(declare-fun bs!24011 () Bool)

(assert (= bs!24011 d!62380))

(assert (=> bs!24011 m!263833))

(assert (=> bs!24011 m!263763))

(assert (=> bs!24011 m!263833))

(assert (=> bs!24011 m!263845))

(assert (=> bs!24011 m!263845))

(declare-fun m!264639 () Bool)

(assert (=> bs!24011 m!264639))

(declare-fun m!264641 () Bool)

(assert (=> bs!24011 m!264641))

(assert (=> bs!24011 m!264639))

(declare-fun m!264643 () Bool)

(assert (=> bs!24011 m!264643))

(assert (=> b!224952 d!62380))

(declare-fun b!225392 () Bool)

(declare-fun res!103527 () Bool)

(declare-fun e!139102 () Bool)

(assert (=> b!225392 (=> (not res!103527) (not e!139102))))

(declare-fun lt!86789 () tuple2!3652)

(declare-datatypes ((tuple2!3658 0))(
  ( (tuple2!3659 (_1!2045 List!3424) (_2!2045 List!3422)) )
))
(declare-fun lexList!153 (LexerInterface!523 List!3423 List!3422) tuple2!3658)

(assert (=> b!225392 (= res!103527 (= (list!1305 (_1!2042 lt!86789)) (_1!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86524)))))))

(declare-fun b!225393 () Bool)

(declare-fun e!139101 () Bool)

(assert (=> b!225393 (= e!139101 (= (_2!2042 lt!86789) lt!86524))))

(declare-fun b!225394 () Bool)

(assert (=> b!225394 (= e!139102 (= (list!1304 (_2!2042 lt!86789)) (_2!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86524)))))))

(declare-fun b!225395 () Bool)

(declare-fun e!139103 () Bool)

(assert (=> b!225395 (= e!139101 e!139103)))

(declare-fun res!103526 () Bool)

(declare-fun size!2739 (BalanceConc!2200) Int)

(assert (=> b!225395 (= res!103526 (< (size!2739 (_2!2042 lt!86789)) (size!2739 lt!86524)))))

(assert (=> b!225395 (=> (not res!103526) (not e!139103))))

(declare-fun d!62382 () Bool)

(assert (=> d!62382 e!139102))

(declare-fun res!103528 () Bool)

(assert (=> d!62382 (=> (not res!103528) (not e!139102))))

(assert (=> d!62382 (= res!103528 e!139101)))

(declare-fun c!43356 () Bool)

(assert (=> d!62382 (= c!43356 (> (size!2735 (_1!2042 lt!86789)) 0))))

(declare-fun lexTailRecV2!140 (LexerInterface!523 List!3423 BalanceConc!2200 BalanceConc!2200 BalanceConc!2200 BalanceConc!2202) tuple2!3652)

(assert (=> d!62382 (= lt!86789 (lexTailRecV2!140 thiss!17480 rules!1920 lt!86524 (BalanceConc!2201 Empty!1096) lt!86524 (BalanceConc!2203 Empty!1097)))))

(assert (=> d!62382 (= (lex!323 thiss!17480 rules!1920 lt!86524) lt!86789)))

(declare-fun b!225396 () Bool)

(assert (=> b!225396 (= e!139103 (not (isEmpty!1919 (_1!2042 lt!86789))))))

(assert (= (and d!62382 c!43356) b!225395))

(assert (= (and d!62382 (not c!43356)) b!225393))

(assert (= (and b!225395 res!103526) b!225396))

(assert (= (and d!62382 res!103528) b!225392))

(assert (= (and b!225392 res!103527) b!225394))

(declare-fun m!264671 () Bool)

(assert (=> d!62382 m!264671))

(declare-fun m!264673 () Bool)

(assert (=> d!62382 m!264673))

(declare-fun m!264675 () Bool)

(assert (=> b!225392 m!264675))

(declare-fun m!264677 () Bool)

(assert (=> b!225392 m!264677))

(assert (=> b!225392 m!264677))

(declare-fun m!264679 () Bool)

(assert (=> b!225392 m!264679))

(declare-fun m!264681 () Bool)

(assert (=> b!225394 m!264681))

(assert (=> b!225394 m!264677))

(assert (=> b!225394 m!264677))

(assert (=> b!225394 m!264679))

(declare-fun m!264683 () Bool)

(assert (=> b!225395 m!264683))

(declare-fun m!264685 () Bool)

(assert (=> b!225395 m!264685))

(declare-fun m!264687 () Bool)

(assert (=> b!225396 m!264687))

(assert (=> b!224952 d!62382))

(declare-fun b!225415 () Bool)

(declare-fun res!103549 () Bool)

(declare-fun e!139112 () Bool)

(assert (=> b!225415 (=> (not res!103549) (not e!139112))))

(declare-fun lt!86803 () Option!603)

(assert (=> b!225415 (= res!103549 (= (++!854 (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86803)))) (_2!2041 (get!1065 lt!86803))) lt!86502))))

(declare-fun b!225416 () Bool)

(declare-fun res!103548 () Bool)

(assert (=> b!225416 (=> (not res!103548) (not e!139112))))

(assert (=> b!225416 (= res!103548 (matchR!199 (regex!637 (rule!1190 (_1!2041 (get!1065 lt!86803)))) (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86803))))))))

(declare-fun b!225417 () Bool)

(declare-fun e!139111 () Option!603)

(declare-fun lt!86801 () Option!603)

(declare-fun lt!86804 () Option!603)

(assert (=> b!225417 (= e!139111 (ite (and ((_ is None!602) lt!86801) ((_ is None!602) lt!86804)) None!602 (ite ((_ is None!602) lt!86804) lt!86801 (ite ((_ is None!602) lt!86801) lt!86804 (ite (>= (size!2734 (_1!2041 (v!14277 lt!86801))) (size!2734 (_1!2041 (v!14277 lt!86804)))) lt!86801 lt!86804)))))))

(declare-fun call!11501 () Option!603)

(assert (=> b!225417 (= lt!86801 call!11501)))

(assert (=> b!225417 (= lt!86804 (maxPrefix!253 thiss!17480 (t!33175 rules!1920) lt!86502))))

(declare-fun b!225418 () Bool)

(declare-fun res!103543 () Bool)

(assert (=> b!225418 (=> (not res!103543) (not e!139112))))

(assert (=> b!225418 (= res!103543 (= (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86803)))) (originalCharacters!680 (_1!2041 (get!1065 lt!86803)))))))

(declare-fun b!225419 () Bool)

(declare-fun res!103546 () Bool)

(assert (=> b!225419 (=> (not res!103546) (not e!139112))))

(declare-fun apply!605 (TokenValueInjection!1090 BalanceConc!2200) TokenValue!659)

(assert (=> b!225419 (= res!103546 (= (value!22470 (_1!2041 (get!1065 lt!86803))) (apply!605 (transformation!637 (rule!1190 (_1!2041 (get!1065 lt!86803)))) (seqFromList!651 (originalCharacters!680 (_1!2041 (get!1065 lt!86803)))))))))

(declare-fun b!225420 () Bool)

(declare-fun res!103545 () Bool)

(assert (=> b!225420 (=> (not res!103545) (not e!139112))))

(assert (=> b!225420 (= res!103545 (< (size!2737 (_2!2041 (get!1065 lt!86803))) (size!2737 lt!86502)))))

(declare-fun d!62394 () Bool)

(declare-fun e!139110 () Bool)

(assert (=> d!62394 e!139110))

(declare-fun res!103544 () Bool)

(assert (=> d!62394 (=> res!103544 e!139110)))

(declare-fun isEmpty!1927 (Option!603) Bool)

(assert (=> d!62394 (= res!103544 (isEmpty!1927 lt!86803))))

(assert (=> d!62394 (= lt!86803 e!139111)))

(declare-fun c!43359 () Bool)

(assert (=> d!62394 (= c!43359 (and ((_ is Cons!3413) rules!1920) ((_ is Nil!3413) (t!33175 rules!1920))))))

(declare-fun lt!86802 () Unit!3836)

(declare-fun lt!86800 () Unit!3836)

(assert (=> d!62394 (= lt!86802 lt!86800)))

(assert (=> d!62394 (isPrefix!333 lt!86502 lt!86502)))

(declare-fun lemmaIsPrefixRefl!176 (List!3422 List!3422) Unit!3836)

(assert (=> d!62394 (= lt!86800 (lemmaIsPrefixRefl!176 lt!86502 lt!86502))))

(declare-fun rulesValidInductive!165 (LexerInterface!523 List!3423) Bool)

(assert (=> d!62394 (rulesValidInductive!165 thiss!17480 rules!1920)))

(assert (=> d!62394 (= (maxPrefix!253 thiss!17480 rules!1920 lt!86502) lt!86803)))

(declare-fun b!225421 () Bool)

(assert (=> b!225421 (= e!139110 e!139112)))

(declare-fun res!103547 () Bool)

(assert (=> b!225421 (=> (not res!103547) (not e!139112))))

(assert (=> b!225421 (= res!103547 (isDefined!454 lt!86803))))

(declare-fun b!225422 () Bool)

(assert (=> b!225422 (= e!139111 call!11501)))

(declare-fun b!225423 () Bool)

(declare-fun contains!605 (List!3423 Rule!1074) Bool)

(assert (=> b!225423 (= e!139112 (contains!605 rules!1920 (rule!1190 (_1!2041 (get!1065 lt!86803)))))))

(declare-fun bm!11496 () Bool)

(declare-fun maxPrefixOneRule!110 (LexerInterface!523 Rule!1074 List!3422) Option!603)

(assert (=> bm!11496 (= call!11501 (maxPrefixOneRule!110 thiss!17480 (h!8810 rules!1920) lt!86502))))

(assert (= (and d!62394 c!43359) b!225422))

(assert (= (and d!62394 (not c!43359)) b!225417))

(assert (= (or b!225422 b!225417) bm!11496))

(assert (= (and d!62394 (not res!103544)) b!225421))

(assert (= (and b!225421 res!103547) b!225418))

(assert (= (and b!225418 res!103543) b!225420))

(assert (= (and b!225420 res!103545) b!225415))

(assert (= (and b!225415 res!103549) b!225419))

(assert (= (and b!225419 res!103546) b!225416))

(assert (= (and b!225416 res!103548) b!225423))

(declare-fun m!264689 () Bool)

(assert (=> b!225418 m!264689))

(declare-fun m!264691 () Bool)

(assert (=> b!225418 m!264691))

(assert (=> b!225418 m!264691))

(declare-fun m!264693 () Bool)

(assert (=> b!225418 m!264693))

(declare-fun m!264695 () Bool)

(assert (=> bm!11496 m!264695))

(declare-fun m!264697 () Bool)

(assert (=> b!225421 m!264697))

(declare-fun m!264699 () Bool)

(assert (=> b!225417 m!264699))

(assert (=> b!225423 m!264689))

(declare-fun m!264701 () Bool)

(assert (=> b!225423 m!264701))

(assert (=> b!225416 m!264689))

(assert (=> b!225416 m!264691))

(assert (=> b!225416 m!264691))

(assert (=> b!225416 m!264693))

(assert (=> b!225416 m!264693))

(declare-fun m!264703 () Bool)

(assert (=> b!225416 m!264703))

(assert (=> b!225415 m!264689))

(assert (=> b!225415 m!264691))

(assert (=> b!225415 m!264691))

(assert (=> b!225415 m!264693))

(assert (=> b!225415 m!264693))

(declare-fun m!264705 () Bool)

(assert (=> b!225415 m!264705))

(assert (=> b!225419 m!264689))

(declare-fun m!264707 () Bool)

(assert (=> b!225419 m!264707))

(assert (=> b!225419 m!264707))

(declare-fun m!264709 () Bool)

(assert (=> b!225419 m!264709))

(declare-fun m!264711 () Bool)

(assert (=> d!62394 m!264711))

(declare-fun m!264713 () Bool)

(assert (=> d!62394 m!264713))

(declare-fun m!264715 () Bool)

(assert (=> d!62394 m!264715))

(declare-fun m!264717 () Bool)

(assert (=> d!62394 m!264717))

(assert (=> b!225420 m!264689))

(declare-fun m!264719 () Bool)

(assert (=> b!225420 m!264719))

(assert (=> b!225420 m!264499))

(assert (=> b!224952 d!62394))

(declare-fun bs!24023 () Bool)

(declare-fun d!62396 () Bool)

(assert (= bs!24023 (and d!62396 b!224965)))

(declare-fun lambda!7046 () Int)

(assert (=> bs!24023 (not (= lambda!7046 lambda!7012))))

(declare-fun bs!24024 () Bool)

(assert (= bs!24024 (and d!62396 b!224924)))

(assert (=> bs!24024 (= lambda!7046 lambda!7011)))

(declare-fun bs!24025 () Bool)

(assert (= bs!24025 (and d!62396 b!225258)))

(assert (=> bs!24025 (not (= lambda!7046 lambda!7038))))

(declare-fun bs!24026 () Bool)

(assert (= bs!24026 (and d!62396 d!62276)))

(assert (=> bs!24026 (= lambda!7046 lambda!7037)))

(declare-fun bs!24027 () Bool)

(assert (= bs!24027 (and d!62396 d!62244)))

(assert (=> bs!24027 (not (= lambda!7046 lambda!7017))))

(declare-fun bs!24028 () Bool)

(assert (= bs!24028 (and d!62396 b!225098)))

(assert (=> bs!24028 (not (= lambda!7046 lambda!7027))))

(assert (=> d!62396 (= (filter!31 (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 (seqFromList!652 (t!33176 tokens!465)) separatorToken!170 0)))) lambda!7046) (t!33176 tokens!465))))

(declare-fun lt!86832 () Unit!3836)

(declare-fun choose!2167 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> d!62396 (= lt!86832 (choose!2167 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170))))

(assert (=> d!62396 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62396 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!22 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170) lt!86832)))

(declare-fun bs!24029 () Bool)

(assert (= bs!24029 d!62396))

(assert (=> bs!24029 m!263825))

(declare-fun m!264779 () Bool)

(assert (=> bs!24029 m!264779))

(declare-fun m!264781 () Bool)

(assert (=> bs!24029 m!264781))

(declare-fun m!264783 () Bool)

(assert (=> bs!24029 m!264783))

(assert (=> bs!24029 m!263841))

(declare-fun m!264785 () Bool)

(assert (=> bs!24029 m!264785))

(assert (=> bs!24029 m!263825))

(assert (=> bs!24029 m!263841))

(assert (=> bs!24029 m!263763))

(assert (=> bs!24029 m!264781))

(assert (=> b!224952 d!62396))

(declare-fun d!62414 () Bool)

(declare-fun lt!86835 () Int)

(declare-fun size!2740 (List!3424) Int)

(assert (=> d!62414 (= lt!86835 (size!2740 (list!1305 (_1!2042 lt!86500))))))

(declare-fun size!2741 (Conc!1097) Int)

(assert (=> d!62414 (= lt!86835 (size!2741 (c!43243 (_1!2042 lt!86500))))))

(assert (=> d!62414 (= (size!2735 (_1!2042 lt!86500)) lt!86835)))

(declare-fun bs!24030 () Bool)

(assert (= bs!24030 d!62414))

(declare-fun m!264787 () Bool)

(assert (=> bs!24030 m!264787))

(assert (=> bs!24030 m!264787))

(declare-fun m!264789 () Bool)

(assert (=> bs!24030 m!264789))

(declare-fun m!264791 () Bool)

(assert (=> bs!24030 m!264791))

(assert (=> b!224952 d!62414))

(declare-fun d!62416 () Bool)

(declare-fun e!139152 () Bool)

(assert (=> d!62416 e!139152))

(declare-fun res!103583 () Bool)

(assert (=> d!62416 (=> (not res!103583) (not e!139152))))

(declare-fun lt!86836 () BalanceConc!2202)

(assert (=> d!62416 (= res!103583 (= (list!1305 lt!86836) (Cons!3414 separatorToken!170 Nil!3414)))))

(assert (=> d!62416 (= lt!86836 (singleton!77 separatorToken!170))))

(assert (=> d!62416 (= (singletonSeq!189 separatorToken!170) lt!86836)))

(declare-fun b!225477 () Bool)

(assert (=> b!225477 (= e!139152 (isBalanced!294 (c!43243 lt!86836)))))

(assert (= (and d!62416 res!103583) b!225477))

(declare-fun m!264793 () Bool)

(assert (=> d!62416 m!264793))

(declare-fun m!264795 () Bool)

(assert (=> d!62416 m!264795))

(declare-fun m!264797 () Bool)

(assert (=> b!225477 m!264797))

(assert (=> b!224952 d!62416))

(declare-fun b!225499 () Bool)

(declare-fun e!139172 () Option!604)

(assert (=> b!225499 (= e!139172 (Some!603 (h!8810 rules!1920)))))

(declare-fun b!225500 () Bool)

(declare-fun e!139171 () Bool)

(declare-fun lt!86847 () Option!604)

(assert (=> b!225500 (= e!139171 (= (tag!833 (get!1066 lt!86847)) (tag!833 (rule!1190 lt!86532))))))

(declare-fun b!225501 () Bool)

(declare-fun lt!86848 () Unit!3836)

(declare-fun lt!86846 () Unit!3836)

(assert (=> b!225501 (= lt!86848 lt!86846)))

(assert (=> b!225501 (rulesInvariant!489 thiss!17480 (t!33175 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!19 (LexerInterface!523 Rule!1074 List!3423) Unit!3836)

(assert (=> b!225501 (= lt!86846 (lemmaInvariantOnRulesThenOnTail!19 thiss!17480 (h!8810 rules!1920) (t!33175 rules!1920)))))

(declare-fun e!139173 () Option!604)

(assert (=> b!225501 (= e!139173 (getRuleFromTag!78 thiss!17480 (t!33175 rules!1920) (tag!833 (rule!1190 lt!86532))))))

(declare-fun b!225502 () Bool)

(assert (=> b!225502 (= e!139173 None!603)))

(declare-fun b!225503 () Bool)

(assert (=> b!225503 (= e!139172 e!139173)))

(declare-fun c!43374 () Bool)

(assert (=> b!225503 (= c!43374 (and ((_ is Cons!3413) rules!1920) (not (= (tag!833 (h!8810 rules!1920)) (tag!833 (rule!1190 lt!86532))))))))

(declare-fun d!62418 () Bool)

(declare-fun e!139170 () Bool)

(assert (=> d!62418 e!139170))

(declare-fun res!103595 () Bool)

(assert (=> d!62418 (=> res!103595 e!139170)))

(declare-fun isEmpty!1928 (Option!604) Bool)

(assert (=> d!62418 (= res!103595 (isEmpty!1928 lt!86847))))

(assert (=> d!62418 (= lt!86847 e!139172)))

(declare-fun c!43375 () Bool)

(assert (=> d!62418 (= c!43375 (and ((_ is Cons!3413) rules!1920) (= (tag!833 (h!8810 rules!1920)) (tag!833 (rule!1190 lt!86532)))))))

(assert (=> d!62418 (rulesInvariant!489 thiss!17480 rules!1920)))

(assert (=> d!62418 (= (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 lt!86532))) lt!86847)))

(declare-fun b!225504 () Bool)

(assert (=> b!225504 (= e!139170 e!139171)))

(declare-fun res!103594 () Bool)

(assert (=> b!225504 (=> (not res!103594) (not e!139171))))

(assert (=> b!225504 (= res!103594 (contains!605 rules!1920 (get!1066 lt!86847)))))

(assert (= (and d!62418 c!43375) b!225499))

(assert (= (and d!62418 (not c!43375)) b!225503))

(assert (= (and b!225503 c!43374) b!225501))

(assert (= (and b!225503 (not c!43374)) b!225502))

(assert (= (and d!62418 (not res!103595)) b!225504))

(assert (= (and b!225504 res!103594) b!225500))

(declare-fun m!264807 () Bool)

(assert (=> b!225500 m!264807))

(declare-fun m!264809 () Bool)

(assert (=> b!225501 m!264809))

(declare-fun m!264811 () Bool)

(assert (=> b!225501 m!264811))

(declare-fun m!264813 () Bool)

(assert (=> b!225501 m!264813))

(declare-fun m!264815 () Bool)

(assert (=> d!62418 m!264815))

(assert (=> d!62418 m!263785))

(assert (=> b!225504 m!264807))

(assert (=> b!225504 m!264807))

(declare-fun m!264817 () Bool)

(assert (=> b!225504 m!264817))

(assert (=> b!224952 d!62418))

(declare-fun b!225517 () Bool)

(declare-fun e!139180 () List!3424)

(declare-fun call!11507 () List!3424)

(assert (=> b!225517 (= e!139180 call!11507)))

(declare-fun bm!11502 () Bool)

(assert (=> bm!11502 (= call!11507 (filter!31 (t!33176 lt!86510) lambda!7011))))

(declare-fun b!225518 () Bool)

(declare-fun e!139182 () Bool)

(declare-fun lt!86851 () List!3424)

(assert (=> b!225518 (= e!139182 (forall!765 lt!86851 lambda!7011))))

(declare-fun b!225519 () Bool)

(declare-fun e!139181 () List!3424)

(assert (=> b!225519 (= e!139181 e!139180)))

(declare-fun c!43381 () Bool)

(declare-fun dynLambda!1579 (Int Token!1018) Bool)

(assert (=> b!225519 (= c!43381 (dynLambda!1579 lambda!7011 (h!8811 lt!86510)))))

(declare-fun b!225520 () Bool)

(declare-fun res!103601 () Bool)

(assert (=> b!225520 (=> (not res!103601) (not e!139182))))

(declare-fun content!474 (List!3424) (InoxSet Token!1018))

(assert (=> b!225520 (= res!103601 (= ((_ map implies) (content!474 lt!86851) (content!474 lt!86510)) ((as const (InoxSet Token!1018)) true)))))

(declare-fun d!62426 () Bool)

(assert (=> d!62426 e!139182))

(declare-fun res!103600 () Bool)

(assert (=> d!62426 (=> (not res!103600) (not e!139182))))

(assert (=> d!62426 (= res!103600 (<= (size!2740 lt!86851) (size!2740 lt!86510)))))

(assert (=> d!62426 (= lt!86851 e!139181)))

(declare-fun c!43380 () Bool)

(assert (=> d!62426 (= c!43380 ((_ is Nil!3414) lt!86510))))

(assert (=> d!62426 (= (filter!31 lt!86510 lambda!7011) lt!86851)))

(declare-fun b!225521 () Bool)

(assert (=> b!225521 (= e!139181 Nil!3414)))

(declare-fun b!225522 () Bool)

(assert (=> b!225522 (= e!139180 (Cons!3414 (h!8811 lt!86510) call!11507))))

(assert (= (and d!62426 c!43380) b!225521))

(assert (= (and d!62426 (not c!43380)) b!225519))

(assert (= (and b!225519 c!43381) b!225522))

(assert (= (and b!225519 (not c!43381)) b!225517))

(assert (= (or b!225522 b!225517) bm!11502))

(assert (= (and d!62426 res!103600) b!225520))

(assert (= (and b!225520 res!103601) b!225518))

(declare-fun b_lambda!6219 () Bool)

(assert (=> (not b_lambda!6219) (not b!225519)))

(declare-fun m!264819 () Bool)

(assert (=> bm!11502 m!264819))

(declare-fun m!264821 () Bool)

(assert (=> b!225520 m!264821))

(declare-fun m!264823 () Bool)

(assert (=> b!225520 m!264823))

(declare-fun m!264825 () Bool)

(assert (=> d!62426 m!264825))

(declare-fun m!264827 () Bool)

(assert (=> d!62426 m!264827))

(declare-fun m!264829 () Bool)

(assert (=> b!225518 m!264829))

(declare-fun m!264831 () Bool)

(assert (=> b!225519 m!264831))

(assert (=> b!224952 d!62426))

(declare-fun d!62428 () Bool)

(assert (=> d!62428 (= lt!86502 (_2!2041 lt!86497))))

(declare-fun lt!86854 () Unit!3836)

(declare-fun choose!2169 (List!3422 List!3422 List!3422 List!3422 List!3422) Unit!3836)

(assert (=> d!62428 (= lt!86854 (choose!2169 lt!86516 lt!86502 lt!86516 (_2!2041 lt!86497) lt!86517))))

(assert (=> d!62428 (isPrefix!333 lt!86516 lt!86517)))

(assert (=> d!62428 (= (lemmaSamePrefixThenSameSuffix!158 lt!86516 lt!86502 lt!86516 (_2!2041 lt!86497) lt!86517) lt!86854)))

(declare-fun bs!24041 () Bool)

(assert (= bs!24041 d!62428))

(declare-fun m!264833 () Bool)

(assert (=> bs!24041 m!264833))

(declare-fun m!264835 () Bool)

(assert (=> bs!24041 m!264835))

(assert (=> b!224952 d!62428))

(declare-fun d!62430 () Bool)

(declare-fun lt!86857 () BalanceConc!2200)

(assert (=> d!62430 (= (list!1304 lt!86857) (printList!207 thiss!17480 (list!1305 lt!86506)))))

(assert (=> d!62430 (= lt!86857 (printTailRec!217 thiss!17480 lt!86506 0 (BalanceConc!2201 Empty!1096)))))

(assert (=> d!62430 (= (print!254 thiss!17480 lt!86506) lt!86857)))

(declare-fun bs!24042 () Bool)

(assert (= bs!24042 d!62430))

(declare-fun m!264837 () Bool)

(assert (=> bs!24042 m!264837))

(assert (=> bs!24042 m!264613))

(assert (=> bs!24042 m!264613))

(declare-fun m!264839 () Bool)

(assert (=> bs!24042 m!264839))

(assert (=> bs!24042 m!263879))

(assert (=> b!224952 d!62430))

(declare-fun d!62432 () Bool)

(assert (=> d!62432 (= (head!770 lt!86499) (h!8809 lt!86499))))

(assert (=> b!224952 d!62432))

(declare-fun d!62434 () Bool)

(declare-fun lt!86866 () Bool)

(assert (=> d!62434 (= lt!86866 (select (content!473 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170)))) lt!86501))))

(declare-fun e!139190 () Bool)

(assert (=> d!62434 (= lt!86866 e!139190)))

(declare-fun res!103607 () Bool)

(assert (=> d!62434 (=> (not res!103607) (not e!139190))))

(assert (=> d!62434 (= res!103607 ((_ is Cons!3412) (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170)))))))

(assert (=> d!62434 (= (contains!604 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170))) lt!86501) lt!86866)))

(declare-fun b!225531 () Bool)

(declare-fun e!139189 () Bool)

(assert (=> b!225531 (= e!139190 e!139189)))

(declare-fun res!103606 () Bool)

(assert (=> b!225531 (=> res!103606 e!139189)))

(assert (=> b!225531 (= res!103606 (= (h!8809 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170)))) lt!86501))))

(declare-fun b!225532 () Bool)

(assert (=> b!225532 (= e!139189 (contains!604 (t!33174 (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170)))) lt!86501))))

(assert (= (and d!62434 res!103607) b!225531))

(assert (= (and b!225531 (not res!103606)) b!225532))

(assert (=> d!62434 m!263885))

(declare-fun m!264841 () Bool)

(assert (=> d!62434 m!264841))

(declare-fun m!264843 () Bool)

(assert (=> d!62434 m!264843))

(declare-fun m!264845 () Bool)

(assert (=> b!225532 m!264845))

(assert (=> b!224952 d!62434))

(declare-fun d!62436 () Bool)

(declare-fun lt!86871 () Bool)

(assert (=> d!62436 (= lt!86871 (select (content!473 (usedCharacters!42 (regex!637 (rule!1190 lt!86532)))) lt!86529))))

(declare-fun e!139192 () Bool)

(assert (=> d!62436 (= lt!86871 e!139192)))

(declare-fun res!103609 () Bool)

(assert (=> d!62436 (=> (not res!103609) (not e!139192))))

(assert (=> d!62436 (= res!103609 ((_ is Cons!3412) (usedCharacters!42 (regex!637 (rule!1190 lt!86532)))))))

(assert (=> d!62436 (= (contains!604 (usedCharacters!42 (regex!637 (rule!1190 lt!86532))) lt!86529) lt!86871)))

(declare-fun b!225533 () Bool)

(declare-fun e!139191 () Bool)

(assert (=> b!225533 (= e!139192 e!139191)))

(declare-fun res!103608 () Bool)

(assert (=> b!225533 (=> res!103608 e!139191)))

(assert (=> b!225533 (= res!103608 (= (h!8809 (usedCharacters!42 (regex!637 (rule!1190 lt!86532)))) lt!86529))))

(declare-fun b!225534 () Bool)

(assert (=> b!225534 (= e!139191 (contains!604 (t!33174 (usedCharacters!42 (regex!637 (rule!1190 lt!86532)))) lt!86529))))

(assert (= (and d!62436 res!103609) b!225533))

(assert (= (and b!225533 (not res!103608)) b!225534))

(assert (=> d!62436 m!263909))

(declare-fun m!264847 () Bool)

(assert (=> d!62436 m!264847))

(declare-fun m!264849 () Bool)

(assert (=> d!62436 m!264849))

(declare-fun m!264851 () Bool)

(assert (=> b!225534 m!264851))

(assert (=> b!224952 d!62436))

(declare-fun d!62438 () Bool)

(declare-fun lt!86872 () Int)

(assert (=> d!62438 (= lt!86872 (size!2740 (list!1305 (_1!2042 lt!86486))))))

(assert (=> d!62438 (= lt!86872 (size!2741 (c!43243 (_1!2042 lt!86486))))))

(assert (=> d!62438 (= (size!2735 (_1!2042 lt!86486)) lt!86872)))

(declare-fun bs!24043 () Bool)

(assert (= bs!24043 d!62438))

(declare-fun m!264853 () Bool)

(assert (=> bs!24043 m!264853))

(assert (=> bs!24043 m!264853))

(declare-fun m!264855 () Bool)

(assert (=> bs!24043 m!264855))

(declare-fun m!264857 () Bool)

(assert (=> bs!24043 m!264857))

(assert (=> b!224952 d!62438))

(declare-fun d!62440 () Bool)

(assert (=> d!62440 (rulesProduceIndividualToken!272 thiss!17480 rules!1920 lt!86532)))

(declare-fun lt!86926 () Unit!3836)

(declare-fun choose!2170 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> d!62440 (= lt!86926 (choose!2170 thiss!17480 rules!1920 tokens!465 lt!86532))))

(assert (=> d!62440 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62440 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!90 thiss!17480 rules!1920 tokens!465 lt!86532) lt!86926)))

(declare-fun bs!24051 () Bool)

(assert (= bs!24051 d!62440))

(assert (=> bs!24051 m!263893))

(declare-fun m!265117 () Bool)

(assert (=> bs!24051 m!265117))

(assert (=> bs!24051 m!263763))

(assert (=> b!224952 d!62440))

(declare-fun d!62492 () Bool)

(declare-fun e!139258 () Bool)

(assert (=> d!62492 e!139258))

(declare-fun res!103704 () Bool)

(assert (=> d!62492 (=> (not res!103704) (not e!139258))))

(assert (=> d!62492 (= res!103704 (isDefined!455 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 separatorToken!170)))))))

(declare-fun lt!86929 () Unit!3836)

(declare-fun choose!2171 (LexerInterface!523 List!3423 List!3422 Token!1018) Unit!3836)

(assert (=> d!62492 (= lt!86929 (choose!2171 thiss!17480 rules!1920 lt!86491 separatorToken!170))))

(assert (=> d!62492 (rulesInvariant!489 thiss!17480 rules!1920)))

(assert (=> d!62492 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!78 thiss!17480 rules!1920 lt!86491 separatorToken!170) lt!86929)))

(declare-fun b!225651 () Bool)

(declare-fun res!103705 () Bool)

(assert (=> b!225651 (=> (not res!103705) (not e!139258))))

(assert (=> b!225651 (= res!103705 (matchR!199 (regex!637 (get!1066 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 separatorToken!170))))) (list!1304 (charsOf!292 separatorToken!170))))))

(declare-fun b!225652 () Bool)

(assert (=> b!225652 (= e!139258 (= (rule!1190 separatorToken!170) (get!1066 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 separatorToken!170))))))))

(assert (= (and d!62492 res!103704) b!225651))

(assert (= (and b!225651 res!103705) b!225652))

(assert (=> d!62492 m!263929))

(assert (=> d!62492 m!263929))

(declare-fun m!265119 () Bool)

(assert (=> d!62492 m!265119))

(declare-fun m!265121 () Bool)

(assert (=> d!62492 m!265121))

(assert (=> d!62492 m!263785))

(assert (=> b!225651 m!263929))

(declare-fun m!265123 () Bool)

(assert (=> b!225651 m!265123))

(assert (=> b!225651 m!263845))

(declare-fun m!265125 () Bool)

(assert (=> b!225651 m!265125))

(assert (=> b!225651 m!263929))

(assert (=> b!225651 m!263833))

(assert (=> b!225651 m!263845))

(assert (=> b!225651 m!263833))

(assert (=> b!225652 m!263929))

(assert (=> b!225652 m!263929))

(assert (=> b!225652 m!265123))

(assert (=> b!224952 d!62492))

(declare-fun d!62494 () Bool)

(assert (=> d!62494 (= (head!770 lt!86485) (h!8809 lt!86485))))

(assert (=> b!224952 d!62494))

(declare-fun d!62496 () Bool)

(declare-fun lt!86939 () Bool)

(declare-fun e!139272 () Bool)

(assert (=> d!62496 (= lt!86939 e!139272)))

(declare-fun res!103714 () Bool)

(assert (=> d!62496 (=> (not res!103714) (not e!139272))))

(assert (=> d!62496 (= res!103714 (= (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 lt!86532))))) (list!1305 (singletonSeq!189 lt!86532))))))

(declare-fun e!139273 () Bool)

(assert (=> d!62496 (= lt!86939 e!139273)))

(declare-fun res!103715 () Bool)

(assert (=> d!62496 (=> (not res!103715) (not e!139273))))

(declare-fun lt!86938 () tuple2!3652)

(assert (=> d!62496 (= res!103715 (= (size!2735 (_1!2042 lt!86938)) 1))))

(assert (=> d!62496 (= lt!86938 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 lt!86532))))))

(assert (=> d!62496 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62496 (= (rulesProduceIndividualToken!272 thiss!17480 rules!1920 lt!86532) lt!86939)))

(declare-fun b!225676 () Bool)

(declare-fun res!103713 () Bool)

(assert (=> b!225676 (=> (not res!103713) (not e!139273))))

(assert (=> b!225676 (= res!103713 (= (apply!602 (_1!2042 lt!86938) 0) lt!86532))))

(declare-fun b!225677 () Bool)

(assert (=> b!225677 (= e!139273 (isEmpty!1918 (_2!2042 lt!86938)))))

(declare-fun b!225678 () Bool)

(assert (=> b!225678 (= e!139272 (isEmpty!1918 (_2!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 lt!86532))))))))

(assert (= (and d!62496 res!103715) b!225676))

(assert (= (and b!225676 res!103713) b!225677))

(assert (= (and d!62496 res!103714) b!225678))

(assert (=> d!62496 m!263883))

(declare-fun m!265141 () Bool)

(assert (=> d!62496 m!265141))

(assert (=> d!62496 m!263883))

(assert (=> d!62496 m!263883))

(declare-fun m!265143 () Bool)

(assert (=> d!62496 m!265143))

(assert (=> d!62496 m!263763))

(declare-fun m!265145 () Bool)

(assert (=> d!62496 m!265145))

(assert (=> d!62496 m!265143))

(declare-fun m!265147 () Bool)

(assert (=> d!62496 m!265147))

(declare-fun m!265149 () Bool)

(assert (=> d!62496 m!265149))

(declare-fun m!265151 () Bool)

(assert (=> b!225676 m!265151))

(declare-fun m!265153 () Bool)

(assert (=> b!225677 m!265153))

(assert (=> b!225678 m!263883))

(assert (=> b!225678 m!263883))

(assert (=> b!225678 m!265143))

(assert (=> b!225678 m!265143))

(assert (=> b!225678 m!265147))

(declare-fun m!265155 () Bool)

(assert (=> b!225678 m!265155))

(assert (=> b!224952 d!62496))

(declare-fun d!62502 () Bool)

(assert (=> d!62502 (isPrefix!333 lt!86516 (++!854 lt!86516 lt!86502))))

(declare-fun lt!86942 () Unit!3836)

(declare-fun choose!2172 (List!3422 List!3422) Unit!3836)

(assert (=> d!62502 (= lt!86942 (choose!2172 lt!86516 lt!86502))))

(assert (=> d!62502 (= (lemmaConcatTwoListThenFirstIsPrefix!228 lt!86516 lt!86502) lt!86942)))

(declare-fun bs!24063 () Bool)

(assert (= bs!24063 d!62502))

(assert (=> bs!24063 m!263835))

(assert (=> bs!24063 m!263835))

(declare-fun m!265163 () Bool)

(assert (=> bs!24063 m!265163))

(declare-fun m!265165 () Bool)

(assert (=> bs!24063 m!265165))

(assert (=> b!224952 d!62502))

(declare-fun b!225687 () Bool)

(declare-fun res!103722 () Bool)

(declare-fun e!139280 () Bool)

(assert (=> b!225687 (=> (not res!103722) (not e!139280))))

(declare-fun lt!86946 () Option!603)

(assert (=> b!225687 (= res!103722 (= (++!854 (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86946)))) (_2!2041 (get!1065 lt!86946))) lt!86517))))

(declare-fun b!225688 () Bool)

(declare-fun res!103721 () Bool)

(assert (=> b!225688 (=> (not res!103721) (not e!139280))))

(assert (=> b!225688 (= res!103721 (matchR!199 (regex!637 (rule!1190 (_1!2041 (get!1065 lt!86946)))) (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86946))))))))

(declare-fun b!225689 () Bool)

(declare-fun e!139279 () Option!603)

(declare-fun lt!86944 () Option!603)

(declare-fun lt!86947 () Option!603)

(assert (=> b!225689 (= e!139279 (ite (and ((_ is None!602) lt!86944) ((_ is None!602) lt!86947)) None!602 (ite ((_ is None!602) lt!86947) lt!86944 (ite ((_ is None!602) lt!86944) lt!86947 (ite (>= (size!2734 (_1!2041 (v!14277 lt!86944))) (size!2734 (_1!2041 (v!14277 lt!86947)))) lt!86944 lt!86947)))))))

(declare-fun call!11526 () Option!603)

(assert (=> b!225689 (= lt!86944 call!11526)))

(assert (=> b!225689 (= lt!86947 (maxPrefix!253 thiss!17480 (t!33175 rules!1920) lt!86517))))

(declare-fun b!225690 () Bool)

(declare-fun res!103716 () Bool)

(assert (=> b!225690 (=> (not res!103716) (not e!139280))))

(assert (=> b!225690 (= res!103716 (= (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!86946)))) (originalCharacters!680 (_1!2041 (get!1065 lt!86946)))))))

(declare-fun b!225691 () Bool)

(declare-fun res!103719 () Bool)

(assert (=> b!225691 (=> (not res!103719) (not e!139280))))

(assert (=> b!225691 (= res!103719 (= (value!22470 (_1!2041 (get!1065 lt!86946))) (apply!605 (transformation!637 (rule!1190 (_1!2041 (get!1065 lt!86946)))) (seqFromList!651 (originalCharacters!680 (_1!2041 (get!1065 lt!86946)))))))))

(declare-fun b!225692 () Bool)

(declare-fun res!103718 () Bool)

(assert (=> b!225692 (=> (not res!103718) (not e!139280))))

(assert (=> b!225692 (= res!103718 (< (size!2737 (_2!2041 (get!1065 lt!86946))) (size!2737 lt!86517)))))

(declare-fun d!62508 () Bool)

(declare-fun e!139278 () Bool)

(assert (=> d!62508 e!139278))

(declare-fun res!103717 () Bool)

(assert (=> d!62508 (=> res!103717 e!139278)))

(assert (=> d!62508 (= res!103717 (isEmpty!1927 lt!86946))))

(assert (=> d!62508 (= lt!86946 e!139279)))

(declare-fun c!43408 () Bool)

(assert (=> d!62508 (= c!43408 (and ((_ is Cons!3413) rules!1920) ((_ is Nil!3413) (t!33175 rules!1920))))))

(declare-fun lt!86945 () Unit!3836)

(declare-fun lt!86943 () Unit!3836)

(assert (=> d!62508 (= lt!86945 lt!86943)))

(assert (=> d!62508 (isPrefix!333 lt!86517 lt!86517)))

(assert (=> d!62508 (= lt!86943 (lemmaIsPrefixRefl!176 lt!86517 lt!86517))))

(assert (=> d!62508 (rulesValidInductive!165 thiss!17480 rules!1920)))

(assert (=> d!62508 (= (maxPrefix!253 thiss!17480 rules!1920 lt!86517) lt!86946)))

(declare-fun b!225693 () Bool)

(assert (=> b!225693 (= e!139278 e!139280)))

(declare-fun res!103720 () Bool)

(assert (=> b!225693 (=> (not res!103720) (not e!139280))))

(assert (=> b!225693 (= res!103720 (isDefined!454 lt!86946))))

(declare-fun b!225694 () Bool)

(assert (=> b!225694 (= e!139279 call!11526)))

(declare-fun b!225695 () Bool)

(assert (=> b!225695 (= e!139280 (contains!605 rules!1920 (rule!1190 (_1!2041 (get!1065 lt!86946)))))))

(declare-fun bm!11521 () Bool)

(assert (=> bm!11521 (= call!11526 (maxPrefixOneRule!110 thiss!17480 (h!8810 rules!1920) lt!86517))))

(assert (= (and d!62508 c!43408) b!225694))

(assert (= (and d!62508 (not c!43408)) b!225689))

(assert (= (or b!225694 b!225689) bm!11521))

(assert (= (and d!62508 (not res!103717)) b!225693))

(assert (= (and b!225693 res!103720) b!225690))

(assert (= (and b!225690 res!103716) b!225692))

(assert (= (and b!225692 res!103718) b!225687))

(assert (= (and b!225687 res!103722) b!225691))

(assert (= (and b!225691 res!103719) b!225688))

(assert (= (and b!225688 res!103721) b!225695))

(declare-fun m!265167 () Bool)

(assert (=> b!225690 m!265167))

(declare-fun m!265169 () Bool)

(assert (=> b!225690 m!265169))

(assert (=> b!225690 m!265169))

(declare-fun m!265171 () Bool)

(assert (=> b!225690 m!265171))

(declare-fun m!265173 () Bool)

(assert (=> bm!11521 m!265173))

(declare-fun m!265175 () Bool)

(assert (=> b!225693 m!265175))

(declare-fun m!265177 () Bool)

(assert (=> b!225689 m!265177))

(assert (=> b!225695 m!265167))

(declare-fun m!265179 () Bool)

(assert (=> b!225695 m!265179))

(assert (=> b!225688 m!265167))

(assert (=> b!225688 m!265169))

(assert (=> b!225688 m!265169))

(assert (=> b!225688 m!265171))

(assert (=> b!225688 m!265171))

(declare-fun m!265181 () Bool)

(assert (=> b!225688 m!265181))

(assert (=> b!225687 m!265167))

(assert (=> b!225687 m!265169))

(assert (=> b!225687 m!265169))

(assert (=> b!225687 m!265171))

(assert (=> b!225687 m!265171))

(declare-fun m!265183 () Bool)

(assert (=> b!225687 m!265183))

(assert (=> b!225691 m!265167))

(declare-fun m!265185 () Bool)

(assert (=> b!225691 m!265185))

(assert (=> b!225691 m!265185))

(declare-fun m!265187 () Bool)

(assert (=> b!225691 m!265187))

(declare-fun m!265189 () Bool)

(assert (=> d!62508 m!265189))

(declare-fun m!265191 () Bool)

(assert (=> d!62508 m!265191))

(declare-fun m!265193 () Bool)

(assert (=> d!62508 m!265193))

(assert (=> d!62508 m!264717))

(assert (=> b!225692 m!265167))

(declare-fun m!265195 () Bool)

(assert (=> b!225692 m!265195))

(declare-fun m!265197 () Bool)

(assert (=> b!225692 m!265197))

(assert (=> b!224952 d!62508))

(declare-fun d!62510 () Bool)

(assert (=> d!62510 (= (isDefined!455 lt!86520) (not (isEmpty!1928 lt!86520)))))

(declare-fun bs!24064 () Bool)

(assert (= bs!24064 d!62510))

(declare-fun m!265199 () Bool)

(assert (=> bs!24064 m!265199))

(assert (=> b!224952 d!62510))

(declare-fun b!225696 () Bool)

(declare-fun e!139283 () Option!604)

(assert (=> b!225696 (= e!139283 (Some!603 (h!8810 rules!1920)))))

(declare-fun b!225697 () Bool)

(declare-fun e!139282 () Bool)

(declare-fun lt!86949 () Option!604)

(assert (=> b!225697 (= e!139282 (= (tag!833 (get!1066 lt!86949)) (tag!833 (rule!1190 separatorToken!170))))))

(declare-fun b!225698 () Bool)

(declare-fun lt!86950 () Unit!3836)

(declare-fun lt!86948 () Unit!3836)

(assert (=> b!225698 (= lt!86950 lt!86948)))

(assert (=> b!225698 (rulesInvariant!489 thiss!17480 (t!33175 rules!1920))))

(assert (=> b!225698 (= lt!86948 (lemmaInvariantOnRulesThenOnTail!19 thiss!17480 (h!8810 rules!1920) (t!33175 rules!1920)))))

(declare-fun e!139284 () Option!604)

(assert (=> b!225698 (= e!139284 (getRuleFromTag!78 thiss!17480 (t!33175 rules!1920) (tag!833 (rule!1190 separatorToken!170))))))

(declare-fun b!225699 () Bool)

(assert (=> b!225699 (= e!139284 None!603)))

(declare-fun b!225700 () Bool)

(assert (=> b!225700 (= e!139283 e!139284)))

(declare-fun c!43409 () Bool)

(assert (=> b!225700 (= c!43409 (and ((_ is Cons!3413) rules!1920) (not (= (tag!833 (h!8810 rules!1920)) (tag!833 (rule!1190 separatorToken!170))))))))

(declare-fun d!62512 () Bool)

(declare-fun e!139281 () Bool)

(assert (=> d!62512 e!139281))

(declare-fun res!103724 () Bool)

(assert (=> d!62512 (=> res!103724 e!139281)))

(assert (=> d!62512 (= res!103724 (isEmpty!1928 lt!86949))))

(assert (=> d!62512 (= lt!86949 e!139283)))

(declare-fun c!43410 () Bool)

(assert (=> d!62512 (= c!43410 (and ((_ is Cons!3413) rules!1920) (= (tag!833 (h!8810 rules!1920)) (tag!833 (rule!1190 separatorToken!170)))))))

(assert (=> d!62512 (rulesInvariant!489 thiss!17480 rules!1920)))

(assert (=> d!62512 (= (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 separatorToken!170))) lt!86949)))

(declare-fun b!225701 () Bool)

(assert (=> b!225701 (= e!139281 e!139282)))

(declare-fun res!103723 () Bool)

(assert (=> b!225701 (=> (not res!103723) (not e!139282))))

(assert (=> b!225701 (= res!103723 (contains!605 rules!1920 (get!1066 lt!86949)))))

(assert (= (and d!62512 c!43410) b!225696))

(assert (= (and d!62512 (not c!43410)) b!225700))

(assert (= (and b!225700 c!43409) b!225698))

(assert (= (and b!225700 (not c!43409)) b!225699))

(assert (= (and d!62512 (not res!103724)) b!225701))

(assert (= (and b!225701 res!103723) b!225697))

(declare-fun m!265201 () Bool)

(assert (=> b!225697 m!265201))

(assert (=> b!225698 m!264809))

(assert (=> b!225698 m!264811))

(declare-fun m!265203 () Bool)

(assert (=> b!225698 m!265203))

(declare-fun m!265205 () Bool)

(assert (=> d!62512 m!265205))

(assert (=> d!62512 m!263785))

(assert (=> b!225701 m!265201))

(assert (=> b!225701 m!265201))

(declare-fun m!265207 () Bool)

(assert (=> b!225701 m!265207))

(assert (=> b!224952 d!62512))

(declare-fun d!62514 () Bool)

(declare-fun lt!86951 () BalanceConc!2200)

(assert (=> d!62514 (= (list!1304 lt!86951) (printList!207 thiss!17480 (list!1305 lt!86511)))))

(assert (=> d!62514 (= lt!86951 (printTailRec!217 thiss!17480 lt!86511 0 (BalanceConc!2201 Empty!1096)))))

(assert (=> d!62514 (= (print!254 thiss!17480 lt!86511) lt!86951)))

(declare-fun bs!24065 () Bool)

(assert (= bs!24065 d!62514))

(declare-fun m!265209 () Bool)

(assert (=> bs!24065 m!265209))

(declare-fun m!265211 () Bool)

(assert (=> bs!24065 m!265211))

(assert (=> bs!24065 m!265211))

(declare-fun m!265213 () Bool)

(assert (=> bs!24065 m!265213))

(assert (=> bs!24065 m!263923))

(assert (=> b!224952 d!62514))

(declare-fun d!62516 () Bool)

(assert (=> d!62516 (= (head!769 (t!33176 tokens!465)) (h!8811 (t!33176 tokens!465)))))

(assert (=> b!224952 d!62516))

(declare-fun d!62518 () Bool)

(declare-fun e!139303 () Bool)

(assert (=> d!62518 e!139303))

(declare-fun res!103736 () Bool)

(assert (=> d!62518 (=> res!103736 e!139303)))

(assert (=> d!62518 (= res!103736 (isEmpty!1921 tokens!465))))

(declare-fun lt!86971 () Unit!3836)

(declare-fun choose!2173 (LexerInterface!523 List!3423 List!3424 Token!1018) Unit!3836)

(assert (=> d!62518 (= lt!86971 (choose!2173 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!62518 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62518 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!98 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!86971)))

(declare-fun b!225725 () Bool)

(declare-fun e!139302 () Bool)

(assert (=> b!225725 (= e!139303 e!139302)))

(declare-fun res!103737 () Bool)

(assert (=> b!225725 (=> (not res!103737) (not e!139302))))

(assert (=> b!225725 (= res!103737 (isDefined!454 (maxPrefix!253 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!225726 () Bool)

(assert (=> b!225726 (= e!139302 (= (_1!2041 (get!1065 (maxPrefix!253 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!769 tokens!465)))))

(assert (= (and d!62518 (not res!103736)) b!225725))

(assert (= (and b!225725 res!103737) b!225726))

(assert (=> d!62518 m!263895))

(declare-fun m!265245 () Bool)

(assert (=> d!62518 m!265245))

(assert (=> d!62518 m!263763))

(assert (=> b!225725 m!263823))

(assert (=> b!225725 m!263823))

(declare-fun m!265247 () Bool)

(assert (=> b!225725 m!265247))

(assert (=> b!225725 m!265247))

(declare-fun m!265249 () Bool)

(assert (=> b!225725 m!265249))

(assert (=> b!225726 m!263823))

(assert (=> b!225726 m!263823))

(assert (=> b!225726 m!265247))

(assert (=> b!225726 m!265247))

(declare-fun m!265251 () Bool)

(assert (=> b!225726 m!265251))

(assert (=> b!225726 m!263811))

(assert (=> b!224952 d!62518))

(declare-fun b!225747 () Bool)

(declare-fun res!103755 () Bool)

(declare-fun e!139318 () Bool)

(assert (=> b!225747 (=> (not res!103755) (not e!139318))))

(assert (=> b!225747 (= res!103755 (= (head!770 lt!86516) (head!770 lt!86519)))))

(declare-fun b!225746 () Bool)

(declare-fun e!139319 () Bool)

(assert (=> b!225746 (= e!139319 e!139318)))

(declare-fun res!103758 () Bool)

(assert (=> b!225746 (=> (not res!103758) (not e!139318))))

(assert (=> b!225746 (= res!103758 (not ((_ is Nil!3412) lt!86519)))))

(declare-fun b!225749 () Bool)

(declare-fun e!139320 () Bool)

(assert (=> b!225749 (= e!139320 (>= (size!2737 lt!86519) (size!2737 lt!86516)))))

(declare-fun b!225748 () Bool)

(declare-fun tail!422 (List!3422) List!3422)

(assert (=> b!225748 (= e!139318 (isPrefix!333 (tail!422 lt!86516) (tail!422 lt!86519)))))

(declare-fun d!62532 () Bool)

(assert (=> d!62532 e!139320))

(declare-fun res!103756 () Bool)

(assert (=> d!62532 (=> res!103756 e!139320)))

(declare-fun lt!86987 () Bool)

(assert (=> d!62532 (= res!103756 (not lt!86987))))

(assert (=> d!62532 (= lt!86987 e!139319)))

(declare-fun res!103757 () Bool)

(assert (=> d!62532 (=> res!103757 e!139319)))

(assert (=> d!62532 (= res!103757 ((_ is Nil!3412) lt!86516))))

(assert (=> d!62532 (= (isPrefix!333 lt!86516 lt!86519) lt!86987)))

(assert (= (and d!62532 (not res!103757)) b!225746))

(assert (= (and b!225746 res!103758) b!225747))

(assert (= (and b!225747 res!103755) b!225748))

(assert (= (and d!62532 (not res!103756)) b!225749))

(declare-fun m!265329 () Bool)

(assert (=> b!225747 m!265329))

(declare-fun m!265331 () Bool)

(assert (=> b!225747 m!265331))

(declare-fun m!265333 () Bool)

(assert (=> b!225749 m!265333))

(assert (=> b!225749 m!264497))

(declare-fun m!265335 () Bool)

(assert (=> b!225748 m!265335))

(declare-fun m!265337 () Bool)

(assert (=> b!225748 m!265337))

(assert (=> b!225748 m!265335))

(assert (=> b!225748 m!265337))

(declare-fun m!265341 () Bool)

(assert (=> b!225748 m!265341))

(assert (=> b!224952 d!62532))

(declare-fun b!225750 () Bool)

(declare-fun c!43419 () Bool)

(assert (=> b!225750 (= c!43419 ((_ is Star!861) (regex!637 (rule!1190 separatorToken!170))))))

(declare-fun e!139322 () List!3422)

(declare-fun e!139323 () List!3422)

(assert (=> b!225750 (= e!139322 e!139323)))

(declare-fun bm!11522 () Bool)

(declare-fun call!11529 () List!3422)

(declare-fun c!43420 () Bool)

(assert (=> bm!11522 (= call!11529 (usedCharacters!42 (ite c!43420 (regOne!2235 (regex!637 (rule!1190 separatorToken!170))) (regOne!2234 (regex!637 (rule!1190 separatorToken!170))))))))

(declare-fun b!225751 () Bool)

(declare-fun call!11530 () List!3422)

(assert (=> b!225751 (= e!139323 call!11530)))

(declare-fun bm!11523 () Bool)

(assert (=> bm!11523 (= call!11530 (usedCharacters!42 (ite c!43419 (reg!1190 (regex!637 (rule!1190 separatorToken!170))) (ite c!43420 (regTwo!2235 (regex!637 (rule!1190 separatorToken!170))) (regTwo!2234 (regex!637 (rule!1190 separatorToken!170)))))))))

(declare-fun b!225752 () Bool)

(declare-fun e!139321 () List!3422)

(declare-fun call!11528 () List!3422)

(assert (=> b!225752 (= e!139321 call!11528)))

(declare-fun b!225753 () Bool)

(declare-fun e!139324 () List!3422)

(assert (=> b!225753 (= e!139324 e!139322)))

(declare-fun c!43421 () Bool)

(assert (=> b!225753 (= c!43421 ((_ is ElementMatch!861) (regex!637 (rule!1190 separatorToken!170))))))

(declare-fun b!225754 () Bool)

(assert (=> b!225754 (= e!139323 e!139321)))

(assert (=> b!225754 (= c!43420 ((_ is Union!861) (regex!637 (rule!1190 separatorToken!170))))))

(declare-fun d!62552 () Bool)

(declare-fun c!43418 () Bool)

(assert (=> d!62552 (= c!43418 (or ((_ is EmptyExpr!861) (regex!637 (rule!1190 separatorToken!170))) ((_ is EmptyLang!861) (regex!637 (rule!1190 separatorToken!170)))))))

(assert (=> d!62552 (= (usedCharacters!42 (regex!637 (rule!1190 separatorToken!170))) e!139324)))

(declare-fun bm!11524 () Bool)

(declare-fun call!11527 () List!3422)

(assert (=> bm!11524 (= call!11528 (++!854 call!11529 call!11527))))

(declare-fun bm!11525 () Bool)

(assert (=> bm!11525 (= call!11527 call!11530)))

(declare-fun b!225755 () Bool)

(assert (=> b!225755 (= e!139324 Nil!3412)))

(declare-fun b!225756 () Bool)

(assert (=> b!225756 (= e!139322 (Cons!3412 (c!43242 (regex!637 (rule!1190 separatorToken!170))) Nil!3412))))

(declare-fun b!225757 () Bool)

(assert (=> b!225757 (= e!139321 call!11528)))

(assert (= (and d!62552 c!43418) b!225755))

(assert (= (and d!62552 (not c!43418)) b!225753))

(assert (= (and b!225753 c!43421) b!225756))

(assert (= (and b!225753 (not c!43421)) b!225750))

(assert (= (and b!225750 c!43419) b!225751))

(assert (= (and b!225750 (not c!43419)) b!225754))

(assert (= (and b!225754 c!43420) b!225752))

(assert (= (and b!225754 (not c!43420)) b!225757))

(assert (= (or b!225752 b!225757) bm!11522))

(assert (= (or b!225752 b!225757) bm!11525))

(assert (= (or b!225752 b!225757) bm!11524))

(assert (= (or b!225751 bm!11525) bm!11523))

(declare-fun m!265347 () Bool)

(assert (=> bm!11522 m!265347))

(declare-fun m!265351 () Bool)

(assert (=> bm!11523 m!265351))

(declare-fun m!265355 () Bool)

(assert (=> bm!11524 m!265355))

(assert (=> b!224952 d!62552))

(declare-fun d!62558 () Bool)

(declare-fun e!139329 () Bool)

(assert (=> d!62558 e!139329))

(declare-fun res!103761 () Bool)

(assert (=> d!62558 (=> (not res!103761) (not e!139329))))

(assert (=> d!62558 (= res!103761 (isDefined!455 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 lt!86532)))))))

(declare-fun lt!86992 () Unit!3836)

(assert (=> d!62558 (= lt!86992 (choose!2171 thiss!17480 rules!1920 lt!86485 lt!86532))))

(assert (=> d!62558 (rulesInvariant!489 thiss!17480 rules!1920)))

(assert (=> d!62558 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!78 thiss!17480 rules!1920 lt!86485 lt!86532) lt!86992)))

(declare-fun b!225764 () Bool)

(declare-fun res!103762 () Bool)

(assert (=> b!225764 (=> (not res!103762) (not e!139329))))

(assert (=> b!225764 (= res!103762 (matchR!199 (regex!637 (get!1066 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 lt!86532))))) (list!1304 (charsOf!292 lt!86532))))))

(declare-fun b!225765 () Bool)

(assert (=> b!225765 (= e!139329 (= (rule!1190 lt!86532) (get!1066 (getRuleFromTag!78 thiss!17480 rules!1920 (tag!833 (rule!1190 lt!86532))))))))

(assert (= (and d!62558 res!103761) b!225764))

(assert (= (and b!225764 res!103762) b!225765))

(assert (=> d!62558 m!263915))

(assert (=> d!62558 m!263915))

(declare-fun m!265361 () Bool)

(assert (=> d!62558 m!265361))

(declare-fun m!265363 () Bool)

(assert (=> d!62558 m!265363))

(assert (=> d!62558 m!263785))

(assert (=> b!225764 m!263915))

(declare-fun m!265365 () Bool)

(assert (=> b!225764 m!265365))

(assert (=> b!225764 m!263871))

(declare-fun m!265369 () Bool)

(assert (=> b!225764 m!265369))

(assert (=> b!225764 m!263915))

(assert (=> b!225764 m!263869))

(assert (=> b!225764 m!263871))

(assert (=> b!225764 m!263869))

(assert (=> b!225765 m!263915))

(assert (=> b!225765 m!263915))

(assert (=> b!225765 m!265365))

(assert (=> b!224952 d!62558))

(declare-fun d!62562 () Bool)

(assert (=> d!62562 (= (isDefined!455 lt!86483) (not (isEmpty!1928 lt!86483)))))

(declare-fun bs!24073 () Bool)

(assert (= bs!24073 d!62562))

(declare-fun m!265385 () Bool)

(assert (=> bs!24073 m!265385))

(assert (=> b!224952 d!62562))

(declare-fun d!62566 () Bool)

(declare-fun lt!86996 () BalanceConc!2200)

(assert (=> d!62566 (= (list!1304 lt!86996) (printListTailRec!96 thiss!17480 (dropList!128 lt!86511 0) (list!1304 (BalanceConc!2201 Empty!1096))))))

(declare-fun e!139333 () BalanceConc!2200)

(assert (=> d!62566 (= lt!86996 e!139333)))

(declare-fun c!43425 () Bool)

(assert (=> d!62566 (= c!43425 (>= 0 (size!2735 lt!86511)))))

(declare-fun e!139334 () Bool)

(assert (=> d!62566 e!139334))

(declare-fun res!103766 () Bool)

(assert (=> d!62566 (=> (not res!103766) (not e!139334))))

(assert (=> d!62566 (= res!103766 (>= 0 0))))

(assert (=> d!62566 (= (printTailRec!217 thiss!17480 lt!86511 0 (BalanceConc!2201 Empty!1096)) lt!86996)))

(declare-fun b!225771 () Bool)

(assert (=> b!225771 (= e!139334 (<= 0 (size!2735 lt!86511)))))

(declare-fun b!225772 () Bool)

(assert (=> b!225772 (= e!139333 (BalanceConc!2201 Empty!1096))))

(declare-fun b!225773 () Bool)

(assert (=> b!225773 (= e!139333 (printTailRec!217 thiss!17480 lt!86511 (+ 0 1) (++!856 (BalanceConc!2201 Empty!1096) (charsOf!292 (apply!602 lt!86511 0)))))))

(declare-fun lt!86995 () List!3424)

(assert (=> b!225773 (= lt!86995 (list!1305 lt!86511))))

(declare-fun lt!86997 () Unit!3836)

(assert (=> b!225773 (= lt!86997 (lemmaDropApply!168 lt!86995 0))))

(assert (=> b!225773 (= (head!769 (drop!181 lt!86995 0)) (apply!604 lt!86995 0))))

(declare-fun lt!86994 () Unit!3836)

(assert (=> b!225773 (= lt!86994 lt!86997)))

(declare-fun lt!86999 () List!3424)

(assert (=> b!225773 (= lt!86999 (list!1305 lt!86511))))

(declare-fun lt!87000 () Unit!3836)

(assert (=> b!225773 (= lt!87000 (lemmaDropTail!160 lt!86999 0))))

(assert (=> b!225773 (= (tail!420 (drop!181 lt!86999 0)) (drop!181 lt!86999 (+ 0 1)))))

(declare-fun lt!86998 () Unit!3836)

(assert (=> b!225773 (= lt!86998 lt!87000)))

(assert (= (and d!62566 res!103766) b!225771))

(assert (= (and d!62566 c!43425) b!225772))

(assert (= (and d!62566 (not c!43425)) b!225773))

(declare-fun m!265387 () Bool)

(assert (=> d!62566 m!265387))

(assert (=> d!62566 m!264593))

(declare-fun m!265389 () Bool)

(assert (=> d!62566 m!265389))

(declare-fun m!265391 () Bool)

(assert (=> d!62566 m!265391))

(assert (=> d!62566 m!265387))

(assert (=> d!62566 m!264593))

(declare-fun m!265393 () Bool)

(assert (=> d!62566 m!265393))

(assert (=> b!225771 m!265391))

(declare-fun m!265395 () Bool)

(assert (=> b!225773 m!265395))

(declare-fun m!265397 () Bool)

(assert (=> b!225773 m!265397))

(declare-fun m!265399 () Bool)

(assert (=> b!225773 m!265399))

(declare-fun m!265401 () Bool)

(assert (=> b!225773 m!265401))

(assert (=> b!225773 m!265395))

(assert (=> b!225773 m!265399))

(declare-fun m!265403 () Bool)

(assert (=> b!225773 m!265403))

(declare-fun m!265405 () Bool)

(assert (=> b!225773 m!265405))

(assert (=> b!225773 m!265211))

(declare-fun m!265407 () Bool)

(assert (=> b!225773 m!265407))

(assert (=> b!225773 m!265403))

(assert (=> b!225773 m!265401))

(declare-fun m!265409 () Bool)

(assert (=> b!225773 m!265409))

(assert (=> b!225773 m!265407))

(declare-fun m!265411 () Bool)

(assert (=> b!225773 m!265411))

(declare-fun m!265413 () Bool)

(assert (=> b!225773 m!265413))

(declare-fun m!265415 () Bool)

(assert (=> b!225773 m!265415))

(declare-fun m!265417 () Bool)

(assert (=> b!225773 m!265417))

(assert (=> b!224952 d!62566))

(declare-fun b!225774 () Bool)

(declare-fun res!103768 () Bool)

(declare-fun e!139336 () Bool)

(assert (=> b!225774 (=> (not res!103768) (not e!139336))))

(declare-fun lt!87001 () tuple2!3652)

(assert (=> b!225774 (= res!103768 (= (list!1305 (_1!2042 lt!87001)) (_1!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86523)))))))

(declare-fun b!225775 () Bool)

(declare-fun e!139335 () Bool)

(assert (=> b!225775 (= e!139335 (= (_2!2042 lt!87001) lt!86523))))

(declare-fun b!225776 () Bool)

(assert (=> b!225776 (= e!139336 (= (list!1304 (_2!2042 lt!87001)) (_2!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86523)))))))

(declare-fun b!225777 () Bool)

(declare-fun e!139337 () Bool)

(assert (=> b!225777 (= e!139335 e!139337)))

(declare-fun res!103767 () Bool)

(assert (=> b!225777 (= res!103767 (< (size!2739 (_2!2042 lt!87001)) (size!2739 lt!86523)))))

(assert (=> b!225777 (=> (not res!103767) (not e!139337))))

(declare-fun d!62570 () Bool)

(assert (=> d!62570 e!139336))

(declare-fun res!103769 () Bool)

(assert (=> d!62570 (=> (not res!103769) (not e!139336))))

(assert (=> d!62570 (= res!103769 e!139335)))

(declare-fun c!43426 () Bool)

(assert (=> d!62570 (= c!43426 (> (size!2735 (_1!2042 lt!87001)) 0))))

(assert (=> d!62570 (= lt!87001 (lexTailRecV2!140 thiss!17480 rules!1920 lt!86523 (BalanceConc!2201 Empty!1096) lt!86523 (BalanceConc!2203 Empty!1097)))))

(assert (=> d!62570 (= (lex!323 thiss!17480 rules!1920 lt!86523) lt!87001)))

(declare-fun b!225778 () Bool)

(assert (=> b!225778 (= e!139337 (not (isEmpty!1919 (_1!2042 lt!87001))))))

(assert (= (and d!62570 c!43426) b!225777))

(assert (= (and d!62570 (not c!43426)) b!225775))

(assert (= (and b!225777 res!103767) b!225778))

(assert (= (and d!62570 res!103769) b!225774))

(assert (= (and b!225774 res!103768) b!225776))

(declare-fun m!265419 () Bool)

(assert (=> d!62570 m!265419))

(declare-fun m!265421 () Bool)

(assert (=> d!62570 m!265421))

(declare-fun m!265423 () Bool)

(assert (=> b!225774 m!265423))

(declare-fun m!265425 () Bool)

(assert (=> b!225774 m!265425))

(assert (=> b!225774 m!265425))

(declare-fun m!265427 () Bool)

(assert (=> b!225774 m!265427))

(declare-fun m!265429 () Bool)

(assert (=> b!225776 m!265429))

(assert (=> b!225776 m!265425))

(assert (=> b!225776 m!265425))

(assert (=> b!225776 m!265427))

(declare-fun m!265431 () Bool)

(assert (=> b!225777 m!265431))

(declare-fun m!265433 () Bool)

(assert (=> b!225777 m!265433))

(declare-fun m!265435 () Bool)

(assert (=> b!225778 m!265435))

(assert (=> b!224952 d!62570))

(declare-fun d!62572 () Bool)

(declare-fun list!1308 (Conc!1097) List!3424)

(assert (=> d!62572 (= (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 lt!86522))) (list!1308 (c!43243 (_1!2042 (lex!323 thiss!17480 rules!1920 lt!86522)))))))

(declare-fun bs!24074 () Bool)

(assert (= bs!24074 d!62572))

(declare-fun m!265437 () Bool)

(assert (=> bs!24074 m!265437))

(assert (=> b!224952 d!62572))

(declare-fun d!62574 () Bool)

(assert (=> d!62574 (dynLambda!1579 lambda!7012 lt!86532)))

(declare-fun lt!87004 () Unit!3836)

(declare-fun choose!2176 (List!3424 Int Token!1018) Unit!3836)

(assert (=> d!62574 (= lt!87004 (choose!2176 tokens!465 lambda!7012 lt!86532))))

(declare-fun e!139340 () Bool)

(assert (=> d!62574 e!139340))

(declare-fun res!103772 () Bool)

(assert (=> d!62574 (=> (not res!103772) (not e!139340))))

(assert (=> d!62574 (= res!103772 (forall!765 tokens!465 lambda!7012))))

(assert (=> d!62574 (= (forallContained!204 tokens!465 lambda!7012 lt!86532) lt!87004)))

(declare-fun b!225781 () Bool)

(declare-fun contains!608 (List!3424 Token!1018) Bool)

(assert (=> b!225781 (= e!139340 (contains!608 tokens!465 lt!86532))))

(assert (= (and d!62574 res!103772) b!225781))

(declare-fun b_lambda!6229 () Bool)

(assert (=> (not b_lambda!6229) (not d!62574)))

(declare-fun m!265439 () Bool)

(assert (=> d!62574 m!265439))

(declare-fun m!265441 () Bool)

(assert (=> d!62574 m!265441))

(declare-fun m!265443 () Bool)

(assert (=> d!62574 m!265443))

(declare-fun m!265445 () Bool)

(assert (=> b!225781 m!265445))

(assert (=> b!224952 d!62574))

(declare-fun b!225782 () Bool)

(declare-fun res!103774 () Bool)

(declare-fun e!139342 () Bool)

(assert (=> b!225782 (=> (not res!103774) (not e!139342))))

(declare-fun lt!87005 () tuple2!3652)

(assert (=> b!225782 (= res!103774 (= (list!1305 (_1!2042 lt!87005)) (_1!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86522)))))))

(declare-fun b!225783 () Bool)

(declare-fun e!139341 () Bool)

(assert (=> b!225783 (= e!139341 (= (_2!2042 lt!87005) lt!86522))))

(declare-fun b!225784 () Bool)

(assert (=> b!225784 (= e!139342 (= (list!1304 (_2!2042 lt!87005)) (_2!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 lt!86522)))))))

(declare-fun b!225785 () Bool)

(declare-fun e!139343 () Bool)

(assert (=> b!225785 (= e!139341 e!139343)))

(declare-fun res!103773 () Bool)

(assert (=> b!225785 (= res!103773 (< (size!2739 (_2!2042 lt!87005)) (size!2739 lt!86522)))))

(assert (=> b!225785 (=> (not res!103773) (not e!139343))))

(declare-fun d!62576 () Bool)

(assert (=> d!62576 e!139342))

(declare-fun res!103775 () Bool)

(assert (=> d!62576 (=> (not res!103775) (not e!139342))))

(assert (=> d!62576 (= res!103775 e!139341)))

(declare-fun c!43427 () Bool)

(assert (=> d!62576 (= c!43427 (> (size!2735 (_1!2042 lt!87005)) 0))))

(assert (=> d!62576 (= lt!87005 (lexTailRecV2!140 thiss!17480 rules!1920 lt!86522 (BalanceConc!2201 Empty!1096) lt!86522 (BalanceConc!2203 Empty!1097)))))

(assert (=> d!62576 (= (lex!323 thiss!17480 rules!1920 lt!86522) lt!87005)))

(declare-fun b!225786 () Bool)

(assert (=> b!225786 (= e!139343 (not (isEmpty!1919 (_1!2042 lt!87005))))))

(assert (= (and d!62576 c!43427) b!225785))

(assert (= (and d!62576 (not c!43427)) b!225783))

(assert (= (and b!225785 res!103773) b!225786))

(assert (= (and d!62576 res!103775) b!225782))

(assert (= (and b!225782 res!103774) b!225784))

(declare-fun m!265447 () Bool)

(assert (=> d!62576 m!265447))

(declare-fun m!265449 () Bool)

(assert (=> d!62576 m!265449))

(declare-fun m!265451 () Bool)

(assert (=> b!225782 m!265451))

(assert (=> b!225782 m!263849))

(assert (=> b!225782 m!263849))

(declare-fun m!265453 () Bool)

(assert (=> b!225782 m!265453))

(declare-fun m!265455 () Bool)

(assert (=> b!225784 m!265455))

(assert (=> b!225784 m!263849))

(assert (=> b!225784 m!263849))

(assert (=> b!225784 m!265453))

(declare-fun m!265457 () Bool)

(assert (=> b!225785 m!265457))

(declare-fun m!265459 () Bool)

(assert (=> b!225785 m!265459))

(declare-fun m!265461 () Bool)

(assert (=> b!225786 m!265461))

(assert (=> b!224952 d!62576))

(declare-fun d!62578 () Bool)

(assert (=> d!62578 (= (list!1304 (charsOf!292 lt!86532)) (list!1307 (c!43241 (charsOf!292 lt!86532))))))

(declare-fun bs!24075 () Bool)

(assert (= bs!24075 d!62578))

(declare-fun m!265463 () Bool)

(assert (=> bs!24075 m!265463))

(assert (=> b!224952 d!62578))

(declare-fun d!62580 () Bool)

(assert (=> d!62580 (= (list!1304 (seqFromList!651 lt!86517)) (list!1307 (c!43241 (seqFromList!651 lt!86517))))))

(declare-fun bs!24076 () Bool)

(assert (= bs!24076 d!62580))

(declare-fun m!265465 () Bool)

(assert (=> bs!24076 m!265465))

(assert (=> b!224931 d!62580))

(declare-fun d!62582 () Bool)

(declare-fun fromListB!245 (List!3422) BalanceConc!2200)

(assert (=> d!62582 (= (seqFromList!651 lt!86517) (fromListB!245 lt!86517))))

(declare-fun bs!24077 () Bool)

(assert (= bs!24077 d!62582))

(declare-fun m!265467 () Bool)

(assert (=> bs!24077 m!265467))

(assert (=> b!224931 d!62582))

(declare-fun d!62584 () Bool)

(declare-fun res!103776 () Bool)

(declare-fun e!139344 () Bool)

(assert (=> d!62584 (=> (not res!103776) (not e!139344))))

(assert (=> d!62584 (= res!103776 (not (isEmpty!1920 (originalCharacters!680 (h!8811 tokens!465)))))))

(assert (=> d!62584 (= (inv!4267 (h!8811 tokens!465)) e!139344)))

(declare-fun b!225787 () Bool)

(declare-fun res!103777 () Bool)

(assert (=> b!225787 (=> (not res!103777) (not e!139344))))

(assert (=> b!225787 (= res!103777 (= (originalCharacters!680 (h!8811 tokens!465)) (list!1304 (dynLambda!1577 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (value!22470 (h!8811 tokens!465))))))))

(declare-fun b!225788 () Bool)

(assert (=> b!225788 (= e!139344 (= (size!2734 (h!8811 tokens!465)) (size!2737 (originalCharacters!680 (h!8811 tokens!465)))))))

(assert (= (and d!62584 res!103776) b!225787))

(assert (= (and b!225787 res!103777) b!225788))

(declare-fun b_lambda!6231 () Bool)

(assert (=> (not b_lambda!6231) (not b!225787)))

(assert (=> b!225787 t!33214))

(declare-fun b_and!16761 () Bool)

(assert (= b_and!16749 (and (=> t!33214 result!14458) b_and!16761)))

(assert (=> b!225787 t!33216))

(declare-fun b_and!16763 () Bool)

(assert (= b_and!16751 (and (=> t!33216 result!14460) b_and!16763)))

(assert (=> b!225787 t!33218))

(declare-fun b_and!16765 () Bool)

(assert (= b_and!16753 (and (=> t!33218 result!14462) b_and!16765)))

(declare-fun m!265469 () Bool)

(assert (=> d!62584 m!265469))

(assert (=> b!225787 m!264507))

(assert (=> b!225787 m!264507))

(declare-fun m!265471 () Bool)

(assert (=> b!225787 m!265471))

(declare-fun m!265473 () Bool)

(assert (=> b!225788 m!265473))

(assert (=> b!224956 d!62584))

(declare-fun d!62586 () Bool)

(assert (=> d!62586 (not (matchR!199 (regex!637 (rule!1190 lt!86532)) lt!86485))))

(declare-fun lt!87008 () Unit!3836)

(declare-fun choose!2178 (Regex!861 List!3422 C!2644) Unit!3836)

(assert (=> d!62586 (= lt!87008 (choose!2178 (regex!637 (rule!1190 lt!86532)) lt!86485 lt!86529))))

(declare-fun validRegex!221 (Regex!861) Bool)

(assert (=> d!62586 (validRegex!221 (regex!637 (rule!1190 lt!86532)))))

(assert (=> d!62586 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!36 (regex!637 (rule!1190 lt!86532)) lt!86485 lt!86529) lt!87008)))

(declare-fun bs!24078 () Bool)

(assert (= bs!24078 d!62586))

(assert (=> bs!24078 m!263959))

(declare-fun m!265475 () Bool)

(assert (=> bs!24078 m!265475))

(declare-fun m!265477 () Bool)

(assert (=> bs!24078 m!265477))

(assert (=> b!224953 d!62586))

(declare-fun b!225817 () Bool)

(declare-fun e!139364 () Bool)

(declare-fun e!139359 () Bool)

(assert (=> b!225817 (= e!139364 e!139359)))

(declare-fun res!103797 () Bool)

(assert (=> b!225817 (=> (not res!103797) (not e!139359))))

(declare-fun lt!87011 () Bool)

(assert (=> b!225817 (= res!103797 (not lt!87011))))

(declare-fun b!225818 () Bool)

(declare-fun e!139363 () Bool)

(declare-fun nullable!146 (Regex!861) Bool)

(assert (=> b!225818 (= e!139363 (nullable!146 (regex!637 (rule!1190 lt!86532))))))

(declare-fun b!225819 () Bool)

(declare-fun e!139365 () Bool)

(assert (=> b!225819 (= e!139365 (not lt!87011))))

(declare-fun b!225820 () Bool)

(declare-fun res!103801 () Bool)

(assert (=> b!225820 (=> res!103801 e!139364)))

(assert (=> b!225820 (= res!103801 (not ((_ is ElementMatch!861) (regex!637 (rule!1190 lt!86532)))))))

(assert (=> b!225820 (= e!139365 e!139364)))

(declare-fun b!225821 () Bool)

(declare-fun res!103800 () Bool)

(declare-fun e!139360 () Bool)

(assert (=> b!225821 (=> (not res!103800) (not e!139360))))

(declare-fun call!11533 () Bool)

(assert (=> b!225821 (= res!103800 (not call!11533))))

(declare-fun b!225822 () Bool)

(declare-fun res!103795 () Bool)

(assert (=> b!225822 (=> (not res!103795) (not e!139360))))

(assert (=> b!225822 (= res!103795 (isEmpty!1920 (tail!422 lt!86485)))))

(declare-fun bm!11528 () Bool)

(assert (=> bm!11528 (= call!11533 (isEmpty!1920 lt!86485))))

(declare-fun d!62588 () Bool)

(declare-fun e!139361 () Bool)

(assert (=> d!62588 e!139361))

(declare-fun c!43437 () Bool)

(assert (=> d!62588 (= c!43437 ((_ is EmptyExpr!861) (regex!637 (rule!1190 lt!86532))))))

(assert (=> d!62588 (= lt!87011 e!139363)))

(declare-fun c!43436 () Bool)

(assert (=> d!62588 (= c!43436 (isEmpty!1920 lt!86485))))

(assert (=> d!62588 (validRegex!221 (regex!637 (rule!1190 lt!86532)))))

(assert (=> d!62588 (= (matchR!199 (regex!637 (rule!1190 lt!86532)) lt!86485) lt!87011)))

(declare-fun b!225823 () Bool)

(assert (=> b!225823 (= e!139361 (= lt!87011 call!11533))))

(declare-fun b!225824 () Bool)

(assert (=> b!225824 (= e!139360 (= (head!770 lt!86485) (c!43242 (regex!637 (rule!1190 lt!86532)))))))

(declare-fun b!225825 () Bool)

(declare-fun res!103799 () Bool)

(declare-fun e!139362 () Bool)

(assert (=> b!225825 (=> res!103799 e!139362)))

(assert (=> b!225825 (= res!103799 (not (isEmpty!1920 (tail!422 lt!86485))))))

(declare-fun b!225826 () Bool)

(assert (=> b!225826 (= e!139359 e!139362)))

(declare-fun res!103798 () Bool)

(assert (=> b!225826 (=> res!103798 e!139362)))

(assert (=> b!225826 (= res!103798 call!11533)))

(declare-fun b!225827 () Bool)

(assert (=> b!225827 (= e!139362 (not (= (head!770 lt!86485) (c!43242 (regex!637 (rule!1190 lt!86532))))))))

(declare-fun b!225828 () Bool)

(assert (=> b!225828 (= e!139361 e!139365)))

(declare-fun c!43435 () Bool)

(assert (=> b!225828 (= c!43435 ((_ is EmptyLang!861) (regex!637 (rule!1190 lt!86532))))))

(declare-fun b!225829 () Bool)

(declare-fun derivativeStep!112 (Regex!861 C!2644) Regex!861)

(assert (=> b!225829 (= e!139363 (matchR!199 (derivativeStep!112 (regex!637 (rule!1190 lt!86532)) (head!770 lt!86485)) (tail!422 lt!86485)))))

(declare-fun b!225830 () Bool)

(declare-fun res!103794 () Bool)

(assert (=> b!225830 (=> res!103794 e!139364)))

(assert (=> b!225830 (= res!103794 e!139360)))

(declare-fun res!103796 () Bool)

(assert (=> b!225830 (=> (not res!103796) (not e!139360))))

(assert (=> b!225830 (= res!103796 lt!87011)))

(assert (= (and d!62588 c!43436) b!225818))

(assert (= (and d!62588 (not c!43436)) b!225829))

(assert (= (and d!62588 c!43437) b!225823))

(assert (= (and d!62588 (not c!43437)) b!225828))

(assert (= (and b!225828 c!43435) b!225819))

(assert (= (and b!225828 (not c!43435)) b!225820))

(assert (= (and b!225820 (not res!103801)) b!225830))

(assert (= (and b!225830 res!103796) b!225821))

(assert (= (and b!225821 res!103800) b!225822))

(assert (= (and b!225822 res!103795) b!225824))

(assert (= (and b!225830 (not res!103794)) b!225817))

(assert (= (and b!225817 res!103797) b!225826))

(assert (= (and b!225826 (not res!103798)) b!225825))

(assert (= (and b!225825 (not res!103799)) b!225827))

(assert (= (or b!225823 b!225821 b!225826) bm!11528))

(declare-fun m!265479 () Bool)

(assert (=> b!225822 m!265479))

(assert (=> b!225822 m!265479))

(declare-fun m!265481 () Bool)

(assert (=> b!225822 m!265481))

(declare-fun m!265483 () Bool)

(assert (=> d!62588 m!265483))

(assert (=> d!62588 m!265477))

(assert (=> b!225824 m!263925))

(assert (=> b!225825 m!265479))

(assert (=> b!225825 m!265479))

(assert (=> b!225825 m!265481))

(assert (=> b!225829 m!263925))

(assert (=> b!225829 m!263925))

(declare-fun m!265485 () Bool)

(assert (=> b!225829 m!265485))

(assert (=> b!225829 m!265479))

(assert (=> b!225829 m!265485))

(assert (=> b!225829 m!265479))

(declare-fun m!265487 () Bool)

(assert (=> b!225829 m!265487))

(assert (=> b!225827 m!263925))

(declare-fun m!265489 () Bool)

(assert (=> b!225818 m!265489))

(assert (=> bm!11528 m!265483))

(assert (=> b!224953 d!62588))

(declare-fun d!62590 () Bool)

(assert (=> d!62590 (= (isDefined!454 lt!86508) (not (isEmpty!1927 lt!86508)))))

(declare-fun bs!24079 () Bool)

(assert (= bs!24079 d!62590))

(declare-fun m!265491 () Bool)

(assert (=> bs!24079 m!265491))

(assert (=> b!224944 d!62590))

(assert (=> b!224944 d!62508))

(declare-fun d!62592 () Bool)

(assert (=> d!62592 (= (get!1065 lt!86508) (v!14277 lt!86508))))

(assert (=> b!224923 d!62592))

(declare-fun d!62594 () Bool)

(assert (=> d!62594 (= (head!769 tokens!465) (h!8811 tokens!465))))

(assert (=> b!224923 d!62594))

(declare-fun d!62596 () Bool)

(declare-fun lt!87014 () Token!1018)

(assert (=> d!62596 (= lt!87014 (apply!604 (list!1305 (_1!2042 lt!86500)) 0))))

(declare-fun apply!608 (Conc!1097 Int) Token!1018)

(assert (=> d!62596 (= lt!87014 (apply!608 (c!43243 (_1!2042 lt!86500)) 0))))

(declare-fun e!139368 () Bool)

(assert (=> d!62596 e!139368))

(declare-fun res!103804 () Bool)

(assert (=> d!62596 (=> (not res!103804) (not e!139368))))

(assert (=> d!62596 (= res!103804 (<= 0 0))))

(assert (=> d!62596 (= (apply!602 (_1!2042 lt!86500) 0) lt!87014)))

(declare-fun b!225833 () Bool)

(assert (=> b!225833 (= e!139368 (< 0 (size!2735 (_1!2042 lt!86500))))))

(assert (= (and d!62596 res!103804) b!225833))

(assert (=> d!62596 m!264787))

(assert (=> d!62596 m!264787))

(declare-fun m!265493 () Bool)

(assert (=> d!62596 m!265493))

(declare-fun m!265495 () Bool)

(assert (=> d!62596 m!265495))

(assert (=> b!225833 m!263897))

(assert (=> b!224964 d!62596))

(declare-fun d!62598 () Bool)

(declare-fun res!103809 () Bool)

(declare-fun e!139373 () Bool)

(assert (=> d!62598 (=> res!103809 e!139373)))

(assert (=> d!62598 (= res!103809 ((_ is Nil!3414) (t!33176 tokens!465)))))

(assert (=> d!62598 (= (forall!765 (t!33176 tokens!465) lambda!7011) e!139373)))

(declare-fun b!225838 () Bool)

(declare-fun e!139374 () Bool)

(assert (=> b!225838 (= e!139373 e!139374)))

(declare-fun res!103810 () Bool)

(assert (=> b!225838 (=> (not res!103810) (not e!139374))))

(assert (=> b!225838 (= res!103810 (dynLambda!1579 lambda!7011 (h!8811 (t!33176 tokens!465))))))

(declare-fun b!225839 () Bool)

(assert (=> b!225839 (= e!139374 (forall!765 (t!33176 (t!33176 tokens!465)) lambda!7011))))

(assert (= (and d!62598 (not res!103809)) b!225838))

(assert (= (and b!225838 res!103810) b!225839))

(declare-fun b_lambda!6233 () Bool)

(assert (=> (not b_lambda!6233) (not b!225838)))

(declare-fun m!265497 () Bool)

(assert (=> b!225838 m!265497))

(declare-fun m!265499 () Bool)

(assert (=> b!225839 m!265499))

(assert (=> b!224945 d!62598))

(declare-fun d!62600 () Bool)

(declare-fun res!103811 () Bool)

(declare-fun e!139375 () Bool)

(assert (=> d!62600 (=> res!103811 e!139375)))

(assert (=> d!62600 (= res!103811 ((_ is Nil!3414) tokens!465))))

(assert (=> d!62600 (= (forall!765 tokens!465 lambda!7011) e!139375)))

(declare-fun b!225840 () Bool)

(declare-fun e!139376 () Bool)

(assert (=> b!225840 (= e!139375 e!139376)))

(declare-fun res!103812 () Bool)

(assert (=> b!225840 (=> (not res!103812) (not e!139376))))

(assert (=> b!225840 (= res!103812 (dynLambda!1579 lambda!7011 (h!8811 tokens!465)))))

(declare-fun b!225841 () Bool)

(assert (=> b!225841 (= e!139376 (forall!765 (t!33176 tokens!465) lambda!7011))))

(assert (= (and d!62600 (not res!103811)) b!225840))

(assert (= (and b!225840 res!103812) b!225841))

(declare-fun b_lambda!6235 () Bool)

(assert (=> (not b_lambda!6235) (not b!225840)))

(declare-fun m!265501 () Bool)

(assert (=> b!225840 m!265501))

(assert (=> b!225841 m!263971))

(assert (=> b!224924 d!62600))

(declare-fun d!62602 () Bool)

(assert (=> d!62602 (= (isEmpty!1922 rules!1920) ((_ is Nil!3413) rules!1920))))

(assert (=> b!224962 d!62602))

(declare-fun d!62604 () Bool)

(declare-fun lt!87015 () BalanceConc!2200)

(assert (=> d!62604 (= (list!1304 lt!87015) (printList!207 thiss!17480 (list!1305 lt!86488)))))

(assert (=> d!62604 (= lt!87015 (printTailRec!217 thiss!17480 lt!86488 0 (BalanceConc!2201 Empty!1096)))))

(assert (=> d!62604 (= (print!254 thiss!17480 lt!86488) lt!87015)))

(declare-fun bs!24080 () Bool)

(assert (= bs!24080 d!62604))

(declare-fun m!265503 () Bool)

(assert (=> bs!24080 m!265503))

(declare-fun m!265505 () Bool)

(assert (=> bs!24080 m!265505))

(assert (=> bs!24080 m!265505))

(declare-fun m!265507 () Bool)

(assert (=> bs!24080 m!265507))

(assert (=> bs!24080 m!263765))

(assert (=> b!224947 d!62604))

(declare-fun d!62606 () Bool)

(assert (=> d!62606 (= (list!1304 lt!86515) (list!1307 (c!43241 lt!86515)))))

(declare-fun bs!24081 () Bool)

(assert (= bs!24081 d!62606))

(declare-fun m!265509 () Bool)

(assert (=> bs!24081 m!265509))

(assert (=> b!224947 d!62606))

(declare-fun d!62608 () Bool)

(declare-fun lt!87018 () BalanceConc!2200)

(assert (=> d!62608 (= (list!1304 lt!87018) (printListTailRec!96 thiss!17480 (dropList!128 lt!86488 0) (list!1304 (BalanceConc!2201 Empty!1096))))))

(declare-fun e!139377 () BalanceConc!2200)

(assert (=> d!62608 (= lt!87018 e!139377)))

(declare-fun c!43438 () Bool)

(assert (=> d!62608 (= c!43438 (>= 0 (size!2735 lt!86488)))))

(declare-fun e!139378 () Bool)

(assert (=> d!62608 e!139378))

(declare-fun res!103813 () Bool)

(assert (=> d!62608 (=> (not res!103813) (not e!139378))))

(assert (=> d!62608 (= res!103813 (>= 0 0))))

(assert (=> d!62608 (= (printTailRec!217 thiss!17480 lt!86488 0 (BalanceConc!2201 Empty!1096)) lt!87018)))

(declare-fun b!225842 () Bool)

(assert (=> b!225842 (= e!139378 (<= 0 (size!2735 lt!86488)))))

(declare-fun b!225843 () Bool)

(assert (=> b!225843 (= e!139377 (BalanceConc!2201 Empty!1096))))

(declare-fun b!225844 () Bool)

(assert (=> b!225844 (= e!139377 (printTailRec!217 thiss!17480 lt!86488 (+ 0 1) (++!856 (BalanceConc!2201 Empty!1096) (charsOf!292 (apply!602 lt!86488 0)))))))

(declare-fun lt!87017 () List!3424)

(assert (=> b!225844 (= lt!87017 (list!1305 lt!86488))))

(declare-fun lt!87019 () Unit!3836)

(assert (=> b!225844 (= lt!87019 (lemmaDropApply!168 lt!87017 0))))

(assert (=> b!225844 (= (head!769 (drop!181 lt!87017 0)) (apply!604 lt!87017 0))))

(declare-fun lt!87016 () Unit!3836)

(assert (=> b!225844 (= lt!87016 lt!87019)))

(declare-fun lt!87021 () List!3424)

(assert (=> b!225844 (= lt!87021 (list!1305 lt!86488))))

(declare-fun lt!87022 () Unit!3836)

(assert (=> b!225844 (= lt!87022 (lemmaDropTail!160 lt!87021 0))))

(assert (=> b!225844 (= (tail!420 (drop!181 lt!87021 0)) (drop!181 lt!87021 (+ 0 1)))))

(declare-fun lt!87020 () Unit!3836)

(assert (=> b!225844 (= lt!87020 lt!87022)))

(assert (= (and d!62608 res!103813) b!225842))

(assert (= (and d!62608 c!43438) b!225843))

(assert (= (and d!62608 (not c!43438)) b!225844))

(declare-fun m!265511 () Bool)

(assert (=> d!62608 m!265511))

(assert (=> d!62608 m!264593))

(declare-fun m!265513 () Bool)

(assert (=> d!62608 m!265513))

(declare-fun m!265515 () Bool)

(assert (=> d!62608 m!265515))

(assert (=> d!62608 m!265511))

(assert (=> d!62608 m!264593))

(declare-fun m!265517 () Bool)

(assert (=> d!62608 m!265517))

(assert (=> b!225842 m!265515))

(declare-fun m!265519 () Bool)

(assert (=> b!225844 m!265519))

(declare-fun m!265521 () Bool)

(assert (=> b!225844 m!265521))

(declare-fun m!265523 () Bool)

(assert (=> b!225844 m!265523))

(declare-fun m!265525 () Bool)

(assert (=> b!225844 m!265525))

(assert (=> b!225844 m!265519))

(assert (=> b!225844 m!265523))

(declare-fun m!265527 () Bool)

(assert (=> b!225844 m!265527))

(declare-fun m!265529 () Bool)

(assert (=> b!225844 m!265529))

(assert (=> b!225844 m!265505))

(declare-fun m!265531 () Bool)

(assert (=> b!225844 m!265531))

(assert (=> b!225844 m!265527))

(assert (=> b!225844 m!265525))

(declare-fun m!265533 () Bool)

(assert (=> b!225844 m!265533))

(assert (=> b!225844 m!265531))

(declare-fun m!265535 () Bool)

(assert (=> b!225844 m!265535))

(declare-fun m!265537 () Bool)

(assert (=> b!225844 m!265537))

(declare-fun m!265539 () Bool)

(assert (=> b!225844 m!265539))

(declare-fun m!265541 () Bool)

(assert (=> b!225844 m!265541))

(assert (=> b!224947 d!62608))

(declare-fun d!62610 () Bool)

(declare-fun e!139379 () Bool)

(assert (=> d!62610 e!139379))

(declare-fun res!103814 () Bool)

(assert (=> d!62610 (=> (not res!103814) (not e!139379))))

(declare-fun lt!87023 () BalanceConc!2202)

(assert (=> d!62610 (= res!103814 (= (list!1305 lt!87023) (Cons!3414 (h!8811 tokens!465) Nil!3414)))))

(assert (=> d!62610 (= lt!87023 (singleton!77 (h!8811 tokens!465)))))

(assert (=> d!62610 (= (singletonSeq!189 (h!8811 tokens!465)) lt!87023)))

(declare-fun b!225845 () Bool)

(assert (=> b!225845 (= e!139379 (isBalanced!294 (c!43243 lt!87023)))))

(assert (= (and d!62610 res!103814) b!225845))

(declare-fun m!265543 () Bool)

(assert (=> d!62610 m!265543))

(declare-fun m!265545 () Bool)

(assert (=> d!62610 m!265545))

(declare-fun m!265547 () Bool)

(assert (=> b!225845 m!265547))

(assert (=> b!224947 d!62610))

(declare-fun d!62612 () Bool)

(declare-fun c!43441 () Bool)

(assert (=> d!62612 (= c!43441 ((_ is Cons!3414) (Cons!3414 (h!8811 tokens!465) Nil!3414)))))

(declare-fun e!139382 () List!3422)

(assert (=> d!62612 (= (printList!207 thiss!17480 (Cons!3414 (h!8811 tokens!465) Nil!3414)) e!139382)))

(declare-fun b!225850 () Bool)

(assert (=> b!225850 (= e!139382 (++!854 (list!1304 (charsOf!292 (h!8811 (Cons!3414 (h!8811 tokens!465) Nil!3414)))) (printList!207 thiss!17480 (t!33176 (Cons!3414 (h!8811 tokens!465) Nil!3414)))))))

(declare-fun b!225851 () Bool)

(assert (=> b!225851 (= e!139382 Nil!3412)))

(assert (= (and d!62612 c!43441) b!225850))

(assert (= (and d!62612 (not c!43441)) b!225851))

(declare-fun m!265549 () Bool)

(assert (=> b!225850 m!265549))

(assert (=> b!225850 m!265549))

(declare-fun m!265551 () Bool)

(assert (=> b!225850 m!265551))

(declare-fun m!265553 () Bool)

(assert (=> b!225850 m!265553))

(assert (=> b!225850 m!265551))

(assert (=> b!225850 m!265553))

(declare-fun m!265555 () Bool)

(assert (=> b!225850 m!265555))

(assert (=> b!224947 d!62612))

(declare-fun d!62614 () Bool)

(declare-fun lt!87024 () Token!1018)

(assert (=> d!62614 (= lt!87024 (apply!604 (list!1305 (_1!2042 lt!86486)) 0))))

(assert (=> d!62614 (= lt!87024 (apply!608 (c!43243 (_1!2042 lt!86486)) 0))))

(declare-fun e!139383 () Bool)

(assert (=> d!62614 e!139383))

(declare-fun res!103815 () Bool)

(assert (=> d!62614 (=> (not res!103815) (not e!139383))))

(assert (=> d!62614 (= res!103815 (<= 0 0))))

(assert (=> d!62614 (= (apply!602 (_1!2042 lt!86486) 0) lt!87024)))

(declare-fun b!225852 () Bool)

(assert (=> b!225852 (= e!139383 (< 0 (size!2735 (_1!2042 lt!86486))))))

(assert (= (and d!62614 res!103815) b!225852))

(assert (=> d!62614 m!264853))

(assert (=> d!62614 m!264853))

(declare-fun m!265557 () Bool)

(assert (=> d!62614 m!265557))

(declare-fun m!265559 () Bool)

(assert (=> d!62614 m!265559))

(assert (=> b!225852 m!263865))

(assert (=> b!224926 d!62614))

(declare-fun bs!24086 () Bool)

(declare-fun d!62616 () Bool)

(assert (= bs!24086 (and d!62616 b!224965)))

(declare-fun lambda!7055 () Int)

(assert (=> bs!24086 (= lambda!7055 lambda!7012)))

(declare-fun bs!24087 () Bool)

(assert (= bs!24087 (and d!62616 d!62396)))

(assert (=> bs!24087 (not (= lambda!7055 lambda!7046))))

(declare-fun bs!24088 () Bool)

(assert (= bs!24088 (and d!62616 b!224924)))

(assert (=> bs!24088 (not (= lambda!7055 lambda!7011))))

(declare-fun bs!24089 () Bool)

(assert (= bs!24089 (and d!62616 b!225258)))

(assert (=> bs!24089 (= lambda!7055 lambda!7038)))

(declare-fun bs!24090 () Bool)

(assert (= bs!24090 (and d!62616 d!62276)))

(assert (=> bs!24090 (not (= lambda!7055 lambda!7037))))

(declare-fun bs!24091 () Bool)

(assert (= bs!24091 (and d!62616 d!62244)))

(assert (=> bs!24091 (= lambda!7055 lambda!7017)))

(declare-fun bs!24092 () Bool)

(assert (= bs!24092 (and d!62616 b!225098)))

(assert (=> bs!24092 (= lambda!7055 lambda!7027)))

(declare-fun b!225948 () Bool)

(declare-fun e!139444 () Bool)

(assert (=> b!225948 (= e!139444 true)))

(declare-fun b!225947 () Bool)

(declare-fun e!139443 () Bool)

(assert (=> b!225947 (= e!139443 e!139444)))

(declare-fun b!225946 () Bool)

(declare-fun e!139442 () Bool)

(assert (=> b!225946 (= e!139442 e!139443)))

(assert (=> d!62616 e!139442))

(assert (= b!225947 b!225948))

(assert (= b!225946 b!225947))

(assert (= (and d!62616 ((_ is Cons!3413) rules!1920)) b!225946))

(assert (=> b!225948 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7055))))

(assert (=> b!225948 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7055))))

(assert (=> d!62616 true))

(declare-fun lt!87038 () Bool)

(assert (=> d!62616 (= lt!87038 (forall!765 (t!33176 tokens!465) lambda!7055))))

(declare-fun e!139436 () Bool)

(assert (=> d!62616 (= lt!87038 e!139436)))

(declare-fun res!103843 () Bool)

(assert (=> d!62616 (=> res!103843 e!139436)))

(assert (=> d!62616 (= res!103843 (not ((_ is Cons!3414) (t!33176 tokens!465))))))

(assert (=> d!62616 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62616 (= (rulesProduceEachTokenIndividuallyList!175 thiss!17480 rules!1920 (t!33176 tokens!465)) lt!87038)))

(declare-fun b!225941 () Bool)

(declare-fun e!139437 () Bool)

(assert (=> b!225941 (= e!139436 e!139437)))

(declare-fun res!103844 () Bool)

(assert (=> b!225941 (=> (not res!103844) (not e!139437))))

(assert (=> b!225941 (= res!103844 (rulesProduceIndividualToken!272 thiss!17480 rules!1920 (h!8811 (t!33176 tokens!465))))))

(declare-fun b!225942 () Bool)

(assert (=> b!225942 (= e!139437 (rulesProduceEachTokenIndividuallyList!175 thiss!17480 rules!1920 (t!33176 (t!33176 tokens!465))))))

(assert (= (and d!62616 (not res!103843)) b!225941))

(assert (= (and b!225941 res!103844) b!225942))

(declare-fun m!265621 () Bool)

(assert (=> d!62616 m!265621))

(assert (=> d!62616 m!263763))

(declare-fun m!265623 () Bool)

(assert (=> b!225941 m!265623))

(declare-fun m!265625 () Bool)

(assert (=> b!225942 m!265625))

(assert (=> b!224961 d!62616))

(declare-fun d!62642 () Bool)

(declare-fun lt!87040 () Bool)

(declare-fun e!139448 () Bool)

(assert (=> d!62642 (= lt!87040 e!139448)))

(declare-fun res!103846 () Bool)

(assert (=> d!62642 (=> (not res!103846) (not e!139448))))

(assert (=> d!62642 (= res!103846 (= (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 (h!8811 tokens!465)))))) (list!1305 (singletonSeq!189 (h!8811 tokens!465)))))))

(declare-fun e!139449 () Bool)

(assert (=> d!62642 (= lt!87040 e!139449)))

(declare-fun res!103847 () Bool)

(assert (=> d!62642 (=> (not res!103847) (not e!139449))))

(declare-fun lt!87039 () tuple2!3652)

(assert (=> d!62642 (= res!103847 (= (size!2735 (_1!2042 lt!87039)) 1))))

(assert (=> d!62642 (= lt!87039 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 (h!8811 tokens!465)))))))

(assert (=> d!62642 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62642 (= (rulesProduceIndividualToken!272 thiss!17480 rules!1920 (h!8811 tokens!465)) lt!87040)))

(declare-fun b!225954 () Bool)

(declare-fun res!103845 () Bool)

(assert (=> b!225954 (=> (not res!103845) (not e!139449))))

(assert (=> b!225954 (= res!103845 (= (apply!602 (_1!2042 lt!87039) 0) (h!8811 tokens!465)))))

(declare-fun b!225955 () Bool)

(assert (=> b!225955 (= e!139449 (isEmpty!1918 (_2!2042 lt!87039)))))

(declare-fun b!225956 () Bool)

(assert (=> b!225956 (= e!139448 (isEmpty!1918 (_2!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 (h!8811 tokens!465)))))))))

(assert (= (and d!62642 res!103847) b!225954))

(assert (= (and b!225954 res!103845) b!225955))

(assert (= (and d!62642 res!103846) b!225956))

(assert (=> d!62642 m!263771))

(declare-fun m!265627 () Bool)

(assert (=> d!62642 m!265627))

(assert (=> d!62642 m!263771))

(assert (=> d!62642 m!263771))

(declare-fun m!265629 () Bool)

(assert (=> d!62642 m!265629))

(assert (=> d!62642 m!263763))

(declare-fun m!265631 () Bool)

(assert (=> d!62642 m!265631))

(assert (=> d!62642 m!265629))

(declare-fun m!265633 () Bool)

(assert (=> d!62642 m!265633))

(declare-fun m!265635 () Bool)

(assert (=> d!62642 m!265635))

(declare-fun m!265637 () Bool)

(assert (=> b!225954 m!265637))

(declare-fun m!265639 () Bool)

(assert (=> b!225955 m!265639))

(assert (=> b!225956 m!263771))

(assert (=> b!225956 m!263771))

(assert (=> b!225956 m!265629))

(assert (=> b!225956 m!265629))

(assert (=> b!225956 m!265633))

(declare-fun m!265641 () Bool)

(assert (=> b!225956 m!265641))

(assert (=> b!224948 d!62642))

(declare-fun d!62644 () Bool)

(declare-fun lt!87041 () Bool)

(assert (=> d!62644 (= lt!87041 (isEmpty!1920 (list!1304 (_2!2042 lt!86500))))))

(assert (=> d!62644 (= lt!87041 (isEmpty!1924 (c!43241 (_2!2042 lt!86500))))))

(assert (=> d!62644 (= (isEmpty!1918 (_2!2042 lt!86500)) lt!87041)))

(declare-fun bs!24093 () Bool)

(assert (= bs!24093 d!62644))

(declare-fun m!265643 () Bool)

(assert (=> bs!24093 m!265643))

(assert (=> bs!24093 m!265643))

(declare-fun m!265645 () Bool)

(assert (=> bs!24093 m!265645))

(declare-fun m!265647 () Bool)

(assert (=> bs!24093 m!265647))

(assert (=> b!224927 d!62644))

(declare-fun d!62646 () Bool)

(assert (=> d!62646 (= (list!1304 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 lt!86492 separatorToken!170 0)) (list!1307 (c!43241 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 lt!86492 separatorToken!170 0))))))

(declare-fun bs!24094 () Bool)

(assert (= bs!24094 d!62646))

(declare-fun m!265649 () Bool)

(assert (=> bs!24094 m!265649))

(assert (=> b!224917 d!62646))

(declare-fun bs!24095 () Bool)

(declare-fun d!62648 () Bool)

(assert (= bs!24095 (and d!62648 b!224965)))

(declare-fun lambda!7056 () Int)

(assert (=> bs!24095 (not (= lambda!7056 lambda!7012))))

(declare-fun bs!24096 () Bool)

(assert (= bs!24096 (and d!62648 d!62396)))

(assert (=> bs!24096 (= lambda!7056 lambda!7046)))

(declare-fun bs!24097 () Bool)

(assert (= bs!24097 (and d!62648 b!224924)))

(assert (=> bs!24097 (= lambda!7056 lambda!7011)))

(declare-fun bs!24098 () Bool)

(assert (= bs!24098 (and d!62648 b!225258)))

(assert (=> bs!24098 (not (= lambda!7056 lambda!7038))))

(declare-fun bs!24099 () Bool)

(assert (= bs!24099 (and d!62648 d!62276)))

(assert (=> bs!24099 (= lambda!7056 lambda!7037)))

(declare-fun bs!24100 () Bool)

(assert (= bs!24100 (and d!62648 d!62616)))

(assert (=> bs!24100 (not (= lambda!7056 lambda!7055))))

(declare-fun bs!24101 () Bool)

(assert (= bs!24101 (and d!62648 d!62244)))

(assert (=> bs!24101 (not (= lambda!7056 lambda!7017))))

(declare-fun bs!24102 () Bool)

(assert (= bs!24102 (and d!62648 b!225098)))

(assert (=> bs!24102 (not (= lambda!7056 lambda!7027))))

(declare-fun bs!24103 () Bool)

(declare-fun b!225963 () Bool)

(assert (= bs!24103 (and b!225963 b!224965)))

(declare-fun lambda!7057 () Int)

(assert (=> bs!24103 (= lambda!7057 lambda!7012)))

(declare-fun bs!24104 () Bool)

(assert (= bs!24104 (and b!225963 d!62396)))

(assert (=> bs!24104 (not (= lambda!7057 lambda!7046))))

(declare-fun bs!24105 () Bool)

(assert (= bs!24105 (and b!225963 b!224924)))

(assert (=> bs!24105 (not (= lambda!7057 lambda!7011))))

(declare-fun bs!24106 () Bool)

(assert (= bs!24106 (and b!225963 b!225258)))

(assert (=> bs!24106 (= lambda!7057 lambda!7038)))

(declare-fun bs!24107 () Bool)

(assert (= bs!24107 (and b!225963 d!62276)))

(assert (=> bs!24107 (not (= lambda!7057 lambda!7037))))

(declare-fun bs!24108 () Bool)

(assert (= bs!24108 (and b!225963 d!62244)))

(assert (=> bs!24108 (= lambda!7057 lambda!7017)))

(declare-fun bs!24109 () Bool)

(assert (= bs!24109 (and b!225963 b!225098)))

(assert (=> bs!24109 (= lambda!7057 lambda!7027)))

(declare-fun bs!24110 () Bool)

(assert (= bs!24110 (and b!225963 d!62648)))

(assert (=> bs!24110 (not (= lambda!7057 lambda!7056))))

(declare-fun bs!24111 () Bool)

(assert (= bs!24111 (and b!225963 d!62616)))

(assert (=> bs!24111 (= lambda!7057 lambda!7055)))

(declare-fun b!225978 () Bool)

(declare-fun e!139474 () Bool)

(assert (=> b!225978 (= e!139474 true)))

(declare-fun b!225977 () Bool)

(declare-fun e!139473 () Bool)

(assert (=> b!225977 (= e!139473 e!139474)))

(declare-fun b!225976 () Bool)

(declare-fun e!139472 () Bool)

(assert (=> b!225976 (= e!139472 e!139473)))

(assert (=> b!225963 e!139472))

(assert (= b!225977 b!225978))

(assert (= b!225976 b!225977))

(assert (= (and b!225963 ((_ is Cons!3413) rules!1920)) b!225976))

(assert (=> b!225978 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7057))))

(assert (=> b!225978 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7057))))

(assert (=> b!225963 true))

(declare-fun b!225964 () Bool)

(declare-fun e!139462 () Bool)

(declare-fun lt!87046 () Option!605)

(declare-fun call!11545 () Token!1018)

(assert (=> b!225964 (= e!139462 (not (= (_1!2043 (v!14279 lt!87046)) call!11545)))))

(declare-fun b!225965 () Bool)

(declare-fun e!139461 () BalanceConc!2200)

(declare-fun call!11543 () BalanceConc!2200)

(assert (=> b!225965 (= e!139461 call!11543)))

(declare-fun bm!11537 () Bool)

(declare-fun call!11546 () BalanceConc!2200)

(declare-fun lt!87044 () BalanceConc!2200)

(declare-fun c!43458 () Bool)

(declare-fun call!11544 () BalanceConc!2200)

(assert (=> bm!11537 (= call!11543 (++!856 call!11546 (ite c!43458 lt!87044 call!11544)))))

(declare-fun bm!11538 () Bool)

(declare-fun call!11542 () Token!1018)

(assert (=> bm!11538 (= call!11542 call!11545)))

(declare-fun b!225966 () Bool)

(declare-fun e!139465 () BalanceConc!2200)

(assert (=> b!225966 (= e!139465 (BalanceConc!2201 Empty!1096))))

(assert (=> b!225966 (= (print!254 thiss!17480 (singletonSeq!189 call!11542)) (printTailRec!217 thiss!17480 (singletonSeq!189 call!11542) 0 (BalanceConc!2201 Empty!1096)))))

(declare-fun lt!87045 () Unit!3836)

(declare-fun Unit!3856 () Unit!3836)

(assert (=> b!225966 (= lt!87045 Unit!3856)))

(declare-fun lt!87055 () Unit!3836)

(assert (=> b!225966 (= lt!87055 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!76 thiss!17480 rules!1920 (list!1304 call!11544) (list!1304 lt!87044)))))

(assert (=> b!225966 false))

(declare-fun lt!87048 () Unit!3836)

(declare-fun Unit!3857 () Unit!3836)

(assert (=> b!225966 (= lt!87048 Unit!3857)))

(declare-fun b!225967 () Bool)

(declare-fun e!139463 () Bool)

(assert (=> b!225967 (= e!139463 (= (_1!2043 (v!14279 lt!87046)) (apply!602 lt!86492 0)))))

(declare-fun bm!11539 () Bool)

(assert (=> bm!11539 (= call!11545 (apply!602 lt!86492 0))))

(declare-fun bm!11540 () Bool)

(assert (=> bm!11540 (= call!11546 (charsOf!292 (ite c!43458 call!11545 call!11542)))))

(declare-fun b!225968 () Bool)

(assert (=> b!225968 (= e!139465 (++!856 call!11543 lt!87044))))

(declare-fun e!139464 () BalanceConc!2200)

(assert (=> b!225963 (= e!139464 e!139461)))

(declare-fun lt!87047 () List!3424)

(assert (=> b!225963 (= lt!87047 (list!1305 lt!86492))))

(declare-fun lt!87052 () Unit!3836)

(assert (=> b!225963 (= lt!87052 (lemmaDropApply!168 lt!87047 0))))

(assert (=> b!225963 (= (head!769 (drop!181 lt!87047 0)) (apply!604 lt!87047 0))))

(declare-fun lt!87053 () Unit!3836)

(assert (=> b!225963 (= lt!87053 lt!87052)))

(declare-fun lt!87043 () List!3424)

(assert (=> b!225963 (= lt!87043 (list!1305 lt!86492))))

(declare-fun lt!87054 () Unit!3836)

(assert (=> b!225963 (= lt!87054 (lemmaDropTail!160 lt!87043 0))))

(assert (=> b!225963 (= (tail!420 (drop!181 lt!87043 0)) (drop!181 lt!87043 (+ 0 1)))))

(declare-fun lt!87050 () Unit!3836)

(assert (=> b!225963 (= lt!87050 lt!87054)))

(declare-fun lt!87042 () Unit!3836)

(assert (=> b!225963 (= lt!87042 (forallContained!204 (list!1305 lt!86492) lambda!7057 (apply!602 lt!86492 0)))))

(assert (=> b!225963 (= lt!87044 (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 lt!86492 separatorToken!170 (+ 0 1)))))

(assert (=> b!225963 (= lt!87046 (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (++!856 (charsOf!292 (apply!602 lt!86492 0)) lt!87044)))))

(declare-fun res!103849 () Bool)

(assert (=> b!225963 (= res!103849 ((_ is Some!604) lt!87046))))

(assert (=> b!225963 (=> (not res!103849) (not e!139463))))

(assert (=> b!225963 (= c!43458 e!139463)))

(declare-fun lt!87049 () BalanceConc!2200)

(assert (=> d!62648 (= (list!1304 lt!87049) (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (dropList!128 lt!86492 0) separatorToken!170))))

(assert (=> d!62648 (= lt!87049 e!139464)))

(declare-fun c!43456 () Bool)

(assert (=> d!62648 (= c!43456 (>= 0 (size!2735 lt!86492)))))

(declare-fun lt!87051 () Unit!3836)

(assert (=> d!62648 (= lt!87051 (lemmaContentSubsetPreservesForall!72 (list!1305 lt!86492) (dropList!128 lt!86492 0) lambda!7056))))

(declare-fun e!139460 () Bool)

(assert (=> d!62648 e!139460))

(declare-fun res!103850 () Bool)

(assert (=> d!62648 (=> (not res!103850) (not e!139460))))

(assert (=> d!62648 (= res!103850 (>= 0 0))))

(assert (=> d!62648 (= (printWithSeparatorTokenWhenNeededRec!206 thiss!17480 rules!1920 lt!86492 separatorToken!170 0) lt!87049)))

(declare-fun b!225969 () Bool)

(declare-fun c!43457 () Bool)

(assert (=> b!225969 (= c!43457 e!139462)))

(declare-fun res!103848 () Bool)

(assert (=> b!225969 (=> (not res!103848) (not e!139462))))

(assert (=> b!225969 (= res!103848 ((_ is Some!604) lt!87046))))

(assert (=> b!225969 (= e!139461 e!139465)))

(declare-fun bm!11541 () Bool)

(assert (=> bm!11541 (= call!11544 (charsOf!292 (ite c!43457 separatorToken!170 call!11542)))))

(declare-fun b!225970 () Bool)

(assert (=> b!225970 (= e!139460 (<= 0 (size!2735 lt!86492)))))

(declare-fun b!225971 () Bool)

(assert (=> b!225971 (= e!139464 (BalanceConc!2201 Empty!1096))))

(assert (= (and d!62648 res!103850) b!225970))

(assert (= (and d!62648 c!43456) b!225971))

(assert (= (and d!62648 (not c!43456)) b!225963))

(assert (= (and b!225963 res!103849) b!225967))

(assert (= (and b!225963 c!43458) b!225965))

(assert (= (and b!225963 (not c!43458)) b!225969))

(assert (= (and b!225969 res!103848) b!225964))

(assert (= (and b!225969 c!43457) b!225968))

(assert (= (and b!225969 (not c!43457)) b!225966))

(assert (= (or b!225968 b!225966) bm!11538))

(assert (= (or b!225968 b!225966) bm!11541))

(assert (= (or b!225965 b!225964 bm!11538) bm!11539))

(assert (= (or b!225965 b!225968) bm!11540))

(assert (= (or b!225965 b!225968) bm!11537))

(declare-fun m!265659 () Bool)

(assert (=> b!225966 m!265659))

(declare-fun m!265661 () Bool)

(assert (=> b!225966 m!265661))

(declare-fun m!265663 () Bool)

(assert (=> b!225966 m!265663))

(declare-fun m!265665 () Bool)

(assert (=> b!225966 m!265665))

(assert (=> b!225966 m!265661))

(assert (=> b!225966 m!265661))

(declare-fun m!265667 () Bool)

(assert (=> b!225966 m!265667))

(assert (=> b!225966 m!265659))

(assert (=> b!225966 m!265665))

(declare-fun m!265669 () Bool)

(assert (=> b!225966 m!265669))

(declare-fun m!265671 () Bool)

(assert (=> b!225963 m!265671))

(declare-fun m!265673 () Bool)

(assert (=> b!225963 m!265673))

(assert (=> b!225963 m!265671))

(declare-fun m!265675 () Bool)

(assert (=> b!225963 m!265675))

(declare-fun m!265677 () Bool)

(assert (=> b!225963 m!265677))

(declare-fun m!265679 () Bool)

(assert (=> b!225963 m!265679))

(assert (=> b!225963 m!265677))

(declare-fun m!265681 () Bool)

(assert (=> b!225963 m!265681))

(assert (=> b!225963 m!265681))

(declare-fun m!265683 () Bool)

(assert (=> b!225963 m!265683))

(declare-fun m!265685 () Bool)

(assert (=> b!225963 m!265685))

(assert (=> b!225963 m!265683))

(declare-fun m!265687 () Bool)

(assert (=> b!225963 m!265687))

(assert (=> b!225963 m!264047))

(assert (=> b!225963 m!265681))

(declare-fun m!265689 () Bool)

(assert (=> b!225963 m!265689))

(declare-fun m!265691 () Bool)

(assert (=> b!225963 m!265691))

(assert (=> b!225963 m!265687))

(declare-fun m!265693 () Bool)

(assert (=> b!225963 m!265693))

(declare-fun m!265695 () Bool)

(assert (=> b!225963 m!265695))

(assert (=> b!225963 m!264047))

(declare-fun m!265697 () Bool)

(assert (=> b!225963 m!265697))

(assert (=> bm!11539 m!265681))

(declare-fun m!265699 () Bool)

(assert (=> bm!11540 m!265699))

(declare-fun m!265701 () Bool)

(assert (=> bm!11541 m!265701))

(declare-fun m!265703 () Bool)

(assert (=> bm!11537 m!265703))

(declare-fun m!265705 () Bool)

(assert (=> d!62648 m!265705))

(declare-fun m!265707 () Bool)

(assert (=> d!62648 m!265707))

(assert (=> d!62648 m!264047))

(assert (=> d!62648 m!265705))

(declare-fun m!265709 () Bool)

(assert (=> d!62648 m!265709))

(assert (=> d!62648 m!264047))

(declare-fun m!265711 () Bool)

(assert (=> d!62648 m!265711))

(assert (=> d!62648 m!265705))

(declare-fun m!265713 () Bool)

(assert (=> d!62648 m!265713))

(assert (=> b!225967 m!265681))

(assert (=> b!225970 m!265711))

(declare-fun m!265715 () Bool)

(assert (=> b!225968 m!265715))

(assert (=> b!224917 d!62648))

(declare-fun bs!24117 () Bool)

(declare-fun b!225986 () Bool)

(assert (= bs!24117 (and b!225986 b!224965)))

(declare-fun lambda!7058 () Int)

(assert (=> bs!24117 (= lambda!7058 lambda!7012)))

(declare-fun bs!24118 () Bool)

(assert (= bs!24118 (and b!225986 b!225963)))

(assert (=> bs!24118 (= lambda!7058 lambda!7057)))

(declare-fun bs!24119 () Bool)

(assert (= bs!24119 (and b!225986 d!62396)))

(assert (=> bs!24119 (not (= lambda!7058 lambda!7046))))

(declare-fun bs!24120 () Bool)

(assert (= bs!24120 (and b!225986 b!224924)))

(assert (=> bs!24120 (not (= lambda!7058 lambda!7011))))

(declare-fun bs!24121 () Bool)

(assert (= bs!24121 (and b!225986 b!225258)))

(assert (=> bs!24121 (= lambda!7058 lambda!7038)))

(declare-fun bs!24122 () Bool)

(assert (= bs!24122 (and b!225986 d!62276)))

(assert (=> bs!24122 (not (= lambda!7058 lambda!7037))))

(declare-fun bs!24123 () Bool)

(assert (= bs!24123 (and b!225986 d!62244)))

(assert (=> bs!24123 (= lambda!7058 lambda!7017)))

(declare-fun bs!24124 () Bool)

(assert (= bs!24124 (and b!225986 b!225098)))

(assert (=> bs!24124 (= lambda!7058 lambda!7027)))

(declare-fun bs!24125 () Bool)

(assert (= bs!24125 (and b!225986 d!62648)))

(assert (=> bs!24125 (not (= lambda!7058 lambda!7056))))

(declare-fun bs!24126 () Bool)

(assert (= bs!24126 (and b!225986 d!62616)))

(assert (=> bs!24126 (= lambda!7058 lambda!7055)))

(declare-fun b!225993 () Bool)

(declare-fun e!139482 () Bool)

(assert (=> b!225993 (= e!139482 true)))

(declare-fun b!225992 () Bool)

(declare-fun e!139481 () Bool)

(assert (=> b!225992 (= e!139481 e!139482)))

(declare-fun b!225991 () Bool)

(declare-fun e!139480 () Bool)

(assert (=> b!225991 (= e!139480 e!139481)))

(assert (=> b!225986 e!139480))

(assert (= b!225992 b!225993))

(assert (= b!225991 b!225992))

(assert (= (and b!225986 ((_ is Cons!3413) rules!1920)) b!225991))

(assert (=> b!225993 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7058))))

(assert (=> b!225993 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 rules!1920)))) (dynLambda!1574 order!2347 lambda!7058))))

(assert (=> b!225986 true))

(declare-fun b!225983 () Bool)

(declare-fun c!43461 () Bool)

(declare-fun lt!87060 () Option!603)

(assert (=> b!225983 (= c!43461 (and ((_ is Some!602) lt!87060) (not (= (_1!2041 (v!14277 lt!87060)) (h!8811 tokens!465)))))))

(declare-fun e!139476 () List!3422)

(declare-fun e!139479 () List!3422)

(assert (=> b!225983 (= e!139476 e!139479)))

(declare-fun bm!11542 () Bool)

(declare-fun call!11550 () BalanceConc!2200)

(declare-fun call!11548 () BalanceConc!2200)

(assert (=> bm!11542 (= call!11550 call!11548)))

(declare-fun b!225984 () Bool)

(declare-fun call!11549 () List!3422)

(assert (=> b!225984 (= e!139476 call!11549)))

(declare-fun b!225985 () Bool)

(declare-fun e!139477 () List!3422)

(assert (=> b!225985 (= e!139477 Nil!3412)))

(declare-fun c!43460 () Bool)

(declare-fun call!11551 () List!3422)

(declare-fun call!11547 () List!3422)

(declare-fun lt!87056 () List!3422)

(declare-fun bm!11543 () Bool)

(assert (=> bm!11543 (= call!11549 (++!854 call!11547 (ite c!43460 lt!87056 call!11551)))))

(declare-fun bm!11544 () Bool)

(assert (=> bm!11544 (= call!11548 (charsOf!292 (h!8811 tokens!465)))))

(declare-fun d!62660 () Bool)

(declare-fun c!43462 () Bool)

(assert (=> d!62660 (= c!43462 ((_ is Cons!3414) tokens!465))))

(assert (=> d!62660 (= (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!139477)))

(assert (=> b!225986 (= e!139477 e!139476)))

(declare-fun lt!87059 () Unit!3836)

(assert (=> b!225986 (= lt!87059 (forallContained!204 tokens!465 lambda!7058 (h!8811 tokens!465)))))

(assert (=> b!225986 (= lt!87056 (printWithSeparatorTokenWhenNeededList!216 thiss!17480 rules!1920 (t!33176 tokens!465) separatorToken!170))))

(assert (=> b!225986 (= lt!87060 (maxPrefix!253 thiss!17480 rules!1920 (++!854 (list!1304 (charsOf!292 (h!8811 tokens!465))) lt!87056)))))

(assert (=> b!225986 (= c!43460 (and ((_ is Some!602) lt!87060) (= (_1!2041 (v!14277 lt!87060)) (h!8811 tokens!465))))))

(declare-fun b!225987 () Bool)

(assert (=> b!225987 (= e!139479 (++!854 call!11549 lt!87056))))

(declare-fun b!225988 () Bool)

(declare-fun e!139478 () BalanceConc!2200)

(assert (=> b!225988 (= e!139478 call!11550)))

(declare-fun b!225989 () Bool)

(assert (=> b!225989 (= e!139478 (charsOf!292 separatorToken!170))))

(declare-fun bm!11545 () Bool)

(assert (=> bm!11545 (= call!11547 (list!1304 (ite c!43460 call!11548 call!11550)))))

(declare-fun bm!11546 () Bool)

(assert (=> bm!11546 (= call!11551 (list!1304 e!139478))))

(declare-fun c!43459 () Bool)

(assert (=> bm!11546 (= c!43459 c!43461)))

(declare-fun b!225990 () Bool)

(assert (=> b!225990 (= e!139479 Nil!3412)))

(assert (=> b!225990 (= (print!254 thiss!17480 (singletonSeq!189 (h!8811 tokens!465))) (printTailRec!217 thiss!17480 (singletonSeq!189 (h!8811 tokens!465)) 0 (BalanceConc!2201 Empty!1096)))))

(declare-fun lt!87061 () Unit!3836)

(declare-fun Unit!3858 () Unit!3836)

(assert (=> b!225990 (= lt!87061 Unit!3858)))

(declare-fun lt!87057 () Unit!3836)

(assert (=> b!225990 (= lt!87057 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!76 thiss!17480 rules!1920 call!11551 lt!87056))))

(assert (=> b!225990 false))

(declare-fun lt!87058 () Unit!3836)

(declare-fun Unit!3859 () Unit!3836)

(assert (=> b!225990 (= lt!87058 Unit!3859)))

(assert (= (and d!62660 c!43462) b!225986))

(assert (= (and d!62660 (not c!43462)) b!225985))

(assert (= (and b!225986 c!43460) b!225984))

(assert (= (and b!225986 (not c!43460)) b!225983))

(assert (= (and b!225983 c!43461) b!225987))

(assert (= (and b!225983 (not c!43461)) b!225990))

(assert (= (or b!225987 b!225990) bm!11542))

(assert (= (or b!225987 b!225990) bm!11546))

(assert (= (and bm!11546 c!43459) b!225989))

(assert (= (and bm!11546 (not c!43459)) b!225988))

(assert (= (or b!225984 bm!11542) bm!11544))

(assert (= (or b!225984 b!225987) bm!11545))

(assert (= (or b!225984 b!225987) bm!11543))

(declare-fun m!265717 () Bool)

(assert (=> bm!11543 m!265717))

(declare-fun m!265719 () Bool)

(assert (=> bm!11545 m!265719))

(assert (=> b!225990 m!263771))

(assert (=> b!225990 m!263771))

(assert (=> b!225990 m!265629))

(assert (=> b!225990 m!263771))

(declare-fun m!265721 () Bool)

(assert (=> b!225990 m!265721))

(declare-fun m!265723 () Bool)

(assert (=> b!225990 m!265723))

(assert (=> b!225989 m!263833))

(assert (=> b!225986 m!263839))

(declare-fun m!265725 () Bool)

(assert (=> b!225986 m!265725))

(declare-fun m!265727 () Bool)

(assert (=> b!225986 m!265727))

(assert (=> b!225986 m!265725))

(declare-fun m!265729 () Bool)

(assert (=> b!225986 m!265729))

(assert (=> b!225986 m!263837))

(assert (=> b!225986 m!263839))

(assert (=> b!225986 m!263829))

(assert (=> b!225986 m!263837))

(declare-fun m!265731 () Bool)

(assert (=> b!225987 m!265731))

(declare-fun m!265733 () Bool)

(assert (=> bm!11546 m!265733))

(assert (=> bm!11544 m!263837))

(assert (=> b!224917 d!62660))

(declare-fun d!62662 () Bool)

(declare-fun e!139484 () Bool)

(assert (=> d!62662 e!139484))

(declare-fun res!103852 () Bool)

(assert (=> d!62662 (=> (not res!103852) (not e!139484))))

(declare-fun lt!87062 () List!3422)

(assert (=> d!62662 (= res!103852 (= (content!473 lt!87062) ((_ map or) (content!473 lt!86516) (content!473 lt!86499))))))

(declare-fun e!139483 () List!3422)

(assert (=> d!62662 (= lt!87062 e!139483)))

(declare-fun c!43463 () Bool)

(assert (=> d!62662 (= c!43463 ((_ is Nil!3412) lt!86516))))

(assert (=> d!62662 (= (++!854 lt!86516 lt!86499) lt!87062)))

(declare-fun b!225995 () Bool)

(assert (=> b!225995 (= e!139483 (Cons!3412 (h!8809 lt!86516) (++!854 (t!33174 lt!86516) lt!86499)))))

(declare-fun b!225994 () Bool)

(assert (=> b!225994 (= e!139483 lt!86499)))

(declare-fun b!225997 () Bool)

(assert (=> b!225997 (= e!139484 (or (not (= lt!86499 Nil!3412)) (= lt!87062 lt!86516)))))

(declare-fun b!225996 () Bool)

(declare-fun res!103851 () Bool)

(assert (=> b!225996 (=> (not res!103851) (not e!139484))))

(assert (=> b!225996 (= res!103851 (= (size!2737 lt!87062) (+ (size!2737 lt!86516) (size!2737 lt!86499))))))

(assert (= (and d!62662 c!43463) b!225994))

(assert (= (and d!62662 (not c!43463)) b!225995))

(assert (= (and d!62662 res!103852) b!225996))

(assert (= (and b!225996 res!103851) b!225997))

(declare-fun m!265735 () Bool)

(assert (=> d!62662 m!265735))

(assert (=> d!62662 m!264489))

(assert (=> d!62662 m!264083))

(declare-fun m!265737 () Bool)

(assert (=> b!225995 m!265737))

(declare-fun m!265739 () Bool)

(assert (=> b!225996 m!265739))

(assert (=> b!225996 m!264497))

(assert (=> b!225996 m!264091))

(assert (=> b!224939 d!62662))

(declare-fun d!62664 () Bool)

(assert (=> d!62664 (= (inv!4263 (tag!833 (rule!1190 (h!8811 tokens!465)))) (= (mod (str.len (value!22469 (tag!833 (rule!1190 (h!8811 tokens!465))))) 2) 0))))

(assert (=> b!224940 d!62664))

(declare-fun d!62666 () Bool)

(declare-fun res!103853 () Bool)

(declare-fun e!139485 () Bool)

(assert (=> d!62666 (=> (not res!103853) (not e!139485))))

(assert (=> d!62666 (= res!103853 (semiInverseModEq!219 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toValue!1332 (transformation!637 (rule!1190 (h!8811 tokens!465))))))))

(assert (=> d!62666 (= (inv!4266 (transformation!637 (rule!1190 (h!8811 tokens!465)))) e!139485)))

(declare-fun b!225998 () Bool)

(assert (=> b!225998 (= e!139485 (equivClasses!202 (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toValue!1332 (transformation!637 (rule!1190 (h!8811 tokens!465))))))))

(assert (= (and d!62666 res!103853) b!225998))

(declare-fun m!265741 () Bool)

(assert (=> d!62666 m!265741))

(declare-fun m!265743 () Bool)

(assert (=> b!225998 m!265743))

(assert (=> b!224940 d!62666))

(declare-fun d!62668 () Bool)

(assert (=> d!62668 (= (get!1065 lt!86527) (v!14277 lt!86527))))

(assert (=> b!224919 d!62668))

(declare-fun d!62670 () Bool)

(assert (=> d!62670 (= (isDefined!454 lt!86527) (not (isEmpty!1927 lt!86527)))))

(declare-fun bs!24127 () Bool)

(assert (= bs!24127 d!62670))

(declare-fun m!265745 () Bool)

(assert (=> bs!24127 m!265745))

(assert (=> b!224919 d!62670))

(declare-fun b!225999 () Bool)

(declare-fun res!103860 () Bool)

(declare-fun e!139488 () Bool)

(assert (=> b!225999 (=> (not res!103860) (not e!139488))))

(declare-fun lt!87066 () Option!603)

(assert (=> b!225999 (= res!103860 (= (++!854 (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!87066)))) (_2!2041 (get!1065 lt!87066))) lt!86516))))

(declare-fun b!226000 () Bool)

(declare-fun res!103859 () Bool)

(assert (=> b!226000 (=> (not res!103859) (not e!139488))))

(assert (=> b!226000 (= res!103859 (matchR!199 (regex!637 (rule!1190 (_1!2041 (get!1065 lt!87066)))) (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!87066))))))))

(declare-fun b!226001 () Bool)

(declare-fun e!139487 () Option!603)

(declare-fun lt!87064 () Option!603)

(declare-fun lt!87067 () Option!603)

(assert (=> b!226001 (= e!139487 (ite (and ((_ is None!602) lt!87064) ((_ is None!602) lt!87067)) None!602 (ite ((_ is None!602) lt!87067) lt!87064 (ite ((_ is None!602) lt!87064) lt!87067 (ite (>= (size!2734 (_1!2041 (v!14277 lt!87064))) (size!2734 (_1!2041 (v!14277 lt!87067)))) lt!87064 lt!87067)))))))

(declare-fun call!11552 () Option!603)

(assert (=> b!226001 (= lt!87064 call!11552)))

(assert (=> b!226001 (= lt!87067 (maxPrefix!253 thiss!17480 (t!33175 rules!1920) lt!86516))))

(declare-fun b!226002 () Bool)

(declare-fun res!103854 () Bool)

(assert (=> b!226002 (=> (not res!103854) (not e!139488))))

(assert (=> b!226002 (= res!103854 (= (list!1304 (charsOf!292 (_1!2041 (get!1065 lt!87066)))) (originalCharacters!680 (_1!2041 (get!1065 lt!87066)))))))

(declare-fun b!226003 () Bool)

(declare-fun res!103857 () Bool)

(assert (=> b!226003 (=> (not res!103857) (not e!139488))))

(assert (=> b!226003 (= res!103857 (= (value!22470 (_1!2041 (get!1065 lt!87066))) (apply!605 (transformation!637 (rule!1190 (_1!2041 (get!1065 lt!87066)))) (seqFromList!651 (originalCharacters!680 (_1!2041 (get!1065 lt!87066)))))))))

(declare-fun b!226004 () Bool)

(declare-fun res!103856 () Bool)

(assert (=> b!226004 (=> (not res!103856) (not e!139488))))

(assert (=> b!226004 (= res!103856 (< (size!2737 (_2!2041 (get!1065 lt!87066))) (size!2737 lt!86516)))))

(declare-fun d!62672 () Bool)

(declare-fun e!139486 () Bool)

(assert (=> d!62672 e!139486))

(declare-fun res!103855 () Bool)

(assert (=> d!62672 (=> res!103855 e!139486)))

(assert (=> d!62672 (= res!103855 (isEmpty!1927 lt!87066))))

(assert (=> d!62672 (= lt!87066 e!139487)))

(declare-fun c!43464 () Bool)

(assert (=> d!62672 (= c!43464 (and ((_ is Cons!3413) rules!1920) ((_ is Nil!3413) (t!33175 rules!1920))))))

(declare-fun lt!87065 () Unit!3836)

(declare-fun lt!87063 () Unit!3836)

(assert (=> d!62672 (= lt!87065 lt!87063)))

(assert (=> d!62672 (isPrefix!333 lt!86516 lt!86516)))

(assert (=> d!62672 (= lt!87063 (lemmaIsPrefixRefl!176 lt!86516 lt!86516))))

(assert (=> d!62672 (rulesValidInductive!165 thiss!17480 rules!1920)))

(assert (=> d!62672 (= (maxPrefix!253 thiss!17480 rules!1920 lt!86516) lt!87066)))

(declare-fun b!226005 () Bool)

(assert (=> b!226005 (= e!139486 e!139488)))

(declare-fun res!103858 () Bool)

(assert (=> b!226005 (=> (not res!103858) (not e!139488))))

(assert (=> b!226005 (= res!103858 (isDefined!454 lt!87066))))

(declare-fun b!226006 () Bool)

(assert (=> b!226006 (= e!139487 call!11552)))

(declare-fun b!226007 () Bool)

(assert (=> b!226007 (= e!139488 (contains!605 rules!1920 (rule!1190 (_1!2041 (get!1065 lt!87066)))))))

(declare-fun bm!11547 () Bool)

(assert (=> bm!11547 (= call!11552 (maxPrefixOneRule!110 thiss!17480 (h!8810 rules!1920) lt!86516))))

(assert (= (and d!62672 c!43464) b!226006))

(assert (= (and d!62672 (not c!43464)) b!226001))

(assert (= (or b!226006 b!226001) bm!11547))

(assert (= (and d!62672 (not res!103855)) b!226005))

(assert (= (and b!226005 res!103858) b!226002))

(assert (= (and b!226002 res!103854) b!226004))

(assert (= (and b!226004 res!103856) b!225999))

(assert (= (and b!225999 res!103860) b!226003))

(assert (= (and b!226003 res!103857) b!226000))

(assert (= (and b!226000 res!103859) b!226007))

(declare-fun m!265747 () Bool)

(assert (=> b!226002 m!265747))

(declare-fun m!265749 () Bool)

(assert (=> b!226002 m!265749))

(assert (=> b!226002 m!265749))

(declare-fun m!265751 () Bool)

(assert (=> b!226002 m!265751))

(declare-fun m!265753 () Bool)

(assert (=> bm!11547 m!265753))

(declare-fun m!265755 () Bool)

(assert (=> b!226005 m!265755))

(declare-fun m!265757 () Bool)

(assert (=> b!226001 m!265757))

(assert (=> b!226007 m!265747))

(declare-fun m!265759 () Bool)

(assert (=> b!226007 m!265759))

(assert (=> b!226000 m!265747))

(assert (=> b!226000 m!265749))

(assert (=> b!226000 m!265749))

(assert (=> b!226000 m!265751))

(assert (=> b!226000 m!265751))

(declare-fun m!265761 () Bool)

(assert (=> b!226000 m!265761))

(assert (=> b!225999 m!265747))

(assert (=> b!225999 m!265749))

(assert (=> b!225999 m!265749))

(assert (=> b!225999 m!265751))

(assert (=> b!225999 m!265751))

(declare-fun m!265763 () Bool)

(assert (=> b!225999 m!265763))

(assert (=> b!226003 m!265747))

(declare-fun m!265765 () Bool)

(assert (=> b!226003 m!265765))

(assert (=> b!226003 m!265765))

(declare-fun m!265767 () Bool)

(assert (=> b!226003 m!265767))

(declare-fun m!265769 () Bool)

(assert (=> d!62672 m!265769))

(declare-fun m!265771 () Bool)

(assert (=> d!62672 m!265771))

(declare-fun m!265773 () Bool)

(assert (=> d!62672 m!265773))

(assert (=> d!62672 m!264717))

(assert (=> b!226004 m!265747))

(declare-fun m!265775 () Bool)

(assert (=> b!226004 m!265775))

(assert (=> b!226004 m!264497))

(assert (=> b!224919 d!62672))

(declare-fun lt!87070 () Bool)

(declare-fun d!62674 () Bool)

(assert (=> d!62674 (= lt!87070 (isEmpty!1921 (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 (seqFromList!651 lt!86516))))))))

(declare-fun isEmpty!1931 (Conc!1097) Bool)

(assert (=> d!62674 (= lt!87070 (isEmpty!1931 (c!43243 (_1!2042 (lex!323 thiss!17480 rules!1920 (seqFromList!651 lt!86516))))))))

(assert (=> d!62674 (= (isEmpty!1919 (_1!2042 (lex!323 thiss!17480 rules!1920 (seqFromList!651 lt!86516)))) lt!87070)))

(declare-fun bs!24128 () Bool)

(assert (= bs!24128 d!62674))

(declare-fun m!265777 () Bool)

(assert (=> bs!24128 m!265777))

(assert (=> bs!24128 m!265777))

(declare-fun m!265779 () Bool)

(assert (=> bs!24128 m!265779))

(declare-fun m!265781 () Bool)

(assert (=> bs!24128 m!265781))

(assert (=> b!224941 d!62674))

(declare-fun b!226008 () Bool)

(declare-fun res!103862 () Bool)

(declare-fun e!139490 () Bool)

(assert (=> b!226008 (=> (not res!103862) (not e!139490))))

(declare-fun lt!87071 () tuple2!3652)

(assert (=> b!226008 (= res!103862 (= (list!1305 (_1!2042 lt!87071)) (_1!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 (seqFromList!651 lt!86516))))))))

(declare-fun b!226009 () Bool)

(declare-fun e!139489 () Bool)

(assert (=> b!226009 (= e!139489 (= (_2!2042 lt!87071) (seqFromList!651 lt!86516)))))

(declare-fun b!226010 () Bool)

(assert (=> b!226010 (= e!139490 (= (list!1304 (_2!2042 lt!87071)) (_2!2045 (lexList!153 thiss!17480 rules!1920 (list!1304 (seqFromList!651 lt!86516))))))))

(declare-fun b!226011 () Bool)

(declare-fun e!139491 () Bool)

(assert (=> b!226011 (= e!139489 e!139491)))

(declare-fun res!103861 () Bool)

(assert (=> b!226011 (= res!103861 (< (size!2739 (_2!2042 lt!87071)) (size!2739 (seqFromList!651 lt!86516))))))

(assert (=> b!226011 (=> (not res!103861) (not e!139491))))

(declare-fun d!62676 () Bool)

(assert (=> d!62676 e!139490))

(declare-fun res!103863 () Bool)

(assert (=> d!62676 (=> (not res!103863) (not e!139490))))

(assert (=> d!62676 (= res!103863 e!139489)))

(declare-fun c!43465 () Bool)

(assert (=> d!62676 (= c!43465 (> (size!2735 (_1!2042 lt!87071)) 0))))

(assert (=> d!62676 (= lt!87071 (lexTailRecV2!140 thiss!17480 rules!1920 (seqFromList!651 lt!86516) (BalanceConc!2201 Empty!1096) (seqFromList!651 lt!86516) (BalanceConc!2203 Empty!1097)))))

(assert (=> d!62676 (= (lex!323 thiss!17480 rules!1920 (seqFromList!651 lt!86516)) lt!87071)))

(declare-fun b!226012 () Bool)

(assert (=> b!226012 (= e!139491 (not (isEmpty!1919 (_1!2042 lt!87071))))))

(assert (= (and d!62676 c!43465) b!226011))

(assert (= (and d!62676 (not c!43465)) b!226009))

(assert (= (and b!226011 res!103861) b!226012))

(assert (= (and d!62676 res!103863) b!226008))

(assert (= (and b!226008 res!103862) b!226010))

(declare-fun m!265783 () Bool)

(assert (=> d!62676 m!265783))

(assert (=> d!62676 m!263961))

(assert (=> d!62676 m!263961))

(declare-fun m!265785 () Bool)

(assert (=> d!62676 m!265785))

(declare-fun m!265787 () Bool)

(assert (=> b!226008 m!265787))

(assert (=> b!226008 m!263961))

(declare-fun m!265789 () Bool)

(assert (=> b!226008 m!265789))

(assert (=> b!226008 m!265789))

(declare-fun m!265791 () Bool)

(assert (=> b!226008 m!265791))

(declare-fun m!265793 () Bool)

(assert (=> b!226010 m!265793))

(assert (=> b!226010 m!263961))

(assert (=> b!226010 m!265789))

(assert (=> b!226010 m!265789))

(assert (=> b!226010 m!265791))

(declare-fun m!265795 () Bool)

(assert (=> b!226011 m!265795))

(assert (=> b!226011 m!263961))

(declare-fun m!265797 () Bool)

(assert (=> b!226011 m!265797))

(declare-fun m!265799 () Bool)

(assert (=> b!226012 m!265799))

(assert (=> b!224941 d!62676))

(declare-fun d!62678 () Bool)

(assert (=> d!62678 (= (seqFromList!651 lt!86516) (fromListB!245 lt!86516))))

(declare-fun bs!24129 () Bool)

(assert (= bs!24129 d!62678))

(declare-fun m!265801 () Bool)

(assert (=> bs!24129 m!265801))

(assert (=> b!224941 d!62678))

(declare-fun b!226013 () Bool)

(declare-fun e!139497 () Bool)

(declare-fun e!139492 () Bool)

(assert (=> b!226013 (= e!139497 e!139492)))

(declare-fun res!103867 () Bool)

(assert (=> b!226013 (=> (not res!103867) (not e!139492))))

(declare-fun lt!87072 () Bool)

(assert (=> b!226013 (= res!103867 (not lt!87072))))

(declare-fun b!226014 () Bool)

(declare-fun e!139496 () Bool)

(assert (=> b!226014 (= e!139496 (nullable!146 (regex!637 (rule!1190 (h!8811 tokens!465)))))))

(declare-fun b!226015 () Bool)

(declare-fun e!139498 () Bool)

(assert (=> b!226015 (= e!139498 (not lt!87072))))

(declare-fun b!226016 () Bool)

(declare-fun res!103871 () Bool)

(assert (=> b!226016 (=> res!103871 e!139497)))

(assert (=> b!226016 (= res!103871 (not ((_ is ElementMatch!861) (regex!637 (rule!1190 (h!8811 tokens!465))))))))

(assert (=> b!226016 (= e!139498 e!139497)))

(declare-fun b!226017 () Bool)

(declare-fun res!103870 () Bool)

(declare-fun e!139493 () Bool)

(assert (=> b!226017 (=> (not res!103870) (not e!139493))))

(declare-fun call!11553 () Bool)

(assert (=> b!226017 (= res!103870 (not call!11553))))

(declare-fun b!226018 () Bool)

(declare-fun res!103865 () Bool)

(assert (=> b!226018 (=> (not res!103865) (not e!139493))))

(assert (=> b!226018 (= res!103865 (isEmpty!1920 (tail!422 lt!86516)))))

(declare-fun bm!11548 () Bool)

(assert (=> bm!11548 (= call!11553 (isEmpty!1920 lt!86516))))

(declare-fun d!62680 () Bool)

(declare-fun e!139494 () Bool)

(assert (=> d!62680 e!139494))

(declare-fun c!43468 () Bool)

(assert (=> d!62680 (= c!43468 ((_ is EmptyExpr!861) (regex!637 (rule!1190 (h!8811 tokens!465)))))))

(assert (=> d!62680 (= lt!87072 e!139496)))

(declare-fun c!43467 () Bool)

(assert (=> d!62680 (= c!43467 (isEmpty!1920 lt!86516))))

(assert (=> d!62680 (validRegex!221 (regex!637 (rule!1190 (h!8811 tokens!465))))))

(assert (=> d!62680 (= (matchR!199 (regex!637 (rule!1190 (h!8811 tokens!465))) lt!86516) lt!87072)))

(declare-fun b!226019 () Bool)

(assert (=> b!226019 (= e!139494 (= lt!87072 call!11553))))

(declare-fun b!226020 () Bool)

(assert (=> b!226020 (= e!139493 (= (head!770 lt!86516) (c!43242 (regex!637 (rule!1190 (h!8811 tokens!465))))))))

(declare-fun b!226021 () Bool)

(declare-fun res!103869 () Bool)

(declare-fun e!139495 () Bool)

(assert (=> b!226021 (=> res!103869 e!139495)))

(assert (=> b!226021 (= res!103869 (not (isEmpty!1920 (tail!422 lt!86516))))))

(declare-fun b!226022 () Bool)

(assert (=> b!226022 (= e!139492 e!139495)))

(declare-fun res!103868 () Bool)

(assert (=> b!226022 (=> res!103868 e!139495)))

(assert (=> b!226022 (= res!103868 call!11553)))

(declare-fun b!226023 () Bool)

(assert (=> b!226023 (= e!139495 (not (= (head!770 lt!86516) (c!43242 (regex!637 (rule!1190 (h!8811 tokens!465)))))))))

(declare-fun b!226024 () Bool)

(assert (=> b!226024 (= e!139494 e!139498)))

(declare-fun c!43466 () Bool)

(assert (=> b!226024 (= c!43466 ((_ is EmptyLang!861) (regex!637 (rule!1190 (h!8811 tokens!465)))))))

(declare-fun b!226025 () Bool)

(assert (=> b!226025 (= e!139496 (matchR!199 (derivativeStep!112 (regex!637 (rule!1190 (h!8811 tokens!465))) (head!770 lt!86516)) (tail!422 lt!86516)))))

(declare-fun b!226026 () Bool)

(declare-fun res!103864 () Bool)

(assert (=> b!226026 (=> res!103864 e!139497)))

(assert (=> b!226026 (= res!103864 e!139493)))

(declare-fun res!103866 () Bool)

(assert (=> b!226026 (=> (not res!103866) (not e!139493))))

(assert (=> b!226026 (= res!103866 lt!87072)))

(assert (= (and d!62680 c!43467) b!226014))

(assert (= (and d!62680 (not c!43467)) b!226025))

(assert (= (and d!62680 c!43468) b!226019))

(assert (= (and d!62680 (not c!43468)) b!226024))

(assert (= (and b!226024 c!43466) b!226015))

(assert (= (and b!226024 (not c!43466)) b!226016))

(assert (= (and b!226016 (not res!103871)) b!226026))

(assert (= (and b!226026 res!103866) b!226017))

(assert (= (and b!226017 res!103870) b!226018))

(assert (= (and b!226018 res!103865) b!226020))

(assert (= (and b!226026 (not res!103864)) b!226013))

(assert (= (and b!226013 res!103867) b!226022))

(assert (= (and b!226022 (not res!103868)) b!226021))

(assert (= (and b!226021 (not res!103869)) b!226023))

(assert (= (or b!226019 b!226017 b!226022) bm!11548))

(assert (=> b!226018 m!265335))

(assert (=> b!226018 m!265335))

(declare-fun m!265803 () Bool)

(assert (=> b!226018 m!265803))

(declare-fun m!265805 () Bool)

(assert (=> d!62680 m!265805))

(declare-fun m!265807 () Bool)

(assert (=> d!62680 m!265807))

(assert (=> b!226020 m!265329))

(assert (=> b!226021 m!265335))

(assert (=> b!226021 m!265335))

(assert (=> b!226021 m!265803))

(assert (=> b!226025 m!265329))

(assert (=> b!226025 m!265329))

(declare-fun m!265809 () Bool)

(assert (=> b!226025 m!265809))

(assert (=> b!226025 m!265335))

(assert (=> b!226025 m!265809))

(assert (=> b!226025 m!265335))

(declare-fun m!265811 () Bool)

(assert (=> b!226025 m!265811))

(assert (=> b!226023 m!265329))

(declare-fun m!265813 () Bool)

(assert (=> b!226014 m!265813))

(assert (=> bm!11548 m!265805))

(assert (=> b!224920 d!62680))

(declare-fun b!226027 () Bool)

(declare-fun e!139504 () Bool)

(declare-fun e!139499 () Bool)

(assert (=> b!226027 (= e!139504 e!139499)))

(declare-fun res!103875 () Bool)

(assert (=> b!226027 (=> (not res!103875) (not e!139499))))

(declare-fun lt!87073 () Bool)

(assert (=> b!226027 (= res!103875 (not lt!87073))))

(declare-fun b!226028 () Bool)

(declare-fun e!139503 () Bool)

(assert (=> b!226028 (= e!139503 (nullable!146 (regex!637 lt!86531)))))

(declare-fun b!226029 () Bool)

(declare-fun e!139505 () Bool)

(assert (=> b!226029 (= e!139505 (not lt!87073))))

(declare-fun b!226030 () Bool)

(declare-fun res!103879 () Bool)

(assert (=> b!226030 (=> res!103879 e!139504)))

(assert (=> b!226030 (= res!103879 (not ((_ is ElementMatch!861) (regex!637 lt!86531))))))

(assert (=> b!226030 (= e!139505 e!139504)))

(declare-fun b!226031 () Bool)

(declare-fun res!103878 () Bool)

(declare-fun e!139500 () Bool)

(assert (=> b!226031 (=> (not res!103878) (not e!139500))))

(declare-fun call!11554 () Bool)

(assert (=> b!226031 (= res!103878 (not call!11554))))

(declare-fun b!226032 () Bool)

(declare-fun res!103873 () Bool)

(assert (=> b!226032 (=> (not res!103873) (not e!139500))))

(assert (=> b!226032 (= res!103873 (isEmpty!1920 (tail!422 lt!86485)))))

(declare-fun bm!11549 () Bool)

(assert (=> bm!11549 (= call!11554 (isEmpty!1920 lt!86485))))

(declare-fun d!62682 () Bool)

(declare-fun e!139501 () Bool)

(assert (=> d!62682 e!139501))

(declare-fun c!43471 () Bool)

(assert (=> d!62682 (= c!43471 ((_ is EmptyExpr!861) (regex!637 lt!86531)))))

(assert (=> d!62682 (= lt!87073 e!139503)))

(declare-fun c!43470 () Bool)

(assert (=> d!62682 (= c!43470 (isEmpty!1920 lt!86485))))

(assert (=> d!62682 (validRegex!221 (regex!637 lt!86531))))

(assert (=> d!62682 (= (matchR!199 (regex!637 lt!86531) lt!86485) lt!87073)))

(declare-fun b!226033 () Bool)

(assert (=> b!226033 (= e!139501 (= lt!87073 call!11554))))

(declare-fun b!226034 () Bool)

(assert (=> b!226034 (= e!139500 (= (head!770 lt!86485) (c!43242 (regex!637 lt!86531))))))

(declare-fun b!226035 () Bool)

(declare-fun res!103877 () Bool)

(declare-fun e!139502 () Bool)

(assert (=> b!226035 (=> res!103877 e!139502)))

(assert (=> b!226035 (= res!103877 (not (isEmpty!1920 (tail!422 lt!86485))))))

(declare-fun b!226036 () Bool)

(assert (=> b!226036 (= e!139499 e!139502)))

(declare-fun res!103876 () Bool)

(assert (=> b!226036 (=> res!103876 e!139502)))

(assert (=> b!226036 (= res!103876 call!11554)))

(declare-fun b!226037 () Bool)

(assert (=> b!226037 (= e!139502 (not (= (head!770 lt!86485) (c!43242 (regex!637 lt!86531)))))))

(declare-fun b!226038 () Bool)

(assert (=> b!226038 (= e!139501 e!139505)))

(declare-fun c!43469 () Bool)

(assert (=> b!226038 (= c!43469 ((_ is EmptyLang!861) (regex!637 lt!86531)))))

(declare-fun b!226039 () Bool)

(assert (=> b!226039 (= e!139503 (matchR!199 (derivativeStep!112 (regex!637 lt!86531) (head!770 lt!86485)) (tail!422 lt!86485)))))

(declare-fun b!226040 () Bool)

(declare-fun res!103872 () Bool)

(assert (=> b!226040 (=> res!103872 e!139504)))

(assert (=> b!226040 (= res!103872 e!139500)))

(declare-fun res!103874 () Bool)

(assert (=> b!226040 (=> (not res!103874) (not e!139500))))

(assert (=> b!226040 (= res!103874 lt!87073)))

(assert (= (and d!62682 c!43470) b!226028))

(assert (= (and d!62682 (not c!43470)) b!226039))

(assert (= (and d!62682 c!43471) b!226033))

(assert (= (and d!62682 (not c!43471)) b!226038))

(assert (= (and b!226038 c!43469) b!226029))

(assert (= (and b!226038 (not c!43469)) b!226030))

(assert (= (and b!226030 (not res!103879)) b!226040))

(assert (= (and b!226040 res!103874) b!226031))

(assert (= (and b!226031 res!103878) b!226032))

(assert (= (and b!226032 res!103873) b!226034))

(assert (= (and b!226040 (not res!103872)) b!226027))

(assert (= (and b!226027 res!103875) b!226036))

(assert (= (and b!226036 (not res!103876)) b!226035))

(assert (= (and b!226035 (not res!103877)) b!226037))

(assert (= (or b!226033 b!226031 b!226036) bm!11549))

(assert (=> b!226032 m!265479))

(assert (=> b!226032 m!265479))

(assert (=> b!226032 m!265481))

(assert (=> d!62682 m!265483))

(declare-fun m!265815 () Bool)

(assert (=> d!62682 m!265815))

(assert (=> b!226034 m!263925))

(assert (=> b!226035 m!265479))

(assert (=> b!226035 m!265479))

(assert (=> b!226035 m!265481))

(assert (=> b!226039 m!263925))

(assert (=> b!226039 m!263925))

(declare-fun m!265817 () Bool)

(assert (=> b!226039 m!265817))

(assert (=> b!226039 m!265479))

(assert (=> b!226039 m!265817))

(assert (=> b!226039 m!265479))

(declare-fun m!265819 () Bool)

(assert (=> b!226039 m!265819))

(assert (=> b!226037 m!263925))

(declare-fun m!265821 () Bool)

(assert (=> b!226028 m!265821))

(assert (=> bm!11549 m!265483))

(assert (=> b!224942 d!62682))

(declare-fun d!62684 () Bool)

(assert (=> d!62684 (= (get!1066 lt!86483) (v!14278 lt!86483))))

(assert (=> b!224942 d!62684))

(declare-fun b!226041 () Bool)

(declare-fun e!139511 () Bool)

(declare-fun e!139506 () Bool)

(assert (=> b!226041 (= e!139511 e!139506)))

(declare-fun res!103883 () Bool)

(assert (=> b!226041 (=> (not res!103883) (not e!139506))))

(declare-fun lt!87074 () Bool)

(assert (=> b!226041 (= res!103883 (not lt!87074))))

(declare-fun b!226042 () Bool)

(declare-fun e!139510 () Bool)

(assert (=> b!226042 (= e!139510 (nullable!146 (regex!637 lt!86514)))))

(declare-fun b!226043 () Bool)

(declare-fun e!139512 () Bool)

(assert (=> b!226043 (= e!139512 (not lt!87074))))

(declare-fun b!226044 () Bool)

(declare-fun res!103887 () Bool)

(assert (=> b!226044 (=> res!103887 e!139511)))

(assert (=> b!226044 (= res!103887 (not ((_ is ElementMatch!861) (regex!637 lt!86514))))))

(assert (=> b!226044 (= e!139512 e!139511)))

(declare-fun b!226045 () Bool)

(declare-fun res!103886 () Bool)

(declare-fun e!139507 () Bool)

(assert (=> b!226045 (=> (not res!103886) (not e!139507))))

(declare-fun call!11555 () Bool)

(assert (=> b!226045 (= res!103886 (not call!11555))))

(declare-fun b!226046 () Bool)

(declare-fun res!103881 () Bool)

(assert (=> b!226046 (=> (not res!103881) (not e!139507))))

(assert (=> b!226046 (= res!103881 (isEmpty!1920 (tail!422 lt!86491)))))

(declare-fun bm!11550 () Bool)

(assert (=> bm!11550 (= call!11555 (isEmpty!1920 lt!86491))))

(declare-fun d!62686 () Bool)

(declare-fun e!139508 () Bool)

(assert (=> d!62686 e!139508))

(declare-fun c!43474 () Bool)

(assert (=> d!62686 (= c!43474 ((_ is EmptyExpr!861) (regex!637 lt!86514)))))

(assert (=> d!62686 (= lt!87074 e!139510)))

(declare-fun c!43473 () Bool)

(assert (=> d!62686 (= c!43473 (isEmpty!1920 lt!86491))))

(assert (=> d!62686 (validRegex!221 (regex!637 lt!86514))))

(assert (=> d!62686 (= (matchR!199 (regex!637 lt!86514) lt!86491) lt!87074)))

(declare-fun b!226047 () Bool)

(assert (=> b!226047 (= e!139508 (= lt!87074 call!11555))))

(declare-fun b!226048 () Bool)

(assert (=> b!226048 (= e!139507 (= (head!770 lt!86491) (c!43242 (regex!637 lt!86514))))))

(declare-fun b!226049 () Bool)

(declare-fun res!103885 () Bool)

(declare-fun e!139509 () Bool)

(assert (=> b!226049 (=> res!103885 e!139509)))

(assert (=> b!226049 (= res!103885 (not (isEmpty!1920 (tail!422 lt!86491))))))

(declare-fun b!226050 () Bool)

(assert (=> b!226050 (= e!139506 e!139509)))

(declare-fun res!103884 () Bool)

(assert (=> b!226050 (=> res!103884 e!139509)))

(assert (=> b!226050 (= res!103884 call!11555)))

(declare-fun b!226051 () Bool)

(assert (=> b!226051 (= e!139509 (not (= (head!770 lt!86491) (c!43242 (regex!637 lt!86514)))))))

(declare-fun b!226052 () Bool)

(assert (=> b!226052 (= e!139508 e!139512)))

(declare-fun c!43472 () Bool)

(assert (=> b!226052 (= c!43472 ((_ is EmptyLang!861) (regex!637 lt!86514)))))

(declare-fun b!226053 () Bool)

(assert (=> b!226053 (= e!139510 (matchR!199 (derivativeStep!112 (regex!637 lt!86514) (head!770 lt!86491)) (tail!422 lt!86491)))))

(declare-fun b!226054 () Bool)

(declare-fun res!103880 () Bool)

(assert (=> b!226054 (=> res!103880 e!139511)))

(assert (=> b!226054 (= res!103880 e!139507)))

(declare-fun res!103882 () Bool)

(assert (=> b!226054 (=> (not res!103882) (not e!139507))))

(assert (=> b!226054 (= res!103882 lt!87074)))

(assert (= (and d!62686 c!43473) b!226042))

(assert (= (and d!62686 (not c!43473)) b!226053))

(assert (= (and d!62686 c!43474) b!226047))

(assert (= (and d!62686 (not c!43474)) b!226052))

(assert (= (and b!226052 c!43472) b!226043))

(assert (= (and b!226052 (not c!43472)) b!226044))

(assert (= (and b!226044 (not res!103887)) b!226054))

(assert (= (and b!226054 res!103882) b!226045))

(assert (= (and b!226045 res!103886) b!226046))

(assert (= (and b!226046 res!103881) b!226048))

(assert (= (and b!226054 (not res!103880)) b!226041))

(assert (= (and b!226041 res!103883) b!226050))

(assert (= (and b!226050 (not res!103884)) b!226049))

(assert (= (and b!226049 (not res!103885)) b!226051))

(assert (= (or b!226047 b!226045 b!226050) bm!11550))

(declare-fun m!265823 () Bool)

(assert (=> b!226046 m!265823))

(assert (=> b!226046 m!265823))

(declare-fun m!265825 () Bool)

(assert (=> b!226046 m!265825))

(declare-fun m!265827 () Bool)

(assert (=> d!62686 m!265827))

(declare-fun m!265829 () Bool)

(assert (=> d!62686 m!265829))

(declare-fun m!265831 () Bool)

(assert (=> b!226048 m!265831))

(assert (=> b!226049 m!265823))

(assert (=> b!226049 m!265823))

(assert (=> b!226049 m!265825))

(assert (=> b!226053 m!265831))

(assert (=> b!226053 m!265831))

(declare-fun m!265833 () Bool)

(assert (=> b!226053 m!265833))

(assert (=> b!226053 m!265823))

(assert (=> b!226053 m!265833))

(assert (=> b!226053 m!265823))

(declare-fun m!265835 () Bool)

(assert (=> b!226053 m!265835))

(assert (=> b!226051 m!265831))

(declare-fun m!265837 () Bool)

(assert (=> b!226042 m!265837))

(assert (=> bm!11550 m!265827))

(assert (=> b!224921 d!62686))

(declare-fun d!62688 () Bool)

(assert (=> d!62688 (= (get!1066 lt!86520) (v!14278 lt!86520))))

(assert (=> b!224921 d!62688))

(declare-fun d!62690 () Bool)

(declare-fun lt!87076 () Bool)

(declare-fun e!139513 () Bool)

(assert (=> d!62690 (= lt!87076 e!139513)))

(declare-fun res!103889 () Bool)

(assert (=> d!62690 (=> (not res!103889) (not e!139513))))

(assert (=> d!62690 (= res!103889 (= (list!1305 (_1!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 separatorToken!170))))) (list!1305 (singletonSeq!189 separatorToken!170))))))

(declare-fun e!139514 () Bool)

(assert (=> d!62690 (= lt!87076 e!139514)))

(declare-fun res!103890 () Bool)

(assert (=> d!62690 (=> (not res!103890) (not e!139514))))

(declare-fun lt!87075 () tuple2!3652)

(assert (=> d!62690 (= res!103890 (= (size!2735 (_1!2042 lt!87075)) 1))))

(assert (=> d!62690 (= lt!87075 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 separatorToken!170))))))

(assert (=> d!62690 (not (isEmpty!1922 rules!1920))))

(assert (=> d!62690 (= (rulesProduceIndividualToken!272 thiss!17480 rules!1920 separatorToken!170) lt!87076)))

(declare-fun b!226055 () Bool)

(declare-fun res!103888 () Bool)

(assert (=> b!226055 (=> (not res!103888) (not e!139514))))

(assert (=> b!226055 (= res!103888 (= (apply!602 (_1!2042 lt!87075) 0) separatorToken!170))))

(declare-fun b!226056 () Bool)

(assert (=> b!226056 (= e!139514 (isEmpty!1918 (_2!2042 lt!87075)))))

(declare-fun b!226057 () Bool)

(assert (=> b!226057 (= e!139513 (isEmpty!1918 (_2!2042 (lex!323 thiss!17480 rules!1920 (print!254 thiss!17480 (singletonSeq!189 separatorToken!170))))))))

(assert (= (and d!62690 res!103890) b!226055))

(assert (= (and b!226055 res!103888) b!226056))

(assert (= (and d!62690 res!103889) b!226057))

(assert (=> d!62690 m!263903))

(declare-fun m!265839 () Bool)

(assert (=> d!62690 m!265839))

(assert (=> d!62690 m!263903))

(assert (=> d!62690 m!263903))

(declare-fun m!265841 () Bool)

(assert (=> d!62690 m!265841))

(assert (=> d!62690 m!263763))

(declare-fun m!265843 () Bool)

(assert (=> d!62690 m!265843))

(assert (=> d!62690 m!265841))

(declare-fun m!265845 () Bool)

(assert (=> d!62690 m!265845))

(declare-fun m!265847 () Bool)

(assert (=> d!62690 m!265847))

(declare-fun m!265849 () Bool)

(assert (=> b!226055 m!265849))

(declare-fun m!265851 () Bool)

(assert (=> b!226056 m!265851))

(assert (=> b!226057 m!263903))

(assert (=> b!226057 m!263903))

(assert (=> b!226057 m!265841))

(assert (=> b!226057 m!265841))

(assert (=> b!226057 m!265845))

(declare-fun m!265853 () Bool)

(assert (=> b!226057 m!265853))

(assert (=> b!224922 d!62690))

(declare-fun d!62692 () Bool)

(declare-fun isEmpty!1932 (Option!605) Bool)

(assert (=> d!62692 (= (isDefined!456 (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465))))) (not (isEmpty!1932 (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))

(declare-fun bs!24130 () Bool)

(assert (= bs!24130 d!62692))

(assert (=> bs!24130 m!263981))

(declare-fun m!265855 () Bool)

(assert (=> bs!24130 m!265855))

(assert (=> b!224965 d!62692))

(declare-fun b!226074 () Bool)

(declare-fun res!103903 () Bool)

(declare-fun e!139529 () Bool)

(assert (=> b!226074 (=> (not res!103903) (not e!139529))))

(declare-fun e!139527 () Bool)

(assert (=> b!226074 (= res!103903 e!139527)))

(declare-fun res!103904 () Bool)

(assert (=> b!226074 (=> res!103904 e!139527)))

(declare-fun lt!87092 () Option!605)

(assert (=> b!226074 (= res!103904 (not (isDefined!456 lt!87092)))))

(declare-fun b!226075 () Bool)

(declare-fun e!139532 () Option!605)

(declare-fun call!11558 () Option!605)

(assert (=> b!226075 (= e!139532 call!11558)))

(declare-fun b!226076 () Bool)

(declare-fun lt!87093 () Option!605)

(declare-fun lt!87096 () Option!605)

(assert (=> b!226076 (= e!139532 (ite (and ((_ is None!604) lt!87093) ((_ is None!604) lt!87096)) None!604 (ite ((_ is None!604) lt!87096) lt!87093 (ite ((_ is None!604) lt!87093) lt!87096 (ite (>= (size!2734 (_1!2043 (v!14279 lt!87093))) (size!2734 (_1!2043 (v!14279 lt!87096)))) lt!87093 lt!87096)))))))

(assert (=> b!226076 (= lt!87093 call!11558)))

(assert (=> b!226076 (= lt!87096 (maxPrefixZipperSequence!216 thiss!17480 (t!33175 rules!1920) (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))

(declare-fun b!226077 () Bool)

(declare-fun e!139531 () Bool)

(assert (=> b!226077 (= e!139527 e!139531)))

(declare-fun res!103905 () Bool)

(assert (=> b!226077 (=> (not res!103905) (not e!139531))))

(declare-fun get!1068 (Option!605) tuple2!3654)

(declare-fun maxPrefixZipper!81 (LexerInterface!523 List!3423 List!3422) Option!603)

(assert (=> b!226077 (= res!103905 (= (_1!2043 (get!1068 lt!87092)) (_1!2041 (get!1065 (maxPrefixZipper!81 thiss!17480 rules!1920 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))))

(declare-fun b!226078 () Bool)

(declare-fun e!139530 () Bool)

(declare-fun e!139528 () Bool)

(assert (=> b!226078 (= e!139530 e!139528)))

(declare-fun res!103908 () Bool)

(assert (=> b!226078 (=> (not res!103908) (not e!139528))))

(assert (=> b!226078 (= res!103908 (= (_1!2043 (get!1068 lt!87092)) (_1!2041 (get!1065 (maxPrefix!253 thiss!17480 rules!1920 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))))

(declare-fun b!226079 () Bool)

(assert (=> b!226079 (= e!139528 (= (list!1304 (_2!2043 (get!1068 lt!87092))) (_2!2041 (get!1065 (maxPrefix!253 thiss!17480 rules!1920 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))))

(declare-fun bm!11553 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!82 (LexerInterface!523 Rule!1074 BalanceConc!2200) Option!605)

(assert (=> bm!11553 (= call!11558 (maxPrefixOneRuleZipperSequence!82 thiss!17480 (h!8810 rules!1920) (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))

(declare-fun b!226081 () Bool)

(assert (=> b!226081 (= e!139529 e!139530)))

(declare-fun res!103907 () Bool)

(assert (=> b!226081 (=> res!103907 e!139530)))

(assert (=> b!226081 (= res!103907 (not (isDefined!456 lt!87092)))))

(declare-fun b!226080 () Bool)

(assert (=> b!226080 (= e!139531 (= (list!1304 (_2!2043 (get!1068 lt!87092))) (_2!2041 (get!1065 (maxPrefixZipper!81 thiss!17480 rules!1920 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))))))

(declare-fun d!62694 () Bool)

(assert (=> d!62694 e!139529))

(declare-fun res!103906 () Bool)

(assert (=> d!62694 (=> (not res!103906) (not e!139529))))

(assert (=> d!62694 (= res!103906 (= (isDefined!456 lt!87092) (isDefined!454 (maxPrefixZipper!81 thiss!17480 rules!1920 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465))))))))))

(assert (=> d!62694 (= lt!87092 e!139532)))

(declare-fun c!43477 () Bool)

(assert (=> d!62694 (= c!43477 (and ((_ is Cons!3413) rules!1920) ((_ is Nil!3413) (t!33175 rules!1920))))))

(declare-fun lt!87094 () Unit!3836)

(declare-fun lt!87095 () Unit!3836)

(assert (=> d!62694 (= lt!87094 lt!87095)))

(declare-fun lt!87097 () List!3422)

(declare-fun lt!87091 () List!3422)

(assert (=> d!62694 (isPrefix!333 lt!87097 lt!87091)))

(assert (=> d!62694 (= lt!87095 (lemmaIsPrefixRefl!176 lt!87097 lt!87091))))

(assert (=> d!62694 (= lt!87091 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))

(assert (=> d!62694 (= lt!87097 (list!1304 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))))))

(assert (=> d!62694 (rulesValidInductive!165 thiss!17480 rules!1920)))

(assert (=> d!62694 (= (maxPrefixZipperSequence!216 thiss!17480 rules!1920 (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465)))) lt!87092)))

(assert (= (and d!62694 c!43477) b!226075))

(assert (= (and d!62694 (not c!43477)) b!226076))

(assert (= (or b!226075 b!226076) bm!11553))

(assert (= (and d!62694 res!103906) b!226074))

(assert (= (and b!226074 (not res!103904)) b!226077))

(assert (= (and b!226077 res!103905) b!226080))

(assert (= (and b!226074 res!103903) b!226081))

(assert (= (and b!226081 (not res!103907)) b!226078))

(assert (= (and b!226078 res!103908) b!226079))

(declare-fun m!265857 () Bool)

(assert (=> d!62694 m!265857))

(declare-fun m!265859 () Bool)

(assert (=> d!62694 m!265859))

(assert (=> d!62694 m!264717))

(declare-fun m!265861 () Bool)

(assert (=> d!62694 m!265861))

(declare-fun m!265863 () Bool)

(assert (=> d!62694 m!265863))

(declare-fun m!265865 () Bool)

(assert (=> d!62694 m!265865))

(assert (=> d!62694 m!265865))

(declare-fun m!265867 () Bool)

(assert (=> d!62694 m!265867))

(assert (=> d!62694 m!263979))

(assert (=> d!62694 m!265863))

(assert (=> b!226076 m!263979))

(declare-fun m!265869 () Bool)

(assert (=> b!226076 m!265869))

(assert (=> b!226080 m!265865))

(declare-fun m!265871 () Bool)

(assert (=> b!226080 m!265871))

(declare-fun m!265873 () Bool)

(assert (=> b!226080 m!265873))

(assert (=> b!226080 m!263979))

(assert (=> b!226080 m!265863))

(declare-fun m!265875 () Bool)

(assert (=> b!226080 m!265875))

(assert (=> b!226080 m!265863))

(assert (=> b!226080 m!265865))

(declare-fun m!265877 () Bool)

(assert (=> b!226079 m!265877))

(declare-fun m!265879 () Bool)

(assert (=> b!226079 m!265879))

(assert (=> b!226079 m!265873))

(assert (=> b!226079 m!265875))

(assert (=> b!226079 m!263979))

(assert (=> b!226079 m!265863))

(assert (=> b!226079 m!265863))

(assert (=> b!226079 m!265877))

(assert (=> bm!11553 m!263979))

(declare-fun m!265881 () Bool)

(assert (=> bm!11553 m!265881))

(assert (=> b!226081 m!265859))

(assert (=> b!226077 m!265875))

(assert (=> b!226077 m!263979))

(assert (=> b!226077 m!265863))

(assert (=> b!226077 m!265863))

(assert (=> b!226077 m!265865))

(assert (=> b!226077 m!265865))

(assert (=> b!226077 m!265871))

(assert (=> b!226074 m!265859))

(assert (=> b!226078 m!265875))

(assert (=> b!226078 m!263979))

(assert (=> b!226078 m!265863))

(assert (=> b!226078 m!265863))

(assert (=> b!226078 m!265877))

(assert (=> b!226078 m!265877))

(assert (=> b!226078 m!265879))

(assert (=> b!224965 d!62694))

(declare-fun d!62696 () Bool)

(assert (=> d!62696 (= (seqFromList!651 (originalCharacters!680 (h!8811 tokens!465))) (fromListB!245 (originalCharacters!680 (h!8811 tokens!465))))))

(declare-fun bs!24131 () Bool)

(assert (= bs!24131 d!62696))

(declare-fun m!265883 () Bool)

(assert (=> bs!24131 m!265883))

(assert (=> b!224965 d!62696))

(declare-fun d!62698 () Bool)

(assert (=> d!62698 (dynLambda!1579 lambda!7012 (h!8811 tokens!465))))

(declare-fun lt!87098 () Unit!3836)

(assert (=> d!62698 (= lt!87098 (choose!2176 tokens!465 lambda!7012 (h!8811 tokens!465)))))

(declare-fun e!139533 () Bool)

(assert (=> d!62698 e!139533))

(declare-fun res!103909 () Bool)

(assert (=> d!62698 (=> (not res!103909) (not e!139533))))

(assert (=> d!62698 (= res!103909 (forall!765 tokens!465 lambda!7012))))

(assert (=> d!62698 (= (forallContained!204 tokens!465 lambda!7012 (h!8811 tokens!465)) lt!87098)))

(declare-fun b!226082 () Bool)

(assert (=> b!226082 (= e!139533 (contains!608 tokens!465 (h!8811 tokens!465)))))

(assert (= (and d!62698 res!103909) b!226082))

(declare-fun b_lambda!6259 () Bool)

(assert (=> (not b_lambda!6259) (not d!62698)))

(declare-fun m!265885 () Bool)

(assert (=> d!62698 m!265885))

(declare-fun m!265887 () Bool)

(assert (=> d!62698 m!265887))

(assert (=> d!62698 m!265443))

(declare-fun m!265889 () Bool)

(assert (=> b!226082 m!265889))

(assert (=> b!224965 d!62698))

(declare-fun b!226093 () Bool)

(declare-fun e!139536 () Bool)

(declare-fun tp_is_empty!1735 () Bool)

(assert (=> b!226093 (= e!139536 tp_is_empty!1735)))

(declare-fun b!226094 () Bool)

(declare-fun tp!93176 () Bool)

(declare-fun tp!93179 () Bool)

(assert (=> b!226094 (= e!139536 (and tp!93176 tp!93179))))

(declare-fun b!226096 () Bool)

(declare-fun tp!93178 () Bool)

(declare-fun tp!93180 () Bool)

(assert (=> b!226096 (= e!139536 (and tp!93178 tp!93180))))

(declare-fun b!226095 () Bool)

(declare-fun tp!93177 () Bool)

(assert (=> b!226095 (= e!139536 tp!93177)))

(assert (=> b!224937 (= tp!93098 e!139536)))

(assert (= (and b!224937 ((_ is ElementMatch!861) (regex!637 (rule!1190 separatorToken!170)))) b!226093))

(assert (= (and b!224937 ((_ is Concat!1521) (regex!637 (rule!1190 separatorToken!170)))) b!226094))

(assert (= (and b!224937 ((_ is Star!861) (regex!637 (rule!1190 separatorToken!170)))) b!226095))

(assert (= (and b!224937 ((_ is Union!861) (regex!637 (rule!1190 separatorToken!170)))) b!226096))

(declare-fun b!226101 () Bool)

(declare-fun e!139539 () Bool)

(declare-fun tp!93183 () Bool)

(assert (=> b!226101 (= e!139539 (and tp_is_empty!1735 tp!93183))))

(assert (=> b!224959 (= tp!93093 e!139539)))

(assert (= (and b!224959 ((_ is Cons!3412) (originalCharacters!680 separatorToken!170))) b!226101))

(declare-fun b!226102 () Bool)

(declare-fun e!139540 () Bool)

(assert (=> b!226102 (= e!139540 tp_is_empty!1735)))

(declare-fun b!226103 () Bool)

(declare-fun tp!93184 () Bool)

(declare-fun tp!93187 () Bool)

(assert (=> b!226103 (= e!139540 (and tp!93184 tp!93187))))

(declare-fun b!226105 () Bool)

(declare-fun tp!93186 () Bool)

(declare-fun tp!93188 () Bool)

(assert (=> b!226105 (= e!139540 (and tp!93186 tp!93188))))

(declare-fun b!226104 () Bool)

(declare-fun tp!93185 () Bool)

(assert (=> b!226104 (= e!139540 tp!93185)))

(assert (=> b!224940 (= tp!93099 e!139540)))

(assert (= (and b!224940 ((_ is ElementMatch!861) (regex!637 (rule!1190 (h!8811 tokens!465))))) b!226102))

(assert (= (and b!224940 ((_ is Concat!1521) (regex!637 (rule!1190 (h!8811 tokens!465))))) b!226103))

(assert (= (and b!224940 ((_ is Star!861) (regex!637 (rule!1190 (h!8811 tokens!465))))) b!226104))

(assert (= (and b!224940 ((_ is Union!861) (regex!637 (rule!1190 (h!8811 tokens!465))))) b!226105))

(declare-fun b!226106 () Bool)

(declare-fun e!139541 () Bool)

(assert (=> b!226106 (= e!139541 tp_is_empty!1735)))

(declare-fun b!226107 () Bool)

(declare-fun tp!93189 () Bool)

(declare-fun tp!93192 () Bool)

(assert (=> b!226107 (= e!139541 (and tp!93189 tp!93192))))

(declare-fun b!226109 () Bool)

(declare-fun tp!93191 () Bool)

(declare-fun tp!93193 () Bool)

(assert (=> b!226109 (= e!139541 (and tp!93191 tp!93193))))

(declare-fun b!226108 () Bool)

(declare-fun tp!93190 () Bool)

(assert (=> b!226108 (= e!139541 tp!93190)))

(assert (=> b!224951 (= tp!93096 e!139541)))

(assert (= (and b!224951 ((_ is ElementMatch!861) (regex!637 (h!8810 rules!1920)))) b!226106))

(assert (= (and b!224951 ((_ is Concat!1521) (regex!637 (h!8810 rules!1920)))) b!226107))

(assert (= (and b!224951 ((_ is Star!861) (regex!637 (h!8810 rules!1920)))) b!226108))

(assert (= (and b!224951 ((_ is Union!861) (regex!637 (h!8810 rules!1920)))) b!226109))

(declare-fun b!226110 () Bool)

(declare-fun e!139542 () Bool)

(declare-fun tp!93194 () Bool)

(assert (=> b!226110 (= e!139542 (and tp_is_empty!1735 tp!93194))))

(assert (=> b!224930 (= tp!93089 e!139542)))

(assert (= (and b!224930 ((_ is Cons!3412) (originalCharacters!680 (h!8811 tokens!465)))) b!226110))

(declare-fun b!226124 () Bool)

(declare-fun b_free!8429 () Bool)

(declare-fun b_next!8429 () Bool)

(assert (=> b!226124 (= b_free!8429 (not b_next!8429))))

(declare-fun tp!93207 () Bool)

(declare-fun b_and!16781 () Bool)

(assert (=> b!226124 (= tp!93207 b_and!16781)))

(declare-fun b_free!8431 () Bool)

(declare-fun b_next!8431 () Bool)

(assert (=> b!226124 (= b_free!8431 (not b_next!8431))))

(declare-fun t!33256 () Bool)

(declare-fun tb!11337 () Bool)

(assert (=> (and b!226124 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170)))) t!33256) tb!11337))

(declare-fun result!14502 () Bool)

(assert (= result!14502 result!14436))

(assert (=> d!62326 t!33256))

(declare-fun t!33258 () Bool)

(declare-fun tb!11339 () Bool)

(assert (=> (and b!226124 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 lt!86532)))) t!33258) tb!11339))

(declare-fun result!14504 () Bool)

(assert (= result!14504 result!14464))

(assert (=> d!62364 t!33258))

(declare-fun t!33260 () Bool)

(declare-fun tb!11341 () Bool)

(assert (=> (and b!226124 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465))))) t!33260) tb!11341))

(declare-fun result!14506 () Bool)

(assert (= result!14506 result!14458))

(assert (=> d!62330 t!33260))

(assert (=> b!225787 t!33260))

(assert (=> b!225039 t!33256))

(declare-fun b_and!16783 () Bool)

(declare-fun tp!93209 () Bool)

(assert (=> b!226124 (= tp!93209 (and (=> t!33258 result!14504) (=> t!33256 result!14502) (=> t!33260 result!14506) b_and!16783))))

(declare-fun e!139557 () Bool)

(assert (=> b!224956 (= tp!93092 e!139557)))

(declare-fun e!139555 () Bool)

(assert (=> b!226124 (= e!139555 (and tp!93207 tp!93209))))

(declare-fun e!139560 () Bool)

(declare-fun b!226121 () Bool)

(declare-fun tp!93208 () Bool)

(assert (=> b!226121 (= e!139557 (and (inv!4267 (h!8811 (t!33176 tokens!465))) e!139560 tp!93208))))

(declare-fun tp!93206 () Bool)

(declare-fun e!139559 () Bool)

(declare-fun b!226123 () Bool)

(assert (=> b!226123 (= e!139559 (and tp!93206 (inv!4263 (tag!833 (rule!1190 (h!8811 (t!33176 tokens!465))))) (inv!4266 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) e!139555))))

(declare-fun b!226122 () Bool)

(declare-fun tp!93205 () Bool)

(assert (=> b!226122 (= e!139560 (and (inv!21 (value!22470 (h!8811 (t!33176 tokens!465)))) e!139559 tp!93205))))

(assert (= b!226123 b!226124))

(assert (= b!226122 b!226123))

(assert (= b!226121 b!226122))

(assert (= (and b!224956 ((_ is Cons!3414) (t!33176 tokens!465))) b!226121))

(declare-fun m!265891 () Bool)

(assert (=> b!226121 m!265891))

(declare-fun m!265893 () Bool)

(assert (=> b!226123 m!265893))

(declare-fun m!265895 () Bool)

(assert (=> b!226123 m!265895))

(declare-fun m!265897 () Bool)

(assert (=> b!226122 m!265897))

(declare-fun b!226127 () Bool)

(declare-fun e!139563 () Bool)

(assert (=> b!226127 (= e!139563 true)))

(declare-fun b!226126 () Bool)

(declare-fun e!139562 () Bool)

(assert (=> b!226126 (= e!139562 e!139563)))

(declare-fun b!226125 () Bool)

(declare-fun e!139561 () Bool)

(assert (=> b!226125 (= e!139561 e!139562)))

(assert (=> b!224974 e!139561))

(assert (= b!226126 b!226127))

(assert (= b!226125 b!226126))

(assert (= (and b!224974 ((_ is Cons!3413) (t!33175 rules!1920))) b!226125))

(assert (=> b!226127 (< (dynLambda!1573 order!2345 (toValue!1332 (transformation!637 (h!8810 (t!33175 rules!1920))))) (dynLambda!1574 order!2347 lambda!7012))))

(assert (=> b!226127 (< (dynLambda!1575 order!2349 (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920))))) (dynLambda!1574 order!2347 lambda!7012))))

(declare-fun b!226138 () Bool)

(declare-fun b_free!8433 () Bool)

(declare-fun b_next!8433 () Bool)

(assert (=> b!226138 (= b_free!8433 (not b_next!8433))))

(declare-fun tp!93220 () Bool)

(declare-fun b_and!16785 () Bool)

(assert (=> b!226138 (= tp!93220 b_and!16785)))

(declare-fun b_free!8435 () Bool)

(declare-fun b_next!8435 () Bool)

(assert (=> b!226138 (= b_free!8435 (not b_next!8435))))

(declare-fun t!33262 () Bool)

(declare-fun tb!11343 () Bool)

(assert (=> (and b!226138 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170)))) t!33262) tb!11343))

(declare-fun result!14510 () Bool)

(assert (= result!14510 result!14436))

(assert (=> d!62326 t!33262))

(declare-fun tb!11345 () Bool)

(declare-fun t!33264 () Bool)

(assert (=> (and b!226138 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 lt!86532)))) t!33264) tb!11345))

(declare-fun result!14512 () Bool)

(assert (= result!14512 result!14464))

(assert (=> d!62364 t!33264))

(declare-fun t!33266 () Bool)

(declare-fun tb!11347 () Bool)

(assert (=> (and b!226138 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465))))) t!33266) tb!11347))

(declare-fun result!14514 () Bool)

(assert (= result!14514 result!14458))

(assert (=> d!62330 t!33266))

(assert (=> b!225787 t!33266))

(assert (=> b!225039 t!33262))

(declare-fun tp!93221 () Bool)

(declare-fun b_and!16787 () Bool)

(assert (=> b!226138 (= tp!93221 (and (=> t!33264 result!14512) (=> t!33262 result!14510) (=> t!33266 result!14514) b_and!16787))))

(declare-fun e!139574 () Bool)

(assert (=> b!226138 (= e!139574 (and tp!93220 tp!93221))))

(declare-fun tp!93219 () Bool)

(declare-fun b!226137 () Bool)

(declare-fun e!139572 () Bool)

(assert (=> b!226137 (= e!139572 (and tp!93219 (inv!4263 (tag!833 (h!8810 (t!33175 rules!1920)))) (inv!4266 (transformation!637 (h!8810 (t!33175 rules!1920)))) e!139574))))

(declare-fun b!226136 () Bool)

(declare-fun e!139573 () Bool)

(declare-fun tp!93218 () Bool)

(assert (=> b!226136 (= e!139573 (and e!139572 tp!93218))))

(assert (=> b!224954 (= tp!93097 e!139573)))

(assert (= b!226137 b!226138))

(assert (= b!226136 b!226137))

(assert (= (and b!224954 ((_ is Cons!3413) (t!33175 rules!1920))) b!226136))

(declare-fun m!265899 () Bool)

(assert (=> b!226137 m!265899))

(declare-fun m!265901 () Bool)

(assert (=> b!226137 m!265901))

(declare-fun b_lambda!6261 () Bool)

(assert (= b_lambda!6235 (or b!224924 b_lambda!6261)))

(declare-fun bs!24132 () Bool)

(declare-fun d!62700 () Bool)

(assert (= bs!24132 (and d!62700 b!224924)))

(assert (=> bs!24132 (= (dynLambda!1579 lambda!7011 (h!8811 tokens!465)) (not (isSeparator!637 (rule!1190 (h!8811 tokens!465)))))))

(assert (=> b!225840 d!62700))

(declare-fun b_lambda!6263 () Bool)

(assert (= b_lambda!6213 (or (and b!224958 b_free!8411) (and b!226138 b_free!8435 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!226124 b_free!8431 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!224925 b_free!8415 (= (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!224932 b_free!8419 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) b_lambda!6263)))

(declare-fun b_lambda!6265 () Bool)

(assert (= b_lambda!6203 (or (and b!224932 b_free!8419 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!226124 b_free!8431 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!226138 b_free!8435 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!224958 b_free!8411 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!224925 b_free!8415) b_lambda!6265)))

(declare-fun b_lambda!6267 () Bool)

(assert (= b_lambda!6233 (or b!224924 b_lambda!6267)))

(declare-fun bs!24133 () Bool)

(declare-fun d!62702 () Bool)

(assert (= bs!24133 (and d!62702 b!224924)))

(assert (=> bs!24133 (= (dynLambda!1579 lambda!7011 (h!8811 (t!33176 tokens!465))) (not (isSeparator!637 (rule!1190 (h!8811 (t!33176 tokens!465))))))))

(assert (=> b!225838 d!62702))

(declare-fun b_lambda!6269 () Bool)

(assert (= b_lambda!6259 (or b!224965 b_lambda!6269)))

(declare-fun bs!24134 () Bool)

(declare-fun d!62704 () Bool)

(assert (= bs!24134 (and d!62704 b!224965)))

(assert (=> bs!24134 (= (dynLambda!1579 lambda!7012 (h!8811 tokens!465)) (rulesProduceIndividualToken!272 thiss!17480 rules!1920 (h!8811 tokens!465)))))

(assert (=> bs!24134 m!263943))

(assert (=> d!62698 d!62704))

(declare-fun b_lambda!6271 () Bool)

(assert (= b_lambda!6219 (or b!224924 b_lambda!6271)))

(declare-fun bs!24135 () Bool)

(declare-fun d!62706 () Bool)

(assert (= bs!24135 (and d!62706 b!224924)))

(assert (=> bs!24135 (= (dynLambda!1579 lambda!7011 (h!8811 lt!86510)) (not (isSeparator!637 (rule!1190 (h!8811 lt!86510)))))))

(assert (=> b!225519 d!62706))

(declare-fun b_lambda!6273 () Bool)

(assert (= b_lambda!6211 (or (and b!224932 b_free!8419 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!226124 b_free!8431 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!226138 b_free!8435 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!224958 b_free!8411 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))) (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))))) (and b!224925 b_free!8415) b_lambda!6273)))

(declare-fun b_lambda!6275 () Bool)

(assert (= b_lambda!6229 (or b!224965 b_lambda!6275)))

(declare-fun bs!24136 () Bool)

(declare-fun d!62708 () Bool)

(assert (= bs!24136 (and d!62708 b!224965)))

(assert (=> bs!24136 (= (dynLambda!1579 lambda!7012 lt!86532) (rulesProduceIndividualToken!272 thiss!17480 rules!1920 lt!86532))))

(assert (=> bs!24136 m!263893))

(assert (=> d!62574 d!62708))

(declare-fun b_lambda!6277 () Bool)

(assert (= b_lambda!6231 (or (and b!224958 b_free!8411) (and b!226138 b_free!8435 (= (toChars!1191 (transformation!637 (h!8810 (t!33175 rules!1920)))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!226124 b_free!8431 (= (toChars!1191 (transformation!637 (rule!1190 (h!8811 (t!33176 tokens!465))))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!224925 b_free!8415 (= (toChars!1191 (transformation!637 (rule!1190 separatorToken!170))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) (and b!224932 b_free!8419 (= (toChars!1191 (transformation!637 (h!8810 rules!1920))) (toChars!1191 (transformation!637 (rule!1190 (h!8811 tokens!465)))))) b_lambda!6277)))

(check-sat (not bm!11549) (not b!225520) (not bm!11524) (not b_lambda!6215) (not d!62502) (not b!225299) (not d!62644) (not tb!11307) (not b!225396) (not b!225747) (not b!225099) (not d!62380) (not b!225687) (not d!62686) (not d!62348) (not d!62330) (not b!225263) (not b!226012) (not bm!11547) (not b!225955) (not bm!11521) (not d!62570) b_and!16781 (not b!226051) (not bm!11528) (not bm!11546) (not b!226095) (not b!225272) (not b!225695) (not b!225652) (not d!62430) (not d!62584) (not d!62558) (not d!62566) (not bm!11502) (not b!225500) (not bm!11489) (not d!62586) (not b!225309) (not b!225986) (not b!225304) (not b!226046) (not b!225277) (not d!62264) (not b!225690) (not b!225726) (not b!226005) (not d!62260) (not bm!11537) (not bm!11480) (not b!225844) (not d!62678) (not b!226079) (not d!62692) (not b!225764) (not b!225303) (not b!226039) (not d!62270) (not bs!24134) (not b!225692) (not bm!11434) (not bs!24136) (not b!226000) (not b!226109) (not d!62382) (not b!226021) (not b!225998) (not b_next!8411) (not b!225049) (not d!62344) (not b!225749) (not b!225787) (not b!225963) (not b!225415) (not b!225267) (not b!225829) (not d!62336) (not b!225995) (not b_next!8417) (not b!225676) (not d!62690) (not b!225771) (not bm!11523) (not d!62698) (not bm!11435) (not b!225956) (not b!226125) (not b!225040) (not b!226101) b_and!16761 (not b!226008) (not bm!11548) (not b!225332) (not b_lambda!6269) (not d!62696) (not b_lambda!6271) (not b!225841) b_and!16785 (not b!225842) (not d!62434) (not b!226081) (not d!62350) (not d!62606) (not b!225678) (not b!226048) (not b!226020) (not bm!11540) (not d!62666) (not b!225101) (not d!62436) (not bm!11479) (not b!225852) (not bm!11544) (not b!225824) (not b!226025) tp_is_empty!1735 (not b!225778) (not b!225392) (not d!62508) (not b!225822) (not b!225689) (not b!226110) (not d!62648) (not b!225261) (not b!226023) (not b!225334) (not b!226010) (not b!225773) (not b!225025) (not d!62672) (not b!225337) (not b!225307) (not b!225990) (not d!62346) (not d!62366) (not d!62414) (not b!226123) b_and!16783 (not b!225967) (not d!62578) (not b_lambda!6275) b_and!16701 (not b_next!8433) (not bm!11437) (not b!226014) b_and!16763 (not bm!11539) (not b!225420) (not b_lambda!6277) (not b_next!8431) (not d!62610) (not b!225774) (not b!225418) (not b!225954) (not b!226080) (not b!225271) (not b!225776) (not d!62514) (not b!226121) (not b!225310) (not bm!11476) (not d!62646) (not bm!11478) (not b!226034) (not b!225532) (not b!226122) b_and!16709 (not b!226011) (not b!225839) (not b!225098) (not b!225102) (not b!226107) (not b!225782) (not b!225827) (not b!225996) (not b!225305) (not b_next!8413) (not d!62496) (not b!225987) (not b!225423) (not b!226082) (not b!225039) (not b!225281) (not b!226053) (not d!62596) (not bm!11491) (not d!62428) (not b_next!8429) (not b!226096) (not d!62332) (not b!226032) (not b!226057) (not b!226042) (not bm!11550) (not b!225725) (not tb!11313) (not b!225818) (not b_lambda!6267) (not bm!11541) (not b!225417) (not d!62572) (not bm!11522) (not b!226136) (not b!226074) (not d!62616) (not b!225845) (not b!225258) (not b!225999) (not b!225395) b_and!16765 (not d!62376) (not b!226137) (not tb!11289) (not d!62396) (not d!62604) (not b!226007) (not b_next!8419) (not b!226077) (not d!62438) (not b!225419) (not d!62244) (not b!226076) (not b!225301) (not d!62364) (not b_next!8415) (not b!225274) (not b!226018) (not b!225781) (not b!226037) (not b_lambda!6263) (not d!62416) (not d!62334) (not b!225966) (not b!225262) (not b!226035) (not b!225970) (not b!226078) (not b!225070) (not b!226108) (not b!226094) (not b!225105) (not b_next!8435) (not b!225765) (not d!62440) (not b!225825) (not d!62694) (not b!226004) (not b!225394) (not d!62510) (not d!62680) (not d!62512) (not d!62582) (not b!225777) (not d!62674) (not b!225941) (not b!225013) (not b!225026) (not d!62518) (not b!225265) (not b!225288) (not d!62326) (not bm!11545) (not d!62608) (not b!225946) (not b!225786) (not b_lambda!6273) (not b_next!8409) (not d!62426) (not b!226103) (not b!225833) (not b!226056) (not b!226104) (not b!225968) (not b_lambda!6261) (not d!62574) b_and!16705 (not d!62338) (not bm!11496) (not b!225276) (not b!225421) (not b!225416) (not d!62418) (not d!62394) (not b!225014) (not b!226049) (not d!62576) (not d!62614) (not b!225518) (not d!62268) (not d!62642) (not d!62588) (not d!62562) (not b!226001) (not b!225788) (not b!225651) (not b!225280) (not b!225501) (not d!62266) b_and!16787 (not d!62328) (not d!62670) (not d!62662) (not b_lambda!6265) (not b!225942) (not d!62340) (not b!225504) (not b!225534) (not b!225748) (not b!225477) (not b!225697) (not b!226055) (not bm!11553) (not d!62676) (not b!225989) (not b!225991) (not b!225784) (not b!225285) (not b!225691) (not d!62580) (not b!225698) (not b!226105) (not b!225850) (not bm!11436) (not b!226028) (not b!225688) (not b!225677) (not b!226003) (not b!225785) (not d!62358) (not bm!11543) (not bm!11490) (not d!62682) (not d!62492) (not b!225701) (not d!62276) (not d!62590) (not b!225071) (not b!226002) (not b!225693) (not b!225976))
(check-sat b_and!16781 (not b_next!8411) (not b_next!8417) (not b_next!8431) b_and!16709 (not b_next!8413) (not b_next!8429) (not b_next!8415) (not b_next!8435) (not b_next!8409) b_and!16705 b_and!16787 b_and!16785 b_and!16761 b_and!16701 (not b_next!8433) b_and!16763 b_and!16783 (not b_next!8419) b_and!16765)
