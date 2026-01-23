; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1474 () Bool)

(assert start!1474)

(declare-fun b!32534 () Bool)

(declare-fun b_free!185 () Bool)

(declare-fun b_next!185 () Bool)

(assert (=> b!32534 (= b_free!185 (not b_next!185))))

(declare-fun tp!22353 () Bool)

(declare-fun b_and!185 () Bool)

(assert (=> b!32534 (= tp!22353 b_and!185)))

(declare-fun b!32531 () Bool)

(declare-fun b_free!187 () Bool)

(declare-fun b_next!187 () Bool)

(assert (=> b!32531 (= b_free!187 (not b_next!187))))

(declare-fun tp!22354 () Bool)

(declare-fun b_and!187 () Bool)

(assert (=> b!32531 (= tp!22354 b_and!187)))

(declare-fun b!32522 () Bool)

(declare-fun b_free!189 () Bool)

(declare-fun b_next!189 () Bool)

(assert (=> b!32522 (= b_free!189 (not b_next!189))))

(declare-fun tp!22360 () Bool)

(declare-fun b_and!189 () Bool)

(assert (=> b!32522 (= tp!22360 b_and!189)))

(declare-fun b_free!191 () Bool)

(declare-fun b_next!191 () Bool)

(assert (=> b!32522 (= b_free!191 (not b_next!191))))

(declare-fun tp!22348 () Bool)

(declare-fun b_and!191 () Bool)

(assert (=> b!32522 (= tp!22348 b_and!191)))

(declare-fun b!32537 () Bool)

(declare-fun b_free!193 () Bool)

(declare-fun b_next!193 () Bool)

(assert (=> b!32537 (= b_free!193 (not b_next!193))))

(declare-fun tp!22346 () Bool)

(declare-fun b_and!193 () Bool)

(assert (=> b!32537 (= tp!22346 b_and!193)))

(declare-fun b!32525 () Bool)

(declare-fun b_free!195 () Bool)

(declare-fun b_next!195 () Bool)

(assert (=> b!32525 (= b_free!195 (not b_next!195))))

(declare-fun tp!22355 () Bool)

(declare-fun b_and!195 () Bool)

(assert (=> b!32525 (= tp!22355 b_and!195)))

(declare-fun b!32512 () Bool)

(declare-fun res!27003 () Bool)

(declare-fun e!14423 () Bool)

(assert (=> b!32512 (=> (not res!27003) (not e!14423))))

(declare-datatypes ((C!1344 0))(
  ( (C!1345 (val!163 Int)) )
))
(declare-datatypes ((Regex!135 0))(
  ( (ElementMatch!135 (c!15261 C!1344)) (Concat!236 (regOne!782 Regex!135) (regTwo!782 Regex!135)) (EmptyExpr!135) (Star!135 (reg!464 Regex!135)) (EmptyLang!135) (Union!135 (regOne!783 Regex!135) (regTwo!783 Regex!135)) )
))
(declare-datatypes ((List!216 0))(
  ( (Nil!214) (Cons!214 (h!5610 Regex!135) (t!14806 List!216)) )
))
(declare-datatypes ((Context!34 0))(
  ( (Context!35 (exprs!517 List!216)) )
))
(declare-datatypes ((tuple3!22 0))(
  ( (tuple3!23 (_1!65 Regex!135) (_2!65 Context!34) (_3!11 C!1344)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!108 0))(
  ( (tuple2!109 (_1!66 tuple3!22) (_2!66 (InoxSet Context!34))) )
))
(declare-datatypes ((List!217 0))(
  ( (Nil!215) (Cons!215 (h!5611 tuple2!108) (t!14807 List!217)) )
))
(declare-datatypes ((Hashable!27 0))(
  ( (HashableExt!26 (__x!478 Int)) )
))
(declare-datatypes ((array!97 0))(
  ( (array!98 (arr!72 (Array (_ BitVec 32) (_ BitVec 64))) (size!296 (_ BitVec 32))) )
))
(declare-datatypes ((array!99 0))(
  ( (array!100 (arr!73 (Array (_ BitVec 32) List!217)) (size!297 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!54 0))(
  ( (LongMapFixedSize!55 (defaultEntry!360 Int) (mask!675 (_ BitVec 32)) (extraKeys!272 (_ BitVec 32)) (zeroValue!282 List!217) (minValue!282 List!217) (_size!190 (_ BitVec 32)) (_keys!315 array!97) (_values!304 array!99) (_vacant!87 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!105 0))(
  ( (Cell!106 (v!12016 LongMapFixedSize!54)) )
))
(declare-datatypes ((MutLongMap!27 0))(
  ( (LongMap!27 (underlying!253 Cell!105)) (MutLongMapExt!26 (__x!479 Int)) )
))
(declare-datatypes ((Cell!107 0))(
  ( (Cell!108 (v!12017 MutLongMap!27)) )
))
(declare-datatypes ((MutableMap!27 0))(
  ( (MutableMapExt!26 (__x!480 Int)) (HashMap!27 (underlying!254 Cell!107) (hashF!1887 Hashable!27) (_size!191 (_ BitVec 32)) (defaultValue!173 Int)) )
))
(declare-datatypes ((CacheDown!26 0))(
  ( (CacheDown!27 (cache!506 MutableMap!27)) )
))
(declare-fun cacheDown!485 () CacheDown!26)

(declare-fun valid!41 (CacheDown!26) Bool)

(assert (=> b!32512 (= res!27003 (valid!41 cacheDown!485))))

(declare-fun b!32513 () Bool)

(declare-fun e!14413 () Bool)

(declare-fun e!14420 () Bool)

(assert (=> b!32513 (= e!14413 e!14420)))

(declare-fun res!27006 () Bool)

(assert (=> b!32513 (=> (not res!27006) (not e!14420))))

(declare-datatypes ((List!218 0))(
  ( (Nil!216) (Cons!216 (h!5612 C!1344) (t!14808 List!218)) )
))
(declare-datatypes ((IArray!59 0))(
  ( (IArray!60 (innerList!87 List!218)) )
))
(declare-datatypes ((String!648 0))(
  ( (String!649 (value!5849 String)) )
))
(declare-datatypes ((List!219 0))(
  ( (Nil!217) (Cons!217 (h!5613 (_ BitVec 16)) (t!14809 List!219)) )
))
(declare-datatypes ((TokenValue!101 0))(
  ( (FloatLiteralValue!202 (text!1152 List!219)) (TokenValueExt!100 (__x!481 Int)) (Broken!505 (value!5850 List!219)) (Object!102) (End!101) (Def!101) (Underscore!101) (Match!101) (Else!101) (Error!101) (Case!101) (If!101) (Extends!101) (Abstract!101) (Class!101) (Val!101) (DelimiterValue!202 (del!161 List!219)) (KeywordValue!107 (value!5851 List!219)) (CommentValue!202 (value!5852 List!219)) (WhitespaceValue!202 (value!5853 List!219)) (IndentationValue!101 (value!5854 List!219)) (String!650) (Int32!101) (Broken!506 (value!5855 List!219)) (Boolean!102) (Unit!114) (OperatorValue!104 (op!161 List!219)) (IdentifierValue!202 (value!5856 List!219)) (IdentifierValue!203 (value!5857 List!219)) (WhitespaceValue!203 (value!5858 List!219)) (True!202) (False!202) (Broken!507 (value!5859 List!219)) (Broken!508 (value!5860 List!219)) (True!203) (RightBrace!101) (RightBracket!101) (Colon!101) (Null!101) (Comma!101) (LeftBracket!101) (False!203) (LeftBrace!101) (ImaginaryLiteralValue!101 (text!1153 List!219)) (StringLiteralValue!303 (value!5861 List!219)) (EOFValue!101 (value!5862 List!219)) (IdentValue!101 (value!5863 List!219)) (DelimiterValue!203 (value!5864 List!219)) (DedentValue!101 (value!5865 List!219)) (NewLineValue!101 (value!5866 List!219)) (IntegerValue!303 (value!5867 (_ BitVec 32)) (text!1154 List!219)) (IntegerValue!304 (value!5868 Int) (text!1155 List!219)) (Times!101) (Or!101) (Equal!101) (Minus!101) (Broken!509 (value!5869 List!219)) (And!101) (Div!101) (LessEqual!101) (Mod!101) (Concat!237) (Not!101) (Plus!101) (SpaceValue!101 (value!5870 List!219)) (IntegerValue!305 (value!5871 Int) (text!1156 List!219)) (StringLiteralValue!304 (text!1157 List!219)) (FloatLiteralValue!203 (text!1158 List!219)) (BytesLiteralValue!101 (value!5872 List!219)) (CommentValue!203 (value!5873 List!219)) (StringLiteralValue!305 (value!5874 List!219)) (ErrorTokenValue!101 (msg!162 List!219)) )
))
(declare-datatypes ((Conc!29 0))(
  ( (Node!29 (left!352 Conc!29) (right!682 Conc!29) (csize!288 Int) (cheight!240 Int)) (Leaf!161 (xs!2608 IArray!59) (csize!289 Int)) (Empty!29) )
))
(declare-datatypes ((BalanceConc!58 0))(
  ( (BalanceConc!59 (c!15262 Conc!29)) )
))
(declare-datatypes ((TokenValueInjection!26 0))(
  ( (TokenValueInjection!27 (toValue!588 Int) (toChars!447 Int)) )
))
(declare-datatypes ((Rule!22 0))(
  ( (Rule!23 (regex!111 Regex!135) (tag!289 String!648) (isSeparator!111 Bool) (transformation!111 TokenValueInjection!26)) )
))
(declare-datatypes ((Token!14 0))(
  ( (Token!15 (value!5875 TokenValue!101) (rule!600 Rule!22) (size!298 Int) (originalCharacters!178 List!218)) )
))
(declare-datatypes ((List!220 0))(
  ( (Nil!218) (Cons!218 (h!5614 Token!14) (t!14810 List!220)) )
))
(declare-datatypes ((IArray!61 0))(
  ( (IArray!62 (innerList!88 List!220)) )
))
(declare-datatypes ((Conc!30 0))(
  ( (Node!30 (left!353 Conc!30) (right!683 Conc!30) (csize!290 Int) (cheight!241 Int)) (Leaf!162 (xs!2609 IArray!61) (csize!291 Int)) (Empty!30) )
))
(declare-datatypes ((BalanceConc!60 0))(
  ( (BalanceConc!61 (c!15263 Conc!30)) )
))
(declare-datatypes ((tuple2!110 0))(
  ( (tuple2!111 (_1!67 BalanceConc!60) (_2!67 BalanceConc!58)) )
))
(declare-fun lt!1807 () tuple2!110)

(declare-fun list!103 (BalanceConc!60) List!220)

(declare-fun ++!48 (BalanceConc!60 BalanceConc!60) BalanceConc!60)

(assert (=> b!32513 (= res!27006 (= (list!103 (_1!67 lt!1807)) (list!103 (++!48 (BalanceConc!61 Empty!30) (_1!67 lt!1807)))))))

(declare-datatypes ((List!221 0))(
  ( (Nil!219) (Cons!219 (h!5615 Rule!22) (t!14811 List!221)) )
))
(declare-fun rules!1369 () List!221)

(declare-fun input!768 () BalanceConc!58)

(declare-datatypes ((LexerInterface!13 0))(
  ( (LexerInterfaceExt!10 (__x!482 Int)) (Lexer!11) )
))
(declare-fun thiss!12222 () LexerInterface!13)

(declare-fun lexRec!5 (LexerInterface!13 List!221 BalanceConc!58) tuple2!110)

(assert (=> b!32513 (= lt!1807 (lexRec!5 thiss!12222 rules!1369 input!768))))

(declare-fun mapIsEmpty!119 () Bool)

(declare-fun mapRes!120 () Bool)

(assert (=> mapIsEmpty!119 mapRes!120))

(declare-fun b!32514 () Bool)

(declare-fun res!26999 () Bool)

(assert (=> b!32514 (=> (not res!26999) (not e!14423))))

(declare-fun isEmpty!68 (List!221) Bool)

(assert (=> b!32514 (= res!26999 (not (isEmpty!68 rules!1369)))))

(declare-fun b!32515 () Bool)

(declare-fun e!14414 () Bool)

(declare-fun tp!22349 () Bool)

(declare-fun inv!521 (Conc!29) Bool)

(assert (=> b!32515 (= e!14414 (and (inv!521 (c!15262 input!768)) tp!22349))))

(declare-fun tp!22357 () Bool)

(declare-fun e!14405 () Bool)

(declare-fun e!14411 () Bool)

(declare-fun b!32516 () Bool)

(declare-fun inv!517 (String!648) Bool)

(declare-fun inv!522 (TokenValueInjection!26) Bool)

(assert (=> b!32516 (= e!14411 (and tp!22357 (inv!517 (tag!289 (h!5615 rules!1369))) (inv!522 (transformation!111 (h!5615 rules!1369))) e!14405))))

(declare-fun b!32517 () Bool)

(declare-fun e!14421 () Bool)

(declare-fun tp!22343 () Bool)

(assert (=> b!32517 (= e!14421 (and tp!22343 mapRes!120))))

(declare-fun condMapEmpty!120 () Bool)

(declare-datatypes ((tuple2!112 0))(
  ( (tuple2!113 (_1!68 Context!34) (_2!68 C!1344)) )
))
(declare-datatypes ((Hashable!28 0))(
  ( (HashableExt!27 (__x!483 Int)) )
))
(declare-datatypes ((tuple2!114 0))(
  ( (tuple2!115 (_1!69 tuple2!112) (_2!69 (InoxSet Context!34))) )
))
(declare-datatypes ((List!222 0))(
  ( (Nil!220) (Cons!220 (h!5616 tuple2!114) (t!14812 List!222)) )
))
(declare-datatypes ((array!101 0))(
  ( (array!102 (arr!74 (Array (_ BitVec 32) List!222)) (size!299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!56 0))(
  ( (LongMapFixedSize!57 (defaultEntry!361 Int) (mask!676 (_ BitVec 32)) (extraKeys!273 (_ BitVec 32)) (zeroValue!283 List!222) (minValue!283 List!222) (_size!192 (_ BitVec 32)) (_keys!316 array!97) (_values!305 array!101) (_vacant!88 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!109 0))(
  ( (Cell!110 (v!12018 LongMapFixedSize!56)) )
))
(declare-datatypes ((MutLongMap!28 0))(
  ( (LongMap!28 (underlying!255 Cell!109)) (MutLongMapExt!27 (__x!484 Int)) )
))
(declare-datatypes ((Cell!111 0))(
  ( (Cell!112 (v!12019 MutLongMap!28)) )
))
(declare-datatypes ((MutableMap!28 0))(
  ( (MutableMapExt!27 (__x!485 Int)) (HashMap!28 (underlying!256 Cell!111) (hashF!1888 Hashable!28) (_size!193 (_ BitVec 32)) (defaultValue!174 Int)) )
))
(declare-datatypes ((CacheUp!24 0))(
  ( (CacheUp!25 (cache!507 MutableMap!28)) )
))
(declare-fun cacheUp!472 () CacheUp!24)

(declare-fun mapDefault!119 () List!222)

(assert (=> b!32517 (= condMapEmpty!120 (= (arr!74 (_values!305 (v!12018 (underlying!255 (v!12019 (underlying!256 (cache!507 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!222)) mapDefault!119)))))

(declare-fun b!32518 () Bool)

(declare-fun e!14409 () Bool)

(assert (=> b!32518 (= e!14409 e!14413)))

(declare-fun res!27005 () Bool)

(assert (=> b!32518 (=> (not res!27005) (not e!14413))))

(declare-fun lt!1806 () tuple2!110)

(assert (=> b!32518 (= res!27005 (= (list!103 (_1!67 lt!1806)) (list!103 (BalanceConc!61 Empty!30))))))

(assert (=> b!32518 (= lt!1806 (lexRec!5 thiss!12222 rules!1369 (BalanceConc!59 Empty!29)))))

(declare-fun b!32519 () Bool)

(declare-fun e!14404 () Bool)

(declare-fun tp!22350 () Bool)

(assert (=> b!32519 (= e!14404 (and e!14411 tp!22350))))

(declare-fun b!32520 () Bool)

(declare-fun e!14417 () Bool)

(declare-fun tp!22358 () Bool)

(declare-fun mapRes!119 () Bool)

(assert (=> b!32520 (= e!14417 (and tp!22358 mapRes!119))))

(declare-fun condMapEmpty!119 () Bool)

(declare-fun mapDefault!120 () List!217)

(assert (=> b!32520 (= condMapEmpty!119 (= (arr!73 (_values!304 (v!12016 (underlying!253 (v!12017 (underlying!254 (cache!506 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!217)) mapDefault!120)))))

(declare-fun b!32521 () Bool)

(declare-fun e!14406 () Bool)

(declare-fun e!14407 () Bool)

(assert (=> b!32521 (= e!14406 e!14407)))

(assert (=> b!32522 (= e!14405 (and tp!22360 tp!22348))))

(declare-fun mapNonEmpty!119 () Bool)

(declare-fun tp!22342 () Bool)

(declare-fun tp!22344 () Bool)

(assert (=> mapNonEmpty!119 (= mapRes!120 (and tp!22342 tp!22344))))

(declare-fun mapRest!119 () (Array (_ BitVec 32) List!222))

(declare-fun mapKey!120 () (_ BitVec 32))

(declare-fun mapValue!119 () List!222)

(assert (=> mapNonEmpty!119 (= (arr!74 (_values!305 (v!12018 (underlying!255 (v!12019 (underlying!256 (cache!507 cacheUp!472))))))) (store mapRest!119 mapKey!120 mapValue!119))))

(declare-fun mapNonEmpty!120 () Bool)

(declare-fun tp!22351 () Bool)

(declare-fun tp!22356 () Bool)

(assert (=> mapNonEmpty!120 (= mapRes!119 (and tp!22351 tp!22356))))

(declare-fun mapRest!120 () (Array (_ BitVec 32) List!217))

(declare-fun mapValue!120 () List!217)

(declare-fun mapKey!119 () (_ BitVec 32))

(assert (=> mapNonEmpty!120 (= (arr!73 (_values!304 (v!12016 (underlying!253 (v!12017 (underlying!254 (cache!506 cacheDown!485))))))) (store mapRest!120 mapKey!119 mapValue!120))))

(declare-fun b!32523 () Bool)

(declare-fun res!27002 () Bool)

(assert (=> b!32523 (=> (not res!27002) (not e!14413))))

(declare-fun isEmpty!69 (List!218) Bool)

(declare-fun list!104 (BalanceConc!58) List!218)

(assert (=> b!32523 (= res!27002 (isEmpty!69 (list!104 (_2!67 lt!1806))))))

(declare-fun b!32524 () Bool)

(declare-fun e!14399 () Bool)

(declare-fun e!14412 () Bool)

(assert (=> b!32524 (= e!14399 e!14412)))

(declare-fun e!14401 () Bool)

(assert (=> b!32525 (= e!14407 (and e!14401 tp!22355))))

(declare-fun b!32526 () Bool)

(declare-fun e!14410 () Bool)

(declare-fun e!14400 () Bool)

(assert (=> b!32526 (= e!14410 e!14400)))

(declare-fun b!32527 () Bool)

(declare-fun e!14416 () Bool)

(declare-fun lt!1805 () MutLongMap!28)

(get-info :version)

(assert (=> b!32527 (= e!14401 (and e!14416 ((_ is LongMap!28) lt!1805)))))

(assert (=> b!32527 (= lt!1805 (v!12019 (underlying!256 (cache!507 cacheUp!472))))))

(declare-fun b!32528 () Bool)

(declare-fun e!14403 () Bool)

(declare-fun lt!1803 () MutLongMap!27)

(assert (=> b!32528 (= e!14403 (and e!14410 ((_ is LongMap!27) lt!1803)))))

(assert (=> b!32528 (= lt!1803 (v!12017 (underlying!254 (cache!506 cacheDown!485))))))

(declare-fun b!32529 () Bool)

(declare-fun e!14418 () Bool)

(assert (=> b!32529 (= e!14416 e!14418)))

(declare-fun b!32530 () Bool)

(declare-fun res!26998 () Bool)

(assert (=> b!32530 (=> (not res!26998) (not e!14423))))

(declare-fun rulesInvariant!8 (LexerInterface!13 List!221) Bool)

(assert (=> b!32530 (= res!26998 (rulesInvariant!8 thiss!12222 rules!1369))))

(assert (=> b!32531 (= e!14412 (and e!14403 tp!22354))))

(declare-fun b!32532 () Bool)

(declare-fun e!14402 () Bool)

(assert (=> b!32532 (= e!14400 e!14402)))

(declare-fun res!27000 () Bool)

(assert (=> start!1474 (=> (not res!27000) (not e!14423))))

(assert (=> start!1474 (= res!27000 ((_ is Lexer!11) thiss!12222))))

(assert (=> start!1474 e!14423))

(declare-fun inv!523 (BalanceConc!58) Bool)

(assert (=> start!1474 (and (inv!523 input!768) e!14414)))

(declare-fun inv!524 (CacheUp!24) Bool)

(assert (=> start!1474 (and (inv!524 cacheUp!472) e!14406)))

(assert (=> start!1474 true))

(declare-fun inv!525 (CacheDown!26) Bool)

(assert (=> start!1474 (and (inv!525 cacheDown!485) e!14399)))

(assert (=> start!1474 e!14404))

(declare-fun b!32533 () Bool)

(assert (=> b!32533 (= e!14423 e!14409)))

(declare-fun res!27001 () Bool)

(assert (=> b!32533 (=> (not res!27001) (not e!14409))))

(declare-fun lt!1804 () List!218)

(declare-fun lt!1808 () List!218)

(declare-fun ++!49 (List!218 List!218) List!218)

(assert (=> b!32533 (= res!27001 (= lt!1804 (++!49 lt!1808 lt!1804)))))

(assert (=> b!32533 (= lt!1804 (list!104 input!768))))

(assert (=> b!32533 (= lt!1808 (list!104 (BalanceConc!59 Empty!29)))))

(declare-fun e!14419 () Bool)

(declare-fun tp!22347 () Bool)

(declare-fun tp!22359 () Bool)

(declare-fun array_inv!30 (array!97) Bool)

(declare-fun array_inv!31 (array!101) Bool)

(assert (=> b!32534 (= e!14419 (and tp!22353 tp!22359 tp!22347 (array_inv!30 (_keys!316 (v!12018 (underlying!255 (v!12019 (underlying!256 (cache!507 cacheUp!472))))))) (array_inv!31 (_values!305 (v!12018 (underlying!255 (v!12019 (underlying!256 (cache!507 cacheUp!472))))))) e!14421))))

(declare-fun b!32535 () Bool)

(assert (=> b!32535 (= e!14418 e!14419)))

(declare-fun b!32536 () Bool)

(assert (=> b!32536 (= e!14420 false)))

(declare-fun lt!1809 () List!218)

(assert (=> b!32536 (= lt!1809 (list!104 (_2!67 lt!1807)))))

(declare-fun mapIsEmpty!120 () Bool)

(assert (=> mapIsEmpty!120 mapRes!119))

(declare-fun tp!22352 () Bool)

(declare-fun tp!22345 () Bool)

(declare-fun array_inv!32 (array!99) Bool)

(assert (=> b!32537 (= e!14402 (and tp!22346 tp!22345 tp!22352 (array_inv!30 (_keys!315 (v!12016 (underlying!253 (v!12017 (underlying!254 (cache!506 cacheDown!485))))))) (array_inv!32 (_values!304 (v!12016 (underlying!253 (v!12017 (underlying!254 (cache!506 cacheDown!485))))))) e!14417))))

(declare-fun b!32538 () Bool)

(declare-fun res!27004 () Bool)

(assert (=> b!32538 (=> (not res!27004) (not e!14423))))

(declare-fun valid!42 (CacheUp!24) Bool)

(assert (=> b!32538 (= res!27004 (valid!42 cacheUp!472))))

(assert (= (and start!1474 res!27000) b!32514))

(assert (= (and b!32514 res!26999) b!32530))

(assert (= (and b!32530 res!26998) b!32538))

(assert (= (and b!32538 res!27004) b!32512))

(assert (= (and b!32512 res!27003) b!32533))

(assert (= (and b!32533 res!27001) b!32518))

(assert (= (and b!32518 res!27005) b!32523))

(assert (= (and b!32523 res!27002) b!32513))

(assert (= (and b!32513 res!27006) b!32536))

(assert (= start!1474 b!32515))

(assert (= (and b!32517 condMapEmpty!120) mapIsEmpty!119))

(assert (= (and b!32517 (not condMapEmpty!120)) mapNonEmpty!119))

(assert (= b!32534 b!32517))

(assert (= b!32535 b!32534))

(assert (= b!32529 b!32535))

(assert (= (and b!32527 ((_ is LongMap!28) (v!12019 (underlying!256 (cache!507 cacheUp!472))))) b!32529))

(assert (= b!32525 b!32527))

(assert (= (and b!32521 ((_ is HashMap!28) (cache!507 cacheUp!472))) b!32525))

(assert (= start!1474 b!32521))

(assert (= (and b!32520 condMapEmpty!119) mapIsEmpty!120))

(assert (= (and b!32520 (not condMapEmpty!119)) mapNonEmpty!120))

(assert (= b!32537 b!32520))

(assert (= b!32532 b!32537))

(assert (= b!32526 b!32532))

(assert (= (and b!32528 ((_ is LongMap!27) (v!12017 (underlying!254 (cache!506 cacheDown!485))))) b!32526))

(assert (= b!32531 b!32528))

(assert (= (and b!32524 ((_ is HashMap!27) (cache!506 cacheDown!485))) b!32531))

(assert (= start!1474 b!32524))

(assert (= b!32516 b!32522))

(assert (= b!32519 b!32516))

(assert (= (and start!1474 ((_ is Cons!219) rules!1369)) b!32519))

(declare-fun m!8675 () Bool)

(assert (=> b!32516 m!8675))

(declare-fun m!8677 () Bool)

(assert (=> b!32516 m!8677))

(declare-fun m!8679 () Bool)

(assert (=> b!32515 m!8679))

(declare-fun m!8681 () Bool)

(assert (=> b!32523 m!8681))

(assert (=> b!32523 m!8681))

(declare-fun m!8683 () Bool)

(assert (=> b!32523 m!8683))

(declare-fun m!8685 () Bool)

(assert (=> mapNonEmpty!120 m!8685))

(declare-fun m!8687 () Bool)

(assert (=> b!32534 m!8687))

(declare-fun m!8689 () Bool)

(assert (=> b!32534 m!8689))

(declare-fun m!8691 () Bool)

(assert (=> b!32518 m!8691))

(declare-fun m!8693 () Bool)

(assert (=> b!32518 m!8693))

(declare-fun m!8695 () Bool)

(assert (=> b!32518 m!8695))

(declare-fun m!8697 () Bool)

(assert (=> start!1474 m!8697))

(declare-fun m!8699 () Bool)

(assert (=> start!1474 m!8699))

(declare-fun m!8701 () Bool)

(assert (=> start!1474 m!8701))

(declare-fun m!8703 () Bool)

(assert (=> b!32512 m!8703))

(declare-fun m!8705 () Bool)

(assert (=> b!32533 m!8705))

(declare-fun m!8707 () Bool)

(assert (=> b!32533 m!8707))

(declare-fun m!8709 () Bool)

(assert (=> b!32533 m!8709))

(declare-fun m!8711 () Bool)

(assert (=> b!32536 m!8711))

(declare-fun m!8713 () Bool)

(assert (=> b!32538 m!8713))

(declare-fun m!8715 () Bool)

(assert (=> mapNonEmpty!119 m!8715))

(declare-fun m!8717 () Bool)

(assert (=> b!32513 m!8717))

(declare-fun m!8719 () Bool)

(assert (=> b!32513 m!8719))

(assert (=> b!32513 m!8719))

(declare-fun m!8721 () Bool)

(assert (=> b!32513 m!8721))

(declare-fun m!8723 () Bool)

(assert (=> b!32513 m!8723))

(declare-fun m!8725 () Bool)

(assert (=> b!32537 m!8725))

(declare-fun m!8727 () Bool)

(assert (=> b!32537 m!8727))

(declare-fun m!8729 () Bool)

(assert (=> b!32514 m!8729))

(declare-fun m!8731 () Bool)

(assert (=> b!32530 m!8731))

(check-sat (not mapNonEmpty!119) (not b!32523) (not b!32538) (not start!1474) b_and!195 (not b!32512) (not b!32537) (not b!32518) (not mapNonEmpty!120) (not b_next!195) b_and!193 b_and!185 (not b!32520) (not b!32534) (not b!32513) (not b!32519) (not b_next!187) (not b!32536) (not b!32516) b_and!191 (not b_next!191) (not b!32533) (not b_next!185) (not b!32517) (not b_next!189) (not b!32530) (not b!32515) (not b_next!193) b_and!187 b_and!189 (not b!32514))
(check-sat b_and!185 (not b_next!187) b_and!191 b_and!195 (not b_next!189) (not b_next!193) (not b_next!195) b_and!193 (not b_next!191) (not b_next!185) b_and!187 b_and!189)
