; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266354 () Bool)

(assert start!266354)

(declare-fun b!2747573 () Bool)

(declare-fun b_free!77505 () Bool)

(declare-fun b_next!78209 () Bool)

(assert (=> b!2747573 (= b_free!77505 (not b_next!78209))))

(declare-fun tp!866241 () Bool)

(declare-fun b_and!202229 () Bool)

(assert (=> b!2747573 (= tp!866241 b_and!202229)))

(declare-fun b!2747566 () Bool)

(declare-fun b_free!77507 () Bool)

(declare-fun b_next!78211 () Bool)

(assert (=> b!2747566 (= b_free!77507 (not b_next!78211))))

(declare-fun tp!866236 () Bool)

(declare-fun b_and!202231 () Bool)

(assert (=> b!2747566 (= tp!866236 b_and!202231)))

(declare-fun b!2747559 () Bool)

(declare-fun b_free!77509 () Bool)

(declare-fun b_next!78213 () Bool)

(assert (=> b!2747559 (= b_free!77509 (not b_next!78213))))

(declare-fun tp!866239 () Bool)

(declare-fun b_and!202233 () Bool)

(assert (=> b!2747559 (= tp!866239 b_and!202233)))

(declare-fun b!2747568 () Bool)

(declare-fun b_free!77511 () Bool)

(declare-fun b_next!78215 () Bool)

(assert (=> b!2747568 (= b_free!77511 (not b_next!78215))))

(declare-fun tp!866235 () Bool)

(declare-fun b_and!202235 () Bool)

(assert (=> b!2747568 (= tp!866235 b_and!202235)))

(declare-fun b!2747563 () Bool)

(declare-fun b_free!77513 () Bool)

(declare-fun b_next!78217 () Bool)

(assert (=> b!2747563 (= b_free!77513 (not b_next!78217))))

(declare-fun tp!866244 () Bool)

(declare-fun b_and!202237 () Bool)

(assert (=> b!2747563 (= tp!866244 b_and!202237)))

(declare-fun b_free!77515 () Bool)

(declare-fun b_next!78219 () Bool)

(assert (=> b!2747563 (= b_free!77515 (not b_next!78219))))

(declare-fun tp!866243 () Bool)

(declare-fun b_and!202239 () Bool)

(assert (=> b!2747563 (= tp!866243 b_and!202239)))

(declare-fun res!1152700 () Bool)

(declare-fun e!1731386 () Bool)

(assert (=> start!266354 (=> (not res!1152700) (not e!1731386))))

(declare-datatypes ((LexerInterface!4448 0))(
  ( (LexerInterfaceExt!4445 (__x!20535 Int)) (Lexer!4446) )
))
(declare-fun thiss!16130 () LexerInterface!4448)

(get-info :version)

(assert (=> start!266354 (= res!1152700 ((_ is Lexer!4446) thiss!16130))))

(assert (=> start!266354 e!1731386))

(declare-datatypes ((C!16180 0))(
  ( (C!16181 (val!10024 Int)) )
))
(declare-datatypes ((List!31785 0))(
  ( (Nil!31685) (Cons!31685 (h!37105 C!16180) (t!227879 List!31785)) )
))
(declare-datatypes ((IArray!19803 0))(
  ( (IArray!19804 (innerList!9959 List!31785)) )
))
(declare-datatypes ((Conc!9899 0))(
  ( (Node!9899 (left!24262 Conc!9899) (right!24592 Conc!9899) (csize!20028 Int) (cheight!10110 Int)) (Leaf!15073 (xs!13006 IArray!19803) (csize!20029 Int)) (Empty!9899) )
))
(declare-datatypes ((BalanceConc!19412 0))(
  ( (BalanceConc!19413 (c!444910 Conc!9899)) )
))
(declare-fun input!1561 () BalanceConc!19412)

(declare-fun e!1731388 () Bool)

(declare-fun inv!43041 (BalanceConc!19412) Bool)

(assert (=> start!266354 (and (inv!43041 input!1561) e!1731388)))

(declare-datatypes ((Regex!8011 0))(
  ( (ElementMatch!8011 (c!444911 C!16180)) (Concat!13088 (regOne!16534 Regex!8011) (regTwo!16534 Regex!8011)) (EmptyExpr!8011) (Star!8011 (reg!8340 Regex!8011)) (EmptyLang!8011) (Union!8011 (regOne!16535 Regex!8011) (regTwo!16535 Regex!8011)) )
))
(declare-datatypes ((List!31786 0))(
  ( (Nil!31686) (Cons!31686 (h!37106 Regex!8011) (t!227880 List!31786)) )
))
(declare-datatypes ((Context!4458 0))(
  ( (Context!4459 (exprs!2729 List!31786)) )
))
(declare-datatypes ((tuple2!31532 0))(
  ( (tuple2!31533 (_1!18464 Context!4458) (_2!18464 C!16180)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31534 0))(
  ( (tuple2!31535 (_1!18465 tuple2!31532) (_2!18465 (InoxSet Context!4458))) )
))
(declare-datatypes ((List!31787 0))(
  ( (Nil!31687) (Cons!31687 (h!37107 tuple2!31534) (t!227881 List!31787)) )
))
(declare-datatypes ((array!12950 0))(
  ( (array!12951 (arr!5779 (Array (_ BitVec 32) List!31787)) (size!24460 (_ BitVec 32))) )
))
(declare-datatypes ((array!12952 0))(
  ( (array!12953 (arr!5780 (Array (_ BitVec 32) (_ BitVec 64))) (size!24461 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7270 0))(
  ( (LongMapFixedSize!7271 (defaultEntry!4020 Int) (mask!9377 (_ BitVec 32)) (extraKeys!3884 (_ BitVec 32)) (zeroValue!3894 List!31787) (minValue!3894 List!31787) (_size!7313 (_ BitVec 32)) (_keys!3935 array!12952) (_values!3916 array!12950) (_vacant!3696 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14349 0))(
  ( (Cell!14350 (v!33306 LongMapFixedSize!7270)) )
))
(declare-datatypes ((MutLongMap!3635 0))(
  ( (LongMap!3635 (underlying!7473 Cell!14349)) (MutLongMapExt!3634 (__x!20536 Int)) )
))
(declare-datatypes ((Cell!14351 0))(
  ( (Cell!14352 (v!33307 MutLongMap!3635)) )
))
(declare-datatypes ((Hashable!3551 0))(
  ( (HashableExt!3550 (__x!20537 Int)) )
))
(declare-datatypes ((MutableMap!3541 0))(
  ( (MutableMapExt!3540 (__x!20538 Int)) (HashMap!3541 (underlying!7474 Cell!14351) (hashF!5583 Hashable!3551) (_size!7314 (_ BitVec 32)) (defaultValue!3712 Int)) )
))
(declare-datatypes ((CacheUp!2248 0))(
  ( (CacheUp!2249 (cache!3684 MutableMap!3541)) )
))
(declare-fun cacheUp!717 () CacheUp!2248)

(declare-fun e!1731376 () Bool)

(declare-fun inv!43042 (CacheUp!2248) Bool)

(assert (=> start!266354 (and (inv!43042 cacheUp!717) e!1731376)))

(assert (=> start!266354 true))

(declare-datatypes ((tuple3!4456 0))(
  ( (tuple3!4457 (_1!18466 Regex!8011) (_2!18466 Context!4458) (_3!2698 C!16180)) )
))
(declare-datatypes ((tuple2!31536 0))(
  ( (tuple2!31537 (_1!18467 tuple3!4456) (_2!18467 (InoxSet Context!4458))) )
))
(declare-datatypes ((List!31788 0))(
  ( (Nil!31688) (Cons!31688 (h!37108 tuple2!31536) (t!227882 List!31788)) )
))
(declare-datatypes ((array!12954 0))(
  ( (array!12955 (arr!5781 (Array (_ BitVec 32) List!31788)) (size!24462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7272 0))(
  ( (LongMapFixedSize!7273 (defaultEntry!4021 Int) (mask!9378 (_ BitVec 32)) (extraKeys!3885 (_ BitVec 32)) (zeroValue!3895 List!31788) (minValue!3895 List!31788) (_size!7315 (_ BitVec 32)) (_keys!3936 array!12952) (_values!3917 array!12954) (_vacant!3697 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14353 0))(
  ( (Cell!14354 (v!33308 LongMapFixedSize!7272)) )
))
(declare-datatypes ((MutLongMap!3636 0))(
  ( (LongMap!3636 (underlying!7475 Cell!14353)) (MutLongMapExt!3635 (__x!20539 Int)) )
))
(declare-datatypes ((Cell!14355 0))(
  ( (Cell!14356 (v!33309 MutLongMap!3636)) )
))
(declare-datatypes ((Hashable!3552 0))(
  ( (HashableExt!3551 (__x!20540 Int)) )
))
(declare-datatypes ((MutableMap!3542 0))(
  ( (MutableMapExt!3541 (__x!20541 Int)) (HashMap!3542 (underlying!7476 Cell!14355) (hashF!5584 Hashable!3552) (_size!7316 (_ BitVec 32)) (defaultValue!3713 Int)) )
))
(declare-datatypes ((CacheDown!2366 0))(
  ( (CacheDown!2367 (cache!3685 MutableMap!3542)) )
))
(declare-fun cacheDown!730 () CacheDown!2366)

(declare-fun e!1731377 () Bool)

(declare-fun inv!43043 (CacheDown!2366) Bool)

(assert (=> start!266354 (and (inv!43043 cacheDown!730) e!1731377)))

(declare-fun e!1731382 () Bool)

(assert (=> start!266354 e!1731382))

(declare-fun b!2747554 () Bool)

(declare-fun e!1731375 () Bool)

(declare-fun e!1731381 () Bool)

(assert (=> b!2747554 (= e!1731375 e!1731381)))

(declare-fun b!2747555 () Bool)

(declare-fun e!1731384 () Bool)

(declare-fun e!1731373 () Bool)

(assert (=> b!2747555 (= e!1731384 e!1731373)))

(declare-fun b!2747556 () Bool)

(declare-datatypes ((List!31789 0))(
  ( (Nil!31689) (Cons!31689 (h!37109 (_ BitVec 16)) (t!227883 List!31789)) )
))
(declare-datatypes ((TokenValue!5077 0))(
  ( (FloatLiteralValue!10154 (text!35984 List!31789)) (TokenValueExt!5076 (__x!20542 Int)) (Broken!25385 (value!155937 List!31789)) (Object!5176) (End!5077) (Def!5077) (Underscore!5077) (Match!5077) (Else!5077) (Error!5077) (Case!5077) (If!5077) (Extends!5077) (Abstract!5077) (Class!5077) (Val!5077) (DelimiterValue!10154 (del!5137 List!31789)) (KeywordValue!5083 (value!155938 List!31789)) (CommentValue!10154 (value!155939 List!31789)) (WhitespaceValue!10154 (value!155940 List!31789)) (IndentationValue!5077 (value!155941 List!31789)) (String!35292) (Int32!5077) (Broken!25386 (value!155942 List!31789)) (Boolean!5078) (Unit!45547) (OperatorValue!5080 (op!5137 List!31789)) (IdentifierValue!10154 (value!155943 List!31789)) (IdentifierValue!10155 (value!155944 List!31789)) (WhitespaceValue!10155 (value!155945 List!31789)) (True!10154) (False!10154) (Broken!25387 (value!155946 List!31789)) (Broken!25388 (value!155947 List!31789)) (True!10155) (RightBrace!5077) (RightBracket!5077) (Colon!5077) (Null!5077) (Comma!5077) (LeftBracket!5077) (False!10155) (LeftBrace!5077) (ImaginaryLiteralValue!5077 (text!35985 List!31789)) (StringLiteralValue!15231 (value!155948 List!31789)) (EOFValue!5077 (value!155949 List!31789)) (IdentValue!5077 (value!155950 List!31789)) (DelimiterValue!10155 (value!155951 List!31789)) (DedentValue!5077 (value!155952 List!31789)) (NewLineValue!5077 (value!155953 List!31789)) (IntegerValue!15231 (value!155954 (_ BitVec 32)) (text!35986 List!31789)) (IntegerValue!15232 (value!155955 Int) (text!35987 List!31789)) (Times!5077) (Or!5077) (Equal!5077) (Minus!5077) (Broken!25389 (value!155956 List!31789)) (And!5077) (Div!5077) (LessEqual!5077) (Mod!5077) (Concat!13089) (Not!5077) (Plus!5077) (SpaceValue!5077 (value!155957 List!31789)) (IntegerValue!15233 (value!155958 Int) (text!35988 List!31789)) (StringLiteralValue!15232 (text!35989 List!31789)) (FloatLiteralValue!10155 (text!35990 List!31789)) (BytesLiteralValue!5077 (value!155959 List!31789)) (CommentValue!10155 (value!155960 List!31789)) (StringLiteralValue!15233 (value!155961 List!31789)) (ErrorTokenValue!5077 (msg!5138 List!31789)) )
))
(declare-datatypes ((TokenValueInjection!9594 0))(
  ( (TokenValueInjection!9595 (toValue!6853 Int) (toChars!6712 Int)) )
))
(declare-datatypes ((String!35293 0))(
  ( (String!35294 (value!155962 String)) )
))
(declare-datatypes ((Rule!9510 0))(
  ( (Rule!9511 (regex!4855 Regex!8011) (tag!5359 String!35293) (isSeparator!4855 Bool) (transformation!4855 TokenValueInjection!9594)) )
))
(declare-fun rule!196 () Rule!9510)

(declare-fun validRegex!3318 (Regex!8011) Bool)

(assert (=> b!2747556 (= e!1731386 (not (validRegex!3318 (regex!4855 rule!196))))))

(declare-datatypes ((tuple2!31538 0))(
  ( (tuple2!31539 (_1!18468 BalanceConc!19412) (_2!18468 BalanceConc!19412)) )
))
(declare-datatypes ((tuple3!4458 0))(
  ( (tuple3!4459 (_1!18469 tuple2!31538) (_2!18469 CacheUp!2248) (_3!2699 CacheDown!2366)) )
))
(declare-fun lt!971895 () tuple3!4458)

(declare-fun findLongestMatchWithZipperSequenceMem!11 (Regex!8011 BalanceConc!19412 CacheUp!2248 CacheDown!2366) tuple3!4458)

(assert (=> b!2747556 (= lt!971895 (findLongestMatchWithZipperSequenceMem!11 (regex!4855 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2747557 () Bool)

(declare-fun res!1152699 () Bool)

(assert (=> b!2747557 (=> (not res!1152699) (not e!1731386))))

(declare-fun valid!2819 (CacheDown!2366) Bool)

(assert (=> b!2747557 (= res!1152699 (valid!2819 cacheDown!730))))

(declare-fun b!2747558 () Bool)

(declare-fun e!1731379 () Bool)

(assert (=> b!2747558 (= e!1731377 e!1731379)))

(declare-fun e!1731378 () Bool)

(assert (=> b!2747559 (= e!1731379 (and e!1731378 tp!866239))))

(declare-fun b!2747560 () Bool)

(declare-fun e!1731374 () Bool)

(assert (=> b!2747560 (= e!1731374 e!1731384)))

(declare-fun b!2747561 () Bool)

(declare-fun e!1731387 () Bool)

(declare-fun e!1731391 () Bool)

(declare-fun lt!971894 () MutLongMap!3635)

(assert (=> b!2747561 (= e!1731387 (and e!1731391 ((_ is LongMap!3635) lt!971894)))))

(assert (=> b!2747561 (= lt!971894 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))

(declare-fun mapIsEmpty!16585 () Bool)

(declare-fun mapRes!16586 () Bool)

(assert (=> mapIsEmpty!16585 mapRes!16586))

(declare-fun b!2747562 () Bool)

(declare-fun e!1731390 () Bool)

(declare-fun tp!866242 () Bool)

(declare-fun inv!43039 (String!35293) Bool)

(declare-fun inv!43044 (TokenValueInjection!9594) Bool)

(assert (=> b!2747562 (= e!1731382 (and tp!866242 (inv!43039 (tag!5359 rule!196)) (inv!43044 (transformation!4855 rule!196)) e!1731390))))

(assert (=> b!2747563 (= e!1731390 (and tp!866244 tp!866243))))

(declare-fun mapNonEmpty!16585 () Bool)

(declare-fun mapRes!16585 () Bool)

(declare-fun tp!866234 () Bool)

(declare-fun tp!866247 () Bool)

(assert (=> mapNonEmpty!16585 (= mapRes!16585 (and tp!866234 tp!866247))))

(declare-fun mapKey!16586 () (_ BitVec 32))

(declare-fun mapValue!16586 () List!31787)

(declare-fun mapRest!16585 () (Array (_ BitVec 32) List!31787))

(assert (=> mapNonEmpty!16585 (= (arr!5779 (_values!3916 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) (store mapRest!16585 mapKey!16586 mapValue!16586))))

(declare-fun b!2747564 () Bool)

(declare-fun e!1731380 () Bool)

(assert (=> b!2747564 (= e!1731376 e!1731380)))

(declare-fun b!2747565 () Bool)

(declare-fun res!1152698 () Bool)

(assert (=> b!2747565 (=> (not res!1152698) (not e!1731386))))

(declare-fun ruleValid!1595 (LexerInterface!4448 Rule!9510) Bool)

(assert (=> b!2747565 (= res!1152698 (ruleValid!1595 thiss!16130 rule!196))))

(assert (=> b!2747566 (= e!1731380 (and e!1731387 tp!866236))))

(declare-fun b!2747567 () Bool)

(declare-fun e!1731383 () Bool)

(declare-fun tp!866231 () Bool)

(assert (=> b!2747567 (= e!1731383 (and tp!866231 mapRes!16585))))

(declare-fun condMapEmpty!16585 () Bool)

(declare-fun mapDefault!16585 () List!31787)

(assert (=> b!2747567 (= condMapEmpty!16585 (= (arr!5779 (_values!3916 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31787)) mapDefault!16585)))))

(declare-fun tp!866238 () Bool)

(declare-fun tp!866246 () Bool)

(declare-fun array_inv!4133 (array!12952) Bool)

(declare-fun array_inv!4134 (array!12950) Bool)

(assert (=> b!2747568 (= e!1731381 (and tp!866235 tp!866238 tp!866246 (array_inv!4133 (_keys!3935 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) (array_inv!4134 (_values!3916 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) e!1731383))))

(declare-fun b!2747569 () Bool)

(declare-fun res!1152697 () Bool)

(assert (=> b!2747569 (=> (not res!1152697) (not e!1731386))))

(declare-fun valid!2820 (CacheUp!2248) Bool)

(assert (=> b!2747569 (= res!1152697 (valid!2820 cacheUp!717))))

(declare-fun b!2747570 () Bool)

(declare-fun tp!866232 () Bool)

(declare-fun inv!43045 (Conc!9899) Bool)

(assert (=> b!2747570 (= e!1731388 (and (inv!43045 (c!444910 input!1561)) tp!866232))))

(declare-fun mapIsEmpty!16586 () Bool)

(assert (=> mapIsEmpty!16586 mapRes!16585))

(declare-fun b!2747571 () Bool)

(assert (=> b!2747571 (= e!1731391 e!1731375)))

(declare-fun b!2747572 () Bool)

(declare-fun e!1731389 () Bool)

(declare-fun tp!866233 () Bool)

(assert (=> b!2747572 (= e!1731389 (and tp!866233 mapRes!16586))))

(declare-fun condMapEmpty!16586 () Bool)

(declare-fun mapDefault!16586 () List!31788)

(assert (=> b!2747572 (= condMapEmpty!16586 (= (arr!5781 (_values!3917 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31788)) mapDefault!16586)))))

(declare-fun mapNonEmpty!16586 () Bool)

(declare-fun tp!866245 () Bool)

(declare-fun tp!866240 () Bool)

(assert (=> mapNonEmpty!16586 (= mapRes!16586 (and tp!866245 tp!866240))))

(declare-fun mapValue!16585 () List!31788)

(declare-fun mapKey!16585 () (_ BitVec 32))

(declare-fun mapRest!16586 () (Array (_ BitVec 32) List!31788))

(assert (=> mapNonEmpty!16586 (= (arr!5781 (_values!3917 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) (store mapRest!16586 mapKey!16585 mapValue!16585))))

(declare-fun tp!866230 () Bool)

(declare-fun tp!866237 () Bool)

(declare-fun array_inv!4135 (array!12954) Bool)

(assert (=> b!2747573 (= e!1731373 (and tp!866241 tp!866230 tp!866237 (array_inv!4133 (_keys!3936 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) (array_inv!4135 (_values!3917 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) e!1731389))))

(declare-fun b!2747574 () Bool)

(declare-fun lt!971896 () MutLongMap!3636)

(assert (=> b!2747574 (= e!1731378 (and e!1731374 ((_ is LongMap!3636) lt!971896)))))

(assert (=> b!2747574 (= lt!971896 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))

(assert (= (and start!266354 res!1152700) b!2747565))

(assert (= (and b!2747565 res!1152698) b!2747569))

(assert (= (and b!2747569 res!1152697) b!2747557))

(assert (= (and b!2747557 res!1152699) b!2747556))

(assert (= start!266354 b!2747570))

(assert (= (and b!2747567 condMapEmpty!16585) mapIsEmpty!16586))

(assert (= (and b!2747567 (not condMapEmpty!16585)) mapNonEmpty!16585))

(assert (= b!2747568 b!2747567))

(assert (= b!2747554 b!2747568))

(assert (= b!2747571 b!2747554))

(assert (= (and b!2747561 ((_ is LongMap!3635) (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))) b!2747571))

(assert (= b!2747566 b!2747561))

(assert (= (and b!2747564 ((_ is HashMap!3541) (cache!3684 cacheUp!717))) b!2747566))

(assert (= start!266354 b!2747564))

(assert (= (and b!2747572 condMapEmpty!16586) mapIsEmpty!16585))

(assert (= (and b!2747572 (not condMapEmpty!16586)) mapNonEmpty!16586))

(assert (= b!2747573 b!2747572))

(assert (= b!2747555 b!2747573))

(assert (= b!2747560 b!2747555))

(assert (= (and b!2747574 ((_ is LongMap!3636) (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))) b!2747560))

(assert (= b!2747559 b!2747574))

(assert (= (and b!2747558 ((_ is HashMap!3542) (cache!3685 cacheDown!730))) b!2747559))

(assert (= start!266354 b!2747558))

(assert (= b!2747562 b!2747563))

(assert (= start!266354 b!2747562))

(declare-fun m!3163567 () Bool)

(assert (=> b!2747562 m!3163567))

(declare-fun m!3163569 () Bool)

(assert (=> b!2747562 m!3163569))

(declare-fun m!3163571 () Bool)

(assert (=> mapNonEmpty!16585 m!3163571))

(declare-fun m!3163573 () Bool)

(assert (=> b!2747573 m!3163573))

(declare-fun m!3163575 () Bool)

(assert (=> b!2747573 m!3163575))

(declare-fun m!3163577 () Bool)

(assert (=> b!2747569 m!3163577))

(declare-fun m!3163579 () Bool)

(assert (=> b!2747570 m!3163579))

(declare-fun m!3163581 () Bool)

(assert (=> start!266354 m!3163581))

(declare-fun m!3163583 () Bool)

(assert (=> start!266354 m!3163583))

(declare-fun m!3163585 () Bool)

(assert (=> start!266354 m!3163585))

(declare-fun m!3163587 () Bool)

(assert (=> b!2747557 m!3163587))

(declare-fun m!3163589 () Bool)

(assert (=> b!2747565 m!3163589))

(declare-fun m!3163591 () Bool)

(assert (=> b!2747568 m!3163591))

(declare-fun m!3163593 () Bool)

(assert (=> b!2747568 m!3163593))

(declare-fun m!3163595 () Bool)

(assert (=> b!2747556 m!3163595))

(declare-fun m!3163597 () Bool)

(assert (=> b!2747556 m!3163597))

(declare-fun m!3163599 () Bool)

(assert (=> mapNonEmpty!16586 m!3163599))

(check-sat (not start!266354) b_and!202229 (not b_next!78215) b_and!202233 (not b!2747562) (not b_next!78211) (not mapNonEmpty!16586) (not b_next!78217) (not b_next!78219) (not b!2747569) b_and!202231 b_and!202239 (not b!2747570) (not b!2747573) (not b!2747557) (not mapNonEmpty!16585) (not b_next!78213) (not b!2747565) (not b!2747556) (not b!2747568) (not b_next!78209) (not b!2747572) (not b!2747567) b_and!202235 b_and!202237)
(check-sat b_and!202231 b_and!202229 b_and!202239 (not b_next!78215) b_and!202233 (not b_next!78213) (not b_next!78211) (not b_next!78209) (not b_next!78217) (not b_next!78219) b_and!202235 b_and!202237)
(get-model)

(declare-fun d!796198 () Bool)

(declare-fun validCacheMapDown!374 (MutableMap!3542) Bool)

(assert (=> d!796198 (= (valid!2819 cacheDown!730) (validCacheMapDown!374 (cache!3685 cacheDown!730)))))

(declare-fun bs!490313 () Bool)

(assert (= bs!490313 d!796198))

(declare-fun m!3163601 () Bool)

(assert (=> bs!490313 m!3163601))

(assert (=> b!2747557 d!796198))

(declare-fun d!796200 () Bool)

(assert (=> d!796200 (= (inv!43039 (tag!5359 rule!196)) (= (mod (str.len (value!155962 (tag!5359 rule!196))) 2) 0))))

(assert (=> b!2747562 d!796200))

(declare-fun d!796202 () Bool)

(declare-fun res!1152705 () Bool)

(declare-fun e!1731395 () Bool)

(assert (=> d!796202 (=> (not res!1152705) (not e!1731395))))

(declare-fun semiInverseModEq!2005 (Int Int) Bool)

(assert (=> d!796202 (= res!1152705 (semiInverseModEq!2005 (toChars!6712 (transformation!4855 rule!196)) (toValue!6853 (transformation!4855 rule!196))))))

(assert (=> d!796202 (= (inv!43044 (transformation!4855 rule!196)) e!1731395)))

(declare-fun b!2747577 () Bool)

(declare-fun equivClasses!1906 (Int Int) Bool)

(assert (=> b!2747577 (= e!1731395 (equivClasses!1906 (toChars!6712 (transformation!4855 rule!196)) (toValue!6853 (transformation!4855 rule!196))))))

(assert (= (and d!796202 res!1152705) b!2747577))

(declare-fun m!3163603 () Bool)

(assert (=> d!796202 m!3163603))

(declare-fun m!3163605 () Bool)

(assert (=> b!2747577 m!3163605))

(assert (=> b!2747562 d!796202))

(declare-fun d!796204 () Bool)

(declare-fun isBalanced!3016 (Conc!9899) Bool)

(assert (=> d!796204 (= (inv!43041 input!1561) (isBalanced!3016 (c!444910 input!1561)))))

(declare-fun bs!490314 () Bool)

(assert (= bs!490314 d!796204))

(declare-fun m!3163607 () Bool)

(assert (=> bs!490314 m!3163607))

(assert (=> start!266354 d!796204))

(declare-fun d!796206 () Bool)

(declare-fun res!1152708 () Bool)

(declare-fun e!1731398 () Bool)

(assert (=> d!796206 (=> (not res!1152708) (not e!1731398))))

(assert (=> d!796206 (= res!1152708 ((_ is HashMap!3541) (cache!3684 cacheUp!717)))))

(assert (=> d!796206 (= (inv!43042 cacheUp!717) e!1731398)))

(declare-fun b!2747580 () Bool)

(declare-fun validCacheMapUp!343 (MutableMap!3541) Bool)

(assert (=> b!2747580 (= e!1731398 (validCacheMapUp!343 (cache!3684 cacheUp!717)))))

(assert (= (and d!796206 res!1152708) b!2747580))

(declare-fun m!3163609 () Bool)

(assert (=> b!2747580 m!3163609))

(assert (=> start!266354 d!796206))

(declare-fun d!796208 () Bool)

(declare-fun res!1152711 () Bool)

(declare-fun e!1731401 () Bool)

(assert (=> d!796208 (=> (not res!1152711) (not e!1731401))))

(assert (=> d!796208 (= res!1152711 ((_ is HashMap!3542) (cache!3685 cacheDown!730)))))

(assert (=> d!796208 (= (inv!43043 cacheDown!730) e!1731401)))

(declare-fun b!2747583 () Bool)

(assert (=> b!2747583 (= e!1731401 (validCacheMapDown!374 (cache!3685 cacheDown!730)))))

(assert (= (and d!796208 res!1152711) b!2747583))

(assert (=> b!2747583 m!3163601))

(assert (=> start!266354 d!796208))

(declare-fun d!796210 () Bool)

(assert (=> d!796210 (= (array_inv!4133 (_keys!3935 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) (bvsge (size!24461 (_keys!3935 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747568 d!796210))

(declare-fun d!796212 () Bool)

(assert (=> d!796212 (= (array_inv!4134 (_values!3916 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) (bvsge (size!24460 (_values!3916 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747568 d!796212))

(declare-fun d!796214 () Bool)

(assert (=> d!796214 (= (valid!2820 cacheUp!717) (validCacheMapUp!343 (cache!3684 cacheUp!717)))))

(declare-fun bs!490315 () Bool)

(assert (= bs!490315 d!796214))

(assert (=> bs!490315 m!3163609))

(assert (=> b!2747569 d!796214))

(declare-fun d!796216 () Bool)

(assert (=> d!796216 (= (array_inv!4133 (_keys!3936 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) (bvsge (size!24461 (_keys!3936 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747573 d!796216))

(declare-fun d!796218 () Bool)

(assert (=> d!796218 (= (array_inv!4135 (_values!3917 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) (bvsge (size!24462 (_values!3917 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2747573 d!796218))

(declare-fun d!796220 () Bool)

(declare-fun c!444914 () Bool)

(assert (=> d!796220 (= c!444914 ((_ is Node!9899) (c!444910 input!1561)))))

(declare-fun e!1731406 () Bool)

(assert (=> d!796220 (= (inv!43045 (c!444910 input!1561)) e!1731406)))

(declare-fun b!2747590 () Bool)

(declare-fun inv!43046 (Conc!9899) Bool)

(assert (=> b!2747590 (= e!1731406 (inv!43046 (c!444910 input!1561)))))

(declare-fun b!2747591 () Bool)

(declare-fun e!1731407 () Bool)

(assert (=> b!2747591 (= e!1731406 e!1731407)))

(declare-fun res!1152714 () Bool)

(assert (=> b!2747591 (= res!1152714 (not ((_ is Leaf!15073) (c!444910 input!1561))))))

(assert (=> b!2747591 (=> res!1152714 e!1731407)))

(declare-fun b!2747592 () Bool)

(declare-fun inv!43047 (Conc!9899) Bool)

(assert (=> b!2747592 (= e!1731407 (inv!43047 (c!444910 input!1561)))))

(assert (= (and d!796220 c!444914) b!2747590))

(assert (= (and d!796220 (not c!444914)) b!2747591))

(assert (= (and b!2747591 (not res!1152714)) b!2747592))

(declare-fun m!3163611 () Bool)

(assert (=> b!2747590 m!3163611))

(declare-fun m!3163613 () Bool)

(assert (=> b!2747592 m!3163613))

(assert (=> b!2747570 d!796220))

(declare-fun b!2747611 () Bool)

(declare-fun res!1152729 () Bool)

(declare-fun e!1731424 () Bool)

(assert (=> b!2747611 (=> res!1152729 e!1731424)))

(assert (=> b!2747611 (= res!1152729 (not ((_ is Concat!13088) (regex!4855 rule!196))))))

(declare-fun e!1731426 () Bool)

(assert (=> b!2747611 (= e!1731426 e!1731424)))

(declare-fun bm!177435 () Bool)

(declare-fun call!177440 () Bool)

(declare-fun call!177441 () Bool)

(assert (=> bm!177435 (= call!177440 call!177441)))

(declare-fun b!2747612 () Bool)

(declare-fun res!1152726 () Bool)

(declare-fun e!1731428 () Bool)

(assert (=> b!2747612 (=> (not res!1152726) (not e!1731428))))

(assert (=> b!2747612 (= res!1152726 call!177440)))

(assert (=> b!2747612 (= e!1731426 e!1731428)))

(declare-fun b!2747613 () Bool)

(declare-fun e!1731422 () Bool)

(declare-fun e!1731425 () Bool)

(assert (=> b!2747613 (= e!1731422 e!1731425)))

(declare-fun c!444919 () Bool)

(assert (=> b!2747613 (= c!444919 ((_ is Star!8011) (regex!4855 rule!196)))))

(declare-fun c!444920 () Bool)

(declare-fun bm!177436 () Bool)

(assert (=> bm!177436 (= call!177441 (validRegex!3318 (ite c!444919 (reg!8340 (regex!4855 rule!196)) (ite c!444920 (regOne!16535 (regex!4855 rule!196)) (regOne!16534 (regex!4855 rule!196))))))))

(declare-fun bm!177437 () Bool)

(declare-fun call!177442 () Bool)

(assert (=> bm!177437 (= call!177442 (validRegex!3318 (ite c!444920 (regTwo!16535 (regex!4855 rule!196)) (regTwo!16534 (regex!4855 rule!196)))))))

(declare-fun b!2747615 () Bool)

(declare-fun e!1731423 () Bool)

(assert (=> b!2747615 (= e!1731425 e!1731423)))

(declare-fun res!1152728 () Bool)

(declare-fun nullable!2609 (Regex!8011) Bool)

(assert (=> b!2747615 (= res!1152728 (not (nullable!2609 (reg!8340 (regex!4855 rule!196)))))))

(assert (=> b!2747615 (=> (not res!1152728) (not e!1731423))))

(declare-fun b!2747616 () Bool)

(assert (=> b!2747616 (= e!1731428 call!177442)))

(declare-fun b!2747617 () Bool)

(assert (=> b!2747617 (= e!1731425 e!1731426)))

(assert (=> b!2747617 (= c!444920 ((_ is Union!8011) (regex!4855 rule!196)))))

(declare-fun d!796222 () Bool)

(declare-fun res!1152725 () Bool)

(assert (=> d!796222 (=> res!1152725 e!1731422)))

(assert (=> d!796222 (= res!1152725 ((_ is ElementMatch!8011) (regex!4855 rule!196)))))

(assert (=> d!796222 (= (validRegex!3318 (regex!4855 rule!196)) e!1731422)))

(declare-fun b!2747614 () Bool)

(declare-fun e!1731427 () Bool)

(assert (=> b!2747614 (= e!1731427 call!177442)))

(declare-fun b!2747618 () Bool)

(assert (=> b!2747618 (= e!1731424 e!1731427)))

(declare-fun res!1152727 () Bool)

(assert (=> b!2747618 (=> (not res!1152727) (not e!1731427))))

(assert (=> b!2747618 (= res!1152727 call!177440)))

(declare-fun b!2747619 () Bool)

(assert (=> b!2747619 (= e!1731423 call!177441)))

(assert (= (and d!796222 (not res!1152725)) b!2747613))

(assert (= (and b!2747613 c!444919) b!2747615))

(assert (= (and b!2747613 (not c!444919)) b!2747617))

(assert (= (and b!2747615 res!1152728) b!2747619))

(assert (= (and b!2747617 c!444920) b!2747612))

(assert (= (and b!2747617 (not c!444920)) b!2747611))

(assert (= (and b!2747612 res!1152726) b!2747616))

(assert (= (and b!2747611 (not res!1152729)) b!2747618))

(assert (= (and b!2747618 res!1152727) b!2747614))

(assert (= (or b!2747612 b!2747618) bm!177435))

(assert (= (or b!2747616 b!2747614) bm!177437))

(assert (= (or b!2747619 bm!177435) bm!177436))

(declare-fun m!3163615 () Bool)

(assert (=> bm!177436 m!3163615))

(declare-fun m!3163617 () Bool)

(assert (=> bm!177437 m!3163617))

(declare-fun m!3163619 () Bool)

(assert (=> b!2747615 m!3163619))

(assert (=> b!2747556 d!796222))

(declare-fun d!796224 () Bool)

(declare-fun e!1731431 () Bool)

(assert (=> d!796224 e!1731431))

(declare-fun res!1152734 () Bool)

(assert (=> d!796224 (=> (not res!1152734) (not e!1731431))))

(declare-fun lt!971899 () tuple3!4458)

(declare-fun findLongestMatchWithZipperSequence!190 (Regex!8011 BalanceConc!19412) tuple2!31538)

(assert (=> d!796224 (= res!1152734 (= (_1!18469 lt!971899) (findLongestMatchWithZipperSequence!190 (regex!4855 rule!196) input!1561)))))

(declare-fun choose!16071 (Regex!8011 BalanceConc!19412 CacheUp!2248 CacheDown!2366) tuple3!4458)

(assert (=> d!796224 (= lt!971899 (choose!16071 (regex!4855 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(assert (=> d!796224 (validRegex!3318 (regex!4855 rule!196))))

(assert (=> d!796224 (= (findLongestMatchWithZipperSequenceMem!11 (regex!4855 rule!196) input!1561 cacheUp!717 cacheDown!730) lt!971899)))

(declare-fun b!2747624 () Bool)

(declare-fun res!1152735 () Bool)

(assert (=> b!2747624 (=> (not res!1152735) (not e!1731431))))

(assert (=> b!2747624 (= res!1152735 (valid!2819 (_3!2699 lt!971899)))))

(declare-fun b!2747625 () Bool)

(assert (=> b!2747625 (= e!1731431 (valid!2820 (_2!18469 lt!971899)))))

(assert (= (and d!796224 res!1152734) b!2747624))

(assert (= (and b!2747624 res!1152735) b!2747625))

(declare-fun m!3163621 () Bool)

(assert (=> d!796224 m!3163621))

(declare-fun m!3163623 () Bool)

(assert (=> d!796224 m!3163623))

(assert (=> d!796224 m!3163595))

(declare-fun m!3163625 () Bool)

(assert (=> b!2747624 m!3163625))

(declare-fun m!3163627 () Bool)

(assert (=> b!2747625 m!3163627))

(assert (=> b!2747556 d!796224))

(declare-fun d!796226 () Bool)

(declare-fun res!1152740 () Bool)

(declare-fun e!1731434 () Bool)

(assert (=> d!796226 (=> (not res!1152740) (not e!1731434))))

(assert (=> d!796226 (= res!1152740 (validRegex!3318 (regex!4855 rule!196)))))

(assert (=> d!796226 (= (ruleValid!1595 thiss!16130 rule!196) e!1731434)))

(declare-fun b!2747630 () Bool)

(declare-fun res!1152741 () Bool)

(assert (=> b!2747630 (=> (not res!1152741) (not e!1731434))))

(assert (=> b!2747630 (= res!1152741 (not (nullable!2609 (regex!4855 rule!196))))))

(declare-fun b!2747631 () Bool)

(assert (=> b!2747631 (= e!1731434 (not (= (tag!5359 rule!196) (String!35294 ""))))))

(assert (= (and d!796226 res!1152740) b!2747630))

(assert (= (and b!2747630 res!1152741) b!2747631))

(assert (=> d!796226 m!3163595))

(declare-fun m!3163629 () Bool)

(assert (=> b!2747630 m!3163629))

(assert (=> b!2747565 d!796226))

(declare-fun b!2747642 () Bool)

(declare-fun e!1731437 () Bool)

(declare-fun tp_is_empty!13941 () Bool)

(assert (=> b!2747642 (= e!1731437 tp_is_empty!13941)))

(declare-fun b!2747644 () Bool)

(declare-fun tp!866258 () Bool)

(assert (=> b!2747644 (= e!1731437 tp!866258)))

(assert (=> b!2747562 (= tp!866242 e!1731437)))

(declare-fun b!2747643 () Bool)

(declare-fun tp!866262 () Bool)

(declare-fun tp!866260 () Bool)

(assert (=> b!2747643 (= e!1731437 (and tp!866262 tp!866260))))

(declare-fun b!2747645 () Bool)

(declare-fun tp!866259 () Bool)

(declare-fun tp!866261 () Bool)

(assert (=> b!2747645 (= e!1731437 (and tp!866259 tp!866261))))

(assert (= (and b!2747562 ((_ is ElementMatch!8011) (regex!4855 rule!196))) b!2747642))

(assert (= (and b!2747562 ((_ is Concat!13088) (regex!4855 rule!196))) b!2747643))

(assert (= (and b!2747562 ((_ is Star!8011) (regex!4855 rule!196))) b!2747644))

(assert (= (and b!2747562 ((_ is Union!8011) (regex!4855 rule!196))) b!2747645))

(declare-fun setIsEmpty!21777 () Bool)

(declare-fun setRes!21777 () Bool)

(assert (=> setIsEmpty!21777 setRes!21777))

(declare-fun e!1731446 () Bool)

(assert (=> b!2747567 (= tp!866231 e!1731446)))

(declare-fun tp!866274 () Bool)

(declare-fun e!1731444 () Bool)

(declare-fun b!2747654 () Bool)

(declare-fun inv!43048 (Context!4458) Bool)

(assert (=> b!2747654 (= e!1731446 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 mapDefault!16585)))) e!1731444 tp_is_empty!13941 setRes!21777 tp!866274))))

(declare-fun condSetEmpty!21777 () Bool)

(assert (=> b!2747654 (= condSetEmpty!21777 (= (_2!18465 (h!37107 mapDefault!16585)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747655 () Bool)

(declare-fun e!1731445 () Bool)

(declare-fun tp!866271 () Bool)

(assert (=> b!2747655 (= e!1731445 tp!866271)))

(declare-fun tp!866272 () Bool)

(declare-fun setNonEmpty!21777 () Bool)

(declare-fun setElem!21777 () Context!4458)

(assert (=> setNonEmpty!21777 (= setRes!21777 (and tp!866272 (inv!43048 setElem!21777) e!1731445))))

(declare-fun setRest!21777 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21777 (= (_2!18465 (h!37107 mapDefault!16585)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21777 true) setRest!21777))))

(declare-fun b!2747656 () Bool)

(declare-fun tp!866273 () Bool)

(assert (=> b!2747656 (= e!1731444 tp!866273)))

(assert (= b!2747654 b!2747656))

(assert (= (and b!2747654 condSetEmpty!21777) setIsEmpty!21777))

(assert (= (and b!2747654 (not condSetEmpty!21777)) setNonEmpty!21777))

(assert (= setNonEmpty!21777 b!2747655))

(assert (= (and b!2747567 ((_ is Cons!31687) mapDefault!16585)) b!2747654))

(declare-fun m!3163631 () Bool)

(assert (=> b!2747654 m!3163631))

(declare-fun m!3163633 () Bool)

(assert (=> setNonEmpty!21777 m!3163633))

(declare-fun e!1731454 () Bool)

(assert (=> b!2747572 (= tp!866233 e!1731454)))

(declare-fun tp!866288 () Bool)

(declare-fun b!2747665 () Bool)

(declare-fun setRes!21780 () Bool)

(declare-fun e!1731455 () Bool)

(declare-fun tp!866285 () Bool)

(assert (=> b!2747665 (= e!1731454 (and tp!866288 (inv!43048 (_2!18466 (_1!18467 (h!37108 mapDefault!16586)))) e!1731455 tp_is_empty!13941 setRes!21780 tp!866285))))

(declare-fun condSetEmpty!21780 () Bool)

(assert (=> b!2747665 (= condSetEmpty!21780 (= (_2!18467 (h!37108 mapDefault!16586)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747666 () Bool)

(declare-fun tp!866289 () Bool)

(assert (=> b!2747666 (= e!1731455 tp!866289)))

(declare-fun b!2747667 () Bool)

(declare-fun e!1731453 () Bool)

(declare-fun tp!866286 () Bool)

(assert (=> b!2747667 (= e!1731453 tp!866286)))

(declare-fun setIsEmpty!21780 () Bool)

(assert (=> setIsEmpty!21780 setRes!21780))

(declare-fun setElem!21780 () Context!4458)

(declare-fun tp!866287 () Bool)

(declare-fun setNonEmpty!21780 () Bool)

(assert (=> setNonEmpty!21780 (= setRes!21780 (and tp!866287 (inv!43048 setElem!21780) e!1731453))))

(declare-fun setRest!21780 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21780 (= (_2!18467 (h!37108 mapDefault!16586)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21780 true) setRest!21780))))

(assert (= b!2747665 b!2747666))

(assert (= (and b!2747665 condSetEmpty!21780) setIsEmpty!21780))

(assert (= (and b!2747665 (not condSetEmpty!21780)) setNonEmpty!21780))

(assert (= setNonEmpty!21780 b!2747667))

(assert (= (and b!2747572 ((_ is Cons!31688) mapDefault!16586)) b!2747665))

(declare-fun m!3163635 () Bool)

(assert (=> b!2747665 m!3163635))

(declare-fun m!3163637 () Bool)

(assert (=> setNonEmpty!21780 m!3163637))

(declare-fun setIsEmpty!21781 () Bool)

(declare-fun setRes!21781 () Bool)

(assert (=> setIsEmpty!21781 setRes!21781))

(declare-fun e!1731458 () Bool)

(assert (=> b!2747568 (= tp!866238 e!1731458)))

(declare-fun b!2747668 () Bool)

(declare-fun e!1731456 () Bool)

(declare-fun tp!866293 () Bool)

(assert (=> b!2747668 (= e!1731458 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 (zeroValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))))) e!1731456 tp_is_empty!13941 setRes!21781 tp!866293))))

(declare-fun condSetEmpty!21781 () Bool)

(assert (=> b!2747668 (= condSetEmpty!21781 (= (_2!18465 (h!37107 (zeroValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747669 () Bool)

(declare-fun e!1731457 () Bool)

(declare-fun tp!866290 () Bool)

(assert (=> b!2747669 (= e!1731457 tp!866290)))

(declare-fun setNonEmpty!21781 () Bool)

(declare-fun setElem!21781 () Context!4458)

(declare-fun tp!866291 () Bool)

(assert (=> setNonEmpty!21781 (= setRes!21781 (and tp!866291 (inv!43048 setElem!21781) e!1731457))))

(declare-fun setRest!21781 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21781 (= (_2!18465 (h!37107 (zeroValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21781 true) setRest!21781))))

(declare-fun b!2747670 () Bool)

(declare-fun tp!866292 () Bool)

(assert (=> b!2747670 (= e!1731456 tp!866292)))

(assert (= b!2747668 b!2747670))

(assert (= (and b!2747668 condSetEmpty!21781) setIsEmpty!21781))

(assert (= (and b!2747668 (not condSetEmpty!21781)) setNonEmpty!21781))

(assert (= setNonEmpty!21781 b!2747669))

(assert (= (and b!2747568 ((_ is Cons!31687) (zeroValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) b!2747668))

(declare-fun m!3163639 () Bool)

(assert (=> b!2747668 m!3163639))

(declare-fun m!3163641 () Bool)

(assert (=> setNonEmpty!21781 m!3163641))

(declare-fun setIsEmpty!21782 () Bool)

(declare-fun setRes!21782 () Bool)

(assert (=> setIsEmpty!21782 setRes!21782))

(declare-fun e!1731461 () Bool)

(assert (=> b!2747568 (= tp!866246 e!1731461)))

(declare-fun tp!866297 () Bool)

(declare-fun e!1731459 () Bool)

(declare-fun b!2747671 () Bool)

(assert (=> b!2747671 (= e!1731461 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 (minValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))))) e!1731459 tp_is_empty!13941 setRes!21782 tp!866297))))

(declare-fun condSetEmpty!21782 () Bool)

(assert (=> b!2747671 (= condSetEmpty!21782 (= (_2!18465 (h!37107 (minValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747672 () Bool)

(declare-fun e!1731460 () Bool)

(declare-fun tp!866294 () Bool)

(assert (=> b!2747672 (= e!1731460 tp!866294)))

(declare-fun setElem!21782 () Context!4458)

(declare-fun setNonEmpty!21782 () Bool)

(declare-fun tp!866295 () Bool)

(assert (=> setNonEmpty!21782 (= setRes!21782 (and tp!866295 (inv!43048 setElem!21782) e!1731460))))

(declare-fun setRest!21782 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21782 (= (_2!18465 (h!37107 (minValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21782 true) setRest!21782))))

(declare-fun b!2747673 () Bool)

(declare-fun tp!866296 () Bool)

(assert (=> b!2747673 (= e!1731459 tp!866296)))

(assert (= b!2747671 b!2747673))

(assert (= (and b!2747671 condSetEmpty!21782) setIsEmpty!21782))

(assert (= (and b!2747671 (not condSetEmpty!21782)) setNonEmpty!21782))

(assert (= setNonEmpty!21782 b!2747672))

(assert (= (and b!2747568 ((_ is Cons!31687) (minValue!3894 (v!33306 (underlying!7473 (v!33307 (underlying!7474 (cache!3684 cacheUp!717)))))))) b!2747671))

(declare-fun m!3163643 () Bool)

(assert (=> b!2747671 m!3163643))

(declare-fun m!3163645 () Bool)

(assert (=> setNonEmpty!21782 m!3163645))

(declare-fun tp!866319 () Bool)

(declare-fun e!1731474 () Bool)

(declare-fun setRes!21787 () Bool)

(declare-fun setElem!21788 () Context!4458)

(declare-fun setNonEmpty!21787 () Bool)

(assert (=> setNonEmpty!21787 (= setRes!21787 (and tp!866319 (inv!43048 setElem!21788) e!1731474))))

(declare-fun mapDefault!16589 () List!31787)

(declare-fun setRest!21787 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21787 (= (_2!18465 (h!37107 mapDefault!16589)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21788 true) setRest!21787))))

(declare-fun setRes!21788 () Bool)

(declare-fun e!1731476 () Bool)

(declare-fun setElem!21787 () Context!4458)

(declare-fun setNonEmpty!21788 () Bool)

(declare-fun tp!866323 () Bool)

(assert (=> setNonEmpty!21788 (= setRes!21788 (and tp!866323 (inv!43048 setElem!21787) e!1731476))))

(declare-fun mapValue!16589 () List!31787)

(declare-fun setRest!21788 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21788 (= (_2!18465 (h!37107 mapValue!16589)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21787 true) setRest!21788))))

(declare-fun b!2747688 () Bool)

(declare-fun e!1731478 () Bool)

(declare-fun tp!866324 () Bool)

(assert (=> b!2747688 (= e!1731478 tp!866324)))

(declare-fun mapNonEmpty!16589 () Bool)

(declare-fun mapRes!16589 () Bool)

(declare-fun tp!866317 () Bool)

(declare-fun e!1731479 () Bool)

(assert (=> mapNonEmpty!16589 (= mapRes!16589 (and tp!866317 e!1731479))))

(declare-fun mapRest!16589 () (Array (_ BitVec 32) List!31787))

(declare-fun mapKey!16589 () (_ BitVec 32))

(assert (=> mapNonEmpty!16589 (= mapRest!16585 (store mapRest!16589 mapKey!16589 mapValue!16589))))

(declare-fun setIsEmpty!21787 () Bool)

(assert (=> setIsEmpty!21787 setRes!21787))

(declare-fun b!2747689 () Bool)

(declare-fun e!1731477 () Bool)

(declare-fun tp!866316 () Bool)

(assert (=> b!2747689 (= e!1731477 tp!866316)))

(declare-fun tp!866318 () Bool)

(declare-fun b!2747690 () Bool)

(assert (=> b!2747690 (= e!1731479 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 mapValue!16589)))) e!1731478 tp_is_empty!13941 setRes!21788 tp!866318))))

(declare-fun condSetEmpty!21787 () Bool)

(assert (=> b!2747690 (= condSetEmpty!21787 (= (_2!18465 (h!37107 mapValue!16589)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun mapIsEmpty!16589 () Bool)

(assert (=> mapIsEmpty!16589 mapRes!16589))

(declare-fun condMapEmpty!16589 () Bool)

(assert (=> mapNonEmpty!16585 (= condMapEmpty!16589 (= mapRest!16585 ((as const (Array (_ BitVec 32) List!31787)) mapDefault!16589)))))

(declare-fun e!1731475 () Bool)

(assert (=> mapNonEmpty!16585 (= tp!866234 (and e!1731475 mapRes!16589))))

(declare-fun b!2747691 () Bool)

(declare-fun tp!866321 () Bool)

(assert (=> b!2747691 (= e!1731474 tp!866321)))

(declare-fun tp!866320 () Bool)

(declare-fun b!2747692 () Bool)

(assert (=> b!2747692 (= e!1731475 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 mapDefault!16589)))) e!1731477 tp_is_empty!13941 setRes!21787 tp!866320))))

(declare-fun condSetEmpty!21788 () Bool)

(assert (=> b!2747692 (= condSetEmpty!21788 (= (_2!18465 (h!37107 mapDefault!16589)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747693 () Bool)

(declare-fun tp!866322 () Bool)

(assert (=> b!2747693 (= e!1731476 tp!866322)))

(declare-fun setIsEmpty!21788 () Bool)

(assert (=> setIsEmpty!21788 setRes!21788))

(assert (= (and mapNonEmpty!16585 condMapEmpty!16589) mapIsEmpty!16589))

(assert (= (and mapNonEmpty!16585 (not condMapEmpty!16589)) mapNonEmpty!16589))

(assert (= b!2747690 b!2747688))

(assert (= (and b!2747690 condSetEmpty!21787) setIsEmpty!21788))

(assert (= (and b!2747690 (not condSetEmpty!21787)) setNonEmpty!21788))

(assert (= setNonEmpty!21788 b!2747693))

(assert (= (and mapNonEmpty!16589 ((_ is Cons!31687) mapValue!16589)) b!2747690))

(assert (= b!2747692 b!2747689))

(assert (= (and b!2747692 condSetEmpty!21788) setIsEmpty!21787))

(assert (= (and b!2747692 (not condSetEmpty!21788)) setNonEmpty!21787))

(assert (= setNonEmpty!21787 b!2747691))

(assert (= (and mapNonEmpty!16585 ((_ is Cons!31687) mapDefault!16589)) b!2747692))

(declare-fun m!3163647 () Bool)

(assert (=> b!2747692 m!3163647))

(declare-fun m!3163649 () Bool)

(assert (=> setNonEmpty!21788 m!3163649))

(declare-fun m!3163651 () Bool)

(assert (=> mapNonEmpty!16589 m!3163651))

(declare-fun m!3163653 () Bool)

(assert (=> setNonEmpty!21787 m!3163653))

(declare-fun m!3163655 () Bool)

(assert (=> b!2747690 m!3163655))

(declare-fun setIsEmpty!21789 () Bool)

(declare-fun setRes!21789 () Bool)

(assert (=> setIsEmpty!21789 setRes!21789))

(declare-fun e!1731482 () Bool)

(assert (=> mapNonEmpty!16585 (= tp!866247 e!1731482)))

(declare-fun tp!866328 () Bool)

(declare-fun e!1731480 () Bool)

(declare-fun b!2747694 () Bool)

(assert (=> b!2747694 (= e!1731482 (and (inv!43048 (_1!18464 (_1!18465 (h!37107 mapValue!16586)))) e!1731480 tp_is_empty!13941 setRes!21789 tp!866328))))

(declare-fun condSetEmpty!21789 () Bool)

(assert (=> b!2747694 (= condSetEmpty!21789 (= (_2!18465 (h!37107 mapValue!16586)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747695 () Bool)

(declare-fun e!1731481 () Bool)

(declare-fun tp!866325 () Bool)

(assert (=> b!2747695 (= e!1731481 tp!866325)))

(declare-fun tp!866326 () Bool)

(declare-fun setElem!21789 () Context!4458)

(declare-fun setNonEmpty!21789 () Bool)

(assert (=> setNonEmpty!21789 (= setRes!21789 (and tp!866326 (inv!43048 setElem!21789) e!1731481))))

(declare-fun setRest!21789 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21789 (= (_2!18465 (h!37107 mapValue!16586)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21789 true) setRest!21789))))

(declare-fun b!2747696 () Bool)

(declare-fun tp!866327 () Bool)

(assert (=> b!2747696 (= e!1731480 tp!866327)))

(assert (= b!2747694 b!2747696))

(assert (= (and b!2747694 condSetEmpty!21789) setIsEmpty!21789))

(assert (= (and b!2747694 (not condSetEmpty!21789)) setNonEmpty!21789))

(assert (= setNonEmpty!21789 b!2747695))

(assert (= (and mapNonEmpty!16585 ((_ is Cons!31687) mapValue!16586)) b!2747694))

(declare-fun m!3163657 () Bool)

(assert (=> b!2747694 m!3163657))

(declare-fun m!3163659 () Bool)

(assert (=> setNonEmpty!21789 m!3163659))

(declare-fun b!2747711 () Bool)

(declare-fun e!1731497 () Bool)

(declare-fun setRes!21795 () Bool)

(declare-fun tp!866357 () Bool)

(declare-fun tp!866352 () Bool)

(declare-fun e!1731496 () Bool)

(declare-fun mapDefault!16592 () List!31788)

(assert (=> b!2747711 (= e!1731496 (and tp!866357 (inv!43048 (_2!18466 (_1!18467 (h!37108 mapDefault!16592)))) e!1731497 tp_is_empty!13941 setRes!21795 tp!866352))))

(declare-fun condSetEmpty!21794 () Bool)

(assert (=> b!2747711 (= condSetEmpty!21794 (= (_2!18467 (h!37108 mapDefault!16592)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun mapNonEmpty!16592 () Bool)

(declare-fun mapRes!16592 () Bool)

(declare-fun tp!866358 () Bool)

(declare-fun e!1731495 () Bool)

(assert (=> mapNonEmpty!16592 (= mapRes!16592 (and tp!866358 e!1731495))))

(declare-fun mapValue!16592 () List!31788)

(declare-fun mapRest!16592 () (Array (_ BitVec 32) List!31788))

(declare-fun mapKey!16592 () (_ BitVec 32))

(assert (=> mapNonEmpty!16592 (= mapRest!16586 (store mapRest!16592 mapKey!16592 mapValue!16592))))

(declare-fun setElem!21794 () Context!4458)

(declare-fun setRes!21794 () Bool)

(declare-fun setNonEmpty!21794 () Bool)

(declare-fun e!1731499 () Bool)

(declare-fun tp!866359 () Bool)

(assert (=> setNonEmpty!21794 (= setRes!21794 (and tp!866359 (inv!43048 setElem!21794) e!1731499))))

(declare-fun setRest!21795 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21794 (= (_2!18467 (h!37108 mapValue!16592)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21794 true) setRest!21795))))

(declare-fun setIsEmpty!21794 () Bool)

(assert (=> setIsEmpty!21794 setRes!21795))

(declare-fun b!2747712 () Bool)

(declare-fun e!1731500 () Bool)

(declare-fun tp!866355 () Bool)

(assert (=> b!2747712 (= e!1731500 tp!866355)))

(declare-fun b!2747713 () Bool)

(declare-fun tp!866361 () Bool)

(assert (=> b!2747713 (= e!1731499 tp!866361)))

(declare-fun mapIsEmpty!16592 () Bool)

(assert (=> mapIsEmpty!16592 mapRes!16592))

(declare-fun b!2747714 () Bool)

(declare-fun e!1731498 () Bool)

(declare-fun tp!866360 () Bool)

(assert (=> b!2747714 (= e!1731498 tp!866360)))

(declare-fun setIsEmpty!21795 () Bool)

(assert (=> setIsEmpty!21795 setRes!21794))

(declare-fun setNonEmpty!21795 () Bool)

(declare-fun setElem!21795 () Context!4458)

(declare-fun tp!866354 () Bool)

(assert (=> setNonEmpty!21795 (= setRes!21795 (and tp!866354 (inv!43048 setElem!21795) e!1731500))))

(declare-fun setRest!21794 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21795 (= (_2!18467 (h!37108 mapDefault!16592)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21795 true) setRest!21794))))

(declare-fun condMapEmpty!16592 () Bool)

(assert (=> mapNonEmpty!16586 (= condMapEmpty!16592 (= mapRest!16586 ((as const (Array (_ BitVec 32) List!31788)) mapDefault!16592)))))

(assert (=> mapNonEmpty!16586 (= tp!866245 (and e!1731496 mapRes!16592))))

(declare-fun b!2747715 () Bool)

(declare-fun tp!866351 () Bool)

(declare-fun tp!866353 () Bool)

(assert (=> b!2747715 (= e!1731495 (and tp!866351 (inv!43048 (_2!18466 (_1!18467 (h!37108 mapValue!16592)))) e!1731498 tp_is_empty!13941 setRes!21794 tp!866353))))

(declare-fun condSetEmpty!21795 () Bool)

(assert (=> b!2747715 (= condSetEmpty!21795 (= (_2!18467 (h!37108 mapValue!16592)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747716 () Bool)

(declare-fun tp!866356 () Bool)

(assert (=> b!2747716 (= e!1731497 tp!866356)))

(assert (= (and mapNonEmpty!16586 condMapEmpty!16592) mapIsEmpty!16592))

(assert (= (and mapNonEmpty!16586 (not condMapEmpty!16592)) mapNonEmpty!16592))

(assert (= b!2747715 b!2747714))

(assert (= (and b!2747715 condSetEmpty!21795) setIsEmpty!21795))

(assert (= (and b!2747715 (not condSetEmpty!21795)) setNonEmpty!21794))

(assert (= setNonEmpty!21794 b!2747713))

(assert (= (and mapNonEmpty!16592 ((_ is Cons!31688) mapValue!16592)) b!2747715))

(assert (= b!2747711 b!2747716))

(assert (= (and b!2747711 condSetEmpty!21794) setIsEmpty!21794))

(assert (= (and b!2747711 (not condSetEmpty!21794)) setNonEmpty!21795))

(assert (= setNonEmpty!21795 b!2747712))

(assert (= (and mapNonEmpty!16586 ((_ is Cons!31688) mapDefault!16592)) b!2747711))

(declare-fun m!3163661 () Bool)

(assert (=> setNonEmpty!21794 m!3163661))

(declare-fun m!3163663 () Bool)

(assert (=> setNonEmpty!21795 m!3163663))

(declare-fun m!3163665 () Bool)

(assert (=> mapNonEmpty!16592 m!3163665))

(declare-fun m!3163667 () Bool)

(assert (=> b!2747715 m!3163667))

(declare-fun m!3163669 () Bool)

(assert (=> b!2747711 m!3163669))

(declare-fun e!1731502 () Bool)

(assert (=> mapNonEmpty!16586 (= tp!866240 e!1731502)))

(declare-fun tp!866362 () Bool)

(declare-fun b!2747717 () Bool)

(declare-fun tp!866365 () Bool)

(declare-fun setRes!21796 () Bool)

(declare-fun e!1731503 () Bool)

(assert (=> b!2747717 (= e!1731502 (and tp!866365 (inv!43048 (_2!18466 (_1!18467 (h!37108 mapValue!16585)))) e!1731503 tp_is_empty!13941 setRes!21796 tp!866362))))

(declare-fun condSetEmpty!21796 () Bool)

(assert (=> b!2747717 (= condSetEmpty!21796 (= (_2!18467 (h!37108 mapValue!16585)) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747718 () Bool)

(declare-fun tp!866366 () Bool)

(assert (=> b!2747718 (= e!1731503 tp!866366)))

(declare-fun b!2747719 () Bool)

(declare-fun e!1731501 () Bool)

(declare-fun tp!866363 () Bool)

(assert (=> b!2747719 (= e!1731501 tp!866363)))

(declare-fun setIsEmpty!21796 () Bool)

(assert (=> setIsEmpty!21796 setRes!21796))

(declare-fun setElem!21796 () Context!4458)

(declare-fun tp!866364 () Bool)

(declare-fun setNonEmpty!21796 () Bool)

(assert (=> setNonEmpty!21796 (= setRes!21796 (and tp!866364 (inv!43048 setElem!21796) e!1731501))))

(declare-fun setRest!21796 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21796 (= (_2!18467 (h!37108 mapValue!16585)) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21796 true) setRest!21796))))

(assert (= b!2747717 b!2747718))

(assert (= (and b!2747717 condSetEmpty!21796) setIsEmpty!21796))

(assert (= (and b!2747717 (not condSetEmpty!21796)) setNonEmpty!21796))

(assert (= setNonEmpty!21796 b!2747719))

(assert (= (and mapNonEmpty!16586 ((_ is Cons!31688) mapValue!16585)) b!2747717))

(declare-fun m!3163671 () Bool)

(assert (=> b!2747717 m!3163671))

(declare-fun m!3163673 () Bool)

(assert (=> setNonEmpty!21796 m!3163673))

(declare-fun e!1731505 () Bool)

(assert (=> b!2747573 (= tp!866230 e!1731505)))

(declare-fun b!2747720 () Bool)

(declare-fun tp!866370 () Bool)

(declare-fun e!1731506 () Bool)

(declare-fun tp!866367 () Bool)

(declare-fun setRes!21797 () Bool)

(assert (=> b!2747720 (= e!1731505 (and tp!866370 (inv!43048 (_2!18466 (_1!18467 (h!37108 (zeroValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))))) e!1731506 tp_is_empty!13941 setRes!21797 tp!866367))))

(declare-fun condSetEmpty!21797 () Bool)

(assert (=> b!2747720 (= condSetEmpty!21797 (= (_2!18467 (h!37108 (zeroValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747721 () Bool)

(declare-fun tp!866371 () Bool)

(assert (=> b!2747721 (= e!1731506 tp!866371)))

(declare-fun b!2747722 () Bool)

(declare-fun e!1731504 () Bool)

(declare-fun tp!866368 () Bool)

(assert (=> b!2747722 (= e!1731504 tp!866368)))

(declare-fun setIsEmpty!21797 () Bool)

(assert (=> setIsEmpty!21797 setRes!21797))

(declare-fun setElem!21797 () Context!4458)

(declare-fun setNonEmpty!21797 () Bool)

(declare-fun tp!866369 () Bool)

(assert (=> setNonEmpty!21797 (= setRes!21797 (and tp!866369 (inv!43048 setElem!21797) e!1731504))))

(declare-fun setRest!21797 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21797 (= (_2!18467 (h!37108 (zeroValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21797 true) setRest!21797))))

(assert (= b!2747720 b!2747721))

(assert (= (and b!2747720 condSetEmpty!21797) setIsEmpty!21797))

(assert (= (and b!2747720 (not condSetEmpty!21797)) setNonEmpty!21797))

(assert (= setNonEmpty!21797 b!2747722))

(assert (= (and b!2747573 ((_ is Cons!31688) (zeroValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) b!2747720))

(declare-fun m!3163675 () Bool)

(assert (=> b!2747720 m!3163675))

(declare-fun m!3163677 () Bool)

(assert (=> setNonEmpty!21797 m!3163677))

(declare-fun e!1731508 () Bool)

(assert (=> b!2747573 (= tp!866237 e!1731508)))

(declare-fun tp!866375 () Bool)

(declare-fun b!2747723 () Bool)

(declare-fun setRes!21798 () Bool)

(declare-fun tp!866372 () Bool)

(declare-fun e!1731509 () Bool)

(assert (=> b!2747723 (= e!1731508 (and tp!866375 (inv!43048 (_2!18466 (_1!18467 (h!37108 (minValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))))) e!1731509 tp_is_empty!13941 setRes!21798 tp!866372))))

(declare-fun condSetEmpty!21798 () Bool)

(assert (=> b!2747723 (= condSetEmpty!21798 (= (_2!18467 (h!37108 (minValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) ((as const (Array Context!4458 Bool)) false)))))

(declare-fun b!2747724 () Bool)

(declare-fun tp!866376 () Bool)

(assert (=> b!2747724 (= e!1731509 tp!866376)))

(declare-fun b!2747725 () Bool)

(declare-fun e!1731507 () Bool)

(declare-fun tp!866373 () Bool)

(assert (=> b!2747725 (= e!1731507 tp!866373)))

(declare-fun setIsEmpty!21798 () Bool)

(assert (=> setIsEmpty!21798 setRes!21798))

(declare-fun setNonEmpty!21798 () Bool)

(declare-fun tp!866374 () Bool)

(declare-fun setElem!21798 () Context!4458)

(assert (=> setNonEmpty!21798 (= setRes!21798 (and tp!866374 (inv!43048 setElem!21798) e!1731507))))

(declare-fun setRest!21798 () (InoxSet Context!4458))

(assert (=> setNonEmpty!21798 (= (_2!18467 (h!37108 (minValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4458 Bool)) false) setElem!21798 true) setRest!21798))))

(assert (= b!2747723 b!2747724))

(assert (= (and b!2747723 condSetEmpty!21798) setIsEmpty!21798))

(assert (= (and b!2747723 (not condSetEmpty!21798)) setNonEmpty!21798))

(assert (= setNonEmpty!21798 b!2747725))

(assert (= (and b!2747573 ((_ is Cons!31688) (minValue!3895 (v!33308 (underlying!7475 (v!33309 (underlying!7476 (cache!3685 cacheDown!730)))))))) b!2747723))

(declare-fun m!3163679 () Bool)

(assert (=> b!2747723 m!3163679))

(declare-fun m!3163681 () Bool)

(assert (=> setNonEmpty!21798 m!3163681))

(declare-fun e!1731515 () Bool)

(declare-fun b!2747734 () Bool)

(declare-fun tp!866383 () Bool)

(declare-fun tp!866384 () Bool)

(assert (=> b!2747734 (= e!1731515 (and (inv!43045 (left!24262 (c!444910 input!1561))) tp!866384 (inv!43045 (right!24592 (c!444910 input!1561))) tp!866383))))

(declare-fun b!2747736 () Bool)

(declare-fun e!1731514 () Bool)

(declare-fun tp!866385 () Bool)

(assert (=> b!2747736 (= e!1731514 tp!866385)))

(declare-fun b!2747735 () Bool)

(declare-fun inv!43049 (IArray!19803) Bool)

(assert (=> b!2747735 (= e!1731515 (and (inv!43049 (xs!13006 (c!444910 input!1561))) e!1731514))))

(assert (=> b!2747570 (= tp!866232 (and (inv!43045 (c!444910 input!1561)) e!1731515))))

(assert (= (and b!2747570 ((_ is Node!9899) (c!444910 input!1561))) b!2747734))

(assert (= b!2747735 b!2747736))

(assert (= (and b!2747570 ((_ is Leaf!15073) (c!444910 input!1561))) b!2747735))

(declare-fun m!3163683 () Bool)

(assert (=> b!2747734 m!3163683))

(declare-fun m!3163685 () Bool)

(assert (=> b!2747734 m!3163685))

(declare-fun m!3163687 () Bool)

(assert (=> b!2747735 m!3163687))

(assert (=> b!2747570 m!3163579))

(check-sat (not b!2747723) (not b!2747667) b_and!202231 (not b!2747668) (not b!2747695) (not d!796204) (not b!2747655) (not b!2747688) (not b!2747712) (not b!2747583) (not b!2747721) (not setNonEmpty!21781) (not b!2747736) (not b_next!78217) (not b!2747630) (not b!2747673) (not b_next!78219) (not b!2747689) (not b!2747670) (not setNonEmpty!21782) (not b!2747691) (not setNonEmpty!21788) (not b!2747716) (not b!2747715) b_and!202229 b_and!202239 (not b!2747570) (not b!2747666) (not b!2747713) (not b!2747645) (not b!2747718) tp_is_empty!13941 (not setNonEmpty!21795) (not b_next!78215) (not b!2747654) (not setNonEmpty!21780) (not setNonEmpty!21798) (not d!796214) (not d!796224) (not bm!177436) (not b!2747644) (not b!2747580) b_and!202233 (not b!2747692) (not setNonEmpty!21794) (not setNonEmpty!21797) (not b!2747711) (not mapNonEmpty!16589) (not b_next!78213) (not d!796202) (not bm!177437) (not b!2747672) (not b!2747724) (not setNonEmpty!21796) (not b!2747669) (not b!2747625) (not setNonEmpty!21789) (not b!2747590) (not b!2747656) (not b!2747624) (not b!2747735) (not setNonEmpty!21787) (not b!2747696) (not b!2747592) (not b!2747694) (not b!2747615) (not b!2747665) (not setNonEmpty!21777) (not b!2747690) (not b_next!78211) (not b!2747693) (not b!2747717) (not b!2747722) (not b!2747671) (not b!2747720) (not b!2747719) (not d!796226) (not b_next!78209) (not b!2747577) b_and!202235 b_and!202237 (not b!2747725) (not b!2747714) (not d!796198) (not mapNonEmpty!16592) (not b!2747643) (not b!2747734))
(check-sat b_and!202231 b_and!202229 b_and!202239 (not b_next!78215) b_and!202233 (not b_next!78213) (not b_next!78211) (not b_next!78209) (not b_next!78217) (not b_next!78219) b_and!202235 b_and!202237)
