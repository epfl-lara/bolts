; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261108 () Bool)

(assert start!261108)

(declare-fun b!2680382 () Bool)

(declare-fun b_free!75657 () Bool)

(declare-fun b_next!76361 () Bool)

(assert (=> b!2680382 (= b_free!75657 (not b_next!76361))))

(declare-fun tp!847628 () Bool)

(declare-fun b_and!198453 () Bool)

(assert (=> b!2680382 (= tp!847628 b_and!198453)))

(declare-fun b!2680377 () Bool)

(declare-fun b_free!75659 () Bool)

(declare-fun b_next!76363 () Bool)

(assert (=> b!2680377 (= b_free!75659 (not b_next!76363))))

(declare-fun tp!847643 () Bool)

(declare-fun b_and!198455 () Bool)

(assert (=> b!2680377 (= tp!847643 b_and!198455)))

(declare-fun b!2680376 () Bool)

(declare-fun b_free!75661 () Bool)

(declare-fun b_next!76365 () Bool)

(assert (=> b!2680376 (= b_free!75661 (not b_next!76365))))

(declare-fun tp!847630 () Bool)

(declare-fun b_and!198457 () Bool)

(assert (=> b!2680376 (= tp!847630 b_and!198457)))

(declare-fun b_free!75663 () Bool)

(declare-fun b_next!76367 () Bool)

(assert (=> b!2680376 (= b_free!75663 (not b_next!76367))))

(declare-fun tp!847636 () Bool)

(declare-fun b_and!198459 () Bool)

(assert (=> b!2680376 (= tp!847636 b_and!198459)))

(declare-fun b!2680372 () Bool)

(declare-fun b_free!75665 () Bool)

(declare-fun b_next!76369 () Bool)

(assert (=> b!2680372 (= b_free!75665 (not b_next!76369))))

(declare-fun tp!847644 () Bool)

(declare-fun b_and!198461 () Bool)

(assert (=> b!2680372 (= tp!847644 b_and!198461)))

(declare-fun b!2680384 () Bool)

(declare-fun b_free!75667 () Bool)

(declare-fun b_next!76371 () Bool)

(assert (=> b!2680384 (= b_free!75667 (not b_next!76371))))

(declare-fun tp!847634 () Bool)

(declare-fun b_and!198463 () Bool)

(assert (=> b!2680384 (= tp!847634 b_and!198463)))

(declare-fun b!2680358 () Bool)

(declare-fun e!1689693 () Bool)

(declare-fun e!1689677 () Bool)

(assert (=> b!2680358 (= e!1689693 e!1689677)))

(declare-fun b!2680359 () Bool)

(declare-fun e!1689685 () Bool)

(declare-datatypes ((C!15888 0))(
  ( (C!15889 (val!9878 Int)) )
))
(declare-datatypes ((List!30963 0))(
  ( (Nil!30863) (Cons!30863 (h!36283 C!15888) (t!224464 List!30963)) )
))
(declare-datatypes ((IArray!19321 0))(
  ( (IArray!19322 (innerList!9718 List!30963)) )
))
(declare-datatypes ((Conc!9658 0))(
  ( (Node!9658 (left!23878 Conc!9658) (right!24208 Conc!9658) (csize!19546 Int) (cheight!9869 Int)) (Leaf!14759 (xs!12688 IArray!19321) (csize!19547 Int)) (Empty!9658) )
))
(declare-datatypes ((BalanceConc!18930 0))(
  ( (BalanceConc!18931 (c!431801 Conc!9658)) )
))
(declare-fun treated!26 () BalanceConc!18930)

(declare-fun tp!847641 () Bool)

(declare-fun inv!41893 (Conc!9658) Bool)

(assert (=> b!2680359 (= e!1689685 (and (inv!41893 (c!431801 treated!26)) tp!847641))))

(declare-fun b!2680360 () Bool)

(declare-fun e!1689692 () Bool)

(declare-fun e!1689678 () Bool)

(declare-fun tp!847629 () Bool)

(assert (=> b!2680360 (= e!1689692 (and e!1689678 tp!847629))))

(declare-fun mapNonEmpty!15869 () Bool)

(declare-fun mapRes!15869 () Bool)

(declare-fun tp!847631 () Bool)

(declare-fun tp!847640 () Bool)

(assert (=> mapNonEmpty!15869 (= mapRes!15869 (and tp!847631 tp!847640))))

(declare-datatypes ((Regex!7865 0))(
  ( (ElementMatch!7865 (c!431802 C!15888)) (Concat!12802 (regOne!16242 Regex!7865) (regTwo!16242 Regex!7865)) (EmptyExpr!7865) (Star!7865 (reg!8194 Regex!7865)) (EmptyLang!7865) (Union!7865 (regOne!16243 Regex!7865) (regTwo!16243 Regex!7865)) )
))
(declare-datatypes ((List!30964 0))(
  ( (Nil!30864) (Cons!30864 (h!36284 Regex!7865) (t!224465 List!30964)) )
))
(declare-datatypes ((Context!4278 0))(
  ( (Context!4279 (exprs!2639 List!30964)) )
))
(declare-datatypes ((tuple2!30322 0))(
  ( (tuple2!30323 (_1!17712 Context!4278) (_2!17712 C!15888)) )
))
(declare-datatypes ((array!12349 0))(
  ( (array!12350 (arr!5516 (Array (_ BitVec 32) (_ BitVec 64))) (size!23855 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30324 0))(
  ( (tuple2!30325 (_1!17713 tuple2!30322) (_2!17713 (InoxSet Context!4278))) )
))
(declare-datatypes ((List!30965 0))(
  ( (Nil!30865) (Cons!30865 (h!36285 tuple2!30324) (t!224466 List!30965)) )
))
(declare-datatypes ((array!12351 0))(
  ( (array!12352 (arr!5517 (Array (_ BitVec 32) List!30965)) (size!23856 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3378 0))(
  ( (HashableExt!3377 (__x!19739 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6924 0))(
  ( (LongMapFixedSize!6925 (defaultEntry!3847 Int) (mask!9131 (_ BitVec 32)) (extraKeys!3711 (_ BitVec 32)) (zeroValue!3721 List!30965) (minValue!3721 List!30965) (_size!6967 (_ BitVec 32)) (_keys!3762 array!12349) (_values!3743 array!12351) (_vacant!3523 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13657 0))(
  ( (Cell!13658 (v!32705 LongMapFixedSize!6924)) )
))
(declare-datatypes ((MutLongMap!3462 0))(
  ( (LongMap!3462 (underlying!7127 Cell!13657)) (MutLongMapExt!3461 (__x!19740 Int)) )
))
(declare-datatypes ((Cell!13659 0))(
  ( (Cell!13660 (v!32706 MutLongMap!3462)) )
))
(declare-datatypes ((MutableMap!3368 0))(
  ( (MutableMapExt!3367 (__x!19741 Int)) (HashMap!3368 (underlying!7128 Cell!13659) (hashF!5410 Hashable!3378) (_size!6968 (_ BitVec 32)) (defaultValue!3539 Int)) )
))
(declare-datatypes ((CacheUp!2082 0))(
  ( (CacheUp!2083 (cache!3511 MutableMap!3368)) )
))
(declare-fun cacheUp!486 () CacheUp!2082)

(declare-fun mapValue!15870 () List!30965)

(declare-fun mapKey!15870 () (_ BitVec 32))

(declare-fun mapRest!15869 () (Array (_ BitVec 32) List!30965))

(assert (=> mapNonEmpty!15869 (= (arr!5517 (_values!3743 (v!32705 (underlying!7127 (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))))) (store mapRest!15869 mapKey!15870 mapValue!15870))))

(declare-fun b!2680361 () Bool)

(declare-fun e!1689697 () Bool)

(declare-fun tp!847633 () Bool)

(declare-fun mapRes!15870 () Bool)

(assert (=> b!2680361 (= e!1689697 (and tp!847633 mapRes!15870))))

(declare-fun condMapEmpty!15869 () Bool)

(declare-datatypes ((tuple3!4162 0))(
  ( (tuple3!4163 (_1!17714 Regex!7865) (_2!17714 Context!4278) (_3!2551 C!15888)) )
))
(declare-datatypes ((tuple2!30326 0))(
  ( (tuple2!30327 (_1!17715 tuple3!4162) (_2!17715 (InoxSet Context!4278))) )
))
(declare-datatypes ((List!30966 0))(
  ( (Nil!30866) (Cons!30866 (h!36286 tuple2!30326) (t!224467 List!30966)) )
))
(declare-datatypes ((array!12353 0))(
  ( (array!12354 (arr!5518 (Array (_ BitVec 32) List!30966)) (size!23857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6926 0))(
  ( (LongMapFixedSize!6927 (defaultEntry!3848 Int) (mask!9132 (_ BitVec 32)) (extraKeys!3712 (_ BitVec 32)) (zeroValue!3722 List!30966) (minValue!3722 List!30966) (_size!6969 (_ BitVec 32)) (_keys!3763 array!12349) (_values!3744 array!12353) (_vacant!3524 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13661 0))(
  ( (Cell!13662 (v!32707 LongMapFixedSize!6926)) )
))
(declare-datatypes ((MutLongMap!3463 0))(
  ( (LongMap!3463 (underlying!7129 Cell!13661)) (MutLongMapExt!3462 (__x!19742 Int)) )
))
(declare-datatypes ((Cell!13663 0))(
  ( (Cell!13664 (v!32708 MutLongMap!3463)) )
))
(declare-datatypes ((Hashable!3379 0))(
  ( (HashableExt!3378 (__x!19743 Int)) )
))
(declare-datatypes ((MutableMap!3369 0))(
  ( (MutableMapExt!3368 (__x!19744 Int)) (HashMap!3369 (underlying!7130 Cell!13663) (hashF!5411 Hashable!3379) (_size!6970 (_ BitVec 32)) (defaultValue!3540 Int)) )
))
(declare-datatypes ((CacheDown!2186 0))(
  ( (CacheDown!2187 (cache!3512 MutableMap!3369)) )
))
(declare-fun cacheDown!499 () CacheDown!2186)

(declare-fun mapDefault!15869 () List!30966)

(assert (=> b!2680361 (= condMapEmpty!15869 (= (arr!5518 (_values!3744 (v!32707 (underlying!7129 (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!30966)) mapDefault!15869)))))

(declare-fun b!2680362 () Bool)

(declare-fun e!1689687 () Bool)

(declare-fun e!1689696 () Bool)

(assert (=> b!2680362 (= e!1689687 e!1689696)))

(declare-fun res!1126751 () Bool)

(declare-fun e!1689690 () Bool)

(assert (=> start!261108 (=> (not res!1126751) (not e!1689690))))

(declare-datatypes ((LexerInterface!4311 0))(
  ( (LexerInterfaceExt!4308 (__x!19745 Int)) (Lexer!4309) )
))
(declare-fun thiss!12257 () LexerInterface!4311)

(get-info :version)

(assert (=> start!261108 (= res!1126751 ((_ is Lexer!4309) thiss!12257))))

(assert (=> start!261108 e!1689690))

(declare-fun totalInput!354 () BalanceConc!18930)

(declare-fun e!1689683 () Bool)

(declare-fun inv!41894 (BalanceConc!18930) Bool)

(assert (=> start!261108 (and (inv!41894 totalInput!354) e!1689683)))

(declare-fun e!1689688 () Bool)

(declare-fun inv!41895 (CacheUp!2082) Bool)

(assert (=> start!261108 (and (inv!41895 cacheUp!486) e!1689688)))

(declare-datatypes ((List!30967 0))(
  ( (Nil!30867) (Cons!30867 (h!36287 (_ BitVec 16)) (t!224468 List!30967)) )
))
(declare-datatypes ((TokenValue!4937 0))(
  ( (FloatLiteralValue!9874 (text!35004 List!30967)) (TokenValueExt!4936 (__x!19746 Int)) (Broken!24685 (value!151963 List!30967)) (Object!5036) (End!4937) (Def!4937) (Underscore!4937) (Match!4937) (Else!4937) (Error!4937) (Case!4937) (If!4937) (Extends!4937) (Abstract!4937) (Class!4937) (Val!4937) (DelimiterValue!9874 (del!4997 List!30967)) (KeywordValue!4943 (value!151964 List!30967)) (CommentValue!9874 (value!151965 List!30967)) (WhitespaceValue!9874 (value!151966 List!30967)) (IndentationValue!4937 (value!151967 List!30967)) (String!34580) (Int32!4937) (Broken!24686 (value!151968 List!30967)) (Boolean!4938) (Unit!45070) (OperatorValue!4940 (op!4997 List!30967)) (IdentifierValue!9874 (value!151969 List!30967)) (IdentifierValue!9875 (value!151970 List!30967)) (WhitespaceValue!9875 (value!151971 List!30967)) (True!9874) (False!9874) (Broken!24687 (value!151972 List!30967)) (Broken!24688 (value!151973 List!30967)) (True!9875) (RightBrace!4937) (RightBracket!4937) (Colon!4937) (Null!4937) (Comma!4937) (LeftBracket!4937) (False!9875) (LeftBrace!4937) (ImaginaryLiteralValue!4937 (text!35005 List!30967)) (StringLiteralValue!14811 (value!151974 List!30967)) (EOFValue!4937 (value!151975 List!30967)) (IdentValue!4937 (value!151976 List!30967)) (DelimiterValue!9875 (value!151977 List!30967)) (DedentValue!4937 (value!151978 List!30967)) (NewLineValue!4937 (value!151979 List!30967)) (IntegerValue!14811 (value!151980 (_ BitVec 32)) (text!35006 List!30967)) (IntegerValue!14812 (value!151981 Int) (text!35007 List!30967)) (Times!4937) (Or!4937) (Equal!4937) (Minus!4937) (Broken!24689 (value!151982 List!30967)) (And!4937) (Div!4937) (LessEqual!4937) (Mod!4937) (Concat!12803) (Not!4937) (Plus!4937) (SpaceValue!4937 (value!151983 List!30967)) (IntegerValue!14813 (value!151984 Int) (text!35008 List!30967)) (StringLiteralValue!14812 (text!35009 List!30967)) (FloatLiteralValue!9875 (text!35010 List!30967)) (BytesLiteralValue!4937 (value!151985 List!30967)) (CommentValue!9875 (value!151986 List!30967)) (StringLiteralValue!14813 (value!151987 List!30967)) (ErrorTokenValue!4937 (msg!4998 List!30967)) )
))
(declare-datatypes ((String!34581 0))(
  ( (String!34582 (value!151988 String)) )
))
(declare-datatypes ((TokenValueInjection!9314 0))(
  ( (TokenValueInjection!9315 (toValue!6669 Int) (toChars!6528 Int)) )
))
(declare-datatypes ((Rule!9230 0))(
  ( (Rule!9231 (regex!4715 Regex!7865) (tag!5219 String!34581) (isSeparator!4715 Bool) (transformation!4715 TokenValueInjection!9314)) )
))
(declare-datatypes ((Token!8896 0))(
  ( (Token!8897 (value!151989 TokenValue!4937) (rule!7125 Rule!9230) (size!23858 Int) (originalCharacters!5479 List!30963)) )
))
(declare-datatypes ((List!30968 0))(
  ( (Nil!30868) (Cons!30868 (h!36288 Token!8896) (t!224469 List!30968)) )
))
(declare-datatypes ((IArray!19323 0))(
  ( (IArray!19324 (innerList!9719 List!30968)) )
))
(declare-datatypes ((Conc!9659 0))(
  ( (Node!9659 (left!23879 Conc!9659) (right!24209 Conc!9659) (csize!19548 Int) (cheight!9870 Int)) (Leaf!14760 (xs!12689 IArray!19323) (csize!19549 Int)) (Empty!9659) )
))
(declare-datatypes ((BalanceConc!18932 0))(
  ( (BalanceConc!18933 (c!431803 Conc!9659)) )
))
(declare-fun acc!348 () BalanceConc!18932)

(declare-fun e!1689689 () Bool)

(declare-fun inv!41896 (BalanceConc!18932) Bool)

(assert (=> start!261108 (and (inv!41896 acc!348) e!1689689)))

(declare-fun input!780 () BalanceConc!18930)

(declare-fun e!1689681 () Bool)

(assert (=> start!261108 (and (inv!41894 input!780) e!1689681)))

(assert (=> start!261108 (and (inv!41894 treated!26) e!1689685)))

(assert (=> start!261108 e!1689692))

(assert (=> start!261108 true))

(declare-fun e!1689691 () Bool)

(declare-fun inv!41897 (CacheDown!2186) Bool)

(assert (=> start!261108 (and (inv!41897 cacheDown!499) e!1689691)))

(declare-fun b!2680363 () Bool)

(assert (=> b!2680363 (= e!1689690 false)))

(declare-fun lt!944118 () List!30968)

(declare-fun list!11661 (BalanceConc!18932) List!30968)

(assert (=> b!2680363 (= lt!944118 (list!11661 acc!348))))

(declare-fun lt!944120 () List!30968)

(declare-datatypes ((List!30969 0))(
  ( (Nil!30869) (Cons!30869 (h!36289 Rule!9230) (t!224470 List!30969)) )
))
(declare-fun rules!1381 () List!30969)

(declare-datatypes ((tuple2!30328 0))(
  ( (tuple2!30329 (_1!17716 BalanceConc!18932) (_2!17716 BalanceConc!18930)) )
))
(declare-fun lexRec!578 (LexerInterface!4311 List!30969 BalanceConc!18930) tuple2!30328)

(assert (=> b!2680363 (= lt!944120 (list!11661 (_1!17716 (lexRec!578 thiss!12257 rules!1381 treated!26))))))

(declare-fun b!2680364 () Bool)

(declare-fun tp!847635 () Bool)

(declare-fun inv!41898 (Conc!9659) Bool)

(assert (=> b!2680364 (= e!1689689 (and (inv!41898 (c!431803 acc!348)) tp!847635))))

(declare-fun b!2680365 () Bool)

(declare-fun e!1689695 () Bool)

(declare-fun tp!847623 () Bool)

(assert (=> b!2680365 (= e!1689695 (and tp!847623 mapRes!15869))))

(declare-fun condMapEmpty!15870 () Bool)

(declare-fun mapDefault!15870 () List!30965)

(assert (=> b!2680365 (= condMapEmpty!15870 (= (arr!5517 (_values!3743 (v!32705 (underlying!7127 (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!30965)) mapDefault!15870)))))

(declare-fun b!2680366 () Bool)

(declare-fun res!1126749 () Bool)

(assert (=> b!2680366 (=> (not res!1126749) (not e!1689690))))

(declare-fun rulesInvariant!3811 (LexerInterface!4311 List!30969) Bool)

(assert (=> b!2680366 (= res!1126749 (rulesInvariant!3811 thiss!12257 rules!1381))))

(declare-fun b!2680367 () Bool)

(declare-fun tp!847637 () Bool)

(assert (=> b!2680367 (= e!1689681 (and (inv!41893 (c!431801 input!780)) tp!847637))))

(declare-fun b!2680368 () Bool)

(declare-fun e!1689684 () Bool)

(declare-fun lt!944117 () MutLongMap!3462)

(assert (=> b!2680368 (= e!1689684 (and e!1689687 ((_ is LongMap!3462) lt!944117)))))

(assert (=> b!2680368 (= lt!944117 (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))))

(declare-fun mapNonEmpty!15870 () Bool)

(declare-fun tp!847639 () Bool)

(declare-fun tp!847627 () Bool)

(assert (=> mapNonEmpty!15870 (= mapRes!15870 (and tp!847639 tp!847627))))

(declare-fun mapValue!15869 () List!30966)

(declare-fun mapRest!15870 () (Array (_ BitVec 32) List!30966))

(declare-fun mapKey!15869 () (_ BitVec 32))

(assert (=> mapNonEmpty!15870 (= (arr!5518 (_values!3744 (v!32707 (underlying!7129 (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))))) (store mapRest!15870 mapKey!15869 mapValue!15869))))

(declare-fun b!2680369 () Bool)

(declare-fun e!1689674 () Bool)

(assert (=> b!2680369 (= e!1689688 e!1689674)))

(declare-fun mapIsEmpty!15869 () Bool)

(assert (=> mapIsEmpty!15869 mapRes!15870))

(declare-fun tp!847632 () Bool)

(declare-fun b!2680370 () Bool)

(declare-fun e!1689680 () Bool)

(declare-fun inv!41890 (String!34581) Bool)

(declare-fun inv!41899 (TokenValueInjection!9314) Bool)

(assert (=> b!2680370 (= e!1689678 (and tp!847632 (inv!41890 (tag!5219 (h!36289 rules!1381))) (inv!41899 (transformation!4715 (h!36289 rules!1381))) e!1689680))))

(declare-fun b!2680371 () Bool)

(declare-fun e!1689686 () Bool)

(assert (=> b!2680371 (= e!1689686 e!1689693)))

(declare-fun e!1689682 () Bool)

(declare-fun e!1689676 () Bool)

(assert (=> b!2680372 (= e!1689682 (and e!1689676 tp!847644))))

(declare-fun b!2680373 () Bool)

(declare-fun res!1126750 () Bool)

(assert (=> b!2680373 (=> (not res!1126750) (not e!1689690))))

(declare-fun valid!2681 (CacheDown!2186) Bool)

(assert (=> b!2680373 (= res!1126750 (valid!2681 cacheDown!499))))

(declare-fun mapIsEmpty!15870 () Bool)

(assert (=> mapIsEmpty!15870 mapRes!15869))

(declare-fun b!2680374 () Bool)

(declare-fun tp!847624 () Bool)

(assert (=> b!2680374 (= e!1689683 (and (inv!41893 (c!431801 totalInput!354)) tp!847624))))

(declare-fun b!2680375 () Bool)

(declare-fun res!1126748 () Bool)

(assert (=> b!2680375 (=> (not res!1126748) (not e!1689690))))

(declare-fun isEmpty!17665 (List!30969) Bool)

(assert (=> b!2680375 (= res!1126748 (not (isEmpty!17665 rules!1381)))))

(assert (=> b!2680376 (= e!1689680 (and tp!847630 tp!847636))))

(assert (=> b!2680377 (= e!1689674 (and e!1689684 tp!847643))))

(declare-fun b!2680378 () Bool)

(declare-fun lt!944119 () MutLongMap!3463)

(assert (=> b!2680378 (= e!1689676 (and e!1689686 ((_ is LongMap!3463) lt!944119)))))

(assert (=> b!2680378 (= lt!944119 (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))))

(declare-fun b!2680379 () Bool)

(declare-fun res!1126752 () Bool)

(assert (=> b!2680379 (=> (not res!1126752) (not e!1689690))))

(declare-fun valid!2682 (CacheUp!2082) Bool)

(assert (=> b!2680379 (= res!1126752 (valid!2682 cacheUp!486))))

(declare-fun b!2680380 () Bool)

(declare-fun res!1126753 () Bool)

(assert (=> b!2680380 (=> (not res!1126753) (not e!1689690))))

(declare-fun list!11662 (BalanceConc!18930) List!30963)

(declare-fun ++!7535 (List!30963 List!30963) List!30963)

(assert (=> b!2680380 (= res!1126753 (= (list!11662 totalInput!354) (++!7535 (list!11662 treated!26) (list!11662 input!780))))))

(declare-fun b!2680381 () Bool)

(declare-fun e!1689673 () Bool)

(assert (=> b!2680381 (= e!1689696 e!1689673)))

(declare-fun tp!847638 () Bool)

(declare-fun tp!847642 () Bool)

(declare-fun array_inv!3941 (array!12349) Bool)

(declare-fun array_inv!3942 (array!12351) Bool)

(assert (=> b!2680382 (= e!1689673 (and tp!847628 tp!847642 tp!847638 (array_inv!3941 (_keys!3762 (v!32705 (underlying!7127 (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))))) (array_inv!3942 (_values!3743 (v!32705 (underlying!7127 (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))))) e!1689695))))

(declare-fun b!2680383 () Bool)

(assert (=> b!2680383 (= e!1689691 e!1689682)))

(declare-fun tp!847626 () Bool)

(declare-fun tp!847625 () Bool)

(declare-fun array_inv!3943 (array!12353) Bool)

(assert (=> b!2680384 (= e!1689677 (and tp!847634 tp!847625 tp!847626 (array_inv!3941 (_keys!3763 (v!32707 (underlying!7129 (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))))) (array_inv!3943 (_values!3744 (v!32707 (underlying!7129 (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))))) e!1689697))))

(assert (= (and start!261108 res!1126751) b!2680375))

(assert (= (and b!2680375 res!1126748) b!2680366))

(assert (= (and b!2680366 res!1126749) b!2680379))

(assert (= (and b!2680379 res!1126752) b!2680373))

(assert (= (and b!2680373 res!1126750) b!2680380))

(assert (= (and b!2680380 res!1126753) b!2680363))

(assert (= start!261108 b!2680374))

(assert (= (and b!2680365 condMapEmpty!15870) mapIsEmpty!15870))

(assert (= (and b!2680365 (not condMapEmpty!15870)) mapNonEmpty!15869))

(assert (= b!2680382 b!2680365))

(assert (= b!2680381 b!2680382))

(assert (= b!2680362 b!2680381))

(assert (= (and b!2680368 ((_ is LongMap!3462) (v!32706 (underlying!7128 (cache!3511 cacheUp!486))))) b!2680362))

(assert (= b!2680377 b!2680368))

(assert (= (and b!2680369 ((_ is HashMap!3368) (cache!3511 cacheUp!486))) b!2680377))

(assert (= start!261108 b!2680369))

(assert (= start!261108 b!2680364))

(assert (= start!261108 b!2680367))

(assert (= start!261108 b!2680359))

(assert (= b!2680370 b!2680376))

(assert (= b!2680360 b!2680370))

(assert (= (and start!261108 ((_ is Cons!30869) rules!1381)) b!2680360))

(assert (= (and b!2680361 condMapEmpty!15869) mapIsEmpty!15869))

(assert (= (and b!2680361 (not condMapEmpty!15869)) mapNonEmpty!15870))

(assert (= b!2680384 b!2680361))

(assert (= b!2680358 b!2680384))

(assert (= b!2680371 b!2680358))

(assert (= (and b!2680378 ((_ is LongMap!3463) (v!32708 (underlying!7130 (cache!3512 cacheDown!499))))) b!2680371))

(assert (= b!2680372 b!2680378))

(assert (= (and b!2680383 ((_ is HashMap!3369) (cache!3512 cacheDown!499))) b!2680372))

(assert (= start!261108 b!2680383))

(declare-fun m!3048573 () Bool)

(assert (=> b!2680366 m!3048573))

(declare-fun m!3048575 () Bool)

(assert (=> mapNonEmpty!15870 m!3048575))

(declare-fun m!3048577 () Bool)

(assert (=> b!2680374 m!3048577))

(declare-fun m!3048579 () Bool)

(assert (=> b!2680359 m!3048579))

(declare-fun m!3048581 () Bool)

(assert (=> b!2680380 m!3048581))

(declare-fun m!3048583 () Bool)

(assert (=> b!2680380 m!3048583))

(declare-fun m!3048585 () Bool)

(assert (=> b!2680380 m!3048585))

(assert (=> b!2680380 m!3048583))

(assert (=> b!2680380 m!3048585))

(declare-fun m!3048587 () Bool)

(assert (=> b!2680380 m!3048587))

(declare-fun m!3048589 () Bool)

(assert (=> b!2680370 m!3048589))

(declare-fun m!3048591 () Bool)

(assert (=> b!2680370 m!3048591))

(declare-fun m!3048593 () Bool)

(assert (=> b!2680364 m!3048593))

(declare-fun m!3048595 () Bool)

(assert (=> b!2680384 m!3048595))

(declare-fun m!3048597 () Bool)

(assert (=> b!2680384 m!3048597))

(declare-fun m!3048599 () Bool)

(assert (=> b!2680373 m!3048599))

(declare-fun m!3048601 () Bool)

(assert (=> mapNonEmpty!15869 m!3048601))

(declare-fun m!3048603 () Bool)

(assert (=> start!261108 m!3048603))

(declare-fun m!3048605 () Bool)

(assert (=> start!261108 m!3048605))

(declare-fun m!3048607 () Bool)

(assert (=> start!261108 m!3048607))

(declare-fun m!3048609 () Bool)

(assert (=> start!261108 m!3048609))

(declare-fun m!3048611 () Bool)

(assert (=> start!261108 m!3048611))

(declare-fun m!3048613 () Bool)

(assert (=> start!261108 m!3048613))

(declare-fun m!3048615 () Bool)

(assert (=> b!2680379 m!3048615))

(declare-fun m!3048617 () Bool)

(assert (=> b!2680363 m!3048617))

(declare-fun m!3048619 () Bool)

(assert (=> b!2680363 m!3048619))

(declare-fun m!3048621 () Bool)

(assert (=> b!2680363 m!3048621))

(declare-fun m!3048623 () Bool)

(assert (=> b!2680382 m!3048623))

(declare-fun m!3048625 () Bool)

(assert (=> b!2680382 m!3048625))

(declare-fun m!3048627 () Bool)

(assert (=> b!2680375 m!3048627))

(declare-fun m!3048629 () Bool)

(assert (=> b!2680367 m!3048629))

(check-sat (not b!2680367) b_and!198455 (not b_next!76361) (not b!2680382) (not b_next!76369) (not b!2680370) (not b_next!76363) (not b!2680374) (not b!2680365) (not b!2680363) (not mapNonEmpty!15869) (not b!2680361) (not b!2680360) (not b_next!76367) (not b_next!76371) b_and!198461 (not b_next!76365) (not b!2680359) (not b!2680373) (not b!2680379) b_and!198459 b_and!198453 b_and!198463 (not b!2680364) (not b!2680384) (not b!2680366) (not start!261108) (not b!2680375) (not b!2680380) (not mapNonEmpty!15870) b_and!198457)
(check-sat b_and!198455 (not b_next!76361) b_and!198459 (not b_next!76369) (not b_next!76363) (not b_next!76367) (not b_next!76371) b_and!198457 b_and!198461 (not b_next!76365) b_and!198453 b_and!198463)
