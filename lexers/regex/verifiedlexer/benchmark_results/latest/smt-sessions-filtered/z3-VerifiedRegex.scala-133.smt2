; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1482 () Bool)

(assert start!1482)

(declare-fun b!32814 () Bool)

(declare-fun b_free!233 () Bool)

(declare-fun b_next!233 () Bool)

(assert (=> b!32814 (= b_free!233 (not b_next!233))))

(declare-fun tp!22572 () Bool)

(declare-fun b_and!233 () Bool)

(assert (=> b!32814 (= tp!22572 b_and!233)))

(declare-fun b!32804 () Bool)

(declare-fun b_free!235 () Bool)

(declare-fun b_next!235 () Bool)

(assert (=> b!32804 (= b_free!235 (not b_next!235))))

(declare-fun tp!22583 () Bool)

(declare-fun b_and!235 () Bool)

(assert (=> b!32804 (= tp!22583 b_and!235)))

(declare-fun b!32796 () Bool)

(declare-fun b_free!237 () Bool)

(declare-fun b_next!237 () Bool)

(assert (=> b!32796 (= b_free!237 (not b_next!237))))

(declare-fun tp!22578 () Bool)

(declare-fun b_and!237 () Bool)

(assert (=> b!32796 (= tp!22578 b_and!237)))

(declare-fun b_free!239 () Bool)

(declare-fun b_next!239 () Bool)

(assert (=> b!32796 (= b_free!239 (not b_next!239))))

(declare-fun tp!22587 () Bool)

(declare-fun b_and!239 () Bool)

(assert (=> b!32796 (= tp!22587 b_and!239)))

(declare-fun b!32812 () Bool)

(declare-fun b_free!241 () Bool)

(declare-fun b_next!241 () Bool)

(assert (=> b!32812 (= b_free!241 (not b_next!241))))

(declare-fun tp!22581 () Bool)

(declare-fun b_and!241 () Bool)

(assert (=> b!32812 (= tp!22581 b_and!241)))

(declare-fun b!32805 () Bool)

(declare-fun b_free!243 () Bool)

(declare-fun b_next!243 () Bool)

(assert (=> b!32805 (= b_free!243 (not b_next!243))))

(declare-fun tp!22570 () Bool)

(declare-fun b_and!243 () Bool)

(assert (=> b!32805 (= tp!22570 b_and!243)))

(declare-fun b!32792 () Bool)

(declare-fun e!14677 () Bool)

(declare-fun e!14674 () Bool)

(assert (=> b!32792 (= e!14677 e!14674)))

(declare-fun b!32793 () Bool)

(declare-fun res!27064 () Bool)

(declare-fun e!14667 () Bool)

(assert (=> b!32793 (=> (not res!27064) (not e!14667))))

(declare-datatypes ((C!1352 0))(
  ( (C!1353 (val!167 Int)) )
))
(declare-datatypes ((List!243 0))(
  ( (Nil!241) (Cons!241 (h!5637 C!1352) (t!14833 List!243)) )
))
(declare-datatypes ((IArray!73 0))(
  ( (IArray!74 (innerList!94 List!243)) )
))
(declare-datatypes ((Regex!139 0))(
  ( (ElementMatch!139 (c!15272 C!1352)) (Concat!244 (regOne!790 Regex!139) (regTwo!790 Regex!139)) (EmptyExpr!139) (Star!139 (reg!468 Regex!139)) (EmptyLang!139) (Union!139 (regOne!791 Regex!139) (regTwo!791 Regex!139)) )
))
(declare-datatypes ((String!668 0))(
  ( (String!669 (value!5962 String)) )
))
(declare-datatypes ((List!244 0))(
  ( (Nil!242) (Cons!242 (h!5638 (_ BitVec 16)) (t!14834 List!244)) )
))
(declare-datatypes ((TokenValue!105 0))(
  ( (FloatLiteralValue!210 (text!1180 List!244)) (TokenValueExt!104 (__x!510 Int)) (Broken!525 (value!5963 List!244)) (Object!106) (End!105) (Def!105) (Underscore!105) (Match!105) (Else!105) (Error!105) (Case!105) (If!105) (Extends!105) (Abstract!105) (Class!105) (Val!105) (DelimiterValue!210 (del!165 List!244)) (KeywordValue!111 (value!5964 List!244)) (CommentValue!210 (value!5965 List!244)) (WhitespaceValue!210 (value!5966 List!244)) (IndentationValue!105 (value!5967 List!244)) (String!670) (Int32!105) (Broken!526 (value!5968 List!244)) (Boolean!106) (Unit!118) (OperatorValue!108 (op!165 List!244)) (IdentifierValue!210 (value!5969 List!244)) (IdentifierValue!211 (value!5970 List!244)) (WhitespaceValue!211 (value!5971 List!244)) (True!210) (False!210) (Broken!527 (value!5972 List!244)) (Broken!528 (value!5973 List!244)) (True!211) (RightBrace!105) (RightBracket!105) (Colon!105) (Null!105) (Comma!105) (LeftBracket!105) (False!211) (LeftBrace!105) (ImaginaryLiteralValue!105 (text!1181 List!244)) (StringLiteralValue!315 (value!5974 List!244)) (EOFValue!105 (value!5975 List!244)) (IdentValue!105 (value!5976 List!244)) (DelimiterValue!211 (value!5977 List!244)) (DedentValue!105 (value!5978 List!244)) (NewLineValue!105 (value!5979 List!244)) (IntegerValue!315 (value!5980 (_ BitVec 32)) (text!1182 List!244)) (IntegerValue!316 (value!5981 Int) (text!1183 List!244)) (Times!105) (Or!105) (Equal!105) (Minus!105) (Broken!529 (value!5982 List!244)) (And!105) (Div!105) (LessEqual!105) (Mod!105) (Concat!245) (Not!105) (Plus!105) (SpaceValue!105 (value!5983 List!244)) (IntegerValue!317 (value!5984 Int) (text!1184 List!244)) (StringLiteralValue!316 (text!1185 List!244)) (FloatLiteralValue!211 (text!1186 List!244)) (BytesLiteralValue!105 (value!5985 List!244)) (CommentValue!211 (value!5986 List!244)) (StringLiteralValue!317 (value!5987 List!244)) (ErrorTokenValue!105 (msg!166 List!244)) )
))
(declare-datatypes ((Conc!36 0))(
  ( (Node!36 (left!361 Conc!36) (right!691 Conc!36) (csize!302 Int) (cheight!247 Int)) (Leaf!170 (xs!2615 IArray!73) (csize!303 Int)) (Empty!36) )
))
(declare-datatypes ((BalanceConc!72 0))(
  ( (BalanceConc!73 (c!15273 Conc!36)) )
))
(declare-datatypes ((TokenValueInjection!34 0))(
  ( (TokenValueInjection!35 (toValue!592 Int) (toChars!451 Int)) )
))
(declare-datatypes ((Rule!30 0))(
  ( (Rule!31 (regex!115 Regex!139) (tag!293 String!668) (isSeparator!115 Bool) (transformation!115 TokenValueInjection!34)) )
))
(declare-datatypes ((List!245 0))(
  ( (Nil!243) (Cons!243 (h!5639 Rule!30) (t!14835 List!245)) )
))
(declare-fun rules!1369 () List!245)

(declare-fun isEmpty!73 (List!245) Bool)

(assert (=> b!32793 (= res!27064 (not (isEmpty!73 rules!1369)))))

(declare-fun e!14678 () Bool)

(declare-fun tp!22577 () Bool)

(declare-fun e!14680 () Bool)

(declare-fun b!32794 () Bool)

(declare-fun inv!541 (String!668) Bool)

(declare-fun inv!547 (TokenValueInjection!34) Bool)

(assert (=> b!32794 (= e!14680 (and tp!22577 (inv!541 (tag!293 (h!5639 rules!1369))) (inv!547 (transformation!115 (h!5639 rules!1369))) e!14678))))

(declare-fun b!32795 () Bool)

(declare-fun e!14670 () Bool)

(declare-fun e!14666 () Bool)

(assert (=> b!32795 (= e!14670 e!14666)))

(assert (=> b!32796 (= e!14678 (and tp!22578 tp!22587))))

(declare-fun b!32797 () Bool)

(declare-fun e!14669 () Bool)

(declare-fun e!14679 () Bool)

(declare-datatypes ((List!246 0))(
  ( (Nil!244) (Cons!244 (h!5640 Regex!139) (t!14836 List!246)) )
))
(declare-datatypes ((Context!42 0))(
  ( (Context!43 (exprs!521 List!246)) )
))
(declare-datatypes ((tuple2!138 0))(
  ( (tuple2!139 (_1!86 Context!42) (_2!86 C!1352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!140 0))(
  ( (tuple2!141 (_1!87 tuple2!138) (_2!87 (InoxSet Context!42))) )
))
(declare-datatypes ((List!247 0))(
  ( (Nil!245) (Cons!245 (h!5641 tuple2!140) (t!14837 List!247)) )
))
(declare-datatypes ((array!121 0))(
  ( (array!122 (arr!84 (Array (_ BitVec 32) (_ BitVec 64))) (size!311 (_ BitVec 32))) )
))
(declare-datatypes ((array!123 0))(
  ( (array!124 (arr!85 (Array (_ BitVec 32) List!247)) (size!312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!70 0))(
  ( (LongMapFixedSize!71 (defaultEntry!368 Int) (mask!685 (_ BitVec 32)) (extraKeys!280 (_ BitVec 32)) (zeroValue!290 List!247) (minValue!290 List!247) (_size!206 (_ BitVec 32)) (_keys!323 array!121) (_values!312 array!123) (_vacant!95 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!137 0))(
  ( (Cell!138 (v!12032 LongMapFixedSize!70)) )
))
(declare-datatypes ((MutLongMap!35 0))(
  ( (LongMap!35 (underlying!269 Cell!137)) (MutLongMapExt!34 (__x!511 Int)) )
))
(declare-fun lt!1861 () MutLongMap!35)

(get-info :version)

(assert (=> b!32797 (= e!14669 (and e!14679 ((_ is LongMap!35) lt!1861)))))

(declare-datatypes ((Hashable!35 0))(
  ( (HashableExt!34 (__x!512 Int)) )
))
(declare-datatypes ((Cell!139 0))(
  ( (Cell!140 (v!12033 MutLongMap!35)) )
))
(declare-datatypes ((MutableMap!35 0))(
  ( (MutableMapExt!34 (__x!513 Int)) (HashMap!35 (underlying!270 Cell!139) (hashF!1895 Hashable!35) (_size!207 (_ BitVec 32)) (defaultValue!181 Int)) )
))
(declare-datatypes ((CacheUp!32 0))(
  ( (CacheUp!33 (cache!514 MutableMap!35)) )
))
(declare-fun cacheUp!472 () CacheUp!32)

(assert (=> b!32797 (= lt!1861 (v!12033 (underlying!270 (cache!514 cacheUp!472))))))

(declare-fun b!32798 () Bool)

(declare-fun e!14687 () Bool)

(declare-fun e!14673 () Bool)

(declare-datatypes ((tuple3!34 0))(
  ( (tuple3!35 (_1!88 Regex!139) (_2!88 Context!42) (_3!17 C!1352)) )
))
(declare-datatypes ((tuple2!142 0))(
  ( (tuple2!143 (_1!89 tuple3!34) (_2!89 (InoxSet Context!42))) )
))
(declare-datatypes ((List!248 0))(
  ( (Nil!246) (Cons!246 (h!5642 tuple2!142) (t!14838 List!248)) )
))
(declare-datatypes ((array!125 0))(
  ( (array!126 (arr!86 (Array (_ BitVec 32) List!248)) (size!313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!72 0))(
  ( (LongMapFixedSize!73 (defaultEntry!369 Int) (mask!686 (_ BitVec 32)) (extraKeys!281 (_ BitVec 32)) (zeroValue!291 List!248) (minValue!291 List!248) (_size!208 (_ BitVec 32)) (_keys!324 array!121) (_values!313 array!125) (_vacant!96 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!141 0))(
  ( (Cell!142 (v!12034 LongMapFixedSize!72)) )
))
(declare-datatypes ((MutLongMap!36 0))(
  ( (LongMap!36 (underlying!271 Cell!141)) (MutLongMapExt!35 (__x!514 Int)) )
))
(declare-fun lt!1859 () MutLongMap!36)

(assert (=> b!32798 (= e!14687 (and e!14673 ((_ is LongMap!36) lt!1859)))))

(declare-datatypes ((Hashable!36 0))(
  ( (HashableExt!35 (__x!515 Int)) )
))
(declare-datatypes ((Cell!143 0))(
  ( (Cell!144 (v!12035 MutLongMap!36)) )
))
(declare-datatypes ((MutableMap!36 0))(
  ( (MutableMapExt!35 (__x!516 Int)) (HashMap!36 (underlying!272 Cell!143) (hashF!1896 Hashable!36) (_size!209 (_ BitVec 32)) (defaultValue!182 Int)) )
))
(declare-datatypes ((CacheDown!34 0))(
  ( (CacheDown!35 (cache!515 MutableMap!36)) )
))
(declare-fun cacheDown!485 () CacheDown!34)

(assert (=> b!32798 (= lt!1859 (v!12035 (underlying!272 (cache!515 cacheDown!485))))))

(declare-fun b!32799 () Bool)

(assert (=> b!32799 (= e!14673 e!14670)))

(declare-fun mapNonEmpty!143 () Bool)

(declare-fun mapRes!143 () Bool)

(declare-fun tp!22582 () Bool)

(declare-fun tp!22588 () Bool)

(assert (=> mapNonEmpty!143 (= mapRes!143 (and tp!22582 tp!22588))))

(declare-fun mapValue!143 () List!247)

(declare-fun mapRest!143 () (Array (_ BitVec 32) List!247))

(declare-fun mapKey!143 () (_ BitVec 32))

(assert (=> mapNonEmpty!143 (= (arr!85 (_values!312 (v!12032 (underlying!269 (v!12033 (underlying!270 (cache!514 cacheUp!472))))))) (store mapRest!143 mapKey!143 mapValue!143))))

(declare-fun mapNonEmpty!144 () Bool)

(declare-fun mapRes!144 () Bool)

(declare-fun tp!22584 () Bool)

(declare-fun tp!22573 () Bool)

(assert (=> mapNonEmpty!144 (= mapRes!144 (and tp!22584 tp!22573))))

(declare-fun mapRest!144 () (Array (_ BitVec 32) List!248))

(declare-fun mapValue!144 () List!248)

(declare-fun mapKey!144 () (_ BitVec 32))

(assert (=> mapNonEmpty!144 (= (arr!86 (_values!313 (v!12034 (underlying!271 (v!12035 (underlying!272 (cache!515 cacheDown!485))))))) (store mapRest!144 mapKey!144 mapValue!144))))

(declare-fun res!27066 () Bool)

(assert (=> start!1482 (=> (not res!27066) (not e!14667))))

(declare-datatypes ((LexerInterface!17 0))(
  ( (LexerInterfaceExt!14 (__x!517 Int)) (Lexer!15) )
))
(declare-fun thiss!12222 () LexerInterface!17)

(assert (=> start!1482 (= res!27066 ((_ is Lexer!15) thiss!12222))))

(assert (=> start!1482 e!14667))

(declare-fun input!768 () BalanceConc!72)

(declare-fun e!14682 () Bool)

(declare-fun inv!548 (BalanceConc!72) Bool)

(assert (=> start!1482 (and (inv!548 input!768) e!14682)))

(declare-fun e!14672 () Bool)

(declare-fun inv!549 (CacheUp!32) Bool)

(assert (=> start!1482 (and (inv!549 cacheUp!472) e!14672)))

(assert (=> start!1482 true))

(declare-fun e!14675 () Bool)

(declare-fun inv!550 (CacheDown!34) Bool)

(assert (=> start!1482 (and (inv!550 cacheDown!485) e!14675)))

(declare-fun e!14671 () Bool)

(assert (=> start!1482 e!14671))

(declare-fun mapIsEmpty!143 () Bool)

(assert (=> mapIsEmpty!143 mapRes!144))

(declare-fun b!32800 () Bool)

(declare-fun res!27062 () Bool)

(assert (=> b!32800 (=> (not res!27062) (not e!14667))))

(declare-fun rulesInvariant!10 (LexerInterface!17 List!245) Bool)

(assert (=> b!32800 (= res!27062 (rulesInvariant!10 thiss!12222 rules!1369))))

(declare-fun b!32801 () Bool)

(assert (=> b!32801 (= e!14679 e!14677)))

(declare-fun b!32802 () Bool)

(declare-fun tp!22580 () Bool)

(declare-fun inv!551 (Conc!36) Bool)

(assert (=> b!32802 (= e!14682 (and (inv!551 (c!15273 input!768)) tp!22580))))

(declare-fun b!32803 () Bool)

(assert (=> b!32803 (= e!14667 false)))

(declare-datatypes ((Token!20 0))(
  ( (Token!21 (value!5988 TokenValue!105) (rule!603 Rule!30) (size!314 Int) (originalCharacters!181 List!243)) )
))
(declare-datatypes ((List!249 0))(
  ( (Nil!247) (Cons!247 (h!5643 Token!20) (t!14839 List!249)) )
))
(declare-fun lt!1860 () List!249)

(declare-datatypes ((IArray!75 0))(
  ( (IArray!76 (innerList!95 List!249)) )
))
(declare-datatypes ((Conc!37 0))(
  ( (Node!37 (left!362 Conc!37) (right!692 Conc!37) (csize!304 Int) (cheight!248 Int)) (Leaf!171 (xs!2616 IArray!75) (csize!305 Int)) (Empty!37) )
))
(declare-datatypes ((BalanceConc!74 0))(
  ( (BalanceConc!75 (c!15274 Conc!37)) )
))
(declare-datatypes ((tuple2!144 0))(
  ( (tuple2!145 (_1!90 BalanceConc!74) (_2!90 BalanceConc!72)) )
))
(declare-fun lt!1858 () tuple2!144)

(declare-fun list!106 (BalanceConc!74) List!249)

(assert (=> b!32803 (= lt!1860 (list!106 (_1!90 lt!1858)))))

(declare-fun lt!1863 () List!249)

(declare-datatypes ((tuple3!36 0))(
  ( (tuple3!37 (_1!91 tuple2!144) (_2!91 CacheUp!32) (_3!18 CacheDown!34)) )
))
(declare-fun lt!1862 () tuple3!36)

(assert (=> b!32803 (= lt!1863 (list!106 (_1!90 (_1!91 lt!1862))))))

(declare-fun lex!4 (LexerInterface!17 List!245 BalanceConc!72) tuple2!144)

(assert (=> b!32803 (= lt!1858 (lex!4 thiss!12222 rules!1369 input!768))))

(declare-fun lexTailRecV2MemOnlyDeriv!3 (LexerInterface!17 List!245 BalanceConc!72 BalanceConc!72 BalanceConc!72 BalanceConc!74 CacheUp!32 CacheDown!34) tuple3!36)

(assert (=> b!32803 (= lt!1862 (lexTailRecV2MemOnlyDeriv!3 thiss!12222 rules!1369 input!768 (BalanceConc!73 Empty!36) input!768 (BalanceConc!75 Empty!37) cacheUp!472 cacheDown!485))))

(declare-fun tp!22579 () Bool)

(declare-fun e!14668 () Bool)

(declare-fun tp!22575 () Bool)

(declare-fun array_inv!41 (array!121) Bool)

(declare-fun array_inv!42 (array!125) Bool)

(assert (=> b!32804 (= e!14666 (and tp!22583 tp!22575 tp!22579 (array_inv!41 (_keys!324 (v!12034 (underlying!271 (v!12035 (underlying!272 (cache!515 cacheDown!485))))))) (array_inv!42 (_values!313 (v!12034 (underlying!271 (v!12035 (underlying!272 (cache!515 cacheDown!485))))))) e!14668))))

(declare-fun tp!22576 () Bool)

(declare-fun e!14683 () Bool)

(declare-fun tp!22586 () Bool)

(declare-fun array_inv!43 (array!123) Bool)

(assert (=> b!32805 (= e!14674 (and tp!22570 tp!22586 tp!22576 (array_inv!41 (_keys!323 (v!12032 (underlying!269 (v!12033 (underlying!270 (cache!514 cacheUp!472))))))) (array_inv!43 (_values!312 (v!12032 (underlying!269 (v!12033 (underlying!270 (cache!514 cacheUp!472))))))) e!14683))))

(declare-fun b!32806 () Bool)

(declare-fun e!14676 () Bool)

(assert (=> b!32806 (= e!14672 e!14676)))

(declare-fun b!32807 () Bool)

(declare-fun tp!22585 () Bool)

(assert (=> b!32807 (= e!14671 (and e!14680 tp!22585))))

(declare-fun b!32808 () Bool)

(declare-fun res!27063 () Bool)

(assert (=> b!32808 (=> (not res!27063) (not e!14667))))

(declare-fun valid!46 (CacheDown!34) Bool)

(assert (=> b!32808 (= res!27063 (valid!46 cacheDown!485))))

(declare-fun b!32809 () Bool)

(declare-fun tp!22574 () Bool)

(assert (=> b!32809 (= e!14683 (and tp!22574 mapRes!143))))

(declare-fun condMapEmpty!143 () Bool)

(declare-fun mapDefault!143 () List!247)

(assert (=> b!32809 (= condMapEmpty!143 (= (arr!85 (_values!312 (v!12032 (underlying!269 (v!12033 (underlying!270 (cache!514 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!247)) mapDefault!143)))))

(declare-fun b!32810 () Bool)

(declare-fun res!27065 () Bool)

(assert (=> b!32810 (=> (not res!27065) (not e!14667))))

(declare-fun valid!47 (CacheUp!32) Bool)

(assert (=> b!32810 (= res!27065 (valid!47 cacheUp!472))))

(declare-fun mapIsEmpty!144 () Bool)

(assert (=> mapIsEmpty!144 mapRes!143))

(declare-fun b!32811 () Bool)

(declare-fun e!14685 () Bool)

(assert (=> b!32811 (= e!14675 e!14685)))

(assert (=> b!32812 (= e!14676 (and e!14669 tp!22581))))

(declare-fun b!32813 () Bool)

(declare-fun tp!22571 () Bool)

(assert (=> b!32813 (= e!14668 (and tp!22571 mapRes!144))))

(declare-fun condMapEmpty!144 () Bool)

(declare-fun mapDefault!144 () List!248)

(assert (=> b!32813 (= condMapEmpty!144 (= (arr!86 (_values!313 (v!12034 (underlying!271 (v!12035 (underlying!272 (cache!515 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!248)) mapDefault!144)))))

(assert (=> b!32814 (= e!14685 (and e!14687 tp!22572))))

(assert (= (and start!1482 res!27066) b!32793))

(assert (= (and b!32793 res!27064) b!32800))

(assert (= (and b!32800 res!27062) b!32810))

(assert (= (and b!32810 res!27065) b!32808))

(assert (= (and b!32808 res!27063) b!32803))

(assert (= start!1482 b!32802))

(assert (= (and b!32809 condMapEmpty!143) mapIsEmpty!144))

(assert (= (and b!32809 (not condMapEmpty!143)) mapNonEmpty!143))

(assert (= b!32805 b!32809))

(assert (= b!32792 b!32805))

(assert (= b!32801 b!32792))

(assert (= (and b!32797 ((_ is LongMap!35) (v!12033 (underlying!270 (cache!514 cacheUp!472))))) b!32801))

(assert (= b!32812 b!32797))

(assert (= (and b!32806 ((_ is HashMap!35) (cache!514 cacheUp!472))) b!32812))

(assert (= start!1482 b!32806))

(assert (= (and b!32813 condMapEmpty!144) mapIsEmpty!143))

(assert (= (and b!32813 (not condMapEmpty!144)) mapNonEmpty!144))

(assert (= b!32804 b!32813))

(assert (= b!32795 b!32804))

(assert (= b!32799 b!32795))

(assert (= (and b!32798 ((_ is LongMap!36) (v!12035 (underlying!272 (cache!515 cacheDown!485))))) b!32799))

(assert (= b!32814 b!32798))

(assert (= (and b!32811 ((_ is HashMap!36) (cache!515 cacheDown!485))) b!32814))

(assert (= start!1482 b!32811))

(assert (= b!32794 b!32796))

(assert (= b!32807 b!32794))

(assert (= (and start!1482 ((_ is Cons!243) rules!1369)) b!32807))

(declare-fun m!8841 () Bool)

(assert (=> mapNonEmpty!144 m!8841))

(declare-fun m!8843 () Bool)

(assert (=> b!32794 m!8843))

(declare-fun m!8845 () Bool)

(assert (=> b!32794 m!8845))

(declare-fun m!8847 () Bool)

(assert (=> b!32808 m!8847))

(declare-fun m!8849 () Bool)

(assert (=> start!1482 m!8849))

(declare-fun m!8851 () Bool)

(assert (=> start!1482 m!8851))

(declare-fun m!8853 () Bool)

(assert (=> start!1482 m!8853))

(declare-fun m!8855 () Bool)

(assert (=> b!32803 m!8855))

(declare-fun m!8857 () Bool)

(assert (=> b!32803 m!8857))

(declare-fun m!8859 () Bool)

(assert (=> b!32803 m!8859))

(declare-fun m!8861 () Bool)

(assert (=> b!32803 m!8861))

(declare-fun m!8863 () Bool)

(assert (=> b!32793 m!8863))

(declare-fun m!8865 () Bool)

(assert (=> b!32802 m!8865))

(declare-fun m!8867 () Bool)

(assert (=> mapNonEmpty!143 m!8867))

(declare-fun m!8869 () Bool)

(assert (=> b!32800 m!8869))

(declare-fun m!8871 () Bool)

(assert (=> b!32804 m!8871))

(declare-fun m!8873 () Bool)

(assert (=> b!32804 m!8873))

(declare-fun m!8875 () Bool)

(assert (=> b!32810 m!8875))

(declare-fun m!8877 () Bool)

(assert (=> b!32805 m!8877))

(declare-fun m!8879 () Bool)

(assert (=> b!32805 m!8879))

(check-sat (not b!32804) (not b!32793) b_and!241 b_and!237 (not b_next!233) b_and!235 b_and!233 (not b!32809) b_and!243 (not mapNonEmpty!144) (not b_next!237) (not b_next!243) (not b!32810) (not b!32802) (not b_next!241) (not b!32808) (not b_next!235) (not b!32805) b_and!239 (not b!32803) (not start!1482) (not b!32800) (not b!32813) (not mapNonEmpty!143) (not b_next!239) (not b!32794) (not b!32807))
(check-sat b_and!241 b_and!237 (not b_next!233) b_and!235 b_and!233 b_and!239 (not b_next!239) b_and!243 (not b_next!237) (not b_next!243) (not b_next!241) (not b_next!235))
