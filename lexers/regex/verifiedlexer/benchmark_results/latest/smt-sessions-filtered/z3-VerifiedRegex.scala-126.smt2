; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1078 () Bool)

(assert start!1078)

(declare-fun b!28812 () Bool)

(declare-fun b_free!29 () Bool)

(declare-fun b_next!29 () Bool)

(assert (=> b!28812 (= b_free!29 (not b_next!29))))

(declare-fun tp!19510 () Bool)

(declare-fun b_and!29 () Bool)

(assert (=> b!28812 (= tp!19510 b_and!29)))

(declare-fun b_free!31 () Bool)

(declare-fun b_next!31 () Bool)

(assert (=> b!28812 (= b_free!31 (not b_next!31))))

(declare-fun tp!19499 () Bool)

(declare-fun b_and!31 () Bool)

(assert (=> b!28812 (= tp!19499 b_and!31)))

(declare-fun b!28808 () Bool)

(declare-fun b_free!33 () Bool)

(declare-fun b_next!33 () Bool)

(assert (=> b!28808 (= b_free!33 (not b_next!33))))

(declare-fun tp!19497 () Bool)

(declare-fun b_and!33 () Bool)

(assert (=> b!28808 (= tp!19497 b_and!33)))

(declare-fun b!28803 () Bool)

(declare-fun b_free!35 () Bool)

(declare-fun b_next!35 () Bool)

(assert (=> b!28803 (= b_free!35 (not b_next!35))))

(declare-fun tp!19506 () Bool)

(declare-fun b_and!35 () Bool)

(assert (=> b!28803 (= tp!19506 b_and!35)))

(declare-fun b!28800 () Bool)

(declare-fun b_free!37 () Bool)

(declare-fun b_next!37 () Bool)

(assert (=> b!28800 (= b_free!37 (not b_next!37))))

(declare-fun tp!19511 () Bool)

(declare-fun b_and!37 () Bool)

(assert (=> b!28800 (= tp!19511 b_and!37)))

(declare-fun b!28806 () Bool)

(declare-fun b_free!39 () Bool)

(declare-fun b_next!39 () Bool)

(assert (=> b!28806 (= b_free!39 (not b_next!39))))

(declare-fun tp!19504 () Bool)

(declare-fun b_and!39 () Bool)

(assert (=> b!28806 (= tp!19504 b_and!39)))

(declare-fun e!11827 () Bool)

(declare-fun e!11840 () Bool)

(assert (=> b!28800 (= e!11827 (and e!11840 tp!19511))))

(declare-fun res!26027 () Bool)

(declare-fun e!11837 () Bool)

(assert (=> start!1078 (=> (not res!26027) (not e!11837))))

(declare-datatypes ((LexerInterface!4 0))(
  ( (LexerInterfaceExt!1 (__x!400 Int)) (Lexer!2) )
))
(declare-fun thiss!12222 () LexerInterface!4)

(get-info :version)

(assert (=> start!1078 (= res!26027 ((_ is Lexer!2) thiss!12222))))

(assert (=> start!1078 e!11837))

(assert (=> start!1078 true))

(declare-fun e!11845 () Bool)

(assert (=> start!1078 e!11845))

(declare-datatypes ((C!1324 0))(
  ( (C!1325 (val!153 Int)) )
))
(declare-datatypes ((Regex!125 0))(
  ( (ElementMatch!125 (c!14947 C!1324)) (Concat!217 (regOne!762 Regex!125) (regTwo!762 Regex!125)) (EmptyExpr!125) (Star!125 (reg!454 Regex!125)) (EmptyLang!125) (Union!125 (regOne!763 Regex!125) (regTwo!763 Regex!125)) )
))
(declare-datatypes ((List!147 0))(
  ( (Nil!145) (Cons!145 (h!5541 Regex!125) (t!14717 List!147)) )
))
(declare-datatypes ((Context!14 0))(
  ( (Context!15 (exprs!507 List!147)) )
))
(declare-datatypes ((tuple2!12 0))(
  ( (tuple2!13 (_1!7 Context!14) (_2!7 C!1324)) )
))
(declare-datatypes ((Hashable!7 0))(
  ( (HashableExt!6 (__x!401 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14 0))(
  ( (tuple2!15 (_1!8 tuple2!12) (_2!8 (InoxSet Context!14))) )
))
(declare-datatypes ((List!148 0))(
  ( (Nil!146) (Cons!146 (h!5542 tuple2!14) (t!14718 List!148)) )
))
(declare-datatypes ((array!25 0))(
  ( (array!26 (arr!42 (Array (_ BitVec 32) (_ BitVec 64))) (size!241 (_ BitVec 32))) )
))
(declare-datatypes ((array!27 0))(
  ( (array!28 (arr!43 (Array (_ BitVec 32) List!148)) (size!242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!14 0))(
  ( (LongMapFixedSize!15 (defaultEntry!340 Int) (mask!650 (_ BitVec 32)) (extraKeys!252 (_ BitVec 32)) (zeroValue!262 List!148) (minValue!262 List!148) (_size!150 (_ BitVec 32)) (_keys!295 array!25) (_values!284 array!27) (_vacant!67 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!25 0))(
  ( (Cell!26 (v!11965 LongMapFixedSize!14)) )
))
(declare-datatypes ((MutLongMap!7 0))(
  ( (LongMap!7 (underlying!213 Cell!25)) (MutLongMapExt!6 (__x!402 Int)) )
))
(declare-datatypes ((Cell!27 0))(
  ( (Cell!28 (v!11966 MutLongMap!7)) )
))
(declare-datatypes ((MutableMap!7 0))(
  ( (MutableMapExt!6 (__x!403 Int)) (HashMap!7 (underlying!214 Cell!27) (hashF!1867 Hashable!7) (_size!151 (_ BitVec 32)) (defaultValue!153 Int)) )
))
(declare-datatypes ((CacheUp!4 0))(
  ( (CacheUp!5 (cache!486 MutableMap!7)) )
))
(declare-fun cacheUp!472 () CacheUp!4)

(declare-fun e!11842 () Bool)

(declare-fun inv!450 (CacheUp!4) Bool)

(assert (=> start!1078 (and (inv!450 cacheUp!472) e!11842)))

(declare-datatypes ((tuple3!2 0))(
  ( (tuple3!3 (_1!9 Regex!125) (_2!9 Context!14) (_3!1 C!1324)) )
))
(declare-datatypes ((tuple2!16 0))(
  ( (tuple2!17 (_1!10 tuple3!2) (_2!10 (InoxSet Context!14))) )
))
(declare-datatypes ((List!149 0))(
  ( (Nil!147) (Cons!147 (h!5543 tuple2!16) (t!14719 List!149)) )
))
(declare-datatypes ((Hashable!8 0))(
  ( (HashableExt!7 (__x!404 Int)) )
))
(declare-datatypes ((array!29 0))(
  ( (array!30 (arr!44 (Array (_ BitVec 32) List!149)) (size!243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!16 0))(
  ( (LongMapFixedSize!17 (defaultEntry!341 Int) (mask!651 (_ BitVec 32)) (extraKeys!253 (_ BitVec 32)) (zeroValue!263 List!149) (minValue!263 List!149) (_size!152 (_ BitVec 32)) (_keys!296 array!25) (_values!285 array!29) (_vacant!68 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!29 0))(
  ( (Cell!30 (v!11967 LongMapFixedSize!16)) )
))
(declare-datatypes ((MutLongMap!8 0))(
  ( (LongMap!8 (underlying!215 Cell!29)) (MutLongMapExt!7 (__x!405 Int)) )
))
(declare-datatypes ((Cell!31 0))(
  ( (Cell!32 (v!11968 MutLongMap!8)) )
))
(declare-datatypes ((MutableMap!8 0))(
  ( (MutableMapExt!7 (__x!406 Int)) (HashMap!8 (underlying!216 Cell!31) (hashF!1868 Hashable!8) (_size!153 (_ BitVec 32)) (defaultValue!154 Int)) )
))
(declare-datatypes ((CacheDown!6 0))(
  ( (CacheDown!7 (cache!487 MutableMap!8)) )
))
(declare-fun cacheDown!485 () CacheDown!6)

(declare-fun e!11828 () Bool)

(declare-fun inv!451 (CacheDown!6) Bool)

(assert (=> start!1078 (and (inv!451 cacheDown!485) e!11828)))

(declare-fun b!28801 () Bool)

(declare-fun res!26028 () Bool)

(assert (=> b!28801 (=> (not res!26028) (not e!11837))))

(declare-datatypes ((List!150 0))(
  ( (Nil!148) (Cons!148 (h!5544 C!1324) (t!14720 List!150)) )
))
(declare-datatypes ((IArray!29 0))(
  ( (IArray!30 (innerList!72 List!150)) )
))
(declare-datatypes ((String!601 0))(
  ( (String!602 (value!5595 String)) )
))
(declare-datatypes ((List!151 0))(
  ( (Nil!149) (Cons!149 (h!5545 (_ BitVec 16)) (t!14721 List!151)) )
))
(declare-datatypes ((TokenValue!92 0))(
  ( (FloatLiteralValue!184 (text!1089 List!151)) (TokenValueExt!91 (__x!407 Int)) (Broken!460 (value!5596 List!151)) (Object!93) (End!92) (Def!92) (Underscore!92) (Match!92) (Else!92) (Error!92) (Case!92) (If!92) (Extends!92) (Abstract!92) (Class!92) (Val!92) (DelimiterValue!184 (del!152 List!151)) (KeywordValue!98 (value!5597 List!151)) (CommentValue!184 (value!5598 List!151)) (WhitespaceValue!184 (value!5599 List!151)) (IndentationValue!92 (value!5600 List!151)) (String!603) (Int32!92) (Broken!461 (value!5601 List!151)) (Boolean!93) (Unit!99) (OperatorValue!95 (op!152 List!151)) (IdentifierValue!184 (value!5602 List!151)) (IdentifierValue!185 (value!5603 List!151)) (WhitespaceValue!185 (value!5604 List!151)) (True!184) (False!184) (Broken!462 (value!5605 List!151)) (Broken!463 (value!5606 List!151)) (True!185) (RightBrace!92) (RightBracket!92) (Colon!92) (Null!92) (Comma!92) (LeftBracket!92) (False!185) (LeftBrace!92) (ImaginaryLiteralValue!92 (text!1090 List!151)) (StringLiteralValue!276 (value!5607 List!151)) (EOFValue!92 (value!5608 List!151)) (IdentValue!92 (value!5609 List!151)) (DelimiterValue!185 (value!5610 List!151)) (DedentValue!92 (value!5611 List!151)) (NewLineValue!92 (value!5612 List!151)) (IntegerValue!276 (value!5613 (_ BitVec 32)) (text!1091 List!151)) (IntegerValue!277 (value!5614 Int) (text!1092 List!151)) (Times!92) (Or!92) (Equal!92) (Minus!92) (Broken!464 (value!5615 List!151)) (And!92) (Div!92) (LessEqual!92) (Mod!92) (Concat!218) (Not!92) (Plus!92) (SpaceValue!92 (value!5616 List!151)) (IntegerValue!278 (value!5617 Int) (text!1093 List!151)) (StringLiteralValue!277 (text!1094 List!151)) (FloatLiteralValue!185 (text!1095 List!151)) (BytesLiteralValue!92 (value!5618 List!151)) (CommentValue!185 (value!5619 List!151)) (StringLiteralValue!278 (value!5620 List!151)) (ErrorTokenValue!92 (msg!153 List!151)) )
))
(declare-datatypes ((Conc!14 0))(
  ( (Node!14 (left!324 Conc!14) (right!654 Conc!14) (csize!258 Int) (cheight!225 Int)) (Leaf!141 (xs!2591 IArray!29) (csize!259 Int)) (Empty!14) )
))
(declare-datatypes ((BalanceConc!28 0))(
  ( (BalanceConc!29 (c!14948 Conc!14)) )
))
(declare-datatypes ((TokenValueInjection!8 0))(
  ( (TokenValueInjection!9 (toValue!571 Int) (toChars!430 Int)) )
))
(declare-datatypes ((Rule!4 0))(
  ( (Rule!5 (regex!102 Regex!125) (tag!280 String!601) (isSeparator!102 Bool) (transformation!102 TokenValueInjection!8)) )
))
(declare-datatypes ((List!152 0))(
  ( (Nil!150) (Cons!150 (h!5546 Rule!4) (t!14722 List!152)) )
))
(declare-fun rules!1369 () List!152)

(declare-fun isEmpty!39 (List!152) Bool)

(assert (=> b!28801 (= res!26028 (not (isEmpty!39 rules!1369)))))

(declare-fun mapNonEmpty!25 () Bool)

(declare-fun mapRes!26 () Bool)

(declare-fun tp!19514 () Bool)

(declare-fun tp!19500 () Bool)

(assert (=> mapNonEmpty!25 (= mapRes!26 (and tp!19514 tp!19500))))

(declare-fun mapKey!26 () (_ BitVec 32))

(declare-fun mapRest!26 () (Array (_ BitVec 32) List!148))

(declare-fun mapValue!25 () List!148)

(assert (=> mapNonEmpty!25 (= (arr!43 (_values!284 (v!11965 (underlying!213 (v!11966 (underlying!214 (cache!486 cacheUp!472))))))) (store mapRest!26 mapKey!26 mapValue!25))))

(declare-fun b!28802 () Bool)

(declare-fun e!11839 () Bool)

(assert (=> b!28802 (= e!11828 e!11839)))

(declare-fun tp!19503 () Bool)

(declare-fun tp!19513 () Bool)

(declare-fun e!11835 () Bool)

(declare-fun e!11844 () Bool)

(declare-fun array_inv!7 (array!25) Bool)

(declare-fun array_inv!8 (array!27) Bool)

(assert (=> b!28803 (= e!11844 (and tp!19506 tp!19513 tp!19503 (array_inv!7 (_keys!295 (v!11965 (underlying!213 (v!11966 (underlying!214 (cache!486 cacheUp!472))))))) (array_inv!8 (_values!284 (v!11965 (underlying!213 (v!11966 (underlying!214 (cache!486 cacheUp!472))))))) e!11835))))

(declare-fun b!28804 () Bool)

(declare-fun e!11836 () Bool)

(declare-fun e!11832 () Bool)

(assert (=> b!28804 (= e!11836 e!11832)))

(declare-fun b!28805 () Bool)

(declare-fun e!11843 () Bool)

(declare-fun e!11841 () Bool)

(assert (=> b!28805 (= e!11843 e!11841)))

(declare-fun tp!19509 () Bool)

(declare-fun tp!19502 () Bool)

(declare-fun e!11826 () Bool)

(declare-fun array_inv!9 (array!29) Bool)

(assert (=> b!28806 (= e!11841 (and tp!19504 tp!19502 tp!19509 (array_inv!7 (_keys!296 (v!11967 (underlying!215 (v!11968 (underlying!216 (cache!487 cacheDown!485))))))) (array_inv!9 (_values!285 (v!11967 (underlying!215 (v!11968 (underlying!216 (cache!487 cacheDown!485))))))) e!11826))))

(declare-fun b!28807 () Bool)

(declare-fun e!11830 () Bool)

(declare-fun tp!19498 () Bool)

(assert (=> b!28807 (= e!11845 (and e!11830 tp!19498))))

(declare-fun e!11831 () Bool)

(assert (=> b!28808 (= e!11839 (and e!11831 tp!19497))))

(declare-fun b!28809 () Bool)

(declare-fun tp!19505 () Bool)

(assert (=> b!28809 (= e!11835 (and tp!19505 mapRes!26))))

(declare-fun condMapEmpty!26 () Bool)

(declare-fun mapDefault!25 () List!148)

(assert (=> b!28809 (= condMapEmpty!26 (= (arr!43 (_values!284 (v!11965 (underlying!213 (v!11966 (underlying!214 (cache!486 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!148)) mapDefault!25)))))

(declare-fun b!28810 () Bool)

(declare-fun lt!1257 () MutLongMap!7)

(assert (=> b!28810 (= e!11840 (and e!11836 ((_ is LongMap!7) lt!1257)))))

(assert (=> b!28810 (= lt!1257 (v!11966 (underlying!214 (cache!486 cacheUp!472))))))

(declare-fun b!28811 () Bool)

(declare-fun res!26029 () Bool)

(assert (=> b!28811 (=> (not res!26029) (not e!11837))))

(declare-fun valid!19 (CacheUp!4) Bool)

(assert (=> b!28811 (= res!26029 (valid!19 cacheUp!472))))

(declare-fun e!11838 () Bool)

(assert (=> b!28812 (= e!11838 (and tp!19510 tp!19499))))

(declare-fun b!28813 () Bool)

(declare-fun res!26030 () Bool)

(assert (=> b!28813 (=> (not res!26030) (not e!11837))))

(declare-fun rulesInvariant!3 (LexerInterface!4 List!152) Bool)

(assert (=> b!28813 (= res!26030 (rulesInvariant!3 thiss!12222 rules!1369))))

(declare-fun b!28814 () Bool)

(assert (=> b!28814 (= e!11832 e!11844)))

(declare-fun b!28815 () Bool)

(assert (=> b!28815 (= e!11837 false)))

(declare-fun lt!1258 () Bool)

(declare-fun valid!20 (CacheDown!6) Bool)

(assert (=> b!28815 (= lt!1258 (valid!20 cacheDown!485))))

(declare-fun mapIsEmpty!25 () Bool)

(declare-fun mapRes!25 () Bool)

(assert (=> mapIsEmpty!25 mapRes!25))

(declare-fun b!28816 () Bool)

(declare-fun tp!19512 () Bool)

(declare-fun inv!449 (String!601) Bool)

(declare-fun inv!452 (TokenValueInjection!8) Bool)

(assert (=> b!28816 (= e!11830 (and tp!19512 (inv!449 (tag!280 (h!5546 rules!1369))) (inv!452 (transformation!102 (h!5546 rules!1369))) e!11838))))

(declare-fun mapIsEmpty!26 () Bool)

(assert (=> mapIsEmpty!26 mapRes!26))

(declare-fun b!28817 () Bool)

(assert (=> b!28817 (= e!11842 e!11827)))

(declare-fun mapNonEmpty!26 () Bool)

(declare-fun tp!19501 () Bool)

(declare-fun tp!19507 () Bool)

(assert (=> mapNonEmpty!26 (= mapRes!25 (and tp!19501 tp!19507))))

(declare-fun mapKey!25 () (_ BitVec 32))

(declare-fun mapRest!25 () (Array (_ BitVec 32) List!149))

(declare-fun mapValue!26 () List!149)

(assert (=> mapNonEmpty!26 (= (arr!44 (_values!285 (v!11967 (underlying!215 (v!11968 (underlying!216 (cache!487 cacheDown!485))))))) (store mapRest!25 mapKey!25 mapValue!26))))

(declare-fun b!28818 () Bool)

(declare-fun e!11829 () Bool)

(assert (=> b!28818 (= e!11829 e!11843)))

(declare-fun b!28819 () Bool)

(declare-fun lt!1256 () MutLongMap!8)

(assert (=> b!28819 (= e!11831 (and e!11829 ((_ is LongMap!8) lt!1256)))))

(assert (=> b!28819 (= lt!1256 (v!11968 (underlying!216 (cache!487 cacheDown!485))))))

(declare-fun b!28820 () Bool)

(declare-fun tp!19508 () Bool)

(assert (=> b!28820 (= e!11826 (and tp!19508 mapRes!25))))

(declare-fun condMapEmpty!25 () Bool)

(declare-fun mapDefault!26 () List!149)

(assert (=> b!28820 (= condMapEmpty!25 (= (arr!44 (_values!285 (v!11967 (underlying!215 (v!11968 (underlying!216 (cache!487 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!149)) mapDefault!26)))))

(assert (= (and start!1078 res!26027) b!28801))

(assert (= (and b!28801 res!26028) b!28813))

(assert (= (and b!28813 res!26030) b!28811))

(assert (= (and b!28811 res!26029) b!28815))

(assert (= b!28816 b!28812))

(assert (= b!28807 b!28816))

(assert (= (and start!1078 ((_ is Cons!150) rules!1369)) b!28807))

(assert (= (and b!28809 condMapEmpty!26) mapIsEmpty!26))

(assert (= (and b!28809 (not condMapEmpty!26)) mapNonEmpty!25))

(assert (= b!28803 b!28809))

(assert (= b!28814 b!28803))

(assert (= b!28804 b!28814))

(assert (= (and b!28810 ((_ is LongMap!7) (v!11966 (underlying!214 (cache!486 cacheUp!472))))) b!28804))

(assert (= b!28800 b!28810))

(assert (= (and b!28817 ((_ is HashMap!7) (cache!486 cacheUp!472))) b!28800))

(assert (= start!1078 b!28817))

(assert (= (and b!28820 condMapEmpty!25) mapIsEmpty!25))

(assert (= (and b!28820 (not condMapEmpty!25)) mapNonEmpty!26))

(assert (= b!28806 b!28820))

(assert (= b!28805 b!28806))

(assert (= b!28818 b!28805))

(assert (= (and b!28819 ((_ is LongMap!8) (v!11968 (underlying!216 (cache!487 cacheDown!485))))) b!28818))

(assert (= b!28808 b!28819))

(assert (= (and b!28802 ((_ is HashMap!8) (cache!487 cacheDown!485))) b!28808))

(assert (= start!1078 b!28802))

(declare-fun m!5275 () Bool)

(assert (=> b!28806 m!5275))

(declare-fun m!5277 () Bool)

(assert (=> b!28806 m!5277))

(declare-fun m!5279 () Bool)

(assert (=> b!28813 m!5279))

(declare-fun m!5281 () Bool)

(assert (=> b!28803 m!5281))

(declare-fun m!5283 () Bool)

(assert (=> b!28803 m!5283))

(declare-fun m!5285 () Bool)

(assert (=> b!28811 m!5285))

(declare-fun m!5287 () Bool)

(assert (=> b!28816 m!5287))

(declare-fun m!5289 () Bool)

(assert (=> b!28816 m!5289))

(declare-fun m!5291 () Bool)

(assert (=> start!1078 m!5291))

(declare-fun m!5293 () Bool)

(assert (=> start!1078 m!5293))

(declare-fun m!5295 () Bool)

(assert (=> b!28815 m!5295))

(declare-fun m!5297 () Bool)

(assert (=> mapNonEmpty!25 m!5297))

(declare-fun m!5299 () Bool)

(assert (=> mapNonEmpty!26 m!5299))

(declare-fun m!5301 () Bool)

(assert (=> b!28801 m!5301))

(check-sat (not b_next!39) (not mapNonEmpty!26) b_and!37 b_and!35 b_and!39 (not b!28820) (not b!28816) (not b!28811) (not b_next!35) b_and!29 (not mapNonEmpty!25) (not b_next!33) b_and!33 (not b!28806) (not b_next!31) (not b!28813) (not b!28809) b_and!31 (not b!28801) (not start!1078) (not b!28807) (not b_next!29) (not b!28803) (not b!28815) (not b_next!37))
(check-sat (not b_next!33) (not b_next!39) b_and!33 b_and!37 b_and!35 (not b_next!31) b_and!31 b_and!39 (not b_next!29) (not b_next!35) (not b_next!37) b_and!29)
