; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364492 () Bool)

(assert start!364492)

(declare-fun b!3882258 () Bool)

(declare-fun b_free!105265 () Bool)

(declare-fun b_next!105969 () Bool)

(assert (=> b!3882258 (= b_free!105265 (not b_next!105969))))

(declare-fun tp!1177320 () Bool)

(declare-fun b_and!291351 () Bool)

(assert (=> b!3882258 (= tp!1177320 b_and!291351)))

(declare-fun b_free!105267 () Bool)

(declare-fun b_next!105971 () Bool)

(assert (=> b!3882258 (= b_free!105267 (not b_next!105971))))

(declare-fun tp!1177317 () Bool)

(declare-fun b_and!291353 () Bool)

(assert (=> b!3882258 (= tp!1177317 b_and!291353)))

(declare-fun b!3882232 () Bool)

(declare-fun b_free!105269 () Bool)

(declare-fun b_next!105973 () Bool)

(assert (=> b!3882232 (= b_free!105269 (not b_next!105973))))

(declare-fun tp!1177321 () Bool)

(declare-fun b_and!291355 () Bool)

(assert (=> b!3882232 (= tp!1177321 b_and!291355)))

(declare-fun b_free!105271 () Bool)

(declare-fun b_next!105975 () Bool)

(assert (=> b!3882232 (= b_free!105271 (not b_next!105975))))

(declare-fun tp!1177325 () Bool)

(declare-fun b_and!291357 () Bool)

(assert (=> b!3882232 (= tp!1177325 b_and!291357)))

(declare-fun b!3882259 () Bool)

(declare-fun b_free!105273 () Bool)

(declare-fun b_next!105977 () Bool)

(assert (=> b!3882259 (= b_free!105273 (not b_next!105977))))

(declare-fun tp!1177315 () Bool)

(declare-fun b_and!291359 () Bool)

(assert (=> b!3882259 (= tp!1177315 b_and!291359)))

(declare-fun b_free!105275 () Bool)

(declare-fun b_next!105979 () Bool)

(assert (=> b!3882259 (= b_free!105275 (not b_next!105979))))

(declare-fun tp!1177311 () Bool)

(declare-fun b_and!291361 () Bool)

(assert (=> b!3882259 (= tp!1177311 b_and!291361)))

(declare-fun b!3882257 () Bool)

(declare-fun b_free!105277 () Bool)

(declare-fun b_next!105981 () Bool)

(assert (=> b!3882257 (= b_free!105277 (not b_next!105981))))

(declare-fun tp!1177323 () Bool)

(declare-fun b_and!291363 () Bool)

(assert (=> b!3882257 (= tp!1177323 b_and!291363)))

(declare-fun b_free!105279 () Bool)

(declare-fun b_next!105983 () Bool)

(assert (=> b!3882257 (= b_free!105279 (not b_next!105983))))

(declare-fun tp!1177312 () Bool)

(declare-fun b_and!291365 () Bool)

(assert (=> b!3882257 (= tp!1177312 b_and!291365)))

(declare-fun b!3882227 () Bool)

(declare-fun res!1573084 () Bool)

(declare-fun e!2402485 () Bool)

(assert (=> b!3882227 (=> (not res!1573084) (not e!2402485))))

(declare-datatypes ((C!22840 0))(
  ( (C!22841 (val!13514 Int)) )
))
(declare-datatypes ((List!41436 0))(
  ( (Nil!41312) (Cons!41312 (h!46732 C!22840) (t!315561 List!41436)) )
))
(declare-fun suffixResult!91 () List!41436)

(declare-datatypes ((LexerInterface!6011 0))(
  ( (LexerInterfaceExt!6008 (__x!25521 Int)) (Lexer!6009) )
))
(declare-fun thiss!20629 () LexerInterface!6011)

(declare-fun suffix!1176 () List!41436)

(declare-datatypes ((IArray!25271 0))(
  ( (IArray!25272 (innerList!12693 List!41436)) )
))
(declare-datatypes ((Conc!12633 0))(
  ( (Node!12633 (left!31674 Conc!12633) (right!32004 Conc!12633) (csize!25496 Int) (cheight!12844 Int)) (Leaf!19551 (xs!15939 IArray!25271) (csize!25497 Int)) (Empty!12633) )
))
(declare-datatypes ((BalanceConc!24860 0))(
  ( (BalanceConc!24861 (c!675222 Conc!12633)) )
))
(declare-datatypes ((List!41437 0))(
  ( (Nil!41313) (Cons!41313 (h!46733 (_ BitVec 16)) (t!315562 List!41437)) )
))
(declare-datatypes ((TokenValue!6652 0))(
  ( (FloatLiteralValue!13304 (text!47009 List!41437)) (TokenValueExt!6651 (__x!25522 Int)) (Broken!33260 (value!203635 List!41437)) (Object!6775) (End!6652) (Def!6652) (Underscore!6652) (Match!6652) (Else!6652) (Error!6652) (Case!6652) (If!6652) (Extends!6652) (Abstract!6652) (Class!6652) (Val!6652) (DelimiterValue!13304 (del!6712 List!41437)) (KeywordValue!6658 (value!203636 List!41437)) (CommentValue!13304 (value!203637 List!41437)) (WhitespaceValue!13304 (value!203638 List!41437)) (IndentationValue!6652 (value!203639 List!41437)) (String!46977) (Int32!6652) (Broken!33261 (value!203640 List!41437)) (Boolean!6653) (Unit!59375) (OperatorValue!6655 (op!6712 List!41437)) (IdentifierValue!13304 (value!203641 List!41437)) (IdentifierValue!13305 (value!203642 List!41437)) (WhitespaceValue!13305 (value!203643 List!41437)) (True!13304) (False!13304) (Broken!33262 (value!203644 List!41437)) (Broken!33263 (value!203645 List!41437)) (True!13305) (RightBrace!6652) (RightBracket!6652) (Colon!6652) (Null!6652) (Comma!6652) (LeftBracket!6652) (False!13305) (LeftBrace!6652) (ImaginaryLiteralValue!6652 (text!47010 List!41437)) (StringLiteralValue!19956 (value!203646 List!41437)) (EOFValue!6652 (value!203647 List!41437)) (IdentValue!6652 (value!203648 List!41437)) (DelimiterValue!13305 (value!203649 List!41437)) (DedentValue!6652 (value!203650 List!41437)) (NewLineValue!6652 (value!203651 List!41437)) (IntegerValue!19956 (value!203652 (_ BitVec 32)) (text!47011 List!41437)) (IntegerValue!19957 (value!203653 Int) (text!47012 List!41437)) (Times!6652) (Or!6652) (Equal!6652) (Minus!6652) (Broken!33264 (value!203654 List!41437)) (And!6652) (Div!6652) (LessEqual!6652) (Mod!6652) (Concat!17979) (Not!6652) (Plus!6652) (SpaceValue!6652 (value!203655 List!41437)) (IntegerValue!19958 (value!203656 Int) (text!47013 List!41437)) (StringLiteralValue!19957 (text!47014 List!41437)) (FloatLiteralValue!13305 (text!47015 List!41437)) (BytesLiteralValue!6652 (value!203657 List!41437)) (CommentValue!13305 (value!203658 List!41437)) (StringLiteralValue!19958 (value!203659 List!41437)) (ErrorTokenValue!6652 (msg!6713 List!41437)) )
))
(declare-datatypes ((Regex!11327 0))(
  ( (ElementMatch!11327 (c!675223 C!22840)) (Concat!17980 (regOne!23166 Regex!11327) (regTwo!23166 Regex!11327)) (EmptyExpr!11327) (Star!11327 (reg!11656 Regex!11327)) (EmptyLang!11327) (Union!11327 (regOne!23167 Regex!11327) (regTwo!23167 Regex!11327)) )
))
(declare-datatypes ((String!46978 0))(
  ( (String!46979 (value!203660 String)) )
))
(declare-datatypes ((TokenValueInjection!12732 0))(
  ( (TokenValueInjection!12733 (toValue!8854 Int) (toChars!8713 Int)) )
))
(declare-datatypes ((Rule!12644 0))(
  ( (Rule!12645 (regex!6422 Regex!11327) (tag!7282 String!46978) (isSeparator!6422 Bool) (transformation!6422 TokenValueInjection!12732)) )
))
(declare-datatypes ((List!41438 0))(
  ( (Nil!41314) (Cons!41314 (h!46734 Rule!12644) (t!315563 List!41438)) )
))
(declare-fun rules!2768 () List!41438)

(declare-datatypes ((Token!11982 0))(
  ( (Token!11983 (value!203661 TokenValue!6652) (rule!9322 Rule!12644) (size!31019 Int) (originalCharacters!7022 List!41436)) )
))
(declare-datatypes ((List!41439 0))(
  ( (Nil!41315) (Cons!41315 (h!46735 Token!11982) (t!315564 List!41439)) )
))
(declare-fun suffixTokens!72 () List!41439)

(declare-datatypes ((tuple2!40546 0))(
  ( (tuple2!40547 (_1!23407 List!41439) (_2!23407 List!41436)) )
))
(declare-fun lexList!1779 (LexerInterface!6011 List!41438 List!41436) tuple2!40546)

(assert (=> b!3882227 (= res!1573084 (= (lexList!1779 thiss!20629 rules!2768 suffix!1176) (tuple2!40547 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3882228 () Bool)

(declare-fun e!2402494 () Bool)

(declare-fun tp_is_empty!19625 () Bool)

(declare-fun tp!1177309 () Bool)

(assert (=> b!3882228 (= e!2402494 (and tp_is_empty!19625 tp!1177309))))

(declare-fun b!3882229 () Bool)

(declare-fun res!1573089 () Bool)

(declare-fun e!2402493 () Bool)

(assert (=> b!3882229 (=> (not res!1573089) (not e!2402493))))

(declare-fun isEmpty!24542 (List!41438) Bool)

(assert (=> b!3882229 (= res!1573089 (not (isEmpty!24542 rules!2768)))))

(declare-fun b!3882230 () Bool)

(declare-fun res!1573092 () Bool)

(declare-fun e!2402496 () Bool)

(assert (=> b!3882230 (=> res!1573092 e!2402496)))

(declare-fun lt!1354674 () tuple2!40546)

(declare-datatypes ((tuple2!40548 0))(
  ( (tuple2!40549 (_1!23408 Token!11982) (_2!23408 List!41436)) )
))
(declare-datatypes ((Option!8840 0))(
  ( (None!8839) (Some!8839 (v!39139 tuple2!40548)) )
))
(declare-fun lt!1354688 () Option!8840)

(assert (=> b!3882230 (= res!1573092 (or (not (= lt!1354674 (tuple2!40547 (_1!23407 lt!1354674) (_2!23407 lt!1354674)))) (not (= (_2!23408 (v!39139 lt!1354688)) suffix!1176))))))

(declare-fun b!3882231 () Bool)

(declare-fun e!2402500 () Bool)

(declare-fun lt!1354682 () List!41439)

(declare-fun lt!1354690 () tuple2!40546)

(assert (=> b!3882231 (= e!2402500 (= lt!1354682 (_1!23407 lt!1354690)))))

(declare-fun lt!1354676 () List!41436)

(declare-fun prefix!426 () List!41436)

(assert (=> b!3882231 (= lt!1354676 prefix!426)))

(declare-datatypes ((Unit!59376 0))(
  ( (Unit!59377) )
))
(declare-fun lt!1354691 () Unit!59376)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!494 (List!41436 List!41436 List!41436 List!41436) Unit!59376)

(assert (=> b!3882231 (= lt!1354691 (lemmaConcatSameAndSameSizesThenSameLists!494 lt!1354676 (_2!23408 (v!39139 lt!1354688)) prefix!426 suffix!1176))))

(declare-fun res!1573083 () Bool)

(assert (=> start!364492 (=> (not res!1573083) (not e!2402493))))

(get-info :version)

(assert (=> start!364492 (= res!1573083 ((_ is Lexer!6009) thiss!20629))))

(assert (=> start!364492 e!2402493))

(declare-fun e!2402498 () Bool)

(assert (=> start!364492 e!2402498))

(assert (=> start!364492 true))

(assert (=> start!364492 e!2402494))

(declare-fun e!2402497 () Bool)

(assert (=> start!364492 e!2402497))

(declare-fun e!2402483 () Bool)

(assert (=> start!364492 e!2402483))

(declare-fun e!2402490 () Bool)

(assert (=> start!364492 e!2402490))

(declare-fun e!2402481 () Bool)

(assert (=> start!364492 e!2402481))

(declare-fun e!2402482 () Bool)

(assert (=> b!3882232 (= e!2402482 (and tp!1177321 tp!1177325))))

(declare-fun b!3882233 () Bool)

(declare-fun e!2402506 () Option!8840)

(declare-fun e!2402502 () Option!8840)

(assert (=> b!3882233 (= e!2402506 e!2402502)))

(declare-fun c!675220 () Bool)

(assert (=> b!3882233 (= c!675220 ((_ is Cons!41314) rules!2768))))

(declare-fun b!3882234 () Bool)

(declare-fun tp!1177307 () Bool)

(assert (=> b!3882234 (= e!2402498 (and tp_is_empty!19625 tp!1177307))))

(declare-fun e!2402501 () Bool)

(declare-fun e!2402492 () Bool)

(declare-fun b!3882235 () Bool)

(declare-fun tp!1177314 () Bool)

(declare-fun inv!55468 (String!46978) Bool)

(declare-fun inv!55471 (TokenValueInjection!12732) Bool)

(assert (=> b!3882235 (= e!2402501 (and tp!1177314 (inv!55468 (tag!7282 (h!46734 rules!2768))) (inv!55471 (transformation!6422 (h!46734 rules!2768))) e!2402492))))

(declare-fun b!3882236 () Bool)

(assert (=> b!3882236 (= e!2402496 e!2402500)))

(declare-fun res!1573085 () Bool)

(assert (=> b!3882236 (=> res!1573085 e!2402500)))

(assert (=> b!3882236 (= res!1573085 (not (= lt!1354688 (Some!8839 (tuple2!40549 (_1!23408 (v!39139 lt!1354688)) (_2!23408 (v!39139 lt!1354688)))))))))

(declare-fun e!2402488 () Bool)

(assert (=> b!3882236 e!2402488))

(declare-fun res!1573079 () Bool)

(assert (=> b!3882236 (=> (not res!1573079) (not e!2402488))))

(declare-fun lt!1354679 () List!41436)

(declare-fun isPrefix!3517 (List!41436 List!41436) Bool)

(assert (=> b!3882236 (= res!1573079 (isPrefix!3517 lt!1354679 lt!1354679))))

(declare-fun lt!1354681 () Unit!59376)

(declare-fun lemmaIsPrefixRefl!2224 (List!41436 List!41436) Unit!59376)

(assert (=> b!3882236 (= lt!1354681 (lemmaIsPrefixRefl!2224 lt!1354679 lt!1354679))))

(assert (=> b!3882236 (= lt!1354690 (tuple2!40547 (Cons!41315 (_1!23408 (v!39139 lt!1354688)) (_1!23407 lt!1354674)) (_2!23407 lt!1354674)))))

(declare-fun err!4337 () Option!8840)

(declare-fun e!2402489 () Bool)

(declare-fun e!2402491 () Bool)

(declare-fun b!3882237 () Bool)

(declare-fun tp!1177326 () Bool)

(assert (=> b!3882237 (= e!2402489 (and tp!1177326 (inv!55468 (tag!7282 (rule!9322 (_1!23408 (v!39139 err!4337))))) (inv!55471 (transformation!6422 (rule!9322 (_1!23408 (v!39139 err!4337))))) e!2402491))))

(declare-fun tp!1177305 () Bool)

(declare-fun e!2402507 () Bool)

(declare-fun b!3882238 () Bool)

(declare-fun inv!55472 (Token!11982) Bool)

(assert (=> b!3882238 (= e!2402490 (and (inv!55472 (h!46735 suffixTokens!72)) e!2402507 tp!1177305))))

(declare-fun e!2402495 () Bool)

(declare-fun tp!1177322 () Bool)

(declare-fun b!3882239 () Bool)

(declare-fun inv!21 (TokenValue!6652) Bool)

(assert (=> b!3882239 (= e!2402495 (and (inv!21 (value!203661 (_1!23408 (v!39139 err!4337)))) e!2402489 tp!1177322))))

(declare-fun b!3882240 () Bool)

(declare-fun tp!1177318 () Bool)

(assert (=> b!3882240 (= e!2402481 (and tp_is_empty!19625 tp!1177318))))

(declare-fun b!3882241 () Bool)

(declare-fun e!2402475 () Bool)

(assert (=> b!3882241 (= e!2402475 (not e!2402496))))

(declare-fun res!1573090 () Bool)

(assert (=> b!3882241 (=> res!1573090 e!2402496)))

(declare-fun lt!1354677 () List!41436)

(assert (=> b!3882241 (= res!1573090 (not (= lt!1354677 lt!1354679)))))

(assert (=> b!3882241 (= lt!1354674 (lexList!1779 thiss!20629 rules!2768 (_2!23408 (v!39139 lt!1354688))))))

(declare-fun lt!1354680 () Int)

(declare-fun lt!1354675 () List!41436)

(declare-fun lt!1354687 () TokenValue!6652)

(assert (=> b!3882241 (and (= (size!31019 (_1!23408 (v!39139 lt!1354688))) lt!1354680) (= (originalCharacters!7022 (_1!23408 (v!39139 lt!1354688))) lt!1354676) (= (tuple2!40549 (_1!23408 (v!39139 lt!1354688)) (_2!23408 (v!39139 lt!1354688))) (tuple2!40549 (Token!11983 lt!1354687 (rule!9322 (_1!23408 (v!39139 lt!1354688))) lt!1354680 lt!1354676) lt!1354675)))))

(declare-fun size!31020 (List!41436) Int)

(assert (=> b!3882241 (= lt!1354680 (size!31020 lt!1354676))))

(declare-fun e!2402484 () Bool)

(assert (=> b!3882241 e!2402484))

(declare-fun res!1573088 () Bool)

(assert (=> b!3882241 (=> (not res!1573088) (not e!2402484))))

(assert (=> b!3882241 (= res!1573088 (= (value!203661 (_1!23408 (v!39139 lt!1354688))) lt!1354687))))

(declare-fun apply!9661 (TokenValueInjection!12732 BalanceConc!24860) TokenValue!6652)

(declare-fun seqFromList!4689 (List!41436) BalanceConc!24860)

(assert (=> b!3882241 (= lt!1354687 (apply!9661 (transformation!6422 (rule!9322 (_1!23408 (v!39139 lt!1354688)))) (seqFromList!4689 lt!1354676)))))

(assert (=> b!3882241 (= (_2!23408 (v!39139 lt!1354688)) lt!1354675)))

(declare-fun lt!1354678 () Unit!59376)

(declare-fun lemmaSamePrefixThenSameSuffix!1738 (List!41436 List!41436 List!41436 List!41436 List!41436) Unit!59376)

(assert (=> b!3882241 (= lt!1354678 (lemmaSamePrefixThenSameSuffix!1738 lt!1354676 (_2!23408 (v!39139 lt!1354688)) lt!1354676 lt!1354675 lt!1354679))))

(declare-fun getSuffix!1972 (List!41436 List!41436) List!41436)

(assert (=> b!3882241 (= lt!1354675 (getSuffix!1972 lt!1354679 lt!1354676))))

(assert (=> b!3882241 (isPrefix!3517 lt!1354676 lt!1354677)))

(declare-fun ++!10601 (List!41436 List!41436) List!41436)

(assert (=> b!3882241 (= lt!1354677 (++!10601 lt!1354676 (_2!23408 (v!39139 lt!1354688))))))

(declare-fun lt!1354689 () Unit!59376)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2380 (List!41436 List!41436) Unit!59376)

(assert (=> b!3882241 (= lt!1354689 (lemmaConcatTwoListThenFirstIsPrefix!2380 lt!1354676 (_2!23408 (v!39139 lt!1354688))))))

(declare-fun list!15354 (BalanceConc!24860) List!41436)

(declare-fun charsOf!4246 (Token!11982) BalanceConc!24860)

(assert (=> b!3882241 (= lt!1354676 (list!15354 (charsOf!4246 (_1!23408 (v!39139 lt!1354688)))))))

(declare-fun ruleValid!2370 (LexerInterface!6011 Rule!12644) Bool)

(assert (=> b!3882241 (ruleValid!2370 thiss!20629 (rule!9322 (_1!23408 (v!39139 lt!1354688))))))

(declare-fun lt!1354684 () Unit!59376)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1450 (LexerInterface!6011 Rule!12644 List!41438) Unit!59376)

(assert (=> b!3882241 (= lt!1354684 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1450 thiss!20629 (rule!9322 (_1!23408 (v!39139 lt!1354688))) rules!2768))))

(declare-fun lt!1354683 () Unit!59376)

(declare-fun lemmaCharactersSize!1079 (Token!11982) Unit!59376)

(assert (=> b!3882241 (= lt!1354683 (lemmaCharactersSize!1079 (_1!23408 (v!39139 lt!1354688))))))

(declare-fun b!3882242 () Bool)

(assert (=> b!3882242 (= e!2402484 (= (size!31019 (_1!23408 (v!39139 lt!1354688))) (size!31020 (originalCharacters!7022 (_1!23408 (v!39139 lt!1354688))))))))

(declare-fun b!3882243 () Bool)

(assert (=> b!3882243 (= e!2402488 (= lt!1354688 e!2402506))))

(declare-fun c!675221 () Bool)

(assert (=> b!3882243 (= c!675221 (and ((_ is Cons!41314) rules!2768) ((_ is Nil!41314) (t!315563 rules!2768))))))

(declare-fun b!3882244 () Bool)

(assert (=> b!3882244 (= e!2402485 e!2402475)))

(declare-fun res!1573082 () Bool)

(assert (=> b!3882244 (=> (not res!1573082) (not e!2402475))))

(assert (=> b!3882244 (= res!1573082 ((_ is Some!8839) lt!1354688))))

(declare-fun maxPrefix!3315 (LexerInterface!6011 List!41438 List!41436) Option!8840)

(assert (=> b!3882244 (= lt!1354688 (maxPrefix!3315 thiss!20629 rules!2768 lt!1354679))))

(declare-fun e!2402503 () Bool)

(declare-fun prefixTokens!80 () List!41439)

(declare-fun tp!1177308 () Bool)

(declare-fun b!3882245 () Bool)

(assert (=> b!3882245 (= e!2402503 (and tp!1177308 (inv!55468 (tag!7282 (rule!9322 (h!46735 prefixTokens!80)))) (inv!55471 (transformation!6422 (rule!9322 (h!46735 prefixTokens!80)))) e!2402482))))

(declare-fun b!3882246 () Bool)

(declare-fun tp!1177306 () Bool)

(assert (=> b!3882246 (= e!2402497 (and e!2402501 tp!1177306))))

(declare-fun tp!1177316 () Bool)

(declare-fun e!2402487 () Bool)

(declare-fun b!3882247 () Bool)

(assert (=> b!3882247 (= e!2402507 (and (inv!21 (value!203661 (h!46735 suffixTokens!72))) e!2402487 tp!1177316))))

(declare-fun tp!1177324 () Bool)

(declare-fun e!2402476 () Bool)

(declare-fun b!3882248 () Bool)

(assert (=> b!3882248 (= e!2402476 (and (inv!21 (value!203661 (h!46735 prefixTokens!80))) e!2402503 tp!1177324))))

(declare-fun b!3882249 () Bool)

(declare-fun lt!1354686 () Option!8840)

(assert (=> b!3882249 (= lt!1354686 (maxPrefix!3315 thiss!20629 (t!315563 rules!2768) lt!1354679))))

(declare-fun lt!1354685 () Option!8840)

(declare-fun call!282908 () Option!8840)

(assert (=> b!3882249 (= lt!1354685 call!282908)))

(assert (=> b!3882249 (= e!2402502 (ite (and ((_ is None!8839) lt!1354685) ((_ is None!8839) lt!1354686)) None!8839 (ite ((_ is None!8839) lt!1354686) lt!1354685 (ite ((_ is None!8839) lt!1354685) lt!1354686 (ite (>= (size!31019 (_1!23408 (v!39139 lt!1354685))) (size!31019 (_1!23408 (v!39139 lt!1354686)))) (Some!8839 (v!39139 lt!1354685)) lt!1354686)))))))

(declare-fun b!3882250 () Bool)

(declare-fun res!1573080 () Bool)

(assert (=> b!3882250 (=> (not res!1573080) (not e!2402493))))

(declare-fun isEmpty!24543 (List!41439) Bool)

(assert (=> b!3882250 (= res!1573080 (not (isEmpty!24543 prefixTokens!80)))))

(declare-fun bm!282903 () Bool)

(declare-fun maxPrefixOneRule!2391 (LexerInterface!6011 Rule!12644 List!41436) Option!8840)

(assert (=> bm!282903 (= call!282908 (maxPrefixOneRule!2391 thiss!20629 (h!46734 rules!2768) lt!1354679))))

(declare-fun b!3882251 () Bool)

(declare-fun res!1573081 () Bool)

(assert (=> b!3882251 (=> (not res!1573081) (not e!2402493))))

(declare-fun rulesInvariant!5354 (LexerInterface!6011 List!41438) Bool)

(assert (=> b!3882251 (= res!1573081 (rulesInvariant!5354 thiss!20629 rules!2768))))

(declare-fun b!3882252 () Bool)

(assert (=> b!3882252 true))

(declare-fun e!2402504 () Bool)

(assert (=> b!3882252 e!2402504))

(assert (=> b!3882252 (= e!2402502 err!4337)))

(declare-fun b!3882253 () Bool)

(declare-fun res!1573086 () Bool)

(assert (=> b!3882253 (=> res!1573086 e!2402496)))

(declare-fun ++!10602 (List!41439 List!41439) List!41439)

(assert (=> b!3882253 (= res!1573086 (not (= lt!1354690 (tuple2!40547 (++!10602 (Cons!41315 (_1!23408 (v!39139 lt!1354688)) Nil!41315) (_1!23407 lt!1354674)) (_2!23407 lt!1354674)))))))

(declare-fun b!3882254 () Bool)

(declare-fun res!1573087 () Bool)

(assert (=> b!3882254 (=> (not res!1573087) (not e!2402493))))

(declare-fun isEmpty!24544 (List!41436) Bool)

(assert (=> b!3882254 (= res!1573087 (not (isEmpty!24544 prefix!426)))))

(declare-fun b!3882255 () Bool)

(declare-fun tp!1177310 () Bool)

(declare-fun e!2402505 () Bool)

(assert (=> b!3882255 (= e!2402487 (and tp!1177310 (inv!55468 (tag!7282 (rule!9322 (h!46735 suffixTokens!72)))) (inv!55471 (transformation!6422 (rule!9322 (h!46735 suffixTokens!72)))) e!2402505))))

(declare-fun b!3882256 () Bool)

(declare-fun tp!1177319 () Bool)

(assert (=> b!3882256 (= e!2402504 (and (inv!55472 (_1!23408 (v!39139 err!4337))) e!2402495 tp!1177319))))

(assert (=> b!3882257 (= e!2402491 (and tp!1177323 tp!1177312))))

(assert (=> b!3882258 (= e!2402505 (and tp!1177320 tp!1177317))))

(assert (=> b!3882259 (= e!2402492 (and tp!1177315 tp!1177311))))

(declare-fun b!3882260 () Bool)

(assert (=> b!3882260 (= e!2402506 call!282908)))

(declare-fun b!3882261 () Bool)

(assert (=> b!3882261 (= e!2402493 e!2402485)))

(declare-fun res!1573091 () Bool)

(assert (=> b!3882261 (=> (not res!1573091) (not e!2402485))))

(assert (=> b!3882261 (= res!1573091 (= lt!1354690 (tuple2!40547 lt!1354682 suffixResult!91)))))

(assert (=> b!3882261 (= lt!1354690 (lexList!1779 thiss!20629 rules!2768 lt!1354679))))

(assert (=> b!3882261 (= lt!1354682 (++!10602 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3882261 (= lt!1354679 (++!10601 prefix!426 suffix!1176))))

(declare-fun tp!1177313 () Bool)

(declare-fun b!3882262 () Bool)

(assert (=> b!3882262 (= e!2402483 (and (inv!55472 (h!46735 prefixTokens!80)) e!2402476 tp!1177313))))

(assert (= (and start!364492 res!1573083) b!3882229))

(assert (= (and b!3882229 res!1573089) b!3882251))

(assert (= (and b!3882251 res!1573081) b!3882250))

(assert (= (and b!3882250 res!1573080) b!3882254))

(assert (= (and b!3882254 res!1573087) b!3882261))

(assert (= (and b!3882261 res!1573091) b!3882227))

(assert (= (and b!3882227 res!1573084) b!3882244))

(assert (= (and b!3882244 res!1573082) b!3882241))

(assert (= (and b!3882241 res!1573088) b!3882242))

(assert (= (and b!3882241 (not res!1573090)) b!3882253))

(assert (= (and b!3882253 (not res!1573086)) b!3882230))

(assert (= (and b!3882230 (not res!1573092)) b!3882236))

(assert (= (and b!3882236 res!1573079) b!3882243))

(assert (= (and b!3882243 c!675221) b!3882260))

(assert (= (and b!3882243 (not c!675221)) b!3882233))

(assert (= (and b!3882233 c!675220) b!3882249))

(assert (= (and b!3882233 (not c!675220)) b!3882252))

(assert (= b!3882237 b!3882257))

(assert (= b!3882239 b!3882237))

(assert (= b!3882256 b!3882239))

(assert (= (and b!3882252 ((_ is Some!8839) err!4337)) b!3882256))

(assert (= (or b!3882260 b!3882249) bm!282903))

(assert (= (and b!3882236 (not res!1573085)) b!3882231))

(assert (= (and start!364492 ((_ is Cons!41312) suffixResult!91)) b!3882234))

(assert (= (and start!364492 ((_ is Cons!41312) suffix!1176)) b!3882228))

(assert (= b!3882235 b!3882259))

(assert (= b!3882246 b!3882235))

(assert (= (and start!364492 ((_ is Cons!41314) rules!2768)) b!3882246))

(assert (= b!3882245 b!3882232))

(assert (= b!3882248 b!3882245))

(assert (= b!3882262 b!3882248))

(assert (= (and start!364492 ((_ is Cons!41315) prefixTokens!80)) b!3882262))

(assert (= b!3882255 b!3882258))

(assert (= b!3882247 b!3882255))

(assert (= b!3882238 b!3882247))

(assert (= (and start!364492 ((_ is Cons!41315) suffixTokens!72)) b!3882238))

(assert (= (and start!364492 ((_ is Cons!41312) prefix!426)) b!3882240))

(declare-fun m!4440825 () Bool)

(assert (=> b!3882262 m!4440825))

(declare-fun m!4440827 () Bool)

(assert (=> b!3882249 m!4440827))

(declare-fun m!4440829 () Bool)

(assert (=> b!3882261 m!4440829))

(declare-fun m!4440831 () Bool)

(assert (=> b!3882261 m!4440831))

(declare-fun m!4440833 () Bool)

(assert (=> b!3882261 m!4440833))

(declare-fun m!4440835 () Bool)

(assert (=> b!3882244 m!4440835))

(declare-fun m!4440837 () Bool)

(assert (=> b!3882238 m!4440837))

(declare-fun m!4440839 () Bool)

(assert (=> b!3882251 m!4440839))

(declare-fun m!4440841 () Bool)

(assert (=> b!3882245 m!4440841))

(declare-fun m!4440843 () Bool)

(assert (=> b!3882245 m!4440843))

(declare-fun m!4440845 () Bool)

(assert (=> b!3882247 m!4440845))

(declare-fun m!4440847 () Bool)

(assert (=> b!3882236 m!4440847))

(declare-fun m!4440849 () Bool)

(assert (=> b!3882236 m!4440849))

(declare-fun m!4440851 () Bool)

(assert (=> b!3882227 m!4440851))

(declare-fun m!4440853 () Bool)

(assert (=> b!3882237 m!4440853))

(declare-fun m!4440855 () Bool)

(assert (=> b!3882237 m!4440855))

(declare-fun m!4440857 () Bool)

(assert (=> b!3882248 m!4440857))

(declare-fun m!4440859 () Bool)

(assert (=> bm!282903 m!4440859))

(declare-fun m!4440861 () Bool)

(assert (=> b!3882253 m!4440861))

(declare-fun m!4440863 () Bool)

(assert (=> b!3882254 m!4440863))

(declare-fun m!4440865 () Bool)

(assert (=> b!3882239 m!4440865))

(declare-fun m!4440867 () Bool)

(assert (=> b!3882235 m!4440867))

(declare-fun m!4440869 () Bool)

(assert (=> b!3882235 m!4440869))

(declare-fun m!4440871 () Bool)

(assert (=> b!3882229 m!4440871))

(declare-fun m!4440873 () Bool)

(assert (=> b!3882256 m!4440873))

(declare-fun m!4440875 () Bool)

(assert (=> b!3882255 m!4440875))

(declare-fun m!4440877 () Bool)

(assert (=> b!3882255 m!4440877))

(declare-fun m!4440879 () Bool)

(assert (=> b!3882250 m!4440879))

(declare-fun m!4440881 () Bool)

(assert (=> b!3882241 m!4440881))

(declare-fun m!4440883 () Bool)

(assert (=> b!3882241 m!4440883))

(declare-fun m!4440885 () Bool)

(assert (=> b!3882241 m!4440885))

(declare-fun m!4440887 () Bool)

(assert (=> b!3882241 m!4440887))

(declare-fun m!4440889 () Bool)

(assert (=> b!3882241 m!4440889))

(declare-fun m!4440891 () Bool)

(assert (=> b!3882241 m!4440891))

(declare-fun m!4440893 () Bool)

(assert (=> b!3882241 m!4440893))

(declare-fun m!4440895 () Bool)

(assert (=> b!3882241 m!4440895))

(declare-fun m!4440897 () Bool)

(assert (=> b!3882241 m!4440897))

(declare-fun m!4440899 () Bool)

(assert (=> b!3882241 m!4440899))

(declare-fun m!4440901 () Bool)

(assert (=> b!3882241 m!4440901))

(declare-fun m!4440903 () Bool)

(assert (=> b!3882241 m!4440903))

(assert (=> b!3882241 m!4440881))

(assert (=> b!3882241 m!4440901))

(declare-fun m!4440905 () Bool)

(assert (=> b!3882241 m!4440905))

(declare-fun m!4440907 () Bool)

(assert (=> b!3882241 m!4440907))

(declare-fun m!4440909 () Bool)

(assert (=> b!3882242 m!4440909))

(declare-fun m!4440911 () Bool)

(assert (=> b!3882231 m!4440911))

(check-sat b_and!291365 b_and!291351 (not b!3882253) (not b!3882246) b_and!291357 (not b!3882256) (not b!3882227) (not b_next!105973) (not b!3882245) (not b!3882249) b_and!291355 (not b!3882262) (not b_next!105983) (not b_next!105971) (not b!3882239) (not b_next!105981) b_and!291359 (not b!3882250) (not b_next!105969) (not b_next!105975) b_and!291363 (not b!3882234) (not bm!282903) b_and!291353 (not b!3882228) (not b!3882254) (not b!3882251) (not b!3882255) (not b!3882248) (not b_next!105979) (not b!3882244) (not b!3882261) (not b!3882238) (not b!3882240) (not b!3882229) (not b!3882236) (not b_next!105977) tp_is_empty!19625 (not b!3882231) (not b!3882247) (not b!3882237) (not b!3882241) (not b!3882242) (not b!3882235) b_and!291361)
(check-sat b_and!291365 (not b_next!105973) b_and!291355 b_and!291351 (not b_next!105983) b_and!291357 b_and!291353 (not b_next!105979) (not b_next!105977) b_and!291361 (not b_next!105971) (not b_next!105981) b_and!291359 (not b_next!105969) (not b_next!105975) b_and!291363)
