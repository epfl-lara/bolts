; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143566 () Bool)

(assert start!143566)

(declare-fun b!1546165 () Bool)

(declare-fun b_free!40579 () Bool)

(declare-fun b_next!41283 () Bool)

(assert (=> b!1546165 (= b_free!40579 (not b_next!41283))))

(declare-fun tp!450130 () Bool)

(declare-fun b_and!107669 () Bool)

(assert (=> b!1546165 (= tp!450130 b_and!107669)))

(declare-fun b!1546148 () Bool)

(declare-fun b_free!40581 () Bool)

(declare-fun b_next!41285 () Bool)

(assert (=> b!1546148 (= b_free!40581 (not b_next!41285))))

(declare-fun tp!450127 () Bool)

(declare-fun b_and!107671 () Bool)

(assert (=> b!1546148 (= tp!450127 b_and!107671)))

(declare-fun b!1546171 () Bool)

(declare-fun b_free!40583 () Bool)

(declare-fun b_next!41287 () Bool)

(assert (=> b!1546171 (= b_free!40583 (not b_next!41287))))

(declare-fun tp!450126 () Bool)

(declare-fun b_and!107673 () Bool)

(assert (=> b!1546171 (= tp!450126 b_and!107673)))

(declare-fun b_free!40585 () Bool)

(declare-fun b_next!41289 () Bool)

(assert (=> b!1546171 (= b_free!40585 (not b_next!41289))))

(declare-fun tp!450125 () Bool)

(declare-fun b_and!107675 () Bool)

(assert (=> b!1546171 (= tp!450125 b_and!107675)))

(declare-fun b!1546143 () Bool)

(declare-fun b_free!40587 () Bool)

(declare-fun b_next!41291 () Bool)

(assert (=> b!1546143 (= b_free!40587 (not b_next!41291))))

(declare-fun tp!450135 () Bool)

(declare-fun b_and!107677 () Bool)

(assert (=> b!1546143 (= tp!450135 b_and!107677)))

(declare-fun b!1546156 () Bool)

(declare-fun b_free!40589 () Bool)

(declare-fun b_next!41293 () Bool)

(assert (=> b!1546156 (= b_free!40589 (not b_next!41293))))

(declare-fun tp!450124 () Bool)

(declare-fun b_and!107679 () Bool)

(assert (=> b!1546156 (= tp!450124 b_and!107679)))

(declare-fun b!1546163 () Bool)

(declare-fun b_free!40591 () Bool)

(declare-fun b_next!41295 () Bool)

(assert (=> b!1546163 (= b_free!40591 (not b_next!41295))))

(declare-fun tp!450119 () Bool)

(declare-fun b_and!107681 () Bool)

(assert (=> b!1546163 (= tp!450119 b_and!107681)))

(declare-fun b!1546166 () Bool)

(declare-fun b_free!40593 () Bool)

(declare-fun b_next!41297 () Bool)

(assert (=> b!1546166 (= b_free!40593 (not b_next!41297))))

(declare-fun tp!450142 () Bool)

(declare-fun b_and!107683 () Bool)

(assert (=> b!1546166 (= tp!450142 b_and!107683)))

(declare-fun mapIsEmpty!7866 () Bool)

(declare-fun mapRes!7868 () Bool)

(assert (=> mapIsEmpty!7866 mapRes!7868))

(declare-fun b!1546140 () Bool)

(declare-fun e!990367 () Bool)

(declare-fun e!990353 () Bool)

(assert (=> b!1546140 (= e!990367 e!990353)))

(declare-fun tp!450138 () Bool)

(declare-datatypes ((List!16618 0))(
  ( (Nil!16550) (Cons!16550 (h!21951 (_ BitVec 16)) (t!141021 List!16618)) )
))
(declare-datatypes ((TokenValue!2992 0))(
  ( (FloatLiteralValue!5984 (text!21389 List!16618)) (TokenValueExt!2991 (__x!10724 Int)) (Broken!14960 (value!92340 List!16618)) (Object!3059) (End!2992) (Def!2992) (Underscore!2992) (Match!2992) (Else!2992) (Error!2992) (Case!2992) (If!2992) (Extends!2992) (Abstract!2992) (Class!2992) (Val!2992) (DelimiterValue!5984 (del!3052 List!16618)) (KeywordValue!2998 (value!92341 List!16618)) (CommentValue!5984 (value!92342 List!16618)) (WhitespaceValue!5984 (value!92343 List!16618)) (IndentationValue!2992 (value!92344 List!16618)) (String!19245) (Int32!2992) (Broken!14961 (value!92345 List!16618)) (Boolean!2993) (Unit!25929) (OperatorValue!2995 (op!3052 List!16618)) (IdentifierValue!5984 (value!92346 List!16618)) (IdentifierValue!5985 (value!92347 List!16618)) (WhitespaceValue!5985 (value!92348 List!16618)) (True!5984) (False!5984) (Broken!14962 (value!92349 List!16618)) (Broken!14963 (value!92350 List!16618)) (True!5985) (RightBrace!2992) (RightBracket!2992) (Colon!2992) (Null!2992) (Comma!2992) (LeftBracket!2992) (False!5985) (LeftBrace!2992) (ImaginaryLiteralValue!2992 (text!21390 List!16618)) (StringLiteralValue!8976 (value!92351 List!16618)) (EOFValue!2992 (value!92352 List!16618)) (IdentValue!2992 (value!92353 List!16618)) (DelimiterValue!5985 (value!92354 List!16618)) (DedentValue!2992 (value!92355 List!16618)) (NewLineValue!2992 (value!92356 List!16618)) (IntegerValue!8976 (value!92357 (_ BitVec 32)) (text!21391 List!16618)) (IntegerValue!8977 (value!92358 Int) (text!21392 List!16618)) (Times!2992) (Or!2992) (Equal!2992) (Minus!2992) (Broken!14964 (value!92359 List!16618)) (And!2992) (Div!2992) (LessEqual!2992) (Mod!2992) (Concat!7221) (Not!2992) (Plus!2992) (SpaceValue!2992 (value!92360 List!16618)) (IntegerValue!8978 (value!92361 Int) (text!21393 List!16618)) (StringLiteralValue!8977 (text!21394 List!16618)) (FloatLiteralValue!5985 (text!21395 List!16618)) (BytesLiteralValue!2992 (value!92362 List!16618)) (CommentValue!5985 (value!92363 List!16618)) (StringLiteralValue!8978 (value!92364 List!16618)) (ErrorTokenValue!2992 (msg!3053 List!16618)) )
))
(declare-datatypes ((C!8636 0))(
  ( (C!8637 (val!4890 Int)) )
))
(declare-datatypes ((List!16619 0))(
  ( (Nil!16551) (Cons!16551 (h!21952 C!8636) (t!141022 List!16619)) )
))
(declare-datatypes ((IArray!11043 0))(
  ( (IArray!11044 (innerList!5579 List!16619)) )
))
(declare-datatypes ((Conc!5519 0))(
  ( (Node!5519 (left!13514 Conc!5519) (right!13844 Conc!5519) (csize!11268 Int) (cheight!5730 Int)) (Leaf!8179 (xs!8319 IArray!11043) (csize!11269 Int)) (Empty!5519) )
))
(declare-datatypes ((BalanceConc!10980 0))(
  ( (BalanceConc!10981 (c!252119 Conc!5519)) )
))
(declare-datatypes ((String!19246 0))(
  ( (String!19247 (value!92365 String)) )
))
(declare-datatypes ((Regex!4229 0))(
  ( (ElementMatch!4229 (c!252120 C!8636)) (Concat!7222 (regOne!8970 Regex!4229) (regTwo!8970 Regex!4229)) (EmptyExpr!4229) (Star!4229 (reg!4558 Regex!4229)) (EmptyLang!4229) (Union!4229 (regOne!8971 Regex!4229) (regTwo!8971 Regex!4229)) )
))
(declare-datatypes ((TokenValueInjection!5644 0))(
  ( (TokenValueInjection!5645 (toValue!4265 Int) (toChars!4124 Int)) )
))
(declare-datatypes ((Rule!5604 0))(
  ( (Rule!5605 (regex!2902 Regex!4229) (tag!3166 String!19246) (isSeparator!2902 Bool) (transformation!2902 TokenValueInjection!5644)) )
))
(declare-fun rule!240 () Rule!5604)

(declare-fun b!1546141 () Bool)

(declare-fun e!990377 () Bool)

(declare-fun e!990370 () Bool)

(declare-fun inv!21826 (String!19246) Bool)

(declare-fun inv!21827 (TokenValueInjection!5644) Bool)

(assert (=> b!1546141 (= e!990377 (and tp!450138 (inv!21826 (tag!3166 rule!240)) (inv!21827 (transformation!2902 rule!240)) e!990370))))

(declare-fun b!1546142 () Bool)

(declare-fun e!990361 () Bool)

(declare-fun e!990350 () Bool)

(assert (=> b!1546142 (= e!990361 e!990350)))

(declare-fun e!990355 () Bool)

(declare-fun e!990376 () Bool)

(assert (=> b!1546143 (= e!990355 (and e!990376 tp!450135))))

(declare-fun b!1546144 () Bool)

(declare-fun e!990379 () Bool)

(declare-fun e!990352 () Bool)

(assert (=> b!1546144 (= e!990379 e!990352)))

(declare-fun b!1546145 () Bool)

(declare-fun e!990374 () Bool)

(declare-datatypes ((List!16620 0))(
  ( (Nil!16552) (Cons!16552 (h!21953 Regex!4229) (t!141023 List!16620)) )
))
(declare-datatypes ((Context!1494 0))(
  ( (Context!1495 (exprs!1247 List!16620)) )
))
(declare-datatypes ((tuple3!1618 0))(
  ( (tuple3!1619 (_1!9082 Regex!4229) (_2!9082 Context!1494) (_3!1220 C!8636)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15724 0))(
  ( (tuple2!15725 (_1!9083 tuple3!1618) (_2!9083 (InoxSet Context!1494))) )
))
(declare-datatypes ((List!16621 0))(
  ( (Nil!16553) (Cons!16553 (h!21954 tuple2!15724) (t!141024 List!16621)) )
))
(declare-datatypes ((array!5794 0))(
  ( (array!5795 (arr!2574 (Array (_ BitVec 32) (_ BitVec 64))) (size!13368 (_ BitVec 32))) )
))
(declare-datatypes ((array!5796 0))(
  ( (array!5797 (arr!2575 (Array (_ BitVec 32) List!16621)) (size!13369 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3340 0))(
  ( (LongMapFixedSize!3341 (defaultEntry!2030 Int) (mask!4873 (_ BitVec 32)) (extraKeys!1917 (_ BitVec 32)) (zeroValue!1927 List!16621) (minValue!1927 List!16621) (_size!3421 (_ BitVec 32)) (_keys!1964 array!5794) (_values!1949 array!5796) (_vacant!1731 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6565 0))(
  ( (Cell!6566 (v!23361 LongMapFixedSize!3340)) )
))
(declare-datatypes ((MutLongMap!1670 0))(
  ( (LongMap!1670 (underlying!3549 Cell!6565)) (MutLongMapExt!1669 (__x!10725 Int)) )
))
(declare-fun lt!535573 () MutLongMap!1670)

(get-info :version)

(assert (=> b!1546145 (= e!990376 (and e!990374 ((_ is LongMap!1670) lt!535573)))))

(declare-datatypes ((Cell!6567 0))(
  ( (Cell!6568 (v!23362 MutLongMap!1670)) )
))
(declare-datatypes ((Hashable!1614 0))(
  ( (HashableExt!1613 (__x!10726 Int)) )
))
(declare-datatypes ((MutableMap!1614 0))(
  ( (MutableMapExt!1613 (__x!10727 Int)) (HashMap!1614 (underlying!3550 Cell!6567) (hashF!3533 Hashable!1614) (_size!3422 (_ BitVec 32)) (defaultValue!1774 Int)) )
))
(declare-datatypes ((CacheDown!982 0))(
  ( (CacheDown!983 (cache!1995 MutableMap!1614)) )
))
(declare-fun cacheDown!768 () CacheDown!982)

(assert (=> b!1546145 (= lt!535573 (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))))

(declare-fun mapNonEmpty!7866 () Bool)

(declare-fun mapRes!7866 () Bool)

(declare-fun tp!450133 () Bool)

(declare-fun tp!450139 () Bool)

(assert (=> mapNonEmpty!7866 (= mapRes!7866 (and tp!450133 tp!450139))))

(declare-datatypes ((tuple2!15726 0))(
  ( (tuple2!15727 (_1!9084 Context!1494) (_2!9084 C!8636)) )
))
(declare-datatypes ((tuple2!15728 0))(
  ( (tuple2!15729 (_1!9085 tuple2!15726) (_2!9085 (InoxSet Context!1494))) )
))
(declare-datatypes ((List!16622 0))(
  ( (Nil!16554) (Cons!16554 (h!21955 tuple2!15728) (t!141025 List!16622)) )
))
(declare-datatypes ((array!5798 0))(
  ( (array!5799 (arr!2576 (Array (_ BitVec 32) List!16622)) (size!13370 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1615 0))(
  ( (HashableExt!1614 (__x!10728 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3342 0))(
  ( (LongMapFixedSize!3343 (defaultEntry!2031 Int) (mask!4874 (_ BitVec 32)) (extraKeys!1918 (_ BitVec 32)) (zeroValue!1928 List!16622) (minValue!1928 List!16622) (_size!3423 (_ BitVec 32)) (_keys!1965 array!5794) (_values!1950 array!5798) (_vacant!1732 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6569 0))(
  ( (Cell!6570 (v!23363 LongMapFixedSize!3342)) )
))
(declare-datatypes ((MutLongMap!1671 0))(
  ( (LongMap!1671 (underlying!3551 Cell!6569)) (MutLongMapExt!1670 (__x!10729 Int)) )
))
(declare-datatypes ((Cell!6571 0))(
  ( (Cell!6572 (v!23364 MutLongMap!1671)) )
))
(declare-datatypes ((MutableMap!1615 0))(
  ( (MutableMapExt!1614 (__x!10730 Int)) (HashMap!1615 (underlying!3552 Cell!6571) (hashF!3534 Hashable!1615) (_size!3424 (_ BitVec 32)) (defaultValue!1775 Int)) )
))
(declare-datatypes ((CacheUp!974 0))(
  ( (CacheUp!975 (cache!1996 MutableMap!1615)) )
))
(declare-fun cacheUp!755 () CacheUp!974)

(declare-fun mapValue!7868 () List!16622)

(declare-fun mapRest!7867 () (Array (_ BitVec 32) List!16622))

(declare-fun mapKey!7868 () (_ BitVec 32))

(assert (=> mapNonEmpty!7866 (= (arr!2576 (_values!1950 (v!23363 (underlying!3551 (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))))) (store mapRest!7867 mapKey!7868 mapValue!7868))))

(declare-fun b!1546146 () Bool)

(declare-fun e!990349 () Bool)

(assert (=> b!1546146 (= e!990349 e!990367)))

(declare-fun b!1546147 () Bool)

(declare-fun e!990362 () Bool)

(declare-fun tp!450141 () Bool)

(assert (=> b!1546147 (= e!990362 (and tp!450141 mapRes!7868))))

(declare-fun condMapEmpty!7867 () Bool)

(declare-datatypes ((tuple3!1620 0))(
  ( (tuple3!1621 (_1!9086 (InoxSet Context!1494)) (_2!9086 Int) (_3!1221 Int)) )
))
(declare-datatypes ((tuple2!15730 0))(
  ( (tuple2!15731 (_1!9087 tuple3!1620) (_2!9087 Int)) )
))
(declare-datatypes ((List!16623 0))(
  ( (Nil!16555) (Cons!16555 (h!21956 tuple2!15730) (t!141026 List!16623)) )
))
(declare-datatypes ((array!5800 0))(
  ( (array!5801 (arr!2577 (Array (_ BitVec 32) List!16623)) (size!13371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3344 0))(
  ( (LongMapFixedSize!3345 (defaultEntry!2032 Int) (mask!4875 (_ BitVec 32)) (extraKeys!1919 (_ BitVec 32)) (zeroValue!1929 List!16623) (minValue!1929 List!16623) (_size!3425 (_ BitVec 32)) (_keys!1966 array!5794) (_values!1951 array!5800) (_vacant!1733 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6573 0))(
  ( (Cell!6574 (v!23365 LongMapFixedSize!3344)) )
))
(declare-datatypes ((Hashable!1616 0))(
  ( (HashableExt!1615 (__x!10731 Int)) )
))
(declare-datatypes ((MutLongMap!1672 0))(
  ( (LongMap!1672 (underlying!3553 Cell!6573)) (MutLongMapExt!1671 (__x!10732 Int)) )
))
(declare-datatypes ((Cell!6575 0))(
  ( (Cell!6576 (v!23366 MutLongMap!1672)) )
))
(declare-datatypes ((MutableMap!1616 0))(
  ( (MutableMapExt!1615 (__x!10733 Int)) (HashMap!1616 (underlying!3554 Cell!6575) (hashF!3535 Hashable!1616) (_size!3426 (_ BitVec 32)) (defaultValue!1776 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!400 0))(
  ( (CacheFurthestNullable!401 (cache!1997 MutableMap!1616) (totalInput!2403 BalanceConc!10980)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!400)

(declare-fun mapDefault!7867 () List!16623)

(assert (=> b!1546147 (= condMapEmpty!7867 (= (arr!2577 (_values!1951 (v!23365 (underlying!3553 (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16623)) mapDefault!7867)))))

(declare-fun e!990378 () Bool)

(declare-fun tp!450121 () Bool)

(declare-fun tp!450120 () Bool)

(declare-fun array_inv!1853 (array!5794) Bool)

(declare-fun array_inv!1854 (array!5798) Bool)

(assert (=> b!1546148 (= e!990353 (and tp!450127 tp!450120 tp!450121 (array_inv!1853 (_keys!1965 (v!23363 (underlying!3551 (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))))) (array_inv!1854 (_values!1950 (v!23363 (underlying!3551 (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))))) e!990378))))

(declare-fun b!1546149 () Bool)

(declare-fun res!691643 () Bool)

(declare-fun e!990372 () Bool)

(assert (=> b!1546149 (=> (not res!691643) (not e!990372))))

(declare-fun valid!1354 (CacheFurthestNullable!400) Bool)

(assert (=> b!1546149 (= res!691643 (valid!1354 cacheFurthestNullable!103))))

(declare-fun b!1546150 () Bool)

(declare-fun e!990360 () Bool)

(declare-fun input!1676 () BalanceConc!10980)

(declare-fun tp!450134 () Bool)

(declare-fun inv!21828 (Conc!5519) Bool)

(assert (=> b!1546150 (= e!990360 (and (inv!21828 (c!252119 input!1676)) tp!450134))))

(declare-fun b!1546151 () Bool)

(assert (=> b!1546151 (= e!990372 false)))

(declare-fun b!1546152 () Bool)

(assert (=> b!1546152 (= e!990374 e!990379)))

(declare-fun b!1546153 () Bool)

(declare-fun e!990364 () Bool)

(declare-fun e!990359 () Bool)

(assert (=> b!1546153 (= e!990364 e!990359)))

(declare-fun b!1546154 () Bool)

(declare-fun e!990366 () Bool)

(declare-fun totalInput!568 () BalanceConc!10980)

(declare-fun tp!450144 () Bool)

(assert (=> b!1546154 (= e!990366 (and (inv!21828 (c!252119 totalInput!568)) tp!450144))))

(declare-fun b!1546155 () Bool)

(declare-fun e!990351 () Bool)

(declare-fun tp!450129 () Bool)

(assert (=> b!1546155 (= e!990351 (and (inv!21828 (c!252119 (totalInput!2403 cacheFurthestNullable!103))) tp!450129))))

(declare-fun e!990375 () Bool)

(declare-fun e!990369 () Bool)

(assert (=> b!1546156 (= e!990375 (and e!990369 tp!450124))))

(declare-fun mapIsEmpty!7867 () Bool)

(declare-fun mapRes!7867 () Bool)

(assert (=> mapIsEmpty!7867 mapRes!7867))

(declare-fun res!691640 () Bool)

(assert (=> start!143566 (=> (not res!691640) (not e!990372))))

(declare-datatypes ((LexerInterface!2551 0))(
  ( (LexerInterfaceExt!2548 (__x!10734 Int)) (Lexer!2549) )
))
(declare-fun thiss!16438 () LexerInterface!2551)

(assert (=> start!143566 (= res!691640 ((_ is Lexer!2549) thiss!16438))))

(assert (=> start!143566 e!990372))

(declare-fun inv!21829 (BalanceConc!10980) Bool)

(assert (=> start!143566 (and (inv!21829 totalInput!568) e!990366)))

(declare-fun inv!21830 (CacheUp!974) Bool)

(assert (=> start!143566 (and (inv!21830 cacheUp!755) e!990361)))

(declare-fun e!990363 () Bool)

(declare-fun inv!21831 (CacheFurthestNullable!400) Bool)

(assert (=> start!143566 (and (inv!21831 cacheFurthestNullable!103) e!990363)))

(assert (=> start!143566 (and (inv!21829 input!1676) e!990360)))

(assert (=> start!143566 e!990377))

(declare-fun e!990368 () Bool)

(declare-fun inv!21832 (CacheDown!982) Bool)

(assert (=> start!143566 (and (inv!21832 cacheDown!768) e!990368)))

(assert (=> start!143566 true))

(declare-fun b!1546157 () Bool)

(assert (=> b!1546157 (= e!990363 (and e!990375 (inv!21829 (totalInput!2403 cacheFurthestNullable!103)) e!990351))))

(declare-fun b!1546158 () Bool)

(declare-fun res!691641 () Bool)

(assert (=> b!1546158 (=> (not res!691641) (not e!990372))))

(declare-fun ruleValid!656 (LexerInterface!2551 Rule!5604) Bool)

(assert (=> b!1546158 (= res!691641 (ruleValid!656 thiss!16438 rule!240))))

(declare-fun b!1546159 () Bool)

(declare-fun e!990365 () Bool)

(declare-fun tp!450132 () Bool)

(assert (=> b!1546159 (= e!990365 (and tp!450132 mapRes!7867))))

(declare-fun condMapEmpty!7866 () Bool)

(declare-fun mapDefault!7866 () List!16621)

(assert (=> b!1546159 (= condMapEmpty!7866 (= (arr!2575 (_values!1949 (v!23361 (underlying!3549 (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16621)) mapDefault!7866)))))

(declare-fun b!1546160 () Bool)

(assert (=> b!1546160 (= e!990368 e!990355)))

(declare-fun b!1546161 () Bool)

(declare-fun res!691644 () Bool)

(assert (=> b!1546161 (=> (not res!691644) (not e!990372))))

(declare-fun valid!1355 (CacheUp!974) Bool)

(assert (=> b!1546161 (= res!691644 (valid!1355 cacheUp!755))))

(declare-fun b!1546162 () Bool)

(declare-fun tp!450131 () Bool)

(assert (=> b!1546162 (= e!990378 (and tp!450131 mapRes!7866))))

(declare-fun condMapEmpty!7868 () Bool)

(declare-fun mapDefault!7868 () List!16622)

(assert (=> b!1546162 (= condMapEmpty!7868 (= (arr!2576 (_values!1950 (v!23363 (underlying!3551 (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16622)) mapDefault!7868)))))

(declare-fun tp!450143 () Bool)

(declare-fun tp!450122 () Bool)

(declare-fun array_inv!1855 (array!5796) Bool)

(assert (=> b!1546163 (= e!990352 (and tp!450119 tp!450143 tp!450122 (array_inv!1853 (_keys!1964 (v!23361 (underlying!3549 (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))))) (array_inv!1855 (_values!1949 (v!23361 (underlying!3549 (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))))) e!990365))))

(declare-fun mapNonEmpty!7867 () Bool)

(declare-fun tp!450140 () Bool)

(declare-fun tp!450137 () Bool)

(assert (=> mapNonEmpty!7867 (= mapRes!7867 (and tp!450140 tp!450137))))

(declare-fun mapValue!7867 () List!16621)

(declare-fun mapKey!7867 () (_ BitVec 32))

(declare-fun mapRest!7866 () (Array (_ BitVec 32) List!16621))

(assert (=> mapNonEmpty!7867 (= (arr!2575 (_values!1949 (v!23361 (underlying!3549 (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))))) (store mapRest!7866 mapKey!7867 mapValue!7867))))

(declare-fun mapNonEmpty!7868 () Bool)

(declare-fun tp!450118 () Bool)

(declare-fun tp!450136 () Bool)

(assert (=> mapNonEmpty!7868 (= mapRes!7868 (and tp!450118 tp!450136))))

(declare-fun mapKey!7866 () (_ BitVec 32))

(declare-fun mapValue!7866 () List!16623)

(declare-fun mapRest!7868 () (Array (_ BitVec 32) List!16623))

(assert (=> mapNonEmpty!7868 (= (arr!2577 (_values!1951 (v!23365 (underlying!3553 (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))))) (store mapRest!7868 mapKey!7866 mapValue!7866))))

(declare-fun b!1546164 () Bool)

(declare-fun res!691645 () Bool)

(assert (=> b!1546164 (=> (not res!691645) (not e!990372))))

(declare-fun valid!1356 (CacheDown!982) Bool)

(assert (=> b!1546164 (= res!691645 (valid!1356 cacheDown!768))))

(declare-fun tp!450128 () Bool)

(declare-fun tp!450123 () Bool)

(declare-fun array_inv!1856 (array!5800) Bool)

(assert (=> b!1546165 (= e!990359 (and tp!450130 tp!450123 tp!450128 (array_inv!1853 (_keys!1966 (v!23365 (underlying!3553 (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))))) (array_inv!1856 (_values!1951 (v!23365 (underlying!3553 (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))))) e!990362))))

(declare-fun e!990371 () Bool)

(assert (=> b!1546166 (= e!990350 (and e!990371 tp!450142))))

(declare-fun b!1546167 () Bool)

(declare-fun lt!535571 () MutLongMap!1671)

(assert (=> b!1546167 (= e!990371 (and e!990349 ((_ is LongMap!1671) lt!535571)))))

(assert (=> b!1546167 (= lt!535571 (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))))

(declare-fun mapIsEmpty!7868 () Bool)

(assert (=> mapIsEmpty!7868 mapRes!7866))

(declare-fun b!1546168 () Bool)

(declare-fun res!691642 () Bool)

(assert (=> b!1546168 (=> (not res!691642) (not e!990372))))

(declare-fun isSuffix!345 (List!16619 List!16619) Bool)

(declare-fun list!6449 (BalanceConc!10980) List!16619)

(assert (=> b!1546168 (= res!691642 (isSuffix!345 (list!6449 input!1676) (list!6449 totalInput!568)))))

(declare-fun b!1546169 () Bool)

(declare-fun e!990354 () Bool)

(declare-fun lt!535572 () MutLongMap!1672)

(assert (=> b!1546169 (= e!990369 (and e!990354 ((_ is LongMap!1672) lt!535572)))))

(assert (=> b!1546169 (= lt!535572 (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))))

(declare-fun b!1546170 () Bool)

(assert (=> b!1546170 (= e!990354 e!990364)))

(assert (=> b!1546171 (= e!990370 (and tp!450126 tp!450125))))

(assert (= (and start!143566 res!691640) b!1546158))

(assert (= (and b!1546158 res!691641) b!1546161))

(assert (= (and b!1546161 res!691644) b!1546164))

(assert (= (and b!1546164 res!691645) b!1546149))

(assert (= (and b!1546149 res!691643) b!1546168))

(assert (= (and b!1546168 res!691642) b!1546151))

(assert (= start!143566 b!1546154))

(assert (= (and b!1546162 condMapEmpty!7868) mapIsEmpty!7868))

(assert (= (and b!1546162 (not condMapEmpty!7868)) mapNonEmpty!7866))

(assert (= b!1546148 b!1546162))

(assert (= b!1546140 b!1546148))

(assert (= b!1546146 b!1546140))

(assert (= (and b!1546167 ((_ is LongMap!1671) (v!23364 (underlying!3552 (cache!1996 cacheUp!755))))) b!1546146))

(assert (= b!1546166 b!1546167))

(assert (= (and b!1546142 ((_ is HashMap!1615) (cache!1996 cacheUp!755))) b!1546166))

(assert (= start!143566 b!1546142))

(assert (= (and b!1546147 condMapEmpty!7867) mapIsEmpty!7866))

(assert (= (and b!1546147 (not condMapEmpty!7867)) mapNonEmpty!7868))

(assert (= b!1546165 b!1546147))

(assert (= b!1546153 b!1546165))

(assert (= b!1546170 b!1546153))

(assert (= (and b!1546169 ((_ is LongMap!1672) (v!23366 (underlying!3554 (cache!1997 cacheFurthestNullable!103))))) b!1546170))

(assert (= b!1546156 b!1546169))

(assert (= (and b!1546157 ((_ is HashMap!1616) (cache!1997 cacheFurthestNullable!103))) b!1546156))

(assert (= b!1546157 b!1546155))

(assert (= start!143566 b!1546157))

(assert (= start!143566 b!1546150))

(assert (= b!1546141 b!1546171))

(assert (= start!143566 b!1546141))

(assert (= (and b!1546159 condMapEmpty!7866) mapIsEmpty!7867))

(assert (= (and b!1546159 (not condMapEmpty!7866)) mapNonEmpty!7867))

(assert (= b!1546163 b!1546159))

(assert (= b!1546144 b!1546163))

(assert (= b!1546152 b!1546144))

(assert (= (and b!1546145 ((_ is LongMap!1670) (v!23362 (underlying!3550 (cache!1995 cacheDown!768))))) b!1546152))

(assert (= b!1546143 b!1546145))

(assert (= (and b!1546160 ((_ is HashMap!1614) (cache!1995 cacheDown!768))) b!1546143))

(assert (= start!143566 b!1546160))

(declare-fun m!1819951 () Bool)

(assert (=> b!1546163 m!1819951))

(declare-fun m!1819953 () Bool)

(assert (=> b!1546163 m!1819953))

(declare-fun m!1819955 () Bool)

(assert (=> mapNonEmpty!7867 m!1819955))

(declare-fun m!1819957 () Bool)

(assert (=> b!1546141 m!1819957))

(declare-fun m!1819959 () Bool)

(assert (=> b!1546141 m!1819959))

(declare-fun m!1819961 () Bool)

(assert (=> b!1546150 m!1819961))

(declare-fun m!1819963 () Bool)

(assert (=> b!1546157 m!1819963))

(declare-fun m!1819965 () Bool)

(assert (=> mapNonEmpty!7866 m!1819965))

(declare-fun m!1819967 () Bool)

(assert (=> mapNonEmpty!7868 m!1819967))

(declare-fun m!1819969 () Bool)

(assert (=> b!1546155 m!1819969))

(declare-fun m!1819971 () Bool)

(assert (=> b!1546168 m!1819971))

(declare-fun m!1819973 () Bool)

(assert (=> b!1546168 m!1819973))

(assert (=> b!1546168 m!1819971))

(assert (=> b!1546168 m!1819973))

(declare-fun m!1819975 () Bool)

(assert (=> b!1546168 m!1819975))

(declare-fun m!1819977 () Bool)

(assert (=> b!1546148 m!1819977))

(declare-fun m!1819979 () Bool)

(assert (=> b!1546148 m!1819979))

(declare-fun m!1819981 () Bool)

(assert (=> b!1546164 m!1819981))

(declare-fun m!1819983 () Bool)

(assert (=> b!1546149 m!1819983))

(declare-fun m!1819985 () Bool)

(assert (=> b!1546161 m!1819985))

(declare-fun m!1819987 () Bool)

(assert (=> start!143566 m!1819987))

(declare-fun m!1819989 () Bool)

(assert (=> start!143566 m!1819989))

(declare-fun m!1819991 () Bool)

(assert (=> start!143566 m!1819991))

(declare-fun m!1819993 () Bool)

(assert (=> start!143566 m!1819993))

(declare-fun m!1819995 () Bool)

(assert (=> start!143566 m!1819995))

(declare-fun m!1819997 () Bool)

(assert (=> b!1546165 m!1819997))

(declare-fun m!1819999 () Bool)

(assert (=> b!1546165 m!1819999))

(declare-fun m!1820001 () Bool)

(assert (=> b!1546158 m!1820001))

(declare-fun m!1820003 () Bool)

(assert (=> b!1546154 m!1820003))

(check-sat (not b!1546148) b_and!107677 (not b_next!41283) (not b!1546149) b_and!107669 (not mapNonEmpty!7868) (not b!1546165) b_and!107679 (not b!1546157) b_and!107671 (not mapNonEmpty!7867) (not b!1546168) b_and!107681 (not b_next!41297) (not b_next!41289) (not b!1546141) (not b_next!41291) (not b!1546162) (not b!1546161) (not b_next!41287) b_and!107683 (not b!1546158) (not b!1546147) (not b_next!41293) (not start!143566) (not b!1546164) (not b!1546155) (not b!1546154) (not b!1546159) b_and!107673 (not b_next!41285) (not b!1546150) (not b!1546163) (not mapNonEmpty!7866) (not b_next!41295) b_and!107675)
(check-sat b_and!107677 (not b_next!41283) (not b_next!41291) b_and!107669 (not b_next!41293) b_and!107679 b_and!107671 b_and!107681 (not b_next!41297) (not b_next!41289) (not b_next!41287) b_and!107683 b_and!107673 (not b_next!41285) (not b_next!41295) b_and!107675)
