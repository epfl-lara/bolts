; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65416 () Bool)

(assert start!65416)

(declare-fun b!684466 () Bool)

(declare-fun b_free!19213 () Bool)

(declare-fun b_next!19277 () Bool)

(assert (=> b!684466 (= b_free!19213 (not b_next!19277))))

(declare-fun tp!203026 () Bool)

(declare-fun b_and!63007 () Bool)

(assert (=> b!684466 (= tp!203026 b_and!63007)))

(declare-fun b!684464 () Bool)

(declare-fun b_free!19215 () Bool)

(declare-fun b_next!19279 () Bool)

(assert (=> b!684464 (= b_free!19215 (not b_next!19279))))

(declare-fun tp!203027 () Bool)

(declare-fun b_and!63009 () Bool)

(assert (=> b!684464 (= tp!203027 b_and!63009)))

(declare-fun b!684467 () Bool)

(declare-fun b_free!19217 () Bool)

(declare-fun b_next!19281 () Bool)

(assert (=> b!684467 (= b_free!19217 (not b_next!19281))))

(declare-fun tp!203019 () Bool)

(declare-fun b_and!63011 () Bool)

(assert (=> b!684467 (= tp!203019 b_and!63011)))

(declare-fun b!684463 () Bool)

(declare-fun b_free!19219 () Bool)

(declare-fun b_next!19283 () Bool)

(assert (=> b!684463 (= b_free!19219 (not b_next!19283))))

(declare-fun tp!203028 () Bool)

(declare-fun b_and!63013 () Bool)

(assert (=> b!684463 (= tp!203028 b_and!63013)))

(declare-fun b!684454 () Bool)

(declare-fun e!429672 () Bool)

(declare-fun e!429665 () Bool)

(declare-datatypes ((Regex!1813 0))(
  ( (ElementMatch!1813 (c!121043 (_ BitVec 16))) (Concat!3324 (regOne!4138 Regex!1813) (regTwo!4138 Regex!1813)) (EmptyExpr!1813) (Star!1813 (reg!2142 Regex!1813)) (EmptyLang!1813) (Union!1813 (regOne!4139 Regex!1813) (regTwo!4139 Regex!1813)) )
))
(declare-datatypes ((List!7310 0))(
  ( (Nil!7296) (Cons!7296 (h!12697 Regex!1813) (t!87003 List!7310)) )
))
(declare-datatypes ((Context!446 0))(
  ( (Context!447 (exprs!723 List!7310)) )
))
(declare-datatypes ((tuple2!7628 0))(
  ( (tuple2!7629 (_1!4201 Context!446) (_2!4201 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7630 0))(
  ( (tuple2!7631 (_1!4202 tuple2!7628) (_2!4202 (InoxSet Context!446))) )
))
(declare-datatypes ((List!7311 0))(
  ( (Nil!7297) (Cons!7297 (h!12698 tuple2!7630) (t!87004 List!7311)) )
))
(declare-datatypes ((array!2698 0))(
  ( (array!2699 (arr!1222 (Array (_ BitVec 32) List!7311)) (size!6004 (_ BitVec 32))) )
))
(declare-datatypes ((array!2700 0))(
  ( (array!2701 (arr!1223 (Array (_ BitVec 32) (_ BitVec 64))) (size!6005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1422 0))(
  ( (LongMapFixedSize!1423 (defaultEntry!1067 Int) (mask!2497 (_ BitVec 32)) (extraKeys!958 (_ BitVec 32)) (zeroValue!968 List!7311) (minValue!968 List!7311) (_size!1531 (_ BitVec 32)) (_keys!1005 array!2700) (_values!990 array!2698) (_vacant!772 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2785 0))(
  ( (Cell!2786 (v!17469 LongMapFixedSize!1422)) )
))
(declare-datatypes ((MutLongMap!711 0))(
  ( (LongMap!711 (underlying!1605 Cell!2785)) (MutLongMapExt!710 (__x!5163 Int)) )
))
(declare-fun lt!283673 () MutLongMap!711)

(get-info :version)

(assert (=> b!684454 (= e!429672 (and e!429665 ((_ is LongMap!711) lt!283673)))))

(declare-datatypes ((Hashable!683 0))(
  ( (HashableExt!682 (__x!5164 Int)) )
))
(declare-datatypes ((Cell!2787 0))(
  ( (Cell!2788 (v!17470 MutLongMap!711)) )
))
(declare-datatypes ((MutableMap!683 0))(
  ( (MutableMapExt!682 (__x!5165 Int)) (HashMap!683 (underlying!1606 Cell!2787) (hashF!2591 Hashable!683) (_size!1532 (_ BitVec 32)) (defaultValue!834 Int)) )
))
(declare-datatypes ((CacheUp!342 0))(
  ( (CacheUp!343 (cache!1070 MutableMap!683)) )
))
(declare-fun cacheUp!335 () CacheUp!342)

(assert (=> b!684454 (= lt!283673 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))

(declare-fun b!684456 () Bool)

(declare-fun e!429663 () Bool)

(declare-fun e!429675 () Bool)

(assert (=> b!684456 (= e!429663 e!429675)))

(declare-fun b!684457 () Bool)

(declare-fun e!429676 () Bool)

(declare-fun tp!203030 () Bool)

(declare-fun mapRes!2832 () Bool)

(assert (=> b!684457 (= e!429676 (and tp!203030 mapRes!2832))))

(declare-fun condMapEmpty!2833 () Bool)

(declare-datatypes ((tuple3!672 0))(
  ( (tuple3!673 (_1!4203 Regex!1813) (_2!4203 Context!446) (_3!387 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7632 0))(
  ( (tuple2!7633 (_1!4204 tuple3!672) (_2!4204 (InoxSet Context!446))) )
))
(declare-datatypes ((List!7312 0))(
  ( (Nil!7298) (Cons!7298 (h!12699 tuple2!7632) (t!87005 List!7312)) )
))
(declare-datatypes ((array!2702 0))(
  ( (array!2703 (arr!1224 (Array (_ BitVec 32) List!7312)) (size!6006 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1424 0))(
  ( (LongMapFixedSize!1425 (defaultEntry!1068 Int) (mask!2498 (_ BitVec 32)) (extraKeys!959 (_ BitVec 32)) (zeroValue!969 List!7312) (minValue!969 List!7312) (_size!1533 (_ BitVec 32)) (_keys!1006 array!2700) (_values!991 array!2702) (_vacant!773 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2789 0))(
  ( (Cell!2790 (v!17471 LongMapFixedSize!1424)) )
))
(declare-datatypes ((MutLongMap!712 0))(
  ( (LongMap!712 (underlying!1607 Cell!2789)) (MutLongMapExt!711 (__x!5166 Int)) )
))
(declare-datatypes ((Cell!2791 0))(
  ( (Cell!2792 (v!17472 MutLongMap!712)) )
))
(declare-datatypes ((Hashable!684 0))(
  ( (HashableExt!683 (__x!5167 Int)) )
))
(declare-datatypes ((MutableMap!684 0))(
  ( (MutableMapExt!683 (__x!5168 Int)) (HashMap!684 (underlying!1608 Cell!2791) (hashF!2592 Hashable!684) (_size!1534 (_ BitVec 32)) (defaultValue!835 Int)) )
))
(declare-datatypes ((CacheDown!346 0))(
  ( (CacheDown!347 (cache!1071 MutableMap!684)) )
))
(declare-fun cacheDown!348 () CacheDown!346)

(declare-fun mapDefault!2833 () List!7312)

(assert (=> b!684457 (= condMapEmpty!2833 (= (arr!1224 (_values!991 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) ((as const (Array (_ BitVec 32) List!7312)) mapDefault!2833)))))

(declare-fun mapNonEmpty!2832 () Bool)

(declare-fun tp!203025 () Bool)

(declare-fun tp!203024 () Bool)

(assert (=> mapNonEmpty!2832 (= mapRes!2832 (and tp!203025 tp!203024))))

(declare-fun mapValue!2832 () List!7312)

(declare-fun mapKey!2833 () (_ BitVec 32))

(declare-fun mapRest!2832 () (Array (_ BitVec 32) List!7312))

(assert (=> mapNonEmpty!2832 (= (arr!1224 (_values!991 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) (store mapRest!2832 mapKey!2833 mapValue!2832))))

(declare-fun b!684458 () Bool)

(declare-fun e!429678 () Bool)

(declare-fun tp!203021 () Bool)

(declare-fun mapRes!2833 () Bool)

(assert (=> b!684458 (= e!429678 (and tp!203021 mapRes!2833))))

(declare-fun condMapEmpty!2832 () Bool)

(declare-fun mapDefault!2832 () List!7311)

(assert (=> b!684458 (= condMapEmpty!2832 (= (arr!1222 (_values!990 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) ((as const (Array (_ BitVec 32) List!7311)) mapDefault!2832)))))

(declare-fun b!684459 () Bool)

(declare-fun e!429664 () Bool)

(declare-fun e!429666 () Bool)

(assert (=> b!684459 (= e!429664 e!429666)))

(declare-fun b!684460 () Bool)

(declare-fun e!429667 () Bool)

(assert (=> b!684460 (= e!429667 e!429663)))

(declare-fun b!684461 () Bool)

(assert (=> b!684461 (= e!429665 e!429664)))

(declare-fun b!684462 () Bool)

(declare-fun res!311690 () Bool)

(declare-fun e!429680 () Bool)

(assert (=> b!684462 (=> (not res!311690) (not e!429680))))

(declare-datatypes ((List!7313 0))(
  ( (Nil!7299) (Cons!7299 (h!12700 (_ BitVec 16)) (t!87006 List!7313)) )
))
(declare-datatypes ((TokenValue!1511 0))(
  ( (FloatLiteralValue!3022 (text!11022 List!7313)) (TokenValueExt!1510 (__x!5169 Int)) (Broken!7555 (value!47475 List!7313)) (Object!1524) (End!1511) (Def!1511) (Underscore!1511) (Match!1511) (Else!1511) (Error!1511) (Case!1511) (If!1511) (Extends!1511) (Abstract!1511) (Class!1511) (Val!1511) (DelimiterValue!3022 (del!1571 List!7313)) (KeywordValue!1517 (value!47476 List!7313)) (CommentValue!3022 (value!47477 List!7313)) (WhitespaceValue!3022 (value!47478 List!7313)) (IndentationValue!1511 (value!47479 List!7313)) (String!9294) (Int32!1511) (Broken!7556 (value!47480 List!7313)) (Boolean!1512) (Unit!12587) (OperatorValue!1514 (op!1571 List!7313)) (IdentifierValue!3022 (value!47481 List!7313)) (IdentifierValue!3023 (value!47482 List!7313)) (WhitespaceValue!3023 (value!47483 List!7313)) (True!3022) (False!3022) (Broken!7557 (value!47484 List!7313)) (Broken!7558 (value!47485 List!7313)) (True!3023) (RightBrace!1511) (RightBracket!1511) (Colon!1511) (Null!1511) (Comma!1511) (LeftBracket!1511) (False!3023) (LeftBrace!1511) (ImaginaryLiteralValue!1511 (text!11023 List!7313)) (StringLiteralValue!4533 (value!47486 List!7313)) (EOFValue!1511 (value!47487 List!7313)) (IdentValue!1511 (value!47488 List!7313)) (DelimiterValue!3023 (value!47489 List!7313)) (DedentValue!1511 (value!47490 List!7313)) (NewLineValue!1511 (value!47491 List!7313)) (IntegerValue!4533 (value!47492 (_ BitVec 32)) (text!11024 List!7313)) (IntegerValue!4534 (value!47493 Int) (text!11025 List!7313)) (Times!1511) (Or!1511) (Equal!1511) (Minus!1511) (Broken!7559 (value!47494 List!7313)) (And!1511) (Div!1511) (LessEqual!1511) (Mod!1511) (Concat!3325) (Not!1511) (Plus!1511) (SpaceValue!1511 (value!47495 List!7313)) (IntegerValue!4535 (value!47496 Int) (text!11026 List!7313)) (StringLiteralValue!4534 (text!11027 List!7313)) (FloatLiteralValue!3023 (text!11028 List!7313)) (BytesLiteralValue!1511 (value!47497 List!7313)) (CommentValue!3023 (value!47498 List!7313)) (StringLiteralValue!4535 (value!47499 List!7313)) (ErrorTokenValue!1511 (msg!1572 List!7313)) )
))
(declare-datatypes ((String!9295 0))(
  ( (String!9296 (value!47500 String)) )
))
(declare-datatypes ((IArray!5187 0))(
  ( (IArray!5188 (innerList!2651 List!7313)) )
))
(declare-datatypes ((Conc!2593 0))(
  ( (Node!2593 (left!5895 Conc!2593) (right!6225 Conc!2593) (csize!5416 Int) (cheight!2804 Int)) (Leaf!3848 (xs!5242 IArray!5187) (csize!5417 Int)) (Empty!2593) )
))
(declare-datatypes ((BalanceConc!5198 0))(
  ( (BalanceConc!5199 (c!121044 Conc!2593)) )
))
(declare-datatypes ((TokenValueInjection!2774 0))(
  ( (TokenValueInjection!2775 (toValue!2424 Int) (toChars!2283 Int)) )
))
(declare-datatypes ((Rule!2754 0))(
  ( (Rule!2755 (regex!1477 Regex!1813) (tag!1739 String!9295) (isSeparator!1477 Bool) (transformation!1477 TokenValueInjection!2774)) )
))
(declare-datatypes ((List!7314 0))(
  ( (Nil!7300) (Cons!7300 (h!12701 Rule!2754) (t!87007 List!7314)) )
))
(declare-fun lt!283674 () List!7314)

(declare-datatypes ((LexerInterface!1292 0))(
  ( (LexerInterfaceExt!1289 (__x!5170 Int)) (Lexer!1290) )
))
(declare-fun rulesInvariant!1227 (LexerInterface!1292 List!7314) Bool)

(assert (=> b!684462 (= res!311690 (rulesInvariant!1227 Lexer!1290 lt!283674))))

(declare-fun b!684455 () Bool)

(declare-fun e!429669 () Bool)

(declare-fun e!429674 () Bool)

(assert (=> b!684455 (= e!429669 e!429674)))

(declare-fun res!311688 () Bool)

(assert (=> start!65416 (=> (not res!311688) (not e!429680))))

(declare-fun isEmpty!4827 (List!7314) Bool)

(assert (=> start!65416 (= res!311688 (not (isEmpty!4827 lt!283674)))))

(declare-datatypes ((JsonLexer!258 0))(
  ( (JsonLexer!259) )
))
(declare-fun rules!109 (JsonLexer!258) List!7314)

(assert (=> start!65416 (= lt!283674 (rules!109 JsonLexer!259))))

(assert (=> start!65416 e!429680))

(declare-fun e!429668 () Bool)

(declare-fun inv!9366 (CacheDown!346) Bool)

(assert (=> start!65416 (and (inv!9366 cacheDown!348) e!429668)))

(declare-fun inv!9367 (CacheUp!342) Bool)

(assert (=> start!65416 (and (inv!9367 cacheUp!335) e!429669)))

(declare-fun e!429673 () Bool)

(declare-fun e!429679 () Bool)

(assert (=> b!684463 (= e!429673 (and e!429679 tp!203028))))

(declare-fun tp!203020 () Bool)

(declare-fun tp!203022 () Bool)

(declare-fun array_inv!891 (array!2700) Bool)

(declare-fun array_inv!892 (array!2702) Bool)

(assert (=> b!684464 (= e!429675 (and tp!203027 tp!203022 tp!203020 (array_inv!891 (_keys!1006 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) (array_inv!892 (_values!991 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) e!429676))))

(declare-fun mapIsEmpty!2832 () Bool)

(assert (=> mapIsEmpty!2832 mapRes!2832))

(declare-fun b!684465 () Bool)

(declare-datatypes ((Token!2676 0))(
  ( (Token!2677 (value!47501 TokenValue!1511) (rule!2526 Rule!2754) (size!6007 Int) (originalCharacters!1763 List!7313)) )
))
(declare-datatypes ((List!7315 0))(
  ( (Nil!7301) (Cons!7301 (h!12702 Token!2676) (t!87008 List!7315)) )
))
(declare-datatypes ((IArray!5189 0))(
  ( (IArray!5190 (innerList!2652 List!7315)) )
))
(declare-datatypes ((Conc!2594 0))(
  ( (Node!2594 (left!5896 Conc!2594) (right!6226 Conc!2594) (csize!5418 Int) (cheight!2805 Int)) (Leaf!3849 (xs!5243 IArray!5189) (csize!5419 Int)) (Empty!2594) )
))
(declare-datatypes ((BalanceConc!5200 0))(
  ( (BalanceConc!5201 (c!121045 Conc!2594)) )
))
(declare-datatypes ((PrintableTokens!240 0))(
  ( (PrintableTokens!241 (rules!8328 List!7314) (tokens!1296 BalanceConc!5200)) )
))
(declare-datatypes ((Option!1699 0))(
  ( (None!1698) (Some!1698 (v!17473 PrintableTokens!240)) )
))
(declare-fun e!429670 () Option!1699)

(assert (=> b!684465 (= e!429670 None!1698)))

(declare-fun tp!203023 () Bool)

(declare-fun tp!203018 () Bool)

(declare-fun array_inv!893 (array!2698) Bool)

(assert (=> b!684466 (= e!429666 (and tp!203026 tp!203023 tp!203018 (array_inv!891 (_keys!1005 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) (array_inv!893 (_values!990 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) e!429678))))

(assert (=> b!684467 (= e!429674 (and e!429672 tp!203019))))

(declare-fun b!684468 () Bool)

(declare-fun e!429677 () Bool)

(declare-fun lt!283677 () Option!1699)

(declare-fun usesJsonRules!0 (PrintableTokens!240) Bool)

(declare-fun get!2553 (Option!1699) PrintableTokens!240)

(assert (=> b!684468 (= e!429677 (not (usesJsonRules!0 (get!2553 lt!283677))))))

(declare-fun b!684469 () Bool)

(assert (=> b!684469 (= e!429680 e!429677)))

(declare-fun res!311689 () Bool)

(assert (=> b!684469 (=> (not res!311689) (not e!429677))))

(declare-fun isEmpty!4828 (Option!1699) Bool)

(assert (=> b!684469 (= res!311689 (not (isEmpty!4828 lt!283677)))))

(assert (=> b!684469 (= lt!283677 e!429670)))

(declare-fun lt!283675 () BalanceConc!5200)

(declare-fun c!121042 () Bool)

(declare-datatypes ((tuple3!674 0))(
  ( (tuple3!675 (_1!4205 Bool) (_2!4205 CacheUp!342) (_3!388 CacheDown!346)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!19 (LexerInterface!1292 List!7314 BalanceConc!5200 CacheUp!342 CacheDown!346) tuple3!674)

(assert (=> b!684469 (= c!121042 (not (_1!4205 (rulesProduceEachTokenIndividuallyMem!19 Lexer!1290 lt!283674 lt!283675 cacheUp!335 cacheDown!348))))))

(declare-fun singletonSeq!466 (Token!2676) BalanceConc!5200)

(declare-fun apply!1747 (TokenValueInjection!2774 BalanceConc!5198) TokenValue!1511)

(declare-datatypes ((KeywordValueInjection!74 0))(
  ( (KeywordValueInjection!75) )
))
(declare-fun injection!9 (KeywordValueInjection!74) TokenValueInjection!2774)

(declare-fun singletonSeq!467 ((_ BitVec 16)) BalanceConc!5198)

(declare-fun lBracketRule!0 (JsonLexer!258) Rule!2754)

(assert (=> b!684469 (= lt!283675 (singletonSeq!466 (Token!2677 (apply!1747 (injection!9 KeywordValueInjection!75) (singletonSeq!467 #x005B)) (lBracketRule!0 JsonLexer!259) 1 (Cons!7299 #x005B Nil!7299))))))

(declare-fun b!684470 () Bool)

(declare-fun printableTokensFromTokens!18 (List!7314 BalanceConc!5200) Option!1699)

(assert (=> b!684470 (= e!429670 (printableTokensFromTokens!18 lt!283674 lt!283675))))

(declare-fun b!684471 () Bool)

(assert (=> b!684471 (= e!429668 e!429673)))

(declare-fun mapIsEmpty!2833 () Bool)

(assert (=> mapIsEmpty!2833 mapRes!2833))

(declare-fun b!684472 () Bool)

(declare-fun lt!283676 () MutLongMap!712)

(assert (=> b!684472 (= e!429679 (and e!429667 ((_ is LongMap!712) lt!283676)))))

(assert (=> b!684472 (= lt!283676 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))

(declare-fun mapNonEmpty!2833 () Bool)

(declare-fun tp!203029 () Bool)

(declare-fun tp!203031 () Bool)

(assert (=> mapNonEmpty!2833 (= mapRes!2833 (and tp!203029 tp!203031))))

(declare-fun mapValue!2833 () List!7311)

(declare-fun mapRest!2833 () (Array (_ BitVec 32) List!7311))

(declare-fun mapKey!2832 () (_ BitVec 32))

(assert (=> mapNonEmpty!2833 (= (arr!1222 (_values!990 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) (store mapRest!2833 mapKey!2832 mapValue!2833))))

(assert (= (and start!65416 res!311688) b!684462))

(assert (= (and b!684462 res!311690) b!684469))

(assert (= (and b!684469 c!121042) b!684465))

(assert (= (and b!684469 (not c!121042)) b!684470))

(assert (= (and b!684469 res!311689) b!684468))

(assert (= (and b!684457 condMapEmpty!2833) mapIsEmpty!2832))

(assert (= (and b!684457 (not condMapEmpty!2833)) mapNonEmpty!2832))

(assert (= b!684464 b!684457))

(assert (= b!684456 b!684464))

(assert (= b!684460 b!684456))

(assert (= (and b!684472 ((_ is LongMap!712) (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))) b!684460))

(assert (= b!684463 b!684472))

(assert (= (and b!684471 ((_ is HashMap!684) (cache!1071 cacheDown!348))) b!684463))

(assert (= start!65416 b!684471))

(assert (= (and b!684458 condMapEmpty!2832) mapIsEmpty!2833))

(assert (= (and b!684458 (not condMapEmpty!2832)) mapNonEmpty!2833))

(assert (= b!684466 b!684458))

(assert (= b!684459 b!684466))

(assert (= b!684461 b!684459))

(assert (= (and b!684454 ((_ is LongMap!711) (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))) b!684461))

(assert (= b!684467 b!684454))

(assert (= (and b!684455 ((_ is HashMap!683) (cache!1070 cacheUp!335))) b!684467))

(assert (= start!65416 b!684455))

(declare-fun m!941177 () Bool)

(assert (=> b!684466 m!941177))

(declare-fun m!941179 () Bool)

(assert (=> b!684466 m!941179))

(declare-fun m!941181 () Bool)

(assert (=> start!65416 m!941181))

(declare-fun m!941183 () Bool)

(assert (=> start!65416 m!941183))

(declare-fun m!941185 () Bool)

(assert (=> start!65416 m!941185))

(declare-fun m!941187 () Bool)

(assert (=> start!65416 m!941187))

(declare-fun m!941189 () Bool)

(assert (=> mapNonEmpty!2833 m!941189))

(declare-fun m!941191 () Bool)

(assert (=> mapNonEmpty!2832 m!941191))

(declare-fun m!941193 () Bool)

(assert (=> b!684469 m!941193))

(declare-fun m!941195 () Bool)

(assert (=> b!684469 m!941195))

(declare-fun m!941197 () Bool)

(assert (=> b!684469 m!941197))

(assert (=> b!684469 m!941193))

(declare-fun m!941199 () Bool)

(assert (=> b!684469 m!941199))

(declare-fun m!941201 () Bool)

(assert (=> b!684469 m!941201))

(assert (=> b!684469 m!941199))

(declare-fun m!941203 () Bool)

(assert (=> b!684469 m!941203))

(declare-fun m!941205 () Bool)

(assert (=> b!684469 m!941205))

(declare-fun m!941207 () Bool)

(assert (=> b!684462 m!941207))

(declare-fun m!941209 () Bool)

(assert (=> b!684470 m!941209))

(declare-fun m!941211 () Bool)

(assert (=> b!684468 m!941211))

(assert (=> b!684468 m!941211))

(declare-fun m!941213 () Bool)

(assert (=> b!684468 m!941213))

(declare-fun m!941215 () Bool)

(assert (=> b!684464 m!941215))

(declare-fun m!941217 () Bool)

(assert (=> b!684464 m!941217))

(check-sat (not b!684458) (not b!684462) (not b!684470) (not b!684464) (not start!65416) (not b!684468) (not b_next!19281) (not mapNonEmpty!2833) b_and!63013 b_and!63007 (not b_next!19279) (not b!684466) (not mapNonEmpty!2832) (not b!684469) (not b!684457) (not b_next!19283) b_and!63011 b_and!63009 (not b_next!19277))
(check-sat (not b_next!19281) b_and!63013 b_and!63007 (not b_next!19279) (not b_next!19283) b_and!63011 b_and!63009 (not b_next!19277))
(get-model)

(declare-fun d!230799 () Bool)

(assert (=> d!230799 (= (array_inv!891 (_keys!1005 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) (bvsge (size!6005 (_keys!1005 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!684466 d!230799))

(declare-fun d!230801 () Bool)

(assert (=> d!230801 (= (array_inv!893 (_values!990 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) (bvsge (size!6004 (_values!990 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!684466 d!230801))

(declare-fun b!684483 () Bool)

(declare-fun e!429689 () Bool)

(declare-fun e!429688 () Bool)

(assert (=> b!684483 (= e!429689 e!429688)))

(declare-fun res!311695 () Bool)

(assert (=> b!684483 (=> (not res!311695) (not e!429688))))

(declare-fun lt!283680 () Option!1699)

(assert (=> b!684483 (= res!311695 (= (rules!8328 (get!2553 lt!283680)) lt!283674))))

(declare-fun b!684481 () Bool)

(declare-fun e!429687 () Option!1699)

(assert (=> b!684481 (= e!429687 (Some!1698 (PrintableTokens!241 lt!283674 lt!283675)))))

(declare-fun b!684484 () Bool)

(assert (=> b!684484 (= e!429688 (= (tokens!1296 (get!2553 lt!283680)) lt!283675))))

(declare-fun b!684482 () Bool)

(assert (=> b!684482 (= e!429687 None!1698)))

(declare-fun d!230803 () Bool)

(assert (=> d!230803 e!429689))

(declare-fun res!311696 () Bool)

(assert (=> d!230803 (=> res!311696 e!429689)))

(assert (=> d!230803 (= res!311696 (isEmpty!4828 lt!283680))))

(assert (=> d!230803 (= lt!283680 e!429687)))

(declare-fun c!121048 () Bool)

(declare-fun separableTokens!50 (LexerInterface!1292 BalanceConc!5200 List!7314) Bool)

(assert (=> d!230803 (= c!121048 (separableTokens!50 Lexer!1290 lt!283675 lt!283674))))

(assert (=> d!230803 (not (isEmpty!4827 lt!283674))))

(assert (=> d!230803 (= (printableTokensFromTokens!18 lt!283674 lt!283675) lt!283680)))

(assert (= (and d!230803 c!121048) b!684481))

(assert (= (and d!230803 (not c!121048)) b!684482))

(assert (= (and d!230803 (not res!311696)) b!684483))

(assert (= (and b!684483 res!311695) b!684484))

(declare-fun m!941219 () Bool)

(assert (=> b!684483 m!941219))

(assert (=> b!684484 m!941219))

(declare-fun m!941221 () Bool)

(assert (=> d!230803 m!941221))

(declare-fun m!941223 () Bool)

(assert (=> d!230803 m!941223))

(assert (=> d!230803 m!941181))

(assert (=> b!684470 d!230803))

(declare-fun b!684501 () Bool)

(declare-fun e!429701 () Bool)

(assert (=> b!684501 (= e!429701 true)))

(declare-fun b!684500 () Bool)

(declare-fun e!429700 () Bool)

(assert (=> b!684500 (= e!429700 e!429701)))

(declare-fun b!684499 () Bool)

(declare-fun e!429699 () Bool)

(assert (=> b!684499 (= e!429699 e!429700)))

(declare-fun d!230805 () Bool)

(assert (=> d!230805 e!429699))

(assert (= b!684500 b!684501))

(assert (= b!684499 b!684500))

(assert (= (and d!230805 ((_ is Cons!7300) lt!283674)) b!684499))

(declare-fun lambda!20951 () Int)

(declare-fun order!5299 () Int)

(declare-fun order!5297 () Int)

(declare-fun dynLambda!3849 (Int Int) Int)

(declare-fun dynLambda!3850 (Int Int) Int)

(assert (=> b!684501 (< (dynLambda!3849 order!5297 (toValue!2424 (transformation!1477 (h!12701 lt!283674)))) (dynLambda!3850 order!5299 lambda!20951))))

(declare-fun order!5301 () Int)

(declare-fun dynLambda!3851 (Int Int) Int)

(assert (=> b!684501 (< (dynLambda!3851 order!5301 (toChars!2283 (transformation!1477 (h!12701 lt!283674)))) (dynLambda!3850 order!5299 lambda!20951))))

(assert (=> d!230805 true))

(declare-fun lt!283689 () tuple3!674)

(declare-fun forall!1927 (BalanceConc!5200 Int) Bool)

(assert (=> d!230805 (= (_1!4205 lt!283689) (forall!1927 lt!283675 lambda!20951))))

(declare-fun e!429692 () tuple3!674)

(assert (=> d!230805 (= lt!283689 e!429692)))

(declare-fun c!121051 () Bool)

(declare-fun isEmpty!4829 (BalanceConc!5200) Bool)

(assert (=> d!230805 (= c!121051 (isEmpty!4829 lt!283675))))

(assert (=> d!230805 (not (isEmpty!4827 lt!283674))))

(assert (=> d!230805 (= (rulesProduceEachTokenIndividuallyMem!19 Lexer!1290 lt!283674 lt!283675 cacheUp!335 cacheDown!348) lt!283689)))

(declare-fun b!684489 () Bool)

(assert (=> b!684489 (= e!429692 (tuple3!675 true cacheUp!335 cacheDown!348))))

(declare-fun b!684490 () Bool)

(declare-fun lt!283687 () tuple3!674)

(declare-fun lt!283688 () tuple3!674)

(assert (=> b!684490 (= e!429692 (tuple3!675 (and (_1!4205 lt!283687) (_1!4205 lt!283688)) (_2!4205 lt!283688) (_3!388 lt!283688)))))

(declare-fun rulesProduceIndividualTokenMem!10 (LexerInterface!1292 List!7314 Token!2676 CacheUp!342 CacheDown!346) tuple3!674)

(declare-fun head!1385 (BalanceConc!5200) Token!2676)

(assert (=> b!684490 (= lt!283687 (rulesProduceIndividualTokenMem!10 Lexer!1290 lt!283674 (head!1385 lt!283675) cacheUp!335 cacheDown!348))))

(declare-fun tail!943 (BalanceConc!5200) BalanceConc!5200)

(assert (=> b!684490 (= lt!283688 (rulesProduceEachTokenIndividuallyMem!19 Lexer!1290 lt!283674 (tail!943 lt!283675) (_2!4205 lt!283687) (_3!388 lt!283687)))))

(assert (= (and d!230805 c!121051) b!684489))

(assert (= (and d!230805 (not c!121051)) b!684490))

(declare-fun m!941225 () Bool)

(assert (=> d!230805 m!941225))

(declare-fun m!941227 () Bool)

(assert (=> d!230805 m!941227))

(assert (=> d!230805 m!941181))

(declare-fun m!941229 () Bool)

(assert (=> b!684490 m!941229))

(assert (=> b!684490 m!941229))

(declare-fun m!941231 () Bool)

(assert (=> b!684490 m!941231))

(declare-fun m!941233 () Bool)

(assert (=> b!684490 m!941233))

(assert (=> b!684490 m!941233))

(declare-fun m!941235 () Bool)

(assert (=> b!684490 m!941235))

(assert (=> b!684469 d!230805))

(declare-fun d!230807 () Bool)

(assert (=> d!230807 (= (isEmpty!4828 lt!283677) (not ((_ is Some!1698) lt!283677)))))

(assert (=> b!684469 d!230807))

(declare-fun d!230809 () Bool)

(assert (=> d!230809 true))

(assert (=> d!230809 true))

(assert (=> d!230809 true))

(assert (=> d!230809 true))

(declare-fun b!684526 () Bool)

(declare-fun e!429716 () Bool)

(declare-fun x!149758 () BalanceConc!5198)

(declare-fun tp!203038 () Bool)

(declare-fun inv!9368 (Conc!2593) Bool)

(assert (=> b!684526 (= e!429716 (and (inv!9368 (c!121044 x!149758)) tp!203038))))

(declare-fun inst!418 () Bool)

(declare-fun inv!9369 (BalanceConc!5198) Bool)

(declare-fun list!3075 (BalanceConc!5198) List!7313)

(declare-fun toCharacters!4 (KeywordValueInjection!74 TokenValue!1511) BalanceConc!5198)

(declare-fun toValue!11 (KeywordValueInjection!74 BalanceConc!5198) TokenValue!1511)

(assert (=> d!230809 (= inst!418 (=> (and (inv!9369 x!149758) e!429716) (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 x!149758))))))

(assert (= d!230809 b!684526))

(declare-fun m!941237 () Bool)

(assert (=> b!684526 m!941237))

(declare-fun m!941239 () Bool)

(assert (=> d!230809 m!941239))

(declare-fun m!941241 () Bool)

(assert (=> d!230809 m!941241))

(declare-fun m!941243 () Bool)

(assert (=> d!230809 m!941243))

(declare-fun m!941245 () Bool)

(assert (=> d!230809 m!941245))

(assert (=> d!230809 m!941245))

(declare-fun m!941247 () Bool)

(assert (=> d!230809 m!941247))

(assert (=> d!230809 m!941243))

(declare-fun res!311705 () Bool)

(declare-fun e!429717 () Bool)

(assert (=> d!230809 (=> res!311705 e!429717)))

(declare-fun x!149759 () BalanceConc!5198)

(declare-fun x!149760 () BalanceConc!5198)

(assert (=> d!230809 (= res!311705 (not (= (list!3075 x!149759) (list!3075 x!149760))))))

(declare-fun inst!419 () Bool)

(declare-fun e!429718 () Bool)

(declare-fun e!429719 () Bool)

(assert (=> d!230809 (= inst!419 (=> (and (inv!9369 x!149759) e!429718 (inv!9369 x!149760) e!429719) e!429717))))

(declare-fun b!684527 () Bool)

(assert (=> b!684527 (= e!429717 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 x!149760)))))

(declare-fun b!684528 () Bool)

(declare-fun tp!203040 () Bool)

(assert (=> b!684528 (= e!429718 (and (inv!9368 (c!121044 x!149759)) tp!203040))))

(declare-fun b!684529 () Bool)

(declare-fun tp!203039 () Bool)

(assert (=> b!684529 (= e!429719 (and (inv!9368 (c!121044 x!149760)) tp!203039))))

(assert (= (and d!230809 (not res!311705)) b!684527))

(assert (= d!230809 b!684528))

(assert (= d!230809 b!684529))

(declare-fun m!941249 () Bool)

(assert (=> d!230809 m!941249))

(declare-fun m!941251 () Bool)

(assert (=> d!230809 m!941251))

(declare-fun m!941253 () Bool)

(assert (=> d!230809 m!941253))

(declare-fun m!941255 () Bool)

(assert (=> d!230809 m!941255))

(declare-fun m!941257 () Bool)

(assert (=> b!684527 m!941257))

(declare-fun m!941259 () Bool)

(assert (=> b!684527 m!941259))

(declare-fun m!941261 () Bool)

(assert (=> b!684528 m!941261))

(declare-fun m!941263 () Bool)

(assert (=> b!684529 m!941263))

(declare-fun bs!130943 () Bool)

(declare-fun neg-inst!419 () Bool)

(declare-fun s!77447 () Bool)

(assert (= bs!130943 (and neg-inst!419 s!77447)))

(assert (=> bs!130943 (=> true (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 x!149758)))))

(assert (=> m!941243 m!941245))

(assert (=> m!941243 m!941247))

(assert (=> m!941243 m!941239))

(assert (=> m!941243 s!77447))

(assert (=> m!941239 s!77447))

(declare-fun bs!130944 () Bool)

(assert (= bs!130944 (and neg-inst!419 d!230809)))

(assert (=> bs!130944 (= true inst!418)))

(declare-fun bs!130945 () Bool)

(declare-fun neg-inst!418 () Bool)

(declare-fun s!77449 () Bool)

(assert (= bs!130945 (and neg-inst!418 s!77449)))

(declare-fun res!311706 () Bool)

(declare-fun e!429720 () Bool)

(assert (=> bs!130945 (=> res!311706 e!429720)))

(assert (=> bs!130945 (= res!311706 (not (= (list!3075 x!149760) (list!3075 x!149760))))))

(assert (=> bs!130945 (=> true e!429720)))

(declare-fun b!684530 () Bool)

(assert (=> b!684530 (= e!429720 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!130945 (not res!311706)) b!684530))

(assert (=> m!941251 s!77449))

(assert (=> m!941251 s!77449))

(declare-fun bs!130946 () Bool)

(declare-fun s!77451 () Bool)

(assert (= bs!130946 (and neg-inst!418 s!77451)))

(declare-fun res!311707 () Bool)

(declare-fun e!429721 () Bool)

(assert (=> bs!130946 (=> res!311707 e!429721)))

(assert (=> bs!130946 (= res!311707 (not (= (list!3075 x!149760) (list!3075 x!149759))))))

(assert (=> bs!130946 (=> true e!429721)))

(declare-fun b!684531 () Bool)

(assert (=> b!684531 (= e!429721 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!130946 (not res!311707)) b!684531))

(declare-fun bs!130947 () Bool)

(assert (= bs!130947 (and m!941257 m!941251)))

(assert (=> bs!130947 m!941251))

(assert (=> bs!130947 m!941249))

(assert (=> bs!130947 s!77451))

(declare-fun bs!130948 () Bool)

(declare-fun s!77453 () Bool)

(assert (= bs!130948 (and neg-inst!418 s!77453)))

(declare-fun res!311708 () Bool)

(declare-fun e!429722 () Bool)

(assert (=> bs!130948 (=> res!311708 e!429722)))

(assert (=> bs!130948 (= res!311708 (not (= (list!3075 x!149759) (list!3075 x!149759))))))

(assert (=> bs!130948 (=> true e!429722)))

(declare-fun b!684532 () Bool)

(assert (=> b!684532 (= e!429722 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!130948 (not res!311708)) b!684532))

(assert (=> m!941257 m!941249))

(assert (=> m!941257 m!941249))

(assert (=> m!941257 s!77453))

(declare-fun bs!130949 () Bool)

(declare-fun s!77455 () Bool)

(assert (= bs!130949 (and neg-inst!418 s!77455)))

(declare-fun res!311709 () Bool)

(declare-fun e!429723 () Bool)

(assert (=> bs!130949 (=> res!311709 e!429723)))

(assert (=> bs!130949 (= res!311709 (not (= (list!3075 x!149759) (list!3075 x!149760))))))

(assert (=> bs!130949 (=> true e!429723)))

(declare-fun b!684533 () Bool)

(assert (=> b!684533 (= e!429723 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!130949 (not res!311709)) b!684533))

(assert (=> bs!130947 m!941249))

(assert (=> bs!130947 m!941251))

(assert (=> bs!130947 s!77455))

(assert (=> m!941257 s!77453))

(declare-fun bs!130950 () Bool)

(declare-fun s!77457 () Bool)

(assert (= bs!130950 (and neg-inst!418 s!77457)))

(declare-fun res!311710 () Bool)

(declare-fun e!429724 () Bool)

(assert (=> bs!130950 (=> res!311710 e!429724)))

(assert (=> bs!130950 (= res!311710 (not (= (list!3075 x!149759) (list!3075 x!149758))))))

(assert (=> bs!130950 (=> true e!429724)))

(declare-fun b!684534 () Bool)

(assert (=> b!684534 (= e!429724 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!130950 (not res!311710)) b!684534))

(declare-fun bs!130951 () Bool)

(assert (= bs!130951 (and m!941243 m!941257)))

(assert (=> bs!130951 m!941249))

(assert (=> bs!130951 m!941239))

(assert (=> bs!130951 s!77457))

(declare-fun bs!130952 () Bool)

(declare-fun s!77459 () Bool)

(assert (= bs!130952 (and neg-inst!418 s!77459)))

(declare-fun res!311711 () Bool)

(declare-fun e!429725 () Bool)

(assert (=> bs!130952 (=> res!311711 e!429725)))

(assert (=> bs!130952 (= res!311711 (not (= (list!3075 x!149760) (list!3075 x!149758))))))

(assert (=> bs!130952 (=> true e!429725)))

(declare-fun b!684535 () Bool)

(assert (=> b!684535 (= e!429725 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!130952 (not res!311711)) b!684535))

(declare-fun bs!130953 () Bool)

(assert (= bs!130953 (and m!941243 m!941251)))

(assert (=> bs!130953 m!941251))

(assert (=> bs!130953 m!941239))

(assert (=> bs!130953 s!77459))

(declare-fun bs!130954 () Bool)

(declare-fun s!77461 () Bool)

(assert (= bs!130954 (and neg-inst!418 s!77461)))

(declare-fun res!311712 () Bool)

(declare-fun e!429726 () Bool)

(assert (=> bs!130954 (=> res!311712 e!429726)))

(assert (=> bs!130954 (= res!311712 (not (= (list!3075 x!149758) (list!3075 x!149758))))))

(assert (=> bs!130954 (=> true e!429726)))

(declare-fun b!684536 () Bool)

(assert (=> b!684536 (= e!429726 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!130954 (not res!311712)) b!684536))

(assert (=> m!941243 m!941239))

(assert (=> m!941243 m!941239))

(assert (=> m!941243 s!77461))

(declare-fun bs!130955 () Bool)

(declare-fun s!77463 () Bool)

(assert (= bs!130955 (and neg-inst!418 s!77463)))

(declare-fun res!311713 () Bool)

(declare-fun e!429727 () Bool)

(assert (=> bs!130955 (=> res!311713 e!429727)))

(assert (=> bs!130955 (= res!311713 (not (= (list!3075 x!149758) (list!3075 x!149759))))))

(assert (=> bs!130955 (=> true e!429727)))

(declare-fun b!684537 () Bool)

(assert (=> b!684537 (= e!429727 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!130955 (not res!311713)) b!684537))

(assert (=> bs!130951 m!941239))

(assert (=> bs!130951 m!941249))

(assert (=> bs!130951 s!77463))

(declare-fun bs!130956 () Bool)

(declare-fun s!77465 () Bool)

(assert (= bs!130956 (and neg-inst!418 s!77465)))

(declare-fun res!311714 () Bool)

(declare-fun e!429728 () Bool)

(assert (=> bs!130956 (=> res!311714 e!429728)))

(assert (=> bs!130956 (= res!311714 (not (= (list!3075 x!149758) (list!3075 x!149760))))))

(assert (=> bs!130956 (=> true e!429728)))

(declare-fun b!684538 () Bool)

(assert (=> b!684538 (= e!429728 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!130956 (not res!311714)) b!684538))

(assert (=> bs!130953 m!941239))

(assert (=> bs!130953 m!941251))

(assert (=> bs!130953 s!77465))

(assert (=> m!941243 s!77461))

(declare-fun bs!130957 () Bool)

(declare-fun s!77467 () Bool)

(assert (= bs!130957 (and neg-inst!418 s!77467)))

(declare-fun res!311715 () Bool)

(declare-fun e!429729 () Bool)

(assert (=> bs!130957 (=> res!311715 e!429729)))

(assert (=> bs!130957 (= res!311715 (not (= (list!3075 x!149759) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!130957 (=> true e!429729)))

(declare-fun b!684539 () Bool)

(assert (=> b!684539 (= e!429729 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!130957 (not res!311715)) b!684539))

(declare-fun bs!130958 () Bool)

(assert (= bs!130958 (and m!941247 m!941257)))

(assert (=> bs!130958 m!941249))

(assert (=> bs!130958 m!941247))

(assert (=> bs!130958 s!77467))

(declare-fun bs!130959 () Bool)

(declare-fun s!77469 () Bool)

(assert (= bs!130959 (and neg-inst!418 s!77469)))

(declare-fun res!311716 () Bool)

(declare-fun e!429730 () Bool)

(assert (=> bs!130959 (=> res!311716 e!429730)))

(assert (=> bs!130959 (= res!311716 (not (= (list!3075 x!149760) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!130959 (=> true e!429730)))

(declare-fun b!684540 () Bool)

(assert (=> b!684540 (= e!429730 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!130959 (not res!311716)) b!684540))

(declare-fun bs!130960 () Bool)

(assert (= bs!130960 (and m!941247 m!941251)))

(assert (=> bs!130960 m!941251))

(assert (=> bs!130960 m!941247))

(assert (=> bs!130960 s!77469))

(declare-fun bs!130961 () Bool)

(declare-fun s!77471 () Bool)

(assert (= bs!130961 (and neg-inst!418 s!77471)))

(declare-fun res!311717 () Bool)

(declare-fun e!429731 () Bool)

(assert (=> bs!130961 (=> res!311717 e!429731)))

(assert (=> bs!130961 (= res!311717 (not (= (list!3075 x!149758) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!130961 (=> true e!429731)))

(declare-fun b!684541 () Bool)

(assert (=> b!684541 (= e!429731 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!130961 (not res!311717)) b!684541))

(declare-fun bs!130962 () Bool)

(assert (= bs!130962 (and m!941247 m!941243)))

(assert (=> bs!130962 m!941239))

(assert (=> bs!130962 m!941247))

(assert (=> bs!130962 s!77471))

(declare-fun bs!130963 () Bool)

(declare-fun s!77473 () Bool)

(assert (= bs!130963 (and neg-inst!418 s!77473)))

(declare-fun res!311718 () Bool)

(declare-fun e!429732 () Bool)

(assert (=> bs!130963 (=> res!311718 e!429732)))

(assert (=> bs!130963 (= res!311718 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!130963 (=> true e!429732)))

(declare-fun b!684542 () Bool)

(assert (=> b!684542 (= e!429732 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!130963 (not res!311718)) b!684542))

(assert (=> m!941247 s!77473))

(declare-fun bs!130964 () Bool)

(declare-fun s!77475 () Bool)

(assert (= bs!130964 (and neg-inst!418 s!77475)))

(declare-fun res!311719 () Bool)

(declare-fun e!429733 () Bool)

(assert (=> bs!130964 (=> res!311719 e!429733)))

(assert (=> bs!130964 (= res!311719 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 x!149759))))))

(assert (=> bs!130964 (=> true e!429733)))

(declare-fun b!684543 () Bool)

(assert (=> b!684543 (= e!429733 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!130964 (not res!311719)) b!684543))

(assert (=> bs!130958 m!941247))

(assert (=> bs!130958 m!941249))

(assert (=> bs!130958 s!77475))

(declare-fun bs!130965 () Bool)

(declare-fun s!77477 () Bool)

(assert (= bs!130965 (and neg-inst!418 s!77477)))

(declare-fun res!311720 () Bool)

(declare-fun e!429734 () Bool)

(assert (=> bs!130965 (=> res!311720 e!429734)))

(assert (=> bs!130965 (= res!311720 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 x!149760))))))

(assert (=> bs!130965 (=> true e!429734)))

(declare-fun b!684544 () Bool)

(assert (=> b!684544 (= e!429734 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!130965 (not res!311720)) b!684544))

(assert (=> bs!130960 m!941247))

(assert (=> bs!130960 m!941251))

(assert (=> bs!130960 s!77477))

(declare-fun bs!130966 () Bool)

(declare-fun s!77479 () Bool)

(assert (= bs!130966 (and neg-inst!418 s!77479)))

(declare-fun res!311721 () Bool)

(declare-fun e!429735 () Bool)

(assert (=> bs!130966 (=> res!311721 e!429735)))

(assert (=> bs!130966 (= res!311721 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 x!149758))))))

(assert (=> bs!130966 (=> true e!429735)))

(declare-fun b!684545 () Bool)

(assert (=> b!684545 (= e!429735 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!130966 (not res!311721)) b!684545))

(assert (=> bs!130962 m!941247))

(assert (=> bs!130962 m!941239))

(assert (=> bs!130962 s!77479))

(assert (=> m!941247 s!77473))

(declare-fun bs!130967 () Bool)

(assert (= bs!130967 (and m!941239 m!941251)))

(assert (=> bs!130967 s!77459))

(assert (=> m!941239 s!77461))

(declare-fun bs!130968 () Bool)

(assert (= bs!130968 (and m!941239 m!941243)))

(assert (=> bs!130968 s!77461))

(declare-fun bs!130969 () Bool)

(assert (= bs!130969 (and m!941239 m!941247)))

(assert (=> bs!130969 s!77479))

(declare-fun bs!130970 () Bool)

(assert (= bs!130970 (and m!941239 m!941257)))

(assert (=> bs!130970 s!77457))

(assert (=> m!941239 s!77461))

(assert (=> bs!130968 s!77461))

(assert (=> bs!130970 s!77463))

(assert (=> bs!130967 s!77465))

(assert (=> bs!130969 s!77471))

(declare-fun bs!130971 () Bool)

(assert (= bs!130971 (and m!941259 m!941243 m!941239)))

(assert (=> bs!130971 s!77465))

(declare-fun bs!130972 () Bool)

(assert (= bs!130972 (and m!941259 m!941247)))

(assert (=> bs!130972 s!77477))

(declare-fun bs!130973 () Bool)

(assert (= bs!130973 (and m!941259 m!941257)))

(assert (=> bs!130973 s!77455))

(assert (=> m!941259 s!77449))

(declare-fun bs!130974 () Bool)

(assert (= bs!130974 (and m!941259 m!941251)))

(assert (=> bs!130974 s!77449))

(assert (=> bs!130971 s!77459))

(assert (=> bs!130973 s!77451))

(assert (=> m!941259 s!77449))

(assert (=> bs!130972 s!77469))

(assert (=> bs!130974 s!77449))

(declare-fun bs!130975 () Bool)

(assert (= bs!130975 (and m!941249 m!941247)))

(assert (=> bs!130975 s!77475))

(declare-fun bs!130976 () Bool)

(assert (= bs!130976 (and m!941249 m!941251 m!941259)))

(assert (=> bs!130976 s!77451))

(declare-fun bs!130977 () Bool)

(assert (= bs!130977 (and m!941249 m!941257)))

(assert (=> bs!130977 s!77453))

(assert (=> m!941249 s!77453))

(declare-fun bs!130978 () Bool)

(assert (= bs!130978 (and m!941249 m!941243 m!941239)))

(assert (=> bs!130978 s!77463))

(assert (=> bs!130978 s!77457))

(assert (=> bs!130975 s!77467))

(assert (=> bs!130976 s!77455))

(assert (=> bs!130977 s!77453))

(assert (=> m!941249 s!77453))

(declare-fun bs!130979 () Bool)

(assert (= bs!130979 (and neg-inst!418 d!230809)))

(assert (=> bs!130979 (= true inst!419)))

(declare-datatypes ((Unit!12588 0))(
  ( (Unit!12589) )
))
(declare-fun lt!283700 () Unit!12588)

(declare-fun Unit!12590 () Unit!12588)

(assert (=> d!230809 (= lt!283700 Unit!12590)))

(declare-fun lambda!20973 () Int)

(declare-fun lambda!20974 () Int)

(declare-fun lambda!20975 () Int)

(declare-fun equivClasses!535 (Int Int) Bool)

(declare-fun Forall2!263 (Int) Bool)

(assert (=> d!230809 (= (equivClasses!535 lambda!20973 lambda!20974) (Forall2!263 lambda!20975))))

(declare-fun lt!283701 () Unit!12588)

(declare-fun Unit!12591 () Unit!12588)

(assert (=> d!230809 (= lt!283701 Unit!12591)))

(assert (=> d!230809 (= (Forall2!263 lambda!20975) inst!419)))

(declare-fun lt!283699 () Unit!12588)

(declare-fun Unit!12592 () Unit!12588)

(assert (=> d!230809 (= lt!283699 Unit!12592)))

(declare-fun lambda!20972 () Int)

(declare-fun semiInverseModEq!556 (Int Int) Bool)

(declare-fun Forall!341 (Int) Bool)

(assert (=> d!230809 (= (semiInverseModEq!556 lambda!20973 lambda!20974) (Forall!341 lambda!20972))))

(declare-fun lt!283698 () Unit!12588)

(declare-fun Unit!12593 () Unit!12588)

(assert (=> d!230809 (= lt!283698 Unit!12593)))

(assert (=> d!230809 (= (Forall!341 lambda!20972) inst!418)))

(assert (=> d!230809 (= (injection!9 KeywordValueInjection!75) (TokenValueInjection!2775 lambda!20974 lambda!20973))))

(assert (= neg-inst!419 inst!418))

(assert (= neg-inst!418 inst!419))

(declare-fun m!941265 () Bool)

(assert (=> d!230809 m!941265))

(declare-fun m!941267 () Bool)

(assert (=> d!230809 m!941267))

(declare-fun m!941269 () Bool)

(assert (=> d!230809 m!941269))

(assert (=> d!230809 m!941267))

(assert (=> d!230809 m!941269))

(declare-fun m!941271 () Bool)

(assert (=> d!230809 m!941271))

(assert (=> b!684469 d!230809))

(declare-fun d!230811 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!258) Regex!1813)

(assert (=> d!230811 (= (lBracketRule!0 JsonLexer!259) (Rule!2755 (lBracketRe!0 JsonLexer!259) (String!9296 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!75)))))

(declare-fun bs!130980 () Bool)

(assert (= bs!130980 d!230811))

(declare-fun m!941273 () Bool)

(assert (=> bs!130980 m!941273))

(assert (=> bs!130980 m!941193))

(assert (=> b!684469 d!230811))

(declare-fun d!230813 () Bool)

(declare-fun dynLambda!3852 (Int BalanceConc!5198) TokenValue!1511)

(assert (=> d!230813 (= (apply!1747 (injection!9 KeywordValueInjection!75) (singletonSeq!467 #x005B)) (dynLambda!3852 (toValue!2424 (injection!9 KeywordValueInjection!75)) (singletonSeq!467 #x005B)))))

(declare-fun b_lambda!25839 () Bool)

(assert (=> (not b_lambda!25839) (not d!230813)))

(declare-fun bs!130981 () Bool)

(assert (= bs!130981 d!230813))

(assert (=> bs!130981 m!941199))

(declare-fun m!941275 () Bool)

(assert (=> bs!130981 m!941275))

(assert (=> b!684469 d!230813))

(declare-fun d!230815 () Bool)

(declare-fun e!429738 () Bool)

(assert (=> d!230815 e!429738))

(declare-fun res!311724 () Bool)

(assert (=> d!230815 (=> (not res!311724) (not e!429738))))

(declare-fun lt!283704 () BalanceConc!5198)

(assert (=> d!230815 (= res!311724 (= (list!3075 lt!283704) (Cons!7299 #x005B Nil!7299)))))

(declare-fun singleton!225 ((_ BitVec 16)) BalanceConc!5198)

(assert (=> d!230815 (= lt!283704 (singleton!225 #x005B))))

(assert (=> d!230815 (= (singletonSeq!467 #x005B) lt!283704)))

(declare-fun b!684548 () Bool)

(declare-fun isBalanced!681 (Conc!2593) Bool)

(assert (=> b!684548 (= e!429738 (isBalanced!681 (c!121044 lt!283704)))))

(assert (= (and d!230815 res!311724) b!684548))

(declare-fun bs!130982 () Bool)

(declare-fun s!77481 () Bool)

(assert (= bs!130982 (and neg-inst!418 s!77481)))

(declare-fun res!311725 () Bool)

(declare-fun e!429739 () Bool)

(assert (=> bs!130982 (=> res!311725 e!429739)))

(assert (=> bs!130982 (= res!311725 (not (= (list!3075 x!149759) (list!3075 lt!283704))))))

(assert (=> bs!130982 (=> true e!429739)))

(declare-fun b!684549 () Bool)

(assert (=> b!684549 (= e!429739 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!130982 (not res!311725)) b!684549))

(declare-fun bs!130983 () Bool)

(declare-fun m!941277 () Bool)

(assert (= bs!130983 (and m!941277 m!941257 m!941249)))

(assert (=> bs!130983 m!941249))

(assert (=> bs!130983 m!941277))

(assert (=> bs!130983 s!77481))

(declare-fun bs!130984 () Bool)

(declare-fun s!77483 () Bool)

(assert (= bs!130984 (and neg-inst!418 s!77483)))

(declare-fun res!311726 () Bool)

(declare-fun e!429740 () Bool)

(assert (=> bs!130984 (=> res!311726 e!429740)))

(assert (=> bs!130984 (= res!311726 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 lt!283704))))))

(assert (=> bs!130984 (=> true e!429740)))

(declare-fun b!684550 () Bool)

(assert (=> b!684550 (= e!429740 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!130984 (not res!311726)) b!684550))

(declare-fun bs!130985 () Bool)

(assert (= bs!130985 (and m!941277 m!941247)))

(assert (=> bs!130985 m!941247))

(assert (=> bs!130985 m!941277))

(assert (=> bs!130985 s!77483))

(declare-fun bs!130986 () Bool)

(declare-fun s!77485 () Bool)

(assert (= bs!130986 (and neg-inst!418 s!77485)))

(declare-fun res!311727 () Bool)

(declare-fun e!429741 () Bool)

(assert (=> bs!130986 (=> res!311727 e!429741)))

(assert (=> bs!130986 (= res!311727 (not (= (list!3075 x!149758) (list!3075 lt!283704))))))

(assert (=> bs!130986 (=> true e!429741)))

(declare-fun b!684551 () Bool)

(assert (=> b!684551 (= e!429741 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!130986 (not res!311727)) b!684551))

(declare-fun bs!130987 () Bool)

(assert (= bs!130987 (and m!941277 m!941243 m!941239)))

(assert (=> bs!130987 m!941239))

(assert (=> bs!130987 m!941277))

(assert (=> bs!130987 s!77485))

(declare-fun bs!130988 () Bool)

(declare-fun s!77487 () Bool)

(assert (= bs!130988 (and neg-inst!418 s!77487)))

(declare-fun res!311728 () Bool)

(declare-fun e!429742 () Bool)

(assert (=> bs!130988 (=> res!311728 e!429742)))

(assert (=> bs!130988 (= res!311728 (not (= (list!3075 x!149760) (list!3075 lt!283704))))))

(assert (=> bs!130988 (=> true e!429742)))

(declare-fun b!684552 () Bool)

(assert (=> b!684552 (= e!429742 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!130988 (not res!311728)) b!684552))

(declare-fun bs!130989 () Bool)

(assert (= bs!130989 (and m!941277 m!941251 m!941259)))

(assert (=> bs!130989 m!941251))

(assert (=> bs!130989 m!941277))

(assert (=> bs!130989 s!77487))

(declare-fun bs!130990 () Bool)

(declare-fun s!77489 () Bool)

(assert (= bs!130990 (and neg-inst!418 s!77489)))

(declare-fun res!311729 () Bool)

(declare-fun e!429743 () Bool)

(assert (=> bs!130990 (=> res!311729 e!429743)))

(assert (=> bs!130990 (= res!311729 (not (= (list!3075 lt!283704) (list!3075 lt!283704))))))

(assert (=> bs!130990 (=> true e!429743)))

(declare-fun b!684553 () Bool)

(assert (=> b!684553 (= e!429743 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!130990 (not res!311729)) b!684553))

(assert (=> m!941277 s!77489))

(declare-fun bs!130991 () Bool)

(declare-fun s!77491 () Bool)

(assert (= bs!130991 (and neg-inst!418 s!77491)))

(declare-fun res!311730 () Bool)

(declare-fun e!429744 () Bool)

(assert (=> bs!130991 (=> res!311730 e!429744)))

(assert (=> bs!130991 (= res!311730 (not (= (list!3075 lt!283704) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!130991 (=> true e!429744)))

(declare-fun b!684554 () Bool)

(assert (=> b!684554 (= e!429744 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!130991 (not res!311730)) b!684554))

(assert (=> bs!130985 m!941277))

(assert (=> bs!130985 m!941247))

(assert (=> bs!130985 s!77491))

(assert (=> m!941277 s!77489))

(declare-fun bs!130992 () Bool)

(declare-fun s!77493 () Bool)

(assert (= bs!130992 (and neg-inst!418 s!77493)))

(declare-fun res!311731 () Bool)

(declare-fun e!429745 () Bool)

(assert (=> bs!130992 (=> res!311731 e!429745)))

(assert (=> bs!130992 (= res!311731 (not (= (list!3075 lt!283704) (list!3075 x!149760))))))

(assert (=> bs!130992 (=> true e!429745)))

(declare-fun b!684555 () Bool)

(assert (=> b!684555 (= e!429745 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!130992 (not res!311731)) b!684555))

(assert (=> bs!130989 m!941277))

(assert (=> bs!130989 m!941251))

(assert (=> bs!130989 s!77493))

(declare-fun bs!130993 () Bool)

(declare-fun s!77495 () Bool)

(assert (= bs!130993 (and neg-inst!418 s!77495)))

(declare-fun res!311732 () Bool)

(declare-fun e!429746 () Bool)

(assert (=> bs!130993 (=> res!311732 e!429746)))

(assert (=> bs!130993 (= res!311732 (not (= (list!3075 lt!283704) (list!3075 x!149758))))))

(assert (=> bs!130993 (=> true e!429746)))

(declare-fun b!684556 () Bool)

(assert (=> b!684556 (= e!429746 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!130993 (not res!311732)) b!684556))

(assert (=> bs!130987 m!941277))

(assert (=> bs!130987 m!941239))

(assert (=> bs!130987 s!77495))

(declare-fun bs!130994 () Bool)

(declare-fun s!77497 () Bool)

(assert (= bs!130994 (and neg-inst!418 s!77497)))

(declare-fun res!311733 () Bool)

(declare-fun e!429747 () Bool)

(assert (=> bs!130994 (=> res!311733 e!429747)))

(assert (=> bs!130994 (= res!311733 (not (= (list!3075 lt!283704) (list!3075 x!149759))))))

(assert (=> bs!130994 (=> true e!429747)))

(declare-fun b!684557 () Bool)

(assert (=> b!684557 (= e!429747 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!130994 (not res!311733)) b!684557))

(assert (=> bs!130983 m!941277))

(assert (=> bs!130983 m!941249))

(assert (=> bs!130983 s!77497))

(assert (=> d!230815 m!941277))

(declare-fun m!941279 () Bool)

(assert (=> d!230815 m!941279))

(declare-fun m!941281 () Bool)

(assert (=> b!684548 m!941281))

(assert (=> b!684469 d!230815))

(declare-fun d!230817 () Bool)

(declare-fun e!429750 () Bool)

(assert (=> d!230817 e!429750))

(declare-fun res!311736 () Bool)

(assert (=> d!230817 (=> (not res!311736) (not e!429750))))

(declare-fun lt!283707 () BalanceConc!5200)

(declare-fun list!3076 (BalanceConc!5200) List!7315)

(assert (=> d!230817 (= res!311736 (= (list!3076 lt!283707) (Cons!7301 (Token!2677 (apply!1747 (injection!9 KeywordValueInjection!75) (singletonSeq!467 #x005B)) (lBracketRule!0 JsonLexer!259) 1 (Cons!7299 #x005B Nil!7299)) Nil!7301)))))

(declare-fun singleton!226 (Token!2676) BalanceConc!5200)

(assert (=> d!230817 (= lt!283707 (singleton!226 (Token!2677 (apply!1747 (injection!9 KeywordValueInjection!75) (singletonSeq!467 #x005B)) (lBracketRule!0 JsonLexer!259) 1 (Cons!7299 #x005B Nil!7299))))))

(assert (=> d!230817 (= (singletonSeq!466 (Token!2677 (apply!1747 (injection!9 KeywordValueInjection!75) (singletonSeq!467 #x005B)) (lBracketRule!0 JsonLexer!259) 1 (Cons!7299 #x005B Nil!7299))) lt!283707)))

(declare-fun b!684560 () Bool)

(declare-fun isBalanced!682 (Conc!2594) Bool)

(assert (=> b!684560 (= e!429750 (isBalanced!682 (c!121045 lt!283707)))))

(assert (= (and d!230817 res!311736) b!684560))

(declare-fun m!941283 () Bool)

(assert (=> d!230817 m!941283))

(declare-fun m!941285 () Bool)

(assert (=> d!230817 m!941285))

(declare-fun m!941287 () Bool)

(assert (=> b!684560 m!941287))

(assert (=> b!684469 d!230817))

(declare-fun d!230819 () Bool)

(assert (=> d!230819 (= (array_inv!891 (_keys!1006 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) (bvsge (size!6005 (_keys!1006 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!684464 d!230819))

(declare-fun d!230821 () Bool)

(assert (=> d!230821 (= (array_inv!892 (_values!991 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) (bvsge (size!6006 (_values!991 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!684464 d!230821))

(declare-fun d!230823 () Bool)

(assert (=> d!230823 (= (isEmpty!4827 lt!283674) ((_ is Nil!7300) lt!283674))))

(assert (=> start!65416 d!230823))

(declare-fun d!230825 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!258) Rule!2754)

(declare-fun integerLiteralRule!0 (JsonLexer!258) Rule!2754)

(declare-fun floatLiteralRule!0 (JsonLexer!258) Rule!2754)

(declare-fun trueRule!0 (JsonLexer!258) Rule!2754)

(declare-fun falseRule!0 (JsonLexer!258) Rule!2754)

(declare-fun nullRule!0 (JsonLexer!258) Rule!2754)

(declare-fun jsonstringRule!0 (JsonLexer!258) Rule!2754)

(declare-fun lBraceRule!0 (JsonLexer!258) Rule!2754)

(declare-fun rBraceRule!0 (JsonLexer!258) Rule!2754)

(declare-fun rBracketRule!0 (JsonLexer!258) Rule!2754)

(declare-fun colonRule!0 (JsonLexer!258) Rule!2754)

(declare-fun commaRule!0 (JsonLexer!258) Rule!2754)

(declare-fun eofRule!0 (JsonLexer!258) Rule!2754)

(assert (=> d!230825 (= (rules!109 JsonLexer!259) (Cons!7300 (whitespaceRule!0 JsonLexer!259) (Cons!7300 (integerLiteralRule!0 JsonLexer!259) (Cons!7300 (floatLiteralRule!0 JsonLexer!259) (Cons!7300 (trueRule!0 JsonLexer!259) (Cons!7300 (falseRule!0 JsonLexer!259) (Cons!7300 (nullRule!0 JsonLexer!259) (Cons!7300 (jsonstringRule!0 JsonLexer!259) (Cons!7300 (lBraceRule!0 JsonLexer!259) (Cons!7300 (rBraceRule!0 JsonLexer!259) (Cons!7300 (lBracketRule!0 JsonLexer!259) (Cons!7300 (rBracketRule!0 JsonLexer!259) (Cons!7300 (colonRule!0 JsonLexer!259) (Cons!7300 (commaRule!0 JsonLexer!259) (Cons!7300 (eofRule!0 JsonLexer!259) Nil!7300)))))))))))))))))

(declare-fun bs!130995 () Bool)

(assert (= bs!130995 d!230825))

(declare-fun m!941289 () Bool)

(assert (=> bs!130995 m!941289))

(declare-fun m!941291 () Bool)

(assert (=> bs!130995 m!941291))

(declare-fun m!941293 () Bool)

(assert (=> bs!130995 m!941293))

(declare-fun m!941295 () Bool)

(assert (=> bs!130995 m!941295))

(declare-fun m!941297 () Bool)

(assert (=> bs!130995 m!941297))

(declare-fun m!941299 () Bool)

(assert (=> bs!130995 m!941299))

(declare-fun m!941301 () Bool)

(assert (=> bs!130995 m!941301))

(declare-fun m!941303 () Bool)

(assert (=> bs!130995 m!941303))

(declare-fun m!941305 () Bool)

(assert (=> bs!130995 m!941305))

(declare-fun m!941307 () Bool)

(assert (=> bs!130995 m!941307))

(assert (=> bs!130995 m!941195))

(declare-fun m!941309 () Bool)

(assert (=> bs!130995 m!941309))

(declare-fun m!941311 () Bool)

(assert (=> bs!130995 m!941311))

(declare-fun m!941313 () Bool)

(assert (=> bs!130995 m!941313))

(assert (=> start!65416 d!230825))

(declare-fun d!230827 () Bool)

(declare-fun res!311739 () Bool)

(declare-fun e!429753 () Bool)

(assert (=> d!230827 (=> (not res!311739) (not e!429753))))

(assert (=> d!230827 (= res!311739 ((_ is HashMap!684) (cache!1071 cacheDown!348)))))

(assert (=> d!230827 (= (inv!9366 cacheDown!348) e!429753)))

(declare-fun b!684563 () Bool)

(declare-fun validCacheMapDown!54 (MutableMap!684) Bool)

(assert (=> b!684563 (= e!429753 (validCacheMapDown!54 (cache!1071 cacheDown!348)))))

(assert (= (and d!230827 res!311739) b!684563))

(declare-fun m!941315 () Bool)

(assert (=> b!684563 m!941315))

(assert (=> start!65416 d!230827))

(declare-fun d!230829 () Bool)

(declare-fun res!311742 () Bool)

(declare-fun e!429756 () Bool)

(assert (=> d!230829 (=> (not res!311742) (not e!429756))))

(assert (=> d!230829 (= res!311742 ((_ is HashMap!683) (cache!1070 cacheUp!335)))))

(assert (=> d!230829 (= (inv!9367 cacheUp!335) e!429756)))

(declare-fun b!684566 () Bool)

(declare-fun validCacheMapUp!54 (MutableMap!683) Bool)

(assert (=> b!684566 (= e!429756 (validCacheMapUp!54 (cache!1070 cacheUp!335)))))

(assert (= (and d!230829 res!311742) b!684566))

(declare-fun m!941317 () Bool)

(assert (=> b!684566 m!941317))

(assert (=> start!65416 d!230829))

(declare-fun d!230831 () Bool)

(assert (=> d!230831 (= (usesJsonRules!0 (get!2553 lt!283677)) (= (rules!8328 (get!2553 lt!283677)) (rules!109 JsonLexer!259)))))

(declare-fun bs!130996 () Bool)

(assert (= bs!130996 d!230831))

(assert (=> bs!130996 m!941183))

(assert (=> b!684468 d!230831))

(declare-fun d!230833 () Bool)

(assert (=> d!230833 (= (get!2553 lt!283677) (v!17473 lt!283677))))

(assert (=> b!684468 d!230833))

(declare-fun d!230835 () Bool)

(declare-fun res!311745 () Bool)

(declare-fun e!429759 () Bool)

(assert (=> d!230835 (=> (not res!311745) (not e!429759))))

(declare-fun rulesValid!521 (LexerInterface!1292 List!7314) Bool)

(assert (=> d!230835 (= res!311745 (rulesValid!521 Lexer!1290 lt!283674))))

(assert (=> d!230835 (= (rulesInvariant!1227 Lexer!1290 lt!283674) e!429759)))

(declare-fun b!684569 () Bool)

(declare-datatypes ((List!7316 0))(
  ( (Nil!7302) (Cons!7302 (h!12703 String!9295) (t!87025 List!7316)) )
))
(declare-fun noDuplicateTag!521 (LexerInterface!1292 List!7314 List!7316) Bool)

(assert (=> b!684569 (= e!429759 (noDuplicateTag!521 Lexer!1290 lt!283674 Nil!7302))))

(assert (= (and d!230835 res!311745) b!684569))

(declare-fun m!941319 () Bool)

(assert (=> d!230835 m!941319))

(declare-fun m!941321 () Bool)

(assert (=> b!684569 m!941321))

(assert (=> b!684462 d!230835))

(declare-fun setRes!3275 () Bool)

(declare-fun e!429766 () Bool)

(declare-fun tp!203045 () Bool)

(declare-fun b!684574 () Bool)

(declare-fun inv!9370 (Context!446) Bool)

(assert (=> b!684574 (= e!429766 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 mapDefault!2833)))) setRes!3275 tp!203045))))

(declare-fun condSetEmpty!3275 () Bool)

(assert (=> b!684574 (= condSetEmpty!3275 (= (_2!4204 (h!12699 mapDefault!2833)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3275 () Bool)

(assert (=> setIsEmpty!3275 setRes!3275))

(declare-fun setNonEmpty!3275 () Bool)

(declare-fun tp!203046 () Bool)

(declare-fun setElem!3275 () Context!446)

(assert (=> setNonEmpty!3275 (= setRes!3275 (and tp!203046 (inv!9370 setElem!3275)))))

(declare-fun setRest!3275 () (InoxSet Context!446))

(assert (=> setNonEmpty!3275 (= (_2!4204 (h!12699 mapDefault!2833)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3275 true) setRest!3275))))

(assert (=> b!684457 (= tp!203030 e!429766)))

(assert (= (and b!684574 condSetEmpty!3275) setIsEmpty!3275))

(assert (= (and b!684574 (not condSetEmpty!3275)) setNonEmpty!3275))

(assert (= (and b!684457 ((_ is Cons!7298) mapDefault!2833)) b!684574))

(declare-fun m!941323 () Bool)

(assert (=> b!684574 m!941323))

(declare-fun m!941325 () Bool)

(assert (=> setNonEmpty!3275 m!941325))

(declare-fun b!684579 () Bool)

(declare-fun setRes!3278 () Bool)

(declare-fun tp!203051 () Bool)

(declare-fun e!429777 () Bool)

(assert (=> b!684579 (= e!429777 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 (zeroValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))))) setRes!3278 tp!203051))))

(declare-fun condSetEmpty!3278 () Bool)

(assert (=> b!684579 (= condSetEmpty!3278 (= (_2!4202 (h!12698 (zeroValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3278 () Bool)

(assert (=> setIsEmpty!3278 setRes!3278))

(declare-fun setNonEmpty!3278 () Bool)

(declare-fun tp!203052 () Bool)

(declare-fun setElem!3278 () Context!446)

(assert (=> setNonEmpty!3278 (= setRes!3278 (and tp!203052 (inv!9370 setElem!3278)))))

(declare-fun setRest!3278 () (InoxSet Context!446))

(assert (=> setNonEmpty!3278 (= (_2!4202 (h!12698 (zeroValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3278 true) setRest!3278))))

(assert (=> b!684466 (= tp!203023 e!429777)))

(assert (= (and b!684579 condSetEmpty!3278) setIsEmpty!3278))

(assert (= (and b!684579 (not condSetEmpty!3278)) setNonEmpty!3278))

(assert (= (and b!684466 ((_ is Cons!7297) (zeroValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) b!684579))

(declare-fun m!941327 () Bool)

(assert (=> b!684579 m!941327))

(declare-fun m!941329 () Bool)

(assert (=> setNonEmpty!3278 m!941329))

(declare-fun tp!203053 () Bool)

(declare-fun e!429780 () Bool)

(declare-fun b!684580 () Bool)

(declare-fun setRes!3279 () Bool)

(assert (=> b!684580 (= e!429780 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 (minValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))))) setRes!3279 tp!203053))))

(declare-fun condSetEmpty!3279 () Bool)

(assert (=> b!684580 (= condSetEmpty!3279 (= (_2!4202 (h!12698 (minValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3279 () Bool)

(assert (=> setIsEmpty!3279 setRes!3279))

(declare-fun setNonEmpty!3279 () Bool)

(declare-fun tp!203054 () Bool)

(declare-fun setElem!3279 () Context!446)

(assert (=> setNonEmpty!3279 (= setRes!3279 (and tp!203054 (inv!9370 setElem!3279)))))

(declare-fun setRest!3279 () (InoxSet Context!446))

(assert (=> setNonEmpty!3279 (= (_2!4202 (h!12698 (minValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3279 true) setRest!3279))))

(assert (=> b!684466 (= tp!203018 e!429780)))

(assert (= (and b!684580 condSetEmpty!3279) setIsEmpty!3279))

(assert (= (and b!684580 (not condSetEmpty!3279)) setNonEmpty!3279))

(assert (= (and b!684466 ((_ is Cons!7297) (minValue!968 (v!17469 (underlying!1605 (v!17470 (underlying!1606 (cache!1070 cacheUp!335)))))))) b!684580))

(declare-fun m!941331 () Bool)

(assert (=> b!684580 m!941331))

(declare-fun m!941333 () Bool)

(assert (=> setNonEmpty!3279 m!941333))

(declare-fun e!429781 () Bool)

(declare-fun setRes!3280 () Bool)

(declare-fun tp!203055 () Bool)

(declare-fun b!684581 () Bool)

(assert (=> b!684581 (= e!429781 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 (zeroValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))))) setRes!3280 tp!203055))))

(declare-fun condSetEmpty!3280 () Bool)

(assert (=> b!684581 (= condSetEmpty!3280 (= (_2!4204 (h!12699 (zeroValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3280 () Bool)

(assert (=> setIsEmpty!3280 setRes!3280))

(declare-fun setNonEmpty!3280 () Bool)

(declare-fun tp!203056 () Bool)

(declare-fun setElem!3280 () Context!446)

(assert (=> setNonEmpty!3280 (= setRes!3280 (and tp!203056 (inv!9370 setElem!3280)))))

(declare-fun setRest!3280 () (InoxSet Context!446))

(assert (=> setNonEmpty!3280 (= (_2!4204 (h!12699 (zeroValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3280 true) setRest!3280))))

(assert (=> b!684464 (= tp!203022 e!429781)))

(assert (= (and b!684581 condSetEmpty!3280) setIsEmpty!3280))

(assert (= (and b!684581 (not condSetEmpty!3280)) setNonEmpty!3280))

(assert (= (and b!684464 ((_ is Cons!7298) (zeroValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) b!684581))

(declare-fun m!941335 () Bool)

(assert (=> b!684581 m!941335))

(declare-fun m!941337 () Bool)

(assert (=> setNonEmpty!3280 m!941337))

(declare-fun setRes!3281 () Bool)

(declare-fun tp!203057 () Bool)

(declare-fun b!684582 () Bool)

(declare-fun e!429784 () Bool)

(assert (=> b!684582 (= e!429784 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 (minValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))))) setRes!3281 tp!203057))))

(declare-fun condSetEmpty!3281 () Bool)

(assert (=> b!684582 (= condSetEmpty!3281 (= (_2!4204 (h!12699 (minValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3281 () Bool)

(assert (=> setIsEmpty!3281 setRes!3281))

(declare-fun setNonEmpty!3281 () Bool)

(declare-fun tp!203058 () Bool)

(declare-fun setElem!3281 () Context!446)

(assert (=> setNonEmpty!3281 (= setRes!3281 (and tp!203058 (inv!9370 setElem!3281)))))

(declare-fun setRest!3281 () (InoxSet Context!446))

(assert (=> setNonEmpty!3281 (= (_2!4204 (h!12699 (minValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3281 true) setRest!3281))))

(assert (=> b!684464 (= tp!203020 e!429784)))

(assert (= (and b!684582 condSetEmpty!3281) setIsEmpty!3281))

(assert (= (and b!684582 (not condSetEmpty!3281)) setNonEmpty!3281))

(assert (= (and b!684464 ((_ is Cons!7298) (minValue!969 (v!17471 (underlying!1607 (v!17472 (underlying!1608 (cache!1071 cacheDown!348)))))))) b!684582))

(declare-fun m!941339 () Bool)

(assert (=> b!684582 m!941339))

(declare-fun m!941341 () Bool)

(assert (=> setNonEmpty!3281 m!941341))

(declare-fun e!429804 () Bool)

(declare-fun tp!203070 () Bool)

(declare-fun setRes!3286 () Bool)

(declare-fun mapValue!2836 () List!7311)

(declare-fun b!684589 () Bool)

(assert (=> b!684589 (= e!429804 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 mapValue!2836)))) setRes!3286 tp!203070))))

(declare-fun condSetEmpty!3287 () Bool)

(assert (=> b!684589 (= condSetEmpty!3287 (= (_2!4202 (h!12698 mapValue!2836)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun condMapEmpty!2836 () Bool)

(declare-fun mapDefault!2836 () List!7311)

(assert (=> mapNonEmpty!2833 (= condMapEmpty!2836 (= mapRest!2833 ((as const (Array (_ BitVec 32) List!7311)) mapDefault!2836)))))

(declare-fun e!429801 () Bool)

(declare-fun mapRes!2836 () Bool)

(assert (=> mapNonEmpty!2833 (= tp!203029 (and e!429801 mapRes!2836))))

(declare-fun setNonEmpty!3286 () Bool)

(declare-fun setRes!3287 () Bool)

(declare-fun tp!203073 () Bool)

(declare-fun setElem!3287 () Context!446)

(assert (=> setNonEmpty!3286 (= setRes!3287 (and tp!203073 (inv!9370 setElem!3287)))))

(declare-fun setRest!3287 () (InoxSet Context!446))

(assert (=> setNonEmpty!3286 (= (_2!4202 (h!12698 mapDefault!2836)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3287 true) setRest!3287))))

(declare-fun b!684590 () Bool)

(declare-fun tp!203072 () Bool)

(assert (=> b!684590 (= e!429801 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 mapDefault!2836)))) setRes!3287 tp!203072))))

(declare-fun condSetEmpty!3286 () Bool)

(assert (=> b!684590 (= condSetEmpty!3286 (= (_2!4202 (h!12698 mapDefault!2836)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3286 () Bool)

(assert (=> setIsEmpty!3286 setRes!3287))

(declare-fun setNonEmpty!3287 () Bool)

(declare-fun tp!203071 () Bool)

(declare-fun setElem!3286 () Context!446)

(assert (=> setNonEmpty!3287 (= setRes!3286 (and tp!203071 (inv!9370 setElem!3286)))))

(declare-fun setRest!3286 () (InoxSet Context!446))

(assert (=> setNonEmpty!3287 (= (_2!4202 (h!12698 mapValue!2836)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3286 true) setRest!3286))))

(declare-fun mapIsEmpty!2836 () Bool)

(assert (=> mapIsEmpty!2836 mapRes!2836))

(declare-fun mapNonEmpty!2836 () Bool)

(declare-fun tp!203069 () Bool)

(assert (=> mapNonEmpty!2836 (= mapRes!2836 (and tp!203069 e!429804))))

(declare-fun mapKey!2836 () (_ BitVec 32))

(declare-fun mapRest!2836 () (Array (_ BitVec 32) List!7311))

(assert (=> mapNonEmpty!2836 (= mapRest!2833 (store mapRest!2836 mapKey!2836 mapValue!2836))))

(declare-fun setIsEmpty!3287 () Bool)

(assert (=> setIsEmpty!3287 setRes!3286))

(assert (= (and mapNonEmpty!2833 condMapEmpty!2836) mapIsEmpty!2836))

(assert (= (and mapNonEmpty!2833 (not condMapEmpty!2836)) mapNonEmpty!2836))

(assert (= (and b!684589 condSetEmpty!3287) setIsEmpty!3287))

(assert (= (and b!684589 (not condSetEmpty!3287)) setNonEmpty!3287))

(assert (= (and mapNonEmpty!2836 ((_ is Cons!7297) mapValue!2836)) b!684589))

(assert (= (and b!684590 condSetEmpty!3286) setIsEmpty!3286))

(assert (= (and b!684590 (not condSetEmpty!3286)) setNonEmpty!3286))

(assert (= (and mapNonEmpty!2833 ((_ is Cons!7297) mapDefault!2836)) b!684590))

(declare-fun m!941343 () Bool)

(assert (=> mapNonEmpty!2836 m!941343))

(declare-fun m!941345 () Bool)

(assert (=> setNonEmpty!3287 m!941345))

(declare-fun m!941347 () Bool)

(assert (=> b!684590 m!941347))

(declare-fun m!941349 () Bool)

(assert (=> b!684589 m!941349))

(declare-fun m!941351 () Bool)

(assert (=> setNonEmpty!3286 m!941351))

(declare-fun setRes!3288 () Bool)

(declare-fun e!429807 () Bool)

(declare-fun b!684591 () Bool)

(declare-fun tp!203074 () Bool)

(assert (=> b!684591 (= e!429807 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 mapValue!2833)))) setRes!3288 tp!203074))))

(declare-fun condSetEmpty!3288 () Bool)

(assert (=> b!684591 (= condSetEmpty!3288 (= (_2!4202 (h!12698 mapValue!2833)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3288 () Bool)

(assert (=> setIsEmpty!3288 setRes!3288))

(declare-fun setNonEmpty!3288 () Bool)

(declare-fun tp!203075 () Bool)

(declare-fun setElem!3288 () Context!446)

(assert (=> setNonEmpty!3288 (= setRes!3288 (and tp!203075 (inv!9370 setElem!3288)))))

(declare-fun setRest!3288 () (InoxSet Context!446))

(assert (=> setNonEmpty!3288 (= (_2!4202 (h!12698 mapValue!2833)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3288 true) setRest!3288))))

(assert (=> mapNonEmpty!2833 (= tp!203031 e!429807)))

(assert (= (and b!684591 condSetEmpty!3288) setIsEmpty!3288))

(assert (= (and b!684591 (not condSetEmpty!3288)) setNonEmpty!3288))

(assert (= (and mapNonEmpty!2833 ((_ is Cons!7297) mapValue!2833)) b!684591))

(declare-fun m!941353 () Bool)

(assert (=> b!684591 m!941353))

(declare-fun m!941355 () Bool)

(assert (=> setNonEmpty!3288 m!941355))

(declare-fun b!684592 () Bool)

(declare-fun e!429810 () Bool)

(declare-fun setRes!3289 () Bool)

(declare-fun tp!203076 () Bool)

(assert (=> b!684592 (= e!429810 (and (inv!9370 (_1!4201 (_1!4202 (h!12698 mapDefault!2832)))) setRes!3289 tp!203076))))

(declare-fun condSetEmpty!3289 () Bool)

(assert (=> b!684592 (= condSetEmpty!3289 (= (_2!4202 (h!12698 mapDefault!2832)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3289 () Bool)

(assert (=> setIsEmpty!3289 setRes!3289))

(declare-fun setNonEmpty!3289 () Bool)

(declare-fun tp!203077 () Bool)

(declare-fun setElem!3289 () Context!446)

(assert (=> setNonEmpty!3289 (= setRes!3289 (and tp!203077 (inv!9370 setElem!3289)))))

(declare-fun setRest!3289 () (InoxSet Context!446))

(assert (=> setNonEmpty!3289 (= (_2!4202 (h!12698 mapDefault!2832)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3289 true) setRest!3289))))

(assert (=> b!684458 (= tp!203021 e!429810)))

(assert (= (and b!684592 condSetEmpty!3289) setIsEmpty!3289))

(assert (= (and b!684592 (not condSetEmpty!3289)) setNonEmpty!3289))

(assert (= (and b!684458 ((_ is Cons!7297) mapDefault!2832)) b!684592))

(declare-fun m!941357 () Bool)

(assert (=> b!684592 m!941357))

(declare-fun m!941359 () Bool)

(assert (=> setNonEmpty!3289 m!941359))

(declare-fun setRes!3294 () Bool)

(declare-fun tp!203089 () Bool)

(declare-fun b!684599 () Bool)

(declare-fun e!429827 () Bool)

(declare-fun mapValue!2839 () List!7312)

(assert (=> b!684599 (= e!429827 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 mapValue!2839)))) setRes!3294 tp!203089))))

(declare-fun condSetEmpty!3294 () Bool)

(assert (=> b!684599 (= condSetEmpty!3294 (= (_2!4204 (h!12699 mapValue!2839)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun mapNonEmpty!2839 () Bool)

(declare-fun mapRes!2839 () Bool)

(declare-fun tp!203088 () Bool)

(assert (=> mapNonEmpty!2839 (= mapRes!2839 (and tp!203088 e!429827))))

(declare-fun mapRest!2839 () (Array (_ BitVec 32) List!7312))

(declare-fun mapKey!2839 () (_ BitVec 32))

(assert (=> mapNonEmpty!2839 (= mapRest!2832 (store mapRest!2839 mapKey!2839 mapValue!2839))))

(declare-fun setRes!3295 () Bool)

(declare-fun e!429828 () Bool)

(declare-fun b!684600 () Bool)

(declare-fun mapDefault!2839 () List!7312)

(declare-fun tp!203091 () Bool)

(assert (=> b!684600 (= e!429828 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 mapDefault!2839)))) setRes!3295 tp!203091))))

(declare-fun condSetEmpty!3295 () Bool)

(assert (=> b!684600 (= condSetEmpty!3295 (= (_2!4204 (h!12699 mapDefault!2839)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setNonEmpty!3294 () Bool)

(declare-fun tp!203090 () Bool)

(declare-fun setElem!3294 () Context!446)

(assert (=> setNonEmpty!3294 (= setRes!3294 (and tp!203090 (inv!9370 setElem!3294)))))

(declare-fun setRest!3295 () (InoxSet Context!446))

(assert (=> setNonEmpty!3294 (= (_2!4204 (h!12699 mapValue!2839)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3294 true) setRest!3295))))

(declare-fun condMapEmpty!2839 () Bool)

(assert (=> mapNonEmpty!2832 (= condMapEmpty!2839 (= mapRest!2832 ((as const (Array (_ BitVec 32) List!7312)) mapDefault!2839)))))

(assert (=> mapNonEmpty!2832 (= tp!203025 (and e!429828 mapRes!2839))))

(declare-fun setNonEmpty!3295 () Bool)

(declare-fun tp!203092 () Bool)

(declare-fun setElem!3295 () Context!446)

(assert (=> setNonEmpty!3295 (= setRes!3295 (and tp!203092 (inv!9370 setElem!3295)))))

(declare-fun setRest!3294 () (InoxSet Context!446))

(assert (=> setNonEmpty!3295 (= (_2!4204 (h!12699 mapDefault!2839)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3295 true) setRest!3294))))

(declare-fun setIsEmpty!3294 () Bool)

(assert (=> setIsEmpty!3294 setRes!3294))

(declare-fun mapIsEmpty!2839 () Bool)

(assert (=> mapIsEmpty!2839 mapRes!2839))

(declare-fun setIsEmpty!3295 () Bool)

(assert (=> setIsEmpty!3295 setRes!3295))

(assert (= (and mapNonEmpty!2832 condMapEmpty!2839) mapIsEmpty!2839))

(assert (= (and mapNonEmpty!2832 (not condMapEmpty!2839)) mapNonEmpty!2839))

(assert (= (and b!684599 condSetEmpty!3294) setIsEmpty!3294))

(assert (= (and b!684599 (not condSetEmpty!3294)) setNonEmpty!3294))

(assert (= (and mapNonEmpty!2839 ((_ is Cons!7298) mapValue!2839)) b!684599))

(assert (= (and b!684600 condSetEmpty!3295) setIsEmpty!3295))

(assert (= (and b!684600 (not condSetEmpty!3295)) setNonEmpty!3295))

(assert (= (and mapNonEmpty!2832 ((_ is Cons!7298) mapDefault!2839)) b!684600))

(declare-fun m!941361 () Bool)

(assert (=> b!684599 m!941361))

(declare-fun m!941363 () Bool)

(assert (=> b!684600 m!941363))

(declare-fun m!941365 () Bool)

(assert (=> setNonEmpty!3295 m!941365))

(declare-fun m!941367 () Bool)

(assert (=> setNonEmpty!3294 m!941367))

(declare-fun m!941369 () Bool)

(assert (=> mapNonEmpty!2839 m!941369))

(declare-fun b!684601 () Bool)

(declare-fun e!429829 () Bool)

(declare-fun tp!203093 () Bool)

(declare-fun setRes!3296 () Bool)

(assert (=> b!684601 (= e!429829 (and (inv!9370 (_2!4203 (_1!4204 (h!12699 mapValue!2832)))) setRes!3296 tp!203093))))

(declare-fun condSetEmpty!3296 () Bool)

(assert (=> b!684601 (= condSetEmpty!3296 (= (_2!4204 (h!12699 mapValue!2832)) ((as const (Array Context!446 Bool)) false)))))

(declare-fun setIsEmpty!3296 () Bool)

(assert (=> setIsEmpty!3296 setRes!3296))

(declare-fun setNonEmpty!3296 () Bool)

(declare-fun tp!203094 () Bool)

(declare-fun setElem!3296 () Context!446)

(assert (=> setNonEmpty!3296 (= setRes!3296 (and tp!203094 (inv!9370 setElem!3296)))))

(declare-fun setRest!3296 () (InoxSet Context!446))

(assert (=> setNonEmpty!3296 (= (_2!4204 (h!12699 mapValue!2832)) ((_ map or) (store ((as const (Array Context!446 Bool)) false) setElem!3296 true) setRest!3296))))

(assert (=> mapNonEmpty!2832 (= tp!203024 e!429829)))

(assert (= (and b!684601 condSetEmpty!3296) setIsEmpty!3296))

(assert (= (and b!684601 (not condSetEmpty!3296)) setNonEmpty!3296))

(assert (= (and mapNonEmpty!2832 ((_ is Cons!7298) mapValue!2832)) b!684601))

(declare-fun m!941371 () Bool)

(assert (=> b!684601 m!941371))

(declare-fun m!941373 () Bool)

(assert (=> setNonEmpty!3296 m!941373))

(declare-fun b_lambda!25841 () Bool)

(assert (= b_lambda!25839 (or d!230809 b_lambda!25841)))

(declare-fun bs!130997 () Bool)

(declare-fun d!230837 () Bool)

(assert (= bs!130997 (and d!230837 d!230809)))

(assert (=> bs!130997 (= (dynLambda!3852 lambda!20974 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)))))

(assert (=> bs!130997 m!941199))

(declare-fun bs!130998 () Bool)

(declare-fun s!77499 () Bool)

(assert (= bs!130998 (and neg-inst!418 s!77499)))

(declare-fun res!311746 () Bool)

(declare-fun e!429832 () Bool)

(assert (=> bs!130998 (=> res!311746 e!429832)))

(assert (=> bs!130998 (= res!311746 (not (= (list!3075 x!149760) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!130998 (=> true e!429832)))

(declare-fun b!684602 () Bool)

(assert (=> b!684602 (= e!429832 (= (toValue!11 KeywordValueInjection!75 x!149760) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!130998 (not res!311746)) b!684602))

(declare-fun bs!130999 () Bool)

(declare-fun m!941375 () Bool)

(assert (= bs!130999 (and m!941375 m!941251 m!941259)))

(assert (=> bs!130999 m!941251))

(declare-fun bs!131000 () Bool)

(declare-fun s!77501 () Bool)

(assert (= bs!131000 (and neg-inst!418 s!77501)))

(declare-fun res!311747 () Bool)

(declare-fun e!429833 () Bool)

(assert (=> bs!131000 (=> res!311747 e!429833)))

(assert (=> bs!131000 (= res!311747 (not (= (list!3075 lt!283704) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!131000 (=> true e!429833)))

(declare-fun b!684603 () Bool)

(assert (=> b!684603 (= e!429833 (= (toValue!11 KeywordValueInjection!75 lt!283704) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!131000 (not res!311747)) b!684603))

(declare-fun bs!131001 () Bool)

(declare-fun m!941377 () Bool)

(assert (= bs!131001 (and m!941377 m!941277)))

(assert (=> bs!131001 m!941277))

(assert (=> bs!131001 m!941377))

(assert (=> bs!131001 s!77501))

(declare-fun bs!131002 () Bool)

(declare-fun s!77503 () Bool)

(assert (= bs!131002 (and neg-inst!418 s!77503)))

(declare-fun res!311748 () Bool)

(declare-fun e!429834 () Bool)

(assert (=> bs!131002 (=> res!311748 e!429834)))

(assert (=> bs!131002 (= res!311748 (not (= (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!131002 (=> true e!429834)))

(declare-fun b!684604 () Bool)

(assert (=> b!684604 (= e!429834 (= (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!131002 (not res!311748)) b!684604))

(declare-fun bs!131003 () Bool)

(assert (= bs!131003 (and m!941377 m!941247)))

(assert (=> bs!131003 m!941247))

(assert (=> bs!131003 m!941377))

(assert (=> bs!131003 s!77503))

(declare-fun bs!131004 () Bool)

(assert (= bs!131004 (and m!941377 m!941251 m!941259)))

(assert (=> bs!131004 s!77499))

(declare-fun bs!131005 () Bool)

(declare-fun s!77505 () Bool)

(assert (= bs!131005 (and neg-inst!418 s!77505)))

(declare-fun res!311749 () Bool)

(declare-fun e!429835 () Bool)

(assert (=> bs!131005 (=> res!311749 e!429835)))

(assert (=> bs!131005 (= res!311749 (not (= (list!3075 x!149758) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!131005 (=> true e!429835)))

(declare-fun b!684605 () Bool)

(assert (=> b!684605 (= e!429835 (= (toValue!11 KeywordValueInjection!75 x!149758) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!131005 (not res!311749)) b!684605))

(declare-fun bs!131006 () Bool)

(assert (= bs!131006 (and m!941377 m!941243 m!941239)))

(assert (=> bs!131006 m!941239))

(assert (=> bs!131006 m!941377))

(assert (=> bs!131006 s!77505))

(declare-fun bs!131007 () Bool)

(declare-fun s!77507 () Bool)

(assert (= bs!131007 (and neg-inst!418 s!77507)))

(declare-fun res!311750 () Bool)

(declare-fun e!429836 () Bool)

(assert (=> bs!131007 (=> res!311750 e!429836)))

(assert (=> bs!131007 (= res!311750 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!131007 (=> true e!429836)))

(declare-fun b!684606 () Bool)

(assert (=> b!684606 (= e!429836 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!131007 (not res!311750)) b!684606))

(assert (=> m!941377 s!77507))

(declare-fun bs!131008 () Bool)

(declare-fun s!77509 () Bool)

(assert (= bs!131008 (and neg-inst!418 s!77509)))

(declare-fun res!311751 () Bool)

(declare-fun e!429837 () Bool)

(assert (=> bs!131008 (=> res!311751 e!429837)))

(assert (=> bs!131008 (= res!311751 (not (= (list!3075 x!149759) (list!3075 (singletonSeq!467 #x005B)))))))

(assert (=> bs!131008 (=> true e!429837)))

(declare-fun b!684607 () Bool)

(assert (=> b!684607 (= e!429837 (= (toValue!11 KeywordValueInjection!75 x!149759) (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B))))))

(assert (= (and bs!131008 (not res!311751)) b!684607))

(declare-fun bs!131009 () Bool)

(assert (= bs!131009 (and m!941377 m!941257 m!941249)))

(assert (=> bs!131009 m!941249))

(assert (=> bs!131009 m!941377))

(assert (=> bs!131009 s!77509))

(declare-fun bs!131010 () Bool)

(assert (= bs!131010 (and m!941377 m!941375)))

(assert (=> bs!131010 s!77507))

(declare-fun bs!131011 () Bool)

(declare-fun s!77511 () Bool)

(assert (= bs!131011 (and neg-inst!418 s!77511)))

(declare-fun res!311752 () Bool)

(declare-fun e!429838 () Bool)

(assert (=> bs!131011 (=> res!311752 e!429838)))

(assert (=> bs!131011 (= res!311752 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 x!149759))))))

(assert (=> bs!131011 (=> true e!429838)))

(declare-fun b!684608 () Bool)

(assert (=> b!684608 (= e!429838 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 x!149759)))))

(assert (= (and bs!131011 (not res!311752)) b!684608))

(assert (=> bs!131009 m!941377))

(assert (=> bs!131009 m!941249))

(assert (=> bs!131009 s!77511))

(declare-fun bs!131012 () Bool)

(declare-fun s!77513 () Bool)

(assert (= bs!131012 (and neg-inst!418 s!77513)))

(declare-fun res!311753 () Bool)

(declare-fun e!429839 () Bool)

(assert (=> bs!131012 (=> res!311753 e!429839)))

(assert (=> bs!131012 (= res!311753 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 x!149758))))))

(assert (=> bs!131012 (=> true e!429839)))

(declare-fun b!684609 () Bool)

(assert (=> b!684609 (= e!429839 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 x!149758)))))

(assert (= (and bs!131012 (not res!311753)) b!684609))

(assert (=> bs!131006 m!941377))

(assert (=> bs!131006 m!941239))

(assert (=> bs!131006 s!77513))

(declare-fun bs!131013 () Bool)

(declare-fun s!77515 () Bool)

(assert (= bs!131013 (and neg-inst!418 s!77515)))

(declare-fun res!311754 () Bool)

(declare-fun e!429840 () Bool)

(assert (=> bs!131013 (=> res!311754 e!429840)))

(assert (=> bs!131013 (= res!311754 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 x!149760))))))

(assert (=> bs!131013 (=> true e!429840)))

(declare-fun b!684610 () Bool)

(assert (=> b!684610 (= e!429840 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 x!149760)))))

(assert (= (and bs!131013 (not res!311754)) b!684610))

(assert (=> bs!131004 m!941377))

(assert (=> bs!131004 m!941251))

(assert (=> bs!131004 s!77515))

(declare-fun bs!131014 () Bool)

(declare-fun s!77517 () Bool)

(assert (= bs!131014 (and neg-inst!418 s!77517)))

(declare-fun res!311755 () Bool)

(declare-fun e!429841 () Bool)

(assert (=> bs!131014 (=> res!311755 e!429841)))

(assert (=> bs!131014 (= res!311755 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758))))))))

(assert (=> bs!131014 (=> true e!429841)))

(declare-fun b!684611 () Bool)

(assert (=> b!684611 (= e!429841 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 (toCharacters!4 KeywordValueInjection!75 (toValue!11 KeywordValueInjection!75 x!149758)))))))

(assert (= (and bs!131014 (not res!311755)) b!684611))

(assert (=> bs!131003 m!941377))

(assert (=> bs!131003 m!941247))

(assert (=> bs!131003 s!77517))

(declare-fun bs!131015 () Bool)

(declare-fun s!77519 () Bool)

(assert (= bs!131015 (and neg-inst!418 s!77519)))

(declare-fun res!311756 () Bool)

(declare-fun e!429842 () Bool)

(assert (=> bs!131015 (=> res!311756 e!429842)))

(assert (=> bs!131015 (= res!311756 (not (= (list!3075 (singletonSeq!467 #x005B)) (list!3075 lt!283704))))))

(assert (=> bs!131015 (=> true e!429842)))

(declare-fun b!684612 () Bool)

(assert (=> b!684612 (= e!429842 (= (toValue!11 KeywordValueInjection!75 (singletonSeq!467 #x005B)) (toValue!11 KeywordValueInjection!75 lt!283704)))))

(assert (= (and bs!131015 (not res!311756)) b!684612))

(assert (=> bs!131001 m!941377))

(assert (=> bs!131001 m!941277))

(assert (=> bs!131001 s!77519))

(assert (=> m!941377 s!77507))

(assert (=> bs!131010 s!77507))

(assert (=> bs!130999 m!941377))

(assert (=> bs!130999 s!77499))

(declare-fun bs!131016 () Bool)

(assert (= bs!131016 (and m!941375 m!941243 m!941239)))

(assert (=> bs!131016 s!77505))

(declare-fun bs!131017 () Bool)

(assert (= bs!131017 (and m!941375 m!941257 m!941249)))

(assert (=> bs!131017 s!77509))

(declare-fun bs!131018 () Bool)

(assert (= bs!131018 m!941375))

(assert (=> bs!131018 s!77507))

(declare-fun bs!131019 () Bool)

(assert (= bs!131019 (and m!941375 m!941247)))

(assert (=> bs!131019 s!77503))

(declare-fun bs!131020 () Bool)

(assert (= bs!131020 (and m!941375 m!941277)))

(assert (=> bs!131020 s!77501))

(assert (=> bs!131016 s!77513))

(assert (=> bs!131017 s!77511))

(assert (=> bs!131020 s!77519))

(assert (=> bs!131018 s!77507))

(assert (=> bs!131019 s!77517))

(assert (=> bs!130999 s!77515))

(assert (=> bs!130997 m!941375))

(assert (=> d!230813 d!230837))

(check-sat (not b!684545) (not bs!131013) (not b!684549) (not b!684590) (not b!684499) (not bs!130954) (not setNonEmpty!3288) (not b!684563) (not b!684556) (not bs!131008) (not b!684536) (not bs!130998) (not bs!130986) (not bs!130982) (not bs!130997) (not b!684483) (not bs!130991) (not bs!130990) (not b!684569) (not b!684530) (not b!684612) (not b!684528) (not bs!130955) (not b!684544) (not b!684608) (not bs!130946) (not b!684602) (not b!684601) (not setNonEmpty!3295) (not b!684607) (not b!684560) (not bs!130964) (not b!684535) (not bs!131000) (not b!684604) (not b!684540) (not bs!131012) (not b!684566) (not b!684526) (not bs!130984) (not b!684579) (not b!684611) (not d!230817) (not bs!130963) (not bs!131005) (not setNonEmpty!3296) (not b!684580) (not setNonEmpty!3289) (not b!684557) (not b!684599) (not bs!131015) (not b!684581) (not bs!130994) (not setNonEmpty!3280) (not b_next!19281) (not b!684531) (not bs!130988) (not b_lambda!25841) (not b!684534) (not d!230825) (not bs!131002) (not b!684550) (not bs!130992) (not b!684484) (not b!684554) (not b!684553) (not bs!130959) b_and!63013 (not b!684542) (not setNonEmpty!3294) (not b!684539) (not setNonEmpty!3275) (not bs!130949) (not bs!130948) (not setNonEmpty!3286) (not b!684600) (not d!230803) (not bs!130956) b_and!63007 (not d!230809) (not d!230835) (not b!684582) (not bs!130950) (not bs!130952) (not b!684610) (not b_next!19279) (not b!684606) (not b!684603) (not b!684541) (not b!684552) (not d!230805) (not b!684589) b_and!63011 (not b!684548) (not b_next!19283) (not b!684529) (not b!684592) (not bs!131011) (not b!684490) (not bs!131014) (not bs!130993) (not b!684591) (not b!684527) (not bs!131007) (not bs!130961) (not mapNonEmpty!2839) (not b!684543) (not setNonEmpty!3281) (not b!684609) (not b!684537) (not bs!130945) (not bs!130957) (not d!230815) (not mapNonEmpty!2836) (not bs!130943) (not d!230831) (not bs!130965) (not setNonEmpty!3278) (not bs!130966) (not b!684533) (not b!684574) b_and!63009 (not setNonEmpty!3287) (not d!230811) (not b_next!19277) (not b!684538) (not b!684551) (not b!684555) (not b!684605) (not b!684532) (not setNonEmpty!3279))
(check-sat (not b_next!19281) b_and!63013 b_and!63007 (not b_next!19279) (not b_next!19283) b_and!63011 b_and!63009 (not b_next!19277))
