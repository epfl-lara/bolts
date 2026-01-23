; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265840 () Bool)

(assert start!265840)

(declare-fun b!2742194 () Bool)

(declare-fun b_free!76929 () Bool)

(declare-fun b_next!77633 () Bool)

(assert (=> b!2742194 (= b_free!76929 (not b_next!77633))))

(declare-fun tp!861778 () Bool)

(declare-fun b_and!201649 () Bool)

(assert (=> b!2742194 (= tp!861778 b_and!201649)))

(declare-fun b!2742183 () Bool)

(declare-fun b_free!76931 () Bool)

(declare-fun b_next!77635 () Bool)

(assert (=> b!2742183 (= b_free!76931 (not b_next!77635))))

(declare-fun tp!861774 () Bool)

(declare-fun b_and!201651 () Bool)

(assert (=> b!2742183 (= tp!861774 b_and!201651)))

(declare-fun b!2742191 () Bool)

(declare-fun b_free!76933 () Bool)

(declare-fun b_next!77637 () Bool)

(assert (=> b!2742191 (= b_free!76933 (not b_next!77637))))

(declare-fun tp!861779 () Bool)

(declare-fun b_and!201653 () Bool)

(assert (=> b!2742191 (= tp!861779 b_and!201653)))

(declare-fun b!2742198 () Bool)

(declare-fun b_free!76935 () Bool)

(declare-fun b_next!77639 () Bool)

(assert (=> b!2742198 (= b_free!76935 (not b_next!77639))))

(declare-fun tp!861775 () Bool)

(declare-fun b_and!201655 () Bool)

(assert (=> b!2742198 (= tp!861775 b_and!201655)))

(declare-fun b_free!76937 () Bool)

(declare-fun b_next!77641 () Bool)

(assert (=> b!2742198 (= b_free!76937 (not b_next!77641))))

(declare-fun tp!861768 () Bool)

(declare-fun b_and!201657 () Bool)

(assert (=> b!2742198 (= tp!861768 b_and!201657)))

(declare-fun b!2742197 () Bool)

(declare-fun b_free!76939 () Bool)

(declare-fun b_next!77643 () Bool)

(assert (=> b!2742197 (= b_free!76939 (not b_next!77643))))

(declare-fun tp!861770 () Bool)

(declare-fun b_and!201659 () Bool)

(assert (=> b!2742197 (= tp!861770 b_and!201659)))

(declare-fun mapIsEmpty!16241 () Bool)

(declare-fun mapRes!16241 () Bool)

(assert (=> mapIsEmpty!16241 mapRes!16241))

(declare-fun b!2742177 () Bool)

(declare-fun e!1726617 () Bool)

(declare-fun tp!861773 () Bool)

(declare-fun mapRes!16242 () Bool)

(assert (=> b!2742177 (= e!1726617 (and tp!861773 mapRes!16242))))

(declare-fun condMapEmpty!16241 () Bool)

(declare-datatypes ((C!16096 0))(
  ( (C!16097 (val!9982 Int)) )
))
(declare-datatypes ((Regex!7969 0))(
  ( (ElementMatch!7969 (c!444740 C!16096)) (Concat!13008 (regOne!16450 Regex!7969) (regTwo!16450 Regex!7969)) (EmptyExpr!7969) (Star!7969 (reg!8298 Regex!7969)) (EmptyLang!7969) (Union!7969 (regOne!16451 Regex!7969) (regTwo!16451 Regex!7969)) )
))
(declare-datatypes ((List!31551 0))(
  ( (Nil!31451) (Cons!31451 (h!36871 Regex!7969) (t!227639 List!31551)) )
))
(declare-datatypes ((Context!4374 0))(
  ( (Context!4375 (exprs!2687 List!31551)) )
))
(declare-datatypes ((tuple3!4326 0))(
  ( (tuple3!4327 (_1!18246 Regex!7969) (_2!18246 Context!4374) (_3!2633 C!16096)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31226 0))(
  ( (tuple2!31227 (_1!18247 tuple3!4326) (_2!18247 (InoxSet Context!4374))) )
))
(declare-datatypes ((List!31552 0))(
  ( (Nil!31452) (Cons!31452 (h!36872 tuple2!31226) (t!227640 List!31552)) )
))
(declare-datatypes ((array!12665 0))(
  ( (array!12666 (arr!5656 (Array (_ BitVec 32) List!31552)) (size!24300 (_ BitVec 32))) )
))
(declare-datatypes ((array!12667 0))(
  ( (array!12668 (arr!5657 (Array (_ BitVec 32) (_ BitVec 64))) (size!24301 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7108 0))(
  ( (LongMapFixedSize!7109 (defaultEntry!3939 Int) (mask!9275 (_ BitVec 32)) (extraKeys!3803 (_ BitVec 32)) (zeroValue!3813 List!31552) (minValue!3813 List!31552) (_size!7151 (_ BitVec 32)) (_keys!3854 array!12667) (_values!3835 array!12665) (_vacant!3615 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14025 0))(
  ( (Cell!14026 (v!33125 LongMapFixedSize!7108)) )
))
(declare-datatypes ((MutLongMap!3554 0))(
  ( (LongMap!3554 (underlying!7311 Cell!14025)) (MutLongMapExt!3553 (__x!20219 Int)) )
))
(declare-datatypes ((Cell!14027 0))(
  ( (Cell!14028 (v!33126 MutLongMap!3554)) )
))
(declare-datatypes ((Hashable!3470 0))(
  ( (HashableExt!3469 (__x!20220 Int)) )
))
(declare-datatypes ((MutableMap!3460 0))(
  ( (MutableMapExt!3459 (__x!20221 Int)) (HashMap!3460 (underlying!7312 Cell!14027) (hashF!5502 Hashable!3470) (_size!7152 (_ BitVec 32)) (defaultValue!3631 Int)) )
))
(declare-datatypes ((CacheDown!2282 0))(
  ( (CacheDown!2283 (cache!3603 MutableMap!3460)) )
))
(declare-fun cacheDown!646 () CacheDown!2282)

(declare-fun mapDefault!16242 () List!31552)

(assert (=> b!2742177 (= condMapEmpty!16241 (= (arr!5656 (_values!3835 (v!33125 (underlying!7311 (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31552)) mapDefault!16242)))))

(declare-fun b!2742178 () Bool)

(declare-fun e!1726622 () Bool)

(declare-fun e!1726614 () Bool)

(assert (=> b!2742178 (= e!1726622 e!1726614)))

(declare-fun b!2742179 () Bool)

(declare-fun e!1726604 () Bool)

(declare-fun e!1726602 () Bool)

(declare-fun tp!861782 () Bool)

(assert (=> b!2742179 (= e!1726604 (and e!1726602 tp!861782))))

(declare-fun b!2742180 () Bool)

(declare-fun e!1726612 () Bool)

(declare-fun e!1726603 () Bool)

(assert (=> b!2742180 (= e!1726612 e!1726603)))

(declare-fun b!2742181 () Bool)

(declare-fun e!1726608 () Bool)

(assert (=> b!2742181 (= e!1726608 false)))

(declare-datatypes ((List!31553 0))(
  ( (Nil!31453) (Cons!31453 (h!36873 C!16096) (t!227641 List!31553)) )
))
(declare-fun lt!971004 () List!31553)

(declare-datatypes ((IArray!19725 0))(
  ( (IArray!19726 (innerList!9920 List!31553)) )
))
(declare-datatypes ((Conc!9860 0))(
  ( (Node!9860 (left!24178 Conc!9860) (right!24508 Conc!9860) (csize!19950 Int) (cheight!10071 Int)) (Leaf!15013 (xs!12967 IArray!19725) (csize!19951 Int)) (Empty!9860) )
))
(declare-datatypes ((BalanceConc!19334 0))(
  ( (BalanceConc!19335 (c!444741 Conc!9860)) )
))
(declare-fun input!1326 () BalanceConc!19334)

(declare-fun list!11970 (BalanceConc!19334) List!31553)

(assert (=> b!2742181 (= lt!971004 (list!11970 input!1326))))

(declare-fun b!2742182 () Bool)

(declare-fun res!1151355 () Bool)

(assert (=> b!2742182 (=> (not res!1151355) (not e!1726608))))

(declare-datatypes ((tuple2!31228 0))(
  ( (tuple2!31229 (_1!18248 Context!4374) (_2!18248 C!16096)) )
))
(declare-datatypes ((tuple2!31230 0))(
  ( (tuple2!31231 (_1!18249 tuple2!31228) (_2!18249 (InoxSet Context!4374))) )
))
(declare-datatypes ((List!31554 0))(
  ( (Nil!31454) (Cons!31454 (h!36874 tuple2!31230) (t!227642 List!31554)) )
))
(declare-datatypes ((array!12669 0))(
  ( (array!12670 (arr!5658 (Array (_ BitVec 32) List!31554)) (size!24302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7110 0))(
  ( (LongMapFixedSize!7111 (defaultEntry!3940 Int) (mask!9276 (_ BitVec 32)) (extraKeys!3804 (_ BitVec 32)) (zeroValue!3814 List!31554) (minValue!3814 List!31554) (_size!7153 (_ BitVec 32)) (_keys!3855 array!12667) (_values!3836 array!12669) (_vacant!3616 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14029 0))(
  ( (Cell!14030 (v!33127 LongMapFixedSize!7110)) )
))
(declare-datatypes ((MutLongMap!3555 0))(
  ( (LongMap!3555 (underlying!7313 Cell!14029)) (MutLongMapExt!3554 (__x!20222 Int)) )
))
(declare-datatypes ((Cell!14031 0))(
  ( (Cell!14032 (v!33128 MutLongMap!3555)) )
))
(declare-datatypes ((Hashable!3471 0))(
  ( (HashableExt!3470 (__x!20223 Int)) )
))
(declare-datatypes ((MutableMap!3461 0))(
  ( (MutableMapExt!3460 (__x!20224 Int)) (HashMap!3461 (underlying!7314 Cell!14031) (hashF!5503 Hashable!3471) (_size!7154 (_ BitVec 32)) (defaultValue!3632 Int)) )
))
(declare-datatypes ((CacheUp!2170 0))(
  ( (CacheUp!2171 (cache!3604 MutableMap!3461)) )
))
(declare-fun cacheUp!633 () CacheUp!2170)

(declare-fun valid!2760 (CacheUp!2170) Bool)

(assert (=> b!2742182 (= res!1151355 (valid!2760 cacheUp!633))))

(declare-fun tp!861771 () Bool)

(declare-fun e!1726619 () Bool)

(declare-fun tp!861767 () Bool)

(declare-fun array_inv!4043 (array!12667) Bool)

(declare-fun array_inv!4044 (array!12669) Bool)

(assert (=> b!2742183 (= e!1726603 (and tp!861774 tp!861767 tp!861771 (array_inv!4043 (_keys!3855 (v!33127 (underlying!7313 (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))))) (array_inv!4044 (_values!3836 (v!33127 (underlying!7313 (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))))) e!1726619))))

(declare-fun b!2742184 () Bool)

(declare-fun e!1726607 () Bool)

(declare-fun e!1726623 () Bool)

(assert (=> b!2742184 (= e!1726607 e!1726623)))

(declare-fun mapNonEmpty!16241 () Bool)

(declare-fun tp!861780 () Bool)

(declare-fun tp!861783 () Bool)

(assert (=> mapNonEmpty!16241 (= mapRes!16241 (and tp!861780 tp!861783))))

(declare-fun mapKey!16241 () (_ BitVec 32))

(declare-fun mapRest!16241 () (Array (_ BitVec 32) List!31554))

(declare-fun mapValue!16241 () List!31554)

(assert (=> mapNonEmpty!16241 (= (arr!5658 (_values!3836 (v!33127 (underlying!7313 (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))))) (store mapRest!16241 mapKey!16241 mapValue!16241))))

(declare-fun b!2742185 () Bool)

(declare-fun tp!861777 () Bool)

(assert (=> b!2742185 (= e!1726619 (and tp!861777 mapRes!16241))))

(declare-fun condMapEmpty!16242 () Bool)

(declare-fun mapDefault!16241 () List!31554)

(assert (=> b!2742185 (= condMapEmpty!16242 (= (arr!5658 (_values!3836 (v!33127 (underlying!7313 (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31554)) mapDefault!16241)))))

(declare-fun b!2742186 () Bool)

(declare-fun e!1726620 () Bool)

(declare-fun e!1726609 () Bool)

(declare-fun lt!971006 () MutLongMap!3555)

(get-info :version)

(assert (=> b!2742186 (= e!1726620 (and e!1726609 ((_ is LongMap!3555) lt!971006)))))

(assert (=> b!2742186 (= lt!971006 (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))))

(declare-fun b!2742187 () Bool)

(declare-fun e!1726613 () Bool)

(declare-fun e!1726616 () Bool)

(assert (=> b!2742187 (= e!1726613 e!1726616)))

(declare-fun b!2742188 () Bool)

(declare-fun e!1726611 () Bool)

(declare-fun e!1726610 () Bool)

(declare-fun lt!971005 () MutLongMap!3554)

(assert (=> b!2742188 (= e!1726611 (and e!1726610 ((_ is LongMap!3554) lt!971005)))))

(assert (=> b!2742188 (= lt!971005 (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))))

(declare-fun res!1151357 () Bool)

(assert (=> start!265840 (=> (not res!1151357) (not e!1726608))))

(declare-datatypes ((LexerInterface!4413 0))(
  ( (LexerInterfaceExt!4410 (__x!20225 Int)) (Lexer!4411) )
))
(declare-fun thiss!15207 () LexerInterface!4413)

(assert (=> start!265840 (= res!1151357 ((_ is Lexer!4411) thiss!15207))))

(assert (=> start!265840 e!1726608))

(declare-fun inv!42801 (CacheDown!2282) Bool)

(assert (=> start!265840 (and (inv!42801 cacheDown!646) e!1726613)))

(declare-fun e!1726605 () Bool)

(declare-fun inv!42802 (BalanceConc!19334) Bool)

(assert (=> start!265840 (and (inv!42802 input!1326) e!1726605)))

(assert (=> start!265840 e!1726604))

(declare-fun inv!42803 (CacheUp!2170) Bool)

(assert (=> start!265840 (and (inv!42803 cacheUp!633) e!1726607)))

(assert (=> start!265840 true))

(declare-fun b!2742189 () Bool)

(assert (=> b!2742189 (= e!1726610 e!1726622)))

(declare-fun b!2742190 () Bool)

(declare-fun tp!861785 () Bool)

(declare-fun inv!42804 (Conc!9860) Bool)

(assert (=> b!2742190 (= e!1726605 (and (inv!42804 (c!444741 input!1326)) tp!861785))))

(assert (=> b!2742191 (= e!1726623 (and e!1726620 tp!861779))))

(declare-fun e!1726621 () Bool)

(declare-fun tp!861772 () Bool)

(declare-datatypes ((List!31555 0))(
  ( (Nil!31455) (Cons!31455 (h!36875 (_ BitVec 16)) (t!227643 List!31555)) )
))
(declare-datatypes ((TokenValue!5039 0))(
  ( (FloatLiteralValue!10078 (text!35718 List!31555)) (TokenValueExt!5038 (__x!20226 Int)) (Broken!25195 (value!154870 List!31555)) (Object!5138) (End!5039) (Def!5039) (Underscore!5039) (Match!5039) (Else!5039) (Error!5039) (Case!5039) (If!5039) (Extends!5039) (Abstract!5039) (Class!5039) (Val!5039) (DelimiterValue!10078 (del!5099 List!31555)) (KeywordValue!5045 (value!154871 List!31555)) (CommentValue!10078 (value!154872 List!31555)) (WhitespaceValue!10078 (value!154873 List!31555)) (IndentationValue!5039 (value!154874 List!31555)) (String!35094) (Int32!5039) (Broken!25196 (value!154875 List!31555)) (Boolean!5040) (Unit!45465) (OperatorValue!5042 (op!5099 List!31555)) (IdentifierValue!10078 (value!154876 List!31555)) (IdentifierValue!10079 (value!154877 List!31555)) (WhitespaceValue!10079 (value!154878 List!31555)) (True!10078) (False!10078) (Broken!25197 (value!154879 List!31555)) (Broken!25198 (value!154880 List!31555)) (True!10079) (RightBrace!5039) (RightBracket!5039) (Colon!5039) (Null!5039) (Comma!5039) (LeftBracket!5039) (False!10079) (LeftBrace!5039) (ImaginaryLiteralValue!5039 (text!35719 List!31555)) (StringLiteralValue!15117 (value!154881 List!31555)) (EOFValue!5039 (value!154882 List!31555)) (IdentValue!5039 (value!154883 List!31555)) (DelimiterValue!10079 (value!154884 List!31555)) (DedentValue!5039 (value!154885 List!31555)) (NewLineValue!5039 (value!154886 List!31555)) (IntegerValue!15117 (value!154887 (_ BitVec 32)) (text!35720 List!31555)) (IntegerValue!15118 (value!154888 Int) (text!35721 List!31555)) (Times!5039) (Or!5039) (Equal!5039) (Minus!5039) (Broken!25199 (value!154889 List!31555)) (And!5039) (Div!5039) (LessEqual!5039) (Mod!5039) (Concat!13009) (Not!5039) (Plus!5039) (SpaceValue!5039 (value!154890 List!31555)) (IntegerValue!15119 (value!154891 Int) (text!35722 List!31555)) (StringLiteralValue!15118 (text!35723 List!31555)) (FloatLiteralValue!10079 (text!35724 List!31555)) (BytesLiteralValue!5039 (value!154892 List!31555)) (CommentValue!10079 (value!154893 List!31555)) (StringLiteralValue!15119 (value!154894 List!31555)) (ErrorTokenValue!5039 (msg!5100 List!31555)) )
))
(declare-datatypes ((TokenValueInjection!9518 0))(
  ( (TokenValueInjection!9519 (toValue!6815 Int) (toChars!6674 Int)) )
))
(declare-datatypes ((String!35095 0))(
  ( (String!35096 (value!154895 String)) )
))
(declare-datatypes ((Rule!9434 0))(
  ( (Rule!9435 (regex!4817 Regex!7969) (tag!5321 String!35095) (isSeparator!4817 Bool) (transformation!4817 TokenValueInjection!9518)) )
))
(declare-datatypes ((List!31556 0))(
  ( (Nil!31456) (Cons!31456 (h!36876 Rule!9434) (t!227644 List!31556)) )
))
(declare-fun rulesArg!249 () List!31556)

(declare-fun b!2742192 () Bool)

(declare-fun inv!42799 (String!35095) Bool)

(declare-fun inv!42805 (TokenValueInjection!9518) Bool)

(assert (=> b!2742192 (= e!1726602 (and tp!861772 (inv!42799 (tag!5321 (h!36876 rulesArg!249))) (inv!42805 (transformation!4817 (h!36876 rulesArg!249))) e!1726621))))

(declare-fun b!2742193 () Bool)

(assert (=> b!2742193 (= e!1726609 e!1726612)))

(declare-fun mapIsEmpty!16242 () Bool)

(assert (=> mapIsEmpty!16242 mapRes!16242))

(assert (=> b!2742194 (= e!1726616 (and e!1726611 tp!861778))))

(declare-fun b!2742195 () Bool)

(declare-fun res!1151354 () Bool)

(assert (=> b!2742195 (=> (not res!1151354) (not e!1726608))))

(declare-fun valid!2761 (CacheDown!2282) Bool)

(assert (=> b!2742195 (= res!1151354 (valid!2761 cacheDown!646))))

(declare-fun b!2742196 () Bool)

(declare-fun res!1151353 () Bool)

(assert (=> b!2742196 (=> (not res!1151353) (not e!1726608))))

(declare-fun isEmpty!18008 (List!31556) Bool)

(assert (=> b!2742196 (= res!1151353 (not (isEmpty!18008 rulesArg!249)))))

(declare-fun tp!861776 () Bool)

(declare-fun tp!861769 () Bool)

(declare-fun array_inv!4045 (array!12665) Bool)

(assert (=> b!2742197 (= e!1726614 (and tp!861770 tp!861769 tp!861776 (array_inv!4043 (_keys!3854 (v!33125 (underlying!7311 (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))))) (array_inv!4045 (_values!3835 (v!33125 (underlying!7311 (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))))) e!1726617))))

(assert (=> b!2742198 (= e!1726621 (and tp!861775 tp!861768))))

(declare-fun mapNonEmpty!16242 () Bool)

(declare-fun tp!861781 () Bool)

(declare-fun tp!861784 () Bool)

(assert (=> mapNonEmpty!16242 (= mapRes!16242 (and tp!861781 tp!861784))))

(declare-fun mapRest!16242 () (Array (_ BitVec 32) List!31552))

(declare-fun mapKey!16242 () (_ BitVec 32))

(declare-fun mapValue!16242 () List!31552)

(assert (=> mapNonEmpty!16242 (= (arr!5656 (_values!3835 (v!33125 (underlying!7311 (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))))) (store mapRest!16242 mapKey!16242 mapValue!16242))))

(declare-fun b!2742199 () Bool)

(declare-fun res!1151356 () Bool)

(assert (=> b!2742199 (=> (not res!1151356) (not e!1726608))))

(declare-fun rulesValidInductive!1685 (LexerInterface!4413 List!31556) Bool)

(assert (=> b!2742199 (= res!1151356 (rulesValidInductive!1685 thiss!15207 rulesArg!249))))

(assert (= (and start!265840 res!1151357) b!2742199))

(assert (= (and b!2742199 res!1151356) b!2742196))

(assert (= (and b!2742196 res!1151353) b!2742182))

(assert (= (and b!2742182 res!1151355) b!2742195))

(assert (= (and b!2742195 res!1151354) b!2742181))

(assert (= (and b!2742177 condMapEmpty!16241) mapIsEmpty!16242))

(assert (= (and b!2742177 (not condMapEmpty!16241)) mapNonEmpty!16242))

(assert (= b!2742197 b!2742177))

(assert (= b!2742178 b!2742197))

(assert (= b!2742189 b!2742178))

(assert (= (and b!2742188 ((_ is LongMap!3554) (v!33126 (underlying!7312 (cache!3603 cacheDown!646))))) b!2742189))

(assert (= b!2742194 b!2742188))

(assert (= (and b!2742187 ((_ is HashMap!3460) (cache!3603 cacheDown!646))) b!2742194))

(assert (= start!265840 b!2742187))

(assert (= start!265840 b!2742190))

(assert (= b!2742192 b!2742198))

(assert (= b!2742179 b!2742192))

(assert (= (and start!265840 ((_ is Cons!31456) rulesArg!249)) b!2742179))

(assert (= (and b!2742185 condMapEmpty!16242) mapIsEmpty!16241))

(assert (= (and b!2742185 (not condMapEmpty!16242)) mapNonEmpty!16241))

(assert (= b!2742183 b!2742185))

(assert (= b!2742180 b!2742183))

(assert (= b!2742193 b!2742180))

(assert (= (and b!2742186 ((_ is LongMap!3555) (v!33128 (underlying!7314 (cache!3604 cacheUp!633))))) b!2742193))

(assert (= b!2742191 b!2742186))

(assert (= (and b!2742184 ((_ is HashMap!3461) (cache!3604 cacheUp!633))) b!2742191))

(assert (= start!265840 b!2742184))

(declare-fun m!3160241 () Bool)

(assert (=> mapNonEmpty!16242 m!3160241))

(declare-fun m!3160243 () Bool)

(assert (=> b!2742196 m!3160243))

(declare-fun m!3160245 () Bool)

(assert (=> b!2742197 m!3160245))

(declare-fun m!3160247 () Bool)

(assert (=> b!2742197 m!3160247))

(declare-fun m!3160249 () Bool)

(assert (=> b!2742182 m!3160249))

(declare-fun m!3160251 () Bool)

(assert (=> b!2742181 m!3160251))

(declare-fun m!3160253 () Bool)

(assert (=> b!2742195 m!3160253))

(declare-fun m!3160255 () Bool)

(assert (=> start!265840 m!3160255))

(declare-fun m!3160257 () Bool)

(assert (=> start!265840 m!3160257))

(declare-fun m!3160259 () Bool)

(assert (=> start!265840 m!3160259))

(declare-fun m!3160261 () Bool)

(assert (=> b!2742199 m!3160261))

(declare-fun m!3160263 () Bool)

(assert (=> b!2742183 m!3160263))

(declare-fun m!3160265 () Bool)

(assert (=> b!2742183 m!3160265))

(declare-fun m!3160267 () Bool)

(assert (=> b!2742192 m!3160267))

(declare-fun m!3160269 () Bool)

(assert (=> b!2742192 m!3160269))

(declare-fun m!3160271 () Bool)

(assert (=> mapNonEmpty!16241 m!3160271))

(declare-fun m!3160273 () Bool)

(assert (=> b!2742190 m!3160273))

(check-sat (not b!2742199) (not b!2742183) b_and!201655 (not start!265840) b_and!201653 (not b!2742179) (not b_next!77637) (not b!2742192) (not b_next!77643) (not b!2742177) (not b!2742182) (not b_next!77641) (not b!2742196) (not b_next!77639) b_and!201651 (not b_next!77635) (not b!2742190) (not b!2742195) (not mapNonEmpty!16241) (not b!2742181) (not b!2742197) (not b!2742185) b_and!201659 b_and!201649 (not mapNonEmpty!16242) (not b_next!77633) b_and!201657)
(check-sat (not b_next!77639) b_and!201655 b_and!201653 (not b_next!77637) (not b_next!77643) (not b_next!77641) b_and!201651 (not b_next!77635) b_and!201659 b_and!201649 (not b_next!77633) b_and!201657)
