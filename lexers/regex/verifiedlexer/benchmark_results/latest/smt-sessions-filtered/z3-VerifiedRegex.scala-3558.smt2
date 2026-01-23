; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206162 () Bool)

(assert start!206162)

(declare-fun b!2108432 () Bool)

(declare-fun b_free!60733 () Bool)

(declare-fun b_next!61437 () Bool)

(assert (=> b!2108432 (= b_free!60733 (not b_next!61437))))

(declare-fun tp!640554 () Bool)

(declare-fun b_and!170299 () Bool)

(assert (=> b!2108432 (= tp!640554 b_and!170299)))

(declare-fun b_free!60735 () Bool)

(declare-fun b_next!61439 () Bool)

(assert (=> b!2108432 (= b_free!60735 (not b_next!61439))))

(declare-fun tp!640547 () Bool)

(declare-fun b_and!170301 () Bool)

(assert (=> b!2108432 (= tp!640547 b_and!170301)))

(declare-fun b!2108443 () Bool)

(declare-fun b_free!60737 () Bool)

(declare-fun b_next!61441 () Bool)

(assert (=> b!2108443 (= b_free!60737 (not b_next!61441))))

(declare-fun tp!640555 () Bool)

(declare-fun b_and!170303 () Bool)

(assert (=> b!2108443 (= tp!640555 b_and!170303)))

(declare-fun b!2108434 () Bool)

(declare-fun b_free!60739 () Bool)

(declare-fun b_next!61443 () Bool)

(assert (=> b!2108434 (= b_free!60739 (not b_next!61443))))

(declare-fun tp!640557 () Bool)

(declare-fun b_and!170305 () Bool)

(assert (=> b!2108434 (= tp!640557 b_and!170305)))

(declare-fun b!2108438 () Bool)

(declare-fun b_free!60741 () Bool)

(declare-fun b_next!61445 () Bool)

(assert (=> b!2108438 (= b_free!60741 (not b_next!61445))))

(declare-fun tp!640559 () Bool)

(declare-fun b_and!170307 () Bool)

(assert (=> b!2108438 (= tp!640559 b_and!170307)))

(declare-fun b!2108431 () Bool)

(declare-fun b_free!60743 () Bool)

(declare-fun b_next!61447 () Bool)

(assert (=> b!2108431 (= b_free!60743 (not b_next!61447))))

(declare-fun tp!640562 () Bool)

(declare-fun b_and!170309 () Bool)

(assert (=> b!2108431 (= tp!640562 b_and!170309)))

(declare-fun b!2108424 () Bool)

(declare-fun e!1340517 () Bool)

(declare-fun e!1340527 () Bool)

(assert (=> b!2108424 (= e!1340517 e!1340527)))

(declare-fun b!2108425 () Bool)

(declare-fun res!916216 () Bool)

(declare-fun e!1340529 () Bool)

(assert (=> b!2108425 (=> (not res!916216) (not e!1340529))))

(declare-datatypes ((C!11312 0))(
  ( (C!11313 (val!6642 Int)) )
))
(declare-datatypes ((Regex!5583 0))(
  ( (ElementMatch!5583 (c!338975 C!11312)) (Concat!9869 (regOne!11678 Regex!5583) (regTwo!11678 Regex!5583)) (EmptyExpr!5583) (Star!5583 (reg!5912 Regex!5583)) (EmptyLang!5583) (Union!5583 (regOne!11679 Regex!5583) (regTwo!11679 Regex!5583)) )
))
(declare-datatypes ((List!23406 0))(
  ( (Nil!23322) (Cons!23322 (h!28723 Regex!5583) (t!195905 List!23406)) )
))
(declare-datatypes ((Context!2306 0))(
  ( (Context!2307 (exprs!1653 List!23406)) )
))
(declare-datatypes ((tuple2!22626 0))(
  ( (tuple2!22627 (_1!13085 Context!2306) (_2!13085 C!11312)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22628 0))(
  ( (tuple2!22629 (_1!13086 tuple2!22626) (_2!13086 (InoxSet Context!2306))) )
))
(declare-datatypes ((List!23407 0))(
  ( (Nil!23323) (Cons!23323 (h!28724 tuple2!22628) (t!195906 List!23407)) )
))
(declare-datatypes ((array!7846 0))(
  ( (array!7847 (arr!3475 (Array (_ BitVec 32) (_ BitVec 64))) (size!18202 (_ BitVec 32))) )
))
(declare-datatypes ((array!7848 0))(
  ( (array!7849 (arr!3476 (Array (_ BitVec 32) List!23407)) (size!18203 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4542 0))(
  ( (LongMapFixedSize!4543 (defaultEntry!2636 Int) (mask!6378 (_ BitVec 32)) (extraKeys!2519 (_ BitVec 32)) (zeroValue!2529 List!23407) (minValue!2529 List!23407) (_size!4593 (_ BitVec 32)) (_keys!2568 array!7846) (_values!2551 array!7848) (_vacant!2332 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8909 0))(
  ( (Cell!8910 (v!27866 LongMapFixedSize!4542)) )
))
(declare-datatypes ((MutLongMap!2271 0))(
  ( (LongMap!2271 (underlying!4737 Cell!8909)) (MutLongMapExt!2270 (__x!14957 Int)) )
))
(declare-datatypes ((Cell!8911 0))(
  ( (Cell!8912 (v!27867 MutLongMap!2271)) )
))
(declare-datatypes ((Hashable!2185 0))(
  ( (HashableExt!2184 (__x!14958 Int)) )
))
(declare-datatypes ((MutableMap!2185 0))(
  ( (MutableMapExt!2184 (__x!14959 Int)) (HashMap!2185 (underlying!4738 Cell!8911) (hashF!4108 Hashable!2185) (_size!4594 (_ BitVec 32)) (defaultValue!2347 Int)) )
))
(declare-datatypes ((CacheUp!1480 0))(
  ( (CacheUp!1481 (cache!2566 MutableMap!2185)) )
))
(declare-fun cacheUp!740 () CacheUp!1480)

(declare-fun valid!1797 (CacheUp!1480) Bool)

(assert (=> b!2108425 (= res!916216 (valid!1797 cacheUp!740))))

(declare-fun b!2108426 () Bool)

(declare-fun res!916215 () Bool)

(assert (=> b!2108426 (=> (not res!916215) (not e!1340529))))

(declare-datatypes ((List!23408 0))(
  ( (Nil!23324) (Cons!23324 (h!28725 C!11312) (t!195907 List!23408)) )
))
(declare-datatypes ((IArray!15465 0))(
  ( (IArray!15466 (innerList!7790 List!23408)) )
))
(declare-datatypes ((Conc!7730 0))(
  ( (Node!7730 (left!18172 Conc!7730) (right!18502 Conc!7730) (csize!15690 Int) (cheight!7941 Int)) (Leaf!11289 (xs!10672 IArray!15465) (csize!15691 Int)) (Empty!7730) )
))
(declare-datatypes ((BalanceConc!15222 0))(
  ( (BalanceConc!15223 (c!338976 Conc!7730)) )
))
(declare-fun input!1654 () BalanceConc!15222)

(declare-fun totalInput!548 () BalanceConc!15222)

(declare-fun isSuffix!566 (List!23408 List!23408) Bool)

(declare-fun list!9457 (BalanceConc!15222) List!23408)

(assert (=> b!2108426 (= res!916215 (isSuffix!566 (list!9457 input!1654) (list!9457 totalInput!548)))))

(declare-fun b!2108427 () Bool)

(declare-datatypes ((List!23409 0))(
  ( (Nil!23325) (Cons!23325 (h!28726 (_ BitVec 16)) (t!195908 List!23409)) )
))
(declare-datatypes ((TokenValue!4286 0))(
  ( (FloatLiteralValue!8572 (text!30447 List!23409)) (TokenValueExt!4285 (__x!14960 Int)) (Broken!21430 (value!129889 List!23409)) (Object!4369) (End!4286) (Def!4286) (Underscore!4286) (Match!4286) (Else!4286) (Error!4286) (Case!4286) (If!4286) (Extends!4286) (Abstract!4286) (Class!4286) (Val!4286) (DelimiterValue!8572 (del!4346 List!23409)) (KeywordValue!4292 (value!129890 List!23409)) (CommentValue!8572 (value!129891 List!23409)) (WhitespaceValue!8572 (value!129892 List!23409)) (IndentationValue!4286 (value!129893 List!23409)) (String!26631) (Int32!4286) (Broken!21431 (value!129894 List!23409)) (Boolean!4287) (Unit!37488) (OperatorValue!4289 (op!4346 List!23409)) (IdentifierValue!8572 (value!129895 List!23409)) (IdentifierValue!8573 (value!129896 List!23409)) (WhitespaceValue!8573 (value!129897 List!23409)) (True!8572) (False!8572) (Broken!21432 (value!129898 List!23409)) (Broken!21433 (value!129899 List!23409)) (True!8573) (RightBrace!4286) (RightBracket!4286) (Colon!4286) (Null!4286) (Comma!4286) (LeftBracket!4286) (False!8573) (LeftBrace!4286) (ImaginaryLiteralValue!4286 (text!30448 List!23409)) (StringLiteralValue!12858 (value!129900 List!23409)) (EOFValue!4286 (value!129901 List!23409)) (IdentValue!4286 (value!129902 List!23409)) (DelimiterValue!8573 (value!129903 List!23409)) (DedentValue!4286 (value!129904 List!23409)) (NewLineValue!4286 (value!129905 List!23409)) (IntegerValue!12858 (value!129906 (_ BitVec 32)) (text!30449 List!23409)) (IntegerValue!12859 (value!129907 Int) (text!30450 List!23409)) (Times!4286) (Or!4286) (Equal!4286) (Minus!4286) (Broken!21434 (value!129908 List!23409)) (And!4286) (Div!4286) (LessEqual!4286) (Mod!4286) (Concat!9870) (Not!4286) (Plus!4286) (SpaceValue!4286 (value!129909 List!23409)) (IntegerValue!12860 (value!129910 Int) (text!30451 List!23409)) (StringLiteralValue!12859 (text!30452 List!23409)) (FloatLiteralValue!8573 (text!30453 List!23409)) (BytesLiteralValue!4286 (value!129911 List!23409)) (CommentValue!8573 (value!129912 List!23409)) (StringLiteralValue!12860 (value!129913 List!23409)) (ErrorTokenValue!4286 (msg!4347 List!23409)) )
))
(declare-datatypes ((String!26632 0))(
  ( (String!26633 (value!129914 String)) )
))
(declare-datatypes ((TokenValueInjection!8156 0))(
  ( (TokenValueInjection!8157 (toValue!5861 Int) (toChars!5720 Int)) )
))
(declare-datatypes ((Rule!8100 0))(
  ( (Rule!8101 (regex!4150 Regex!5583) (tag!4640 String!26632) (isSeparator!4150 Bool) (transformation!4150 TokenValueInjection!8156)) )
))
(declare-fun rule!236 () Rule!8100)

(declare-fun validRegex!2199 (Regex!5583) Bool)

(assert (=> b!2108427 (= e!1340529 (not (validRegex!2199 (regex!4150 rule!236))))))

(declare-fun b!2108428 () Bool)

(declare-fun e!1340532 () Bool)

(declare-fun e!1340513 () Bool)

(assert (=> b!2108428 (= e!1340532 e!1340513)))

(declare-fun b!2108429 () Bool)

(declare-fun e!1340524 () Bool)

(declare-fun e!1340528 () Bool)

(declare-fun lt!791802 () MutLongMap!2271)

(get-info :version)

(assert (=> b!2108429 (= e!1340524 (and e!1340528 ((_ is LongMap!2271) lt!791802)))))

(assert (=> b!2108429 (= lt!791802 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))

(declare-fun mapNonEmpty!10983 () Bool)

(declare-fun mapRes!10983 () Bool)

(declare-fun tp!640561 () Bool)

(declare-fun tp!640556 () Bool)

(assert (=> mapNonEmpty!10983 (= mapRes!10983 (and tp!640561 tp!640556))))

(declare-fun mapKey!10982 () (_ BitVec 32))

(declare-fun mapRest!10983 () (Array (_ BitVec 32) List!23407))

(declare-fun mapValue!10982 () List!23407)

(assert (=> mapNonEmpty!10983 (= (arr!3476 (_values!2551 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) (store mapRest!10983 mapKey!10982 mapValue!10982))))

(declare-fun b!2108430 () Bool)

(declare-fun res!916217 () Bool)

(assert (=> b!2108430 (=> (not res!916217) (not e!1340529))))

(declare-datatypes ((LexerInterface!3747 0))(
  ( (LexerInterfaceExt!3744 (__x!14961 Int)) (Lexer!3745) )
))
(declare-fun thiss!16399 () LexerInterface!3747)

(declare-fun ruleValid!1273 (LexerInterface!3747 Rule!8100) Bool)

(assert (=> b!2108430 (= res!916217 (ruleValid!1273 thiss!16399 rule!236))))

(declare-fun tp!640546 () Bool)

(declare-fun e!1340518 () Bool)

(declare-fun e!1340530 () Bool)

(declare-fun tp!640553 () Bool)

(declare-datatypes ((Hashable!2186 0))(
  ( (HashableExt!2185 (__x!14962 Int)) )
))
(declare-datatypes ((tuple3!2616 0))(
  ( (tuple3!2617 (_1!13087 Regex!5583) (_2!13087 Context!2306) (_3!1772 C!11312)) )
))
(declare-datatypes ((tuple2!22630 0))(
  ( (tuple2!22631 (_1!13088 tuple3!2616) (_2!13088 (InoxSet Context!2306))) )
))
(declare-datatypes ((List!23410 0))(
  ( (Nil!23326) (Cons!23326 (h!28727 tuple2!22630) (t!195909 List!23410)) )
))
(declare-datatypes ((array!7850 0))(
  ( (array!7851 (arr!3477 (Array (_ BitVec 32) List!23410)) (size!18204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4544 0))(
  ( (LongMapFixedSize!4545 (defaultEntry!2637 Int) (mask!6379 (_ BitVec 32)) (extraKeys!2520 (_ BitVec 32)) (zeroValue!2530 List!23410) (minValue!2530 List!23410) (_size!4595 (_ BitVec 32)) (_keys!2569 array!7846) (_values!2552 array!7850) (_vacant!2333 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8913 0))(
  ( (Cell!8914 (v!27868 LongMapFixedSize!4544)) )
))
(declare-datatypes ((MutLongMap!2272 0))(
  ( (LongMap!2272 (underlying!4739 Cell!8913)) (MutLongMapExt!2271 (__x!14963 Int)) )
))
(declare-datatypes ((Cell!8915 0))(
  ( (Cell!8916 (v!27869 MutLongMap!2272)) )
))
(declare-datatypes ((MutableMap!2186 0))(
  ( (MutableMapExt!2185 (__x!14964 Int)) (HashMap!2186 (underlying!4740 Cell!8915) (hashF!4109 Hashable!2186) (_size!4596 (_ BitVec 32)) (defaultValue!2348 Int)) )
))
(declare-datatypes ((CacheDown!1484 0))(
  ( (CacheDown!1485 (cache!2567 MutableMap!2186)) )
))
(declare-fun cacheDown!753 () CacheDown!1484)

(declare-fun array_inv!2499 (array!7846) Bool)

(declare-fun array_inv!2500 (array!7850) Bool)

(assert (=> b!2108431 (= e!1340530 (and tp!640562 tp!640546 tp!640553 (array_inv!2499 (_keys!2569 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) (array_inv!2500 (_values!2552 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) e!1340518))))

(declare-fun mapIsEmpty!10982 () Bool)

(declare-fun mapRes!10982 () Bool)

(assert (=> mapIsEmpty!10982 mapRes!10982))

(declare-fun e!1340512 () Bool)

(assert (=> b!2108432 (= e!1340512 (and tp!640554 tp!640547))))

(declare-fun res!916213 () Bool)

(assert (=> start!206162 (=> (not res!916213) (not e!1340529))))

(assert (=> start!206162 (= res!916213 ((_ is Lexer!3745) thiss!16399))))

(assert (=> start!206162 e!1340529))

(assert (=> start!206162 true))

(declare-fun e!1340522 () Bool)

(assert (=> start!206162 e!1340522))

(declare-fun inv!30868 (CacheDown!1484) Bool)

(assert (=> start!206162 (and (inv!30868 cacheDown!753) e!1340517)))

(declare-fun e!1340515 () Bool)

(declare-fun inv!30869 (BalanceConc!15222) Bool)

(assert (=> start!206162 (and (inv!30869 input!1654) e!1340515)))

(declare-fun e!1340523 () Bool)

(assert (=> start!206162 (and (inv!30869 totalInput!548) e!1340523)))

(declare-fun inv!30870 (CacheUp!1480) Bool)

(assert (=> start!206162 (and (inv!30870 cacheUp!740) e!1340532)))

(declare-fun mapNonEmpty!10982 () Bool)

(declare-fun tp!640558 () Bool)

(declare-fun tp!640549 () Bool)

(assert (=> mapNonEmpty!10982 (= mapRes!10982 (and tp!640558 tp!640549))))

(declare-fun mapRest!10982 () (Array (_ BitVec 32) List!23410))

(declare-fun mapKey!10983 () (_ BitVec 32))

(declare-fun mapValue!10983 () List!23410)

(assert (=> mapNonEmpty!10982 (= (arr!3477 (_values!2552 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) (store mapRest!10982 mapKey!10983 mapValue!10983))))

(declare-fun b!2108433 () Bool)

(declare-fun tp!640550 () Bool)

(assert (=> b!2108433 (= e!1340518 (and tp!640550 mapRes!10982))))

(declare-fun condMapEmpty!10983 () Bool)

(declare-fun mapDefault!10982 () List!23410)

(assert (=> b!2108433 (= condMapEmpty!10983 (= (arr!3477 (_values!2552 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23410)) mapDefault!10982)))))

(assert (=> b!2108434 (= e!1340513 (and e!1340524 tp!640557))))

(declare-fun b!2108435 () Bool)

(declare-fun e!1340526 () Bool)

(declare-fun e!1340514 () Bool)

(assert (=> b!2108435 (= e!1340526 e!1340514)))

(declare-fun b!2108436 () Bool)

(assert (=> b!2108436 (= e!1340528 e!1340526)))

(declare-fun b!2108437 () Bool)

(declare-fun tp!640563 () Bool)

(declare-fun inv!30863 (String!26632) Bool)

(declare-fun inv!30871 (TokenValueInjection!8156) Bool)

(assert (=> b!2108437 (= e!1340522 (and tp!640563 (inv!30863 (tag!4640 rule!236)) (inv!30871 (transformation!4150 rule!236)) e!1340512))))

(declare-fun e!1340519 () Bool)

(assert (=> b!2108438 (= e!1340527 (and e!1340519 tp!640559))))

(declare-fun b!2108439 () Bool)

(declare-fun tp!640552 () Bool)

(declare-fun inv!30872 (Conc!7730) Bool)

(assert (=> b!2108439 (= e!1340515 (and (inv!30872 (c!338976 input!1654)) tp!640552))))

(declare-fun b!2108440 () Bool)

(declare-fun tp!640560 () Bool)

(assert (=> b!2108440 (= e!1340523 (and (inv!30872 (c!338976 totalInput!548)) tp!640560))))

(declare-fun mapIsEmpty!10983 () Bool)

(assert (=> mapIsEmpty!10983 mapRes!10983))

(declare-fun b!2108441 () Bool)

(declare-fun e!1340521 () Bool)

(declare-fun tp!640551 () Bool)

(assert (=> b!2108441 (= e!1340521 (and tp!640551 mapRes!10983))))

(declare-fun condMapEmpty!10982 () Bool)

(declare-fun mapDefault!10983 () List!23407)

(assert (=> b!2108441 (= condMapEmpty!10982 (= (arr!3476 (_values!2551 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23407)) mapDefault!10983)))))

(declare-fun b!2108442 () Bool)

(declare-fun res!916214 () Bool)

(assert (=> b!2108442 (=> (not res!916214) (not e!1340529))))

(declare-fun valid!1798 (CacheDown!1484) Bool)

(assert (=> b!2108442 (= res!916214 (valid!1798 cacheDown!753))))

(declare-fun tp!640548 () Bool)

(declare-fun tp!640564 () Bool)

(declare-fun array_inv!2501 (array!7848) Bool)

(assert (=> b!2108443 (= e!1340514 (and tp!640555 tp!640548 tp!640564 (array_inv!2499 (_keys!2568 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) (array_inv!2501 (_values!2551 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) e!1340521))))

(declare-fun b!2108444 () Bool)

(declare-fun e!1340531 () Bool)

(assert (=> b!2108444 (= e!1340531 e!1340530)))

(declare-fun b!2108445 () Bool)

(declare-fun e!1340520 () Bool)

(declare-fun lt!791801 () MutLongMap!2272)

(assert (=> b!2108445 (= e!1340519 (and e!1340520 ((_ is LongMap!2272) lt!791801)))))

(assert (=> b!2108445 (= lt!791801 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))

(declare-fun b!2108446 () Bool)

(assert (=> b!2108446 (= e!1340520 e!1340531)))

(assert (= (and start!206162 res!916213) b!2108430))

(assert (= (and b!2108430 res!916217) b!2108425))

(assert (= (and b!2108425 res!916216) b!2108442))

(assert (= (and b!2108442 res!916214) b!2108426))

(assert (= (and b!2108426 res!916215) b!2108427))

(assert (= b!2108437 b!2108432))

(assert (= start!206162 b!2108437))

(assert (= (and b!2108433 condMapEmpty!10983) mapIsEmpty!10982))

(assert (= (and b!2108433 (not condMapEmpty!10983)) mapNonEmpty!10982))

(assert (= b!2108431 b!2108433))

(assert (= b!2108444 b!2108431))

(assert (= b!2108446 b!2108444))

(assert (= (and b!2108445 ((_ is LongMap!2272) (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))) b!2108446))

(assert (= b!2108438 b!2108445))

(assert (= (and b!2108424 ((_ is HashMap!2186) (cache!2567 cacheDown!753))) b!2108438))

(assert (= start!206162 b!2108424))

(assert (= start!206162 b!2108439))

(assert (= start!206162 b!2108440))

(assert (= (and b!2108441 condMapEmpty!10982) mapIsEmpty!10983))

(assert (= (and b!2108441 (not condMapEmpty!10982)) mapNonEmpty!10983))

(assert (= b!2108443 b!2108441))

(assert (= b!2108435 b!2108443))

(assert (= b!2108436 b!2108435))

(assert (= (and b!2108429 ((_ is LongMap!2271) (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))) b!2108436))

(assert (= b!2108434 b!2108429))

(assert (= (and b!2108428 ((_ is HashMap!2185) (cache!2566 cacheUp!740))) b!2108434))

(assert (= start!206162 b!2108428))

(declare-fun m!2566109 () Bool)

(assert (=> start!206162 m!2566109))

(declare-fun m!2566111 () Bool)

(assert (=> start!206162 m!2566111))

(declare-fun m!2566113 () Bool)

(assert (=> start!206162 m!2566113))

(declare-fun m!2566115 () Bool)

(assert (=> start!206162 m!2566115))

(declare-fun m!2566117 () Bool)

(assert (=> b!2108440 m!2566117))

(declare-fun m!2566119 () Bool)

(assert (=> b!2108430 m!2566119))

(declare-fun m!2566121 () Bool)

(assert (=> b!2108437 m!2566121))

(declare-fun m!2566123 () Bool)

(assert (=> b!2108437 m!2566123))

(declare-fun m!2566125 () Bool)

(assert (=> mapNonEmpty!10982 m!2566125))

(declare-fun m!2566127 () Bool)

(assert (=> mapNonEmpty!10983 m!2566127))

(declare-fun m!2566129 () Bool)

(assert (=> b!2108431 m!2566129))

(declare-fun m!2566131 () Bool)

(assert (=> b!2108431 m!2566131))

(declare-fun m!2566133 () Bool)

(assert (=> b!2108443 m!2566133))

(declare-fun m!2566135 () Bool)

(assert (=> b!2108443 m!2566135))

(declare-fun m!2566137 () Bool)

(assert (=> b!2108425 m!2566137))

(declare-fun m!2566139 () Bool)

(assert (=> b!2108442 m!2566139))

(declare-fun m!2566141 () Bool)

(assert (=> b!2108427 m!2566141))

(declare-fun m!2566143 () Bool)

(assert (=> b!2108439 m!2566143))

(declare-fun m!2566145 () Bool)

(assert (=> b!2108426 m!2566145))

(declare-fun m!2566147 () Bool)

(assert (=> b!2108426 m!2566147))

(assert (=> b!2108426 m!2566145))

(assert (=> b!2108426 m!2566147))

(declare-fun m!2566149 () Bool)

(assert (=> b!2108426 m!2566149))

(check-sat (not b_next!61443) (not b!2108427) (not b!2108426) b_and!170299 (not b_next!61441) b_and!170301 (not b!2108437) (not start!206162) (not b_next!61447) (not mapNonEmpty!10982) (not b!2108443) (not b!2108441) (not b_next!61445) (not b!2108430) (not b!2108439) (not b!2108433) b_and!170305 b_and!170307 b_and!170303 (not b!2108431) (not b!2108440) (not b!2108425) (not b!2108442) b_and!170309 (not b_next!61437) (not b_next!61439) (not mapNonEmpty!10983))
(check-sat (not b_next!61443) b_and!170299 (not b_next!61441) b_and!170301 (not b_next!61447) (not b_next!61439) (not b_next!61445) b_and!170305 b_and!170307 b_and!170303 b_and!170309 (not b_next!61437))
(get-model)

(declare-fun d!642055 () Bool)

(declare-fun res!916222 () Bool)

(declare-fun e!1340535 () Bool)

(assert (=> d!642055 (=> (not res!916222) (not e!1340535))))

(assert (=> d!642055 (= res!916222 ((_ is HashMap!2186) (cache!2567 cacheDown!753)))))

(assert (=> d!642055 (= (inv!30868 cacheDown!753) e!1340535)))

(declare-fun b!2108449 () Bool)

(declare-fun validCacheMapDown!227 (MutableMap!2186) Bool)

(assert (=> b!2108449 (= e!1340535 (validCacheMapDown!227 (cache!2567 cacheDown!753)))))

(assert (= (and d!642055 res!916222) b!2108449))

(declare-fun m!2566151 () Bool)

(assert (=> b!2108449 m!2566151))

(assert (=> start!206162 d!642055))

(declare-fun d!642057 () Bool)

(declare-fun isBalanced!2433 (Conc!7730) Bool)

(assert (=> d!642057 (= (inv!30869 input!1654) (isBalanced!2433 (c!338976 input!1654)))))

(declare-fun bs!441004 () Bool)

(assert (= bs!441004 d!642057))

(declare-fun m!2566153 () Bool)

(assert (=> bs!441004 m!2566153))

(assert (=> start!206162 d!642057))

(declare-fun d!642059 () Bool)

(assert (=> d!642059 (= (inv!30869 totalInput!548) (isBalanced!2433 (c!338976 totalInput!548)))))

(declare-fun bs!441005 () Bool)

(assert (= bs!441005 d!642059))

(declare-fun m!2566155 () Bool)

(assert (=> bs!441005 m!2566155))

(assert (=> start!206162 d!642059))

(declare-fun d!642061 () Bool)

(declare-fun res!916225 () Bool)

(declare-fun e!1340538 () Bool)

(assert (=> d!642061 (=> (not res!916225) (not e!1340538))))

(assert (=> d!642061 (= res!916225 ((_ is HashMap!2185) (cache!2566 cacheUp!740)))))

(assert (=> d!642061 (= (inv!30870 cacheUp!740) e!1340538)))

(declare-fun b!2108452 () Bool)

(declare-fun validCacheMapUp!229 (MutableMap!2185) Bool)

(assert (=> b!2108452 (= e!1340538 (validCacheMapUp!229 (cache!2566 cacheUp!740)))))

(assert (= (and d!642061 res!916225) b!2108452))

(declare-fun m!2566157 () Bool)

(assert (=> b!2108452 m!2566157))

(assert (=> start!206162 d!642061))

(declare-fun d!642063 () Bool)

(assert (=> d!642063 (= (inv!30863 (tag!4640 rule!236)) (= (mod (str.len (value!129914 (tag!4640 rule!236))) 2) 0))))

(assert (=> b!2108437 d!642063))

(declare-fun d!642065 () Bool)

(declare-fun res!916228 () Bool)

(declare-fun e!1340541 () Bool)

(assert (=> d!642065 (=> (not res!916228) (not e!1340541))))

(declare-fun semiInverseModEq!1659 (Int Int) Bool)

(assert (=> d!642065 (= res!916228 (semiInverseModEq!1659 (toChars!5720 (transformation!4150 rule!236)) (toValue!5861 (transformation!4150 rule!236))))))

(assert (=> d!642065 (= (inv!30871 (transformation!4150 rule!236)) e!1340541)))

(declare-fun b!2108455 () Bool)

(declare-fun equivClasses!1586 (Int Int) Bool)

(assert (=> b!2108455 (= e!1340541 (equivClasses!1586 (toChars!5720 (transformation!4150 rule!236)) (toValue!5861 (transformation!4150 rule!236))))))

(assert (= (and d!642065 res!916228) b!2108455))

(declare-fun m!2566159 () Bool)

(assert (=> d!642065 m!2566159))

(declare-fun m!2566161 () Bool)

(assert (=> b!2108455 m!2566161))

(assert (=> b!2108437 d!642065))

(declare-fun d!642067 () Bool)

(assert (=> d!642067 (= (valid!1798 cacheDown!753) (validCacheMapDown!227 (cache!2567 cacheDown!753)))))

(declare-fun bs!441006 () Bool)

(assert (= bs!441006 d!642067))

(assert (=> bs!441006 m!2566151))

(assert (=> b!2108442 d!642067))

(declare-fun d!642069 () Bool)

(assert (=> d!642069 (= (array_inv!2499 (_keys!2568 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) (bvsge (size!18202 (_keys!2568 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108443 d!642069))

(declare-fun d!642071 () Bool)

(assert (=> d!642071 (= (array_inv!2501 (_values!2551 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) (bvsge (size!18203 (_values!2551 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108443 d!642071))

(declare-fun d!642073 () Bool)

(declare-fun c!338979 () Bool)

(assert (=> d!642073 (= c!338979 ((_ is Node!7730) (c!338976 input!1654)))))

(declare-fun e!1340546 () Bool)

(assert (=> d!642073 (= (inv!30872 (c!338976 input!1654)) e!1340546)))

(declare-fun b!2108462 () Bool)

(declare-fun inv!30873 (Conc!7730) Bool)

(assert (=> b!2108462 (= e!1340546 (inv!30873 (c!338976 input!1654)))))

(declare-fun b!2108463 () Bool)

(declare-fun e!1340547 () Bool)

(assert (=> b!2108463 (= e!1340546 e!1340547)))

(declare-fun res!916231 () Bool)

(assert (=> b!2108463 (= res!916231 (not ((_ is Leaf!11289) (c!338976 input!1654))))))

(assert (=> b!2108463 (=> res!916231 e!1340547)))

(declare-fun b!2108464 () Bool)

(declare-fun inv!30874 (Conc!7730) Bool)

(assert (=> b!2108464 (= e!1340547 (inv!30874 (c!338976 input!1654)))))

(assert (= (and d!642073 c!338979) b!2108462))

(assert (= (and d!642073 (not c!338979)) b!2108463))

(assert (= (and b!2108463 (not res!916231)) b!2108464))

(declare-fun m!2566163 () Bool)

(assert (=> b!2108462 m!2566163))

(declare-fun m!2566165 () Bool)

(assert (=> b!2108464 m!2566165))

(assert (=> b!2108439 d!642073))

(declare-fun d!642075 () Bool)

(assert (=> d!642075 (= (valid!1797 cacheUp!740) (validCacheMapUp!229 (cache!2566 cacheUp!740)))))

(declare-fun bs!441007 () Bool)

(assert (= bs!441007 d!642075))

(assert (=> bs!441007 m!2566157))

(assert (=> b!2108425 d!642075))

(declare-fun d!642077 () Bool)

(declare-fun res!916236 () Bool)

(declare-fun e!1340550 () Bool)

(assert (=> d!642077 (=> (not res!916236) (not e!1340550))))

(assert (=> d!642077 (= res!916236 (validRegex!2199 (regex!4150 rule!236)))))

(assert (=> d!642077 (= (ruleValid!1273 thiss!16399 rule!236) e!1340550)))

(declare-fun b!2108469 () Bool)

(declare-fun res!916237 () Bool)

(assert (=> b!2108469 (=> (not res!916237) (not e!1340550))))

(declare-fun nullable!1672 (Regex!5583) Bool)

(assert (=> b!2108469 (= res!916237 (not (nullable!1672 (regex!4150 rule!236))))))

(declare-fun b!2108470 () Bool)

(assert (=> b!2108470 (= e!1340550 (not (= (tag!4640 rule!236) (String!26633 ""))))))

(assert (= (and d!642077 res!916236) b!2108469))

(assert (= (and b!2108469 res!916237) b!2108470))

(assert (=> d!642077 m!2566141))

(declare-fun m!2566167 () Bool)

(assert (=> b!2108469 m!2566167))

(assert (=> b!2108430 d!642077))

(declare-fun d!642079 () Bool)

(declare-fun c!338980 () Bool)

(assert (=> d!642079 (= c!338980 ((_ is Node!7730) (c!338976 totalInput!548)))))

(declare-fun e!1340551 () Bool)

(assert (=> d!642079 (= (inv!30872 (c!338976 totalInput!548)) e!1340551)))

(declare-fun b!2108471 () Bool)

(assert (=> b!2108471 (= e!1340551 (inv!30873 (c!338976 totalInput!548)))))

(declare-fun b!2108472 () Bool)

(declare-fun e!1340552 () Bool)

(assert (=> b!2108472 (= e!1340551 e!1340552)))

(declare-fun res!916238 () Bool)

(assert (=> b!2108472 (= res!916238 (not ((_ is Leaf!11289) (c!338976 totalInput!548))))))

(assert (=> b!2108472 (=> res!916238 e!1340552)))

(declare-fun b!2108473 () Bool)

(assert (=> b!2108473 (= e!1340552 (inv!30874 (c!338976 totalInput!548)))))

(assert (= (and d!642079 c!338980) b!2108471))

(assert (= (and d!642079 (not c!338980)) b!2108472))

(assert (= (and b!2108472 (not res!916238)) b!2108473))

(declare-fun m!2566169 () Bool)

(assert (=> b!2108471 m!2566169))

(declare-fun m!2566171 () Bool)

(assert (=> b!2108473 m!2566171))

(assert (=> b!2108440 d!642079))

(declare-fun d!642081 () Bool)

(declare-fun e!1340555 () Bool)

(assert (=> d!642081 e!1340555))

(declare-fun res!916241 () Bool)

(assert (=> d!642081 (=> res!916241 e!1340555)))

(declare-fun lt!791805 () Bool)

(assert (=> d!642081 (= res!916241 (not lt!791805))))

(declare-fun drop!1168 (List!23408 Int) List!23408)

(declare-fun size!18205 (List!23408) Int)

(assert (=> d!642081 (= lt!791805 (= (list!9457 input!1654) (drop!1168 (list!9457 totalInput!548) (- (size!18205 (list!9457 totalInput!548)) (size!18205 (list!9457 input!1654))))))))

(assert (=> d!642081 (= (isSuffix!566 (list!9457 input!1654) (list!9457 totalInput!548)) lt!791805)))

(declare-fun b!2108476 () Bool)

(assert (=> b!2108476 (= e!1340555 (>= (size!18205 (list!9457 totalInput!548)) (size!18205 (list!9457 input!1654))))))

(assert (= (and d!642081 (not res!916241)) b!2108476))

(assert (=> d!642081 m!2566147))

(declare-fun m!2566173 () Bool)

(assert (=> d!642081 m!2566173))

(assert (=> d!642081 m!2566145))

(declare-fun m!2566175 () Bool)

(assert (=> d!642081 m!2566175))

(assert (=> d!642081 m!2566147))

(declare-fun m!2566177 () Bool)

(assert (=> d!642081 m!2566177))

(assert (=> b!2108476 m!2566147))

(assert (=> b!2108476 m!2566173))

(assert (=> b!2108476 m!2566145))

(assert (=> b!2108476 m!2566175))

(assert (=> b!2108426 d!642081))

(declare-fun d!642083 () Bool)

(declare-fun list!9458 (Conc!7730) List!23408)

(assert (=> d!642083 (= (list!9457 input!1654) (list!9458 (c!338976 input!1654)))))

(declare-fun bs!441008 () Bool)

(assert (= bs!441008 d!642083))

(declare-fun m!2566179 () Bool)

(assert (=> bs!441008 m!2566179))

(assert (=> b!2108426 d!642083))

(declare-fun d!642085 () Bool)

(assert (=> d!642085 (= (list!9457 totalInput!548) (list!9458 (c!338976 totalInput!548)))))

(declare-fun bs!441009 () Bool)

(assert (= bs!441009 d!642085))

(declare-fun m!2566181 () Bool)

(assert (=> bs!441009 m!2566181))

(assert (=> b!2108426 d!642085))

(declare-fun d!642087 () Bool)

(assert (=> d!642087 (= (array_inv!2499 (_keys!2569 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) (bvsge (size!18202 (_keys!2569 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108431 d!642087))

(declare-fun d!642089 () Bool)

(assert (=> d!642089 (= (array_inv!2500 (_values!2552 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) (bvsge (size!18204 (_values!2552 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108431 d!642089))

(declare-fun b!2108495 () Bool)

(declare-fun res!916254 () Bool)

(declare-fun e!1340574 () Bool)

(assert (=> b!2108495 (=> res!916254 e!1340574)))

(assert (=> b!2108495 (= res!916254 (not ((_ is Concat!9869) (regex!4150 rule!236))))))

(declare-fun e!1340575 () Bool)

(assert (=> b!2108495 (= e!1340575 e!1340574)))

(declare-fun bm!128403 () Bool)

(declare-fun call!128410 () Bool)

(declare-fun c!338985 () Bool)

(assert (=> bm!128403 (= call!128410 (validRegex!2199 (ite c!338985 (regOne!11679 (regex!4150 rule!236)) (regOne!11678 (regex!4150 rule!236)))))))

(declare-fun b!2108496 () Bool)

(declare-fun e!1340572 () Bool)

(declare-fun call!128409 () Bool)

(assert (=> b!2108496 (= e!1340572 call!128409)))

(declare-fun b!2108497 () Bool)

(declare-fun e!1340573 () Bool)

(assert (=> b!2108497 (= e!1340573 call!128409)))

(declare-fun bm!128404 () Bool)

(declare-fun call!128408 () Bool)

(assert (=> bm!128404 (= call!128409 call!128408)))

(declare-fun b!2108498 () Bool)

(declare-fun res!916256 () Bool)

(assert (=> b!2108498 (=> (not res!916256) (not e!1340573))))

(assert (=> b!2108498 (= res!916256 call!128410)))

(assert (=> b!2108498 (= e!1340575 e!1340573)))

(declare-fun b!2108499 () Bool)

(declare-fun e!1340576 () Bool)

(declare-fun e!1340571 () Bool)

(assert (=> b!2108499 (= e!1340576 e!1340571)))

(declare-fun res!916253 () Bool)

(assert (=> b!2108499 (= res!916253 (not (nullable!1672 (reg!5912 (regex!4150 rule!236)))))))

(assert (=> b!2108499 (=> (not res!916253) (not e!1340571))))

(declare-fun b!2108500 () Bool)

(declare-fun e!1340570 () Bool)

(assert (=> b!2108500 (= e!1340570 e!1340576)))

(declare-fun c!338986 () Bool)

(assert (=> b!2108500 (= c!338986 ((_ is Star!5583) (regex!4150 rule!236)))))

(declare-fun d!642091 () Bool)

(declare-fun res!916252 () Bool)

(assert (=> d!642091 (=> res!916252 e!1340570)))

(assert (=> d!642091 (= res!916252 ((_ is ElementMatch!5583) (regex!4150 rule!236)))))

(assert (=> d!642091 (= (validRegex!2199 (regex!4150 rule!236)) e!1340570)))

(declare-fun bm!128405 () Bool)

(assert (=> bm!128405 (= call!128408 (validRegex!2199 (ite c!338986 (reg!5912 (regex!4150 rule!236)) (ite c!338985 (regTwo!11679 (regex!4150 rule!236)) (regTwo!11678 (regex!4150 rule!236))))))))

(declare-fun b!2108501 () Bool)

(assert (=> b!2108501 (= e!1340574 e!1340572)))

(declare-fun res!916255 () Bool)

(assert (=> b!2108501 (=> (not res!916255) (not e!1340572))))

(assert (=> b!2108501 (= res!916255 call!128410)))

(declare-fun b!2108502 () Bool)

(assert (=> b!2108502 (= e!1340576 e!1340575)))

(assert (=> b!2108502 (= c!338985 ((_ is Union!5583) (regex!4150 rule!236)))))

(declare-fun b!2108503 () Bool)

(assert (=> b!2108503 (= e!1340571 call!128408)))

(assert (= (and d!642091 (not res!916252)) b!2108500))

(assert (= (and b!2108500 c!338986) b!2108499))

(assert (= (and b!2108500 (not c!338986)) b!2108502))

(assert (= (and b!2108499 res!916253) b!2108503))

(assert (= (and b!2108502 c!338985) b!2108498))

(assert (= (and b!2108502 (not c!338985)) b!2108495))

(assert (= (and b!2108498 res!916256) b!2108497))

(assert (= (and b!2108495 (not res!916254)) b!2108501))

(assert (= (and b!2108501 res!916255) b!2108496))

(assert (= (or b!2108498 b!2108501) bm!128403))

(assert (= (or b!2108497 b!2108496) bm!128404))

(assert (= (or b!2108503 bm!128404) bm!128405))

(declare-fun m!2566183 () Bool)

(assert (=> bm!128403 m!2566183))

(declare-fun m!2566185 () Bool)

(assert (=> b!2108499 m!2566185))

(declare-fun m!2566187 () Bool)

(assert (=> bm!128405 m!2566187))

(assert (=> b!2108427 d!642091))

(declare-fun b!2108512 () Bool)

(declare-fun e!1340583 () Bool)

(declare-fun tp!640573 () Bool)

(assert (=> b!2108512 (= e!1340583 tp!640573)))

(declare-fun b!2108513 () Bool)

(declare-fun e!1340584 () Bool)

(declare-fun tp!640574 () Bool)

(assert (=> b!2108513 (= e!1340584 tp!640574)))

(declare-fun setIsEmpty!13964 () Bool)

(declare-fun setRes!13964 () Bool)

(assert (=> setIsEmpty!13964 setRes!13964))

(declare-fun b!2108514 () Bool)

(declare-fun tp!640576 () Bool)

(declare-fun tp_is_empty!9381 () Bool)

(declare-fun e!1340585 () Bool)

(declare-fun inv!30875 (Context!2306) Bool)

(assert (=> b!2108514 (= e!1340585 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 mapDefault!10983)))) e!1340584 tp_is_empty!9381 setRes!13964 tp!640576))))

(declare-fun condSetEmpty!13964 () Bool)

(assert (=> b!2108514 (= condSetEmpty!13964 (= (_2!13086 (h!28724 mapDefault!10983)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun tp!640575 () Bool)

(declare-fun setElem!13964 () Context!2306)

(declare-fun setNonEmpty!13964 () Bool)

(assert (=> setNonEmpty!13964 (= setRes!13964 (and tp!640575 (inv!30875 setElem!13964) e!1340583))))

(declare-fun setRest!13964 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13964 (= (_2!13086 (h!28724 mapDefault!10983)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13964 true) setRest!13964))))

(assert (=> b!2108441 (= tp!640551 e!1340585)))

(assert (= b!2108514 b!2108513))

(assert (= (and b!2108514 condSetEmpty!13964) setIsEmpty!13964))

(assert (= (and b!2108514 (not condSetEmpty!13964)) setNonEmpty!13964))

(assert (= setNonEmpty!13964 b!2108512))

(assert (= (and b!2108441 ((_ is Cons!23323) mapDefault!10983)) b!2108514))

(declare-fun m!2566189 () Bool)

(assert (=> b!2108514 m!2566189))

(declare-fun m!2566191 () Bool)

(assert (=> setNonEmpty!13964 m!2566191))

(declare-fun b!2108528 () Bool)

(declare-fun e!1340588 () Bool)

(declare-fun tp!640591 () Bool)

(declare-fun tp!640589 () Bool)

(assert (=> b!2108528 (= e!1340588 (and tp!640591 tp!640589))))

(assert (=> b!2108437 (= tp!640563 e!1340588)))

(declare-fun b!2108527 () Bool)

(declare-fun tp!640587 () Bool)

(assert (=> b!2108527 (= e!1340588 tp!640587)))

(declare-fun b!2108526 () Bool)

(declare-fun tp!640588 () Bool)

(declare-fun tp!640590 () Bool)

(assert (=> b!2108526 (= e!1340588 (and tp!640588 tp!640590))))

(declare-fun b!2108525 () Bool)

(assert (=> b!2108525 (= e!1340588 tp_is_empty!9381)))

(assert (= (and b!2108437 ((_ is ElementMatch!5583) (regex!4150 rule!236))) b!2108525))

(assert (= (and b!2108437 ((_ is Concat!9869) (regex!4150 rule!236))) b!2108526))

(assert (= (and b!2108437 ((_ is Star!5583) (regex!4150 rule!236))) b!2108527))

(assert (= (and b!2108437 ((_ is Union!5583) (regex!4150 rule!236))) b!2108528))

(declare-fun e!1340606 () Bool)

(declare-fun e!1340605 () Bool)

(declare-fun tp!640616 () Bool)

(declare-fun b!2108543 () Bool)

(declare-fun tp!640619 () Bool)

(declare-fun mapDefault!10986 () List!23410)

(declare-fun setRes!13969 () Bool)

(assert (=> b!2108543 (= e!1340605 (and tp!640616 (inv!30875 (_2!13087 (_1!13088 (h!28727 mapDefault!10986)))) e!1340606 tp_is_empty!9381 setRes!13969 tp!640619))))

(declare-fun condSetEmpty!13969 () Bool)

(assert (=> b!2108543 (= condSetEmpty!13969 (= (_2!13088 (h!28727 mapDefault!10986)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun mapNonEmpty!10986 () Bool)

(declare-fun mapRes!10986 () Bool)

(declare-fun tp!640617 () Bool)

(declare-fun e!1340604 () Bool)

(assert (=> mapNonEmpty!10986 (= mapRes!10986 (and tp!640617 e!1340604))))

(declare-fun mapValue!10986 () List!23410)

(declare-fun mapRest!10986 () (Array (_ BitVec 32) List!23410))

(declare-fun mapKey!10986 () (_ BitVec 32))

(assert (=> mapNonEmpty!10986 (= mapRest!10982 (store mapRest!10986 mapKey!10986 mapValue!10986))))

(declare-fun b!2108544 () Bool)

(declare-fun e!1340603 () Bool)

(declare-fun tp!640622 () Bool)

(assert (=> b!2108544 (= e!1340603 tp!640622)))

(declare-fun setIsEmpty!13969 () Bool)

(assert (=> setIsEmpty!13969 setRes!13969))

(declare-fun mapIsEmpty!10986 () Bool)

(assert (=> mapIsEmpty!10986 mapRes!10986))

(declare-fun b!2108545 () Bool)

(declare-fun e!1340602 () Bool)

(declare-fun tp!640614 () Bool)

(assert (=> b!2108545 (= e!1340602 tp!640614)))

(declare-fun setIsEmpty!13970 () Bool)

(declare-fun setRes!13970 () Bool)

(assert (=> setIsEmpty!13970 setRes!13970))

(declare-fun tp!640623 () Bool)

(declare-fun setElem!13970 () Context!2306)

(declare-fun setNonEmpty!13969 () Bool)

(assert (=> setNonEmpty!13969 (= setRes!13970 (and tp!640623 (inv!30875 setElem!13970) e!1340603))))

(declare-fun setRest!13969 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13969 (= (_2!13088 (h!28727 mapValue!10986)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13970 true) setRest!13969))))

(declare-fun condMapEmpty!10986 () Bool)

(assert (=> mapNonEmpty!10982 (= condMapEmpty!10986 (= mapRest!10982 ((as const (Array (_ BitVec 32) List!23410)) mapDefault!10986)))))

(assert (=> mapNonEmpty!10982 (= tp!640558 (and e!1340605 mapRes!10986))))

(declare-fun b!2108546 () Bool)

(declare-fun tp!640624 () Bool)

(assert (=> b!2108546 (= e!1340606 tp!640624)))

(declare-fun tp!640620 () Bool)

(declare-fun e!1340601 () Bool)

(declare-fun b!2108547 () Bool)

(declare-fun tp!640618 () Bool)

(assert (=> b!2108547 (= e!1340604 (and tp!640620 (inv!30875 (_2!13087 (_1!13088 (h!28727 mapValue!10986)))) e!1340601 tp_is_empty!9381 setRes!13970 tp!640618))))

(declare-fun condSetEmpty!13970 () Bool)

(assert (=> b!2108547 (= condSetEmpty!13970 (= (_2!13088 (h!28727 mapValue!10986)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun b!2108548 () Bool)

(declare-fun tp!640621 () Bool)

(assert (=> b!2108548 (= e!1340601 tp!640621)))

(declare-fun tp!640615 () Bool)

(declare-fun setNonEmpty!13970 () Bool)

(declare-fun setElem!13969 () Context!2306)

(assert (=> setNonEmpty!13970 (= setRes!13969 (and tp!640615 (inv!30875 setElem!13969) e!1340602))))

(declare-fun setRest!13970 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13970 (= (_2!13088 (h!28727 mapDefault!10986)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13969 true) setRest!13970))))

(assert (= (and mapNonEmpty!10982 condMapEmpty!10986) mapIsEmpty!10986))

(assert (= (and mapNonEmpty!10982 (not condMapEmpty!10986)) mapNonEmpty!10986))

(assert (= b!2108547 b!2108548))

(assert (= (and b!2108547 condSetEmpty!13970) setIsEmpty!13970))

(assert (= (and b!2108547 (not condSetEmpty!13970)) setNonEmpty!13969))

(assert (= setNonEmpty!13969 b!2108544))

(assert (= (and mapNonEmpty!10986 ((_ is Cons!23326) mapValue!10986)) b!2108547))

(assert (= b!2108543 b!2108546))

(assert (= (and b!2108543 condSetEmpty!13969) setIsEmpty!13969))

(assert (= (and b!2108543 (not condSetEmpty!13969)) setNonEmpty!13970))

(assert (= setNonEmpty!13970 b!2108545))

(assert (= (and mapNonEmpty!10982 ((_ is Cons!23326) mapDefault!10986)) b!2108543))

(declare-fun m!2566193 () Bool)

(assert (=> b!2108547 m!2566193))

(declare-fun m!2566195 () Bool)

(assert (=> b!2108543 m!2566195))

(declare-fun m!2566197 () Bool)

(assert (=> mapNonEmpty!10986 m!2566197))

(declare-fun m!2566199 () Bool)

(assert (=> setNonEmpty!13970 m!2566199))

(declare-fun m!2566201 () Bool)

(assert (=> setNonEmpty!13969 m!2566201))

(declare-fun tp!640635 () Bool)

(declare-fun e!1340615 () Bool)

(declare-fun tp!640639 () Bool)

(declare-fun b!2108557 () Bool)

(declare-fun e!1340613 () Bool)

(declare-fun setRes!13973 () Bool)

(assert (=> b!2108557 (= e!1340613 (and tp!640639 (inv!30875 (_2!13087 (_1!13088 (h!28727 mapValue!10983)))) e!1340615 tp_is_empty!9381 setRes!13973 tp!640635))))

(declare-fun condSetEmpty!13973 () Bool)

(assert (=> b!2108557 (= condSetEmpty!13973 (= (_2!13088 (h!28727 mapValue!10983)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun b!2108558 () Bool)

(declare-fun tp!640638 () Bool)

(assert (=> b!2108558 (= e!1340615 tp!640638)))

(assert (=> mapNonEmpty!10982 (= tp!640549 e!1340613)))

(declare-fun setIsEmpty!13973 () Bool)

(assert (=> setIsEmpty!13973 setRes!13973))

(declare-fun tp!640636 () Bool)

(declare-fun setNonEmpty!13973 () Bool)

(declare-fun e!1340614 () Bool)

(declare-fun setElem!13973 () Context!2306)

(assert (=> setNonEmpty!13973 (= setRes!13973 (and tp!640636 (inv!30875 setElem!13973) e!1340614))))

(declare-fun setRest!13973 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13973 (= (_2!13088 (h!28727 mapValue!10983)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13973 true) setRest!13973))))

(declare-fun b!2108559 () Bool)

(declare-fun tp!640637 () Bool)

(assert (=> b!2108559 (= e!1340614 tp!640637)))

(assert (= b!2108557 b!2108558))

(assert (= (and b!2108557 condSetEmpty!13973) setIsEmpty!13973))

(assert (= (and b!2108557 (not condSetEmpty!13973)) setNonEmpty!13973))

(assert (= setNonEmpty!13973 b!2108559))

(assert (= (and mapNonEmpty!10982 ((_ is Cons!23326) mapValue!10983)) b!2108557))

(declare-fun m!2566203 () Bool)

(assert (=> b!2108557 m!2566203))

(declare-fun m!2566205 () Bool)

(assert (=> setNonEmpty!13973 m!2566205))

(declare-fun b!2108560 () Bool)

(declare-fun e!1340618 () Bool)

(declare-fun tp!640644 () Bool)

(declare-fun setRes!13974 () Bool)

(declare-fun tp!640640 () Bool)

(declare-fun e!1340616 () Bool)

(assert (=> b!2108560 (= e!1340616 (and tp!640644 (inv!30875 (_2!13087 (_1!13088 (h!28727 mapDefault!10982)))) e!1340618 tp_is_empty!9381 setRes!13974 tp!640640))))

(declare-fun condSetEmpty!13974 () Bool)

(assert (=> b!2108560 (= condSetEmpty!13974 (= (_2!13088 (h!28727 mapDefault!10982)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun b!2108561 () Bool)

(declare-fun tp!640643 () Bool)

(assert (=> b!2108561 (= e!1340618 tp!640643)))

(assert (=> b!2108433 (= tp!640550 e!1340616)))

(declare-fun setIsEmpty!13974 () Bool)

(assert (=> setIsEmpty!13974 setRes!13974))

(declare-fun setNonEmpty!13974 () Bool)

(declare-fun tp!640641 () Bool)

(declare-fun e!1340617 () Bool)

(declare-fun setElem!13974 () Context!2306)

(assert (=> setNonEmpty!13974 (= setRes!13974 (and tp!640641 (inv!30875 setElem!13974) e!1340617))))

(declare-fun setRest!13974 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13974 (= (_2!13088 (h!28727 mapDefault!10982)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13974 true) setRest!13974))))

(declare-fun b!2108562 () Bool)

(declare-fun tp!640642 () Bool)

(assert (=> b!2108562 (= e!1340617 tp!640642)))

(assert (= b!2108560 b!2108561))

(assert (= (and b!2108560 condSetEmpty!13974) setIsEmpty!13974))

(assert (= (and b!2108560 (not condSetEmpty!13974)) setNonEmpty!13974))

(assert (= setNonEmpty!13974 b!2108562))

(assert (= (and b!2108433 ((_ is Cons!23326) mapDefault!10982)) b!2108560))

(declare-fun m!2566207 () Bool)

(assert (=> b!2108560 m!2566207))

(declare-fun m!2566209 () Bool)

(assert (=> setNonEmpty!13974 m!2566209))

(declare-fun b!2108563 () Bool)

(declare-fun e!1340619 () Bool)

(declare-fun tp!640645 () Bool)

(assert (=> b!2108563 (= e!1340619 tp!640645)))

(declare-fun b!2108564 () Bool)

(declare-fun e!1340620 () Bool)

(declare-fun tp!640646 () Bool)

(assert (=> b!2108564 (= e!1340620 tp!640646)))

(declare-fun setIsEmpty!13975 () Bool)

(declare-fun setRes!13975 () Bool)

(assert (=> setIsEmpty!13975 setRes!13975))

(declare-fun e!1340621 () Bool)

(declare-fun tp!640648 () Bool)

(declare-fun b!2108565 () Bool)

(assert (=> b!2108565 (= e!1340621 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 (zeroValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))))) e!1340620 tp_is_empty!9381 setRes!13975 tp!640648))))

(declare-fun condSetEmpty!13975 () Bool)

(assert (=> b!2108565 (= condSetEmpty!13975 (= (_2!13086 (h!28724 (zeroValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun setNonEmpty!13975 () Bool)

(declare-fun tp!640647 () Bool)

(declare-fun setElem!13975 () Context!2306)

(assert (=> setNonEmpty!13975 (= setRes!13975 (and tp!640647 (inv!30875 setElem!13975) e!1340619))))

(declare-fun setRest!13975 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13975 (= (_2!13086 (h!28724 (zeroValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13975 true) setRest!13975))))

(assert (=> b!2108443 (= tp!640548 e!1340621)))

(assert (= b!2108565 b!2108564))

(assert (= (and b!2108565 condSetEmpty!13975) setIsEmpty!13975))

(assert (= (and b!2108565 (not condSetEmpty!13975)) setNonEmpty!13975))

(assert (= setNonEmpty!13975 b!2108563))

(assert (= (and b!2108443 ((_ is Cons!23323) (zeroValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) b!2108565))

(declare-fun m!2566211 () Bool)

(assert (=> b!2108565 m!2566211))

(declare-fun m!2566213 () Bool)

(assert (=> setNonEmpty!13975 m!2566213))

(declare-fun b!2108566 () Bool)

(declare-fun e!1340622 () Bool)

(declare-fun tp!640649 () Bool)

(assert (=> b!2108566 (= e!1340622 tp!640649)))

(declare-fun b!2108567 () Bool)

(declare-fun e!1340623 () Bool)

(declare-fun tp!640650 () Bool)

(assert (=> b!2108567 (= e!1340623 tp!640650)))

(declare-fun setIsEmpty!13976 () Bool)

(declare-fun setRes!13976 () Bool)

(assert (=> setIsEmpty!13976 setRes!13976))

(declare-fun b!2108568 () Bool)

(declare-fun tp!640652 () Bool)

(declare-fun e!1340624 () Bool)

(assert (=> b!2108568 (= e!1340624 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 (minValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))))) e!1340623 tp_is_empty!9381 setRes!13976 tp!640652))))

(declare-fun condSetEmpty!13976 () Bool)

(assert (=> b!2108568 (= condSetEmpty!13976 (= (_2!13086 (h!28724 (minValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun setNonEmpty!13976 () Bool)

(declare-fun tp!640651 () Bool)

(declare-fun setElem!13976 () Context!2306)

(assert (=> setNonEmpty!13976 (= setRes!13976 (and tp!640651 (inv!30875 setElem!13976) e!1340622))))

(declare-fun setRest!13976 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13976 (= (_2!13086 (h!28724 (minValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13976 true) setRest!13976))))

(assert (=> b!2108443 (= tp!640564 e!1340624)))

(assert (= b!2108568 b!2108567))

(assert (= (and b!2108568 condSetEmpty!13976) setIsEmpty!13976))

(assert (= (and b!2108568 (not condSetEmpty!13976)) setNonEmpty!13976))

(assert (= setNonEmpty!13976 b!2108566))

(assert (= (and b!2108443 ((_ is Cons!23323) (minValue!2529 (v!27866 (underlying!4737 (v!27867 (underlying!4738 (cache!2566 cacheUp!740)))))))) b!2108568))

(declare-fun m!2566215 () Bool)

(assert (=> b!2108568 m!2566215))

(declare-fun m!2566217 () Bool)

(assert (=> setNonEmpty!13976 m!2566217))

(declare-fun b!2108584 () Bool)

(declare-fun e!1340642 () Bool)

(declare-fun tp!640678 () Bool)

(assert (=> b!2108584 (= e!1340642 tp!640678)))

(declare-fun setRes!13982 () Bool)

(declare-fun setElem!13981 () Context!2306)

(declare-fun e!1340640 () Bool)

(declare-fun setNonEmpty!13981 () Bool)

(declare-fun tp!640677 () Bool)

(assert (=> setNonEmpty!13981 (= setRes!13982 (and tp!640677 (inv!30875 setElem!13981) e!1340640))))

(declare-fun mapDefault!10989 () List!23407)

(declare-fun setRest!13981 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13981 (= (_2!13086 (h!28724 mapDefault!10989)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13981 true) setRest!13981))))

(declare-fun b!2108585 () Bool)

(declare-fun e!1340637 () Bool)

(declare-fun tp!640679 () Bool)

(assert (=> b!2108585 (= e!1340637 tp!640679)))

(declare-fun tp!640675 () Bool)

(declare-fun e!1340638 () Bool)

(declare-fun b!2108586 () Bool)

(assert (=> b!2108586 (= e!1340638 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 mapDefault!10989)))) e!1340642 tp_is_empty!9381 setRes!13982 tp!640675))))

(declare-fun condSetEmpty!13981 () Bool)

(assert (=> b!2108586 (= condSetEmpty!13981 (= (_2!13086 (h!28724 mapDefault!10989)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun setIsEmpty!13981 () Bool)

(declare-fun setRes!13981 () Bool)

(assert (=> setIsEmpty!13981 setRes!13981))

(declare-fun b!2108587 () Bool)

(declare-fun e!1340639 () Bool)

(declare-fun tp!640672 () Bool)

(assert (=> b!2108587 (= e!1340639 tp!640672)))

(declare-fun mapNonEmpty!10989 () Bool)

(declare-fun mapRes!10989 () Bool)

(declare-fun tp!640671 () Bool)

(declare-fun e!1340641 () Bool)

(assert (=> mapNonEmpty!10989 (= mapRes!10989 (and tp!640671 e!1340641))))

(declare-fun mapRest!10989 () (Array (_ BitVec 32) List!23407))

(declare-fun mapValue!10989 () List!23407)

(declare-fun mapKey!10989 () (_ BitVec 32))

(assert (=> mapNonEmpty!10989 (= mapRest!10983 (store mapRest!10989 mapKey!10989 mapValue!10989))))

(declare-fun setIsEmpty!13982 () Bool)

(assert (=> setIsEmpty!13982 setRes!13982))

(declare-fun mapIsEmpty!10989 () Bool)

(assert (=> mapIsEmpty!10989 mapRes!10989))

(declare-fun condMapEmpty!10989 () Bool)

(assert (=> mapNonEmpty!10983 (= condMapEmpty!10989 (= mapRest!10983 ((as const (Array (_ BitVec 32) List!23407)) mapDefault!10989)))))

(assert (=> mapNonEmpty!10983 (= tp!640561 (and e!1340638 mapRes!10989))))

(declare-fun b!2108583 () Bool)

(declare-fun tp!640673 () Bool)

(assert (=> b!2108583 (= e!1340640 tp!640673)))

(declare-fun tp!640676 () Bool)

(declare-fun b!2108588 () Bool)

(assert (=> b!2108588 (= e!1340641 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 mapValue!10989)))) e!1340637 tp_is_empty!9381 setRes!13981 tp!640676))))

(declare-fun condSetEmpty!13982 () Bool)

(assert (=> b!2108588 (= condSetEmpty!13982 (= (_2!13086 (h!28724 mapValue!10989)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun setElem!13982 () Context!2306)

(declare-fun setNonEmpty!13982 () Bool)

(declare-fun tp!640674 () Bool)

(assert (=> setNonEmpty!13982 (= setRes!13981 (and tp!640674 (inv!30875 setElem!13982) e!1340639))))

(declare-fun setRest!13982 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13982 (= (_2!13086 (h!28724 mapValue!10989)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13982 true) setRest!13982))))

(assert (= (and mapNonEmpty!10983 condMapEmpty!10989) mapIsEmpty!10989))

(assert (= (and mapNonEmpty!10983 (not condMapEmpty!10989)) mapNonEmpty!10989))

(assert (= b!2108588 b!2108585))

(assert (= (and b!2108588 condSetEmpty!13982) setIsEmpty!13981))

(assert (= (and b!2108588 (not condSetEmpty!13982)) setNonEmpty!13982))

(assert (= setNonEmpty!13982 b!2108587))

(assert (= (and mapNonEmpty!10989 ((_ is Cons!23323) mapValue!10989)) b!2108588))

(assert (= b!2108586 b!2108584))

(assert (= (and b!2108586 condSetEmpty!13981) setIsEmpty!13982))

(assert (= (and b!2108586 (not condSetEmpty!13981)) setNonEmpty!13981))

(assert (= setNonEmpty!13981 b!2108583))

(assert (= (and mapNonEmpty!10983 ((_ is Cons!23323) mapDefault!10989)) b!2108586))

(declare-fun m!2566219 () Bool)

(assert (=> setNonEmpty!13981 m!2566219))

(declare-fun m!2566221 () Bool)

(assert (=> b!2108588 m!2566221))

(declare-fun m!2566223 () Bool)

(assert (=> b!2108586 m!2566223))

(declare-fun m!2566225 () Bool)

(assert (=> setNonEmpty!13982 m!2566225))

(declare-fun m!2566227 () Bool)

(assert (=> mapNonEmpty!10989 m!2566227))

(declare-fun b!2108589 () Bool)

(declare-fun e!1340643 () Bool)

(declare-fun tp!640680 () Bool)

(assert (=> b!2108589 (= e!1340643 tp!640680)))

(declare-fun b!2108590 () Bool)

(declare-fun e!1340644 () Bool)

(declare-fun tp!640681 () Bool)

(assert (=> b!2108590 (= e!1340644 tp!640681)))

(declare-fun setIsEmpty!13983 () Bool)

(declare-fun setRes!13983 () Bool)

(assert (=> setIsEmpty!13983 setRes!13983))

(declare-fun tp!640683 () Bool)

(declare-fun b!2108591 () Bool)

(declare-fun e!1340645 () Bool)

(assert (=> b!2108591 (= e!1340645 (and (inv!30875 (_1!13085 (_1!13086 (h!28724 mapValue!10982)))) e!1340644 tp_is_empty!9381 setRes!13983 tp!640683))))

(declare-fun condSetEmpty!13983 () Bool)

(assert (=> b!2108591 (= condSetEmpty!13983 (= (_2!13086 (h!28724 mapValue!10982)) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun setElem!13983 () Context!2306)

(declare-fun tp!640682 () Bool)

(declare-fun setNonEmpty!13983 () Bool)

(assert (=> setNonEmpty!13983 (= setRes!13983 (and tp!640682 (inv!30875 setElem!13983) e!1340643))))

(declare-fun setRest!13983 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13983 (= (_2!13086 (h!28724 mapValue!10982)) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13983 true) setRest!13983))))

(assert (=> mapNonEmpty!10983 (= tp!640556 e!1340645)))

(assert (= b!2108591 b!2108590))

(assert (= (and b!2108591 condSetEmpty!13983) setIsEmpty!13983))

(assert (= (and b!2108591 (not condSetEmpty!13983)) setNonEmpty!13983))

(assert (= setNonEmpty!13983 b!2108589))

(assert (= (and mapNonEmpty!10983 ((_ is Cons!23323) mapValue!10982)) b!2108591))

(declare-fun m!2566229 () Bool)

(assert (=> b!2108591 m!2566229))

(declare-fun m!2566231 () Bool)

(assert (=> setNonEmpty!13983 m!2566231))

(declare-fun e!1340651 () Bool)

(declare-fun tp!640691 () Bool)

(declare-fun tp!640692 () Bool)

(declare-fun b!2108600 () Bool)

(assert (=> b!2108600 (= e!1340651 (and (inv!30872 (left!18172 (c!338976 input!1654))) tp!640692 (inv!30872 (right!18502 (c!338976 input!1654))) tp!640691))))

(declare-fun b!2108602 () Bool)

(declare-fun e!1340650 () Bool)

(declare-fun tp!640690 () Bool)

(assert (=> b!2108602 (= e!1340650 tp!640690)))

(declare-fun b!2108601 () Bool)

(declare-fun inv!30876 (IArray!15465) Bool)

(assert (=> b!2108601 (= e!1340651 (and (inv!30876 (xs!10672 (c!338976 input!1654))) e!1340650))))

(assert (=> b!2108439 (= tp!640552 (and (inv!30872 (c!338976 input!1654)) e!1340651))))

(assert (= (and b!2108439 ((_ is Node!7730) (c!338976 input!1654))) b!2108600))

(assert (= b!2108601 b!2108602))

(assert (= (and b!2108439 ((_ is Leaf!11289) (c!338976 input!1654))) b!2108601))

(declare-fun m!2566233 () Bool)

(assert (=> b!2108600 m!2566233))

(declare-fun m!2566235 () Bool)

(assert (=> b!2108600 m!2566235))

(declare-fun m!2566237 () Bool)

(assert (=> b!2108601 m!2566237))

(assert (=> b!2108439 m!2566143))

(declare-fun tp!640694 () Bool)

(declare-fun b!2108603 () Bool)

(declare-fun tp!640695 () Bool)

(declare-fun e!1340653 () Bool)

(assert (=> b!2108603 (= e!1340653 (and (inv!30872 (left!18172 (c!338976 totalInput!548))) tp!640695 (inv!30872 (right!18502 (c!338976 totalInput!548))) tp!640694))))

(declare-fun b!2108605 () Bool)

(declare-fun e!1340652 () Bool)

(declare-fun tp!640693 () Bool)

(assert (=> b!2108605 (= e!1340652 tp!640693)))

(declare-fun b!2108604 () Bool)

(assert (=> b!2108604 (= e!1340653 (and (inv!30876 (xs!10672 (c!338976 totalInput!548))) e!1340652))))

(assert (=> b!2108440 (= tp!640560 (and (inv!30872 (c!338976 totalInput!548)) e!1340653))))

(assert (= (and b!2108440 ((_ is Node!7730) (c!338976 totalInput!548))) b!2108603))

(assert (= b!2108604 b!2108605))

(assert (= (and b!2108440 ((_ is Leaf!11289) (c!338976 totalInput!548))) b!2108604))

(declare-fun m!2566239 () Bool)

(assert (=> b!2108603 m!2566239))

(declare-fun m!2566241 () Bool)

(assert (=> b!2108603 m!2566241))

(declare-fun m!2566243 () Bool)

(assert (=> b!2108604 m!2566243))

(assert (=> b!2108440 m!2566117))

(declare-fun setRes!13984 () Bool)

(declare-fun e!1340654 () Bool)

(declare-fun e!1340656 () Bool)

(declare-fun b!2108606 () Bool)

(declare-fun tp!640696 () Bool)

(declare-fun tp!640700 () Bool)

(assert (=> b!2108606 (= e!1340654 (and tp!640700 (inv!30875 (_2!13087 (_1!13088 (h!28727 (zeroValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))))) e!1340656 tp_is_empty!9381 setRes!13984 tp!640696))))

(declare-fun condSetEmpty!13984 () Bool)

(assert (=> b!2108606 (= condSetEmpty!13984 (= (_2!13088 (h!28727 (zeroValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun b!2108607 () Bool)

(declare-fun tp!640699 () Bool)

(assert (=> b!2108607 (= e!1340656 tp!640699)))

(assert (=> b!2108431 (= tp!640546 e!1340654)))

(declare-fun setIsEmpty!13984 () Bool)

(assert (=> setIsEmpty!13984 setRes!13984))

(declare-fun tp!640697 () Bool)

(declare-fun setElem!13984 () Context!2306)

(declare-fun e!1340655 () Bool)

(declare-fun setNonEmpty!13984 () Bool)

(assert (=> setNonEmpty!13984 (= setRes!13984 (and tp!640697 (inv!30875 setElem!13984) e!1340655))))

(declare-fun setRest!13984 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13984 (= (_2!13088 (h!28727 (zeroValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13984 true) setRest!13984))))

(declare-fun b!2108608 () Bool)

(declare-fun tp!640698 () Bool)

(assert (=> b!2108608 (= e!1340655 tp!640698)))

(assert (= b!2108606 b!2108607))

(assert (= (and b!2108606 condSetEmpty!13984) setIsEmpty!13984))

(assert (= (and b!2108606 (not condSetEmpty!13984)) setNonEmpty!13984))

(assert (= setNonEmpty!13984 b!2108608))

(assert (= (and b!2108431 ((_ is Cons!23326) (zeroValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) b!2108606))

(declare-fun m!2566245 () Bool)

(assert (=> b!2108606 m!2566245))

(declare-fun m!2566247 () Bool)

(assert (=> setNonEmpty!13984 m!2566247))

(declare-fun e!1340659 () Bool)

(declare-fun e!1340657 () Bool)

(declare-fun tp!640705 () Bool)

(declare-fun b!2108609 () Bool)

(declare-fun setRes!13985 () Bool)

(declare-fun tp!640701 () Bool)

(assert (=> b!2108609 (= e!1340657 (and tp!640705 (inv!30875 (_2!13087 (_1!13088 (h!28727 (minValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))))) e!1340659 tp_is_empty!9381 setRes!13985 tp!640701))))

(declare-fun condSetEmpty!13985 () Bool)

(assert (=> b!2108609 (= condSetEmpty!13985 (= (_2!13088 (h!28727 (minValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) ((as const (Array Context!2306 Bool)) false)))))

(declare-fun b!2108610 () Bool)

(declare-fun tp!640704 () Bool)

(assert (=> b!2108610 (= e!1340659 tp!640704)))

(assert (=> b!2108431 (= tp!640553 e!1340657)))

(declare-fun setIsEmpty!13985 () Bool)

(assert (=> setIsEmpty!13985 setRes!13985))

(declare-fun e!1340658 () Bool)

(declare-fun tp!640702 () Bool)

(declare-fun setElem!13985 () Context!2306)

(declare-fun setNonEmpty!13985 () Bool)

(assert (=> setNonEmpty!13985 (= setRes!13985 (and tp!640702 (inv!30875 setElem!13985) e!1340658))))

(declare-fun setRest!13985 () (InoxSet Context!2306))

(assert (=> setNonEmpty!13985 (= (_2!13088 (h!28727 (minValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2306 Bool)) false) setElem!13985 true) setRest!13985))))

(declare-fun b!2108611 () Bool)

(declare-fun tp!640703 () Bool)

(assert (=> b!2108611 (= e!1340658 tp!640703)))

(assert (= b!2108609 b!2108610))

(assert (= (and b!2108609 condSetEmpty!13985) setIsEmpty!13985))

(assert (= (and b!2108609 (not condSetEmpty!13985)) setNonEmpty!13985))

(assert (= setNonEmpty!13985 b!2108611))

(assert (= (and b!2108431 ((_ is Cons!23326) (minValue!2530 (v!27868 (underlying!4739 (v!27869 (underlying!4740 (cache!2567 cacheDown!753)))))))) b!2108609))

(declare-fun m!2566249 () Bool)

(assert (=> b!2108609 m!2566249))

(declare-fun m!2566251 () Bool)

(assert (=> setNonEmpty!13985 m!2566251))

(check-sat (not setNonEmpty!13964) (not d!642065) b_and!170301 (not setNonEmpty!13982) (not d!642081) (not b!2108455) (not b!2108439) (not b!2108548) (not setNonEmpty!13974) (not setNonEmpty!13970) (not b!2108607) b_and!170305 b_and!170307 (not b!2108589) (not b!2108567) (not setNonEmpty!13981) (not setNonEmpty!13985) b_and!170303 (not b!2108566) (not b!2108611) (not b!2108471) (not b_next!61443) (not b!2108462) (not b!2108440) (not d!642085) (not b!2108528) (not d!642077) (not setNonEmpty!13975) (not b!2108560) (not b!2108526) (not b!2108499) (not bm!128405) (not b!2108544) (not bm!128403) (not b!2108558) (not d!642083) b_and!170309 (not b_next!61437) (not b!2108600) (not b!2108590) (not mapNonEmpty!10986) (not b!2108602) (not b!2108452) (not b!2108563) (not b!2108559) b_and!170299 (not b!2108583) (not b_next!61441) (not b!2108591) (not b!2108606) (not setNonEmpty!13983) (not b!2108546) (not b!2108557) (not d!642075) (not d!642059) (not setNonEmpty!13984) (not b!2108564) (not setNonEmpty!13976) (not d!642067) (not setNonEmpty!13969) (not b!2108449) (not b_next!61447) (not b!2108588) (not b!2108610) (not b!2108584) (not b!2108585) (not b!2108608) (not b!2108513) (not b_next!61439) (not b!2108586) (not b!2108527) (not b!2108587) (not b!2108568) (not setNonEmpty!13973) (not b!2108604) (not b!2108514) tp_is_empty!9381 (not b!2108605) (not b!2108469) (not b!2108476) (not b!2108601) (not b!2108547) (not b!2108464) (not b!2108512) (not b!2108561) (not mapNonEmpty!10989) (not b!2108565) (not b!2108473) (not b!2108562) (not b_next!61445) (not b!2108545) (not d!642057) (not b!2108609) (not b!2108603) (not b!2108543))
(check-sat (not b_next!61443) b_and!170299 (not b_next!61441) b_and!170301 (not b_next!61447) (not b_next!61439) (not b_next!61445) b_and!170305 b_and!170307 b_and!170303 b_and!170309 (not b_next!61437))
