; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411544 () Bool)

(assert start!411544)

(declare-fun b!4283011 () Bool)

(declare-fun b_free!126747 () Bool)

(declare-fun b_next!127451 () Bool)

(assert (=> b!4283011 (= b_free!126747 (not b_next!127451))))

(declare-fun tp!1310035 () Bool)

(declare-fun b_and!337949 () Bool)

(assert (=> b!4283011 (= tp!1310035 b_and!337949)))

(declare-fun b!4283023 () Bool)

(declare-fun b_free!126749 () Bool)

(declare-fun b_next!127453 () Bool)

(assert (=> b!4283023 (= b_free!126749 (not b_next!127453))))

(declare-fun tp!1310042 () Bool)

(declare-fun b_and!337951 () Bool)

(assert (=> b!4283023 (= tp!1310042 b_and!337951)))

(declare-fun b!4282999 () Bool)

(declare-fun b_free!126751 () Bool)

(declare-fun b_next!127455 () Bool)

(assert (=> b!4282999 (= b_free!126751 (not b_next!127455))))

(declare-fun tp!1310051 () Bool)

(declare-fun b_and!337953 () Bool)

(assert (=> b!4282999 (= tp!1310051 b_and!337953)))

(declare-fun b!4283020 () Bool)

(declare-fun b_free!126753 () Bool)

(declare-fun b_next!127457 () Bool)

(assert (=> b!4283020 (= b_free!126753 (not b_next!127457))))

(declare-fun tp!1310038 () Bool)

(declare-fun b_and!337955 () Bool)

(assert (=> b!4283020 (= tp!1310038 b_and!337955)))

(declare-fun b!4283013 () Bool)

(declare-fun b_free!126755 () Bool)

(declare-fun b_next!127459 () Bool)

(assert (=> b!4283013 (= b_free!126755 (not b_next!127459))))

(declare-fun tp!1310031 () Bool)

(declare-fun b_and!337957 () Bool)

(assert (=> b!4283013 (= tp!1310031 b_and!337957)))

(declare-fun b_free!126757 () Bool)

(declare-fun b_next!127461 () Bool)

(assert (=> b!4283013 (= b_free!126757 (not b_next!127461))))

(declare-fun tp!1310041 () Bool)

(declare-fun b_and!337959 () Bool)

(assert (=> b!4283013 (= tp!1310041 b_and!337959)))

(declare-fun b!4283014 () Bool)

(declare-fun b_free!126759 () Bool)

(declare-fun b_next!127463 () Bool)

(assert (=> b!4283014 (= b_free!126759 (not b_next!127463))))

(declare-fun tp!1310028 () Bool)

(declare-fun b_and!337961 () Bool)

(assert (=> b!4283014 (= tp!1310028 b_and!337961)))

(declare-fun b!4283024 () Bool)

(declare-fun b_free!126761 () Bool)

(declare-fun b_next!127465 () Bool)

(assert (=> b!4283024 (= b_free!126761 (not b_next!127465))))

(declare-fun tp!1310052 () Bool)

(declare-fun b_and!337963 () Bool)

(assert (=> b!4283024 (= tp!1310052 b_and!337963)))

(declare-fun b!4282996 () Bool)

(declare-fun e!2659021 () Bool)

(declare-fun tp!1310046 () Bool)

(declare-fun mapRes!19273 () Bool)

(assert (=> b!4282996 (= e!2659021 (and tp!1310046 mapRes!19273))))

(declare-fun condMapEmpty!19274 () Bool)

(declare-datatypes ((Hashable!4174 0))(
  ( (HashableExt!4173 (__x!28774 Int)) )
))
(declare-datatypes ((array!15292 0))(
  ( (array!15293 (arr!6826 (Array (_ BitVec 32) (_ BitVec 64))) (size!34755 (_ BitVec 32))) )
))
(declare-datatypes ((C!26000 0))(
  ( (C!26001 (val!15326 Int)) )
))
(declare-datatypes ((Regex!12901 0))(
  ( (ElementMatch!12901 (c!729996 C!26000)) (Concat!21206 (regOne!26314 Regex!12901) (regTwo!26314 Regex!12901)) (EmptyExpr!12901) (Star!12901 (reg!13230 Regex!12901)) (EmptyLang!12901) (Union!12901 (regOne!26315 Regex!12901) (regTwo!26315 Regex!12901)) )
))
(declare-datatypes ((List!47547 0))(
  ( (Nil!47423) (Cons!47423 (h!52843 Regex!12901) (t!354136 List!47547)) )
))
(declare-datatypes ((Context!5582 0))(
  ( (Context!5583 (exprs!3291 List!47547)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44766 0))(
  ( (tuple2!44767 (_1!25519 (InoxSet Context!5582)) (_2!25519 Int)) )
))
(declare-datatypes ((tuple2!44768 0))(
  ( (tuple2!44769 (_1!25520 tuple2!44766) (_2!25520 Int)) )
))
(declare-datatypes ((List!47548 0))(
  ( (Nil!47424) (Cons!47424 (h!52844 tuple2!44768) (t!354137 List!47548)) )
))
(declare-datatypes ((array!15294 0))(
  ( (array!15295 (arr!6827 (Array (_ BitVec 32) List!47548)) (size!34756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8516 0))(
  ( (LongMapFixedSize!8517 (defaultEntry!4643 Int) (mask!12678 (_ BitVec 32)) (extraKeys!4507 (_ BitVec 32)) (zeroValue!4517 List!47548) (minValue!4517 List!47548) (_size!8559 (_ BitVec 32)) (_keys!4558 array!15292) (_values!4539 array!15294) (_vacant!4319 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16841 0))(
  ( (Cell!16842 (v!41323 LongMapFixedSize!8516)) )
))
(declare-datatypes ((MutLongMap!4258 0))(
  ( (LongMap!4258 (underlying!8745 Cell!16841)) (MutLongMapExt!4257 (__x!28775 Int)) )
))
(declare-datatypes ((Cell!16843 0))(
  ( (Cell!16844 (v!41324 MutLongMap!4258)) )
))
(declare-datatypes ((MutableMap!4164 0))(
  ( (MutableMapExt!4163 (__x!28776 Int)) (HashMap!4164 (underlying!8746 Cell!16843) (hashF!6206 Hashable!4174) (_size!8560 (_ BitVec 32)) (defaultValue!4335 Int)) )
))
(declare-datatypes ((List!47549 0))(
  ( (Nil!47425) (Cons!47425 (h!52845 C!26000) (t!354138 List!47549)) )
))
(declare-datatypes ((IArray!28751 0))(
  ( (IArray!28752 (innerList!14433 List!47549)) )
))
(declare-datatypes ((Conc!14345 0))(
  ( (Node!14345 (left!35324 Conc!14345) (right!35654 Conc!14345) (csize!28920 Int) (cheight!14556 Int)) (Leaf!22197 (xs!17651 IArray!28751) (csize!28921 Int)) (Empty!14345) )
))
(declare-datatypes ((BalanceConc!28180 0))(
  ( (BalanceConc!28181 (c!729997 Conc!14345)) )
))
(declare-datatypes ((CacheFindLongestMatch!378 0))(
  ( (CacheFindLongestMatch!379 (cache!4304 MutableMap!4164) (totalInput!4287 BalanceConc!28180)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!378)

(declare-fun mapDefault!19272 () List!47548)

(assert (=> b!4282996 (= condMapEmpty!19274 (= (arr!6827 (_values!4539 (v!41323 (underlying!8745 (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47548)) mapDefault!19272)))))

(declare-fun b!4282997 () Bool)

(declare-fun e!2658999 () Bool)

(declare-fun tp!1310030 () Bool)

(declare-fun inv!62856 (Conc!14345) Bool)

(assert (=> b!4282997 (= e!2658999 (and (inv!62856 (c!729997 (totalInput!4287 cacheFindLongestMatch!156))) tp!1310030))))

(declare-fun res!1757685 () Bool)

(declare-fun e!2658995 () Bool)

(assert (=> start!411544 (=> (not res!1757685) (not e!2658995))))

(declare-datatypes ((LexerInterface!7590 0))(
  ( (LexerInterfaceExt!7587 (__x!28777 Int)) (Lexer!7588) )
))
(declare-fun thiss!16356 () LexerInterface!7590)

(get-info :version)

(assert (=> start!411544 (= res!1757685 ((_ is Lexer!7588) thiss!16356))))

(assert (=> start!411544 e!2658995))

(assert (=> start!411544 true))

(declare-fun e!2659004 () Bool)

(assert (=> start!411544 e!2659004))

(declare-fun input!1632 () BalanceConc!28180)

(declare-fun e!2659007 () Bool)

(declare-fun inv!62857 (BalanceConc!28180) Bool)

(assert (=> start!411544 (and (inv!62857 input!1632) e!2659007)))

(declare-datatypes ((Hashable!4175 0))(
  ( (HashableExt!4174 (__x!28778 Int)) )
))
(declare-datatypes ((tuple3!5332 0))(
  ( (tuple3!5333 (_1!25521 Regex!12901) (_2!25521 Context!5582) (_3!3136 C!26000)) )
))
(declare-datatypes ((tuple2!44770 0))(
  ( (tuple2!44771 (_1!25522 tuple3!5332) (_2!25522 (InoxSet Context!5582))) )
))
(declare-datatypes ((List!47550 0))(
  ( (Nil!47426) (Cons!47426 (h!52846 tuple2!44770) (t!354139 List!47550)) )
))
(declare-datatypes ((array!15296 0))(
  ( (array!15297 (arr!6828 (Array (_ BitVec 32) List!47550)) (size!34757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8518 0))(
  ( (LongMapFixedSize!8519 (defaultEntry!4644 Int) (mask!12679 (_ BitVec 32)) (extraKeys!4508 (_ BitVec 32)) (zeroValue!4518 List!47550) (minValue!4518 List!47550) (_size!8561 (_ BitVec 32)) (_keys!4559 array!15292) (_values!4540 array!15296) (_vacant!4320 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16845 0))(
  ( (Cell!16846 (v!41325 LongMapFixedSize!8518)) )
))
(declare-datatypes ((MutLongMap!4259 0))(
  ( (LongMap!4259 (underlying!8747 Cell!16845)) (MutLongMapExt!4258 (__x!28779 Int)) )
))
(declare-datatypes ((Cell!16847 0))(
  ( (Cell!16848 (v!41326 MutLongMap!4259)) )
))
(declare-datatypes ((MutableMap!4165 0))(
  ( (MutableMapExt!4164 (__x!28780 Int)) (HashMap!4165 (underlying!8748 Cell!16847) (hashF!6207 Hashable!4175) (_size!8562 (_ BitVec 32)) (defaultValue!4336 Int)) )
))
(declare-datatypes ((CacheDown!2840 0))(
  ( (CacheDown!2841 (cache!4305 MutableMap!4165)) )
))
(declare-fun cacheDown!738 () CacheDown!2840)

(declare-fun e!2659017 () Bool)

(declare-fun inv!62858 (CacheDown!2840) Bool)

(assert (=> start!411544 (and (inv!62858 cacheDown!738) e!2659017)))

(declare-fun e!2659001 () Bool)

(declare-fun inv!62859 (CacheFindLongestMatch!378) Bool)

(assert (=> start!411544 (and (inv!62859 cacheFindLongestMatch!156) e!2659001)))

(declare-fun totalInput!528 () BalanceConc!28180)

(declare-fun e!2658992 () Bool)

(assert (=> start!411544 (and (inv!62857 totalInput!528) e!2658992)))

(declare-datatypes ((tuple2!44772 0))(
  ( (tuple2!44773 (_1!25523 Context!5582) (_2!25523 C!26000)) )
))
(declare-datatypes ((tuple2!44774 0))(
  ( (tuple2!44775 (_1!25524 tuple2!44772) (_2!25524 (InoxSet Context!5582))) )
))
(declare-datatypes ((List!47551 0))(
  ( (Nil!47427) (Cons!47427 (h!52847 tuple2!44774) (t!354140 List!47551)) )
))
(declare-datatypes ((array!15298 0))(
  ( (array!15299 (arr!6829 (Array (_ BitVec 32) List!47551)) (size!34758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8520 0))(
  ( (LongMapFixedSize!8521 (defaultEntry!4645 Int) (mask!12680 (_ BitVec 32)) (extraKeys!4509 (_ BitVec 32)) (zeroValue!4519 List!47551) (minValue!4519 List!47551) (_size!8563 (_ BitVec 32)) (_keys!4560 array!15292) (_values!4541 array!15298) (_vacant!4321 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16849 0))(
  ( (Cell!16850 (v!41327 LongMapFixedSize!8520)) )
))
(declare-datatypes ((MutLongMap!4260 0))(
  ( (LongMap!4260 (underlying!8749 Cell!16849)) (MutLongMapExt!4259 (__x!28781 Int)) )
))
(declare-datatypes ((Cell!16851 0))(
  ( (Cell!16852 (v!41328 MutLongMap!4260)) )
))
(declare-datatypes ((Hashable!4176 0))(
  ( (HashableExt!4175 (__x!28782 Int)) )
))
(declare-datatypes ((MutableMap!4166 0))(
  ( (MutableMapExt!4165 (__x!28783 Int)) (HashMap!4166 (underlying!8750 Cell!16851) (hashF!6208 Hashable!4176) (_size!8564 (_ BitVec 32)) (defaultValue!4337 Int)) )
))
(declare-datatypes ((CacheUp!2718 0))(
  ( (CacheUp!2719 (cache!4306 MutableMap!4166)) )
))
(declare-fun cacheUp!725 () CacheUp!2718)

(declare-fun e!2659018 () Bool)

(declare-fun inv!62860 (CacheUp!2718) Bool)

(assert (=> start!411544 (and (inv!62860 cacheUp!725) e!2659018)))

(declare-fun b!4282998 () Bool)

(declare-fun e!2658996 () Bool)

(declare-fun tp!1310036 () Bool)

(declare-fun mapRes!19272 () Bool)

(assert (=> b!4282998 (= e!2658996 (and tp!1310036 mapRes!19272))))

(declare-fun condMapEmpty!19273 () Bool)

(declare-fun mapDefault!19274 () List!47551)

(assert (=> b!4282998 (= condMapEmpty!19273 (= (arr!6829 (_values!4541 (v!41327 (underlying!8749 (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47551)) mapDefault!19274)))))

(declare-fun tp!1310029 () Bool)

(declare-fun e!2658997 () Bool)

(declare-fun tp!1310033 () Bool)

(declare-fun array_inv!4888 (array!15292) Bool)

(declare-fun array_inv!4889 (array!15298) Bool)

(assert (=> b!4282999 (= e!2658997 (and tp!1310051 tp!1310033 tp!1310029 (array_inv!4888 (_keys!4560 (v!41327 (underlying!8749 (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))))) (array_inv!4889 (_values!4541 (v!41327 (underlying!8749 (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))))) e!2658996))))

(declare-fun b!4283000 () Bool)

(declare-fun res!1757683 () Bool)

(assert (=> b!4283000 (=> (not res!1757683) (not e!2658995))))

(declare-datatypes ((List!47552 0))(
  ( (Nil!47428) (Cons!47428 (h!52848 (_ BitVec 16)) (t!354141 List!47552)) )
))
(declare-datatypes ((TokenValue!8305 0))(
  ( (FloatLiteralValue!16610 (text!58580 List!47552)) (TokenValueExt!8304 (__x!28784 Int)) (Broken!41525 (value!250652 List!47552)) (Object!8428) (End!8305) (Def!8305) (Underscore!8305) (Match!8305) (Else!8305) (Error!8305) (Case!8305) (If!8305) (Extends!8305) (Abstract!8305) (Class!8305) (Val!8305) (DelimiterValue!16610 (del!8365 List!47552)) (KeywordValue!8311 (value!250653 List!47552)) (CommentValue!16610 (value!250654 List!47552)) (WhitespaceValue!16610 (value!250655 List!47552)) (IndentationValue!8305 (value!250656 List!47552)) (String!55516) (Int32!8305) (Broken!41526 (value!250657 List!47552)) (Boolean!8306) (Unit!66361) (OperatorValue!8308 (op!8365 List!47552)) (IdentifierValue!16610 (value!250658 List!47552)) (IdentifierValue!16611 (value!250659 List!47552)) (WhitespaceValue!16611 (value!250660 List!47552)) (True!16610) (False!16610) (Broken!41527 (value!250661 List!47552)) (Broken!41528 (value!250662 List!47552)) (True!16611) (RightBrace!8305) (RightBracket!8305) (Colon!8305) (Null!8305) (Comma!8305) (LeftBracket!8305) (False!16611) (LeftBrace!8305) (ImaginaryLiteralValue!8305 (text!58581 List!47552)) (StringLiteralValue!24915 (value!250663 List!47552)) (EOFValue!8305 (value!250664 List!47552)) (IdentValue!8305 (value!250665 List!47552)) (DelimiterValue!16611 (value!250666 List!47552)) (DedentValue!8305 (value!250667 List!47552)) (NewLineValue!8305 (value!250668 List!47552)) (IntegerValue!24915 (value!250669 (_ BitVec 32)) (text!58582 List!47552)) (IntegerValue!24916 (value!250670 Int) (text!58583 List!47552)) (Times!8305) (Or!8305) (Equal!8305) (Minus!8305) (Broken!41529 (value!250671 List!47552)) (And!8305) (Div!8305) (LessEqual!8305) (Mod!8305) (Concat!21207) (Not!8305) (Plus!8305) (SpaceValue!8305 (value!250672 List!47552)) (IntegerValue!24917 (value!250673 Int) (text!58584 List!47552)) (StringLiteralValue!24916 (text!58585 List!47552)) (FloatLiteralValue!16611 (text!58586 List!47552)) (BytesLiteralValue!8305 (value!250674 List!47552)) (CommentValue!16611 (value!250675 List!47552)) (StringLiteralValue!24917 (value!250676 List!47552)) (ErrorTokenValue!8305 (msg!8366 List!47552)) )
))
(declare-datatypes ((String!55517 0))(
  ( (String!55518 (value!250677 String)) )
))
(declare-datatypes ((TokenValueInjection!15918 0))(
  ( (TokenValueInjection!15919 (toValue!10846 Int) (toChars!10705 Int)) )
))
(declare-datatypes ((Rule!15790 0))(
  ( (Rule!15791 (regex!7995 Regex!12901) (tag!8859 String!55517) (isSeparator!7995 Bool) (transformation!7995 TokenValueInjection!15918)) )
))
(declare-fun rule!232 () Rule!15790)

(declare-fun ruleValid!3613 (LexerInterface!7590 Rule!15790) Bool)

(assert (=> b!4283000 (= res!1757683 (ruleValid!3613 thiss!16356 rule!232))))

(declare-fun mapIsEmpty!19272 () Bool)

(assert (=> mapIsEmpty!19272 mapRes!19273))

(declare-fun e!2659010 () Bool)

(declare-fun b!4283001 () Bool)

(assert (=> b!4283001 (= e!2659001 (and e!2659010 (inv!62857 (totalInput!4287 cacheFindLongestMatch!156)) e!2658999))))

(declare-fun mapIsEmpty!19273 () Bool)

(assert (=> mapIsEmpty!19273 mapRes!19272))

(declare-fun b!4283002 () Bool)

(declare-fun res!1757682 () Bool)

(assert (=> b!4283002 (=> (not res!1757682) (not e!2658995))))

(declare-fun valid!3308 (CacheUp!2718) Bool)

(assert (=> b!4283002 (= res!1757682 (valid!3308 cacheUp!725))))

(declare-fun b!4283003 () Bool)

(declare-fun e!2658993 () Bool)

(declare-fun e!2658991 () Bool)

(assert (=> b!4283003 (= e!2658993 e!2658991)))

(declare-fun b!4283004 () Bool)

(declare-fun e!2659008 () Bool)

(declare-fun e!2659020 () Bool)

(assert (=> b!4283004 (= e!2659008 e!2659020)))

(declare-fun b!4283005 () Bool)

(assert (=> b!4283005 (= e!2658995 false)))

(declare-fun b!4283006 () Bool)

(declare-fun e!2659011 () Bool)

(declare-fun e!2659014 () Bool)

(assert (=> b!4283006 (= e!2659011 e!2659014)))

(declare-fun mapNonEmpty!19272 () Bool)

(declare-fun tp!1310044 () Bool)

(declare-fun tp!1310027 () Bool)

(assert (=> mapNonEmpty!19272 (= mapRes!19272 (and tp!1310044 tp!1310027))))

(declare-fun mapKey!19274 () (_ BitVec 32))

(declare-fun mapRest!19272 () (Array (_ BitVec 32) List!47551))

(declare-fun mapValue!19274 () List!47551)

(assert (=> mapNonEmpty!19272 (= (arr!6829 (_values!4541 (v!41327 (underlying!8749 (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))))) (store mapRest!19272 mapKey!19274 mapValue!19274))))

(declare-fun b!4283007 () Bool)

(declare-fun e!2659005 () Bool)

(declare-fun lt!1515419 () MutLongMap!4258)

(assert (=> b!4283007 (= e!2659005 (and e!2659011 ((_ is LongMap!4258) lt!1515419)))))

(assert (=> b!4283007 (= lt!1515419 (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))))

(declare-fun b!4283008 () Bool)

(declare-fun e!2659006 () Bool)

(declare-fun tp!1310034 () Bool)

(declare-fun mapRes!19274 () Bool)

(assert (=> b!4283008 (= e!2659006 (and tp!1310034 mapRes!19274))))

(declare-fun condMapEmpty!19272 () Bool)

(declare-fun mapDefault!19273 () List!47550)

(assert (=> b!4283008 (= condMapEmpty!19272 (= (arr!6828 (_values!4540 (v!41325 (underlying!8747 (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47550)) mapDefault!19273)))))

(declare-fun b!4283009 () Bool)

(declare-fun res!1757681 () Bool)

(assert (=> b!4283009 (=> (not res!1757681) (not e!2658995))))

(declare-fun valid!3309 (CacheFindLongestMatch!378) Bool)

(assert (=> b!4283009 (= res!1757681 (valid!3309 cacheFindLongestMatch!156))))

(declare-fun mapIsEmpty!19274 () Bool)

(assert (=> mapIsEmpty!19274 mapRes!19274))

(declare-fun b!4283010 () Bool)

(declare-fun tp!1310032 () Bool)

(assert (=> b!4283010 (= e!2658992 (and (inv!62856 (c!729997 totalInput!528)) tp!1310032))))

(declare-fun e!2658998 () Bool)

(declare-fun e!2658994 () Bool)

(assert (=> b!4283011 (= e!2658998 (and e!2658994 tp!1310035))))

(declare-fun b!4283012 () Bool)

(declare-fun res!1757686 () Bool)

(assert (=> b!4283012 (=> (not res!1757686) (not e!2658995))))

(declare-fun isSuffix!1003 (List!47549 List!47549) Bool)

(declare-fun list!17313 (BalanceConc!28180) List!47549)

(assert (=> b!4283012 (= res!1757686 (isSuffix!1003 (list!17313 input!1632) (list!17313 totalInput!528)))))

(declare-fun e!2659000 () Bool)

(assert (=> b!4283013 (= e!2659000 (and tp!1310031 tp!1310041))))

(declare-fun tp!1310043 () Bool)

(declare-fun tp!1310048 () Bool)

(declare-fun e!2659015 () Bool)

(declare-fun array_inv!4890 (array!15296) Bool)

(assert (=> b!4283014 (= e!2659015 (and tp!1310028 tp!1310043 tp!1310048 (array_inv!4888 (_keys!4559 (v!41325 (underlying!8747 (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))))) (array_inv!4890 (_values!4540 (v!41325 (underlying!8747 (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))))) e!2659006))))

(declare-fun b!4283015 () Bool)

(assert (=> b!4283015 (= e!2659020 e!2658997)))

(declare-fun b!4283016 () Bool)

(declare-fun e!2659013 () Bool)

(assert (=> b!4283016 (= e!2659014 e!2659013)))

(declare-fun b!4283017 () Bool)

(declare-fun tp!1310049 () Bool)

(assert (=> b!4283017 (= e!2659007 (and (inv!62856 (c!729997 input!1632)) tp!1310049))))

(declare-fun b!4283018 () Bool)

(declare-fun res!1757684 () Bool)

(assert (=> b!4283018 (=> (not res!1757684) (not e!2658995))))

(declare-fun valid!3310 (CacheDown!2840) Bool)

(assert (=> b!4283018 (= res!1757684 (valid!3310 cacheDown!738))))

(declare-fun mapNonEmpty!19273 () Bool)

(declare-fun tp!1310050 () Bool)

(declare-fun tp!1310045 () Bool)

(assert (=> mapNonEmpty!19273 (= mapRes!19274 (and tp!1310050 tp!1310045))))

(declare-fun mapKey!19272 () (_ BitVec 32))

(declare-fun mapRest!19273 () (Array (_ BitVec 32) List!47550))

(declare-fun mapValue!19273 () List!47550)

(assert (=> mapNonEmpty!19273 (= (arr!6828 (_values!4540 (v!41325 (underlying!8747 (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))))) (store mapRest!19273 mapKey!19272 mapValue!19273))))

(declare-fun b!4283019 () Bool)

(declare-fun e!2659016 () Bool)

(declare-fun lt!1515420 () MutLongMap!4259)

(assert (=> b!4283019 (= e!2659016 (and e!2658993 ((_ is LongMap!4259) lt!1515420)))))

(assert (=> b!4283019 (= lt!1515420 (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))))

(assert (=> b!4283020 (= e!2659010 (and e!2659005 tp!1310038))))

(declare-fun b!4283021 () Bool)

(declare-fun e!2659003 () Bool)

(assert (=> b!4283021 (= e!2659017 e!2659003)))

(declare-fun b!4283022 () Bool)

(assert (=> b!4283022 (= e!2658991 e!2659015)))

(assert (=> b!4283023 (= e!2659003 (and e!2659016 tp!1310042))))

(declare-fun mapNonEmpty!19274 () Bool)

(declare-fun tp!1310053 () Bool)

(declare-fun tp!1310047 () Bool)

(assert (=> mapNonEmpty!19274 (= mapRes!19273 (and tp!1310053 tp!1310047))))

(declare-fun mapRest!19274 () (Array (_ BitVec 32) List!47548))

(declare-fun mapKey!19273 () (_ BitVec 32))

(declare-fun mapValue!19272 () List!47548)

(assert (=> mapNonEmpty!19274 (= (arr!6827 (_values!4539 (v!41323 (underlying!8745 (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))))) (store mapRest!19274 mapKey!19273 mapValue!19272))))

(declare-fun tp!1310037 () Bool)

(declare-fun tp!1310039 () Bool)

(declare-fun array_inv!4891 (array!15294) Bool)

(assert (=> b!4283024 (= e!2659013 (and tp!1310052 tp!1310037 tp!1310039 (array_inv!4888 (_keys!4558 (v!41323 (underlying!8745 (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))))) (array_inv!4891 (_values!4539 (v!41323 (underlying!8745 (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))))) e!2659021))))

(declare-fun b!4283025 () Bool)

(assert (=> b!4283025 (= e!2659018 e!2658998)))

(declare-fun tp!1310040 () Bool)

(declare-fun b!4283026 () Bool)

(declare-fun inv!62855 (String!55517) Bool)

(declare-fun inv!62861 (TokenValueInjection!15918) Bool)

(assert (=> b!4283026 (= e!2659004 (and tp!1310040 (inv!62855 (tag!8859 rule!232)) (inv!62861 (transformation!7995 rule!232)) e!2659000))))

(declare-fun b!4283027 () Bool)

(declare-fun lt!1515418 () MutLongMap!4260)

(assert (=> b!4283027 (= e!2658994 (and e!2659008 ((_ is LongMap!4260) lt!1515418)))))

(assert (=> b!4283027 (= lt!1515418 (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))))

(assert (= (and start!411544 res!1757685) b!4283000))

(assert (= (and b!4283000 res!1757683) b!4283002))

(assert (= (and b!4283002 res!1757682) b!4283018))

(assert (= (and b!4283018 res!1757684) b!4283009))

(assert (= (and b!4283009 res!1757681) b!4283012))

(assert (= (and b!4283012 res!1757686) b!4283005))

(assert (= b!4283026 b!4283013))

(assert (= start!411544 b!4283026))

(assert (= start!411544 b!4283017))

(assert (= (and b!4283008 condMapEmpty!19272) mapIsEmpty!19274))

(assert (= (and b!4283008 (not condMapEmpty!19272)) mapNonEmpty!19273))

(assert (= b!4283014 b!4283008))

(assert (= b!4283022 b!4283014))

(assert (= b!4283003 b!4283022))

(assert (= (and b!4283019 ((_ is LongMap!4259) (v!41326 (underlying!8748 (cache!4305 cacheDown!738))))) b!4283003))

(assert (= b!4283023 b!4283019))

(assert (= (and b!4283021 ((_ is HashMap!4165) (cache!4305 cacheDown!738))) b!4283023))

(assert (= start!411544 b!4283021))

(assert (= (and b!4282996 condMapEmpty!19274) mapIsEmpty!19272))

(assert (= (and b!4282996 (not condMapEmpty!19274)) mapNonEmpty!19274))

(assert (= b!4283024 b!4282996))

(assert (= b!4283016 b!4283024))

(assert (= b!4283006 b!4283016))

(assert (= (and b!4283007 ((_ is LongMap!4258) (v!41324 (underlying!8746 (cache!4304 cacheFindLongestMatch!156))))) b!4283006))

(assert (= b!4283020 b!4283007))

(assert (= (and b!4283001 ((_ is HashMap!4164) (cache!4304 cacheFindLongestMatch!156))) b!4283020))

(assert (= b!4283001 b!4282997))

(assert (= start!411544 b!4283001))

(assert (= start!411544 b!4283010))

(assert (= (and b!4282998 condMapEmpty!19273) mapIsEmpty!19273))

(assert (= (and b!4282998 (not condMapEmpty!19273)) mapNonEmpty!19272))

(assert (= b!4282999 b!4282998))

(assert (= b!4283015 b!4282999))

(assert (= b!4283004 b!4283015))

(assert (= (and b!4283027 ((_ is LongMap!4260) (v!41328 (underlying!8750 (cache!4306 cacheUp!725))))) b!4283004))

(assert (= b!4283011 b!4283027))

(assert (= (and b!4283025 ((_ is HashMap!4166) (cache!4306 cacheUp!725))) b!4283011))

(assert (= start!411544 b!4283025))

(declare-fun m!4879739 () Bool)

(assert (=> mapNonEmpty!19274 m!4879739))

(declare-fun m!4879741 () Bool)

(assert (=> b!4283026 m!4879741))

(declare-fun m!4879743 () Bool)

(assert (=> b!4283026 m!4879743))

(declare-fun m!4879745 () Bool)

(assert (=> b!4283000 m!4879745))

(declare-fun m!4879747 () Bool)

(assert (=> b!4283001 m!4879747))

(declare-fun m!4879749 () Bool)

(assert (=> b!4283009 m!4879749))

(declare-fun m!4879751 () Bool)

(assert (=> mapNonEmpty!19272 m!4879751))

(declare-fun m!4879753 () Bool)

(assert (=> b!4283017 m!4879753))

(declare-fun m!4879755 () Bool)

(assert (=> b!4282997 m!4879755))

(declare-fun m!4879757 () Bool)

(assert (=> b!4283014 m!4879757))

(declare-fun m!4879759 () Bool)

(assert (=> b!4283014 m!4879759))

(declare-fun m!4879761 () Bool)

(assert (=> b!4282999 m!4879761))

(declare-fun m!4879763 () Bool)

(assert (=> b!4282999 m!4879763))

(declare-fun m!4879765 () Bool)

(assert (=> b!4283010 m!4879765))

(declare-fun m!4879767 () Bool)

(assert (=> b!4283002 m!4879767))

(declare-fun m!4879769 () Bool)

(assert (=> mapNonEmpty!19273 m!4879769))

(declare-fun m!4879771 () Bool)

(assert (=> b!4283024 m!4879771))

(declare-fun m!4879773 () Bool)

(assert (=> b!4283024 m!4879773))

(declare-fun m!4879775 () Bool)

(assert (=> b!4283012 m!4879775))

(declare-fun m!4879777 () Bool)

(assert (=> b!4283012 m!4879777))

(assert (=> b!4283012 m!4879775))

(assert (=> b!4283012 m!4879777))

(declare-fun m!4879779 () Bool)

(assert (=> b!4283012 m!4879779))

(declare-fun m!4879781 () Bool)

(assert (=> start!411544 m!4879781))

(declare-fun m!4879783 () Bool)

(assert (=> start!411544 m!4879783))

(declare-fun m!4879785 () Bool)

(assert (=> start!411544 m!4879785))

(declare-fun m!4879787 () Bool)

(assert (=> start!411544 m!4879787))

(declare-fun m!4879789 () Bool)

(assert (=> start!411544 m!4879789))

(declare-fun m!4879791 () Bool)

(assert (=> b!4283018 m!4879791))

(check-sat b_and!337949 (not mapNonEmpty!19274) (not mapNonEmpty!19273) (not b!4282998) (not mapNonEmpty!19272) (not b_next!127457) (not b_next!127451) (not b!4282999) (not b!4283024) b_and!337963 (not b!4283014) (not b!4282997) (not b_next!127455) (not b!4282996) (not b!4283009) (not b_next!127461) (not b!4283010) b_and!337955 (not b_next!127463) b_and!337953 (not b!4283008) (not b!4283017) (not b_next!127459) (not b_next!127453) b_and!337959 (not b!4283000) (not b!4283002) b_and!337957 b_and!337961 (not b!4283001) (not start!411544) (not b!4283018) (not b_next!127465) (not b!4283026) b_and!337951 (not b!4283012))
(check-sat b_and!337949 b_and!337959 (not b_next!127457) (not b_next!127451) (not b_next!127465) b_and!337951 b_and!337963 (not b_next!127455) (not b_next!127461) b_and!337955 (not b_next!127463) b_and!337953 (not b_next!127459) (not b_next!127453) b_and!337957 b_and!337961)
