; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1478 () Bool)

(assert start!1478)

(declare-fun b!32673 () Bool)

(declare-fun b_free!209 () Bool)

(declare-fun b_next!209 () Bool)

(assert (=> b!32673 (= b_free!209 (not b_next!209))))

(declare-fun tp!22457 () Bool)

(declare-fun b_and!209 () Bool)

(assert (=> b!32673 (= tp!22457 b_and!209)))

(declare-fun b!32669 () Bool)

(declare-fun b_free!211 () Bool)

(declare-fun b_next!211 () Bool)

(assert (=> b!32669 (= b_free!211 (not b_next!211))))

(declare-fun tp!22456 () Bool)

(declare-fun b_and!211 () Bool)

(assert (=> b!32669 (= tp!22456 b_and!211)))

(declare-fun b_free!213 () Bool)

(declare-fun b_next!213 () Bool)

(assert (=> b!32669 (= b_free!213 (not b_next!213))))

(declare-fun tp!22460 () Bool)

(declare-fun b_and!213 () Bool)

(assert (=> b!32669 (= tp!22460 b_and!213)))

(declare-fun b!32670 () Bool)

(declare-fun b_free!215 () Bool)

(declare-fun b_next!215 () Bool)

(assert (=> b!32670 (= b_free!215 (not b_next!215))))

(declare-fun tp!22468 () Bool)

(declare-fun b_and!215 () Bool)

(assert (=> b!32670 (= tp!22468 b_and!215)))

(declare-fun b!32659 () Bool)

(declare-fun b_free!217 () Bool)

(declare-fun b_next!217 () Bool)

(assert (=> b!32659 (= b_free!217 (not b_next!217))))

(declare-fun tp!22462 () Bool)

(declare-fun b_and!217 () Bool)

(assert (=> b!32659 (= tp!22462 b_and!217)))

(declare-fun b!32674 () Bool)

(declare-fun b_free!219 () Bool)

(declare-fun b_next!219 () Bool)

(assert (=> b!32674 (= b_free!219 (not b_next!219))))

(declare-fun tp!22467 () Bool)

(declare-fun b_and!219 () Bool)

(assert (=> b!32674 (= tp!22467 b_and!219)))

(declare-fun b!32654 () Bool)

(declare-fun e!14541 () Bool)

(declare-fun e!14540 () Bool)

(assert (=> b!32654 (= e!14541 e!14540)))

(declare-datatypes ((C!1348 0))(
  ( (C!1349 (val!165 Int)) )
))
(declare-datatypes ((List!229 0))(
  ( (Nil!227) (Cons!227 (h!5623 C!1348) (t!14819 List!229)) )
))
(declare-datatypes ((IArray!65 0))(
  ( (IArray!66 (innerList!90 List!229)) )
))
(declare-datatypes ((Regex!137 0))(
  ( (ElementMatch!137 (c!15266 C!1348)) (Concat!240 (regOne!786 Regex!137) (regTwo!786 Regex!137)) (EmptyExpr!137) (Star!137 (reg!466 Regex!137)) (EmptyLang!137) (Union!137 (regOne!787 Regex!137) (regTwo!787 Regex!137)) )
))
(declare-datatypes ((String!658 0))(
  ( (String!659 (value!5905 String)) )
))
(declare-datatypes ((List!230 0))(
  ( (Nil!228) (Cons!228 (h!5624 (_ BitVec 16)) (t!14820 List!230)) )
))
(declare-datatypes ((TokenValue!103 0))(
  ( (FloatLiteralValue!206 (text!1166 List!230)) (TokenValueExt!102 (__x!494 Int)) (Broken!515 (value!5906 List!230)) (Object!104) (End!103) (Def!103) (Underscore!103) (Match!103) (Else!103) (Error!103) (Case!103) (If!103) (Extends!103) (Abstract!103) (Class!103) (Val!103) (DelimiterValue!206 (del!163 List!230)) (KeywordValue!109 (value!5907 List!230)) (CommentValue!206 (value!5908 List!230)) (WhitespaceValue!206 (value!5909 List!230)) (IndentationValue!103 (value!5910 List!230)) (String!660) (Int32!103) (Broken!516 (value!5911 List!230)) (Boolean!104) (Unit!116) (OperatorValue!106 (op!163 List!230)) (IdentifierValue!206 (value!5912 List!230)) (IdentifierValue!207 (value!5913 List!230)) (WhitespaceValue!207 (value!5914 List!230)) (True!206) (False!206) (Broken!517 (value!5915 List!230)) (Broken!518 (value!5916 List!230)) (True!207) (RightBrace!103) (RightBracket!103) (Colon!103) (Null!103) (Comma!103) (LeftBracket!103) (False!207) (LeftBrace!103) (ImaginaryLiteralValue!103 (text!1167 List!230)) (StringLiteralValue!309 (value!5917 List!230)) (EOFValue!103 (value!5918 List!230)) (IdentValue!103 (value!5919 List!230)) (DelimiterValue!207 (value!5920 List!230)) (DedentValue!103 (value!5921 List!230)) (NewLineValue!103 (value!5922 List!230)) (IntegerValue!309 (value!5923 (_ BitVec 32)) (text!1168 List!230)) (IntegerValue!310 (value!5924 Int) (text!1169 List!230)) (Times!103) (Or!103) (Equal!103) (Minus!103) (Broken!519 (value!5925 List!230)) (And!103) (Div!103) (LessEqual!103) (Mod!103) (Concat!241) (Not!103) (Plus!103) (SpaceValue!103 (value!5926 List!230)) (IntegerValue!311 (value!5927 Int) (text!1170 List!230)) (StringLiteralValue!310 (text!1171 List!230)) (FloatLiteralValue!207 (text!1172 List!230)) (BytesLiteralValue!103 (value!5928 List!230)) (CommentValue!207 (value!5929 List!230)) (StringLiteralValue!311 (value!5930 List!230)) (ErrorTokenValue!103 (msg!164 List!230)) )
))
(declare-datatypes ((Conc!32 0))(
  ( (Node!32 (left!356 Conc!32) (right!686 Conc!32) (csize!294 Int) (cheight!243 Int)) (Leaf!165 (xs!2611 IArray!65) (csize!295 Int)) (Empty!32) )
))
(declare-datatypes ((BalanceConc!64 0))(
  ( (BalanceConc!65 (c!15267 Conc!32)) )
))
(declare-datatypes ((TokenValueInjection!30 0))(
  ( (TokenValueInjection!31 (toValue!590 Int) (toChars!449 Int)) )
))
(declare-datatypes ((Rule!26 0))(
  ( (Rule!27 (regex!113 Regex!137) (tag!291 String!658) (isSeparator!113 Bool) (transformation!113 TokenValueInjection!30)) )
))
(declare-datatypes ((List!231 0))(
  ( (Nil!229) (Cons!229 (h!5625 Rule!26) (t!14821 List!231)) )
))
(declare-fun rules!1369 () List!231)

(declare-fun b!32655 () Bool)

(declare-fun tp!22474 () Bool)

(declare-fun e!14547 () Bool)

(declare-fun e!14539 () Bool)

(declare-fun inv!528 (String!658) Bool)

(declare-fun inv!534 (TokenValueInjection!30) Bool)

(assert (=> b!32655 (= e!14547 (and tp!22474 (inv!528 (tag!291 (h!5625 rules!1369))) (inv!534 (transformation!113 (h!5625 rules!1369))) e!14539))))

(declare-fun b!32656 () Bool)

(declare-fun e!14542 () Bool)

(declare-fun tp!22458 () Bool)

(assert (=> b!32656 (= e!14542 (and e!14547 tp!22458))))

(declare-fun b!32657 () Bool)

(declare-fun e!14554 () Bool)

(declare-fun e!14538 () Bool)

(assert (=> b!32657 (= e!14554 e!14538)))

(declare-fun b!32658 () Bool)

(declare-fun e!14543 () Bool)

(assert (=> b!32658 (= e!14543 e!14554)))

(declare-fun res!27035 () Bool)

(declare-fun e!14548 () Bool)

(assert (=> start!1478 (=> (not res!27035) (not e!14548))))

(declare-datatypes ((LexerInterface!15 0))(
  ( (LexerInterfaceExt!12 (__x!495 Int)) (Lexer!13) )
))
(declare-fun thiss!12222 () LexerInterface!15)

(get-info :version)

(assert (=> start!1478 (= res!27035 ((_ is Lexer!13) thiss!12222))))

(assert (=> start!1478 e!14548))

(declare-fun input!768 () BalanceConc!64)

(declare-fun e!14536 () Bool)

(declare-fun inv!535 (BalanceConc!64) Bool)

(assert (=> start!1478 (and (inv!535 input!768) e!14536)))

(declare-datatypes ((List!232 0))(
  ( (Nil!230) (Cons!230 (h!5626 Regex!137) (t!14822 List!232)) )
))
(declare-datatypes ((Context!38 0))(
  ( (Context!39 (exprs!519 List!232)) )
))
(declare-datatypes ((tuple2!122 0))(
  ( (tuple2!123 (_1!74 Context!38) (_2!74 C!1348)) )
))
(declare-datatypes ((Hashable!31 0))(
  ( (HashableExt!30 (__x!496 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!124 0))(
  ( (tuple2!125 (_1!75 tuple2!122) (_2!75 (InoxSet Context!38))) )
))
(declare-datatypes ((List!233 0))(
  ( (Nil!231) (Cons!231 (h!5627 tuple2!124) (t!14823 List!233)) )
))
(declare-datatypes ((array!109 0))(
  ( (array!110 (arr!78 (Array (_ BitVec 32) (_ BitVec 64))) (size!303 (_ BitVec 32))) )
))
(declare-datatypes ((array!111 0))(
  ( (array!112 (arr!79 (Array (_ BitVec 32) List!233)) (size!304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!62 0))(
  ( (LongMapFixedSize!63 (defaultEntry!364 Int) (mask!680 (_ BitVec 32)) (extraKeys!276 (_ BitVec 32)) (zeroValue!286 List!233) (minValue!286 List!233) (_size!198 (_ BitVec 32)) (_keys!319 array!109) (_values!308 array!111) (_vacant!91 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!121 0))(
  ( (Cell!122 (v!12024 LongMapFixedSize!62)) )
))
(declare-datatypes ((MutLongMap!31 0))(
  ( (LongMap!31 (underlying!261 Cell!121)) (MutLongMapExt!30 (__x!497 Int)) )
))
(declare-datatypes ((Cell!123 0))(
  ( (Cell!124 (v!12025 MutLongMap!31)) )
))
(declare-datatypes ((MutableMap!31 0))(
  ( (MutableMapExt!30 (__x!498 Int)) (HashMap!31 (underlying!262 Cell!123) (hashF!1891 Hashable!31) (_size!199 (_ BitVec 32)) (defaultValue!177 Int)) )
))
(declare-datatypes ((CacheUp!28 0))(
  ( (CacheUp!29 (cache!510 MutableMap!31)) )
))
(declare-fun cacheUp!472 () CacheUp!28)

(declare-fun e!14546 () Bool)

(declare-fun inv!536 (CacheUp!28) Bool)

(assert (=> start!1478 (and (inv!536 cacheUp!472) e!14546)))

(assert (=> start!1478 true))

(declare-datatypes ((tuple3!26 0))(
  ( (tuple3!27 (_1!76 Regex!137) (_2!76 Context!38) (_3!13 C!1348)) )
))
(declare-datatypes ((tuple2!126 0))(
  ( (tuple2!127 (_1!77 tuple3!26) (_2!77 (InoxSet Context!38))) )
))
(declare-datatypes ((List!234 0))(
  ( (Nil!232) (Cons!232 (h!5628 tuple2!126) (t!14824 List!234)) )
))
(declare-datatypes ((Hashable!32 0))(
  ( (HashableExt!31 (__x!499 Int)) )
))
(declare-datatypes ((array!113 0))(
  ( (array!114 (arr!80 (Array (_ BitVec 32) List!234)) (size!305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!64 0))(
  ( (LongMapFixedSize!65 (defaultEntry!365 Int) (mask!681 (_ BitVec 32)) (extraKeys!277 (_ BitVec 32)) (zeroValue!287 List!234) (minValue!287 List!234) (_size!200 (_ BitVec 32)) (_keys!320 array!109) (_values!309 array!113) (_vacant!92 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!125 0))(
  ( (Cell!126 (v!12026 LongMapFixedSize!64)) )
))
(declare-datatypes ((MutLongMap!32 0))(
  ( (LongMap!32 (underlying!263 Cell!125)) (MutLongMapExt!31 (__x!500 Int)) )
))
(declare-datatypes ((Cell!127 0))(
  ( (Cell!128 (v!12027 MutLongMap!32)) )
))
(declare-datatypes ((MutableMap!32 0))(
  ( (MutableMapExt!31 (__x!501 Int)) (HashMap!32 (underlying!264 Cell!127) (hashF!1892 Hashable!32) (_size!201 (_ BitVec 32)) (defaultValue!178 Int)) )
))
(declare-datatypes ((CacheDown!30 0))(
  ( (CacheDown!31 (cache!511 MutableMap!32)) )
))
(declare-fun cacheDown!485 () CacheDown!30)

(declare-fun e!14544 () Bool)

(declare-fun inv!537 (CacheDown!30) Bool)

(assert (=> start!1478 (and (inv!537 cacheDown!485) e!14544)))

(assert (=> start!1478 e!14542))

(declare-fun mapNonEmpty!131 () Bool)

(declare-fun mapRes!132 () Bool)

(declare-fun tp!22472 () Bool)

(declare-fun tp!22463 () Bool)

(assert (=> mapNonEmpty!131 (= mapRes!132 (and tp!22472 tp!22463))))

(declare-fun mapValue!131 () List!234)

(declare-fun mapKey!131 () (_ BitVec 32))

(declare-fun mapRest!132 () (Array (_ BitVec 32) List!234))

(assert (=> mapNonEmpty!131 (= (arr!80 (_values!309 (v!12026 (underlying!263 (v!12027 (underlying!264 (cache!511 cacheDown!485))))))) (store mapRest!132 mapKey!131 mapValue!131))))

(declare-fun e!14551 () Bool)

(declare-fun e!14550 () Bool)

(assert (=> b!32659 (= e!14551 (and e!14550 tp!22462))))

(declare-fun b!32660 () Bool)

(assert (=> b!32660 (= e!14544 e!14551)))

(declare-fun b!32661 () Bool)

(declare-fun res!27036 () Bool)

(assert (=> b!32661 (=> (not res!27036) (not e!14548))))

(declare-fun rulesInvariant!9 (LexerInterface!15 List!231) Bool)

(assert (=> b!32661 (= res!27036 (rulesInvariant!9 thiss!12222 rules!1369))))

(declare-fun b!32662 () Bool)

(declare-fun res!27032 () Bool)

(assert (=> b!32662 (=> (not res!27032) (not e!14548))))

(declare-fun valid!44 (CacheUp!28) Bool)

(assert (=> b!32662 (= res!27032 (valid!44 cacheUp!472))))

(declare-fun b!32663 () Bool)

(declare-fun e!14555 () Bool)

(assert (=> b!32663 (= e!14555 e!14541)))

(declare-fun b!32664 () Bool)

(declare-fun e!14537 () Bool)

(declare-fun lt!1827 () MutLongMap!31)

(assert (=> b!32664 (= e!14537 (and e!14543 ((_ is LongMap!31) lt!1827)))))

(assert (=> b!32664 (= lt!1827 (v!12025 (underlying!262 (cache!510 cacheUp!472))))))

(declare-fun b!32665 () Bool)

(declare-fun e!14535 () Bool)

(assert (=> b!32665 (= e!14546 e!14535)))

(declare-fun b!32666 () Bool)

(declare-fun e!14553 () Bool)

(declare-fun tp!22459 () Bool)

(declare-fun mapRes!131 () Bool)

(assert (=> b!32666 (= e!14553 (and tp!22459 mapRes!131))))

(declare-fun condMapEmpty!131 () Bool)

(declare-fun mapDefault!131 () List!233)

(assert (=> b!32666 (= condMapEmpty!131 (= (arr!79 (_values!308 (v!12024 (underlying!261 (v!12025 (underlying!262 (cache!510 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!233)) mapDefault!131)))))

(declare-fun b!32667 () Bool)

(declare-fun res!27034 () Bool)

(assert (=> b!32667 (=> (not res!27034) (not e!14548))))

(declare-fun isEmpty!71 (List!231) Bool)

(assert (=> b!32667 (= res!27034 (not (isEmpty!71 rules!1369)))))

(declare-fun b!32668 () Bool)

(declare-fun tp!22464 () Bool)

(declare-fun inv!538 (Conc!32) Bool)

(assert (=> b!32668 (= e!14536 (and (inv!538 (c!15267 input!768)) tp!22464))))

(declare-fun mapIsEmpty!131 () Bool)

(assert (=> mapIsEmpty!131 mapRes!132))

(assert (=> b!32669 (= e!14539 (and tp!22456 tp!22460))))

(assert (=> b!32670 (= e!14535 (and e!14537 tp!22468))))

(declare-fun mapNonEmpty!132 () Bool)

(declare-fun tp!22471 () Bool)

(declare-fun tp!22470 () Bool)

(assert (=> mapNonEmpty!132 (= mapRes!131 (and tp!22471 tp!22470))))

(declare-fun mapValue!132 () List!233)

(declare-fun mapKey!132 () (_ BitVec 32))

(declare-fun mapRest!131 () (Array (_ BitVec 32) List!233))

(assert (=> mapNonEmpty!132 (= (arr!79 (_values!308 (v!12024 (underlying!261 (v!12025 (underlying!262 (cache!510 cacheUp!472))))))) (store mapRest!131 mapKey!132 mapValue!132))))

(declare-fun b!32671 () Bool)

(declare-fun e!14552 () Bool)

(declare-fun tp!22466 () Bool)

(assert (=> b!32671 (= e!14552 (and tp!22466 mapRes!132))))

(declare-fun condMapEmpty!132 () Bool)

(declare-fun mapDefault!132 () List!234)

(assert (=> b!32671 (= condMapEmpty!132 (= (arr!80 (_values!309 (v!12026 (underlying!263 (v!12027 (underlying!264 (cache!511 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!234)) mapDefault!132)))))

(declare-fun mapIsEmpty!132 () Bool)

(assert (=> mapIsEmpty!132 mapRes!131))

(declare-fun b!32672 () Bool)

(assert (=> b!32672 (= e!14548 false)))

(declare-datatypes ((Token!16 0))(
  ( (Token!17 (value!5931 TokenValue!103) (rule!601 Rule!26) (size!306 Int) (originalCharacters!179 List!229)) )
))
(declare-datatypes ((List!235 0))(
  ( (Nil!233) (Cons!233 (h!5629 Token!16) (t!14825 List!235)) )
))
(declare-datatypes ((IArray!67 0))(
  ( (IArray!68 (innerList!91 List!235)) )
))
(declare-datatypes ((Conc!33 0))(
  ( (Node!33 (left!357 Conc!33) (right!687 Conc!33) (csize!296 Int) (cheight!244 Int)) (Leaf!166 (xs!2612 IArray!67) (csize!297 Int)) (Empty!33) )
))
(declare-datatypes ((BalanceConc!66 0))(
  ( (BalanceConc!67 (c!15268 Conc!33)) )
))
(declare-datatypes ((tuple2!128 0))(
  ( (tuple2!129 (_1!78 BalanceConc!66) (_2!78 BalanceConc!64)) )
))
(declare-datatypes ((tuple3!28 0))(
  ( (tuple3!29 (_1!79 tuple2!128) (_2!79 CacheUp!28) (_3!14 CacheDown!30)) )
))
(declare-fun lt!1826 () tuple3!28)

(declare-fun lexTailRecV2MemOnlyDeriv!1 (LexerInterface!15 List!231 BalanceConc!64 BalanceConc!64 BalanceConc!64 BalanceConc!66 CacheUp!28 CacheDown!30) tuple3!28)

(assert (=> b!32672 (= lt!1826 (lexTailRecV2MemOnlyDeriv!1 thiss!12222 rules!1369 input!768 (BalanceConc!65 Empty!32) input!768 (BalanceConc!67 Empty!33) cacheUp!472 cacheDown!485))))

(declare-fun tp!22469 () Bool)

(declare-fun tp!22473 () Bool)

(declare-fun array_inv!35 (array!109) Bool)

(declare-fun array_inv!36 (array!113) Bool)

(assert (=> b!32673 (= e!14540 (and tp!22457 tp!22473 tp!22469 (array_inv!35 (_keys!320 (v!12026 (underlying!263 (v!12027 (underlying!264 (cache!511 cacheDown!485))))))) (array_inv!36 (_values!309 (v!12026 (underlying!263 (v!12027 (underlying!264 (cache!511 cacheDown!485))))))) e!14552))))

(declare-fun tp!22465 () Bool)

(declare-fun tp!22461 () Bool)

(declare-fun array_inv!37 (array!111) Bool)

(assert (=> b!32674 (= e!14538 (and tp!22467 tp!22461 tp!22465 (array_inv!35 (_keys!319 (v!12024 (underlying!261 (v!12025 (underlying!262 (cache!510 cacheUp!472))))))) (array_inv!37 (_values!308 (v!12024 (underlying!261 (v!12025 (underlying!262 (cache!510 cacheUp!472))))))) e!14553))))

(declare-fun b!32675 () Bool)

(declare-fun res!27033 () Bool)

(assert (=> b!32675 (=> (not res!27033) (not e!14548))))

(declare-fun valid!45 (CacheDown!30) Bool)

(assert (=> b!32675 (= res!27033 (valid!45 cacheDown!485))))

(declare-fun b!32676 () Bool)

(declare-fun lt!1825 () MutLongMap!32)

(assert (=> b!32676 (= e!14550 (and e!14555 ((_ is LongMap!32) lt!1825)))))

(assert (=> b!32676 (= lt!1825 (v!12027 (underlying!264 (cache!511 cacheDown!485))))))

(assert (= (and start!1478 res!27035) b!32667))

(assert (= (and b!32667 res!27034) b!32661))

(assert (= (and b!32661 res!27036) b!32662))

(assert (= (and b!32662 res!27032) b!32675))

(assert (= (and b!32675 res!27033) b!32672))

(assert (= start!1478 b!32668))

(assert (= (and b!32666 condMapEmpty!131) mapIsEmpty!132))

(assert (= (and b!32666 (not condMapEmpty!131)) mapNonEmpty!132))

(assert (= b!32674 b!32666))

(assert (= b!32657 b!32674))

(assert (= b!32658 b!32657))

(assert (= (and b!32664 ((_ is LongMap!31) (v!12025 (underlying!262 (cache!510 cacheUp!472))))) b!32658))

(assert (= b!32670 b!32664))

(assert (= (and b!32665 ((_ is HashMap!31) (cache!510 cacheUp!472))) b!32670))

(assert (= start!1478 b!32665))

(assert (= (and b!32671 condMapEmpty!132) mapIsEmpty!131))

(assert (= (and b!32671 (not condMapEmpty!132)) mapNonEmpty!131))

(assert (= b!32673 b!32671))

(assert (= b!32654 b!32673))

(assert (= b!32663 b!32654))

(assert (= (and b!32676 ((_ is LongMap!32) (v!12027 (underlying!264 (cache!511 cacheDown!485))))) b!32663))

(assert (= b!32659 b!32676))

(assert (= (and b!32660 ((_ is HashMap!32) (cache!511 cacheDown!485))) b!32659))

(assert (= start!1478 b!32660))

(assert (= b!32655 b!32669))

(assert (= b!32656 b!32655))

(assert (= (and start!1478 ((_ is Cons!229) rules!1369)) b!32656))

(declare-fun m!8767 () Bool)

(assert (=> start!1478 m!8767))

(declare-fun m!8769 () Bool)

(assert (=> start!1478 m!8769))

(declare-fun m!8771 () Bool)

(assert (=> start!1478 m!8771))

(declare-fun m!8773 () Bool)

(assert (=> b!32673 m!8773))

(declare-fun m!8775 () Bool)

(assert (=> b!32673 m!8775))

(declare-fun m!8777 () Bool)

(assert (=> mapNonEmpty!131 m!8777))

(declare-fun m!8779 () Bool)

(assert (=> b!32675 m!8779))

(declare-fun m!8781 () Bool)

(assert (=> mapNonEmpty!132 m!8781))

(declare-fun m!8783 () Bool)

(assert (=> b!32667 m!8783))

(declare-fun m!8785 () Bool)

(assert (=> b!32661 m!8785))

(declare-fun m!8787 () Bool)

(assert (=> b!32655 m!8787))

(declare-fun m!8789 () Bool)

(assert (=> b!32655 m!8789))

(declare-fun m!8791 () Bool)

(assert (=> b!32672 m!8791))

(declare-fun m!8793 () Bool)

(assert (=> b!32674 m!8793))

(declare-fun m!8795 () Bool)

(assert (=> b!32674 m!8795))

(declare-fun m!8797 () Bool)

(assert (=> b!32668 m!8797))

(declare-fun m!8799 () Bool)

(assert (=> b!32662 m!8799))

(check-sat (not b_next!213) (not b!32671) (not b_next!219) (not b!32675) (not b!32656) (not b_next!215) b_and!211 (not b!32667) (not b!32661) (not b!32662) (not mapNonEmpty!132) (not b_next!211) (not b!32673) b_and!219 (not start!1478) b_and!215 (not b!32674) (not b!32668) (not b_next!209) b_and!217 b_and!213 (not mapNonEmpty!131) b_and!209 (not b!32655) (not b!32666) (not b!32672) (not b_next!217))
(check-sat (not b_next!211) (not b_next!213) b_and!219 (not b_next!219) b_and!215 (not b_next!215) b_and!211 (not b_next!209) b_and!209 (not b_next!217) b_and!217 b_and!213)
