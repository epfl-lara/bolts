; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143212 () Bool)

(assert start!143212)

(declare-fun b!1541755 () Bool)

(declare-fun b_free!40387 () Bool)

(declare-fun b_next!41091 () Bool)

(assert (=> b!1541755 (= b_free!40387 (not b_next!41091))))

(declare-fun tp!447234 () Bool)

(declare-fun b_and!107265 () Bool)

(assert (=> b!1541755 (= tp!447234 b_and!107265)))

(declare-fun b!1541750 () Bool)

(declare-fun b_free!40389 () Bool)

(declare-fun b_next!41093 () Bool)

(assert (=> b!1541750 (= b_free!40389 (not b_next!41093))))

(declare-fun tp!447224 () Bool)

(declare-fun b_and!107267 () Bool)

(assert (=> b!1541750 (= tp!447224 b_and!107267)))

(declare-fun b!1541776 () Bool)

(declare-fun b_free!40391 () Bool)

(declare-fun b_next!41095 () Bool)

(assert (=> b!1541776 (= b_free!40391 (not b_next!41095))))

(declare-fun tp!447216 () Bool)

(declare-fun b_and!107269 () Bool)

(assert (=> b!1541776 (= tp!447216 b_and!107269)))

(declare-fun b!1541770 () Bool)

(declare-fun b_free!40393 () Bool)

(declare-fun b_next!41097 () Bool)

(assert (=> b!1541770 (= b_free!40393 (not b_next!41097))))

(declare-fun tp!447231 () Bool)

(declare-fun b_and!107271 () Bool)

(assert (=> b!1541770 (= tp!447231 b_and!107271)))

(declare-fun b!1541754 () Bool)

(declare-fun b_free!40395 () Bool)

(declare-fun b_next!41099 () Bool)

(assert (=> b!1541754 (= b_free!40395 (not b_next!41099))))

(declare-fun tp!447218 () Bool)

(declare-fun b_and!107273 () Bool)

(assert (=> b!1541754 (= tp!447218 b_and!107273)))

(declare-fun b!1541778 () Bool)

(declare-fun b_free!40397 () Bool)

(declare-fun b_next!41101 () Bool)

(assert (=> b!1541778 (= b_free!40397 (not b_next!41101))))

(declare-fun tp!447233 () Bool)

(declare-fun b_and!107275 () Bool)

(assert (=> b!1541778 (= tp!447233 b_and!107275)))

(declare-fun b!1541759 () Bool)

(declare-fun b_free!40399 () Bool)

(declare-fun b_next!41103 () Bool)

(assert (=> b!1541759 (= b_free!40399 (not b_next!41103))))

(declare-fun tp!447230 () Bool)

(declare-fun b_and!107277 () Bool)

(assert (=> b!1541759 (= tp!447230 b_and!107277)))

(declare-fun b_free!40401 () Bool)

(declare-fun b_next!41105 () Bool)

(assert (=> b!1541759 (= b_free!40401 (not b_next!41105))))

(declare-fun tp!447211 () Bool)

(declare-fun b_and!107279 () Bool)

(assert (=> b!1541759 (= tp!447211 b_and!107279)))

(declare-fun b!1541743 () Bool)

(declare-fun e!987210 () Bool)

(declare-datatypes ((List!16557 0))(
  ( (Nil!16489) (Cons!16489 (h!21890 (_ BitVec 16)) (t!140763 List!16557)) )
))
(declare-datatypes ((TokenValue!2984 0))(
  ( (FloatLiteralValue!5968 (text!21333 List!16557)) (TokenValueExt!2983 (__x!10631 Int)) (Broken!14920 (value!92114 List!16557)) (Object!3051) (End!2984) (Def!2984) (Underscore!2984) (Match!2984) (Else!2984) (Error!2984) (Case!2984) (If!2984) (Extends!2984) (Abstract!2984) (Class!2984) (Val!2984) (DelimiterValue!5968 (del!3044 List!16557)) (KeywordValue!2990 (value!92115 List!16557)) (CommentValue!5968 (value!92116 List!16557)) (WhitespaceValue!5968 (value!92117 List!16557)) (IndentationValue!2984 (value!92118 List!16557)) (String!19201) (Int32!2984) (Broken!14921 (value!92119 List!16557)) (Boolean!2985) (Unit!25896) (OperatorValue!2987 (op!3044 List!16557)) (IdentifierValue!5968 (value!92120 List!16557)) (IdentifierValue!5969 (value!92121 List!16557)) (WhitespaceValue!5969 (value!92122 List!16557)) (True!5968) (False!5968) (Broken!14922 (value!92123 List!16557)) (Broken!14923 (value!92124 List!16557)) (True!5969) (RightBrace!2984) (RightBracket!2984) (Colon!2984) (Null!2984) (Comma!2984) (LeftBracket!2984) (False!5969) (LeftBrace!2984) (ImaginaryLiteralValue!2984 (text!21334 List!16557)) (StringLiteralValue!8952 (value!92125 List!16557)) (EOFValue!2984 (value!92126 List!16557)) (IdentValue!2984 (value!92127 List!16557)) (DelimiterValue!5969 (value!92128 List!16557)) (DedentValue!2984 (value!92129 List!16557)) (NewLineValue!2984 (value!92130 List!16557)) (IntegerValue!8952 (value!92131 (_ BitVec 32)) (text!21335 List!16557)) (IntegerValue!8953 (value!92132 Int) (text!21336 List!16557)) (Times!2984) (Or!2984) (Equal!2984) (Minus!2984) (Broken!14924 (value!92133 List!16557)) (And!2984) (Div!2984) (LessEqual!2984) (Mod!2984) (Concat!7203) (Not!2984) (Plus!2984) (SpaceValue!2984 (value!92134 List!16557)) (IntegerValue!8954 (value!92135 Int) (text!21337 List!16557)) (StringLiteralValue!8953 (text!21338 List!16557)) (FloatLiteralValue!5969 (text!21339 List!16557)) (BytesLiteralValue!2984 (value!92136 List!16557)) (CommentValue!5969 (value!92137 List!16557)) (StringLiteralValue!8954 (value!92138 List!16557)) (ErrorTokenValue!2984 (msg!3045 List!16557)) )
))
(declare-datatypes ((C!8616 0))(
  ( (C!8617 (val!4880 Int)) )
))
(declare-datatypes ((List!16558 0))(
  ( (Nil!16490) (Cons!16490 (h!21891 C!8616) (t!140764 List!16558)) )
))
(declare-datatypes ((IArray!11027 0))(
  ( (IArray!11028 (innerList!5571 List!16558)) )
))
(declare-datatypes ((Conc!5511 0))(
  ( (Node!5511 (left!13495 Conc!5511) (right!13825 Conc!5511) (csize!11252 Int) (cheight!5722 Int)) (Leaf!8166 (xs!8311 IArray!11027) (csize!11253 Int)) (Empty!5511) )
))
(declare-datatypes ((BalanceConc!10964 0))(
  ( (BalanceConc!10965 (c!251760 Conc!5511)) )
))
(declare-datatypes ((Regex!4219 0))(
  ( (ElementMatch!4219 (c!251761 C!8616)) (Concat!7204 (regOne!8950 Regex!4219) (regTwo!8950 Regex!4219)) (EmptyExpr!4219) (Star!4219 (reg!4548 Regex!4219)) (EmptyLang!4219) (Union!4219 (regOne!8951 Regex!4219) (regTwo!8951 Regex!4219)) )
))
(declare-datatypes ((String!19202 0))(
  ( (String!19203 (value!92139 String)) )
))
(declare-datatypes ((TokenValueInjection!5628 0))(
  ( (TokenValueInjection!5629 (toValue!4255 Int) (toChars!4114 Int)) )
))
(declare-datatypes ((Rule!5588 0))(
  ( (Rule!5589 (regex!2894 Regex!4219) (tag!3158 String!19202) (isSeparator!2894 Bool) (transformation!2894 TokenValueInjection!5628)) )
))
(declare-datatypes ((List!16559 0))(
  ( (Nil!16491) (Cons!16491 (h!21892 Rule!5588) (t!140765 List!16559)) )
))
(declare-fun rulesArg!359 () List!16559)

(declare-fun size!13321 (List!16559) Int)

(assert (=> b!1541743 (= e!987210 (< (size!13321 (t!140765 rulesArg!359)) (size!13321 rulesArg!359)))))

(declare-datatypes ((List!16560 0))(
  ( (Nil!16492) (Cons!16492 (h!21893 Regex!4219) (t!140766 List!16560)) )
))
(declare-datatypes ((Context!1474 0))(
  ( (Context!1475 (exprs!1237 List!16560)) )
))
(declare-datatypes ((tuple2!15628 0))(
  ( (tuple2!15629 (_1!9011 Context!1474) (_2!9011 C!8616)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15630 0))(
  ( (tuple2!15631 (_1!9012 tuple2!15628) (_2!9012 (InoxSet Context!1474))) )
))
(declare-datatypes ((List!16561 0))(
  ( (Nil!16493) (Cons!16493 (h!21894 tuple2!15630) (t!140767 List!16561)) )
))
(declare-datatypes ((array!5706 0))(
  ( (array!5707 (arr!2538 (Array (_ BitVec 32) List!16561)) (size!13322 (_ BitVec 32))) )
))
(declare-datatypes ((array!5708 0))(
  ( (array!5709 (arr!2539 (Array (_ BitVec 32) (_ BitVec 64))) (size!13323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3288 0))(
  ( (LongMapFixedSize!3289 (defaultEntry!2004 Int) (mask!4842 (_ BitVec 32)) (extraKeys!1891 (_ BitVec 32)) (zeroValue!1901 List!16561) (minValue!1901 List!16561) (_size!3369 (_ BitVec 32)) (_keys!1938 array!5708) (_values!1923 array!5706) (_vacant!1705 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6461 0))(
  ( (Cell!6462 (v!23303 LongMapFixedSize!3288)) )
))
(declare-datatypes ((MutLongMap!1644 0))(
  ( (LongMap!1644 (underlying!3497 Cell!6461)) (MutLongMapExt!1643 (__x!10632 Int)) )
))
(declare-datatypes ((Cell!6463 0))(
  ( (Cell!6464 (v!23304 MutLongMap!1644)) )
))
(declare-datatypes ((Hashable!1588 0))(
  ( (HashableExt!1587 (__x!10633 Int)) )
))
(declare-datatypes ((MutableMap!1588 0))(
  ( (MutableMapExt!1587 (__x!10634 Int)) (HashMap!1588 (underlying!3498 Cell!6463) (hashF!3507 Hashable!1588) (_size!3370 (_ BitVec 32)) (defaultValue!1748 Int)) )
))
(declare-datatypes ((CacheUp!956 0))(
  ( (CacheUp!957 (cache!1969 MutableMap!1588)) )
))
(declare-fun cacheUp!695 () CacheUp!956)

(declare-fun input!1460 () BalanceConc!10964)

(declare-datatypes ((tuple3!1584 0))(
  ( (tuple3!1585 (_1!9013 Regex!4219) (_2!9013 Context!1474) (_3!1197 C!8616)) )
))
(declare-datatypes ((tuple2!15632 0))(
  ( (tuple2!15633 (_1!9014 tuple3!1584) (_2!9014 (InoxSet Context!1474))) )
))
(declare-datatypes ((List!16562 0))(
  ( (Nil!16494) (Cons!16494 (h!21895 tuple2!15632) (t!140768 List!16562)) )
))
(declare-datatypes ((array!5710 0))(
  ( (array!5711 (arr!2540 (Array (_ BitVec 32) List!16562)) (size!13324 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3290 0))(
  ( (LongMapFixedSize!3291 (defaultEntry!2005 Int) (mask!4843 (_ BitVec 32)) (extraKeys!1892 (_ BitVec 32)) (zeroValue!1902 List!16562) (minValue!1902 List!16562) (_size!3371 (_ BitVec 32)) (_keys!1939 array!5708) (_values!1924 array!5710) (_vacant!1706 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6465 0))(
  ( (Cell!6466 (v!23305 LongMapFixedSize!3290)) )
))
(declare-datatypes ((MutLongMap!1645 0))(
  ( (LongMap!1645 (underlying!3499 Cell!6465)) (MutLongMapExt!1644 (__x!10635 Int)) )
))
(declare-datatypes ((Cell!6467 0))(
  ( (Cell!6468 (v!23306 MutLongMap!1645)) )
))
(declare-datatypes ((Hashable!1589 0))(
  ( (HashableExt!1588 (__x!10636 Int)) )
))
(declare-datatypes ((MutableMap!1589 0))(
  ( (MutableMapExt!1588 (__x!10637 Int)) (HashMap!1589 (underlying!3500 Cell!6467) (hashF!3508 Hashable!1589) (_size!3372 (_ BitVec 32)) (defaultValue!1749 Int)) )
))
(declare-datatypes ((CacheDown!964 0))(
  ( (CacheDown!965 (cache!1970 MutableMap!1589)) )
))
(declare-fun cacheDown!708 () CacheDown!964)

(declare-datatypes ((Hashable!1590 0))(
  ( (HashableExt!1589 (__x!10638 Int)) )
))
(declare-datatypes ((tuple3!1586 0))(
  ( (tuple3!1587 (_1!9015 (InoxSet Context!1474)) (_2!9015 Int) (_3!1198 Int)) )
))
(declare-datatypes ((tuple2!15634 0))(
  ( (tuple2!15635 (_1!9016 tuple3!1586) (_2!9016 Int)) )
))
(declare-datatypes ((List!16563 0))(
  ( (Nil!16495) (Cons!16495 (h!21896 tuple2!15634) (t!140769 List!16563)) )
))
(declare-datatypes ((array!5712 0))(
  ( (array!5713 (arr!2541 (Array (_ BitVec 32) List!16563)) (size!13325 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3292 0))(
  ( (LongMapFixedSize!3293 (defaultEntry!2006 Int) (mask!4844 (_ BitVec 32)) (extraKeys!1893 (_ BitVec 32)) (zeroValue!1903 List!16563) (minValue!1903 List!16563) (_size!3373 (_ BitVec 32)) (_keys!1940 array!5708) (_values!1925 array!5712) (_vacant!1707 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6469 0))(
  ( (Cell!6470 (v!23307 LongMapFixedSize!3292)) )
))
(declare-datatypes ((Token!5422 0))(
  ( (Token!5423 (value!92140 TokenValue!2984) (rule!4697 Rule!5588) (size!13326 Int) (originalCharacters!3742 List!16558)) )
))
(declare-datatypes ((tuple2!15636 0))(
  ( (tuple2!15637 (_1!9017 Token!5422) (_2!9017 BalanceConc!10964)) )
))
(declare-datatypes ((Option!2986 0))(
  ( (None!2985) (Some!2985 (v!23308 tuple2!15636)) )
))
(declare-datatypes ((MutLongMap!1646 0))(
  ( (LongMap!1646 (underlying!3501 Cell!6469)) (MutLongMapExt!1645 (__x!10639 Int)) )
))
(declare-datatypes ((Cell!6471 0))(
  ( (Cell!6472 (v!23309 MutLongMap!1646)) )
))
(declare-datatypes ((MutableMap!1590 0))(
  ( (MutableMapExt!1589 (__x!10640 Int)) (HashMap!1590 (underlying!3502 Cell!6471) (hashF!3509 Hashable!1590) (_size!3374 (_ BitVec 32)) (defaultValue!1750 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!384 0))(
  ( (CacheFurthestNullable!385 (cache!1971 MutableMap!1590) (totalInput!2388 BalanceConc!10964)) )
))
(declare-datatypes ((tuple4!810 0))(
  ( (tuple4!811 (_1!9018 Option!2986) (_2!9018 CacheUp!956) (_3!1199 CacheDown!964) (_4!405 CacheFurthestNullable!384)) )
))
(declare-fun lt!534581 () tuple4!810)

(declare-datatypes ((LexerInterface!2544 0))(
  ( (LexerInterfaceExt!2541 (__x!10641 Int)) (Lexer!2542) )
))
(declare-fun thiss!15733 () LexerInterface!2544)

(declare-fun totalInput!496 () BalanceConc!10964)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!384)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!37 (LexerInterface!2544 Rule!5588 BalanceConc!10964 BalanceConc!10964 CacheUp!956 CacheDown!964 CacheFurthestNullable!384) tuple4!810)

(assert (=> b!1541743 (= lt!534581 (maxPrefixOneRuleZipperSequenceV3Mem!37 thiss!15733 (h!21892 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1541744 () Bool)

(declare-fun res!690345 () Bool)

(declare-fun e!987189 () Bool)

(assert (=> b!1541744 (=> (not res!690345) (not e!987189))))

(declare-fun valid!1328 (CacheDown!964) Bool)

(assert (=> b!1541744 (= res!690345 (valid!1328 cacheDown!708))))

(declare-fun b!1541745 () Bool)

(declare-fun e!987193 () Bool)

(declare-fun e!987200 () Bool)

(assert (=> b!1541745 (= e!987193 e!987200)))

(declare-fun b!1541746 () Bool)

(declare-fun e!987218 () Bool)

(declare-fun e!987215 () Bool)

(assert (=> b!1541746 (= e!987218 e!987215)))

(declare-fun b!1541747 () Bool)

(declare-fun e!987217 () Bool)

(declare-fun e!987213 () Bool)

(assert (=> b!1541747 (= e!987217 e!987213)))

(declare-fun b!1541748 () Bool)

(declare-fun e!987195 () Bool)

(declare-fun tp!447225 () Bool)

(declare-fun inv!21752 (Conc!5511) Bool)

(assert (=> b!1541748 (= e!987195 (and (inv!21752 (c!251760 totalInput!496)) tp!447225))))

(declare-fun e!987198 () Bool)

(declare-fun tp!447228 () Bool)

(declare-fun b!1541749 () Bool)

(declare-fun e!987222 () Bool)

(declare-fun inv!21748 (String!19202) Bool)

(declare-fun inv!21753 (TokenValueInjection!5628) Bool)

(assert (=> b!1541749 (= e!987198 (and tp!447228 (inv!21748 (tag!3158 (h!21892 rulesArg!359))) (inv!21753 (transformation!2894 (h!21892 rulesArg!359))) e!987222))))

(declare-fun tp!447209 () Bool)

(declare-fun e!987207 () Bool)

(declare-fun e!987209 () Bool)

(declare-fun tp!447232 () Bool)

(declare-fun array_inv!1824 (array!5708) Bool)

(declare-fun array_inv!1825 (array!5712) Bool)

(assert (=> b!1541750 (= e!987207 (and tp!447224 tp!447232 tp!447209 (array_inv!1824 (_keys!1940 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) (array_inv!1825 (_values!1925 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) e!987209))))

(declare-fun b!1541751 () Bool)

(declare-fun e!987219 () Bool)

(declare-fun lt!534584 () MutLongMap!1644)

(get-info :version)

(assert (=> b!1541751 (= e!987219 (and e!987217 ((_ is LongMap!1644) lt!534584)))))

(assert (=> b!1541751 (= lt!534584 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))

(declare-fun b!1541752 () Bool)

(declare-fun res!690338 () Bool)

(assert (=> b!1541752 (=> (not res!690338) (not e!987189))))

(assert (=> b!1541752 (= res!690338 (= (totalInput!2388 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1541753 () Bool)

(declare-fun e!987208 () Bool)

(assert (=> b!1541753 (= e!987208 e!987189)))

(declare-fun res!690340 () Bool)

(assert (=> b!1541753 (=> (not res!690340) (not e!987189))))

(declare-fun lt!534585 () List!16558)

(declare-fun isSuffix!339 (List!16558 List!16558) Bool)

(declare-fun list!6438 (BalanceConc!10964) List!16558)

(assert (=> b!1541753 (= res!690340 (isSuffix!339 lt!534585 (list!6438 totalInput!496)))))

(assert (=> b!1541753 (= lt!534585 (list!6438 input!1460))))

(declare-fun e!987216 () Bool)

(declare-fun e!987191 () Bool)

(assert (=> b!1541754 (= e!987216 (and e!987191 tp!447218))))

(declare-fun mapNonEmpty!7725 () Bool)

(declare-fun mapRes!7727 () Bool)

(declare-fun tp!447217 () Bool)

(declare-fun tp!447212 () Bool)

(assert (=> mapNonEmpty!7725 (= mapRes!7727 (and tp!447217 tp!447212))))

(declare-fun mapValue!7726 () List!16562)

(declare-fun mapKey!7727 () (_ BitVec 32))

(declare-fun mapRest!7726 () (Array (_ BitVec 32) List!16562))

(assert (=> mapNonEmpty!7725 (= (arr!2540 (_values!1924 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) (store mapRest!7726 mapKey!7727 mapValue!7726))))

(declare-fun e!987212 () Bool)

(assert (=> b!1541755 (= e!987212 (and e!987219 tp!447234))))

(declare-fun b!1541756 () Bool)

(assert (=> b!1541756 (= e!987189 (not e!987210))))

(declare-fun res!690339 () Bool)

(assert (=> b!1541756 (=> res!690339 e!987210)))

(assert (=> b!1541756 (= res!690339 (or (and ((_ is Cons!16491) rulesArg!359) ((_ is Nil!16491) (t!140765 rulesArg!359))) (not ((_ is Cons!16491) rulesArg!359))))))

(declare-fun isPrefix!1251 (List!16558 List!16558) Bool)

(assert (=> b!1541756 (isPrefix!1251 lt!534585 lt!534585)))

(declare-datatypes ((Unit!25897 0))(
  ( (Unit!25898) )
))
(declare-fun lt!534583 () Unit!25897)

(declare-fun lemmaIsPrefixRefl!881 (List!16558 List!16558) Unit!25897)

(assert (=> b!1541756 (= lt!534583 (lemmaIsPrefixRefl!881 lt!534585 lt!534585))))

(declare-fun b!1541757 () Bool)

(declare-fun e!987211 () Bool)

(assert (=> b!1541757 (= e!987213 e!987211)))

(declare-fun b!1541758 () Bool)

(assert (=> b!1541758 (= e!987215 e!987207)))

(assert (=> b!1541759 (= e!987222 (and tp!447230 tp!447211))))

(declare-fun b!1541760 () Bool)

(declare-fun e!987202 () Bool)

(declare-fun tp!447214 () Bool)

(assert (=> b!1541760 (= e!987202 (and (inv!21752 (c!251760 input!1460)) tp!447214))))

(declare-fun b!1541761 () Bool)

(declare-fun e!987220 () Bool)

(declare-fun lt!534580 () MutLongMap!1645)

(assert (=> b!1541761 (= e!987191 (and e!987220 ((_ is LongMap!1645) lt!534580)))))

(assert (=> b!1541761 (= lt!534580 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))

(declare-fun b!1541762 () Bool)

(declare-fun e!987204 () Bool)

(assert (=> b!1541762 (= e!987204 e!987216)))

(declare-fun b!1541763 () Bool)

(declare-fun e!987221 () Bool)

(declare-fun tp!447223 () Bool)

(declare-fun mapRes!7725 () Bool)

(assert (=> b!1541763 (= e!987221 (and tp!447223 mapRes!7725))))

(declare-fun condMapEmpty!7725 () Bool)

(declare-fun mapDefault!7727 () List!16561)

(assert (=> b!1541763 (= condMapEmpty!7725 (= (arr!2538 (_values!1923 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16561)) mapDefault!7727)))))

(declare-fun b!1541764 () Bool)

(declare-fun e!987194 () Bool)

(assert (=> b!1541764 (= e!987194 e!987212)))

(declare-fun e!987205 () Bool)

(declare-fun b!1541765 () Bool)

(declare-fun e!987214 () Bool)

(declare-fun e!987201 () Bool)

(declare-fun inv!21754 (BalanceConc!10964) Bool)

(assert (=> b!1541765 (= e!987214 (and e!987201 (inv!21754 (totalInput!2388 cacheFurthestNullable!81)) e!987205))))

(declare-fun mapNonEmpty!7726 () Bool)

(declare-fun tp!447226 () Bool)

(declare-fun tp!447210 () Bool)

(assert (=> mapNonEmpty!7726 (= mapRes!7725 (and tp!447226 tp!447210))))

(declare-fun mapKey!7725 () (_ BitVec 32))

(declare-fun mapRest!7727 () (Array (_ BitVec 32) List!16561))

(declare-fun mapValue!7727 () List!16561)

(assert (=> mapNonEmpty!7726 (= (arr!2538 (_values!1923 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) (store mapRest!7727 mapKey!7725 mapValue!7727))))

(declare-fun b!1541766 () Bool)

(declare-fun res!690342 () Bool)

(assert (=> b!1541766 (=> (not res!690342) (not e!987208))))

(declare-fun isEmpty!10035 (List!16559) Bool)

(assert (=> b!1541766 (= res!690342 (not (isEmpty!10035 rulesArg!359)))))

(declare-fun b!1541767 () Bool)

(declare-fun res!690346 () Bool)

(assert (=> b!1541767 (=> (not res!690346) (not e!987189))))

(declare-fun valid!1329 (CacheUp!956) Bool)

(assert (=> b!1541767 (= res!690346 (valid!1329 cacheUp!695))))

(declare-fun mapNonEmpty!7727 () Bool)

(declare-fun mapRes!7726 () Bool)

(declare-fun tp!447219 () Bool)

(declare-fun tp!447235 () Bool)

(assert (=> mapNonEmpty!7727 (= mapRes!7726 (and tp!447219 tp!447235))))

(declare-fun mapValue!7725 () List!16563)

(declare-fun mapKey!7726 () (_ BitVec 32))

(declare-fun mapRest!7725 () (Array (_ BitVec 32) List!16563))

(assert (=> mapNonEmpty!7727 (= (arr!2541 (_values!1925 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) (store mapRest!7725 mapKey!7726 mapValue!7725))))

(declare-fun b!1541768 () Bool)

(declare-fun e!987203 () Bool)

(declare-fun lt!534582 () MutLongMap!1646)

(assert (=> b!1541768 (= e!987203 (and e!987218 ((_ is LongMap!1646) lt!534582)))))

(assert (=> b!1541768 (= lt!534582 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))

(declare-fun b!1541769 () Bool)

(declare-fun e!987199 () Bool)

(declare-fun tp!447222 () Bool)

(assert (=> b!1541769 (= e!987199 (and e!987198 tp!447222))))

(assert (=> b!1541770 (= e!987201 (and e!987203 tp!447231))))

(declare-fun b!1541771 () Bool)

(declare-fun res!690341 () Bool)

(assert (=> b!1541771 (=> (not res!690341) (not e!987208))))

(declare-fun rulesValidInductive!891 (LexerInterface!2544 List!16559) Bool)

(assert (=> b!1541771 (= res!690341 (rulesValidInductive!891 thiss!15733 rulesArg!359))))

(declare-fun mapIsEmpty!7725 () Bool)

(assert (=> mapIsEmpty!7725 mapRes!7727))

(declare-fun res!690344 () Bool)

(assert (=> start!143212 (=> (not res!690344) (not e!987208))))

(assert (=> start!143212 (= res!690344 ((_ is Lexer!2542) thiss!15733))))

(assert (=> start!143212 e!987208))

(declare-fun inv!21755 (CacheUp!956) Bool)

(assert (=> start!143212 (and (inv!21755 cacheUp!695) e!987194)))

(assert (=> start!143212 (and (inv!21754 input!1460) e!987202)))

(declare-fun inv!21756 (CacheDown!964) Bool)

(assert (=> start!143212 (and (inv!21756 cacheDown!708) e!987204)))

(assert (=> start!143212 true))

(assert (=> start!143212 (and (inv!21754 totalInput!496) e!987195)))

(assert (=> start!143212 e!987199))

(declare-fun inv!21757 (CacheFurthestNullable!384) Bool)

(assert (=> start!143212 (and (inv!21757 cacheFurthestNullable!81) e!987214)))

(declare-fun mapIsEmpty!7726 () Bool)

(assert (=> mapIsEmpty!7726 mapRes!7726))

(declare-fun b!1541772 () Bool)

(assert (=> b!1541772 (= e!987220 e!987193)))

(declare-fun mapIsEmpty!7727 () Bool)

(assert (=> mapIsEmpty!7727 mapRes!7725))

(declare-fun b!1541773 () Bool)

(declare-fun e!987192 () Bool)

(declare-fun tp!447220 () Bool)

(assert (=> b!1541773 (= e!987192 (and tp!447220 mapRes!7727))))

(declare-fun condMapEmpty!7727 () Bool)

(declare-fun mapDefault!7726 () List!16562)

(assert (=> b!1541773 (= condMapEmpty!7727 (= (arr!2540 (_values!1924 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16562)) mapDefault!7726)))))

(declare-fun b!1541774 () Bool)

(declare-fun res!690343 () Bool)

(assert (=> b!1541774 (=> (not res!690343) (not e!987189))))

(declare-fun valid!1330 (CacheFurthestNullable!384) Bool)

(assert (=> b!1541774 (= res!690343 (valid!1330 cacheFurthestNullable!81))))

(declare-fun b!1541775 () Bool)

(declare-fun tp!447227 () Bool)

(assert (=> b!1541775 (= e!987209 (and tp!447227 mapRes!7726))))

(declare-fun condMapEmpty!7726 () Bool)

(declare-fun mapDefault!7725 () List!16563)

(assert (=> b!1541775 (= condMapEmpty!7726 (= (arr!2541 (_values!1925 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16563)) mapDefault!7725)))))

(declare-fun tp!447215 () Bool)

(declare-fun tp!447236 () Bool)

(declare-fun array_inv!1826 (array!5706) Bool)

(assert (=> b!1541776 (= e!987211 (and tp!447216 tp!447215 tp!447236 (array_inv!1824 (_keys!1938 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) (array_inv!1826 (_values!1923 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) e!987221))))

(declare-fun b!1541777 () Bool)

(declare-fun tp!447221 () Bool)

(assert (=> b!1541777 (= e!987205 (and (inv!21752 (c!251760 (totalInput!2388 cacheFurthestNullable!81))) tp!447221))))

(declare-fun tp!447213 () Bool)

(declare-fun tp!447229 () Bool)

(declare-fun array_inv!1827 (array!5710) Bool)

(assert (=> b!1541778 (= e!987200 (and tp!447233 tp!447229 tp!447213 (array_inv!1824 (_keys!1939 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) (array_inv!1827 (_values!1924 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) e!987192))))

(assert (= (and start!143212 res!690344) b!1541771))

(assert (= (and b!1541771 res!690341) b!1541766))

(assert (= (and b!1541766 res!690342) b!1541753))

(assert (= (and b!1541753 res!690340) b!1541767))

(assert (= (and b!1541767 res!690346) b!1541744))

(assert (= (and b!1541744 res!690345) b!1541774))

(assert (= (and b!1541774 res!690343) b!1541752))

(assert (= (and b!1541752 res!690338) b!1541756))

(assert (= (and b!1541756 (not res!690339)) b!1541743))

(assert (= (and b!1541763 condMapEmpty!7725) mapIsEmpty!7727))

(assert (= (and b!1541763 (not condMapEmpty!7725)) mapNonEmpty!7726))

(assert (= b!1541776 b!1541763))

(assert (= b!1541757 b!1541776))

(assert (= b!1541747 b!1541757))

(assert (= (and b!1541751 ((_ is LongMap!1644) (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))) b!1541747))

(assert (= b!1541755 b!1541751))

(assert (= (and b!1541764 ((_ is HashMap!1588) (cache!1969 cacheUp!695))) b!1541755))

(assert (= start!143212 b!1541764))

(assert (= start!143212 b!1541760))

(assert (= (and b!1541773 condMapEmpty!7727) mapIsEmpty!7725))

(assert (= (and b!1541773 (not condMapEmpty!7727)) mapNonEmpty!7725))

(assert (= b!1541778 b!1541773))

(assert (= b!1541745 b!1541778))

(assert (= b!1541772 b!1541745))

(assert (= (and b!1541761 ((_ is LongMap!1645) (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))) b!1541772))

(assert (= b!1541754 b!1541761))

(assert (= (and b!1541762 ((_ is HashMap!1589) (cache!1970 cacheDown!708))) b!1541754))

(assert (= start!143212 b!1541762))

(assert (= start!143212 b!1541748))

(assert (= b!1541749 b!1541759))

(assert (= b!1541769 b!1541749))

(assert (= (and start!143212 ((_ is Cons!16491) rulesArg!359)) b!1541769))

(assert (= (and b!1541775 condMapEmpty!7726) mapIsEmpty!7726))

(assert (= (and b!1541775 (not condMapEmpty!7726)) mapNonEmpty!7727))

(assert (= b!1541750 b!1541775))

(assert (= b!1541758 b!1541750))

(assert (= b!1541746 b!1541758))

(assert (= (and b!1541768 ((_ is LongMap!1646) (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))) b!1541746))

(assert (= b!1541770 b!1541768))

(assert (= (and b!1541765 ((_ is HashMap!1590) (cache!1971 cacheFurthestNullable!81))) b!1541770))

(assert (= b!1541765 b!1541777))

(assert (= start!143212 b!1541765))

(declare-fun m!1815270 () Bool)

(assert (=> b!1541766 m!1815270))

(declare-fun m!1815272 () Bool)

(assert (=> mapNonEmpty!7726 m!1815272))

(declare-fun m!1815274 () Bool)

(assert (=> b!1541749 m!1815274))

(declare-fun m!1815276 () Bool)

(assert (=> b!1541749 m!1815276))

(declare-fun m!1815278 () Bool)

(assert (=> b!1541756 m!1815278))

(declare-fun m!1815280 () Bool)

(assert (=> b!1541756 m!1815280))

(declare-fun m!1815282 () Bool)

(assert (=> mapNonEmpty!7725 m!1815282))

(declare-fun m!1815284 () Bool)

(assert (=> b!1541776 m!1815284))

(declare-fun m!1815286 () Bool)

(assert (=> b!1541776 m!1815286))

(declare-fun m!1815288 () Bool)

(assert (=> b!1541760 m!1815288))

(declare-fun m!1815290 () Bool)

(assert (=> b!1541777 m!1815290))

(declare-fun m!1815292 () Bool)

(assert (=> b!1541743 m!1815292))

(declare-fun m!1815294 () Bool)

(assert (=> b!1541743 m!1815294))

(declare-fun m!1815296 () Bool)

(assert (=> b!1541743 m!1815296))

(declare-fun m!1815298 () Bool)

(assert (=> b!1541753 m!1815298))

(assert (=> b!1541753 m!1815298))

(declare-fun m!1815300 () Bool)

(assert (=> b!1541753 m!1815300))

(declare-fun m!1815302 () Bool)

(assert (=> b!1541753 m!1815302))

(declare-fun m!1815304 () Bool)

(assert (=> b!1541767 m!1815304))

(declare-fun m!1815306 () Bool)

(assert (=> start!143212 m!1815306))

(declare-fun m!1815308 () Bool)

(assert (=> start!143212 m!1815308))

(declare-fun m!1815310 () Bool)

(assert (=> start!143212 m!1815310))

(declare-fun m!1815312 () Bool)

(assert (=> start!143212 m!1815312))

(declare-fun m!1815314 () Bool)

(assert (=> start!143212 m!1815314))

(declare-fun m!1815316 () Bool)

(assert (=> mapNonEmpty!7727 m!1815316))

(declare-fun m!1815318 () Bool)

(assert (=> b!1541750 m!1815318))

(declare-fun m!1815320 () Bool)

(assert (=> b!1541750 m!1815320))

(declare-fun m!1815322 () Bool)

(assert (=> b!1541744 m!1815322))

(declare-fun m!1815324 () Bool)

(assert (=> b!1541774 m!1815324))

(declare-fun m!1815326 () Bool)

(assert (=> b!1541748 m!1815326))

(declare-fun m!1815328 () Bool)

(assert (=> b!1541778 m!1815328))

(declare-fun m!1815330 () Bool)

(assert (=> b!1541778 m!1815330))

(declare-fun m!1815332 () Bool)

(assert (=> b!1541765 m!1815332))

(declare-fun m!1815334 () Bool)

(assert (=> b!1541771 m!1815334))

(check-sat (not b_next!41091) (not b_next!41099) (not b!1541774) (not b_next!41093) (not b!1541753) (not b!1541748) (not b!1541773) b_and!107269 b_and!107271 (not b!1541776) (not b_next!41097) (not b!1541766) (not b!1541771) (not b_next!41101) (not b!1541767) (not b!1541763) (not b_next!41105) (not b!1541778) b_and!107273 (not b!1541777) (not b!1541760) (not b!1541769) (not b_next!41095) (not mapNonEmpty!7726) (not b!1541743) (not b!1541749) b_and!107277 (not b!1541756) b_and!107265 (not b!1541750) (not mapNonEmpty!7727) (not mapNonEmpty!7725) (not b_next!41103) (not start!143212) b_and!107279 b_and!107275 (not b!1541744) b_and!107267 (not b!1541765) (not b!1541775))
(check-sat (not b_next!41101) (not b_next!41105) b_and!107273 (not b_next!41091) (not b_next!41099) (not b_next!41095) (not b_next!41093) b_and!107277 b_and!107265 b_and!107269 (not b_next!41103) b_and!107271 (not b_next!41097) b_and!107267 b_and!107275 b_and!107279)
(get-model)

(declare-fun d!458697 () Bool)

(assert (=> d!458697 (= (array_inv!1824 (_keys!1939 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) (bvsge (size!13323 (_keys!1939 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541778 d!458697))

(declare-fun d!458699 () Bool)

(assert (=> d!458699 (= (array_inv!1827 (_values!1924 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) (bvsge (size!13324 (_values!1924 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541778 d!458699))

(declare-fun d!458701 () Bool)

(declare-fun c!251764 () Bool)

(assert (=> d!458701 (= c!251764 ((_ is Node!5511) (c!251760 input!1460)))))

(declare-fun e!987227 () Bool)

(assert (=> d!458701 (= (inv!21752 (c!251760 input!1460)) e!987227)))

(declare-fun b!1541785 () Bool)

(declare-fun inv!21758 (Conc!5511) Bool)

(assert (=> b!1541785 (= e!987227 (inv!21758 (c!251760 input!1460)))))

(declare-fun b!1541786 () Bool)

(declare-fun e!987228 () Bool)

(assert (=> b!1541786 (= e!987227 e!987228)))

(declare-fun res!690353 () Bool)

(assert (=> b!1541786 (= res!690353 (not ((_ is Leaf!8166) (c!251760 input!1460))))))

(assert (=> b!1541786 (=> res!690353 e!987228)))

(declare-fun b!1541787 () Bool)

(declare-fun inv!21759 (Conc!5511) Bool)

(assert (=> b!1541787 (= e!987228 (inv!21759 (c!251760 input!1460)))))

(assert (= (and d!458701 c!251764) b!1541785))

(assert (= (and d!458701 (not c!251764)) b!1541786))

(assert (= (and b!1541786 (not res!690353)) b!1541787))

(declare-fun m!1815336 () Bool)

(assert (=> b!1541785 m!1815336))

(declare-fun m!1815338 () Bool)

(assert (=> b!1541787 m!1815338))

(assert (=> b!1541760 d!458701))

(declare-fun d!458703 () Bool)

(assert (=> d!458703 (= (array_inv!1824 (_keys!1940 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) (bvsge (size!13323 (_keys!1940 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541750 d!458703))

(declare-fun d!458705 () Bool)

(assert (=> d!458705 (= (array_inv!1825 (_values!1925 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) (bvsge (size!13325 (_values!1925 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541750 d!458705))

(declare-fun d!458707 () Bool)

(declare-fun c!251765 () Bool)

(assert (=> d!458707 (= c!251765 ((_ is Node!5511) (c!251760 (totalInput!2388 cacheFurthestNullable!81))))))

(declare-fun e!987229 () Bool)

(assert (=> d!458707 (= (inv!21752 (c!251760 (totalInput!2388 cacheFurthestNullable!81))) e!987229)))

(declare-fun b!1541788 () Bool)

(assert (=> b!1541788 (= e!987229 (inv!21758 (c!251760 (totalInput!2388 cacheFurthestNullable!81))))))

(declare-fun b!1541789 () Bool)

(declare-fun e!987230 () Bool)

(assert (=> b!1541789 (= e!987229 e!987230)))

(declare-fun res!690354 () Bool)

(assert (=> b!1541789 (= res!690354 (not ((_ is Leaf!8166) (c!251760 (totalInput!2388 cacheFurthestNullable!81)))))))

(assert (=> b!1541789 (=> res!690354 e!987230)))

(declare-fun b!1541790 () Bool)

(assert (=> b!1541790 (= e!987230 (inv!21759 (c!251760 (totalInput!2388 cacheFurthestNullable!81))))))

(assert (= (and d!458707 c!251765) b!1541788))

(assert (= (and d!458707 (not c!251765)) b!1541789))

(assert (= (and b!1541789 (not res!690354)) b!1541790))

(declare-fun m!1815340 () Bool)

(assert (=> b!1541788 m!1815340))

(declare-fun m!1815342 () Bool)

(assert (=> b!1541790 m!1815342))

(assert (=> b!1541777 d!458707))

(declare-fun d!458709 () Bool)

(assert (=> d!458709 (= (inv!21748 (tag!3158 (h!21892 rulesArg!359))) (= (mod (str.len (value!92139 (tag!3158 (h!21892 rulesArg!359)))) 2) 0))))

(assert (=> b!1541749 d!458709))

(declare-fun d!458711 () Bool)

(declare-fun res!690357 () Bool)

(declare-fun e!987233 () Bool)

(assert (=> d!458711 (=> (not res!690357) (not e!987233))))

(declare-fun semiInverseModEq!1088 (Int Int) Bool)

(assert (=> d!458711 (= res!690357 (semiInverseModEq!1088 (toChars!4114 (transformation!2894 (h!21892 rulesArg!359))) (toValue!4255 (transformation!2894 (h!21892 rulesArg!359)))))))

(assert (=> d!458711 (= (inv!21753 (transformation!2894 (h!21892 rulesArg!359))) e!987233)))

(declare-fun b!1541793 () Bool)

(declare-fun equivClasses!1047 (Int Int) Bool)

(assert (=> b!1541793 (= e!987233 (equivClasses!1047 (toChars!4114 (transformation!2894 (h!21892 rulesArg!359))) (toValue!4255 (transformation!2894 (h!21892 rulesArg!359)))))))

(assert (= (and d!458711 res!690357) b!1541793))

(declare-fun m!1815344 () Bool)

(assert (=> d!458711 m!1815344))

(declare-fun m!1815346 () Bool)

(assert (=> b!1541793 m!1815346))

(assert (=> b!1541749 d!458711))

(declare-fun d!458713 () Bool)

(assert (=> d!458713 (= (array_inv!1824 (_keys!1938 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) (bvsge (size!13323 (_keys!1938 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541776 d!458713))

(declare-fun d!458715 () Bool)

(assert (=> d!458715 (= (array_inv!1826 (_values!1923 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) (bvsge (size!13322 (_values!1923 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541776 d!458715))

(declare-fun d!458717 () Bool)

(declare-fun validCacheMapUp!152 (MutableMap!1588) Bool)

(assert (=> d!458717 (= (valid!1329 cacheUp!695) (validCacheMapUp!152 (cache!1969 cacheUp!695)))))

(declare-fun bs!382846 () Bool)

(assert (= bs!382846 d!458717))

(declare-fun m!1815348 () Bool)

(assert (=> bs!382846 m!1815348))

(assert (=> b!1541767 d!458717))

(declare-fun d!458719 () Bool)

(declare-fun c!251766 () Bool)

(assert (=> d!458719 (= c!251766 ((_ is Node!5511) (c!251760 totalInput!496)))))

(declare-fun e!987234 () Bool)

(assert (=> d!458719 (= (inv!21752 (c!251760 totalInput!496)) e!987234)))

(declare-fun b!1541794 () Bool)

(assert (=> b!1541794 (= e!987234 (inv!21758 (c!251760 totalInput!496)))))

(declare-fun b!1541795 () Bool)

(declare-fun e!987235 () Bool)

(assert (=> b!1541795 (= e!987234 e!987235)))

(declare-fun res!690358 () Bool)

(assert (=> b!1541795 (= res!690358 (not ((_ is Leaf!8166) (c!251760 totalInput!496))))))

(assert (=> b!1541795 (=> res!690358 e!987235)))

(declare-fun b!1541796 () Bool)

(assert (=> b!1541796 (= e!987235 (inv!21759 (c!251760 totalInput!496)))))

(assert (= (and d!458719 c!251766) b!1541794))

(assert (= (and d!458719 (not c!251766)) b!1541795))

(assert (= (and b!1541795 (not res!690358)) b!1541796))

(declare-fun m!1815350 () Bool)

(assert (=> b!1541794 m!1815350))

(declare-fun m!1815352 () Bool)

(assert (=> b!1541796 m!1815352))

(assert (=> b!1541748 d!458719))

(declare-fun d!458721 () Bool)

(declare-fun validCacheMapFurthestNullable!65 (MutableMap!1590 BalanceConc!10964) Bool)

(assert (=> d!458721 (= (valid!1330 cacheFurthestNullable!81) (validCacheMapFurthestNullable!65 (cache!1971 cacheFurthestNullable!81) (totalInput!2388 cacheFurthestNullable!81)))))

(declare-fun bs!382847 () Bool)

(assert (= bs!382847 d!458721))

(declare-fun m!1815354 () Bool)

(assert (=> bs!382847 m!1815354))

(assert (=> b!1541774 d!458721))

(declare-fun b!1541808 () Bool)

(declare-fun e!987244 () Bool)

(declare-fun size!13327 (List!16558) Int)

(assert (=> b!1541808 (= e!987244 (>= (size!13327 lt!534585) (size!13327 lt!534585)))))

(declare-fun b!1541805 () Bool)

(declare-fun e!987242 () Bool)

(declare-fun e!987243 () Bool)

(assert (=> b!1541805 (= e!987242 e!987243)))

(declare-fun res!690367 () Bool)

(assert (=> b!1541805 (=> (not res!690367) (not e!987243))))

(assert (=> b!1541805 (= res!690367 (not ((_ is Nil!16490) lt!534585)))))

(declare-fun d!458723 () Bool)

(assert (=> d!458723 e!987244))

(declare-fun res!690368 () Bool)

(assert (=> d!458723 (=> res!690368 e!987244)))

(declare-fun lt!534588 () Bool)

(assert (=> d!458723 (= res!690368 (not lt!534588))))

(assert (=> d!458723 (= lt!534588 e!987242)))

(declare-fun res!690369 () Bool)

(assert (=> d!458723 (=> res!690369 e!987242)))

(assert (=> d!458723 (= res!690369 ((_ is Nil!16490) lt!534585))))

(assert (=> d!458723 (= (isPrefix!1251 lt!534585 lt!534585) lt!534588)))

(declare-fun b!1541806 () Bool)

(declare-fun res!690370 () Bool)

(assert (=> b!1541806 (=> (not res!690370) (not e!987243))))

(declare-fun head!3105 (List!16558) C!8616)

(assert (=> b!1541806 (= res!690370 (= (head!3105 lt!534585) (head!3105 lt!534585)))))

(declare-fun b!1541807 () Bool)

(declare-fun tail!2200 (List!16558) List!16558)

(assert (=> b!1541807 (= e!987243 (isPrefix!1251 (tail!2200 lt!534585) (tail!2200 lt!534585)))))

(assert (= (and d!458723 (not res!690369)) b!1541805))

(assert (= (and b!1541805 res!690367) b!1541806))

(assert (= (and b!1541806 res!690370) b!1541807))

(assert (= (and d!458723 (not res!690368)) b!1541808))

(declare-fun m!1815356 () Bool)

(assert (=> b!1541808 m!1815356))

(assert (=> b!1541808 m!1815356))

(declare-fun m!1815358 () Bool)

(assert (=> b!1541806 m!1815358))

(assert (=> b!1541806 m!1815358))

(declare-fun m!1815360 () Bool)

(assert (=> b!1541807 m!1815360))

(assert (=> b!1541807 m!1815360))

(assert (=> b!1541807 m!1815360))

(assert (=> b!1541807 m!1815360))

(declare-fun m!1815362 () Bool)

(assert (=> b!1541807 m!1815362))

(assert (=> b!1541756 d!458723))

(declare-fun d!458725 () Bool)

(assert (=> d!458725 (isPrefix!1251 lt!534585 lt!534585)))

(declare-fun lt!534591 () Unit!25897)

(declare-fun choose!9228 (List!16558 List!16558) Unit!25897)

(assert (=> d!458725 (= lt!534591 (choose!9228 lt!534585 lt!534585))))

(assert (=> d!458725 (= (lemmaIsPrefixRefl!881 lt!534585 lt!534585) lt!534591)))

(declare-fun bs!382848 () Bool)

(assert (= bs!382848 d!458725))

(assert (=> bs!382848 m!1815278))

(declare-fun m!1815364 () Bool)

(assert (=> bs!382848 m!1815364))

(assert (=> b!1541756 d!458725))

(declare-fun d!458727 () Bool)

(assert (=> d!458727 (= (isEmpty!10035 rulesArg!359) ((_ is Nil!16491) rulesArg!359))))

(assert (=> b!1541766 d!458727))

(declare-fun d!458729 () Bool)

(declare-fun res!690373 () Bool)

(declare-fun e!987247 () Bool)

(assert (=> d!458729 (=> (not res!690373) (not e!987247))))

(assert (=> d!458729 (= res!690373 ((_ is HashMap!1589) (cache!1970 cacheDown!708)))))

(assert (=> d!458729 (= (inv!21756 cacheDown!708) e!987247)))

(declare-fun b!1541811 () Bool)

(declare-fun validCacheMapDown!152 (MutableMap!1589) Bool)

(assert (=> b!1541811 (= e!987247 (validCacheMapDown!152 (cache!1970 cacheDown!708)))))

(assert (= (and d!458729 res!690373) b!1541811))

(declare-fun m!1815366 () Bool)

(assert (=> b!1541811 m!1815366))

(assert (=> start!143212 d!458729))

(declare-fun d!458731 () Bool)

(declare-fun isBalanced!1634 (Conc!5511) Bool)

(assert (=> d!458731 (= (inv!21754 input!1460) (isBalanced!1634 (c!251760 input!1460)))))

(declare-fun bs!382849 () Bool)

(assert (= bs!382849 d!458731))

(declare-fun m!1815368 () Bool)

(assert (=> bs!382849 m!1815368))

(assert (=> start!143212 d!458731))

(declare-fun d!458733 () Bool)

(declare-fun res!690376 () Bool)

(declare-fun e!987250 () Bool)

(assert (=> d!458733 (=> (not res!690376) (not e!987250))))

(assert (=> d!458733 (= res!690376 ((_ is HashMap!1588) (cache!1969 cacheUp!695)))))

(assert (=> d!458733 (= (inv!21755 cacheUp!695) e!987250)))

(declare-fun b!1541814 () Bool)

(assert (=> b!1541814 (= e!987250 (validCacheMapUp!152 (cache!1969 cacheUp!695)))))

(assert (= (and d!458733 res!690376) b!1541814))

(assert (=> b!1541814 m!1815348))

(assert (=> start!143212 d!458733))

(declare-fun d!458735 () Bool)

(assert (=> d!458735 (= (inv!21754 totalInput!496) (isBalanced!1634 (c!251760 totalInput!496)))))

(declare-fun bs!382850 () Bool)

(assert (= bs!382850 d!458735))

(declare-fun m!1815370 () Bool)

(assert (=> bs!382850 m!1815370))

(assert (=> start!143212 d!458735))

(declare-fun d!458737 () Bool)

(declare-fun res!690379 () Bool)

(declare-fun e!987253 () Bool)

(assert (=> d!458737 (=> (not res!690379) (not e!987253))))

(assert (=> d!458737 (= res!690379 ((_ is HashMap!1590) (cache!1971 cacheFurthestNullable!81)))))

(assert (=> d!458737 (= (inv!21757 cacheFurthestNullable!81) e!987253)))

(declare-fun b!1541817 () Bool)

(assert (=> b!1541817 (= e!987253 (validCacheMapFurthestNullable!65 (cache!1971 cacheFurthestNullable!81) (totalInput!2388 cacheFurthestNullable!81)))))

(assert (= (and d!458737 res!690379) b!1541817))

(assert (=> b!1541817 m!1815354))

(assert (=> start!143212 d!458737))

(declare-fun d!458739 () Bool)

(assert (=> d!458739 (= (inv!21754 (totalInput!2388 cacheFurthestNullable!81)) (isBalanced!1634 (c!251760 (totalInput!2388 cacheFurthestNullable!81))))))

(declare-fun bs!382851 () Bool)

(assert (= bs!382851 d!458739))

(declare-fun m!1815372 () Bool)

(assert (=> bs!382851 m!1815372))

(assert (=> b!1541765 d!458739))

(declare-fun d!458741 () Bool)

(assert (=> d!458741 (= (valid!1328 cacheDown!708) (validCacheMapDown!152 (cache!1970 cacheDown!708)))))

(declare-fun bs!382852 () Bool)

(assert (= bs!382852 d!458741))

(assert (=> bs!382852 m!1815366))

(assert (=> b!1541744 d!458741))

(declare-fun d!458743 () Bool)

(declare-fun e!987256 () Bool)

(assert (=> d!458743 e!987256))

(declare-fun res!690382 () Bool)

(assert (=> d!458743 (=> res!690382 e!987256)))

(declare-fun lt!534594 () Bool)

(assert (=> d!458743 (= res!690382 (not lt!534594))))

(declare-fun drop!776 (List!16558 Int) List!16558)

(assert (=> d!458743 (= lt!534594 (= lt!534585 (drop!776 (list!6438 totalInput!496) (- (size!13327 (list!6438 totalInput!496)) (size!13327 lt!534585)))))))

(assert (=> d!458743 (= (isSuffix!339 lt!534585 (list!6438 totalInput!496)) lt!534594)))

(declare-fun b!1541820 () Bool)

(assert (=> b!1541820 (= e!987256 (>= (size!13327 (list!6438 totalInput!496)) (size!13327 lt!534585)))))

(assert (= (and d!458743 (not res!690382)) b!1541820))

(assert (=> d!458743 m!1815298))

(declare-fun m!1815374 () Bool)

(assert (=> d!458743 m!1815374))

(assert (=> d!458743 m!1815356))

(assert (=> d!458743 m!1815298))

(declare-fun m!1815376 () Bool)

(assert (=> d!458743 m!1815376))

(assert (=> b!1541820 m!1815298))

(assert (=> b!1541820 m!1815374))

(assert (=> b!1541820 m!1815356))

(assert (=> b!1541753 d!458743))

(declare-fun d!458745 () Bool)

(declare-fun list!6439 (Conc!5511) List!16558)

(assert (=> d!458745 (= (list!6438 totalInput!496) (list!6439 (c!251760 totalInput!496)))))

(declare-fun bs!382853 () Bool)

(assert (= bs!382853 d!458745))

(declare-fun m!1815378 () Bool)

(assert (=> bs!382853 m!1815378))

(assert (=> b!1541753 d!458745))

(declare-fun d!458747 () Bool)

(assert (=> d!458747 (= (list!6438 input!1460) (list!6439 (c!251760 input!1460)))))

(declare-fun bs!382854 () Bool)

(assert (= bs!382854 d!458747))

(declare-fun m!1815380 () Bool)

(assert (=> bs!382854 m!1815380))

(assert (=> b!1541753 d!458747))

(declare-fun d!458749 () Bool)

(assert (=> d!458749 true))

(declare-fun lt!534597 () Bool)

(declare-fun lambda!65282 () Int)

(declare-fun forall!3907 (List!16559 Int) Bool)

(assert (=> d!458749 (= lt!534597 (forall!3907 rulesArg!359 lambda!65282))))

(declare-fun e!987262 () Bool)

(assert (=> d!458749 (= lt!534597 e!987262)))

(declare-fun res!690387 () Bool)

(assert (=> d!458749 (=> res!690387 e!987262)))

(assert (=> d!458749 (= res!690387 (not ((_ is Cons!16491) rulesArg!359)))))

(assert (=> d!458749 (= (rulesValidInductive!891 thiss!15733 rulesArg!359) lt!534597)))

(declare-fun b!1541825 () Bool)

(declare-fun e!987261 () Bool)

(assert (=> b!1541825 (= e!987262 e!987261)))

(declare-fun res!690388 () Bool)

(assert (=> b!1541825 (=> (not res!690388) (not e!987261))))

(declare-fun ruleValid!652 (LexerInterface!2544 Rule!5588) Bool)

(assert (=> b!1541825 (= res!690388 (ruleValid!652 thiss!15733 (h!21892 rulesArg!359)))))

(declare-fun b!1541826 () Bool)

(assert (=> b!1541826 (= e!987261 (rulesValidInductive!891 thiss!15733 (t!140765 rulesArg!359)))))

(assert (= (and d!458749 (not res!690387)) b!1541825))

(assert (= (and b!1541825 res!690388) b!1541826))

(declare-fun m!1815382 () Bool)

(assert (=> d!458749 m!1815382))

(declare-fun m!1815384 () Bool)

(assert (=> b!1541825 m!1815384))

(declare-fun m!1815386 () Bool)

(assert (=> b!1541826 m!1815386))

(assert (=> b!1541771 d!458749))

(declare-fun d!458751 () Bool)

(declare-fun lt!534600 () Int)

(assert (=> d!458751 (>= lt!534600 0)))

(declare-fun e!987265 () Int)

(assert (=> d!458751 (= lt!534600 e!987265)))

(declare-fun c!251769 () Bool)

(assert (=> d!458751 (= c!251769 ((_ is Nil!16491) (t!140765 rulesArg!359)))))

(assert (=> d!458751 (= (size!13321 (t!140765 rulesArg!359)) lt!534600)))

(declare-fun b!1541833 () Bool)

(assert (=> b!1541833 (= e!987265 0)))

(declare-fun b!1541834 () Bool)

(assert (=> b!1541834 (= e!987265 (+ 1 (size!13321 (t!140765 (t!140765 rulesArg!359)))))))

(assert (= (and d!458751 c!251769) b!1541833))

(assert (= (and d!458751 (not c!251769)) b!1541834))

(declare-fun m!1815388 () Bool)

(assert (=> b!1541834 m!1815388))

(assert (=> b!1541743 d!458751))

(declare-fun d!458753 () Bool)

(declare-fun lt!534601 () Int)

(assert (=> d!458753 (>= lt!534601 0)))

(declare-fun e!987266 () Int)

(assert (=> d!458753 (= lt!534601 e!987266)))

(declare-fun c!251770 () Bool)

(assert (=> d!458753 (= c!251770 ((_ is Nil!16491) rulesArg!359))))

(assert (=> d!458753 (= (size!13321 rulesArg!359) lt!534601)))

(declare-fun b!1541835 () Bool)

(assert (=> b!1541835 (= e!987266 0)))

(declare-fun b!1541836 () Bool)

(assert (=> b!1541836 (= e!987266 (+ 1 (size!13321 (t!140765 rulesArg!359))))))

(assert (= (and d!458753 c!251770) b!1541835))

(assert (= (and d!458753 (not c!251770)) b!1541836))

(assert (=> b!1541836 m!1815292))

(assert (=> b!1541743 d!458753))

(declare-fun b!1541874 () Bool)

(declare-fun e!987287 () Bool)

(assert (=> b!1541874 (= e!987287 true)))

(declare-fun b!1541873 () Bool)

(declare-fun e!987286 () Bool)

(assert (=> b!1541873 (= e!987286 e!987287)))

(declare-fun b!1541859 () Bool)

(assert (=> b!1541859 e!987286))

(assert (= b!1541873 b!1541874))

(assert (= b!1541859 b!1541873))

(declare-fun lambda!65287 () Int)

(declare-fun order!9623 () Int)

(declare-fun order!9625 () Int)

(declare-fun dynLambda!7297 (Int Int) Int)

(declare-fun dynLambda!7298 (Int Int) Int)

(assert (=> b!1541874 (< (dynLambda!7297 order!9623 (toValue!4255 (transformation!2894 (h!21892 rulesArg!359)))) (dynLambda!7298 order!9625 lambda!65287))))

(declare-fun order!9627 () Int)

(declare-fun dynLambda!7299 (Int Int) Int)

(assert (=> b!1541874 (< (dynLambda!7299 order!9627 (toChars!4114 (transformation!2894 (h!21892 rulesArg!359)))) (dynLambda!7298 order!9625 lambda!65287))))

(declare-fun b!1541857 () Bool)

(declare-fun e!987281 () Bool)

(declare-fun lt!534625 () tuple4!810)

(assert (=> b!1541857 (= e!987281 (= (totalInput!2388 (_4!405 lt!534625)) totalInput!496))))

(declare-fun b!1541858 () Bool)

(declare-fun e!987278 () Bool)

(declare-fun lt!534626 () List!16558)

(declare-fun matchR!1849 (Regex!4219 List!16558) Bool)

(declare-datatypes ((tuple2!15638 0))(
  ( (tuple2!15639 (_1!9019 List!16558) (_2!9019 List!16558)) )
))
(declare-fun findLongestMatchInner!306 (Regex!4219 List!16558 Int List!16558 List!16558 Int) tuple2!15638)

(assert (=> b!1541858 (= e!987278 (matchR!1849 (regex!2894 (h!21892 rulesArg!359)) (_1!9019 (findLongestMatchInner!306 (regex!2894 (h!21892 rulesArg!359)) Nil!16490 (size!13327 Nil!16490) lt!534626 lt!534626 (size!13327 lt!534626)))))))

(declare-fun e!987277 () Option!2986)

(declare-datatypes ((tuple2!15640 0))(
  ( (tuple2!15641 (_1!9020 BalanceConc!10964) (_2!9020 BalanceConc!10964)) )
))
(declare-datatypes ((tuple4!812 0))(
  ( (tuple4!813 (_1!9021 tuple2!15640) (_2!9021 CacheUp!956) (_3!1200 CacheDown!964) (_4!406 CacheFurthestNullable!384)) )
))
(declare-fun lt!534629 () tuple4!812)

(declare-fun apply!4084 (TokenValueInjection!5628 BalanceConc!10964) TokenValue!2984)

(declare-fun size!13328 (BalanceConc!10964) Int)

(assert (=> b!1541859 (= e!987277 (Some!2985 (tuple2!15637 (Token!5423 (apply!4084 (transformation!2894 (h!21892 rulesArg!359)) (_1!9020 (_1!9021 lt!534629))) (h!21892 rulesArg!359) (size!13328 (_1!9020 (_1!9021 lt!534629))) (list!6438 (_1!9020 (_1!9021 lt!534629)))) (_2!9020 (_1!9021 lt!534629)))))))

(assert (=> b!1541859 (= lt!534626 (list!6438 input!1460))))

(declare-fun lt!534631 () Unit!25897)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!290 (Regex!4219 List!16558) Unit!25897)

(assert (=> b!1541859 (= lt!534631 (longestMatchIsAcceptedByMatchOrIsEmpty!290 (regex!2894 (h!21892 rulesArg!359)) lt!534626))))

(declare-fun res!690412 () Bool)

(declare-fun isEmpty!10036 (List!16558) Bool)

(assert (=> b!1541859 (= res!690412 (isEmpty!10036 (_1!9019 (findLongestMatchInner!306 (regex!2894 (h!21892 rulesArg!359)) Nil!16490 (size!13327 Nil!16490) lt!534626 lt!534626 (size!13327 lt!534626)))))))

(assert (=> b!1541859 (=> res!690412 e!987278)))

(assert (=> b!1541859 e!987278))

(declare-fun lt!534623 () Unit!25897)

(assert (=> b!1541859 (= lt!534623 lt!534631)))

(declare-fun lt!534624 () Unit!25897)

(declare-fun lemmaInv!400 (TokenValueInjection!5628) Unit!25897)

(assert (=> b!1541859 (= lt!534624 (lemmaInv!400 (transformation!2894 (h!21892 rulesArg!359))))))

(declare-fun lt!534627 () Unit!25897)

(declare-fun ForallOf!183 (Int BalanceConc!10964) Unit!25897)

(assert (=> b!1541859 (= lt!534627 (ForallOf!183 lambda!65287 (_1!9020 (_1!9021 lt!534629))))))

(declare-fun lt!534622 () Unit!25897)

(declare-fun seqFromList!1746 (List!16558) BalanceConc!10964)

(assert (=> b!1541859 (= lt!534622 (ForallOf!183 lambda!65287 (seqFromList!1746 (list!6438 (_1!9020 (_1!9021 lt!534629))))))))

(declare-fun lt!534630 () Option!2986)

(assert (=> b!1541859 (= lt!534630 (Some!2985 (tuple2!15637 (Token!5423 (apply!4084 (transformation!2894 (h!21892 rulesArg!359)) (_1!9020 (_1!9021 lt!534629))) (h!21892 rulesArg!359) (size!13328 (_1!9020 (_1!9021 lt!534629))) (list!6438 (_1!9020 (_1!9021 lt!534629)))) (_2!9020 (_1!9021 lt!534629)))))))

(declare-fun lt!534628 () Unit!25897)

(declare-fun lemmaEqSameImage!133 (TokenValueInjection!5628 BalanceConc!10964 BalanceConc!10964) Unit!25897)

(assert (=> b!1541859 (= lt!534628 (lemmaEqSameImage!133 (transformation!2894 (h!21892 rulesArg!359)) (_1!9020 (_1!9021 lt!534629)) (seqFromList!1746 (list!6438 (_1!9020 (_1!9021 lt!534629))))))))

(declare-fun b!1541860 () Bool)

(declare-fun res!690408 () Bool)

(assert (=> b!1541860 (=> (not res!690408) (not e!987281))))

(assert (=> b!1541860 (= res!690408 (valid!1330 (_4!405 lt!534625)))))

(declare-fun b!1541862 () Bool)

(declare-fun res!690409 () Bool)

(assert (=> b!1541862 (=> (not res!690409) (not e!987281))))

(assert (=> b!1541862 (= res!690409 (valid!1328 (_3!1199 lt!534625)))))

(declare-fun b!1541863 () Bool)

(declare-fun res!690405 () Bool)

(assert (=> b!1541863 (=> (not res!690405) (not e!987281))))

(declare-fun e!987280 () Bool)

(assert (=> b!1541863 (= res!690405 e!987280)))

(declare-fun res!690407 () Bool)

(assert (=> b!1541863 (=> res!690407 e!987280)))

(declare-fun isDefined!2393 (Option!2986) Bool)

(assert (=> b!1541863 (= res!690407 (not (isDefined!2393 (_1!9018 lt!534625))))))

(declare-fun b!1541864 () Bool)

(declare-fun res!690410 () Bool)

(assert (=> b!1541864 (=> (not res!690410) (not e!987281))))

(assert (=> b!1541864 (= res!690410 (valid!1329 (_2!9018 lt!534625)))))

(declare-fun b!1541861 () Bool)

(assert (=> b!1541861 (= e!987277 None!2985)))

(declare-fun d!458755 () Bool)

(assert (=> d!458755 e!987281))

(declare-fun res!690406 () Bool)

(assert (=> d!458755 (=> (not res!690406) (not e!987281))))

(declare-datatypes ((tuple2!15642 0))(
  ( (tuple2!15643 (_1!9022 Token!5422) (_2!9022 List!16558)) )
))
(declare-datatypes ((Option!2987 0))(
  ( (None!2986) (Some!2986 (v!23310 tuple2!15642)) )
))
(declare-fun isDefined!2394 (Option!2987) Bool)

(declare-fun maxPrefixOneRule!679 (LexerInterface!2544 Rule!5588 List!16558) Option!2987)

(assert (=> d!458755 (= res!690406 (= (isDefined!2393 (_1!9018 lt!534625)) (isDefined!2394 (maxPrefixOneRule!679 thiss!15733 (h!21892 rulesArg!359) (list!6438 input!1460)))))))

(assert (=> d!458755 (= lt!534625 (tuple4!811 e!987277 (_2!9021 lt!534629) (_3!1200 lt!534629) (_4!406 lt!534629)))))

(declare-fun c!251774 () Bool)

(declare-fun isEmpty!10037 (BalanceConc!10964) Bool)

(assert (=> d!458755 (= c!251774 (isEmpty!10037 (_1!9020 (_1!9021 lt!534629))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!16 (Regex!4219 BalanceConc!10964 BalanceConc!10964 CacheUp!956 CacheDown!964 CacheFurthestNullable!384) tuple4!812)

(assert (=> d!458755 (= lt!534629 (findLongestMatchWithZipperSequenceV3Mem!16 (regex!2894 (h!21892 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458755 (ruleValid!652 thiss!15733 (h!21892 rulesArg!359))))

(assert (=> d!458755 (= (maxPrefixOneRuleZipperSequenceV3Mem!37 thiss!15733 (h!21892 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!534625)))

(declare-fun b!1541865 () Bool)

(declare-fun e!987279 () Bool)

(assert (=> b!1541865 (= e!987280 e!987279)))

(declare-fun res!690411 () Bool)

(assert (=> b!1541865 (=> (not res!690411) (not e!987279))))

(declare-fun get!4802 (Option!2986) tuple2!15636)

(declare-fun get!4803 (Option!2987) tuple2!15642)

(assert (=> b!1541865 (= res!690411 (= (_1!9017 (get!4802 (_1!9018 lt!534625))) (_1!9022 (get!4803 (maxPrefixOneRule!679 thiss!15733 (h!21892 rulesArg!359) (list!6438 input!1460))))))))

(declare-fun b!1541866 () Bool)

(assert (=> b!1541866 (= e!987279 (= (list!6438 (_2!9017 (get!4802 (_1!9018 lt!534625)))) (_2!9022 (get!4803 (maxPrefixOneRule!679 thiss!15733 (h!21892 rulesArg!359) (list!6438 input!1460))))))))

(assert (= (and d!458755 c!251774) b!1541861))

(assert (= (and d!458755 (not c!251774)) b!1541859))

(assert (= (and b!1541859 (not res!690412)) b!1541858))

(assert (= (and d!458755 res!690406) b!1541863))

(assert (= (and b!1541863 (not res!690407)) b!1541865))

(assert (= (and b!1541865 res!690411) b!1541866))

(assert (= (and b!1541863 res!690405) b!1541864))

(assert (= (and b!1541864 res!690410) b!1541862))

(assert (= (and b!1541862 res!690409) b!1541860))

(assert (= (and b!1541860 res!690408) b!1541857))

(declare-fun m!1815390 () Bool)

(assert (=> b!1541863 m!1815390))

(declare-fun m!1815392 () Bool)

(assert (=> b!1541859 m!1815392))

(declare-fun m!1815394 () Bool)

(assert (=> b!1541859 m!1815394))

(assert (=> b!1541859 m!1815392))

(declare-fun m!1815396 () Bool)

(assert (=> b!1541859 m!1815396))

(declare-fun m!1815398 () Bool)

(assert (=> b!1541859 m!1815398))

(declare-fun m!1815400 () Bool)

(assert (=> b!1541859 m!1815400))

(declare-fun m!1815402 () Bool)

(assert (=> b!1541859 m!1815402))

(declare-fun m!1815404 () Bool)

(assert (=> b!1541859 m!1815404))

(declare-fun m!1815406 () Bool)

(assert (=> b!1541859 m!1815406))

(assert (=> b!1541859 m!1815302))

(assert (=> b!1541859 m!1815402))

(declare-fun m!1815408 () Bool)

(assert (=> b!1541859 m!1815408))

(declare-fun m!1815410 () Bool)

(assert (=> b!1541859 m!1815410))

(declare-fun m!1815412 () Bool)

(assert (=> b!1541859 m!1815412))

(declare-fun m!1815414 () Bool)

(assert (=> b!1541859 m!1815414))

(assert (=> b!1541859 m!1815394))

(declare-fun m!1815416 () Bool)

(assert (=> b!1541859 m!1815416))

(assert (=> b!1541859 m!1815410))

(assert (=> b!1541859 m!1815402))

(declare-fun m!1815418 () Bool)

(assert (=> b!1541862 m!1815418))

(assert (=> b!1541866 m!1815302))

(declare-fun m!1815420 () Bool)

(assert (=> b!1541866 m!1815420))

(declare-fun m!1815422 () Bool)

(assert (=> b!1541866 m!1815422))

(assert (=> b!1541866 m!1815420))

(declare-fun m!1815424 () Bool)

(assert (=> b!1541866 m!1815424))

(assert (=> b!1541866 m!1815302))

(declare-fun m!1815426 () Bool)

(assert (=> b!1541866 m!1815426))

(declare-fun m!1815428 () Bool)

(assert (=> b!1541864 m!1815428))

(assert (=> b!1541858 m!1815394))

(assert (=> b!1541858 m!1815392))

(assert (=> b!1541858 m!1815394))

(assert (=> b!1541858 m!1815392))

(assert (=> b!1541858 m!1815396))

(declare-fun m!1815430 () Bool)

(assert (=> b!1541858 m!1815430))

(assert (=> b!1541865 m!1815426))

(assert (=> b!1541865 m!1815302))

(assert (=> b!1541865 m!1815302))

(assert (=> b!1541865 m!1815420))

(assert (=> b!1541865 m!1815420))

(assert (=> b!1541865 m!1815424))

(declare-fun m!1815432 () Bool)

(assert (=> b!1541860 m!1815432))

(declare-fun m!1815434 () Bool)

(assert (=> d!458755 m!1815434))

(assert (=> d!458755 m!1815302))

(declare-fun m!1815436 () Bool)

(assert (=> d!458755 m!1815436))

(assert (=> d!458755 m!1815384))

(assert (=> d!458755 m!1815420))

(declare-fun m!1815438 () Bool)

(assert (=> d!458755 m!1815438))

(assert (=> d!458755 m!1815390))

(assert (=> d!458755 m!1815302))

(assert (=> d!458755 m!1815420))

(assert (=> b!1541743 d!458755))

(declare-fun setRes!10272 () Bool)

(declare-fun tp!447249 () Bool)

(declare-fun tp!447251 () Bool)

(declare-fun e!987294 () Bool)

(declare-fun e!987296 () Bool)

(declare-fun b!1541883 () Bool)

(declare-fun tp_is_empty!7049 () Bool)

(declare-fun inv!21760 (Context!1474) Bool)

(assert (=> b!1541883 (= e!987294 (and tp!447251 (inv!21760 (_2!9013 (_1!9014 (h!21895 (zeroValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))))) e!987296 tp_is_empty!7049 setRes!10272 tp!447249))))

(declare-fun condSetEmpty!10272 () Bool)

(assert (=> b!1541883 (= condSetEmpty!10272 (= (_2!9014 (h!21895 (zeroValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun tp!447250 () Bool)

(declare-fun e!987295 () Bool)

(declare-fun setElem!10272 () Context!1474)

(declare-fun setNonEmpty!10272 () Bool)

(assert (=> setNonEmpty!10272 (= setRes!10272 (and tp!447250 (inv!21760 setElem!10272) e!987295))))

(declare-fun setRest!10272 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10272 (= (_2!9014 (h!21895 (zeroValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10272 true) setRest!10272))))

(declare-fun b!1541884 () Bool)

(declare-fun tp!447248 () Bool)

(assert (=> b!1541884 (= e!987295 tp!447248)))

(declare-fun b!1541885 () Bool)

(declare-fun tp!447247 () Bool)

(assert (=> b!1541885 (= e!987296 tp!447247)))

(declare-fun setIsEmpty!10272 () Bool)

(assert (=> setIsEmpty!10272 setRes!10272))

(assert (=> b!1541778 (= tp!447229 e!987294)))

(assert (= b!1541883 b!1541885))

(assert (= (and b!1541883 condSetEmpty!10272) setIsEmpty!10272))

(assert (= (and b!1541883 (not condSetEmpty!10272)) setNonEmpty!10272))

(assert (= setNonEmpty!10272 b!1541884))

(assert (= (and b!1541778 ((_ is Cons!16494) (zeroValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) b!1541883))

(declare-fun m!1815440 () Bool)

(assert (=> b!1541883 m!1815440))

(declare-fun m!1815442 () Bool)

(assert (=> setNonEmpty!10272 m!1815442))

(declare-fun e!987297 () Bool)

(declare-fun tp!447254 () Bool)

(declare-fun tp!447256 () Bool)

(declare-fun setRes!10273 () Bool)

(declare-fun b!1541886 () Bool)

(declare-fun e!987299 () Bool)

(assert (=> b!1541886 (= e!987297 (and tp!447256 (inv!21760 (_2!9013 (_1!9014 (h!21895 (minValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))))) e!987299 tp_is_empty!7049 setRes!10273 tp!447254))))

(declare-fun condSetEmpty!10273 () Bool)

(assert (=> b!1541886 (= condSetEmpty!10273 (= (_2!9014 (h!21895 (minValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun tp!447255 () Bool)

(declare-fun e!987298 () Bool)

(declare-fun setElem!10273 () Context!1474)

(declare-fun setNonEmpty!10273 () Bool)

(assert (=> setNonEmpty!10273 (= setRes!10273 (and tp!447255 (inv!21760 setElem!10273) e!987298))))

(declare-fun setRest!10273 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10273 (= (_2!9014 (h!21895 (minValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10273 true) setRest!10273))))

(declare-fun b!1541887 () Bool)

(declare-fun tp!447253 () Bool)

(assert (=> b!1541887 (= e!987298 tp!447253)))

(declare-fun b!1541888 () Bool)

(declare-fun tp!447252 () Bool)

(assert (=> b!1541888 (= e!987299 tp!447252)))

(declare-fun setIsEmpty!10273 () Bool)

(assert (=> setIsEmpty!10273 setRes!10273))

(assert (=> b!1541778 (= tp!447213 e!987297)))

(assert (= b!1541886 b!1541888))

(assert (= (and b!1541886 condSetEmpty!10273) setIsEmpty!10273))

(assert (= (and b!1541886 (not condSetEmpty!10273)) setNonEmpty!10273))

(assert (= setNonEmpty!10273 b!1541887))

(assert (= (and b!1541778 ((_ is Cons!16494) (minValue!1902 (v!23305 (underlying!3499 (v!23306 (underlying!3500 (cache!1970 cacheDown!708)))))))) b!1541886))

(declare-fun m!1815444 () Bool)

(assert (=> b!1541886 m!1815444))

(declare-fun m!1815446 () Bool)

(assert (=> setNonEmpty!10273 m!1815446))

(declare-fun tp!447263 () Bool)

(declare-fun b!1541897 () Bool)

(declare-fun e!987305 () Bool)

(declare-fun tp!447264 () Bool)

(assert (=> b!1541897 (= e!987305 (and (inv!21752 (left!13495 (c!251760 input!1460))) tp!447264 (inv!21752 (right!13825 (c!251760 input!1460))) tp!447263))))

(declare-fun b!1541899 () Bool)

(declare-fun e!987304 () Bool)

(declare-fun tp!447265 () Bool)

(assert (=> b!1541899 (= e!987304 tp!447265)))

(declare-fun b!1541898 () Bool)

(declare-fun inv!21761 (IArray!11027) Bool)

(assert (=> b!1541898 (= e!987305 (and (inv!21761 (xs!8311 (c!251760 input!1460))) e!987304))))

(assert (=> b!1541760 (= tp!447214 (and (inv!21752 (c!251760 input!1460)) e!987305))))

(assert (= (and b!1541760 ((_ is Node!5511) (c!251760 input!1460))) b!1541897))

(assert (= b!1541898 b!1541899))

(assert (= (and b!1541760 ((_ is Leaf!8166) (c!251760 input!1460))) b!1541898))

(declare-fun m!1815448 () Bool)

(assert (=> b!1541897 m!1815448))

(declare-fun m!1815450 () Bool)

(assert (=> b!1541897 m!1815450))

(declare-fun m!1815452 () Bool)

(assert (=> b!1541898 m!1815452))

(assert (=> b!1541760 m!1815288))

(declare-fun b!1541910 () Bool)

(declare-fun b_free!40403 () Bool)

(declare-fun b_next!41107 () Bool)

(assert (=> b!1541910 (= b_free!40403 (not b_next!41107))))

(declare-fun tp!447277 () Bool)

(declare-fun b_and!107281 () Bool)

(assert (=> b!1541910 (= tp!447277 b_and!107281)))

(declare-fun b_free!40405 () Bool)

(declare-fun b_next!41109 () Bool)

(assert (=> b!1541910 (= b_free!40405 (not b_next!41109))))

(declare-fun tp!447275 () Bool)

(declare-fun b_and!107283 () Bool)

(assert (=> b!1541910 (= tp!447275 b_and!107283)))

(declare-fun e!987315 () Bool)

(assert (=> b!1541910 (= e!987315 (and tp!447277 tp!447275))))

(declare-fun tp!447274 () Bool)

(declare-fun b!1541909 () Bool)

(declare-fun e!987317 () Bool)

(assert (=> b!1541909 (= e!987317 (and tp!447274 (inv!21748 (tag!3158 (h!21892 (t!140765 rulesArg!359)))) (inv!21753 (transformation!2894 (h!21892 (t!140765 rulesArg!359)))) e!987315))))

(declare-fun b!1541908 () Bool)

(declare-fun e!987316 () Bool)

(declare-fun tp!447276 () Bool)

(assert (=> b!1541908 (= e!987316 (and e!987317 tp!447276))))

(assert (=> b!1541769 (= tp!447222 e!987316)))

(assert (= b!1541909 b!1541910))

(assert (= b!1541908 b!1541909))

(assert (= (and b!1541769 ((_ is Cons!16491) (t!140765 rulesArg!359))) b!1541908))

(declare-fun m!1815454 () Bool)

(assert (=> b!1541909 m!1815454))

(declare-fun m!1815456 () Bool)

(assert (=> b!1541909 m!1815456))

(declare-fun b!1541918 () Bool)

(declare-fun e!987323 () Bool)

(declare-fun tp!447285 () Bool)

(assert (=> b!1541918 (= e!987323 tp!447285)))

(declare-fun b!1541917 () Bool)

(declare-fun e!987322 () Bool)

(declare-fun setRes!10276 () Bool)

(declare-fun tp!447286 () Bool)

(assert (=> b!1541917 (= e!987322 (and setRes!10276 tp!447286))))

(declare-fun condSetEmpty!10276 () Bool)

(assert (=> b!1541917 (= condSetEmpty!10276 (= (_1!9015 (_1!9016 (h!21896 (zeroValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun setNonEmpty!10276 () Bool)

(declare-fun tp!447284 () Bool)

(declare-fun setElem!10276 () Context!1474)

(assert (=> setNonEmpty!10276 (= setRes!10276 (and tp!447284 (inv!21760 setElem!10276) e!987323))))

(declare-fun setRest!10276 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10276 (= (_1!9015 (_1!9016 (h!21896 (zeroValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10276 true) setRest!10276))))

(assert (=> b!1541750 (= tp!447232 e!987322)))

(declare-fun setIsEmpty!10276 () Bool)

(assert (=> setIsEmpty!10276 setRes!10276))

(assert (= (and b!1541917 condSetEmpty!10276) setIsEmpty!10276))

(assert (= (and b!1541917 (not condSetEmpty!10276)) setNonEmpty!10276))

(assert (= setNonEmpty!10276 b!1541918))

(assert (= (and b!1541750 ((_ is Cons!16495) (zeroValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81)))))))) b!1541917))

(declare-fun m!1815458 () Bool)

(assert (=> setNonEmpty!10276 m!1815458))

(declare-fun b!1541920 () Bool)

(declare-fun e!987325 () Bool)

(declare-fun tp!447288 () Bool)

(assert (=> b!1541920 (= e!987325 tp!447288)))

(declare-fun b!1541919 () Bool)

(declare-fun e!987324 () Bool)

(declare-fun setRes!10277 () Bool)

(declare-fun tp!447289 () Bool)

(assert (=> b!1541919 (= e!987324 (and setRes!10277 tp!447289))))

(declare-fun condSetEmpty!10277 () Bool)

(assert (=> b!1541919 (= condSetEmpty!10277 (= (_1!9015 (_1!9016 (h!21896 (minValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun setNonEmpty!10277 () Bool)

(declare-fun setElem!10277 () Context!1474)

(declare-fun tp!447287 () Bool)

(assert (=> setNonEmpty!10277 (= setRes!10277 (and tp!447287 (inv!21760 setElem!10277) e!987325))))

(declare-fun setRest!10277 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10277 (= (_1!9015 (_1!9016 (h!21896 (minValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10277 true) setRest!10277))))

(assert (=> b!1541750 (= tp!447209 e!987324)))

(declare-fun setIsEmpty!10277 () Bool)

(assert (=> setIsEmpty!10277 setRes!10277))

(assert (= (and b!1541919 condSetEmpty!10277) setIsEmpty!10277))

(assert (= (and b!1541919 (not condSetEmpty!10277)) setNonEmpty!10277))

(assert (= setNonEmpty!10277 b!1541920))

(assert (= (and b!1541750 ((_ is Cons!16495) (minValue!1903 (v!23307 (underlying!3501 (v!23309 (underlying!3502 (cache!1971 cacheFurthestNullable!81)))))))) b!1541919))

(declare-fun m!1815460 () Bool)

(assert (=> setNonEmpty!10277 m!1815460))

(declare-fun tp!447291 () Bool)

(declare-fun b!1541921 () Bool)

(declare-fun tp!447290 () Bool)

(declare-fun e!987327 () Bool)

(assert (=> b!1541921 (= e!987327 (and (inv!21752 (left!13495 (c!251760 (totalInput!2388 cacheFurthestNullable!81)))) tp!447291 (inv!21752 (right!13825 (c!251760 (totalInput!2388 cacheFurthestNullable!81)))) tp!447290))))

(declare-fun b!1541923 () Bool)

(declare-fun e!987326 () Bool)

(declare-fun tp!447292 () Bool)

(assert (=> b!1541923 (= e!987326 tp!447292)))

(declare-fun b!1541922 () Bool)

(assert (=> b!1541922 (= e!987327 (and (inv!21761 (xs!8311 (c!251760 (totalInput!2388 cacheFurthestNullable!81)))) e!987326))))

(assert (=> b!1541777 (= tp!447221 (and (inv!21752 (c!251760 (totalInput!2388 cacheFurthestNullable!81))) e!987327))))

(assert (= (and b!1541777 ((_ is Node!5511) (c!251760 (totalInput!2388 cacheFurthestNullable!81)))) b!1541921))

(assert (= b!1541922 b!1541923))

(assert (= (and b!1541777 ((_ is Leaf!8166) (c!251760 (totalInput!2388 cacheFurthestNullable!81)))) b!1541922))

(declare-fun m!1815462 () Bool)

(assert (=> b!1541921 m!1815462))

(declare-fun m!1815464 () Bool)

(assert (=> b!1541921 m!1815464))

(declare-fun m!1815466 () Bool)

(assert (=> b!1541922 m!1815466))

(assert (=> b!1541777 m!1815290))

(declare-fun b!1541934 () Bool)

(declare-fun e!987330 () Bool)

(assert (=> b!1541934 (= e!987330 tp_is_empty!7049)))

(declare-fun b!1541935 () Bool)

(declare-fun tp!447306 () Bool)

(declare-fun tp!447305 () Bool)

(assert (=> b!1541935 (= e!987330 (and tp!447306 tp!447305))))

(declare-fun b!1541936 () Bool)

(declare-fun tp!447304 () Bool)

(assert (=> b!1541936 (= e!987330 tp!447304)))

(declare-fun b!1541937 () Bool)

(declare-fun tp!447307 () Bool)

(declare-fun tp!447303 () Bool)

(assert (=> b!1541937 (= e!987330 (and tp!447307 tp!447303))))

(assert (=> b!1541749 (= tp!447228 e!987330)))

(assert (= (and b!1541749 ((_ is ElementMatch!4219) (regex!2894 (h!21892 rulesArg!359)))) b!1541934))

(assert (= (and b!1541749 ((_ is Concat!7204) (regex!2894 (h!21892 rulesArg!359)))) b!1541935))

(assert (= (and b!1541749 ((_ is Star!4219) (regex!2894 (h!21892 rulesArg!359)))) b!1541936))

(assert (= (and b!1541749 ((_ is Union!4219) (regex!2894 (h!21892 rulesArg!359)))) b!1541937))

(declare-fun b!1541946 () Bool)

(declare-fun e!987338 () Bool)

(declare-fun tp!447318 () Bool)

(assert (=> b!1541946 (= e!987338 tp!447318)))

(declare-fun e!987339 () Bool)

(declare-fun setElem!10280 () Context!1474)

(declare-fun tp!447319 () Bool)

(declare-fun setNonEmpty!10280 () Bool)

(declare-fun setRes!10280 () Bool)

(assert (=> setNonEmpty!10280 (= setRes!10280 (and tp!447319 (inv!21760 setElem!10280) e!987339))))

(declare-fun setRest!10280 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10280 (= (_2!9012 (h!21894 (zeroValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10280 true) setRest!10280))))

(declare-fun b!1541947 () Bool)

(declare-fun tp!447316 () Bool)

(declare-fun e!987337 () Bool)

(assert (=> b!1541947 (= e!987337 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 (zeroValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))))) e!987338 tp_is_empty!7049 setRes!10280 tp!447316))))

(declare-fun condSetEmpty!10280 () Bool)

(assert (=> b!1541947 (= condSetEmpty!10280 (= (_2!9012 (h!21894 (zeroValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) ((as const (Array Context!1474 Bool)) false)))))

(assert (=> b!1541776 (= tp!447215 e!987337)))

(declare-fun b!1541948 () Bool)

(declare-fun tp!447317 () Bool)

(assert (=> b!1541948 (= e!987339 tp!447317)))

(declare-fun setIsEmpty!10280 () Bool)

(assert (=> setIsEmpty!10280 setRes!10280))

(assert (= b!1541947 b!1541946))

(assert (= (and b!1541947 condSetEmpty!10280) setIsEmpty!10280))

(assert (= (and b!1541947 (not condSetEmpty!10280)) setNonEmpty!10280))

(assert (= setNonEmpty!10280 b!1541948))

(assert (= (and b!1541776 ((_ is Cons!16493) (zeroValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) b!1541947))

(declare-fun m!1815468 () Bool)

(assert (=> setNonEmpty!10280 m!1815468))

(declare-fun m!1815470 () Bool)

(assert (=> b!1541947 m!1815470))

(declare-fun b!1541949 () Bool)

(declare-fun e!987341 () Bool)

(declare-fun tp!447322 () Bool)

(assert (=> b!1541949 (= e!987341 tp!447322)))

(declare-fun setElem!10281 () Context!1474)

(declare-fun setNonEmpty!10281 () Bool)

(declare-fun tp!447323 () Bool)

(declare-fun setRes!10281 () Bool)

(declare-fun e!987342 () Bool)

(assert (=> setNonEmpty!10281 (= setRes!10281 (and tp!447323 (inv!21760 setElem!10281) e!987342))))

(declare-fun setRest!10281 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10281 (= (_2!9012 (h!21894 (minValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10281 true) setRest!10281))))

(declare-fun e!987340 () Bool)

(declare-fun tp!447320 () Bool)

(declare-fun b!1541950 () Bool)

(assert (=> b!1541950 (= e!987340 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 (minValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))))) e!987341 tp_is_empty!7049 setRes!10281 tp!447320))))

(declare-fun condSetEmpty!10281 () Bool)

(assert (=> b!1541950 (= condSetEmpty!10281 (= (_2!9012 (h!21894 (minValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) ((as const (Array Context!1474 Bool)) false)))))

(assert (=> b!1541776 (= tp!447236 e!987340)))

(declare-fun b!1541951 () Bool)

(declare-fun tp!447321 () Bool)

(assert (=> b!1541951 (= e!987342 tp!447321)))

(declare-fun setIsEmpty!10281 () Bool)

(assert (=> setIsEmpty!10281 setRes!10281))

(assert (= b!1541950 b!1541949))

(assert (= (and b!1541950 condSetEmpty!10281) setIsEmpty!10281))

(assert (= (and b!1541950 (not condSetEmpty!10281)) setNonEmpty!10281))

(assert (= setNonEmpty!10281 b!1541951))

(assert (= (and b!1541776 ((_ is Cons!16493) (minValue!1901 (v!23303 (underlying!3497 (v!23304 (underlying!3498 (cache!1969 cacheUp!695)))))))) b!1541950))

(declare-fun m!1815472 () Bool)

(assert (=> setNonEmpty!10281 m!1815472))

(declare-fun m!1815474 () Bool)

(assert (=> b!1541950 m!1815474))

(declare-fun setIsEmpty!10286 () Bool)

(declare-fun setRes!10287 () Bool)

(assert (=> setIsEmpty!10286 setRes!10287))

(declare-fun b!1541962 () Bool)

(declare-fun e!987354 () Bool)

(declare-fun tp!447338 () Bool)

(assert (=> b!1541962 (= e!987354 tp!447338)))

(declare-fun b!1541963 () Bool)

(declare-fun e!987352 () Bool)

(declare-fun tp!447339 () Bool)

(assert (=> b!1541963 (= e!987352 tp!447339)))

(declare-fun mapNonEmpty!7730 () Bool)

(declare-fun mapRes!7730 () Bool)

(declare-fun tp!447342 () Bool)

(declare-fun e!987353 () Bool)

(assert (=> mapNonEmpty!7730 (= mapRes!7730 (and tp!447342 e!987353))))

(declare-fun mapKey!7730 () (_ BitVec 32))

(declare-fun mapRest!7730 () (Array (_ BitVec 32) List!16563))

(declare-fun mapValue!7730 () List!16563)

(assert (=> mapNonEmpty!7730 (= mapRest!7725 (store mapRest!7730 mapKey!7730 mapValue!7730))))

(declare-fun condMapEmpty!7730 () Bool)

(declare-fun mapDefault!7730 () List!16563)

(assert (=> mapNonEmpty!7727 (= condMapEmpty!7730 (= mapRest!7725 ((as const (Array (_ BitVec 32) List!16563)) mapDefault!7730)))))

(declare-fun e!987351 () Bool)

(assert (=> mapNonEmpty!7727 (= tp!447219 (and e!987351 mapRes!7730))))

(declare-fun tp!447340 () Bool)

(declare-fun setRes!10286 () Bool)

(declare-fun setNonEmpty!10286 () Bool)

(declare-fun setElem!10287 () Context!1474)

(assert (=> setNonEmpty!10286 (= setRes!10286 (and tp!447340 (inv!21760 setElem!10287) e!987352))))

(declare-fun setRest!10287 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10286 (= (_1!9015 (_1!9016 (h!21896 mapDefault!7730))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10287 true) setRest!10287))))

(declare-fun b!1541964 () Bool)

(declare-fun tp!447344 () Bool)

(assert (=> b!1541964 (= e!987353 (and setRes!10287 tp!447344))))

(declare-fun condSetEmpty!10286 () Bool)

(assert (=> b!1541964 (= condSetEmpty!10286 (= (_1!9015 (_1!9016 (h!21896 mapValue!7730))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun b!1541965 () Bool)

(declare-fun tp!447341 () Bool)

(assert (=> b!1541965 (= e!987351 (and setRes!10286 tp!447341))))

(declare-fun condSetEmpty!10287 () Bool)

(assert (=> b!1541965 (= condSetEmpty!10287 (= (_1!9015 (_1!9016 (h!21896 mapDefault!7730))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun mapIsEmpty!7730 () Bool)

(assert (=> mapIsEmpty!7730 mapRes!7730))

(declare-fun setIsEmpty!10287 () Bool)

(assert (=> setIsEmpty!10287 setRes!10286))

(declare-fun setElem!10286 () Context!1474)

(declare-fun setNonEmpty!10287 () Bool)

(declare-fun tp!447343 () Bool)

(assert (=> setNonEmpty!10287 (= setRes!10287 (and tp!447343 (inv!21760 setElem!10286) e!987354))))

(declare-fun setRest!10286 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10287 (= (_1!9015 (_1!9016 (h!21896 mapValue!7730))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10286 true) setRest!10286))))

(assert (= (and mapNonEmpty!7727 condMapEmpty!7730) mapIsEmpty!7730))

(assert (= (and mapNonEmpty!7727 (not condMapEmpty!7730)) mapNonEmpty!7730))

(assert (= (and b!1541964 condSetEmpty!10286) setIsEmpty!10286))

(assert (= (and b!1541964 (not condSetEmpty!10286)) setNonEmpty!10287))

(assert (= setNonEmpty!10287 b!1541962))

(assert (= (and mapNonEmpty!7730 ((_ is Cons!16495) mapValue!7730)) b!1541964))

(assert (= (and b!1541965 condSetEmpty!10287) setIsEmpty!10287))

(assert (= (and b!1541965 (not condSetEmpty!10287)) setNonEmpty!10286))

(assert (= setNonEmpty!10286 b!1541963))

(assert (= (and mapNonEmpty!7727 ((_ is Cons!16495) mapDefault!7730)) b!1541965))

(declare-fun m!1815476 () Bool)

(assert (=> mapNonEmpty!7730 m!1815476))

(declare-fun m!1815478 () Bool)

(assert (=> setNonEmpty!10286 m!1815478))

(declare-fun m!1815480 () Bool)

(assert (=> setNonEmpty!10287 m!1815480))

(declare-fun b!1541967 () Bool)

(declare-fun e!987356 () Bool)

(declare-fun tp!447346 () Bool)

(assert (=> b!1541967 (= e!987356 tp!447346)))

(declare-fun b!1541966 () Bool)

(declare-fun e!987355 () Bool)

(declare-fun setRes!10288 () Bool)

(declare-fun tp!447347 () Bool)

(assert (=> b!1541966 (= e!987355 (and setRes!10288 tp!447347))))

(declare-fun condSetEmpty!10288 () Bool)

(assert (=> b!1541966 (= condSetEmpty!10288 (= (_1!9015 (_1!9016 (h!21896 mapValue!7725))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun setElem!10288 () Context!1474)

(declare-fun setNonEmpty!10288 () Bool)

(declare-fun tp!447345 () Bool)

(assert (=> setNonEmpty!10288 (= setRes!10288 (and tp!447345 (inv!21760 setElem!10288) e!987356))))

(declare-fun setRest!10288 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10288 (= (_1!9015 (_1!9016 (h!21896 mapValue!7725))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10288 true) setRest!10288))))

(assert (=> mapNonEmpty!7727 (= tp!447235 e!987355)))

(declare-fun setIsEmpty!10288 () Bool)

(assert (=> setIsEmpty!10288 setRes!10288))

(assert (= (and b!1541966 condSetEmpty!10288) setIsEmpty!10288))

(assert (= (and b!1541966 (not condSetEmpty!10288)) setNonEmpty!10288))

(assert (= setNonEmpty!10288 b!1541967))

(assert (= (and mapNonEmpty!7727 ((_ is Cons!16495) mapValue!7725)) b!1541966))

(declare-fun m!1815482 () Bool)

(assert (=> setNonEmpty!10288 m!1815482))

(declare-fun b!1541969 () Bool)

(declare-fun e!987358 () Bool)

(declare-fun tp!447349 () Bool)

(assert (=> b!1541969 (= e!987358 tp!447349)))

(declare-fun b!1541968 () Bool)

(declare-fun e!987357 () Bool)

(declare-fun setRes!10289 () Bool)

(declare-fun tp!447350 () Bool)

(assert (=> b!1541968 (= e!987357 (and setRes!10289 tp!447350))))

(declare-fun condSetEmpty!10289 () Bool)

(assert (=> b!1541968 (= condSetEmpty!10289 (= (_1!9015 (_1!9016 (h!21896 mapDefault!7725))) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun tp!447348 () Bool)

(declare-fun setElem!10289 () Context!1474)

(declare-fun setNonEmpty!10289 () Bool)

(assert (=> setNonEmpty!10289 (= setRes!10289 (and tp!447348 (inv!21760 setElem!10289) e!987358))))

(declare-fun setRest!10289 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10289 (= (_1!9015 (_1!9016 (h!21896 mapDefault!7725))) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10289 true) setRest!10289))))

(assert (=> b!1541775 (= tp!447227 e!987357)))

(declare-fun setIsEmpty!10289 () Bool)

(assert (=> setIsEmpty!10289 setRes!10289))

(assert (= (and b!1541968 condSetEmpty!10289) setIsEmpty!10289))

(assert (= (and b!1541968 (not condSetEmpty!10289)) setNonEmpty!10289))

(assert (= setNonEmpty!10289 b!1541969))

(assert (= (and b!1541775 ((_ is Cons!16495) mapDefault!7725)) b!1541968))

(declare-fun m!1815484 () Bool)

(assert (=> setNonEmpty!10289 m!1815484))

(declare-fun b!1541970 () Bool)

(declare-fun tp!447351 () Bool)

(declare-fun e!987360 () Bool)

(declare-fun tp!447352 () Bool)

(assert (=> b!1541970 (= e!987360 (and (inv!21752 (left!13495 (c!251760 totalInput!496))) tp!447352 (inv!21752 (right!13825 (c!251760 totalInput!496))) tp!447351))))

(declare-fun b!1541972 () Bool)

(declare-fun e!987359 () Bool)

(declare-fun tp!447353 () Bool)

(assert (=> b!1541972 (= e!987359 tp!447353)))

(declare-fun b!1541971 () Bool)

(assert (=> b!1541971 (= e!987360 (and (inv!21761 (xs!8311 (c!251760 totalInput!496))) e!987359))))

(assert (=> b!1541748 (= tp!447225 (and (inv!21752 (c!251760 totalInput!496)) e!987360))))

(assert (= (and b!1541748 ((_ is Node!5511) (c!251760 totalInput!496))) b!1541970))

(assert (= b!1541971 b!1541972))

(assert (= (and b!1541748 ((_ is Leaf!8166) (c!251760 totalInput!496))) b!1541971))

(declare-fun m!1815486 () Bool)

(assert (=> b!1541970 m!1815486))

(declare-fun m!1815488 () Bool)

(assert (=> b!1541970 m!1815488))

(declare-fun m!1815490 () Bool)

(assert (=> b!1541971 m!1815490))

(assert (=> b!1541748 m!1815326))

(declare-fun mapDefault!7733 () List!16561)

(declare-fun e!987373 () Bool)

(declare-fun tp!447373 () Bool)

(declare-fun e!987374 () Bool)

(declare-fun b!1541987 () Bool)

(declare-fun setRes!10295 () Bool)

(assert (=> b!1541987 (= e!987373 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 mapDefault!7733)))) e!987374 tp_is_empty!7049 setRes!10295 tp!447373))))

(declare-fun condSetEmpty!10295 () Bool)

(assert (=> b!1541987 (= condSetEmpty!10295 (= (_2!9012 (h!21894 mapDefault!7733)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun e!987377 () Bool)

(declare-fun tp!447378 () Bool)

(declare-fun b!1541988 () Bool)

(declare-fun e!987376 () Bool)

(declare-fun mapValue!7733 () List!16561)

(declare-fun setRes!10294 () Bool)

(assert (=> b!1541988 (= e!987376 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 mapValue!7733)))) e!987377 tp_is_empty!7049 setRes!10294 tp!447378))))

(declare-fun condSetEmpty!10294 () Bool)

(assert (=> b!1541988 (= condSetEmpty!10294 (= (_2!9012 (h!21894 mapValue!7733)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun setNonEmpty!10294 () Bool)

(declare-fun e!987378 () Bool)

(declare-fun setElem!10294 () Context!1474)

(declare-fun tp!447376 () Bool)

(assert (=> setNonEmpty!10294 (= setRes!10294 (and tp!447376 (inv!21760 setElem!10294) e!987378))))

(declare-fun setRest!10295 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10294 (= (_2!9012 (h!21894 mapValue!7733)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10294 true) setRest!10295))))

(declare-fun setIsEmpty!10294 () Bool)

(assert (=> setIsEmpty!10294 setRes!10295))

(declare-fun b!1541989 () Bool)

(declare-fun tp!447375 () Bool)

(assert (=> b!1541989 (= e!987378 tp!447375)))

(declare-fun mapIsEmpty!7733 () Bool)

(declare-fun mapRes!7733 () Bool)

(assert (=> mapIsEmpty!7733 mapRes!7733))

(declare-fun b!1541990 () Bool)

(declare-fun e!987375 () Bool)

(declare-fun tp!447377 () Bool)

(assert (=> b!1541990 (= e!987375 tp!447377)))

(declare-fun mapNonEmpty!7733 () Bool)

(declare-fun tp!447374 () Bool)

(assert (=> mapNonEmpty!7733 (= mapRes!7733 (and tp!447374 e!987376))))

(declare-fun mapKey!7733 () (_ BitVec 32))

(declare-fun mapRest!7733 () (Array (_ BitVec 32) List!16561))

(assert (=> mapNonEmpty!7733 (= mapRest!7727 (store mapRest!7733 mapKey!7733 mapValue!7733))))

(declare-fun b!1541991 () Bool)

(declare-fun tp!447380 () Bool)

(assert (=> b!1541991 (= e!987374 tp!447380)))

(declare-fun setElem!10295 () Context!1474)

(declare-fun tp!447379 () Bool)

(declare-fun setNonEmpty!10295 () Bool)

(assert (=> setNonEmpty!10295 (= setRes!10295 (and tp!447379 (inv!21760 setElem!10295) e!987375))))

(declare-fun setRest!10294 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10295 (= (_2!9012 (h!21894 mapDefault!7733)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10295 true) setRest!10294))))

(declare-fun b!1541992 () Bool)

(declare-fun tp!447372 () Bool)

(assert (=> b!1541992 (= e!987377 tp!447372)))

(declare-fun condMapEmpty!7733 () Bool)

(assert (=> mapNonEmpty!7726 (= condMapEmpty!7733 (= mapRest!7727 ((as const (Array (_ BitVec 32) List!16561)) mapDefault!7733)))))

(assert (=> mapNonEmpty!7726 (= tp!447226 (and e!987373 mapRes!7733))))

(declare-fun setIsEmpty!10295 () Bool)

(assert (=> setIsEmpty!10295 setRes!10294))

(assert (= (and mapNonEmpty!7726 condMapEmpty!7733) mapIsEmpty!7733))

(assert (= (and mapNonEmpty!7726 (not condMapEmpty!7733)) mapNonEmpty!7733))

(assert (= b!1541988 b!1541992))

(assert (= (and b!1541988 condSetEmpty!10294) setIsEmpty!10295))

(assert (= (and b!1541988 (not condSetEmpty!10294)) setNonEmpty!10294))

(assert (= setNonEmpty!10294 b!1541989))

(assert (= (and mapNonEmpty!7733 ((_ is Cons!16493) mapValue!7733)) b!1541988))

(assert (= b!1541987 b!1541991))

(assert (= (and b!1541987 condSetEmpty!10295) setIsEmpty!10294))

(assert (= (and b!1541987 (not condSetEmpty!10295)) setNonEmpty!10295))

(assert (= setNonEmpty!10295 b!1541990))

(assert (= (and mapNonEmpty!7726 ((_ is Cons!16493) mapDefault!7733)) b!1541987))

(declare-fun m!1815492 () Bool)

(assert (=> b!1541987 m!1815492))

(declare-fun m!1815494 () Bool)

(assert (=> setNonEmpty!10294 m!1815494))

(declare-fun m!1815496 () Bool)

(assert (=> b!1541988 m!1815496))

(declare-fun m!1815498 () Bool)

(assert (=> mapNonEmpty!7733 m!1815498))

(declare-fun m!1815500 () Bool)

(assert (=> setNonEmpty!10295 m!1815500))

(declare-fun b!1541993 () Bool)

(declare-fun e!987380 () Bool)

(declare-fun tp!447383 () Bool)

(assert (=> b!1541993 (= e!987380 tp!447383)))

(declare-fun e!987381 () Bool)

(declare-fun setNonEmpty!10296 () Bool)

(declare-fun setElem!10296 () Context!1474)

(declare-fun tp!447384 () Bool)

(declare-fun setRes!10296 () Bool)

(assert (=> setNonEmpty!10296 (= setRes!10296 (and tp!447384 (inv!21760 setElem!10296) e!987381))))

(declare-fun setRest!10296 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10296 (= (_2!9012 (h!21894 mapValue!7727)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10296 true) setRest!10296))))

(declare-fun b!1541994 () Bool)

(declare-fun e!987379 () Bool)

(declare-fun tp!447381 () Bool)

(assert (=> b!1541994 (= e!987379 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 mapValue!7727)))) e!987380 tp_is_empty!7049 setRes!10296 tp!447381))))

(declare-fun condSetEmpty!10296 () Bool)

(assert (=> b!1541994 (= condSetEmpty!10296 (= (_2!9012 (h!21894 mapValue!7727)) ((as const (Array Context!1474 Bool)) false)))))

(assert (=> mapNonEmpty!7726 (= tp!447210 e!987379)))

(declare-fun b!1541995 () Bool)

(declare-fun tp!447382 () Bool)

(assert (=> b!1541995 (= e!987381 tp!447382)))

(declare-fun setIsEmpty!10296 () Bool)

(assert (=> setIsEmpty!10296 setRes!10296))

(assert (= b!1541994 b!1541993))

(assert (= (and b!1541994 condSetEmpty!10296) setIsEmpty!10296))

(assert (= (and b!1541994 (not condSetEmpty!10296)) setNonEmpty!10296))

(assert (= setNonEmpty!10296 b!1541995))

(assert (= (and mapNonEmpty!7726 ((_ is Cons!16493) mapValue!7727)) b!1541994))

(declare-fun m!1815502 () Bool)

(assert (=> setNonEmpty!10296 m!1815502))

(declare-fun m!1815504 () Bool)

(assert (=> b!1541994 m!1815504))

(declare-fun e!987384 () Bool)

(declare-fun tp!447389 () Bool)

(declare-fun b!1541996 () Bool)

(declare-fun e!987382 () Bool)

(declare-fun tp!447387 () Bool)

(declare-fun setRes!10297 () Bool)

(assert (=> b!1541996 (= e!987382 (and tp!447389 (inv!21760 (_2!9013 (_1!9014 (h!21895 mapDefault!7726)))) e!987384 tp_is_empty!7049 setRes!10297 tp!447387))))

(declare-fun condSetEmpty!10297 () Bool)

(assert (=> b!1541996 (= condSetEmpty!10297 (= (_2!9014 (h!21895 mapDefault!7726)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun setNonEmpty!10297 () Bool)

(declare-fun e!987383 () Bool)

(declare-fun tp!447388 () Bool)

(declare-fun setElem!10297 () Context!1474)

(assert (=> setNonEmpty!10297 (= setRes!10297 (and tp!447388 (inv!21760 setElem!10297) e!987383))))

(declare-fun setRest!10297 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10297 (= (_2!9014 (h!21895 mapDefault!7726)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10297 true) setRest!10297))))

(declare-fun b!1541997 () Bool)

(declare-fun tp!447386 () Bool)

(assert (=> b!1541997 (= e!987383 tp!447386)))

(declare-fun b!1541998 () Bool)

(declare-fun tp!447385 () Bool)

(assert (=> b!1541998 (= e!987384 tp!447385)))

(declare-fun setIsEmpty!10297 () Bool)

(assert (=> setIsEmpty!10297 setRes!10297))

(assert (=> b!1541773 (= tp!447220 e!987382)))

(assert (= b!1541996 b!1541998))

(assert (= (and b!1541996 condSetEmpty!10297) setIsEmpty!10297))

(assert (= (and b!1541996 (not condSetEmpty!10297)) setNonEmpty!10297))

(assert (= setNonEmpty!10297 b!1541997))

(assert (= (and b!1541773 ((_ is Cons!16494) mapDefault!7726)) b!1541996))

(declare-fun m!1815506 () Bool)

(assert (=> b!1541996 m!1815506))

(declare-fun m!1815508 () Bool)

(assert (=> setNonEmpty!10297 m!1815508))

(declare-fun mapValue!7736 () List!16562)

(declare-fun e!987397 () Bool)

(declare-fun b!1542013 () Bool)

(declare-fun tp!447418 () Bool)

(declare-fun tp!447419 () Bool)

(declare-fun setRes!10303 () Bool)

(declare-fun e!987400 () Bool)

(assert (=> b!1542013 (= e!987397 (and tp!447418 (inv!21760 (_2!9013 (_1!9014 (h!21895 mapValue!7736)))) e!987400 tp_is_empty!7049 setRes!10303 tp!447419))))

(declare-fun condSetEmpty!10303 () Bool)

(assert (=> b!1542013 (= condSetEmpty!10303 (= (_2!9014 (h!21895 mapValue!7736)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun mapIsEmpty!7736 () Bool)

(declare-fun mapRes!7736 () Bool)

(assert (=> mapIsEmpty!7736 mapRes!7736))

(declare-fun b!1542014 () Bool)

(declare-fun e!987401 () Bool)

(declare-fun tp!447422 () Bool)

(assert (=> b!1542014 (= e!987401 tp!447422)))

(declare-fun b!1542015 () Bool)

(declare-fun e!987399 () Bool)

(declare-fun tp!447415 () Bool)

(assert (=> b!1542015 (= e!987399 tp!447415)))

(declare-fun setIsEmpty!10303 () Bool)

(assert (=> setIsEmpty!10303 setRes!10303))

(declare-fun b!1542016 () Bool)

(declare-fun tp!447414 () Bool)

(assert (=> b!1542016 (= e!987400 tp!447414)))

(declare-fun tp!447413 () Bool)

(declare-fun setElem!10302 () Context!1474)

(declare-fun setNonEmpty!10302 () Bool)

(assert (=> setNonEmpty!10302 (= setRes!10303 (and tp!447413 (inv!21760 setElem!10302) e!987401))))

(declare-fun setRest!10302 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10302 (= (_2!9014 (h!21895 mapValue!7736)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10302 true) setRest!10302))))

(declare-fun b!1542017 () Bool)

(declare-fun e!987398 () Bool)

(declare-fun tp!447417 () Bool)

(assert (=> b!1542017 (= e!987398 tp!447417)))

(declare-fun e!987402 () Bool)

(declare-fun tp!447420 () Bool)

(declare-fun setRes!10302 () Bool)

(declare-fun mapDefault!7736 () List!16562)

(declare-fun b!1542018 () Bool)

(declare-fun tp!447421 () Bool)

(assert (=> b!1542018 (= e!987402 (and tp!447421 (inv!21760 (_2!9013 (_1!9014 (h!21895 mapDefault!7736)))) e!987399 tp_is_empty!7049 setRes!10302 tp!447420))))

(declare-fun condSetEmpty!10302 () Bool)

(assert (=> b!1542018 (= condSetEmpty!10302 (= (_2!9014 (h!21895 mapDefault!7736)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun condMapEmpty!7736 () Bool)

(assert (=> mapNonEmpty!7725 (= condMapEmpty!7736 (= mapRest!7726 ((as const (Array (_ BitVec 32) List!16562)) mapDefault!7736)))))

(assert (=> mapNonEmpty!7725 (= tp!447217 (and e!987402 mapRes!7736))))

(declare-fun setIsEmpty!10302 () Bool)

(assert (=> setIsEmpty!10302 setRes!10302))

(declare-fun mapNonEmpty!7736 () Bool)

(declare-fun tp!447412 () Bool)

(assert (=> mapNonEmpty!7736 (= mapRes!7736 (and tp!447412 e!987397))))

(declare-fun mapRest!7736 () (Array (_ BitVec 32) List!16562))

(declare-fun mapKey!7736 () (_ BitVec 32))

(assert (=> mapNonEmpty!7736 (= mapRest!7726 (store mapRest!7736 mapKey!7736 mapValue!7736))))

(declare-fun tp!447416 () Bool)

(declare-fun setElem!10303 () Context!1474)

(declare-fun setNonEmpty!10303 () Bool)

(assert (=> setNonEmpty!10303 (= setRes!10302 (and tp!447416 (inv!21760 setElem!10303) e!987398))))

(declare-fun setRest!10303 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10303 (= (_2!9014 (h!21895 mapDefault!7736)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10303 true) setRest!10303))))

(assert (= (and mapNonEmpty!7725 condMapEmpty!7736) mapIsEmpty!7736))

(assert (= (and mapNonEmpty!7725 (not condMapEmpty!7736)) mapNonEmpty!7736))

(assert (= b!1542013 b!1542016))

(assert (= (and b!1542013 condSetEmpty!10303) setIsEmpty!10303))

(assert (= (and b!1542013 (not condSetEmpty!10303)) setNonEmpty!10302))

(assert (= setNonEmpty!10302 b!1542014))

(assert (= (and mapNonEmpty!7736 ((_ is Cons!16494) mapValue!7736)) b!1542013))

(assert (= b!1542018 b!1542015))

(assert (= (and b!1542018 condSetEmpty!10302) setIsEmpty!10302))

(assert (= (and b!1542018 (not condSetEmpty!10302)) setNonEmpty!10303))

(assert (= setNonEmpty!10303 b!1542017))

(assert (= (and mapNonEmpty!7725 ((_ is Cons!16494) mapDefault!7736)) b!1542018))

(declare-fun m!1815510 () Bool)

(assert (=> mapNonEmpty!7736 m!1815510))

(declare-fun m!1815512 () Bool)

(assert (=> setNonEmpty!10303 m!1815512))

(declare-fun m!1815514 () Bool)

(assert (=> setNonEmpty!10302 m!1815514))

(declare-fun m!1815516 () Bool)

(assert (=> b!1542018 m!1815516))

(declare-fun m!1815518 () Bool)

(assert (=> b!1542013 m!1815518))

(declare-fun e!987403 () Bool)

(declare-fun tp!447425 () Bool)

(declare-fun b!1542019 () Bool)

(declare-fun e!987405 () Bool)

(declare-fun setRes!10304 () Bool)

(declare-fun tp!447427 () Bool)

(assert (=> b!1542019 (= e!987403 (and tp!447427 (inv!21760 (_2!9013 (_1!9014 (h!21895 mapValue!7726)))) e!987405 tp_is_empty!7049 setRes!10304 tp!447425))))

(declare-fun condSetEmpty!10304 () Bool)

(assert (=> b!1542019 (= condSetEmpty!10304 (= (_2!9014 (h!21895 mapValue!7726)) ((as const (Array Context!1474 Bool)) false)))))

(declare-fun e!987404 () Bool)

(declare-fun tp!447426 () Bool)

(declare-fun setNonEmpty!10304 () Bool)

(declare-fun setElem!10304 () Context!1474)

(assert (=> setNonEmpty!10304 (= setRes!10304 (and tp!447426 (inv!21760 setElem!10304) e!987404))))

(declare-fun setRest!10304 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10304 (= (_2!9014 (h!21895 mapValue!7726)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10304 true) setRest!10304))))

(declare-fun b!1542020 () Bool)

(declare-fun tp!447424 () Bool)

(assert (=> b!1542020 (= e!987404 tp!447424)))

(declare-fun b!1542021 () Bool)

(declare-fun tp!447423 () Bool)

(assert (=> b!1542021 (= e!987405 tp!447423)))

(declare-fun setIsEmpty!10304 () Bool)

(assert (=> setIsEmpty!10304 setRes!10304))

(assert (=> mapNonEmpty!7725 (= tp!447212 e!987403)))

(assert (= b!1542019 b!1542021))

(assert (= (and b!1542019 condSetEmpty!10304) setIsEmpty!10304))

(assert (= (and b!1542019 (not condSetEmpty!10304)) setNonEmpty!10304))

(assert (= setNonEmpty!10304 b!1542020))

(assert (= (and mapNonEmpty!7725 ((_ is Cons!16494) mapValue!7726)) b!1542019))

(declare-fun m!1815520 () Bool)

(assert (=> b!1542019 m!1815520))

(declare-fun m!1815522 () Bool)

(assert (=> setNonEmpty!10304 m!1815522))

(declare-fun b!1542022 () Bool)

(declare-fun e!987407 () Bool)

(declare-fun tp!447430 () Bool)

(assert (=> b!1542022 (= e!987407 tp!447430)))

(declare-fun e!987408 () Bool)

(declare-fun setElem!10305 () Context!1474)

(declare-fun setRes!10305 () Bool)

(declare-fun tp!447431 () Bool)

(declare-fun setNonEmpty!10305 () Bool)

(assert (=> setNonEmpty!10305 (= setRes!10305 (and tp!447431 (inv!21760 setElem!10305) e!987408))))

(declare-fun setRest!10305 () (InoxSet Context!1474))

(assert (=> setNonEmpty!10305 (= (_2!9012 (h!21894 mapDefault!7727)) ((_ map or) (store ((as const (Array Context!1474 Bool)) false) setElem!10305 true) setRest!10305))))

(declare-fun tp!447428 () Bool)

(declare-fun e!987406 () Bool)

(declare-fun b!1542023 () Bool)

(assert (=> b!1542023 (= e!987406 (and (inv!21760 (_1!9011 (_1!9012 (h!21894 mapDefault!7727)))) e!987407 tp_is_empty!7049 setRes!10305 tp!447428))))

(declare-fun condSetEmpty!10305 () Bool)

(assert (=> b!1542023 (= condSetEmpty!10305 (= (_2!9012 (h!21894 mapDefault!7727)) ((as const (Array Context!1474 Bool)) false)))))

(assert (=> b!1541763 (= tp!447223 e!987406)))

(declare-fun b!1542024 () Bool)

(declare-fun tp!447429 () Bool)

(assert (=> b!1542024 (= e!987408 tp!447429)))

(declare-fun setIsEmpty!10305 () Bool)

(assert (=> setIsEmpty!10305 setRes!10305))

(assert (= b!1542023 b!1542022))

(assert (= (and b!1542023 condSetEmpty!10305) setIsEmpty!10305))

(assert (= (and b!1542023 (not condSetEmpty!10305)) setNonEmpty!10305))

(assert (= setNonEmpty!10305 b!1542024))

(assert (= (and b!1541763 ((_ is Cons!16493) mapDefault!7727)) b!1542023))

(declare-fun m!1815524 () Bool)

(assert (=> setNonEmpty!10305 m!1815524))

(declare-fun m!1815526 () Bool)

(assert (=> b!1542023 m!1815526))

(check-sat (not b!1541998) (not setNonEmpty!10272) (not b_next!41103) (not b!1541971) (not b!1542013) (not b_next!41101) (not b!1541885) (not b_next!41105) (not b!1541950) (not b!1541949) (not b!1541887) (not b!1541991) (not b!1541920) b_and!107273 (not b!1541777) (not b_next!41091) (not b!1541858) (not b!1541814) (not b!1541796) (not b!1541966) (not b!1541951) (not setNonEmpty!10277) (not b!1541864) (not b_next!41099) (not d!458747) (not b!1541987) (not b!1542019) (not d!458741) (not b!1541760) (not b!1541860) (not b!1541785) (not setNonEmpty!10305) (not b!1541965) (not d!458711) (not b!1542017) (not d!458735) (not setNonEmpty!10303) (not b!1541794) (not setNonEmpty!10289) (not d!458731) (not setNonEmpty!10281) (not b!1541919) (not b!1541988) (not b!1541888) (not b_next!41095) (not b!1541967) (not b!1541948) (not b!1541990) (not b!1541917) (not setNonEmpty!10287) (not b!1542020) (not b!1541806) (not d!458749) (not b!1542014) (not b_next!41093) (not b!1542018) (not b!1541962) (not b!1541908) (not setNonEmpty!10296) (not b!1541787) (not b!1541788) (not d!458745) (not d!458725) (not b!1541883) (not b!1541997) (not b!1541793) (not b!1541963) (not setNonEmpty!10294) (not b!1541817) (not b!1541859) (not b!1541884) (not b!1541946) (not b!1541748) (not b_next!41109) (not mapNonEmpty!7736) (not b!1541992) tp_is_empty!7049 b_and!107277 (not b!1541790) b_and!107265 (not b!1541909) (not b!1541989) (not b!1541994) (not b!1541947) (not b!1541886) (not b_next!41107) (not b!1541820) (not b!1541996) (not d!458755) (not b!1541970) (not setNonEmpty!10295) b_and!107283 (not b!1541807) (not b!1541936) (not b!1542023) (not b!1542016) (not b!1541811) (not mapNonEmpty!7733) (not b!1541935) (not setNonEmpty!10288) (not b!1541922) (not b!1541898) (not b!1541808) (not b!1542022) (not b!1541897) (not b!1541836) (not b!1542021) (not d!458739) b_and!107281 b_and!107269 (not b!1541923) (not setNonEmpty!10286) (not mapNonEmpty!7730) (not b!1541865) (not b!1542024) (not b!1541937) (not setNonEmpty!10273) (not setNonEmpty!10276) (not b!1541826) b_and!107271 (not setNonEmpty!10297) (not b!1541918) (not b!1541899) (not b!1541964) (not b!1541825) (not b!1541866) (not b!1541993) (not d!458717) (not b!1542015) (not setNonEmpty!10302) (not d!458721) (not b!1541972) (not setNonEmpty!10280) (not b_next!41097) (not setNonEmpty!10304) b_and!107275 b_and!107279 (not d!458743) (not b!1541863) (not b!1541834) (not b!1541921) (not b!1541862) (not b!1541995) (not b!1541968) (not b!1541969) b_and!107267)
(check-sat (not b_next!41101) (not b_next!41105) b_and!107273 (not b_next!41091) (not b_next!41099) (not b_next!41095) (not b_next!41093) b_and!107283 b_and!107281 b_and!107269 (not b_next!41103) b_and!107271 (not b_next!41097) b_and!107267 (not b_next!41109) b_and!107277 b_and!107265 (not b_next!41107) b_and!107275 b_and!107279)
