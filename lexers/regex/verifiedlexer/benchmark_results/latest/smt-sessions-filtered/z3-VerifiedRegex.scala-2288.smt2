; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111850 () Bool)

(assert start!111850)

(declare-fun b!1282479 () Bool)

(declare-fun b_free!29939 () Bool)

(declare-fun b_next!30643 () Bool)

(assert (=> b!1282479 (= b_free!29939 (not b_next!30643))))

(declare-fun tp!372344 () Bool)

(declare-fun b_and!85083 () Bool)

(assert (=> b!1282479 (= tp!372344 b_and!85083)))

(declare-fun b!1282484 () Bool)

(declare-fun b_free!29941 () Bool)

(declare-fun b_next!30645 () Bool)

(assert (=> b!1282484 (= b_free!29941 (not b_next!30645))))

(declare-fun tp!372341 () Bool)

(declare-fun b_and!85085 () Bool)

(assert (=> b!1282484 (= tp!372341 b_and!85085)))

(declare-fun b_free!29943 () Bool)

(declare-fun b_next!30647 () Bool)

(assert (=> b!1282484 (= b_free!29943 (not b_next!30647))))

(declare-fun tp!372339 () Bool)

(declare-fun b_and!85087 () Bool)

(assert (=> b!1282484 (= tp!372339 b_and!85087)))

(declare-fun b!1282474 () Bool)

(declare-fun b_free!29945 () Bool)

(declare-fun b_next!30649 () Bool)

(assert (=> b!1282474 (= b_free!29945 (not b_next!30649))))

(declare-fun tp!372352 () Bool)

(declare-fun b_and!85089 () Bool)

(assert (=> b!1282474 (= tp!372352 b_and!85089)))

(declare-fun b!1282475 () Bool)

(declare-fun b_free!29947 () Bool)

(declare-fun b_next!30651 () Bool)

(assert (=> b!1282475 (= b_free!29947 (not b_next!30651))))

(declare-fun tp!372338 () Bool)

(declare-fun b_and!85091 () Bool)

(assert (=> b!1282475 (= tp!372338 b_and!85091)))

(declare-fun b!1282466 () Bool)

(declare-fun b_free!29949 () Bool)

(declare-fun b_next!30653 () Bool)

(assert (=> b!1282466 (= b_free!29949 (not b_next!30653))))

(declare-fun tp!372349 () Bool)

(declare-fun b_and!85093 () Bool)

(assert (=> b!1282466 (= tp!372349 b_and!85093)))

(declare-fun b!1282464 () Bool)

(declare-fun e!822235 () Bool)

(declare-fun e!822231 () Bool)

(assert (=> b!1282464 (= e!822235 e!822231)))

(declare-fun mapNonEmpty!6435 () Bool)

(declare-fun mapRes!6436 () Bool)

(declare-fun tp!372347 () Bool)

(declare-fun tp!372346 () Bool)

(assert (=> mapNonEmpty!6435 (= mapRes!6436 (and tp!372347 tp!372346))))

(declare-fun mapKey!6435 () (_ BitVec 32))

(declare-datatypes ((C!7288 0))(
  ( (C!7289 (val!4204 Int)) )
))
(declare-datatypes ((Regex!3499 0))(
  ( (ElementMatch!3499 (c!211405 C!7288)) (Concat!5774 (regOne!7510 Regex!3499) (regTwo!7510 Regex!3499)) (EmptyExpr!3499) (Star!3499 (reg!3828 Regex!3499)) (EmptyLang!3499) (Union!3499 (regOne!7511 Regex!3499) (regTwo!7511 Regex!3499)) )
))
(declare-datatypes ((List!12784 0))(
  ( (Nil!12718) (Cons!12718 (h!18119 Regex!3499) (t!116608 List!12784)) )
))
(declare-datatypes ((Context!1110 0))(
  ( (Context!1111 (exprs!1055 List!12784)) )
))
(declare-datatypes ((tuple3!1176 0))(
  ( (tuple3!1177 (_1!7176 Regex!3499) (_2!7176 Context!1110) (_3!879 C!7288)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12594 0))(
  ( (tuple2!12595 (_1!7177 tuple3!1176) (_2!7177 (InoxSet Context!1110))) )
))
(declare-datatypes ((List!12785 0))(
  ( (Nil!12719) (Cons!12719 (h!18120 tuple2!12594) (t!116609 List!12785)) )
))
(declare-fun mapRest!6435 () (Array (_ BitVec 32) List!12785))

(declare-datatypes ((Hashable!1289 0))(
  ( (HashableExt!1288 (__x!8361 Int)) )
))
(declare-datatypes ((array!4774 0))(
  ( (array!4775 (arr!2131 (Array (_ BitVec 32) (_ BitVec 64))) (size!10364 (_ BitVec 32))) )
))
(declare-datatypes ((array!4776 0))(
  ( (array!4777 (arr!2132 (Array (_ BitVec 32) List!12785)) (size!10365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2690 0))(
  ( (LongMapFixedSize!2691 (defaultEntry!1705 Int) (mask!4177 (_ BitVec 32)) (extraKeys!1592 (_ BitVec 32)) (zeroValue!1602 List!12785) (minValue!1602 List!12785) (_size!2771 (_ BitVec 32)) (_keys!1639 array!4774) (_values!1624 array!4776) (_vacant!1406 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5265 0))(
  ( (Cell!5266 (v!20975 LongMapFixedSize!2690)) )
))
(declare-datatypes ((MutLongMap!1345 0))(
  ( (LongMap!1345 (underlying!2897 Cell!5265)) (MutLongMapExt!1344 (__x!8362 Int)) )
))
(declare-datatypes ((Cell!5267 0))(
  ( (Cell!5268 (v!20976 MutLongMap!1345)) )
))
(declare-datatypes ((MutableMap!1289 0))(
  ( (MutableMapExt!1288 (__x!8363 Int)) (HashMap!1289 (underlying!2898 Cell!5267) (hashF!3208 Hashable!1289) (_size!2772 (_ BitVec 32)) (defaultValue!1449 Int)) )
))
(declare-datatypes ((CacheDown!762 0))(
  ( (CacheDown!763 (cache!1670 MutableMap!1289)) )
))
(declare-fun cacheDown!411 () CacheDown!762)

(declare-fun mapValue!6436 () List!12785)

(assert (=> mapNonEmpty!6435 (= (arr!2132 (_values!1624 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) (store mapRest!6435 mapKey!6435 mapValue!6436))))

(declare-fun e!822220 () Bool)

(declare-fun e!822224 () Bool)

(declare-fun tp!372356 () Bool)

(declare-fun tp!372351 () Bool)

(declare-fun array_inv!1549 (array!4774) Bool)

(declare-fun array_inv!1550 (array!4776) Bool)

(assert (=> b!1282466 (= e!822224 (and tp!372349 tp!372356 tp!372351 (array_inv!1549 (_keys!1639 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) (array_inv!1550 (_values!1624 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) e!822220))))

(declare-datatypes ((List!12786 0))(
  ( (Nil!12720) (Cons!12720 (h!18121 (_ BitVec 16)) (t!116610 List!12786)) )
))
(declare-datatypes ((TokenValue!2275 0))(
  ( (FloatLiteralValue!4550 (text!16370 List!12786)) (TokenValueExt!2274 (__x!8364 Int)) (Broken!11375 (value!71879 List!12786)) (Object!2340) (End!2275) (Def!2275) (Underscore!2275) (Match!2275) (Else!2275) (Error!2275) (Case!2275) (If!2275) (Extends!2275) (Abstract!2275) (Class!2275) (Val!2275) (DelimiterValue!4550 (del!2335 List!12786)) (KeywordValue!2281 (value!71880 List!12786)) (CommentValue!4550 (value!71881 List!12786)) (WhitespaceValue!4550 (value!71882 List!12786)) (IndentationValue!2275 (value!71883 List!12786)) (String!15610) (Int32!2275) (Broken!11376 (value!71884 List!12786)) (Boolean!2276) (Unit!18967) (OperatorValue!2278 (op!2335 List!12786)) (IdentifierValue!4550 (value!71885 List!12786)) (IdentifierValue!4551 (value!71886 List!12786)) (WhitespaceValue!4551 (value!71887 List!12786)) (True!4550) (False!4550) (Broken!11377 (value!71888 List!12786)) (Broken!11378 (value!71889 List!12786)) (True!4551) (RightBrace!2275) (RightBracket!2275) (Colon!2275) (Null!2275) (Comma!2275) (LeftBracket!2275) (False!4551) (LeftBrace!2275) (ImaginaryLiteralValue!2275 (text!16371 List!12786)) (StringLiteralValue!6825 (value!71890 List!12786)) (EOFValue!2275 (value!71891 List!12786)) (IdentValue!2275 (value!71892 List!12786)) (DelimiterValue!4551 (value!71893 List!12786)) (DedentValue!2275 (value!71894 List!12786)) (NewLineValue!2275 (value!71895 List!12786)) (IntegerValue!6825 (value!71896 (_ BitVec 32)) (text!16372 List!12786)) (IntegerValue!6826 (value!71897 Int) (text!16373 List!12786)) (Times!2275) (Or!2275) (Equal!2275) (Minus!2275) (Broken!11379 (value!71898 List!12786)) (And!2275) (Div!2275) (LessEqual!2275) (Mod!2275) (Concat!5775) (Not!2275) (Plus!2275) (SpaceValue!2275 (value!71899 List!12786)) (IntegerValue!6827 (value!71900 Int) (text!16374 List!12786)) (StringLiteralValue!6826 (text!16375 List!12786)) (FloatLiteralValue!4551 (text!16376 List!12786)) (BytesLiteralValue!2275 (value!71901 List!12786)) (CommentValue!4551 (value!71902 List!12786)) (StringLiteralValue!6827 (value!71903 List!12786)) (ErrorTokenValue!2275 (msg!2336 List!12786)) )
))
(declare-datatypes ((List!12787 0))(
  ( (Nil!12721) (Cons!12721 (h!18122 C!7288) (t!116611 List!12787)) )
))
(declare-datatypes ((IArray!8365 0))(
  ( (IArray!8366 (innerList!4240 List!12787)) )
))
(declare-datatypes ((Conc!4180 0))(
  ( (Node!4180 (left!10976 Conc!4180) (right!11306 Conc!4180) (csize!8590 Int) (cheight!4391 Int)) (Leaf!6469 (xs!6891 IArray!8365) (csize!8591 Int)) (Empty!4180) )
))
(declare-datatypes ((BalanceConc!8300 0))(
  ( (BalanceConc!8301 (c!211406 Conc!4180)) )
))
(declare-datatypes ((String!15611 0))(
  ( (String!15612 (value!71904 String)) )
))
(declare-datatypes ((TokenValueInjection!4210 0))(
  ( (TokenValueInjection!4211 (toValue!3352 Int) (toChars!3211 Int)) )
))
(declare-datatypes ((Rule!4170 0))(
  ( (Rule!4171 (regex!2185 Regex!3499) (tag!2447 String!15611) (isSeparator!2185 Bool) (transformation!2185 TokenValueInjection!4210)) )
))
(declare-datatypes ((List!12788 0))(
  ( (Nil!12722) (Cons!12722 (h!18123 Rule!4170) (t!116612 List!12788)) )
))
(declare-fun rs!174 () List!12788)

(declare-fun tp!372354 () Bool)

(declare-fun e!822226 () Bool)

(declare-fun b!1282467 () Bool)

(declare-fun e!822233 () Bool)

(declare-fun inv!17096 (String!15611) Bool)

(declare-fun inv!17100 (TokenValueInjection!4210) Bool)

(assert (=> b!1282467 (= e!822233 (and tp!372354 (inv!17096 (tag!2447 (h!18123 rs!174))) (inv!17100 (transformation!2185 (h!18123 rs!174))) e!822226))))

(declare-fun b!1282468 () Bool)

(declare-fun e!822237 () Bool)

(assert (=> b!1282468 (= e!822237 e!822224)))

(declare-fun b!1282469 () Bool)

(declare-fun e!822227 () Bool)

(declare-datatypes ((Token!4032 0))(
  ( (Token!4033 (value!71905 TokenValue!2275) (rule!3924 Rule!4170) (size!10366 Int) (originalCharacters!3047 List!12787)) )
))
(declare-datatypes ((List!12789 0))(
  ( (Nil!12723) (Cons!12723 (h!18124 Token!4032) (t!116613 List!12789)) )
))
(declare-datatypes ((IArray!8367 0))(
  ( (IArray!8368 (innerList!4241 List!12789)) )
))
(declare-datatypes ((Conc!4181 0))(
  ( (Node!4181 (left!10977 Conc!4181) (right!11307 Conc!4181) (csize!8592 Int) (cheight!4392 Int)) (Leaf!6470 (xs!6892 IArray!8367) (csize!8593 Int)) (Empty!4181) )
))
(declare-datatypes ((BalanceConc!8302 0))(
  ( (BalanceConc!8303 (c!211407 Conc!4181)) )
))
(declare-fun ts!110 () BalanceConc!8302)

(declare-fun size!10367 (BalanceConc!8302) Int)

(declare-fun tail!1814 (BalanceConc!8302) BalanceConc!8302)

(assert (=> b!1282469 (= e!822227 (>= (size!10367 (tail!1814 ts!110)) (size!10367 ts!110)))))

(declare-datatypes ((tuple2!12596 0))(
  ( (tuple2!12597 (_1!7178 Context!1110) (_2!7178 C!7288)) )
))
(declare-datatypes ((tuple2!12598 0))(
  ( (tuple2!12599 (_1!7179 tuple2!12596) (_2!7179 (InoxSet Context!1110))) )
))
(declare-datatypes ((List!12790 0))(
  ( (Nil!12724) (Cons!12724 (h!18125 tuple2!12598) (t!116614 List!12790)) )
))
(declare-datatypes ((array!4778 0))(
  ( (array!4779 (arr!2133 (Array (_ BitVec 32) List!12790)) (size!10368 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2692 0))(
  ( (LongMapFixedSize!2693 (defaultEntry!1706 Int) (mask!4178 (_ BitVec 32)) (extraKeys!1593 (_ BitVec 32)) (zeroValue!1603 List!12790) (minValue!1603 List!12790) (_size!2773 (_ BitVec 32)) (_keys!1640 array!4774) (_values!1625 array!4778) (_vacant!1407 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5269 0))(
  ( (Cell!5270 (v!20977 LongMapFixedSize!2692)) )
))
(declare-datatypes ((MutLongMap!1346 0))(
  ( (LongMap!1346 (underlying!2899 Cell!5269)) (MutLongMapExt!1345 (__x!8365 Int)) )
))
(declare-datatypes ((Cell!5271 0))(
  ( (Cell!5272 (v!20978 MutLongMap!1346)) )
))
(declare-datatypes ((Hashable!1290 0))(
  ( (HashableExt!1289 (__x!8366 Int)) )
))
(declare-datatypes ((MutableMap!1290 0))(
  ( (MutableMapExt!1289 (__x!8367 Int)) (HashMap!1290 (underlying!2900 Cell!5271) (hashF!3209 Hashable!1290) (_size!2774 (_ BitVec 32)) (defaultValue!1450 Int)) )
))
(declare-datatypes ((CacheUp!758 0))(
  ( (CacheUp!759 (cache!1671 MutableMap!1290)) )
))
(declare-fun cacheUp!398 () CacheUp!758)

(declare-datatypes ((tuple3!1178 0))(
  ( (tuple3!1179 (_1!7180 Bool) (_2!7180 CacheUp!758) (_3!880 CacheDown!762)) )
))
(declare-fun lt!423197 () tuple3!1178)

(declare-datatypes ((LexerInterface!1880 0))(
  ( (LexerInterfaceExt!1877 (__x!8368 Int)) (Lexer!1878) )
))
(declare-fun thiss!10944 () LexerInterface!1880)

(declare-fun rulesProduceIndividualTokenMem!24 (LexerInterface!1880 List!12788 Token!4032 CacheUp!758 CacheDown!762) tuple3!1178)

(declare-fun head!2186 (BalanceConc!8302) Token!4032)

(assert (=> b!1282469 (= lt!423197 (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411))))

(declare-fun b!1282470 () Bool)

(declare-fun e!822240 () Bool)

(declare-fun e!822230 () Bool)

(declare-fun lt!423198 () MutLongMap!1345)

(get-info :version)

(assert (=> b!1282470 (= e!822240 (and e!822230 ((_ is LongMap!1345) lt!423198)))))

(assert (=> b!1282470 (= lt!423198 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))

(declare-fun b!1282471 () Bool)

(declare-fun e!822238 () Bool)

(declare-fun e!822221 () Bool)

(assert (=> b!1282471 (= e!822238 e!822221)))

(declare-fun b!1282472 () Bool)

(declare-fun e!822222 () Bool)

(declare-fun tp!372343 () Bool)

(declare-fun inv!17101 (Conc!4181) Bool)

(assert (=> b!1282472 (= e!822222 (and (inv!17101 (c!211407 ts!110)) tp!372343))))

(declare-fun mapNonEmpty!6436 () Bool)

(declare-fun mapRes!6435 () Bool)

(declare-fun tp!372353 () Bool)

(declare-fun tp!372355 () Bool)

(assert (=> mapNonEmpty!6436 (= mapRes!6435 (and tp!372353 tp!372355))))

(declare-fun mapValue!6435 () List!12790)

(declare-fun mapKey!6436 () (_ BitVec 32))

(declare-fun mapRest!6436 () (Array (_ BitVec 32) List!12790))

(assert (=> mapNonEmpty!6436 (= (arr!2133 (_values!1625 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) (store mapRest!6436 mapKey!6436 mapValue!6435))))

(declare-fun res!575428 () Bool)

(assert (=> start!111850 (=> (not res!575428) (not e!822227))))

(assert (=> start!111850 (= res!575428 ((_ is Lexer!1878) thiss!10944))))

(assert (=> start!111850 e!822227))

(declare-fun e!822241 () Bool)

(assert (=> start!111850 e!822241))

(declare-fun e!822225 () Bool)

(declare-fun inv!17102 (CacheUp!758) Bool)

(assert (=> start!111850 (and (inv!17102 cacheUp!398) e!822225)))

(declare-fun inv!17103 (CacheDown!762) Bool)

(assert (=> start!111850 (and (inv!17103 cacheDown!411) e!822235)))

(declare-fun inv!17104 (BalanceConc!8302) Bool)

(assert (=> start!111850 (and (inv!17104 ts!110) e!822222)))

(assert (=> start!111850 true))

(declare-fun b!1282465 () Bool)

(declare-fun res!575426 () Bool)

(assert (=> b!1282465 (=> (not res!575426) (not e!822227))))

(declare-fun isEmpty!7544 (BalanceConc!8302) Bool)

(assert (=> b!1282465 (= res!575426 (not (isEmpty!7544 ts!110)))))

(declare-fun b!1282473 () Bool)

(declare-fun e!822236 () Bool)

(assert (=> b!1282473 (= e!822225 e!822236)))

(assert (=> b!1282474 (= e!822231 (and e!822240 tp!372352))))

(declare-fun mapIsEmpty!6435 () Bool)

(assert (=> mapIsEmpty!6435 mapRes!6435))

(declare-fun mapIsEmpty!6436 () Bool)

(assert (=> mapIsEmpty!6436 mapRes!6436))

(declare-fun e!822234 () Bool)

(assert (=> b!1282475 (= e!822236 (and e!822234 tp!372338))))

(declare-fun b!1282476 () Bool)

(declare-fun res!575425 () Bool)

(assert (=> b!1282476 (=> (not res!575425) (not e!822227))))

(declare-fun rulesInvariant!1751 (LexerInterface!1880 List!12788) Bool)

(assert (=> b!1282476 (= res!575425 (rulesInvariant!1751 thiss!10944 rs!174))))

(declare-fun b!1282477 () Bool)

(declare-fun tp!372345 () Bool)

(assert (=> b!1282477 (= e!822241 (and e!822233 tp!372345))))

(declare-fun b!1282478 () Bool)

(declare-fun res!575427 () Bool)

(assert (=> b!1282478 (=> (not res!575427) (not e!822227))))

(declare-fun isEmpty!7545 (List!12788) Bool)

(assert (=> b!1282478 (= res!575427 (not (isEmpty!7545 rs!174)))))

(declare-fun e!822239 () Bool)

(declare-fun tp!372342 () Bool)

(declare-fun tp!372348 () Bool)

(declare-fun array_inv!1551 (array!4778) Bool)

(assert (=> b!1282479 (= e!822221 (and tp!372344 tp!372342 tp!372348 (array_inv!1549 (_keys!1640 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) (array_inv!1551 (_values!1625 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) e!822239))))

(declare-fun b!1282480 () Bool)

(declare-fun e!822232 () Bool)

(declare-fun lt!423199 () MutLongMap!1346)

(assert (=> b!1282480 (= e!822234 (and e!822232 ((_ is LongMap!1346) lt!423199)))))

(assert (=> b!1282480 (= lt!423199 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))

(declare-fun b!1282481 () Bool)

(assert (=> b!1282481 (= e!822230 e!822237)))

(declare-fun b!1282482 () Bool)

(declare-fun tp!372340 () Bool)

(assert (=> b!1282482 (= e!822239 (and tp!372340 mapRes!6435))))

(declare-fun condMapEmpty!6435 () Bool)

(declare-fun mapDefault!6436 () List!12790)

(assert (=> b!1282482 (= condMapEmpty!6435 (= (arr!2133 (_values!1625 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) ((as const (Array (_ BitVec 32) List!12790)) mapDefault!6436)))))

(declare-fun b!1282483 () Bool)

(declare-fun tp!372350 () Bool)

(assert (=> b!1282483 (= e!822220 (and tp!372350 mapRes!6436))))

(declare-fun condMapEmpty!6436 () Bool)

(declare-fun mapDefault!6435 () List!12785)

(assert (=> b!1282483 (= condMapEmpty!6436 (= (arr!2132 (_values!1624 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) ((as const (Array (_ BitVec 32) List!12785)) mapDefault!6435)))))

(assert (=> b!1282484 (= e!822226 (and tp!372341 tp!372339))))

(declare-fun b!1282485 () Bool)

(assert (=> b!1282485 (= e!822232 e!822238)))

(assert (= (and start!111850 res!575428) b!1282478))

(assert (= (and b!1282478 res!575427) b!1282476))

(assert (= (and b!1282476 res!575425) b!1282465))

(assert (= (and b!1282465 res!575426) b!1282469))

(assert (= b!1282467 b!1282484))

(assert (= b!1282477 b!1282467))

(assert (= (and start!111850 ((_ is Cons!12722) rs!174)) b!1282477))

(assert (= (and b!1282482 condMapEmpty!6435) mapIsEmpty!6435))

(assert (= (and b!1282482 (not condMapEmpty!6435)) mapNonEmpty!6436))

(assert (= b!1282479 b!1282482))

(assert (= b!1282471 b!1282479))

(assert (= b!1282485 b!1282471))

(assert (= (and b!1282480 ((_ is LongMap!1346) (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))) b!1282485))

(assert (= b!1282475 b!1282480))

(assert (= (and b!1282473 ((_ is HashMap!1290) (cache!1671 cacheUp!398))) b!1282475))

(assert (= start!111850 b!1282473))

(assert (= (and b!1282483 condMapEmpty!6436) mapIsEmpty!6436))

(assert (= (and b!1282483 (not condMapEmpty!6436)) mapNonEmpty!6435))

(assert (= b!1282466 b!1282483))

(assert (= b!1282468 b!1282466))

(assert (= b!1282481 b!1282468))

(assert (= (and b!1282470 ((_ is LongMap!1345) (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))) b!1282481))

(assert (= b!1282474 b!1282470))

(assert (= (and b!1282464 ((_ is HashMap!1289) (cache!1670 cacheDown!411))) b!1282474))

(assert (= start!111850 b!1282464))

(assert (= start!111850 b!1282472))

(declare-fun m!1432965 () Bool)

(assert (=> b!1282467 m!1432965))

(declare-fun m!1432967 () Bool)

(assert (=> b!1282467 m!1432967))

(declare-fun m!1432969 () Bool)

(assert (=> b!1282479 m!1432969))

(declare-fun m!1432971 () Bool)

(assert (=> b!1282479 m!1432971))

(declare-fun m!1432973 () Bool)

(assert (=> start!111850 m!1432973))

(declare-fun m!1432975 () Bool)

(assert (=> start!111850 m!1432975))

(declare-fun m!1432977 () Bool)

(assert (=> start!111850 m!1432977))

(declare-fun m!1432979 () Bool)

(assert (=> mapNonEmpty!6435 m!1432979))

(declare-fun m!1432981 () Bool)

(assert (=> b!1282466 m!1432981))

(declare-fun m!1432983 () Bool)

(assert (=> b!1282466 m!1432983))

(declare-fun m!1432985 () Bool)

(assert (=> b!1282472 m!1432985))

(declare-fun m!1432987 () Bool)

(assert (=> b!1282476 m!1432987))

(declare-fun m!1432989 () Bool)

(assert (=> b!1282478 m!1432989))

(declare-fun m!1432991 () Bool)

(assert (=> b!1282465 m!1432991))

(declare-fun m!1432993 () Bool)

(assert (=> b!1282469 m!1432993))

(declare-fun m!1432995 () Bool)

(assert (=> b!1282469 m!1432995))

(declare-fun m!1432997 () Bool)

(assert (=> b!1282469 m!1432997))

(assert (=> b!1282469 m!1432995))

(declare-fun m!1432999 () Bool)

(assert (=> b!1282469 m!1432999))

(assert (=> b!1282469 m!1432997))

(declare-fun m!1433001 () Bool)

(assert (=> b!1282469 m!1433001))

(declare-fun m!1433003 () Bool)

(assert (=> mapNonEmpty!6436 m!1433003))

(check-sat (not start!111850) (not b_next!30651) (not mapNonEmpty!6435) b_and!85093 (not b_next!30653) (not mapNonEmpty!6436) b_and!85083 b_and!85091 (not b!1282478) (not b!1282479) (not b!1282482) b_and!85087 (not b!1282466) (not b!1282476) (not b_next!30649) (not b!1282472) (not b!1282469) (not b_next!30643) (not b!1282483) (not b_next!30645) (not b!1282477) b_and!85089 b_and!85085 (not b!1282467) (not b_next!30647) (not b!1282465))
(check-sat (not b_next!30651) b_and!85093 (not b_next!30649) (not b_next!30653) (not b_next!30643) (not b_next!30645) b_and!85083 b_and!85091 b_and!85087 (not b_next!30647) b_and!85089 b_and!85085)
(get-model)

(declare-fun d!361215 () Bool)

(declare-fun res!575431 () Bool)

(declare-fun e!822244 () Bool)

(assert (=> d!361215 (=> (not res!575431) (not e!822244))))

(assert (=> d!361215 (= res!575431 ((_ is HashMap!1290) (cache!1671 cacheUp!398)))))

(assert (=> d!361215 (= (inv!17102 cacheUp!398) e!822244)))

(declare-fun b!1282488 () Bool)

(declare-fun validCacheMapUp!122 (MutableMap!1290) Bool)

(assert (=> b!1282488 (= e!822244 (validCacheMapUp!122 (cache!1671 cacheUp!398)))))

(assert (= (and d!361215 res!575431) b!1282488))

(declare-fun m!1433005 () Bool)

(assert (=> b!1282488 m!1433005))

(assert (=> start!111850 d!361215))

(declare-fun d!361217 () Bool)

(declare-fun res!575434 () Bool)

(declare-fun e!822247 () Bool)

(assert (=> d!361217 (=> (not res!575434) (not e!822247))))

(assert (=> d!361217 (= res!575434 ((_ is HashMap!1289) (cache!1670 cacheDown!411)))))

(assert (=> d!361217 (= (inv!17103 cacheDown!411) e!822247)))

(declare-fun b!1282491 () Bool)

(declare-fun validCacheMapDown!122 (MutableMap!1289) Bool)

(assert (=> b!1282491 (= e!822247 (validCacheMapDown!122 (cache!1670 cacheDown!411)))))

(assert (= (and d!361217 res!575434) b!1282491))

(declare-fun m!1433007 () Bool)

(assert (=> b!1282491 m!1433007))

(assert (=> start!111850 d!361217))

(declare-fun d!361219 () Bool)

(declare-fun isBalanced!1219 (Conc!4181) Bool)

(assert (=> d!361219 (= (inv!17104 ts!110) (isBalanced!1219 (c!211407 ts!110)))))

(declare-fun bs!327293 () Bool)

(assert (= bs!327293 d!361219))

(declare-fun m!1433009 () Bool)

(assert (=> bs!327293 m!1433009))

(assert (=> start!111850 d!361219))

(declare-fun d!361221 () Bool)

(assert (=> d!361221 (= (isEmpty!7545 rs!174) ((_ is Nil!12722) rs!174))))

(assert (=> b!1282478 d!361221))

(declare-fun d!361223 () Bool)

(declare-fun lt!423202 () Int)

(declare-fun size!10369 (List!12789) Int)

(declare-fun list!4724 (BalanceConc!8302) List!12789)

(assert (=> d!361223 (= lt!423202 (size!10369 (list!4724 (tail!1814 ts!110))))))

(declare-fun size!10370 (Conc!4181) Int)

(assert (=> d!361223 (= lt!423202 (size!10370 (c!211407 (tail!1814 ts!110))))))

(assert (=> d!361223 (= (size!10367 (tail!1814 ts!110)) lt!423202)))

(declare-fun bs!327294 () Bool)

(assert (= bs!327294 d!361223))

(assert (=> bs!327294 m!1432995))

(declare-fun m!1433011 () Bool)

(assert (=> bs!327294 m!1433011))

(assert (=> bs!327294 m!1433011))

(declare-fun m!1433013 () Bool)

(assert (=> bs!327294 m!1433013))

(declare-fun m!1433015 () Bool)

(assert (=> bs!327294 m!1433015))

(assert (=> b!1282469 d!361223))

(declare-fun d!361225 () Bool)

(declare-fun e!822250 () Bool)

(assert (=> d!361225 e!822250))

(declare-fun res!575437 () Bool)

(assert (=> d!361225 (=> (not res!575437) (not e!822250))))

(declare-fun tail!1815 (Conc!4181) Conc!4181)

(assert (=> d!361225 (= res!575437 (isBalanced!1219 (tail!1815 (c!211407 ts!110))))))

(declare-fun lt!423205 () BalanceConc!8302)

(assert (=> d!361225 (= lt!423205 (BalanceConc!8303 (tail!1815 (c!211407 ts!110))))))

(assert (=> d!361225 (not (isEmpty!7544 ts!110))))

(assert (=> d!361225 (= (tail!1814 ts!110) lt!423205)))

(declare-fun b!1282494 () Bool)

(declare-fun tail!1816 (List!12789) List!12789)

(assert (=> b!1282494 (= e!822250 (= (list!4724 lt!423205) (tail!1816 (list!4724 ts!110))))))

(assert (= (and d!361225 res!575437) b!1282494))

(declare-fun m!1433017 () Bool)

(assert (=> d!361225 m!1433017))

(assert (=> d!361225 m!1433017))

(declare-fun m!1433019 () Bool)

(assert (=> d!361225 m!1433019))

(assert (=> d!361225 m!1432991))

(declare-fun m!1433021 () Bool)

(assert (=> b!1282494 m!1433021))

(declare-fun m!1433023 () Bool)

(assert (=> b!1282494 m!1433023))

(assert (=> b!1282494 m!1433023))

(declare-fun m!1433025 () Bool)

(assert (=> b!1282494 m!1433025))

(assert (=> b!1282469 d!361225))

(declare-fun d!361227 () Bool)

(declare-fun lt!423210 () tuple3!1178)

(declare-fun rulesProduceIndividualToken!853 (LexerInterface!1880 List!12788 Token!4032) Bool)

(assert (=> d!361227 (= (_1!7180 lt!423210) (rulesProduceIndividualToken!853 thiss!10944 rs!174 (head!2186 ts!110)))))

(declare-fun e!822256 () Bool)

(declare-datatypes ((tuple2!12600 0))(
  ( (tuple2!12601 (_1!7181 BalanceConc!8302) (_2!7181 BalanceConc!8300)) )
))
(declare-datatypes ((tuple3!1180 0))(
  ( (tuple3!1181 (_1!7182 tuple2!12600) (_2!7182 CacheUp!758) (_3!881 CacheDown!762)) )
))
(declare-fun lt!423211 () tuple3!1180)

(assert (=> d!361227 (= lt!423210 (tuple3!1179 e!822256 (_2!7182 lt!423211) (_3!881 lt!423211)))))

(declare-fun res!575442 () Bool)

(assert (=> d!361227 (=> (not res!575442) (not e!822256))))

(declare-fun e!822255 () Bool)

(assert (=> d!361227 (= res!575442 e!822255)))

(declare-fun res!575443 () Bool)

(assert (=> d!361227 (=> (not res!575443) (not e!822255))))

(assert (=> d!361227 (= res!575443 (= (size!10367 (_1!7181 (_1!7182 lt!423211))) 1))))

(declare-fun lexV1Mem!4 (LexerInterface!1880 List!12788 BalanceConc!8300 CacheUp!758 CacheDown!762) tuple3!1180)

(declare-fun print!701 (LexerInterface!1880 BalanceConc!8302) BalanceConc!8300)

(declare-fun singletonSeq!772 (Token!4032) BalanceConc!8302)

(assert (=> d!361227 (= lt!423211 (lexV1Mem!4 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))) cacheUp!398 cacheDown!411))))

(assert (=> d!361227 (not (isEmpty!7545 rs!174))))

(assert (=> d!361227 (= (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411) lt!423210)))

(declare-fun b!1282499 () Bool)

(declare-fun apply!2716 (BalanceConc!8302 Int) Token!4032)

(assert (=> b!1282499 (= e!822255 (= (apply!2716 (_1!7181 (_1!7182 lt!423211)) 0) (head!2186 ts!110)))))

(declare-fun b!1282500 () Bool)

(declare-fun isEmpty!7546 (BalanceConc!8300) Bool)

(assert (=> b!1282500 (= e!822256 (isEmpty!7546 (_2!7181 (_1!7182 lt!423211))))))

(assert (= (and d!361227 res!575443) b!1282499))

(assert (= (and d!361227 res!575442) b!1282500))

(assert (=> d!361227 m!1432989))

(declare-fun m!1433027 () Bool)

(assert (=> d!361227 m!1433027))

(declare-fun m!1433029 () Bool)

(assert (=> d!361227 m!1433029))

(declare-fun m!1433031 () Bool)

(assert (=> d!361227 m!1433031))

(assert (=> d!361227 m!1433027))

(assert (=> d!361227 m!1432997))

(declare-fun m!1433033 () Bool)

(assert (=> d!361227 m!1433033))

(declare-fun m!1433035 () Bool)

(assert (=> d!361227 m!1433035))

(assert (=> d!361227 m!1432997))

(assert (=> d!361227 m!1433031))

(declare-fun m!1433037 () Bool)

(assert (=> b!1282499 m!1433037))

(declare-fun m!1433039 () Bool)

(assert (=> b!1282500 m!1433039))

(assert (=> b!1282469 d!361227))

(declare-fun d!361229 () Bool)

(declare-fun lt!423212 () Int)

(assert (=> d!361229 (= lt!423212 (size!10369 (list!4724 ts!110)))))

(assert (=> d!361229 (= lt!423212 (size!10370 (c!211407 ts!110)))))

(assert (=> d!361229 (= (size!10367 ts!110) lt!423212)))

(declare-fun bs!327295 () Bool)

(assert (= bs!327295 d!361229))

(assert (=> bs!327295 m!1433023))

(assert (=> bs!327295 m!1433023))

(declare-fun m!1433041 () Bool)

(assert (=> bs!327295 m!1433041))

(declare-fun m!1433043 () Bool)

(assert (=> bs!327295 m!1433043))

(assert (=> b!1282469 d!361229))

(declare-fun d!361231 () Bool)

(declare-fun lt!423215 () Token!4032)

(declare-fun head!2187 (List!12789) Token!4032)

(assert (=> d!361231 (= lt!423215 (head!2187 (list!4724 ts!110)))))

(declare-fun head!2188 (Conc!4181) Token!4032)

(assert (=> d!361231 (= lt!423215 (head!2188 (c!211407 ts!110)))))

(assert (=> d!361231 (not (isEmpty!7544 ts!110))))

(assert (=> d!361231 (= (head!2186 ts!110) lt!423215)))

(declare-fun bs!327296 () Bool)

(assert (= bs!327296 d!361231))

(assert (=> bs!327296 m!1433023))

(assert (=> bs!327296 m!1433023))

(declare-fun m!1433045 () Bool)

(assert (=> bs!327296 m!1433045))

(declare-fun m!1433047 () Bool)

(assert (=> bs!327296 m!1433047))

(assert (=> bs!327296 m!1432991))

(assert (=> b!1282469 d!361231))

(declare-fun d!361233 () Bool)

(declare-fun lt!423218 () Bool)

(declare-fun isEmpty!7547 (List!12789) Bool)

(assert (=> d!361233 (= lt!423218 (isEmpty!7547 (list!4724 ts!110)))))

(declare-fun isEmpty!7548 (Conc!4181) Bool)

(assert (=> d!361233 (= lt!423218 (isEmpty!7548 (c!211407 ts!110)))))

(assert (=> d!361233 (= (isEmpty!7544 ts!110) lt!423218)))

(declare-fun bs!327297 () Bool)

(assert (= bs!327297 d!361233))

(assert (=> bs!327297 m!1433023))

(assert (=> bs!327297 m!1433023))

(declare-fun m!1433049 () Bool)

(assert (=> bs!327297 m!1433049))

(declare-fun m!1433051 () Bool)

(assert (=> bs!327297 m!1433051))

(assert (=> b!1282465 d!361233))

(declare-fun d!361235 () Bool)

(declare-fun res!575446 () Bool)

(declare-fun e!822259 () Bool)

(assert (=> d!361235 (=> (not res!575446) (not e!822259))))

(declare-fun rulesValid!792 (LexerInterface!1880 List!12788) Bool)

(assert (=> d!361235 (= res!575446 (rulesValid!792 thiss!10944 rs!174))))

(assert (=> d!361235 (= (rulesInvariant!1751 thiss!10944 rs!174) e!822259)))

(declare-fun b!1282503 () Bool)

(declare-datatypes ((List!12791 0))(
  ( (Nil!12725) (Cons!12725 (h!18126 String!15611) (t!116616 List!12791)) )
))
(declare-fun noDuplicateTag!792 (LexerInterface!1880 List!12788 List!12791) Bool)

(assert (=> b!1282503 (= e!822259 (noDuplicateTag!792 thiss!10944 rs!174 Nil!12725))))

(assert (= (and d!361235 res!575446) b!1282503))

(declare-fun m!1433053 () Bool)

(assert (=> d!361235 m!1433053))

(declare-fun m!1433055 () Bool)

(assert (=> b!1282503 m!1433055))

(assert (=> b!1282476 d!361235))

(declare-fun d!361237 () Bool)

(assert (=> d!361237 (= (array_inv!1549 (_keys!1639 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) (bvsge (size!10364 (_keys!1639 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) #b00000000000000000000000000000000))))

(assert (=> b!1282466 d!361237))

(declare-fun d!361239 () Bool)

(assert (=> d!361239 (= (array_inv!1550 (_values!1624 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) (bvsge (size!10365 (_values!1624 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))) #b00000000000000000000000000000000))))

(assert (=> b!1282466 d!361239))

(declare-fun d!361241 () Bool)

(assert (=> d!361241 (= (array_inv!1549 (_keys!1640 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) (bvsge (size!10364 (_keys!1640 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) #b00000000000000000000000000000000))))

(assert (=> b!1282479 d!361241))

(declare-fun d!361243 () Bool)

(assert (=> d!361243 (= (array_inv!1551 (_values!1625 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) (bvsge (size!10368 (_values!1625 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))) #b00000000000000000000000000000000))))

(assert (=> b!1282479 d!361243))

(declare-fun d!361245 () Bool)

(declare-fun c!211411 () Bool)

(assert (=> d!361245 (= c!211411 ((_ is Node!4181) (c!211407 ts!110)))))

(declare-fun e!822264 () Bool)

(assert (=> d!361245 (= (inv!17101 (c!211407 ts!110)) e!822264)))

(declare-fun b!1282510 () Bool)

(declare-fun inv!17105 (Conc!4181) Bool)

(assert (=> b!1282510 (= e!822264 (inv!17105 (c!211407 ts!110)))))

(declare-fun b!1282511 () Bool)

(declare-fun e!822265 () Bool)

(assert (=> b!1282511 (= e!822264 e!822265)))

(declare-fun res!575449 () Bool)

(assert (=> b!1282511 (= res!575449 (not ((_ is Leaf!6470) (c!211407 ts!110))))))

(assert (=> b!1282511 (=> res!575449 e!822265)))

(declare-fun b!1282512 () Bool)

(declare-fun inv!17106 (Conc!4181) Bool)

(assert (=> b!1282512 (= e!822265 (inv!17106 (c!211407 ts!110)))))

(assert (= (and d!361245 c!211411) b!1282510))

(assert (= (and d!361245 (not c!211411)) b!1282511))

(assert (= (and b!1282511 (not res!575449)) b!1282512))

(declare-fun m!1433057 () Bool)

(assert (=> b!1282510 m!1433057))

(declare-fun m!1433059 () Bool)

(assert (=> b!1282512 m!1433059))

(assert (=> b!1282472 d!361245))

(declare-fun d!361247 () Bool)

(assert (=> d!361247 (= (inv!17096 (tag!2447 (h!18123 rs!174))) (= (mod (str.len (value!71904 (tag!2447 (h!18123 rs!174)))) 2) 0))))

(assert (=> b!1282467 d!361247))

(declare-fun d!361249 () Bool)

(declare-fun res!575452 () Bool)

(declare-fun e!822268 () Bool)

(assert (=> d!361249 (=> (not res!575452) (not e!822268))))

(declare-fun semiInverseModEq!821 (Int Int) Bool)

(assert (=> d!361249 (= res!575452 (semiInverseModEq!821 (toChars!3211 (transformation!2185 (h!18123 rs!174))) (toValue!3352 (transformation!2185 (h!18123 rs!174)))))))

(assert (=> d!361249 (= (inv!17100 (transformation!2185 (h!18123 rs!174))) e!822268)))

(declare-fun b!1282515 () Bool)

(declare-fun equivClasses!780 (Int Int) Bool)

(assert (=> b!1282515 (= e!822268 (equivClasses!780 (toChars!3211 (transformation!2185 (h!18123 rs!174))) (toValue!3352 (transformation!2185 (h!18123 rs!174)))))))

(assert (= (and d!361249 res!575452) b!1282515))

(declare-fun m!1433061 () Bool)

(assert (=> d!361249 m!1433061))

(declare-fun m!1433063 () Bool)

(assert (=> b!1282515 m!1433063))

(assert (=> b!1282467 d!361249))

(declare-fun setIsEmpty!8096 () Bool)

(declare-fun setRes!8096 () Bool)

(assert (=> setIsEmpty!8096 setRes!8096))

(declare-fun e!822276 () Bool)

(assert (=> b!1282483 (= tp!372350 e!822276)))

(declare-fun b!1282524 () Bool)

(declare-fun e!822277 () Bool)

(declare-fun tp!372368 () Bool)

(assert (=> b!1282524 (= e!822277 tp!372368)))

(declare-fun b!1282525 () Bool)

(declare-fun e!822275 () Bool)

(declare-fun tp!372367 () Bool)

(declare-fun tp!372369 () Bool)

(declare-fun tp_is_empty!6525 () Bool)

(declare-fun inv!17107 (Context!1110) Bool)

(assert (=> b!1282525 (= e!822276 (and tp!372367 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapDefault!6435)))) e!822275 tp_is_empty!6525 setRes!8096 tp!372369))))

(declare-fun condSetEmpty!8096 () Bool)

(assert (=> b!1282525 (= condSetEmpty!8096 (= (_2!7177 (h!18120 mapDefault!6435)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282526 () Bool)

(declare-fun tp!372370 () Bool)

(assert (=> b!1282526 (= e!822275 tp!372370)))

(declare-fun tp!372371 () Bool)

(declare-fun setNonEmpty!8096 () Bool)

(declare-fun setElem!8096 () Context!1110)

(assert (=> setNonEmpty!8096 (= setRes!8096 (and tp!372371 (inv!17107 setElem!8096) e!822277))))

(declare-fun setRest!8096 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8096 (= (_2!7177 (h!18120 mapDefault!6435)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8096 true) setRest!8096))))

(assert (= b!1282525 b!1282526))

(assert (= (and b!1282525 condSetEmpty!8096) setIsEmpty!8096))

(assert (= (and b!1282525 (not condSetEmpty!8096)) setNonEmpty!8096))

(assert (= setNonEmpty!8096 b!1282524))

(assert (= (and b!1282483 ((_ is Cons!12719) mapDefault!6435)) b!1282525))

(declare-fun m!1433065 () Bool)

(assert (=> b!1282525 m!1433065))

(declare-fun m!1433067 () Bool)

(assert (=> setNonEmpty!8096 m!1433067))

(declare-fun b!1282541 () Bool)

(declare-fun e!822291 () Bool)

(declare-fun tp!372394 () Bool)

(assert (=> b!1282541 (= e!822291 tp!372394)))

(declare-fun b!1282542 () Bool)

(declare-fun e!822292 () Bool)

(declare-fun tp!372398 () Bool)

(assert (=> b!1282542 (= e!822292 tp!372398)))

(declare-fun setRes!8101 () Bool)

(declare-fun tp!372401 () Bool)

(declare-fun e!822290 () Bool)

(declare-fun setElem!8102 () Context!1110)

(declare-fun setNonEmpty!8101 () Bool)

(assert (=> setNonEmpty!8101 (= setRes!8101 (and tp!372401 (inv!17107 setElem!8102) e!822290))))

(declare-fun mapValue!6439 () List!12785)

(declare-fun setRest!8102 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8101 (= (_2!7177 (h!18120 mapValue!6439)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8102 true) setRest!8102))))

(declare-fun setIsEmpty!8101 () Bool)

(declare-fun setRes!8102 () Bool)

(assert (=> setIsEmpty!8101 setRes!8102))

(declare-fun tp!372403 () Bool)

(declare-fun tp!372397 () Bool)

(declare-fun b!1282543 () Bool)

(declare-fun mapDefault!6439 () List!12785)

(declare-fun e!822294 () Bool)

(assert (=> b!1282543 (= e!822294 (and tp!372397 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapDefault!6439)))) e!822292 tp_is_empty!6525 setRes!8102 tp!372403))))

(declare-fun condSetEmpty!8102 () Bool)

(assert (=> b!1282543 (= condSetEmpty!8102 (= (_2!7177 (h!18120 mapDefault!6439)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun tp!372399 () Bool)

(declare-fun tp!372402 () Bool)

(declare-fun b!1282544 () Bool)

(declare-fun e!822295 () Bool)

(assert (=> b!1282544 (= e!822295 (and tp!372399 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapValue!6439)))) e!822291 tp_is_empty!6525 setRes!8101 tp!372402))))

(declare-fun condSetEmpty!8101 () Bool)

(assert (=> b!1282544 (= condSetEmpty!8101 (= (_2!7177 (h!18120 mapValue!6439)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282545 () Bool)

(declare-fun tp!372396 () Bool)

(assert (=> b!1282545 (= e!822290 tp!372396)))

(declare-fun setNonEmpty!8102 () Bool)

(declare-fun e!822293 () Bool)

(declare-fun setElem!8101 () Context!1110)

(declare-fun tp!372400 () Bool)

(assert (=> setNonEmpty!8102 (= setRes!8102 (and tp!372400 (inv!17107 setElem!8101) e!822293))))

(declare-fun setRest!8101 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8102 (= (_2!7177 (h!18120 mapDefault!6439)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8101 true) setRest!8101))))

(declare-fun setIsEmpty!8102 () Bool)

(assert (=> setIsEmpty!8102 setRes!8101))

(declare-fun mapNonEmpty!6439 () Bool)

(declare-fun mapRes!6439 () Bool)

(declare-fun tp!372395 () Bool)

(assert (=> mapNonEmpty!6439 (= mapRes!6439 (and tp!372395 e!822295))))

(declare-fun mapRest!6439 () (Array (_ BitVec 32) List!12785))

(declare-fun mapKey!6439 () (_ BitVec 32))

(assert (=> mapNonEmpty!6439 (= mapRest!6435 (store mapRest!6439 mapKey!6439 mapValue!6439))))

(declare-fun condMapEmpty!6439 () Bool)

(assert (=> mapNonEmpty!6435 (= condMapEmpty!6439 (= mapRest!6435 ((as const (Array (_ BitVec 32) List!12785)) mapDefault!6439)))))

(assert (=> mapNonEmpty!6435 (= tp!372347 (and e!822294 mapRes!6439))))

(declare-fun b!1282546 () Bool)

(declare-fun tp!372404 () Bool)

(assert (=> b!1282546 (= e!822293 tp!372404)))

(declare-fun mapIsEmpty!6439 () Bool)

(assert (=> mapIsEmpty!6439 mapRes!6439))

(assert (= (and mapNonEmpty!6435 condMapEmpty!6439) mapIsEmpty!6439))

(assert (= (and mapNonEmpty!6435 (not condMapEmpty!6439)) mapNonEmpty!6439))

(assert (= b!1282544 b!1282541))

(assert (= (and b!1282544 condSetEmpty!8101) setIsEmpty!8102))

(assert (= (and b!1282544 (not condSetEmpty!8101)) setNonEmpty!8101))

(assert (= setNonEmpty!8101 b!1282545))

(assert (= (and mapNonEmpty!6439 ((_ is Cons!12719) mapValue!6439)) b!1282544))

(assert (= b!1282543 b!1282542))

(assert (= (and b!1282543 condSetEmpty!8102) setIsEmpty!8101))

(assert (= (and b!1282543 (not condSetEmpty!8102)) setNonEmpty!8102))

(assert (= setNonEmpty!8102 b!1282546))

(assert (= (and mapNonEmpty!6435 ((_ is Cons!12719) mapDefault!6439)) b!1282543))

(declare-fun m!1433069 () Bool)

(assert (=> setNonEmpty!8101 m!1433069))

(declare-fun m!1433071 () Bool)

(assert (=> mapNonEmpty!6439 m!1433071))

(declare-fun m!1433073 () Bool)

(assert (=> b!1282544 m!1433073))

(declare-fun m!1433075 () Bool)

(assert (=> setNonEmpty!8102 m!1433075))

(declare-fun m!1433077 () Bool)

(assert (=> b!1282543 m!1433077))

(declare-fun setIsEmpty!8103 () Bool)

(declare-fun setRes!8103 () Bool)

(assert (=> setIsEmpty!8103 setRes!8103))

(declare-fun e!822297 () Bool)

(assert (=> mapNonEmpty!6435 (= tp!372346 e!822297)))

(declare-fun b!1282547 () Bool)

(declare-fun e!822298 () Bool)

(declare-fun tp!372406 () Bool)

(assert (=> b!1282547 (= e!822298 tp!372406)))

(declare-fun e!822296 () Bool)

(declare-fun tp!372405 () Bool)

(declare-fun b!1282548 () Bool)

(declare-fun tp!372407 () Bool)

(assert (=> b!1282548 (= e!822297 (and tp!372405 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapValue!6436)))) e!822296 tp_is_empty!6525 setRes!8103 tp!372407))))

(declare-fun condSetEmpty!8103 () Bool)

(assert (=> b!1282548 (= condSetEmpty!8103 (= (_2!7177 (h!18120 mapValue!6436)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282549 () Bool)

(declare-fun tp!372408 () Bool)

(assert (=> b!1282549 (= e!822296 tp!372408)))

(declare-fun tp!372409 () Bool)

(declare-fun setElem!8103 () Context!1110)

(declare-fun setNonEmpty!8103 () Bool)

(assert (=> setNonEmpty!8103 (= setRes!8103 (and tp!372409 (inv!17107 setElem!8103) e!822298))))

(declare-fun setRest!8103 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8103 (= (_2!7177 (h!18120 mapValue!6436)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8103 true) setRest!8103))))

(assert (= b!1282548 b!1282549))

(assert (= (and b!1282548 condSetEmpty!8103) setIsEmpty!8103))

(assert (= (and b!1282548 (not condSetEmpty!8103)) setNonEmpty!8103))

(assert (= setNonEmpty!8103 b!1282547))

(assert (= (and mapNonEmpty!6435 ((_ is Cons!12719) mapValue!6436)) b!1282548))

(declare-fun m!1433079 () Bool)

(assert (=> b!1282548 m!1433079))

(declare-fun m!1433081 () Bool)

(assert (=> setNonEmpty!8103 m!1433081))

(declare-fun b!1282558 () Bool)

(declare-fun e!822306 () Bool)

(declare-fun tp!372418 () Bool)

(assert (=> b!1282558 (= e!822306 tp!372418)))

(declare-fun e!822307 () Bool)

(assert (=> b!1282482 (= tp!372340 e!822307)))

(declare-fun setIsEmpty!8106 () Bool)

(declare-fun setRes!8106 () Bool)

(assert (=> setIsEmpty!8106 setRes!8106))

(declare-fun setNonEmpty!8106 () Bool)

(declare-fun e!822305 () Bool)

(declare-fun tp!372419 () Bool)

(declare-fun setElem!8106 () Context!1110)

(assert (=> setNonEmpty!8106 (= setRes!8106 (and tp!372419 (inv!17107 setElem!8106) e!822305))))

(declare-fun setRest!8106 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8106 (= (_2!7179 (h!18125 mapDefault!6436)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8106 true) setRest!8106))))

(declare-fun b!1282559 () Bool)

(declare-fun tp!372420 () Bool)

(assert (=> b!1282559 (= e!822305 tp!372420)))

(declare-fun b!1282560 () Bool)

(declare-fun tp!372421 () Bool)

(assert (=> b!1282560 (= e!822307 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapDefault!6436)))) e!822306 tp_is_empty!6525 setRes!8106 tp!372421))))

(declare-fun condSetEmpty!8106 () Bool)

(assert (=> b!1282560 (= condSetEmpty!8106 (= (_2!7179 (h!18125 mapDefault!6436)) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282560 b!1282558))

(assert (= (and b!1282560 condSetEmpty!8106) setIsEmpty!8106))

(assert (= (and b!1282560 (not condSetEmpty!8106)) setNonEmpty!8106))

(assert (= setNonEmpty!8106 b!1282559))

(assert (= (and b!1282482 ((_ is Cons!12724) mapDefault!6436)) b!1282560))

(declare-fun m!1433083 () Bool)

(assert (=> setNonEmpty!8106 m!1433083))

(declare-fun m!1433085 () Bool)

(assert (=> b!1282560 m!1433085))

(declare-fun b!1282571 () Bool)

(declare-fun b_free!29951 () Bool)

(declare-fun b_next!30655 () Bool)

(assert (=> b!1282571 (= b_free!29951 (not b_next!30655))))

(declare-fun tp!372432 () Bool)

(declare-fun b_and!85095 () Bool)

(assert (=> b!1282571 (= tp!372432 b_and!85095)))

(declare-fun b_free!29953 () Bool)

(declare-fun b_next!30657 () Bool)

(assert (=> b!1282571 (= b_free!29953 (not b_next!30657))))

(declare-fun tp!372433 () Bool)

(declare-fun b_and!85097 () Bool)

(assert (=> b!1282571 (= tp!372433 b_and!85097)))

(declare-fun e!822316 () Bool)

(assert (=> b!1282571 (= e!822316 (and tp!372432 tp!372433))))

(declare-fun b!1282570 () Bool)

(declare-fun tp!372431 () Bool)

(declare-fun e!822318 () Bool)

(assert (=> b!1282570 (= e!822318 (and tp!372431 (inv!17096 (tag!2447 (h!18123 (t!116612 rs!174)))) (inv!17100 (transformation!2185 (h!18123 (t!116612 rs!174)))) e!822316))))

(declare-fun b!1282569 () Bool)

(declare-fun e!822319 () Bool)

(declare-fun tp!372430 () Bool)

(assert (=> b!1282569 (= e!822319 (and e!822318 tp!372430))))

(assert (=> b!1282477 (= tp!372345 e!822319)))

(assert (= b!1282570 b!1282571))

(assert (= b!1282569 b!1282570))

(assert (= (and b!1282477 ((_ is Cons!12722) (t!116612 rs!174))) b!1282569))

(declare-fun m!1433087 () Bool)

(assert (=> b!1282570 m!1433087))

(declare-fun m!1433089 () Bool)

(assert (=> b!1282570 m!1433089))

(declare-fun setIsEmpty!8111 () Bool)

(declare-fun setRes!8111 () Bool)

(assert (=> setIsEmpty!8111 setRes!8111))

(declare-fun tp!372452 () Bool)

(declare-fun e!822334 () Bool)

(declare-fun b!1282586 () Bool)

(declare-fun e!822332 () Bool)

(declare-fun mapDefault!6442 () List!12790)

(assert (=> b!1282586 (= e!822332 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapDefault!6442)))) e!822334 tp_is_empty!6525 setRes!8111 tp!372452))))

(declare-fun condSetEmpty!8111 () Bool)

(assert (=> b!1282586 (= condSetEmpty!8111 (= (_2!7179 (h!18125 mapDefault!6442)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun tp!372458 () Bool)

(declare-fun e!822336 () Bool)

(declare-fun setNonEmpty!8111 () Bool)

(declare-fun setElem!8111 () Context!1110)

(declare-fun setRes!8112 () Bool)

(assert (=> setNonEmpty!8111 (= setRes!8112 (and tp!372458 (inv!17107 setElem!8111) e!822336))))

(declare-fun mapValue!6442 () List!12790)

(declare-fun setRest!8111 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8111 (= (_2!7179 (h!18125 mapValue!6442)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8111 true) setRest!8111))))

(declare-fun setIsEmpty!8112 () Bool)

(assert (=> setIsEmpty!8112 setRes!8112))

(declare-fun e!822335 () Bool)

(declare-fun tp!372460 () Bool)

(declare-fun e!822337 () Bool)

(declare-fun b!1282588 () Bool)

(assert (=> b!1282588 (= e!822337 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapValue!6442)))) e!822335 tp_is_empty!6525 setRes!8112 tp!372460))))

(declare-fun condSetEmpty!8112 () Bool)

(assert (=> b!1282588 (= condSetEmpty!8112 (= (_2!7179 (h!18125 mapValue!6442)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282589 () Bool)

(declare-fun e!822333 () Bool)

(declare-fun tp!372457 () Bool)

(assert (=> b!1282589 (= e!822333 tp!372457)))

(declare-fun tp!372454 () Bool)

(declare-fun setNonEmpty!8112 () Bool)

(declare-fun setElem!8112 () Context!1110)

(assert (=> setNonEmpty!8112 (= setRes!8111 (and tp!372454 (inv!17107 setElem!8112) e!822333))))

(declare-fun setRest!8112 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8112 (= (_2!7179 (h!18125 mapDefault!6442)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8112 true) setRest!8112))))

(declare-fun mapIsEmpty!6442 () Bool)

(declare-fun mapRes!6442 () Bool)

(assert (=> mapIsEmpty!6442 mapRes!6442))

(declare-fun b!1282590 () Bool)

(declare-fun tp!372455 () Bool)

(assert (=> b!1282590 (= e!822335 tp!372455)))

(declare-fun b!1282587 () Bool)

(declare-fun tp!372459 () Bool)

(assert (=> b!1282587 (= e!822336 tp!372459)))

(declare-fun condMapEmpty!6442 () Bool)

(assert (=> mapNonEmpty!6436 (= condMapEmpty!6442 (= mapRest!6436 ((as const (Array (_ BitVec 32) List!12790)) mapDefault!6442)))))

(assert (=> mapNonEmpty!6436 (= tp!372353 (and e!822332 mapRes!6442))))

(declare-fun mapNonEmpty!6442 () Bool)

(declare-fun tp!372456 () Bool)

(assert (=> mapNonEmpty!6442 (= mapRes!6442 (and tp!372456 e!822337))))

(declare-fun mapKey!6442 () (_ BitVec 32))

(declare-fun mapRest!6442 () (Array (_ BitVec 32) List!12790))

(assert (=> mapNonEmpty!6442 (= mapRest!6436 (store mapRest!6442 mapKey!6442 mapValue!6442))))

(declare-fun b!1282591 () Bool)

(declare-fun tp!372453 () Bool)

(assert (=> b!1282591 (= e!822334 tp!372453)))

(assert (= (and mapNonEmpty!6436 condMapEmpty!6442) mapIsEmpty!6442))

(assert (= (and mapNonEmpty!6436 (not condMapEmpty!6442)) mapNonEmpty!6442))

(assert (= b!1282588 b!1282590))

(assert (= (and b!1282588 condSetEmpty!8112) setIsEmpty!8112))

(assert (= (and b!1282588 (not condSetEmpty!8112)) setNonEmpty!8111))

(assert (= setNonEmpty!8111 b!1282587))

(assert (= (and mapNonEmpty!6442 ((_ is Cons!12724) mapValue!6442)) b!1282588))

(assert (= b!1282586 b!1282591))

(assert (= (and b!1282586 condSetEmpty!8111) setIsEmpty!8111))

(assert (= (and b!1282586 (not condSetEmpty!8111)) setNonEmpty!8112))

(assert (= setNonEmpty!8112 b!1282589))

(assert (= (and mapNonEmpty!6436 ((_ is Cons!12724) mapDefault!6442)) b!1282586))

(declare-fun m!1433091 () Bool)

(assert (=> setNonEmpty!8111 m!1433091))

(declare-fun m!1433093 () Bool)

(assert (=> b!1282588 m!1433093))

(declare-fun m!1433095 () Bool)

(assert (=> mapNonEmpty!6442 m!1433095))

(declare-fun m!1433097 () Bool)

(assert (=> b!1282586 m!1433097))

(declare-fun m!1433099 () Bool)

(assert (=> setNonEmpty!8112 m!1433099))

(declare-fun b!1282592 () Bool)

(declare-fun e!822339 () Bool)

(declare-fun tp!372461 () Bool)

(assert (=> b!1282592 (= e!822339 tp!372461)))

(declare-fun e!822340 () Bool)

(assert (=> mapNonEmpty!6436 (= tp!372355 e!822340)))

(declare-fun setIsEmpty!8113 () Bool)

(declare-fun setRes!8113 () Bool)

(assert (=> setIsEmpty!8113 setRes!8113))

(declare-fun setNonEmpty!8113 () Bool)

(declare-fun setElem!8113 () Context!1110)

(declare-fun e!822338 () Bool)

(declare-fun tp!372462 () Bool)

(assert (=> setNonEmpty!8113 (= setRes!8113 (and tp!372462 (inv!17107 setElem!8113) e!822338))))

(declare-fun setRest!8113 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8113 (= (_2!7179 (h!18125 mapValue!6435)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8113 true) setRest!8113))))

(declare-fun b!1282593 () Bool)

(declare-fun tp!372463 () Bool)

(assert (=> b!1282593 (= e!822338 tp!372463)))

(declare-fun tp!372464 () Bool)

(declare-fun b!1282594 () Bool)

(assert (=> b!1282594 (= e!822340 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapValue!6435)))) e!822339 tp_is_empty!6525 setRes!8113 tp!372464))))

(declare-fun condSetEmpty!8113 () Bool)

(assert (=> b!1282594 (= condSetEmpty!8113 (= (_2!7179 (h!18125 mapValue!6435)) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282594 b!1282592))

(assert (= (and b!1282594 condSetEmpty!8113) setIsEmpty!8113))

(assert (= (and b!1282594 (not condSetEmpty!8113)) setNonEmpty!8113))

(assert (= setNonEmpty!8113 b!1282593))

(assert (= (and mapNonEmpty!6436 ((_ is Cons!12724) mapValue!6435)) b!1282594))

(declare-fun m!1433101 () Bool)

(assert (=> setNonEmpty!8113 m!1433101))

(declare-fun m!1433103 () Bool)

(assert (=> b!1282594 m!1433103))

(declare-fun setIsEmpty!8114 () Bool)

(declare-fun setRes!8114 () Bool)

(assert (=> setIsEmpty!8114 setRes!8114))

(declare-fun e!822342 () Bool)

(assert (=> b!1282466 (= tp!372356 e!822342)))

(declare-fun b!1282595 () Bool)

(declare-fun e!822343 () Bool)

(declare-fun tp!372466 () Bool)

(assert (=> b!1282595 (= e!822343 tp!372466)))

(declare-fun e!822341 () Bool)

(declare-fun tp!372465 () Bool)

(declare-fun b!1282596 () Bool)

(declare-fun tp!372467 () Bool)

(assert (=> b!1282596 (= e!822342 (and tp!372465 (inv!17107 (_2!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) e!822341 tp_is_empty!6525 setRes!8114 tp!372467))))

(declare-fun condSetEmpty!8114 () Bool)

(assert (=> b!1282596 (= condSetEmpty!8114 (= (_2!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282597 () Bool)

(declare-fun tp!372468 () Bool)

(assert (=> b!1282597 (= e!822341 tp!372468)))

(declare-fun tp!372469 () Bool)

(declare-fun setElem!8114 () Context!1110)

(declare-fun setNonEmpty!8114 () Bool)

(assert (=> setNonEmpty!8114 (= setRes!8114 (and tp!372469 (inv!17107 setElem!8114) e!822343))))

(declare-fun setRest!8114 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8114 (= (_2!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8114 true) setRest!8114))))

(assert (= b!1282596 b!1282597))

(assert (= (and b!1282596 condSetEmpty!8114) setIsEmpty!8114))

(assert (= (and b!1282596 (not condSetEmpty!8114)) setNonEmpty!8114))

(assert (= setNonEmpty!8114 b!1282595))

(assert (= (and b!1282466 ((_ is Cons!12719) (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) b!1282596))

(declare-fun m!1433105 () Bool)

(assert (=> b!1282596 m!1433105))

(declare-fun m!1433107 () Bool)

(assert (=> setNonEmpty!8114 m!1433107))

(declare-fun setIsEmpty!8115 () Bool)

(declare-fun setRes!8115 () Bool)

(assert (=> setIsEmpty!8115 setRes!8115))

(declare-fun e!822345 () Bool)

(assert (=> b!1282466 (= tp!372351 e!822345)))

(declare-fun b!1282598 () Bool)

(declare-fun e!822346 () Bool)

(declare-fun tp!372471 () Bool)

(assert (=> b!1282598 (= e!822346 tp!372471)))

(declare-fun e!822344 () Bool)

(declare-fun tp!372470 () Bool)

(declare-fun tp!372472 () Bool)

(declare-fun b!1282599 () Bool)

(assert (=> b!1282599 (= e!822345 (and tp!372470 (inv!17107 (_2!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) e!822344 tp_is_empty!6525 setRes!8115 tp!372472))))

(declare-fun condSetEmpty!8115 () Bool)

(assert (=> b!1282599 (= condSetEmpty!8115 (= (_2!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282600 () Bool)

(declare-fun tp!372473 () Bool)

(assert (=> b!1282600 (= e!822344 tp!372473)))

(declare-fun setElem!8115 () Context!1110)

(declare-fun setNonEmpty!8115 () Bool)

(declare-fun tp!372474 () Bool)

(assert (=> setNonEmpty!8115 (= setRes!8115 (and tp!372474 (inv!17107 setElem!8115) e!822346))))

(declare-fun setRest!8115 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8115 (= (_2!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8115 true) setRest!8115))))

(assert (= b!1282599 b!1282600))

(assert (= (and b!1282599 condSetEmpty!8115) setIsEmpty!8115))

(assert (= (and b!1282599 (not condSetEmpty!8115)) setNonEmpty!8115))

(assert (= setNonEmpty!8115 b!1282598))

(assert (= (and b!1282466 ((_ is Cons!12719) (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))) b!1282599))

(declare-fun m!1433109 () Bool)

(assert (=> b!1282599 m!1433109))

(declare-fun m!1433111 () Bool)

(assert (=> setNonEmpty!8115 m!1433111))

(declare-fun b!1282601 () Bool)

(declare-fun e!822348 () Bool)

(declare-fun tp!372475 () Bool)

(assert (=> b!1282601 (= e!822348 tp!372475)))

(declare-fun e!822349 () Bool)

(assert (=> b!1282479 (= tp!372342 e!822349)))

(declare-fun setIsEmpty!8116 () Bool)

(declare-fun setRes!8116 () Bool)

(assert (=> setIsEmpty!8116 setRes!8116))

(declare-fun tp!372476 () Bool)

(declare-fun e!822347 () Bool)

(declare-fun setElem!8116 () Context!1110)

(declare-fun setNonEmpty!8116 () Bool)

(assert (=> setNonEmpty!8116 (= setRes!8116 (and tp!372476 (inv!17107 setElem!8116) e!822347))))

(declare-fun setRest!8116 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8116 (= (_2!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8116 true) setRest!8116))))

(declare-fun b!1282602 () Bool)

(declare-fun tp!372477 () Bool)

(assert (=> b!1282602 (= e!822347 tp!372477)))

(declare-fun b!1282603 () Bool)

(declare-fun tp!372478 () Bool)

(assert (=> b!1282603 (= e!822349 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) e!822348 tp_is_empty!6525 setRes!8116 tp!372478))))

(declare-fun condSetEmpty!8116 () Bool)

(assert (=> b!1282603 (= condSetEmpty!8116 (= (_2!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282603 b!1282601))

(assert (= (and b!1282603 condSetEmpty!8116) setIsEmpty!8116))

(assert (= (and b!1282603 (not condSetEmpty!8116)) setNonEmpty!8116))

(assert (= setNonEmpty!8116 b!1282602))

(assert (= (and b!1282479 ((_ is Cons!12724) (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) b!1282603))

(declare-fun m!1433113 () Bool)

(assert (=> setNonEmpty!8116 m!1433113))

(declare-fun m!1433115 () Bool)

(assert (=> b!1282603 m!1433115))

(declare-fun b!1282604 () Bool)

(declare-fun e!822351 () Bool)

(declare-fun tp!372479 () Bool)

(assert (=> b!1282604 (= e!822351 tp!372479)))

(declare-fun e!822352 () Bool)

(assert (=> b!1282479 (= tp!372348 e!822352)))

(declare-fun setIsEmpty!8117 () Bool)

(declare-fun setRes!8117 () Bool)

(assert (=> setIsEmpty!8117 setRes!8117))

(declare-fun setNonEmpty!8117 () Bool)

(declare-fun setElem!8117 () Context!1110)

(declare-fun tp!372480 () Bool)

(declare-fun e!822350 () Bool)

(assert (=> setNonEmpty!8117 (= setRes!8117 (and tp!372480 (inv!17107 setElem!8117) e!822350))))

(declare-fun setRest!8117 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8117 (= (_2!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8117 true) setRest!8117))))

(declare-fun b!1282605 () Bool)

(declare-fun tp!372481 () Bool)

(assert (=> b!1282605 (= e!822350 tp!372481)))

(declare-fun tp!372482 () Bool)

(declare-fun b!1282606 () Bool)

(assert (=> b!1282606 (= e!822352 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) e!822351 tp_is_empty!6525 setRes!8117 tp!372482))))

(declare-fun condSetEmpty!8117 () Bool)

(assert (=> b!1282606 (= condSetEmpty!8117 (= (_2!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282606 b!1282604))

(assert (= (and b!1282606 condSetEmpty!8117) setIsEmpty!8117))

(assert (= (and b!1282606 (not condSetEmpty!8117)) setNonEmpty!8117))

(assert (= setNonEmpty!8117 b!1282605))

(assert (= (and b!1282479 ((_ is Cons!12724) (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))) b!1282606))

(declare-fun m!1433117 () Bool)

(assert (=> setNonEmpty!8117 m!1433117))

(declare-fun m!1433119 () Bool)

(assert (=> b!1282606 m!1433119))

(declare-fun tp!372491 () Bool)

(declare-fun tp!372490 () Bool)

(declare-fun b!1282615 () Bool)

(declare-fun e!822358 () Bool)

(assert (=> b!1282615 (= e!822358 (and (inv!17101 (left!10977 (c!211407 ts!110))) tp!372490 (inv!17101 (right!11307 (c!211407 ts!110))) tp!372491))))

(declare-fun b!1282617 () Bool)

(declare-fun e!822357 () Bool)

(declare-fun tp!372489 () Bool)

(assert (=> b!1282617 (= e!822357 tp!372489)))

(declare-fun b!1282616 () Bool)

(declare-fun inv!17108 (IArray!8367) Bool)

(assert (=> b!1282616 (= e!822358 (and (inv!17108 (xs!6892 (c!211407 ts!110))) e!822357))))

(assert (=> b!1282472 (= tp!372343 (and (inv!17101 (c!211407 ts!110)) e!822358))))

(assert (= (and b!1282472 ((_ is Node!4181) (c!211407 ts!110))) b!1282615))

(assert (= b!1282616 b!1282617))

(assert (= (and b!1282472 ((_ is Leaf!6470) (c!211407 ts!110))) b!1282616))

(declare-fun m!1433121 () Bool)

(assert (=> b!1282615 m!1433121))

(declare-fun m!1433123 () Bool)

(assert (=> b!1282615 m!1433123))

(declare-fun m!1433125 () Bool)

(assert (=> b!1282616 m!1433125))

(assert (=> b!1282472 m!1432985))

(declare-fun e!822361 () Bool)

(assert (=> b!1282467 (= tp!372354 e!822361)))

(declare-fun b!1282629 () Bool)

(declare-fun tp!372503 () Bool)

(declare-fun tp!372505 () Bool)

(assert (=> b!1282629 (= e!822361 (and tp!372503 tp!372505))))

(declare-fun b!1282631 () Bool)

(declare-fun tp!372504 () Bool)

(declare-fun tp!372502 () Bool)

(assert (=> b!1282631 (= e!822361 (and tp!372504 tp!372502))))

(declare-fun b!1282628 () Bool)

(assert (=> b!1282628 (= e!822361 tp_is_empty!6525)))

(declare-fun b!1282630 () Bool)

(declare-fun tp!372506 () Bool)

(assert (=> b!1282630 (= e!822361 tp!372506)))

(assert (= (and b!1282467 ((_ is ElementMatch!3499) (regex!2185 (h!18123 rs!174)))) b!1282628))

(assert (= (and b!1282467 ((_ is Concat!5774) (regex!2185 (h!18123 rs!174)))) b!1282629))

(assert (= (and b!1282467 ((_ is Star!3499) (regex!2185 (h!18123 rs!174)))) b!1282630))

(assert (= (and b!1282467 ((_ is Union!3499) (regex!2185 (h!18123 rs!174)))) b!1282631))

(check-sat (not b!1282488) (not mapNonEmpty!6442) tp_is_empty!6525 (not setNonEmpty!8101) (not b!1282543) (not b!1282598) (not b!1282596) (not b!1282491) (not b!1282494) (not b_next!30651) (not b!1282606) (not b!1282548) (not d!361249) (not setNonEmpty!8117) (not b!1282588) (not mapNonEmpty!6439) (not setNonEmpty!8102) (not b!1282560) (not b!1282630) (not d!361219) (not b!1282559) (not d!361223) (not setNonEmpty!8096) (not b!1282499) b_and!85093 (not b!1282605) (not b_next!30649) (not b!1282472) (not d!361229) (not b!1282545) (not b!1282500) (not b!1282602) (not b_next!30653) (not b!1282601) (not b!1282541) (not b_next!30655) b_and!85097 (not b!1282591) (not b!1282592) (not b_next!30643) (not b!1282589) (not b_next!30645) (not d!361233) (not b!1282569) (not b!1282570) (not b!1282615) (not b!1282510) (not setNonEmpty!8103) (not b!1282586) (not setNonEmpty!8112) (not setNonEmpty!8113) (not d!361235) (not setNonEmpty!8111) (not b!1282515) (not b!1282629) (not b!1282603) (not b_next!30657) b_and!85083 (not b!1282525) (not b!1282616) (not d!361227) b_and!85091 (not b!1282524) (not b!1282549) (not b!1282631) (not b!1282542) (not b!1282546) (not b!1282526) (not b!1282593) (not b!1282604) (not d!361231) (not d!361225) (not setNonEmpty!8115) (not b!1282595) b_and!85095 (not b!1282547) (not setNonEmpty!8106) (not b!1282590) (not b!1282600) (not setNonEmpty!8114) (not b!1282597) (not b!1282599) b_and!85089 b_and!85085 (not b!1282558) (not b!1282587) (not b!1282512) (not b!1282594) (not b!1282503) b_and!85087 (not b!1282617) (not b!1282544) (not b_next!30647) (not setNonEmpty!8116))
(check-sat (not b_next!30651) b_and!85093 (not b_next!30649) (not b_next!30653) (not b_next!30645) (not b_next!30657) b_and!85083 b_and!85091 b_and!85095 b_and!85087 (not b_next!30647) (not b_next!30655) b_and!85097 (not b_next!30643) b_and!85089 b_and!85085)
(get-model)

(declare-fun d!361251 () Bool)

(declare-fun lt!423221 () Int)

(assert (=> d!361251 (>= lt!423221 0)))

(declare-fun e!822364 () Int)

(assert (=> d!361251 (= lt!423221 e!822364)))

(declare-fun c!211414 () Bool)

(assert (=> d!361251 (= c!211414 ((_ is Nil!12723) (list!4724 ts!110)))))

(assert (=> d!361251 (= (size!10369 (list!4724 ts!110)) lt!423221)))

(declare-fun b!1282636 () Bool)

(assert (=> b!1282636 (= e!822364 0)))

(declare-fun b!1282637 () Bool)

(assert (=> b!1282637 (= e!822364 (+ 1 (size!10369 (t!116613 (list!4724 ts!110)))))))

(assert (= (and d!361251 c!211414) b!1282636))

(assert (= (and d!361251 (not c!211414)) b!1282637))

(declare-fun m!1433127 () Bool)

(assert (=> b!1282637 m!1433127))

(assert (=> d!361229 d!361251))

(declare-fun d!361253 () Bool)

(declare-fun list!4725 (Conc!4181) List!12789)

(assert (=> d!361253 (= (list!4724 ts!110) (list!4725 (c!211407 ts!110)))))

(declare-fun bs!327298 () Bool)

(assert (= bs!327298 d!361253))

(declare-fun m!1433129 () Bool)

(assert (=> bs!327298 m!1433129))

(assert (=> d!361229 d!361253))

(declare-fun d!361255 () Bool)

(declare-fun lt!423224 () Int)

(assert (=> d!361255 (= lt!423224 (size!10369 (list!4725 (c!211407 ts!110))))))

(assert (=> d!361255 (= lt!423224 (ite ((_ is Empty!4181) (c!211407 ts!110)) 0 (ite ((_ is Leaf!6470) (c!211407 ts!110)) (csize!8593 (c!211407 ts!110)) (csize!8592 (c!211407 ts!110)))))))

(assert (=> d!361255 (= (size!10370 (c!211407 ts!110)) lt!423224)))

(declare-fun bs!327299 () Bool)

(assert (= bs!327299 d!361255))

(assert (=> bs!327299 m!1433129))

(assert (=> bs!327299 m!1433129))

(declare-fun m!1433131 () Bool)

(assert (=> bs!327299 m!1433131))

(assert (=> d!361229 d!361255))

(declare-fun b!1282650 () Bool)

(declare-fun res!575471 () Bool)

(declare-fun e!822369 () Bool)

(assert (=> b!1282650 (=> (not res!575471) (not e!822369))))

(assert (=> b!1282650 (= res!575471 (isBalanced!1219 (right!11307 (tail!1815 (c!211407 ts!110)))))))

(declare-fun d!361257 () Bool)

(declare-fun res!575472 () Bool)

(declare-fun e!822370 () Bool)

(assert (=> d!361257 (=> res!575472 e!822370)))

(assert (=> d!361257 (= res!575472 (not ((_ is Node!4181) (tail!1815 (c!211407 ts!110)))))))

(assert (=> d!361257 (= (isBalanced!1219 (tail!1815 (c!211407 ts!110))) e!822370)))

(declare-fun b!1282651 () Bool)

(declare-fun res!575470 () Bool)

(assert (=> b!1282651 (=> (not res!575470) (not e!822369))))

(assert (=> b!1282651 (= res!575470 (not (isEmpty!7548 (left!10977 (tail!1815 (c!211407 ts!110))))))))

(declare-fun b!1282652 () Bool)

(declare-fun res!575474 () Bool)

(assert (=> b!1282652 (=> (not res!575474) (not e!822369))))

(declare-fun height!590 (Conc!4181) Int)

(assert (=> b!1282652 (= res!575474 (<= (- (height!590 (left!10977 (tail!1815 (c!211407 ts!110)))) (height!590 (right!11307 (tail!1815 (c!211407 ts!110))))) 1))))

(declare-fun b!1282653 () Bool)

(assert (=> b!1282653 (= e!822369 (not (isEmpty!7548 (right!11307 (tail!1815 (c!211407 ts!110))))))))

(declare-fun b!1282654 () Bool)

(declare-fun res!575473 () Bool)

(assert (=> b!1282654 (=> (not res!575473) (not e!822369))))

(assert (=> b!1282654 (= res!575473 (isBalanced!1219 (left!10977 (tail!1815 (c!211407 ts!110)))))))

(declare-fun b!1282655 () Bool)

(assert (=> b!1282655 (= e!822370 e!822369)))

(declare-fun res!575469 () Bool)

(assert (=> b!1282655 (=> (not res!575469) (not e!822369))))

(assert (=> b!1282655 (= res!575469 (<= (- 1) (- (height!590 (left!10977 (tail!1815 (c!211407 ts!110)))) (height!590 (right!11307 (tail!1815 (c!211407 ts!110)))))))))

(assert (= (and d!361257 (not res!575472)) b!1282655))

(assert (= (and b!1282655 res!575469) b!1282652))

(assert (= (and b!1282652 res!575474) b!1282654))

(assert (= (and b!1282654 res!575473) b!1282650))

(assert (= (and b!1282650 res!575471) b!1282651))

(assert (= (and b!1282651 res!575470) b!1282653))

(declare-fun m!1433133 () Bool)

(assert (=> b!1282651 m!1433133))

(declare-fun m!1433135 () Bool)

(assert (=> b!1282654 m!1433135))

(declare-fun m!1433137 () Bool)

(assert (=> b!1282650 m!1433137))

(declare-fun m!1433139 () Bool)

(assert (=> b!1282652 m!1433139))

(declare-fun m!1433141 () Bool)

(assert (=> b!1282652 m!1433141))

(assert (=> b!1282655 m!1433139))

(assert (=> b!1282655 m!1433141))

(declare-fun m!1433143 () Bool)

(assert (=> b!1282653 m!1433143))

(assert (=> d!361225 d!361257))

(declare-fun b!1282672 () Bool)

(declare-fun e!822382 () Conc!4181)

(declare-fun e!822385 () Conc!4181)

(assert (=> b!1282672 (= e!822382 e!822385)))

(declare-fun res!575480 () Bool)

(assert (=> b!1282672 (= res!575480 ((_ is Node!4181) (c!211407 ts!110)))))

(declare-fun e!822381 () Bool)

(assert (=> b!1282672 (=> (not res!575480) (not e!822381))))

(declare-fun c!211423 () Bool)

(assert (=> b!1282672 (= c!211423 e!822381)))

(declare-fun b!1282673 () Bool)

(declare-datatypes ((Unit!18968 0))(
  ( (Unit!18969) )
))
(declare-fun lt!423247 () Unit!18968)

(declare-fun lt!423242 () Unit!18968)

(assert (=> b!1282673 (= lt!423247 lt!423242)))

(declare-fun lt!423246 () List!12789)

(declare-fun lt!423248 () List!12789)

(declare-fun call!88426 () List!12789)

(declare-fun ++!3220 (List!12789 List!12789) List!12789)

(assert (=> b!1282673 (= (tail!1816 (++!3220 lt!423246 lt!423248)) (++!3220 call!88426 lt!423248))))

(declare-fun lemmaTailOfConcatIsTailConcat!7 (List!12789 List!12789) Unit!18968)

(assert (=> b!1282673 (= lt!423242 (lemmaTailOfConcatIsTailConcat!7 lt!423246 lt!423248))))

(assert (=> b!1282673 (= lt!423248 (list!4725 (right!11307 (c!211407 ts!110))))))

(assert (=> b!1282673 (= lt!423246 (list!4725 (left!10977 (c!211407 ts!110))))))

(declare-fun call!88427 () Conc!4181)

(declare-fun ++!3221 (Conc!4181 Conc!4181) Conc!4181)

(assert (=> b!1282673 (= e!822385 (++!3221 call!88427 (right!11307 (c!211407 ts!110))))))

(declare-fun b!1282674 () Bool)

(assert (=> b!1282674 (= e!822381 (isEmpty!7548 (left!10977 (c!211407 ts!110))))))

(declare-fun b!1282675 () Bool)

(declare-fun e!822384 () Conc!4181)

(assert (=> b!1282675 (= e!822384 Empty!4181)))

(declare-fun b!1282676 () Bool)

(declare-fun lt!423244 () Unit!18968)

(declare-fun lt!423243 () Unit!18968)

(assert (=> b!1282676 (= lt!423244 lt!423243)))

(declare-fun lt!423245 () List!12789)

(declare-fun slice!524 (List!12789 Int Int) List!12789)

(assert (=> b!1282676 (= call!88426 (slice!524 lt!423245 1 (size!10369 lt!423245)))))

(declare-fun sliceTailLemma!7 (List!12789) Unit!18968)

(assert (=> b!1282676 (= lt!423243 (sliceTailLemma!7 lt!423245))))

(declare-fun list!4726 (IArray!8367) List!12789)

(assert (=> b!1282676 (= lt!423245 (list!4726 (xs!6892 (c!211407 ts!110))))))

(declare-fun slice!525 (IArray!8367 Int Int) IArray!8367)

(assert (=> b!1282676 (= e!822384 (Leaf!6470 (slice!525 (xs!6892 (c!211407 ts!110)) 1 (csize!8593 (c!211407 ts!110))) (- (csize!8593 (c!211407 ts!110)) 1)))))

(declare-fun d!361259 () Bool)

(declare-fun e!822383 () Bool)

(assert (=> d!361259 e!822383))

(declare-fun res!575479 () Bool)

(assert (=> d!361259 (=> (not res!575479) (not e!822383))))

(declare-fun lt!423241 () Conc!4181)

(assert (=> d!361259 (= res!575479 (isBalanced!1219 lt!423241))))

(assert (=> d!361259 (= lt!423241 e!822382)))

(declare-fun c!211422 () Bool)

(assert (=> d!361259 (= c!211422 ((_ is Leaf!6470) (c!211407 ts!110)))))

(assert (=> d!361259 (isBalanced!1219 (c!211407 ts!110))))

(assert (=> d!361259 (= (tail!1815 (c!211407 ts!110)) lt!423241)))

(declare-fun b!1282677 () Bool)

(assert (=> b!1282677 (= e!822382 e!822384)))

(declare-fun c!211421 () Bool)

(assert (=> b!1282677 (= c!211421 (= (csize!8593 (c!211407 ts!110)) 1))))

(declare-fun b!1282678 () Bool)

(assert (=> b!1282678 (= e!822385 call!88427)))

(declare-fun b!1282679 () Bool)

(assert (=> b!1282679 (= e!822383 (= (list!4725 lt!423241) (tail!1816 (list!4725 (c!211407 ts!110)))))))

(declare-fun bm!88421 () Bool)

(assert (=> bm!88421 (= call!88426 (tail!1816 (ite c!211422 lt!423245 lt!423246)))))

(declare-fun bm!88422 () Bool)

(assert (=> bm!88422 (= call!88427 (tail!1815 (ite c!211423 (right!11307 (c!211407 ts!110)) (left!10977 (c!211407 ts!110)))))))

(assert (= (and d!361259 c!211422) b!1282677))

(assert (= (and d!361259 (not c!211422)) b!1282672))

(assert (= (and b!1282677 c!211421) b!1282675))

(assert (= (and b!1282677 (not c!211421)) b!1282676))

(assert (= (and b!1282672 res!575480) b!1282674))

(assert (= (and b!1282672 c!211423) b!1282678))

(assert (= (and b!1282672 (not c!211423)) b!1282673))

(assert (= (or b!1282678 b!1282673) bm!88422))

(assert (= (or b!1282676 b!1282673) bm!88421))

(assert (= (and d!361259 res!575479) b!1282679))

(declare-fun m!1433145 () Bool)

(assert (=> b!1282673 m!1433145))

(declare-fun m!1433147 () Bool)

(assert (=> b!1282673 m!1433147))

(assert (=> b!1282673 m!1433145))

(declare-fun m!1433149 () Bool)

(assert (=> b!1282673 m!1433149))

(declare-fun m!1433151 () Bool)

(assert (=> b!1282673 m!1433151))

(declare-fun m!1433153 () Bool)

(assert (=> b!1282673 m!1433153))

(declare-fun m!1433155 () Bool)

(assert (=> b!1282673 m!1433155))

(declare-fun m!1433157 () Bool)

(assert (=> b!1282673 m!1433157))

(declare-fun m!1433159 () Bool)

(assert (=> b!1282674 m!1433159))

(declare-fun m!1433161 () Bool)

(assert (=> d!361259 m!1433161))

(assert (=> d!361259 m!1433009))

(declare-fun m!1433163 () Bool)

(assert (=> bm!88422 m!1433163))

(declare-fun m!1433165 () Bool)

(assert (=> b!1282676 m!1433165))

(declare-fun m!1433167 () Bool)

(assert (=> b!1282676 m!1433167))

(assert (=> b!1282676 m!1433165))

(declare-fun m!1433169 () Bool)

(assert (=> b!1282676 m!1433169))

(declare-fun m!1433171 () Bool)

(assert (=> b!1282676 m!1433171))

(declare-fun m!1433173 () Bool)

(assert (=> b!1282676 m!1433173))

(declare-fun m!1433175 () Bool)

(assert (=> b!1282679 m!1433175))

(assert (=> b!1282679 m!1433129))

(assert (=> b!1282679 m!1433129))

(declare-fun m!1433177 () Bool)

(assert (=> b!1282679 m!1433177))

(declare-fun m!1433179 () Bool)

(assert (=> bm!88421 m!1433179))

(assert (=> d!361225 d!361259))

(assert (=> d!361225 d!361233))

(declare-fun d!361261 () Bool)

(assert (=> d!361261 (= (inv!17096 (tag!2447 (h!18123 (t!116612 rs!174)))) (= (mod (str.len (value!71904 (tag!2447 (h!18123 (t!116612 rs!174))))) 2) 0))))

(assert (=> b!1282570 d!361261))

(declare-fun d!361263 () Bool)

(declare-fun res!575481 () Bool)

(declare-fun e!822386 () Bool)

(assert (=> d!361263 (=> (not res!575481) (not e!822386))))

(assert (=> d!361263 (= res!575481 (semiInverseModEq!821 (toChars!3211 (transformation!2185 (h!18123 (t!116612 rs!174)))) (toValue!3352 (transformation!2185 (h!18123 (t!116612 rs!174))))))))

(assert (=> d!361263 (= (inv!17100 (transformation!2185 (h!18123 (t!116612 rs!174)))) e!822386)))

(declare-fun b!1282680 () Bool)

(assert (=> b!1282680 (= e!822386 (equivClasses!780 (toChars!3211 (transformation!2185 (h!18123 (t!116612 rs!174)))) (toValue!3352 (transformation!2185 (h!18123 (t!116612 rs!174))))))))

(assert (= (and d!361263 res!575481) b!1282680))

(declare-fun m!1433181 () Bool)

(assert (=> d!361263 m!1433181))

(declare-fun m!1433183 () Bool)

(assert (=> b!1282680 m!1433183))

(assert (=> b!1282570 d!361263))

(declare-fun d!361265 () Bool)

(assert (=> d!361265 (= (isEmpty!7547 (list!4724 ts!110)) ((_ is Nil!12723) (list!4724 ts!110)))))

(assert (=> d!361233 d!361265))

(assert (=> d!361233 d!361253))

(declare-fun d!361267 () Bool)

(declare-fun lt!423251 () Bool)

(assert (=> d!361267 (= lt!423251 (isEmpty!7547 (list!4725 (c!211407 ts!110))))))

(assert (=> d!361267 (= lt!423251 (= (size!10370 (c!211407 ts!110)) 0))))

(assert (=> d!361267 (= (isEmpty!7548 (c!211407 ts!110)) lt!423251)))

(declare-fun bs!327300 () Bool)

(assert (= bs!327300 d!361267))

(assert (=> bs!327300 m!1433129))

(assert (=> bs!327300 m!1433129))

(declare-fun m!1433185 () Bool)

(assert (=> bs!327300 m!1433185))

(assert (=> bs!327300 m!1433043))

(assert (=> d!361233 d!361267))

(declare-fun d!361269 () Bool)

(declare-fun lambda!50242 () Int)

(declare-fun forall!3209 (List!12784 Int) Bool)

(assert (=> d!361269 (= (inv!17107 setElem!8113) (forall!3209 (exprs!1055 setElem!8113) lambda!50242))))

(declare-fun bs!327301 () Bool)

(assert (= bs!327301 d!361269))

(declare-fun m!1433187 () Bool)

(assert (=> bs!327301 m!1433187))

(assert (=> setNonEmpty!8113 d!361269))

(declare-fun bs!327302 () Bool)

(declare-fun d!361271 () Bool)

(assert (= bs!327302 (and d!361271 d!361269)))

(declare-fun lambda!50243 () Int)

(assert (=> bs!327302 (= lambda!50243 lambda!50242)))

(assert (=> d!361271 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) lambda!50243))))

(declare-fun bs!327303 () Bool)

(assert (= bs!327303 d!361271))

(declare-fun m!1433189 () Bool)

(assert (=> bs!327303 m!1433189))

(assert (=> b!1282603 d!361271))

(declare-fun bs!327304 () Bool)

(declare-fun d!361273 () Bool)

(assert (= bs!327304 (and d!361273 d!361269)))

(declare-fun lambda!50244 () Int)

(assert (=> bs!327304 (= lambda!50244 lambda!50242)))

(declare-fun bs!327305 () Bool)

(assert (= bs!327305 (and d!361273 d!361271)))

(assert (=> bs!327305 (= lambda!50244 lambda!50243)))

(assert (=> d!361273 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 mapValue!6435)))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapValue!6435)))) lambda!50244))))

(declare-fun bs!327306 () Bool)

(assert (= bs!327306 d!361273))

(declare-fun m!1433191 () Bool)

(assert (=> bs!327306 m!1433191))

(assert (=> b!1282594 d!361273))

(assert (=> b!1282472 d!361245))

(declare-fun bs!327307 () Bool)

(declare-fun d!361275 () Bool)

(assert (= bs!327307 (and d!361275 d!361269)))

(declare-fun lambda!50245 () Int)

(assert (=> bs!327307 (= lambda!50245 lambda!50242)))

(declare-fun bs!327308 () Bool)

(assert (= bs!327308 (and d!361275 d!361271)))

(assert (=> bs!327308 (= lambda!50245 lambda!50243)))

(declare-fun bs!327309 () Bool)

(assert (= bs!327309 (and d!361275 d!361273)))

(assert (=> bs!327309 (= lambda!50245 lambda!50244)))

(assert (=> d!361275 (= (inv!17107 setElem!8114) (forall!3209 (exprs!1055 setElem!8114) lambda!50245))))

(declare-fun bs!327310 () Bool)

(assert (= bs!327310 d!361275))

(declare-fun m!1433193 () Bool)

(assert (=> bs!327310 m!1433193))

(assert (=> setNonEmpty!8114 d!361275))

(declare-fun d!361277 () Bool)

(assert (=> d!361277 true))

(declare-fun order!7719 () Int)

(declare-fun order!7721 () Int)

(declare-fun lambda!50248 () Int)

(declare-fun dynLambda!5536 (Int Int) Int)

(declare-fun dynLambda!5537 (Int Int) Int)

(assert (=> d!361277 (< (dynLambda!5536 order!7719 (toChars!3211 (transformation!2185 (h!18123 rs!174)))) (dynLambda!5537 order!7721 lambda!50248))))

(assert (=> d!361277 true))

(declare-fun order!7723 () Int)

(declare-fun dynLambda!5538 (Int Int) Int)

(assert (=> d!361277 (< (dynLambda!5538 order!7723 (toValue!3352 (transformation!2185 (h!18123 rs!174)))) (dynLambda!5537 order!7721 lambda!50248))))

(declare-fun Forall!489 (Int) Bool)

(assert (=> d!361277 (= (semiInverseModEq!821 (toChars!3211 (transformation!2185 (h!18123 rs!174))) (toValue!3352 (transformation!2185 (h!18123 rs!174)))) (Forall!489 lambda!50248))))

(declare-fun bs!327311 () Bool)

(assert (= bs!327311 d!361277))

(declare-fun m!1433195 () Bool)

(assert (=> bs!327311 m!1433195))

(assert (=> d!361249 d!361277))

(declare-fun bs!327312 () Bool)

(declare-fun d!361279 () Bool)

(assert (= bs!327312 (and d!361279 d!361269)))

(declare-fun lambda!50249 () Int)

(assert (=> bs!327312 (= lambda!50249 lambda!50242)))

(declare-fun bs!327313 () Bool)

(assert (= bs!327313 (and d!361279 d!361271)))

(assert (=> bs!327313 (= lambda!50249 lambda!50243)))

(declare-fun bs!327314 () Bool)

(assert (= bs!327314 (and d!361279 d!361273)))

(assert (=> bs!327314 (= lambda!50249 lambda!50244)))

(declare-fun bs!327315 () Bool)

(assert (= bs!327315 (and d!361279 d!361275)))

(assert (=> bs!327315 (= lambda!50249 lambda!50245)))

(assert (=> d!361279 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 mapDefault!6436)))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapDefault!6436)))) lambda!50249))))

(declare-fun bs!327316 () Bool)

(assert (= bs!327316 d!361279))

(declare-fun m!1433197 () Bool)

(assert (=> bs!327316 m!1433197))

(assert (=> b!1282560 d!361279))

(declare-fun bs!327317 () Bool)

(declare-fun d!361281 () Bool)

(assert (= bs!327317 (and d!361281 d!361279)))

(declare-fun lambda!50250 () Int)

(assert (=> bs!327317 (= lambda!50250 lambda!50249)))

(declare-fun bs!327318 () Bool)

(assert (= bs!327318 (and d!361281 d!361271)))

(assert (=> bs!327318 (= lambda!50250 lambda!50243)))

(declare-fun bs!327319 () Bool)

(assert (= bs!327319 (and d!361281 d!361275)))

(assert (=> bs!327319 (= lambda!50250 lambda!50245)))

(declare-fun bs!327320 () Bool)

(assert (= bs!327320 (and d!361281 d!361273)))

(assert (=> bs!327320 (= lambda!50250 lambda!50244)))

(declare-fun bs!327321 () Bool)

(assert (= bs!327321 (and d!361281 d!361269)))

(assert (=> bs!327321 (= lambda!50250 lambda!50242)))

(assert (=> d!361281 (= (inv!17107 setElem!8115) (forall!3209 (exprs!1055 setElem!8115) lambda!50250))))

(declare-fun bs!327322 () Bool)

(assert (= bs!327322 d!361281))

(declare-fun m!1433199 () Bool)

(assert (=> bs!327322 m!1433199))

(assert (=> setNonEmpty!8115 d!361281))

(declare-fun d!361283 () Bool)

(declare-fun lt!423252 () Int)

(assert (=> d!361283 (>= lt!423252 0)))

(declare-fun e!822387 () Int)

(assert (=> d!361283 (= lt!423252 e!822387)))

(declare-fun c!211424 () Bool)

(assert (=> d!361283 (= c!211424 ((_ is Nil!12723) (list!4724 (tail!1814 ts!110))))))

(assert (=> d!361283 (= (size!10369 (list!4724 (tail!1814 ts!110))) lt!423252)))

(declare-fun b!1282685 () Bool)

(assert (=> b!1282685 (= e!822387 0)))

(declare-fun b!1282686 () Bool)

(assert (=> b!1282686 (= e!822387 (+ 1 (size!10369 (t!116613 (list!4724 (tail!1814 ts!110))))))))

(assert (= (and d!361283 c!211424) b!1282685))

(assert (= (and d!361283 (not c!211424)) b!1282686))

(declare-fun m!1433201 () Bool)

(assert (=> b!1282686 m!1433201))

(assert (=> d!361223 d!361283))

(declare-fun d!361285 () Bool)

(assert (=> d!361285 (= (list!4724 (tail!1814 ts!110)) (list!4725 (c!211407 (tail!1814 ts!110))))))

(declare-fun bs!327323 () Bool)

(assert (= bs!327323 d!361285))

(declare-fun m!1433203 () Bool)

(assert (=> bs!327323 m!1433203))

(assert (=> d!361223 d!361285))

(declare-fun d!361287 () Bool)

(declare-fun lt!423253 () Int)

(assert (=> d!361287 (= lt!423253 (size!10369 (list!4725 (c!211407 (tail!1814 ts!110)))))))

(assert (=> d!361287 (= lt!423253 (ite ((_ is Empty!4181) (c!211407 (tail!1814 ts!110))) 0 (ite ((_ is Leaf!6470) (c!211407 (tail!1814 ts!110))) (csize!8593 (c!211407 (tail!1814 ts!110))) (csize!8592 (c!211407 (tail!1814 ts!110))))))))

(assert (=> d!361287 (= (size!10370 (c!211407 (tail!1814 ts!110))) lt!423253)))

(declare-fun bs!327324 () Bool)

(assert (= bs!327324 d!361287))

(assert (=> bs!327324 m!1433203))

(assert (=> bs!327324 m!1433203))

(declare-fun m!1433205 () Bool)

(assert (=> bs!327324 m!1433205))

(assert (=> d!361223 d!361287))

(declare-fun d!361289 () Bool)

(declare-fun res!575488 () Bool)

(declare-fun e!822390 () Bool)

(assert (=> d!361289 (=> (not res!575488) (not e!822390))))

(assert (=> d!361289 (= res!575488 (= (csize!8592 (c!211407 ts!110)) (+ (size!10370 (left!10977 (c!211407 ts!110))) (size!10370 (right!11307 (c!211407 ts!110))))))))

(assert (=> d!361289 (= (inv!17105 (c!211407 ts!110)) e!822390)))

(declare-fun b!1282693 () Bool)

(declare-fun res!575489 () Bool)

(assert (=> b!1282693 (=> (not res!575489) (not e!822390))))

(assert (=> b!1282693 (= res!575489 (and (not (= (left!10977 (c!211407 ts!110)) Empty!4181)) (not (= (right!11307 (c!211407 ts!110)) Empty!4181))))))

(declare-fun b!1282694 () Bool)

(declare-fun res!575490 () Bool)

(assert (=> b!1282694 (=> (not res!575490) (not e!822390))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1282694 (= res!575490 (= (cheight!4392 (c!211407 ts!110)) (+ (max!0 (height!590 (left!10977 (c!211407 ts!110))) (height!590 (right!11307 (c!211407 ts!110)))) 1)))))

(declare-fun b!1282695 () Bool)

(assert (=> b!1282695 (= e!822390 (<= 0 (cheight!4392 (c!211407 ts!110))))))

(assert (= (and d!361289 res!575488) b!1282693))

(assert (= (and b!1282693 res!575489) b!1282694))

(assert (= (and b!1282694 res!575490) b!1282695))

(declare-fun m!1433207 () Bool)

(assert (=> d!361289 m!1433207))

(declare-fun m!1433209 () Bool)

(assert (=> d!361289 m!1433209))

(declare-fun m!1433211 () Bool)

(assert (=> b!1282694 m!1433211))

(declare-fun m!1433213 () Bool)

(assert (=> b!1282694 m!1433213))

(assert (=> b!1282694 m!1433211))

(assert (=> b!1282694 m!1433213))

(declare-fun m!1433215 () Bool)

(assert (=> b!1282694 m!1433215))

(assert (=> b!1282510 d!361289))

(declare-fun d!361291 () Bool)

(declare-fun lt!423254 () Int)

(assert (=> d!361291 (= lt!423254 (size!10369 (list!4724 (_1!7181 (_1!7182 lt!423211)))))))

(assert (=> d!361291 (= lt!423254 (size!10370 (c!211407 (_1!7181 (_1!7182 lt!423211)))))))

(assert (=> d!361291 (= (size!10367 (_1!7181 (_1!7182 lt!423211))) lt!423254)))

(declare-fun bs!327325 () Bool)

(assert (= bs!327325 d!361291))

(declare-fun m!1433217 () Bool)

(assert (=> bs!327325 m!1433217))

(assert (=> bs!327325 m!1433217))

(declare-fun m!1433219 () Bool)

(assert (=> bs!327325 m!1433219))

(declare-fun m!1433221 () Bool)

(assert (=> bs!327325 m!1433221))

(assert (=> d!361227 d!361291))

(assert (=> d!361227 d!361221))

(declare-fun d!361293 () Bool)

(declare-fun lt!423259 () Bool)

(declare-fun e!822396 () Bool)

(assert (=> d!361293 (= lt!423259 e!822396)))

(declare-fun res!575499 () Bool)

(assert (=> d!361293 (=> (not res!575499) (not e!822396))))

(declare-fun lex!764 (LexerInterface!1880 List!12788 BalanceConc!8300) tuple2!12600)

(assert (=> d!361293 (= res!575499 (= (list!4724 (_1!7181 (lex!764 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110)))))) (list!4724 (singletonSeq!772 (head!2186 ts!110)))))))

(declare-fun e!822395 () Bool)

(assert (=> d!361293 (= lt!423259 e!822395)))

(declare-fun res!575497 () Bool)

(assert (=> d!361293 (=> (not res!575497) (not e!822395))))

(declare-fun lt!423260 () tuple2!12600)

(assert (=> d!361293 (= res!575497 (= (size!10367 (_1!7181 lt!423260)) 1))))

(assert (=> d!361293 (= lt!423260 (lex!764 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110)))))))

(assert (=> d!361293 (not (isEmpty!7545 rs!174))))

(assert (=> d!361293 (= (rulesProduceIndividualToken!853 thiss!10944 rs!174 (head!2186 ts!110)) lt!423259)))

(declare-fun b!1282702 () Bool)

(declare-fun res!575498 () Bool)

(assert (=> b!1282702 (=> (not res!575498) (not e!822395))))

(assert (=> b!1282702 (= res!575498 (= (apply!2716 (_1!7181 lt!423260) 0) (head!2186 ts!110)))))

(declare-fun b!1282703 () Bool)

(assert (=> b!1282703 (= e!822395 (isEmpty!7546 (_2!7181 lt!423260)))))

(declare-fun b!1282704 () Bool)

(assert (=> b!1282704 (= e!822396 (isEmpty!7546 (_2!7181 (lex!764 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110)))))))))

(assert (= (and d!361293 res!575497) b!1282702))

(assert (= (and b!1282702 res!575498) b!1282703))

(assert (= (and d!361293 res!575499) b!1282704))

(declare-fun m!1433223 () Bool)

(assert (=> d!361293 m!1433223))

(assert (=> d!361293 m!1433031))

(declare-fun m!1433225 () Bool)

(assert (=> d!361293 m!1433225))

(declare-fun m!1433227 () Bool)

(assert (=> d!361293 m!1433227))

(assert (=> d!361293 m!1432997))

(assert (=> d!361293 m!1433031))

(assert (=> d!361293 m!1432989))

(assert (=> d!361293 m!1433027))

(declare-fun m!1433229 () Bool)

(assert (=> d!361293 m!1433229))

(assert (=> d!361293 m!1433031))

(assert (=> d!361293 m!1433027))

(declare-fun m!1433231 () Bool)

(assert (=> b!1282702 m!1433231))

(declare-fun m!1433233 () Bool)

(assert (=> b!1282703 m!1433233))

(assert (=> b!1282704 m!1432997))

(assert (=> b!1282704 m!1433031))

(assert (=> b!1282704 m!1433031))

(assert (=> b!1282704 m!1433027))

(assert (=> b!1282704 m!1433027))

(assert (=> b!1282704 m!1433229))

(declare-fun m!1433235 () Bool)

(assert (=> b!1282704 m!1433235))

(assert (=> d!361227 d!361293))

(declare-fun d!361295 () Bool)

(declare-fun e!822399 () Bool)

(assert (=> d!361295 e!822399))

(declare-fun res!575502 () Bool)

(assert (=> d!361295 (=> (not res!575502) (not e!822399))))

(declare-fun lt!423265 () tuple3!1180)

(assert (=> d!361295 (= res!575502 (= (list!4724 (_1!7181 (_1!7182 lt!423265))) (list!4724 (_1!7181 (lex!764 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))))))))))

(declare-fun lt!423266 () tuple3!1180)

(assert (=> d!361295 (= lt!423265 (tuple3!1181 (_1!7182 lt!423266) (_2!7182 lt!423266) (_3!881 lt!423266)))))

(declare-fun lexTailRecMem!1 (LexerInterface!1880 List!12788 BalanceConc!8300 BalanceConc!8300 BalanceConc!8300 BalanceConc!8302 CacheUp!758 CacheDown!762) tuple3!1180)

(assert (=> d!361295 (= lt!423266 (lexTailRecMem!1 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))) (BalanceConc!8301 Empty!4180) (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))) (BalanceConc!8303 Empty!4181) cacheUp!398 cacheDown!411))))

(assert (=> d!361295 (not (isEmpty!7545 rs!174))))

(assert (=> d!361295 (= (lexV1Mem!4 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))) cacheUp!398 cacheDown!411) lt!423265)))

(declare-fun b!1282707 () Bool)

(declare-fun list!4727 (BalanceConc!8300) List!12787)

(assert (=> b!1282707 (= e!822399 (= (list!4727 (_2!7181 (_1!7182 lt!423265))) (list!4727 (_2!7181 (lex!764 thiss!10944 rs!174 (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))))))))))

(assert (= (and d!361295 res!575502) b!1282707))

(assert (=> d!361295 m!1433223))

(declare-fun m!1433237 () Bool)

(assert (=> d!361295 m!1433237))

(assert (=> d!361295 m!1433027))

(assert (=> d!361295 m!1433229))

(assert (=> d!361295 m!1432989))

(assert (=> d!361295 m!1433027))

(assert (=> d!361295 m!1433027))

(declare-fun m!1433239 () Bool)

(assert (=> d!361295 m!1433239))

(declare-fun m!1433241 () Bool)

(assert (=> b!1282707 m!1433241))

(assert (=> b!1282707 m!1433027))

(assert (=> b!1282707 m!1433229))

(declare-fun m!1433243 () Bool)

(assert (=> b!1282707 m!1433243))

(assert (=> d!361227 d!361295))

(declare-fun d!361297 () Bool)

(declare-fun lt!423269 () BalanceConc!8300)

(declare-fun printList!529 (LexerInterface!1880 List!12789) List!12787)

(assert (=> d!361297 (= (list!4727 lt!423269) (printList!529 thiss!10944 (list!4724 (singletonSeq!772 (head!2186 ts!110)))))))

(declare-fun printTailRec!511 (LexerInterface!1880 BalanceConc!8302 Int BalanceConc!8300) BalanceConc!8300)

(assert (=> d!361297 (= lt!423269 (printTailRec!511 thiss!10944 (singletonSeq!772 (head!2186 ts!110)) 0 (BalanceConc!8301 Empty!4180)))))

(assert (=> d!361297 (= (print!701 thiss!10944 (singletonSeq!772 (head!2186 ts!110))) lt!423269)))

(declare-fun bs!327326 () Bool)

(assert (= bs!327326 d!361297))

(declare-fun m!1433245 () Bool)

(assert (=> bs!327326 m!1433245))

(assert (=> bs!327326 m!1433031))

(assert (=> bs!327326 m!1433225))

(assert (=> bs!327326 m!1433225))

(declare-fun m!1433247 () Bool)

(assert (=> bs!327326 m!1433247))

(assert (=> bs!327326 m!1433031))

(declare-fun m!1433249 () Bool)

(assert (=> bs!327326 m!1433249))

(assert (=> d!361227 d!361297))

(declare-fun d!361299 () Bool)

(declare-fun e!822402 () Bool)

(assert (=> d!361299 e!822402))

(declare-fun res!575505 () Bool)

(assert (=> d!361299 (=> (not res!575505) (not e!822402))))

(declare-fun lt!423272 () BalanceConc!8302)

(assert (=> d!361299 (= res!575505 (= (list!4724 lt!423272) (Cons!12723 (head!2186 ts!110) Nil!12723)))))

(declare-fun singleton!329 (Token!4032) BalanceConc!8302)

(assert (=> d!361299 (= lt!423272 (singleton!329 (head!2186 ts!110)))))

(assert (=> d!361299 (= (singletonSeq!772 (head!2186 ts!110)) lt!423272)))

(declare-fun b!1282710 () Bool)

(assert (=> b!1282710 (= e!822402 (isBalanced!1219 (c!211407 lt!423272)))))

(assert (= (and d!361299 res!575505) b!1282710))

(declare-fun m!1433251 () Bool)

(assert (=> d!361299 m!1433251))

(assert (=> d!361299 m!1432997))

(declare-fun m!1433253 () Bool)

(assert (=> d!361299 m!1433253))

(declare-fun m!1433255 () Bool)

(assert (=> b!1282710 m!1433255))

(assert (=> d!361227 d!361299))

(declare-fun bs!327327 () Bool)

(declare-fun d!361301 () Bool)

(assert (= bs!327327 (and d!361301 d!361279)))

(declare-fun lambda!50251 () Int)

(assert (=> bs!327327 (= lambda!50251 lambda!50249)))

(declare-fun bs!327328 () Bool)

(assert (= bs!327328 (and d!361301 d!361271)))

(assert (=> bs!327328 (= lambda!50251 lambda!50243)))

(declare-fun bs!327329 () Bool)

(assert (= bs!327329 (and d!361301 d!361281)))

(assert (=> bs!327329 (= lambda!50251 lambda!50250)))

(declare-fun bs!327330 () Bool)

(assert (= bs!327330 (and d!361301 d!361275)))

(assert (=> bs!327330 (= lambda!50251 lambda!50245)))

(declare-fun bs!327331 () Bool)

(assert (= bs!327331 (and d!361301 d!361273)))

(assert (=> bs!327331 (= lambda!50251 lambda!50244)))

(declare-fun bs!327332 () Bool)

(assert (= bs!327332 (and d!361301 d!361269)))

(assert (=> bs!327332 (= lambda!50251 lambda!50242)))

(assert (=> d!361301 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 mapDefault!6442)))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapDefault!6442)))) lambda!50251))))

(declare-fun bs!327333 () Bool)

(assert (= bs!327333 d!361301))

(declare-fun m!1433257 () Bool)

(assert (=> bs!327333 m!1433257))

(assert (=> b!1282586 d!361301))

(declare-fun bs!327334 () Bool)

(declare-fun d!361303 () Bool)

(assert (= bs!327334 (and d!361303 d!361279)))

(declare-fun lambda!50252 () Int)

(assert (=> bs!327334 (= lambda!50252 lambda!50249)))

(declare-fun bs!327335 () Bool)

(assert (= bs!327335 (and d!361303 d!361271)))

(assert (=> bs!327335 (= lambda!50252 lambda!50243)))

(declare-fun bs!327336 () Bool)

(assert (= bs!327336 (and d!361303 d!361281)))

(assert (=> bs!327336 (= lambda!50252 lambda!50250)))

(declare-fun bs!327337 () Bool)

(assert (= bs!327337 (and d!361303 d!361301)))

(assert (=> bs!327337 (= lambda!50252 lambda!50251)))

(declare-fun bs!327338 () Bool)

(assert (= bs!327338 (and d!361303 d!361275)))

(assert (=> bs!327338 (= lambda!50252 lambda!50245)))

(declare-fun bs!327339 () Bool)

(assert (= bs!327339 (and d!361303 d!361273)))

(assert (=> bs!327339 (= lambda!50252 lambda!50244)))

(declare-fun bs!327340 () Bool)

(assert (= bs!327340 (and d!361303 d!361269)))

(assert (=> bs!327340 (= lambda!50252 lambda!50242)))

(assert (=> d!361303 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 mapDefault!6435)))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapDefault!6435)))) lambda!50252))))

(declare-fun bs!327341 () Bool)

(assert (= bs!327341 d!361303))

(declare-fun m!1433259 () Bool)

(assert (=> bs!327341 m!1433259))

(assert (=> b!1282525 d!361303))

(declare-fun d!361305 () Bool)

(declare-fun lt!423275 () Bool)

(declare-fun isEmpty!7549 (List!12787) Bool)

(assert (=> d!361305 (= lt!423275 (isEmpty!7549 (list!4727 (_2!7181 (_1!7182 lt!423211)))))))

(declare-fun isEmpty!7550 (Conc!4180) Bool)

(assert (=> d!361305 (= lt!423275 (isEmpty!7550 (c!211406 (_2!7181 (_1!7182 lt!423211)))))))

(assert (=> d!361305 (= (isEmpty!7546 (_2!7181 (_1!7182 lt!423211))) lt!423275)))

(declare-fun bs!327342 () Bool)

(assert (= bs!327342 d!361305))

(declare-fun m!1433261 () Bool)

(assert (=> bs!327342 m!1433261))

(assert (=> bs!327342 m!1433261))

(declare-fun m!1433263 () Bool)

(assert (=> bs!327342 m!1433263))

(declare-fun m!1433265 () Bool)

(assert (=> bs!327342 m!1433265))

(assert (=> b!1282500 d!361305))

(declare-fun d!361307 () Bool)

(assert (=> d!361307 (= (inv!17108 (xs!6892 (c!211407 ts!110))) (<= (size!10369 (innerList!4241 (xs!6892 (c!211407 ts!110)))) 2147483647))))

(declare-fun bs!327343 () Bool)

(assert (= bs!327343 d!361307))

(declare-fun m!1433267 () Bool)

(assert (=> bs!327343 m!1433267))

(assert (=> b!1282616 d!361307))

(declare-fun d!361309 () Bool)

(declare-fun c!211425 () Bool)

(assert (=> d!361309 (= c!211425 ((_ is Node!4181) (left!10977 (c!211407 ts!110))))))

(declare-fun e!822403 () Bool)

(assert (=> d!361309 (= (inv!17101 (left!10977 (c!211407 ts!110))) e!822403)))

(declare-fun b!1282711 () Bool)

(assert (=> b!1282711 (= e!822403 (inv!17105 (left!10977 (c!211407 ts!110))))))

(declare-fun b!1282712 () Bool)

(declare-fun e!822404 () Bool)

(assert (=> b!1282712 (= e!822403 e!822404)))

(declare-fun res!575506 () Bool)

(assert (=> b!1282712 (= res!575506 (not ((_ is Leaf!6470) (left!10977 (c!211407 ts!110)))))))

(assert (=> b!1282712 (=> res!575506 e!822404)))

(declare-fun b!1282713 () Bool)

(assert (=> b!1282713 (= e!822404 (inv!17106 (left!10977 (c!211407 ts!110))))))

(assert (= (and d!361309 c!211425) b!1282711))

(assert (= (and d!361309 (not c!211425)) b!1282712))

(assert (= (and b!1282712 (not res!575506)) b!1282713))

(declare-fun m!1433269 () Bool)

(assert (=> b!1282711 m!1433269))

(declare-fun m!1433271 () Bool)

(assert (=> b!1282713 m!1433271))

(assert (=> b!1282615 d!361309))

(declare-fun d!361311 () Bool)

(declare-fun c!211426 () Bool)

(assert (=> d!361311 (= c!211426 ((_ is Node!4181) (right!11307 (c!211407 ts!110))))))

(declare-fun e!822405 () Bool)

(assert (=> d!361311 (= (inv!17101 (right!11307 (c!211407 ts!110))) e!822405)))

(declare-fun b!1282714 () Bool)

(assert (=> b!1282714 (= e!822405 (inv!17105 (right!11307 (c!211407 ts!110))))))

(declare-fun b!1282715 () Bool)

(declare-fun e!822406 () Bool)

(assert (=> b!1282715 (= e!822405 e!822406)))

(declare-fun res!575507 () Bool)

(assert (=> b!1282715 (= res!575507 (not ((_ is Leaf!6470) (right!11307 (c!211407 ts!110)))))))

(assert (=> b!1282715 (=> res!575507 e!822406)))

(declare-fun b!1282716 () Bool)

(assert (=> b!1282716 (= e!822406 (inv!17106 (right!11307 (c!211407 ts!110))))))

(assert (= (and d!361311 c!211426) b!1282714))

(assert (= (and d!361311 (not c!211426)) b!1282715))

(assert (= (and b!1282715 (not res!575507)) b!1282716))

(declare-fun m!1433273 () Bool)

(assert (=> b!1282714 m!1433273))

(declare-fun m!1433275 () Bool)

(assert (=> b!1282716 m!1433275))

(assert (=> b!1282615 d!361311))

(declare-fun d!361313 () Bool)

(declare-fun lt!423278 () Token!4032)

(declare-fun apply!2717 (List!12789 Int) Token!4032)

(assert (=> d!361313 (= lt!423278 (apply!2717 (list!4724 (_1!7181 (_1!7182 lt!423211))) 0))))

(declare-fun apply!2718 (Conc!4181 Int) Token!4032)

(assert (=> d!361313 (= lt!423278 (apply!2718 (c!211407 (_1!7181 (_1!7182 lt!423211))) 0))))

(declare-fun e!822409 () Bool)

(assert (=> d!361313 e!822409))

(declare-fun res!575510 () Bool)

(assert (=> d!361313 (=> (not res!575510) (not e!822409))))

(assert (=> d!361313 (= res!575510 (<= 0 0))))

(assert (=> d!361313 (= (apply!2716 (_1!7181 (_1!7182 lt!423211)) 0) lt!423278)))

(declare-fun b!1282719 () Bool)

(assert (=> b!1282719 (= e!822409 (< 0 (size!10367 (_1!7181 (_1!7182 lt!423211)))))))

(assert (= (and d!361313 res!575510) b!1282719))

(assert (=> d!361313 m!1433217))

(assert (=> d!361313 m!1433217))

(declare-fun m!1433277 () Bool)

(assert (=> d!361313 m!1433277))

(declare-fun m!1433279 () Bool)

(assert (=> d!361313 m!1433279))

(assert (=> b!1282719 m!1433035))

(assert (=> b!1282499 d!361313))

(declare-fun d!361315 () Bool)

(declare-fun res!575515 () Bool)

(declare-fun e!822414 () Bool)

(assert (=> d!361315 (=> res!575515 e!822414)))

(assert (=> d!361315 (= res!575515 ((_ is Nil!12722) rs!174))))

(assert (=> d!361315 (= (noDuplicateTag!792 thiss!10944 rs!174 Nil!12725) e!822414)))

(declare-fun b!1282724 () Bool)

(declare-fun e!822415 () Bool)

(assert (=> b!1282724 (= e!822414 e!822415)))

(declare-fun res!575516 () Bool)

(assert (=> b!1282724 (=> (not res!575516) (not e!822415))))

(declare-fun contains!2131 (List!12791 String!15611) Bool)

(assert (=> b!1282724 (= res!575516 (not (contains!2131 Nil!12725 (tag!2447 (h!18123 rs!174)))))))

(declare-fun b!1282725 () Bool)

(assert (=> b!1282725 (= e!822415 (noDuplicateTag!792 thiss!10944 (t!116612 rs!174) (Cons!12725 (tag!2447 (h!18123 rs!174)) Nil!12725)))))

(assert (= (and d!361315 (not res!575515)) b!1282724))

(assert (= (and b!1282724 res!575516) b!1282725))

(declare-fun m!1433281 () Bool)

(assert (=> b!1282724 m!1433281))

(declare-fun m!1433283 () Bool)

(assert (=> b!1282725 m!1433283))

(assert (=> b!1282503 d!361315))

(declare-fun bs!327344 () Bool)

(declare-fun d!361317 () Bool)

(assert (= bs!327344 (and d!361317 d!361279)))

(declare-fun lambda!50253 () Int)

(assert (=> bs!327344 (= lambda!50253 lambda!50249)))

(declare-fun bs!327345 () Bool)

(assert (= bs!327345 (and d!361317 d!361271)))

(assert (=> bs!327345 (= lambda!50253 lambda!50243)))

(declare-fun bs!327346 () Bool)

(assert (= bs!327346 (and d!361317 d!361281)))

(assert (=> bs!327346 (= lambda!50253 lambda!50250)))

(declare-fun bs!327347 () Bool)

(assert (= bs!327347 (and d!361317 d!361301)))

(assert (=> bs!327347 (= lambda!50253 lambda!50251)))

(declare-fun bs!327348 () Bool)

(assert (= bs!327348 (and d!361317 d!361275)))

(assert (=> bs!327348 (= lambda!50253 lambda!50245)))

(declare-fun bs!327349 () Bool)

(assert (= bs!327349 (and d!361317 d!361273)))

(assert (=> bs!327349 (= lambda!50253 lambda!50244)))

(declare-fun bs!327350 () Bool)

(assert (= bs!327350 (and d!361317 d!361303)))

(assert (=> bs!327350 (= lambda!50253 lambda!50252)))

(declare-fun bs!327351 () Bool)

(assert (= bs!327351 (and d!361317 d!361269)))

(assert (=> bs!327351 (= lambda!50253 lambda!50242)))

(assert (=> d!361317 (= (inv!17107 setElem!8103) (forall!3209 (exprs!1055 setElem!8103) lambda!50253))))

(declare-fun bs!327352 () Bool)

(assert (= bs!327352 d!361317))

(declare-fun m!1433285 () Bool)

(assert (=> bs!327352 m!1433285))

(assert (=> setNonEmpty!8103 d!361317))

(declare-fun bs!327353 () Bool)

(declare-fun d!361319 () Bool)

(assert (= bs!327353 (and d!361319 d!361279)))

(declare-fun lambda!50254 () Int)

(assert (=> bs!327353 (= lambda!50254 lambda!50249)))

(declare-fun bs!327354 () Bool)

(assert (= bs!327354 (and d!361319 d!361271)))

(assert (=> bs!327354 (= lambda!50254 lambda!50243)))

(declare-fun bs!327355 () Bool)

(assert (= bs!327355 (and d!361319 d!361281)))

(assert (=> bs!327355 (= lambda!50254 lambda!50250)))

(declare-fun bs!327356 () Bool)

(assert (= bs!327356 (and d!361319 d!361301)))

(assert (=> bs!327356 (= lambda!50254 lambda!50251)))

(declare-fun bs!327357 () Bool)

(assert (= bs!327357 (and d!361319 d!361275)))

(assert (=> bs!327357 (= lambda!50254 lambda!50245)))

(declare-fun bs!327358 () Bool)

(assert (= bs!327358 (and d!361319 d!361273)))

(assert (=> bs!327358 (= lambda!50254 lambda!50244)))

(declare-fun bs!327359 () Bool)

(assert (= bs!327359 (and d!361319 d!361317)))

(assert (=> bs!327359 (= lambda!50254 lambda!50253)))

(declare-fun bs!327360 () Bool)

(assert (= bs!327360 (and d!361319 d!361303)))

(assert (=> bs!327360 (= lambda!50254 lambda!50252)))

(declare-fun bs!327361 () Bool)

(assert (= bs!327361 (and d!361319 d!361269)))

(assert (=> bs!327361 (= lambda!50254 lambda!50242)))

(assert (=> d!361319 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 mapValue!6436)))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapValue!6436)))) lambda!50254))))

(declare-fun bs!327362 () Bool)

(assert (= bs!327362 d!361319))

(declare-fun m!1433287 () Bool)

(assert (=> bs!327362 m!1433287))

(assert (=> b!1282548 d!361319))

(declare-fun d!361321 () Bool)

(assert (=> d!361321 true))

(declare-fun lt!423281 () Bool)

(declare-fun rulesValidInductive!688 (LexerInterface!1880 List!12788) Bool)

(assert (=> d!361321 (= lt!423281 (rulesValidInductive!688 thiss!10944 rs!174))))

(declare-fun lambda!50257 () Int)

(declare-fun forall!3210 (List!12788 Int) Bool)

(assert (=> d!361321 (= lt!423281 (forall!3210 rs!174 lambda!50257))))

(assert (=> d!361321 (= (rulesValid!792 thiss!10944 rs!174) lt!423281)))

(declare-fun bs!327363 () Bool)

(assert (= bs!327363 d!361321))

(declare-fun m!1433289 () Bool)

(assert (=> bs!327363 m!1433289))

(declare-fun m!1433291 () Bool)

(assert (=> bs!327363 m!1433291))

(assert (=> d!361235 d!361321))

(declare-fun d!361323 () Bool)

(declare-fun res!575523 () Bool)

(declare-fun e!822420 () Bool)

(assert (=> d!361323 (=> (not res!575523) (not e!822420))))

(declare-fun valid!1057 (MutableMap!1289) Bool)

(assert (=> d!361323 (= res!575523 (valid!1057 (cache!1670 cacheDown!411)))))

(assert (=> d!361323 (= (validCacheMapDown!122 (cache!1670 cacheDown!411)) e!822420)))

(declare-fun b!1282734 () Bool)

(declare-fun res!575524 () Bool)

(assert (=> b!1282734 (=> (not res!575524) (not e!822420))))

(declare-fun invariantList!201 (List!12785) Bool)

(declare-datatypes ((ListMap!451 0))(
  ( (ListMap!452 (toList!709 List!12785)) )
))
(declare-fun map!2773 (MutableMap!1289) ListMap!451)

(assert (=> b!1282734 (= res!575524 (invariantList!201 (toList!709 (map!2773 (cache!1670 cacheDown!411)))))))

(declare-fun b!1282735 () Bool)

(declare-fun lambda!50260 () Int)

(declare-fun forall!3211 (List!12785 Int) Bool)

(assert (=> b!1282735 (= e!822420 (forall!3211 (toList!709 (map!2773 (cache!1670 cacheDown!411))) lambda!50260))))

(assert (= (and d!361323 res!575523) b!1282734))

(assert (= (and b!1282734 res!575524) b!1282735))

(declare-fun m!1433294 () Bool)

(assert (=> d!361323 m!1433294))

(declare-fun m!1433296 () Bool)

(assert (=> b!1282734 m!1433296))

(declare-fun m!1433298 () Bool)

(assert (=> b!1282734 m!1433298))

(assert (=> b!1282735 m!1433296))

(declare-fun m!1433300 () Bool)

(assert (=> b!1282735 m!1433300))

(assert (=> b!1282491 d!361323))

(declare-fun bs!327364 () Bool)

(declare-fun d!361325 () Bool)

(assert (= bs!327364 (and d!361325 d!361279)))

(declare-fun lambda!50261 () Int)

(assert (=> bs!327364 (= lambda!50261 lambda!50249)))

(declare-fun bs!327365 () Bool)

(assert (= bs!327365 (and d!361325 d!361271)))

(assert (=> bs!327365 (= lambda!50261 lambda!50243)))

(declare-fun bs!327366 () Bool)

(assert (= bs!327366 (and d!361325 d!361281)))

(assert (=> bs!327366 (= lambda!50261 lambda!50250)))

(declare-fun bs!327367 () Bool)

(assert (= bs!327367 (and d!361325 d!361319)))

(assert (=> bs!327367 (= lambda!50261 lambda!50254)))

(declare-fun bs!327368 () Bool)

(assert (= bs!327368 (and d!361325 d!361301)))

(assert (=> bs!327368 (= lambda!50261 lambda!50251)))

(declare-fun bs!327369 () Bool)

(assert (= bs!327369 (and d!361325 d!361275)))

(assert (=> bs!327369 (= lambda!50261 lambda!50245)))

(declare-fun bs!327370 () Bool)

(assert (= bs!327370 (and d!361325 d!361273)))

(assert (=> bs!327370 (= lambda!50261 lambda!50244)))

(declare-fun bs!327371 () Bool)

(assert (= bs!327371 (and d!361325 d!361317)))

(assert (=> bs!327371 (= lambda!50261 lambda!50253)))

(declare-fun bs!327372 () Bool)

(assert (= bs!327372 (and d!361325 d!361303)))

(assert (=> bs!327372 (= lambda!50261 lambda!50252)))

(declare-fun bs!327373 () Bool)

(assert (= bs!327373 (and d!361325 d!361269)))

(assert (=> bs!327373 (= lambda!50261 lambda!50242)))

(assert (=> d!361325 (= (inv!17107 setElem!8102) (forall!3209 (exprs!1055 setElem!8102) lambda!50261))))

(declare-fun bs!327374 () Bool)

(assert (= bs!327374 d!361325))

(declare-fun m!1433302 () Bool)

(assert (=> bs!327374 m!1433302))

(assert (=> setNonEmpty!8101 d!361325))

(declare-fun bs!327375 () Bool)

(declare-fun d!361327 () Bool)

(assert (= bs!327375 (and d!361327 d!361279)))

(declare-fun lambda!50262 () Int)

(assert (=> bs!327375 (= lambda!50262 lambda!50249)))

(declare-fun bs!327376 () Bool)

(assert (= bs!327376 (and d!361327 d!361281)))

(assert (=> bs!327376 (= lambda!50262 lambda!50250)))

(declare-fun bs!327377 () Bool)

(assert (= bs!327377 (and d!361327 d!361319)))

(assert (=> bs!327377 (= lambda!50262 lambda!50254)))

(declare-fun bs!327378 () Bool)

(assert (= bs!327378 (and d!361327 d!361301)))

(assert (=> bs!327378 (= lambda!50262 lambda!50251)))

(declare-fun bs!327379 () Bool)

(assert (= bs!327379 (and d!361327 d!361275)))

(assert (=> bs!327379 (= lambda!50262 lambda!50245)))

(declare-fun bs!327380 () Bool)

(assert (= bs!327380 (and d!361327 d!361273)))

(assert (=> bs!327380 (= lambda!50262 lambda!50244)))

(declare-fun bs!327381 () Bool)

(assert (= bs!327381 (and d!361327 d!361317)))

(assert (=> bs!327381 (= lambda!50262 lambda!50253)))

(declare-fun bs!327382 () Bool)

(assert (= bs!327382 (and d!361327 d!361325)))

(assert (=> bs!327382 (= lambda!50262 lambda!50261)))

(declare-fun bs!327383 () Bool)

(assert (= bs!327383 (and d!361327 d!361271)))

(assert (=> bs!327383 (= lambda!50262 lambda!50243)))

(declare-fun bs!327384 () Bool)

(assert (= bs!327384 (and d!361327 d!361303)))

(assert (=> bs!327384 (= lambda!50262 lambda!50252)))

(declare-fun bs!327385 () Bool)

(assert (= bs!327385 (and d!361327 d!361269)))

(assert (=> bs!327385 (= lambda!50262 lambda!50242)))

(assert (=> d!361327 (= (inv!17107 setElem!8112) (forall!3209 (exprs!1055 setElem!8112) lambda!50262))))

(declare-fun bs!327386 () Bool)

(assert (= bs!327386 d!361327))

(declare-fun m!1433304 () Bool)

(assert (=> bs!327386 m!1433304))

(assert (=> setNonEmpty!8112 d!361327))

(declare-fun bs!327387 () Bool)

(declare-fun d!361329 () Bool)

(assert (= bs!327387 (and d!361329 d!361279)))

(declare-fun lambda!50263 () Int)

(assert (=> bs!327387 (= lambda!50263 lambda!50249)))

(declare-fun bs!327388 () Bool)

(assert (= bs!327388 (and d!361329 d!361281)))

(assert (=> bs!327388 (= lambda!50263 lambda!50250)))

(declare-fun bs!327389 () Bool)

(assert (= bs!327389 (and d!361329 d!361319)))

(assert (=> bs!327389 (= lambda!50263 lambda!50254)))

(declare-fun bs!327390 () Bool)

(assert (= bs!327390 (and d!361329 d!361301)))

(assert (=> bs!327390 (= lambda!50263 lambda!50251)))

(declare-fun bs!327391 () Bool)

(assert (= bs!327391 (and d!361329 d!361275)))

(assert (=> bs!327391 (= lambda!50263 lambda!50245)))

(declare-fun bs!327392 () Bool)

(assert (= bs!327392 (and d!361329 d!361273)))

(assert (=> bs!327392 (= lambda!50263 lambda!50244)))

(declare-fun bs!327393 () Bool)

(assert (= bs!327393 (and d!361329 d!361317)))

(assert (=> bs!327393 (= lambda!50263 lambda!50253)))

(declare-fun bs!327394 () Bool)

(assert (= bs!327394 (and d!361329 d!361327)))

(assert (=> bs!327394 (= lambda!50263 lambda!50262)))

(declare-fun bs!327395 () Bool)

(assert (= bs!327395 (and d!361329 d!361325)))

(assert (=> bs!327395 (= lambda!50263 lambda!50261)))

(declare-fun bs!327396 () Bool)

(assert (= bs!327396 (and d!361329 d!361271)))

(assert (=> bs!327396 (= lambda!50263 lambda!50243)))

(declare-fun bs!327397 () Bool)

(assert (= bs!327397 (and d!361329 d!361303)))

(assert (=> bs!327397 (= lambda!50263 lambda!50252)))

(declare-fun bs!327398 () Bool)

(assert (= bs!327398 (and d!361329 d!361269)))

(assert (=> bs!327398 (= lambda!50263 lambda!50242)))

(assert (=> d!361329 (= (inv!17107 setElem!8096) (forall!3209 (exprs!1055 setElem!8096) lambda!50263))))

(declare-fun bs!327399 () Bool)

(assert (= bs!327399 d!361329))

(declare-fun m!1433306 () Bool)

(assert (=> bs!327399 m!1433306))

(assert (=> setNonEmpty!8096 d!361329))

(declare-fun d!361331 () Bool)

(assert (=> d!361331 true))

(declare-fun order!7725 () Int)

(declare-fun lambda!50266 () Int)

(declare-fun dynLambda!5539 (Int Int) Int)

(assert (=> d!361331 (< (dynLambda!5538 order!7723 (toValue!3352 (transformation!2185 (h!18123 rs!174)))) (dynLambda!5539 order!7725 lambda!50266))))

(declare-fun Forall2!391 (Int) Bool)

(assert (=> d!361331 (= (equivClasses!780 (toChars!3211 (transformation!2185 (h!18123 rs!174))) (toValue!3352 (transformation!2185 (h!18123 rs!174)))) (Forall2!391 lambda!50266))))

(declare-fun bs!327400 () Bool)

(assert (= bs!327400 d!361331))

(declare-fun m!1433308 () Bool)

(assert (=> bs!327400 m!1433308))

(assert (=> b!1282515 d!361331))

(declare-fun bs!327401 () Bool)

(declare-fun d!361333 () Bool)

(assert (= bs!327401 (and d!361333 d!361279)))

(declare-fun lambda!50267 () Int)

(assert (=> bs!327401 (= lambda!50267 lambda!50249)))

(declare-fun bs!327402 () Bool)

(assert (= bs!327402 (and d!361333 d!361281)))

(assert (=> bs!327402 (= lambda!50267 lambda!50250)))

(declare-fun bs!327403 () Bool)

(assert (= bs!327403 (and d!361333 d!361319)))

(assert (=> bs!327403 (= lambda!50267 lambda!50254)))

(declare-fun bs!327404 () Bool)

(assert (= bs!327404 (and d!361333 d!361301)))

(assert (=> bs!327404 (= lambda!50267 lambda!50251)))

(declare-fun bs!327405 () Bool)

(assert (= bs!327405 (and d!361333 d!361329)))

(assert (=> bs!327405 (= lambda!50267 lambda!50263)))

(declare-fun bs!327406 () Bool)

(assert (= bs!327406 (and d!361333 d!361275)))

(assert (=> bs!327406 (= lambda!50267 lambda!50245)))

(declare-fun bs!327407 () Bool)

(assert (= bs!327407 (and d!361333 d!361273)))

(assert (=> bs!327407 (= lambda!50267 lambda!50244)))

(declare-fun bs!327408 () Bool)

(assert (= bs!327408 (and d!361333 d!361317)))

(assert (=> bs!327408 (= lambda!50267 lambda!50253)))

(declare-fun bs!327409 () Bool)

(assert (= bs!327409 (and d!361333 d!361327)))

(assert (=> bs!327409 (= lambda!50267 lambda!50262)))

(declare-fun bs!327410 () Bool)

(assert (= bs!327410 (and d!361333 d!361325)))

(assert (=> bs!327410 (= lambda!50267 lambda!50261)))

(declare-fun bs!327411 () Bool)

(assert (= bs!327411 (and d!361333 d!361271)))

(assert (=> bs!327411 (= lambda!50267 lambda!50243)))

(declare-fun bs!327412 () Bool)

(assert (= bs!327412 (and d!361333 d!361303)))

(assert (=> bs!327412 (= lambda!50267 lambda!50252)))

(declare-fun bs!327413 () Bool)

(assert (= bs!327413 (and d!361333 d!361269)))

(assert (=> bs!327413 (= lambda!50267 lambda!50242)))

(assert (=> d!361333 (= (inv!17107 setElem!8111) (forall!3209 (exprs!1055 setElem!8111) lambda!50267))))

(declare-fun bs!327414 () Bool)

(assert (= bs!327414 d!361333))

(declare-fun m!1433310 () Bool)

(assert (=> bs!327414 m!1433310))

(assert (=> setNonEmpty!8111 d!361333))

(declare-fun d!361335 () Bool)

(assert (=> d!361335 (= (head!2187 (list!4724 ts!110)) (h!18124 (list!4724 ts!110)))))

(assert (=> d!361231 d!361335))

(assert (=> d!361231 d!361253))

(declare-fun d!361337 () Bool)

(declare-fun lt!423284 () Token!4032)

(assert (=> d!361337 (= lt!423284 (head!2187 (list!4725 (c!211407 ts!110))))))

(declare-fun e!822425 () Token!4032)

(assert (=> d!361337 (= lt!423284 e!822425)))

(declare-fun c!211429 () Bool)

(assert (=> d!361337 (= c!211429 ((_ is Leaf!6470) (c!211407 ts!110)))))

(assert (=> d!361337 (isBalanced!1219 (c!211407 ts!110))))

(assert (=> d!361337 (= (head!2188 (c!211407 ts!110)) lt!423284)))

(declare-fun b!1282744 () Bool)

(declare-fun apply!2719 (IArray!8367 Int) Token!4032)

(assert (=> b!1282744 (= e!822425 (apply!2719 (xs!6892 (c!211407 ts!110)) 0))))

(declare-fun b!1282745 () Bool)

(assert (=> b!1282745 (= e!822425 (head!2188 (left!10977 (c!211407 ts!110))))))

(assert (= (and d!361337 c!211429) b!1282744))

(assert (= (and d!361337 (not c!211429)) b!1282745))

(assert (=> d!361337 m!1433129))

(assert (=> d!361337 m!1433129))

(declare-fun m!1433312 () Bool)

(assert (=> d!361337 m!1433312))

(assert (=> d!361337 m!1433009))

(declare-fun m!1433314 () Bool)

(assert (=> b!1282744 m!1433314))

(declare-fun m!1433316 () Bool)

(assert (=> b!1282745 m!1433316))

(assert (=> d!361231 d!361337))

(assert (=> d!361231 d!361233))

(declare-fun bs!327415 () Bool)

(declare-fun d!361339 () Bool)

(assert (= bs!327415 (and d!361339 d!361279)))

(declare-fun lambda!50268 () Int)

(assert (=> bs!327415 (= lambda!50268 lambda!50249)))

(declare-fun bs!327416 () Bool)

(assert (= bs!327416 (and d!361339 d!361281)))

(assert (=> bs!327416 (= lambda!50268 lambda!50250)))

(declare-fun bs!327417 () Bool)

(assert (= bs!327417 (and d!361339 d!361319)))

(assert (=> bs!327417 (= lambda!50268 lambda!50254)))

(declare-fun bs!327418 () Bool)

(assert (= bs!327418 (and d!361339 d!361333)))

(assert (=> bs!327418 (= lambda!50268 lambda!50267)))

(declare-fun bs!327419 () Bool)

(assert (= bs!327419 (and d!361339 d!361301)))

(assert (=> bs!327419 (= lambda!50268 lambda!50251)))

(declare-fun bs!327420 () Bool)

(assert (= bs!327420 (and d!361339 d!361329)))

(assert (=> bs!327420 (= lambda!50268 lambda!50263)))

(declare-fun bs!327421 () Bool)

(assert (= bs!327421 (and d!361339 d!361275)))

(assert (=> bs!327421 (= lambda!50268 lambda!50245)))

(declare-fun bs!327422 () Bool)

(assert (= bs!327422 (and d!361339 d!361273)))

(assert (=> bs!327422 (= lambda!50268 lambda!50244)))

(declare-fun bs!327423 () Bool)

(assert (= bs!327423 (and d!361339 d!361317)))

(assert (=> bs!327423 (= lambda!50268 lambda!50253)))

(declare-fun bs!327424 () Bool)

(assert (= bs!327424 (and d!361339 d!361327)))

(assert (=> bs!327424 (= lambda!50268 lambda!50262)))

(declare-fun bs!327425 () Bool)

(assert (= bs!327425 (and d!361339 d!361325)))

(assert (=> bs!327425 (= lambda!50268 lambda!50261)))

(declare-fun bs!327426 () Bool)

(assert (= bs!327426 (and d!361339 d!361271)))

(assert (=> bs!327426 (= lambda!50268 lambda!50243)))

(declare-fun bs!327427 () Bool)

(assert (= bs!327427 (and d!361339 d!361303)))

(assert (=> bs!327427 (= lambda!50268 lambda!50252)))

(declare-fun bs!327428 () Bool)

(assert (= bs!327428 (and d!361339 d!361269)))

(assert (=> bs!327428 (= lambda!50268 lambda!50242)))

(assert (=> d!361339 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 mapValue!6442)))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapValue!6442)))) lambda!50268))))

(declare-fun bs!327429 () Bool)

(assert (= bs!327429 d!361339))

(declare-fun m!1433318 () Bool)

(assert (=> bs!327429 m!1433318))

(assert (=> b!1282588 d!361339))

(declare-fun d!361341 () Bool)

(declare-fun res!575531 () Bool)

(declare-fun e!822428 () Bool)

(assert (=> d!361341 (=> (not res!575531) (not e!822428))))

(assert (=> d!361341 (= res!575531 (<= (size!10369 (list!4726 (xs!6892 (c!211407 ts!110)))) 512))))

(assert (=> d!361341 (= (inv!17106 (c!211407 ts!110)) e!822428)))

(declare-fun b!1282750 () Bool)

(declare-fun res!575532 () Bool)

(assert (=> b!1282750 (=> (not res!575532) (not e!822428))))

(assert (=> b!1282750 (= res!575532 (= (csize!8593 (c!211407 ts!110)) (size!10369 (list!4726 (xs!6892 (c!211407 ts!110))))))))

(declare-fun b!1282751 () Bool)

(assert (=> b!1282751 (= e!822428 (and (> (csize!8593 (c!211407 ts!110)) 0) (<= (csize!8593 (c!211407 ts!110)) 512)))))

(assert (= (and d!361341 res!575531) b!1282750))

(assert (= (and b!1282750 res!575532) b!1282751))

(assert (=> d!361341 m!1433167))

(assert (=> d!361341 m!1433167))

(declare-fun m!1433320 () Bool)

(assert (=> d!361341 m!1433320))

(assert (=> b!1282750 m!1433167))

(assert (=> b!1282750 m!1433167))

(assert (=> b!1282750 m!1433320))

(assert (=> b!1282512 d!361341))

(declare-fun bs!327430 () Bool)

(declare-fun d!361343 () Bool)

(assert (= bs!327430 (and d!361343 d!361279)))

(declare-fun lambda!50269 () Int)

(assert (=> bs!327430 (= lambda!50269 lambda!50249)))

(declare-fun bs!327431 () Bool)

(assert (= bs!327431 (and d!361343 d!361339)))

(assert (=> bs!327431 (= lambda!50269 lambda!50268)))

(declare-fun bs!327432 () Bool)

(assert (= bs!327432 (and d!361343 d!361281)))

(assert (=> bs!327432 (= lambda!50269 lambda!50250)))

(declare-fun bs!327433 () Bool)

(assert (= bs!327433 (and d!361343 d!361319)))

(assert (=> bs!327433 (= lambda!50269 lambda!50254)))

(declare-fun bs!327434 () Bool)

(assert (= bs!327434 (and d!361343 d!361333)))

(assert (=> bs!327434 (= lambda!50269 lambda!50267)))

(declare-fun bs!327435 () Bool)

(assert (= bs!327435 (and d!361343 d!361301)))

(assert (=> bs!327435 (= lambda!50269 lambda!50251)))

(declare-fun bs!327436 () Bool)

(assert (= bs!327436 (and d!361343 d!361329)))

(assert (=> bs!327436 (= lambda!50269 lambda!50263)))

(declare-fun bs!327437 () Bool)

(assert (= bs!327437 (and d!361343 d!361275)))

(assert (=> bs!327437 (= lambda!50269 lambda!50245)))

(declare-fun bs!327438 () Bool)

(assert (= bs!327438 (and d!361343 d!361273)))

(assert (=> bs!327438 (= lambda!50269 lambda!50244)))

(declare-fun bs!327439 () Bool)

(assert (= bs!327439 (and d!361343 d!361317)))

(assert (=> bs!327439 (= lambda!50269 lambda!50253)))

(declare-fun bs!327440 () Bool)

(assert (= bs!327440 (and d!361343 d!361327)))

(assert (=> bs!327440 (= lambda!50269 lambda!50262)))

(declare-fun bs!327441 () Bool)

(assert (= bs!327441 (and d!361343 d!361325)))

(assert (=> bs!327441 (= lambda!50269 lambda!50261)))

(declare-fun bs!327442 () Bool)

(assert (= bs!327442 (and d!361343 d!361271)))

(assert (=> bs!327442 (= lambda!50269 lambda!50243)))

(declare-fun bs!327443 () Bool)

(assert (= bs!327443 (and d!361343 d!361303)))

(assert (=> bs!327443 (= lambda!50269 lambda!50252)))

(declare-fun bs!327444 () Bool)

(assert (= bs!327444 (and d!361343 d!361269)))

(assert (=> bs!327444 (= lambda!50269 lambda!50242)))

(assert (=> d!361343 (= (inv!17107 setElem!8116) (forall!3209 (exprs!1055 setElem!8116) lambda!50269))))

(declare-fun bs!327445 () Bool)

(assert (= bs!327445 d!361343))

(declare-fun m!1433322 () Bool)

(assert (=> bs!327445 m!1433322))

(assert (=> setNonEmpty!8116 d!361343))

(declare-fun bs!327446 () Bool)

(declare-fun d!361345 () Bool)

(assert (= bs!327446 (and d!361345 d!361279)))

(declare-fun lambda!50270 () Int)

(assert (=> bs!327446 (= lambda!50270 lambda!50249)))

(declare-fun bs!327447 () Bool)

(assert (= bs!327447 (and d!361345 d!361281)))

(assert (=> bs!327447 (= lambda!50270 lambda!50250)))

(declare-fun bs!327448 () Bool)

(assert (= bs!327448 (and d!361345 d!361319)))

(assert (=> bs!327448 (= lambda!50270 lambda!50254)))

(declare-fun bs!327449 () Bool)

(assert (= bs!327449 (and d!361345 d!361333)))

(assert (=> bs!327449 (= lambda!50270 lambda!50267)))

(declare-fun bs!327450 () Bool)

(assert (= bs!327450 (and d!361345 d!361301)))

(assert (=> bs!327450 (= lambda!50270 lambda!50251)))

(declare-fun bs!327451 () Bool)

(assert (= bs!327451 (and d!361345 d!361329)))

(assert (=> bs!327451 (= lambda!50270 lambda!50263)))

(declare-fun bs!327452 () Bool)

(assert (= bs!327452 (and d!361345 d!361275)))

(assert (=> bs!327452 (= lambda!50270 lambda!50245)))

(declare-fun bs!327453 () Bool)

(assert (= bs!327453 (and d!361345 d!361273)))

(assert (=> bs!327453 (= lambda!50270 lambda!50244)))

(declare-fun bs!327454 () Bool)

(assert (= bs!327454 (and d!361345 d!361317)))

(assert (=> bs!327454 (= lambda!50270 lambda!50253)))

(declare-fun bs!327455 () Bool)

(assert (= bs!327455 (and d!361345 d!361327)))

(assert (=> bs!327455 (= lambda!50270 lambda!50262)))

(declare-fun bs!327456 () Bool)

(assert (= bs!327456 (and d!361345 d!361325)))

(assert (=> bs!327456 (= lambda!50270 lambda!50261)))

(declare-fun bs!327457 () Bool)

(assert (= bs!327457 (and d!361345 d!361271)))

(assert (=> bs!327457 (= lambda!50270 lambda!50243)))

(declare-fun bs!327458 () Bool)

(assert (= bs!327458 (and d!361345 d!361339)))

(assert (=> bs!327458 (= lambda!50270 lambda!50268)))

(declare-fun bs!327459 () Bool)

(assert (= bs!327459 (and d!361345 d!361343)))

(assert (=> bs!327459 (= lambda!50270 lambda!50269)))

(declare-fun bs!327460 () Bool)

(assert (= bs!327460 (and d!361345 d!361303)))

(assert (=> bs!327460 (= lambda!50270 lambda!50252)))

(declare-fun bs!327461 () Bool)

(assert (= bs!327461 (and d!361345 d!361269)))

(assert (=> bs!327461 (= lambda!50270 lambda!50242)))

(assert (=> d!361345 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) lambda!50270))))

(declare-fun bs!327462 () Bool)

(assert (= bs!327462 d!361345))

(declare-fun m!1433324 () Bool)

(assert (=> bs!327462 m!1433324))

(assert (=> b!1282596 d!361345))

(declare-fun d!361347 () Bool)

(declare-fun res!575537 () Bool)

(declare-fun e!822431 () Bool)

(assert (=> d!361347 (=> (not res!575537) (not e!822431))))

(declare-fun valid!1058 (MutableMap!1290) Bool)

(assert (=> d!361347 (= res!575537 (valid!1058 (cache!1671 cacheUp!398)))))

(assert (=> d!361347 (= (validCacheMapUp!122 (cache!1671 cacheUp!398)) e!822431)))

(declare-fun b!1282756 () Bool)

(declare-fun res!575538 () Bool)

(assert (=> b!1282756 (=> (not res!575538) (not e!822431))))

(declare-fun invariantList!202 (List!12790) Bool)

(declare-datatypes ((ListMap!453 0))(
  ( (ListMap!454 (toList!710 List!12790)) )
))
(declare-fun map!2774 (MutableMap!1290) ListMap!453)

(assert (=> b!1282756 (= res!575538 (invariantList!202 (toList!710 (map!2774 (cache!1671 cacheUp!398)))))))

(declare-fun b!1282757 () Bool)

(declare-fun lambda!50273 () Int)

(declare-fun forall!3212 (List!12790 Int) Bool)

(assert (=> b!1282757 (= e!822431 (forall!3212 (toList!710 (map!2774 (cache!1671 cacheUp!398))) lambda!50273))))

(assert (= (and d!361347 res!575537) b!1282756))

(assert (= (and b!1282756 res!575538) b!1282757))

(declare-fun m!1433327 () Bool)

(assert (=> d!361347 m!1433327))

(declare-fun m!1433329 () Bool)

(assert (=> b!1282756 m!1433329))

(declare-fun m!1433331 () Bool)

(assert (=> b!1282756 m!1433331))

(assert (=> b!1282757 m!1433329))

(declare-fun m!1433333 () Bool)

(assert (=> b!1282757 m!1433333))

(assert (=> b!1282488 d!361347))

(declare-fun d!361349 () Bool)

(assert (=> d!361349 (= (list!4724 lt!423205) (list!4725 (c!211407 lt!423205)))))

(declare-fun bs!327463 () Bool)

(assert (= bs!327463 d!361349))

(declare-fun m!1433335 () Bool)

(assert (=> bs!327463 m!1433335))

(assert (=> b!1282494 d!361349))

(declare-fun d!361351 () Bool)

(assert (=> d!361351 (= (tail!1816 (list!4724 ts!110)) (t!116613 (list!4724 ts!110)))))

(assert (=> b!1282494 d!361351))

(assert (=> b!1282494 d!361253))

(declare-fun bs!327464 () Bool)

(declare-fun d!361353 () Bool)

(assert (= bs!327464 (and d!361353 d!361279)))

(declare-fun lambda!50274 () Int)

(assert (=> bs!327464 (= lambda!50274 lambda!50249)))

(declare-fun bs!327465 () Bool)

(assert (= bs!327465 (and d!361353 d!361345)))

(assert (=> bs!327465 (= lambda!50274 lambda!50270)))

(declare-fun bs!327466 () Bool)

(assert (= bs!327466 (and d!361353 d!361281)))

(assert (=> bs!327466 (= lambda!50274 lambda!50250)))

(declare-fun bs!327467 () Bool)

(assert (= bs!327467 (and d!361353 d!361319)))

(assert (=> bs!327467 (= lambda!50274 lambda!50254)))

(declare-fun bs!327468 () Bool)

(assert (= bs!327468 (and d!361353 d!361333)))

(assert (=> bs!327468 (= lambda!50274 lambda!50267)))

(declare-fun bs!327469 () Bool)

(assert (= bs!327469 (and d!361353 d!361301)))

(assert (=> bs!327469 (= lambda!50274 lambda!50251)))

(declare-fun bs!327470 () Bool)

(assert (= bs!327470 (and d!361353 d!361329)))

(assert (=> bs!327470 (= lambda!50274 lambda!50263)))

(declare-fun bs!327471 () Bool)

(assert (= bs!327471 (and d!361353 d!361275)))

(assert (=> bs!327471 (= lambda!50274 lambda!50245)))

(declare-fun bs!327472 () Bool)

(assert (= bs!327472 (and d!361353 d!361273)))

(assert (=> bs!327472 (= lambda!50274 lambda!50244)))

(declare-fun bs!327473 () Bool)

(assert (= bs!327473 (and d!361353 d!361317)))

(assert (=> bs!327473 (= lambda!50274 lambda!50253)))

(declare-fun bs!327474 () Bool)

(assert (= bs!327474 (and d!361353 d!361327)))

(assert (=> bs!327474 (= lambda!50274 lambda!50262)))

(declare-fun bs!327475 () Bool)

(assert (= bs!327475 (and d!361353 d!361325)))

(assert (=> bs!327475 (= lambda!50274 lambda!50261)))

(declare-fun bs!327476 () Bool)

(assert (= bs!327476 (and d!361353 d!361271)))

(assert (=> bs!327476 (= lambda!50274 lambda!50243)))

(declare-fun bs!327477 () Bool)

(assert (= bs!327477 (and d!361353 d!361339)))

(assert (=> bs!327477 (= lambda!50274 lambda!50268)))

(declare-fun bs!327478 () Bool)

(assert (= bs!327478 (and d!361353 d!361343)))

(assert (=> bs!327478 (= lambda!50274 lambda!50269)))

(declare-fun bs!327479 () Bool)

(assert (= bs!327479 (and d!361353 d!361303)))

(assert (=> bs!327479 (= lambda!50274 lambda!50252)))

(declare-fun bs!327480 () Bool)

(assert (= bs!327480 (and d!361353 d!361269)))

(assert (=> bs!327480 (= lambda!50274 lambda!50242)))

(assert (=> d!361353 (= (inv!17107 setElem!8101) (forall!3209 (exprs!1055 setElem!8101) lambda!50274))))

(declare-fun bs!327481 () Bool)

(assert (= bs!327481 d!361353))

(declare-fun m!1433337 () Bool)

(assert (=> bs!327481 m!1433337))

(assert (=> setNonEmpty!8102 d!361353))

(declare-fun bs!327482 () Bool)

(declare-fun d!361355 () Bool)

(assert (= bs!327482 (and d!361355 d!361279)))

(declare-fun lambda!50275 () Int)

(assert (=> bs!327482 (= lambda!50275 lambda!50249)))

(declare-fun bs!327483 () Bool)

(assert (= bs!327483 (and d!361355 d!361345)))

(assert (=> bs!327483 (= lambda!50275 lambda!50270)))

(declare-fun bs!327484 () Bool)

(assert (= bs!327484 (and d!361355 d!361319)))

(assert (=> bs!327484 (= lambda!50275 lambda!50254)))

(declare-fun bs!327485 () Bool)

(assert (= bs!327485 (and d!361355 d!361333)))

(assert (=> bs!327485 (= lambda!50275 lambda!50267)))

(declare-fun bs!327486 () Bool)

(assert (= bs!327486 (and d!361355 d!361301)))

(assert (=> bs!327486 (= lambda!50275 lambda!50251)))

(declare-fun bs!327487 () Bool)

(assert (= bs!327487 (and d!361355 d!361329)))

(assert (=> bs!327487 (= lambda!50275 lambda!50263)))

(declare-fun bs!327488 () Bool)

(assert (= bs!327488 (and d!361355 d!361275)))

(assert (=> bs!327488 (= lambda!50275 lambda!50245)))

(declare-fun bs!327489 () Bool)

(assert (= bs!327489 (and d!361355 d!361273)))

(assert (=> bs!327489 (= lambda!50275 lambda!50244)))

(declare-fun bs!327490 () Bool)

(assert (= bs!327490 (and d!361355 d!361317)))

(assert (=> bs!327490 (= lambda!50275 lambda!50253)))

(declare-fun bs!327491 () Bool)

(assert (= bs!327491 (and d!361355 d!361327)))

(assert (=> bs!327491 (= lambda!50275 lambda!50262)))

(declare-fun bs!327492 () Bool)

(assert (= bs!327492 (and d!361355 d!361325)))

(assert (=> bs!327492 (= lambda!50275 lambda!50261)))

(declare-fun bs!327493 () Bool)

(assert (= bs!327493 (and d!361355 d!361271)))

(assert (=> bs!327493 (= lambda!50275 lambda!50243)))

(declare-fun bs!327494 () Bool)

(assert (= bs!327494 (and d!361355 d!361339)))

(assert (=> bs!327494 (= lambda!50275 lambda!50268)))

(declare-fun bs!327495 () Bool)

(assert (= bs!327495 (and d!361355 d!361343)))

(assert (=> bs!327495 (= lambda!50275 lambda!50269)))

(declare-fun bs!327496 () Bool)

(assert (= bs!327496 (and d!361355 d!361281)))

(assert (=> bs!327496 (= lambda!50275 lambda!50250)))

(declare-fun bs!327497 () Bool)

(assert (= bs!327497 (and d!361355 d!361353)))

(assert (=> bs!327497 (= lambda!50275 lambda!50274)))

(declare-fun bs!327498 () Bool)

(assert (= bs!327498 (and d!361355 d!361303)))

(assert (=> bs!327498 (= lambda!50275 lambda!50252)))

(declare-fun bs!327499 () Bool)

(assert (= bs!327499 (and d!361355 d!361269)))

(assert (=> bs!327499 (= lambda!50275 lambda!50242)))

(assert (=> d!361355 (= (inv!17107 setElem!8106) (forall!3209 (exprs!1055 setElem!8106) lambda!50275))))

(declare-fun bs!327500 () Bool)

(assert (= bs!327500 d!361355))

(declare-fun m!1433339 () Bool)

(assert (=> bs!327500 m!1433339))

(assert (=> setNonEmpty!8106 d!361355))

(declare-fun bs!327501 () Bool)

(declare-fun d!361357 () Bool)

(assert (= bs!327501 (and d!361357 d!361279)))

(declare-fun lambda!50276 () Int)

(assert (=> bs!327501 (= lambda!50276 lambda!50249)))

(declare-fun bs!327502 () Bool)

(assert (= bs!327502 (and d!361357 d!361345)))

(assert (=> bs!327502 (= lambda!50276 lambda!50270)))

(declare-fun bs!327503 () Bool)

(assert (= bs!327503 (and d!361357 d!361319)))

(assert (=> bs!327503 (= lambda!50276 lambda!50254)))

(declare-fun bs!327504 () Bool)

(assert (= bs!327504 (and d!361357 d!361333)))

(assert (=> bs!327504 (= lambda!50276 lambda!50267)))

(declare-fun bs!327505 () Bool)

(assert (= bs!327505 (and d!361357 d!361301)))

(assert (=> bs!327505 (= lambda!50276 lambda!50251)))

(declare-fun bs!327506 () Bool)

(assert (= bs!327506 (and d!361357 d!361329)))

(assert (=> bs!327506 (= lambda!50276 lambda!50263)))

(declare-fun bs!327507 () Bool)

(assert (= bs!327507 (and d!361357 d!361275)))

(assert (=> bs!327507 (= lambda!50276 lambda!50245)))

(declare-fun bs!327508 () Bool)

(assert (= bs!327508 (and d!361357 d!361355)))

(assert (=> bs!327508 (= lambda!50276 lambda!50275)))

(declare-fun bs!327509 () Bool)

(assert (= bs!327509 (and d!361357 d!361273)))

(assert (=> bs!327509 (= lambda!50276 lambda!50244)))

(declare-fun bs!327510 () Bool)

(assert (= bs!327510 (and d!361357 d!361317)))

(assert (=> bs!327510 (= lambda!50276 lambda!50253)))

(declare-fun bs!327511 () Bool)

(assert (= bs!327511 (and d!361357 d!361327)))

(assert (=> bs!327511 (= lambda!50276 lambda!50262)))

(declare-fun bs!327512 () Bool)

(assert (= bs!327512 (and d!361357 d!361325)))

(assert (=> bs!327512 (= lambda!50276 lambda!50261)))

(declare-fun bs!327513 () Bool)

(assert (= bs!327513 (and d!361357 d!361271)))

(assert (=> bs!327513 (= lambda!50276 lambda!50243)))

(declare-fun bs!327514 () Bool)

(assert (= bs!327514 (and d!361357 d!361339)))

(assert (=> bs!327514 (= lambda!50276 lambda!50268)))

(declare-fun bs!327515 () Bool)

(assert (= bs!327515 (and d!361357 d!361343)))

(assert (=> bs!327515 (= lambda!50276 lambda!50269)))

(declare-fun bs!327516 () Bool)

(assert (= bs!327516 (and d!361357 d!361281)))

(assert (=> bs!327516 (= lambda!50276 lambda!50250)))

(declare-fun bs!327517 () Bool)

(assert (= bs!327517 (and d!361357 d!361353)))

(assert (=> bs!327517 (= lambda!50276 lambda!50274)))

(declare-fun bs!327518 () Bool)

(assert (= bs!327518 (and d!361357 d!361303)))

(assert (=> bs!327518 (= lambda!50276 lambda!50252)))

(declare-fun bs!327519 () Bool)

(assert (= bs!327519 (and d!361357 d!361269)))

(assert (=> bs!327519 (= lambda!50276 lambda!50242)))

(assert (=> d!361357 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))) lambda!50276))))

(declare-fun bs!327520 () Bool)

(assert (= bs!327520 d!361357))

(declare-fun m!1433341 () Bool)

(assert (=> bs!327520 m!1433341))

(assert (=> b!1282599 d!361357))

(declare-fun bs!327521 () Bool)

(declare-fun d!361359 () Bool)

(assert (= bs!327521 (and d!361359 d!361279)))

(declare-fun lambda!50277 () Int)

(assert (=> bs!327521 (= lambda!50277 lambda!50249)))

(declare-fun bs!327522 () Bool)

(assert (= bs!327522 (and d!361359 d!361319)))

(assert (=> bs!327522 (= lambda!50277 lambda!50254)))

(declare-fun bs!327523 () Bool)

(assert (= bs!327523 (and d!361359 d!361333)))

(assert (=> bs!327523 (= lambda!50277 lambda!50267)))

(declare-fun bs!327524 () Bool)

(assert (= bs!327524 (and d!361359 d!361301)))

(assert (=> bs!327524 (= lambda!50277 lambda!50251)))

(declare-fun bs!327525 () Bool)

(assert (= bs!327525 (and d!361359 d!361329)))

(assert (=> bs!327525 (= lambda!50277 lambda!50263)))

(declare-fun bs!327526 () Bool)

(assert (= bs!327526 (and d!361359 d!361275)))

(assert (=> bs!327526 (= lambda!50277 lambda!50245)))

(declare-fun bs!327527 () Bool)

(assert (= bs!327527 (and d!361359 d!361355)))

(assert (=> bs!327527 (= lambda!50277 lambda!50275)))

(declare-fun bs!327528 () Bool)

(assert (= bs!327528 (and d!361359 d!361273)))

(assert (=> bs!327528 (= lambda!50277 lambda!50244)))

(declare-fun bs!327529 () Bool)

(assert (= bs!327529 (and d!361359 d!361317)))

(assert (=> bs!327529 (= lambda!50277 lambda!50253)))

(declare-fun bs!327530 () Bool)

(assert (= bs!327530 (and d!361359 d!361327)))

(assert (=> bs!327530 (= lambda!50277 lambda!50262)))

(declare-fun bs!327531 () Bool)

(assert (= bs!327531 (and d!361359 d!361325)))

(assert (=> bs!327531 (= lambda!50277 lambda!50261)))

(declare-fun bs!327532 () Bool)

(assert (= bs!327532 (and d!361359 d!361271)))

(assert (=> bs!327532 (= lambda!50277 lambda!50243)))

(declare-fun bs!327533 () Bool)

(assert (= bs!327533 (and d!361359 d!361339)))

(assert (=> bs!327533 (= lambda!50277 lambda!50268)))

(declare-fun bs!327534 () Bool)

(assert (= bs!327534 (and d!361359 d!361343)))

(assert (=> bs!327534 (= lambda!50277 lambda!50269)))

(declare-fun bs!327535 () Bool)

(assert (= bs!327535 (and d!361359 d!361345)))

(assert (=> bs!327535 (= lambda!50277 lambda!50270)))

(declare-fun bs!327536 () Bool)

(assert (= bs!327536 (and d!361359 d!361357)))

(assert (=> bs!327536 (= lambda!50277 lambda!50276)))

(declare-fun bs!327537 () Bool)

(assert (= bs!327537 (and d!361359 d!361281)))

(assert (=> bs!327537 (= lambda!50277 lambda!50250)))

(declare-fun bs!327538 () Bool)

(assert (= bs!327538 (and d!361359 d!361353)))

(assert (=> bs!327538 (= lambda!50277 lambda!50274)))

(declare-fun bs!327539 () Bool)

(assert (= bs!327539 (and d!361359 d!361303)))

(assert (=> bs!327539 (= lambda!50277 lambda!50252)))

(declare-fun bs!327540 () Bool)

(assert (= bs!327540 (and d!361359 d!361269)))

(assert (=> bs!327540 (= lambda!50277 lambda!50242)))

(assert (=> d!361359 (= (inv!17107 (_1!7178 (_1!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) (forall!3209 (exprs!1055 (_1!7178 (_1!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))) lambda!50277))))

(declare-fun bs!327541 () Bool)

(assert (= bs!327541 d!361359))

(declare-fun m!1433343 () Bool)

(assert (=> bs!327541 m!1433343))

(assert (=> b!1282606 d!361359))

(declare-fun b!1282758 () Bool)

(declare-fun res!575541 () Bool)

(declare-fun e!822432 () Bool)

(assert (=> b!1282758 (=> (not res!575541) (not e!822432))))

(assert (=> b!1282758 (= res!575541 (isBalanced!1219 (right!11307 (c!211407 ts!110))))))

(declare-fun d!361361 () Bool)

(declare-fun res!575542 () Bool)

(declare-fun e!822433 () Bool)

(assert (=> d!361361 (=> res!575542 e!822433)))

(assert (=> d!361361 (= res!575542 (not ((_ is Node!4181) (c!211407 ts!110))))))

(assert (=> d!361361 (= (isBalanced!1219 (c!211407 ts!110)) e!822433)))

(declare-fun b!1282759 () Bool)

(declare-fun res!575540 () Bool)

(assert (=> b!1282759 (=> (not res!575540) (not e!822432))))

(assert (=> b!1282759 (= res!575540 (not (isEmpty!7548 (left!10977 (c!211407 ts!110)))))))

(declare-fun b!1282760 () Bool)

(declare-fun res!575544 () Bool)

(assert (=> b!1282760 (=> (not res!575544) (not e!822432))))

(assert (=> b!1282760 (= res!575544 (<= (- (height!590 (left!10977 (c!211407 ts!110))) (height!590 (right!11307 (c!211407 ts!110)))) 1))))

(declare-fun b!1282761 () Bool)

(assert (=> b!1282761 (= e!822432 (not (isEmpty!7548 (right!11307 (c!211407 ts!110)))))))

(declare-fun b!1282762 () Bool)

(declare-fun res!575543 () Bool)

(assert (=> b!1282762 (=> (not res!575543) (not e!822432))))

(assert (=> b!1282762 (= res!575543 (isBalanced!1219 (left!10977 (c!211407 ts!110))))))

(declare-fun b!1282763 () Bool)

(assert (=> b!1282763 (= e!822433 e!822432)))

(declare-fun res!575539 () Bool)

(assert (=> b!1282763 (=> (not res!575539) (not e!822432))))

(assert (=> b!1282763 (= res!575539 (<= (- 1) (- (height!590 (left!10977 (c!211407 ts!110))) (height!590 (right!11307 (c!211407 ts!110))))))))

(assert (= (and d!361361 (not res!575542)) b!1282763))

(assert (= (and b!1282763 res!575539) b!1282760))

(assert (= (and b!1282760 res!575544) b!1282762))

(assert (= (and b!1282762 res!575543) b!1282758))

(assert (= (and b!1282758 res!575541) b!1282759))

(assert (= (and b!1282759 res!575540) b!1282761))

(assert (=> b!1282759 m!1433159))

(declare-fun m!1433345 () Bool)

(assert (=> b!1282762 m!1433345))

(declare-fun m!1433347 () Bool)

(assert (=> b!1282758 m!1433347))

(assert (=> b!1282760 m!1433211))

(assert (=> b!1282760 m!1433213))

(assert (=> b!1282763 m!1433211))

(assert (=> b!1282763 m!1433213))

(declare-fun m!1433349 () Bool)

(assert (=> b!1282761 m!1433349))

(assert (=> d!361219 d!361361))

(declare-fun bs!327542 () Bool)

(declare-fun d!361363 () Bool)

(assert (= bs!327542 (and d!361363 d!361279)))

(declare-fun lambda!50278 () Int)

(assert (=> bs!327542 (= lambda!50278 lambda!50249)))

(declare-fun bs!327543 () Bool)

(assert (= bs!327543 (and d!361363 d!361319)))

(assert (=> bs!327543 (= lambda!50278 lambda!50254)))

(declare-fun bs!327544 () Bool)

(assert (= bs!327544 (and d!361363 d!361333)))

(assert (=> bs!327544 (= lambda!50278 lambda!50267)))

(declare-fun bs!327545 () Bool)

(assert (= bs!327545 (and d!361363 d!361301)))

(assert (=> bs!327545 (= lambda!50278 lambda!50251)))

(declare-fun bs!327546 () Bool)

(assert (= bs!327546 (and d!361363 d!361329)))

(assert (=> bs!327546 (= lambda!50278 lambda!50263)))

(declare-fun bs!327547 () Bool)

(assert (= bs!327547 (and d!361363 d!361275)))

(assert (=> bs!327547 (= lambda!50278 lambda!50245)))

(declare-fun bs!327548 () Bool)

(assert (= bs!327548 (and d!361363 d!361355)))

(assert (=> bs!327548 (= lambda!50278 lambda!50275)))

(declare-fun bs!327549 () Bool)

(assert (= bs!327549 (and d!361363 d!361273)))

(assert (=> bs!327549 (= lambda!50278 lambda!50244)))

(declare-fun bs!327550 () Bool)

(assert (= bs!327550 (and d!361363 d!361317)))

(assert (=> bs!327550 (= lambda!50278 lambda!50253)))

(declare-fun bs!327551 () Bool)

(assert (= bs!327551 (and d!361363 d!361327)))

(assert (=> bs!327551 (= lambda!50278 lambda!50262)))

(declare-fun bs!327552 () Bool)

(assert (= bs!327552 (and d!361363 d!361359)))

(assert (=> bs!327552 (= lambda!50278 lambda!50277)))

(declare-fun bs!327553 () Bool)

(assert (= bs!327553 (and d!361363 d!361325)))

(assert (=> bs!327553 (= lambda!50278 lambda!50261)))

(declare-fun bs!327554 () Bool)

(assert (= bs!327554 (and d!361363 d!361271)))

(assert (=> bs!327554 (= lambda!50278 lambda!50243)))

(declare-fun bs!327555 () Bool)

(assert (= bs!327555 (and d!361363 d!361339)))

(assert (=> bs!327555 (= lambda!50278 lambda!50268)))

(declare-fun bs!327556 () Bool)

(assert (= bs!327556 (and d!361363 d!361343)))

(assert (=> bs!327556 (= lambda!50278 lambda!50269)))

(declare-fun bs!327557 () Bool)

(assert (= bs!327557 (and d!361363 d!361345)))

(assert (=> bs!327557 (= lambda!50278 lambda!50270)))

(declare-fun bs!327558 () Bool)

(assert (= bs!327558 (and d!361363 d!361357)))

(assert (=> bs!327558 (= lambda!50278 lambda!50276)))

(declare-fun bs!327559 () Bool)

(assert (= bs!327559 (and d!361363 d!361281)))

(assert (=> bs!327559 (= lambda!50278 lambda!50250)))

(declare-fun bs!327560 () Bool)

(assert (= bs!327560 (and d!361363 d!361353)))

(assert (=> bs!327560 (= lambda!50278 lambda!50274)))

(declare-fun bs!327561 () Bool)

(assert (= bs!327561 (and d!361363 d!361303)))

(assert (=> bs!327561 (= lambda!50278 lambda!50252)))

(declare-fun bs!327562 () Bool)

(assert (= bs!327562 (and d!361363 d!361269)))

(assert (=> bs!327562 (= lambda!50278 lambda!50242)))

(assert (=> d!361363 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 mapDefault!6439)))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapDefault!6439)))) lambda!50278))))

(declare-fun bs!327563 () Bool)

(assert (= bs!327563 d!361363))

(declare-fun m!1433351 () Bool)

(assert (=> bs!327563 m!1433351))

(assert (=> b!1282543 d!361363))

(declare-fun bs!327564 () Bool)

(declare-fun d!361365 () Bool)

(assert (= bs!327564 (and d!361365 d!361279)))

(declare-fun lambda!50279 () Int)

(assert (=> bs!327564 (= lambda!50279 lambda!50249)))

(declare-fun bs!327565 () Bool)

(assert (= bs!327565 (and d!361365 d!361319)))

(assert (=> bs!327565 (= lambda!50279 lambda!50254)))

(declare-fun bs!327566 () Bool)

(assert (= bs!327566 (and d!361365 d!361333)))

(assert (=> bs!327566 (= lambda!50279 lambda!50267)))

(declare-fun bs!327567 () Bool)

(assert (= bs!327567 (and d!361365 d!361301)))

(assert (=> bs!327567 (= lambda!50279 lambda!50251)))

(declare-fun bs!327568 () Bool)

(assert (= bs!327568 (and d!361365 d!361329)))

(assert (=> bs!327568 (= lambda!50279 lambda!50263)))

(declare-fun bs!327569 () Bool)

(assert (= bs!327569 (and d!361365 d!361275)))

(assert (=> bs!327569 (= lambda!50279 lambda!50245)))

(declare-fun bs!327570 () Bool)

(assert (= bs!327570 (and d!361365 d!361355)))

(assert (=> bs!327570 (= lambda!50279 lambda!50275)))

(declare-fun bs!327571 () Bool)

(assert (= bs!327571 (and d!361365 d!361273)))

(assert (=> bs!327571 (= lambda!50279 lambda!50244)))

(declare-fun bs!327572 () Bool)

(assert (= bs!327572 (and d!361365 d!361317)))

(assert (=> bs!327572 (= lambda!50279 lambda!50253)))

(declare-fun bs!327573 () Bool)

(assert (= bs!327573 (and d!361365 d!361327)))

(assert (=> bs!327573 (= lambda!50279 lambda!50262)))

(declare-fun bs!327574 () Bool)

(assert (= bs!327574 (and d!361365 d!361363)))

(assert (=> bs!327574 (= lambda!50279 lambda!50278)))

(declare-fun bs!327575 () Bool)

(assert (= bs!327575 (and d!361365 d!361359)))

(assert (=> bs!327575 (= lambda!50279 lambda!50277)))

(declare-fun bs!327576 () Bool)

(assert (= bs!327576 (and d!361365 d!361325)))

(assert (=> bs!327576 (= lambda!50279 lambda!50261)))

(declare-fun bs!327577 () Bool)

(assert (= bs!327577 (and d!361365 d!361271)))

(assert (=> bs!327577 (= lambda!50279 lambda!50243)))

(declare-fun bs!327578 () Bool)

(assert (= bs!327578 (and d!361365 d!361339)))

(assert (=> bs!327578 (= lambda!50279 lambda!50268)))

(declare-fun bs!327579 () Bool)

(assert (= bs!327579 (and d!361365 d!361343)))

(assert (=> bs!327579 (= lambda!50279 lambda!50269)))

(declare-fun bs!327580 () Bool)

(assert (= bs!327580 (and d!361365 d!361345)))

(assert (=> bs!327580 (= lambda!50279 lambda!50270)))

(declare-fun bs!327581 () Bool)

(assert (= bs!327581 (and d!361365 d!361357)))

(assert (=> bs!327581 (= lambda!50279 lambda!50276)))

(declare-fun bs!327582 () Bool)

(assert (= bs!327582 (and d!361365 d!361281)))

(assert (=> bs!327582 (= lambda!50279 lambda!50250)))

(declare-fun bs!327583 () Bool)

(assert (= bs!327583 (and d!361365 d!361353)))

(assert (=> bs!327583 (= lambda!50279 lambda!50274)))

(declare-fun bs!327584 () Bool)

(assert (= bs!327584 (and d!361365 d!361303)))

(assert (=> bs!327584 (= lambda!50279 lambda!50252)))

(declare-fun bs!327585 () Bool)

(assert (= bs!327585 (and d!361365 d!361269)))

(assert (=> bs!327585 (= lambda!50279 lambda!50242)))

(assert (=> d!361365 (= (inv!17107 setElem!8117) (forall!3209 (exprs!1055 setElem!8117) lambda!50279))))

(declare-fun bs!327586 () Bool)

(assert (= bs!327586 d!361365))

(declare-fun m!1433353 () Bool)

(assert (=> bs!327586 m!1433353))

(assert (=> setNonEmpty!8117 d!361365))

(declare-fun bs!327587 () Bool)

(declare-fun d!361367 () Bool)

(assert (= bs!327587 (and d!361367 d!361279)))

(declare-fun lambda!50280 () Int)

(assert (=> bs!327587 (= lambda!50280 lambda!50249)))

(declare-fun bs!327588 () Bool)

(assert (= bs!327588 (and d!361367 d!361365)))

(assert (=> bs!327588 (= lambda!50280 lambda!50279)))

(declare-fun bs!327589 () Bool)

(assert (= bs!327589 (and d!361367 d!361319)))

(assert (=> bs!327589 (= lambda!50280 lambda!50254)))

(declare-fun bs!327590 () Bool)

(assert (= bs!327590 (and d!361367 d!361333)))

(assert (=> bs!327590 (= lambda!50280 lambda!50267)))

(declare-fun bs!327591 () Bool)

(assert (= bs!327591 (and d!361367 d!361301)))

(assert (=> bs!327591 (= lambda!50280 lambda!50251)))

(declare-fun bs!327592 () Bool)

(assert (= bs!327592 (and d!361367 d!361329)))

(assert (=> bs!327592 (= lambda!50280 lambda!50263)))

(declare-fun bs!327593 () Bool)

(assert (= bs!327593 (and d!361367 d!361275)))

(assert (=> bs!327593 (= lambda!50280 lambda!50245)))

(declare-fun bs!327594 () Bool)

(assert (= bs!327594 (and d!361367 d!361355)))

(assert (=> bs!327594 (= lambda!50280 lambda!50275)))

(declare-fun bs!327595 () Bool)

(assert (= bs!327595 (and d!361367 d!361273)))

(assert (=> bs!327595 (= lambda!50280 lambda!50244)))

(declare-fun bs!327596 () Bool)

(assert (= bs!327596 (and d!361367 d!361317)))

(assert (=> bs!327596 (= lambda!50280 lambda!50253)))

(declare-fun bs!327597 () Bool)

(assert (= bs!327597 (and d!361367 d!361327)))

(assert (=> bs!327597 (= lambda!50280 lambda!50262)))

(declare-fun bs!327598 () Bool)

(assert (= bs!327598 (and d!361367 d!361363)))

(assert (=> bs!327598 (= lambda!50280 lambda!50278)))

(declare-fun bs!327599 () Bool)

(assert (= bs!327599 (and d!361367 d!361359)))

(assert (=> bs!327599 (= lambda!50280 lambda!50277)))

(declare-fun bs!327600 () Bool)

(assert (= bs!327600 (and d!361367 d!361325)))

(assert (=> bs!327600 (= lambda!50280 lambda!50261)))

(declare-fun bs!327601 () Bool)

(assert (= bs!327601 (and d!361367 d!361271)))

(assert (=> bs!327601 (= lambda!50280 lambda!50243)))

(declare-fun bs!327602 () Bool)

(assert (= bs!327602 (and d!361367 d!361339)))

(assert (=> bs!327602 (= lambda!50280 lambda!50268)))

(declare-fun bs!327603 () Bool)

(assert (= bs!327603 (and d!361367 d!361343)))

(assert (=> bs!327603 (= lambda!50280 lambda!50269)))

(declare-fun bs!327604 () Bool)

(assert (= bs!327604 (and d!361367 d!361345)))

(assert (=> bs!327604 (= lambda!50280 lambda!50270)))

(declare-fun bs!327605 () Bool)

(assert (= bs!327605 (and d!361367 d!361357)))

(assert (=> bs!327605 (= lambda!50280 lambda!50276)))

(declare-fun bs!327606 () Bool)

(assert (= bs!327606 (and d!361367 d!361281)))

(assert (=> bs!327606 (= lambda!50280 lambda!50250)))

(declare-fun bs!327607 () Bool)

(assert (= bs!327607 (and d!361367 d!361353)))

(assert (=> bs!327607 (= lambda!50280 lambda!50274)))

(declare-fun bs!327608 () Bool)

(assert (= bs!327608 (and d!361367 d!361303)))

(assert (=> bs!327608 (= lambda!50280 lambda!50252)))

(declare-fun bs!327609 () Bool)

(assert (= bs!327609 (and d!361367 d!361269)))

(assert (=> bs!327609 (= lambda!50280 lambda!50242)))

(assert (=> d!361367 (= (inv!17107 (_2!7176 (_1!7177 (h!18120 mapValue!6439)))) (forall!3209 (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapValue!6439)))) lambda!50280))))

(declare-fun bs!327610 () Bool)

(assert (= bs!327610 d!361367))

(declare-fun m!1433355 () Bool)

(assert (=> bs!327610 m!1433355))

(assert (=> b!1282544 d!361367))

(declare-fun b!1282768 () Bool)

(declare-fun e!822436 () Bool)

(declare-fun tp!372511 () Bool)

(declare-fun tp!372512 () Bool)

(assert (=> b!1282768 (= e!822436 (and tp!372511 tp!372512))))

(assert (=> b!1282547 (= tp!372406 e!822436)))

(assert (= (and b!1282547 ((_ is Cons!12718) (exprs!1055 setElem!8103))) b!1282768))

(declare-fun e!822437 () Bool)

(assert (=> b!1282570 (= tp!372431 e!822437)))

(declare-fun b!1282770 () Bool)

(declare-fun tp!372514 () Bool)

(declare-fun tp!372516 () Bool)

(assert (=> b!1282770 (= e!822437 (and tp!372514 tp!372516))))

(declare-fun b!1282772 () Bool)

(declare-fun tp!372515 () Bool)

(declare-fun tp!372513 () Bool)

(assert (=> b!1282772 (= e!822437 (and tp!372515 tp!372513))))

(declare-fun b!1282769 () Bool)

(assert (=> b!1282769 (= e!822437 tp_is_empty!6525)))

(declare-fun b!1282771 () Bool)

(declare-fun tp!372517 () Bool)

(assert (=> b!1282771 (= e!822437 tp!372517)))

(assert (= (and b!1282570 ((_ is ElementMatch!3499) (regex!2185 (h!18123 (t!116612 rs!174))))) b!1282769))

(assert (= (and b!1282570 ((_ is Concat!5774) (regex!2185 (h!18123 (t!116612 rs!174))))) b!1282770))

(assert (= (and b!1282570 ((_ is Star!3499) (regex!2185 (h!18123 (t!116612 rs!174))))) b!1282771))

(assert (= (and b!1282570 ((_ is Union!3499) (regex!2185 (h!18123 (t!116612 rs!174))))) b!1282772))

(declare-fun condSetEmpty!8120 () Bool)

(assert (=> setNonEmpty!8113 (= condSetEmpty!8120 (= setRest!8113 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8120 () Bool)

(assert (=> setNonEmpty!8113 (= tp!372462 setRes!8120)))

(declare-fun setIsEmpty!8120 () Bool)

(assert (=> setIsEmpty!8120 setRes!8120))

(declare-fun tp!372522 () Bool)

(declare-fun setElem!8120 () Context!1110)

(declare-fun e!822440 () Bool)

(declare-fun setNonEmpty!8120 () Bool)

(assert (=> setNonEmpty!8120 (= setRes!8120 (and tp!372522 (inv!17107 setElem!8120) e!822440))))

(declare-fun setRest!8120 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8120 (= setRest!8113 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8120 true) setRest!8120))))

(declare-fun b!1282777 () Bool)

(declare-fun tp!372523 () Bool)

(assert (=> b!1282777 (= e!822440 tp!372523)))

(assert (= (and setNonEmpty!8113 condSetEmpty!8120) setIsEmpty!8120))

(assert (= (and setNonEmpty!8113 (not condSetEmpty!8120)) setNonEmpty!8120))

(assert (= setNonEmpty!8120 b!1282777))

(declare-fun m!1433357 () Bool)

(assert (=> setNonEmpty!8120 m!1433357))

(declare-fun b!1282778 () Bool)

(declare-fun e!822442 () Bool)

(declare-fun tp!372524 () Bool)

(assert (=> b!1282778 (= e!822442 tp!372524)))

(declare-fun e!822443 () Bool)

(assert (=> b!1282594 (= tp!372464 e!822443)))

(declare-fun setIsEmpty!8121 () Bool)

(declare-fun setRes!8121 () Bool)

(assert (=> setIsEmpty!8121 setRes!8121))

(declare-fun setNonEmpty!8121 () Bool)

(declare-fun setElem!8121 () Context!1110)

(declare-fun tp!372525 () Bool)

(declare-fun e!822441 () Bool)

(assert (=> setNonEmpty!8121 (= setRes!8121 (and tp!372525 (inv!17107 setElem!8121) e!822441))))

(declare-fun setRest!8121 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8121 (= (_2!7179 (h!18125 (t!116614 mapValue!6435))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8121 true) setRest!8121))))

(declare-fun b!1282779 () Bool)

(declare-fun tp!372526 () Bool)

(assert (=> b!1282779 (= e!822441 tp!372526)))

(declare-fun tp!372527 () Bool)

(declare-fun b!1282780 () Bool)

(assert (=> b!1282780 (= e!822443 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 mapValue!6435))))) e!822442 tp_is_empty!6525 setRes!8121 tp!372527))))

(declare-fun condSetEmpty!8121 () Bool)

(assert (=> b!1282780 (= condSetEmpty!8121 (= (_2!7179 (h!18125 (t!116614 mapValue!6435))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282780 b!1282778))

(assert (= (and b!1282780 condSetEmpty!8121) setIsEmpty!8121))

(assert (= (and b!1282780 (not condSetEmpty!8121)) setNonEmpty!8121))

(assert (= setNonEmpty!8121 b!1282779))

(assert (= (and b!1282594 ((_ is Cons!12724) (t!116614 mapValue!6435))) b!1282780))

(declare-fun m!1433359 () Bool)

(assert (=> setNonEmpty!8121 m!1433359))

(declare-fun m!1433361 () Bool)

(assert (=> b!1282780 m!1433361))

(declare-fun b!1282781 () Bool)

(declare-fun e!822444 () Bool)

(declare-fun tp!372528 () Bool)

(declare-fun tp!372529 () Bool)

(assert (=> b!1282781 (= e!822444 (and tp!372528 tp!372529))))

(assert (=> b!1282546 (= tp!372404 e!822444)))

(assert (= (and b!1282546 ((_ is Cons!12718) (exprs!1055 setElem!8101))) b!1282781))

(declare-fun condSetEmpty!8122 () Bool)

(assert (=> setNonEmpty!8114 (= condSetEmpty!8122 (= setRest!8114 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8122 () Bool)

(assert (=> setNonEmpty!8114 (= tp!372469 setRes!8122)))

(declare-fun setIsEmpty!8122 () Bool)

(assert (=> setIsEmpty!8122 setRes!8122))

(declare-fun tp!372530 () Bool)

(declare-fun e!822445 () Bool)

(declare-fun setElem!8122 () Context!1110)

(declare-fun setNonEmpty!8122 () Bool)

(assert (=> setNonEmpty!8122 (= setRes!8122 (and tp!372530 (inv!17107 setElem!8122) e!822445))))

(declare-fun setRest!8122 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8122 (= setRest!8114 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8122 true) setRest!8122))))

(declare-fun b!1282782 () Bool)

(declare-fun tp!372531 () Bool)

(assert (=> b!1282782 (= e!822445 tp!372531)))

(assert (= (and setNonEmpty!8114 condSetEmpty!8122) setIsEmpty!8122))

(assert (= (and setNonEmpty!8114 (not condSetEmpty!8122)) setNonEmpty!8122))

(assert (= setNonEmpty!8122 b!1282782))

(declare-fun m!1433363 () Bool)

(assert (=> setNonEmpty!8122 m!1433363))

(declare-fun b!1282783 () Bool)

(declare-fun e!822447 () Bool)

(declare-fun tp!372532 () Bool)

(assert (=> b!1282783 (= e!822447 tp!372532)))

(declare-fun e!822448 () Bool)

(assert (=> b!1282560 (= tp!372421 e!822448)))

(declare-fun setIsEmpty!8123 () Bool)

(declare-fun setRes!8123 () Bool)

(assert (=> setIsEmpty!8123 setRes!8123))

(declare-fun e!822446 () Bool)

(declare-fun setNonEmpty!8123 () Bool)

(declare-fun tp!372533 () Bool)

(declare-fun setElem!8123 () Context!1110)

(assert (=> setNonEmpty!8123 (= setRes!8123 (and tp!372533 (inv!17107 setElem!8123) e!822446))))

(declare-fun setRest!8123 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8123 (= (_2!7179 (h!18125 (t!116614 mapDefault!6436))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8123 true) setRest!8123))))

(declare-fun b!1282784 () Bool)

(declare-fun tp!372534 () Bool)

(assert (=> b!1282784 (= e!822446 tp!372534)))

(declare-fun tp!372535 () Bool)

(declare-fun b!1282785 () Bool)

(assert (=> b!1282785 (= e!822448 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 mapDefault!6436))))) e!822447 tp_is_empty!6525 setRes!8123 tp!372535))))

(declare-fun condSetEmpty!8123 () Bool)

(assert (=> b!1282785 (= condSetEmpty!8123 (= (_2!7179 (h!18125 (t!116614 mapDefault!6436))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282785 b!1282783))

(assert (= (and b!1282785 condSetEmpty!8123) setIsEmpty!8123))

(assert (= (and b!1282785 (not condSetEmpty!8123)) setNonEmpty!8123))

(assert (= setNonEmpty!8123 b!1282784))

(assert (= (and b!1282560 ((_ is Cons!12724) (t!116614 mapDefault!6436))) b!1282785))

(declare-fun m!1433365 () Bool)

(assert (=> setNonEmpty!8123 m!1433365))

(declare-fun m!1433367 () Bool)

(assert (=> b!1282785 m!1433367))

(declare-fun condSetEmpty!8124 () Bool)

(assert (=> setNonEmpty!8115 (= condSetEmpty!8124 (= setRest!8115 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8124 () Bool)

(assert (=> setNonEmpty!8115 (= tp!372474 setRes!8124)))

(declare-fun setIsEmpty!8124 () Bool)

(assert (=> setIsEmpty!8124 setRes!8124))

(declare-fun tp!372536 () Bool)

(declare-fun setElem!8124 () Context!1110)

(declare-fun setNonEmpty!8124 () Bool)

(declare-fun e!822449 () Bool)

(assert (=> setNonEmpty!8124 (= setRes!8124 (and tp!372536 (inv!17107 setElem!8124) e!822449))))

(declare-fun setRest!8124 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8124 (= setRest!8115 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8124 true) setRest!8124))))

(declare-fun b!1282786 () Bool)

(declare-fun tp!372537 () Bool)

(assert (=> b!1282786 (= e!822449 tp!372537)))

(assert (= (and setNonEmpty!8115 condSetEmpty!8124) setIsEmpty!8124))

(assert (= (and setNonEmpty!8115 (not condSetEmpty!8124)) setNonEmpty!8124))

(assert (= setNonEmpty!8124 b!1282786))

(declare-fun m!1433369 () Bool)

(assert (=> setNonEmpty!8124 m!1433369))

(declare-fun b!1282787 () Bool)

(declare-fun e!822451 () Bool)

(declare-fun tp!372538 () Bool)

(assert (=> b!1282787 (= e!822451 tp!372538)))

(declare-fun e!822452 () Bool)

(assert (=> b!1282586 (= tp!372452 e!822452)))

(declare-fun setIsEmpty!8125 () Bool)

(declare-fun setRes!8125 () Bool)

(assert (=> setIsEmpty!8125 setRes!8125))

(declare-fun tp!372539 () Bool)

(declare-fun setNonEmpty!8125 () Bool)

(declare-fun e!822450 () Bool)

(declare-fun setElem!8125 () Context!1110)

(assert (=> setNonEmpty!8125 (= setRes!8125 (and tp!372539 (inv!17107 setElem!8125) e!822450))))

(declare-fun setRest!8125 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8125 (= (_2!7179 (h!18125 (t!116614 mapDefault!6442))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8125 true) setRest!8125))))

(declare-fun b!1282788 () Bool)

(declare-fun tp!372540 () Bool)

(assert (=> b!1282788 (= e!822450 tp!372540)))

(declare-fun tp!372541 () Bool)

(declare-fun b!1282789 () Bool)

(assert (=> b!1282789 (= e!822452 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 mapDefault!6442))))) e!822451 tp_is_empty!6525 setRes!8125 tp!372541))))

(declare-fun condSetEmpty!8125 () Bool)

(assert (=> b!1282789 (= condSetEmpty!8125 (= (_2!7179 (h!18125 (t!116614 mapDefault!6442))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282789 b!1282787))

(assert (= (and b!1282789 condSetEmpty!8125) setIsEmpty!8125))

(assert (= (and b!1282789 (not condSetEmpty!8125)) setNonEmpty!8125))

(assert (= setNonEmpty!8125 b!1282788))

(assert (= (and b!1282586 ((_ is Cons!12724) (t!116614 mapDefault!6442))) b!1282789))

(declare-fun m!1433371 () Bool)

(assert (=> setNonEmpty!8125 m!1433371))

(declare-fun m!1433373 () Bool)

(assert (=> b!1282789 m!1433373))

(declare-fun e!822453 () Bool)

(assert (=> b!1282630 (= tp!372506 e!822453)))

(declare-fun b!1282791 () Bool)

(declare-fun tp!372543 () Bool)

(declare-fun tp!372545 () Bool)

(assert (=> b!1282791 (= e!822453 (and tp!372543 tp!372545))))

(declare-fun b!1282793 () Bool)

(declare-fun tp!372544 () Bool)

(declare-fun tp!372542 () Bool)

(assert (=> b!1282793 (= e!822453 (and tp!372544 tp!372542))))

(declare-fun b!1282790 () Bool)

(assert (=> b!1282790 (= e!822453 tp_is_empty!6525)))

(declare-fun b!1282792 () Bool)

(declare-fun tp!372546 () Bool)

(assert (=> b!1282792 (= e!822453 tp!372546)))

(assert (= (and b!1282630 ((_ is ElementMatch!3499) (reg!3828 (regex!2185 (h!18123 rs!174))))) b!1282790))

(assert (= (and b!1282630 ((_ is Concat!5774) (reg!3828 (regex!2185 (h!18123 rs!174))))) b!1282791))

(assert (= (and b!1282630 ((_ is Star!3499) (reg!3828 (regex!2185 (h!18123 rs!174))))) b!1282792))

(assert (= (and b!1282630 ((_ is Union!3499) (reg!3828 (regex!2185 (h!18123 rs!174))))) b!1282793))

(declare-fun b!1282794 () Bool)

(declare-fun e!822454 () Bool)

(declare-fun tp!372547 () Bool)

(declare-fun tp!372548 () Bool)

(assert (=> b!1282794 (= e!822454 (and tp!372547 tp!372548))))

(assert (=> b!1282524 (= tp!372368 e!822454)))

(assert (= (and b!1282524 ((_ is Cons!12718) (exprs!1055 setElem!8096))) b!1282794))

(declare-fun b!1282795 () Bool)

(declare-fun e!822455 () Bool)

(declare-fun tp!372549 () Bool)

(declare-fun tp!372550 () Bool)

(assert (=> b!1282795 (= e!822455 (and tp!372549 tp!372550))))

(assert (=> b!1282549 (= tp!372408 e!822455)))

(assert (= (and b!1282549 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapValue!6436)))))) b!1282795))

(declare-fun b!1282796 () Bool)

(declare-fun e!822456 () Bool)

(declare-fun tp!372551 () Bool)

(declare-fun tp!372552 () Bool)

(assert (=> b!1282796 (= e!822456 (and tp!372551 tp!372552))))

(assert (=> b!1282589 (= tp!372457 e!822456)))

(assert (= (and b!1282589 ((_ is Cons!12718) (exprs!1055 setElem!8112))) b!1282796))

(declare-fun condSetEmpty!8126 () Bool)

(assert (=> setNonEmpty!8101 (= condSetEmpty!8126 (= setRest!8102 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8126 () Bool)

(assert (=> setNonEmpty!8101 (= tp!372401 setRes!8126)))

(declare-fun setIsEmpty!8126 () Bool)

(assert (=> setIsEmpty!8126 setRes!8126))

(declare-fun setNonEmpty!8126 () Bool)

(declare-fun setElem!8126 () Context!1110)

(declare-fun tp!372553 () Bool)

(declare-fun e!822457 () Bool)

(assert (=> setNonEmpty!8126 (= setRes!8126 (and tp!372553 (inv!17107 setElem!8126) e!822457))))

(declare-fun setRest!8126 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8126 (= setRest!8102 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8126 true) setRest!8126))))

(declare-fun b!1282797 () Bool)

(declare-fun tp!372554 () Bool)

(assert (=> b!1282797 (= e!822457 tp!372554)))

(assert (= (and setNonEmpty!8101 condSetEmpty!8126) setIsEmpty!8126))

(assert (= (and setNonEmpty!8101 (not condSetEmpty!8126)) setNonEmpty!8126))

(assert (= setNonEmpty!8126 b!1282797))

(declare-fun m!1433375 () Bool)

(assert (=> setNonEmpty!8126 m!1433375))

(declare-fun condSetEmpty!8127 () Bool)

(assert (=> setNonEmpty!8096 (= condSetEmpty!8127 (= setRest!8096 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8127 () Bool)

(assert (=> setNonEmpty!8096 (= tp!372371 setRes!8127)))

(declare-fun setIsEmpty!8127 () Bool)

(assert (=> setIsEmpty!8127 setRes!8127))

(declare-fun tp!372555 () Bool)

(declare-fun e!822458 () Bool)

(declare-fun setNonEmpty!8127 () Bool)

(declare-fun setElem!8127 () Context!1110)

(assert (=> setNonEmpty!8127 (= setRes!8127 (and tp!372555 (inv!17107 setElem!8127) e!822458))))

(declare-fun setRest!8127 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8127 (= setRest!8096 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8127 true) setRest!8127))))

(declare-fun b!1282798 () Bool)

(declare-fun tp!372556 () Bool)

(assert (=> b!1282798 (= e!822458 tp!372556)))

(assert (= (and setNonEmpty!8096 condSetEmpty!8127) setIsEmpty!8127))

(assert (= (and setNonEmpty!8096 (not condSetEmpty!8127)) setNonEmpty!8127))

(assert (= setNonEmpty!8127 b!1282798))

(declare-fun m!1433377 () Bool)

(assert (=> setNonEmpty!8127 m!1433377))

(declare-fun b!1282799 () Bool)

(declare-fun e!822459 () Bool)

(declare-fun tp!372557 () Bool)

(declare-fun tp!372558 () Bool)

(assert (=> b!1282799 (= e!822459 (and tp!372557 tp!372558))))

(assert (=> b!1282541 (= tp!372394 e!822459)))

(assert (= (and b!1282541 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapValue!6439)))))) b!1282799))

(declare-fun b!1282813 () Bool)

(declare-fun b_free!29955 () Bool)

(declare-fun b_next!30659 () Bool)

(assert (=> b!1282813 (= b_free!29955 (not b_next!30659))))

(declare-fun tp!372573 () Bool)

(declare-fun b_and!85099 () Bool)

(assert (=> b!1282813 (= tp!372573 b_and!85099)))

(declare-fun b_free!29957 () Bool)

(declare-fun b_next!30661 () Bool)

(assert (=> b!1282813 (= b_free!29957 (not b_next!30661))))

(declare-fun tp!372572 () Bool)

(declare-fun b_and!85101 () Bool)

(assert (=> b!1282813 (= tp!372572 b_and!85101)))

(declare-fun e!822473 () Bool)

(assert (=> b!1282617 (= tp!372489 e!822473)))

(declare-fun e!822475 () Bool)

(assert (=> b!1282813 (= e!822475 (and tp!372573 tp!372572))))

(declare-fun b!1282811 () Bool)

(declare-fun e!822472 () Bool)

(declare-fun e!822477 () Bool)

(declare-fun tp!372569 () Bool)

(declare-fun inv!21 (TokenValue!2275) Bool)

(assert (=> b!1282811 (= e!822472 (and (inv!21 (value!71905 (h!18124 (innerList!4241 (xs!6892 (c!211407 ts!110)))))) e!822477 tp!372569))))

(declare-fun tp!372571 () Bool)

(declare-fun b!1282810 () Bool)

(declare-fun inv!17109 (Token!4032) Bool)

(assert (=> b!1282810 (= e!822473 (and (inv!17109 (h!18124 (innerList!4241 (xs!6892 (c!211407 ts!110))))) e!822472 tp!372571))))

(declare-fun b!1282812 () Bool)

(declare-fun tp!372570 () Bool)

(assert (=> b!1282812 (= e!822477 (and tp!372570 (inv!17096 (tag!2447 (rule!3924 (h!18124 (innerList!4241 (xs!6892 (c!211407 ts!110))))))) (inv!17100 (transformation!2185 (rule!3924 (h!18124 (innerList!4241 (xs!6892 (c!211407 ts!110))))))) e!822475))))

(assert (= b!1282812 b!1282813))

(assert (= b!1282811 b!1282812))

(assert (= b!1282810 b!1282811))

(assert (= (and b!1282617 ((_ is Cons!12723) (innerList!4241 (xs!6892 (c!211407 ts!110))))) b!1282810))

(declare-fun m!1433379 () Bool)

(assert (=> b!1282811 m!1433379))

(declare-fun m!1433381 () Bool)

(assert (=> b!1282810 m!1433381))

(declare-fun m!1433383 () Bool)

(assert (=> b!1282812 m!1433383))

(declare-fun m!1433385 () Bool)

(assert (=> b!1282812 m!1433385))

(declare-fun e!822478 () Bool)

(assert (=> b!1282631 (= tp!372504 e!822478)))

(declare-fun b!1282815 () Bool)

(declare-fun tp!372575 () Bool)

(declare-fun tp!372577 () Bool)

(assert (=> b!1282815 (= e!822478 (and tp!372575 tp!372577))))

(declare-fun b!1282817 () Bool)

(declare-fun tp!372576 () Bool)

(declare-fun tp!372574 () Bool)

(assert (=> b!1282817 (= e!822478 (and tp!372576 tp!372574))))

(declare-fun b!1282814 () Bool)

(assert (=> b!1282814 (= e!822478 tp_is_empty!6525)))

(declare-fun b!1282816 () Bool)

(declare-fun tp!372578 () Bool)

(assert (=> b!1282816 (= e!822478 tp!372578)))

(assert (= (and b!1282631 ((_ is ElementMatch!3499) (regOne!7511 (regex!2185 (h!18123 rs!174))))) b!1282814))

(assert (= (and b!1282631 ((_ is Concat!5774) (regOne!7511 (regex!2185 (h!18123 rs!174))))) b!1282815))

(assert (= (and b!1282631 ((_ is Star!3499) (regOne!7511 (regex!2185 (h!18123 rs!174))))) b!1282816))

(assert (= (and b!1282631 ((_ is Union!3499) (regOne!7511 (regex!2185 (h!18123 rs!174))))) b!1282817))

(declare-fun e!822479 () Bool)

(assert (=> b!1282631 (= tp!372502 e!822479)))

(declare-fun b!1282819 () Bool)

(declare-fun tp!372580 () Bool)

(declare-fun tp!372582 () Bool)

(assert (=> b!1282819 (= e!822479 (and tp!372580 tp!372582))))

(declare-fun b!1282821 () Bool)

(declare-fun tp!372581 () Bool)

(declare-fun tp!372579 () Bool)

(assert (=> b!1282821 (= e!822479 (and tp!372581 tp!372579))))

(declare-fun b!1282818 () Bool)

(assert (=> b!1282818 (= e!822479 tp_is_empty!6525)))

(declare-fun b!1282820 () Bool)

(declare-fun tp!372583 () Bool)

(assert (=> b!1282820 (= e!822479 tp!372583)))

(assert (= (and b!1282631 ((_ is ElementMatch!3499) (regTwo!7511 (regex!2185 (h!18123 rs!174))))) b!1282818))

(assert (= (and b!1282631 ((_ is Concat!5774) (regTwo!7511 (regex!2185 (h!18123 rs!174))))) b!1282819))

(assert (= (and b!1282631 ((_ is Star!3499) (regTwo!7511 (regex!2185 (h!18123 rs!174))))) b!1282820))

(assert (= (and b!1282631 ((_ is Union!3499) (regTwo!7511 (regex!2185 (h!18123 rs!174))))) b!1282821))

(declare-fun b!1282822 () Bool)

(declare-fun e!822480 () Bool)

(declare-fun tp!372584 () Bool)

(declare-fun tp!372585 () Bool)

(assert (=> b!1282822 (= e!822480 (and tp!372584 tp!372585))))

(assert (=> b!1282592 (= tp!372461 e!822480)))

(assert (= (and b!1282592 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapValue!6435)))))) b!1282822))

(declare-fun b!1282823 () Bool)

(declare-fun e!822481 () Bool)

(declare-fun tp!372586 () Bool)

(declare-fun tp!372587 () Bool)

(assert (=> b!1282823 (= e!822481 (and tp!372586 tp!372587))))

(assert (=> b!1282558 (= tp!372418 e!822481)))

(assert (= (and b!1282558 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapDefault!6436)))))) b!1282823))

(declare-fun e!822482 () Bool)

(assert (=> b!1282596 (= tp!372465 e!822482)))

(declare-fun b!1282825 () Bool)

(declare-fun tp!372589 () Bool)

(declare-fun tp!372591 () Bool)

(assert (=> b!1282825 (= e!822482 (and tp!372589 tp!372591))))

(declare-fun b!1282827 () Bool)

(declare-fun tp!372590 () Bool)

(declare-fun tp!372588 () Bool)

(assert (=> b!1282827 (= e!822482 (and tp!372590 tp!372588))))

(declare-fun b!1282824 () Bool)

(assert (=> b!1282824 (= e!822482 tp_is_empty!6525)))

(declare-fun b!1282826 () Bool)

(declare-fun tp!372592 () Bool)

(assert (=> b!1282826 (= e!822482 tp!372592)))

(assert (= (and b!1282596 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282824))

(assert (= (and b!1282596 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282825))

(assert (= (and b!1282596 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282826))

(assert (= (and b!1282596 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282827))

(declare-fun setIsEmpty!8128 () Bool)

(declare-fun setRes!8128 () Bool)

(assert (=> setIsEmpty!8128 setRes!8128))

(declare-fun e!822484 () Bool)

(assert (=> b!1282596 (= tp!372467 e!822484)))

(declare-fun b!1282828 () Bool)

(declare-fun e!822485 () Bool)

(declare-fun tp!372594 () Bool)

(assert (=> b!1282828 (= e!822485 tp!372594)))

(declare-fun tp!372593 () Bool)

(declare-fun b!1282829 () Bool)

(declare-fun e!822483 () Bool)

(declare-fun tp!372595 () Bool)

(assert (=> b!1282829 (= e!822484 (and tp!372593 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) e!822483 tp_is_empty!6525 setRes!8128 tp!372595))))

(declare-fun condSetEmpty!8128 () Bool)

(assert (=> b!1282829 (= condSetEmpty!8128 (= (_2!7177 (h!18120 (t!116609 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282830 () Bool)

(declare-fun tp!372596 () Bool)

(assert (=> b!1282830 (= e!822483 tp!372596)))

(declare-fun setNonEmpty!8128 () Bool)

(declare-fun setElem!8128 () Context!1110)

(declare-fun tp!372597 () Bool)

(assert (=> setNonEmpty!8128 (= setRes!8128 (and tp!372597 (inv!17107 setElem!8128) e!822485))))

(declare-fun setRest!8128 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8128 (= (_2!7177 (h!18120 (t!116609 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8128 true) setRest!8128))))

(assert (= b!1282829 b!1282830))

(assert (= (and b!1282829 condSetEmpty!8128) setIsEmpty!8128))

(assert (= (and b!1282829 (not condSetEmpty!8128)) setNonEmpty!8128))

(assert (= setNonEmpty!8128 b!1282828))

(assert (= (and b!1282596 ((_ is Cons!12719) (t!116609 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) b!1282829))

(declare-fun m!1433387 () Bool)

(assert (=> b!1282829 m!1433387))

(declare-fun m!1433389 () Bool)

(assert (=> setNonEmpty!8128 m!1433389))

(declare-fun condSetEmpty!8129 () Bool)

(assert (=> setNonEmpty!8106 (= condSetEmpty!8129 (= setRest!8106 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8129 () Bool)

(assert (=> setNonEmpty!8106 (= tp!372419 setRes!8129)))

(declare-fun setIsEmpty!8129 () Bool)

(assert (=> setIsEmpty!8129 setRes!8129))

(declare-fun tp!372598 () Bool)

(declare-fun setElem!8129 () Context!1110)

(declare-fun e!822486 () Bool)

(declare-fun setNonEmpty!8129 () Bool)

(assert (=> setNonEmpty!8129 (= setRes!8129 (and tp!372598 (inv!17107 setElem!8129) e!822486))))

(declare-fun setRest!8129 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8129 (= setRest!8106 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8129 true) setRest!8129))))

(declare-fun b!1282831 () Bool)

(declare-fun tp!372599 () Bool)

(assert (=> b!1282831 (= e!822486 tp!372599)))

(assert (= (and setNonEmpty!8106 condSetEmpty!8129) setIsEmpty!8129))

(assert (= (and setNonEmpty!8106 (not condSetEmpty!8129)) setNonEmpty!8129))

(assert (= setNonEmpty!8129 b!1282831))

(declare-fun m!1433391 () Bool)

(assert (=> setNonEmpty!8129 m!1433391))

(declare-fun e!822487 () Bool)

(assert (=> b!1282599 (= tp!372470 e!822487)))

(declare-fun b!1282833 () Bool)

(declare-fun tp!372601 () Bool)

(declare-fun tp!372603 () Bool)

(assert (=> b!1282833 (= e!822487 (and tp!372601 tp!372603))))

(declare-fun b!1282835 () Bool)

(declare-fun tp!372602 () Bool)

(declare-fun tp!372600 () Bool)

(assert (=> b!1282835 (= e!822487 (and tp!372602 tp!372600))))

(declare-fun b!1282832 () Bool)

(assert (=> b!1282832 (= e!822487 tp_is_empty!6525)))

(declare-fun b!1282834 () Bool)

(declare-fun tp!372604 () Bool)

(assert (=> b!1282834 (= e!822487 tp!372604)))

(assert (= (and b!1282599 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282832))

(assert (= (and b!1282599 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282833))

(assert (= (and b!1282599 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282834))

(assert (= (and b!1282599 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) b!1282835))

(declare-fun setIsEmpty!8130 () Bool)

(declare-fun setRes!8130 () Bool)

(assert (=> setIsEmpty!8130 setRes!8130))

(declare-fun e!822489 () Bool)

(assert (=> b!1282599 (= tp!372472 e!822489)))

(declare-fun b!1282836 () Bool)

(declare-fun e!822490 () Bool)

(declare-fun tp!372606 () Bool)

(assert (=> b!1282836 (= e!822490 tp!372606)))

(declare-fun e!822488 () Bool)

(declare-fun tp!372605 () Bool)

(declare-fun tp!372607 () Bool)

(declare-fun b!1282837 () Bool)

(assert (=> b!1282837 (= e!822489 (and tp!372605 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))))) e!822488 tp_is_empty!6525 setRes!8130 tp!372607))))

(declare-fun condSetEmpty!8130 () Bool)

(assert (=> b!1282837 (= condSetEmpty!8130 (= (_2!7177 (h!18120 (t!116609 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282838 () Bool)

(declare-fun tp!372608 () Bool)

(assert (=> b!1282838 (= e!822488 tp!372608)))

(declare-fun tp!372609 () Bool)

(declare-fun setElem!8130 () Context!1110)

(declare-fun setNonEmpty!8130 () Bool)

(assert (=> setNonEmpty!8130 (= setRes!8130 (and tp!372609 (inv!17107 setElem!8130) e!822490))))

(declare-fun setRest!8130 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8130 (= (_2!7177 (h!18120 (t!116609 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8130 true) setRest!8130))))

(assert (= b!1282837 b!1282838))

(assert (= (and b!1282837 condSetEmpty!8130) setIsEmpty!8130))

(assert (= (and b!1282837 (not condSetEmpty!8130)) setNonEmpty!8130))

(assert (= setNonEmpty!8130 b!1282836))

(assert (= (and b!1282599 ((_ is Cons!12719) (t!116609 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411))))))))) b!1282837))

(declare-fun m!1433393 () Bool)

(assert (=> b!1282837 m!1433393))

(declare-fun m!1433395 () Bool)

(assert (=> setNonEmpty!8130 m!1433395))

(declare-fun b!1282839 () Bool)

(declare-fun e!822491 () Bool)

(declare-fun tp!372610 () Bool)

(declare-fun tp!372611 () Bool)

(assert (=> b!1282839 (= e!822491 (and tp!372610 tp!372611))))

(assert (=> b!1282602 (= tp!372477 e!822491)))

(assert (= (and b!1282602 ((_ is Cons!12718) (exprs!1055 setElem!8116))) b!1282839))

(declare-fun b!1282840 () Bool)

(declare-fun e!822493 () Bool)

(declare-fun tp!372612 () Bool)

(assert (=> b!1282840 (= e!822493 tp!372612)))

(declare-fun e!822494 () Bool)

(assert (=> b!1282606 (= tp!372482 e!822494)))

(declare-fun setIsEmpty!8131 () Bool)

(declare-fun setRes!8131 () Bool)

(assert (=> setIsEmpty!8131 setRes!8131))

(declare-fun e!822492 () Bool)

(declare-fun tp!372613 () Bool)

(declare-fun setElem!8131 () Context!1110)

(declare-fun setNonEmpty!8131 () Bool)

(assert (=> setNonEmpty!8131 (= setRes!8131 (and tp!372613 (inv!17107 setElem!8131) e!822492))))

(declare-fun setRest!8131 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8131 (= (_2!7179 (h!18125 (t!116614 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8131 true) setRest!8131))))

(declare-fun b!1282841 () Bool)

(declare-fun tp!372614 () Bool)

(assert (=> b!1282841 (= e!822492 tp!372614)))

(declare-fun b!1282842 () Bool)

(declare-fun tp!372615 () Bool)

(assert (=> b!1282842 (= e!822494 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))))) e!822493 tp_is_empty!6525 setRes!8131 tp!372615))))

(declare-fun condSetEmpty!8131 () Bool)

(assert (=> b!1282842 (= condSetEmpty!8131 (= (_2!7179 (h!18125 (t!116614 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282842 b!1282840))

(assert (= (and b!1282842 condSetEmpty!8131) setIsEmpty!8131))

(assert (= (and b!1282842 (not condSetEmpty!8131)) setNonEmpty!8131))

(assert (= setNonEmpty!8131 b!1282841))

(assert (= (and b!1282606 ((_ is Cons!12724) (t!116614 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) b!1282842))

(declare-fun m!1433397 () Bool)

(assert (=> setNonEmpty!8131 m!1433397))

(declare-fun m!1433399 () Bool)

(assert (=> b!1282842 m!1433399))

(declare-fun b!1282843 () Bool)

(declare-fun e!822495 () Bool)

(declare-fun tp!372616 () Bool)

(declare-fun tp!372617 () Bool)

(assert (=> b!1282843 (= e!822495 (and tp!372616 tp!372617))))

(assert (=> b!1282545 (= tp!372396 e!822495)))

(assert (= (and b!1282545 ((_ is Cons!12718) (exprs!1055 setElem!8102))) b!1282843))

(declare-fun b!1282844 () Bool)

(declare-fun e!822496 () Bool)

(declare-fun tp!372618 () Bool)

(declare-fun tp!372619 () Bool)

(assert (=> b!1282844 (= e!822496 (and tp!372618 tp!372619))))

(assert (=> b!1282604 (= tp!372479 e!822496)))

(assert (= (and b!1282604 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 (minValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))))) b!1282844))

(declare-fun e!822497 () Bool)

(assert (=> b!1282543 (= tp!372397 e!822497)))

(declare-fun b!1282846 () Bool)

(declare-fun tp!372621 () Bool)

(declare-fun tp!372623 () Bool)

(assert (=> b!1282846 (= e!822497 (and tp!372621 tp!372623))))

(declare-fun b!1282848 () Bool)

(declare-fun tp!372622 () Bool)

(declare-fun tp!372620 () Bool)

(assert (=> b!1282848 (= e!822497 (and tp!372622 tp!372620))))

(declare-fun b!1282845 () Bool)

(assert (=> b!1282845 (= e!822497 tp_is_empty!6525)))

(declare-fun b!1282847 () Bool)

(declare-fun tp!372624 () Bool)

(assert (=> b!1282847 (= e!822497 tp!372624)))

(assert (= (and b!1282543 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6439))))) b!1282845))

(assert (= (and b!1282543 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 mapDefault!6439))))) b!1282846))

(assert (= (and b!1282543 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6439))))) b!1282847))

(assert (= (and b!1282543 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6439))))) b!1282848))

(declare-fun setIsEmpty!8132 () Bool)

(declare-fun setRes!8132 () Bool)

(assert (=> setIsEmpty!8132 setRes!8132))

(declare-fun e!822499 () Bool)

(assert (=> b!1282543 (= tp!372403 e!822499)))

(declare-fun b!1282849 () Bool)

(declare-fun e!822500 () Bool)

(declare-fun tp!372626 () Bool)

(assert (=> b!1282849 (= e!822500 tp!372626)))

(declare-fun e!822498 () Bool)

(declare-fun tp!372625 () Bool)

(declare-fun b!1282850 () Bool)

(declare-fun tp!372627 () Bool)

(assert (=> b!1282850 (= e!822499 (and tp!372625 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 mapDefault!6439))))) e!822498 tp_is_empty!6525 setRes!8132 tp!372627))))

(declare-fun condSetEmpty!8132 () Bool)

(assert (=> b!1282850 (= condSetEmpty!8132 (= (_2!7177 (h!18120 (t!116609 mapDefault!6439))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282851 () Bool)

(declare-fun tp!372628 () Bool)

(assert (=> b!1282851 (= e!822498 tp!372628)))

(declare-fun setNonEmpty!8132 () Bool)

(declare-fun setElem!8132 () Context!1110)

(declare-fun tp!372629 () Bool)

(assert (=> setNonEmpty!8132 (= setRes!8132 (and tp!372629 (inv!17107 setElem!8132) e!822500))))

(declare-fun setRest!8132 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8132 (= (_2!7177 (h!18120 (t!116609 mapDefault!6439))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8132 true) setRest!8132))))

(assert (= b!1282850 b!1282851))

(assert (= (and b!1282850 condSetEmpty!8132) setIsEmpty!8132))

(assert (= (and b!1282850 (not condSetEmpty!8132)) setNonEmpty!8132))

(assert (= setNonEmpty!8132 b!1282849))

(assert (= (and b!1282543 ((_ is Cons!12719) (t!116609 mapDefault!6439))) b!1282850))

(declare-fun m!1433401 () Bool)

(assert (=> b!1282850 m!1433401))

(declare-fun m!1433403 () Bool)

(assert (=> setNonEmpty!8132 m!1433403))

(declare-fun condSetEmpty!8133 () Bool)

(assert (=> setNonEmpty!8117 (= condSetEmpty!8133 (= setRest!8117 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8133 () Bool)

(assert (=> setNonEmpty!8117 (= tp!372480 setRes!8133)))

(declare-fun setIsEmpty!8133 () Bool)

(assert (=> setIsEmpty!8133 setRes!8133))

(declare-fun tp!372630 () Bool)

(declare-fun e!822501 () Bool)

(declare-fun setElem!8133 () Context!1110)

(declare-fun setNonEmpty!8133 () Bool)

(assert (=> setNonEmpty!8133 (= setRes!8133 (and tp!372630 (inv!17107 setElem!8133) e!822501))))

(declare-fun setRest!8133 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8133 (= setRest!8117 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8133 true) setRest!8133))))

(declare-fun b!1282852 () Bool)

(declare-fun tp!372631 () Bool)

(assert (=> b!1282852 (= e!822501 tp!372631)))

(assert (= (and setNonEmpty!8117 condSetEmpty!8133) setIsEmpty!8133))

(assert (= (and setNonEmpty!8117 (not condSetEmpty!8133)) setNonEmpty!8133))

(assert (= setNonEmpty!8133 b!1282852))

(declare-fun m!1433405 () Bool)

(assert (=> setNonEmpty!8133 m!1433405))

(declare-fun setIsEmpty!8134 () Bool)

(declare-fun setRes!8134 () Bool)

(assert (=> setIsEmpty!8134 setRes!8134))

(declare-fun mapDefault!6443 () List!12790)

(declare-fun e!822504 () Bool)

(declare-fun e!822502 () Bool)

(declare-fun b!1282853 () Bool)

(declare-fun tp!372632 () Bool)

(assert (=> b!1282853 (= e!822502 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapDefault!6443)))) e!822504 tp_is_empty!6525 setRes!8134 tp!372632))))

(declare-fun condSetEmpty!8134 () Bool)

(assert (=> b!1282853 (= condSetEmpty!8134 (= (_2!7179 (h!18125 mapDefault!6443)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun tp!372638 () Bool)

(declare-fun setRes!8135 () Bool)

(declare-fun e!822506 () Bool)

(declare-fun setElem!8134 () Context!1110)

(declare-fun setNonEmpty!8134 () Bool)

(assert (=> setNonEmpty!8134 (= setRes!8135 (and tp!372638 (inv!17107 setElem!8134) e!822506))))

(declare-fun mapValue!6443 () List!12790)

(declare-fun setRest!8134 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8134 (= (_2!7179 (h!18125 mapValue!6443)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8134 true) setRest!8134))))

(declare-fun setIsEmpty!8135 () Bool)

(assert (=> setIsEmpty!8135 setRes!8135))

(declare-fun e!822505 () Bool)

(declare-fun e!822507 () Bool)

(declare-fun b!1282855 () Bool)

(declare-fun tp!372640 () Bool)

(assert (=> b!1282855 (= e!822507 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 mapValue!6443)))) e!822505 tp_is_empty!6525 setRes!8135 tp!372640))))

(declare-fun condSetEmpty!8135 () Bool)

(assert (=> b!1282855 (= condSetEmpty!8135 (= (_2!7179 (h!18125 mapValue!6443)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282856 () Bool)

(declare-fun e!822503 () Bool)

(declare-fun tp!372637 () Bool)

(assert (=> b!1282856 (= e!822503 tp!372637)))

(declare-fun setNonEmpty!8135 () Bool)

(declare-fun tp!372634 () Bool)

(declare-fun setElem!8135 () Context!1110)

(assert (=> setNonEmpty!8135 (= setRes!8134 (and tp!372634 (inv!17107 setElem!8135) e!822503))))

(declare-fun setRest!8135 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8135 (= (_2!7179 (h!18125 mapDefault!6443)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8135 true) setRest!8135))))

(declare-fun mapIsEmpty!6443 () Bool)

(declare-fun mapRes!6443 () Bool)

(assert (=> mapIsEmpty!6443 mapRes!6443))

(declare-fun b!1282857 () Bool)

(declare-fun tp!372635 () Bool)

(assert (=> b!1282857 (= e!822505 tp!372635)))

(declare-fun b!1282854 () Bool)

(declare-fun tp!372639 () Bool)

(assert (=> b!1282854 (= e!822506 tp!372639)))

(declare-fun condMapEmpty!6443 () Bool)

(assert (=> mapNonEmpty!6442 (= condMapEmpty!6443 (= mapRest!6442 ((as const (Array (_ BitVec 32) List!12790)) mapDefault!6443)))))

(assert (=> mapNonEmpty!6442 (= tp!372456 (and e!822502 mapRes!6443))))

(declare-fun mapNonEmpty!6443 () Bool)

(declare-fun tp!372636 () Bool)

(assert (=> mapNonEmpty!6443 (= mapRes!6443 (and tp!372636 e!822507))))

(declare-fun mapRest!6443 () (Array (_ BitVec 32) List!12790))

(declare-fun mapKey!6443 () (_ BitVec 32))

(assert (=> mapNonEmpty!6443 (= mapRest!6442 (store mapRest!6443 mapKey!6443 mapValue!6443))))

(declare-fun b!1282858 () Bool)

(declare-fun tp!372633 () Bool)

(assert (=> b!1282858 (= e!822504 tp!372633)))

(assert (= (and mapNonEmpty!6442 condMapEmpty!6443) mapIsEmpty!6443))

(assert (= (and mapNonEmpty!6442 (not condMapEmpty!6443)) mapNonEmpty!6443))

(assert (= b!1282855 b!1282857))

(assert (= (and b!1282855 condSetEmpty!8135) setIsEmpty!8135))

(assert (= (and b!1282855 (not condSetEmpty!8135)) setNonEmpty!8134))

(assert (= setNonEmpty!8134 b!1282854))

(assert (= (and mapNonEmpty!6443 ((_ is Cons!12724) mapValue!6443)) b!1282855))

(assert (= b!1282853 b!1282858))

(assert (= (and b!1282853 condSetEmpty!8134) setIsEmpty!8134))

(assert (= (and b!1282853 (not condSetEmpty!8134)) setNonEmpty!8135))

(assert (= setNonEmpty!8135 b!1282856))

(assert (= (and mapNonEmpty!6442 ((_ is Cons!12724) mapDefault!6443)) b!1282853))

(declare-fun m!1433407 () Bool)

(assert (=> setNonEmpty!8134 m!1433407))

(declare-fun m!1433409 () Bool)

(assert (=> b!1282855 m!1433409))

(declare-fun m!1433411 () Bool)

(assert (=> mapNonEmpty!6443 m!1433411))

(declare-fun m!1433413 () Bool)

(assert (=> b!1282853 m!1433413))

(declare-fun m!1433415 () Bool)

(assert (=> setNonEmpty!8135 m!1433415))

(declare-fun b!1282859 () Bool)

(declare-fun e!822508 () Bool)

(declare-fun tp!372641 () Bool)

(declare-fun tp!372642 () Bool)

(assert (=> b!1282859 (= e!822508 (and tp!372641 tp!372642))))

(assert (=> b!1282593 (= tp!372463 e!822508)))

(assert (= (and b!1282593 ((_ is Cons!12718) (exprs!1055 setElem!8113))) b!1282859))

(declare-fun b!1282860 () Bool)

(declare-fun e!822509 () Bool)

(declare-fun tp!372643 () Bool)

(declare-fun tp!372644 () Bool)

(assert (=> b!1282860 (= e!822509 (and tp!372643 tp!372644))))

(assert (=> b!1282597 (= tp!372468 e!822509)))

(assert (= (and b!1282597 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 (zeroValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))))) b!1282860))

(declare-fun b!1282861 () Bool)

(declare-fun e!822510 () Bool)

(declare-fun tp!372645 () Bool)

(declare-fun tp!372646 () Bool)

(assert (=> b!1282861 (= e!822510 (and tp!372645 tp!372646))))

(assert (=> b!1282559 (= tp!372420 e!822510)))

(assert (= (and b!1282559 ((_ is Cons!12718) (exprs!1055 setElem!8106))) b!1282861))

(declare-fun b!1282862 () Bool)

(declare-fun e!822511 () Bool)

(declare-fun tp!372647 () Bool)

(declare-fun tp!372648 () Bool)

(assert (=> b!1282862 (= e!822511 (and tp!372647 tp!372648))))

(assert (=> b!1282600 (= tp!372473 e!822511)))

(assert (= (and b!1282600 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 (minValue!1602 (v!20975 (underlying!2897 (v!20976 (underlying!2898 (cache!1670 cacheDown!411)))))))))))) b!1282862))

(declare-fun b!1282863 () Bool)

(declare-fun e!822513 () Bool)

(declare-fun tp!372649 () Bool)

(assert (=> b!1282863 (= e!822513 tp!372649)))

(declare-fun e!822514 () Bool)

(assert (=> b!1282603 (= tp!372478 e!822514)))

(declare-fun setIsEmpty!8136 () Bool)

(declare-fun setRes!8136 () Bool)

(assert (=> setIsEmpty!8136 setRes!8136))

(declare-fun tp!372650 () Bool)

(declare-fun e!822512 () Bool)

(declare-fun setElem!8136 () Context!1110)

(declare-fun setNonEmpty!8136 () Bool)

(assert (=> setNonEmpty!8136 (= setRes!8136 (and tp!372650 (inv!17107 setElem!8136) e!822512))))

(declare-fun setRest!8136 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8136 (= (_2!7179 (h!18125 (t!116614 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8136 true) setRest!8136))))

(declare-fun b!1282864 () Bool)

(declare-fun tp!372651 () Bool)

(assert (=> b!1282864 (= e!822512 tp!372651)))

(declare-fun b!1282865 () Bool)

(declare-fun tp!372652 () Bool)

(assert (=> b!1282865 (= e!822514 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))))) e!822513 tp_is_empty!6525 setRes!8136 tp!372652))))

(declare-fun condSetEmpty!8136 () Bool)

(assert (=> b!1282865 (= condSetEmpty!8136 (= (_2!7179 (h!18125 (t!116614 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282865 b!1282863))

(assert (= (and b!1282865 condSetEmpty!8136) setIsEmpty!8136))

(assert (= (and b!1282865 (not condSetEmpty!8136)) setNonEmpty!8136))

(assert (= setNonEmpty!8136 b!1282864))

(assert (= (and b!1282603 ((_ is Cons!12724) (t!116614 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398))))))))) b!1282865))

(declare-fun m!1433417 () Bool)

(assert (=> setNonEmpty!8136 m!1433417))

(declare-fun m!1433419 () Bool)

(assert (=> b!1282865 m!1433419))

(declare-fun b!1282880 () Bool)

(declare-fun e!822527 () Bool)

(declare-fun e!822530 () Bool)

(assert (=> b!1282880 (= e!822527 e!822530)))

(declare-fun b!1282882 () Bool)

(declare-fun e!822529 () Bool)

(declare-fun lt!423289 () MutLongMap!1346)

(assert (=> b!1282882 (= e!822529 ((_ is LongMap!1346) lt!423289))))

(assert (=> b!1282882 (= lt!423289 (v!20978 (underlying!2900 (cache!1671 (_2!7180 (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411))))))))

(declare-fun b!1282883 () Bool)

(declare-fun e!822532 () Bool)

(declare-fun lt!423290 () MutLongMap!1345)

(assert (=> b!1282883 (= e!822532 ((_ is LongMap!1345) lt!423290))))

(assert (=> b!1282883 (= lt!423290 (v!20976 (underlying!2898 (cache!1670 (_3!880 (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411))))))))

(declare-fun b!1282884 () Bool)

(assert (=> b!1282884 (= e!822530 e!822529)))

(declare-fun b!1282885 () Bool)

(declare-fun e!822531 () Bool)

(declare-fun e!822528 () Bool)

(assert (=> b!1282885 (= e!822531 e!822528)))

(assert (=> d!361227 (= true (and e!822527 e!822531))))

(declare-fun b!1282881 () Bool)

(assert (=> b!1282881 (= e!822528 e!822532)))

(assert (= b!1282884 b!1282882))

(assert (= (and b!1282880 ((_ is HashMap!1290) (cache!1671 (_2!7180 (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411))))) b!1282884))

(assert (= d!361227 b!1282880))

(assert (= b!1282881 b!1282883))

(assert (= (and b!1282885 ((_ is HashMap!1289) (cache!1670 (_3!880 (rulesProduceIndividualTokenMem!24 thiss!10944 rs!174 (head!2186 ts!110) cacheUp!398 cacheDown!411))))) b!1282881))

(assert (= d!361227 b!1282885))

(declare-fun e!822533 () Bool)

(assert (=> b!1282629 (= tp!372503 e!822533)))

(declare-fun b!1282887 () Bool)

(declare-fun tp!372654 () Bool)

(declare-fun tp!372656 () Bool)

(assert (=> b!1282887 (= e!822533 (and tp!372654 tp!372656))))

(declare-fun b!1282889 () Bool)

(declare-fun tp!372655 () Bool)

(declare-fun tp!372653 () Bool)

(assert (=> b!1282889 (= e!822533 (and tp!372655 tp!372653))))

(declare-fun b!1282886 () Bool)

(assert (=> b!1282886 (= e!822533 tp_is_empty!6525)))

(declare-fun b!1282888 () Bool)

(declare-fun tp!372657 () Bool)

(assert (=> b!1282888 (= e!822533 tp!372657)))

(assert (= (and b!1282629 ((_ is ElementMatch!3499) (regOne!7510 (regex!2185 (h!18123 rs!174))))) b!1282886))

(assert (= (and b!1282629 ((_ is Concat!5774) (regOne!7510 (regex!2185 (h!18123 rs!174))))) b!1282887))

(assert (= (and b!1282629 ((_ is Star!3499) (regOne!7510 (regex!2185 (h!18123 rs!174))))) b!1282888))

(assert (= (and b!1282629 ((_ is Union!3499) (regOne!7510 (regex!2185 (h!18123 rs!174))))) b!1282889))

(declare-fun e!822534 () Bool)

(assert (=> b!1282629 (= tp!372505 e!822534)))

(declare-fun b!1282891 () Bool)

(declare-fun tp!372659 () Bool)

(declare-fun tp!372661 () Bool)

(assert (=> b!1282891 (= e!822534 (and tp!372659 tp!372661))))

(declare-fun b!1282893 () Bool)

(declare-fun tp!372660 () Bool)

(declare-fun tp!372658 () Bool)

(assert (=> b!1282893 (= e!822534 (and tp!372660 tp!372658))))

(declare-fun b!1282890 () Bool)

(assert (=> b!1282890 (= e!822534 tp_is_empty!6525)))

(declare-fun b!1282892 () Bool)

(declare-fun tp!372662 () Bool)

(assert (=> b!1282892 (= e!822534 tp!372662)))

(assert (= (and b!1282629 ((_ is ElementMatch!3499) (regTwo!7510 (regex!2185 (h!18123 rs!174))))) b!1282890))

(assert (= (and b!1282629 ((_ is Concat!5774) (regTwo!7510 (regex!2185 (h!18123 rs!174))))) b!1282891))

(assert (= (and b!1282629 ((_ is Star!3499) (regTwo!7510 (regex!2185 (h!18123 rs!174))))) b!1282892))

(assert (= (and b!1282629 ((_ is Union!3499) (regTwo!7510 (regex!2185 (h!18123 rs!174))))) b!1282893))

(declare-fun e!822535 () Bool)

(assert (=> b!1282525 (= tp!372367 e!822535)))

(declare-fun b!1282895 () Bool)

(declare-fun tp!372664 () Bool)

(declare-fun tp!372666 () Bool)

(assert (=> b!1282895 (= e!822535 (and tp!372664 tp!372666))))

(declare-fun b!1282897 () Bool)

(declare-fun tp!372665 () Bool)

(declare-fun tp!372663 () Bool)

(assert (=> b!1282897 (= e!822535 (and tp!372665 tp!372663))))

(declare-fun b!1282894 () Bool)

(assert (=> b!1282894 (= e!822535 tp_is_empty!6525)))

(declare-fun b!1282896 () Bool)

(declare-fun tp!372667 () Bool)

(assert (=> b!1282896 (= e!822535 tp!372667)))

(assert (= (and b!1282525 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6435))))) b!1282894))

(assert (= (and b!1282525 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 mapDefault!6435))))) b!1282895))

(assert (= (and b!1282525 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6435))))) b!1282896))

(assert (= (and b!1282525 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 mapDefault!6435))))) b!1282897))

(declare-fun setIsEmpty!8137 () Bool)

(declare-fun setRes!8137 () Bool)

(assert (=> setIsEmpty!8137 setRes!8137))

(declare-fun e!822537 () Bool)

(assert (=> b!1282525 (= tp!372369 e!822537)))

(declare-fun b!1282898 () Bool)

(declare-fun e!822538 () Bool)

(declare-fun tp!372669 () Bool)

(assert (=> b!1282898 (= e!822538 tp!372669)))

(declare-fun e!822536 () Bool)

(declare-fun b!1282899 () Bool)

(declare-fun tp!372670 () Bool)

(declare-fun tp!372668 () Bool)

(assert (=> b!1282899 (= e!822537 (and tp!372668 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 mapDefault!6435))))) e!822536 tp_is_empty!6525 setRes!8137 tp!372670))))

(declare-fun condSetEmpty!8137 () Bool)

(assert (=> b!1282899 (= condSetEmpty!8137 (= (_2!7177 (h!18120 (t!116609 mapDefault!6435))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282900 () Bool)

(declare-fun tp!372671 () Bool)

(assert (=> b!1282900 (= e!822536 tp!372671)))

(declare-fun setElem!8137 () Context!1110)

(declare-fun setNonEmpty!8137 () Bool)

(declare-fun tp!372672 () Bool)

(assert (=> setNonEmpty!8137 (= setRes!8137 (and tp!372672 (inv!17107 setElem!8137) e!822538))))

(declare-fun setRest!8137 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8137 (= (_2!7177 (h!18120 (t!116609 mapDefault!6435))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8137 true) setRest!8137))))

(assert (= b!1282899 b!1282900))

(assert (= (and b!1282899 condSetEmpty!8137) setIsEmpty!8137))

(assert (= (and b!1282899 (not condSetEmpty!8137)) setNonEmpty!8137))

(assert (= setNonEmpty!8137 b!1282898))

(assert (= (and b!1282525 ((_ is Cons!12719) (t!116609 mapDefault!6435))) b!1282899))

(declare-fun m!1433421 () Bool)

(assert (=> b!1282899 m!1433421))

(declare-fun m!1433423 () Bool)

(assert (=> setNonEmpty!8137 m!1433423))

(declare-fun b!1282901 () Bool)

(declare-fun e!822539 () Bool)

(declare-fun tp!372673 () Bool)

(declare-fun tp!372674 () Bool)

(assert (=> b!1282901 (= e!822539 (and tp!372673 tp!372674))))

(assert (=> b!1282587 (= tp!372459 e!822539)))

(assert (= (and b!1282587 ((_ is Cons!12718) (exprs!1055 setElem!8111))) b!1282901))

(declare-fun tp!372676 () Bool)

(declare-fun tp!372677 () Bool)

(declare-fun e!822541 () Bool)

(declare-fun b!1282902 () Bool)

(assert (=> b!1282902 (= e!822541 (and (inv!17101 (left!10977 (left!10977 (c!211407 ts!110)))) tp!372676 (inv!17101 (right!11307 (left!10977 (c!211407 ts!110)))) tp!372677))))

(declare-fun b!1282904 () Bool)

(declare-fun e!822540 () Bool)

(declare-fun tp!372675 () Bool)

(assert (=> b!1282904 (= e!822540 tp!372675)))

(declare-fun b!1282903 () Bool)

(assert (=> b!1282903 (= e!822541 (and (inv!17108 (xs!6892 (left!10977 (c!211407 ts!110)))) e!822540))))

(assert (=> b!1282615 (= tp!372490 (and (inv!17101 (left!10977 (c!211407 ts!110))) e!822541))))

(assert (= (and b!1282615 ((_ is Node!4181) (left!10977 (c!211407 ts!110)))) b!1282902))

(assert (= b!1282903 b!1282904))

(assert (= (and b!1282615 ((_ is Leaf!6470) (left!10977 (c!211407 ts!110)))) b!1282903))

(declare-fun m!1433425 () Bool)

(assert (=> b!1282902 m!1433425))

(declare-fun m!1433427 () Bool)

(assert (=> b!1282902 m!1433427))

(declare-fun m!1433429 () Bool)

(assert (=> b!1282903 m!1433429))

(assert (=> b!1282615 m!1433121))

(declare-fun e!822543 () Bool)

(declare-fun b!1282905 () Bool)

(declare-fun tp!372680 () Bool)

(declare-fun tp!372679 () Bool)

(assert (=> b!1282905 (= e!822543 (and (inv!17101 (left!10977 (right!11307 (c!211407 ts!110)))) tp!372679 (inv!17101 (right!11307 (right!11307 (c!211407 ts!110)))) tp!372680))))

(declare-fun b!1282907 () Bool)

(declare-fun e!822542 () Bool)

(declare-fun tp!372678 () Bool)

(assert (=> b!1282907 (= e!822542 tp!372678)))

(declare-fun b!1282906 () Bool)

(assert (=> b!1282906 (= e!822543 (and (inv!17108 (xs!6892 (right!11307 (c!211407 ts!110)))) e!822542))))

(assert (=> b!1282615 (= tp!372491 (and (inv!17101 (right!11307 (c!211407 ts!110))) e!822543))))

(assert (= (and b!1282615 ((_ is Node!4181) (right!11307 (c!211407 ts!110)))) b!1282905))

(assert (= b!1282906 b!1282907))

(assert (= (and b!1282615 ((_ is Leaf!6470) (right!11307 (c!211407 ts!110)))) b!1282906))

(declare-fun m!1433431 () Bool)

(assert (=> b!1282905 m!1433431))

(declare-fun m!1433433 () Bool)

(assert (=> b!1282905 m!1433433))

(declare-fun m!1433435 () Bool)

(assert (=> b!1282906 m!1433435))

(assert (=> b!1282615 m!1433123))

(declare-fun condSetEmpty!8138 () Bool)

(assert (=> setNonEmpty!8103 (= condSetEmpty!8138 (= setRest!8103 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8138 () Bool)

(assert (=> setNonEmpty!8103 (= tp!372409 setRes!8138)))

(declare-fun setIsEmpty!8138 () Bool)

(assert (=> setIsEmpty!8138 setRes!8138))

(declare-fun tp!372681 () Bool)

(declare-fun setNonEmpty!8138 () Bool)

(declare-fun e!822544 () Bool)

(declare-fun setElem!8138 () Context!1110)

(assert (=> setNonEmpty!8138 (= setRes!8138 (and tp!372681 (inv!17107 setElem!8138) e!822544))))

(declare-fun setRest!8138 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8138 (= setRest!8103 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8138 true) setRest!8138))))

(declare-fun b!1282908 () Bool)

(declare-fun tp!372682 () Bool)

(assert (=> b!1282908 (= e!822544 tp!372682)))

(assert (= (and setNonEmpty!8103 condSetEmpty!8138) setIsEmpty!8138))

(assert (= (and setNonEmpty!8103 (not condSetEmpty!8138)) setNonEmpty!8138))

(assert (= setNonEmpty!8138 b!1282908))

(declare-fun m!1433437 () Bool)

(assert (=> setNonEmpty!8138 m!1433437))

(declare-fun e!822545 () Bool)

(assert (=> b!1282548 (= tp!372405 e!822545)))

(declare-fun b!1282910 () Bool)

(declare-fun tp!372684 () Bool)

(declare-fun tp!372686 () Bool)

(assert (=> b!1282910 (= e!822545 (and tp!372684 tp!372686))))

(declare-fun b!1282912 () Bool)

(declare-fun tp!372685 () Bool)

(declare-fun tp!372683 () Bool)

(assert (=> b!1282912 (= e!822545 (and tp!372685 tp!372683))))

(declare-fun b!1282909 () Bool)

(assert (=> b!1282909 (= e!822545 tp_is_empty!6525)))

(declare-fun b!1282911 () Bool)

(declare-fun tp!372687 () Bool)

(assert (=> b!1282911 (= e!822545 tp!372687)))

(assert (= (and b!1282548 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6436))))) b!1282909))

(assert (= (and b!1282548 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 mapValue!6436))))) b!1282910))

(assert (= (and b!1282548 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6436))))) b!1282911))

(assert (= (and b!1282548 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6436))))) b!1282912))

(declare-fun setIsEmpty!8139 () Bool)

(declare-fun setRes!8139 () Bool)

(assert (=> setIsEmpty!8139 setRes!8139))

(declare-fun e!822547 () Bool)

(assert (=> b!1282548 (= tp!372407 e!822547)))

(declare-fun b!1282913 () Bool)

(declare-fun e!822548 () Bool)

(declare-fun tp!372689 () Bool)

(assert (=> b!1282913 (= e!822548 tp!372689)))

(declare-fun b!1282914 () Bool)

(declare-fun tp!372688 () Bool)

(declare-fun e!822546 () Bool)

(declare-fun tp!372690 () Bool)

(assert (=> b!1282914 (= e!822547 (and tp!372688 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 mapValue!6436))))) e!822546 tp_is_empty!6525 setRes!8139 tp!372690))))

(declare-fun condSetEmpty!8139 () Bool)

(assert (=> b!1282914 (= condSetEmpty!8139 (= (_2!7177 (h!18120 (t!116609 mapValue!6436))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282915 () Bool)

(declare-fun tp!372691 () Bool)

(assert (=> b!1282915 (= e!822546 tp!372691)))

(declare-fun setElem!8139 () Context!1110)

(declare-fun tp!372692 () Bool)

(declare-fun setNonEmpty!8139 () Bool)

(assert (=> setNonEmpty!8139 (= setRes!8139 (and tp!372692 (inv!17107 setElem!8139) e!822548))))

(declare-fun setRest!8139 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8139 (= (_2!7177 (h!18120 (t!116609 mapValue!6436))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8139 true) setRest!8139))))

(assert (= b!1282914 b!1282915))

(assert (= (and b!1282914 condSetEmpty!8139) setIsEmpty!8139))

(assert (= (and b!1282914 (not condSetEmpty!8139)) setNonEmpty!8139))

(assert (= setNonEmpty!8139 b!1282913))

(assert (= (and b!1282548 ((_ is Cons!12719) (t!116609 mapValue!6436))) b!1282914))

(declare-fun m!1433439 () Bool)

(assert (=> b!1282914 m!1433439))

(declare-fun m!1433441 () Bool)

(assert (=> setNonEmpty!8139 m!1433441))

(declare-fun condSetEmpty!8140 () Bool)

(assert (=> setNonEmpty!8112 (= condSetEmpty!8140 (= setRest!8112 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8140 () Bool)

(assert (=> setNonEmpty!8112 (= tp!372454 setRes!8140)))

(declare-fun setIsEmpty!8140 () Bool)

(assert (=> setIsEmpty!8140 setRes!8140))

(declare-fun setElem!8140 () Context!1110)

(declare-fun setNonEmpty!8140 () Bool)

(declare-fun e!822549 () Bool)

(declare-fun tp!372693 () Bool)

(assert (=> setNonEmpty!8140 (= setRes!8140 (and tp!372693 (inv!17107 setElem!8140) e!822549))))

(declare-fun setRest!8140 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8140 (= setRest!8112 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8140 true) setRest!8140))))

(declare-fun b!1282916 () Bool)

(declare-fun tp!372694 () Bool)

(assert (=> b!1282916 (= e!822549 tp!372694)))

(assert (= (and setNonEmpty!8112 condSetEmpty!8140) setIsEmpty!8140))

(assert (= (and setNonEmpty!8112 (not condSetEmpty!8140)) setNonEmpty!8140))

(assert (= setNonEmpty!8140 b!1282916))

(declare-fun m!1433443 () Bool)

(assert (=> setNonEmpty!8140 m!1433443))

(declare-fun b!1282917 () Bool)

(declare-fun e!822550 () Bool)

(declare-fun tp!372695 () Bool)

(declare-fun tp!372696 () Bool)

(assert (=> b!1282917 (= e!822550 (and tp!372695 tp!372696))))

(assert (=> b!1282542 (= tp!372398 e!822550)))

(assert (= (and b!1282542 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapDefault!6439)))))) b!1282917))

(declare-fun condSetEmpty!8141 () Bool)

(assert (=> setNonEmpty!8111 (= condSetEmpty!8141 (= setRest!8111 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8141 () Bool)

(assert (=> setNonEmpty!8111 (= tp!372458 setRes!8141)))

(declare-fun setIsEmpty!8141 () Bool)

(assert (=> setIsEmpty!8141 setRes!8141))

(declare-fun setElem!8141 () Context!1110)

(declare-fun setNonEmpty!8141 () Bool)

(declare-fun e!822551 () Bool)

(declare-fun tp!372697 () Bool)

(assert (=> setNonEmpty!8141 (= setRes!8141 (and tp!372697 (inv!17107 setElem!8141) e!822551))))

(declare-fun setRest!8141 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8141 (= setRest!8111 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8141 true) setRest!8141))))

(declare-fun b!1282918 () Bool)

(declare-fun tp!372698 () Bool)

(assert (=> b!1282918 (= e!822551 tp!372698)))

(assert (= (and setNonEmpty!8111 condSetEmpty!8141) setIsEmpty!8141))

(assert (= (and setNonEmpty!8111 (not condSetEmpty!8141)) setNonEmpty!8141))

(assert (= setNonEmpty!8141 b!1282918))

(declare-fun m!1433445 () Bool)

(assert (=> setNonEmpty!8141 m!1433445))

(declare-fun b!1282919 () Bool)

(declare-fun e!822552 () Bool)

(declare-fun tp!372699 () Bool)

(declare-fun tp!372700 () Bool)

(assert (=> b!1282919 (= e!822552 (and tp!372699 tp!372700))))

(assert (=> b!1282526 (= tp!372370 e!822552)))

(assert (= (and b!1282526 ((_ is Cons!12718) (exprs!1055 (_2!7176 (_1!7177 (h!18120 mapDefault!6435)))))) b!1282919))

(declare-fun b!1282920 () Bool)

(declare-fun e!822554 () Bool)

(declare-fun tp!372701 () Bool)

(assert (=> b!1282920 (= e!822554 tp!372701)))

(declare-fun e!822555 () Bool)

(assert (=> b!1282588 (= tp!372460 e!822555)))

(declare-fun setIsEmpty!8142 () Bool)

(declare-fun setRes!8142 () Bool)

(assert (=> setIsEmpty!8142 setRes!8142))

(declare-fun setElem!8142 () Context!1110)

(declare-fun setNonEmpty!8142 () Bool)

(declare-fun e!822553 () Bool)

(declare-fun tp!372702 () Bool)

(assert (=> setNonEmpty!8142 (= setRes!8142 (and tp!372702 (inv!17107 setElem!8142) e!822553))))

(declare-fun setRest!8142 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8142 (= (_2!7179 (h!18125 (t!116614 mapValue!6442))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8142 true) setRest!8142))))

(declare-fun b!1282921 () Bool)

(declare-fun tp!372703 () Bool)

(assert (=> b!1282921 (= e!822553 tp!372703)))

(declare-fun tp!372704 () Bool)

(declare-fun b!1282922 () Bool)

(assert (=> b!1282922 (= e!822555 (and (inv!17107 (_1!7178 (_1!7179 (h!18125 (t!116614 mapValue!6442))))) e!822554 tp_is_empty!6525 setRes!8142 tp!372704))))

(declare-fun condSetEmpty!8142 () Bool)

(assert (=> b!1282922 (= condSetEmpty!8142 (= (_2!7179 (h!18125 (t!116614 mapValue!6442))) ((as const (Array Context!1110 Bool)) false)))))

(assert (= b!1282922 b!1282920))

(assert (= (and b!1282922 condSetEmpty!8142) setIsEmpty!8142))

(assert (= (and b!1282922 (not condSetEmpty!8142)) setNonEmpty!8142))

(assert (= setNonEmpty!8142 b!1282921))

(assert (= (and b!1282588 ((_ is Cons!12724) (t!116614 mapValue!6442))) b!1282922))

(declare-fun m!1433447 () Bool)

(assert (=> setNonEmpty!8142 m!1433447))

(declare-fun m!1433449 () Bool)

(assert (=> b!1282922 m!1433449))

(declare-fun b!1282923 () Bool)

(declare-fun e!822556 () Bool)

(declare-fun tp!372705 () Bool)

(declare-fun tp!372706 () Bool)

(assert (=> b!1282923 (= e!822556 (and tp!372705 tp!372706))))

(assert (=> b!1282598 (= tp!372471 e!822556)))

(assert (= (and b!1282598 ((_ is Cons!12718) (exprs!1055 setElem!8115))) b!1282923))

(declare-fun condSetEmpty!8143 () Bool)

(assert (=> setNonEmpty!8116 (= condSetEmpty!8143 (= setRest!8116 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8143 () Bool)

(assert (=> setNonEmpty!8116 (= tp!372476 setRes!8143)))

(declare-fun setIsEmpty!8143 () Bool)

(assert (=> setIsEmpty!8143 setRes!8143))

(declare-fun e!822557 () Bool)

(declare-fun setElem!8143 () Context!1110)

(declare-fun tp!372707 () Bool)

(declare-fun setNonEmpty!8143 () Bool)

(assert (=> setNonEmpty!8143 (= setRes!8143 (and tp!372707 (inv!17107 setElem!8143) e!822557))))

(declare-fun setRest!8143 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8143 (= setRest!8116 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8143 true) setRest!8143))))

(declare-fun b!1282924 () Bool)

(declare-fun tp!372708 () Bool)

(assert (=> b!1282924 (= e!822557 tp!372708)))

(assert (= (and setNonEmpty!8116 condSetEmpty!8143) setIsEmpty!8143))

(assert (= (and setNonEmpty!8116 (not condSetEmpty!8143)) setNonEmpty!8143))

(assert (= setNonEmpty!8143 b!1282924))

(declare-fun m!1433451 () Bool)

(assert (=> setNonEmpty!8143 m!1433451))

(declare-fun b!1282925 () Bool)

(declare-fun e!822558 () Bool)

(declare-fun tp!372709 () Bool)

(declare-fun tp!372710 () Bool)

(assert (=> b!1282925 (= e!822558 (and tp!372709 tp!372710))))

(assert (=> b!1282605 (= tp!372481 e!822558)))

(assert (= (and b!1282605 ((_ is Cons!12718) (exprs!1055 setElem!8117))) b!1282925))

(declare-fun b!1282926 () Bool)

(declare-fun e!822560 () Bool)

(declare-fun tp!372711 () Bool)

(assert (=> b!1282926 (= e!822560 tp!372711)))

(declare-fun b!1282927 () Bool)

(declare-fun e!822561 () Bool)

(declare-fun tp!372715 () Bool)

(assert (=> b!1282927 (= e!822561 tp!372715)))

(declare-fun setElem!8145 () Context!1110)

(declare-fun tp!372718 () Bool)

(declare-fun setRes!8144 () Bool)

(declare-fun e!822559 () Bool)

(declare-fun setNonEmpty!8144 () Bool)

(assert (=> setNonEmpty!8144 (= setRes!8144 (and tp!372718 (inv!17107 setElem!8145) e!822559))))

(declare-fun mapValue!6444 () List!12785)

(declare-fun setRest!8145 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8144 (= (_2!7177 (h!18120 mapValue!6444)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8145 true) setRest!8145))))

(declare-fun setIsEmpty!8144 () Bool)

(declare-fun setRes!8145 () Bool)

(assert (=> setIsEmpty!8144 setRes!8145))

(declare-fun e!822563 () Bool)

(declare-fun mapDefault!6444 () List!12785)

(declare-fun b!1282928 () Bool)

(declare-fun tp!372714 () Bool)

(declare-fun tp!372720 () Bool)

(assert (=> b!1282928 (= e!822563 (and tp!372714 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapDefault!6444)))) e!822561 tp_is_empty!6525 setRes!8145 tp!372720))))

(declare-fun condSetEmpty!8145 () Bool)

(assert (=> b!1282928 (= condSetEmpty!8145 (= (_2!7177 (h!18120 mapDefault!6444)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282929 () Bool)

(declare-fun tp!372716 () Bool)

(declare-fun e!822564 () Bool)

(declare-fun tp!372719 () Bool)

(assert (=> b!1282929 (= e!822564 (and tp!372716 (inv!17107 (_2!7176 (_1!7177 (h!18120 mapValue!6444)))) e!822560 tp_is_empty!6525 setRes!8144 tp!372719))))

(declare-fun condSetEmpty!8144 () Bool)

(assert (=> b!1282929 (= condSetEmpty!8144 (= (_2!7177 (h!18120 mapValue!6444)) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282930 () Bool)

(declare-fun tp!372713 () Bool)

(assert (=> b!1282930 (= e!822559 tp!372713)))

(declare-fun setElem!8144 () Context!1110)

(declare-fun tp!372717 () Bool)

(declare-fun setNonEmpty!8145 () Bool)

(declare-fun e!822562 () Bool)

(assert (=> setNonEmpty!8145 (= setRes!8145 (and tp!372717 (inv!17107 setElem!8144) e!822562))))

(declare-fun setRest!8144 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8145 (= (_2!7177 (h!18120 mapDefault!6444)) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8144 true) setRest!8144))))

(declare-fun setIsEmpty!8145 () Bool)

(assert (=> setIsEmpty!8145 setRes!8144))

(declare-fun mapNonEmpty!6444 () Bool)

(declare-fun mapRes!6444 () Bool)

(declare-fun tp!372712 () Bool)

(assert (=> mapNonEmpty!6444 (= mapRes!6444 (and tp!372712 e!822564))))

(declare-fun mapRest!6444 () (Array (_ BitVec 32) List!12785))

(declare-fun mapKey!6444 () (_ BitVec 32))

(assert (=> mapNonEmpty!6444 (= mapRest!6439 (store mapRest!6444 mapKey!6444 mapValue!6444))))

(declare-fun condMapEmpty!6444 () Bool)

(assert (=> mapNonEmpty!6439 (= condMapEmpty!6444 (= mapRest!6439 ((as const (Array (_ BitVec 32) List!12785)) mapDefault!6444)))))

(assert (=> mapNonEmpty!6439 (= tp!372395 (and e!822563 mapRes!6444))))

(declare-fun b!1282931 () Bool)

(declare-fun tp!372721 () Bool)

(assert (=> b!1282931 (= e!822562 tp!372721)))

(declare-fun mapIsEmpty!6444 () Bool)

(assert (=> mapIsEmpty!6444 mapRes!6444))

(assert (= (and mapNonEmpty!6439 condMapEmpty!6444) mapIsEmpty!6444))

(assert (= (and mapNonEmpty!6439 (not condMapEmpty!6444)) mapNonEmpty!6444))

(assert (= b!1282929 b!1282926))

(assert (= (and b!1282929 condSetEmpty!8144) setIsEmpty!8145))

(assert (= (and b!1282929 (not condSetEmpty!8144)) setNonEmpty!8144))

(assert (= setNonEmpty!8144 b!1282930))

(assert (= (and mapNonEmpty!6444 ((_ is Cons!12719) mapValue!6444)) b!1282929))

(assert (= b!1282928 b!1282927))

(assert (= (and b!1282928 condSetEmpty!8145) setIsEmpty!8144))

(assert (= (and b!1282928 (not condSetEmpty!8145)) setNonEmpty!8145))

(assert (= setNonEmpty!8145 b!1282931))

(assert (= (and mapNonEmpty!6439 ((_ is Cons!12719) mapDefault!6444)) b!1282928))

(declare-fun m!1433453 () Bool)

(assert (=> setNonEmpty!8144 m!1433453))

(declare-fun m!1433455 () Bool)

(assert (=> mapNonEmpty!6444 m!1433455))

(declare-fun m!1433457 () Bool)

(assert (=> b!1282929 m!1433457))

(declare-fun m!1433459 () Bool)

(assert (=> setNonEmpty!8145 m!1433459))

(declare-fun m!1433461 () Bool)

(assert (=> b!1282928 m!1433461))

(declare-fun b!1282932 () Bool)

(declare-fun e!822565 () Bool)

(declare-fun tp!372722 () Bool)

(declare-fun tp!372723 () Bool)

(assert (=> b!1282932 (= e!822565 (and tp!372722 tp!372723))))

(assert (=> b!1282591 (= tp!372453 e!822565)))

(assert (= (and b!1282591 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapDefault!6442)))))) b!1282932))

(declare-fun b!1282935 () Bool)

(declare-fun b_free!29959 () Bool)

(declare-fun b_next!30663 () Bool)

(assert (=> b!1282935 (= b_free!29959 (not b_next!30663))))

(declare-fun tp!372726 () Bool)

(declare-fun b_and!85103 () Bool)

(assert (=> b!1282935 (= tp!372726 b_and!85103)))

(declare-fun b_free!29961 () Bool)

(declare-fun b_next!30665 () Bool)

(assert (=> b!1282935 (= b_free!29961 (not b_next!30665))))

(declare-fun tp!372727 () Bool)

(declare-fun b_and!85105 () Bool)

(assert (=> b!1282935 (= tp!372727 b_and!85105)))

(declare-fun e!822566 () Bool)

(assert (=> b!1282935 (= e!822566 (and tp!372726 tp!372727))))

(declare-fun e!822568 () Bool)

(declare-fun b!1282934 () Bool)

(declare-fun tp!372725 () Bool)

(assert (=> b!1282934 (= e!822568 (and tp!372725 (inv!17096 (tag!2447 (h!18123 (t!116612 (t!116612 rs!174))))) (inv!17100 (transformation!2185 (h!18123 (t!116612 (t!116612 rs!174))))) e!822566))))

(declare-fun b!1282933 () Bool)

(declare-fun e!822569 () Bool)

(declare-fun tp!372724 () Bool)

(assert (=> b!1282933 (= e!822569 (and e!822568 tp!372724))))

(assert (=> b!1282569 (= tp!372430 e!822569)))

(assert (= b!1282934 b!1282935))

(assert (= b!1282933 b!1282934))

(assert (= (and b!1282569 ((_ is Cons!12722) (t!116612 (t!116612 rs!174)))) b!1282933))

(declare-fun m!1433463 () Bool)

(assert (=> b!1282934 m!1433463))

(declare-fun m!1433465 () Bool)

(assert (=> b!1282934 m!1433465))

(declare-fun condSetEmpty!8146 () Bool)

(assert (=> setNonEmpty!8102 (= condSetEmpty!8146 (= setRest!8101 ((as const (Array Context!1110 Bool)) false)))))

(declare-fun setRes!8146 () Bool)

(assert (=> setNonEmpty!8102 (= tp!372400 setRes!8146)))

(declare-fun setIsEmpty!8146 () Bool)

(assert (=> setIsEmpty!8146 setRes!8146))

(declare-fun setElem!8146 () Context!1110)

(declare-fun tp!372728 () Bool)

(declare-fun setNonEmpty!8146 () Bool)

(declare-fun e!822570 () Bool)

(assert (=> setNonEmpty!8146 (= setRes!8146 (and tp!372728 (inv!17107 setElem!8146) e!822570))))

(declare-fun setRest!8146 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8146 (= setRest!8101 ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8146 true) setRest!8146))))

(declare-fun b!1282936 () Bool)

(declare-fun tp!372729 () Bool)

(assert (=> b!1282936 (= e!822570 tp!372729)))

(assert (= (and setNonEmpty!8102 condSetEmpty!8146) setIsEmpty!8146))

(assert (= (and setNonEmpty!8102 (not condSetEmpty!8146)) setNonEmpty!8146))

(assert (= setNonEmpty!8146 b!1282936))

(declare-fun m!1433467 () Bool)

(assert (=> setNonEmpty!8146 m!1433467))

(declare-fun b!1282937 () Bool)

(declare-fun e!822571 () Bool)

(declare-fun tp!372730 () Bool)

(declare-fun tp!372731 () Bool)

(assert (=> b!1282937 (= e!822571 (and tp!372730 tp!372731))))

(assert (=> b!1282595 (= tp!372466 e!822571)))

(assert (= (and b!1282595 ((_ is Cons!12718) (exprs!1055 setElem!8114))) b!1282937))

(declare-fun b!1282938 () Bool)

(declare-fun e!822572 () Bool)

(declare-fun tp!372732 () Bool)

(declare-fun tp!372733 () Bool)

(assert (=> b!1282938 (= e!822572 (and tp!372732 tp!372733))))

(assert (=> b!1282590 (= tp!372455 e!822572)))

(assert (= (and b!1282590 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 mapValue!6442)))))) b!1282938))

(declare-fun e!822573 () Bool)

(assert (=> b!1282544 (= tp!372399 e!822573)))

(declare-fun b!1282940 () Bool)

(declare-fun tp!372735 () Bool)

(declare-fun tp!372737 () Bool)

(assert (=> b!1282940 (= e!822573 (and tp!372735 tp!372737))))

(declare-fun b!1282942 () Bool)

(declare-fun tp!372736 () Bool)

(declare-fun tp!372734 () Bool)

(assert (=> b!1282942 (= e!822573 (and tp!372736 tp!372734))))

(declare-fun b!1282939 () Bool)

(assert (=> b!1282939 (= e!822573 tp_is_empty!6525)))

(declare-fun b!1282941 () Bool)

(declare-fun tp!372738 () Bool)

(assert (=> b!1282941 (= e!822573 tp!372738)))

(assert (= (and b!1282544 ((_ is ElementMatch!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6439))))) b!1282939))

(assert (= (and b!1282544 ((_ is Concat!5774) (_1!7176 (_1!7177 (h!18120 mapValue!6439))))) b!1282940))

(assert (= (and b!1282544 ((_ is Star!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6439))))) b!1282941))

(assert (= (and b!1282544 ((_ is Union!3499) (_1!7176 (_1!7177 (h!18120 mapValue!6439))))) b!1282942))

(declare-fun setIsEmpty!8147 () Bool)

(declare-fun setRes!8147 () Bool)

(assert (=> setIsEmpty!8147 setRes!8147))

(declare-fun e!822575 () Bool)

(assert (=> b!1282544 (= tp!372402 e!822575)))

(declare-fun b!1282943 () Bool)

(declare-fun e!822576 () Bool)

(declare-fun tp!372740 () Bool)

(assert (=> b!1282943 (= e!822576 tp!372740)))

(declare-fun tp!372741 () Bool)

(declare-fun tp!372739 () Bool)

(declare-fun b!1282944 () Bool)

(declare-fun e!822574 () Bool)

(assert (=> b!1282944 (= e!822575 (and tp!372739 (inv!17107 (_2!7176 (_1!7177 (h!18120 (t!116609 mapValue!6439))))) e!822574 tp_is_empty!6525 setRes!8147 tp!372741))))

(declare-fun condSetEmpty!8147 () Bool)

(assert (=> b!1282944 (= condSetEmpty!8147 (= (_2!7177 (h!18120 (t!116609 mapValue!6439))) ((as const (Array Context!1110 Bool)) false)))))

(declare-fun b!1282945 () Bool)

(declare-fun tp!372742 () Bool)

(assert (=> b!1282945 (= e!822574 tp!372742)))

(declare-fun setElem!8147 () Context!1110)

(declare-fun setNonEmpty!8147 () Bool)

(declare-fun tp!372743 () Bool)

(assert (=> setNonEmpty!8147 (= setRes!8147 (and tp!372743 (inv!17107 setElem!8147) e!822576))))

(declare-fun setRest!8147 () (InoxSet Context!1110))

(assert (=> setNonEmpty!8147 (= (_2!7177 (h!18120 (t!116609 mapValue!6439))) ((_ map or) (store ((as const (Array Context!1110 Bool)) false) setElem!8147 true) setRest!8147))))

(assert (= b!1282944 b!1282945))

(assert (= (and b!1282944 condSetEmpty!8147) setIsEmpty!8147))

(assert (= (and b!1282944 (not condSetEmpty!8147)) setNonEmpty!8147))

(assert (= setNonEmpty!8147 b!1282943))

(assert (= (and b!1282544 ((_ is Cons!12719) (t!116609 mapValue!6439))) b!1282944))

(declare-fun m!1433469 () Bool)

(assert (=> b!1282944 m!1433469))

(declare-fun m!1433471 () Bool)

(assert (=> setNonEmpty!8147 m!1433471))

(declare-fun b!1282946 () Bool)

(declare-fun e!822577 () Bool)

(declare-fun tp!372744 () Bool)

(declare-fun tp!372745 () Bool)

(assert (=> b!1282946 (= e!822577 (and tp!372744 tp!372745))))

(assert (=> b!1282601 (= tp!372475 e!822577)))

(assert (= (and b!1282601 ((_ is Cons!12718) (exprs!1055 (_1!7178 (_1!7179 (h!18125 (zeroValue!1603 (v!20977 (underlying!2899 (v!20978 (underlying!2900 (cache!1671 cacheUp!398)))))))))))) b!1282946))

(check-sat (not setNonEmpty!8134) (not b!1282778) (not b!1282772) (not b!1282780) (not mapNonEmpty!6443) (not b!1282937) (not b!1282931) (not b!1282846) (not b!1282839) (not b!1282919) (not b_next!30651) (not b!1282654) (not b!1282842) (not b!1282810) (not b!1282860) (not d!361287) (not b!1282821) (not d!361281) (not b!1282710) (not b!1282940) (not b!1282849) (not b!1282674) (not b!1282761) (not d!361357) (not mapNonEmpty!6444) (not b!1282811) (not b!1282863) (not b!1282789) (not d!361319) (not b!1282762) (not b!1282897) (not setNonEmpty!8138) (not b!1282795) (not d!361285) (not b!1282799) (not b!1282704) b_and!85093 (not b!1282841) (not b!1282944) (not b!1282831) (not b!1282757) (not b!1282714) (not setNonEmpty!8144) (not b!1282725) (not b!1282797) (not b!1282703) (not b!1282855) (not b!1282900) (not setNonEmpty!8131) (not b!1282816) (not b_next!30649) (not b!1282859) (not b!1282793) (not b!1282920) (not b!1282768) (not d!361255) (not d!361273) (not setNonEmpty!8141) (not d!361291) (not b!1282828) (not setNonEmpty!8121) (not b_next!30653) (not b!1282745) (not b!1282744) (not b!1282906) (not b!1282891) (not b!1282833) (not b!1282758) (not b_next!30655) (not b_next!30643) (not b!1282932) (not b!1282734) b_and!85097 (not b!1282902) (not setNonEmpty!8145) (not d!361367) (not setNonEmpty!8123) (not b!1282655) (not setNonEmpty!8136) (not setNonEmpty!8142) (not b!1282936) (not b!1282784) (not b!1282856) (not setNonEmpty!8147) (not d!361253) (not setNonEmpty!8125) (not b!1282934) (not d!361293) (not b!1282750) b_and!85103 (not b!1282798) (not d!361305) (not b!1282759) (not b!1282911) (not d!361343) (not b!1282928) (not d!361359) (not b!1282680) (not d!361321) tp_is_empty!6525 (not b!1282756) (not d!361365) (not b!1282779) (not d!361355) (not b!1282719) (not b!1282858) (not setNonEmpty!8133) (not b_next!30645) (not d!361271) (not b!1282777) (not b!1282938) (not setNonEmpty!8135) (not b!1282943) (not d!361275) (not b!1282651) (not b!1282862) (not b!1282817) (not b!1282853) (not b_next!30661) (not setNonEmpty!8124) (not b!1282908) (not b_next!30659) (not b!1282615) (not b!1282825) (not b!1282913) (not d!361331) (not b!1282916) (not setNonEmpty!8130) (not b!1282783) (not b!1282925) (not d!361263) (not b!1282770) (not setNonEmpty!8129) (not d!361345) (not b!1282843) (not b!1282673) (not b_next!30665) (not d!361297) (not b!1282760) (not b!1282893) (not b!1282848) (not d!361363) (not b!1282763) (not b!1282840) (not d!361295) (not b!1282861) (not b!1282926) (not b!1282716) (not b!1282792) (not b!1282889) (not d!361323) (not b!1282850) (not b!1282788) (not b!1282844) (not b!1282702) (not b!1282676) (not b!1282910) (not b!1282857) (not b!1282796) (not b!1282815) (not b_next!30657) (not b!1282835) (not d!361277) (not setNonEmpty!8146) b_and!85083 (not b!1282686) (not b!1282933) (not d!361327) (not d!361333) (not b!1282653) (not b!1282918) (not b!1282837) (not b!1282892) (not b!1282854) (not b!1282901) (not d!361299) (not d!361301) (not setNonEmpty!8128) (not bm!88421) (not b!1282650) (not b!1282898) b_and!85091 (not d!361347) (not b!1282782) (not d!361267) (not b!1282771) (not d!361353) (not b!1282907) (not d!361289) (not setNonEmpty!8120) (not d!361349) (not setNonEmpty!8122) (not b!1282922) (not b!1282903) (not b!1282915) b_and!85095 (not d!361317) (not b!1282694) (not b!1282942) (not b!1282834) (not b!1282707) (not setNonEmpty!8139) (not b!1282826) (not b!1282735) (not b!1282888) (not b!1282787) (not b!1282912) (not b!1282724) (not b!1282905) (not b!1282946) (not b!1282794) (not d!361269) (not b!1282637) (not b!1282865) b_and!85101 b_and!85105 (not b!1282899) (not b!1282923) b_and!85089 (not setNonEmpty!8143) b_and!85085 (not b!1282781) (not b!1282895) (not b!1282914) (not b!1282864) (not b_next!30663) (not b!1282896) (not setNonEmpty!8140) (not setNonEmpty!8132) (not d!361307) (not d!361325) (not d!361339) (not d!361341) (not b!1282924) (not b!1282836) (not bm!88422) (not b!1282847) (not b!1282838) (not b!1282887) (not b!1282921) (not b!1282929) (not b!1282917) (not b!1282930) (not d!361279) b_and!85099 (not setNonEmpty!8137) (not b!1282830) (not b!1282679) (not b!1282812) (not b!1282822) (not b!1282791) (not setNonEmpty!8127) (not d!361259) (not d!361337) (not b!1282945) (not b!1282851) (not b!1282785) b_and!85087 (not b!1282852) (not b!1282713) (not b!1282827) (not b!1282711) (not d!361313) (not b!1282652) (not d!361329) (not b!1282941) (not b!1282820) (not b!1282819) (not b!1282823) (not d!361303) (not b!1282829) (not b!1282904) (not b!1282927) (not b_next!30647) (not setNonEmpty!8126) (not b!1282786))
(check-sat (not b_next!30651) b_and!85093 (not b_next!30649) (not b_next!30653) b_and!85103 (not b_next!30645) (not b_next!30665) (not b_next!30657) b_and!85083 b_and!85091 b_and!85095 b_and!85101 (not b_next!30663) b_and!85099 b_and!85087 (not b_next!30647) (not b_next!30655) b_and!85097 (not b_next!30643) (not b_next!30661) (not b_next!30659) b_and!85105 b_and!85089 b_and!85085)
