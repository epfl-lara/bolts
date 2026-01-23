; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261206 () Bool)

(assert start!261206)

(declare-fun b!2682214 () Bool)

(declare-fun b_free!75829 () Bool)

(declare-fun b_next!76533 () Bool)

(assert (=> b!2682214 (= b_free!75829 (not b_next!76533))))

(declare-fun tp!848718 () Bool)

(declare-fun b_and!198627 () Bool)

(assert (=> b!2682214 (= tp!848718 b_and!198627)))

(declare-fun b!2682219 () Bool)

(declare-fun b_free!75831 () Bool)

(declare-fun b_next!76535 () Bool)

(assert (=> b!2682219 (= b_free!75831 (not b_next!76535))))

(declare-fun tp!848722 () Bool)

(declare-fun b_and!198629 () Bool)

(assert (=> b!2682219 (= tp!848722 b_and!198629)))

(declare-fun b!2682196 () Bool)

(declare-fun b_free!75833 () Bool)

(declare-fun b_next!76537 () Bool)

(assert (=> b!2682196 (= b_free!75833 (not b_next!76537))))

(declare-fun tp!848730 () Bool)

(declare-fun b_and!198631 () Bool)

(assert (=> b!2682196 (= tp!848730 b_and!198631)))

(declare-fun b!2682206 () Bool)

(declare-fun b_free!75835 () Bool)

(declare-fun b_next!76539 () Bool)

(assert (=> b!2682206 (= b_free!75835 (not b_next!76539))))

(declare-fun tp!848721 () Bool)

(declare-fun b_and!198633 () Bool)

(assert (=> b!2682206 (= tp!848721 b_and!198633)))

(declare-fun b_free!75837 () Bool)

(declare-fun b_next!76541 () Bool)

(assert (=> b!2682206 (= b_free!75837 (not b_next!76541))))

(declare-fun tp!848727 () Bool)

(declare-fun b_and!198635 () Bool)

(assert (=> b!2682206 (= tp!848727 b_and!198635)))

(declare-fun b!2682199 () Bool)

(declare-fun b_free!75839 () Bool)

(declare-fun b_next!76543 () Bool)

(assert (=> b!2682199 (= b_free!75839 (not b_next!76543))))

(declare-fun tp!848734 () Bool)

(declare-fun b_and!198637 () Bool)

(assert (=> b!2682199 (= tp!848734 b_and!198637)))

(declare-fun b!2682184 () Bool)

(declare-fun e!1691184 () Bool)

(assert (=> b!2682184 (= e!1691184 (not true))))

(declare-fun lt!945109 () Bool)

(declare-datatypes ((LexerInterface!4323 0))(
  ( (LexerInterfaceExt!4320 (__x!19835 Int)) (Lexer!4321) )
))
(declare-fun thiss!12257 () LexerInterface!4323)

(declare-datatypes ((List!31051 0))(
  ( (Nil!30951) (Cons!30951 (h!36371 (_ BitVec 16)) (t!224556 List!31051)) )
))
(declare-datatypes ((TokenValue!4949 0))(
  ( (FloatLiteralValue!9898 (text!35088 List!31051)) (TokenValueExt!4948 (__x!19836 Int)) (Broken!24745 (value!152308 List!31051)) (Object!5048) (End!4949) (Def!4949) (Underscore!4949) (Match!4949) (Else!4949) (Error!4949) (Case!4949) (If!4949) (Extends!4949) (Abstract!4949) (Class!4949) (Val!4949) (DelimiterValue!9898 (del!5009 List!31051)) (KeywordValue!4955 (value!152309 List!31051)) (CommentValue!9898 (value!152310 List!31051)) (WhitespaceValue!9898 (value!152311 List!31051)) (IndentationValue!4949 (value!152312 List!31051)) (String!34644) (Int32!4949) (Broken!24746 (value!152313 List!31051)) (Boolean!4950) (Unit!45096) (OperatorValue!4952 (op!5009 List!31051)) (IdentifierValue!9898 (value!152314 List!31051)) (IdentifierValue!9899 (value!152315 List!31051)) (WhitespaceValue!9899 (value!152316 List!31051)) (True!9898) (False!9898) (Broken!24747 (value!152317 List!31051)) (Broken!24748 (value!152318 List!31051)) (True!9899) (RightBrace!4949) (RightBracket!4949) (Colon!4949) (Null!4949) (Comma!4949) (LeftBracket!4949) (False!9899) (LeftBrace!4949) (ImaginaryLiteralValue!4949 (text!35089 List!31051)) (StringLiteralValue!14847 (value!152319 List!31051)) (EOFValue!4949 (value!152320 List!31051)) (IdentValue!4949 (value!152321 List!31051)) (DelimiterValue!9899 (value!152322 List!31051)) (DedentValue!4949 (value!152323 List!31051)) (NewLineValue!4949 (value!152324 List!31051)) (IntegerValue!14847 (value!152325 (_ BitVec 32)) (text!35090 List!31051)) (IntegerValue!14848 (value!152326 Int) (text!35091 List!31051)) (Times!4949) (Or!4949) (Equal!4949) (Minus!4949) (Broken!24749 (value!152327 List!31051)) (And!4949) (Div!4949) (LessEqual!4949) (Mod!4949) (Concat!12828) (Not!4949) (Plus!4949) (SpaceValue!4949 (value!152328 List!31051)) (IntegerValue!14849 (value!152329 Int) (text!35092 List!31051)) (StringLiteralValue!14848 (text!35093 List!31051)) (FloatLiteralValue!9899 (text!35094 List!31051)) (BytesLiteralValue!4949 (value!152330 List!31051)) (CommentValue!9899 (value!152331 List!31051)) (StringLiteralValue!14849 (value!152332 List!31051)) (ErrorTokenValue!4949 (msg!5010 List!31051)) )
))
(declare-datatypes ((C!15916 0))(
  ( (C!15917 (val!9892 Int)) )
))
(declare-datatypes ((Regex!7879 0))(
  ( (ElementMatch!7879 (c!431975 C!15916)) (Concat!12829 (regOne!16270 Regex!7879) (regTwo!16270 Regex!7879)) (EmptyExpr!7879) (Star!7879 (reg!8208 Regex!7879)) (EmptyLang!7879) (Union!7879 (regOne!16271 Regex!7879) (regTwo!16271 Regex!7879)) )
))
(declare-datatypes ((List!31052 0))(
  ( (Nil!30952) (Cons!30952 (h!36372 C!15916) (t!224557 List!31052)) )
))
(declare-datatypes ((IArray!19371 0))(
  ( (IArray!19372 (innerList!9743 List!31052)) )
))
(declare-datatypes ((Conc!9683 0))(
  ( (Node!9683 (left!23912 Conc!9683) (right!24242 Conc!9683) (csize!19596 Int) (cheight!9894 Int)) (Leaf!14791 (xs!12713 IArray!19371) (csize!19597 Int)) (Empty!9683) )
))
(declare-datatypes ((BalanceConc!18980 0))(
  ( (BalanceConc!18981 (c!431976 Conc!9683)) )
))
(declare-datatypes ((TokenValueInjection!9338 0))(
  ( (TokenValueInjection!9339 (toValue!6681 Int) (toChars!6540 Int)) )
))
(declare-datatypes ((String!34645 0))(
  ( (String!34646 (value!152333 String)) )
))
(declare-datatypes ((Rule!9254 0))(
  ( (Rule!9255 (regex!4727 Regex!7879) (tag!5231 String!34645) (isSeparator!4727 Bool) (transformation!4727 TokenValueInjection!9338)) )
))
(declare-datatypes ((List!31053 0))(
  ( (Nil!30953) (Cons!30953 (h!36373 Rule!9254) (t!224558 List!31053)) )
))
(declare-fun rules!1381 () List!31053)

(declare-fun rulesValidInductive!1644 (LexerInterface!4323 List!31053) Bool)

(assert (=> b!2682184 (= lt!945109 (rulesValidInductive!1644 thiss!12257 rules!1381))))

(declare-fun e!1691214 () Bool)

(assert (=> b!2682184 e!1691214))

(declare-fun res!1127328 () Bool)

(assert (=> b!2682184 (=> (not res!1127328) (not e!1691214))))

(declare-fun totalInput!354 () BalanceConc!18980)

(declare-datatypes ((Token!8920 0))(
  ( (Token!8921 (value!152334 TokenValue!4949) (rule!7137 Rule!9254) (size!23909 Int) (originalCharacters!5491 List!31052)) )
))
(declare-datatypes ((List!31054 0))(
  ( (Nil!30954) (Cons!30954 (h!36374 Token!8920) (t!224559 List!31054)) )
))
(declare-datatypes ((IArray!19373 0))(
  ( (IArray!19374 (innerList!9744 List!31054)) )
))
(declare-datatypes ((Conc!9684 0))(
  ( (Node!9684 (left!23913 Conc!9684) (right!24243 Conc!9684) (csize!19598 Int) (cheight!9895 Int)) (Leaf!14792 (xs!12714 IArray!19373) (csize!19599 Int)) (Empty!9684) )
))
(declare-datatypes ((BalanceConc!18982 0))(
  ( (BalanceConc!18983 (c!431977 Conc!9684)) )
))
(declare-datatypes ((tuple2!30434 0))(
  ( (tuple2!30435 (_1!17782 BalanceConc!18982) (_2!17782 BalanceConc!18980)) )
))
(declare-fun e!1691183 () tuple2!30434)

(declare-fun acc!348 () BalanceConc!18982)

(declare-fun treated!26 () BalanceConc!18980)

(declare-fun input!780 () BalanceConc!18980)

(declare-fun lexTailRec!14 (LexerInterface!4323 List!31053 BalanceConc!18980 BalanceConc!18980 BalanceConc!18980 BalanceConc!18982) tuple2!30434)

(assert (=> b!2682184 (= res!1127328 (= (lexTailRec!14 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1691183))))

(declare-fun c!431974 () Bool)

(declare-datatypes ((tuple2!30436 0))(
  ( (tuple2!30437 (_1!17783 Token!8920) (_2!17783 BalanceConc!18980)) )
))
(declare-datatypes ((Option!6115 0))(
  ( (None!6114) (Some!6114 (v!32761 tuple2!30436)) )
))
(declare-fun lt!945107 () Option!6115)

(get-info :version)

(assert (=> b!2682184 (= c!431974 ((_ is Some!6114) lt!945107))))

(declare-fun maxPrefixZipperSequence!990 (LexerInterface!4323 List!31053 BalanceConc!18980) Option!6115)

(assert (=> b!2682184 (= lt!945107 (maxPrefixZipperSequence!990 thiss!12257 rules!1381 input!780))))

(declare-fun b!2682185 () Bool)

(declare-fun res!1127325 () Bool)

(declare-fun e!1691191 () Bool)

(assert (=> b!2682185 (=> (not res!1127325) (not e!1691191))))

(declare-datatypes ((array!12428 0))(
  ( (array!12429 (arr!5554 (Array (_ BitVec 32) (_ BitVec 64))) (size!23910 (_ BitVec 32))) )
))
(declare-datatypes ((List!31055 0))(
  ( (Nil!30955) (Cons!30955 (h!36375 Regex!7879) (t!224560 List!31055)) )
))
(declare-datatypes ((Context!4306 0))(
  ( (Context!4307 (exprs!2653 List!31055)) )
))
(declare-datatypes ((tuple3!4190 0))(
  ( (tuple3!4191 (_1!17784 Regex!7879) (_2!17784 Context!4306) (_3!2565 C!15916)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30438 0))(
  ( (tuple2!30439 (_1!17785 tuple3!4190) (_2!17785 (InoxSet Context!4306))) )
))
(declare-datatypes ((List!31056 0))(
  ( (Nil!30956) (Cons!30956 (h!36376 tuple2!30438) (t!224561 List!31056)) )
))
(declare-datatypes ((array!12430 0))(
  ( (array!12431 (arr!5555 (Array (_ BitVec 32) List!31056)) (size!23911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6972 0))(
  ( (LongMapFixedSize!6973 (defaultEntry!3871 Int) (mask!9162 (_ BitVec 32)) (extraKeys!3735 (_ BitVec 32)) (zeroValue!3745 List!31056) (minValue!3745 List!31056) (_size!7015 (_ BitVec 32)) (_keys!3786 array!12428) (_values!3767 array!12430) (_vacant!3547 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13753 0))(
  ( (Cell!13754 (v!32762 LongMapFixedSize!6972)) )
))
(declare-datatypes ((MutLongMap!3486 0))(
  ( (LongMap!3486 (underlying!7175 Cell!13753)) (MutLongMapExt!3485 (__x!19837 Int)) )
))
(declare-datatypes ((Cell!13755 0))(
  ( (Cell!13756 (v!32763 MutLongMap!3486)) )
))
(declare-datatypes ((Hashable!3402 0))(
  ( (HashableExt!3401 (__x!19838 Int)) )
))
(declare-datatypes ((MutableMap!3392 0))(
  ( (MutableMapExt!3391 (__x!19839 Int)) (HashMap!3392 (underlying!7176 Cell!13755) (hashF!5434 Hashable!3402) (_size!7016 (_ BitVec 32)) (defaultValue!3563 Int)) )
))
(declare-datatypes ((CacheDown!2214 0))(
  ( (CacheDown!2215 (cache!3535 MutableMap!3392)) )
))
(declare-fun cacheDown!499 () CacheDown!2214)

(declare-fun valid!2697 (CacheDown!2214) Bool)

(assert (=> b!2682185 (= res!1127325 (valid!2697 cacheDown!499))))

(declare-fun e!1691202 () Bool)

(declare-fun b!2682186 () Bool)

(declare-fun tp!848725 () Bool)

(declare-fun e!1691195 () Bool)

(declare-fun inv!41975 (String!34645) Bool)

(declare-fun inv!41976 (TokenValueInjection!9338) Bool)

(assert (=> b!2682186 (= e!1691195 (and tp!848725 (inv!41975 (tag!5231 (h!36373 rules!1381))) (inv!41976 (transformation!4727 (h!36373 rules!1381))) e!1691202))))

(declare-fun b!2682187 () Bool)

(declare-fun e!1691197 () Bool)

(declare-fun e!1691190 () Bool)

(assert (=> b!2682187 (= e!1691197 e!1691190)))

(declare-fun res!1127331 () Bool)

(assert (=> start!261206 (=> (not res!1127331) (not e!1691191))))

(assert (=> start!261206 (= res!1127331 ((_ is Lexer!4321) thiss!12257))))

(assert (=> start!261206 e!1691191))

(declare-fun e!1691185 () Bool)

(declare-fun inv!41977 (BalanceConc!18980) Bool)

(assert (=> start!261206 (and (inv!41977 totalInput!354) e!1691185)))

(declare-datatypes ((tuple2!30440 0))(
  ( (tuple2!30441 (_1!17786 Context!4306) (_2!17786 C!15916)) )
))
(declare-datatypes ((tuple2!30442 0))(
  ( (tuple2!30443 (_1!17787 tuple2!30440) (_2!17787 (InoxSet Context!4306))) )
))
(declare-datatypes ((List!31057 0))(
  ( (Nil!30957) (Cons!30957 (h!36377 tuple2!30442) (t!224562 List!31057)) )
))
(declare-datatypes ((array!12432 0))(
  ( (array!12433 (arr!5556 (Array (_ BitVec 32) List!31057)) (size!23912 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3403 0))(
  ( (HashableExt!3402 (__x!19840 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6974 0))(
  ( (LongMapFixedSize!6975 (defaultEntry!3872 Int) (mask!9163 (_ BitVec 32)) (extraKeys!3736 (_ BitVec 32)) (zeroValue!3746 List!31057) (minValue!3746 List!31057) (_size!7017 (_ BitVec 32)) (_keys!3787 array!12428) (_values!3768 array!12432) (_vacant!3548 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13757 0))(
  ( (Cell!13758 (v!32764 LongMapFixedSize!6974)) )
))
(declare-datatypes ((MutLongMap!3487 0))(
  ( (LongMap!3487 (underlying!7177 Cell!13757)) (MutLongMapExt!3486 (__x!19841 Int)) )
))
(declare-datatypes ((Cell!13759 0))(
  ( (Cell!13760 (v!32765 MutLongMap!3487)) )
))
(declare-datatypes ((MutableMap!3393 0))(
  ( (MutableMapExt!3392 (__x!19842 Int)) (HashMap!3393 (underlying!7178 Cell!13759) (hashF!5435 Hashable!3403) (_size!7018 (_ BitVec 32)) (defaultValue!3564 Int)) )
))
(declare-datatypes ((CacheUp!2102 0))(
  ( (CacheUp!2103 (cache!3536 MutableMap!3393)) )
))
(declare-fun cacheUp!486 () CacheUp!2102)

(declare-fun e!1691203 () Bool)

(declare-fun inv!41978 (CacheUp!2102) Bool)

(assert (=> start!261206 (and (inv!41978 cacheUp!486) e!1691203)))

(declare-fun e!1691206 () Bool)

(declare-fun inv!41979 (BalanceConc!18982) Bool)

(assert (=> start!261206 (and (inv!41979 acc!348) e!1691206)))

(declare-fun e!1691186 () Bool)

(assert (=> start!261206 (and (inv!41977 input!780) e!1691186)))

(declare-fun e!1691187 () Bool)

(assert (=> start!261206 (and (inv!41977 treated!26) e!1691187)))

(declare-fun e!1691209 () Bool)

(assert (=> start!261206 e!1691209))

(assert (=> start!261206 true))

(declare-fun inv!41980 (CacheDown!2214) Bool)

(assert (=> start!261206 (and (inv!41980 cacheDown!499) e!1691197)))

(declare-fun b!2682188 () Bool)

(declare-fun tp!848716 () Bool)

(declare-fun inv!41981 (Conc!9683) Bool)

(assert (=> b!2682188 (= e!1691186 (and (inv!41981 (c!431976 input!780)) tp!848716))))

(declare-fun b!2682189 () Bool)

(declare-fun res!1127330 () Bool)

(declare-fun e!1691192 () Bool)

(assert (=> b!2682189 (=> (not res!1127330) (not e!1691192))))

(declare-fun lt!945096 () tuple2!30434)

(declare-fun isEmpty!17681 (List!31052) Bool)

(declare-fun list!11684 (BalanceConc!18980) List!31052)

(assert (=> b!2682189 (= res!1127330 (isEmpty!17681 (list!11684 (_2!17782 lt!945096))))))

(declare-fun mapNonEmpty!15959 () Bool)

(declare-fun mapRes!15959 () Bool)

(declare-fun tp!848723 () Bool)

(declare-fun tp!848720 () Bool)

(assert (=> mapNonEmpty!15959 (= mapRes!15959 (and tp!848723 tp!848720))))

(declare-fun mapRest!15959 () (Array (_ BitVec 32) List!31057))

(declare-fun mapValue!15959 () List!31057)

(declare-fun mapKey!15959 () (_ BitVec 32))

(assert (=> mapNonEmpty!15959 (= (arr!5556 (_values!3768 (v!32764 (underlying!7177 (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))))) (store mapRest!15959 mapKey!15959 mapValue!15959))))

(declare-fun b!2682190 () Bool)

(declare-fun tp!848715 () Bool)

(declare-fun inv!41982 (Conc!9684) Bool)

(assert (=> b!2682190 (= e!1691206 (and (inv!41982 (c!431977 acc!348)) tp!848715))))

(declare-fun mapIsEmpty!15959 () Bool)

(declare-fun mapRes!15960 () Bool)

(assert (=> mapIsEmpty!15959 mapRes!15960))

(declare-fun b!2682191 () Bool)

(declare-fun lt!945100 () Option!6115)

(declare-fun lt!945106 () tuple2!30434)

(declare-fun lexRec!588 (LexerInterface!4323 List!31053 BalanceConc!18980) tuple2!30434)

(assert (=> b!2682191 (= lt!945106 (lexRec!588 thiss!12257 rules!1381 (_2!17783 (v!32761 lt!945100))))))

(declare-fun e!1691208 () tuple2!30434)

(declare-fun prepend!1059 (BalanceConc!18982 Token!8920) BalanceConc!18982)

(assert (=> b!2682191 (= e!1691208 (tuple2!30435 (prepend!1059 (_1!17782 lt!945106) (_1!17783 (v!32761 lt!945100))) (_2!17782 lt!945106)))))

(declare-fun b!2682192 () Bool)

(declare-fun tp!848726 () Bool)

(assert (=> b!2682192 (= e!1691209 (and e!1691195 tp!848726))))

(declare-fun b!2682193 () Bool)

(declare-fun res!1127321 () Bool)

(assert (=> b!2682193 (=> (not res!1127321) (not e!1691191))))

(declare-fun valid!2698 (CacheUp!2102) Bool)

(assert (=> b!2682193 (= res!1127321 (valid!2698 cacheUp!486))))

(declare-fun b!2682194 () Bool)

(declare-fun res!1127327 () Bool)

(assert (=> b!2682194 (=> (not res!1127327) (not e!1691184))))

(declare-fun lt!945103 () tuple2!30434)

(declare-fun lt!945105 () tuple2!30434)

(assert (=> b!2682194 (= res!1127327 (= (list!11684 (_2!17782 lt!945103)) (list!11684 (_2!17782 lt!945105))))))

(declare-fun mapIsEmpty!15960 () Bool)

(assert (=> mapIsEmpty!15960 mapRes!15959))

(declare-fun b!2682195 () Bool)

(assert (=> b!2682195 (= e!1691183 (tuple2!30435 acc!348 input!780))))

(declare-fun e!1691211 () Bool)

(declare-fun e!1691199 () Bool)

(assert (=> b!2682196 (= e!1691211 (and e!1691199 tp!848730))))

(declare-fun b!2682197 () Bool)

(declare-fun e!1691194 () Bool)

(declare-fun e!1691188 () Bool)

(assert (=> b!2682197 (= e!1691194 e!1691188)))

(declare-fun b!2682198 () Bool)

(declare-fun lex!1945 (LexerInterface!4323 List!31053 BalanceConc!18980) tuple2!30434)

(declare-fun lexTailRecV2!857 (LexerInterface!4323 List!31053 BalanceConc!18980 BalanceConc!18980 BalanceConc!18980 BalanceConc!18982) tuple2!30434)

(assert (=> b!2682198 (= e!1691214 (= (lex!1945 thiss!12257 rules!1381 input!780) (lexTailRecV2!857 thiss!12257 rules!1381 input!780 (BalanceConc!18981 Empty!9683) input!780 (BalanceConc!18983 Empty!9684))))))

(declare-fun tp!848719 () Bool)

(declare-fun tp!848735 () Bool)

(declare-fun e!1691189 () Bool)

(declare-fun array_inv!3964 (array!12428) Bool)

(declare-fun array_inv!3965 (array!12432) Bool)

(assert (=> b!2682199 (= e!1691188 (and tp!848734 tp!848735 tp!848719 (array_inv!3964 (_keys!3787 (v!32764 (underlying!7177 (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))))) (array_inv!3965 (_values!3768 (v!32764 (underlying!7177 (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))))) e!1691189))))

(declare-fun b!2682200 () Bool)

(declare-fun e!1691193 () Bool)

(assert (=> b!2682200 (= e!1691193 e!1691192)))

(declare-fun res!1127323 () Bool)

(assert (=> b!2682200 (=> (not res!1127323) (not e!1691192))))

(declare-fun lt!945110 () List!31054)

(declare-fun lt!945108 () List!31054)

(assert (=> b!2682200 (= res!1127323 (= lt!945110 lt!945108))))

(declare-fun list!11685 (BalanceConc!18982) List!31054)

(assert (=> b!2682200 (= lt!945108 (list!11685 acc!348))))

(assert (=> b!2682200 (= lt!945110 (list!11685 (_1!17782 lt!945096)))))

(assert (=> b!2682200 (= lt!945096 (lexRec!588 thiss!12257 rules!1381 treated!26))))

(declare-fun lt!945113 () BalanceConc!18982)

(declare-fun b!2682201 () Bool)

(declare-fun lt!945098 () BalanceConc!18980)

(assert (=> b!2682201 (= e!1691183 (lexTailRec!14 thiss!12257 rules!1381 totalInput!354 lt!945098 (_2!17783 (v!32761 lt!945107)) lt!945113))))

(declare-fun lt!945102 () tuple2!30434)

(assert (=> b!2682201 (= lt!945102 (lexRec!588 thiss!12257 rules!1381 (_2!17783 (v!32761 lt!945107))))))

(declare-fun lt!945094 () BalanceConc!18980)

(declare-fun charsOf!2977 (Token!8920) BalanceConc!18980)

(assert (=> b!2682201 (= lt!945094 (charsOf!2977 (_1!17783 (v!32761 lt!945107))))))

(declare-fun lt!945115 () List!31052)

(assert (=> b!2682201 (= lt!945115 (list!11684 lt!945094))))

(declare-fun lt!945099 () List!31052)

(assert (=> b!2682201 (= lt!945099 (list!11684 (_2!17783 (v!32761 lt!945107))))))

(declare-datatypes ((Unit!45097 0))(
  ( (Unit!45098) )
))
(declare-fun lt!945114 () Unit!45097)

(declare-fun lt!945101 () List!31052)

(declare-fun lemmaConcatAssociativity!1530 (List!31052 List!31052 List!31052) Unit!45097)

(assert (=> b!2682201 (= lt!945114 (lemmaConcatAssociativity!1530 lt!945101 lt!945115 lt!945099))))

(declare-fun lt!945112 () List!31052)

(declare-fun ++!7560 (List!31052 List!31052) List!31052)

(assert (=> b!2682201 (= lt!945112 (++!7560 lt!945101 lt!945115))))

(declare-fun res!1127326 () Bool)

(assert (=> b!2682201 (= res!1127326 (= (++!7560 lt!945112 lt!945099) (++!7560 lt!945101 (++!7560 lt!945115 lt!945099))))))

(declare-fun e!1691212 () Bool)

(assert (=> b!2682201 (=> (not res!1127326) (not e!1691212))))

(assert (=> b!2682201 e!1691212))

(declare-fun lt!945104 () List!31054)

(assert (=> b!2682201 (= lt!945104 (Cons!30954 (_1!17783 (v!32761 lt!945107)) Nil!30954))))

(declare-fun lt!945117 () List!31054)

(assert (=> b!2682201 (= lt!945117 (list!11685 (_1!17782 lt!945102)))))

(declare-fun lt!945116 () Unit!45097)

(declare-fun lemmaConcatAssociativity!1531 (List!31054 List!31054 List!31054) Unit!45097)

(assert (=> b!2682201 (= lt!945116 (lemmaConcatAssociativity!1531 lt!945108 lt!945104 lt!945117))))

(declare-fun ++!7561 (List!31054 List!31054) List!31054)

(assert (=> b!2682201 (= (++!7561 (++!7561 lt!945108 lt!945104) lt!945117) (++!7561 lt!945108 (++!7561 lt!945104 lt!945117)))))

(declare-fun append!752 (BalanceConc!18982 Token!8920) BalanceConc!18982)

(assert (=> b!2682201 (= lt!945113 (append!752 acc!348 (_1!17783 (v!32761 lt!945107))))))

(declare-fun lt!945097 () List!31054)

(assert (=> b!2682201 (= lt!945097 (list!11685 lt!945113))))

(declare-fun lt!945095 () Unit!45097)

(declare-fun lemmaLexThenLexPrefix!396 (LexerInterface!4323 List!31053 List!31052 List!31052 List!31054 List!31054 List!31052) Unit!45097)

(assert (=> b!2682201 (= lt!945095 (lemmaLexThenLexPrefix!396 thiss!12257 rules!1381 lt!945112 lt!945099 lt!945097 lt!945117 (list!11684 (_2!17782 lt!945102))))))

(declare-datatypes ((tuple2!30444 0))(
  ( (tuple2!30445 (_1!17788 List!31054) (_2!17788 List!31052)) )
))
(declare-fun lexList!1183 (LexerInterface!4323 List!31053 List!31052) tuple2!30444)

(assert (=> b!2682201 (= (lexList!1183 thiss!12257 rules!1381 lt!945112) (tuple2!30445 lt!945097 Nil!30952))))

(declare-fun ++!7562 (BalanceConc!18980 BalanceConc!18980) BalanceConc!18980)

(assert (=> b!2682201 (= lt!945098 (++!7562 treated!26 lt!945094))))

(assert (=> b!2682201 (= lt!945100 (maxPrefixZipperSequence!990 thiss!12257 rules!1381 lt!945098))))

(declare-fun c!431973 () Bool)

(assert (=> b!2682201 (= c!431973 ((_ is Some!6114) lt!945100))))

(assert (=> b!2682201 (= (lexRec!588 thiss!12257 rules!1381 lt!945098) e!1691208)))

(declare-fun b!2682202 () Bool)

(declare-fun e!1691205 () Bool)

(declare-fun e!1691198 () Bool)

(declare-fun lt!945093 () MutLongMap!3486)

(assert (=> b!2682202 (= e!1691205 (and e!1691198 ((_ is LongMap!3486) lt!945093)))))

(assert (=> b!2682202 (= lt!945093 (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))))

(declare-fun b!2682203 () Bool)

(declare-fun res!1127320 () Bool)

(assert (=> b!2682203 (=> (not res!1127320) (not e!1691191))))

(declare-fun rulesInvariant!3818 (LexerInterface!4323 List!31053) Bool)

(assert (=> b!2682203 (= res!1127320 (rulesInvariant!3818 thiss!12257 rules!1381))))

(declare-fun mapNonEmpty!15960 () Bool)

(declare-fun tp!848717 () Bool)

(declare-fun tp!848728 () Bool)

(assert (=> mapNonEmpty!15960 (= mapRes!15960 (and tp!848717 tp!848728))))

(declare-fun mapRest!15960 () (Array (_ BitVec 32) List!31056))

(declare-fun mapValue!15960 () List!31056)

(declare-fun mapKey!15960 () (_ BitVec 32))

(assert (=> mapNonEmpty!15960 (= (arr!5555 (_values!3767 (v!32762 (underlying!7175 (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))))) (store mapRest!15960 mapKey!15960 mapValue!15960))))

(declare-fun b!2682204 () Bool)

(assert (=> b!2682204 (= e!1691192 e!1691184)))

(declare-fun res!1127329 () Bool)

(assert (=> b!2682204 (=> (not res!1127329) (not e!1691184))))

(declare-fun ++!7563 (BalanceConc!18982 BalanceConc!18982) BalanceConc!18982)

(assert (=> b!2682204 (= res!1127329 (= (list!11685 (_1!17782 lt!945103)) (list!11685 (++!7563 acc!348 (_1!17782 lt!945105)))))))

(assert (=> b!2682204 (= lt!945105 (lexRec!588 thiss!12257 rules!1381 input!780))))

(assert (=> b!2682204 (= lt!945103 (lexRec!588 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2682205 () Bool)

(declare-fun e!1691210 () Bool)

(assert (=> b!2682205 (= e!1691198 e!1691210)))

(assert (=> b!2682206 (= e!1691202 (and tp!848721 tp!848727))))

(declare-fun b!2682207 () Bool)

(declare-fun res!1127324 () Bool)

(assert (=> b!2682207 (=> (not res!1127324) (not e!1691191))))

(declare-fun isEmpty!17682 (List!31053) Bool)

(assert (=> b!2682207 (= res!1127324 (not (isEmpty!17682 rules!1381)))))

(declare-fun b!2682208 () Bool)

(declare-fun tp!848724 () Bool)

(assert (=> b!2682208 (= e!1691185 (and (inv!41981 (c!431976 totalInput!354)) tp!848724))))

(declare-fun b!2682209 () Bool)

(declare-fun tp!848733 () Bool)

(assert (=> b!2682209 (= e!1691189 (and tp!848733 mapRes!15959))))

(declare-fun condMapEmpty!15960 () Bool)

(declare-fun mapDefault!15960 () List!31057)

(assert (=> b!2682209 (= condMapEmpty!15960 (= (arr!5556 (_values!3768 (v!32764 (underlying!7177 (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31057)) mapDefault!15960)))))

(declare-fun b!2682210 () Bool)

(declare-fun tp!848736 () Bool)

(assert (=> b!2682210 (= e!1691187 (and (inv!41981 (c!431976 treated!26)) tp!848736))))

(declare-fun b!2682211 () Bool)

(assert (=> b!2682211 (= e!1691212 (= lt!945105 (tuple2!30435 (prepend!1059 (_1!17782 lt!945102) (_1!17783 (v!32761 lt!945107))) (_2!17782 lt!945102))))))

(declare-fun b!2682212 () Bool)

(assert (=> b!2682212 (= e!1691208 (tuple2!30435 (BalanceConc!18983 Empty!9684) lt!945098))))

(declare-fun b!2682213 () Bool)

(declare-fun e!1691204 () Bool)

(declare-fun lt!945111 () MutLongMap!3487)

(assert (=> b!2682213 (= e!1691199 (and e!1691204 ((_ is LongMap!3487) lt!945111)))))

(assert (=> b!2682213 (= lt!945111 (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))))

(assert (=> b!2682214 (= e!1691190 (and e!1691205 tp!848718))))

(declare-fun b!2682215 () Bool)

(declare-fun e!1691207 () Bool)

(assert (=> b!2682215 (= e!1691210 e!1691207)))

(declare-fun b!2682216 () Bool)

(declare-fun e!1691196 () Bool)

(declare-fun tp!848729 () Bool)

(assert (=> b!2682216 (= e!1691196 (and tp!848729 mapRes!15960))))

(declare-fun condMapEmpty!15959 () Bool)

(declare-fun mapDefault!15959 () List!31056)

(assert (=> b!2682216 (= condMapEmpty!15959 (= (arr!5555 (_values!3767 (v!32762 (underlying!7175 (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31056)) mapDefault!15959)))))

(declare-fun b!2682217 () Bool)

(assert (=> b!2682217 (= e!1691203 e!1691211)))

(declare-fun b!2682218 () Bool)

(assert (=> b!2682218 (= e!1691204 e!1691194)))

(declare-fun tp!848732 () Bool)

(declare-fun tp!848731 () Bool)

(declare-fun array_inv!3966 (array!12430) Bool)

(assert (=> b!2682219 (= e!1691207 (and tp!848722 tp!848731 tp!848732 (array_inv!3964 (_keys!3786 (v!32762 (underlying!7175 (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))))) (array_inv!3966 (_values!3767 (v!32762 (underlying!7175 (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))))) e!1691196))))

(declare-fun b!2682220 () Bool)

(assert (=> b!2682220 (= e!1691191 e!1691193)))

(declare-fun res!1127322 () Bool)

(assert (=> b!2682220 (=> (not res!1127322) (not e!1691193))))

(assert (=> b!2682220 (= res!1127322 (= (list!11684 totalInput!354) (++!7560 lt!945101 (list!11684 input!780))))))

(assert (=> b!2682220 (= lt!945101 (list!11684 treated!26))))

(assert (= (and start!261206 res!1127331) b!2682207))

(assert (= (and b!2682207 res!1127324) b!2682203))

(assert (= (and b!2682203 res!1127320) b!2682193))

(assert (= (and b!2682193 res!1127321) b!2682185))

(assert (= (and b!2682185 res!1127325) b!2682220))

(assert (= (and b!2682220 res!1127322) b!2682200))

(assert (= (and b!2682200 res!1127323) b!2682189))

(assert (= (and b!2682189 res!1127330) b!2682204))

(assert (= (and b!2682204 res!1127329) b!2682194))

(assert (= (and b!2682194 res!1127327) b!2682184))

(assert (= (and b!2682184 c!431974) b!2682201))

(assert (= (and b!2682184 (not c!431974)) b!2682195))

(assert (= (and b!2682201 res!1127326) b!2682211))

(assert (= (and b!2682201 c!431973) b!2682191))

(assert (= (and b!2682201 (not c!431973)) b!2682212))

(assert (= (and b!2682184 res!1127328) b!2682198))

(assert (= start!261206 b!2682208))

(assert (= (and b!2682209 condMapEmpty!15960) mapIsEmpty!15960))

(assert (= (and b!2682209 (not condMapEmpty!15960)) mapNonEmpty!15959))

(assert (= b!2682199 b!2682209))

(assert (= b!2682197 b!2682199))

(assert (= b!2682218 b!2682197))

(assert (= (and b!2682213 ((_ is LongMap!3487) (v!32765 (underlying!7178 (cache!3536 cacheUp!486))))) b!2682218))

(assert (= b!2682196 b!2682213))

(assert (= (and b!2682217 ((_ is HashMap!3393) (cache!3536 cacheUp!486))) b!2682196))

(assert (= start!261206 b!2682217))

(assert (= start!261206 b!2682190))

(assert (= start!261206 b!2682188))

(assert (= start!261206 b!2682210))

(assert (= b!2682186 b!2682206))

(assert (= b!2682192 b!2682186))

(assert (= (and start!261206 ((_ is Cons!30953) rules!1381)) b!2682192))

(assert (= (and b!2682216 condMapEmpty!15959) mapIsEmpty!15959))

(assert (= (and b!2682216 (not condMapEmpty!15959)) mapNonEmpty!15960))

(assert (= b!2682219 b!2682216))

(assert (= b!2682215 b!2682219))

(assert (= b!2682205 b!2682215))

(assert (= (and b!2682202 ((_ is LongMap!3486) (v!32763 (underlying!7176 (cache!3535 cacheDown!499))))) b!2682205))

(assert (= b!2682214 b!2682202))

(assert (= (and b!2682187 ((_ is HashMap!3392) (cache!3535 cacheDown!499))) b!2682214))

(assert (= start!261206 b!2682187))

(declare-fun m!3050739 () Bool)

(assert (=> b!2682185 m!3050739))

(declare-fun m!3050741 () Bool)

(assert (=> b!2682219 m!3050741))

(declare-fun m!3050743 () Bool)

(assert (=> b!2682219 m!3050743))

(declare-fun m!3050745 () Bool)

(assert (=> b!2682201 m!3050745))

(declare-fun m!3050747 () Bool)

(assert (=> b!2682201 m!3050747))

(declare-fun m!3050749 () Bool)

(assert (=> b!2682201 m!3050749))

(declare-fun m!3050751 () Bool)

(assert (=> b!2682201 m!3050751))

(declare-fun m!3050753 () Bool)

(assert (=> b!2682201 m!3050753))

(declare-fun m!3050755 () Bool)

(assert (=> b!2682201 m!3050755))

(declare-fun m!3050757 () Bool)

(assert (=> b!2682201 m!3050757))

(assert (=> b!2682201 m!3050749))

(declare-fun m!3050759 () Bool)

(assert (=> b!2682201 m!3050759))

(declare-fun m!3050761 () Bool)

(assert (=> b!2682201 m!3050761))

(declare-fun m!3050763 () Bool)

(assert (=> b!2682201 m!3050763))

(declare-fun m!3050765 () Bool)

(assert (=> b!2682201 m!3050765))

(declare-fun m!3050767 () Bool)

(assert (=> b!2682201 m!3050767))

(declare-fun m!3050769 () Bool)

(assert (=> b!2682201 m!3050769))

(declare-fun m!3050771 () Bool)

(assert (=> b!2682201 m!3050771))

(declare-fun m!3050773 () Bool)

(assert (=> b!2682201 m!3050773))

(declare-fun m!3050775 () Bool)

(assert (=> b!2682201 m!3050775))

(declare-fun m!3050777 () Bool)

(assert (=> b!2682201 m!3050777))

(declare-fun m!3050779 () Bool)

(assert (=> b!2682201 m!3050779))

(assert (=> b!2682201 m!3050745))

(declare-fun m!3050781 () Bool)

(assert (=> b!2682201 m!3050781))

(declare-fun m!3050783 () Bool)

(assert (=> b!2682201 m!3050783))

(declare-fun m!3050785 () Bool)

(assert (=> b!2682201 m!3050785))

(assert (=> b!2682201 m!3050759))

(declare-fun m!3050787 () Bool)

(assert (=> b!2682201 m!3050787))

(declare-fun m!3050789 () Bool)

(assert (=> b!2682201 m!3050789))

(assert (=> b!2682201 m!3050771))

(declare-fun m!3050791 () Bool)

(assert (=> b!2682201 m!3050791))

(declare-fun m!3050793 () Bool)

(assert (=> b!2682200 m!3050793))

(declare-fun m!3050795 () Bool)

(assert (=> b!2682200 m!3050795))

(declare-fun m!3050797 () Bool)

(assert (=> b!2682200 m!3050797))

(declare-fun m!3050799 () Bool)

(assert (=> b!2682207 m!3050799))

(declare-fun m!3050801 () Bool)

(assert (=> b!2682189 m!3050801))

(assert (=> b!2682189 m!3050801))

(declare-fun m!3050803 () Bool)

(assert (=> b!2682189 m!3050803))

(declare-fun m!3050805 () Bool)

(assert (=> b!2682193 m!3050805))

(declare-fun m!3050807 () Bool)

(assert (=> b!2682198 m!3050807))

(declare-fun m!3050809 () Bool)

(assert (=> b!2682198 m!3050809))

(declare-fun m!3050811 () Bool)

(assert (=> b!2682210 m!3050811))

(declare-fun m!3050813 () Bool)

(assert (=> b!2682220 m!3050813))

(declare-fun m!3050815 () Bool)

(assert (=> b!2682220 m!3050815))

(assert (=> b!2682220 m!3050815))

(declare-fun m!3050817 () Bool)

(assert (=> b!2682220 m!3050817))

(declare-fun m!3050819 () Bool)

(assert (=> b!2682220 m!3050819))

(declare-fun m!3050821 () Bool)

(assert (=> b!2682191 m!3050821))

(declare-fun m!3050823 () Bool)

(assert (=> b!2682191 m!3050823))

(declare-fun m!3050825 () Bool)

(assert (=> b!2682199 m!3050825))

(declare-fun m!3050827 () Bool)

(assert (=> b!2682199 m!3050827))

(declare-fun m!3050829 () Bool)

(assert (=> b!2682188 m!3050829))

(declare-fun m!3050831 () Bool)

(assert (=> mapNonEmpty!15959 m!3050831))

(declare-fun m!3050833 () Bool)

(assert (=> b!2682211 m!3050833))

(declare-fun m!3050835 () Bool)

(assert (=> b!2682203 m!3050835))

(declare-fun m!3050837 () Bool)

(assert (=> b!2682208 m!3050837))

(declare-fun m!3050839 () Bool)

(assert (=> b!2682184 m!3050839))

(declare-fun m!3050841 () Bool)

(assert (=> b!2682184 m!3050841))

(declare-fun m!3050843 () Bool)

(assert (=> b!2682184 m!3050843))

(declare-fun m!3050845 () Bool)

(assert (=> b!2682190 m!3050845))

(declare-fun m!3050847 () Bool)

(assert (=> b!2682186 m!3050847))

(declare-fun m!3050849 () Bool)

(assert (=> b!2682186 m!3050849))

(declare-fun m!3050851 () Bool)

(assert (=> b!2682204 m!3050851))

(declare-fun m!3050853 () Bool)

(assert (=> b!2682204 m!3050853))

(declare-fun m!3050855 () Bool)

(assert (=> b!2682204 m!3050855))

(assert (=> b!2682204 m!3050851))

(declare-fun m!3050857 () Bool)

(assert (=> b!2682204 m!3050857))

(declare-fun m!3050859 () Bool)

(assert (=> b!2682204 m!3050859))

(declare-fun m!3050861 () Bool)

(assert (=> start!261206 m!3050861))

(declare-fun m!3050863 () Bool)

(assert (=> start!261206 m!3050863))

(declare-fun m!3050865 () Bool)

(assert (=> start!261206 m!3050865))

(declare-fun m!3050867 () Bool)

(assert (=> start!261206 m!3050867))

(declare-fun m!3050869 () Bool)

(assert (=> start!261206 m!3050869))

(declare-fun m!3050871 () Bool)

(assert (=> start!261206 m!3050871))

(declare-fun m!3050873 () Bool)

(assert (=> b!2682194 m!3050873))

(declare-fun m!3050875 () Bool)

(assert (=> b!2682194 m!3050875))

(declare-fun m!3050877 () Bool)

(assert (=> mapNonEmpty!15960 m!3050877))

(check-sat (not start!261206) b_and!198627 (not b!2682191) (not b!2682190) b_and!198637 (not b_next!76541) b_and!198635 (not b!2682210) (not b!2682207) (not b!2682211) (not mapNonEmpty!15959) (not mapNonEmpty!15960) (not b!2682198) (not b!2682209) (not b_next!76539) b_and!198631 (not b!2682193) (not b!2682201) (not b!2682204) (not b!2682188) (not b_next!76537) (not b!2682216) (not b!2682203) (not b!2682220) (not b_next!76543) (not b_next!76535) (not b!2682200) (not b!2682189) (not b!2682194) (not b!2682208) (not b!2682219) (not b!2682185) (not b!2682199) b_and!198633 (not b!2682186) (not b!2682184) b_and!198629 (not b_next!76533) (not b!2682192))
(check-sat (not b_next!76539) b_and!198631 (not b_next!76537) (not b_next!76543) b_and!198627 (not b_next!76535) b_and!198633 b_and!198637 (not b_next!76541) b_and!198635 b_and!198629 (not b_next!76533))
