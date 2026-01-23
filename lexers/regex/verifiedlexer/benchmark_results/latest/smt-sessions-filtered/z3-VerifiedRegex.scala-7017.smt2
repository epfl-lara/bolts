; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372600 () Bool)

(assert start!372600)

(declare-fun b!3961517 () Bool)

(declare-fun b_free!109389 () Bool)

(declare-fun b_next!110093 () Bool)

(assert (=> b!3961517 (= b_free!109389 (not b_next!110093))))

(declare-fun tp!1207507 () Bool)

(declare-fun b_and!304171 () Bool)

(assert (=> b!3961517 (= tp!1207507 b_and!304171)))

(declare-fun b_free!109391 () Bool)

(declare-fun b_next!110095 () Bool)

(assert (=> b!3961517 (= b_free!109391 (not b_next!110095))))

(declare-fun tp!1207502 () Bool)

(declare-fun b_and!304173 () Bool)

(assert (=> b!3961517 (= tp!1207502 b_and!304173)))

(declare-fun b!3961531 () Bool)

(declare-fun b_free!109393 () Bool)

(declare-fun b_next!110097 () Bool)

(assert (=> b!3961531 (= b_free!109393 (not b_next!110097))))

(declare-fun tp!1207500 () Bool)

(declare-fun b_and!304175 () Bool)

(assert (=> b!3961531 (= tp!1207500 b_and!304175)))

(declare-fun b_free!109395 () Bool)

(declare-fun b_next!110099 () Bool)

(assert (=> b!3961531 (= b_free!109395 (not b_next!110099))))

(declare-fun tp!1207501 () Bool)

(declare-fun b_and!304177 () Bool)

(assert (=> b!3961531 (= tp!1207501 b_and!304177)))

(declare-fun b!3961530 () Bool)

(declare-fun b_free!109397 () Bool)

(declare-fun b_next!110101 () Bool)

(assert (=> b!3961530 (= b_free!109397 (not b_next!110101))))

(declare-fun tp!1207494 () Bool)

(declare-fun b_and!304179 () Bool)

(assert (=> b!3961530 (= tp!1207494 b_and!304179)))

(declare-fun b_free!109399 () Bool)

(declare-fun b_next!110103 () Bool)

(assert (=> b!3961530 (= b_free!109399 (not b_next!110103))))

(declare-fun tp!1207498 () Bool)

(declare-fun b_and!304181 () Bool)

(assert (=> b!3961530 (= tp!1207498 b_and!304181)))

(declare-fun b!3961498 () Bool)

(declare-fun e!2453171 () Bool)

(assert (=> b!3961498 (= e!2453171 false)))

(declare-fun b!3961499 () Bool)

(declare-fun e!2453182 () Bool)

(declare-fun e!2453172 () Bool)

(assert (=> b!3961499 (= e!2453182 e!2453172)))

(declare-fun res!1603332 () Bool)

(assert (=> b!3961499 (=> res!1603332 e!2453172)))

(declare-datatypes ((C!23240 0))(
  ( (C!23241 (val!13714 Int)) )
))
(declare-datatypes ((List!42337 0))(
  ( (Nil!42213) (Cons!42213 (h!47633 C!23240) (t!329904 List!42337)) )
))
(declare-fun lt!1386002 () List!42337)

(declare-fun lt!1386021 () List!42337)

(declare-fun isPrefix!3711 (List!42337 List!42337) Bool)

(assert (=> b!3961499 (= res!1603332 (not (isPrefix!3711 lt!1386002 lt!1386021)))))

(declare-fun prefix!426 () List!42337)

(assert (=> b!3961499 (isPrefix!3711 prefix!426 lt!1386021)))

(declare-datatypes ((Unit!60752 0))(
  ( (Unit!60753) )
))
(declare-fun lt!1386022 () Unit!60752)

(declare-fun suffix!1176 () List!42337)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2570 (List!42337 List!42337) Unit!60752)

(assert (=> b!3961499 (= lt!1386022 (lemmaConcatTwoListThenFirstIsPrefix!2570 prefix!426 suffix!1176))))

(declare-fun b!3961500 () Bool)

(declare-fun e!2453150 () Unit!60752)

(declare-fun Unit!60754 () Unit!60752)

(assert (=> b!3961500 (= e!2453150 Unit!60754)))

(declare-fun lt!1386019 () Unit!60752)

(assert (=> b!3961500 (= lt!1386019 (lemmaConcatTwoListThenFirstIsPrefix!2570 prefix!426 suffix!1176))))

(assert (=> b!3961500 (isPrefix!3711 prefix!426 lt!1386021)))

(declare-fun lt!1386024 () Unit!60752)

(declare-fun lemmaIsPrefixSameLengthThenSameList!833 (List!42337 List!42337 List!42337) Unit!60752)

(assert (=> b!3961500 (= lt!1386024 (lemmaIsPrefixSameLengthThenSameList!833 lt!1386002 prefix!426 lt!1386021))))

(assert (=> b!3961500 (= lt!1386002 prefix!426)))

(declare-fun lt!1386029 () Unit!60752)

(declare-datatypes ((List!42338 0))(
  ( (Nil!42214) (Cons!42214 (h!47634 (_ BitVec 16)) (t!329905 List!42338)) )
))
(declare-datatypes ((TokenValue!6852 0))(
  ( (FloatLiteralValue!13704 (text!48409 List!42338)) (TokenValueExt!6851 (__x!25921 Int)) (Broken!34260 (value!209335 List!42338)) (Object!6975) (End!6852) (Def!6852) (Underscore!6852) (Match!6852) (Else!6852) (Error!6852) (Case!6852) (If!6852) (Extends!6852) (Abstract!6852) (Class!6852) (Val!6852) (DelimiterValue!13704 (del!6912 List!42338)) (KeywordValue!6858 (value!209336 List!42338)) (CommentValue!13704 (value!209337 List!42338)) (WhitespaceValue!13704 (value!209338 List!42338)) (IndentationValue!6852 (value!209339 List!42338)) (String!47977) (Int32!6852) (Broken!34261 (value!209340 List!42338)) (Boolean!6853) (Unit!60755) (OperatorValue!6855 (op!6912 List!42338)) (IdentifierValue!13704 (value!209341 List!42338)) (IdentifierValue!13705 (value!209342 List!42338)) (WhitespaceValue!13705 (value!209343 List!42338)) (True!13704) (False!13704) (Broken!34262 (value!209344 List!42338)) (Broken!34263 (value!209345 List!42338)) (True!13705) (RightBrace!6852) (RightBracket!6852) (Colon!6852) (Null!6852) (Comma!6852) (LeftBracket!6852) (False!13705) (LeftBrace!6852) (ImaginaryLiteralValue!6852 (text!48410 List!42338)) (StringLiteralValue!20556 (value!209346 List!42338)) (EOFValue!6852 (value!209347 List!42338)) (IdentValue!6852 (value!209348 List!42338)) (DelimiterValue!13705 (value!209349 List!42338)) (DedentValue!6852 (value!209350 List!42338)) (NewLineValue!6852 (value!209351 List!42338)) (IntegerValue!20556 (value!209352 (_ BitVec 32)) (text!48411 List!42338)) (IntegerValue!20557 (value!209353 Int) (text!48412 List!42338)) (Times!6852) (Or!6852) (Equal!6852) (Minus!6852) (Broken!34264 (value!209354 List!42338)) (And!6852) (Div!6852) (LessEqual!6852) (Mod!6852) (Concat!18379) (Not!6852) (Plus!6852) (SpaceValue!6852 (value!209355 List!42338)) (IntegerValue!20558 (value!209356 Int) (text!48413 List!42338)) (StringLiteralValue!20557 (text!48414 List!42338)) (FloatLiteralValue!13705 (text!48415 List!42338)) (BytesLiteralValue!6852 (value!209357 List!42338)) (CommentValue!13705 (value!209358 List!42338)) (StringLiteralValue!20558 (value!209359 List!42338)) (ErrorTokenValue!6852 (msg!6913 List!42338)) )
))
(declare-datatypes ((Regex!11527 0))(
  ( (ElementMatch!11527 (c!687380 C!23240)) (Concat!18380 (regOne!23566 Regex!11527) (regTwo!23566 Regex!11527)) (EmptyExpr!11527) (Star!11527 (reg!11856 Regex!11527)) (EmptyLang!11527) (Union!11527 (regOne!23567 Regex!11527) (regTwo!23567 Regex!11527)) )
))
(declare-datatypes ((String!47978 0))(
  ( (String!47979 (value!209360 String)) )
))
(declare-datatypes ((IArray!25671 0))(
  ( (IArray!25672 (innerList!12893 List!42337)) )
))
(declare-datatypes ((Conc!12833 0))(
  ( (Node!12833 (left!32026 Conc!12833) (right!32356 Conc!12833) (csize!25896 Int) (cheight!13044 Int)) (Leaf!19851 (xs!16139 IArray!25671) (csize!25897 Int)) (Empty!12833) )
))
(declare-datatypes ((BalanceConc!25260 0))(
  ( (BalanceConc!25261 (c!687381 Conc!12833)) )
))
(declare-datatypes ((TokenValueInjection!13132 0))(
  ( (TokenValueInjection!13133 (toValue!9102 Int) (toChars!8961 Int)) )
))
(declare-datatypes ((Rule!13044 0))(
  ( (Rule!13045 (regex!6622 Regex!11527) (tag!7482 String!47978) (isSeparator!6622 Bool) (transformation!6622 TokenValueInjection!13132)) )
))
(declare-datatypes ((Token!12382 0))(
  ( (Token!12383 (value!209361 TokenValue!6852) (rule!9602 Rule!13044) (size!31606 Int) (originalCharacters!7222 List!42337)) )
))
(declare-datatypes ((tuple2!41506 0))(
  ( (tuple2!41507 (_1!23887 Token!12382) (_2!23887 List!42337)) )
))
(declare-datatypes ((Option!9042 0))(
  ( (None!9041) (Some!9041 (v!39387 tuple2!41506)) )
))
(declare-fun lt!1386010 () Option!9042)

(declare-fun lemmaSamePrefixThenSameSuffix!1920 (List!42337 List!42337 List!42337 List!42337 List!42337) Unit!60752)

(assert (=> b!3961500 (= lt!1386029 (lemmaSamePrefixThenSameSuffix!1920 lt!1386002 (_2!23887 (v!39387 lt!1386010)) prefix!426 suffix!1176 lt!1386021))))

(assert (=> b!3961500 false))

(declare-fun b!3961501 () Bool)

(declare-fun e!2453166 () Bool)

(declare-fun e!2453161 () Bool)

(assert (=> b!3961501 (= e!2453166 (not e!2453161))))

(declare-fun res!1603331 () Bool)

(assert (=> b!3961501 (=> res!1603331 e!2453161)))

(declare-fun lt!1386011 () List!42337)

(assert (=> b!3961501 (= res!1603331 (not (= lt!1386011 lt!1386021)))))

(declare-datatypes ((List!42339 0))(
  ( (Nil!42215) (Cons!42215 (h!47635 Rule!13044) (t!329906 List!42339)) )
))
(declare-fun rules!2768 () List!42339)

(declare-datatypes ((List!42340 0))(
  ( (Nil!42216) (Cons!42216 (h!47636 Token!12382) (t!329907 List!42340)) )
))
(declare-datatypes ((tuple2!41508 0))(
  ( (tuple2!41509 (_1!23888 List!42340) (_2!23888 List!42337)) )
))
(declare-fun lt!1386027 () tuple2!41508)

(declare-datatypes ((LexerInterface!6211 0))(
  ( (LexerInterfaceExt!6208 (__x!25922 Int)) (Lexer!6209) )
))
(declare-fun thiss!20629 () LexerInterface!6211)

(declare-fun lexList!1979 (LexerInterface!6211 List!42339 List!42337) tuple2!41508)

(assert (=> b!3961501 (= lt!1386027 (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun lt!1386006 () TokenValue!6852)

(declare-fun lt!1386028 () List!42337)

(declare-fun lt!1386015 () Int)

(assert (=> b!3961501 (and (= (size!31606 (_1!23887 (v!39387 lt!1386010))) lt!1386015) (= (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010))) lt!1386002) (= (v!39387 lt!1386010) (tuple2!41507 (Token!12383 lt!1386006 (rule!9602 (_1!23887 (v!39387 lt!1386010))) lt!1386015 lt!1386002) lt!1386028)))))

(declare-fun size!31607 (List!42337) Int)

(assert (=> b!3961501 (= lt!1386015 (size!31607 lt!1386002))))

(declare-fun e!2453174 () Bool)

(assert (=> b!3961501 e!2453174))

(declare-fun res!1603321 () Bool)

(assert (=> b!3961501 (=> (not res!1603321) (not e!2453174))))

(assert (=> b!3961501 (= res!1603321 (= (value!209361 (_1!23887 (v!39387 lt!1386010))) lt!1386006))))

(declare-fun apply!9853 (TokenValueInjection!13132 BalanceConc!25260) TokenValue!6852)

(declare-fun seqFromList!4881 (List!42337) BalanceConc!25260)

(assert (=> b!3961501 (= lt!1386006 (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (seqFromList!4881 lt!1386002)))))

(assert (=> b!3961501 (= (_2!23887 (v!39387 lt!1386010)) lt!1386028)))

(declare-fun lt!1386031 () Unit!60752)

(assert (=> b!3961501 (= lt!1386031 (lemmaSamePrefixThenSameSuffix!1920 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 lt!1386028 lt!1386021))))

(declare-fun getSuffix!2162 (List!42337 List!42337) List!42337)

(assert (=> b!3961501 (= lt!1386028 (getSuffix!2162 lt!1386021 lt!1386002))))

(assert (=> b!3961501 (isPrefix!3711 lt!1386002 lt!1386011)))

(declare-fun ++!11001 (List!42337 List!42337) List!42337)

(assert (=> b!3961501 (= lt!1386011 (++!11001 lt!1386002 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun lt!1386016 () Unit!60752)

(assert (=> b!3961501 (= lt!1386016 (lemmaConcatTwoListThenFirstIsPrefix!2570 lt!1386002 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun list!15668 (BalanceConc!25260) List!42337)

(declare-fun charsOf!4440 (Token!12382) BalanceConc!25260)

(assert (=> b!3961501 (= lt!1386002 (list!15668 (charsOf!4440 (_1!23887 (v!39387 lt!1386010)))))))

(declare-fun ruleValid!2564 (LexerInterface!6211 Rule!13044) Bool)

(assert (=> b!3961501 (ruleValid!2564 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))))))

(declare-fun lt!1386003 () Unit!60752)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1640 (LexerInterface!6211 Rule!13044 List!42339) Unit!60752)

(assert (=> b!3961501 (= lt!1386003 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1640 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) rules!2768))))

(declare-fun lt!1386013 () Unit!60752)

(declare-fun lemmaCharactersSize!1275 (Token!12382) Unit!60752)

(assert (=> b!3961501 (= lt!1386013 (lemmaCharactersSize!1275 (_1!23887 (v!39387 lt!1386010))))))

(declare-fun b!3961502 () Bool)

(declare-fun res!1603328 () Bool)

(declare-fun e!2453175 () Bool)

(assert (=> b!3961502 (=> (not res!1603328) (not e!2453175))))

(declare-fun prefixTokens!80 () List!42340)

(declare-fun isEmpty!25248 (List!42340) Bool)

(assert (=> b!3961502 (= res!1603328 (not (isEmpty!25248 prefixTokens!80)))))

(declare-fun b!3961503 () Bool)

(declare-fun e!2453153 () Unit!60752)

(declare-fun Unit!60756 () Unit!60752)

(assert (=> b!3961503 (= e!2453153 Unit!60756)))

(declare-fun lt!1386030 () Int)

(assert (=> b!3961503 (= lt!1386030 (size!31607 lt!1386021))))

(declare-fun lt!1386020 () Unit!60752)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1391 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42337 Rule!13044) Unit!60752)

(assert (=> b!3961503 (= lt!1386020 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1391 thiss!20629 rules!2768 lt!1386002 lt!1386021 (_2!23887 (v!39387 lt!1386010)) (rule!9602 (_1!23887 (v!39387 lt!1386010)))))))

(declare-fun maxPrefixOneRule!2565 (LexerInterface!6211 Rule!13044 List!42337) Option!9042)

(assert (=> b!3961503 (= (maxPrefixOneRule!2565 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) lt!1386021) (Some!9041 (tuple2!41507 (Token!12383 lt!1386006 (rule!9602 (_1!23887 (v!39387 lt!1386010))) lt!1386015 lt!1386002) (_2!23887 (v!39387 lt!1386010)))))))

(declare-fun lt!1386004 () tuple2!41506)

(declare-fun get!13923 (Option!9042) tuple2!41506)

(assert (=> b!3961503 (= lt!1386004 (get!13923 lt!1386010))))

(declare-fun c!687377 () Bool)

(declare-fun lt!1386023 () Int)

(assert (=> b!3961503 (= c!687377 (< (size!31607 (_2!23887 lt!1386004)) lt!1386023))))

(declare-fun lt!1386009 () Unit!60752)

(declare-fun e!2453152 () Unit!60752)

(assert (=> b!3961503 (= lt!1386009 e!2453152)))

(assert (=> b!3961503 false))

(declare-fun res!1603319 () Bool)

(assert (=> start!372600 (=> (not res!1603319) (not e!2453175))))

(get-info :version)

(assert (=> start!372600 (= res!1603319 ((_ is Lexer!6209) thiss!20629))))

(assert (=> start!372600 e!2453175))

(declare-fun e!2453168 () Bool)

(assert (=> start!372600 e!2453168))

(assert (=> start!372600 true))

(declare-fun e!2453159 () Bool)

(assert (=> start!372600 e!2453159))

(declare-fun e!2453151 () Bool)

(assert (=> start!372600 e!2453151))

(declare-fun e!2453155 () Bool)

(assert (=> start!372600 e!2453155))

(declare-fun e!2453181 () Bool)

(assert (=> start!372600 e!2453181))

(declare-fun e!2453169 () Bool)

(assert (=> start!372600 e!2453169))

(declare-fun tp!1207504 () Bool)

(declare-fun b!3961504 () Bool)

(declare-fun e!2453176 () Bool)

(declare-fun suffixTokens!72 () List!42340)

(declare-fun e!2453173 () Bool)

(declare-fun inv!56438 (String!47978) Bool)

(declare-fun inv!56441 (TokenValueInjection!13132) Bool)

(assert (=> b!3961504 (= e!2453173 (and tp!1207504 (inv!56438 (tag!7482 (rule!9602 (h!47636 suffixTokens!72)))) (inv!56441 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) e!2453176))))

(declare-fun b!3961505 () Bool)

(declare-fun tp_is_empty!20025 () Bool)

(declare-fun tp!1207499 () Bool)

(assert (=> b!3961505 (= e!2453168 (and tp_is_empty!20025 tp!1207499))))

(declare-fun b!3961506 () Bool)

(assert (=> b!3961506 (= e!2453161 e!2453182)))

(declare-fun res!1603324 () Bool)

(assert (=> b!3961506 (=> res!1603324 e!2453182)))

(declare-fun lt!1386008 () Int)

(assert (=> b!3961506 (= res!1603324 (<= lt!1386008 lt!1386023))))

(declare-fun lt!1386001 () Unit!60752)

(assert (=> b!3961506 (= lt!1386001 e!2453150)))

(declare-fun c!687378 () Bool)

(assert (=> b!3961506 (= c!687378 (= lt!1386008 lt!1386023))))

(declare-fun lt!1386026 () Unit!60752)

(assert (=> b!3961506 (= lt!1386026 e!2453153)))

(declare-fun c!687376 () Bool)

(assert (=> b!3961506 (= c!687376 (< lt!1386008 lt!1386023))))

(assert (=> b!3961506 (= lt!1386023 (size!31607 suffix!1176))))

(assert (=> b!3961506 (= lt!1386008 (size!31607 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun b!3961507 () Bool)

(declare-fun res!1603322 () Bool)

(assert (=> b!3961507 (=> res!1603322 e!2453182)))

(declare-fun head!8429 (List!42340) Token!12382)

(assert (=> b!3961507 (= res!1603322 (not (= (head!8429 prefixTokens!80) (_1!23887 (v!39387 lt!1386010)))))))

(declare-fun b!3961508 () Bool)

(declare-fun res!1603323 () Bool)

(assert (=> b!3961508 (=> (not res!1603323) (not e!2453175))))

(declare-fun rulesInvariant!5554 (LexerInterface!6211 List!42339) Bool)

(assert (=> b!3961508 (= res!1603323 (rulesInvariant!5554 thiss!20629 rules!2768))))

(declare-fun b!3961509 () Bool)

(declare-fun Unit!60757 () Unit!60752)

(assert (=> b!3961509 (= e!2453152 Unit!60757)))

(declare-fun e!2453179 () Bool)

(declare-fun b!3961510 () Bool)

(declare-fun tp!1207506 () Bool)

(declare-fun inv!21 (TokenValue!6852) Bool)

(assert (=> b!3961510 (= e!2453179 (and (inv!21 (value!209361 (h!47636 suffixTokens!72))) e!2453173 tp!1207506))))

(declare-fun b!3961511 () Bool)

(declare-fun c!687379 () Bool)

(declare-fun lt!1386014 () List!42340)

(assert (=> b!3961511 (= c!687379 (isEmpty!25248 lt!1386014))))

(declare-fun tail!6161 (List!42340) List!42340)

(assert (=> b!3961511 (= lt!1386014 (tail!6161 prefixTokens!80))))

(declare-fun e!2453165 () Unit!60752)

(assert (=> b!3961511 (= e!2453152 e!2453165)))

(declare-fun b!3961512 () Bool)

(declare-fun e!2453178 () Bool)

(declare-fun tp!1207508 () Bool)

(assert (=> b!3961512 (= e!2453151 (and e!2453178 tp!1207508))))

(declare-fun b!3961513 () Bool)

(declare-fun e!2453167 () Bool)

(declare-fun e!2453157 () Bool)

(assert (=> b!3961513 (= e!2453167 e!2453157)))

(declare-fun res!1603330 () Bool)

(assert (=> b!3961513 (=> (not res!1603330) (not e!2453157))))

(declare-fun lt!1386005 () tuple2!41508)

(assert (=> b!3961513 (= res!1603330 (= (lexList!1979 thiss!20629 rules!2768 suffix!1176) lt!1386005))))

(declare-fun suffixResult!91 () List!42337)

(assert (=> b!3961513 (= lt!1386005 (tuple2!41509 suffixTokens!72 suffixResult!91))))

(declare-fun b!3961514 () Bool)

(declare-fun res!1603317 () Bool)

(assert (=> b!3961514 (=> res!1603317 e!2453161)))

(declare-fun lt!1386018 () tuple2!41508)

(declare-fun ++!11002 (List!42340 List!42340) List!42340)

(assert (=> b!3961514 (= res!1603317 (not (= lt!1386018 (tuple2!41509 (++!11002 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216) (_1!23888 lt!1386027)) (_2!23888 lt!1386027)))))))

(declare-fun e!2453162 () Bool)

(declare-fun e!2453164 () Bool)

(declare-fun b!3961515 () Bool)

(declare-fun tp!1207496 () Bool)

(assert (=> b!3961515 (= e!2453164 (and (inv!21 (value!209361 (h!47636 prefixTokens!80))) e!2453162 tp!1207496))))

(declare-fun e!2453180 () Bool)

(declare-fun tp!1207510 () Bool)

(declare-fun b!3961516 () Bool)

(assert (=> b!3961516 (= e!2453178 (and tp!1207510 (inv!56438 (tag!7482 (h!47635 rules!2768))) (inv!56441 (transformation!6622 (h!47635 rules!2768))) e!2453180))))

(assert (=> b!3961517 (= e!2453176 (and tp!1207507 tp!1207502))))

(declare-fun e!2453158 () Bool)

(declare-fun b!3961518 () Bool)

(declare-fun tp!1207495 () Bool)

(assert (=> b!3961518 (= e!2453162 (and tp!1207495 (inv!56438 (tag!7482 (rule!9602 (h!47636 prefixTokens!80)))) (inv!56441 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) e!2453158))))

(declare-fun b!3961519 () Bool)

(declare-fun e!2453160 () Bool)

(assert (=> b!3961519 (= e!2453160 false)))

(declare-fun b!3961520 () Bool)

(assert (=> b!3961520 (= e!2453172 (<= lt!1386015 (size!31607 prefix!426)))))

(declare-fun b!3961521 () Bool)

(declare-fun Unit!60758 () Unit!60752)

(assert (=> b!3961521 (= e!2453165 Unit!60758)))

(declare-fun lt!1386007 () Unit!60752)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!616 (List!42337 List!42337 List!42337 List!42337) Unit!60752)

(assert (=> b!3961521 (= lt!1386007 (lemmaConcatSameAndSameSizesThenSameLists!616 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 (_2!23887 lt!1386004)))))

(assert (=> b!3961521 (= (_2!23887 (v!39387 lt!1386010)) (_2!23887 lt!1386004))))

(declare-fun lt!1386025 () Unit!60752)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!150 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42340 List!42337) Unit!60752)

(assert (=> b!3961521 (= lt!1386025 (lemmaLexWithSmallerInputCannotProduceSameResults!150 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603327 () Bool)

(declare-fun call!285424 () tuple2!41508)

(assert (=> b!3961521 (= res!1603327 (not (= call!285424 lt!1386005)))))

(assert (=> b!3961521 (=> (not res!1603327) (not e!2453160))))

(assert (=> b!3961521 e!2453160))

(declare-fun b!3961522 () Bool)

(assert (=> b!3961522 (= e!2453157 e!2453166)))

(declare-fun res!1603325 () Bool)

(assert (=> b!3961522 (=> (not res!1603325) (not e!2453166))))

(assert (=> b!3961522 (= res!1603325 ((_ is Some!9041) lt!1386010))))

(declare-fun maxPrefix!3515 (LexerInterface!6211 List!42339 List!42337) Option!9042)

(assert (=> b!3961522 (= lt!1386010 (maxPrefix!3515 thiss!20629 rules!2768 lt!1386021))))

(declare-fun b!3961523 () Bool)

(declare-fun Unit!60759 () Unit!60752)

(assert (=> b!3961523 (= e!2453153 Unit!60759)))

(declare-fun b!3961524 () Bool)

(declare-fun res!1603329 () Bool)

(assert (=> b!3961524 (=> (not res!1603329) (not e!2453175))))

(declare-fun isEmpty!25249 (List!42337) Bool)

(assert (=> b!3961524 (= res!1603329 (not (isEmpty!25249 prefix!426)))))

(declare-fun b!3961525 () Bool)

(assert (=> b!3961525 (= e!2453175 e!2453167)))

(declare-fun res!1603333 () Bool)

(assert (=> b!3961525 (=> (not res!1603333) (not e!2453167))))

(declare-fun lt!1386012 () List!42340)

(assert (=> b!3961525 (= res!1603333 (= lt!1386018 (tuple2!41509 lt!1386012 suffixResult!91)))))

(assert (=> b!3961525 (= lt!1386018 (lexList!1979 thiss!20629 rules!2768 lt!1386021))))

(assert (=> b!3961525 (= lt!1386012 (++!11002 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3961525 (= lt!1386021 (++!11001 prefix!426 suffix!1176))))

(declare-fun b!3961526 () Bool)

(declare-fun tp!1207503 () Bool)

(assert (=> b!3961526 (= e!2453159 (and tp_is_empty!20025 tp!1207503))))

(declare-fun b!3961527 () Bool)

(declare-fun res!1603326 () Bool)

(assert (=> b!3961527 (=> res!1603326 e!2453161)))

(assert (=> b!3961527 (= res!1603326 (or (not (= lt!1386027 (tuple2!41509 (_1!23888 lt!1386027) (_2!23888 lt!1386027)))) (= (_2!23887 (v!39387 lt!1386010)) suffix!1176)))))

(declare-fun b!3961528 () Bool)

(declare-fun res!1603318 () Bool)

(assert (=> b!3961528 (=> (not res!1603318) (not e!2453175))))

(declare-fun isEmpty!25250 (List!42339) Bool)

(assert (=> b!3961528 (= res!1603318 (not (isEmpty!25250 rules!2768)))))

(declare-fun b!3961529 () Bool)

(assert (=> b!3961529 (= e!2453174 (= (size!31606 (_1!23887 (v!39387 lt!1386010))) (size!31607 (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010))))))))

(assert (=> b!3961530 (= e!2453180 (and tp!1207494 tp!1207498))))

(assert (=> b!3961531 (= e!2453158 (and tp!1207500 tp!1207501))))

(declare-fun b!3961532 () Bool)

(declare-fun tp!1207509 () Bool)

(assert (=> b!3961532 (= e!2453169 (and tp_is_empty!20025 tp!1207509))))

(declare-fun b!3961533 () Bool)

(declare-fun Unit!60760 () Unit!60752)

(assert (=> b!3961533 (= e!2453165 Unit!60760)))

(declare-fun lt!1386017 () Unit!60752)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!150 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42340 List!42337 List!42340) Unit!60752)

(assert (=> b!3961533 (= lt!1386017 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!150 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91 lt!1386014))))

(declare-fun res!1603320 () Bool)

(assert (=> b!3961533 (= res!1603320 (not (= call!285424 (tuple2!41509 (++!11002 lt!1386014 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3961533 (=> (not res!1603320) (not e!2453171))))

(assert (=> b!3961533 e!2453171))

(declare-fun tp!1207505 () Bool)

(declare-fun b!3961534 () Bool)

(declare-fun inv!56442 (Token!12382) Bool)

(assert (=> b!3961534 (= e!2453155 (and (inv!56442 (h!47636 prefixTokens!80)) e!2453164 tp!1207505))))

(declare-fun b!3961535 () Bool)

(declare-fun tp!1207497 () Bool)

(assert (=> b!3961535 (= e!2453181 (and (inv!56442 (h!47636 suffixTokens!72)) e!2453179 tp!1207497))))

(declare-fun b!3961536 () Bool)

(declare-fun Unit!60761 () Unit!60752)

(assert (=> b!3961536 (= e!2453150 Unit!60761)))

(declare-fun bm!285419 () Bool)

(assert (=> bm!285419 (= call!285424 (lexList!1979 thiss!20629 rules!2768 (_2!23887 lt!1386004)))))

(assert (= (and start!372600 res!1603319) b!3961528))

(assert (= (and b!3961528 res!1603318) b!3961508))

(assert (= (and b!3961508 res!1603323) b!3961502))

(assert (= (and b!3961502 res!1603328) b!3961524))

(assert (= (and b!3961524 res!1603329) b!3961525))

(assert (= (and b!3961525 res!1603333) b!3961513))

(assert (= (and b!3961513 res!1603330) b!3961522))

(assert (= (and b!3961522 res!1603325) b!3961501))

(assert (= (and b!3961501 res!1603321) b!3961529))

(assert (= (and b!3961501 (not res!1603331)) b!3961514))

(assert (= (and b!3961514 (not res!1603317)) b!3961527))

(assert (= (and b!3961527 (not res!1603326)) b!3961506))

(assert (= (and b!3961506 c!687376) b!3961503))

(assert (= (and b!3961506 (not c!687376)) b!3961523))

(assert (= (and b!3961503 c!687377) b!3961511))

(assert (= (and b!3961503 (not c!687377)) b!3961509))

(assert (= (and b!3961511 c!687379) b!3961521))

(assert (= (and b!3961511 (not c!687379)) b!3961533))

(assert (= (and b!3961521 res!1603327) b!3961519))

(assert (= (and b!3961533 res!1603320) b!3961498))

(assert (= (or b!3961521 b!3961533) bm!285419))

(assert (= (and b!3961506 c!687378) b!3961500))

(assert (= (and b!3961506 (not c!687378)) b!3961536))

(assert (= (and b!3961506 (not res!1603324)) b!3961507))

(assert (= (and b!3961507 (not res!1603322)) b!3961499))

(assert (= (and b!3961499 (not res!1603332)) b!3961520))

(assert (= (and start!372600 ((_ is Cons!42213) suffixResult!91)) b!3961505))

(assert (= (and start!372600 ((_ is Cons!42213) suffix!1176)) b!3961526))

(assert (= b!3961516 b!3961530))

(assert (= b!3961512 b!3961516))

(assert (= (and start!372600 ((_ is Cons!42215) rules!2768)) b!3961512))

(assert (= b!3961518 b!3961531))

(assert (= b!3961515 b!3961518))

(assert (= b!3961534 b!3961515))

(assert (= (and start!372600 ((_ is Cons!42216) prefixTokens!80)) b!3961534))

(assert (= b!3961504 b!3961517))

(assert (= b!3961510 b!3961504))

(assert (= b!3961535 b!3961510))

(assert (= (and start!372600 ((_ is Cons!42216) suffixTokens!72)) b!3961535))

(assert (= (and start!372600 ((_ is Cons!42213) prefix!426)) b!3961532))

(declare-fun m!4530437 () Bool)

(assert (=> b!3961535 m!4530437))

(declare-fun m!4530439 () Bool)

(assert (=> b!3961515 m!4530439))

(declare-fun m!4530441 () Bool)

(assert (=> b!3961518 m!4530441))

(declare-fun m!4530443 () Bool)

(assert (=> b!3961518 m!4530443))

(declare-fun m!4530445 () Bool)

(assert (=> b!3961524 m!4530445))

(declare-fun m!4530447 () Bool)

(assert (=> b!3961533 m!4530447))

(declare-fun m!4530449 () Bool)

(assert (=> b!3961533 m!4530449))

(declare-fun m!4530451 () Bool)

(assert (=> b!3961500 m!4530451))

(declare-fun m!4530453 () Bool)

(assert (=> b!3961500 m!4530453))

(declare-fun m!4530455 () Bool)

(assert (=> b!3961500 m!4530455))

(declare-fun m!4530457 () Bool)

(assert (=> b!3961500 m!4530457))

(declare-fun m!4530459 () Bool)

(assert (=> b!3961504 m!4530459))

(declare-fun m!4530461 () Bool)

(assert (=> b!3961504 m!4530461))

(declare-fun m!4530463 () Bool)

(assert (=> b!3961503 m!4530463))

(declare-fun m!4530465 () Bool)

(assert (=> b!3961503 m!4530465))

(declare-fun m!4530467 () Bool)

(assert (=> b!3961503 m!4530467))

(declare-fun m!4530469 () Bool)

(assert (=> b!3961503 m!4530469))

(declare-fun m!4530471 () Bool)

(assert (=> b!3961503 m!4530471))

(declare-fun m!4530473 () Bool)

(assert (=> bm!285419 m!4530473))

(declare-fun m!4530475 () Bool)

(assert (=> b!3961506 m!4530475))

(declare-fun m!4530477 () Bool)

(assert (=> b!3961506 m!4530477))

(declare-fun m!4530479 () Bool)

(assert (=> b!3961529 m!4530479))

(declare-fun m!4530481 () Bool)

(assert (=> b!3961513 m!4530481))

(declare-fun m!4530483 () Bool)

(assert (=> b!3961520 m!4530483))

(declare-fun m!4530485 () Bool)

(assert (=> b!3961525 m!4530485))

(declare-fun m!4530487 () Bool)

(assert (=> b!3961525 m!4530487))

(declare-fun m!4530489 () Bool)

(assert (=> b!3961525 m!4530489))

(declare-fun m!4530491 () Bool)

(assert (=> b!3961510 m!4530491))

(declare-fun m!4530493 () Bool)

(assert (=> b!3961534 m!4530493))

(declare-fun m!4530495 () Bool)

(assert (=> b!3961522 m!4530495))

(declare-fun m!4530497 () Bool)

(assert (=> b!3961502 m!4530497))

(declare-fun m!4530499 () Bool)

(assert (=> b!3961521 m!4530499))

(declare-fun m!4530501 () Bool)

(assert (=> b!3961521 m!4530501))

(declare-fun m!4530503 () Bool)

(assert (=> b!3961514 m!4530503))

(declare-fun m!4530505 () Bool)

(assert (=> b!3961507 m!4530505))

(declare-fun m!4530507 () Bool)

(assert (=> b!3961511 m!4530507))

(declare-fun m!4530509 () Bool)

(assert (=> b!3961511 m!4530509))

(declare-fun m!4530511 () Bool)

(assert (=> b!3961499 m!4530511))

(assert (=> b!3961499 m!4530453))

(assert (=> b!3961499 m!4530451))

(declare-fun m!4530513 () Bool)

(assert (=> b!3961528 m!4530513))

(declare-fun m!4530515 () Bool)

(assert (=> b!3961516 m!4530515))

(declare-fun m!4530517 () Bool)

(assert (=> b!3961516 m!4530517))

(declare-fun m!4530519 () Bool)

(assert (=> b!3961501 m!4530519))

(declare-fun m!4530521 () Bool)

(assert (=> b!3961501 m!4530521))

(declare-fun m!4530523 () Bool)

(assert (=> b!3961501 m!4530523))

(declare-fun m!4530525 () Bool)

(assert (=> b!3961501 m!4530525))

(declare-fun m!4530527 () Bool)

(assert (=> b!3961501 m!4530527))

(declare-fun m!4530529 () Bool)

(assert (=> b!3961501 m!4530529))

(assert (=> b!3961501 m!4530527))

(declare-fun m!4530531 () Bool)

(assert (=> b!3961501 m!4530531))

(declare-fun m!4530533 () Bool)

(assert (=> b!3961501 m!4530533))

(assert (=> b!3961501 m!4530523))

(declare-fun m!4530535 () Bool)

(assert (=> b!3961501 m!4530535))

(declare-fun m!4530537 () Bool)

(assert (=> b!3961501 m!4530537))

(declare-fun m!4530539 () Bool)

(assert (=> b!3961501 m!4530539))

(declare-fun m!4530541 () Bool)

(assert (=> b!3961501 m!4530541))

(declare-fun m!4530543 () Bool)

(assert (=> b!3961501 m!4530543))

(declare-fun m!4530545 () Bool)

(assert (=> b!3961501 m!4530545))

(declare-fun m!4530547 () Bool)

(assert (=> b!3961508 m!4530547))

(check-sat (not b!3961506) b_and!304175 (not bm!285419) (not b!3961524) (not b!3961499) (not b!3961522) (not b!3961534) (not b!3961518) (not b!3961510) (not b!3961525) (not b!3961502) (not b!3961532) (not b!3961528) tp_is_empty!20025 (not b!3961521) (not b!3961520) b_and!304181 (not b_next!110103) (not b!3961511) (not b!3961513) b_and!304177 (not b!3961535) (not b!3961503) b_and!304171 (not b!3961505) (not b!3961507) (not b_next!110097) (not b_next!110095) (not b_next!110099) (not b!3961504) (not b!3961501) (not b_next!110101) (not b!3961508) (not b!3961516) (not b_next!110093) (not b!3961515) (not b!3961500) b_and!304173 (not b!3961512) (not b!3961529) (not b!3961526) (not b!3961514) (not b!3961533) b_and!304179)
(check-sat b_and!304175 (not b_next!110097) (not b_next!110101) (not b_next!110093) b_and!304173 b_and!304179 b_and!304181 (not b_next!110103) b_and!304177 b_and!304171 (not b_next!110095) (not b_next!110099))
(get-model)

(declare-fun d!1173734 () Bool)

(assert (=> d!1173734 (= (isEmpty!25248 prefixTokens!80) ((_ is Nil!42216) prefixTokens!80))))

(assert (=> b!3961502 d!1173734))

(declare-fun d!1173736 () Bool)

(assert (=> d!1173736 (isPrefix!3711 prefix!426 (++!11001 prefix!426 suffix!1176))))

(declare-fun lt!1386034 () Unit!60752)

(declare-fun choose!23664 (List!42337 List!42337) Unit!60752)

(assert (=> d!1173736 (= lt!1386034 (choose!23664 prefix!426 suffix!1176))))

(assert (=> d!1173736 (= (lemmaConcatTwoListThenFirstIsPrefix!2570 prefix!426 suffix!1176) lt!1386034)))

(declare-fun bs!587273 () Bool)

(assert (= bs!587273 d!1173736))

(assert (=> bs!587273 m!4530489))

(assert (=> bs!587273 m!4530489))

(declare-fun m!4530549 () Bool)

(assert (=> bs!587273 m!4530549))

(declare-fun m!4530551 () Bool)

(assert (=> bs!587273 m!4530551))

(assert (=> b!3961500 d!1173736))

(declare-fun d!1173738 () Bool)

(declare-fun e!2453190 () Bool)

(assert (=> d!1173738 e!2453190))

(declare-fun res!1603347 () Bool)

(assert (=> d!1173738 (=> res!1603347 e!2453190)))

(declare-fun lt!1386037 () Bool)

(assert (=> d!1173738 (= res!1603347 (not lt!1386037))))

(declare-fun e!2453189 () Bool)

(assert (=> d!1173738 (= lt!1386037 e!2453189)))

(declare-fun res!1603346 () Bool)

(assert (=> d!1173738 (=> res!1603346 e!2453189)))

(assert (=> d!1173738 (= res!1603346 ((_ is Nil!42213) prefix!426))))

(assert (=> d!1173738 (= (isPrefix!3711 prefix!426 lt!1386021) lt!1386037)))

(declare-fun b!3961548 () Bool)

(assert (=> b!3961548 (= e!2453190 (>= (size!31607 lt!1386021) (size!31607 prefix!426)))))

(declare-fun b!3961545 () Bool)

(declare-fun e!2453191 () Bool)

(assert (=> b!3961545 (= e!2453189 e!2453191)))

(declare-fun res!1603349 () Bool)

(assert (=> b!3961545 (=> (not res!1603349) (not e!2453191))))

(assert (=> b!3961545 (= res!1603349 (not ((_ is Nil!42213) lt!1386021)))))

(declare-fun b!3961546 () Bool)

(declare-fun res!1603348 () Bool)

(assert (=> b!3961546 (=> (not res!1603348) (not e!2453191))))

(declare-fun head!8431 (List!42337) C!23240)

(assert (=> b!3961546 (= res!1603348 (= (head!8431 prefix!426) (head!8431 lt!1386021)))))

(declare-fun b!3961547 () Bool)

(declare-fun tail!6163 (List!42337) List!42337)

(assert (=> b!3961547 (= e!2453191 (isPrefix!3711 (tail!6163 prefix!426) (tail!6163 lt!1386021)))))

(assert (= (and d!1173738 (not res!1603346)) b!3961545))

(assert (= (and b!3961545 res!1603349) b!3961546))

(assert (= (and b!3961546 res!1603348) b!3961547))

(assert (= (and d!1173738 (not res!1603347)) b!3961548))

(assert (=> b!3961548 m!4530463))

(assert (=> b!3961548 m!4530483))

(declare-fun m!4530553 () Bool)

(assert (=> b!3961546 m!4530553))

(declare-fun m!4530555 () Bool)

(assert (=> b!3961546 m!4530555))

(declare-fun m!4530557 () Bool)

(assert (=> b!3961547 m!4530557))

(declare-fun m!4530559 () Bool)

(assert (=> b!3961547 m!4530559))

(assert (=> b!3961547 m!4530557))

(assert (=> b!3961547 m!4530559))

(declare-fun m!4530561 () Bool)

(assert (=> b!3961547 m!4530561))

(assert (=> b!3961500 d!1173738))

(declare-fun d!1173740 () Bool)

(assert (=> d!1173740 (= lt!1386002 prefix!426)))

(declare-fun lt!1386040 () Unit!60752)

(declare-fun choose!23666 (List!42337 List!42337 List!42337) Unit!60752)

(assert (=> d!1173740 (= lt!1386040 (choose!23666 lt!1386002 prefix!426 lt!1386021))))

(assert (=> d!1173740 (isPrefix!3711 lt!1386002 lt!1386021)))

(assert (=> d!1173740 (= (lemmaIsPrefixSameLengthThenSameList!833 lt!1386002 prefix!426 lt!1386021) lt!1386040)))

(declare-fun bs!587274 () Bool)

(assert (= bs!587274 d!1173740))

(declare-fun m!4530563 () Bool)

(assert (=> bs!587274 m!4530563))

(assert (=> bs!587274 m!4530511))

(assert (=> b!3961500 d!1173740))

(declare-fun d!1173742 () Bool)

(assert (=> d!1173742 (= (_2!23887 (v!39387 lt!1386010)) suffix!1176)))

(declare-fun lt!1386043 () Unit!60752)

(declare-fun choose!23667 (List!42337 List!42337 List!42337 List!42337 List!42337) Unit!60752)

(assert (=> d!1173742 (= lt!1386043 (choose!23667 lt!1386002 (_2!23887 (v!39387 lt!1386010)) prefix!426 suffix!1176 lt!1386021))))

(assert (=> d!1173742 (isPrefix!3711 lt!1386002 lt!1386021)))

(assert (=> d!1173742 (= (lemmaSamePrefixThenSameSuffix!1920 lt!1386002 (_2!23887 (v!39387 lt!1386010)) prefix!426 suffix!1176 lt!1386021) lt!1386043)))

(declare-fun bs!587275 () Bool)

(assert (= bs!587275 d!1173742))

(declare-fun m!4530565 () Bool)

(assert (=> bs!587275 m!4530565))

(assert (=> bs!587275 m!4530511))

(assert (=> b!3961500 d!1173742))

(declare-fun d!1173744 () Bool)

(declare-fun res!1603354 () Bool)

(declare-fun e!2453194 () Bool)

(assert (=> d!1173744 (=> (not res!1603354) (not e!2453194))))

(declare-fun validRegex!5247 (Regex!11527) Bool)

(assert (=> d!1173744 (= res!1603354 (validRegex!5247 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))))))

(assert (=> d!1173744 (= (ruleValid!2564 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) e!2453194)))

(declare-fun b!3961553 () Bool)

(declare-fun res!1603355 () Bool)

(assert (=> b!3961553 (=> (not res!1603355) (not e!2453194))))

(declare-fun nullable!4048 (Regex!11527) Bool)

(assert (=> b!3961553 (= res!1603355 (not (nullable!4048 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))))))

(declare-fun b!3961554 () Bool)

(assert (=> b!3961554 (= e!2453194 (not (= (tag!7482 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (String!47979 ""))))))

(assert (= (and d!1173744 res!1603354) b!3961553))

(assert (= (and b!3961553 res!1603355) b!3961554))

(declare-fun m!4530567 () Bool)

(assert (=> d!1173744 m!4530567))

(declare-fun m!4530569 () Bool)

(assert (=> b!3961553 m!4530569))

(assert (=> b!3961501 d!1173744))

(declare-fun d!1173746 () Bool)

(declare-fun lt!1386046 () Int)

(assert (=> d!1173746 (>= lt!1386046 0)))

(declare-fun e!2453197 () Int)

(assert (=> d!1173746 (= lt!1386046 e!2453197)))

(declare-fun c!687384 () Bool)

(assert (=> d!1173746 (= c!687384 ((_ is Nil!42213) lt!1386002))))

(assert (=> d!1173746 (= (size!31607 lt!1386002) lt!1386046)))

(declare-fun b!3961559 () Bool)

(assert (=> b!3961559 (= e!2453197 0)))

(declare-fun b!3961560 () Bool)

(assert (=> b!3961560 (= e!2453197 (+ 1 (size!31607 (t!329904 lt!1386002))))))

(assert (= (and d!1173746 c!687384) b!3961559))

(assert (= (and d!1173746 (not c!687384)) b!3961560))

(declare-fun m!4530571 () Bool)

(assert (=> b!3961560 m!4530571))

(assert (=> b!3961501 d!1173746))

(declare-fun b!3961581 () Bool)

(declare-fun res!1603365 () Bool)

(declare-fun e!2453208 () Bool)

(assert (=> b!3961581 (=> (not res!1603365) (not e!2453208))))

(declare-fun lt!1386049 () List!42337)

(assert (=> b!3961581 (= res!1603365 (= (size!31607 lt!1386049) (+ (size!31607 lt!1386002) (size!31607 (_2!23887 (v!39387 lt!1386010))))))))

(declare-fun d!1173748 () Bool)

(assert (=> d!1173748 e!2453208))

(declare-fun res!1603366 () Bool)

(assert (=> d!1173748 (=> (not res!1603366) (not e!2453208))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6410 (List!42337) (InoxSet C!23240))

(assert (=> d!1173748 (= res!1603366 (= (content!6410 lt!1386049) ((_ map or) (content!6410 lt!1386002) (content!6410 (_2!23887 (v!39387 lt!1386010))))))))

(declare-fun e!2453209 () List!42337)

(assert (=> d!1173748 (= lt!1386049 e!2453209)))

(declare-fun c!687391 () Bool)

(assert (=> d!1173748 (= c!687391 ((_ is Nil!42213) lt!1386002))))

(assert (=> d!1173748 (= (++!11001 lt!1386002 (_2!23887 (v!39387 lt!1386010))) lt!1386049)))

(declare-fun b!3961582 () Bool)

(assert (=> b!3961582 (= e!2453208 (or (not (= (_2!23887 (v!39387 lt!1386010)) Nil!42213)) (= lt!1386049 lt!1386002)))))

(declare-fun b!3961579 () Bool)

(assert (=> b!3961579 (= e!2453209 (_2!23887 (v!39387 lt!1386010)))))

(declare-fun b!3961580 () Bool)

(assert (=> b!3961580 (= e!2453209 (Cons!42213 (h!47633 lt!1386002) (++!11001 (t!329904 lt!1386002) (_2!23887 (v!39387 lt!1386010)))))))

(assert (= (and d!1173748 c!687391) b!3961579))

(assert (= (and d!1173748 (not c!687391)) b!3961580))

(assert (= (and d!1173748 res!1603366) b!3961581))

(assert (= (and b!3961581 res!1603365) b!3961582))

(declare-fun m!4530573 () Bool)

(assert (=> b!3961581 m!4530573))

(assert (=> b!3961581 m!4530539))

(assert (=> b!3961581 m!4530477))

(declare-fun m!4530575 () Bool)

(assert (=> d!1173748 m!4530575))

(declare-fun m!4530577 () Bool)

(assert (=> d!1173748 m!4530577))

(declare-fun m!4530581 () Bool)

(assert (=> d!1173748 m!4530581))

(declare-fun m!4530587 () Bool)

(assert (=> b!3961580 m!4530587))

(assert (=> b!3961501 d!1173748))

(declare-fun b!3961651 () Bool)

(declare-fun e!2453254 () tuple2!41508)

(assert (=> b!3961651 (= e!2453254 (tuple2!41509 Nil!42216 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun b!3961652 () Bool)

(declare-fun e!2453253 () Bool)

(declare-fun lt!1386085 () tuple2!41508)

(assert (=> b!3961652 (= e!2453253 (= (_2!23888 lt!1386085) (_2!23887 (v!39387 lt!1386010))))))

(declare-fun b!3961653 () Bool)

(declare-fun lt!1386087 () Option!9042)

(declare-fun lt!1386086 () tuple2!41508)

(assert (=> b!3961653 (= e!2453254 (tuple2!41509 (Cons!42216 (_1!23887 (v!39387 lt!1386087)) (_1!23888 lt!1386086)) (_2!23888 lt!1386086)))))

(assert (=> b!3961653 (= lt!1386086 (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386087))))))

(declare-fun b!3961654 () Bool)

(declare-fun e!2453255 () Bool)

(assert (=> b!3961654 (= e!2453253 e!2453255)))

(declare-fun res!1603397 () Bool)

(assert (=> b!3961654 (= res!1603397 (< (size!31607 (_2!23888 lt!1386085)) (size!31607 (_2!23887 (v!39387 lt!1386010)))))))

(assert (=> b!3961654 (=> (not res!1603397) (not e!2453255))))

(declare-fun d!1173760 () Bool)

(assert (=> d!1173760 e!2453253))

(declare-fun c!687411 () Bool)

(declare-fun size!31609 (List!42340) Int)

(assert (=> d!1173760 (= c!687411 (> (size!31609 (_1!23888 lt!1386085)) 0))))

(assert (=> d!1173760 (= lt!1386085 e!2453254)))

(declare-fun c!687412 () Bool)

(assert (=> d!1173760 (= c!687412 ((_ is Some!9041) lt!1386087))))

(assert (=> d!1173760 (= lt!1386087 (maxPrefix!3515 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386010))))))

(assert (=> d!1173760 (= (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386010))) lt!1386085)))

(declare-fun b!3961657 () Bool)

(assert (=> b!3961657 (= e!2453255 (not (isEmpty!25248 (_1!23888 lt!1386085))))))

(assert (= (and d!1173760 c!687412) b!3961653))

(assert (= (and d!1173760 (not c!687412)) b!3961651))

(assert (= (and d!1173760 c!687411) b!3961654))

(assert (= (and d!1173760 (not c!687411)) b!3961652))

(assert (= (and b!3961654 res!1603397) b!3961657))

(declare-fun m!4530643 () Bool)

(assert (=> b!3961653 m!4530643))

(declare-fun m!4530645 () Bool)

(assert (=> b!3961654 m!4530645))

(assert (=> b!3961654 m!4530477))

(declare-fun m!4530647 () Bool)

(assert (=> d!1173760 m!4530647))

(declare-fun m!4530649 () Bool)

(assert (=> d!1173760 m!4530649))

(declare-fun m!4530651 () Bool)

(assert (=> b!3961657 m!4530651))

(assert (=> b!3961501 d!1173760))

(declare-fun d!1173782 () Bool)

(declare-fun list!15669 (Conc!12833) List!42337)

(assert (=> d!1173782 (= (list!15668 (charsOf!4440 (_1!23887 (v!39387 lt!1386010)))) (list!15669 (c!687381 (charsOf!4440 (_1!23887 (v!39387 lt!1386010))))))))

(declare-fun bs!587279 () Bool)

(assert (= bs!587279 d!1173782))

(declare-fun m!4530663 () Bool)

(assert (=> bs!587279 m!4530663))

(assert (=> b!3961501 d!1173782))

(declare-fun d!1173788 () Bool)

(assert (=> d!1173788 (= (size!31606 (_1!23887 (v!39387 lt!1386010))) (size!31607 (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010)))))))

(declare-fun Unit!60762 () Unit!60752)

(assert (=> d!1173788 (= (lemmaCharactersSize!1275 (_1!23887 (v!39387 lt!1386010))) Unit!60762)))

(declare-fun bs!587281 () Bool)

(assert (= bs!587281 d!1173788))

(assert (=> bs!587281 m!4530479))

(assert (=> b!3961501 d!1173788))

(declare-fun d!1173792 () Bool)

(declare-fun dynLambda!18031 (Int BalanceConc!25260) TokenValue!6852)

(assert (=> d!1173792 (= (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (seqFromList!4881 lt!1386002)) (dynLambda!18031 (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))) (seqFromList!4881 lt!1386002)))))

(declare-fun b_lambda!115859 () Bool)

(assert (=> (not b_lambda!115859) (not d!1173792)))

(declare-fun tb!238833 () Bool)

(declare-fun t!329909 () Bool)

(assert (=> (and b!3961517 (= (toValue!9102 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329909) tb!238833))

(declare-fun result!289218 () Bool)

(assert (=> tb!238833 (= result!289218 (inv!21 (dynLambda!18031 (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))) (seqFromList!4881 lt!1386002))))))

(declare-fun m!4530669 () Bool)

(assert (=> tb!238833 m!4530669))

(assert (=> d!1173792 t!329909))

(declare-fun b_and!304183 () Bool)

(assert (= b_and!304171 (and (=> t!329909 result!289218) b_and!304183)))

(declare-fun t!329911 () Bool)

(declare-fun tb!238835 () Bool)

(assert (=> (and b!3961531 (= (toValue!9102 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329911) tb!238835))

(declare-fun result!289222 () Bool)

(assert (= result!289222 result!289218))

(assert (=> d!1173792 t!329911))

(declare-fun b_and!304185 () Bool)

(assert (= b_and!304175 (and (=> t!329911 result!289222) b_and!304185)))

(declare-fun t!329913 () Bool)

(declare-fun tb!238837 () Bool)

(assert (=> (and b!3961530 (= (toValue!9102 (transformation!6622 (h!47635 rules!2768))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329913) tb!238837))

(declare-fun result!289224 () Bool)

(assert (= result!289224 result!289218))

(assert (=> d!1173792 t!329913))

(declare-fun b_and!304187 () Bool)

(assert (= b_and!304179 (and (=> t!329913 result!289224) b_and!304187)))

(assert (=> d!1173792 m!4530523))

(declare-fun m!4530671 () Bool)

(assert (=> d!1173792 m!4530671))

(assert (=> b!3961501 d!1173792))

(declare-fun d!1173794 () Bool)

(declare-fun lt!1386094 () List!42337)

(assert (=> d!1173794 (= (++!11001 lt!1386002 lt!1386094) lt!1386021)))

(declare-fun e!2453263 () List!42337)

(assert (=> d!1173794 (= lt!1386094 e!2453263)))

(declare-fun c!687416 () Bool)

(assert (=> d!1173794 (= c!687416 ((_ is Cons!42213) lt!1386002))))

(assert (=> d!1173794 (>= (size!31607 lt!1386021) (size!31607 lt!1386002))))

(assert (=> d!1173794 (= (getSuffix!2162 lt!1386021 lt!1386002) lt!1386094)))

(declare-fun b!3961668 () Bool)

(assert (=> b!3961668 (= e!2453263 (getSuffix!2162 (tail!6163 lt!1386021) (t!329904 lt!1386002)))))

(declare-fun b!3961669 () Bool)

(assert (=> b!3961669 (= e!2453263 lt!1386021)))

(assert (= (and d!1173794 c!687416) b!3961668))

(assert (= (and d!1173794 (not c!687416)) b!3961669))

(declare-fun m!4530673 () Bool)

(assert (=> d!1173794 m!4530673))

(assert (=> d!1173794 m!4530463))

(assert (=> d!1173794 m!4530539))

(assert (=> b!3961668 m!4530559))

(assert (=> b!3961668 m!4530559))

(declare-fun m!4530675 () Bool)

(assert (=> b!3961668 m!4530675))

(assert (=> b!3961501 d!1173794))

(declare-fun d!1173796 () Bool)

(declare-fun lt!1386107 () BalanceConc!25260)

(assert (=> d!1173796 (= (list!15668 lt!1386107) (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010))))))

(declare-fun dynLambda!18032 (Int TokenValue!6852) BalanceConc!25260)

(assert (=> d!1173796 (= lt!1386107 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))) (value!209361 (_1!23887 (v!39387 lt!1386010)))))))

(assert (=> d!1173796 (= (charsOf!4440 (_1!23887 (v!39387 lt!1386010))) lt!1386107)))

(declare-fun b_lambda!115861 () Bool)

(assert (=> (not b_lambda!115861) (not d!1173796)))

(declare-fun t!329915 () Bool)

(declare-fun tb!238839 () Bool)

(assert (=> (and b!3961517 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329915) tb!238839))

(declare-fun b!3961693 () Bool)

(declare-fun e!2453277 () Bool)

(declare-fun tp!1207513 () Bool)

(declare-fun inv!56445 (Conc!12833) Bool)

(assert (=> b!3961693 (= e!2453277 (and (inv!56445 (c!687381 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))) (value!209361 (_1!23887 (v!39387 lt!1386010)))))) tp!1207513))))

(declare-fun result!289226 () Bool)

(declare-fun inv!56446 (BalanceConc!25260) Bool)

(assert (=> tb!238839 (= result!289226 (and (inv!56446 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010))))) (value!209361 (_1!23887 (v!39387 lt!1386010))))) e!2453277))))

(assert (= tb!238839 b!3961693))

(declare-fun m!4530697 () Bool)

(assert (=> b!3961693 m!4530697))

(declare-fun m!4530699 () Bool)

(assert (=> tb!238839 m!4530699))

(assert (=> d!1173796 t!329915))

(declare-fun b_and!304189 () Bool)

(assert (= b_and!304173 (and (=> t!329915 result!289226) b_and!304189)))

(declare-fun t!329917 () Bool)

(declare-fun tb!238841 () Bool)

(assert (=> (and b!3961531 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329917) tb!238841))

(declare-fun result!289230 () Bool)

(assert (= result!289230 result!289226))

(assert (=> d!1173796 t!329917))

(declare-fun b_and!304191 () Bool)

(assert (= b_and!304177 (and (=> t!329917 result!289230) b_and!304191)))

(declare-fun tb!238843 () Bool)

(declare-fun t!329919 () Bool)

(assert (=> (and b!3961530 (= (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329919) tb!238843))

(declare-fun result!289232 () Bool)

(assert (= result!289232 result!289226))

(assert (=> d!1173796 t!329919))

(declare-fun b_and!304193 () Bool)

(assert (= b_and!304181 (and (=> t!329919 result!289232) b_and!304193)))

(declare-fun m!4530701 () Bool)

(assert (=> d!1173796 m!4530701))

(declare-fun m!4530703 () Bool)

(assert (=> d!1173796 m!4530703))

(assert (=> b!3961501 d!1173796))

(declare-fun d!1173806 () Bool)

(declare-fun e!2453280 () Bool)

(assert (=> d!1173806 e!2453280))

(declare-fun res!1603414 () Bool)

(assert (=> d!1173806 (=> res!1603414 e!2453280)))

(declare-fun lt!1386108 () Bool)

(assert (=> d!1173806 (= res!1603414 (not lt!1386108))))

(declare-fun e!2453279 () Bool)

(assert (=> d!1173806 (= lt!1386108 e!2453279)))

(declare-fun res!1603413 () Bool)

(assert (=> d!1173806 (=> res!1603413 e!2453279)))

(assert (=> d!1173806 (= res!1603413 ((_ is Nil!42213) lt!1386002))))

(assert (=> d!1173806 (= (isPrefix!3711 lt!1386002 lt!1386011) lt!1386108)))

(declare-fun b!3961699 () Bool)

(assert (=> b!3961699 (= e!2453280 (>= (size!31607 lt!1386011) (size!31607 lt!1386002)))))

(declare-fun b!3961696 () Bool)

(declare-fun e!2453281 () Bool)

(assert (=> b!3961696 (= e!2453279 e!2453281)))

(declare-fun res!1603416 () Bool)

(assert (=> b!3961696 (=> (not res!1603416) (not e!2453281))))

(assert (=> b!3961696 (= res!1603416 (not ((_ is Nil!42213) lt!1386011)))))

(declare-fun b!3961697 () Bool)

(declare-fun res!1603415 () Bool)

(assert (=> b!3961697 (=> (not res!1603415) (not e!2453281))))

(assert (=> b!3961697 (= res!1603415 (= (head!8431 lt!1386002) (head!8431 lt!1386011)))))

(declare-fun b!3961698 () Bool)

(assert (=> b!3961698 (= e!2453281 (isPrefix!3711 (tail!6163 lt!1386002) (tail!6163 lt!1386011)))))

(assert (= (and d!1173806 (not res!1603413)) b!3961696))

(assert (= (and b!3961696 res!1603416) b!3961697))

(assert (= (and b!3961697 res!1603415) b!3961698))

(assert (= (and d!1173806 (not res!1603414)) b!3961699))

(declare-fun m!4530705 () Bool)

(assert (=> b!3961699 m!4530705))

(assert (=> b!3961699 m!4530539))

(declare-fun m!4530707 () Bool)

(assert (=> b!3961697 m!4530707))

(declare-fun m!4530709 () Bool)

(assert (=> b!3961697 m!4530709))

(declare-fun m!4530711 () Bool)

(assert (=> b!3961698 m!4530711))

(declare-fun m!4530713 () Bool)

(assert (=> b!3961698 m!4530713))

(assert (=> b!3961698 m!4530711))

(assert (=> b!3961698 m!4530713))

(declare-fun m!4530715 () Bool)

(assert (=> b!3961698 m!4530715))

(assert (=> b!3961501 d!1173806))

(declare-fun d!1173808 () Bool)

(declare-fun fromListB!2253 (List!42337) BalanceConc!25260)

(assert (=> d!1173808 (= (seqFromList!4881 lt!1386002) (fromListB!2253 lt!1386002))))

(declare-fun bs!587283 () Bool)

(assert (= bs!587283 d!1173808))

(declare-fun m!4530737 () Bool)

(assert (=> bs!587283 m!4530737))

(assert (=> b!3961501 d!1173808))

(declare-fun d!1173820 () Bool)

(assert (=> d!1173820 (= (_2!23887 (v!39387 lt!1386010)) lt!1386028)))

(declare-fun lt!1386109 () Unit!60752)

(assert (=> d!1173820 (= lt!1386109 (choose!23667 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 lt!1386028 lt!1386021))))

(assert (=> d!1173820 (isPrefix!3711 lt!1386002 lt!1386021)))

(assert (=> d!1173820 (= (lemmaSamePrefixThenSameSuffix!1920 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 lt!1386028 lt!1386021) lt!1386109)))

(declare-fun bs!587284 () Bool)

(assert (= bs!587284 d!1173820))

(declare-fun m!4530743 () Bool)

(assert (=> bs!587284 m!4530743))

(assert (=> bs!587284 m!4530511))

(assert (=> b!3961501 d!1173820))

(declare-fun d!1173824 () Bool)

(assert (=> d!1173824 (isPrefix!3711 lt!1386002 (++!11001 lt!1386002 (_2!23887 (v!39387 lt!1386010))))))

(declare-fun lt!1386110 () Unit!60752)

(assert (=> d!1173824 (= lt!1386110 (choose!23664 lt!1386002 (_2!23887 (v!39387 lt!1386010))))))

(assert (=> d!1173824 (= (lemmaConcatTwoListThenFirstIsPrefix!2570 lt!1386002 (_2!23887 (v!39387 lt!1386010))) lt!1386110)))

(declare-fun bs!587285 () Bool)

(assert (= bs!587285 d!1173824))

(assert (=> bs!587285 m!4530519))

(assert (=> bs!587285 m!4530519))

(declare-fun m!4530751 () Bool)

(assert (=> bs!587285 m!4530751))

(declare-fun m!4530753 () Bool)

(assert (=> bs!587285 m!4530753))

(assert (=> b!3961501 d!1173824))

(declare-fun d!1173828 () Bool)

(assert (=> d!1173828 (ruleValid!2564 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))))))

(declare-fun lt!1386113 () Unit!60752)

(declare-fun choose!23669 (LexerInterface!6211 Rule!13044 List!42339) Unit!60752)

(assert (=> d!1173828 (= lt!1386113 (choose!23669 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) rules!2768))))

(declare-fun contains!8429 (List!42339 Rule!13044) Bool)

(assert (=> d!1173828 (contains!8429 rules!2768 (rule!9602 (_1!23887 (v!39387 lt!1386010))))))

(assert (=> d!1173828 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1640 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) rules!2768) lt!1386113)))

(declare-fun bs!587286 () Bool)

(assert (= bs!587286 d!1173828))

(assert (=> bs!587286 m!4530529))

(declare-fun m!4530755 () Bool)

(assert (=> bs!587286 m!4530755))

(declare-fun m!4530757 () Bool)

(assert (=> bs!587286 m!4530757))

(assert (=> b!3961501 d!1173828))

(declare-fun b!3961753 () Bool)

(declare-fun e!2453309 () Option!9042)

(declare-fun lt!1386142 () Option!9042)

(declare-fun lt!1386140 () Option!9042)

(assert (=> b!3961753 (= e!2453309 (ite (and ((_ is None!9041) lt!1386142) ((_ is None!9041) lt!1386140)) None!9041 (ite ((_ is None!9041) lt!1386140) lt!1386142 (ite ((_ is None!9041) lt!1386142) lt!1386140 (ite (>= (size!31606 (_1!23887 (v!39387 lt!1386142))) (size!31606 (_1!23887 (v!39387 lt!1386140)))) lt!1386142 lt!1386140)))))))

(declare-fun call!285427 () Option!9042)

(assert (=> b!3961753 (= lt!1386142 call!285427)))

(assert (=> b!3961753 (= lt!1386140 (maxPrefix!3515 thiss!20629 (t!329906 rules!2768) lt!1386021))))

(declare-fun b!3961754 () Bool)

(declare-fun e!2453310 () Bool)

(declare-fun e!2453308 () Bool)

(assert (=> b!3961754 (= e!2453310 e!2453308)))

(declare-fun res!1603453 () Bool)

(assert (=> b!3961754 (=> (not res!1603453) (not e!2453308))))

(declare-fun lt!1386139 () Option!9042)

(declare-fun isDefined!7000 (Option!9042) Bool)

(assert (=> b!3961754 (= res!1603453 (isDefined!7000 lt!1386139))))

(declare-fun b!3961755 () Bool)

(declare-fun res!1603455 () Bool)

(assert (=> b!3961755 (=> (not res!1603455) (not e!2453308))))

(assert (=> b!3961755 (= res!1603455 (= (list!15668 (charsOf!4440 (_1!23887 (get!13923 lt!1386139)))) (originalCharacters!7222 (_1!23887 (get!13923 lt!1386139)))))))

(declare-fun b!3961756 () Bool)

(assert (=> b!3961756 (= e!2453308 (contains!8429 rules!2768 (rule!9602 (_1!23887 (get!13923 lt!1386139)))))))

(declare-fun b!3961757 () Bool)

(declare-fun res!1603457 () Bool)

(assert (=> b!3961757 (=> (not res!1603457) (not e!2453308))))

(assert (=> b!3961757 (= res!1603457 (< (size!31607 (_2!23887 (get!13923 lt!1386139))) (size!31607 lt!1386021)))))

(declare-fun d!1173830 () Bool)

(assert (=> d!1173830 e!2453310))

(declare-fun res!1603456 () Bool)

(assert (=> d!1173830 (=> res!1603456 e!2453310)))

(declare-fun isEmpty!25252 (Option!9042) Bool)

(assert (=> d!1173830 (= res!1603456 (isEmpty!25252 lt!1386139))))

(assert (=> d!1173830 (= lt!1386139 e!2453309)))

(declare-fun c!687429 () Bool)

(assert (=> d!1173830 (= c!687429 (and ((_ is Cons!42215) rules!2768) ((_ is Nil!42215) (t!329906 rules!2768))))))

(declare-fun lt!1386138 () Unit!60752)

(declare-fun lt!1386141 () Unit!60752)

(assert (=> d!1173830 (= lt!1386138 lt!1386141)))

(assert (=> d!1173830 (isPrefix!3711 lt!1386021 lt!1386021)))

(declare-fun lemmaIsPrefixRefl!2341 (List!42337 List!42337) Unit!60752)

(assert (=> d!1173830 (= lt!1386141 (lemmaIsPrefixRefl!2341 lt!1386021 lt!1386021))))

(declare-fun rulesValidInductive!2399 (LexerInterface!6211 List!42339) Bool)

(assert (=> d!1173830 (rulesValidInductive!2399 thiss!20629 rules!2768)))

(assert (=> d!1173830 (= (maxPrefix!3515 thiss!20629 rules!2768 lt!1386021) lt!1386139)))

(declare-fun b!3961758 () Bool)

(declare-fun res!1603451 () Bool)

(assert (=> b!3961758 (=> (not res!1603451) (not e!2453308))))

(assert (=> b!3961758 (= res!1603451 (= (++!11001 (list!15668 (charsOf!4440 (_1!23887 (get!13923 lt!1386139)))) (_2!23887 (get!13923 lt!1386139))) lt!1386021))))

(declare-fun bm!285422 () Bool)

(assert (=> bm!285422 (= call!285427 (maxPrefixOneRule!2565 thiss!20629 (h!47635 rules!2768) lt!1386021))))

(declare-fun b!3961759 () Bool)

(declare-fun res!1603452 () Bool)

(assert (=> b!3961759 (=> (not res!1603452) (not e!2453308))))

(declare-fun matchR!5540 (Regex!11527 List!42337) Bool)

(assert (=> b!3961759 (= res!1603452 (matchR!5540 (regex!6622 (rule!9602 (_1!23887 (get!13923 lt!1386139)))) (list!15668 (charsOf!4440 (_1!23887 (get!13923 lt!1386139))))))))

(declare-fun b!3961760 () Bool)

(declare-fun res!1603454 () Bool)

(assert (=> b!3961760 (=> (not res!1603454) (not e!2453308))))

(assert (=> b!3961760 (= res!1603454 (= (value!209361 (_1!23887 (get!13923 lt!1386139))) (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (get!13923 lt!1386139)))) (seqFromList!4881 (originalCharacters!7222 (_1!23887 (get!13923 lt!1386139)))))))))

(declare-fun b!3961761 () Bool)

(assert (=> b!3961761 (= e!2453309 call!285427)))

(assert (= (and d!1173830 c!687429) b!3961761))

(assert (= (and d!1173830 (not c!687429)) b!3961753))

(assert (= (or b!3961761 b!3961753) bm!285422))

(assert (= (and d!1173830 (not res!1603456)) b!3961754))

(assert (= (and b!3961754 res!1603453) b!3961755))

(assert (= (and b!3961755 res!1603455) b!3961757))

(assert (= (and b!3961757 res!1603457) b!3961758))

(assert (= (and b!3961758 res!1603451) b!3961760))

(assert (= (and b!3961760 res!1603454) b!3961759))

(assert (= (and b!3961759 res!1603452) b!3961756))

(declare-fun m!4530763 () Bool)

(assert (=> b!3961759 m!4530763))

(declare-fun m!4530765 () Bool)

(assert (=> b!3961759 m!4530765))

(assert (=> b!3961759 m!4530765))

(declare-fun m!4530767 () Bool)

(assert (=> b!3961759 m!4530767))

(assert (=> b!3961759 m!4530767))

(declare-fun m!4530769 () Bool)

(assert (=> b!3961759 m!4530769))

(assert (=> b!3961755 m!4530763))

(assert (=> b!3961755 m!4530765))

(assert (=> b!3961755 m!4530765))

(assert (=> b!3961755 m!4530767))

(declare-fun m!4530771 () Bool)

(assert (=> d!1173830 m!4530771))

(declare-fun m!4530773 () Bool)

(assert (=> d!1173830 m!4530773))

(declare-fun m!4530775 () Bool)

(assert (=> d!1173830 m!4530775))

(declare-fun m!4530777 () Bool)

(assert (=> d!1173830 m!4530777))

(declare-fun m!4530779 () Bool)

(assert (=> b!3961753 m!4530779))

(assert (=> b!3961760 m!4530763))

(declare-fun m!4530781 () Bool)

(assert (=> b!3961760 m!4530781))

(assert (=> b!3961760 m!4530781))

(declare-fun m!4530783 () Bool)

(assert (=> b!3961760 m!4530783))

(assert (=> b!3961756 m!4530763))

(declare-fun m!4530785 () Bool)

(assert (=> b!3961756 m!4530785))

(declare-fun m!4530787 () Bool)

(assert (=> bm!285422 m!4530787))

(declare-fun m!4530789 () Bool)

(assert (=> b!3961754 m!4530789))

(assert (=> b!3961757 m!4530763))

(declare-fun m!4530791 () Bool)

(assert (=> b!3961757 m!4530791))

(assert (=> b!3961757 m!4530463))

(assert (=> b!3961758 m!4530763))

(assert (=> b!3961758 m!4530765))

(assert (=> b!3961758 m!4530765))

(assert (=> b!3961758 m!4530767))

(assert (=> b!3961758 m!4530767))

(declare-fun m!4530793 () Bool)

(assert (=> b!3961758 m!4530793))

(assert (=> b!3961522 d!1173830))

(declare-fun d!1173838 () Bool)

(declare-fun e!2453312 () Bool)

(assert (=> d!1173838 e!2453312))

(declare-fun res!1603459 () Bool)

(assert (=> d!1173838 (=> res!1603459 e!2453312)))

(declare-fun lt!1386143 () Bool)

(assert (=> d!1173838 (= res!1603459 (not lt!1386143))))

(declare-fun e!2453311 () Bool)

(assert (=> d!1173838 (= lt!1386143 e!2453311)))

(declare-fun res!1603458 () Bool)

(assert (=> d!1173838 (=> res!1603458 e!2453311)))

(assert (=> d!1173838 (= res!1603458 ((_ is Nil!42213) lt!1386002))))

(assert (=> d!1173838 (= (isPrefix!3711 lt!1386002 lt!1386021) lt!1386143)))

(declare-fun b!3961765 () Bool)

(assert (=> b!3961765 (= e!2453312 (>= (size!31607 lt!1386021) (size!31607 lt!1386002)))))

(declare-fun b!3961762 () Bool)

(declare-fun e!2453313 () Bool)

(assert (=> b!3961762 (= e!2453311 e!2453313)))

(declare-fun res!1603461 () Bool)

(assert (=> b!3961762 (=> (not res!1603461) (not e!2453313))))

(assert (=> b!3961762 (= res!1603461 (not ((_ is Nil!42213) lt!1386021)))))

(declare-fun b!3961763 () Bool)

(declare-fun res!1603460 () Bool)

(assert (=> b!3961763 (=> (not res!1603460) (not e!2453313))))

(assert (=> b!3961763 (= res!1603460 (= (head!8431 lt!1386002) (head!8431 lt!1386021)))))

(declare-fun b!3961764 () Bool)

(assert (=> b!3961764 (= e!2453313 (isPrefix!3711 (tail!6163 lt!1386002) (tail!6163 lt!1386021)))))

(assert (= (and d!1173838 (not res!1603458)) b!3961762))

(assert (= (and b!3961762 res!1603461) b!3961763))

(assert (= (and b!3961763 res!1603460) b!3961764))

(assert (= (and d!1173838 (not res!1603459)) b!3961765))

(assert (=> b!3961765 m!4530463))

(assert (=> b!3961765 m!4530539))

(assert (=> b!3961763 m!4530707))

(assert (=> b!3961763 m!4530555))

(assert (=> b!3961764 m!4530711))

(assert (=> b!3961764 m!4530559))

(assert (=> b!3961764 m!4530711))

(assert (=> b!3961764 m!4530559))

(declare-fun m!4530795 () Bool)

(assert (=> b!3961764 m!4530795))

(assert (=> b!3961499 d!1173838))

(assert (=> b!3961499 d!1173738))

(assert (=> b!3961499 d!1173736))

(declare-fun d!1173840 () Bool)

(declare-fun lt!1386144 () Int)

(assert (=> d!1173840 (>= lt!1386144 0)))

(declare-fun e!2453314 () Int)

(assert (=> d!1173840 (= lt!1386144 e!2453314)))

(declare-fun c!687430 () Bool)

(assert (=> d!1173840 (= c!687430 ((_ is Nil!42213) prefix!426))))

(assert (=> d!1173840 (= (size!31607 prefix!426) lt!1386144)))

(declare-fun b!3961766 () Bool)

(assert (=> b!3961766 (= e!2453314 0)))

(declare-fun b!3961767 () Bool)

(assert (=> b!3961767 (= e!2453314 (+ 1 (size!31607 (t!329904 prefix!426))))))

(assert (= (and d!1173840 c!687430) b!3961766))

(assert (= (and d!1173840 (not c!687430)) b!3961767))

(declare-fun m!4530797 () Bool)

(assert (=> b!3961767 m!4530797))

(assert (=> b!3961520 d!1173840))

(declare-fun d!1173842 () Bool)

(assert (=> d!1173842 (and (= lt!1386002 lt!1386002) (= (_2!23887 (v!39387 lt!1386010)) (_2!23887 lt!1386004)))))

(declare-fun lt!1386152 () Unit!60752)

(declare-fun choose!23670 (List!42337 List!42337 List!42337 List!42337) Unit!60752)

(assert (=> d!1173842 (= lt!1386152 (choose!23670 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 (_2!23887 lt!1386004)))))

(assert (=> d!1173842 (= (++!11001 lt!1386002 (_2!23887 (v!39387 lt!1386010))) (++!11001 lt!1386002 (_2!23887 lt!1386004)))))

(assert (=> d!1173842 (= (lemmaConcatSameAndSameSizesThenSameLists!616 lt!1386002 (_2!23887 (v!39387 lt!1386010)) lt!1386002 (_2!23887 lt!1386004)) lt!1386152)))

(declare-fun bs!587288 () Bool)

(assert (= bs!587288 d!1173842))

(declare-fun m!4530803 () Bool)

(assert (=> bs!587288 m!4530803))

(assert (=> bs!587288 m!4530519))

(declare-fun m!4530807 () Bool)

(assert (=> bs!587288 m!4530807))

(assert (=> b!3961521 d!1173842))

(declare-fun d!1173844 () Bool)

(assert (=> d!1173844 (not (= (lexList!1979 thiss!20629 rules!2768 (_2!23887 lt!1386004)) (tuple2!41509 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1386156 () Unit!60752)

(declare-fun choose!23671 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42340 List!42337) Unit!60752)

(assert (=> d!1173844 (= lt!1386156 (choose!23671 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91))))

(assert (=> d!1173844 (not (isEmpty!25250 rules!2768))))

(assert (=> d!1173844 (= (lemmaLexWithSmallerInputCannotProduceSameResults!150 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91) lt!1386156)))

(declare-fun bs!587289 () Bool)

(assert (= bs!587289 d!1173844))

(assert (=> bs!587289 m!4530473))

(declare-fun m!4530847 () Bool)

(assert (=> bs!587289 m!4530847))

(assert (=> bs!587289 m!4530513))

(assert (=> b!3961521 d!1173844))

(declare-fun d!1173852 () Bool)

(assert (=> d!1173852 (= (head!8429 prefixTokens!80) (h!47636 prefixTokens!80))))

(assert (=> b!3961507 d!1173852))

(declare-fun d!1173854 () Bool)

(assert (=> d!1173854 (= (isEmpty!25250 rules!2768) ((_ is Nil!42215) rules!2768))))

(assert (=> b!3961528 d!1173854))

(declare-fun d!1173856 () Bool)

(declare-fun lt!1386157 () Int)

(assert (=> d!1173856 (>= lt!1386157 0)))

(declare-fun e!2453320 () Int)

(assert (=> d!1173856 (= lt!1386157 e!2453320)))

(declare-fun c!687433 () Bool)

(assert (=> d!1173856 (= c!687433 ((_ is Nil!42213) (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010)))))))

(assert (=> d!1173856 (= (size!31607 (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010)))) lt!1386157)))

(declare-fun b!3961779 () Bool)

(assert (=> b!3961779 (= e!2453320 0)))

(declare-fun b!3961780 () Bool)

(assert (=> b!3961780 (= e!2453320 (+ 1 (size!31607 (t!329904 (originalCharacters!7222 (_1!23887 (v!39387 lt!1386010)))))))))

(assert (= (and d!1173856 c!687433) b!3961779))

(assert (= (and d!1173856 (not c!687433)) b!3961780))

(declare-fun m!4530849 () Bool)

(assert (=> b!3961780 m!4530849))

(assert (=> b!3961529 d!1173856))

(declare-fun d!1173858 () Bool)

(declare-fun lt!1386158 () Int)

(assert (=> d!1173858 (>= lt!1386158 0)))

(declare-fun e!2453321 () Int)

(assert (=> d!1173858 (= lt!1386158 e!2453321)))

(declare-fun c!687434 () Bool)

(assert (=> d!1173858 (= c!687434 ((_ is Nil!42213) suffix!1176))))

(assert (=> d!1173858 (= (size!31607 suffix!1176) lt!1386158)))

(declare-fun b!3961781 () Bool)

(assert (=> b!3961781 (= e!2453321 0)))

(declare-fun b!3961782 () Bool)

(assert (=> b!3961782 (= e!2453321 (+ 1 (size!31607 (t!329904 suffix!1176))))))

(assert (= (and d!1173858 c!687434) b!3961781))

(assert (= (and d!1173858 (not c!687434)) b!3961782))

(declare-fun m!4530851 () Bool)

(assert (=> b!3961782 m!4530851))

(assert (=> b!3961506 d!1173858))

(declare-fun d!1173860 () Bool)

(declare-fun lt!1386159 () Int)

(assert (=> d!1173860 (>= lt!1386159 0)))

(declare-fun e!2453322 () Int)

(assert (=> d!1173860 (= lt!1386159 e!2453322)))

(declare-fun c!687435 () Bool)

(assert (=> d!1173860 (= c!687435 ((_ is Nil!42213) (_2!23887 (v!39387 lt!1386010))))))

(assert (=> d!1173860 (= (size!31607 (_2!23887 (v!39387 lt!1386010))) lt!1386159)))

(declare-fun b!3961783 () Bool)

(assert (=> b!3961783 (= e!2453322 0)))

(declare-fun b!3961784 () Bool)

(assert (=> b!3961784 (= e!2453322 (+ 1 (size!31607 (t!329904 (_2!23887 (v!39387 lt!1386010))))))))

(assert (= (and d!1173860 c!687435) b!3961783))

(assert (= (and d!1173860 (not c!687435)) b!3961784))

(declare-fun m!4530853 () Bool)

(assert (=> b!3961784 m!4530853))

(assert (=> b!3961506 d!1173860))

(declare-fun d!1173862 () Bool)

(assert (=> d!1173862 (= (inv!56438 (tag!7482 (rule!9602 (h!47636 suffixTokens!72)))) (= (mod (str.len (value!209360 (tag!7482 (rule!9602 (h!47636 suffixTokens!72))))) 2) 0))))

(assert (=> b!3961504 d!1173862))

(declare-fun d!1173864 () Bool)

(declare-fun res!1603471 () Bool)

(declare-fun e!2453325 () Bool)

(assert (=> d!1173864 (=> (not res!1603471) (not e!2453325))))

(declare-fun semiInverseModEq!2853 (Int Int) Bool)

(assert (=> d!1173864 (= res!1603471 (semiInverseModEq!2853 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toValue!9102 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))))))

(assert (=> d!1173864 (= (inv!56441 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) e!2453325)))

(declare-fun b!3961787 () Bool)

(declare-fun equivClasses!2752 (Int Int) Bool)

(assert (=> b!3961787 (= e!2453325 (equivClasses!2752 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toValue!9102 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))))))

(assert (= (and d!1173864 res!1603471) b!3961787))

(declare-fun m!4530855 () Bool)

(assert (=> d!1173864 m!4530855))

(declare-fun m!4530857 () Bool)

(assert (=> b!3961787 m!4530857))

(assert (=> b!3961504 d!1173864))

(declare-fun d!1173866 () Bool)

(assert (=> d!1173866 (= (get!13923 lt!1386010) (v!39387 lt!1386010))))

(assert (=> b!3961503 d!1173866))

(declare-fun b!3961871 () Bool)

(declare-fun e!2453366 () Option!9042)

(declare-datatypes ((tuple2!41512 0))(
  ( (tuple2!41513 (_1!23890 List!42337) (_2!23890 List!42337)) )
))
(declare-fun lt!1386206 () tuple2!41512)

(declare-fun size!31611 (BalanceConc!25260) Int)

(assert (=> b!3961871 (= e!2453366 (Some!9041 (tuple2!41507 (Token!12383 (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (seqFromList!4881 (_1!23890 lt!1386206))) (rule!9602 (_1!23887 (v!39387 lt!1386010))) (size!31611 (seqFromList!4881 (_1!23890 lt!1386206))) (_1!23890 lt!1386206)) (_2!23890 lt!1386206))))))

(declare-fun lt!1386209 () Unit!60752)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1269 (Regex!11527 List!42337) Unit!60752)

(assert (=> b!3961871 (= lt!1386209 (longestMatchIsAcceptedByMatchOrIsEmpty!1269 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) lt!1386021))))

(declare-fun res!1603527 () Bool)

(declare-fun findLongestMatchInner!1296 (Regex!11527 List!42337 Int List!42337 List!42337 Int) tuple2!41512)

(assert (=> b!3961871 (= res!1603527 (isEmpty!25249 (_1!23890 (findLongestMatchInner!1296 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) Nil!42213 (size!31607 Nil!42213) lt!1386021 lt!1386021 (size!31607 lt!1386021)))))))

(declare-fun e!2453368 () Bool)

(assert (=> b!3961871 (=> res!1603527 e!2453368)))

(assert (=> b!3961871 e!2453368))

(declare-fun lt!1386210 () Unit!60752)

(assert (=> b!3961871 (= lt!1386210 lt!1386209)))

(declare-fun lt!1386207 () Unit!60752)

(declare-fun lemmaSemiInverse!1804 (TokenValueInjection!13132 BalanceConc!25260) Unit!60752)

(assert (=> b!3961871 (= lt!1386207 (lemmaSemiInverse!1804 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (seqFromList!4881 (_1!23890 lt!1386206))))))

(declare-fun b!3961872 () Bool)

(declare-fun e!2453367 () Bool)

(declare-fun e!2453369 () Bool)

(assert (=> b!3961872 (= e!2453367 e!2453369)))

(declare-fun res!1603524 () Bool)

(assert (=> b!3961872 (=> (not res!1603524) (not e!2453369))))

(declare-fun lt!1386208 () Option!9042)

(assert (=> b!3961872 (= res!1603524 (matchR!5540 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (list!15668 (charsOf!4440 (_1!23887 (get!13923 lt!1386208))))))))

(declare-fun b!3961873 () Bool)

(assert (=> b!3961873 (= e!2453369 (= (size!31606 (_1!23887 (get!13923 lt!1386208))) (size!31607 (originalCharacters!7222 (_1!23887 (get!13923 lt!1386208))))))))

(declare-fun b!3961870 () Bool)

(declare-fun res!1603528 () Bool)

(assert (=> b!3961870 (=> (not res!1603528) (not e!2453369))))

(assert (=> b!3961870 (= res!1603528 (= (rule!9602 (_1!23887 (get!13923 lt!1386208))) (rule!9602 (_1!23887 (v!39387 lt!1386010)))))))

(declare-fun d!1173868 () Bool)

(assert (=> d!1173868 e!2453367))

(declare-fun res!1603530 () Bool)

(assert (=> d!1173868 (=> res!1603530 e!2453367)))

(assert (=> d!1173868 (= res!1603530 (isEmpty!25252 lt!1386208))))

(assert (=> d!1173868 (= lt!1386208 e!2453366)))

(declare-fun c!687449 () Bool)

(assert (=> d!1173868 (= c!687449 (isEmpty!25249 (_1!23890 lt!1386206)))))

(declare-fun findLongestMatch!1209 (Regex!11527 List!42337) tuple2!41512)

(assert (=> d!1173868 (= lt!1386206 (findLongestMatch!1209 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) lt!1386021))))

(assert (=> d!1173868 (ruleValid!2564 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))))))

(assert (=> d!1173868 (= (maxPrefixOneRule!2565 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) lt!1386021) lt!1386208)))

(declare-fun b!3961874 () Bool)

(declare-fun res!1603525 () Bool)

(assert (=> b!3961874 (=> (not res!1603525) (not e!2453369))))

(assert (=> b!3961874 (= res!1603525 (< (size!31607 (_2!23887 (get!13923 lt!1386208))) (size!31607 lt!1386021)))))

(declare-fun b!3961875 () Bool)

(declare-fun res!1603526 () Bool)

(assert (=> b!3961875 (=> (not res!1603526) (not e!2453369))))

(assert (=> b!3961875 (= res!1603526 (= (value!209361 (_1!23887 (get!13923 lt!1386208))) (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (get!13923 lt!1386208)))) (seqFromList!4881 (originalCharacters!7222 (_1!23887 (get!13923 lt!1386208)))))))))

(declare-fun b!3961876 () Bool)

(assert (=> b!3961876 (= e!2453366 None!9041)))

(declare-fun b!3961877 () Bool)

(declare-fun res!1603529 () Bool)

(assert (=> b!3961877 (=> (not res!1603529) (not e!2453369))))

(assert (=> b!3961877 (= res!1603529 (= (++!11001 (list!15668 (charsOf!4440 (_1!23887 (get!13923 lt!1386208)))) (_2!23887 (get!13923 lt!1386208))) lt!1386021))))

(declare-fun b!3961878 () Bool)

(assert (=> b!3961878 (= e!2453368 (matchR!5540 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (_1!23890 (findLongestMatchInner!1296 (regex!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) Nil!42213 (size!31607 Nil!42213) lt!1386021 lt!1386021 (size!31607 lt!1386021)))))))

(assert (= (and d!1173868 c!687449) b!3961876))

(assert (= (and d!1173868 (not c!687449)) b!3961871))

(assert (= (and b!3961871 (not res!1603527)) b!3961878))

(assert (= (and d!1173868 (not res!1603530)) b!3961872))

(assert (= (and b!3961872 res!1603524) b!3961877))

(assert (= (and b!3961877 res!1603529) b!3961874))

(assert (= (and b!3961874 res!1603525) b!3961870))

(assert (= (and b!3961870 res!1603528) b!3961875))

(assert (= (and b!3961875 res!1603526) b!3961873))

(declare-fun m!4530999 () Bool)

(assert (=> d!1173868 m!4530999))

(declare-fun m!4531001 () Bool)

(assert (=> d!1173868 m!4531001))

(declare-fun m!4531003 () Bool)

(assert (=> d!1173868 m!4531003))

(assert (=> d!1173868 m!4530529))

(declare-fun m!4531005 () Bool)

(assert (=> b!3961877 m!4531005))

(declare-fun m!4531007 () Bool)

(assert (=> b!3961877 m!4531007))

(assert (=> b!3961877 m!4531007))

(declare-fun m!4531009 () Bool)

(assert (=> b!3961877 m!4531009))

(assert (=> b!3961877 m!4531009))

(declare-fun m!4531011 () Bool)

(assert (=> b!3961877 m!4531011))

(declare-fun m!4531013 () Bool)

(assert (=> b!3961871 m!4531013))

(assert (=> b!3961871 m!4530463))

(declare-fun m!4531015 () Bool)

(assert (=> b!3961871 m!4531015))

(declare-fun m!4531017 () Bool)

(assert (=> b!3961871 m!4531017))

(assert (=> b!3961871 m!4531013))

(declare-fun m!4531019 () Bool)

(assert (=> b!3961871 m!4531019))

(declare-fun m!4531021 () Bool)

(assert (=> b!3961871 m!4531021))

(declare-fun m!4531023 () Bool)

(assert (=> b!3961871 m!4531023))

(assert (=> b!3961871 m!4531019))

(declare-fun m!4531025 () Bool)

(assert (=> b!3961871 m!4531025))

(assert (=> b!3961871 m!4531019))

(assert (=> b!3961871 m!4531019))

(declare-fun m!4531027 () Bool)

(assert (=> b!3961871 m!4531027))

(assert (=> b!3961871 m!4530463))

(assert (=> b!3961875 m!4531005))

(declare-fun m!4531029 () Bool)

(assert (=> b!3961875 m!4531029))

(assert (=> b!3961875 m!4531029))

(declare-fun m!4531031 () Bool)

(assert (=> b!3961875 m!4531031))

(assert (=> b!3961870 m!4531005))

(assert (=> b!3961872 m!4531005))

(assert (=> b!3961872 m!4531007))

(assert (=> b!3961872 m!4531007))

(assert (=> b!3961872 m!4531009))

(assert (=> b!3961872 m!4531009))

(declare-fun m!4531033 () Bool)

(assert (=> b!3961872 m!4531033))

(assert (=> b!3961873 m!4531005))

(declare-fun m!4531035 () Bool)

(assert (=> b!3961873 m!4531035))

(assert (=> b!3961874 m!4531005))

(declare-fun m!4531037 () Bool)

(assert (=> b!3961874 m!4531037))

(assert (=> b!3961874 m!4530463))

(assert (=> b!3961878 m!4531013))

(assert (=> b!3961878 m!4530463))

(assert (=> b!3961878 m!4531013))

(assert (=> b!3961878 m!4530463))

(assert (=> b!3961878 m!4531015))

(declare-fun m!4531039 () Bool)

(assert (=> b!3961878 m!4531039))

(assert (=> b!3961503 d!1173868))

(declare-fun d!1173912 () Bool)

(declare-fun lt!1386215 () Int)

(assert (=> d!1173912 (>= lt!1386215 0)))

(declare-fun e!2453389 () Int)

(assert (=> d!1173912 (= lt!1386215 e!2453389)))

(declare-fun c!687454 () Bool)

(assert (=> d!1173912 (= c!687454 ((_ is Nil!42213) lt!1386021))))

(assert (=> d!1173912 (= (size!31607 lt!1386021) lt!1386215)))

(declare-fun b!3961903 () Bool)

(assert (=> b!3961903 (= e!2453389 0)))

(declare-fun b!3961904 () Bool)

(assert (=> b!3961904 (= e!2453389 (+ 1 (size!31607 (t!329904 lt!1386021))))))

(assert (= (and d!1173912 c!687454) b!3961903))

(assert (= (and d!1173912 (not c!687454)) b!3961904))

(declare-fun m!4531041 () Bool)

(assert (=> b!3961904 m!4531041))

(assert (=> b!3961503 d!1173912))

(declare-fun d!1173914 () Bool)

(declare-fun lt!1386216 () Int)

(assert (=> d!1173914 (>= lt!1386216 0)))

(declare-fun e!2453392 () Int)

(assert (=> d!1173914 (= lt!1386216 e!2453392)))

(declare-fun c!687455 () Bool)

(assert (=> d!1173914 (= c!687455 ((_ is Nil!42213) (_2!23887 lt!1386004)))))

(assert (=> d!1173914 (= (size!31607 (_2!23887 lt!1386004)) lt!1386216)))

(declare-fun b!3961907 () Bool)

(assert (=> b!3961907 (= e!2453392 0)))

(declare-fun b!3961908 () Bool)

(assert (=> b!3961908 (= e!2453392 (+ 1 (size!31607 (t!329904 (_2!23887 lt!1386004)))))))

(assert (= (and d!1173914 c!687455) b!3961907))

(assert (= (and d!1173914 (not c!687455)) b!3961908))

(declare-fun m!4531043 () Bool)

(assert (=> b!3961908 m!4531043))

(assert (=> b!3961503 d!1173914))

(declare-fun d!1173916 () Bool)

(assert (=> d!1173916 (= (maxPrefixOneRule!2565 thiss!20629 (rule!9602 (_1!23887 (v!39387 lt!1386010))) lt!1386021) (Some!9041 (tuple2!41507 (Token!12383 (apply!9853 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))) (seqFromList!4881 lt!1386002)) (rule!9602 (_1!23887 (v!39387 lt!1386010))) (size!31607 lt!1386002) lt!1386002) (_2!23887 (v!39387 lt!1386010)))))))

(declare-fun lt!1386219 () Unit!60752)

(declare-fun choose!23673 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42337 Rule!13044) Unit!60752)

(assert (=> d!1173916 (= lt!1386219 (choose!23673 thiss!20629 rules!2768 lt!1386002 lt!1386021 (_2!23887 (v!39387 lt!1386010)) (rule!9602 (_1!23887 (v!39387 lt!1386010)))))))

(assert (=> d!1173916 (not (isEmpty!25250 rules!2768))))

(assert (=> d!1173916 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1391 thiss!20629 rules!2768 lt!1386002 lt!1386021 (_2!23887 (v!39387 lt!1386010)) (rule!9602 (_1!23887 (v!39387 lt!1386010)))) lt!1386219)))

(declare-fun bs!587297 () Bool)

(assert (= bs!587297 d!1173916))

(assert (=> bs!587297 m!4530539))

(assert (=> bs!587297 m!4530523))

(declare-fun m!4531065 () Bool)

(assert (=> bs!587297 m!4531065))

(assert (=> bs!587297 m!4530465))

(assert (=> bs!587297 m!4530523))

(assert (=> bs!587297 m!4530525))

(assert (=> bs!587297 m!4530513))

(assert (=> b!3961503 d!1173916))

(declare-fun d!1173918 () Bool)

(assert (=> d!1173918 (= (isEmpty!25249 prefix!426) ((_ is Nil!42213) prefix!426))))

(assert (=> b!3961524 d!1173918))

(declare-fun b!3961953 () Bool)

(declare-fun e!2453426 () tuple2!41508)

(assert (=> b!3961953 (= e!2453426 (tuple2!41509 Nil!42216 lt!1386021))))

(declare-fun b!3961954 () Bool)

(declare-fun e!2453425 () Bool)

(declare-fun lt!1386220 () tuple2!41508)

(assert (=> b!3961954 (= e!2453425 (= (_2!23888 lt!1386220) lt!1386021))))

(declare-fun b!3961955 () Bool)

(declare-fun lt!1386222 () Option!9042)

(declare-fun lt!1386221 () tuple2!41508)

(assert (=> b!3961955 (= e!2453426 (tuple2!41509 (Cons!42216 (_1!23887 (v!39387 lt!1386222)) (_1!23888 lt!1386221)) (_2!23888 lt!1386221)))))

(assert (=> b!3961955 (= lt!1386221 (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386222))))))

(declare-fun b!3961956 () Bool)

(declare-fun e!2453427 () Bool)

(assert (=> b!3961956 (= e!2453425 e!2453427)))

(declare-fun res!1603533 () Bool)

(assert (=> b!3961956 (= res!1603533 (< (size!31607 (_2!23888 lt!1386220)) (size!31607 lt!1386021)))))

(assert (=> b!3961956 (=> (not res!1603533) (not e!2453427))))

(declare-fun d!1173920 () Bool)

(assert (=> d!1173920 e!2453425))

(declare-fun c!687456 () Bool)

(assert (=> d!1173920 (= c!687456 (> (size!31609 (_1!23888 lt!1386220)) 0))))

(assert (=> d!1173920 (= lt!1386220 e!2453426)))

(declare-fun c!687457 () Bool)

(assert (=> d!1173920 (= c!687457 ((_ is Some!9041) lt!1386222))))

(assert (=> d!1173920 (= lt!1386222 (maxPrefix!3515 thiss!20629 rules!2768 lt!1386021))))

(assert (=> d!1173920 (= (lexList!1979 thiss!20629 rules!2768 lt!1386021) lt!1386220)))

(declare-fun b!3961957 () Bool)

(assert (=> b!3961957 (= e!2453427 (not (isEmpty!25248 (_1!23888 lt!1386220))))))

(assert (= (and d!1173920 c!687457) b!3961955))

(assert (= (and d!1173920 (not c!687457)) b!3961953))

(assert (= (and d!1173920 c!687456) b!3961956))

(assert (= (and d!1173920 (not c!687456)) b!3961954))

(assert (= (and b!3961956 res!1603533) b!3961957))

(declare-fun m!4531067 () Bool)

(assert (=> b!3961955 m!4531067))

(declare-fun m!4531069 () Bool)

(assert (=> b!3961956 m!4531069))

(assert (=> b!3961956 m!4530463))

(declare-fun m!4531071 () Bool)

(assert (=> d!1173920 m!4531071))

(assert (=> d!1173920 m!4530495))

(declare-fun m!4531073 () Bool)

(assert (=> b!3961957 m!4531073))

(assert (=> b!3961525 d!1173920))

(declare-fun b!3961968 () Bool)

(declare-fun res!1603539 () Bool)

(declare-fun e!2453432 () Bool)

(assert (=> b!3961968 (=> (not res!1603539) (not e!2453432))))

(declare-fun lt!1386225 () List!42340)

(assert (=> b!3961968 (= res!1603539 (= (size!31609 lt!1386225) (+ (size!31609 prefixTokens!80) (size!31609 suffixTokens!72))))))

(declare-fun b!3961969 () Bool)

(assert (=> b!3961969 (= e!2453432 (or (not (= suffixTokens!72 Nil!42216)) (= lt!1386225 prefixTokens!80)))))

(declare-fun d!1173922 () Bool)

(assert (=> d!1173922 e!2453432))

(declare-fun res!1603538 () Bool)

(assert (=> d!1173922 (=> (not res!1603538) (not e!2453432))))

(declare-fun content!6411 (List!42340) (InoxSet Token!12382))

(assert (=> d!1173922 (= res!1603538 (= (content!6411 lt!1386225) ((_ map or) (content!6411 prefixTokens!80) (content!6411 suffixTokens!72))))))

(declare-fun e!2453433 () List!42340)

(assert (=> d!1173922 (= lt!1386225 e!2453433)))

(declare-fun c!687460 () Bool)

(assert (=> d!1173922 (= c!687460 ((_ is Nil!42216) prefixTokens!80))))

(assert (=> d!1173922 (= (++!11002 prefixTokens!80 suffixTokens!72) lt!1386225)))

(declare-fun b!3961966 () Bool)

(assert (=> b!3961966 (= e!2453433 suffixTokens!72)))

(declare-fun b!3961967 () Bool)

(assert (=> b!3961967 (= e!2453433 (Cons!42216 (h!47636 prefixTokens!80) (++!11002 (t!329907 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1173922 c!687460) b!3961966))

(assert (= (and d!1173922 (not c!687460)) b!3961967))

(assert (= (and d!1173922 res!1603538) b!3961968))

(assert (= (and b!3961968 res!1603539) b!3961969))

(declare-fun m!4531075 () Bool)

(assert (=> b!3961968 m!4531075))

(declare-fun m!4531077 () Bool)

(assert (=> b!3961968 m!4531077))

(declare-fun m!4531079 () Bool)

(assert (=> b!3961968 m!4531079))

(declare-fun m!4531081 () Bool)

(assert (=> d!1173922 m!4531081))

(declare-fun m!4531083 () Bool)

(assert (=> d!1173922 m!4531083))

(declare-fun m!4531085 () Bool)

(assert (=> d!1173922 m!4531085))

(declare-fun m!4531087 () Bool)

(assert (=> b!3961967 m!4531087))

(assert (=> b!3961525 d!1173922))

(declare-fun b!3961972 () Bool)

(declare-fun res!1603540 () Bool)

(declare-fun e!2453434 () Bool)

(assert (=> b!3961972 (=> (not res!1603540) (not e!2453434))))

(declare-fun lt!1386226 () List!42337)

(assert (=> b!3961972 (= res!1603540 (= (size!31607 lt!1386226) (+ (size!31607 prefix!426) (size!31607 suffix!1176))))))

(declare-fun d!1173924 () Bool)

(assert (=> d!1173924 e!2453434))

(declare-fun res!1603541 () Bool)

(assert (=> d!1173924 (=> (not res!1603541) (not e!2453434))))

(assert (=> d!1173924 (= res!1603541 (= (content!6410 lt!1386226) ((_ map or) (content!6410 prefix!426) (content!6410 suffix!1176))))))

(declare-fun e!2453435 () List!42337)

(assert (=> d!1173924 (= lt!1386226 e!2453435)))

(declare-fun c!687461 () Bool)

(assert (=> d!1173924 (= c!687461 ((_ is Nil!42213) prefix!426))))

(assert (=> d!1173924 (= (++!11001 prefix!426 suffix!1176) lt!1386226)))

(declare-fun b!3961973 () Bool)

(assert (=> b!3961973 (= e!2453434 (or (not (= suffix!1176 Nil!42213)) (= lt!1386226 prefix!426)))))

(declare-fun b!3961970 () Bool)

(assert (=> b!3961970 (= e!2453435 suffix!1176)))

(declare-fun b!3961971 () Bool)

(assert (=> b!3961971 (= e!2453435 (Cons!42213 (h!47633 prefix!426) (++!11001 (t!329904 prefix!426) suffix!1176)))))

(assert (= (and d!1173924 c!687461) b!3961970))

(assert (= (and d!1173924 (not c!687461)) b!3961971))

(assert (= (and d!1173924 res!1603541) b!3961972))

(assert (= (and b!3961972 res!1603540) b!3961973))

(declare-fun m!4531089 () Bool)

(assert (=> b!3961972 m!4531089))

(assert (=> b!3961972 m!4530483))

(assert (=> b!3961972 m!4530475))

(declare-fun m!4531091 () Bool)

(assert (=> d!1173924 m!4531091))

(declare-fun m!4531093 () Bool)

(assert (=> d!1173924 m!4531093))

(declare-fun m!4531095 () Bool)

(assert (=> d!1173924 m!4531095))

(declare-fun m!4531097 () Bool)

(assert (=> b!3961971 m!4531097))

(assert (=> b!3961525 d!1173924))

(declare-fun b!3961974 () Bool)

(declare-fun e!2453437 () tuple2!41508)

(assert (=> b!3961974 (= e!2453437 (tuple2!41509 Nil!42216 suffix!1176))))

(declare-fun b!3961975 () Bool)

(declare-fun e!2453436 () Bool)

(declare-fun lt!1386227 () tuple2!41508)

(assert (=> b!3961975 (= e!2453436 (= (_2!23888 lt!1386227) suffix!1176))))

(declare-fun b!3961976 () Bool)

(declare-fun lt!1386229 () Option!9042)

(declare-fun lt!1386228 () tuple2!41508)

(assert (=> b!3961976 (= e!2453437 (tuple2!41509 (Cons!42216 (_1!23887 (v!39387 lt!1386229)) (_1!23888 lt!1386228)) (_2!23888 lt!1386228)))))

(assert (=> b!3961976 (= lt!1386228 (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386229))))))

(declare-fun b!3961977 () Bool)

(declare-fun e!2453438 () Bool)

(assert (=> b!3961977 (= e!2453436 e!2453438)))

(declare-fun res!1603542 () Bool)

(assert (=> b!3961977 (= res!1603542 (< (size!31607 (_2!23888 lt!1386227)) (size!31607 suffix!1176)))))

(assert (=> b!3961977 (=> (not res!1603542) (not e!2453438))))

(declare-fun d!1173926 () Bool)

(assert (=> d!1173926 e!2453436))

(declare-fun c!687462 () Bool)

(assert (=> d!1173926 (= c!687462 (> (size!31609 (_1!23888 lt!1386227)) 0))))

(assert (=> d!1173926 (= lt!1386227 e!2453437)))

(declare-fun c!687463 () Bool)

(assert (=> d!1173926 (= c!687463 ((_ is Some!9041) lt!1386229))))

(assert (=> d!1173926 (= lt!1386229 (maxPrefix!3515 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1173926 (= (lexList!1979 thiss!20629 rules!2768 suffix!1176) lt!1386227)))

(declare-fun b!3961978 () Bool)

(assert (=> b!3961978 (= e!2453438 (not (isEmpty!25248 (_1!23888 lt!1386227))))))

(assert (= (and d!1173926 c!687463) b!3961976))

(assert (= (and d!1173926 (not c!687463)) b!3961974))

(assert (= (and d!1173926 c!687462) b!3961977))

(assert (= (and d!1173926 (not c!687462)) b!3961975))

(assert (= (and b!3961977 res!1603542) b!3961978))

(declare-fun m!4531099 () Bool)

(assert (=> b!3961976 m!4531099))

(declare-fun m!4531101 () Bool)

(assert (=> b!3961977 m!4531101))

(assert (=> b!3961977 m!4530475))

(declare-fun m!4531103 () Bool)

(assert (=> d!1173926 m!4531103))

(declare-fun m!4531105 () Bool)

(assert (=> d!1173926 m!4531105))

(declare-fun m!4531107 () Bool)

(assert (=> b!3961978 m!4531107))

(assert (=> b!3961513 d!1173926))

(declare-fun d!1173928 () Bool)

(declare-fun res!1603547 () Bool)

(declare-fun e!2453441 () Bool)

(assert (=> d!1173928 (=> (not res!1603547) (not e!2453441))))

(assert (=> d!1173928 (= res!1603547 (not (isEmpty!25249 (originalCharacters!7222 (h!47636 prefixTokens!80)))))))

(assert (=> d!1173928 (= (inv!56442 (h!47636 prefixTokens!80)) e!2453441)))

(declare-fun b!3961983 () Bool)

(declare-fun res!1603548 () Bool)

(assert (=> b!3961983 (=> (not res!1603548) (not e!2453441))))

(assert (=> b!3961983 (= res!1603548 (= (originalCharacters!7222 (h!47636 prefixTokens!80)) (list!15668 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (value!209361 (h!47636 prefixTokens!80))))))))

(declare-fun b!3961984 () Bool)

(assert (=> b!3961984 (= e!2453441 (= (size!31606 (h!47636 prefixTokens!80)) (size!31607 (originalCharacters!7222 (h!47636 prefixTokens!80)))))))

(assert (= (and d!1173928 res!1603547) b!3961983))

(assert (= (and b!3961983 res!1603548) b!3961984))

(declare-fun b_lambda!115875 () Bool)

(assert (=> (not b_lambda!115875) (not b!3961983)))

(declare-fun t!329969 () Bool)

(declare-fun tb!238893 () Bool)

(assert (=> (and b!3961517 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!329969) tb!238893))

(declare-fun b!3961985 () Bool)

(declare-fun e!2453442 () Bool)

(declare-fun tp!1207583 () Bool)

(assert (=> b!3961985 (= e!2453442 (and (inv!56445 (c!687381 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (value!209361 (h!47636 prefixTokens!80))))) tp!1207583))))

(declare-fun result!289294 () Bool)

(assert (=> tb!238893 (= result!289294 (and (inv!56446 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (value!209361 (h!47636 prefixTokens!80)))) e!2453442))))

(assert (= tb!238893 b!3961985))

(declare-fun m!4531109 () Bool)

(assert (=> b!3961985 m!4531109))

(declare-fun m!4531111 () Bool)

(assert (=> tb!238893 m!4531111))

(assert (=> b!3961983 t!329969))

(declare-fun b_and!304231 () Bool)

(assert (= b_and!304189 (and (=> t!329969 result!289294) b_and!304231)))

(declare-fun t!329971 () Bool)

(declare-fun tb!238895 () Bool)

(assert (=> (and b!3961531 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!329971) tb!238895))

(declare-fun result!289296 () Bool)

(assert (= result!289296 result!289294))

(assert (=> b!3961983 t!329971))

(declare-fun b_and!304233 () Bool)

(assert (= b_and!304191 (and (=> t!329971 result!289296) b_and!304233)))

(declare-fun tb!238897 () Bool)

(declare-fun t!329973 () Bool)

(assert (=> (and b!3961530 (= (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!329973) tb!238897))

(declare-fun result!289298 () Bool)

(assert (= result!289298 result!289294))

(assert (=> b!3961983 t!329973))

(declare-fun b_and!304235 () Bool)

(assert (= b_and!304193 (and (=> t!329973 result!289298) b_and!304235)))

(declare-fun m!4531113 () Bool)

(assert (=> d!1173928 m!4531113))

(declare-fun m!4531115 () Bool)

(assert (=> b!3961983 m!4531115))

(assert (=> b!3961983 m!4531115))

(declare-fun m!4531117 () Bool)

(assert (=> b!3961983 m!4531117))

(declare-fun m!4531119 () Bool)

(assert (=> b!3961984 m!4531119))

(assert (=> b!3961534 d!1173928))

(declare-fun d!1173930 () Bool)

(assert (=> d!1173930 (= (isEmpty!25248 lt!1386014) ((_ is Nil!42216) lt!1386014))))

(assert (=> b!3961511 d!1173930))

(declare-fun d!1173932 () Bool)

(assert (=> d!1173932 (= (tail!6161 prefixTokens!80) (t!329907 prefixTokens!80))))

(assert (=> b!3961511 d!1173932))

(declare-fun d!1173934 () Bool)

(assert (=> d!1173934 (not (= (lexList!1979 thiss!20629 rules!2768 (_2!23887 lt!1386004)) (tuple2!41509 (++!11002 lt!1386014 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1386232 () Unit!60752)

(declare-fun choose!23675 (LexerInterface!6211 List!42339 List!42337 List!42337 List!42340 List!42337 List!42340) Unit!60752)

(assert (=> d!1173934 (= lt!1386232 (choose!23675 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91 lt!1386014))))

(assert (=> d!1173934 (not (isEmpty!25250 rules!2768))))

(assert (=> d!1173934 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!150 thiss!20629 rules!2768 suffix!1176 (_2!23887 lt!1386004) suffixTokens!72 suffixResult!91 lt!1386014) lt!1386232)))

(declare-fun bs!587298 () Bool)

(assert (= bs!587298 d!1173934))

(assert (=> bs!587298 m!4530473))

(assert (=> bs!587298 m!4530449))

(declare-fun m!4531121 () Bool)

(assert (=> bs!587298 m!4531121))

(assert (=> bs!587298 m!4530513))

(assert (=> b!3961533 d!1173934))

(declare-fun b!3961988 () Bool)

(declare-fun res!1603550 () Bool)

(declare-fun e!2453443 () Bool)

(assert (=> b!3961988 (=> (not res!1603550) (not e!2453443))))

(declare-fun lt!1386233 () List!42340)

(assert (=> b!3961988 (= res!1603550 (= (size!31609 lt!1386233) (+ (size!31609 lt!1386014) (size!31609 suffixTokens!72))))))

(declare-fun b!3961989 () Bool)

(assert (=> b!3961989 (= e!2453443 (or (not (= suffixTokens!72 Nil!42216)) (= lt!1386233 lt!1386014)))))

(declare-fun d!1173936 () Bool)

(assert (=> d!1173936 e!2453443))

(declare-fun res!1603549 () Bool)

(assert (=> d!1173936 (=> (not res!1603549) (not e!2453443))))

(assert (=> d!1173936 (= res!1603549 (= (content!6411 lt!1386233) ((_ map or) (content!6411 lt!1386014) (content!6411 suffixTokens!72))))))

(declare-fun e!2453444 () List!42340)

(assert (=> d!1173936 (= lt!1386233 e!2453444)))

(declare-fun c!687464 () Bool)

(assert (=> d!1173936 (= c!687464 ((_ is Nil!42216) lt!1386014))))

(assert (=> d!1173936 (= (++!11002 lt!1386014 suffixTokens!72) lt!1386233)))

(declare-fun b!3961986 () Bool)

(assert (=> b!3961986 (= e!2453444 suffixTokens!72)))

(declare-fun b!3961987 () Bool)

(assert (=> b!3961987 (= e!2453444 (Cons!42216 (h!47636 lt!1386014) (++!11002 (t!329907 lt!1386014) suffixTokens!72)))))

(assert (= (and d!1173936 c!687464) b!3961986))

(assert (= (and d!1173936 (not c!687464)) b!3961987))

(assert (= (and d!1173936 res!1603549) b!3961988))

(assert (= (and b!3961988 res!1603550) b!3961989))

(declare-fun m!4531123 () Bool)

(assert (=> b!3961988 m!4531123))

(declare-fun m!4531125 () Bool)

(assert (=> b!3961988 m!4531125))

(assert (=> b!3961988 m!4531079))

(declare-fun m!4531127 () Bool)

(assert (=> d!1173936 m!4531127))

(declare-fun m!4531129 () Bool)

(assert (=> d!1173936 m!4531129))

(assert (=> d!1173936 m!4531085))

(declare-fun m!4531131 () Bool)

(assert (=> b!3961987 m!4531131))

(assert (=> b!3961533 d!1173936))

(declare-fun b!3962000 () Bool)

(declare-fun e!2453452 () Bool)

(declare-fun inv!15 (TokenValue!6852) Bool)

(assert (=> b!3962000 (= e!2453452 (inv!15 (value!209361 (h!47636 suffixTokens!72))))))

(declare-fun b!3962001 () Bool)

(declare-fun e!2453453 () Bool)

(declare-fun inv!17 (TokenValue!6852) Bool)

(assert (=> b!3962001 (= e!2453453 (inv!17 (value!209361 (h!47636 suffixTokens!72))))))

(declare-fun b!3962002 () Bool)

(declare-fun e!2453451 () Bool)

(declare-fun inv!16 (TokenValue!6852) Bool)

(assert (=> b!3962002 (= e!2453451 (inv!16 (value!209361 (h!47636 suffixTokens!72))))))

(declare-fun b!3962003 () Bool)

(assert (=> b!3962003 (= e!2453451 e!2453453)))

(declare-fun c!687470 () Bool)

(assert (=> b!3962003 (= c!687470 ((_ is IntegerValue!20557) (value!209361 (h!47636 suffixTokens!72))))))

(declare-fun d!1173938 () Bool)

(declare-fun c!687469 () Bool)

(assert (=> d!1173938 (= c!687469 ((_ is IntegerValue!20556) (value!209361 (h!47636 suffixTokens!72))))))

(assert (=> d!1173938 (= (inv!21 (value!209361 (h!47636 suffixTokens!72))) e!2453451)))

(declare-fun b!3962004 () Bool)

(declare-fun res!1603553 () Bool)

(assert (=> b!3962004 (=> res!1603553 e!2453452)))

(assert (=> b!3962004 (= res!1603553 (not ((_ is IntegerValue!20558) (value!209361 (h!47636 suffixTokens!72)))))))

(assert (=> b!3962004 (= e!2453453 e!2453452)))

(assert (= (and d!1173938 c!687469) b!3962002))

(assert (= (and d!1173938 (not c!687469)) b!3962003))

(assert (= (and b!3962003 c!687470) b!3962001))

(assert (= (and b!3962003 (not c!687470)) b!3962004))

(assert (= (and b!3962004 (not res!1603553)) b!3962000))

(declare-fun m!4531133 () Bool)

(assert (=> b!3962000 m!4531133))

(declare-fun m!4531135 () Bool)

(assert (=> b!3962001 m!4531135))

(declare-fun m!4531137 () Bool)

(assert (=> b!3962002 m!4531137))

(assert (=> b!3961510 d!1173938))

(declare-fun d!1173940 () Bool)

(declare-fun res!1603556 () Bool)

(declare-fun e!2453456 () Bool)

(assert (=> d!1173940 (=> (not res!1603556) (not e!2453456))))

(declare-fun rulesValid!2587 (LexerInterface!6211 List!42339) Bool)

(assert (=> d!1173940 (= res!1603556 (rulesValid!2587 thiss!20629 rules!2768))))

(assert (=> d!1173940 (= (rulesInvariant!5554 thiss!20629 rules!2768) e!2453456)))

(declare-fun b!3962007 () Bool)

(declare-datatypes ((List!42342 0))(
  ( (Nil!42218) (Cons!42218 (h!47638 String!47978) (t!330005 List!42342)) )
))
(declare-fun noDuplicateTag!2588 (LexerInterface!6211 List!42339 List!42342) Bool)

(assert (=> b!3962007 (= e!2453456 (noDuplicateTag!2588 thiss!20629 rules!2768 Nil!42218))))

(assert (= (and d!1173940 res!1603556) b!3962007))

(declare-fun m!4531139 () Bool)

(assert (=> d!1173940 m!4531139))

(declare-fun m!4531141 () Bool)

(assert (=> b!3962007 m!4531141))

(assert (=> b!3961508 d!1173940))

(declare-fun d!1173942 () Bool)

(assert (=> d!1173942 (= (inv!56438 (tag!7482 (rule!9602 (h!47636 prefixTokens!80)))) (= (mod (str.len (value!209360 (tag!7482 (rule!9602 (h!47636 prefixTokens!80))))) 2) 0))))

(assert (=> b!3961518 d!1173942))

(declare-fun d!1173944 () Bool)

(declare-fun res!1603557 () Bool)

(declare-fun e!2453457 () Bool)

(assert (=> d!1173944 (=> (not res!1603557) (not e!2453457))))

(assert (=> d!1173944 (= res!1603557 (semiInverseModEq!2853 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toValue!9102 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))))))

(assert (=> d!1173944 (= (inv!56441 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) e!2453457)))

(declare-fun b!3962008 () Bool)

(assert (=> b!3962008 (= e!2453457 (equivClasses!2752 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toValue!9102 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))))))

(assert (= (and d!1173944 res!1603557) b!3962008))

(declare-fun m!4531143 () Bool)

(assert (=> d!1173944 m!4531143))

(declare-fun m!4531145 () Bool)

(assert (=> b!3962008 m!4531145))

(assert (=> b!3961518 d!1173944))

(declare-fun d!1173946 () Bool)

(assert (=> d!1173946 (= (inv!56438 (tag!7482 (h!47635 rules!2768))) (= (mod (str.len (value!209360 (tag!7482 (h!47635 rules!2768)))) 2) 0))))

(assert (=> b!3961516 d!1173946))

(declare-fun d!1173948 () Bool)

(declare-fun res!1603558 () Bool)

(declare-fun e!2453458 () Bool)

(assert (=> d!1173948 (=> (not res!1603558) (not e!2453458))))

(assert (=> d!1173948 (= res!1603558 (semiInverseModEq!2853 (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toValue!9102 (transformation!6622 (h!47635 rules!2768)))))))

(assert (=> d!1173948 (= (inv!56441 (transformation!6622 (h!47635 rules!2768))) e!2453458)))

(declare-fun b!3962009 () Bool)

(assert (=> b!3962009 (= e!2453458 (equivClasses!2752 (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toValue!9102 (transformation!6622 (h!47635 rules!2768)))))))

(assert (= (and d!1173948 res!1603558) b!3962009))

(declare-fun m!4531147 () Bool)

(assert (=> d!1173948 m!4531147))

(declare-fun m!4531149 () Bool)

(assert (=> b!3962009 m!4531149))

(assert (=> b!3961516 d!1173948))

(declare-fun b!3962010 () Bool)

(declare-fun e!2453460 () Bool)

(assert (=> b!3962010 (= e!2453460 (inv!15 (value!209361 (h!47636 prefixTokens!80))))))

(declare-fun b!3962011 () Bool)

(declare-fun e!2453461 () Bool)

(assert (=> b!3962011 (= e!2453461 (inv!17 (value!209361 (h!47636 prefixTokens!80))))))

(declare-fun b!3962012 () Bool)

(declare-fun e!2453459 () Bool)

(assert (=> b!3962012 (= e!2453459 (inv!16 (value!209361 (h!47636 prefixTokens!80))))))

(declare-fun b!3962013 () Bool)

(assert (=> b!3962013 (= e!2453459 e!2453461)))

(declare-fun c!687472 () Bool)

(assert (=> b!3962013 (= c!687472 ((_ is IntegerValue!20557) (value!209361 (h!47636 prefixTokens!80))))))

(declare-fun d!1173950 () Bool)

(declare-fun c!687471 () Bool)

(assert (=> d!1173950 (= c!687471 ((_ is IntegerValue!20556) (value!209361 (h!47636 prefixTokens!80))))))

(assert (=> d!1173950 (= (inv!21 (value!209361 (h!47636 prefixTokens!80))) e!2453459)))

(declare-fun b!3962014 () Bool)

(declare-fun res!1603559 () Bool)

(assert (=> b!3962014 (=> res!1603559 e!2453460)))

(assert (=> b!3962014 (= res!1603559 (not ((_ is IntegerValue!20558) (value!209361 (h!47636 prefixTokens!80)))))))

(assert (=> b!3962014 (= e!2453461 e!2453460)))

(assert (= (and d!1173950 c!687471) b!3962012))

(assert (= (and d!1173950 (not c!687471)) b!3962013))

(assert (= (and b!3962013 c!687472) b!3962011))

(assert (= (and b!3962013 (not c!687472)) b!3962014))

(assert (= (and b!3962014 (not res!1603559)) b!3962010))

(declare-fun m!4531151 () Bool)

(assert (=> b!3962010 m!4531151))

(declare-fun m!4531153 () Bool)

(assert (=> b!3962011 m!4531153))

(declare-fun m!4531155 () Bool)

(assert (=> b!3962012 m!4531155))

(assert (=> b!3961515 d!1173950))

(declare-fun b!3962015 () Bool)

(declare-fun e!2453463 () tuple2!41508)

(assert (=> b!3962015 (= e!2453463 (tuple2!41509 Nil!42216 (_2!23887 lt!1386004)))))

(declare-fun b!3962016 () Bool)

(declare-fun e!2453462 () Bool)

(declare-fun lt!1386234 () tuple2!41508)

(assert (=> b!3962016 (= e!2453462 (= (_2!23888 lt!1386234) (_2!23887 lt!1386004)))))

(declare-fun b!3962017 () Bool)

(declare-fun lt!1386236 () Option!9042)

(declare-fun lt!1386235 () tuple2!41508)

(assert (=> b!3962017 (= e!2453463 (tuple2!41509 (Cons!42216 (_1!23887 (v!39387 lt!1386236)) (_1!23888 lt!1386235)) (_2!23888 lt!1386235)))))

(assert (=> b!3962017 (= lt!1386235 (lexList!1979 thiss!20629 rules!2768 (_2!23887 (v!39387 lt!1386236))))))

(declare-fun b!3962018 () Bool)

(declare-fun e!2453464 () Bool)

(assert (=> b!3962018 (= e!2453462 e!2453464)))

(declare-fun res!1603560 () Bool)

(assert (=> b!3962018 (= res!1603560 (< (size!31607 (_2!23888 lt!1386234)) (size!31607 (_2!23887 lt!1386004))))))

(assert (=> b!3962018 (=> (not res!1603560) (not e!2453464))))

(declare-fun d!1173952 () Bool)

(assert (=> d!1173952 e!2453462))

(declare-fun c!687473 () Bool)

(assert (=> d!1173952 (= c!687473 (> (size!31609 (_1!23888 lt!1386234)) 0))))

(assert (=> d!1173952 (= lt!1386234 e!2453463)))

(declare-fun c!687474 () Bool)

(assert (=> d!1173952 (= c!687474 ((_ is Some!9041) lt!1386236))))

(assert (=> d!1173952 (= lt!1386236 (maxPrefix!3515 thiss!20629 rules!2768 (_2!23887 lt!1386004)))))

(assert (=> d!1173952 (= (lexList!1979 thiss!20629 rules!2768 (_2!23887 lt!1386004)) lt!1386234)))

(declare-fun b!3962019 () Bool)

(assert (=> b!3962019 (= e!2453464 (not (isEmpty!25248 (_1!23888 lt!1386234))))))

(assert (= (and d!1173952 c!687474) b!3962017))

(assert (= (and d!1173952 (not c!687474)) b!3962015))

(assert (= (and d!1173952 c!687473) b!3962018))

(assert (= (and d!1173952 (not c!687473)) b!3962016))

(assert (= (and b!3962018 res!1603560) b!3962019))

(declare-fun m!4531157 () Bool)

(assert (=> b!3962017 m!4531157))

(declare-fun m!4531159 () Bool)

(assert (=> b!3962018 m!4531159))

(assert (=> b!3962018 m!4530471))

(declare-fun m!4531161 () Bool)

(assert (=> d!1173952 m!4531161))

(declare-fun m!4531163 () Bool)

(assert (=> d!1173952 m!4531163))

(declare-fun m!4531165 () Bool)

(assert (=> b!3962019 m!4531165))

(assert (=> bm!285419 d!1173952))

(declare-fun d!1173954 () Bool)

(declare-fun res!1603561 () Bool)

(declare-fun e!2453465 () Bool)

(assert (=> d!1173954 (=> (not res!1603561) (not e!2453465))))

(assert (=> d!1173954 (= res!1603561 (not (isEmpty!25249 (originalCharacters!7222 (h!47636 suffixTokens!72)))))))

(assert (=> d!1173954 (= (inv!56442 (h!47636 suffixTokens!72)) e!2453465)))

(declare-fun b!3962020 () Bool)

(declare-fun res!1603562 () Bool)

(assert (=> b!3962020 (=> (not res!1603562) (not e!2453465))))

(assert (=> b!3962020 (= res!1603562 (= (originalCharacters!7222 (h!47636 suffixTokens!72)) (list!15668 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (value!209361 (h!47636 suffixTokens!72))))))))

(declare-fun b!3962021 () Bool)

(assert (=> b!3962021 (= e!2453465 (= (size!31606 (h!47636 suffixTokens!72)) (size!31607 (originalCharacters!7222 (h!47636 suffixTokens!72)))))))

(assert (= (and d!1173954 res!1603561) b!3962020))

(assert (= (and b!3962020 res!1603562) b!3962021))

(declare-fun b_lambda!115877 () Bool)

(assert (=> (not b_lambda!115877) (not b!3962020)))

(declare-fun t!329975 () Bool)

(declare-fun tb!238899 () Bool)

(assert (=> (and b!3961517 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!329975) tb!238899))

(declare-fun b!3962022 () Bool)

(declare-fun e!2453466 () Bool)

(declare-fun tp!1207584 () Bool)

(assert (=> b!3962022 (= e!2453466 (and (inv!56445 (c!687381 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (value!209361 (h!47636 suffixTokens!72))))) tp!1207584))))

(declare-fun result!289300 () Bool)

(assert (=> tb!238899 (= result!289300 (and (inv!56446 (dynLambda!18032 (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (value!209361 (h!47636 suffixTokens!72)))) e!2453466))))

(assert (= tb!238899 b!3962022))

(declare-fun m!4531167 () Bool)

(assert (=> b!3962022 m!4531167))

(declare-fun m!4531169 () Bool)

(assert (=> tb!238899 m!4531169))

(assert (=> b!3962020 t!329975))

(declare-fun b_and!304237 () Bool)

(assert (= b_and!304231 (and (=> t!329975 result!289300) b_and!304237)))

(declare-fun tb!238901 () Bool)

(declare-fun t!329977 () Bool)

(assert (=> (and b!3961531 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!329977) tb!238901))

(declare-fun result!289302 () Bool)

(assert (= result!289302 result!289300))

(assert (=> b!3962020 t!329977))

(declare-fun b_and!304239 () Bool)

(assert (= b_and!304233 (and (=> t!329977 result!289302) b_and!304239)))

(declare-fun tb!238903 () Bool)

(declare-fun t!329979 () Bool)

(assert (=> (and b!3961530 (= (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!329979) tb!238903))

(declare-fun result!289304 () Bool)

(assert (= result!289304 result!289300))

(assert (=> b!3962020 t!329979))

(declare-fun b_and!304241 () Bool)

(assert (= b_and!304235 (and (=> t!329979 result!289304) b_and!304241)))

(declare-fun m!4531171 () Bool)

(assert (=> d!1173954 m!4531171))

(declare-fun m!4531173 () Bool)

(assert (=> b!3962020 m!4531173))

(assert (=> b!3962020 m!4531173))

(declare-fun m!4531175 () Bool)

(assert (=> b!3962020 m!4531175))

(declare-fun m!4531177 () Bool)

(assert (=> b!3962021 m!4531177))

(assert (=> b!3961535 d!1173954))

(declare-fun b!3962025 () Bool)

(declare-fun res!1603564 () Bool)

(declare-fun e!2453467 () Bool)

(assert (=> b!3962025 (=> (not res!1603564) (not e!2453467))))

(declare-fun lt!1386237 () List!42340)

(assert (=> b!3962025 (= res!1603564 (= (size!31609 lt!1386237) (+ (size!31609 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216)) (size!31609 (_1!23888 lt!1386027)))))))

(declare-fun b!3962026 () Bool)

(assert (=> b!3962026 (= e!2453467 (or (not (= (_1!23888 lt!1386027) Nil!42216)) (= lt!1386237 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216))))))

(declare-fun d!1173956 () Bool)

(assert (=> d!1173956 e!2453467))

(declare-fun res!1603563 () Bool)

(assert (=> d!1173956 (=> (not res!1603563) (not e!2453467))))

(assert (=> d!1173956 (= res!1603563 (= (content!6411 lt!1386237) ((_ map or) (content!6411 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216)) (content!6411 (_1!23888 lt!1386027)))))))

(declare-fun e!2453468 () List!42340)

(assert (=> d!1173956 (= lt!1386237 e!2453468)))

(declare-fun c!687475 () Bool)

(assert (=> d!1173956 (= c!687475 ((_ is Nil!42216) (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216)))))

(assert (=> d!1173956 (= (++!11002 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216) (_1!23888 lt!1386027)) lt!1386237)))

(declare-fun b!3962023 () Bool)

(assert (=> b!3962023 (= e!2453468 (_1!23888 lt!1386027))))

(declare-fun b!3962024 () Bool)

(assert (=> b!3962024 (= e!2453468 (Cons!42216 (h!47636 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216)) (++!11002 (t!329907 (Cons!42216 (_1!23887 (v!39387 lt!1386010)) Nil!42216)) (_1!23888 lt!1386027))))))

(assert (= (and d!1173956 c!687475) b!3962023))

(assert (= (and d!1173956 (not c!687475)) b!3962024))

(assert (= (and d!1173956 res!1603563) b!3962025))

(assert (= (and b!3962025 res!1603564) b!3962026))

(declare-fun m!4531179 () Bool)

(assert (=> b!3962025 m!4531179))

(declare-fun m!4531181 () Bool)

(assert (=> b!3962025 m!4531181))

(declare-fun m!4531183 () Bool)

(assert (=> b!3962025 m!4531183))

(declare-fun m!4531185 () Bool)

(assert (=> d!1173956 m!4531185))

(declare-fun m!4531187 () Bool)

(assert (=> d!1173956 m!4531187))

(declare-fun m!4531189 () Bool)

(assert (=> d!1173956 m!4531189))

(declare-fun m!4531191 () Bool)

(assert (=> b!3962024 m!4531191))

(assert (=> b!3961514 d!1173956))

(declare-fun b!3962037 () Bool)

(declare-fun b_free!109413 () Bool)

(declare-fun b_next!110117 () Bool)

(assert (=> b!3962037 (= b_free!109413 (not b_next!110117))))

(declare-fun tb!238905 () Bool)

(declare-fun t!329981 () Bool)

(assert (=> (and b!3962037 (= (toValue!9102 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329981) tb!238905))

(declare-fun result!289308 () Bool)

(assert (= result!289308 result!289218))

(assert (=> d!1173792 t!329981))

(declare-fun tp!1207594 () Bool)

(declare-fun b_and!304243 () Bool)

(assert (=> b!3962037 (= tp!1207594 (and (=> t!329981 result!289308) b_and!304243))))

(declare-fun b_free!109415 () Bool)

(declare-fun b_next!110119 () Bool)

(assert (=> b!3962037 (= b_free!109415 (not b_next!110119))))

(declare-fun tb!238907 () Bool)

(declare-fun t!329983 () Bool)

(assert (=> (and b!3962037 (= (toChars!8961 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329983) tb!238907))

(declare-fun result!289310 () Bool)

(assert (= result!289310 result!289226))

(assert (=> d!1173796 t!329983))

(declare-fun tb!238909 () Bool)

(declare-fun t!329985 () Bool)

(assert (=> (and b!3962037 (= (toChars!8961 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!329985) tb!238909))

(declare-fun result!289312 () Bool)

(assert (= result!289312 result!289294))

(assert (=> b!3961983 t!329985))

(declare-fun tb!238911 () Bool)

(declare-fun t!329987 () Bool)

(assert (=> (and b!3962037 (= (toChars!8961 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!329987) tb!238911))

(declare-fun result!289314 () Bool)

(assert (= result!289314 result!289300))

(assert (=> b!3962020 t!329987))

(declare-fun tp!1207596 () Bool)

(declare-fun b_and!304245 () Bool)

(assert (=> b!3962037 (= tp!1207596 (and (=> t!329983 result!289310) (=> t!329985 result!289312) (=> t!329987 result!289314) b_and!304245))))

(declare-fun e!2453479 () Bool)

(assert (=> b!3962037 (= e!2453479 (and tp!1207594 tp!1207596))))

(declare-fun e!2453480 () Bool)

(declare-fun tp!1207595 () Bool)

(declare-fun b!3962036 () Bool)

(assert (=> b!3962036 (= e!2453480 (and tp!1207595 (inv!56438 (tag!7482 (h!47635 (t!329906 rules!2768)))) (inv!56441 (transformation!6622 (h!47635 (t!329906 rules!2768)))) e!2453479))))

(declare-fun b!3962035 () Bool)

(declare-fun e!2453478 () Bool)

(declare-fun tp!1207593 () Bool)

(assert (=> b!3962035 (= e!2453478 (and e!2453480 tp!1207593))))

(assert (=> b!3961512 (= tp!1207508 e!2453478)))

(assert (= b!3962036 b!3962037))

(assert (= b!3962035 b!3962036))

(assert (= (and b!3961512 ((_ is Cons!42215) (t!329906 rules!2768))) b!3962035))

(declare-fun m!4531193 () Bool)

(assert (=> b!3962036 m!4531193))

(declare-fun m!4531195 () Bool)

(assert (=> b!3962036 m!4531195))

(declare-fun b!3962051 () Bool)

(declare-fun b_free!109417 () Bool)

(declare-fun b_next!110121 () Bool)

(assert (=> b!3962051 (= b_free!109417 (not b_next!110121))))

(declare-fun tb!238913 () Bool)

(declare-fun t!329989 () Bool)

(assert (=> (and b!3962051 (= (toValue!9102 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329989) tb!238913))

(declare-fun result!289318 () Bool)

(assert (= result!289318 result!289218))

(assert (=> d!1173792 t!329989))

(declare-fun b_and!304247 () Bool)

(declare-fun tp!1207609 () Bool)

(assert (=> b!3962051 (= tp!1207609 (and (=> t!329989 result!289318) b_and!304247))))

(declare-fun b_free!109419 () Bool)

(declare-fun b_next!110123 () Bool)

(assert (=> b!3962051 (= b_free!109419 (not b_next!110123))))

(declare-fun tb!238915 () Bool)

(declare-fun t!329991 () Bool)

(assert (=> (and b!3962051 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329991) tb!238915))

(declare-fun result!289320 () Bool)

(assert (= result!289320 result!289226))

(assert (=> d!1173796 t!329991))

(declare-fun t!329993 () Bool)

(declare-fun tb!238917 () Bool)

(assert (=> (and b!3962051 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!329993) tb!238917))

(declare-fun result!289322 () Bool)

(assert (= result!289322 result!289294))

(assert (=> b!3961983 t!329993))

(declare-fun tb!238919 () Bool)

(declare-fun t!329995 () Bool)

(assert (=> (and b!3962051 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!329995) tb!238919))

(declare-fun result!289324 () Bool)

(assert (= result!289324 result!289300))

(assert (=> b!3962020 t!329995))

(declare-fun b_and!304249 () Bool)

(declare-fun tp!1207611 () Bool)

(assert (=> b!3962051 (= tp!1207611 (and (=> t!329991 result!289320) (=> t!329993 result!289322) (=> t!329995 result!289324) b_and!304249))))

(declare-fun e!2453497 () Bool)

(assert (=> b!3962051 (= e!2453497 (and tp!1207609 tp!1207611))))

(declare-fun e!2453493 () Bool)

(assert (=> b!3961534 (= tp!1207505 e!2453493)))

(declare-fun e!2453494 () Bool)

(declare-fun tp!1207607 () Bool)

(declare-fun b!3962050 () Bool)

(assert (=> b!3962050 (= e!2453494 (and tp!1207607 (inv!56438 (tag!7482 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (inv!56441 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) e!2453497))))

(declare-fun e!2453496 () Bool)

(declare-fun tp!1207610 () Bool)

(declare-fun b!3962048 () Bool)

(assert (=> b!3962048 (= e!2453493 (and (inv!56442 (h!47636 (t!329907 prefixTokens!80))) e!2453496 tp!1207610))))

(declare-fun tp!1207608 () Bool)

(declare-fun b!3962049 () Bool)

(assert (=> b!3962049 (= e!2453496 (and (inv!21 (value!209361 (h!47636 (t!329907 prefixTokens!80)))) e!2453494 tp!1207608))))

(assert (= b!3962050 b!3962051))

(assert (= b!3962049 b!3962050))

(assert (= b!3962048 b!3962049))

(assert (= (and b!3961534 ((_ is Cons!42216) (t!329907 prefixTokens!80))) b!3962048))

(declare-fun m!4531197 () Bool)

(assert (=> b!3962050 m!4531197))

(declare-fun m!4531199 () Bool)

(assert (=> b!3962050 m!4531199))

(declare-fun m!4531201 () Bool)

(assert (=> b!3962048 m!4531201))

(declare-fun m!4531203 () Bool)

(assert (=> b!3962049 m!4531203))

(declare-fun b!3962056 () Bool)

(declare-fun e!2453501 () Bool)

(declare-fun tp!1207614 () Bool)

(assert (=> b!3962056 (= e!2453501 (and tp_is_empty!20025 tp!1207614))))

(assert (=> b!3961532 (= tp!1207509 e!2453501)))

(assert (= (and b!3961532 ((_ is Cons!42213) (t!329904 prefix!426))) b!3962056))

(declare-fun b!3962057 () Bool)

(declare-fun e!2453502 () Bool)

(declare-fun tp!1207615 () Bool)

(assert (=> b!3962057 (= e!2453502 (and tp_is_empty!20025 tp!1207615))))

(assert (=> b!3961510 (= tp!1207506 e!2453502)))

(assert (= (and b!3961510 ((_ is Cons!42213) (originalCharacters!7222 (h!47636 suffixTokens!72)))) b!3962057))

(declare-fun b!3962069 () Bool)

(declare-fun e!2453505 () Bool)

(declare-fun tp!1207630 () Bool)

(declare-fun tp!1207627 () Bool)

(assert (=> b!3962069 (= e!2453505 (and tp!1207630 tp!1207627))))

(declare-fun b!3962068 () Bool)

(assert (=> b!3962068 (= e!2453505 tp_is_empty!20025)))

(declare-fun b!3962070 () Bool)

(declare-fun tp!1207628 () Bool)

(assert (=> b!3962070 (= e!2453505 tp!1207628)))

(declare-fun b!3962071 () Bool)

(declare-fun tp!1207629 () Bool)

(declare-fun tp!1207626 () Bool)

(assert (=> b!3962071 (= e!2453505 (and tp!1207629 tp!1207626))))

(assert (=> b!3961518 (= tp!1207495 e!2453505)))

(assert (= (and b!3961518 ((_ is ElementMatch!11527) (regex!6622 (rule!9602 (h!47636 prefixTokens!80))))) b!3962068))

(assert (= (and b!3961518 ((_ is Concat!18380) (regex!6622 (rule!9602 (h!47636 prefixTokens!80))))) b!3962069))

(assert (= (and b!3961518 ((_ is Star!11527) (regex!6622 (rule!9602 (h!47636 prefixTokens!80))))) b!3962070))

(assert (= (and b!3961518 ((_ is Union!11527) (regex!6622 (rule!9602 (h!47636 prefixTokens!80))))) b!3962071))

(declare-fun b!3962073 () Bool)

(declare-fun e!2453506 () Bool)

(declare-fun tp!1207635 () Bool)

(declare-fun tp!1207632 () Bool)

(assert (=> b!3962073 (= e!2453506 (and tp!1207635 tp!1207632))))

(declare-fun b!3962072 () Bool)

(assert (=> b!3962072 (= e!2453506 tp_is_empty!20025)))

(declare-fun b!3962074 () Bool)

(declare-fun tp!1207633 () Bool)

(assert (=> b!3962074 (= e!2453506 tp!1207633)))

(declare-fun b!3962075 () Bool)

(declare-fun tp!1207634 () Bool)

(declare-fun tp!1207631 () Bool)

(assert (=> b!3962075 (= e!2453506 (and tp!1207634 tp!1207631))))

(assert (=> b!3961516 (= tp!1207510 e!2453506)))

(assert (= (and b!3961516 ((_ is ElementMatch!11527) (regex!6622 (h!47635 rules!2768)))) b!3962072))

(assert (= (and b!3961516 ((_ is Concat!18380) (regex!6622 (h!47635 rules!2768)))) b!3962073))

(assert (= (and b!3961516 ((_ is Star!11527) (regex!6622 (h!47635 rules!2768)))) b!3962074))

(assert (= (and b!3961516 ((_ is Union!11527) (regex!6622 (h!47635 rules!2768)))) b!3962075))

(declare-fun b!3962076 () Bool)

(declare-fun e!2453507 () Bool)

(declare-fun tp!1207636 () Bool)

(assert (=> b!3962076 (= e!2453507 (and tp_is_empty!20025 tp!1207636))))

(assert (=> b!3961515 (= tp!1207496 e!2453507)))

(assert (= (and b!3961515 ((_ is Cons!42213) (originalCharacters!7222 (h!47636 prefixTokens!80)))) b!3962076))

(declare-fun b!3962078 () Bool)

(declare-fun e!2453508 () Bool)

(declare-fun tp!1207641 () Bool)

(declare-fun tp!1207638 () Bool)

(assert (=> b!3962078 (= e!2453508 (and tp!1207641 tp!1207638))))

(declare-fun b!3962077 () Bool)

(assert (=> b!3962077 (= e!2453508 tp_is_empty!20025)))

(declare-fun b!3962079 () Bool)

(declare-fun tp!1207639 () Bool)

(assert (=> b!3962079 (= e!2453508 tp!1207639)))

(declare-fun b!3962080 () Bool)

(declare-fun tp!1207640 () Bool)

(declare-fun tp!1207637 () Bool)

(assert (=> b!3962080 (= e!2453508 (and tp!1207640 tp!1207637))))

(assert (=> b!3961504 (= tp!1207504 e!2453508)))

(assert (= (and b!3961504 ((_ is ElementMatch!11527) (regex!6622 (rule!9602 (h!47636 suffixTokens!72))))) b!3962077))

(assert (= (and b!3961504 ((_ is Concat!18380) (regex!6622 (rule!9602 (h!47636 suffixTokens!72))))) b!3962078))

(assert (= (and b!3961504 ((_ is Star!11527) (regex!6622 (rule!9602 (h!47636 suffixTokens!72))))) b!3962079))

(assert (= (and b!3961504 ((_ is Union!11527) (regex!6622 (rule!9602 (h!47636 suffixTokens!72))))) b!3962080))

(declare-fun b!3962081 () Bool)

(declare-fun e!2453509 () Bool)

(declare-fun tp!1207642 () Bool)

(assert (=> b!3962081 (= e!2453509 (and tp_is_empty!20025 tp!1207642))))

(assert (=> b!3961505 (= tp!1207499 e!2453509)))

(assert (= (and b!3961505 ((_ is Cons!42213) (t!329904 suffixResult!91))) b!3962081))

(declare-fun b!3962082 () Bool)

(declare-fun e!2453510 () Bool)

(declare-fun tp!1207643 () Bool)

(assert (=> b!3962082 (= e!2453510 (and tp_is_empty!20025 tp!1207643))))

(assert (=> b!3961526 (= tp!1207503 e!2453510)))

(assert (= (and b!3961526 ((_ is Cons!42213) (t!329904 suffix!1176))) b!3962082))

(declare-fun b!3962086 () Bool)

(declare-fun b_free!109421 () Bool)

(declare-fun b_next!110125 () Bool)

(assert (=> b!3962086 (= b_free!109421 (not b_next!110125))))

(declare-fun tb!238921 () Bool)

(declare-fun t!329997 () Bool)

(assert (=> (and b!3962086 (= (toValue!9102 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toValue!9102 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329997) tb!238921))

(declare-fun result!289330 () Bool)

(assert (= result!289330 result!289218))

(assert (=> d!1173792 t!329997))

(declare-fun b_and!304251 () Bool)

(declare-fun tp!1207646 () Bool)

(assert (=> b!3962086 (= tp!1207646 (and (=> t!329997 result!289330) b_and!304251))))

(declare-fun b_free!109423 () Bool)

(declare-fun b_next!110127 () Bool)

(assert (=> b!3962086 (= b_free!109423 (not b_next!110127))))

(declare-fun t!329999 () Bool)

(declare-fun tb!238923 () Bool)

(assert (=> (and b!3962086 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toChars!8961 (transformation!6622 (rule!9602 (_1!23887 (v!39387 lt!1386010)))))) t!329999) tb!238923))

(declare-fun result!289332 () Bool)

(assert (= result!289332 result!289226))

(assert (=> d!1173796 t!329999))

(declare-fun t!330001 () Bool)

(declare-fun tb!238925 () Bool)

(assert (=> (and b!3962086 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80))))) t!330001) tb!238925))

(declare-fun result!289334 () Bool)

(assert (= result!289334 result!289294))

(assert (=> b!3961983 t!330001))

(declare-fun t!330003 () Bool)

(declare-fun tb!238927 () Bool)

(assert (=> (and b!3962086 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72))))) t!330003) tb!238927))

(declare-fun result!289336 () Bool)

(assert (= result!289336 result!289300))

(assert (=> b!3962020 t!330003))

(declare-fun b_and!304253 () Bool)

(declare-fun tp!1207648 () Bool)

(assert (=> b!3962086 (= tp!1207648 (and (=> t!329999 result!289332) (=> t!330001 result!289334) (=> t!330003 result!289336) b_and!304253))))

(declare-fun e!2453515 () Bool)

(assert (=> b!3962086 (= e!2453515 (and tp!1207646 tp!1207648))))

(declare-fun e!2453511 () Bool)

(assert (=> b!3961535 (= tp!1207497 e!2453511)))

(declare-fun e!2453512 () Bool)

(declare-fun b!3962085 () Bool)

(declare-fun tp!1207644 () Bool)

(assert (=> b!3962085 (= e!2453512 (and tp!1207644 (inv!56438 (tag!7482 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (inv!56441 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) e!2453515))))

(declare-fun tp!1207647 () Bool)

(declare-fun e!2453514 () Bool)

(declare-fun b!3962083 () Bool)

(assert (=> b!3962083 (= e!2453511 (and (inv!56442 (h!47636 (t!329907 suffixTokens!72))) e!2453514 tp!1207647))))

(declare-fun tp!1207645 () Bool)

(declare-fun b!3962084 () Bool)

(assert (=> b!3962084 (= e!2453514 (and (inv!21 (value!209361 (h!47636 (t!329907 suffixTokens!72)))) e!2453512 tp!1207645))))

(assert (= b!3962085 b!3962086))

(assert (= b!3962084 b!3962085))

(assert (= b!3962083 b!3962084))

(assert (= (and b!3961535 ((_ is Cons!42216) (t!329907 suffixTokens!72))) b!3962083))

(declare-fun m!4531205 () Bool)

(assert (=> b!3962085 m!4531205))

(declare-fun m!4531207 () Bool)

(assert (=> b!3962085 m!4531207))

(declare-fun m!4531209 () Bool)

(assert (=> b!3962083 m!4531209))

(declare-fun m!4531211 () Bool)

(assert (=> b!3962084 m!4531211))

(declare-fun b_lambda!115879 () Bool)

(assert (= b_lambda!115875 (or (and b!3962051 b_free!109419 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))))) (and b!3961531 b_free!109395) (and b!3961517 b_free!109391 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))))) (and b!3962037 b_free!109415 (= (toChars!8961 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))))) (and b!3961530 b_free!109399 (= (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))))) (and b!3962086 b_free!109423 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))))) b_lambda!115879)))

(declare-fun b_lambda!115881 () Bool)

(assert (= b_lambda!115877 (or (and b!3962086 b_free!109423 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 suffixTokens!72))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))))) (and b!3961530 b_free!109399 (= (toChars!8961 (transformation!6622 (h!47635 rules!2768))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))))) (and b!3962051 b_free!109419 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 (t!329907 prefixTokens!80))))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))))) (and b!3961531 b_free!109395 (= (toChars!8961 (transformation!6622 (rule!9602 (h!47636 prefixTokens!80)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))))) (and b!3962037 b_free!109415 (= (toChars!8961 (transformation!6622 (h!47635 (t!329906 rules!2768)))) (toChars!8961 (transformation!6622 (rule!9602 (h!47636 suffixTokens!72)))))) (and b!3961517 b_free!109391) b_lambda!115881)))

(check-sat (not b!3961580) (not b!3962079) (not d!1173830) (not b!3961988) (not b!3962035) (not b!3961956) (not b_lambda!115861) (not b_lambda!115879) (not d!1173842) (not b!3961547) (not d!1173948) (not d!1173824) b_and!304251 (not b!3962036) (not d!1173736) (not b!3961763) (not b!3961787) (not b!3961581) (not d!1173952) (not b!3962008) tp_is_empty!20025 (not d!1173944) (not b!3962078) (not d!1173788) (not b!3961756) (not b!3961872) (not b_next!110103) (not b!3961758) b_and!304239 (not b!3961654) (not b!3962076) (not b!3961870) (not b!3962069) (not b!3961976) (not d!1173760) (not b!3961699) b_and!304185 (not b!3962009) (not b!3961553) (not b!3961767) (not b_lambda!115881) (not d!1173740) (not b!3962000) (not b!3962022) (not d!1173916) (not d!1173956) (not b!3961984) (not d!1173868) (not b!3961873) (not b!3962025) (not b_next!110123) (not d!1173920) b_and!304237 (not bm!285422) (not tb!238899) (not b!3961985) (not b!3961697) (not b!3961782) (not d!1173820) (not b!3962057) (not b_next!110125) (not b!3961878) (not d!1173796) (not b!3961693) (not d!1173936) (not tb!238893) (not b!3961875) (not b_next!110127) b_and!304183 (not b!3961877) (not d!1173934) (not b!3962080) (not b!3962074) (not b!3962001) (not b!3962007) (not b!3961968) (not d!1173864) (not d!1173926) (not b!3961955) (not d!1173940) (not b!3962050) (not b!3962017) (not b!3961780) (not b!3962019) b_and!304247 (not b_next!110121) (not b!3961957) (not b!3962012) (not d!1173922) (not b!3961755) (not b!3961908) (not b_next!110117) (not b!3962073) (not b!3961653) (not d!1173928) (not d!1173954) (not b!3962083) (not b!3961972) (not b_next!110097) (not b!3961546) (not b_next!110095) (not b!3961904) b_and!304253 (not b_next!110099) (not b!3962071) (not b_next!110119) b_and!304243 (not b!3961668) (not b!3961757) b_and!304187 (not tb!238833) (not b!3962024) (not b!3961560) (not b!3962081) (not b!3961871) (not b!3961971) (not b!3962020) (not b!3962018) (not b_next!110101) (not b!3962085) (not b!3962049) b_and!304245 (not b!3961698) (not b_next!110093) b_and!304249 (not b!3961967) (not b!3961760) (not d!1173782) (not b_lambda!115859) b_and!304241 (not b!3961784) (not b!3962002) (not b!3962048) (not d!1173924) (not b!3962070) (not b!3962075) (not b!3962056) (not b!3962021) (not b!3962010) (not d!1173742) (not b!3961754) (not b!3961759) (not b!3962082) (not d!1173828) (not b!3961978) (not d!1173748) (not b!3961874) (not d!1173808) (not tb!238839) (not b!3961764) (not b!3961983) (not b!3962011) (not b!3961657) (not b!3962084) (not b!3961548) (not b!3961987) (not b!3961753) (not d!1173794) (not d!1173744) (not b!3961765) (not b!3961977) (not d!1173844))
(check-sat b_and!304251 b_and!304185 (not b_next!110123) b_and!304237 (not b_next!110125) (not b_next!110127) b_and!304183 (not b_next!110117) (not b_next!110097) b_and!304187 (not b_next!110101) b_and!304249 b_and!304241 (not b_next!110103) b_and!304239 b_and!304247 (not b_next!110121) (not b_next!110095) b_and!304253 (not b_next!110099) (not b_next!110119) b_and!304243 b_and!304245 (not b_next!110093))
